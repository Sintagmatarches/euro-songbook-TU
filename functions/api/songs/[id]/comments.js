import { json, err, readJSON, makeId } from "../../../_lib/utils.js";
import { dbAll, dbGet, dbRun, requireAuth, getOptionalUserAccess, canViewAdminContent } from "../../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../../_lib/schema.js";

function normalizeBody(value) {
  return String(value || "").replace(/\r\n?/g, "\n").trim();
}

function publicAuthorName(row = {}) {
  const nickname = String(row?.author_nickname || "").trim();
  if (nickname) return nickname;
  const userId = String(row?.user_id || "").trim();
  if (userId) return `user-${userId.slice(-6)}`;
  return "user";
}

function serializeCommentItem(row = {}) {
  if (!row || typeof row !== "object") return row;
  return {
    ...row,
    author_name: publicAuthorName(row),
  };
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

export async function onRequestGet({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const songId = String(params?.id || "").trim();
  if (!songId) return err("Song not found", 404);
  const song = await getPublishedSong(env, songId);
  if (!song) return err("Song not found", 404);
  const access = await getOptionalUserAccess(env, request);
  if (Number(song.is_admin_content || 0) === 1 && !canViewAdminContent(access)) {
    return err("Song not found", 404);
  }

  const items = await dbAll(
    env,
    `SELECT
       c.id,
       c.song_id,
       c.user_id,
       c.body,
       c.created_at,
       c.updated_at,
       u.nickname AS author_nickname
     FROM song_comments c
     JOIN users u ON u.id = c.user_id
     WHERE c.song_id=?
     ORDER BY datetime(c.created_at) ASC, c.id ASC
     LIMIT 200`,
    [songId]
  );

  return json({ items: items.map((item) => serializeCommentItem(item)) });
}

export async function onRequestPost({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;

  const songId = String(params?.id || "").trim();
  if (!songId) return err("Song not found", 404);
  const song = await getPublishedSong(env, songId);
  if (!song) return err("Song not found", 404);
  const access = await getOptionalUserAccess(env, request);
  if (Number(song.is_admin_content || 0) === 1 && !canViewAdminContent(access)) {
    return err("Song not found", 404);
  }

  const body = await readJSON(request);
  const text = normalizeBody(body?.body);
  if (!text) return err("comment body required", 400);
  if (text.length > 4000) return err("comment too long", 400);

  const commentId = makeId("sc");
  await dbRun(
    env,
    `INSERT INTO song_comments (
      id, song_id, user_id, body, created_at, updated_at
    ) VALUES (?, ?, ?, ?, datetime('now'), datetime('now'))`,
    [commentId, songId, auth.sub, text]
  );

  const item = await dbGet(
    env,
    `SELECT
       c.id,
       c.song_id,
       c.user_id,
       c.body,
       c.created_at,
       c.updated_at,
       u.nickname AS author_nickname
     FROM song_comments c
     JOIN users u ON u.id = c.user_id
     WHERE c.id=?
     LIMIT 1`,
    [commentId]
  );

  return json({ item: serializeCommentItem(item) });
}
