import fs from "node:fs";
import path from "node:path";
import { TextDecoder } from "node:util";
import {
  isPeriodAllowedForCountry,
  normalizeSongCountry,
  normalizeSongLanguage,
  normalizeSongPeriod,
} from "../shared/song-catalogs.js";

const inputPath = process.argv[2]
  ? path.resolve(process.argv[2])
  : path.resolve("..", "result.json");
const outDir = path.resolve("tmp_import_result_texts_strict");
const reportPath = path.resolve("tmp_import_result_texts_strict_report.json");
const rowsPerChunk = 120;
const importSource = "Telegram ChatExport result.json strict import";

const timecodeRe = /(^|[\s[(])\d{1,2}\s*:\s*\d{2}(?::\d{2})?(?=$|[\s)\]])/u;
const hashOnlyRe = /^(?:\s*#\S+\s*)+$/u;
const standaloneYearRe = /^\s*(18\d{2}|19\d{2}|20\d{2})\s*$/u;
const wordRe = /[\p{L}\p{N}]+/gu;

const ruStop = new Set(["и", "в", "не", "что", "на", "с", "как", "мы", "я", "ты", "но", "за"]);
const ukStop = new Set(["що", "це", "та", "є", "хай", "вже", "знову", "тобі", "мене", "пісня", "україна", "слава"]);
const beStop = new Set(["што", "гэта", "калі", "дзе", "яшчэ", "няхай", "бывайце", "радзіма", "беларусь", "няма", "дзякуй", "чаму"]);

const roStop = new Set(["si", "și", "in", "în", "cu", "la", "pe", "din", "sa", "să", "este", "nu", "un", "o", "de"]);
const deStop = new Set(["und", "der", "die", "das", "ein", "eine", "nicht", "ist", "ich", "du", "wir", "mit", "zu"]);
const enStop = new Set(["the", "and", "of", "to", "in", "for", "with", "is", "we", "you", "our"]);
const frStop = new Set(["le", "la", "les", "de", "des", "et", "dans", "sur", "avec", "pour", "nous", "vous"]);
const esStop = new Set(["el", "la", "los", "las", "de", "y", "en", "con", "para", "que", "nos", "una"]);
const ptStop = new Set(["o", "a", "os", "as", "de", "e", "em", "com", "para", "que", "nao", "não"]);
const itStop = new Set(["il", "la", "gli", "le", "di", "e", "in", "con", "per", "che", "noi", "voi"]);
const nlStop = new Set(["de", "het", "een", "en", "van", "in", "met", "voor", "wij", "jij", "niet"]);
const plStop = new Set(["i", "w", "na", "nie", "to", "że", "ze", "jak", "my", "ja", "ty", "za"]);

const LANGUAGE_HINT_RULES = [
  { lang: "uk", re: /\b(?:україн\w*|украин\w*|ukrainian)\b/iu },
  { lang: "be", re: /\b(?:беларус\w*|белорус\w*|belarusian)\b/iu },
  { lang: "ru", re: /\b(?:русск\w*|российск\w*|russian)\b/iu },
  { lang: "de", re: /\b(?:немец\w*|german|deutsch)\b/iu },
  { lang: "fr", re: /\b(?:француз\w*|french|francais|français)\b/iu },
  { lang: "es", re: /\b(?:испан\w*|spanish|español|espanol)\b/iu },
  { lang: "pt", re: /\b(?:португал\w*|portuguese)\b/iu },
  { lang: "it", re: /\b(?:итальян\w*|italian)\b/iu },
  { lang: "nl", re: /\b(?:нидерланд\w*|голланд\w*|dutch|nederlands?)\b/iu },
  { lang: "pl", re: /\b(?:польск\w*|polish)\b/iu },
  { lang: "ro", re: /\b(?:румын\w*|romanian|română|romana|moldavian|молдав\w*)\b/iu },
  { lang: "en", re: /\b(?:английск\w*|english)\b/iu },
  { lang: "ja", re: /\b(?:японск\w*|japanese)\b/iu },
];

const LATIN_LANGUAGE_RULES = [
  { lang: "ro", stopWords: roStop, diacritics: /[ăâîșşțţ]/giu, diaWeight: 4 },
  { lang: "de", stopWords: deStop, diacritics: /[äöüß]/giu, diaWeight: 4 },
  { lang: "pl", stopWords: plStop, diacritics: /[ąćęłńóśźż]/giu, diaWeight: 4 },
  { lang: "fr", stopWords: frStop, diacritics: /[àâæçéèêëîïôœùûüÿ]/giu, diaWeight: 3 },
  { lang: "es", stopWords: esStop, diacritics: /[áéíóúñ¡¿]/giu, diaWeight: 3 },
  { lang: "pt", stopWords: ptStop, diacritics: /[áâãàçéêíóôõú]/giu, diaWeight: 3 },
  { lang: "it", stopWords: itStop, diacritics: /[àèéìíîòóùú]/giu, diaWeight: 2 },
  { lang: "nl", stopWords: nlStop, diacritics: /[ëï]/giu, diaWeight: 2 },
  { lang: "en", stopWords: enStop, diacritics: null, diaWeight: 0 },
];

function escSql(v) {
  return String(v ?? "").replace(/'/g, "''");
}

function fnv1a(input) {
  let h = 0x811c9dc5;
  const s = String(input ?? "");
  for (let i = 0; i < s.length; i += 1) {
    h ^= s.charCodeAt(i);
    h = Math.imul(h, 0x01000193);
  }
  return (h >>> 0).toString(36);
}

function normalizeNewlines(s) {
  return String(s ?? "").replace(/\r\n?/g, "\n");
}

function countMatches(s, re) {
  return (String(s ?? "").match(re) || []).length;
}

function tokenizeWords(text) {
  return String(text ?? "").toLowerCase().match(wordRe) || [];
}

function countTokenHits(tokens, dictionary) {
  let hits = 0;
  for (const t of tokens) {
    if (dictionary.has(t)) hits += 1;
  }
  return hits;
}

function detectLanguageHint(parts) {
  const scope = parts
    .map((v) => String(v || "").trim())
    .filter(Boolean)
    .join("\n")
    .toLowerCase();
  if (!scope) return null;
  for (const rule of LANGUAGE_HINT_RULES) {
    if (rule.re.test(scope)) return rule.lang;
  }
  return null;
}

function isLikelyMojibakeRu(s) {
  const text = String(s ?? "");
  const cyr = countMatches(text, /\p{Script=Cyrillic}/gu);
  if (cyr < 16) return false;
  const rs = countMatches(text, /[РС]/g);
  return rs / cyr > 0.34;
}

function scoreReadableText(s) {
  const text = String(s ?? "");
  const tokens = text.toLowerCase().split(/[^\p{L}\p{N}]+/u).filter(Boolean);
  let stopScore = 0;
  for (const t of tokens) {
    if (ruStop.has(t)) stopScore += 2;
    if (roStop.has(t)) stopScore += 2;
    if (deStop.has(t)) stopScore += 2;
  }
  const cyr = countMatches(text, /\p{Script=Cyrillic}/gu);
  const lat = countMatches(text, /\p{Script=Latin}/gu);
  const roDia = countMatches(text, /[ăâîșşțţ]/giu) * 3;
  const deDia = countMatches(text, /[äöüß]/giu) * 3;
  const bad = countMatches(text, /�/g) * 10 + countMatches(text, /[ÃÐÑÂ]/g) * 3 + (isLikelyMojibakeRu(text) ? 60 : 0);
  return cyr + lat + roDia + deDia + stopScore - bad;
}

function fixMojibakeSmart(input) {
  const raw = String(input ?? "");
  if (!raw) return "";
  const variants = [raw];
  try {
    variants.push(Buffer.from(raw, "latin1").toString("utf8"));
  } catch {}
  try {
    const once = Buffer.from(raw, "latin1").toString("utf8");
    variants.push(Buffer.from(once, "latin1").toString("utf8"));
  } catch {}
  let best = raw;
  let bestScore = scoreReadableText(raw);
  for (const v of variants) {
    const score = scoreReadableText(v);
    if (score > bestScore) {
      best = v;
      bestScore = score;
    }
  }
  return best;
}

function decodeAndParseJson(fileBuffer) {
  const tries = [
    { enc: "utf-8", text: new TextDecoder("utf-8", { fatal: false }).decode(fileBuffer) },
    { enc: "windows-1251", text: new TextDecoder("windows-1251", { fatal: false }).decode(fileBuffer) },
  ];
  for (const t of tries) {
    let json = null;
    try {
      json = JSON.parse(t.text);
    } catch {
      continue;
    }
    return { enc: t.enc, json, score: 0 };
  }
  throw new Error("Cannot parse JSON in utf-8/windows-1251");
}

function textFromTelegramField(value) {
  if (typeof value === "string") return value;
  if (!Array.isArray(value)) return "";
  return value
    .map((part) => {
      if (typeof part === "string") return part;
      if (part && typeof part === "object" && typeof part.text === "string") return part.text;
      return "";
    })
    .join("");
}

function extractHashtags(msg) {
  const tags = new Set();
  const entities = Array.isArray(msg?.text_entities) ? msg.text_entities : [];
  for (const ent of entities) {
    const txt = String(ent?.text || "").trim();
    if (!txt) continue;
    if (ent?.type === "hashtag" || txt.startsWith("#")) {
      const clean = txt.replace(/^#+/u, "").trim().toLowerCase();
      if (clean) tags.add(clean);
    }
  }
  const plain = textFromTelegramField(msg?.text);
  const h = plain.match(/#([\p{L}\p{N}_-]+)/gu) || [];
  for (const token of h) tags.add(token.replace(/^#+/u, "").toLowerCase());
  return Array.from(tags);
}

function extractYears(text) {
  const out = [];
  const re = /\b(18\d{2}|19\d{2}|20\d{2})\b/g;
  let m;
  while ((m = re.exec(String(text || ""))) !== null) {
    const y = Number(m[1]);
    if (y >= 1800 && y <= 2026) out.push(y);
  }
  return out;
}

function detectCyrillicLanguage(src, tokens) {
  const ukSpecial = countMatches(src, /[їєґ]/gu);
  const beSpecial = countMatches(src, /[ў]/gu);
  const ruSpecial = countMatches(src, /[ыэёъ]/gu);
  const sharedI = countMatches(src, /[і]/gu);

  const ukStops = countTokenHits(tokens, ukStop);
  const beStops = countTokenHits(tokens, beStop);
  const ruStops = countTokenHits(tokens, ruStop);
  const ukScore = ukSpecial * 5 + ukStops * 3 + Math.floor(sharedI / 30);
  const beScore = beSpecial * 5 + beStops * 3;
  const ruScore = ruSpecial * 4 + ruStops * 2;

  if (beSpecial >= 1 && beScore >= ukScore - 1 && beScore >= ruScore - 1) return "be";
  if (ukSpecial >= 1 && ukScore >= beScore && ukScore >= ruScore) return "uk";
  if (beStops >= ukStops + 2 && beStops >= 3) return "be";
  if (ukStops >= beStops + 2 && ukStops >= 3) return "uk";
  return "ru";
}

function detectLatinLanguage(src, tokens) {
  const scores = LATIN_LANGUAGE_RULES
    .map((rule) => {
      const stopHits = countTokenHits(tokens, rule.stopWords);
      const diaHits = rule.diacritics ? countMatches(src, rule.diacritics) : 0;
      const score = stopHits * 2 + diaHits * rule.diaWeight;
      return { lang: rule.lang, score, stopHits, diaHits };
    })
    .sort((a, b) => b.score - a.score);

  const top = scores[0] || null;
  const second = scores[1] || null;
  if (!top || top.score < 4) return "en";

  // Romanian without diacritics needs stronger lexical evidence.
  if (top.lang === "ro" && top.diaHits === 0 && top.stopHits < 4) return "en";

  if (second && top.lang !== "en" && top.score < second.score + 2) {
    if (second.lang === "en") return "en";
    if (top.stopHits <= 2) return "en";
  }
  return top.lang;
}

function detectLanguage(text, title = "", metaLines = []) {
  const src = `${title}\n${metaLines.join("\n")}\n${text}`.toLowerCase();
  const cyr = countMatches(src, /\p{Script=Cyrillic}/gu);
  const lat = countMatches(src, /\p{Script=Latin}/gu);
  const ja = countMatches(src, /[\p{Script=Hiragana}\p{Script=Katakana}\p{Script=Han}]/gu);
  const tokens = tokenizeWords(src);
  const hint = detectLanguageHint([title, ...metaLines, text.slice(0, 1200)]);

  if (ja > 8) return "ja";
  if (hint) {
    const hintCyr = hint === "ru" || hint === "uk" || hint === "be";
    if ((hintCyr && cyr >= lat) || (!hintCyr && lat >= cyr)) return hint;
  }
  if (cyr >= 20 && cyr > lat * 1.1) return detectCyrillicLanguage(src, tokens);
  if (lat >= 20) return detectLatinLanguage(src, tokens);
  if (cyr > 0) return detectCyrillicLanguage(src, tokens);
  return hint || "en";
}

function periodForUssr(year) {
  if (!Number.isFinite(year)) return null;
  if (year >= 1928 && year <= 1941) return "ussr_1928_1941";
  if (year >= 1942 && year <= 1953) return "ussr_1941_1953";
  if (year >= 1954 && year <= 1964) return "ussr_1953_1964";
  if (year >= 1965 && year <= 1985) return "ussr_1964_1985";
  if (year >= 1986 && year <= 1991) return "ussr_1985_1991";
  return null;
}

function mapCountryByLangAndYear(lang, year) {
  const y = Number.isFinite(year) ? year : null;
  if (lang === "ru") {
    if (!y) return { country: "ussr", period: null };
    if (y <= 1917) return { country: "russian_empire_1900_1917", period: null };
    if (y <= 1918) return { country: "russian_republic_1917", period: "russia_republic_1917_1918" };
    if (y <= 1921) return { country: "rsfsr_1917_1922", period: "rsfsr_war_1918_1921" };
    if (y <= 1928) return { country: "rsfsr_1917_1991", period: "rsfsr_nep_1921_1928" };
    if (y <= 1991) return { country: "ussr", period: periodForUssr(y) };
    return { country: "russian_federation_1991", period: null };
  }
  if (lang === "uk") {
    if (!y) return { country: "ukr_ssr_1919_1991", period: null };
    if (y <= 1917) return { country: "russian_empire_1900_1917", period: null };
    if (y === 1918) return { country: "ukrainian_state_1918", period: null };
    if (y <= 1921) return { country: "ukrainian_peoples_republic_1917_1921", period: null };
    if (y <= 1991) return { country: "ukr_ssr_1919_1991", period: null };
    return { country: "ukraine_1991", period: null };
  }
  if (lang === "be") {
    if (!y) return { country: "bssr_1919_1991", period: null };
    if (y <= 1917) return { country: "russian_empire_1900_1917", period: null };
    if (y <= 1919) return { country: "belarusian_peoples_republic_1918_1919", period: null };
    if (y <= 1991) return { country: "bssr_1919_1991", period: null };
    return { country: "belarus_1991", period: null };
  }
  if (lang === "de") {
    if (!y) return { country: "germany_1990", period: null };
    if (y <= 1918) return { country: "german_empire_1900_1918", period: null };
    if (y <= 1933) return { country: "weimar_republic_1918_1933", period: null };
    if (y <= 1945) return { country: "third_reich_1933_1945", period: null };
    if (y <= 1990) return { country: "gdr_1949_1990", period: null };
    return { country: "germany_1990", period: null };
  }
  if (lang === "ro") {
    if (!y) return { country: "romania_1989", period: null };
    if (y <= 1947) return { country: "kingdom_of_romania_1900_1947", period: null };
    if (y <= 1965) return { country: "romanian_peoples_republic_1947_1965", period: null };
    if (y <= 1989) return { country: "socialist_republic_of_romania_1965_1989", period: null };
    return { country: "romania_1989", period: null };
  }
  if (lang === "pl") {
    if (!y) return { country: "poland_1989", period: null };
    if (y <= 1939) return { country: "second_polish_republic_1918_1939", period: null };
    if (y <= 1989) return { country: "polish_peoples_republic_1952_1989", period: null };
    return { country: "poland_1989", period: null };
  }
  if (lang === "et") {
    if (!y) return { country: "estonia_1991", period: null };
    if (y <= 1940) return { country: "estonia_first_republic_1918_1940", period: null };
    if (y <= 1991) return { country: "estonian_ssr_1940_1991", period: null };
    return { country: "estonia_1991", period: null };
  }
  if (lang === "lv") {
    if (!y) return { country: "latvia_1991", period: null };
    if (y <= 1940) return { country: "latvia_first_republic_1918_1940", period: null };
    if (y <= 1990) return { country: "latvian_ssr_1940_1990", period: null };
    return { country: "latvia_1991", period: null };
  }
  if (lang === "lt") {
    if (!y) return { country: "lithuania_1990", period: null };
    if (y <= 1940) return { country: "lithuania_first_republic_1918_1940", period: null };
    if (y <= 1990) return { country: "lithuanian_ssr_1940_1990", period: null };
    return { country: "lithuania_1990", period: null };
  }
  if (lang === "fi") return { country: "finland_1917", period: null };
  return { country: null, period: null };
}

function normalizeTitleKey(title) {
  return String(title || "")
    .toLowerCase()
    .replace(/[^\p{L}\p{N}]+/gu, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function normalizeLyricsKey(lyrics) {
  return normalizeNewlines(String(lyrics || ""))
    .replace(/[ \t]+/g, " ")
    .replace(/\n{3,}/g, "\n\n")
    .trim()
    .toLowerCase();
}

function trimBlankEdges(lines) {
  let start = 0;
  let end = lines.length;
  while (start < end && !String(lines[start] || "").trim()) start += 1;
  while (end > start && !String(lines[end - 1] || "").trim()) end -= 1;
  return lines.slice(start, end);
}

function isLikelySongText(lyrics) {
  const lines = normalizeNewlines(lyrics).split("\n");
  const nonEmpty = lines.map((l) => l.trim()).filter(Boolean);
  if (nonEmpty.length < 6) return false;
  const short = nonEmpty.filter((line) => {
    const wc = (line.match(wordRe) || []).length;
    return wc >= 1 && wc <= 12;
  }).length;
  const shortRatio = short / nonEmpty.length;
  const hasChorus = /(^|\n)\s*(припев|приспів|chorus|refrain|refren)\b/iu.test(lyrics);
  return hasChorus || shortRatio >= 0.55;
}

function normalizeHistoryLeadTitle(title) {
  return String(title || "")
    .toLowerCase()
    .replace(/["'`«»„“”]/gu, "")
    .trim();
}

function looksLikeHistoryLeadTitle(title) {
  const t = normalizeHistoryLeadTitle(title);
  return (
    t.includes("история песни")
    || /^(о песне|пояснение|комментарий|справка)\b/u.test(t)
    || t.includes("song history")
    || /^(about the song|commentary)\b/u.test(t)
    || t.includes("povestea cantecului")
    || /^(despre cantec)\b/u.test(t)
    || t.includes("geschichte des liedes")
    || /^(zum lied)\b/u.test(t)
  );
}

function extractEmbeddedTitleAndLyrics(lyrics) {
  const lines = normalizeNewlines(String(lyrics || "")).split("\n");
  for (let i = 0; i < lines.length; i += 1) {
    const candidate = String(lines[i] || "").trim();
    if (!candidate) continue;
    const words = candidate.match(wordRe) || [];
    if (words.length < 1 || words.length > 8) continue;
    if (/[:.!?]\s*$/u.test(candidate)) continue;
    if (/^(музыка|слова|автор|композитор|исполняет|исполняют)\s*:/iu.test(candidate)) continue;
    const rest = trimBlankEdges(lines.slice(i + 1)).join("\n");
    if ((rest.match(wordRe) || []).length < 40) continue;
    return { title: candidate, lyrics: rest };
  }
  return null;
}

function parseMessage(msg) {
  const rawText = normalizeNewlines(fixMojibakeSmart(textFromTelegramField(msg?.text)));
  if (!rawText.trim()) return { ok: false, reason: "empty_text" };
  if (timecodeRe.test(rawText)) return { ok: false, reason: "timecode" };

  const allLines = rawText.split("\n").map((line) => line.replace(/\u00a0/g, " "));
  const firstNonEmpty = allLines.find((line) => line.trim());
  if (!firstNonEmpty) return { ok: false, reason: "empty_text" };
  let title = fixMojibakeSmart(firstNonEmpty.trim());
  if (!title || title.length > 240) return { ok: false, reason: "bad_title" };
  let startIndex = allLines.indexOf(firstNonEmpty) + 1;
  const isHistoryLead = looksLikeHistoryLeadTitle(title);
  if (isHistoryLead) {
    let foundIndex = -1;
    for (let i = startIndex; i < allLines.length; i += 1) {
      const candidate = fixMojibakeSmart(String(allLines[i] || "").trim());
      if (!candidate) continue;
      const words = candidate.match(wordRe) || [];
      if (words.length < 1 || words.length > 8) continue;
      if (/[:.!?]\s*$/u.test(candidate)) continue;
      if (/^(музыка|слова|автор|композитор|исполняет|исполняют)\s*:/iu.test(candidate)) continue;
      foundIndex = i;
      title = candidate;
      break;
    }
    if (foundIndex === -1) return { ok: false, reason: "not_song" };
    startIndex = foundIndex + 1;
  }

  const hashtags = new Set(extractHashtags(msg));
  const meta = [];
  let performer = "";
  const detectedYears = [];
  const contentLines = [];

  for (let i = startIndex; i < allLines.length; i += 1) {
    const line = fixMojibakeSmart(allLines[i] || "");
    const trimmed = line.trim();
    if (!trimmed) {
      contentLines.push("");
      continue;
    }
    if (hashOnlyRe.test(trimmed)) {
      const tags = trimmed.match(/#([\p{L}\p{N}_-]+)/gu) || [];
      for (const t of tags) hashtags.add(t.replace(/^#+/u, "").toLowerCase());
      continue;
    }
    if (standaloneYearRe.test(trimmed)) {
      const y = Number(trimmed);
      if (y >= 1800 && y <= 2026) detectedYears.push(y);
      continue;
    }

    const lower = trimmed.toLowerCase();
    const isPerformer =
      lower.startsWith("исполняет:") ||
      lower.startsWith("исполняют:") ||
      lower.startsWith("interpret:") ||
      lower.startsWith("interpreteaza:") ||
      lower.startsWith("interpretează:") ||
      lower.startsWith("gesang:");
    if (isPerformer) {
      const value = trimmed.split(":").slice(1).join(":").trim();
      if (value) performer = value;
      detectedYears.push(...extractYears(trimmed));
      continue;
    }

    const isMeta =
      /^(музыка|слова|автор|композитор|текст|music|lyrics|words|composer|muzica|versuri|komponist|text)\s*:/iu.test(trimmed);
    if (isMeta) {
      meta.push(trimmed);
      detectedYears.push(...extractYears(trimmed));
      continue;
    }

    detectedYears.push(...extractYears(trimmed));
    contentLines.push(line.replace(/[ \t]+$/g, ""));
  }

  const lyricLines = trimBlankEdges(contentLines);
  const lyrics = lyricLines.join("\n");
  const words = lyrics.match(wordRe) || [];
  if (words.length < 40) return { ok: false, reason: "short_text" };
  if (!isLikelySongText(lyrics)) return { ok: false, reason: "not_song" };

  const year = detectedYears.length ? detectedYears[detectedYears.length - 1] : null;
  const langRaw = detectLanguage(lyrics, title, meta);
  const lang = normalizeSongLanguage(langRaw) || "en";
  const mapped = mapCountryByLangAndYear(lang, year);
  const country = mapped.country ? (normalizeSongCountry(mapped.country) || null) : null;
  const normalizedPeriod = mapped.period ? (normalizeSongPeriod(mapped.period) || null) : null;
  const period = country && normalizedPeriod && isPeriodAllowedForCountry(country, normalizedPeriod)
    ? normalizedPeriod
    : null;

  return {
    ok: true,
    value: {
      messageId: Number(msg?.id || 0),
      title,
      titleKey: normalizeTitleKey(title),
      subtitle: performer || null,
      lang,
      country,
      period: period || null,
      year: year ? String(year) : null,
      source: meta.length ? meta.join(" | ") : null,
      notes: [
        msg?.date ? `date: ${msg.date}` : null,
        msg?.id ? `message_id: ${msg.id}` : null,
        `import_source: ${importSource}`,
      ].filter(Boolean).join(" | "),
      lyrics,
      tags: Array.from(hashtags),
    },
  };
}

function buildSqlChunks(songs, versions) {
  fs.rmSync(outDir, { recursive: true, force: true });
  fs.mkdirSync(outDir, { recursive: true });

  const chunkFiles = [];
  const cleanupSql = [
    "DELETE FROM song_links WHERE song_id LIKE 'tg3_%';",
    "DELETE FROM song_versions WHERE song_id LIKE 'tg3_%';",
    "DELETE FROM songs_fts WHERE song_id LIKE 'tg3_%';",
    "DELETE FROM songs WHERE id LIKE 'tg3_%';",
    "",
  ].join("\n");
  const cleanupPath = path.join(outDir, "0000_cleanup.sql");
  fs.writeFileSync(cleanupPath, cleanupSql, "utf8");
  chunkFiles.push(cleanupPath);

  const songRows = songs.map((s) => ({ type: "song", ...s }));
  const versionRows = versions.map((v) => ({ type: "version", ...v }));
  const rows = [...songRows, ...versionRows];
  rows.sort((a, b) => {
    if (a.type !== b.type) return a.type === "song" ? -1 : 1;
    return String(a.id).localeCompare(String(b.id));
  });

  let chunkNo = 1;
  for (let i = 0; i < rows.length; i += rowsPerChunk) {
    const part = rows.slice(i, i + rowsPerChunk);
    const sql = [];
    for (const row of part) {
      if (row.type === "song") {
        sql.push(
          `INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('${escSql(row.id)}','${escSql(row.title)}',${row.subtitle ? `'${escSql(row.subtitle)}'` : "NULL"},'${escSql(row.lang)}',${row.country ? `'${escSql(row.country)}'` : "NULL"},${row.period ? `'${escSql(row.period)}'` : "NULL"},${row.year ? `'${escSql(row.year)}'` : "NULL"},${row.source ? `'${escSql(row.source)}'` : "NULL"},${row.notes ? `'${escSql(row.notes)}'` : "NULL"},'${escSql(row.lyrics)}','${escSql(row.tagsJson)}',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='${escSql(row.id)}'), datetime('now')),datetime('now'));`
        );
        sql.push(
          `INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('${escSql(row.id)}','${escSql(row.title)}','${escSql(row.lyrics)}');`
        );
      } else {
        sql.push(
          `INSERT OR REPLACE INTO song_versions (id,song_id,title,lang,lyrics,source,sort_order) VALUES ('${escSql(row.id)}','${escSql(row.song_id)}',${row.title ? `'${escSql(row.title)}'` : "NULL"},${row.lang ? `'${escSql(row.lang)}'` : "NULL"},'${escSql(row.lyrics)}',${row.source ? `'${escSql(row.source)}'` : "NULL"},${Number(row.sort_order) || 0});`
        );
      }
    }
    sql.push("");
    const chunkPath = path.join(outDir, `${String(chunkNo).padStart(4, "0")}.sql`);
    fs.writeFileSync(chunkPath, sql.join("\n"), "utf8");
    chunkFiles.push(chunkPath);
    chunkNo += 1;
  }
  return chunkFiles;
}

function main() {
  const buffer = fs.readFileSync(inputPath);
  const parsed = decodeAndParseJson(buffer);
  const messages = Array.isArray(parsed?.json?.messages) ? parsed.json.messages : [];

  const stats = {
    inputPath,
    decodedAs: parsed.enc,
    totalMessages: messages.length,
    scannedMessageType: 0,
    skippedAudio: 0,
    skippedEmptyText: 0,
    skippedTimecode: 0,
    skippedShortText: 0,
    skippedNotSong: 0,
    skippedBadTitle: 0,
    acceptedCandidates: 0,
    groupedSongs: 0,
    createdVersions: 0,
    languageCounts: {},
    countryCounts: {},
    skipExamples: [],
  };

  const candidates = [];

  for (const msg of messages) {
    if (msg?.type !== "message") continue;
    stats.scannedMessageType += 1;
    const hasAudio =
      String(msg?.media_type || "").toLowerCase() === "audio_file" ||
      Boolean(msg?.file_name) ||
      Boolean(msg?.file);
    if (hasAudio) {
      stats.skippedAudio += 1;
      continue;
    }
    const parsedMsg = parseMessage(msg);
    if (!parsedMsg.ok) {
      if (parsedMsg.reason === "empty_text") stats.skippedEmptyText += 1;
      else if (parsedMsg.reason === "timecode") stats.skippedTimecode += 1;
      else if (parsedMsg.reason === "short_text") stats.skippedShortText += 1;
      else if (parsedMsg.reason === "not_song") stats.skippedNotSong += 1;
      else if (parsedMsg.reason === "bad_title") stats.skippedBadTitle += 1;
      if (stats.skipExamples.length < 30) {
        stats.skipExamples.push({
          id: Number(msg?.id || 0),
          reason: parsedMsg.reason,
          text: String(textFromTelegramField(msg?.text) || "").slice(0, 180),
        });
      }
      continue;
    }
    candidates.push(parsedMsg.value);
  }

  stats.acceptedCandidates = candidates.length;

  const groups = new Map();
  for (const row of candidates) {
    const key = `${row.lang}|${row.titleKey}`;
    if (!groups.has(key)) groups.set(key, []);
    groups.get(key).push(row);
  }

  const songs = [];
  const versions = [];
  const songIdUsed = new Set();

  for (const [groupKey, entries] of groups.entries()) {
    const sorted = [...entries].sort((a, b) => {
      const ay = a.year ? Number(a.year) : Number.MAX_SAFE_INTEGER;
      const by = b.year ? Number(b.year) : Number.MAX_SAFE_INTEGER;
      if (ay !== by) return ay - by;
      return a.messageId - b.messageId;
    });
    const unique = [];
    const seenLyrics = new Set();
    for (const e of sorted) {
      const lk = normalizeLyricsKey(e.lyrics);
      if (seenLyrics.has(lk)) continue;
      seenLyrics.add(lk);
      unique.push(e);
    }
    if (!unique.length) continue;

    const main = { ...unique[0] };
    if (looksLikeHistoryLeadTitle(main.title)) {
      const fixed = extractEmbeddedTitleAndLyrics(main.lyrics);
      if (fixed) {
        main.title = fixed.title;
        main.titleKey = normalizeTitleKey(fixed.title);
        main.lyrics = fixed.lyrics;
      }
    }
    let songId = `tg3_${fnv1a(groupKey)}`;
    if (songIdUsed.has(songId)) songId = `${songId}_${fnv1a(`${groupKey}|${main.messageId}`)}`;
    songIdUsed.add(songId);

    const allTags = Array.from(new Set(unique.flatMap((e) => e.tags).filter(Boolean)));
    const allNotes = [
      main.notes,
      unique.length > 1 ? `merged_versions: ${unique.length}` : null,
    ].filter(Boolean).join(" | ");

    songs.push({
      id: songId,
      title: main.title,
      subtitle: main.subtitle,
      lang: main.lang,
      country: main.country,
      period: main.period,
      year: main.year,
      source: main.source,
      notes: allNotes || null,
      lyrics: main.lyrics,
      tagsJson: JSON.stringify(allTags),
    });

    const lc = main.lang || "ru";
    stats.languageCounts[lc] = (stats.languageCounts[lc] || 0) + 1;
    if (main.country) {
      stats.countryCounts[main.country] = (stats.countryCounts[main.country] || 0) + 1;
    }

    unique.slice(1).forEach((entry, idx) => {
      const base = `${songId}|${entry.messageId}|${idx + 1}|${normalizeLyricsKey(entry.lyrics).slice(0, 120)}`;
      const versionId = `tg3v_${fnv1a(base)}`;
      const versionTitle =
        [entry.year, entry.subtitle].filter(Boolean).join(" - ") || `Version ${idx + 1}`;
      versions.push({
        id: versionId,
        song_id: songId,
        title: versionTitle,
        lang: entry.lang || main.lang,
        lyrics: entry.lyrics,
        source: entry.source || entry.notes || null,
        sort_order: idx,
      });
    });
  }

  stats.groupedSongs = songs.length;
  stats.createdVersions = versions.length;

  const chunkFiles = buildSqlChunks(songs, versions);
  const report = {
    ...stats,
    outputDir: outDir,
    outputReport: reportPath,
    sqlChunks: chunkFiles.map((p) => path.basename(p)),
  };
  fs.writeFileSync(reportPath, JSON.stringify(report, null, 2), "utf8");
  console.log(JSON.stringify(report, null, 2));
}

main();
