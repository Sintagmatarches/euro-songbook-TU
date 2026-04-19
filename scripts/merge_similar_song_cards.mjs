import { execFileSync } from "node:child_process";
import { mkdirSync, unlinkSync, writeFileSync } from "node:fs";
import { createHash } from "node:crypto";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

import {
  compareSongTexts,
  normalizeComparableLyrics,
  normalizeComparableTitle,
} from "../functions/_lib/song-similarity.mjs";
import { generateDeleteKeys } from "../functions/_lib/song-search.mjs";

const __dirname = dirname(fileURLToPath(import.meta.url));
const ROOT = dirname(__dirname);
const OUT_DIR = join(ROOT, "out", "similar_song_merge");

const DB_NAME = process.argv[2] || "euro-songbook-db";
const EXECUTE_REMOTE = process.argv.includes("--execute-remote");
const TITLE_FILTER = (() => {
  const raw = process.argv.find((item) => item.startsWith("--title-filter="));
  return raw ? String(raw.split("=").slice(1).join("=") || "").trim().toLowerCase() : "";
})();
const LIMIT_GROUPS = (() => {
  const raw = process.argv.find((item) => item.startsWith("--limit-groups="));
  const value = raw ? Number(raw.split("=").slice(1).join("=")) : 0;
  return Number.isFinite(value) && value > 0 ? Math.floor(value) : 0;
})();
const REMOTE_BATCH_SIZE = (() => {
  const raw = process.argv.find((item) => item.startsWith("--remote-batch-size="));
  const value = raw ? Number(raw.split("=").slice(1).join("=")) : 180;
  return Number.isFinite(value) && value > 0 ? Math.floor(value) : 180;
})();

function runWrangler(args = []) {
  const stdout = execFileSync("cmd.exe", ["/c", "npx", "wrangler", "d1", "execute", DB_NAME, "--remote", ...args], {
    cwd: ROOT,
    encoding: "utf8",
    stdio: ["ignore", "pipe", "pipe"],
  });
  const jsonStart = stdout.indexOf("[");
  if (jsonStart === -1) throw new Error(`Unexpected wrangler output:\n${stdout}`);
  return JSON.parse(stdout.slice(jsonStart));
}

function runSql(sql = "") {
  const compactSql = String(sql || "").replace(/\s+/g, " ").trim();
  const payload = compactSql.length > 3500
    ? runSqlFile(compactSql)
    : runWrangler(["--command", compactSql]);
  return payload?.[0]?.results || [];
}

function runSqlFile(sql = "") {
  const file = join(OUT_DIR, `tmp-merge-${Date.now()}-${Math.random().toString(36).slice(2)}.sql`);
  writeFileSync(file, sql, "utf8");
  try {
    return runWrangler(["--file", file]);
  } finally {
    try { unlinkSync(file); } catch {}
  }
}

function sqlValue(value) {
  if (value == null || value === "") return "NULL";
  return `'${String(value).replace(/'/g, "''")}'`;
}

function hash(input = "") {
  return createHash("sha1").update(String(input || "")).digest("hex").slice(0, 16);
}

function chunk(values = [], size = 50) {
  const out = [];
  for (let index = 0; index < values.length; index += size) out.push(values.slice(index, index + size));
  return out;
}

function groupKey(titleKey = "", langKey = "") {
  return `${titleKey}|||${langKey}`;
}

function metadataCompleteness(song = {}) {
  const fields = ["subtitle", "country", "period", "region", "event", "theme", "year", "source", "notes"];
  return fields.reduce((count, key) => count + (String(song?.[key] || "").trim() ? 1 : 0), 0);
}

class UnionFind {
  constructor(ids = []) {
    this.parent = new Map(ids.map((id) => [id, id]));
  }
  find(id) {
    const parent = this.parent.get(id);
    if (!parent || parent === id) return id;
    const root = this.find(parent);
    this.parent.set(id, root);
    return root;
  }
  union(left, right) {
    const a = this.find(left);
    const b = this.find(right);
    if (a !== b) this.parent.set(b, a);
  }
}

