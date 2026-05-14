import test from "node:test";
import assert from "node:assert/strict";

import {
  ensureDraftPublishAccess,
  ensureDraftSourceReadable,
} from "../functions/_lib/drafts.js";
import { createMockEnv, withFreshSchemaMarkers } from "./helpers/mock-env.mjs";

async function createDraftSecurityEnv() {
  const users = new Map([
    ["u-user", {
      id: "u-user",
      email: "user@example.com",
      nickname: "user",
      role: "user",
      created_at: "2024-01-01T00:00:00.000Z",
      nickname_updated_at: null,
    }],
    ["u-admin-en", {
      id: "u-admin-en",
      email: "admin-en@example.com",
      nickname: "admin_en",
      role: "admin",
      created_at: "2024-01-01T00:00:00.000Z",
      nickname_updated_at: null,
    }],
    ["u-super", {
      id: "u-super",
      email: "super@example.com",
      nickname: "super",
      role: "super_admin",
      created_at: "2024-01-01T00:00:00.000Z",
      nickname_updated_at: null,
    }],
  ]);
  const permissions = new Map([
    ["u-admin-en", ["songs.create", "songs.edit"]],
    ["u-super", []],
  ]);
  const scopes = new Map([
    ["u-admin-en", ["en"]],
    ["u-super", ["*"]],
  ]);
  const songs = new Map([
    ["song-public-en", {
      id: "song-public-en",
      status: "published",
      lang: "en",
      is_admin_content: 0,
      title: "Public EN",
      lyrics: "Public lyrics",
    }],
    ["song-admin-en", {
      id: "song-admin-en",
      status: "published",
      lang: "en",
      is_admin_content: 1,
      title: "Admin EN",
      lyrics: "Secret lyrics",
    }],
    ["song-public-ru", {
      id: "song-public-ru",
      status: "published",
      lang: "ru",
      is_admin_content: 0,
      title: "Public RU",
      lyrics: "RU lyrics",
    }],
  ]);

  const resolver = withFreshSchemaMarkers(async (sql, params, method) => {
    if (sql.includes("SELECT id,email,nickname,role,created_at,nickname_updated_at FROM users WHERE id=?")) {
      return users.get(String(params[0] || "")) || null;
    }
    if (sql.includes("SELECT permission FROM user_permissions WHERE user_id=?")) {
      return (permissions.get(String(params[0] || "")) || []).map((permission) => ({ permission }));
    }
    if (sql.includes("SELECT lang FROM user_scope_languages WHERE user_id=?")) {
      return (scopes.get(String(params[0] || "")) || []).map((lang) => ({ lang }));
    }
    if (sql.includes("SELECT * FROM songs WHERE id=?")) {
      return songs.get(String(params[0] || "")) || null;
    }
    return method === "all" ? [] : null;
  });

  return createMockEnv(resolver);
}

test("regular user cannot clone admin-only song into a draft", async () => {
  const env = await createDraftSecurityEnv();
  await assert.rejects(
    () => ensureDraftSourceReadable(env, { userId: "u-user", songId: "song-admin-en" }),
    /Song not found/
  );
});

test("regular user cannot publish a draft directly into songs", async () => {
  const env = await createDraftSecurityEnv();
  await assert.rejects(
    () => ensureDraftPublishAccess(env, {
      userId: "u-user",
      draftSongId: "",
      snapshot: { lang: "en" },
    }),
    /missing permission songs\.create/
  );
});

test("language-scoped admin cannot publish draft changes outside assigned language scope", async () => {
  const env = await createDraftSecurityEnv();
  await assert.rejects(
    () => ensureDraftPublishAccess(env, {
      userId: "u-admin-en",
      draftSongId: "song-public-ru",
      snapshot: { lang: "ru" },
    }),
    /language scope ru/
  );
});

test("super admin can publish admin-only draft targets", async () => {
  const env = await createDraftSecurityEnv();
  const access = await ensureDraftPublishAccess(env, {
    userId: "u-super",
    draftSongId: "song-admin-en",
    snapshot: { lang: "en" },
  });
  assert.equal(access?.targetSong?.id, "song-admin-en");
});
