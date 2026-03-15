DELETE FROM song_links WHERE song_id = 'pisniua_887705';
DELETE FROM song_versions WHERE song_id = 'pisniua_887705';
DELETE FROM songs_fts WHERE song_id = 'pisniua_887705';
DELETE FROM songs WHERE id = 'pisniua_887705';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_887705','А вже осінь','Музика: Володимир Домшинський Слова: Вадим Крищенко. Виконує: Іво Бобул','uk','ukraine_1991',NULL,NULL,'аудіозапис','романс','А вже осінь прийшла у мій сад,
Em
Забагрянила пишний наряд,
Am
Затуманила вись голубу
І ронила у серці журбу.
Затуманила вись голубу
І ронила у серці журбу.
А вже осінь прийшла у мій сад,    |
Я ж не кликав її - "Йди назад,    |
F#m
Не обтрушуй зелені гаї            |
І не стукай у вікна мої."         | (2)
А вже осінь прийшла у мій сад,
Цвіт кохання замів листопад,
Хоч багато барвистих одеж,        |
А того, що було не вернеш.        | (2)
А вже осінь прийшла у мій сад,    |
І так швидко, і так невпопад,     |
Все притихло змінилось скрізь,    |
Я ще літом п''янким не зігрівсь.   | (2)
Не прошу я дарунків твоїх,
Не шукаю осінніх утіх.
А вже осінь прийшла у мій сад.    |
"Я ж не кликав тебе, йди назад!"  | (2)
А вже осінь прийшла у мій сад.
"Я ж не кликав тебе, йди назад!
Не обтрушуй зелені гаї
І не стукай у вікна мої!"
А вже осінь прийшла у мій сад,
І так швидко, і так невпопад,
Все притихло змінилось скрізь,    |
Я ще літом п''янким не зігрівсь... | (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:nostalgia'', ''cat:romansy'', ''Пісні про красу природи'', ''Пісні з ностальгічними мотивами'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_887705'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_887705','А вже осінь','А вже осінь прийшла у мій сад,
Em
Забагрянила пишний наряд,
Am
Затуманила вись голубу
І ронила у серці журбу.
Затуманила вись голубу
І ронила у серці журбу.
А вже осінь прийшла у мій сад,    |
Я ж не кликав її - "Йди назад,    |
F#m
Не обтрушуй зелені гаї            |
І не стукай у вікна мої."         | (2)
А вже осінь прийшла у мій сад,
Цвіт кохання замів листопад,
Хоч багато барвистих одеж,        |
А того, що було не вернеш.        | (2)
А вже осінь прийшла у мій сад,    |
І так швидко, і так невпопад,     |
Все притихло змінилось скрізь,    |
Я ще літом п''янким не зігрівсь.   | (2)
Не прошу я дарунків твоїх,
Не шукаю осінніх утіх.
А вже осінь прийшла у мій сад.    |
"Я ж не кликав тебе, йди назад!"  | (2)
А вже осінь прийшла у мій сад.
"Я ж не кликав тебе, йди назад!
Не обтрушуй зелені гаї
І не стукай у вікна мої!"
А вже осінь прийшла у мій сад,
І так швидко, і так невпопад,
Все притихло змінилось скрізь,    |
Я ще літом п''янким не зігрівсь... | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_887705_l1','pisniua_887705','YouTube','https://www.youtube.com/watch?v=TnafKmvjE9o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_887705_l2','pisniua_887705','YouTube','https://www.youtube.com/watch?v=9jJYK9mlrIg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_887705_l3','pisniua_887705','YouTube','https://www.youtube.com/watch?v=dsEP-SzOyso','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_887705_l4','pisniua_887705','YouTube','https://www.youtube.com/watch?v=jZqXU-wMfRI','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_887705_l5','pisniua_887705','YouTube','https://www.youtube.com/watch?v=J-MAi-vJQEk','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_892373';
DELETE FROM song_versions WHERE song_id = 'pisniua_892373';
DELETE FROM songs_fts WHERE song_id = 'pisniua_892373';
DELETE FROM songs WHERE id = 'pisniua_892373';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_892373','Купала на Йвана','Українська народна пісня. Виконує: Коралі','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Купала на Йвана,
Купала на Йвана.

На Купала нічка мала,
В нас на вулиці Купала.
Купала на Йвана.

Йшли дівки по ягідки,
Молодиці по суниці.
Купала на Йвана.

Та й пришлося річку брести,
Річку брести, Дунай плисти.
Купала на Йвана.

Купала на Йвана,
Купала на Йвана.

Усі дівки перебрели,
Молода Марійеа утонула.
Купала на Йвана.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_892373'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_892373','Купала на Йвана','Купала на Йвана,
Купала на Йвана.

На Купала нічка мала,
В нас на вулиці Купала.
Купала на Йвана.

Йшли дівки по ягідки,
Молодиці по суниці.
Купала на Йвана.

Та й пришлося річку брести,
Річку брести, Дунай плисти.
Купала на Йвана.

Купала на Йвана,
Купала на Йвана.

Усі дівки перебрели,
Молода Марійеа утонула.
Купала на Йвана.');
DELETE FROM song_links WHERE song_id = 'pisniua_888312';
DELETE FROM song_versions WHERE song_id = 'pisniua_888312';
DELETE FROM songs_fts WHERE song_id = 'pisniua_888312';
DELETE FROM songs WHERE id = 'pisniua_888312';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_888312','Червона калина','(Хай живе вільна Україна). Музика: П. Процько, Юрій Марштупа Слова: Микола Шапошник. Виконує: Гопак','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Як у Цареграді, славних козаченьків,
Am
Вражі бусурмани, вішали на гак.
Глянувши востаннє на цей світ біленький,
У смертну годину козак мовив так:
Приспів:
Хай живе, живе вільна Україна.
Am
Хай живуть, живуть вічно козаки.
Хай цвіте, хай цвіте червона калина.
Нехай згинуть воріженьки на вічні віки. | (2)
Як вороги кляті нас на кіл сажали,
Як живцем палили, у смолі пекли,
Козаки у ката життя не благали
Про долю країни думи їх були.
Приспів.
Хто живе на світі і хто жити буде,
Хто шляхи козацькі буде ще топтать,
Щоб буяла воля, щоб раділи люди, -
Дай їм, Бог, востаннє ці слова сказать.
Приспів.
Речитатив:
Хай ніколи не побачить сонця той,
Хто зрадив Батьківщину,
Як Каїну, першому вбивці на землі,
Ніколи не було, нема і не буде прощення.
Хай так і не буде прощення тим,
Хто заради лаковства проклятого,
Вбив у серці своїм
Волелюбний дух народу нашого,
Відцурався віри християнської!
Приспів.
Нехай згинуть воріженьки на вічні віки!
Гей-гей!','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_888312'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_888312','Червона калина','Як у Цареграді, славних козаченьків,
Am
Вражі бусурмани, вішали на гак.
Глянувши востаннє на цей світ біленький,
У смертну годину козак мовив так:
Приспів:
Хай живе, живе вільна Україна.
Am
Хай живуть, живуть вічно козаки.
Хай цвіте, хай цвіте червона калина.
Нехай згинуть воріженьки на вічні віки. | (2)
Як вороги кляті нас на кіл сажали,
Як живцем палили, у смолі пекли,
Козаки у ката життя не благали
Про долю країни думи їх були.
Приспів.
Хто живе на світі і хто жити буде,
Хто шляхи козацькі буде ще топтать,
Щоб буяла воля, щоб раділи люди, -
Дай їм, Бог, востаннє ці слова сказать.
Приспів.
Речитатив:
Хай ніколи не побачить сонця той,
Хто зрадив Батьківщину,
Як Каїну, першому вбивці на землі,
Ніколи не було, нема і не буде прощення.
Хай так і не буде прощення тим,
Хто заради лаковства проклятого,
Вбив у серці своїм
Волелюбний дух народу нашого,
Відцурався віри християнської!
Приспів.
Нехай згинуть воріженьки на вічні віки!
Гей-гей!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l1','pisniua_888312','YouTube','https://www.youtube.com/watch?v=I6QLrMRQwpA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l2','pisniua_888312','YouTube','https://www.youtube.com/watch?v=0CR19oYHe6w','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l3','pisniua_888312','YouTube','https://www.youtube.com/watch?v=50-2Di9c8jc','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l4','pisniua_888312','YouTube','https://www.youtube.com/watch?v=aPAM7ZjVlAU','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l5','pisniua_888312','YouTube','https://www.youtube.com/watch?v=HpFvbc4HNXg','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l6','pisniua_888312','YouTube','https://www.youtube.com/watch?v=I764h6fG7Kg','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l7','pisniua_888312','YouTube','https://www.youtube.com/watch?v=kOCbaJuTwaY','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l8','pisniua_888312','YouTube','https://www.youtube.com/watch?v=qHspKQNk21I','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l9','pisniua_888312','YouTube','https://www.youtube.com/watch?v=MyvLAHSxwpY','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l10','pisniua_888312','YouTube','https://www.youtube.com/watch?v=PgA4MH-Tskw','video',NULL,10);
DELETE FROM song_links WHERE song_id = 'pisniua_88950';
DELETE FROM song_versions WHERE song_id = 'pisniua_88950';
DELETE FROM songs_fts WHERE song_id = 'pisniua_88950';
DELETE FROM songs WHERE id = 'pisniua_88950';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_88950','Іваночку, мій браточку','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Ой на Івана та й на Купайла...- Львів: Студентське братство ЛНУ ім.І.Франка, 2002',NULL,'Іваночку, мій браточку,
не губи мене в суботочку,
бо субота - Купалонька,
не купалася Маренонька.

Згуби мене в неділеньку,
поховай мене в беріженьку.
Вода корінь омиває,
тіло Сонечко вигріває.    Основна мелодія','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_88950'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_88950','Іваночку, мій браточку','Іваночку, мій браточку,
не губи мене в суботочку,
бо субота - Купалонька,
не купалася Маренонька.

Згуби мене в неділеньку,
поховай мене в беріженьку.
Вода корінь омиває,
тіло Сонечко вигріває.    Основна мелодія');
DELETE FROM song_links WHERE song_id = 'pisniua_893552';
DELETE FROM song_versions WHERE song_id = 'pisniua_893552';
DELETE FROM songs_fts WHERE song_id = 'pisniua_893552';
DELETE FROM songs WHERE id = 'pisniua_893552';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_893552','Святий Миколай','Музика: Оксана Сеньків Слова: Оксана Сеньків. Виконує: Оксана Сеньків','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'За вікном летять сніжинки,
Миколай спішить до нас.
Прикрашаємо ялинки,
Настає різдвяний час.

Коли мрії оживають,
Коли в казку вірять всі,
Вогники яскраво сяють,
Закликають в кожний дім.

Приспів: (2)
Святий, святий Миколай,
Ти до нас прийди, прийди,
Святий, святий Миколай,
Подарунки принеси!

Ми чекаємо на Тебе
Цілий довгий-довгий рік.
Нам з тобою так весело,
Ти приносиш радість, сміх.

Просимо Тебе ласкаво,
Не забудь, не оминай,
Своїх діточок вкраїнських
Із святами привітай!

Приспів. (2)

З Різдвом Христовим!','[''pisni.org.ua'', ''cat:christian'', ''cat:dytyachi'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''cat:svyatyy-mykolay'', ''Пісні на християнську тематику'', ''Дитячі пісні'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_893552'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_893552','Святий Миколай','За вікном летять сніжинки,
Миколай спішить до нас.
Прикрашаємо ялинки,
Настає різдвяний час.

Коли мрії оживають,
Коли в казку вірять всі,
Вогники яскраво сяють,
Закликають в кожний дім.

Приспів: (2)
Святий, святий Миколай,
Ти до нас прийди, прийди,
Святий, святий Миколай,
Подарунки принеси!

Ми чекаємо на Тебе
Цілий довгий-довгий рік.
Нам з тобою так весело,
Ти приносиш радість, сміх.

Просимо Тебе ласкаво,
Не забудь, не оминай,
Своїх діточок вкраїнських
Із святами привітай!

Приспів. (2)

З Різдвом Христовим!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_893552_l1','pisniua_893552','YouTube','https://www.youtube.com/watch?v=SvK86oG1Kbg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_893552_l2','pisniua_893552','YouTube','https://www.youtube.com/watch?v=MH3uG-wUfdU','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_891307';
DELETE FROM song_versions WHERE song_id = 'pisniua_891307';
DELETE FROM songs_fts WHERE song_id = 'pisniua_891307';
DELETE FROM songs WHERE id = 'pisniua_891307';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_891307','Святий Миколай','Музика: Б. Дашак Слова: Б. Дашак. Виконує: Павло Табаков','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Святого Миколая празник приходить,
І усі негаразди з святом цим проходять.        | (2)
Краснії подарунки дітям приносить
В кожен дім, діти знають, з радістю приходить. | (2)

Приспів:
Як зіронька в небі зійде, як білий сніг тихо паде,
З подарунком Миколай прийде.

Свято у кожну хату Миколай приносить.
Різні дарунки має, хто які попросить.          | (2)
Святому Миколаю пісню співаєм,
Злагоди і любові вам усім бажаєм.              | (2)

Приспів.','[''pisni.org.ua'', ''cat:christian'', ''cat:svyatyy-mykolay'', ''Пісні на християнську тематику'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_891307'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_891307','Святий Миколай','Святого Миколая празник приходить,
І усі негаразди з святом цим проходять.        | (2)
Краснії подарунки дітям приносить
В кожен дім, діти знають, з радістю приходить. | (2)

Приспів:
Як зіронька в небі зійде, як білий сніг тихо паде,
З подарунком Миколай прийде.

Свято у кожну хату Миколай приносить.
Різні дарунки має, хто які попросить.          | (2)
Святому Миколаю пісню співаєм,
Злагоди і любові вам усім бажаєм.              | (2)

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_893575';
DELETE FROM song_versions WHERE song_id = 'pisniua_893575';
DELETE FROM songs_fts WHERE song_id = 'pisniua_893575';
DELETE FROM songs WHERE id = 'pisniua_893575';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_893575','Мій любий тато','Музика: Оксана Сеньків Слова: Оксана Сеньків. Виконує: Оксана Сеньків','uk','ukraine_1991',NULL,NULL,'1. Авторське подання',NULL,'Як можна не любити свого тата,
Для мене він взірець, найкращий серед всіх.
В нас разом так спільного багато,
І він найдійніший із друзів на землі.

Приспів:
О тато, тато, мій добрий тато,
Тебе я дуже люблю, люблю я тебе!
О тато, тато, мій сильний тато,
Тебе я дуже люблю, люблю я тебе!

Зі мною їздить він велосипедом,
Бере з собою в гори на пікнік,
Купив забавки а також Нінтендо,
І ще й мобілку класну він приніс!

Приспів.

Боронить часом він мене від мами,
Коли вона за щось-небудь сварить.
Йому я довіряю всі секрети,
Мене від всіх проблем він захистить!

Приспів','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_893575'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_893575','Мій любий тато','Як можна не любити свого тата,
Для мене він взірець, найкращий серед всіх.
В нас разом так спільного багато,
І він найдійніший із друзів на землі.

Приспів:
О тато, тато, мій добрий тато,
Тебе я дуже люблю, люблю я тебе!
О тато, тато, мій сильний тато,
Тебе я дуже люблю, люблю я тебе!

Зі мною їздить він велосипедом,
Бере з собою в гори на пікнік,
Купив забавки а також Нінтендо,
І ще й мобілку класну він приніс!

Приспів.

Боронить часом він мене від мами,
Коли вона за щось-небудь сварить.
Йому я довіряю всі секрети,
Мене від всіх проблем він захистить!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_894001';
DELETE FROM song_versions WHERE song_id = 'pisniua_894001';
DELETE FROM songs_fts WHERE song_id = 'pisniua_894001';
DELETE FROM songs WHERE id = 'pisniua_894001';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_894001','Мама','Музика: Юлія Рай Слова: Юлія Рай. Виконує: Юлія Рай','uk','ukraine_1991',NULL,NULL,NULL,NULL,'1|-------------------------------------------
2|-3-------3---5---6-----5---1--0---1--0-----
3|-----2-------------------------------------

Am
Комусь я посміхнусь зранку,
Hm
А в комусь я помилюсь аж до рани.
Мама, ти чуєш, йому прикро,
G
Він каже йому сумно.
F#
А я до нього звикла.

Dm A(А7) E
Кажуть люди: "гірше не буде"
Та не тане мій біль
Ну як же я без нього.
Скажи, чому він не мій?

Приспів:
І кричали йому весни в слід,
А для нього було мало слів,
А для нього був весь світ німий.
Скажи, чому він не мій?
І котилась я, мов камінь, вниз,
А для нього було мало сліз,
А для нього був весь світ німий.
Скажи, чому він не мій?

Колись я розірву кляте коло,
А може я не зумію ніколи.
Мама, і буде справді прикро
і неможливо сумно.
Я так до нього звикла.

Кажуть люди: "гірше не буде"
Та не тане мій біль
Ну як же я без нього.
Скажи, чому він не мій?

Приспів. (2)

Він не мій.
ла ла ла ла
ла ла ла ла ла
Мама, чому він не мій?','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_894001'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_894001','Мама','1|-------------------------------------------
2|-3-------3---5---6-----5---1--0---1--0-----
3|-----2-------------------------------------

Am
Комусь я посміхнусь зранку,
Hm
А в комусь я помилюсь аж до рани.
Мама, ти чуєш, йому прикро,
G
Він каже йому сумно.
F#
А я до нього звикла.

Dm A(А7) E
Кажуть люди: "гірше не буде"
Та не тане мій біль
Ну як же я без нього.
Скажи, чому він не мій?

Приспів:
І кричали йому весни в слід,
А для нього було мало слів,
А для нього був весь світ німий.
Скажи, чому він не мій?
І котилась я, мов камінь, вниз,
А для нього було мало сліз,
А для нього був весь світ німий.
Скажи, чому він не мій?

Колись я розірву кляте коло,
А може я не зумію ніколи.
Мама, і буде справді прикро
і неможливо сумно.
Я так до нього звикла.

Кажуть люди: "гірше не буде"
Та не тане мій біль
Ну як же я без нього.
Скажи, чому він не мій?

Приспів. (2)

Він не мій.
ла ла ла ла
ла ла ла ла ла
Мама, чому він не мій?');
DELETE FROM song_links WHERE song_id = 'pisniua_889654';
DELETE FROM song_versions WHERE song_id = 'pisniua_889654';
DELETE FROM songs_fts WHERE song_id = 'pisniua_889654';
DELETE FROM songs WHERE id = 'pisniua_889654';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_889654','Скільки треба державних мов','Слова: Степан Литвин','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Державною російська стане,
Якщо парламент поцінує?
Навіщо статус, громадяни?
Вона в державі й так панує.

Землячок мій, а карка, як ворон:
"Українствуєш? Краще б ти крав!"
Чи розбестив підступно нас ворог,
Чи за розбрат Господь покарав.','[''pisni.org.ua'', ''cat:pisni-pro-movy'', ''Пісні про рідну мову'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_889654'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_889654','Скільки треба державних мов','Державною російська стане,
Якщо парламент поцінує?
Навіщо статус, громадяни?
Вона в державі й так панує.

Землячок мій, а карка, як ворон:
"Українствуєш? Краще б ти крав!"
Чи розбестив підступно нас ворог,
Чи за розбрат Господь покарав.');
DELETE FROM song_links WHERE song_id = 'pisniua_88979';
DELETE FROM song_versions WHERE song_id = 'pisniua_88979';
DELETE FROM songs_fts WHERE song_id = 'pisniua_88979';
DELETE FROM songs WHERE id = 'pisniua_88979';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_88979','На Купала вогонь горить','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Ой на Івана та й на Купайла...- Львів: Студентське братство ЛНУ ім.І.Франка, 2002',NULL,'На Купала вогонь горить, в наших хлопців живіт болить.
Нехай наші хлопці знають, хай Купала не ламають.

Ой на горі бур’ян поріс, забрав чорт хлопців у ліс.
Носив, носив, не виносив, - за гілляку та й вивісив.

Ой у полі криниченька, там стояла Маринонька.
Там Іванко коня пасе, Маринонька воду несе.

Іван єї переймає, з відер воду виливає.
- Ой, Іване, Іваноньку, пусти мене додомоньку,

бо я лиху матір маю, буде бити - добре знаю.
- Як тя мати буде бити, навчу я тя говорити:

“Ой летіли гуси з броду, сколотили в ставі воду.
Зак ся вода одстояла, я си трохи постояла”.

А тепер я признаюся, що з козаком кохаюся.
Козак чорний, я білява. Поберемся - буде пара.    Основна мелодія','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_88979'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_88979','На Купала вогонь горить','На Купала вогонь горить, в наших хлопців живіт болить.
Нехай наші хлопці знають, хай Купала не ламають.

Ой на горі бур’ян поріс, забрав чорт хлопців у ліс.
Носив, носив, не виносив, - за гілляку та й вивісив.

Ой у полі криниченька, там стояла Маринонька.
Там Іванко коня пасе, Маринонька воду несе.

Іван єї переймає, з відер воду виливає.
- Ой, Іване, Іваноньку, пусти мене додомоньку,

бо я лиху матір маю, буде бити - добре знаю.
- Як тя мати буде бити, навчу я тя говорити:

“Ой летіли гуси з броду, сколотили в ставі воду.
Зак ся вода одстояла, я си трохи постояла”.

А тепер я признаюся, що з козаком кохаюся.
Козак чорний, я білява. Поберемся - буде пара.    Основна мелодія');
DELETE FROM song_links WHERE song_id = 'pisniua_891312';
DELETE FROM song_versions WHERE song_id = 'pisniua_891312';
DELETE FROM songs_fts WHERE song_id = 'pisniua_891312';
DELETE FROM songs WHERE id = 'pisniua_891312';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_891312','Колискова','Музика: Ліля Кобільник, Павло Табаков Слова: Л. Лазурко. Виконує: Павло Табаков, Менестрелі','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'1.
Тамує шепіт зір зимова ніч,
Небесним сяйвом обрій освітився,
Колишуть тишу ангели малі,
Спас тільки народився.         | (2)

Приспів:
Він Спас, він спить, не знаючи тривог,
А в небі тихо-тихо плаче Бог.  | (2)
Спас. Спить.

2.
І мама притуляє до грудей,
Маленький Бог, що з діви воплотився,
Він з нею і в безпеці, і живий,
Спас тільки народився.         | (2)

Приспів.

(Соло віолончелі).

3.
Ще дерево нехрещеним росте,
Ще шлях терновим віттям не встелився,
Ще тінь печалі сміху не краде,
Спас тільки народився.         | (2)

Приспів.

А в небі тихо-тихо плаче Батько Бог...','[''pisni.org.ua'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_891312'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_891312','Колискова','1.
Тамує шепіт зір зимова ніч,
Небесним сяйвом обрій освітився,
Колишуть тишу ангели малі,
Спас тільки народився.         | (2)

Приспів:
Він Спас, він спить, не знаючи тривог,
А в небі тихо-тихо плаче Бог.  | (2)
Спас. Спить.

2.
І мама притуляє до грудей,
Маленький Бог, що з діви воплотився,
Він з нею і в безпеці, і живий,
Спас тільки народився.         | (2)

Приспів.

(Соло віолончелі).

3.
Ще дерево нехрещеним росте,
Ще шлях терновим віттям не встелився,
Ще тінь печалі сміху не краде,
Спас тільки народився.         | (2)

Приспів.

А в небі тихо-тихо плаче Батько Бог...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_891312_l1','pisniua_891312','YouTube','https://www.youtube.com/watch?v=cdI3p6ASEjE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_890705';
DELETE FROM song_versions WHERE song_id = 'pisniua_890705';
DELETE FROM songs_fts WHERE song_id = 'pisniua_890705';
DELETE FROM songs WHERE id = 'pisniua_890705';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_890705','І золотої й дорогої','Музика: Тарас Мартинюк, Ігор Якубовський Слова: Тарас Шевченко. Виконує: І Кров по Долині, Простір музики','uk','ukraine_before_1917',NULL,NULL,'1. Авторське подання 2. Тарас Шевченко. Поезії. В 2-х т. — К.: Веселка, 1988.','*Авторський варіант рядка. В оригіналі: "То оддадуть у москалі."','І золотої й дорогої
Мені, щоб знали ви, не жаль
Моєї долі молодої;
А іноді така печаль
Оступить душу, аж заплачу.
А ще до того, як побачу
Малого хлопчика в селі.
Мов одірвалось од гіллі,
Одно-однісіньке під тином
Сидить собі в старій ряднині.
Мені здається,  що се я,
Що це ж та молодість моя.
Мені здається, що ніколи
Воно не бачитиме волі,
Святої воленьки. Що так
Даремне, марне пролетять
Його найкращії літа,
Що він не знатиме, де дітись
На сім широкім вольнім світі,
І піде в найми, і колись,
Щоб він не плакав, не журивсь,
Щоб він де-небудь прихиливсь,
То оддадуть його в москалі.*','[''pisni.org.ua'', ''cat:bardivski'', ''cat:pro-ditey'', ''cat:rekrutski'', ''Бардівські пісні'', ''Пісні про любов до дітей'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_890705'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_890705','І золотої й дорогої','І золотої й дорогої
Мені, щоб знали ви, не жаль
Моєї долі молодої;
А іноді така печаль
Оступить душу, аж заплачу.
А ще до того, як побачу
Малого хлопчика в селі.
Мов одірвалось од гіллі,
Одно-однісіньке під тином
Сидить собі в старій ряднині.
Мені здається,  що се я,
Що це ж та молодість моя.
Мені здається, що ніколи
Воно не бачитиме волі,
Святої воленьки. Що так
Даремне, марне пролетять
Його найкращії літа,
Що він не знатиме, де дітись
На сім широкім вольнім світі,
І піде в найми, і колись,
Щоб він не плакав, не журивсь,
Щоб він де-небудь прихиливсь,
То оддадуть його в москалі.*');
DELETE FROM song_links WHERE song_id = 'pisniua_888171';
DELETE FROM song_versions WHERE song_id = 'pisniua_888171';
DELETE FROM songs_fts WHERE song_id = 'pisniua_888171';
DELETE FROM songs WHERE id = 'pisniua_888171';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_888171','Коляд, коляд, колядниця','(Ой, коляда, колядниця). Українська народна пісня. Виконує: Нескорені','uk','ukraine_before_1917',NULL,NULL,'1. Колядки і щедрівки. - К.: Музична Україна. - 1991. - 240 с. 2. Партитура для чотириголосого мішаного хору (обробка П. Козицького)','В обробці П. Козицького назва пісні "Ой, коляда, колядниця".','Коляд, коляд, колядниця,
Добра з медом паляниця
А без меду не така,
Дайте, дядьку, п''ятака!

Як не даси п''ятака,
Возьму вола за рога,
Та виведу на поріг,
Та викручу правий ріг.
Буду рогом трубити,
А воликом робити.

Щедрівочка щедрувала,
До віконця припадала:
- Що ти, тітко, напекла?
Неси швидше до вікна!','[''pisni.org.ua'', ''cat:christian'', ''cat:shchedrivky'', ''cat:zhartivlyvi'', ''Пісні на християнську тематику'', ''Щедрівки'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_888171'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_888171','Коляд, коляд, колядниця','Коляд, коляд, колядниця,
Добра з медом паляниця
А без меду не така,
Дайте, дядьку, п''ятака!

Як не даси п''ятака,
Возьму вола за рога,
Та виведу на поріг,
Та викручу правий ріг.
Буду рогом трубити,
А воликом робити.

Щедрівочка щедрувала,
До віконця припадала:
- Що ти, тітко, напекла?
Неси швидше до вікна!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888171_l1','pisniua_888171','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_895070';
DELETE FROM song_versions WHERE song_id = 'pisniua_895070';
DELETE FROM songs_fts WHERE song_id = 'pisniua_895070';
DELETE FROM songs WHERE id = 'pisniua_895070';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_895070','Тепла зима','Музика: Андрій Кузьменко Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,'аудіозапис','Підбір акордів: uara','Недобрі хмари закрили нам небо,
Недобрі люди гребуть все під себе,
А нам з тобою сумно до болю,
Ми б''ємося, як мухи зі стіною,
Це біда, такого вже ніде нема.
Вони бавляться нами, як ляльками,
Б''ють нас між собою головами,
Придумують нам нові закони,
Для нас це завал, а для них приколи
Слухай, брат, тут вже давно є щось не так.
Приспів:
Яка різниця хто є хто?
Яка тут мова все одно,
Дайте пожити спокійно,
Нас вже дістало ваше зло.
Програш C#m     F       Bbm
Ми всі однакові давно,
Вам зрозуміти не дано:
Що схід і захід за одно,
Дайте пожити спокійно!
Спокійно!..
Не знати, що від вас чекати,
Щоранку страшно прокидатись,
По радіо тільки погані новини
Повторюють кожні півгодини,
Тепла зима,
В тій країні навіть снігу нема...
Приспів. (2)','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_895070'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_895070','Тепла зима','Недобрі хмари закрили нам небо,
Недобрі люди гребуть все під себе,
А нам з тобою сумно до болю,
Ми б''ємося, як мухи зі стіною,
Це біда, такого вже ніде нема.
Вони бавляться нами, як ляльками,
Б''ють нас між собою головами,
Придумують нам нові закони,
Для нас це завал, а для них приколи
Слухай, брат, тут вже давно є щось не так.
Приспів:
Яка різниця хто є хто?
Яка тут мова все одно,
Дайте пожити спокійно,
Нас вже дістало ваше зло.
Програш C#m     F       Bbm
Ми всі однакові давно,
Вам зрозуміти не дано:
Що схід і захід за одно,
Дайте пожити спокійно!
Спокійно!..
Не знати, що від вас чекати,
Щоранку страшно прокидатись,
По радіо тільки погані новини
Повторюють кожні півгодини,
Тепла зима,
В тій країні навіть снігу нема...
Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_895070_l1','pisniua_895070','YouTube','https://www.youtube.com/watch?v=XPIiOHhXKH0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_895070_l2','pisniua_895070','YouTube','https://www.youtube.com/watch?v=u91P1zCCqpo','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_891001';
DELETE FROM song_versions WHERE song_id = 'pisniua_891001';
DELETE FROM songs_fts WHERE song_id = 'pisniua_891001';
DELETE FROM songs WHERE id = 'pisniua_891001';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_891001','Ой у полі та два явори','Музика: народ Слова: народ. Виконує: Народний хор Україна','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой у полі та два явори,
Ще третій маленький,
Ой знедужав у Молдові
Та чумак молоденький.

Ой знедужав у Молдові
Та прийшлось помирати:
Ой прошу ж, браття, вас покірно
Дайте неньці знати.

Ой прошу ж, браття, вас покірно
Дайте неньці знати,
Ой нехай прийде молодого
Чумака ховати.

Ой продай, мати, ті сивії воли,
Що вперед ходили,
Що вони ж мене молодого
Всю Молдаву зводили.

Ой рада б я, мій синочку,
І штири продати,
Ой щоб тебе, мій синочку,
Та живого застати.','[''pisni.org.ua'', ''cat:chumacki'', ''cat:socialno-pobutovi'', ''Чумацькі пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_891001'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_891001','Ой у полі та два явори','Ой у полі та два явори,
Ще третій маленький,
Ой знедужав у Молдові
Та чумак молоденький.

Ой знедужав у Молдові
Та прийшлось помирати:
Ой прошу ж, браття, вас покірно
Дайте неньці знати.

Ой прошу ж, браття, вас покірно
Дайте неньці знати,
Ой нехай прийде молодого
Чумака ховати.

Ой продай, мати, ті сивії воли,
Що вперед ходили,
Що вони ж мене молодого
Всю Молдаву зводили.

Ой рада б я, мій синочку,
І штири продати,
Ой щоб тебе, мій синочку,
Та живого застати.');
DELETE FROM song_links WHERE song_id = 'pisniua_893858';
DELETE FROM song_versions WHERE song_id = 'pisniua_893858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_893858';
DELETE FROM songs WHERE id = 'pisniua_893858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_893858','Не знаю, що мене до тебе тягне','Слова: Іван Франко. Виконує: Трембіта','uk','ukraine_1991',NULL,NULL,'аудіозапис','Заслужена капела України "Трембіта". Іван Франко. Зів''яле листя (рецитація та спів)','Не знаю, що мене до тебе тягне,
Чим вчарувала ти мене, що все,
Коли погляну на твоє лице,
Чогось мов щастя й волі серце прагне

І в груді щось метушиться, немов
Давно забута згадка піль зелених,
Весни і квітів, — молода любов
З обійм виходить гробових, студених.

Себе я чую сильним і свобідним,
Мов той, що вирвався з тюрми на світ;
Таким веселим, щирим і лагідним,
Яким я був за давніх, давніх літ.

І, попри тебе йдучи, я дрижу,
Як перед злою не дрижав судьбою;
В твоє лице тривожно так гляджу, —
Здаєсь, ось-ось би впав перед тобою.

Якби ти слово прорекла мені,
Я б був щасливий, наче цар могучий,
Та в серці щось порвалось би на дні,
З очей би сліз потік полявся рвучий.

Не знаємось, ні брат я твій, ні сват,
І приязнь мусила б нам надокучить,
В житті, мабуть, ніщо нас не сполучить,
Роздільно нам прийдеться і вмирать.

Припадком лиш не раз тебе видаю,
На мене ж, певно, й не зирнула ти;
Та прецінь аж у гріб мені — се знаю —
Лице твоє прийдеться донести.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_893858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_893858','Не знаю, що мене до тебе тягне','Не знаю, що мене до тебе тягне,
Чим вчарувала ти мене, що все,
Коли погляну на твоє лице,
Чогось мов щастя й волі серце прагне

І в груді щось метушиться, немов
Давно забута згадка піль зелених,
Весни і квітів, — молода любов
З обійм виходить гробових, студених.

Себе я чую сильним і свобідним,
Мов той, що вирвався з тюрми на світ;
Таким веселим, щирим і лагідним,
Яким я був за давніх, давніх літ.

І, попри тебе йдучи, я дрижу,
Як перед злою не дрижав судьбою;
В твоє лице тривожно так гляджу, —
Здаєсь, ось-ось би впав перед тобою.

Якби ти слово прорекла мені,
Я б був щасливий, наче цар могучий,
Та в серці щось порвалось би на дні,
З очей би сліз потік полявся рвучий.

Не знаємось, ні брат я твій, ні сват,
І приязнь мусила б нам надокучить,
В житті, мабуть, ніщо нас не сполучить,
Роздільно нам прийдеться і вмирать.

Припадком лиш не раз тебе видаю,
На мене ж, певно, й не зирнула ти;
Та прецінь аж у гріб мені — се знаю —
Лице твоє прийдеться донести.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_893858_l1','pisniua_893858','YouTube','https://www.youtube.com/watch?v=C9qeWoInp34','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_893714';
DELETE FROM song_versions WHERE song_id = 'pisniua_893714';
DELETE FROM songs_fts WHERE song_id = 'pisniua_893714';
DELETE FROM songs WHERE id = 'pisniua_893714';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_893714','Під Твою милість',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис','Виконує:Жіноче тріо','Під Твою милість
Прибігаємо,
Богородице Діво.
Молитвами нашими,
Молитвами нашими
В скорботах,
В скорботах
Не погорди.

Але від бід
Ізбави нас,
Богородице Діво,
Єдино Чиста,     |
Єдино Чиста,     |
Єдино Чиста      |
І Благословенна. | (2)    комп''ютерне відтворення (128 kbps)  (
комп''ютерне відтворення (128 kbps)  (','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''cat:do-bohorodyci'', ''Церковні пісні'', ''Пісні на християнську тематику'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_893714'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_893714','Під Твою милість','Під Твою милість
Прибігаємо,
Богородице Діво.
Молитвами нашими,
Молитвами нашими
В скорботах,
В скорботах
Не погорди.

Але від бід
Ізбави нас,
Богородице Діво,
Єдино Чиста,     |
Єдино Чиста,     |
Єдино Чиста      |
І Благословенна. | (2)    комп''ютерне відтворення (128 kbps)  (
комп''ютерне відтворення (128 kbps)  (');
DELETE FROM song_links WHERE song_id = 'pisniua_892358';
DELETE FROM song_versions WHERE song_id = 'pisniua_892358';
DELETE FROM songs_fts WHERE song_id = 'pisniua_892358';
DELETE FROM songs WHERE id = 'pisniua_892358';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_892358','Ходить жучок','Українська народна пісня. Виконує: Коралі, Резонанс','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ходить жучок по ручині,
А жучиха по долині.
Грай, жучку, грай, небоже, |
Най ти пан Біг допоможе.   | (2)

На жучкові черевички,
А сам жучок невеличкий.
Грай, жучку, грай, небоже, |
Най ти пан Біг допоможе.   | (2)

На жучкові жупанчина,
А сам жучок, як дитина.
Грай, жучку, грай, небоже, |
Най ти пан Біг допоможе.   | (2)','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_892358'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_892358','Ходить жучок','Ходить жучок по ручині,
А жучиха по долині.
Грай, жучку, грай, небоже, |
Най ти пан Біг допоможе.   | (2)

На жучкові черевички,
А сам жучок невеличкий.
Грай, жучку, грай, небоже, |
Най ти пан Біг допоможе.   | (2)

На жучкові жупанчина,
А сам жучок, як дитина.
Грай, жучку, грай, небоже, |
Най ти пан Біг допоможе.   | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_892358_l1','pisniua_892358','YouTube','https://www.youtube.com/watch?v=0HYlXBBucto','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_893878';
DELETE FROM song_versions WHERE song_id = 'pisniua_893878';
DELETE FROM songs_fts WHERE song_id = 'pisniua_893878';
DELETE FROM songs WHERE id = 'pisniua_893878';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_893878','Не надійся нічого','Слова: Іван Франко. Виконує: Трембіта','uk','ukraine_1991',NULL,NULL,'аудіозапис','Заслужена капела України "Трембіта". Іван Франко. Зів''яле листя (рецитація та спів)','Як ти могла сказати се так рівно,
Спокійно, твердо? Як не задрижав
Твій голос в горлі, серце в твоїй груді
Биттям тривожним не зглушило ті
Слова страшні: "Не надійся нічого!"

Не надійся нічого! Чи ти знаєш,
Що ті слова — найтяжчая провина,
Убійство серця, духу і думок
Живих і ненароджених? Чи в тебе
При тих словах не ворухнулась совість?

Не надійся нічого! Земле-мамо!
Ти, світе ясний? Темното нічна!
Зірки і люди! Чим ви всі тепер?
Чим я тепер? О, чом не пил бездушний?
Чом не той камінь, не вода, не лід?

Тоді б не чув я пекла в своїй груді,
І в мізку моїм не вертів би нор
Черв''як неситий, кров моя кипуча
В гарячці лютій не дзвонила б вічно
Тих слів страшних: "Не надійся нічого!"

Та ні, не вірю! Злуда, злуда все1
Живущої води в напій мені
Ти долила, а жартом лиш сказала,
Що се отрута. Бо за що ж би ти
Могла вбивать у мене душу й тіло?

Ні, ні, не вірю! В хвилю ту, коли
Уста твої мене вбивати мали, —
Лице твоє бліде, тривожні очі,
Вся стать твоя тремтяча, мов мімоза,
Все мовило мені: "Не вір! Не вір!"

Ти добра, щира! О, не ошукаєш
Мойого серця гордості лускою!
Я зрозумів тебе! Ти добра, щира!
Лиш бурі світу, розчаровань муки
Заволокли тебе отим туманом.

І в серці своїм знов я чую силу
Розсіяти туман той, теплотою
Чуття і жаром думки поєднати
Теб з життям — і в відповідь тобі
Я кличу: "Надійсь і кріпись в борбі!"','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_893878'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_893878','Не надійся нічого','Як ти могла сказати се так рівно,
Спокійно, твердо? Як не задрижав
Твій голос в горлі, серце в твоїй груді
Биттям тривожним не зглушило ті
Слова страшні: "Не надійся нічого!"

Не надійся нічого! Чи ти знаєш,
Що ті слова — найтяжчая провина,
Убійство серця, духу і думок
Живих і ненароджених? Чи в тебе
При тих словах не ворухнулась совість?

Не надійся нічого! Земле-мамо!
Ти, світе ясний? Темното нічна!
Зірки і люди! Чим ви всі тепер?
Чим я тепер? О, чом не пил бездушний?
Чом не той камінь, не вода, не лід?

Тоді б не чув я пекла в своїй груді,
І в мізку моїм не вертів би нор
Черв''як неситий, кров моя кипуча
В гарячці лютій не дзвонила б вічно
Тих слів страшних: "Не надійся нічого!"

Та ні, не вірю! Злуда, злуда все1
Живущої води в напій мені
Ти долила, а жартом лиш сказала,
Що се отрута. Бо за що ж би ти
Могла вбивать у мене душу й тіло?

Ні, ні, не вірю! В хвилю ту, коли
Уста твої мене вбивати мали, —
Лице твоє бліде, тривожні очі,
Вся стать твоя тремтяча, мов мімоза,
Все мовило мені: "Не вір! Не вір!"

Ти добра, щира! О, не ошукаєш
Мойого серця гордості лускою!
Я зрозумів тебе! Ти добра, щира!
Лиш бурі світу, розчаровань муки
Заволокли тебе отим туманом.

І в серці своїм знов я чую силу
Розсіяти туман той, теплотою
Чуття і жаром думки поєднати
Теб з життям — і в відповідь тобі
Я кличу: "Надійсь і кріпись в борбі!"');
DELETE FROM song_links WHERE song_id = 'pisniua_896272';
DELETE FROM song_versions WHERE song_id = 'pisniua_896272';
DELETE FROM songs_fts WHERE song_id = 'pisniua_896272';
DELETE FROM songs WHERE id = 'pisniua_896272';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_896272','Гімн','Слова: невідомий','uk','ukraine_1991',NULL,NULL,'Шкільний підручник"Українська мова. 10-11 класи"','Взагалі основний фрагмент тексту пісні я взяв з підручника "Українська мова. 10-11 класи". Автора тексту нажаль не пам''ятаю. Цей текст був оформлений у вигляді короткого оповідання. Я ж його трохи підкорегував під вірш, добавив вступ, також і кінцівку, трохи змінив приспів. Слова з рядків "Україна... Україна... Україна..." краще виконувати різними особами. Перше слово "Україна" - виконує дитина, друге - жінка, а третє - чоловік.','Минають дні, минають ночі,
Мине життя і не повернеш.
Чому засмучуюсь і досі,
Як чую рядки: колись і десь.
А колись ревіли гармати,
Колись запорожці вміли панувати.
Десь це було на Україні,
Десь сховані їхні могили.

Україна... Україна... Україна...
Україна. В одному вже тільки цьому слові
І для нашого вуха і навіть для вуха чужинця
Бринить ціла музика смутку і жалю...
Україна - країна смутку й краси,
Країна, де найбільше люблять волю і найменше мають її.
Країна гарячої любові до народу і чорної зради,
Довгої, вікової, героїчної боротьби за волю.
Внаслідок чого - велетенське кладовище,
Високі в степу могили - це наша руїна.
Та прекрасна на весь світ, безіменна,
Невідомо коли і ким складена пісня...
Тяжкий сон, одвічна неволя і темна ніч, як ворон.

Приспів:
Тільки Дніпро з очеретами,
Тільки вітер з степовими могилами
Шепотіли ночами: гай-гай...
Шепотіли ночами... помер прекрасний край.
Тільки Дніпро з очеретами,
Тільки вітер з степовими могилами
Шепотіли ночами: гай-гай.
Помер прекрасний край.

Україна - це тихі води, ясні зорі.
Україна - зелені сади, білі хати,
Лани золотої пшениці, медовії молочнії ріки...
Україна - це марні, обшарпані, голодні люди.
Україна - це царське та папське безбожне свавілля,
Праця до сьомого поту... Світяться злидні...
Україна - розкішний вінок із рути й барвінку,
Що над ним світять заплакані, золоті зорі,
Поема жалю і смутку, краси і недолі...
Легендарним поетам казкового краю,
Великим борцям за волю свого краю,
За всих поневолених, близьких і далеких!

Приспів.

І хоч історія ця занадто сумна,
І хоч поезія - справжня, та не моя,
Ти пам''ятай - ми з-під одного крила,
Ти вір і знай, що людина не одна.
Якщо тебе питають: що ти сам зробиш,
Але ти пам''ятай: один - це більше за ніщо!
І коли в грудях відчуваєш цю силу,
І коли піднімаєш цей текст з-під пилу,
Твої вуста повторюють неодноразово,
Твій голос звучить не випадково...

Україна... Україна... Україна...
Україна - це все, що тебе оточує є Україна.
Все, що тебе оточує є Україна.
Все, що тебе оточує є Україна, є Україна, є Україна! Є!
Україна - це все, що тебе оточує є Україна.
Все, що тебе оточує є Україна.
Все, що тебе оточує є Україна, є Україна, є Україна! Є!
Україна - це все, що тебе оточує є Україна.
Все, що тебе оточує є Україна.
Все, що тебе оточує є Україна, є Україна, є Україна! Є!
Україна - це все, що тебе оточує є Україна.
Все, що тебе оточує є Україна.
Все, що тебе оточує є Україна, є Україна, є Україна! Є!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_896272'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_896272','Гімн','Минають дні, минають ночі,
Мине життя і не повернеш.
Чому засмучуюсь і досі,
Як чую рядки: колись і десь.
А колись ревіли гармати,
Колись запорожці вміли панувати.
Десь це було на Україні,
Десь сховані їхні могили.

Україна... Україна... Україна...
Україна. В одному вже тільки цьому слові
І для нашого вуха і навіть для вуха чужинця
Бринить ціла музика смутку і жалю...
Україна - країна смутку й краси,
Країна, де найбільше люблять волю і найменше мають її.
Країна гарячої любові до народу і чорної зради,
Довгої, вікової, героїчної боротьби за волю.
Внаслідок чого - велетенське кладовище,
Високі в степу могили - це наша руїна.
Та прекрасна на весь світ, безіменна,
Невідомо коли і ким складена пісня...
Тяжкий сон, одвічна неволя і темна ніч, як ворон.

Приспів:
Тільки Дніпро з очеретами,
Тільки вітер з степовими могилами
Шепотіли ночами: гай-гай...
Шепотіли ночами... помер прекрасний край.
Тільки Дніпро з очеретами,
Тільки вітер з степовими могилами
Шепотіли ночами: гай-гай.
Помер прекрасний край.

Україна - це тихі води, ясні зорі.
Україна - зелені сади, білі хати,
Лани золотої пшениці, медовії молочнії ріки...
Україна - це марні, обшарпані, голодні люди.
Україна - це царське та папське безбожне свавілля,
Праця до сьомого поту... Світяться злидні...
Україна - розкішний вінок із рути й барвінку,
Що над ним світять заплакані, золоті зорі,
Поема жалю і смутку, краси і недолі...
Легендарним поетам казкового краю,
Великим борцям за волю свого краю,
За всих поневолених, близьких і далеких!

Приспів.

І хоч історія ця занадто сумна,
І хоч поезія - справжня, та не моя,
Ти пам''ятай - ми з-під одного крила,
Ти вір і знай, що людина не одна.
Якщо тебе питають: що ти сам зробиш,
Але ти пам''ятай: один - це більше за ніщо!
І коли в грудях відчуваєш цю силу,
І коли піднімаєш цей текст з-під пилу,
Твої вуста повторюють неодноразово,
Твій голос звучить не випадково...

Україна... Україна... Україна...
Україна - це все, що тебе оточує є Україна.
Все, що тебе оточує є Україна.
Все, що тебе оточує є Україна, є Україна, є Україна! Є!
Україна - це все, що тебе оточує є Україна.
Все, що тебе оточує є Україна.
Все, що тебе оточує є Україна, є Україна, є Україна! Є!
Україна - це все, що тебе оточує є Україна.
Все, що тебе оточує є Україна.
Все, що тебе оточує є Україна, є Україна, є Україна! Є!
Україна - це все, що тебе оточує є Україна.
Все, що тебе оточує є Україна.
Все, що тебе оточує є Україна, є Україна, є Україна! Є!');
DELETE FROM song_links WHERE song_id = 'pisniua_896878';
DELETE FROM song_versions WHERE song_id = 'pisniua_896878';
DELETE FROM songs_fts WHERE song_id = 'pisniua_896878';
DELETE FROM songs WHERE id = 'pisniua_896878';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_896878','Риба з раком','Музика: Лев Лепкий Слова: невідомий. Виконує: Чотири шкельця','uk','ukraine_before_1917',NULL,NULL,'7 куплєтів з нотами. -Львів-Київ,1923. Накладом редакції "Будяка"',NULL,'Танцювала риба з раком, трам-тарі-ра,
А петрушка з пастернаком, трам-тарі-ра,
Мамця з бувшим старшиною, трам-тарі-ра,
Татко сам оставсь в покою, трам-тарі-ра.

Та у татка добра міна: - трам.. і т.д.
Десь узялася Мальвіна,
Ах, Мальвіна та, Мальвіна!
І пішли разом до кіна.

А у кіні дуже темно...
Татко шепче дуже чемно:
- Я протиснусь між юрбою,
Ти, Мальвінцю, йди за мною.

А тимчасом дивні штуки:
Тутка ноги, а там руки;
Серце б''ється, що й казати -
Ах, драмати, ті драмати!

Часом робиться приємно,
Ручка блудить десь таємно.
Та у татка дивна міна -
Чи Мальвіна... не Мальвіна...

- Ах, Мальвінцю, люба моя,
Чого ж  ручка зимна твоя?
Що за диво?.. Не вгадаю:
Ніби знаю - і не знаю...

Та нараз заблисло світло,
Стало всім якось маркітно.
Приглядались - дивувались:
Мамця з таточком пізнались!

Танцювала риба з раком, трам-тарі-ра,
А петрушка з пастернаком, трам-тарі-ра.
Танцювала риба з раком, трам-тарі-ра,
А петрушка з пастернаком, трам-тарі-ра!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_896878'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_896878','Риба з раком','Танцювала риба з раком, трам-тарі-ра,
А петрушка з пастернаком, трам-тарі-ра,
Мамця з бувшим старшиною, трам-тарі-ра,
Татко сам оставсь в покою, трам-тарі-ра.

Та у татка добра міна: - трам.. і т.д.
Десь узялася Мальвіна,
Ах, Мальвіна та, Мальвіна!
І пішли разом до кіна.

А у кіні дуже темно...
Татко шепче дуже чемно:
- Я протиснусь між юрбою,
Ти, Мальвінцю, йди за мною.

А тимчасом дивні штуки:
Тутка ноги, а там руки;
Серце б''ється, що й казати -
Ах, драмати, ті драмати!

Часом робиться приємно,
Ручка блудить десь таємно.
Та у татка дивна міна -
Чи Мальвіна... не Мальвіна...

- Ах, Мальвінцю, люба моя,
Чого ж  ручка зимна твоя?
Що за диво?.. Не вгадаю:
Ніби знаю - і не знаю...

Та нараз заблисло світло,
Стало всім якось маркітно.
Приглядались - дивувались:
Мамця з таточком пізнались!

Танцювала риба з раком, трам-тарі-ра,
А петрушка з пастернаком, трам-тарі-ра.
Танцювала риба з раком, трам-тарі-ра,
А петрушка з пастернаком, трам-тарі-ра!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_896878_l1','pisniua_896878','YouTube','https://www.youtube.com/watch?v=pJoadlexfVg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_896878_l2','pisniua_896878','YouTube','https://www.youtube.com/watch?v=9iO0fCgLaRM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_895205';
DELETE FROM song_versions WHERE song_id = 'pisniua_895205';
DELETE FROM songs_fts WHERE song_id = 'pisniua_895205';
DELETE FROM songs WHERE id = 'pisniua_895205';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_895205','Ой там, за горою та за кам''яною','Музика: народна Слова: народ. Виконує: Дударик','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда) ― Святий Збір (Трійця) ― Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','Ой там, за горою та за кам''яною.
Щедрий вечір, добрий вечір!

Там пан Володимир коника сідлає.
Щедрий вечір, добрий вечір!

Коника сідлає, на гору вступає.
Щедрий вечір, добрий вечір!

На гору вступає, на царів стріляє.
Щедрий вечір, добрий вечір!

Ой, винесли йому полумисок срібла.
Щедрий вечір, добрий вечір!

А він на той дар ані подивився.
Щедрий вечір, добрий вечір!

І шапочки не зняв, ані поклонився.
Щедрий вечір, добрий вечір!

Ой, винесли йому полумисок злота.
Щедрий вечір, добрий вечір!

А він на той дар ані подивився.
Щедрий вечір, добрий вечір!

І шапочки не зняв, ані поклонився.
Щедрий вечір, добрий вечір!

Ой, вивели йому панночку царівну.
Щедрий вечір, добрий вечір!

А вже він на той дар пильно подивився.
Щедрий вечір, добрий вечір!

І шапочку ізняв, низенько поклонився.
Щедрий вечір, добрий вечір!','[''pisni.org.ua'', ''cat:philosophic'', ''cat:shchedrivky'', ''cat:vesilni'', ''Філософські пісні'', ''Щедрівки'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_895205'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_895205','Ой там, за горою та за кам''яною','Ой там, за горою та за кам''яною.
Щедрий вечір, добрий вечір!

Там пан Володимир коника сідлає.
Щедрий вечір, добрий вечір!

Коника сідлає, на гору вступає.
Щедрий вечір, добрий вечір!

На гору вступає, на царів стріляє.
Щедрий вечір, добрий вечір!

Ой, винесли йому полумисок срібла.
Щедрий вечір, добрий вечір!

А він на той дар ані подивився.
Щедрий вечір, добрий вечір!

І шапочки не зняв, ані поклонився.
Щедрий вечір, добрий вечір!

Ой, винесли йому полумисок злота.
Щедрий вечір, добрий вечір!

А він на той дар ані подивився.
Щедрий вечір, добрий вечір!

І шапочки не зняв, ані поклонився.
Щедрий вечір, добрий вечір!

Ой, вивели йому панночку царівну.
Щедрий вечір, добрий вечір!

А вже він на той дар пильно подивився.
Щедрий вечір, добрий вечір!

І шапочку ізняв, низенько поклонився.
Щедрий вечір, добрий вечір!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_895205_l1','pisniua_895205','YouTube','https://www.youtube.com/watch?v=HGMJsMFGTbs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_895205_l2','pisniua_895205','YouTube','https://www.youtube.com/watch?v=AKK9AoJPKMs','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_895205_l3','pisniua_895205','YouTube','https://www.youtube.com/watch?v=sYkMNqKkVFk','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_897603';
DELETE FROM song_versions WHERE song_id = 'pisniua_897603';
DELETE FROM songs_fts WHERE song_id = 'pisniua_897603';
DELETE FROM songs WHERE id = 'pisniua_897603';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_897603','Їде, їде Бог','Музика: Леся Горова Слова: Леся Горова. Виконує: Леся Горова','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Святий вечір заглядає
Крізь відчинене вікно.
В кожній хаті кожен знає,
Що попереду Різдво.

Приспів:
Їде, їде Бог на санях,
Роздає дари усім,
Бо сьогодні, бо сьогодні
Народився в нього Син,
Бо сьогодні народився
Божий Син.

Вже від хати і до хати
Стелиться сніжиста путь,
Люди йдуть колядувати,
В кожній хаті вже їх ждуть.

Приспів.

Хай у ваших всіх родинах
Буде затишок, тепло,
Хай святкує Україна
Сина Божого Різдво!

Приспів.','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Пісні на християнську тематику'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_897603'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_897603','Їде, їде Бог','Святий вечір заглядає
Крізь відчинене вікно.
В кожній хаті кожен знає,
Що попереду Різдво.

Приспів:
Їде, їде Бог на санях,
Роздає дари усім,
Бо сьогодні, бо сьогодні
Народився в нього Син,
Бо сьогодні народився
Божий Син.

Вже від хати і до хати
Стелиться сніжиста путь,
Люди йдуть колядувати,
В кожній хаті вже їх ждуть.

Приспів.

Хай у ваших всіх родинах
Буде затишок, тепло,
Хай святкує Україна
Сина Божого Різдво!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_897603_l1','pisniua_897603','YouTube','https://www.youtube.com/watch?v=oKRR-TOehSE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_89714';
DELETE FROM song_versions WHERE song_id = 'pisniua_89714';
DELETE FROM songs_fts WHERE song_id = 'pisniua_89714';
DELETE FROM songs WHERE id = 'pisniua_89714';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_89714','Кольорові пташки','Музика: Володимир Івасюк Слова: Володимир Лучук','uk','ukraine_1991',NULL,NULL,'http://ivasyuk.domivka.net/',NULL,'Червоні снігурі
Стрибають по дворі.
В задумі чорний крук
Присів на білий сук.

Приспів:
Пташки кольорові у зимоньки-зими...
Рівнесенько вгору клубочаться дими.

Синиці голубі
Співають на вербі.
Шукає омелюх
На морозець кожух.

Приспів.

А горобець-дивак
Вдягнув зелений фрак...
Зелений, то й дарма! —
Бо сірих фарб нема.

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_89714'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_89714','Кольорові пташки','Червоні снігурі
Стрибають по дворі.
В задумі чорний крук
Присів на білий сук.

Приспів:
Пташки кольорові у зимоньки-зими...
Рівнесенько вгору клубочаться дими.

Синиці голубі
Співають на вербі.
Шукає омелюх
На морозець кожух.

Приспів.

А горобець-дивак
Вдягнув зелений фрак...
Зелений, то й дарма! —
Бо сірих фарб нема.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_895807';
DELETE FROM song_versions WHERE song_id = 'pisniua_895807';
DELETE FROM songs_fts WHERE song_id = 'pisniua_895807';
DELETE FROM songs WHERE id = 'pisniua_895807';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_895807','Ой там в лісі калина','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісню записано від місцевої фольклористки Євгенії Тондій.',NULL,'Ой там в лісі калина
Там стояла дівчина,
Там русу - косу чесала
Там біле личко вмивала.
Ой ти, личко біленьке,
Кому ж ти будеш миленьке?
Чи ратайку - дай Боже!
Чи лінтяйку - крий його Боже!','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_895807'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_895807','Ой там в лісі калина','Ой там в лісі калина
Там стояла дівчина,
Там русу - косу чесала
Там біле личко вмивала.
Ой ти, личко біленьке,
Кому ж ти будеш миленьке?
Чи ратайку - дай Боже!
Чи лінтяйку - крий його Боже!');
DELETE FROM song_links WHERE song_id = 'pisniua_89552';
DELETE FROM song_versions WHERE song_id = 'pisniua_89552';
DELETE FROM songs_fts WHERE song_id = 'pisniua_89552';
DELETE FROM songs WHERE id = 'pisniua_89552';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_89552','Сорок пачок Верховини','Виконує: Брати Гадюкіни','uk','ukraine_1991',NULL,NULL,'http://www.shulga.kiev.ua/',NULL,'E
Колись менi казали "Сиди i не туйво
Так було, так є i буде так завжди"
A
Я вiд усiх тiкав, менi кричали "Пiдожди,
E
Дай нам свого лоба, ми поставимо клеймо
H
Ти свободний человєк, не бiйся, друже, нас"
Але пiд своїм лiжком я тримав недоторканий запас

Приспiв:
A
Сорок пачок "Верховини"
E
Мило, маєтки i майка
Шапка, чоботи, фуфайка

I з начосом калiсони

Сорок пачок "Верховини"
Мило, маєтки i майка
Шапка, чоботи, фуфайка
I з начосом калiсони

З пiвночi повiяв вiтер пєремєн
В країнi стало весело, як на КВН
Всi переробилися, людей не впiзнаєш
I навiть захитався трон КПРС
Но що самi схвалили, самi i робiть
А я сi маю торбочку, а в нiй на всякий случай лежить

Приспiв.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_89552'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_89552','Сорок пачок Верховини','E
Колись менi казали "Сиди i не туйво
Так було, так є i буде так завжди"
A
Я вiд усiх тiкав, менi кричали "Пiдожди,
E
Дай нам свого лоба, ми поставимо клеймо
H
Ти свободний человєк, не бiйся, друже, нас"
Але пiд своїм лiжком я тримав недоторканий запас

Приспiв:
A
Сорок пачок "Верховини"
E
Мило, маєтки i майка
Шапка, чоботи, фуфайка

I з начосом калiсони

Сорок пачок "Верховини"
Мило, маєтки i майка
Шапка, чоботи, фуфайка
I з начосом калiсони

З пiвночi повiяв вiтер пєремєн
В країнi стало весело, як на КВН
Всi переробилися, людей не впiзнаєш
I навiть захитався трон КПРС
Но що самi схвалили, самi i робiть
А я сi маю торбочку, а в нiй на всякий случай лежить

Приспiв.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_89552_l1','pisniua_89552','YouTube','https://www.youtube.com/watch?v=oJ1xciBhp60','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_897777';
DELETE FROM song_versions WHERE song_id = 'pisniua_897777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_897777';
DELETE FROM songs WHERE id = 'pisniua_897777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_897777','Дідо з бородою','Музика: народна Слова: народ. Виконує: Гурт "Зоряна ніч"','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','коломийка Виконує:Гопак','Діду з бородою,
Не ходи за мною,
Де не ходжу я.
Хоч маєш хату,     |
Грошей багато -    |
Не буду твоя.      | (2)

Не піду, не піду
Я за тебе діду,
Не чекай, не жди.
Хоч маєш хату,     |
Грошей багато -    |
Згинь тай пропади. | (2)

А я візьму хлопця,
Хлопця молодого,
Не багатого,
Щоб він на мене
Весь час дивився,
Про других забув.

А ти кажеш діду,
Що перебираю
Хлопців-парубків.
Що жити треба,
Любити треба
Всіх старих дідів.

Що жити треба?
Любити треба
Старих дідів?','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_897777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_897777','Дідо з бородою','Діду з бородою,
Не ходи за мною,
Де не ходжу я.
Хоч маєш хату,     |
Грошей багато -    |
Не буду твоя.      | (2)

Не піду, не піду
Я за тебе діду,
Не чекай, не жди.
Хоч маєш хату,     |
Грошей багато -    |
Згинь тай пропади. | (2)

А я візьму хлопця,
Хлопця молодого,
Не багатого,
Щоб він на мене
Весь час дивився,
Про других забув.

А ти кажеш діду,
Що перебираю
Хлопців-парубків.
Що жити треба,
Любити треба
Всіх старих дідів.

Що жити треба?
Любити треба
Старих дідів?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_897777_l1','pisniua_897777','YouTube','https://www.youtube.com/watch?v=5JnjYkZ0vEI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_897777_l2','pisniua_897777','YouTube','https://www.youtube.com/watch?v=y0lh-uy8dEk','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_898070';
DELETE FROM song_versions WHERE song_id = 'pisniua_898070';
DELETE FROM songs_fts WHERE song_id = 'pisniua_898070';
DELETE FROM songs WHERE id = 'pisniua_898070';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_898070','Тірольська пісенька','Виконує: Акорд','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Дон-ділі-дон
Ми йдемо по горах,
Дон-ділі-дон-ділі-дон
Дон-ділі-дон-ділі-дон
В просторах чути ніжний тон.

Дон-ділі-дон
То співа дзвіночок
Дон-ділі-дон-ділі-дон
Дон-ділі-дон
Тонкий голосочок доганяє сон.

Дон-ділі-дон-ділі-дон
Хто в наших горах не бував,
Дон-ділі-дон-ділі-дон
Той радощів в житті не знав.

В місті шумно, всюди гам,
Як безумний ходиш там,
І спочину ні у днину,
Ні вночі не мав.

Тісно, нудно, суєта,
Млосно, душно, спекота,
Знаєм певно і даремно
Любимо міста.

А наші тірольські гори -
Тихий рай.
А з нами місяць, зорі -
Поспівай.

Дон-ділі-дон-ділі-дон
Лунає в горах навкруги,
Дон-ділі-дон-ділі-дон
Пливуть корівки на луги.

Дон-ділі-дон-ділі-дон...','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_898070'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_898070','Тірольська пісенька','Дон-ділі-дон
Ми йдемо по горах,
Дон-ділі-дон-ділі-дон
Дон-ділі-дон-ділі-дон
В просторах чути ніжний тон.

Дон-ділі-дон
То співа дзвіночок
Дон-ділі-дон-ділі-дон
Дон-ділі-дон
Тонкий голосочок доганяє сон.

Дон-ділі-дон-ділі-дон
Хто в наших горах не бував,
Дон-ділі-дон-ділі-дон
Той радощів в житті не знав.

В місті шумно, всюди гам,
Як безумний ходиш там,
І спочину ні у днину,
Ні вночі не мав.

Тісно, нудно, суєта,
Млосно, душно, спекота,
Знаєм певно і даремно
Любимо міста.

А наші тірольські гори -
Тихий рай.
А з нами місяць, зорі -
Поспівай.

Дон-ділі-дон-ділі-дон
Лунає в горах навкруги,
Дон-ділі-дон-ділі-дон
Пливуть корівки на луги.

Дон-ділі-дон-ділі-дон...');
DELETE FROM song_links WHERE song_id = 'pisniua_898052';
DELETE FROM song_versions WHERE song_id = 'pisniua_898052';
DELETE FROM songs_fts WHERE song_id = 'pisniua_898052';
DELETE FROM songs WHERE id = 'pisniua_898052';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_898052','Коломийки','(Ой музику дуже люблю...). Музика: народна Слова: народ. Виконує: Акорд','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой музику дуже люблю,
За музику піду,
Як музика та й заграє,
Забуду, як вийду.

Як я тую музиченьку
Зачую, зачую,
Болить мене головонька,
Дома не ночую.

Заграй мені музиченьку
Яворові скрипки,
Най я собі погуляю
Ворогам на збитки.

А я гаю не рубаю
Через ту ліщину,
А я вдома не ночую
Через ту дівчину.

А хто вміє погуляти,
Той вміє робити,
А тому та й любо, мило
В очі подивитись.

А я гаю не рубаю
Через ті осики,
А я вдома не ночую
Через ті музики.

Ви музики грайте, грайте,
А ви люди чуйте,
А ви старі йдіть додому,
Молоді танцюйте','[''pisni.org.ua'', ''cat:kolomyyky'', ''cat:zhartivlyvi'', ''Коломийки'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_898052'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_898052','Коломийки','Ой музику дуже люблю,
За музику піду,
Як музика та й заграє,
Забуду, як вийду.

Як я тую музиченьку
Зачую, зачую,
Болить мене головонька,
Дома не ночую.

Заграй мені музиченьку
Яворові скрипки,
Най я собі погуляю
Ворогам на збитки.

А я гаю не рубаю
Через ту ліщину,
А я вдома не ночую
Через ту дівчину.

А хто вміє погуляти,
Той вміє робити,
А тому та й любо, мило
В очі подивитись.

А я гаю не рубаю
Через ті осики,
А я вдома не ночую
Через ті музики.

Ви музики грайте, грайте,
А ви люди чуйте,
А ви старі йдіть додому,
Молоді танцюйте');
DELETE FROM song_links WHERE song_id = 'pisniua_899858';
DELETE FROM song_versions WHERE song_id = 'pisniua_899858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_899858';
DELETE FROM songs WHERE id = 'pisniua_899858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_899858','Наш Тернопіль','Музика: Андрій Вішко Слова: Сергій Сірий. Виконує: Олена Волович','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Тут вулиця кожна знайома
І юним, і немолодим.
Тут затишок рідного дому,
Який незрівнянний ні з чим.

Приспів:
Місто, де квіти і зорі
Зводять кохання мости,
Де став є, що схожий на море...
Тернопіль - це ти!
Тернопіль, Тернопіль, Тернопіль -
Вартий пісень і поем.
Тернопіль, Тернопіль, Тернопіль -
Казка, в якій ми живем.

Ти ріс і мужнів із віками,
Але не змінив свою суть...
Тут веснами горді каштани,
Як в Києві, біло цвітуть.

Приспів.

Куди б не стелились дороги,
Та завжди приходить той час -
До витоків, отчих порогів
Вертаєш, Тернополе, нас.

Приспів. (2)

Тут вулиця кожна знайома
І юним, і немолодим.
Тут затишок рідного дому,
Який незрівнянний ні з чим.

Приспів','[''pisni.org.ua'', ''cat:dances'', ''cat:waltzes'', ''Пісні до танцю'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_899858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_899858','Наш Тернопіль','Тут вулиця кожна знайома
І юним, і немолодим.
Тут затишок рідного дому,
Який незрівнянний ні з чим.

Приспів:
Місто, де квіти і зорі
Зводять кохання мости,
Де став є, що схожий на море...
Тернопіль - це ти!
Тернопіль, Тернопіль, Тернопіль -
Вартий пісень і поем.
Тернопіль, Тернопіль, Тернопіль -
Казка, в якій ми живем.

Ти ріс і мужнів із віками,
Але не змінив свою суть...
Тут веснами горді каштани,
Як в Києві, біло цвітуть.

Приспів.

Куди б не стелились дороги,
Та завжди приходить той час -
До витоків, отчих порогів
Вертаєш, Тернополе, нас.

Приспів. (2)

Тут вулиця кожна знайома
І юним, і немолодим.
Тут затишок рідного дому,
Який незрівнянний ні з чим.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_899858_l1','pisniua_899858','YouTube','https://www.youtube.com/watch?v=ougCWoEaJZ4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_899858_l2','pisniua_899858','YouTube','https://www.youtube.com/watch?v=TaRsr-9j1mg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_899858_l3','pisniua_899858','YouTube','https://www.youtube.com/watch?v=F8jwA0IG-SM','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_895518';
DELETE FROM song_versions WHERE song_id = 'pisniua_895518';
DELETE FROM songs_fts WHERE song_id = 'pisniua_895518';
DELETE FROM songs WHERE id = 'pisniua_895518';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_895518','Вічний революціонер','Музика: Микола Лисенко Слова: Іван Франко. Виконує: Трембіта, IARAI','uk','ukraine_before_1917',NULL,'1880','аудіозапис','текст пісні написано 1880 р. Заслужена капела України "Трембіта". Іван Франко. Зів''яле листя (рецитація та спів). CD 2 Альбом Іван Франко. Зів''яле листя','Вічний революціонер —
Дух, що тіло рве до бою,
Рве за поступ, щастя й волю, —
Він живе, він ще не вмер.
Ні попівськії тортури,
Ні тюремні царські мури,
Ані війська муштровані,
Ні гармати лаштовані,
Ні шпіонське ремесло
В гріб його ще не звело.

Він не вмер, він ще живе!
Хоч від тисяч літ родився
Та аж вчора розповився
І о власній силі йде.
І простується, міцніє,
І спішить туди, де дніє.
Словом сильним, мов трубою,
Міліони зве з собою, —
Міліони радо йдуть,
Бо се голос духа чуть.

Голос духа чути скрізь:
По курних хатах мужицьких,
По верстатах ремісницьких,
По місцях недолі й сліз.
І де тільки він роздасться,
Щезнуть сльози, сум нещастя,
Сила родиться й завзяття
Не ридать, а добувати,
Хоч синам, як не собі,
Кращу долю в боротьбі.

Вічний революціонер —
Дух, наука, думка, воля —
Не уступить пітьмі поля,
Не дасть спутатись тепер.
Розвалилась зла руїна,
Покотилася лавина,
І де в світі тая сила,
Щоб в бігу її спинила,
Щоб згасила, мов огень,
Розвидняющийся день?','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_895518'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_895518','Вічний революціонер','Вічний революціонер —
Дух, що тіло рве до бою,
Рве за поступ, щастя й волю, —
Він живе, він ще не вмер.
Ні попівськії тортури,
Ні тюремні царські мури,
Ані війська муштровані,
Ні гармати лаштовані,
Ні шпіонське ремесло
В гріб його ще не звело.

Він не вмер, він ще живе!
Хоч від тисяч літ родився
Та аж вчора розповився
І о власній силі йде.
І простується, міцніє,
І спішить туди, де дніє.
Словом сильним, мов трубою,
Міліони зве з собою, —
Міліони радо йдуть,
Бо се голос духа чуть.

Голос духа чути скрізь:
По курних хатах мужицьких,
По верстатах ремісницьких,
По місцях недолі й сліз.
І де тільки він роздасться,
Щезнуть сльози, сум нещастя,
Сила родиться й завзяття
Не ридать, а добувати,
Хоч синам, як не собі,
Кращу долю в боротьбі.

Вічний революціонер —
Дух, наука, думка, воля —
Не уступить пітьмі поля,
Не дасть спутатись тепер.
Розвалилась зла руїна,
Покотилася лавина,
І де в світі тая сила,
Щоб в бігу її спинила,
Щоб згасила, мов огень,
Розвидняющийся день?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_895518_l1','pisniua_895518','YouTube','https://www.youtube.com/watch?v=fMpUeZZB_IQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_895518_l2','pisniua_895518','YouTube','https://www.youtube.com/watch?v=mpUvv8o6IGg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_895518_l3','pisniua_895518','YouTube','https://www.youtube.com/watch?v=svFfMy5gj8E','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_895518_l4','pisniua_895518','YouTube','https://www.youtube.com/watch?v=sUXmIq8vDYo','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_89705';
DELETE FROM song_versions WHERE song_id = 'pisniua_89705';
DELETE FROM songs_fts WHERE song_id = 'pisniua_89705';
DELETE FROM songs WHERE id = 'pisniua_89705';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_89705','Колискова для Оксаночки','Музика: Володимир Івасюк Слова: Володимир Івасюк','uk','ukraine_before_1917',NULL,NULL,'http://ivasyuk.domivka.net/',NULL,'Вітер вже нахмурив чорні брови,
Сад затих до ранку, присмирнів.
Під крилом блакитної любові
Спи, дитя, в діброві снів.

Приспів:
Люлі, ластівко, люлі, радосте,
Срібний мій дзвіночку.
Хай твоя весна і в житті, і в снах
Продзвенить струмочком.

Всюди спокій, радіо замовкло,
Птиці снять про небо у гнізді.
Зорі вкрили сяйвом, наче шовком,
Золоту твою постіль.

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_89705'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_89705','Колискова для Оксаночки','Вітер вже нахмурив чорні брови,
Сад затих до ранку, присмирнів.
Під крилом блакитної любові
Спи, дитя, в діброві снів.

Приспів:
Люлі, ластівко, люлі, радосте,
Срібний мій дзвіночку.
Хай твоя весна і в житті, і в снах
Продзвенить струмочком.

Всюди спокій, радіо замовкло,
Птиці снять про небо у гнізді.
Зорі вкрили сяйвом, наче шовком,
Золоту твою постіль.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_89705_l1','pisniua_89705','YouTube','https://www.youtube.com/watch?v=8qdOhkOOPHQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_89705_l2','pisniua_89705','YouTube','https://www.youtube.com/watch?v=irEkPABNLC4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_897307';
DELETE FROM song_versions WHERE song_id = 'pisniua_897307';
DELETE FROM songs_fts WHERE song_id = 'pisniua_897307';
DELETE FROM songs WHERE id = 'pisniua_897307';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_897307','Надворі дуби тешут','Українська народна пісня. Виконує: Софія Практика','uk','ukraine_before_1917',NULL,NULL,'1. Практика Софія Михайлівна; село Деревні, Жовківський район, Львівська область.','Транскрипція тексту: Катерина Практика Транскрипція нотна: Андрій Вовчак Весілля у селі Деревні Жовківського району Львівської області Пісню співають під час обряду розплітання коси','Надворі дуби тешут,
Надворі дуби тешут,
А в хаті косу чешу(т).

Надворі топірцями,
Надворі топірцями,
А в хаті гребінця(ми).

Надворі дотісуют,
Надворі дотісують,
А в хаті дочісую(т).

Надворі дотесали,
Надворі дотесали,
А в хаті дочеса(ли)','[''pisni.org.ua'', ''cat:halycki'', ''Пісні з Галичини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_897307'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_897307','Надворі дуби тешут','Надворі дуби тешут,
Надворі дуби тешут,
А в хаті косу чешу(т).

Надворі топірцями,
Надворі топірцями,
А в хаті гребінця(ми).

Надворі дотісуют,
Надворі дотісують,
А в хаті дочісую(т).

Надворі дотесали,
Надворі дотесали,
А в хаті дочеса(ли)');
DELETE FROM song_links WHERE song_id = 'pisniua_899714';
DELETE FROM song_versions WHERE song_id = 'pisniua_899714';
DELETE FROM songs_fts WHERE song_id = 'pisniua_899714';
DELETE FROM songs WHERE id = 'pisniua_899714';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_899714','Балада про волю','(Плач Івана Сірка). Музика: Теодор Кукуруза Слова: В. Голобородько. Виконує: Теодор Кукуруза','uk','ukraine_1991',NULL,NULL,NULL,'Виконує:Т.Кукуруза Альбом З днем нарождення Україно ч.3','О, яка важка ти, воле,
Українська наша доле,
Важче шапки Мономаха,
Нерозумна горбаха,
Як отії баламути
Гетьманами хочуть бути,
Батько, син, дочка і мати,
По мільярду прагнуть мати;
А хто ж буде працьовитим,
Чесним, скромним, бойовитим?
Ой, чому ідуть повії —
Віри, Люби і Надії,
А премудрая Софія
Про канари й секси мріє?

Приспів:
Наша підла, вічна зрада,
В нас невірних завжди краде,
Мозок, душу, світлу волю,
І гірку Вкраїнську долю!

Не кляніть мене, Івана,
Що посік мов бусурмана,
У Криму я бранців наших.
Бо поточить підлий шашель,
Вікової злої зради
Бідних чесних і багатих,
Сірих бритих і розумних,
Отоді вже стане сумно.
На Вкраїні милій, любі,
І настане чорна згуба
Задля пісні, слави й мови,
Волі, хати і діброви.

Приспів.','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''cat:zahalni-cinnosti'', ''Суспільно-політичні пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_899714'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_899714','Балада про волю','О, яка важка ти, воле,
Українська наша доле,
Важче шапки Мономаха,
Нерозумна горбаха,
Як отії баламути
Гетьманами хочуть бути,
Батько, син, дочка і мати,
По мільярду прагнуть мати;
А хто ж буде працьовитим,
Чесним, скромним, бойовитим?
Ой, чому ідуть повії —
Віри, Люби і Надії,
А премудрая Софія
Про канари й секси мріє?

Приспів:
Наша підла, вічна зрада,
В нас невірних завжди краде,
Мозок, душу, світлу волю,
І гірку Вкраїнську долю!

Не кляніть мене, Івана,
Що посік мов бусурмана,
У Криму я бранців наших.
Бо поточить підлий шашель,
Вікової злої зради
Бідних чесних і багатих,
Сірих бритих і розумних,
Отоді вже стане сумно.
На Вкраїні милій, любі,
І настане чорна згуба
Задля пісні, слави й мови,
Волі, хати і діброви.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_9101888';
DELETE FROM song_versions WHERE song_id = 'pisniua_9101888';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9101888';
DELETE FROM songs WHERE id = 'pisniua_9101888';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9101888','Білий камінь','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой на горі білий камінь, ку, ку-ку,
Ой на горі білий камінь,
Скоро буде мені амінь
Кукуріку ку, ку, ку.
Ой на горі білий камінь,
Скоро буде мені амінь
Кукуріку ку, ку, ку.

Жінка моя заридала, ку, ку-ку,
Жінка моя заридала,
І пораду мені дала,
Кукуріку ку, ку, ку.
Жінка моя заридала,
І пораду добру дала,
Кукуріку ку, ку, ку.

Їдь у Трускавець лічися, ку, ку-ку,
Їдь у Трускавець лічися,
Та й на других не дивися,
Кукуріку ку, ку, ку.
Їдь у Трускавець лічися,
Та й на других не дивися,
Кукуріку ку, ку, ку.

П"ю Нафтусю і лічуся, ку, ку-ку,
П"ю Нафтусю і лічуся,
На дівчат я не дивлюся,
Кукуріку ку, ку, ку.
П"ю Нафтусю і лічуся,
На дівчат я не дивлюся,
Кукуріку ку, ку, ку.

Раз у вечір пив Нафтусю, ку, ку-ку,
Раз у вечір пив Нафтусю,
Задивився на Марусю
Кукуріку ку, ку, ку.
Раз у вечір пив Нафтусю,
Задивився на Марусю
Кукуріку ку, ку, ку.

Їли, пили, веселились, ку, ку-ку,
Їли, пили, веселились,
Поки гроші не скінчились,
Кукуріку ку, ку, ку.
Їли, пили, веселились,
Поки гривні не скінчились,
Кукуріку ку, ку, ку.

Пишу листа своїй жінці, ку, ку-ку,
Пишу листа своїй жінці,
Знайшли камінь ще й в печінці,
Кукуріку ку, ку, ку.
Пишу листа своїй жінці,
Знайшли камінь ще й в печінці,
Кукуріку ку, ку, ку.

Жінка моя заридала, ку, ку-ку,
Жінка моя заридала,
Сама в Трускавець пригнала,
Кукуріку ку, ку, ку.
Жінка моя заридала,
Сама в Трускавець пригнала,
Кукуріку ку, ку, ку.

Нас з Марусею застала, ку, ку-ку,
Нас з Марусею застала,
Камінь з нирок вибивала,
Кукуріку ку, ку, ку.
Нас з Марусею застала,
Камінь з нирок вибивала,
Кукуріку ку, ку, ку.

Голий-босий по морозі, ку, ку-ку,
Голий-босий по морозі,
Згубив камінь по дорозі,
Кукуріку ку, ку, ку.
Голий-босий по морозі,
Згубив камінь по дорозі,
Кукуріку ку, ку, ку.

Шановні вібпочиваючі, п''ємо водичку і
думаємо про своє здоров''я,
А не про чужих кубіт.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9101888'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9101888','Білий камінь','Ой на горі білий камінь, ку, ку-ку,
Ой на горі білий камінь,
Скоро буде мені амінь
Кукуріку ку, ку, ку.
Ой на горі білий камінь,
Скоро буде мені амінь
Кукуріку ку, ку, ку.

Жінка моя заридала, ку, ку-ку,
Жінка моя заридала,
І пораду мені дала,
Кукуріку ку, ку, ку.
Жінка моя заридала,
І пораду добру дала,
Кукуріку ку, ку, ку.

Їдь у Трускавець лічися, ку, ку-ку,
Їдь у Трускавець лічися,
Та й на других не дивися,
Кукуріку ку, ку, ку.
Їдь у Трускавець лічися,
Та й на других не дивися,
Кукуріку ку, ку, ку.

П"ю Нафтусю і лічуся, ку, ку-ку,
П"ю Нафтусю і лічуся,
На дівчат я не дивлюся,
Кукуріку ку, ку, ку.
П"ю Нафтусю і лічуся,
На дівчат я не дивлюся,
Кукуріку ку, ку, ку.

Раз у вечір пив Нафтусю, ку, ку-ку,
Раз у вечір пив Нафтусю,
Задивився на Марусю
Кукуріку ку, ку, ку.
Раз у вечір пив Нафтусю,
Задивився на Марусю
Кукуріку ку, ку, ку.

Їли, пили, веселились, ку, ку-ку,
Їли, пили, веселились,
Поки гроші не скінчились,
Кукуріку ку, ку, ку.
Їли, пили, веселились,
Поки гривні не скінчились,
Кукуріку ку, ку, ку.

Пишу листа своїй жінці, ку, ку-ку,
Пишу листа своїй жінці,
Знайшли камінь ще й в печінці,
Кукуріку ку, ку, ку.
Пишу листа своїй жінці,
Знайшли камінь ще й в печінці,
Кукуріку ку, ку, ку.

Жінка моя заридала, ку, ку-ку,
Жінка моя заридала,
Сама в Трускавець пригнала,
Кукуріку ку, ку, ку.
Жінка моя заридала,
Сама в Трускавець пригнала,
Кукуріку ку, ку, ку.

Нас з Марусею застала, ку, ку-ку,
Нас з Марусею застала,
Камінь з нирок вибивала,
Кукуріку ку, ку, ку.
Нас з Марусею застала,
Камінь з нирок вибивала,
Кукуріку ку, ку, ку.

Голий-босий по морозі, ку, ку-ку,
Голий-босий по морозі,
Згубив камінь по дорозі,
Кукуріку ку, ку, ку.
Голий-босий по морозі,
Згубив камінь по дорозі,
Кукуріку ку, ку, ку.

Шановні вібпочиваючі, п''ємо водичку і
думаємо про своє здоров''я,
А не про чужих кубіт.');
DELETE FROM song_links WHERE song_id = 'pisniua_9100989';
DELETE FROM song_versions WHERE song_id = 'pisniua_9100989';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9100989';
DELETE FROM songs WHERE id = 'pisniua_9100989';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9100989','Марена','Українська народна пісня. Виконує: Гурт мандрівних дяків Вертеп','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Сьогодні Івана,
Завтра Купала.
Купала на Йвана...
А у Івана
Сестра Мар''яна.
Купала на Йвана...
Ой ви, дівочки,
Всі ви Мариночки.
Купала на Йвана...
А вночі у річки
Грають русалочки.
Купала на Йвана...

Купала на Йвана...

Дівка Маринка
Утопилася.
Купала на Йвана...
Плаття синеньке
Замочилося.
Купала на Йвана...

Як купався Денис
Та й на кладці завис.
Купала на Йвана...
Як купався Іван,
То прийдеться і нам.
Купала на Йвана...
Як купався Іван,
То прийдеться і нам.
Купала на Йвана...

Купала на Йвана...
Купала на Йвана...
Купала на Йвана...','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9100989'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9100989','Марена','Сьогодні Івана,
Завтра Купала.
Купала на Йвана...
А у Івана
Сестра Мар''яна.
Купала на Йвана...
Ой ви, дівочки,
Всі ви Мариночки.
Купала на Йвана...
А вночі у річки
Грають русалочки.
Купала на Йвана...

Купала на Йвана...

Дівка Маринка
Утопилася.
Купала на Йвана...
Плаття синеньке
Замочилося.
Купала на Йвана...

Як купався Денис
Та й на кладці завис.
Купала на Йвана...
Як купався Іван,
То прийдеться і нам.
Купала на Йвана...
Як купався Іван,
То прийдеться і нам.
Купала на Йвана...

Купала на Йвана...
Купала на Йвана...
Купала на Йвана...');
DELETE FROM song_links WHERE song_id = 'pisniua_899552';
DELETE FROM song_versions WHERE song_id = 'pisniua_899552';
DELETE FROM songs_fts WHERE song_id = 'pisniua_899552';
DELETE FROM songs WHERE id = 'pisniua_899552';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_899552','Ой чи ту, чи не ту наш голуб колує','Українська народна пісня. Виконує: Софія Практика','uk','ukraine_before_1917',NULL,NULL,'1. Практика Софія Михайлівна; село Деревні, Жовківський район, Львівська область.','Транскрипція тексту: Катерина Практика Транскрипція нотна: Андрій Вовчак Весілля у селі Деревні Жовківського району Львівської області Це переспівки, жартівливі пісні, що виконуються під час рогатки (викупу молодої молодим)','Ой чи ту, чи не ту наш голуб колує,
Ой чи ту, чи не ту молодий начує.

Ой то ту, ой то ту наш голуб колує,
Ой то ту, ой то ту молодий начує','[''pisni.org.ua'', ''cat:halycki'', ''Пісні з Галичини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_899552'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_899552','Ой чи ту, чи не ту наш голуб колує','Ой чи ту, чи не ту наш голуб колує,
Ой чи ту, чи не ту молодий начує.

Ой то ту, ой то ту наш голуб колує,
Ой то ту, ой то ту молодий начує');
DELETE FROM song_links WHERE song_id = 'pisniua_898373';
DELETE FROM song_versions WHERE song_id = 'pisniua_898373';
DELETE FROM songs_fts WHERE song_id = 'pisniua_898373';
DELETE FROM songs WHERE id = 'pisniua_898373';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_898373','Ой повішу колисочку','Музика: народ Слова: народ. Виконує: Марія Бурмака, Оксана Білозір','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой повішу колисочку
В саду на сливочку,
Буде Господь колисати
Мою дитиночку.

Буде Господь колисати,
Ангели співати,
Буде моя дитиночка
В колисочці спати.

Ой повішу колисочку
В саду на сливочку,
Буде Господь колисати
Мою дитиночку.','[''pisni.org.ua'', ''cat:kolyskovi'', ''cat:pro-ditey'', ''Колискові'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_898373'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_898373','Ой повішу колисочку','Ой повішу колисочку
В саду на сливочку,
Буде Господь колисати
Мою дитиночку.

Буде Господь колисати,
Ангели співати,
Буде моя дитиночка
В колисочці спати.

Ой повішу колисочку
В саду на сливочку,
Буде Господь колисати
Мою дитиночку.');
DELETE FROM song_links WHERE song_id = 'pisniua_9103580';
DELETE FROM song_versions WHERE song_id = 'pisniua_9103580';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9103580';
DELETE FROM songs WHERE id = 'pisniua_9103580';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9103580','Щедрий Вечір!','Українська народна пісня. Виконує: Вогневир','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Щедрий Вечір, Добрий Вечір,
Послала нас мати в село щедрувати,
А батько сварився, щоб я не барився.
А мати казала, щоб ви дали сала
І ковбасу з сальцем, бо хату розтрясем.

Дай ще кишку, то з''їмо в затишку,
І печений книш, бо пустим хату в виш,
І ще під кінець виносьте млинець,
І тої оковитки, бо зробим вам збитки.

Виносьте прудкіше, той підем хутчіше,
Бо короткі свитки та померзли литки.
Ми до вас з добром, а від вас з мішком.
Щедрий Вечір, Добрий Вечір!

Дай же вам Боже у полі роду,
У полі - роду, в родині - згоду!
Сійся, родися жито, пшениця,
Жито, пшениця і всяка пашниця,
А снопи - густенькі, а копи - частенькі,
Нехай з колосочка буде жменьочка,
А зі снопочка хай буде мірочка.
На пиріг здомний, на вечір добрий.
Щедрий Вечір, Добрий Вечір!','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9103580'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9103580','Щедрий Вечір!','Щедрий Вечір, Добрий Вечір,
Послала нас мати в село щедрувати,
А батько сварився, щоб я не барився.
А мати казала, щоб ви дали сала
І ковбасу з сальцем, бо хату розтрясем.

Дай ще кишку, то з''їмо в затишку,
І печений книш, бо пустим хату в виш,
І ще під кінець виносьте млинець,
І тої оковитки, бо зробим вам збитки.

Виносьте прудкіше, той підем хутчіше,
Бо короткі свитки та померзли литки.
Ми до вас з добром, а від вас з мішком.
Щедрий Вечір, Добрий Вечір!

Дай же вам Боже у полі роду,
У полі - роду, в родині - згоду!
Сійся, родися жито, пшениця,
Жито, пшениця і всяка пашниця,
А снопи - густенькі, а копи - частенькі,
Нехай з колосочка буде жменьочка,
А зі снопочка хай буде мірочка.
На пиріг здомний, на вечір добрий.
Щедрий Вечір, Добрий Вечір!');
DELETE FROM song_links WHERE song_id = 'pisniua_9104585';
DELETE FROM song_versions WHERE song_id = 'pisniua_9104585';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9104585';
DELETE FROM songs WHERE id = 'pisniua_9104585';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9104585','Любітеся!','Українська народна пісня. Виконує: Дует Рушничок','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Любімся, обнімімося,
Єднаймося, лякаймося!
Співпрацюймо, не руйнуймо,
Розуміймо, хвилюймо!

Згода, допомога,
Щедрість, жертвенність.
Посвята, подяка,
Людянність, відданість.

Любов, любов, любов...
Любітеся! Любітеся! Любітеся!
Обнімітеся, обнімітеся, обнімітеся!

Єднайтеся, лякайтеся, обнімітеся,        |
Бо, як мирно полагодим, той гаразд буде. | (2)

Любімся, обнімімося,
Єднаймося, лякаймося!
Співпрацюймо, не руйнуймо,
Розуміймо, хвилюймо!

Згода, допомога,
Щедрість, жертвенність.
Посвята, подяка,
Людянність, відданість.

Любов, любов, любов...
Любітеся! Любітеся! Любітеся!
Обнімітеся, обнімітеся, обнімітеся!','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9104585'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9104585','Любітеся!','Любімся, обнімімося,
Єднаймося, лякаймося!
Співпрацюймо, не руйнуймо,
Розуміймо, хвилюймо!

Згода, допомога,
Щедрість, жертвенність.
Посвята, подяка,
Людянність, відданість.

Любов, любов, любов...
Любітеся! Любітеся! Любітеся!
Обнімітеся, обнімітеся, обнімітеся!

Єднайтеся, лякайтеся, обнімітеся,        |
Бо, як мирно полагодим, той гаразд буде. | (2)

Любімся, обнімімося,
Єднаймося, лякаймося!
Співпрацюймо, не руйнуймо,
Розуміймо, хвилюймо!

Згода, допомога,
Щедрість, жертвенність.
Посвята, подяка,
Людянність, відданість.

Любов, любов, любов...
Любітеся! Любітеся! Любітеся!
Обнімітеся, обнімітеся, обнімітеся!');
DELETE FROM song_links WHERE song_id = 'pisniua_9105787';
DELETE FROM song_versions WHERE song_id = 'pisniua_9105787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9105787';
DELETE FROM songs WHERE id = 'pisniua_9105787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9105787','Не та ружа','Українська народна пісня. Виконує: Раїса Кириченко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Не та ружа в лузі квітне,
А та ружа, що в саду.
Не той милий, що двох любить, |
А той милий, що одну.         | (2)

Мене милий одну любить,
Я ж думала, що він мій
Мене дома усі сварять,        |
А ти, милий, пожалій.         | (2)

Пожалів б тебе, мила,
Якби ж думав тебе брать.
Через місяць або й раньше     |
Тебе буду покидать.           | (2)

Покидаєш мене, милий,
Покидаєш, покидай!
А що було поміж нами          |
Нікому не вповідай.           | (2)

Не та ружа в лузі квітне,
А та ружа, що в саду.
Не той милий, що двох любить, |
А той милий, що одну.         | (2)','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9105787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9105787','Не та ружа','Не та ружа в лузі квітне,
А та ружа, що в саду.
Не той милий, що двох любить, |
А той милий, що одну.         | (2)

Мене милий одну любить,
Я ж думала, що він мій
Мене дома усі сварять,        |
А ти, милий, пожалій.         | (2)

Пожалів б тебе, мила,
Якби ж думав тебе брать.
Через місяць або й раньше     |
Тебе буду покидать.           | (2)

Покидаєш мене, милий,
Покидаєш, покидай!
А що було поміж нами          |
Нікому не вповідай.           | (2)

Не та ружа в лузі квітне,
А та ружа, що в саду.
Не той милий, що двох любить, |
А той милий, що одну.         | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_898518';
DELETE FROM song_versions WHERE song_id = 'pisniua_898518';
DELETE FROM songs_fts WHERE song_id = 'pisniua_898518';
DELETE FROM songs WHERE id = 'pisniua_898518';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_898518','Веснянка','Музика: народ Слова: народ. Виконує: Марія Бурмака','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Хвалилася береза,
Хвалилася, лелю-полелю, береза:
"В мене гілля до коріння,
В мене гілля, лелю-полелю, до коріння."

Хвалилася дівчина,
Хвалилася, лелю-полелю, дівчина:
"В мене коса до пояса,
В мене коса, лелю-полелю, до пояса.
В мене личко, як яблучко,
В мене личко, лелю-полелю, як яблучко.
В мене брівки, як шнурок,
В мене брівки, лелю-полелю, як шнурок.
В мене очі, як тернок,
В мене очі, лелю-полелю, як тернок."

Хвалилася береза,
Хвалилася, лелю-полелю, береза...','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_898518'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_898518','Веснянка','Хвалилася береза,
Хвалилася, лелю-полелю, береза:
"В мене гілля до коріння,
В мене гілля, лелю-полелю, до коріння."

Хвалилася дівчина,
Хвалилася, лелю-полелю, дівчина:
"В мене коса до пояса,
В мене коса, лелю-полелю, до пояса.
В мене личко, як яблучко,
В мене личко, лелю-полелю, як яблучко.
В мене брівки, як шнурок,
В мене брівки, лелю-полелю, як шнурок.
В мене очі, як тернок,
В мене очі, лелю-полелю, як тернок."

Хвалилася береза,
Хвалилася, лелю-полелю, береза...');
DELETE FROM song_links WHERE song_id = 'pisniua_9103281';
DELETE FROM song_versions WHERE song_id = 'pisniua_9103281';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9103281';
DELETE FROM songs WHERE id = 'pisniua_9103281';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9103281','Волошки','Слова: Ярослав Ткачівський','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Пісня "Волошки", автором якої є Ярослав Ткачівський, стала весільною. Тому слова народного варіанту відрізняються від первісного. Пропоную оригінал цієї чудової пісні.','Пригадай собі волошки, наші квіти,
Як твоє волосся пестив ніжний вітер...
Вів за обрій п''яну ніч тверезий ранок.
Все минуло... Залишилась в серці рана...

Все минуло, все було, як постріл з лука,
А стріла ще й досі в серці - біль розлуки.
Під вінець ідеш ти з іншим - я не проти.
Та навіщо на весілля мене просиш?

Не покажу свого болю анітрошки,
На весілля принесу тобі волошки.
Сріблом впали з твоїх вій гарячі сльози.
Вже між нами заметілі і морози.

Йдеш заплакана до шлюбу. Віє вітер,
Він за мене тобі сльози ніжно витер.
А як будуть синьоокі в тебе діти -
Пригадай собі волошки, наші квіти...','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9103281'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9103281','Волошки','Пригадай собі волошки, наші квіти,
Як твоє волосся пестив ніжний вітер...
Вів за обрій п''яну ніч тверезий ранок.
Все минуло... Залишилась в серці рана...

Все минуло, все було, як постріл з лука,
А стріла ще й досі в серці - біль розлуки.
Під вінець ідеш ти з іншим - я не проти.
Та навіщо на весілля мене просиш?

Не покажу свого болю анітрошки,
На весілля принесу тобі волошки.
Сріблом впали з твоїх вій гарячі сльози.
Вже між нами заметілі і морози.

Йдеш заплакана до шлюбу. Віє вітер,
Він за мене тобі сльози ніжно витер.
А як будуть синьоокі в тебе діти -
Пригадай собі волошки, наші квіти...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9103281_l1','pisniua_9103281','YouTube','https://www.youtube.com/watch?v=7q0klJBnVCk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9103281_l2','pisniua_9103281','YouTube','https://www.youtube.com/watch?v=zBH-rDa9358','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9103281_l3','pisniua_9103281','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_9102683';
DELETE FROM song_versions WHERE song_id = 'pisniua_9102683';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9102683';
DELETE FROM songs WHERE id = 'pisniua_9102683';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9102683','Ой матінонько-вирядниченько','Українська народна пісня. Виконує: Софія Практика','uk','ukraine_before_1917',NULL,NULL,'Практика Софія Михайлівна; село Деревні, Жовківський район, Львівська область.','Транскрипція тексту: Катерина Практика Весілля у селі Деревні Жовківського району Львівської області','Ой матінонько-вирядниченько,
Де ж ти нас виряджає(ш)?

Ой чи в ліс, чи в діброву, |(2)
Чи до Божого дом(у)?

Ой не в ліс, ні в діброву, |(2)
Но до Божого дом(у)','[''pisni.org.ua'', ''cat:halycki'', ''Пісні з Галичини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9102683'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9102683','Ой матінонько-вирядниченько','Ой матінонько-вирядниченько,
Де ж ти нас виряджає(ш)?

Ой чи в ліс, чи в діброву, |(2)
Чи до Божого дом(у)?

Ой не в ліс, ні в діброву, |(2)
Но до Божого дом(у)');
DELETE FROM song_links WHERE song_id = 'pisniua_9102384';
DELETE FROM song_versions WHERE song_id = 'pisniua_9102384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9102384';
DELETE FROM songs WHERE id = 'pisniua_9102384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9102384','О, Царице',NULL,'uk','ukraine_1991',NULL,NULL,'буклет',NULL,'Буває час, коли я сам,
Немає до кого слово сказати,
Прагну знайти до Тебе шлях
І любов Твою хочу сприйняти.

Приспів:
О, Царице, о, Царице, |
Мати моя,             |
Будь завжди зі мною,  |
Будь біля мене!..     | (2)

В моєму житті все дуже просто,
Бо Ти мені допомагаєш.
Однак бувають важкі хвилини,
Одному важко і Ти це знаєш.

Приспів.

Любов до тебе є, як та зірка,
Що засвітила, як було важко.
Вірю завжди, що даєш мені силу
І будеш світлом, як буде темно.

Приспів.','[''pisni.org.ua'', ''cat:christian'', ''cat:do-bohorodyci'', ''Пісні на християнську тематику'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9102384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9102384','О, Царице','Буває час, коли я сам,
Немає до кого слово сказати,
Прагну знайти до Тебе шлях
І любов Твою хочу сприйняти.

Приспів:
О, Царице, о, Царице, |
Мати моя,             |
Будь завжди зі мною,  |
Будь біля мене!..     | (2)

В моєму житті все дуже просто,
Бо Ти мені допомагаєш.
Однак бувають важкі хвилини,
Одному важко і Ти це знаєш.

Приспів.

Любов до тебе є, як та зірка,
Що засвітила, як було важко.
Вірю завжди, що даєш мені силу
І будеш світлом, як буде темно.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9102384_l1','pisniua_9102384','YouTube','https://www.youtube.com/watch?v=nuSyg7ymI3I','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9102787';
DELETE FROM song_versions WHERE song_id = 'pisniua_9102787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9102787';
DELETE FROM songs WHERE id = 'pisniua_9102787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9102787','Ой, мамо, ой, мамо, я ваша дитина','Українська народна пісня. Виконує: Софія Практика','uk','ukraine_before_1917',NULL,NULL,'Практика Софія Михайлівна; село Деревні, Жовківський район, Львівська область.','Транскрипція тексту: Катерина Практика Весілля у селі Деревні Жовківського району Львівської області','Ой мамо, ой мамо, я ваша дитина,
Мені сі належит ґрунту половина.

Ґрунту половина, корова с телятим,
Шоб я не ходила по селу з горнятим.','[''pisni.org.ua'', ''cat:halycki'', ''cat:pro-ditey'', ''cat:vesilni'', ''Пісні з Галичини'', ''Пісні про любов до дітей'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9102787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9102787','Ой, мамо, ой, мамо, я ваша дитина','Ой мамо, ой мамо, я ваша дитина,
Мені сі належит ґрунту половина.

Ґрунту половина, корова с телятим,
Шоб я не ходила по селу з горнятим.');
DELETE FROM song_links WHERE song_id = 'pisniua_9105085';
DELETE FROM song_versions WHERE song_id = 'pisniua_9105085';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9105085';
DELETE FROM songs WHERE id = 'pisniua_9105085';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9105085','Кинули','Музика: Скрябін Слова: Скрябін. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,NULL,NULL,'По моєму чувак нас кинули

В мене є країна, я її любив
За волошки очі, люди кораблі
Я з нею разом, півжиття прожив
Притулившись тілом до теплої землі

На-на-на  най-на-на  на-на-на

А тепер тут страшно, я розлюбив її
Злі сірі очі, іржаві кораблі
Ми так хотіли, щоб був колись тут рай
Але зрозуміли шо нас просто

Приспів
Кинули, як лохів розвели за спинами
Діла свої зробили, злили нас
Мене з тобою разом в унітаз
Злили нас тут просто..
Кинули, як лохів розвели за спинами
Діла свої зробили, злили нас
Мене з тобою разом в унітаз
Злили нас

Нас таких багато, не тільки я один
Посідаєм в поїзд, і втікнем хто куди
Хай шукає щастя, інший хто-небудь
Посеред ворон, які тебе клюють

Приспів
А нас тут просто кинули, як лохів розвели за спинами
Діла свої зробили, злили нас
Мене з тобою разом в унітаз
Злили нас тут просто..
кинули, як лохів розвели за спинами
Діла свої зробили, злили нас
Мене з тобою разом в унітаз
Злили нас тут просто..
Кинули, кинули, кинули, кинули,
Знаєш нас тут просто кинули
Кинули, кинули, кинули,
А знаєш нас тут просто
Знаєш нас тут просто кинули
Кинули, кинули, кинули
А знаєш нас тут просто кинули
Кинули, кинули, кинули

P.S. Щоб було зручніше, можна грати на пів-тона нижче    Em  G  D  A','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9105085'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9105085','Кинули','По моєму чувак нас кинули

В мене є країна, я її любив
За волошки очі, люди кораблі
Я з нею разом, півжиття прожив
Притулившись тілом до теплої землі

На-на-на  най-на-на  на-на-на

А тепер тут страшно, я розлюбив її
Злі сірі очі, іржаві кораблі
Ми так хотіли, щоб був колись тут рай
Але зрозуміли шо нас просто

Приспів
Кинули, як лохів розвели за спинами
Діла свої зробили, злили нас
Мене з тобою разом в унітаз
Злили нас тут просто..
Кинули, як лохів розвели за спинами
Діла свої зробили, злили нас
Мене з тобою разом в унітаз
Злили нас

Нас таких багато, не тільки я один
Посідаєм в поїзд, і втікнем хто куди
Хай шукає щастя, інший хто-небудь
Посеред ворон, які тебе клюють

Приспів
А нас тут просто кинули, як лохів розвели за спинами
Діла свої зробили, злили нас
Мене з тобою разом в унітаз
Злили нас тут просто..
кинули, як лохів розвели за спинами
Діла свої зробили, злили нас
Мене з тобою разом в унітаз
Злили нас тут просто..
Кинули, кинули, кинули, кинули,
Знаєш нас тут просто кинули
Кинули, кинули, кинули,
А знаєш нас тут просто
Знаєш нас тут просто кинули
Кинули, кинули, кинули
А знаєш нас тут просто кинули
Кинули, кинули, кинули

P.S. Щоб було зручніше, можна грати на пів-тона нижче    Em  G  D  A');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9105085_l1','pisniua_9105085','YouTube','https://www.youtube.com/watch?v=eYxefOdeFm8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9102181';
DELETE FROM song_versions WHERE song_id = 'pisniua_9102181';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9102181';
DELETE FROM songs WHERE id = 'pisniua_9102181';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9102181','НЛО','Музика: Анатолій Матвійчук Слова: Анатолій Матвійчук. Виконує: Анатолій Матвійчук','uk','ukraine_before_1917',NULL,NULL,'http://www.matviychuk.com/',NULL,'Громадяни, слухайте новини:
"Уночі над містом Яготином
Пролітала чудернацька куля,
Синя-синя, як на лобі гуля.
Не диміла куля, не гриміла,
Вогниками тільки мерехтіла,
Сіла біля крайньої криниці,
Попила студеної водиці."

Приспів:
Що це було?        |
Мабуть, НЛО!       |
Ні сіло, ні впало, |
По небу пливло.    | (2)

Кажуть, що до тракториста Савки
Прилітали якось енелонавти,
Всі зелені, наче огірочки,
Випали з тарілки, мов із бочки.
Савка вийшов побалакать з ними,
Пригостив їх цигарками "Прима"
І тому зірвалась, кажуть факти,
Спроба міжпланетного контакту.

Приспів.

Катерина — дівчина привітна,
Тільки сьомий місяць як вагітна,
Кажуть люди, що то за холера? -
Не було у неї кавалера!
Бідкаються тато і матуся:
"Бідна наша донечка Катруся,
День і ніч сиділа з нами в хаті,
То, мабуть, усе пришельці кляті!"

Приспів.

А що НЛО? — Ніхто не знає,
Тільки чутка по землі літає,
Що не марні ті космічні гості —
Мабуть, будуть розпускать колгоспи!
Ну, а нам лишається чекати
І себе байками годувати,
А щоб не втрачати інтересу,
Скажемо - спасибі - рідній пресі!

Приспів. (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9102181'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9102181','НЛО','Громадяни, слухайте новини:
"Уночі над містом Яготином
Пролітала чудернацька куля,
Синя-синя, як на лобі гуля.
Не диміла куля, не гриміла,
Вогниками тільки мерехтіла,
Сіла біля крайньої криниці,
Попила студеної водиці."

Приспів:
Що це було?        |
Мабуть, НЛО!       |
Ні сіло, ні впало, |
По небу пливло.    | (2)

Кажуть, що до тракториста Савки
Прилітали якось енелонавти,
Всі зелені, наче огірочки,
Випали з тарілки, мов із бочки.
Савка вийшов побалакать з ними,
Пригостив їх цигарками "Прима"
І тому зірвалась, кажуть факти,
Спроба міжпланетного контакту.

Приспів.

Катерина — дівчина привітна,
Тільки сьомий місяць як вагітна,
Кажуть люди, що то за холера? -
Не було у неї кавалера!
Бідкаються тато і матуся:
"Бідна наша донечка Катруся,
День і ніч сиділа з нами в хаті,
То, мабуть, усе пришельці кляті!"

Приспів.

А що НЛО? — Ніхто не знає,
Тільки чутка по землі літає,
Що не марні ті космічні гості —
Мабуть, будуть розпускать колгоспи!
Ну, а нам лишається чекати
І себе байками годувати,
А щоб не втрачати інтересу,
Скажемо - спасибі - рідній пресі!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9102181_l1','pisniua_9102181','YouTube','https://www.youtube.com/watch?v=HlPJ4fqptcQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9102181_l2','pisniua_9102181','YouTube','https://www.youtube.com/watch?v=RDUUt5iwuT8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9102181_l3','pisniua_9102181','YouTube','https://www.youtube.com/watch?v=_qPYuKRRDzU','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9102181_l4','pisniua_9102181','YouTube','https://www.youtube.com/watch?v=uS4xUCX7OJE','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_9114085';
DELETE FROM song_versions WHERE song_id = 'pisniua_9114085';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9114085';
DELETE FROM songs WHERE id = 'pisniua_9114085';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9114085','Копав же я та криниченьку','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Копав же я та криниченьку
В вишневім саду: (2)

Чи не вийде молода дівчина
Рано по воду. (2)

Вийшла, вийшла молода дівчина
Раніш од усіх. (2)

Та й набрала та відеречко
Повніш од усіх. (2)

Прохав, прохав та відеречка -
Вона не дала. (2)

Давав, давав та золот перстень, -
Вона не взяла. (2)

Бодай тебе, молода дівчино,
Досада взяла. (2)

Як я просив та відеречка,
А ти не дала. (2)

Як я давав та золот перстень,
А ти не взяла. (2)

Копав же я криниченьку
Неділеньку й дві: (2)

Кохав же я дівчиноньку -
Людям, не собі. (2)','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9114085'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9114085','Копав же я та криниченьку','Копав же я та криниченьку
В вишневім саду: (2)

Чи не вийде молода дівчина
Рано по воду. (2)

Вийшла, вийшла молода дівчина
Раніш од усіх. (2)

Та й набрала та відеречко
Повніш од усіх. (2)

Прохав, прохав та відеречка -
Вона не дала. (2)

Давав, давав та золот перстень, -
Вона не взяла. (2)

Бодай тебе, молода дівчино,
Досада взяла. (2)

Як я просив та відеречка,
А ти не дала. (2)

Як я давав та золот перстень,
А ти не взяла. (2)

Копав же я криниченьку
Неділеньку й дві: (2)

Кохав же я дівчиноньку -
Людям, не собі. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_9103080';
DELETE FROM song_versions WHERE song_id = 'pisniua_9103080';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9103080';
DELETE FROM songs WHERE id = 'pisniua_9103080';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9103080','Апрель*','Музика: Т.І.К. (Тік) Слова: Віктор Бронюк. Виконує: Т.І.К. (Тік)','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Сама не подумала, нащо -
пішла і забувши про літо.
Не вернешся більше нізащо.
Повернеш назад усі квіти...
Літала, не думала в безвісті -
чекала повернення раю.
Сумними думками тверезості.
П''яніла від чорного чаю.

Приспів
Ще так далеко до зими і до морозів.
Навіщо сповіді сумні, навіщо сльози.
Ще так далеко до весни або до літа.
І може хтось, але не я...
Подарить квіти.

Жодної битви не виграла -
кохання з війною зрівнявши.
А ти сама себе із дому вигнала.
У душу нічого не взявши.
Такого чудового літа,
давно вже у мене не було.
Цілий світ хотів тобі подарити,
а ти його просто не чула.
Я цілий світ хотів тобі подарити,
а ти його просто не чула.

Приспів','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9103080'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9103080','Апрель*','Сама не подумала, нащо -
пішла і забувши про літо.
Не вернешся більше нізащо.
Повернеш назад усі квіти...
Літала, не думала в безвісті -
чекала повернення раю.
Сумними думками тверезості.
П''яніла від чорного чаю.

Приспів
Ще так далеко до зими і до морозів.
Навіщо сповіді сумні, навіщо сльози.
Ще так далеко до весни або до літа.
І може хтось, але не я...
Подарить квіти.

Жодної битви не виграла -
кохання з війною зрівнявши.
А ти сама себе із дому вигнала.
У душу нічого не взявши.
Такого чудового літа,
давно вже у мене не було.
Цілий світ хотів тобі подарити,
а ти його просто не чула.
Я цілий світ хотів тобі подарити,
а ти його просто не чула.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9103080_l1','pisniua_9103080','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9115686';
DELETE FROM song_versions WHERE song_id = 'pisniua_9115686';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9115686';
DELETE FROM songs WHERE id = 'pisniua_9115686';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9115686','Чоловіче мій','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Чоловіче мій, дружино моя,
Та завіз ти мене, де роду нема:
Нікуди піти й поговорити,
Серденька тоски розвеселити.

- Ой, жінко моя, дружино моя,
Та біжи до куми, та й поговори,
Біжи до куми, та й поговори,
Що на серденьку є, то все роскажи.

Вже ж я й ходила, вже й говорила,
Вже ж мене кума та й осудила.

- Ой, жінко моя, дружино моя,
Та нікуди не йди, та дома сиди:
Нікуди не йди, та дома сиди,
Що на серденьку є, мені роскажи.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9115686'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9115686','Чоловіче мій','Чоловіче мій, дружино моя,
Та завіз ти мене, де роду нема:
Нікуди піти й поговорити,
Серденька тоски розвеселити.

- Ой, жінко моя, дружино моя,
Та біжи до куми, та й поговори,
Біжи до куми, та й поговори,
Що на серденьку є, то все роскажи.

Вже ж я й ходила, вже й говорила,
Вже ж мене кума та й осудила.

- Ой, жінко моя, дружино моя,
Та нікуди не йди, та дома сиди:
Нікуди не йди, та дома сиди,
Що на серденьку є, мені роскажи.');
DELETE FROM song_links WHERE song_id = 'pisniua_9103889';
DELETE FROM song_versions WHERE song_id = 'pisniua_9103889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9103889';
DELETE FROM songs WHERE id = 'pisniua_9103889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9103889','За річкою за бистрею','Українська народна пісня. Виконує: Берви','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'За річкою за бистрею
Цигани стояли,
Поміж тими циганами   |
Циганка й ворожка.    | (2)

Поміж тими циганами
Циганка й ворожка,
А до теї циганочки    |
Й убита дорожка.      | (2)

А до теї циганочки
Дівчина й ходила,
Вона тую циганочку    |
Хороше просила.       | (2)

Циганочко, серце моє,
Вчини мені волю,
Приворожи козаченька, |
Щоб він жив зо мною.  | (2)

Циганочка ворожечка
Волю й учинила,
Одрізала русу косу,   |
Козака й скорила.     | (2)

Одрізала косу росу,
Козака й скорила,
Ой тая дівчинонька    |
Його б не злюбила.    | (2)','[''pisni.org.ua'', ''cat:poliski'', ''Пісні з Полісся'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9103889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9103889','За річкою за бистрею','За річкою за бистрею
Цигани стояли,
Поміж тими циганами   |
Циганка й ворожка.    | (2)

Поміж тими циганами
Циганка й ворожка,
А до теї циганочки    |
Й убита дорожка.      | (2)

А до теї циганочки
Дівчина й ходила,
Вона тую циганочку    |
Хороше просила.       | (2)

Циганочко, серце моє,
Вчини мені волю,
Приворожи козаченька, |
Щоб він жив зо мною.  | (2)

Циганочка ворожечка
Волю й учинила,
Одрізала русу косу,   |
Козака й скорила.     | (2)

Одрізала косу росу,
Козака й скорила,
Ой тая дівчинонька    |
Його б не злюбила.    | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_9115989';
DELETE FROM song_versions WHERE song_id = 'pisniua_9115989';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9115989';
DELETE FROM songs WHERE id = 'pisniua_9115989';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9115989','Пожену я лебеді','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Пожену я лебеді до Дунаю до води,
Ой, доле моя, до Дунаю до води.

Ой, вже мої лебеді та й наплавалися,
Ой, доле моя, та й наплавалися.

Ой, вже мої карі очі та й наплакалися.
Ой, доле моя, та й наплакалися.

Горе мені молодій, свекоркові годючи,
Ой, доле моя, свекоркові годючи.

Я свекрові догоджу, білу постіль постелю,
Ой, доле моя, білу постіль постелю.

Я свекрусі догоджу, голівоньки догляжу,
Ой, доле моя, голівоньки догляжу.

Діверкові догожу, шовком комір вишию,
Ой, доле моя, шовком комір вишию.

Я зовиці догожу, русу косу зав''яжу,
Ой, доле моя, русу косу зав''яжу.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9115989'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9115989','Пожену я лебеді','Пожену я лебеді до Дунаю до води,
Ой, доле моя, до Дунаю до води.

Ой, вже мої лебеді та й наплавалися,
Ой, доле моя, та й наплавалися.

Ой, вже мої карі очі та й наплакалися.
Ой, доле моя, та й наплакалися.

Горе мені молодій, свекоркові годючи,
Ой, доле моя, свекоркові годючи.

Я свекрові догоджу, білу постіль постелю,
Ой, доле моя, білу постіль постелю.

Я свекрусі догоджу, голівоньки догляжу,
Ой, доле моя, голівоньки догляжу.

Діверкові догожу, шовком комір вишию,
Ой, доле моя, шовком комір вишию.

Я зовиці догожу, русу косу зав''яжу,
Ой, доле моя, русу косу зав''яжу.');
DELETE FROM song_links WHERE song_id = 'pisniua_910383';
DELETE FROM song_versions WHERE song_id = 'pisniua_910383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_910383';
DELETE FROM songs WHERE id = 'pisniua_910383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_910383','Ой під вишнею, під черешнею','Музика: народна Слова: Іван Котляревський. Виконує: Тріо Мареничів, Квартет Явір, Леонід Сергієнко','uk','ukraine_before_1917',NULL,NULL,NULL,'Anrzej: Ця пісня Виборного з п''єси "Наталка-Полтавка" Івана Котляревського, тепер стала народною. Текст п''єси тут: http://lib.ru/SU/UKRAINA/KOTLYAREVS_KIJ/natalka_.txt Підбір акордів: Shtyk','Ой під вишнею, під черешнею,
Стояв старий з молодою,                   |
Як із ягодою.                             | (2)
І просилася, і молилася
Пусти мене старий діду,                   |
На вулицю погулять.                       | (2)
А я сам не піду, і тебе не пущу,
Бо ти мене старенького,                   |
Тай покинеш на біду.                      | (2)
Куплю тобі хатку, іще сіножатку,
І ставок, і млинок,                       |
І вишневенький садок.                     | (2)
Ой не хочу хатки, ані сіножатки,
Ні ставка, ні млинка,                     |
Ні вишневого садка.                       | (2)
Ой ти старий дідуган, ти зігнувся як дуга,
А я молоденька,                           |
Гуляти раденька.                          | (2)
Ой ізгиньте, пропадіте, всі старії кості,
Не сушіте, не крушіте                     |
Мої молодості!                            | (2)
Ти в запічку "ка-хи, ка-хи", я з молодим "хи-хи, хи-хи",
Ой ти все спиш, а я плачу,                |
Тільки літа марно трачу!"                 | (2)
В іншій тональності:
Ой під вишнею, під черешнею,
Стояв старий з молодою,                   |
Як із ягодою.                             | (2)','[''pisni.org.ua'', ''cat:lirychni'', ''cat:zhartivlyvi'', ''Пісні про кохання, ліричні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_910383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_910383','Ой під вишнею, під черешнею','Ой під вишнею, під черешнею,
Стояв старий з молодою,                   |
Як із ягодою.                             | (2)
І просилася, і молилася
Пусти мене старий діду,                   |
На вулицю погулять.                       | (2)
А я сам не піду, і тебе не пущу,
Бо ти мене старенького,                   |
Тай покинеш на біду.                      | (2)
Куплю тобі хатку, іще сіножатку,
І ставок, і млинок,                       |
І вишневенький садок.                     | (2)
Ой не хочу хатки, ані сіножатки,
Ні ставка, ні млинка,                     |
Ні вишневого садка.                       | (2)
Ой ти старий дідуган, ти зігнувся як дуга,
А я молоденька,                           |
Гуляти раденька.                          | (2)
Ой ізгиньте, пропадіте, всі старії кості,
Не сушіте, не крушіте                     |
Мої молодості!                            | (2)
Ти в запічку "ка-хи, ка-хи", я з молодим "хи-хи, хи-хи",
Ой ти все спиш, а я плачу,                |
Тільки літа марно трачу!"                 | (2)
В іншій тональності:
Ой під вишнею, під черешнею,
Стояв старий з молодою,                   |
Як із ягодою.                             | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_910383_l1','pisniua_910383','YouTube','https://www.youtube.com/watch?v=_Q99QLlHDyk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_910383_l2','pisniua_910383','YouTube','https://www.youtube.com/watch?v=5_6CbLOfh98','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_910383_l3','pisniua_910383','YouTube','https://www.youtube.com/watch?v=Tf6Rz6EwuxA','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_9116585';
DELETE FROM song_versions WHERE song_id = 'pisniua_9116585';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9116585';
DELETE FROM songs WHERE id = 'pisniua_9116585';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9116585','Ой, наварили а ляхи пива','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Ой, наварили а ляхи пива,
Та й нікому пити:
Взяли собі Україну,
Та й ніде прожити.

Ой, наварили а ляхи пива,
Та й не шумували,
Взяли собі Україну,
Та й не панували.

Ой, ви, ляшки та недовірки,
Годі ж панувати,
Недалеко іде Гонта,
Дасться він вам знати.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9116585'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9116585','Ой, наварили а ляхи пива','Ой, наварили а ляхи пива,
Та й нікому пити:
Взяли собі Україну,
Та й ніде прожити.

Ой, наварили а ляхи пива,
Та й не шумували,
Взяли собі Україну,
Та й не панували.

Ой, ви, ляшки та недовірки,
Годі ж панувати,
Недалеко іде Гонта,
Дасться він вам знати.');
DELETE FROM song_links WHERE song_id = 'pisniua_911487';
DELETE FROM song_versions WHERE song_id = 'pisniua_911487';
DELETE FROM songs_fts WHERE song_id = 'pisniua_911487';
DELETE FROM songs WHERE id = 'pisniua_911487';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_911487','Котилися вози з гори, на долині стали','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісенник "Пісні Буковини", Київ, "Музична Україна", 1990',NULL,'Котилися вози з гори, на долині стали,
Любилися чорні очка, тепер перестали.

Любилися, кохалися, мати їх не знала,
Розійшлися, розсталися, як на небі хмара.

А хмарочка до купочки одна не доходи,
Усі любки на данчику - моя не приходи.

- Пусти мене, моя мамко, на данчик, на данчик,
Бо не буде данцювати мій милий коханчик.

Та не буде данцювати, лиш ме розводити,
На порозі ме стояти, мене підгидзити.

Подивлюся в гори, в гори - нічого не видко,
Подивлюся - з долу, з долу іде соколятко.

А, соколю-сокольчику, високо літаєш,
Моя хатка при дорозі, чо не повертаєш?

Моя хатка при дорозі, моя хатка крайня,
Мене, мамко, хлопці люблять, бо я таки файна.','[''pisni.org.ua'', ''cat:huculski'', ''cat:kolomyyky'', ''cat:zhartivlyvi'', ''Гуцульські пісні'', ''Коломийки'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_911487'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_911487','Котилися вози з гори, на долині стали','Котилися вози з гори, на долині стали,
Любилися чорні очка, тепер перестали.

Любилися, кохалися, мати їх не знала,
Розійшлися, розсталися, як на небі хмара.

А хмарочка до купочки одна не доходи,
Усі любки на данчику - моя не приходи.

- Пусти мене, моя мамко, на данчик, на данчик,
Бо не буде данцювати мій милий коханчик.

Та не буде данцювати, лиш ме розводити,
На порозі ме стояти, мене підгидзити.

Подивлюся в гори, в гори - нічого не видко,
Подивлюся - з долу, з долу іде соколятко.

А, соколю-сокольчику, високо літаєш,
Моя хатка при дорозі, чо не повертаєш?

Моя хатка при дорозі, моя хатка крайня,
Мене, мамко, хлопці люблять, бо я таки файна.');
DELETE FROM song_links WHERE song_id = 'pisniua_910580';
DELETE FROM song_versions WHERE song_id = 'pisniua_910580';
DELETE FROM songs_fts WHERE song_id = 'pisniua_910580';
DELETE FROM songs WHERE id = 'pisniua_910580';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_910580','Бодай ся когут знудив','Українська народна пісня. Виконує: Дует "Червоне та чорне", Тріо Мареничів, Дмитро Хома, Гурт "Зоряна ніч", Чарівна','uk','ukraine_before_1917',NULL,NULL,'1. Трускавецькі співанки. Пісенник. Упорядник В. Ф. Кузнєцов. - К.: Музична Україна, 1989. - 192 с.','*Ці в''язки у класичному варіанті пісні не співають. Дует "ЧЕРВОНЕ ТА ЧОРНЕ", аудіоальбом "ЛЕМКІВСЬКЕ ВЕСІЛЛЯ-3" www.lemky.iatp.org.ua','Бодай ся когут знудив,
Що рано мене збудив,-
Малая нічка, мала,
Іще-м ся не виспала.
Причини, Боже, ночі
На мої чорні очі,
Причини ще й другую
На мене, молодую.
Послала мене мати
Зелене жито жати,
А я жита не жала,
В борозенці лежала.
Казала мені мати
Зелений ячмінь жати
А ячмінь має остя
Болят ня мамцю кості*
Казала мені мати
Зелений горох рвати
А горох має стручки
Болят ня мамцю ручки*
Казала мені мати
Курчат позаганяти
Ціп-ціп-ціп-ціп до хати
Казала мені мати*
Послала мене мати
Качат позаганяти
Тась-тась-тась-тась до ставу
А сама на забаву*
Послала мене мати
До хлопців погуляти:
"Погуляй трохи, доню,
Я ж тобі не бороню".
А я собі гуляю,
Як рибка по Дунаю,
Як рибка з окунцями,
Я, молода, з хлопцями.
Гуляла би до ночі
Та й спатоньки не хочу,
Гуляла би до рана,
Ой дана ж моя, дана.
Акорди:
G
Бодай ся когут знудив,
Що рано мене збудив,-
Малая нічка, мала,
Іще-м ся не виспала.','[''pisni.org.ua'', ''cat:dances'', ''cat:lirychni'', ''cat:narodni'', ''cat:waltzes'', ''cat:zhartivlyvi'', ''Пісні до танцю'', ''Пісні про кохання, ліричні'', ''Народні пісні'', ''Вальси'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_910580'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_910580','Бодай ся когут знудив','Бодай ся когут знудив,
Що рано мене збудив,-
Малая нічка, мала,
Іще-м ся не виспала.
Причини, Боже, ночі
На мої чорні очі,
Причини ще й другую
На мене, молодую.
Послала мене мати
Зелене жито жати,
А я жита не жала,
В борозенці лежала.
Казала мені мати
Зелений ячмінь жати
А ячмінь має остя
Болят ня мамцю кості*
Казала мені мати
Зелений горох рвати
А горох має стручки
Болят ня мамцю ручки*
Казала мені мати
Курчат позаганяти
Ціп-ціп-ціп-ціп до хати
Казала мені мати*
Послала мене мати
Качат позаганяти
Тась-тась-тась-тась до ставу
А сама на забаву*
Послала мене мати
До хлопців погуляти:
"Погуляй трохи, доню,
Я ж тобі не бороню".
А я собі гуляю,
Як рибка по Дунаю,
Як рибка з окунцями,
Я, молода, з хлопцями.
Гуляла би до ночі
Та й спатоньки не хочу,
Гуляла би до рана,
Ой дана ж моя, дана.
Акорди:
G
Бодай ся когут знудив,
Що рано мене збудив,-
Малая нічка, мала,
Іще-м ся не виспала.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_910580_l1','pisniua_910580','YouTube','https://www.youtube.com/watch?v=EEgDqPKmLIk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_910580_l2','pisniua_910580','YouTube','https://www.youtube.com/watch?v=eXFqFN-LVC8','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9117085';
DELETE FROM song_versions WHERE song_id = 'pisniua_9117085';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9117085';
DELETE FROM songs WHERE id = 'pisniua_9117085';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9117085','А наш дружко коровай крає','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісні Шевченкового краю. Записи, впорядкування і примітки Олекси Ошуркевича. Луцьк: Волинська обласна друкарня, 2006. - 484 с.',NULL,'А наш дружко коровай крає,  | (2)
Семеро дітей має.
Прийшли з кошелями,
Весь коровай забрали.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9117085'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9117085','А наш дружко коровай крає','А наш дружко коровай крає,  | (2)
Семеро дітей має.
Прийшли з кошелями,
Весь коровай забрали.');
DELETE FROM song_links WHERE song_id = 'pisniua_91080';
DELETE FROM song_versions WHERE song_id = 'pisniua_91080';
DELETE FROM songs_fts WHERE song_id = 'pisniua_91080';
DELETE FROM songs WHERE id = 'pisniua_91080';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_91080','Задивляюсь у твої зіниці','Музика: невідомий Слова: Василь Симоненко. Виконує: Рутенія, Край','uk','ukraine_1991',NULL,NULL,'Збірник пісень Студентського братства Львівської політехніки. Львів 2000',NULL,'Задивляюсь   у твої зіниці
Голубі, тривожні, ніби рань.
Крешуть з них червоні блискавиці
Революцій, бунтів і повстань.

Приспів:
Україно! Ти моя молитво!
Україно!   Моя розпуко вікова!
Гримотить над світом люта битва
За твоє життя, твої права.

Одійдіте, недруги лукаві,
Друзі, зачекайте на путі.
Маю я святе синівське право
З матір''ю побуть на самоті.

Приспів.

Хай палають хмари світанкові,
Хай сичать образи - все одно
Я проллюся крапелькою крові
На твоє священне знамено.

Приспів.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_91080'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_91080','Задивляюсь у твої зіниці','Задивляюсь   у твої зіниці
Голубі, тривожні, ніби рань.
Крешуть з них червоні блискавиці
Революцій, бунтів і повстань.

Приспів:
Україно! Ти моя молитво!
Україно!   Моя розпуко вікова!
Гримотить над світом люта битва
За твоє життя, твої права.

Одійдіте, недруги лукаві,
Друзі, зачекайте на путі.
Маю я святе синівське право
З матір''ю побуть на самоті.

Приспів.

Хай палають хмари світанкові,
Хай сичать образи - все одно
Я проллюся крапелькою крові
На твоє священне знамено.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_91080_l1','pisniua_91080','YouTube','https://www.youtube.com/watch?v=5x24HUFnisY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_91080_l2','pisniua_91080','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9118281';
DELETE FROM song_versions WHERE song_id = 'pisniua_9118281';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9118281';
DELETE FROM songs WHERE id = 'pisniua_9118281';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9118281','Прощання','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'Співаник УПА. Борці за волю України. упор. О.Бобикевич, Ю.Лаврівський, О.Плешкевич та ін. Львів: Меморіал. 1992. - 190 с.',NULL,'Ой, пустіть, та пустіть, нехай гляну,
Яка гарна дівоча краса,
В неї усміх чарівний квіточок.
По плечу розпущена коса.

Ой, останься, мій милий, останься.
Прошу тя не лишай ти мене,
Пригадай собі наше кохання,
Як я вірно любила тебе.

Вірю, вірю, моя дорогая,
Що ти вірно любила мене,
Але мушу служити Вкраїні
І на той час кидаю тебе.

Грають сурми зі сходу й заходу,
Час до бою, ставайте в ряди,
Визволяти Вкраїну з неволі,
Визволяти наш нарід з тюрми.

Встане воля, воскресне Вкраїна,
Погуляєм в широких степах,
І не будем вже більше каратись
В тих проклятих ворожих тюрмах.','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9118281'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9118281','Прощання','Ой, пустіть, та пустіть, нехай гляну,
Яка гарна дівоча краса,
В неї усміх чарівний квіточок.
По плечу розпущена коса.

Ой, останься, мій милий, останься.
Прошу тя не лишай ти мене,
Пригадай собі наше кохання,
Як я вірно любила тебе.

Вірю, вірю, моя дорогая,
Що ти вірно любила мене,
Але мушу служити Вкраїні
І на той час кидаю тебе.

Грають сурми зі сходу й заходу,
Час до бою, ставайте в ряди,
Визволяти Вкраїну з неволі,
Визволяти наш нарід з тюрми.

Встане воля, воскресне Вкраїна,
Погуляєм в широких степах,
І не будем вже більше каратись
В тих проклятих ворожих тюрмах.');
DELETE FROM song_links WHERE song_id = 'pisniua_9117683';
DELETE FROM song_versions WHERE song_id = 'pisniua_9117683';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9117683';
DELETE FROM songs WHERE id = 'pisniua_9117683';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9117683','Й Іванова голова','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісні Шевченкового краю. Записи, впорядкування і примітки Олекси Ошуркевича. Луцьк: Волинська обласна друкарня, 2006. - 484 с.',NULL,'Й Іванова голова
Зайнялася була.
Стовпом дим.   | (2)

А дівчата з радощами
Носять воду пригорщами.
Стовпом дим.   | (2)

Вони ж її не потушать,
Та ще гірше розворушать,
Стовпом дим.   | (2)','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9117683'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9117683','Й Іванова голова','Й Іванова голова
Зайнялася була.
Стовпом дим.   | (2)

А дівчата з радощами
Носять воду пригорщами.
Стовпом дим.   | (2)

Вони ж її не потушать,
Та ще гірше розворушать,
Стовпом дим.   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_9115580';
DELETE FROM song_versions WHERE song_id = 'pisniua_9115580';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9115580';
DELETE FROM songs WHERE id = 'pisniua_9115580';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9115580','Ой, темная ніченька','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Ой, темная, та не видная ніченька,
Ой, журиться та соколова матінка.
Ой, десь мого ясного сокола нема,
Ой, десь його чорні галоньки спинили,
Ой, десь Його пивом та вином гостюють,
ОЙ, десь йому чорну галоньку готують.
Ой, галоньку, ой, дівчиноньку готують.
Ой, десь взялись на ясному небі хмари,
Що галонька та соколу не до пари.
Ой, розвій, вітре, розвій чорну хмароньку,
Ой, покинь, ой, покинь, покинь чужу дівоньку.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9115580'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9115580','Ой, темная ніченька','Ой, темная, та не видная ніченька,
Ой, журиться та соколова матінка.
Ой, десь мого ясного сокола нема,
Ой, десь його чорні галоньки спинили,
Ой, десь Його пивом та вином гостюють,
ОЙ, десь йому чорну галоньку готують.
Ой, галоньку, ой, дівчиноньку готують.
Ой, десь взялись на ясному небі хмари,
Що галонька та соколу не до пари.
Ой, розвій, вітре, розвій чорну хмароньку,
Ой, покинь, ой, покинь, покинь чужу дівоньку.');
DELETE FROM song_links WHERE song_id = 'pisniua_9118580';
DELETE FROM song_versions WHERE song_id = 'pisniua_9118580';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9118580';
DELETE FROM songs WHERE id = 'pisniua_9118580';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9118580','Нехай звенить',NULL,'uk','ukraine_1991',NULL,NULL,'http://www.bazylianie.pl/mlolytownyk/pisni.htm',NULL,'Нехай звенить днесь кругом
Пісня свята любви.
Нехай славить на весь світ
Пресвяту Матір в небеси.

Маріє, Божа Мати,             |
Зглянься Ти над нами.         |
Маріє, Маріє, Маріє, -        |
Кличем всі серцем і устами!   | (2)

До Тебе всі тут спішать
Віддати свій поклін,
Тобі на честь піснь несеться,
На Твою славу грає дзвін.

Маріє, Божа Мати...           |
У стіп Твоїх всі клячать,     |
До Тебе шлють мольби:         |
"О, пресвята, глянь на нас,   |
Визволь від горя, від журби!" |
Маріє, Божа Мати...           | (2)','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9118580'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9118580','Нехай звенить','Нехай звенить днесь кругом
Пісня свята любви.
Нехай славить на весь світ
Пресвяту Матір в небеси.

Маріє, Божа Мати,             |
Зглянься Ти над нами.         |
Маріє, Маріє, Маріє, -        |
Кличем всі серцем і устами!   | (2)

До Тебе всі тут спішать
Віддати свій поклін,
Тобі на честь піснь несеться,
На Твою славу грає дзвін.

Маріє, Божа Мати...           |
У стіп Твоїх всі клячать,     |
До Тебе шлють мольби:         |
"О, пресвята, глянь на нас,   |
Визволь від горя, від журби!" |
Маріє, Божа Мати...           | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_9118383';
DELETE FROM song_versions WHERE song_id = 'pisniua_9118383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9118383';
DELETE FROM songs WHERE id = 'pisniua_9118383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9118383','Марш сотні Хріна','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'Співаник УПА. Борці за волю України. упор. О.Бобикевич, Ю.Лаврівський, О.Плешкевич та ін. Львів: Меморіал. 1992. - 190 с.',NULL,'Ми сотня лемківська завзята,
Що в боях зродилась і зросла,
Громила ляхів в своїх селах
І честь Батьківщині зберігла.

Хоч темная нічка мов пекло,
Палають ворожі кубла,
Хоч буря зо снігом гуляє,
Ми йдемо розстрільною в боях.

Тремтить лютий ворог всі ночі,
А днями облавами ґуля,
Питає, де сотня "Хрінівців",
Що полки ворожі розбива.

О, вітра не зловиш ти, кате,
Де тіні підперли верхи,
Від граду залізного лемків
Ти згинеш, щоб більше тут не йти.

Мов вихор гуляє друг Вітер,
По горах, лісах і ярах.
Торощить він зграї ворожі,
В полон забирає в боях.

На лінії Сянік і ЛупкІв
Знимаються в небо дими,
Завзятий мінер наш Омелько,
Мікує ворожі мости.

Мов буря гуляють "Хрінівці";
Побідно проходять Гічвиці,
Яселко, Завадку, Команчу,
Морохів й також Колониці.

І знає про них Кожушне,
Там в ворога гармати взяли,
Середнє, Мокре і Кам''яне,
Де зграї ворожі прогнали.

Хоч впало нас в боях багато,
Ще більше до бою іде,
За Тебе свята Україно
Й любов до народу веде.    Фонограма-мінус (mp3)','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:povstanski'', ''Гимни та марші'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9118383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9118383','Марш сотні Хріна','Ми сотня лемківська завзята,
Що в боях зродилась і зросла,
Громила ляхів в своїх селах
І честь Батьківщині зберігла.

Хоч темная нічка мов пекло,
Палають ворожі кубла,
Хоч буря зо снігом гуляє,
Ми йдемо розстрільною в боях.

Тремтить лютий ворог всі ночі,
А днями облавами ґуля,
Питає, де сотня "Хрінівців",
Що полки ворожі розбива.

О, вітра не зловиш ти, кате,
Де тіні підперли верхи,
Від граду залізного лемків
Ти згинеш, щоб більше тут не йти.

Мов вихор гуляє друг Вітер,
По горах, лісах і ярах.
Торощить він зграї ворожі,
В полон забирає в боях.

На лінії Сянік і ЛупкІв
Знимаються в небо дими,
Завзятий мінер наш Омелько,
Мікує ворожі мости.

Мов буря гуляють "Хрінівці";
Побідно проходять Гічвиці,
Яселко, Завадку, Команчу,
Морохів й також Колониці.

І знає про них Кожушне,
Там в ворога гармати взяли,
Середнє, Мокре і Кам''яне,
Де зграї ворожі прогнали.

Хоч впало нас в боях багато,
Ще більше до бою іде,
За Тебе свята Україно
Й любов до народу веде.    Фонограма-мінус (mp3)');
DELETE FROM song_links WHERE song_id = 'pisniua_9118686';
DELETE FROM song_versions WHERE song_id = 'pisniua_9118686';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9118686';
DELETE FROM songs WHERE id = 'pisniua_9118686';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9118686','О, Ісусе, Ти з лю6ови','Слова: о. В. Стех','uk','ukraine_1991',NULL,NULL,'http://www.bazylianie.pl/mlolytownyk/pisni.htm',NULL,'О, Ісусе, Ти з любови
Тут між нами позістав,
За помешкання для себе      |
Ти кивот убогий взяв.       | (2)

В тім кивоті Ти царствуєш,
З нього ласки роздаєш,
Всіх до себе потягаєш,      |
Всіх при собі голубиш.      | (2)

Сли б не віра в Боже слово,
Хто ж з людей би погадав,
Щоб в кивоті, в виді хліба, |
Вічний Бог скриватись мав?  | (2)

Ти під видом хліба смирний,
Нас смиренія учиш:
Вчиш нас жертви і любови,   |
Всі нам горя солодиш.       | (2)

О, за це, що Ти смирився
Так глибоко тут для нас,
Будем всі Тебе любити       |
Щирим серцем, Спасе наш.    | (2)

Будем вірно Ти служити,
Доки нашого життя,
А по смерті дай нам зріти   |
Світлість Божого лиця.      | (2)    комп''ютерне відтворення  (','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christ'', ''cat:christian'', ''Церковні пісні'', ''Пісні до Ісуса Христа'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9118686'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9118686','О, Ісусе, Ти з лю6ови','О, Ісусе, Ти з любови
Тут між нами позістав,
За помешкання для себе      |
Ти кивот убогий взяв.       | (2)

В тім кивоті Ти царствуєш,
З нього ласки роздаєш,
Всіх до себе потягаєш,      |
Всіх при собі голубиш.      | (2)

Сли б не віра в Боже слово,
Хто ж з людей би погадав,
Щоб в кивоті, в виді хліба, |
Вічний Бог скриватись мав?  | (2)

Ти під видом хліба смирний,
Нас смиренія учиш:
Вчиш нас жертви і любови,   |
Всі нам горя солодиш.       | (2)

О, за це, що Ти смирився
Так глибоко тут для нас,
Будем всі Тебе любити       |
Щирим серцем, Спасе наш.    | (2)

Будем вірно Ти служити,
Доки нашого життя,
А по смерті дай нам зріти   |
Світлість Божого лиця.      | (2)    комп''ютерне відтворення  (');
DELETE FROM song_links WHERE song_id = 'pisniua_9120683';
DELETE FROM song_versions WHERE song_id = 'pisniua_9120683';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9120683';
DELETE FROM songs WHERE id = 'pisniua_9120683';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9120683','Випускний','Музика: Андрій Кузьменко Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,NULL,NULL,'F#                Dm#
В спортзалі тихо, не бігають діти
На стінах шаріки, і на столах квіти
І не насварять за помаду вчителі
Сьогодні можна, сьогодні випускний

Приспів:
Останній раз, одягнеш форму і поплач
Останній вальс, танцює зі сльозами строгий завуч
Тільки раз, в каптьорці ти покуриш з фізруком
І перший раз, до ранку не повернешся додому

Ти по-дорослому сьогодні виглядаєш
Закінчиш школу, але дечого не знаєш
Вдивись уважно в обличчя цих людей
Бо будеш бачити багато з них в цей день

Приспів.
Програш. (Останній раз, останній вальс)

Ранкове сонце не спішиться підійматись
Комусь вставати, а комусь лягати спати
А ти гуляєш з друзями по місту
Прийшов твій час прощатися з дитинством

Програш.
Приспів.','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9120683'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9120683','Випускний','F#                Dm#
В спортзалі тихо, не бігають діти
На стінах шаріки, і на столах квіти
І не насварять за помаду вчителі
Сьогодні можна, сьогодні випускний

Приспів:
Останній раз, одягнеш форму і поплач
Останній вальс, танцює зі сльозами строгий завуч
Тільки раз, в каптьорці ти покуриш з фізруком
І перший раз, до ранку не повернешся додому

Ти по-дорослому сьогодні виглядаєш
Закінчиш школу, але дечого не знаєш
Вдивись уважно в обличчя цих людей
Бо будеш бачити багато з них в цей день

Приспів.
Програш. (Останній раз, останній вальс)

Ранкове сонце не спішиться підійматись
Комусь вставати, а комусь лягати спати
А ти гуляєш з друзями по місту
Прийшов твій час прощатися з дитинством

Програш.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9120683_l1','pisniua_9120683','YouTube','https://www.youtube.com/watch?v=TM_uB0pYuE0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9116786';
DELETE FROM song_versions WHERE song_id = 'pisniua_9116786';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9116786';
DELETE FROM songs WHERE id = 'pisniua_9116786';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9116786','Зажурилась чумачина','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Зажурилась чумачина,
Що копієчки нема:
Сидить, лупає очима,
Як голодная сова.

Що в Одесі та в Херсоні
За три роки заробив,
Те в Полтаві зробив славу:
За два ярмарки пропив.

Пив горілку і наливку,
Ще й музики я водив,
На останці ж довелося,
Ще й в холодній посидів.','[''pisni.org.ua'', ''cat:chumacki'', ''cat:socialno-pobutovi'', ''Чумацькі пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9116786'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9116786','Зажурилась чумачина','Зажурилась чумачина,
Що копієчки нема:
Сидить, лупає очима,
Як голодная сова.

Що в Одесі та в Херсоні
За три роки заробив,
Те в Полтаві зробив славу:
За два ярмарки пропив.

Пив горілку і наливку,
Ще й музики я водив,
На останці ж довелося,
Ще й в холодній посидів.');
DELETE FROM song_links WHERE song_id = 'pisniua_9121281';
DELETE FROM song_versions WHERE song_id = 'pisniua_9121281';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9121281';
DELETE FROM songs WHERE id = 'pisniua_9121281';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9121281','Години','Музика: Володимир Омельченко Слова: Микола Терельов. Виконує: Інший день','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ти любила гроші та, на жаль,
Їх не мала зовсім, і печаль
Серце обіймала твоє кожен раз,
Коли ти вставала з ложа в ранній час.
Доки мала вроду неземну
Брала нагороду ще й яку,
Та з роками все минає, лиш любов
Не проходить, заставляє бігти кров.

Приспів:
А години за годинами йдуть і йдуть,
Грішне тіло, грішна врода,
Ти шукаєш насолоди...
А години за годинами йдуть і йдуть,
Ще є тіло, ще є врода
Та немає насолоди вже...

І в розкішнім хутрі ходиш ти,
На руках каблучки золоті,
Хоч будинок з садом маєш на горі,
Але ж сльози витираєш в самоті...

Приспів. (2)

А години...','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9121281'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9121281','Години','Ти любила гроші та, на жаль,
Їх не мала зовсім, і печаль
Серце обіймала твоє кожен раз,
Коли ти вставала з ложа в ранній час.
Доки мала вроду неземну
Брала нагороду ще й яку,
Та з роками все минає, лиш любов
Не проходить, заставляє бігти кров.

Приспів:
А години за годинами йдуть і йдуть,
Грішне тіло, грішна врода,
Ти шукаєш насолоди...
А години за годинами йдуть і йдуть,
Ще є тіло, ще є врода
Та немає насолоди вже...

І в розкішнім хутрі ходиш ти,
На руках каблучки золоті,
Хоч будинок з садом маєш на горі,
Але ж сльози витираєш в самоті...

Приспів. (2)

А години...');
DELETE FROM song_links WHERE song_id = 'pisniua_9114181';
DELETE FROM song_versions WHERE song_id = 'pisniua_9114181';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9114181';
DELETE FROM songs WHERE id = 'pisniua_9114181';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9114181','Кому воля, а кому неволя','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Кому воля, а кому неволя,
Гей, ніхто не знає мого горя.

Моє горе, горе неякоє,
Гей, моє горе великоє.

Білі ручки нічого не роблять,
А білі ніжки далеко не ходять.

Тільки й ходять у сад, у садочок,
Гей, щипать ягід, ягідочок.

Вони ягід, ягід не нарвали,
Тільки соловейка розпитали:

"Соловейку, ой, ти малесенький,
Скажи правду, де мій милесенький?"

- Ой, твій милий не прийде до хати,
Бо його погнали уже у солдати.','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9114181'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9114181','Кому воля, а кому неволя','Кому воля, а кому неволя,
Гей, ніхто не знає мого горя.

Моє горе, горе неякоє,
Гей, моє горе великоє.

Білі ручки нічого не роблять,
А білі ніжки далеко не ходять.

Тільки й ходять у сад, у садочок,
Гей, щипать ягід, ягідочок.

Вони ягід, ягід не нарвали,
Тільки соловейка розпитали:

"Соловейку, ой, ти малесенький,
Скажи правду, де мій милесенький?"

- Ой, твій милий не прийде до хати,
Бо його погнали уже у солдати.');
DELETE FROM song_links WHERE song_id = 'pisniua_9126384';
DELETE FROM song_versions WHERE song_id = 'pisniua_9126384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9126384';
DELETE FROM songs WHERE id = 'pisniua_9126384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9126384','Дума. Шлях до небесної України','Музика: Пропала Грамота Слова: Павло Нечитайло. Виконує: Пропала Грамота','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, по небесному шляху,
Через чорний ковиль
Їдуть фіри чумацькії мальовані.
Ой, та їдуть вони,
Космічних звірів поганяють,
Що то їх турецькії люди
Волами називають.
Легенько вони ступають,
До сонечка Ярила поспішають,
Дари йому везуть, зберігають.
І не торкне їх орда татарськая,
Ні неволя бусурманськая,
Бо везуть вони книги чудеснії,
Усякому чоловіку інтереснії:
Єрмолой, Бермолой, Савгирю
І ще тую, що телятинов обшита,
Ще тую, що телятинов обшита.

Йой, тут лихо велетенськеє придибило,
Єдного чумаченька
Плутонськов гарячков прибило:
Очі йому закрило, язика висолопило.
Чумацький ватаг люльку з рота роняє,
Місячний попіл на полудрабок висипає,
Сльозами-зіроньками рідну землю омиває,
До чумаків промовляє:
"Йой, чумаки, що ж нам робити,
Де Петра-свата схоронити?"

Бистро єси рішили, що робити:
У великого воза Петра-свата положити,
Другим накрити,
У Всесвіта космічного запустити.
Дотепер воно літає,
Українським чумакам путь до Криму освіщає,
Що то його староста Миргородський
Великим Возом величає!
Лети, лети, звеселяйся,
У білі шати вбирайся,
Дума моя превелебная,
На тихі води, на ясні зорі,
У світ християнський.','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9126384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9126384','Дума. Шлях до небесної України','Ой, по небесному шляху,
Через чорний ковиль
Їдуть фіри чумацькії мальовані.
Ой, та їдуть вони,
Космічних звірів поганяють,
Що то їх турецькії люди
Волами називають.
Легенько вони ступають,
До сонечка Ярила поспішають,
Дари йому везуть, зберігають.
І не торкне їх орда татарськая,
Ні неволя бусурманськая,
Бо везуть вони книги чудеснії,
Усякому чоловіку інтереснії:
Єрмолой, Бермолой, Савгирю
І ще тую, що телятинов обшита,
Ще тую, що телятинов обшита.

Йой, тут лихо велетенськеє придибило,
Єдного чумаченька
Плутонськов гарячков прибило:
Очі йому закрило, язика висолопило.
Чумацький ватаг люльку з рота роняє,
Місячний попіл на полудрабок висипає,
Сльозами-зіроньками рідну землю омиває,
До чумаків промовляє:
"Йой, чумаки, що ж нам робити,
Де Петра-свата схоронити?"

Бистро єси рішили, що робити:
У великого воза Петра-свата положити,
Другим накрити,
У Всесвіта космічного запустити.
Дотепер воно літає,
Українським чумакам путь до Криму освіщає,
Що то його староста Миргородський
Великим Возом величає!
Лети, лети, звеселяйся,
У білі шати вбирайся,
Дума моя превелебная,
На тихі води, на ясні зорі,
У світ християнський.');
DELETE FROM song_links WHERE song_id = 'pisniua_9123181';
DELETE FROM song_versions WHERE song_id = 'pisniua_9123181';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9123181';
DELETE FROM songs WHERE id = 'pisniua_9123181';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9123181','А калина не верба','Українська народна пісня. Виконує: Наталка Карпа','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, на горі вітер дув,
Вчора в мене милий був,
Черевички купував,
Біле личко цілував.

Приспів:
А калина, а калина не верба,
Я дівчина, я дівчина молода.
А калина, а калина не верба,
Я дівчина, я дівчина молода.

Била мене мати вранці,
Що порвали хлопці штанці,
А я штанці полатаю
Та й із милим погуляю.

Приспів. (2)

Моя мати зайнялася -
Я ж у неї удалася.
Мені бабця розказала,
Як до тата ти втікала.

Приспів. (2)','[''pisni.org.ua'', ''cat:narodni'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9123181'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9123181','А калина не верба','Ой, на горі вітер дув,
Вчора в мене милий був,
Черевички купував,
Біле личко цілував.

Приспів:
А калина, а калина не верба,
Я дівчина, я дівчина молода.
А калина, а калина не верба,
Я дівчина, я дівчина молода.

Била мене мати вранці,
Що порвали хлопці штанці,
А я штанці полатаю
Та й із милим погуляю.

Приспів. (2)

Моя мати зайнялася -
Я ж у неї удалася.
Мені бабця розказала,
Як до тата ти втікала.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9123181_l1','pisniua_9123181','YouTube','https://www.youtube.com/watch?v=ViRWzToDf3M','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9123181_l2','pisniua_9123181','YouTube','https://www.youtube.com/watch?v=wcHgf5daLhA','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9123181_l3','pisniua_9123181','YouTube','https://www.youtube.com/watch?v=9iBmNAnOfdA','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9123181_l4','pisniua_9123181','YouTube','https://www.youtube.com/watch?v=FtAprCgfhIk','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9123181_l5','pisniua_9123181','YouTube','https://www.youtube.com/watch?v=tMCz8FAuIjk','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9123181_l6','pisniua_9123181','YouTube','https://www.youtube.com/watch?v=JWUn0_9hQwU','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9123181_l7','pisniua_9123181','YouTube','https://www.youtube.com/watch?v=nW2Lc7OSk2c','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9123181_l8','pisniua_9123181','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,8);
DELETE FROM song_links WHERE song_id = 'pisniua_91281';
DELETE FROM song_versions WHERE song_id = 'pisniua_91281';
DELETE FROM songs_fts WHERE song_id = 'pisniua_91281';
DELETE FROM songs WHERE id = 'pisniua_91281';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_91281','Дочка мельника','Музика: Сергій Фоменко Слова: Сергій Фоменко. Виконує: Мандри','uk','ukraine_before_1917',NULL,NULL,'1. Пісневир. Молодіжний співаник. Львів 2001. 2. Ауідо-CD "Мандри. Романсеро про ніжну королеву" (2000)',NULL,'В мельника, чий млин на горі, чарівна дочка.
А у мене хата стара і в саду бузочок.
Я лежу й дивлюся у небо на білі хмари.
C               Em       Am   F     С Em Am F
А пастух Свирид на горі пасе отару.

Гарнії волошки цвітуть в моїм садочку.
Та іще гарнішії очі в мельника дочки.
От лежу й сумую один біля ставочку,
Бо люблю я більше за все мельника дочку.

В мельника, чий млин на горі, чарівна дочка.
А у мене хата стара і в саду бузочок.
Я лежу й дивлюся у небо на білі хмари.
А пастух Свирид на горі пасе отару.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_91281'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_91281','Дочка мельника','В мельника, чий млин на горі, чарівна дочка.
А у мене хата стара і в саду бузочок.
Я лежу й дивлюся у небо на білі хмари.
C               Em       Am   F     С Em Am F
А пастух Свирид на горі пасе отару.

Гарнії волошки цвітуть в моїм садочку.
Та іще гарнішії очі в мельника дочки.
От лежу й сумую один біля ставочку,
Бо люблю я більше за все мельника дочку.

В мельника, чий млин на горі, чарівна дочка.
А у мене хата стара і в саду бузочок.
Я лежу й дивлюся у небо на білі хмари.
А пастух Свирид на горі пасе отару.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_91281_l1','pisniua_91281','YouTube','https://www.youtube.com/watch?v=MRNkBcjYbcw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_91281_l2','pisniua_91281','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9124989';
DELETE FROM song_versions WHERE song_id = 'pisniua_9124989';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9124989';
DELETE FROM songs WHERE id = 'pisniua_9124989';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9124989','Небо та степ','Музика: Василь Косенко Слова: Василь Косенко. Виконує: Василь Косенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Небо та степ...
Вітер пливе ковилою.
Небо та степ...
Тополі над шляхом стоять.
Небо та степ...
Знову нас кличе дорога.
Небо та степ
Над нами стожари горять.

Приспів:
І коли на душі печаль,    |
Я ступаю на битий шлях,   |
Він несе мене в далечінь, |
Він дарує душі розмай.    | (2)

Небо та степ...
Пройдені юності стежки.
Небо та степ...
В скронях горить сивина.
Небо та степ...
І вишиванок мережки.
Небо та степ...
Чорних очей глибина.

Приспів.

Небо та степ...
Вітер пливе ковилою.
Небо та степ...
Над шляхом тополі стоять.
Небо та степ...
Знову нас кличе дорога.
Небо та степ
Над нами стожари горять.

Приспів.','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9124989'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9124989','Небо та степ','Небо та степ...
Вітер пливе ковилою.
Небо та степ...
Тополі над шляхом стоять.
Небо та степ...
Знову нас кличе дорога.
Небо та степ
Над нами стожари горять.

Приспів:
І коли на душі печаль,    |
Я ступаю на битий шлях,   |
Він несе мене в далечінь, |
Він дарує душі розмай.    | (2)

Небо та степ...
Пройдені юності стежки.
Небо та степ...
В скронях горить сивина.
Небо та степ...
І вишиванок мережки.
Небо та степ...
Чорних очей глибина.

Приспів.

Небо та степ...
Вітер пливе ковилою.
Небо та степ...
Над шляхом тополі стоять.
Небо та степ...
Знову нас кличе дорога.
Небо та степ
Над нами стожари горять.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_9128487';
DELETE FROM song_versions WHERE song_id = 'pisniua_9128487';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9128487';
DELETE FROM songs WHERE id = 'pisniua_9128487';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9128487','Партизанська','Музика: Хорта Слова: Хорта. Виконує: Хорта','uk','ukraine_1991',NULL,NULL,NULL,NULL,'А на ранок там впав білий сніг,
Ти б побачив це, якби тільки міг:
Як кулі, крізь крони
Фарбували по білому червоним.
І ти почув би як стало дуже тихо:
Ані звіру рику, ані птаха крику,
Лише ліс плаче за річкою
Густою ялиновою смолою.

Приспів:
Не за владу-славу чи гроші
Їх пам''ятають береги Черемошу-
Не сховались, лишились,
Вони знали за що вони бились.
За рідну землю, сльози дівочі
Вони стояли до кінця проти ночі.
Братами лісними
Вони лишились назавжди молодими...

Вітер лоскотав воскові обличчя,
Гілки дерев шепотіли:"Навіщо?",
І вбитим воякам останнє запитання,
Але вони як і гори зберігали мовчання.
Вони дали бій- відчайдушні, голодні,
Хоча їх було всього п''ятеро проти сотні.
Вони це знали, і не вагалися,
Бо вони знали в той час за що вони дралися.

Стародавній закон знають Хортиця, Карпати-
Краще загинути вільним, аніж потрапити за грати.
Зараз про це не люблять пам''ятати,
Проте, колись скінчиться час пробачати.
За свою родину, через спалені хати
Вони взяли тоді у руки автомати.
І я вірю - ти б зробив би теж саме,
Коли твої двори повні ворогами...

Приспів','[''pisni.org.ua'', ''cat:istorychni'', ''cat:viyskovi'', ''Історичні пісні'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9128487'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9128487','Партизанська','А на ранок там впав білий сніг,
Ти б побачив це, якби тільки міг:
Як кулі, крізь крони
Фарбували по білому червоним.
І ти почув би як стало дуже тихо:
Ані звіру рику, ані птаха крику,
Лише ліс плаче за річкою
Густою ялиновою смолою.

Приспів:
Не за владу-славу чи гроші
Їх пам''ятають береги Черемошу-
Не сховались, лишились,
Вони знали за що вони бились.
За рідну землю, сльози дівочі
Вони стояли до кінця проти ночі.
Братами лісними
Вони лишились назавжди молодими...

Вітер лоскотав воскові обличчя,
Гілки дерев шепотіли:"Навіщо?",
І вбитим воякам останнє запитання,
Але вони як і гори зберігали мовчання.
Вони дали бій- відчайдушні, голодні,
Хоча їх було всього п''ятеро проти сотні.
Вони це знали, і не вагалися,
Бо вони знали в той час за що вони дралися.

Стародавній закон знають Хортиця, Карпати-
Краще загинути вільним, аніж потрапити за грати.
Зараз про це не люблять пам''ятати,
Проте, колись скінчиться час пробачати.
За свою родину, через спалені хати
Вони взяли тоді у руки автомати.
І я вірю - ти б зробив би теж саме,
Коли твої двори повні ворогами...

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9128487_l1','pisniua_9128487','YouTube','https://www.youtube.com/watch?v=nQ-iP93N2Sc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9128282';
DELETE FROM song_versions WHERE song_id = 'pisniua_9128282';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9128282';
DELETE FROM songs WHERE id = 'pisniua_9128282';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9128282','Щебетала пташечка','Музика: народ Слова: народ. Виконує: Русичі','uk','ukraine_before_1917',NULL,NULL,'rusychi.org',NULL,'Щебетала пташечка під віконечком,
Сподівалась пташечка весни з сонечком.
Прилинь, прилинь, чаронько, весна красная,
Як легенька хмаронька в небі ясная.

Вбери степи травами, вквітчай ніжними,
Потоки купавами білосніжними.
Осип луки перлами, вкропи росами,
Розлийся джерелами стоголосими.

Щебетала пташечка під віконечком,
Сподівалась пташечка весни з сонечком','[''pisni.org.ua'', ''cat:narodni'', ''cat:vesnyanky-hayivky'', ''Народні пісні'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9128282'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9128282','Щебетала пташечка','Щебетала пташечка під віконечком,
Сподівалась пташечка весни з сонечком.
Прилинь, прилинь, чаронько, весна красная,
Як легенька хмаронька в небі ясная.

Вбери степи травами, вквітчай ніжними,
Потоки купавами білосніжними.
Осип луки перлами, вкропи росами,
Розлийся джерелами стоголосими.

Щебетала пташечка під віконечком,
Сподівалась пташечка весни з сонечком');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9128282_l1','pisniua_9128282','YouTube','https://www.youtube.com/watch?v=yeTd8AwTmhQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9119585';
DELETE FROM song_versions WHERE song_id = 'pisniua_9119585';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9119585';
DELETE FROM songs WHERE id = 'pisniua_9119585';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9119585','Mi','(Колискова - Arpeggio). Музика: Юрий Крылатов Слова: Леся Українка. Виконує: Юрий Крылатов, Ніна Матвієнко','uk','ukraine_before_1917',NULL,'1890',NULL,'1. Таку назву дала Леся Українка у 1890 році. 2. Автор музики просить вказувати його ім''я у вище наведеній транскрипції. Альбом Сім нот (1890 рік)','Місяць яснесенький
Промінь тихесенький
Кинув до нас.
Спи ж ти, малесенький,
Спи ж ти, малесенький,
Пізній бо час.
Любо ти спатимеш,
Поки не знатимеш
Що то печаль;
Хутко прийматимеш,
Хутко прийматимеш
Лихо та жаль.

Тяжка годинонько!
Гірка хвилинонько!
Лихо не спить...
Леле, дитинонько!
Леле, дитинонько!
Жить - сльози лить.
Сором хилитися,
Долі коритися!
Час твій прийде
З долею битися,
З долею битися, -
Сон пропаде...

Місяць яснесенький
Промінь тихесенький
Кинув до нас.
Спи ж ти, малесенький,
Спи ж ти, малесенький,
Поки є час!','[''pisni.org.ua'', ''cat:kolyskovi'', ''cat:pro-ditey'', ''Колискові'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9119585'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9119585','Mi','Місяць яснесенький
Промінь тихесенький
Кинув до нас.
Спи ж ти, малесенький,
Спи ж ти, малесенький,
Пізній бо час.
Любо ти спатимеш,
Поки не знатимеш
Що то печаль;
Хутко прийматимеш,
Хутко прийматимеш
Лихо та жаль.

Тяжка годинонько!
Гірка хвилинонько!
Лихо не спить...
Леле, дитинонько!
Леле, дитинонько!
Жить - сльози лить.
Сором хилитися,
Долі коритися!
Час твій прийде
З долею битися,
З долею битися, -
Сон пропаде...

Місяць яснесенький
Промінь тихесенький
Кинув до нас.
Спи ж ти, малесенький,
Спи ж ти, малесенький,
Поки є час!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9119585_l1','pisniua_9119585','YouTube','https://www.youtube.com/watch?v=Z70lXWr_pNs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9129982';
DELETE FROM song_versions WHERE song_id = 'pisniua_9129982';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9129982';
DELETE FROM songs WHERE id = 'pisniua_9129982';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9129982','Вечір різдвяний','(різдвяна пісня). Музика: Олександр Шевченко Слова: Олександр Шевченко. Виконує: Олександр Шевченко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Вечір різдвяний до хати заходить,
Разом із нами радіє земля,
Діва Пречиста Ісуса народить
І над вертепом звізда засія,
І над вертепом звізда засія.

Приспів:
Нехай несе вона добро
Господарю і господині!
Та темна ніч, чарівна ніч, |
Різдвяна ніч на Україні!   | (2)

В серцях добро розцвітає, як квіти.
Весело празнує кожна сім''я,
Славлять сьогодні дорослі і діти
Божого сина велике ім''я,
Божого сина велике ім''я!

Приспів.','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Пісні на християнську тематику'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9129982'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9129982','Вечір різдвяний','Вечір різдвяний до хати заходить,
Разом із нами радіє земля,
Діва Пречиста Ісуса народить
І над вертепом звізда засія,
І над вертепом звізда засія.

Приспів:
Нехай несе вона добро
Господарю і господині!
Та темна ніч, чарівна ніч, |
Різдвяна ніч на Україні!   | (2)

В серцях добро розцвітає, як квіти.
Весело празнує кожна сім''я,
Славлять сьогодні дорослі і діти
Божого сина велике ім''я,
Божого сина велике ім''я!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_912181';
DELETE FROM song_versions WHERE song_id = 'pisniua_912181';
DELETE FROM songs_fts WHERE song_id = 'pisniua_912181';
DELETE FROM songs WHERE id = 'pisniua_912181';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_912181','Мамина пісня','Виконує: Раїса Кириченко','uk','ukraine_1991',NULL,NULL,'http://www.is.svitonline.com/pisnya/',NULL,'Мене тут мама сповила
І над колискою співала.
У тій хатині, край села,
Мене вона благословляла -
Спинайся на своє крило,
Злітай до зір високих в небо,
А я, разом з усім селом,
Молитимусь за тебе.

Я набирала висоту,
Здавалось, не тримали крила,
Та істину святу й просту
Я в слові маминім відкрила.
Хоч матінки уже нема,
Від горя й болю в серці тісно,
Я не одна, я не сама,
Від мами в мене - пісня.

Візми у дорогу наказ-оберіг -
Вертайся додому на отчий поріг,
Куди б тебе доля у світ не вела,
Вертайся додому, вертайся додому,
Вертайсь до села.

Я на своїй землі живу
І кожній квіточці радію.
Все пережите наяву,
На краще теплиться надія.
Як розгинається трава,
Встаю опісля бурі, зливи,
Бо пам''ятаю ті слова -
Співаночки-молитви.

Візми у дорогу наказ-оберіг -
Вертайся додому на отчий поріг,
Куди б тебе доля у світ не вела,
Вертайся додому, вертайся додому,
Вертайсь до села.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_912181'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_912181','Мамина пісня','Мене тут мама сповила
І над колискою співала.
У тій хатині, край села,
Мене вона благословляла -
Спинайся на своє крило,
Злітай до зір високих в небо,
А я, разом з усім селом,
Молитимусь за тебе.

Я набирала висоту,
Здавалось, не тримали крила,
Та істину святу й просту
Я в слові маминім відкрила.
Хоч матінки уже нема,
Від горя й болю в серці тісно,
Я не одна, я не сама,
Від мами в мене - пісня.

Візми у дорогу наказ-оберіг -
Вертайся додому на отчий поріг,
Куди б тебе доля у світ не вела,
Вертайся додому, вертайся додому,
Вертайсь до села.

Я на своїй землі живу
І кожній квіточці радію.
Все пережите наяву,
На краще теплиться надія.
Як розгинається трава,
Встаю опісля бурі, зливи,
Бо пам''ятаю ті слова -
Співаночки-молитви.

Візми у дорогу наказ-оберіг -
Вертайся додому на отчий поріг,
Куди б тебе доля у світ не вела,
Вертайся додому, вертайся додому,
Вертайсь до села.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_912181_l1','pisniua_912181','YouTube','https://www.youtube.com/watch?v=y71v7KVR7Ek','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9118080';
DELETE FROM song_versions WHERE song_id = 'pisniua_9118080';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9118080';
DELETE FROM songs WHERE id = 'pisniua_9118080';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9118080','Марш куреня Бойків','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'1. Текст: Співаник УПА. Борці за волю України. упор. О.Бобикевич, Ю.Лаврівський, О.Плешкевич та ін. Львів: Меморіал. 1992. - 190 с. 2. Акорди: Пісенник ОУМ "Спадщина"',NULL,'Світить місяць понад темним лісом,
Буйний вітер кругом завива,
Із гір Карпат ярами на долину
Сотня повстанців гордо виступа.

Гей, гей! Гей, гей!
Сотня повстанців гордо виступа!

Лунає пісня довкруги бадьора,
Кожний тисне зброю у руках,
Журчить потік, шумлять карпатські бори,
Веселий усміх грає на устах.

Гей, гей! Гей, гей!
Веселий усміх грає на устах!

Стогнуть бори і палають села,
Що їх клятий комунар палить,
Ось ще хвилина, кари час настане,
Настане суд і катові не жить!

Гей, гей! Гей, гей!
Настане суд і катові не жить!

Тремтять кати, почувши брязкіт зброї
Юних орлят і месників за кров,
Встає народ, вже сходить сонце волі,
Вже досить мук, недолі і оков!

Гей, гей! Гей, гей!
Вже досить мук, недолі і оков!','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:povstanski'', ''Гимни та марші'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9118080'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9118080','Марш куреня Бойків','Світить місяць понад темним лісом,
Буйний вітер кругом завива,
Із гір Карпат ярами на долину
Сотня повстанців гордо виступа.

Гей, гей! Гей, гей!
Сотня повстанців гордо виступа!

Лунає пісня довкруги бадьора,
Кожний тисне зброю у руках,
Журчить потік, шумлять карпатські бори,
Веселий усміх грає на устах.

Гей, гей! Гей, гей!
Веселий усміх грає на устах!

Стогнуть бори і палають села,
Що їх клятий комунар палить,
Ось ще хвилина, кари час настане,
Настане суд і катові не жить!

Гей, гей! Гей, гей!
Настане суд і катові не жить!

Тремтять кати, почувши брязкіт зброї
Юних орлят і месників за кров,
Встає народ, вже сходить сонце волі,
Вже досить мук, недолі і оков!

Гей, гей! Гей, гей!
Вже досить мук, недолі і оков!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9118080_l1','pisniua_9118080','YouTube','https://www.youtube.com/watch?v=HUseGS6e46Y','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9129787';
DELETE FROM song_versions WHERE song_id = 'pisniua_9129787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9129787';
DELETE FROM songs WHERE id = 'pisniua_9129787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9129787','Ой, ішов козак з Дону','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','село Лизогубова Слобода Згурівського району','Ой, ішов козак з Дону,
Ой, ішов козак із Дону,
Та й сів над водою.

Ой, да й сів над водою,
Ой, да й сів над водою,
Да й кляне свою ж долю.

Ой, доле, моя доле,
Ой, доле, моя нещасная,
Ой, чом ти не такая ж?

Ой, чом ти не такая ж,
Ой, чом ти не такая,
Ой, як і доля людськая?

Ой, що люди не роблять,
Ой, що люди не роблять,
П''ють та й гуляють.

Ой, а я й не гуляю,
Ой, а я й не гуляю,
Ой, нічого, ой, не маю ж.

Ой, шумить за горою,
Ой, шумить за горою,
А вночі тане за водою.','[''pisni.org.ua'', ''cat:kozacki'', ''cat:nostalgia'', ''Козацькі пісні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9129787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9129787','Ой, ішов козак з Дону','Ой, ішов козак з Дону,
Ой, ішов козак із Дону,
Та й сів над водою.

Ой, да й сів над водою,
Ой, да й сів над водою,
Да й кляне свою ж долю.

Ой, доле, моя доле,
Ой, доле, моя нещасная,
Ой, чом ти не такая ж?

Ой, чом ти не такая ж,
Ой, чом ти не такая,
Ой, як і доля людськая?

Ой, що люди не роблять,
Ой, що люди не роблять,
П''ють та й гуляють.

Ой, а я й не гуляю,
Ой, а я й не гуляю,
Ой, нічого, ой, не маю ж.

Ой, шумить за горою,
Ой, шумить за горою,
А вночі тане за водою.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9129787_l1','pisniua_9129787','YouTube','https://www.youtube.com/watch?v=xG2hh0rN_8c','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9129384';
DELETE FROM song_versions WHERE song_id = 'pisniua_9129384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9129384';
DELETE FROM songs WHERE id = 'pisniua_9129384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9129384','Овес','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українська дитяча література: Антологія / Вступ У45 на ст. та упорядкув. Л. П. Козачок. - К.: Вища шк., 2002. - 519 с.',NULL,'Як посієм овес
Та до зерна увесь.

Приспів:
Та до зерна, до зерна,
До зерна увесь.
Як уродить же овес.
Як покосимо овес.

Як пов''яжемо овес.
Як покладемо овес.
Як повозимо овес.
Помолотимо овес.
Як повіємо овес.
Повбираємо овес.
Погодуємо овес.
Та до зерна увесь.','[''pisni.org.ua'', ''cat:all-ukraine'', ''cat:obzhynkovi'', ''cat:socialno-pobutovi'', ''Загальноукраїнські пісні'', ''Обжинкові пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9129384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9129384','Овес','Як посієм овес
Та до зерна увесь.

Приспів:
Та до зерна, до зерна,
До зерна увесь.
Як уродить же овес.
Як покосимо овес.

Як пов''яжемо овес.
Як покладемо овес.
Як повозимо овес.
Помолотимо овес.
Як повіємо овес.
Повбираємо овес.
Погодуємо овес.
Та до зерна увесь.');
DELETE FROM song_links WHERE song_id = 'pisniua_9119487';
DELETE FROM song_versions WHERE song_id = 'pisniua_9119487';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9119487';
DELETE FROM songs WHERE id = 'pisniua_9119487';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9119487','Плекаймо мир','Музика: Андрій Остапенко Слова: Володимир Мельников. Виконує: Сакіша','uk','ukraine_1991',NULL,'2006','книга "Українці - не папуаси", 2007 р.','Пісню "Плекаймо мир" на слова Володимира Мельникова та музику Андрія Остапенка виконує юна україночка азербайджанського походження Сакіна Халілова (САКІША). У цій пісні, слова до якої були написані під час "помаранчевої" революції, молода співачка закликає дорослих українців до об''днання, а не до масових протистоянь заради "сумнівної" перемоги політичних лідерів чи партій. Виконує:Сакіша Альбом Захистимо Україну (2006)','Боріться, люди! Та не сотворіть
Для себе силіконових кумирів!
Священний мир в державі збережіть!
Працюйте в мирі, і любіть у мирі!

Приспів:
Бо тільки мир - це шлях у майбуття,
Бо тільки мир - це шлях до процвітання!
Плекаймо мир, плекаймо, як дитя!
Хай мир крокує нашими містами!

Гуртуйтесь і єднайтесь на віки,
Усі народи нашої країни!
У чварах світ прямує навпаки
І залишає сиріт та руїни...

Приспів.

Ніхто не застрахований від бід,
А разом - подолаємо всі біди.
Шануйте Захід, поважайте Схід,
У мирі мають жити і сусіди....

Приспів','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9119487'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9119487','Плекаймо мир','Боріться, люди! Та не сотворіть
Для себе силіконових кумирів!
Священний мир в державі збережіть!
Працюйте в мирі, і любіть у мирі!

Приспів:
Бо тільки мир - це шлях у майбуття,
Бо тільки мир - це шлях до процвітання!
Плекаймо мир, плекаймо, як дитя!
Хай мир крокує нашими містами!

Гуртуйтесь і єднайтесь на віки,
Усі народи нашої країни!
У чварах світ прямує навпаки
І залишає сиріт та руїни...

Приспів.

Ніхто не застрахований від бід,
А разом - подолаємо всі біди.
Шануйте Захід, поважайте Схід,
У мирі мають жити і сусіди....

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9119487_l1','pisniua_9119487','YouTube','https://www.youtube.com/watch?v=QA9sl7MEfIw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9133889';
DELETE FROM song_versions WHERE song_id = 'pisniua_9133889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9133889';
DELETE FROM songs WHERE id = 'pisniua_9133889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9133889','Різдвяна ніч','Музика: Анатолій Матвійчук Слова: К. Осауленко. Виконує: Руся','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Так казково свято наплива,
В серці щем забутий ожива,
Тихо стукає у шибку
Ніч Христового Різдва.
Все приходить той чарівний час,
Що до неба повертає нас,
Квітне втіха, в''яне лихо
І зникає біль образ.

Приспів:
Хай же музика небесна
Ніжно лине з висоти,
І у душах да воскресне
Віщий пломінь чистоти.
Ніч Різдвяна, ніч любові,
Освяти нас, освяти,
Щоб на світі люди знову
Обнялися, як брати!

Нашим друзям вибачим гріхи,
Ворогам - їх наміри лихі,
Щоб була найвище в світі
Сила щедрої руки.
Щоб не згасли пращурів свічки,
Щоб не рвались більше ланцюжки,
Щоб земля щаслива стала
І прекрасна на віки!

Приспів.','[''pisni.org.ua'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9133889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9133889','Різдвяна ніч','Так казково свято наплива,
В серці щем забутий ожива,
Тихо стукає у шибку
Ніч Христового Різдва.
Все приходить той чарівний час,
Що до неба повертає нас,
Квітне втіха, в''яне лихо
І зникає біль образ.

Приспів:
Хай же музика небесна
Ніжно лине з висоти,
І у душах да воскресне
Віщий пломінь чистоти.
Ніч Різдвяна, ніч любові,
Освяти нас, освяти,
Щоб на світі люди знову
Обнялися, як брати!

Нашим друзям вибачим гріхи,
Ворогам - їх наміри лихі,
Щоб була найвище в світі
Сила щедрої руки.
Щоб не згасли пращурів свічки,
Щоб не рвались більше ланцюжки,
Щоб земля щаслива стала
І прекрасна на віки!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_9124889';
DELETE FROM song_versions WHERE song_id = 'pisniua_9124889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9124889';
DELETE FROM songs WHERE id = 'pisniua_9124889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9124889','Друзів пам''ятаємо','Українська народна пісня. Виконує: Горпина','uk','ukraine_before_1917',NULL,NULL,'http://horpyna.prv.pl',NULL,'Друзів пам''ятаємо,
Друзів зустрічаємо,
Часом поспіваємо,
Часом за столом сидимо.

А за вікном весна
І часто сил, і терпіння вже нема,
А вже на наших буйних головах
З''явилась перша сивина.

Друзів ми шануємо,
Друзів поважаємо,
Серцем привітаємо,
Є для них в нас завжди вино.

А за вікном весна
І розкриває скриті мрії вона,
На жаль на наших  буйних головах
З''явилась перша сивина.

Дати забуваються,
Роки не вертаються,
Друзі пам''ятаються,
Тісно зв''язані в нас серця.

А за вікном весна,
Падають з пам''яті все нові імена,
Як жаль, що трохи перешкоджає
І старить перша сивина.

А за вікном весна
І знову згадуються старі слова,
І знову пишуться нові пісні,
Які співатиму я.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9124889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9124889','Друзів пам''ятаємо','Друзів пам''ятаємо,
Друзів зустрічаємо,
Часом поспіваємо,
Часом за столом сидимо.

А за вікном весна
І часто сил, і терпіння вже нема,
А вже на наших буйних головах
З''явилась перша сивина.

Друзів ми шануємо,
Друзів поважаємо,
Серцем привітаємо,
Є для них в нас завжди вино.

А за вікном весна
І розкриває скриті мрії вона,
На жаль на наших  буйних головах
З''явилась перша сивина.

Дати забуваються,
Роки не вертаються,
Друзі пам''ятаються,
Тісно зв''язані в нас серця.

А за вікном весна,
Падають з пам''яті все нові імена,
Як жаль, що трохи перешкоджає
І старить перша сивина.

А за вікном весна
І знову згадуються старі слова,
І знову пишуться нові пісні,
Які співатиму я.');
DELETE FROM song_links WHERE song_id = 'pisniua_9131786';
DELETE FROM song_versions WHERE song_id = 'pisniua_9131786';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9131786';
DELETE FROM songs WHERE id = 'pisniua_9131786';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9131786','Цілую клавіші рум''яні','Музика: Ліля Кобільник Слова: В. Слапчук. Виконує: Ліля Кобільник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Цілую клавіші рум''яні,
Ловлю, цілую тінь руки,
Сумує біле фортепіано
І плачуть білі свічники.
Я кличу небо у союзники,
Стаю союзником землі,
Торкаюсь я вустами музики,
Торкаюсь я вустами слів.

А що за диво сукня ця
Така смарагдово зелена,
Аж зеленіють очі у творця,
Аж зеленіє кров у венах.
Нам ніч ворожить на зірках, |
Шепоче синьо щось і п''яно,  |
А ми з тобою в свічниках,   |
А душі наші в фортеп''яно.   | (2)

А душі наші в фортеп''яно...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9131786'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9131786','Цілую клавіші рум''яні','Цілую клавіші рум''яні,
Ловлю, цілую тінь руки,
Сумує біле фортепіано
І плачуть білі свічники.
Я кличу небо у союзники,
Стаю союзником землі,
Торкаюсь я вустами музики,
Торкаюсь я вустами слів.

А що за диво сукня ця
Така смарагдово зелена,
Аж зеленіють очі у творця,
Аж зеленіє кров у венах.
Нам ніч ворожить на зірках, |
Шепоче синьо щось і п''яно,  |
А ми з тобою в свічниках,   |
А душі наші в фортеп''яно.   | (2)

А душі наші в фортеп''яно...');
DELETE FROM song_links WHERE song_id = 'pisniua_9133383';
DELETE FROM song_versions WHERE song_id = 'pisniua_9133383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9133383';
DELETE FROM songs WHERE id = 'pisniua_9133383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9133383','Людям на добро','Музика: Олександр Осадчий Слова: Микола Сингаївський. Виконує: Віктор Шпортько','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Поспішайте творити добро на землі,
Щиру шану знаходить людська доброта.
Наче щедрий наш хліб на святковім столі,
Що цілують його материнські вуста.

Поспішайте любити всю землю свою,
Де на росах сліди ще з дитинства лягли.
Бо вода найсмачніша у ріднім краю
Із криниці де батько і мати пили.

Приспів:
Все тепло душі людям дарувать
Як себе землі віддає Дніпро.
Жити - це творить, жити - це співать
Людям на добро, людям на добро.
Жити людям на добро!
На добро!

Прокидається сонце - спішить до Дніпра,
І видніє над світом у місті, в селі.
Це для радощів наших найкраща пора,
Поспішайте творити добро на землі.

Приспів','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9133383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9133383','Людям на добро','Поспішайте творити добро на землі,
Щиру шану знаходить людська доброта.
Наче щедрий наш хліб на святковім столі,
Що цілують його материнські вуста.

Поспішайте любити всю землю свою,
Де на росах сліди ще з дитинства лягли.
Бо вода найсмачніша у ріднім краю
Із криниці де батько і мати пили.

Приспів:
Все тепло душі людям дарувать
Як себе землі віддає Дніпро.
Жити - це творить, жити - це співать
Людям на добро, людям на добро.
Жити людям на добро!
На добро!

Прокидається сонце - спішить до Дніпра,
І видніє над світом у місті, в селі.
Це для радощів наших найкраща пора,
Поспішайте творити добро на землі.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_913383';
DELETE FROM song_versions WHERE song_id = 'pisniua_913383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_913383';
DELETE FROM songs WHERE id = 'pisniua_913383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_913383','Ой у гаю, при Дунаю','Українська народна пісня. Виконує: Тріо Мареничів, Рушничок, Оксана Роспоп, Ольга Роспоп','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Cm
Ой у гаю, при Дунаю
Соловей щебече.
Cm
Він свою всю пташину
До гніздечка кличе.
D#
Ой тьох-тьох і тьох-тьох-тьох  |
Соловей щебече.                |
Cm                             |
Він свою всю пташину           | (2)
До гніздечка кличе.            |
Ой у гаю, при Дунаю
Там музика грає.
Бас гуде, скрипка плаче,
Милий мій гуляє.
Ой тьох-тьох і тьох-тьох-тьох  |
Там музика грає.               |
Бас гуде, скрипка плаче,       | (2)
Милий мий гуляє.               |
Ой у гаю, при Дунаю
Стою самотою.
Плачу, тужу, ще й ридаю
Милий за тобою.
Ой тьох-тьох і тьох-тьох-тьох  |
Соловей щебече.                |
Він свою всю пташину           | (2)
До гніздечка кличе.            |','[''pisni.org.ua'', ''cat:lirychni'', ''cat:narodni'', ''Пісні про кохання, ліричні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_913383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_913383','Ой у гаю, при Дунаю','Cm
Ой у гаю, при Дунаю
Соловей щебече.
Cm
Він свою всю пташину
До гніздечка кличе.
D#
Ой тьох-тьох і тьох-тьох-тьох  |
Соловей щебече.                |
Cm                             |
Він свою всю пташину           | (2)
До гніздечка кличе.            |
Ой у гаю, при Дунаю
Там музика грає.
Бас гуде, скрипка плаче,
Милий мій гуляє.
Ой тьох-тьох і тьох-тьох-тьох  |
Там музика грає.               |
Бас гуде, скрипка плаче,       | (2)
Милий мий гуляє.               |
Ой у гаю, при Дунаю
Стою самотою.
Плачу, тужу, ще й ридаю
Милий за тобою.
Ой тьох-тьох і тьох-тьох-тьох  |
Соловей щебече.                |
Він свою всю пташину           | (2)
До гніздечка кличе.            |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l1','pisniua_913383','YouTube','https://www.youtube.com/watch?v=3uBwhFYCWkM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l2','pisniua_913383','YouTube','https://www.youtube.com/watch?v=M-Gln6yNvtc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l3','pisniua_913383','YouTube','https://www.youtube.com/watch?v=ES5Tvg5VcZs','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l4','pisniua_913383','YouTube','https://www.youtube.com/watch?v=7P2ODQp0e2s','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l5','pisniua_913383','YouTube','https://www.youtube.com/watch?v=tsbO5f9Ztd0','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l6','pisniua_913383','YouTube','https://www.youtube.com/watch?v=ljbOkh6_muA','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l7','pisniua_913383','YouTube','https://www.youtube.com/watch?v=J0Jp5zYKZMk','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l8','pisniua_913383','YouTube','https://www.youtube.com/watch?v=KmH7VLEwo1k','video',NULL,8);
DELETE FROM song_links WHERE song_id = 'pisniua_9130281';
DELETE FROM song_versions WHERE song_id = 'pisniua_9130281';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9130281';
DELETE FROM songs WHERE id = 'pisniua_9130281';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9130281','Пролітають літа','Музика: Мар''ян Гаденко Слова: Мар''ян Гаденко. Виконує: Мар''ян Гаденко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вік, мов сонце, в зеніті стоїть,
Навкруги все теплом зігріває.
Півстоліття - одна тільки мить
Та, на жаль, двох в житті не буває.

Приспів:
Пролітають літа, пролітають, |
Вже пісні свої осінь склада, |
Уже діти весну зустрічають,  |
А в криниці не спала вода.   | (2)

Вже зозуля ген-ген закувала,
Відлітають у даль журавлі,
Я пройшов не багато не мало,
Щоб вклонитися, доле, тобі!

Приспів.

Пролітають літа, пролітають, |
Вже пісні свої осінь склада, |
Уже діти весну зустрічають,  |
А в криницю прибула вода.    | (2)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9130281'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9130281','Пролітають літа','Вік, мов сонце, в зеніті стоїть,
Навкруги все теплом зігріває.
Півстоліття - одна тільки мить
Та, на жаль, двох в житті не буває.

Приспів:
Пролітають літа, пролітають, |
Вже пісні свої осінь склада, |
Уже діти весну зустрічають,  |
А в криниці не спала вода.   | (2)

Вже зозуля ген-ген закувала,
Відлітають у даль журавлі,
Я пройшов не багато не мало,
Щоб вклонитися, доле, тобі!

Приспів.

Пролітають літа, пролітають, |
Вже пісні свої осінь склада, |
Уже діти весну зустрічають,  |
А в криницю прибула вода.    | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_9139281';
DELETE FROM song_versions WHERE song_id = 'pisniua_9139281';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9139281';
DELETE FROM songs WHERE id = 'pisniua_9139281';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9139281','Єсть на світі доля *','Музика: САД Слова: Тарас Шевченко. Виконує: САД','uk','ukraine_1991',NULL,NULL,'http://rocksad.com.ua/','Підбір акордів: Авторське подання','Есть на світі доля,
А хто її знає?
Есть на світі воля,
А хто її має?

Есть люде на світі -
Сріблом-злотом сяють,
Здається, панують,
А долі не знають, -

Ні долі, ні волі!
З нудьгою та з горем
Жупан надівають,
А плакати - сором.

Возьміть срібло-злото
Та будьте багаті,
А я візьму сльози -
Лихо виливати;
Затоплю недолю
Дрібними сльозами,
Затопчу неволю
Босими ногами!

Тоді я веселий,
Тоді я багатий,
Як буде серденько
По волі гуляти!
Тоді я веселий,
Тоді я багатий,
Як буде серденько
По волі гуляти!','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9139281'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9139281','Єсть на світі доля *','Есть на світі доля,
А хто її знає?
Есть на світі воля,
А хто її має?

Есть люде на світі -
Сріблом-злотом сяють,
Здається, панують,
А долі не знають, -

Ні долі, ні волі!
З нудьгою та з горем
Жупан надівають,
А плакати - сором.

Возьміть срібло-злото
Та будьте багаті,
А я візьму сльози -
Лихо виливати;
Затоплю недолю
Дрібними сльозами,
Затопчу неволю
Босими ногами!

Тоді я веселий,
Тоді я багатий,
Як буде серденько
По волі гуляти!
Тоді я веселий,
Тоді я багатий,
Як буде серденько
По волі гуляти!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9139281_l1','pisniua_9139281','YouTube','https://www.youtube.com/watch?v=rlblnfVwC0w','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9139281_l2','pisniua_9139281','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_913889';
DELETE FROM song_versions WHERE song_id = 'pisniua_913889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_913889';
DELETE FROM songs WHERE id = 'pisniua_913889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_913889','Ой у лісі, на полянці','Виконує: Соколи, Іван Мацялко, Акорд','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,NULL,'Ой у лісі, на полянці стояли повстанці
Посходились до потічку вмиватися вранці         | (2)

Котрі хлопці повставали, котрі іще спали
Більшовицького нападу тай не сподівались        | (2)

Кулемети терескочуть, мов ті навіжені
Крикнув сотник Соловейко: "Хлопці я ранений!"   | (2)

Упав козак, упав орел, упав Соловейко
Крикнув: "Слава Україні! Будь здорова ненько!"   | (2)

"Будь здорова чорноброва і ти стара нене,
А ти славна Україно не забудь за мене"          | (2)

Ой у лісі, на полянці стояли повстанці
Посходились до потічку вмиватися вранці         | (2)','[''pisni.org.ua'', ''cat:patriotic'', ''cat:povstanski'', ''Патріотичні пісні'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_913889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_913889','Ой у лісі, на полянці','Ой у лісі, на полянці стояли повстанці
Посходились до потічку вмиватися вранці         | (2)

Котрі хлопці повставали, котрі іще спали
Більшовицького нападу тай не сподівались        | (2)

Кулемети терескочуть, мов ті навіжені
Крикнув сотник Соловейко: "Хлопці я ранений!"   | (2)

Упав козак, упав орел, упав Соловейко
Крикнув: "Слава Україні! Будь здорова ненько!"   | (2)

"Будь здорова чорноброва і ти стара нене,
А ти славна Україно не забудь за мене"          | (2)

Ой у лісі, на полянці стояли повстанці
Посходились до потічку вмиватися вранці         | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913889_l1','pisniua_913889','YouTube','https://www.youtube.com/watch?v=cg7ELjXLz2k','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913889_l2','pisniua_913889','YouTube','https://www.youtube.com/watch?v=HQLOF5lf3Ik','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913889_l3','pisniua_913889','YouTube','https://www.youtube.com/watch?v=KnYnhs_eArw','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913889_l4','pisniua_913889','YouTube','https://www.youtube.com/watch?v=bcDSYRZADNU','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_9129683';
DELETE FROM song_versions WHERE song_id = 'pisniua_9129683';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9129683';
DELETE FROM songs WHERE id = 'pisniua_9129683';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9129683','Їхали чумаки у Крим по сіль','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','співають в селі Лука Києво-Святошинського району','Їхали чумаки у Крим по сіль
Да воли пристали, чумак заболів,
Да воли пристали, чумак заболів.

Чумак заболів, під возом лежить,
Ніхто не спитає, що його болить,
Ніхто не спитає, що його болить.

Болять ручки й ножки, болить голова,
Вдома малі діти, жінка молода,
Вдома малі діти, жінка молода.

Ой, ви чумаченьки, ви ріднії мої,
Воли напуваєте, напійте мої,
Воли напуваєте, напійте мої.

Воли води не п''ють, не п''ють да ревуть
Нема чумаченька, самі воли йдуть,
Нема чумаченька, самі воли йдуть.

Ідуть воли самі до свого двора,
Заплакали діти, що батька нема,
Заплакали діти, що батька нема.','[''pisni.org.ua'', ''cat:chumacki'', ''Чумацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9129683'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9129683','Їхали чумаки у Крим по сіль','Їхали чумаки у Крим по сіль
Да воли пристали, чумак заболів,
Да воли пристали, чумак заболів.

Чумак заболів, під возом лежить,
Ніхто не спитає, що його болить,
Ніхто не спитає, що його болить.

Болять ручки й ножки, болить голова,
Вдома малі діти, жінка молода,
Вдома малі діти, жінка молода.

Ой, ви чумаченьки, ви ріднії мої,
Воли напуваєте, напійте мої,
Воли напуваєте, напійте мої.

Воли води не п''ють, не п''ють да ревуть
Нема чумаченька, самі воли йдуть,
Нема чумаченька, самі воли йдуть.

Ідуть воли самі до свого двора,
Заплакали діти, що батька нема,
Заплакали діти, що батька нема.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9129683_l1','pisniua_9129683','YouTube','https://www.youtube.com/watch?v=GgyDdqB_kzI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_91383';
DELETE FROM song_versions WHERE song_id = 'pisniua_91383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_91383';
DELETE FROM songs WHERE id = 'pisniua_91383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_91383','Націоналісти',NULL,'uk','ukraine_1991',NULL,NULL,'Пісневир. Молодіжний співаник. Львів 2001.','Текст і базові акорди взято із джерела. Поширені й інші варіанти тексту. * Тут можливі інші варіанти тексту: "У ряди збирають – буде бій кривавий, гей!" Аудіо (повна версія): http://oun-upa.org.ua/audio/snpu/track_14.wma','Чуєш - сурми грають, юнаків скликають,
У ряди збирають, "Буде бій!" - звіщають. Гей! *

Приспів:
Hаціоналісти - раз, два! Молоді орлята, |
Хлопці, хлопці, соколята!               |(2)

Україна-мати кличе нас повстати,
Одностайно стати, в бою погуляти. Гей!

Приспів.

Hе сумуй родино, не тужи дівчино!
Кличе Україна - наша Батьківщина. Гей!

Приспів.

Ми не сплямим роду нашого народу -
І в вогонь, і в воду підем за свободу. Гей!

Приспів.

Hе будемо спати, плакати-ридати,
День пімсти, розплати будем готувати. Гей!

Приспів.

За нашу Державу, за честь і за славу,
Знищимо криваву Москву і Варшаву. Гей!

Приспів.

Акорди у тональності Am:
Чуєш - сурми грають, юнаків скликають,
У ряди збирають, "Буде бій!" - звіщають. Гей! *

Приспів:
Hаціоналісти - раз, два! Молоді орлята, |
Хлопці, хлопці, соколята!               |

Акорди у тональності Dm:
Чуєш - сурми грають, юнаків скликають,
У ряди збирають, "Буде бій!" - звіщають. Гей! *

Приспів:
Hаціоналісти - раз, два! Молоді орлята, |
Хлопці, хлопці, соколята!               |','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:patriotic'', ''Гимни та марші'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_91383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_91383','Націоналісти','Чуєш - сурми грають, юнаків скликають,
У ряди збирають, "Буде бій!" - звіщають. Гей! *

Приспів:
Hаціоналісти - раз, два! Молоді орлята, |
Хлопці, хлопці, соколята!               |(2)

Україна-мати кличе нас повстати,
Одностайно стати, в бою погуляти. Гей!

Приспів.

Hе сумуй родино, не тужи дівчино!
Кличе Україна - наша Батьківщина. Гей!

Приспів.

Ми не сплямим роду нашого народу -
І в вогонь, і в воду підем за свободу. Гей!

Приспів.

Hе будемо спати, плакати-ридати,
День пімсти, розплати будем готувати. Гей!

Приспів.

За нашу Державу, за честь і за славу,
Знищимо криваву Москву і Варшаву. Гей!

Приспів.

Акорди у тональності Am:
Чуєш - сурми грають, юнаків скликають,
У ряди збирають, "Буде бій!" - звіщають. Гей! *

Приспів:
Hаціоналісти - раз, два! Молоді орлята, |
Хлопці, хлопці, соколята!               |

Акорди у тональності Dm:
Чуєш - сурми грають, юнаків скликають,
У ряди збирають, "Буде бій!" - звіщають. Гей! *

Приспів:
Hаціоналісти - раз, два! Молоді орлята, |
Хлопці, хлопці, соколята!               |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_91383_l1','pisniua_91383','YouTube','https://www.youtube.com/watch?v=o9zBRHs4WGM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_91383_l2','pisniua_91383','YouTube','https://www.youtube.com/watch?v=lxMOpgDf87M','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_91383_l3','pisniua_91383','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_91383_l4','pisniua_91383','http://oun-upa.org.ua/audio/','http://oun-upa.org.ua/audio/','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_9131888';
DELETE FROM song_versions WHERE song_id = 'pisniua_9131888';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9131888';
DELETE FROM songs WHERE id = 'pisniua_9131888';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9131888','Я ще прийду','Музика: Ліля Кобільник Слова: В. Слапчук. Виконує: Ліля Кобільник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я ще прийду, мене не треба ждати,
Прийду з дощем, але без грому,
І тільки дощ, той знає точну дату,
Коли прийду до тебе, як до дому,
Коли прийду до тебе, як до дому...

Я ще прийду, але прийду не скоро,
Як сповідатись ходять грішні,
Коли твій стіл письмовий пустить корінь,
І визріють на ньому вірші,
І визріють на ньому вірші...

Я ще прийду і ще не буде пізно,
Прибуду без твоєї згоди,
Сумна і радісна - я буду різна,
Я ще прийду, як дощ приходить,
Я ще прийду, як дощ приходить...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9131888'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9131888','Я ще прийду','Я ще прийду, мене не треба ждати,
Прийду з дощем, але без грому,
І тільки дощ, той знає точну дату,
Коли прийду до тебе, як до дому,
Коли прийду до тебе, як до дому...

Я ще прийду, але прийду не скоро,
Як сповідатись ходять грішні,
Коли твій стіл письмовий пустить корінь,
І визріють на ньому вірші,
І визріють на ньому вірші...

Я ще прийду і ще не буде пізно,
Прибуду без твоєї згоди,
Сумна і радісна - я буду різна,
Я ще прийду, як дощ приходить,
Я ще прийду, як дощ приходить...');
DELETE FROM song_links WHERE song_id = 'pisniua_914282';
DELETE FROM song_versions WHERE song_id = 'pisniua_914282';
DELETE FROM songs_fts WHERE song_id = 'pisniua_914282';
DELETE FROM songs WHERE id = 'pisniua_914282';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_914282','Не забудь','Музика: Богдан-Юрій Янівський Слова: Богдан Стельмах. Виконує: Валерій Дусанюк, Любов Аргатюк, Мар''ян Шуневич, Ольга Щербакова, Микола Олексишин','uk','ukraine_1991',NULL,NULL,'текст - Стельмах Б. Пшеничне перевесло.- К.: Музична Україна, 1988; акорди - Збірник пісень Студентського братства Львівської політехніки.- Львів, 2000','https://www.numberonemusic.com/lubamykoladuos/song/670039-Ne-Zabud?no_nag=1','Не забудь, яка стрімка
Людської пам''яті ріка...
Не забудь, яка гірка
G
Любов між нами -
C
В самоті блука,
Dm
В далині зника
E
Поміж берегами.
Не забудь моїх очей
В тужливій темряві ночей.
Не мовчи, о, не мовчи -
Моє ім''я ти
Вічно шепочи,
Вічно шепочи,
Щоб не забувати.
Не забудь — сніги впадуть,
Літа з водою одпливуть...
Хоч в думках зі мною будь.
Не забудь, не забудь.
Вирує пам''ять, як ріка поміж дібров, -
Пливе, не тоне в тій ріці моя любов.
Одізвись мені колись,
Луною в серці одізвись,
Чи приснись, бодай приснись
Дощем травневим,
Зіркою в очах,
Птахом в небесах,
Цвітом яблуневим.
Пам''ятай, що з летом днів
Виходить пам''ять з берегів,
Залива усе довкіл
Вогнем любові,
Греблі часу рве,
Як життя живе,
Як весняна повінь.
Не забудь — сніги впадуть,
Літа з водою одпливуть...
Хоч в думках зі мною будь -
Не забудь, не забудь.
Вирує пам''ять, як ріка поміж дібров, -
Пливе, не тоне в тій ріці моя любов.
Не забудь, яка стрімка
Людської пам''яті ріка. -
Там любов моя гірка
Не зника, не зника.','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:romansy'', ''Пісні з ностальгічними мотивами'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_914282'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_914282','Не забудь','Не забудь, яка стрімка
Людської пам''яті ріка...
Не забудь, яка гірка
G
Любов між нами -
C
В самоті блука,
Dm
В далині зника
E
Поміж берегами.
Не забудь моїх очей
В тужливій темряві ночей.
Не мовчи, о, не мовчи -
Моє ім''я ти
Вічно шепочи,
Вічно шепочи,
Щоб не забувати.
Не забудь — сніги впадуть,
Літа з водою одпливуть...
Хоч в думках зі мною будь.
Не забудь, не забудь.
Вирує пам''ять, як ріка поміж дібров, -
Пливе, не тоне в тій ріці моя любов.
Одізвись мені колись,
Луною в серці одізвись,
Чи приснись, бодай приснись
Дощем травневим,
Зіркою в очах,
Птахом в небесах,
Цвітом яблуневим.
Пам''ятай, що з летом днів
Виходить пам''ять з берегів,
Залива усе довкіл
Вогнем любові,
Греблі часу рве,
Як життя живе,
Як весняна повінь.
Не забудь — сніги впадуть,
Літа з водою одпливуть...
Хоч в думках зі мною будь -
Не забудь, не забудь.
Вирує пам''ять, як ріка поміж дібров, -
Пливе, не тоне в тій ріці моя любов.
Не забудь, яка стрімка
Людської пам''яті ріка. -
Там любов моя гірка
Не зника, не зника.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_914282_l1','pisniua_914282','YouTube','https://www.youtube.com/watch?v=wsT3PBrYNa8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_914282_l2','pisniua_914282','YouTube','https://www.youtube.com/watch?v=tKgxschA2T4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_914282_l3','pisniua_914282','YouTube','https://www.youtube.com/watch?v=xESczLjMTOs','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_914282_l4','pisniua_914282','YouTube','https://www.youtube.com/watch?v=7szHz4g1lys','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_914282_l5','pisniua_914282','YouTube','https://www.youtube.com/watch?v=wRSsGIGbG2k','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_9137487';
DELETE FROM song_versions WHERE song_id = 'pisniua_9137487';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9137487';
DELETE FROM songs WHERE id = 'pisniua_9137487';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9137487','Іспанія, Іспанія...','Музика: Тризубий Стас Слова: Тризубий Стас. Виконує: Тризубий Стас','uk','ukraine_1991',NULL,NULL,'http://uamusiclib.com',NULL,'Переді мною карта світу,
Вона приваблива така.
Я дуже хочу до Мадриду,
Побачити кориду,
Мене Іспанія чека!

А може краще в Барселону?
Тепер де хочеш - там і їдь.
Ще не придумали закону,
Щоб мене в Барселону
Нахабно взяти й не пустить.

Іспанія, Іспанія,
Гітари, сеньйоріти, кабальєро!
Іспанія, Іспанія,
Так хочеться в Іспанію, холєро!

Та знову на майдані я,
Довкола старовинні вежі Львова.
Чека мене Іспанія,
Незіграна далека bossa nova.

Махну я, мабуть, до Мілану,
Він мене тягне, як магніт,
Знайду я там свою кохану,
Сеньйору італьяну
І хай сховається Мадрид.

Або на катері до Риму,
Там, що не хата - то музей.
Я тата римського обніму,
Я коло нього йтиму,
А ще на хвильку в колізей!

Італія, Італія,
Флоренці, Паваротті, гондольєро!
Італія, Італія,
Так хочеться в Італію, холєро!

Та стою на вокзалі я,
На Стрий чекаю потяга зі Львова,
Чека мене Італія,
Бринить в моєму серці bossa nova.

А, може, в Ріо де Жанейро
За Атлантичний океан?
Зміняю гроші на крузейро,
Скажу "Буенос Ейро!",
Зірву із дерева банан.

А потім десь у Сальвадорі
Я пересяду в літака,
Відмочу крижі свої хворі
У Карибськім морі,
Мене Бразилія чека!

Бразилія, Бразилія,
Всі чорні, всі правдиві, бразильєро!
Бразилія, Бразилія,
Так хочеться в Бразилію, холєро!

Купонів зо три кіла я
В білетну касу пхаю гонорово,
В очах стоїть Бразилія,
Та їде bossa nova лиш до Львова.

Поїду краще до Варшави,
Я там вже тиждень не бував,
Гендльові зроблю свої справи,
А потім вип''ю кави
І знов до дому - в Станіслав.

Буенос ночес, моя мила,
Тягни валіз в коридор.
Ти, бачу, бульбу підігріла
І сала положила,
Та хай згорить той Сальвадор!

Сиджу собі на каві я,
Довкола мої друзі гуцульєро!
Це моя станіславія,
Бандерія, тризубія, холєро!

Америка, Австралія, -
Куди ж заведе подорож чергова?
Зіграю на гітарі я
І хай іде по світі bossa nova','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9137487'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9137487','Іспанія, Іспанія...','Переді мною карта світу,
Вона приваблива така.
Я дуже хочу до Мадриду,
Побачити кориду,
Мене Іспанія чека!

А може краще в Барселону?
Тепер де хочеш - там і їдь.
Ще не придумали закону,
Щоб мене в Барселону
Нахабно взяти й не пустить.

Іспанія, Іспанія,
Гітари, сеньйоріти, кабальєро!
Іспанія, Іспанія,
Так хочеться в Іспанію, холєро!

Та знову на майдані я,
Довкола старовинні вежі Львова.
Чека мене Іспанія,
Незіграна далека bossa nova.

Махну я, мабуть, до Мілану,
Він мене тягне, як магніт,
Знайду я там свою кохану,
Сеньйору італьяну
І хай сховається Мадрид.

Або на катері до Риму,
Там, що не хата - то музей.
Я тата римського обніму,
Я коло нього йтиму,
А ще на хвильку в колізей!

Італія, Італія,
Флоренці, Паваротті, гондольєро!
Італія, Італія,
Так хочеться в Італію, холєро!

Та стою на вокзалі я,
На Стрий чекаю потяга зі Львова,
Чека мене Італія,
Бринить в моєму серці bossa nova.

А, може, в Ріо де Жанейро
За Атлантичний океан?
Зміняю гроші на крузейро,
Скажу "Буенос Ейро!",
Зірву із дерева банан.

А потім десь у Сальвадорі
Я пересяду в літака,
Відмочу крижі свої хворі
У Карибськім морі,
Мене Бразилія чека!

Бразилія, Бразилія,
Всі чорні, всі правдиві, бразильєро!
Бразилія, Бразилія,
Так хочеться в Бразилію, холєро!

Купонів зо три кіла я
В білетну касу пхаю гонорово,
В очах стоїть Бразилія,
Та їде bossa nova лиш до Львова.

Поїду краще до Варшави,
Я там вже тиждень не бував,
Гендльові зроблю свої справи,
А потім вип''ю кави
І знов до дому - в Станіслав.

Буенос ночес, моя мила,
Тягни валіз в коридор.
Ти, бачу, бульбу підігріла
І сала положила,
Та хай згорить той Сальвадор!

Сиджу собі на каві я,
Довкола мої друзі гуцульєро!
Це моя станіславія,
Бандерія, тризубія, холєро!

Америка, Австралія, -
Куди ж заведе подорож чергова?
Зіграю на гітарі я
І хай іде по світі bossa nova');
DELETE FROM song_links WHERE song_id = 'pisniua_912982';
DELETE FROM song_versions WHERE song_id = 'pisniua_912982';
DELETE FROM songs_fts WHERE song_id = 'pisniua_912982';
DELETE FROM songs WHERE id = 'pisniua_912982';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_912982','Ой, впав стрілець','Музика: Михайло Гайворонський Слова: Михайло Гайворонський. Виконує: Не журись!','uk','ukr_ssr_1919_1991',NULL,'1990','1. "Молоде життя", Ауґсбурґ, 1949. 2. Повік не зів''яне. Стрілецькі пісні Михайла Гайворонського. Упор. В. Подуфалий. Тернопіль, 1990.','є на CD "Повіяв вітер степовий" (c) 1990 "Студія Лева" (p) 2003 "GAL Records" (CD-0122), http://www.is.lviv.ua/~galrecords Доповнив: oleg_M','Ой, впав стрілець у край зруба,
Коло зламаного дуба
І не встане вже.               | (2)

Йшов до бою опівночі,
Смерть закрила йому очі,
Від трьох куль на все.         | (2)

І хто ж йому заспіває,
І хто ж його поховає,
Хіба вітер-сніг.               | (2)

Ой, за тебе, рідний краю,
Наші стрільці умирають,
І він теж поліг.               | (2)','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_912982'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_912982','Ой, впав стрілець','Ой, впав стрілець у край зруба,
Коло зламаного дуба
І не встане вже.               | (2)

Йшов до бою опівночі,
Смерть закрила йому очі,
Від трьох куль на все.         | (2)

І хто ж йому заспіває,
І хто ж його поховає,
Хіба вітер-сніг.               | (2)

Ой, за тебе, рідний краю,
Наші стрільці умирають,
І він теж поліг.               | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_912982_l1','pisniua_912982','YouTube','https://www.youtube.com/watch?v=qHXx_tSEKZI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9130383';
DELETE FROM song_versions WHERE song_id = 'pisniua_9130383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9130383';
DELETE FROM songs WHERE id = 'pisniua_9130383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9130383','Лист з чужини','Музика: Василь Дунець Слова: Т. Дунець. Виконує: Василь Дунець','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Десь далеко звідси у моїй хатині,
Плачуть очі карі і сумують сині:
Тату наш татусю, що собі гадаєш,
Чом ти тільки дзвониш, а не приїжджаєш?
Чом ти тільки дзвониш, а не приїжджаєш?

Нам не треба більше гарних подарунків
І не шли нам з мамою у листах цілунки,
Хочеш пригорнути, то вертайсь скоріше,
Будем жити разом, як було раніше,
Будем жити разом, як було раніше.

Десь далеко звідси у рідній оселі
У моєї лади очі невеселі,
Ой, голубе сизий, я тебе кохаю,
Де ти забарився? - Думаю, чекаю...
Де ти забарився? - Думаю, чекаю...

Доле українська, доле нещаслива,
Скільки малих діток без батьків лишила:
У світ подалися на хліб заробляти,
На чужині щастя для сім''ї шукати...
На чужині щастя для сім''ї шукати...

От і я далеко від рідного краю,
Доленьки для діток кращої шукаю,
Хоч жену від себе і печаль, і втому
Та у снах щоночі я лечу до дому!
Та у снах щоночі я лечу до дому!

Лину на Вкраїну, де в рідній оселі
У моєї лади очі невеселі,
В далеч серцем лину, бо в моїй хатині
Плачуть очі карі і сумують сині...
Плачуть очі карі і сумують сині','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9130383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9130383','Лист з чужини','Десь далеко звідси у моїй хатині,
Плачуть очі карі і сумують сині:
Тату наш татусю, що собі гадаєш,
Чом ти тільки дзвониш, а не приїжджаєш?
Чом ти тільки дзвониш, а не приїжджаєш?

Нам не треба більше гарних подарунків
І не шли нам з мамою у листах цілунки,
Хочеш пригорнути, то вертайсь скоріше,
Будем жити разом, як було раніше,
Будем жити разом, як було раніше.

Десь далеко звідси у рідній оселі
У моєї лади очі невеселі,
Ой, голубе сизий, я тебе кохаю,
Де ти забарився? - Думаю, чекаю...
Де ти забарився? - Думаю, чекаю...

Доле українська, доле нещаслива,
Скільки малих діток без батьків лишила:
У світ подалися на хліб заробляти,
На чужині щастя для сім''ї шукати...
На чужині щастя для сім''ї шукати...

От і я далеко від рідного краю,
Доленьки для діток кращої шукаю,
Хоч жену від себе і печаль, і втому
Та у снах щоночі я лечу до дому!
Та у снах щоночі я лечу до дому!

Лину на Вкраїну, де в рідній оселі
У моєї лади очі невеселі,
В далеч серцем лину, бо в моїй хатині
Плачуть очі карі і сумують сині...
Плачуть очі карі і сумують сині');
DELETE FROM song_links WHERE song_id = 'pisniua_9149888';
DELETE FROM song_versions WHERE song_id = 'pisniua_9149888';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9149888';
DELETE FROM songs WHERE id = 'pisniua_9149888';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9149888','Ой, у ліску, ліску, там на жовтім піску','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, у ліску, ліску, там на жовтім піску.
Щедрий вечір, Добрий вечір!

Росте деревце тонке, високе.
Щедрий вечір, Добрий вечір!

Тонке, високе, в листю широке.
Щедрий вечір, Добрий вечір!

А на тім деревці сам сокіл сидить.
Щедрий вечір, Добрий вечір!

Сам сокіл сидить, далеко видить.
Щедрий вечір, Добрий вечір!

Далеко видить, аж у чисте поле.
Щедрий вечір, Добрий вечір!

А у чистім полі три святії орють.
Щедрий вечір, Добрий вечір!

Та й на пшенишеньку та й на проскуроньку.
Щедрий вечір, Добрий вечір!

Сам святий Павло воли поганяє.
Щедрий вечір, Добрий вечір!

Сам святий Петро за плугом ходить.
Щедрий вечір, Добрий вечір!

Сам Ісус Христос пшенишеньку сіє.
Щедрий вечір, Добрий вечір!

А Мати Божа їстоньки носить.
Щедрий вечір, Добрий вечір!

А за цим словом бувайте здорові!
Щедрий вечір, Добрий вечір!','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9149888'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9149888','Ой, у ліску, ліску, там на жовтім піску','Ой, у ліску, ліску, там на жовтім піску.
Щедрий вечір, Добрий вечір!

Росте деревце тонке, високе.
Щедрий вечір, Добрий вечір!

Тонке, високе, в листю широке.
Щедрий вечір, Добрий вечір!

А на тім деревці сам сокіл сидить.
Щедрий вечір, Добрий вечір!

Сам сокіл сидить, далеко видить.
Щедрий вечір, Добрий вечір!

Далеко видить, аж у чисте поле.
Щедрий вечір, Добрий вечір!

А у чистім полі три святії орють.
Щедрий вечір, Добрий вечір!

Та й на пшенишеньку та й на проскуроньку.
Щедрий вечір, Добрий вечір!

Сам святий Павло воли поганяє.
Щедрий вечір, Добрий вечір!

Сам святий Петро за плугом ходить.
Щедрий вечір, Добрий вечір!

Сам Ісус Христос пшенишеньку сіє.
Щедрий вечір, Добрий вечір!

А Мати Божа їстоньки носить.
Щедрий вечір, Добрий вечір!

А за цим словом бувайте здорові!
Щедрий вечір, Добрий вечір!');
DELETE FROM song_links WHERE song_id = 'pisniua_9143487';
DELETE FROM song_versions WHERE song_id = 'pisniua_9143487';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9143487';
DELETE FROM songs WHERE id = 'pisniua_9143487';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9143487','Українське село','Українська народна пісня. Виконує: Павло Мрежук','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Українське село - мальовничі куточки,
Я не можу від вас відірвати очей.
Причаїлись хати, яблуневі садочки,          |
Скільки матері в них не доспати ночей.      | (2)

Українське село,
Українське село - материнське тепло!

Українське село степом в''ється дорога,
То збіжить на горбок, то до долу спада.
Тут ходила війна, вирувала тривога          |
Та все ж перед життям відступала біда.      | (2)

Українське село,
Українське село - журавлине крило!
Українське село,
Українське село - материнське тепло!

Українське село, хліборобське безсоння,
Так до нього приріс, що і не відірвеш.
У великих містах каву п''ють ще з спросоння, |
А в селі знають змалку: посієш - пожнеш!    | (2)

Українське село - материнське тепло!

Українське село, наша пісня народна,
То лунає повсюди, то в серці болить.
І хоч інші слова, інша музика модна,        |
Пісня в небо летить, якщо хліб уродить.     | (2)

Українське село,                            |
Українське село - журавлине крило!          |
Українське село,                            |
Українське село - материнське тепло!        | (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9143487'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9143487','Українське село','Українське село - мальовничі куточки,
Я не можу від вас відірвати очей.
Причаїлись хати, яблуневі садочки,          |
Скільки матері в них не доспати ночей.      | (2)

Українське село,
Українське село - материнське тепло!

Українське село степом в''ється дорога,
То збіжить на горбок, то до долу спада.
Тут ходила війна, вирувала тривога          |
Та все ж перед життям відступала біда.      | (2)

Українське село,
Українське село - журавлине крило!
Українське село,
Українське село - материнське тепло!

Українське село, хліборобське безсоння,
Так до нього приріс, що і не відірвеш.
У великих містах каву п''ють ще з спросоння, |
А в селі знають змалку: посієш - пожнеш!    | (2)

Українське село - материнське тепло!

Українське село, наша пісня народна,
То лунає повсюди, то в серці болить.
І хоч інші слова, інша музика модна,        |
Пісня в небо летить, якщо хліб уродить.     | (2)

Українське село,                            |
Українське село - журавлине крило!          |
Українське село,                            |
Українське село - материнське тепло!        | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_9152487';
DELETE FROM song_versions WHERE song_id = 'pisniua_9152487';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9152487';
DELETE FROM songs WHERE id = 'pisniua_9152487';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9152487','Коляда','Музика: Ірина Федишин Слова: Ірина Федишин. Виконує: Ірина Федишин','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Коляда, коляда, Україна молода!
Коляда, коляда, Україна молода!

Дивляться в вікно дитячі очі,
В хаті сяє лісова краса,
Йде тепло різдвяної вже ночі,
Десь лунає чиста коляда.

Коляда, коляда, Україна молода! |
Коляда, коляда, Україна молода! | (2)

Спогад кличе нас до Вифлеєму,
Вірою побачити Христа,
Поклонитись панові своєму,
Що приніс у світ нове життя!

Коляда, коляда, Україна молода! |
Коляда, коляда, Україна молода! | (2)

Скільки є надій в очах дитячих,
Радість переповнює серця,
Хай Ісус розбудить душі сплячі
І зігріє всіх його зоря!

Коляда, коляда, Україна молода! |
Коляда, коляда, Україна молода! | (2)

Коляда!','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9152487'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9152487','Коляда','Коляда, коляда, Україна молода!
Коляда, коляда, Україна молода!

Дивляться в вікно дитячі очі,
В хаті сяє лісова краса,
Йде тепло різдвяної вже ночі,
Десь лунає чиста коляда.

Коляда, коляда, Україна молода! |
Коляда, коляда, Україна молода! | (2)

Спогад кличе нас до Вифлеєму,
Вірою побачити Христа,
Поклонитись панові своєму,
Що приніс у світ нове життя!

Коляда, коляда, Україна молода! |
Коляда, коляда, Україна молода! | (2)

Скільки є надій в очах дитячих,
Радість переповнює серця,
Хай Ісус розбудить душі сплячі
І зігріє всіх його зоря!

Коляда, коляда, Україна молода! |
Коляда, коляда, Україна молода! | (2)

Коляда!');
