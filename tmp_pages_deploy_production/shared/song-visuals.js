import { normalizeSongPeriod, PERIOD_YEAR_RANGES } from "./song-catalogs.js";

export function clampVisualFocus(value) {
  const numeric = Number(value);
  if (!Number.isFinite(numeric)) return 50;
  return Math.max(0, Math.min(100, Math.round(numeric * 1000) / 1000));
}

export function parseVisualYear(value) {
  const numeric = Number(String(value ?? "").trim());
  if (!Number.isFinite(numeric)) return null;
  const year = Math.trunc(numeric);
  if (year < 1 || year > 3000) return null;
  return year;
}

function cleanUrl(value) {
  return String(value || "").trim();
}

export function createEmptyVisualBackground() {
  return {
    image_url: "",
    focus_x: 50,
    focus_y: 50,
  };
}

export function createEmptyVisualSymbol() {
  return {
    long: "",
    long_mobile: "",
    square: "",
  };
}

export function createEmptyVisualVariant() {
  return {
    desktop: createEmptyVisualBackground(),
    mobile: createEmptyVisualBackground(),
    symbol: createEmptyVisualSymbol(),
  };
}

export function createEmptyVisualProfile() {
  return {
    default: createEmptyVisualVariant(),
    variants: [],
  };
}

export function normalizeVisualBackground(value = {}) {
  if (typeof value === "string") {
    return {
      image_url: cleanUrl(value),
      focus_x: 50,
      focus_y: 50,
    };
  }
  const raw = value && typeof value === "object" ? value : {};
  return {
    image_url: cleanUrl(raw.image_url ?? raw.url ?? raw.image ?? ""),
    focus_x: clampVisualFocus(raw.focus_x ?? raw.focusX ?? 50),
    focus_y: clampVisualFocus(raw.focus_y ?? raw.focusY ?? 50),
  };
}

export function normalizeVisualSymbol(value = {}) {
  if (typeof value === "string") {
    const direct = cleanUrl(value);
    return {
      long: direct,
      long_mobile: "",
      square: direct,
    };
  }
  const raw = value && typeof value === "object" ? value : {};
  const hasMobile = Object.prototype.hasOwnProperty.call(raw, "long_mobile")
    || Object.prototype.hasOwnProperty.call(raw, "longMobile")
    || Object.prototype.hasOwnProperty.call(raw, "mobile");
  const long = cleanUrl(raw.long ?? raw.url ?? raw.image ?? "");
  const longMobile = cleanUrl(hasMobile ? (raw.long_mobile ?? raw.longMobile ?? raw.mobile ?? "") : "");
  const square = cleanUrl(raw.square ?? raw.tile ?? raw.menu ?? long ?? longMobile);
  return {
    long,
    long_mobile: longMobile,
    square,
  };
}

function visualVariantHasContent(variant = {}) {
  const desktop = normalizeVisualBackground(variant?.desktop || {});
  const mobile = normalizeVisualBackground(variant?.mobile || {});
  const symbol = normalizeVisualSymbol(variant?.symbol || {});
  return !!(
    desktop.image_url
    || mobile.image_url
    || symbol.long
    || symbol.long_mobile
    || symbol.square
  );
}

export function normalizeVisualRange(value = {}) {
  const raw = value && typeof value === "object" ? value : {};
  const from = parseVisualYear(raw.from ?? raw.year_from ?? raw.start ?? raw.yearStart);
  const to = parseVisualYear(raw.to ?? raw.year_to ?? raw.end ?? raw.yearEnd);
  if (!from || !to || from > to) return null;
  const variant = {
    from,
    to,
    desktop: normalizeVisualBackground(raw.desktop || raw.desktop_image || raw.desktopImage || {}),
    mobile: normalizeVisualBackground(raw.mobile || raw.mobile_image || raw.mobileImage || {}),
    symbol: normalizeVisualSymbol(raw.symbol || raw.preview_flag || raw.flag || {}),
  };
  return visualVariantHasContent(variant) ? variant : null;
}

