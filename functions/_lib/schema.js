import { dbGet, dbRun, dbAll } from "./db.js";
import { makeId } from "./utils.js";
import { hashPassword, verifyPassword } from "./password.js";
import {
  ensurePassHashCompatibility,
  getUsersTableProfile,
  extractPasswordHashCandidates,
  buildUserInsertStatement,
  buildUserPasswordUpdateStatement,
} from "./user-password-store.js";
import {
  ADMIN_PERMISSION_VALUES,
  ADMIN_PERMISSION_DEPENDENCIES,
} from "../../shared/admin-permissions.js";
import {
  SEARCH_INDEX_SCHEMA_MARKER_KEY,
  SEARCH_INDEX_SCHEMA_MARKER_VALUE,
  rebuildSongSearchIndex,
} from "./song-search.mjs";
import {
  getEntityLinks,
  getEntityNodes,
} from "../../shared/entity-graph.js";

const ADMIN_ALL_PERMISSIONS = [...ADMIN_PERMISSION_VALUES];
export const FULL_SCHEMA_MARKER_KEY = "schema.full.version";
export const AUTH_SCHEMA_MARKER_KEY = "schema.auth.version";
export const FULL_SCHEMA_MARKER_VALUE = "2026-04-26-full-v9-entity-graph";
export const AUTH_SCHEMA_MARKER_VALUE = "2026-05-12-auth-v4-rbac-compat";
export const VERIFICATION_RESET_MARKER_KEY = "data.verification_reset.version";
export const VERIFICATION_RESET_MARKER_VALUE = "2026-04-20-reset-v1";
const SEARCH_INLINE_REBUILD_MAX_SONGS = 2000;

const SAMPLE_SONGS = [
  {
    id: "s_demo_du_nai",
    title: "At The River Gate",
    subtitle: "Traditional folk sample",
    lang: "en",
    country: "romania_1989",
    period: "",
    year: "",
    source: "Demo content",
    notes: "Demo record for first launch.",
    lyrics: "At the river gate I stand,\nWatching water cross the land.\nSong of wind and evening sky,\nCarry memory passing by.",
    tags: ["folk", "river"],
    status: "published",
    links: [
      {
        title: "YouTube search",
        url: "https://www.youtube.com/results?search_query=folk+river+song",
        kind: "youtube",
      },
    ],
    versions: [
      {
        title: "Variant A",
        lang: "en",
        lyrics: "At the river gate we sing,\nOld refrains of wandering.",
        source: "Demo",
      },
    ],
  },
  {
    id: "s_demo_captains",
    title: "We Will Be Captains",
    subtitle: "Historical-themed demo",
    lang: "en",
    country: "ussr",
    period: "",
    year: "1941",
    source: "Demo content",
    notes: "Demo historical card.",
    lyrics: "White waves rolling on the bay,\nYoung sailors set out today.\nOne day we will lead the fleet,\nWith the sea wind at our feet.",
    tags: ["sea", "history"],
    status: "published",
    links: [],
    versions: [],
  },
  {
    id: "s_demo_pockmarked",
    title: "Ballad Of The Orchard",
    subtitle: "Traditional sample",
    lang: "en",
    country: "",
    period: "",
    year: "",
    source: "Demo content",
    notes: "",
    lyrics: "In the orchard blossoms glow,\nQuiet steps in evening slow.\nNeedle, thread, and waiting light,\nHolding hope into the night.",
    tags: [],
    status: "published",
    links: [],
    versions: [],
  },
];

let schemaSeedWork = null;
let schemaSeedReady = false;
let authSchemaWork = null;
let authSchemaReady = false;

async function readSchemaMarker(env, key) {
  try {
    const row = await dbGet(env, `SELECT value FROM app_meta WHERE key=? LIMIT 1`, [key]);
    return String(row?.value || "").trim();
  } catch {
    return "";
  }
}

