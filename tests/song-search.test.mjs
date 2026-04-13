import test from "node:test";
import assert from "node:assert/strict";

import {
  normalizeSearchText,
  tokenizeSearchText,
  generateDeleteKeys,
  damerauLevenshtein,
  rankSearchCandidatesForQuery,
} from "../functions/_lib/song-search.mjs";

test("normalizeSearchText folds diacritics and punctuation", () => {
  assert.equal(normalizeSearchText("  Héllo, Мир!  "), "hello мир");
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
  assert.equal(damerauLevenshtein("товарищ", "товрaищ".replace("a", "а"), 2), 1);
  assert.ok(damerauLevenshtein("товарищ", "песня", 2) > 2);
});

test("rankSearchCandidatesForQuery prioritizes closest title over longer title matches", () => {
  const ranked = rankSearchCandidatesForQuery("эх ухнем", [
    {
      id: "long-title",
      title: "Эх, дубинушка, ухнем!",
      lyrics: "Эх, дубинушка, ухнем!",
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 0,
    },
    {
      id: "closest-title",
      title: "Эй, ухнем!",
      lyrics: "Эй, ухнем!",
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 0,
    },
    {
      id: "other-title",
      title: "Эх, винтовочка, ухнем",
      lyrics: "Эх, дубинушка, ухнем!",
      created_at: "2024-01-01T00:00:00.000Z",
      version_rows: 0,
    },
  ]);

  assert.deepEqual(
    ranked.map((item) => item.id),
    ["closest-title", "long-title", "other-title"]
  );
});
