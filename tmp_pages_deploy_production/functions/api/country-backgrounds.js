import { json } from "../_lib/utils.js";
import { dbAll, dbGet } from "../_lib/db.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { normalizeSongCountry } from "../../shared/song-catalogs.js";
import {
  buildVisualProfileFromLegacyFields,
  extractBackgroundVisualProfile,
  extractFlagVisualProfile,
  mergeVisualProfiles,
  normalizeVisualProfile,
  serializeVisualProfile,
} from "../../shared/song-visuals.js";

const CHUNK_MARKER_PREFIX = "__chunked__:country_background:";

function chunkMarker(field) {
  return `${CHUNK_MARKER_PREFIX}${field}`;
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
  const backgroundProfile = backgroundProfileJson
    ? normalizeVisualProfile(backgroundProfileJson)
    : extractBackgroundVisualProfile(visualProfileJson ? normalizeVisualProfile(visualProfileJson) : legacyProfile);
  const flagProfile = flagProfileJson
    ? normalizeVisualProfile(flagProfileJson)
    : extractFlagVisualProfile(visualProfileJson ? normalizeVisualProfile(visualProfileJson) : legacyProfile);
  const profile = mergeVisualProfiles(backgroundProfile, flagProfile);
  return {
    country,
    desktop_image_url: desktopImageUrl,
    mobile_image_url: mobileImageUrl,
    preview_flag_image_url: previewFlagImageUrl,
    background_profile_json: backgroundProfileJson || serializeVisualProfile(backgroundProfile),
    flag_profile_json: flagProfileJson || serializeVisualProfile(flagProfile),
    background_profile: backgroundProfile,
    flag_profile: flagProfile,
    visual_profile: profile,
    visual_profile_json: visualProfileJson || serializeVisualProfile(profile),
    desktop_focus_x: clampFocus(row.desktop_focus_x),
    desktop_focus_y: clampFocus(row.desktop_focus_y),
    mobile_focus_x: clampFocus(row.mobile_focus_x),
    mobile_focus_y: clampFocus(row.mobile_focus_y),
    image_url: "",
    updated_at: String(row.updated_at || "").trim(),
  };
}

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const url = new URL(request.url);
  const rawCountry = (url.searchParams.get("country") || "").trim();
  const country = rawCountry ? (normalizeSongCountry(rawCountry) || "") : "";

  if (rawCountry && !country) {
    return json({ item: null });
  }

  if (country) {
    const row = await dbGet(
      env,
      `SELECT country, desktop_image_url, mobile_image_url, preview_flag_image_url, background_profile_json, flag_profile_json, visual_profile_json, desktop_focus_x, desktop_focus_y, mobile_focus_x, mobile_focus_y, image_url, updated_at
       FROM country_backgrounds
       WHERE lower(country) = ?
       LIMIT 1`,
      [country]
    );
    const item = await normalizeRow(env, row);
    return json({ item });
  }

  const items = await dbAll(
    env,
    `SELECT country, desktop_image_url, mobile_image_url, preview_flag_image_url, background_profile_json, flag_profile_json, visual_profile_json, desktop_focus_x, desktop_focus_y, mobile_focus_x, mobile_focus_y, image_url, updated_at
     FROM country_backgrounds
     ORDER BY country ASC`,
    []
  );
  const normalized = await Promise.all(items.map((item) => normalizeRow(env, item)));
  return json({ items: normalized.filter(Boolean) });
}
