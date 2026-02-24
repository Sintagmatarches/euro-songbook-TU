import { dbAll, dbGet, dbRun, requireAuth } from "./db.js";
import { err, makeId } from "./utils.js";

const META_FIELDS = new Set([
  "title",
  "subtitle",
  "lang",
  "country",
  "period",
  "region",
  "event",
  "theme",
  "verified",
  "year",
  "source",
  "notes",
  "song_id",
]);

function nowIso() {
  return new Date().toISOString();
}

export function parseJSON(value, fallback) {
  try {
    return value ? JSON.parse(value) : fallback;
  } catch {
    return fallback;
  }
}

export function splitLyricsLines(input) {
  return String(input || "")
    .replace(/\r\n?/g, "\n")
    .split("\n");
}

export function clampConfidence(value, fallback = 100) {
  const n = Number.parseInt(String(value ?? fallback), 10);
  if (!Number.isFinite(n)) return fallback;
  return Math.max(0, Math.min(100, n));
}

function asBoolInt(value) {
  return value === true || value === 1 || String(value || "").trim() === "1" ? 1 : 0;
}

function allowVariantType(value) {
  const normalized = String(value || "").trim().toLowerCase();
  if (normalized === "suggested") return "suggested";
  if (normalized === "conflict") return "conflict";
  return "manual";
}

export async function requireDraftAccess(env, request, draftId, options = {}) {
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;
  const userId = String(auth.sub || "");
  if (!userId) return err("Unauthorized", 401);
  const draft = await dbGet(env, `SELECT * FROM drafts WHERE id=?`, [draftId]);
  if (!draft) return err("Draft not found", 404);

  const owner = String(draft.owner_user_id || "") === userId;
  let collaborator = null;
  if (!owner) {
    collaborator = await dbGet(
      env,
      `SELECT draft_id,user_id,can_publish,created_at
       FROM draft_collaborators
       WHERE draft_id=? AND user_id=?`,
      [draftId, userId]
    );
    if (!collaborator) return err("Forbidden", 403);
  }

  if (options.publish && !owner && Number(collaborator?.can_publish || 0) !== 1) {
    return err("Forbidden: publish permission required", 403);
  }
  return { auth, userId, draft, owner, collaborator };
}

export async function normalizeDraftSnapshot(input = {}) {
  const output = {};
  for (const key of META_FIELDS) {
    if (!Object.prototype.hasOwnProperty.call(input, key)) continue;
    if (key === "verified") {
      output[key] = asBoolInt(input[key]);
    } else {
      const value = String(input[key] ?? "").trim();
      output[key] = value || null;
    }
  }
  return output;
}

export async function createDraft(env, { userId, songId = "", seed = {} }) {
  const id = makeId("d");
  const now = nowIso();

  let sourceSong = null;
  if (songId) {
    sourceSong = await dbGet(env, `SELECT * FROM songs WHERE id=?`, [songId]);
    if (!sourceSong) throw new Error("Song not found");
  }

  const snapshot = await normalizeDraftSnapshot({
    song_id: sourceSong?.id || null,
    title: sourceSong?.title ?? seed?.title ?? "",
    subtitle: sourceSong?.subtitle ?? seed?.subtitle ?? "",
    lang: sourceSong?.lang ?? seed?.lang ?? "",
    country: sourceSong?.country ?? seed?.country ?? "",
    period: sourceSong?.period ?? seed?.period ?? "",
    region: sourceSong?.region ?? seed?.region ?? "",
    event: sourceSong?.event ?? seed?.event ?? "",
    theme: sourceSong?.theme ?? seed?.theme ?? "",
    verified: sourceSong?.verified ?? seed?.verified ?? 0,
    year: sourceSong?.year ?? seed?.year ?? "",
    source: sourceSong?.source ?? seed?.source ?? "",
    notes: sourceSong?.notes ?? seed?.notes ?? "",
  });

  await dbRun(
    env,
    `INSERT INTO drafts (id,song_id,owner_user_id,status,version,snapshot_json,created_at,updated_at)
     VALUES (?,?,?,'draft',0,?,?,?)`,
    [id, sourceSong?.id || null, userId, JSON.stringify(snapshot), now, now]
  );

  const lyrics = String(sourceSong?.lyrics ?? seed?.lyrics ?? "");
  const lines = splitLyricsLines(lyrics);
  for (let index = 0; index < lines.length; index += 1) {
    const lineId = makeId("dl");
    const variantId = makeId("dv");
    await dbRun(
      env,
      `INSERT INTO draft_lines (id,draft_id,line_key,sort_order,active_variant_id,created_at,updated_at)
       VALUES (?,?,?,?,?,?,?)`,
      [lineId, id, `line_${index + 1}`, index, variantId, now, now]
    );
    await dbRun(
      env,
      `INSERT INTO draft_line_variants (id,draft_id,line_id,text,confidence,variant_type,is_active,created_by,created_at,updated_at)
       VALUES (?,?,?,?,?,'manual',1,?,?,?)`,
      [variantId, id, lineId, String(lines[index] || ""), 100, userId, now, now]
    );
  }

  return id;
}

