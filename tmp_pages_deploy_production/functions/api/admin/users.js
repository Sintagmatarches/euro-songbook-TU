import { json } from "../../_lib/utils.js";
import { requireSuperAdmin, dbAll } from "../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../_lib/schema.js";
import { ADMIN_PERMISSION_VALUES } from "../../../shared/admin-permissions.js";

function groupValues(rows, key) {
  const out = new Map();
  for (const row of rows) {
    const id = row.user_id;
    const value = String(row[key] || "").trim();
    if (!id || !value) continue;
    if (!out.has(id)) out.set(id, []);
    out.get(id).push(value);
  }
  for (const [id, values] of out.entries()) {
    out.set(id, [...new Set(values)].sort());
  }
  return out;
}

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const superAccess = await requireSuperAdmin(env, request);
  if (superAccess instanceof Response) return superAccess;
  const superAdminEmail = String(env.SUPER_ADMIN_EMAIL || "").trim().toLowerCase();

  const users = await dbAll(
    env,
    `SELECT id, email, nickname, role, created_at FROM users ORDER BY created_at DESC, email ASC`,
    []
  );
  const permissions = await dbAll(
    env,
    `SELECT user_id, permission FROM user_permissions ORDER BY user_id ASC, permission ASC`,
    []
  );
  const scopes = await dbAll(
    env,
    `SELECT user_id, lang FROM user_scope_languages ORDER BY user_id ASC, lang ASC`,
    []
  );

  const permsByUser = groupValues(permissions, "permission");
  const scopesByUser = groupValues(scopes, "lang");

  return json({
    items: users.map((u) => ({
      id: u.id,
      email: u.email,
      nickname: u.nickname,
      role: (
        u.role === "super_admin"
        || (superAdminEmail && String(u.email || "").toLowerCase() === superAdminEmail)
      ) ? "super_admin" : u.role,
      created_at: u.created_at,
      permissions: (
        u.role === "super_admin"
        || (superAdminEmail && String(u.email || "").toLowerCase() === superAdminEmail)
      )
        ? [...ADMIN_PERMISSION_VALUES]
        : (permsByUser.get(u.id) || []),
      scopeLanguages: (
        u.role === "super_admin"
        || (superAdminEmail && String(u.email || "").toLowerCase() === superAdminEmail)
      )
        ? ["*"]
        : (scopesByUser.get(u.id) || []),
    })),
  });
}
