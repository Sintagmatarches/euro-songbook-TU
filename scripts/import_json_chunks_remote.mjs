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
const REPORT_PATH = path.resolve(process.argv[3] || path.join(ROOT, "out", "import", "report.json"));
const ID_PREFIX = String(process.argv[4] || "import").replace(/[^0-9A-Za-z_-]+/g, "").trim() || "import";
const ID_PREFIX_SQL = `${ID_PREFIX}_%`;

function sqlValue(value) {
  if (value == null) return "NULL";
  return `'${String(value).replace(/'/g, "''")}'`;
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
  const file = path.join(tmpdir(), `import-${ID_PREFIX}-${Date.now()}-${Math.random().toString(36).slice(2)}.sql`);
  writeFileSync(file, sql, "utf8");
  try {
    return runWrangler(["--file", file]);
  } finally {
    unlinkSync(file);
  }
}

function chunk(values = [], size = 500) {
  const out = [];
  for (let index = 0; index < values.length; index += size) out.push(values.slice(index, index + size));
  return out;
}

function quoteList(values = []) {
  return values.map((value) => sqlValue(value)).join(", ");
}

function loadExistingSongIds() {
  const result = runSql(`SELECT id FROM songs WHERE id LIKE ${sqlValue(ID_PREFIX_SQL)} ORDER BY id;`);
  return new Set((result?.[0]?.results || []).map((row) => String(row.id || "").trim()).filter(Boolean));
}

function loadTermsForSongIds(songIds = []) {
  if (!songIds.length) return [];
  const result = runSql(
    `SELECT DISTINCT term_norm FROM song_search_terms WHERE song_id IN (${quoteList(songIds)}) ORDER BY term_norm;`
  );
  return (result?.[0]?.results || []).map((row) => String(row.term_norm || "").trim()).filter(Boolean);
}

function songInsertSql(song) {
  return (
    "INSERT OR REPLACE INTO songs (" +
    "id,title,subtitle,lang,country,period,region,event,theme,verified,year,source,notes,verified_translation,lyrics,lyrics_meta_json,tags_json,is_admin_content,created_by,updated_by,lang_locked,status,created_at,updated_at" +
    ") VALUES (" +
    [
      sqlValue(song.id),
      sqlValue(song.title),
      sqlValue(song.subtitle || null),
      sqlValue(song.lang || "fr"),
      sqlValue(song.country || null),
      sqlValue(song.period || null),
      sqlValue(song.region || null),
      sqlValue(song.event || null),
      sqlValue(song.theme || null),
      "0",
      sqlValue(song.year || null),
      sqlValue(song.source || null),
      sqlValue(song.notes || null),
      "NULL",
      sqlValue(song.lyrics || ""),
      sqlValue(JSON.stringify(song.lyrics_meta_json || song.lyrics_meta || {})),
      sqlValue(JSON.stringify(Array.isArray(song.tags) ? song.tags : [])),
      "0",
      "NULL",
      "NULL",
      "1",
      sqlValue(song.status === "draft" ? "draft" : "published"),
      `COALESCE((SELECT created_at FROM songs WHERE id=${sqlValue(song.id)}), datetime('now'))`,
      "datetime('now')",
    ].join(",") +
    ");"
  );
}

function songVersionSql(songId, versions = []) {
  const statements = [`DELETE FROM song_versions WHERE song_id=${sqlValue(songId)};`];
  versions.forEach((version, index) => {
    if (!version?.lyrics) return;
    statements.push(
      "INSERT OR REPLACE INTO song_versions (id,song_id,title,lang,lyrics,lyrics_meta_json,source,sort_order) VALUES (" +
      [
        sqlValue(version.id || `${ID_PREFIX}_ver_${songId}_${index + 1}`),
        sqlValue(songId),
        sqlValue(version.title || null),
        sqlValue(version.lang || null),
        sqlValue(version.lyrics),
        sqlValue(JSON.stringify(version.lyrics_meta_json || version.lyrics_meta || {})),
        sqlValue(version.source || null),
        Number(version.sort_order ?? index),
      ].join(",") +
      ");"
    );
  });
  return statements;
}

function songLinkSql(songId, links = []) {
  const statements = [`DELETE FROM song_links WHERE song_id=${sqlValue(songId)};`];
  links.forEach((link, index) => {
    if (!link?.url) return;
    statements.push(
      "INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES (" +
      [
        sqlValue(link.id || `${ID_PREFIX}_link_${songId}_${index + 1}`),
        sqlValue(songId),
        sqlValue(link.title || null),
        sqlValue(String(link.url)),
        sqlValue(link.kind || null),
        sqlValue(link.version_id || link.versionId || null),
        Number(link.sort_order ?? index),
      ].join(",") +
      ");"
    );
  });
  return statements;
}