export async function listDraftCollaborators(env, draftId) {
  return dbAll(
    env,
    `SELECT c.user_id, c.can_publish, c.created_at, u.nickname, u.email
     FROM draft_collaborators c
     JOIN users u ON u.id=c.user_id
     WHERE c.draft_id=?
     ORDER BY c.created_at ASC`,
    [draftId]
  );
}

export async function getDraftState(env, draftId) {
  const draft = await dbGet(env, `SELECT * FROM drafts WHERE id=?`, [draftId]);
  if (!draft) return null;
  const snapshot = parseJSON(draft.snapshot_json, {});
  const lines = await dbAll(
    env,
    `SELECT id,draft_id,line_key,sort_order,active_variant_id,created_at,updated_at
     FROM draft_lines
     WHERE draft_id=?
     ORDER BY sort_order ASC, created_at ASC`,
    [draftId]
  );
  const variants = await dbAll(
    env,
    `SELECT id,draft_id,line_id,text,confidence,variant_type,is_active,created_by,created_at,updated_at
     FROM draft_line_variants
     WHERE draft_id=?
     ORDER BY datetime(created_at) DESC, id DESC`,
    [draftId]
  );
  const collaborators = await listDraftCollaborators(env, draftId);
  const variantsByLine = new Map();
  for (const item of variants) {
    const key = String(item.line_id || "");
    const list = variantsByLine.get(key) || [];
    list.push({
      id: item.id,
      text: String(item.text || ""),
      confidence: clampConfidence(item.confidence, 100),
      variant_type: allowVariantType(item.variant_type),
      is_active: Number(item.is_active || 0) === 1,
      created_by: item.created_by || null,
      created_at: item.created_at,
      updated_at: item.updated_at,
    });
    variantsByLine.set(key, list);
  }

  return {
    draft: {
      id: draft.id,
      song_id: draft.song_id || null,
      owner_user_id: draft.owner_user_id,
      status: draft.status,
      version: Number(draft.version || 0),
      snapshot,
      created_at: draft.created_at,
      updated_at: draft.updated_at,
    },
    collaborators: collaborators.map((row) => ({
      user_id: row.user_id,
      nickname: String(row.nickname || ""),
      email: String(row.email || ""),
      can_publish: Number(row.can_publish || 0) === 1,
      created_at: row.created_at,
    })),
    lines: lines.map((line) => ({
      id: line.id,
      line_key: line.line_key,
      sort_order: Number(line.sort_order || 0),
      active_variant_id: line.active_variant_id || null,
      variants: variantsByLine.get(String(line.id || "")) || [],
      created_at: line.created_at,
      updated_at: line.updated_at,
    })),
  };
}

async function updateDraftVersion(env, draftId, nextVersion) {
  const now = nowIso();
  await dbRun(env, `UPDATE drafts SET version=?, updated_at=? WHERE id=?`, [nextVersion, now, draftId]);
  return now;
}

async function persistDraftOp(env, { draftId, seq, clientOpId, baseVersion, opType, payload, status, createdBy }) {
  await dbRun(
    env,
    `INSERT INTO draft_ops (id,draft_id,seq,client_op_id,base_version,op_type,payload_json,status,created_by,created_at)
     VALUES (?,?,?,?,?,?,?,?,?,?)`,
    [makeId("dop"), draftId, seq, clientOpId || null, Number(baseVersion || 0), opType, JSON.stringify(payload || {}), status || "persisted", createdBy || null, nowIso()]
  );
}

