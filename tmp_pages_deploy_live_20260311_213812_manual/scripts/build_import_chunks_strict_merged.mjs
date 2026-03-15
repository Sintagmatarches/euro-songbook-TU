import fs from 'node:fs';
import path from 'node:path';

const inputPath = 'C:/Users/svyat/Downloads/Telegram Desktop/ChatExport_2026-02-18/texts.jsonl';
const outDir = path.resolve('tmp_import_chunks_strict_merged');
const reportPath = path.resolve('tmp_import_chunks_strict_merged_report.json');
const ROWS_PER_CHUNK = 200;
const TELEGRAM_SOURCE = 'Telegram ChatExport 2026-02-18';

function countCyr(s) {
  return (String(s || "").match(/\p{Script=Cyrillic}/gu) || []).length;
}

function fixMojibake(text) {
  const raw = String(text ?? '');
  if (!raw) return '';
  let cur = raw;
  for (let i = 0; i < 2; i++) {
    const converted = Buffer.from(cur, 'latin1').toString('utf8');
    if (countCyr(converted) >= countCyr(cur)) cur = converted;
  }
  return cur;
}

function normalize(s) {
  return fixMojibake(String(s ?? ''))
    .replace(/\r/g, '')
    .replace(/\u00a0/g, ' ')
    .trim();
}

