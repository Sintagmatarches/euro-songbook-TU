import { json, err } from "../_lib/utils.js";
import { requireAuth, getUserAccess } from "../_lib/db.js";
import { ensureSchemaAndSeed, ensureAuthSchema } from "../_lib/schema.js";

export async function onRequestGet({ env, request }){
  try {
    await ensureSchemaAndSeed(env);
  } catch (schemaError) {
    console.error("[api/me] full schema failed; fallback to auth schema:", schemaError);
    await ensureAuthSchema(env);
  }
  const payload = await requireAuth(env, request);
  if (payload instanceof Response) return payload;
  const user = await getUserAccess(env, payload.sub);
  if(!user) return err("Unauthorized", 401);
  return json({
    id:user.id,
    email:user.email,
    nickname:user.nickname,
    nickname_updated_at:user.nickname_updated_at || null,
    role:user.role,
    permissions:user.permissions,
    scopeLanguages:user.scopeLanguages,
    created_at:user.created_at
  });
}
