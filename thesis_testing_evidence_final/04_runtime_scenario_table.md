| scenario name | preconditions | steps | expected result | actual result | status |
| --- | --- | --- | --- | --- | --- |
| Application start and health | Local wrangler dev already started | GET /api/health | 200 OK | status=200 | PASS |
| Duplicate account handling | Existing registered user | POST /api/auth/register with the same email | 409 | status=409 | PASS |
| Invalid credentials | Known user exists | POST /api/auth/login with wrong password session | 401 | status=401 | PASS |
| Role bootstrap | Registered users promoted in local fixture | GET /api/me for admin and super admin | admin and super_admin roles visible | admin=admin; super=super_admin | PASS |
| Guest denial for protected actions | No login | GET /api/favorites and POST /api/songs/:id/comments | 401 | favorites=401; comment=401 | PASS |
| Song catalogue and pagination | Seeded public songs available | GET /api/songs?page=1 and page=2 | Non-empty first page and page count > 1 | total=18; pages=2; page2_items=8 | PASS |
| Search by title and lyrics | Published runtime song exists | GET /api/songs with full title, partial title, full lyric fragment and incomplete fragment | Full title, partial title and lyric fragment return the song; incomplete fragment only if supported | full=9; partial=5; lyrics=6; incomplete=6; empty=0 | PASS |
| Public filtering | Published runtime song with canonical metadata exists | GET /api/songs with each real public filter and a combined filter | Runtime song should be included in each matching result set | lang=true; country=true; period=true; year=true; performer=true; words=true; music=true; verified=true; recent=true; multiVersions=true; combined=true | PASS |
| Song card loading and guest restrictions | Published, draft and admin-content songs exist | GET /api/songs/:id for published and hidden records | Published song loads, draft and admin-only songs return 404 for guest | published=200; draft=404; adminOnly=404 | PASS |
| Multiple versions in one card | Published runtime song has two versions | GET /api/songs/:id | versions array present in same card payload | versions=2; links=2 | PASS |
| Favourites add/list/remove | Logged-in user | POST /api/favorites, GET /api/favorites, DELETE /api/favorites/:id | Song added, listed, then removed | add=200; listed=true; remove=200 | PASS |
| Comments create/list | Logged-in user and published song | POST then GET /api/songs/:id/comments | Comment appears in list | add=200; listed=true | PASS |
| New song and correction request submission | Logged-in normal user | POST /api/requests for new_song and edit_song | Both requests stored as new | new=200; edit=200 | PASS |
| Admin request moderation | Admin user with proposal permissions | GET /api/admin/requests then approve and reject different requests | Review queue visible and actions succeed | list=200; approve=200; reject=200 | PASS |
| Ordinary admin denied super-admin-only users endpoint | Admin logged in | GET /api/admin/users | 403 | status=403 | PASS |
| Super admin role assignment and revoke | Super admin logged in | GET /api/admin/users then PUT /api/admin/users/:id/role twice | User role can be elevated and reverted | list=200; promote=200; revoke=200 | PASS |
| Draft collaboration invite/accept/autosave | Owner draft exists; collaborator registered | Owner invites collaborator, collaborator accepts and autosaves | Collaborator gains access and can save | invite=200; accept=200; access=200; autosave=200 | PASS |
| Confidence marking persistence | Owner draft exists and websocket is reachable | Apply set_variant_confidence and set_variant_segments over websocket then reload draft | Non-default line and word-level confidence persists after reload | confidence=55; segments=[{"start":0,"end":4,"level":"unsure","confidence_level":"unsure","confidence":30},{"start":5,"end":9,"level":"sure","confidence_level":"sure","confidence":65}] | PASS |
| Draft publish | Owner draft exists | POST /api/drafts/:id/publish | Draft becomes published song | status=200; song=s36e5fd902e9869f6 | PASS |
| Admin verified filter after fix | Admin logged in and verified song exists | GET /api/admin/songs?verified=1 | Verified runtime song listed | status=200; contains=true | PASS |
| Logout and session invalidation | Logged-in user | POST /api/auth/logout then GET /api/me | 200 then 401 | logout=200; me=401 | PASS |