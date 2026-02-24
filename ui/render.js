import { api } from "./api.js";
import { state } from "./state.js";
import { t } from "./i18n.js";
import {
  getCatalogLabel,
  getCatalogOptions,
  getUiText,
  normalizeSongCountry,
  normalizeSongLanguage,
  normalizeSongPeriod,
  SONG_LANGUAGE_VALUES,
  USSR_PERIOD_VALUES,
} from "../shared/song-catalogs.js";
import { ADMIN_PERMISSION_VALUES } from "../shared/admin-permissions.js";

const ADMIN_PERMISSIONS = ADMIN_PERMISSION_VALUES;

const PERMISSION_LABELS = {
  "songs.create": { ru: "????????? ??????", en: "Create songs", et: "Laulude loomine" },
  "songs.edit": { ru: "?????????????????? ??????", en: "Edit songs", et: "Laulude muutmine" },
  "songs.delete": { ru: "????????? ??????", en: "Delete songs", et: "Laulude kustutamine" },
  "songs.view_admin_content": { ru: "?????? ? admin-only ????????", en: "View admin-only content", et: "Admin-only sisu vaatamine" },
  "variants.manage": { ru: "Управление версиями текста", en: "Manage text variants", et: "Tekstiversioonide haldus" },
  "links.manage": { ru: "Управление ссылками", en: "Manage links", et: "Linkide haldus" },
  "proposals.review": { ru: "Просмотр заявок", en: "Review requests", et: "Taotluste ulevaatus" },
  "proposals.approve": { ru: "????????????? ??????????", en: "Approve requests", et: "Taotluste kinnitamine" },
  "proposals.reject": { ru: "?????????????? ??????????", en: "Reject requests", et: "Taotluste tagasilukkamine" },
};

const PERMISSION_DESCRIPTIONS = {
  "songs.create": {
    ru: "?????????????? ???????????????? ??????? ????????? ??????.",
    en: "Allows creating new song entries.",
    et: "Lubab luua uusi laulukirjeid.",
  },
  "songs.edit": {
    ru: "Разрешает менять поля существующих песен.",
    en: "Allows editing existing song fields.",
    et: "Lubab muuta olemasolevate laulude valju.",
  },
  "songs.delete": {
    ru: "????????????? ???????????? ????? ? ????????????? ??????????.",
    en: "Allows deleting songs and related data.",
    et: "Lubab kustutada laule ja nendega seotud andmeid.",
  },
  "songs.view_admin_content": {
    ru: "Разрешает видеть и помечать песни как admin-only.",
    en: "Allows viewing and marking songs as admin-only.",
    et: "Lubab naha ja markida laule admin-only sisuks.",
  },
  "variants.manage": {
    ru: "?????????????? ??????????????? ? ??????????????????? ?????????? ??????.",
    en: "Allows adding and editing lyric versions.",
    et: "Lubab lisada ja muuta tekstiversioone.",
  },
  "links.manage": {
    ru: "Разрешает управлять внешними ссылками для прослушивания.",
    en: "Allows managing external listening links.",
    et: "Lubab hallata valiseid kuulamislinke.",
  },
  "proposals.review": {
    ru: "Открывает доступ к просмотру заявок пользователей.",
    en: "Grants access to view user requests.",
    et: "Annab ligipaasu kasutajate taotluste vaatamiseks.",
  },
  "proposals.approve": {
    ru: "?????????????? ?????????????? ?????? ? ?????????????? ?? ???? ?????.",
    en: "Allows approving requests and publishing them as songs.",
    et: "Lubab taotlusi kinnitada ja avaldada lauludena.",
  },
  "proposals.reject": {
    ru: "?????????????? ???????????????? ???????? ???????????????.",
    en: "Allows rejecting user requests.",
    et: "Lubab kasutajate taotlusi tagasi lukata.",
  },
};

const esc = (s = "") => String(s).replace(/[&<>\"']/g, (m) => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", "\"": "&quot;", "'": "&#39;" }[m]));
const qs = (id) => document.getElementById(id);
const uiLocale = () => (state.locale || "ru");
const UI_MOTION_MEDIUM_MS = 860;
const uiTransitionState = new WeakMap();

function uiPrefersReducedMotion() {
  return window.matchMedia("(prefers-reduced-motion: reduce)").matches;
}

function uiMotionDuration(ms = UI_MOTION_MEDIUM_MS) {
  return uiPrefersReducedMotion() ? 0 : ms;
}

function clearUiTransition(node) {
  const cleanup = uiTransitionState.get(node);
  if (!cleanup) return;
  cleanup();
  uiTransitionState.delete(node);
}

function openAnimatedElement(node) {
  if (!node) return;
  clearUiTransition(node);
  node.classList.remove("hidden", "is-closing", "is-open");
  // Force layout so open transitions/animations restart reliably.
  void node.offsetWidth;
  requestAnimationFrame(() => {
    requestAnimationFrame(() => {
      if (node.classList.contains("hidden")) return;
      node.classList.add("is-open");
    });
  });
}

function closeAnimatedElement(node, options = {}) {
  if (!node) return;
  const duration = uiMotionDuration(options.duration ?? UI_MOTION_MEDIUM_MS);
  const transitionProperty = typeof options.transitionProperty === "string"
    ? options.transitionProperty.trim()
    : "";
  const onClosed = typeof options.onClosed === "function" ? options.onClosed : null;
  if (node.classList.contains("hidden") && !node.classList.contains("is-closing")) {
    if (onClosed) onClosed();
    return;
  }
  clearUiTransition(node);
  node.classList.remove("is-open");
  node.classList.add("is-closing");

  const finish = () => {
    clearUiTransition(node);
    node.classList.remove("is-closing");
    node.classList.add("hidden");
    if (onClosed) onClosed();
  };

  if (duration === 0) {
    finish();
    return;
  }

  const onTransitionEnd = (event) => {
    if (event.target !== node) return;
    if (transitionProperty && event.propertyName !== transitionProperty) return;
    finish();
  };
  const timeoutId = setTimeout(finish, duration + 80);
  node.addEventListener("transitionend", onTransitionEnd);
  uiTransitionState.set(node, () => {
    clearTimeout(timeoutId);
    node.removeEventListener("transitionend", onTransitionEnd);
  });
}

function isAnimatedElementOpen(node) {
  if (!node) return false;
  if (node.classList.contains("hidden")) return false;
  return !node.classList.contains("is-closing");
}

function setAnimatedElementOpen(node, open, options = {}) {
  if (!node) return false;
  if (open) {
    openAnimatedElement(node);
    return true;
  }
  closeAnimatedElement(node, options);
  return false;
}

function toggleAnimatedElement(node, options = {}) {
  return setAnimatedElementOpen(node, !isAnimatedElementOpen(node), options);
}

function openDialogAnimated(dialog) {
  if (!dialog) return;
  clearUiTransition(dialog);
  dialog.classList.remove("is-closing");
  if (!dialog.open) dialog.showModal();
  requestAnimationFrame(() => {
    if (!dialog.open) return;
    dialog.classList.add("is-open");
  });
}

function closeDialogAnimated(dialog) {
  if (!dialog?.open) return;
  const duration = uiMotionDuration();
  clearUiTransition(dialog);
  dialog.classList.remove("is-open");
  dialog.classList.add("is-closing");

  const finish = () => {
    clearUiTransition(dialog);
    dialog.classList.remove("is-closing");
    if (dialog.open) dialog.close();
  };

  if (duration === 0) {
    finish();
    return;
  }

  const onTransitionEnd = (event) => {
    if (event.target !== dialog) return;
    finish();
  };
  const timeoutId = setTimeout(finish, duration + 80);
  dialog.addEventListener("transitionend", onTransitionEnd);
  uiTransitionState.set(dialog, () => {
    clearTimeout(timeoutId);
    dialog.removeEventListener("transitionend", onTransitionEnd);
  });
}

let saveSuccessHideTimer = 0;
let saveSuccessCleanupTimer = 0;
let contentDraftExitCleanup = null;

function saveSuccessWord() {
  if (uiLocale() === "ru") return "Сохранено";
  if (uiLocale() === "uk") return "Збережено";
  if (uiLocale() === "et") return "Salvestatud";
  return "Saved";
}

function ensureSaveSuccessOverlay() {
  let overlay = qs("saveSuccessOverlay");
  if (overlay) return overlay;
  overlay = document.createElement("div");
  overlay.id = "saveSuccessOverlay";
  overlay.className = "save-success-overlay hidden";
  overlay.setAttribute("aria-hidden", "true");
  overlay.innerHTML = `
    <div class="save-success-frame">
      <div class="save-success-text">${esc(saveSuccessWord())}</div>
    </div>
  `;
  document.body.appendChild(overlay);
  return overlay;
}

function showSaveSuccessOverlay() {
  showStatusOverlay(saveSuccessWord(), "success");
}

function showStatusOverlay(message, tone = "success") {
  const overlay = ensureSaveSuccessOverlay();
  const textNode = overlay.querySelector(".save-success-text");
  const text = String(message || saveSuccessWord()).trim() || saveSuccessWord();
  const compactWord = !/\s/.test(text) && text.length <= 14;
  if (textNode) textNode.textContent = text;
  overlay.classList.toggle("is-error", tone === "error");
  overlay.classList.toggle("is-info", tone === "info");
  overlay.classList.toggle("is-message", !compactWord);
  clearTimeout(saveSuccessHideTimer);
  clearTimeout(saveSuccessCleanupTimer);
  overlay.classList.remove("hidden", "is-exit", "is-show");
  void overlay.offsetWidth;
  requestAnimationFrame(() => {
    overlay.classList.add("is-show");
  });
  let visibleMs = uiPrefersReducedMotion() ? 900 : 1400;
  if (!uiPrefersReducedMotion() && tone === "error") visibleMs = 2400;
  if (!uiPrefersReducedMotion() && tone === "info") visibleMs = 2200;
  const exitMs = uiPrefersReducedMotion() ? 0 : 420;
  saveSuccessHideTimer = setTimeout(() => {
    overlay.classList.remove("is-show");
    overlay.classList.add("is-exit");
    saveSuccessCleanupTimer = setTimeout(() => {
      overlay.classList.add("hidden");
      overlay.classList.remove("is-exit");
    }, exitMs);
  }, visibleMs);
}

function requiredFieldsErrorText() {
  if (uiLocale() === "ru") return "Не заполнены обязательные поля";
  if (uiLocale() === "uk") return "Не заповнені обов'язкові поля";
  if (uiLocale() === "et") return "Kohustuslikud valjad on taitmata";
  return "Required fields are missing";
}

function uiText(key) {
  return getUiText(key, uiLocale());
}

function songVersionsSummaryText(count) {
  const safeCount = Number.isFinite(Number(count)) ? Math.max(0, Number(count)) : 0;
  if (uiLocale() === "ru") {
    const abs = Math.abs(safeCount);
    const mod100 = abs % 100;
    const mod10 = abs % 10;
    let word = "версий";
    if (mod100 < 11 || mod100 > 14) {
      if (mod10 === 1) word = "версию";
      else if (mod10 >= 2 && mod10 <= 4) word = "версии";
    }
    return `Эта песня имеет ${safeCount} ${word}`;
  }
  if (uiLocale() === "et") {
    const word = safeCount === 1 ? "versioon" : "versiooni";
    return `Sellel laulul on ${safeCount} ${word}`;
  }
  const word = safeCount === 1 ? "version" : "versions";
  return `This song has ${safeCount} ${word}`;
}

function formatLang(value) {
  return getCatalogLabel("language", value, uiLocale());
}

function formatCountry(value) {
  return getCatalogLabel("country", value, uiLocale());
}

function formatPeriod(value) {
  return getCatalogLabel("period", value, uiLocale());
}

function normalizeForKind(kind, value) {
  if (kind === "language") return normalizeSongLanguage(value);
  if (kind === "country") return normalizeSongCountry(value);
  if (kind === "period") return normalizeSongPeriod(value);
  return null;
}

function selectOptions(kind, currentValue, placeholder) {
  const raw = (currentValue ?? "").toString().trim();
  const normalized = normalizeForKind(kind, raw);
  const selected = normalized || raw;
  const options = getCatalogOptions(kind, uiLocale(), raw);
  return [
    `<option value="">${esc(placeholder)}</option>`,
    ...options.map((opt) => `<option value="${esc(opt.value)}" ${selected === opt.value ? "selected" : ""}>${esc(opt.label)}</option>`),
  ].join("");
}

function can(permission) {
  if (!state.user) return false;
  return state.user.role === "super_admin";
}

function normalizePlayableUrl(value) {
  const raw = String(value || "").trim();
  if (!raw) return "";
  const withProtocol = /^[a-z][a-z0-9+.-]*:\/\//i.test(raw) ? raw : `https://${raw}`;
  try {
    const parsed = new URL(withProtocol);
    if (parsed.protocol !== "http:" && parsed.protocol !== "https:") return "";
    return parsed.toString();
  } catch {
    return "";
  }
}

const LISTEN_SERVICES = [
  { id: "youtube", label: "YouTube", iconPath: "./ui/assets/listen/youtube.svg" },
  { id: "sovmusic", label: "SovMusic", iconPath: "./ui/assets/listen/sovmusic.svg" },
  { id: "russian-records", label: "Russian Records", iconPath: "./ui/assets/listen/russian-records.svg" },
];

// "Viewport" is what the user sees on screen; "standard" is the stored background asset size.
// We keep the viewport sizes stable for previews, while the stored asset can be "deeper"
// to allow parallax/scroll reveal.
const COUNTRY_BACKGROUND_VIEWPORTS = {
  desktop: { width: 1600, height: 900 }, // 16:9
  mobile: { width: 900, height: 1600 }, // 9:16
};

const COUNTRY_BACKGROUND_STANDARDS = {
  // Keep stored assets in the same base ratio as runtime viewports.
  desktop: { width: 1600, height: 900 }, // 16:9
  mobile: { width: 900, height: 1600 }, // 9:16
};

const FLAG_CARD_STANDARDS = {
  desktopLong: { width: 3280, height: 420 }, // 164:21
  mobileLong: { width: 2608, height: 789 }, // 2608:789
};

const SONG_PAGE_BG_STATIC_COUNTRIES = new Set([
  "russian_empire_1900_1917",
]);

const DEFAULT_COUNTRY_BACKGROUND = {
  ussr: {
    desktop_image_url: new URL("./assets/ussr-hero.jpg", import.meta.url).toString(),
    mobile_image_url: "",
    desktop_focus_x: 50,
    desktop_focus_y: 50,
    mobile_focus_x: 50,
    mobile_focus_y: 50,
  },
};

function clampPercent(value) {
  const n = Number(value);
  if (!Number.isFinite(n)) return 50;
  return Math.max(0, Math.min(100, n));
}

function clampZoomLevel(value) {
  const n = Number(value);
  if (!Number.isFinite(n)) return 1;
  return Math.max(1, Math.min(100, Math.round(n)));
}

function zoomLevelToScale(level) {
  const safe = clampZoomLevel(level);
  const ratio = (safe - 1) / 99;
  return 1 + ratio * 5;
}

function defaultCountryBackground(country) {
  const canonical = normalizeSongCountry(country || "");
  if (!canonical) return null;
  const fallback = DEFAULT_COUNTRY_BACKGROUND[canonical];
  return fallback ? { ...fallback, country: canonical } : null;
}

function createEmptyPeriodImageConfig() {
  return {
    default: "",
    periods: {},
  };
}

function parsePeriodImageConfig(rawValue) {
  const raw = String(rawValue || "").trim();
  if (!raw) return createEmptyPeriodImageConfig();
  if (!raw.startsWith("{")) {
    return {
      default: raw,
      periods: {},
    };
  }
  try {
    const parsed = JSON.parse(raw);
    const out = createEmptyPeriodImageConfig();
    if (parsed && typeof parsed === "object") {
      out.default = String(parsed.default ?? parsed.url ?? "").trim();
      const sourcePeriods = parsed.periods && typeof parsed.periods === "object" ? parsed.periods : {};
      Object.entries(sourcePeriods).forEach(([periodKey, periodValue]) => {
        const normalizedPeriod = normalizeSongPeriod(periodKey);
        if (!normalizedPeriod) return;
        out.periods[normalizedPeriod] = String(periodValue || "").trim();
      });
    }
    return out;
  } catch {
    return {
      default: raw,
      periods: {},
    };
  }
}

function resolvePeriodImage(config, options = {}) {
  const safeConfig = config && typeof config === "object" ? config : createEmptyPeriodImageConfig();
  const country = normalizeSongCountry(options.country || "");
  const period = normalizeSongPeriod(options.period || "");
  const periodUrl = country === "ussr" && period ? String(safeConfig.periods?.[period] || "").trim() : "";
  const fallback = String(safeConfig.default || "").trim();
  return periodUrl || fallback;
}

function resolvePeriodImageForEditorScope(config, options = {}) {
  const safeConfig = config && typeof config === "object" ? config : createEmptyPeriodImageConfig();
  const scope = String(options.scope || "default").trim();
  if (scope === "default") return String(safeConfig.default || "").trim();
  const period = normalizeSongPeriod(scope);
  if (!period) return "";
  return String(safeConfig.periods?.[period] || "").trim();
}

function serializePeriodImageConfig(config) {
  const safeConfig = config && typeof config === "object" ? config : createEmptyPeriodImageConfig();
  const base = String(safeConfig.default || "").trim();
  const periodEntries = {};
  USSR_PERIOD_VALUES.forEach((periodKey) => {
    const value = String(safeConfig.periods?.[periodKey] || "").trim();
    if (!value) return;
    periodEntries[periodKey] = value;
  });
  if (!Object.keys(periodEntries).length) return base;
  return JSON.stringify({
    default: base,
    periods: periodEntries,
  });
}

function normalizeCountryBackground(item, country, options = {}) {
  const fallback = defaultCountryBackground(country);
  const countryKey = normalizeSongCountry(country || item?.country || "") || String(item?.country || "").trim();
  const periodKey = normalizeSongPeriod(options?.period || "");
  const desktopImageRaw = String(
    item?.desktop_image_value
    || item?.desktop_image_url
    || item?.image_url
    || fallback?.desktop_image_url
    || ""
  ).trim();
  const mobileImageRaw = String(
    item?.mobile_image_value
    || item?.mobile_image_url
    || fallback?.mobile_image_url
    || ""
  ).trim();
  const desktopImageConfig = parsePeriodImageConfig(desktopImageRaw);
  const mobileImageConfig = parsePeriodImageConfig(mobileImageRaw);
  const desktopImageUrl = resolvePeriodImage(desktopImageConfig, { country: countryKey, period: periodKey });
  const mobileImageUrl = resolvePeriodImage(mobileImageConfig, { country: countryKey, period: periodKey });
  const previewFlagRaw = String(
    item?.preview_flag_image_value
    || item?.preview_flag_image_url
    || ""
  ).trim();
  const previewFlagConfig = parseFlagPreviewConfig(previewFlagRaw);
  const previewFlagImageUrl = resolveFlagPreviewImage(previewFlagConfig, { kind: "long" });
  return {
    country: countryKey,
    period: periodKey,
    desktop_image_value: desktopImageRaw,
    mobile_image_value: mobileImageRaw,
    desktop_image_config: desktopImageConfig,
    mobile_image_config: mobileImageConfig,
    desktop_image_url: desktopImageUrl,
    mobile_image_url: mobileImageUrl,
    preview_flag_image_value: previewFlagRaw,
    preview_flag_config: previewFlagConfig,
    preview_flag_image_url: previewFlagImageUrl,
    desktop_focus_x: clampPercent(item?.desktop_focus_x ?? fallback?.desktop_focus_x ?? 50),
    desktop_focus_y: clampPercent(item?.desktop_focus_y ?? fallback?.desktop_focus_y ?? 50),
    mobile_focus_x: clampPercent(item?.mobile_focus_x ?? fallback?.mobile_focus_x ?? 50),
    mobile_focus_y: clampPercent(item?.mobile_focus_y ?? fallback?.mobile_focus_y ?? 50),
    updated_at: String(item?.updated_at || "").trim(),
  };
}

function cleanFlagPreviewUrl(value) {
  return String(value || "").trim();
}

function createEmptyFlagPreviewConfig() {
  return {
    default: {
      long: "",
      square: "",
    },
    periods: {},
    ranges: [],
  };
}

function parseFlagYear(value) {
  const n = Number(String(value ?? "").trim());
  if (!Number.isFinite(n)) return null;
  const year = Math.trunc(n);
  if (year < 1 || year > 3000) return null;
  return year;
}

function normalizeFlagPreviewEntry(value = {}) {
  const raw = value && typeof value === "object" ? value : {};
  const hasMobile = Object.prototype.hasOwnProperty.call(raw, "long_mobile")
    || Object.prototype.hasOwnProperty.call(raw, "longMobile")
    || Object.prototype.hasOwnProperty.call(raw, "mobile");
  const long = cleanFlagPreviewUrl(raw.long ?? raw.url ?? raw.image ?? "");
  const longMobile = cleanFlagPreviewUrl(hasMobile ? (raw.long_mobile ?? raw.longMobile ?? raw.mobile ?? "") : "");
  const square = cleanFlagPreviewUrl(raw.square ?? raw.menu ?? raw.tile ?? long ?? longMobile);
  return {
    long,
    long_mobile: longMobile,
    square,
  };
}

function normalizeFlagPreviewRange(value = {}) {
  const raw = value && typeof value === "object" ? value : {};
  const from = parseFlagYear(raw.from ?? raw.year_from ?? raw.start ?? raw.yearStart);
  const to = parseFlagYear(raw.to ?? raw.year_to ?? raw.end ?? raw.yearEnd);
  if (!from || !to || from > to) return null;
  const entry = normalizeFlagPreviewEntry(raw);
  if (!entry.long && !entry.long_mobile && !entry.square) return null;
  return {
    from,
    to,
    ...entry,
  };
}

function parseFlagPreviewConfig(rawValue) {
  const raw = String(rawValue || "").trim();
  if (!raw) return createEmptyFlagPreviewConfig();
  if (!raw.startsWith("{")) {
    const direct = cleanFlagPreviewUrl(raw);
    return {
      default: { long: direct, square: direct },
      periods: {},
    };
  }
  try {
    const parsed = JSON.parse(raw);
    const out = createEmptyFlagPreviewConfig();
    if (parsed && typeof parsed === "object") {
      out.default = normalizeFlagPreviewEntry(parsed.default ?? parsed);
      const sourcePeriods = parsed.periods && typeof parsed.periods === "object" ? parsed.periods : {};
      Object.entries(sourcePeriods).forEach(([periodKey, periodValue]) => {
        const normalizedPeriod = normalizeSongPeriod(periodKey);
        if (!normalizedPeriod) return;
        out.periods[normalizedPeriod] = normalizeFlagPreviewEntry(periodValue);
      });
      const sourceRanges = Array.isArray(parsed.ranges) ? parsed.ranges : [];
      out.ranges = sourceRanges
        .map((row) => normalizeFlagPreviewRange(row))
        .filter(Boolean)
        .sort((a, b) => a.from - b.from || a.to - b.to);
    }
    return out;
  } catch {
    const fallback = cleanFlagPreviewUrl(raw);
    return {
      default: { long: fallback, square: fallback },
      periods: {},
    };
  }
}

function resolveFlagPreviewImage(config, options = {}) {
  const safeConfig = config && typeof config === "object" ? config : createEmptyFlagPreviewConfig();
  const kind = options.kind === "square" ? "square" : "long";
  const device = options.device === "mobile" ? "mobile" : "desktop";
  const country = normalizeSongCountry(options.country || "");
  const period = normalizeSongPeriod(options.period || "");
  const year = parseFlagYear(options.year);
  const defaultEntry = normalizeFlagPreviewEntry(safeConfig.default);
  const rangeEntry = year
    ? (Array.isArray(safeConfig.ranges) ? safeConfig.ranges : [])
      .map((row) => normalizeFlagPreviewRange(row))
      .find((row) => row && row.from <= year && year <= row.to)
    : null;
  const periodEntry = country === "ussr" && period ? normalizeFlagPreviewEntry(safeConfig.periods?.[period] || {}) : null;
  const pick = (entry) => {
    if (!entry) return "";
    if (kind === "square") return cleanFlagPreviewUrl(entry.square || entry.long || entry.long_mobile || "");
    if (device === "mobile") return cleanFlagPreviewUrl(entry.long_mobile || entry.long || entry.square || "");
    return cleanFlagPreviewUrl(entry.long || entry.long_mobile || entry.square || "");
  };
  return cleanFlagPreviewUrl(pick(rangeEntry) || pick(periodEntry) || pick(defaultEntry));
}

function serializeFlagPreviewConfig(config) {
  const safeConfig = config && typeof config === "object" ? config : createEmptyFlagPreviewConfig();
  const base = normalizeFlagPreviewEntry(safeConfig.default);
  const periodEntries = {};
  USSR_PERIOD_VALUES.forEach((periodKey) => {
    const entry = normalizeFlagPreviewEntry(safeConfig.periods?.[periodKey] || {});
    if (!entry.long && !entry.square) return;
    periodEntries[periodKey] = entry;
  });
  const rangeEntries = (Array.isArray(safeConfig.ranges) ? safeConfig.ranges : [])
    .map((row) => normalizeFlagPreviewRange(row))
    .filter(Boolean)
    .sort((a, b) => a.from - b.from || a.to - b.to)
    .slice(0, 10);
  const hasPeriods = Object.keys(periodEntries).length > 0;
  const hasRanges = rangeEntries.length > 0;
  if (!hasPeriods && !hasRanges && base.long === base.square && (!base.long_mobile || base.long_mobile === base.long)) return base.long;
  return JSON.stringify({
    default: base,
    periods: periodEntries,
    ranges: rangeEntries,
  });
}

function preferredFlagCardDevice() {
  try {
    return window.matchMedia("(max-width: 960px)").matches ? "mobile" : "desktop";
  } catch {
    return "desktop";
  }
}

function toCssUrlValue(value) {
  const raw = String(value || "").trim();
  if (!raw) return "";
  const safe = raw
    .replace(/\\/g, "\\\\")
    .replace(/"/g, '\\"')
    .replace(/\r?\n/g, "");
  return `url("${safe}")`;
}

function listenServiceKeyFromLink(link = {}) {
  const raw = `${link?.kind || ""} ${link?.title || ""} ${link?.url || ""}`.toLowerCase();
  if (!raw) return "";
  if (raw.includes("youtube") || raw.includes("youtu.be")) return "youtube";
  if (raw.includes("sovmusic")) return "sovmusic";
  if (raw.includes("russian records") || raw.includes("russian-records") || raw.includes("russianrecords")) return "russian-records";
  return "";
}

function listenSectionTitle() {
  if (uiLocale() === "ru") return "Слушать на платформах";
  if (uiLocale() === "uk") return "Слухати на платфорах";
  if (uiLocale() === "et") return "Kuula platvormidel";
  return "Listen on platforms";
}

function listenCtaText() {
  if (uiLocale() === "ru") return "Где слушать";
  if (uiLocale() === "uk") return "Де слухати";
  if (uiLocale() === "et") return "Kus kuulata";
  return "Where to listen";
}

function listenCtaHint() {
  if (uiLocale() === "ru") return "Откройте список сервисов ниже";
  if (uiLocale() === "uk") return "Відкрийте список сервісів нижче";
  if (uiLocale() === "et") return "Ava allpool teenuste nimekiri";
  return "Open the service list below";
}

function versionListenSectionTitle() {
  if (uiLocale() === "ru") return "Слушать по версиям";
  if (uiLocale() === "uk") return "Слухати за версіями";
  if (uiLocale() === "et") return "Kuula versioonide kaupa";
  return "Listen by versions";
}

function adminOnlyContentLabel() {
  if (uiLocale() === "ru") return "Admin-only контент";
  if (uiLocale() === "uk") return "Контент лише для адінів";
  if (uiLocale() === "et") return "Admin-only sisu";
  return "Admin-only content";
}

function adminOnlyContentHint() {
  if (uiLocale() === "ru") return "Песня видна только пользователям с правом просмотра admin-only.";
  if (uiLocale() === "uk") return "Пісня видима лише користувачам із правом перегляду admin-only.";
  if (uiLocale() === "et") return "Laul on nahtav ainult kasutajatele, kellel on admin-only vaatamise oigus.";
  return "The song is visible only to users with admin-only viewing permission.";
}

function songAuditAddedLabel() {
  if (uiLocale() === "ru") return "Добавил";
  if (uiLocale() === "uk") return "Додав";
  if (uiLocale() === "et") return "Lisaja";
  return "Added by";
}

function songAuditEditedLabel() {
  if (uiLocale() === "ru") return "Редактировал";
  if (uiLocale() === "uk") return "Редагував";
  if (uiLocale() === "et") return "Muutis";
  return "Edited by";
}

function songAuditUnknown() {
  if (uiLocale() === "ru") return "не указано";
  if (uiLocale() === "uk") return "не вказано";
  if (uiLocale() === "et") return "puudub";
  return "not set";
}

function closeEditorLabel() {
  if (uiLocale() === "ru") return "Закрыть редактор";
  if (uiLocale() === "uk") return "Закрити редактор";
  if (uiLocale() === "et") return "Sulge redaktor";
  return "Close editor";
}

function resolveListenServiceTargets(song, links) {
  const targets = {
    youtube: "",
    sovmusic: "",
    "russian-records": "",
  };
  const linkItems = Array.isArray(links) ? links : [];
  for (const item of linkItems) {
    const url = normalizePlayableUrl(item?.url);
    if (!url) continue;
    const key = listenServiceKeyFromLink({ ...item, url });
    if (key && !targets[key]) targets[key] = url;
  }
  const sourceUrl = normalizePlayableUrl(song?.source);
  if (sourceUrl) {
    const sourceKey = listenServiceKeyFromLink({ url: sourceUrl });
    if (sourceKey && !targets[sourceKey]) targets[sourceKey] = sourceUrl;
  }
  return targets;
}

function normalizeVersionLinkId(value) {
  const raw = String(value || "").trim();
  return raw || "__original";
}

function resolveListenServiceTargetsForVersion(song, links, version = null) {
  const targets = {
    youtube: "",
    sovmusic: "",
    "russian-records": "",
  };
  const versionId = normalizeVersionLinkId(version?.id);
  const linkItems = Array.isArray(links) ? links : [];
  for (const item of linkItems) {
    const linkVersionId = normalizeVersionLinkId(item?.version_id);
    if (linkVersionId !== versionId) continue;
    const url = normalizePlayableUrl(item?.url);
    if (!url) continue;
    const key = listenServiceKeyFromLink({ ...item, url });
    if (key && !targets[key]) targets[key] = url;
  }
  const sourceUrl = normalizePlayableUrl(versionId === "__original" ? song?.source : version?.source);
  if (sourceUrl) {
    const sourceKey = listenServiceKeyFromLink({ url: sourceUrl });
    if (sourceKey && !targets[sourceKey]) targets[sourceKey] = sourceUrl;
  }
  return targets;
}

function listenHostText(url) {
  if (!url) return "";
  try {
    return new URL(url).hostname.replace(/^www\./, "");
  } catch {
    return "";
  }
}

function collectListenServiceItems(song, links) {
  const targets = resolveListenServiceTargets(song, links);
  return LISTEN_SERVICES.map((service) => {
    const url = targets[service.id] || "";
    if (!url) return null;
    return {
      ...service,
      url,
      host: listenHostText(url),
    };
  }).filter(Boolean);
}

function collectListenServiceItemsForVersion(song, links, version = null) {
  const targets = resolveListenServiceTargetsForVersion(song, links, version);
  return LISTEN_SERVICES.map((service) => {
    const url = targets[service.id] || "";
    if (!url) return null;
    return {
      ...service,
      url,
      host: listenHostText(url),
    };
  }).filter(Boolean);
}

function renderListenServiceRows(items) {
  if (!Array.isArray(items) || !items.length) return "";
  return `
    <div class="song-listen-panel song-service-panel" id="songListenSection">
      <div class="song-listen-title song-service-title">${esc(listenSectionTitle())}</div>
      ${items.map((service) => {
    const iconHtml = `
          <span class="song-listen-open-icon">
            <img class="song-service-icon-img" src="${esc(service.iconPath)}" alt="" loading="lazy" decoding="async" />
          </span>
        `;
    return `
          <a class="song-listen-row songCard song-service-row" href="${esc(service.url)}" rel="noreferrer noopener">
            <div class="song-listen-copy">
              <div class="songTitle">${esc(service.label)}</div>
              <div class="songMeta">${esc(service.host)}</div>
            </div>
            ${iconHtml}
          </a>
        `;
  }).join("")}
    </div>
  `;
}

const isAdminLike = () => !!(state.user && state.user.role === "super_admin");
const isSuperAdmin = () => !!(state.user && state.user.role === "super_admin");

function badge(status) {
  if (status === "published") return `<span class="badge ok">${esc(t("status.published"))}</span>`;
  if (status === "draft") return `<span class="badge draft">${esc(t("status.draft"))}</span>`;
  if (status === "new") return `<span class="badge warn">${esc(t("status.new"))}</span>`;
  if (status === "approved") return `<span class="badge ok">${esc(t("status.approved"))}</span>`;
  if (status === "rejected") return `<span class="badge draft">${esc(t("status.rejected"))}</span>`;
  return `<span class="badge">${esc(status || "-")}</span>`;
}

function parseHashParams(hash) {
  if (!hash || !hash.includes("?")) return {};
  return Object.fromEntries(new URLSearchParams(hash.split("?")[1]));
}

function makeHash(base, values, keys) {
  const p = new URLSearchParams();
  keys.forEach((k) => {
    const value = (values[k] ?? "").toString().trim();
    if (value) p.set(k, value);
  });
  return `${base}${p.toString() ? "?" + p.toString() : ""}`;
}

function pagerWindow(page, pages) {
  const current = Math.max(1, Math.min(page, pages));
  const out = [];
  for (let p = 1; p <= pages; p += 1) {
    if (p === 1 || p === pages || Math.abs(p - current) <= 1) {
      out.push(p);
    } else if (out[out.length - 1] !== "...") {
      out.push("...");
    }
  }
  return out;
}

function renderPager(prefix, page, pages) {
  const current = Math.max(1, Math.min(page || 1, pages || 1));
  const total = Math.max(1, pages || 1);
  const items = pagerWindow(current, total);
  const prevLabel = uiLocale() === "ru"
    ? "Назад"
    : uiLocale() === "uk"
      ? "Назад"
      : uiLocale() === "et"
        ? "Eelmine"
        : "Prev";
  const nextLabel = uiLocale() === "ru"
    ? "Вперд"
    : uiLocale() === "uk"
      ? "Вперед"
      : uiLocale() === "et"
        ? "Jargmine"
        : "Next";
  return     `
    <div class="yt-pager pager-shell" data-pager="${esc(prefix)}">
      <button class="btn ghost pager-arrow" data-page="${Math.max(1, current - 1)}" ${current <= 1 ? "disabled" : ""} aria-label="${esc(prevLabel)}">&lt;</button>
      ${items.map((item) => item === "..." ? `<span class="pager-dots">...</span>` : `<button class="btn ghost pager-num ${item === current ? "is-active" : ""}" data-page="${item}" ${item === current ? "disabled" : ""}>${item}</button>`).join("")}
      <button class="btn ghost pager-arrow" data-page="${Math.min(total, current + 1)}" ${current >= total ? "disabled" : ""} aria-label="${esc(nextLabel)}">&gt;</button>
    </div>
  `;
}

function permissionLabel(permission) {
  const locale = uiLocale();
  const labels = PERMISSION_LABELS[permission];
  return labels?.[locale] || labels?.en || permission;
}

function permissionDescription(permission) {
  const locale = uiLocale();
  const descriptions = PERMISSION_DESCRIPTIONS[permission];
  return descriptions?.[locale] || descriptions?.en || permission;
}

function catalogHashForSongFilter(filters = {}) {
  return makeHash(
    "#/",
    {
      q: "",
      lang: "",
      country: "",
      period: "",
      region: "",
      event: "",
      theme: "",
      verified: "",
      recent: "",
      performer: "",
      year: "",
      searched: "1",
      adv: "0",
      page: "1",
      ...filters,
    },
    ["q", "lang", "country", "period", "region", "event", "theme", "verified", "recent", "performer", "year", "adv", "searched", "page"],
  );
}

function collectHomeFilters() {
  const rawCountry = qs("yt_country")?.value || "";
  const country = normalizeSongCountry(rawCountry) || rawCountry;
  const period = normalizeSongPeriod(qs("yt_period")?.value || "") || "";
  const rawLang = qs("yt_lang")?.value || "";
  const lang = normalizeSongLanguage(rawLang) || rawLang;
  const region = String(qs("yt_region")?.value || "").trim();
  const event = String(qs("yt_event")?.value || "").trim();
  const theme = String(qs("yt_theme")?.value || "").trim();
  const verified = qs("yt_verified") instanceof HTMLInputElement && qs("yt_verified").checked ? "1" : "";
  const recent = String(qs("yt_recent_mode")?.value || "").trim() === "1" ? "1" : "";
  const queryInput = qs("yt_q");
  return {
    q: queryInput ? queryInput.value : (qs("topSearchInput")?.value || ""),
    lang,
    country,
    period: country === "ussr" ? period : "",
    region,
    event,
    theme,
    verified,
    recent,
    performer: qs("yt_performer")?.value || "",
    year: qs("yt_year")?.value || "",
    adv: qs("yt_advancedPanel")?.classList.contains("hidden") ? "0" : "1",
    searched: "1",
  };
}

function homeHeroSubtitle() {
  if (uiLocale() === "ru") return "Исторические песни Европы по эпохам и странам";
  if (uiLocale() === "uk") return "Історичні пісні Європи за епохами та країнами";
  if (uiLocale() === "et") return "Euroopa ajaloolised laulud ajastute ja riikide kaupa";
  return "European historical songs by eras and countries";
}

function homeCountrySectionTitle() {
  if (uiLocale() === "ru") return "Выбор страны";
  if (uiLocale() === "uk") return "Вибір країни";
  if (uiLocale() === "et") return "Riigi valik";
  return "Choose country";
}

function homeCountrySectionHint() {
  if (uiLocale() === "ru") return "Выберите страну, чтобы открыть песни этой категории";
  if (uiLocale() === "uk") return "Оберіть країну, щоб відкрити пісні С†С–С”С— категорії";
  if (uiLocale() === "et") return "Vali riik, et avada selle kategooria laulud";
  return "Pick a country to open songs in this category";
}

function homeCountryOpenLabel() {
  if (uiLocale() === "ru") return "Открыть песни";
  if (uiLocale() === "uk") return "Відкрити пісні";
  if (uiLocale() === "et") return "Ava laulud";
  return "Open songs";
}

function homeCountrySongsCountLabel(count) {
  const n = Number(count || 0);
  if (uiLocale() === "ru") {
    if (n % 10 === 1 && n % 100 !== 11) return `${n} песня`;
    if (n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 12 || n % 100 > 14)) return `${n} песни`;
    return `${n} песен`;
  }
  if (uiLocale() === "uk") {
    if (n % 10 === 1 && n % 100 !== 11) return `${n} пісня`;
    if (n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 12 || n % 100 > 14)) return `${n} пісні`;
    return `${n} пісень`;
  }
  if (uiLocale() === "et") return `${n} laulu`;
  return `${n} songs`;
}

function homeCountryNoDataText() {
  if (uiLocale() === "ru") return "Фоны стран пока не настроены.";
  if (uiLocale() === "uk") return "Фони країн поки не налаштовані.";
  if (uiLocale() === "et") return "Riikide taustad pole veel seadistatud.";
  return "Country backgrounds are not configured yet.";
}

function homeResultsTitle() {
  if (uiLocale() === "ru") return "Результаты поиска";
  if (uiLocale() === "uk") return "Результати пошуку";
  if (uiLocale() === "et") return "Otsingutulemused";
  return "Search results";
}

function homeSearchHintText() {
  if (uiLocale() === "ru") return "Результаты песен появятся после поиска или выбора страны.";
  if (uiLocale() === "uk") return "Результати пісень з'являться після пошуку або вибору країни.";
  if (uiLocale() === "et") return "Laulude tulemused ilmuvad parast otsingut voi riigi valikut.";
  return "Song results appear after search or country selection.";
}

function verifiedLabel() {
  if (uiLocale() === "ru") return "Проверено";
  if (uiLocale() === "uk") return "Перевірено";
  if (uiLocale() === "et") return "Kontrollitud";
  return "Verified";
}

function verifiedOnlyLabel() {
  if (uiLocale() === "ru") return "Только проверенные";
  if (uiLocale() === "uk") return "Лише перевірені";
  if (uiLocale() === "et") return "Ainult kontrollitud";
  return "Verified only";
}

function homeReportFragmentLabel() {
  if (uiLocale() === "ru") return "Не нашли? Сообщить фрагмент";
  if (uiLocale() === "uk") return "Не знайшли? Повідомити фрагмент";
  if (uiLocale() === "et") return "Ei leidnud? Saada katkend";
  return "Not found? Report fragment";
}

function homeLoadingResultsText() {
  if (uiLocale() === "ru") return "Загружаем карточки...";
  if (uiLocale() === "uk") return "Завантажуємо картки...";
  if (uiLocale() === "et") return "Laen kaarte...";
  return "Loading cards...";
}

function homeRecentSongsLabel() {
  if (uiLocale() === "ru") return "Недавно добавленные песни";
  if (uiLocale() === "uk") return "Нещодавно додані пісні";
  if (uiLocale() === "et") return "Hiljuti lisatud laulud";
  return "Recently added songs";
}

function renderHomeSongCard(song = {}, options = {}) {
  const backgroundsByCountry = options.backgroundsByCountry instanceof Map ? options.backgroundsByCountry : new Map();
  const flagDevice = options.flagDevice || preferredFlagCardDevice();
  const isVerified = Number(song?.verified || 0) === 1;
  const countryKey = normalizeSongCountry(song?.country || "");
  const background = countryKey ? (backgroundsByCountry.get(countryKey) || {}) : {};
  const flagConfig = parseFlagPreviewConfig(String(background?.preview_flag_image_value || background?.preview_flag_image_url || "").trim());
  const flagUrl = resolveFlagPreviewImage(flagConfig, {
    country: song?.country || "",
    period: song?.period || "",
    year: song?.year || "",
    kind: "long",
    device: flagDevice,
  });
  const cardStyle = flagUrl ? ` style="${esc(`--yt-card-flag-image:${toCssUrlValue(flagUrl)}`)}"` : "";
  return `
    <a class="yt-card ${flagUrl ? "yt-card-has-flag" : ""}" href="#/song/${encodeURIComponent(song.id)}"${cardStyle}>
      ${song.year ? `<span class="yt-card-year">${esc(song.year)}</span>` : ``}
      <div class="yt-card-content">
        <div class="yt-card-title-row">
          <div class="yt-card-title">${esc(song.title)}</div>
          ${isVerified ? `<span class="yt-card-verified">${esc(verifiedLabel())}</span>` : ``}
        </div>
        ${song.subtitle ? `<div class="yt-card-performer">${esc(song.subtitle)}</div>` : ``}
        <div class="yt-card-meta-row">
          <span class="yt-card-line">${esc(formatLang(song.lang))}</span>
          <span class="yt-card-line">${esc(formatCountry(song.country))}</span>
        </div>
      </div>
    </a>
  `;
}

function homeUI(data, params, homeExtras = {}) {
  const page = data.page || 1;
  const pages = data.pages || 1;
  const q = params.q || "";
  const lang = normalizeSongLanguage(params.lang || "") || params.lang || "";
  const country = normalizeSongCountry(params.country || "") || params.country || "";
  const period = normalizeSongPeriod(params.period || "") || params.period || "";
  const region = String(params.region || "").trim();
  const event = String(params.event || "").trim();
  const theme = String(params.theme || "").trim();
  const verified = String(params.verified || "").trim() === "1";
  const recent = String(params.recent || "").trim() === "1";
  const performer = params.performer || "";
  const year = params.year || "";
  const didSearch = params.searched === "1";
  const lockedCountry = normalizeSongCountry(country || "") || "";
  const isCountryLocked = !!lockedCountry;
  const hasAdvancedValue = !!(lang || period || region || event || theme || verified || performer || year);
  const showAdvanced = params.adv === "1" || (!isCountryLocked && hasAdvancedValue);
  const advancedLabel = uiLocale() === "ru"
    ? "Детальный поиск"
    : uiLocale() === "uk"
      ? "Розширений пошук"
    : uiLocale() === "et"
      ? "Tapsem otsing"
      : "Advanced search";
  const hideAdvancedLabel = uiLocale() === "ru"
    ? "Скрыть детали"
    : uiLocale() === "uk"
      ? "Сховати деталі"
    : uiLocale() === "et"
      ? "Peida detailid"
      : "Hide details";
  const recentEntryHref = catalogHashForSongFilter({
    q: "",
    lang: "",
    country: "",
    period: "",
    region: "",
    event: "",
    theme: "",
    verified: "",
    recent: "1",
    performer: "",
    year: "",
    searched: "1",
    adv: "0",
    page: "1",
  });

  const backgroundsByCountry = new Map();
  const countryCounts = new Map();
  const countItems = Array.isArray(homeExtras?.countryCounts) ? homeExtras.countryCounts : [];
  for (const item of countItems) {
    const key = normalizeSongCountry(item?.country || "");
    const count = Number(item?.count || 0);
    if (!key || count < 0) continue;
    countryCounts.set(key, (countryCounts.get(key) || 0) + count);
  }
  const backgroundItems = Array.isArray(homeExtras?.countryBackgrounds) ? homeExtras.countryBackgrounds : [];
  for (const item of backgroundItems) {
    const normalized = normalizeCountryBackground(item, item?.country || "");
    const key = normalizeSongCountry(normalized?.country || "");
    if (!key || backgroundsByCountry.has(key)) continue;
    backgroundsByCountry.set(key, normalized);
  }

  const countrySet = new Set([...backgroundsByCountry.keys()]);
  for (const key of countryCounts.keys()) {
    if (key) countrySet.add(key);
  }
  for (const song of data.items || []) {
    const key = normalizeSongCountry(song?.country || "");
    if (key) countrySet.add(key);
  }
  const countryCards = [...countrySet]
    .map((countryKey) => {
      const background = backgroundsByCountry.get(countryKey) || {};
      const flagUrl = resolveFlagPreviewImage(background?.preview_flag_config || null, {
        country: countryKey,
        period: countryKey === "ussr" ? period : "",
        kind: "square",
      })
        || String(background?.preview_flag_image_url || "").trim();
      const wallpaperUrl = String(background?.desktop_image_url || background?.mobile_image_url || "").trim();
      const href = catalogHashForSongFilter({ country: countryKey, searched: "1", adv: "0", page: "1" });
      return {
        key: countryKey,
        label: formatCountry(countryKey),
        count: countryCounts.get(countryKey) || 0,
        href,
        previewBg: wallpaperUrl || flagUrl,
        wallBg: wallpaperUrl,
        flagBg: flagUrl,
        isActive: country === countryKey,
      };
    })
    .sort((a, b) => {
      const byCount = (Number(b.count) || 0) - (Number(a.count) || 0);
      if (byCount !== 0) return byCount;
      return a.label.localeCompare(b.label, uiLocale() === "ru" ? "ru" : "en");
    });

  const countryCardsHtml = countryCards.length
    ? countryCards.map((item) => `
      <a
        class="home-country-card ${item.isActive ? "is-active" : ""}"
        href="${esc(item.href)}"
        data-home-bg="${esc(item.previewBg || "")}"
        style="${esc([
    item.wallBg ? `--home-country-wall:${toCssUrlValue(item.wallBg)}` : "",
    item.flagBg ? `--home-country-flag:${toCssUrlValue(item.flagBg)}` : "",
  ].filter(Boolean).join(";"))}"
      >
        <span class="home-country-card-label">${esc(item.label)}</span>
        <span class="home-country-card-count">${esc(homeCountrySongsCountLabel(item.count))}</span>
        <span class="home-country-card-cta">${esc(homeCountryOpenLabel())}</span>
      </a>
    `).join("")
    : `<div class="card"><div class="muted">${esc(homeCountryNoDataText())}</div></div>`;

  const loadingResultsText = homeLoadingResultsText();
  const resultLoadingScreenMarkup = `
    <div class="card home-search-hint home-results-loader-screen" id="yt_results_loading_screen">
      <div class="home-results-loader-row">
        <span class="home-results-spinner" aria-hidden="true"></span>
        <span class="muted">${esc(loadingResultsText)}</span>
      </div>
    </div>
  `;
  const suggestions = Array.isArray(data?.suggestions) ? data.suggestions : [];
  const hasExactResults = (data.items || []).length > 0;
  const hasSuggestions = suggestions.length > 0;
  const maybeYouSearchedTitle = uiLocale() === "ru"
    ? "Возожно, вы искали"
    : uiLocale() === "uk"
      ? "Можливо, ви шукали"
      : uiLocale() === "et"
        ? "Voib-olla otsisite"
        : "Maybe you searched for";
  const exactNotFoundText = uiLocale() === "ru"
    ? "Точного совпадения не найдено."
    : uiLocale() === "uk"
      ? "Точного збігу не знайдено."
      : uiLocale() === "et"
        ? "Tapset vastet ei leitud."
        : "No exact match found.";

  const shouldShowResults = didSearch;

  return `
    <section class="yt-main home-main">
      <div class="yt-detail-trigger" id="yt_detailToggleWrap">
        <div class="yt-detail-trigger-actions">
          <button
            class="btn ghost ${showAdvanced ? "is-open" : ""}"
            id="yt_toggleAdvanced"
            type="button"
            data-label-open="${esc(hideAdvancedLabel)}"
            data-label-closed="${esc(advancedLabel)}"
          >${esc(showAdvanced ? hideAdvancedLabel : advancedLabel)}</button>
          <a class="btn ghost ${recent ? "is-active" : ""}" id="yt_openRecent" href="${esc(recentEntryHref)}">${esc(homeRecentSongsLabel())}</a>
        </div>
      </div>

      <div class="yt-chips ${showAdvanced ? "is-open" : "hidden"}" id="yt_advancedPanel">
        <input id="yt_recent_mode" type="hidden" value="${recent ? "1" : ""}" />
        <label class="yt-chip-input">
          <span>${esc(t("field.lang"))}</span>
          <select class="select" id="yt_lang">${selectOptions("language", lang, uiText("selectLanguage"))}</select>
        </label>
        ${isCountryLocked ? `<input id="yt_country" type="hidden" value="${esc(lockedCountry)}" />` : `
        <label class="yt-chip-input">
          <span>${esc(t("home.country"))}</span>
          <select class="select" id="yt_country">${selectOptions("country", country, uiText("selectCountry"))}</select>
        </label>
        `}
        <label class="yt-chip-input hidden" id="yt_period_wrap">
          <span>${esc(t("field.period"))}</span>
          <select class="select" id="yt_period">${selectOptions("period", period, uiText("selectPeriod"))}</select>
        </label>
        <label class="yt-chip-input">
          <span>${esc(uiText("performer"))}</span>
          <input class="input" id="yt_performer" value="${esc(performer)}" />
        </label>
        <label class="yt-chip-input">
          <span>${esc(uiLocale() === "ru" ? "Регион" : uiLocale() === "uk" ? "Регіон" : uiLocale() === "et" ? "Piirkond" : "Region")}</span>
          <input class="input" id="yt_region" value="${esc(region)}" />
        </label>
        <label class="yt-chip-input">
          <span>${esc(uiLocale() === "ru" ? "Событие" : uiLocale() === "uk" ? "Подія" : uiLocale() === "et" ? "Sundmus" : "Event")}</span>
          <input class="input" id="yt_event" value="${esc(event)}" />
        </label>
        <label class="yt-chip-input">
          <span>${esc(uiLocale() === "ru" ? "Театика" : uiLocale() === "uk" ? "Театика" : uiLocale() === "et" ? "Temaatika" : "Theme")}</span>
          <input class="input" id="yt_theme" value="${esc(theme)}" />
        </label>
        <label class="yt-chip-input yt-chip-checkbox">
          <div class="checkbox-row">
            <input type="checkbox" id="yt_verified" ${verified ? "checked" : ""} />
            <span>${esc(verifiedOnlyLabel())}</span>
          </div>
        </label>
        <label class="yt-chip-input">
          <span>${esc(t("field.year"))}</span>
          <input class="input" id="yt_year" value="${esc(year)}" />
        </label>
        <div class="actions home-advanced-actions">
          <button class="btn primary" id="yt_applyAdvanced" type="button">${esc(t("common.search"))}</button>
          <button class="btn ghost" id="yt_resetAdvanced" type="button">${esc(t("common.reset"))}</button>
        </div>
      </div>

      ${!isCountryLocked && !didSearch ? `<div class="home-country-head">
        <div>
          <div class="h1">${esc(homeCountrySectionTitle())}</div>
          <div class="muted">${esc(homeCountrySectionHint())}</div>
        </div>
      </div>

      <div class="home-country-grid">
        ${countryCardsHtml}
      </div>` : ``}

      ${shouldShowResults ? `
        <div class="yt-feed-head yt-results-head">
          <div>
            <div class="h1">${esc(homeResultsTitle())}</div>
            <div class="muted">${esc(t("home.published"))}</div>
          </div>
        </div>
        ${hasExactResults ? `
          ${resultLoadingScreenMarkup}
          <div class="yt-feed yt-feed-progressive is-chunk-loading" id="yt_results_feed" data-feed-mode="exact">
          </div>
          ${renderPager("yt", page, pages)}
        ` : hasSuggestions ? `
          <div class="card home-search-hint">
            <div class="muted">${esc(exactNotFoundText)}</div>
          </div>
          <div class="yt-feed-head yt-results-head">
            <div class="h2">${esc(maybeYouSearchedTitle)}</div>
          </div>
          ${resultLoadingScreenMarkup}
          <div class="yt-feed yt-feed-progressive is-chunk-loading" id="yt_results_feed" data-feed-mode="suggestions">
          </div>
        ` : `
          <div class="yt-feed">
            <div class="card"><div class="muted">${esc(t("home.nothing"))}</div><div class="actions" style="margin-top:10px"><a class="btn ghost" href="${esc(makeHash("#/request", { fragment: q || "" }, ["fragment"]))}">${esc(homeReportFragmentLabel())}</a></div></div>
          </div>
        `}
      ` : `
        <div class="card home-search-hint home-search-hint-flat">
          <div class="muted">${esc(homeSearchHintText())}</div>
        </div>
      `}
    </section>
  <div class="yt-mobile-spacer"></div>
  `;
}

const draftOpStatusStore = globalThis.__songbookDraftOpStatusStore || new Map();
globalThis.__songbookDraftOpStatusStore = draftOpStatusStore;

function draftUiText(key, vars = {}) {
  const locale = uiLocale();
  const pack = {
    variantBadgeManual: { ru: "Ручной", uk: "Ручний", et: "Kasitsi", en: "Manual" },
    variantBadgeSuggested: { ru: "Подсказка", uk: "Пидказка", et: "Soovitus", en: "Suggested" },
    variantBadgeConflict: { ru: "Конфликт", uk: "Конфликт", et: "Konflikt", en: "Conflict" },
    variantsToggle: { ru: "Варианты", uk: "Варианты", et: "Variandid", en: "Variants" },
    useVariant: { ru: "Выбрать", uk: "Обрати", et: "Kasuta", en: "Use" },
    newVariantPlaceholder: { ru: "Текст варианта", uk: "Текст варианту", et: "Variandi tekst", en: "Variant text" },
    addVariantManual: { ru: "Добавить вариант", uk: "Додати вариант", et: "Lisa variant", en: "Add variant" },
    addVariantSuggested: { ru: "Добавить подсказку", uk: "Додати пидказку", et: "Lisa soovitus", en: "Add suggested" },
    owner: { ru: "владелец", uk: "власник", et: "omanik", en: "owner" },
    draftFallbackTitle: { ru: "Черновик", uk: "Чернетка", et: "Mustand", en: "Draft" },
    draftMeta: { ru: "Черновик: {draftId} · v{version}", uk: "Чернетка: {draftId} · v{version}", et: "Mustand: {draftId} · v{version}", en: "Draft: {draftId} · v{version}" },
    collaboratorNicknamePlaceholder: { ru: "Никнейм", uk: "Никнейм", et: "Kasutajanimi", en: "Nickname" },
    addCollaborator: { ru: "Добавить соавтора", uk: "Додати спивавтора", et: "Lisa kaasautor", en: "Add collaborator" },
    publishDraft: { ru: "Опубликовать черновик", uk: "Опубликувати чернетку", et: "Avalda mustand", en: "Publish draft" },
    liveStatus: { ru: "Live-статус", uk: "Live-статус", et: "Live olek", en: "Live status" },
    statusOffline: { ru: "оффлайн", uk: "офлайн", et: "vorgust maas", en: "offline" },
    statusConnecting: { ru: "подключение...", uk: "пидключення...", et: "uhendamine...", en: "connecting..." },
    statusOnline: { ru: "онлайн", uk: "онлайн", et: "vorgus", en: "online" },
    statusOnlineWithNames: { ru: "онлайн: {names}", uk: "онлайн: {names}", et: "vorgus: {names}", en: "online: {names}" },
    statusReconnecting: { ru: "переподключение...", uk: "перепидключення...", et: "taasuhendamine...", en: "reconnecting..." },
    statusConnectionError: { ru: "ошибка соединения", uk: "помилка з'єднання", et: "uhenduse viga", en: "connection error" },
    statusWsUnsupported: { ru: "WebSocket не поддерживается", uk: "WebSocket не пидтримуеться", et: "WebSocket pole toetatud", en: "WebSocket unsupported" },
    wsNotConnected: { ru: "WebSocket не подключен", uk: "WebSocket не пидключений", et: "WebSocket pole uhendatud", en: "WebSocket is not connected" },
    promptCopied: { ru: "Промпт скопирован", uk: "Промпт скопийовано", et: "Prompt kopeeritud", en: "Prompt copied" },
    promptCopyFailed: { ru: "Не удалось скопировать", uk: "Не вдалося скопиювати", et: "Kopeerimine ebaonnestus", en: "Copy failed" },
    conflictSaved: { ru: "Конфликт сохранен как отдельный вариант", uk: "Конфликт збережено як окремий вариант", et: "Konflikt salvestati eraldi variandina", en: "Conflict saved as extra variant" },
    draftPublished: { ru: "Черновик опубликован", uk: "Чернетку опубликовано", et: "Mustand avaldati", en: "Draft published" },
    openCollaborativeDraft: { ru: "Совместный черновик", uk: "Спильна чернетка", et: "Koostoo mustand", en: "Collaborative draft" },
    draftNotCreated: { ru: "Черновик не создан", uk: "Чернетку не створено", et: "Mustandit ei loodud", en: "Draft was not created" },
    opStatusPending: { ru: "ожидает", uk: "очикуе", et: "ootel", en: "pending" },
    opStatusApplied: { ru: "применено", uk: "застосовано", et: "rakendatud", en: "applied" },
    opStatusPersisted: { ru: "сохранено", uk: "збережено", et: "salvestatud", en: "persisted" },
    aiCopy: { ru: "Копировать AI-промпт", uk: "Копиювати AI-промпт", et: "Kopeeri AI prompt", en: "AI copy" },
    aiOpen: { ru: "Открыть ChatGPT", uk: "Видкрити ChatGPT", et: "Ava ChatGPT", en: "Open ChatGPT" },
  };
  const fallback = pack[key]?.en || key;
  const template = pack[key]?.[locale] || fallback;
  return Object.entries(vars || {}).reduce((acc, [name, value]) => (
    acc.replaceAll(`{${name}}`, String(value ?? ""))
  ), template);
}

function draftVariantTypeLabel(value = "") {
  const normalized = String(value || "").trim().toLowerCase();
  if (normalized === "suggested") return draftUiText("variantBadgeSuggested");
  if (normalized === "conflict") return draftUiText("variantBadgeConflict");
  return draftUiText("variantBadgeManual");
}

function draftConfidenceBand(confidence) {
  const value = Number(confidence || 0);
  if (value >= 85) return "is-high";
  if (value >= 60) return "is-mid";
  return "is-low";
}

function draftActiveVariant(line = {}) {
  const variants = Array.isArray(line?.variants) ? line.variants : [];
  return variants.find((item) => item?.is_active) || variants[0] || null;
}

function draftOpStoreFor(draftId) {
  const key = String(draftId || "");
  if (!draftOpStatusStore.has(key)) {
    draftOpStatusStore.set(key, new Map());
  }
  return draftOpStatusStore.get(key);
}

function draftOpStatusLabel(status = "") {
  const normalized = String(status || "").trim().toLowerCase();
  if (normalized === "pending") return draftUiText("opStatusPending");
  if (normalized === "applied") return draftUiText("opStatusApplied");
  if (normalized === "persisted") return draftUiText("opStatusPersisted");
  return normalized || draftUiText("opStatusPending");
}

function draftLineRowsUI(lines = []) {
  const safeLines = Array.isArray(lines) ? lines : [];
  return safeLines.map((line, index) => {
    const active = draftActiveVariant(line);
    const activeText = String(active?.text || "");
    const activeConfidence = Number(active?.confidence || 100);
    const variants = Array.isArray(line?.variants) ? line.variants : [];
    return `
      <div class="songCard draft-line ${draftConfidenceBand(activeConfidence)}" data-line-id="${esc(line.id)}">
        <div class="draft-line-header">
          <div class="draft-line-meta">
            <span class="badge">${index + 1}</span>
            <span class="draft-line-confidence">${Math.max(0, Math.min(100, Math.round(activeConfidence)))}%</span>
          </div>
          <button class="btn ghost draft-variants-toggle" type="button" data-line-id="${esc(line.id)}" aria-label="${esc(draftUiText("variantsToggle"))}" title="${esc(draftUiText("variantsToggle"))}">&#9776;</button>
        </div>
        <textarea class="textarea draft-line-input" data-line-id="${esc(line.id)}" data-confidence="${Math.max(0, Math.min(100, Math.round(activeConfidence)))}">${esc(activeText)}</textarea>
        <div class="actions draft-line-ai-actions">
          <button class="btn ghost draft-ai-copy" type="button" data-line-id="${esc(line.id)}">${esc(draftUiText("aiCopy"))}</button>
          <button class="btn ghost draft-ai-open" type="button" data-line-id="${esc(line.id)}">${esc(draftUiText("aiOpen"))}</button>
        </div>
        <div class="draft-variants-panel hidden" id="draft_variants_${esc(line.id)}">
          ${variants.map((variant) => `
            <div class="draft-variant-row ${variant?.is_active ? "is-active" : ""}">
              <div class="draft-variant-text">${esc(String(variant?.text || ""))}</div>
              <div class="draft-variant-controls">
                <span class="badge">${esc(draftVariantTypeLabel(variant?.variant_type || "manual"))}</span>
                <input class="input draft-variant-confidence" type="number" min="0" max="100" value="${Math.max(0, Math.min(100, Math.round(Number(variant?.confidence || 0))))}" data-line-id="${esc(line.id)}" data-variant-id="${esc(variant?.id || "")}" />
                <button class="btn ghost draft-variant-activate" type="button" data-line-id="${esc(line.id)}" data-variant-id="${esc(variant?.id || "")}" ${variant?.is_active ? "disabled" : ""}>${esc(draftUiText("useVariant"))}</button>
              </div>
            </div>
          `).join("")}
          <div class="draft-add-variant">
            <input class="input draft-new-variant-text" type="text" placeholder="${esc(draftUiText("newVariantPlaceholder"))}" data-line-id="${esc(line.id)}" />
            <input class="input draft-new-variant-confidence" type="number" min="0" max="100" value="80" data-line-id="${esc(line.id)}" />
            <div class="draft-add-variant-actions">
              <button class="btn ghost draft-add-variant-btn" type="button" data-line-id="${esc(line.id)}">${esc(draftUiText("addVariantManual"))}</button>
              <button class="btn ghost draft-add-suggested-btn" type="button" data-line-id="${esc(line.id)}">${esc(draftUiText("addVariantSuggested"))}</button>
            </div>
          </div>
        </div>
      </div>
    `;
  }).join("");
}

function draftCollaboratorsUI(payload = {}, canManage = false) {
  const owner = payload?.owner || null;
  const list = Array.isArray(payload?.collaborators) ? payload.collaborators : [];
  const ownerName = owner ? (owner.nickname || owner.email || owner.id || "") : "";
  const ownerMarkup = ownerName ? `
    <div class="songCard draft-collab-card is-owner">
      <div class="songTitle">${esc(ownerName)}</div>
      <div class="songMeta">${esc(draftUiText("owner"))}</div>
    </div>
  ` : "";
  const collaboratorMarkup = list.map((user) => {
    const name = String(user?.nickname || user?.email || user?.user_id || "").trim();
    return `
      <div class="songCard draft-collab-card">
        <div>
          <div class="songTitle">${esc(name)}</div>
          <div class="songMeta">${esc(String(user?.email || ""))}</div>
        </div>
        ${canManage ? `<button class="btn danger draft-collab-remove" type="button" data-user-id="${esc(user?.user_id || "")}">${esc(t("common.delete"))}</button>` : ``}
      </div>
    `;
  }).join("");
  return `${ownerMarkup}${collaboratorMarkup}`;
}

function draftEditorUI(payload = {}, options = {}) {
  const snapshot = payload?.snapshot && typeof payload.snapshot === "object" ? payload.snapshot : {};
  const lines = Array.isArray(payload?.lines) ? payload.lines : [];
  const draftId = String(payload?.draft_id || options.draftId || "").trim();
  const title = String(snapshot?.title || draftUiText("draftFallbackTitle")).trim() || draftUiText("draftFallbackTitle");
  const canManageCollaborators = String(payload?.owner?.id || "") === String(state?.user?.id || "");
  return `
    <section class="yt-main draft-main">
      <div class="card">
        <div class="row wrap gap">
          <div class="h2">${esc(title)}</div>
          <a class="btn ghost" href="#/admin/content">${esc(t("common.back"))}</a>
        </div>
        <div class="muted small">${esc(draftUiText("draftMeta", { draftId, version: String(payload?.version || 0) }))}</div>
        <div class="sep"></div>
        <div class="grid2">
          <input class="input" id="draft_collab_nickname" placeholder="${esc(draftUiText("collaboratorNicknamePlaceholder"))}" />
          <button class="btn" id="draft_collab_add" type="button">${esc(draftUiText("addCollaborator"))}</button>
        </div>
        <div class="list" id="draft_collaborators_list">
          ${draftCollaboratorsUI(payload, canManageCollaborators)}
        </div>
        <div class="actions" style="margin-top:10px">
          <button class="btn" id="draft_publish_btn" type="button">${esc(draftUiText("publishDraft"))}</button>
        </div>
      </div>
      <div class="card">
        <div class="h2">${esc(draftUiText("liveStatus"))}</div>
        <div class="muted small" id="draft_presence">${esc(draftUiText("statusOffline"))}</div>
        <div class="list draft-ops" id="draft_ops_list"></div>
      </div>
      <div class="list draft-lines-list" id="draft_lines_list">
        ${draftLineRowsUI(lines)}
      </div>
    </section>
    <div class="yt-mobile-spacer"></div>
  `;
}

function buildDraftPhoneticPrompt({ title = "", before = "", current = "", after = "" } = {}) {
  return [
    "Task: suggest line variants by phonetic similarity only.",
    "Strict rules:",
    "1) Prioritize sound match over semantics.",
    "2) Do not propose words that are only contextually fitting but sound different.",
    "3) Keep syllable count and stress pattern close to the heard fragment.",
    "4) Return 6-10 options with short phonetic rationale.",
    "",
    `Song: ${title || "Unknown"}`,
    `Previous line: ${before || "-"}`,
    `Current heard line: ${current || "-"}`,
    `Next line: ${after || "-"}`,
  ].join("\n");
}

function buildPrompt(kind, song) {
  const head = `${t("prompt.song")}: ${song.title}\n${t("prompt.language")}: ${formatLang(song.lang)}\n${t("prompt.country")}: ${formatCountry(song.country)}\n${t("prompt.period")}: ${formatPeriod(song.period)}\n`;
  const body = `\n${t("prompt.lyrics")}:\n${song.lyrics}\n`;
  if (kind === "context") return head + `\n${t("prompt.contextTask")}\n` + body;
  if (kind === "translate") return head + `\n${t("prompt.translateTask")}\n` + body;
  return head + `\n${t("prompt.explainTask")}\n` + body;
}

const CHORUS_KEYWORDS = ["припев", "приспiв", "приспів", "chorus", "refrain", "koor"];
const VERSE_KEYWORDS = ["куплет", "verse", "stanza", "salm"];

function chorusMarkerLabel() {
  if (uiLocale() === "ru") return "Припев";
  if (uiLocale() === "uk") return "Приспів";
  if (uiLocale() === "et") return "Koor";
  return "Chorus";
}

function verseMarkerLabel() {
  if (uiLocale() === "ru") return "Куплет";
  if (uiLocale() === "uk") return "Куплет";
  if (uiLocale() === "et") return "Salm";
  return "Verse";
}

function chorusFieldLabel() {
  if (uiLocale() === "ru") return "Припев";
  if (uiLocale() === "uk") return "Приспів";
  if (uiLocale() === "et") return "Koor";
  return "Chorus";
}

function normalizeSectionToken(line) {
  return String(line || "")
    .toLowerCase()
    .replace(/[.:!?,;()[\]{}"'\-–—]+/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function isSectionToken(line, keywords) {
  const token = normalizeSectionToken(line);
  if (!token) return false;
  const normalized = token.replace(/\s+\d+$/, "").trim();
  return keywords.includes(normalized);
}

function parseStructuredLyrics(rawLyrics) {
  const source = String(rawLyrics || "").replace(/\r\n?/g, "\n").trim();
  if (!source) return { blocks: [], expanded: "" };

  const stanzas = source
    .split(/\n\s*\n+/g)
    .map((part) => part.split("\n").map((line) => line.trim()).filter(Boolean))
    .filter((lines) => lines.length > 0)
    .map((lines) => {
      const first = lines[0];
      const tail = lines.slice(1).join("\n").trim();
      return {
        lines,
        first,
        tail,
        isChorus: isSectionToken(first, CHORUS_KEYWORDS),
        isVerse: isSectionToken(first, VERSE_KEYWORDS),
      };
    });
  const blocks = [];
  const firstKnownChorus = stanzas.find((item) => item.isChorus && item.tail)?.tail || "";
  let rememberedChorus = firstKnownChorus;

  for (const stanza of stanzas) {
    const { lines, tail, isChorus, isVerse } = stanza;
    if (isChorus) {
      if (tail) {
        rememberedChorus = tail;
        blocks.push({ type: "chorus", text: tail, source: "full" });
      } else if (rememberedChorus) {
        blocks.push({ type: "chorus", text: rememberedChorus, source: "ref" });
      } else {
        blocks.push({ type: "verse", text: lines.join("\n").trim(), source: "full" });
      }
      continue;
    }

    if (isVerse) {
      const verseText = tail || lines.join("\n").trim();
      if (verseText) blocks.push({ type: "verse", text: verseText, source: "full" });
      continue;
    }

    const plainText = lines.join("\n").trim();
    if (plainText) blocks.push({ type: "verse", text: plainText, source: "full" });
  }

  const expanded = blocks.map((block) => {
    if (block.type === "chorus") return `${chorusMarkerLabel()}\n${block.text}`.trim();
    return block.text;
  }).filter(Boolean).join("\n\n");

  return { blocks, expanded };
}

function parseLyricsMetaPayload(input) {
  if (!input) return null;
  if (typeof input === "string") {
    try {
      const parsed = JSON.parse(input);
      return parsed && typeof parsed === "object" ? parsed : null;
    } catch {
      return null;
    }
  }
  if (typeof input === "object") return input;
  return null;
}

function lineConfidenceFromLyricsMeta(lineMeta = {}) {
  const variants = Array.isArray(lineMeta?.variants) ? lineMeta.variants : [];
  const activeId = String(lineMeta?.active_variant_id || "").trim();
  const activeVariant = variants.find((item) => String(item?.id || "") === activeId)
    || variants.find((item) => !!item?.is_active)
    || variants[0]
    || null;
  const value = Number(activeVariant?.confidence);
  if (!Number.isFinite(value)) return null;
  return Math.max(0, Math.min(100, Math.round(value)));
}

function extractLyricsLineConfidences(lyricsMetaInput) {
  const payload = parseLyricsMetaPayload(lyricsMetaInput);
  const lines = Array.isArray(payload?.lines) ? payload.lines : [];
  if (!lines.length) return [];
  return lines.map((lineMeta) => lineConfidenceFromLyricsMeta(lineMeta));
}

function renderLyricLineWithConfidence(text, confidence) {
  const numericConfidence = Number(confidence);
  const hasConfidence = Number.isFinite(numericConfidence);
  const safeConfidence = hasConfidence ? Math.max(0, Math.min(100, Math.round(numericConfidence))) : null;
  const classes = [
    "song-lyric-line",
    hasConfidence ? "has-confidence" : "",
    hasConfidence ? draftConfidenceBand(safeConfidence) : "",
  ].filter(Boolean).join(" ");
  const content = String(text || "");
  return `<span class="${classes}"${hasConfidence ? ` data-confidence="${safeConfidence}"` : ""}>${content ? renderTextWithUnknownMarkers(content) : "&nbsp;"}${hasConfidence ? `<span class="song-lyric-line-confidence">${safeConfidence}%</span>` : ""}</span>`;
}

function renderStructuredLyrics(rawLyrics, options = {}) {
  const renderWithUnknownMarks = (text) => renderTextWithUnknownMarkers(text);
  const parsed = parseStructuredLyrics(rawLyrics);
  const fallbackText = String(rawLyrics || "").trim();
  const confidenceSeries = Array.isArray(options?.line_confidences) ? options.line_confidences : [];
  let confidenceIndex = 0;
  const nextConfidence = () => {
    if (!confidenceSeries.length) return null;
    const value = confidenceSeries[confidenceIndex];
    confidenceIndex += 1;
    return value;
  };
  const renderBlockTextWithConfidence = (text) => {
    const lines = String(text || "").split("\n");
    return lines.map((line) => renderLyricLineWithConfidence(line, nextConfidence())).join("\n");
  };
  if (!parsed.blocks.length) {
    return {
      html: fallbackText
        ? `<div class="song-lyric-block is-verse"><pre class="lyrics song-primary-lyrics song-text song-lyric-text">${confidenceSeries.length ? renderBlockTextWithConfidence(fallbackText) : renderWithUnknownMarks(fallbackText)}</pre><span class="song-lyric-marker song-lyric-marker-empty" aria-hidden="true"></span></div>`
        : "",
      expanded: fallbackText,
    };
  }

  const html = parsed.blocks.map((block) => {
    const isChorus = block.type === "chorus";
    const marker = isChorus ? chorusMarkerLabel() : "";
    const classes = [
      "song-lyric-block",
      isChorus ? "is-chorus" : "is-verse",
      block.source === "ref" ? "is-chorus-ref" : "",
    ].filter(Boolean).join(" ");
    return `
      <div class="${classes}">
        <pre class="lyrics song-primary-lyrics song-text song-lyric-text">${confidenceSeries.length ? renderBlockTextWithConfidence(block.text) : renderWithUnknownMarks(block.text)}</pre>
        ${marker ? `<span class="song-lyric-marker">${esc(marker)}</span>` : `<span class="song-lyric-marker song-lyric-marker-empty" aria-hidden="true"></span>`}
      </div>
    `;
  }).join("");

  return {
    html,
    expanded: parsed.expanded || fallbackText,
  };
}

function decodeLyricsProgressPercent(value) {
  const text = String(value || "");
  const allChars = (text.match(/\S/g) || []).length;
  if (!allChars) return 100;
  const unknownChars = countUnknownQuestionMarks(text);
  const safeKnown = Math.max(0, allChars - unknownChars);
  const pct = (safeKnown / allChars) * 100;
  return Math.max(0, Math.min(100, Math.round(pct * 10) / 10));
}

function isUnknownQuestionMarkAt(text, index) {
  if (text[index] !== "?") return false;
  const prev = index > 0 ? text[index - 1] : "";
  const next = index + 1 < text.length ? text[index + 1] : "";
  const isLineEnd = next === "" || next === "\n";
  if (!isLineEnd) return true;
  return prev === "?";
}

function countUnknownQuestionMarks(text) {
  const src = String(text || "");
  let total = 0;
  for (let i = 0; i < src.length; i += 1) {
    if (isUnknownQuestionMarkAt(src, i)) total += 1;
  }
  return total;
}

function renderTextWithUnknownMarkers(text) {
  const src = String(text || "");
  let out = "";
  for (let i = 0; i < src.length; i += 1) {
    const ch = src[i];
    if (ch === "?" && isUnknownQuestionMarkAt(src, i)) {
      out += `<span class="song-unknown-char">?</span>`;
    } else {
      out += esc(ch);
    }
  }
  return out;
}

function normalizeCompareText(text = "") {
  return String(text || "").replace(/\r\n?/g, "\n").trim();
}

function splitLyricsToStanzas(text = "") {
  const normalized = normalizeCompareText(text);
  if (!normalized) return [];
  return normalized
    .split(/\n{2,}/)
    .map((chunk) => chunk.trim())
    .filter(Boolean);
}

function normalizeCompareStanza(text = "") {
  return String(text || "")
    .replace(/\r\n?/g, "\n")
    .toLowerCase()
    .split("\n")
    .map((line) => line.trim())
    .filter(Boolean)
    .join("\n")
    .replace(/[^\p{L}\p{N}\n\s]+/gu, " ")
    .replace(/[ \t]+/g, " ")
    .replace(/\n{2,}/g, "\n")
    .trim();
}

function tokenizeCompareStanza(text = "") {
  const normalized = normalizeCompareStanza(text).replace(/\n/g, " ");
  return normalized.match(/[\p{L}\p{N}]+/gu) || [];
}

function compareStanzaSimilarity(sourceText = "", targetText = "") {
  const sourceNorm = normalizeCompareStanza(sourceText);
  const targetNorm = normalizeCompareStanza(targetText);
  if (!sourceNorm || !targetNorm) return { score: 0, overlap: 0 };
  if (sourceNorm === targetNorm) return { score: 1, overlap: 999 };

  const sourceTokens = tokenizeCompareStanza(sourceNorm);
  const targetTokens = tokenizeCompareStanza(targetNorm);
  if (!sourceTokens.length || !targetTokens.length) return { score: 0, overlap: 0 };

  const sourceFreq = new Map();
  sourceTokens.forEach((token) => sourceFreq.set(token, (sourceFreq.get(token) || 0) + 1));
  const targetFreq = new Map();
  targetTokens.forEach((token) => targetFreq.set(token, (targetFreq.get(token) || 0) + 1));

  let overlap = 0;
  sourceFreq.forEach((count, token) => {
    const rightCount = targetFreq.get(token) || 0;
    if (rightCount > 0) overlap += Math.min(count, rightCount);
  });
  if (!overlap) return { score: 0, overlap: 0 };

  const dice = (2 * overlap) / (sourceTokens.length + targetTokens.length);
  const sourceLines = sourceNorm.split("\n").filter(Boolean).length || 1;
  const targetLines = targetNorm.split("\n").filter(Boolean).length || 1;
  const lineBalance = Math.min(sourceLines, targetLines) / Math.max(sourceLines, targetLines);
  const score = (dice * 0.92) + (lineBalance * 0.08);
  return { score, overlap };
}

function alignCompareStanzas(sourceStanzas = [], targetStanzas = []) {
  const src = Array.isArray(sourceStanzas) ? sourceStanzas : [];
  const dst = Array.isArray(targetStanzas) ? targetStanzas : [];
  const rowCount = Math.max(src.length, dst.length);
  const rows = [];
  for (let idx = 0; idx < rowCount; idx += 1) {
    const hasSource = idx < src.length;
    const hasTarget = idx < dst.length;
    const sourceText = hasSource ? String(src[idx] || "") : "";
    const targetText = hasTarget ? String(dst[idx] || "") : "";
    const isExact = hasSource
      && hasTarget
      && normalizeCompareStanza(sourceText) === normalizeCompareStanza(targetText);
    rows.push({
      sourceIndex: hasSource ? idx : null,
      targetIndex: hasTarget ? idx : null,
      isExact,
    });
  }
  return rows;
}

function diffWordsToKeepSet(sourceWords = [], targetWords = []) {
  const src = sourceWords.map((w) => String(w || "").toLowerCase());
  const dst = targetWords.map((w) => String(w || "").toLowerCase());
  const m = src.length;
  const n = dst.length;
  if (!m || !n) return new Set();
  const dp = Array.from({ length: m + 1 }, () => Array(n + 1).fill(0));
  for (let i = 1; i <= m; i += 1) {
    for (let j = 1; j <= n; j += 1) {
      if (src[i - 1] === dst[j - 1]) dp[i][j] = dp[i - 1][j - 1] + 1;
      else dp[i][j] = Math.max(dp[i - 1][j], dp[i][j - 1]);
    }
  }
  const keep = new Set();
  let i = m;
  let j = n;
  while (i > 0 && j > 0) {
    if (src[i - 1] === dst[j - 1]) {
      keep.add(i - 1);
      i -= 1;
      j -= 1;
      continue;
    }
    if (dp[i - 1][j] >= dp[i][j - 1]) i -= 1;
    else j -= 1;
  }
  return keep;
}

function compactCompareKeepSet(rawKeep = new Set(), sourceWords = []) {
  const sorted = [...rawKeep]
    .filter((idx) => Number.isInteger(idx) && idx >= 0)
    .sort((a, b) => a - b);
  if (!sorted.length) return new Set();
  const compact = new Set();
  let runStart = 0;
  while (runStart < sorted.length) {
    let runEnd = runStart;
    while (runEnd + 1 < sorted.length && sorted[runEnd + 1] === sorted[runEnd] + 1) {
      runEnd += 1;
    }
    const runLength = (runEnd - runStart) + 1;
    if (runLength >= 2) {
      for (let i = runStart; i <= runEnd; i += 1) compact.add(sorted[i]);
    } else {
      const idx = sorted[runStart];
      const token = String(sourceWords[idx] || "").toLowerCase().replace(/[^\p{L}\p{N}]+/gu, "");
      if (token.length >= 5) compact.add(idx);
    }
    runStart = runEnd + 1;
  }
  return compact;
}

function isCompareAttachedPunctuation(ch = "") {
  return /[.,!?;:)\]}\u00BB\u201D]/u.test(String(ch || ""));
}

function renderCompareWordMarkup(sourceText = "", targetText = "", options = {}) {
  const skipDiff = !!options.skipDiff;
  const src = String(sourceText || "");
  if (!src) return "";
  if (skipDiff) return renderTextWithUnknownMarkers(src);
  const dst = String(targetText || "");
  const matchWordRe = /[\p{L}\p{N}?]+/gu;
  const srcWords = src.match(matchWordRe) || [];
  const dstWords = dst.match(matchWordRe) || [];
  const keepRaw = diffWordsToKeepSet(srcWords, dstWords);
  const keep = compactCompareKeepSet(keepRaw, srcWords);
  let wordIndex = 0;
  let out = "";
  let lastIndex = 0;
  const renderWordRe = /[\p{L}\p{N}?]+/gu;
  let match = renderWordRe.exec(src);
  while (match) {
    const start = match.index;
    const end = start + match[0].length;
    out += renderTextWithUnknownMarkers(src.slice(lastIndex, start));
    let spanEnd = end;
    while (spanEnd < src.length && isCompareAttachedPunctuation(src[spanEnd])) spanEnd += 1;
    const idx = wordIndex;
    wordIndex += 1;
    const safeWord = renderTextWithUnknownMarkers(src.slice(start, spanEnd));
    if (keep.has(idx)) out += `<span class="song-version-word-diff">${safeWord}</span>`;
    else out += `<span class="song-version-word-similar">${safeWord}</span>`;
    lastIndex = spanEnd;
    match = renderWordRe.exec(src);
  }
  out += renderTextWithUnknownMarkers(src.slice(lastIndex));
  return out;
}

function decodingProgressText(percent) {
  const value = Number.isFinite(percent) ? percent : 100;
  const shown = Number.isInteger(value) ? String(value) : value.toFixed(1);
  if (uiLocale() === "ru") return `Песня расшифрована на ${shown}%`;
  if (uiLocale() === "uk") return `Пісню розшифровано на ${shown}%`;
  if (uiLocale() === "et") return `Laul on desifreeritud ${shown}%`;
  return `Song is deciphered by ${shown}%`;
}

function splitLyricsForEditor(rawLyrics) {
  const source = String(rawLyrics || "").replace(/\r\n?/g, "\n").trim();
  if (!source) return { lyrics: "", chorus: "", marker: chorusMarkerLabel() };
  const stanzas = source
    .split(/\n\s*\n+/g)
    .map((part) => part.split("\n").map((line) => line.trim()).filter(Boolean))
    .filter((lines) => lines.length > 0);
  const verseBlocks = [];
  let chorus = "";
  let marker = chorusMarkerLabel();
  let chorusTokenCount = 0;
  let chorusTextCount = 0;
  for (const lines of stanzas) {
    const first = String(lines[0] || "");
    if (isSectionToken(first, CHORUS_KEYWORDS)) {
      chorusTokenCount += 1;
      if (!marker || marker === chorusMarkerLabel()) marker = first || chorusMarkerLabel();
      const tail = lines.slice(1).join("\n").trim();
      if (tail) {
        chorusTextCount += 1;
        if (!chorus) chorus = tail;
      }
      continue;
    }
    verseBlocks.push(lines.join("\n").trim());
  }
  if (!chorus || chorusTokenCount !== 1 || chorusTextCount !== 1) {
    return { lyrics: source, chorus: "", marker: chorusMarkerLabel() };
  }
  return { lyrics: verseBlocks.filter(Boolean).join("\n\n").trim(), chorus, marker: marker || chorusMarkerLabel() };
}

function composeLyricsWithChorus(lyricsValue, chorusValue, chorusMarkerValue = "") {
  const lyricsRaw = String(lyricsValue || "").replace(/\r\n?/g, "\n");
  const chorusRaw = String(chorusValue || "").replace(/\r\n?/g, "\n");
  const hasLyrics = lyricsRaw.trim().length > 0;
  const hasChorus = chorusRaw.trim().length > 0;
  if (!hasChorus) return lyricsRaw;
  const lyrics = hasLyrics ? lyricsRaw.trimEnd() : "";
  const chorus = chorusRaw.trim();
  const marker = String(chorusMarkerValue || "").trim() || chorusMarkerLabel();
  if (!lyrics) return `${marker}\n${chorus}`.trim();
  return `${lyrics}\n\n${marker}\n${chorus}`.trim();
}

function syncDecodingIndicator(outputId, lyricsId, chorusId, markerId) {
  const node = qs(outputId);
  if (!node) return;
  const combined = composeLyricsWithChorus(
    qs(lyricsId)?.value || "",
    qs(chorusId)?.value || "",
    qs(markerId)?.value || ""
  );
  node.textContent = decodingProgressText(decodeLyricsProgressPercent(combined));
}

function lyricsComposerTitle() {
  if (uiLocale() === "ru") return "Структура текста";
  if (uiLocale() === "uk") return "Структура тексту";
  if (uiLocale() === "et") return "Teksti struktuur";
  return "Lyrics structure";
}

function lyricsComposerHint() {
  if (uiLocale() === "ru") return "Сначала добавьте полноценный припев, потом для повторов используйте блок «Повтор припева».";
  if (uiLocale() === "uk") return "Спочатку додайте повний приспів, потім для повторів використовуйте блок «Повтор приспіву».";
  if (uiLocale() === "et") return "Lisa esmalt tais koor, korduste jaoks kasuta plokki \"Koori kordus\".";
  return "Add a full chorus first, then use the chorus repeat block for repeated sections.";
}

function chorusWithTextSuffix() {
  if (uiLocale() === "ru") return "+ текст";
  if (uiLocale() === "uk") return "+ текст";
  if (uiLocale() === "et") return "+ tekst";
  return "+ text";
}

function lyricsComposerInsertLabel() {
  if (uiLocale() === "ru") return "Вставить блок";
  if (uiLocale() === "uk") return "Вставити блок";
  if (uiLocale() === "et") return "Lisa plokk";
  return "Insert block";
}

function lyricsComposerSelectLabel() {
  if (uiLocale() === "ru") return "Тип блока";
  if (uiLocale() === "uk") return "Тип блоку";
  if (uiLocale() === "et") return "Ploki tuup";
  return "Block type";
}

function lyricsTemplateLabel(kind) {
  if (kind === "verse") return verseMarkerLabel();
  if (kind === "chorus-full") {
    if (uiLocale() === "ru") return "Припев (с текстом)";
    if (uiLocale() === "uk") return "Приспів (з текстом)";
    if (uiLocale() === "et") return "Koor (tekstiga)";
    return "Chorus (with text)";
  }
  if (uiLocale() === "ru") return "Повтор припева";
  if (uiLocale() === "uk") return "Повтор приспіву";
  if (uiLocale() === "et") return "Koori kordus";
  return "Chorus repeat";
}

function lyricsComposerUI(targetId) {
  const selectId = `${String(targetId || "").trim()}_composer_type`;
  return `
    <div class="song-lyrics-composer" data-composer-for="${esc(targetId)}">
      <div class="song-lyrics-composer-title">${esc(lyricsComposerTitle())}</div>
      <div class="song-lyrics-composer-hint">${esc(lyricsComposerHint())}</div>
      <div class="song-lyrics-composer-grid">
        <label class="field">
          <div class="fieldLabel">${esc(lyricsComposerSelectLabel())}</div>
          <select class="select" id="${esc(selectId)}">
            <option value="verse">${esc(lyricsTemplateLabel("verse"))}</option>
            <option value="chorus-full">${esc(lyricsTemplateLabel("chorus-full"))}</option>
            <option value="chorus-ref">${esc(lyricsTemplateLabel("chorus-ref"))}</option>
          </select>
        </label>
        <button class="btn ghost js-lyrics-composer-insert" type="button" data-target="${esc(targetId)}" data-template-select="${esc(selectId)}">${esc(lyricsComposerInsertLabel())}</button>
      </div>
    </div>
  `;
}

function lyricsTemplateByKind(kind) {
  const verseLabel = verseMarkerLabel();
  const chorusLabel = chorusMarkerLabel();
  if (kind === "verse") return `${verseLabel}\n...`;
  if (kind === "chorus-full") return `${chorusLabel}\n...`;
  return chorusLabel;
}

function appendTemplateToTextarea(textarea, template) {
  if (!(textarea instanceof HTMLTextAreaElement)) return;
  const current = String(textarea.value || "");
  const spacer = current.trim() ? "\n\n" : "";
  textarea.value = `${current}${spacer}${template}`;
  textarea.dispatchEvent(new Event("input", { bubbles: true }));
  textarea.focus();
  textarea.selectionStart = textarea.value.length;
  textarea.selectionEnd = textarea.value.length;
}

function wireLyricsComposer(root = document) {
  if (!root) return;
  root.querySelectorAll(".js-lyrics-insert").forEach((btn) => {
    if (btn.dataset.wired === "1") return;
    btn.dataset.wired = "1";
    btn.addEventListener("click", () => {
      const targetId = btn.getAttribute("data-target") || "";
      const kind = btn.getAttribute("data-template") || "verse";
      const textarea = document.getElementById(targetId);
      appendTemplateToTextarea(textarea, lyricsTemplateByKind(kind));
    });
  });
  root.querySelectorAll(".js-lyrics-composer-insert").forEach((btn) => {
    if (btn.dataset.wired === "1") return;
    btn.dataset.wired = "1";
    btn.addEventListener("click", () => {
      const targetId = btn.getAttribute("data-target") || "";
      const selectId = btn.getAttribute("data-template-select") || "";
      const select = document.getElementById(selectId);
      const kind = select instanceof HTMLSelectElement ? select.value : "verse";
      const textarea = document.getElementById(targetId);
      appendTemplateToTextarea(textarea, lyricsTemplateByKind(kind));
    });
  });
}

function songInlineLinkRow(l = {}) {
  return `<div class="songCard ss_link_row"><div style="width:100%"><div class="grid2"><input class="input ss_link_title" placeholder="${esc(t("field.title"))}" value="${esc(l.title || "")}" /><input class="input ss_link_kind" placeholder="${esc(t("field.linkType"))}" value="${esc(l.kind || "")}" /></div><input class="input ss_link_url" placeholder="${esc(t("field.linkUrl"))}" value="${esc(l.url || "")}" style="margin-top:8px" /></div><button class="btn danger ss_link_remove" type="button">x</button></div>`;
}

function songInlineVersionRow(v = {}) {
  return `<div class="songCard ss_version_row"><div style="width:100%"><div class="grid2"><input class="input ss_version_title" placeholder="${esc(t("field.title"))}" value="${esc(v.title || "")}" /><input class="input ss_version_lang" placeholder="${esc(t("field.lang"))}" value="${esc(v.lang || "")}" /></div><input class="input ss_version_source" placeholder="${esc(t("field.source"))}" value="${esc(v.source || "")}" style="margin-top:8px" /><textarea class="textarea ss_version_lyrics song-editor-text" placeholder="${esc(t("field.lyrics"))}" style="margin-top:8px">${esc(v.lyrics || "")}</textarea></div><button class="btn danger ss_version_remove" type="button">x</button></div>`;
}

function songDetailsUI(song, extra = {}) {
  const links = Array.isArray(song.links) ? song.links : [];
  const versions = Array.isArray(song.versions) ? song.versions : [];
  const canOpenEditor = can("songs.edit");
  const countryValue = normalizeSongCountry(song.country) || (song.country || "");
  const langValue = normalizeSongLanguage(song.lang) || "";
  const performerValue = (song.subtitle || "").trim();
  const hasCountryBackground = !!(
    String(extra?.background?.desktop_image_url || "").trim()
    || String(extra?.background?.mobile_image_url || "").trim()
  );
  const listenItems = collectListenServiceItems(song, links);
  const hasListenItems = listenItems.length > 0;
  const linksEditorHash = canOpenEditor
    ? makeHash("#/admin/editor", { id: song.id, focus: "links", addLink: "1" }, ["id", "focus", "addLink"])
    : "";
  const showDescriptionInSongCard = false;
  const canSeeStatus = can("songs.edit");
  const favLabel = extra.isFav ? t("song.delFav") : t("song.addFav");
  const statusLabel = song.status === "draft" ? t("status.draft") : t("status.published");
  const statusClass = song.status === "draft" ? "is-draft" : "is-published";
  const statusDot = canSeeStatus
    ? `<span class="song-status-dot ${statusClass}" title="${esc(statusLabel)}" aria-label="${esc(statusLabel)}"></span>`
    : "";
  const verifiedPill = Number(song?.verified || 0) === 1
    ? `<span class="song-verified-pill" title="${esc(verifiedLabel())}" aria-label="${esc(verifiedLabel())}">✓ ${esc(verifiedLabel())}</span>`
    : "";
  const editActionBtn = canOpenEditor
    ? `<a class="btn ghost song-edit-top" id="btnSongEditNav" href="${esc(makeHash("#/admin/editor", { id: song.id }, ["id"]))}" title="${esc(t("song.tools"))}" aria-label="${esc(t("song.tools"))}">
      <svg class="song-action-icon" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
        <path d="M4 20h4l10-10-4-4L4 16z"></path>
        <path d="M13 7l4 4"></path>
      </svg>
    </a>`
    : "";
  const draftActionBtn = state.user
    ? `<button class="btn ghost song-edit-top" id="btnSongDraftNav" type="button" title="${esc(draftUiText("openCollaborativeDraft"))}" aria-label="${esc(draftUiText("openCollaborativeDraft"))}">
      <svg class="song-action-icon" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
        <path d="M8.5 11a3.5 3.5 0 1 1 0-7 3.5 3.5 0 0 1 0 7zm7.5 1a2.5 2.5 0 1 0-2.2-3.7A4.8 4.8 0 0 1 14 9.5a2.5 2.5 0 0 0 2 2.5z"></path>
        <path d="M3 20a5.5 5.5 0 0 1 11 0"></path>
        <path d="M14 20a4.5 4.5 0 0 1 7 0"></path>
      </svg>
    </button>`
    : "";
  const playActionBtn = hasListenItems
    ? `<button class="btn primary song-play-now" id="btnSongListen" type="button" aria-label="${esc(listenCtaText())}"><span class="song-listen-icon-glyph" aria-hidden="true">d</span><span>${esc(listenCtaText())}</span></button>`
    : "";
  const copyActionBtn = `
    <button class="btn ghost song-header-tool song-copy-main" id="btnCopyLyrics" type="button" title="${esc(t("prompt.copy"))}" aria-label="${esc(t("prompt.copy"))}">
      <span class="song-header-tool-icon" aria-hidden="true">
        <svg class="song-copy-icon" viewBox="0 0 24 24" focusable="false">
          <rect x="8.5" y="7" width="11" height="13" rx="2.5"></rect>
          <path d="M14.5 4H8.5A2.5 2.5 0 0 0 6 6.5v8A2.5 2.5 0 0 0 8.5 17"></path>
        </svg>
      </span>
      <span class="song-header-tool-text">${esc(t("prompt.copy"))}</span>
    </button>
  `;
  const favActionBtn = state.user
    ? `<button class="btn ghost song-header-tool song-fav-main ${extra.isFav ? "is-active" : ""}" id="btnFavToggle" type="button" aria-pressed="${extra.isFav ? "true" : "false"}" title="${esc(favLabel)}" aria-label="${esc(favLabel)}">
      <span class="song-header-tool-icon" aria-hidden="true">${extra.isFav ? "★" : "☆"}</span>
      <span class="song-header-tool-text">${esc(favLabel)}</span>
    </button>`
    : "";
  const headerActionButtons = [editActionBtn, draftActionBtn, copyActionBtn, favActionBtn].filter(Boolean).join("");
  const hasHeaderSide = !!(statusDot || verifiedPill || headerActionButtons);
  const aiHubTitle = uiLocale() === "ru"
    ? "ИИ-помощник по песне"
    : uiLocale() === "uk"
      ? "ШІ-помічник для пісні"
      : uiLocale() === "et"
        ? "AI lauluabiline"
        : "AI Song Assistant";
  const aiHubSubtitle = uiLocale() === "ru"
    ? "Выберите формат запроса и сразу откройте ChatGPT."
    : uiLocale() === "uk"
      ? "Оберіть тип запиту та відкрийте ChatGPT."
      : uiLocale() === "et"
        ? "Vali paringu tuup ja ava kohe ChatGPT."
        : "Choose a prompt type and open ChatGPT.";
  const aiContextDesc = uiLocale() === "ru" ? "Исторический фон" : uiLocale() === "uk" ? "Історичний контекст" : uiLocale() === "et" ? "Ajalooline taust" : "Historical context";
  const aiTranslateDesc = uiLocale() === "ru" ? "Литературный перевод" : uiLocale() === "uk" ? "Літературний переклад" : uiLocale() === "et" ? "Kirjanduslik tolge" : "Literary translation";
  const aiExplainDesc = uiLocale() === "ru" ? "Образы и смысл" : uiLocale() === "uk" ? "Образи та сенс" : uiLocale() === "et" ? "Kujundid ja mote" : "Meaning and imagery";
  const initialLyrics = renderStructuredLyrics(song.lyrics || "", {
    line_confidences: extractLyricsLineConfidences(song?.lyrics_meta_json || null),
  });
  const initialDecodingPercent = decodeLyricsProgressPercent(initialLyrics.expanded || song.lyrics || "");
  const categoryChips = [
    langValue
      ? `<a class="pill pill-link" href="${esc(catalogHashForSongFilter({ lang: langValue }))}">${esc(formatLang(song.lang))}</a>`
      : "",
    countryValue
      ? `<a class="pill pill-link" href="${esc(catalogHashForSongFilter({ country: countryValue }))}">${esc(formatCountry(song.country))}</a>`
      : "",
  ].filter(Boolean).join("");
  const versionOptions = [
    {
      id: "__original",
      title: t("song.version"),
      lang: song.lang || "",
      source: song.source || "",
      lyrics: song.lyrics || "",
    },
    ...versions.map((v, i) => ({
      id: v.id || `v_${i}`,
      title: v.title || t("song.version"),
      lang: v.lang || "",
      source: v.source || "",
      lyrics: v.lyrics || "",
    })),
  ];
  const hasVersionChoices = versionOptions.length >= 2;
  const hasTopControls = !!playActionBtn || hasVersionChoices;
  const compareToggleLabel = uiLocale() === "ru"
    ? "Сравнить версии"
    : uiLocale() === "uk"
      ? "Порівняти версії"
      : uiLocale() === "et"
        ? "Vordle versioone"
        : "Compare versions";
  const compareMetaMissing = uiLocale() === "ru"
    ? "не указано"
    : uiLocale() === "uk"
      ? "не вказано"
      : uiLocale() === "et"
        ? "maaramata"
        : "Not specified";
  const compareVersionOneTitle = uiLocale() === "ru"
    ? "Версия 1"
    : uiLocale() === "uk"
      ? "Версія 1"
      : uiLocale() === "et"
        ? "Versioon 1"
        : "Version 1";
  const compareVersionTwoTitle = uiLocale() === "ru"
    ? "Версия 2"
    : uiLocale() === "uk"
      ? "Версія 2"
      : uiLocale() === "et"
        ? "Versioon 2"
        : "Version 2";
  const comparePerformerLabel = uiLocale() === "ru"
    ? "Автор исполнения"
    : uiLocale() === "uk"
      ? "Автор виконання"
      : uiLocale() === "et"
        ? "Esitaja"
        : "Performer";
  const compareYearLabel = uiLocale() === "ru"
    ? "Год исполнения"
    : uiLocale() === "uk"
      ? "Рік виконання"
      : uiLocale() === "et"
        ? "Esitusaasta"
        : "Performance year";
  const compareVersionSelectLabel = uiLocale() === "ru"
    ? "Выберите ноер версии для сравнения"
    : uiLocale() === "uk"
      ? "Оберіть ноер версії для порівняння"
      : uiLocale() === "et"
      ? "Vali vordlemiseks versiooni number"
      : "Choose version number to compare";
  const compareListenLabel = uiLocale() === "ru"
    ? "Слушать"
    : uiLocale() === "uk"
      ? "Слухати"
      : uiLocale() === "et"
        ? "Kuula"
        : "Listen";
  const compareListenMissing = uiLocale() === "ru"
    ? "ссылок нет"
    : uiLocale() === "uk"
      ? "посилань неає"
      : uiLocale() === "et"
        ? "linke pole"
        : "no links";
  const backgroundCardClass = hasCountryBackground ? " song-card-shell-has-bg" : "";
  const showAuditBlock = isSuperAdmin();
  const creatorName = String(song.created_by_email || song.created_by || "").trim() || songAuditUnknown();
  const editorName = String(song.updated_by_email || song.updated_by || "").trim() || songAuditUnknown();

  return `
    <div class="song-view app-shell">
      <div class="card song-card-shell${backgroundCardClass}">
        <div class="cardHeader">
          <div class="song-head-main">
            <div class="song-title-row">
              <div class="h1 song-title">${esc(song.title)}</div>
            </div>
            ${performerValue ? `<div class="song-performer">${esc(performerValue)}</div>` : ``}
          </div>
          ${hasHeaderSide ? `
            <div class="song-header-side">
              ${statusDot}
              ${verifiedPill}
              ${headerActionButtons ? `<div class="song-header-actions">${headerActionButtons}</div>` : ``}
            </div>
          ` : ``}
        </div>

        <div class="song-content-center">
          ${categoryChips ? `<div class="pills song-meta">${categoryChips}</div>` : ``}

          ${hasTopControls ? `
            <div class="song-top-controls">
              ${playActionBtn}
              ${playActionBtn ? `<div class="song-listen-hint">${esc(listenCtaHint())}</div>` : ``}
              ${hasVersionChoices ? `
                <div class="song-version-picker">
                  <span>${esc(songVersionsSummaryText(versionOptions.length))}</span>
                  <div class="song-version-tabs" id="songVersionTabs">
                    ${versionOptions.map((v, i) => `<button class="btn ghost song-version-btn ${i === 0 ? "is-active" : ""}" type="button" data-version-id="${esc(v.id)}">${i + 1}</button>`).join("")}
                  </div>
                </div>
              ` : ``}
            </div>
          ` : ``}

          ${hasVersionChoices ? `
            <div class="song-version-compare-trigger hidden" id="songCompareToggleWrap">
              <button class="btn ghost" id="songCompareToggle" type="button">${esc(compareToggleLabel)}</button>
              <div class="song-version-compare-pick hidden" id="songCompareVersionPickWrap">
                <span>${esc(compareVersionSelectLabel)}</span>
                <div class="song-compare-controls">
                  <label class="song-compare-version song-compare-version-left">
                    <span class="song-compare-version-label">${esc(compareVersionOneTitle)}</span>
                    <select class="song-compare-select" id="songCompareVersionPickLeft"></select>
                  </label>
                  <label class="song-compare-version song-compare-version-right">
                    <span class="song-compare-version-label">${esc(compareVersionTwoTitle)}</span>
                    <select class="song-compare-select" id="songCompareVersionPickRight"></select>
                  </label>
                </div>
              </div>
            </div>
          ` : ``}

          <div class="song-lyrics-column song-text-wrap">
            <div id="songVersionBaseContent">
              <div class="song-lyrics-stack" id="songLyricsMain">${initialLyrics.html}</div>
              <div class="muted small hidden" id="songVersionMeta"></div>
              <div class="muted small song-decoding-progress ${initialDecodingPercent >= 100 ? "hidden" : ""}" id="songDecodingProgress">${esc(decodingProgressText(initialDecodingPercent))}</div>
            </div>
            ${hasVersionChoices ? `
              <div class="song-version-compare hidden" id="songVersionCompare">
                <div
                  class="song-version-diff"
                  id="songCompareDiff"
                  data-v1-title="${esc(compareVersionOneTitle)}"
                  data-v2-title="${esc(compareVersionTwoTitle)}"
                  data-performer-label="${esc(comparePerformerLabel)}"
                  data-year-label="${esc(compareYearLabel)}"
                  data-meta-missing="${esc(compareMetaMissing)}"
                  data-listen-label="${esc(compareListenLabel)}"
                  data-listen-missing="${esc(compareListenMissing)}"
                ></div>
              </div>
            ` : ``}
          </div>

          ${hasVersionChoices ? `
            <div class="song-version-listen-panel" id="songVersionListenPanel">
              <div class="song-listen-title song-service-title">${esc(versionListenSectionTitle())}</div>
              <div class="song-version-listen-grid">
                <div class="song-version-listen-col">
                  <div class="song-version-listen-col-title" id="songVersionListenTitle1"></div>
                  <div class="song-version-listen-col-links" id="songVersionListenLinks1"></div>
                </div>
                <div class="song-version-listen-col">
                  <div class="song-version-listen-col-title" id="songVersionListenTitle2"></div>
                  <div class="song-version-listen-col-links" id="songVersionListenLinks2"></div>
                </div>
              </div>
            </div>
            ${canOpenEditor ? `
              <div class="song-version-listen-admin-actions hidden" id="songVersionListenAdminActions">
                <a class="btn ghost song-version-listen-manage" href="${esc(linksEditorHash)}">${esc(t("common.addLink"))}</a>
              </div>
            ` : ``}
          ` : renderListenServiceRows(listenItems)}
          ${!state.user ? `<div class="muted small song-fav-hint">${esc(t("song.loginForFav"))}</div>` : ``}

          <div class="song-primary-actions">
            <div class="song-ai-hub">
              <div class="song-ai-head">
                <div class="song-ai-title">${esc(aiHubTitle)}</div>
                <div class="song-ai-subtitle">${esc(aiHubSubtitle)}</div>
              </div>
              <div class="song-ai-row">
                <button class="song-ai-link" id="btnPromptContext" type="button">
                  <span class="song-ai-link-icon" aria-hidden="true">?</span>
                  <span class="song-ai-link-copy"><strong>${esc(t("song.aiContext"))}</strong><small>${esc(aiContextDesc)}</small></span>
                </button>
                <button class="song-ai-link" id="btnPromptTranslate" type="button">
                  <span class="song-ai-link-icon" aria-hidden="true">?</span>
                  <span class="song-ai-link-copy"><strong>${esc(t("song.aiTranslate"))}</strong><small>${esc(aiTranslateDesc)}</small></span>
                </button>
                <button class="song-ai-link" id="btnPromptExplain" type="button">
                  <span class="song-ai-link-icon" aria-hidden="true">?</span>
                  <span class="song-ai-link-copy"><strong>${esc(t("song.aiExplain"))}</strong><small>${esc(aiExplainDesc)}</small></span>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>

      ${(showDescriptionInSongCard && song.notes) ? `<div class="card" style="margin-top:12px"><div class="h2">${esc(uiText("description"))}</div><div class="sep"></div><div class="muted">${esc(song.notes)}</div></div>` : ``}
      ${showAuditBlock ? `
        <div class="card song-audit-card">
          <div class="muted small"><strong>${esc(songAuditAddedLabel())}:</strong> ${esc(creatorName)}</div>
          <div class="muted small"><strong>${esc(songAuditEditedLabel())}:</strong> ${esc(editorName)}</div>
        </div>
      ` : ``}
    </div>
  `;
}

function favoritesUI(data) {
  if (!state.user) {
    return `<div class="card"><div class="h1">${esc(t("favorites.needLoginTitle"))}</div><div class="sep"></div><div class="muted">${esc(t("favorites.needLoginDesc"))}</div></div>`;
  }
  const items = data?.items || [];
  return `
    <div class="card">
      <div class="h1">${esc(t("favorites.title"))}</div>
      <div class="muted">${esc(t("favorites.subtitle"))}</div>
      <div class="sep"></div>
      <div class="list">
        ${items.length ? items.map((s) => `<a class="songCard" href="#/song/${encodeURIComponent(s.id)}"><div><div class="songTitle">${esc(s.title)}</div><div class="songMeta">${esc(formatLang(s.lang))} · ${esc(formatCountry(s.country))} · ${esc(formatPeriod(s.period))}</div></div><span class="btn ghost">-&gt;</span></a>`).join("") : `<div class="muted">${esc(t("favorites.empty"))}</div>`}
      </div>
    </div>
  `;
}

function requestUI(options = {}) {
  const isFragmentReport = !!options.isFragmentReport;
  if (!state.user) {
    const notLoggedTitle = uiLocale() === "ru"
      ? "Добавить песню"
      : uiLocale() === "uk"
        ? "Додати пісню"
        : uiLocale() === "et"
          ? "Lisa laul"
          : "Add song";
    return `<div class="card"><div class="h1">${esc(notLoggedTitle)}</div><div class="sep"></div><div class="muted">${esc(t("request.needLogin"))}</div></div>`;
  }
  const titleText = uiLocale() === "ru"
    ? "Добавить песню"
    : uiLocale() === "uk"
      ? "Додати пісню"
      : uiLocale() === "et"
        ? "Lisa laul"
        : "Add song";
  const submitText = uiLocale() === "ru"
    ? "Добавить"
    : uiLocale() === "uk"
      ? "Додати"
      : uiLocale() === "et"
        ? "Lisa"
        : "Add";
  const subtitleText = uiLocale() === "ru"
    ? "Заполните карточку полностью: при правах публикация сразу, иначе отправка на модерацию."
    : uiLocale() === "uk"
      ? "Заповніть картку повністю: за наявності прав публікація одразу, інакше заявка піде на модерацію."
    : uiLocale() === "et"
      ? "Taida kaart taielikult: oiguste korral avaldatakse kohe, muidu laheb modereerimisele."
      : "Fill in all fields: published immediately with permissions, otherwise sent for moderation.";
  const fragmentTitleText = uiLocale() === "ru"
    ? "Не нашли песню? Отправьте фрагмент"
    : uiLocale() === "uk"
      ? "Не знайшли пісню? Надішліть фрагмент"
      : uiLocale() === "et"
        ? "Ei leidnud laulu? Saada katkend"
        : "Didn't find a song? Send a fragment";
  const fragmentSubtitleText = uiLocale() === "ru"
    ? "Укажите только текст фрагмента и источник. Заявка уйдет на рассмотрение супер-администратору."
    : uiLocale() === "uk"
      ? "Вкажіть лише текст фрагмента та джерело. Заявку отримає супер-адміністратор."
      : uiLocale() === "et"
        ? "Lisa ainult tekstikatkend ja allikas. Taotlus laheb ainult super-adminile."
        : "Provide only fragment text and source. The request is sent to super admin only.";
  const submitFragmentText = uiLocale() === "ru"
    ? "Отправить фрагмент"
    : uiLocale() === "uk"
      ? "Надіслати фрагмент"
      : uiLocale() === "et"
        ? "Saada katkend"
        : "Send fragment";
  if (isFragmentReport) {
    return `
      <div class="card request-card">
        <div class="h1">${esc(fragmentTitleText)}</div>
        <div class="muted">${esc(fragmentSubtitleText)}</div>
        <div class="sep"></div>
        <form id="requestForm" class="list request-form request-form-vertical">
          <input id="rq_report_fragment" type="hidden" value="1" />
          <input id="rq_title" type="hidden" value="" />
          <input id="rq_subtitle" type="hidden" value="" />
          <input id="rq_lang" type="hidden" value="" />
          <input id="rq_country" type="hidden" value="" />
          <input id="rq_period" type="hidden" value="" />
          <input id="rq_region" type="hidden" value="" />
          <input id="rq_event" type="hidden" value="" />
          <input id="rq_theme" type="hidden" value="" />
          <input id="rq_year" type="hidden" value="" />
          <textarea id="rq_notes" class="hidden"></textarea>
          <input id="rq_chorus_marker" class="hidden" value="${esc(chorusMarkerLabel())}" />
          <textarea id="rq_chorus" class="hidden"></textarea>
          <div id="rq_draft_banner" class="ac-draft-banner hidden" role="status" aria-live="polite"></div>
          <div class="request-section">
            <label class="field"><div class="fieldLabel">${esc(t("field.source"))} *</div><input class="input" id="rq_source" required /></label>
            <label class="field"><div class="fieldLabel">${esc(t("field.lyrics"))} *</div><textarea class="textarea song-editor-text song-editor-text-main" id="rq_lyrics" required></textarea></label>
          </div>
          <div class="muted small song-decoding-progress" id="rq_decoding">${esc(decodingProgressText(100))}</div>
          <div class="actions request-actions"><button class="btn primary" id="rq_submit" type="submit">${esc(submitFragmentText)}</button></div>
        </form>
      </div>
    `;
  }
  return `
    <div class="card request-card">
      <div class="h1">${esc(titleText)}</div>
      <div class="muted">${esc(subtitleText)}</div>
      <div class="sep"></div>
      <form id="requestForm" class="list request-form request-form-vertical">
        <div class="request-section">
          <label class="field"><div class="fieldLabel">${esc(t("field.title"))} *</div><input class="input" id="rq_title" required /></label>
          <label class="field"><div class="fieldLabel">${esc(uiText("performer"))}</div><input class="input" id="rq_subtitle" /></label>
          <label class="field"><div class="fieldLabel">${esc(t("field.lang"))} *</div><select class="select" id="rq_lang">${selectOptions("language", "", uiText("selectLanguage"))}</select></label>
          <label class="field"><div class="fieldLabel">${esc(t("field.country"))} *</div><select class="select" id="rq_country" required>${selectOptions("country", "", uiText("selectCountry"))}</select></label>
          <label class="field" id="rq_period_wrap"><div class="fieldLabel">${esc(t("field.period"))}</div><select class="select" id="rq_period">${selectOptions("period", "", uiText("selectPeriod"))}</select></label>
          <label class="field"><div class="fieldLabel">${esc(t("field.year"))}</div><input class="input" id="rq_year" /></label>
          <label class="field"><div class="fieldLabel">${esc(uiLocale() === "ru" ? "Регион" : uiLocale() === "uk" ? "Регіон" : uiLocale() === "et" ? "Piirkond" : "Region")}</div><input class="input" id="rq_region" /></label>
          <label class="field"><div class="fieldLabel">${esc(uiLocale() === "ru" ? "Событие" : uiLocale() === "uk" ? "Подія" : uiLocale() === "et" ? "Sundmus" : "Event")}</div><input class="input" id="rq_event" /></label>
          <label class="field"><div class="fieldLabel">${esc(uiLocale() === "ru" ? "Театика" : uiLocale() === "uk" ? "Театика" : uiLocale() === "et" ? "Temaatika" : "Theme")}</div><input class="input" id="rq_theme" /></label>
          <label class="field"><div class="fieldLabel">${esc(t("field.source"))}</div><input class="input" id="rq_source" /></label>
        </div>
        <input id="rq_report_fragment" type="hidden" value="0" />
        <div id="rq_draft_banner" class="ac-draft-banner hidden" role="status" aria-live="polite"></div>
        <div class="request-section">
          <label class="field"><div class="fieldLabel">${esc(t("field.lyrics"))} *</div><textarea class="textarea song-editor-text song-editor-text-main" id="rq_lyrics" required></textarea></label>
          <input id="rq_chorus_marker" class="hidden" value="${esc(chorusMarkerLabel())}" />
          <label class="field"><div class="fieldLabel">${esc(chorusFieldLabel())}</div><textarea class="textarea song-editor-text song-editor-chorus" id="rq_chorus"></textarea></label>
          <label class="field"><div class="fieldLabel">${esc(uiText("description"))}</div><textarea class="textarea" id="rq_notes"></textarea></label>
        </div>
        <div class="muted small song-decoding-progress" id="rq_decoding">${esc(decodingProgressText(100))}</div>

        <section class="request-section request-repeater-section">
          <div class="h2 request-section-title">${esc(t("song.links"))}</div>
          <div id="rq_links" class="request-repeater"></div>
          <button class="btn ghost request-add-btn" id="rq_addLink" type="button">${esc(t("common.addLink"))}</button>
        </section>

        <section class="request-section request-repeater-section">
          <div class="h2 request-section-title">${esc(t("song.versions"))}</div>
          <div id="rq_versions" class="request-repeater"></div>
          <button class="btn ghost request-add-btn" id="rq_addVersion" type="button">${esc(t("common.addVersion"))}</button>
        </section>

        <div class="actions request-actions"><button class="btn primary" id="rq_submit" type="submit">${esc(submitText)}</button></div>
      </form>
    </div>
  `;
}

function adminAccessDeniedUI() {
  return `<div class="card"><div class="h1">${esc(t("admin.accessDenied"))}</div><div class="sep"></div><div class="muted">${esc(t("admin.onlySuperAdmin"))}</div></div>`;
}

function adminTabs(active) {
  const songsTabLabel = uiLocale() === "ru"
    ? "Песни"
    : uiLocale() === "uk"
      ? "Пісні"
      : uiLocale() === "et"
        ? "Laulud"
        : "Songs";
  const backgroundsTabLabel = uiLocale() === "ru"
    ? "Фоны стран"
    : uiLocale() === "uk"
      ? "Фони країн"
      : uiLocale() === "et"
        ? "Riikide taustad"
        : "Country backgrounds";
  const canManageBackgrounds = can("songs.edit");
  const canReviewRequests = isSuperAdmin();
  return `
    <div class="admin-tabs" style="margin-bottom:12px">
      <a class="btn admin-tab-btn ${active === "content" ? "primary" : "ghost"}" href="#/admin/content">${esc(songsTabLabel)}</a>
      ${canManageBackgrounds ? `<a class="btn admin-tab-btn ${active === "backgrounds" ? "primary" : "ghost"}" href="#/admin/backgrounds">${esc(backgroundsTabLabel)}</a>` : ``}
      ${canReviewRequests ? `<a class="btn admin-tab-btn ${active === "requests" ? "primary" : "ghost"}" href="#/admin/requests?status=new">${esc(t("admin.tab.requests"))}</a>` : ``}
      <a class="btn admin-tab-btn ${active === "users" ? "primary" : "ghost"}" href="#/admin/users">${esc(t("admin.tab.users"))}</a>
    </div>
  `;
}
function adminContentUI(data, params) {
  const items = data?.items || [];
  const localDraftIdentities = listCurrentUserDraftIdentities();
  const hasNewSongDraft = localDraftIdentities.has("__new");
  const newSongLabel = hasNewSongDraft
    ? `${t("admin.newSong")} · ${t("status.draft")}`
    : t("admin.newSong");
  const page = data?.page || 1;
  const pages = data?.pages || 1;
  const listItems = items.map((s) => {
    const status = s.status;
    const isRecent = Number(s?.is_recent || 0) === 1;
    return `
    <a class="songCard ac_item ${isRecent ? "is-recent" : ""}" href="#/admin/editor?id=${encodeURIComponent(s.id)}">
      <div class="ac_item_preview ${isRecent ? "is-recent" : ""}">
        <div class="songTitle">${esc(s.title)}</div>
        <div class="songMeta">${esc(formatCountry(s.country))}${s.year ? ` · ${esc(s.year)}` : ""}</div>
      </div>
      ${badge(status)}
    </a>
  `;
  }).join("");
  return `
    <div>
      ${adminTabs("content")}
      <div class="card ac-list-card">
        <div class="h2">${esc(t("admin.content.title"))}</div>
        <div class="muted small">${esc(t("admin.content.subtitle"))}</div>
        <div class="sep"></div>
        <div class="grid2 ac-filter-grid">
          <input class="input" id="ac_q" placeholder="${esc(t("admin.filterQuery"))}" value="${esc(params.q || "")}" />
          <select class="select" id="ac_status"><option value="">${esc(t("status.all"))}</option><option value="published" ${(params.status || "") === "published" ? "selected" : ""}>${esc(t("status.published"))}</option><option value="draft" ${(params.status || "") === "draft" ? "selected" : ""}>${esc(t("status.draft"))}</option></select>
        </div>
        <div class="actions ac-actions-row" style="margin-top:10px">
          <button class="btn" id="ac_search">${esc(t("common.search"))}</button>
          <a class="btn ghost" id="ac_new" href="#/admin/editor?new=1">${esc(newSongLabel)}</a>
        </div>
        <div class="sep"></div>
        <div class="list ac-list" id="ac_list">
          ${listItems || `<div class="muted">${esc(t("common.empty"))}</div>`}
        </div>
        ${renderPager("ac", page, pages)}
      </div>
    </div>
  `;
}

function adminEditorUI(song = {}, options = {}) {
  const isNew = !!options.isNew;
  const canToggleAdminContent = can("songs.view_admin_content");
  const canMarkVerified = isSuperAdmin();
  const backHash = options.backHash || "#/admin/content";
  const deleteBtn = isNew ? "" : `<button class="btn danger" id="ac_delete" type="button">${esc(t("common.delete"))}</button>`;
  const publishBtnLabel = uiLocale() === "ru"
    ? "Опубликовать"
    : uiLocale() === "uk"
      ? "Опублікувати"
      : uiLocale() === "et"
        ? "Avalda"
        : "Publish";
  const publishBtn = `<button class="btn" id="ac_publish" type="button">${esc(publishBtnLabel)}</button>`;
  const draftBtn = `<button class="btn ghost" id="ac_open_draft" type="button">${esc(draftUiText("openCollaborativeDraft"))}</button>`;
  const title = isNew
    ? (uiLocale() === "ru" ? "Новая песня" : uiLocale() === "uk" ? "Нова пісня" : uiLocale() === "et" ? "Uus laul" : "New song")
    : (uiLocale() === "ru" ? "Редактирование песни" : uiLocale() === "uk" ? "Редагування пісні" : uiLocale() === "et" ? "Laulu muutmine" : "Edit song");
  return `
    <div>
      ${adminTabs("content")}
      <div class="card ac-editor-card ac-editor-page request-card song-edit-unified" id="ac_editor">
        <div class="row wrap gap">
          <div class="h2">${esc(title)}</div>
          <a class="btn ghost" href="${esc(backHash)}">${esc(t("common.back"))}</a>
        </div>
        <div class="sep"></div>
        <input id="ac_id" class="hidden" value="${esc(song.id || "")}" />
        <div class="request-section">
          <div class="grid2">
            <label class="field"><div class="fieldLabel">${esc(t("field.title"))} *</div><input id="ac_title" class="input" /></label>
            <label class="field"><div class="fieldLabel">${esc(uiText("performer"))}</div><input id="ac_subtitle" class="input" /></label>
          </div>
          <div class="grid2">
            <label class="field"><div class="fieldLabel">${esc(t("field.lang"))} *</div><select id="ac_lang" class="select">${selectOptions("language", "", uiText("selectLanguage"))}</select></label>
            <label class="field"><div class="fieldLabel">${esc(t("field.status"))}</div><select id="ac_status_edit" class="select"><option value="published">${esc(t("status.published"))}</option><option value="draft">${esc(t("status.draft"))}</option></select></label>
          </div>
          <div class="grid2">
            <label class="field"><div class="fieldLabel">${esc(t("field.country"))} *</div><select id="ac_country" class="select" required>${selectOptions("country", "", uiText("selectCountry"))}</select></label>
            <label class="field hidden" id="ac_period_wrap"><div class="fieldLabel">${esc(t("field.period"))}</div><select id="ac_period" class="select">${selectOptions("period", "", uiText("selectPeriod"))}</select></label>
          </div>
          <div class="grid2">
            <label class="field"><div class="fieldLabel">${esc(uiLocale() === "ru" ? "Регион" : uiLocale() === "uk" ? "Регіон" : uiLocale() === "et" ? "Piirkond" : "Region")}</div><input id="ac_region" class="input" /></label>
            <label class="field"><div class="fieldLabel">${esc(uiLocale() === "ru" ? "Событие" : uiLocale() === "uk" ? "Подія" : uiLocale() === "et" ? "Sundmus" : "Event")}</div><input id="ac_event" class="input" /></label>
          </div>
          <label class="field"><div class="fieldLabel">${esc(uiLocale() === "ru" ? "Театика" : uiLocale() === "uk" ? "Театика" : uiLocale() === "et" ? "Temaatika" : "Theme")}</div><input id="ac_theme" class="input" /></label>
          ${canMarkVerified ? `
            <label class="field admin-only-toggle admin-only-toggle-inline">
              <input id="ac_verified" type="checkbox" />
              <span>${esc(verifiedOnlyLabel())}</span>
            </label>
          ` : ``}
          ${canToggleAdminContent ? `
            <label class="field admin-only-toggle admin-only-toggle-inline">
              <input id="ac_admin_content" type="checkbox" />
              <span>${esc(adminOnlyContentLabel())}</span>
            </label>
            <div class="muted small admin-only-hint">${esc(adminOnlyContentHint())}</div>
          ` : ``}
          <label class="field"><div class="fieldLabel">${esc(t("field.year"))}</div><input id="ac_year" class="input" /></label>
          <label class="field"><div class="fieldLabel">${esc(t("field.source"))}</div><input id="ac_source" class="input" /></label>
        </div>
        <div id="ac_draft_banner" class="ac-draft-banner hidden" role="status" aria-live="polite"></div>
        <div class="request-section">
          <label class="field"><div class="fieldLabel">${esc(t("field.lyrics"))} *</div><textarea id="ac_lyrics" class="textarea song-editor-text song-editor-text-main"></textarea></label>
          <input id="ac_chorus_marker" class="hidden" value="${esc(chorusMarkerLabel())}" />
          <label class="field"><div class="fieldLabel">${esc(chorusFieldLabel())}</div><textarea id="ac_chorus" class="textarea song-editor-text song-editor-chorus"></textarea></label>
          <label class="field"><div class="fieldLabel">${esc(uiText("description"))}</div><textarea id="ac_notes" class="textarea song-editor-text"></textarea></label>
        </div>
        <div class="muted small song-decoding-progress" id="ac_decoding">${esc(decodingProgressText(100))}</div>

        <section class="request-section request-repeater-section" id="ac_links_section">
          <div class="h2 request-section-title">${esc(t("song.links"))}</div>
          <div id="ac_links" class="request-repeater"></div>
          <div class="request-quick-links">
            <button class="btn ghost request-add-btn" id="ac_addLink" type="button">${esc(t("common.addLink"))}</button>
            <button class="btn ghost request-add-btn" id="ac_addLinkYoutube" type="button">+ YouTube</button>
            <button class="btn ghost request-add-btn" id="ac_addLinkSovmusic" type="button">+ SovMusic</button>
            <button class="btn ghost request-add-btn" id="ac_addLinkRecords" type="button">+ Russian Records</button>
          </div>
        </section>

        <section class="request-section request-repeater-section">
          <div class="h2 request-section-title">${esc(t("song.versions"))}</div>
          <div id="ac_versions" class="request-repeater"></div>
          <button class="btn ghost request-add-btn" id="ac_addVersion" type="button">${esc(t("common.addVersion"))}</button>
        </section>

        <div id="ac_inline_error" class="ac-inline-error hidden" role="alert" aria-live="polite"></div>
        <div class="actions request-actions" style="margin-top:12px">
          <button class="btn primary" id="ac_save" type="button">${esc(t("common.save"))}</button>
          ${draftBtn}
          ${publishBtn}
          ${deleteBtn}
        </div>

      </div>
    </div>
  `;
}

function adminRequestsUI(data, params) {
  const items = data?.items || [];
  const selectedStatus = (params.status || "new").trim() || "new";
  return `
    <div>
      ${adminTabs("requests")}
      <div class="card">
        <div class="h2">${esc(t("admin.requests.title"))}</div>
        <div class="sep"></div>
        <div class="grid2">
          <select class="select" id="ar_status"><option value="">${esc(t("status.all"))}</option><option value="new" ${selectedStatus === "new" ? "selected" : ""}>${esc(t("status.new"))}</option><option value="approved" ${selectedStatus === "approved" ? "selected" : ""}>${esc(t("status.approved"))}</option><option value="rejected" ${selectedStatus === "rejected" ? "selected" : ""}>${esc(t("status.rejected"))}</option></select>
          <input class="input" id="ar_q" placeholder="${esc(t("admin.filterQuery"))}" value="${esc(params.q || "")}" />
        </div>
        <div class="actions" style="margin-top:10px"><button class="btn" id="ar_search">${esc(t("common.search"))}</button></div>
        <div class="sep"></div>
        <div class="list">
          ${items.map((r) => `
            <div class="songCard" data-id="${esc(r.id)}">
              <div style="width:100%">
                <div class="row"><div class="songTitle">${esc(r.title)}</div><div>${badge(r.status)}</div></div>
                <div class="songMeta">${esc(formatLang(r.lang))} · ${esc(formatCountry(r.country))} · ${esc(formatPeriod(r.period))} · ${esc(r.user_email || "")}</div>
                ${(r.region || r.event || r.theme || Number(r.report_fragment || 0) === 1) ? `
                  <div class="songMeta">${[
                    r.region ? `${esc(uiLocale() === "ru" ? "Регион" : uiLocale() === "uk" ? "Регіон" : uiLocale() === "et" ? "Piirkond" : "Region")}: ${esc(r.region)}` : "",
                    r.event ? `${esc(uiLocale() === "ru" ? "Событие" : uiLocale() === "uk" ? "Подія" : uiLocale() === "et" ? "Sundmus" : "Event")}: ${esc(r.event)}` : "",
                    r.theme ? `${esc(uiLocale() === "ru" ? "Тематика" : uiLocale() === "uk" ? "Тематика" : uiLocale() === "et" ? "Temaatika" : "Theme")}: ${esc(r.theme)}` : "",
                    Number(r.report_fragment || 0) === 1 ? esc(uiLocale() === "ru" ? "Сообщение фрагмента" : uiLocale() === "uk" ? "Повідомлення фрагмента" : uiLocale() === "et" ? "Katkendi teavitus" : "Fragment report") : "",
                  ].filter(Boolean).join(" · ")}</div>
                ` : ``}
                <pre class="lyrics" style="margin-top:8px">${esc((r.lyrics || "").slice(0, 400))}</pre>
                <input class="input ar_comment" placeholder="${esc(t("admin.requests.comment"))}" style="margin-top:8px" />
                <div class="actions" style="margin-top:8px">
                  ${can("proposals.approve") ? `<button class="btn" data-act="approve" data-id="${esc(r.id)}">${esc(t("admin.requests.approve"))}</button>` : ``}
                  ${can("proposals.reject") ? `<button class="btn danger" data-act="reject" data-id="${esc(r.id)}">${esc(t("admin.requests.reject"))}</button>` : ``}
                </div>
              </div>
            </div>
          `).join("") || `<div class="muted">${esc(t("common.empty"))}</div>`}
        </div>
      </div>
    </div>
  `;
}

function adminUsersUI(data) {
  const items = data?.items || [];
  const allLangLabel = uiLocale() === "ru"
    ? "Все языки"
    : uiLocale() === "uk"
      ? "Усі мови"
      : uiLocale() === "et"
        ? "Koik keeled"
        : "All languages";
  const langOptions = SONG_LANGUAGE_VALUES.map((value) => ({ value, label: formatLang(value) }));
  const scopeBlockLabel = uiLocale() === "ru"
    ? "Языки песен"
    : uiLocale() === "uk"
      ? "Мови пісень"
      : uiLocale() === "et"
        ? "Laulude keeled"
        : "Song languages";
  const purgeLabel = uiLocale() === "ru"
    ? "Удалить данные пользователя с сайта"
    : uiLocale() === "uk"
      ? "Видалити дані користувача з сайту"
    : uiLocale() === "et"
      ? "Kustuta kasutaja andmed saidilt"
      : "Delete user data from site";
  const permsCollapseLabel = uiLocale() === "ru"
    ? "Полномочия"
    : uiLocale() === "uk"
      ? "Повноваження"
      : uiLocale() === "et"
        ? "Oigused"
        : "Permissions";
  const superAdminBadgeLabel = uiLocale() === "ru"
    ? "Супер-адинистратор"
    : uiLocale() === "uk"
      ? "Супер-адіністратор"
      : uiLocale() === "et"
        ? "Superadministraator"
        : "Super admin";
  const superAdminHint = uiLocale() === "ru"
    ? "Системная роль: супер-администратор. Изменение через интерфейс недоступно."
    : uiLocale() === "uk"
      ? "Системна роль: супер-адміністратор. Зміна через інтерфейс недоступна."
      : uiLocale() === "et"
        ? "Susteemiroll: superadministraator. Muutmine liidese kaudu pole lubatud."
        : "System role: super admin. Editing from UI is disabled.";
  const accessLevelLabel = uiLocale() === "ru"
    ? "Уровень доступа"
    : uiLocale() === "uk"
      ? "Рівень доступу"
      : uiLocale() === "et"
        ? "Juurdepaasu tase"
        : "Access level";
  const userRoleLabel = uiLocale() === "ru"
    ? "Пользователь"
    : uiLocale() === "uk"
      ? "Користувач"
      : uiLocale() === "et"
        ? "Kasutaja"
        : "User";
  const adminRoleLabel = uiLocale() === "ru"
    ? "Адинистратор"
    : uiLocale() === "uk"
      ? "Адіністратор"
      : uiLocale() === "et"
        ? "Administraator"
        : "Administrator";
  return `
    <div>
      ${adminTabs("users")}
      <div class="card">
        <div class="h2">${esc(t("admin.users.title"))}</div>
        <div class="sep"></div>
        <div class="list">
          ${items.map((u) => {
            const isSystemSuper = u.role === "super_admin";
            const adminEnabled = u.role === "admin" || isSystemSuper;
            const scope = (u.scopeLanguages || []).join(", ");
            const permissions = new Set(isSystemSuper ? ADMIN_PERMISSIONS : (u.permissions || []));
            const nickname = String(u.nickname || "").trim();
            const displayName = nickname || String(u.email || "");
            return `
              <div class="songCard">
                <div style="width:100%">
                  <div class="row">
                    <div class="songTitle">${esc(displayName)}</div>
                    ${isSystemSuper ? `<span class="badge ok">${esc(superAdminBadgeLabel)}</span>` : ``}
                  </div>
                  <div class="songMeta">${esc(u.email || "")} · ${esc(u.id)} · ${esc(u.created_at || "")}</div>
                  ${isSystemSuper ? `<div class="muted small" style="margin-top:6px">${esc(superAdminHint)}</div>` : ``}
                  <div class="grid2" style="margin-top:8px">
                    <label class="field">
                      <div class="fieldLabel">${esc(accessLevelLabel)}</div>
                      <select class="select au_admin_access" ${isSystemSuper ? "disabled" : ""}>
                        <option value="0" ${adminEnabled ? "" : "selected"}>${esc(userRoleLabel)}</option>
                        <option value="1" ${adminEnabled ? "selected" : ""}>${esc(adminRoleLabel)}</option>
                      </select>
                    </label>
                  </div>
                  <details class="au-collapse au_scope_wrap ${adminEnabled ? "" : "hidden"}">
                    <summary>${esc(scopeBlockLabel)}</summary>
                    <div class="au-perm-grid">
                      <label class="au-perm-option">
                        <input type="checkbox" class="au_scope_lang" value="*" ${(scope || "").split(",").map((x) => x.trim()).includes("*") ? "checked" : ""} ${isSystemSuper ? "disabled" : ""} />
                        <span>${esc(allLangLabel)} (*)</span>
                      </label>
                      ${langOptions.map((lang) => `
                        <label class="au-perm-option">
                          <input type="checkbox" class="au_scope_lang" value="${esc(lang.value)}" ${(scope || "").split(",").map((x) => x.trim()).includes(lang.value) ? "checked" : ""} ${isSystemSuper ? "disabled" : ""} />
                          <span>${esc(lang.label)} (${esc(lang.value)})</span>
                        </label>
                      `).join("")}
                    </div>
                  </details>
                  <details class="au-collapse au_permissions_wrap ${adminEnabled ? "" : "hidden"}" style="margin-top:8px">
                    <summary>${esc(permsCollapseLabel)}</summary>
                    <div class="au-perm-grid">
                      ${ADMIN_PERMISSIONS.map((perm) => `
                        <label class="au-perm-option">
                          <input type="checkbox" class="au_perm" value="${esc(perm)}" ${permissions.has(perm) ? "checked" : ""} ${isSystemSuper ? "disabled" : ""} />
                          <span class="au-perm-copy">
                            <span class="au-perm-name">${esc(permissionLabel(perm))}</span>
                            <span class="au-perm-desc">${esc(permissionDescription(perm))}</span>
                          </span>
                        </label>
                      `).join("")}
                    </div>
                  </details>
                  <div class="actions" style="margin-top:8px">
                    <button class="btn" data-user-id="${esc(u.id)}" data-act="saveUser" ${isSystemSuper ? "disabled" : ""}>${esc(t("admin.saveAccess"))}</button>
                    <button class="btn danger" data-user-id="${esc(u.id)}" data-act="purgeUser" ${isSystemSuper ? "disabled" : ""}>${esc(purgeLabel)}</button>
                  </div>
                </div>
              </div>
            `;
          }).join("") || `<div class="muted">${esc(t("common.empty"))}</div>`}
        </div>
      </div>
    </div>
  `;
}

function adminCountryBackgroundsUI(data) {
  const options = getCatalogOptions("country", uiLocale());
  const desktopStd = COUNTRY_BACKGROUND_STANDARDS.desktop;
  const mobileStd = COUNTRY_BACKGROUND_STANDARDS.mobile;
  const desktopViewport = COUNTRY_BACKGROUND_VIEWPORTS.desktop;
  const mobileViewport = COUNTRY_BACKGROUND_VIEWPORTS.mobile;
  const title = uiLocale() === "ru"
    ? "Редактор фонов страны"
    : uiLocale() === "uk"
      ? "Редактор фонів країни"
      : uiLocale() === "et"
        ? "Riigi tausta redaktor"
        : "Country background editor";
  const subtitle = uiLocale() === "ru"
    ? "Задайте отдельные фоны для ПК и телефона, перетащите кадр ышью/пальце и настройте зу."
    : uiLocale() === "uk"
      ? "Задайте окреі фони для ПК С– телефону, перетягніть кадр ишкою/пальце С– налаштуйте зу."
      : uiLocale() === "et"
        ? "Maara eraldi taustad lauaarvutile ja telefonile, lohista kaadrit hiire/sormega ja sea suum."
        : "Set separate desktop/mobile backgrounds, drag the frame with mouse/touch, and adjust zoom.";
  const countryLabel = uiLocale() === "ru"
    ? "Страна"
    : uiLocale() === "uk"
      ? "Країна"
      : uiLocale() === "et"
        ? "Riik"
        : "Country";
  const countrySearchLabel = uiLocale() === "ru"
    ? "Поиск страны"
    : uiLocale() === "uk"
      ? "Пошук країни"
      : uiLocale() === "et"
        ? "Riigi otsing"
        : "Country search";
  const countrySearchPlaceholder = uiLocale() === "ru"
    ? "Начните вводить название или код (например: ussr)"
    : uiLocale() === "uk"
      ? "Почніть вводити назву або код (наприклад: ussr)"
      : uiLocale() === "et"
        ? "Sisesta nimi voi kood (nt ussr)"
        : "Start typing name or code (e.g. ussr)";
  const periodScopeLabel = uiLocale() === "ru" ? "Эпоха СССР для фона" : uiLocale() === "uk" ? "Епоха СРСР для фону" : uiLocale() === "et" ? "NSVL taustaperiood" : "USSR era for background";
  const periodScopeDefaultLabel = uiLocale() === "ru" ? "азовый фон (все эпохи)" : uiLocale() === "uk" ? "азовий фон (усі епохи)" : uiLocale() === "et" ? "Pohitaust (koik perioodid)" : "Default background (all eras)";
  const periodScopeHint = uiLocale() === "ru"
    ? "Выберите эпоху, чтобы задать отдельный фон для периода СССР."
    : uiLocale() === "uk"
      ? "Оберіть епоху, щоб задати окреий фон для періоду СРСР."
      : uiLocale() === "et"
        ? "Vali periood, et maarata NSVL ajastule eraldi taust."
        : "Choose an era to set a dedicated USSR period background.";
  const desktopLabel = uiLocale() === "ru" ? "ПК" : uiLocale() === "uk" ? "ПК" : uiLocale() === "et" ? "Lauaarvuti" : "Desktop";
  const mobileLabel = uiLocale() === "ru" ? "Телефон" : uiLocale() === "uk" ? "Телефон" : uiLocale() === "et" ? "Telefon" : "Mobile";
  const uploadLabel = uiLocale() === "ru" ? "Загрузить файл" : uiLocale() === "uk" ? "Завантажити файл" : uiLocale() === "et" ? "Laadi fail" : "Upload file";
  const urlLabel = uiLocale() === "ru" ? "или URL изображения" : uiLocale() === "uk" ? "або URL зображення" : uiLocale() === "et" ? "voi pildi URL" : "or image URL";
  const zoomLabel = uiLocale() === "ru" ? "Зу" : uiLocale() === "uk" ? "Зу" : uiLocale() === "et" ? "Suum" : "Zoom";
  const saveLabel = uiLocale() === "ru" ? "Сохранить" : uiLocale() === "uk" ? "Зберегти" : uiLocale() === "et" ? "Salvesta" : "Save";
  const clearLabel = uiLocale() === "ru" ? "Очистить" : uiLocale() === "uk" ? "Очистити" : uiLocale() === "et" ? "Tuhjenda" : "Clear";
  const previewLabel = uiLocale() === "ru" ? "Предпросмотр" : uiLocale() === "uk" ? "Попередній перегляд" : uiLocale() === "et" ? "Eelvaade" : "Preview";
  const dragHint = uiLocale() === "ru"
    ? "Перетащите изображение, чтобы выставить кадр"
    : uiLocale() === "uk"
      ? "Перетягніть зображення, щоб виставити кадр"
      : uiLocale() === "et"
        ? "Lohista pilti, et kaader paika seada"
        : "Drag image to position the frame";
  const noImage = uiLocale() === "ru" ? "Нет изображения" : uiLocale() === "uk" ? "Неає зображення" : uiLocale() === "et" ? "Pilt puudub" : "No image";
  const assetLabel = uiLocale() === "ru" ? "Картинка" : uiLocale() === "uk" ? "Картинка" : uiLocale() === "et" ? "Pilt" : "Image";
  const screenLabel = uiLocale() === "ru" ? "Экран" : uiLocale() === "uk" ? "Екран" : uiLocale() === "et" ? "Ekraan" : "Screen";
  const ratioText = (w, h) => {
    const gcd = (a, b) => (b ? gcd(b, a % b) : a);
    const ww = Math.max(1, Number(w) || 1);
    const hh = Math.max(1, Number(h) || 1);
    const d = gcd(ww, hh);
    return `${ww / d}:${hh / d}`;
  };
  const desktopAssetRatio = ratioText(desktopStd.width, desktopStd.height);
  const desktopViewportRatio = ratioText(desktopViewport.width, desktopViewport.height);
  const mobileAssetRatio = ratioText(mobileStd.width, mobileStd.height);
  const mobileViewportRatio = ratioText(mobileViewport.width, mobileViewport.height);
  const mapTitle = uiLocale() === "ru"
    ? "Мини-карта прокрутки (вся картинка + видимое окно)"
    : uiLocale() === "uk"
      ? "Міні-карта прокрутки (вся картинка + видиме вікно)"
      : uiLocale() === "et"
        ? "Kerimise minimapp (kogu pilt + nahtav aken)"
        : "Scroll minimap (full image + visible window)";
  const scrollLabel = uiLocale() === "ru" ? "Прокрутка" : uiLocale() === "uk" ? "Прокрутка" : uiLocale() === "et" ? "Kerimine" : "Scroll";
  const nudgeHint = uiLocale() === "ru"
    ? "Точная настройка кадра кнопками"
    : uiLocale() === "uk"
      ? "Точне налаштування кадру кнопками"
      : uiLocale() === "et"
        ? "Kaadri peenhaalestus nuppudega"
        : "Fine frame tuning with buttons";
  const centerLabel = uiLocale() === "ru" ? "Центр" : uiLocale() === "uk" ? "Центр" : uiLocale() === "et" ? "Keskele" : "Center";
  const stepLabel = uiLocale() === "ru" ? "Шаг" : uiLocale() === "uk" ? "Крок" : uiLocale() === "et" ? "Samm" : "Step";
  const openPreviewLabel = uiLocale() === "ru"
    ? "Открыть страницу в новой вкладке"
    : uiLocale() === "uk"
      ? "Відкрити сторінку у новій вкладці"
      : uiLocale() === "et"
        ? "Ava leht uuel vahelehel"
        : "Open page in new tab";
  const canEditFlag = isSuperAdmin();
  const flagDesktopStd = FLAG_CARD_STANDARDS.desktopLong;
  const flagMobileStd = FLAG_CARD_STANDARDS.mobileLong;
  const flagTitle = uiLocale() === "ru" ? "Флаг для карточек каталога" : uiLocale() === "uk" ? "Прапор для карток каталогу" : uiLocale() === "et" ? "Kataloogi kaartide lipp" : "Flag for catalog cards";
  const flagDesktopInputLabel = uiLocale() === "ru" ? "Файл флага (ПК)" : uiLocale() === "uk" ? "Файл прапора (ПК)" : uiLocale() === "et" ? "Lipu fail (lauaarvuti)" : "Flag file (desktop)";
  const flagDesktopUrlLabel = uiLocale() === "ru" ? "или URL флага (ПК)" : uiLocale() === "uk" ? "або URL прапора (ПК)" : uiLocale() === "et" ? "voi lipu URL (lauaarvuti)" : "or flag URL (desktop)";
  const flagMobileInputLabel = uiLocale() === "ru" ? "Файл флага (телефон)" : uiLocale() === "uk" ? "Файл прапора (телефон)" : uiLocale() === "et" ? "Lipu fail (telefon)" : "Flag file (mobile)";
  const flagMobileUrlLabel = uiLocale() === "ru" ? "или URL флага (телефон)" : uiLocale() === "uk" ? "або URL прапора (телефон)" : uiLocale() === "et" ? "voi lipu URL (telefon)" : "or flag URL (mobile)";
  const flagSuperAdminHint = uiLocale() === "ru"
    ? "Флаг страны может менять только супер-админ."
    : uiLocale() === "uk"
      ? "Прапор країни може змінювати лише супер-адмін."
      : uiLocale() === "et"
        ? "Riigi lippu saab muuta ainult superadmin."
        : "Only super admin can change country flags.";
  const flagPreviewTitle = uiLocale() === "ru" ? "Пример карточки" : uiLocale() === "uk" ? "Приклад картки" : uiLocale() === "et" ? "Kaardi naidis" : "Card preview";
  const flagPreviewSong = uiLocale() === "ru" ? "Демо песня" : uiLocale() === "uk" ? "Демо пісня" : uiLocale() === "et" ? "Demo laul" : "Demo song";
  const flagPreviewCountry = uiLocale() === "ru" ? "Страна - эпоха" : uiLocale() === "uk" ? "Країна - епоха" : uiLocale() === "et" ? "Riik - ajastu" : "Country - period";
  const flagCardLongDesktopLabel = uiLocale() === "ru" ? "Каталог ПК (длинная)" : uiLocale() === "uk" ? "Каталог ПК (довга)" : uiLocale() === "et" ? "Kataloog lauaarvuti (pikk)" : "Desktop catalog (long)";
  const flagCardLongMobileLabel = uiLocale() === "ru" ? "Каталог телефон" : uiLocale() === "uk" ? "Каталог телефон" : uiLocale() === "et" ? "Kataloog telefon" : "Mobile catalog";
  const flagNoImage = uiLocale() === "ru" ? "Картинка не выбрана" : uiLocale() === "uk" ? "Зображення не вибрано" : uiLocale() === "et" ? "Pilti pole valitud" : "Image is not selected";
  const flagRangesTitle = uiLocale() === "ru" ? "Флаги по годам (до 10)" : uiLocale() === "uk" ? "Прапори за роками (до 10)" : uiLocale() === "et" ? "Lipud aastate kaupa (kuni 10)" : "Flags by year (up to 10)";
  const addFlagRangeLabel = uiLocale() === "ru" ? "Добавить флаг" : uiLocale() === "uk" ? "Додати прапор" : uiLocale() === "et" ? "Lisa lipp" : "Add flag";
  const ussrPeriodOptions = USSR_PERIOD_VALUES
    .map((periodValue) => `<option value="${esc(periodValue)}">${esc(formatPeriod(periodValue))}</option>`)
    .join("");

  return `
    <div>
      ${adminTabs("backgrounds")}
      <div class="card ac-editor-card ab-editor">
        <div class="h2">${esc(title)}</div>
        <div class="muted small">${esc(subtitle)}</div>
        <div class="sep"></div>
        <label class="field">
          <div class="fieldLabel">${esc(countryLabel)}</div>
          <select class="select" id="ab_country">
            <option value="" selected>${esc(uiText("selectCountry"))}</option>
            ${options.map((opt) => `<option value="${esc(opt.value)}">${esc(opt.label)}</option>`).join("")}
          </select>
        </label>
        <label class="field">
          <div class="fieldLabel">${esc(countrySearchLabel)}</div>
          <input class="input" id="ab_country_search" placeholder="${esc(countrySearchPlaceholder)}" autocomplete="off" />
        </label>
        <label class="field hidden" id="ab_period_scope_wrap">
          <div class="fieldLabel">${esc(periodScopeLabel)}</div>
          <select class="select" id="ab_period_scope">
            <option value="default">${esc(periodScopeDefaultLabel)}</option>
            ${ussrPeriodOptions}
          </select>
          <div class="muted small">${esc(periodScopeHint)}</div>
        </label>
        <div class="ab-variants-grid">
          <div class="songCard ab-variant" id="ab_desktop_variant">
            <div class="h2">${esc(desktopLabel)} · ${esc(assetLabel)} ${desktopAssetRatio} (${desktopStd.width}x${desktopStd.height}) · ${esc(screenLabel)} ${desktopViewportRatio} (${desktopViewport.width}x${desktopViewport.height})</div>
            <label class="field">
              <div class="fieldLabel">${esc(uploadLabel)}</div>
              <input class="input" id="ab_desktop_file" type="file" accept="image/*" />
            </label>
            <label class="field">
              <div class="fieldLabel">${esc(urlLabel)}</div>
              <input class="input" id="ab_desktop_url" placeholder="https://... / /picture/..." />
            </label>
            <input id="ab_desktop_focus_x" type="hidden" value="50" />
            <input id="ab_desktop_focus_y" type="hidden" value="50" />
            <label class="field">
              <div class="fieldLabel">${esc(zoomLabel)}: <span id="ab_desktop_zoom_val">1</span></div>
              <input class="input" id="ab_desktop_zoom" type="range" min="1" max="100" step="1" value="1" />
            </label>
            <div class="fieldLabel">${esc(previewLabel)}</div>
            <div class="muted small ab-preview-hint">${esc(dragHint)}</div>
            <div class="ab-preview-screen ab-preview-desktop" id="ab_preview_desktop" data-empty="${esc(noImage)}">
              <div class="ab-preview-card-glass"></div>
            </div>
            <div class="ab-preview-nav-wrap">
              <div class="muted small">${esc(nudgeHint)} · ${esc(stepLabel)} 1%</div>
              <div class="ab-preview-nav">
                <button class="btn ghost ab-nav-btn" type="button" data-ab-kind="desktop" data-ab-dx="0" data-ab-dy="-1">^</button>
                <button class="btn ghost ab-nav-btn" type="button" data-ab-kind="desktop" data-ab-dx="-1" data-ab-dy="0"><</button>
                <button class="btn ghost ab-nav-btn" type="button" data-ab-kind="desktop" data-ab-center="1">${esc(centerLabel)}</button>
                <button class="btn ghost ab-nav-btn" type="button" data-ab-kind="desktop" data-ab-dx="1" data-ab-dy="0">></button>
                <button class="btn ghost ab-nav-btn" type="button" data-ab-kind="desktop" data-ab-dx="0" data-ab-dy="1">v</button>
              </div>
            </div>
            <div class="ab-scroll-wrap">
              <div class="muted small">${esc(mapTitle)}</div>
              <label class="field">
                <div class="fieldLabel">${esc(scrollLabel)}: <span id="ab_desktop_scroll_val">0</span>%</div>
                <input class="input" id="ab_desktop_scroll" type="range" min="0" max="100" step="1" value="0" />
              </label>
              <div class="ab-scroll-preview ab-scroll-preview-desktop is-empty" id="ab_scroll_preview_desktop" data-empty="${esc(noImage)}">
                <img class="ab-scroll-img" id="ab_scroll_img_desktop" alt="" />
                <div class="ab-scroll-dim ab-scroll-dim-top" id="ab_scroll_dim_top_desktop"></div>
                <div class="ab-scroll-dim ab-scroll-dim-bottom" id="ab_scroll_dim_bottom_desktop"></div>
                <div class="ab-scroll-viewport" id="ab_scroll_viewport_desktop"></div>
              </div>
            </div>
          </div>

          <div class="songCard ab-variant" id="ab_mobile_variant">
            <div class="h2">${esc(mobileLabel)} · ${esc(assetLabel)} ${mobileAssetRatio} (${mobileStd.width}x${mobileStd.height}) · ${esc(screenLabel)} ${mobileViewportRatio} (${mobileViewport.width}x${mobileViewport.height})</div>
            <label class="field">
              <div class="fieldLabel">${esc(uploadLabel)}</div>
              <input class="input" id="ab_mobile_file" type="file" accept="image/*" />
            </label>
            <label class="field">
              <div class="fieldLabel">${esc(urlLabel)}</div>
              <input class="input" id="ab_mobile_url" placeholder="https://... / /picture/..." />
            </label>
            <input id="ab_mobile_focus_x" type="hidden" value="50" />
            <input id="ab_mobile_focus_y" type="hidden" value="50" />
            <label class="field">
              <div class="fieldLabel">${esc(zoomLabel)}: <span id="ab_mobile_zoom_val">1</span></div>
              <input class="input" id="ab_mobile_zoom" type="range" min="1" max="100" step="1" value="1" />
            </label>
            <div class="fieldLabel">${esc(previewLabel)}</div>
            <div class="muted small ab-preview-hint">${esc(dragHint)}</div>
            <div class="ab-preview-screen ab-preview-mobile" id="ab_preview_mobile" data-empty="${esc(noImage)}">
              <div class="ab-preview-card-glass"></div>
            </div>
            <div class="ab-preview-nav-wrap">
              <div class="muted small">${esc(nudgeHint)} · ${esc(stepLabel)} 1%</div>
              <div class="ab-preview-nav">
                <button class="btn ghost ab-nav-btn" type="button" data-ab-kind="mobile" data-ab-dx="0" data-ab-dy="-1">^</button>
                <button class="btn ghost ab-nav-btn" type="button" data-ab-kind="mobile" data-ab-dx="-1" data-ab-dy="0"><</button>
                <button class="btn ghost ab-nav-btn" type="button" data-ab-kind="mobile" data-ab-center="1">${esc(centerLabel)}</button>
                <button class="btn ghost ab-nav-btn" type="button" data-ab-kind="mobile" data-ab-dx="1" data-ab-dy="0">></button>
                <button class="btn ghost ab-nav-btn" type="button" data-ab-kind="mobile" data-ab-dx="0" data-ab-dy="1">v</button>
              </div>
            </div>
            <div class="ab-scroll-wrap">
              <div class="muted small">${esc(mapTitle)}</div>
              <label class="field">
                <div class="fieldLabel">${esc(scrollLabel)}: <span id="ab_mobile_scroll_val">0</span>%</div>
                <input class="input" id="ab_mobile_scroll" type="range" min="0" max="100" step="1" value="0" />
              </label>
              <div class="ab-scroll-preview ab-scroll-preview-mobile is-empty" id="ab_scroll_preview_mobile" data-empty="${esc(noImage)}">
                <img class="ab-scroll-img" id="ab_scroll_img_mobile" alt="" />
                <div class="ab-scroll-dim ab-scroll-dim-top" id="ab_scroll_dim_top_mobile"></div>
                <div class="ab-scroll-dim ab-scroll-dim-bottom" id="ab_scroll_dim_bottom_mobile"></div>
                <div class="ab-scroll-viewport" id="ab_scroll_viewport_mobile"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="songCard ab-flag-card">
          <div class="h2">${esc(flagTitle)}</div>
          ${canEditFlag ? `
            <label class="field">
              <div class="fieldLabel">${esc(flagDesktopInputLabel)} · ${flagDesktopStd.width}x${flagDesktopStd.height}</div>
              <input class="input" id="ab_flag_file_desktop" type="file" accept="image/*" />
            </label>
            <label class="field">
              <div class="fieldLabel">${esc(flagDesktopUrlLabel)}</div>
              <input class="input" id="ab_flag_url_desktop" placeholder="https://... / /picture/..." />
            </label>
            <label class="field">
              <div class="fieldLabel">${esc(flagMobileInputLabel)} · ${flagMobileStd.width}x${flagMobileStd.height}</div>
              <input class="input" id="ab_flag_file_mobile" type="file" accept="image/*" />
            </label>
            <label class="field">
              <div class="fieldLabel">${esc(flagMobileUrlLabel)}</div>
              <input class="input" id="ab_flag_url_mobile" placeholder="https://... / /picture/..." />
            </label>
            <div class="fieldLabel">${esc(flagRangesTitle)}</div>
            <div class="actions" style="margin:6px 0 4px">
              <button class="btn ghost" id="ab_flag_range_add" type="button">${esc(addFlagRangeLabel)}</button>
            </div>
            <div class="ab-flag-ranges" id="ab_flag_ranges"></div>
          ` : `<div class="muted small">${esc(flagSuperAdminHint)}</div>`}
          <div class="fieldLabel">${esc(flagPreviewTitle)}</div>
          <div class="ab-flag-preview-grid">
            <div class="ab-flag-preview-wrap">
              <div class="muted small">${esc(flagCardLongDesktopLabel)} · ${flagDesktopStd.width}x${flagDesktopStd.height}</div>
              <div class="yt-card ab-flag-preview ab-flag-preview-long-desktop" id="ab_flag_preview_long_desktop" data-empty="${esc(flagNoImage)}">
                <div class="yt-card-content">
                  <div class="yt-card-title">${esc(flagPreviewSong)}</div>
                  <div class="yt-card-meta-row">
                    <span class="yt-card-line">${esc(formatCountry("ussr"))}</span>
                    <span class="yt-card-line">${esc(flagPreviewCountry)}</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="ab-flag-preview-wrap">
              <div class="muted small">${esc(flagCardLongMobileLabel)} · ${flagMobileStd.width}x${flagMobileStd.height}</div>
              <div class="yt-card ab-flag-preview ab-flag-preview-long-mobile" id="ab_flag_preview_long_mobile" data-empty="${esc(flagNoImage)}">
                <div class="yt-card-content">
                  <div class="yt-card-title">${esc(flagPreviewSong)}</div>
                  <div class="yt-card-meta-row">
                    <span class="yt-card-line">${esc(formatCountry("ussr"))}</span>
                    <span class="yt-card-line">${esc(flagPreviewCountry)}</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="actions" style="margin-top:12px">
          <button class="btn" id="ab_save" type="button">${esc(saveLabel)}</button>
          <button class="btn ghost" id="ab_clear" type="button">${esc(clearLabel)}</button>
          ${canEditFlag ? `<button class="btn ghost" id="ab_open_preview" type="button">${esc(openPreviewLabel)}</button>` : ``}
          <span class="muted small" id="ab_updated"></span>
        </div>
      </div>
    </div>
  `;
}

function openPrompt(text) {
  const dlg = qs("dlgPrompt");
  const area = qs("promptText");
  const msg = qs("promptMsg");
  area.value = text;
  msg.textContent = "";
  openDialogAnimated(dlg);
}

function wirePromptButtons() {
  const dlg = qs("dlgPrompt");
  const copyBtn = qs("promptCopy");
  const openBtn = qs("promptOpen");
  const closeBtn = qs("promptClose");
  const headerCloseBtn = dlg?.querySelector(".dlgHeader button[value='cancel']");
  const area = qs("promptText");
  const msg = qs("promptMsg");
  if (dlg && !dlg.dataset.motionWired) {
    dlg.dataset.motionWired = "1";
    dlg.addEventListener("cancel", (event) => {
      event.preventDefault();
      closeDialogAnimated(dlg);
    });
    dlg.addEventListener("click", (event) => {
      const rect = dlg.getBoundingClientRect();
      const inside = (
        event.clientX >= rect.left
        && event.clientX <= rect.right
        && event.clientY >= rect.top
        && event.clientY <= rect.bottom
      );
      if (!inside) closeDialogAnimated(dlg);
    });
    dlg.addEventListener("close", () => {
      clearUiTransition(dlg);
      dlg.classList.remove("is-open", "is-closing");
    });
  }
  if (copyBtn && !copyBtn.dataset.wired) {
    copyBtn.dataset.wired = "1";
    copyBtn.addEventListener("click", async () => {
      try {
        if (!navigator.clipboard?.writeText) throw new Error("unavailable");
        await navigator.clipboard.writeText(area.value || "");
        msg.textContent = t("prompt.copied");
      } catch {
        msg.textContent = t("prompt.copyFailed");
      }
    });
  }
  if (openBtn && !openBtn.dataset.wired) {
    openBtn.dataset.wired = "1";
    openBtn.addEventListener("click", () => window.open("https://chatgpt.com/", "_blank", "noopener"));
  }
  if (closeBtn && !closeBtn.dataset.wired) {
    closeBtn.dataset.wired = "1";
    closeBtn.addEventListener("click", (event) => {
      event.preventDefault();
      closeDialogAnimated(dlg);
    });
  }
  if (headerCloseBtn && !headerCloseBtn.dataset.wired) {
    headerCloseBtn.dataset.wired = "1";
    headerCloseBtn.addEventListener("click", (event) => {
      event.preventDefault();
      closeDialogAnimated(dlg);
    });
  }
}

let autoGrowRefreshWired = false;

function autoGrowTextarea(textarea, options = {}) {
  if (!(textarea instanceof HTMLTextAreaElement)) return;
  const preserveViewport = options.preserveViewport !== false;
  const isFocused = document.activeElement === textarea;
  const isSongEditorTextarea = !!textarea.closest("#ac_editor, #songToolsPanel");
  const extraBottomSpace = isSongEditorTextarea ? 28 : 8;
  const shouldPreserve = preserveViewport && isFocused && !isSongEditorTextarea;
  const prevScrollY = shouldPreserve ? (window.scrollY || window.pageYOffset || 0) : 0;
  const prevTop = shouldPreserve ? textarea.getBoundingClientRect().top : 0;
  const minHeight = Number.parseFloat(window.getComputedStyle(textarea).minHeight || "0") || 0;
  const prevHeight = textarea.offsetHeight || 0;
  textarea.style.height = "auto";
  const nextHeight = Math.max(textarea.scrollHeight + extraBottomSpace, minHeight);
  textarea.style.height = `${nextHeight}px`;
  if (shouldPreserve && Math.abs(nextHeight - prevHeight) > 0.5) {
    const nextTop = textarea.getBoundingClientRect().top;
    const delta = nextTop - prevTop;
    if (Math.abs(delta) > 0.5) {
      window.scrollTo({ top: prevScrollY + delta });
    }
  }
}

function wireAutoGrowTextareas(root = document) {
  if (!root) return;
  root.querySelectorAll("textarea.textarea:not([readonly]), textarea.song-editor-text").forEach((textarea) => {
    autoGrowTextarea(textarea);
    if (textarea.dataset.autogrowWired === "1") return;
    textarea.dataset.autogrowWired = "1";
    textarea.addEventListener("input", () => autoGrowTextarea(textarea));
    textarea.addEventListener("focus", () => autoGrowTextarea(textarea));
    textarea.addEventListener("change", () => autoGrowTextarea(textarea));
  });
  if (!autoGrowRefreshWired) {
    autoGrowRefreshWired = true;
    const refresh = () => requestAnimationFrame(() => {
      const active = document.activeElement;
      if (active instanceof HTMLTextAreaElement && active.matches("textarea.textarea:not([readonly]), textarea.song-editor-text")) {
        autoGrowTextarea(active);
      }
    });
    window.addEventListener("resize", refresh, { passive: true });
    window.addEventListener("orientationchange", refresh, { passive: true });
    window.visualViewport?.addEventListener("resize", refresh, { passive: true });
  }
}

function setSelectValueWithLegacy(selectId, kind, value, placeholder) {
  const select = qs(selectId);
  if (!select) return;
  select.innerHTML = selectOptions(kind, value, placeholder);
  const raw = (value ?? "").toString().trim();
  const normalized = normalizeForKind(kind, raw);
  select.value = normalized || raw;
}

function syncPeriodVisibility(countryId, periodWrapId, periodId) {
  const countryValue = normalizeSongCountry(qs(countryId)?.value || "");
  const isUSSR = countryValue === "ussr";
  qs(periodWrapId)?.classList.toggle("hidden", !isUSSR);
  if (!isUSSR && qs(periodId)) qs(periodId).value = "";
}

function collectLinks(rootIdPrefix) {
  const root = qs(rootIdPrefix);
  if (!root) return [];
  return Array.from(root.querySelectorAll(".ss_link_row")).map((row) => ({
    title: row.querySelector(".ss_link_title")?.value?.trim() || "",
    kind: row.querySelector(".ss_link_kind")?.value?.trim() || "",
    url: row.querySelector(".ss_link_url")?.value?.trim() || "",
  })).filter((x) => x.url);
}

function collectVersions(rootIdPrefix) {
  const root = qs(rootIdPrefix);
  if (!root) return [];
  return Array.from(root.querySelectorAll(".ss_version_row")).map((row) => ({
    title: row.querySelector(".ss_version_title")?.value?.trim() || "",
    lang: row.querySelector(".ss_version_lang")?.value?.trim() || "",
    source: row.querySelector(".ss_version_source")?.value?.trim() || "",
    lyrics: row.querySelector(".ss_version_lyrics")?.value || "",
  })).filter((x) => (x.lyrics || "").trim());
}

function wireDynamicRows(root) {
  if (!root) return;
  root.querySelectorAll(".ss_link_remove").forEach((btn) => {
    btn.onclick = () => btn.closest(".ss_link_row")?.remove();
  });
  root.querySelectorAll(".ss_version_remove").forEach((btn) => {
    btn.onclick = () => btn.closest(".ss_version_row")?.remove();
  });
}

function readFileAsDataUrl(file) {
  return new Promise((resolve, reject) => {
    const reader = new FileReader();
    reader.onload = () => resolve(String(reader.result || ""));
    reader.onerror = () => reject(new Error("Failed to read file"));
    reader.readAsDataURL(file);
  });
}

function loadImageElement(src) {
  return new Promise((resolve, reject) => {
    const img = new Image();
    img.onload = () => resolve(img);
    img.onerror = () => reject(new Error("Failed to load image"));
    img.src = src;
  });
}

function computeBackgroundCrop(sourceWidth, sourceHeight, targetWidth, targetHeight, focusX, focusY, zoomLevel = 1) {
  const safeSourceWidth = Math.max(1, Number(sourceWidth || 1));
  const safeSourceHeight = Math.max(1, Number(sourceHeight || 1));
  const safeTargetWidth = Math.max(1, Math.round(Number(targetWidth) || 1));
  const safeTargetHeight = Math.max(1, Math.round(Number(targetHeight) || 1));
  const zoomScale = zoomLevelToScale(zoomLevel);

  const targetAspect = safeTargetWidth / safeTargetHeight;
  const sourceAspect = safeSourceWidth / safeSourceHeight;
  let baseCropWidth = safeSourceWidth;
  let baseCropHeight = safeSourceHeight;
  if (sourceAspect > targetAspect) {
    baseCropHeight = safeSourceHeight;
    baseCropWidth = baseCropHeight * targetAspect;
  } else {
    baseCropWidth = safeSourceWidth;
    baseCropHeight = baseCropWidth / targetAspect;
  }

  const cropWidth = Math.max(1, baseCropWidth / zoomScale);
  const cropHeight = Math.max(1, baseCropHeight / zoomScale);

  const fx = clampPercent(focusX) / 100;
  const fy = clampPercent(focusY) / 100;
  let cropX = (safeSourceWidth - cropWidth) * fx;
  let cropY = (safeSourceHeight - cropHeight) * fy;
  cropX = Math.max(0, Math.min(safeSourceWidth - cropWidth, cropX));
  cropY = Math.max(0, Math.min(safeSourceHeight - cropHeight, cropY));

  return {
    cropX,
    cropY,
    cropWidth,
    cropHeight,
    zoomScale,
    sourceWidth: safeSourceWidth,
    sourceHeight: safeSourceHeight,
    targetWidth: safeTargetWidth,
    targetHeight: safeTargetHeight,
  };
}

async function standardizeBackgroundImage(sourceUrl, width, height, focusX, focusY, zoomLevel = 1) {
  const image = await loadImageElement(sourceUrl);
  const sourceWidth = Math.max(1, Number(image.naturalWidth || image.width || 1));
  const sourceHeight = Math.max(1, Number(image.naturalHeight || image.height || 1));
  const targetWidth = Math.max(1, Math.round(Number(width) || 1));
  const targetHeight = Math.max(1, Math.round(Number(height) || 1));
  const crop = computeBackgroundCrop(sourceWidth, sourceHeight, targetWidth, targetHeight, focusX, focusY, zoomLevel);

  const canvas = document.createElement("canvas");
  canvas.width = targetWidth;
  canvas.height = targetHeight;
  const ctx = canvas.getContext("2d");
  if (!ctx) throw new Error("Canvas is unavailable");
  ctx.imageSmoothingEnabled = true;
  ctx.imageSmoothingQuality = "high";
  ctx.drawImage(image, crop.cropX, crop.cropY, crop.cropWidth, crop.cropHeight, 0, 0, targetWidth, targetHeight);
  return canvas.toDataURL("image/webp", 0.88);
}

async function standardizeFlagImageHorizontalCrop(sourceUrl, width, height) {
  const image = await loadImageElement(sourceUrl);
  const sourceWidth = Math.max(1, Number(image.naturalWidth || image.width || 1));
  const sourceHeight = Math.max(1, Number(image.naturalHeight || image.height || 1));
  const targetWidth = Math.max(1, Math.round(Number(width) || 1));
  const targetHeight = Math.max(1, Math.round(Number(height) || 1));
  const targetAspect = targetWidth / targetHeight;
  const cropHeight = sourceHeight;
  const cropWidth = cropHeight * targetAspect;

  // Flag previews are normalized only by horizontal crop. Never crop top/bottom.
  if (cropWidth > sourceWidth + 0.01) {
    throw new Error("Image is too narrow for horizontal-only crop");
  }

  const cropX = Math.max(0, (sourceWidth - cropWidth) / 2);
  const canvas = document.createElement("canvas");
  canvas.width = targetWidth;
  canvas.height = targetHeight;
  const ctx = canvas.getContext("2d");
  if (!ctx) throw new Error("Canvas is unavailable");
  ctx.imageSmoothingEnabled = true;
  ctx.imageSmoothingQuality = "high";
  ctx.drawImage(image, cropX, 0, cropWidth, cropHeight, 0, 0, targetWidth, targetHeight);
  return canvas.toDataURL("image/webp", 0.9);
}

async function assertExactImageDimensions(sourceUrl, width, height) {
  const image = await loadImageElement(sourceUrl);
  const sourceWidth = Math.max(1, Number(image.naturalWidth || image.width || 1));
  const sourceHeight = Math.max(1, Number(image.naturalHeight || image.height || 1));
  const targetWidth = Math.max(1, Math.round(Number(width) || 1));
  const targetHeight = Math.max(1, Math.round(Number(height) || 1));
  if (sourceWidth !== targetWidth || sourceHeight !== targetHeight) {
    throw new Error(`Image must be exactly ${targetWidth}x${targetHeight}`);
  }
}

function fillContentEditor(song) {
  qs("ac_id").value = song.id || "";
  qs("ac_title").value = song.title || "";
  qs("ac_subtitle").value = song.subtitle || "";
  setSelectValueWithLegacy("ac_lang", "language", song.lang || "", uiText("selectLanguage"));
  qs("ac_status_edit").value = song.status === "draft" ? "draft" : "published";
  setSelectValueWithLegacy("ac_country", "country", song.country || "", uiText("selectCountry"));
  setSelectValueWithLegacy("ac_period", "period", song.period || "", uiText("selectPeriod"));
  syncPeriodVisibility("ac_country", "ac_period_wrap", "ac_period");
  if (qs("ac_region")) qs("ac_region").value = song.region || "";
  if (qs("ac_event")) qs("ac_event").value = song.event || "";
  if (qs("ac_theme")) qs("ac_theme").value = song.theme || "";
  if (qs("ac_verified")) qs("ac_verified").checked = !!song.verified;
  qs("ac_year").value = song.year || "";
  qs("ac_source").value = song.source || "";
  qs("ac_notes").value = song.notes || "";
  const lyricsParts = splitLyricsForEditor(song.lyrics || "");
  qs("ac_lyrics").value = lyricsParts.lyrics || "";
  if (qs("ac_chorus")) qs("ac_chorus").value = lyricsParts.chorus || "";
  if (qs("ac_chorus_marker")) qs("ac_chorus_marker").value = lyricsParts.marker || chorusMarkerLabel();
  const adminContentToggle = qs("ac_admin_content");
  if (adminContentToggle) {
    adminContentToggle.checked = !!(song.is_admin_content === true || Number(song.is_admin_content || song.isAdminContent || 0) === 1);
  }
  qs("ac_links").innerHTML = (song.links || []).map((l) => songInlineLinkRow(l)).join("");
  qs("ac_versions").innerHTML = (song.versions || []).map((v) => songInlineVersionRow(v)).join("");
  wireDynamicRows(qs("ac_editor"));
  wireAutoGrowTextareas(qs("ac_editor"));
  syncDecodingIndicator("ac_decoding", "ac_lyrics", "ac_chorus", "ac_chorus_marker");
}

function collectContentPayload() {
  const id = qs("ac_id").value.trim();
  const country = normalizeSongCountry(qs("ac_country").value.trim()) || "";
  const period = country === "ussr" ? (normalizeSongPeriod(qs("ac_period").value.trim()) || "") : "";
  const adminContentToggle = qs("ac_admin_content");
  return {
    id: id || undefined,
    title: qs("ac_title").value.trim(),
    subtitle: qs("ac_subtitle").value.trim(),
    lang: normalizeSongLanguage(qs("ac_lang").value.trim()) || qs("ac_lang").value.trim(),
    status: qs("ac_status_edit").value,
    country,
    period,
    region: qs("ac_region")?.value?.trim() || "",
    event: qs("ac_event")?.value?.trim() || "",
    theme: qs("ac_theme")?.value?.trim() || "",
    year: qs("ac_year").value.trim(),
    source: qs("ac_source").value.trim(),
    notes: qs("ac_notes").value,
    lyrics: composeLyricsWithChorus(qs("ac_lyrics").value, qs("ac_chorus")?.value || "", qs("ac_chorus_marker")?.value || ""),
    verified: qs("ac_verified") ? !!qs("ac_verified").checked : undefined,
    is_admin_content: adminContentToggle ? !!adminContentToggle.checked : undefined,
    links: collectLinks("ac_links"),
    versions: collectVersions("ac_versions"),
  };
}

function collectSongToolsPayload() {
  const country = normalizeSongCountry(qs("ss_country")?.value?.trim() || "") || "";
  const period = country === "ussr" ? (normalizeSongPeriod(qs("ss_period")?.value?.trim() || "") || "") : "";
  return {
    id: qs("ss_id")?.value || "",
    title: qs("ss_title")?.value?.trim() || "",
    subtitle: qs("ss_subtitle")?.value?.trim() || "",
    lang: normalizeSongLanguage(qs("ss_lang")?.value?.trim() || "") || (qs("ss_lang")?.value?.trim() || ""),
    status: qs("ss_status")?.value || "published",
    country,
    period,
    region: qs("ss_region")?.value?.trim() || "",
    event: qs("ss_event")?.value?.trim() || "",
    theme: qs("ss_theme")?.value?.trim() || "",
    year: qs("ss_year")?.value?.trim() || "",
    source: qs("ss_source")?.value?.trim() || "",
    notes: qs("ss_notes")?.value || "",
    lyrics: composeLyricsWithChorus(qs("ss_lyrics")?.value || "", qs("ss_chorus")?.value || "", qs("ss_chorus_marker")?.value || ""),
    verified: qs("ss_verified") ? !!qs("ss_verified").checked : undefined,
    is_admin_content: can("songs.view_admin_content") ? !!qs("ss_admin_content")?.checked : undefined,
    links: collectLinks("ss_links"),
    versions: collectVersions("ss_versions"),
  };
}

function applySongToolsPayload(payload = {}) {
  if (qs("ss_title")) qs("ss_title").value = payload.title || "";
  if (qs("ss_subtitle")) qs("ss_subtitle").value = payload.subtitle || "";
  if (qs("ss_status")) qs("ss_status").value = payload.status === "draft" ? "draft" : "published";
  setSelectValueWithLegacy("ss_lang", "language", payload.lang || "", uiText("selectLanguage"));
  setSelectValueWithLegacy("ss_country", "country", payload.country || "", uiText("selectCountry"));
  setSelectValueWithLegacy("ss_period", "period", payload.period || "", uiText("selectPeriod"));
  syncPeriodVisibility("ss_country", "ss_period_wrap", "ss_period");
  if (qs("ss_region")) qs("ss_region").value = payload.region || "";
  if (qs("ss_event")) qs("ss_event").value = payload.event || "";
  if (qs("ss_theme")) qs("ss_theme").value = payload.theme || "";
  if (qs("ss_year")) qs("ss_year").value = payload.year || "";
  if (qs("ss_source")) qs("ss_source").value = payload.source || "";
  if (qs("ss_notes")) qs("ss_notes").value = payload.notes || "";
  const lyricsParts = splitLyricsForEditor(payload.lyrics || "");
  if (qs("ss_lyrics")) qs("ss_lyrics").value = lyricsParts.lyrics || "";
  if (qs("ss_chorus")) qs("ss_chorus").value = lyricsParts.chorus || "";
  if (qs("ss_chorus_marker")) qs("ss_chorus_marker").value = lyricsParts.marker || chorusMarkerLabel();
  if (qs("ss_verified")) qs("ss_verified").checked = !!payload.verified;
  if (qs("ss_admin_content")) qs("ss_admin_content").checked = !!payload.is_admin_content;
  if (qs("ss_links")) qs("ss_links").innerHTML = (payload.links || []).map((l) => songInlineLinkRow(l)).join("");
  if (qs("ss_versions")) qs("ss_versions").innerHTML = (payload.versions || []).map((v) => songInlineVersionRow(v)).join("");
  syncDecodingIndicator("ss_decoding", "ss_lyrics", "ss_chorus", "ss_chorus_marker");
}

function collectRequestPayload() {
  const country = normalizeSongCountry(qs("rq_country")?.value?.trim() || "") || "";
  const period = country === "ussr" ? (normalizeSongPeriod(qs("rq_period")?.value?.trim() || "") || "") : "";
  return {
    title: qs("rq_title")?.value?.trim() || "",
    subtitle: qs("rq_subtitle")?.value?.trim() || "",
    lang: normalizeSongLanguage(qs("rq_lang")?.value?.trim() || "") || (qs("rq_lang")?.value?.trim() || ""),
    country,
    period,
    region: qs("rq_region")?.value?.trim() || "",
    event: qs("rq_event")?.value?.trim() || "",
    theme: qs("rq_theme")?.value?.trim() || "",
    year: qs("rq_year")?.value?.trim() || "",
    source: qs("rq_source")?.value?.trim() || "",
    notes: qs("rq_notes")?.value || "",
    lyrics: composeLyricsWithChorus(qs("rq_lyrics")?.value || "", qs("rq_chorus")?.value || "", qs("rq_chorus_marker")?.value || ""),
    report_fragment: qs("rq_report_fragment")?.value === "1",
    links: collectLinks("rq_links"),
    versions: collectVersions("rq_versions"),
  };
}

function applyRequestPayload(payload = {}) {
  if (qs("rq_title")) qs("rq_title").value = payload.title || "";
  if (qs("rq_subtitle")) qs("rq_subtitle").value = payload.subtitle || "";
  setSelectValueWithLegacy("rq_lang", "language", payload.lang || "", uiText("selectLanguage"));
  setSelectValueWithLegacy("rq_country", "country", payload.country || "", uiText("selectCountry"));
  setSelectValueWithLegacy("rq_period", "period", payload.period || "", uiText("selectPeriod"));
  syncPeriodVisibility("rq_country", "rq_period_wrap", "rq_period");
  if (qs("rq_region")) qs("rq_region").value = payload.region || "";
  if (qs("rq_event")) qs("rq_event").value = payload.event || "";
  if (qs("rq_theme")) qs("rq_theme").value = payload.theme || "";
  if (qs("rq_year")) qs("rq_year").value = payload.year || "";
  if (qs("rq_source")) qs("rq_source").value = payload.source || "";
  if (qs("rq_notes")) qs("rq_notes").value = payload.notes || "";
  const lyricsParts = splitLyricsForEditor(payload.lyrics || "");
  if (qs("rq_lyrics")) qs("rq_lyrics").value = lyricsParts.lyrics || "";
  if (qs("rq_chorus")) qs("rq_chorus").value = lyricsParts.chorus || "";
  if (qs("rq_chorus_marker")) qs("rq_chorus_marker").value = lyricsParts.marker || chorusMarkerLabel();
  if (qs("rq_report_fragment")) qs("rq_report_fragment").value = payload.report_fragment ? "1" : "0";
  if (qs("rq_links")) qs("rq_links").innerHTML = (payload.links || []).map((l) => songInlineLinkRow(l)).join("");
  if (qs("rq_versions")) qs("rq_versions").innerHTML = (payload.versions || []).map((v) => songInlineVersionRow(v)).join("");
  syncDecodingIndicator("rq_decoding", "rq_lyrics", "rq_chorus", "rq_chorus_marker");
}

function normalizeContentDraftComparable(payload = {}) {
  const lang = normalizeSongLanguage(payload.lang || "") || String(payload.lang || "").trim();
  const country = normalizeSongCountry(payload.country || "") || String(payload.country || "").trim();
  const period = country === "ussr"
    ? (normalizeSongPeriod(payload.period || "") || String(payload.period || "").trim())
    : "";
  const links = Array.isArray(payload.links)
    ? payload.links
      .map((item) => ({
        title: String(item?.title || "").trim(),
        kind: String(item?.kind || "").trim(),
        url: String(item?.url || "").trim(),
      }))
      .filter((item) => item.url)
    : [];
  const versions = Array.isArray(payload.versions)
    ? payload.versions
      .map((item) => ({
        title: String(item?.title || "").trim(),
        lang: String(item?.lang || "").trim(),
        source: String(item?.source || "").trim(),
        lyrics: String(item?.lyrics || ""),
      }))
      .filter((item) => item.lyrics.trim())
    : [];
  return {
    title: String(payload.title || "").trim(),
    subtitle: String(payload.subtitle || "").trim(),
    lang,
    country,
    period,
    region: String(payload.region || "").trim(),
    event: String(payload.event || "").trim(),
    theme: String(payload.theme || "").trim(),
    year: String(payload.year || "").trim(),
    source: String(payload.source || "").trim(),
    notes: String(payload.notes || ""),
    lyrics: String(payload.lyrics || ""),
    verified: !!payload.verified,
    is_admin_content: !!payload.is_admin_content,
    report_fragment: !!payload.report_fragment,
    links,
    versions,
  };
}

function contentDraftComparableSignature(payload = {}) {
  return JSON.stringify(normalizeContentDraftComparable(payload));
}

function contentDraftDiffBannerText(hasPublishedBase) {
  if (uiLocale() === "ru") {
    return hasPublishedBase
      ? "ЧЕРНОВК: текущая версия отличается от публичной. зенения автосохранены до публикации."
      : "ЧЕРНОВК: непубликованная версия автосохранена локально. Опубликуйте, когда будете готовы.";
  }
  if (uiLocale() === "uk") {
    return hasPublishedBase
      ? "ЧЕРНЕТКА: поточна версія відрізняється від публічної. Зіни автозбережено до публікації."
      : "ЧЕРНЕТКА: неопубліковану версію автозбережено локально. Опублікуйте, коли будете готові.";
  }
  if (uiLocale() === "et") {
    return hasPublishedBase
      ? "MUSTAND: praegune versioon erineb avalikust. Muudatused salvestatakse automaatselt kuni avaldamiseni."
      : "MUSTAND: avaldamata versioon salvestati kohalikult mustandina. Avalda siis, kui oled valmis.";
  }
  return hasPublishedBase
    ? "DRAFT: current version differs from the public one. Changes are autosaved until publication."
    : "DRAFT: unpublished version is autosaved locally. Publish when ready.";
}

function requestDraftBannerText() {
  if (uiLocale() === "ru") return "ЧЕРНОВК: заявка автосохранена локально. Отправьте, когда будете готовы.";
  if (uiLocale() === "uk") return "ЧЕРНЕТКА: заявку автозбережено локально. Надішліть, коли будете готові.";
  if (uiLocale() === "et") return "MUSTAND: taotlus salvestati kohalikult automaatselt. Saada siis, kui oled valmis.";
  return "DRAFT: request is autosaved locally. Submit when ready.";
}

const CONTENT_DRAFT_PREFIX = "admin_content_draft:";
const SONG_TOOLS_DRAFT_PREFIX = "song_tools_draft:";
const REQUEST_FORM_DRAFT_PREFIX = "request_form_draft:";
const CONTENT_DRAFT_MAX_AGE_MS = 21 * 24 * 60 * 60 * 1000;

function contentDraftIdentity() {
  const id = qs("ac_id")?.value?.trim() || "";
  return id || "__new";
}

function contentDraftUserIdentity() {
  const raw = state.user?.id || state.user?.email || "__anonymous";
  return String(raw || "__anonymous").trim().toLowerCase() || "__anonymous";
}

function contentDraftKey(identity = contentDraftIdentity()) {
  return `${CONTENT_DRAFT_PREFIX}${contentDraftUserIdentity()}:${identity}`;
}

function draftStorageKey(prefix, identity) {
  return `${prefix}${contentDraftUserIdentity()}:${identity}`;
}

function readScopedDraft(prefix, identity) {
  cleanupContentDrafts();
  try {
    const raw = localStorage.getItem(draftStorageKey(prefix, identity));
    if (!raw) return null;
    const parsed = JSON.parse(raw);
    if (!parsed || typeof parsed !== "object") return null;
    if (!parsed.payload || typeof parsed.payload !== "object") return null;
    return parsed;
  } catch {
    return null;
  }
}

function saveScopedDraft(prefix, identity, payload) {
  try {
    const record = {
      savedAt: Date.now(),
      payload: { ...payload },
    };
    localStorage.setItem(draftStorageKey(prefix, identity), JSON.stringify(record));
  } catch {}
}

function clearScopedDraft(prefix, identity) {
  try {
    localStorage.removeItem(draftStorageKey(prefix, identity));
  } catch {}
}

function listScopedDraftIdentities(prefix) {
  cleanupContentDrafts();
  const out = new Set();
  const keyPrefix = `${prefix}${contentDraftUserIdentity()}:`;
  try {
    Object.keys(localStorage).forEach((key) => {
      if (!key.startsWith(keyPrefix)) return;
      const identity = String(key.slice(keyPrefix.length) || "").trim();
      if (!identity) return;
      const raw = localStorage.getItem(key);
      if (!raw) return;
      let parsed = null;
      try {
        parsed = JSON.parse(raw);
      } catch {
        localStorage.removeItem(key);
        return;
      }
      if (!parsed || typeof parsed !== "object" || !parsed.payload || typeof parsed.payload !== "object") {
        localStorage.removeItem(key);
        return;
      }
      out.add(identity);
    });
  } catch {}
  return out;
}

function listCurrentUserDraftIdentities() {
  const fromAdminEditor = listScopedDraftIdentities(CONTENT_DRAFT_PREFIX);
  const fromSongTools = listScopedDraftIdentities(SONG_TOOLS_DRAFT_PREFIX);
  const out = new Set();
  fromAdminEditor.forEach((id) => out.add(id));
  fromSongTools.forEach((id) => out.add(id));
  return out;
}

function cleanupContentDrafts() {
  const now = Date.now();
  try {
    Object.keys(localStorage).forEach((key) => {
      if (!key.startsWith(CONTENT_DRAFT_PREFIX) && !key.startsWith(SONG_TOOLS_DRAFT_PREFIX) && !key.startsWith(REQUEST_FORM_DRAFT_PREFIX)) return;
      const raw = localStorage.getItem(key);
      if (!raw) return;
      let parsed = null;
      try {
        parsed = JSON.parse(raw);
      } catch {
        localStorage.removeItem(key);
        return;
      }
      const savedAt = Number(parsed?.savedAt || 0);
      if (!savedAt || now - savedAt > CONTENT_DRAFT_MAX_AGE_MS) {
        localStorage.removeItem(key);
      }
    });
  } catch {}
}

function readContentDraft(identity = contentDraftIdentity()) {
  return readScopedDraft(CONTENT_DRAFT_PREFIX, identity);
}

function saveContentDraft(payload) {
  const identity = payload?.id ? String(payload.id).trim() : "__new";
  saveScopedDraft(CONTENT_DRAFT_PREFIX, identity, { ...payload, id: payload?.id || undefined });
}

function clearContentDraft(identity = contentDraftIdentity()) {
  clearScopedDraft(CONTENT_DRAFT_PREFIX, identity);
}

function teardownContentDraftExitPersistence() {
  if (typeof contentDraftExitCleanup === "function") {
    contentDraftExitCleanup();
  }
  contentDraftExitCleanup = null;
}

function setupContentDraftExitPersistence(collectPayload, options = {}) {
  teardownContentDraftExitPersistence();
  if (typeof collectPayload !== "function") return;
  const savePayload = typeof options.savePayload === "function" ? options.savePayload : saveContentDraft;
  const clearPayload = typeof options.clearPayload === "function" ? options.clearPayload : null;

  const flush = () => {
    try {
      const payload = collectPayload();
      if (!payload || typeof payload !== "object") {
        if (clearPayload) clearPayload();
        return;
      }
      savePayload(payload);
    } catch {}
  };

  const onHashChange = () => flush();
  const onBeforeUnload = () => flush();
  const onPageHide = () => flush();
  const onVisibilityChange = () => {
    if (document.visibilityState === "hidden") flush();
  };

  // Use capture so draft is flushed before router replaces editor DOM.
  window.addEventListener("hashchange", onHashChange, true);
  window.addEventListener("beforeunload", onBeforeUnload);
  window.addEventListener("pagehide", onPageHide);
  document.addEventListener("visibilitychange", onVisibilityChange);

  contentDraftExitCleanup = () => {
    window.removeEventListener("hashchange", onHashChange, true);
    window.removeEventListener("beforeunload", onBeforeUnload);
    window.removeEventListener("pagehide", onPageHide);
    document.removeEventListener("visibilitychange", onVisibilityChange);
  };
}

export async function render(route) {
  const params = parseHashParams(route.hash);

  if (route.name === "home") {
    const [data, countryBackgroundsResponse, countryCountsResponse] = await Promise.all([
      api.songs({
        q: params.q || "",
        lang: params.lang || "",
        country: params.country || "",
        period: params.period || "",
        region: params.region || "",
        event: params.event || "",
        theme: params.theme || "",
        verified: params.verified || "",
        recent: params.recent || "",
        performer: params.performer || "",
        year: params.year || "",
        page: Number(params.page || 1),
      }),
      api.countryBackground("").catch(() => ({ items: [] })),
      api.countryCounts().catch(() => ({ items: [] })),
    ]);
    const countryBackgrounds = Array.isArray(countryBackgroundsResponse?.items) ? countryBackgroundsResponse.items : [];
    const countryCounts = Array.isArray(countryCountsResponse?.items) ? countryCountsResponse.items : [];
    return { html: homeUI(data, params, { countryBackgrounds, countryCounts }), ctx: { data, params, countryBackgrounds, countryCounts } };
  }

  if (route.name === "song") {
    const songPromise = api.song(route.id);
    const favoritesPromise = state.user
      ? api.favorites().catch(() => ({ items: [] }))
      : Promise.resolve({ items: [] });
    const [song, fav] = await Promise.all([songPromise, favoritesPromise]);
    const countryKey = normalizeSongCountry(song?.country || "") || "";
    let background = null;
    if (countryKey) {
      const bgResponse = await api.countryBackground(countryKey).catch(() => ({ item: null }));
      background = normalizeCountryBackground(bgResponse?.item || null, countryKey);
    }
    const isFav = Array.isArray(fav?.items) && fav.items.some((x) => x.id === song.id);
    return { html: songDetailsUI(song, { isFav, background }), ctx: { song, isFav, background } };
  }

  if (route.name === "draft") {
    const draftId = String(route.id || "").trim();
    if (!draftId) {
      return { html: `<div class="card"><div class="muted">${esc(t("common.notFound"))}</div></div>`, ctx: {} };
    }
    try {
      const data = await api.draft(draftId);
      return { html: draftEditorUI(data, { draftId }), ctx: { draftId, data } };
    } catch (cause) {
      return { html: `<div class="card"><div class="muted">${esc(String(cause?.message || t("common.error")))}</div></div>`, ctx: { draftId } };
    }
  }

  if (route.name === "favorites") {
    const data = state.user ? await api.favorites() : { items: [] };
    return { html: favoritesUI(data), ctx: { data } };
  }

  if (route.name === "request") {
    const isFragmentReport = String(route?.query?.fragment || "").trim().length > 0;
    return { html: requestUI({ isFragmentReport }), ctx: { isFragmentReport } };
  }

  if (route.name === "admin") {
    if (!isAdminLike()) return { html: adminAccessDeniedUI(), ctx: {} };
    const section = route.section || "content";

    if (section === "content") {
      const data = await api.adminSongs({
        q: params.q || "",
        status: params.status || "",
        recent: params.recent || "1",
        page: Number(params.page || 1),
      });
      return { html: adminContentUI(data, { ...params, recent: params.recent || "1" }), ctx: { section, data, params: { ...params, recent: params.recent || "1" } } };
    }

    if (section === "requests") {
      if (!isSuperAdmin()) {
        const deniedText = uiLocale() === "ru"
          ? "Недостаточно прав для просмотра заявок."
          : uiLocale() === "uk"
            ? "Недостатньо прав для перегляду заявок."
            : uiLocale() === "et"
              ? "Taotluste vaatamiseks pole piisavalt oigusi."
              : "Not enough permissions to review requests.";
        return { html: `${adminTabs("requests")}<div class="card"><div class="muted">${esc(deniedText)}</div></div>`, ctx: { section } };
      }
      const requestStatus = (params.status || "new").trim() || "new";
      const data = await api.adminRequests({
        status: requestStatus,
        q: params.q || "",
        page: Number(params.page || 1),
      });
      return { html: adminRequestsUI(data, { ...params, status: requestStatus }), ctx: { section, data, params: { ...params, status: requestStatus } } };
    }

    if (section === "backgrounds") {
      if (!can("songs.edit")) {
        const deniedText = uiLocale() === "ru"
          ? "Недостаточно прав для управления фонаи стран."
          : uiLocale() === "uk"
            ? "Недостатньо прав для керування фонаи країн."
            : uiLocale() === "et"
              ? "Riikide taustade haldamiseks pole piisavalt oigusi."
              : "Not enough permissions to manage country backgrounds.";
        return { html: `${adminTabs("backgrounds")}<div class="card"><div class="muted">${esc(deniedText)}</div></div>`, ctx: { section } };
      }
      const data = await api.adminCountryBackgrounds();
      return { html: adminCountryBackgroundsUI(data), ctx: { section, data } };
    }

    if (section === "users") {
      if (!isSuperAdmin()) return { html: `${adminTabs("users")}<div class="card"><div class="muted">${esc(t("admin.onlySuperAdmin"))}</div></div>`, ctx: { section } };
      const data = await api.adminUsers();
      return { html: adminUsersUI(data), ctx: { section, data } };
    }

    if (section === "editor") {
      const editorId = (params.id || route.path?.[2] || "").trim();
      const isNew = !editorId;
      const song = isNew
        ? { status: "published", links: [], versions: [] }
        : await api.adminSong(editorId);
      return {
        html: adminEditorUI(song, {
          isNew,
          backHash: makeHash(
            "#/admin/content",
            { q: params.q || "", status: params.status || "", recent: params.recent || "1", page: Number(params.page || 1) || 1 },
            ["q", "status", "recent", "page"],
          ),
        }),
        ctx: { section, params, song, isNew },
      };
    }

    return { html: adminAccessDeniedUI(), ctx: {} };
  }

  return { html: `<div class="card"><div class="h1">${esc(t("common.notFound"))}</div></div>`, ctx: {} };
}

export function bind(route, ctx) {
  teardownContentDraftExitPersistence();
  document.body.classList.remove("song-tools-open");
  document.body.classList.remove("song-page-country-bg");
  document.body.classList.remove("song-page-country-bg-static");
  document.body.classList.remove("home-country-preview");
  document.body.classList.remove("home-country-preview-visible");
  document.body.classList.remove("home-country-preview-layer-a");
  document.body.classList.remove("home-country-preview-layer-b");
  document.body.style.removeProperty("--song-page-bg-image");
  document.body.style.removeProperty("--song-page-bg-image-desktop");
  document.body.style.removeProperty("--song-page-bg-image-mobile");
  document.body.style.removeProperty("--song-page-bg-focus-x-desktop");
  document.body.style.removeProperty("--song-page-bg-focus-y-desktop");
  document.body.style.removeProperty("--song-page-bg-focus-x-mobile");
  document.body.style.removeProperty("--song-page-bg-focus-y-mobile");
  document.body.style.removeProperty("--home-country-preview-image");
  document.body.style.removeProperty("--home-country-preview-image-a");
  document.body.style.removeProperty("--home-country-preview-image-b");
  if (document.body.dataset.homePreviewSwapTimer) {
    const timerId = Number(document.body.dataset.homePreviewSwapTimer || 0);
    if (timerId) window.clearTimeout(timerId);
    delete document.body.dataset.homePreviewSwapTimer;
  }
  if (document.body.dataset.homePreviewHideTimer) {
    const timerId = Number(document.body.dataset.homePreviewHideTimer || 0);
    if (timerId) window.clearTimeout(timerId);
    delete document.body.dataset.homePreviewHideTimer;
  }
  if (document.body.dataset.homePreviewTimer) {
    const timerId = Number(document.body.dataset.homePreviewTimer || 0);
    if (timerId) window.clearTimeout(timerId);
    delete document.body.dataset.homePreviewTimer;
  }
  wirePromptButtons();
  wireAutoGrowTextareas(document);

  if (route.name === "home") {
    const params = ctx.params || {};
    const lockedCountry = normalizeSongCountry(params.country || "") || "";
    const goWith = (extra = {}) => {
      const all = { ...collectHomeFilters(), ...extra };
      if (lockedCountry) {
        all.country = lockedCountry;
        if (lockedCountry !== "ussr") all.period = "";
      }
      location.hash = makeHash("#/", all, ["q", "lang", "country", "period", "region", "event", "theme", "verified", "recent", "performer", "year", "adv", "searched", "page"]);
    };

    ["yt_q", "yt_performer", "yt_year", "yt_country", "yt_lang", "yt_period", "yt_region", "yt_event", "yt_theme"].forEach((id) => qs(id)?.addEventListener("keydown", (e) => {
      if (e.key === "Enter") {
        e.preventDefault();
        goWith({ page: 1, searched: "1", adv: "1" });
      }
    }));
    syncPeriodVisibility("yt_country", "yt_period_wrap", "yt_period");
    const syncAdvancedPanelOpenHeight = () => {
      const panel = qs("yt_advancedPanel");
      if (!panel || panel.classList.contains("hidden")) return;
      const nextHeight = Math.max(1, Math.ceil(panel.scrollHeight));
      panel.style.setProperty("--yt-advanced-open-height", `${nextHeight}px`);
    };
    requestAnimationFrame(() => {
      syncAdvancedPanelOpenHeight();
      setTimeout(syncAdvancedPanelOpenHeight, 140);
    });
    qs("yt_country")?.addEventListener("change", () => {
      syncPeriodVisibility("yt_country", "yt_period_wrap", "yt_period");
      requestAnimationFrame(syncAdvancedPanelOpenHeight);
    });
    qs("yt_toggleAdvanced")?.addEventListener("click", () => {
      const panel = qs("yt_advancedPanel");
      if (!panel) return;
      const toggleButton = qs("yt_toggleAdvanced");
      const isOpen = toggleAnimatedElement(panel, {
        duration: 980,
        transitionProperty: "max-height",
      });
      if (isOpen) {
        requestAnimationFrame(() => {
          syncAdvancedPanelOpenHeight();
          setTimeout(syncAdvancedPanelOpenHeight, 140);
        });
      }
      const openLabel = toggleButton?.getAttribute("data-label-open") || "";
      const closedLabel = toggleButton?.getAttribute("data-label-closed") || "";
      if (toggleButton) {
        toggleButton.textContent = isOpen ? openLabel : closedLabel;
        toggleButton.classList.toggle("is-open", !!isOpen);
        toggleButton.setAttribute("aria-expanded", isOpen ? "true" : "false");
      }
    });
    qs("yt_applyAdvanced")?.addEventListener("click", () => {
      goWith({ page: 1, searched: "1", adv: "1" });
    });
    qs("yt_resetAdvanced")?.addEventListener("click", () => {
      ["yt_q", "yt_performer", "yt_year", "yt_region", "yt_event", "yt_theme"].forEach((id) => {
        if (qs(id)) qs(id).value = "";
      });
      if (qs("yt_verified")) qs("yt_verified").checked = false;
      setSelectValueWithLegacy("yt_lang", "language", "", uiText("selectLanguage"));
      if (!lockedCountry) setSelectValueWithLegacy("yt_country", "country", "", uiText("selectCountry"));
      setSelectValueWithLegacy("yt_period", "period", "", uiText("selectPeriod"));
      syncPeriodVisibility("yt_country", "yt_period_wrap", "yt_period");
      goWith({
        q: "",
        lang: "",
        country: lockedCountry || "",
        period: "",
        region: "",
        event: "",
        theme: "",
        verified: "",
        performer: "",
        year: "",
        searched: "1",
        adv: "0",
        page: 1,
      });
    });

    document.querySelectorAll('[data-pager="yt"] [data-page]').forEach((btn) => btn.addEventListener("click", () => {
      const target = Number(btn.getAttribute("data-page") || 1);
      if (!Number.isFinite(target) || target < 1) return;
      goWith({ page: target });
    }));

    const progressiveFeed = qs("yt_results_feed");
    const progressiveLoadingScreen = qs("yt_results_loading_screen");
    if (params.searched === "1" && progressiveFeed) {
      const sourceMode = String(progressiveFeed.getAttribute("data-feed-mode") || "exact").trim();
      const sourceItems = sourceMode === "suggestions"
        ? (Array.isArray(ctx?.data?.suggestions) ? ctx.data.suggestions : [])
        : (Array.isArray(ctx?.data?.items) ? ctx.data.items : []);
      const sourceBackgrounds = Array.isArray(ctx?.countryBackgrounds) ? ctx.countryBackgrounds : [];
      const backgroundsByCountry = new Map();
      sourceBackgrounds.forEach((item) => {
        const normalized = normalizeCountryBackground(item, item?.country || "");
        const key = normalizeSongCountry(normalized?.country || "");
        if (!key || backgroundsByCountry.has(key)) return;
        backgroundsByCountry.set(key, normalized);
      });
      const flagDevice = preferredFlagCardDevice();
      const maxCards = Math.min(5, sourceItems.length);
      const queue = sourceItems.slice(0, maxCards);
      progressiveFeed.innerHTML = "";
      if (!queue.length) {
        progressiveFeed.classList.remove("is-chunk-loading");
        progressiveLoadingScreen?.classList.add("hidden");
      } else {
        progressiveFeed.classList.add("is-chunk-loading");
        progressiveLoadingScreen?.classList.remove("hidden");
        const preloadImage = (src) => {
          const safeSrc = String(src || "").trim();
          if (!safeSrc) return Promise.resolve();
          return new Promise((resolve) => {
            const img = new Image();
            let settled = false;
            const done = () => {
              if (settled) return;
              settled = true;
              resolve();
            };
            const timeoutId = setTimeout(done, 1200);
            img.onload = () => {
              clearTimeout(timeoutId);
              done();
            };
            img.onerror = () => {
              clearTimeout(timeoutId);
              done();
            };
            img.src = safeSrc;
          });
        };
        const preloadTasks = queue.map((song) => {
          const countryKey = normalizeSongCountry(song?.country || "");
          const background = countryKey ? (backgroundsByCountry.get(countryKey) || {}) : {};
          const flagConfig = parseFlagPreviewConfig(String(background?.preview_flag_image_value || background?.preview_flag_image_url || "").trim());
          const flagUrl = resolveFlagPreviewImage(flagConfig, {
            country: song?.country || "",
            period: song?.period || "",
            year: song?.year || "",
            kind: "long",
            device: flagDevice,
          });
          return preloadImage(flagUrl);
        });
        Promise.all(preloadTasks).finally(() => {
          if (!document.body.contains(progressiveFeed)) return;
          const cardsHtml = queue
            .map((song) => `<div class="home-result-item">${renderHomeSongCard(song, { backgroundsByCountry, flagDevice })}</div>`)
            .join("");
          progressiveFeed.innerHTML = cardsHtml;
          progressiveLoadingScreen?.classList.add("hidden");
          progressiveFeed.classList.remove("is-chunk-loading");
        });
      }
    }

    let currentHomePreviewUrl = "";
    let pendingHomePreviewUrl = "";
    let activeHomePreviewLayer = "a";
    let homePreviewSwapTimerId = 0;
    let homePreviewHideTimerId = 0;
    const homePreviewImageCache = new Map();
    const setBodyTimerRef = (name, id) => {
      if (id) document.body.dataset[name] = String(id);
      else delete document.body.dataset[name];
    };
    const clearTimer = (id, timerName = "") => {
      if (id) window.clearTimeout(id);
      if (timerName) setBodyTimerRef(timerName, 0);
      return 0;
    };
    const preloadHomePreviewImage = (url) => {
      const src = String(url || "").trim();
      if (!src) return Promise.resolve();
      if (homePreviewImageCache.has(src)) return homePreviewImageCache.get(src);
      const loading = new Promise((resolve) => {
        const img = new Image();
        img.decoding = "async";
        img.onload = () => resolve();
        img.onerror = () => resolve();
        img.src = src;
      });
      homePreviewImageCache.set(src, loading);
      return loading;
    };
    const applyHomeCountryPreview = (url, options = {}) => {
      const next = String(url || "").trim();
      if (!next) return;
      const swapLayer = options.swapLayer === true;
      const keepVisible = options.keepVisible === true;
      const targetLayer = swapLayer ? (activeHomePreviewLayer === "a" ? "b" : "a") : activeHomePreviewLayer;
      const targetLayerClass = `home-country-preview-layer-${targetLayer}`;
      const previousLayerClass = `home-country-preview-layer-${activeHomePreviewLayer}`;
      currentHomePreviewUrl = next;
      document.body.style.setProperty(`--home-country-preview-image-${targetLayer}`, toCssUrlValue(next));
      if (!document.body.classList.contains("home-country-preview")) {
        document.body.classList.add("home-country-preview");
      }
      document.body.classList.add(targetLayerClass);
      if (swapLayer) {
        document.body.classList.remove(previousLayerClass);
        activeHomePreviewLayer = targetLayer;
      }
      if (keepVisible && document.body.classList.contains("home-country-preview-visible")) return;
      window.requestAnimationFrame(() => {
        if (pendingHomePreviewUrl !== next) return;
        document.body.classList.add("home-country-preview-visible");
      });
    };
    const HOME_PREVIEW_HIDE_DELAY_MS = 0;
    const HOME_PREVIEW_LAYER_RESET_DELAY_MS = 520;
    const scheduleHomeCountryPreviewHide = () => {
      homePreviewHideTimerId = clearTimer(homePreviewHideTimerId, "homePreviewHideTimer");
      homePreviewSwapTimerId = clearTimer(homePreviewSwapTimerId, "homePreviewSwapTimer");
      homePreviewHideTimerId = window.setTimeout(() => {
        homePreviewHideTimerId = 0;
        setBodyTimerRef("homePreviewHideTimer", 0);
        if (pendingHomePreviewUrl) return;
        document.body.classList.remove("home-country-preview-visible");
        homePreviewSwapTimerId = window.setTimeout(() => {
          homePreviewSwapTimerId = 0;
          setBodyTimerRef("homePreviewSwapTimer", 0);
          if (pendingHomePreviewUrl) return;
          currentHomePreviewUrl = "";
          document.body.classList.remove("home-country-preview");
          document.body.classList.remove("home-country-preview-layer-a");
          document.body.classList.remove("home-country-preview-layer-b");
          document.body.style.removeProperty("--home-country-preview-image");
          document.body.style.removeProperty("--home-country-preview-image-a");
          document.body.style.removeProperty("--home-country-preview-image-b");
          activeHomePreviewLayer = "a";
        }, HOME_PREVIEW_LAYER_RESET_DELAY_MS);
        setBodyTimerRef("homePreviewSwapTimer", homePreviewSwapTimerId);
      }, HOME_PREVIEW_HIDE_DELAY_MS);
      setBodyTimerRef("homePreviewHideTimer", homePreviewHideTimerId);
    };
    const setHomeCountryPreview = (url) => {
      const next = String(url || "").trim();
      pendingHomePreviewUrl = next;
      homePreviewHideTimerId = clearTimer(homePreviewHideTimerId, "homePreviewHideTimer");
      homePreviewSwapTimerId = clearTimer(homePreviewSwapTimerId, "homePreviewSwapTimer");
      if (!next) {
        scheduleHomeCountryPreviewHide();
        return;
      }
      const isVisible = document.body.classList.contains("home-country-preview-visible");
      if (next === currentHomePreviewUrl && isVisible) return;
      const shouldSwapLayer = !!(currentHomePreviewUrl && next !== currentHomePreviewUrl);
      applyHomeCountryPreview(next, { keepVisible: isVisible, swapLayer: shouldSwapLayer });
      void preloadHomePreviewImage(next);
    };
    const clearHomeCountryPreview = () => setHomeCountryPreview("");
    const hoverPreviewAllowed = !window.matchMedia("(hover: none), (pointer: coarse)").matches;
    if (hoverPreviewAllowed) {
      const homeCountryCards = Array.from(document.querySelectorAll(".home-country-card"));
      const previewUrls = new Set();
      homeCountryCards.forEach((card) => {
        const previewUrl = String(card.getAttribute("data-home-bg") || "").trim();
        if (!previewUrl) return;
        previewUrls.add(previewUrl);
        card.addEventListener("mouseenter", () => setHomeCountryPreview(previewUrl));
        card.addEventListener("mouseleave", (event) => {
          const nextTarget = event?.relatedTarget;
          if (nextTarget && typeof nextTarget.closest === "function" && nextTarget.closest(".home-country-card")) return;
          clearHomeCountryPreview();
        });
        card.addEventListener("click", clearHomeCountryPreview);
      });
      if (previewUrls.size > 0) {
        window.setTimeout(() => {
          previewUrls.forEach((url) => {
            void preloadHomePreviewImage(url);
          });
        }, 0);
      }
      const homeCountryGrid = document.querySelector(".home-country-grid");
      if (homeCountryGrid) {
        homeCountryGrid.addEventListener("mouseleave", clearHomeCountryPreview);
      }
    }

    return;
  }

  if (route.name === "song") {
    const song = ctx.song;
    const background = normalizeCountryBackground(ctx?.background || null, song?.country || "", { period: song?.period || "" });
    const backgroundCountry = normalizeSongCountry(background?.country || song?.country || "") || "";
    const desktopImageUrl = String(background?.desktop_image_url || "").trim();
    const mobileImageUrl = String(background?.mobile_image_url || "").trim();
    const hasCountryBackground = !!(desktopImageUrl || mobileImageUrl);
    const isStaticBackgroundCountry = hasCountryBackground && SONG_PAGE_BG_STATIC_COUNTRIES.has(backgroundCountry);
    document.body.classList.toggle("song-page-country-bg", hasCountryBackground);
    document.body.classList.toggle("song-page-country-bg-static", isStaticBackgroundCountry);
    if (hasCountryBackground) {
      const desktopFocusX = clampPercent(background?.desktop_focus_x);
      const desktopFocusY = clampPercent(background?.desktop_focus_y);
      const mobileFocusX = clampPercent(background?.mobile_focus_x);
      const mobileFocusY = clampPercent(background?.mobile_focus_y);
      if (desktopImageUrl) document.body.style.setProperty("--song-page-bg-image-desktop", toCssUrlValue(desktopImageUrl));
      else document.body.style.removeProperty("--song-page-bg-image-desktop");
      if (mobileImageUrl) document.body.style.setProperty("--song-page-bg-image-mobile", toCssUrlValue(mobileImageUrl));
      else document.body.style.removeProperty("--song-page-bg-image-mobile");
      document.body.style.setProperty("--song-page-bg-focus-x-desktop", `${desktopFocusX}%`);
      document.body.style.setProperty("--song-page-bg-focus-y-desktop", `${desktopFocusY}%`);
      document.body.style.setProperty("--song-page-bg-focus-x-mobile", `${mobileFocusX}%`);
      document.body.style.setProperty("--song-page-bg-focus-y-mobile", `${mobileFocusY}%`);
    }
    const lyricsMain = qs("songLyricsMain");
    let promptSong = {
      ...song,
      lyrics: String(song?.lyrics || ""),
    };
    const setLyricsView = (lyricsValue, lyricsMeta = null) => {
      const rendered = renderStructuredLyrics(lyricsValue || "", {
        line_confidences: extractLyricsLineConfidences(lyricsMeta || null),
      });
      if (lyricsMain) lyricsMain.innerHTML = rendered.html;
      promptSong.lyrics = rendered.expanded || String(lyricsValue || "");
      const decodingNode = qs("songDecodingProgress");
      if (decodingNode) {
        const percent = decodeLyricsProgressPercent(promptSong.lyrics);
        decodingNode.textContent = decodingProgressText(percent);
        decodingNode.classList.toggle("hidden", percent >= 100);
      }
    };
    setLyricsView(song.lyrics || "", song?.lyrics_meta_json || null);

    const favBtn = qs("btnFavToggle");
    const syncFavButton = () => {
      if (!favBtn) return;
      const nextLabel = ctx.isFav ? t("song.delFav") : t("song.addFav");
      const icon = favBtn.querySelector(".song-header-tool-icon");
      const text = favBtn.querySelector(".song-header-tool-text");
      if (icon) icon.textContent = ctx.isFav ? "★" : "☆";
      if (text) text.textContent = nextLabel;
      favBtn.classList.toggle("is-active", !!ctx.isFav);
      favBtn.setAttribute("aria-pressed", ctx.isFav ? "true" : "false");
      favBtn.setAttribute("title", nextLabel);
      favBtn.setAttribute("aria-label", nextLabel);
    };
    syncFavButton();
    favBtn?.addEventListener("click", async () => {
      try {
        if (ctx.isFav) {
          await api.favDel(song.id);
          ctx.isFav = false;
        } else {
          await api.favAdd(song.id);
          ctx.isFav = true;
        }
        syncFavButton();
      } catch {}
    });

    const copyBtn = qs("btnCopyLyrics");
    const copyLabel = t("prompt.copy");
    const copyWithFallback = async (text) => {
      if (navigator.clipboard?.writeText) {
        await navigator.clipboard.writeText(text);
        return;
      }
      const tmp = document.createElement("textarea");
      tmp.value = text;
      tmp.setAttribute("readonly", "readonly");
      tmp.style.position = "fixed";
      tmp.style.opacity = "0";
      document.body.appendChild(tmp);
      tmp.select();
      document.execCommand("copy");
      document.body.removeChild(tmp);
    };
    copyBtn?.addEventListener("click", async () => {
      const text = promptSong.lyrics || "";
      if (!text.trim()) return;
      copyBtn.classList.remove("is-copied", "is-failed");
      try {
        await copyWithFallback(text);
        copyBtn.classList.add("is-copied");
        copyBtn.setAttribute("title", t("prompt.copied"));
      } catch {
        copyBtn.classList.add("is-failed");
        copyBtn.setAttribute("title", t("prompt.copyFailed"));
      }
      setTimeout(() => {
        copyBtn.classList.remove("is-copied", "is-failed");
        copyBtn.setAttribute("title", copyLabel);
      }, 1400);
    });

    qs("btnSongDraftNav")?.addEventListener("click", async () => {
      const button = qs("btnSongDraftNav");
      if (button) button.disabled = true;
      try {
        const songId = String(song?.id || "").trim();
        if (!songId) throw new Error(t("common.error"));
        const payload = await api.drafts();
        const items = Array.isArray(payload?.items) ? payload.items : [];
        const existing = items
          .filter((item) => String(item?.song_id || "").trim() === songId && String(item?.status || "draft").trim() === "draft")
          .sort((a, b) => String(b?.updated_at || "").localeCompare(String(a?.updated_at || "")))[0];
        let draftId = String(existing?.id || "").trim();
        if (!draftId) {
          if (!canOpenEditor) throw new Error(t("admin.accessDenied"));
          const created = await api.createDraft({ song_id: songId });
          draftId = String(created?.draft_id || "").trim();
        }
        if (!draftId) throw new Error(draftUiText("draftNotCreated"));
        location.hash = `#/draft/${encodeURIComponent(draftId)}`;
      } catch (cause) {
        showStatusOverlay(String(cause?.message || t("common.error")), "error");
      } finally {
        if (button) button.disabled = false;
      }
    });

    qs("btnSongListen")?.addEventListener("click", () => {
      const section = qs("songListenSection");
      if (!section) return;
      section.classList.add("is-targeted");
      section.scrollIntoView({ behavior: "smooth", block: "start" });
      setTimeout(() => section.classList.remove("is-targeted"), 1400);
    });

    qs("btnPromptContext")?.addEventListener("click", () => openPrompt(buildPrompt("context", promptSong)));
    qs("btnPromptTranslate")?.addEventListener("click", () => openPrompt(buildPrompt("translate", promptSong)));
    qs("btnPromptExplain")?.addEventListener("click", () => openPrompt(buildPrompt("explain", promptSong)));

    const songVersionTabs = qs("songVersionTabs");
    const versionMeta = qs("songVersionMeta");
    if (songVersionTabs && lyricsMain) {
      const versionById = new Map();
      versionById.set("__original", {
        id: "__original",
        title: t("song.version"),
        lang: song.lang || "",
        source: song.source || "",
        lyrics: song.lyrics || "",
        lyrics_meta_json: song.lyrics_meta_json || null,
      });
      (Array.isArray(song.versions) ? song.versions : []).forEach((v, i) => {
        versionById.set(v.id || `v_${i}`, {
          id: v.id || `v_${i}`,
          title: v.title || t("song.version"),
          lang: v.lang || "",
          source: v.source || "",
          lyrics: v.lyrics || "",
          lyrics_meta_json: v.lyrics_meta_json || null,
        });
      });
      const knownVersionIds = new Set(versionById.keys());
      let activeVersionId = "__original";
      const renderVersion = (id) => {
        const chosen = versionById.get(id) || versionById.get("__original");
        activeVersionId = chosen?.id || "__original";
        setLyricsView(chosen?.lyrics || "", chosen?.lyrics_meta_json || null);
        promptSong.lang = chosen?.lang || song.lang || "";
        promptSong.source = chosen?.source || song.source || "";
        if (versionMeta) {
          versionMeta.textContent = "";
          versionMeta.classList.add("hidden");
        }
        songVersionTabs.querySelectorAll(".song-version-btn").forEach((btn) => {
          btn.classList.toggle("is-active", btn.getAttribute("data-version-id") === chosen?.id);
        });
      };
      renderVersion("__original");
      const versionListenPanel = qs("songVersionListenPanel");
      const versionListenTitle1 = qs("songVersionListenTitle1");
      const versionListenTitle2 = qs("songVersionListenTitle2");
      const versionListenLinks1 = qs("songVersionListenLinks1");
      const versionListenLinks2 = qs("songVersionListenLinks2");
      const versionListenAdminActions = qs("songVersionListenAdminActions");
      const localizedVersionWord = uiLocale() === "ru"
        ? "Версия"
        : uiLocale() === "uk"
          ? "Версія"
          : uiLocale() === "et"
            ? "Versioon"
            : "Version";
      const formatVersionHeading = (version, fallbackIndex = -1) => {
        const raw = String(version?.title || "").trim();
        if (!raw) return fallbackIndex >= 0 ? `${localizedVersionWord} ${fallbackIndex + 1}` : localizedVersionWord;
        const genericMatch = raw.match(/^version(?:\s+\d+)?$/i);
        if (raw.toLowerCase() === localizedVersionWord.toLowerCase() || genericMatch) {
          return fallbackIndex >= 0 ? `${localizedVersionWord} ${fallbackIndex + 1}` : localizedVersionWord;
        }
        return raw;
      };
      const compareCandidates = [...versionById.values()].filter((version) => version?.id && version.id !== "__original");
      const renderVersionListenLinks = (items = []) => {
        if (!items.length) return `<span class="song-version-listen-empty">-</span>`;
        return items
          .map((item) => `<a class="song-version-listen-link" href="${esc(item.url)}" rel="noreferrer noopener">${esc(item.label)}</a>`)
          .join(" ");
      };
      const syncVersionListenPanel = () => {
        if (!versionListenPanel || !versionListenTitle1 || !versionListenTitle2 || !versionListenLinks1 || !versionListenLinks2) return;
        const leftVersion = versionById.get("__original");
        const rightVersion = activeVersionId !== "__original"
          ? (versionById.get(activeVersionId) || compareCandidates[0] || null)
          : (compareCandidates[0] || null);
        if (!leftVersion || !rightVersion) {
          versionListenPanel.classList.add("hidden");
          if (versionListenAdminActions) versionListenAdminActions.classList.remove("hidden");
          return;
        }
        const songLinks = Array.isArray(song?.links) ? song.links : [];
        const leftItems = collectListenServiceItemsForVersion(song, songLinks, leftVersion);
        const rightItems = collectListenServiceItemsForVersion(song, songLinks, rightVersion);
        const hasAnyLinks = leftItems.length > 0 || rightItems.length > 0;
        versionListenPanel.classList.toggle("hidden", !hasAnyLinks);
        if (versionListenAdminActions) versionListenAdminActions.classList.toggle("hidden", hasAnyLinks);
        if (!hasAnyLinks) return;
        versionListenTitle1.textContent = formatVersionHeading(leftVersion, 0);
        const rightIndex = compareCandidates.findIndex((version) => version.id === rightVersion.id);
        versionListenTitle2.textContent = formatVersionHeading(rightVersion, rightIndex >= 0 ? rightIndex + 1 : 1);
        versionListenLinks1.innerHTML = renderVersionListenLinks(leftItems);
        versionListenLinks2.innerHTML = renderVersionListenLinks(rightItems);
      };
      syncVersionListenPanel();
      songVersionTabs.querySelectorAll(".song-version-btn").forEach((btn) => {
        btn.addEventListener("click", () => {
          renderVersion(btn.getAttribute("data-version-id") || "__original");
          syncVersionListenPanel();
        });
      });

      const compareWrap = qs("songVersionCompare");
      const compareToggleWrap = qs("songCompareToggleWrap");
      const compareToggle = qs("songCompareToggle");
      const comparePickWrap = qs("songCompareVersionPickWrap");
      const comparePickLeft = qs("songCompareVersionPickLeft");
      const comparePickRight = qs("songCompareVersionPickRight");
      const compareDiff = qs("songCompareDiff");
      const baseContent = qs("songVersionBaseContent");
      const songViewRoot = document.querySelector(".song-view");
      if (compareWrap && compareToggleWrap && compareToggle && compareDiff) {
        const setCompareLayout = (isOpen) => {
          if (songViewRoot) songViewRoot.classList.toggle("song-compare-open", !!isOpen);
        };
        const localizedVersionWord = uiLocale() === "ru"
          ? "Версия"
          : uiLocale() === "uk"
            ? "Версія"
            : uiLocale() === "et"
              ? "Versioon"
              : "Version";
        const formatVersionTitle = (version, index = -1) => {
          const raw = String(version?.title || "").trim();
          if (!raw) return index >= 0 ? `${localizedVersionWord} ${index + 1}` : localizedVersionWord;
          if (raw.toLowerCase() === localizedVersionWord.toLowerCase()) {
            return index >= 0 ? `${localizedVersionWord} ${index + 1}` : localizedVersionWord;
          }
          const genericMatch = raw.match(/^version(?:\s+\d+)?$/i);
          if (genericMatch) {
            return index >= 0 ? `${localizedVersionWord} ${index + 1}` : localizedVersionWord;
          }
          return raw;
        };

        const versionOneTitle = String(compareDiff.getAttribute("data-v1-title") || "").trim() || "Version 1";
        const versionTwoTitle = String(compareDiff.getAttribute("data-v2-title") || "").trim() || "Version 2";
        const performerLabel = String(compareDiff.getAttribute("data-performer-label") || "").trim() || "Performer";
        const yearLabel = String(compareDiff.getAttribute("data-year-label") || "").trim() || "Year";
        const missingMetaText = String(compareDiff.getAttribute("data-meta-missing") || "").trim() || "-";
        const compareOptions = [...versionById.values()].filter((version) => version?.id);
        let selectedCompareLeftId = activeVersionId;
        let selectedCompareRightId = compareOptions[1]?.id || compareOptions[0]?.id || "__original";
        const stanzaLabel = uiLocale() === "ru"
          ? "Куплет"
          : uiLocale() === "uk"
            ? "Куплет"
            : uiLocale() === "et"
              ? "Salm"
              : "Stanza";

        const renderPaneStanzas = (rows = [], ownStanzas = [], peerStanzas = [], ownIndexKey, peerIndexKey) => {
          if (!rows.length) return `<div class="muted small">${esc(t("common.empty"))}</div>`;
          return rows.map((row, rowIndex) => {
            const ownIndex = Number.isInteger(row?.[ownIndexKey]) ? row[ownIndexKey] : null;
            const peerIndex = Number.isInteger(row?.[peerIndexKey]) ? row[peerIndexKey] : null;
            const ownText = ownIndex === null ? "" : String(ownStanzas[ownIndex] || "");
            const peerText = peerIndex === null ? "" : String(peerStanzas[peerIndex] || "");
            const skipDiff = !!row?.isExact && !!ownText && !!peerText;
            const stanzaHtml = ownText
              ? renderCompareWordMarkup(ownText, peerText, { skipDiff })
              : `<span class="muted small">-</span>`;
            const stanzaIndexLabel = ownIndex === null ? "-" : `${stanzaLabel} ${ownIndex + 1}`;
            const rowClasses = [
              "song-version-stanza-row",
              ownIndex === null ? "is-missing" : "",
            ].filter(Boolean).join(" ");
            return `
              <section class="${rowClasses}" data-compare-row="${rowIndex}">
                <div class="song-version-stanza-label">${esc(stanzaIndexLabel)}</div>
                <pre class="song-version-stanza-text">${stanzaHtml}</pre>
              </section>
            `;
          }).join("");
        };

        const syncCompareStanzaRowHeights = () => {
          const leftRows = Array.from(compareDiff.querySelectorAll(".song-version-pane-left .song-version-stanza-row"));
          const rightRows = Array.from(compareDiff.querySelectorAll(".song-version-pane-right .song-version-stanza-row"));
          const rowCount = Math.max(leftRows.length, rightRows.length);
          for (let idx = 0; idx < rowCount; idx += 1) {
            const leftRow = leftRows[idx] || null;
            const rightRow = rightRows[idx] || null;
            if (leftRow) leftRow.style.minHeight = "";
            if (rightRow) rightRow.style.minHeight = "";
          }
          for (let idx = 0; idx < rowCount; idx += 1) {
            const leftRow = leftRows[idx] || null;
            const rightRow = rightRows[idx] || null;
            const maxHeight = Math.max(
              leftRow ? leftRow.offsetHeight : 0,
              rightRow ? rightRow.offsetHeight : 0
            );
            if (maxHeight > 0) {
              const px = `${maxHeight}px`;
              if (leftRow) leftRow.style.minHeight = px;
              if (rightRow) rightRow.style.minHeight = px;
            }
          }
        };

        const scheduleCompareStanzaRowSync = () => {
          requestAnimationFrame(() => {
            syncCompareStanzaRowHeights();
            setTimeout(syncCompareStanzaRowHeights, 90);
            setTimeout(syncCompareStanzaRowHeights, 220);
            setTimeout(syncCompareStanzaRowHeights, 420);
          });
        };

        const renderComparePick = () => {
          if (!comparePickLeft || !comparePickRight || !comparePickWrap) return;
          if (compareOptions.length <= 0) {
            comparePickLeft.innerHTML = "";
            comparePickRight.innerHTML = "";
            comparePickWrap.classList.add("hidden");
            return;
          }
          if (!compareOptions.some((version) => version.id === selectedCompareLeftId)) {
            selectedCompareLeftId = compareOptions[0]?.id || "__original";
          }
          if (!compareOptions.some((version) => version.id === selectedCompareRightId)) {
            selectedCompareRightId = compareOptions[0]?.id || "__original";
          }
          const optionsMarkup = compareOptions.map((version, idx) => {
            const title = formatVersionTitle(version, idx);
            return `<option value="${esc(version.id)}">${esc(title)}</option>`;
          }).join("");
          comparePickLeft.innerHTML = optionsMarkup;
          comparePickRight.innerHTML = optionsMarkup;
          comparePickLeft.value = selectedCompareLeftId;
          comparePickRight.value = selectedCompareRightId;
        };

        const renderCompare = () => {
          const left = knownVersionIds.has(selectedCompareLeftId)
            ? (versionById.get(selectedCompareLeftId) || null)
            : null;
          const right = knownVersionIds.has(selectedCompareRightId)
            ? (versionById.get(selectedCompareRightId) || null)
            : null;
          if (!left || !right) {
            compareDiff.innerHTML = "";
            compareWrap.classList.add("hidden");
            return;
          }
          compareWrap.classList.remove("hidden");
          const leftLyrics = String(left?.lyrics || "");
          const rightLyrics = String(right?.lyrics || "");
          const leftIndex = compareOptions.findIndex((version) => version.id === left.id);
          const rightIndex = compareOptions.findIndex((version) => version.id === right.id);
          const leftTitle = formatVersionTitle(left, leftIndex);
          const rightTitle = formatVersionTitle(right, rightIndex);
          const leftPerformer = String(song?.subtitle || "").trim() || missingMetaText;
          const rightPerformer = String(song?.subtitle || "").trim() || missingMetaText;
          const leftYear = String(song?.year || "").trim() || missingMetaText;
          const rightYear = String(song?.year || "").trim() || missingMetaText;
          const leftStanzas = splitLyricsToStanzas(leftLyrics);
          const rightStanzas = splitLyricsToStanzas(rightLyrics);
          const alignedRows = alignCompareStanzas(leftStanzas, rightStanzas);
          const leftHtml = renderPaneStanzas(alignedRows, leftStanzas, rightStanzas, "sourceIndex", "targetIndex");
          const rightHtml = renderPaneStanzas(alignedRows, rightStanzas, leftStanzas, "targetIndex", "sourceIndex");
          compareDiff.innerHTML = `
            <div class="song-version-pane song-version-pane-left">
              <div class="song-version-pane-head">
                <div class="song-version-pane-title">${esc(versionOneTitle)}</div>
                <div class="song-version-pane-name">${esc(leftTitle)}</div>
                <div class="song-version-pane-meta">${esc(`${performerLabel}: ${leftPerformer}`)}</div>
                <div class="song-version-pane-meta">${esc(`${yearLabel}: ${leftYear}`)}</div>
              </div>
              <div class="song-version-pane-body">${leftHtml}</div>
            </div>
            <div class="song-version-pane song-version-pane-right">
              <div class="song-version-pane-head">
                <div class="song-version-pane-title">${esc(versionTwoTitle)}</div>
                <div class="song-version-pane-name">${esc(rightTitle)}</div>
                <div class="song-version-pane-meta">${esc(`${performerLabel}: ${rightPerformer}`)}</div>
                <div class="song-version-pane-meta">${esc(`${yearLabel}: ${rightYear}`)}</div>
              </div>
              <div class="song-version-pane-body">${rightHtml}</div>
            </div>
          `;
          scheduleCompareStanzaRowSync();
        };

        const syncCompareToggle = () => {
          const canCompare = compareOptions.length > 0;
          compareToggleWrap.classList.toggle("hidden", !canCompare);
          if (!canCompare) {
            closeAnimatedElement(compareWrap, { duration: 420 });
            if (baseContent) baseContent.classList.remove("hidden");
            comparePickWrap.classList.add("hidden");
            setCompareLayout(false);
            return;
          }
          if (!isAnimatedElementOpen(compareWrap)) {
            comparePickWrap.classList.add("hidden");
          } else {
            renderComparePick();
            comparePickWrap.classList.remove("hidden");
          }
        };
        syncCompareToggle();
        renderComparePick();
        comparePickWrap.classList.add("hidden");
        compareWrap.classList.add("hidden");
        setCompareLayout(false);

        if (comparePickLeft) {
          comparePickLeft.addEventListener("change", () => {
            const chosenId = String(comparePickLeft.value || "").trim();
            if (!chosenId || !knownVersionIds.has(chosenId)) return;
            selectedCompareLeftId = chosenId;
            if (!compareWrap.classList.contains("hidden")) renderCompare();
          });
        }

        if (comparePickRight) {
          comparePickRight.addEventListener("change", () => {
            const chosenId = String(comparePickRight.value || "").trim();
            if (!chosenId || !knownVersionIds.has(chosenId)) return;
            selectedCompareRightId = chosenId;
            if (!compareWrap.classList.contains("hidden")) renderCompare();
          });
        }

        compareToggle.addEventListener("click", () => {
          const isOpen = isAnimatedElementOpen(compareWrap);
          if (isOpen) {
            closeAnimatedElement(compareWrap, { duration: 420 });
            if (baseContent) baseContent.classList.remove("hidden");
            comparePickWrap.classList.add("hidden");
            setCompareLayout(false);
            return;
          }
          renderComparePick();
          comparePickWrap.classList.remove("hidden");
          renderCompare();
          if (baseContent) baseContent.classList.add("hidden");
          openAnimatedElement(compareWrap);
          setCompareLayout(true);
        });

        songVersionTabs.querySelectorAll(".song-version-btn").forEach((btn) => {
          btn.addEventListener("click", () => {
            renderComparePick();
            if (!compareWrap.classList.contains("hidden")) renderCompare();
            syncCompareToggle();
          });
        });
      }
    }

    const toolsPanel = qs("songToolsPanel");
    const openSongEditorFallback = () => {
      if (!can("songs.edit") || !String(song?.id || "").trim()) return;
      const targetHash = makeHash("#/admin/editor", { id: song.id }, ["id"]);
      if (location.hash !== targetHash) location.hash = targetHash;
    };
    const setSongToolsOpen = (open) => {
      if (!toolsPanel) return;
      const isMobile = window.matchMedia("(max-width: 760px)").matches;
      if (open) {
        openAnimatedElement(toolsPanel);
      } else {
        closeAnimatedElement(toolsPanel);
      }
      document.body.classList.toggle("song-tools-open", !!(open && isMobile));
      if (open) {
        requestAnimationFrame(() => {
          wireAutoGrowTextareas(toolsPanel);
          setTimeout(() => wireAutoGrowTextareas(toolsPanel), 140);
        });
      }
    };
    const toolsBtn = qs("btnSongTools");
    const handleSongEditClick = (event) => {
      event?.preventDefault?.();
      if (!toolsPanel) {
        openSongEditorFallback();
        return;
      }
      const open = !toolsPanel.classList.contains("is-open") || toolsPanel.classList.contains("is-closing");
      setSongToolsOpen(open);
      if (open) {
        setTimeout(() => {
          qs("ss_title")?.focus({ preventScroll: true });
          if (toolsPanel.classList.contains("hidden")) openSongEditorFallback();
        }, 120);
      }
    };
    toolsBtn?.addEventListener("click", handleSongEditClick);
    qs("ss_close")?.addEventListener("click", () => setSongToolsOpen(false));
    if (toolsPanel) {
      setSelectValueWithLegacy("ss_lang", "language", song.lang || "", uiText("selectLanguage"));
      setSelectValueWithLegacy("ss_country", "country", song.country || "", uiText("selectCountry"));
      setSelectValueWithLegacy("ss_period", "period", song.period || "", uiText("selectPeriod"));
      syncPeriodVisibility("ss_country", "ss_period_wrap", "ss_period");
      const songLyricsParts = splitLyricsForEditor(song.lyrics || "");
      if (qs("ss_lyrics")) qs("ss_lyrics").value = songLyricsParts.lyrics || "";
      if (qs("ss_chorus")) qs("ss_chorus").value = songLyricsParts.chorus || "";
      if (qs("ss_chorus_marker")) qs("ss_chorus_marker").value = songLyricsParts.marker || chorusMarkerLabel();
      qs("ss_country")?.addEventListener("change", () => syncPeriodVisibility("ss_country", "ss_period_wrap", "ss_period"));
      qs("ss_addLink")?.addEventListener("click", () => {
        qs("ss_links").insertAdjacentHTML("beforeend", songInlineLinkRow());
        wireDynamicRows(toolsPanel);
        wireAutoGrowTextareas(toolsPanel);
        syncSongDraftState(collectSongToolsPayload());
        scheduleSongDraftSave();
      });
      qs("ss_addVersion")?.addEventListener("click", () => {
        qs("ss_versions").insertAdjacentHTML("beforeend", songInlineVersionRow());
        wireDynamicRows(toolsPanel);
        wireAutoGrowTextareas(toolsPanel);
        syncSongDraftState(collectSongToolsPayload());
        scheduleSongDraftSave();
      });
      wireDynamicRows(toolsPanel);
      wireAutoGrowTextareas(toolsPanel);

      const songDraftIdentity = String(song.id || "").trim() || "__new";
      const songDraftBanner = qs("ss_draft_banner");
      const songHasPublishedBase = song.status !== "draft";
      let songBaseSignature = contentDraftComparableSignature(collectSongToolsPayload());
      let songHasDiff = false;
      let songDraftTimer = 0;

      const setSongDraftBannerVisible = (visible) => {
        if (!songDraftBanner) return;
        songDraftBanner.classList.toggle("hidden", !visible);
        songDraftBanner.textContent = visible ? contentDraftDiffBannerText(songHasPublishedBase) : "";
      };

      const syncSongDraftState = (payload = collectSongToolsPayload()) => {
        songHasDiff = contentDraftComparableSignature(payload) !== songBaseSignature;
        if (songHasDiff) {
          setSongDraftBannerVisible(true);
        } else {
          setSongDraftBannerVisible(false);
        }
        return songHasDiff;
      };

      const persistSongDraftIfNeeded = () => {
        const payload = collectSongToolsPayload();
        if (!syncSongDraftState(payload)) {
          clearScopedDraft(SONG_TOOLS_DRAFT_PREFIX, songDraftIdentity);
          return;
        }
        saveScopedDraft(SONG_TOOLS_DRAFT_PREFIX, songDraftIdentity, payload);
      };

      const scheduleSongDraftSave = () => {
        clearTimeout(songDraftTimer);
        songDraftTimer = setTimeout(persistSongDraftIfNeeded, 650);
      };

      const savedSongDraft = readScopedDraft(SONG_TOOLS_DRAFT_PREFIX, songDraftIdentity);
      if (savedSongDraft?.payload && contentDraftComparableSignature(savedSongDraft.payload) !== songBaseSignature) {
        const restoredPayload = { ...savedSongDraft.payload };
        if (song.status === "published" && restoredPayload.status === "draft") {
          restoredPayload.status = "published";
        }
        applySongToolsPayload(restoredPayload);
        wireDynamicRows(toolsPanel);
        wireAutoGrowTextareas(toolsPanel);
      }
      syncSongDraftState(collectSongToolsPayload());

      const songDraftWatcher = (event) => {
        const target = event.target;
        if (!(target instanceof HTMLElement)) return;
        if (!target.matches("input, select, textarea")) return;
        if (syncSongDraftState(collectSongToolsPayload())) {
          scheduleSongDraftSave();
        } else {
          clearTimeout(songDraftTimer);
          clearScopedDraft(SONG_TOOLS_DRAFT_PREFIX, songDraftIdentity);
        }
      };
      toolsPanel.addEventListener("input", songDraftWatcher);
      toolsPanel.addEventListener("change", songDraftWatcher);
      toolsPanel.addEventListener("click", (event) => {
        const target = event.target;
        if (!(target instanceof Element)) return;
        if (!target.closest(".ss_link_remove, .ss_version_remove")) return;
        setTimeout(() => {
          if (syncSongDraftState(collectSongToolsPayload())) {
            scheduleSongDraftSave();
          } else {
            clearTimeout(songDraftTimer);
            clearScopedDraft(SONG_TOOLS_DRAFT_PREFIX, songDraftIdentity);
          }
        }, 0);
      });
      setupContentDraftExitPersistence(() => (songHasDiff ? collectSongToolsPayload() : null), {
        savePayload: (payload) => saveScopedDraft(SONG_TOOLS_DRAFT_PREFIX, songDraftIdentity, payload),
        clearPayload: () => clearScopedDraft(SONG_TOOLS_DRAFT_PREFIX, songDraftIdentity),
      });

      const ssSaveBtn = qs("ss_save");
      if (ssSaveBtn) {
        let savePending = false;
        let lastTriggerAt = 0;
        const runSongSave = async (event) => {
          event?.preventDefault?.();
          const now = Date.now();
          if (now - lastTriggerAt < 420) return;
          lastTriggerAt = now;
          if (savePending) return;

          const initialText = ssSaveBtn.textContent;
          savePending = true;
          ssSaveBtn.disabled = true;
          ssSaveBtn.classList.add("is-busy");
          ssSaveBtn.textContent = `${t("common.save")}...`;
          try {
            const payload = collectSongToolsPayload();
            if (!payload.title || !payload.lang || !payload.country || !payload.lyrics.trim()) {
              showStatusOverlay(t("request.required"), "error");
              savePending = false;
              ssSaveBtn.disabled = false;
              ssSaveBtn.classList.remove("is-busy");
              ssSaveBtn.textContent = initialText;
              return;
            }
            const out = await api.adminSaveSong(payload);
            if (out?.id) qs("ss_id").value = out.id;
            songBaseSignature = contentDraftComparableSignature({ ...payload, id: out?.id || payload.id });
            songHasDiff = false;
            clearScopedDraft(SONG_TOOLS_DRAFT_PREFIX, songDraftIdentity);
            setSongDraftBannerVisible(false);
            showSaveSuccessOverlay();
            savePending = false;
            ssSaveBtn.disabled = false;
            ssSaveBtn.classList.remove("is-busy");
            ssSaveBtn.textContent = initialText;
          } catch (e) {
            showStatusOverlay(`${t("admin.saveError")}: ${e?.message || t("common.error")}`, "error");
            savePending = false;
            ssSaveBtn.disabled = false;
            ssSaveBtn.classList.remove("is-busy");
            ssSaveBtn.textContent = initialText;
          }
        };
        ssSaveBtn.addEventListener("pointerdown", runSongSave);
        ssSaveBtn.addEventListener("click", runSongSave);
      }

      qs("ss_delete")?.addEventListener("click", async () => {
        if (!confirm(t("admin.deleteConfirm"))) return;
        try {
          await api.adminDeleteSong(qs("ss_id").value);
          clearScopedDraft(SONG_TOOLS_DRAFT_PREFIX, songDraftIdentity);
          showStatusOverlay(t("admin.deleted"), "success");
          location.hash = "#/";
        } catch (e) {
          showStatusOverlay(`${t("admin.deleteError")}: ${e?.message || t("common.error")}`, "error");
        }
      });
    }
    return;
  }

  if (route.name === "draft") {
    const draftId = String(ctx?.draftId || route?.id || "").trim();
    const draftRoot = document.querySelector(".draft-main");
    if (!draftRoot || !draftId) return;
    let draftPayload = ctx?.data || {};
    let localVersion = Number(draftPayload?.version || 0);
    const opStore = draftOpStoreFor(draftId);
    const lineTimers = new Map();
    let ws = null;
    let reconnectTimer = 0;
    let leaving = false;

    const canManageCollaborators = () => {
      const ownerId = String(draftPayload?.owner?.id || "").trim();
      const userId = String(state?.user?.id || "").trim();
      return !!ownerId && !!userId && ownerId === userId;
    };
    const updateVersion = () => {
      const node = qs("draft_version");
      if (node) node.textContent = String(localVersion || 0);
    };
    const renderOps = () => {
      const listNode = qs("draft_ops_list");
      if (!listNode) return;
      const items = [...opStore.values()]
        .sort((a, b) => Number(b.ts || 0) - Number(a.ts || 0))
        .slice(0, 16);
      if (!items.length) {
        listNode.innerHTML = `<div class="muted small">${esc(t("common.empty"))}</div>`;
        return;
      }
      listNode.innerHTML = items.map((item) => `
        <div class="songCard draft-op-card">
          <div class="songTitle">${esc(String(item?.opType || "op"))}</div>
          <div class="songMeta">${esc(draftOpStatusLabel(item?.status || "pending"))}</div>
        </div>
      `).join("");
    };
    const renderCollaborators = () => {
      const listNode = qs("draft_collaborators_list");
      if (!listNode) return;
      listNode.innerHTML = draftCollaboratorsUI(draftPayload, canManageCollaborators());
    };
    const renderLines = () => {
      const listNode = qs("draft_lines_list");
      if (!listNode) return;
      const lines = Array.isArray(draftPayload?.lines) ? draftPayload.lines : [];
      listNode.innerHTML = draftLineRowsUI(lines);
    };
    const setPresence = (text) => {
      const node = qs("draft_presence");
      if (!node) return;
      node.textContent = String(text || "").trim();
    };
    const applySnapshotState = (statePayload = {}) => {
      const next = {
        ...draftPayload,
        version: Number(statePayload?.draft?.version || draftPayload?.version || 0),
        status: String(statePayload?.draft?.status || draftPayload?.status || "draft"),
        snapshot: statePayload?.draft?.snapshot || draftPayload?.snapshot || {},
        collaborators: Array.isArray(statePayload?.collaborators) ? statePayload.collaborators : (draftPayload?.collaborators || []),
        lines: Array.isArray(statePayload?.lines) ? statePayload.lines : (draftPayload?.lines || []),
      };
      draftPayload = next;
      localVersion = Number(next.version || 0);
      updateVersion();
      renderCollaborators();
      renderLines();
    };
    const registerOpStatus = (clientOpId, status, opType = "") => {
      const key = String(clientOpId || "").trim();
      if (!key) return;
      const prev = opStore.get(key) || { id: key, opType: String(opType || "op"), ts: Date.now() };
      opStore.set(key, { ...prev, status: String(status || prev.status || "pending"), ts: Date.now() });
      while (opStore.size > 80) {
        const oldest = [...opStore.entries()].sort((a, b) => Number(a[1]?.ts || 0) - Number(b[1]?.ts || 0))[0];
        if (!oldest) break;
        opStore.delete(oldest[0]);
      }
      renderOps();
    };
    const sendOp = (opType, payload = {}) => {
      if (!(ws instanceof WebSocket) || ws.readyState !== WebSocket.OPEN) {
        showStatusOverlay(draftUiText("wsNotConnected"), "error");
        return;
      }
      const clientOpId = `cop_${Date.now()}_${Math.random().toString(36).slice(2, 8)}`;
      registerOpStatus(clientOpId, "pending", opType);
      ws.send(JSON.stringify({
        type: "op",
        op_type: opType,
        payload,
        base_version: localVersion,
        client_op_id: clientOpId,
        ts: Date.now(),
      }));
    };
    const findLineById = (lineId) => {
      const lines = Array.isArray(draftPayload?.lines) ? draftPayload.lines : [];
      return lines.find((line) => String(line?.id || "") === String(lineId || "")) || null;
    };
    const linePrompt = (lineId) => {
      const lines = Array.isArray(draftPayload?.lines) ? draftPayload.lines : [];
      const idx = lines.findIndex((line) => String(line?.id || "") === String(lineId || ""));
      if (idx < 0) return "";
      const before = idx > 0 ? String(draftActiveVariant(lines[idx - 1])?.text || "") : "";
      const current = String(draftActiveVariant(lines[idx])?.text || "");
      const after = idx + 1 < lines.length ? String(draftActiveVariant(lines[idx + 1])?.text || "") : "";
      const title = String(draftPayload?.snapshot?.title || "");
      return buildDraftPhoneticPrompt({ title, before, current, after });
    };
    const copyText = async (text) => {
      if (navigator.clipboard?.writeText) {
        await navigator.clipboard.writeText(text);
        return;
      }
      const tmp = document.createElement("textarea");
      tmp.value = text;
      tmp.setAttribute("readonly", "readonly");
      tmp.style.position = "fixed";
      tmp.style.opacity = "0";
      document.body.appendChild(tmp);
      tmp.select();
      document.execCommand("copy");
      document.body.removeChild(tmp);
    };
    const connectWs = () => {
      if (leaving) return;
      if (!(window.WebSocket)) {
        setPresence(draftUiText("statusWsUnsupported"));
        return;
      }
      setPresence(draftUiText("statusConnecting"));
      ws = new WebSocket(api.draftWsUrl(draftId));
      ws.addEventListener("open", () => setPresence(draftUiText("statusOnline")));
      ws.addEventListener("message", (event) => {
        let message = null;
        try {
          message = JSON.parse(String(event.data || "{}"));
        } catch {
          return;
        }
        const type = String(message?.type || "").trim();
        if (type === "presence") {
          const users = Array.isArray(message?.users) ? message.users : [];
          const names = users.map((u) => String(u?.nickname || u?.user_id || "").trim()).filter(Boolean);
          setPresence(names.length ? draftUiText("statusOnlineWithNames", { names: names.join(", ") }) : draftUiText("statusOnline"));
          return;
        }
        if (type === "joined") {
          localVersion = Number(message?.version || localVersion || 0);
          updateVersion();
          return;
        }
        if (type === "op_applied") {
          registerOpStatus(message?.client_op_id, "applied");
          localVersion = Math.max(localVersion, Number(message?.version || 0));
          updateVersion();
          return;
        }
        if (type === "op_persisted") {
          registerOpStatus(message?.client_op_id, "persisted");
          localVersion = Math.max(localVersion, Number(message?.version || 0));
          updateVersion();
          return;
        }
        if (type === "conflict_created") {
          showStatusOverlay(draftUiText("conflictSaved"), "info");
          return;
        }
        if (type === "snapshot") {
          applySnapshotState(message?.state || {});
          return;
        }
        if (type === "error") {
          showStatusOverlay(String(message?.message || t("common.error")), "error");
        }
      });
      ws.addEventListener("close", () => {
        if (leaving) return;
        setPresence(draftUiText("statusReconnecting"));
        reconnectTimer = window.setTimeout(connectWs, 1200);
      });
      ws.addEventListener("error", () => {
        if (leaving) return;
        setPresence(draftUiText("statusConnectionError"));
      });
    };

    draftRoot.addEventListener("click", async (event) => {
      const target = event.target;
      if (!(target instanceof HTMLElement)) return;
      const toggle = target.closest(".draft-variants-toggle");
      if (toggle) {
        const lineId = String(toggle.getAttribute("data-line-id") || "").trim();
        if (!lineId) return;
        const panel = qs(`draft_variants_${lineId}`);
        if (!panel) return;
        panel.classList.toggle("hidden");
        return;
      }
      const activate = target.closest(".draft-variant-activate");
      if (activate) {
        const lineId = String(activate.getAttribute("data-line-id") || "").trim();
        const variantId = String(activate.getAttribute("data-variant-id") || "").trim();
        if (!lineId || !variantId) return;
        sendOp("set_active_variant", { line_id: lineId, variant_id: variantId });
        return;
      }
      const addVariant = target.closest(".draft-add-variant-btn");
      if (addVariant) {
        const lineId = String(addVariant.getAttribute("data-line-id") || "").trim();
        if (!lineId) return;
        const row = addVariant.closest(".draft-add-variant");
        if (!row) return;
        const textInput = row.querySelector(".draft-new-variant-text");
        const confInput = row.querySelector(".draft-new-variant-confidence");
        const text = String(textInput?.value || "").trim();
        const confidence = Number.parseInt(String(confInput?.value || "80"), 10);
        if (!text) return;
        sendOp("add_variant", { line_id: lineId, text, confidence, variant_type: "manual" });
        if (textInput) textInput.value = "";
        if (confInput) confInput.value = "80";
        return;
      }
      const addSuggested = target.closest(".draft-add-suggested-btn");
      if (addSuggested) {
        const lineId = String(addSuggested.getAttribute("data-line-id") || "").trim();
        if (!lineId) return;
        const row = addSuggested.closest(".draft-add-variant");
        if (!row) return;
        const textInput = row.querySelector(".draft-new-variant-text");
        const confInput = row.querySelector(".draft-new-variant-confidence");
        const text = String(textInput?.value || "").trim();
        const confidence = Number.parseInt(String(confInput?.value || "80"), 10);
        if (!text) return;
        sendOp("add_variant", { line_id: lineId, text, confidence, variant_type: "suggested" });
        if (textInput) textInput.value = "";
        if (confInput) confInput.value = "80";
        return;
      }
      const aiCopy = target.closest(".draft-ai-copy");
      if (aiCopy) {
        const lineId = String(aiCopy.getAttribute("data-line-id") || "").trim();
        const prompt = linePrompt(lineId);
        if (!prompt) return;
        try {
          await copyText(prompt);
          showStatusOverlay(draftUiText("promptCopied"), "success");
        } catch {
          showStatusOverlay(draftUiText("promptCopyFailed"), "error");
        }
        return;
      }
      const aiOpen = target.closest(".draft-ai-open");
      if (aiOpen) {
        const lineId = String(aiOpen.getAttribute("data-line-id") || "").trim();
        const prompt = linePrompt(lineId);
        if (!prompt) return;
        const url = `https://chatgpt.com/?q=${encodeURIComponent(prompt)}`;
        window.open(url, "_blank", "noopener,noreferrer");
        return;
      }
      const removeCollaborator = target.closest(".draft-collab-remove");
      if (removeCollaborator) {
        const userId = String(removeCollaborator.getAttribute("data-user-id") || "").trim();
        if (!userId) return;
        try {
          await api.draftRemoveCollaborator(draftId, userId);
          const fresh = await api.draft(draftId);
          draftPayload = fresh;
          localVersion = Number(fresh?.version || localVersion || 0);
          applySnapshotState({
            draft: { version: fresh?.version || 0, status: fresh?.status || "draft", snapshot: fresh?.snapshot || {} },
            collaborators: fresh?.collaborators || [],
            lines: fresh?.lines || [],
          });
        } catch (cause) {
          showStatusOverlay(String(cause?.message || t("common.error")), "error");
        }
      }
    });

    draftRoot.addEventListener("input", (event) => {
      const target = event.target;
      if (!(target instanceof HTMLElement)) return;
      if (!target.classList.contains("draft-line-input")) return;
      const lineId = String(target.getAttribute("data-line-id") || "").trim();
      if (!lineId) return;
      if (lineTimers.has(lineId)) {
        clearTimeout(lineTimers.get(lineId));
      }
      const timeoutId = setTimeout(() => {
        const confidence = Number.parseInt(String(target.getAttribute("data-confidence") || "100"), 10) || 100;
        sendOp("set_line_text", { line_id: lineId, text: target.value || "", confidence });
      }, 260);
      lineTimers.set(lineId, timeoutId);
    });

    draftRoot.addEventListener("change", (event) => {
      const target = event.target;
      if (!(target instanceof HTMLElement)) return;
      if (!target.classList.contains("draft-variant-confidence")) return;
      const variantId = String(target.getAttribute("data-variant-id") || "").trim();
      if (!variantId) return;
      const confidence = Number.parseInt(String(target.value || "100"), 10) || 100;
      sendOp("set_variant_confidence", { variant_id: variantId, confidence });
    });

    qs("draft_collab_add")?.addEventListener("click", async () => {
      const nicknameInput = qs("draft_collab_nickname");
      const nickname = String(nicknameInput?.value || "").trim();
      if (!nickname) return;
      try {
        await api.draftAddCollaborator(draftId, nickname);
        if (nicknameInput) nicknameInput.value = "";
        const fresh = await api.draft(draftId);
        draftPayload = fresh;
        localVersion = Number(fresh?.version || localVersion || 0);
        applySnapshotState({
          draft: { version: fresh?.version || 0, status: fresh?.status || "draft", snapshot: fresh?.snapshot || {} },
          collaborators: fresh?.collaborators || [],
          lines: fresh?.lines || [],
        });
      } catch (cause) {
        showStatusOverlay(String(cause?.message || t("common.error")), "error");
      }
    });

    qs("draft_publish_btn")?.addEventListener("click", async () => {
      try {
        const out = await api.draftPublish(draftId);
        if (out?.song_id) {
          location.hash = `#/song/${encodeURIComponent(out.song_id)}`;
        } else {
          showStatusOverlay(draftUiText("draftPublished"), "success");
        }
      } catch (cause) {
        showStatusOverlay(String(cause?.message || t("common.error")), "error");
      }
    });

    updateVersion();
    renderOps();
    connectWs();
    const onLeave = () => {
      leaving = true;
      clearTimeout(reconnectTimer);
      lineTimers.forEach((timerId) => clearTimeout(timerId));
      lineTimers.clear();
      try {
        ws?.close();
      } catch {}
    };
    window.addEventListener("hashchange", onLeave, { once: true });
    return;
  }

  if (route.name === "request") {
    const form = qs("requestForm");
    if (!form) return;
    const isFragmentReport = !!ctx?.isFragmentReport;
    if (!isFragmentReport) {
      setSelectValueWithLegacy("rq_lang", "language", "", uiText("selectLanguage"));
      setSelectValueWithLegacy("rq_country", "country", "", uiText("selectCountry"));
      setSelectValueWithLegacy("rq_period", "period", "", uiText("selectPeriod"));
      syncPeriodVisibility("rq_country", "rq_period_wrap", "rq_period");
    }

    qs("rq_country")?.addEventListener("change", () => syncPeriodVisibility("rq_country", "rq_period_wrap", "rq_period"));
    const requestDraftIdentity = "__new";
    const requestDraftBanner = qs("rq_draft_banner");
    const requestBaseSignature = contentDraftComparableSignature(collectRequestPayload());
    let requestHasDiff = false;
    let requestDraftTimer = 0;
    const requestFragment = String(route?.query?.fragment || "").trim();

    const setRequestDraftBannerVisible = (visible) => {
      if (!requestDraftBanner) return;
      requestDraftBanner.classList.toggle("hidden", !visible);
      requestDraftBanner.textContent = visible ? requestDraftBannerText() : "";
    };

    const syncRequestDraftState = (payload = collectRequestPayload()) => {
      requestHasDiff = contentDraftComparableSignature(payload) !== requestBaseSignature;
      setRequestDraftBannerVisible(requestHasDiff);
      return requestHasDiff;
    };

    const persistRequestDraftIfNeeded = () => {
      const payload = collectRequestPayload();
      if (!syncRequestDraftState(payload)) {
        clearScopedDraft(REQUEST_FORM_DRAFT_PREFIX, requestDraftIdentity);
        return;
      }
      saveScopedDraft(REQUEST_FORM_DRAFT_PREFIX, requestDraftIdentity, payload);
    };

    const scheduleRequestDraftSave = () => {
      clearTimeout(requestDraftTimer);
      requestDraftTimer = setTimeout(persistRequestDraftIfNeeded, 650);
    };

    const savedRequestDraft = readScopedDraft(REQUEST_FORM_DRAFT_PREFIX, requestDraftIdentity);
    if (savedRequestDraft?.payload && contentDraftComparableSignature(savedRequestDraft.payload) !== requestBaseSignature) {
      applyRequestPayload(savedRequestDraft.payload);
      wireDynamicRows(form);
      wireAutoGrowTextareas(form);
    } else if (savedRequestDraft?.payload) {
      clearScopedDraft(REQUEST_FORM_DRAFT_PREFIX, requestDraftIdentity);
    }
    if (requestFragment && !savedRequestDraft?.payload) {
      if (!isFragmentReport && qs("rq_title") && !String(qs("rq_title").value || "").trim()) {
        qs("rq_title").value = uiLocale() === "ru"
          ? "Фрагмент текста (не найдено в каталоге)"
          : uiLocale() === "uk"
            ? "Фрагент тексту (не знайдено в каталозі)"
            : uiLocale() === "et"
              ? "Tekstikatkend (kataloogist ei leitud)"
              : "Text fragment (not found in catalog)";
      }
      if (qs("rq_lyrics") && !String(qs("rq_lyrics").value || "").trim()) {
        qs("rq_lyrics").value = requestFragment;
      }
      if (!isFragmentReport && qs("rq_notes") && !String(qs("rq_notes").value || "").trim()) {
        qs("rq_notes").value = uiLocale() === "ru"
          ? "Автосообщение: отправлено из кнопки «Не нашли? Сообщить фрагмент»."
          : uiLocale() === "uk"
            ? "Автоповідомлення: надіслано з кнопки «Не знайшли? Повідомити фрагмент»."
            : uiLocale() === "et"
              ? "Automaatteade: saadetud nupust «Ei leidnud? Saada katkend»."
              : "Auto note: sent from 'Not found? Report fragment'.";
      }
      if (qs("rq_report_fragment")) qs("rq_report_fragment").value = "1";
    }
    syncRequestDraftState(collectRequestPayload());
    const refreshRequestDecoding = () => syncDecodingIndicator("rq_decoding", "rq_lyrics", "rq_chorus", "rq_chorus_marker");
    refreshRequestDecoding();
    ["rq_lyrics", "rq_chorus", "rq_chorus_marker"].forEach((id) => {
      qs(id)?.addEventListener("input", refreshRequestDecoding);
      qs(id)?.addEventListener("change", refreshRequestDecoding);
    });

    const requestDraftWatcher = (event) => {
      const target = event.target;
      if (!(target instanceof HTMLElement)) return;
      if (!target.matches("input, select, textarea")) return;
      if (syncRequestDraftState(collectRequestPayload())) {
        scheduleRequestDraftSave();
      } else {
        clearTimeout(requestDraftTimer);
        clearScopedDraft(REQUEST_FORM_DRAFT_PREFIX, requestDraftIdentity);
      }
    };
    form.addEventListener("input", requestDraftWatcher);
    form.addEventListener("change", requestDraftWatcher);
    form.addEventListener("click", (event) => {
      const target = event.target;
      if (!(target instanceof Element)) return;
      if (!target.closest(".ss_link_remove, .ss_version_remove")) return;
      setTimeout(() => {
        if (syncRequestDraftState(collectRequestPayload())) {
          scheduleRequestDraftSave();
        } else {
          clearTimeout(requestDraftTimer);
          clearScopedDraft(REQUEST_FORM_DRAFT_PREFIX, requestDraftIdentity);
        }
      }, 0);
    });
    setupContentDraftExitPersistence(() => (requestHasDiff ? collectRequestPayload() : null), {
      savePayload: (payload) => saveScopedDraft(REQUEST_FORM_DRAFT_PREFIX, requestDraftIdentity, payload),
      clearPayload: () => clearScopedDraft(REQUEST_FORM_DRAFT_PREFIX, requestDraftIdentity),
    });

    if (!isFragmentReport) {
      qs("rq_addLink")?.addEventListener("click", () => {
        qs("rq_links")?.insertAdjacentHTML("beforeend", songInlineLinkRow());
        wireDynamicRows(form);
        wireAutoGrowTextareas(form);
        syncRequestDraftState(collectRequestPayload());
        scheduleRequestDraftSave();
      });
      qs("rq_addVersion")?.addEventListener("click", () => {
        qs("rq_versions")?.insertAdjacentHTML("beforeend", songInlineVersionRow());
        wireDynamicRows(form);
        wireAutoGrowTextareas(form);
        syncRequestDraftState(collectRequestPayload());
        scheduleRequestDraftSave();
      });
      wireDynamicRows(form);
    }
    wireAutoGrowTextareas(form);

    form?.addEventListener("submit", async (e) => {
      e.preventDefault();
      const payload = collectRequestPayload();
      if (isFragmentReport) {
        payload.report_fragment = true;
      }
      const isInvalid = isFragmentReport
        ? (!payload.lyrics || !payload.source)
        : (!payload.title || !payload.lang || !payload.country || !payload.lyrics);
      if (isInvalid) {
        const message = isFragmentReport
          ? (uiLocale() === "ru"
            ? "Заполните текст фрагмента и источник."
            : uiLocale() === "uk"
              ? "Заповніть текст фрагмента та джерело."
              : uiLocale() === "et"
                ? "Taida katkendi tekst ja allikas."
                : "Fill fragment text and source.")
          : t("request.required");
        showStatusOverlay(message, "error");
        return;
      }
      try {
        const out = await api.createRequest(payload);
        const statusText = out?.mode === "published"
          ? (uiLocale() === "ru"
            ? `Песня опубликована: ${out.id}`
            : uiLocale() === "et"
              ? `Laul avaldati: ${out.id}`
              : `Song published: ${out.id}`)
          : t("request.sent", { id: out.id });
        showStatusOverlay(statusText, "success");
        form.reset();
        if (qs("rq_report_fragment")) qs("rq_report_fragment").value = isFragmentReport ? "1" : "0";
        if (!isFragmentReport) {
          if (qs("rq_links")) qs("rq_links").innerHTML = "";
          if (qs("rq_versions")) qs("rq_versions").innerHTML = "";
          setSelectValueWithLegacy("rq_lang", "language", "", uiText("selectLanguage"));
          setSelectValueWithLegacy("rq_country", "country", "", uiText("selectCountry"));
          setSelectValueWithLegacy("rq_period", "period", "", uiText("selectPeriod"));
          syncPeriodVisibility("rq_country", "rq_period_wrap", "rq_period");
        }
        clearTimeout(requestDraftTimer);
        clearScopedDraft(REQUEST_FORM_DRAFT_PREFIX, requestDraftIdentity);
        syncRequestDraftState(collectRequestPayload());
      } catch (err) {
        showStatusOverlay(err?.message || t("common.error"), "error");
      }
    });
    return;
  }

  if (route.name === "admin" && ctx.section === "content") {
    const keepRecent = String(ctx?.params?.recent || "1").trim() === "1" ? "1" : "";
    const buildHash = (extra = {}) => makeHash(
      "#/admin/content",
      { q: qs("ac_q")?.value || "", status: qs("ac_status")?.value || "", recent: keepRecent, page: 1, ...extra },
      ["q", "status", "recent", "page"],
    );
    qs("ac_search")?.addEventListener("click", () => { location.hash = buildHash({ page: 1 }); });
    document.querySelectorAll('[data-pager="ac"] [data-page]').forEach((btn) => btn.addEventListener("click", () => {
      const target = Number(btn.getAttribute("data-page") || 1);
      if (!Number.isFinite(target) || target < 1) return;
      location.hash = buildHash({ page: target });
    }));
    return;
  }

  if (route.name === "admin" && ctx.section === "editor") {
    const editorRoot = qs("ac_editor");
    if (!editorRoot) return;

    const initialSong = ctx.song || { status: "published", links: [], versions: [] };
    fillContentEditor(initialSong);
    wireAutoGrowTextareas(editorRoot);
    const draftBanner = qs("ac_draft_banner");
    const hasPublishedBase = !ctx.isNew && initialSong.status !== "draft";
    const baselineSignature = contentDraftComparableSignature(collectContentPayload());
    let baseSignature = baselineSignature;
    let hasDiffFromBase = false;
    let draftTimer = 0;

    const setDraftBannerVisible = (visible) => {
      if (!draftBanner) return;
      draftBanner.classList.toggle("hidden", !visible);
      draftBanner.textContent = visible ? contentDraftDiffBannerText(hasPublishedBase) : "";
    };

    const computeDiffFromBase = (payload = collectContentPayload()) => {
      return contentDraftComparableSignature(payload) !== baseSignature;
    };

    const syncDraftState = (payload = collectContentPayload()) => {
      hasDiffFromBase = computeDiffFromBase(payload);
      setDraftBannerVisible(hasDiffFromBase);
      return hasDiffFromBase;
    };

    const persistDraftIfNeeded = () => {
      const payload = collectContentPayload();
      if (!computeDiffFromBase(payload)) {
        clearContentDraft(contentDraftIdentity());
        setDraftBannerVisible(false);
        hasDiffFromBase = false;
        return;
      }
      saveContentDraft(payload);
      setDraftBannerVisible(true);
      hasDiffFromBase = true;
    };

    const scheduleDraftSave = () => {
      clearTimeout(draftTimer);
      draftTimer = setTimeout(persistDraftIfNeeded, 650);
    };

    const currentIdentity = contentDraftIdentity();
    const savedDraft = readContentDraft(currentIdentity);
    if (savedDraft?.payload && contentDraftComparableSignature(savedDraft.payload) !== baseSignature) {
      const restoredPayload = { ...savedDraft.payload };
      if (!ctx.isNew && initialSong.status === "published" && restoredPayload.status === "draft") {
        restoredPayload.status = "published";
      }
      fillContentEditor({ ...initialSong, ...restoredPayload });
      wireAutoGrowTextareas(editorRoot);
      syncDraftState(collectContentPayload());
    } else if (savedDraft?.payload) {
      clearContentDraft(currentIdentity);
      syncDraftState(collectContentPayload());
    } else {
      syncDraftState(collectContentPayload());
    }

    const draftWatcher = (event) => {
      const target = event.target;
      if (!(target instanceof HTMLElement)) return;
      if (!target.matches("input, select, textarea")) return;
      const payload = collectContentPayload();
      if (syncDraftState(payload)) {
        scheduleDraftSave();
      } else {
        clearTimeout(draftTimer);
        clearContentDraft(contentDraftIdentity());
      }
    };
    editorRoot.addEventListener("input", draftWatcher);
    editorRoot.addEventListener("change", draftWatcher);
    setupContentDraftExitPersistence(() => (hasDiffFromBase ? collectContentPayload() : null));

    qs("ac_country")?.addEventListener("change", () => syncPeriodVisibility("ac_country", "ac_period_wrap", "ac_period"));
    const appendEditorLinkRow = (initial = {}) => {
      qs("ac_links")?.insertAdjacentHTML("beforeend", songInlineLinkRow(initial));
      wireDynamicRows(editorRoot);
      wireAutoGrowTextareas(editorRoot);
      syncDraftState(collectContentPayload());
      scheduleDraftSave();
    };
    qs("ac_addLink")?.addEventListener("click", () => {
      appendEditorLinkRow();
    });
    qs("ac_addLinkYoutube")?.addEventListener("click", () => {
      appendEditorLinkRow({ title: "YouTube", kind: "youtube" });
    });
    qs("ac_addLinkSovmusic")?.addEventListener("click", () => {
      appendEditorLinkRow({ title: "SovMusic", kind: "sovmusic" });
    });
    qs("ac_addLinkRecords")?.addEventListener("click", () => {
      appendEditorLinkRow({ title: "Russian Records", kind: "russian-records" });
    });
    qs("ac_addVersion")?.addEventListener("click", () => {
      qs("ac_versions").insertAdjacentHTML("beforeend", songInlineVersionRow());
      wireDynamicRows(editorRoot);
      wireAutoGrowTextareas(editorRoot);
      syncDraftState(collectContentPayload());
      scheduleDraftSave();
    });
    qs("ac_open_draft")?.addEventListener("click", async () => {
      const button = qs("ac_open_draft");
      if (button) button.disabled = true;
      try {
        const payload = collectContentPayload();
        let createdDraftId = "";
        const songId = String(payload?.id || "").trim();
        if (songId) {
          const draftsPayload = await api.drafts();
          const items = Array.isArray(draftsPayload?.items) ? draftsPayload.items : [];
          const existing = items
            .filter((item) => String(item?.song_id || "").trim() === songId && String(item?.status || "draft").trim() === "draft")
            .sort((a, b) => String(b?.updated_at || "").localeCompare(String(a?.updated_at || "")))[0];
          createdDraftId = String(existing?.id || "").trim();
        }
        if (!createdDraftId) {
          const requestPayload = songId ? { song_id: songId } : { seed: payload };
          const out = await api.createDraft(requestPayload);
          createdDraftId = String(out?.draft_id || "").trim();
        }
        if (!createdDraftId) {
          showStatusOverlay(draftUiText("draftNotCreated"), "error");
          return;
        }
        location.hash = `#/draft/${encodeURIComponent(createdDraftId)}`;
      } catch (cause) {
        showStatusOverlay(String(cause?.message || t("common.error")), "error");
      } finally {
        if (button) button.disabled = false;
      }
    });
    wireDynamicRows(editorRoot);
    const shouldFocusLinks = String(route?.query?.focus || "").trim().toLowerCase() === "links";
    const shouldAddLinkByQuery = String(route?.query?.addLink || "").trim() === "1";
    if (shouldAddLinkByQuery) {
      appendEditorLinkRow();
    }
    if (shouldFocusLinks) {
      requestAnimationFrame(() => {
        const linksSection = qs("ac_links_section");
        linksSection?.scrollIntoView({ behavior: "smooth", block: "start" });
        const lastLinkUrlInput = Array.from(editorRoot.querySelectorAll(".ss_link_row .ss_link_url")).pop();
        if (lastLinkUrlInput instanceof HTMLInputElement) {
          lastLinkUrlInput.focus({ preventScroll: true });
        }
      });
    }
    const refreshAdminDecoding = () => syncDecodingIndicator("ac_decoding", "ac_lyrics", "ac_chorus", "ac_chorus_marker");
    refreshAdminDecoding();
    ["ac_lyrics", "ac_chorus", "ac_chorus_marker"].forEach((id) => {
      qs(id)?.addEventListener("input", refreshAdminDecoding);
      qs(id)?.addEventListener("change", refreshAdminDecoding);
    });

    const acSaveBtn = qs("ac_save");
    const acPublishBtn = qs("ac_publish");
    const acInlineError = qs("ac_inline_error");
    let acInlineErrorTimer = 0;
    const showAcInlineError = (text) => {
      if (!acInlineError) return;
      acInlineError.textContent = String(text || "").trim();
      acInlineError.classList.remove("hidden");
      clearTimeout(acInlineErrorTimer);
      acInlineErrorTimer = setTimeout(() => {
        acInlineError.classList.add("hidden");
      }, 2200);
    };
    if (acSaveBtn || acPublishBtn) {
      let savePending = false;
      let lastTriggerAt = 0;
      const runAdminSave = async (event, options = {}) => {
        event?.preventDefault?.();
        const now = Date.now();
        if (now - lastTriggerAt < 420) return;
        lastTriggerAt = now;
        if (savePending) return;
        const currentBtn = event?.currentTarget instanceof HTMLButtonElement ? event.currentTarget : acSaveBtn;
        const initialSaveText = acSaveBtn?.textContent || t("common.save");
        const initialPublishText = acPublishBtn?.textContent || "";
        const progressText = options.forceStatus === "published"
          ? (uiLocale() === "ru" ? "Публикация..." : uiLocale() === "uk" ? "Публікація..." : uiLocale() === "et" ? "Avaldamine..." : "Publishing...")
          : `${t("common.save")}...`;
        savePending = true;
        [acSaveBtn, acPublishBtn].forEach((btn) => {
          if (!btn) return;
          btn.disabled = true;
          btn.classList.add("is-busy");
        });
        if (currentBtn) currentBtn.textContent = progressText;
        try {
          const payload = collectContentPayload();
          if (options.forceStatus === "published") {
            payload.status = "published";
            if (qs("ac_status_edit")) qs("ac_status_edit").value = "published";
          }
          if (!payload.title || !payload.lang || !payload.country || !String(payload.lyrics || "").trim()) {
            const msg = requiredFieldsErrorText();
            showAcInlineError(msg);
            showStatusOverlay(msg, "error");
            savePending = false;
            [acSaveBtn, acPublishBtn].forEach((btn) => {
              if (!btn) return;
              btn.disabled = false;
              btn.classList.remove("is-busy");
            });
            if (acSaveBtn) acSaveBtn.textContent = initialSaveText;
            if (acPublishBtn) acPublishBtn.textContent = initialPublishText;
            return;
          }
          if (acInlineError) acInlineError.classList.add("hidden");
          const oldIdentity = contentDraftIdentity();
          const out = await api.adminSaveSong(payload);
          const savedId = out.id || payload.id || "";
          showSaveSuccessOverlay();
          clearContentDraft(oldIdentity);
          if (!payload.id) clearContentDraft("__new");
          if (qs("ac_id")) qs("ac_id").value = savedId;
          baseSignature = contentDraftComparableSignature({ ...payload, id: savedId });
          hasDiffFromBase = false;
          setDraftBannerVisible(false);
          savePending = false;
          [acSaveBtn, acPublishBtn].forEach((btn) => {
            if (!btn) return;
            btn.disabled = false;
            btn.classList.remove("is-busy");
          });
          if (acSaveBtn) acSaveBtn.textContent = initialSaveText;
          if (acPublishBtn) acPublishBtn.textContent = initialPublishText;
          if (!payload.id && savedId) {
            const editorHash = makeHash("#/admin/editor", { id: savedId }, ["id"]);
            if (location.hash !== editorHash) location.hash = editorHash;
          }
        } catch (e) {
          showStatusOverlay(`${t("admin.saveError")}: ${e?.message || t("common.error")}`, "error");
          savePending = false;
          [acSaveBtn, acPublishBtn].forEach((btn) => {
            if (!btn) return;
            btn.disabled = false;
            btn.classList.remove("is-busy");
          });
          if (acSaveBtn) acSaveBtn.textContent = initialSaveText;
          if (acPublishBtn) acPublishBtn.textContent = initialPublishText;
        }
      };
      const runPublish = (event) => runAdminSave(event, { forceStatus: "published" });
      acSaveBtn?.addEventListener("pointerdown", runAdminSave);
      acSaveBtn?.addEventListener("click", runAdminSave);
      acPublishBtn?.addEventListener("pointerdown", runPublish);
      acPublishBtn?.addEventListener("click", runPublish);
    }

    qs("ac_delete")?.addEventListener("click", async () => {
      const id = qs("ac_id").value.trim();
      if (!id) return;
      if (!confirm(t("admin.deleteConfirm"))) return;
      try {
        await api.adminDeleteSong(id);
        clearContentDraft(id);
        showStatusOverlay(t("admin.deleted"), "success");
        location.hash = "#/admin/content";
      } catch (e) {
        showStatusOverlay(`${t("admin.deleteError")}: ${e?.message || t("common.error")}`, "error");
      }
    });

    return;
  }

  if (route.name === "admin" && ctx.section === "requests") {
    const buildHash = (extra = {}) => makeHash("#/admin/requests", { status: qs("ar_status").value || "new", q: qs("ar_q").value || "", page: 1, ...extra }, ["status", "q", "page"]);
    qs("ar_search")?.addEventListener("click", () => { location.hash = buildHash({ page: 1 }); });

    document.querySelectorAll("button[data-act='approve']").forEach((btn) => btn.addEventListener("click", async () => {
      const id = btn.getAttribute("data-id");
      const card = btn.closest(".songCard");
      const comment = card?.querySelector(".ar_comment")?.value || "";
      try {
        await api.adminApproveRequest(id, { comment });
        location.hash = buildHash({ page: 1, status: "new" });
      } catch (e) {
        alert(`${t("admin.requests.error")}: ${e?.message || t("common.error")}`);
      }
    }));

    document.querySelectorAll("button[data-act='reject']").forEach((btn) => btn.addEventListener("click", async () => {
      const id = btn.getAttribute("data-id");
      const card = btn.closest(".songCard");
      const comment = card?.querySelector(".ar_comment")?.value || "";
      try {
        await api.adminRejectRequest(id, { comment });
        location.hash = buildHash({ page: 1, status: "new" });
      } catch (e) {
        alert(`${t("admin.requests.error")}: ${e?.message || t("common.error")}`);
      }
    }));
    return;
  }

  if (route.name === "admin" && ctx.section === "backgrounds") {
    const updatedNode = qs("ab_updated");
    const countrySelect = qs("ab_country");
    const countrySearchInput = qs("ab_country_search");
    const saveBtn = qs("ab_save");
    const clearBtn = qs("ab_clear");
    const openPreviewBtn = qs("ab_open_preview");
    if (!countrySelect || !saveBtn || !clearBtn) return;
    const canEditFlags = isSuperAdmin();

    const savedText = uiLocale() === "ru" ? "Фон сохранн" : uiLocale() === "uk" ? "Фон збережено" : uiLocale() === "et" ? "Taust salvestatud" : "Background saved";
    const clearedText = uiLocale() === "ru" ? "Фон очищен" : uiLocale() === "uk" ? "Фон очищено" : uiLocale() === "et" ? "Taust eemaldatud" : "Background cleared";
    const invalidImageText = uiLocale() === "ru" ? "Неверный формат изображения." : uiLocale() === "uk" ? "Невірний формат зображення." : uiLocale() === "et" ? "Vale pildiformaat." : "Invalid image format.";
    const invalidFlagText = uiLocale() === "ru"
      ? "Неверный формат флага. Используйте файл, data:image..., полный http(s) URL или /relative/path."
      : uiLocale() === "uk"
        ? "Невірний формат прапора. Використовуйте файл, data:image..., повний http(s) URL або /relative/path."
        : uiLocale() === "et"
          ? "Vigane lipu formaat. Kasuta faili, data:image..., tais http(s) URL-i voi /relative/path."
          : "Invalid flag format. Use file, data:image..., absolute http(s) URL, or /relative/path.";
    const flagRangeFromLabel = uiLocale() === "ru" ? "С года" : uiLocale() === "uk" ? "Р— року" : uiLocale() === "et" ? "Aastast" : "From year";
    const flagRangeToLabel = uiLocale() === "ru" ? "По год" : uiLocale() === "uk" ? "До року" : uiLocale() === "et" ? "Kuni aastani" : "To year";
    const flagRangeDesktopLabel = uiLocale() === "ru" ? "URL флага (ПК)" : uiLocale() === "uk" ? "URL прапора (ПК)" : uiLocale() === "et" ? "Lipu URL (lauaarvuti)" : "Flag URL (desktop)";
    const flagRangeMobileLabel = uiLocale() === "ru" ? "URL флага (телефон)" : uiLocale() === "uk" ? "URL прапора (телефон)" : uiLocale() === "et" ? "Lipu URL (telefon)" : "Flag URL (mobile)";
    const flagRangeUploadDesktopLabel = uiLocale() === "ru" ? "Файл (ПК)" : uiLocale() === "uk" ? "Файл (ПК)" : uiLocale() === "et" ? "Fail (lauaarvuti)" : "File (desktop)";
    const flagRangeUploadMobileLabel = uiLocale() === "ru" ? "Файл (телефон)" : uiLocale() === "uk" ? "Файл (телефон)" : uiLocale() === "et" ? "Fail (telefon)" : "File (mobile)";
    const flagRangeRemoveLabel = uiLocale() === "ru" ? "Удалить" : uiLocale() === "uk" ? "Видалити" : uiLocale() === "et" ? "Eemalda" : "Remove";
    const flagRangeLimitText = uiLocale() === "ru" ? "Можно добавить максимум 10 флагов по годам." : uiLocale() === "uk" ? "Можна додати максимум 10 прапорів за роками." : uiLocale() === "et" ? "Lisada saab kuni 10 aastavahemiku lippu." : "You can add up to 10 date-based flags.";
    const flagRangeInvalidText = uiLocale() === "ru" ? "Укажите корректные годы (С года <= По год)." : uiLocale() === "uk" ? "Вкажіть коректні роки (Р— року <= До року)." : uiLocale() === "et" ? "Sisesta korrektsed aastad (algus <= lopp)." : "Use valid years (from <= to).";

    const items = Array.isArray(ctx?.data?.items) ? ctx.data.items : [];
    const byCountry = new Map();
    items.forEach((item) => {
      const normalized = normalizeCountryBackground(item, item?.country || "");
      if (normalized?.country) byCountry.set(normalized.country, normalized);
    });
    const countryPlaceholderLabel = uiText("selectCountry");
    const normalizeCountrySearchValue = (value = "") => String(value || "")
      .toLowerCase()
      .trim()
      .replace(/\s+/g, " ");
    const countryOptions = Array.from(countrySelect.options)
      .map((opt) => ({
        value: normalizeSongCountry(opt.value || "") || "",
        label: String(opt.textContent || "").trim(),
      }))
      .filter((opt) => opt.value && opt.label);
    const renderCountryOptions = (list = [], selectedValue = "") => {
      const normalizedSelected = normalizeSongCountry(selectedValue || "") || "";
      const safeList = Array.isArray(list) ? list.filter((opt) => opt?.value) : [];
      countrySelect.innerHTML = "";
      const placeholder = document.createElement("option");
      placeholder.value = "";
      placeholder.textContent = countryPlaceholderLabel;
      countrySelect.appendChild(placeholder);
      const selectedOption = normalizedSelected
        ? countryOptions.find((opt) => opt.value === normalizedSelected) || null
        : null;
      const renderList = selectedOption && !safeList.some((opt) => opt.value === selectedOption.value)
        ? [selectedOption, ...safeList]
        : safeList;
      renderList.forEach((opt) => {
        const option = document.createElement("option");
        option.value = opt.value;
        option.textContent = opt.label;
        countrySelect.appendChild(option);
      });
      if (normalizedSelected) {
        countrySelect.value = normalizedSelected;
      }
    };
    const filterCountryOptions = (queryRaw = "") => {
      const query = normalizeCountrySearchValue(queryRaw);
      if (!query) return [...countryOptions];
      return countryOptions.filter((opt) => (
        normalizeCountrySearchValue(opt.label).includes(query)
        || opt.value.includes(query)
      ));
    };
    const pickCountryByQuery = (queryRaw = "") => {
      const query = normalizeCountrySearchValue(queryRaw);
      if (!query) return "";
      const exactCode = countryOptions.find((opt) => opt.value === query);
      if (exactCode) return exactCode.value;
      const exactLabel = countryOptions.find((opt) => normalizeCountrySearchValue(opt.label) === query);
      if (exactLabel) return exactLabel.value;
      const startsWith = countryOptions.find((opt) => normalizeCountrySearchValue(opt.label).startsWith(query));
      if (startsWith) return startsWith.value;
      const contains = countryOptions.find((opt) => (
        normalizeCountrySearchValue(opt.label).includes(query)
        || opt.value.includes(query)
      ));
      return contains ? contains.value : "";
    };
    const syncCountrySearchInput = () => {
      if (!countrySearchInput) return;
      const selected = normalizeSongCountry(countrySelect.value || "") || "";
      const selectedOption = countryOptions.find((opt) => opt.value === selected);
      countrySearchInput.value = selectedOption ? selectedOption.label : "";
    };
    const applyCountryFromSearch = (queryRaw = "", triggerChange = true) => {
      const nextCountry = pickCountryByQuery(queryRaw);
      if (!nextCountry) return false;
      renderCountryOptions(filterCountryOptions(queryRaw), nextCountry);
      const hasChanged = countrySelect.value !== nextCountry;
      countrySelect.value = nextCountry;
      if (hasChanged && triggerChange) {
        countrySelect.dispatchEvent(new Event("change"));
      }
      return true;
    };
    renderCountryOptions(countryOptions, countrySelect.value || "");

    const desktopRefs = {
      url: qs("ab_desktop_url"),
      file: qs("ab_desktop_file"),
      focusX: qs("ab_desktop_focus_x"),
      focusY: qs("ab_desktop_focus_y"),
      zoom: qs("ab_desktop_zoom"),
      zoomVal: qs("ab_desktop_zoom_val"),
      preview: qs("ab_preview_desktop"),
      scroll: qs("ab_desktop_scroll"),
      scrollVal: qs("ab_desktop_scroll_val"),
      scrollPreview: qs("ab_scroll_preview_desktop"),
      scrollImg: qs("ab_scroll_img_desktop"),
      scrollDimTop: qs("ab_scroll_dim_top_desktop"),
      scrollDimBottom: qs("ab_scroll_dim_bottom_desktop"),
      scrollViewport: qs("ab_scroll_viewport_desktop"),
      standard: COUNTRY_BACKGROUND_STANDARDS.desktop,
      viewport: COUNTRY_BACKGROUND_VIEWPORTS.desktop,
    };
    const mobileRefs = {
      url: qs("ab_mobile_url"),
      file: qs("ab_mobile_file"),
      focusX: qs("ab_mobile_focus_x"),
      focusY: qs("ab_mobile_focus_y"),
      zoom: qs("ab_mobile_zoom"),
      zoomVal: qs("ab_mobile_zoom_val"),
      preview: qs("ab_preview_mobile"),
      scroll: qs("ab_mobile_scroll"),
      scrollVal: qs("ab_mobile_scroll_val"),
      scrollPreview: qs("ab_scroll_preview_mobile"),
      scrollImg: qs("ab_scroll_img_mobile"),
      scrollDimTop: qs("ab_scroll_dim_top_mobile"),
      scrollDimBottom: qs("ab_scroll_dim_bottom_mobile"),
      scrollViewport: qs("ab_scroll_viewport_mobile"),
      standard: COUNTRY_BACKGROUND_STANDARDS.mobile,
      viewport: COUNTRY_BACKGROUND_VIEWPORTS.mobile,
    };
    const scopeRefs = {
      wrap: qs("ab_period_scope_wrap"),
      select: qs("ab_period_scope"),
    };
    const flagRefs = {
      urlDesktop: qs("ab_flag_url_desktop"),
      fileDesktop: qs("ab_flag_file_desktop"),
      urlMobile: qs("ab_flag_url_mobile"),
      fileMobile: qs("ab_flag_file_mobile"),
      previewLongDesktop: qs("ab_flag_preview_long_desktop"),
      previewLongMobile: qs("ab_flag_preview_long_mobile"),
      rangesWrap: qs("ab_flag_ranges"),
      addRangeBtn: qs("ab_flag_range_add"),
    };
    const flagState = {
      raw: "",
      resolvedDesktop: "",
      resolvedMobile: "",
      ranges: [],
    };
    const variantRefs = { desktop: desktopRefs, mobile: mobileRefs };
    const variantBaseSource = { desktop: "", mobile: "" };
    const variantConfigState = {
      desktop: createEmptyPeriodImageConfig(),
      mobile: createEmptyPeriodImageConfig(),
    };
    const variantDebounce = { desktop: 0, mobile: 0 };
    const variantMetrics = {
      desktop: { src: "", width: 0, height: 0 },
      mobile: { src: "", width: 0, height: 0 },
    };
    const variantDrag = {
      desktop: { pointerId: null, startX: 0, startY: 0, startFocusX: 50, startFocusY: 50, active: false, holdTimer: 0 },
      mobile: { pointerId: null, startX: 0, startY: 0, startFocusX: 50, startFocusY: 50, active: false, holdTimer: 0 },
    };
    const touchDragHoldMs = 180;
    const touchMoveCancelPx = 10;
    const activePeriodScope = () => {
      const raw = String(scopeRefs.select?.value || "default").trim();
      if (raw === "default") return "default";
      const period = normalizeSongPeriod(raw);
      return period || "default";
    };
    let activeEditorScope = "default";
    const setActiveEditorScope = (scope) => {
      const raw = String(scope || "").trim();
      if (raw === "default") {
        activeEditorScope = "default";
        return;
      }
      const period = normalizeSongPeriod(raw);
      activeEditorScope = period || "default";
    };
    const updatePeriodScopeVisibility = () => {
      const country = normalizeSongCountry(countrySelect.value || "");
      const isUssr = country === "ussr";
      if (scopeRefs.wrap) scopeRefs.wrap.classList.toggle("hidden", !isUssr);
      if (!isUssr && scopeRefs.select) scopeRefs.select.value = "default";
    };
    const persistVariantScopeValue = (kind, scopeOverride = null) => {
      const refs = variantRefs[kind];
      if (!refs) return;
      const scope = scopeOverride ? (normalizeSongPeriod(scopeOverride) || (String(scopeOverride).trim() === "default" ? "default" : "default")) : activeEditorScope;
      const value = String(refs.url?.value || "").trim();
      if (scope === "default") {
        variantConfigState[kind].default = value;
      } else if (value) {
        variantConfigState[kind].periods[scope] = value;
      } else {
        delete variantConfigState[kind].periods[scope];
      }
    };
    const persistAllVariantScopeValues = (scopeOverride = null) => {
      persistVariantScopeValue("desktop", scopeOverride);
      persistVariantScopeValue("mobile", scopeOverride);
    };
    const refreshVariantUrlsFromScope = () => {
      const scope = activePeriodScope();
      const desktopUrl = resolvePeriodImageForEditorScope(variantConfigState.desktop, { scope });
      const mobileUrl = resolvePeriodImageForEditorScope(variantConfigState.mobile, { scope });
      variantBaseSource.desktop = "";
      variantBaseSource.mobile = "";
      if (desktopRefs.file) desktopRefs.file.value = "";
      if (mobileRefs.file) mobileRefs.file.value = "";
      if (desktopRefs.url) desktopRefs.url.value = desktopUrl;
      if (mobileRefs.url) mobileRefs.url.value = mobileUrl;
    };

    const readVariantFocus = (kind) => {
      const refs = variantRefs[kind];
      return {
        focusX: clampPercent(refs?.focusX?.value || 50),
        focusY: clampPercent(refs?.focusY?.value || 50),
      };
    };

    const writeVariantFocus = (kind, focusX, focusY) => {
      const refs = variantRefs[kind];
      if (!refs) return;
      const safeX = clampPercent(focusX);
      const safeY = clampPercent(focusY);
      if (refs.focusX) refs.focusX.value = `${safeX}`;
      if (refs.focusY) refs.focusY.value = `${safeY}`;
    };

    const readVariantZoom = (kind) => {
      const refs = variantRefs[kind];
      return clampZoomLevel(refs?.zoom?.value || 1);
    };

    const writeVariantZoom = (kind, value) => {
      const refs = variantRefs[kind];
      if (!refs?.zoom) return;
      refs.zoom.value = `${clampZoomLevel(value)}`;
    };

    const updateZoomLabel = (refs) => {
      if (!refs?.zoomVal) return;
      refs.zoomVal.textContent = `${clampZoomLevel(refs.zoom?.value || 1)}`;
    };

    const sourceUrlForKind = (kind) => {
      const refs = variantRefs[kind];
      return String(variantBaseSource[kind] || refs?.url?.value || "").trim();
    };

    const loadMetricsForKind = async (kind, sourceUrl) => {
      const safeSource = String(sourceUrl || "").trim();
      if (!safeSource) {
        variantMetrics[kind] = { src: "", width: 0, height: 0 };
        return;
      }
      if (variantMetrics[kind].src === safeSource && variantMetrics[kind].width > 0 && variantMetrics[kind].height > 0) return;
      const image = await loadImageElement(safeSource);
      variantMetrics[kind] = {
        src: safeSource,
        width: Math.max(1, Number(image.naturalWidth || image.width || 1)),
        height: Math.max(1, Number(image.naturalHeight || image.height || 1)),
      };
    };

    const previewGeometry = (kind) => {
      const refs = variantRefs[kind];
      const preview = refs?.preview;
      if (!preview) return null;
      const previewWidth = Math.max(1, Number(preview.clientWidth || 0));
      const previewHeight = Math.max(1, Number(preview.clientHeight || 0));
      if (!previewWidth || !previewHeight) return null;
      const metric = variantMetrics[kind];
      const sourceWidth = Math.max(1, Number(metric?.width || refs.standard.width));
      const sourceHeight = Math.max(1, Number(metric?.height || refs.standard.height));
      const baseScale = Math.max(previewWidth / sourceWidth, previewHeight / sourceHeight);
      const zoomScale = zoomLevelToScale(readVariantZoom(kind));
      const renderedWidth = sourceWidth * baseScale * zoomScale;
      const renderedHeight = sourceHeight * baseScale * zoomScale;
      const maxOffsetX = Math.max(0, renderedWidth - previewWidth);
      const maxOffsetY = Math.max(0, renderedHeight - previewHeight);
      return {
        previewWidth,
        previewHeight,
        renderedWidth,
        renderedHeight,
        maxOffsetX,
        maxOffsetY,
      };
    };

    const applyPreview = (refs, kind) => {
      if (!refs?.preview) return;
      const imageUrl = sourceUrlForKind(kind);
      const { focusX, focusY } = readVariantFocus(kind);
      updateZoomLabel(refs);
      if (!imageUrl) {
        refs.preview.classList.add("is-empty");
        refs.preview.style.backgroundImage = "none";
        refs.preview.style.backgroundPosition = "50% 50%";
        refs.preview.style.backgroundSize = "cover";
        return;
      }
      refs.preview.classList.remove("is-empty");
      refs.preview.style.backgroundImage = toCssUrlValue(imageUrl);
      const geometry = previewGeometry(kind);
      if (!geometry) {
        refs.preview.style.backgroundSize = "cover";
        refs.preview.style.backgroundPosition = `${focusX}% ${focusY}%`;
        return;
      }
      const posX = -geometry.maxOffsetX * (focusX / 100);
      const posY = -geometry.maxOffsetY * (focusY / 100);
      refs.preview.style.backgroundSize = `${geometry.renderedWidth}px ${geometry.renderedHeight}px`;
      refs.preview.style.backgroundPosition = `${posX}px ${posY}px`;
    };

    const applyAllPreviews = () => {
      applyPreview(desktopRefs, "desktop");
      applyPreview(mobileRefs, "mobile");
    };

    const readScrollPercent = (refs) => {
      const raw = Number(refs?.scroll?.value || 0);
      if (!Number.isFinite(raw)) return 0;
      return Math.max(0, Math.min(100, Math.round(raw)));
    };

    const maxParallaxShiftForKind = (kind, viewportHeight) => {
      const safeH = Math.max(1, Number(viewportHeight || 1));
      if (kind === "mobile") {
        return Math.max(90, Math.min(320, Math.round(safeH * 0.34)));
      }
      return Math.max(180, Math.min(560, Math.round(safeH * 0.52)));
    };

    const applyScrollMinimap = (kind) => {
      const refs = variantRefs[kind];
      if (!refs?.scrollPreview || !refs.scrollImg || !refs.scrollDimTop || !refs.scrollDimBottom || !refs.scrollViewport) return;
      const imgUrl = String(refs.url?.value || "").trim();
      const scrollPct = readScrollPercent(refs);
      if (refs.scrollVal) refs.scrollVal.textContent = `${scrollPct}`;

      if (!imgUrl) {
        refs.scrollPreview.classList.add("is-empty");
        refs.scrollImg.removeAttribute("src");
        refs.scrollViewport.style.top = "0%";
        refs.scrollViewport.style.height = "0%";
        refs.scrollDimTop.style.height = "0%";
        refs.scrollDimBottom.style.height = "100%";
        return;
      }

      refs.scrollPreview.classList.remove("is-empty");
      if (refs.scrollImg.getAttribute("src") !== imgUrl) refs.scrollImg.setAttribute("src", imgUrl);

      const focusY = clampPercent(refs.focusY?.value || 50);
      const imageHeight = Math.max(1, Number(refs.standard?.height || 1));
      const viewportHeight = Math.max(1, Number(refs.viewport?.height || 1));
      const overflow = Math.max(0, imageHeight - viewportHeight);

      const maxShift = maxParallaxShiftForKind(kind, viewportHeight);
      // Runtime parallax uses ratio ~0.2 (bg : content). In admin we don't have real card height,
      // so we use a short-card approximation: scrollRange ~= 0.46 * viewportHeight.
      const approxScrollRange = Math.max(1, Math.round(viewportHeight * 0.46));
      const rangePx = Math.min(maxShift, Math.max(0, Math.round(approxScrollRange * 0.2)));
      const shiftPx = Math.round((0.5 - scrollPct / 100) * rangePx);

      let topPx = overflow * (focusY / 100) - shiftPx;
      topPx = Math.max(0, Math.min(overflow, topPx));

      const topPct = (topPx / imageHeight) * 100;
      const winPct = (viewportHeight / imageHeight) * 100;
      const bottomPct = Math.max(0, 100 - (topPct + winPct));

      refs.scrollViewport.style.top = `${topPct}%`;
      refs.scrollViewport.style.height = `${winPct}%`;
      refs.scrollDimTop.style.height = `${topPct}%`;
      refs.scrollDimBottom.style.height = `${bottomPct}%`;
    };

    const applyAllMinimaps = () => {
      applyScrollMinimap("desktop");
      applyScrollMinimap("mobile");
    };

    const updateUpdatedAt = (value = "") => {
      if (!updatedNode) return;
      updatedNode.textContent = String(value || "").trim();
    };

    const applyFlagPreviewNode = (node, url) => {
      if (!node) return;
      const hasFlag = !!url;
      node.classList.toggle("yt-card-has-flag", hasFlag);
      node.classList.toggle("is-empty", !hasFlag);
      if (hasFlag) node.style.setProperty("--yt-card-flag-image", toCssUrlValue(url));
      else node.style.removeProperty("--yt-card-flag-image");
    };

    const applyFlagPreview = () => {
      const longDesktopUrl = String(flagRefs.urlDesktop?.value || flagRefs.previewLongDesktop?.dataset.flagUrl || "").trim();
      const longMobileUrl = String(flagRefs.urlMobile?.value || flagRefs.previewLongMobile?.dataset.flagUrl || "").trim() || longDesktopUrl;
      applyFlagPreviewNode(flagRefs.previewLongDesktop, longDesktopUrl);
      applyFlagPreviewNode(flagRefs.previewLongMobile, longMobileUrl);
    };

    const normalizeRangeDraft = (row = {}) => {
      const from = parseFlagYear(row.from);
      const to = parseFlagYear(row.to);
      return {
        from: from || "",
        to: to || "",
        long: cleanFlagPreviewUrl(row.long || ""),
        long_mobile: cleanFlagPreviewUrl(row.long_mobile || ""),
      };
    };

    const collectFlagRanges = () => {
      const rows = flagRefs.rangesWrap
        ? Array.from(flagRefs.rangesWrap.querySelectorAll(".ab-flag-range-row"))
        : [];
      return rows
        .map((row) => ({
          from: parseFlagYear(row.querySelector("[data-role='from']")?.value || ""),
          to: parseFlagYear(row.querySelector("[data-role='to']")?.value || ""),
          long: cleanFlagPreviewUrl(row.querySelector("[data-role='long']")?.value || ""),
          long_mobile: cleanFlagPreviewUrl(row.querySelector("[data-role='long_mobile']")?.value || ""),
        }))
        .filter((entry) => entry.from && entry.to && entry.from <= entry.to && (entry.long || entry.long_mobile))
        .sort((a, b) => a.from - b.from || a.to - b.to)
        .slice(0, 10)
        .map((entry) => ({
          from: entry.from,
          to: entry.to,
          long: entry.long || "",
          long_mobile: entry.long_mobile || "",
          square: entry.long || entry.long_mobile || "",
        }));
    };

    const createFlagRangeRow = (initial = {}) => {
      const row = document.createElement("div");
      row.className = "ab-flag-range-row";
      row.innerHTML = `
        <div class="ab-flag-range-grid">
          <label class="field">
            <div class="fieldLabel">${esc(flagRangeFromLabel)}</div>
            <input class="input" data-role="from" type="number" min="1" max="3000" step="1" />
          </label>
          <label class="field">
            <div class="fieldLabel">${esc(flagRangeToLabel)}</div>
            <input class="input" data-role="to" type="number" min="1" max="3000" step="1" />
          </label>
          <label class="field">
            <div class="fieldLabel">${esc(flagRangeDesktopLabel)}</div>
            <input class="input" data-role="long" placeholder="https://... / /picture/..." />
          </label>
          <label class="field">
            <div class="fieldLabel">${esc(flagRangeMobileLabel)}</div>
            <input class="input" data-role="long_mobile" placeholder="https://... / /picture/..." />
          </label>
          <button class="btn ghost" type="button" data-role="remove">${esc(flagRangeRemoveLabel)}</button>
        </div>
        <div class="ab-flag-range-upload">
          <label class="field">
            <div class="fieldLabel">${esc(flagRangeUploadDesktopLabel)} · ${FLAG_CARD_STANDARDS.desktopLong.width}x${FLAG_CARD_STANDARDS.desktopLong.height}</div>
            <input class="input" data-role="file_long" type="file" accept="image/*" />
          </label>
          <label class="field">
            <div class="fieldLabel">${esc(flagRangeUploadMobileLabel)} · ${FLAG_CARD_STANDARDS.mobileLong.width}x${FLAG_CARD_STANDARDS.mobileLong.height}</div>
            <input class="input" data-role="file_long_mobile" type="file" accept="image/*" />
          </label>
        </div>
      `;
      const fromInput = row.querySelector("[data-role='from']");
      const toInput = row.querySelector("[data-role='to']");
      const longInput = row.querySelector("[data-role='long']");
      const longMobileInput = row.querySelector("[data-role='long_mobile']");
      const fileLong = row.querySelector("[data-role='file_long']");
      const fileLongMobile = row.querySelector("[data-role='file_long_mobile']");
      const removeBtn = row.querySelector("[data-role='remove']");
      const safe = normalizeRangeDraft(initial);
      if (fromInput) fromInput.value = safe.from ? `${safe.from}` : "";
      if (toInput) toInput.value = safe.to ? `${safe.to}` : "";
      if (longInput) longInput.value = safe.long || "";
      if (longMobileInput) longMobileInput.value = safe.long_mobile || "";
      removeBtn?.addEventListener("click", () => {
        row.remove();
      });
      fileLong?.addEventListener("change", async () => {
        const file = fileLong?.files?.[0];
        if (!file || !longInput) return;
        try {
          const sourceDataUrl = await readFileAsDataUrl(file);
          longInput.value = await standardizeFlagImageHorizontalCrop(
            sourceDataUrl,
            FLAG_CARD_STANDARDS.desktopLong.width,
            FLAG_CARD_STANDARDS.desktopLong.height
          );
        } catch {
          showStatusOverlay(invalidFlagText, "error");
        }
      });
      fileLongMobile?.addEventListener("change", async () => {
        const file = fileLongMobile?.files?.[0];
        if (!file || !longMobileInput) return;
        try {
          const sourceDataUrl = await readFileAsDataUrl(file);
          longMobileInput.value = await standardizeFlagImageHorizontalCrop(
            sourceDataUrl,
            FLAG_CARD_STANDARDS.mobileLong.width,
            FLAG_CARD_STANDARDS.mobileLong.height
          );
        } catch {
          showStatusOverlay(invalidFlagText, "error");
        }
      });
      return row;
    };

    const renderFlagRanges = (ranges = []) => {
      if (!flagRefs.rangesWrap) return;
      flagRefs.rangesWrap.innerHTML = "";
      const normalized = (Array.isArray(ranges) ? ranges : [])
        .map((row) => normalizeFlagPreviewRange(row))
        .filter(Boolean)
        .slice(0, 10);
      normalized.forEach((row) => {
        flagRefs.rangesWrap.appendChild(createFlagRangeRow(row));
      });
    };

    const fillEditor = (country, options = {}) => {
      const normalizedCountry = normalizeSongCountry(country || "") || "";
      const background = normalizeCountryBackground(byCountry.get(normalizedCountry) || null, normalizedCountry);
      clearTimeout(variantDebounce.desktop);
      clearTimeout(variantDebounce.mobile);
      variantBaseSource.desktop = "";
      variantBaseSource.mobile = "";
      if (desktopRefs.file) desktopRefs.file.value = "";
      if (mobileRefs.file) mobileRefs.file.value = "";
      variantConfigState.desktop = parsePeriodImageConfig(background.desktop_image_value || background.desktop_image_url || "");
      variantConfigState.mobile = parsePeriodImageConfig(background.mobile_image_value || background.mobile_image_url || "");
      updatePeriodScopeVisibility();
      const requestedScope = String(options.scope || "").trim();
      if (scopeRefs.select) {
        const countryKey = normalizeSongCountry(countrySelect.value || normalizedCountry);
        const isUssr = countryKey === "ussr";
        const periodScope = normalizeSongPeriod(requestedScope);
        if (isUssr && periodScope) scopeRefs.select.value = periodScope;
        else scopeRefs.select.value = "default";
      }
      setActiveEditorScope(activePeriodScope());
      refreshVariantUrlsFromScope();
      writeVariantFocus("desktop", Math.round(background.desktop_focus_x), Math.round(background.desktop_focus_y));
      writeVariantFocus("mobile", Math.round(background.mobile_focus_x), Math.round(background.mobile_focus_y));
      writeVariantZoom("desktop", 1);
      writeVariantZoom("mobile", 1);
      const flagPreviewDesktopUrl = resolveFlagPreviewImage(background.preview_flag_config || null, {
        country: normalizedCountry,
        kind: "long",
        device: "desktop",
      });
      const flagPreviewMobileUrl = resolveFlagPreviewImage(background.preview_flag_config || null, {
        country: normalizedCountry,
        kind: "long",
        device: "mobile",
      });
      const parsedFlagConfig = parseFlagPreviewConfig(background.preview_flag_image_value || background.preview_flag_image_url || "");
      flagState.raw = String(background.preview_flag_image_value || background.preview_flag_image_url || "").trim();
      flagState.resolvedDesktop = flagPreviewDesktopUrl;
      flagState.resolvedMobile = flagPreviewMobileUrl;
      flagState.ranges = Array.isArray(parsedFlagConfig.ranges) ? parsedFlagConfig.ranges : [];
      if (flagRefs.fileDesktop) flagRefs.fileDesktop.value = "";
      if (flagRefs.fileMobile) flagRefs.fileMobile.value = "";
      if (flagRefs.urlDesktop) flagRefs.urlDesktop.value = flagPreviewDesktopUrl;
      if (flagRefs.urlMobile) flagRefs.urlMobile.value = flagPreviewMobileUrl;
      if (flagRefs.previewLongDesktop) flagRefs.previewLongDesktop.dataset.flagUrl = flagPreviewDesktopUrl;
      if (flagRefs.previewLongMobile) flagRefs.previewLongMobile.dataset.flagUrl = flagPreviewMobileUrl;
      renderFlagRanges(flagState.ranges);
      applyFlagPreview();
      updateUpdatedAt(background.updated_at);
      const desktopSource = String(desktopRefs.url?.value || "").trim();
      const mobileSource = String(mobileRefs.url?.value || "").trim();
      Promise.all([
        loadMetricsForKind("desktop", desktopSource).catch(() => { variantMetrics.desktop = { src: "", width: 0, height: 0 }; }),
        loadMetricsForKind("mobile", mobileSource).catch(() => { variantMetrics.mobile = { src: "", width: 0, height: 0 }; }),
      ]).finally(() => {
        applyAllPreviews();
        applyAllMinimaps();
      });
    };

    const rebuildFromBaseSource = async (kind) => {
      const refs = variantRefs[kind];
      const baseSource = variantBaseSource[kind];
      if (!refs || !baseSource) return;
      const { focusX, focusY } = readVariantFocus(kind);
      const zoomLevel = readVariantZoom(kind);
      const out = await standardizeBackgroundImage(baseSource, refs.standard.width, refs.standard.height, focusX, focusY, zoomLevel);
      if (refs.url) refs.url.value = out;
      persistVariantScopeValue(kind);
    };

    const scheduleRebuild = (kind) => {
      clearTimeout(variantDebounce[kind]);
      variantDebounce[kind] = setTimeout(async () => {
        try {
          await rebuildFromBaseSource(kind);
          applyPreview(variantRefs[kind], kind);
          applyScrollMinimap(kind);
        } catch (e) {
          showStatusOverlay(invalidImageText, "error");
        }
      }, 140);
    };

    const wireVariant = (kind, refs) => {
      refs.url?.addEventListener("input", () => {
        variantBaseSource[kind] = "";
        persistVariantScopeValue(kind);
        loadMetricsForKind(kind, refs.url?.value || "")
          .catch(() => { variantMetrics[kind] = { src: "", width: 0, height: 0 }; })
          .finally(() => {
            applyPreview(refs, kind);
            applyScrollMinimap(kind);
          });
      });
      refs.zoom?.addEventListener("input", () => {
        updateZoomLabel(refs);
        applyPreview(refs, kind);
        applyScrollMinimap(kind);
        if (variantBaseSource[kind]) scheduleRebuild(kind);
      });
      refs.file?.addEventListener("change", async () => {
        const file = refs.file?.files?.[0];
        if (!file) return;
        try {
          const sourceDataUrl = await readFileAsDataUrl(file);
          variantBaseSource[kind] = sourceDataUrl;
          await loadMetricsForKind(kind, sourceDataUrl);
          await rebuildFromBaseSource(kind);
          applyPreview(refs, kind);
          applyScrollMinimap(kind);
        } catch (e) {
          showStatusOverlay(invalidImageText, "error");
        }
      });

      const cancelHold = () => {
        const drag = variantDrag[kind];
        if (drag.holdTimer) clearTimeout(drag.holdTimer);
        drag.holdTimer = 0;
      };
      const endDrag = () => {
        const drag = variantDrag[kind];
        cancelHold();
        drag.pointerId = null;
        drag.active = false;
        refs.preview?.classList.remove("is-dragging");
      };
      refs.preview?.addEventListener("pointerdown", (event) => {
        if (event.pointerType === "mouse" && event.button !== 0) return;
        if (!sourceUrlForKind(kind)) return;
        const drag = variantDrag[kind];
        cancelHold();
        drag.pointerId = event.pointerId;
        drag.startX = event.clientX;
        drag.startY = event.clientY;
        const current = readVariantFocus(kind);
        drag.startFocusX = current.focusX;
        drag.startFocusY = current.focusY;

        if (event.pointerType === "touch") {
          drag.active = false;
          drag.holdTimer = setTimeout(() => {
            if (drag.pointerId !== event.pointerId) return;
            drag.active = true;
            refs.preview?.classList.add("is-dragging");
            refs.preview?.setPointerCapture?.(event.pointerId);
          }, touchDragHoldMs);
          return;
        }

        drag.active = true;
        refs.preview?.classList.add("is-dragging");
        refs.preview?.setPointerCapture?.(event.pointerId);
        event.preventDefault();
      });
      refs.preview?.addEventListener("pointermove", (event) => {
        const drag = variantDrag[kind];
        if (drag.pointerId !== event.pointerId) return;
        if (!drag.active) {
          if (event.pointerType === "touch") {
            const distanceX = Math.abs(event.clientX - drag.startX);
            const distanceY = Math.abs(event.clientY - drag.startY);
            if (distanceX > touchMoveCancelPx || distanceY > touchMoveCancelPx) {
              endDrag();
            }
          }
          return;
        }
        const geometry = previewGeometry(kind);
        if (!geometry) return;
        let nextX = drag.startFocusX;
        let nextY = drag.startFocusY;
        if (geometry.maxOffsetX > 0) {
          const deltaX = event.clientX - drag.startX;
          nextX = drag.startFocusX - (deltaX / geometry.maxOffsetX) * 100;
        } else {
          nextX = 50;
        }
        if (geometry.maxOffsetY > 0) {
          const deltaY = event.clientY - drag.startY;
          nextY = drag.startFocusY - (deltaY / geometry.maxOffsetY) * 100;
        } else {
          nextY = 50;
        }
        writeVariantFocus(kind, nextX, nextY);
        applyPreview(refs, kind);
        applyScrollMinimap(kind);
        if (variantBaseSource[kind]) scheduleRebuild(kind);
        event.preventDefault();
      });
      refs.preview?.addEventListener("pointerup", endDrag);
      refs.preview?.addEventListener("pointercancel", endDrag);
      refs.preview?.addEventListener("lostpointercapture", endDrag);
    };

    wireVariant("desktop", desktopRefs);
    wireVariant("mobile", mobileRefs);

    scopeRefs.select?.addEventListener("change", () => {
      const previousScope = activeEditorScope;
      persistAllVariantScopeValues(previousScope);
      setActiveEditorScope(activePeriodScope());
      refreshVariantUrlsFromScope();
      Promise.all([
        loadMetricsForKind("desktop", desktopRefs.url?.value || "").catch(() => { variantMetrics.desktop = { src: "", width: 0, height: 0 }; }),
        loadMetricsForKind("mobile", mobileRefs.url?.value || "").catch(() => { variantMetrics.mobile = { src: "", width: 0, height: 0 }; }),
      ]).finally(() => {
        applyAllPreviews();
        applyAllMinimaps();
      });
    });

    if (canEditFlags) {
      flagRefs.addRangeBtn?.addEventListener("click", () => {
        const existing = flagRefs.rangesWrap ? flagRefs.rangesWrap.querySelectorAll(".ab-flag-range-row").length : 0;
        if (existing >= 10) {
          showStatusOverlay(flagRangeLimitText, "info");
          return;
        }
        flagRefs.rangesWrap?.appendChild(createFlagRangeRow());
      });
      flagRefs.urlDesktop?.addEventListener("input", () => applyFlagPreview());
      flagRefs.urlMobile?.addEventListener("input", () => applyFlagPreview());
      flagRefs.fileDesktop?.addEventListener("change", async () => {
        const file = flagRefs.fileDesktop?.files?.[0];
        if (!file) return;
        try {
          const sourceDataUrl = await readFileAsDataUrl(file);
          const standardized = await standardizeFlagImageHorizontalCrop(
            sourceDataUrl,
            FLAG_CARD_STANDARDS.desktopLong.width,
            FLAG_CARD_STANDARDS.desktopLong.height
          );
          if (flagRefs.urlDesktop) flagRefs.urlDesktop.value = standardized;
          applyFlagPreview();
        } catch (e) {
          const msg = uiLocale() === "ru"
            ? `Нужен формат ${FLAG_CARD_STANDARDS.desktopLong.width}x${FLAG_CARD_STANDARDS.desktopLong.height} или более широкий (обрезка только по бокам).`
            : invalidImageText;
          showStatusOverlay(msg, "error");
        }
      });
      flagRefs.fileMobile?.addEventListener("change", async () => {
        const file = flagRefs.fileMobile?.files?.[0];
        if (!file) return;
        try {
          const sourceDataUrl = await readFileAsDataUrl(file);
          const standardized = await standardizeFlagImageHorizontalCrop(
            sourceDataUrl,
            FLAG_CARD_STANDARDS.mobileLong.width,
            FLAG_CARD_STANDARDS.mobileLong.height
          );
          if (flagRefs.urlMobile) flagRefs.urlMobile.value = standardized;
          applyFlagPreview();
        } catch (e) {
          const msg = uiLocale() === "ru"
            ? `Нужен формат ${FLAG_CARD_STANDARDS.mobileLong.width}x${FLAG_CARD_STANDARDS.mobileLong.height} или более широкий (обрезка только по бокам).`
            : invalidImageText;
          showStatusOverlay(msg, "error");
        }
      });
      openPreviewBtn?.addEventListener("click", async () => {
        const country = normalizeSongCountry(countrySelect.value || "");
        if (!country) return;
        const popup = window.open("about:blank", "_blank", "noopener");
        try {
          const out = await api.songs({ country, page: 1 });
          const first = Array.isArray(out?.items) ? out.items[0] : null;
          if (!first?.id) {
            try { popup?.close?.(); } catch {}
            const msg = uiLocale() === "ru"
              ? "Для этой страны нет опубликованных песен."
              : uiLocale() === "uk"
                ? "Для С†С–С”С— країни неає опублікованих пісень."
                : uiLocale() === "et"
                  ? "Selle riigi jaoks pole avaldatud laule."
                  : "There are no published songs for this country.";
            showStatusOverlay(msg, "info");
            return;
          }
          const target = new URL(window.location.href);
          target.hash = `#/song/${encodeURIComponent(first.id)}`;
          if (popup && !popup.closed) {
            popup.location.replace(target.toString());
          } else {
            window.open(target.toString(), "_blank", "noopener");
          }
        } catch (e) {
          try { popup?.close?.(); } catch {}
          showStatusOverlay(`${t("common.error")}: ${e?.message || t("common.error")}`, "error");
        }
      });
    }

    document.querySelectorAll(".ab-nav-btn").forEach((btn) => {
      btn.addEventListener("click", () => {
        const kind = String(btn.getAttribute("data-ab-kind") || "").trim();
        if (kind !== "desktop" && kind !== "mobile") return;
        if (btn.getAttribute("data-ab-center") === "1") {
          writeVariantFocus(kind, 50, 50);
        } else {
          const dx = Number(btn.getAttribute("data-ab-dx") || 0);
          const dy = Number(btn.getAttribute("data-ab-dy") || 0);
          const current = readVariantFocus(kind);
          writeVariantFocus(kind, current.focusX + dx, current.focusY + dy);
        }
        applyPreview(variantRefs[kind], kind);
        applyScrollMinimap(kind);
        if (variantBaseSource[kind]) scheduleRebuild(kind);
      });
    });

    countrySelect.addEventListener("change", () => {
      persistAllVariantScopeValues();
      fillEditor(countrySelect.value);
      syncCountrySearchInput();
      if (countrySearchInput) {
        renderCountryOptions(countryOptions, countrySelect.value || "");
      }
    });

    if (countrySearchInput) {
      countrySearchInput.addEventListener("input", () => {
        renderCountryOptions(filterCountryOptions(countrySearchInput.value || ""), countrySelect.value || "");
      });
      countrySearchInput.addEventListener("keydown", (event) => {
        if (event.key !== "Enter") return;
        event.preventDefault();
        const hasMatch = applyCountryFromSearch(countrySearchInput.value || "", true);
        if (!hasMatch) return;
        syncCountrySearchInput();
      });
      countrySearchInput.addEventListener("change", () => {
        const hasMatch = applyCountryFromSearch(countrySearchInput.value || "", true);
        if (!hasMatch) return;
        syncCountrySearchInput();
      });
      countrySearchInput.addEventListener("blur", () => {
        renderCountryOptions(countryOptions, countrySelect.value || "");
        syncCountrySearchInput();
      });
    }

    clearBtn.addEventListener("click", async () => {
      const country = normalizeSongCountry(countrySelect.value || "");
      if (!country) return;
      const keepScope = activePeriodScope();
      const initialText = clearBtn.textContent;
      clearBtn.disabled = true;
      try {
        await api.adminDeleteCountryBackground(country);
        byCountry.delete(country);
        fillEditor(country, { scope: keepScope });
        showStatusOverlay(`${clearedText}: ${country}`, "success");
      } catch (e) {
        const raw = String(e?.message || "").trim();
        if (/invalid flag image value/i.test(raw)) {
          showStatusOverlay(invalidFlagText, "error");
        } else if (/invalid image value/i.test(raw)) {
          showStatusOverlay(invalidImageText, "error");
        } else {
          showStatusOverlay(`${t("common.error")}: ${raw || t("common.error")}`, "error");
        }
      } finally {
        clearBtn.disabled = false;
        clearBtn.textContent = initialText;
      }
    });

    saveBtn.addEventListener("click", async () => {
      const country = normalizeSongCountry(countrySelect.value || "");
      if (!country) return;
      const keepScope = activePeriodScope();
      const initialText = saveBtn.textContent;
      saveBtn.disabled = true;
      try {
        clearTimeout(variantDebounce.desktop);
        clearTimeout(variantDebounce.mobile);
        if (variantBaseSource.desktop) await rebuildFromBaseSource("desktop");
        if (variantBaseSource.mobile) await rebuildFromBaseSource("mobile");
        persistAllVariantScopeValues();
        const payload = {
          country,
          desktop_image_url: serializePeriodImageConfig(variantConfigState.desktop),
          mobile_image_url: serializePeriodImageConfig(variantConfigState.mobile),
          desktop_focus_x: clampPercent(desktopRefs.focusX?.value || 50),
          desktop_focus_y: clampPercent(desktopRefs.focusY?.value || 50),
          mobile_focus_x: clampPercent(mobileRefs.focusX?.value || 50),
          mobile_focus_y: clampPercent(mobileRefs.focusY?.value || 50),
        };
        if (canEditFlags) {
          const nextDesktopFlagUrl = String(flagRefs.urlDesktop?.value || "").trim();
          const nextMobileFlagUrl = String(flagRefs.urlMobile?.value || "").trim() || nextDesktopFlagUrl;
          if (nextDesktopFlagUrl) {
            await assertExactImageDimensions(
              nextDesktopFlagUrl,
              FLAG_CARD_STANDARDS.desktopLong.width,
              FLAG_CARD_STANDARDS.desktopLong.height
            );
          }
          if (nextMobileFlagUrl) {
            await assertExactImageDimensions(
              nextMobileFlagUrl,
              FLAG_CARD_STANDARDS.mobileLong.width,
              FLAG_CARD_STANDARDS.mobileLong.height
            );
          }
          const nextRanges = collectFlagRanges();
          const rowCount = flagRefs.rangesWrap ? flagRefs.rangesWrap.querySelectorAll(".ab-flag-range-row").length : 0;
          if (rowCount > 0 && nextRanges.length === 0) {
            showStatusOverlay(flagRangeInvalidText, "error");
            saveBtn.disabled = false;
            saveBtn.textContent = initialText;
            return;
          }
          for (const range of nextRanges) {
            if (range.long) {
              await assertExactImageDimensions(
                range.long,
                FLAG_CARD_STANDARDS.desktopLong.width,
                FLAG_CARD_STANDARDS.desktopLong.height
              );
            }
            if (range.long_mobile) {
              await assertExactImageDimensions(
                range.long_mobile,
                FLAG_CARD_STANDARDS.mobileLong.width,
                FLAG_CARD_STANDARDS.mobileLong.height
              );
            }
          }
          const nextConfig = parseFlagPreviewConfig(flagState.raw || "");
          nextConfig.default = normalizeFlagPreviewEntry({
            long: nextDesktopFlagUrl,
            long_mobile: nextMobileFlagUrl,
            square: nextDesktopFlagUrl,
          });
          nextConfig.ranges = nextRanges;
          payload.preview_flag_image_url = serializeFlagPreviewConfig(nextConfig);
        }
        const out = await api.adminSaveCountryBackground(payload);
        if (out?.deleted) {
          byCountry.delete(country);
          fillEditor(country, { scope: keepScope });
          showStatusOverlay(`${clearedText}: ${country}`, "success");
        } else {
          const saved = normalizeCountryBackground(out?.item || payload, country);
          byCountry.set(country, saved);
          fillEditor(country, { scope: keepScope });
          showStatusOverlay(`${savedText}: ${country}`, "success");
        }
      } catch (e) {
        showStatusOverlay(`${t("common.error")}: ${e?.message || t("common.error")}`, "error");
      } finally {
        saveBtn.disabled = false;
        saveBtn.textContent = initialText;
      }
    });

    [desktopRefs, mobileRefs].forEach((refs) => {
      refs.scroll?.addEventListener("input", () => applyScrollMinimap(refs === mobileRefs ? "mobile" : "desktop"));
    });

    syncCountrySearchInput();
    fillEditor(countrySelect.value || "");
    return;
  }

  if (route.name === "admin" && ctx.section === "users") {
    document.querySelectorAll(".songCard").forEach((card) => {
      const toggle = card.querySelector(".au_admin_access");
      const permWrap = card.querySelector(".au_permissions_wrap");
      const scopeWrap = card.querySelector(".au_scope_wrap");
      const sync = () => {
        const isAdmin = toggle?.value === "1";
        permWrap?.classList.toggle("hidden", !isAdmin);
        scopeWrap?.classList.toggle("hidden", !isAdmin);
        if (permWrap instanceof HTMLDetailsElement) {
          permWrap.open = false;
        }
        if (scopeWrap instanceof HTMLDetailsElement) {
          scopeWrap.open = false;
        }
      };
      toggle?.addEventListener("change", sync);
      sync();
    });
    document.querySelectorAll("button[data-act='purgeUser']").forEach((btn) => btn.addEventListener("click", async () => {
      const id = btn.getAttribute("data-user-id");
      const prompt = uiLocale() === "ru"
        ? "Полностью удалить данные пользователя? Аккаунт будет очищен без блокировки."
        : uiLocale() === "et"
          ? "Kustuta kasutaja andmed taielikult? Konto puhastatakse ilma blokeerimiseta."
          : "Delete all user data? Account will be fully cleared without blocking.";
      if (!confirm(prompt)) return;
      try {
        await api.adminDeleteUserData(id);
        showStatusOverlay(uiLocale() === "ru"
          ? `Данные пользователя удалены: ${id}`
          : uiLocale() === "et"
            ? `Kasutaja andmed kustutati: ${id}`
            : `User data deleted: ${id}`, "success");
        location.hash = "#/admin/users";
      } catch (e) {
        showStatusOverlay(`${t("common.error")}: ${e?.message || t("common.error")}`, "error");
      }
    }));
    document.querySelectorAll("button[data-act='saveUser']").forEach((btn) => btn.addEventListener("click", async () => {
      const card = btn.closest(".songCard");
      const id = btn.getAttribute("data-user-id");
      const access = card.querySelector(".au_admin_access");
      if (!access || access.disabled) {
        showStatusOverlay(t("admin.superAdminLocked"), "error");
        return;
      }
      const role = access.value === "1" ? "admin" : "user";
      const permissions = role === "admin"
        ? Array.from(card.querySelectorAll(".au_perm:checked")).map((n) => n.value.trim()).filter(Boolean)
        : [];
      const scopeLanguages = role === "admin"
        ? Array.from(card.querySelectorAll(".au_scope_lang:checked")).map((n) => n.value.trim().toLowerCase()).filter(Boolean)
        : [];
      const normalizedScope = scopeLanguages.includes("*") ? ["*"] : scopeLanguages.filter((x) => x !== "*");
      try {
        const out = await api.adminSetUserRole(id, { role, permissions, scopeLanguages: normalizedScope });
        const assigned = new Set(Array.isArray(out?.user?.permissions) ? out.user.permissions : permissions);
        const assignedScope = new Set(Array.isArray(out?.user?.scopeLanguages) ? out.user.scopeLanguages : normalizedScope);
        card.querySelectorAll(".au_perm").forEach((node) => {
          node.checked = assigned.has(node.value.trim());
        });
        card.querySelectorAll(".au_scope_lang").forEach((node) => {
          const value = node.value.trim().toLowerCase();
          node.checked = assignedScope.has(value);
        });
        showStatusOverlay(t("admin.savedAccess", { id }), "success");
      } catch (e) {
        showStatusOverlay(`${t("admin.failedSaveAccess")}: ${e?.message || t("common.error")}`, "error");
      }
    }));
    return;
  }
}
