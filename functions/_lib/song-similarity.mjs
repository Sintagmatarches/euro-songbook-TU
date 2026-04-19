import { dbAll } from "./db.js";

const SECTION_LINE_RE = /^(?:ref|refr|refrain|chorus|verse|bridge|intro|outro|куплет|припев|приспів|приспев|запев)\b[\s.:#-]*\d*$/iu;

function normalizeComparableChunk(value = "") {
  return String(value || "")
    .normalize("NFKC")
    .toLowerCase()
    .normalize("NFD")
    .replace(/\p{M}+/gu, "")
    .replace(/['`’ʼ]+/gu, "")
    .replace(/[^\p{L}\p{N}\s]+/gu, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function normalizeComparableLine(value = "") {
  return normalizeComparableChunk(value).replace(/\s+/g, " ").trim();
}

function isComparableLine(line = "") {
  const normalized = normalizeComparableLine(line);
  if (!normalized) return false;
  if (SECTION_LINE_RE.test(normalized)) return false;
  const words = normalized.split(" ").filter(Boolean);
  return normalized.length >= 12 && words.length >= 2;
}

function extractComparableLines(text = "") {
  return String(text || "")
    .replace(/\r\n?/g, "\n")
    .split("\n")
    .map((line) => normalizeComparableLine(line))
    .filter((line) => isComparableLine(line));
}

function extractComparableBlocks(lines = []) {
  const out = [];
  for (let index = 0; index < lines.length - 1; index += 1) {
    const left = String(lines[index] || "").trim();
    const right = String(lines[index + 1] || "").trim();
    if (!left || !right) continue;
    out.push(`${left} || ${right}`);
  }
  return out;
}

function buildNgrams(value = "", size = 3) {
  const source = String(value || "").trim();
  if (!source) return new Map();
  if (source.length <= size) return new Map([[source, 1]]);
  const counts = new Map();
  for (let index = 0; index <= source.length - size; index += 1) {
    const gram = source.slice(index, index + size);
    counts.set(gram, (counts.get(gram) || 0) + 1);
  }
  return counts;
}

function diceCoefficient(left = "", right = "", size = 3) {
  const a = buildNgrams(left, size);
  const b = buildNgrams(right, size);
  if (!a.size || !b.size) return 0;
  let shared = 0;
  let total = 0;
  for (const count of a.values()) total += count;
  for (const count of b.values()) total += count;
  for (const [gram, count] of a.entries()) {
    const rightCount = b.get(gram) || 0;
    shared += Math.min(count, rightCount);
  }
  return total > 0 ? (2 * shared) / total : 0;
}

function countPrefixMatches(left = [], right = []) {
  const max = Math.min(left.length, right.length);
  let count = 0;
  for (let index = 0; index < max; index += 1) {
    if (left[index] !== right[index]) break;
    count += 1;
  }
  return count;
}

function setIntersectionSize(left = new Set(), right = new Set()) {
  let count = 0;
  for (const value of left) {
    if (right.has(value)) count += 1;
  }
  return count;
}

export function normalizeComparableTitle(value = "") {
  return normalizeComparableChunk(value);
}

export function normalizeComparableLyrics(value = "") {
  return String(value || "")
    .replace(/\r\n?/g, "\n")
    .split("\n")
    .map((line) => normalizeComparableLine(line))
    .filter(Boolean)
    .join("\n")
    .trim();
}

export function compareSongTexts(left = "", right = "") {
  const leftCompact = normalizeComparableChunk(left);
  const rightCompact = normalizeComparableChunk(right);
  const leftLines = extractComparableLines(left);
  const rightLines = extractComparableLines(right);
  const leftLineSet = new Set(leftLines);
  const rightLineSet = new Set(rightLines);
  const sharedLineCount = setIntersectionSize(leftLineSet, rightLineSet);
  const overlapMin = Math.min(leftLineSet.size, rightLineSet.size) > 0
    ? sharedLineCount / Math.min(leftLineSet.size, rightLineSet.size)
    : 0;
  const overlapMax = Math.max(leftLineSet.size, rightLineSet.size) > 0
    ? sharedLineCount / Math.max(leftLineSet.size, rightLineSet.size)
    : 0;
  const prefixMatchCount = countPrefixMatches(leftLines, rightLines);
  const leftBlocks = new Set(extractComparableBlocks(leftLines));
  const rightBlocks = new Set(extractComparableBlocks(rightLines));
  const sharedBlockCount = setIntersectionSize(leftBlocks, rightBlocks);
  const compactSimilarity = diceCoefficient(leftCompact, rightCompact, 3);
  const shouldMerge = (
    compactSimilarity >= 0.992
    || (sharedLineCount >= 4 && overlapMin >= 0.85)
    || (sharedBlockCount >= 2 && sharedLineCount >= 3 && overlapMin >= 0.72 && compactSimilarity >= 0.88)
    || (prefixMatchCount >= 4 && overlapMin >= 0.65)
    || (compactSimilarity >= 0.965 && sharedLineCount >= 3 && overlapMin >= 0.55)
  );
  const score = Math.max(
    compactSimilarity,
    overlapMin * 0.98,
    Math.min(1, sharedBlockCount / 3),
    Math.min(1, prefixMatchCount / 5),
  );
  return {
    shouldMerge,
    score,
    compactSimilarity,
    sharedLineCount,
    overlapMin,
    overlapMax,
    prefixMatchCount,
    sharedBlockCount,
    leftComparableLines: leftLines.length,
    rightComparableLines: rightLines.length,
  };
}

export async function findLikelyDuplicateSong(env, payload = {}, options = {}) {
  const titleKey = normalizeComparableTitle(payload?.title || "");
  const langKey = normalizeComparableTitle(payload?.lang || "");
  const lyrics = String(payload?.lyrics || "").trim();
  const excludeSongId = String(options?.excludeSongId || "").trim();
  if (!titleKey || !langKey || !lyrics) return null;
  const params = [titleKey, langKey];
  let where = `status='published' AND lower(trim(coalesce(title, '')))=? AND lower(trim(coalesce(lang, '')))=?`;
  if (excludeSongId) {
    where += " AND id<>?";
    params.push(excludeSongId);
  }
  const rows = await dbAll(
    env,
    `SELECT id, title, subtitle, lang, country, period, year, lyrics, created_at
     FROM songs
     WHERE ${where}
     ORDER BY datetime(created_at) ASC, id ASC
     LIMIT 40`,
    params
  );
  let best = null;
  for (const row of rows || []) {
    const metrics = compareSongTexts(lyrics, row?.lyrics || "");
    if (!metrics.shouldMerge) continue;
    if (!best || metrics.score > best.metrics.score) {
      best = { song: row, metrics };
    }
  }
  return best;
}
