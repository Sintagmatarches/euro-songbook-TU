import { dbAll, dbGet, dbRun, assertScopeForLang } from "./db.js";
import { makeId, nowISO } from "./utils.js";
import { normalizeSongCountry, normalizeSongLanguage } from "../../shared/song-catalogs.js";
import { normalizeSongbookText, splitSongbookImportText } from "../../shared/songbook-import.js";

function parseJSON(value, fallback) {
  try {
    return value ? JSON.parse(value) : fallback;
  } catch {
    return fallback;
  }
}

function cleanString(value, maxLength = 0) {
  const normalized = String(value ?? "").trim();
  if (!normalized) return "";
  if (maxLength > 0) return normalized.slice(0, maxLength);
  return normalized;
}

function normalizeSessionInput(body = {}) {
  const sourceName = cleanString(body.source_name ?? body.sourceName, 240);
  const sourceType = cleanString(body.source_type ?? body.sourceType, 40).toLowerCase() || "text";
  const importLang = normalizeSongLanguage(body.import_lang ?? body.importLang) || cleanString(body.import_lang ?? body.importLang, 24).toLowerCase();
  const importCountry = normalizeSongCountry(body.import_country ?? body.importCountry) || cleanString(body.import_country ?? body.importCountry, 120);
  const extractionMode = cleanString(body.extraction_mode ?? body.extractionMode, 48).toLowerCase() || "manual";
  const rawText = normalizeSongbookText(body.raw_text ?? body.rawText ?? "");
  const editorText = normalizeSongbookText(body.editor_text ?? body.editorText ?? rawText);
  return {
    sourceName,
    sourceType,
    importLang,
    importCountry,
    extractionMode,
    rawText,
    editorText,
  };
}

function summarizeSessionRow(row = {}) {
  return {
    id: String(row.id || ""),
    source_name: String(row.source_name || ""),
    source_type: String(row.source_type || "text"),
    import_lang: String(row.import_lang || ""),
    import_country: String(row.import_country || ""),
    extraction_mode: String(row.extraction_mode || ""),
    song_count: Number(row.song_count || 0),
    marker_count: Number(row.marker_count || 0),
    status: String(row.status || "draft"),
    request_ids: parseJSON(row.request_ids_json, []),
    created_at: row.created_at || null,
    updated_at: row.updated_at || null,
    submitted_at: row.submitted_at || null,
    created_by: String(row.created_by || ""),
    updated_by: String(row.updated_by || ""),
    creator_nickname: String(row.creator_nickname || ""),
    creator_email: String(row.creator_email || ""),
  };
}

function detailSessionRow(row = {}) {
  const summary = summarizeSessionRow(row);
  const editorText = normalizeSongbookText(row.editor_text || "");
  const rawText = normalizeSongbookText(row.raw_text || "");
  const split = splitSongbookImportText(editorText);
  return {
    ...summary,
    raw_text: rawText,
    editor_text: editorText,
    preview_songs: split.songs,
    song_count: split.songCount,
    marker_count: split.markerCount,
  };
}

export async function listSongbookImportSessions(env) {
  const rows = await dbAll(
    env,
    `SELECT s.*, u.nickname AS creator_nickname, u.email AS creator_email
     FROM songbook_import_sessions s
     LEFT JOIN users u ON u.id=s.created_by
     ORDER BY datetime(s.updated_at) DESC, s.id DESC
     LIMIT 60`
  );
  return rows.map((row) => summarizeSessionRow(row));
}

export async function getSongbookImportSession(env, sessionId) {
  const row = await dbGet(
    env,
    `SELECT s.*, u.nickname AS creator_nickname, u.email AS creator_email
     FROM songbook_import_sessions s
     LEFT JOIN users u ON u.id=s.created_by
     WHERE s.id=?`,
    [sessionId]
  );
  return row ? detailSessionRow(row) : null;
}

