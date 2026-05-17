import test from "node:test";
import assert from "node:assert/strict";
import { JSDOM } from "jsdom";
import createDOMPurify from "dompurify";
import {
  decodeHtmlEntitiesStrict,
  isSafeNavigableUrl,
  normalizeSafeExternalUrl,
} from "../shared/security.js";

function createSanitizer() {
  const window = new JSDOM("<!doctype html><html><body></body></html>").window;
  const DOMPurify = createDOMPurify(window);
  DOMPurify.addHook("afterSanitizeAttributes", (node) => {
    if (!(node instanceof window.Element)) return;
    if (!node.hasAttribute("href")) return;
    const value = node.getAttribute("href");
    if (!isSafeNavigableUrl(value, "https://example.test/")) node.removeAttribute("href");
  });
  return DOMPurify;
}

test("strict entity decoding returns literal tag text", () => {
  const decoded = decodeHtmlEntitiesStrict("&lt;script&gt;alert(1)&lt;/script&gt;");
  assert.equal(decoded, "<script>alert(1)</script>");
});

test("sanitizer strips script and event handler payloads", () => {
  const DOMPurify = createSanitizer();
  const dirty = '<div><script>alert(1)</script><img src="x" onerror="alert(1)"><svg onload="alert(1)"><circle></circle></svg></div>';
  const clean = DOMPurify.sanitize(dirty, { USE_PROFILES: { html: true, svg: true, svgFilters: true } });
  assert.ok(!clean.includes("<script"));
  assert.ok(!clean.includes("onerror"));
  assert.ok(!clean.includes("onload"));
  assert.match(clean, /<img[^>]*src="x"[^>]*>/);
});

test("sanitizer removes javascript links", () => {
  const DOMPurify = createSanitizer();
  const clean = DOMPurify.sanitize('<a href="javascript:alert(1)">x</a>');
  assert.match(clean, /<a(?:\s[^>]*)?>x<\/a>/);
  assert.ok(!clean.includes("javascript:"));
});

test("external link normalization rejects unsafe schemes", () => {
  assert.equal(normalizeSafeExternalUrl("javascript:alert(1)"), null);
  assert.equal(normalizeSafeExternalUrl("data:text/html,<svg onload=alert(1)>"), null);
  assert.equal(normalizeSafeExternalUrl("https://example.com/path"), "https://example.com/path");
});
