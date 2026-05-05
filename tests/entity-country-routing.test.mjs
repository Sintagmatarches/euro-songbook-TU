import test from "node:test";
import assert from "node:assert/strict";

import { onRequestGet } from "../functions/api/songs.js";
import { createMockEnv, readJson, withFreshSchemaMarkers } from "./helpers/mock-env.mjs";

function createBrowseEnv() {
  const captured = [];
  const resolver = withFreshSchemaMarkers(async (sql, params, method) => {
    if (sql.includes("SELECT name FROM sqlite_master WHERE type='table'")) {
      const name = String(params[0] || "");
      if (name === "users" || name === "rate_limits") return { name };
      return null;
    }
    if (sql.includes("PRAGMA table_info(songs)")) {
      return [
        { name: "region" },
        { name: "event" },
        { name: "theme" },
        { name: "verified_translation" },
        { name: "lyrics_meta_json" },
      ];
    }
    if (sql.includes("SELECT COUNT(DISTINCT") && sql.includes("FROM songs s")) {
      captured.push({ sql, params, method: "count" });
      return { c: 1 };
    }
    if (method === "all" && sql.includes("FROM ranked")) {
      captured.push({ sql, params, method: "rows" });
      return [{
        id: "empire-song-1",
        title: "Imperial Anthem",
        subtitle: "",
        lyrics: "",
        lang: "ru",
        country: "russian_empire_1900_1917",
        period: "russian_empire",
        region: "",
        event: "",
        theme: "",
        verified: 0,
        year: "1910",
        created_at: "2024-01-01T00:00:00.000Z",
        snippet: "",
        version_rows: 0,
      }];
    }
    return method === "all" ? [] : null;
  });
  return { env: createMockEnv(resolver), captured };
}

test("entity own-country browse stays exact without inheriting descendants", async () => {
  const { env, captured } = createBrowseEnv();
  const response = await onRequestGet({
    env,
    request: new Request("https://example.com/api/songs?entity=%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B9%D1%81%D0%BA%D0%B0%D1%8F%20%D0%B8%D0%BC%D0%BF%D0%B5%D1%80%D0%B8%D1%8F&path=%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B9%D1%81%D0%BA%D0%B0%D1%8F%20%D0%B8%D0%BC%D0%BF%D0%B5%D1%80%D0%B8%D1%8F&country=russian_empire_1900_1917&adv=0&searched=1&page=1"),
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.total, 1);
  assert.equal(body.items.length, 1);

  const countQuery = captured.find((entry) => entry.method === "count");
  assert.ok(countQuery);
  const countries = countQuery.params.filter((value) => typeof value === "string" && /^[a-z0-9_]+$/i.test(value));
  assert.ok(countries.includes("russian_empire_1900_1917"));
  assert.ok(!countries.includes("ukraine_1917_1991"));
  assert.ok(!countries.includes("poland"));
  assert.ok(!countries.includes("congress_poland"));
});
