import { json } from "../_lib/utils.js";
import { dbAll, dbGet, getOptionalUserAccess, canViewAdminContent } from "../_lib/db.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { normalizeSongCountry, normalizeSongLanguage, normalizeSongPeriod } from "../../shared/song-catalogs.js";
import {
  searchSongs,
  normalizeSearchText,
  tokenizeSearchText,
  damerauLevenshtein,
} from "../_lib/song-search.mjs";

const GERMAN_COLLABORATORS_FILTER_VALUES = ["german_collaborators", "latvian_ss_legion", "estonian_ss_division"];
const SONGS_PAGE_SIZE = 6;
const SONG_DUPLICATE_KEY_SQL = `
  lower(trim(coalesce(s.title, ''))) || '|' ||
  lower(trim(coalesce(s.subtitle, ''))) || '|' ||
  lower(trim(coalesce(s.lang, ''))) || '|' ||
  lower(trim(coalesce(s.country, ''))) || '|' ||
  lower(trim(coalesce(s.period, ''))) || '|' ||
  trim(coalesce(s.year, '')) || '|' ||
  lower(trim(coalesce(s.region, ''))) || '|' ||
  lower(trim(coalesce(s.event, ''))) || '|' ||
  lower(trim(coalesce(s.theme, ''))) || '|' ||
  replace(coalesce(s.lyrics, ''), char(13), '')
`;

function clamp(n, a, b) {
  n = parseInt(n || "1", 10);
  if (Number.isNaN(n)) n = 1;
  return Math.max(a, Math.min(b, n));
}

function buildVisibleFieldSignals(text = "", queryTokens = []) {
  const normalizedText = normalizeSearchText(text);
  const fieldTokens = tokenizeSearchText(text, { maxTokens: 5000, minLen: 2 }).map((item) => item.normalized);
  const tokenSet = new Set(fieldTokens);
  let exact = 0;
  let prefix = 0;
  let fuzzy = 0;
  for (const token of queryTokens) {
    if (tokenSet.has(token)) {
      exact += 1;
      continue;
    }
    if (fieldTokens.some((value) => value.startsWith(token) && token.length >= 2)) {
      prefix += 1;
      continue;
    }
    const fuzzyHit = fieldTokens.some((value) => {
      if (Math.abs(value.length - token.length) > 2) return false;
      return damerauLevenshtein(token, value, 2) <= 2;
    });
    if (fuzzyHit) fuzzy += 1;
  }
  return {
    normalizedText,
    tokens: fieldTokens,
    coverage: exact + prefix + fuzzy,
    exact,
    prefix,
    fuzzy,
  };
}

function rerankVisibleSearchItems(items = [], rawQuery = "") {
  const normalized = normalizeSearchText(rawQuery);
  const queryTokens = tokenizeSearchText(rawQuery, { maxTokens: 8, minLen: 2 }).map((item) => item.normalized);
  if (!normalized || !queryTokens.length || !Array.isArray(items) || items.length < 2) return items;

  return items
    .map((item, index) => {
      const titleSignals = buildVisibleFieldSignals(item?.title || "", queryTokens);
      const textSignals = buildVisibleFieldSignals(
        `${String(item?.subtitle || "")}\n${String(item?.snippet || "")}`,
        queryTokens
      );
      const titleDistance = titleSignals.normalizedText
        ? damerauLevenshtein(
          normalized,
          titleSignals.normalizedText,
          Math.max(4, Math.min(24, Math.max(normalized.length, titleSignals.normalizedText.length)))
        )
        : Number.POSITIVE_INFINITY;
      const titleExtraTokens = Math.max(0, titleSignals.tokens.length - queryTokens.length);
      const lane = titleSignals.coverage > 0 ? 0 : textSignals.coverage > 0 ? 1 : 2;
      return {
        item,
        index,
        lane,
        titleDistance,
        titleExtraTokens,
        titleCoverage: titleSignals.coverage,
        titleExact: titleSignals.exact,
        textCoverage: textSignals.coverage,
      };
    })
    .sort((left, right) => {
      if (left.lane !== right.lane) return left.lane - right.lane;
      if (left.lane === 0 && left.titleDistance !== right.titleDistance) return left.titleDistance - right.titleDistance;
      if (left.lane === 0 && left.titleExtraTokens !== right.titleExtraTokens) return left.titleExtraTokens - right.titleExtraTokens;
      if (right.titleCoverage !== left.titleCoverage) return right.titleCoverage - left.titleCoverage;
      if (right.titleExact !== left.titleExact) return right.titleExact - left.titleExact;
      if (right.textCoverage !== left.textCoverage) return right.textCoverage - left.textCoverage;
      return left.index - right.index;
    })
    .map((entry) => entry.item);
}

