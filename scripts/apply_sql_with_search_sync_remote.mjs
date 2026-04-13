import { execFileSync } from "node:child_process";
import { readFileSync, writeFileSync, unlinkSync } from "node:fs";
import { tmpdir } from "node:os";
import path from "node:path";
import { fileURLToPath } from "node:url";

import { buildSongSearchRows, generateDeleteKeys } from "../functions/_lib/song-search.mjs";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const ROOT = path.resolve(__dirname, "..");

const DB_NAME = process.argv[2] || "euro-songbook-db";
const SQL_PATH = process.argv[3] ? path.resolve(ROOT, process.argv[3]) : "";
const APPLY_BATCH_SIZE = Math.max(1, Number(process.argv[4] || 250));
const SONG_BATCH_SIZE = Math.max(1, Number(process.argv[5] || 20));
const TERM_BATCH_SIZE = Math.max(1, Number(process.argv[6] || 150));
const MAX_SQL_CHARS = Math.max(100000, Number(process.argv[7] || 700000));
const MODE = String(process.argv[8] || "full").trim().toLowerCase();
const SEARCH_START_BATCH = Math.max(1, Number(process.argv[9] || 1));

if (!SQL_PATH) {
  throw new Error("Usage: node scripts/apply_sql_with_search_sync_remote.mjs <dbName> <sqlPath> [applyBatchSize] [songBatchSize] [termBatchSize] [maxSqlChars] [mode] [searchStartBatch]");
}

function sqlValue(value) {
  if (value == null) return "NULL";
  return `'${String(value).replace(/'/g, "''")}'`;
}

function quoteList(values = []) {
  return values.map((value) => sqlValue(value)).join(", ");
}

function chunk(values = [], size = 100) {
  const out = [];
  for (let index = 0; index < values.length; index += size) {
    out.push(values.slice(index, index + size));
  }
  return out;
}