function loadDuplicateTitleGroups() {
  const where = TITLE_FILTER
    ? `WHERE status='published' AND lower(trim(title)) LIKE ${sqlValue(`%${TITLE_FILTER}%`)}`
    : `WHERE status='published'`;
  const rows = runSql(
    `WITH groups AS (
      SELECT lower(trim(title)) AS title_key, lower(trim(lang)) AS lang_key, COUNT(*) AS song_count
      FROM songs
      ${where}
      GROUP BY 1,2
      HAVING COUNT(*) >= 2
    )
    SELECT title_key, lang_key, song_count
    FROM groups
    ORDER BY song_count DESC, title_key ASC, lang_key ASC
    ${LIMIT_GROUPS ? `LIMIT ${LIMIT_GROUPS}` : ""};`
  );
  return rows.map((row) => ({
    title_key: String(row?.title_key || "").trim(),
    lang_key: String(row?.lang_key || "").trim(),
    song_count: Number(row?.song_count || 0),
  })).filter((row) => row.title_key && row.lang_key && row.song_count >= 2);
}

function loadSongsForGroups(groups = []) {
  if (!groups.length) return [];
  const out = [];
  for (const batch of chunk(groups, 25)) {
    const where = batch.map((item) => (
      `(lower(trim(s.title))=${sqlValue(item.title_key)} AND lower(trim(s.lang))=${sqlValue(item.lang_key)})`
    )).join(" OR ");
    const rows = runSql(
      `SELECT
         s.id, s.title, s.subtitle, s.lang, s.country, s.period, s.region, s.event, s.theme,
         s.year, s.source, s.notes, s.lyrics, s.created_at,
         (SELECT COUNT(*) FROM song_versions sv WHERE sv.song_id=s.id) AS version_rows,
         (SELECT COUNT(*) FROM song_links sl WHERE sl.song_id=s.id) AS link_rows,
         (SELECT COUNT(*) FROM favorites f WHERE f.song_id=s.id) AS favorite_rows,
         (SELECT COUNT(*) FROM song_comments sc WHERE sc.song_id=s.id) AS comment_rows
       FROM songs s
       WHERE s.status='published' AND (${where})
       ORDER BY lower(trim(s.title)) ASC, lower(trim(s.lang)) ASC, datetime(s.created_at) ASC, s.id ASC;`
    );
    out.push(...rows.map((row) => ({
      ...row,
      version_rows: Number(row?.version_rows || 0),
      link_rows: Number(row?.link_rows || 0),
      favorite_rows: Number(row?.favorite_rows || 0),
      comment_rows: Number(row?.comment_rows || 0),
      title_key: normalizeComparableTitle(row?.title || ""),
      lang_key: normalizeComparableTitle(row?.lang || ""),
      lyrics_key: normalizeComparableLyrics(row?.lyrics || ""),
    })));
  }
  return out;
}

function loadRowsBySongIds(songIds = [], table = "song_versions") {
  if (!songIds.length) return new Map();
  const out = new Map();
  for (const batch of chunk(songIds, 500)) {
    const selectSql = table === "song_links"
      ? `SELECT id, song_id, title, url, kind, version_id, sort_order FROM song_links WHERE song_id IN (${batch.map((id) => sqlValue(id)).join(", ")}) ORDER BY song_id ASC, sort_order ASC, id ASC;`
      : `SELECT id, song_id, title, lang, lyrics, lyrics_meta_json, source, sort_order FROM song_versions WHERE song_id IN (${batch.map((id) => sqlValue(id)).join(", ")}) ORDER BY song_id ASC, sort_order ASC, id ASC;`;
    const rows = runSql(selectSql);
    for (const row of rows) {
      const songId = String(row?.song_id || "").trim();
      if (!songId) continue;
      const list = out.get(songId) || [];
      list.push(row);
      out.set(songId, list);
    }
  }
  return out;
}

