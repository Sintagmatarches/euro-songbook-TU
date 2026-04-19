import { json, err, readJSON, makeId } from "../../_lib/utils.js";
import { requirePermission, assertScopeForLang, dbRun, dbGet, dbAll, canViewAdminContent } from "../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../_lib/schema.js";
import { normalizeSongCatalogInput, normalizeSongCountry } from "../../../shared/song-catalogs.js";
import { syncSongSearchIndex } from "../../_lib/song-search.mjs";
import { sanitizeSongLinks } from "../../_lib/link-safety.js";
import { findLikelyDuplicateSong } from "../../_lib/song-similarity.mjs";
import { readSongSnapshot, recordSongRevision, replaceSongLinks, replaceSongVersions } from "../../_lib/song-audit.js";

function normStr(v){ v = (v ?? "").toString().trim(); return v || null; }
function toAdminContentFlag(v){ return v === true || v === 1 || String(v || "").trim().toLowerCase() === "1" || String(v || "").trim().toLowerCase() === "true"; }
function toIntBool(v){ return v === true || v === 1 || String(v || "").trim().toLowerCase() === "1" || String(v || "").trim().toLowerCase() === "true" ? 1 : 0; }
function clamp(n, a, b){ n = parseInt(n||"1",10); if(Number.isNaN(n)) n=1; return Math.max(a, Math.min(b, n)); }
const GERMAN_COLLABORATORS_FILTER_VALUES = ["german_collaborators", "latvian_ss_legion", "estonian_ss_division"];

function deletedSongsBaseWhere({ q = "", recent = "", allowAdminContent = true } = {}) {
  const where = [
    `r.revision_seq = (SELECT MAX(r2.revision_seq) FROM song_revisions r2 WHERE r2.song_id = r.song_id)`,
    `json_extract(r.snapshot_json, '$.is_deleted') = 1`,
    `NOT EXISTS (SELECT 1 FROM songs s WHERE s.id = r.song_id)`,
  ];
  const params = [];
  if (!allowAdminContent) {
    where.push(`COALESCE(json_extract(r.snapshot_json, '$.is_admin_content'), 0) = 0`);
  }
  if (recent === "1") {
    where.push(`datetime(r.created_at) >= datetime('now','-30 day')`);
  }
  if (q) {
    const like = `%${q}%`;
    where.push(`(
      COALESCE(json_extract(r.snapshot_json, '$.title'), '') LIKE ?
      OR COALESCE(json_extract(r.snapshot_json, '$.lyrics'), '') LIKE ?
    )`);
    params.push(like, like);
  }
  return { where, params };
}

async function listDeletedSongs(env, { q = "", recent = "", sort = "newest", page = 1, per = 20, allowAdminContent = true } = {}) {
  const offset = Math.max(0, (Math.max(1, Number(page) || 1) - 1) * per);
  const { where, params } = deletedSongsBaseWhere({ q, recent, allowAdminContent });
  const count = await dbGet(
    env,
    `SELECT COUNT(*) AS c
     FROM song_revisions r
     WHERE ${where.join(" AND ")}`,
    params
  );
  const total = Number(count?.c || 0);
  const pages = Math.max(1, Math.ceil(total / per));
  const orderBy = sort === "oldest"
    ? "datetime(r.created_at) ASC, lower(coalesce(json_extract(r.snapshot_json, '$.title'), '')) ASC"
    : "datetime(r.created_at) DESC, lower(coalesce(json_extract(r.snapshot_json, '$.title'), '')) ASC";
  const rows = await dbAll(
    env,
    `SELECT
       r.song_id AS id,
       COALESCE(json_extract(r.snapshot_json, '$.title'), '') AS title,
       json_extract(r.snapshot_json, '$.subtitle') AS subtitle,
       COALESCE(json_extract(r.snapshot_json, '$.lang'), '') AS lang,
       json_extract(r.snapshot_json, '$.country') AS country,
       json_extract(r.snapshot_json, '$.period') AS period,
       json_extract(r.snapshot_json, '$.region') AS region,
       json_extract(r.snapshot_json, '$.event') AS event,
       json_extract(r.snapshot_json, '$.theme') AS theme,
       COALESCE(json_extract(r.snapshot_json, '$.year'), '') AS year,
       COALESCE(json_extract(r.snapshot_json, '$.is_admin_content'), 0) AS is_admin_content,
       COALESCE(json_extract(r.snapshot_json, '$.created_at'), r.created_at) AS created_at,
       r.created_at AS updated_at,
       substr(trim(COALESCE(json_extract(r.snapshot_json, '$.lyrics'), '')), 1, 280) AS snippet,
       CASE WHEN datetime(r.created_at) >= datetime('now','-30 day') THEN 1 ELSE 0 END AS is_recent,
       'deleted' AS status
     FROM song_revisions r
     WHERE ${where.join(" AND ")}
     ORDER BY ${orderBy}
     LIMIT ? OFFSET ?`,
    [...params, per, offset]
  );
  return { items: rows || [], total, page: Math.max(1, Number(page) || 1), pages };
}