function runWrangler(args = []) {
  let lastError;
  for (let attempt = 0; attempt < 5; attempt += 1) {
    try {
      const stdout = execFileSync("cmd.exe", ["/c", "npx", "wrangler", "d1", "execute", DB_NAME, "--remote", ...args], {
        cwd: ROOT,
        encoding: "utf8",
        stdio: ["ignore", "pipe", "pipe"],
      });
      const jsonStart = stdout.indexOf("[");
      if (jsonStart === -1) return stdout.trim();
      return JSON.parse(stdout.slice(jsonStart));
    } catch (error) {
      lastError = error;
      const combined = `${String(error?.stdout || "")}\n${String(error?.stderr || "")}`;
      const retryable = /code:\s*7500|D1_RESET_DO|internal error|timed out|Not currently importing anything/i.test(combined);
      if (!retryable || attempt === 4) throw error;
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
  if (!String(sql || "").trim()) return null;
  const file = path.join(tmpdir(), `sql-sync-${Date.now()}-${Math.random().toString(36).slice(2)}.sql`);
  writeFileSync(file, sql, "utf8");
  try {
    return runWrangler(["--file", file]);
  } finally {
    unlinkSync(file);
  }
}

function splitSqlStatements(sqlText = "") {
  const statements = [];
  let current = "";
  let inQuote = false;
  let inLineComment = false;
  for (let index = 0; index < sqlText.length; index += 1) {
    const char = sqlText[index];
    const next = sqlText[index + 1];
    if (inLineComment) {
      if (char === "\n") inLineComment = false;
      continue;
    }
    if (!inQuote && char === "-" && next === "-") {
      inLineComment = true;
      index += 1;
      continue;
    }
    if (char === "'") {
      current += char;
      if (inQuote && next === "'") {
        current += next;
        index += 1;
        continue;
      }
      inQuote = !inQuote;
      continue;
    }
    if (!inQuote && char === ";") {
      const trimmed = current.trim();
      if (trimmed) statements.push(`${trimmed};`);
      current = "";
      continue;
    }
    current += char;
  }
  const trailing = current.trim();
  if (trailing) statements.push(trailing);
  return statements;
}

function groupSqlStatements(statements = [], maxStatements = APPLY_BATCH_SIZE, maxChars = MAX_SQL_CHARS) {
  const batches = [];
  let current = [];
  let currentChars = 0;
  for (const statement of statements) {
    const statementChars = statement.length + 1;
    if (current.length && (current.length >= maxStatements || currentChars + statementChars > maxChars)) {
      batches.push(current);
      current = [];
      currentChars = 0;
    }
    current.push(statement);
    currentChars += statementChars;
  }
  if (current.length) batches.push(current);
  return batches;
}

function extractSongIds(statements = []) {
  const allIds = new Set();
  const searchSyncIds = new Set();
  for (const statement of statements) {
    const match = statement.match(/\bWHERE\s+id='([^']+)'/i);
    if (!match) continue;
    const songId = String(match[1] || "").trim();
    if (!songId) continue;
    allIds.add(songId);
    if (/\btitle\s*=|\bsubtitle\s*=|\blyrics\s*=/i.test(statement)) {
      searchSyncIds.add(songId);
    }
  }
  return {
    allIds: Array.from(allIds).sort(),
    searchSyncIds: Array.from(searchSyncIds).sort(),
  };
}

function loadTermsForSongIds(songIds = []) {
  if (!songIds.length) return [];
  const result = runSql(
    `SELECT DISTINCT term_norm FROM song_search_terms WHERE song_id IN (${quoteList(songIds)}) ORDER BY term_norm;`
  );
  return (result?.[0]?.results || []).map((row) => String(row?.term_norm || "").trim()).filter(Boolean);
}

function loadSongsByIds(songIds = []) {
  if (!songIds.length) return [];
  const result = runSql(
    `SELECT id, title, subtitle, lyrics FROM songs WHERE id IN (${quoteList(songIds)}) ORDER BY id;`
  );
  return result?.[0]?.results || [];
}

function buildSearchSyncSql(song = {}) {
  const songId = String(song?.id || "").trim();
  if (!songId) return { statements: [], touchedTerms: [] };
  const rows = buildSongSearchRows({
    id: songId,
    title: String(song?.title || ""),
    subtitle: String(song?.subtitle || ""),
    lyrics: String(song?.lyrics || ""),
  });
  const statements = [
    `DELETE FROM songs_fts WHERE song_id=${sqlValue(songId)};`,
    `DELETE FROM song_search_terms WHERE song_id=${sqlValue(songId)};`,
    `INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES (${sqlValue(songId)}, ${sqlValue(song?.title || "")}, ${sqlValue(song?.lyrics || "")});`,
  ];
  for (const row of rows) {
    statements.push(
      `INSERT OR REPLACE INTO song_search_terms (song_id, field, term_norm, term_raw, prefix3, prefix4, term_len) VALUES (` +
      [
        sqlValue(row.song_id),
        sqlValue(row.field),
        sqlValue(row.term_norm),
        sqlValue(row.term_raw),
        sqlValue(row.prefix3),
        sqlValue(row.prefix4),
        Number(row.term_len || 0),
      ].join(", ") +
      ");"
    );
  }
  return {
    statements,
    touchedTerms: rows.map((row) => row.term_norm),
  };
}

function loadTermAggregates(termNorms = []) {
  if (!termNorms.length) return [];
  const result = runSql([
    "SELECT",
    "term_norm,",
    "MIN(term_raw) AS display_term,",
    "COUNT(DISTINCT song_id) AS song_count,",
    "SUM(CASE WHEN field='title' THEN 1 ELSE 0 END) AS title_hits,",
    "SUM(CASE WHEN field='subtitle' THEN 1 ELSE 0 END) AS subtitle_hits,",
    "SUM(CASE WHEN field='lyrics' THEN 1 ELSE 0 END) AS lyrics_hits",
    "FROM song_search_terms",
    `WHERE term_norm IN (${quoteList(termNorms)})`,
    "GROUP BY term_norm",
    "ORDER BY term_norm",
  ].join(" "));
  return result?.[0]?.results || [];
}

function syncTouchedVocabAndDeletes(touchedTerms = []) {
  const uniqueTerms = Array.from(new Set(touchedTerms.filter(Boolean))).sort();
  for (const [batchIndex, batch] of chunk(uniqueTerms, TERM_BATCH_SIZE).entries()) {
    const aggregates = loadTermAggregates(batch);
    const aggregateMap = new Map(aggregates.map((row) => [String(row?.term_norm || "").trim(), row]));
    const statements = [`DELETE FROM song_search_deletes WHERE term_norm IN (${quoteList(batch)});`];
    const missingTerms = batch.filter((termNorm) => !aggregateMap.has(termNorm));
    if (missingTerms.length) {
      statements.push(`DELETE FROM song_search_vocab WHERE term_norm IN (${quoteList(missingTerms)});`);
    }
    for (const termNorm of batch) {
      const row = aggregateMap.get(termNorm);
      if (!row) continue;
      statements.push(
        `INSERT OR REPLACE INTO song_search_vocab (term_norm, display_term, song_count, title_hits, subtitle_hits, lyrics_hits) VALUES (` +
        [
          sqlValue(termNorm),
          sqlValue(row.display_term),
          Number(row.song_count || 0),
          Number(row.title_hits || 0),
          Number(row.subtitle_hits || 0),
          Number(row.lyrics_hits || 0),
        ].join(", ") +
        ");"
      );
      for (const deleteKey of generateDeleteKeys(termNorm, 2)) {
        statements.push(
          `INSERT OR IGNORE INTO song_search_deletes (delete_key, term_norm) VALUES (${sqlValue(deleteKey)}, ${sqlValue(termNorm)});`
        );
      }
    }
    runSqlFile(statements.join("\n"));
    console.log(`Synced vocab/delete batch ${batchIndex + 1}/${Math.ceil(uniqueTerms.length / TERM_BATCH_SIZE)} | terms=${batch.length}`);
  }
  return uniqueTerms.length;
}

function main() {
  const sqlText = readFileSync(SQL_PATH, "utf8");
  const statements = splitSqlStatements(sqlText);
  if (!statements.length) throw new Error(`No SQL statements found in ${SQL_PATH}`);
  const { allIds, searchSyncIds } = extractSongIds(statements);
  console.log(`Loaded ${statements.length} statements from ${path.relative(ROOT, SQL_PATH)}.`);
  console.log(`Affected songs: ${allIds.length}. Search resync songs: ${searchSyncIds.length}.`);

  const previousTerms = new Set();
  if (MODE === "full") {
    for (const batch of chunk(searchSyncIds, 120)) {
      for (const term of loadTermsForSongIds(batch)) previousTerms.add(term);
    }
    console.log(`Captured ${previousTerms.size} previous search terms.`);
  }

  if (MODE === "vocab-only") {
    const currentTerms = new Set();
    for (const batch of chunk(searchSyncIds, 120)) {
      for (const term of loadTermsForSongIds(batch)) currentTerms.add(term);
    }
    const syncedTermCount = syncTouchedVocabAndDeletes(Array.from(currentTerms));
    console.log(JSON.stringify({
      dbName: DB_NAME,
      sqlPath: path.relative(ROOT, SQL_PATH),
      statements: statements.length,
      affectedSongs: allIds.length,
      searchSyncSongs: searchSyncIds.length,
      mode: MODE,
      searchStartBatch: SEARCH_START_BATCH,
      touchedTerms: syncedTermCount,
    }, null, 2));
    return;
  }

  if (MODE === "full") {
    const statementBatches = groupSqlStatements(statements);
    for (const [batchIndex, batch] of statementBatches.entries()) {
      runSqlFile(batch.join("\n"));
      console.log(`Applied SQL batch ${batchIndex + 1}/${statementBatches.length} | statements=${batch.length}`);
    }
  }

  const touchedTerms = new Set(previousTerms);
  const songBatches = chunk(searchSyncIds, SONG_BATCH_SIZE);
  for (let batchIndex = SEARCH_START_BATCH - 1; batchIndex < songBatches.length; batchIndex += 1) {
    const batch = songBatches[batchIndex];
    const songs = loadSongsByIds(batch);
    const statementsToRun = [];
    let currentChars = 0;
    let chunksApplied = 0;
    for (const song of songs) {
      const payload = buildSearchSyncSql(song);
      for (const term of payload.touchedTerms) touchedTerms.add(term);
      const sql = payload.statements.join("\n");
      if (statementsToRun.length && currentChars + sql.length > MAX_SQL_CHARS) {
        runSqlFile(statementsToRun.join("\n"));
        chunksApplied += 1;
        statementsToRun.length = 0;
        currentChars = 0;
      }
      statementsToRun.push(sql);
      currentChars += sql.length;
    }
    if (statementsToRun.length) {
      runSqlFile(statementsToRun.join("\n"));
      chunksApplied += 1;
    }
    console.log(`Resynced search batch ${batchIndex + 1}/${songBatches.length} | songs=${songs.length} | sql_chunks=${chunksApplied}`);
  }

  let syncedTermCount = 0;
  if (MODE === "full") {
    syncedTermCount = syncTouchedVocabAndDeletes(Array.from(touchedTerms));
  }
  console.log(JSON.stringify({
    dbName: DB_NAME,
    sqlPath: path.relative(ROOT, SQL_PATH),
    statements: statements.length,
    affectedSongs: allIds.length,
    searchSyncSongs: searchSyncIds.length,
    mode: MODE,
    searchStartBatch: SEARCH_START_BATCH,
    touchedTerms: syncedTermCount,
  }, null, 2));
}

main();
