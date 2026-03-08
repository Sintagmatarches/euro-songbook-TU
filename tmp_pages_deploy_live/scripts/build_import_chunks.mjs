import fs from 'node:fs';
import path from 'node:path';

const inputPath = 'C:/Users/svyat/Downloads/Telegram Desktop/ChatExport_2026-02-18/texts.jsonl';
const outDir = path.resolve('tmp_import_chunks');
const reportPath = path.resolve('tmp_import_chunks_report.json');
const SONGS_PER_CHUNK = 300;

function countCyr(s){ return (s.match(/[À-ßà-ÿ¨¸²³¯¿ªº¥´]/g) || []).length; }
function fixMojibake(text){ const raw=String(text??''); if(!raw) return ''; let cur=raw; for(let i=0;i<2;i++){ const c=Buffer.from(cur,'latin1').toString('utf8'); if(countCyr(c)>=countCyr(cur)) cur=c; } return cur; }
function norm(s){ return fixMojibake(String(s??'')).replace(/\r/g,'').trim(); }
function escSql(v){ return String(v??'').replace(/'/g,"''"); }
function yearOf(text){ const re=/\b(18\d{2}|19\d{2}|20\d{2})\b/g; let m; const ys=[]; while((m=re.exec(text))!==null) ys.push(Number(m[1])); return ys.length?ys[ys.length-1]:null; }
function periodOf(y){ if(y>=1922&&y<=1940) return 'ussr_1922_1940'; if(y>=1941&&y<=1945) return 'ussr_1941_1945'; if(y>=1946&&y<=1953) return 'ussr_1946_1953'; if(y>=1954&&y<=1964) return 'ussr_1953_1964'; if(y>=1965&&y<=1985) return 'ussr_1964_1985'; if(y>=1986&&y<=1991) return 'ussr_1985_1991'; return null; }
function titleOf(text){ const lines=text.split('\n').map(s=>s.trim()).filter(Boolean); if(!lines.length) return null; let t=lines.find(l=>!l.startsWith('#'))||lines[0]; if(/^èñïîëíÿåò\s*:/i.test(t)&&lines[1]) t=lines[1]; t=t.replace(/^[-–—\s]+/,'').trim(); if(!t) return null; if(t.length>140) t=`${t.slice(0,137)}...`; return t; }

const raw = fs.readFileSync(inputPath,'utf8');
const lines = raw.split(/\r?\n/).filter(Boolean);
const rows=[];
const stats={totalLines:lines.length, parsed:0, withYear:0, imported:0, skippedNoYear:0, skippedNoText:0, skippedNoTitle:0, skippedOutOfScopeYear:0, ussr:0, empire:0};

for(const line of lines){
  let obj; try{ obj=JSON.parse(line); stats.parsed++; }catch{ continue; }
  const text=norm(obj.text); if(!text){ stats.skippedNoText++; continue; }
  const y=yearOf(text); if(!y){ stats.skippedNoYear++; continue; }
  stats.withYear++;
  if(y<1800||y>1991){ stats.skippedOutOfScopeYear++; continue; }
  const title=titleOf(text); if(!title){ stats.skippedNoTitle++; continue; }
  const country = y>1917 ? 'ussr' : 'russian_empire_1900_1917';
  const period = y>1917 ? periodOf(y) : null;
  if(y>1917) stats.ussr++; else stats.empire++;
  const idRaw=String(obj.message_id||'').trim()||`${stats.parsed}`;
  const id=`tg_${idRaw.replace(/[^a-zA-Z0-9_-]/g,'_')}`;
  const subtitle=norm(obj.from)||null;
  const notes=[obj.source_file?`source_file: ${obj.source_file}`:null,obj.date?`date: ${obj.date}`:null,obj.message_id?`message_id: ${obj.message_id}`:null].filter(Boolean).join(' | ')||null;
  rows.push({id,title,subtitle,lang:'ru',country,period,year:String(y),source:'Telegram ChatExport 2026-02-18',notes,lyrics:text});
}

stats.imported=rows.length;
fs.rmSync(outDir,{recursive:true,force:true});
fs.mkdirSync(outDir,{recursive:true});

let chunkIndex=0;
for(let i=0;i<rows.length;i+=SONGS_PER_CHUNK){
  const chunk=rows.slice(i,i+SONGS_PER_CHUNK);
  const sql=[];
  for(const r of chunk){
    sql.push(`INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('${escSql(r.id)}','${escSql(r.title)}',${r.subtitle?`'${escSql(r.subtitle)}'`:'NULL'},'${escSql(r.lang)}','${escSql(r.country)}',${r.period?`'${escSql(r.period)}'`:'NULL'},'${escSql(r.year)}','${escSql(r.source)}',${r.notes?`'${escSql(r.notes)}'`:'NULL'},'${escSql(r.lyrics)}','[]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='${escSql(r.id)}'), datetime('now')),datetime('now'));`);
    sql.push(`INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('${escSql(r.id)}','${escSql(r.title)}','${escSql(r.lyrics)}');`);
  }
  chunkIndex++;
  fs.writeFileSync(path.join(outDir,`${String(chunkIndex).padStart(4,'0')}.sql`), sql.join('\n')+'\n','utf8');
}

const report={...stats, chunks:chunkIndex, songsPerChunk:SONGS_PER_CHUNK, outDir};
fs.writeFileSync(reportPath, JSON.stringify(report,null,2),'utf8');
console.log(JSON.stringify(report,null,2));
