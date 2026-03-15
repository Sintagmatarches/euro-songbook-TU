import { json, err, readJSON } from "../../../_lib/utils.js";
import { ensureSchemaAndSeed } from "../../../_lib/schema.js";
import { dbGet } from "../../../_lib/db.js";
import { createDraftInvitation, getDraftInvitationForUser, requireDraftAccess } from "../../../_lib/drafts.js";

function normalizeNickname(value) {
  return String(value || "").trim().toLowerCase();
}

export async function onRequestPost({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const draftId = String(params.id || "").trim();
  const access = await requireDraftAccess(env, request, draftId);
  if (access instanceof Response) return access;
  if (!access.owner) return err("Only owner can add collaborators", 403);

  const body = await readJSON(request);
  const nickname = normalizeNickname(body?.nickname);
  if (!nickname) return err("nickname is required", 400);

  const user = await dbGet(
    env,
    `SELECT id,nickname,email
     FROM users
     WHERE lower(trim(coalesce(nickname,'')))=lower(trim(?))
     LIMIT 1`,
    [nickname]
  );
  if (!user) return err("User not found", 404);
  if (String(user.id || "") === access.userId) return err("Owner is already a collaborator", 400);

  try {
    const invitationId = await createDraftInvitation(env, {
      draftId,
      inviterUserId: access.userId,
      inviteeUserId: String(user.id || ""),
    });
    const invitation = invitationId
      ? await getDraftInvitationForUser(env, { invitationId, userId: access.userId })
      : null;
    return json({ ok: true, invitation });
  } catch (cause) {
    return err(String(cause?.message || "Invitation failed"), 400);
  }
}
