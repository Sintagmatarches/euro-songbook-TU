import test from "node:test";
import assert from "node:assert/strict";

import { onRequestGet } from "../functions/api/songs/[id]/comments.js";
import { createMockEnv, readJson, withFreshSchemaMarkers } from "./helpers/mock-env.mjs";

function createCommentsPrivacyEnv() {
  const users = new Map([
    ["user-abcdef", {
      id: "user-abcdef",
      email: "hidden@example.com",
      nickname: "",
      role: "user",
      created_at: "2024-01-01T00:00:00.000Z",
    }],
  ]);
  const comments = [
    {
      id: "comment-1",
      song_id: "song-1",
      user_id: "user-abcdef",
      body: "Hello",
      created_at: "2024-01-01 10:00:00",
      updated_at: "2024-01-01 10:00:00",
      author_nickname: "",
    },
  ];

  const resolver = withFreshSchemaMarkers(async (sql, params, method) => {
    if (sql.includes("SELECT id, status, is_admin_content") && sql.includes("FROM songs")) {
      return { id: "song-1", status: "published", is_admin_content: 0 };
    }
    if (method === "all" && sql.includes("FROM song_comments c") && sql.includes("u.nickname AS author_nickname")) {
      return comments.map((comment) => ({
        ...comment,
        author_nickname: String(users.get(comment.user_id)?.nickname || ""),
      }));
    }
    return method === "all" ? [] : null;
  });

  return createMockEnv(resolver);
}

test("public comments never expose email when commenter has no nickname", async () => {
  const env = createCommentsPrivacyEnv();
  const response = await onRequestGet({
    env,
    request: new Request("https://example.com/api/songs/song-1/comments"),
    params: { id: "song-1" },
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.items.length, 1);
  assert.equal(body.items[0].author_name, "user-abcdef");
  assert.doesNotMatch(body.items[0].author_name, /@/);
});
