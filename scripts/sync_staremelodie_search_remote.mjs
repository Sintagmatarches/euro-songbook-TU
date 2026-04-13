import { execFileSync } from "node:child_process";
import { writeFileSync, unlinkSync } from "node:fs";
import { tmpdir } from "node:os";
import path from "node:path";

import { buildSongSearchRows, generateDeleteKeys } from "../functions/_lib/song-search.mjs";

const DB_NAME = process.argv[2] || "euro-songbook-db";
const SONG_BATCH = Number(process.argv[3] || 25);
const TERM_BATCH = Number(process.argv[4] || 120);
const START_OFFSET = Math.max(0, Number(process.argv[5] || 0));
const MAX_SONGS = Math.max(0, Number(process.argv[6] || 0));

function sqlValue(value) {
  if (value == null) return "NULL";
  return `'${String(value).replace(/'/g, "''")}'`;
}

function runWrangler(args = []) {
  let lastError;
  for (let attempt = 0; attempt < 5; attempt += 1) {
    try {
      const stdout = execFileSync("cmd.exe", ["/c", "npx", "wrangler", "d1", "execute", DB_NAME, "--remote", ...args], {
        encoding: "utf8",
        stdio: ["ignore", "pipe", "pipe"],
      });
      const jsonStart = stdout.indexOf("[");
      if (jsonStart === -1) return stdout.trim();
      return JSON.parse(stdout.slice(jsonStart));
    } catch (error) {
      lastError = error;
      const stderr = String(error?.stderr || "");
      const stdout = String(error?.stdout || "");
      const combined = `${stdout}\n${stderr}`;
      const retryable = /code:\s*7500|D1_RESET_DO|internal error|timed out/i.test(combined);
      if (!retryable || attempt === 4) {
        throw error;
      }
      const delayMs = 1500 * (attempt + 1);
      console.warn(`wrangler retry ${attempt + 1}/5 after transient D1 failure (${delayMs}ms)`);
      Atomics.wait(new Int32Array(new SharedArrayBuffer(4)), 0, 0, delayMs);
    }
  }
  throw lastError;
}

function runSql(sql) {
  return runWrangler(["--command", sql]);
}

function runSqlFile(sql) {
  const file = path.join(tmpdir(), `staremelodie-search-${Date.now()}-${Math.random().toString(36).slice(2)}.sql`);
  writeFileSync(file, sql, "utf8");
  try {
    return runWrangler(["--file", file]);
  } finally {
    unlinkSync(file);
  }
}

function chunk(values = [], size = 100) {
  const out = [];
  for (let index = 0; index < values.length; index += size) {
    out.push(values.slice(index, index + size));
  }
  return out;
}

function insertManySql(table, columns = [], rows = [], conflict = "OR REPLACE") {
  if (!rows.length) return [];
  const header = `INSERT ${conflict} INTO ${table} (${columns.join(", ")}) VALUES `;
  return chunk(rows, 200).map((batch) => (
    header +
    batch.map((values) => `(${values.join(", ")})`).join(",\n") +
    ";"
  ));
}

function loadSongs(offset = 0, limit = SONG_BATCH) {
  const sql = [
    "SELECT id, title, subtitle, lyrics",
    "FROM songs",
    "WHERE id LIKE 'sm_%'",
    "ORDER BY id",
    `LIMIT ${limit} OFFSET ${offset}`,
  ].join(" ");
  const result = runSql(sql);
  return result?.[0]?.results || [];
}

function deleteSearchRowsForSongIds(songIds = []) {
  if (!songIds.length) return [];
  const quoted = songIds.map(sqlValue).join(", ");
  return [
    `DELETE FROM songs_fts WHERE song_id IN (${quoted});`,
    `DELETE FROM song_search_terms WHERE song_id IN (${quoted});`,
  ];
}

function loadTermAggregates(termNorms = []) {
  if (!termNorms.length) return [];
  const sql = [
    "SELECT",
    "  term_norm,",
    "  MIN(term_raw) AS display_term,",
    "  COUNT(DISTINCT song_id) AS song_count,",
    "  SUM(CASE WHEN field='title' THEN 1 ELSE 0 END) AS title_hits,",
    "  SUM(CASE WHEN field='subtitle' THEN 1 ELSE 0 END) AS subtitle_hits,",
    "  SUM(CASE WHEN field='lyrics' THEN 1 ELSE 0 END) AS lyrics_hits",
    "FROM song_search_terms",
    `WHERE term_norm IN (${termNorms.map(sqlValue).join(", ")})`,
    "GROUP BY term_norm",
    "ORDER BY term_norm",
  ].join(" ");
  const result = runSql(sql);
  return result?.[0]?.results || [];
}

