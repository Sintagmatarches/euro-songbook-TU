import { json } from "../_lib/utils.js";
import { dbAll, getOptionalUserAccess, canViewAdminContent } from "../_lib/db.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { normalizeSongCountry, normalizeSongLanguage, normalizeSongPeriod } from "../../shared/song-catalogs.js";

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const access = await getOptionalUserAccess(env, request);
  const includeAdminContent = canViewAdminContent(access);

  const where = ["status='published'", "trim(coalesce(period, '')) <> ''"];
  if (!includeAdminContent) where.push("coalesce(is_admin_content,0)=0");

  const rows = await dbAll(
    env,
    `SELECT lower(trim(coalesce(lang, ''))) AS lang,
            lower(trim(coalesce(country, ''))) AS country,
            lower(trim(coalesce(period, ''))) AS period,
            COUNT(*) AS count
       FROM songs
      WHERE ${where.join(" AND ")}
   GROUP BY lower(trim(coalesce(lang, ''))),
            lower(trim(coalesce(country, ''))),
            lower(trim(coalesce(period, '')))`
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

