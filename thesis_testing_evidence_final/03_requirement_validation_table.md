| requirement number | claim | test method | executed scenario | result | evidence | comment |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | song catalogue | runtime API and code inspection | Public catalogue paging and browse requests executed | PASS | /api/songs?page=1 and page=2 returned public songs |  |
| 2 | title search | runtime API and code inspection | Full and partial title search executed | PASS | Song s7971c442ee1f1e0e returned by full and partial title queries |  |
| 3 | lyrics search | runtime API and code inspection | Lyrics fragment search executed | PASS | Song s7971c442ee1f1e0e returned by full lyric fragment query |  |
| 4 | filtering | runtime API and code inspection | Public filter matrix executed | PASS | lang/country/period/year/performer/words_author/music_author/verified/recent/multi_versions and combined filter checked | Status improved after minimal fix rerun. |
| 5 | song card | runtime API and code inspection | Song card API and browser page executed | PASS | Published card loaded; guest denied hidden or admin-only content | Status improved after minimal fix rerun. |
| 6 | multiple versions | runtime API and code inspection | Song card API executed | PASS | Versions returned in same card payload |  |
| 7 | version comparison | runtime API and code inspection | Browser same-page compare capture executed | PARTIAL | Diff container captured in same song page |  |
| 8 | external links | runtime API and code inspection | Song card API executed | PASS | External links stored and returned |  |
| 10 | guest access | runtime API and code inspection | Guest and protected action checks executed | PASS | Guests can browse public songs but protected actions return 401/404 |  |
| 11 | favourites | runtime API and code inspection | Runtime user actions executed | PASS | Add/list/remove favourite succeeded |  |
| 12 | comments | runtime API and code inspection | Comments create/list executed | PASS | Create/list verified; no edit/delete route found |  |
| 13 | new song request | runtime API and code inspection | Runtime request submission executed | PASS | new_song request stored |  |
| 14 | correction request | runtime API and code inspection | Runtime request submission executed | PASS | edit_song request stored |  |
| 15 | drafts | runtime API and code inspection | Draft create/autosave/publish executed | PASS | Draft created, autosaved, then published |  |
| 16 | draft collaboration | runtime API and code inspection | Invite/accept/autosave executed | PASS | Collaborator obtained access and saved changes |  |
| 17 | role model | runtime API and code inspection | Role bootstrap and /api/me executed | PASS | guest/user/admin/super_admin separated at runtime |  |
| 18 | request moderation | runtime API and code inspection | Admin moderation endpoints executed | PARTIAL | Approve and reject verified; no send-for-revision endpoint found |  |
| 19 | super admin permissions | runtime API and code inspection | Admin denial and super-admin role management executed | PASS | Super admin managed users; ordinary admin was denied |  |
| 20 | authentication and protection | runtime API and code inspection | Register/login/logout/me/protected endpoints executed | PASS | Authentication flow and logout invalidation verified |  |
| 21 | confidence marking | runtime API and code inspection | Draft websocket operations executed | PASS | Line-level and segment-level confidence persisted after reload |  |