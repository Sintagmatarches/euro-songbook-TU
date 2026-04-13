import { json, err } from "../../_lib/utils.js";
import { requireAuth, dbRun, dbGet, getUserAccess, canViewAdminContent } from "../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../_lib/schema.js";

export async function onRequestPost({ env, request, params }){
  await ensureSchemaAndSeed(env);
  const u = await requireAuth(env, request);
  if (u instanceof Response) return u;
  const access = await getUserAccess(env, u.sub);
  const allowAdminContent = canViewAdminContent(access);
  const songId = params.id;
  const song = await dbGet(
    env,
    `SELECT id FROM songs WHERE id=? AND status='published' AND (coalesce(is_admin_content, 0)=0 OR ?=1)`,
    [songId, allowAdminContent ? 1 : 0]
  );
  if(!song) return err("Not found", 404);
  await dbRun(env, `INSERT OR IGNORE INTO favorites (user_id, song_id, created_at) VALUES (?,?,datetime('now'))`, [u.sub, songId]);
  return json({ ok:true });
}

export async function onRequestDelete({ env, request, params }){
  await ensureSchemaAndSeed(env);
  const u = await requireAuth(env, request);
  if (u instanceof Response) return u;
  const songId = params.id;
  await dbRun(env, `DELETE FROM favorites WHERE user_id=? AND song_id=?`, [u.sub, songId]);
  return json({ ok:true });
}