async function writeSchemaMarker(env, key, value) {
  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS app_meta (
      key TEXT PRIMARY KEY,
      value TEXT NOT NULL,
      updated_at TEXT NOT NULL DEFAULT (datetime('now'))
    )`
  );
  await dbRun(
    env,
    `INSERT INTO app_meta (key, value, updated_at)
     VALUES (?, ?, datetime('now'))
     ON CONFLICT(key) DO UPDATE SET
       value=excluded.value,
       updated_at=datetime('now')`,
    [key, value]
  );
}

async function getSearchIndexStats(env) {
  const row = await dbGet(
    env,
    `SELECT
       (SELECT COUNT(*) FROM songs WHERE status='published') AS published_songs,
       (SELECT COUNT(*) FROM songs_fts) AS fts_rows,
       (SELECT COUNT(*) FROM song_search_terms) AS term_rows,
       (SELECT COUNT(*) FROM song_search_vocab) AS vocab_rows,
       (SELECT COUNT(*) FROM song_search_deletes) AS delete_rows`
  );
  return {
    publishedSongs: Number(row?.published_songs || 0),
    ftsRows: Number(row?.fts_rows || 0),
    termRows: Number(row?.term_rows || 0),
    vocabRows: Number(row?.vocab_rows || 0),
    deleteRows: Number(row?.delete_rows || 0),
  };
}

function isUsableSearchIndex(stats = {}) {
  const publishedSongs = Number(stats?.publishedSongs || 0);
  if (publishedSongs <= 0) return true;
  return (
    Number(stats?.ftsRows || 0) >= publishedSongs
    && Number(stats?.termRows || 0) > 0
    && Number(stats?.vocabRows || 0) > 0
    && Number(stats?.deleteRows || 0) > 0
  );
}

async function tableExists(env, tableName) {
  const row = await dbGet(
    env,
    `SELECT name
     FROM sqlite_master
     WHERE type='table' AND lower(name)=lower(?)
     LIMIT 1`,
    [String(tableName || "").trim()]
  );
  return !!String(row?.name || "").trim();
}

async function tableHasColumns(env, tableName, requiredColumns = []) {
  const required = (Array.isArray(requiredColumns) ? requiredColumns : [requiredColumns])
    .map((value) => String(value || "").trim())
    .filter(Boolean);
  if (!required.length) return true;
  try {
    const rows = await dbAll(env, `PRAGMA table_info(${tableName})`);
    const present = new Set((Array.isArray(rows) ? rows : []).map((row) => String(row?.name || "").trim()).filter(Boolean));
    return required.every((column) => present.has(column));
  } catch {
    return false;
  }
}

async function hasAuthSchemaArtifacts(env) {
  const [hasUsers, hasRateLimits] = await Promise.all([
    tableExists(env, "users"),
    tableExists(env, "rate_limits"),
  ]);
  return hasUsers && hasRateLimits;
}

async function hasFreshFullSchema(env) {
  const marker = await readSchemaMarker(env, FULL_SCHEMA_MARKER_KEY);
  if (marker !== FULL_SCHEMA_MARKER_VALUE) return false;
  if (!(await hasAuthSchemaArtifacts(env))) return false;
  if (!(await tableHasColumns(env, "songs", ["region", "event", "theme", "verified_translation", "lyrics_meta_json"]))) {
    return false;
  }
  schemaSeedReady = true;
  authSchemaReady = true;
  return true;
}

function isD1SizeLimitError(cause) {
  const message = String(cause?.message || cause || "");
  return /Exceeded maximum DB size/i.test(message);
}

async function hasFreshAuthSchema(env) {
  if (await hasFreshFullSchema(env)) return true;
  const marker = await readSchemaMarker(env, AUTH_SCHEMA_MARKER_KEY);
  if (marker !== AUTH_SCHEMA_MARKER_VALUE) return false;
  if (!(await hasAuthSchemaArtifacts(env))) return false;
  authSchemaReady = true;
  return true;
}

async function ensureSongLinksVersionColumn(env) {
  try {
    const columns = await dbAll(env, `PRAGMA table_info(song_links)`);
    const hasVersionId = Array.isArray(columns) && columns.some((col) => col?.name === "version_id");
    if (!hasVersionId) {
      await dbRun(env, `ALTER TABLE song_links ADD COLUMN version_id TEXT`);
    }
  } catch (cause) {
    const message = String(cause?.message || cause || "");
    if (message.includes("duplicate column name: version_id")) return;
    if (message.includes("no such table: song_links")) return;
    throw cause;
  }
}

async function ensureSongsAdminContentColumn(env) {
  try {
    const columns = await dbAll(env, `PRAGMA table_info(songs)`);
    const hasAdminContent = Array.isArray(columns) && columns.some((col) => col?.name === "is_admin_content");
    if (!hasAdminContent) {
      await dbRun(env, `ALTER TABLE songs ADD COLUMN is_admin_content INTEGER NOT NULL DEFAULT 0`);
    }
  } catch (cause) {
    const message = String(cause?.message || cause || "");
    if (message.includes("duplicate column name: is_admin_content")) return;
    if (message.includes("no such table: songs")) return;
    throw cause;
  }
}

async function ensureSongsAuditColumns(env) {
  try {
    const columns = await dbAll(env, `PRAGMA table_info(songs)`);
    if (!Array.isArray(columns) || !columns.length) return;
    const has = new Set(columns.map((col) => String(col?.name || "").trim()));

    const addColumn = async (name, definition) => {
      if (has.has(name)) return;
      await dbRun(env, `ALTER TABLE songs ADD COLUMN ${definition}`);
      has.add(name);
    };

    await addColumn("created_by", "created_by TEXT REFERENCES users(id) ON DELETE SET NULL");
    await addColumn("updated_by", "updated_by TEXT REFERENCES users(id) ON DELETE SET NULL");
    await addColumn("lang_locked", "lang_locked INTEGER NOT NULL DEFAULT 0");

    await dbRun(
      env,
      `UPDATE songs
       SET lang_locked = 1
       WHERE status='published' AND coalesce(lang_locked, 0) = 0`
    );
    await dbRun(
      env,
      `UPDATE songs
       SET status='published'
       WHERE coalesce(lang_locked, 0) = 1
         AND coalesce(status, '') <> 'published'`
    );
  } catch (cause) {
    const message = String(cause?.message || cause || "");
    if (message.includes("duplicate column name")) return;
    if (message.includes("no such table: songs")) return;
    throw cause;
  }
}

async function ensureSongRevisionsTable(env) {
  try {
    await dbRun(
      env,
      `CREATE TABLE IF NOT EXISTS song_revisions (
        id TEXT PRIMARY KEY,
        song_id TEXT NOT NULL,
        revision_seq INTEGER NOT NULL,
        action TEXT NOT NULL CHECK(action IN ('create','update','delete','restore','snapshot')),
        actor_user_id TEXT REFERENCES users(id) ON DELETE SET NULL,
        restored_from_revision_id TEXT,
        snapshot_json TEXT NOT NULL,
        created_at TEXT NOT NULL
      )`
    );
  } catch (cause) {
    if (isD1SizeLimitError(cause)) return false;
    throw cause;
  }
  return true;
}

async function ensureSongRevisionIndexes(env) {
  try {
    await dbRun(env, `CREATE UNIQUE INDEX IF NOT EXISTS idx_song_revisions_song_seq ON song_revisions(song_id, revision_seq)`);
    await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_revisions_song_created ON song_revisions(song_id, created_at DESC)`);
    await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_revisions_created ON song_revisions(created_at DESC)`);
  } catch (cause) {
    const message = String(cause?.message || cause || "");
    if (isD1SizeLimitError(cause)) return false;
    if (!message.includes("no such table: song_revisions")) throw cause;
    const created = await ensureSongRevisionsTable(env);
    if (!created) return false;
    await dbRun(env, `CREATE UNIQUE INDEX IF NOT EXISTS idx_song_revisions_song_seq ON song_revisions(song_id, revision_seq)`);
    await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_revisions_song_created ON song_revisions(song_id, created_at DESC)`);
    await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_revisions_created ON song_revisions(created_at DESC)`);
  }
  return true;
}

async function ensureCountryBackgroundColumns(env) {
  try {
    const columns = await dbAll(env, `PRAGMA table_info(country_backgrounds)`);
    if (!Array.isArray(columns) || !columns.length) return;
    const has = new Set(columns.map((col) => String(col?.name || "").trim()));

    const addColumn = async (name, definition) => {
      if (has.has(name)) return;
      await dbRun(env, `ALTER TABLE country_backgrounds ADD COLUMN ${definition}`);
      has.add(name);
    };

    await addColumn("desktop_image_url", "desktop_image_url TEXT");
    await addColumn("mobile_image_url", "mobile_image_url TEXT");
    await addColumn("desktop_focus_x", "desktop_focus_x REAL NOT NULL DEFAULT 50");
    await addColumn("desktop_focus_y", "desktop_focus_y REAL NOT NULL DEFAULT 50");
    await addColumn("mobile_focus_x", "mobile_focus_x REAL NOT NULL DEFAULT 50");
    await addColumn("mobile_focus_y", "mobile_focus_y REAL NOT NULL DEFAULT 50");
    await addColumn("image_url", "image_url TEXT");
    await addColumn("preview_flag_image_url", "preview_flag_image_url TEXT");
    await addColumn("background_profile_json", "background_profile_json TEXT");
    await addColumn("flag_profile_json", "flag_profile_json TEXT");
    await addColumn("visual_profile_json", "visual_profile_json TEXT");

    await dbRun(
      env,
      `UPDATE country_backgrounds
       SET
         desktop_image_url = COALESCE(NULLIF(desktop_image_url, ''), NULLIF(image_url, '')),
         mobile_image_url = NULLIF(mobile_image_url, ''),
         desktop_focus_x = COALESCE(desktop_focus_x, 50),
         desktop_focus_y = COALESCE(desktop_focus_y, 50),
         mobile_focus_x = COALESCE(mobile_focus_x, 50),
         mobile_focus_y = COALESCE(mobile_focus_y, 50)
      `
    );
    await dbRun(
      env,
      `UPDATE country_backgrounds
       SET image_url = ''
       WHERE NULLIF(image_url, '') IS NOT NULL
         AND (
           NULLIF(desktop_image_url, '') IS NOT NULL
         OR NULLIF(mobile_image_url, '') IS NOT NULL
         OR NULLIF(background_profile_json, '') IS NOT NULL
         OR NULLIF(flag_profile_json, '') IS NOT NULL
         OR NULLIF(visual_profile_json, '') IS NOT NULL
        )`
    );
  } catch (cause) {
    const message = String(cause?.message || cause || "");
    if (message.includes("no such table: country_backgrounds")) return;
    throw cause;
  }
}

async function ensureRBACArtifacts(env) {
  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS user_permissions (
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      permission TEXT NOT NULL,
      created_at TEXT NOT NULL DEFAULT (datetime('now')),
      PRIMARY KEY(user_id, permission)
    )`
  );

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS user_scope_languages (
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      lang TEXT NOT NULL,
      created_at TEXT NOT NULL DEFAULT (datetime('now')),
      PRIMARY KEY(user_id, lang)
    )`
  );
}

async function normalizeRBACPermissions(env) {
  await dbRun(
    env,
    `INSERT OR IGNORE INTO user_permissions (user_id, permission, created_at)
     SELECT DISTINCT user_id, 'songs.create', datetime('now')
     FROM user_permissions
     WHERE permission='songs.manage'`
  );
  await dbRun(
    env,
    `INSERT OR IGNORE INTO user_permissions (user_id, permission, created_at)
     SELECT DISTINCT user_id, 'songs.edit', datetime('now')
     FROM user_permissions
     WHERE permission='songs.manage'`
  );

  for (const [permission, dependencies] of Object.entries(ADMIN_PERMISSION_DEPENDENCIES)) {
    for (const dependency of dependencies) {
      await dbRun(
        env,
        `INSERT OR IGNORE INTO user_permissions (user_id, permission, created_at)
         SELECT DISTINCT user_id, ?, datetime('now')
         FROM user_permissions
         WHERE permission=?`,
        [dependency, permission]
      );
    }
  }

  const placeholders = ADMIN_PERMISSION_VALUES.map(() => "?").join(", ");
  await dbRun(
    env,
    `DELETE FROM user_permissions
     WHERE permission NOT IN (${placeholders})`,
    ADMIN_PERMISSION_VALUES
  );
}

async function ensureSuperAdmin(env) {
  const email = String(env.SUPER_ADMIN_EMAIL || "").trim().toLowerCase();
  const password = String(env.SUPER_ADMIN_PASSWORD || "").trim();
  if (!email || !password) return;

  const profile = await getUsersTableProfile(env);
  if (!profile.hashColumns.length) return;

  const existing = await dbGet(env, `SELECT * FROM users WHERE lower(email)=lower(?)`, [email]);
  let userId = existing?.id;

  if (!existing) {
    userId = makeId("u");
    const passHash = await hashPassword(password);
    const insert = buildUserInsertStatement(profile, {
      id: userId,
      email,
      role: "super_admin",
      passHash,
    });
    await dbRun(env, insert.sql, insert.params);
    const created = await dbGet(env, `SELECT * FROM users WHERE lower(email)=lower(?) LIMIT 1`, [email]);
    userId = created?.id || created?.user_id || userId;
  } else {
    const candidates = extractPasswordHashCandidates(existing);
    let currentHash = "";
    for (const candidate of candidates) {
      if (await verifyPassword(password, candidate)) {
        currentHash = candidate;
        break;
      }
    }
    const nextHash = currentHash || await hashPassword(password);
    const update = buildUserPasswordUpdateStatement(profile, {
      userId: existing.id || existing.user_id,
      email,
      role: "super_admin",
      passHash: nextHash,
    });
    await dbRun(env, update.sql, update.params);
    userId = existing.id || existing.user_id || userId;
  }

  await dbRun(env, `DELETE FROM user_permissions WHERE user_id=?`, [userId]);
  for (const permission of ADMIN_ALL_PERMISSIONS) {
    await dbRun(
      env,
      `INSERT OR IGNORE INTO user_permissions (user_id, permission, created_at) VALUES (?, ?, datetime('now'))`,
      [userId, permission]
    );
  }
}

async function ensureUsersNicknameData(env) {
  try {
    await dbRun(env, `ALTER TABLE users ADD COLUMN nickname TEXT`);
  } catch (cause) {
    const message = String(cause?.message || cause || "");
    if (!message.includes("duplicate column name: nickname")) throw cause;
  }

  await dbRun(
    env,
    `UPDATE users
     SET nickname = CASE
       WHEN instr(trim(coalesce(email, '')), '@') > 1
         THEN substr(trim(email), 1, instr(trim(email), '@') - 1)
       ELSE trim(coalesce(email, ''))
     END
     WHERE nickname IS NULL OR trim(nickname) = ''`
  );
}

async function ensureUsersNicknameTimingData(env) {
  try {
    await dbRun(env, `ALTER TABLE users ADD COLUMN nickname_updated_at TEXT`);
  } catch (cause) {
    const message = String(cause?.message || cause || "");
    if (!message.includes("duplicate column name: nickname_updated_at")) throw cause;
  }
}

async function ensureUsersRoleConstraintSupportsSuperAdmin(env) {
  const usersTable = await dbGet(
    env,
    `SELECT sql FROM sqlite_master WHERE type='table' AND lower(name)=lower('users')`,
    []
  );
  const usersSql = String(usersTable?.sql || "").toLowerCase();
  if (!usersSql) return;
  if (usersSql.includes("'super_admin'")) return;

  await dbRun(env, "PRAGMA foreign_keys = OFF");
  try {
    await dbRun(env, `DROP TABLE IF EXISTS users__role_migration_new`);
    await dbRun(
      env,
      `CREATE TABLE users__role_migration_new (
        id TEXT PRIMARY KEY,
        email TEXT NOT NULL UNIQUE,
        nickname TEXT,
        pass_hash TEXT NOT NULL,
        role TEXT NOT NULL CHECK(role IN ('user','admin','super_admin')),
        created_at TEXT NOT NULL
      )`
    );
    await dbRun(
      env,
      `INSERT INTO users__role_migration_new (id, email, nickname, pass_hash, role, created_at)
       SELECT
         id,
         email,
         nickname,
         pass_hash,
         CASE
           WHEN lower(trim(coalesce(role, ''))) = 'super_admin' THEN 'super_admin'
           WHEN lower(trim(coalesce(role, ''))) = 'admin' THEN 'admin'
           ELSE 'user'
         END,
         created_at
       FROM users`
    );
    await dbRun(env, `DROP TABLE users`);
    await dbRun(env, `ALTER TABLE users__role_migration_new RENAME TO users`);
  } finally {
    await dbRun(env, "PRAGMA foreign_keys = ON");
  }
}

function normalizeNicknameCandidate(value, fallback = "user") {
  const raw = String(value || "").trim();
  const base = raw || String(fallback || "user").trim() || "user";
  const cleaned = base
    .toLowerCase()
    .replace(/\s+/g, "_")
    .replace(/[^a-z0-9._-]/g, "_")
    .replace(/_+/g, "_")
    .replace(/^[_\-.]+|[_\-.]+$/g, "");
  const short = cleaned.slice(0, 28);
  return short || "user";
}

async function ensureUsersNicknameUniqueness(env) {
  const users = await dbAll(
    env,
    `SELECT id, email, nickname, created_at
     FROM users
     ORDER BY datetime(coalesce(created_at, '1970-01-01T00:00:00Z')) ASC, id ASC`
  );
  const used = new Map();
  for (const user of users) {
    const emailPart = String(user?.email || "").split("@")[0] || "user";
    const base = normalizeNicknameCandidate(user?.nickname, emailPart);
    let candidate = base;
    let suffix = 2;
    while (used.has(candidate)) {
      candidate = `${base}_${suffix}`;
      suffix += 1;
    }
    used.set(candidate, String(user?.id || ""));
    if (String(user?.nickname || "") !== candidate) {
      await dbRun(env, `UPDATE users SET nickname=? WHERE id=?`, [candidate, user.id]);
    }
  }

  await dbRun(
    env,
    `CREATE UNIQUE INDEX IF NOT EXISTS idx_users_nickname_nocase
     ON users(lower(trim(nickname)))`
  );
}

async function ensureSongsExtendedColumns(env) {
  try {
    const columns = await dbAll(env, `PRAGMA table_info(songs)`);
    if (!Array.isArray(columns) || !columns.length) return;
    const has = new Set(columns.map((col) => String(col?.name || "").trim()));
    const addColumn = async (name, definition) => {
      if (has.has(name)) return;
      await dbRun(env, `ALTER TABLE songs ADD COLUMN ${definition}`);
      has.add(name);
    };
    await addColumn("region", "region TEXT");
    await addColumn("event", "event TEXT");
    await addColumn("theme", "theme TEXT");
    await addColumn("verified", "verified INTEGER NOT NULL DEFAULT 0");
    await addColumn("verified_translation", "verified_translation TEXT");
    await addColumn("lyrics_meta_json", "lyrics_meta_json TEXT NOT NULL DEFAULT '{}'");
  } catch (cause) {
    const message = String(cause?.message || cause || "");
    if (message.includes("duplicate column name")) return;
    if (message.includes("no such table: songs")) return;
    throw cause;
  }
}

async function ensureSongVersionsExtendedColumns(env) {
  try {
    const columns = await dbAll(env, `PRAGMA table_info(song_versions)`);
    if (!Array.isArray(columns) || !columns.length) return;
    const has = new Set(columns.map((col) => String(col?.name || "").trim()));
    if (has.has("lyrics_meta_json")) return;
    await dbRun(env, `ALTER TABLE song_versions ADD COLUMN lyrics_meta_json TEXT NOT NULL DEFAULT '{}'`);
  } catch (cause) {
    const message = String(cause?.message || cause || "");
    if (message.includes("duplicate column name")) return;
    if (message.includes("no such table: song_versions")) return;
    throw cause;
  }
}

async function ensureSongRequestsExtendedColumns(env) {
  try {
    const columns = await dbAll(env, `PRAGMA table_info(song_requests)`);
    if (!Array.isArray(columns) || !columns.length) return;
    const has = new Set(columns.map((col) => String(col?.name || "").trim()));
    const addColumn = async (name, definition) => {
      if (has.has(name)) return;
      await dbRun(env, `ALTER TABLE song_requests ADD COLUMN ${definition}`);
      has.add(name);
    };
    await addColumn("region", "region TEXT");
    await addColumn("event", "event TEXT");
    await addColumn("theme", "theme TEXT");
    await addColumn("report_fragment", "report_fragment INTEGER NOT NULL DEFAULT 0");
    await addColumn("lyrics_meta_json", "lyrics_meta_json TEXT NOT NULL DEFAULT '{}'");
    await addColumn("request_kind", "request_kind TEXT NOT NULL DEFAULT 'new_song'");
    await addColumn("target_song_id", "target_song_id TEXT REFERENCES songs(id) ON DELETE SET NULL");
  } catch (cause) {
    const message = String(cause?.message || cause || "");
    if (message.includes("duplicate column name")) return;
    if (message.includes("no such table: song_requests")) return;
    throw cause;
  }
}

async function ensureSongCommentsTable(env) {
  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS song_comments (
      id TEXT PRIMARY KEY,
      song_id TEXT NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      body TEXT NOT NULL,
      created_at TEXT NOT NULL,
      updated_at TEXT NOT NULL
    )`
  );
}

