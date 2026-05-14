import test from "node:test";
import assert from "node:assert/strict";

import { signJWT } from "../functions/_lib/auth.js";
import { onRequestPut, onRequestDelete } from "../functions/api/songs/[id]/comments/[comment_id].js";
import { createMockEnv, readJson, withFreshSchemaMarkers } from "./helpers/mock-env.mjs";

function createCommentsEnv() {
  const songs = new Map([
    ["song-1", { id: "song-1", status: "published", is_admin_content: 0, lang: "ru" }],
  ]);
  const users = new Map([
    ["user-owner", { id: "user-owner", email: "owner@example.com", nickname: "owner", role: "user", created_at: "2024-01-01T00:00:00.000Z", nickname_updated_at: null }],
    ["user-other", { id: "user-other", email: "other@example.com", nickname: "other", role: "user", created_at: "2024-01-01T00:00:00.000Z", nickname_updated_at: null }],
    ["user-super", { id: "user-super", email: "super@example.com", nickname: "super", role: "super_admin", created_at: "2024-01-01T00:00:00.000Z", nickname_updated_at: null }],
    ["user-admin-delete", { id: "user-admin-delete", email: "admin@example.com", nickname: "admin", role: "admin", created_at: "2024-01-01T00:00:00.000Z", nickname_updated_at: null }],
    ["user-admin-ru", { id: "user-admin-ru", email: "admin-ru@example.com", nickname: "admin_ru", role: "admin", created_at: "2024-01-01T00:00:00.000Z", nickname_updated_at: null }],
  ]);
  const comments = new Map([
    ["comment-1", {
      id: "comment-1",
      song_id: "song-1",
      user_id: "user-owner",
      body: "Original body",
      created_at: "2024-01-02 10:00:00",
      updated_at: "2024-01-02 10:00:00",
    }],
  ]);

  const resolver = withFreshSchemaMarkers(async (sql, params, method) => {
    if (sql.includes("SELECT id, status, is_admin_content") && sql.includes("FROM songs")) {
      return songs.get(String(params[0] || "")) || null;
    }

    if (sql.includes("SELECT id,email,nickname,role,created_at,nickname_updated_at FROM users WHERE id=?")) {
      return users.get(String(params[0] || "")) || null;
    }

    if (sql.includes("SELECT permission FROM user_permissions WHERE user_id=?")) {
      if (String(params[0] || "") === "user-admin-delete" || String(params[0] || "") === "user-admin-ru") {
        return [{ permission: "songs.delete" }];
      }
      return [];
    }

    if (sql.includes("SELECT lang FROM user_scope_languages WHERE user_id=?")) {
      if (String(params[0] || "") === "user-admin-delete") {
        return [{ lang: "en" }];
      }
      if (String(params[0] || "") === "user-admin-ru") {
        return [{ lang: "ru" }];
      }
      return [];
    }

    if (sql.includes("SELECT id, song_id, user_id, body, created_at, updated_at") && sql.includes("FROM song_comments")) {
      const comment = comments.get(String(params[0] || ""));
      if (!comment) return null;
      return String(comment.song_id) === String(params[1] || "") ? { ...comment } : null;
    }

    if (sql.includes("UPDATE song_comments")) {
      const [body, commentId, songId] = params;
      const existing = comments.get(String(commentId || ""));
      if (existing && String(existing.song_id) === String(songId || "")) {
        comments.set(String(commentId), {
          ...existing,
          body: String(body || ""),
          updated_at: "2024-01-03 12:00:00",
        });
      }
      return { success: true };
    }

    if (sql.includes("DELETE FROM song_comments WHERE id=? AND song_id=?")) {
      const [commentId, songId] = params;
      const existing = comments.get(String(commentId || ""));
      if (existing && String(existing.song_id) === String(songId || "")) {
        comments.delete(String(commentId || ""));
      }
      return { success: true };
    }

    if (sql.includes("u.nickname AS author_nickname")) {
      const comment = comments.get(String(params[0] || ""));
      if (!comment) return null;
      const user = users.get(String(comment.user_id || ""));
      return {
        ...comment,
        author_nickname: String(user?.nickname || ""),
      };
    }

    return method === "all" ? [] : null;
  });

  return {
    env: createMockEnv(resolver),
    comments,
  };
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

test("comment owner can edit own comment", async () => {
  const { env, comments } = createCommentsEnv();
  const cookie = await authCookie(env, { id: "user-owner", email: "owner@example.com", nickname: "owner", role: "user" });
  const response = await onRequestPut({
    env,
    request: new Request("https://example.com/api/songs/song-1/comments/comment-1", {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
        Cookie: cookie,
      },
      body: JSON.stringify({ body: "Updated body" }),
    }),
    params: { id: "song-1", comment_id: "comment-1" },
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.item.body, "Updated body");
  assert.equal(comments.get("comment-1")?.body, "Updated body");
});

test("non-owner cannot edit another user's comment", async () => {
  const { env } = createCommentsEnv();
  const cookie = await authCookie(env, { id: "user-other", email: "other@example.com", nickname: "other", role: "user" });
  const response = await onRequestPut({
    env,
    request: new Request("https://example.com/api/songs/song-1/comments/comment-1", {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
        Cookie: cookie,
      },
      body: JSON.stringify({ body: "Hijack" }),
    }),
    params: { id: "song-1", comment_id: "comment-1" },
  });

  assert.equal(response.status, 403);
  const body = await readJson(response);
  assert.equal(body.error, "Forbidden");
});

