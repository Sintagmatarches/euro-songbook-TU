import test from "node:test";
import assert from "node:assert/strict";

import { signJWT } from "../functions/_lib/auth.js";
import { onRequestPut } from "../functions/api/me/nickname.js";
import { createMockEnv, readJson, withFreshSchemaMarkers } from "./helpers/mock-env.mjs";

function createNicknameEnv() {
  const users = new Map([
    ["u-1", {
      id: "u-1",
      email: "user@example.com",
      nickname: "old_name",
      role: "user",
      created_at: "2024-01-01T00:00:00.000Z",
      nickname_updated_at: null,
    }],
    ["u-2", {
      id: "u-2",
      email: "taken@example.com",
      nickname: "taken_name",
      role: "user",
      created_at: "2024-01-01T00:00:00.000Z",
      nickname_updated_at: null,
    }],
    ["u-recent", {
      id: "u-recent",
      email: "recent@example.com",
      nickname: "recent_name",
      role: "user",
      created_at: "2024-01-01T00:00:00.000Z",
      nickname_updated_at: new Date(Date.now() - (2 * 24 * 60 * 60 * 1000)).toISOString(),
    }],
  ]);

  const resolver = withFreshSchemaMarkers(async (sql, params, method) => {
    if (sql.includes("SELECT id,email,nickname,role,created_at,nickname_updated_at FROM users WHERE id=?")) {
      return users.get(String(params[0] || "")) || null;
    }
    if (sql.includes("SELECT permission FROM user_permissions WHERE user_id=?")) {
      return [];
    }
    if (sql.includes("SELECT lang FROM user_scope_languages WHERE user_id=?")) {
      return [];
    }
    if (sql.includes("SELECT id FROM users WHERE lower(trim(coalesce(nickname,'')))=lower(trim(?)) AND id<>? LIMIT 1")) {
      const nickname = String(params[0] || "").trim().toLowerCase();
      const excludeId = String(params[1] || "");
      for (const user of users.values()) {
        if (user.id === excludeId) continue;
        if (String(user.nickname || "").trim().toLowerCase() === nickname) {
          return { id: user.id };
        }
      }
      return null;
    }
    if (sql.includes("UPDATE users") && sql.includes("SET nickname=?, nickname_updated_at=datetime('now')")) {
      const nickname = String(params[0] || "");
      const userId = String(params[1] || "");
      const current = users.get(userId);
      if (current) {
        users.set(userId, {
          ...current,
          nickname,
          nickname_updated_at: new Date().toISOString(),
        });
      }
      return { success: true };
    }
    return method === "all" ? [] : null;
  });

  return { env: createMockEnv(resolver), users };
}

async function authCookie(env, user) {
  const token = await signJWT(env.JWT_SECRET, {
    sub: user.id,
    email: user.email,
    nickname: user.nickname,
    role: user.role,
  });
  return `songbook_session=${encodeURIComponent(token)}`;
}

test("nickname change updates nickname for authenticated user", async () => {
  const { env, users } = createNicknameEnv();
  const cookie = await authCookie(env, users.get("u-1"));
  const response = await onRequestPut({
    env,
    request: new Request("https://example.com/api/me/nickname", {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
        Cookie: cookie,
      },
      body: JSON.stringify({ nickname: "New Name" }),
    }),
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.nickname, "new_name");
  assert.equal(body.changed, true);
  assert.equal(users.get("u-1")?.nickname, "new_name");
});

test("nickname change enforces weekly cooldown", async () => {
  const { env, users } = createNicknameEnv();
  const cookie = await authCookie(env, users.get("u-recent"));
  const response = await onRequestPut({
    env,
    request: new Request("https://example.com/api/me/nickname", {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
        Cookie: cookie,
      },
      body: JSON.stringify({ nickname: "another_name" }),
    }),
  });

  assert.equal(response.status, 429);
  assert.ok(Number(response.headers.get("Retry-After") || "0") > 0);
  const body = await readJson(response);
  assert.match(body.error, /once every 7 days/i);
  assert.equal(users.get("u-recent")?.nickname, "recent_name");
});

test("nickname change rejects duplicate nickname", async () => {
  const { env, users } = createNicknameEnv();
  const cookie = await authCookie(env, users.get("u-1"));
  const response = await onRequestPut({
    env,
    request: new Request("https://example.com/api/me/nickname", {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
        Cookie: cookie,
      },
      body: JSON.stringify({ nickname: "taken_name" }),
    }),
  });

  assert.equal(response.status, 409);
  const body = await readJson(response);
  assert.equal(body.error, "nickname already registered");
});