function escSql(v) {
  return String(v ?? '').replace(/'/g, "''");
}

function cleanSpaces(s) {
  return String(s ?? '').replace(/[ \t]+/g, ' ').trim();
}

function extractYears(text) {
  const re = /\b(18\d{2}|19\d{2}|20\d{2})\b/g;
  const years = [];
  let m;
  while ((m = re.exec(text)) !== null) years.push(Number(m[1]));
  return years;
}

function periodForUssr(year) {
  if (year >= 1922 && year <= 1940) return 'ussr_1922_1940';
  if (year >= 1941 && year <= 1945) return 'ussr_1941_1945';
  if (year >= 1946 && year <= 1953) return 'ussr_1946_1953';
  if (year >= 1954 && year <= 1964) return 'ussr_1953_1964';
  if (year >= 1965 && year <= 1985) return 'ussr_1964_1985';
  if (year >= 1986 && year <= 1991) return 'ussr_1985_1991';
  return null;
}

function stripTitleQuotes(title) {
  return cleanSpaces(String(title ?? '').replace(/["'`В«В»вЂћвЂњвЂќ]/g, ''));
}

function tokenizeWordCount(text) {
  const words = String(text ?? '').match(/[\p{L}\p{N}]+/gu);
  return words ? words.length : 0;
}

function parseMetaFromLine(line) {
  const meta = [];
  const re = /(РњСѓР·С‹РєР°|РЎР»РѕРІР°|РђРІС‚РѕСЂ|РљРѕРјРїРѕР·РёС‚РѕСЂ)\s*:\s*([^:]+?)(?=(?:\b(?:РњСѓР·С‹РєР°|РЎР»РѕРІР°|РђРІС‚РѕСЂ|РљРѕРјРїРѕР·РёС‚РѕСЂ)\s*:)|$)/giu;
  let m;
  while ((m = re.exec(line)) !== null) {
    const key = cleanSpaces(m[1]);
    const value = cleanSpaces(m[2]).replace(/[\s,.;:()-]*(18\d{2}|19\d{2}|20\d{2})[\s,.;:()-]*$/u, '').trim();
    if (value) meta.push(`${key}: ${value}`);
  }
  return meta;
}

function parseCandidate(rawObj) {
  const text = normalize(rawObj?.text);
  if (!text) return null;

  // Hard reject timecode-like payloads.
  if (/\b\d{1,2}:\d{2}(?::\d{2})?\b/u.test(text)) return null;

  const lines = text
    .split('\n')
    .map((line) => cleanSpaces(line))
    .filter(Boolean);

  if (!lines.length) return null;

  const tags = [];
  const notesExtra = [];
  const sourceMeta = [];
  let performer = null;
  let explicitYear = null;

  const lyricLinesRaw = [];

  for (const line of lines) {
    if (/^#\S+$/u.test(line)) {
      tags.push(line.slice(1));
      continue;
    }

    if (/^(source_file:|message_id:|date:)/iu.test(line)) {
      notesExtra.push(line);
      continue;
    }

    const performerMatch = line.match(/^РёСЃРїРѕР»РЅСЏ(?:РµС‚|СЋС‚)\s*:\s*(.+)$/iu);
    if (performerMatch) {
      const value = cleanSpaces(performerMatch[1]).replace(/[\s,.;:()-]*(18\d{2}|19\d{2}|20\d{2})[\s,.;:()-]*$/u, '').trim();
      if (value) performer = value;
      const years = extractYears(line);
      if (years.length) explicitYear = years[years.length - 1];
      continue;
    }

    if (/^(РїР»Р°СЃС‚РёРЅРєР°|РјР°С‚СЂРёС†Р°|СЃ РїР°С‚РµС„РѕРЅРЅРѕР№|Р·Р°РїРёСЃСЊ)/iu.test(line)) {
      notesExtra.push(line);
      const years = extractYears(line);
      if (years.length) explicitYear = explicitYear ?? years[years.length - 1];
      continue;
    }

    const metas = parseMetaFromLine(line);
    if (metas.length) {
      sourceMeta.push(...metas);
      const years = extractYears(line);
      if (years.length) explicitYear = explicitYear ?? years[years.length - 1];
      const prefixOnlyMeta = line.replace(/(РњСѓР·С‹РєР°|РЎР»РѕРІР°|РђРІС‚РѕСЂ|РљРѕРјРїРѕР·РёС‚РѕСЂ)\s*:\s*[^:]+/giu, '').trim();
      if (!prefixOnlyMeta) continue;
    }

    lyricLinesRaw.push(line);
  }

  if (!lyricLinesRaw.length) return null;

  let rawTitle = lyricLinesRaw[0];
  const markerIndex = rawTitle.search(/\b(РњСѓР·С‹РєР°|РЎР»РѕРІР°|РђРІС‚РѕСЂ|РљРѕРјРїРѕР·РёС‚РѕСЂ|РСЃРїРѕР»РЅСЏ(?:РµС‚|СЋС‚))\s*:/iu);
  if (markerIndex > 0) {
    rawTitle = rawTitle.slice(0, markerIndex);
  }
  let title = stripTitleQuotes(rawTitle);
  if (!title) return null;
  if (/^(РёСЃРїРѕР»РЅСЏ(?:РµС‚|СЋС‚)|РјСѓР·С‹РєР°|СЃР»РѕРІР°|Р°РІС‚РѕСЂ|РєРѕРјРїРѕР·РёС‚РѕСЂ)\b/iu.test(title)) return null;
  if (title.length > 180) title = `${title.slice(0, 177)}...`;

  const lyrics = lyricLinesRaw.slice(1).join('\n').trim();
  if (!lyrics) return null;
  if (tokenizeWordCount(lyrics) < 40) return null;

  let year = explicitYear;
  if (!year) {
    const years = extractYears(text).filter((y) => y >= 1800 && y <= 1991);
    if (years.length) year = years[years.length - 1];
  }
  if (year && (year < 1800 || year > 1991)) year = null;

  const country = year ? (year <= 1917 ? 'russian_empire_1900_1917' : 'ussr') : 'ussr';
  const period = year && year > 1917 ? periodForUssr(year) : null;
  const source = Array.from(new Set(sourceMeta)).join(' | ') || null;

  const messageId = String(rawObj?.message_id || '').trim();
  const numericMessageId = Number((messageId.match(/\d+/) || [0])[0] || 0);
  const notes = [
    notesExtra.join(' | ') || null,
    rawObj?.source_file ? `source_file: ${rawObj.source_file}` : null,
    rawObj?.date ? `date: ${rawObj.date}` : null,
    messageId ? `message_id: ${messageId}` : null,
    `import_source: ${TELEGRAM_SOURCE}`,
  ].filter(Boolean).join(' | ');

  return {
    messageId,
    numericMessageId,
    title,
    titleKey: title.toLocaleLowerCase('ru').replace(/\s+/g, ' ').trim(),
    subtitle: performer || normalize(rawObj?.from) || null,
    year: year ? String(year) : null,
    country,
    period,
    source,
    notes,
    lyrics,
    tags: Array.from(new Set(tags)).filter(Boolean),
  };
}

function sortedEntries(entries) {
  return [...entries].sort((a, b) => {
    const ay = a.year ? Number(a.year) : Number.MAX_SAFE_INTEGER;
    const by = b.year ? Number(b.year) : Number.MAX_SAFE_INTEGER;
    if (ay !== by) return ay - by;
    return a.numericMessageId - b.numericMessageId;
  });
}
function normalizeLyricsKey(text) {
  return String(text || "")
    .replace(/\r/g, "")
    .replace(/[ \t]+/g, " ")
    .replace(/\n{2,}/g, "\n\n")
    .trim()
    .toLocaleLowerCase("ru");
}
const raw = fs.readFileSync(inputPath, 'utf8');
const lines = raw.split(/\r?\n/).filter(Boolean);

const candidates = [];
const stats = {
  totalLines: lines.length,
  parsed: 0,
  acceptedCandidates: 0,
  skipped: 0,
  skippedExamples: [],
};

for (const line of lines) {
  let obj;
  try {
    obj = JSON.parse(line);
    stats.parsed++;
  } catch {
    stats.skipped++;
    continue;
  }

  const parsed = parseCandidate(obj);
  if (!parsed) {
    stats.skipped++;
    if (stats.skippedExamples.length < 20) {
      stats.skippedExamples.push({
        message_id: obj?.message_id ?? null,
        text: normalize(obj?.text).slice(0, 140),
      });
    }
    continue;
  }
  candidates.push(parsed);
}

stats.acceptedCandidates = candidates.length;

const groups = new Map();
for (const row of candidates) {
  if (!groups.has(row.titleKey)) groups.set(row.titleKey, []);
  groups.get(row.titleKey).push(row);
}

const songs = [];
const versions = [];

let songCounter = 0;
for (const [_, entries] of groups.entries()) {
  const sorted = sortedEntries(entries);
  const uniqueByLyrics = [];
  const seenLyrics = new Set();
  for (const item of sorted) {
    const key = normalizeLyricsKey(item.lyrics);
    if (seenLyrics.has(key)) continue;
    seenLyrics.add(key);
    uniqueByLyrics.push(item);
  }
  const main = uniqueByLyrics[0];
  songCounter++;
  const songId = `tgm_${String(songCounter).padStart(5, "0")}`;
  const mergedTags = Array.from(new Set(uniqueByLyrics.flatMap((e) => e.tags))).filter(Boolean);
  songs.push({
    id: songId,
    title: main.title,
    subtitle: main.subtitle,
    lang: 'ru',
    country: main.country,
    period: main.period,
    year: main.year,
    source: main.source,
    notes: `${main.notes} | merged_versions: ${uniqueByLyrics.length}`,
    lyrics: main.lyrics,
    tagsJson: JSON.stringify(mergedTags),
  });
  uniqueByLyrics.slice(1).forEach((entry, idx) => {
    const versionId = `tgv_${songId}_${String(idx + 1).padStart(2, "0")}`;
    const versionSourceParts = [];
    if (entry.source) versionSourceParts.push(entry.source);
    if (entry.subtitle) versionSourceParts.push(`Performer: ${entry.subtitle}`);
    if (entry.year) versionSourceParts.push(`Year: ${entry.year}`);
    versions.push({
      id: versionId,
      song_id: songId,
      title: `Version ${idx + 1}`,
      lang: 'ru',
      lyrics: entry.lyrics,
      source: versionSourceParts.join(' | ') || null,
      sort_order: idx,
    });
  });
}

stats.uniqueTitles = songs.length;
stats.totalVersions = versions.length;
stats.groupsWithManyVersions = songs.filter((s) => Number((s.notes.match(/merged_versions: (\d+)/)?.[1] || 1)) > 1).length;
stats.maxVersionsInSong = Math.max(0, ...songs.map((s) => Number((s.notes.match(/merged_versions: (\d+)/)?.[1] || 1))));

fs.rmSync(outDir, { recursive: true, force: true });
fs.mkdirSync(outDir, { recursive: true });

const rows = [];
for (const s of songs) rows.push({ type: 'song', ...s });
for (const v of versions) rows.push({ type: 'version', ...v });

let chunkIndex = 0;
for (let i = 0; i < rows.length; i += ROWS_PER_CHUNK) {
  const chunk = rows.slice(i, i + ROWS_PER_CHUNK);
  const sql = [];
  for (const row of chunk) {
    if (row.type === 'song') {
      sql.push(`INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('${escSql(row.id)}','${escSql(row.title)}',${row.subtitle ? `'${escSql(row.subtitle)}'` : 'NULL'},'${escSql(row.lang)}','${escSql(row.country)}',${row.period ? `'${escSql(row.period)}'` : 'NULL'},${row.year ? `'${escSql(row.year)}'` : 'NULL'},${row.source ? `'${escSql(row.source)}'` : 'NULL'},'${escSql(row.notes)}','${escSql(row.lyrics)}','${escSql(row.tagsJson)}',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='${escSql(row.id)}'), datetime('now')),datetime('now'));`);
      sql.push(`INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('${escSql(row.id)}','${escSql(row.title)}','${escSql(row.lyrics)}');`);
    } else {
      sql.push(`INSERT OR REPLACE INTO song_versions (id,song_id,title,lang,lyrics,source,sort_order) VALUES ('${escSql(row.id)}','${escSql(row.song_id)}','${escSql(row.title)}','${escSql(row.lang)}','${escSql(row.lyrics)}',${row.source ? `'${escSql(row.source)}'` : 'NULL'},${row.sort_order});`);
    }
  }
  chunkIndex++;
  fs.writeFileSync(path.join(outDir, `${String(chunkIndex).padStart(4, '0')}.sql`), `${sql.join('\n')}\n`, 'utf8');
}

stats.chunks = chunkIndex;
stats.rowsPerChunk = ROWS_PER_CHUNK;
stats.outDir = outDir;

fs.writeFileSync(reportPath, JSON.stringify(stats, null, 2), 'utf8');
console.log(JSON.stringify(stats, null, 2));