export async function saveSongbookImportSession(env, access, body = {}) {
  const sessionId = cleanString(body.id, 80);
  const input = normalizeSessionInput(body);
  if (!input.editorText.trim()) {
    throw new Error("editor_text is required");
  }
  if (input.importLang) {
    assertScopeForLang(access, input.importLang);
  }
  const split = splitSongbookImportText(input.editorText);
  const now = nowISO();
  if (sessionId) {
    const existing = await dbGet(env, `SELECT id, status FROM songbook_import_sessions WHERE id=?`, [sessionId]);
    if (!existing) throw new Error("Import session not found");
    if (String(existing.status || "draft") === "submitted") {
      throw new Error("Submitted import session is locked");
    }
    await dbRun(
      env,
      `UPDATE songbook_import_sessions
       SET source_name=?,
           source_type=?,
           import_lang=?,
           import_country=?,
           extraction_mode=?,
           raw_text=?,
           editor_text=?,
           song_count=?,
           marker_count=?,
           updated_by=?,
           updated_at=?,
           status='draft'
       WHERE id=?`,
      [
        input.sourceName || null,
        input.sourceType,
        input.importLang || null,
        input.importCountry || null,
        input.extractionMode,
        input.rawText,
        input.editorText,
        split.songCount,
        split.markerCount,
        access.id,
        now,
        sessionId,
      ]
    );
    return await getSongbookImportSession(env, sessionId);
  }

  const id = makeId("sbimp");
  await dbRun(
    env,
    `INSERT INTO songbook_import_sessions (
       id, created_by, updated_by, source_name, source_type, import_lang, import_country, extraction_mode,
       raw_text, editor_text, song_count, marker_count, request_ids_json, status, created_at, updated_at, submitted_at
     ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, '[]', 'draft', ?, ?, NULL)`,
    [
      id,
      access.id,
      access.id,
      input.sourceName || null,
      input.sourceType,
      input.importLang || null,
      input.importCountry || null,
      input.extractionMode,
      input.rawText,
      input.editorText,
      split.songCount,
      split.markerCount,
      now,
      now,
    ]
  );
  return await getSongbookImportSession(env, id);
}

export async function submitSongbookImportSession(env, access, sessionId) {
  const session = await getSongbookImportSession(env, sessionId);
  if (!session) throw new Error("Import session not found");
  if (session.status === "submitted") throw new Error("Import session already submitted");
  const importLang = cleanString(session.import_lang, 24).toLowerCase();
  if (!importLang) throw new Error("Import language is required before submission");
  assertScopeForLang(access, importLang);
  const songs = Array.isArray(session.preview_songs) ? session.preview_songs : [];
  if (!songs.length) throw new Error("No songs found. Add at least one song break marker and text.");

  const requestIds = [];
  const now = nowISO();
  for (const song of songs) {
    const requestId = makeId("rq");
    await dbRun(
      env,
      `INSERT INTO song_requests (
         id,user_id,title,subtitle,lang,country,period,region,event,theme,report_fragment,year,source,notes,lyrics,lyrics_meta_json,
         tags_json,links_json,versions_json,status,review_comment,reviewed_by,reviewed_at,created_at,updated_at
       ) VALUES (?, ?, ?, NULL, ?, ?, NULL, NULL, NULL, NULL, 0, NULL, ?, ?, ?, '{}', '[]', '[]', '[]', 'new', NULL, NULL, NULL, ?, ?)`,
      [
        requestId,
        access.id,
        cleanString(song?.title, 180) || `Song ${requestIds.length + 1}`,
        importLang,
        session.import_country || null,
        session.source_name || "Songbook import",
        `Imported from session ${session.id}${session.source_name ? ` (${session.source_name})` : ""}`,
        normalizeSongbookText(song?.lyrics || ""),
        now,
        now,
      ]
    );
    requestIds.push(requestId);
  }

  await dbRun(
    env,
    `UPDATE songbook_import_sessions
     SET status='submitted',
         request_ids_json=?,
         updated_by=?,
         updated_at=?,
         submitted_at=?
     WHERE id=?`,
    [JSON.stringify(requestIds), access.id, now, now, sessionId]
  );

  return {
    request_ids: requestIds,
    submitted_count: requestIds.length,
    session: await getSongbookImportSession(env, sessionId),
  };
}

export async function deleteSongbookImportSession(env, sessionId) {
  const session = await getSongbookImportSession(env, sessionId);
  if (!session) throw new Error("Import session not found");

  const requestIds = Array.isArray(session.request_ids) ? session.request_ids.map((id) => String(id || "").trim()).filter(Boolean) : [];
  if (requestIds.length) {
    const placeholders = requestIds.map(() => "?").join(", ");
    const linkedRequests = await dbAll(
      env,
      `SELECT id, status
       FROM song_requests
       WHERE id IN (${placeholders})`,
      requestIds
    );
    const nonNew = linkedRequests.find((item) => String(item?.status || "").trim() !== "new");
    if (nonNew) {
      throw new Error("Cannot delete session after moderation has started");
    }
    await dbRun(
      env,
      `DELETE FROM song_requests
       WHERE id IN (${placeholders})`,
      requestIds
    );
  }

  await dbRun(env, `DELETE FROM songbook_import_sessions WHERE id=?`, [sessionId]);
  return { deleted: true, deleted_request_count: requestIds.length };
}