export function normalizeVisualProfile(value = {}) {
  if (!value) return createEmptyVisualProfile();
  let raw = value;
  if (typeof value === "string") {
    const trimmed = String(value || "").trim();
    if (!trimmed) return createEmptyVisualProfile();
    try {
      raw = JSON.parse(trimmed);
    } catch {
      return createEmptyVisualProfile();
    }
  }
  if (!raw || typeof raw !== "object") return createEmptyVisualProfile();
  const profile = {
    default: {
      desktop: normalizeVisualBackground(raw?.default?.desktop || {}),
      mobile: normalizeVisualBackground(raw?.default?.mobile || {}),
      symbol: normalizeVisualSymbol(raw?.default?.symbol || {}),
    },
    variants: Array.isArray(raw?.variants)
      ? raw.variants.map((row) => normalizeVisualRange(row)).filter(Boolean)
      : [],
  };
  profile.variants.sort((a, b) => a.from - b.from || a.to - b.to);
  return profile;
}

export function hasVisualProfileContent(profile = {}) {
  const normalized = normalizeVisualProfile(profile);
  return visualVariantHasContent(normalized.default) || normalized.variants.length > 0;
}

export function validateVisualProfileRanges(profile = {}) {
  const normalized = normalizeVisualProfile(profile);
  for (let index = 0; index < normalized.variants.length; index += 1) {
    const current = normalized.variants[index];
    const previous = normalized.variants[index - 1];
    if (previous && current.from <= previous.to) {
      return {
        ok: false,
        error: `variants[${index}] overlaps variants[${index - 1}]`,
      };
    }
  }
  return { ok: true };
}

export function serializeVisualProfile(profile = {}) {
  const normalized = normalizeVisualProfile(profile);
  return JSON.stringify({
    default: normalized.default,
    variants: normalized.variants,
  });
}

export function extractBackgroundVisualProfile(profile = {}) {
  const normalized = normalizeVisualProfile(profile);
  return normalizeVisualProfile({
    default: {
      desktop: normalized.default?.desktop || {},
      mobile: normalized.default?.mobile || {},
      symbol: createEmptyVisualSymbol(),
    },
    variants: normalized.variants.map((variant) => ({
      from: variant.from,
      to: variant.to,
      desktop: variant.desktop || {},
      mobile: variant.mobile || {},
      symbol: createEmptyVisualSymbol(),
    })),
  });
}

export function extractFlagVisualProfile(profile = {}) {
  const normalized = normalizeVisualProfile(profile);
  return normalizeVisualProfile({
    default: {
      desktop: createEmptyVisualBackground(),
      mobile: createEmptyVisualBackground(),
      symbol: normalized.default?.symbol || {},
    },
    variants: normalized.variants.map((variant) => ({
      from: variant.from,
      to: variant.to,
      desktop: createEmptyVisualBackground(),
      mobile: createEmptyVisualBackground(),
      symbol: variant.symbol || {},
    })),
  });
}

export function mergeVisualProfiles(backgroundProfile = {}, flagProfile = {}) {
  const background = normalizeVisualProfile(backgroundProfile);
  const flag = normalizeVisualProfile(flagProfile);
  const rangeMap = new Map();

  const ensureRange = (from, to) => {
    const key = `${from}:${to}`;
    if (!rangeMap.has(key)) {
      rangeMap.set(key, {
        from,
        to,
        desktop: createEmptyVisualBackground(),
        mobile: createEmptyVisualBackground(),
        symbol: createEmptyVisualSymbol(),
      });
    }
    return rangeMap.get(key);
  };

  background.variants.forEach((variant) => {
    const row = ensureRange(variant.from, variant.to);
    row.desktop = normalizeVisualBackground(variant.desktop || {});
    row.mobile = normalizeVisualBackground(variant.mobile || {});
  });
  flag.variants.forEach((variant) => {
    const row = ensureRange(variant.from, variant.to);
    row.symbol = normalizeVisualSymbol(variant.symbol || {});
  });

  return normalizeVisualProfile({
    default: {
      desktop: background.default?.desktop || {},
      mobile: background.default?.mobile || {},
      symbol: flag.default?.symbol || {},
    },
    variants: Array.from(rangeMap.values()),
  });
}