async function maybePersistSnapshot(env, { draftId, version, userId }) {
  if (version % 20 !== 0) return;
  const state = await getDraftState(env, draftId);
  if (!state) return;
  await dbRun(
    env,
    `INSERT INTO draft_snapshots (id,draft_id,version,snapshot_json,created_by,created_at)
     VALUES (?,?,?,?,?,?)`,
    [makeId("dss"), draftId, version, JSON.stringify(state), userId || null, nowIso()]
  );
}

export async function applyDraftOperation(env, { draftId, userId, op }) {
  const current = await dbGet(env, `SELECT id,version,snapshot_json FROM drafts WHERE id=?`, [draftId]);
  if (!current) throw new Error("Draft not found");
  const type = String(op?.op_type || op?.type || "").trim();
  if (!type) throw new Error("Operation type is required");

  const payload = op?.payload && typeof op.payload === "object" ? op.payload : {};
  const clientOpId = String(op?.client_op_id || "").trim() || makeId("cop");
  const baseVersion = Number.parseInt(String(op?.base_version ?? current.version ?? 0), 10) || 0;
  const nextVersion = Number(current.version || 0) + 1;
  let conflict = null;

  if (type === "set_meta") {
    const prev = parseJSON(current.snapshot_json, {});
    const patch = await normalizeDraftSnapshot(payload || {});
    const merged = { ...prev, ...patch };
    await dbRun(env, `UPDATE drafts SET snapshot_json=? WHERE id=?`, [JSON.stringify(merged), draftId]);
  } else if (type === "set_line_text") {
    const lineId = String(payload.line_id || "").trim();
    if (!lineId) throw new Error("line_id is required");
    const line = await dbGet(env, `SELECT * FROM draft_lines WHERE id=? AND draft_id=?`, [lineId, draftId]);
    if (!line) throw new Error("line not found");
    const text = String(payload.text ?? "");
    const confidence = clampConfidence(payload.confidence, 100);
    const hasConcurrent = baseVersion < Number(current.version || 0);
    if (hasConcurrent) {
      const variantId = makeId("dv");
      await dbRun(
        env,
        `INSERT INTO draft_line_variants (id,draft_id,line_id,text,confidence,variant_type,is_active,created_by,created_at,updated_at)
         VALUES (?,?,?,?,?,'conflict',0,?,?,?)`,
        [variantId, draftId, lineId, text, confidence, userId, nowIso(), nowIso()]
      );
      conflict = { line_id: lineId, incoming_variant_id: variantId };
    } else {
      const variantId = makeId("dv");
      await dbRun(env, `UPDATE draft_line_variants SET is_active=0, updated_at=? WHERE line_id=? AND draft_id=?`, [nowIso(), lineId, draftId]);
      await dbRun(
        env,
        `INSERT INTO draft_line_variants (id,draft_id,line_id,text,confidence,variant_type,is_active,created_by,created_at,updated_at)
         VALUES (?,?,?,?,?,?,1,?,?,?)`,
        [variantId, draftId, lineId, text, confidence, allowVariantType(payload.variant_type), userId, nowIso(), nowIso()]
      );
      await dbRun(env, `UPDATE draft_lines SET active_variant_id=?, updated_at=? WHERE id=?`, [variantId, nowIso(), lineId]);
    }
  } else if (type === "add_variant") {
    const lineId = String(payload.line_id || "").trim();
    if (!lineId) throw new Error("line_id is required");
    const line = await dbGet(env, `SELECT id FROM draft_lines WHERE id=? AND draft_id=?`, [lineId, draftId]);
    if (!line) throw new Error("line not found");
    await dbRun(
      env,
      `INSERT INTO draft_line_variants (id,draft_id,line_id,text,confidence,variant_type,is_active,created_by,created_at,updated_at)
       VALUES (?,?,?,?,?,?,0,?,?,?)`,
      [makeId("dv"), draftId, lineId, String(payload.text || ""), clampConfidence(payload.confidence, 80), allowVariantType(payload.variant_type), userId, nowIso(), nowIso()]
    );
  } else if (type === "set_active_variant") {
    const lineId = String(payload.line_id || "").trim();
    const variantId = String(payload.variant_id || "").trim();
    if (!lineId || !variantId) throw new Error("line_id and variant_id are required");
    const variant = await dbGet(env, `SELECT id FROM draft_line_variants WHERE id=? AND line_id=? AND draft_id=?`, [variantId, lineId, draftId]);
    if (!variant) throw new Error("variant not found");
    await dbRun(env, `UPDATE draft_line_variants SET is_active=0, updated_at=? WHERE line_id=? AND draft_id=?`, [nowIso(), lineId, draftId]);
    await dbRun(env, `UPDATE draft_line_variants SET is_active=1, updated_at=? WHERE id=?`, [nowIso(), variantId]);
    await dbRun(env, `UPDATE draft_lines SET active_variant_id=?, updated_at=? WHERE id=?`, [variantId, nowIso(), lineId]);
  } else if (type === "set_variant_confidence") {
    const variantId = String(payload.variant_id || "").trim();
    if (!variantId) throw new Error("variant_id is required");
    await dbRun(
      env,
      `UPDATE draft_line_variants
       SET confidence=?, updated_at=?
       WHERE id=? AND draft_id=?`,
      [clampConfidence(payload.confidence, 100), nowIso(), variantId, draftId]
    );
  } else {
    throw new Error(`Unsupported operation type: ${type}`);
  }

  await updateDraftVersion(env, draftId, nextVersion);
  await persistDraftOp(env, {
    draftId,
    seq: nextVersion,
    clientOpId,
    baseVersion,
    opType: type,
    payload,
    status: "persisted",
    createdBy: userId,
  });
  await maybePersistSnapshot(env, { draftId, version: nextVersion, userId });
  return { version: nextVersion, client_op_id: clientOpId, conflict };
}