export async function ensureFragmentReportTables(env) {
  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS fragment_reports (
      id TEXT PRIMARY KEY,
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      assigned_admin_user_id TEXT REFERENCES users(id) ON DELETE SET NULL,
      status TEXT NOT NULL CHECK(status IN ('open','answered','closed')) DEFAULT 'open',
      source TEXT NOT NULL,
      fragment_text TEXT NOT NULL,
      created_at TEXT NOT NULL,
      updated_at TEXT NOT NULL,
      last_message_at TEXT NOT NULL
    )`
  );

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS fragment_report_messages (
      id TEXT PRIMARY KEY,
      report_id TEXT NOT NULL REFERENCES fragment_reports(id) ON DELETE CASCADE,
      sender_user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      body TEXT NOT NULL,
      is_admin_reply INTEGER NOT NULL DEFAULT 0,
      created_at TEXT NOT NULL
    )`
  );
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_fragment_reports_user_updated ON fragment_reports(user_id, updated_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_fragment_reports_admin_updated ON fragment_reports(assigned_admin_user_id, updated_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_fragment_reports_status_updated ON fragment_reports(status, updated_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_fragment_report_messages_report_created ON fragment_report_messages(report_id, created_at ASC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_fragment_report_messages_sender_created ON fragment_report_messages(sender_user_id, created_at DESC)`);
}

async function ensureDraftTables(env) {
  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS drafts (
      id TEXT PRIMARY KEY,
      song_id TEXT REFERENCES songs(id) ON DELETE SET NULL,
      owner_user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      status TEXT NOT NULL CHECK(status IN ('draft','published','archived')) DEFAULT 'draft',
      version INTEGER NOT NULL DEFAULT 0,
      snapshot_json TEXT NOT NULL DEFAULT '{}',
      created_at TEXT NOT NULL,
      updated_at TEXT NOT NULL
    )`
  );

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS draft_collaborators (
      draft_id TEXT NOT NULL REFERENCES drafts(id) ON DELETE CASCADE,
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      can_publish INTEGER NOT NULL DEFAULT 1,
      added_by TEXT REFERENCES users(id) ON DELETE SET NULL,
      created_at TEXT NOT NULL DEFAULT (datetime('now')),
      PRIMARY KEY(draft_id, user_id)
    )`
  );

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS draft_invitations (
      id TEXT PRIMARY KEY,
      draft_id TEXT NOT NULL REFERENCES drafts(id) ON DELETE CASCADE,
      inviter_user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      invitee_user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      status TEXT NOT NULL CHECK(status IN ('pending','accepted','declined','cancelled')) DEFAULT 'pending',
      created_at TEXT NOT NULL,
      responded_at TEXT,
      updated_at TEXT NOT NULL
    )`
  );

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS draft_lines (
      id TEXT PRIMARY KEY,
      draft_id TEXT NOT NULL REFERENCES drafts(id) ON DELETE CASCADE,
      line_key TEXT NOT NULL,
      sort_order INTEGER NOT NULL DEFAULT 0,
      active_variant_id TEXT,
      created_at TEXT NOT NULL,
      updated_at TEXT NOT NULL
    )`
  );

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS draft_line_variants (
      id TEXT PRIMARY KEY,
      draft_id TEXT NOT NULL REFERENCES drafts(id) ON DELETE CASCADE,
      line_id TEXT NOT NULL REFERENCES draft_lines(id) ON DELETE CASCADE,
      text TEXT NOT NULL,
      confidence INTEGER NOT NULL DEFAULT 100,
      confidence_segments_json TEXT NOT NULL DEFAULT '[]',
      variant_type TEXT NOT NULL CHECK(variant_type IN ('manual','suggested','conflict')) DEFAULT 'manual',
      is_active INTEGER NOT NULL DEFAULT 0,
      created_by TEXT REFERENCES users(id) ON DELETE SET NULL,
      created_at TEXT NOT NULL,
      updated_at TEXT NOT NULL
    )`
  );

  try {
    const variantColumns = await dbAll(env, `PRAGMA table_info(draft_line_variants)`);
    const hasVariantColumn = new Set((variantColumns || []).map((row) => String(row?.name || "").trim()));
    if (!hasVariantColumn.has("confidence_segments_json")) {
      await dbRun(env, `ALTER TABLE draft_line_variants ADD COLUMN confidence_segments_json TEXT NOT NULL DEFAULT '[]'`);
    }
  } catch (cause) {
    const message = String(cause?.message || cause || "");
    if (!message.includes("duplicate column name") && !message.includes("no such table: draft_line_variants")) {
      throw cause;
    }
  }

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS draft_ops (
      id TEXT PRIMARY KEY,
      draft_id TEXT NOT NULL REFERENCES drafts(id) ON DELETE CASCADE,
      seq INTEGER NOT NULL,
      client_op_id TEXT,
      base_version INTEGER NOT NULL DEFAULT 0,
      op_type TEXT NOT NULL,
      payload_json TEXT NOT NULL,
      status TEXT NOT NULL CHECK(status IN ('accepted','persisted','rejected')) DEFAULT 'accepted',
      created_by TEXT REFERENCES users(id) ON DELETE SET NULL,
      created_at TEXT NOT NULL
    )`
  );

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS draft_snapshots (
      id TEXT PRIMARY KEY,
      draft_id TEXT NOT NULL REFERENCES drafts(id) ON DELETE CASCADE,
      version INTEGER NOT NULL,
      snapshot_json TEXT NOT NULL,
      created_by TEXT REFERENCES users(id) ON DELETE SET NULL,
      created_at TEXT NOT NULL
    )`
  );

  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_draft_owner_updated ON drafts(owner_user_id, updated_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_draft_song ON drafts(song_id)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_draft_collaborators_user ON draft_collaborators(user_id, created_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_draft_invite_invitee_status ON draft_invitations(invitee_user_id, status, created_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_draft_invite_draft_status ON draft_invitations(draft_id, status, created_at DESC)`);
  await dbRun(env, `CREATE UNIQUE INDEX IF NOT EXISTS idx_draft_invite_pending_unique ON draft_invitations(draft_id, invitee_user_id) WHERE status='pending'`);
  await dbRun(env, `CREATE UNIQUE INDEX IF NOT EXISTS idx_draft_lines_key ON draft_lines(draft_id, line_key)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_draft_lines_sort ON draft_lines(draft_id, sort_order ASC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_draft_variants_line ON draft_line_variants(line_id, created_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_draft_variants_draft ON draft_line_variants(draft_id, created_at DESC)`);
  await dbRun(env, `CREATE UNIQUE INDEX IF NOT EXISTS idx_draft_ops_seq ON draft_ops(draft_id, seq)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_draft_ops_created ON draft_ops(draft_id, created_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_draft_snapshots_version ON draft_snapshots(draft_id, version DESC)`);
}

async function ensureSongbookImportTables(env) {
  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS songbook_import_sessions (
      id TEXT PRIMARY KEY,
      created_by TEXT REFERENCES users(id) ON DELETE SET NULL,
      updated_by TEXT REFERENCES users(id) ON DELETE SET NULL,
      source_name TEXT,
      source_type TEXT NOT NULL DEFAULT 'text',
      import_lang TEXT,
      import_country TEXT,
      extraction_mode TEXT NOT NULL DEFAULT 'manual',
      raw_text TEXT NOT NULL DEFAULT '',
      editor_text TEXT NOT NULL DEFAULT '',
      song_count INTEGER NOT NULL DEFAULT 0,
      marker_count INTEGER NOT NULL DEFAULT 0,
      request_ids_json TEXT NOT NULL DEFAULT '[]',
      status TEXT NOT NULL CHECK(status IN ('draft','submitted')) DEFAULT 'draft',
      created_at TEXT NOT NULL,
      updated_at TEXT NOT NULL,
      submitted_at TEXT
    )`
  );

  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_songbook_import_sessions_updated ON songbook_import_sessions(updated_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_songbook_import_sessions_status ON songbook_import_sessions(status, updated_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_songbook_import_sessions_creator ON songbook_import_sessions(created_by, updated_at DESC)`);
}

async function ensureEntityGraphTables(env) {
  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS entity_nodes (
      id TEXT PRIMARY KEY,
      name TEXT NOT NULL UNIQUE,
      kind TEXT NOT NULL,
      is_virtual INTEGER NOT NULL DEFAULT 0
    )`
  );
  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS entity_links (
      id TEXT PRIMARY KEY,
      child_name TEXT NOT NULL,
      parent_name TEXT NOT NULL,
      link_type TEXT NOT NULL CHECK(link_type IN ('по_стране','в_составе','автономия_в_составе','зависимый_режим','категория','контекст')),
      sort_order INTEGER NOT NULL DEFAULT 0,
      CHECK(child_name <> parent_name),
      UNIQUE(child_name, parent_name, link_type)
    )`
  );
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_entity_nodes_name ON entity_nodes(name)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_entity_links_child ON entity_links(child_name, sort_order)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_entity_links_parent ON entity_links(parent_name, sort_order)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_entity_links_type ON entity_links(link_type, sort_order)`);
}

async function seedEntityGraph(env) {
  await ensureEntityGraphTables(env);
  const links = getEntityLinks();
  const nodes = getEntityNodes(links);
  await dbRun(env, `DELETE FROM entity_links`);
  await dbRun(env, `DELETE FROM entity_nodes`);
  for (const node of nodes) {
    await dbRun(
      env,
      `INSERT INTO entity_nodes (id, name, kind, is_virtual)
       VALUES (?, ?, ?, ?)`,
      [node.id, node.name, node.kind, node.is_virtual ? 1 : 0]
    );
  }
  for (const link of links) {
    await dbRun(
      env,
      `INSERT INTO entity_links (id, child_name, parent_name, link_type, sort_order)
       VALUES (?, ?, ?, ?, ?)`,
      [link.id, link.child_name, link.parent_name, link.link_type, link.sort_order]
    );
  }
}

async function ensureSearchIndexTables(env) {
  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS song_search_terms (
      song_id TEXT NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
      field TEXT NOT NULL CHECK(field IN ('title','subtitle','lyrics')),
      term_norm TEXT NOT NULL,
      term_raw TEXT NOT NULL,
      prefix3 TEXT NOT NULL,
      prefix4 TEXT NOT NULL,
      term_len INTEGER NOT NULL,
      PRIMARY KEY(song_id, field, term_norm)
    )`
  );

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS song_search_vocab (
      term_norm TEXT PRIMARY KEY,
      display_term TEXT NOT NULL,
      song_count INTEGER NOT NULL DEFAULT 0,
      title_hits INTEGER NOT NULL DEFAULT 0,
      subtitle_hits INTEGER NOT NULL DEFAULT 0,
      lyrics_hits INTEGER NOT NULL DEFAULT 0
    )`
  );

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS song_search_deletes (
      delete_key TEXT NOT NULL,
      term_norm TEXT NOT NULL REFERENCES song_search_vocab(term_norm) ON DELETE CASCADE,
      PRIMARY KEY(delete_key, term_norm)
    )`
  );
}

export async function ensureSchema(env) {
  await dbRun(env, "PRAGMA foreign_keys = ON");

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS users (
      id TEXT PRIMARY KEY,
      email TEXT NOT NULL UNIQUE,
      nickname TEXT,
      pass_hash TEXT NOT NULL,
      role TEXT NOT NULL CHECK(role IN ('user','admin','super_admin')),
      created_at TEXT NOT NULL
    )`
  );

  await ensurePassHashCompatibility(env);
  await ensureUsersNicknameData(env);
  await ensureUsersRoleConstraintSupportsSuperAdmin(env);

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS songs (
      id TEXT PRIMARY KEY,
      title TEXT NOT NULL,
      subtitle TEXT,
      lang TEXT NOT NULL,
      country TEXT,
      period TEXT,
      region TEXT,
      event TEXT,
      theme TEXT,
      verified INTEGER NOT NULL DEFAULT 0,
      year TEXT,
      source TEXT,
      notes TEXT,
      lyrics TEXT NOT NULL,
      verified_translation TEXT,
      lyrics_meta_json TEXT NOT NULL DEFAULT '{}',
      tags_json TEXT NOT NULL DEFAULT '[]',
      is_admin_content INTEGER NOT NULL DEFAULT 0,
      created_by TEXT REFERENCES users(id) ON DELETE SET NULL,
      updated_by TEXT REFERENCES users(id) ON DELETE SET NULL,
      lang_locked INTEGER NOT NULL DEFAULT 0,
      status TEXT NOT NULL CHECK(status IN ('draft','published')) DEFAULT 'published',
      created_at TEXT NOT NULL,
      updated_at TEXT NOT NULL
    )`
  );
  await ensureSongsAdminContentColumn(env);
  await ensureSongsAuditColumns(env);
  await ensureSongsExtendedColumns(env);

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS song_versions (
      id TEXT PRIMARY KEY,
      song_id TEXT NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
      title TEXT,
      lang TEXT,
      lyrics TEXT NOT NULL,
      lyrics_meta_json TEXT NOT NULL DEFAULT '{}',
      source TEXT,
      sort_order INTEGER NOT NULL DEFAULT 0
    )`
  );
  await ensureSongVersionsExtendedColumns(env);

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS song_links (
      id TEXT PRIMARY KEY,
      song_id TEXT NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
      title TEXT,
      url TEXT NOT NULL,
      kind TEXT,
      version_id TEXT,
      sort_order INTEGER NOT NULL DEFAULT 0
    )`
  );
  await ensureSongLinksVersionColumn(env);

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS favorites (
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      song_id TEXT NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
      created_at TEXT NOT NULL,
      PRIMARY KEY(user_id, song_id)
    )`
  );
  await ensureSongRevisionsTable(env);

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS song_requests (
      id TEXT PRIMARY KEY,
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      request_kind TEXT NOT NULL DEFAULT 'new_song',
      target_song_id TEXT REFERENCES songs(id) ON DELETE SET NULL,
      title TEXT NOT NULL,
      subtitle TEXT,
      lang TEXT NOT NULL,
      country TEXT,
      period TEXT,
      region TEXT,
      event TEXT,
      theme TEXT,
      report_fragment INTEGER NOT NULL DEFAULT 0,
      year TEXT,
      source TEXT,
      notes TEXT,
      lyrics TEXT NOT NULL,
      lyrics_meta_json TEXT NOT NULL DEFAULT '{}',
      tags_json TEXT NOT NULL DEFAULT '[]',
      links_json TEXT NOT NULL DEFAULT '[]',
      versions_json TEXT NOT NULL DEFAULT '[]',
      status TEXT NOT NULL CHECK(status IN ('new','approved','rejected')) DEFAULT 'new',
      review_comment TEXT,
      reviewed_by TEXT REFERENCES users(id) ON DELETE SET NULL,
      reviewed_at TEXT,
      created_at TEXT NOT NULL,
      updated_at TEXT NOT NULL
    )`
  );
  await ensureSongRequestsExtendedColumns(env);
  await ensureSongCommentsTable(env);

  await dbRun(
    env,
    `CREATE VIRTUAL TABLE IF NOT EXISTS songs_fts USING fts5(
      song_id UNINDEXED,
      title,
      lyrics,
      tokenize = 'unicode61 remove_diacritics 2'
    )`
  );

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS rate_limits (
      bucket TEXT PRIMARY KEY,
      count INTEGER NOT NULL,
      reset_at INTEGER NOT NULL,
      updated_at TEXT NOT NULL DEFAULT (datetime('now'))
    )`
  );

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS country_backgrounds (
      country TEXT PRIMARY KEY,
      desktop_image_url TEXT,
      mobile_image_url TEXT,
      desktop_focus_x REAL NOT NULL DEFAULT 50,
      desktop_focus_y REAL NOT NULL DEFAULT 50,
      mobile_focus_x REAL NOT NULL DEFAULT 50,
      mobile_focus_y REAL NOT NULL DEFAULT 50,
      image_url TEXT,
      preview_flag_image_url TEXT,
      background_profile_json TEXT,
      flag_profile_json TEXT,
      visual_profile_json TEXT,
      updated_at TEXT NOT NULL DEFAULT (datetime('now')),
      updated_by TEXT REFERENCES users(id) ON DELETE SET NULL
    )`
  );
  await ensureCountryBackgroundColumns(env);
  await ensureDraftTables(env);
  await ensureSongbookImportTables(env);
  await ensureEntityGraphTables(env);
  await ensureSearchIndexTables(env);

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS country_background_chunks (
      country TEXT NOT NULL,
      field TEXT NOT NULL,
      chunk_index INTEGER NOT NULL,
      chunk_value TEXT NOT NULL,
      updated_at TEXT NOT NULL DEFAULT (datetime('now')),
      PRIMARY KEY(country, field, chunk_index)
    )`
  );

  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_songs_status_title ON songs(status, title)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_songs_lang ON songs(lang)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_songs_admin_content ON songs(is_admin_content)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_songs_country ON songs(country)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_songs_period ON songs(period)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_songs_created_at ON songs(created_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_songs_verified ON songs(verified)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_songs_region ON songs(region)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_songs_event ON songs(event)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_songs_theme ON songs(theme)`);
  await ensureSongRevisionIndexes(env);
  try {
    await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_links_song_version_sort ON song_links(song_id, version_id, sort_order)`);
  } catch (cause) {
    const message = String(cause?.message || cause || "");
    if (!message.includes("no such column: version_id")) throw cause;
  }
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_rate_limits_reset ON rate_limits(reset_at)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_country_backgrounds_updated_at ON country_backgrounds(updated_at DESC)`);
  await dbRun(env, "CREATE INDEX IF NOT EXISTS idx_country_background_chunks_country_field ON country_background_chunks(country, field, chunk_index)");
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_requests_status_created ON song_requests(status, created_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_requests_user_created ON song_requests(user_id, created_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_requests_target_song ON song_requests(target_song_id, status, created_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_comments_song_created ON song_comments(song_id, created_at ASC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_comments_user_created ON song_comments(user_id, created_at DESC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_search_terms_term ON song_search_terms(term_norm)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_search_terms_prefix3 ON song_search_terms(prefix3, term_len, term_norm)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_search_terms_prefix4 ON song_search_terms(prefix4, term_len, term_norm)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_search_terms_song_field ON song_search_terms(song_id, field)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_search_vocab_song_count ON song_search_vocab(song_count DESC, term_norm ASC)`);
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_song_search_deletes_key ON song_search_deletes(delete_key, term_norm)`);
  await ensureUsersNicknameUniqueness(env);

  await ensureRBACArtifacts(env);
  await normalizeRBACPermissions(env);
}

export async function ensureAuthSchema(env) {
  if (authSchemaReady || schemaSeedReady) return;
  if (await hasFreshAuthSchema(env)) return;
  if (authSchemaWork) {
    await authSchemaWork;
    return;
  }

  authSchemaWork = (async () => {
  await dbRun(env, "PRAGMA foreign_keys = ON");

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS users (
      id TEXT PRIMARY KEY,
      email TEXT NOT NULL UNIQUE,
      nickname TEXT,
      pass_hash TEXT NOT NULL,
      role TEXT NOT NULL CHECK(role IN ('user','admin','super_admin')),
      created_at TEXT NOT NULL
    )`
  );
  await ensurePassHashCompatibility(env);
  await ensureUsersNicknameData(env);
  await ensureUsersNicknameTimingData(env);
  await ensureUsersRoleConstraintSupportsSuperAdmin(env);
  await ensureUsersNicknameUniqueness(env);
  await ensureRBACArtifacts(env);
  await normalizeRBACPermissions(env);

  await dbRun(
    env,
    `CREATE TABLE IF NOT EXISTS rate_limits (
      bucket TEXT PRIMARY KEY,
      count INTEGER NOT NULL,
      reset_at INTEGER NOT NULL,
      updated_at TEXT NOT NULL DEFAULT (datetime('now'))
    )`
  );
  await dbRun(env, `CREATE INDEX IF NOT EXISTS idx_rate_limits_reset ON rate_limits(reset_at)`);
    await writeSchemaMarker(env, AUTH_SCHEMA_MARKER_KEY, AUTH_SCHEMA_MARKER_VALUE);
    authSchemaReady = true;
  })();

  try {
    await authSchemaWork;
  } catch (error) {
    authSchemaWork = null;
    authSchemaReady = false;
    throw error;
  }
}

