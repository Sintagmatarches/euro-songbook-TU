// Minimal JWT (HS256) using WebCrypto. For Cloudflare Workers runtime.
const AUTH_COOKIE_NAME = "songbook_session";
const AUTH_HINT_COOKIE_NAME = "songbook_session_hint";

function b64urlEncode(bytes) {
  let str = "";
  bytes = new Uint8Array(bytes);
  for (let i=0;i<bytes.length;i++) str += String.fromCharCode(bytes[i]);
  return btoa(str).replace(/\+/g,"-").replace(/\//g,"_").replace(/=+$/,"");
}
function b64urlDecode(s) {
  s = s.replace(/-/g,"+").replace(/_/g,"/");
  while (s.length % 4) s += "=";
  const bin = atob(s);
  const out = new Uint8Array(bin.length);
  for (let i=0;i<bin.length;i++) out[i] = bin.charCodeAt(i);
  return out;
}
async function hmacSHA256(keyStr, dataStr){
  const enc = new TextEncoder();
  const key = await crypto.subtle.importKey(
    "raw",
    enc.encode(keyStr),
    { name:"HMAC", hash:"SHA-256" },
    false,
    ["sign","verify"]
  );
  const sig = await crypto.subtle.sign("HMAC", key, enc.encode(dataStr));
  return new Uint8Array(sig);
}

export async function signJWT(secret, payload, ttlSeconds=60*60*24*7){
  const header = { alg:"HS256", typ:"JWT" };
  const now = Math.floor(Date.now()/1000);
  const body = { ...payload, iat: now, exp: now + ttlSeconds };
  const enc = (obj)=>b64urlEncode(new TextEncoder().encode(JSON.stringify(obj)));
  const h = enc(header);
  const p = enc(body);
  const toSign = `${h}.${p}`;
  const sigBytes = await hmacSHA256(secret, toSign);
  const sig = b64urlEncode(sigBytes);
  return `${toSign}.${sig}`;
}

export async function verifyJWT(secret, token){
  const parts = token.split(".");
  if(parts.length !== 3) return null;
  const [h,p,s] = parts;
  const toVerify = `${h}.${p}`;
  const sigBytes = await hmacSHA256(secret, toVerify);
  const sig = b64urlEncode(sigBytes);
  if(sig !== s) return null;
  const payloadJson = new TextDecoder().decode(b64urlDecode(p));
  const payload = JSON.parse(payloadJson);
  const now = Math.floor(Date.now()/1000);
  if(payload.exp && payload.exp < now) return null;
  return payload;
}

export function getBearer(req){
  const h = req.headers.get("Authorization") || "";
  const m = h.match(/^Bearer\s+(.+)$/i);
  return m ? m[1] : null;
}

function parseCookies(cookieHeader = "") {
  return String(cookieHeader || "")
    .split(";")
    .map((part) => String(part || "").trim())
    .filter(Boolean)
    .reduce((acc, part) => {
      const eqIndex = part.indexOf("=");
      if (eqIndex <= 0) return acc;
      const key = part.slice(0, eqIndex).trim();
      const value = part.slice(eqIndex + 1).trim();
      if (!key) return acc;
      acc[key] = value;
      return acc;
    }, {});
}

export function getAuthCookie(req) {
  const cookies = parseCookies(req.headers.get("Cookie") || "");
  const raw = cookies[AUTH_COOKIE_NAME];
  if (!raw) return null;
  try {
    return decodeURIComponent(raw);
  } catch {
    return raw;
  }
}

export function getAuthToken(req) {
  return getBearer(req) || getAuthCookie(req) || null;
}

function authCookieBase(request) {
  const secure = new URL(request.url).protocol === "https:";
  return [
    `${AUTH_COOKIE_NAME}=`,
    "Path=/",
    "HttpOnly",
    "SameSite=Lax",
    secure ? "Secure" : "",
  ].filter(Boolean);
}

function authHintCookieBase(request) {
  const secure = new URL(request.url).protocol === "https:";
  return [
    `${AUTH_HINT_COOKIE_NAME}=`,
    "Path=/",
    "SameSite=Lax",
    secure ? "Secure" : "",
  ].filter(Boolean);
}

export function buildAuthCookie(request, token, ttlSeconds = 60 * 60 * 24 * 14) {
  return [
    `${AUTH_COOKIE_NAME}=${encodeURIComponent(String(token || ""))}`,
    ...authCookieBase(request).slice(1),
    `Max-Age=${Math.max(0, Number(ttlSeconds || 0))}`,
  ].join("; ");
}

export function buildAuthHintCookie(request, ttlSeconds = 60 * 60 * 24 * 14) {
  return [
    `${AUTH_HINT_COOKIE_NAME}=1`,
    ...authHintCookieBase(request).slice(1),
    `Max-Age=${Math.max(0, Number(ttlSeconds || 0))}`,
  ].join("; ");
}

export function clearAuthCookie(request) {
  return [
    ...authCookieBase(request),
    "Max-Age=0",
    "Expires=Thu, 01 Jan 1970 00:00:00 GMT",
  ].join("; ");
}

export function clearAuthHintCookie(request) {
  return [
    ...authHintCookieBase(request),
    "Max-Age=0",
    "Expires=Thu, 01 Jan 1970 00:00:00 GMT",
  ].join("; ");
}