function main() {
  const countResult = runSql("SELECT COUNT(*) AS c FROM songs WHERE id LIKE 'sm_%';");
  const totalSongs = Number(countResult?.[0]?.results?.[0]?.c || 0);
  if (!totalSongs) {
    throw new Error("No sm_* songs found.");
  }
  const selectedTotal = MAX_SONGS > 0
    ? Math.min(MAX_SONGS, Math.max(0, totalSongs - START_OFFSET))
    : Math.max(0, totalSongs - START_OFFSET);
  if (!selectedTotal) {
    throw new Error(`No songs to process for offset=${START_OFFSET} limit=${MAX_SONGS || "all"}.`);
  }

  const touchedTerms = new Set();
  for (let processed = 0; processed < selectedTotal; processed += SONG_BATCH) {
    const limit = Math.min(SONG_BATCH, selectedTotal - processed);
    const offset = START_OFFSET + processed;
    const songs = loadSongs(offset, limit);
    const statements = deleteSearchRowsForSongIds(songs.map((song) => song.id).filter(Boolean));
    const ftsRows = [];
    const termRows = [];
    for (const song of songs) {
      ftsRows.push([
        sqlValue(song.id),
        sqlValue(song.title || ""),
        sqlValue(song.lyrics || ""),
      ]);
      const rows = buildSongSearchRows(song);
      for (const row of rows) {
        touchedTerms.add(row.term_norm);
        termRows.push([
          sqlValue(row.song_id),
          sqlValue(row.field),
          sqlValue(row.term_norm),
          sqlValue(row.term_raw),
          sqlValue(row.prefix3),
          sqlValue(row.prefix4),
          Number(row.term_len || 0),
        ]);
      }
    }
    statements.push(...insertManySql("songs_fts", ["song_id", "title", "lyrics"], ftsRows));
    statements.push(...insertManySql(
      "song_search_terms",
      ["song_id", "field", "term_norm", "term_raw", "prefix3", "prefix4", "term_len"],
      termRows
    ));
    runSqlFile(statements.join("\n"));
    console.log(`Search rows synced ${Math.min(processed + limit, selectedTotal)}/${selectedTotal}`);
  }

  const uniqueTerms = Array.from(touchedTerms).sort();
  for (const batch of chunk(uniqueTerms, TERM_BATCH)) {
    const statements = [`DELETE FROM song_search_deletes WHERE term_norm IN (${batch.map(sqlValue).join(", ")});`];
    const aggregates = loadTermAggregates(batch);
    const aggregateMap = new Map(aggregates.map((row) => [String(row.term_norm || "").trim(), row]));
    const missingTerms = batch.filter((termNorm) => !aggregateMap.has(termNorm));
    if (missingTerms.length) {
      statements.push(`DELETE FROM song_search_vocab WHERE term_norm IN (${missingTerms.map(sqlValue).join(", ")});`);
    }
    const vocabRows = [];
    const deleteRows = [];
    for (const termNorm of batch) {
      const row = aggregateMap.get(termNorm);
      if (!row) continue;
      vocabRows.push([
        sqlValue(termNorm),
        sqlValue(row.display_term),
        Number(row.song_count || 0),
        Number(row.title_hits || 0),
        Number(row.subtitle_hits || 0),
        Number(row.lyrics_hits || 0),
      ]);
      for (const deleteKey of generateDeleteKeys(termNorm, 2)) {
        deleteRows.push([sqlValue(deleteKey), sqlValue(termNorm)]);
      }
    }
    statements.push(...insertManySql(
      "song_search_vocab",
      ["term_norm", "display_term", "song_count", "title_hits", "subtitle_hits", "lyrics_hits"],
      vocabRows
    ));
    statements.push(...insertManySql(
      "song_search_deletes",
      ["delete_key", "term_norm"],
      deleteRows,
      "OR IGNORE"
    ));
    runSqlFile(statements.join("\n"));
    console.log(`Search vocab synced ${batch[batch.length - 1]}`);
  }

  console.log(JSON.stringify({
    totalSongs,
    processedSongs: selectedTotal,
    startOffset: START_OFFSET,
    touchedTerms: uniqueTerms.length,
    dbName: DB_NAME,
  }, null, 2));
}

main();
