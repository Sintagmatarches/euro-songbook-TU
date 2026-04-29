import { json } from "../_lib/utils.js";
import { dbAll, getOptionalUserAccess, canViewAdminContent } from "../_lib/db.js";
import { SONG_DUPLICATE_KEY_SQL } from "../_lib/song-dedupe.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { readRuntimeJsonCache, writeRuntimeJsonCache } from "../_lib/runtime-cache.js";
import { normalizeSongCountry, normalizeSongLanguage } from "../../shared/song-catalogs.js";

const CACHE_MAX_AGE_MS = 30 * 60 * 1000;
const PUBLIC_CACHE_HEADERS = {
  "Cache-Control": "public, max-age=300, s-maxage=1800, stale-while-revalidate=86400",
};

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const access = await getOptionalUserAccess(env, request);
  const includeAdminContent = canViewAdminContent(access);
  const cacheKey = `counts:lang-country:${includeAdminContent ? "admin" : "public"}`;
  const cached = await readRuntimeJsonCache(env, cacheKey, { maxAgeMs: CACHE_MAX_AGE_MS });
  if (cached) return json(cached, 200, PUBLIC_CACHE_HEADERS);

  const where = ["s.status='published'"];
  if (!includeAdminContent) where.push("coalesce(is_admin_content,0)=0");

  const rows = await dbAll(
    env,
    `WITH ranked AS (
       SELECT
         lower(trim(coalesce(s.lang, ''))) AS lang,
         lower(trim(coalesce(s.country, ''))) AS country,
         ROW_NUMBER() OVER (
           PARTITION BY ${SONG_DUPLICATE_KEY_SQL}
           ORDER BY datetime(s.created_at) DESC, s.id ASC
         ) AS duplicate_rank
       FROM songs s
      WHERE ${where.join(" AND ")}
     )
     SELECT lang, country, COUNT(*) AS count
       FROM ranked
      WHERE duplicate_rank = 1
   GROUP BY lang, country`
  );

  const byLangCountry = new Map();
  for (const row of rows || []) {
    const lang = normalizeSongLanguage(String(row?.lang || "").trim());
    const country = normalizeSongCountry(String(row?.country || "").trim());
    const count = Number(row?.count || 0);
    if (!lang || count <= 0) continue;
    const key = `${lang}::${country || ""}`;
    const prev = byLangCountry.get(key);
    byLangCountry.set(key, {
      lang,
      country: country || "",
      count: (prev?.count || 0) + count,
    });
  }

  const items = Array.from(byLangCountry.values()).sort((a, b) => {
    const byLang = a.lang.localeCompare(b.lang);
    if (byLang !== 0) return byLang;
    return b.count - a.count || a.country.localeCompare(b.country);
  });

  const payload = { items };
  await writeRuntimeJsonCache(env, cacheKey, payload);
  return json(payload, 200, PUBLIC_CACHE_HEADERS);
}
