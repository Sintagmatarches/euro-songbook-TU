import fs from 'node:fs';
import path from 'node:path';

const inputPath = 'C:/Users/svyat/Downloads/Telegram Desktop/ChatExport_2026-02-18/texts.jsonl';
const outDir = path.resolve('tmp_import_chunks_clean');
const reportPath = path.resolve('tmp_import_chunks_clean_report.json');
const SONGS_PER_CHUNK = 250;
const SOURCE = 'Telegram ChatExport 2026-02-18';

function countCyr(s) {
  return (s.match(/[А-Яа-яЁёІіЇїЄєҐґ]/g) || []).length;
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
  return fixMojibake(String(s ?? '')).replace(/\r/g, '').trim();
}

function escSql(v) {
  return String(v ?? '').replace(/'/g, "''");
}

function periodOf(year) {
  if (year >= 1922 && year <= 1940) return 'ussr_1922_1940';
  if (year >= 1941 && year <= 1945) return 'ussr_1941_1945';
  if (year >= 1946 && year <= 1953) return 'ussr_1946_1953';
  if (year >= 1954 && year <= 1964) return 'ussr_1953_1964';
  if (year >= 1965 && year <= 1985) return 'ussr_1964_1985';
  if (year >= 1986 && year <= 1991) return 'ussr_1985_1991';
  return null;
}

function extractYears(text) {
  const re = /\b(18\d{2}|19\d{2}|20\d{2})\b/g;
  const years = [];
  let m;
  while ((m = re.exec(text)) !== null) years.push(Number(m[1]));
  return years;
}

function stripTrailingYear(s) {
  return s
    .replace(/[\s,.;:()-]*(18\d{2}|19\d{2}|20\d{2})[\s,.;:()-]*$/u, '')
    .trim();
}

function cleanLine(s) {
  return s.replace(/[ \t]+/g, ' ').replace(/\u00a0/g, ' ').trim();
}

function isHashTagLine(line) {
  return /^#\S+$/u.test(line);
}

function isDurationLine(line) {
  return /^\d{1,2}:\d{2}(?::\d{2})?$/u.test(line);
}

function isMetaLeadLine(line) {
  return /^(исполняет|исполняют|музыка|слова|автор|композитор|аранжировка|дириж[её]р|запись|пластинка|матрица|с патефонной)/iu.test(line);
}

function isTechnicalLine(line) {
  return /^(с патефонной|пластинка|матрица|запись|source_file:|message_id:|date:)/iu.test(line);
}

function parseText(rawText) {
  const lines = normalize(rawText)
    .split('\n')
    .map(cleanLine)
    .filter(Boolean);

  const tags = [];
  const metaParts = [];
  const noteParts = [];
  let performer = null;
  let explicitYear = null;
  const content = [];

  for (const line of lines) {
    if (isDurationLine(line)) continue;
    if (isHashTagLine(line)) {
      tags.push(line.slice(1).trim());
      continue;
    }

    const performerMatch = line.match(/^исполня(?:ет|ют)\s*:\s*(.+)$/iu);
    if (performerMatch) {
      const raw = performerMatch[1].trim();
      const years = extractYears(raw);
      if (years.length) explicitYear = years[years.length - 1];
      performer = stripTrailingYear(raw) || performer;
      continue;
    }

    const musicMatch = line.match(/^музыка\s*:\s*(.+)$/iu);
    if (musicMatch) {
      const raw = stripTrailingYear(musicMatch[1]);
      if (raw) metaParts.push(`Музыка: ${raw}`);
      const years = extractYears(line);
      if (years.length) explicitYear = explicitYear ?? years[0];
      continue;
    }

    const lyricsAuthorMatch = line.match(/^слова\s*:\s*(.+)$/iu);
    if (lyricsAuthorMatch) {
      const raw = stripTrailingYear(lyricsAuthorMatch[1]);
      if (raw) metaParts.push(`Слова: ${raw}`);
      const years = extractYears(line);
      if (years.length) explicitYear = explicitYear ?? years[0];
      continue;
    }

    const authorMatch = line.match(/^автор\s*:\s*(.+)$/iu);
    if (authorMatch) {
      const raw = stripTrailingYear(authorMatch[1]);
      if (raw) metaParts.push(`Автор: ${raw}`);
      const years = extractYears(line);
      if (years.length) explicitYear = explicitYear ?? years[0];
      continue;
    }

    if (isTechnicalLine(line)) {
      noteParts.push(line);
      const years = extractYears(line);
      if (years.length) explicitYear = explicitYear ?? years[years.length - 1];
      continue;
    }

    if (isMetaLeadLine(line) && content.length === 0) {
      noteParts.push(line);
      const years = extractYears(line);
      if (years.length) explicitYear = explicitYear ?? years[years.length - 1];
      continue;
    }

    content.push(line);
  }

  if (!content.length) return null;

  let title = content[0].replace(/^[-–—\s]+/u, '').trim();
  if (!title || isMetaLeadLine(title)) return null;

  if (title.length > 160) {
    title = `${title.slice(0, 157).trim()}...`;
  }

  const lyricLines = content.slice(1);
  const lyricChars = lyricLines.join('\n').replace(/\s/g, '').length;
  if (!lyricLines.length || lyricChars < 12) return null;

  let year = explicitYear;
  if (!year) {
    const yearsInText = extractYears(lines.join('\n'));
    if (yearsInText.length) year = yearsInText[yearsInText.length - 1];
  }

  if (year && (year < 1800 || year > 1991)) year = null;

  const country = year
    ? (year > 1917 ? 'ussr' : 'russian_empire_1900_1917')
    : 'ussr';
  const period = year && year > 1917 ? periodOf(year) : null;

  return {
    title,
    lyrics: lyricLines.join('\n').trim(),
    subtitle: performer || null,
    source: metaParts.length ? metaParts.join(' | ') : null,
    tags: Array.from(new Set(tags)).filter(Boolean),
    notesExtra: noteParts.join(' | ') || null,
    year: year ? String(year) : null,
    country,
    period,
  };
}

const raw = fs.readFileSync(inputPath, 'utf8');
const lines = raw.split(/\r?\n/).filter(Boolean);

const rows = [];
const stats = {
  totalLines: lines.length,
  parsed: 0,
  imported: 0,
  skippedJsonError: 0,
  skippedEmptyText: 0,
  skippedNotSong: 0,
  importedWithoutYear: 0,
  ussr: 0,
  empire: 0,
};
const skipExamples = [];

for (const line of lines) {
  let obj;
  try {
    obj = JSON.parse(line);
    stats.parsed++;
  } catch {
    stats.skippedJsonError++;
    continue;
  }

  const text = normalize(obj.text);
  if (!text) {
    stats.skippedEmptyText++;
    continue;
  }

  const parsed = parseText(text);
  if (!parsed) {
    stats.skippedNotSong++;
    if (skipExamples.length < 25) {
      skipExamples.push({
        message_id: obj.message_id ?? null,
        text: text.slice(0, 160),
      });
    }
    continue;
  }

  const idRaw = String(obj.message_id || '').trim() || `${stats.parsed}`;
  const songId = `tg_${idRaw.replace(/[^a-zA-Z0-9_-]/g, '_')}`;

  const notesParts = [
    parsed.notesExtra,
    obj.source_file ? `source_file: ${obj.source_file}` : null,
    obj.date ? `date: ${obj.date}` : null,
    obj.message_id ? `message_id: ${obj.message_id}` : null,
  ].filter(Boolean);

  rows.push({
    id: songId,
    title: parsed.title,
    subtitle: parsed.subtitle || normalize(obj.from) || null,
    lang: 'ru',
    country: parsed.country,
    period: parsed.period,
    year: parsed.year,
    source: parsed.source,
    notes: notesParts.join(' | ') || null,
    lyrics: parsed.lyrics,
    tagsJson: JSON.stringify(parsed.tags),
  });

  if (!parsed.year) stats.importedWithoutYear++;
  if (parsed.country === 'ussr') stats.ussr++;
  else stats.empire++;
}

stats.imported = rows.length;

fs.rmSync(outDir, { recursive: true, force: true });
fs.mkdirSync(outDir, { recursive: true });

let chunkIndex = 0;
for (let i = 0; i < rows.length; i += SONGS_PER_CHUNK) {
  const chunk = rows.slice(i, i + SONGS_PER_CHUNK);
  const sql = [];
  for (const r of chunk) {
    sql.push(`INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('${escSql(r.id)}','${escSql(r.title)}',${r.subtitle ? `'${escSql(r.subtitle)}'` : 'NULL'},'${escSql(r.lang)}','${escSql(r.country)}',${r.period ? `'${escSql(r.period)}'` : 'NULL'},${r.year ? `'${escSql(r.year)}'` : 'NULL'},${r.source ? `'${escSql(r.source)}'` : 'NULL'},${r.notes ? `'${escSql(r.notes)}'` : 'NULL'},'${escSql(r.lyrics)}','${escSql(r.tagsJson)}',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='${escSql(r.id)}'), datetime('now')),datetime('now'));`);
    sql.push(`INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('${escSql(r.id)}','${escSql(r.title)}','${escSql(r.lyrics)}');`);
  }
  chunkIndex++;
  fs.writeFileSync(path.join(outDir, `${String(chunkIndex).padStart(4, '0')}.sql`), `${sql.join('\n')}\n`, 'utf8');
}

const report = {
  ...stats,
  chunks: chunkIndex,
  songsPerChunk: SONGS_PER_CHUNK,
  outDir,
  skipExamples,
};

fs.writeFileSync(reportPath, JSON.stringify(report, null, 2), 'utf8');
console.log(JSON.stringify(report, null, 2));
