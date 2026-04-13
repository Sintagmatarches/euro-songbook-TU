import fs from "node:fs";
import path from "node:path";

const ROOT = process.cwd();
const TARGETS = [
  "app.js",
  "app.css",
  "index.html",
  "service-worker.js",
  "functions",
  "shared",
  "ui",
];
const EXTENSIONS = new Set([".js", ".mjs", ".json", ".html", ".css"]);
const cp1251ByteForChar = new Map();
const decoder1251 = new TextDecoder("windows-1251");
for (let i = 0; i <= 0xFF; i += 1) {
  cp1251ByteForChar.set(decoder1251.decode(Uint8Array.of(i)), i);
}

function walk(targetPath, out = []) {
  const stat = fs.statSync(targetPath);
  if (stat.isDirectory()) {
    for (const entry of fs.readdirSync(targetPath)) {
      walk(path.join(targetPath, entry), out);
    }
    return out;
  }
  if (EXTENSIONS.has(path.extname(targetPath))) out.push(targetPath);
  return out;
}

function collectFiles() {
  return TARGETS.flatMap((target) => {
    const fullPath = path.join(ROOT, target);
    if (!fs.existsSync(fullPath)) return [];
    return walk(fullPath);
  });
}

function encodeCp1251(value) {
  const out = [];
  for (const ch of value) {
    const byte = cp1251ByteForChar.get(ch);
    if (byte == null) return null;
    out.push(byte);
  }
  return Buffer.from(out);
}

function suspiciousScore(value) {
  const weird = value.match(/[\u0402\u0403\u0405\u0408\u0409\u040A\u040B\u040C\u040E\u040F\u0452\u0453\u0455\u0458\u0459\u045A\u045B\u045C\u045E\u045F]/gu) || [];
  const pairs = value.match(/(?:\u0420[\u00A0-\u00BF\u0400-\u04FF]|\u0421[\u00A0-\u00BF\u0400-\u04FF]|\u0413[\u00A0-\u00BF\u0400-\u04FF]|\u0432[\u00A0-\u00BF\u0400-\u04FF\u2018-\u201E\u2020-\u2026\u2030\u2039\u203A\u20AC\u2122]|\u00D0|\u00D1|\u0412\u00B7)/gu) || [];
  return weird.length + pairs.length;
}

function repair(value) {
  if (!/[\u00A0-\u00FF\u0400-\u04FF\u00D0\u00D1\u2018-\u201E\u2020-\u2026\u2030\u20AC\u2116\u2122\u2039\u203A]/u.test(value)) return value;
  const bytes = encodeCp1251(value);
  if (!bytes) return value;
  let decoded = "";
  try {
    decoded = new TextDecoder("utf-8", { fatal: true }).decode(bytes);
  } catch {
    return value;
  }
  return decoded && decoded !== value && suspiciousScore(decoded) < suspiciousScore(value) ? decoded : value;
}

function fixLine(line) {
  return line
    .replace(/"([^"\\]*(?:\\.[^"\\]*)*)"/g, (match, inner) => `"${repair(inner)}"`)
    .replace(/'([^'\\]*(?:\\.[^'\\]*)*)'/g, (match, inner) => `'${repair(inner)}'`)
    .replace(/`([^`\\]*(?:\\.[^`\\]*)*)`/g, (match, inner) => `\`${repair(inner)}\``)
    .split("\u0412\u00B7").join("\u00B7")
    .split("\u0432\u0402\u201C").join("\u2013")
    .split("\u0432\u0402\u201D").join("\u2014")
    .split("\u0432\u045A\u201C").join("\u2713");
}

function scanFile(filePath) {
  const raw = fs.readFileSync(filePath, "utf8").replace(/^\uFEFF/, "");
  return raw.split(/\r?\n/).flatMap((line, index) => {
    const fixed = fixLine(line);
    if (fixed === line) return [];
    return [{
      line: index + 1,
      label: "repairable mojibake",
      before: line.trim(),
      after: fixed.trim(),
    }];
  });
}

const files = collectFiles();
const failures = files
  .map((filePath) => ({
    filePath,
    issues: scanFile(filePath),
  }))
  .filter((entry) => entry.issues.length > 0);

if (failures.length) {
  console.error("Encoding/mojibake check failed:");
  for (const failure of failures) {
    const relPath = path.relative(ROOT, failure.filePath);
    for (const issue of failure.issues) {
      console.error(`- ${relPath}:${issue.line} ${issue.label}`);
      console.error(`  before: ${issue.before}`);
      console.error(`  after:  ${issue.after}`);
    }
  }
  process.exit(1);
}

console.log(`Encoding/mojibake check passed for ${files.length} files.`);
