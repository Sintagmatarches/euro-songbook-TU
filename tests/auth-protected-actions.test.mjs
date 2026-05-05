import test from "node:test";
import assert from "node:assert/strict";

import { onRequestPost as registerHandler } from "../functions/api/auth/register.js";
import { onRequestPost as loginHandler } from "../functions/api/auth/login.js";
import { onRequestPost as favoriteAddHandler } from "../functions/api/favorites/[id].js";
import { hashPassword } from "../functions/_lib/password.js";
import { signJWT } from "../functions/_lib/auth.js";
import { createMockEnv, readJson, withFreshSchemaMarkers } from "./helpers/mock-env.mjs";

function usersTableSql() {
  return `CREATE TABLE users (
    id TEXT PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    nickname TEXT,
    pass_hash TEXT NOT NULL,
    role TEXT NOT NULL CHECK(role IN ('user','admin','super_admin')),
    created_at TEXT NOT NULL
  )`;
}

function parseInsertColumns(sql) {
  const match = String(sql).match(/INSERT INTO users \(([^)]+)\)\s+VALUES/i);
  if (!match?.[1]) return [];
  return match[1]
    .split(",")
    .map((column) => String(column || "").trim().replace(/^"|"$/g, ""));
}

async function createAuthEnv(options = {}) {
  const users = [];
  const favorites = [];
  const rateLimits = new Map();
  const songs = [
    { id: "song-public", status: "published", is_admin_content: 0 },
    { id: "song-admin", status: "published", is_admin_content: 1 },
  ];

  for (const seed of options.seedUsers || []) {
    users.push({
      id: seed.id,
      email: seed.email,
      nickname: seed.nickname,
      pass_hash: seed.pass_hash || await hashPassword(seed.password),
      role: seed.role || "user",
      created_at: seed.created_at || "2024-01-01T00:00:00.000Z",
    });
  }

  const resolver = withFreshSchemaMarkers(async (sql, params, method) => {
    if (sql.includes("DELETE FROM rate_limits WHERE reset_at <= ?")) {
      const now = Number(params[0] || 0);
      for (const [bucket, row] of rateLimits.entries()) {
        if (Number(row.reset_at || 0) <= now) rateLimits.delete(bucket);
      }
      return {};
    }

    if (sql.includes("INSERT INTO rate_limits")) {
      const [bucket, resetAt, now, , nextResetAt] = params;
      const current = rateLimits.get(bucket);
      if (!current || Number(current.reset_at || 0) <= Number(now || 0)) {
        rateLimits.set(bucket, { count: 1, reset_at: Number(nextResetAt || resetAt || 0) });
      } else {
        rateLimits.set(bucket, { count: Number(current.count || 0) + 1, reset_at: current.reset_at });
      }
      return {};
    }

    if (sql.includes("SELECT count, reset_at FROM rate_limits WHERE bucket=?")) {
      return rateLimits.get(String(params[0] || "")) || null;
    }

    if (sql.includes("PRAGMA table_info(users)")) {
      return [
        { name: "id", type: "TEXT", notnull: 0, dflt_value: null, pk: 1 },
        { name: "email", type: "TEXT", notnull: 1, dflt_value: null, pk: 0 },
        { name: "nickname", type: "TEXT", notnull: 0, dflt_value: null, pk: 0 },
        { name: "pass_hash", type: "TEXT", notnull: 1, dflt_value: null, pk: 0 },
        { name: "role", type: "TEXT", notnull: 1, dflt_value: null, pk: 0 },
        { name: "created_at", type: "TEXT", notnull: 1, dflt_value: null, pk: 0 },
      ];
    }

    if (sql.includes("SELECT sql FROM sqlite_master") && sql.includes("users")) {
      return { sql: usersTableSql() };
    }

    if (
      sql.includes("SELECT * FROM users")
      && sql.includes("OR lower(trim(coalesce(nickname,'')))=lower(trim(?))")
    ) {
      const login = String(params[0] || "").toLowerCase();
      const exactNickname = String(params[1] || "").trim().toLowerCase();
      const normalizedNickname = String(params[2] || "").trim().toLowerCase();
      return users.find((user) => (
        String(user.email || "").toLowerCase() === login
        || String(user.nickname || "").trim().toLowerCase() === exactNickname
        || String(user.nickname || "").trim().toLowerCase() === normalizedNickname
      )) || null;
    }

    if (sql.includes("SELECT * FROM users WHERE lower(email)=lower(?) LIMIT 1")) {
      const email = String(params[0] || "").toLowerCase();
      return users.find((user) => String(user.email || "").toLowerCase() === email) || null;
    }

    if (sql.includes("SELECT id FROM users WHERE lower(trim(coalesce(nickname,'')))=lower(trim(?)) LIMIT 1")) {
      const nickname = String(params[0] || "").trim().toLowerCase();
      const user = users.find((entry) => String(entry.nickname || "").trim().toLowerCase() === nickname);
      return user ? { id: user.id } : null;
    }

    if (sql.includes("INSERT INTO users (")) {
      const columns = parseInsertColumns(sql);
      const row = {};
      columns.forEach((column, index) => {
        row[column] = params[index];
      });
      users.push(row);
      return { success: true };
    }

    if (sql.includes("SELECT id,email,nickname,role,created_at FROM users WHERE id=?")) {
      const user = users.find((entry) => String(entry.id) === String(params[0] || ""));
      if (!user) return null;
      return {
        id: user.id,
        email: user.email,
        nickname: user.nickname,
        role: user.role,
        created_at: user.created_at,
      };
    }

    if (sql.includes("SELECT permission FROM user_permissions WHERE user_id=?")) {
      return [];
    }

    if (sql.includes("SELECT lang FROM user_scope_languages WHERE user_id=?")) {
      return [];
    }

    if (sql.includes("SELECT id FROM songs WHERE id=? AND status='published'")) {
      const songId = String(params[0] || "");
      const allowAdminContent = Number(params[1] || 0) === 1;
      const song = songs.find((entry) => (
        entry.id === songId
        && entry.status === "published"
        && (Number(entry.is_admin_content || 0) === 0 || allowAdminContent)
      ));
      return song ? { id: song.id } : null;
    }

    if (sql.includes("INSERT OR IGNORE INTO favorites")) {
      const [userId, songId] = params;
      if (!favorites.some((entry) => entry.user_id === userId && entry.song_id === songId)) {
        favorites.push({ user_id: userId, song_id: songId });
      }
      return { success: true };
    }

    return method === "all" ? [] : null;
  });

  return {
    env: createMockEnv(resolver),
    state: {
      users,
      favorites,
    },
  };
}

