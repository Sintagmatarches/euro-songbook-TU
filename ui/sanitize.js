import createDOMPurify from "./vendor/dompurify.es.mjs";
import { isSafeNavigableUrl, isSafeResourceUrl } from "../shared/security.js";

const DOMPurify = typeof window !== "undefined" ? createDOMPurify(window) : null;
const URL_ATTRS = new Set(["href", "xlink:href", "action", "formaction"]);
const RESOURCE_ATTRS = new Set(["src", "poster"]);

if (DOMPurify) {
  DOMPurify.addHook("afterSanitizeAttributes", (node) => {
    if (!(node instanceof Element)) return;
    const baseUrl = document.baseURI || window.location.href;
    for (const attr of URL_ATTRS) {
      if (!node.hasAttribute(attr)) continue;
      const value = node.getAttribute(attr);
      if (!isSafeNavigableUrl(value, baseUrl)) node.removeAttribute(attr);
    }
    for (const attr of RESOURCE_ATTRS) {
      if (!node.hasAttribute(attr)) continue;
      const value = node.getAttribute(attr);
      if (!isSafeResourceUrl(value, baseUrl)) node.removeAttribute(attr);
    }
  });
}

const BASE_OPTIONS = Object.freeze({
  ALLOW_DATA_ATTR: true,
  ALLOW_ARIA_ATTR: true,
  ALLOW_UNKNOWN_PROTOCOLS: false,
});

const APP_HTML_OPTIONS = Object.freeze({
  ...BASE_OPTIONS,
  USE_PROFILES: { html: true, svg: true, svgFilters: true },
  FORBID_TAGS: ["script", "iframe", "object", "embed", "base"],
});

const LYRICS_HTML_OPTIONS = Object.freeze({
  ...BASE_OPTIONS,
  ALLOWED_TAGS: ["div", "span", "pre", "br", "details", "summary", "ol", "li"],
  ALLOWED_ATTR: ["class", "aria-hidden", "aria-label", "aria-expanded", "title", "role", "tabindex", "data-confidence-label"],
});

export function sanitizeAppHtml(html = "") {
  if (!DOMPurify) return String(html || "");
  return DOMPurify.sanitize(String(html || ""), APP_HTML_OPTIONS);
}

export function sanitizeLyricsHtml(html = "") {
  if (!DOMPurify) return String(html || "");
  return DOMPurify.sanitize(String(html || ""), LYRICS_HTML_OPTIONS);
}
