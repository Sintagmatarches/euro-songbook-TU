import test from "node:test";
import assert from "node:assert/strict";

import {
  collectPreviewHighlightRanges,
  repairPreviewOcrSpacing,
  selectSearchPreviewLines,
  tokenizePreviewSearchQuery,
} from "../shared/search-preview.js";

test("selectSearchPreviewLines returns the first three content lines without a query", () => {
  const preview = selectSearchPreviewLines({
    title: "Song Title",
    lyrics: "Song Title\n(chorus)\nfirst line\nsecond line\nthird line\nfourth line",
    maxLines: 3,
  });

  assert.deepEqual(preview.lines, ["first line", "second line", "third line"]);
  assert.equal(preview.truncated, true);
  assert.equal(preview.matched, false);
});

test("selectSearchPreviewLines centers the preview around the match", () => {
  const preview = selectSearchPreviewLines({
    title: "Song Title",
    lyrics: "alpha\nbeta\nkhrushchev appears here\ngamma\ndelta",
    query: "khrushchev",
    maxLines: 3,
  });

  assert.deepEqual(preview.lines, ["beta", "khrushchev appears here", "gamma"]);
  assert.equal(preview.matched, true);
});

test("selectSearchPreviewLines always pads to exactly three lines", () => {
  const preview = selectSearchPreviewLines({
    title: "Song Title",
    lyrics: "lonely line",
    maxLines: 3,
  });

  assert.deepEqual(preview.lines, ["lonely line", "", ""]);
  assert.equal(preview.truncated, false);
});

test("collectPreviewHighlightRanges matches normalized letters like e and yo", () => {
  const line = "\u041f\u0435\u0441\u043d\u044f \u043f\u0440\u043e \u0425\u0440\u0443\u0449\u0451\u0432 \u0438 \u043f\u043b\u043e\u0449\u0430\u0434\u044c";
  const tokens = tokenizePreviewSearchQuery("\u0425\u0440\u0443\u0449\u0435\u0432");
  const ranges = collectPreviewHighlightRanges(line, tokens);

  assert.deepEqual(
    ranges.map((item) => line.slice(item.start, item.end)),
    ["\u0425\u0440\u0443\u0449\u0451\u0432"]
  );
});

test("repairPreviewOcrSpacing collapses obvious split OCR fragments inside a word", () => {
  assert.equal(
    repairPreviewOcrSpacing("\u041f\u0440\u0438\u043f\u0435\u043a\u0430\u043b\u0438\u0441\u044f \u0443 \u0441\u043e\u043a\u043e\u043b\u0438\u043a\u0430 \u0436\u0435\u043b\u0442\u044b \u043e\u043d\u0438 \u043d \u043e \u0436\u0443\u043d\u044c\u043a\u0438,"),
    "\u041f\u0440\u0438\u043f\u0435\u043a\u0430\u043b\u0438\u0441\u044f \u0443 \u0441\u043e\u043a\u043e\u043b\u0438\u043a\u0430 \u0436\u0435\u043b\u0442\u044b \u043e\u043d\u0438 \u043d\u043e\u0436\u0443\u043d\u044c\u043a\u0438,"
  );
});

test("collectPreviewHighlightRanges does not fuzzy-match a one-letter fragment for a short token", () => {
  const line = "\u043e\u043d\u0438 \u043d \u043e \u0436\u0443\u043d\u044c\u043a\u0438";
  const tokens = tokenizePreviewSearchQuery("\u044f \u043d\u0430 \u043a\u0430\u043c\u0443\u0448\u043a\u0435");
  const ranges = collectPreviewHighlightRanges(line, tokens);

  assert.deepEqual(ranges, []);
});
