import { json } from "../../_lib/utils.js";
import { ensureSchemaAndSeed } from "../../_lib/schema.js";
import { requireDraftAccess, getDraftState } from "../../_lib/drafts.js";
import { dbGet } from "../../_lib/db.js";

export async function onRequestGet({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const draftId = String(params.id || "").trim();
  const access = await requireDraftAccess(env, request, draftId);
  if (access instanceof Response) return access;

  const ownerUser = await dbGet(env, `SELECT id, nickname, email FROM users WHERE id=?`, [access.draft.owner_user_id]);
  const state = await getDraftState(env, draftId);
  return json({
    draft_id: draftId,
    version: state?.draft?.version ?? 0,
    status: state?.draft?.status || "draft",
    owner: ownerUser
      ? { id: ownerUser.id, nickname: String(ownerUser.nickname || ""), email: String(ownerUser.email || "") }
      : null,
    collaborators: state?.collaborators || [],
    snapshot: state?.draft?.snapshot || {},
    lines: state?.lines || [],
  });
}
