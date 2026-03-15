// Password hashing with PBKDF2
const PBKDF2_ITERATIONS = 100000;
const PBKDF2_WEBCRYPTO_MAX_ITERATIONS = 100000;
const PBKDF2_KEY_BITS = 256;
const PBKDF2_SHA256_BLOCK_SIZE = 32;

function toBase64(bytes) {
  return btoa(String.fromCharCode(...bytes)).replace(/=+$/, "");
}

function fromBase64(input) {
  let s = String(input).replace(/-/g, "+").replace(/_/g, "/");
  while (s.length % 4) s += "=";
  return Uint8Array.from(atob(s), (c) => c.charCodeAt(0));
}

function timingSafeEqual(a, b) {
  if (a.length !== b.length) return false;
  let diff = 0;
  for (let i = 0; i < a.length; i++) diff |= a[i] ^ b[i];
  return diff === 0;
}

function makeBlockIndex(blockNumber) {
  return new Uint8Array([
    (blockNumber >>> 24) & 0xff,
    (blockNumber >>> 16) & 0xff,
    (blockNumber >>> 8) & 0xff,
    blockNumber & 0xff,
  ]);
}

function concatBytes(a, b) {
  const out = new Uint8Array(a.length + b.length);
  out.set(a, 0);
  out.set(b, a.length);
  return out;
}

function xorInto(target, source) {
  for (let i = 0; i < target.length; i++) target[i] ^= source[i];
}

async function deriveBitsWebCrypto(passwordBytes, salt, iterations, keyBytes) {
  const key = await crypto.subtle.importKey("raw", passwordBytes, "PBKDF2", false, ["deriveBits"]);
  const bits = await crypto.subtle.deriveBits(
    { name: "PBKDF2", salt, iterations, hash: "SHA-256" },
    key,
    keyBytes * 8
  );
  return new Uint8Array(bits);
}

async function deriveBitsFallback(passwordBytes, salt, iterations, keyBytes) {
  // Compatibility fallback for runtimes that cap PBKDF2 iterations in WebCrypto.
  const blocks = Math.ceil(keyBytes / PBKDF2_SHA256_BLOCK_SIZE);
  const out = new Uint8Array(blocks * PBKDF2_SHA256_BLOCK_SIZE);
  const key = await crypto.subtle.importKey(
    "raw",
    passwordBytes,
    { name: "HMAC", hash: "SHA-256" },
    false,
    ["sign"]
  );

  for (let block = 1; block <= blocks; block++) {
    let u = new Uint8Array(
      await crypto.subtle.sign("HMAC", key, concatBytes(salt, makeBlockIndex(block)))
    );
    const t = u.slice();
    for (let i = 1; i < iterations; i++) {
      u = new Uint8Array(await crypto.subtle.sign("HMAC", key, u));
      xorInto(t, u);
    }
    out.set(t, (block - 1) * PBKDF2_SHA256_BLOCK_SIZE);
  }
  return out.slice(0, keyBytes);
}

async function deriveBitsCompat(passwordBytes, salt, iterations, keyBytes) {
  if (iterations <= PBKDF2_WEBCRYPTO_MAX_ITERATIONS) {
    return deriveBitsWebCrypto(passwordBytes, salt, iterations, keyBytes);
  }
  return deriveBitsFallback(passwordBytes, salt, iterations, keyBytes);
}

export async function hashPassword(password) {
  const enc = new TextEncoder();
  const salt = crypto.getRandomValues(new Uint8Array(16));
  const bits = await deriveBitsCompat(enc.encode(password), salt, PBKDF2_ITERATIONS, PBKDF2_KEY_BITS / 8);
  return `pbkdf2$${PBKDF2_ITERATIONS}$${toBase64(salt)}$${toBase64(new Uint8Array(bits))}`;
}

export async function verifyPassword(password, stored) {
  try {
    if (typeof stored !== "string") return false;
    const [algo, iterStr, saltB64, hashB64] = stored.split("$");
    if (algo !== "pbkdf2" || !iterStr || !saltB64 || !hashB64) return false;

    const iters = Number.parseInt(iterStr, 10);
    if (!Number.isFinite(iters) || iters <= 0) return false;

    const salt = fromBase64(saltB64);
    const expected = fromBase64(hashB64);
    if (!salt.length || !expected.length) return false;

    const enc = new TextEncoder();
    const actual = await deriveBitsCompat(enc.encode(password), salt, iters, expected.length);
    return timingSafeEqual(actual, expected);
  } catch {
    return false;
  }
}
