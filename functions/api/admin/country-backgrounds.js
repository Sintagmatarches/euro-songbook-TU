import { json, err, readJSON } from "../../_lib/utils.js";
import { requireSuperAdmin, dbAll, dbGet, dbRun } from "../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../_lib/schema.js";
import { normalizeSongCountry, normalizeSongPeriod } from "../../../shared/song-catalogs.js";

const CHUNK_MARKER_PREFIX = "__chunked__:country_background:";
const CHUNK_SIZE = 350_000;

function chunkMarker(field) {
  return `${CHUNK_MARKER_PREFIX}${field}`;
}

function splitChunks(value, size = CHUNK_SIZE) {
  const raw = String(value || "");
  const out = [];
  for (let idx = 0; idx < raw.length; idx += size) {
    out.push(raw.slice(idx, idx + size));
  }
  return out;
}

async function clearChunks(env, country, field) {
  await dbRun(
    env,
    `DELETE FROM country_background_chunks
     WHERE lower(country)=? AND field=?`,
    [country, field]
  );
}

async function writeChunkedValue(env, country, field, value) {
  const raw = String(value || "").trim();
  await clearChunks(env, country, field);
  if (!raw) return "";
  if (raw.length <= CHUNK_SIZE) return raw;

  const chunks = splitChunks(raw, CHUNK_SIZE);
  for (let i = 0; i < chunks.length; i += 1) {
    await dbRun(
      env,
      `INSERT INTO country_background_chunks (country, field, chunk_index, chunk_value, updated_at)
       VALUES (?, ?, ?, ?, datetime('now'))`,
      [country, field, i, chunks[i]]
    );
  }
  return chunkMarker(field);
}

async function resolveChunkedValue(env, country, field, storedValue) {
  const raw = String(storedValue || "").trim();
  if (!raw) return "";
  if (raw !== chunkMarker(field)) return raw;

  const rows = await dbAll(
    env,
    `SELECT chunk_value
     FROM country_background_chunks
     WHERE lower(country)=? AND field=?
     ORDER BY chunk_index ASC`,
    [country, field]
  );
  return rows.map((row) => String(row?.chunk_value || "")).join("");
}

function clampFocus(value) {
  const n = Number(value);
  if (!Number.isFinite(n)) return 50;
  return Math.max(0, Math.min(100, n));
}

function normalizeImageValue(value) {
  const raw = String(value || "").trim();
  if (!raw) return "";
  if (raw.startsWith("/")) return raw;
  if (raw.startsWith("data:image/")) {
    if (!raw.includes(";base64,")) return null;
    return raw;
  }
  try {
    const parsed = new URL(raw);
    if (parsed.protocol !== "http:" && parsed.protocol !== "https:") return null;
    return parsed.toString();
  } catch {
    return null;
  }
}

function normalizeFlagConfigEntry(entry = {}) {
  const raw = entry && typeof entry === "object" ? entry : {};
  const long = normalizeImageValue(raw.long ?? raw.url ?? raw.image ?? "");
  const longMobile = normalizeImageValue(raw.long_mobile ?? raw.longMobile ?? raw.mobile ?? "");
  const square = normalizeImageValue(raw.square ?? raw.menu ?? raw.tile ?? long ?? "");
  if (long === null || longMobile === null || square === null) return null;
  return {
    long: long || "",
    long_mobile: longMobile || "",
    square: square || long || "",
  };
}

function normalizeFlagConfigRange(entry = {}) {
  const raw = entry && typeof entry === "object" ? entry : {};
  const from = Number(raw.from ?? raw.year_from ?? raw.start ?? "");
  const to = Number(raw.to ?? raw.year_to ?? raw.end ?? "");
  if (!Number.isFinite(from) || !Number.isFinite(to)) return null;
  const yearFrom = Math.trunc(from);
  const yearTo = Math.trunc(to);
  if (yearFrom < 1 || yearTo < 1 || yearFrom > 3000 || yearTo > 3000 || yearFrom > yearTo) return null;
  const normalized = normalizeFlagConfigEntry(raw);
  if (!normalized) return null;
  return {
    from: yearFrom,
    to: yearTo,
    ...normalized,
  };
}

