import { json } from "../../_lib/utils.js";
import { requirePermission, dbGet, dbAll } from "../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../_lib/schema.js";

function clamp(n, min, max) {
  let v = Number.parseInt(n || "1", 10);
  if (Number.isNaN(v)) v = 1;
  return Math.max(min, Math.min(max, v));
}

function parseJSON(text, fallback) {
  try {
    return text ? JSON.parse(text) : fallback;
  } catch {
    return fallback;
  }
}

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const access = await requirePermission(env, request, "proposals.review");
  if (access instanceof Response) return access;

  const url = new URL(request.url);
  const status = (url.searchParams.get("status") || "").trim();
  const lang = (url.searchParams.get("lang") || "").trim();
  const q = (url.searchParams.get("q") || "").trim();
  const page = clamp(url.searchParams.get("page"), 1, 9999);
  const per = 20;
  const offset = (page - 1) * per;

  const where = [];
  const params = [];
  const scopeLanguages = Array.isArray(access?.scopeLanguages)
    ? access.scopeLanguages.map((v) => String(v || "").trim().toLowerCase()).filter(Boolean)
    : [];
  const hasAllLangScope = access?.role === "super_admin" || scopeLanguages.includes("*");
  if (!hasAllLangScope) {
    if (!scopeLanguages.length) {
      return json({ items: [], total: 0, page, pages: 1 });
    }
    where.push(`lower(coalesce(r.lang, '')) IN (${scopeLanguages.map(() => "?").join(", ")})`);
    params.push(...scopeLanguages);
  }
  if (status && ["new", "approved", "rejected"].includes(status)) {
    where.push("r.status=?");
    params.push(status);
  }
  if (lang) {
    where.push("r.lang=?");
    params.push(lang);
  }
  if (q) {
    where.push("(r.title LIKE ? OR r.lyrics LIKE ? OR u.email LIKE ?)");
    const like = `%${q}%`;
    params.push(like, like, like);
  }

  const whereSql = where.length ? `WHERE ${where.join(" AND ")}` : "";
  const countRow = await dbGet(
    env,
    `SELECT COUNT(*) AS c
     FROM song_requests r
     JOIN users u ON u.id=r.user_id
     ${whereSql}`,
    params
  );
  const total = countRow?.c || 0;
  const pages = Math.max(1, Math.ceil(total / per));

  const items = await dbAll(
    env,
      `SELECT
      r.id, r.user_id, r.request_kind, r.target_song_id, r.title, r.subtitle, r.lang, r.country, r.period, r.region, r.event, r.theme, r.report_fragment,
      r.year, r.source, r.notes, r.lyrics, r.lyrics_meta_json,
      r.tags_json, r.links_json, r.versions_json, r.status, r.review_comment, r.reviewed_by, r.reviewed_at,
      r.created_at, r.updated_at,
      u.email AS user_email,
      target_song.title AS target_song_title,
      reviewer.email AS reviewed_by_email
     FROM song_requests r
     JOIN users u ON u.id=r.user_id
     LEFT JOIN songs target_song ON target_song.id=r.target_song_id
     LEFT JOIN users reviewer ON reviewer.id=r.reviewed_by
     ${whereSql}
     ORDER BY
      CASE r.status WHEN 'new' THEN 0 WHEN 'approved' THEN 1 ELSE 2 END,
      r.created_at DESC
     LIMIT ? OFFSET ?`,
    [...params, per, offset]
  );

  return json({
    items: items.map((it) => ({
      ...it,
      lyrics_meta_json: parseJSON(it.lyrics_meta_json, {}),
      tags: parseJSON(it.tags_json, []),
      links: parseJSON(it.links_json, []),
      versions: parseJSON(it.versions_json, []),
    })),
    total,
    page,
    pages,
  });
}
