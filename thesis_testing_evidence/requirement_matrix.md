# Requirement Matrix

| requirement | verified | evidence type | exact test or scenario | status |
|---|---|---|---|---|
| 1 song catalogue | yes | runtime API + browser DOM | `GET /api/songs`; home page loaded in headless Edge | pass |
| 2 title search | yes | runtime API | full title `At The River Gate`, partial title `At` | pass |
| 3 lyrics search | yes | runtime API | lyric fragment `At the river gate I stan` | pass |
| 4 filtering | no | runtime API | `lang=en`, `country=Romania`, `period=folk`, `recent=1`, `multi_versions=1` | fail |
| 5 song card | yes | runtime API + browser DOM | `GET /api/songs/s_demo_du_nai`; `#/song/s_demo_du_nai` | pass |
| 6 multiple versions | yes | runtime API + browser DOM | seeded song returned one stored version plus original | pass |
| 7 version comparison | no | browser DOM only | compare controls rendered in same song card; actual diff output not toggled | not tested |
| 8 external links | yes | runtime API + browser DOM | song card links/listen panel | pass |
| 9 predefined AI prompt buttons | yes | browser DOM + code inspection | prompt buttons and prompt dialog rendered; no AI backend route found | pass |
| 10 guest access | yes | runtime API + browser DOM | guest POSTs denied, guest hint shown on song page | pass |
| 11 favourites | yes | runtime API | add favorite, list favorite, remove favorite | pass |
| 12 comments | yes | runtime API | create comment and list comments | pass |
| 13 new song request | yes | runtime API | `POST /api/requests` new-song payload | pass |
| 14 correction request | yes | runtime API | `POST /api/requests` edit-song payload; fragment report creation | pass |
| 15 drafts | yes | runtime API | create, autosave, read, publish draft | pass |
| 16 draft collaboration | yes | runtime API | owner invite, collaborator accept, collaborator autosave | pass |
| 17 role model | no | runtime API + code inspection | user role and denials executed; admin/super-admin runtime hierarchy not obtained | not tested |
| 18 request moderation | no | code only | approve/reject routes exist, but no admin execution | not tested |
| 19 super admin permissions | no | code only | user management routes exist, but no super-admin execution | not tested |
| 20 authentication and protection | yes | runtime API + existing repo tests | register/login/logout/invalid credentials/me-after-logout/401 on protected actions | pass |
| 21 confidence marking | no | runtime draft detail + code inspection | default confidence fields observed; non-default line/word confidence editing not executed | not tested |

