import { SONG_LANGUAGE_VALUES, normalizeSongLanguage } from "./song-catalogs.js";

export const ADMIN_PERMISSION_VALUES = [
  "songs.create",
  "songs.edit",
  "songs.delete",
  "songs.view_admin_content",
  "variants.manage",
  "links.manage",
  "proposals.review",
  "proposals.approve",
  "proposals.reject",
];

export const LEGACY_ADMIN_PERMISSION_EXPANSIONS = Object.freeze({
  "songs.manage": ["songs.create", "songs.edit"],
});

export const ADMIN_PERMISSION_DEPENDENCIES = Object.freeze({
  "songs.delete": ["songs.edit"],
  "proposals.approve": ["proposals.review"],
  "proposals.reject": ["proposals.review"],
});

const ADMIN_PERMISSION_SET = new Set(ADMIN_PERMISSION_VALUES);
const ADMIN_PERMISSION_INPUT_SET = new Set([
  ...ADMIN_PERMISSION_VALUES,
  ...Object.keys(LEGACY_ADMIN_PERMISSION_EXPANSIONS),
]);
const LANGUAGE_ORDER = new Map(SONG_LANGUAGE_VALUES.map((lang, index) => [lang, index]));

function clean(value) {
  return String(value || "").trim();
}

export function getInvalidAdminPermissions(input = []) {
  if (!Array.isArray(input)) return [];
  const invalid = new Set();
  for (const raw of input) {
    const permission = clean(raw);
    if (!permission) continue;
    if (!ADMIN_PERMISSION_INPUT_SET.has(permission)) invalid.add(permission);
  }
  return [...invalid].sort();
}

function expandLegacyPermission(permission) {
  const expanded = LEGACY_ADMIN_PERMISSION_EXPANSIONS[permission];
  return Array.isArray(expanded) ? expanded : [permission];
}

export function normalizeAdminPermissions(input = []) {
  const picked = new Set();
  const rawList = Array.isArray(input) ? input : [];
  for (const raw of rawList) {
    const permission = clean(raw);
    if (!permission) continue;
    if (!ADMIN_PERMISSION_INPUT_SET.has(permission)) continue;
    for (const expanded of expandLegacyPermission(permission)) {
      if (ADMIN_PERMISSION_SET.has(expanded)) picked.add(expanded);
    }
  }

  let changed = true;
  while (changed) {
    changed = false;
    for (const [permission, dependencies] of Object.entries(ADMIN_PERMISSION_DEPENDENCIES)) {
      if (!picked.has(permission)) continue;
      for (const dependency of dependencies) {
        if (ADMIN_PERMISSION_SET.has(dependency) && !picked.has(dependency)) {
          picked.add(dependency);
          changed = true;
        }
      }
    }
  }

  return ADMIN_PERMISSION_VALUES.filter((permission) => picked.has(permission));
}

export function getInvalidAdminScopeLanguages(input = []) {
  if (!Array.isArray(input)) return [];
  const invalid = new Set();
  for (const raw of input) {
    const value = clean(raw).toLowerCase();
    if (!value || value === "*") continue;
    if (!normalizeSongLanguage(value)) invalid.add(value);
  }
  return [...invalid].sort();
}

export function normalizeAdminScopeLanguages(input = []) {
  const rawList = Array.isArray(input) ? input : [];
  const out = new Set();
  for (const raw of rawList) {
    const value = clean(raw).toLowerCase();
    if (!value) continue;
    if (value === "*") return ["*"];
    const normalized = normalizeSongLanguage(value);
    if (normalized) out.add(normalized);
  }
  return [...out].sort((a, b) => {
    const ia = LANGUAGE_ORDER.has(a) ? LANGUAGE_ORDER.get(a) : Number.MAX_SAFE_INTEGER;
    const ib = LANGUAGE_ORDER.has(b) ? LANGUAGE_ORDER.get(b) : Number.MAX_SAFE_INTEGER;
    if (ia !== ib) return ia - ib;
    return a.localeCompare(b);
  });
}
