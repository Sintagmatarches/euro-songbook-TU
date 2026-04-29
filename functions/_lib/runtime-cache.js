import { dbGet, dbRun } from "./db.js";

const RUNTIME_CACHE_PREFIX = "runtime_cache:";

function cacheKey(key = "") {
  return `${RUNTIME_CACHE_PREFIX}${String(key || "").trim()}`;
}

export async function readRuntimeJsonCache(env, key, options = {}) {
  const safeKey = cacheKey(key);
  const maxAgeMs = Math.max(0, Number(options.maxAgeMs || 0) || 0);
  if (!safeKey || !maxAgeMs) return null;
  try {
    const row = await dbGet(env, `SELECT value FROM app_meta WHERE key=? LIMIT 1`, [safeKey]);
    if (!row?.value) return null;
    const parsed = JSON.parse(String(row.value || ""));
    const savedAt = Number(parsed?.savedAt || 0);
    if (!savedAt || Date.now() - savedAt > maxAgeMs) return null;
    return parsed?.data ?? null;
  } catch {
    return null;
  }
}

export async function writeRuntimeJsonCache(env, key, data) {
  const safeKey = cacheKey(key);
  if (!safeKey) return;
  try {
    await dbRun(
      env,
      `INSERT INTO app_meta (key, value, updated_at)
       VALUES (?, ?, datetime('now'))
       ON CONFLICT(key) DO UPDATE SET
         value=excluded.value,
         updated_at=datetime('now')`,
      [safeKey, JSON.stringify({ savedAt: Date.now(), data })]
    );
  } catch (cause) {
    console.warn("[runtime-cache] write failed:", cause?.message || cause);
  }
}

export async function invalidateRuntimeJsonCache(env, prefixes = []) {
  const safePrefixes = (Array.isArray(prefixes) ? prefixes : [prefixes])
    .map((prefix) => String(prefix || "").trim())
    .filter(Boolean);
  if (!safePrefixes.length) return;
  for (const prefix of safePrefixes) {
    try {
      await dbRun(env, `DELETE FROM app_meta WHERE key LIKE ?`, [`${cacheKey(prefix)}%`]);
    } catch (cause) {
      console.warn("[runtime-cache] invalidate failed:", cause?.message || cause);
    }
  }
}

export async function invalidateCatalogRuntimeCache(env) {
  await invalidateRuntimeJsonCache(env, [
    "songs:browse:",
    "counts:",
  ]);
}
