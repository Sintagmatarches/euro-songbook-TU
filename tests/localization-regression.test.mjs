import test from "node:test";
import assert from "node:assert/strict";
import fs from "node:fs";
import path from "node:path";
import vm from "node:vm";
import { getCatalogLabel } from "../shared/song-catalogs.js";

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

test("main catalog country labels use requested Ukrainian and Estonian names", () => {
  assert.equal(getCatalogLabel("country", "ussr", "uk"), "Радянський Союз");
  assert.equal(getCatalogLabel("country", "russian_empire_1900_1917", "uk"), "Російська імперія");
  assert.equal(getCatalogLabel("country", "austro_hungary_1900_1918", "uk"), "Австро-Угорщина");
  assert.equal(getCatalogLabel("country", "ireland_republic_1949", "uk"), "Ірландія");
  assert.equal(getCatalogLabel("country", "ussr", "et"), "Nõukogude Liit");
  assert.equal(getCatalogLabel("country", "russian_empire_1900_1917", "et"), "Vene Keisririik");
  assert.equal(getCatalogLabel("country", "austro_hungary_1900_1918", "et"), "Austria-Ungari");
  assert.equal(getCatalogLabel("country", "ireland_republic_1949", "et"), "Iirimaa");
});

test("country aliases resolve localized and historical names back to canonical country ids", () => {
  assert.equal(getCatalogLabel("country", "Австро-Венгрия", "uk"), getCatalogLabel("country", "austro_hungary_1900_1918", "uk"));
  assert.equal(getCatalogLabel("country", "Российская империя", "uk"), getCatalogLabel("country", "russian_empire_1900_1917", "uk"));
  assert.equal(getCatalogLabel("country", "СССР", "uk"), getCatalogLabel("country", "ussr", "uk"));
});

test("movement and subcategory labels are localized through the shared catalog", () => {
  assert.equal(getCatalogLabel("country", "Армия Крайова", "uk"), "Армія Крайова");
  assert.equal(getCatalogLabel("country", "Лесные братья", "et"), "Metsavennad");
  assert.equal(getCatalogLabel("country", "Белая эмиграция", "en"), "White émigrés - since 1917");
  assert.equal(getCatalogLabel("country", "Украинская повстанческая армия", "uk"), "Українська повстанська армія");
});
