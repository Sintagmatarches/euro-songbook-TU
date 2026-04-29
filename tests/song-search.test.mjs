import test from "node:test";
import assert from "node:assert/strict";

import {
  damerauLevenshtein,
  generateDeleteKeys,
  normalizeSearchText,
  rankSearchCandidatesForQuery,
  tokenizeSearchText,
} from "../functions/_lib/song-search.mjs";

test("normalizeSearchText folds diacritics and punctuation", () => {
  assert.equal(normalizeSearchText("  Hello, \u041c\u0438\u0440!  "), "hello \u043c\u0438\u0440");
  assert.equal(normalizeSearchText("Stra\u00dfe -- d\u00e9j\u00e0 vu"), "stra\u00dfe deja vu");
});

test("tokenizeSearchText keeps latin and cyrillic words", () => {
  assert.deepEqual(
    tokenizeSearchText("\u041f\u0435\u0441\u043d\u044f Song 2024", { maxTokens: 10 }).map((item) => item.normalized),
    ["\u043f\u0435\u0441\u043d\u044f", "song", "2024"]
  );
});

test("generateDeleteKeys includes source and reduced variants", () => {
  const deletes = new Set(generateDeleteKeys("\u0442\u043e\u0432\u0430\u0440\u0438\u0449", 2));
  assert.ok(deletes.has("\u0442\u043e\u0432\u0430\u0440\u0438\u0449"));
  assert.ok(deletes.has("\u0442\u043e\u0432\u0430\u0440\u0438"));
  assert.ok(deletes.has("\u043e\u0432\u0430\u0440\u0438\u0449"));
});

test("damerauLevenshtein counts transposition as one edit", () => {
  assert.equal(damerauLevenshtein("abcd", "abdc", 2), 1);
  assert.equal(damerauLevenshtein("tovarish", "tovraish", 2), 1);
  assert.ok(damerauLevenshtein("\u0442\u043e\u0432\u0430\u0440\u0438\u0449", "\u043f\u0435\u0441\u043d\u044f", 2) > 2);
});

test("rankSearchCandidatesForQuery prioritizes closest title over longer title matches", () => {
  const ranked = rankSearchCandidatesForQuery("hey haul", [
    {
      id: "long-title",
      title: "Hey dubinushka haul",
      lyrics: "Hey dubinushka haul",
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 0,
    },
    {
      id: "closest-title",
      title: "Hey haul",
      lyrics: "Hey haul",
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 0,
    },
    {
      id: "other-title",
      title: "Hey rifle haul",
      lyrics: "Hey dubinushka haul",
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 0,
    },
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["closest-title", "other-title", "long-title"]
  );
});
