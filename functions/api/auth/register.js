import { json, err, readJSON, makeId } from "../../_lib/utils.js";
import { dbRun, dbGet } from "../../_lib/db.js";
import { hashPassword } from "../../_lib/password.js";
import { signJWT, buildAuthCookie } from "../../_lib/auth.js";
import { ensureSchemaAndSeed, ensureAuthSchema } from "../../_lib/schema.js";
import { enforceRateLimit } from "../../_lib/rate-limit.js";
import { getUsersTableProfile, buildUserInsertStatement } from "../../_lib/user-password-store.js";
import { isSafeJwtSecret } from "../../_lib/security-config.js";

function normalizeNickname(value) {
  return String(value || "")
    .trim()
    .toLowerCase()
    .replace(/\s+/g, "_")
    .replace(/[^a-z0-9._-]/g, "_")
    .replace(/_+/g, "_")
    .replace(/^[_\-.]+|[_\-.]+$/g, "")
    .slice(0, 28);
}

export async function onRequestPost({ env, request }){
  try {
    try {
      await ensureSchemaAndSeed(env);
    } catch (schemaError) {
      console.error("[auth/register] full schema failed; fallback to auth schema:", schemaError);
      await ensureAuthSchema(env);
    }
    if (!isSafeJwtSecret(env.JWT_SECRET)) return err("Server misconfigured (JWT_SECRET)", 500);

    const ipRate = await enforceRateLimit(env, request, {
      scope: "auth_register_ip_v2",
      limit: 1000,
      windowSec: 3600,
    });
    if (ipRate) return ipRate;

    const body = await readJSON(request);
    if(!body?.email || !body?.password || !body?.nickname) return err("nickname, email and password required", 400);
    const email = String(body.email).trim().toLowerCase();
    const password = String(body.password);
    const hasPasswordConfirm = Object.prototype.hasOwnProperty.call(body || {}, "password_confirm")
      || Object.prototype.hasOwnProperty.call(body || {}, "passwordConfirm");
    const passwordConfirm = hasPasswordConfirm
      ? String(body.password_confirm ?? body.passwordConfirm ?? "")
      : "";
    const nickname = normalizeNickname(body.nickname);
    if (!nickname || !/^[a-z0-9._-]{3,28}$/.test(nickname)) {
      return err("invalid nickname (3-28 chars: a-z 0-9 . _ -)", 400);
    }
    if(password.length < 8) return err("password too short (min 8)", 400);
    if (!hasPasswordConfirm || password !== passwordConfirm) {
      return err("password confirmation mismatch", 400);
    }

    const emailRate = await enforceRateLimit(env, request, {
      scope: "auth_register_email_v2",
      identity: email,
      limit: 200,
      windowSec: 86400,
      includeIp: false,
    });
    if (emailRate) return emailRate;

    const tableProfile = await getUsersTableProfile(env);
    if (!tableProfile.hashColumns.length) {
      return err("registration unavailable (password schema)", 500, { code: "auth_schema_legacy" });
    }

    const exists = await dbGet(env, `SELECT * FROM users WHERE lower(email)=lower(?) LIMIT 1`, [email]);
    if(exists) return err("email already registered", 409);
    const nicknameExists = await dbGet(
      env,
      `SELECT id FROM users WHERE lower(trim(coalesce(nickname,'')))=lower(trim(?)) LIMIT 1`,
      [nickname]
    );
    if (nicknameExists) return err("nickname already registered", 409);

    const id = makeId("u");
    const passHash = await hashPassword(password);
    const role = "user";
    const insert = buildUserInsertStatement(tableProfile, { id, email, role, passHash, nickname });
    try {
      await dbRun(env, insert.sql, insert.params);
    } catch (cause) {
      console.error("[auth/register] users insert failed:", {
        message: String(cause?.message || cause || ""),
        columns: tableProfile.columns,
        hashColumns: tableProfile.hashColumns,
        sql: insert.sql,
      });
      throw cause;
    }

    const createdUser = await dbGet(env, `SELECT * FROM users WHERE lower(email)=lower(?) LIMIT 1`, [email]);
    const userId = createdUser?.id ?? createdUser?.user_id ?? id;
    const userRole = createdUser?.role ?? role;

    const token = await signJWT(env.JWT_SECRET, { sub: userId, email, nickname, role: userRole }, 60*60*24*14);
    return json(
      { role: userRole, nickname },
      200,
      {
        "Set-Cookie": buildAuthCookie(request, token, 60 * 60 * 24 * 14),
      }
    );
  } catch (cause) {
    console.error("[auth/register] failed:", cause);
    return err("registration temporarily unavailable", 500, { code: "auth_internal" });
  }
}
