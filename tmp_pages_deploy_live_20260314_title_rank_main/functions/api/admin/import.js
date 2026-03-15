import { json, err, readJSON, makeId } from "../../_lib/utils.js";
import { requirePermission, assertScopeForLang, dbRun, dbGet, canViewAdminContent } from "../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../_lib/schema.js";
import { normalizeSongCatalogInput } from "../../../shared/song-catalogs.js";
import { syncSongSearchIndex } from "../../_lib/song-search.mjs";

function normStr(v){ v = (v ?? "").toString().trim(); return v || null; }
function normLinkVersion(v){ v = (v ?? "").toString().trim(); return v || null; }
function toAdminContentFlag(v){ return v === true || v === 1 || String(v || "").trim().toLowerCase() === "1" || String(v || "").trim().toLowerCase() === "true"; }
function toIntBool(v){ return v === true || v === 1 || String(v || "").trim().toLowerCase() === "1" || String(v || "").trim().toLowerCase() === "true" ? 1 : 0; }
function isSuperAdminRole(role){ return role === "super_admin"; }
export async function onRequestPost({ env, request }){
  await ensureSchemaAndSeed(env);
  const access = await requirePermission(env, request, "songs.bulk_import");
  if (access instanceof Response) return access;
  const body = await readJSON(request);
  const items = body?.items;
  if(!Array.isArray(items)) return err("items must be array", 400);

  let inserted = 0;
  for(let index = 0; index < items.length; index += 1){
    const it = items[index];
    const catalog = normalizeSongCatalogInput(it || {});
    if(!it?.title || !it?.lyrics) continue;
    if (!catalog.ok) return err(`items[${index}]: ${catalog.error}`, 400);

    assertScopeForLang(access, catalog.value.lang);
    const isAdminContent = toAdminContentFlag(it?.is_admin_content ?? it?.isAdminContent);
    if(isAdminContent && !canViewAdminContent(access)) {
      return err("Forbidden: missing permission songs.view_admin_content", 403);
    }
    const id = it.id ? String(it.id) : makeId("s");
    const tags_json = JSON.stringify(Array.isArray(it.tags) ? it.tags : []);
    const status = it.status === "draft" ? "draft" : "published";
    const exists = await dbGet(env, `SELECT id, lang, lang_locked FROM songs WHERE id=?`, [id]);
    if(exists){
      const currentLangLocked = Number(exists.lang_locked || 0) === 1;
      const nextLangLocked = currentLangLocked || status === "published";
      if(catalog.value.lang !== exists.lang && nextLangLocked && !isSuperAdminRole(access.role)) {
        return err(`items[${index}]: cannot change song language after publication`, 403);
      }
      await dbRun(env, `
        UPDATE songs SET
          title=?, subtitle=?, lang=?, country=?, period=?, region=?, event=?, theme=?, verified=?, year=?,
          source=?, notes=?, verified_translation=?, lyrics=?, lyrics_meta_json=?, tags_json=?, is_admin_content=?, status=?, lang_locked=?, updated_by=?, updated_at=datetime('now')
        WHERE id=?
      `, [
        normStr(it.title),
        normStr(it.subtitle),
        catalog.value.lang,
        catalog.value.country,
        catalog.value.period,
        normStr(it.region),
        normStr(it.event),
        normStr(it.theme),
        toIntBool(it.verified),
        normStr(it.year),
        normStr(it.source),
        normStr(it.notes),
        normStr(it.verified_translation),
        (it.lyrics ?? "").toString(),
        JSON.stringify(it.lyrics_meta_json || it.lyrics_meta || {}),
        tags_json,
        isAdminContent ? 1 : 0,
        status,
        nextLangLocked ? 1 : 0,
        access.id,
        id
      ]);
    }else{
      await dbRun(env, `
        INSERT INTO songs (
          id,title,subtitle,lang,country,period,region,event,theme,verified,year,source,notes,verified_translation,lyrics,lyrics_meta_json,tags_json,is_admin_content,
          created_by,updated_by,lang_locked,status,created_at,updated_at
        )
        VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,datetime('now'),datetime('now'))
      `, [
        id,
        normStr(it.title),
        normStr(it.subtitle),
        catalog.value.lang,
        catalog.value.country,
        catalog.value.period,
        normStr(it.region),
        normStr(it.event),
        normStr(it.theme),
        toIntBool(it.verified),
        normStr(it.year),
        normStr(it.source),
        normStr(it.notes),
        normStr(it.verified_translation),
        (it.lyrics ?? "").toString(),
        JSON.stringify(it.lyrics_meta_json || it.lyrics_meta || {}),
        tags_json,
        isAdminContent ? 1 : 0,
        access.id,
        access.id,
        status === "published" ? 1 : 0,
        status
      ]);
      inserted += 1;
    }

    await syncSongSearchIndex(env, {
      id,
      title: it.title,
      subtitle: it.subtitle,
      lyrics: it.lyrics,
    });

    // links
    if(Array.isArray(it.links)){
      await dbRun(env, `DELETE FROM song_links WHERE song_id=?`, [id]);
      let order = 0;
      for(const l of it.links){
        if(!l?.url) continue;
        await dbRun(env, `INSERT INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES (?,?,?,?,?,?,?)`,
          [makeId("l"), id, normStr(l.title), String(l.url), normStr(l.kind), normLinkVersion(l.version_id ?? l.versionId), order++]
        );
      }
    }

    // versions
    if(Array.isArray(it.versions)){
      await dbRun(env, `DELETE FROM song_versions WHERE song_id=?`, [id]);
      let order = 0;
      for(const v of it.versions){
        if(!v?.lyrics) continue;
        const versionId = normStr(v.id) || makeId("v");
        await dbRun(env, `INSERT INTO song_versions (id,song_id,title,lang,lyrics,lyrics_meta_json,source,sort_order) VALUES (?,?,?,?,?,?,?,?)`,
          [
            versionId,
            id,
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
  }

  return json({ inserted, total: items.length });
}
