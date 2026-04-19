import { json, err, readJSON } from "../../../../_lib/utils.js";
import {
  dbGet,
  dbRun,
  requireAuth,
  getUserAccess,
  getOptionalUserAccess,
  canViewAdminContent,
} from "../../../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../../../_lib/schema.js";

function normalizeBody(value) {
  return String(value || "").replace(/\r\n?/g, "\n").trim();
}

async function getPublishedSong(env, songId) {
  return dbGet(
    env,
    `SELECT id, status, is_admin_content
     FROM songs
     WHERE id=? AND status='published'
     LIMIT 1`,
    [songId]
  );
}

async function getComment(env, songId, commentId) {
  return dbGet(
    env,
    `SELECT id, song_id, user_id, body, created_at, updated_at
     FROM song_comments
     WHERE id=? AND song_id=?
     LIMIT 1`,
    [commentId, songId]
  );
}

function canManageComment(access, comment) {
  if (!access || !comment) return false;
  if (String(access.role || "") === "super_admin") return true;
  return String(access.id || "") === String(comment.user_id || "");
}

async function readCommentItem(env, commentId) {
  return dbGet(
    env,
    `SELECT
       c.id,
       c.song_id,
       c.user_id,
       c.body,
       c.created_at,
       c.updated_at,
       coalesce(nullif(u.nickname, ''), u.email, u.id) AS author_name
     FROM song_comments c
     JOIN users u ON u.id = c.user_id
     WHERE c.id=?
     LIMIT 1`,
    [commentId]
  );
}

export async function onRequestPut({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;

  const songId = String(params?.id || "").trim();
  const commentId = String(params?.comment_id || "").trim();
  if (!songId || !commentId) return err("Comment not found", 404);

  const song = await getPublishedSong(env, songId);
  if (!song) return err("Song not found", 404);
  const optionalAccess = await getOptionalUserAccess(env, request);
  if (Number(song.is_admin_content || 0) === 1 && !canViewAdminContent(optionalAccess)) {
    return err("Song not found", 404);
  }

  const access = await getUserAccess(env, auth.sub);
  if (!access) return err("Unauthorized", 401);

  const comment = await getComment(env, songId, commentId);
  if (!comment) return err("Comment not found", 404);
  if (!canManageComment(access, comment)) return err("Forbidden", 403);

  const body = await readJSON(request);
  const text = normalizeBody(body?.body);
  if (!text) return err("comment body required", 400);
  if (text.length > 4000) return err("comment too long", 400);

  await dbRun(
    env,
    `UPDATE song_comments
     SET body=?, updated_at=datetime('now')
     WHERE id=? AND song_id=?`,
    [text, commentId, songId]
  );

  const item = await readCommentItem(env, commentId);
  return json({ item });
}

export async function onRequestDelete({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;

  const songId = String(params?.id || "").trim();
  const commentId = String(params?.comment_id || "").trim();
  if (!songId || !commentId) return err("Comment not found", 404);

  const song = await getPublishedSong(env, songId);
  if (!song) return err("Song not found", 404);
  const optionalAccess = await getOptionalUserAccess(env, request);
  if (Number(song.is_admin_content || 0) === 1 && !canViewAdminContent(optionalAccess)) {
    return err("Song not found", 404);
  }

  const access = await getUserAccess(env, auth.sub);
  if (!access) return err("Unauthorized", 401);

  const comment = await getComment(env, songId, commentId);
  if (!comment) return err("Comment not found", 404);
  if (!canManageComment(access, comment)) return err("Forbidden", 403);

  await dbRun(env, `DELETE FROM song_comments WHERE id=? AND song_id=?`, [commentId, songId]);
  return json({ ok: true });
}
