const SAFE_EXTERNAL_PROTOCOLS = new Set(["http:", "https:"]);
const NAMED_HTML_ENTITIES = new Map([
  ["amp", "&"],
  ["lt", "<"],
  ["gt", ">"],
  ["quot", "\""],
  ["apos", "'"],
  ["nbsp", " "],
  ["laquo", "\u00ab"],
  ["raquo", "\u00bb"],
  ["ldquo", "\u201c"],
  ["rdquo", "\u201d"],
  ["lsquo", "\u2018"],
  ["rsquo", "\u2019"],
]);

export function normalizeSafeExternalUrl(value) {
  const raw = String(value || "").trim();
  if (!raw) return null;
  let parsed;
  try {
    parsed = new URL(raw);
  } catch {
    return null;
  }
  if (!SAFE_EXTERNAL_PROTOCOLS.has(parsed.protocol)) return null;
  return parsed.toString();
}

export function isSafeNavigableUrl(value, baseUrl = "https://example.invalid/") {
  const raw = String(value || "").trim();
  if (!raw) return false;
  if (raw.startsWith("#")) return true;
  if (/^(?:\/|\.\/|\.\.\/|\?)/.test(raw)) return true;
  try {
    const parsed = new URL(raw, baseUrl);
    return SAFE_EXTERNAL_PROTOCOLS.has(parsed.protocol);
  } catch {
    return false;
  }
}

export function isSafeResourceUrl(value, baseUrl = "https://example.invalid/") {
  const raw = String(value || "").trim();
  if (!raw) return false;
  if (/^(?:\/|\.\/|\.\.\/)/.test(raw)) return true;
  if (/^data:image\//i.test(raw)) return true;
  if (/^blob:/i.test(raw)) return true;
  try {
    const parsed = new URL(raw, baseUrl);
    return SAFE_EXTERNAL_PROTOCOLS.has(parsed.protocol);
  } catch {
    return false;
  }
}

export function decodeHtmlEntitiesStrict(value = "") {
  return String(value || "").replace(/&(#x?[0-9a-f]+|[a-z][a-z0-9]+);/gi, (match, entity) => {
    const normalized = String(entity || "");
    if (!normalized) return match;
    if (normalized[0] === "#") {
      const isHex = normalized[1]?.toLowerCase() === "x";
      const rawCode = isHex ? normalized.slice(2) : normalized.slice(1);
      const codePoint = Number.parseInt(rawCode, isHex ? 16 : 10);
      if (!Number.isInteger(codePoint) || codePoint < 0 || codePoint > 0x10FFFF) return match;
      try {
        return String.fromCodePoint(codePoint);
      } catch {
        return match;
      }
    }
    return NAMED_HTML_ENTITIES.get(normalized.toLowerCase()) ?? match;
  });
}
