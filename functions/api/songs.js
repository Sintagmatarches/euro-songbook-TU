import { json } from "../_lib/utils.js";
import { dbAll, dbGet, getOptionalUserAccess, canViewAdminContent } from "../_lib/db.js";
import { SONG_DUPLICATE_KEY_SQL } from "../_lib/song-dedupe.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { normalizeSongCountry, normalizeSongLanguage, normalizeSongPeriod } from "../../shared/song-catalogs.js";
import {
  searchSongs,
  normalizeSearchText,
} from "../_lib/song-search.mjs";

const GERMAN_COLLABORATORS_FILTER_VALUES = ["german_collaborators", "latvian_ss_legion", "estonian_ss_division"];
const SONGS_PAGE_SIZE = 10;

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
    where.push("1=0");
  }
  if (filters.recent) {
    where.push("datetime(s.created_at) >= datetime('now','-30 day')");
  }

  return { where, params };
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
    const rawCountry = (url.searchParams.get("country") || "").trim();
    const rawPeriod = (url.searchParams.get("period") || "").trim();
    const rawPerformer = (url.searchParams.get("performer") || "").trim();
    const rawWordsAuthor = (url.searchParams.get("words_author") || "").trim();
    const rawMusicAuthor = (url.searchParams.get("music_author") || "").trim();
    const rawYear = (url.searchParams.get("year") || "").trim();
    const rawVerified = (url.searchParams.get("verified") || "").trim();
    const rawRecent = (url.searchParams.get("recent") || "").trim();
    const rawMultiVersions = (url.searchParams.get("multi_versions") || "").trim();
    const lang = rawLang ? (normalizeSongLanguage(rawLang) || "") : "";
    const country = rawCountry ? (normalizeSongCountry(rawCountry) || "") : "";
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

    const filters = { lang, country, period, performer, wordsAuthor, musicAuthor, year, verified, recent, multiVersions };
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
       SELECT s.id, s.title, s.subtitle, s.lyrics, s.lang, s.country, s.period, s.region, s.event, s.theme, 0 AS verified, s.year, s.created_at,
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
      bucket_counts: { exact_title: 0, exact: 0, fuzzy: 0, partial: 0 },
      query_analysis: {
        normalized: "",
        corrected_tokens: [],
        literal_hits: { phrase: 0, tokens: 0, prefix: 0, fuzzy: 0 },
      },
    });
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
