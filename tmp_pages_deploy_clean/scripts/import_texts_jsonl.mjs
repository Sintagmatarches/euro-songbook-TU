import fs from 'node:fs';
import path from 'node:path';

const inputPath = 'C:/Users/svyat/Downloads/Telegram Desktop/ChatExport_2026-02-18/texts.jsonl';
const outSqlPath = path.resolve('tmp_import_texts_20260218.sql');
const outReportPath = path.resolve('tmp_import_texts_20260218_report.json');

function countCyr(s) {
  return (s.match(/[À-ßà-ÿ¨¸²³¯¿ªº¥´]/g) || []).length;
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

function escSql(value) {
  return String(value ?? '').replace(/'/g, "''");
}

function norm(s) {
  return fixMojibake(String(s ?? '')).replace(/\r/g, '').trim();
}

function extractYear(text) {
  const re = /\b(18\d{2}|19\d{2}|20\d{2})\b/g;
  let m;
  const years = [];
  while ((m = re.exec(text)) !== null) years.push(Number(m[1]));
  if (!years.length) return null;
  return years[years.length - 1];
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

function pickTitle(text) {
  const lines = text
    .split('\n')
    .map((l) => l.trim())
    .filter(Boolean);
  if (!lines.length) return null;
  let title = lines.find((l) => !l.startsWith('#')) || lines[0];
  if (/^èñïîëíÿåò\s*:/i.test(title) && lines.length > 1) {
    title = lines[1];
  }
  title = title.replace(/^[-–—\s]+/, '').trim();
  if (!title) return null;
  if (title.length > 140) title = `${title.slice(0, 137)}...`;
  return title;
}

const raw = fs.readFileSync(inputPath, 'utf8');
const lines = raw.split(/\r?\n/).filter(Boolean);

const rows = [];
const stats = {
  totalLines: lines.length,
  parsed: 0,
  withYear: 0,
  imported: 0,
  skippedNoYear: 0,
  skippedNoText: 0,
  skippedNoTitle: 0,
  ussr: 0,
  empire: 0,
  skippedOutOfScopeYear: 0,
};

for (const line of lines) {
  let obj;
  try {
    obj = JSON.parse(line);
    stats.parsed++;
  } catch {
    continue;
  }

  const text = norm(obj.text);
  if (!text) {
    stats.skippedNoText++;
    continue;
  }

  const year = extractYear(text);
  if (!year) {
    stats.skippedNoYear++;
    continue;
  }
  stats.withYear++;

  let country = null;
  let period = null;
  if (year > 1917) {
    country = 'ussr';
    period = periodForUssr(year);
    stats.ussr++;
  } else {
    country = 'russian_empire_1900_1917';
    period = null;
    stats.empire++;
  }

  if (year < 1800 || year > 1991) {
    stats.skippedOutOfScopeYear++;
    continue;
  }

  const title = pickTitle(text);
  if (!title) {
    stats.skippedNoTitle++;
    continue;
  }

  const author = norm(obj.from);
  const idRaw = String(obj.message_id || '').trim() || `${stats.parsed}`;
  const songId = `tg_${idRaw.replace(/[^a-zA-Z0-9_-]/g, '_')}`;
  const source = 'Telegram ChatExport 2026-02-18';
  const notes = [
    obj.source_file ? `source_file: ${obj.source_file}` : null,
    obj.date ? `date: ${obj.date}` : null,
    obj.message_id ? `message_id: ${obj.message_id}` : null,
  ].filter(Boolean).join(' | ');

  rows.push({
    id: songId,
    title,
    subtitle: author || null,
    lang: 'ru',
    country,
    period,
    year: String(year),
    source,
    notes: notes || null,
    lyrics: text,
  });
}

const sql = [];
sql.push('BEGIN TRANSACTION;');
for (const r of rows) {
  sql.push(`INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('${escSql(r.id)}','${escSql(r.title)}',${r.subtitle ? `'${escSql(r.subtitle)}'` : 'NULL'},'${escSql(r.lang)}','${escSql(r.country)}',${r.period ? `'${escSql(r.period)}'` : 'NULL'},'${escSql(r.year)}','${escSql(r.source)}',${r.notes ? `'${escSql(r.notes)}'` : 'NULL'},'${escSql(r.lyrics)}','[]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='${escSql(r.id)}'), datetime('now')),datetime('now'));`);
  sql.push(`INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('${escSql(r.id)}','${escSql(r.title)}','${escSql(r.lyrics)}');`);
}
sql.push('COMMIT;');

stats.imported = rows.length;
fs.writeFileSync(outSqlPath, `${sql.join('\n')}\n`, 'utf8');
fs.writeFileSync(outReportPath, JSON.stringify(stats, null, 2), 'utf8');
console.log(JSON.stringify({ outSqlPath, outReportPath, stats }, null, 2));
