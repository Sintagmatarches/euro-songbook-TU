import { json, err, readJSON, makeId } from "../../../../_lib/utils.js";
import { requirePermission, dbGet, dbRun, assertScopeForLang, hasAccessPermission } from "../../../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../../../_lib/schema.js";
import { normalizeSongCatalogInput } from "../../../../../shared/song-catalogs.js";

function parseJSON(text, fallback) {
  try {
    return text ? JSON.parse(text) : fallback;
  } catch {
    return fallback;
  }
}

function normStr(v) {
  const value = (v ?? "").toString().trim();
  return value || null;
}

function normLinkVersion(v) {
  const value = (v ?? "").toString().trim();
  return value || null;
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
      `INSERT INTO song_versions (id,song_id,title,lang,lyrics,lyrics_meta_json,source,sort_order) VALUES (?,?,?,?,?,?,?,?)`,
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

export async function onRequestPost({ env, request, params }) {
  try {
    await ensureSchemaAndSeed(env);
    const access = await requirePermission(env, request, "proposals.review");
    if (access instanceof Response) return access;
    if (!hasAccessPermission(access, "proposals.approve")) {
      return err("Forbidden: missing permission proposals.approve", 403);
    }
    const id = params.id;
    const body = await readJSON(request);

    const item = await dbGet(env, `SELECT * FROM song_requests WHERE id=?`, [id]);
    if (!item) return err("Not found", 404);
    if (item.status !== "new") return err("Already reviewed", 400);

    const normalizedCatalog = normalizeSongCatalogInput({
      lang: item.lang,
      country: item.country,
      period: item.period,
    });
    if (!normalizedCatalog.ok) return err(`Cannot approve request: ${normalizedCatalog.error}`, 400);
    const normalizedLang = normalizedCatalog.value.lang;
    const normalizedCountry = normalizedCatalog.value.country;
    const normalizedPeriod = normalizedCatalog.value.period;

    assertScopeForLang(access, normalizedLang);
    const createPerm = await requirePermission(env, request, "songs.create", { lang: normalizedLang });
    if (createPerm instanceof Response) return createPerm;

    const links = parseJSON(item.links_json, []);
    const versions = parseJSON(item.versions_json, []);
    const tags = parseJSON(item.tags_json, []);
    const lyricsMeta = parseJSON(item.lyrics_meta_json, {});
    if (Array.isArray(links) && links.length > 0) {
      const linksPerm = await requirePermission(env, request, "links.manage", { lang: normalizedLang });
      if (linksPerm instanceof Response) return linksPerm;
    }
    if (Array.isArray(versions) && versions.length > 0) {
      const verPerm = await requirePermission(env, request, "variants.manage", { lang: normalizedLang });
      if (verPerm instanceof Response) return verPerm;
    }

    const songId = makeId("s");

    await dbRun(
      env,
      `INSERT INTO songs (
        id,title,subtitle,lang,country,period,region,event,theme,verified,year,source,notes,verified_translation,lyrics,lyrics_meta_json,tags_json,
        created_by,updated_by,lang_locked,status,created_at,updated_at
      ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,1,'published',datetime('now'),datetime('now'))`,
      [
        songId,
        normStr(item.title),
        normStr(item.subtitle),
        normalizedLang,
        normStr(normalizedCountry),
        normStr(normalizedPeriod),
        normStr(item.region),
        normStr(item.event),
        normStr(item.theme),
        0,
        normStr(item.year),
        normStr(item.source),
        normStr(item.notes),
        null,
        String(item.lyrics ?? ""),
        JSON.stringify(lyricsMeta || {}),
        JSON.stringify(Array.isArray(tags) ? tags : []),
        access.id,
        access.id,
      ]
    );

    await dbRun(
      env,
      `INSERT OR REPLACE INTO songs_fts(song_id, title, lyrics) VALUES (?,?,?)`,
      [songId, item.title || "", item.lyrics || ""]
    );

    // Keep versions before links so version_id references can be resolved.
    await replaceVersions(env, songId, versions);
    await replaceLinks(env, songId, links);

    await dbRun(
      env,
      `UPDATE song_requests
       SET status='approved', review_comment=?, reviewed_by=?, reviewed_at=datetime('now'), updated_at=datetime('now')
       WHERE id=?`,
      [normStr(body?.comment), access.id, id]
    );

    return json({ ok: true, requestId: id, songId });
  } catch (cause) {
    if (cause instanceof Response) return cause;
    return err(`Approve failed: ${cause?.message || "unknown error"}`, 500);
  }
}
