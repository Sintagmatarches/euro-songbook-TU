import { json, err, readJSON, publicApiError } from "../../../_lib/utils.js";
import { ensureSchemaAndSeed } from "../../../_lib/schema.js";
import { markDraftPublished, publishDraftToSong, requireDraftAccess } from "../../../_lib/drafts.js";

export async function onRequestPost({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const draftId = String(params.id || "").trim();
  const access = await requireDraftAccess(env, request, draftId, { publish: true });
  if (access instanceof Response) return access;
  try {
    const payload = await readJSON(request);
    const attachOnly = payload?.attach_only === true
      || String(payload?.attach_only || "").trim().toLowerCase() === "true"
      || String(payload?.attach_only || "").trim() === "1";
    if (attachOnly) {
      const songId = String(payload?.song_id || "").trim();
      if (!songId) return err("song_id required", 400);
      await markDraftPublished(env, { draftId, songId, userId: access.userId });
      return json({ ok: true, draft_id: draftId, song_id: songId, attach_only: true });
    }
    const out = await publishDraftToSong(env, { draftId, userId: access.userId });
    return json({ ok: true, draft_id: draftId, song_id: out.songId });
  } catch (cause) {
    console.error("[api/drafts/:id/publish] failed:", cause?.message || cause);
    return publicApiError(cause, { fallback: "Publish failed" });
  }
}
