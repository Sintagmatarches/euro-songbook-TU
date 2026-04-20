import { json, err, readJSON } from "../../../_lib/utils.js";
import { requirePermission, dbGet, assertScopeForLang, canViewAdminContent } from "../../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../../_lib/schema.js";
import { normalizeSongCatalogInput } from "../../../../shared/song-catalogs.js";
import { hasMinimumSongLyricWords, shortLyricsErrorMessage } from "../../../../shared/lyrics-validation.js";
import { syncSongSearchIndex, deleteSongSearchIndex } from "../../../_lib/song-search.mjs";
import { sanitizeSongLinks } from "../../../_lib/link-safety.js";
import {
  applySongSnapshot,
  getLatestSongRevision,
  readSongSnapshot,
  recordSongRevision,
} from "../../../_lib/song-audit.js";

function normStr(v){ v = (v ?? "").toString().trim(); return v || null; }
function toAdminContentFlag(v){ return v === true || v === 1 || String(v || "").trim().toLowerCase() === "1" || String(v || "").trim().toLowerCase() === "true"; }
function toIntBool(v){ return v === true || v === 1 || String(v || "").trim().toLowerCase() === "1" || String(v || "").trim().toLowerCase() === "true" ? 1 : 0; }
function isSuperAdminRole(role){ return role === "super_admin"; }

async function userEmailById(env, userId) {
  if (!userId) return "";
  try {
    const row = await dbGet(env, `SELECT email FROM users WHERE id=?`, [userId]);
    return String(row?.email || "");
  } catch {
    return "";
  }
}

export async function onRequestGet({ env, request, params }){
  try {
    await ensureSchemaAndSeed(env);
    const access = await requirePermission(env, request, "songs.edit");
    if (access instanceof Response) return access;

    const id = params.id;
    const currentSnapshot = await readSongSnapshot(env, id);
    const latestRevision = currentSnapshot ? null : await getLatestSongRevision(env, id);
    const snapshot = currentSnapshot || latestRevision?.snapshot || null;
    if (!snapshot) return err("Not found", 404);
    if (Number(snapshot.is_admin_content || 0) === 1 && !canViewAdminContent(access)) return err("Not found", 404);

    const editPerm = await requirePermission(env, request, "songs.edit", { lang: snapshot.lang });
    if (editPerm instanceof Response) return editPerm;
    assertScopeForLang(access, snapshot.lang);

    const isSuperAdmin = isSuperAdminRole(access.role);
    const createdByEmail = isSuperAdmin ? await userEmailById(env, snapshot.created_by) : "";
    const updatedByEmail = isSuperAdmin ? await userEmailById(env, snapshot.updated_by) : "";

    return json({
      id: snapshot.id,
      title: snapshot.title,
      subtitle: snapshot.subtitle,
      lang: snapshot.lang,
      country: snapshot.country,
      period: snapshot.period,
      region: snapshot.region,
      event: snapshot.event,
      theme: snapshot.theme,
      verified: Number(snapshot.verified || 0) === 1,
      year: snapshot.year,
      source: snapshot.source,
      notes: snapshot.notes,
      verified_translation: String(snapshot.verified_translation || ""),
      is_admin_content: Number(snapshot.is_admin_content || 0) === 1,
      status: snapshot.status,
      tags: Array.isArray(snapshot.tags) ? snapshot.tags : [],
      lyrics: snapshot.lyrics,
      lyrics_meta_json: snapshot.lyrics_meta_json || {},
      versions: Array.isArray(snapshot.versions) ? snapshot.versions : [],
      links: Array.isArray(snapshot.links) ? snapshot.links : [],
      created_by: isSuperAdmin ? normStr(snapshot.created_by) : undefined,
      updated_by: isSuperAdmin ? normStr(snapshot.updated_by) : undefined,
      created_by_email: isSuperAdmin ? (normStr(createdByEmail) || undefined) : undefined,
      updated_by_email: isSuperAdmin ? (normStr(updatedByEmail) || undefined) : undefined,
      created_at: snapshot.created_at || undefined,
      updated_at: snapshot.updated_at || undefined,
      lang_locked: Number(snapshot.lang_locked || 0) === 1,
      is_deleted: Number(snapshot.is_deleted || 0) === 1,
      deleted_at: Number(snapshot.is_deleted || 0) === 1 ? (latestRevision?.created_at || undefined) : undefined,
    });
  } catch (cause) {
    if (cause instanceof Response) return cause;
    return err(`Admin song fetch failed: ${cause?.message || "unknown error"}`, 500);
  }
}

