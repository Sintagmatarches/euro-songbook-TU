import { err } from "./utils.js";
import { isSafeJwtSecret } from "./security-config.js";
const PERMISSION_ADMIN_CONTENT_VIEW = "songs.view_admin_content";

function getPermissionAliases(permission){
  if(permission === "songs.create" || permission === "songs.edit") {
    return [permission, "songs.manage"];
  }
  if(permission === "songs.manage") {
    return ["songs.manage", "songs.create", "songs.edit"];
  }
  return [permission];
}

export async function dbGet(env, sql, params=[]){
  const out = await env.DB.prepare(sql).bind(...params).first();
  return out || null;
}
export async function dbAll(env, sql, params=[]){
  const out = await env.DB.prepare(sql).bind(...params).all();
  return out.results || [];
}
export async function dbRun(env, sql, params=[]){
  const out = await env.DB.prepare(sql).bind(...params).run();
  return out;
}

export async function requireAuth(env, req){
  const { verifyJWT, getAuthToken } = await import("./auth.js");
  const token = getAuthToken(req);
  if(!token) return err("Unauthorized", 401);
  const secret = env.JWT_SECRET;
  if (!isSafeJwtSecret(secret)) return err("Server misconfigured (JWT_SECRET)", 500);
  const payload = await verifyJWT(secret, token);
  if(!payload) return err("Unauthorized", 401);
  return payload;
}

export async function getUserAccess(env, userId){
  const user = await dbGet(env, `SELECT id,email,nickname,role,created_at FROM users WHERE id=?`, [userId]);
  if(!user) return null;

  const permsRows = await dbAll(env, `SELECT permission FROM user_permissions WHERE user_id=? ORDER BY permission ASC`, [userId]);
  const scopeRows = await dbAll(env, `SELECT lang FROM user_scope_languages WHERE user_id=? ORDER BY lang ASC`, [userId]);
  const permissions = permsRows.map((r) => r.permission);
  const scopeLanguages = scopeRows.map((r) => String(r.lang || "").trim()).filter(Boolean);
  return { ...user, permissions, scopeLanguages };
}

function isSuperAdminRole(role){
  return role === "super_admin";
}

export function hasAccessPermission(access, permission){
  if(!access) return false;
  if(isSuperAdminRole(access.role)) return true;
  if(access.role !== "admin") return false;
  if(!Array.isArray(access.permissions)) return false;
  const aliases = getPermissionAliases(permission);
  return aliases.some((candidate) => access.permissions.includes(candidate));
}

export function canViewAdminContent(access){
  if(!access) return false;
  if(isSuperAdminRole(access.role)) return true;
  return hasAccessPermission(access, PERMISSION_ADMIN_CONTENT_VIEW);
}

function hasLanguageScope(scopeLanguages, lang){
  if(!lang) return true;
  if(!Array.isArray(scopeLanguages) || scopeLanguages.length === 0) return false;
  return scopeLanguages.includes("*") || scopeLanguages.includes(String(lang));
}

export async function requireAdmin(env, req){
  const payload = await requireAuth(env, req);
  if (payload instanceof Response) return payload;
  const access = await getUserAccess(env, payload.sub);
  if(!access) return err("Unauthorized", 401);
  // Admin panel/API is restricted to super_admin only.
  if(!isSuperAdminRole(access.role)) return err("Forbidden", 403);
  return access;
}

export async function requireSuperAdmin(env, req){
  const payload = await requireAuth(env, req);
  if (payload instanceof Response) return payload;
  const access = await getUserAccess(env, payload.sub);
  if(!access) return err("Unauthorized", 401);
  if(!isSuperAdminRole(access.role)) return err("Forbidden", 403);
  return access;
}

export async function getOptionalUserAccess(env, req){
  try {
    const { verifyJWT, getAuthToken } = await import("./auth.js");
    const token = getAuthToken(req);
    if(!token) return null;
    const secret = env.JWT_SECRET;
    if (!isSafeJwtSecret(secret)) return null;
    const payload = await verifyJWT(secret, token);
    const userId = payload?.sub;
    if(!userId) return null;
    return await getUserAccess(env, userId);
  } catch {
    return null;
  }
}

export async function requirePermission(env, req, permission, options = {}){
  const payload = await requireAuth(env, req);
  if (payload instanceof Response) return payload;
  const access = await getUserAccess(env, payload.sub);
  if(!access) return err("Unauthorized", 401);
  if(!hasAccessPermission(access, permission)) return err(`Forbidden: missing permission ${permission}`, 403);
  return access;
}

export function assertScopeForLang(access, lang){
  if(!lang || isSuperAdminRole(access?.role)) return;
  if(!hasLanguageScope(access?.scopeLanguages, lang)) throw err(`Forbidden: language scope ${lang}`, 403);
}
