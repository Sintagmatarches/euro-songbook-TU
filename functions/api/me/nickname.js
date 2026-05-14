import { err, json, readJSON } from "../../_lib/utils.js";
import { dbGet, dbRun, requireAuth, getUserAccess } from "../../_lib/db.js";
import { ensureSchemaAndSeed, ensureAuthSchema } from "../../_lib/schema.js";

const NICKNAME_CHANGE_INTERVAL_MS = 7 * 24 * 60 * 60 * 1000;

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

function nextNicknameChangeAt(value) {
  const raw = String(value || "").trim();
  if (!raw) return 0;
  const ts = Date.parse(raw);
  if (!Number.isFinite(ts)) return 0;
  return ts + NICKNAME_CHANGE_INTERVAL_MS;
}

function waitSecondsUntilNicknameChange(value) {
  const availableAt = nextNicknameChangeAt(value);
  if (!availableAt) return 0;
  return Math.max(0, Math.ceil((availableAt - Date.now()) / 1000));
}

export async function onRequestPut({ env, request }) {
  try {
    await ensureSchemaAndSeed(env);
  } catch (schemaError) {
    console.error("[api/me/nickname] full schema failed; fallback to auth schema:", schemaError);
    await ensureAuthSchema(env);
  }
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;

  const access = await getUserAccess(env, auth.sub);
  if (!access) return err("Unauthorized", 401);

  const body = await readJSON(request);
  const nickname = normalizeNickname(body?.nickname);
  if (!nickname || !/^[a-z0-9._-]{3,28}$/.test(nickname)) {
    return err("invalid nickname (3-28 chars: a-z 0-9 . _ -)", 400);
  }
  if (nickname === String(access.nickname || "").trim().toLowerCase()) {
    return json({
      ok: true,
      nickname,
      nickname_updated_at: access.nickname_updated_at || null,
      changed: false,
    });
  }

  const retryAfter = waitSecondsUntilNicknameChange(access.nickname_updated_at);
  if (retryAfter > 0) {
    return json(
      {
        error: "nickname can be changed once every 7 days",
        retry_after: retryAfter,
        nickname_updated_at: access.nickname_updated_at || null,
      },
      429,
      { "Retry-After": String(retryAfter) }
    );
  }

  const exists = await dbGet(
    env,
    `SELECT id FROM users WHERE lower(trim(coalesce(nickname,'')))=lower(trim(?)) AND id<>? LIMIT 1`,
    [nickname, access.id]
  );
  if (exists) return err("nickname already registered", 409);

  await dbRun(
    env,
    `UPDATE users
     SET nickname=?, nickname_updated_at=datetime('now')
     WHERE id=?`,
    [nickname, access.id]
  );

  const updated = await getUserAccess(env, access.id);
  return json({
    ok: true,
    nickname: String(updated?.nickname || nickname),
    nickname_updated_at: updated?.nickname_updated_at || null,
    changed: true,
  });
}