function loadSearchTermsBySongIds(songIds = []) {
  if (!songIds.length) return new Map();
  const out = new Map();
  for (const batch of chunk(songIds, 500)) {
    const rows = runSql(
      `SELECT song_id, field, term_norm, term_raw
       FROM song_search_terms
       WHERE song_id IN (${batch.map((id) => sqlValue(id)).join(", ")})
       ORDER BY song_id ASC, field ASC, term_norm ASC;`
    );
    for (const row of rows) {
      const songId = String(row?.song_id || "").trim();
      if (!songId) continue;
      const list = out.get(songId) || [];
      list.push({
        song_id: songId,
        field: String(row?.field || "").trim(),
        term_norm: String(row?.term_norm || "").trim(),
        term_raw: String(row?.term_raw || "").trim(),
      });
      out.set(songId, list);
    }
  }
  return out;
}

function collectClusters(groups = [], songs = []) {
  const songsByGroup = new Map();
  for (const song of songs) {
    const key = groupKey(song.title_key, song.lang_key);
    const list = songsByGroup.get(key) || [];
    list.push(song);
    songsByGroup.set(key, list);
  }
  const clusters = [];
  const comparisons = [];
  for (const group of groups) {
    const key = groupKey(group.title_key, group.lang_key);
    const groupSongs = songsByGroup.get(key) || [];
    if (groupSongs.length < 2) continue;
    const union = new UnionFind(groupSongs.map((item) => item.id));
    for (let leftIndex = 0; leftIndex < groupSongs.length; leftIndex += 1) {
      for (let rightIndex = leftIndex + 1; rightIndex < groupSongs.length; rightIndex += 1) {
        const left = groupSongs[leftIndex];
        const right = groupSongs[rightIndex];
        const metrics = compareSongTexts(left.lyrics, right.lyrics);
        comparisons.push({
          title: left.title,
          lang: left.lang,
          left_id: left.id,
          right_id: right.id,
          ...metrics,
        });
        if (metrics.shouldMerge) union.union(left.id, right.id);
      }
    }
    const grouped = new Map();
    for (const song of groupSongs) {
      const root = union.find(song.id);
      const list = grouped.get(root) || [];
      list.push(song);
      grouped.set(root, list);
    }
    for (const clusterSongs of grouped.values()) {
      if (clusterSongs.length < 2) continue;
      clusters.push({
        title_key: group.title_key,
        lang_key: group.lang_key,
        songs: clusterSongs.sort((a, b) => String(a.created_at || "").localeCompare(String(b.created_at || "")) || String(a.id).localeCompare(String(b.id))),
      });
    }
  }
  return { clusters, comparisons };
}

function chooseTargetSong(cluster = {}, versionsBySong = new Map(), linksBySong = new Map()) {
  const ranked = [...(cluster.songs || [])].sort((left, right) => {
    const leftScore = [
      Number(right.favorite_rows || 0) - Number(left.favorite_rows || 0),
      Number(right.comment_rows || 0) - Number(left.comment_rows || 0),
      ((linksBySong.get(right.id) || []).length + Number(right.link_rows || 0)) - ((linksBySong.get(left.id) || []).length + Number(left.link_rows || 0)),
      ((versionsBySong.get(right.id) || []).length + Number(right.version_rows || 0)) - ((versionsBySong.get(left.id) || []).length + Number(left.version_rows || 0)),
      metadataCompleteness(right) - metadataCompleteness(left),
      String(right.lyrics || "").length - String(left.lyrics || "").length,
      String(left.created_at || "").localeCompare(String(right.created_at || "")),
      String(left.id || "").localeCompare(String(right.id || "")),
    ];
    for (const score of leftScore) {
      if (score !== 0) return score;
    }
    return 0;
  });
  return ranked[0] || null;
}

