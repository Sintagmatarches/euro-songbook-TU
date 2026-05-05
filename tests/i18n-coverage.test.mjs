import test from "node:test";
import assert from "node:assert/strict";
import fs from "node:fs";
import path from "node:path";

const source = fs.readFileSync(path.join(process.cwd(), "ui", "i18n.js"), "utf8");
const locales = ["ru", "en", "et", "uk"];

function extractLocaleBlock(locale) {
  const start = source.indexOf(`  ${locale}: {`);
  assert.notEqual(start, -1, `locale block missing: ${locale}`);
  const nextStarts = locales
    .map((candidate) => source.indexOf(`  ${candidate}: {`, start + 1))
    .filter((index) => index > start);
  const end = nextStarts.length ? Math.min(...nextStarts) : source.indexOf("\n};", start);
  return source.slice(start, end);
}

function extractLocaleEntries(locale) {
  const block = extractLocaleBlock(locale);
  return new Map(
    [...block.matchAll(/"([^"]+)":\s*"([^"]*)"/g)].map((match) => [match[1], match[2]])
  );
}

test("i18n dictionary has the same non-empty keys for all locales", () => {
  const entriesByLocale = Object.fromEntries(locales.map((locale) => [locale, extractLocaleEntries(locale)]));
  const allKeys = new Set(locales.flatMap((locale) => [...entriesByLocale[locale].keys()]));

  for (const locale of locales) {
    for (const key of allKeys) {
      assert.ok(entriesByLocale[locale].has(key), `${locale} is missing key ${key}`);
      assert.notEqual(String(entriesByLocale[locale].get(key) || "").trim(), "", `${locale} has empty translation for ${key}`);
    }
  }
});
