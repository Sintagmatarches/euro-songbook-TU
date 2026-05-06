import {
  assertScopeForLang,
  canViewAdminContent,
  dbAll,
  dbGet,
  dbRun,
  getUserAccess,
  hasAccessPermission,
  requireAuth,
} from "./db.js";
import { err, makeId } from "./utils.js";
import {
  confidenceLevelFromValue,
  normalizeConfidenceValue,
  normalizeConfidenceSegments,
} from "../../shared/lyrics-confidence.js";
import { invalidateCatalogRuntimeCache } from "./runtime-cache.js";

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
  "verified_translation",
  "song_id",
]);
const INVITATION_STATUSES = new Set(["pending", "accepted", "declined", "cancelled"]);

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
  return normalizeConfidenceValue(value, fallback);
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

function parseLyricsMetaInput(value, fallback = {}) {
  if (!value) return fallback;
  if (typeof value === "string") return parseJSON(value, fallback);
  if (typeof value === "object") return value;
  return fallback;
}

function normalizeVariantSegments(segments, text = "") {
  return normalizeConfidenceSegments(segments, {
    maxLength: String(text || "").length,
    dropExact: true,
  });
}

function normalizeSeedVariant(rawVariant, options = {}) {
  const fallbackText = String(options?.fallbackText || "");
  const variantId = String(rawVariant?.id || options?.fallbackId || makeId("dv_seed"));
  const text = String(rawVariant?.text ?? fallbackText);
  const level = confidenceLevelFromValue(rawVariant?.confidence_level ?? rawVariant?.level ?? rawVariant?.confidence, options?.fallbackConfidence || 100);
  const confidence = clampConfidence(level, options?.fallbackConfidence || 100);
  const confidenceSegments = normalizeVariantSegments(
    parseLyricsMetaInput(rawVariant?.confidence_segments_json ?? rawVariant?.confidence_segments ?? rawVariant?.segments, []),
    text,
  );
  return {
    id: variantId,
    text,
    confidence,
    confidence_level: confidenceLevelFromValue(confidence),
    confidence_segments: confidenceSegments,
    variant_type: allowVariantType(rawVariant?.variant_type),
    is_active: rawVariant?.is_active === true || Number(rawVariant?.is_active || 0) === 1,
  };
}

function resolveActiveVariant(variants = [], options = {}) {
  if (!Array.isArray(variants) || !variants.length) return null;
  let bestScore = Number.NEGATIVE_INFINITY;
  for (const item of variants) {
    bestScore = Math.max(bestScore, Number(clampConfidence(item?.confidence, 100)));
  }
  const leaders = variants.filter((item) => Number(clampConfidence(item?.confidence, 100)) === bestScore);
  if (leaders.length <= 1) return leaders[0] || variants[0] || null;
  const preferredActiveId = String(options?.preferredActiveId || "").trim();
  if (preferredActiveId) {
    const byId = leaders.find((item) => String(item?.id || "").trim() === preferredActiveId);
    if (byId) return byId;
  }
  const fallbackText = String(options?.fallbackText || "");
  if (fallbackText) {
    const byText = leaders.find((item) => String(item?.text || "") === fallbackText);
    if (byText) return byText;
  }
  const byActiveFlag = leaders.find((item) => item?.is_active);
  if (byActiveFlag) return byActiveFlag;
  return leaders[0] || variants[0] || null;
}

function applyResolvedLineActiveVariant(line = {}, options = {}) {
  const variants = Array.isArray(line?.variants) ? line.variants : [];
  if (!variants.length) {
    if (line && typeof line === "object") line.active_variant_id = null;
    return null;
  }
  const active = resolveActiveVariant(variants, {
    preferredActiveId: options?.preferredActiveId ?? line?.active_variant_id,
    fallbackText: options?.fallbackText,
  });
  const activeId = String(active?.id || variants[0]?.id || "").trim();
  variants.forEach((item) => {
    item.is_active = String(item?.id || "").trim() === activeId;
    item.confidence_level = confidenceLevelFromValue(item.confidence);
    item.confidence_segments = normalizeVariantSegments(item.confidence_segments, item.text || "");
  });
  if (line && typeof line === "object") line.active_variant_id = activeId || null;
  return active || variants[0] || null;
}

