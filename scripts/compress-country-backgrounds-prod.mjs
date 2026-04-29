import { writeFile } from "node:fs/promises";
import { chromium } from "playwright";
import {
  normalizeVisualBackground,
  normalizeVisualProfile,
  normalizeVisualSymbol,
  resolveVisualBackground,
  resolveVisualSymbolUrl,
  serializeVisualProfile,
} from "../shared/song-visuals.js";

const CHUNK_SIZE = Number(process.env.COUNTRY_BACKGROUND_CHUNK_SIZE || 50_000);
const CHUNK_MARKER_PREFIX = "__chunked__:country_background:";
const SOURCE_URL = process.env.COUNTRY_BACKGROUNDS_URL || "https://euro-songbook.pages.dev/api/country-backgrounds";
const OUT_FILE = process.env.OUT_FILE || "tmp_country_background_compress.sql";

const STANDARDS = {
  desktop: { width: 1280, height: 720, maxDataUrlLength: 260_000 },
  mobile: { width: 720, height: 2160, maxDataUrlLength: 320_000 },
};

function chunkMarker(field) {
  return `${CHUNK_MARKER_PREFIX}${field}`;
}

function sqlString(value) {
  return `'${String(value || "").replaceAll("'", "''")}'`;
}

function splitChunks(value, size = CHUNK_SIZE) {
  const raw = String(value || "");
  const chunks = [];
  for (let index = 0; index < raw.length; index += size) {
    chunks.push(raw.slice(index, index + size));
  }
  return chunks;
}

function normalizeTopAnchoredBackgroundFocusY(value) {
  const n = Number(value);
  const focusY = Number.isFinite(n) ? Math.max(0, Math.min(100, n)) : 50;
  if (focusY <= 50) return 0;
  return Math.max(0, Math.min(100, (focusY - 50) * 2));
}

async function compressBackground(page, background, kind) {
  const normalized = normalizeVisualBackground(background || {});
  const src = String(normalized.image_url || "").trim();
  if (!src) return { ...normalized, source_url: "" };
  if (!src.startsWith("data:image/")) {
    return {
      ...normalized,
      source_url: String(normalized.source_url || "").startsWith("data:image/") ? "" : String(normalized.source_url || "").trim(),
    };
  }
  const standard = STANDARDS[kind] || STANDARDS.desktop;
  const out = await page.evaluate(async ({ src, standard, focusX, focusY, zoomLevel }) => {
    function clampPercent(value) {
      const n = Number(value);
      return Number.isFinite(n) ? Math.max(0, Math.min(100, n)) : 50;
    }
    function zoomLevelToScale(value) {
      const n = Number(value);
      const level = Number.isFinite(n) ? Math.max(1, Math.min(100, Math.round(n))) : 1;
      return 1 + (level - 1) * 0.04;
    }
    function computeCrop(sourceWidth, sourceHeight, targetWidth, targetHeight, focusX, focusY, zoomLevel) {
      const targetAspect = targetWidth / targetHeight;
      const sourceAspect = sourceWidth / sourceHeight;
      let baseCropWidth = sourceWidth;
      let baseCropHeight = sourceHeight;
      if (sourceAspect > targetAspect) {
        baseCropHeight = sourceHeight;
        baseCropWidth = baseCropHeight * targetAspect;
      } else {
        baseCropWidth = sourceWidth;
        baseCropHeight = baseCropWidth / targetAspect;
      }
      const zoomScale = zoomLevelToScale(zoomLevel);
      const cropWidth = Math.max(1, baseCropWidth / zoomScale);
      const cropHeight = Math.max(1, baseCropHeight / zoomScale);
      let cropX = (sourceWidth - cropWidth) * (clampPercent(focusX) / 100);
      let cropY = (sourceHeight - cropHeight) * (clampPercent(focusY) / 100);
      cropX = Math.max(0, Math.min(sourceWidth - cropWidth, cropX));
      cropY = Math.max(0, Math.min(sourceHeight - cropHeight, cropY));
      return { cropX, cropY, cropWidth, cropHeight };
    }
    const img = new Image();
    img.decoding = "async";
    await new Promise((resolve, reject) => {
      img.onload = resolve;
      img.onerror = () => reject(new Error("Failed to load image"));
      img.src = src;
    });
    const canvas = document.createElement("canvas");
    canvas.width = standard.width;
    canvas.height = standard.height;
    const ctx = canvas.getContext("2d");
    if (!ctx) throw new Error("Canvas is unavailable");
    ctx.imageSmoothingEnabled = true;
    ctx.imageSmoothingQuality = "high";
    const crop = computeCrop(
      Math.max(1, img.naturalWidth || img.width || 1),
      Math.max(1, img.naturalHeight || img.height || 1),
      standard.width,
      standard.height,
      focusX,
      focusY,
      zoomLevel,
    );
    ctx.drawImage(img, crop.cropX, crop.cropY, crop.cropWidth, crop.cropHeight, 0, 0, standard.width, standard.height);
    const qualities = [0.82, 0.76, 0.7, 0.64, 0.58, 0.52, 0.46];
    let best = "";
    for (const quality of qualities) {
      const dataUrl = canvas.toDataURL("image/webp", quality);
      if (!best || dataUrl.length < best.length) best = dataUrl;
      if (dataUrl.length <= standard.maxDataUrlLength) return dataUrl;
    }
    return best;
  }, {
    src,
    standard,
    focusX: normalized.focus_x,
    focusY: normalizeTopAnchoredBackgroundFocusY(normalized.focus_y),
    zoomLevel: normalized.zoom || 1,
  });
  return {
    ...normalized,
    image_url: out,
    source_url: "",
    zoom: 1,
  };
}

