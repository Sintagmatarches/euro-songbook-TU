import { json, err, readJSON, makeId } from "../_lib/utils.js";
import { dbGet, dbRun } from "../_lib/db.js";
import { hashPassword } from "../_lib/password.js";
import { signJWT } from "../_lib/auth.js";
import { ensureSchemaAndSeed, ensureAuthSchema } from "../_lib/schema.js";
import { getUsersTableProfile, buildUserInsertStatement } from "../_lib/user-password-store.js";
import { isSafeJwtSecret, isSafeSetupToken } from "../_lib/security-config.js";

export async function onRequestPost({ env, request }) {
  try {
    const setupEnabled = String(env.ENABLE_SETUP || "").trim() === "1";
    if (!setupEnabled) return err("Setup endpoint disabled", 404);

    const body = await readJSON(request);
    if (!body?.token || !body?.email || !body?.password) return err("token,email,password required", 400);
    if (!isSafeSetupToken(env.SETUP_TOKEN)) return err("Server misconfigured (SETUP_TOKEN)", 500);
    if (!isSafeJwtSecret(env.JWT_SECRET)) return err("Server misconfigured (JWT_SECRET)", 500);
    if (String(body.token) !== String(env.SETUP_TOKEN)) return err("forbidden", 403);

    try {
      await ensureSchemaAndSeed(env);
    } catch (schemaError) {
      console.error("[setup] full schema failed; fallback to auth schema:", schemaError);
      await ensureAuthSchema(env);
    }

    const email = String(body.email).trim().toLowerCase();
    const password = String(body.password);
    if (password.length < 8) return err("password too short (min 8)", 400);

    const tableProfile = await getUsersTableProfile(env);
    if (!tableProfile.hashColumns.length) {
      return err("setup unavailable (password schema)", 500, { code: "auth_schema_legacy" });
    }

    const totalUsersRow = await dbGet(env, `SELECT COUNT(*) AS c FROM users`, []);
    const totalUsers = Number(totalUsersRow?.c || 0);
    if (totalUsers > 0) {
      return err("setup is closed", 403);
    }

    let user = await dbGet(env, `SELECT * FROM users WHERE lower(email)=lower(?) LIMIT 1`, [email]);
    if (user) {
      return err("email already registered", 409);
    }

    const id = makeId("u");
    const passHash = await hashPassword(password);
    const role = "super_admin";
    const insert = buildUserInsertStatement(tableProfile, { id, email, role, passHash });
    try {
      await dbRun(env, insert.sql, insert.params);
    } catch (cause) {
      console.error("[setup] users insert failed:", {
        message: String(cause?.message || cause || ""),
        columns: tableProfile.columns,
        hashColumns: tableProfile.hashColumns,
        sql: insert.sql,
      });
      throw cause;
    }
    user = await dbGet(env, `SELECT * FROM users WHERE lower(email)=lower(?) LIMIT 1`, [email]);

    const userId = user?.id || user?.user_id || makeId("u");
    const userEmail = user?.email || email;
    const userRole = user?.role || "super_admin";
    const token = await signJWT(env.JWT_SECRET, { sub: userId, email: userEmail, role: userRole }, 60 * 60 * 24 * 30);
    return json({ token, email: userEmail, role: userRole, seeded: true });
  } catch (cause) {
    console.error("[setup] failed:", cause);
    return err("setup temporarily unavailable", 500, { code: "auth_internal" });
  }
}