function seedVariantsForLine(lineText = "", lineMeta = null, index = 0) {
  const sourceText = String(lineText || "");
  const rawVariants = Array.isArray(lineMeta?.variants) ? lineMeta.variants : [];
  const variants = rawVariants.map((item, variantIndex) => normalizeSeedVariant(item, {
    fallbackText: sourceText,
    fallbackId: `seed_variant_${index + 1}_${variantIndex + 1}`,
  }));
  const preferredActiveId = String(lineMeta?.active_variant_id || "").trim();
  let active = resolveActiveVariant(variants, {
    preferredActiveId,
    fallbackText: sourceText,
  }) || variants[0] || null;

  if (!variants.length) {
    active = normalizeSeedVariant({}, {
      fallbackText: sourceText,
      fallbackId: `seed_variant_${index + 1}_1`,
      fallbackConfidence: 100,
    });
    active.is_active = true;
    variants.push(active);
  }

  if (sourceText !== String(active?.text || "")) {
    const injected = normalizeSeedVariant({
      id: `seed_variant_${index + 1}_active`,
      text: sourceText,
      confidence: active?.confidence ?? 100,
      variant_type: active?.variant_type || "manual",
      is_active: false,
      confidence_segments: [],
    }, {
      fallbackText: sourceText,
      fallbackId: `seed_variant_${index + 1}_active`,
      fallbackConfidence: active?.confidence ?? 100,
    });
    variants.unshift(injected);
    active = injected;
  }

  const seededLine = {
    active_variant_id: String(active?.id || preferredActiveId || variants[0]?.id || ""),
    variants,
  };
  applyResolvedLineActiveVariant(seededLine, {
    preferredActiveId: String(active?.id || preferredActiveId || ""),
    fallbackText: sourceText,
  });
  return { activeId: String(seededLine.active_variant_id || ""), variants: seededLine.variants };
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

  if (options.publish && !owner) {
    return err("Forbidden: only owner can publish", 403);
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

async function findReusableOwnedDraft(env, { userId, songId = "" }) {
  const normalizedUserId = String(userId || "").trim();
  const normalizedSongId = String(songId || "").trim();
  if (!normalizedUserId || !normalizedSongId) return null;
  return dbGet(
    env,
    `SELECT id
     FROM drafts
     WHERE owner_user_id=?
       AND song_id=?
       AND status='draft'
     ORDER BY datetime(updated_at) DESC, datetime(created_at) DESC, id DESC
     LIMIT 1`,
    [normalizedUserId, normalizedSongId]
  );
}

export async function createDraft(env, { userId, songId = "", seed = {} }) {
  const reusableDraft = await findReusableOwnedDraft(env, { userId, songId });
  if (reusableDraft?.id) {
    return String(reusableDraft.id || "").trim();
  }

  const id = makeId("d");
  const now = nowIso();

  let sourceSong = null;
  if (songId) {
    sourceSong = await ensureDraftSourceReadable(env, { userId, songId });
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
    verified_translation: sourceSong?.verified_translation ?? seed?.verified_translation ?? "",
  });

  await dbRun(
    env,
    `INSERT INTO drafts (id,song_id,owner_user_id,status,version,snapshot_json,created_at,updated_at)
     VALUES (?,?,?,'draft',0,?,?,?)`,
    [id, sourceSong?.id || null, userId, JSON.stringify(snapshot), now, now]
  );

  const lyrics = String(sourceSong?.lyrics ?? seed?.lyrics ?? "");
  const lyricsMeta = parseLyricsMetaInput(sourceSong?.lyrics_meta_json ?? seed?.lyrics_meta_json ?? seed?.lyrics_meta, {});
  const lines = splitLyricsLines(lyrics);
  for (let index = 0; index < lines.length; index += 1) {
    const lineId = makeId("dl");
    const lineMeta = Array.isArray(lyricsMeta?.lines) ? lyricsMeta.lines[index] : null;
    const seeded = seedVariantsForLine(lines[index], lineMeta, index);
    const activeVariantId = makeId("dv");
    await dbRun(
      env,
      `INSERT INTO draft_lines (id,draft_id,line_key,sort_order,active_variant_id,created_at,updated_at)
       VALUES (?,?,?,?,?,?,?)`,
      [lineId, id, `line_${index + 1}`, index, activeVariantId, now, now]
    );
    for (let variantIndex = 0; variantIndex < seeded.variants.length; variantIndex += 1) {
      const variant = seeded.variants[variantIndex];
      const isActive = String(variant?.id || "") === String(seeded.activeId || "");
      const variantId = isActive ? activeVariantId : makeId("dv");
      await dbRun(
        env,
        `INSERT INTO draft_line_variants (id,draft_id,line_id,text,confidence,confidence_segments_json,variant_type,is_active,created_by,created_at,updated_at)
         VALUES (?,?,?,?,?,?,?, ?,?,?,?)`,
        [
          variantId,
          id,
          lineId,
          String(variant?.text || ""),
          clampConfidence(variant?.confidence, 100),
          JSON.stringify(normalizeVariantSegments(variant?.confidence_segments, variant?.text || "")),
          allowVariantType(variant?.variant_type),
          isActive ? 1 : 0,
          userId,
          now,
          now,
        ]
      );
    }
  }

  return id;
}

export async function ensureDraftSourceReadable(env, { userId, songId }) {
  const normalizedSongId = String(songId || "").trim();
  if (!normalizedSongId) throw new Error("Song not found");
  const sourceSong = await dbGet(env, `SELECT * FROM songs WHERE id=?`, [normalizedSongId]);
  if (!sourceSong || String(sourceSong.status || "").trim() !== "published") {
    throw new Error("Song not found");
  }
  const access = await getUserAccess(env, userId);
  if (!access) throw new Error("Unauthorized");
  if (Number(sourceSong.is_admin_content || 0) === 1 && !canViewAdminContent(access)) {
    throw new Error("Song not found");
  }
  return sourceSong;
}

export async function ensureDraftPublishAccess(env, { userId, draftSongId = "", snapshot = {} }) {
  const access = await getUserAccess(env, userId);
  if (!access) throw new Error("Unauthorized");

  const normalizedSongId = String(draftSongId || "").trim();
  if (normalizedSongId) {
    const targetSong = await dbGet(env, `SELECT * FROM songs WHERE id=?`, [normalizedSongId]);
    if (!targetSong || String(targetSong.status || "").trim() !== "published") {
      throw new Error("Song not found");
    }
    if (Number(targetSong.is_admin_content || 0) === 1 && !canViewAdminContent(access)) {
      throw new Error("Song not found");
    }
    if (!hasAccessPermission(access, "songs.edit")) {
      throw new Error("Forbidden: missing permission songs.edit");
    }
    try {
      assertScopeForLang(access, String(targetSong.lang || "").trim());
    } catch (cause) {
      throw new Error(cause?.status === 403 ? `Forbidden: language scope ${String(targetSong.lang || "").trim()}` : (cause?.message || "Forbidden"));
    }
    return { access, targetSong };
  }

  const draftLang = String(snapshot?.lang || "").trim();
  if (!hasAccessPermission(access, "songs.create")) {
    throw new Error("Forbidden: missing permission songs.create");
  }
  try {
    assertScopeForLang(access, draftLang);
  } catch (cause) {
    throw new Error(cause?.status === 403 ? `Forbidden: language scope ${draftLang}` : (cause?.message || "Forbidden"));
  }
  return { access, targetSong: null };
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

function normalizeInvitationStatus(value, fallback = "pending") {
  const normalized = String(value || "").trim().toLowerCase();
  if (INVITATION_STATUSES.has(normalized)) return normalized;
  return fallback;
}

function mapInvitationRow(row = {}) {
  return {
    id: String(row.id || ""),
    draft_id: String(row.draft_id || ""),
    status: normalizeInvitationStatus(row.status, "pending"),
    created_at: row.created_at || null,
    responded_at: row.responded_at || null,
    updated_at: row.updated_at || null,
    inviter: {
      user_id: String(row.inviter_user_id || ""),
      nickname: String(row.inviter_nickname || ""),
      email: String(row.inviter_email || ""),
    },
    invitee: {
      user_id: String(row.invitee_user_id || ""),
      nickname: String(row.invitee_nickname || ""),
      email: String(row.invitee_email || ""),
    },
    draft: {
      owner_user_id: String(row.owner_user_id || ""),
      song_id: row.song_id || null,
      snapshot_title: String(row.snapshot_title || ""),
      status: String(row.draft_status || "draft"),
    },
  };
}

export async function listDraftPendingInvitations(env, draftId) {
  const rows = await dbAll(
    env,
    `SELECT i.id, i.draft_id, i.status, i.created_at, i.responded_at, i.updated_at,
            i.inviter_user_id, i.invitee_user_id,
            inv.nickname AS inviter_nickname, inv.email AS inviter_email,
            ie.nickname AS invitee_nickname, ie.email AS invitee_email,
            d.owner_user_id, d.song_id, d.status AS draft_status,
            json_extract(d.snapshot_json,'$.title') AS snapshot_title
     FROM draft_invitations i
     JOIN drafts d ON d.id=i.draft_id
     LEFT JOIN users inv ON inv.id=i.inviter_user_id
     LEFT JOIN users ie ON ie.id=i.invitee_user_id
     WHERE i.draft_id=? AND i.status='pending'
     ORDER BY datetime(i.created_at) DESC, i.id DESC`,
    [draftId]
  );
  return rows.map((row) => mapInvitationRow(row));
}

export async function createDraftInvitation(env, { draftId, inviterUserId, inviteeUserId }) {
  if (!draftId || !inviterUserId || !inviteeUserId) throw new Error("draftId, inviterUserId and inviteeUserId are required");
  if (String(inviterUserId) === String(inviteeUserId)) throw new Error("Owner is already a collaborator");

  const draft = await dbGet(env, `SELECT id, owner_user_id FROM drafts WHERE id=?`, [draftId]);
  if (!draft) throw new Error("Draft not found");
  if (String(draft.owner_user_id || "") !== String(inviterUserId || "")) throw new Error("Only owner can invite collaborators");

  const alreadyCollaborator = await dbGet(
    env,
    `SELECT user_id FROM draft_collaborators WHERE draft_id=? AND user_id=?`,
    [draftId, inviteeUserId]
  );
  if (alreadyCollaborator) throw new Error("User is already a collaborator");

  const now = nowIso();
  const existingPending = await dbGet(
    env,
    `SELECT id
     FROM draft_invitations
     WHERE draft_id=? AND invitee_user_id=? AND status='pending'
     LIMIT 1`,
    [draftId, inviteeUserId]
  );
  if (existingPending?.id) {
    await dbRun(
      env,
      `UPDATE draft_invitations
       SET inviter_user_id=?, updated_at=?
       WHERE id=?`,
      [inviterUserId, now, existingPending.id]
    );
    await dbRun(env, `UPDATE drafts SET updated_at=? WHERE id=?`, [now, draftId]);
    return String(existingPending.id || "");
  }

  const invitationId = makeId("dinv");
  await dbRun(
    env,
    `INSERT INTO draft_invitations (id,draft_id,inviter_user_id,invitee_user_id,status,created_at,responded_at,updated_at)
     VALUES (?, ?, ?, ?, 'pending', ?, NULL, ?)`,
    [invitationId, draftId, inviterUserId, inviteeUserId, now, now]
  );
  await dbRun(env, `UPDATE drafts SET updated_at=? WHERE id=?`, [now, draftId]);
  return invitationId;
}

export async function listDraftInvitationsForUser(env, { userId, scope = "incoming", status = "" }) {
  const normalizedScope = String(scope || "").trim().toLowerCase() === "outgoing" ? "outgoing" : "incoming";
  const normalizedStatus = String(status || "").trim().toLowerCase();
  const where = [];
  const params = [];
  if (normalizedScope === "incoming") {
    where.push("i.invitee_user_id=?");
    params.push(userId);
  } else {
    where.push("i.inviter_user_id=?");
    params.push(userId);
  }
  if (INVITATION_STATUSES.has(normalizedStatus)) {
    where.push("i.status=?");
    params.push(normalizedStatus);
  }

  const rows = await dbAll(
    env,
    `SELECT i.id, i.draft_id, i.status, i.created_at, i.responded_at, i.updated_at,
            i.inviter_user_id, i.invitee_user_id,
            inv.nickname AS inviter_nickname, inv.email AS inviter_email,
            ie.nickname AS invitee_nickname, ie.email AS invitee_email,
            d.owner_user_id, d.song_id, d.status AS draft_status,
            json_extract(d.snapshot_json,'$.title') AS snapshot_title
     FROM draft_invitations i
     JOIN drafts d ON d.id=i.draft_id
     LEFT JOIN users inv ON inv.id=i.inviter_user_id
     LEFT JOIN users ie ON ie.id=i.invitee_user_id
     WHERE ${where.join(" AND ")}
     ORDER BY datetime(i.created_at) DESC, i.id DESC`,
    params
  );
  return rows.map((row) => mapInvitationRow(row));
}

export async function getDraftInvitationForUser(env, { invitationId, userId }) {
  const row = await dbGet(
    env,
    `SELECT i.id, i.draft_id, i.status, i.created_at, i.responded_at, i.updated_at,
            i.inviter_user_id, i.invitee_user_id,
            inv.nickname AS inviter_nickname, inv.email AS inviter_email,
            ie.nickname AS invitee_nickname, ie.email AS invitee_email,
            d.owner_user_id, d.song_id, d.status AS draft_status,
            json_extract(d.snapshot_json,'$.title') AS snapshot_title
     FROM draft_invitations i
     JOIN drafts d ON d.id=i.draft_id
     LEFT JOIN users inv ON inv.id=i.inviter_user_id
     LEFT JOIN users ie ON ie.id=i.invitee_user_id
     WHERE i.id=?
       AND (i.invitee_user_id=? OR i.inviter_user_id=? OR d.owner_user_id=?)`,
    [invitationId, userId, userId, userId]
  );
  return row ? mapInvitationRow(row) : null;
}

export async function acceptDraftInvitation(env, { invitationId, userId }) {
  const invite = await dbGet(
    env,
    `SELECT i.id, i.draft_id, i.status, i.inviter_user_id, i.invitee_user_id, d.owner_user_id
     FROM draft_invitations i
     JOIN drafts d ON d.id=i.draft_id
     WHERE i.id=?`,
    [invitationId]
  );
  if (!invite) throw new Error("Invitation not found");
  if (String(invite.invitee_user_id || "") !== String(userId || "")) throw new Error("Forbidden");
  const status = normalizeInvitationStatus(invite.status, "pending");
  if (status === "declined" || status === "cancelled") throw new Error("Invitation is not active");

  const now = nowIso();
  await dbRun(
    env,
    `INSERT INTO draft_collaborators (draft_id,user_id,can_publish,added_by,created_at)
     VALUES (?,?,?,?,?)
     ON CONFLICT(draft_id,user_id) DO UPDATE SET
       can_publish=excluded.can_publish,
       added_by=excluded.added_by`,
    [invite.draft_id, userId, 1, invite.inviter_user_id || invite.owner_user_id, now]
  );
  await dbRun(
    env,
    `UPDATE draft_invitations
     SET status='accepted', responded_at=?, updated_at=?
     WHERE id=?`,
    [now, now, invitationId]
  );
  await dbRun(env, `UPDATE drafts SET updated_at=? WHERE id=?`, [now, invite.draft_id]);
}

export async function declineDraftInvitation(env, { invitationId, userId }) {
  const invite = await dbGet(env, `SELECT id, draft_id, invitee_user_id, status FROM draft_invitations WHERE id=?`, [invitationId]);
  if (!invite) throw new Error("Invitation not found");
  if (String(invite.invitee_user_id || "") !== String(userId || "")) throw new Error("Forbidden");
  const status = normalizeInvitationStatus(invite.status, "pending");
  if (status !== "pending") return;
  const now = nowIso();
  await dbRun(
    env,
    `UPDATE draft_invitations
     SET status='declined', responded_at=?, updated_at=?
     WHERE id=?`,
    [now, now, invitationId]
  );
  await dbRun(env, `UPDATE drafts SET updated_at=? WHERE id=?`, [now, invite.draft_id]);
}

export async function cancelDraftInvitation(env, { invitationId, ownerUserId }) {
  const invite = await dbGet(
    env,
    `SELECT i.id, i.draft_id, i.status, d.owner_user_id
     FROM draft_invitations i
     JOIN drafts d ON d.id=i.draft_id
     WHERE i.id=?`,
    [invitationId]
  );
  if (!invite) throw new Error("Invitation not found");
  if (String(invite.owner_user_id || "") !== String(ownerUserId || "")) throw new Error("Forbidden");
  const status = normalizeInvitationStatus(invite.status, "pending");
  if (status !== "pending") return;
  const now = nowIso();
  await dbRun(
    env,
    `UPDATE draft_invitations
     SET status='cancelled', responded_at=?, updated_at=?
     WHERE id=?`,
    [now, now, invitationId]
  );
  await dbRun(env, `UPDATE drafts SET updated_at=? WHERE id=?`, [now, invite.draft_id]);
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
    `SELECT id,draft_id,line_id,text,confidence,confidence_segments_json,variant_type,is_active,created_by,created_at,updated_at
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
      confidence_level: confidenceLevelFromValue(item.confidence),
      confidence_segments: normalizeVariantSegments(parseJSON(item.confidence_segments_json, []), item.text || ""),
      variant_type: allowVariantType(item.variant_type),
      is_active: Number(item.is_active || 0) === 1,
      created_by: item.created_by || null,
      created_at: item.created_at,
      updated_at: item.updated_at,
    });
    variantsByLine.set(key, list);
  }

  const normalizedLines = lines.map((line) => {
    const normalizedLine = {
      id: line.id,
      line_key: line.line_key,
      sort_order: Number(line.sort_order || 0),
      active_variant_id: line.active_variant_id || null,
      variants: variantsByLine.get(String(line.id || "")) || [],
      created_at: line.created_at,
      updated_at: line.updated_at,
    };
    applyResolvedLineActiveVariant(normalizedLine);
    return normalizedLine;
  });

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
    lines: normalizedLines,
  };
}

async function persistResolvedLineActiveVariant(env, { draftId, lineId, preferredActiveId = "" }) {
  const line = await dbGet(
    env,
    `SELECT id,active_variant_id
     FROM draft_lines
     WHERE id=? AND draft_id=?`,
    [lineId, draftId]
  );
  if (!line) return null;
  const variants = await dbAll(
    env,
    `SELECT id,text,confidence,confidence_segments_json,variant_type,is_active,created_at,updated_at
     FROM draft_line_variants
     WHERE line_id=? AND draft_id=?
     ORDER BY datetime(created_at) ASC, id ASC`,
    [lineId, draftId]
  );
  if (!Array.isArray(variants) || !variants.length) return null;
  const normalizedLine = {
    active_variant_id: String(preferredActiveId || line.active_variant_id || "").trim() || null,
    variants: variants.map((item) => ({
      id: item.id,
      text: String(item.text || ""),
      confidence: clampConfidence(item.confidence, 100),
      confidence_level: confidenceLevelFromValue(item.confidence),
      confidence_segments: normalizeVariantSegments(parseJSON(item.confidence_segments_json, []), item.text || ""),
      variant_type: allowVariantType(item.variant_type),
      is_active: Number(item.is_active || 0) === 1,
      created_at: item.created_at,
      updated_at: item.updated_at,
    })),
  };
  const active = applyResolvedLineActiveVariant(normalizedLine);
  const activeId = String(active?.id || normalizedLine.active_variant_id || "").trim();
  const now = nowIso();
  await dbRun(env, `UPDATE draft_line_variants SET is_active=0, updated_at=? WHERE line_id=? AND draft_id=?`, [now, lineId, draftId]);
  if (activeId) {
    await dbRun(env, `UPDATE draft_line_variants SET is_active=1, updated_at=? WHERE id=? AND line_id=? AND draft_id=?`, [now, activeId, lineId, draftId]);
  }
  await dbRun(env, `UPDATE draft_lines SET active_variant_id=?, updated_at=? WHERE id=? AND draft_id=?`, [activeId || null, now, lineId, draftId]);
  return activeId || null;
}

async function updateDraftVersion(env, draftId, nextVersion) {
  const now = nowIso();
  const normalizedVersion = Math.max(0, Number(nextVersion || 0));
  await dbRun(
    env,
    `UPDATE drafts
     SET version = CASE WHEN version < ? THEN ? ELSE version END,
         updated_at=?
     WHERE id=?`,
    [normalizedVersion, normalizedVersion, now, draftId]
  );
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

function isDraftOpSeqConflict(cause) {
  const message = String(cause?.message || cause || "");
  return /draft_ops\.draft_id,\s*draft_ops\.seq|idx_draft_ops_seq/i.test(message);
}

async function findDraftOpByClientOpId(env, { draftId, clientOpId }) {
  const normalizedClientOpId = String(clientOpId || "").trim();
  if (!normalizedClientOpId) return null;
  const row = await dbGet(
    env,
    `SELECT seq
     FROM draft_ops
     WHERE draft_id=? AND client_op_id=?
     ORDER BY seq DESC
     LIMIT 1`,
    [draftId, normalizedClientOpId]
  );
  if (!row) return null;
  return { seq: Number(row.seq || 0) };
}

async function allocateDraftOpSeq(env, draftId) {
  const row = await dbGet(env, `SELECT COALESCE(MAX(seq), 0) AS max_seq FROM draft_ops WHERE draft_id=?`, [draftId]);
  return Math.max(1, Number(row?.max_seq || 0) + 1);
}

async function persistDraftOpWithRetry(env, {
  draftId,
  clientOpId,
  baseVersion,
  opType,
  payload,
  status,
  createdBy,
}) {
  const normalizedClientOpId = String(clientOpId || "").trim();
  if (normalizedClientOpId) {
    const existing = await findDraftOpByClientOpId(env, { draftId, clientOpId: normalizedClientOpId });
    if (existing) return existing.seq;
  }

  let lastConflict = null;
  for (let attempt = 0; attempt < 8; attempt += 1) {
    const seq = await allocateDraftOpSeq(env, draftId);
    try {
      await persistDraftOp(env, {
        draftId,
        seq,
        clientOpId: normalizedClientOpId || null,
        baseVersion,
        opType,
        payload,
        status,
        createdBy,
      });
      return seq;
    } catch (cause) {
      if (isDraftOpSeqConflict(cause)) {
        lastConflict = cause;
        continue;
      }
      throw cause;
    }
  }

  throw lastConflict || new Error("Failed to persist draft operation");
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
  const existingOp = await findDraftOpByClientOpId(env, { draftId, clientOpId });
  if (existingOp) {
    return { version: Number(existingOp.seq || 0), client_op_id: clientOpId, conflict: null };
  }

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
    const confidenceSegments = normalizeVariantSegments(payload.confidence_segments, text);
    const variantId = makeId("dv");
    await dbRun(env, `UPDATE draft_line_variants SET is_active=0, updated_at=? WHERE line_id=? AND draft_id=?`, [nowIso(), lineId, draftId]);
    await dbRun(
      env,
      `INSERT INTO draft_line_variants (id,draft_id,line_id,text,confidence,confidence_segments_json,variant_type,is_active,created_by,created_at,updated_at)
       VALUES (?,?,?,?,?,?,?,1,?,?,?)`,
      [
        variantId,
        draftId,
        lineId,
        text,
        confidence,
        JSON.stringify(confidenceSegments),
        allowVariantType(payload.variant_type),
        userId,
        nowIso(),
        nowIso(),
      ]
    );
    await dbRun(env, `UPDATE draft_lines SET active_variant_id=?, updated_at=? WHERE id=?`, [variantId, nowIso(), lineId]);
  } else if (type === "add_variant") {
    const lineId = String(payload.line_id || "").trim();
    if (!lineId) throw new Error("line_id is required");
    const line = await dbGet(env, `SELECT id FROM draft_lines WHERE id=? AND draft_id=?`, [lineId, draftId]);
    if (!line) throw new Error("line not found");
    const text = String(payload.text || "");
    await dbRun(
      env,
      `INSERT INTO draft_line_variants (id,draft_id,line_id,text,confidence,confidence_segments_json,variant_type,is_active,created_by,created_at,updated_at)
       VALUES (?,?,?,?,?,?,?,0,?,?,?)`,
      [
        makeId("dv"),
        draftId,
        lineId,
        text,
        clampConfidence(payload.confidence, 80),
        JSON.stringify(normalizeVariantSegments(payload.confidence_segments, text)),
        allowVariantType(payload.variant_type),
        userId,
        nowIso(),
        nowIso(),
      ]
    );
    await persistResolvedLineActiveVariant(env, { draftId, lineId });
  } else if (type === "set_active_variant") {
    const lineId = String(payload.line_id || "").trim();
    const variantId = String(payload.variant_id || "").trim();
    if (!lineId || !variantId) throw new Error("line_id and variant_id are required");
    const variant = await dbGet(env, `SELECT id FROM draft_line_variants WHERE id=? AND line_id=? AND draft_id=?`, [variantId, lineId, draftId]);
    if (!variant) throw new Error("variant not found");
    await dbRun(env, `UPDATE draft_line_variants SET is_active=0, updated_at=? WHERE line_id=? AND draft_id=?`, [nowIso(), lineId, draftId]);
    await dbRun(env, `UPDATE draft_line_variants SET is_active=1, updated_at=? WHERE id=?`, [nowIso(), variantId]);
    await dbRun(env, `UPDATE draft_lines SET active_variant_id=?, updated_at=? WHERE id=?`, [variantId, nowIso(), lineId]);
  } else if (type === "set_variant_text") {
    const variantId = String(payload.variant_id || "").trim();
    if (!variantId) throw new Error("variant_id is required");
    const variant = await dbGet(env, `SELECT id FROM draft_line_variants WHERE id=? AND draft_id=?`, [variantId, draftId]);
    if (!variant) throw new Error("variant not found");
    await dbRun(
      env,
      `UPDATE draft_line_variants
       SET text=?, confidence_segments_json='[]', updated_at=?
       WHERE id=? AND draft_id=?`,
      [String(payload.text ?? ""), nowIso(), variantId, draftId]
    );
  } else if (type === "set_variant_confidence") {
    const variantId = String(payload.variant_id || "").trim();
    if (!variantId) throw new Error("variant_id is required");
    const variant = await dbGet(env, `SELECT id,line_id FROM draft_line_variants WHERE id=? AND draft_id=?`, [variantId, draftId]);
    if (!variant) throw new Error("variant not found");
    await dbRun(
      env,
      `UPDATE draft_line_variants
       SET confidence=?, updated_at=?
       WHERE id=? AND draft_id=?`,
      [clampConfidence(payload.confidence, 100), nowIso(), variantId, draftId]
    );
    await persistResolvedLineActiveVariant(env, {
      draftId,
      lineId: String(variant.line_id || ""),
    });
  } else if (type === "set_variant_segments") {
    const variantId = String(payload.variant_id || "").trim();
    if (!variantId) throw new Error("variant_id is required");
    const variant = await dbGet(env, `SELECT id, text FROM draft_line_variants WHERE id=? AND draft_id=?`, [variantId, draftId]);
    if (!variant) throw new Error("variant not found");
    await dbRun(
      env,
      `UPDATE draft_line_variants
       SET confidence_segments_json=?, updated_at=?
       WHERE id=? AND draft_id=?`,
      [
        JSON.stringify(normalizeVariantSegments(payload.confidence_segments, variant.text || "")),
        nowIso(),
        variantId,
        draftId,
      ]
    );
  } else if (type === "delete_variant") {
    const lineId = String(payload.line_id || "").trim();
    const variantId = String(payload.variant_id || "").trim();
    if (!lineId || !variantId) throw new Error("line_id and variant_id are required");
    const line = await dbGet(env, `SELECT id,active_variant_id FROM draft_lines WHERE id=? AND draft_id=?`, [lineId, draftId]);
    if (!line) throw new Error("line not found");
    const variants = await dbAll(
      env,
      `SELECT id, confidence, created_at, updated_at
       FROM draft_line_variants
       WHERE line_id=? AND draft_id=?`,
      [lineId, draftId]
    );
    if (!Array.isArray(variants) || variants.length <= 1) throw new Error("at least one variant must remain");
    const exists = variants.some((item) => String(item?.id || "") === variantId);
    if (!exists) throw new Error("variant not found");
    await dbRun(env, `DELETE FROM draft_line_variants WHERE id=? AND line_id=? AND draft_id=?`, [variantId, lineId, draftId]);
    await persistResolvedLineActiveVariant(env, { draftId, lineId });
  } else {
    throw new Error(`Unsupported operation type: ${type}`);
  }

  const nextVersion = await persistDraftOpWithRetry(env, {
    draftId,
    clientOpId,
    baseVersion,
    opType: type,
    payload,
    status: "persisted",
    createdBy: userId,
  });
  await updateDraftVersion(env, draftId, nextVersion);
  await maybePersistSnapshot(env, { draftId, version: nextVersion, userId });
  return { version: nextVersion, client_op_id: clientOpId, conflict: null };
}

export async function autosaveDraftFromEditor(env, { draftId, userId, payload = {} }) {
  const current = await dbGet(env, `SELECT id,version,snapshot_json FROM drafts WHERE id=?`, [draftId]);
  if (!current) throw new Error("Draft not found");
  const metaPatch = await normalizeDraftSnapshot(payload?.meta && typeof payload.meta === "object" ? payload.meta : {});
  const lyrics = String(payload?.lyrics ?? "");
  const incomingLines = splitLyricsLines(lyrics);

  const lines = await dbAll(
    env,
    `SELECT l.id, l.sort_order, l.active_variant_id, coalesce(v.text,'') AS active_text, coalesce(v.confidence,100) AS active_confidence, coalesce(v.confidence_segments_json,'[]') AS active_segments_json
     FROM draft_lines l
     LEFT JOIN draft_line_variants v ON v.id=l.active_variant_id
     WHERE l.draft_id=?
     ORDER BY l.sort_order ASC, datetime(l.created_at) ASC`,
    [draftId]
  );

  const previousSnapshot = parseJSON(current.snapshot_json, {});
  const nextSnapshot = { ...previousSnapshot, ...metaPatch };
  const metaChanged = JSON.stringify(previousSnapshot) !== JSON.stringify(nextSnapshot);
  let changedLines = 0;
  const now = nowIso();
  for (let index = 0; index < lines.length; index += 1) {
    const line = lines[index];
    const nextText = String(incomingLines[index] ?? "");
    const activeText = String(line?.active_text ?? "");
    if (nextText === activeText) continue;
    const lineId = String(line?.id || "").trim();
    if (!lineId) continue;
    const confidence = clampConfidence(line?.active_confidence, 100);
    const variantId = makeId("dv");
    await dbRun(env, `UPDATE draft_line_variants SET is_active=0, updated_at=? WHERE line_id=? AND draft_id=?`, [now, lineId, draftId]);
    await dbRun(
      env,
      `INSERT INTO draft_line_variants (id,draft_id,line_id,text,confidence,confidence_segments_json,variant_type,is_active,created_by,created_at,updated_at)
       VALUES (?,?,?,?,?,?,'manual',1,?,?,?)`,
      [variantId, draftId, lineId, nextText, confidence, "[]", userId, now, now]
    );
    await dbRun(env, `UPDATE draft_lines SET active_variant_id=?, updated_at=? WHERE id=?`, [variantId, now, lineId]);
    changedLines += 1;
  }

  if (incomingLines.length > lines.length) {
    for (let index = lines.length; index < incomingLines.length; index += 1) {
      const lineText = String(incomingLines[index] ?? "");
      const lineId = makeId("dl");
      const variantId = makeId("dv");
      await dbRun(
        env,
        `INSERT INTO draft_lines (id,draft_id,line_key,sort_order,active_variant_id,created_at,updated_at)
         VALUES (?,?,?,?,?,?,?)`,
        [lineId, draftId, `line_${index + 1}`, index, variantId, now, now]
      );
      await dbRun(
        env,
        `INSERT INTO draft_line_variants (id,draft_id,line_id,text,confidence,confidence_segments_json,variant_type,is_active,created_by,created_at,updated_at)
         VALUES (?,?,?,?,?,?,'manual',1,?,?,?)`,
        [variantId, draftId, lineId, lineText, 100, "[]", userId, now, now]
      );
      changedLines += 1;
    }
  }

  if (!metaChanged && changedLines === 0) {
    return { changed: false, version: Number(current.version || 0) };
  }

  if (metaChanged) {
    await dbRun(env, `UPDATE drafts SET snapshot_json=? WHERE id=?`, [JSON.stringify(nextSnapshot), draftId]);
  }

  const clientOpId = String(payload?.client_op_id || "").trim() || makeId("cop");
  const existingOp = await findDraftOpByClientOpId(env, { draftId, clientOpId });
  if (existingOp) {
    return { changed: true, version: Number(existingOp.seq || 0) };
  }

  const nextVersion = await persistDraftOpWithRetry(env, {
    draftId,
    clientOpId,
    baseVersion: Number(current.version || 0),
    opType: "autosave_flush",
    payload: {
      meta_changed: metaChanged,
      changed_lines: changedLines,
    },
    status: "persisted",
    createdBy: userId,
  });
  await updateDraftVersion(env, draftId, nextVersion);
  await maybePersistSnapshot(env, { draftId, version: nextVersion, userId });
  return { changed: true, version: nextVersion };
}

export async function publishDraftToSong(env, { draftId, userId }) {
  const state = await getDraftState(env, draftId);
  if (!state) throw new Error("Draft not found");

  const snapshot = state.draft.snapshot || {};
  const { targetSong } = await ensureDraftPublishAccess(env, {
    userId,
    draftSongId: String(state.draft.song_id || "").trim(),
    snapshot,
  });
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
        confidence_level: confidenceLevelFromValue(item.confidence),
        confidence_segments: normalizeVariantSegments(item.confidence_segments, item.text || ""),
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

  let songId = String(targetSong?.id || state.draft.song_id || "").trim();
  if (songId) {
    await dbRun(
      env,
      `UPDATE songs SET
         title=?, subtitle=?, lang=?, country=?, period=?, region=?, event=?, theme=?, verified=?, year=?,
         source=?, notes=?, verified_translation=?, lyrics=?, lyrics_meta_json=?, status='published', updated_by=?, updated_at=?
       WHERE id=?`,
      [
        snapshot.title || "Untitled draft",
        snapshot.subtitle || null,
        snapshot.lang || "",
        snapshot.country || null,
        snapshot.period || null,
        snapshot.region || null,
        snapshot.event || null,
        snapshot.theme || null,
        verified,
        snapshot.year || null,
        snapshot.source || null,
        snapshot.notes || null,
        snapshot.verified_translation || null,
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
         id,title,subtitle,lang,country,period,region,event,theme,verified,year,source,notes,verified_translation,lyrics,lyrics_meta_json,tags_json,is_admin_content,
         created_by,updated_by,lang_locked,status,created_at,updated_at
       ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?, ?,1,'published',?,?)`,
      [
        songId,
        snapshot.title || "Untitled draft",
        snapshot.subtitle || null,
        snapshot.lang || "",
        snapshot.country || null,
        snapshot.period || null,
        snapshot.region || null,
        snapshot.event || null,
        snapshot.theme || null,
        verified,
        snapshot.year || null,
        snapshot.source || null,
        snapshot.notes || null,
        snapshot.verified_translation || null,
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
  await invalidateCatalogRuntimeCache(env);
  await markDraftPublished(env, { draftId, songId, updatedAt: now });
  return { songId, lyricsMeta };
}

export async function markDraftPublished(env, { draftId, songId = "", userId = "", updatedAt = "" }) {
  const current = await dbGet(env, `SELECT snapshot_json FROM drafts WHERE id=?`, [draftId]);
  if (!current) throw new Error("Draft not found");
  const now = String(updatedAt || "").trim() || nowIso();
  const normalizedSongId = String(songId || "").trim() || null;
  if (normalizedSongId) {
    await ensureDraftPublishAccess(env, {
      userId,
      draftSongId: normalizedSongId,
      snapshot: parseJSON(current.snapshot_json, {}),
    });
  }
  const previousSnapshot = parseJSON(current.snapshot_json, {});
  const nextSnapshot = normalizedSongId
    ? { ...previousSnapshot, song_id: normalizedSongId }
    : previousSnapshot;
  await dbRun(
    env,
    `UPDATE drafts
     SET song_id=?, status='published', snapshot_json=?, updated_at=?
     WHERE id=?`,
    [normalizedSongId, JSON.stringify(nextSnapshot), now, draftId]
  );
  return { songId: normalizedSongId };
}
