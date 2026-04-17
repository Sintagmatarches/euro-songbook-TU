import { json } from "../_lib/utils.js";
import { dbAll, getOptionalUserAccess, canViewAdminContent } from "../_lib/db.js";
import { SONG_DUPLICATE_KEY_SQL } from "../_lib/song-dedupe.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { normalizeSongCountry } from "../../shared/song-catalogs.js";

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const access = await getOptionalUserAccess(env, request);
  const includeAdminContent = canViewAdminContent(access);

  const where = ["s.status='published'"];
  if (!includeAdminContent) where.push("coalesce(is_admin_content,0)=0");

  const rows = await dbAll(
    env,
    `WITH ranked AS (
       SELECT
         lower(trim(coalesce(s.country, ''))) AS country,
         ROW_NUMBER() OVER (
           PARTITION BY ${SONG_DUPLICATE_KEY_SQL}
           ORDER BY datetime(s.created_at) DESC, s.id ASC
         ) AS duplicate_rank
       FROM songs s
       WHERE ${where.join(" AND ")}
     )
     SELECT country, COUNT(*) AS count
     FROM ranked
     WHERE duplicate_rank = 1
     GROUP BY country`
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
