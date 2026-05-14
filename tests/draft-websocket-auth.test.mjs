import test from "node:test";
import assert from "node:assert/strict";

import { signJWT } from "../functions/_lib/auth.js";
import { onRequestGet } from "../functions/api/drafts/[id]/ws.js";
import { createMockEnv, withFreshSchemaMarkers } from "./helpers/mock-env.mjs";

test("draft websocket ignores JWT in query string and requires header or cookie auth", async () => {
  const env = createMockEnv(withFreshSchemaMarkers(async () => null));
  const token = await signJWT(env.JWT_SECRET, {
    sub: "u-1",
    email: "user@example.com",
    nickname: "user",
    role: "user",
  });

  const response = await onRequestGet({
    env,
    request: new Request(`https://example.com/api/drafts/draft-1/ws?token=${encodeURIComponent(token)}`, {
      headers: {
        Upgrade: "websocket",
      },
    }),
    params: { id: "draft-1" },
  });

  assert.equal(response.status, 401);
});
