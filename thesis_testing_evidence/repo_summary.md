# Repository Summary

## Actual stack

- Frontend: static `index.html` + vanilla JavaScript SPA in [`app.js`](/C:/Users/svyat/Desktop/euro-songbook-cloudflare-fixed2-palette-api-fix(1)/app.js) and [`ui/render.js`](/C:/Users/svyat/Desktop/euro-songbook-cloudflare-fixed2-palette-api-fix(1)/ui/render.js)
- Styling: [`app.css`](/C:/Users/svyat/Desktop/euro-songbook-cloudflare-fixed2-palette-api-fix(1)/app.css)
- Hosting/runtime: Cloudflare Pages + Pages Functions, configured in [`wrangler.toml`](/C:/Users/svyat/Desktop/euro-songbook-cloudflare-fixed2-palette-api-fix(1)/wrangler.toml)
- Database: Cloudflare D1 / SQLite
- Search: SQLite FTS5 plus custom auxiliary search tables from [`functions/_lib/song-search.mjs`](/C:/Users/svyat/Desktop/euro-songbook-cloudflare-fixed2-palette-api-fix(1)/functions/_lib/song-search.mjs)
- Auth: JWT in HTTP-only cookie `songbook_session`
- Tests: Node built-in test runner and Python `unittest`

## Actual architecture

- Static SPA shell is served from repository root.
- Client-side hash router is defined in [`ui/router.js`](/C:/Users/svyat/Desktop/euro-songbook-cloudflare-fixed2-palette-api-fix(1)/ui/router.js).
- API is implemented in `functions/api/**`.
- Shared DB/auth helpers live in `functions/_lib/**`.
- DB schema is created/migrated at runtime by [`functions/_lib/schema.js`](/C:/Users/svyat/Desktop/euro-songbook-cloudflare-fixed2-palette-api-fix(1)/functions/_lib/schema.js).
- The app auto-seeds demo songs if the songs table is empty.

## Actual auth and role model

- Registration endpoint: `POST /api/auth/register`
- Login endpoint: `POST /api/auth/login`
- Logout endpoint: `POST /api/auth/logout`
- Current session endpoint: `GET /api/me`
- JWT cookie is signed with `JWT_SECRET`.
- Roles in schema: `user`, `admin`, `super_admin`
- RBAC is implemented with:
  - `users.role`
  - `user_permissions`
  - `user_scope_languages`
- Super-admin-only user management is implemented in `functions/api/admin/users*`.
- Permissions are language-scope aware for admin actions.
- Runtime execution in this session confirmed `user` role and protected-route denial for non-admin users.
- Runtime execution in this session did not obtain a working admin or super-admin session through the local config.

## Actual search and data model

Core tables from [`db/schema.sql`](/C:/Users/svyat/Desktop/euro-songbook-cloudflare-fixed2-palette-api-fix(1)/db/schema.sql):

- `users`
- `songs`
- `song_versions`
- `song_links`
- `favorites`
- `song_revisions`
- `song_requests`
- `drafts`
- `draft_collaborators`
- `draft_invitations`
- `draft_lines`
- `draft_line_variants`
- `draft_ops`
- `draft_snapshots`
- `songs_fts`

Observed search/filter query params in runtime code:

- `q`
- `page`
- `lang`
- `country`
- `period`
- `year`
- `performer`
- `words_author`
- `music_author`
- `verified`
- `recent`
- `multi_versions`

Not found as executable song-search filters in `functions/api/songs.js`:

- `theme`
- `tags`
- `region`
- `event`

Those fields exist on song records and in admin list queries, but not as public `/api/songs` filters.

## Actual routes and pages discovered

Hash routes discovered from router/render code and DOM:

- `#/` home / catalogue
- `#/song/:id`
- `#/request`
- `#/favorites`
- `#/drafts`
- `#/draft/:id`
- `#/fragment-reports`
- `#/admin/:section`

Admin sections discovered in render/API:

- `songs`
- `bulk-import`
- `backgrounds`
- `requests`
- `users`
- `editor`

API routes discovered in `functions/api/**`:

- `GET /api/health`
- `GET /api/songs`
- `GET /api/songs/:id`
- `GET|POST /api/songs/:id/comments`
- `POST /api/auth/register`
- `POST /api/auth/login`
- `POST /api/auth/logout`
- `GET /api/me`
- `GET /api/favorites`
- `POST|DELETE /api/favorites/:id`
- `POST /api/requests`
- `GET|POST /api/fragment-reports`
- `GET /api/fragment-reports/:id`
- `POST /api/fragment-reports/:id/messages`
- `GET|POST /api/drafts`
- `GET /api/drafts/:id`
- `POST /api/drafts/:id/autosave`
- `POST /api/drafts/:id/publish`
- `GET /api/drafts/:id/history`
- `POST /api/drafts/:id/invitations`
- `GET /api/drafts/invitations`
- `POST /api/drafts/invitations/:invite_id/accept`
- `POST /api/drafts/invitations/:invite_id/decline`
- `DELETE /api/drafts/invitations/:invite_id`
- `GET /api/admin/songs`
- `POST /api/admin/songs`
- `GET|PUT|DELETE /api/admin/songs/:id`
- `GET /api/admin/songs/:id/history`
- `POST /api/admin/songs/:id/restore`
- `GET /api/admin/requests`
- `POST /api/admin/requests/:id/approve`
- `POST /api/admin/requests/:id/reject`
- `GET /api/admin/users`
- `PUT /api/admin/users/:id/role`

