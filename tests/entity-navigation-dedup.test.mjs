import test from "node:test";
import assert from "node:assert/strict";
import fs from "node:fs";
import path from "node:path";

const renderPath = path.join(process.cwd(), "ui", "render.js");

test("entity submenu rows jump directly to songs when child branch collapses to self", () => {
  const source = fs.readFileSync(renderPath, "utf8");
  assert.match(source, /function homeEntityBranchCollapsesToDirectSongs\(entityName = "", directCounts\)/);
  assert.match(source, /const shouldOpenDirectSongs = child\.isDirectSongsEntry \|\| homeEntityBranchCollapsesToDirectSongs\(child\.name, directCounts\);/);
  assert.match(source, /homeEntityDirectSongsHref\(child\.name, lang, child\.isDirectSongsEntry \? path : childPath\)/);
});

test("collapsed entity branch is not rendered as a redundant intermediate submenu screen", () => {
  const source = fs.readFileSync(renderPath, "utf8");
  assert.match(source, /if \(state\.count <= 0 \|\| homeEntityBranchCollapsesToDirectSongs\(safeName, directCounts\)\) return "";/);
});

test("entity labels use localized country names instead of raw Russian entity strings when mapped to a country", () => {
  const source = fs.readFileSync(renderPath, "utf8");
  assert.match(source, /const ownCountry = homeEntityOwnCountry\(safeName\);/);
  assert.match(source, /const localizedCountryLabel = ownCountry \? compactHistoricalCountryLabel\(ownCountry\) : "";/);
  assert.match(source, /const generatedOverride = ENTITY_DISPLAY_LABEL_OVERRIDES\[uiLocale\(\)\]\?\.\[safeName\]/);
  assert.match(source, /const override = HOME_ENTITY_LABEL_OVERRIDES\[uiLocale\(\)\]\?\.\[safeName\];/);
  assert.match(source, /return localizedCountryLabel \|\| generatedOverride \|\| override \|\| safeName;/);
});

test("movement and category labels have locale overrides instead of falling back to Russian", () => {
  const source = fs.readFileSync(renderPath, "utf8");
  assert.match(source, /"Русское антисоветское движение": "Російський антирадянський рух"/);
  assert.match(source, /"Русское антисоветское движение": "Russian anti-Soviet movement"/);
  assert.match(source, /"Русское антисоветское движение": "Vene nõukogudevastane liikumine"/);
});
