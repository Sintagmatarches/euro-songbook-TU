import test from "node:test";
import assert from "node:assert/strict";

import {
  damerauLevenshtein,
  generateDeleteKeys,
  hasSignificantSearchToken,
  normalizeSearchText,
  rankSearchCandidatesForQuery,
  shouldRunDirectScanFallback,
  tokenizeSearchText,
} from "../functions/_lib/song-search.mjs";

test("normalizeSearchText folds diacritics and punctuation", () => {
  assert.equal(normalizeSearchText("  Hello, Мир!  "), "hello мир");
  assert.equal(normalizeSearchText("Straße -- déjà vu"), "straße deja vu");
});

test("tokenizeSearchText keeps latin and cyrillic words", () => {
  assert.deepEqual(
    tokenizeSearchText("Песня Song 2024", { maxTokens: 10 }).map((item) => item.normalized),
    ["песня", "song", "2024"]
  );
});

test("generateDeleteKeys includes source and reduced variants", () => {
  const deletes = new Set(generateDeleteKeys("товарищ", 2));
  assert.ok(deletes.has("товарищ"));
  assert.ok(deletes.has("товари"));
  assert.ok(deletes.has("оварищ"));
});

test("damerauLevenshtein counts transposition as one edit", () => {
  assert.equal(damerauLevenshtein("abcd", "abdc", 2), 1);
  assert.equal(damerauLevenshtein("tovarish", "tovraish", 2), 1);
  assert.ok(damerauLevenshtein("товарищ", "песня", 2) > 2);
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

test("shouldRunDirectScanFallback uses a five-letter token threshold and skips oversized scans", () => {
  assert.equal(
    shouldRunDirectScanFallback({
      normalized: "путин",
      tokens: [{ normalized: "путин" }],
    }, 400),
    true
  );

  assert.equal(
    shouldRunDirectScanFallback({
      normalized: "белеет парус",
      tokens: [{ normalized: "белеет" }, { normalized: "парус" }],
    }, 400),
    true
  );

  assert.equal(
    shouldRunDirectScanFallback({
      normalized: "белеет парус",
      tokens: [{ normalized: "белеет" }, { normalized: "парус" }],
    }, 5000),
    false
  );
});

test("hasSignificantSearchToken requires at least one five-letter token", () => {
  assert.equal(
    hasSignificantSearchToken({
      normalized: "abc",
      tokens: [{ normalized: "abc" }],
    }),
    false
  );

  assert.equal(
    hasSignificantSearchToken({
      normalized: "abc stalin",
      tokens: [{ normalized: "abc" }, { normalized: "stalin" }],
    }),
    true
  );
});
