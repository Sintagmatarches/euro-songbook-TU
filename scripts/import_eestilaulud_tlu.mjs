import { execFileSync } from "node:child_process";
import { createHash } from "node:crypto";
import { writeFileSync, unlinkSync } from "node:fs";
import { tmpdir } from "node:os";
import { join } from "node:path";
import { buildSongSearchRows, generateDeleteKeys, SEARCH_INDEX_SCHEMA_MARKER_VALUE } from "../functions/_lib/song-search.mjs";

const SOURCE_URL = "https://www.tlu.ee/~jaagup/andmed/keel/eestilaulud.txt";
const DB_NAME = process.argv[2] || "euro-songbook-db";
const MODE = String(process.argv[3] || "--import").trim().toLowerCase();
const COUNTRY = "estonia_1991";
const LANG = "et";
const SOURCE_NAME = "Tallinn University eestilaulud corpus";

function normalizeText(value = "") {
  return String(value ?? "")
    .replace(/\uFEFF/g, "")
    .replace(/\r\n?/g, "\n");
}

function trimLine(value = "") {
  return String(value ?? "").replace(/\s+$/g, "").trim();
}

function normalizeCompare(value = "") {
  return trimLine(value)
    .normalize("NFKD")
    .replace(/[\u0300-\u036f]/g, "")
    .toLowerCase()
    .replace(/<>/g, "")
    .replace(/\.\.\.+$/g, "")
    .replace(/[.,!?;:"'`()[\]{}]/g, "")
    .replace(/[–—-]/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function limitedDistance(left = "", right = "", limit = 2) {
  if (left === right) return 0;
  if (!left || !right) return Math.max(left.length, right.length);
  if (Math.abs(left.length - right.length) > limit) return limit + 1;

  const rows = Array.from({ length: left.length + 1 }, () => new Array(right.length + 1).fill(0));
  for (let i = 0; i <= left.length; i += 1) rows[i][0] = i;
  for (let j = 0; j <= right.length; j += 1) rows[0][j] = j;

  for (let i = 1; i <= left.length; i += 1) {
    let rowMin = limit + 1;
    for (let j = 1; j <= right.length; j += 1) {
      const cost = left[i - 1] === right[j - 1] ? 0 : 1;
      rows[i][j] = Math.min(
        rows[i - 1][j] + 1,
        rows[i][j - 1] + 1,
        rows[i - 1][j - 1] + cost
      );
      rowMin = Math.min(rowMin, rows[i][j]);
    }
    if (rowMin > limit) return limit + 1;
  }

  return rows[left.length][right.length];
}

function isTitleMatch(actual = "", expected = "") {
  const left = normalizeCompare(actual);
  const right = normalizeCompare(expected);
  if (!left || !right) return false;
  if (left === right) return true;
  if (left.startsWith(right) || right.startsWith(left)) return true;
  const leftTokens = left.split(" ").filter(Boolean);
  const rightTokens = right.split(" ").filter(Boolean);
  if (leftTokens.length && rightTokens.length) {
    const minLength = Math.min(leftTokens.length, rightTokens.length);
    let matchedTokens = 0;
    for (let index = 0; index < minLength; index += 1) {
      const tokenDistance = limitedDistance(leftTokens[index], rightTokens[index], 2);
      if (tokenDistance <= 1) {
        matchedTokens += 1;
        continue;
      }
      break;
    }
    if (matchedTokens >= Math.max(2, minLength - 1)) return true;
  }
  return limitedDistance(left, right, 2) <= 2;
}

function sqlValue(value) {
  if (value == null) return "NULL";
  return `'${String(value).replace(/'/g, "''")}'`;
}

function cleanLyricsLine(value = "") {
  return String(value ?? "")
    .replace(/\u0000/g, "")
    .replace(/<>/g, "")
    .replace(/\s+$/g, "");
}

function trimLyricsLines(lines = []) {
  let start = 0;
  let end = lines.length;
  while (start < end && !trimLine(lines[start])) start += 1;
  while (end > start && !trimLine(lines[end - 1])) end -= 1;
  return lines.slice(start, end);
}

function buildSongId(title = "", index = 0) {
  const digest = createHash("sha1")
    .update(`${index + 1}:${title}`)
    .digest("hex")
    .slice(0, 10);
  return `ee_tlu_${String(index + 1).padStart(3, "0")}_${digest}`;
}

function resolveSongTitle(expectedTitle = "", headerTitle = "") {
  const expected = trimLine(expectedTitle);
  const header = trimLine(headerTitle);
  if (!expected) return header;
  if (!header) return expected;
  if (expected.includes("...")) return header;
  if (header.length > expected.length + 6 && isTitleMatch(header, expected)) return header;
  return expected;
}

function findFutureTitleOffset(header = "", titles = [], startIndex = 0, limit = 6) {
  for (let offset = 0; offset <= limit && startIndex + offset < titles.length; offset += 1) {
    if (isTitleMatch(header, titles[startIndex + offset])) return offset;
  }
  return -1;
}

function extractTitleList(lines = []) {
  const titles = [];
  let index = 0;
  while (index < lines.length && !trimLine(lines[index])) index += 1;
  if (normalizeCompare(lines[index]) !== normalizeCompare("Eestikeelsed laulud")) {
    throw new Error("Unexpected file header while reading title list.");
  }
  index += 1;
  while (index < lines.length && !trimLine(lines[index])) index += 1;
  if (normalizeCompare(lines[index]) !== normalizeCompare("Eestikeelsed laulud")) {
    throw new Error("Second header line not found.");
  }
  index += 1;

  for (; index < lines.length; index += 1) {
    const raw = String(lines[index] ?? "");
    const trimmed = trimLine(raw);
    if (!trimmed) {
      while (index < lines.length && !trimLine(lines[index])) index += 1;
      break;
    }
    if (!/^\s{2,}\S/.test(raw)) break;
    titles.push(trimmed);
  }

  return {
    titles,
    bodyStart: index,
  };
}

function parseSongsFromSource(text = "") {
  const lines = normalizeText(text).split("\n");
  const { titles, bodyStart } = extractTitleList(lines);
  const songs = [];
  const skippedTitles = [];
  let cursor = bodyStart;
  let index = 0;

  while (index < titles.length) {
    while (cursor < lines.length && !trimLine(lines[cursor])) cursor += 1;
    const header = trimLine(lines[cursor] || "");
    const expectedTitle = titles[index];
    if (!isTitleMatch(header, expectedTitle)) {
      const matchedOffset = findFutureTitleOffset(header, titles, index + 1, 6);
      if (matchedOffset === -1) {
        throw new Error(`Title mismatch at song ${index + 1}: expected "${expectedTitle}", got "${header}"`);
      }
      for (let skipped = index; skipped < index + matchedOffset + 1; skipped += 1) {
        skippedTitles.push(titles[skipped]);
      }
      index += matchedOffset + 1;
    }

    const matchedTitle = titles[index];
    cursor += 1;

    while (cursor < lines.length && !trimLine(lines[cursor])) cursor += 1;
    const body = [];
    while (cursor < lines.length) {
      const current = String(lines[cursor] ?? "");
      if (index < titles.length - 1 && !trimLine(current)) {
        let probe = cursor;
        while (probe < lines.length && !trimLine(lines[probe])) probe += 1;
        const nextTitle = trimLine(lines[probe] || "");
        const futureOffset = nextTitle ? findFutureTitleOffset(nextTitle, titles, index + 1, 6) : -1;
        if (futureOffset !== -1) {
          cursor = probe;
          break;
        }
      }
      body.push(cleanLyricsLine(current));
      cursor += 1;
    }

    const lyricsLines = trimLyricsLines(body);
    const lyrics = lyricsLines.join("\n").replace(/\n{3,}/g, "\n\n").trim();
    if (!lyrics) continue;

    const title = resolveSongTitle(matchedTitle, header);
    songs.push({
      ordinal: index + 1,
      id: buildSongId(title, index),
      title,
      header,
      lyrics,
    });
    index += 1;
  }

  return { songs, skippedTitles };
}

function runWrangler(args = []) {
  const stdout = execFileSync("cmd.exe", ["/c", "npx", "wrangler", "d1", "execute", DB_NAME, "--remote", ...args], {
    encoding: "utf8",
    stdio: ["ignore", "pipe", "pipe"],
  });
  const jsonStart = stdout.indexOf("[");
  if (jsonStart === -1) throw new Error(`Unexpected wrangler output:\n${stdout}`);
  return JSON.parse(stdout.slice(jsonStart));
}

function runSqlFile(sql) {
  const file = join(tmpdir(), `eestilaulud-import-${Date.now()}-${Math.random().toString(36).slice(2)}.sql`);
  writeFileSync(file, sql, "utf8");
  try {
    return runWrangler(["--file", file]);
  } finally {
    unlinkSync(file);
  }
}

function runSql(sql) {
  return runWrangler(["--command", sql]);
}

function chunk(values = [], size = 500) {
  const out = [];
  for (let index = 0; index < values.length; index += size) {
    out.push(values.slice(index, index + size));
  }
  return out;
}

function buildImportSql(songs = []) {
  const statements = ["DELETE FROM songs WHERE id LIKE 'ee_tlu_%';"];
  for (const song of songs) {
    statements.push(
      `INSERT INTO songs (` +
        "id,title,subtitle,lang,country,period,region,event,theme,verified,year,source,notes,verified_translation,lyrics,lyrics_meta_json,tags_json,is_admin_content,created_by,updated_by,lang_locked,status,created_at,updated_at" +
      `) VALUES (` +
        [
          sqlValue(song.id),
          sqlValue(song.title),
          "NULL",
          sqlValue(LANG),
          sqlValue(COUNTRY),
          "NULL",
          "NULL",
          "NULL",
          "NULL",
          "0",
          "NULL",
          sqlValue(SOURCE_NAME),
          sqlValue(`Imported from ${SOURCE_URL}`),
          "NULL",
          sqlValue(song.lyrics),
          "'{}'",
          "'[]'",
          "0",
          "NULL",
          "NULL",
          "1",
          "'published'",
          "datetime('now')",
          "datetime('now')",
        ].join(",") +
      `);`
    );
  }
  return statements.join("\n");
}

function buildSearchSyncSql(songs = []) {
  const ftsStatements = ["DELETE FROM songs_fts WHERE song_id LIKE 'ee_tlu_%';"];
  for (const song of songs) {
    ftsStatements.push(
      `INSERT OR REPLACE INTO songs_fts(song_id, title, lyrics) VALUES (${sqlValue(song.id)}, ${sqlValue(song.title)}, ${sqlValue(song.lyrics)});`
    );
  }

  const termStatements = ["DELETE FROM song_search_terms WHERE song_id LIKE 'ee_tlu_%';"];
  for (const song of songs) {
    const rows = buildSongSearchRows({
      id: song.id,
      title: song.title,
      subtitle: "",
      lyrics: song.lyrics,
    });
    for (const row of rows) {
      termStatements.push(
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
        `);`
      );
    }
  }

  return {
    ftsStatements,
    termStatements,
  };
}

function quoteList(values = []) {
  return values.map((value) => sqlValue(value)).join(", ");
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
    `WHERE term_norm IN (${quoteList(termNorms)})`,
    "GROUP BY term_norm",
    "ORDER BY term_norm",
  ].join(" ");
  const result = runSql(sql);
  return result?.[0]?.results || [];
}

function syncTouchedVocabAndDeletes(touchedTerms = []) {
  const uniqueTerms = Array.from(new Set(touchedTerms.filter(Boolean))).sort();
  if (!uniqueTerms.length) return;

  for (const batch of chunk(uniqueTerms, 150)) {
    const aggregates = loadTermAggregates(batch);
    const aggregateMap = new Map(aggregates.map((row) => [String(row.term_norm || "").trim(), row]));
    const statements = [
      `DELETE FROM song_search_deletes WHERE term_norm IN (${quoteList(batch)});`,
    ];

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
        `);`
      );
      for (const deleteKey of generateDeleteKeys(termNorm, 2)) {
        statements.push(
          `INSERT OR IGNORE INTO song_search_deletes (delete_key, term_norm) VALUES (${sqlValue(deleteKey)}, ${sqlValue(termNorm)});`
        );
      }
    }

    runSqlFile(statements.join("\n"));
  }

  runSqlFile(
    `INSERT INTO app_meta (key, value, updated_at) VALUES ('schema.search.version', ${sqlValue(SEARCH_INDEX_SCHEMA_MARKER_VALUE)}, datetime('now')) ` +
    `ON CONFLICT(key) DO UPDATE SET value=excluded.value, updated_at=datetime('now');`
  );
}

async function fetchSourceText() {
  const response = await fetch(SOURCE_URL);
  if (!response.ok) throw new Error(`Failed to download source: HTTP ${response.status}`);
  return await response.text();
}

async function main() {
  const sourceText = await fetchSourceText();
  const { songs, skippedTitles } = parseSongsFromSource(sourceText);

  const summary = {
    source: SOURCE_URL,
    songCount: songs.length,
    skippedTitles,
    firstTitles: songs.slice(0, 5).map((song) => song.title),
    lastTitles: songs.slice(-5).map((song) => song.title),
  };

  if (MODE === "--dry-run") {
    console.log(JSON.stringify(summary, null, 2));
    return;
  }

  if (MODE !== "--import") {
    throw new Error(`Unknown mode: ${MODE}`);
  }

  runSqlFile(buildImportSql(songs));
  console.log(`Imported ${songs.length} songs into ${DB_NAME}. Syncing search terms...`);
  const searchSql = buildSearchSyncSql(songs);
  for (const batch of chunk(searchSql.ftsStatements, 300)) {
    runSqlFile(batch.join("\n"));
  }
  for (const batch of chunk(searchSql.termStatements, 1200)) {
    runSqlFile(batch.join("\n"));
  }
  const newTerms = [];
  for (const song of songs) {
    for (const row of buildSongSearchRows({ id: song.id, title: song.title, subtitle: "", lyrics: song.lyrics })) {
      newTerms.push(row.term_norm);
    }
  }
  console.log("Refreshing touched search vocab/delete rows...");
  syncTouchedVocabAndDeletes(newTerms);

  const countResult = runWrangler(["--command", "SELECT COUNT(*) AS total FROM songs WHERE id LIKE 'ee_tlu_%';"]);
  const total = Number(countResult?.[0]?.results?.[0]?.total || 0);
  console.log(JSON.stringify({ ...summary, imported: total }, null, 2));
}

main().catch((error) => {
  console.error(error?.stack || String(error));
  process.exitCode = 1;
});