function buildMergeOperations(clusters = [], versionsBySong = new Map(), linksBySong = new Map(), searchTermsBySong = new Map()) {
  const operations = [];
  for (const cluster of clusters) {
    const target = chooseTargetSong(cluster, versionsBySong, linksBySong);
    if (!target) continue;
    const sources = cluster.songs.filter((item) => item.id !== target.id);
    if (!sources.length) continue;

    const seenLyrics = new Set();
    const versionIdByLyrics = new Map();
    const targetMainLyrics = normalizeComparableLyrics(target.lyrics || "");
    if (targetMainLyrics) {
      seenLyrics.add(targetMainLyrics);
      versionIdByLyrics.set(targetMainLyrics, null);
    }

    let nextVersionSort = 1;
    for (const version of versionsBySong.get(target.id) || []) {
      const lyricsKey = normalizeComparableLyrics(version?.lyrics || "");
      if (lyricsKey) {
        seenLyrics.add(lyricsKey);
        versionIdByLyrics.set(lyricsKey, String(version?.id || "").trim() || null);
      }
      nextVersionSort = Math.max(nextVersionSort, Number(version?.sort_order || 0) + 1);
    }

    const seenLinks = new Set(
      (linksBySong.get(target.id) || [])
        .map((item) => String(item?.url || "").trim())
        .filter(Boolean),
    );
    let nextLinkSort = Math.max(0, ...(linksBySong.get(target.id) || []).map((item) => Number(item?.sort_order || 0))) + 1;

    const versionRows = [];
    const linkRows = [];
    const sourceSummaries = [];
    const affectedSearchTerms = new Set(
      (searchTermsBySong.get(target.id) || [])
        .map((row) => String(row?.term_norm || "").trim())
        .filter(Boolean)
    );

    for (const source of sources) {
      for (const row of searchTermsBySong.get(source.id) || []) {
        const termNorm = String(row?.term_norm || "").trim();
        if (termNorm) affectedSearchTerms.add(termNorm);
      }
      const sourceVersionMap = new Map();
      const sourceMainLyrics = normalizeComparableLyrics(source.lyrics || "");
      if (sourceMainLyrics && !seenLyrics.has(sourceMainLyrics)) {
        const versionId = `mv_${target.id}_${hash(`${source.id}|main|${sourceMainLyrics}`)}`;
        versionRows.push({
          id: versionId,
          song_id: target.id,
          title: String(source.subtitle || source.title || "").trim() || null,
          lang: String(source.lang || "").trim() || null,
          lyrics: String(source.lyrics || ""),
          lyrics_meta_json: "{}",
          source: String(source.source || "").trim() || null,
          sort_order: nextVersionSort++,
        });
        seenLyrics.add(sourceMainLyrics);
        versionIdByLyrics.set(sourceMainLyrics, versionId);
      }
      sourceVersionMap.set("__main__", versionIdByLyrics.get(sourceMainLyrics) || null);

      for (const version of versionsBySong.get(source.id) || []) {
        const lyricsKey = normalizeComparableLyrics(version?.lyrics || "");
        let mappedVersionId = versionIdByLyrics.get(lyricsKey) || null;
        if (lyricsKey && !seenLyrics.has(lyricsKey)) {
          mappedVersionId = `mv_${target.id}_${hash(`${source.id}|${version?.id || ""}|${lyricsKey}`)}`;
          versionRows.push({
            id: mappedVersionId,
            song_id: target.id,
            title: String(version?.title || source.subtitle || source.title || "").trim() || null,
            lang: String(version?.lang || source.lang || "").trim() || null,
            lyrics: String(version?.lyrics || ""),
            lyrics_meta_json: String(version?.lyrics_meta_json || "{}"),
            source: String(version?.source || source.source || "").trim() || null,
            sort_order: nextVersionSort++,
          });
          seenLyrics.add(lyricsKey);
          versionIdByLyrics.set(lyricsKey, mappedVersionId);
        }
        const originalId = String(version?.id || "").trim();
        if (originalId) sourceVersionMap.set(originalId, mappedVersionId);
      }

      for (const link of linksBySong.get(source.id) || []) {
        const url = String(link?.url || "").trim();
        if (!url || seenLinks.has(url)) continue;
        const versionId = String(link?.version_id || "").trim();
        linkRows.push({
          id: `ml_${target.id}_${hash(`${source.id}|${url}`)}`,
          song_id: target.id,
          title: String(link?.title || source.title || "").trim() || null,
          url,
          kind: String(link?.kind || "").trim() || null,
          version_id: sourceVersionMap.get(versionId) || null,
          sort_order: nextLinkSort++,
        });
        seenLinks.add(url);
      }

      sourceSummaries.push({
        source_song_id: source.id,
        source_country: source.country,
        source_year: source.year,
      });
    }

    operations.push({
      title: target.title,
      lang: target.lang,
      target_song_id: target.id,
      merged_song_ids: sources.map((item) => item.id),
      affected_search_terms: Array.from(affectedSearchTerms).sort((left, right) => left.localeCompare(right)),
      version_rows: versionRows,
      link_rows: linkRows,
      source_summaries: sourceSummaries,
    });
  }
  return operations;
}

