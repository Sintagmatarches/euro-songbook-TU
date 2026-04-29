import { state } from "./state.js";

// Resolve URLs relative to the folder where index.html (and app.js) are served.
// This module lives in /ui/, so we go one level up.
// Works both for root (/) and subpath deployments (e.g. /project/).
const ROOT = new URL("../", import.meta.url);
const GET_CACHE_TTL_MS = 60_000;
const PERSISTENT_GET_CACHE_KEY = "songbook_api_get_cache_v2";
const AUTH_CACHE_SCOPE_KEY = "songbook_auth_cache_scope";
const PERSISTENT_GET_CACHE_MAX_ENTRIES = 24;
const PERSISTENT_GET_CACHE_MAX_BYTES = 1_500_000;
const PERSISTENT_GET_CACHE_MAX_AGE_MS = 21 * 24 * 60 * 60 * 1000;
const getCache = new Map();
const UTF8_FATAL_DECODER = new TextDecoder("utf-8", { fatal: true });
const CP1251_EXTRA_CHAR_TO_BYTE = new Map([
  ["Ђ", 0x80], ["Ѓ", 0x81], ["‚", 0x82], ["ѓ", 0x83], ["„", 0x84], ["…", 0x85], ["†", 0x86], ["‡", 0x87],
  ["€", 0x88], ["‰", 0x89], ["Љ", 0x8A], ["‹", 0x8B], ["Њ", 0x8C], ["Ќ", 0x8D], ["Ћ", 0x8E], ["Џ", 0x8F],
  ["ђ", 0x90], ["‘", 0x91], ["’", 0x92], ["“", 0x93], ["”", 0x94], ["•", 0x95], ["–", 0x96], ["—", 0x97],
  ["™", 0x99], ["љ", 0x9A], ["›", 0x9B], ["њ", 0x9C], ["ќ", 0x9D], ["ћ", 0x9E], ["џ", 0x9F], ["Ў", 0xA1],
  ["ў", 0xA2], ["Ј", 0xA3], ["Ґ", 0xA5], ["Ё", 0xA8], ["Є", 0xAA], ["І", 0xB2], ["і", 0xB3], ["ґ", 0xB4],
  ["ё", 0xB8], ["№", 0xB9], ["є", 0xBA], ["ј", 0xBC], ["Ѕ", 0xBD], ["ѕ", 0xBE], ["ї", 0xBF], ["Ї", 0xAF],
]);

function cp1251ByteForChar(char) {
  if (!char) return null;
  const code = char.charCodeAt(0);
  if (code <= 0x7F) return code;
  if (code >= 0x410 && code <= 0x44F) return code - 0x350;
  return CP1251_EXTRA_CHAR_TO_BYTE.get(char) ?? null;
}

function encodeCp1251(value) {
  const bytes = new Uint8Array(value.length);
  let offset = 0;
  for (const char of value) {
    const byte = cp1251ByteForChar(char);
    if (byte == null) return null;
    bytes[offset++] = byte;
  }
  return offset === bytes.length ? bytes : bytes.slice(0, offset);
}

function repairMojibakeString(value) {
  if (typeof value !== "string" || value.length < 2) return value;
  if (!/[РСÐÑ]/.test(value)) return value;
  const bytes = encodeCp1251(value);
  if (!bytes) return value;
  let decoded = "";
  try {
    decoded = UTF8_FATAL_DECODER.decode(bytes);
  } catch {
    return value;
  }
  if (!decoded || decoded === value) return value;
  const sourceMarkers = (value.match(/[РСÐÑ]/g) || []).length;
  const decodedMarkers = (decoded.match(/[РСÐÑ]/g) || []).length;
  if (decodedMarkers >= sourceMarkers) return value;
  return decoded;
}

function repairMojibakeDeep(value) {
  if (typeof value === "string") return repairMojibakeString(value);
  if (Array.isArray(value)) return value.map((item) => repairMojibakeDeep(item));
  if (!value || typeof value !== "object") return value;
  const out = {};
  for (const [key, entry] of Object.entries(value)) {
    out[key] = repairMojibakeDeep(entry);
  }
  return out;
}

