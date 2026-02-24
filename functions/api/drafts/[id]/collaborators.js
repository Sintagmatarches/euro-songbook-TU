import { json, err, readJSON } from "../../../_lib/utils.js";
import { ensureSchemaAndSeed } from "../../../_lib/schema.js";
import { dbGet, dbRun } from "../../../_lib/db.js";
import { requireDraftAccess, listDraftCollaborators } from "../../../_lib/drafts.js";

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

  await dbRun(
    env,
    `INSERT INTO draft_collaborators (draft_id,user_id,can_publish,added_by,created_at)
     VALUES (?,?,?,?,datetime('now'))
     ON CONFLICT(draft_id,user_id) DO UPDATE SET
       can_publish=excluded.can_publish,
       added_by=excluded.added_by`,
    [draftId, user.id, 1, access.userId]
  );

  await dbRun(env, `UPDATE drafts SET updated_at=datetime('now') WHERE id=?`, [draftId]);
  const collaborators = await listDraftCollaborators(env, draftId);
  const item = collaborators.find((entry) => String(entry.user_id || "") === String(user.id || "")) || null;
  return json({
    ok: true,
    collaborator: item
      ? {
          user_id: item.user_id,
          nickname: String(item.nickname || ""),
          email: String(item.email || ""),
          permissions: { can_publish: Number(item.can_publish || 0) === 1 },
        }
      : null,
  });
}