function normalizeFlagImageValue(value) {
  const raw = String(value || "").trim();
  if (!raw) return "";
  if (!raw.startsWith("{")) return normalizeImageValue(raw);
  try {
    const parsed = JSON.parse(raw);
    const safe = { default: { long: "", long_mobile: "", square: "" }, periods: {} };
    const base = normalizeFlagConfigEntry(parsed?.default ?? parsed);
    if (!base) return null;
    safe.default = base;
    const periods = parsed?.periods && typeof parsed.periods === "object" ? parsed.periods : {};
    Object.entries(periods).forEach(([k, v]) => {
      const next = normalizeFlagConfigEntry(v);
      if (!next) throw new Error("bad period");
      safe.periods[k] = next;
    });
    const ranges = Array.isArray(parsed?.ranges) ? parsed.ranges : [];
    safe.ranges = ranges
      .map((row) => normalizeFlagConfigRange(row))
      .filter(Boolean)
      .sort((a, b) => a.from - b.from || a.to - b.to)
      .slice(0, 10);
    return JSON.stringify(safe);
  } catch {
    return null;
  }
}

function normalizePeriodImageValue(value) {
  const raw = String(value || "").trim();
  if (!raw) return "";
  if (!raw.startsWith("{")) return normalizeImageValue(raw);
  try {
    const parsed = JSON.parse(raw);
    if (!parsed || typeof parsed !== "object") return null;
    const defaultUrl = normalizeImageValue(parsed.default ?? parsed.url ?? "");
    if (defaultUrl === null) return null;
    const periods = parsed.periods && typeof parsed.periods === "object" ? parsed.periods : {};
    const out = {
      default: defaultUrl || "",
      periods: {},
    };
    for (const [periodKey, periodValue] of Object.entries(periods)) {
      const normalizedPeriod = normalizeSongPeriod(periodKey);
      if (!normalizedPeriod) continue;
      const normalizedValue = normalizeImageValue(periodValue);
      if (normalizedValue === null) return null;
      if (normalizedValue) out.periods[normalizedPeriod] = normalizedValue;
    }
    if (!Object.keys(out.periods).length) return out.default;
    return JSON.stringify(out);
  } catch {
    return null;
  }
}

async function normalizeRow(env, row) {
  if (!row) return null;
  const country = String(row.country || "").trim();
  const desktopImageUrl = await resolveChunkedValue(env, country, "desktop_image_url", row.desktop_image_url || row.image_url || "");
  const mobileImageUrl = await resolveChunkedValue(env, country, "mobile_image_url", row.mobile_image_url || "");
  const previewFlagImageUrl = await resolveChunkedValue(env, country, "preview_flag_image_url", row.preview_flag_image_url || "");
  return {
    country,
    desktop_image_url: desktopImageUrl,
    mobile_image_url: mobileImageUrl,
    preview_flag_image_url: previewFlagImageUrl,
    desktop_focus_x: clampFocus(row.desktop_focus_x),
    desktop_focus_y: clampFocus(row.desktop_focus_y),
    mobile_focus_x: clampFocus(row.mobile_focus_x),
    mobile_focus_y: clampFocus(row.mobile_focus_y),
    image_url: desktopImageUrl,
    updated_at: String(row.updated_at || "").trim(),
  };
}

async function fetchCountryBackground(env, country) {
  const row = await dbGet(
    env,
    `SELECT country, desktop_image_url, mobile_image_url, preview_flag_image_url, desktop_focus_x, desktop_focus_y, mobile_focus_x, mobile_focus_y, image_url, updated_at
     FROM country_backgrounds
     WHERE lower(country)=?
     LIMIT 1`,
    [country]
  );
  return normalizeRow(env, row);
}

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const superAccess = await requireSuperAdmin(env, request);
  if (superAccess instanceof Response) return superAccess;
  const items = await dbAll(
    env,
    `SELECT country, desktop_image_url, mobile_image_url, preview_flag_image_url, desktop_focus_x, desktop_focus_y, mobile_focus_x, mobile_focus_y, image_url, updated_at
     FROM country_backgrounds
     ORDER BY country ASC`,
    []
  );
  const normalized = await Promise.all(items.map((item) => normalizeRow(env, item)));
  return json({ items: normalized.filter(Boolean) });
}

