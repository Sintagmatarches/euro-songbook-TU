import { json } from "../_lib/utils.js";
import { requireAuth, dbAll, getUserAccess, canViewAdminContent } from "../_lib/db.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";

export async function onRequestGet({ env, request }){
  await ensureSchemaAndSeed(env);
  const u = await requireAuth(env, request);
  if (u instanceof Response) return u;
  const access = await getUserAccess(env, u.sub);
  const allowAdminContent = canViewAdminContent(access);
  const items = await dbAll(env, `
    SELECT s.id, s.title, s.lang, s.country, s.period
    FROM favorites f
    JOIN songs s ON s.id = f.song_id
    WHERE f.user_id=? AND s.status='published' AND (coalesce(s.is_admin_content, 0) = 0 OR ? = 1)
    ORDER BY f.created_at DESC
  `, [u.sub, allowAdminContent ? 1 : 0]);
  return json({ items });
}
