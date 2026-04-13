export const PUBLIC_YEAR_DISPLAY_MAX = 1960;

function normalizeYearText(value) {
  return String(value ?? "").trim();
}

export function parseSongYear(value) {
  const text = normalizeYearText(value);
  if (!/^\d{4}$/.test(text)) return null;
  const year = Number.parseInt(text, 10);
  return Number.isFinite(year) ? year : null;
}

export function shouldHidePublicSongYear(value) {
  const year = parseSongYear(value);
  return year !== null && year > PUBLIC_YEAR_DISPLAY_MAX;
}

export function getPublicSongYear(value) {
  return shouldHidePublicSongYear(value) ? "" : normalizeYearText(value);
}
