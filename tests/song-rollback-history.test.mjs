import test from "node:test";
import assert from "node:assert/strict";

import { onRequestGet as songHistoryHandler } from "../functions/api/admin/songs/[id]/history.js";
import { onRequestPost as songRestoreHandler } from "../functions/api/admin/songs/[id]/restore.js";
import { signJWT } from "../functions/_lib/auth.js";
import { createMockEnv, readJson, withFreshSchemaMarkers } from "./helpers/mock-env.mjs";

const ADMIN_ID = "admin-1";
const SONG_ID = "song-rollback";

function makeAdminUser() {
  return {
    id: ADMIN_ID,
    email: "admin@example.com",
    nickname: "Admin",
    role: "super_admin",
    created_at: "2026-04-13T09:00:00.000Z",
  };
}

async function makeAuthedRequest(url, method = "GET", body = null) {
  const token = await signJWT("0123456789abcdef0123456789abcdef", { sub: ADMIN_ID });
  const headers = new Headers({
    Cookie: `songbook_session=${encodeURIComponent(token)}`,
  });
  if (body != null) {
    headers.set("Content-Type", "application/json");
  }
  return new Request(url, {
    method,
    headers,
    body: body == null ? undefined : JSON.stringify(body),
  });
}

function makeRevisionRow({
  id,
  revisionSeq,
  action,
  snapshot,
  createdAt,
  restoredFromRevisionId = null,
}) {
  return {
    id,
    song_id: SONG_ID,
    revision_seq: revisionSeq,
    action,
    actor_user_id: ADMIN_ID,
    restored_from_revision_id: restoredFromRevisionId,
    snapshot_json: JSON.stringify(snapshot),
    created_at: createdAt,
    actor_email: "admin@example.com",
    actor_nickname: "Admin",
  };
}

function createHistoryEnv() {
  const deletedSnapshot = {
    id: SONG_ID,
    title: "Deleted Song",
    lang: "ru",
    country: "Estonia",
    status: "published",
    lyrics: "Deleted text",
    links: [],
    versions: [],
    tags: ["archive"],
    is_deleted: 1,
  };
  const liveSnapshot = {
    ...deletedSnapshot,
    title: "Live Song",
    lyrics: "Live text",
    is_deleted: 0,
  };
  const revisions = [
    makeRevisionRow({
      id: "rev-delete",
      revisionSeq: 2,
      action: "delete",
      snapshot: deletedSnapshot,
      createdAt: "2026-04-13T10:00:00.000Z",
    }),
    makeRevisionRow({
      id: "rev-create",
      revisionSeq: 1,
      action: "create",
      snapshot: liveSnapshot,
      createdAt: "2026-04-13T09:00:00.000Z",
    }),
  ];

  const resolver = withFreshSchemaMarkers(async (sql, params, method) => {
    if (sql.includes("FROM sqlite_master") && String(params?.[0] || "").toLowerCase() === "users") {
      return { name: "users" };
    }
    if (sql.includes("FROM sqlite_master") && String(params?.[0] || "").toLowerCase() === "rate_limits") {
      return { name: "rate_limits" };
    }
    if (sql.includes("SELECT id,email,nickname,role,created_at FROM users WHERE id=?")) {
      return makeAdminUser();
    }
    if (sql.includes("SELECT permission FROM user_permissions WHERE user_id=?")) {
      return [];
    }
    if (sql.includes("SELECT lang FROM user_scope_languages WHERE user_id=?")) {
      return [];
    }
    if (sql.includes("SELECT * FROM songs WHERE id=?")) {
      return null;
    }
    if (sql.includes("WHERE r.song_id=?") && sql.includes("ORDER BY r.revision_seq DESC") && sql.includes("LIMIT 1")) {
      return revisions[0];
    }
    if (sql.includes("WHERE r.song_id=?") && sql.includes("ORDER BY r.revision_seq DESC") && sql.includes("LIMIT ?")) {
      return revisions;
    }
    return method === "all" ? [] : null;
  });

  return createMockEnv(resolver);
}

