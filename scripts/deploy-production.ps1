$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$bundle = Join-Path $root "tmp_pages_deploy_production"

if (!(Test-Path $bundle)) {
  New-Item -ItemType Directory -Path $bundle | Out-Null
}

$topFiles = @(
  ".wranglerignore",
  "_headers",
  "app.css",
  "app.js",
  "apple-touch-icon.png",
  "favicon.ico",
  "index.html",
  "manifest.webmanifest",
  "package-lock.json",
  "package.json",
  "robots.txt",
  "service-worker.js",
  "wrangler.toml"
)

foreach ($file in $topFiles) {
  $source = Join-Path $root $file
  if (Test-Path -LiteralPath $source) {
    Copy-Item -Path $source -Destination (Join-Path $bundle $file) -Force
  }
}

$dirs = @("functions", "ui", "shared", "picture")
foreach ($dir in $dirs) {
  $source = Join-Path $root $dir
  $dest = Join-Path $bundle $dir
  robocopy $source $dest /MIR /NFL /NDL /NJH /NJS /NC /NS | Out-Null
  if ($LASTEXITCODE -gt 7) {
    throw "robocopy failed for $dir with exit code $LASTEXITCODE"
  }
}

Push-Location $root
try {
  npx wrangler pages deploy $bundle --project-name euro-songbook --branch main --commit-dirty=true
  if ($LASTEXITCODE -ne 0) {
    throw "wrangler pages deploy failed with exit code $LASTEXITCODE"
  }
} finally {
  Pop-Location
}
