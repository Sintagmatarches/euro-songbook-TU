import { json, err } from "../../../../_lib/utils.js";
import { requireSuperAdmin, getUserAccess, dbRun } from "../../../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../../../_lib/schema.js";

export async function onRequestPost({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const actor = await requireSuperAdmin(env, request);
  if (actor instanceof Response) return actor;
  const targetId = params.id;

  const target = await getUserAccess(env, targetId);
  if (!target) return err("User not found", 404);
  if (target.role === "super_admin") return err("Cannot purge super admin account", 400);
  if (target.id === actor.id) return err("Cannot purge current session user", 400);

  // Account cleanup: remove all user-owned data, then remove profile.
  await dbRun(env, `DELETE FROM favorites WHERE user_id=?`, [targetId]);
  await dbRun(env, `DELETE FROM song_requests WHERE user_id=?`, [targetId]);
  await dbRun(env, `DELETE FROM user_permissions WHERE user_id=?`, [targetId]);
  await dbRun(env, `DELETE FROM user_scope_languages WHERE user_id=?`, [targetId]);
  await dbRun(env, `DELETE FROM users WHERE id=?`, [targetId]);

  return json({ ok: true, id: targetId });
}
