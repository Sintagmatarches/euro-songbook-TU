import { json, err } from "../../../../_lib/utils.js";
import { ensureSchemaAndSeed } from "../../../../_lib/schema.js";
import { dbRun } from "../../../../_lib/db.js";
import { requireDraftAccess } from "../../../../_lib/drafts.js";

export async function onRequestDelete({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const draftId = String(params.id || "").trim();
  const targetUserId = String(params.user_id || "").trim();
  const access = await requireDraftAccess(env, request, draftId);
  if (access instanceof Response) return access;
  if (!access.owner) return err("Only owner can remove collaborators", 403);
  if (!targetUserId) return err("user_id is required", 400);

  await dbRun(env, `DELETE FROM draft_collaborators WHERE draft_id=? AND user_id=?`, [draftId, targetUserId]);
  await dbRun(env, `UPDATE drafts SET updated_at=datetime('now') WHERE id=?`, [draftId]);
  return json({ ok: true });
}
