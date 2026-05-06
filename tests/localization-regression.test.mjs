import test from "node:test";
import assert from "node:assert/strict";
import fs from "node:fs";
import path from "node:path";
import vm from "node:vm";
import { getCatalogLabel, getCompactCountryLabel, getCompactPeriodLabel } from "../shared/song-catalogs.js";

const projectRoot = process.cwd();

function read(filePath) {
  return fs.readFileSync(path.join(projectRoot, filePath), "utf8");
}

function extractObjectLiteral(source, anchor) {
  const anchorIndex = source.indexOf(anchor);
  assert.notEqual(anchorIndex, -1, `Anchor not found: ${anchor}`);
  const start = source.indexOf("{", anchorIndex);
  assert.notEqual(start, -1, `Object start not found: ${anchor}`);
  let depth = 0;
  let quote = "";
  let escaped = false;
  for (let i = start; i < source.length; i += 1) {
    const ch = source[i];
    if (quote) {
      if (escaped) {
        escaped = false;
      } else if (ch === "\\") {
        escaped = true;
      } else if (ch === quote) {
        quote = "";
      }
      continue;
    }
    if (ch === '"' || ch === "'") {
      quote = ch;
      continue;
    }
    if (ch === "{") depth += 1;
    if (ch === "}") {
      depth -= 1;
      if (depth === 0) return source.slice(start, i + 1);
    }
  }
  throw new Error(`Failed to parse object literal for ${anchor}`);
}

function literalToObject(literal) {
  return vm.runInNewContext(`(${literal})`, Object.create(null));
}

test("main i18n dictionary has no missing or empty locale keys", () => {
  const source = read("ui/i18n.js");
  const dict = literalToObject(extractObjectLiteral(source, "const dict ="));
  const locales = Object.keys(dict);
  assert.deepEqual(locales.sort(), ["en", "et", "ru", "uk"]);
  const baselineKeys = Object.keys(dict.ru).sort();
  for (const locale of locales) {
    const keys = Object.keys(dict[locale]).sort();
    assert.deepEqual(keys, baselineKeys, `Locale ${locale} differs from baseline`);
    for (const key of keys) {
      assert.ok(String(dict[locale][key] || "").trim(), `Empty translation for ${locale}:${key}`);
    }
  }
});

test("draft UI locale tables stay complete across all 4 locales", () => {
  const source = read("ui/render.js");
  const locales = ["en", "ru", "uk", "et"];
  const tables = Object.fromEntries(
    locales.map((locale) => [locale, literalToObject(extractObjectLiteral(source, `const ${locale} = {`))]),
  );
  const baselineKeys = Object.keys(tables.en).sort();
  for (const locale of locales) {
    const keys = Object.keys(tables[locale]).sort();
    assert.deepEqual(keys, baselineKeys, `Draft UI locale ${locale} differs from baseline`);
    for (const key of keys) {
      assert.ok(String(tables[locale][key] || "").trim(), `Empty draft UI translation for ${locale}:${key}`);
    }
  }
});

