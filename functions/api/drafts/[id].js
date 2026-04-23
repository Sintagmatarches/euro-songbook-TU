import { err, json, readJSON } from "../../_lib/utils.js";
import { ensureSchemaAndSeed } from "../../_lib/schema.js";
import { applyDraftOperation, requireDraftAccess, getDraftState, listDraftPendingInvitations } from "../../_lib/drafts.js";
import { dbGet } from "../../_lib/db.js";

export async function onRequestGet({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const draftId = String(params.id || "").trim();
  const access = await requireDraftAccess(env, request, draftId);
  if (access instanceof Response) return access;

  const ownerUser = await dbGet(env, `SELECT id, nickname, email FROM users WHERE id=?`, [access.draft.owner_user_id]);
  const state = await getDraftState(env, draftId);
  const pendingInvitations = access.owner ? await listDraftPendingInvitations(env, draftId) : [];
  return json({
    draft_id: draftId,
    version: state?.draft?.version ?? 0,
    status: state?.draft?.status || "draft",
    owner: ownerUser
      ? { id: ownerUser.id, nickname: String(ownerUser.nickname || ""), email: String(ownerUser.email || "") }
      : null,
    collaborators: state?.collaborators || [],
    pending_invitations: pendingInvitations,
    snapshot: state?.draft?.snapshot || {},
    lines: state?.lines || [],
  });
}

export async function onRequestPost({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const draftId = String(params.id || "").trim();
  const access = await requireDraftAccess(env, request, draftId);
  if (access instanceof Response) return access;

  const body = await readJSON(request);
  const opType = String(body?.op_type || body?.type || "").trim();
  if (!opType) return err("Operation type is required", 400);

  try {
    const out = await applyDraftOperation(env, {
      draftId,
      userId: access.userId,
      op: {
        ...body,
        op_type: opType,
        payload: body?.payload && typeof body.payload === "object" ? body.payload : {},
      },
    });
    const state = await getDraftState(env, draftId);
    return json({ ...out, state });
  } catch (cause) {
    return err(cause?.message || "Draft operation failed", 400);
  }
}
