import { json } from "../_lib/utils.js";
import { dbAll, dbGet } from "../_lib/db.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { normalizeSongCountry } from "../../shared/song-catalogs.js";

function clampFocus(value) {
  const n = Number(value);
  if (!Number.isFinite(n)) return 50;
  return Math.max(0, Math.min(100, n));
}

function normalizeRow(row) {
  if (!row) return null;
  const desktopImageUrl = String(row.desktop_image_url || row.image_url || "").trim();
  const mobileImageUrl = String(row.mobile_image_url || "").trim();
  const previewFlagImageUrl = String(row.preview_flag_image_url || "").trim();
  return {
    country: String(row.country || "").trim(),
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
      `SELECT country, desktop_image_url, mobile_image_url, preview_flag_image_url, desktop_focus_x, desktop_focus_y, mobile_focus_x, mobile_focus_y, image_url, updated_at
       FROM country_backgrounds
       WHERE lower(country) = ?
       LIMIT 1`,
      [country]
    );
    return json({ item: normalizeRow(row) });
  }

  const items = await dbAll(
    env,
    `SELECT country, desktop_image_url, mobile_image_url, preview_flag_image_url, desktop_focus_x, desktop_focus_y, mobile_focus_x, mobile_focus_y, image_url, updated_at
     FROM country_backgrounds
     ORDER BY country ASC`,
    []
  );
  return json({ items: items.map(normalizeRow).filter(Boolean) });
}
