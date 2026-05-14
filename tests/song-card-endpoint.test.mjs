import test from "node:test";
import assert from "node:assert/strict";

import { onRequestGet } from "../functions/api/songs/[id].js";
import { signJWT } from "../functions/_lib/auth.js";
import { createMockEnv, readJson, withFreshSchemaMarkers } from "./helpers/mock-env.mjs";

function createSongEnv() {
  const songs = new Map([
    [
      "song-public",
      {
        id: "song-public",
        title: "March of the River",
        subtitle: "Workers choir",
        lang: "ru",
        country: "ussr",
        period: "ww2",
        region: "north",
        event: "front",
        theme: "labor",
        verified: 1,
        year: "1942",
        source: "Archive",
        notes: "editor-only",
        verified_translation: "Checked",
        is_admin_content: 0,
        status: "published",
        tags_json: '["march","river"]',
        lyrics: "River line one\nRiver line two",
        lyrics_meta_json: '{"sections":["verse"]}',
        created_by: null,
        updated_by: null,
      },
    ],
    [
      "song-chords",
      {
        id: "song-chords",
        title: "Rainbow Song",
        subtitle: "Band",
        lang: "uk",
        country: "ukraine_1991",
        verified: 0,
        year: "",
        source: "",
        notes: "",
        verified_translation: "",
        is_admin_content: 0,
        status: "published",
        tags_json: "[]",
        lyrics: "Em Am G H7(II)\nЯ йшов по воді і назад озирався\nПрограш: Gm Bb Cm\nF\nC7(III) H7(II)\nНавіки залишитись тут",
        lyrics_meta_json: "{}",
        created_by: null,
        updated_by: null,
      },
    ],
    [
      "song-draft",
      {
        id: "song-draft",
        title: "Draft Song",
        lang: "ru",
        lyrics: "Hidden",
        status: "draft",
        is_admin_content: 0,
        tags_json: "[]",
        lyrics_meta_json: "{}",
      },
    ],
    [
      "song-admin",
      {
        id: "song-admin",
        title: "Admin Song",
        lang: "ru",
        lyrics: "Hidden",
        status: "published",
        is_admin_content: 1,
        tags_json: "[]",
        lyrics_meta_json: "{}",
      },
    ],
  ]);

  const versionsBySong = new Map([
    [
      "song-public",
      [
        {
          id: "v-primary",
          title: "Field version",
          lang: "ru",
          lyrics: "Version line one",
          lyrics_meta_json: '{"source":"field"}',
          source: "Notebook",
        },
      ],
    ],
    [
      "song-chords",
      [
        {
          id: "v-chords",
          title: "Chord version",
          lang: "uk",
          lyrics: "Em Am G H7(II)\nА потім побачив тебе",
          lyrics_meta_json: "{}",
          source: "",
        },
      ],
    ],
  ]);

  const linksBySong = new Map([
    [
      "song-public",
      [
        {
          id: "l-1",
          title: "Audio archive",
          url: "https://example.com/audio",
          kind: "audio",
          version_id: "v-primary",
        },
      ],
    ],
  ]);

  const users = new Map([
    ["u-viewer", {
      id: "u-viewer",
      email: "viewer@example.com",
      nickname: "viewer",
      role: "user",
      created_at: "2024-01-01T00:00:00.000Z",
      nickname_updated_at: null,
    }],
    ["u-editor-ru", {
      id: "u-editor-ru",
      email: "editor@example.com",
      nickname: "editor",
      role: "admin",
      created_at: "2024-01-01T00:00:00.000Z",
      nickname_updated_at: null,
    }],
  ]);

  const resolver = withFreshSchemaMarkers(async (sql, params, method) => {
    if (sql.includes("SELECT * FROM songs WHERE id=?")) {
      return songs.get(String(params[0] || "")) || null;
    }
    if (sql.includes("SELECT id,email,nickname,role,created_at,nickname_updated_at FROM users WHERE id=?")) {
      return users.get(String(params[0] || "")) || null;
    }
    if (sql.includes("SELECT permission FROM user_permissions WHERE user_id=?")) {
      if (String(params[0] || "") === "u-editor-ru") {
        return [{ permission: "songs.edit" }];
      }
      return [];
    }
    if (sql.includes("SELECT lang FROM user_scope_languages WHERE user_id=?")) {
      if (String(params[0] || "") === "u-editor-ru") {
        return [{ lang: "ru" }];
      }
      return [];
    }
    if (sql.includes("PRAGMA table_info(song_versions)")) {
      return [
        { name: "id" },
        { name: "song_id" },
        { name: "title" },
        { name: "lang" },
        { name: "lyrics" },
        { name: "lyrics_meta_json" },
        { name: "source" },
        { name: "sort_order" },
      ];
    }
    if (sql.includes("PRAGMA table_info(song_links)")) {
      return [
        { name: "id" },
        { name: "song_id" },
        { name: "title" },
        { name: "url" },
        { name: "kind" },
        { name: "version_id" },
        { name: "sort_order" },
      ];
    }
    if (method === "all" && sql.includes("FROM song_versions")) {
      return versionsBySong.get(String(params[0] || "")) || [];
    }
    if (method === "all" && sql.includes("FROM song_links")) {
      return linksBySong.get(String(params[0] || "")) || [];
    }
    return method === "all" ? [] : null;
  });

  return createMockEnv(resolver);
}

