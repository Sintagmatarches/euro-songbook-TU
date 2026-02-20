import { json, err } from "../../_lib/utils.js";
import { dbGet, dbAll, getOptionalUserAccess, canViewAdminContent } from "../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../_lib/schema.js";

function parseJSON(text, fallback) {
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
  const hasSource = cols.has("source");
  const selectSql = `
    SELECT
      id,
      ${hasTitle ? "title" : "NULL AS title"},
      ${hasLang ? "lang" : "NULL AS lang"},
      ${hasLyrics ? "lyrics" : "'' AS lyrics"},
      ${hasSource ? "source" : "NULL AS source"}
    FROM song_versions
    WHERE song_id=?
    ORDER BY ${hasSort ? "sort_order ASC, " : ""}id ASC
  `;
  return dbAll(env, selectSql, [songId]);
}

export async function onRequestGet({ env, request, params }){
  try {
    await ensureSchemaAndSeed(env);
    const id = params.id;
    const access = await getOptionalUserAccess(env, request);
    const song = await dbGet(env, `SELECT * FROM songs WHERE id=?`, [id]);
    if(!song) return err("Not found", 404);
    if(song.status !== "published") {
      // allow drafts only if authenticated admin (optional). Keep simple: hide.
      // In UI admin edits by ID using admin endpoints.
      return err("Not found", 404);
    }
    if(Number(song.is_admin_content || 0) === 1 && !canViewAdminContent(access)) {
      return err("Not found", 404);
    }
    const isSuperAdmin = access?.role === "super_admin";
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
    const versions = await listSongVersions(env, id);
    const links = await listSongLinks(env, id);
    const tags = parseJSON(song.tags_json, []);
    return json({
      id: song.id,
      title: song.title,
      subtitle: song.subtitle,
      lang: song.lang,
      country: song.country,
      period: song.period,
      year: song.year,
      source: song.source,
      notes: song.notes,
      is_admin_content: Number(song.is_admin_content || 0) === 1,
      status: song.status,
      tags,
      lyrics: song.lyrics,
      versions,
      links,
      created_by: isSuperAdmin ? String(song.created_by || "") : undefined,
      updated_by: isSuperAdmin ? String(song.updated_by || "") : undefined,
      created_by_email: isSuperAdmin ? createdByEmail : undefined,
      updated_by_email: isSuperAdmin ? updatedByEmail : undefined,
    });
  } catch (cause) {
    if (cause instanceof Response) return cause;
    return err(`Song fetch failed: ${cause?.message || "unknown error"}`, 500);
  }
}
