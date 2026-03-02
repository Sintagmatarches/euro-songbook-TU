import { json, err, readJSON } from "../_lib/utils.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { dbAll, requireAuth } from "../_lib/db.js";
import { createDraft, getDraftState } from "../_lib/drafts.js";

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;
  const userId = String(auth.sub || "");
  const url = new URL(request.url);
  const statusRaw = url.searchParams.get("status");
  const status = String(statusRaw || "").trim().toLowerCase();
  const where = [
    "(d.owner_user_id=? OR c.user_id=?)",
  ];
  const params = [userId, userId];
  if (status && (status === "draft" || status === "published" || status === "archived")) {
    where.push("d.status=?");
    params.push(status);
  }
  const items = await dbAll(
    env,
    `SELECT d.id, d.song_id, d.owner_user_id, d.status, d.version, d.created_at, d.updated_at,
            json_extract(d.snapshot_json,'$.title') AS snapshot_title,
            u.nickname AS owner_nickname,
            CASE WHEN d.owner_user_id=? THEN 1 ELSE 0 END AS is_owner
     FROM drafts d
     LEFT JOIN users u ON u.id=d.owner_user_id
     LEFT JOIN draft_collaborators c ON c.draft_id=d.id AND c.user_id=?
     WHERE ${where.join(" AND ")}
     GROUP BY d.id
     ORDER BY datetime(d.updated_at) DESC`,
    [userId, userId, ...params]
  );
  return json({ items });
}

export async function onRequestPost({ env, request }) {
  await ensureSchemaAndSeed(env);
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;
  const userId = String(auth.sub || "");
  if (!userId) return err("Unauthorized", 401);
  const body = await readJSON(request);
  const songId = String(body?.song_id || "").trim();
  const seed = body?.seed && typeof body.seed === "object" ? body.seed : {};

  try {
    const draftId = await createDraft(env, { userId, songId, seed });
    const state = await getDraftState(env, draftId);
    return json({
      draft_id: draftId,
      version: state?.draft?.version ?? 0,
      role: "owner",
      snapshot: state?.draft?.snapshot || {},
      lines: state?.lines || [],
    });
  } catch (cause) {
    return err(cause?.message || "Draft create failed", 400);
  }
}