export async function publishDraftToSong(env, { draftId, userId }) {
  const state = await getDraftState(env, draftId);
  if (!state) throw new Error("Draft not found");

  const snapshot = state.draft.snapshot || {};
  const orderedLines = [...state.lines].sort((a, b) => a.sort_order - b.sort_order);
  const textLines = orderedLines.map((line) => {
    const active = line.variants.find((v) => v.is_active) || line.variants[0];
    return String(active?.text || "");
  });
  const lyrics = textLines.join("\n");
  const lyricsMeta = {
    lines: orderedLines.map((line) => {
      const variants = line.variants.map((item) => ({
        id: item.id,
        text: item.text,
        confidence: item.confidence,
        variant_type: item.variant_type,
        is_active: item.is_active,
      }));
      return {
        id: line.id,
        line_key: line.line_key,
        active_variant_id: line.active_variant_id,
        variants,
      };
    }),
  };
  const verified = asBoolInt(snapshot.verified);
  const now = nowIso();

  let songId = String(state.draft.song_id || "").trim();
  if (songId) {
    await dbRun(
      env,
      `UPDATE songs SET
         title=?, subtitle=?, lang=?, country=?, period=?, region=?, event=?, theme=?, verified=?, year=?,
         source=?, notes=?, lyrics=?, lyrics_meta_json=?, status='published', updated_by=?, updated_at=?
       WHERE id=?`,
      [
        snapshot.title || "Untitled draft",
        snapshot.subtitle || null,
        snapshot.lang || "en",
        snapshot.country || null,
        snapshot.period || null,
        snapshot.region || null,
        snapshot.event || null,
        snapshot.theme || null,
        verified,
        snapshot.year || null,
        snapshot.source || null,
        snapshot.notes || null,
        lyrics,
        JSON.stringify(lyricsMeta),
        userId,
        now,
        songId,
      ]
    );
  } else {
    songId = makeId("s");
    await dbRun(
      env,
      `INSERT INTO songs (
         id,title,subtitle,lang,country,period,region,event,theme,verified,year,source,notes,lyrics,lyrics_meta_json,tags_json,is_admin_content,
         created_by,updated_by,lang_locked,status,created_at,updated_at
       ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,1,'published',?,?)`,
      [
        songId,
        snapshot.title || "Untitled draft",
        snapshot.subtitle || null,
        snapshot.lang || "en",
        snapshot.country || null,
        snapshot.period || null,
        snapshot.region || null,
        snapshot.event || null,
        snapshot.theme || null,
        verified,
        snapshot.year || null,
        snapshot.source || null,
        snapshot.notes || null,
        lyrics,
        JSON.stringify(lyricsMeta),
        "[]",
        0,
        userId,
        userId,
        now,
        now,
      ]
    );
  }

  await dbRun(
    env,
    `INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES (?,?,?)`,
    [songId, snapshot.title || "Untitled draft", lyrics]
  );
  await dbRun(env, `UPDATE drafts SET song_id=?, status='published', updated_at=? WHERE id=?`, [songId, now, draftId]);
  return { songId, lyricsMeta };
}
