import { json } from "../_lib/utils.js";
import { dbAll, getOptionalUserAccess, canViewAdminContent } from "../_lib/db.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { normalizeSongCountry } from "../../shared/song-catalogs.js";

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const access = await getOptionalUserAccess(env, request);
  const includeAdminContent = canViewAdminContent(access);

  const where = ["status='published'"];
  if (!includeAdminContent) where.push("coalesce(is_admin_content,0)=0");

  const rows = await dbAll(
    env,
    `SELECT lower(trim(coalesce(country, ''))) AS country, COUNT(*) AS count
     FROM songs
     WHERE ${where.join(" AND ")}
     GROUP BY lower(trim(coalesce(country, '')))`
  );

  const countsByCountry = new Map();
  for (const row of rows || []) {
    const country = normalizeSongCountry(String(row?.country || "").trim());
    const count = Number(row?.count || 0);
    if (!country || count <= 0) continue;
    countsByCountry.set(country, (countsByCountry.get(country) || 0) + count);
  }

  const items = Array.from(countsByCountry.entries())
    .map(([country, count]) => ({ country, count }))
    .sort((a, b) => b.count - a.count || a.country.localeCompare(b.country));

  return json({ items });
}