function makeJsonRequest(url, body, headers = {}) {
  return new Request(url, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      ...headers,
    },
    body: JSON.stringify(body),
  });
}

test("register rejects mismatched password confirmation on the backend", async () => {
  const { env, state } = await createAuthEnv();
  const response = await registerHandler({
    env,
    request: makeJsonRequest("https://example.com/api/auth/register", {
      nickname: "tester",
      email: "tester@example.com",
      password: "secret123",
      password_confirm: "secret124",
    }),
  });

  assert.equal(response.status, 400);
  const body = await readJson(response);
  assert.equal(body.error, "password confirmation mismatch");
  assert.equal(state.users.length, 0);
});

test("register creates a user and sets auth cookies", async () => {
  const { env, state } = await createAuthEnv();
  const response = await registerHandler({
    env,
    request: makeJsonRequest("https://example.com/api/auth/register", {
      nickname: "tester",
      email: "tester@example.com",
      password: "secret123",
      password_confirm: "secret123",
    }),
  });

  assert.equal(response.status, 200);
  assert.equal(state.users.length, 1);
  assert.equal(state.users[0].email, "tester@example.com");
  assert.equal(state.users[0].nickname, "tester");
  assert.ok(String(state.users[0].pass_hash || "").startsWith("pbkdf2$"));
  const setCookie = response.headers.get("set-cookie") || "";
  assert.match(setCookie, /songbook_session=/);
  assert.match(setCookie, /songbook_session_hint=1/);
});

