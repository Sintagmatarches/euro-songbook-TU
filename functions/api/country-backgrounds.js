import { json } from "../_lib/utils.js";
import { dbAll, dbGet } from "../_lib/db.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import {
  buildVisualProfileFromLegacyFields,
  compactVisualProfile,
  extractBackgroundVisualProfile,
  extractFlagVisualProfile,
  mergeVisualProfiles,
  normalizeVisualProfile,
  resolveVisualVariant,
} from "../../shared/song-visuals.js";
import { normalizeSongCountry } from "../../shared/song-catalogs.js";

const CHUNK_MARKER_PREFIX = "__chunked__:country_background:";
const PUBLIC_CACHE_HEADERS = {
  "Cache-Control": "public, max-age=300, s-maxage=3600, stale-while-revalidate=86400",
};

function chunkMarker(field) {
  return `${CHUNK_MARKER_PREFIX}${field}`;
}

function clampFocus(value) {
  const n = Number(value);
  if (!Number.isFinite(n)) return 50;
  return Math.max(0, Math.min(100, n));
}

function visualProfileNeedsPublicProfile(profile) {
  const normalized = normalizeVisualProfile(profile);
  const categories = normalized.categories || {};
  return Object.values(categories).some((category) => Array.isArray(category?.variants) && category.variants.length > 0);
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

async function normalizeRow(env, row) {
  if (!row) return null;
  const country = String(row.country || "").trim();
  const desktopImageUrl = await resolveChunkedValue(env, country, "desktop_image_url", row.desktop_image_url || "");
  const mobileImageUrl = await resolveChunkedValue(env, country, "mobile_image_url", row.mobile_image_url || "");
  const previewFlagImageUrl = await resolveChunkedValue(env, country, "preview_flag_image_url", row.preview_flag_image_url || "");
  const backgroundProfileJson = await resolveChunkedValue(env, country, "background_profile_json", row.background_profile_json || "");
  const flagProfileJson = await resolveChunkedValue(env, country, "flag_profile_json", row.flag_profile_json || "");
  const visualProfileJson = await resolveChunkedValue(env, country, "visual_profile_json", row.visual_profile_json || "");

  const legacyProfile = buildVisualProfileFromLegacyFields({
    desktop_image_url: desktopImageUrl,
    mobile_image_url: mobileImageUrl,
    preview_flag_image_url: previewFlagImageUrl,
    desktop_focus_x: row.desktop_focus_x,
    desktop_focus_y: row.desktop_focus_y,
    mobile_focus_x: row.mobile_focus_x,
    mobile_focus_y: row.mobile_focus_y,
  });

  const sourceVisualProfile = visualProfileJson ? normalizeVisualProfile(visualProfileJson) : legacyProfile;
  const backgroundProfile = backgroundProfileJson
    ? normalizeVisualProfile(backgroundProfileJson)
    : extractBackgroundVisualProfile(sourceVisualProfile);
  const flagProfile = flagProfileJson
    ? normalizeVisualProfile(flagProfileJson)
    : extractFlagVisualProfile(sourceVisualProfile);
  const visualProfile = mergeVisualProfiles(backgroundProfile, flagProfile);
  const defaultVariant = resolveVisualVariant(visualProfile, {});

  const item = {
    country,
    desktop_image_url: desktopImageUrl || String(defaultVariant?.desktop?.image_url || "").trim(),
    mobile_image_url: mobileImageUrl || String(defaultVariant?.mobile?.image_url || "").trim(),
    preview_flag_image_url: previewFlagImageUrl || String(defaultVariant?.symbol?.long || defaultVariant?.symbol?.long_mobile || defaultVariant?.symbol?.square || "").trim(),
    desktop_focus_x: clampFocus(row.desktop_focus_x),
    desktop_focus_y: clampFocus(row.desktop_focus_y),
    mobile_focus_x: clampFocus(row.mobile_focus_x),
    mobile_focus_y: clampFocus(row.mobile_focus_y),
    image_url: "",
    updated_at: String(row.updated_at || "").trim(),
  };
  if (visualProfileNeedsPublicProfile(visualProfile)) {
    item.visual_profile = compactVisualProfile(visualProfile);
  }
  return item;
}

async function fetchCountryBackground(env, country) {
  const row = await dbGet(
    env,
    `SELECT country, desktop_image_url, mobile_image_url, preview_flag_image_url, background_profile_json, flag_profile_json, visual_profile_json, desktop_focus_x, desktop_focus_y, mobile_focus_x, mobile_focus_y, image_url, updated_at
     FROM country_backgrounds
     WHERE lower(country)=?
     LIMIT 1`,
    [country]
  );
  return normalizeRow(env, row);
}

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const url = new URL(request.url);
  const country = normalizeSongCountry(url.searchParams.get("country") || "");

  if (country) {
    const item = await fetchCountryBackground(env, country);
    return json({ item }, 200, PUBLIC_CACHE_HEADERS);
  }

  const rows = await dbAll(
    env,
    `SELECT country, desktop_image_url, mobile_image_url, preview_flag_image_url, background_profile_json, flag_profile_json, visual_profile_json, desktop_focus_x, desktop_focus_y, mobile_focus_x, mobile_focus_y, image_url, updated_at
     FROM country_backgrounds
     ORDER BY country ASC`,
    []
  );
  const items = (await Promise.all(rows.map((row) => normalizeRow(env, row)))).filter(Boolean);
  return json({ items }, 200, PUBLIC_CACHE_HEADERS);
}
