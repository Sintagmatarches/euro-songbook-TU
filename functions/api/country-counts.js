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

  const items = (rows || [])
    .map((row) => {
      const country = normalizeSongCountry(String(row?.country || "").trim());
      const count = Number(row?.count || 0);
      if (!country || count <= 0) return null;
      return { country, count };
    })
    .filter(Boolean);

  return json({ items });
}

