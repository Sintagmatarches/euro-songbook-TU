import test from "node:test";
import assert from "node:assert/strict";

import { compareSongTexts, normalizeComparableTitle } from "../functions/_lib/song-similarity.mjs";

test("normalizeComparableTitle folds punctuation and case", () => {
  assert.equal(normalizeComparableTitle("  Metsavendade laul! "), "metsavendade laul");
});

test("compareSongTexts merges near-identical lyrics with punctuation differences", () => {
  const left = [
    "Seal metsaserval väikses majas,",
    "kus elasid mu vanemad,",
    "seal metsaserval väikses majas",
    "on pesa teinud punased.",
    "Ai-tshih-ai-tshah-ai-tshah ai velled",
    "me metsavennad oleme.",
  ].join("\n");
  const right = [
    "Seal metsaserval väikses majas,",
    "Kus elasid mu vanemad.",
    "Seal metsaservas väikses majas,",
    "On pesa teinud punased.",
    "Ai tshih ai tshah ai tshah ai velled,",
    "Me metsavennad oleme.",
  ].join("\n");
  const metrics = compareSongTexts(left, right);
  assert.equal(metrics.shouldMerge, true);
  assert.ok(metrics.sharedLineCount >= 4);
});

test("compareSongTexts does not merge unrelated songs with the same generic title", () => {
  const left = [
    "Колискова, колискова, спи мала дитина,",
    "Ніч прийшла до твого дому, тиша навкруги.",
    "Місяць тихо виглядає з-за високих хмар.",
  ].join("\n");
  const right = [
    "Спи, маленьке янголятко, сон твій стереже зоря,",
    "Мати пісню заспіває, ніч накриє всі поля,",
    "І росою білий ранок прийде знову до вікна.",
  ].join("\n");
  const metrics = compareSongTexts(left, right);
  assert.equal(metrics.shouldMerge, false);
  assert.ok(metrics.sharedLineCount <= 1);
});
