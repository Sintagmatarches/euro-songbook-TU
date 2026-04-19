# Song card and versions results

Executed checks:
- Opened the song card through GET /api/songs/s7971c442ee1f1e0e.
- Verified metadata loading for title, language, country, period, year, source, links, versions, notes, and verified translation fields where they exist.
- Verified guest denial for unpublished and admin-only content by executing GET /api/songs/s7a04e209c30d6ba2 and GET /api/songs/s62f43fd6d63d1711 as guest.
- Verified that multiple versions are stored and returned inside the same song card payload.
- Captured browser evidence for the same-page comparison area in the song route rather than a separate comparison page.
