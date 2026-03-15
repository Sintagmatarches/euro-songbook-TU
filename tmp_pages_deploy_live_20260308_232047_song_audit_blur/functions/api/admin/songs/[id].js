import { json, err, readJSON, makeId } from "../../../_lib/utils.js";
import { requirePermission, dbRun, dbGet, dbAll, assertScopeForLang, canViewAdminContent } from "../../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../../_lib/schema.js";
import { normalizeSongCatalogInput } from "../../../../shared/song-catalogs.js";

function normStr(v){ v = (v ?? "").toString().trim(); return v || null; }
function normLinkVersion(v){ v = (v ?? "").toString().trim(); return v || null; }
function toAdminContentFlag(v){ return v === true || v === 1 || String(v || "").trim().toLowerCase() === "1" || String(v || "").trim().toLowerCase() === "true"; }
function toIntBool(v){ return v === true || v === 1 || String(v || "").trim().toLowerCase() === "1" || String(v || "").trim().toLowerCase() === "true" ? 1 : 0; }
function isSuperAdminRole(role){ return role === "super_admin"; }
function parseJSON(text, fallback){
  try {
    return text ? JSON.parse(text) : fallback;
  } catch {
    return fallback;
  }
}

async function tableColumns(env, tableName) {
  try {
    const rows = await dbAll(env, `PRAGMA table_info(${tableName})`);
    return new Set((rows || []).map((row) => String(row?.name || "").trim()).filter(Boolean));
  } catch {
    return new Set();
  }
}

async function listSongLinks(env, songId) {
  const cols = await tableColumns(env, "song_links");
  if (!cols.size || !cols.has("id") || !cols.has("song_id") || !cols.has("url")) return [];
  const hasSort = cols.has("sort_order");
  const hasTitle = cols.has("title");
  const hasKind = cols.has("kind");
  const hasVersionId = cols.has("version_id");
  const selectSql = `
    SELECT
      id,
      ${hasTitle ? "title" : "NULL AS title"},
      url,
      ${hasKind ? "kind" : "NULL AS kind"},
      ${hasVersionId ? "version_id" : "NULL AS version_id"}
    FROM song_links
    WHERE song_id=?
    ORDER BY ${hasSort ? "sort_order ASC, " : ""}id ASC
  `;
  return dbAll(env, selectSql, [songId]);
}

async function listSongVersions(env, songId) {
  const cols = await tableColumns(env, "song_versions");
  if (!cols.size || !cols.has("id") || !cols.has("song_id")) return [];
  const hasSort = cols.has("sort_order");
  const hasTitle = cols.has("title");
  const hasLang = cols.has("lang");
  const hasLyrics = cols.has("lyrics");
  const hasLyricsMeta = cols.has("lyrics_meta_json");
  const hasSource = cols.has("source");
  const selectSql = `
    SELECT
      id,
      ${hasTitle ? "title" : "NULL AS title"},
      ${hasLang ? "lang" : "NULL AS lang"},
      ${hasLyrics ? "lyrics" : "'' AS lyrics"},
      ${hasLyricsMeta ? "lyrics_meta_json" : "'{}' AS lyrics_meta_json"},
      ${hasSource ? "source" : "NULL AS source"}
    FROM song_versions
    WHERE song_id=?
    ORDER BY ${hasSort ? "sort_order ASC, " : ""}id ASC
  `;
  const rows = await dbAll(env, selectSql, [songId]);
  return (rows || []).map((row) => ({
    ...row,
    lyrics_meta_json: parseJSON(row?.lyrics_meta_json, {}),
  }));
}

async function upsertFTS(env, songId, title, lyrics){
  await dbRun(env, `INSERT OR REPLACE INTO songs_fts(song_id, title, lyrics) VALUES (?,?,?)`, [songId, title || "", lyrics || ""]);
}

async function replaceLinks(env, songId, links){
  await dbRun(env, `DELETE FROM song_links WHERE song_id=?`, [songId]);
  if(!Array.isArray(links)) return;
  let order = 0;
  for(const l of links){
    if(!l?.url) continue;
    await dbRun(env, `INSERT INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES (?,?,?,?,?,?,?)`,
      [makeId("l"), songId, normStr(l.title), String(l.url), normStr(l.kind), normLinkVersion(l.version_id ?? l.versionId), order++]
    );
  }
}

