import fs from "node:fs";
import path from "node:path";
import vm from "node:vm";

function extractObjectLiteral(source, anchor) {
  const anchorIndex = source.indexOf(anchor);
  if (anchorIndex < 0) {
    throw new Error(`Anchor not found: ${anchor}`);
  }
  const start = source.indexOf("{", anchorIndex);
  if (start < 0) {
    throw new Error(`Object start not found for: ${anchor}`);
  }
  let depth = 0;
  let inString = false;
  let stringQuote = "";
  let escaped = false;
  for (let i = start; i < source.length; i += 1) {
    const ch = source[i];
    if (inString) {
      if (escaped) {
        escaped = false;
      } else if (ch === "\\") {
        escaped = true;
      } else if (ch === stringQuote) {
        inString = false;
        stringQuote = "";
      }
      continue;
    }
    if (ch === '"' || ch === "'") {
      inString = true;
      stringQuote = ch;
      continue;
    }
    if (ch === "{") {
      depth += 1;
      continue;
    }
    if (ch === "}") {
      depth -= 1;
      if (depth === 0) {
        return source.slice(start, i + 1);
      }
    }
  }
  throw new Error(`Failed to parse object literal for: ${anchor}`);
}

function toObjectFromLiteral(literal) {
  return vm.runInNewContext(`(${literal})`, Object.create(null));
}

function sorted(arr) {
  return [...arr].sort((a, b) => a.localeCompare(b));
}

const projectRoot = process.cwd();
const i18nPath = path.join(projectRoot, "ui", "i18n.js");
const source = fs.readFileSync(i18nPath, "utf8");

const dictLiteral = extractObjectLiteral(source, "const dict =");
const dict = toObjectFromLiteral(dictLiteral);

const locales = Object.keys(dict || {});
if (!locales.length) {
  console.error("[i18n-check] No locales found in dict.");
  process.exit(1);
}

const baselineLocale = locales.includes("ru") ? "ru" : locales[0];
const baselineKeys = new Set(Object.keys(dict[baselineLocale] || {}));
const errors = [];

for (const locale of locales) {
  const table = dict[locale] || {};
  const keys = new Set(Object.keys(table));
  const missing = sorted([...baselineKeys].filter((key) => !keys.has(key)));
  if (missing.length) {
    errors.push(`[${locale}] missing keys (${missing.length}): ${missing.join(", ")}`);
  }
  const extra = sorted([...keys].filter((key) => !baselineKeys.has(key)));
  if (extra.length) {
    errors.push(`[${locale}] extra keys (${extra.length}): ${extra.join(", ")}`);
  }
  for (const key of keys) {
    const value = table[key];
    if (typeof value !== "string") {
      errors.push(`[${locale}] key '${key}' must be string, got ${typeof value}`);
      continue;
    }
    if (!value.trim()) {
      errors.push(`[${locale}] key '${key}' has empty translation`);
    }
  }
}

if (errors.length) {
  console.error("[i18n-check] FAILED");
  for (const issue of errors) {
    console.error(` - ${issue}`);
  }
  process.exit(1);
}

console.log(`[i18n-check] OK: ${locales.length} locales, ${baselineKeys.size} keys (${baselineLocale} baseline).`);
