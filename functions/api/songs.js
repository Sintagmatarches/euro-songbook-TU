import { json } from "../_lib/utils.js";
import { dbAll, dbGet, getOptionalUserAccess, canViewAdminContent } from "../_lib/db.js";
import { SONG_DUPLICATE_KEY_SQL } from "../_lib/song-dedupe.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { readRuntimeJsonCache, writeRuntimeJsonCache } from "../_lib/runtime-cache.js";
import {
  getCountryFilterValues,
  getPeriodFilterValues,
  getPeriodMeta,
  normalizeSongCountry,
  normalizeSongLanguage,
  normalizeSongPeriod,
} from "../../shared/song-catalogs.js";
import {
  buildCountryDescendantMap,
  buildEntityDescendantMap,
  getEntityCountryNameIndex,
  getEntityLinks,
} from "../../shared/entity-graph.js";
import {
  searchSongs,
  normalizeSearchText,
} from "../_lib/song-search.mjs";

const GERMAN_COLLABORATORS_FILTER_VALUES = ["german_collaborators", "latvian_ss_legion", "estonian_ss_division"];
const SONGS_PAGE_SIZE = 10;
const BROWSE_CACHE_MAX_AGE_MS = 10 * 60 * 1000;
const PUBLIC_BROWSE_CACHE_HEADERS = {
  "Cache-Control": "public, max-age=120, s-maxage=600, stale-while-revalidate=3600",
};
const ENTITY_LINKS = getEntityLinks();
const COUNTRY_DESCENDANTS = buildCountryDescendantMap(ENTITY_LINKS);
const ENTITY_DESCENDANTS = buildEntityDescendantMap(ENTITY_LINKS);
const ENTITY_NAME_TO_COUNTRY = getEntityCountryNameIndex(ENTITY_LINKS).nameToCountry;

function expandCountryFilter(country) {
  const normalized = normalizeSongCountry(country || "");
  if (!normalized) return [];
  if (normalized === "german_collaborators") return [...GERMAN_COLLABORATORS_FILTER_VALUES];
  const values = new Set(getCountryFilterValues(normalized));
  for (const descendant of COUNTRY_DESCENDANTS.get(normalized) || []) {
    getCountryFilterValues(descendant).forEach((value) => values.add(value));
  }
  return Array.from(values);
}

function expandEntityFilter(entityName) {
  const name = String(entityName || "").trim();
  if (!name) return [];
  const countries = new Set();
  const addName = (entryName) => {
    const country = ENTITY_NAME_TO_COUNTRY.get(String(entryName || "").trim());
    if (!country) return;
    expandCountryFilter(country).forEach((value) => countries.add(value));
  };
  addName(name);
  for (const descendantName of ENTITY_DESCENDANTS.get(name) || []) addName(descendantName);
  return Array.from(countries);
}

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

function buildSearchFallbackResponse(query = "", page = 1, notice = "temporary_unavailable") {
  return {
    items: [],
    total: 0,
    page: Math.max(1, Number(page || 1) || 1),
    pages: 1,
    search_mode: "empty",
    search_notice: notice,
    suggestions: [],
    suggestions_total: 0,
    did_you_mean: [],
    bucket_counts: { exact_title: 0, exact: 0, fuzzy: 0, partial: 0, text: 0 },
    query_analysis: {
      normalized: normalizeSearchText(query),
      corrected_tokens: [],
      literal_hits: { phrase: 0, tokens: 0, prefix: 0, fuzzy: 0 },
    },
  };
}

function clamp(n, a, b) {
  n = parseInt(n || "1", 10);
  if (Number.isNaN(n)) n = 1;
  return Math.max(a, Math.min(b, n));
}

