import { json, err, readJSON } from "../../_lib/utils.js";
import { dbGet } from "../../_lib/db.js";
import { signJWT } from "../../_lib/auth.js";
import { verifyPassword } from "../../_lib/password.js";
import { ensureSchemaAndSeed, ensureAuthSchema } from "../../_lib/schema.js";
import { enforceRateLimit } from "../../_lib/rate-limit.js";
import { extractPasswordHashCandidates } from "../../_lib/user-password-store.js";
import { isSafeJwtSecret } from "../../_lib/security-config.js";

export async function onRequestPost({ env, request }) {
  try {
    await ensureSchemaAndSeed(env);
  } catch (schemaError) {
    console.error("[auth/login] full schema failed; fallback to auth schema:", schemaError);
    await ensureAuthSchema(env);
  }
  if (!isSafeJwtSecret(env.JWT_SECRET)) return err("Server misconfigured (JWT_SECRET)", 500);

  const ipRate = await enforceRateLimit(env, request, {
    scope: "auth_login_ip",
    limit: 30,
    windowSec: 60,
  });
  if (ipRate) return ipRate;

  const body = await readJSON(request);
  if (!body?.email || !body?.password) return err("email and password required", 400);

  const email = String(body.email).trim().toLowerCase();
  const password = String(body.password);
  const emailRate = await enforceRateLimit(env, request, {
    scope: "auth_login_email",
    identity: email,
    limit: 10,
    windowSec: 600,
  });
  if (emailRate) return emailRate;

  const user = await dbGet(env, `SELECT * FROM users WHERE lower(email)=lower(?) LIMIT 1`, [email]);
  if (!user) return err("invalid credentials", 401);

  const candidates = extractPasswordHashCandidates(user);

  let ok = false;
  for (const h of candidates) {
    if (await verifyPassword(password, h)) {
      ok = true;
      break;
    }
  }

  if (!ok) return err("invalid credentials", 401);

  const sub = user.id ?? user.user_id ?? email;
  const role = user.role ?? "user";
  const token = await signJWT(env.JWT_SECRET, { sub, email: user.email ?? email, role }, 60 * 60 * 24 * 14);

  return json({ token, role });
}
