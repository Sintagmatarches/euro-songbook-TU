export function json(data, status=200, headers={}){
  const responseHeaders = new Headers({
    "Content-Type": "application/json; charset=utf-8",
    "Cache-Control": "no-store",
    "X-Content-Type-Options": "nosniff",
    "Referrer-Policy": "strict-origin-when-cross-origin",
    "Permissions-Policy": "camera=(), microphone=(), geolocation=()",
    "Cross-Origin-Opener-Policy": "same-origin",
    "Cross-Origin-Resource-Policy": "same-origin",
    "Content-Security-Policy": "default-src 'none'; frame-ancestors 'none'; base-uri 'none'; object-src 'none'",
  });
  if (headers instanceof Headers) {
    headers.forEach((value, key) => responseHeaders.append(key, value));
  } else {
    Object.entries(headers || {}).forEach(([key, value]) => {
      if (Array.isArray(value)) {
        value.forEach((entry) => responseHeaders.append(key, entry));
        return;
      }
      responseHeaders.set(key, value);
    });
  }
  return new Response(JSON.stringify(data), {
    status,
    headers: responseHeaders,
  });
}
export function err(message, status=400, extra={}){
  return json({ error: message, ...extra }, status);
}
export async function readJSON(req){
  try{ return await req.json(); }catch{ return null; }
}
export function enforceSameOrigin(request, options = {}){
  const method = String(request?.method || "GET").trim().toUpperCase();
  if (method === "GET" || method === "HEAD" || method === "OPTIONS") return null;
  const authHeader = String(request?.headers?.get("Authorization") || "");
  if (/^Bearer\s+/i.test(authHeader)) return null;
  const allowMissingOrigin = options.allowMissingOrigin === true;
  const targetOrigin = new URL(request.url).origin;
  const fetchSite = String(request.headers.get("Sec-Fetch-Site") || "").trim().toLowerCase();
  if (fetchSite && !["same-origin", "same-site", "none"].includes(fetchSite)) {
    return err("Forbidden", 403);
  }
  const origin = String(request.headers.get("Origin") || "").trim();
  if (origin) {
    return origin === targetOrigin ? null : err("Forbidden", 403);
  }
  const referer = String(request.headers.get("Referer") || "").trim();
  if (referer) {
    try {
      return new URL(referer).origin === targetOrigin ? null : err("Forbidden", 403);
    } catch {
      return err("Forbidden", 403);
    }
  }
  return allowMissingOrigin ? null : null;
}
export function internalServerError(message = "Internal server error", code = "internal_error"){
  return err(message, 500, { code });
}
const DEFAULT_SAFE_NOT_FOUND_MESSAGES = new Set([
  "Draft not found",
  "Song not found",
  "User not found",
  "Invitation not found",
  "line not found",
  "variant not found",
]);

const DEFAULT_SAFE_BAD_REQUEST_MESSAGES = new Set([
  "Operation type is required",
  "nickname is required",
  "invite_id is required",
  "song_id required",
  "line_id is required",
  "variant_id is required",
  "line_id and variant_id are required",
  "at least one variant must remain",
  "Owner is already a collaborator",
  "User is already a collaborator",
  "Invitation is not active",
  "Invalid JSON payload",
  "Unsupported websocket event",
  "Only owner can invite collaborators",
  "Only owner can add collaborators",
  "Only owner can remove collaborators",
]);

export function normalizePublicApiError(cause, options = {}) {
  if (cause instanceof Response) return { response: cause };
  const fallback = String(options?.fallback || "Request failed");
  const raw = String(cause?.message || cause || "").trim();
  if (!raw) return { status: 400, message: fallback };
  if (/^Unauthorized\b/i.test(raw)) return { status: 401, message: "Unauthorized" };
  if (/^Forbidden\b/i.test(raw)) return { status: 403, message: "Forbidden" };

  const notFoundMessages = new Set([
    ...DEFAULT_SAFE_NOT_FOUND_MESSAGES,
    ...(Array.isArray(options?.notFoundMessages) ? options.notFoundMessages : []),
  ]);
  if (notFoundMessages.has(raw)) return { status: 404, message: raw };

  const badRequestMessages = new Set([
    ...DEFAULT_SAFE_BAD_REQUEST_MESSAGES,
    ...(Array.isArray(options?.badRequestMessages) ? options.badRequestMessages : []),
  ]);
  if (badRequestMessages.has(raw)) return { status: 400, message: raw };
  if (/^Unsupported operation type:/i.test(raw)) {
    return { status: 400, message: "Unsupported operation type" };
  }
  return { status: 400, message: fallback };
}

export function publicApiError(cause, options = {}) {
  const normalized = normalizePublicApiError(cause, options);
  if (normalized.response instanceof Response) return normalized.response;
  return err(normalized.message, normalized.status, options?.extra || {});
}
export function requireEnv(env, name){
  const v = env[name];
  if(!v) throw new Error(`Missing env: ${name}`);
  return v;
}
export function nowISO(){ return new Date().toISOString(); }
export function makeId(prefix="s"){
  // short id
  const rnd = crypto.getRandomValues(new Uint8Array(8));
  return prefix + Array.from(rnd).map(b=>b.toString(16).padStart(2,"0")).join("");
}