async function upsertFTS(env, songId, title, lyrics) {
  await dbRun(env, `INSERT OR REPLACE INTO songs_fts(song_id, title, lyrics) VALUES (?,?,?)`, [songId, title || "", lyrics || ""]);
}

async function ensureDemoSong(env, it) {
  const tags_json = JSON.stringify(Array.isArray(it.tags) ? it.tags : []);
  const status = it.status === "draft" ? "draft" : "published";
  await dbRun(
    env,
    `INSERT OR REPLACE INTO songs (
      id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at
    ) VALUES (
      ?,?,?,?,?,?,?,?,?,?,?,?,?,
      COALESCE((SELECT created_at FROM songs WHERE id=?), datetime('now')),
      datetime('now')
    )`,
    [
      it.id,
      it.title,
      it.subtitle || null,
      it.lang,
      it.country || null,
      it.period || null,
      it.year || null,
      it.source || null,
      it.notes || null,
      it.lyrics,
      tags_json,
      status === "published" ? 1 : 0,
      status,
      it.id,
    ]
  );

  await upsertFTS(env, it.id, it.title, it.lyrics);
  await dbRun(env, `DELETE FROM song_links WHERE song_id=?`, [it.id]);
  await dbRun(env, `DELETE FROM song_versions WHERE song_id=?`, [it.id]);

  let linkOrder = 0;
  for (const l of it.links || []) {
    if (!l?.url) continue;
    await dbRun(
      env,
      `INSERT INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES (?,?,?,?,?,?,?)`,
      [makeId("l"), it.id, l.title || null, String(l.url), l.kind || null, l.version_id || null, linkOrder++]
    );
  }

  let versionOrder = 0;
  for (const v of it.versions || []) {
    if (!v?.lyrics) continue;
    await dbRun(
      env,
      `INSERT INTO song_versions (id,song_id,title,lang,lyrics,lyrics_meta_json,source,sort_order) VALUES (?,?,?,?,?,?,?,?)`,
      [
        v.id || makeId("v"),
        it.id,
        v.title || null,
        v.lang || null,
        String(v.lyrics),
        JSON.stringify(v.lyrics_meta_json || v.lyrics_meta || {}),
        v.source || null,
        versionOrder++,
      ]
    );
  }
}

