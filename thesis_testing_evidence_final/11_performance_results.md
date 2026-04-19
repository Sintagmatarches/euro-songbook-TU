| check | runs | min ms | max ms | mean ms | environment note |
| --- | --- | --- | --- | --- | --- |
| health | 1 | 23.74 | 23.74 | 23.74 | HTTP http://127.0.0.1:8788/api/health |
| guest favorites denied | 1 | 11.21 | 11.21 | 11.21 | HTTP http://127.0.0.1:8788/api/favorites |
| catalogue page1 | 1 | 15.71 | 15.71 | 15.71 | HTTP http://127.0.0.1:8788/api/songs?page=1 |
| catalogue page2 | 1 | 14.28 | 14.28 | 14.28 | HTTP http://127.0.0.1:8788/api/songs?page=2 |
| search title full | 1 | 30.66 | 30.66 | 30.66 | HTTP http://127.0.0.1:8788/api/songs?q=Thesis%20Runtime%20Song%20mo4dfp00 |
| search title partial | 1 | 25.33 | 25.33 | 25.33 | HTTP http://127.0.0.1:8788/api/songs?q=Runtime%20Song |
| search lyrics | 1 | 32.99 | 32.99 | 32.99 | HTTP http://127.0.0.1:8788/api/songs?q=Workers%20sing%20in%20morning%20light |
| search incomplete fragment | 1 | 26.49 | 26.49 | 26.49 | HTTP http://127.0.0.1:8788/api/songs?q=Workers%20morning%20light |
| search empty result | 1 | 21.88 | 21.88 | 21.88 | HTTP http://127.0.0.1:8788/api/songs?q=__nohit_b2309fdf-18e2-418a-b155-5d6388a8d64c__ |
| song card | 1 | 18.24 | 18.24 | 18.24 | HTTP http://127.0.0.1:8788/api/songs/s7971c442ee1f1e0e |
| browser home_page | 1 | 4557.10 | 4557.10 | 4557.10 | Headless Edge #/ |
| browser song_page | 1 | 4565.26 | 4565.26 | 4565.26 | Headless Edge #/song/s7971c442ee1f1e0e |
| browser song_compare_page | 1 | 9294.44 | 9294.44 | 9294.44 | Headless Edge #/song/s7971c442ee1f1e0e |
| browser admin_requests_page | 1 | 4561.18 | 4561.18 | 4561.18 | Headless Edge #/admin/requests?status=new |
| browser admin_users_page | 1 | 4593.78 | 4593.78 | 4593.78 | Headless Edge #/admin/users |
| browser draft_editor_page | 1 | 4552.01 | 4552.01 | 4552.01 | Headless Edge #/draft/dd1438e5abb049e42 |