function buildSearchSyncSql(song) {
  const rows = buildSongSearchRows({
    id: song.id,
    title: song.title,
    subtitle: song.subtitle || "",
    lyrics: song.lyrics || "",
  });
  const statements = [
    `DELETE FROM songs_fts WHERE song_id=${sqlValue(song.id)};`,
    `DELETE FROM song_search_terms WHERE song_id=${sqlValue(song.id)};`,
    `INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES (${sqlValue(song.id)}, ${sqlValue(song.title || "")}, ${sqlValue(song.lyrics || "")});`,
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
  return { statements, touchedTerms: rows.map((row) => row.term_norm) };
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

function deleteSongBatch(songIds = []) {
  if (!songIds.length) return;
  const where = `IN (${quoteList(songIds)})`;
  runSqlFile([
    `DELETE FROM song_links WHERE song_id ${where};`,
    `DELETE FROM song_versions WHERE song_id ${where};`,
    `DELETE FROM songs_fts WHERE song_id ${where};`,
    `DELETE FROM song_search_terms WHERE song_id ${where};`,
    `DELETE FROM songs WHERE id ${where};`,
  ].join("\n"));
}

function syncTouchedVocabAndDeletes(touchedTerms = []) {
  const uniqueTerms = Array.from(new Set(touchedTerms.filter(Boolean))).sort();
  for (const batch of chunk(uniqueTerms, 150)) {
    const aggregates = loadTermAggregates(batch);
    const aggregateMap = new Map(aggregates.map((row) => [String(row.term_norm || "").trim(), row]));
    const statements = [`DELETE FROM song_search_deletes WHERE term_norm IN (${quoteList(batch)});`];
    const missingTerms = batch.filter((termNorm) => !aggregateMap.has(termNorm));
    if (missingTerms.length) statements.push(`DELETE FROM song_search_vocab WHERE term_norm IN (${quoteList(missingTerms)});`);
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
  }
}

function main() {
  const report = JSON.parse(readFileSync(REPORT_PATH, "utf8"));
  const chunkPaths = Array.isArray(report?.chunk_paths) ? report.chunk_paths : [];
  if (!chunkPaths.length) throw new Error(`No chunk_paths in ${REPORT_PATH}`);

  const existingIds = loadExistingSongIds();
  const desiredIds = new Set();
  const touchedTerms = [];
  let synced = 0;

  for (let index = 0; index < chunkPaths.length; index += 1) {
    const chunkPath = path.resolve(ROOT, chunkPaths[index]);
    const payload = JSON.parse(readFileSync(chunkPath, "utf8"));
    const items = Array.isArray(payload?.items) ? payload.items : [];
    const currentIds = items.map((song) => String(song?.id || "").trim()).filter(Boolean);
    const previousTerms = loadTermsForSongIds(currentIds.filter((songId) => existingIds.has(songId)));
    const statements = [];

    for (const song of items) {
      if (!song?.id || !song?.title || !song?.lyrics) continue;
      desiredIds.add(song.id);
      statements.push(songInsertSql(song));
      statements.push(...songVersionSql(song.id, song.versions));
      statements.push(...songLinkSql(song.id, song.links));
      const search = buildSearchSyncSql(song);
      statements.push(...search.statements);
      touchedTerms.push(...search.touchedTerms);
      synced += 1;
    }

    touchedTerms.push(...previousTerms);
    runSqlFile(statements.join("\n"));
    console.log(`Synced chunk ${index + 1}/${chunkPaths.length} | songs=${items.length} | total=${synced}`);
  }

  const idsToDelete = Array.from(existingIds).filter((songId) => !desiredIds.has(songId));
  const deletedTerms = [];
  for (const batch of chunk(idsToDelete, 80)) {
    deletedTerms.push(...loadTermsForSongIds(batch));
    deleteSongBatch(batch);
  }

  syncTouchedVocabAndDeletes([...touchedTerms, ...deletedTerms]);

  console.log(JSON.stringify({
    synced,
    deleted: idsToDelete.length,
    chunkCount: chunkPaths.length,
    dbName: DB_NAME,
    touchedTerms: new Set([...touchedTerms, ...deletedTerms]).size,
    prefix: ID_PREFIX,
  }, null, 2));
}

main();
