const { spawnSync } = require('node:child_process');
const fs = require('node:fs');

function run(args) {
  const res = spawnSync('cmd.exe', ['/c', ...args], { encoding: 'utf8' });
  if (res.status !== 0) {
    throw new Error((res.stdout || '') + '\n' + (res.stderr || ''));
  }
  return (res.stdout || '') + (res.stderr || '');
}

const raw = run(['npx', 'wrangler', 'd1', 'execute', 'euro-songbook-db', '--remote', '--json', '--file', 'tmp_select_short_ids.sql']);
const start = raw.indexOf('[');
if (start < 0) throw new Error('Failed to locate JSON in output\n' + raw);
const data = JSON.parse(raw.slice(start));
const ids = (data?.[0]?.results || []).map((row) => String(row.id || '').trim()).filter(Boolean);
console.log(`Remaining short songs to delete: ${ids.length}`);
for (let offset = 0; offset < ids.length; offset += 100) {
  const chunk = ids.slice(offset, offset + 100);
  const quoted = chunk.map((id) => `'${id.replace(/'/g, "''")}'`).join(', ');
  const sql = [
    `DELETE FROM song_revisions WHERE song_id IN (${quoted});`,
    `DELETE FROM songs_fts WHERE song_id IN (${quoted});`,
    `DELETE FROM song_search_terms WHERE song_id IN (${quoted});`,
    `DELETE FROM songs WHERE id IN (${quoted});`
  ].join('\n');
  fs.writeFileSync('tmp_short_chunk.sql', sql);
  run(['npx', 'wrangler', 'd1', 'execute', 'euro-songbook-db', '--remote', '--file', 'tmp_short_chunk.sql']);
  console.log(`Deleted chunk ${offset}..${offset + chunk.length - 1}`);
}