async function replaceVersions(env, songId, versions){
  await dbRun(env, `DELETE FROM song_versions WHERE song_id=?`, [songId]);
  if(!Array.isArray(versions)) return;
  let order = 0;
  for(const v of versions){
    if(!v?.lyrics) continue;
    const versionId = normStr(v.id) || makeId("v");
    await dbRun(env, `INSERT INTO song_versions (id,song_id,title,lang,lyrics,lyrics_meta_json,source,sort_order) VALUES (?,?,?,?,?,?,?,?)`,
      [
        versionId,
        songId,
        normStr(v.title),
        normStr(v.lang),
        String(v.lyrics),
        JSON.stringify(v.lyrics_meta_json || v.lyrics_meta || {}),
        normStr(v.source),
        order++,
      ]
    );
  }
}

export async function onRequestGet({ env, request, params }){
  try {
    await ensureSchemaAndSeed(env);
    const access = await requirePermission(env, request, "songs.edit");
    if (access instanceof Response) return access;
    const id = params.id;
    const song = await dbGet(env, `SELECT * FROM songs WHERE id=?`, [id]);
    if(!song) return err("Not found", 404);
    if(Number(song.is_admin_content || 0) === 1 && !canViewAdminContent(access)) return err("Not found", 404);
    const editPerm = await requirePermission(env, request, "songs.edit", { lang: song.lang });
    if (editPerm instanceof Response) return editPerm;
    assertScopeForLang(access, song.lang);
    const versions = await listSongVersions(env, id);
    const links = await listSongLinks(env, id);
    const tags = parseJSON(song.tags_json, []);
    const isSuperAdmin = isSuperAdminRole(access.role);
    let createdByEmail = "";
    let updatedByEmail = "";
    if (isSuperAdmin && song.created_by) {
      try {
        const row = await dbGet(env, `SELECT email FROM users WHERE id=?`, [song.created_by]);
        createdByEmail = String(row?.email || "");
      } catch {}
    }
    if (isSuperAdmin && song.updated_by) {
      try {
        const row = await dbGet(env, `SELECT email FROM users WHERE id=?`, [song.updated_by]);
        updatedByEmail = String(row?.email || "");
      } catch {}
    }
    return json({
      id: song.id,
      title: song.title,
      subtitle: song.subtitle,
      lang: song.lang,
      country: song.country,
      period: song.period,
      region: song.region,
      event: song.event,
      theme: song.theme,
      verified: Number(song.verified || 0) === 1,
      year: song.year,
      source: song.source,
      notes: song.notes,
      verified_translation: String(song.verified_translation || ""),
      is_admin_content: Number(song.is_admin_content || 0) === 1,
      status: song.status,
      tags,
      lyrics: song.lyrics,
      lyrics_meta_json: parseJSON(song.lyrics_meta_json, {}),
      versions,
      links,
      created_by: isSuperAdmin ? normStr(song.created_by) : undefined,
      updated_by: isSuperAdmin ? normStr(song.updated_by) : undefined,
      created_by_email: isSuperAdmin ? (normStr(createdByEmail) || undefined) : undefined,
      updated_by_email: isSuperAdmin ? (normStr(updatedByEmail) || undefined) : undefined,
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
  const currentSong = await dbGet(env, `SELECT * FROM songs WHERE id=?`, [id]);
  if(!currentSong) return err("Not found", 404);
  if(Number(currentSong.is_admin_content || 0) === 1 && !canViewAdminContent(access)) return err("Not found", 404);

  const hasOwn = (key) => Object.prototype.hasOwnProperty.call(body || {}, key);
  const normalizedCatalog = normalizeSongCatalogInput({
    lang: hasOwn("lang") ? body.lang : currentSong.lang,
    country: hasOwn("country") ? body.country : currentSong.country,
    period: hasOwn("period") ? body.period : currentSong.period,
  });
  if (!normalizedCatalog.ok) return err(normalizedCatalog.error, 400);

  const nextLang = normalizedCatalog.value.lang;
  const isSuperAdmin = isSuperAdminRole(access.role);
  const currentLangLocked = Number(currentSong.lang_locked || 0) === 1;
  const nextAdminContent = hasOwn("is_admin_content") || hasOwn("isAdminContent")
    ? toAdminContentFlag(body?.is_admin_content ?? body?.isAdminContent)
    : Number(currentSong.is_admin_content || 0) === 1;
  const requestedStatus = hasOwn("status")
    ? (body.status === "draft" ? "draft" : "published")
    : currentSong.status;
  const wasEverPublished = currentLangLocked
    || String(currentSong.status || "").trim().toLowerCase() === "published";
  const status = wasEverPublished ? "published" : requestedStatus;
  const nextLangLocked = wasEverPublished || status === "published";
  if(nextLang !== currentSong.lang && nextLangLocked && !isSuperAdmin) {
    return err("Forbidden: cannot change song language after publication", 403);
  }
  assertScopeForLang(access, currentSong.lang);
  assertScopeForLang(access, nextLang);
  if(nextAdminContent && !canViewAdminContent(access)) {
    return err("Forbidden: missing permission songs.view_admin_content", 403);
  }

  const editCurrent = await requirePermission(env, request, "songs.edit", { lang: currentSong.lang });
  if (editCurrent instanceof Response) return editCurrent;
  if(nextLang !== currentSong.lang) {
    const editNext = await requirePermission(env, request, "songs.edit", { lang: nextLang });
    if (editNext instanceof Response) return editNext;
  }
  if(hasOwn("links")) {
    const linksPerm = await requirePermission(env, request, "links.manage", { lang: nextLang });
    if (linksPerm instanceof Response) return linksPerm;
  }
  if(hasOwn("versions")) {
    const verPerm = await requirePermission(env, request, "variants.manage", { lang: nextLang });
    if (verPerm instanceof Response) return verPerm;
  }

  const title = hasOwn("title") ? normStr(body.title) : currentSong.title;
  const subtitle = hasOwn("subtitle") ? normStr(body.subtitle) : currentSong.subtitle;
  const year = hasOwn("year") ? normStr(body.year) : currentSong.year;
  const region = hasOwn("region") ? normStr(body.region) : currentSong.region;
  const event = hasOwn("event") ? normStr(body.event) : currentSong.event;
  const theme = hasOwn("theme") ? normStr(body.theme) : currentSong.theme;
  const verified = hasOwn("verified") ? toIntBool(body.verified) : Number(currentSong.verified || 0);
  const source = hasOwn("source") ? normStr(body.source) : currentSong.source;
  const notes = hasOwn("notes") ? normStr(body.notes) : currentSong.notes;
  const verifiedTranslation = hasOwn("verified_translation")
    ? String(body.verified_translation ?? "").trim() || null
    : (currentSong.verified_translation ?? null);
  const lyrics = hasOwn("lyrics") ? String(body.lyrics ?? "") : currentSong.lyrics;
  const lyricsMetaJson = hasOwn("lyrics_meta_json") || hasOwn("lyrics_meta")
    ? JSON.stringify(body.lyrics_meta_json || body.lyrics_meta || {})
    : String(currentSong.lyrics_meta_json || "{}");
  const tags_json = hasOwn("tags")
    ? JSON.stringify(Array.isArray(body.tags) ? body.tags : [])
    : currentSong.tags_json;

  if (!title || !lyrics) return err("title, lang, lyrics required", 400);

  await dbRun(env, `
    UPDATE songs SET
      title=?, subtitle=?, lang=?, country=?, period=?, region=?, event=?, theme=?, verified=?, year=?,
      source=?, notes=?, verified_translation=?, lyrics=?, lyrics_meta_json=?, tags_json=?, is_admin_content=?, status=?, lang_locked=?, updated_by=?, updated_at=datetime('now')
    WHERE id=?
  `, [
    title,
    subtitle,
    normalizedCatalog.value.lang,
    normalizedCatalog.value.country,
    normalizedCatalog.value.period,
    region,
    event,
    theme,
    verified ? 1 : 0,
    year,
    source,
    notes,
    verifiedTranslation,
    lyrics,
    lyricsMetaJson,
    tags_json,
    nextAdminContent ? 1 : 0,
    status,
    nextLangLocked ? 1 : 0,
    access.id,
    id
  ]);

  await upsertFTS(env, id, title, lyrics);
  if (hasOwn("links")) await replaceLinks(env, id, body.links);
  if (hasOwn("versions")) await replaceVersions(env, id, body.versions);
  return json({
    id,
    status,
    lang_locked: nextLangLocked ? 1 : 0,
  });
}

export async function onRequestDelete({ env, request, params }){
  await ensureSchemaAndSeed(env);
  const id = params.id;
  const song = await dbGet(env, `SELECT lang, is_admin_content FROM songs WHERE id=?`, [id]);
  if(!song) return err("Not found", 404);
  const access = await requirePermission(env, request, "songs.delete", { lang: song.lang });
  if (access instanceof Response) return access;
  if(Number(song.is_admin_content || 0) === 1 && !canViewAdminContent(access)) return err("Not found", 404);
  assertScopeForLang(access, song.lang);
  await dbRun(env, `DELETE FROM song_versions WHERE song_id=?`, [id]);
  await dbRun(env, `DELETE FROM song_links WHERE song_id=?`, [id]);
  await dbRun(env, `DELETE FROM favorites WHERE song_id=?`, [id]);
  await dbRun(env, `DELETE FROM songs_fts WHERE song_id=?`, [id]);
  await dbRun(env, `DELETE FROM songs WHERE id=?`, [id]);
  return json({ ok:true });
}