async function ensureCanonicalDemoSongMetadata(env) {
  const updates = [
    ["s_demo_du_nai", "romania_1989", null],
    ["s_demo_captains", "ussr", null],
    ["s_demo_pockmarked", null, null],
  ];
  for (const [songId, country, period] of updates) {
    await dbRun(
      env,
      `UPDATE songs
       SET country=?, period=?, updated_at=datetime('now')
       WHERE id=?`,
      [country, period, songId]
    );
  }
}

async function ensureHistoricalVerificationReset(env) {
  const marker = await readSchemaMarker(env, VERIFICATION_RESET_MARKER_KEY);
  if (marker === VERIFICATION_RESET_MARKER_VALUE) return;

  await dbRun(
    env,
    `UPDATE songs
     SET
       verified = 0,
       verified_translation = NULL,
       updated_at = datetime('now')
     WHERE coalesce(verified, 0) <> 0
        OR NULLIF(trim(coalesce(verified_translation, '')), '') IS NOT NULL`
  );

  await writeSchemaMarker(env, VERIFICATION_RESET_MARKER_KEY, VERIFICATION_RESET_MARKER_VALUE);
}

export async function ensureSeed(env) {
  const row = await dbGet(env, `SELECT COUNT(*) AS c FROM songs`, []);
  const songsCount = row?.c || 0;
  if (songsCount > 0) return;
  for (const it of SAMPLE_SONGS) {
    await ensureDemoSong(env, it);
  }
}

