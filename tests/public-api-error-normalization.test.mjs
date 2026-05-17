import test from "node:test";
import assert from "node:assert/strict";

import { normalizePublicApiError } from "../functions/_lib/utils.js";

test("normalizePublicApiError hides internal forbidden details", () => {
  const out = normalizePublicApiError(new Error("Forbidden: missing permission songs.edit"), {
    fallback: "Draft operation failed",
  });
  assert.deepEqual(out, { status: 403, message: "Forbidden" });
});

test("normalizePublicApiError preserves safe not found messages", () => {
  const out = normalizePublicApiError(new Error("Invitation not found"), {
    fallback: "Invitation failed",
  });
  assert.deepEqual(out, { status: 404, message: "Invitation not found" });
});

test("normalizePublicApiError falls back for unknown internal errors", () => {
  const out = normalizePublicApiError(new Error("SQLITE_BUSY: database is locked"), {
    fallback: "Autosave failed",
  });
  assert.deepEqual(out, { status: 400, message: "Autosave failed" });
});
