import { json } from "../_lib/utils.js";
import { dbAll, getOptionalUserAccess, canViewAdminContent } from "../_lib/db.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { normalizeSongCountry, normalizeSongLanguage } from "../../shared/song-catalogs.js";

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const access = await getOptionalUserAccess(env, request);
  const includeAdminContent = canViewAdminContent(access);

  const where = ["status='published'"];
  if (!includeAdminContent) where.push("coalesce(is_admin_content,0)=0");

  const rows = await dbAll(
    env,
    `SELECT lower(trim(coalesce(lang, ''))) AS lang,
            lower(trim(coalesce(country, ''))) AS country,
            COUNT(*) AS count
       FROM songs
      WHERE ${where.join(" AND ")}
   GROUP BY lower(trim(coalesce(lang, ''))), lower(trim(coalesce(country, '')))`
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

  return json({ items });
}

