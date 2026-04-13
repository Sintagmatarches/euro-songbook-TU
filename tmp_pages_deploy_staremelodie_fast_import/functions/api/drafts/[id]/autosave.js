import { json, err, readJSON } from "../../../_lib/utils.js";
import { ensureSchemaAndSeed } from "../../../_lib/schema.js";
import { autosaveDraftFromEditor, requireDraftAccess } from "../../../_lib/drafts.js";

export async function onRequestPost({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const draftId = String(params.id || "").trim();
  const access = await requireDraftAccess(env, request, draftId);
  if (access instanceof Response) return access;
  const body = await readJSON(request);

  try {
    const out = await autosaveDraftFromEditor(env, {
      draftId,
      userId: access.userId,
      payload: {
        meta: body?.meta && typeof body.meta === "object" ? body.meta : {},
        lyrics: String(body?.lyrics ?? ""),
        client_op_id: String(body?.client_op_id || "").trim(),
      },
    });
    return json({ ok: true, draft_id: draftId, changed: !!out?.changed, version: Number(out?.version || 0) });
  } catch (cause) {
    return err(String(cause?.message || "Autosave failed"), 400);
  }
}