function buildSql(operations = []) {
  const lines = [];
  for (const operation of operations) {
    const targetId = String(operation.target_song_id || "").trim();
    if (!targetId) continue;

    for (const version of operation.version_rows || []) {
      lines.push(
        `INSERT OR REPLACE INTO song_versions (id,song_id,title,lang,lyrics,lyrics_meta_json,source,sort_order) VALUES (${sqlValue(version.id)}, ${sqlValue(version.song_id)}, ${sqlValue(version.title)}, ${sqlValue(version.lang)}, ${sqlValue(version.lyrics)}, ${sqlValue(version.lyrics_meta_json || "{}")}, ${sqlValue(version.source)}, ${Number(version.sort_order || 0)});`
      );
    }
    for (const link of operation.link_rows || []) {
      lines.push(
        `INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES (${sqlValue(link.id)}, ${sqlValue(link.song_id)}, ${sqlValue(link.title)}, ${sqlValue(link.url)}, ${sqlValue(link.kind)}, ${sqlValue(link.version_id)}, ${Number(link.sort_order || 0)});`
      );
    }
    for (const sourceId of operation.merged_song_ids || []) {
      const safeSourceId = sqlValue(sourceId);
      const safeTargetId = sqlValue(targetId);
      lines.push(`INSERT OR IGNORE INTO favorites(user_id, song_id, created_at) SELECT user_id, ${safeTargetId}, created_at FROM favorites WHERE song_id=${safeSourceId};`);
      lines.push(`DELETE FROM favorites WHERE song_id=${safeSourceId};`);
      lines.push(`UPDATE song_comments SET song_id=${safeTargetId}, updated_at=datetime('now') WHERE song_id=${safeSourceId};`);
      lines.push(`UPDATE drafts SET song_id=${safeTargetId}, updated_at=datetime('now') WHERE song_id=${safeSourceId};`);
      lines.push(`UPDATE song_requests SET target_song_id=${safeTargetId}, updated_at=datetime('now') WHERE target_song_id=${safeSourceId};`);
      lines.push(`DELETE FROM song_links WHERE song_id=${safeSourceId};`);
      lines.push(`DELETE FROM song_versions WHERE song_id=${safeSourceId};`);
      lines.push(`DELETE FROM song_search_terms WHERE song_id=${safeSourceId};`);
      lines.push(`DELETE FROM songs_fts WHERE song_id=${safeSourceId};`);
      lines.push(`DELETE FROM songs WHERE id=${safeSourceId};`);
    }
    lines.push(`UPDATE songs SET updated_at=datetime('now') WHERE id=${sqlValue(targetId)};`);
  }
  return lines;
}

function executeSql(lines = []) {
  const batches = [];
  for (const batch of chunk(lines, REMOTE_BATCH_SIZE)) {
    runSqlFile(batch.join("\n"));
    batches.push({ statements: batch.length });
  }
  return batches;
}