export async function ensureSchemaAndSeed(env) {
  if (schemaSeedReady) {
    return;
  }
  if (await hasFreshFullSchema(env)) {
    return;
  }
  if (schemaSeedWork) {
    await schemaSeedWork;
    return;
  }

  schemaSeedWork = (async () => {
    await ensureSchema(env);
    await ensureSuperAdmin(env);
    await ensureUsersNicknameData(env);
    await ensureUsersNicknameTimingData(env);
    await ensureSeed(env);
    await seedEntityGraph(env);
    await ensureCanonicalDemoSongMetadata(env);
    await ensureHistoricalVerificationReset(env);
    const searchMarker = await readSchemaMarker(env, SEARCH_INDEX_SCHEMA_MARKER_KEY);
    if (searchMarker !== SEARCH_INDEX_SCHEMA_MARKER_VALUE) {
      const searchIndexStats = await getSearchIndexStats(env);
      if (isUsableSearchIndex(searchIndexStats)) {
        await writeSchemaMarker(env, SEARCH_INDEX_SCHEMA_MARKER_KEY, SEARCH_INDEX_SCHEMA_MARKER_VALUE);
      } else if (searchIndexStats.publishedSongs <= SEARCH_INLINE_REBUILD_MAX_SONGS) {
        await rebuildSongSearchIndex(env);
        await writeSchemaMarker(env, SEARCH_INDEX_SCHEMA_MARKER_KEY, SEARCH_INDEX_SCHEMA_MARKER_VALUE);
      }
    }
    await writeSchemaMarker(env, AUTH_SCHEMA_MARKER_KEY, AUTH_SCHEMA_MARKER_VALUE);
    await writeSchemaMarker(env, FULL_SCHEMA_MARKER_KEY, FULL_SCHEMA_MARKER_VALUE);
    schemaSeedReady = true;
    authSchemaReady = true;
  })();

  try {
    await schemaSeedWork;
  } catch (error) {
    schemaSeedWork = null;
    schemaSeedReady = false;
    authSchemaReady = false;
    throw error;
  }
}