async function compressCategory(page, category, kind) {
  const raw = category && typeof category === "object" ? category : {};
  return {
    default: await compressBackground(page, raw.default || {}, kind),
    variants: await Promise.all((Array.isArray(raw.variants) ? raw.variants : []).map(async (row) => ({
      from: row.from,
      to: row.to,
      value: await compressBackground(page, row.value || {}, kind),
    }))),
  };
}

function writeChunkedField(sql, country, field, value) {
  const raw = String(value || "");
  sql.push(`DELETE FROM country_background_chunks WHERE lower(country)=${sqlString(country)} AND field=${sqlString(field)};`);
  if (!raw || raw.length <= CHUNK_SIZE) return raw;
  const chunks = splitChunks(raw);
  chunks.forEach((chunk, index) => {
    sql.push(`INSERT INTO country_background_chunks (country, field, chunk_index, chunk_value, updated_at) VALUES (${sqlString(country)}, ${sqlString(field)}, ${index}, ${sqlString(chunk)}, datetime('now'));`);
  });
  return chunkMarker(field);
}

async function main() {
  const response = await fetch(SOURCE_URL, { cache: "no-store" });
  if (!response.ok) throw new Error(`Failed to fetch backgrounds: ${response.status}`);
  const payload = await response.json();
  const items = Array.isArray(payload?.items) ? payload.items : [];
  const browser = await chromium.launch({ headless: true });
  const page = await browser.newPage();
  const sql = ["BEGIN TRANSACTION;"];
  const summary = [];

  for (const item of items) {
    const country = String(item?.country || "").trim();
    if (!country) continue;
    const profile = normalizeVisualProfile(item.visual_profile || item.visual_profile_json || {});
    const categories = {
      desktop: await compressCategory(page, profile.categories?.desktop || {}, "desktop"),
      mobile: await compressCategory(page, profile.categories?.mobile || {}, "mobile"),
      flag: profile.categories?.flag || { default: normalizeVisualSymbol(), variants: [] },
      sticker: profile.categories?.sticker || { default: normalizeVisualSymbol(), variants: [] },
    };
    const nextProfile = normalizeVisualProfile({ categories });
    const desktop = resolveVisualBackground(nextProfile, { device: "desktop" });
    const mobile = resolveVisualBackground(nextProfile, { device: "mobile" });
    const flag = resolveVisualSymbolUrl(nextProfile, { kind: "long", device: "desktop" });
    const visualProfileJson = serializeVisualProfile(nextProfile);
    const storedDesktop = writeChunkedField(sql, country, "desktop_image_url", desktop.image_url || "");
    const storedMobile = writeChunkedField(sql, country, "mobile_image_url", mobile.image_url || "");
    const storedFlag = writeChunkedField(sql, country, "preview_flag_image_url", flag || "");
    writeChunkedField(sql, country, "background_profile_json", "");
    writeChunkedField(sql, country, "flag_profile_json", "");
    const storedProfile = writeChunkedField(sql, country, "visual_profile_json", visualProfileJson);
    sql.push(`UPDATE country_backgrounds SET desktop_image_url=${sqlString(storedDesktop)}, mobile_image_url=${sqlString(storedMobile)}, preview_flag_image_url=${sqlString(storedFlag)}, background_profile_json='', flag_profile_json='', visual_profile_json=${sqlString(storedProfile)}, desktop_focus_x=${Number(desktop.focus_x || 50)}, desktop_focus_y=${Number(desktop.focus_y || 50)}, mobile_focus_x=${Number(mobile.focus_x || 50)}, mobile_focus_y=${Number(mobile.focus_y || 50)}, updated_at=datetime('now') WHERE lower(country)=${sqlString(country)};`);
    summary.push({
      country,
      desktop: String(desktop.image_url || "").length,
      mobile: String(mobile.image_url || "").length,
      profile: visualProfileJson.length,
    });
  }

  sql.push("COMMIT;");
  await browser.close();
  await writeFile(OUT_FILE, `${sql.join("\n")}\n`, "utf8");
  console.log(JSON.stringify({ outFile: OUT_FILE, summary }, null, 2));
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
