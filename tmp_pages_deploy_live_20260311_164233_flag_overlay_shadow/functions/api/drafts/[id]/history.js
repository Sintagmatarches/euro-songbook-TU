import { json } from "../../../_lib/utils.js";
import { ensureSchemaAndSeed } from "../../../_lib/schema.js";
import { dbAll } from "../../../_lib/db.js";
import { requireDraftAccess, parseJSON } from "../../../_lib/drafts.js";

export async function onRequestGet({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const draftId = String(params.id || "").trim();
  const access = await requireDraftAccess(env, request, draftId);
  if (access instanceof Response) return access;

  const items = await dbAll(
    env,
    `SELECT id,seq,client_op_id,base_version,op_type,payload_json,status,created_by,created_at
     FROM draft_ops
     WHERE draft_id=?
     ORDER BY seq DESC
     LIMIT 300`,
    [draftId]
  );
  return json({
    draft_id: draftId,
    items: items.map((entry) => ({
      id: entry.id,
      seq: Number(entry.seq || 0),
      client_op_id: String(entry.client_op_id || ""),
      base_version: Number(entry.base_version || 0),
      op_type: String(entry.op_type || ""),
      payload: parseJSON(entry.payload_json, {}),
      status: String(entry.status || "persisted"),
      created_by: entry.created_by || null,
      created_at: entry.created_at,
    })),
  });
}