export async function onRequestGet({ env, request }){
  await ensureSchemaAndSeed(env);
  const access = await requirePermission(env, request, "songs.edit");
  if (access instanceof Response) return access;
  const allowAdminContent = canViewAdminContent(access);

  const url = new URL(request.url);
  const q = (url.searchParams.get("q") || "").trim();
  const status = (url.searchParams.get("status") || "").trim();
  const lang = (url.searchParams.get("lang") || "").trim();
  const rawCountry = (url.searchParams.get("country") || "").trim();
  const country = rawCountry ? (normalizeSongCountry(rawCountry) || rawCountry) : "";
  const period = (url.searchParams.get("period") || "").trim();
  const region = (url.searchParams.get("region") || "").trim();
  const event = (url.searchParams.get("event") || "").trim();
  const theme = (url.searchParams.get("theme") || "").trim();
  const verified = (url.searchParams.get("verified") || "").trim();
  const recent = (url.searchParams.get("recent") || "").trim();
  const sort = (() => {
    const value = (url.searchParams.get("sort") || "").trim().toLowerCase();
    if (value === "oldest" || value === "updated") return value;
    return "newest";
  })();
  const page = clamp(url.searchParams.get("page"), 1, 9999);
  const per = 20;
  const offset = (page - 1) * per;

  const where = ["1=1"];
  const params = [];
  const scopeLanguages = Array.isArray(access?.scopeLanguages)
    ? access.scopeLanguages.map((v) => String(v || "").trim().toLowerCase()).filter(Boolean)
    : [];
  const hasAllLangScope = access?.role === "super_admin" || scopeLanguages.includes("*");
  if (status === "deleted") {
    if (!hasAllLangScope) {
      return json({ items: [], total: 0, page, pages: 1 });
    }
    const deletedData = await listDeletedSongs(env, {
      q,
      recent,
      sort,
      page,
      per,
      allowAdminContent,
    });
    return json(deletedData);
  }
  if (!hasAllLangScope) {
    if (!scopeLanguages.length) {
      return json({ items: [], total: 0, page, pages: 1 });
    }
    where.push(`lower(coalesce(lang, '')) IN (${scopeLanguages.map(() => "?").join(", ")})`);
    params.push(...scopeLanguages);
  }
  if(status && ["draft", "published"].includes(status)){ where.push("status=?"); params.push(status); }
  if(lang){ where.push("lang=?"); params.push(lang); }
  if(country){
    if(country === "german_collaborators"){
      where.push(`lower(coalesce(country, '')) IN (${GERMAN_COLLABORATORS_FILTER_VALUES.map(() => "?").join(", ")})`);
      params.push(...GERMAN_COLLABORATORS_FILTER_VALUES);
    } else {
      where.push("lower(coalesce(country, ''))=?");
      params.push(country.toLowerCase());
    }
  }
  if(period){ where.push("period=?"); params.push(period); }
  if (region) { where.push("lower(trim(coalesce(region,''))) LIKE ?"); params.push(`%${region.toLowerCase()}%`); }
  if (event) { where.push("lower(trim(coalesce(event,''))) LIKE ?"); params.push(`%${event.toLowerCase()}%`); }
  if (theme) { where.push("lower(trim(coalesce(theme,''))) LIKE ?"); params.push(`%${theme.toLowerCase()}%`); }
  if (verified === "1") { where.push("coalesce(verified, 0)=1"); }
  if (recent === "1") { where.push("datetime(created_at) >= datetime('now','-30 day')"); }
  if(!allowAdminContent){ where.push("coalesce(is_admin_content,0)=0"); }
  if(q){
    where.push("(title LIKE ? OR lyrics LIKE ?)");
    const like = `%${q}%`;
    params.push(like, like);
  }

  const count = await dbGet(env, `SELECT COUNT(*) AS c FROM songs WHERE ${where.join(" AND ")}`, params);
  const total = count?.c || 0;
  const pages = Math.max(1, Math.ceil(total / per));
  const orderBy = sort === "oldest"
    ? "datetime(created_at) ASC, title ASC"
    : sort === "updated"
      ? "datetime(updated_at) DESC, datetime(created_at) DESC, title ASC"
      : "datetime(created_at) DESC, title ASC";

  const items = await dbAll(
    env,
    `SELECT id,title,subtitle,lang,country,period,region,event,theme,coalesce(verified, 0) AS verified,year,status,is_admin_content,created_at,updated_at,
            substr(trim(coalesce(lyrics,'')), 1, 280) AS snippet,
            CASE WHEN datetime(created_at) >= datetime('now','-30 day') THEN 1 ELSE 0 END AS is_recent
     FROM songs
     WHERE ${where.join(" AND ")}
     ORDER BY ${orderBy}
     LIMIT ? OFFSET ?`,
    [...params, per, offset]
  );

  return json({ items, total, page, pages });
}

