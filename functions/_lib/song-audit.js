import { dbAll, dbGet, dbRun } from "./db.js";
import { makeId, nowISO } from "./utils.js";

function isMissingSongRevisionsTable(cause) {
  return /no such table: song_revisions/i.test(String(cause?.message || cause || ""));
}

function normStr(value) {
  const text = String(value ?? "").trim();
  return text || null;
}

function toIntBool(value) {
  return value === true
    || value === 1
    || String(value ?? "").trim().toLowerCase() === "1"
    || String(value ?? "").trim().toLowerCase() === "true"
    ? 1
    : 0;
}

function parseJson(value, fallback) {
  if (value == null || value === "") return fallback;
  if (typeof value === "object") return value;
  try {
    return JSON.parse(String(value));
  } catch {
    return fallback;
  }
}

function normalizeVersion(item = {}, index = 0) {
  const id = normStr(item.id) || makeId("v");
  return {
    id,
    title: normStr(item.title),
    lang: normStr(item.lang),
    lyrics: String(item.lyrics ?? ""),
    lyrics_meta_json: parseJson(item.lyrics_meta_json ?? item.lyrics_meta, {}),
    source: normStr(item.source),
    sort_order: Number.isFinite(Number(item.sort_order)) ? Number(item.sort_order) : index,
  };
}

function normalizeLink(item = {}, index = 0) {
  return {
    id: normStr(item.id) || makeId("l"),
    title: normStr(item.title),
    url: String(item.url ?? "").trim(),
    kind: normStr(item.kind),
    version_id: normStr(item.version_id ?? item.versionId),
    sort_order: Number.isFinite(Number(item.sort_order)) ? Number(item.sort_order) : index,
  };
}

export function normalizeSongSnapshot(snapshot = {}, fallbackSongId = "") {
  const tags = Array.isArray(snapshot?.tags)
    ? snapshot.tags
    : parseJson(snapshot?.tags_json, []);
  const versions = Array.isArray(snapshot?.versions) ? snapshot.versions : [];
  const links = Array.isArray(snapshot?.links) ? snapshot.links : [];
  const createdAt = normStr(snapshot?.created_at);
  const updatedAt = normStr(snapshot?.updated_at);
  const status = String(snapshot?.status || "").trim().toLowerCase() === "draft" ? "draft" : "published";

  return {
    id: String(snapshot?.id || fallbackSongId || "").trim(),
    title: String(snapshot?.title || "").trim(),
    subtitle: normStr(snapshot?.subtitle),
    lang: String(snapshot?.lang || "").trim(),
    country: normStr(snapshot?.country),
    period: normStr(snapshot?.period),
    region: normStr(snapshot?.region),
    event: normStr(snapshot?.event),
    theme: normStr(snapshot?.theme),
    verified: toIntBool(snapshot?.verified),
    year: normStr(snapshot?.year),
    source: normStr(snapshot?.source),
    notes: normStr(snapshot?.notes),
    lyrics: String(snapshot?.lyrics ?? ""),
    verified_translation: normStr(snapshot?.verified_translation),
    lyrics_meta_json: parseJson(snapshot?.lyrics_meta_json ?? snapshot?.lyrics_meta, {}),
    tags: Array.isArray(tags) ? tags : [],
    is_admin_content: toIntBool(snapshot?.is_admin_content ?? snapshot?.isAdminContent),
    created_by: normStr(snapshot?.created_by),
    updated_by: normStr(snapshot?.updated_by),
    lang_locked: toIntBool(snapshot?.lang_locked),
    status,
    created_at: createdAt,
    updated_at: updatedAt,
    versions: versions
      .map((item, index) => normalizeVersion(item, index))
      .filter((item) => item.lyrics.trim()),
    links: links
      .map((item, index) => normalizeLink(item, index))
      .filter((item) => item.url),
    is_deleted: toIntBool(snapshot?.is_deleted),
  };
}

export async function listSongLinks(env, songId) {
  const rows = await dbAll(
    env,
    `SELECT id, title, url, kind, version_id, sort_order
     FROM song_links
     WHERE song_id=?
     ORDER BY sort_order ASC, id ASC`,
    [songId]
  );
  return (rows || []).map((row, index) => normalizeLink(row, index));
}

export async function listSongVersions(env, songId) {
  const rows = await dbAll(
    env,
    `SELECT id, title, lang, lyrics, lyrics_meta_json, source, sort_order
     FROM song_versions
     WHERE song_id=?
     ORDER BY sort_order ASC, id ASC`,
    [songId]
  );
  return (rows || []).map((row, index) => normalizeVersion(row, index));
}

export async function replaceSongLinks(env, songId, links = []) {
  await dbRun(env, `DELETE FROM song_links WHERE song_id=?`, [songId]);
  if (!Array.isArray(links)) return;
  for (let index = 0; index < links.length; index += 1) {
    const item = normalizeLink(links[index], index);
    if (!item.url) continue;
    await dbRun(
      env,
      `INSERT INTO song_links (id, song_id, title, url, kind, version_id, sort_order)
       VALUES (?, ?, ?, ?, ?, ?, ?)`,
      [item.id, songId, item.title, item.url, item.kind, item.version_id, item.sort_order]
    );
  }
}

