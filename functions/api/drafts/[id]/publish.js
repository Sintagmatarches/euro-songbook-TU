import { json, err } from "../../../_lib/utils.js";
import { ensureSchemaAndSeed } from "../../../_lib/schema.js";
import { publishDraftToSong, requireDraftAccess } from "../../../_lib/drafts.js";

export async function onRequestPost({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const draftId = String(params.id || "").trim();
  const access = await requireDraftAccess(env, request, draftId, { publish: true });
  if (access instanceof Response) return access;
  try {
    const out = await publishDraftToSong(env, { draftId, userId: access.userId });
    return json({ ok: true, draft_id: draftId, song_id: out.songId });
  } catch (cause) {
    return err(cause?.message || "Publish failed", 400);
  }
}