async function authHeader(env, payload) {
  const token = await signJWT(env.JWT_SECRET, payload);
  return { Authorization: `Bearer ${token}` };
}

test("song card endpoint returns metadata, versions, and external links", async () => {
  const env = createSongEnv();
  const response = await onRequestGet({
    env,
    request: new Request("https://example.com/api/songs/song-public"),
    params: { id: "song-public" },
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.title, "March of the River");
  assert.equal(body.country, "ussr");
  assert.equal(body.period, "ww2");
  assert.equal(body.verified, true);
  assert.deepEqual(body.tags, ["march", "river"]);
  assert.deepEqual(body.lyrics_meta_json, { sections: ["verse"] });
  assert.equal(body.versions.length, 1);
  assert.deepEqual(body.versions[0].lyrics_meta_json, { source: "field" });
  assert.equal(body.links.length, 1);
  assert.equal(body.links[0].version_id, "v-primary");
});

test("song card endpoint strips chord-only lines from public lyrics payload", async () => {
  const env = createSongEnv();
  const response = await onRequestGet({
    env,
    request: new Request("https://example.com/api/songs/song-chords"),
    params: { id: "song-chords" },
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.lyrics, "Я йшов по воді і назад озирався\nНавіки залишитись тут");
  assert.equal(body.versions.length, 1);
  assert.equal(body.versions[0].lyrics, "А потім побачив тебе");
});

test("song card endpoint hides unpublished songs", async () => {
  const env = createSongEnv();
  const response = await onRequestGet({
    env,
    request: new Request("https://example.com/api/songs/song-draft"),
    params: { id: "song-draft" },
  });

  assert.equal(response.status, 404);
  const body = await readJson(response);
  assert.equal(body.error, "Not found");
});

test("song card endpoint hides admin-only songs from visitors", async () => {
  const env = createSongEnv();
  const response = await onRequestGet({
    env,
    request: new Request("https://example.com/api/songs/song-admin"),
    params: { id: "song-admin" },
  });

  assert.equal(response.status, 404);
  const body = await readJson(response);
  assert.equal(body.error, "Not found");
});

test("include_editor does not expose editor notes to a regular authenticated user", async () => {
  const env = createSongEnv();
  const headers = await authHeader(env, {
    sub: "u-viewer",
    email: "viewer@example.com",
    nickname: "viewer",
    role: "user",
  });
  const response = await onRequestGet({
    env,
    request: new Request("https://example.com/api/songs/song-public?include_editor=1", { headers }),
    params: { id: "song-public" },
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.notes, "");
});

test("include_editor exposes editor notes only to an editor within song language scope", async () => {
  const env = createSongEnv();
  const headers = await authHeader(env, {
    sub: "u-editor-ru",
    email: "editor@example.com",
    nickname: "editor",
    role: "admin",
  });
  const response = await onRequestGet({
    env,
    request: new Request("https://example.com/api/songs/song-public?include_editor=1", { headers }),
    params: { id: "song-public" },
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.notes, "editor-only");
});
