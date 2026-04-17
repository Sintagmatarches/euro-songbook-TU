import { json } from "../_lib/utils.js";
import { dbAll, getOptionalUserAccess, canViewAdminContent } from "../_lib/db.js";
import { SONG_DUPLICATE_KEY_SQL } from "../_lib/song-dedupe.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { normalizeSongCountry, normalizeSongLanguage, normalizeSongPeriod } from "../../shared/song-catalogs.js";

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const access = await getOptionalUserAccess(env, request);
  const includeAdminContent = canViewAdminContent(access);

  const where = ["s.status='published'", "trim(coalesce(s.period, '')) <> ''"];
  if (!includeAdminContent) where.push("coalesce(is_admin_content,0)=0");

  const rows = await dbAll(
    env,
    `WITH ranked AS (
       SELECT
         lower(trim(coalesce(s.lang, ''))) AS lang,
         lower(trim(coalesce(s.country, ''))) AS country,
         lower(trim(coalesce(s.period, ''))) AS period,
         ROW_NUMBER() OVER (
           PARTITION BY ${SONG_DUPLICATE_KEY_SQL}
           ORDER BY datetime(s.created_at) DESC, s.id ASC
         ) AS duplicate_rank
       FROM songs s
      WHERE ${where.join(" AND ")}
     )
     SELECT lang, country, period, COUNT(*) AS count
       FROM ranked
      WHERE duplicate_rank = 1
   GROUP BY lang, country, period`
  );

  const grouped = new Map();
  for (const row of rows || []) {
    const lang = normalizeSongLanguage(String(row?.lang || "").trim());
    const country = normalizeSongCountry(String(row?.country || "").trim());
    const period = normalizeSongPeriod(String(row?.period || "").trim());
    const count = Number(row?.count || 0);
    if (!lang || !country || !period || count <= 0) continue;
    const key = `${lang}::${country}::${period}`;
    const prev = grouped.get(key);
    grouped.set(key, {
      lang,
      country,
      period,
      count: (prev?.count || 0) + count,
    });
  }

  const items = Array.from(grouped.values()).sort((a, b) => {
    const byLang = a.lang.localeCompare(b.lang);
    if (byLang !== 0) return byLang;
    const byCountry = a.country.localeCompare(b.country);
    if (byCountry !== 0) return byCountry;
    return b.count - a.count || a.period.localeCompare(b.period);
  });

  return json({ items });
}
