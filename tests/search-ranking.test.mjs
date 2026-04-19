import test from "node:test";
import assert from "node:assert/strict";

import { rankSearchCandidatesForQuery, searchSongs } from "../functions/_lib/song-search.mjs";

const QUERY_DEFEAT_US = "to defeat us";
const QUERY_DEFEAT_US_NOW = "to defeat us now";
const QUERY_RU_FULL = "\u0447\u0442\u043e\u0431\u044b \u043d\u0430\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u044c";
const QUERY_RU_SHORT = "\u0447\u0442\u043e\u0431\u044b \u043d\u0430\u0441";
const QUERY_STALIN_YEARS = "\u0441\u0442\u0430\u043b\u0438\u043d\u0441\u043a\u0438\u0445 \u043b\u0435\u0442";
const QUERY_ON_STONE = "\u044f \u043d\u0430 \u043a\u0430\u043c\u0443\u0448\u043a\u0435";
const TANK_TITLE = "\u041f\u0435\u0441\u043d\u044f \u0442\u0430\u043d\u043a\u0438\u0441\u0442\u043e\u0432";
const TANK_LYRICS = "\u041d\u0435 \u0431\u044b\u043b\u043e, \u043d\u0435\u0442 \u0438 \u043d\u0435 \u0431\u0443\u0434\u0435\u0442 \u043d\u0430 \u0441\u0432\u0435\u0442\u0435\n\u0421\u0438\u043b\u044b \u0442\u0430\u043a\u043e\u0439, \u0447\u0442\u043e\u0431\u044b \u043d\u0430\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u044c.\n\u0412 \u0431\u043e\u044e \u043c\u044b \u043f\u043e\u0432\u0441\u044e\u0434\u0443 \u0434\u043e\u0440\u043e\u0433\u0443 \u043d\u0430\u0439\u0434\u0451\u043c.";

function makeSong(id, title, lyrics) {
  return {
    id,
    title,
    subtitle: null,
    lyrics,
    created_at: "2024-01-01T00:00:00.000Z",
    version_rows: 0,
  };
}