export async function replaceSongVersions(env, songId, versions = []) {
  await dbRun(env, `DELETE FROM song_versions WHERE song_id=?`, [songId]);
  if (!Array.isArray(versions)) return;
  for (let index = 0; index < versions.length; index += 1) {
    const item = normalizeVersion(versions[index], index);
    if (!item.lyrics.trim()) continue;
    await dbRun(
      env,
      `INSERT INTO song_versions (id, song_id, title, lang, lyrics, lyrics_meta_json, source, sort_order)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
      [
        item.id,
        songId,
        item.title,
        item.lang,
        item.lyrics,
        JSON.stringify(item.lyrics_meta_json || {}),
        item.source,
        item.sort_order,
      ]
    );
  }
}

export async function readSongSnapshot(env, songId) {
  const row = await dbGet(env, `SELECT * FROM songs WHERE id=?`, [songId]);
  if (!row) return null;
  const [links, versions] = await Promise.all([
    listSongLinks(env, songId),
    listSongVersions(env, songId),
  ]);
  return normalizeSongSnapshot({
    ...row,
    tags: parseJson(row?.tags_json, []),
    lyrics_meta_json: parseJson(row?.lyrics_meta_json, {}),
    links,
    versions,
    is_deleted: 0,
  }, songId);
}

export async function findSongRevisionById(env, songId, revisionId) {
  let row = null;
  try {
    row = await dbGet(
      env,
      `SELECT r.id, r.song_id, r.revision_seq, r.action, r.actor_user_id, r.restored_from_revision_id, r.snapshot_json, r.created_at,
              u.email AS actor_email, u.nickname AS actor_nickname
       FROM song_revisions r
       LEFT JOIN users u ON u.id = r.actor_user_id
       WHERE r.song_id=? AND r.id=?`,
      [songId, revisionId]
    );
  } catch (cause) {
    if (isMissingSongRevisionsTable(cause)) return null;
    throw cause;
  }
  if (!row) return null;
  return {
    ...row,
    snapshot: normalizeSongSnapshot(parseJson(row.snapshot_json, {}), row.song_id),
  };
}

export async function getLatestSongRevision(env, songId) {
  let row = null;
  try {
    row = await dbGet(
      env,
      `SELECT r.id, r.song_id, r.revision_seq, r.action, r.actor_user_id, r.restored_from_revision_id, r.snapshot_json, r.created_at,
              u.email AS actor_email, u.nickname AS actor_nickname
       FROM song_revisions r
       LEFT JOIN users u ON u.id = r.actor_user_id
       WHERE r.song_id=?
       ORDER BY r.revision_seq DESC
       LIMIT 1`,
      [songId]
    );
  } catch (cause) {
    if (isMissingSongRevisionsTable(cause)) return null;
    throw cause;
  }
  if (!row) return null;
  return {
    ...row,
    snapshot: normalizeSongSnapshot(parseJson(row.snapshot_json, {}), row.song_id),
  };
}

export async function listSongRevisions(env, songId, limit = 80) {
  let rows = [];
  try {
    rows = await dbAll(
      env,
      `SELECT r.id, r.song_id, r.revision_seq, r.action, r.actor_user_id, r.restored_from_revision_id, r.snapshot_json, r.created_at,
              u.email AS actor_email, u.nickname AS actor_nickname
       FROM song_revisions r
       LEFT JOIN users u ON u.id = r.actor_user_id
       WHERE r.song_id=?
       ORDER BY r.revision_seq DESC
       LIMIT ?`,
      [songId, Math.max(1, Math.min(200, Number(limit) || 80))]
    );
  } catch (cause) {
    if (isMissingSongRevisionsTable(cause)) return [];
    throw cause;
  }
  return (rows || []).map((row) => ({
    ...row,
    snapshot: normalizeSongSnapshot(parseJson(row.snapshot_json, {}), row.song_id),
  }));
}

export async function ensureSongHistoryBaseline(env, songId, actorUserId = null) {
  let existing = null;
  try {
    existing = await dbGet(env, `SELECT id FROM song_revisions WHERE song_id=? LIMIT 1`, [songId]);
  } catch (cause) {
    if (isMissingSongRevisionsTable(cause)) return null;
    throw cause;
  }
  if (existing?.id) return existing.id;
  const snapshot = await readSongSnapshot(env, songId);
  if (!snapshot) return null;
  const revision = await recordSongRevision(env, {
    songId,
    action: "snapshot",
    actorUserId,
    snapshot,
  });
  return revision?.id || null;
}

export async function recordSongRevision(env, { songId, action = "update", actorUserId = null, snapshot = {}, restoredFromRevisionId = null }) {
  const normalized = normalizeSongSnapshot(snapshot, songId);
  if (!normalized.id) throw new Error("Song revision requires song id");
  let row = null;
  try {
    row = await dbGet(
      env,
      `SELECT COALESCE(MAX(revision_seq), 0) + 1 AS next_seq
       FROM song_revisions
       WHERE song_id=?`,
      [normalized.id]
    );
  } catch (cause) {
    if (isMissingSongRevisionsTable(cause)) {
      return {
        id: null,
        song_id: normalized.id,
        revision_seq: 0,
        action: String(action || "update"),
        actor_user_id: actorUserId || null,
        restored_from_revision_id: restoredFromRevisionId || null,
        snapshot: normalized,
      };
    }
    throw cause;
  }
  const revisionId = makeId("rev");
  const revisionSeq = Number(row?.next_seq || 1);
  try {
    await dbRun(
      env,
      `INSERT INTO song_revisions (
         id, song_id, revision_seq, action, actor_user_id, restored_from_revision_id, snapshot_json, created_at
       )
       VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
      [
        revisionId,
        normalized.id,
        revisionSeq,
        String(action || "update"),
        actorUserId || null,
        restoredFromRevisionId || null,
        JSON.stringify(normalized),
        nowISO(),
      ]
    );
  } catch (cause) {
    if (isMissingSongRevisionsTable(cause)) {
      return {
        id: null,
        song_id: normalized.id,
        revision_seq: 0,
        action: String(action || "update"),
        actor_user_id: actorUserId || null,
        restored_from_revision_id: restoredFromRevisionId || null,
        snapshot: normalized,
      };
    }
    throw cause;
  }
  return {
    id: revisionId,
    song_id: normalized.id,
    revision_seq: revisionSeq,
    action: String(action || "update"),
    actor_user_id: actorUserId || null,
    restored_from_revision_id: restoredFromRevisionId || null,
    snapshot: normalized,
  };
}

