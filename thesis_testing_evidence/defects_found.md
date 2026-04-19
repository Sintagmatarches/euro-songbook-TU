# Defects Found

## 1. Public country and period filters do not match displayed seeded song metadata

- Severity: medium
- Fixed: not fixed
- Reproduction:
  1. Start local app with `npx wrangler pages dev . --port 8788 --local-protocol http`
  2. Open `GET /api/songs` and note song `s_demo_du_nai`
  3. Open `GET /api/songs/s_demo_du_nai` and observe `country = "Romania"` and `period = "folk"`
  4. Request `GET /api/songs?country=Romania`
  5. Request `GET /api/songs?period=folk`
- Observed:
  - Both filters returned `total = 0`
  - `lang=en` and `multi_versions=1` worked in the same runtime
- Impact:
  - Filtering evidence for country/period is not trustworthy against displayed metadata
  - This directly weakens thesis claims around filtering

## 2. Song card endpoint hardcodes `verified` to `false`

- Severity: medium
- Fixed: not fixed
- Reproduction:
  1. Run `npm run test:thesis-evidence`
  2. Observe failing test `song card endpoint returns metadata, versions, and external links`
  3. Inspect [`functions/api/songs/[id].js`](/C:/Users/svyat/Desktop/euro-songbook-cloudflare-fixed2-palette-api-fix(1)/functions/api/songs/[id].js)
- Observed:
  - The endpoint response sets `verified: false` instead of reading `song.verified`
  - Node test summary: `43 pass, 1 fail, 1 skipped`
- Impact:
  - Any thesis claim that a verified flag is correctly exposed on the public song card is unsafe

## 3. Local automated thesis test suite is not clean

- Severity: medium
- Fixed: not fixed
- Reproduction:
  1. Run `npm run test:thesis-evidence`
- Observed:
  - One repository test fails
  - This is not a tooling failure; it is a behavior mismatch in application code
- Impact:
  - It is dishonest to claim all automated repository tests pass