function buildSqlFilters(filters = {}, options = {}) {
  const where = ["s.status='published'"];
  const params = [];
  if (!options.includeAdminContent) {
    where.push("coalesce(s.is_admin_content, 0) = 0");
  }

  if (filters.lang) {
    where.push("lower(coalesce(s.lang, '')) = ?");
    params.push(filters.lang);
  }
  if (filters.country) {
    if (filters.country === "german_collaborators") {
      where.push(`lower(coalesce(s.country, '')) IN (${GERMAN_COLLABORATORS_FILTER_VALUES.map(() => "?").join(", ")})`);
      params.push(...GERMAN_COLLABORATORS_FILTER_VALUES);
    } else {
      where.push("lower(coalesce(s.country, '')) = ?");
      params.push(filters.country);
    }
  }
  if (filters.period) {
    where.push("lower(coalesce(s.period, '')) = ?");
    params.push(filters.period);
  }
  if (filters.year) {
    where.push("trim(coalesce(s.year, '')) = ?");
    params.push(filters.year);
  }
  if (filters.performer) {
    where.push("lower(trim(coalesce(s.subtitle, ''))) = ?");
    params.push(filters.performer.toLowerCase());
  }
  if (filters.region) {
    where.push("lower(trim(coalesce(s.region, ''))) LIKE ?");
    params.push(`%${filters.region.toLowerCase()}%`);
  }
  if (filters.event) {
    where.push("lower(trim(coalesce(s.event, ''))) LIKE ?");
    params.push(`%${filters.event.toLowerCase()}%`);
  }
  if (filters.theme) {
    where.push("lower(trim(coalesce(s.theme, ''))) LIKE ?");
    params.push(`%${filters.theme.toLowerCase()}%`);
  }
  if (filters.verified) {
    where.push("coalesce(s.verified, 0)=1");
  }
  if (filters.recent) {
    where.push("datetime(s.created_at) >= datetime('now','-30 day')");
  }

  return { where, params };
}

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const access = await getOptionalUserAccess(env, request);
  const includeAdminContent = canViewAdminContent(access);
  const url = new URL(request.url);
  const q = (url.searchParams.get("q") || "").trim();
  const rawLang = (url.searchParams.get("lang") || "").trim();
  const rawCountry = (url.searchParams.get("country") || "").trim();
  const rawPeriod = (url.searchParams.get("period") || "").trim();
  const rawPerformer = (url.searchParams.get("performer") || "").trim();
  const rawYear = (url.searchParams.get("year") || "").trim();
  const rawRegion = (url.searchParams.get("region") || "").trim();
  const rawEvent = (url.searchParams.get("event") || "").trim();
  const rawTheme = (url.searchParams.get("theme") || "").trim();
  const rawVerified = (url.searchParams.get("verified") || "").trim();
  const rawRecent = (url.searchParams.get("recent") || "").trim();
  const rawMultiVersions = (url.searchParams.get("multi_versions") || "").trim();
  const lang = rawLang ? (normalizeSongLanguage(rawLang) || "") : "";
  const country = rawCountry ? (normalizeSongCountry(rawCountry) || "") : "";
  const period = rawPeriod ? (normalizeSongPeriod(rawPeriod) || "") : "";
  const performer = rawPerformer;
  const year = rawYear;
  const region = rawRegion;
  const event = rawEvent;
  const theme = rawTheme;
  const verified = rawVerified === "1";
  const recent = rawRecent === "1";
  const multiVersions = rawMultiVersions === "1";
  const page = clamp(url.searchParams.get("page"), 1, 9999);
  const per = SONGS_PAGE_SIZE;

  if ((rawLang && !lang) || (rawCountry && !country) || (rawPeriod && !period)) {
    return json({ items: [], total: 0, page, pages: 1 });
  }

  const filters = { lang, country, period, performer, year, region, event, theme, verified, recent, multiVersions };
  const versionCountsJoinSql = `
    LEFT JOIN (
      SELECT song_id, COUNT(*) AS version_rows
      FROM song_versions
      GROUP BY song_id
    ) vc ON vc.song_id = s.id
  `;

  if (q) {
    const countryValues = country === "german_collaborators"
      ? [...GERMAN_COLLABORATORS_FILTER_VALUES]
      : country
        ? [country]
        : [];
    try {
      const out = await searchSongs(env, {
        q,
        page,
        includeAdminContent,
        filters: {
          lang,
          countryValues,
          period,
          performer,
          year,
          region,
          event,
          theme,
          verified,
          recent,
          multiVersions,
        },
      });
      out.items = rerankVisibleSearchItems(out.items, q);
      return json(out);
    } catch (cause) {
      console.error("[songs/search] fallback empty result:", {
        message: String(cause?.message || cause || ""),
        query: q,
      });
      return json({
        items: [],
        total: 0,
        page: 1,
        pages: 1,
        search_mode: "empty",
        suggestions: [],
        suggestions_total: 0,
        did_you_mean: [],
        bucket_counts: { exact: 0, partial: 0, text: 0, fuzzy: 0 },
        query_analysis: {
          normalized: normalizeSearchText(q),
          corrected_tokens: [],
          literal_hits: { phrase: 0, tokens: 0, prefix: 0, fuzzy: 0 },
        },
      });
    }
  }

  const { where, params } = buildSqlFilters(filters, { includeAdminContent });
  if (filters.multiVersions) where.push("coalesce(vc.version_rows, 0) >= 1");
  const whereSql = `WHERE ${where.join(" AND ")}`;

  const totalRow = await dbGet(
    env,
    `SELECT COUNT(DISTINCT ${SONG_DUPLICATE_KEY_SQL}) AS c
     FROM songs s
     ${versionCountsJoinSql}
     ${whereSql}`,
    params
  );
  const total = Number(totalRow?.c || 0);
  const pages = Math.max(1, Math.ceil(total / per));
  const safePage = Math.min(page, pages);
  const offset = (safePage - 1) * per;

  const items = await dbAll(
    env,
    `WITH filtered AS (
       SELECT
         s.id,
         s.title,
         s.created_at,
         coalesce(vc.version_rows, 0) AS version_rows,
         ${SONG_DUPLICATE_KEY_SQL} AS duplicate_key
       FROM songs s
       ${versionCountsJoinSql}
       ${whereSql}
     ),
     ranked AS (
       SELECT
         filtered.*,
         ROW_NUMBER() OVER (
           PARTITION BY filtered.duplicate_key
           ORDER BY filtered.version_rows DESC, datetime(filtered.created_at) DESC, filtered.id ASC
         ) AS duplicate_rank
       FROM filtered
     )
     SELECT s.id, s.title, s.subtitle, s.lyrics, s.lang, s.country, s.period, s.region, s.event, s.theme, coalesce(s.verified, 0) AS verified, s.year, s.created_at,
            '' AS snippet, ranked.version_rows
     FROM ranked
     JOIN songs s ON s.id = ranked.id
     WHERE ranked.duplicate_rank = 1
     ORDER BY ${filters.multiVersions ? "ranked.version_rows DESC, s.title ASC" : recent ? "datetime(s.created_at) DESC, s.title ASC" : "s.title ASC"}
     LIMIT ? OFFSET ?`,
    [...params, per, offset]
  );

  return json({
    items,
    total,
    page: safePage,
    pages,
    search_mode: "browse",
    suggestions: [],
    suggestions_total: 0,
    did_you_mean: [],
    bucket_counts: { exact: 0, partial: 0, text: 0, fuzzy: 0 },
    query_analysis: {
      normalized: "",
      corrected_tokens: [],
      literal_hits: { phrase: 0, tokens: 0, prefix: 0, fuzzy: 0 },
    },
  });
}
