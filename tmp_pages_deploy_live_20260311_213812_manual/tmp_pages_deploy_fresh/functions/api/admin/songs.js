import { json, err, readJSON, makeId } from "../../_lib/utils.js";
import { requirePermission, assertScopeForLang, dbRun, dbGet, dbAll, canViewAdminContent } from "../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../_lib/schema.js";
import { normalizeSongCatalogInput, normalizeSongCountry } from "../../../shared/song-catalogs.js";

function normStr(v){ v = (v ?? "").toString().trim(); return v || null; }
function normLinkVersion(v){ v = (v ?? "").toString().trim(); return v || null; }
function toAdminContentFlag(v){ return v === true || v === 1 || String(v || "").trim().toLowerCase() === "1" || String(v || "").trim().toLowerCase() === "true"; }
function toIntBool(v){ return v === true || v === 1 || String(v || "").trim().toLowerCase() === "1" || String(v || "").trim().toLowerCase() === "true" ? 1 : 0; }
function clamp(n, a, b){ n = parseInt(n||"1",10); if(Number.isNaN(n)) n=1; return Math.max(a, Math.min(b, n)); }
const GERMAN_COLLABORATORS_FILTER_VALUES = ["german_collaborators", "latvian_ss_legion", "estonian_ss_division"];

async function upsertFTS(env, songId, title, lyrics){
  // Keep FTS table in sync
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
  const page = clamp(url.searchParams.get("page"), 1, 9999);
  const per = 20;
  const offset = (page - 1) * per;

  const where = ["1=1"];
  const params = [];
  const scopeLanguages = Array.isArray(access?.scopeLanguages)
    ? access.scopeLanguages.map((v) => String(v || "").trim().toLowerCase()).filter(Boolean)
    : [];
  const hasAllLangScope = access?.role === "super_admin" || scopeLanguages.includes("*");
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
  if (verified === "1") { where.push("coalesce(verified,0)=1"); }
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

  const items = await dbAll(
    env,
    `SELECT id,title,subtitle,lang,country,period,region,event,theme,verified,year,status,is_admin_content,created_at,updated_at,
            CASE WHEN datetime(created_at) >= datetime('now','-30 day') THEN 1 ELSE 0 END AS is_recent
     FROM songs
     WHERE ${where.join(" AND ")}
     ORDER BY datetime(created_at) DESC, title ASC
     LIMIT ? OFFSET ?`,
    [...params, per, offset]
  );

  return json({ items, total, page, pages });
}

export async function onRequestPost({ env, request }){
  await ensureSchemaAndSeed(env);
  const body = await readJSON(request);
  const catalog = normalizeSongCatalogInput(body || {});
  if (!catalog.ok) return err(catalog.error, 400);
  if(!body?.title || !catalog.value.lang || !catalog.value.country || !body?.lyrics) {
    return err("title, lang, country, lyrics required", 400);
  }

  const access = await requirePermission(env, request, "songs.create", { lang: catalog.value.lang });
  if (access instanceof Response) return access;
  const isAdminContent = toAdminContentFlag(body?.is_admin_content ?? body?.isAdminContent);
  if(Array.isArray(body.links) && body.links.length > 0) {
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

  const id = makeId("s");
  const tags_json = JSON.stringify(Array.isArray(body.tags) ? body.tags : []);
  const status = body.status === "draft" ? "draft" : "published";

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

  await upsertFTS(env, id, body.title, body.lyrics);
  await replaceLinks(env, id, body.links);
  await replaceVersions(env, id, body.versions);
  return json({
    id,
    status,
    lang_locked: status === "published" ? 1 : 0,
  });
}
