// Minimal JWT (HS256) using WebCrypto. For Cloudflare Workers runtime.
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
