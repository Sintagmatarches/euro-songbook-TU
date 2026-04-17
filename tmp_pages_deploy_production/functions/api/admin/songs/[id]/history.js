import { json, err } from "../../../../_lib/utils.js";
import { requirePermission, assertScopeForLang, canViewAdminContent } from "../../../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../../../_lib/schema.js";
import {
  ensureSongHistoryBaseline,
  getLatestSongRevision,
  listSongRevisions,
  readSongSnapshot,
} from "../../../../_lib/song-audit.js";

function normStr(value) {
  const text = String(value ?? "").trim();
  return text || null;
}

export async function onRequestGet({ env, request, params }) {
  try {
    await ensureSchemaAndSeed(env);
    const access = await requirePermission(env, request, "songs.edit");
    if (access instanceof Response) return access;

    const songId = String(params.id || "").trim();
    if (!songId) return err("Not found", 404);

    const currentSnapshot = await readSongSnapshot(env, songId);
    if (currentSnapshot && !currentSnapshot.is_deleted) {
      await ensureSongHistoryBaseline(env, songId, access.id);
    }
    const latestRevision = await getLatestSongRevision(env, songId);
    const currentAfterBaseline = currentSnapshot || await readSongSnapshot(env, songId);
    const sourceSnapshot = currentAfterBaseline || latestRevision?.snapshot || null;
    if (!sourceSnapshot) return err("Not found", 404);
    if (Number(sourceSnapshot.is_admin_content || 0) === 1 && !canViewAdminContent(access)) return err("Not found", 404);

    const editPerm = await requirePermission(env, request, "songs.edit", { lang: sourceSnapshot.lang });
    if (editPerm instanceof Response) return editPerm;
    assertScopeForLang(access, sourceSnapshot.lang);

    const items = await listSongRevisions(env, songId, 120);
    return json({
      song_id: songId,
      is_deleted: Number(sourceSnapshot.is_deleted || 0) === 1,
      current_revision_id: items[0]?.id || null,
      items: items.map((item, index) => ({
        id: item.id,
        revision_seq: Number(item.revision_seq || 0),
        action: String(item.action || "update"),
        actor_user_id: normStr(item.actor_user_id),
        actor_email: normStr(item.actor_email),
        actor_nickname: normStr(item.actor_nickname),
        restored_from_revision_id: normStr(item.restored_from_revision_id),
        created_at: item.created_at,
        is_current: index === 0,
        snapshot: item.snapshot,
        summary: {
          title: item.snapshot?.title || "",
          lang: item.snapshot?.lang || "",
          country: item.snapshot?.country || "",
          status: item.snapshot?.is_deleted ? "deleted" : (item.snapshot?.status || "published"),
        },
      })),
    });
  } catch (cause) {
    if (cause instanceof Response) return cause;
    return err(`Song history failed: ${cause?.message || "unknown error"}`, 500);
  }
}
