# Feature Inventory

| feature | exists in code | executed | evidence source | notes |
|---|---|---:|---|---|
| song catalogue | yes | yes | `GET /api/songs`, headless browser home DOM | Browse returned demo songs and page shell loaded |
| title search | yes | yes | `GET /api/songs?q=...` | Full and partial title search executed |
| lyrics search | yes | yes | `GET /api/songs?q=<lyric fragment>` | Lyric fragment search returned target song |
| filtering | yes | yes | `GET /api/songs?lang=...`, `country=...`, `period=...`, `recent=1`, `multi_versions=1` | Lang/recent/multi_versions worked; country and period failed on seeded song |
| song card | yes | yes | `GET /api/songs/:id`, headless browser song DOM | Metadata, links, versions rendered |
| multiple versions | yes | yes | `GET /api/songs/:id`, headless browser song DOM | One seeded variant plus original |
| version comparison | yes | partially | headless browser song DOM | Compare controls rendered inside same card; actual diff interaction not executed |
| external links | yes | yes | `GET /api/songs/:id`, headless browser song DOM | YouTube link rendered in listen panel |
| predefined AI prompt buttons | yes | partially | headless browser song DOM, README, no AI API routes found | Buttons rendered; no backend AI generation route found; click flow not executed end-to-end |
| guest access | yes | yes | guest POSTs to favorites/comments/requests/drafts, browser hints | Protected actions returned 401/guest hints shown |
| favourites | yes | yes | add/list/delete runtime flow | Works for logged-in user |
| comments | yes | yes | create/list runtime flow | Create/list executed; edit/delete not found in API |
| new song request | yes | yes | `POST /api/requests` | Returned `mode=request` and `status=new` |
| correction request | yes | yes | `POST /api/requests` with `request_kind=edit_song`; fragment report flow | Edit-song request path exists and executed |
| drafts | yes | yes | create/detail/autosave/publish runtime flow | Owner draft lifecycle executed |
| draft collaboration | yes | yes | invite/list/accept/collaborator autosave runtime flow | Last-write style autosave observed; real-time WS not executed |
| role model | yes | partially | schema/auth/admin code; `/api/me`; protected route denials | `user` role executed; admin/super-admin hierarchy not obtained in runtime |
| request moderation | yes | no | admin request API exists in code | No admin session available in runtime |
| super admin permissions | yes | no | super-admin endpoints exist in code | No super-admin session available in runtime |
| authentication and protection | yes | yes | register/login/logout/me/invalid login/guest denial runtime flow | Core auth/session behavior executed |
| confidence marking | yes | partially | draft detail after autosave, `shared/lyrics-confidence.js` | Line confidence fields observed with default `100/exact`; non-default edits not executed |

