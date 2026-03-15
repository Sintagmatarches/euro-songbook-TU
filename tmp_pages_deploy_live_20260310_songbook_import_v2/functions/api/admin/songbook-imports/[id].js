import { json, err, readJSON } from "../../../_lib/utils.js";
import { requirePermission } from "../../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../../_lib/schema.js";
import { getSongbookImportSession, saveSongbookImportSession } from "../../../_lib/songbook-imports.js";

export async function onRequestGet({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const access = await requirePermission(env, request, "songs.edit");
  if (access instanceof Response) return access;
  const sessionId = String(params?.id || "").trim();
  if (!sessionId) return err("Session id is required", 400);
  const item = await getSongbookImportSession(env, sessionId);
  if (!item) return err("Import session not found", 404);
  return json({ item });
}

export async function onRequestPut({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const access = await requirePermission(env, request, "songs.edit");
  if (access instanceof Response) return access;
  const sessionId = String(params?.id || "").trim();
  if (!sessionId) return err("Session id is required", 400);
  const body = await readJSON(request);
  if (!body || typeof body !== "object") return err("Invalid request body", 400);
  try {
    const session = await saveSongbookImportSession(env, access, { ...body, id: sessionId });
    return json({ item: session });
  } catch (cause) {
    return err(cause?.message || "Failed to update import session", 400);
  }
}
