import { json, err, readJSON, internalServerError } from "../../../../_lib/utils.js";
import { requirePermission, assertScopeForLang, canViewAdminContent } from "../../../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../../../_lib/schema.js";
import { deleteSongSearchIndex, syncSongSearchIndex } from "../../../../_lib/song-search.mjs";
import {
  applySongSnapshot,
  findSongRevisionById,
  readSongSnapshot,
  recordSongRevision,
} from "../../../../_lib/song-audit.js";

export async function onRequestPost({ env, request, params }) {
  try {
    await ensureSchemaAndSeed(env);
    const access = await requirePermission(env, request, "songs.edit");
    if (access instanceof Response) return access;

    const songId = String(params.id || "").trim();
    const body = await readJSON(request);
    const revisionId = String(body?.revision_id || body?.revisionId || "").trim();
    if (!songId || !revisionId) return err("revision_id required", 400);

    const targetRevision = await findSongRevisionById(env, songId, revisionId);
    if (!targetRevision?.snapshot) return err("Revision not found", 404);
    const targetSnapshot = targetRevision.snapshot;
    if (Number(targetSnapshot.is_admin_content || 0) === 1 && !canViewAdminContent(access)) return err("Not found", 404);

    const currentSnapshot = await readSongSnapshot(env, songId);
    if (currentSnapshot) {
      assertScopeForLang(access, currentSnapshot.lang);
    }
    assertScopeForLang(access, targetSnapshot.lang);

    const editPerm = await requirePermission(env, request, "songs.edit", { lang: targetSnapshot.lang });
    if (editPerm instanceof Response) return editPerm;

    const appliedSnapshot = await applySongSnapshot(env, {
      ...targetSnapshot,
      updated_by: access.id,
    });

    if (Number(appliedSnapshot.is_deleted || 0) === 1) {
      await deleteSongSearchIndex(env, songId);
    } else {
      await syncSongSearchIndex(env, {
        id: songId,
        title: appliedSnapshot.title,
        subtitle: appliedSnapshot.subtitle,
        lyrics: appliedSnapshot.lyrics,
      });
    }

    await recordSongRevision(env, {
      songId,
      action: "restore",
      actorUserId: access.id,
      restoredFromRevisionId: revisionId,
      snapshot: appliedSnapshot,
    });

    return json({
      ok: true,
      id: songId,
      restored_revision_id: revisionId,
      is_deleted: Number(appliedSnapshot.is_deleted || 0) === 1,
      status: Number(appliedSnapshot.is_deleted || 0) === 1 ? "deleted" : appliedSnapshot.status,
    });
  } catch (cause) {
    if (cause instanceof Response) return cause;
    console.error("[api/admin/songs/:id/restore] failed:", cause?.message || cause);
    return internalServerError("Song restore failed", "song_restore_failed");
  }
}
