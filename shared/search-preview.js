function collapseBrokenPreviewWord(tokens = [], startIndex = 0) {
  let index = startIndex;
  const letters = [];
  while (index < tokens.length) {
    const part = String(tokens[index] || "");
    if (!/^[\p{L}]$/u.test(part)) break;
    const separator = String(tokens[index + 1] || "");
    if (!/^\s+$/u.test(separator)) break;
    letters.push(part);
    index += 2;
  }
  const tail = String(tokens[index] || "");
  if (letters.length < 2 || !/^[\p{L}]{2,}$/u.test(tail)) return null;
  return {
    value: `${letters.join("")}${tail}`,
    nextIndex: index + 1,
  };
}

export function repairPreviewOcrSpacing(value = "") {
  const compact = String(value || "").replace(/\s+/g, " ").trim();
  if (!compact) return "";
  const tokens = compact.match(/[\p{L}\p{N}]+|\s+|[^\p{L}\p{N}\s]+/gu) || [];
  let out = "";
  for (let index = 0; index < tokens.length;) {
    const collapsed = collapseBrokenPreviewWord(tokens, index);
    if (collapsed) {
      out += collapsed.value;
      index = collapsed.nextIndex;
      continue;
    }
    out += tokens[index];
    index += 1;
  }
  return out.replace(/\s+/g, " ").trim();
}

function normalizePreviewLine(value = "") {
  return repairPreviewOcrSpacing(value);
}

export function normalizePreviewSearchText(value = "") {
  return String(value || "")
    .normalize("NFKD")
    .replace(/[\u0300-\u036f]/g, "")
    .toLowerCase()
    .replace(/[^\p{L}\p{N}]+/gu, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function normalizePreviewCompare(value = "") {
  return normalizePreviewLine(value)
    .replace(/["'«»„“”‘’`]+/g, "")
    .toLowerCase();
}

function hasTextOrDigit(line = "") {
  return /[\p{L}\p{N}]/u.test(String(line || ""));
}

export function isPreviewMetaLine(line = "", titleNormalized = "") {
  const normalized = normalizePreviewLine(line).toLowerCase();
  if (!normalized) return true;
  if (normalizePreviewCompare(normalized) === normalizePreviewCompare(titleNormalized)) return true;
  if (/^[\[(].*[\])]\s*$/.test(normalized)) return true;
  if (!hasTextOrDigit(normalized)) return true;
  if (/^(музыка|слова|музика|текст|исполнитель|исполняет|исп\.|виконує|виконавець|виконують|виконання|муз\.|сл\.|music|lyrics|words|performed by|composer|author)\s*[:.-]/i.test(normalized)) return true;
  if (/^(интродукция|інтродукція|вступ|вступление|куплет|припев|приспів|приспев|chorus|verse|bridge|intro|outro|проигрыш|програш|refren|refrain)\s*\d*\s*[:.-]?$/i.test(normalized)) return true;
  return false;
}

export function tokenizePreviewSearchQuery(value = "") {
  const rawTokens = String(value || "").match(/[\p{L}\p{N}]+/gu) || [];
  const out = [];
  const seen = new Set();
  for (const rawToken of rawTokens) {
    const raw = String(rawToken || "").trim();
    const normalized = normalizePreviewSearchText(raw);
    if (!raw || !normalized || normalized.length < 2 || seen.has(normalized)) continue;
    seen.add(normalized);
    out.push({ raw, normalized });
  }
  return out;
}

export function collectPreviewHighlightRanges(line = "", queryTokens = []) {
  if (!line || !Array.isArray(queryTokens) || !queryTokens.length) return [];
  const ranges = [];
  const words = String(line || "").matchAll(/[\p{L}\p{N}]+/gu);
  for (const match of words) {
    const word = String(match?.[0] || "");
    const start = Number(match?.index || 0);
    const end = start + word.length;
    const normalizedWord = normalizePreviewSearchText(word);
    if (!normalizedWord) continue;
    const isHit = queryTokens.some((token) => {
      const normalizedToken = String(token?.normalized || "").trim();
      if (!normalizedToken) return false;
      if (normalizedToken.length <= 2) return normalizedWord === normalizedToken;
      if (normalizedWord.includes(normalizedToken)) return true;
      if (normalizedToken.length >= 4 && normalizedWord.includes(normalizedToken.slice(0, normalizedToken.length - 1))) {
        return true;
      }
      if (normalizedWord.length < 3) return false;
      if (Math.abs(normalizedWord.length - normalizedToken.length) > 1) return false;
      let mismatches = 0;
      const max = Math.max(normalizedWord.length, normalizedToken.length);
      for (let index = 0; index < max; index += 1) {
        if ((normalizedWord[index] || "") === (normalizedToken[index] || "")) continue;
        mismatches += 1;
        if (mismatches > 1) return false;
      }
      return true;
    });
    if (isHit) ranges.push({ start, end });
  }
  return ranges;
}

function scorePreviewLine(line = "", queryTokens = []) {
  const normalizedLine = normalizePreviewSearchText(line);
  if (!normalizedLine || !queryTokens.length) return 0;
  let exactCount = 0;
  let prefixCount = 0;
  for (const token of queryTokens) {
    const normalizedToken = String(token?.normalized || "").trim();
    if (!normalizedToken) continue;
    if (normalizedLine.includes(normalizedToken)) {
      exactCount += 1;
      continue;
    }
    if (normalizedToken.length >= 4 && normalizedLine.includes(normalizedToken.slice(0, normalizedToken.length - 1))) {
      prefixCount += 1;
    }
  }
  return exactCount * 100 + prefixCount * 35;
}

function buildPreviewWindow(lines = [], start = 0, maxLines = 3) {
  const safeMax = Math.max(1, Number(maxLines || 3));
  const sliceStart = Math.max(0, Math.min(Number(start || 0), Math.max(0, lines.length - safeMax)));
  const selected = lines.slice(sliceStart, sliceStart + safeMax);
  while (selected.length < safeMax) selected.push("");
  return {
    lines: selected,
    truncated: lines.length > sliceStart + safeMax,
  };
}

export function selectSearchPreviewLines(options = {}) {
  const maxLines = Math.max(1, Number(options?.maxLines || 3));
  const title = String(options?.title || "");
  const lyrics = String(options?.lyrics || "").replace(/\r\n?/g, "\n");
  const queryTokens = tokenizePreviewSearchQuery(String(options?.query || ""));
  const contentLines = lyrics
    .split("\n")
    .map((line) => normalizePreviewLine(line))
    .filter((line) => line && !isPreviewMetaLine(line, title));

  if (!contentLines.length) {
    return {
      lines: Array.from({ length: maxLines }, () => ""),
      truncated: false,
      matched: false,
    };
  }

  if (!queryTokens.length) {
    return {
      ...buildPreviewWindow(contentLines, 0, maxLines),
      matched: false,
    };
  }

  let bestIndex = -1;
  let bestScore = -1;
  for (let index = 0; index < contentLines.length; index += 1) {
    const score = scorePreviewLine(contentLines[index], queryTokens) - index * 0.01;
    if (score <= bestScore) continue;
    bestScore = score;
    bestIndex = index;
  }

  if (bestScore <= 0 || bestIndex < 0) {
    return {
      ...buildPreviewWindow(contentLines, 0, maxLines),
      matched: false,
    };
  }

  const centeredStart = Math.max(0, bestIndex - Math.floor(maxLines / 2));
  return {
    ...buildPreviewWindow(contentLines, centeredStart, maxLines),
    matched: true,
  };
}
