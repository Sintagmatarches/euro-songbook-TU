import { execFileSync } from "node:child_process";
import { writeFileSync, unlinkSync } from "node:fs";
import { tmpdir } from "node:os";
import { join } from "node:path";

import {
  buildSongSearchRows,
  generateDeleteKeys,
  SEARCH_INDEX_SCHEMA_MARKER_VALUE,
} from "../functions/_lib/song-search.mjs";

const DB_NAME = process.argv[2] || "euro-songbook-db";
const BATCH_SIZE = Number(process.argv[3] || 250);
const MODE = String(process.argv[4] || "full").trim().toLowerCase();

function runWrangler(args = []) {
  const stdout = execFileSync("cmd.exe", ["/c", "npx", "wrangler", "d1", "execute", DB_NAME, "--remote", ...args], {
    encoding: "utf8",
    stdio: ["ignore", "pipe", "pipe"],
  });
  const jsonStart = stdout.indexOf("[");
  if (jsonStart === -1) throw new Error(`Unexpected wrangler output:\n${stdout}`);
  return JSON.parse(stdout.slice(jsonStart));
}

function runSql(sql) {
  return runWrangler(["--command", sql]);
}

function runSqlFile(sql) {
  const file = join(tmpdir(), `song-search-rebuild-${Date.now()}-${Math.random().toString(36).slice(2)}.sql`);
  writeFileSync(file, sql, "utf8");
  try {
    return runWrangler(["--file", file]);
  } finally {
    unlinkSync(file);
  }
}

function sqlValue(value) {
  if (value == null) return "NULL";
  return `'${String(value).replace(/'/g, "''")}'`;
}

function chunk(values = [], size = 100) {
  const out = [];
  for (let index = 0; index < values.length; index += size) {
    out.push(values.slice(index, index + size));
  }
  return out;
}

function uploadVocabBatch(rows = []) {
  if (!rows.length) return;
  const statements = [];
  for (const row of rows) {
    statements.push(
      `INSERT OR REPLACE INTO song_search_vocab (term_norm, display_term, song_count, title_hits, subtitle_hits, lyrics_hits) VALUES (${sqlValue(row.term_norm)}, ${sqlValue(row.display_term)}, ${Number(row.song_count || 0)}, ${Number(row.title_hits || 0)}, ${Number(row.subtitle_hits || 0)}, ${Number(row.lyrics_hits || 0)});`
    );
  }
  runSqlFile(statements.join("\n"));
}

function uploadDeleteBatch(rows = []) {
  if (!rows.length) return;
  const statements = [];
  for (const row of rows) {
    statements.push(
      `INSERT OR IGNORE INTO song_search_deletes (delete_key, term_norm) VALUES (${sqlValue(row.delete_key)}, ${sqlValue(row.term_norm)});`
    );
  }
  runSqlFile(statements.join("\n"));
}

function loadSongs(offset = 0, limit = BATCH_SIZE) {
  const escapedSql = [
    "SELECT id, title, subtitle, lyrics",
    "FROM songs",
    "WHERE status='published'",
    "ORDER BY id",
    `LIMIT ${limit} OFFSET ${offset}`,
  ].join(" ");
  const result = runSql(escapedSql);
  return result?.[0]?.results || [];
}

function rebuildTermRowsForSong(song = {}) {
  return buildSongSearchRows({
    id: song.id,
    title: song.title,
    subtitle: song.subtitle,
    lyrics: "",
  });
}

function uploadTermBatch(rows = []) {
  if (!rows.length) return;
  const statements = [];
  for (const row of rows) {
    statements.push(
      `INSERT OR REPLACE INTO song_search_terms (song_id, field, term_norm, term_raw, prefix3, prefix4, term_len) VALUES (${sqlValue(row.song_id)}, ${sqlValue(row.field)}, ${sqlValue(row.term_norm)}, ${sqlValue(row.term_raw)}, ${sqlValue(row.prefix3)}, ${sqlValue(row.prefix4)}, ${Number(row.term_len || 0)});`
    );
  }
  runSqlFile(statements.join("\n"));
}

function uploadVocabAndDeletes(vocabMap = new Map()) {
  const vocabRows = [];
  const deleteRows = [];
  for (const [termNorm, entry] of vocabMap.entries()) {
    vocabRows.push({
      term_norm: termNorm,
      display_term: entry.display_term,
      song_count: entry.song_ids.size,
      title_hits: entry.title_hits,
      subtitle_hits: entry.subtitle_hits,
      lyrics_hits: 0,
    });
    for (const deleteKey of generateDeleteKeys(termNorm, 2)) {
      deleteRows.push({ delete_key: deleteKey, term_norm: termNorm });
    }
  }

  for (const batch of chunk(vocabRows, 500)) {
    uploadVocabBatch(batch);
  }

  for (const batch of chunk(deleteRows, 1200)) {
    uploadDeleteBatch(batch);
  }
}

