import { execFileSync } from "node:child_process";
import { writeFileSync, unlinkSync } from "node:fs";
import { tmpdir } from "node:os";
import { join } from "node:path";

import {
  generateDeleteKeys,
  SEARCH_INDEX_SCHEMA_MARKER_VALUE,
} from "../functions/_lib/song-search.mjs";

const DB_NAME = process.argv[2] || "euro-songbook-db";
const BATCH_SIZE = (() => {
  const raw = Number(process.argv[3] || 400);
  return Number.isFinite(raw) && raw > 0 ? Math.floor(raw) : 400;
})();

function runWrangler(args = []) {
  const stdout = execFileSync("cmd.exe", ["/c", "npx", "wrangler", "d1", "execute", DB_NAME, "--remote", ...args], {
    encoding: "utf8",
    stdio: ["ignore", "pipe", "pipe"],
  });
  const jsonStart = stdout.indexOf("[");
  if (jsonStart === -1) throw new Error(`Unexpected wrangler output:\n${stdout}`);
  return JSON.parse(stdout.slice(jsonStart));
}

function runSql(sql = "") {
  return runWrangler(["--command", String(sql || "").replace(/\s+/g, " ").trim()]);
}

function runSqlFile(sql = "") {
  const file = join(tmpdir(), `repair-search-aux-${Date.now()}-${Math.random().toString(36).slice(2)}.sql`);
  writeFileSync(file, sql, "utf8");
  try {
    return runWrangler(["--file", file]);
  } finally {
    try { unlinkSync(file); } catch {}
  }
}

function sqlValue(value) {
  if (value == null) return "NULL";
  return `'${String(value).replace(/'/g, "''")}'`;
}

function loadVocabBatch(offset = 0, limit = BATCH_SIZE) {
  const result = runSql(
    `SELECT term_norm
     FROM song_search_vocab
     ORDER BY term_norm
     LIMIT ${limit} OFFSET ${offset};`
  );
  return result?.[0]?.results || [];
}

function insertVocabBatch(offset = 0, limit = BATCH_SIZE) {
  runSqlFile(
    `INSERT INTO song_search_vocab (term_norm, display_term, song_count, title_hits, subtitle_hits, lyrics_hits)
     SELECT
       term_norm,
       MIN(term_raw) AS display_term,
       COUNT(DISTINCT song_id) AS song_count,
       SUM(CASE WHEN field='title' THEN 1 ELSE 0 END) AS title_hits,
       SUM(CASE WHEN field='subtitle' THEN 1 ELSE 0 END) AS subtitle_hits,
       SUM(CASE WHEN field='lyrics' THEN 1 ELSE 0 END) AS lyrics_hits
     FROM song_search_terms
     GROUP BY term_norm
     ORDER BY term_norm
     LIMIT ${limit} OFFSET ${offset};`
  );
}

function uploadDeleteBatch(rows = []) {
  if (!rows.length) return { delete_rows: 0 };
  const statements = [];
  let deleteRows = 0;
  for (const row of rows) {
    const termNorm = String(row?.term_norm || "").trim();
    if (!termNorm) continue;
    for (const deleteKey of generateDeleteKeys(termNorm, 2)) {
      statements.push(
        `INSERT OR IGNORE INTO song_search_deletes (delete_key, term_norm)
         VALUES (${sqlValue(deleteKey)}, ${sqlValue(termNorm)});`
      );
      deleteRows += 1;
    }
  }
  runSqlFile(statements.join("\n"));
  return { delete_rows: deleteRows };
}

function main() {
  const countResult = runSql("SELECT COUNT(DISTINCT term_norm) AS c FROM song_search_terms;");
  const totalTerms = Number(countResult?.[0]?.results?.[0]?.c || 0);
  if (!totalTerms) {
    throw new Error("No song_search_terms rows found; auxiliary repair has nothing to rebuild.");
  }

  runSqlFile(`
DELETE FROM song_search_vocab;
DELETE FROM song_search_deletes;
  `);

  for (let offset = 0; offset < totalTerms; offset += BATCH_SIZE) {
    insertVocabBatch(offset, BATCH_SIZE);
    console.log(`Inserted vocab batch ${Math.min(offset + BATCH_SIZE, totalTerms)}/${totalTerms}`);
  }

  const totalVocabRows = totalTerms;
  let totalDeleteRows = 0;
  for (let offset = 0; offset < totalVocabRows; offset += BATCH_SIZE) {
    const rows = loadVocabBatch(offset, BATCH_SIZE);
    const result = uploadDeleteBatch(rows);
    totalDeleteRows += result.delete_rows;
    console.log(`Uploaded auxiliary batch ${Math.min(offset + BATCH_SIZE, totalVocabRows)}/${totalVocabRows}`);
  }

  runSqlFile(`
INSERT INTO app_meta (key, value, updated_at)
VALUES ('schema.search.version', ${sqlValue(SEARCH_INDEX_SCHEMA_MARKER_VALUE)}, datetime('now'))
ON CONFLICT(key) DO UPDATE SET value=excluded.value, updated_at=datetime('now');
  `);

  console.log(JSON.stringify({
    db: DB_NAME,
    total_terms: totalTerms,
    vocab_rows: totalVocabRows,
    delete_rows: totalDeleteRows,
  }, null, 2));
}

main();