function repairSearchAuxiliaryForTerms(termNorms = []) {
  const uniqueTerms = Array.from(new Set(
    (termNorms || [])
      .map((value) => String(value || "").trim())
      .filter(Boolean)
  ));
  if (!uniqueTerms.length) return { term_count: 0, vocab_rows: 0, delete_rows: 0 };

  let vocabRowsInserted = 0;
  let deleteRowsInserted = 0;
  for (const termBatch of chunk(uniqueTerms, 120)) {
    const inList = termBatch.map((value) => sqlValue(value)).join(", ");
    const aggregateRows = runSql(
      `SELECT
         term_norm,
         MIN(term_raw) AS display_term,
         COUNT(DISTINCT song_id) AS song_count,
         SUM(CASE WHEN field='title' THEN 1 ELSE 0 END) AS title_hits,
         SUM(CASE WHEN field='subtitle' THEN 1 ELSE 0 END) AS subtitle_hits,
         SUM(CASE WHEN field='lyrics' THEN 1 ELSE 0 END) AS lyrics_hits
       FROM song_search_terms
       WHERE term_norm IN (${inList})
       GROUP BY term_norm;`
    );

    const statements = [
      `DELETE FROM song_search_deletes WHERE term_norm IN (${inList});`,
      `DELETE FROM song_search_vocab WHERE term_norm IN (${inList});`,
    ];

    for (const row of aggregateRows) {
      const termNorm = String(row?.term_norm || "").trim();
      if (!termNorm) continue;
      const displayTerm = String(row?.display_term || termNorm).trim() || termNorm;
      statements.push(
        `INSERT INTO song_search_vocab (term_norm, display_term, song_count, title_hits, subtitle_hits, lyrics_hits)
         VALUES (${sqlValue(termNorm)}, ${sqlValue(displayTerm)}, ${Number(row?.song_count || 0)}, ${Number(row?.title_hits || 0)}, ${Number(row?.subtitle_hits || 0)}, ${Number(row?.lyrics_hits || 0)});`
      );
      vocabRowsInserted += 1;
      for (const deleteKey of generateDeleteKeys(termNorm, 2)) {
        statements.push(
          `INSERT OR IGNORE INTO song_search_deletes (delete_key, term_norm)
           VALUES (${sqlValue(deleteKey)}, ${sqlValue(termNorm)});`
        );
        deleteRowsInserted += 1;
      }
    }

    runSqlFile(statements.join("\n"));
  }

  return {
    term_count: uniqueTerms.length,
    vocab_rows: vocabRowsInserted,
    delete_rows: deleteRowsInserted,
  };
}

function main() {
  mkdirSync(OUT_DIR, { recursive: true });

  const groups = loadDuplicateTitleGroups();
  const songs = loadSongsForGroups(groups);
  const songIds = songs.map((item) => item.id);
  const versionsBySong = loadRowsBySongIds(songIds, "song_versions");
  const linksBySong = loadRowsBySongIds(songIds, "song_links");
  const searchTermsBySong = loadSearchTermsBySongIds(songIds);
  const { clusters, comparisons } = collectClusters(groups, songs);
  const operations = buildMergeOperations(clusters, versionsBySong, linksBySong, searchTermsBySong);
  const sqlLines = buildSql(operations);

  const report = {
    db: DB_NAME,
    title_filter: TITLE_FILTER || null,
    duplicate_title_groups_scanned: groups.length,
    songs_scanned: songs.length,
    similarity_clusters: clusters.length,
    merge_operations: operations.length,
    merged_source_songs: operations.reduce((sum, item) => sum + (item.merged_song_ids || []).length, 0),
    affected_search_terms: operations.reduce((sum, item) => sum + (item.affected_search_terms || []).length, 0),
    versions_inserted: operations.reduce((sum, item) => sum + (item.version_rows || []).length, 0),
    links_inserted: operations.reduce((sum, item) => sum + (item.link_rows || []).length, 0),
    sample_operations: operations.slice(0, 20),
    sample_comparisons: comparisons.filter((item) => item.shouldMerge).slice(0, 20),
    remote_batches: [],
  };

  writeFileSync(join(OUT_DIR, "report.json"), `${JSON.stringify(report, null, 2)}\n`, "utf8");
  writeFileSync(join(OUT_DIR, "actions.jsonl"), `${operations.map((item) => JSON.stringify(item)).join("\n")}${operations.length ? "\n" : ""}`, "utf8");
  writeFileSync(join(OUT_DIR, "merge.sql"), `${sqlLines.join("\n")}${sqlLines.length ? "\n" : ""}`, "utf8");

  if (EXECUTE_REMOTE && sqlLines.length) {
    report.remote_batches = executeSql(sqlLines);
    const allAffectedTerms = operations.flatMap((item) => item.affected_search_terms || []);
    report.search_auxiliary_repair = repairSearchAuxiliaryForTerms(allAffectedTerms);
    writeFileSync(join(OUT_DIR, "report.json"), `${JSON.stringify(report, null, 2)}\n`, "utf8");
  }

  console.log(JSON.stringify(report, null, 2));
}

main();
