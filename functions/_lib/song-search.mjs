import { dbAll, dbGet, dbRun } from "./db.js";

export const SEARCH_INDEX_SCHEMA_MARKER_KEY = "schema.search.version";
export const SEARCH_INDEX_SCHEMA_MARKER_VALUE = "2026-03-14-search-v1";

const SEARCH_FIELDS = ["title", "subtitle", "lyrics"];
const MAX_QUERY_TOKENS = 8;
const MAX_DELETE_DISTANCE = 2;
const MIN_INDEX_TERM_LEN = 2;
const SEARCH_PAGE_SIZE = 6;
const MAX_DID_YOU_MEAN = 3;
const MAX_CANDIDATE_TERMS_PER_TOKEN = 8;
const MAX_QUERY_TERMS_FOR_FUZZY = 6;

function unique(values = []) {
  return Array.from(new Set(values.filter(Boolean)));
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

function buildFieldTextMap(song = {}) {
  return {
    title: String(song?.title || ""),
    subtitle: String(song?.subtitle || ""),
    lyrics: String(song?.lyrics || ""),
  };
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
  for (const termNorm of uniqueTerms) {
    const aggregate = await dbGet(
      env,
      `SELECT
         MIN(term_raw) AS display_term,
         COUNT(DISTINCT song_id) AS song_count,
         SUM(CASE WHEN field='title' THEN 1 ELSE 0 END) AS title_hits,
         SUM(CASE WHEN field='subtitle' THEN 1 ELSE 0 END) AS subtitle_hits,
         SUM(CASE WHEN field='lyrics' THEN 1 ELSE 0 END) AS lyrics_hits
       FROM song_search_terms
       WHERE term_norm=?`,
      [termNorm]
    );
    const songCount = Number(aggregate?.song_count || 0);
    await dbRun(env, `DELETE FROM song_search_deletes WHERE term_norm=?`, [termNorm]);
    if (!songCount) {
      await dbRun(env, `DELETE FROM song_search_vocab WHERE term_norm=?`, [termNorm]);
      continue;
    }
    await dbRun(
      env,
      `INSERT INTO song_search_vocab (
         term_norm, display_term, song_count, title_hits, subtitle_hits, lyrics_hits
       )
       VALUES (?, ?, ?, ?, ?, ?)
       ON CONFLICT(term_norm) DO UPDATE SET
         display_term=excluded.display_term,
         song_count=excluded.song_count,
         title_hits=excluded.title_hits,
         subtitle_hits=excluded.subtitle_hits,
         lyrics_hits=excluded.lyrics_hits`,
      [
        termNorm,
        String(aggregate?.display_term || termNorm),
        songCount,
        Number(aggregate?.title_hits || 0),
        Number(aggregate?.subtitle_hits || 0),
        Number(aggregate?.lyrics_hits || 0),
      ]
    );
    for (const deleteKey of generateDeleteKeys(termNorm, MAX_DELETE_DISTANCE)) {
      await dbRun(
        env,
        `INSERT OR IGNORE INTO song_search_deletes (delete_key, term_norm) VALUES (?, ?)`,
        [deleteKey, termNorm]
      );
    }
  }
}

export async function syncSongSearchIndex(env, song = {}) {
  const songId = String(song?.id || "").trim();
  if (!songId) return;
  const existingRows = await dbAll(env, `SELECT DISTINCT term_norm FROM song_search_terms WHERE song_id=?`, [songId]);
  const previousTerms = existingRows.map((row) => String(row?.term_norm || "").trim()).filter(Boolean);

  await dbRun(
    env,
    `INSERT OR REPLACE INTO songs_fts(song_id, title, lyrics) VALUES (?,?,?)`,
    [songId, String(song?.title || ""), String(song?.lyrics || "")]
  );

  await dbRun(env, `DELETE FROM song_search_terms WHERE song_id=?`, [songId]);
  const rows = buildSongSearchRows(song);
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
}

export async function deleteSongSearchIndex(env, songId) {
  const safeSongId = String(songId || "").trim();
  if (!safeSongId) return;
  const existingRows = await dbAll(env, `SELECT DISTINCT term_norm FROM song_search_terms WHERE song_id=?`, [safeSongId]);
  const previousTerms = existingRows.map((row) => String(row?.term_norm || "").trim()).filter(Boolean);
  await dbRun(env, `DELETE FROM songs_fts WHERE song_id=?`, [safeSongId]);
  await dbRun(env, `DELETE FROM song_search_terms WHERE song_id=?`, [safeSongId]);
  await recomputeSearchAuxiliaryForTerms(env, previousTerms);
}

export async function rebuildSongSearchIndex(env) {
  await dbRun(env, `DELETE FROM songs_fts`);
  await dbRun(env, `DELETE FROM song_search_terms`);
  await dbRun(env, `DELETE FROM song_search_vocab`);
  await dbRun(env, `DELETE FROM song_search_deletes`);

  const songs = await dbAll(env, `SELECT id, title, subtitle, lyrics FROM songs`);
  const vocabTerms = new Set();
  for (const song of songs) {
    await dbRun(
      env,
      `INSERT OR REPLACE INTO songs_fts(song_id, title, lyrics) VALUES (?,?,?)`,
      [String(song?.id || ""), String(song?.title || ""), String(song?.lyrics || "")]
    );
    const rows = buildSongSearchRows(song);
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
    where.push("lower(coalesce(s.period, '')) = ?");
    params.push(String(filters.period).toLowerCase());
  }
  if (filters.year) {
    where.push("trim(coalesce(s.year, '')) = ?");
    params.push(String(filters.year));
  }
  if (filters.performer) {
    where.push("lower(trim(coalesce(s.subtitle, ''))) = ?");
    params.push(String(filters.performer).toLowerCase());
  }
  if (filters.region) {
    where.push("lower(trim(coalesce(s.region, ''))) LIKE ?");
    params.push(`%${String(filters.region).toLowerCase()}%`);
  }
  if (filters.event) {
    where.push("lower(trim(coalesce(s.event, ''))) LIKE ?");
    params.push(`%${String(filters.event).toLowerCase()}%`);
  }
  if (filters.theme) {
    where.push("lower(trim(coalesce(s.theme, ''))) LIKE ?");
    params.push(`%${String(filters.theme).toLowerCase()}%`);
  }
  if (filters.verified) where.push("coalesce(s.verified, 0) = 1");
  if (filters.recent) where.push("datetime(s.created_at) >= datetime('now','-30 day')");
  if (filters.multiVersions) where.push("coalesce(vc.version_rows, 0) >= 1");
  return { where, params };
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

function buildSnippet(song = {}, queryTokens = []) {
  const lyrics = String(song?.lyrics || "").replace(/\r\n?/g, "\n");
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
  let bestDistance = Number.POSITIVE_INFINITY;

  for (const token of queryTokens) {
    const value = token.normalized;
    if (exactSet.has(value)) {
      exact += 1;
      bestDistance = 0;
      continue;
    }
    const prefixHit = sequence.some((term) => term.startsWith(value) && value.length >= 2);
    if (prefixHit) {
      prefix += 1;
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
      bestDistance = Math.min(bestDistance, localBest);
    }
  }

  return {
    normalizedField,
    exact,
    prefix,
    fuzzy,
    bestDistance: Number.isFinite(bestDistance) ? bestDistance : MAX_DELETE_DISTANCE + 1,
    sequenceBonus: computeSequenceBonus(sequence, queryTokens.map((token) => token.normalized)),
    phrase: queryTokens.length > 1 && normalizedField.includes(queryTokens.map((token) => token.normalized).join(" ")),
  };
}

function bucketOrder(bucket = "") {
  if (bucket === "exact") return 0;
  if (bucket === "partial") return 1;
  if (bucket === "text") return 2;
  return 3;
}

function deriveMatchBucket(match = {}) {
  if (match.title.phrase || match.lyrics.phrase || match.title.exact === match.queryLength || match.lyrics.exact === match.queryLength) {
    return "exact";
  }
  if (match.title.prefix > 0 || match.subtitle.prefix > 0) return "partial";
  if (match.lyrics.exact > 0 || match.lyrics.prefix > 0) return "text";
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
  const fieldSequenceTokens = fieldSequence(fieldText);
  const fieldCoverage = Number(fieldMatch.exact || 0) + Number(fieldMatch.prefix || 0) + Number(fieldMatch.fuzzy || 0);
  const fieldDistance = wholeFieldDistance(wholeQuery, fieldText);
  const extraTokens = Math.max(0, fieldSequenceTokens.length - (String(wholeQuery || "").split(" ").filter(Boolean).length || 0));
  let closeness = 0;

  if (fieldMatch.normalizedField === wholeQuery) closeness += 420;
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
  const titleTerms = mergeFieldTerms(song?.title || "", candidateTermsByField.title);
  const subtitleTerms = mergeFieldTerms(song?.subtitle || "", candidateTermsByField.subtitle);
  const lyricsTerms = mergeFieldTerms(song?.lyrics || "", candidateTermsByField.lyrics);
  const title = computeFieldMatch(song?.title || "", queryTokens, titleTerms);
  const subtitle = computeFieldMatch(song?.subtitle || "", queryTokens, subtitleTerms);
  const lyrics = computeFieldMatch(song?.lyrics || "", queryTokens, lyricsTerms);
  const queryLength = queryTokens.length;
  const titleSignals = computeTitleIntentSignals(title, wholeQuery, song?.title || "");
  const lyricsSignals = computeTitleIntentSignals(lyrics, wholeQuery, song?.lyrics || "");
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

  const match = { title, subtitle, lyrics, queryLength };
  return {
    score,
    primary_lane: titleSignals.coverage > 0 ? "title" : (lyricsSignals.coverage > 0 ? "lyrics" : "other"),
    title_closeness: titleSignals.closeness,
    title_distance: titleSignals.distance,
    title_extra_tokens: titleSignals.extraTokens,
    lyrics_closeness: lyricsSignals.closeness,
    match_bucket: deriveMatchBucket(match),
    match_reasons: deriveMatchReasons(match),
  };
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
  return dbAll(
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
       coalesce(s.verified, 0) AS verified,
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

function sortSearchRows(items = []) {
  return [...items].sort((left, right) => {
    const leftLane = left.primary_lane === "title" ? 0 : left.primary_lane === "lyrics" ? 1 : 2;
    const rightLane = right.primary_lane === "title" ? 0 : right.primary_lane === "lyrics" ? 1 : 2;
    if (leftLane !== rightLane) return leftLane - rightLane;
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
    if (bucketOrder(left.match_bucket) !== bucketOrder(right.match_bucket)) {
      return bucketOrder(left.match_bucket) - bucketOrder(right.match_bucket);
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
  return sortSearchRows(ranked);
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
    return {
      items: [],
      total: 0,
      page: 1,
      pages: 1,
      did_you_mean: [],
      bucket_counts: { exact: 0, partial: 0, text: 0, fuzzy: 0 },
      query_analysis: {
        normalized: analysis.normalized,
        corrected_tokens: [],
        literal_hits: { phrase: 0, tokens: 0, prefix: 0, fuzzy: 0 },
      },
      suggestions: [],
      suggestions_total: 0,
      search_mode: "empty",
    };
  }

  const exactPhraseRows = await queryExactPhraseRows(env, filters, analysis, { includeAdminContent });
  const exactTokenRows = await queryExactTokenRows(env, filters, analysis, { includeAdminContent });
  const prefixRows = await queryPrefixRows(env, filters, analysis, { includeAdminContent });
  const typoCandidates = await collectTypoCandidates(env, filters, analysis, { includeAdminContent });
  const fuzzyRows = await queryFuzzyRows(env, filters, analysis, typoCandidates, { includeAdminContent });
  const didYouMean = buildDidYouMeanQueries(rawQuery, analysis, typoCandidates);

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
    items.push({
      ...row,
      snippet: buildSnippet(row, analysis.tokens),
      match_bucket: matchMeta.match_bucket,
      match_reasons: matchMeta.match_reasons,
      _score: matchMeta.score,
    });
  }

  const deduped = new Map();
  for (const item of items) {
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

  const sorted = sortSearchRows(Array.from(deduped.values()));
  const bucketCounts = { exact: 0, partial: 0, text: 0, fuzzy: 0 };
  sorted.forEach((item) => {
    const bucket = String(item?.match_bucket || "fuzzy");
    if (Object.prototype.hasOwnProperty.call(bucketCounts, bucket)) bucketCounts[bucket] += 1;
  });
  const total = sorted.length;
  const pages = Math.max(1, Math.ceil(total / SEARCH_PAGE_SIZE));
  const safePage = Math.min(page, pages);
  const offset = (safePage - 1) * SEARCH_PAGE_SIZE;
  const pageItems = sorted.slice(offset, offset + SEARCH_PAGE_SIZE).map((item) => {
    const {
      _score,
      primary_lane,
      title_closeness,
      title_distance,
      title_extra_tokens,
      lyrics_closeness,
      ...rest
    } = item;
    return rest;
  });

  return {
    items: pageItems,
    total,
    page: safePage,
    pages,
    did_you_mean: didYouMean,
    bucket_counts: bucketCounts,
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
    suggestions: [],
    suggestions_total: 0,
    search_mode: total > 0 ? "hybrid" : (didYouMean.length ? "did_you_mean" : "empty"),
  };
}