function buildBrowseCacheKey(url, includeAdminContent) {
  const entries = Array.from(url.searchParams.entries())
    .filter(([key]) => key !== "q")
    .sort((a, b) => a[0].localeCompare(b[0]) || a[1].localeCompare(b[1]));
  const normalized = new URLSearchParams(entries).toString();
  return `songs:browse:${includeAdminContent ? "admin" : "public"}:${normalized}`;
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
  if (Array.isArray(filters.countryValues) && filters.countryValues.length) {
    where.push(`lower(coalesce(s.country, '')) IN (${filters.countryValues.map(() => "?").join(", ")})`);
    params.push(...filters.countryValues);
  } else if (filters.country) {
    const countryValues = expandCountryFilter(filters.country);
    where.push(`lower(coalesce(s.country, '')) IN (${countryValues.map(() => "?").join(", ")})`);
    params.push(...countryValues);
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
    params.push(filters.year);
  }
  if (filters.performer) {
    where.push("lower(trim(coalesce(s.subtitle, ''))) LIKE ?");
    params.push(`%${filters.performer.toLowerCase()}%`);
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
  if (filters.verified) {
    where.push("coalesce(s.verified, 0) = 1");
  }
  if (filters.recent) {
    where.push("datetime(s.created_at) >= datetime('now','-30 day')");
  }

  return { where, params };
}

function buildEffectivePeriodSql(alias, period) {
  const rawPeriod = String(period || "").trim().toLowerCase();
  const meta = getPeriodMeta(period);
  const periodValues = getPeriodFilterValues(period).map((value) => String(value).toLowerCase());
  if (!meta && !periodValues.length) {
    return rawPeriod
      ? { sql: `lower(coalesce(${alias}.period, '')) = ?`, params: [rawPeriod] }
      : null;
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

  if (!parts.length) return null;
  return {
    sql: `(${parts.join(" OR ")})`,
    params,
  };
}

export async function onRequestGet({ env, request }) {
  const url = new URL(request.url);
  const q = (url.searchParams.get("q") || "").trim();
  const page = clamp(url.searchParams.get("page"), 1, 9999);
  try {
    await ensureSchemaAndSeed(env);
    const access = await getOptionalUserAccess(env, request);
    const includeAdminContent = canViewAdminContent(access);
    const rawLang = (url.searchParams.get("lang") || "").trim();
    const rawEntity = (url.searchParams.get("entity") || "").trim();
    const rawCountry = (url.searchParams.get("country") || "").trim();
    const rawCountryExact = (url.searchParams.get("country_exact") || "").trim();
    const rawPeriod = (url.searchParams.get("period") || "").trim();
    const rawPerformer = (url.searchParams.get("performer") || "").trim();
    const rawWordsAuthor = (url.searchParams.get("words_author") || "").trim();
    const rawMusicAuthor = (url.searchParams.get("music_author") || "").trim();
    const rawYear = (url.searchParams.get("year") || "").trim();
    const rawVerified = (url.searchParams.get("verified") || "").trim();
      const rawRecent = (url.searchParams.get("recent") || "").trim();
      const rawMultiVersions = (url.searchParams.get("multi_versions") || "").trim();
      const lang = rawLang ? (normalizeSongLanguage(rawLang) || "") : "";
      const entityCountries = rawEntity ? expandEntityFilter(rawEntity) : [];
      const entityOwnCountry = rawEntity ? (ENTITY_NAME_TO_COUNTRY.get(rawEntity) || "") : "";
      const country = rawCountry ? (normalizeSongCountry(rawCountry) || "") : "";
      const countryExact = rawCountryExact === "1" || (!!country && !!entityOwnCountry && country === entityOwnCountry);
    const period = rawPeriod ? (normalizeSongPeriod(rawPeriod) || "") : "";
    const performer = rawPerformer;
    const wordsAuthor = rawWordsAuthor;
    const musicAuthor = rawMusicAuthor;
    const year = rawYear;
    const verified = rawVerified === "1";
    const recent = rawRecent === "1";
    const multiVersions = rawMultiVersions === "1";
    const per = SONGS_PAGE_SIZE;

    if ((rawLang && !lang) || (rawCountry && !country) || (rawPeriod && !period)) {
      return json({ items: [], total: 0, page, pages: 1 });
    }

    const filters = {
      lang,
      country,
      countryValues: country && countryExact ? [country] : (!country && entityCountries.length ? entityCountries : []),
      period,
      performer,
      wordsAuthor,
      musicAuthor,
      year,
      verified,
      recent,
      multiVersions,
    };
    const versionCountsJoinSql = `
      LEFT JOIN (
        SELECT song_id, COUNT(*) AS version_rows
        FROM song_versions
        GROUP BY song_id
      ) vc ON vc.song_id = s.id
    `;
    if (q) {
      const countryValues = country ? (countryExact ? [country] : expandCountryFilter(country)) : entityCountries;
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
            wordsAuthor,
            musicAuthor,
            year,
            verified,
            recent,
            multiVersions,
          },
        });
        return json(out);
      } catch (cause) {
        console.error("[songs/search] fallback empty result:", {
          message: String(cause?.message || cause || ""),
          query: q,
        });
        return json(buildSearchFallbackResponse(q, page));
      }
    }

    const browseCacheKey = buildBrowseCacheKey(url, includeAdminContent);
    const cachedBrowse = await readRuntimeJsonCache(env, browseCacheKey, { maxAgeMs: BROWSE_CACHE_MAX_AGE_MS });
    if (cachedBrowse) return json(cachedBrowse, 200, PUBLIC_BROWSE_CACHE_HEADERS);

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
          SELECT s.id, s.title, s.subtitle, coalesce(s.lyrics, '') AS lyrics, s.lang, s.country, s.period, s.region, s.event, s.theme, coalesce(s.verified, 0) AS verified, s.year, s.created_at,
               '' AS snippet, ranked.version_rows
          FROM ranked
          JOIN songs s ON s.id = ranked.id
         WHERE ranked.duplicate_rank = 1
        ORDER BY ${filters.multiVersions ? "ranked.version_rows DESC, s.title ASC" : recent ? "datetime(s.created_at) DESC, s.title ASC" : "s.title ASC"}
          LIMIT ? OFFSET ?`,
      [...params, per, offset]
    );

    const payload = {
      items,
      total,
      page: safePage,
      pages,
      search_mode: "browse",
      suggestions: [],
      suggestions_total: 0,
      did_you_mean: [],
      bucket_counts: { exact_title: 0, exact: 0, fuzzy: 0, partial: 0 },
      query_analysis: {
        normalized: "",
        corrected_tokens: [],
        literal_hits: { phrase: 0, tokens: 0, prefix: 0, fuzzy: 0 },
      },
    };
    await writeRuntimeJsonCache(env, browseCacheKey, payload);
    return json(payload, 200, PUBLIC_BROWSE_CACHE_HEADERS);
  } catch (cause) {
    if (q) {
      console.error("[songs/search] request failed before response:", {
        message: String(cause?.message || cause || ""),
        query: q,
      });
      return json(buildSearchFallbackResponse(q, page));
    }
    throw cause;
  }
}