export async function onRequestPut({ env, request }) {
  await ensureSchemaAndSeed(env);
  const access = await requireSuperAdmin(env, request);
  if (access instanceof Response) return access;
  const body = await readJSON(request);
  const country = normalizeSongCountry(body?.country || "");
  if (!country) return err("Invalid country value", 400);

  const desktopImageUrl = normalizePeriodImageValue(body?.desktop_image_url ?? body?.desktopImageUrl ?? body?.image_url ?? body?.imageUrl);
  const mobileImageUrl = normalizePeriodImageValue(body?.mobile_image_url ?? body?.mobileImageUrl);
  if (desktopImageUrl === null || mobileImageUrl === null) {
    return err("Invalid image value. Use data:image..., absolute http(s) URL, or /relative/path", 400);
  }

  const desktopFocusX = clampFocus(body?.desktop_focus_x ?? body?.desktopFocusX);
  const desktopFocusY = clampFocus(body?.desktop_focus_y ?? body?.desktopFocusY);
  const mobileFocusX = clampFocus(body?.mobile_focus_x ?? body?.mobileFocusX);
  const mobileFocusY = clampFocus(body?.mobile_focus_y ?? body?.mobileFocusY);
  const current = await fetchCountryBackground(env, country);

  let previewFlagImageUrl = String(current?.preview_flag_image_url || "").trim();
  const hasFlagPayload = (
    Object.prototype.hasOwnProperty.call(body || {}, "preview_flag_image_url")
    || Object.prototype.hasOwnProperty.call(body || {}, "previewFlagImageUrl")
    || Object.prototype.hasOwnProperty.call(body || {}, "flag_image_url")
    || Object.prototype.hasOwnProperty.call(body || {}, "flagImageUrl")
  );
  if (hasFlagPayload) {
    const parsedFlag = normalizeFlagImageValue(
      body?.preview_flag_image_url
      ?? body?.previewFlagImageUrl
      ?? body?.flag_image_url
      ?? body?.flagImageUrl
    );
    if (parsedFlag === null) {
      return err("Invalid flag image value. Use data:image..., absolute http(s) URL, or /relative/path", 400);
    }
    previewFlagImageUrl = parsedFlag || "";
  }

  if (!desktopImageUrl && !mobileImageUrl && !previewFlagImageUrl) {
    await dbRun(env, `DELETE FROM country_backgrounds WHERE lower(country)=?`, [country]);
    await clearChunks(env, country, "desktop_image_url");
    await clearChunks(env, country, "mobile_image_url");
    await clearChunks(env, country, "preview_flag_image_url");
    return json({ ok: true, deleted: true, country });
  }

  const storedDesktopImageUrl = await writeChunkedValue(env, country, "desktop_image_url", desktopImageUrl);
  const storedMobileImageUrl = await writeChunkedValue(env, country, "mobile_image_url", mobileImageUrl);
  const storedPreviewFlagImageUrl = await writeChunkedValue(env, country, "preview_flag_image_url", previewFlagImageUrl);
  const legacyImageUrl = storedDesktopImageUrl || storedMobileImageUrl;

  await dbRun(
    env,
    `INSERT INTO country_backgrounds (
       country, desktop_image_url, mobile_image_url, preview_flag_image_url, desktop_focus_x, desktop_focus_y, mobile_focus_x, mobile_focus_y, image_url, updated_at, updated_by
     ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, datetime('now'), ?)
     ON CONFLICT(country) DO UPDATE SET
       desktop_image_url = excluded.desktop_image_url,
       mobile_image_url = excluded.mobile_image_url,
       preview_flag_image_url = excluded.preview_flag_image_url,
       desktop_focus_x = excluded.desktop_focus_x,
       desktop_focus_y = excluded.desktop_focus_y,
       mobile_focus_x = excluded.mobile_focus_x,
       mobile_focus_y = excluded.mobile_focus_y,
       image_url = excluded.image_url,
       updated_at = datetime('now'),
       updated_by = excluded.updated_by`,
    [
      country,
      storedDesktopImageUrl,
      storedMobileImageUrl,
      storedPreviewFlagImageUrl,
      desktopFocusX,
      desktopFocusY,
      mobileFocusX,
      mobileFocusY,
      legacyImageUrl,
      access.id,
    ]
  );

  const item = await fetchCountryBackground(env, country);
  return json({ ok: true, item });
}

export async function onRequestDelete({ env, request }) {
  await ensureSchemaAndSeed(env);
  const superAccess = await requireSuperAdmin(env, request);
  if (superAccess instanceof Response) return superAccess;
  const body = await readJSON(request);
  const country = normalizeSongCountry(body?.country || "");
  if (!country) return err("Invalid country value", 400);
  await dbRun(env, `DELETE FROM country_backgrounds WHERE lower(country)=?`, [country]);
  await clearChunks(env, country, "desktop_image_url");
  await clearChunks(env, country, "mobile_image_url");
  await clearChunks(env, country, "preview_flag_image_url");
  return json({ ok: true, deleted: true, country });
}
