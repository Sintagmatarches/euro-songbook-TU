import { json, err, readJSON, makeId } from "../_lib/utils.js";
import { requireAuth, getUserAccess, dbRun } from "../_lib/db.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { normalizeSongCatalogInput } from "../../shared/song-catalogs.js";

function normStr(v) {
  const value = (v ?? "").toString().trim();
  return value || null;
}

function normLinkVersion(v) {
  const value = (v ?? "").toString().trim();
  return value || null;
}

function normArray(v) {
  return Array.isArray(v) ? v : [];
}

function hasLangScope(scopeLanguages, lang) {
  if (!lang) return true;
  if (!Array.isArray(scopeLanguages) || scopeLanguages.length === 0) return false;
  return scopeLanguages.includes("*") || scopeLanguages.includes(String(lang));
}

function hasPermission(access, permission) {
  if (!access) return false;
  if (access.role === "super_admin") return true;
  if (access.role !== "admin") return false;
  if (!Array.isArray(access.permissions)) return false;
  if (access.permissions.includes(permission)) return true;
  if ((permission === "songs.create" || permission === "songs.edit") && access.permissions.includes("songs.manage")) return true;
  if (permission === "songs.manage" && (access.permissions.includes("songs.create") || access.permissions.includes("songs.edit"))) return true;
  return false;
}

function canDirectPublish(access, payloadLang, body) {
  if (!access) return false;
  return access.role === "super_admin";
}

function toIntBool(value) {
  return value === true || value === 1 || String(value || "").trim() === "1" ? 1 : 0;
}

async function upsertFTS(env, songId, title, lyrics) {
  await dbRun(env, `INSERT OR REPLACE INTO songs_fts(song_id, title, lyrics) VALUES (?,?,?)`, [songId, title || "", lyrics || ""]);
}

async function replaceLinks(env, songId, links) {
  await dbRun(env, `DELETE FROM song_links WHERE song_id=?`, [songId]);
  if (!Array.isArray(links)) return;
  let order = 0;
  for (const l of links) {
    if (!l?.url) continue;
    await dbRun(
      env,
      `INSERT INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES (?,?,?,?,?,?,?)`,
      [makeId("l"), songId, normStr(l.title), String(l.url), normStr(l.kind), normLinkVersion(l.version_id ?? l.versionId), order++]
    );
  }
}

async function replaceVersions(env, songId, versions) {
  await dbRun(env, `DELETE FROM song_versions WHERE song_id=?`, [songId]);
  if (!Array.isArray(versions)) return;
  let order = 0;
  for (const v of versions) {
    if (!v?.lyrics) continue;
    const versionId = normStr(v.id) || makeId("v");
    await dbRun(
      env,
      `INSERT INTO song_versions (id,song_id,title,lang,lyrics,source,sort_order) VALUES (?,?,?,?,?,?,?)`,
      [versionId, songId, normStr(v.title), normStr(v.lang), String(v.lyrics), normStr(v.source), order++]
    );
  }
}

export async function onRequestPost({ env, request }) {
  await ensureSchemaAndSeed(env);
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;
  const access = await getUserAccess(env, auth.sub);
  if (!access) return err("Unauthorized", 401);
  const body = await readJSON(request);
  const catalog = normalizeSongCatalogInput(body || {});
  if (!catalog.ok) return err(catalog.error, 400);

  if (!body?.title || !catalog.value.lang || !catalog.value.country || !body?.lyrics) {
    return err("title, lang, country, lyrics required", 400);
  }

  const allowPublish = canDirectPublish(access, catalog.value.lang, body);

  if (allowPublish) {
    const id = makeId("s");
    await dbRun(
      env,
      `INSERT INTO songs (
        id,title,subtitle,lang,country,period,region,event,theme,verified,year,source,notes,lyrics,lyrics_meta_json,tags_json,
        created_by,updated_by,lang_locked,status,created_at,updated_at
      ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,datetime('now'),datetime('now'))`,
      [
        id,
        normStr(body.title),
        normStr(body.subtitle),
        catalog.value.lang,
        catalog.value.country,
        catalog.value.period,
        normStr(body.region),
        normStr(body.event),
        normStr(body.theme),
        toIntBool(body.verified),
        normStr(body.year),
        normStr(body.source),
        normStr(body.notes),
        String(body.lyrics ?? ""),
        JSON.stringify(body.lyrics_meta_json || body.lyrics_meta || {}),
        JSON.stringify(normArray(body.tags)),
        access.id,
        access.id,
        1,
        "published",
      ]
    );
    await upsertFTS(env, id, body.title, body.lyrics);
    await replaceLinks(env, id, body.links);
    await replaceVersions(env, id, body.versions);
    return json({ id, status: "published", mode: "published" });
  }

  const requestId = makeId("rq");
  await dbRun(
    env,
    `INSERT INTO song_requests (
      id,user_id,title,subtitle,lang,country,period,region,event,theme,report_fragment,year,source,notes,lyrics,
      tags_json,links_json,versions_json,status,review_comment,reviewed_by,reviewed_at,created_at,updated_at
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'new', NULL, NULL, NULL, datetime('now'), datetime('now'))`,
    [
      requestId,
      auth.sub,
      normStr(body.title),
      normStr(body.subtitle),
      catalog.value.lang,
      catalog.value.country,
      catalog.value.period,
      normStr(body.region),
      normStr(body.event),
      normStr(body.theme),
      toIntBool(body.report_fragment ?? body.reportFragment),
      normStr(body.year),
      normStr(body.source),
      normStr(body.notes),
      String(body.lyrics ?? ""),
      JSON.stringify(normArray(body.tags)),
      JSON.stringify(normArray(body.links)),
      JSON.stringify(normArray(body.versions)),
    ]
  );

  return json({ id: requestId, status: "new", mode: "request" });
}
