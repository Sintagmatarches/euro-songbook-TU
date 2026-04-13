import { dbGet, dbRun } from "./db.js";
import { json } from "./utils.js";

function normalizeToken(value, fallback = "unknown") {
  const raw = String(value || "").trim().toLowerCase();
  if (!raw) return fallback;
  return raw.replace(/[^a-z0-9:._-]/g, "_").slice(0, 160) || fallback;
}

export function getClientIp(request) {
  const cfIp = request.headers.get("CF-Connecting-IP");
  if (cfIp) return normalizeToken(cfIp, "unknown");
  const trueClientIp = request.headers.get("True-Client-IP");
  if (trueClientIp) return normalizeToken(trueClientIp, "unknown");
  const realIp = request.headers.get("X-Real-IP");
  if (realIp) return normalizeToken(realIp, "unknown");
  const forwarded = request.headers.get("X-Forwarded-For");
  if (forwarded) return normalizeToken(forwarded.split(",")[0], "unknown");
  return "unknown";
}

export async function enforceRateLimit(env, request, options = {}) {
  if (!env?.DB || !request) return null;
  const envDisabled = String(env.RATE_LIMIT_DISABLED || env.AUTH_RATE_LIMIT_DISABLED || "").trim().toLowerCase();
  if (envDisabled === "1" || envDisabled === "true" || envDisabled === "yes") return null;

  const scope = normalizeToken(options.scope || "global", "global");
  const identity = options.identity ? normalizeToken(options.identity, "") : "";
  const limit = Math.max(1, Number.parseInt(options.limit || 60, 10) || 60);
  const windowSec = Math.max(1, Number.parseInt(options.windowSec || 60, 10) || 60);
  if (limit <= 0 || windowSec <= 0) return null;
  const ip = getClientIp(request);
  const includeIp = options.includeIp !== false;
  const bucket = `${scope}:${identity ? `${identity}:` : ""}${includeIp ? ip : "global"}`;

  const now = Math.floor(Date.now() / 1000);
  const resetAt = now + windowSec;

  try {
    // Periodic cleanup keeps the table bounded without extra cron jobs.
    if (now % 17 === 0) {
      await dbRun(env, `DELETE FROM rate_limits WHERE reset_at <= ?`, [now]);
    }

    await dbRun(
      env,
      `INSERT INTO rate_limits (bucket, count, reset_at, updated_at)
       VALUES (?, 1, ?, datetime('now'))
       ON CONFLICT(bucket) DO UPDATE SET
         count = CASE WHEN rate_limits.reset_at <= ? THEN 1 ELSE rate_limits.count + 1 END,
         reset_at = CASE WHEN rate_limits.reset_at <= ? THEN ? ELSE rate_limits.reset_at END,
         updated_at = datetime('now')`,
      [bucket, resetAt, now, now, resetAt]
    );

    const row = await dbGet(env, `SELECT count, reset_at FROM rate_limits WHERE bucket=?`, [bucket]);
    const count = Number(row?.count || 0);
    if (count <= limit) return null;

    const retryAfter = Math.max(1, Number(row?.reset_at || resetAt) - now);
    return json(
      { error: "too many requests", retry_after: retryAfter },
      429,
      { "Retry-After": String(retryAfter) }
    );
  } catch (cause) {
    console.warn("[rate-limit] fail-open:", cause?.message || cause);
    // Fail-open: auth/data APIs remain available if limiter storage fails.
    return null;
  }
}