test("super admin can delete any comment", async () => {
  const { env, comments } = createCommentsEnv();
  const cookie = await authCookie(env, { id: "user-super", email: "super@example.com", nickname: "super", role: "super_admin" });
  const response = await onRequestDelete({
    env,
    request: new Request("https://example.com/api/songs/song-1/comments/comment-1", {
      method: "DELETE",
      headers: {
        Cookie: cookie,
      },
    }),
    params: { id: "song-1", comment_id: "comment-1" },
  });

  assert.equal(response.status, 200);
  assert.equal(comments.has("comment-1"), false);
});

test("super admin cannot edit another user's comment", async () => {
  const { env } = createCommentsEnv();
  const cookie = await authCookie(env, { id: "user-super", email: "super@example.com", nickname: "super", role: "super_admin" });
  const response = await onRequestPut({
    env,
    request: new Request("https://example.com/api/songs/song-1/comments/comment-1", {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
        Cookie: cookie,
      },
      body: JSON.stringify({ body: "Moderator rewrite" }),
    }),
    params: { id: "song-1", comment_id: "comment-1" },
  });

  assert.equal(response.status, 403);
});

test("comment owner can delete own comment", async () => {
  const { env, comments } = createCommentsEnv();
  const cookie = await authCookie(env, { id: "user-owner", email: "owner@example.com", nickname: "owner", role: "user" });
  const response = await onRequestDelete({
    env,
    request: new Request("https://example.com/api/songs/song-1/comments/comment-1", {
      method: "DELETE",
      headers: {
        Cookie: cookie,
      },
    }),
    params: { id: "song-1", comment_id: "comment-1" },
  });

  assert.equal(response.status, 200);
  assert.equal(comments.has("comment-1"), false);
});

test("admin with songs.delete cannot delete another user's comment outside language scope", async () => {
  const { env, comments } = createCommentsEnv();
  const cookie = await authCookie(env, { id: "user-admin-delete", email: "admin@example.com", nickname: "admin", role: "admin" });
  const response = await onRequestDelete({
    env,
    request: new Request("https://example.com/api/songs/song-1/comments/comment-1", {
      method: "DELETE",
      headers: {
        Cookie: cookie,
      },
    }),
    params: { id: "song-1", comment_id: "comment-1" },
  });

  assert.equal(response.status, 403);
  assert.equal(comments.has("comment-1"), true);
});

test("admin with songs.delete can delete another user's comment within language scope", async () => {
  const { env, comments } = createCommentsEnv();
  const cookie = await authCookie(env, { id: "user-admin-ru", email: "admin-ru@example.com", nickname: "admin_ru", role: "admin" });
  const response = await onRequestDelete({
    env,
    request: new Request("https://example.com/api/songs/song-1/comments/comment-1", {
      method: "DELETE",
      headers: {
        Cookie: cookie,
      },
    }),
    params: { id: "song-1", comment_id: "comment-1" },
  });

  assert.equal(response.status, 200);
  assert.equal(comments.has("comment-1"), false);
});