test("single-word queries keep exact hits above prefix and fuzzy matches", () => {
  const ranked = rankSearchCandidatesForQuery("khrushchev", [
    makeSong("prefix-title", "Khrushchevskaya Song", "other line"),
    makeSong("exact-lyrics", "Other Song", "Tonight we sing for Khrushchev and the square"),
    makeSong("fuzzy-title", "Khruschev Song", "other line"),
    makeSong("exact-title", "Khrushchev", "other line"),
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["exact-title", "exact-lyrics", "prefix-title", "fuzzy-title"]
  );
});

test.skip("title matches stay above lyrics matches, and lyrics stay above partial title matches", () => {
  const ranked = rankSearchCandidatesForQuery(QUERY_RU_FULL, [
    makeSong("partial-title", "Чтобы наши", "other line"),
    makeSong("lyrics-hit", "Song B", TANK_LYRICS),
    makeSong("title-hit", "Чтобы нас победить", "other line"),
  ]);

  assert.deepEqual(
    ranked.map((item) => [item.id, item.match_bucket]),
    [
      ["title-hit", "exact"],
      ["lyrics-hit", "text"],
      ["partial-title", "partial"],
    ]
  );
});

test("title bucket stays above text bucket even when lyrics contain the full phrase", () => {
  const ranked = rankSearchCandidatesForQuery(QUERY_DEFEAT_US, [
    makeSong("lyrics-phrase", "March Song", "Steel keeps rolling forward, and to defeat us they must break the storm."),
    makeSong("token-bag", "Defeat Us To", "other line"),
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["token-bag", "lyrics-phrase"]
  );
});

test("literal title hits are kept strong even when lyrics matches are stronger text hits", () => {
  const ranked = rankSearchCandidatesForQuery("stalin banner", [
    makeSong("title-literal", "Stalin March", "other line"),
    makeSong("lyrics-coverage", "Song B", "The stalin banner rises over the square."),
    makeSong("lyrics-partial", "Song C", "Only Stalin is remembered here."),
  ]);

  assert.deepEqual(
    ranked.map((item) => [item.id, item.match_bucket, item.match_rank_class]),
    [
      ["title-literal", "exact", "strong"],
      ["lyrics-coverage", "text", "strong"],
      ["lyrics-partial", "partial", "weak"],
    ]
  );
});

test("longer adjacent query subphrases outrank shorter adjacent subphrases", () => {
  const ranked = rankSearchCandidatesForQuery(QUERY_DEFEAT_US_NOW, [
    makeSong("adjacent-three", "March Song", "We know that to defeat us at dawn they must arrive now."),
    makeSong("adjacent-two", "Other Song", "They plan to defeat many armies and later us now."),
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["adjacent-three", "adjacent-two"]
  );
});

test("adjacent two-word phrases outrank all-terms-separated matches", () => {
  const ranked = rankSearchCandidatesForQuery(QUERY_RU_FULL, [
    makeSong(
      "adjacent-phrase",
      "Song A",
      "\u041c\u044b \u0437\u043d\u0430\u0435\u043c, \u0447\u0442\u043e\u0431\u044b \u043d\u0430\u0441 \u0443\u0436\u0435 \u043d\u0438\u043a\u0442\u043e \u043d\u0435 \u0441\u043c\u043e\u0433 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u044c."
    ),
    makeSong(
      "all-terms",
      "Song B",
      "\u041c\u044b \u0437\u043d\u0430\u0435\u043c, \u0447\u0442\u043e\u0431\u044b \u0432\u0440\u0430\u0433\u0438 \u043d\u0430\u0441 \u043a\u043e\u0433\u0434\u0430-\u043d\u0438\u0431\u0443\u0434\u044c \u043d\u0435 \u0441\u043c\u043e\u0433\u043b\u0438 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u044c."
    ),
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["adjacent-phrase", "all-terms"]
  );
});

test("all-terms matches outrank weak single-term and prefix noise", () => {
  const ranked = rankSearchCandidatesForQuery(QUERY_RU_SHORT, [
    makeSong(
      "all-terms",
      "Song A",
      "\u041c\u044b \u0437\u043d\u0430\u0435\u043c, \u0447\u0442\u043e\u0431\u044b \u0432\u0440\u0430\u0433\u0438 \u043f\u043e\u043c\u043d\u0438\u043b\u0438 \u043f\u0440\u043e \u043d\u0430\u0441."
    ),
    makeSong(
      "weak-noise",
      "Song B",
      "\u041d\u0430\u043c \u0432\u0430\u0436\u043d\u043e, \u0447\u0442\u043e\u0431\u044b \u043d\u0438\u043a\u0442\u043e \u043d\u0435 \u0437\u0430\u0431\u044b\u043b."
    ),
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["all-terms", "weak-noise"]
  );
  assert.equal(ranked[1]?.match_rank_class, "weak");
});

test("weak matches are hidden for three-word queries when stronger phrase-like matches exist", () => {
  const ranked = rankSearchCandidatesForQuery(QUERY_RU_FULL, [
    makeSong("tank-song", TANK_TITLE, TANK_LYRICS),
    makeSong(
      "weak-noise",
      "Song B",
      "\u041d\u0430\u043c \u043d\u0435 \u0437\u0430\u0431\u044b\u0442\u044c \u043f\u0440\u043e \u043d\u0430\u0441, \u0438 \u0447\u0442\u043e\u0431\u044b \u0432\u0441\u0435 \u0441\u043b\u044b\u0448\u0430\u043b\u0438 \u043d\u0430\u0448 \u0433\u043e\u043b\u043e\u0441."
    ),
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["tank-song"]
  );
});

test("single significant lyrics hits fall into partial while short-token-only noise stays below them", () => {
  const ranked = rankSearchCandidatesForQuery("stalin and banner", [
    makeSong("text-hit", "Song A", "The stalin and banner refrain returns tonight."),
    makeSong("partial-hit", "Song B", "Stalin returns in memory."),
    makeSong("short-noise", "Song C", "And we keep moving."),
  ]);

  assert.deepEqual(
    ranked.map((item) => [item.id, item.match_bucket]),
    [
      ["text-hit", "text"],
      ["partial-hit", "partial"],
    ]
  );
});

test("weak matches still appear when they are the only available results", () => {
  const ranked = rankSearchCandidatesForQuery(QUERY_RU_FULL, [
    makeSong(
      "weak-a",
      "Song A",
      "\u0427\u0442\u043e\u0431\u044b \u043f\u043e\u043c\u043d\u0438\u043b\u0438 \u043f\u0440\u043e \u043d\u0430\u0441 \u0432\u0441\u0435."
    ),
    makeSong(
      "weak-b",
      "Song B",
      "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u044c \u0438\u0445 \u043d\u0435\u043b\u044c\u0437\u044f, \u043d\u043e \u043d\u0430\u0441 \u0432\u0441\u043f\u043e\u043c\u043d\u044f\u0442."
    ),
  ]);

  assert.ok(ranked.length >= 1);
  assert.ok(ranked.every((item) => item.match_rank_class === "weak"));
});

test("short phrase searches rank contiguous phrase hits above split matches", () => {
  const ranked = rankSearchCandidatesForQuery(QUERY_RU_SHORT, [
    makeSong(
      "contiguous",
      "Song A",
      "\u0421\u0438\u043b\u044b \u0442\u0430\u043a\u043e\u0439, \u0447\u0442\u043e\u0431\u044b \u043d\u0430\u0441 \u043d\u0438\u043a\u0442\u043e \u043d\u0435 \u0441\u043b\u043e\u043c\u0438\u043b."
    ),
    makeSong(
      "split",
      "Song B",
      "\u0427\u0442\u043e\u0431\u044b \u0432\u0440\u0430\u0433\u0438 \u043f\u0440\u043e \u043d\u0430\u0441 \u043a\u043e\u0433\u0434\u0430-\u043d\u0438\u0431\u0443\u0434\u044c \u0443\u0437\u043d\u0430\u043b\u0438."
    ),
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["contiguous", "split"]
  );
});

test("two-word phrase hits suppress weak fragment tails for short trailing tokens", () => {
  const ranked = rankSearchCandidatesForQuery(QUERY_STALIN_YEARS, [
    makeSong(
      "phrase-hit",
      "\u0415\u0441\u043b\u0438 \u0421\u0442\u0430\u043b\u0438\u043d \u0441\u043a\u0430\u0437\u0430\u043b",
      "\u0427\u0435\u043c \u0432\u0435\u043b\u0438\u0447\u0438\u0435 \u0421\u0442\u0430\u043b\u0438\u043d\u0441\u043a\u0438\u0445 \u043b\u0435\u0442."
    ),
    makeSong(
      "strong-fragment",
      "Song B",
      "\u041f\u0430\u043c\u044f\u0442\u044c \u0441\u0442\u0430\u043b\u0438\u043d\u0441\u043a\u0438\u0445 \u043f\u043e\u0445\u043e\u0434\u043e\u0432 \u0436\u0438\u0432\u0430."
    ),
    makeSong(
      "short-fragment",
      "\u041c\u0430\u043b\u0435\u043d\u044c\u043a\u0438\u0439 \u043b\u0451\u0442\u0447\u0438\u043a",
      "\u041c\u043e\u0439 \u043c\u0438\u043b\u044b\u0439 \u0442\u043e\u0432\u0430\u0440\u0438\u0449, \u043c\u043e\u0439 \u043b\u0451\u0442\u0447\u0438\u043a."
    ),
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["phrase-hit"]
  );
});

test("short filler words do not keep fragment-only noise in three-word phrase searches", () => {
  const ranked = rankSearchCandidatesForQuery(QUERY_ON_STONE, [
    makeSong(
      "title-phrase",
      "\u042f \u043d\u0430 \u043a\u0430\u043c\u0443\u0448\u043a\u0435 \u0441\u0438\u0436\u0443",
      "\u041f\u0435\u0441\u043d\u044f \u0437\u0432\u0443\u0447\u0438\u0442."
    ),
    makeSong(
      "lyrics-phrase",
      "Song B",
      "\u041e\u0439, \u043d\u0430 \u043a\u0430\u043c\u0443\u0448\u043a\u0435 \u0441\u0438\u0434\u0438\u0442 \u0434\u0435\u0432\u0438\u0446\u0430."
    ),
    makeSong(
      "noise-yana",
      "\u042f \u043d\u0430 \u0433\u043e\u0440\u043a\u0443 \u0448\u043b\u0430",
      "\u042f \u043d\u0430 \u0433\u043e\u0440\u043a\u0443 \u0448\u043b\u0430."
    ),
    makeSong(
      "noise-na",
      "\u041d\u0430 \u0440\u0430\u0441\u043f\u0443\u0442\u044c\u0435",
      "\u041d\u0430 \u0440\u0430\u0441\u043f\u0443\u0442\u044c\u0435 \u0432 \u043f\u043e\u043b\u0435."
    ),
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["title-phrase", "lyrics-phrase"]
  );
});

test("one-word exact searches still behave normally", () => {
  const ranked = rankSearchCandidatesForQuery("burelom", [
    makeSong("prefix-hit", "Song A", "Burelomny road opens ahead"),
    makeSong("exact-hit", "Song B", "Any burelom will break before us"),
    makeSong("fuzzy-hit", "Song C", "Burelomx road opens ahead"),
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["exact-hit", "prefix-hit", "fuzzy-hit"]
  );
});

test("whole title exact match beats longer title variants and lyrics matches", () => {
  const ranked = rankSearchCandidatesForQuery("гимн ссср", [
    makeSong("title-longer", "Гимн СССР Немецкий", "other line"),
    makeSong("lyrics-hit", "Song B", "В тексте много раз встречается гимн ссср."),
    makeSong("title-exact", "Гимн СССР", "other line"),
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["title-exact", "title-longer", "lyrics-hit"]
  );
});

test("whole title exact match stays above descriptive title extensions", () => {
  const ranked = rankSearchCandidatesForQuery("катюша", [
    makeSong("title-extended", "Катюша фронтовая", "other line"),
    makeSong("title-exact", "Катюша", "other line"),
    makeSong("lyrics-hit", "Song B", "Катюша вышла на берег."),
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["title-exact", "title-extended", "lyrics-hit"]
  );
});

test("query matching is case-insensitive for title and lyrics buckets", () => {
  const ranked = rankSearchCandidatesForQuery("ЧТОБЫ НАС ПОБЕДИТЬ", [
    makeSong("lyrics-hit", "Song B", TANK_LYRICS),
    makeSong("title-hit", "чтобы нас победить", "other line"),
  ]);

  assert.deepEqual(
    ranked.map((item) => [item.id, item.match_bucket]),
    [
      ["title-hit", "exact"],
      ["lyrics-hit", "text"],
    ]
  );
});

test("searchSongs falls back to a direct song scan and keeps the phrase hit on page one", async () => {
  const songRows = [
    {
      id: "tank-song",
      title: TANK_TITLE,
      subtitle: null,
      lyrics: TANK_LYRICS,
      lang: "ru",
      country: "ussr",
      period: "ussr_1922_1940",
      region: null,
      event: null,
      theme: null,
      verified: 0,
      year: "1939",
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 0,
    },
    {
      id: "split-noise",
      title: "\u0412\u0440\u0435\u043c\u044f \u0432\u044b\u0431\u0440\u0430\u043b\u043e \u043d\u0430\u0441",
      subtitle: null,
      lyrics: "\u0427\u0442\u043e\u0431\u044b \u0434\u0435\u043d\u044c \u044d\u0442\u043e\u0442 \u044f\u0441\u043d\u044b\u0439 \u043d\u0430 \u0437\u0435\u043c\u043b\u0435 \u043d\u0435 \u043f\u043e\u0433\u0430\u0441, \u0441\u0440\u0435\u0434\u0438 \u0442\u044b\u0441\u044f\u0447\u0438 \u0442\u044b\u0441\u044f\u0447 \u0432\u0440\u0435\u043c\u044f \u0432\u044b\u0431\u0440\u0430\u043b\u043e \u043d\u0430\u0441.",
      lang: "ru",
      country: "ussr",
      period: null,
      region: null,
      event: null,
      theme: null,
      verified: 0,
      year: "1942",
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 0,
    },
  ];

  const env = {
    DB: {
      prepare(sql) {
        return {
          bind(...params) {
            return {
              async all() {
                if (sql.includes("ORDER BY s.id ASC")) return { results: songRows };
                return { results: [] };
              },
              async first() {
                if (sql.includes("SELECT COUNT(*) AS total")) return { total: songRows.length };
                return null;
              },
              async run() {
                return {};
              },
            };
          },
        };
      },
    },
  };

  const out = await searchSongs(env, {
    q: QUERY_RU_FULL,
    page: 1,
    filters: {},
    includeAdminContent: false,
  });

  assert.equal(out.total, 1);
  assert.equal(out.items[0]?.id, "tank-song");
  assert.equal(out.items[0]?.match_bucket, "text");
});

test("searchSongs falls back to a direct song scan for a single long token query", async () => {
  const songRows = [
    {
      id: "stalin-song",
      title: "\u0415\u0441\u043b\u0438 \u0421\u0442\u0430\u043b\u0438\u043d \u0441\u043a\u0430\u0437\u0430\u043b",
      subtitle: null,
      lyrics: "\u0421\u0442\u0430\u043b\u0438\u043d \u0432\u0435\u0434\u0451\u0442 \u043d\u0430\u0441 \u043a \u043f\u043e\u0431\u0435\u0434\u0435.",
      lang: "ru",
      country: "ussr",
      period: "ussr_1922_1940",
      region: null,
      event: null,
      theme: null,
      verified: 0,
      year: "1939",
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 0,
    },
  ];

  const env = {
    DB: {
      prepare(sql) {
        return {
          bind() {
            return {
              async all() {
                if (sql.includes("ORDER BY s.id ASC")) return { results: songRows };
                return { results: [] };
              },
              async first() {
                if (sql.includes("SELECT COUNT(*) AS total")) return { total: songRows.length };
                return null;
              },
              async run() {
                return {};
              },
            };
          },
        };
      },
    },
  };

  const out = await searchSongs(env, {
    q: "\u0441\u0442\u0430\u043b\u0438\u043d",
    page: 1,
    filters: {},
    includeAdminContent: false,
  });

  assert.equal(out.total, 1);
  assert.equal(out.items[0]?.id, "stalin-song");
  assert.equal(out.items[0]?.match_bucket, "exact");
});

test("searchSongs finds hits that exist only in a secondary version during direct scan fallback", async () => {
  const songRows = [
    {
      id: "version-only-hit",
      title: "March Song",
      subtitle: null,
      lyrics: "Base version without the searched token.",
      version_titles: "March Song Variant",
      version_lyrics: "Hidden second version keeps the burelom refrain alive.",
      lang: "ru",
      country: "ussr",
      period: "ww2",
      region: null,
      event: null,
      theme: null,
      verified: 0,
      year: "1943",
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 1,
    },
  ];

  const env = {
    DB: {
      prepare(sql) {
        return {
          bind(...params) {
            return {
              async all() {
                if (sql.includes("FROM song_versions") && sql.includes("WHERE song_id IN")) {
                  return {
                    results: [
                      {
                        song_id: "version-only-hit",
                        id: "v2",
                        title: "March Song Variant",
                        lyrics: "Hidden second version keeps the burelom refrain alive.",
                        sort_order: 1,
                      },
                    ],
                  };
                }
                if (sql.includes("ORDER BY s.id ASC")) return { results: songRows };
                return { results: [] };
              },
              async first() {
                if (sql.includes("SELECT COUNT(*) AS total")) return { total: songRows.length };
                return null;
              },
              async run() {
                return {};
              },
            };
          },
        };
      },
    },
  };

  const out = await searchSongs(env, {
    q: "burelom",
    page: 1,
    filters: {},
    includeAdminContent: false,
  });

  assert.equal(out.total, 1);
  assert.equal(out.items[0]?.id, "version-only-hit");
  assert.equal(out.items[0]?.matched_version_id, "v2");
  assert.match(String(out.items[0]?.snippet || ""), /burelom/i);
});

test("searchSongs hides did-you-mean suggestions when corrected queries still have no visible hits", async () => {
  const env = {
    DB: {
      prepare(sql) {
        return {
          bind(...params) {
            return {
              async all() {
                if (sql.includes("FROM song_search_deletes")) {
                  return {
                    results: [
                      {
                        term_norm: "stalin",
                        display_term: "stalin",
                        song_count: 1,
                        title_hits: 1,
                        subtitle_hits: 0,
                        lyrics_hits: 0,
                      },
                    ],
                  };
                }
                if (sql.includes("FROM song_search_terms") || sql.includes("FROM songs_fts") || sql.includes("ORDER BY s.id ASC")) {
                  return { results: [] };
                }
                return { results: [] };
              },
              async first() {
                if (sql.includes("SELECT COUNT(*) AS total")) return { total: 0 };
                return null;
              },
              async run() {
                return {};
              },
            };
          },
        };
      },
    },
  };

  const out = await searchSongs(env, {
    q: "stalni",
    page: 1,
    filters: {},
    includeAdminContent: false,
  });

  assert.deepEqual(out.did_you_mean, []);
  assert.equal(out.total, 0);
});
