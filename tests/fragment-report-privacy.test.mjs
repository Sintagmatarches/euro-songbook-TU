import test from "node:test";
import assert from "node:assert/strict";

import { signJWT } from "../functions/_lib/auth.js";
import { onRequestGet } from "../functions/api/fragment-reports/[id].js";
import { createMockEnv, readJson, withFreshSchemaMarkers } from "./helpers/mock-env.mjs";

function createFragmentReportEnv() {
  const users = new Map([
    ["user-owner", {
      id: "user-owner",
      email: "owner@example.com",
      nickname: "owner",
      role: "user",
      created_at: "2024-01-01T00:00:00.000Z",
      nickname_updated_at: null,
    }],
    ["user-admin", {
      id: "user-admin",
      email: "admin@example.com",
      nickname: "admin",
      role: "super_admin",
      created_at: "2024-01-01T00:00:00.000Z",
      nickname_updated_at: null,
    }],
  ]);

  const report = {
    id: "fr-1",
    user_id: "user-owner",
    assigned_admin_user_id: "user-admin",
    status: "open",
    source: "song",
    fragment_text: "Fragment",
    created_at: "2024-01-01 10:00:00",
    updated_at: "2024-01-01 10:00:00",
    last_message_at: "2024-01-01 10:00:00",
  };

  const messages = [
    {
      id: "frm-1",
      report_id: "fr-1",
      sender_user_id: "user-owner",
      body: "Question",
      is_admin_reply: 0,
      created_at: "2024-01-01 10:00:00",
      sender_email: "owner@example.com",
      sender_nickname: "owner",
    },
    {
      id: "frm-2",
      report_id: "fr-1",
      sender_user_id: "user-admin",
      body: "Answer",
      is_admin_reply: 1,
      created_at: "2024-01-01 11:00:00",
      sender_email: "admin@example.com",
      sender_nickname: "admin",
    },
  ];

  const resolver = withFreshSchemaMarkers(async (sql, params, method) => {
    if (sql.includes("SELECT id,email,nickname,role,created_at,nickname_updated_at FROM users WHERE id=?")) {
      return users.get(String(params[0] || "")) || null;
    }
    if (sql.includes("SELECT permission FROM user_permissions WHERE user_id=?")) {
      return [];
    }
    if (sql.includes("SELECT lang FROM user_scope_languages WHERE user_id=?")) {
      return [];
    }
    if (sql.includes("SELECT id, user_id, assigned_admin_user_id, status, source, fragment_text, created_at, updated_at, last_message_at") && sql.includes("FROM fragment_reports")) {
      return report;
    }
    if (sql.includes("owner.email AS user_email") && sql.includes("admin.email AS admin_email")) {
      return {
        ...report,
        user_email: "owner@example.com",
        user_nickname: "owner",
        admin_email: "admin@example.com",
        admin_nickname: "admin",
      };
    }
    if (method === "all" && sql.includes("FROM fragment_report_messages m")) {
      return messages;
    }
    return method === "all" ? [] : method === "run" ? {} : null;
  });

  return { env: createMockEnv(resolver), users };
}

async function authCookie(env, user) {
  const token = await signJWT(env.JWT_SECRET, {
    sub: user.id,
    email: user.email,
    nickname: user.nickname,
    role: user.role,
  });
  return `songbook_session=${encodeURIComponent(token)}`;
}

test("fragment report detail hides private emails from report owner", async () => {
  const { env, users } = createFragmentReportEnv();
  const cookie = await authCookie(env, users.get("user-owner"));
  const response = await onRequestGet({
    env,
    request: new Request("https://example.com/api/fragment-reports/fr-1", {
      headers: { Cookie: cookie },
    }),
    params: { id: "fr-1" },
  });

  assert.equal(response.status, 200);
  const body = await readJson(response);
  assert.equal(body.user.email, "");
  assert.equal(body.admin.email, "");
  assert.equal(body.messages[0].sender.email, "");
  assert.equal(body.messages[1].sender.email, "");
});