export async function applySongSnapshot(env, snapshot = {}) {
  const normalized = normalizeSongSnapshot(snapshot);
  if (!normalized.id) throw new Error("Song snapshot requires id");
  const songId = normalized.id;
  if (normalized.is_deleted) {
    await dbRun(env, `DELETE FROM song_versions WHERE song_id=?`, [songId]);
    await dbRun(env, `DELETE FROM song_links WHERE song_id=?`, [songId]);
    await dbRun(env, `DELETE FROM favorites WHERE song_id=?`, [songId]);
    await dbRun(env, `DELETE FROM songs WHERE id=?`, [songId]);
    return normalized;
  }

  const current = await dbGet(env, `SELECT created_at, created_by FROM songs WHERE id=?`, [songId]);
  const createdAt = normalized.created_at || normStr(current?.created_at) || nowISO();
  const createdBy = normalized.created_by || normStr(current?.created_by);
  const updatedAt = nowISO();

  await dbRun(
    env,
    `INSERT INTO songs (
       id, title, subtitle, lang, country, period, region, event, theme, verified, year, source, notes,
       lyrics, verified_translation, lyrics_meta_json, tags_json, is_admin_content, created_by, updated_by,
       lang_locked, status, created_at, updated_at
     ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
     ON CONFLICT(id) DO UPDATE SET
       title=excluded.title,
       subtitle=excluded.subtitle,
       lang=excluded.lang,
       country=excluded.country,
       period=excluded.period,
       region=excluded.region,
       event=excluded.event,
       theme=excluded.theme,
       verified=excluded.verified,
       year=excluded.year,
       source=excluded.source,
       notes=excluded.notes,
       lyrics=excluded.lyrics,
       verified_translation=excluded.verified_translation,
       lyrics_meta_json=excluded.lyrics_meta_json,
       tags_json=excluded.tags_json,
       is_admin_content=excluded.is_admin_content,
       created_by=COALESCE(songs.created_by, excluded.created_by),
       updated_by=excluded.updated_by,
       lang_locked=excluded.lang_locked,
       status=excluded.status,
       updated_at=excluded.updated_at`,
    [
      songId,
      normalized.title,
      normalized.subtitle,
      normalized.lang,
      normalized.country,
      normalized.period,
      normalized.region,
      normalized.event,
      normalized.theme,
      normalized.verified ? 1 : 0,
      normalized.year,
      normalized.source,
      normalized.notes,
      normalized.lyrics,
      normalized.verified_translation,
      JSON.stringify(normalized.lyrics_meta_json || {}),
      JSON.stringify(Array.isArray(normalized.tags) ? normalized.tags : []),
      normalized.is_admin_content ? 1 : 0,
      createdBy,
      normalized.updated_by,
      normalized.lang_locked ? 1 : 0,
      normalized.status,
      createdAt,
      updatedAt,
    ]
  );

  await replaceSongLinks(env, songId, normalized.links);
  await replaceSongVersions(env, songId, normalized.versions);

  return {
    ...normalized,
    created_at: createdAt,
    updated_at: updatedAt,
    created_by: createdBy,
  };
}
