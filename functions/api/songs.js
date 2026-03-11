import { json } from "../_lib/utils.js";
import { dbAll, dbGet, getOptionalUserAccess, canViewAdminContent } from "../_lib/db.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { normalizeSongCountry, normalizeSongLanguage, normalizeSongPeriod } from "../../shared/song-catalogs.js";

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
    const tokens = q
      .split(/\s+/)
      .filter(Boolean)
      .slice(0, 8)
      .map((t) => t.replace(/["']/g, ""));
    if (!tokens.length) return json({ items: [], total: 0, page: 1, pages: 1, search_mode: "exact", suggestions: [], suggestions_total: 0 });

    const cleanedPhrase = tokens.join(" ").trim();
    const phraseQuery = cleanedPhrase ? `"${cleanedPhrase}"` : "";
    const strictTokensQuery = tokens.join(" AND ");
    const fuzzyQuery = tokens.map((t) => `${t}*`).join(" OR ");

    const { where, params } = buildSqlFilters(filters, { includeAdminContent });
    if (filters.multiVersions) where.push("coalesce(vc.version_rows, 0) >= 1");
    const fromSql = `
      FROM songs_fts
      JOIN songs s ON s.id = songs_fts.song_id
      ${versionCountsJoinSql}
    `;
    const runFts = async (matchQuery, mode, titleMatchQuery) => {
      const whereWithMatch = [...where, "songs_fts MATCH ?"];
      const whereSql = `WHERE ${whereWithMatch.join(" AND ")}`;
      const fullParams = [...params, matchQuery];
      const dedupedFromSql = `
        ${fromSql}
        ${whereSql}
      `;
      const totalRow = await dbGet(
        env,
        `SELECT COUNT(DISTINCT ${SONG_DUPLICATE_KEY_SQL}) AS c ${dedupedFromSql}`,
        fullParams
      );
      const total = Number(totalRow?.c || 0);
      if (!total) return null;
      const pages = Math.max(1, Math.ceil(total / per));
      const safePage = Math.min(page, pages);
      const offset = (safePage - 1) * per;
      const items = await dbAll(
        env,
         `WITH matched AS (
           SELECT
             s.id AS song_id,
             s.title,
             s.created_at,
             MIN(songs_fts.rowid) AS pick_rowid,
             coalesce(vc.version_rows, 0) AS version_rows,
             ${SONG_DUPLICATE_KEY_SQL} AS duplicate_key
           ${fromSql}
           ${whereSql}
           GROUP BY s.id
         ),
         title_hits AS (
           SELECT DISTINCT s.id AS song_id
           ${fromSql}
           WHERE ${where.join(" AND ")} AND songs_fts MATCH ?
         ),
         ranked AS (
           SELECT
             matched.*,
             CASE WHEN title_hits.song_id IS NULL THEN 0 ELSE 1 END AS title_match,
             ROW_NUMBER() OVER (
               PARTITION BY matched.duplicate_key
               ORDER BY matched.version_rows DESC, datetime(matched.created_at) DESC, matched.song_id ASC
             ) AS duplicate_rank
           FROM matched
           LEFT JOIN title_hits ON title_hits.song_id = matched.song_id
         )
         SELECT
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
           snippet(songs_fts, 1, '', '', '...', 12) AS snippet,
           ranked.title_match,
           ranked.version_rows
         FROM ranked
         JOIN songs s ON s.id = ranked.song_id
         JOIN songs_fts ON songs_fts.rowid = ranked.pick_rowid
         WHERE ranked.duplicate_rank = 1
         ORDER BY ranked.title_match DESC, ranked.version_rows DESC, datetime(s.created_at) DESC, s.title ASC
          LIMIT ? OFFSET ?`,
        [...fullParams, titleMatchQuery, per, offset]
      );
      return { items, total, page: safePage, pages, mode };
    };

    const exactPhrase = phraseQuery ? await runFts(phraseQuery, "exact_phrase", `title:"${cleanedPhrase}"`) : null;
    if (exactPhrase) {
      return json({
        items: exactPhrase.items,
        total: exactPhrase.total,
        page: exactPhrase.page,
        pages: exactPhrase.pages,
        search_mode: "exact",
        suggestions: [],
        suggestions_total: 0,
      });
    }

    const exactTokens = strictTokensQuery ? await runFts(strictTokensQuery, "exact_tokens", `title:(${strictTokensQuery})`) : null;
    if (exactTokens) {
      return json({
        items: exactTokens.items,
        total: exactTokens.total,
        page: exactTokens.page,
        pages: exactTokens.pages,
        search_mode: "exact",
        suggestions: [],
        suggestions_total: 0,
      });
    }

    const fuzzy = await runFts(fuzzyQuery, "fuzzy", `title:(${fuzzyQuery})`);
    const suggestionItems = fuzzy?.items || [];
    const suggestionTotal = Number(fuzzy?.total || 0);

    return json({
      items: [],
      total: 0,
      page: 1,
      pages: 1,
      search_mode: "suggestions",
      suggestions: suggestionItems,
      suggestions_total: suggestionTotal,
    });
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

  return json({ items, total, page: safePage, pages, search_mode: "browse", suggestions: [], suggestions_total: 0 });
}
