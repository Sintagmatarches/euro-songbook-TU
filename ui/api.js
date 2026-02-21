import { state } from "./state.js";

// Resolve URLs relative to the folder where index.html (and app.js) are served.
// This module lives in /ui/, so we go one level up.
// Works both for root (/) and subpath deployments (e.g. /project/).
const ROOT = new URL("../", import.meta.url);
const GET_CACHE_TTL_MS = 60_000;
const getCache = new Map();

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

async function req(path, opts = {}) {
  const method = (opts.method || "GET").toUpperCase();
  const absoluteUrl = u(path);
  const token = localStorage.getItem("token") || "";
  const canUseCache = method === "GET" && !opts.noCache;
  const key = canUseCache ? `${token}:${absoluteUrl}` : "";
  if (canUseCache) {
    const cached = getCache.get(key);
    if (cached && cached.expiresAt > Date.now()) {
      return cloneJsonLike(cached.data);
    }
  }

  const headers = new Headers(opts.headers || {});
  headers.set("Accept", "application/json");
  if (opts.body && !headers.has("Content-Type")) headers.set("Content-Type", "application/json");
  if (token) headers.set("Authorization", `Bearer ${token}`);
  const res = await fetch(absoluteUrl, { ...opts, headers, method });
  const text = await res.text();
  let data = null;
  try { data = text ? JSON.parse(text) : null; } catch { data = { raw: text }; }
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
  } else {
    getCache.clear();
  }
  return data;
}

export const api = {
  async songs(params = {}) {
    const q = new URLSearchParams(params);
    return req(`api/songs?${q.toString()}`);
  },
  async song(id) { return req(`api/songs/${encodeURIComponent(id)}`); },
  async countryBackground(country) {
    const q = new URLSearchParams({ country: String(country || "") });
    return req(`api/country-backgrounds?${q.toString()}`);
  },
  async countryCounts() {
    return req("api/country-counts");
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
    localStorage.setItem("token", data.token);
    return data;
  },
  async register(nickname, email, password, passwordConfirm) {
    const data = await req("api/auth/register", {
      method: "POST",
      body: JSON.stringify({ nickname, email, password, password_confirm: passwordConfirm }),
    });
    localStorage.setItem("token", data.token);
    return data;
  },
  async logout() { localStorage.removeItem("token"); getCache.clear(); state.user = null; },
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
};
