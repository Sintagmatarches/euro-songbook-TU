import test from "node:test";
import assert from "node:assert/strict";
import { enforceSameOrigin, json } from "../functions/_lib/utils.js";

test("same-origin state-changing request is allowed", () => {
  const request = new Request("https://example.test/api/favorites/song1", {
    method: "POST",
    headers: {
      Origin: "https://example.test",
      Cookie: "songbook_session=abc",
    },
  });
  assert.equal(enforceSameOrigin(request), null);
});

test("cross-origin cookie-auth state-changing request is blocked", () => {
  const request = new Request("https://example.test/api/favorites/song1", {
    method: "POST",
    headers: {
      Origin: "https://evil.test",
      Cookie: "songbook_session=abc",
    },
  });
  const response = enforceSameOrigin(request);
  assert.ok(response instanceof Response);
  assert.equal(response.status, 403);
});

test("bearer-auth request can skip same-origin CSRF gate", () => {
  const request = new Request("https://example.test/api/drafts/d1/ws", {
    method: "POST",
    headers: {
      Authorization: "Bearer token123",
    },
  });
  assert.equal(enforceSameOrigin(request), null);
});

test("JSON responses include security headers for Pages Functions", () => {
  const response = json({ ok: true });
  assert.equal(response.headers.get("X-Content-Type-Options"), "nosniff");
  assert.equal(response.headers.get("Referrer-Policy"), "strict-origin-when-cross-origin");
  assert.match(String(response.headers.get("Content-Security-Policy") || ""), /default-src 'none'/);
});
