import { json, err, readJSON } from "../../../../_lib/utils.js";
import { requireSuperAdmin, dbGet, dbRun } from "../../../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../../../_lib/schema.js";
import {
  getInvalidAdminPermissions,
  normalizeAdminPermissions,
  getInvalidAdminScopeLanguages,
  normalizeAdminScopeLanguages,
} from "../../../../../shared/admin-permissions.js";

const ALLOWED_ROLES = new Set(["user", "admin"]);

export async function onRequestPut({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const superAccess = await requireSuperAdmin(env, request);
  if (superAccess instanceof Response) return superAccess;
  const targetId = params.id;
  const body = await readJSON(request);

  const role = String(body?.role || "").trim();
  if (!ALLOWED_ROLES.has(role)) {
    return err("role must be one of: user, admin", 400);
  }

  const target = await dbGet(env, `SELECT id, email, role FROM users WHERE id=?`, [targetId]);
  if (!target) return err("User not found", 404);

  const rawPermissions = Array.isArray(body?.permissions) ? body.permissions : [];
  const invalidPermissions = getInvalidAdminPermissions(rawPermissions);
  if (invalidPermissions.length) {
    return err(`Unknown permissions: ${invalidPermissions.join(", ")}`, 400);
  }

  const rawScopeLanguages = Array.isArray(body?.scopeLanguages) ? body.scopeLanguages : [];
  const invalidScopeLanguages = getInvalidAdminScopeLanguages(rawScopeLanguages);
  if (invalidScopeLanguages.length) {
    return err(`Invalid scope languages: ${invalidScopeLanguages.join(", ")}`, 400);
  }

  let permissions = normalizeAdminPermissions(rawPermissions);
  let scopeLanguages = normalizeAdminScopeLanguages(rawScopeLanguages);

  if (role !== "admin") {
    permissions = [];
    scopeLanguages = [];
  }
  if (role === "admin" && scopeLanguages.length === 0) {
    return err("scopeLanguages must include at least one language or '*'", 400);
  }

  await dbRun(env, `UPDATE users SET role=? WHERE id=?`, [role, targetId]);
  await dbRun(env, `DELETE FROM user_permissions WHERE user_id=?`, [targetId]);
  await dbRun(env, `DELETE FROM user_scope_languages WHERE user_id=?`, [targetId]);

  for (const permission of permissions) {
    await dbRun(
      env,
      `INSERT OR IGNORE INTO user_permissions (user_id, permission, created_at) VALUES (?, ?, datetime('now'))`,
      [targetId, permission]
    );
  }
  for (const lang of scopeLanguages) {
    await dbRun(
      env,
      `INSERT OR IGNORE INTO user_scope_languages (user_id, lang, created_at) VALUES (?, ?, datetime('now'))`,
      [targetId, lang]
    );
  }

  return json({
    ok: true,
    user: {
      id: targetId,
      role,
      permissions,
      scopeLanguages,
    },
  });
}