function mergeVisualBackgroundWithFallback(primary = {}, fallback = {}) {
  const normalizedPrimary = normalizeVisualBackground(primary);
  if (!normalizedPrimary.image_url) return normalizeVisualBackground(fallback);
  return normalizedPrimary;
}

function mergeVisualSymbolWithFallback(primary = {}, fallback = {}) {
  const normalizedPrimary = normalizeVisualSymbol(primary);
  const normalizedFallback = normalizeVisualSymbol(fallback);
  return normalizeVisualSymbol({
    long: normalizedPrimary.long || normalizedFallback.long || "",
    long_mobile: normalizedPrimary.long_mobile || normalizedFallback.long_mobile || "",
    square: normalizedPrimary.square || normalizedFallback.square || "",
  });
}

export function resolveVisualVariant(profile = {}, options = {}) {
  const normalized = normalizeVisualProfile(profile);
  const fallbackVariant = {
    from: null,
    to: null,
    desktop: normalizeVisualBackground(normalized.default.desktop),
    mobile: normalizeVisualBackground(normalized.default.mobile),
    symbol: normalizeVisualSymbol(normalized.default.symbol),
  };
  const year = parseVisualYear(options.year);
  if (year) {
    const matched = normalized.variants.find((variant) => variant.from <= year && year <= variant.to);
    if (matched) {
      return {
        from: matched.from,
        to: matched.to,
        desktop: mergeVisualBackgroundWithFallback(matched.desktop, fallbackVariant.desktop),
        mobile: mergeVisualBackgroundWithFallback(matched.mobile, fallbackVariant.mobile),
        symbol: mergeVisualSymbolWithFallback(matched.symbol, fallbackVariant.symbol),
      };
    }
  }
  return fallbackVariant;
}

export function resolveVisualBackground(profile = {}, options = {}) {
  const variant = resolveVisualVariant(profile, options);
  const device = options.device === "mobile" ? "mobile" : "desktop";
  return normalizeVisualBackground(variant?.[device] || {});
}

export function resolveVisualSymbolUrl(profile = {}, options = {}) {
  const variant = resolveVisualVariant(profile, options);
  const symbol = normalizeVisualSymbol(variant?.symbol || {});
  const kind = options.kind === "square" ? "square" : "long";
  const device = options.device === "mobile" ? "mobile" : "desktop";
  if (kind === "square") return cleanUrl(symbol.square || symbol.long || symbol.long_mobile || "");
  if (device === "mobile") return cleanUrl(symbol.long_mobile || symbol.long || symbol.square || "");
  return cleanUrl(symbol.long || symbol.long_mobile || symbol.square || "");
}

function parseLegacyPeriodImageConfig(rawValue) {
  const raw = cleanUrl(rawValue);
  if (!raw) return { default: "", periods: {} };
  if (!raw.startsWith("{")) return { default: raw, periods: {} };
  try {
    const parsed = JSON.parse(raw);
    const out = { default: cleanUrl(parsed?.default ?? parsed?.url ?? ""), periods: {} };
    const sourcePeriods = parsed?.periods && typeof parsed.periods === "object" ? parsed.periods : {};
    Object.entries(sourcePeriods).forEach(([periodKey, periodValue]) => {
      const normalizedPeriod = normalizeSongPeriod(periodKey);
      if (!normalizedPeriod) return;
      out.periods[normalizedPeriod] = cleanUrl(periodValue);
    });
    return out;
  } catch {
    return { default: raw, periods: {} };
  }
}

