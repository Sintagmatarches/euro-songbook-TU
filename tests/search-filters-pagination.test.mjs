import test from "node:test";
import assert from "node:assert/strict";

import { searchSongs } from "../functions/_lib/song-search.mjs";
import { createMockEnv } from "./helpers/mock-env.mjs";

function countPlaceholders(segment = "") {
  const matches = String(segment).match(/\?/g);
  return matches ? matches.length : 0;
}

function extractDirectScanRows(sql, params, songs) {
  let index = 0;
  let rows = songs.filter((song) => song.status === "published" && Number(song.is_admin_content || 0) === 0);

  if (sql.includes("lower(coalesce(s.lang, '')) = ?")) {
    const lang = String(params[index++] || "").toLowerCase();
    rows = rows.filter((song) => String(song.lang || "").toLowerCase() === lang);
  }

  if (sql.includes("lower(coalesce(s.country, '')) IN (")) {
    const countryMatch = sql.match(/lower\(coalesce\(s\.country, ''\)\) IN \(([^)]+)\)/);
    const countryParamCount = countPlaceholders(countryMatch?.[1] || "");
    const countries = params.slice(index, index + countryParamCount).map((value) => String(value).toLowerCase());
    index += countryParamCount;
    rows = rows.filter((song) => countries.includes(String(song.country || "").toLowerCase()));
  }

  if (sql.includes("lower(coalesce(s.period, '')) = ?")) {
    const period = String(params[index++] || "").toLowerCase();
    rows = rows.filter((song) => String(song.period || "").toLowerCase() === period);
  }

  const queryTokens = [];
  while (index < params.length) {
    const pattern = String(params[index] || "");
    if (pattern.startsWith("%") && pattern.endsWith("%")) {
      queryTokens.push(pattern.slice(1, -1).replace(/\\([\\%_])/g, "$1"));
      index += 3;
      continue;
    }
    index += 1;
  }

  if (queryTokens.length) {
    rows = rows.filter((song) => {
      const haystack = [
        String(song.title || "").toLowerCase(),
        String(song.subtitle || "").toLowerCase(),
        String(song.lyrics || "").toLowerCase(),
      ];
      return queryTokens.every((token) => haystack.some((field) => field.includes(token)));
    });
  }

  return rows.slice().sort((left, right) => String(left.id).localeCompare(String(right.id)));
}

function createDirectScanEnv(songs) {
  return createMockEnv(async (sql, params, method) => {
    if (sql.includes("SELECT COUNT(*) AS total") && sql.includes("FROM songs s")) {
      return { total: extractDirectScanRows(sql, params, songs).length };
    }
    if (method === "all" && sql.includes("ORDER BY s.id ASC") && sql.includes("FROM songs s")) {
      return extractDirectScanRows(sql, params, songs);
    }
    return method === "all" ? [] : null;
  });
}

test("searchSongs applies lang, country, and period filters during direct-scan fallback", async () => {
  const songs = [
    {
      id: "match-1",
      title: "Stalin March",
      subtitle: "Front choir",
      lyrics: "Stalin leads the march tonight.",
      lang: "ru",
      country: "ussr",
      period: "ww2",
      status: "published",
      is_admin_content: 0,
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 0,
    },
    {
      id: "wrong-lang",
      title: "Stalin March Latvia",
      subtitle: "Front choir",
      lyrics: "Stalin leads the march tonight.",
      lang: "lv",
      country: "ussr",
      period: "ww2",
      status: "published",
      is_admin_content: 0,
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 0,
    },
    {
      id: "wrong-country",
      title: "Stalin March Poland",
      subtitle: "Front choir",
      lyrics: "Stalin leads the march tonight.",
      lang: "ru",
      country: "poland",
      period: "ww2",
      status: "published",
      is_admin_content: 0,
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 0,
    },
    {
      id: "wrong-period",
      title: "Stalin March Early",
      subtitle: "Front choir",
      lyrics: "Stalin leads the march tonight.",
      lang: "ru",
      country: "ussr",
      period: "civil_war",
      status: "published",
      is_admin_content: 0,
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 0,
    },
  ];

  const out = await searchSongs(createDirectScanEnv(songs), {
    q: "stalin",
    page: 1,
    includeAdminContent: false,
    filters: {
      lang: "ru",
      countryValues: ["ussr"],
      period: "ww2",
    },
  });

  assert.equal(out.total, 1);
  assert.equal(out.page, 1);
  assert.equal(out.pages, 1);
  assert.deepEqual(out.items.map((item) => item.id), ["match-1"]);
});

test("searchSongs paginates filtered results for page navigation", async () => {
  const songs = Array.from({ length: 12 }, (_, index) => ({
    id: `page-song-${String(index + 1).padStart(2, "0")}`,
    title: `Stalin Song ${String(index + 1).padStart(2, "0")}`,
    subtitle: "Choir",
    lyrics: "Stalin returns in the chorus.",
    lang: "ru",
    country: "ussr",
    period: "ww2",
    status: "published",
    is_admin_content: 0,
    created_at: "2024-01-01T00:00:00.000Z",
    version_rows: 0,
  }));

  const env = createDirectScanEnv(songs);
  const pageOne = await searchSongs(env, {
    q: "stalin",
    page: 1,
    includeAdminContent: false,
    filters: {
      lang: "ru",
      countryValues: ["ussr"],
      period: "ww2",
    },
  });
  const pageTwo = await searchSongs(env, {
    q: "stalin",
    page: 2,
    includeAdminContent: false,
    filters: {
      lang: "ru",
      countryValues: ["ussr"],
      period: "ww2",
    },
  });

  assert.equal(pageOne.total, 12);
  assert.equal(pageOne.page, 1);
  assert.equal(pageOne.pages, 2);
  assert.equal(pageOne.items.length, 10);
  assert.deepEqual(
    pageOne.items.slice(0, 3).map((item) => item.id),
    ["page-song-01", "page-song-02", "page-song-03"]
  );

  assert.equal(pageTwo.total, 12);
  assert.equal(pageTwo.page, 2);
  assert.equal(pageTwo.pages, 2);
  assert.equal(pageTwo.items.length, 2);
  assert.deepEqual(
    pageTwo.items.map((item) => item.id),
    ["page-song-11", "page-song-12"]
  );
});
