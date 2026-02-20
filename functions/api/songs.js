import { json } from "../_lib/utils.js";
import { dbAll, dbGet, getOptionalUserAccess, canViewAdminContent } from "../_lib/db.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { normalizeSongCountry, normalizeSongLanguage, normalizeSongPeriod } from "../../shared/song-catalogs.js";

const GERMAN_COLLABORATORS_FILTER_VALUES = ["german_collaborators", "latvian_ss_legion", "estonian_ss_division"];

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
  const lang = rawLang ? (normalizeSongLanguage(rawLang) || "") : "";
  const country = rawCountry ? (normalizeSongCountry(rawCountry) || "") : "";
  const period = rawPeriod ? (normalizeSongPeriod(rawPeriod) || "") : "";
  const performer = rawPerformer;
  const year = rawYear;
  const page = clamp(url.searchParams.get("page"), 1, 9999);
  const per = 20;

  if ((rawLang && !lang) || (rawCountry && !country) || (rawPeriod && !period)) {
    return json({ items: [], total: 0, page, pages: 1 });
  }

  const filters = { lang, country, period, performer, year };

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
    const fromSql = `
      FROM songs_fts
      JOIN songs s ON s.id = songs_fts.song_id
    `;
    const runFts = async (matchQuery, mode) => {
      const whereWithMatch = [...where, "songs_fts MATCH ?"];
      const whereSql = `WHERE ${whereWithMatch.join(" AND ")}`;
      const fullParams = [...params, matchQuery];
      const totalRow = await dbGet(env, `SELECT COUNT(*) AS c ${fromSql} ${whereSql}`, fullParams);
      const total = Number(totalRow?.c || 0);
      if (!total) return null;
      const pages = Math.max(1, Math.ceil(total / per));
      const safePage = Math.min(page, pages);
      const offset = (safePage - 1) * per;
      const items = await dbAll(
        env,
        `SELECT s.id, s.title, s.subtitle, s.lang, s.country, s.period, s.year,
                snippet(songs_fts, 1, '', '', '...', 12) AS snippet
         ${fromSql}
         ${whereSql}
         ORDER BY bm25(songs_fts) ASC, s.title ASC
         LIMIT ? OFFSET ?`,
        [...fullParams, per, offset]
      );
      return { items, total, page: safePage, pages, mode };
    };

    const exactPhrase = phraseQuery ? await runFts(phraseQuery, "exact_phrase") : null;
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

    const exactTokens = strictTokensQuery ? await runFts(strictTokensQuery, "exact_tokens") : null;
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

    const fuzzy = await runFts(fuzzyQuery, "fuzzy");
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
  const whereSql = `WHERE ${where.join(" AND ")}`;

  const totalRow = await dbGet(env, `SELECT COUNT(*) AS c FROM songs s ${whereSql}`, params);
  const total = Number(totalRow?.c || 0);
  const pages = Math.max(1, Math.ceil(total / per));
  const safePage = Math.min(page, pages);
  const offset = (safePage - 1) * per;

  const items = await dbAll(
    env,
    `SELECT s.id, s.title, s.subtitle, s.lang, s.country, s.period, s.year,
            '' AS snippet
     FROM songs s
     ${whereSql}
     ORDER BY s.title ASC
     LIMIT ? OFFSET ?`,
    [...params, per, offset]
  );

  return json({ items, total, page: safePage, pages, search_mode: "browse", suggestions: [], suggestions_total: 0 });
}
