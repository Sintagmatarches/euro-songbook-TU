import { execFileSync } from "node:child_process";
import { writeFileSync, unlinkSync } from "node:fs";
import { tmpdir } from "node:os";
import path from "node:path";

import { generateDeleteKeys } from "../functions/_lib/song-search.mjs";

const DB_NAME = process.argv[2] || "euro-songbook-db";
const TERM_BATCH = Number(process.argv[3] || 12);

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
  const file = path.join(tmpdir(), `staremelodie-vocab-${Date.now()}-${Math.random().toString(36).slice(2)}.sql`);
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

function loadTouchedTerms(offset = 0, limit = TERM_BATCH) {
  const sql = [
    "SELECT DISTINCT term_norm",
    "FROM song_search_terms",
    "WHERE song_id LIKE 'sm_%'",
    "ORDER BY term_norm",
    `LIMIT ${limit} OFFSET ${offset}`,
  ].join(" ");
  const result = runSql(sql);
  return (result?.[0]?.results || []).map((row) => String(row.term_norm || "").trim()).filter(Boolean);
}

function loadTouchedTermCount() {
  const result = runSql("SELECT COUNT(DISTINCT term_norm) AS c FROM song_search_terms WHERE song_id LIKE 'sm_%';");
  return Number(result?.[0]?.results?.[0]?.c || 0);
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
  const totalTerms = loadTouchedTermCount();
  if (!totalTerms) {
    throw new Error("No sm_* search terms found.");
  }

  for (let offset = 0; offset < totalTerms; offset += TERM_BATCH) {
    const batch = loadTouchedTerms(offset, TERM_BATCH);
    const statements = [`DELETE FROM song_search_deletes WHERE term_norm IN (${batch.map(sqlValue).join(", ")});`];
    const aggregates = loadTermAggregates(batch);
    const aggregateMap = new Map(aggregates.map((row) => [String(row.term_norm || "").trim(), row]));
    const missingTerms = batch.filter((termNorm) => !aggregateMap.has(termNorm));
    if (missingTerms.length) {
      statements.push(`DELETE FROM song_search_vocab WHERE term_norm IN (${missingTerms.map(sqlValue).join(", ")});`);
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
        `);`
      );
      for (const deleteKey of generateDeleteKeys(termNorm, 2)) {
        statements.push(
          `INSERT OR IGNORE INTO song_search_deletes (delete_key, term_norm) VALUES (${sqlValue(deleteKey)}, ${sqlValue(termNorm)});`
        );
      }
    }
    runSqlFile(statements.join("\n"));
    console.log(`Vocab synced ${Math.min(offset + TERM_BATCH, totalTerms)}/${totalTerms}`);
  }

  console.log(JSON.stringify({ totalTerms, dbName: DB_NAME }, null, 2));
}

main();
