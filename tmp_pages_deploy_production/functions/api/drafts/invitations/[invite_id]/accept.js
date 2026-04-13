import { json, err } from "../../../../_lib/utils.js";
import { ensureSchemaAndSeed } from "../../../../_lib/schema.js";
import { requireAuth } from "../../../../_lib/db.js";
import { acceptDraftInvitation, getDraftInvitationForUser } from "../../../../_lib/drafts.js";

export async function onRequestPost({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;
  const inviteId = String(params.invite_id || "").trim();
  const userId = String(auth.sub || "");
  if (!inviteId) return err("invite_id is required", 400);

  try {
    await acceptDraftInvitation(env, { invitationId: inviteId, userId });
    const invitation = await getDraftInvitationForUser(env, { invitationId: inviteId, userId });
    return json({ ok: true, invitation });
  } catch (cause) {
    return err(String(cause?.message || "Accept failed"), 400);
  }
}

