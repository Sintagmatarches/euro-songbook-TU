import { json, err } from "../../../_lib/utils.js";
import { ensureSchemaAndSeed } from "../../../_lib/schema.js";
import { requireAuth } from "../../../_lib/db.js";
import { cancelDraftInvitation, getDraftInvitationForUser } from "../../../_lib/drafts.js";

export async function onRequestDelete({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;
  const inviteId = String(params.invite_id || "").trim();
  const userId = String(auth.sub || "");
  if (!inviteId) return err("invite_id is required", 400);

  const invitation = await getDraftInvitationForUser(env, { invitationId: inviteId, userId });
  if (!invitation) return err("Invitation not found", 404);

  try {
    await cancelDraftInvitation(env, { invitationId: inviteId, ownerUserId: userId });
    const fresh = await getDraftInvitationForUser(env, { invitationId: inviteId, userId });
    return json({ ok: true, invitation: fresh });
  } catch (cause) {
    return err(String(cause?.message || "Cancel failed"), 400);
  }
}

