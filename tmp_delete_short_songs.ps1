$ErrorActionPreference = 'Stop'

$query = "WITH song_stats AS ( SELECT id, title, trim(replace(replace(replace(coalesce(lyrics, ''), char(10), ' '), char(13), ' '), char(9), ' ')) AS cleaned FROM songs ) SELECT id FROM song_stats WHERE length(cleaned) > 0 AND (length(cleaned) - length(replace(cleaned, ' ', '')) + 1) < 40 ORDER BY id ASC;"
$raw = npx wrangler d1 execute euro-songbook-db --remote --command $query 2>&1 | Out-String
$start = $raw.IndexOf("[")
if ($start -lt 0) { throw "Failed to locate JSON in wrangler output.`n$raw" }
$json = $raw.Substring($start)
$data = $json | ConvertFrom-Json
$rows = @($data[0].results)
$ids = @($rows | ForEach-Object { [string]$_.id } | Where-Object { $_ })
Write-Host "Short songs to delete: $($ids.Count)"
if ($ids.Count -eq 0) { exit 0 }

for ($offset = 0; $offset -lt $ids.Count; $offset += 100) {
  $last = [Math]::Min($offset + 99, $ids.Count - 1)
  $chunk = if ($offset -eq $last) { @($ids[$offset]) } else { @($ids[$offset..$last]) }
  $quoted = ($chunk | ForEach-Object { "'" + ($_.Replace("'", "''")) + "'" }) -join ", "
  $sql = "DELETE FROM song_revisions WHERE song_id IN ($quoted); DELETE FROM songs_fts WHERE song_id IN ($quoted); DELETE FROM song_search_terms WHERE song_id IN ($quoted); DELETE FROM songs WHERE id IN ($quoted);"
  npx wrangler d1 execute euro-songbook-db --remote --command $sql | Out-Null
  Write-Host "Deleted chunk $offset..$last"
}

$finalSql = "DELETE FROM song_search_vocab; DELETE FROM song_search_deletes; INSERT INTO app_meta (key, value, updated_at) VALUES ('data.short_song_cleanup.version', '2026-04-20-short-lyrics-v1', datetime('now')) ON CONFLICT(key) DO UPDATE SET value=excluded.value, updated_at=datetime('now');"
npx wrangler d1 execute euro-songbook-db --remote --command $finalSql | Out-Null
