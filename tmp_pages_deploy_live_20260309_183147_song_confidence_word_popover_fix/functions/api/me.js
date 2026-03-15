import { json, err } from "../_lib/utils.js";
import { requireAuth, getUserAccess } from "../_lib/db.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";

export async function onRequestGet({ env, request }){
  await ensureSchemaAndSeed(env);
  const payload = await requireAuth(env, request);
  if (payload instanceof Response) return payload;
  const user = await getUserAccess(env, payload.sub);
  if(!user) return err("Unauthorized", 401);
  return json({
    id:user.id,
    email:user.email,
    nickname:user.nickname,
    role:user.role,
    permissions:user.permissions,
    scopeLanguages:user.scopeLanguages,
    created_at:user.created_at
  });
}