test("Estonian chorus UI uses Refrään instead of Koor", () => {
  const source = read("ui/render.js");
  assert.match(source, /if \(uiLocale\(\) === "et"\) return "Refrään";/);
  assert.match(source, /if \(uiLocale\(\) === "et"\) return "Lisa esmalt täielik refrään, korduste jaoks kasuta plokki \\"Refrääni kordus\\".";/);
  assert.match(source, /if \(uiLocale\(\) === "et"\) return "Refrään \(tekstiga\)";/);
  assert.match(source, /if \(uiLocale\(\) === "et"\) return "Refrääni kordus";/);
  assert.doesNotMatch(source, /if \(uiLocale\(\) === "et"\) return "Koor/);
});

test("country labels are not left in English on Ukrainian interface", () => {
  assert.notEqual(getCatalogLabel("country", "ussr", "uk"), "Soviet Union");
  assert.notEqual(getCatalogLabel("country", "russian_empire_1900_1917", "uk"), "Russian Empire");
  assert.notEqual(getCatalogLabel("country", "austro_hungary_1900_1918", "uk"), "Austria-Hungary");
  assert.notEqual(getCatalogLabel("country", "ireland_republic_1949", "uk"), "Ireland");
});

test("main catalog country labels use standardized hierarchy display names", () => {
  assert.equal(getCatalogLabel("country", "ussr", "et"), "N\u00f5ukogude Liit (1922\u20131991)");
  assert.equal(getCatalogLabel("country", "russian_empire_1900_1917", "et"), "Vene keisririik (1721\u20131917)");
  assert.equal(getCatalogLabel("country", "austro_hungary_1900_1918", "et"), "Austria-Ungari (1867\u20131918)");
  assert.equal(getCatalogLabel("country", "ireland_republic_1949", "et"), "Iirimaa (alates 1937)");
  assert.ok(getCatalogLabel("country", "ussr", "uk").endsWith("(1922\u20131991)"));
  assert.ok(getCatalogLabel("country", "russian_empire_1900_1917", "uk").endsWith("(1721\u20131917)"));
  assert.ok(getCatalogLabel("country", "austro_hungary_1900_1918", "uk").endsWith("(1867\u20131918)"));
  assert.ok(!getCatalogLabel("country", "ireland_republic_1949", "uk").includes("Ireland"));
});

test("compact navigation labels stay aligned with standardized menu naming for historical countries", () => {
  assert.equal(getCompactCountryLabel("ussr", "et"), "N\u00f5ukogude Liit (1922\u20131991)");
  assert.equal(getCompactCountryLabel("lithuanian_ssr_1940_1990", "et"), "Leedu NSV (1940\u20131990)");
  assert.equal(getCompactCountryLabel("bssr_1919_1991", "en"), "Byelorussian SSR (1919\u20131991)");
  assert.ok(getCompactCountryLabel("russian_empire_1900_1917", "uk").endsWith("(1721\u20131917)"));
  assert.ok(getCompactCountryLabel("ukr_ssr_1919_1991", "uk").endsWith("(1919\u20131991)"));
  assert.equal(
    getCompactCountryLabel("kingdom_of_poland_within_russian_empire_1815_1915", "uk"),
    getCompactCountryLabel("kingdom_of_poland_within_russian_empire_1900_1915", "uk"),
  );
});

test("compact period labels keep the standardized country naming base without duplicating country year badges", () => {
  assert.equal(getCompactPeriodLabel("ussr_1941_1953", "et"), "N\u00f5ukogude Liit, stalinlik ajastu");
  assert.equal(getCompactPeriodLabel("ussr_1964_1985", "en"), "Soviet Union, Developed Socialism");
  assert.ok(!getCompactPeriodLabel("ussr_1953_1964", "uk").includes("1922"));
  assert.ok(getCompactPeriodLabel("ussr_1953_1964", "uk").includes(", "));
});

test("country aliases resolve localized and historical names back to canonical country ids", () => {
  assert.equal(getCatalogLabel("country", "Austria-Hungary (1867\u20131918)", "uk"), getCatalogLabel("country", "austro_hungary_1900_1918", "uk"));
  assert.equal(getCatalogLabel("country", "Russian Empire (1721\u20131917)", "et"), getCatalogLabel("country", "russian_empire_1900_1917", "et"));
  assert.equal(getCatalogLabel("country", "Congress Poland (1815\u20131915)", "en"), "Congress Poland (1815\u20131915)");
});

test("movement and subcategory labels are localized through the shared catalog", () => {
  assert.equal(getCatalogLabel("country", "Forest Brothers (1944\u20131956)", "et"), "Metsavennad (1944\u20131956)");
  assert.equal(getCatalogLabel("country", "White \u00e9migr\u00e9s (since 1917)", "en"), "White \u00e9migr\u00e9s (since 1917)");
  assert.ok(getCatalogLabel("country", "Armia Krajowa (1942\u20131945)", "uk").endsWith("(1942\u20131945)"));
  assert.ok(getCatalogLabel("country", "Ukrainian Insurgent Army (1942\u20131956)", "uk").endsWith("(1942\u20131956)"));
});
