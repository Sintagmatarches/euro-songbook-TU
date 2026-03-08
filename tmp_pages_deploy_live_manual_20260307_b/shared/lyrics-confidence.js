export const CONFIDENCE_LEVELS = [
  { id: "exact", score: 100, fill: 100, shade: 0.06, border: 0.1 },
  { id: "very_sure", score: 90, fill: 88, shade: 0.18, border: 0.2 },
  { id: "sure", score: 75, fill: 74, shade: 0.28, border: 0.28 },
  { id: "medium", score: 55, fill: 60, shade: 0.4, border: 0.38 },
  { id: "unsure", score: 30, fill: 46, shade: 0.56, border: 0.5 },
];

const CONFIDENCE_LEVEL_MAP = new Map(CONFIDENCE_LEVELS.map((item) => [item.id, item]));

function clampInteger(value, fallback = 0) {
  const parsed = Number.parseInt(String(value ?? fallback), 10);
  if (!Number.isFinite(parsed)) return fallback;
  return parsed;
}

function fallbackLevelId(value = "exact") {
  const normalized = String(value || "").trim().toLowerCase();
  if (CONFIDENCE_LEVEL_MAP.has(normalized)) return normalized;
  return "exact";
}

export function confidenceLevelDetails(level = "exact") {
  return CONFIDENCE_LEVEL_MAP.get(fallbackLevelId(level)) || CONFIDENCE_LEVELS[0];
}

export function confidenceScoreFromLevel(level = "exact", fallback = 100) {
  const details = CONFIDENCE_LEVEL_MAP.get(fallbackLevelId(level));
  if (details) return details.score;
  const fallbackLevel = confidenceLevelFromValue(fallback, "exact");
  return confidenceLevelDetails(fallbackLevel).score;
}

export function confidenceLevelFromValue(value, fallback = "exact") {
  if (value && typeof value === "object") {
    if (typeof value.level === "string") return confidenceLevelFromValue(value.level, fallback);
    if (typeof value.confidence_level === "string") return confidenceLevelFromValue(value.confidence_level, fallback);
    if (value.confidence !== undefined) return confidenceLevelFromValue(value.confidence, fallback);
  }

  const normalized = String(value ?? "").trim().toLowerCase();
  if (CONFIDENCE_LEVEL_MAP.has(normalized)) return normalized;

  const numeric = Number.parseFloat(String(value ?? ""));
  if (!Number.isFinite(numeric)) return fallbackLevelId(fallback);

  const safe = Math.max(0, Math.min(100, Math.round(numeric)));
  let best = CONFIDENCE_LEVELS[0];
  let bestDistance = Math.abs(best.score - safe);
  for (const item of CONFIDENCE_LEVELS) {
    const distance = Math.abs(item.score - safe);
    if (distance < bestDistance) {
      best = item;
      bestDistance = distance;
    }
  }
  return best.id;
}

export function normalizeConfidenceValue(value, fallback = 100) {
  const fallbackLevel = confidenceLevelFromValue(fallback, "exact");
  const level = confidenceLevelFromValue(value, fallbackLevel);
  return confidenceScoreFromLevel(level, fallback);
}

export function normalizeConfidenceSegment(segment, options = {}) {
  if (!segment || typeof segment !== "object") return null;
  const maxLength = Number.isFinite(Number(options?.maxLength))
    ? Math.max(0, Math.floor(Number(options.maxLength)))
    : null;
  let start = clampInteger(segment.start, 0);
  let end = clampInteger(segment.end, start);
  if (maxLength !== null) {
    start = Math.max(0, Math.min(maxLength, start));
    end = Math.max(0, Math.min(maxLength, end));
  } else {
    start = Math.max(0, start);
    end = Math.max(0, end);
  }
  if (end <= start) return null;
  const level = confidenceLevelFromValue(
    segment.level ?? segment.confidence_level ?? segment.confidence,
    options?.fallbackLevel || "sure",
  );
  if (options?.dropExact === true && level === "exact") return null;
  return {
    start,
    end,
    level,
    confidence_level: level,
    confidence: confidenceScoreFromLevel(level),
  };
}

function mergeAdjacentSegments(segments = []) {
  const ordered = [...segments].sort((a, b) => {
    if (a.start !== b.start) return a.start - b.start;
    if (a.end !== b.end) return a.end - b.end;
    return String(a.level || "").localeCompare(String(b.level || ""));
  });
  const merged = [];
  for (const item of ordered) {
    const current = normalizeConfidenceSegment(item);
    if (!current) continue;
    const previous = merged[merged.length - 1];
    if (
      previous
      && previous.level === current.level
      && current.start <= previous.end
    ) {
      previous.end = Math.max(previous.end, current.end);
      previous.confidence = confidenceScoreFromLevel(previous.level);
      previous.confidence_level = previous.level;
      continue;
    }
    merged.push(current);
  }
  return merged;
}

export function normalizeConfidenceSegments(input, options = {}) {
  if (!Array.isArray(input) || !input.length) return [];
  const normalized = input
    .map((item) => normalizeConfidenceSegment(item, options))
    .filter(Boolean);
  return mergeAdjacentSegments(normalized);
}
