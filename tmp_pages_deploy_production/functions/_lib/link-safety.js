const SAFE_EXTERNAL_PROTOCOLS = new Set(["http:", "https:"]);

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

export function sanitizeSongLinks(links, options = {}) {
  if (!Array.isArray(links)) return [];
  const fieldName = String(options.fieldName || "links");
  const out = [];
  for (let index = 0; index < links.length; index += 1) {
    const item = links[index];
    if (!item?.url) continue;
    const safeUrl = normalizeSafeExternalUrl(item.url);
    if (!safeUrl) {
      throw new Error(`${fieldName}[${index}].url must use http or https`);
    }
    out.push({
      ...item,
      url: safeUrl,
    });
  }
  return out;
}
