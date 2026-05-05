import { dbAll, dbGet, dbRun } from "./db.js";
import { invalidateCatalogRuntimeCache } from "./runtime-cache.js";
import { getPeriodFilterValues, getPeriodMeta } from "../../shared/song-catalogs.js";

export const SEARCH_INDEX_SCHEMA_MARKER_KEY = "schema.search.version";
export const SEARCH_INDEX_SCHEMA_MARKER_VALUE = "2026-04-19-search-v2";

const SEARCH_FIELDS = ["title", "subtitle", "lyrics"];
const MAX_QUERY_TOKENS = 8;
const MAX_DELETE_DISTANCE = 2;
const MIN_INDEX_TERM_LEN = 2;
const MIN_SIGNIFICANT_QUERY_TOKEN_LEN = 5;
const SEARCH_PAGE_SIZE = 10;
const MAX_DID_YOU_MEAN = 3;
const MAX_CANDIDATE_TERMS_PER_TOKEN = 8;
const MAX_QUERY_TERMS_FOR_FUZZY = 6;
const MAX_DIRECT_SCAN_CANDIDATES = 1500;

function buildCreditSearchPatterns(value = "", kind = "words") {
  const needle = String(value || "").trim().toLowerCase();
  if (!needle) return [];
  const labels = kind === "music"
    ? [
        "музыка",
        "музика",
        "music",
        "composer",
        "музыка и слова",
        "слова и музыка",
        "музика і слова",
        "слова і музика",
        "music and words",
        "words and music",
      ]
    : [
        "слова",
        "текст",
        "lyrics",
        "words",
        "автор текста",
        "слова и музыка",
        "музыка и слова",
        "слова і музика",
        "музика і слова",
        "words and music",
        "music and words",
      ];
  return Array.from(new Set(labels.map((label) => `%${label}%${needle}%`)));
}

function escapeLikeValue(value = "") {
  return String(value || "").replace(/[\\%_]/g, "\\$&");
}

function unique(values = []) {
  return Array.from(new Set(values.filter(Boolean)));
}

function buildUnicodeCaseLikePatterns(value = "") {
  const raw = String(value || "").trim();
  if (!raw) return [];
  const lower = raw.toLocaleLowerCase();
  const upper = raw.toLocaleUpperCase();
  const titleCase = lower ? `${lower.slice(0, 1).toLocaleUpperCase()}${lower.slice(1)}` : "";
  return unique([raw, lower, upper, titleCase]).map((item) => `%${escapeLikeValue(item)}%`);
}

async function runPreparedBatch(env, statements = []) {
  const safeStatements = Array.isArray(statements) ? statements.filter(Boolean) : [];
  if (!safeStatements.length) return;
  if (typeof env?.DB?.batch === "function") {
    await env.DB.batch(safeStatements);
    return;
  }
  for (const statement of safeStatements) {
    await statement.run();
  }
}

function chunkValues(values = [], chunkSize = 64) {
  const safeChunkSize = Math.max(1, Number(chunkSize || 64) || 64);
  const items = Array.isArray(values) ? values : [];
  const chunks = [];
  for (let index = 0; index < items.length; index += safeChunkSize) {
    chunks.push(items.slice(index, index + safeChunkSize));
  }
  return chunks;
}