function parseLegacyFlagConfig(rawValue) {
  const raw = cleanUrl(rawValue);
  if (!raw) return { default: createEmptyVisualSymbol(), periods: {}, ranges: [] };
  if (!raw.startsWith("{")) {
    return {
      default: normalizeVisualSymbol(raw),
      periods: {},
      ranges: [],
    };
  }
  try {
    const parsed = JSON.parse(raw);
    const out = {
      default: normalizeVisualSymbol(parsed?.default ?? parsed),
      periods: {},
      ranges: [],
    };
    const sourcePeriods = parsed?.periods && typeof parsed.periods === "object" ? parsed.periods : {};
    Object.entries(sourcePeriods).forEach(([periodKey, periodValue]) => {
      const normalizedPeriod = normalizeSongPeriod(periodKey);
      if (!normalizedPeriod) return;
      out.periods[normalizedPeriod] = normalizeVisualSymbol(periodValue);
    });
    const sourceRanges = Array.isArray(parsed?.ranges) ? parsed.ranges : [];
    out.ranges = sourceRanges.map((row) => normalizeVisualRange({ ...row, symbol: row })).filter(Boolean);
    return out;
  } catch {
    return {
      default: normalizeVisualSymbol(raw),
      periods: {},
      ranges: [],
    };
  }
}

function ensureVariantBucket(map, from, to) {
  const key = `${from}:${to}`;
  if (!map.has(key)) {
    map.set(key, {
      from,
      to,
      desktop: createEmptyVisualBackground(),
      mobile: createEmptyVisualBackground(),
      symbol: createEmptyVisualSymbol(),
    });
  }
  return map.get(key);
}

export function buildVisualProfileFromLegacyFields(row = {}) {
  const desktopLegacy = parseLegacyPeriodImageConfig(row?.desktop_image_value ?? row?.desktop_image_url ?? row?.image_url ?? "");
  const mobileLegacy = parseLegacyPeriodImageConfig(row?.mobile_image_value ?? row?.mobile_image_url ?? "");
  const flagLegacy = parseLegacyFlagConfig(row?.preview_flag_image_value ?? row?.preview_flag_image_url ?? "");
  const profile = createEmptyVisualProfile();
  profile.default.desktop = normalizeVisualBackground({
    image_url: desktopLegacy.default,
    focus_x: row?.desktop_focus_x,
    focus_y: row?.desktop_focus_y,
  });
  profile.default.mobile = normalizeVisualBackground({
    image_url: mobileLegacy.default,
    focus_x: row?.mobile_focus_x,
    focus_y: row?.mobile_focus_y,
  });
  profile.default.symbol = normalizeVisualSymbol(flagLegacy.default);

  const ranges = new Map();
  Object.entries(PERIOD_YEAR_RANGES).forEach(([periodKey, years]) => {
    const desktopUrl = cleanUrl(desktopLegacy.periods?.[periodKey] || "");
    const mobileUrl = cleanUrl(mobileLegacy.periods?.[periodKey] || "");
    const symbolEntry = normalizeVisualSymbol(flagLegacy.periods?.[periodKey] || {});
    if (!desktopUrl && !mobileUrl && !symbolEntry.long && !symbolEntry.long_mobile && !symbolEntry.square) return;
    const bucket = ensureVariantBucket(ranges, years.from, years.to);
    if (desktopUrl) bucket.desktop = normalizeVisualBackground({
      image_url: desktopUrl,
      focus_x: row?.desktop_focus_x,
      focus_y: row?.desktop_focus_y,
    });
    if (mobileUrl) bucket.mobile = normalizeVisualBackground({
      image_url: mobileUrl,
      focus_x: row?.mobile_focus_x,
      focus_y: row?.mobile_focus_y,
    });
    if (symbolEntry.long || symbolEntry.long_mobile || symbolEntry.square) bucket.symbol = symbolEntry;
  });

  flagLegacy.ranges.forEach((range) => {
    const bucket = ensureVariantBucket(ranges, range.from, range.to);
    bucket.symbol = normalizeVisualSymbol(range.symbol || range);
  });

  profile.variants = Array.from(ranges.values())
    .map((row) => normalizeVisualRange(row))
    .filter(Boolean)
    .sort((a, b) => a.from - b.from || a.to - b.to);
  return profile;
}
