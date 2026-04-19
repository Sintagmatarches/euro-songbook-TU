import test from "node:test";
import assert from "node:assert/strict";

import { createDraft } from "../functions/_lib/drafts.js";
import { onRequestGet as draftsListHandler } from "../functions/api/drafts.js";
import { signJWT } from "../functions/_lib/auth.js";
import { createMockEnv, readJson, withFreshSchemaMarkers } from "./helpers/mock-env.mjs";

const USER_ID = "user-1";
const SONG_ID = "song-1";

async function makeAuthedRequest(url) {
  const token = await signJWT("0123456789abcdef0123456789abcdef", { sub: USER_ID });
  const headers = new Headers({
    Cookie: `songbook_session=${encodeURIComponent(token)}`,
  });
  return new Request(url, { headers });
}

test("createDraft reuses an existing active owner draft for the same song", async () => {
  const state = {
    inserts: 0,
  };

  const resolver = withFreshSchemaMarkers(async (sql, params, method) => {
    if (sql.includes("FROM sqlite_master") && String(params?.[0] || "").toLowerCase() === "users") {
      return { name: "users" };
    }
    if (sql.includes("FROM sqlite_master") && String(params?.[0] || "").toLowerCase() === "rate_limits") {
      return { name: "rate_limits" };
    }
    if (sql.includes("FROM drafts") && sql.includes("owner_user_id=?") && sql.includes("song_id=?")) {
      return { id: "draft-existing" };
    }
    if (sql.includes("INSERT INTO drafts")) {
      state.inserts += 1;
      return { success: true };
    }
    if (sql.includes("SELECT * FROM songs WHERE id=?")) {
      return {
        id: SONG_ID,
        title: "Song title",
        subtitle: "",
        lang: "et",
        country: "Estonia",
        period: "",
        region: "",
        event: "",
        theme: "",
        verified: 0,
        year: "",
        source: "",
        notes: "",
        verified_translation: "",
        lyrics: "Line 1",
      };
    }
    return method === "all" ? [] : null;
  });

  const env = createMockEnv(resolver);
  const draftId = await createDraft(env, { userId: USER_ID, songId: SONG_ID });

  assert.equal(draftId, "draft-existing");
  assert.equal(state.inserts, 0);
});

test("drafts list collapses legacy duplicate drafts for the same owner and song", async () => {
  const duplicateRows = [
    {
      id: "draft-new",
      song_id: SONG_ID,
      owner_user_id: USER_ID,
      status: "draft",
      version: 5,
      created_at: "2026-04-17T09:00:00.000Z",
      updated_at: "2026-04-17T10:00:00.000Z",
      snapshot_title: "metsavendade laul",
      snapshot_subtitle: "",
      snapshot_lang: "et",
      snapshot_country: "Estonia",
      snapshot_period: "forest brothers",
      snapshot_year: "",
      snippet: "new snippet",
      owner_nickname: "User",
      is_owner: 1,
    },
    {
      id: "draft-old",
      song_id: SONG_ID,
      owner_user_id: USER_ID,
      status: "draft",
      version: 3,
      created_at: "2026-04-16T09:00:00.000Z",
      updated_at: "2026-04-16T10:00:00.000Z",
      snapshot_title: "metsavendade laul",
      snapshot_subtitle: "",
      snapshot_lang: "et",
      snapshot_country: "Estonia",
      snapshot_period: "forest brothers",
      snapshot_year: "",
      snippet: "old snippet",
      owner_nickname: "User",
      is_owner: 1,
    },
    {
      id: "draft-standalone",
      song_id: null,
      owner_user_id: USER_ID,
      status: "draft",
      version: 1,
      created_at: "2026-04-17T08:00:00.000Z",
      updated_at: "2026-04-17T08:30:00.000Z",
      snapshot_title: "independent draft",
      snapshot_subtitle: "",
      snapshot_lang: "en",
      snapshot_country: "",
      snapshot_period: "",
      snapshot_year: "",
      snippet: "standalone",
      owner_nickname: "User",
      is_owner: 1,
    },
  ];

  const resolver = withFreshSchemaMarkers(async (sql, params, method) => {
    if (sql.includes("FROM sqlite_master") && String(params?.[0] || "").toLowerCase() === "users") {
      return { name: "users" };
    }
    if (sql.includes("FROM sqlite_master") && String(params?.[0] || "").toLowerCase() === "rate_limits") {
      return { name: "rate_limits" };
    }
    if (sql.includes("SELECT d.id, d.song_id, d.owner_user_id")) {
      return duplicateRows;
    }
    return method === "all" ? [] : null;
  });

  const env = createMockEnv(resolver);
  const response = await draftsListHandler({
    env,
    request: await makeAuthedRequest("https://example.com/api/drafts?status=draft"),
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.items.length, 2);
  assert.deepEqual(body.items.map((item) => item.id), ["draft-new", "draft-standalone"]);
});