test("login rejects invalid credentials", async () => {
  const { env } = await createAuthEnv({
    seedUsers: [
      {
        id: "u-login",
        email: "tester@example.com",
        nickname: "tester",
        password: "secret123",
      },
    ],
  });

  const response = await loginHandler({
    env,
    request: makeJsonRequest("https://example.com/api/auth/login", {
      login: "tester@example.com",
      password: "wrongpass",
    }),
  });

  assert.equal(response.status, 401);
  const body = await readJson(response);
  assert.equal(body.error, "invalid credentials");
});

test("login accepts nickname credentials and sets auth cookies", async () => {
  const { env } = await createAuthEnv({
    seedUsers: [
      {
        id: "u-login",
        email: "tester@example.com",
        nickname: "tester",
        password: "secret123",
      },
    ],
  });

  const response = await loginHandler({
    env,
    request: makeJsonRequest("https://example.com/api/auth/login", {
      login: "tester",
      password: "secret123",
    }),
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.nickname, "tester");
  const setCookie = response.headers.get("set-cookie") || "";
  assert.match(setCookie, /songbook_session=/);
});

test("login accepts normalized nickname input for legacy admin-style accounts", async () => {
  const { env } = await createAuthEnv({
    seedUsers: [
      {
        id: "u-login-normalized",
        email: "legacy.admin@example.com",
        nickname: "legacy_admin",
        password: "secret123",
      },
    ],
  });

  const response = await loginHandler({
    env,
    request: makeJsonRequest("https://example.com/api/auth/login", {
      login: "Legacy Admin",
      password: "secret123",
    }),
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.nickname, "legacy_admin");
});

test("login accepts legacy blob password hashes", async () => {
  const hashed = await hashPassword("secret123");
  const { env } = await createAuthEnv({
    seedUsers: [
      {
        id: "u-login-blob",
        email: "blob@example.com",
        nickname: "blob_user",
        pass_hash: new TextEncoder().encode(hashed),
      },
    ],
  });

  const response = await loginHandler({
    env,
    request: makeJsonRequest("https://example.com/api/auth/login", {
      login: "blob_user",
      password: "secret123",
    }),
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.nickname, "blob_user");
});

test("favorites add endpoint rejects unauthenticated requests", async () => {
  const { env } = await createAuthEnv();
  const response = await favoriteAddHandler({
    env,
    request: new Request("https://example.com/api/favorites/song-public", {
      method: "POST",
    }),
    params: { id: "song-public" },
  });

  assert.equal(response.status, 401);
  const body = await readJson(response);
  assert.equal(body.error, "Unauthorized");
});

test("favorites add endpoint stores a favorite for an authenticated user", async () => {
  const { env, state } = await createAuthEnv({
    seedUsers: [
      {
        id: "u-favorite",
        email: "fav@example.com",
        nickname: "favorite_user",
        password: "secret123",
      },
    ],
  });
  const token = await signJWT(env.JWT_SECRET, {
    sub: "u-favorite",
    email: "fav@example.com",
    nickname: "favorite_user",
    role: "user",
  });
  const response = await favoriteAddHandler({
    env,
    request: new Request("https://example.com/api/favorites/song-public", {
      method: "POST",
      headers: {
        Cookie: `songbook_session=${encodeURIComponent(token)}`,
      },
    }),
    params: { id: "song-public" },
  });

  assert.equal(response.status, 200);
  assert.deepEqual(state.favorites, [{ user_id: "u-favorite", song_id: "song-public" }]);
});
