# Repository summary

Actual stack:
- Static single-page application served from `index.html`, `app.js`, `app.css`, and `ui/*`.
- Cloudflare Pages Functions backend in `functions/api/*`.
- Cloudflare D1 / SQLite local database via Wrangler.
- Node.js test suite (`node --test`) and Python `unittest` utilities.

Actual architecture:
- Public SPA routes are hash-based, including `#/song/:id`, `#/draft/:id`, `#/drafts`, `#/admin/requests`, and `#/admin/users`.
- Public catalogue and search are implemented in `functions/api/songs.js` with search helpers from `functions/_lib/song-search.mjs`.
- Song card data is served by `functions/api/songs/[id].js`.
- Drafts, collaboration, websocket operations, and publication are implemented in `functions/api/drafts*` and `functions/_lib/drafts.js`.
- Authentication uses JWT cookies from `functions/_lib/auth.js` and user records in D1.
- Role and permission checks are centralized in `functions/_lib/db.js` and `shared/admin-permissions.js`.

Actual auth and role model:
- Guest users can browse public songs only.
- Registered users can authenticate with cookie-based sessions and use favourites, comments, requests, and drafts.
- Admin users are permission-based and can moderate requests or manage songs only when the required permissions are granted.
- Super admin users can access `/api/admin/users`, assign or revoke admin roles, and configure permission scopes.

Actual search and data model:
- Public search supports title and lyrics queries plus public filters for `lang`, `country`, `period`, `year`, `performer`, `words_author`, `music_author`, `verified`, `recent`, and `multi_versions`.
- Song records store metadata such as title, subtitle, language, country, period, region, event, theme, verified flag, year, source, notes, verified translation, lyrics, versions, and links.
- Drafts store snapshot metadata, line-level variants, confidence values, confidence segments, invitations, collaborators, and persisted operations.

Actual routes and pages discovered:
- Public API: `/api/health`, `/api/songs`, `/api/songs/:id`, `/api/songs/:id/comments`, `/api/favorites`, `/api/requests`, `/api/drafts`, `/api/drafts/:id`, `/api/drafts/:id/autosave`, `/api/drafts/:id/publish`, `/api/drafts/:id/ws`, `/api/drafts/invitations`, `/api/auth/register`, `/api/auth/login`, `/api/auth/logout`, `/api/me`.
- Admin API: `/api/admin/requests`, `/api/admin/requests/:id/approve`, `/api/admin/requests/:id/reject`, `/api/admin/songs`, `/api/admin/users`, `/api/admin/users/:id/role`.
- Browser pages captured: home, song page, compare view in the same song page, admin requests, admin users, and draft editor.
