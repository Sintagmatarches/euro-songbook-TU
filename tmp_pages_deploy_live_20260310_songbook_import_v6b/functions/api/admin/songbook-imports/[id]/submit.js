import { json, err } from "../../../../_lib/utils.js";
import { requirePermission } from "../../../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../../../_lib/schema.js";
import { submitSongbookImportSession } from "../../../../_lib/songbook-imports.js";

export async function onRequestPost({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const access = await requirePermission(env, request, "songs.edit");
  if (access instanceof Response) return access;
  const sessionId = String(params?.id || "").trim();
  if (!sessionId) return err("Session id is required", 400);
  try {
    const result = await submitSongbookImportSession(env, access, sessionId);
    return json(result);
  } catch (cause) {
    return err(cause?.message || "Failed to submit import session", 400);
  }
}