function decodeBasicHtmlEntities(value = "") {
  return String(value || "")
    .replace(/&nbsp;/gi, " ")
    .replace(/&laquo;/gi, "«")
    .replace(/&raquo;/gi, "»")
    .replace(/&ldquo;/gi, "“")
    .replace(/&rdquo;/gi, "”")
    .replace(/&lsquo;/gi, "‘")
    .replace(/&rsquo;/gi, "’")
    .replace(/&quot;/gi, "\"")
    .replace(/&#171;/g, "«")
    .replace(/&#187;/g, "»")
    .replace(/&#34;/g, "\"")
    .replace(/&#39;/g, "'");
}

function normalizeDisplayText(value = "") {
  return decodeBasicHtmlEntities(String(value || ""))
    .replace(/\u00A0/g, " ")
    .replace(/[\u200B-\u200D\uFEFF]/g, "")
    .replace(/[ \t]+/g, " ")
    .trim();
}

function cleanDisplayTitle(value = "") {
  return normalizeDisplayText(value)
    .replace(/\s*(?:\*{1,6}|_{1,6}|#{1,6})\s*$/g, "")
    .trim();
}

function isCreditIntroLine(line = "") {
  const text = normalizeDisplayText(line).toLowerCase();
  if (!text) return false;
  return /^(?:музыка(?: и слова)?|слова|муз\.|сл\.|музика(?: і слова)?|слова:|music(?: and words)?|words|lyrics|composer|author|performed by|исполнитель|исполняет|виконавець|виконує|из кинофильма|режиссер|режисс[её]р|director)\b/i.test(text);
}

function isCreditIntroDisplayLine(line = "") {
  const text = normalizeDisplayText(line).toLowerCase();
  if (!text) return false;
  const normalized = text.replace(/\s+/g, " ").trim();
  const prefixes = [
    "\u043c\u0443\u0437\u044b\u043a\u0430",
    "\u043c\u0443\u0437\u044b\u043a\u0430 \u0438 \u0441\u043b\u043e\u0432\u0430",
    "\u0441\u043b\u043e\u0432\u0430",
    "\u043c\u0443\u0437\u0438\u043a\u0430",
    "\u043c\u0443\u0437\u0438\u043a\u0430 \u0456 \u0441\u043b\u043e\u0432\u0430",
    "music",
    "music and words",
    "words",
    "lyrics",
    "composer",
    "author",
    "performed by",
    "\u0438\u0441\u043f\u043e\u043b\u043d\u0438\u0442\u0435\u043b\u044c",
    "\u0438\u0441\u043f\u043e\u043b\u043d\u044f\u0435\u0442",
    "\u0432\u0438\u043a\u043e\u043d\u0430\u0432\u0435\u0446\u044c",
    "\u0432\u0438\u043a\u043e\u043d\u0443\u0454",
    "\u0438\u0437 \u043a\u0438\u043d\u043e\u0444\u0438\u043b\u044c\u043c\u0430",
    "\u0438\u0437 \u043a/\u0444",
    "\u0438\u0437 \u0444\u0438\u043b\u044c\u043c\u0430",
    "\u0440\u0435\u0436\u0438\u0441\u0441\u0435\u0440",
    "\u0440\u0435\u0436\u0438\u0441\u0441\u0451\u0440",
    "director",
  ];
  if (prefixes.some((prefix) => (
    normalized === prefix
    || normalized.startsWith(`${prefix}:`)
    || normalized.startsWith(`${prefix} `)
    || normalized.startsWith(`${prefix}-`)
    || normalized.startsWith(`${prefix} -`)
    || normalized.startsWith(`${prefix} —`)
  ))) return true;
  return isCreditIntroLine(normalized);
}

function isLikelyAuthorNameLine(line = "") {
  const text = normalizeDisplayText(line);
  if (!text || text.length > 42) return false;
  if (/[,:;!?]/.test(text)) return false;
  if (/\d/.test(text)) return false;
  if (/["“”«»]/.test(text)) return false;
  if (/^(?:музыка|слова|music|lyrics|author|composer)\b/i.test(text)) return false;
  const initialsPattern = /^(?:[A-ZА-ЯЁІЇЄҐ]\.\s*){1,4}[A-ZА-ЯЁІЇЄҐ][\p{L}'’-]+(?:\s+[A-ZА-ЯЁІЇЄҐ][\p{L}'’-]+){0,2}$/u;
  const nameWordsPattern = /^[A-ZА-ЯЁІЇЄҐ][\p{L}'’-]+(?:\s+[A-ZА-ЯЁІЇЄҐ][\p{L}'’-]+){1,3}$/u;
  return initialsPattern.test(text) || nameWordsPattern.test(text);
}

function isCopyrightPlaceholderLine(line = "") {
  const text = normalizeDisplayText(line).toLowerCase();
  if (!text) return false;
  return text.includes("sorry, i can't show the lyrics")
    || text.includes("sorry, i cant show the lyrics")
    || text.includes("don't have the copyright")
    || text.includes("do not have the copyright")
    || text.includes("copyright owners' permission")
    || text.includes("copyright owners permission")
    || text.includes("permission to publish them")
    || text.includes("please feel free and ask me to send you")
    || text.includes("ask me to send you the song's lyrics")
    || text.includes("ask me to send you the songs lyrics");
}

function looksLikeLyricContentLine(line = "") {
  const text = normalizeDisplayText(line);
  if (!text) return false;
  if (text.length < 12) return false;
  if (isCreditIntroDisplayLine(text) || isCopyrightPlaceholderLine(text)) return false;
  return /[\p{L}]/u.test(text);
}

function cleanLyricsForDisplay(value = "") {
  const source = String(value || "").replace(/\r\n?/g, "\n");
  if (!source.trim()) return "";
  let rows = source.split("\n").map((line) => normalizeDisplayText(line));
  rows = rows.filter((line, index) => !(index < 6 && isCopyrightPlaceholderLine(line)));

  let firstMeaningfulIndex = rows.findIndex((line) => line);
  while (firstMeaningfulIndex >= 0) {
    const current = rows[firstMeaningfulIndex] || "";
    const upcomingContent = rows.slice(firstMeaningfulIndex + 1).filter(Boolean);
    const hasEnoughLyricsAfter = upcomingContent.filter((line) => looksLikeLyricContentLine(line)).length >= 2;
    const shouldDrop = hasEnoughLyricsAfter && (
      isCreditIntroDisplayLine(current)
      || (firstMeaningfulIndex <= 1 && isLikelyAuthorNameLine(current))
    );
    if (!shouldDrop) break;
    rows[firstMeaningfulIndex] = "";
    firstMeaningfulIndex = rows.findIndex((line, index) => index > firstMeaningfulIndex && line);
  }

  return rows
    .join("\n")
    .replace(/\n{3,}/g, "\n\n")
    .trim();
}

function splitMeaningfulDisplayLines(value = "") {
  return String(value || "")
    .replace(/\r\n?/g, "\n")
    .split("\n")
    .map((line) => normalizeDisplayText(line))
    .filter(Boolean);
}

function isLikelyDocumentLine(line = "") {
  const text = normalizeDisplayText(line);
  if (!text) return false;
  const lower = text.toLowerCase();
  if (/[№]\s*\d{1,6}/.test(text)) return true;
  if (/\b\d{1,2}[./]\d{1,2}[./]\d{2,4}\b/.test(text)) return true;
  if (/\b\d(?:\s*\d){3}\b/.test(text)) return true;
  if (/(?:^|\s)г\.\s*[\p{L}]/u.test(text)) return true;
  if (/[.;:]\s*\d{1,2}$/.test(text)) return true;
  if (/\b\d{1,2}\s+(?:январ|феврал|март|апрел|ма[йя]|июн|июл|август|сентябр|октябр|ноябр|декабр)\w*\s+\d{4}\s*г\b/i.test(lower)) return true;
  if (/^(?:письмо|приказ|протокол|донесение|рапорт|постановление|заявление|доклад|обращение|телеграмма|войсковое правление|канцелярия|комитет|секретарь|председатель)\b/i.test(lower)) return true;
  if (/^(?:войсковому|командующему|председателю|секретарю|господину|гражданину)\b/i.test(lower)) return true;
  if (/\b(?:атаман|правлени[ея]|канцеляр|комитет|секретар|председател|губерн|уезд|областн|военному|войсковому)\b/i.test(lower)) return true;
  if (text.length >= 42 && text === text.toUpperCase() && /[\p{L}]/u.test(text)) return true;
  return false;
}

function isLikelyStructuredLyricLine(line = "") {
  const text = normalizeDisplayText(line);
  if (!text) return false;
  if (isCreditIntroDisplayLine(text) || isCopyrightPlaceholderLine(text) || isLikelyDocumentLine(text)) return false;
  if (text.length > 96) return false;
  const words = text.split(/\s+/).filter(Boolean);
  if (words.length === 0 || words.length > 14) return false;
  return /[\p{L}]/u.test(text);
}

function isLikelyPublicHiddenSong(item = {}) {
  const rawLyrics = String(item?.lyrics || item?.snippet || "");
  const cleanedLyrics = String(item?.lyrics || item?.snippet || "");
  const cleanedLines = splitMeaningfulDisplayLines(cleanedLyrics);
  const rawLines = splitMeaningfulDisplayLines(rawLyrics);
  const title = normalizeDisplayText(item?.title || "");
  const placeholderLineCount = rawLines.reduce((count, line, index) => (
    index < 8 && isCopyrightPlaceholderLine(line) ? count + 1 : count
  ), 0);
  if (placeholderLineCount >= 2) return true;
  if (placeholderLineCount >= 1 && cleanedLines.length === 0) return true;

  const headLines = cleanedLines.slice(0, 8);
  const documentScore = headLines.reduce((score, line) => score + (isLikelyDocumentLine(line) ? 1 : 0), 0);
  const lyricStructuredCount = headLines.reduce((score, line) => score + (isLikelyStructuredLyricLine(line) ? 1 : 0), 0);
  const titleLooksSuspicious = (
    title.startsWith("...")
    || title.endsWith("...")
    || title.split(/\s+/).filter(Boolean).length >= 8
  );
  if (documentScore >= 5) return true;
  if (documentScore >= 4 && lyricStructuredCount < 4) return true;
  if (documentScore >= 3 && lyricStructuredCount < 3 && titleLooksSuspicious) return true;
  return false;
}

function sanitizeSongDisplayItem(item = {}) {
  if (!item || typeof item !== "object") return item;
  const out = { ...item };
  if (typeof out.title === "string") out.title = cleanDisplayTitle(out.title);
  if (typeof out.subtitle === "string") out.subtitle = normalizeDisplayText(out.subtitle);
  if (typeof out.snippet === "string") out.snippet = cleanLyricsForDisplay(out.snippet);
  if (typeof out.lyrics === "string") out.lyrics = cleanLyricsForDisplay(out.lyrics);
  if (Array.isArray(out.versions)) {
    out.versions = out.versions.map((version) => {
      if (!version || typeof version !== "object") return version;
      const next = { ...version };
      if (typeof next.title === "string") next.title = cleanDisplayTitle(next.title);
      if (typeof next.lyrics === "string") next.lyrics = cleanLyricsForDisplay(next.lyrics);
      if (typeof next.source === "string") next.source = normalizeDisplayText(next.source);
      return next;
    });
  }
  if (Array.isArray(out.items)) {
    out.items = out.items
      .map((entry) => sanitizeSongDisplayItem(entry))
      .filter((entry) => entry && entry.__hidden_from_public !== true);
  }
  if (isLikelyPublicHiddenSong(out)) {
    return {
      ...out,
      __hidden_from_public: true,
      snippet: "",
      lyrics: "",
      versions: [],
    };
  }
  return out;
}

function u(path){
  // accept absolute URLs
  if(/^https?:\/\//i.test(path)) return path;
  const clean = String(path).replace(/^\//, "");
  return new URL(clean, ROOT).toString();
}

function cloneJsonLike(value) {
  if (value == null) return value;
  if (typeof structuredClone === "function") return structuredClone(value);
  return JSON.parse(JSON.stringify(value));
}

function safeStorageGet(key) {
  try {
    return localStorage.getItem(key);
  } catch {
    return null;
  }
}

function safeStorageSet(key, value) {
  try {
    localStorage.setItem(key, value);
  } catch {}
}

function safeStorageRemove(key) {
  try {
    localStorage.removeItem(key);
  } catch {}
}

function safeSessionStorageGet(key) {
  try {
    return sessionStorage.getItem(key);
  } catch {
    return null;
  }
}

function safeSessionStorageSet(key, value) {
  try {
    sessionStorage.setItem(key, value);
  } catch {}
}

function readPersistentGetCacheBucket() {
  const raw = safeStorageGet(PERSISTENT_GET_CACHE_KEY);
  if (!raw) return {};
  try {
    const parsed = JSON.parse(raw);
    return parsed && typeof parsed === "object" ? parsed : {};
  } catch {
    return {};
  }
}

function writePersistentGetCacheBucket(bucket) {
  try {
    safeStorageSet(PERSISTENT_GET_CACHE_KEY, JSON.stringify(bucket || {}));
  } catch {}
}

function persistentGetCacheStats(bucket) {
  return Object.entries(bucket || {}).reduce((acc, [entryKey, entry]) => {
    const size = Number(entry?.size || 0) || entryKey.length;
    acc.count += 1;
    acc.bytes += size;
    return acc;
  }, { count: 0, bytes: 0 });
}

function prunePersistentGetCache(bucket, now = Date.now()) {
  const next = bucket && typeof bucket === "object" ? { ...bucket } : {};
  Object.entries(next).forEach(([entryKey, entry]) => {
    const savedAt = Number(entry?.savedAt || 0);
    if (!savedAt || now - savedAt > PERSISTENT_GET_CACHE_MAX_AGE_MS) {
      delete next[entryKey];
    }
  });

  const orderedKeys = Object.entries(next)
    .sort((a, b) => (Number(a[1]?.savedAt || 0) - Number(b[1]?.savedAt || 0)))
    .map(([entryKey]) => entryKey);
  let stats = persistentGetCacheStats(next);
  while (orderedKeys.length > 0 && (stats.count > PERSISTENT_GET_CACHE_MAX_ENTRIES || stats.bytes > PERSISTENT_GET_CACHE_MAX_BYTES)) {
    const oldestKey = orderedKeys.shift();
    delete next[oldestKey];
    stats = persistentGetCacheStats(next);
  }
  return next;
}

function readPersistentGetCacheEntry(key) {
  if (!key) return null;
  const now = Date.now();
  const bucket = prunePersistentGetCache(readPersistentGetCacheBucket(), now);
  const entry = bucket[key];
  if (!entry || now - Number(entry.savedAt || 0) > PERSISTENT_GET_CACHE_MAX_AGE_MS) {
    writePersistentGetCacheBucket(bucket);
    return null;
  }
  writePersistentGetCacheBucket(bucket);
  return entry;
}

function rememberPersistentGetCacheEntry(key, data) {
  if (!key) return;
  let serialized = "";
  try {
    serialized = JSON.stringify(data);
  } catch {
    return;
  }
  const size = key.length + serialized.length;
  if (size > PERSISTENT_GET_CACHE_MAX_BYTES) return;
  const bucket = prunePersistentGetCache(readPersistentGetCacheBucket());
  bucket[key] = {
    savedAt: Date.now(),
    size,
    data,
  };
  writePersistentGetCacheBucket(prunePersistentGetCache(bucket));
}

function clearPersistentGetCacheByPrefix(prefix = "") {
  const rawPrefix = String(prefix || "");
  if (!rawPrefix) {
    safeStorageRemove(PERSISTENT_GET_CACHE_KEY);
    return;
  }
  const bucket = readPersistentGetCacheBucket();
  let changed = false;
  Object.keys(bucket).forEach((entryKey) => {
    if (!entryKey.startsWith(rawPrefix)) return;
    delete bucket[entryKey];
    changed = true;
  });
  if (changed) writePersistentGetCacheBucket(bucket);
}

function nextAuthCacheScope(prefix = "anon") {
  return `${prefix}:${Date.now().toString(36)}:${Math.random().toString(36).slice(2, 10)}`;
}

function getAuthCacheScope() {
  const existing = safeSessionStorageGet(AUTH_CACHE_SCOPE_KEY);
  if (existing) return existing;
  const created = nextAuthCacheScope("anon");
  safeSessionStorageSet(AUTH_CACHE_SCOPE_KEY, created);
  return created;
}

function rotateAuthCacheScope(prefix = "auth") {
  const next = nextAuthCacheScope(prefix);
  safeSessionStorageSet(AUTH_CACHE_SCOPE_KEY, next);
  return next;
}

function isSessionScopedPath(path = "") {
  const clean = String(path || "").replace(/^\//, "").toLowerCase();
  return clean === "api/me"
    || clean.startsWith("api/favorites")
    || clean.startsWith("api/admin/")
    || clean.startsWith("api/drafts")
    || clean.startsWith("api/requests")
    || clean.startsWith("api/auth/");
}

function emptySongsResponse(params = {}, notice = "temporary_unavailable") {
  const q = String(params?.q || "").trim();
  const page = Math.max(1, Number(params?.page || 1) || 1);
  return {
    items: [],
    total: 0,
    page,
    pages: 1,
    suggestions: [],
    suggestions_total: 0,
    did_you_mean: [],
    bucket_counts: { exact: 0, partial: 0, text: 0, fuzzy: 0 },
    query_analysis: {
      normalized: q.toLowerCase(),
      corrected_tokens: [],
      literal_hits: { phrase: 0, tokens: 0, prefix: 0, fuzzy: 0 },
    },
    search_mode: q ? "empty" : "browse",
    ...(q ? { search_notice: notice } : {}),
  };
}

async function req(path, opts = {}) {
  const method = (opts.method || "GET").toUpperCase();
  const absoluteUrl = u(path);
  const canUseCache = method === "GET" && !opts.noCache;
  const sessionScoped = isSessionScopedPath(path);
  const key = canUseCache ? `${sessionScoped ? getAuthCacheScope() : "public"}:${absoluteUrl}` : "";
  if (canUseCache) {
    const cached = getCache.get(key);
    if (cached && cached.expiresAt > Date.now()) {
      return cloneJsonLike(cached.data);
    }
  }

  const headers = new Headers(opts.headers || {});
  headers.set("Accept", "application/json");
  if (opts.body && !headers.has("Content-Type")) headers.set("Content-Type", "application/json");
  let res;
  try {
    res = await fetch(absoluteUrl, {
      ...opts,
      headers,
      method,
      credentials: opts.credentials || "same-origin",
      cache: canUseCache ? (opts.cache || "default") : "no-store",
    });
  } catch (error) {
    if (canUseCache && !sessionScoped) {
      const persistent = readPersistentGetCacheEntry(key);
      if (persistent) {
        const fallbackData = cloneJsonLike(persistent.data);
        getCache.set(key, {
          expiresAt: Date.now() + GET_CACHE_TTL_MS,
          data: cloneJsonLike(fallbackData),
        });
        return fallbackData;
      }
    }
    throw error;
  }
  const text = await res.text();
  let data = null;
  try { data = text ? JSON.parse(text) : null; } catch { data = { raw: text }; }
  data = repairMojibakeDeep(data);
  if (!res.ok) {
    const msg = data?.error || data?.message || `HTTP ${res.status}`;
    const err = new Error(msg);
    err.status = res.status;
    err.data = data;
    throw err;
  }
  if (canUseCache) {
    getCache.set(key, {
      expiresAt: Date.now() + GET_CACHE_TTL_MS,
      data: cloneJsonLike(data),
    });
    if (!sessionScoped) rememberPersistentGetCacheEntry(key, data);
  } else {
    getCache.clear();
  }
  return data;
}

safeStorageRemove("token");

export const api = {
  async songs(params = {}) {
    const q = new URLSearchParams(params);
    try {
      const data = await req(`api/songs?${q.toString()}`, { noCache: true, cache: "no-store" });
      return sanitizeSongDisplayItem(data);
    } catch (error) {
      console.warn("[api/songs] returning empty fallback:", error?.message || error);
      return emptySongsResponse(params);
    }
  },
  async song(id, options = {}) {
    const q = new URLSearchParams();
    if (options?.includeEditor === true) q.set("include_editor", "1");
    const query = q.toString();
    const data = await req(`api/songs/${encodeURIComponent(id)}${query ? `?${query}` : ""}`);
    return sanitizeSongDisplayItem(data);
  },
  async songComments(id) {
    return req(`api/songs/${encodeURIComponent(id)}/comments`, { noCache: true, cache: "no-store" });
  },
  async addSongComment(id, body) {
    return req(`api/songs/${encodeURIComponent(id)}/comments`, {
      method: "POST",
      body: JSON.stringify({ body }),
    });
  },
  async updateSongComment(songId, commentId, body) {
    return req(`api/songs/${encodeURIComponent(songId)}/comments/${encodeURIComponent(commentId)}`, {
      method: "PUT",
      body: JSON.stringify({ body }),
    });
  },
  async deleteSongComment(songId, commentId) {
    return req(`api/songs/${encodeURIComponent(songId)}/comments/${encodeURIComponent(commentId)}`, {
      method: "DELETE",
    });
  },
  async countryBackground(country) {
    const q = new URLSearchParams({ country: String(country || "") });
    return req(`api/country-backgrounds?${q.toString()}`);
  },
  async countryCounts() {
    return req("api/country-counts");
  },
  async langCountryCounts() {
    return req("api/lang-country-counts");
  },
  async langCountryPeriodCounts() {
    return req("api/lang-country-period-counts");
  },
  async entities(name = "") {
    const q = new URLSearchParams();
    if (String(name || "").trim()) q.set("name", String(name || "").trim());
    const suffix = q.toString();
    return req(`api/entities${suffix ? `?${suffix}` : ""}`);
  },
  async login(login, password) {
    const value = String(login || "").trim();
    const data = await req("api/auth/login", {
      method: "POST",
      body: JSON.stringify({
        email: value,
        nickname: value,
        login: value,
        password,
      }),
    });
    safeStorageRemove("token");
    rotateAuthCacheScope("auth");
    getCache.clear();
    return data;
  },
  async register(nickname, email, password, passwordConfirm) {
    const data = await req("api/auth/register", {
      method: "POST",
      body: JSON.stringify({ nickname, email, password, password_confirm: passwordConfirm }),
    });
    safeStorageRemove("token");
    rotateAuthCacheScope("auth");
    getCache.clear();
    return data;
  },
  async logout() {
    await req("api/auth/logout", { method: "POST" });
    safeStorageRemove("token");
    rotateAuthCacheScope("anon");
    clearPersistentGetCacheByPrefix("");
    getCache.clear();
    state.user = null;
  },
  getToken() { return ""; },
  async me() { return req("api/me"); },

  async favorites() { return req("api/favorites"); },
  async favAdd(songId) { return req(`api/favorites/${encodeURIComponent(songId)}`, { method: "POST" }); },
  async favDel(songId) { return req(`api/favorites/${encodeURIComponent(songId)}`, { method: "DELETE" }); },

  async adminSaveSong(payload) {
    if (payload.id) return req(`api/admin/songs/${encodeURIComponent(payload.id)}`, { method:"PUT", body: JSON.stringify(payload) });
    return req(`api/admin/songs`, { method:"POST", body: JSON.stringify(payload) });
  },
  async adminSongs(params = {}) {
    const q = new URLSearchParams(params);
    return req(`api/admin/songs?${q.toString()}`);
  },
  async adminCountryBackgrounds() { return req("api/admin/country-backgrounds"); },
  async adminSaveCountryBackground(payload) {
    return req("api/admin/country-backgrounds", { method: "PUT", body: JSON.stringify(payload || {}) });
  },
  async adminDeleteCountryBackground(country) {
    return req("api/admin/country-backgrounds", {
      method: "DELETE",
      body: JSON.stringify({ country: String(country || "") }),
    });
  },
  async adminDeleteSong(id) { return req(`api/admin/songs/${encodeURIComponent(id)}`, { method:"DELETE" }); },
  async adminSong(id) { return req(`api/admin/songs/${encodeURIComponent(id)}`); },
  async adminSongHistory(id) { return req(`api/admin/songs/${encodeURIComponent(id)}/history`, { noCache: true }); },
  async adminRestoreSongRevision(id, revisionId) {
    return req(`api/admin/songs/${encodeURIComponent(id)}/restore`, {
      method: "POST",
      body: JSON.stringify({ revision_id: String(revisionId || "") }),
    });
  },
  async adminImportSongs(payload = {}) {
    return req("api/admin/import", { method: "POST", body: JSON.stringify(payload) });
  },
  async createRequest(payload) {
    return req("api/requests", { method: "POST", body: JSON.stringify(payload) });
  },
  async fragmentReports(params = {}) {
    const q = new URLSearchParams(params || {});
    const query = q.toString();
    return req(query ? `api/fragment-reports?${query}` : "api/fragment-reports");
  },
  async createFragmentReport(payload = {}) {
    return req("api/fragment-reports", { method: "POST", body: JSON.stringify(payload || {}) });
  },
  async fragmentReport(id) {
    return req(`api/fragment-reports/${encodeURIComponent(id)}`);
  },
  async fragmentReportAddMessage(id, payload = {}) {
    return req(`api/fragment-reports/${encodeURIComponent(id)}/messages`, {
      method: "POST",
      body: JSON.stringify(payload || {}),
    });
  },
  async adminRequests(params = {}) {
    const q = new URLSearchParams(params);
    return req(`api/admin/requests?${q.toString()}`);
  },
  async adminFragmentReports(params = {}) {
    const q = new URLSearchParams(params || {});
    const query = q.toString();
    return req(query ? `api/admin/fragment-reports?${query}` : "api/admin/fragment-reports");
  },
  async adminApproveRequest(id, payload = {}) {
    return req(`api/admin/requests/${encodeURIComponent(id)}/approve`, { method: "POST", body: JSON.stringify(payload) });
  },
  async adminRejectRequest(id, payload = {}) {
    return req(`api/admin/requests/${encodeURIComponent(id)}/reject`, { method: "POST", body: JSON.stringify(payload) });
  },
  async adminUsers() { return req("api/admin/users"); },
  async adminSetUserRole(userId, payload) {
    return req(`api/admin/users/${encodeURIComponent(userId)}/role`, {
      method: "PUT",
      body: JSON.stringify(payload),
    });
  },
  async adminDeleteUserData(userId) {
    return req(`api/admin/users/${encodeURIComponent(userId)}/purge`, {
      method: "POST",
    });
  },
  async drafts(params = {}) {
    const q = new URLSearchParams(params || {});
    const query = q.toString();
    return req(query ? `api/drafts?${query}` : "api/drafts", { noCache: true });
  },
  async createDraft(payload = {}) {
    return req("api/drafts", { method: "POST", body: JSON.stringify(payload || {}) });
  },
  async draft(id) {
    return req(`api/drafts/${encodeURIComponent(id)}`, { noCache: true });
  },
  async draftOp(id, op = {}) {
    return req(`api/drafts/${encodeURIComponent(id)}`, {
      method: "POST",
      body: JSON.stringify(op || {}),
    });
  },
  async draftAddCollaborator(id, nickname) {
    return req(`api/drafts/${encodeURIComponent(id)}/invitations`, {
      method: "POST",
      body: JSON.stringify({ nickname: String(nickname || "") }),
    });
  },
  async draftInvitations(params = {}) {
    const q = new URLSearchParams(params || {});
    return req(`api/drafts/invitations?${q.toString()}`, { noCache: true });
  },
  async draftInvitationAccept(inviteId) {
    return req(`api/drafts/invitations/${encodeURIComponent(inviteId)}/accept`, {
      method: "POST",
    });
  },
  async draftInvitationDecline(inviteId) {
    return req(`api/drafts/invitations/${encodeURIComponent(inviteId)}/decline`, {
      method: "POST",
    });
  },
  async draftInvitationCancel(inviteId) {
    return req(`api/drafts/invitations/${encodeURIComponent(inviteId)}`, {
      method: "DELETE",
    });
  },
  async draftRemoveCollaborator(id, userId) {
    return req(`api/drafts/${encodeURIComponent(id)}/collaborators/${encodeURIComponent(userId)}`, {
      method: "DELETE",
    });
  },
  async draftAutosave(id, payload = {}, options = {}) {
    const method = (options?.method || "POST").toUpperCase();
    const keepalive = options?.keepalive === true;
    if (!keepalive) {
      return req(`api/drafts/${encodeURIComponent(id)}/autosave`, {
        method,
        body: JSON.stringify(payload || {}),
      });
    }
    const headers = new Headers({ Accept: "application/json", "Content-Type": "application/json" });
    const res = await fetch(u(`api/drafts/${encodeURIComponent(id)}/autosave`), {
      method,
      headers,
      body: JSON.stringify(payload || {}),
      keepalive: true,
      credentials: "same-origin",
    });
    const text = await res.text();
    let data = null;
    try { data = text ? JSON.parse(text) : null; } catch { data = { raw: text }; }
    data = repairMojibakeDeep(data);
    if (!res.ok) {
      const msg = data?.error || data?.message || `HTTP ${res.status}`;
      const error = new Error(msg);
      error.status = res.status;
      error.data = data;
      throw error;
    }
    return data;
  },
  async draftPublish(id, payload = null) {
    return req(`api/drafts/${encodeURIComponent(id)}/publish`, {
      method: "POST",
      body: payload ? JSON.stringify(payload) : undefined,
    });
  },
  async draftHistory(id) {
    return req(`api/drafts/${encodeURIComponent(id)}/history`, { noCache: true });
  },
  draftWsUrl(id) {
    const relative = `api/drafts/${encodeURIComponent(id)}/ws`;
    const absolute = u(relative);
    return absolute.replace(/^http:/i, "ws:").replace(/^https:/i, "wss:");
  },
  draftWsProtocols() {
    return [];
  },
};
