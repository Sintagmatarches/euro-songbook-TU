import test from "node:test";
import assert from "node:assert/strict";

import { onRequestGet as countryCountsHandler } from "../functions/api/country-counts.js";
import { onRequestGet as langCountryCountsHandler } from "../functions/api/lang-country-counts.js";
import { onRequestGet as langCountryPeriodCountsHandler } from "../functions/api/lang-country-period-counts.js";
import { createMockEnv, readJson, withFreshSchemaMarkers } from "./helpers/mock-env.mjs";

function makeDuplicateKey(song = {}) {
  const normalize = (value) => String(value ?? "").trim().toLowerCase();
  return [
    normalize(song.title),
    normalize(song.subtitle),
    normalize(song.lang),
    normalize(song.country),
    normalize(song.period),
    String(song.year ?? "").trim(),
    normalize(song.region),
    normalize(song.event),
    normalize(song.theme),
    String(song.lyrics ?? "").replace(/\r/g, ""),
  ].join("|");
}

function createCatalogCountsEnv() {
  const songs = [
    {
      id: "forest-a",
      title: "Metsavendade laul",
      subtitle: "",
      lang: "et",
      country: "forest_brothers",
      period: "forest_brothers",
      year: "",
      region: "",
      event: "",
      theme: "",
      lyrics: "Ai-tshih",
      status: "published",
      is_admin_content: 0,
      created_at: "2026-04-16 20:53:39",
    },
    {
      id: "forest-b",
      title: "Metsavendade laul",
      subtitle: "",
      lang: "et",
      country: "forest_brothers",
      period: "forest_brothers",
      year: "",
      region: "",
      event: "",
      theme: "",
      lyrics: "Ai-tshih",
      status: "published",
      is_admin_content: 0,
      created_at: "2026-04-16 20:54:11",
    },
    {
      id: "forest-c",
      title: "Metsas vend",
      subtitle: "",
      lang: "et",
      country: "forest_brothers",
      period: "forest_brothers",
      year: "",
      region: "",
      event: "",
      theme: "",
      lyrics: "Teine laul",
      status: "published",
      is_admin_content: 0,
      created_at: "2026-04-16 20:54:12",
    },
    {
      id: "estonia-a",
      title: "Tallinna valss",
      subtitle: "",
      lang: "et",
      country: "estonia_1991",
      period: "",
      year: "",
      region: "",
      event: "",
      theme: "",
      lyrics: "Kolmas laul",
      status: "published",
      is_admin_content: 0,
      created_at: "2026-04-16 20:54:13",
    },
  ];

  const publishedSongs = songs.filter((song) => song.status === "published" && Number(song.is_admin_content || 0) === 0);
  const dedupedSongs = Array.from(
    new Map(
      publishedSongs
        .slice()
        .sort((left, right) => String(right.created_at).localeCompare(String(left.created_at)) || String(left.id).localeCompare(String(right.id)))
        .map((song) => [makeDuplicateKey(song), song])
    ).values()
  );

  const groupCounts = (extractKey) => {
    const buckets = new Map();
    for (const song of dedupedSongs) {
      const key = extractKey(song);
      buckets.set(key, (buckets.get(key) || 0) + 1);
    }
    return buckets;
  };

  const resolver = withFreshSchemaMarkers(async (sql, _params, method) => {
    if (method !== "all") return null;

    if (sql.includes("FROM ranked") && sql.includes("GROUP BY lang, country, period")) {
      assert.match(sql, /duplicate_rank = 1/);
      const grouped = groupCounts((song) => `${song.lang}::${song.country}::${song.period}`);
      return Array.from(grouped.entries()).map(([key, count]) => {
        const [lang, country, period] = key.split("::");
        return { lang, country, period, count };
      });
    }

    if (sql.includes("FROM ranked") && sql.includes("GROUP BY lang, country")) {
      assert.match(sql, /duplicate_rank = 1/);
      const grouped = groupCounts((song) => `${song.lang}::${song.country}`);
      return Array.from(grouped.entries()).map(([key, count]) => {
        const [lang, country] = key.split("::");
        return { lang, country, count };
      });
    }

    if (sql.includes("FROM ranked") && sql.includes("GROUP BY country")) {
      assert.match(sql, /duplicate_rank = 1/);
      const grouped = groupCounts((song) => song.country);
      return Array.from(grouped.entries()).map(([country, count]) => ({ country, count }));
    }

    return [];
  });

  return createMockEnv(resolver);
}

test("catalog count endpoints use deduplicated song totals", async () => {
  const env = createCatalogCountsEnv();
  const request = new Request("https://example.com/api/catalog-counts");

  const [countryCountsResponse, langCountryCountsResponse, langCountryPeriodCountsResponse] = await Promise.all([
    countryCountsHandler({ env, request }),
    langCountryCountsHandler({ env, request }),
    langCountryPeriodCountsHandler({ env, request }),
  ]);

  const countryCounts = await readJson(countryCountsResponse);
  const langCountryCounts = await readJson(langCountryCountsResponse);
  const langCountryPeriodCounts = await readJson(langCountryPeriodCountsResponse);

  assert.deepEqual(countryCounts.items, [
    { country: "forest_brothers", count: 2 },
    { country: "estonia_1991", count: 1 },
  ]);

  assert.deepEqual(langCountryCounts.items, [
    { lang: "et", country: "forest_brothers", count: 2 },
    { lang: "et", country: "estonia_1991", count: 1 },
  ]);

  assert.deepEqual(langCountryPeriodCounts.items, []);
});
