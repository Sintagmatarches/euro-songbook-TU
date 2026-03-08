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

function objectFromLiteral(literal) {
  return vm.runInNewContext(`(${literal})`, Object.create(null));
}

function sorted(arr) {
  return [...arr].sort((a, b) => a.localeCompare(b));
}

function duplicateKeysInLiteral(literal) {
  const body = literal.slice(1, -1);
  const counts = new Map();
  let inString = false;
  let stringQuote = "";
  let escaped = false;
  for (const line of body.split(/\r?\n/)) {
    for (let i = 0; i < line.length; i += 1) {
      const ch = line[i];
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
      }
    }
    if (inString) continue;
    const keyMatch = line.match(/^\s*([A-Za-z_][A-Za-z0-9_]*)\s*:/);
    if (!keyMatch) continue;
    const key = keyMatch[1];
    counts.set(key, (counts.get(key) || 0) + 1);
  }
  return sorted([...counts.entries()].filter(([, count]) => count > 1).map(([key]) => key));
}

const projectRoot = process.cwd();
const renderPath = path.join(projectRoot, "ui", "render.js");
const source = fs.readFileSync(renderPath, "utf8");
const locales = ["en", "ru", "uk", "et"];
const dict = {};
const duplicates = {};
const errors = [];

for (const locale of locales) {
  const literal = extractObjectLiteral(source, `const ${locale} = {`);
  dict[locale] = objectFromLiteral(literal);
  duplicates[locale] = duplicateKeysInLiteral(literal);
  if (duplicates[locale].length) {
    errors.push(`[${locale}] duplicate keys: ${duplicates[locale].join(", ")}`);
  }
}

const baseline = new Set(Object.keys(dict.en || {}));
for (const locale of locales) {
  const table = dict[locale] || {};
  const keys = new Set(Object.keys(table));
  const missing = sorted([...baseline].filter((key) => !keys.has(key)));
  const extra = sorted([...keys].filter((key) => !baseline.has(key)));
  if (missing.length) errors.push(`[${locale}] missing keys (${missing.length}): ${missing.join(", ")}`);
  if (extra.length) errors.push(`[${locale}] extra keys (${extra.length}): ${extra.join(", ")}`);
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
  console.error("[draft-ui-i18n-check] FAILED");
  for (const issue of errors) console.error(` - ${issue}`);
  process.exit(1);
}

console.log(`[draft-ui-i18n-check] OK: ${locales.length} locales, ${baseline.size} keys.`);