function escapeFtsToken(value = "") {
  return String(value || "").replace(/["']/g, "").trim();
}

export function normalizeSearchText(value = "") {
  return String(value || "")
    .normalize("NFKC")
    .toLowerCase()
    .normalize("NFD")
    .replace(/\p{M}+/gu, "")
    .replace(/['`´’]+/gu, "")
    .replace(/[^\p{L}\p{N}]+/gu, " ")
    .replace(/\s+/g, " ")
    .trim();
}

export function tokenizeSearchText(value = "", options = {}) {
  const maxTokens = Math.max(1, Number(options.maxTokens || MAX_QUERY_TOKENS));
  const minLen = Math.max(1, Number(options.minLen || MIN_INDEX_TERM_LEN));
  const rawTokens = String(value || "").match(/[\p{L}\p{N}]+/gu) || [];
  const out = [];
  for (const rawToken of rawTokens) {
    const normalized = normalizeSearchText(rawToken);
    if (!normalized || normalized.length < minLen) continue;
    out.push({
      raw: String(rawToken || ""),
      normalized,
    });
    if (out.length >= maxTokens) break;
  }
  return out;
}

function normalizedTokenLength(token = {}) {
  return String(token?.normalized || "").trim().length;
}

export function getSignificantSearchTokens(analysis = {}, options = {}) {
  const minLength = Math.max(1, Number(options.minLength || MIN_SIGNIFICANT_QUERY_TOKEN_LEN));
  const tokens = Array.isArray(analysis?.tokens) ? analysis.tokens : [];
  return tokens.filter((token) => normalizedTokenLength(token) >= minLength);
}

export function hasSignificantSearchToken(analysis = {}, options = {}) {
  return getSignificantSearchTokens(analysis, options).length > 0;
}

function buildFieldTextMap(song = {}) {
  const fallbackSearchTitle = uniqueNormalizedTextParts([song?.title, song?.version_titles]).join("\n");
  const fallbackSearchLyrics = uniqueNormalizedTextParts([song?.lyrics, song?.version_lyrics]).join("\n\n");
  return {
    title: String((song?.search_title ?? fallbackSearchTitle) || ""),
    subtitle: String((song?.search_subtitle ?? song?.subtitle) || ""),
    lyrics: String((song?.search_lyrics ?? fallbackSearchLyrics) || ""),
  };
}

function uniqueNormalizedTextParts(values = []) {
  const seen = new Set();
  const out = [];
  for (const value of values || []) {
    const text = String(value || "").replace(/\r\n?/g, "\n").trim();
    if (!text) continue;
    const normalized = normalizeSearchText(text);
    const key = normalized || text.toLowerCase();
    if (seen.has(key)) continue;
    seen.add(key);
    out.push(text);
  }
  return out;
}

function buildSearchDocument(song = {}, versions = []) {
  const baseTitle = String(song?.title || "").trim();
  const baseSubtitle = String(song?.subtitle || "").trim();
  const baseLyrics = String(song?.lyrics || "").replace(/\r\n?/g, "\n").trim();
  const versionTitles = [];
  const versionLyrics = [];
  for (const version of Array.isArray(versions) ? versions : []) {
    const title = String(version?.title || "").trim();
    const lyrics = String(version?.lyrics || "").replace(/\r\n?/g, "\n").trim();
    if (title) versionTitles.push(title);
    if (lyrics) versionLyrics.push(lyrics);
  }
  const mergedTitles = uniqueNormalizedTextParts([baseTitle, ...versionTitles]).join("\n");
  const mergedLyrics = uniqueNormalizedTextParts([baseLyrics, ...versionLyrics]).join("\n\n");
  return {
    search_title: mergedTitles,
    search_subtitle: baseSubtitle,
    search_lyrics: mergedLyrics,
  };
}

async function fetchSongVersionsBySongIds(env, songIds = []) {
  const safeSongIds = unique(songIds.map((value) => String(value || "").trim()));
  if (!safeSongIds.length) return new Map();
  const rows = await dbAll(
    env,
    `SELECT song_id, title, lyrics, sort_order
     FROM song_versions
     WHERE song_id IN (${safeSongIds.map(() => "?").join(", ")})
     ORDER BY song_id ASC, sort_order ASC, id ASC`,
    safeSongIds
  );
  const grouped = new Map();
  for (const row of rows || []) {
    const songId = String(row?.song_id || "").trim();
    if (!songId) continue;
    if (!grouped.has(songId)) grouped.set(songId, []);
    grouped.get(songId).push(row);
  }
  return grouped;
}

export function buildSongSearchRows(song = {}) {
  const songId = String(song?.id || "").trim();
  if (!songId) return [];
  const rows = [];
  const fields = buildFieldTextMap(song);
  for (const field of SEARCH_FIELDS) {
    const seen = new Map();
    for (const token of tokenizeSearchText(fields[field], { maxTokens: 5000, minLen: MIN_INDEX_TERM_LEN })) {
      if (seen.has(token.normalized)) continue;
      seen.set(token.normalized, token.raw);
    }
    for (const [termNorm, termRaw] of seen.entries()) {
      rows.push({
        song_id: songId,
        field,
        term_norm: termNorm,
        term_raw: termRaw,
        prefix3: termNorm.slice(0, 3),
        prefix4: termNorm.slice(0, 4),
        term_len: termNorm.length,
      });
    }
  }
  return rows;
}

export function generateDeleteKeys(term = "", maxDistance = MAX_DELETE_DISTANCE) {
  const source = String(term || "").trim();
  if (!source) return [];
  const results = new Set([source]);
  let frontier = new Set([source]);
  for (let distance = 0; distance < maxDistance; distance += 1) {
    const next = new Set();
    for (const value of frontier) {
      if (value.length <= 1) continue;
      for (let index = 0; index < value.length; index += 1) {
        const deleted = value.slice(0, index) + value.slice(index + 1);
        if (!deleted || results.has(deleted)) continue;
        results.add(deleted);
        next.add(deleted);
      }
    }
    frontier = next;
    if (!frontier.size) break;
  }
  return Array.from(results);
}

export function damerauLevenshtein(left = "", right = "", maxDistance = Infinity) {
  const a = String(left || "");
  const b = String(right || "");
  if (a === b) return 0;
  if (!a.length) return b.length;
  if (!b.length) return a.length;
  if (Math.abs(a.length - b.length) > maxDistance) return maxDistance + 1;

  const rows = a.length + 1;
  const cols = b.length + 1;
  const matrix = Array.from({ length: rows }, () => new Array(cols).fill(0));
  for (let i = 0; i < rows; i += 1) matrix[i][0] = i;
  for (let j = 0; j < cols; j += 1) matrix[0][j] = j;

  for (let i = 1; i < rows; i += 1) {
    let rowMin = Number.POSITIVE_INFINITY;
    for (let j = 1; j < cols; j += 1) {
      const cost = a[i - 1] === b[j - 1] ? 0 : 1;
      let value = Math.min(
        matrix[i - 1][j] + 1,
        matrix[i][j - 1] + 1,
        matrix[i - 1][j - 1] + cost
      );
      if (
        i > 1
        && j > 1
        && a[i - 1] === b[j - 2]
        && a[i - 2] === b[j - 1]
      ) {
        value = Math.min(value, matrix[i - 2][j - 2] + cost);
      }
      matrix[i][j] = value;
      rowMin = Math.min(rowMin, value);
    }
    if (rowMin > maxDistance) return maxDistance + 1;
  }

  return matrix[rows - 1][cols - 1];
}

async function recomputeSearchAuxiliaryForTerms(env, terms = []) {
  const uniqueTerms = unique(terms.map((value) => normalizeSearchText(value)));
  for (const chunk of chunkValues(uniqueTerms, 48)) {
    const placeholders = chunk.map(() => "?").join(", ");
    const aggregateRows = await dbAll(
      env,
      `SELECT
         term_norm,
         MIN(term_raw) AS display_term,
         COUNT(DISTINCT song_id) AS song_count,
         SUM(CASE WHEN field='title' THEN 1 ELSE 0 END) AS title_hits,
         SUM(CASE WHEN field='subtitle' THEN 1 ELSE 0 END) AS subtitle_hits,
         SUM(CASE WHEN field='lyrics' THEN 1 ELSE 0 END) AS lyrics_hits
       FROM song_search_terms
       WHERE term_norm IN (${placeholders})
       GROUP BY term_norm`,
      chunk
    );
    const aggregatesByTerm = new Map(
      aggregateRows.map((row) => [String(row?.term_norm || "").trim(), row])
    );

    await dbRun(env, `DELETE FROM song_search_deletes WHERE term_norm IN (${placeholders})`, chunk);
    await dbRun(env, `DELETE FROM song_search_vocab WHERE term_norm IN (${placeholders})`, chunk);

    const vocabStatements = [];
    const deleteStatements = [];
    for (const termNorm of chunk) {
      const aggregate = aggregatesByTerm.get(termNorm);
      const songCount = Number(aggregate?.song_count || 0);
      if (!songCount) continue;
      vocabStatements.push(
        env.DB.prepare(
          `INSERT INTO song_search_vocab (
             term_norm, display_term, song_count, title_hits, subtitle_hits, lyrics_hits
           )
           VALUES (?, ?, ?, ?, ?, ?)`
        ).bind(
          termNorm,
          String(aggregate?.display_term || termNorm),
          songCount,
          Number(aggregate?.title_hits || 0),
          Number(aggregate?.subtitle_hits || 0),
          Number(aggregate?.lyrics_hits || 0),
        )
      );
      for (const deleteKey of generateDeleteKeys(termNorm, MAX_DELETE_DISTANCE)) {
        deleteStatements.push(
          env.DB.prepare(
            `INSERT OR IGNORE INTO song_search_deletes (delete_key, term_norm) VALUES (?, ?)`
          ).bind(deleteKey, termNorm)
        );
      }
    }

    await runPreparedBatch(env, vocabStatements);
    await runPreparedBatch(env, deleteStatements);
  }
}

export async function syncSongSearchIndex(env, song = {}) {
  const songId = String(song?.id || "").trim();
  if (!songId) return;
  const existingRows = await dbAll(env, `SELECT DISTINCT term_norm FROM song_search_terms WHERE song_id=?`, [songId]);
  const previousTerms = existingRows.map((row) => String(row?.term_norm || "").trim()).filter(Boolean);
  const versionsBySongId = await fetchSongVersionsBySongIds(env, [songId]);
  const searchDocument = buildSearchDocument(song, versionsBySongId.get(songId) || []);

  await dbRun(
    env,
    `INSERT OR REPLACE INTO songs_fts(song_id, title, lyrics) VALUES (?,?,?)`,
    [songId, searchDocument.search_title, searchDocument.search_lyrics]
  );

  await dbRun(env, `DELETE FROM song_search_terms WHERE song_id=?`, [songId]);
  const rows = buildSongSearchRows({
    ...song,
    ...searchDocument,
  });
  for (const row of rows) {
    await dbRun(
      env,
      `INSERT OR REPLACE INTO song_search_terms (
         song_id, field, term_norm, term_raw, prefix3, prefix4, term_len
       ) VALUES (?, ?, ?, ?, ?, ?, ?)`,
      [
        row.song_id,
        row.field,
        row.term_norm,
        row.term_raw,
        row.prefix3,
        row.prefix4,
        row.term_len,
      ]
    );
  }

  const nextTerms = rows.map((row) => row.term_norm);
  await recomputeSearchAuxiliaryForTerms(env, [...previousTerms, ...nextTerms]);
  await invalidateCatalogRuntimeCache(env);
}

export async function deleteSongSearchIndex(env, songId) {
  const safeSongId = String(songId || "").trim();
  if (!safeSongId) return;
  const existingRows = await dbAll(env, `SELECT DISTINCT term_norm FROM song_search_terms WHERE song_id=?`, [safeSongId]);
  const previousTerms = existingRows.map((row) => String(row?.term_norm || "").trim()).filter(Boolean);
  await dbRun(env, `DELETE FROM songs_fts WHERE song_id=?`, [safeSongId]);
  await dbRun(env, `DELETE FROM song_search_terms WHERE song_id=?`, [safeSongId]);
  await recomputeSearchAuxiliaryForTerms(env, previousTerms);
  await invalidateCatalogRuntimeCache(env);
}

export async function rebuildSongSearchIndex(env) {
  await dbRun(env, `DELETE FROM songs_fts`);
  await dbRun(env, `DELETE FROM song_search_terms`);
  await dbRun(env, `DELETE FROM song_search_vocab`);
  await dbRun(env, `DELETE FROM song_search_deletes`);

  const songs = await dbAll(env, `SELECT id, title, subtitle, lyrics FROM songs`);
  const versionsBySongId = await fetchSongVersionsBySongIds(env, songs.map((song) => song?.id));
  const vocabTerms = new Set();
  for (const song of songs) {
    const songId = String(song?.id || "").trim();
    const searchDocument = buildSearchDocument(song, versionsBySongId.get(songId) || []);
    await dbRun(
      env,
      `INSERT OR REPLACE INTO songs_fts(song_id, title, lyrics) VALUES (?,?,?)`,
      [songId, searchDocument.search_title, searchDocument.search_lyrics]
    );
    const rows = buildSongSearchRows({
      ...song,
      ...searchDocument,
    });
    for (const row of rows) {
      vocabTerms.add(row.term_norm);
      await dbRun(
        env,
        `INSERT OR REPLACE INTO song_search_terms (
           song_id, field, term_norm, term_raw, prefix3, prefix4, term_len
         ) VALUES (?, ?, ?, ?, ?, ?, ?)`,
        [
          row.song_id,
          row.field,
          row.term_norm,
          row.term_raw,
          row.prefix3,
          row.prefix4,
          row.term_len,
        ]
      );
    }
  }
  await recomputeSearchAuxiliaryForTerms(env, Array.from(vocabTerms));
}

function buildSearchWhereClause(filters = {}, options = {}) {
  const where = ["s.status='published'"];
  const params = [];
  if (!options.includeAdminContent) where.push("coalesce(s.is_admin_content, 0) = 0");
  if (filters.lang) {
    where.push("lower(coalesce(s.lang, '')) = ?");
    params.push(String(filters.lang).toLowerCase());
  }
  if (filters.countryValues?.length) {
    where.push(`lower(coalesce(s.country, '')) IN (${filters.countryValues.map(() => "?").join(", ")})`);
    params.push(...filters.countryValues.map((value) => String(value).toLowerCase()));
  }
  if (filters.period) {
    const periodFilter = buildEffectivePeriodSql("s", filters.period);
    if (periodFilter) {
      where.push(periodFilter.sql);
      params.push(...periodFilter.params);
    }
  }
  if (filters.year) {
    where.push("trim(coalesce(s.year, '')) = ?");
    params.push(String(filters.year));
  }
  if (filters.performer) {
    where.push("lower(trim(coalesce(s.subtitle, ''))) LIKE ?");
    params.push(`%${String(filters.performer).toLowerCase()}%`);
  }
  if (filters.wordsAuthor) {
    const patterns = buildCreditSearchPatterns(filters.wordsAuthor, "words");
    if (patterns.length) {
      where.push(`(${patterns.map(() => "lower(coalesce(s.subtitle, '')) LIKE ?").join(" OR ")})`);
      params.push(...patterns);
    }
  }
  if (filters.musicAuthor) {
    const patterns = buildCreditSearchPatterns(filters.musicAuthor, "music");
    if (patterns.length) {
      where.push(`(${patterns.map(() => "lower(coalesce(s.subtitle, '')) LIKE ?").join(" OR ")})`);
      params.push(...patterns);
    }
  }
  if (filters.verified) where.push("coalesce(s.verified, 0) = 1");
  if (filters.recent) where.push("datetime(s.created_at) >= datetime('now','-30 day')");
  if (filters.multiVersions) where.push("coalesce(vc.version_rows, 0) >= 1");
  return { where, params };
}

function buildEffectivePeriodSql(alias, period) {
  const rawPeriod = String(period || "").trim().toLowerCase();
  const meta = getPeriodMeta(period);
  const periodValues = getPeriodFilterValues(period).map((value) => String(value).toLowerCase());
  if (!meta && !periodValues.length) {
    return rawPeriod ? { sql: `lower(coalesce(${alias}.period, '')) = ?`, params: [rawPeriod] } : null;
  }

  const yearExpr = `CAST(trim(coalesce(${alias}.year, '')) AS INTEGER)`;
  const hasYearExpr = `trim(coalesce(${alias}.year, '')) GLOB '[0-9][0-9][0-9][0-9]*'`;
  const parts = [];
  const params = [];

  if (meta?.yearRange && Array.isArray(meta.countries) && meta.countries.length) {
    parts.push(`(
      ${hasYearExpr}
      AND lower(coalesce(${alias}.country, '')) IN (${meta.countries.map(() => "?").join(", ")})
      AND ${yearExpr} >= ?
      AND ${yearExpr} < ?
    )`);
    params.push(...meta.countries.map((value) => String(value).toLowerCase()));
    params.push(Number(meta.yearRange.from), Number(meta.yearRange.to));
  }

  if (periodValues.length) {
    parts.push(`(
      NOT (${hasYearExpr})
      AND lower(coalesce(${alias}.period, '')) IN (${periodValues.map(() => "?").join(", ")})
    )`);
    params.push(...periodValues);
  }

  return parts.length ? { sql: `(${parts.join(" OR ")})`, params } : null;
}

function buildMatchSet(tokens = []) {
  return new Set(tokens.map((token) => String(token || "").trim()).filter(Boolean));
}

function fieldSequence(text = "") {
  return tokenizeSearchText(text, { maxTokens: 5000, minLen: MIN_INDEX_TERM_LEN }).map((token) => token.normalized);
}

function computeSequenceBonus(sequence = [], queryTokens = []) {
  if (!sequence.length || !queryTokens.length) return 0;
  const positions = [];
  let cursor = 0;
  for (const queryToken of queryTokens) {
    let found = -1;
    for (let index = cursor; index < sequence.length; index += 1) {
      if (sequence[index] !== queryToken) continue;
      found = index;
      cursor = index + 1;
      break;
    }
    if (found === -1) return 0;
    positions.push(found);
  }
  const span = positions[positions.length - 1] - positions[0] + 1;
  const density = Math.max(0, queryTokens.length / Math.max(queryTokens.length, span));
  return 12 + density * 18;
}

function computeAdjacentRun(sequence = [], queryTokens = []) {
  const normalizedQuery = queryTokens.map((token) => String(token || "").trim()).filter(Boolean);
  if (!sequence.length || !normalizedQuery.length) return 0;
  let best = 0;
  for (let sequenceIndex = 0; sequenceIndex < sequence.length; sequenceIndex += 1) {
    for (let queryIndex = 0; queryIndex < normalizedQuery.length; queryIndex += 1) {
      let run = 0;
      while (
        sequenceIndex + run < sequence.length
        && queryIndex + run < normalizedQuery.length
        && sequence[sequenceIndex + run] === normalizedQuery[queryIndex + run]
      ) {
        run += 1;
      }
      if (run > best) best = run;
    }
  }
  return best;
}

function buildSnippet(song = {}, queryTokens = []) {
  const lyrics = String((song?.search_lyrics ?? song?.lyrics) || "").replace(/\r\n?/g, "\n");
  const lines = lyrics.split("\n").map((line) => line.trim()).filter(Boolean);
  if (!lines.length) return "";
  const normalizedTokens = queryTokens.map((token) => token.normalized);
  if (!normalizedTokens.length) return lines.slice(0, 3).join("\n");
  let bestIndex = -1;
  let bestScore = -1;
  for (let index = 0; index < lines.length; index += 1) {
    const normalizedLine = normalizeSearchText(lines[index]);
    if (!normalizedLine) continue;
    let exactCount = 0;
    let prefixCount = 0;
    for (const token of normalizedTokens) {
      if (!token) continue;
      if (normalizedLine.includes(token)) {
        exactCount += 1;
        continue;
      }
      if (token.length >= 4 && normalizedLine.includes(token.slice(0, token.length - 1))) prefixCount += 1;
    }
    const score = exactCount * 100 + prefixCount * 35 - index * 0.01;
    if (score <= 0) continue;
    if (score > bestScore) {
      bestScore = score;
      bestIndex = index;
    }
  }
  if (bestIndex === -1) return lines[0];
  const start = Math.max(0, bestIndex - 1);
  const end = Math.min(lines.length, start + 3);
  return lines.slice(start, end).join("\n");
}

function computeFieldMatch(fieldText = "", queryTokens = [], candidateTerms = new Set()) {
  const normalizedField = normalizeSearchText(fieldText);
  const sequence = fieldSequence(fieldText);
  const exactSet = buildMatchSet(sequence);
  let exact = 0;
  let prefix = 0;
  let fuzzy = 0;
  let significantExact = 0;
  let significantPrefix = 0;
  let significantFuzzy = 0;
  let bestDistance = Number.POSITIVE_INFINITY;

  for (const token of queryTokens) {
    const value = token.normalized;
    const isSignificant = normalizedTokenLength(token) >= MIN_SIGNIFICANT_QUERY_TOKEN_LEN;
    if (exactSet.has(value)) {
      exact += 1;
      if (isSignificant) significantExact += 1;
      bestDistance = 0;
      continue;
    }
    const prefixHit = sequence.some((term) => term.startsWith(value) && value.length >= 2);
    if (prefixHit) {
      prefix += 1;
      if (isSignificant) significantPrefix += 1;
      bestDistance = Math.min(bestDistance, 1);
      continue;
    }
    let localBest = Number.POSITIVE_INFINITY;
    for (const term of candidateTerms) {
      if (!term) continue;
      if (Math.abs(term.length - value.length) > MAX_DELETE_DISTANCE) continue;
      const distance = damerauLevenshtein(value, term, MAX_DELETE_DISTANCE);
      if (distance <= MAX_DELETE_DISTANCE) localBest = Math.min(localBest, distance);
    }
    if (Number.isFinite(localBest) && localBest <= MAX_DELETE_DISTANCE) {
      fuzzy += 1;
      if (isSignificant) significantFuzzy += 1;
      bestDistance = Math.min(bestDistance, localBest);
    }
  }

  return {
    normalizedField,
    exact,
    prefix,
    fuzzy,
    significantExact,
    significantPrefix,
    significantFuzzy,
    bestDistance: Number.isFinite(bestDistance) ? bestDistance : MAX_DELETE_DISTANCE + 1,
    sequenceBonus: computeSequenceBonus(sequence, queryTokens.map((token) => token.normalized)),
    adjacentRun: computeAdjacentRun(sequence, queryTokens.map((token) => token.normalized)),
    phrase: queryTokens.length > 1 && normalizedField.includes(queryTokens.map((token) => token.normalized).join(" ")),
  };
}

function bucketOrder(bucket = "") {
  if (bucket === "exact") return 0;
  if (bucket === "text") return 1;
  if (bucket === "partial") return 2;
  return 3;
}

function summarizeMatchHierarchy(source = {}) {
  const queryLength = Math.max(1, Number(source?.queryLength ?? source?.query_length ?? 0) || 1);
  const significantQueryLength = Math.max(0, Number(source?.significantQueryLength ?? source?.significant_query_length ?? 0) || 0);
  const titlePhrase = Boolean(source?.title?.phrase || source?.subtitle?.phrase || Number(source?.title_phrase_hit || 0) > 0);
  const lyricsPhrase = Boolean(source?.lyrics?.phrase || Number(source?.lyrics_phrase_hit || 0) > 0);
  const titleExact = Number(source?.title?.exact ?? source?.title_exact_count ?? 0) + Number(source?.subtitle?.exact ?? source?.subtitle_exact_count ?? 0);
  const lyricsExact = Number(source?.lyrics?.exact ?? source?.lyrics_exact_count ?? 0);
  const titlePrefix = Number(source?.title?.prefix ?? source?.title_prefix_count ?? 0) + Number(source?.subtitle?.prefix ?? source?.subtitle_prefix_count ?? 0);
  const lyricsPrefix = Number(source?.lyrics?.prefix ?? source?.lyrics_prefix_count ?? 0);
  const titleSignificantExactCount = Number(
    source?.title_significant_exact_count
    ?? (Number(source?.title?.significantExact ?? 0) + Number(source?.subtitle?.significantExact ?? 0))
  );
  const titleSignificantPrefixCount = Number(
    source?.title_significant_prefix_count
    ?? (Number(source?.title?.significantPrefix ?? 0) + Number(source?.subtitle?.significantPrefix ?? 0))
  );
  const lyricsSignificantExactCount = Number(
    source?.lyrics_significant_exact_count
    ?? Number(source?.lyrics?.significantExact ?? 0)
  );
  const lyricsSignificantPrefixCount = Number(
    source?.lyrics_significant_prefix_count
    ?? Number(source?.lyrics?.significantPrefix ?? 0)
  );
  const titleLiteralCount = Number(source?.title_literal_count ?? (titleExact + titlePrefix));
  const lyricsLiteralCount = Number(source?.lyrics_literal_count ?? (lyricsExact + lyricsPrefix));
  const titleSignificantLiteralCount = Number(
    source?.title_significant_literal_count
    ?? (titleSignificantExactCount + titleSignificantPrefixCount)
  );
  const lyricsSignificantLiteralCount = Number(
    source?.lyrics_significant_literal_count
    ?? (lyricsSignificantExactCount + lyricsSignificantPrefixCount)
  );
  const titleAdjacentRun = Math.max(
    Number(source?.title?.adjacentRun ?? source?.title_adjacent_run ?? 0),
    Number(source?.subtitle?.adjacentRun ?? source?.subtitle_adjacent_run ?? 0)
  );
  const lyricsAdjacentRun = Number(source?.lyrics?.adjacentRun ?? source?.lyrics_adjacent_run ?? 0);
  const broadLyricsThreshold = queryLength <= 1 ? 1 : Math.max(2, queryLength - 1);
  const titleStrongThreshold = Math.max(2, queryLength - 1);
  const hasTitleLiteral = titlePhrase
    || titleExact >= queryLength
    || titleAdjacentRun >= titleStrongThreshold
    || (queryLength <= 2 && titleSignificantExactCount > 0)
    || (significantQueryLength === 0 && titleExact > 0);
  const hasPartialTitle = !hasTitleLiteral && titleSignificantLiteralCount > 0;
  const hasStrongLyrics = lyricsPhrase
    || lyricsExact >= queryLength
    || lyricsLiteralCount >= broadLyricsThreshold
    || lyricsAdjacentRun >= broadLyricsThreshold;
  const hasPartialLyrics = !hasStrongLyrics && (
    (significantQueryLength >= 2 && lyricsSignificantLiteralCount > 0)
    || (significantQueryLength === 0 && lyricsLiteralCount > 0)
  );

  return {
    queryLength,
    significantQueryLength,
    titlePhrase,
    lyricsPhrase,
    titleExact,
    lyricsExact,
    titlePrefix,
    lyricsPrefix,
    titleSignificantExactCount,
    titleSignificantPrefixCount,
    lyricsSignificantExactCount,
    lyricsSignificantPrefixCount,
    titleLiteralCount,
    lyricsLiteralCount,
    titleSignificantLiteralCount,
    lyricsSignificantLiteralCount,
    titleAdjacentRun,
    lyricsAdjacentRun,
    broadLyricsThreshold,
    titleStrongThreshold,
    hasTitleLiteral,
    hasPartialTitle,
    hasStrongLyrics,
    hasPartialLyrics,
  };
}

function deriveMatchBucket(match = {}) {
  const signals = summarizeMatchHierarchy(match);
  if (signals.hasTitleLiteral) return "exact";
  if (signals.hasStrongLyrics) return "text";
  if (signals.hasPartialTitle || signals.hasPartialLyrics) return "partial";
  return "fuzzy";
}

function deriveMatchReasons(match = {}) {
  const reasons = [];
  if (match.title.phrase) reasons.push("title_phrase");
  if (match.lyrics.phrase) reasons.push("lyrics_phrase");
  if (match.title.exact > 0) reasons.push("title_exact");
  if (match.lyrics.exact > 0) reasons.push("lyrics_exact");
  if (match.subtitle.exact > 0) reasons.push("subtitle_exact");
  if (match.title.prefix > 0 || match.subtitle.prefix > 0) reasons.push("prefix_match");
  if (match.lyrics.prefix > 0) reasons.push("lyrics_prefix");
  if (match.title.fuzzy > 0 || match.subtitle.fuzzy > 0 || match.lyrics.fuzzy > 0) reasons.push("typo_tolerant");
  return unique(reasons);
}

function wholeFieldDistance(left = "", right = "") {
  const a = normalizeSearchText(left);
  const b = normalizeSearchText(right);
  if (!a || !b) return Number.POSITIVE_INFINITY;
  const cap = Math.max(4, Math.min(24, Math.max(a.length, b.length)));
  return damerauLevenshtein(a, b, cap);
}

function computeTitleIntentSignals(fieldMatch = {}, wholeQuery = "", fieldText = "") {
  const normalizedWholeQuery = normalizeSearchText(wholeQuery);
  const normalizedFieldText = normalizeSearchText(fieldText);
  const fieldSequenceTokens = fieldSequence(fieldText);
  const fieldCoverage = Number(fieldMatch.exact || 0) + Number(fieldMatch.prefix || 0) + Number(fieldMatch.fuzzy || 0);
  const fieldDistance = wholeFieldDistance(wholeQuery, fieldText);
  const extraTokens = Math.max(0, fieldSequenceTokens.length - (String(wholeQuery || "").split(" ").filter(Boolean).length || 0));
  const wholeExact = !!normalizedWholeQuery && normalizedFieldText === normalizedWholeQuery;
  const wholeStartsWith = !wholeExact && !!normalizedWholeQuery && normalizedFieldText.startsWith(`${normalizedWholeQuery} `);
  let closeness = 0;

  if (wholeExact || fieldMatch.normalizedField === wholeQuery) closeness += 420;
  else if (wholeStartsWith) closeness += 360;
  else if (fieldMatch.phrase) closeness += 320;

  closeness += Number(fieldMatch.exact || 0) * 130;
  closeness += Number(fieldMatch.prefix || 0) * 95;
  closeness += Number(fieldMatch.fuzzy || 0) * 80;
  closeness += Number(fieldMatch.sequenceBonus || 0) * 1.8;
  closeness -= Number.isFinite(fieldDistance) ? Math.min(140, fieldDistance * 18) : 140;
  closeness -= extraTokens * 28;

  return {
    coverage: fieldCoverage,
    distance: fieldDistance,
    extraTokens,
    wholeExact,
    wholeStartsWith,
    closeness,
  };
}

function mergeFieldTerms(fieldText = "", candidateTerms) {
  const merged = new Set(fieldSequence(fieldText));
  if (candidateTerms && typeof candidateTerms[Symbol.iterator] === "function") {
    for (const term of candidateTerms) {
      const normalized = normalizeSearchText(term);
      if (normalized) merged.add(normalized);
    }
  }
  return merged;
}

function computeMatchMetadata(song = {}, analysis = {}, candidateTermsByField = {}) {
  const queryTokens = Array.isArray(analysis?.tokens) ? analysis.tokens : [];
  const wholeQuery = String(analysis?.normalized || "").trim();
  const significantQueryLength = getSignificantSearchTokens(analysis).length;
  const fields = buildFieldTextMap(song);
  const titleTerms = mergeFieldTerms(fields.title, candidateTermsByField.title);
  const subtitleTerms = mergeFieldTerms(fields.subtitle, candidateTermsByField.subtitle);
  const lyricsTerms = mergeFieldTerms(fields.lyrics, candidateTermsByField.lyrics);
  const title = computeFieldMatch(fields.title, queryTokens, titleTerms);
  const subtitle = computeFieldMatch(fields.subtitle, queryTokens, subtitleTerms);
  const lyrics = computeFieldMatch(fields.lyrics, queryTokens, lyricsTerms);
  const queryLength = queryTokens.length;
  const titleSignals = computeTitleIntentSignals(title, wholeQuery, fields.title);
  const lyricsSignals = computeTitleIntentSignals(lyrics, wholeQuery, fields.lyrics);
  let score = 0;

  score += (title.phrase ? 80 : 0) + (lyrics.phrase ? 80 : 0);
  score += title.exact * 28 + lyrics.exact * 28 + subtitle.exact * 14;
  score += title.prefix * 18 + subtitle.prefix * 12 + lyrics.prefix * 16;
  score += title.fuzzy * 8 + subtitle.fuzzy * 6 + lyrics.fuzzy * 8;
  score += title.sequenceBonus + lyrics.sequenceBonus + subtitle.sequenceBonus * 0.5;
  score -= (title.bestDistance > 0 ? title.bestDistance * 3 : 0);
  score -= (subtitle.bestDistance > 0 ? subtitle.bestDistance * 2 : 0);
  score -= (lyrics.bestDistance > 0 ? lyrics.bestDistance * 3 : 0);
  score += Math.max(0, 10 - Math.min(10, Math.floor((Date.now() - Date.parse(song?.created_at || 0)) / (1000 * 60 * 60 * 24 * 120))));

  const match = { title, subtitle, lyrics, queryLength, significantQueryLength };
  return {
    score,
    primary_lane: titleSignals.coverage > 0 ? "title" : (lyricsSignals.coverage > 0 ? "lyrics" : "other"),
    title_whole_exact: titleSignals.wholeExact ? 1 : 0,
    title_whole_startswith: titleSignals.wholeStartsWith ? 1 : 0,
    title_closeness: titleSignals.closeness,
    title_distance: titleSignals.distance,
    title_extra_tokens: titleSignals.extraTokens,
    lyrics_closeness: lyricsSignals.closeness,
    query_length: queryLength,
    title_phrase_hit: title.phrase ? 1 : 0,
    lyrics_phrase_hit: lyrics.phrase ? 1 : 0,
    title_exact_count: Number(title.exact || 0),
    subtitle_exact_count: Number(subtitle.exact || 0),
    lyrics_exact_count: Number(lyrics.exact || 0),
    title_prefix_count: Number(title.prefix || 0),
    subtitle_prefix_count: Number(subtitle.prefix || 0),
    lyrics_prefix_count: Number(lyrics.prefix || 0),
    significant_query_length: significantQueryLength,
    title_significant_exact_count: Number(title.significantExact || 0) + Number(subtitle.significantExact || 0),
    title_significant_prefix_count: Number(title.significantPrefix || 0) + Number(subtitle.significantPrefix || 0),
    lyrics_significant_exact_count: Number(lyrics.significantExact || 0),
    lyrics_significant_prefix_count: Number(lyrics.significantPrefix || 0),
    title_literal_count: Number(title.exact || 0) + Number(subtitle.exact || 0) + Number(title.prefix || 0) + Number(subtitle.prefix || 0),
    lyrics_literal_count: Number(lyrics.exact || 0) + Number(lyrics.prefix || 0),
    title_significant_literal_count: Number(title.significantExact || 0) + Number(subtitle.significantExact || 0) + Number(title.significantPrefix || 0) + Number(subtitle.significantPrefix || 0),
    lyrics_significant_literal_count: Number(lyrics.significantExact || 0) + Number(lyrics.significantPrefix || 0),
    title_sequence_bonus: Number(title.sequenceBonus || 0),
    subtitle_sequence_bonus: Number(subtitle.sequenceBonus || 0),
    lyrics_sequence_bonus: Number(lyrics.sequenceBonus || 0),
    title_adjacent_run: Number(title.adjacentRun || 0),
    subtitle_adjacent_run: Number(subtitle.adjacentRun || 0),
    lyrics_adjacent_run: Number(lyrics.adjacentRun || 0),
    match_bucket: deriveMatchBucket(match),
    match_reasons: deriveMatchReasons(match),
  };
}

function buildVersionCandidateSong(song = {}, version = null) {
  if (!version) return null;
  return {
    ...song,
    title: String(version?.title || song?.title || ""),
    subtitle: String(song?.subtitle || ""),
    lyrics: String(version?.lyrics || ""),
    lang: String(version?.lang || song?.lang || ""),
    source: String(version?.source || song?.source || ""),
    lyrics_meta_json: version?.lyrics_meta_json || null,
  };
}

function chooseMatchedVersionId(song = {}, analysis = {}, candidateTermsByField = {}) {
  const versions = Array.isArray(song?.__search_versions) ? song.__search_versions : [];
  if (!versions.length) return "";
  const rankedCandidates = [
    {
      id: "__original",
      title: String(song?.title || ""),
      subtitle: String(song?.subtitle || ""),
      lyrics: String(song?.lyrics || ""),
      created_at: song?.created_at,
      version_rows: song?.version_rows || 0,
    },
    ...versions.map((version) => ({
      id: String(version?.id || "").trim(),
      title: String(version?.title || song?.title || ""),
      subtitle: String(song?.subtitle || ""),
      lyrics: String(version?.lyrics || ""),
      created_at: song?.created_at,
      version_rows: song?.version_rows || 0,
    })).filter((item) => item.id && item.lyrics.trim()),
  ].map((candidate) => {
    const matchMeta = computeMatchMetadata(candidate, analysis, candidateTermsByField);
    return {
      ...candidate,
      ...matchMeta,
      _score: matchMeta.score,
    };
  }).filter((candidate) => candidate._score > 0 || (candidate.match_reasons || []).length);

  if (!rankedCandidates.length) return "";
  const [best] = sortSearchRows(rankedCandidates);
  return best?.id && best.id !== "__original" ? String(best.id) : "";
}

function resolveSnippetSong(song = {}, matchedVersionId = "") {
  const versionId = String(matchedVersionId || "").trim();
  if (!versionId) return song;
  const versions = Array.isArray(song?.__search_versions) ? song.__search_versions : [];
  const matchedVersion = versions.find((item) => String(item?.id || "").trim() === versionId);
  if (!matchedVersion) return song;
  return buildVersionCandidateSong(song, matchedVersion) || song;
}

async function fetchVisibleTermCandidates(env, filters = {}, options = {}) {
  const termNorm = normalizeSearchText(options.termNorm || "");
  if (!termNorm) return [];
  const includeAdminContent = options.includeAdminContent === true;
  const fromPrefix = options.fromPrefix !== false;
  const { where, params } = buildSearchWhereClause(filters, { includeAdminContent });
  const prefixValue = termNorm.length >= 4 ? termNorm.slice(0, 4) : termNorm.slice(0, 3);
  const prefixColumn = termNorm.length >= 4 ? "st.prefix4" : "st.prefix3";
  const extraTermPredicate = fromPrefix
    ? `(${prefixColumn}=? AND st.term_norm LIKE ?)`
    : `st.term_norm=?`;
  const rows = await dbAll(
    env,
    `SELECT
       st.term_norm,
       MIN(st.term_raw) AS display_term,
       COUNT(DISTINCT st.song_id) AS song_count,
       SUM(CASE WHEN st.field='title' THEN 1 ELSE 0 END) AS title_hits,
       SUM(CASE WHEN st.field='subtitle' THEN 1 ELSE 0 END) AS subtitle_hits,
       SUM(CASE WHEN st.field='lyrics' THEN 1 ELSE 0 END) AS lyrics_hits
     FROM song_search_terms st
     JOIN songs s ON s.id = st.song_id
     LEFT JOIN (
       SELECT song_id, COUNT(*) AS version_rows
       FROM song_versions
       GROUP BY song_id
     ) vc ON vc.song_id = s.id
     WHERE ${where.join(" AND ")} AND ${extraTermPredicate}
     GROUP BY st.term_norm
     ORDER BY
       CASE WHEN st.term_norm=? THEN 0 ELSE 1 END,
       title_hits DESC,
       lyrics_hits DESC,
       song_count DESC,
       st.term_norm ASC
     LIMIT ?`,
    fromPrefix
      ? [...params, prefixValue, `${termNorm}%`, termNorm, MAX_CANDIDATE_TERMS_PER_TOKEN * 2]
      : [...params, termNorm, termNorm, MAX_CANDIDATE_TERMS_PER_TOKEN * 2]
  );
  return rows || [];
}

async function collectTypoCandidates(env, filters = {}, analysis = {}, options = {}) {
  const includeAdminContent = options.includeAdminContent === true;
  const suggestions = [];
  for (const token of analysis.tokens || []) {
    const exactVisible = await fetchVisibleTermCandidates(env, filters, {
      termNorm: token.normalized,
      includeAdminContent,
      fromPrefix: false,
    });
    if (exactVisible.some((row) => String(row?.term_norm || "") === token.normalized)) continue;

    const whereContext = buildSearchWhereClause(filters, { includeAdminContent });
    const deleteKeys = unique(generateDeleteKeys(token.normalized, MAX_DELETE_DISTANCE)).slice(0, 32);
    if (!deleteKeys.length) continue;
    let rows = await dbAll(
      env,
      `SELECT
         st.term_norm,
         MIN(st.term_raw) AS display_term,
         COUNT(DISTINCT st.song_id) AS song_count,
         SUM(CASE WHEN st.field='title' THEN 1 ELSE 0 END) AS title_hits,
         SUM(CASE WHEN st.field='subtitle' THEN 1 ELSE 0 END) AS subtitle_hits,
         SUM(CASE WHEN st.field='lyrics' THEN 1 ELSE 0 END) AS lyrics_hits
       FROM song_search_deletes sd
       JOIN song_search_terms st ON st.term_norm = sd.term_norm
       JOIN songs s ON s.id = st.song_id
       LEFT JOIN (
         SELECT song_id, COUNT(*) AS version_rows
         FROM song_versions
         GROUP BY song_id
       ) vc ON vc.song_id = s.id
       WHERE sd.delete_key IN (${deleteKeys.map(() => "?").join(", ")})
         AND ${whereContext.where.join(" AND ")}
       GROUP BY st.term_norm
       ORDER BY title_hits DESC, lyrics_hits DESC, song_count DESC, st.term_norm ASC
       LIMIT ?`,
      [
        ...deleteKeys,
        ...whereContext.params,
        MAX_CANDIDATE_TERMS_PER_TOKEN * 3,
      ]
    );

    if (!(rows || []).length) {
      const fallbackPrefix = token.normalized.slice(0, token.normalized.length >= 4 ? 2 : 1);
      const fallbackSuffix = token.normalized.slice(-(token.normalized.length >= 5 ? 2 : 1));
      rows = await dbAll(
        env,
        `SELECT
           st.term_norm,
           MIN(st.term_raw) AS display_term,
           COUNT(DISTINCT st.song_id) AS song_count,
           SUM(CASE WHEN st.field='title' THEN 1 ELSE 0 END) AS title_hits,
           SUM(CASE WHEN st.field='subtitle' THEN 1 ELSE 0 END) AS subtitle_hits,
           SUM(CASE WHEN st.field='lyrics' THEN 1 ELSE 0 END) AS lyrics_hits
         FROM song_search_terms st
         JOIN songs s ON s.id = st.song_id
         LEFT JOIN (
           SELECT song_id, COUNT(*) AS version_rows
           FROM song_versions
           GROUP BY song_id
         ) vc ON vc.song_id = s.id
         WHERE ${whereContext.where.join(" AND ")}
           AND st.term_len BETWEEN ? AND ?
           AND st.term_norm LIKE ?
           AND st.term_norm LIKE ?
         GROUP BY st.term_norm
         ORDER BY title_hits DESC, lyrics_hits DESC, song_count DESC, st.term_norm ASC
         LIMIT ?`,
        [
          ...whereContext.params,
          Math.max(MIN_INDEX_TERM_LEN, token.normalized.length - MAX_DELETE_DISTANCE),
          token.normalized.length + MAX_DELETE_DISTANCE,
          `${fallbackPrefix}%`,
          `%${fallbackSuffix}`,
          MAX_CANDIDATE_TERMS_PER_TOKEN * 8,
        ]
      );
    }

    const ranked = [];
    for (const row of rows || []) {
      const termNorm = String(row?.term_norm || "").trim();
      if (!termNorm) continue;
      const distance = damerauLevenshtein(token.normalized, termNorm, MAX_DELETE_DISTANCE);
      if (distance > MAX_DELETE_DISTANCE) continue;
      ranked.push({
        token: token.normalized,
        replacement: termNorm,
        display: String(row?.display_term || termNorm),
        distance,
        confidence: Math.max(0.1, 1 - (distance / Math.max(token.normalized.length, termNorm.length, 1))),
        weight: (Number(row?.title_hits || 0) * 3) + Number(row?.subtitle_hits || 0) + Number(row?.lyrics_hits || 0),
      });
    }
    ranked.sort((left, right) => left.distance - right.distance || right.weight - left.weight || right.confidence - left.confidence || left.replacement.localeCompare(right.replacement));
    suggestions.push(...ranked.slice(0, MAX_CANDIDATE_TERMS_PER_TOKEN));
  }
  return suggestions;
}

function buildDidYouMeanQueries(rawQuery = "", analysis = {}, typoCandidates = []) {
  const queryTokens = analysis.tokens || [];
  const grouped = new Map();
  for (const candidate of typoCandidates) {
    const key = String(candidate?.token || "");
    if (!key) continue;
    if (!grouped.has(key)) grouped.set(key, []);
    grouped.get(key).push(candidate);
  }
  const replacements = [];
  for (const token of queryTokens) {
    const candidates = grouped.get(token.normalized) || [];
    if (!candidates.length) continue;
    replacements.push(candidates[0]);
  }
  if (!replacements.length) return [];

  const variants = [];
  const combinedMap = new Map();
  replacements.forEach((replacement) => combinedMap.set(replacement.token, replacement));
  const combinedTokens = queryTokens.map((token) => combinedMap.get(token.normalized)?.replacement || token.normalized);
  const combinedQuery = combinedTokens.join(" ");
  if (combinedQuery && combinedQuery !== analysis.normalized) {
    variants.push({
      query: combinedQuery,
      confidence: Number((replacements.reduce((sum, item) => sum + item.confidence, 0) / replacements.length).toFixed(3)),
      replaced_tokens: replacements.map((item) => ({ from: item.token, to: item.replacement })),
    });
  }

  for (const replacement of replacements) {
    const singleTokens = queryTokens.map((token) => token.normalized === replacement.token ? replacement.replacement : token.normalized);
    const singleQuery = singleTokens.join(" ");
    if (!singleQuery || singleQuery === analysis.normalized) continue;
    variants.push({
      query: singleQuery,
      confidence: Number(replacement.confidence.toFixed(3)),
      replaced_tokens: [{ from: replacement.token, to: replacement.replacement }],
    });
  }

  const uniqueVariants = [];
  const seen = new Set();
  for (const variant of variants) {
    const key = String(variant?.query || "").trim();
    if (!key || seen.has(key)) continue;
    seen.add(key);
    uniqueVariants.push(variant);
    if (uniqueVariants.length >= MAX_DID_YOU_MEAN) break;
  }
  return uniqueVariants;
}

async function fetchCandidateSongRows(env, songIds = []) {
  const safeSongIds = unique(songIds.map((value) => String(value || "").trim()));
  if (!safeSongIds.length) return [];
  const rows = await dbAll(
    env,
    `SELECT
       s.id,
       s.title,
       s.subtitle,
       s.lyrics,
       s.lang,
       s.country,
       s.period,
       s.region,
       s.event,
       s.theme,
       0 AS verified,
       s.year,
       s.created_at,
       coalesce(vc.version_rows, 0) AS version_rows
     FROM songs s
     LEFT JOIN (
       SELECT song_id, COUNT(*) AS version_rows
       FROM song_versions
       GROUP BY song_id
     ) vc ON vc.song_id = s.id
     WHERE s.id IN (${safeSongIds.map(() => "?").join(", ")})`,
    safeSongIds
  );
  const versionsBySongId = await fetchSongVersionsBySongIds(env, safeSongIds);
  return (rows || []).map((row) => ({
    ...row,
    __search_versions: versionsBySongId.get(String(row?.id || "").trim()) || [],
    ...buildSearchDocument(row, versionsBySongId.get(String(row?.id || "").trim()) || []),
  }));
}

async function queryDirectScanRows(env, filters = {}, analysis = {}, options = {}) {
  const includeAdminContent = options.includeAdminContent === true;
  const significantTokens = getSignificantSearchTokens(analysis);
  const allTokens = Array.isArray(analysis?.tokens) ? analysis.tokens : [];
  const scanTitleFieldsOnly = !significantTokens.length;
  const rawTokens = unique(
    (scanTitleFieldsOnly ? allTokens : significantTokens)
      .map((token) => String(token?.raw || token?.normalized || "").trim().toLowerCase())
      .filter(Boolean)
  ).slice(0, MAX_QUERY_TERMS_FOR_FUZZY);
  if (!rawTokens.length) return [];

  const { where, params } = buildSearchWhereClause(filters, { includeAdminContent });
  const queryParams = [...params];
  for (const token of rawTokens) {
    const patterns = buildUnicodeCaseLikePatterns(token);
    if (scanTitleFieldsOnly) {
      const fieldSql = [
        "coalesce(s.title, '')",
        "coalesce(va.version_titles, '')",
        "coalesce(s.subtitle, '')",
      ];
      where.push(`(${fieldSql.flatMap((field) => (
        patterns.map(() => `${field} LIKE ? ESCAPE '\\'`)
      )).join(" OR ")})`);
      fieldSql.forEach(() => queryParams.push(...patterns));
    } else {
      const pattern = `%${escapeLikeValue(token)}%`;
      where.push(`(
        lower(coalesce(s.title, '')) LIKE ? ESCAPE '\\'
        OR lower(coalesce(va.version_titles, '')) LIKE ? ESCAPE '\\'
        OR lower(coalesce(s.subtitle, '')) LIKE ? ESCAPE '\\'
        OR lower(coalesce(s.lyrics, '')) LIKE ? ESCAPE '\\'
        OR lower(coalesce(va.version_lyrics, '')) LIKE ? ESCAPE '\\'
      )`);
      queryParams.push(pattern, pattern, pattern, pattern, pattern);
    }
  }

  const countRow = await dbGet(
    env,
    `SELECT COUNT(*) AS total
     FROM songs s
     LEFT JOIN (
       SELECT song_id, COUNT(*) AS version_rows
       FROM song_versions
       GROUP BY song_id
     ) vc ON vc.song_id = s.id
     LEFT JOIN (
       SELECT
         song_id,
         GROUP_CONCAT(COALESCE(NULLIF(title, ''), ''), '\n') AS version_titles,
         GROUP_CONCAT(COALESCE(NULLIF(lyrics, ''), ''), '\n\n') AS version_lyrics
       FROM song_versions
       GROUP BY song_id
     ) va ON va.song_id = s.id
     WHERE ${where.join(" AND ")}`,
    queryParams
  );
  const total = Number(countRow?.total || 0);
  if (scanTitleFieldsOnly) {
    if (!total || total > MAX_DIRECT_SCAN_CANDIDATES) return [];
  } else if (!shouldRunDirectScanFallback(analysis, total)) {
    return [];
  }

  const rows = await dbAll(
    env,
    `SELECT
       s.id,
       s.title,
       s.subtitle,
       s.lyrics,
       coalesce(va.version_titles, '') AS version_titles,
       coalesce(va.version_lyrics, '') AS version_lyrics,
       s.lang,
       s.country,
       s.period,
       s.region,
       s.event,
       s.theme,
       0 AS verified,
       s.year,
       s.created_at,
       coalesce(vc.version_rows, 0) AS version_rows
     FROM songs s
     LEFT JOIN (
       SELECT song_id, COUNT(*) AS version_rows
       FROM song_versions
       GROUP BY song_id
     ) vc ON vc.song_id = s.id
     LEFT JOIN (
       SELECT
         song_id,
         GROUP_CONCAT(COALESCE(NULLIF(title, ''), ''), '\n') AS version_titles,
         GROUP_CONCAT(COALESCE(NULLIF(lyrics, ''), ''), '\n\n') AS version_lyrics
       FROM song_versions
       GROUP BY song_id
     ) va ON va.song_id = s.id
     WHERE ${where.join(" AND ")}
     ORDER BY s.id ASC
     LIMIT 250`,
    queryParams
  );
  return (rows || []).map((row) => ({
    ...row,
    __search_versions: [],
    search_title: uniqueNormalizedTextParts([row?.title, row?.version_titles]).join("\n"),
    search_subtitle: String(row?.subtitle || ""),
    search_lyrics: uniqueNormalizedTextParts([row?.lyrics, row?.version_lyrics]).join("\n\n"),
  }));
}

async function filterDidYouMeanQueries(env, filters = {}, variants = [], options = {}) {
  const includeAdminContent = options.includeAdminContent === true;
  const accepted = [];
  for (const variant of variants || []) {
    const nextAnalysis = {
      raw: String(variant?.query || "").trim(),
      normalized: normalizeSearchText(variant?.query || ""),
      tokens: tokenizeSearchText(variant?.query || "", { maxTokens: MAX_QUERY_TOKENS, minLen: MIN_INDEX_TERM_LEN }),
    };
    if (!nextAnalysis.tokens.length) continue;
    const [phraseRows, tokenRows, prefixRows] = await Promise.all([
      queryExactPhraseRows(env, filters, nextAnalysis, { includeAdminContent }),
      queryExactTokenRows(env, filters, nextAnalysis, { includeAdminContent }),
      queryPrefixRows(env, filters, nextAnalysis, { includeAdminContent }),
    ]);
    if (phraseRows.length || tokenRows.length || prefixRows.length) {
      accepted.push(variant);
      if (accepted.length >= MAX_DID_YOU_MEAN) break;
      continue;
    }
    const directRows = await queryDirectScanRows(env, filters, nextAnalysis, { includeAdminContent });
    if (directRows.length) {
      accepted.push(variant);
      if (accepted.length >= MAX_DID_YOU_MEAN) break;
    }
  }
  return accepted;
}

export function shouldRunDirectScanFallback(analysis = {}, candidateCount = 0) {
  const total = Math.max(0, Number(candidateCount || 0) || 0);
  if (!hasSignificantSearchToken(analysis)) return false;
  if (!total) return false;
  return total <= MAX_DIRECT_SCAN_CANDIDATES;
}

function buildEmptySearchResponse(analysis = {}, page = 1, extra = {}) {
  const safePage = Math.max(1, Number(page || 1) || 1);
  return {
    items: [],
    total: 0,
    page: safePage,
    pages: 1,
    did_you_mean: [],
    bucket_counts: { exact: 0, partial: 0, text: 0, fuzzy: 0 },
    query_analysis: {
      normalized: String(analysis?.normalized || ""),
      corrected_tokens: [],
      literal_hits: { phrase: 0, tokens: 0, prefix: 0, fuzzy: 0 },
    },
    suggestions: [],
    suggestions_total: 0,
    search_mode: "empty",
    ...extra,
  };
}

function finalizeSearchResponseFromItems(rawQuery = "", analysis = {}, items = [], page = 1, extra = {}) {
  const deduped = new Map();
  for (const item of items || []) {
    const duplicateKey = buildDuplicateKey(item);
    const existing = deduped.get(duplicateKey);
    if (!existing) {
      deduped.set(duplicateKey, item);
      continue;
    }
    const shouldReplace = bucketOrder(item.match_bucket) < bucketOrder(existing.match_bucket)
      || Number(item._score || 0) > Number(existing._score || 0)
      || Number(item.version_rows || 0) > Number(existing.version_rows || 0)
      || String(item.created_at || "") > String(existing.created_at || "");
    if (shouldReplace) deduped.set(duplicateKey, item);
  }

  const sorted = finalizeRankedItems(sortSearchRows(Array.from(deduped.values())));
  const bucketCounts = { exact: 0, partial: 0, text: 0, fuzzy: 0 };
  sorted.forEach((item) => {
    const bucket = String(item?.match_bucket || "fuzzy");
    if (Object.prototype.hasOwnProperty.call(bucketCounts, bucket)) bucketCounts[bucket] += 1;
  });
  const total = sorted.length;
  const pages = Math.max(1, Math.ceil(total / SEARCH_PAGE_SIZE));
  const safePage = Math.min(Math.max(1, Number(page || 1) || 1), pages);
  const offset = (safePage - 1) * SEARCH_PAGE_SIZE;
  const pageItems = sorted.slice(offset, offset + SEARCH_PAGE_SIZE).map((item) => {
    const {
      _score,
      primary_lane,
      title_whole_exact,
      title_whole_startswith,
      title_closeness,
      title_distance,
      title_extra_tokens,
      lyrics_closeness,
      query_length,
      title_phrase_hit,
      lyrics_phrase_hit,
      title_exact_count,
      subtitle_exact_count,
      lyrics_exact_count,
      title_prefix_count,
      subtitle_prefix_count,
      lyrics_prefix_count,
      significant_query_length,
      title_significant_exact_count,
      title_significant_prefix_count,
      lyrics_significant_exact_count,
      lyrics_significant_prefix_count,
      title_literal_count,
      lyrics_literal_count,
      title_significant_literal_count,
      lyrics_significant_literal_count,
      title_sequence_bonus,
      subtitle_sequence_bonus,
      lyrics_sequence_bonus,
      title_adjacent_run,
      subtitle_adjacent_run,
      lyrics_adjacent_run,
      ...rest
    } = item;
    return rest;
  });

  return {
    items: pageItems,
    total,
    page: safePage,
    pages,
    bucket_counts: bucketCounts,
    query_analysis: {
      normalized: String(analysis?.normalized || normalizeSearchText(rawQuery)),
      corrected_tokens: [],
      literal_hits: { phrase: 0, tokens: 0, prefix: 0, fuzzy: 0 },
    },
    suggestions: [],
    suggestions_total: 0,
    did_you_mean: [],
    search_mode: total > 0 ? "hybrid" : "empty",
    ...extra,
  };
}

function mergeCandidateMap(target = new Map(), rows = [], reason = "") {
  for (const row of rows || []) {
    const songId = String(row?.song_id || row?.id || "").trim();
    if (!songId) continue;
    if (!target.has(songId)) {
      target.set(songId, {
        song_id: songId,
        reasons: new Set(),
        fields: { title: new Set(), subtitle: new Set(), lyrics: new Set() },
      });
    }
    const entry = target.get(songId);
    if (reason) entry.reasons.add(reason);
    const field = String(row?.field || "").trim();
    const term = String(row?.term_norm || "").trim();
    if (field && term && entry.fields[field] instanceof Set) entry.fields[field].add(term);
  }
}

async function queryExactPhraseRows(env, filters = {}, analysis = {}, options = {}) {
  const includeAdminContent = options.includeAdminContent === true;
  if (!analysis.normalized || !analysis.tokens?.length) return [];
  const cleanedPhrase = analysis.tokens.map((token) => escapeFtsToken(token.normalized)).join(" ").trim();
  if (!cleanedPhrase) return [];
  const { where, params } = buildSearchWhereClause(filters, { includeAdminContent });
  return dbAll(
    env,
    `SELECT DISTINCT s.id AS song_id
     FROM songs_fts
     JOIN songs s ON s.id = songs_fts.song_id
     LEFT JOIN (
       SELECT song_id, COUNT(*) AS version_rows
       FROM song_versions
       GROUP BY song_id
     ) vc ON vc.song_id = s.id
     WHERE ${where.join(" AND ")} AND songs_fts MATCH ?
     LIMIT 150`,
    [...params, `"${cleanedPhrase}"`]
  );
}

async function queryExactTokenRows(env, filters = {}, analysis = {}, options = {}) {
  const includeAdminContent = options.includeAdminContent === true;
  if (!analysis.tokens?.length) return [];
  const strictQuery = analysis.tokens.map((token) => escapeFtsToken(token.normalized)).filter(Boolean).join(" AND ");
  if (!strictQuery) return [];
  const { where, params } = buildSearchWhereClause(filters, { includeAdminContent });
  return dbAll(
    env,
    `SELECT DISTINCT s.id AS song_id
     FROM songs_fts
     JOIN songs s ON s.id = songs_fts.song_id
     LEFT JOIN (
       SELECT song_id, COUNT(*) AS version_rows
       FROM song_versions
       GROUP BY song_id
     ) vc ON vc.song_id = s.id
     WHERE ${where.join(" AND ")} AND songs_fts MATCH ?
     LIMIT 200`,
    [...params, strictQuery]
  );
}

async function queryPrefixRows(env, filters = {}, analysis = {}, options = {}) {
  const includeAdminContent = options.includeAdminContent === true;
  const queryTokens = (analysis.tokens || []).slice(0, MAX_QUERY_TERMS_FOR_FUZZY);
  if (!queryTokens.length) return [];
  const { where, params } = buildSearchWhereClause(filters, { includeAdminContent });
  const unionQueries = [];
  const unionParams = [];
  for (const token of queryTokens) {
    const normalized = token.normalized;
    if (!normalized) continue;
    const prefixValue = normalized.length >= 4 ? normalized.slice(0, 4) : normalized.slice(0, 3);
    const prefixColumn = normalized.length >= 4 ? "st.prefix4" : "st.prefix3";
    unionQueries.push(
      `SELECT st.song_id, st.field, st.term_norm
       FROM song_search_terms st
       JOIN songs s ON s.id = st.song_id
       LEFT JOIN (
         SELECT song_id, COUNT(*) AS version_rows
         FROM song_versions
         GROUP BY song_id
       ) vc ON vc.song_id = s.id
       WHERE ${where.join(" AND ")} AND ${prefixColumn}=? AND st.term_norm LIKE ?`
    );
    unionParams.push(...params, prefixValue, `${normalized}%`);
  }
  if (!unionQueries.length) return [];
  return dbAll(env, `${unionQueries.join(" UNION ALL ")} LIMIT 250`, unionParams);
}

async function queryFuzzyRows(env, filters = {}, analysis = {}, typoCandidates = [], options = {}) {
  const includeAdminContent = options.includeAdminContent === true;
  const replacements = unique(typoCandidates.map((item) => item.replacement)).slice(0, 16);
  if (!replacements.length) return [];
  const { where, params } = buildSearchWhereClause(filters, { includeAdminContent });
  return dbAll(
    env,
    `SELECT st.song_id, st.field, st.term_norm
     FROM song_search_terms st
     JOIN songs s ON s.id = st.song_id
     LEFT JOIN (
       SELECT song_id, COUNT(*) AS version_rows
       FROM song_versions
       GROUP BY song_id
     ) vc ON vc.song_id = s.id
     WHERE ${where.join(" AND ")} AND st.term_norm IN (${replacements.map(() => "?").join(", ")})
     LIMIT 250`,
    [...params, ...replacements]
  );
}

function laneOrder(item = {}) {
  if (item.primary_lane === "title") return 0;
  if (item.primary_lane === "lyrics") return 1;
  return 2;
}

function intraBucketPriority(item = {}) {
  const signals = summarizeMatchHierarchy(item);
  const bucket = String(item?.match_bucket || "").trim().toLowerCase();

  if (bucket === "exact") {
    if (signals.titlePhrase) return 0;
    if (signals.titleExact >= signals.queryLength) return 1;
    if (signals.titleExact > 0) return 2;
    if (signals.titlePrefix > 0) return 3;
    return 4;
  }

  if (bucket === "text") {
    if (signals.lyricsPhrase) return 10;
    if (signals.lyricsExact >= signals.queryLength) return 11;
    if (signals.lyricsLiteralCount >= signals.broadLyricsThreshold) return 12;
    if (signals.lyricsAdjacentRun >= signals.broadLyricsThreshold) return 13;
    if (signals.lyricsExact > 0) return 14;
    if (signals.lyricsPrefix > 0) return 15;
    return 16;
  }

  if (bucket === "partial") {
    if (signals.hasPartialTitle) return 20;
    if (signals.lyricsSignificantLiteralCount > 0) return 20;
    if (signals.lyricsPrefix > 0) return 21;
    if (signals.lyricsExact > 0) return 22;
    return 23;
  }

  if (signals.titlePrefix > 0 || signals.lyricsPrefix > 0) return 30;
  if (signals.titleExact > 0 || signals.lyricsExact > 0) return 31;
  return 32;
}

function maxAdjacentRun(item = {}) {
  return Math.max(
    Number(item?.title_adjacent_run || 0),
    Number(item?.subtitle_adjacent_run || 0),
    Number(item?.lyrics_adjacent_run || 0),
  );
}

function deriveMatchRankClass(item = {}) {
  const signals = summarizeMatchHierarchy(item);
  const bestAdjacent = maxAdjacentRun(item);
  const bestExact = Math.max(signals.titleExact, signals.lyricsExact);

  if (signals.hasTitleLiteral) return "strong";
  if (signals.lyricsPhrase) return "strong";
  if (bestExact >= signals.queryLength) return "strong";
  if (bestAdjacent >= Math.max(2, signals.queryLength - 1)) return "strong";
  if (signals.queryLength <= 1 && (signals.lyricsExact > 0 || signals.lyricsPrefix > 0)) return "strong";
  return "weak";
}

function finalizeRankedItems(items = []) {
  const withRankClass = [...items].map((item) => ({
    ...item,
    match_rank_class: deriveMatchRankClass(item),
  }));
  const hasStrong = withRankClass.some((item) => item.match_rank_class === "strong");
  const queryLength = Math.max(0, ...withRankClass.map((item) => Number(item?.query_length || 0) || 0));
  const hasPhraseLikeStrong = withRankClass.some((item) => item.match_rank_class === "strong" && (
    Number(item?.title_phrase_hit || 0) > 0
    || Number(item?.lyrics_phrase_hit || 0) > 0
    || maxAdjacentRun(item) >= 2
  ));
  const shouldSuppressWeak = queryLength >= 3 || (queryLength === 2 && hasPhraseLikeStrong);
  if (!hasStrong || !shouldSuppressWeak) return withRankClass;
  return withRankClass.filter((item) => (
    item.match_rank_class !== "weak"
    || String(item?.match_bucket || "").trim().toLowerCase() === "partial"
  ));
}

function sortSearchRows(items = []) {
  return [...items].sort((left, right) => {
    if (Number(right.title_whole_exact || 0) !== Number(left.title_whole_exact || 0)) {
      return Number(right.title_whole_exact || 0) - Number(left.title_whole_exact || 0);
    }
    if (Number(right.title_whole_startswith || 0) !== Number(left.title_whole_startswith || 0)) {
      return Number(right.title_whole_startswith || 0) - Number(left.title_whole_startswith || 0);
    }
    const leftBucket = bucketOrder(left.match_bucket);
    const rightBucket = bucketOrder(right.match_bucket);
    if (leftBucket !== rightBucket) return leftBucket - rightBucket;

    const leftPriority = intraBucketPriority(left);
    const rightPriority = intraBucketPriority(right);
    if (leftPriority !== rightPriority) return leftPriority - rightPriority;

    const leftLane = laneOrder(left);
    const rightLane = laneOrder(right);
    if (leftLane !== rightLane) return leftLane - rightLane;

    if (maxAdjacentRun(right) !== maxAdjacentRun(left)) {
      return maxAdjacentRun(right) - maxAdjacentRun(left);
    }
    if (Number(right.title_sequence_bonus || 0) !== Number(left.title_sequence_bonus || 0)) {
      return Number(right.title_sequence_bonus || 0) - Number(left.title_sequence_bonus || 0);
    }
    if (Number(right.lyrics_sequence_bonus || 0) !== Number(left.lyrics_sequence_bonus || 0)) {
      return Number(right.lyrics_sequence_bonus || 0) - Number(left.lyrics_sequence_bonus || 0);
    }
    if (leftLane === 0) {
      if (Number(left.title_distance || Number.POSITIVE_INFINITY) !== Number(right.title_distance || Number.POSITIVE_INFINITY)) {
        return Number(left.title_distance || Number.POSITIVE_INFINITY) - Number(right.title_distance || Number.POSITIVE_INFINITY);
      }
      if (Number(left.title_extra_tokens || 0) !== Number(right.title_extra_tokens || 0)) {
        return Number(left.title_extra_tokens || 0) - Number(right.title_extra_tokens || 0);
      }
    }
    if (Number(right.title_closeness || 0) !== Number(left.title_closeness || 0)) {
      return Number(right.title_closeness || 0) - Number(left.title_closeness || 0);
    }
    if (Number(right.lyrics_closeness || 0) !== Number(left.lyrics_closeness || 0)) {
      return Number(right.lyrics_closeness || 0) - Number(left.lyrics_closeness || 0);
    }
    if (Number(right._score || 0) !== Number(left._score || 0)) return Number(right._score || 0) - Number(left._score || 0);
    if (Number(right.version_rows || 0) !== Number(left.version_rows || 0)) return Number(right.version_rows || 0) - Number(left.version_rows || 0);
    if (String(right.created_at || "") !== String(left.created_at || "")) return String(right.created_at || "").localeCompare(String(left.created_at || ""));
    return String(left.title || "").localeCompare(String(right.title || ""));
  });
}

export function rankSearchCandidatesForQuery(rawQuery = "", songs = []) {
  const analysis = {
    raw: String(rawQuery || "").trim(),
    normalized: normalizeSearchText(rawQuery),
    tokens: tokenizeSearchText(rawQuery, { maxTokens: MAX_QUERY_TOKENS, minLen: MIN_INDEX_TERM_LEN }),
  };
  const ranked = [];
  for (const song of songs || []) {
    const matchMeta = computeMatchMetadata(song, analysis, {});
    if (matchMeta.score <= 0 && !(matchMeta.match_reasons || []).length) continue;
    ranked.push({
      ...song,
      ...matchMeta,
      _score: matchMeta.score,
    });
  }
  return finalizeRankedItems(sortSearchRows(ranked));
}

function buildDuplicateKey(song = {}) {
  return [
    String(song?.title || "").trim().toLowerCase(),
    String(song?.subtitle || "").trim().toLowerCase(),
    String(song?.lang || "").trim().toLowerCase(),
    String(song?.country || "").trim().toLowerCase(),
    String(song?.period || "").trim().toLowerCase(),
    String(song?.year || "").trim(),
    String(song?.region || "").trim().toLowerCase(),
    String(song?.event || "").trim().toLowerCase(),
    String(song?.theme || "").trim().toLowerCase(),
    String(song?.lyrics || "").replace(/\r\n?/g, "\n"),
  ].join("|");
}

export async function searchSongs(env, options = {}) {
  const rawQuery = String(options.q || "").trim();
  const analysis = {
    raw: rawQuery,
    normalized: normalizeSearchText(rawQuery),
    tokens: tokenizeSearchText(rawQuery, { maxTokens: MAX_QUERY_TOKENS, minLen: MIN_INDEX_TERM_LEN }),
  };
  const page = Math.max(1, Number(options.page || 1) || 1);
  const filters = options.filters || {};
  const includeAdminContent = options.includeAdminContent === true;

  if (!analysis.tokens.length) {
    return buildEmptySearchResponse(analysis, 1);
  }
  try {
    const shouldRunTypoSearch = hasSignificantSearchToken(analysis);
    const exactPhraseRows = await queryExactPhraseRows(env, filters, analysis, { includeAdminContent });
    const exactTokenRows = await queryExactTokenRows(env, filters, analysis, { includeAdminContent });
    const prefixRows = await queryPrefixRows(env, filters, analysis, { includeAdminContent });
    const typoCandidates = shouldRunTypoSearch
      ? await collectTypoCandidates(env, filters, analysis, { includeAdminContent })
      : [];
    const fuzzyRows = shouldRunTypoSearch
      ? await queryFuzzyRows(env, filters, analysis, typoCandidates, { includeAdminContent })
      : [];
    const didYouMean = shouldRunTypoSearch
      ? await filterDidYouMeanQueries(
          env,
          filters,
          buildDidYouMeanQueries(rawQuery, analysis, typoCandidates),
          { includeAdminContent }
        )
      : [];

    const candidateMap = new Map();
    mergeCandidateMap(candidateMap, exactPhraseRows, "exact_phrase");
    mergeCandidateMap(candidateMap, exactTokenRows, "exact_tokens");
    mergeCandidateMap(candidateMap, prefixRows, "prefix");
    mergeCandidateMap(candidateMap, fuzzyRows, "fuzzy");

    const songRows = await fetchCandidateSongRows(env, Array.from(candidateMap.keys()));
    const items = [];
    for (const row of songRows) {
      const candidate = candidateMap.get(String(row?.id || "")) || { fields: { title: new Set(), subtitle: new Set(), lyrics: new Set() } };
      const matchMeta = computeMatchMetadata(row, analysis, candidate.fields || {});
      if (matchMeta.score <= 0 && !(matchMeta.match_reasons || []).length) continue;
      const matchedVersionId = chooseMatchedVersionId(row, analysis, candidate.fields || {});
      items.push({
        ...row,
        matched_version_id: matchedVersionId,
        snippet: buildSnippet(resolveSnippetSong(row, matchedVersionId), analysis.tokens),
        ...matchMeta,
        _score: matchMeta.score,
      });
    }

    if (!items.length) {
      const fallbackRows = await queryDirectScanRows(env, filters, analysis, { includeAdminContent });
      const versionsBySongId = await fetchSongVersionsBySongIds(env, fallbackRows.map((row) => row?.id));
      const rankedRows = rankSearchCandidatesForQuery(
        rawQuery,
        fallbackRows.map((row) => ({
          ...row,
          __search_versions: versionsBySongId.get(String(row?.id || "").trim()) || [],
        }))
      ).map((row) => {
        const matchedVersionId = chooseMatchedVersionId(row, analysis, {});
        return {
          ...row,
          matched_version_id: matchedVersionId,
          snippet: buildSnippet(resolveSnippetSong(row, matchedVersionId), analysis.tokens),
        };
      });
      return finalizeSearchResponseFromItems(rawQuery, analysis, rankedRows, page, {
        did_you_mean: didYouMean,
        query_analysis: {
          normalized: analysis.normalized,
          corrected_tokens: didYouMean[0]?.replaced_tokens || [],
          literal_hits: {
            phrase: exactPhraseRows.length,
            tokens: exactTokenRows.length,
            prefix: prefixRows.length,
            fuzzy: fuzzyRows.length,
          },
        },
        search_mode: rankedRows.length > 0 ? "hybrid" : (didYouMean.length ? "did_you_mean" : "empty"),
        search_notice: rankedRows.length > 0 ? "direct_scan_no_index_hits" : undefined,
      });
    }

    const response = finalizeSearchResponseFromItems(rawQuery, analysis, items, page, {
      did_you_mean: didYouMean,
      query_analysis: {
        normalized: analysis.normalized,
        corrected_tokens: didYouMean[0]?.replaced_tokens || [],
        literal_hits: {
          phrase: exactPhraseRows.length,
          tokens: exactTokenRows.length,
          prefix: prefixRows.length,
          fuzzy: fuzzyRows.length,
        },
      },
      search_mode: items.length > 0 ? "hybrid" : (didYouMean.length ? "did_you_mean" : "empty"),
    });
    return response;
  } catch (cause) {
    console.warn("[song-search] indexed search failed, falling back to direct scan:", cause?.message || cause);
    try {
      const fallbackRows = await queryDirectScanRows(env, filters, analysis, { includeAdminContent });
      const versionsBySongId = await fetchSongVersionsBySongIds(env, fallbackRows.map((row) => row?.id));
      const rankedRows = rankSearchCandidatesForQuery(
        rawQuery,
        fallbackRows.map((row) => ({
          ...row,
          __search_versions: versionsBySongId.get(String(row?.id || "").trim()) || [],
        }))
      ).map((row) => {
        const matchedVersionId = chooseMatchedVersionId(row, analysis, {});
        return {
          ...row,
          matched_version_id: matchedVersionId,
          snippet: buildSnippet(resolveSnippetSong(row, matchedVersionId), analysis.tokens),
        };
      });
      return finalizeSearchResponseFromItems(rawQuery, analysis, rankedRows, page, {
        search_notice: "direct_scan_fallback",
      });
    } catch (fallbackCause) {
      console.error("[song-search] direct scan fallback failed:", fallbackCause?.message || fallbackCause);
      return buildEmptySearchResponse(analysis, page, {
        search_notice: "temporary_unavailable",
      });
    }
  }
}
