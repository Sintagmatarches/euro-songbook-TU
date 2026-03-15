import { json, err, readJSON } from "../../_lib/utils.js";
import { requirePermission } from "../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../_lib/schema.js";
import { listSongbookImportSessions, saveSongbookImportSession } from "../../_lib/songbook-imports.js";

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const access = await requirePermission(env, request, "songs.edit");
  if (access instanceof Response) return access;
  const items = await listSongbookImportSessions(env);
  return json({ items });
}

export async function onRequestPost({ env, request }) {
  await ensureSchemaAndSeed(env);
  const access = await requirePermission(env, request, "songs.edit");
  if (access instanceof Response) return access;
  const body = await readJSON(request);
  if (!body || typeof body !== "object") return err("Invalid request body", 400);
  try {
    const session = await saveSongbookImportSession(env, access, body);
    return json({ item: session });
  } catch (cause) {
    return err(cause?.message || "Failed to save import session", 400);
  }
}
