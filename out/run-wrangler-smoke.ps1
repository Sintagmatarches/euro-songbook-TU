$ErrorActionPreference = "Stop"
Set-Location "c:\Users\svyat\Desktop\песенник 21 февраля\песенник 15 февраля\euro-songbook-cloudflare-fixed2-palette-api-fix(1)"
$env:ENABLE_SETUP = "1"
$env:JWT_SECRET = "d8d6543a3d1548268f5a84f01a13f89a793f03bc5897451b9629a2be3b26cfc8"
$env:SETUP_TOKEN = "31718e39bbfa4878aeb535aa952ae3d7122d818b7b734e87b8ac3a353ac912f1"
npx wrangler pages dev . --port 8788