export async function onRequestPost({ env, request }){
  await ensureSchemaAndSeed(env);
  const body = await readJSON(request);
  let safeLinks = [];
  try {
    safeLinks = sanitizeSongLinks(body?.links, { fieldName: "links" });
  } catch (cause) {
    return err(String(cause?.message || "invalid links"), 400);
  }
  const catalog = normalizeSongCatalogInput(body || {}, { allowEmptyLang: true });
  if (!catalog.ok) return err(catalog.error, 400);
  if(!body?.title || !String(body?.lyrics ?? "").trim()) {
    return err("title, lyrics required", 400);
  }

  const access = await requirePermission(env, request, "songs.create", { lang: catalog.value.lang });
  if (access instanceof Response) return access;
  const isAdminContent = toAdminContentFlag(body?.is_admin_content ?? body?.isAdminContent);
  if(safeLinks.length > 0) {
    const linkPerm = await requirePermission(env, request, "links.manage", { lang: catalog.value.lang });
    if (linkPerm instanceof Response) return linkPerm;
  }
  if(Array.isArray(body.versions) && body.versions.length > 0) {
    const verPerm = await requirePermission(env, request, "variants.manage", { lang: catalog.value.lang });
    if (verPerm instanceof Response) return verPerm;
  }
  if(isAdminContent && !canViewAdminContent(access)) {
    return err("Forbidden: missing permission songs.view_admin_content", 403);
  }

  assertScopeForLang(access, catalog.value.lang);
  const status = body.status === "draft" ? "draft" : "published";

  const duplicate = status === "published"
    ? await findLikelyDuplicateSong(env, {
        title: body.title,
        lang: catalog.value.lang || "",
        lyrics: body.lyrics,
      })
    : null;
  if (duplicate?.song?.id) {
    return err(`likely duplicate song exists: ${duplicate.song.id}`, 409);
  }

  const id = makeId("s");
  const tags_json = JSON.stringify(Array.isArray(body.tags) ? body.tags : []);

  await dbRun(env, `
    INSERT INTO songs (
      id,title,subtitle,lang,country,period,region,event,theme,verified,year,source,notes,verified_translation,lyrics,lyrics_meta_json,tags_json,is_admin_content,
      created_by,updated_by,lang_locked,status,created_at,updated_at
    )
    VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,datetime('now'),datetime('now'))
  `, [
    id,
    normStr(body.title),
    normStr(body.subtitle),
    catalog.value.lang || "",
    catalog.value.country,
    catalog.value.period,
    normStr(body.region),
    normStr(body.event),
    normStr(body.theme),
    toIntBool(body.verified),
    normStr(body.year),
    normStr(body.source),
    normStr(body.notes),
    normStr(body.verified_translation),
    (body.lyrics ?? "").toString(),
    JSON.stringify(body.lyrics_meta_json || body.lyrics_meta || {}),
    tags_json,
    isAdminContent ? 1 : 0,
    access.id,
    access.id,
    status === "published" ? 1 : 0,
    status
  ]);

  await syncSongSearchIndex(env, {
    id,
    title: body.title,
    subtitle: body.subtitle,
    lyrics: body.lyrics,
  });
  await replaceSongLinks(env, id, safeLinks);
  await replaceSongVersions(env, id, body.versions);
  const savedSnapshot = await readSongSnapshot(env, id);
  if (savedSnapshot) {
    await recordSongRevision(env, {
      songId: id,
      action: "create",
      actorUserId: access.id,
      snapshot: savedSnapshot,
    });
  }
  return json({
    id,
    status,
    lang_locked: status === "published" ? 1 : 0,
  });
}
