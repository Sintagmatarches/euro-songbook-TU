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
    return req(`api/songs?${q.toString()}`, { noCache: true, cache: "no-store" });
  },
  async song(id) { return req(`api/songs/${encodeURIComponent(id)}`); },
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
  async adminImportSongs(payload = {}) {
    return req("api/admin/import", { method: "POST", body: JSON.stringify(payload) });
  },
  async createRequest(payload) {
    return req("api/requests", { method: "POST", body: JSON.stringify(payload) });
  },
  async adminRequests(params = {}) {
    const q = new URLSearchParams(params);
    return req(`api/admin/requests?${q.toString()}`);
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
