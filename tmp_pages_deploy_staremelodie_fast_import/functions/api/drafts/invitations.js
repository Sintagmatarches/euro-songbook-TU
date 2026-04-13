import { json } from "../../_lib/utils.js";
import { ensureSchemaAndSeed } from "../../_lib/schema.js";
import { requireAuth } from "../../_lib/db.js";
import { listDraftInvitationsForUser } from "../../_lib/drafts.js";

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;
  const userId = String(auth.sub || "");
  const url = new URL(request.url);
  const scope = String(url.searchParams.get("scope") || "incoming").trim().toLowerCase();
  const status = String(url.searchParams.get("status") || "").trim().toLowerCase();
  const items = await listDraftInvitationsForUser(env, { userId, scope, status });
  return json({ items, scope: scope === "outgoing" ? "outgoing" : "incoming", status: status || "" });
}