function loadVocabBatch(offset = 0, limit = BATCH_SIZE) {
  const sql = [
    "SELECT",
    "  term_norm,",
    "  MIN(term_raw) AS display_term,",
    "  COUNT(DISTINCT song_id) AS song_count,",
    "  SUM(CASE WHEN field='title' THEN 1 ELSE 0 END) AS title_hits,",
    "  SUM(CASE WHEN field='subtitle' THEN 1 ELSE 0 END) AS subtitle_hits,",
    "  SUM(CASE WHEN field='lyrics' THEN 1 ELSE 0 END) AS lyrics_hits",
    "FROM song_search_terms",
    "GROUP BY term_norm",
    "ORDER BY term_norm",
    `LIMIT ${limit} OFFSET ${offset}`,
  ].join(" ");
  const result = runSql(sql);
  return result?.[0]?.results || [];
}

function resumeVocabAndDeletes() {
  const countResult = runSql("SELECT COUNT(DISTINCT term_norm) AS c FROM song_search_terms;");
  const totalTerms = Number(countResult?.[0]?.results?.[0]?.c || 0);
  if (!totalTerms) throw new Error("No search terms found to resume from.");

  runSqlFile(`
DELETE FROM song_search_vocab;
DELETE FROM song_search_deletes;
`);

  for (let offset = 0; offset < totalTerms; offset += BATCH_SIZE) {
    const vocabRows = loadVocabBatch(offset, BATCH_SIZE);
    uploadVocabBatch(vocabRows);

    const deleteRows = [];
    for (const row of vocabRows) {
      const termNorm = String(row?.term_norm || "").trim();
      if (!termNorm) continue;
      for (const deleteKey of generateDeleteKeys(termNorm, 2)) {
        deleteRows.push({ delete_key: deleteKey, term_norm: termNorm });
      }
    }
    for (const batch of chunk(deleteRows, 1200)) {
      uploadDeleteBatch(batch);
    }
    console.log(`Uploaded vocab/delete batch ${Math.min(offset + BATCH_SIZE, totalTerms)}/${totalTerms}`);
  }

  runSqlFile(`
INSERT INTO app_meta (key, value, updated_at)
VALUES ('schema.search.version', ${sqlValue(SEARCH_INDEX_SCHEMA_MARKER_VALUE)}, datetime('now'))
ON CONFLICT(key) DO UPDATE SET value=excluded.value, updated_at=datetime('now');
INSERT INTO app_meta (key, value, updated_at)
VALUES ('schema.full.version', '2026-03-14-full-v5', datetime('now'))
ON CONFLICT(key) DO UPDATE SET value=excluded.value, updated_at=datetime('now');
`);

  console.log(`Resume complete. Terms: ${totalTerms}.`);
}

function main() {
  if (MODE === "resume-vocab") {
    resumeVocabAndDeletes();
    return;
  }

  const countResult = runSql("SELECT COUNT(*) AS c FROM songs WHERE status='published';");
  const totalSongs = Number(countResult?.[0]?.results?.[0]?.c || 0);
  if (!totalSongs) throw new Error("No published songs found.");

  runSqlFile(`
DELETE FROM songs_fts;
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics)
SELECT id, coalesce(title,''), coalesce(lyrics,'')
FROM songs;
DELETE FROM song_search_terms;
DELETE FROM song_search_vocab;
DELETE FROM song_search_deletes;
`);

  const vocabMap = new Map();
  for (let offset = 0; offset < totalSongs; offset += BATCH_SIZE) {
    const songs = loadSongs(offset, BATCH_SIZE);
    const rows = [];
    for (const song of songs) {
      for (const row of rebuildTermRowsForSong(song)) {
        rows.push(row);
        if (!vocabMap.has(row.term_norm)) {
          vocabMap.set(row.term_norm, {
            display_term: row.term_raw,
            song_ids: new Set(),
            title_hits: 0,
            subtitle_hits: 0,
          });
        }
        const vocab = vocabMap.get(row.term_norm);
        vocab.song_ids.add(row.song_id);
        if (row.field === "title") vocab.title_hits += 1;
        if (row.field === "subtitle") vocab.subtitle_hits += 1;
      }
    }
    uploadTermBatch(rows);
    console.log(`Uploaded term batch ${Math.min(offset + BATCH_SIZE, totalSongs)}/${totalSongs}`);
  }

  uploadVocabAndDeletes(vocabMap);

  runSqlFile(`
INSERT INTO app_meta (key, value, updated_at)
VALUES ('schema.search.version', ${sqlValue(SEARCH_INDEX_SCHEMA_MARKER_VALUE)}, datetime('now'))
ON CONFLICT(key) DO UPDATE SET value=excluded.value, updated_at=datetime('now');
INSERT INTO app_meta (key, value, updated_at)
VALUES ('schema.full.version', '2026-03-14-full-v5', datetime('now'))
ON CONFLICT(key) DO UPDATE SET value=excluded.value, updated_at=datetime('now');
`);

  console.log(`Rebuild complete. Songs: ${totalSongs}. Terms: ${vocabMap.size}.`);
}

main();