export async function onRequestPut({ env, request, params }){
  await ensureSchemaAndSeed(env);
  const access = await requirePermission(env, request, "songs.edit");
  if (access instanceof Response) return access;

  const id = params.id;
  const body = await readJSON(request);
  const hasOwn = (key) => Object.prototype.hasOwnProperty.call(body || {}, key);

  let safeLinks = null;
  if (hasOwn("links")) {
    try {
      safeLinks = sanitizeSongLinks(body?.links, { fieldName: "links" });
    } catch (cause) {
      return err(String(cause?.message || "invalid links"), 400);
    }
  }

  const currentSnapshot = await readSongSnapshot(env, id);
  const latestRevision = currentSnapshot ? null : await getLatestSongRevision(env, id);
  const sourceSnapshot = currentSnapshot || latestRevision?.snapshot || null;
  if (!sourceSnapshot) return err("Not found", 404);
  if (Number(sourceSnapshot.is_admin_content || 0) === 1 && !canViewAdminContent(access)) return err("Not found", 404);

  const normalizedCatalog = normalizeSongCatalogInput({
    lang: hasOwn("lang") ? body.lang : sourceSnapshot.lang,
    country: hasOwn("country") ? body.country : sourceSnapshot.country,
    period: hasOwn("period") ? body.period : sourceSnapshot.period,
  }, { allowEmptyLang: true });
  if (!normalizedCatalog.ok) return err(normalizedCatalog.error, 400);

  const currentLang = String(sourceSnapshot.lang || "");
  const nextLang = normalizedCatalog.value.lang || "";
  const isSuperAdmin = isSuperAdminRole(access.role);
  const currentLangLocked = Number(sourceSnapshot.lang_locked || 0) === 1;
  const nextAdminContent = hasOwn("is_admin_content") || hasOwn("isAdminContent")
    ? toAdminContentFlag(body?.is_admin_content ?? body?.isAdminContent)
    : Number(sourceSnapshot.is_admin_content || 0) === 1;
  const requestedStatus = hasOwn("status")
    ? (body.status === "draft" ? "draft" : "published")
    : sourceSnapshot.status;
  const wasEverPublished = currentLangLocked
    || String(sourceSnapshot.status || "").trim().toLowerCase() === "published";
  const status = wasEverPublished ? "published" : requestedStatus;
  const nextLangLocked = wasEverPublished || status === "published";

  if (nextLang !== currentLang && nextLangLocked && !isSuperAdmin) {
    return err("Forbidden: cannot change song language after publication", 403);
  }

  assertScopeForLang(access, currentLang);
  assertScopeForLang(access, nextLang);

  if (nextAdminContent && !canViewAdminContent(access)) {
    return err("Forbidden: missing permission songs.view_admin_content", 403);
  }

  const editCurrent = await requirePermission(env, request, "songs.edit", { lang: currentLang });
  if (editCurrent instanceof Response) return editCurrent;
  if (nextLang !== currentLang) {
    const editNext = await requirePermission(env, request, "songs.edit", { lang: nextLang });
    if (editNext instanceof Response) return editNext;
  }
  if (hasOwn("links")) {
    const linksPerm = await requirePermission(env, request, "links.manage", { lang: nextLang });
    if (linksPerm instanceof Response) return linksPerm;
  }
  if (hasOwn("versions")) {
    const verPerm = await requirePermission(env, request, "variants.manage", { lang: nextLang });
    if (verPerm instanceof Response) return verPerm;
  }

  const title = hasOwn("title") ? normStr(body.title) : sourceSnapshot.title;
  const subtitle = hasOwn("subtitle") ? normStr(body.subtitle) : sourceSnapshot.subtitle;
  const year = hasOwn("year") ? normStr(body.year) : sourceSnapshot.year;
  const region = hasOwn("region") ? normStr(body.region) : sourceSnapshot.region;
  const event = hasOwn("event") ? normStr(body.event) : sourceSnapshot.event;
  const theme = hasOwn("theme") ? normStr(body.theme) : sourceSnapshot.theme;
  const verified = hasOwn("verified") ? toIntBool(body.verified) : Number(sourceSnapshot.verified || 0);
  const source = hasOwn("source") ? normStr(body.source) : sourceSnapshot.source;
  const notes = hasOwn("notes") ? normStr(body.notes) : sourceSnapshot.notes;
  const verifiedTranslation = hasOwn("verified_translation")
    ? String(body.verified_translation ?? "").trim() || null
    : (sourceSnapshot.verified_translation ?? null);
  const lyrics = hasOwn("lyrics") ? String(body.lyrics ?? "") : sourceSnapshot.lyrics;
  const lyricsMetaJson = hasOwn("lyrics_meta_json") || hasOwn("lyrics_meta")
    ? (body.lyrics_meta_json || body.lyrics_meta || {})
    : (sourceSnapshot.lyrics_meta_json || {});
  const tags = hasOwn("tags")
    ? (Array.isArray(body.tags) ? body.tags : [])
    : (Array.isArray(sourceSnapshot.tags) ? sourceSnapshot.tags : []);
  const versions = hasOwn("versions")
    ? (Array.isArray(body.versions) ? body.versions : [])
    : (Array.isArray(sourceSnapshot.versions) ? sourceSnapshot.versions : []);
  const links = hasOwn("links")
    ? safeLinks
    : (Array.isArray(sourceSnapshot.links) ? sourceSnapshot.links : []);

  if (!title || !String(lyrics || "").trim()) return err("title, lyrics required", 400);
  if (!hasMinimumSongLyricWords(lyrics)) return err(shortLyricsErrorMessage(), 400);

  const nextSnapshot = {
    ...sourceSnapshot,
    id,
    title,
    subtitle,
    lang: normalizedCatalog.value.lang || "",
    country: normalizedCatalog.value.country,
    period: normalizedCatalog.value.period,
    region,
    event,
    theme,
    verified: verified ? 1 : 0,
    year,
    source,
    notes,
    verified_translation: verifiedTranslation,
    lyrics,
    lyrics_meta_json: lyricsMetaJson,
    tags,
    is_admin_content: nextAdminContent ? 1 : 0,
    status,
    lang_locked: nextLangLocked ? 1 : 0,
    updated_by: access.id,
    versions,
    links,
    is_deleted: 0,
  };

  const savedSnapshot = await applySongSnapshot(env, nextSnapshot);
  await syncSongSearchIndex(env, {
    id,
    title,
    subtitle,
    lyrics,
  });
  await recordSongRevision(env, {
    songId: id,
    action: currentSnapshot ? "update" : "restore",
    actorUserId: access.id,
    snapshot: savedSnapshot,
  });

  return json({
    id,
    status,
    lang_locked: nextLangLocked ? 1 : 0,
    is_deleted: false,
  });
}

export async function onRequestDelete({ env, request, params }){
  await ensureSchemaAndSeed(env);
  const id = params.id;
  const currentSnapshot = await readSongSnapshot(env, id);
  if (!currentSnapshot) return err("Not found", 404);

  const access = await requirePermission(env, request, "songs.delete", { lang: currentSnapshot.lang });
  if (access instanceof Response) return access;
  if (Number(currentSnapshot.is_admin_content || 0) === 1 && !canViewAdminContent(access)) return err("Not found", 404);

  assertScopeForLang(access, currentSnapshot.lang);
  const deletedSnapshot = {
    ...currentSnapshot,
    is_deleted: 1,
    updated_by: access.id,
  };
  await applySongSnapshot(env, deletedSnapshot);
  await deleteSongSearchIndex(env, id);
  await recordSongRevision(env, {
    songId: id,
    action: "delete",
    actorUserId: access.id,
    snapshot: deletedSnapshot,
  });
  return json({ ok: true });
}
