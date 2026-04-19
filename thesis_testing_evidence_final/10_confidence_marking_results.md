# Confidence marking results

Executed scenario:
- Opened websocket /api/drafts/dd1438e5abb049e42/ws with authenticated token.
- Applied set_variant_confidence with value 55.
- Applied set_variant_segments with two non-default confidence segments.
- Reloaded the draft through GET /api/drafts/dd1438e5abb049e42.

Observed result:
- The targeted variant persisted confidence value 55 after reload.
- Two non-default word-range confidence segments persisted after reload.
- This provides executed evidence for both line-level and word-level confidence storage and retrieval.
