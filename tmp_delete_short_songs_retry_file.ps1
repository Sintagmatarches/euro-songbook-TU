$ErrorActionPreference = 'Stop'

$query = "WITH song_stats AS ( SELECT id, title, trim(replace(replace(replace(coalesce(lyrics, ''), char(10), ' '), char(13), ' '), char(9), ' ')) AS cleaned FROM songs ) SELECT id FROM song_stats WHERE length(cleaned) > 0 AND (length(cleaned) - length(replace(cleaned, ' ', '')) + 1) < 40 ORDER BY id ASC;"
$raw = npx wrangler d1 execute euro-songbook-db --remote --command $query 2>&1 | Out-String
$start = $raw.IndexOf("[")
if ($start -lt 0) { throw "Failed to locate JSON in wrangler output.`n$raw" }
$data = ($raw.Substring($start) | ConvertFrom-Json)
$ids = @($data[0].results | ForEach-Object { [string]$_.id } | Where-Object { $_ })
Write-Host "Remaining short songs to delete: $($ids.Count)"
if ($ids.Count -eq 0) { exit 0 }

for ($offset = 0; $offset -lt $ids.Count; $offset += 100) {
  $last = [Math]::Min($offset + 99, $ids.Count - 1)
  $chunk = if ($offset -eq $last) { @($ids[$offset]) } else { @($ids[$offset..$last]) }
  $quoted = ($chunk | ForEach-Object { "'" + ($_.Replace("'", "''")) + "'" }) -join ", "
  $sql = @"
DELETE FROM song_revisions WHERE song_id IN ($quoted);
DELETE FROM songs_fts WHERE song_id IN ($quoted);
DELETE FROM song_search_terms WHERE song_id IN ($quoted);
DELETE FROM songs WHERE id IN ($quoted);
"@
  Set-Content -LiteralPath tmp_short_chunk.sql -Value $sql
  $out = npx wrangler d1 execute euro-songbook-db --remote --file tmp_short_chunk.sql 2>&1 | Out-String
  if ($LASTEXITCODE -ne 0) {
    throw "Chunk delete failed for $offset..$last`n$out"
  }
  Write-Host "Deleted chunk $offset..$last"
}