function createRestoreEnv() {
  const state = {
    song: {
      id: SONG_ID,
      title: "Live Song",
      subtitle: null,
      lang: "ru",
      country: "Estonia",
      period: null,
      region: null,
      event: null,
      theme: null,
      verified: 0,
      year: null,
      source: null,
      notes: null,
      lyrics: "Live text",
      verified_translation: null,
      lyrics_meta_json: "{}",
      tags_json: "[]",
      is_admin_content: 0,
      created_by: ADMIN_ID,
      updated_by: ADMIN_ID,
      lang_locked: 1,
      status: "published",
      created_at: "2026-04-13T09:00:00.000Z",
      updated_at: "2026-04-13T09:30:00.000Z",
    },
    revisions: [
      makeRevisionRow({
        id: "rev-delete",
        revisionSeq: 2,
        action: "delete",
        snapshot: {
          id: SONG_ID,
          title: "Live Song",
          lang: "ru",
          country: "Estonia",
          status: "published",
          lyrics: "Live text",
          links: [],
          versions: [],
          tags: [],
          is_deleted: 1,
        },
        createdAt: "2026-04-13T10:00:00.000Z",
      }),
    ],
    deletedSongIds: [],
    searchDeletes: [],
  };

  const resolver = withFreshSchemaMarkers(async (sql, params, method) => {
    if (sql.includes("FROM sqlite_master") && String(params?.[0] || "").toLowerCase() === "users") {
      return { name: "users" };
    }
    if (sql.includes("FROM sqlite_master") && String(params?.[0] || "").toLowerCase() === "rate_limits") {
      return { name: "rate_limits" };
    }
    if (sql.includes("SELECT id,email,nickname,role,created_at FROM users WHERE id=?")) {
      return makeAdminUser();
    }
    if (sql.includes("SELECT permission FROM user_permissions WHERE user_id=?")) {
      return [];
    }
    if (sql.includes("SELECT lang FROM user_scope_languages WHERE user_id=?")) {
      return [];
    }
    if (sql.includes("WHERE r.song_id=? AND r.id=?")) {
      return state.revisions.find((row) => row.id === String(params?.[1] || "")) || null;
    }
    if (sql.includes("SELECT * FROM songs WHERE id=?")) {
      return state.song && String(state.song.id || "") === String(params?.[0] || "") ? state.song : null;
    }
    if (sql.includes("FROM song_links") && sql.includes("WHERE song_id=?")) {
      return [];
    }
    if (sql.includes("FROM song_versions") && sql.includes("WHERE song_id=?")) {
      return [];
    }
    if (sql.includes("DELETE FROM song_versions WHERE song_id=?")) {
      return { success: true };
    }
    if (sql.includes("DELETE FROM song_links WHERE song_id=?")) {
      return { success: true };
    }
    if (sql.includes("DELETE FROM favorites WHERE song_id=?")) {
      return { success: true };
    }
    if (sql.includes("DELETE FROM songs WHERE id=?")) {
      state.deletedSongIds.push(String(params?.[0] || ""));
      state.song = null;
      return { success: true };
    }
    if (sql.includes("SELECT DISTINCT term_norm FROM song_search_terms WHERE song_id=?")) {
      return [];
    }
    if (sql.includes("DELETE FROM songs_fts WHERE song_id=?")) {
      state.searchDeletes.push(String(params?.[0] || ""));
      return { success: true };
    }
    if (sql.includes("DELETE FROM song_search_terms WHERE song_id=?")) {
      return { success: true };
    }
    if (sql.includes("SELECT COALESCE(MAX(revision_seq), 0) + 1 AS next_seq")) {
      const maxSeq = state.revisions.reduce((acc, row) => Math.max(acc, Number(row.revision_seq || 0)), 0);
      return { next_seq: maxSeq + 1 };
    }
    if (sql.includes("INSERT INTO song_revisions")) {
      state.revisions.push({
        id: params[0],
        song_id: params[1],
        revision_seq: params[2],
        action: params[3],
        actor_user_id: params[4],
        restored_from_revision_id: params[5],
        snapshot_json: params[6],
        created_at: params[7],
      });
      return { success: true };
    }
    return method === "all" ? [] : null;
  });

  return {
    env: createMockEnv(resolver),
    state,
  };
}

test("song history exposes deleted songs from the latest revision snapshot", async () => {
  const env = createHistoryEnv();
  const response = await songHistoryHandler({
    env,
    request: await makeAuthedRequest(`https://example.com/api/admin/songs/${SONG_ID}/history`),
    params: { id: SONG_ID },
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.song_id, SONG_ID);
  assert.equal(body.is_deleted, true);
  assert.equal(body.current_revision_id, "rev-delete");
  assert.equal(body.items.length, 2);
  assert.equal(body.items[0].action, "delete");
  assert.equal(body.items[0].snapshot.is_deleted, 1);
  assert.equal(body.items[1].snapshot.is_deleted, 0);
});

test("restore endpoint can re-apply a deleted revision and removes the live song", async () => {
  const { env, state } = createRestoreEnv();
  const response = await songRestoreHandler({
    env,
    request: await makeAuthedRequest(
      `https://example.com/api/admin/songs/${SONG_ID}/restore`,
      "POST",
      { revision_id: "rev-delete" }
    ),
    params: { id: SONG_ID },
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.ok, true);
  assert.equal(body.is_deleted, true);
  assert.deepEqual(state.deletedSongIds, [SONG_ID]);
  assert.deepEqual(state.searchDeletes, [SONG_ID]);
  assert.equal(state.revisions.at(-1)?.action, "restore");
  assert.equal(JSON.parse(state.revisions.at(-1)?.snapshot_json || "{}").is_deleted, 1);
});
