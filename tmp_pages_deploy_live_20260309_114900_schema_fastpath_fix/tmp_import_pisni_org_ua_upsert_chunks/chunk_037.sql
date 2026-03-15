DELETE FROM song_links WHERE song_id = 'pisniua_424939';
DELETE FROM song_versions WHERE song_id = 'pisniua_424939';
DELETE FROM songs_fts WHERE song_id = 'pisniua_424939';
DELETE FROM songs WHERE id = 'pisniua_424939';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_424939','Іванку, купи ми рум’янку','Українська народна пісня. Виконує: Квітка Цісик, Диво','uk','ukraine_before_1917',NULL,NULL,NULL,'* варіант: Тоді він надійде','Іванку, Іванку,
Купи ми рум''янку, (2)
Би м ся  рум''янила, (2)
Як піду до танку.

У мого Іванка
За шапков косиця, (2)
Тоді він до мя іде *, (2)
Як зійде зірниця.

Серед села липа
Барвінком обвита. (2)
Кажуть люди, Йванку, (2)
Що я була бита.

Темна нічка, темна
До самого ранку. (2)
Любила-м та й буду (2)
Я тебе, Іванку','[''pisni.org.ua'', ''cat:zakarpatski'', ''Закарпатські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_424939'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_424939','Іванку, купи ми рум’янку','Іванку, Іванку,
Купи ми рум''янку, (2)
Би м ся  рум''янила, (2)
Як піду до танку.

У мого Іванка
За шапков косиця, (2)
Тоді він до мя іде *, (2)
Як зійде зірниця.

Серед села липа
Барвінком обвита. (2)
Кажуть люди, Йванку, (2)
Що я була бита.

Темна нічка, темна
До самого ранку. (2)
Любила-м та й буду (2)
Я тебе, Іванку');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_424939_l1','pisniua_424939','YouTube','https://www.youtube.com/watch?v=kneAt-mdun4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_424939_l2','pisniua_424939','YouTube','https://www.youtube.com/watch?v=B41n2UH0Psc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_424939_l3','pisniua_424939','YouTube','https://www.youtube.com/watch?v=GJqhNstciKY','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_425185';
DELETE FROM song_versions WHERE song_id = 'pisniua_425185';
DELETE FROM songs_fts WHERE song_id = 'pisniua_425185';
DELETE FROM songs WHERE id = 'pisniua_425185';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_425185','Ой наш господар','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Колесса Ф. Шкільний співаник. З педагогічної спадщини композитора.- Київ: Музична Україна, 1991.- 224 с.','Першоджерело: Народні мелодії з голосу Лесі Українки / Записав і упорядив Климент Квітка. Ч. I, К., 1917.- с. 48','1. Ой наш господар, виноград,
Насіяв житечка та й сам рад.

2. Ой він по полю гуляє,
Свої женчики скликає.

3. Ідіте, женчики, додому.
Вже нагулялись по полю.

4. Вже ж ви ходили, гуляли,
Густе житечко стинали.

5. Густе житечко стинали,
Часті копойки ставляли.    Мелодія для 1 голосу','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_425185'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_425185','Ой наш господар','1. Ой наш господар, виноград,
Насіяв житечка та й сам рад.

2. Ой він по полю гуляє,
Свої женчики скликає.

3. Ідіте, женчики, додому.
Вже нагулялись по полю.

4. Вже ж ви ходили, гуляли,
Густе житечко стинали.

5. Густе житечко стинали,
Часті копойки ставляли.    Мелодія для 1 голосу');
DELETE FROM song_links WHERE song_id = 'pisniua_425137';
DELETE FROM song_versions WHERE song_id = 'pisniua_425137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_425137';
DELETE FROM songs WHERE id = 'pisniua_425137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_425137','Ми дожали зарана','(Ми дожєли зарана). Українська народна пісня','uk','ukraine_1991',NULL,'2001','Аудіо-CD "Карпатія. Етнічна музика України" (2003, О. Турянська, Караван Рекордз)','Виконання: Гурт жінок (с. Грабівка, Бойківщина). Записано: с. Грабівка (Калуський район, Івано-Франківська область), 2001 р. Запис: Леся Турянська. Діалектизми: - ґазда - господар - ґаздинька - господиня - рісен - густий, рясний - живо - швидко - ладом - строєм, за порядком - полін - ужинок (те, що нажали) Anrzej (член клубу): Є спільні елементи тексту з обжинковою піснею "А у лісі ожинки"','Ми дожєли зарана,  (2)
Заріжте нам барана

Барана рогатого  (2)
Від ґазди богатого

- Що наш ґазда дома діє?  (2)
- На тоці срібло сіє!

Ґаздинька обмітає,  (2)
Ґазда ґаздиньку обіймає

Рісен наш вінок рісен,  (2)
Ми й''го високо несем

Та й ще вище від плота,  (2)
Та ще краще від злота

Живо, женчики, живо, —  (2)
Будемо пити пиво

Ладом, женчики, ладом, —  (2)
Буде горівка з медом

Наш ґазда молоденький,  (2)
Під ним коник вороненький

Наші ґаздинька пишна  (2)
На подвір''ячко вийшла

В ключики задзвонила,  (2)
Нас до хати запросила

Мовою:
Принесли-смо вам полін
з усіх сторін -
з гір''я, з поділля
на ваше подвіря,

Наш ґазда молоденький,  (2)
Під ним коник вороненький,

Він поле об''їжджає,  (2)
Женчиків доглядає    Фрагмент аудіо (mp3)','[''pisni.org.ua'', ''cat:boykivski'', ''cat:obzhynkovi'', ''Пісні з Бойківщини'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_425137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_425137','Ми дожали зарана','Ми дожєли зарана,  (2)
Заріжте нам барана

Барана рогатого  (2)
Від ґазди богатого

- Що наш ґазда дома діє?  (2)
- На тоці срібло сіє!

Ґаздинька обмітає,  (2)
Ґазда ґаздиньку обіймає

Рісен наш вінок рісен,  (2)
Ми й''го високо несем

Та й ще вище від плота,  (2)
Та ще краще від злота

Живо, женчики, живо, —  (2)
Будемо пити пиво

Ладом, женчики, ладом, —  (2)
Буде горівка з медом

Наш ґазда молоденький,  (2)
Під ним коник вороненький

Наші ґаздинька пишна  (2)
На подвір''ячко вийшла

В ключики задзвонила,  (2)
Нас до хати запросила

Мовою:
Принесли-смо вам полін
з усіх сторін -
з гір''я, з поділля
на ваше подвіря,

Наш ґазда молоденький,  (2)
Під ним коник вороненький,

Він поле об''їжджає,  (2)
Женчиків доглядає    Фрагмент аудіо (mp3)');
DELETE FROM song_links WHERE song_id = 'pisniua_4251131';
DELETE FROM song_versions WHERE song_id = 'pisniua_4251131';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4251131';
DELETE FROM songs WHERE id = 'pisniua_4251131';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4251131','Ой, високо та сонечко сходить','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські народні пісні з нотами. Кого люблю — Мій буде / Упоряд. Г. І. Ганзбурґ; Худож.-оформлювач Л. Д. Киркач. — Харків: Фоліо, 2004. — 287 с.',NULL,'Ой, високо та сонечко сходить,
А низенько заходить,
Гей, наш отаман по дворочку ходить,
Гей, та словесно говорить:

Ой, ви, хлопці, превдалі молодці!
Уставайте, вози мажте,
Гей, вози мажте, ярма надівайте,
Гей, сірі воли запрягайте!

Хлопці встали, вози помазали,
Нові ярма понадівали,
Гей, нові ярма понадавали,
Гей, сірі воли позапрягали.

Степом ідуть, нові вози риплять,
Сірі воли ремиґають, —
Гей, із-за лісу, лісу зеленого,
Гей, розбойнички виглядають.

Ой, здорові ж, превражії сини!
А котрий між вами отаман?
Гей, наш отаман сидить між возами,
Гей, обливається сльозами.

Гей, наш отаман сидить між возами,
Обливається сльозами,
Гей, наш отаман сидить між новими,
Гей, обливається дрібними.

Ой, ви, хлопці, превдалі молодці!
А беріть лиш дрюки в руки,
Гей, ви бийте, бийте, не жалійте,
Гей, на нові вози кладіте!

Поїдемо в город у Полтаву
Та наробим собі слави:
Гей, розбойничків сорок і чотири,
Гей, а ми вдесятьох їх побили!','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4251131'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4251131','Ой, високо та сонечко сходить','Ой, високо та сонечко сходить,
А низенько заходить,
Гей, наш отаман по дворочку ходить,
Гей, та словесно говорить:

Ой, ви, хлопці, превдалі молодці!
Уставайте, вози мажте,
Гей, вози мажте, ярма надівайте,
Гей, сірі воли запрягайте!

Хлопці встали, вози помазали,
Нові ярма понадівали,
Гей, нові ярма понадавали,
Гей, сірі воли позапрягали.

Степом ідуть, нові вози риплять,
Сірі воли ремиґають, —
Гей, із-за лісу, лісу зеленого,
Гей, розбойнички виглядають.

Ой, здорові ж, превражії сини!
А котрий між вами отаман?
Гей, наш отаман сидить між возами,
Гей, обливається сльозами.

Гей, наш отаман сидить між возами,
Обливається сльозами,
Гей, наш отаман сидить між новими,
Гей, обливається дрібними.

Ой, ви, хлопці, превдалі молодці!
А беріть лиш дрюки в руки,
Гей, ви бийте, бийте, не жалійте,
Гей, на нові вози кладіте!

Поїдемо в город у Полтаву
Та наробим собі слави:
Гей, розбойничків сорок і чотири,
Гей, а ми вдесятьох їх побили!');
DELETE FROM song_links WHERE song_id = 'pisniua_4251434';
DELETE FROM song_versions WHERE song_id = 'pisniua_4251434';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4251434';
DELETE FROM songs WHERE id = 'pisniua_4251434';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4251434','Із-за гори, із-за кручі','Українська народна пісня. Виконує: Хорея Козацька, Гуляйгород','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Із-за гори, із-за кручі,
З-за темного гаю,
Ой, гукнули козаченьки:
Тікаймо, Нечаю!

Козак Нечай, козак Нечай
Коня не сідлає,
Сидить же він із кумою,
Мед, вино кружляє.

Ой, як гляне козак Нечай
У ясне віконце,
Аж від ляхів, аж від панків
Потемніло сонце.

Ой, як гукнув козак Нечай
На свого малого:
Сідлай-сідлай, милий хлопче,
Коня вороного.

Сідлай собі вороного,
Мені буланого,
Та й поженем вражих ляхів
Із﻿ краю милого.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4251434'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4251434','Із-за гори, із-за кручі','Із-за гори, із-за кручі,
З-за темного гаю,
Ой, гукнули козаченьки:
Тікаймо, Нечаю!

Козак Нечай, козак Нечай
Коня не сідлає,
Сидить же він із кумою,
Мед, вино кружляє.

Ой, як гляне козак Нечай
У ясне віконце,
Аж від ляхів, аж від панків
Потемніло сонце.

Ой, як гукнув козак Нечай
На свого малого:
Сідлай-сідлай, милий хлопче,
Коня вороного.

Сідлай собі вороного,
Мені буланого,
Та й поженем вражих ляхів
Із﻿ краю милого.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4251434_l1','pisniua_4251434','YouTube','https://www.youtube.com/watch?v=8LrvRvzFY-g','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4252333';
DELETE FROM song_versions WHERE song_id = 'pisniua_4252333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4252333';
DELETE FROM songs WHERE id = 'pisniua_4252333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4252333','Три брати','(Ой, там у лузі, при долині). Українська народна пісня. Виконує: Алла Опейда, В''ячеслав Судима','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис',NULL,'Ой, там у лузі, при долині,
Червоні рожі розцвіли.
Ой, там повстанці молодії,
Життя за волю віддали.

Було їх троє, тільки троє
В старої матері вдови.
Але знайшовся той, хто зрадив
Катам червоної Москви.

Кати криївку обступили,
Вогню і диму - круговерть!
Хтось крикнув: "Слава Україні!
Ми не здамося, краще смерть!"

І обнялися всі три друзі,
Ніхто пощади не просив.
І там гранати більше не рвались,
І скоростріл більш не строчить.

Ой, там у лузі, там при долині
Червоні рожі розцвіли.
Ой, там три друзі молодії
За Україну полягли...','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4252333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4252333','Три брати','Ой, там у лузі, при долині,
Червоні рожі розцвіли.
Ой, там повстанці молодії,
Життя за волю віддали.

Було їх троє, тільки троє
В старої матері вдови.
Але знайшовся той, хто зрадив
Катам червоної Москви.

Кати криївку обступили,
Вогню і диму - круговерть!
Хтось крикнув: "Слава Україні!
Ми не здамося, краще смерть!"

І обнялися всі три друзі,
Ніхто пощади не просив.
І там гранати більше не рвались,
І скоростріл більш не строчить.

Ой, там у лузі, там при долині
Червоні рожі розцвіли.
Ой, там три друзі молодії
За Україну полягли...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4252333_l1','pisniua_4252333','YouTube','https://www.youtube.com/watch?v=w4Iz9JWLfRY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_425481';
DELETE FROM song_versions WHERE song_id = 'pisniua_425481';
DELETE FROM songs_fts WHERE song_id = 'pisniua_425481';
DELETE FROM songs WHERE id = 'pisniua_425481';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_425481','По діброві вітер виє','(Тополя). Музика: Микола Лисенко Слова: Тарас Шевченко. Виконує: Василь Жданкін, Віктор Морозов, Петро Білинник','uk','ukr_ssr_1919_1991',NULL,'1954','1. Плавай, плавай, лебедонько. Пісенник. - К.: Музична Україна, 1989. - С. 32. 2. Українські народні романси. - К.: В-во АН УРСР, 1961. - С. 334.','У джерелах 1 і 2 немає інформації про походження мелодії пісні, натомість в обох є посилання на першоджерело: Українські народні пісні, кн. 2. - К.: Мистецтво, 1954. - С. 345. Текст пісні - уривок поеми "Тополя" Тараса Шевченка. Акорди підібрав Віктор (vperfetsjkyj@gmail.com) з відеоролика виступу ВІА "Смерічки".','По діброві вітер виє,
Гуляє по полю,
Край дороги гне тополю     |
До самого долу.            | (2)
Стан високий, лист широкий
Марно зеленіє,
Кругом поле, як те море    |
Широке, синіє.             | (2)
Чумак іде, подивиться -
Та й голову схилить;
Чабан вранці з сопілкою    |
Сяде на могилі.            | (2)
Подивиться - серце ниє:
Кругом ні билини!
Одна, одна, як сирота      |
На чужині, гине.           | (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:nostalgia'', ''Пісні про красу природи'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_425481'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_425481','По діброві вітер виє','По діброві вітер виє,
Гуляє по полю,
Край дороги гне тополю     |
До самого долу.            | (2)
Стан високий, лист широкий
Марно зеленіє,
Кругом поле, як те море    |
Широке, синіє.             | (2)
Чумак іде, подивиться -
Та й голову схилить;
Чабан вранці з сопілкою    |
Сяде на могилі.            | (2)
Подивиться - серце ниє:
Кругом ні билини!
Одна, одна, як сирота      |
На чужині, гине.           | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425481_l1','pisniua_425481','YouTube','https://www.youtube.com/watch?v=mtqucbDrviY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425481_l2','pisniua_425481','YouTube','https://www.youtube.com/watch?v=szFWMviq81I','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425481_l3','pisniua_425481','YouTube','https://www.youtube.com/watch?v=bsh9U_qBJI4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425481_l4','pisniua_425481','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_425032';
DELETE FROM song_versions WHERE song_id = 'pisniua_425032';
DELETE FROM songs_fts WHERE song_id = 'pisniua_425032';
DELETE FROM songs WHERE id = 'pisniua_425032';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_425032','Ой там зажурились','(Ой там зажурились стрільці січовії). Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1989','Записав 1989 року в Москві від побратима родом з Коломийщини.',NULL,'Ой там зажурились
Стрільці січовії,
Стали дрібні сльози лити,
Що буде лях проклятий
Батьками орати,
Матерями волочити.

Ой не тішся ляше,
Що по Збруч - то наше,
Ще живе стрілецька слава,
Вернуться ще тії
Стрільці січовії -
Задрижать Москва й Варшава.

Ой там зажурились
Стрільці січовії,
Довго дрібні сльози лили,
Що стільки народу
Впало за свободу -
Встояти не було сили.','[''pisni.org.ua'', ''cat:dumy'', ''cat:strilecki'', ''Думи'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_425032'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_425032','Ой там зажурились','Ой там зажурились
Стрільці січовії,
Стали дрібні сльози лити,
Що буде лях проклятий
Батьками орати,
Матерями волочити.

Ой не тішся ляше,
Що по Збруч - то наше,
Ще живе стрілецька слава,
Вернуться ще тії
Стрільці січовії -
Задрижать Москва й Варшава.

Ой там зажурились
Стрільці січовії,
Довго дрібні сльози лили,
Що стільки народу
Впало за свободу -
Встояти не було сили.');
DELETE FROM song_links WHERE song_id = 'pisniua_4256185';
DELETE FROM song_versions WHERE song_id = 'pisniua_4256185';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4256185';
DELETE FROM songs WHERE id = 'pisniua_4256185';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4256185','Дінь-Дон','Музика: Оксана Голуб Слова: Оксана Голуб. Виконує: Оксана Голуб','uk','ukraine_before_1917',NULL,NULL,'Продюсер','Бек-вокал - Владислав Лєлюшкін, Ярослава Венцеславська, Ганна Бабанська.','Сніг, білий сніг, затанцює довкруж
І спадає до ніг...
Рік, Новий Рік, знов приходить до нас
Із казкових доріг...

І збувається все, тільки слухай
Свої почуття...
Це надія, це мрія, це щастя,
Це твоє життя...

В цю ніч кожен з нас чекає на час,
Коли годинник проб''є...
І вірить у те, що в омріяний час
Бажання здійсниться твоє...

Святкові вогні в цю ніч запали
У колі рідних людей,
І друзів своїх не забудь запросить
З тобою зустріти цей день...

Послухай, ось вже вперше звучить: "Дінь-Дон",
Послухай, ось вже вдруге звучить: "Дінь-Дон".
Луною свято знову співа: "Дінь-Дон, Дінь-Дінь"
І входить в кожне серце у кожен дім.

Послухай, ось вже в восьме звучить: "Дінь-Дон",
Послухай, вже вдесяте звучить: "Дінь-Дон".
Дванадцятим ударом луна: "Дінь-Дон, Дінь-Дінь"
Світ розпочинає відлік нових хвилин.

Вже десь на Землі починається день,
Об''єднує свято планету людей.
Запалюй вогні - естафету приймай,
В країні своїй новий рік зустрічай','[''pisni.org.ua'', ''cat:all-ukraine'', ''cat:shchedrivky'', ''cat:zahalni-cinnosti'', ''Загальноукраїнські пісні'', ''Щедрівки'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4256185'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4256185','Дінь-Дон','Сніг, білий сніг, затанцює довкруж
І спадає до ніг...
Рік, Новий Рік, знов приходить до нас
Із казкових доріг...

І збувається все, тільки слухай
Свої почуття...
Це надія, це мрія, це щастя,
Це твоє життя...

В цю ніч кожен з нас чекає на час,
Коли годинник проб''є...
І вірить у те, що в омріяний час
Бажання здійсниться твоє...

Святкові вогні в цю ніч запали
У колі рідних людей,
І друзів своїх не забудь запросить
З тобою зустріти цей день...

Послухай, ось вже вперше звучить: "Дінь-Дон",
Послухай, ось вже вдруге звучить: "Дінь-Дон".
Луною свято знову співа: "Дінь-Дон, Дінь-Дінь"
І входить в кожне серце у кожен дім.

Послухай, ось вже в восьме звучить: "Дінь-Дон",
Послухай, вже вдесяте звучить: "Дінь-Дон".
Дванадцятим ударом луна: "Дінь-Дон, Дінь-Дінь"
Світ розпочинає відлік нових хвилин.

Вже десь на Землі починається день,
Об''єднує свято планету людей.
Запалюй вогні - естафету приймай,
В країні своїй новий рік зустрічай');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4256185_l1','pisniua_4256185','YouTube','https://www.youtube.com/watch?v=dRhkEFDRoSI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4256185_l2','pisniua_4256185','YouTube','https://www.youtube.com/watch?v=FW0uAx7Md-Q','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4253032';
DELETE FROM song_versions WHERE song_id = 'pisniua_4253032';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4253032';
DELETE FROM songs WHERE id = 'pisniua_4253032';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4253032','Привезли в темний ліс','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,'Одна із почутих пісень у виконанні людей із мого села які були повстанцями.','Це було так давно, сорок років тому
Наші хлопці до лісу тікали.
Я ще був молодий, я ще жити хотів,
А мене у бандери забрали.

Привезли в темний  ліс,
Дали в руки обріз.
З кулемета навчили стріляти.
І сказали: Стріляй!
Москаля убивай!
За Вкраїну, за батька, за мати!','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4253032'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4253032','Привезли в темний ліс','Це було так давно, сорок років тому
Наші хлопці до лісу тікали.
Я ще був молодий, я ще жити хотів,
А мене у бандери забрали.

Привезли в темний  ліс,
Дали в руки обріз.
З кулемета навчили стріляти.
І сказали: Стріляй!
Москаля убивай!
За Вкраїну, за батька, за мати!');
DELETE FROM song_links WHERE song_id = 'pisniua_425787';
DELETE FROM song_versions WHERE song_id = 'pisniua_425787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_425787';
DELETE FROM songs WHERE id = 'pisniua_425787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_425787','Я дивлюсь на Вас, мамо','Музика: Олександр Морозов Слова: Андрій Демиденко. Виконує: Назарій Яремчук, Іван Попович','uk','ukraine_1991',NULL,NULL,'Пісні Назарія Яремчука. "Бібліотека українця", Київ, 1995.',NULL,'Я дивлюсь на Вас, мамо:  |
Забіліли Ви скрушно,     |
А бачу і нині,           | (2)
А бачу і нині            |
Молоду Вашу душу.        |

Приспів:
А душа Ваша — яблуня:
Золота! Золота!
А душа Ваша — явором,
Як літа! Як літа!
Бо квітує в ній сонячно
Доброта! Доброта!
Бо без Вас світ довколишній —
Сирота! Сирота!...

Вам вклоняються зорі   |
Вечорові й ранкові     |
Ой будьте ж, матусю,   | (2)
Ой будьте ж, матусю,   |
Ви довіку здорові.     |

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_425787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_425787','Я дивлюсь на Вас, мамо','Я дивлюсь на Вас, мамо:  |
Забіліли Ви скрушно,     |
А бачу і нині,           | (2)
А бачу і нині            |
Молоду Вашу душу.        |

Приспів:
А душа Ваша — яблуня:
Золота! Золота!
А душа Ваша — явором,
Як літа! Як літа!
Бо квітує в ній сонячно
Доброта! Доброта!
Бо без Вас світ довколишній —
Сирота! Сирота!...

Вам вклоняються зорі   |
Вечорові й ранкові     |
Ой будьте ж, матусю,   | (2)
Ой будьте ж, матусю,   |
Ви довіку здорові.     |

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425787_l1','pisniua_425787','YouTube','https://www.youtube.com/watch?v=3JTMroPpCVQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4254236';
DELETE FROM song_versions WHERE song_id = 'pisniua_4254236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4254236';
DELETE FROM songs WHERE id = 'pisniua_4254236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4254236','Ладкання','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'За альманахом "Русалка Дністровая". (Київ, 1987 р.).','Коломийка записана Маркіяном Шашкевичем під час навчання в Бережанській гімназії. Весільні пісні у записах І. Білинського з "Русалки Дністрової" з позначкою "від Бережан" знайдені не в Бережанах, а в с. Дегова колишньої Бережанської округи, в якому був священиком його батько Григорій.','Злетіли два ангели з неба.
Ой, сіли-пали
Марисеньці на подвір''я.

А з подвір''я -
В застівноє віконце.
А з віконця -
На тисові столи.

А з столів -
На ллянії обруси,
А з обрусів -
На пшеничні хлібове.

А з хлібових -
На рум''яне личенько,
А з рум''яного личенька -
На барвінковий віночок.

А з віночка -
На мушлиновий рубочок.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4254236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4254236','Ладкання','Злетіли два ангели з неба.
Ой, сіли-пали
Марисеньці на подвір''я.

А з подвір''я -
В застівноє віконце.
А з віконця -
На тисові столи.

А з столів -
На ллянії обруси,
А з обрусів -
На пшеничні хлібове.

А з хлібових -
На рум''яне личенько,
А з рум''яного личенька -
На барвінковий віночок.

А з віночка -
На мушлиновий рубочок.');
DELETE FROM song_links WHERE song_id = 'pisniua_425436';
DELETE FROM song_versions WHERE song_id = 'pisniua_425436';
DELETE FROM songs_fts WHERE song_id = 'pisniua_425436';
DELETE FROM songs WHERE id = 'pisniua_425436';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_425436','На високій полонині','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1949','Пісні з Львівщини. - К.: Музична Україна, 1988. - С. 69.','Записана 1949 року в с. Крушельниця Сколівського р-ну Львівщини від О.М.Корчинського.','На високій полонині
Косарики косять,
Їм дівчата молоденькі
Водиченьку носять.        |(2)

Гей, я кошу траву, траву
Ще й буду отаву,
Гей, я люблю дівчиноньку
Молоду, цікаву.           |(2)

Гей, я кошу траву, траву
Високу й маленьку,
Гей, я люблю дівчиноньку
Високу, тоненьку.         |(2)

Гей, як я си нагадаю
За свою миленьку,
Сам не знаю, як рубаю
Траву зелененьку.         |(2)','[''pisni.org.ua'', ''cat:boykivski'', ''cat:obzhynkovi'', ''Пісні з Бойківщини'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_425436'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_425436','На високій полонині','На високій полонині
Косарики косять,
Їм дівчата молоденькі
Водиченьку носять.        |(2)

Гей, я кошу траву, траву
Ще й буду отаву,
Гей, я люблю дівчиноньку
Молоду, цікаву.           |(2)

Гей, я кошу траву, траву
Високу й маленьку,
Гей, я люблю дівчиноньку
Високу, тоненьку.         |(2)

Гей, як я си нагадаю
За свою миленьку,
Сам не знаю, як рубаю
Траву зелененьку.         |(2)');
DELETE FROM song_links WHERE song_id = 'pisniua_425232';
DELETE FROM song_versions WHERE song_id = 'pisniua_425232';
DELETE FROM songs_fts WHERE song_id = 'pisniua_425232';
DELETE FROM songs WHERE id = 'pisniua_425232';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_425232','Ой на горі білий камінь','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой на горі білий камінь, ку, ку-ку,
Ой на горі білий камінь,
Верховинка сидить на нім.
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!

Прийшов до ня верховинець, ку, ку-ку,
Прийшов до ня верховинець:
"Верховинко, дай ми вінець".
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!

"Я би-м тобі вінець дала, ку, ку-ку,
Я би-м тобі вінець дала,
Якби зради не боялась".
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!

"Ой не бійся зради тої, ку, ку-ку,
Ой не бійся зради тої,
Слухай, дівча, слова мої:
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!

Йди до лісу зеленого, ку, ку-ку,
Йди до лісу зеленого,
Стрінеш хлопця молодого.
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!

Поцілуй''го в біле личко, ку, ку-ку,
Поцілуй''го в біле личко,
Верховинко-чарівничко".
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!

Цілу нічку цілувала, ку, ку-ку,
Цілу нічку цілувала,
Аж зозуля закувала:
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!    Гурт "Два кольори"','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:lirychni'', ''cat:narodni'', ''cat:zhartivlyvi'', ''Лемківські пісні'', ''Пісні про кохання, ліричні'', ''Народні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_425232'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_425232','Ой на горі білий камінь','Ой на горі білий камінь, ку, ку-ку,
Ой на горі білий камінь,
Верховинка сидить на нім.
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!

Прийшов до ня верховинець, ку, ку-ку,
Прийшов до ня верховинець:
"Верховинко, дай ми вінець".
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!

"Я би-м тобі вінець дала, ку, ку-ку,
Я би-м тобі вінець дала,
Якби зради не боялась".
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!

"Ой не бійся зради тої, ку, ку-ку,
Ой не бійся зради тої,
Слухай, дівча, слова мої:
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!

Йди до лісу зеленого, ку, ку-ку,
Йди до лісу зеленого,
Стрінеш хлопця молодого.
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!

Поцілуй''го в біле личко, ку, ку-ку,
Поцілуй''го в біле личко,
Верховинко-чарівничко".
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!

Цілу нічку цілувала, ку, ку-ку,
Цілу нічку цілувала,
Аж зозуля закувала:
Ку-ку-рі-ку, ку, ку, ку! Ку-ку!    Гурт "Два кольори"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425232_l1','pisniua_425232','YouTube','https://www.youtube.com/watch?v=ufDyIGNBTb0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425232_l2','pisniua_425232','YouTube','https://www.youtube.com/watch?v=-4-i3H28G6o','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_425634';
DELETE FROM song_versions WHERE song_id = 'pisniua_425634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_425634';
DELETE FROM songs WHERE id = 'pisniua_425634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_425634','Прощай, Україно','Музика: Олександр Смик Слова: Олександр Смик. Виконує: Чорні черешні, Володимир Вермінський','uk','ukraine_1991',NULL,NULL,'Аудіо-CD "Олександр Смик. Мистецький проект "Червоне... Чорне... Біле..." (Історія закутків української душі). Ч.1. Мелодії та тексти Олександра Смика." (2001)','Стиль: танґо Текст і акорди записано на слух з аудіо. Акорди подано спрощено. Тональність оригінальна. * Тут і далі в оригіналі все грається на півтон вище. Деякі акорди: Em/G [x 2 2 0 0 3] або [3 2 2 0 0 0] H7M [x 2 4 3 4 2] Підбір акордів: bohdanko@pisni.org.ua','Вступ:  H7 Em Am Em/G

Далеко сивий берег. Ще далі Україна,
Де соняхи і сонце, як батько з немовлям.
А ми - в далекий світ, мов покритка причинна,
Осміяна на людях в догоду москаля...

Приспів:
Прощай, любимий край, ридання мої тихі.
Одного лиш не дай: калині відцвісти!
Прощай, любимий край. Із тополиних віхол
До Тебе поверну - в любові присягти.

Вставка: C H7

І навіть імена розгублені у кличках;
Ніхто не пам''ятає, чи справді був такий.
Безчестя в іменах... Безчестя чи величчя...
А нашим нареченим - червоні чобітки.

Приспів.

Зітхають океани, відлунюють їм трюми.
Одна відрада тільки: хтось пісню заспіва...
Який скорботний хор, коли живцем у трунах,
Коли за диригента - надія ледь жива.

Вставка: H7 Em

Приспів.

Програш (на тему Приспіву). *

Приспів.

Закінчення: H7 Em','[''pisni.org.ua'', ''cat:43'', ''cat:suspilno-politychni'', ''Еміґрантські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_425634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_425634','Прощай, Україно','Вступ:  H7 Em Am Em/G

Далеко сивий берег. Ще далі Україна,
Де соняхи і сонце, як батько з немовлям.
А ми - в далекий світ, мов покритка причинна,
Осміяна на людях в догоду москаля...

Приспів:
Прощай, любимий край, ридання мої тихі.
Одного лиш не дай: калині відцвісти!
Прощай, любимий край. Із тополиних віхол
До Тебе поверну - в любові присягти.

Вставка: C H7

І навіть імена розгублені у кличках;
Ніхто не пам''ятає, чи справді був такий.
Безчестя в іменах... Безчестя чи величчя...
А нашим нареченим - червоні чобітки.

Приспів.

Зітхають океани, відлунюють їм трюми.
Одна відрада тільки: хтось пісню заспіва...
Який скорботний хор, коли живцем у трунах,
Коли за диригента - надія ледь жива.

Вставка: H7 Em

Приспів.

Програш (на тему Приспіву). *

Приспів.

Закінчення: H7 Em');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425634_l1','pisniua_425634','YouTube','https://www.youtube.com/watch?v=QtE6IsrHzQU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4256535';
DELETE FROM song_versions WHERE song_id = 'pisniua_4256535';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4256535';
DELETE FROM songs WHERE id = 'pisniua_4256535';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4256535','Брат за брата','Музика: Kozak System Слова: Олександр Положинський. Виконує: Kozak System','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Рваними ритмами, стрімкими потоками
Щось потужно гупає в грудях.
З чистими помислами, твердими кроками -
Хай світло небесне засяє в людях!
Хто сам вирішує долю,
Хто сам примає рішення,
Без бруду, без блуду, без гною, без болю
Життям своїм залишається втішеним.

Приспів:
Свій на свого не здійме руку!
Брат на брата не скаже злого!
Прийме удар, піде на муку
Брат за брата, свій за свого!

Різкими зламами, лихими закрутами
Продирається доля крізь хащі.
Хай груди заквітнуть червоними рутами -
Не втратити честі своєї нізащо!
Там, де з рідними-милими,
Там, де зі своїми хорошими,
Власним розумом, власними силами
Щастя своє збудувати зможемо...

Приспів.

Вітре мій, веди мене!           |
Сонце моє, зігрій мені серце!   |
Земле моя, мені сили дай        |
Перемогти у смертельному герці! | (2)

Не вір в чуже, не проси, не бійся!
В єдності сила - відома істина.
Хто пустить ворога в своє обійстя,
Власного хліба більше не їстиме.
Живим героям прірва роботи!
Героям загиблим славна тризна!
Але, для початку, визначись хто ти
І що для тебе твоя Вітчизна!

Приспів.

Вітре мій, веди мене!           |
Сонце моє, зігрій мені серце!   |
Земле моя, мені сили дай        |
Перемогти у смертельному герці! | (2)','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4256535'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4256535','Брат за брата','Рваними ритмами, стрімкими потоками
Щось потужно гупає в грудях.
З чистими помислами, твердими кроками -
Хай світло небесне засяє в людях!
Хто сам вирішує долю,
Хто сам примає рішення,
Без бруду, без блуду, без гною, без болю
Життям своїм залишається втішеним.

Приспів:
Свій на свого не здійме руку!
Брат на брата не скаже злого!
Прийме удар, піде на муку
Брат за брата, свій за свого!

Різкими зламами, лихими закрутами
Продирається доля крізь хащі.
Хай груди заквітнуть червоними рутами -
Не втратити честі своєї нізащо!
Там, де з рідними-милими,
Там, де зі своїми хорошими,
Власним розумом, власними силами
Щастя своє збудувати зможемо...

Приспів.

Вітре мій, веди мене!           |
Сонце моє, зігрій мені серце!   |
Земле моя, мені сили дай        |
Перемогти у смертельному герці! | (2)

Не вір в чуже, не проси, не бійся!
В єдності сила - відома істина.
Хто пустить ворога в своє обійстя,
Власного хліба більше не їстиме.
Живим героям прірва роботи!
Героям загиблим славна тризна!
Але, для початку, визначись хто ти
І що для тебе твоя Вітчизна!

Приспів.

Вітре мій, веди мене!           |
Сонце моє, зігрій мені серце!   |
Земле моя, мені сили дай        |
Перемогти у смертельному герці! | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4256535_l1','pisniua_4256535','YouTube','https://www.youtube.com/watch?v=Jnd2Ir9Nw48','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4256535_l2','pisniua_4256535','YouTube','https://www.youtube.com/watch?v=SjeuqJ_nkho','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4252939';
DELETE FROM song_versions WHERE song_id = 'pisniua_4252939';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4252939';
DELETE FROM songs WHERE id = 'pisniua_4252939';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4252939','Зірвалася хуртовина','Музика: В. Витвицький Слова: Г. К.','uk','ukr_ssr_1919_1991',NULL,NULL,'"В дорогу"',NULL,'Зірвалася хуртовина,
Топче збіжжя на лану,
Виряджала мати свого сина,   |
На кривавую війну.           | (2)

"Підеш, сину, моя дитино,
У завзятий, лютий бій -
Захищати рідну Україну,      |
Боронити нарід свій.         | (2)

Як вернешся, сину, вквітчаю
Цвіт-калиною твій кріс,
Не вернешся - тихо заридаю,  |
Хай ніхто не бачить сліз."   | (2)

"Ой, вернуся, та, моя мати,
Як калина зацвіте,
Принесу я до твоєї хати      |
Сонце волі золоте!"          | (2)','[''pisni.org.ua'', ''cat:povstanski'', ''cat:viyskovi'', ''Повстанські пісні'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4252939'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4252939','Зірвалася хуртовина','Зірвалася хуртовина,
Топче збіжжя на лану,
Виряджала мати свого сина,   |
На кривавую війну.           | (2)

"Підеш, сину, моя дитино,
У завзятий, лютий бій -
Захищати рідну Україну,      |
Боронити нарід свій.         | (2)

Як вернешся, сину, вквітчаю
Цвіт-калиною твій кріс,
Не вернешся - тихо заридаю,  |
Хай ніхто не бачить сліз."   | (2)

"Ой, вернуся, та, моя мати,
Як калина зацвіте,
Принесу я до твоєї хати      |
Сонце волі золоте!"          | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4252939_l1','pisniua_4252939','YouTube','https://www.youtube.com/watch?v=NsvnX7OsFwM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4252939_l2','pisniua_4252939','YouTube','https://www.youtube.com/watch?v=hbVqEjkOV24','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4252939_l3','pisniua_4252939','YouTube','https://www.youtube.com/watch?v=XtpYRQG8QNU','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_425338';
DELETE FROM song_versions WHERE song_id = 'pisniua_425338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_425338';
DELETE FROM songs WHERE id = 'pisniua_425338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_425338','В Стрийськім парку','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Знаю з 1970-х з дворового середовища.',NULL,'В Стрийськім парку ми ся здибали з тобов,
В моїм серці ся зашпортала любов,
Моє серце так калата
Як на вітрі тая шмата, -
В Стрийськім парку ми ся здибали з тобов.

Ти вважєй, моя кохана, ти вважєй -
В очі фарби дуже ти собі не ллєй,
Як ти фарба виїст очі, -
Хто тебе, сліпаку, схоче, -
Ти вважєй, моя кохана, ти вважєй.

Ти вважєй, моя кохана, ти вважєй -
На ходу ся до трамвая не чіплєй,
Бо ти трамвай вріже ногу
І потєгне на дорогу, -
Ти вважєй, моя кохана, ти вважєй.

Ти вважєй, моя кохана, ти вважєй -
На сусідського Івана не глядєй,
Бо як возьму того Йвана
І талапну до паркана, -
Ти вважєй, моя кохана, ти вважєй.','[''pisni.org.ua'', ''cat:halycki'', ''cat:zhartivlyvi'', ''Пісні з Галичини'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_425338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_425338','В Стрийськім парку','В Стрийськім парку ми ся здибали з тобов,
В моїм серці ся зашпортала любов,
Моє серце так калата
Як на вітрі тая шмата, -
В Стрийськім парку ми ся здибали з тобов.

Ти вважєй, моя кохана, ти вважєй -
В очі фарби дуже ти собі не ллєй,
Як ти фарба виїст очі, -
Хто тебе, сліпаку, схоче, -
Ти вважєй, моя кохана, ти вважєй.

Ти вважєй, моя кохана, ти вважєй -
На ходу ся до трамвая не чіплєй,
Бо ти трамвай вріже ногу
І потєгне на дорогу, -
Ти вважєй, моя кохана, ти вважєй.

Ти вважєй, моя кохана, ти вважєй -
На сусідського Івана не глядєй,
Бо як возьму того Йвана
І талапну до паркана, -
Ти вважєй, моя кохана, ти вважєй.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425338_l1','pisniua_425338','YouTube','https://www.youtube.com/watch?v=UEGZsWeOEEs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425338_l2','pisniua_425338','YouTube','https://www.youtube.com/watch?v=-CPjr9AtW7M','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425338_l3','pisniua_425338','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_425838';
DELETE FROM song_versions WHERE song_id = 'pisniua_425838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_425838';
DELETE FROM songs WHERE id = 'pisniua_425838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_425838','Він жив','Музика: Анатолій Сухий Слова: Анатолій Сухий. Виконує: Рутенія, Кость Єрофєєв','uk','ukraine_1991',NULL,NULL,'За аудіозаписом концерту в Москві частини гурту "Рутенія" 1988 (1989) року.','Виконує "Рутенія", Кость Єрофєєв. Ймовірно, що що авторів слід шукати в околі гурту "Рутенія", тобто Анатолій Сухий, Кость Єрофеєв тощо. * Слова цього куплету нерозбірливі, подано найприйнятніший варіант. ** Цю поезію Василя Стуса декламують.','Він жив... Він жив...
Він жив, тільки серце яріло,       |
Він жив, тільки кров гарячіла,     |(2)
Коли дзвін бив...                  |

Прийшли... Прийшли...
Прийшли його ангели штири,         |
Які його боронили,                 |
Які за нього молились,             |(2)
Коли він жив...                    |

Сказав... Сказав...
Сказав йому чорний ангел:          |
Ой ти, хлопче, молодий та ладний,  |(2)
Безталанний...                     |

Чуєш... Чуєш...
Чуєш: не слухають дзвону,          |
Бачиш: ламають ікони,              |(2)
Згинеш марно...*                   |

Сказав... Сказав...
Сказав йому білий ангел:           |
Ти був піснями багатий,            |(2)
Ти жив, не зраджував брата         |
В час розплати...                  |

Мовчав... Мовчав...
Мовчав синьоокий ангел,            |
Ружа черлена в''яла,                |(2)
Хор співав...                      |

Зело... Зело...
Зело, а скрипка тужила,
Зело, а кров стужавіла
На морозі...
Зело, тільки скрипка тужила,
Зело, тільки кров стужавіла
На морозі...

"Ярій, душе. Ярій, а не ридай!
У чорній стужі сонце України,
А ти шукай - червону тінь калини,
На чорних водах тінь її шукай.
Бо мало нас. Дрібнесенька щопта
Лише для молитов і сподівання.
Застерігає доля нас зарання,
Що калинова кров - така крута,
Така терпка, як кров у наших жилах.
У білій стужі білих голосінь
Ці грона болю, що падуть в глибінь,
Безсмертною бідою окошились."**

Хочеш зрозуміння,                  |
Хочеш - розбий об каміння          |(2)
Пісню цю.                          |','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_425838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_425838','Він жив','Він жив... Він жив...
Він жив, тільки серце яріло,       |
Він жив, тільки кров гарячіла,     |(2)
Коли дзвін бив...                  |

Прийшли... Прийшли...
Прийшли його ангели штири,         |
Які його боронили,                 |
Які за нього молились,             |(2)
Коли він жив...                    |

Сказав... Сказав...
Сказав йому чорний ангел:          |
Ой ти, хлопче, молодий та ладний,  |(2)
Безталанний...                     |

Чуєш... Чуєш...
Чуєш: не слухають дзвону,          |
Бачиш: ламають ікони,              |(2)
Згинеш марно...*                   |

Сказав... Сказав...
Сказав йому білий ангел:           |
Ти був піснями багатий,            |(2)
Ти жив, не зраджував брата         |
В час розплати...                  |

Мовчав... Мовчав...
Мовчав синьоокий ангел,            |
Ружа черлена в''яла,                |(2)
Хор співав...                      |

Зело... Зело...
Зело, а скрипка тужила,
Зело, а кров стужавіла
На морозі...
Зело, тільки скрипка тужила,
Зело, тільки кров стужавіла
На морозі...

"Ярій, душе. Ярій, а не ридай!
У чорній стужі сонце України,
А ти шукай - червону тінь калини,
На чорних водах тінь її шукай.
Бо мало нас. Дрібнесенька щопта
Лише для молитов і сподівання.
Застерігає доля нас зарання,
Що калинова кров - така крута,
Така терпка, як кров у наших жилах.
У білій стужі білих голосінь
Ці грона болю, що падуть в глибінь,
Безсмертною бідою окошились."**

Хочеш зрозуміння,                  |
Хочеш - розбий об каміння          |(2)
Пісню цю.                          |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425838_l1','pisniua_425838','YouTube','https://www.youtube.com/watch?v=MAFQh6pU_lQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425838_l2','pisniua_425838','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4259032';
DELETE FROM song_versions WHERE song_id = 'pisniua_4259032';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4259032';
DELETE FROM songs WHERE id = 'pisniua_4259032';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4259032','Рідних сердець тепло','Музика: Юрій Крохін Слова: Сергій Сірий. Виконує: Наталя Крохіна, Артем Крохін','uk','ukraine_1991',NULL,NULL,'Відеозапис','Виконує: Наталя та Артем Крохіни Альбом:','- Усміхнися, сину!
- Усміхнися, мамо!
Хай веселка-радість
Буде поміж нами.
Хоч надворі зимно
І вітри гуляють,
Та два рідних серця
Холоду не знають.

Приспів:
Рідних сердець тепло,
Як жаданий промінь сонця.
Рідних сердець тепло -
Крапля літа на долоньці.
Рідних сердець тепло,
Наче таїнство причастя.
Рідних сердець тепло -
Це найбільше в світі щастя.

- Мамо, я тривоги
Розділю з тобою.
Всі твої сльозинки
Стануть хай росою.
- Я тебе зігрію,
Сину, добрим словом.
Розпалю надію
Вогником любові.

Приспів.

- Дальнії дороги,
Сину, ждуть на тебе.
Ти полинеш в далі,
Мов у небо лебідь.
- Та в дорогах завжди
Буду відчувати
Я тепло серденька
Твого, рідна мати.

Приспів.

Рідних сердець тепло...
Рідних сердець тепло...

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4259032'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4259032','Рідних сердець тепло','- Усміхнися, сину!
- Усміхнися, мамо!
Хай веселка-радість
Буде поміж нами.
Хоч надворі зимно
І вітри гуляють,
Та два рідних серця
Холоду не знають.

Приспів:
Рідних сердець тепло,
Як жаданий промінь сонця.
Рідних сердець тепло -
Крапля літа на долоньці.
Рідних сердець тепло,
Наче таїнство причастя.
Рідних сердець тепло -
Це найбільше в світі щастя.

- Мамо, я тривоги
Розділю з тобою.
Всі твої сльозинки
Стануть хай росою.
- Я тебе зігрію,
Сину, добрим словом.
Розпалю надію
Вогником любові.

Приспів.

- Дальнії дороги,
Сину, ждуть на тебе.
Ти полинеш в далі,
Мов у небо лебідь.
- Та в дорогах завжди
Буду відчувати
Я тепло серденька
Твого, рідна мати.

Приспів.

Рідних сердець тепло...
Рідних сердець тепло...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4259032_l1','pisniua_4259032','YouTube','https://www.youtube.com/watch?v=PE5w7Z4xfUs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4258736';
DELETE FROM song_versions WHERE song_id = 'pisniua_4258736';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4258736';
DELETE FROM songs WHERE id = 'pisniua_4258736';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4258736','Морозець, морозець','Музика: Г. Фільц Слова: Григорій Бойко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Морозець, морозець
Пощипав нам щічки.
Теплі валянки у нас,
Шубки й рукавички.
Теплі валянки у нас,
Шубки й рукавички.

Морозець, морозець
Плещимо в долоні.
У дівчаток і хлоп''яток
Носики червоні.
У дівчаток і хлоп''яток
Носики червоні.

Морозець, морозець
Пощипав нам щічки.
Теплі валянки у нас,
Шубки й рукавички.
Теплі валянки у нас,
Шубки й рукавички','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4258736'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4258736','Морозець, морозець','Морозець, морозець
Пощипав нам щічки.
Теплі валянки у нас,
Шубки й рукавички.
Теплі валянки у нас,
Шубки й рукавички.

Морозець, морозець
Плещимо в долоні.
У дівчаток і хлоп''яток
Носики червоні.
У дівчаток і хлоп''яток
Носики червоні.

Морозець, морозець
Пощипав нам щічки.
Теплі валянки у нас,
Шубки й рукавички.
Теплі валянки у нас,
Шубки й рукавички');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4258736_l1','pisniua_4258736','YouTube','https://www.youtube.com/watch?v=f43Qm9T3grs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4258736_l2','pisniua_4258736','YouTube','https://www.youtube.com/watch?v=v1ZA6kmX7Uo','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4259735';
DELETE FROM song_versions WHERE song_id = 'pisniua_4259735';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4259735';
DELETE FROM songs WHERE id = 'pisniua_4259735';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4259735','У темному лісі','Слова: невідомий. Виконує: Криївка, тріо','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,NULL,'У темному лісі,
Як голуби в стрісі,
В криївці кохались вони.
Таємне вінчання               |
В суботоньку зрання           |
Відбулося у восени.           | (2)

Та раптом крики:
Прийшов ворог дикий —
Криївку сектант показав.
Кричать людожери:             |
"Здавайтесь, "бандери",       |
Для вас час останній настав!" | (2)

Молились Богу,
Збирались в дорогу —
Остані цілунки в сльозах:
"Стріляй, Василеньку,         |
Стріляй у серденько,          |
Не буду рабинею я".           | (2)

Свою Україну
І вірну дружину
У серці навіки зберіг,
Та свого кохання,             |
На муки, знущання             |
Віддати катам він не зміг.    | (2)

В неділеньку вранці
Сходились повстанці,
З під ніг аж тремтіла земля.
Ридали там дзвони —           |
Ішли похорони                 |
Коханочки і Василя.           | (2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4259735'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4259735','У темному лісі','У темному лісі,
Як голуби в стрісі,
В криївці кохались вони.
Таємне вінчання               |
В суботоньку зрання           |
Відбулося у восени.           | (2)

Та раптом крики:
Прийшов ворог дикий —
Криївку сектант показав.
Кричать людожери:             |
"Здавайтесь, "бандери",       |
Для вас час останній настав!" | (2)

Молились Богу,
Збирались в дорогу —
Остані цілунки в сльозах:
"Стріляй, Василеньку,         |
Стріляй у серденько,          |
Не буду рабинею я".           | (2)

Свою Україну
І вірну дружину
У серці навіки зберіг,
Та свого кохання,             |
На муки, знущання             |
Віддати катам він не зміг.    | (2)

В неділеньку вранці
Сходились повстанці,
З під ніг аж тремтіла земля.
Ридали там дзвони —           |
Ішли похорони                 |
Коханочки і Василя.           | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4259735_l1','pisniua_4259735','YouTube','https://www.youtube.com/watch?v=7uWxmbwlbxk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4258539';
DELETE FROM song_versions WHERE song_id = 'pisniua_4258539';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4258539';
DELETE FROM songs WHERE id = 'pisniua_4258539';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4258539','Романс','(Не говори, не говори...). Музика: Анатолій Кульчицький Слова: Микола Вінграновський','uk','ukraine_1991',NULL,NULL,'А. Кульчицький. 212 світанків... Біла Церква, 2011 р.',NULL,'Не говори, не говори
Про світанковий яр,
Там сплять прощання явори
Під вибухами хмар.
Бродили щастям дні мої
З тобою у маю,
І на багнети солов''їв
Я кинув юнь твою.

Я плескав небо мрій своїх
На твій дівочий шлях...
І жаль мені, що я не міг
Спалить тебе в полях.
Не говори, не говори
Про світанковий рай,
Там сплять прощання явори
Під вибухами хмар...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4258539'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4258539','Романс','Не говори, не говори
Про світанковий яр,
Там сплять прощання явори
Під вибухами хмар.
Бродили щастям дні мої
З тобою у маю,
І на багнети солов''їв
Я кинув юнь твою.

Я плескав небо мрій своїх
На твій дівочий шлях...
І жаль мені, що я не міг
Спалить тебе в полях.
Не говори, не говори
Про світанковий рай,
Там сплять прощання явори
Під вибухами хмар...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4258539_l1','pisniua_4258539','YouTube','https://www.youtube.com/watch?v=CZJ9uMNH29E','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4258539_l2','pisniua_4258539','YouTube','https://www.youtube.com/watch?v=rgEszT0ELGw','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4258539_l3','pisniua_4258539','YouTube','https://www.youtube.com/watch?v=qpCfSPexkFU','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_425930';
DELETE FROM song_versions WHERE song_id = 'pisniua_425930';
DELETE FROM songs_fts WHERE song_id = 'pisniua_425930';
DELETE FROM songs WHERE id = 'pisniua_425930';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_425930','Ой верше, мій верше','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'З пам''яті за емігрантськими аудіозаписами 70-х років ХХ ст.',NULL,'Ой верше, мій верше,
Мій зелений верше...
Юж мі так не буде,   |
Юж мі так не буде,   | (2)
Як мі било перше.    |

А перше мі било,
Бардз мі добре било.
Од своєй мамічки,    |
Од своєй мамічки     | (2)
Не ходити било.      |

Не ходити било
Горами, лісами,
Не любити хлопця,    |
Не любити хлопця     | (2)
З чорними очами.     |

Не ходити било
В чужую країну.
Не лишати било,      |
Не лишати било       | (2)
Рідну Лемковщину.    |

Рідну Лемковщину,
Зелені Карпати, -
Як собі подумаш,     |
Як собі подумаш,     | (2)
Мушу заплакати.      |','[''pisni.org.ua'', ''cat:43'', ''cat:emigration'', ''cat:lemkivski'', ''Еміґрантські пісні'', ''Пісні про еміґрацію'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_425930'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_425930','Ой верше, мій верше','Ой верше, мій верше,
Мій зелений верше...
Юж мі так не буде,   |
Юж мі так не буде,   | (2)
Як мі било перше.    |

А перше мі било,
Бардз мі добре било.
Од своєй мамічки,    |
Од своєй мамічки     | (2)
Не ходити било.      |

Не ходити било
Горами, лісами,
Не любити хлопця,    |
Не любити хлопця     | (2)
З чорними очами.     |

Не ходити било
В чужую країну.
Не лишати било,      |
Не лишати било       | (2)
Рідну Лемковщину.    |

Рідну Лемковщину,
Зелені Карпати, -
Як собі подумаш,     |
Як собі подумаш,     | (2)
Мушу заплакати.      |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_425930_l1','pisniua_425930','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_426083';
DELETE FROM song_versions WHERE song_id = 'pisniua_426083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_426083';
DELETE FROM songs WHERE id = 'pisniua_426083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_426083','Вовки в лісі','Музика: Анатолій Сухий Слова: Анатолій Сухий. Виконує: Рутенія, Кость Єрофєєв','uk','ukraine_1991',NULL,NULL,'За аудіозаписом концерту частини гурту "Рутенія" в Москві 1988(89) року.','Виконують: гурт "Рутенія", Кость Єрофєєв. Автори пісні, ймовірно, в середовищі тодішнього гурту "Рутенія" (Анатолій Сухий, Кость Єрофєєв).','Вовки в лісі, вовки в лісі
Чатують в долині,
Вовки в лісі, вовки в лісі
Чекають години,
Їх стріляли з вертольотів,
Ставили капкани, -
Заривалися у нори
Кляті вовцюгани...

Вовки в лісі, вовки в лісі -
Жиє вовча мати,
Не змогли її убити -
Ростуть вовченята.
Ти не посадиш їх на цеп,
Ти не примусиш їх лизати п''яти,
Ти не примусиш їх
Свій сон охороняти.

Вовки в лісі, вовки в лісі -
Бійся, чоловіче,
Повсідали біля ватри -
Радять вовче віче.
Ватр наклали сі вівчари,
Що біля кошари,
Вчора були вовчі дружби,
Нині вже - на службі.

Вовки в лісі, вовки в лісі -
Бійся, чоловіче,
Повсідали біля ватри -
Чинять своє віче.
І від вовчої трембіти
Затремтять Карпати
На густих ялинах снігу
В роках сорок п''ятих!

Вовки в лісі, вовки в лісі -
Жиє вовча мати,
Не змогли її убити -
Ростуть вовченята.
Ти не посадиш нас на цеп,        |
Ти не примусиш нас лизати п''яти, |(2)
Ти не примусиш нас               |
Свій сон охороняти.              |

Стережися, чоловічку,
Не ходи в ліс по гриби,
Стережися, чоловічку, -
В лісі вільні вовки.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:istorychni'', ''Бардівські пісні'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_426083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_426083','Вовки в лісі','Вовки в лісі, вовки в лісі
Чатують в долині,
Вовки в лісі, вовки в лісі
Чекають години,
Їх стріляли з вертольотів,
Ставили капкани, -
Заривалися у нори
Кляті вовцюгани...

Вовки в лісі, вовки в лісі -
Жиє вовча мати,
Не змогли її убити -
Ростуть вовченята.
Ти не посадиш їх на цеп,
Ти не примусиш їх лизати п''яти,
Ти не примусиш їх
Свій сон охороняти.

Вовки в лісі, вовки в лісі -
Бійся, чоловіче,
Повсідали біля ватри -
Радять вовче віче.
Ватр наклали сі вівчари,
Що біля кошари,
Вчора були вовчі дружби,
Нині вже - на службі.

Вовки в лісі, вовки в лісі -
Бійся, чоловіче,
Повсідали біля ватри -
Чинять своє віче.
І від вовчої трембіти
Затремтять Карпати
На густих ялинах снігу
В роках сорок п''ятих!

Вовки в лісі, вовки в лісі -
Жиє вовча мати,
Не змогли її убити -
Ростуть вовченята.
Ти не посадиш нас на цеп,        |
Ти не примусиш нас лизати п''яти, |(2)
Ти не примусиш нас               |
Свій сон охороняти.              |

Стережися, чоловічку,
Не ходи в ліс по гриби,
Стережися, чоловічку, -
В лісі вільні вовки.');
DELETE FROM song_links WHERE song_id = 'pisniua_4265032';
DELETE FROM song_versions WHERE song_id = 'pisniua_4265032';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4265032';
DELETE FROM songs WHERE id = 'pisniua_4265032';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4265032','Еротичний етюд','Музика: Володимир Шинкарук Слова: Володимир Шинкарук. Виконує: Володимир Шинкарук','uk','ukraine_1991',NULL,'2013','Інформаційний бюлетень ІКААПУ Інформ №18 (244) 2013 рік',NULL,'Згадую день цей серпневий без смутку,
Радісне сонце і пахощі трав.
Спочатку тихенько я зняв з неї куртку.
А потім і блузку упевнено зняв.

Ну а вона не пручалась нітрохи,
Я не відчував за собою вини,
І швидко, і вправно зняв з неї панчохи,
А перед цим стяг із неї штани.

Я й далі настирно робив своє діло.
Блистіли на лобі краплинки роси...
Вона аж хитнулась, вона затремтіла, -
На ній залишалися тільки труси.

Я вірив, я знав, що зумію, що зможу!
Про це я в дитинстві читав у книжках...
Ще мить, ще секунда, і... Господи Боже!
Труси вже в моїх опинились руках!

А літо щасливе буяло довкола,
Я, мабуть, не знав красивішого дня.
Вона залишилася ну зовсім вже гола -
Мотузка, де зранку сушилось прання...','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4265032'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4265032','Еротичний етюд','Згадую день цей серпневий без смутку,
Радісне сонце і пахощі трав.
Спочатку тихенько я зняв з неї куртку.
А потім і блузку упевнено зняв.

Ну а вона не пручалась нітрохи,
Я не відчував за собою вини,
І швидко, і вправно зняв з неї панчохи,
А перед цим стяг із неї штани.

Я й далі настирно робив своє діло.
Блистіли на лобі краплинки роси...
Вона аж хитнулась, вона затремтіла, -
На ній залишалися тільки труси.

Я вірив, я знав, що зумію, що зможу!
Про це я в дитинстві читав у книжках...
Ще мить, ще секунда, і... Господи Боже!
Труси вже в моїх опинились руках!

А літо щасливе буяло довкола,
Я, мабуть, не знав красивішого дня.
Вона залишилася ну зовсім вже гола -
Мотузка, де зранку сушилось прання...');
DELETE FROM song_links WHERE song_id = 'pisniua_4266838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4266838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4266838';
DELETE FROM songs WHERE id = 'pisniua_4266838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4266838','Чумацький шлях','Музика: Олександр Білодуб Слова: Олександр Білодуб. Виконує: Олександр Білодуб','uk','ukraine_1991',NULL,'1995','надав Микола Рудаков','Джерело: "Журналіст України" №7-8, 1995 рік.','Сміються очі,
Шаблі наточим,
Вдарим по вітрах.

Приспів:
Наша дорога,
Наша дорога -
То чумацький шлях.

Чайки по хвилях,
Лет соколиний,
Полум''я в очах!

Приспів.

Через пороги
До перемоги,
Воля народу, як птах!

Приспів.

Серце над нами,
Б''ють барабани,
Вільна Вкраїна в віках!

Приспів','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4266838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4266838','Чумацький шлях','Сміються очі,
Шаблі наточим,
Вдарим по вітрах.

Приспів:
Наша дорога,
Наша дорога -
То чумацький шлях.

Чайки по хвилях,
Лет соколиний,
Полум''я в очах!

Приспів.

Через пороги
До перемоги,
Воля народу, як птах!

Приспів.

Серце над нами,
Б''ють барабани,
Вільна Вкраїна в віках!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_4259436';
DELETE FROM song_versions WHERE song_id = 'pisniua_4259436';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4259436';
DELETE FROM songs WHERE id = 'pisniua_4259436';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4259436','Мамине сонечко','Музика: Олена Бєрая Слова: Олена Бєрая. Виконує: Валерія Одарченко','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Хочу заспівати про себе вам я,
Яка чудова родина моя -
Тато і мама, бабуся, дідусь,
Щасливі ми разом і я цим горжусь!

Приспів:
Мамині очі - добріше нема,
Бабусин пиріг - смачніше нема,
Татові руки - сильніше нема,
Казки дідуся - чекаю їх я!
Бабусине сонечко,
Я - мамина донечка,
Я - тата надія
І цьому радію.
Дідусине сонечко,
Я - мамина донечка,
Я - тата надія
І цьому радію!

Все робимо разом,
Працюєм, співаєм,
Я їм завжди допомогаю,
Родини моєї краще немає!
Я дуже їх люблю,
Це точно я знаю.

Приспів.

Бабусине сонечко
І мамина донечка,
І тата надія,
І цьому радію.

Бабусине сонечко,
Я - мамина донечка,
Я - тата надія
І цьому радію.
Дідусине сонечко,
Я - мамина донечка,
Я - тата надія
І цьому радію!

Моя родина - найкраща в світі
І я її дуже люблю!','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4259436'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4259436','Мамине сонечко','Хочу заспівати про себе вам я,
Яка чудова родина моя -
Тато і мама, бабуся, дідусь,
Щасливі ми разом і я цим горжусь!

Приспів:
Мамині очі - добріше нема,
Бабусин пиріг - смачніше нема,
Татові руки - сильніше нема,
Казки дідуся - чекаю їх я!
Бабусине сонечко,
Я - мамина донечка,
Я - тата надія
І цьому радію.
Дідусине сонечко,
Я - мамина донечка,
Я - тата надія
І цьому радію!

Все робимо разом,
Працюєм, співаєм,
Я їм завжди допомогаю,
Родини моєї краще немає!
Я дуже їх люблю,
Це точно я знаю.

Приспів.

Бабусине сонечко
І мамина донечка,
І тата надія,
І цьому радію.

Бабусине сонечко,
Я - мамина донечка,
Я - тата надія
І цьому радію.
Дідусине сонечко,
Я - мамина донечка,
Я - тата надія
І цьому радію!

Моя родина - найкраща в світі
І я її дуже люблю!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4259436_l1','pisniua_4259436','YouTube','https://www.youtube.com/watch?v=KE_HSj2BzZM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4259436_l2','pisniua_4259436','YouTube','https://www.youtube.com/watch?v=Ts-RGs6DO9Y','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4259436_l3','pisniua_4259436','YouTube','https://www.youtube.com/watch?v=-c4348Owo4o','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4259436_l4','pisniua_4259436','YouTube','https://www.youtube.com/watch?v=Ok_fuyb-bmI','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4259436_l5','pisniua_4259436','YouTube','https://www.youtube.com/watch?v=eXDIyi2mGeA','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4259436_l6','pisniua_4259436','YouTube','https://www.youtube.com/watch?v=hDSHDtmvHZg','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4259436_l7','pisniua_4259436','YouTube','https://www.youtube.com/watch?v=9jFykMKJw04','video',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_426434';
DELETE FROM song_versions WHERE song_id = 'pisniua_426434';
DELETE FROM songs_fts WHERE song_id = 'pisniua_426434';
DELETE FROM songs WHERE id = 'pisniua_426434';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_426434','Ой ти, дівчино, з горіха зерня','Музика: Анатолій Кос-Анатольський Слова: Іван Франко. Виконує: Дмитро Гнатюк, Анатолій Солов''яненко, Мар''ян Шуневич, Рушничок, Богдан Косопуд, Дударик, Павло Кармалюк, Леонід Сергієнко, Володимир Гришко','uk','ukraine_before_1917',NULL,'1895','Текст за збіркою поезій І.Франка "Зів''яле листя": http://www.internetri.net/vv/ivan_franko/ziviale_lystia/v14.shtml','вірш написано у 1895 році Dsus2/A# [X10230] Dsus2/H [X20230] Акорди надав: yarokon','Ой ти, дівчино, з горіха зерня,
Чом твоє серденько - колюче терня?
Чом твої устонька - тиха молитва,
Dsus2/A#  Dsus2/H   E7
А твоє слово     остре, як бритва?
Чом твої очі сяють тим чаром,
Що то запалює серце пожаром?
Ох, тії очі темніші ночі,
Хто в них задивиться, й сонця не хоче!
І чом твій усміх - для мене скрута,
Серце бентежить, як буря люта?
Ой ти, дівчино, ясная зоре!
Ти мої радощі, ти моє горе!
Ой ти, дівчино, з горіха зерня,
Чом твоє серденько - колюче терня?
Тебе видаючи, любити мушу,
Тебе кохаючи, загублю душу.
Ти моя радість, ти моє горе!
Ой ти, дівчино, ясная зоре!','[''pisni.org.ua'', ''cat:lirychni'', ''cat:romansy'', ''Пісні про кохання, ліричні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_426434'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_426434','Ой ти, дівчино, з горіха зерня','Ой ти, дівчино, з горіха зерня,
Чом твоє серденько - колюче терня?
Чом твої устонька - тиха молитва,
Dsus2/A#  Dsus2/H   E7
А твоє слово     остре, як бритва?
Чом твої очі сяють тим чаром,
Що то запалює серце пожаром?
Ох, тії очі темніші ночі,
Хто в них задивиться, й сонця не хоче!
І чом твій усміх - для мене скрута,
Серце бентежить, як буря люта?
Ой ти, дівчино, ясная зоре!
Ти мої радощі, ти моє горе!
Ой ти, дівчино, з горіха зерня,
Чом твоє серденько - колюче терня?
Тебе видаючи, любити мушу,
Тебе кохаючи, загублю душу.
Ти моя радість, ти моє горе!
Ой ти, дівчино, ясная зоре!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_426434_l1','pisniua_426434','YouTube','https://www.youtube.com/watch?v=Tn4Ud-WjcbE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_426434_l2','pisniua_426434','YouTube','https://www.youtube.com/watch?v=nKvKjG55ENU','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_426434_l3','pisniua_426434','YouTube','https://www.youtube.com/watch?v=1iZJHy24iSE','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_426434_l4','pisniua_426434','YouTube','https://www.youtube.com/watch?v=q-OEgKLpffg','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_426434_l5','pisniua_426434','YouTube','https://www.youtube.com/watch?v=W6bw4GtQH1o','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_4265232';
DELETE FROM song_versions WHERE song_id = 'pisniua_4265232';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4265232';
DELETE FROM songs WHERE id = 'pisniua_4265232';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4265232','Здрастуй, школо!','Слова: Зоя Солярик. Виконує: Зоя Солярик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ось і літо скінчилось:
Здрастуй, школо і клас.
Здрастуй, вчителько рідна,
Що добру вчила нас.
Знову сядем за парти,
Знову буде урок.
Будуть друзі і жарти
І веселий дзвінок.

Приспів:
Школо, рідна школо,
Дружная сім ''я.
Це життя ніколи
Не забуду я.

Теореми, задачі,
Неозначений час.
Ще зрадіє й заплаче,
Мабуть, кожен із нас.
Ще кохання не винне
Нам серця обпече:
Гострий погляд - у спину
І надійне плече.

Приспів.

До шкільної оселі
Зайде радість і сміх.
І турніри веселі
Ще запросять усіх.
А походи далекі
І життєві мости
Доведуть, що нелегко
Вірних друзів знайти.

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4265232'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4265232','Здрастуй, школо!','Ось і літо скінчилось:
Здрастуй, школо і клас.
Здрастуй, вчителько рідна,
Що добру вчила нас.
Знову сядем за парти,
Знову буде урок.
Будуть друзі і жарти
І веселий дзвінок.

Приспів:
Школо, рідна школо,
Дружная сім ''я.
Це життя ніколи
Не забуду я.

Теореми, задачі,
Неозначений час.
Ще зрадіє й заплаче,
Мабуть, кожен із нас.
Ще кохання не винне
Нам серця обпече:
Гострий погляд - у спину
І надійне плече.

Приспів.

До шкільної оселі
Зайде радість і сміх.
І турніри веселі
Ще запросять усіх.
А походи далекі
І життєві мости
Доведуть, що нелегко
Вірних друзів знайти.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_426931';
DELETE FROM song_versions WHERE song_id = 'pisniua_426931';
DELETE FROM songs_fts WHERE song_id = 'pisniua_426931';
DELETE FROM songs WHERE id = 'pisniua_426931';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_426931','Підпільник Кіндрат','Музика: Андрій Миколайчук Слова: Андрій Миколайчук. Виконує: Андрій Миколайчук','uk','ukraine_before_1917',NULL,NULL,'Аудіо-альбом "Андрій Миколайчук. "Піду втоплюся"','Текст і акорди записано на слух з аудіо. Тональність оригінальна. * Тут за другим разом на останній рядок приспіву є перехід на 2 півтони вгору, і тоді пісня до кінця виконується у тональності "Hm". Підбір акордів: bohdanko (www.pisni.org.ua)','Передмова:
Тим, хто в важкі буремні роки
боротись не переставав,
хто у підпіллі гнав горілку
і добрим людям наливав.

Вступ:  Am C | G Am  (2)

У буремні роки він зброї не склав,
за свободу й щастя удари прийняв,
небезпеці в очі мужньо дивись,
палачам проклятим не коривсь.

Поважав Кіндрата старий й молодий,
бо ж на допомогу приходив завжди.
Він свому народу вірно служив.
І героя люд простий любив.

Приспів:
Підпільник Кіндрат... Підпільник Кіндрат  |
в надійному місці сховав автомат...       |
Підпільник Кіндрат... Підпільник Кіндрат  |
в надійному місці сховав автомат...       |
...самогонний      агрегат.  | (2)

Однієї днин по його прийшли,
у підвалі хутко припаси знайшли...
Зрадник постарався... Серце болить!
Люди, без Кіндрата нам не жить!

Хто тепер налиє пляшку чи дві?
Хто посеред ночі вийде надвір?
Привітає чемно мужній Кіндрат,
істинно народний депутат!

Приспів. *

У буремні роки він зброї не склав,
за свободу й щастя удари прийняв.
Йдуть до школи діти: "Кіндрату - салют!"
Як із школи підуть, то зайдуть.

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_426931'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_426931','Підпільник Кіндрат','Передмова:
Тим, хто в важкі буремні роки
боротись не переставав,
хто у підпіллі гнав горілку
і добрим людям наливав.

Вступ:  Am C | G Am  (2)

У буремні роки він зброї не склав,
за свободу й щастя удари прийняв,
небезпеці в очі мужньо дивись,
палачам проклятим не коривсь.

Поважав Кіндрата старий й молодий,
бо ж на допомогу приходив завжди.
Він свому народу вірно служив.
І героя люд простий любив.

Приспів:
Підпільник Кіндрат... Підпільник Кіндрат  |
в надійному місці сховав автомат...       |
Підпільник Кіндрат... Підпільник Кіндрат  |
в надійному місці сховав автомат...       |
...самогонний      агрегат.  | (2)

Однієї днин по його прийшли,
у підвалі хутко припаси знайшли...
Зрадник постарався... Серце болить!
Люди, без Кіндрата нам не жить!

Хто тепер налиє пляшку чи дві?
Хто посеред ночі вийде надвір?
Привітає чемно мужній Кіндрат,
істинно народний депутат!

Приспів. *

У буремні роки він зброї не склав,
за свободу й щастя удари прийняв.
Йдуть до школи діти: "Кіндрату - салют!"
Як із школи підуть, то зайдуть.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_426931_l1','pisniua_426931','YouTube','https://www.youtube.com/watch?v=FqvOe56Asgk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_426931_l2','pisniua_426931','YouTube','https://www.youtube.com/watch?v=p6D60UFrM64','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_426931_l3','pisniua_426931','YouTube','https://www.youtube.com/watch?v=4clgRfypsO0','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_426931_l4','pisniua_426931','YouTube','https://www.youtube.com/watch?v=s3hmHb6RjCg','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_42685';
DELETE FROM song_versions WHERE song_id = 'pisniua_42685';
DELETE FROM songs_fts WHERE song_id = 'pisniua_42685';
DELETE FROM songs WHERE id = 'pisniua_42685';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_42685','Усміхнися мені','Музика: Володимир Шабашевич Слова: Вадим Крищенко. Виконує: Назарій Яремчук, Андрій Кравчук, Павло Мрежук','uk','ukraine_before_1917',NULL,NULL,'www.yaremchuk.cv.ua','TODO: вичитати!','Усміхнися мені,
Хай розвіються наші печалі.
Усміхнися мені,
Хай не з''єднує брови жура.
І побачу в очах
Чебрецями заквітчані далі
І веселку живу,
Що п''є воду із плеса Дніпра.

Часто погляд німий
Більше скаже для серця ніж слово
Лише чути зумій,
Як співають безмовні уста.
Усміхнися мені
Незрадливо отак волошково -
І на крилах надій
Нас до себе здійме висота.

Усміхнися мені,
Подаруй промінець золотистий.
Блиску щирих зіниць,
І надійного серця привіт.
Щоб побачили ми
Не багрянець в пожовклому листі,
А найпершу весну,
Що любов''ю заквітчує світ.

Усміхнися мені
Усміхнися мені...','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_42685'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_42685','Усміхнися мені','Усміхнися мені,
Хай розвіються наші печалі.
Усміхнися мені,
Хай не з''єднує брови жура.
І побачу в очах
Чебрецями заквітчані далі
І веселку живу,
Що п''є воду із плеса Дніпра.

Часто погляд німий
Більше скаже для серця ніж слово
Лише чути зумій,
Як співають безмовні уста.
Усміхнися мені
Незрадливо отак волошково -
І на крилах надій
Нас до себе здійме висота.

Усміхнися мені,
Подаруй промінець золотистий.
Блиску щирих зіниць,
І надійного серця привіт.
Щоб побачили ми
Не багрянець в пожовклому листі,
А найпершу весну,
Що любов''ю заквітчує світ.

Усміхнися мені
Усміхнися мені...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_42685_l1','pisniua_42685','YouTube','https://www.youtube.com/watch?v=j8egByWYD0o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_42685_l2','pisniua_42685','YouTube','https://www.youtube.com/watch?v=J9uSoiCU2o0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_42685_l3','pisniua_42685','YouTube','https://www.youtube.com/watch?v=ddE9DDK4quI','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_426838';
DELETE FROM song_versions WHERE song_id = 'pisniua_426838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_426838';
DELETE FROM songs WHERE id = 'pisniua_426838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_426838','В Загорові на горі','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'Літопис УПА. 1996-1997.- Т.25: Пісні УПА.- с. 85','Пісня про бій біля с. Загорів Локачівського р-ну Волинської обл. - один з найвідоміших героїчних боїв УПА. Детальніше про це: http://www.pisni.org.ua/arview.php?type=cl&id=29 Посилання на першоджерело: "Саник", ЛітУПА 12: 94; Шморгун ст. 109 (як у ЛітУПА). * Тут у текстовому джерелі: "в Заговорі блищать танки". Очевидно, це помилка друку. Виправлено на "в Загорові блищать танки".','В Загорові на горі,
У старім манастирі,
У неділю, рано-вранці,
Там молилися повстанці.

"Благослови, Божа Мати,
На ворогів міцно стати,
Боронити Україну
По лицарськи - до загину."

"Борітеся, мої діти,
Бідну землю бороніте,
За прикладом мого Сина
Встане з мертвих Україна."

В понеділок, на світанку,
В Загорові блищать танки, *
Гудуть авта й літаки -
Облягають німаки.

"Друзі, алярм, гей вставайте,
Манастиря не давайте,
Бороніте Україну."
"Здобудемо або згинем!.."

Стало дніти у вівторок -
"Їх тисячі, а нас сорок..."
Налягяють німаки -
Не даються козаки.

Той ранений вже в четверте,
Одмагається від смерти, -
"Зажди, смерте, хоч хвилину -
Ще зіб''ю з одну машину."

Той під розп''яттям конає
І на Христа поглядає:
"Ти за нас вмер, Божий Сину,
І ми гинем за Вкраїну."

Стало в середу смеркаться -
Залишилось вісімнадцять.
З полеглими попрощались...
Крізь ворожий стрій прорвались.

В ЗагоровІ, на горі,
Спочивають лицарі.
Хрест високий в головах:
"Полягло тут 22"...

Спіть спокійно, друзі милі,
У високій цій могилі...
Пімстимо смерть і руїну,
Здвигнем з мертвих Україну.    Мелодія для 1 голосу','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_426838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_426838','В Загорові на горі','В Загорові на горі,
У старім манастирі,
У неділю, рано-вранці,
Там молилися повстанці.

"Благослови, Божа Мати,
На ворогів міцно стати,
Боронити Україну
По лицарськи - до загину."

"Борітеся, мої діти,
Бідну землю бороніте,
За прикладом мого Сина
Встане з мертвих Україна."

В понеділок, на світанку,
В Загорові блищать танки, *
Гудуть авта й літаки -
Облягають німаки.

"Друзі, алярм, гей вставайте,
Манастиря не давайте,
Бороніте Україну."
"Здобудемо або згинем!.."

Стало дніти у вівторок -
"Їх тисячі, а нас сорок..."
Налягяють німаки -
Не даються козаки.

Той ранений вже в четверте,
Одмагається від смерти, -
"Зажди, смерте, хоч хвилину -
Ще зіб''ю з одну машину."

Той під розп''яттям конає
І на Христа поглядає:
"Ти за нас вмер, Божий Сину,
І ми гинем за Вкраїну."

Стало в середу смеркаться -
Залишилось вісімнадцять.
З полеглими попрощались...
Крізь ворожий стрій прорвались.

В ЗагоровІ, на горі,
Спочивають лицарі.
Хрест високий в головах:
"Полягло тут 22"...

Спіть спокійно, друзі милі,
У високій цій могилі...
Пімстимо смерть і руїну,
Здвигнем з мертвих Україну.    Мелодія для 1 голосу');
DELETE FROM song_links WHERE song_id = 'pisniua_4266034';
DELETE FROM song_versions WHERE song_id = 'pisniua_4266034';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4266034';
DELETE FROM songs WHERE id = 'pisniua_4266034';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4266034','Мій дідусь','Музика: Олександр Албул Слова: Зеновій Филипчук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мій дідусь, мій золотенький,
Наче сонце в небі.
Мій дідусь такий гарненький, |
Наче білий лебідь.           | (2)

Мій дідусь щодня зі мною
На дворі гуляє,
Мій дідусь щодня зі мною     |
Казочки читає.               | (2)

Мій дідусь несе додому
Мрії найдорожчі,
Дідуся не дам нікому         |
За ніякі гроші.              | (2)

Мій дідусь мене словами
Мудрості навчає,
Поки Бог керує нами          |
Все людина має.              | (2)','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4266034'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4266034','Мій дідусь','Мій дідусь, мій золотенький,
Наче сонце в небі.
Мій дідусь такий гарненький, |
Наче білий лебідь.           | (2)

Мій дідусь щодня зі мною
На дворі гуляє,
Мій дідусь щодня зі мною     |
Казочки читає.               | (2)

Мій дідусь несе додому
Мрії найдорожчі,
Дідуся не дам нікому         |
За ніякі гроші.              | (2)

Мій дідусь мене словами
Мудрості навчає,
Поки Бог керує нами          |
Все людина має.              | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4266034_l1','pisniua_4266034','YouTube','https://www.youtube.com/watch?v=WQ_OZu4j_UQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4269236';
DELETE FROM song_versions WHERE song_id = 'pisniua_4269236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4269236';
DELETE FROM songs WHERE id = 'pisniua_4269236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4269236','Селянський вальс','Музика: Платон Майборода Слова: Андрій Малишко','uk','ukr_ssr_1919_1991',NULL,'1975','Пісні до свят. Муз. Укр. - К. - 1975 рік.',NULL,'Де синь стоїть над краєм,
Де в росах далина, -
Ізнов шумить врожаєм
Селянська сторона.

Люба, нам з тобою врожаю моря,      |
Тихо в надвечір''ї нам світить зоря. |
І ляже щедра осінь                  |
На степовий кришталь,               |
Де золоте колосся                   |
Біжить в далеку даль.               | (2)

І за столи кленові
Ми сядемо вночі, -
Дівчата чорноброві
І хлопці-сіячі.

Люба,нам з тобою врожаю моря,       |
Тихо в надвечір''ї нам світить зоря, |
Щоб на селянськім святі             |
Нам заспівати знов                  |
Про наші дні крилаті,               |
І дружбу, і любов.                  | (2)','[''pisni.org.ua'', ''cat:all-ukraine'', ''cat:socialno-pobutovi'', ''Загальноукраїнські пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4269236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4269236','Селянський вальс','Де синь стоїть над краєм,
Де в росах далина, -
Ізнов шумить врожаєм
Селянська сторона.

Люба, нам з тобою врожаю моря,      |
Тихо в надвечір''ї нам світить зоря. |
І ляже щедра осінь                  |
На степовий кришталь,               |
Де золоте колосся                   |
Біжить в далеку даль.               | (2)

І за столи кленові
Ми сядемо вночі, -
Дівчата чорноброві
І хлопці-сіячі.

Люба,нам з тобою врожаю моря,       |
Тихо в надвечір''ї нам світить зоря, |
Щоб на селянськім святі             |
Нам заспівати знов                  |
Про наші дні крилаті,               |
І дружбу, і любов.                  | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4268481';
DELETE FROM song_versions WHERE song_id = 'pisniua_4268481';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4268481';
DELETE FROM songs WHERE id = 'pisniua_4268481';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4268481','У Києві на риночку','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'"У Києві на риночку", один листок/партитура видана Борисом Тищенком, Відень (1939-1945).','Маршова пісня. Marciale / Ходою.','У Києві на риночку,
Там пив чумак горілочку.
Пропив воли, пропив вози,   |
Пропив ярма ще й занози,    |
Все чумацькеє добро.        | (2)

Прокинувся чумак вранці
Та й полапав у гаманці:
Всі кишені вивертає,        |
Аж там гроший вже чорт має, |
Нічим похмелитися.          | (2)

Ой, пішов би я додому,
Та боюся поговору, —
Будуть бити ще й ганити,    |
Та заставлять ще й косити,  |
А я козак нездоров.         | (2)

Ой, піду я у Молдаву
Та сім років погорюю,
Та сім літ я погорюю,       |
Вози й воли покупую:        |
Знов буду чумак.            | (2)','[''pisni.org.ua'', ''cat:chumacki'', ''cat:himny-marshi'', ''Чумацькі пісні'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4268481'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4268481','У Києві на риночку','У Києві на риночку,
Там пив чумак горілочку.
Пропив воли, пропив вози,   |
Пропив ярма ще й занози,    |
Все чумацькеє добро.        | (2)

Прокинувся чумак вранці
Та й полапав у гаманці:
Всі кишені вивертає,        |
Аж там гроший вже чорт має, |
Нічим похмелитися.          | (2)

Ой, пішов би я додому,
Та боюся поговору, —
Будуть бити ще й ганити,    |
Та заставлять ще й косити,  |
А я козак нездоров.         | (2)

Ой, піду я у Молдаву
Та сім років погорюю,
Та сім літ я погорюю,       |
Вози й воли покупую:        |
Знов буду чумак.            | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4269131';
DELETE FROM song_versions WHERE song_id = 'pisniua_4269131';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4269131';
DELETE FROM songs WHERE id = 'pisniua_4269131';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4269131','Пісня про Батьківщину','Музика: Ісак Дунаєвський Слова: Василь Лебедєв-Кумач','uk','ukraine_1991',NULL,NULL,'Пісні до свят. "Музична Україна". - К. - 1975 р.',NULL,'Приспів:
Краю мій, моя ти Батьківщино,
Скільки глянь - річки, ліси й поля!
Я країни іншої не знаю,      |
Де б людина вільно так жила. | (2)

З Києва в усі кінці країни,
Від південних до північних вод,
Як господар гордий Батьківщини,
Йде український велетень-народ.
Скрізь життя у щасті перемоги,
Як Дніпро в весняний час.
Молодим усюди в нас дорога,
До старих-пошана скрізь у нас.

Приспів.

Наших міст усіх не пригадаєш,
Не окинеш оком наших нив,
Горде слово вірності - товариш -
Нам дорожче всіх красивих слів.
Ми усюди з словом цим, як вдома,
Любим друзів дальніх і близьких.
Наше слово кожному знайоме,
З ним завжди знаходимо своїх.

Приспів.

Весняний над краєм вітер віє,
З кожним днем все радісніше жить,
І ніхто на світі не уміє,
Краще  нас сміятись і любить!
Та сурово брови ми насупим,
Встане ворог-ми на бій підем!
Як кохану ,Батьківщину любим
І,як матір рідну,бережем.

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4269131'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4269131','Пісня про Батьківщину','Приспів:
Краю мій, моя ти Батьківщино,
Скільки глянь - річки, ліси й поля!
Я країни іншої не знаю,      |
Де б людина вільно так жила. | (2)

З Києва в усі кінці країни,
Від південних до північних вод,
Як господар гордий Батьківщини,
Йде український велетень-народ.
Скрізь життя у щасті перемоги,
Як Дніпро в весняний час.
Молодим усюди в нас дорога,
До старих-пошана скрізь у нас.

Приспів.

Наших міст усіх не пригадаєш,
Не окинеш оком наших нив,
Горде слово вірності - товариш -
Нам дорожче всіх красивих слів.
Ми усюди з словом цим, як вдома,
Любим друзів дальніх і близьких.
Наше слово кожному знайоме,
З ним завжди знаходимо своїх.

Приспів.

Весняний над краєм вітер віє,
З кожним днем все радісніше жить,
І ніхто на світі не уміє,
Краще  нас сміятись і любить!
Та сурово брови ми насупим,
Встане ворог-ми на бій підем!
Як кохану ,Батьківщину любим
І,як матір рідну,бережем.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4265481';
DELETE FROM song_versions WHERE song_id = 'pisniua_4265481';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4265481';
DELETE FROM songs WHERE id = 'pisniua_4265481';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4265481','Почуй мене Боже',NULL,'uk','ukraine_1991',NULL,NULL,NULL,'Виконують Брати Давидюки.','Почуй мене Боже, коли я сумую
Коли моє серце втомилось страждать.
Почуй бо тягар мій лежить за спиною,
Уста пламеніють, не можуть мовчать! | (2)

Почуй мене Боже, бо слабну порою,
Ідучи проти вітру в ночі і пургу.
Почуй, бо я часто болію душею,
Втомився я Боже і нема сил  йти!

Бо мене гнітить цей тягар превеликий,
Тягар той гріха гризе душу мою.
Молюсь я щиро сердечно до тебе,
О Боже, почуй ти молитву мою!       | (2)

Дай відповідь, я вже знесилений прошу,
Здійми біль, дай радість для серця мого.
Гнітючий тягар, що лежить за спиною,
Ти сам забери і звільні від нього!  | (3)','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4265481'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4265481','Почуй мене Боже','Почуй мене Боже, коли я сумую
Коли моє серце втомилось страждать.
Почуй бо тягар мій лежить за спиною,
Уста пламеніють, не можуть мовчать! | (2)

Почуй мене Боже, бо слабну порою,
Ідучи проти вітру в ночі і пургу.
Почуй, бо я часто болію душею,
Втомився я Боже і нема сил  йти!

Бо мене гнітить цей тягар превеликий,
Тягар той гріха гризе душу мою.
Молюсь я щиро сердечно до тебе,
О Боже, почуй ти молитву мою!       | (2)

Дай відповідь, я вже знесилений прошу,
Здійми біль, дай радість для серця мого.
Гнітючий тягар, що лежить за спиною,
Ти сам забери і звільні від нього!  | (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4265481_l1','pisniua_4265481','YouTube','https://www.youtube.com/watch?v=XIbDN2YJZ1I','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4265481_l2','pisniua_4265481','YouTube','https://www.youtube.com/watch?v=l2tZ1TfVHGk','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4271232';
DELETE FROM song_versions WHERE song_id = 'pisniua_4271232';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4271232';
DELETE FROM songs WHERE id = 'pisniua_4271232';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4271232','Полтавські галушки','Музика: Василь Якубович Слова: Анатолій Лихошвай. Виконує: Лтава','uk','ukraine_before_1917',NULL,NULL,'http://rvo.pl.ua/nove/zbirka_urok_literaturi_ridnogo_kraju1.doc','Пісню виконує Полтавський хор "Лтава" ім. Міщенка.','Був я, друзі, у Тюмені -
Добрі ліплять там пельмені,
Та немає краще страви,
Як галушки у Полтаві.

Приспів:
Ой, галушечки-галушки, -
Нема в світі краще юшки:
І на салі, і в сметані,
І пшеничні, і гречані, -
Ось які!..
Полтавські галушки.

Заїжджав я до Кавказу -
Там харчо - згориш відразу,
Аж в очах зірки світились,
Та галушечки все снились.

Приспів.

Хвалить брат мій щі "по-флотськи" -
Вигляд в нього парубоцький;
Я ж здоров''ячко теж маю
І йому своє співаю.

Приспів.

Любі друзі, приїжджайте,
До Полтави завітайте;
Будемо вас ми частувати
І галушки подавати.

Приспів.','[''pisni.org.ua'', ''cat:naddnipryanski'', ''cat:socialno-pobutovi'', ''Наддніпрянські пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4271232'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4271232','Полтавські галушки','Був я, друзі, у Тюмені -
Добрі ліплять там пельмені,
Та немає краще страви,
Як галушки у Полтаві.

Приспів:
Ой, галушечки-галушки, -
Нема в світі краще юшки:
І на салі, і в сметані,
І пшеничні, і гречані, -
Ось які!..
Полтавські галушки.

Заїжджав я до Кавказу -
Там харчо - згориш відразу,
Аж в очах зірки світились,
Та галушечки все снились.

Приспів.

Хвалить брат мій щі "по-флотськи" -
Вигляд в нього парубоцький;
Я ж здоров''ячко теж маю
І йому своє співаю.

Приспів.

Любі друзі, приїжджайте,
До Полтави завітайте;
Будемо вас ми частувати
І галушки подавати.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4271232_l1','pisniua_4271232','YouTube','https://www.youtube.com/watch?v=wh3qPueGVdE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4270430';
DELETE FROM song_versions WHERE song_id = 'pisniua_4270430';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4270430';
DELETE FROM songs WHERE id = 'pisniua_4270430';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4270430','Про друзів','(У дружби є неписані закони). Музика: Микола Свидюк. Виконує: Микола Свидюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У дружби є неписані закони,
У долі повороти є круті,
Хтось винайшов для того телефони,    |
Щоб ми не загубились у житті!        | (2)

Не забувайте другу подзвонити -
З ним радість або смуток розділити.
Якщо у вас надійні друзі є,          |
Душа радіти не перестає!             | (2)

Ми всі - неначе на автопілоті,
Все летимо у недосяжну даль,
І в повсякденній надскладній роботі, |
Про друзів забуваємо нажаль!         | (2)

Не забувайте другу подзвонити -
З ним радість або смуток розділити.
Якщо у вас веселі друзі є,           |
Душа співати не перестає!            | (2)

У дружби є неписані закони,
У долі повороти є круті,
І поки ще не продзвоніли дзвони -    |
Не забувайте дружбу берегти!         | (2)

Не забувайте другу подзвонити -
З ним радість або смуток розділити.
Якщо у вас чудові друзі є - є, є!    |
Душа радіти не перестає!             | (2)','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4270430'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4270430','Про друзів','У дружби є неписані закони,
У долі повороти є круті,
Хтось винайшов для того телефони,    |
Щоб ми не загубились у житті!        | (2)

Не забувайте другу подзвонити -
З ним радість або смуток розділити.
Якщо у вас надійні друзі є,          |
Душа радіти не перестає!             | (2)

Ми всі - неначе на автопілоті,
Все летимо у недосяжну даль,
І в повсякденній надскладній роботі, |
Про друзів забуваємо нажаль!         | (2)

Не забувайте другу подзвонити -
З ним радість або смуток розділити.
Якщо у вас веселі друзі є,           |
Душа співати не перестає!            | (2)

У дружби є неписані закони,
У долі повороти є круті,
І поки ще не продзвоніли дзвони -    |
Не забувайте дружбу берегти!         | (2)

Не забувайте другу подзвонити -
З ним радість або смуток розділити.
Якщо у вас чудові друзі є - є, є!    |
Душа радіти не перестає!             | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4270430_l1','pisniua_4270430','YouTube','https://www.youtube.com/watch?v=aBRUoX64HK0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4270230';
DELETE FROM song_versions WHERE song_id = 'pisniua_4270230';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4270230';
DELETE FROM songs WHERE id = 'pisniua_4270230';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4270230','О, Боже, мій Боже, що робиться в світі',NULL,'uk','ukraine_1991',NULL,NULL,'pokrova.kh.ua/files/Pisni/Pisnia.doc','Пісню виконує Хор Почаївської Лаври.','О, Боже, мій Боже,
Що робиться в світі,
Немає спокою на нім,
Ми так розкошуєм, а втіхи не маєм,
Не раді багатством своїм.

Як дзвони задзвонять,
Ми в церкву не йдемо,
Зневажили слово святе,
Покайтеся, люди, бо горе нам буде,

Як в небі засяє ясніше від сонця,
Христос на престолі святім,
З Ним Матінка Божа,
Пророки й Предтеча
І Божі Апостоли з Ним.

І скаже Спаситель: "Всі добрії люди,
Всі вірні, підходьте сюди,
Для вас в Божім раї дзвенять водограї
І пахнуть чудово сади.

Я древо життя у раю посадив вам,
І дав Я вам ангельський спів,
За те, що ви Бога всім серцем любили,
Жили так, як Я заповів".

Він двері відкриє і Ангели Божі
Всіх праведних в рай заведуть,
А грішники будуть стояти, ридати
І всі перед Богом впадуть:

"Прости, ми не знали, прости, ми не чули,
Прости, нам ніхто не сказав".
Господь гляне грізно і скаже: "Вже пізно
Ви чули, Я кликав і ждав"

І в пекло огняне пошле їх на муки,
О, скільки їх всіх там буде.
Покайтеся,  люди, бо горе нам буде
Як Бог нас судити прийде.

Живімо по правді і в Господа Бога
Спасіння всім людям просім.
І в кожнеє свято, і в кожну неділю,
До храму святого всі йдім.

Дай, Господи Боже, смирення і згоду,
Любов нам на землю пошли,
Дай, Боже, нам віру,
В терпінні дай силу,
Щоб всі ми до Тебе прийшли.

О, Матінко Божа, Царице Небесна,
Покрий нас Покровом Своїм,
Як прийде Господь всі народи судити,
Як страшно нам буде усім.

Апостоле Божий, Андрій Первозданний,
Молися за Хрест той святий,
Що Ти нам поставив на Божую славу
На нашій землі дорогій.

Моліться, святії всі, Ангели Божі,
Щоб дав Бог нам Царство Святе.
Молімося, люди, бо горе нам буде,
Як Бог нас судити прийде.    комп''ютерне відтворення  (','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4270230'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4270230','О, Боже, мій Боже, що робиться в світі','О, Боже, мій Боже,
Що робиться в світі,
Немає спокою на нім,
Ми так розкошуєм, а втіхи не маєм,
Не раді багатством своїм.

Як дзвони задзвонять,
Ми в церкву не йдемо,
Зневажили слово святе,
Покайтеся, люди, бо горе нам буде,

Як в небі засяє ясніше від сонця,
Христос на престолі святім,
З Ним Матінка Божа,
Пророки й Предтеча
І Божі Апостоли з Ним.

І скаже Спаситель: "Всі добрії люди,
Всі вірні, підходьте сюди,
Для вас в Божім раї дзвенять водограї
І пахнуть чудово сади.

Я древо життя у раю посадив вам,
І дав Я вам ангельський спів,
За те, що ви Бога всім серцем любили,
Жили так, як Я заповів".

Він двері відкриє і Ангели Божі
Всіх праведних в рай заведуть,
А грішники будуть стояти, ридати
І всі перед Богом впадуть:

"Прости, ми не знали, прости, ми не чули,
Прости, нам ніхто не сказав".
Господь гляне грізно і скаже: "Вже пізно
Ви чули, Я кликав і ждав"

І в пекло огняне пошле їх на муки,
О, скільки їх всіх там буде.
Покайтеся,  люди, бо горе нам буде
Як Бог нас судити прийде.

Живімо по правді і в Господа Бога
Спасіння всім людям просім.
І в кожнеє свято, і в кожну неділю,
До храму святого всі йдім.

Дай, Господи Боже, смирення і згоду,
Любов нам на землю пошли,
Дай, Боже, нам віру,
В терпінні дай силу,
Щоб всі ми до Тебе прийшли.

О, Матінко Божа, Царице Небесна,
Покрий нас Покровом Своїм,
Як прийде Господь всі народи судити,
Як страшно нам буде усім.

Апостоле Божий, Андрій Первозданний,
Молися за Хрест той святий,
Що Ти нам поставив на Божую славу
На нашій землі дорогій.

Моліться, святії всі, Ангели Божі,
Щоб дав Бог нам Царство Святе.
Молімося, люди, бо горе нам буде,
Як Бог нас судити прийде.    комп''ютерне відтворення  (');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4270230_l1','pisniua_4270230','YouTube','https://www.youtube.com/watch?v=8in-O9RxTQc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4270230_l2','pisniua_4270230','YouTube','https://www.youtube.com/watch?v=sKJ3w_Deud4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4271634';
DELETE FROM song_versions WHERE song_id = 'pisniua_4271634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4271634';
DELETE FROM songs WHERE id = 'pisniua_4271634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4271634','Друзям','Музика: Володимир Шинкарук Слова: Володимир Шинкарук. Виконує: Володимир Шинкарук','uk','ukraine_1991',NULL,NULL,'інтернет',NULL,'Всіх, кого я любив і знав,
Всіх, хто завжди у мене вірив,
Я покличу у світлий зал,
І доземно вклонюся щиро.

Я вклонюсь за сердець тепло,
За даровані щастя й сили,
За повагу і за добро,
Що життя моє освятили.

Я до літа свого дожив,
І мене проводжають в осінь
Ті, кого я колись любив,
І кого я люблю ще й досі.

Хай спливають за днями дні
У тривозі і у напрузі,
Хай лиш в радості, а не в журбі
Пізнаються друзі.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4271634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4271634','Друзям','Всіх, кого я любив і знав,
Всіх, хто завжди у мене вірив,
Я покличу у світлий зал,
І доземно вклонюся щиро.

Я вклонюсь за сердець тепло,
За даровані щастя й сили,
За повагу і за добро,
Що життя моє освятили.

Я до літа свого дожив,
І мене проводжають в осінь
Ті, кого я колись любив,
І кого я люблю ще й досі.

Хай спливають за днями дні
У тривозі і у напрузі,
Хай лиш в радості, а не в журбі
Пізнаються друзі.');
DELETE FROM song_links WHERE song_id = 'pisniua_4272131';
DELETE FROM song_versions WHERE song_id = 'pisniua_4272131';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4272131';
DELETE FROM songs WHERE id = 'pisniua_4272131';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4272131','Козацькі оркестри','Слова: Оксана Пахльовська','uk','ukraine_1991',NULL,'2013','Інформаційний бюлетень ІКААПУ Інформ №41 (267) 2013 рік.',NULL,'Не тільки зброя, ох, не тільки зброя,
А в козаків і музика була.
Такі литаври - не піднімуть троє,
Такі цимбали - запрягай вола.

Це ж не весільна музика троїста,
А це ж за військом, на багато верст.
А інструментів, може, там аж триста,
Бо ж не який - козацький був оркестр!

І що харчі, що кнедлики, ковбаси?
Без кармазинів також не біда.
Стрибали на вибоях тулумбаси.
Дзвеніла скрипка. І гула дуда.

Театри предків - простір того поля,
Де можна скласти голову свою.
А перед ними - тільки смерть і воля.
А там за ними - музика в бою.

Важкі віки. Але не марні жертви.
Тривожний дим фигур сторожових!
Та музика оплакувала мертвих.
І знов до бою звала ще живих.

Хтось впав з коня.
Не чутно нам, чи скрикнув.
Живий навіки пам''яттю землі.
Мов давній герб - щаблі оті і скрипка.
Козацька скрипка. Схрещені шаблі.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4272131'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4272131','Козацькі оркестри','Не тільки зброя, ох, не тільки зброя,
А в козаків і музика була.
Такі литаври - не піднімуть троє,
Такі цимбали - запрягай вола.

Це ж не весільна музика троїста,
А це ж за військом, на багато верст.
А інструментів, може, там аж триста,
Бо ж не який - козацький був оркестр!

І що харчі, що кнедлики, ковбаси?
Без кармазинів також не біда.
Стрибали на вибоях тулумбаси.
Дзвеніла скрипка. І гула дуда.

Театри предків - простір того поля,
Де можна скласти голову свою.
А перед ними - тільки смерть і воля.
А там за ними - музика в бою.

Важкі віки. Але не марні жертви.
Тривожний дим фигур сторожових!
Та музика оплакувала мертвих.
І знов до бою звала ще живих.

Хтось впав з коня.
Не чутно нам, чи скрикнув.
Живий навіки пам''яттю землі.
Мов давній герб - щаблі оті і скрипка.
Козацька скрипка. Схрещені шаблі.');
DELETE FROM song_links WHERE song_id = 'pisniua_427287';
DELETE FROM song_versions WHERE song_id = 'pisniua_427287';
DELETE FROM songs_fts WHERE song_id = 'pisniua_427287';
DELETE FROM songs WHERE id = 'pisniua_427287';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_427287','По садочку ходжу','Українська народна пісня. Виконує: Богдан Косопуд','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'По садочку ходжу,
Кониченька воджу...
Через свою неньку
Нежонатий ходжу.

Через рідну неньку,
Через рідні сестри
Не можу кохану
Додому привести.

Неньку я вговорю,
Сестри перепрошу.
Приведу кохану,
Як червону рожу.

Доле ж моя, доле,.
Що мені діяти...
Тільки тебе одну
Мушу вік кохати,

Доле ж моя, доле,
Що мені діяти...
Полюбив дівчину
Та й не можу взяти.

По садочку ходжу
Кониченька воджу
Через свою неньку
Нежонатий ходжу','[''pisni.org.ua'', ''cat:dances'', ''cat:narodni'', ''cat:waltzes'', ''Пісні до танцю'', ''Народні пісні'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_427287'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_427287','По садочку ходжу','По садочку ходжу,
Кониченька воджу...
Через свою неньку
Нежонатий ходжу.

Через рідну неньку,
Через рідні сестри
Не можу кохану
Додому привести.

Неньку я вговорю,
Сестри перепрошу.
Приведу кохану,
Як червону рожу.

Доле ж моя, доле,.
Що мені діяти...
Тільки тебе одну
Мушу вік кохати,

Доле ж моя, доле,
Що мені діяти...
Полюбив дівчину
Та й не можу взяти.

По садочку ходжу
Кониченька воджу
Через свою неньку
Нежонатий ходжу');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_427287_l1','pisniua_427287','YouTube','https://www.youtube.com/watch?v=4xrPn2qpccg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_427287_l2','pisniua_427287','YouTube','https://www.youtube.com/watch?v=BuiuF5QZngQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_427287_l3','pisniua_427287','YouTube','https://www.youtube.com/watch?v=P29zGNYSi-I','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_427287_l4','pisniua_427287','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_4273889';
DELETE FROM song_versions WHERE song_id = 'pisniua_4273889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4273889';
DELETE FROM songs WHERE id = 'pisniua_4273889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4273889','Ой, мамо, люблю Гриця','Українська народна пісня. Виконує: Mad Heads (XL)','uk','ukraine_before_1917',NULL,NULL,NULL,'Мій підбір акордів.','Косив батько, косив я,
Та й викосив солов''я.
Соловей у саду тьох та тьох,
D
Канарейочка.
Приспів:
G
Роман косить, Ганка в''яже,
С        Am
Катерина загріба,
D
Роман волей напуває,
Ганна воду витяга.
G
Ой мамо, люблю Гриця,
Гриць на конику вертиться,
D
Грицю шапка до лиця,
Люблю Гриця-молодця!
Посилала мене мати
До криниці воду брати.
Соловей у саду тьох та тьох,
Канарейочка.
Приспів.
Там зустрілася з Іванком
Та й простояла до ранку.
Соловей у саду тьох та тьох,
Канарейочка.
Приспів.
Батько в руки взяв нагайку,
Не стояла щоб до ранку.
Соловей у саду тьох та тьох,
Канарейочка.
Приспів.','[''pisni.org.ua'', ''cat:narodni'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4273889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4273889','Ой, мамо, люблю Гриця','Косив батько, косив я,
Та й викосив солов''я.
Соловей у саду тьох та тьох,
D
Канарейочка.
Приспів:
G
Роман косить, Ганка в''яже,
С        Am
Катерина загріба,
D
Роман волей напуває,
Ганна воду витяга.
G
Ой мамо, люблю Гриця,
Гриць на конику вертиться,
D
Грицю шапка до лиця,
Люблю Гриця-молодця!
Посилала мене мати
До криниці воду брати.
Соловей у саду тьох та тьох,
Канарейочка.
Приспів.
Там зустрілася з Іванком
Та й простояла до ранку.
Соловей у саду тьох та тьох,
Канарейочка.
Приспів.
Батько в руки взяв нагайку,
Не стояла щоб до ранку.
Соловей у саду тьох та тьох,
Канарейочка.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4273889_l1','pisniua_4273889','YouTube','https://www.youtube.com/watch?v=XtLF80C1j8s','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4273889_l2','pisniua_4273889','YouTube','https://www.youtube.com/watch?v=3BtXOlgePd0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4269981';
DELETE FROM song_versions WHERE song_id = 'pisniua_4269981';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4269981';
DELETE FROM songs WHERE id = 'pisniua_4269981';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4269981','Всі ми потрібні','Музика: Леся Горова Слова: Леся Горова. Виконує: Леся Горова, Світанок','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я співаю і пишу пісні,
А хтось вирощує хліб на землі,
А хтось лікує, як щось болить.
Ми не можем один без одного жить!
Хтось білявий, а хтось рудий,
Великий, маленький, повний, худий,
Хтось суворий, а хтось веселий.
Ми живем у містах і у селах.

Приспів:
Всі ми потрібні, всі важливі,  |
Без кожного Україна неможлива! |
Я і ти, батьки і діти          |
Вільно й щасливо будемо жити!  | (2)

В кожного з нас свої почуття,
Цікаве і неповторне життя,
Кожен має власні потреби
І добре знає, чого йому треба.
Можем зустрітись, можем - ні,
Кожен їде на власнім коні,
Але всім нам сили дає
Те, що ми не одні, мільйони нас є!

Приспів.

Будемо жити! Будемо жити!

Той - капітан, а той - отаман,
Хтось любить кіно, а хтось - меломан...
Як буде щасливою кожна людина,
То буде щасливою вся Україна!

Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4269981'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4269981','Всі ми потрібні','Я співаю і пишу пісні,
А хтось вирощує хліб на землі,
А хтось лікує, як щось болить.
Ми не можем один без одного жить!
Хтось білявий, а хтось рудий,
Великий, маленький, повний, худий,
Хтось суворий, а хтось веселий.
Ми живем у містах і у селах.

Приспів:
Всі ми потрібні, всі важливі,  |
Без кожного Україна неможлива! |
Я і ти, батьки і діти          |
Вільно й щасливо будемо жити!  | (2)

В кожного з нас свої почуття,
Цікаве і неповторне життя,
Кожен має власні потреби
І добре знає, чого йому треба.
Можем зустрітись, можем - ні,
Кожен їде на власнім коні,
Але всім нам сили дає
Те, що ми не одні, мільйони нас є!

Приспів.

Будемо жити! Будемо жити!

Той - капітан, а той - отаман,
Хтось любить кіно, а хтось - меломан...
Як буде щасливою кожна людина,
То буде щасливою вся Україна!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4269981_l1','pisniua_4269981','YouTube','https://www.youtube.com/watch?v=yt3D_4yda0M','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4269838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4269838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4269838';
DELETE FROM songs WHERE id = 'pisniua_4269838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4269838','Сонце сідає','Музика: Леся Горова Слова: Леся Горова. Виконує: Леся Горова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сонце сідає, день догорає
На землі,
Спати лягають, відпочивають
Діти малі,
Летять ангелята до діток усіх,
Щоб їх колисати на крилах своїх.

Приспів.
Тихо-тихо в небі вітер дише,
Легко-легко місяцем колише,
Зорі в небі засинають,
Сни дитині посилають.
Завтра знову сонце встане
Тепле, ясне і жадане,
І розбудить оченята
Рідного дитяти.

Спіть, любі дітки, відпочивайте
У своїх снах,
Сильні, здорові знову прокидайтесь
З радістю на очах.
Сьогодні ви - поки діти малі,
А завтра - майбутнє своєї землі.

Приспів.

А-а-а, нічка прийшла...
Люлі-люлі, спати пора...','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4269838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4269838','Сонце сідає','Сонце сідає, день догорає
На землі,
Спати лягають, відпочивають
Діти малі,
Летять ангелята до діток усіх,
Щоб їх колисати на крилах своїх.

Приспів.
Тихо-тихо в небі вітер дише,
Легко-легко місяцем колише,
Зорі в небі засинають,
Сни дитині посилають.
Завтра знову сонце встане
Тепле, ясне і жадане,
І розбудить оченята
Рідного дитяти.

Спіть, любі дітки, відпочивайте
У своїх снах,
Сильні, здорові знову прокидайтесь
З радістю на очах.
Сьогодні ви - поки діти малі,
А завтра - майбутнє своєї землі.

Приспів.

А-а-а, нічка прийшла...
Люлі-люлі, спати пора...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4269838_l1','pisniua_4269838','YouTube','https://www.youtube.com/watch?v=9Iw7P5Sgp1s','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4273583';
DELETE FROM song_versions WHERE song_id = 'pisniua_4273583';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4273583';
DELETE FROM songs WHERE id = 'pisniua_4273583';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4273583','Я чекаю Миколая','Музика: Василь Попович Слова: Леся Вознюк','uk','ukraine_1991',NULL,NULL,'Підручник грі на фортепіано',NULL,'Примощуся на подушку,
А долоньку — попід вушко.
Ні, не сплю я, не дрімаю,
Миколая виглядаю,
Бо цікаво мені знати,
Як заходить він до хати.
Тільки неслухнянці-очі
Вередують, спати хочуть.

Цілий день вони дивились
Та добряче натомились.
І наснилася мені
Про Святого добрі сни...

Лиш уранці пробудився,
Та на очі розсердився:
Через вас, малі роззяви,
Миколая я проґавив.
Щоб Святий зійшов із неба
Цілий рік чекати треба.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4273583'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4273583','Я чекаю Миколая','Примощуся на подушку,
А долоньку — попід вушко.
Ні, не сплю я, не дрімаю,
Миколая виглядаю,
Бо цікаво мені знати,
Як заходить він до хати.
Тільки неслухнянці-очі
Вередують, спати хочуть.

Цілий день вони дивились
Та добряче натомились.
І наснилася мені
Про Святого добрі сни...

Лиш уранці пробудився,
Та на очі розсердився:
Через вас, малі роззяви,
Миколая я проґавив.
Щоб Святий зійшов із неба
Цілий рік чекати треба.');
DELETE FROM song_links WHERE song_id = 'pisniua_4272931';
DELETE FROM song_versions WHERE song_id = 'pisniua_4272931';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4272931';
DELETE FROM songs WHERE id = 'pisniua_4272931';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4272931','На Івана на Купайла','(Ніч Купала). Українська народна пісня. Виконує: Мар''яна Садовська','uk','ukraine_before_1917',NULL,NULL,'інтернет',NULL,'На Івана на Купайла
Ходила відьма по яйла.
На дуб лізла, кору гризла,
З дуба впала, зілля купа...

З дуба впала, зілля купала,
Своїх діток на гачок.

Задвижила сира земля
На Купала,
Грає, грає сониченько
На Івана.

Пішли дівки по ягідки,
Молодиці по суниці,
Усі дівки назбирали,
Молода Маринка заблукала.

Гайда, дівки, по лісочку,
Чи не знайдем Мариночку!

А в неділеньку раненько
Ой купалося сумненько,
Ой, як воно ся купало,
Аж ся море заливало,

Аж ся море виливало,
На зіллічку накрапляло,
Ой, в дворі, у дворі
Ой, висять гілечку скорі.

Ой, на білу головоньку,
Ой, в щасливу годиноньку!
Де ти, Купало, ночувало?
Що ти, Купало, вечеряло?

Ух, ух, ухи-ухи,
Розгулялися старухи,
Ух, ух, уха-ха,
А я зроду така!
Ух, ухи-ахи,
Розгулялись старі баби,
Ух, ух, уха-ха,
А я зроду така!

Робіть, дітки, як я, мати,
Щоби вміли чарувати!','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4272931'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4272931','На Івана на Купайла','На Івана на Купайла
Ходила відьма по яйла.
На дуб лізла, кору гризла,
З дуба впала, зілля купа...

З дуба впала, зілля купала,
Своїх діток на гачок.

Задвижила сира земля
На Купала,
Грає, грає сониченько
На Івана.

Пішли дівки по ягідки,
Молодиці по суниці,
Усі дівки назбирали,
Молода Маринка заблукала.

Гайда, дівки, по лісочку,
Чи не знайдем Мариночку!

А в неділеньку раненько
Ой купалося сумненько,
Ой, як воно ся купало,
Аж ся море заливало,

Аж ся море виливало,
На зіллічку накрапляло,
Ой, в дворі, у дворі
Ой, висять гілечку скорі.

Ой, на білу головоньку,
Ой, в щасливу годиноньку!
Де ти, Купало, ночувало?
Що ти, Купало, вечеряло?

Ух, ух, ухи-ухи,
Розгулялися старухи,
Ух, ух, уха-ха,
А я зроду така!
Ух, ухи-ахи,
Розгулялись старі баби,
Ух, ух, уха-ха,
А я зроду така!

Робіть, дітки, як я, мати,
Щоби вміли чарувати!');
DELETE FROM song_links WHERE song_id = 'pisniua_4273636';
DELETE FROM song_versions WHERE song_id = 'pisniua_4273636';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4273636';
DELETE FROM songs WHERE id = 'pisniua_4273636';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4273636','Зірка засіяла в небі України','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'c  G  c G c As Es    B  Es G7
Зірка засіяла в небі України,
c   G  c G c As Es  B Es
Довгождану волю принесла.
As          Es    C7      f
Це нам подарунок Божої Дитини,
Це Господня ласка Ним зійшла.
Висихають сльози Матері - Вкраїни,
Вже не чути стогону землі,
Поклонімся щиро всій Божій Родині,
Щоб пропала нечисть десь в імлі.
Ненько - Україно, повернись до Бога,
Свій народ до Нього поведи -
І зло не досягне нашого порога,
Він заступить край наш від біди.
О, Ісусе милий, молиться Вкраїна,
Найщирішу вдячність воздає:
О, Дитятко Боже, як Бог і Людина,
Їй благословення дай своє.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4273636'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4273636','Зірка засіяла в небі України','c  G  c G c As Es    B  Es G7
Зірка засіяла в небі України,
c   G  c G c As Es  B Es
Довгождану волю принесла.
As          Es    C7      f
Це нам подарунок Божої Дитини,
Це Господня ласка Ним зійшла.
Висихають сльози Матері - Вкраїни,
Вже не чути стогону землі,
Поклонімся щиро всій Божій Родині,
Щоб пропала нечисть десь в імлі.
Ненько - Україно, повернись до Бога,
Свій народ до Нього поведи -
І зло не досягне нашого порога,
Він заступить край наш від біди.
О, Ісусе милий, молиться Вкраїна,
Найщирішу вдячність воздає:
О, Дитятко Боже, як Бог і Людина,
Їй благословення дай своє.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4273636_l1','pisniua_4273636','http://minus.lviv.ua/','http://minus.lviv.ua/','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4272333';
DELETE FROM song_versions WHERE song_id = 'pisniua_4272333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4272333';
DELETE FROM songs WHERE id = 'pisniua_4272333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4272333','Хочу на море','Музика: Наталія Фаліон Слова: Наталія Фаліон. Виконує: Лісапетний батальйон','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Наступило літо, зеленіє жито,
На полі, як шнурочки, цукрові буряки,
А ми собі в рядочку всі сіли на горбочку,
Такі собі прикольні рум''яні жіночки.

Приспів:
Ой, горе, горе хочу на море,
Хочу під пальму на жовтий пісок,
Хочу щоб гріло сонечко тіло,
Хочу на море хоч на часок!

Вижену корову у темну діброву,
Не хочу я сметани, не хочу молока,
Я сяду на дієту, не стану їсть котлєту,
І буду, як модель, я висока і струнка.

Приспів.

Хай судять мене люди, я слухать їх не буду,
Хай на моїм городі цвістиме лобода,
Розпродам всю скотину, куплю собі машину,
Я хочу погуляти, бо я ще молода.

Приспів.

Наступило літо, зеленіє жито,
На полі, як шнурочки, цукрові буряки
А ми собі в рядочку всі сіли на горбочку,
Такі собі прикольні рум''яні жіночки.

Приспів. (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4272333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4272333','Хочу на море','Наступило літо, зеленіє жито,
На полі, як шнурочки, цукрові буряки,
А ми собі в рядочку всі сіли на горбочку,
Такі собі прикольні рум''яні жіночки.

Приспів:
Ой, горе, горе хочу на море,
Хочу під пальму на жовтий пісок,
Хочу щоб гріло сонечко тіло,
Хочу на море хоч на часок!

Вижену корову у темну діброву,
Не хочу я сметани, не хочу молока,
Я сяду на дієту, не стану їсть котлєту,
І буду, як модель, я висока і струнка.

Приспів.

Хай судять мене люди, я слухать їх не буду,
Хай на моїм городі цвістиме лобода,
Розпродам всю скотину, куплю собі машину,
Я хочу погуляти, бо я ще молода.

Приспів.

Наступило літо, зеленіє жито,
На полі, як шнурочки, цукрові буряки
А ми собі в рядочку всі сіли на горбочку,
Такі собі прикольні рум''яні жіночки.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4272333_l1','pisniua_4272333','YouTube','https://www.youtube.com/watch?v=GoznxN1TNVQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4279636';
DELETE FROM song_versions WHERE song_id = 'pisniua_4279636';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4279636';
DELETE FROM songs WHERE id = 'pisniua_4279636';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4279636','Повертайся!','Музика: Ярослав Виджак Слова: Ярослав Виджак. Виконує: Богуслава, Промінці','uk','ukraine_1991',NULL,NULL,'http://youtu.be/LUKqOuCc2ak','Героям України присвячується! Пісню виконує Богуслава, дитячий гурт "Промінці" (кер. Наталя Стецька).','Я вже не плачу, не страждаю,
Я звикла вже до тої думки,
Що рідний дім ти покидаєш,
Прощальні завтра, прощальні завтра,
Прощальні завтра поцілунки.

Приспів:
Во ім''я Неньки України,
Во ім''я нашої дитини -
На полі бою не лишайся,
Живим додому повертайся.
Во ім''я Неньки України,
Во ім''я кожної родини -
На полі бою не лишайся,
І з перемогою вертайся!
Повертайся!

Там вдалині війна жорстока,
І знають всі, хто в цьому винен...
Та віра все ж моя глибока:
Ти повернутися, ти повернутися,
Ти повернутися повинен!
Накрию стіл обрусом білим,
Щоб святкувати перемогу...
А зараз з серденьком змарнілим
Тебе збираю, тебе збираю,
Тебе збираю у дорогу.

Приспів.

І з перемогою вертайся!
Повертайся!','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4279636'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4279636','Повертайся!','Я вже не плачу, не страждаю,
Я звикла вже до тої думки,
Що рідний дім ти покидаєш,
Прощальні завтра, прощальні завтра,
Прощальні завтра поцілунки.

Приспів:
Во ім''я Неньки України,
Во ім''я нашої дитини -
На полі бою не лишайся,
Живим додому повертайся.
Во ім''я Неньки України,
Во ім''я кожної родини -
На полі бою не лишайся,
І з перемогою вертайся!
Повертайся!

Там вдалині війна жорстока,
І знають всі, хто в цьому винен...
Та віра все ж моя глибока:
Ти повернутися, ти повернутися,
Ти повернутися повинен!
Накрию стіл обрусом білим,
Щоб святкувати перемогу...
А зараз з серденьком змарнілим
Тебе збираю, тебе збираю,
Тебе збираю у дорогу.

Приспів.

І з перемогою вертайся!
Повертайся!');
DELETE FROM song_links WHERE song_id = 'pisniua_4284389';
DELETE FROM song_versions WHERE song_id = 'pisniua_4284389';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4284389';
DELETE FROM songs WHERE id = 'pisniua_4284389';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4284389','Кам''яна гора, чому не лупаєшся?','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'(Мати ставить стілець, покриває його кожухом.
Старший дружба садовить молоду.
Мати дає їй у руки хліб, на який кладуть білу фату з вінком):

- Кам''яна гора, чому не лупаєшся?
Молода Ганнусю, чом не розплітаєшся?
- Ой, є ковалі, хай ту гору розкопають,
Є тато й мама, нехай мене розплітають.

(Мати підходить, розв''язує коси і починає розплітати.
Далі трошки розплітає батько):

- Кам''яна гора, чому не лупаєшся?
Молода Ганнусю, чом не розплітаєшся?
- Ой, є ковалі, хай ту гору розкопають,
Є в мене дружки, нехай мене розплітають.

(Підходять по черзі дівчата, розплітають косу, співаючи):

Стану я на кісницю,
Стану я на кісницю,
Крикну я на сестрицю:
- Ой, сходьтеся, сестриці,
- Ой, сходьтеся, сестриці,
Розплітати дрібниці.
Ой, сходьтеся, рідненькі,
Ой, сходьтеся, рідненькі,
Розплітати дрібненькі.

(Розплітає косу рідна сестра, потім двоюрідна):

Стану я на калину,
Стану я на калину,
Крикну я на родину,
Крикну я на родину:
- Ой, сходьтеся, родоньку,
Розплітати косоньку.

(Розплітає родина, кожен по одній пелюсточці,
Коли розплітає брат, співають):

Василь Ганнусю розплітав,
Де ж він кіснички подівав?
Чи в гай, чи в Дунай покидав,
Чи старшій дружечці віддав?
Ні в гай, ні в Дунай не кидав,
Лиш старшій дружечці віддав.
Ой, ходила Ганнусенька
По крутій горі
Та сіяла чорнобривці
В батька на дворі.

А вже ж тії чорнобривці
Розцвітають,
А вже ж мою русу косу
Розплітають.

А вже ж тії чорнобривці
Розцвіли,
А вже ж мою русу коту
Розплели.

- Чи я ж тобі, товаришко,
Не казала,
Чи я ж тобі щастя-долі
Не бажала?

Ой, не ходи та й до броду
Рано по воду
Та й не зривай фіалочки
Із приходу.

Та не слухай зозуленьки,
Що кує.
Та не бери подарунків,
Що дарує.

Тебе ж тії подарунки
Ізрадять,
Від матінки до свекрухи
Попровадять.

(Розплели довгі коси,
Буйними хвилями встелили вони плечі молодої,
Молода співає):

Як тобі, матінко, не жалко:
Розплели твоє дитятко,
Пустили кіснички на ріки,
Розплели Ганнусю навіки.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4284389'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4284389','Кам''яна гора, чому не лупаєшся?','(Мати ставить стілець, покриває його кожухом.
Старший дружба садовить молоду.
Мати дає їй у руки хліб, на який кладуть білу фату з вінком):

- Кам''яна гора, чому не лупаєшся?
Молода Ганнусю, чом не розплітаєшся?
- Ой, є ковалі, хай ту гору розкопають,
Є тато й мама, нехай мене розплітають.

(Мати підходить, розв''язує коси і починає розплітати.
Далі трошки розплітає батько):

- Кам''яна гора, чому не лупаєшся?
Молода Ганнусю, чом не розплітаєшся?
- Ой, є ковалі, хай ту гору розкопають,
Є в мене дружки, нехай мене розплітають.

(Підходять по черзі дівчата, розплітають косу, співаючи):

Стану я на кісницю,
Стану я на кісницю,
Крикну я на сестрицю:
- Ой, сходьтеся, сестриці,
- Ой, сходьтеся, сестриці,
Розплітати дрібниці.
Ой, сходьтеся, рідненькі,
Ой, сходьтеся, рідненькі,
Розплітати дрібненькі.

(Розплітає косу рідна сестра, потім двоюрідна):

Стану я на калину,
Стану я на калину,
Крикну я на родину,
Крикну я на родину:
- Ой, сходьтеся, родоньку,
Розплітати косоньку.

(Розплітає родина, кожен по одній пелюсточці,
Коли розплітає брат, співають):

Василь Ганнусю розплітав,
Де ж він кіснички подівав?
Чи в гай, чи в Дунай покидав,
Чи старшій дружечці віддав?
Ні в гай, ні в Дунай не кидав,
Лиш старшій дружечці віддав.
Ой, ходила Ганнусенька
По крутій горі
Та сіяла чорнобривці
В батька на дворі.

А вже ж тії чорнобривці
Розцвітають,
А вже ж мою русу косу
Розплітають.

А вже ж тії чорнобривці
Розцвіли,
А вже ж мою русу коту
Розплели.

- Чи я ж тобі, товаришко,
Не казала,
Чи я ж тобі щастя-долі
Не бажала?

Ой, не ходи та й до броду
Рано по воду
Та й не зривай фіалочки
Із приходу.

Та не слухай зозуленьки,
Що кує.
Та не бери подарунків,
Що дарує.

Тебе ж тії подарунки
Ізрадять,
Від матінки до свекрухи
Попровадять.

(Розплели довгі коси,
Буйними хвилями встелили вони плечі молодої,
Молода співає):

Як тобі, матінко, не жалко:
Розплели твоє дитятко,
Пустили кіснички на ріки,
Розплели Ганнусю навіки.');
DELETE FROM song_links WHERE song_id = 'pisniua_4277032';
DELETE FROM song_versions WHERE song_id = 'pisniua_4277032';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4277032';
DELETE FROM songs WHERE id = 'pisniua_4277032';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4277032','Мамо, не плач','Музика: Михайло Герц, Тіана Роз Слова: Оксана Максимишин-Корабель','uk','ukraine_1991',NULL,NULL,'youtube Акорди: Panseron','*Варіант: ангел співає сумну колискову Підбір акордів: Panseron','Мамо, не плач. Я повернусь весною.
У шибку пташинкою вдарюсь твою.
Прийду на світанні в садок із росою,
А, може, дощем на поріг упаду.
Мамочко, вибач за чорну хустину,
За те, що віднині будеш сама.
Тебе я люблю. I люблю Україну -
Вона, як і ти, була в мене одна.
Голубко, не плач. Так судилося, ненько,
Вже слово, матусю, не буде моїм.
Прийду і попрошуся в сон твій тихенько
Розкажу, як мається в домі новім.
Мамочко, вибач за чорну хустину,
За те, що віднині будеш сама.
Тебе я люблю. I люблю Україну -
Вона, як і ти, була в мене одна.
Програш: D# |Dm |Cm |Dm |Gm |F |D# |D |
Мені колискову ангел співає*
I рана смертельна уже не болить.
Ти знаєш, матусю, й тут сумно буває
Душа за тобою, рідненька, щемить.
Мамочко, вибач за чорну хустину,
За те, що віднині будеш сама.
Тебе я люблю. I люблю Україну -
Вона, як і ти, була в мене одна.
Тебе я люблю. I люблю Україну -
Вона, як і ти, була в мене одна.','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4277032'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4277032','Мамо, не плач','Мамо, не плач. Я повернусь весною.
У шибку пташинкою вдарюсь твою.
Прийду на світанні в садок із росою,
А, може, дощем на поріг упаду.
Мамочко, вибач за чорну хустину,
За те, що віднині будеш сама.
Тебе я люблю. I люблю Україну -
Вона, як і ти, була в мене одна.
Голубко, не плач. Так судилося, ненько,
Вже слово, матусю, не буде моїм.
Прийду і попрошуся в сон твій тихенько
Розкажу, як мається в домі новім.
Мамочко, вибач за чорну хустину,
За те, що віднині будеш сама.
Тебе я люблю. I люблю Україну -
Вона, як і ти, була в мене одна.
Програш: D# |Dm |Cm |Dm |Gm |F |D# |D |
Мені колискову ангел співає*
I рана смертельна уже не болить.
Ти знаєш, матусю, й тут сумно буває
Душа за тобою, рідненька, щемить.
Мамочко, вибач за чорну хустину,
За те, що віднині будеш сама.
Тебе я люблю. I люблю Україну -
Вона, як і ти, була в мене одна.
Тебе я люблю. I люблю Україну -
Вона, як і ти, була в мене одна.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4277032_l1','pisniua_4277032','YouTube','https://www.youtube.com/watch?v=mzWaUoxOnyk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4277032_l2','pisniua_4277032','YouTube','https://www.youtube.com/watch?v=UUnuQ998Gq8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4277032_l3','pisniua_4277032','YouTube','https://www.youtube.com/watch?v=mU3SsSwAOQI','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4277032_l4','pisniua_4277032','YouTube','https://www.youtube.com/watch?v=KAE8Z_TWbSA','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_4278034';
DELETE FROM song_versions WHERE song_id = 'pisniua_4278034';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4278034';
DELETE FROM songs WHERE id = 'pisniua_4278034';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4278034','Шкільна пора','Музика: Ольга Пенюк Слова: Ольга Пенюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Дні у школі летять дуже швидко,
Зранку дружно спішить дітвора.
Починаємо день ми навчанням, двічі
Всім за парти сідати пора.

Приспів:
Дзвоник весело дзвенить,
Не чекає ні на мить,
Гей, за парти сідайте скоренько.
На уроки поспішіть,
Час, як вітер пролетить,
Всі додому підемо швиденько.

А завдань назбиралось багато!..
Вчителі задають недарма,
Дуже хочеться нам погуляти,
Дуже хочеться нам погуляти,
Але вільного часу нема.

Приспів.

З кожним роком ми ростем,
В школі дружно всі живем,
Набираємся знань на майбутнє,
Пролетить ще з десять літ -
Нас чекає новий світ,
А шкільна нам пора незабутня.

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4278034'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4278034','Шкільна пора','Дні у школі летять дуже швидко,
Зранку дружно спішить дітвора.
Починаємо день ми навчанням, двічі
Всім за парти сідати пора.

Приспів:
Дзвоник весело дзвенить,
Не чекає ні на мить,
Гей, за парти сідайте скоренько.
На уроки поспішіть,
Час, як вітер пролетить,
Всі додому підемо швиденько.

А завдань назбиралось багато!..
Вчителі задають недарма,
Дуже хочеться нам погуляти,
Дуже хочеться нам погуляти,
Але вільного часу нема.

Приспів.

З кожним роком ми ростем,
В школі дружно всі живем,
Набираємся знань на майбутнє,
Пролетить ще з десять літ -
Нас чекає новий світ,
А шкільна нам пора незабутня.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4278034_l1','pisniua_4278034','YouTube','https://www.youtube.com/watch?v=M3VoEP8G08w','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4281632';
DELETE FROM song_versions WHERE song_id = 'pisniua_4281632';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4281632';
DELETE FROM songs WHERE id = 'pisniua_4281632';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4281632','Вітер На-Дії','Музика: Кана Слова: Кана. Виконує: Кана','uk','ukraine_1991',NULL,NULL,'http://dyvensvit.org/festival/atrybuty-zyizdu/','Гімн Всеукраїнського З''їзду молоді "Вітер На-Дії".','І коли Ти молодий, і серце сповнене мрій,
І хочеш Ти полетіти на крилах надій,
Забудь погані слова, забудь невдачі життя,
Ти знай, що в Божій долоні Твоє ім''я.
Бо Бог дітьми своїми нас назвав
І до діл великих нас покликав,
Своїм духом поблагословив,
Аби ми світили світу.

Приспів:
Вітер На-Дії, вітер до дії,
Прийди подивись і все сам зрозумієш,
Потрібні слова і віра жива -
Це все, що збудує в правді твоє життя.

Лиш на Божій дорозі люди повністю в змозі
Збагнути прикраси святого життя,
Бог нам віддав найцінніше, довірив через Хрест нішу
Дозволив свобідно йти по стежці в життя.
І коли встати несила, дарує Бог крила,
Протягує руку, надія - жива.
Твої таланти - це зброя, у них Божа воля,
Мрій вітру віддати те, що прагне душа.

Приспів.

Ти зітканий з Його волі,
Він знав очей твоїх колір
Він знав Твоє місце,
Він знав Твій час.
Тому відкрий своє серце,
Хай гріх буде стертий,
Щоб раз і назавжди забув ти про страх.

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4281632'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4281632','Вітер На-Дії','І коли Ти молодий, і серце сповнене мрій,
І хочеш Ти полетіти на крилах надій,
Забудь погані слова, забудь невдачі життя,
Ти знай, що в Божій долоні Твоє ім''я.
Бо Бог дітьми своїми нас назвав
І до діл великих нас покликав,
Своїм духом поблагословив,
Аби ми світили світу.

Приспів:
Вітер На-Дії, вітер до дії,
Прийди подивись і все сам зрозумієш,
Потрібні слова і віра жива -
Це все, що збудує в правді твоє життя.

Лиш на Божій дорозі люди повністю в змозі
Збагнути прикраси святого життя,
Бог нам віддав найцінніше, довірив через Хрест нішу
Дозволив свобідно йти по стежці в життя.
І коли встати несила, дарує Бог крила,
Протягує руку, надія - жива.
Твої таланти - це зброя, у них Божа воля,
Мрій вітру віддати те, що прагне душа.

Приспів.

Ти зітканий з Його волі,
Він знав очей твоїх колір
Він знав Твоє місце,
Він знав Твій час.
Тому відкрий своє серце,
Хай гріх буде стертий,
Щоб раз і назавжди забув ти про страх.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4281632_l1','pisniua_4281632','YouTube','https://www.youtube.com/watch?v=UPpVOqQekJ0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_427889';
DELETE FROM song_versions WHERE song_id = 'pisniua_427889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_427889';
DELETE FROM songs WHERE id = 'pisniua_427889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_427889','Переведіть мене через майдан','(Останнє прохання старого лірника). Музика: Денис Бережний, Сергій Нікітін Слова: Віталій Коротич. Виконує: Олег Король','uk','ukraine_1991',NULL,'2013',NULL,'1. За джерелом: це - "... оригінал "Майдану": В. Коротич. Остання пісня старого лірника. (Росіський текст відомий у перекладі Ю.Моріц)". 2. Інформаційний бюлетень ІКААПУ Інформ №47 (273) 2013 рік','Переведіть мене через майдан,
Туди, де бджоли в гречці стогнуть глухо,
Де тиша набивається у вуха.
Переведіть мене через майдан.

Переведіть мене через майдан,
Де все святкують, б''ються і воюють,
Де часом і себе й мене не чують.
Переведіть мене через майдан.

Переведіть мене через майдан,
Де я співав усіх пісень, що знаю.
Я в тишу увійду і там сконаю.
Переведіть мене через майдан

Переведіть мене через майдан,
Де жінка плаче, та, що був я з нею.
Мину її і навіть не пізнаю.
Переведіть мене через майдан.

Переведіть мене через майдан
З жалями й незабутою любов''ю.
Там дужим був і там нікчемним був я.
Переведіть мене через майдан.

Переведіть мене через майдан,
Де на тополях виснуть хмари п''яні.
Мій син тепер співає на майдані.
Переведіть мене через майдан.

Переведіть... Майдану тлумне тло
Взяло його у себе і вело ще,
Коли він впав у центрі тої площі,
А поля за майданом не було.

Переведіть мене через майдан,
Переведіть...
Майдану океан гойднувся,
Взяв й повів його в тумані.
Та згас кобзар, сконав серед Майдану,
Лиш незворушно клекотів Майдан','[''pisni.org.ua'', ''cat:philosophic'', ''cat:suspilno-politychni'', ''Філософські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_427889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_427889','Переведіть мене через майдан','Переведіть мене через майдан,
Туди, де бджоли в гречці стогнуть глухо,
Де тиша набивається у вуха.
Переведіть мене через майдан.

Переведіть мене через майдан,
Де все святкують, б''ються і воюють,
Де часом і себе й мене не чують.
Переведіть мене через майдан.

Переведіть мене через майдан,
Де я співав усіх пісень, що знаю.
Я в тишу увійду і там сконаю.
Переведіть мене через майдан

Переведіть мене через майдан,
Де жінка плаче, та, що був я з нею.
Мину її і навіть не пізнаю.
Переведіть мене через майдан.

Переведіть мене через майдан
З жалями й незабутою любов''ю.
Там дужим був і там нікчемним був я.
Переведіть мене через майдан.

Переведіть мене через майдан,
Де на тополях виснуть хмари п''яні.
Мій син тепер співає на майдані.
Переведіть мене через майдан.

Переведіть... Майдану тлумне тло
Взяло його у себе і вело ще,
Коли він впав у центрі тої площі,
А поля за майданом не було.

Переведіть мене через майдан,
Переведіть...
Майдану океан гойднувся,
Взяв й повів його в тумані.
Та згас кобзар, сконав серед Майдану,
Лиш незворушно клекотів Майдан');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_427889_l1','pisniua_427889','YouTube','https://www.youtube.com/watch?v=Ipj4GV1rRik','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_427889_l2','pisniua_427889','YouTube','https://www.youtube.com/watch?v=jIPJM48p4MY','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_427889_l3','pisniua_427889','YouTube','https://www.youtube.com/watch?v=Lf2phb9yO0Q','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_4278434';
DELETE FROM song_versions WHERE song_id = 'pisniua_4278434';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4278434';
DELETE FROM songs WHERE id = 'pisniua_4278434';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4278434','Домашнє завдання на завтра','Слова: Олександр Ірванець','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В нічному смерку
Скажений "Беркут"
Зачищав, зачищав,
Зачищав Майдан.
Кийки свистіли,
Впивались в тіло -
Так з нас робили громадян.

В кривавий спосіб
Кінчалась осінь.
Та вже на ранок зазвучав,
зазвучав нам Глас:
"Терпіти досить.
Чекати досить.
Це ж може ваш останній шанс".

Йди, брате, битись
За честь і гідність,
І яничар, яничар,
Яничар змітай.
За нами правда,
Й на неї права
Ти вже ні в кого не питай!

Хай потім кожен
Сказати зможе:
"Я захищав, захищав,
Захищав Майдан.
І цю свободу,
В бою здобуту
Я вже ніколи не віддам!"','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4278434'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4278434','Домашнє завдання на завтра','В нічному смерку
Скажений "Беркут"
Зачищав, зачищав,
Зачищав Майдан.
Кийки свистіли,
Впивались в тіло -
Так з нас робили громадян.

В кривавий спосіб
Кінчалась осінь.
Та вже на ранок зазвучав,
зазвучав нам Глас:
"Терпіти досить.
Чекати досить.
Це ж може ваш останній шанс".

Йди, брате, битись
За честь і гідність,
І яничар, яничар,
Яничар змітай.
За нами правда,
Й на неї права
Ти вже ні в кого не питай!

Хай потім кожен
Сказати зможе:
"Я захищав, захищав,
Захищав Майдан.
І цю свободу,
В бою здобуту
Я вже ніколи не віддам!"');
DELETE FROM song_links WHERE song_id = 'pisniua_4283535';
DELETE FROM song_versions WHERE song_id = 'pisniua_4283535';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4283535';
DELETE FROM songs WHERE id = 'pisniua_4283535';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4283535','Люлі, люлі, люлі, налетіли гулі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Люлі, люлі, люлі,
Налетіли гулі,
Налетіли гулі,
Та й сіли на люлі.

Стали думать і гадать,
Чим дитятко годувать:
Чи кашкою, чи медком,
Чи солодким молочком.

Колисочка не скрипить,
А дитинка спить, спить,
Колисочка люлі-люля,
А дитиночка заснула.

Вітер в пічці не гуде,
Бо дитинка спать буде,
Пташка в саду не співає,
Бо дитинка спать лягає...

Голубочка не воркує,
Бо дитиночка почує,
Голубочок не воркоче,
Бо дитинка спати хоче...

Котик спить на пічці,
А дитинка - в колисці,
Пташка - в саді у кубельці,
А дитинка - на постельці.

Коник - в стайні на сінці,
А дитинка - в колисці,
Песик - в будці на мотузці,
А дитинка - на подушці.

Жабка спить біля водички,
Лисеня - біля лисички,
Кошенятко - біля киці,
А дитинка - біля циці.

Люлі, люлі, люлечки,
Налетіли гулечки,
Налетіли гулечки,
Та й сіли на люлечки...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4283535'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4283535','Люлі, люлі, люлі, налетіли гулі','Люлі, люлі, люлі,
Налетіли гулі,
Налетіли гулі,
Та й сіли на люлі.

Стали думать і гадать,
Чим дитятко годувать:
Чи кашкою, чи медком,
Чи солодким молочком.

Колисочка не скрипить,
А дитинка спить, спить,
Колисочка люлі-люля,
А дитиночка заснула.

Вітер в пічці не гуде,
Бо дитинка спать буде,
Пташка в саду не співає,
Бо дитинка спать лягає...

Голубочка не воркує,
Бо дитиночка почує,
Голубочок не воркоче,
Бо дитинка спати хоче...

Котик спить на пічці,
А дитинка - в колисці,
Пташка - в саді у кубельці,
А дитинка - на постельці.

Коник - в стайні на сінці,
А дитинка - в колисці,
Песик - в будці на мотузці,
А дитинка - на подушці.

Жабка спить біля водички,
Лисеня - біля лисички,
Кошенятко - біля киці,
А дитинка - біля циці.

Люлі, люлі, люлечки,
Налетіли гулечки,
Налетіли гулечки,
Та й сіли на люлечки...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4283535_l1','pisniua_4283535','YouTube','https://www.youtube.com/watch?v=gsvwbnJkN4E','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4283535_l2','pisniua_4283535','YouTube','https://www.youtube.com/watch?v=t2D3Zqo_gs8','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4283232';
DELETE FROM song_versions WHERE song_id = 'pisniua_4283232';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4283232';
DELETE FROM songs WHERE id = 'pisniua_4283232';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4283232','Гімн НВК "Софія"','Музика: М. Палько Слова: М. Палько','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У зеленому куточку,
Біля парку, на горбочку,
В старовиннім місті Лева
Є прекрасна знань оселя.

Приспів:
Школо ти рідна моя!
О, Софіє, нам мудрість подай!
Україно, майбутнє твоє
В ній зростає, й радіє земля.

В ній щодня тебе чекають
Нові сторінки книжок,
Вчителі допомагають
Hам засвоїти урок.

Приспів.

Калинову рідну мову,
Рідні звичаї, пісні,
Нас навчають в рідній школі,
Як розумним стать в житті.

Приспів.

Вас ніколи не забудем
І уклін Вам, Вчителі!
Ми просити Бога будем,
Щоб зіслав дари свої!

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4283232'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4283232','Гімн НВК "Софія"','У зеленому куточку,
Біля парку, на горбочку,
В старовиннім місті Лева
Є прекрасна знань оселя.

Приспів:
Школо ти рідна моя!
О, Софіє, нам мудрість подай!
Україно, майбутнє твоє
В ній зростає, й радіє земля.

В ній щодня тебе чекають
Нові сторінки книжок,
Вчителі допомагають
Hам засвоїти урок.

Приспів.

Калинову рідну мову,
Рідні звичаї, пісні,
Нас навчають в рідній школі,
Як розумним стать в житті.

Приспів.

Вас ніколи не забудем
І уклін Вам, Вчителі!
Ми просити Бога будем,
Щоб зіслав дари свої!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_428338';
DELETE FROM song_versions WHERE song_id = 'pisniua_428338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_428338';
DELETE FROM songs WHERE id = 'pisniua_428338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_428338','В неділеньку ясне сонце сходит','(По місті Лемберку). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Самвидавний туристський пісенник: Там на Лемковині помедже горами. - Літо 1981.','Вказаний у джерелі пісенник створений українцем з Польщі Лехом Ляхом. Ймовірно, що обробка тексту й мелодії, підбір акордів здійснені ним. Ця пісня — лемківський варіант загальноукраїнської рекрутської пісні. Діалектизми: враний — вороний; Лемберк, Лемберг — Львів (у Чехії є також замок Лемберк); мундур — однострій, мундир; обруцив — обернувся; посмот — поглянь; сылзы, сызы — сльози; юж — вже.','В неділеньку ясне сонце сходит,
Ластівочка выходит;
Посмот, дівча, по місті Лемберку |(2)*
Юж ся Янчик проходит.            |

Проходит ся по місті Лемберку,
Аж му шабля сталює;
Посмот, дівча, по місті Лемберку
Юж ся Янчик шнурує.

Шнурує ся єдвабном хустечком,
Аж му сылзы падают;
Посмот, дівча, по місті Лемберку,
Юж му мундур давают.

Давают му цілий мундур його
И коника враного,
Посмот, дівча, по місті Лемберку,
Юж він сідат на нього.

А як він сів на враного коня,
Три раз він ся обруцив,
Посмот, дівча, по місті Лемберку,
Юж ся з тобом розлучив.

Розлучив ся на дві, на три слова
И на єдно знаменя;
Посмот, дівча, по місті Лемберку,
Будеш моя, або нє.
*Всі в''язки (куплети) виконуйте за взірцем першої','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:rekrutski'', ''Лемківські пісні'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_428338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_428338','В неділеньку ясне сонце сходит','В неділеньку ясне сонце сходит,
Ластівочка выходит;
Посмот, дівча, по місті Лемберку |(2)*
Юж ся Янчик проходит.            |

Проходит ся по місті Лемберку,
Аж му шабля сталює;
Посмот, дівча, по місті Лемберку
Юж ся Янчик шнурує.

Шнурує ся єдвабном хустечком,
Аж му сылзы падают;
Посмот, дівча, по місті Лемберку,
Юж му мундур давают.

Давают му цілий мундур його
И коника враного,
Посмот, дівча, по місті Лемберку,
Юж він сідат на нього.

А як він сів на враного коня,
Три раз він ся обруцив,
Посмот, дівча, по місті Лемберку,
Юж ся з тобом розлучив.

Розлучив ся на дві, на три слова
И на єдно знаменя;
Посмот, дівча, по місті Лемберку,
Будеш моя, або нє.
*Всі в''язки (куплети) виконуйте за взірцем першої');
DELETE FROM song_links WHERE song_id = 'pisniua_4274838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4274838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4274838';
DELETE FROM songs WHERE id = 'pisniua_4274838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4274838','Білий сніг','Музика: Ірина Батюк Слова: Віталій Войтко. Виконує: Гурт "Карамель"','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Наче в казці сипле сніг
Срібним сяйвом нам до ніг.
В час, коли ми щиро вірим в чудеса,
У вогнях святкових свіч
Сяє Новорічна ніч,
І так хочеться від щастя в небеса.

Приспів:
Білий, білий, білий сніг,
Білим замело ввесь світ.
І святковий дух в серцях,
Сяє щастям у очах.
Новий, Новий, Новий Рік
Із казкових йде доріг.
Білим ангельським крилом
Засіває всіх добром.
Добром...

Сніговіїв карусель
Закружляє й понесе
В Рік Новий,
Що вже підкрався на поріг.
Це найкраща в світі ніч,
Віє світлом від обличь,
І лунає, мов в дитинстві щирий сміх.

Приспів. (3)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4274838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4274838','Білий сніг','Наче в казці сипле сніг
Срібним сяйвом нам до ніг.
В час, коли ми щиро вірим в чудеса,
У вогнях святкових свіч
Сяє Новорічна ніч,
І так хочеться від щастя в небеса.

Приспів:
Білий, білий, білий сніг,
Білим замело ввесь світ.
І святковий дух в серцях,
Сяє щастям у очах.
Новий, Новий, Новий Рік
Із казкових йде доріг.
Білим ангельським крилом
Засіває всіх добром.
Добром...

Сніговіїв карусель
Закружляє й понесе
В Рік Новий,
Що вже підкрався на поріг.
Це найкраща в світі ніч,
Віє світлом від обличь,
І лунає, мов в дитинстві щирий сміх.

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4274838_l1','pisniua_4274838','YouTube','https://www.youtube.com/watch?v=8Io8rK1Pd-Y','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_428137';
DELETE FROM song_versions WHERE song_id = 'pisniua_428137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_428137';
DELETE FROM songs WHERE id = 'pisniua_428137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_428137','Гуцулка Ксеня','Музика: Ярослав Барнич Слова: Ярослав Барнич. Виконує: Василь Білоцерківський','uk','ukr_ssr_1919_1991',NULL,'1960','Українські народні романси. - К.: В-во АН УРСР, 1961. - С. 369-370.','Оскільки з авторством пісні ясності немає (є спір), то подані обидва можливі автори. Детальніше дивитись тут. Текст у джерелі поданий за збіркою: Пісні та романси українських радянських поетів. - К. 1960. - С. 210. Мелодія для трьох голосів записана від сестер Байко.','Темна нічка гори вкрила,
Полонину всю залила,
А в ній постать сніжнобіла, -
Гуцул Ксеню в ній пізнав.
Він дивився в очі сині,
Тихо спершись на соснині,
І слова ніжні любові
Він до неї промовляв:

Приспів:
Гуцулко Ксеню,
Я тобі на трембіті
Лиш одній в цілім світі
Розкажу про любов.
Душа страждає,
Звук трембіти лунає,
Та що серце кохає,
Бо гаряче, мов жар.

Вже пройшло гаряче літо,
Гуцул іншу любив скрито,
А гуцулку чорнобриву
Він в останню ніч прощав.
В Черемоші грали хвилі,
Сумували очі сині,
Тільки вітер на соснині
Сумну пісню вигравав:

Приспів','[''pisni.org.ua'', ''cat:dances'', ''cat:krasa-pryrody'', ''cat:lirychni'', ''cat:romansy'', ''cat:tango'', ''Пісні до танцю'', ''Пісні про красу природи'', ''Пісні про кохання, ліричні'', ''Романси'', ''Танґо'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_428137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_428137','Гуцулка Ксеня','Темна нічка гори вкрила,
Полонину всю залила,
А в ній постать сніжнобіла, -
Гуцул Ксеню в ній пізнав.
Він дивився в очі сині,
Тихо спершись на соснині,
І слова ніжні любові
Він до неї промовляв:

Приспів:
Гуцулко Ксеню,
Я тобі на трембіті
Лиш одній в цілім світі
Розкажу про любов.
Душа страждає,
Звук трембіти лунає,
Та що серце кохає,
Бо гаряче, мов жар.

Вже пройшло гаряче літо,
Гуцул іншу любив скрито,
А гуцулку чорнобриву
Він в останню ніч прощав.
В Черемоші грали хвилі,
Сумували очі сині,
Тільки вітер на соснині
Сумну пісню вигравав:

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_428137_l1','pisniua_428137','YouTube','https://www.youtube.com/watch?v=EF09byahiTw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_428137_l2','pisniua_428137','YouTube','https://www.youtube.com/watch?v=rmG2ei5jg84','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_428137_l3','pisniua_428137','YouTube','https://www.youtube.com/watch?v=mgFsKukcM4A','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_428137_l4','pisniua_428137','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_4282583';
DELETE FROM song_versions WHERE song_id = 'pisniua_4282583';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4282583';
DELETE FROM songs WHERE id = 'pisniua_4282583';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4282583','Богданчик','Музика: Василь Дунець Слова: Василь Дунець. Виконує: Василь Дунець','uk','ukraine_1991',NULL,NULL,'авторське подання','Аранжування і запис - Сергій Родько, бек-вокал - Таня Шарган. Пісню виконує Василь Дунець (альбом: "Я ще не се сказав").','Знову радість у нашій сім''ї -
Ангелятко з''явилось, як в сні:
Богом даний, маленький Богданчик
Гріє душу в чужій стороні.
І в далекий, кленовий цей Край
Принесе він Вкраїнський звичай,
Рідну мову і пісню свою,
В цьому я допоможу йому.

Приспів:
Рости здоровий і щасливий
На радість рідним і батькам.
Будь добрий, щирий, справедливий -
Взірцем послужиш парубкам.
Люби все рідне, серцю миле,
Вкраїни гідним сином стань.
І будь відважний та сміливий,
Як славний гетьман наш - Богдан.

Пролетять непомітно роки,
Постарієм з бабусею ми,
Ну, а ти, як найменший онучок,
Нам потіхою будеш завжди.
Але поки ще ти - немовля
І майбутнє твоє - таїна,
Просим Бога: "Тебе щоб беріг
Й нашим мріям здійснитись поміг".

Приспів. (2)','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4282583'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4282583','Богданчик','Знову радість у нашій сім''ї -
Ангелятко з''явилось, як в сні:
Богом даний, маленький Богданчик
Гріє душу в чужій стороні.
І в далекий, кленовий цей Край
Принесе він Вкраїнський звичай,
Рідну мову і пісню свою,
В цьому я допоможу йому.

Приспів:
Рости здоровий і щасливий
На радість рідним і батькам.
Будь добрий, щирий, справедливий -
Взірцем послужиш парубкам.
Люби все рідне, серцю миле,
Вкраїни гідним сином стань.
І будь відважний та сміливий,
Як славний гетьман наш - Богдан.

Пролетять непомітно роки,
Постарієм з бабусею ми,
Ну, а ти, як найменший онучок,
Нам потіхою будеш завжди.
Але поки ще ти - немовля
І майбутнє твоє - таїна,
Просим Бога: "Тебе щоб беріг
Й нашим мріям здійснитись поміг".

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4275434';
DELETE FROM song_versions WHERE song_id = 'pisniua_4275434';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4275434';
DELETE FROM songs WHERE id = 'pisniua_4275434';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4275434','Новий Рік!','Музика: Фліт Слова: Фліт. Виконує: Фліт','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сніг лоскоче лице,
Падає вниз
І накриває землю.
Ніч запалить вогні
Різні - і нам
Більше не буде темно!
Рік, ще один Рік,
Швидко як день,
Піде за обрій знову.
Ти його відпусти
І вже до нас
Хай завітає Новий рік!
Новий рік! Новий рік!

Крізь сніг подивись
Знову в цей рік
На новорічні зорі
І в останню мить
Року цього
Здійсняться мрії твої.
Хай минулий рік
З собою несе
Все, що тобі не треба,
Лиш те, що в душі
Зігріє тебе,
Ти залиши для себе!
Новий рік! Новий рік!
Новий рік! Новий рік!
Новий рік! Новий рік!

Хто ще не прийшов
І не сказав,
Доти щасливі люди.
Сніг все передасть,
Тільки скажи,
Він побуває всюди!
Час стане на мить,
Він не спішить,
Тільки цієї ночі
Те, що ти хотів
Та не сказав,
Хай скажуть твої очі!
Новий рік! Новий рік!
Новий рік! Новий рік!
Новий рік! Новий рік!

Рік, ще один рік
Як швидко він втік,
Та залишив зі мною
Всіх друзів моїх,
Що зараз стоять тут
І завжди зі мною.
Ми разом завжди,
Куди б не пішли,
За руки тримаєм міцно.
Час для нас як для вас
Щасливо летить
З друзями разом
В Новий рік!
Новий рік! Новий рік!
Новий рік! Новий рік!
Новий рік! Новий рік!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4275434'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4275434','Новий Рік!','Сніг лоскоче лице,
Падає вниз
І накриває землю.
Ніч запалить вогні
Різні - і нам
Більше не буде темно!
Рік, ще один Рік,
Швидко як день,
Піде за обрій знову.
Ти його відпусти
І вже до нас
Хай завітає Новий рік!
Новий рік! Новий рік!

Крізь сніг подивись
Знову в цей рік
На новорічні зорі
І в останню мить
Року цього
Здійсняться мрії твої.
Хай минулий рік
З собою несе
Все, що тобі не треба,
Лиш те, що в душі
Зігріє тебе,
Ти залиши для себе!
Новий рік! Новий рік!
Новий рік! Новий рік!
Новий рік! Новий рік!

Хто ще не прийшов
І не сказав,
Доти щасливі люди.
Сніг все передасть,
Тільки скажи,
Він побуває всюди!
Час стане на мить,
Він не спішить,
Тільки цієї ночі
Те, що ти хотів
Та не сказав,
Хай скажуть твої очі!
Новий рік! Новий рік!
Новий рік! Новий рік!
Новий рік! Новий рік!

Рік, ще один рік
Як швидко він втік,
Та залишив зі мною
Всіх друзів моїх,
Що зараз стоять тут
І завжди зі мною.
Ми разом завжди,
Куди б не пішли,
За руки тримаєм міцно.
Час для нас як для вас
Щасливо летить
З друзями разом
В Новий рік!
Новий рік! Новий рік!
Новий рік! Новий рік!
Новий рік! Новий рік!');
DELETE FROM song_links WHERE song_id = 'pisniua_4286535';
DELETE FROM song_versions WHERE song_id = 'pisniua_4286535';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4286535';
DELETE FROM songs WHERE id = 'pisniua_4286535';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4286535','Не покину я вас, не забуду','Українська народна пісня. Виконує: Іван Зінчик, Настя Зінчик','uk','ukraine_before_1917',NULL,NULL,'http://www.liveinternet.ru/users/doliks/post196178270','Пісню виконують Іван та Настя Зінчики.','Не покину я вас, не забуду -
Так Бог каже тобі і мені:
Турбуватись про вас завжди буду,
У стражданнях тяжких на землі.

Буду в праці Я вам помагати,
Буду силу і міць подавать,
І в годину сердечної втрати -
Буду в душу бадьорість вливать.

Не покину Я вас, не забуду, -
Коли батько і мати, й рідня
Відречуться від вас, то Я буду, -
Рідним батьком для вас з того дня.

Ніжно буду Я вас доглядати
Так, як мати маленьке дитя,
Від усякого зла зберігати;
І провадить у вічне життя.

Я самотнєє серце розважу,
Сумні думи Я геть віджену;
І розбите життя Я поладжу,
Дух засмучений в вас підкріплю.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4286535'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4286535','Не покину я вас, не забуду','Не покину я вас, не забуду -
Так Бог каже тобі і мені:
Турбуватись про вас завжди буду,
У стражданнях тяжких на землі.

Буду в праці Я вам помагати,
Буду силу і міць подавать,
І в годину сердечної втрати -
Буду в душу бадьорість вливать.

Не покину Я вас, не забуду, -
Коли батько і мати, й рідня
Відречуться від вас, то Я буду, -
Рідним батьком для вас з того дня.

Ніжно буду Я вас доглядати
Так, як мати маленьке дитя,
Від усякого зла зберігати;
І провадить у вічне життя.

Я самотнєє серце розважу,
Сумні думи Я геть віджену;
І розбите життя Я поладжу,
Дух засмучений в вас підкріплю.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4286535_l1','pisniua_4286535','YouTube','https://www.youtube.com/watch?v=9R5mN_zoE1g','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_428634';
DELETE FROM song_versions WHERE song_id = 'pisniua_428634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_428634';
DELETE FROM songs WHERE id = 'pisniua_428634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_428634','Нащо, брате','Музика: Василь Чудик Слова: Василь Чудик. Виконує: Василь Чудик','uk','ukraine_1991',NULL,NULL,'Аудіо-альбом “Василь Чудик”','bohdanko (модератор): Текст і акорди записано на слух з аудіо. Тональність оригінальна. Підбір акордів: bohdanko (www.pisni.org.ua)','Ой, Іване,   нащо, брате,
Було йти нам   воювати? -
Може б не почули ті слова
Вже зотлілі наші кості,
Як професор той зі злості
Нас гарматним м''ясом   назива...

Каже, що австрійський цісар
Дав шинелі нам і кріси,
Щоб ми воювали з москалем...
І що ми з тобов, Іване,
Наче ті дурні барани,
Йшли на смерть й не знали, нащо йдем.

Може, й так воно і було.
Ми грудьми лапали кулі,
І на шмаття дерла нас шрапнель.
Ще й свободу не здобули -
І, може, нас тому забули...
Ж правду каже все той мудрагель.

Ой, Іване, хто ж то відав,
Що воно отак все піде,
Що будеш в землі своїй - чужий?
Ліпше б далі ми лежали,
І ліпше б нас не споминали
Ані добрим словом, ні лихим.

Гірко, друже. Та згадай но,
Як хорунжий наш Михайло
На Маківці скошений упав;
Він освіти мав дві кляси...
І, може, він був також м''ясом
І не знав, завіщо воював?

Тоді ж нащо жінку кинув
І велику всю родину?
Певно, дуже цісара любив?..
Чом казав нам: "Биймось, хлопці -
І на Вкраїні встане сонце!
Натерпілись ми вже доста кривд!"

Щось не так, Іване. Годі.
Певно, бреше цей добродій,
Бо ж не задля цісарських щедрот
Зі словами "Ще не вмерла!"
Йшли ми на гарматні жерла,
Йшли за Батьківщину, за народ!

І ніколи Україну
Не поставлять на коліна,
Поки наш з Іваном дух живий.
Він міцніє з кожним часом.
Брешеш, пане, ми - не м''ясо,
Ми - народу поклик бойовий!','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_428634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_428634','Нащо, брате','Ой, Іване,   нащо, брате,
Було йти нам   воювати? -
Може б не почули ті слова
Вже зотлілі наші кості,
Як професор той зі злості
Нас гарматним м''ясом   назива...

Каже, що австрійський цісар
Дав шинелі нам і кріси,
Щоб ми воювали з москалем...
І що ми з тобов, Іване,
Наче ті дурні барани,
Йшли на смерть й не знали, нащо йдем.

Може, й так воно і було.
Ми грудьми лапали кулі,
І на шмаття дерла нас шрапнель.
Ще й свободу не здобули -
І, може, нас тому забули...
Ж правду каже все той мудрагель.

Ой, Іване, хто ж то відав,
Що воно отак все піде,
Що будеш в землі своїй - чужий?
Ліпше б далі ми лежали,
І ліпше б нас не споминали
Ані добрим словом, ні лихим.

Гірко, друже. Та згадай но,
Як хорунжий наш Михайло
На Маківці скошений упав;
Він освіти мав дві кляси...
І, може, він був також м''ясом
І не знав, завіщо воював?

Тоді ж нащо жінку кинув
І велику всю родину?
Певно, дуже цісара любив?..
Чом казав нам: "Биймось, хлопці -
І на Вкраїні встане сонце!
Натерпілись ми вже доста кривд!"

Щось не так, Іване. Годі.
Певно, бреше цей добродій,
Бо ж не задля цісарських щедрот
Зі словами "Ще не вмерла!"
Йшли ми на гарматні жерла,
Йшли за Батьківщину, за народ!

І ніколи Україну
Не поставлять на коліна,
Поки наш з Іваном дух живий.
Він міцніє з кожним часом.
Брешеш, пане, ми - не м''ясо,
Ми - народу поклик бойовий!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_428634_l1','pisniua_428634','YouTube','https://www.youtube.com/watch?v=qYtZcRe71hY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4287034';
DELETE FROM song_versions WHERE song_id = 'pisniua_4287034';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4287034';
DELETE FROM songs WHERE id = 'pisniua_4287034';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4287034','Гей, там у горах','Музика: Юрій Пясецький Слова: Андрій Пясецький','uk','ukr_ssr_1919_1991',NULL,'1929','Пластовий співаник "В дорогу", 1947 р.','Мандрівна пісня "Лісових Чортів", створена в Карпатах 1929 року. Слова: гетьм. пл. скоб. А. П''ясецький, ЛЧ Музика: скаутмайстер Ю. П''ячецький, ЛЧ','Гей, там у горах високих
Вітер свобідно гуляє,
В темних проваллях, глибоких
З шумом ялиці хиляє...
Гей, гей, гей!
Вітре, скажи нам, наш брате,
Де нам журбу заховати,
Як важкі думи прогнати,
Як твою силу придбати?
Гей, гей, гей!
Гей, та ходіть лиш за мною,
Гей у дрімучі провалля
Ми понесемось з журбою,
Скинемо в пропасть безсилля.
Гей, гей, гей!','[''pisni.org.ua'', ''cat:plastovi'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4287034'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4287034','Гей, там у горах','Гей, там у горах високих
Вітер свобідно гуляє,
В темних проваллях, глибоких
З шумом ялиці хиляє...
Гей, гей, гей!
Вітре, скажи нам, наш брате,
Де нам журбу заховати,
Як важкі думи прогнати,
Як твою силу придбати?
Гей, гей, гей!
Гей, та ходіть лиш за мною,
Гей у дрімучі провалля
Ми понесемось з журбою,
Скинемо в пропасть безсилля.
Гей, гей, гей!');
DELETE FROM song_links WHERE song_id = 'pisniua_4286735';
DELETE FROM song_versions WHERE song_id = 'pisniua_4286735';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4286735';
DELETE FROM songs WHERE id = 'pisniua_4286735';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4286735','Весільні співанки','Українська народна пісня. Виконує: Василь Зінкевич, ВІА Світязь','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'У неділю на весіллі
Музики заграли,
У неділю на весіллі
Усі танцювали.
Так заграйте, музиченьки, |
У струну тоненьку,        |
Та беру я танцювати       |
Любку молоденьку.         | (2)

Ходи, любко, танцювати,
Ходи, любко, в танець,
Не була би така гарна,
Якби не рум''янець.
Ой, заграйте співаночку,  |
Та що коротенька,         |
Покохав би я дівчину,     |
Котра молоденька!         | (2)

Ой, заграйте, музиченьки,
В струни золотії,
Хай же собі погуляють
Хлопці молодії.
А як собі я заграю,       |
Або заспіваю,             |
то здається, що літаю     |
По рідному краю!          | (2)','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4286735'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4286735','Весільні співанки','У неділю на весіллі
Музики заграли,
У неділю на весіллі
Усі танцювали.
Так заграйте, музиченьки, |
У струну тоненьку,        |
Та беру я танцювати       |
Любку молоденьку.         | (2)

Ходи, любко, танцювати,
Ходи, любко, в танець,
Не була би така гарна,
Якби не рум''янець.
Ой, заграйте співаночку,  |
Та що коротенька,         |
Покохав би я дівчину,     |
Котра молоденька!         | (2)

Ой, заграйте, музиченьки,
В струни золотії,
Хай же собі погуляють
Хлопці молодії.
А як собі я заграю,       |
Або заспіваю,             |
то здається, що літаю     |
По рідному краю!          | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4286735_l1','pisniua_4286735','YouTube','https://www.youtube.com/watch?v=7mVkktDZjUg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4287236';
DELETE FROM song_versions WHERE song_id = 'pisniua_4287236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4287236';
DELETE FROM songs WHERE id = 'pisniua_4287236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4287236','Пам’яті Небесної Сотні','(Не птахи то курличуть до нас з високості). Слова: Богдан Мельничук','uk','ukraine_1991',NULL,NULL,'інтернет',NULL,'Не птахи то курличуть до нас з високості,
То душі тих, хто не став на коліна,
Хто навік у Небесній залишився Сотні,
Щоб ми жили у чесній Україні.

Приспів:
Ти запитай себе, свій розум, свою совість,
Чи в бій пішов би за народ, за честь?
Якби тебе покликав за собою сотник,
Чи ти зумів би свій пронести хрест?

То не грона калини горять на осонні,
Кипить то кров, немов туман осінній,
Незабутніх героїв з Небесної Сотні,
Що боронили єдність України.

Приспів.

То не роси в полях на дзвінкому колоссі,
То плачуть люди ридма і чаїно
За своїми синами з Небесної Сотні,
Які за рідну впали Україну.

Приспів.','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4287236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4287236','Пам’яті Небесної Сотні','Не птахи то курличуть до нас з високості,
То душі тих, хто не став на коліна,
Хто навік у Небесній залишився Сотні,
Щоб ми жили у чесній Україні.

Приспів:
Ти запитай себе, свій розум, свою совість,
Чи в бій пішов би за народ, за честь?
Якби тебе покликав за собою сотник,
Чи ти зумів би свій пронести хрест?

То не грона калини горять на осонні,
Кипить то кров, немов туман осінній,
Незабутніх героїв з Небесної Сотні,
Що боронили єдність України.

Приспів.

То не роси в полях на дзвінкому колоссі,
То плачуть люди ридма і чаїно
За своїми синами з Небесної Сотні,
Які за рідну впали Україну.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_427636';
DELETE FROM song_versions WHERE song_id = 'pisniua_427636';
DELETE FROM songs_fts WHERE song_id = 'pisniua_427636';
DELETE FROM songs WHERE id = 'pisniua_427636';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_427636','Вірю, знаю, можемо!','Музика: Софія Федина Слова: Софія Федина. Виконує: Софія Федина','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Нам казали: "нації немає".
Нам казали: "правди не буває".
Нам каазали: "волі не здобути".
Нам казали, що "так має бути"

Запевняли: "вибору немає -
Те, що маєм ми не поміняєм".
Та народ не вірив і повстав.
Та народ піднявся і сказав:

Вірю, Знаю, Можемо -
Ми - Переможемо!!!

Нам казали, "ми не маєм права,
І народ - це ще не вся держава."
Знову кажуть, що "так має бути,
Ну а правду треба нам забути."

Більш не хочем ми чогось чекати -
Треба нам неправду подолати.
Хай почують всього світу люди -
Наш народ і був і є і буде

Вірю, Знаю, Можемо -
Ми - Переможемо!!!

Правду - захищати!
Кривду - подолати!
Волю  - боронити!
Будем краще жити!!!

Вірю, Знаю, Можемо -
Ми - Переможемо!!!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_427636'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_427636','Вірю, знаю, можемо!','Нам казали: "нації немає".
Нам казали: "правди не буває".
Нам каазали: "волі не здобути".
Нам казали, що "так має бути"

Запевняли: "вибору немає -
Те, що маєм ми не поміняєм".
Та народ не вірив і повстав.
Та народ піднявся і сказав:

Вірю, Знаю, Можемо -
Ми - Переможемо!!!

Нам казали, "ми не маєм права,
І народ - це ще не вся держава."
Знову кажуть, що "так має бути,
Ну а правду треба нам забути."

Більш не хочем ми чогось чекати -
Треба нам неправду подолати.
Хай почують всього світу люди -
Наш народ і був і є і буде

Вірю, Знаю, Можемо -
Ми - Переможемо!!!

Правду - захищати!
Кривду - подолати!
Волю  - боронити!
Будем краще жити!!!

Вірю, Знаю, Можемо -
Ми - Переможемо!!!');
DELETE FROM song_links WHERE song_id = 'pisniua_428735';
DELETE FROM song_versions WHERE song_id = 'pisniua_428735';
DELETE FROM songs_fts WHERE song_id = 'pisniua_428735';
DELETE FROM songs WHERE id = 'pisniua_428735';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_428735','Буд здрава, землице','Українська народна пісня. Виконує: Юлія Дошна','uk','ukraine_before_1917',NULL,NULL,'1. Самвидавний туристський пісенник: Там на Лемковині помедже горами. - Літо 1981. 2. Аудіо-альбом "Юлія Дошна. "Імігрант" (2005)','Вказаний у джерелі 1 пісенник створений українцем з Польщі Лехом Ляхом. Ймовірно, що обробка тексту й мелодії, підбір акордів здійснені ним. bohdanko (модератор): Текст у джерелі 2 дещо відрізняється від опублікованого тут: * Иду зарабляц піняз. Діалектизми: барз - дуже; Гамерика - Америка; даколи - деколи, колись; деси - десь; зас - знову; кусціся - кусник, кусочок, трошки (тут: недовго); миловати - кохати, любити; ниґда - ніколи; пак - потім, після; пінязы - гроші; тя -тебе; шварненьке - чарівненьке; што-м - що я; юж - вже.','Буд здрава, землице,
Иду к Гамерице,
Зарабляц иду пі_ няз. *
Буд здрава, сестричко,           |
Не плачте, ма_ мич_ ко,          |(2)
Ищы ся верну даколи зас.         |

Буд здраве, младеньке
Дівчатко шварненьке,
Што-м тя так миловав барз.
Ждий на мня кусціся,             |
Даст Бог, же вернуся             |(2)
И пак ся будем миловац зас.      |

Поїхав за горы,
За лісы, за море;
Ждали го барз довгий час.
Деси в Гамерици                  |
Спочыват в землици,              |(2)
Юж ся не верне ниґда к нам зас...|','[''pisni.org.ua'', ''cat:emigration'', ''cat:lemkivski'', ''Пісні про еміґрацію'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_428735'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_428735','Буд здрава, землице','Буд здрава, землице,
Иду к Гамерице,
Зарабляц иду пі_ няз. *
Буд здрава, сестричко,           |
Не плачте, ма_ мич_ ко,          |(2)
Ищы ся верну даколи зас.         |

Буд здраве, младеньке
Дівчатко шварненьке,
Што-м тя так миловав барз.
Ждий на мня кусціся,             |
Даст Бог, же вернуся             |(2)
И пак ся будем миловац зас.      |

Поїхав за горы,
За лісы, за море;
Ждали го барз довгий час.
Деси в Гамерици                  |
Спочыват в землици,              |(2)
Юж ся не верне ниґда к нам зас...|');
DELETE FROM song_links WHERE song_id = 'pisniua_4287737';
DELETE FROM song_versions WHERE song_id = 'pisniua_4287737';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4287737';
DELETE FROM songs WHERE id = 'pisniua_4287737';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4287737','Присяга','Музика: Skyle Слова: Skyle','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я б не скривавив, я б і не бився,
Якби не пуща, якби не птиця.
Не завагався кров я пролити,
Бо захищати - це значить любити!
Всі мої предки заговорили,
Молюсь, припавши до їх могили.
Рідні священні замшілі дуби.
За що б я боровся, якби не любив?

Приспів:
Тут українською й птиця співає.
Де ще на світі країна така є,
Мати і світло, нива і сила?
Ми б не боролись, якби не любили!
В битві, як скло, товариство лягло
За кожну дитину, за сонця тепло.
Ми б не боролись, якби не любили
Землю, яка нас усіх народила!

Я би не бився вчора і нині,
Якби не ранки в моїй Україні,
Якби не Дніпро і великі святі,
Якби не сади і жита золоті.
Матері пісня, голос, що сниться,
Скрип журавля коло криниці,
Рідне єдине кохане лице.
За що мені вмерти, якщо не за це?

Приспів. (2)','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4287737'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4287737','Присяга','Я б не скривавив, я б і не бився,
Якби не пуща, якби не птиця.
Не завагався кров я пролити,
Бо захищати - це значить любити!
Всі мої предки заговорили,
Молюсь, припавши до їх могили.
Рідні священні замшілі дуби.
За що б я боровся, якби не любив?

Приспів:
Тут українською й птиця співає.
Де ще на світі країна така є,
Мати і світло, нива і сила?
Ми б не боролись, якби не любили!
В битві, як скло, товариство лягло
За кожну дитину, за сонця тепло.
Ми б не боролись, якби не любили
Землю, яка нас усіх народила!

Я би не бився вчора і нині,
Якби не ранки в моїй Україні,
Якби не Дніпро і великі святі,
Якби не сади і жита золоті.
Матері пісня, голос, що сниться,
Скрип журавля коло криниці,
Рідне єдине кохане лице.
За що мені вмерти, якщо не за це?

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4280032';
DELETE FROM song_versions WHERE song_id = 'pisniua_4280032';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4280032';
DELETE FROM songs WHERE id = 'pisniua_4280032';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4280032','Перший клас','Музика: Л. Лизак Слова: Л. Лизак','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Перший клас навчає нас читать,
Перший клас навчає нас писать,
Головне ж — навчає всіх дітей дружить.
Через те, що разом веселіш,
Через те, що разом ми сильніш,
Через те, що разом нам цікаво жить!

Через те, що разом веселіш,
Через те, що разом ми сильніш,
Через те, що разом нам цікаво жить!

У житті найкращий — перший клас,
Через те, що все тут в перший раз:
В перший раз підручник, зошит в перший раз.
Вперше тут для нас луна дзвінок,
Вперше він покликав на урок,
І до дошки вже іти комусь із нас.

Вперше тут для нас луна дзвінок,
Вперше він покликав на урок,
І до дошки вже іти комусь із нас
В перший раз!','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4280032'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4280032','Перший клас','Перший клас навчає нас читать,
Перший клас навчає нас писать,
Головне ж — навчає всіх дітей дружить.
Через те, що разом веселіш,
Через те, що разом ми сильніш,
Через те, що разом нам цікаво жить!

Через те, що разом веселіш,
Через те, що разом ми сильніш,
Через те, що разом нам цікаво жить!

У житті найкращий — перший клас,
Через те, що все тут в перший раз:
В перший раз підручник, зошит в перший раз.
Вперше тут для нас луна дзвінок,
Вперше він покликав на урок,
І до дошки вже іти комусь із нас.

Вперше тут для нас луна дзвінок,
Вперше він покликав на урок,
І до дошки вже іти комусь із нас
В перший раз!');
DELETE FROM song_links WHERE song_id = 'pisniua_4276333';
DELETE FROM song_versions WHERE song_id = 'pisniua_4276333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4276333';
DELETE FROM songs WHERE id = 'pisniua_4276333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4276333','Ніч глибокая','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,'Пісню виконує Хор Одеської Семінарії.','Ніч глибокая, тихо сплять сади,
Тільки ти не спиш, мамо моя.
Чую шепіт твій, у молитві твоїй, |
Все повторяєш ти, ім''я моє.      | (2)

Сивина уже на висках твоїх,
Знаю матінко, що то сини.
Часто ранили, душу не думавши    |
Тихо ображена плакала ти.        | (2)

Пам''ятаю я як було колись,
Як молилася ти за мене.
Дякую тобі, моя матінко,         |
Тепер до Господа я               |
Молюсь за тебе.                  | (2)

Ось пройшли роки, ось і виріс я,
Став церкву Божію не покидать.
Дякую тобі, моя матінко,         |
По молитвах твоїх,               |
Я священником став.              | (2)','[''pisni.org.ua'', ''cat:christian'', ''cat:pro-batkiv'', ''Пісні на християнську тематику'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4276333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4276333','Ніч глибокая','Ніч глибокая, тихо сплять сади,
Тільки ти не спиш, мамо моя.
Чую шепіт твій, у молитві твоїй, |
Все повторяєш ти, ім''я моє.      | (2)

Сивина уже на висках твоїх,
Знаю матінко, що то сини.
Часто ранили, душу не думавши    |
Тихо ображена плакала ти.        | (2)

Пам''ятаю я як було колись,
Як молилася ти за мене.
Дякую тобі, моя матінко,         |
Тепер до Господа я               |
Молюсь за тебе.                  | (2)

Ось пройшли роки, ось і виріс я,
Став церкву Божію не покидать.
Дякую тобі, моя матінко,         |
По молитвах твоїх,               |
Я священником став.              | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4276333_l1','pisniua_4276333','YouTube','https://www.youtube.com/watch?v=X5IrfND23_I','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4289137';
DELETE FROM song_versions WHERE song_id = 'pisniua_4289137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4289137';
DELETE FROM songs WHERE id = 'pisniua_4289137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4289137','Окрилена мить','Музика: De Shifer Слова: De Shifer. Виконує: De Shifer','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Голос міста - крики болю,
В серці жах, думки в полоні,
В недовірі - перепони,
В непокорі - заборони.

Приспів:
Ця окрилена мить
І на серці тремтить,
Ця окрилена мить
З неба сходить...

Серед тисяч слів обману,
Що пробили в серці рани,
Світ на хвилю завмирає,
Твого кроку вже чекає.

Приспів.

Колір міста - теплий колір,
Вічне прагнення до волі,
Цих бар''єрів подолання,
Як одвічне сподівання.

Приспів.

Вже не чутно слів обману,
Що пробили в серці рани,
Світ на хвилю завмирає,
Твого кроку вже чекає.

Приспів.','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4289137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4289137','Окрилена мить','Голос міста - крики болю,
В серці жах, думки в полоні,
В недовірі - перепони,
В непокорі - заборони.

Приспів:
Ця окрилена мить
І на серці тремтить,
Ця окрилена мить
З неба сходить...

Серед тисяч слів обману,
Що пробили в серці рани,
Світ на хвилю завмирає,
Твого кроку вже чекає.

Приспів.

Колір міста - теплий колір,
Вічне прагнення до волі,
Цих бар''єрів подолання,
Як одвічне сподівання.

Приспів.

Вже не чутно слів обману,
Що пробили в серці рани,
Світ на хвилю завмирає,
Твого кроку вже чекає.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4280137';
DELETE FROM song_versions WHERE song_id = 'pisniua_4280137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4280137';
DELETE FROM songs WHERE id = 'pisniua_4280137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4280137','Перша вчителька','Слова: Ростислав Галаган','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Букварі і читанки, парти в два ряди,
Наша перша вчителька в серці назавжди.
Споришева стежечка, стежечка-мережечка,
Що водила нас ще й у перший клас,
Що водила нас ще й у перший клас.

Сонце світлі зайчики сипле у шибки,
Кришуть крейду пальчики, пишуть палички.
Добре нам читається, вчителька всміхається,
А як хтось не зна - хмуриться вона.
А як хтось не зна - хмуриться вона.

Скільки розгадали ми з нею загадок,
Скільки прочитали ми віршів і казок.
Стороною рідною, рідною-погідною
Йшли через покіс у багряний ліс,
Йшли через покіс у багряний ліс.

Наша перша вчителька інших науча,
Букварі і читанки їм вона вруча,
Споришева стежечка, стежечка-мережечка,
Інших перший раз повела у клас,
Інших перший раз повела у клас.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4280137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4280137','Перша вчителька','Букварі і читанки, парти в два ряди,
Наша перша вчителька в серці назавжди.
Споришева стежечка, стежечка-мережечка,
Що водила нас ще й у перший клас,
Що водила нас ще й у перший клас.

Сонце світлі зайчики сипле у шибки,
Кришуть крейду пальчики, пишуть палички.
Добре нам читається, вчителька всміхається,
А як хтось не зна - хмуриться вона.
А як хтось не зна - хмуриться вона.

Скільки розгадали ми з нею загадок,
Скільки прочитали ми віршів і казок.
Стороною рідною, рідною-погідною
Йшли через покіс у багряний ліс,
Йшли через покіс у багряний ліс.

Наша перша вчителька інших науча,
Букварі і читанки їм вона вруча,
Споришева стежечка, стежечка-мережечка,
Інших перший раз повела у клас,
Інших перший раз повела у клас.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4280137_l1','pisniua_4280137','YouTube','https://www.youtube.com/watch?v=L8YwrIPFv_Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4287';
DELETE FROM song_versions WHERE song_id = 'pisniua_4287';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4287';
DELETE FROM songs WHERE id = 'pisniua_4287';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4287','При долині кущ калини',NULL,'uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'При долині кущ калини
Нахилився до води.
Ти скажи, скажи, калино,
Як попала ти сюди.

Якось ранньою весною
Козак бравий прискакав.
Милувався довго мною,
А тоді з собою взяв.

Він хотів мене калину
Посадить в своїм саду.
Не довіз і в полі кинув -
Думав, що я пропаду.

Я за землю ухопилась,
Стала на ноги свої.
І навіки поселилась
Де вода і солов’ї.

Ти не дми на мене, вітре,
Я тепер не пропаду:
Наді мною сонце світить
І надалі я цвіту.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:lirychni'', ''Пісні про красу природи'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4287'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4287','При долині кущ калини','При долині кущ калини
Нахилився до води.
Ти скажи, скажи, калино,
Як попала ти сюди.

Якось ранньою весною
Козак бравий прискакав.
Милувався довго мною,
А тоді з собою взяв.

Він хотів мене калину
Посадить в своїм саду.
Не довіз і в полі кинув -
Думав, що я пропаду.

Я за землю ухопилась,
Стала на ноги свої.
І навіки поселилась
Де вода і солов’ї.

Ти не дми на мене, вітре,
Я тепер не пропаду:
Наді мною сонце світить
І надалі я цвіту.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4287_l1','pisniua_4287','YouTube','https://www.youtube.com/watch?v=FW0c6fImaqY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4287_l2','pisniua_4287','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4279889';
DELETE FROM song_versions WHERE song_id = 'pisniua_4279889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4279889';
DELETE FROM songs WHERE id = 'pisniua_4279889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4279889','Україна','Музика: Навколо Кола Слова: Світлана Гєрманова, Навколо Кола. Виконує: Світлана Гєрманова, Навколо Кола','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ти - краплина в океані,
В тобі ДНК країни,
Тут герої всі незнані,
Але духом всі єдині.
Не важливо звідки родом
І як звати твого бога,
Просто стань з її народом -
І іди до перемоги!

Приспів:
А ти люби її ніжно,
Люби в останню хвилину
Свою Україну!
Люби її грішну,
Пробач усі провини,
Підніми з колін!
А ти цілуй її рани,
Вона з тобою сильна
І навіки вільна!
Лікуй її шрами,
Вона у тебе єдина,
Твоя Україна!

Стільки років у неволі,
Без надії на свободу,
Тільки віра в кращу долю
Душу гріла всьому роду!
І від Заходу до Сходу,
Або з Півночі на Південь
Кажуть: серце має вроду,
Кажуть: тіло має сили!

Приспів.

Не важливо звідки родом
І як звати твого бога,
Просто стань з її народом -
Та іди до перемоги!

А ти люби її ніжно!
А люби її ніжно!
Свою Україну!
Люби її грішну!
Люби її грішну!
Підніми з колін!
А ти цілуй її рани,
Цілуй її рани,
Вона з тобою сильна!
Лікуй її шрами,
Лікуй її шрами,
Вона у тебе єдина!

А ти люби її ніжно!
Люби її грішну!
А ти цілуй її рани!
Лікуй її шрами!
Вона з тобою сильна
І навіки вільна!
Вона у тебе єдина,
Твоя Україна!','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4279889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4279889','Україна','Ти - краплина в океані,
В тобі ДНК країни,
Тут герої всі незнані,
Але духом всі єдині.
Не важливо звідки родом
І як звати твого бога,
Просто стань з її народом -
І іди до перемоги!

Приспів:
А ти люби її ніжно,
Люби в останню хвилину
Свою Україну!
Люби її грішну,
Пробач усі провини,
Підніми з колін!
А ти цілуй її рани,
Вона з тобою сильна
І навіки вільна!
Лікуй її шрами,
Вона у тебе єдина,
Твоя Україна!

Стільки років у неволі,
Без надії на свободу,
Тільки віра в кращу долю
Душу гріла всьому роду!
І від Заходу до Сходу,
Або з Півночі на Південь
Кажуть: серце має вроду,
Кажуть: тіло має сили!

Приспів.

Не важливо звідки родом
І як звати твого бога,
Просто стань з її народом -
Та іди до перемоги!

А ти люби її ніжно!
А люби її ніжно!
Свою Україну!
Люби її грішну!
Люби її грішну!
Підніми з колін!
А ти цілуй її рани,
Цілуй її рани,
Вона з тобою сильна!
Лікуй її шрами,
Лікуй її шрами,
Вона у тебе єдина!

А ти люби її ніжно!
Люби її грішну!
А ти цілуй її рани!
Лікуй її шрами!
Вона з тобою сильна
І навіки вільна!
Вона у тебе єдина,
Твоя Україна!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4279889_l1','pisniua_4279889','YouTube','https://www.youtube.com/watch?v=tbFwmZLwdj0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4279889_l2','pisniua_4279889','YouTube','https://www.youtube.com/watch?v=yIu8O_5dkcM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_42838';
DELETE FROM song_versions WHERE song_id = 'pisniua_42838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_42838';
DELETE FROM songs WHERE id = 'pisniua_42838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_42838','Дай ми, мила, дай ми','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Дай ми мила, дай ми          |
Хоч сім раз до раня          | (2)

Гей - гой червоного вина     |
З білого пугара.             | (2)

Дай ми, мила, дай ми         |
Доки у ня стоїть             | (2)

Гей - гой, коник вороненький |
У твоїй стодолі.             | (2)

Дай ми, мила, дай ми         |
Хоч сім раз до ночі          | (2)

Гей - гой щоби наші діти     |
Мали карі очі.               | (2)

Погаречек заспав,            |
Пляшечка го збудить,         | (2)

Гей - гой, вставай пугаричку,|
Ідзь помежи люди.            | (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_42838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_42838','Дай ми, мила, дай ми','Дай ми мила, дай ми          |
Хоч сім раз до раня          | (2)

Гей - гой червоного вина     |
З білого пугара.             | (2)

Дай ми, мила, дай ми         |
Доки у ня стоїть             | (2)

Гей - гой, коник вороненький |
У твоїй стодолі.             | (2)

Дай ми, мила, дай ми         |
Хоч сім раз до ночі          | (2)

Гей - гой щоби наші діти     |
Мали карі очі.               | (2)

Погаречек заспав,            |
Пляшечка го збудить,         | (2)

Гей - гой, вставай пугаричку,|
Ідзь помежи люди.            | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_42838_l1','pisniua_42838','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4285333';
DELETE FROM song_versions WHERE song_id = 'pisniua_4285333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4285333';
DELETE FROM songs WHERE id = 'pisniua_4285333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4285333','До школи','Музика: А. Попович Слова: М. Чепурна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Заглядає у вікно
Вересень-рум''янець.
Я не сплю - дивлюсь давно
На новенький ранець.

Пахне ранець букварем
З гарними картинками.
Вранці ранець ми берем
І йдемо стежинками.

В мене квіти у руці,
А в матусі ранець.
Сипле сонце промінці
Вересень-рум''янець.

І ведуть,
Ведуть стежинки нас
В світлий,
Світлий перший клас!','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4285333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4285333','До школи','Заглядає у вікно
Вересень-рум''янець.
Я не сплю - дивлюсь давно
На новенький ранець.

Пахне ранець букварем
З гарними картинками.
Вранці ранець ми берем
І йдемо стежинками.

В мене квіти у руці,
А в матусі ранець.
Сипле сонце промінці
Вересень-рум''янець.

І ведуть,
Ведуть стежинки нас
В світлий,
Світлий перший клас!');
DELETE FROM song_links WHERE song_id = 'pisniua_428232';
DELETE FROM song_versions WHERE song_id = 'pisniua_428232';
DELETE FROM songs_fts WHERE song_id = 'pisniua_428232';
DELETE FROM songs WHERE id = 'pisniua_428232';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_428232','А чия то хыжа','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Самвидавний туристський пісенник: Там на Лемковині помедже горами. - Літо 1981.','Вказаний у джерелі пісенник створений українцем з Польщі Лехом Ляхом. Ймовірно, що обробка тексту й мелодії, підбір акордів здійснені ним. У цьому пісеннику подані лише п''ять перших в''язок пісні, записані місцевою говіркою, вони ж у трохи "рафінованішому" вигляді подані на сайті УП у варіанті під назвою А чия ж то хижа, який взято із джерела: http://www.pisennyk.kgb.pl/narodnja/a_czyja_to.html Мені відомо сім в''язок цієї пісні, як я й подав. У такому обсязі, але також мовою, ближчою до літературної, текст пісні є тут: http://www.lemko.org/lemko/spivanky.html Діалектизми: брыдко - гидко; ку, ґу - до; лем - тільки, але; лишив-єм - я залишив (лишив-єс - ти залишив); ня - мене; посмотрити - поглянути; тераз - тепер; хыжа - хата; як-зме - як ми (як-єм - як я, як-єс - як ти, як-сте - як ви).','G
А чия то хыжа стоїт при долині,
Чиє то дівчатко шыє на машыні?           |(2)

Машина теркоче, а дівчатко плаче:
Верни же ся, верни, мій любий козаче!    |(2)

Не верну, не верну, бо не мам ку кому,
Лишив-єм дівчатко, лем сам не знам кому. |(2)

Як мы ся любили, сухы вербы цвили,
Як-зме перестали - зелены зів''яли.       |(2)

Як мы ся любили, рыбко моя, рыбко,*
Тераз ся на тебе посмотрити брыдко.      |(2)

А я тебе любив, та й буду любити,
Верну ся до тебе, як будеш просити.      |(2)

Не буду просити, дурном треба быти,
Ту мам більше хлопців, будут ня любити.  |(2)
*Варіант рядка:
Як мы ся любили, была-с як та квітка,','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_428232'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_428232','А чия то хыжа','G
А чия то хыжа стоїт при долині,
Чиє то дівчатко шыє на машыні?           |(2)

Машина теркоче, а дівчатко плаче:
Верни же ся, верни, мій любий козаче!    |(2)

Не верну, не верну, бо не мам ку кому,
Лишив-єм дівчатко, лем сам не знам кому. |(2)

Як мы ся любили, сухы вербы цвили,
Як-зме перестали - зелены зів''яли.       |(2)

Як мы ся любили, рыбко моя, рыбко,*
Тераз ся на тебе посмотрити брыдко.      |(2)

А я тебе любив, та й буду любити,
Верну ся до тебе, як будеш просити.      |(2)

Не буду просити, дурном треба быти,
Ту мам більше хлопців, будут ня любити.  |(2)
*Варіант рядка:
Як мы ся любили, была-с як та квітка,');
DELETE FROM song_links WHERE song_id = 'pisniua_4282838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4282838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4282838';
DELETE FROM songs WHERE id = 'pisniua_4282838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4282838','Усі ми ходимо по лезу бритви','Слова: Надія Красоткіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Усі ми ходимо по лезу бритви,
Хто серцем і душею не погас,
А на Майдані свічі і молитви,
По тих, хто назавжди пішов від нас
У небуття.

А так хотілось жити,
Збирати в житі волошковий цвіт,
Любити світ, дітей своїх ростити,
Але немає ні життя, ні літ...

Лиш невимовна туга на Майдані
І молитви, поклони і печаль,
Людські промови щирі, полум''яні,
Ніщо назад не повернуть, на жаль.

Майдан притих, героїв одспівали,
Та кровоточить вся душа від ран...
І люди не здалися, а повстали —
Поїдуть всі на головний Майдан.

Щоб там сказати "Ні!" проклятій владі,
Яка країну нищить і людей.
Ми кожній перемозі будем раді,
У нас багато цілей та ідей!

Хоч всі ми ходимо по лезу бритви,
Та не здамося, хай там що і як.
В нас є переконання і молитви,
І кожен з нас в душі, таки, козак!

То ж Україні, рідній неньці слава!
Героям слава! Слава їм повік!
Іди вперед, бо це твоя держава,
Якщо ти - патріот і чоловік!','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4282838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4282838','Усі ми ходимо по лезу бритви','Усі ми ходимо по лезу бритви,
Хто серцем і душею не погас,
А на Майдані свічі і молитви,
По тих, хто назавжди пішов від нас
У небуття.

А так хотілось жити,
Збирати в житі волошковий цвіт,
Любити світ, дітей своїх ростити,
Але немає ні життя, ні літ...

Лиш невимовна туга на Майдані
І молитви, поклони і печаль,
Людські промови щирі, полум''яні,
Ніщо назад не повернуть, на жаль.

Майдан притих, героїв одспівали,
Та кровоточить вся душа від ран...
І люди не здалися, а повстали —
Поїдуть всі на головний Майдан.

Щоб там сказати "Ні!" проклятій владі,
Яка країну нищить і людей.
Ми кожній перемозі будем раді,
У нас багато цілей та ідей!

Хоч всі ми ходимо по лезу бритви,
Та не здамося, хай там що і як.
В нас є переконання і молитви,
І кожен з нас в душі, таки, козак!

То ж Україні, рідній неньці слава!
Героям слава! Слава їм повік!
Іди вперед, бо це твоя держава,
Якщо ти - патріот і чоловік!');
DELETE FROM song_links WHERE song_id = 'pisniua_4278236';
DELETE FROM song_versions WHERE song_id = 'pisniua_4278236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4278236';
DELETE FROM songs WHERE id = 'pisniua_4278236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4278236','Серце плакало','Музика: Сергій Степанів Слова: Сергій Сірий. Виконує: Сергій Степанів','uk','ukraine_1991',NULL,NULL,'https://www.youtube.com/watch?v=FxMqyrkCjSI&feature=youtu.be','Цією піснею склали шану героям Небесної сотні автор тексту Сергій Сірий, автор музики та виконавець Сергій Степанів, скрипаль Тарас Видиш та студентський струнний квартет Тернопільського музичного училища.','Серце плакало.
Сльози капали.
Виливала жалі сурма...
Ясний соколе,
Ти високо вже
І тебе на землі нема.
Поміж зорями
Лан твій зорано,
Ти за рідний свій край поліг,
Бо любив його,
Боронив його.
Лиш себе вберегти не зміг.
Бо любив його,
Боронив його.
Лиш себе вберегти...

Синьо-жовтий стяг
Вився на вітрах,
Але випав із рук твоїх...
І здригнувся світ!
Смерть на злеті літ...
Як багато ти ще не встиг.
Було стільки мрій,
Та нерівний бій -
І на тілі кривавий мак...
Боже, як хотів
На своїй землі
Ти відчути свободи смак!
Боже, як хотів
На своїй землі
Ти відчути свободи...

Твоя милая,
Мов за крилами,
Приховала свою красу.
В думці погляд твій -
Вже без тебе їй
Зустрічати нову весну.
Ну, а матінка
Біля хатоньки
Посадила вишневий сад,
Аби й з неба ти
Міг побачити,
Повертатись куди назад.
Аби й з неба ти
Міг побачити,
Повертатись куди...

Серце плакало.
Сльози капали.
І сурма виливала жалі...
Ясний соколе,
Хоч високо ти,
Та лишився у серці землі.','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4278236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4278236','Серце плакало','Серце плакало.
Сльози капали.
Виливала жалі сурма...
Ясний соколе,
Ти високо вже
І тебе на землі нема.
Поміж зорями
Лан твій зорано,
Ти за рідний свій край поліг,
Бо любив його,
Боронив його.
Лиш себе вберегти не зміг.
Бо любив його,
Боронив його.
Лиш себе вберегти...

Синьо-жовтий стяг
Вився на вітрах,
Але випав із рук твоїх...
І здригнувся світ!
Смерть на злеті літ...
Як багато ти ще не встиг.
Було стільки мрій,
Та нерівний бій -
І на тілі кривавий мак...
Боже, як хотів
На своїй землі
Ти відчути свободи смак!
Боже, як хотів
На своїй землі
Ти відчути свободи...

Твоя милая,
Мов за крилами,
Приховала свою красу.
В думці погляд твій -
Вже без тебе їй
Зустрічати нову весну.
Ну, а матінка
Біля хатоньки
Посадила вишневий сад,
Аби й з неба ти
Міг побачити,
Повертатись куди назад.
Аби й з неба ти
Міг побачити,
Повертатись куди...

Серце плакало.
Сльози капали.
І сурма виливала жалі...
Ясний соколе,
Хоч високо ти,
Та лишився у серці землі.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4278236_l1','pisniua_4278236','YouTube','https://www.youtube.com/watch?v=FxMqyrkCjSI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4283735';
DELETE FROM song_versions WHERE song_id = 'pisniua_4283735';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4283735';
DELETE FROM songs WHERE id = 'pisniua_4283735';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4283735','Гімн Управління державної охорони України','Музика: Олександр Бурміцький Слова: Володимир Мельников. Виконує: Максим Апостолов','uk','ukraine_1991',NULL,'2014','МР3-Альбом "Пісні композитора Олександра Бурміцького "КОРДОН - ЦЕ ЧЕСТЬ І СЛАВА"','Гімн Управління державної охорони України написано на початку 2014 р. Пісню виконує Академічний ансамбль пісні і танцю Державної прикордонної служби України, соліст заслужений артист України - Максим Апостолов (альбом: Пісні О. Бурміцького КОРДОН - ЦЕ ЧЕСТЬ І СЛАВА).','Державна охорона України -
Прийшли ми за покликанням сюди.
Еліта війська, гордість Батьківщини,
Ми віддані державі назавжди.
Емблема золота Держохорони -
Із променями дев''ятьма зоря.
Не скаржимось на ризики і втому,
А сили рідна нам дає земля.

Приспів:
Державі, народові, закону,
Із відчуттям єдиної родини,
Ми служимо і гідно, і свідомо
Державній охороні України!

Понад усе для нас військова дружба
І дух братерства всюди з нами є.
За друзів, за Вітчизну ми на службі
Життя не пошкодуємо своє.

Прниспів.

Державна охорона України -
Прийшли ми за покликанням сюди.
Еліта війська, гордість Батьківщини,
Ми віддані державі назавжди.

Приспів','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4283735'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4283735','Гімн Управління державної охорони України','Державна охорона України -
Прийшли ми за покликанням сюди.
Еліта війська, гордість Батьківщини,
Ми віддані державі назавжди.
Емблема золота Держохорони -
Із променями дев''ятьма зоря.
Не скаржимось на ризики і втому,
А сили рідна нам дає земля.

Приспів:
Державі, народові, закону,
Із відчуттям єдиної родини,
Ми служимо і гідно, і свідомо
Державній охороні України!

Понад усе для нас військова дружба
І дух братерства всюди з нами є.
За друзів, за Вітчизну ми на службі
Життя не пошкодуємо своє.

Прниспів.

Державна охорона України -
Прийшли ми за покликанням сюди.
Еліта війська, гордість Батьківщини,
Ми віддані державі назавжди.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_4287389';
DELETE FROM song_versions WHERE song_id = 'pisniua_4287389';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4287389';
DELETE FROM songs WHERE id = 'pisniua_4287389';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4287389','Січові стрільці','Музика: Анатолій Горчинський Слова: Володимир Вихрущ','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'інтернет',NULL,'Їдуть в Бережани
Січові Стрільці,
Загоїлись рани,
Шабля у руці.
Відчини віконце,
Глянь через літа,
Засіяла сонцем
Липа Золота.

Приспів:
Гей, стрільці,
Січові Стрільці,
В дівчини троянда
Квітне на лиці.

Тут в години літні
Зацвіла роса.
Тут дуби столітні
Гладять небеса.
У гаях співучих
Ранок настає.
Під сідлом скрипучим
Кінь копитом б''є.

Приспів.','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4287389'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4287389','Січові стрільці','Їдуть в Бережани
Січові Стрільці,
Загоїлись рани,
Шабля у руці.
Відчини віконце,
Глянь через літа,
Засіяла сонцем
Липа Золота.

Приспів:
Гей, стрільці,
Січові Стрільці,
В дівчини троянда
Квітне на лиці.

Тут в години літні
Зацвіла роса.
Тут дуби столітні
Гладять небеса.
У гаях співучих
Ранок настає.
Під сідлом скрипучим
Кінь копитом б''є.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4285030';
DELETE FROM song_versions WHERE song_id = 'pisniua_4285030';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4285030';
DELETE FROM songs WHERE id = 'pisniua_4285030';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4285030','Тобі, рідний краю!','Слова: Василь Гренджі-Донський','uk','ukraine_1991',NULL,NULL,'вікіпедія',NULL,'Тобі, рідний краю, і честь, і любов,
Хай вітер гуде пісню волі.
За тисячу років і сльози, і кров
Народ твій пролив у неволі.

Він мужньо стояв у тяжкій боротьбі
За волю, за рідну державу,
Був вірним до смерті, мій краю, тобі
За правду, за честь і за славу.

У вільній Вкраїні народ наш воскрес!
Нам єдності прапор тримати,
Щоб сонце свободи світило з небес
На наші зелені Карпати.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4285030'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4285030','Тобі, рідний краю!','Тобі, рідний краю, і честь, і любов,
Хай вітер гуде пісню волі.
За тисячу років і сльози, і кров
Народ твій пролив у неволі.

Він мужньо стояв у тяжкій боротьбі
За волю, за рідну державу,
Був вірним до смерті, мій краю, тобі
За правду, за честь і за славу.

У вільній Вкраїні народ наш воскрес!
Нам єдності прапор тримати,
Щоб сонце свободи світило з небес
На наші зелені Карпати.');
DELETE FROM song_links WHERE song_id = 'pisniua_4289481';
DELETE FROM song_versions WHERE song_id = 'pisniua_4289481';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4289481';
DELETE FROM songs WHERE id = 'pisniua_4289481';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4289481','Спішить, спішить колядочка','Слова: Л. Антонова','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Сніжком запорошило все:
Стежинку і дорогу.
Спішить, спішить колядочка
До нашого порогу.

Несе вона в торбиночці
Про щастя світлу мрію,
Дарує нам колядочка
І віру, і надію!

Лунають ніжно дзвоники
Від хати і до хати.
Спішить, спішить колядочка
Нам щастя побажати!','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Дитячі пісні'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4289481'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4289481','Спішить, спішить колядочка','Сніжком запорошило все:
Стежинку і дорогу.
Спішить, спішить колядочка
До нашого порогу.

Несе вона в торбиночці
Про щастя світлу мрію,
Дарує нам колядочка
І віру, і надію!

Лунають ніжно дзвоники
Від хати і до хати.
Спішить, спішить колядочка
Нам щастя побажати!');
DELETE FROM song_links WHERE song_id = 'pisniua_4289185';
DELETE FROM song_versions WHERE song_id = 'pisniua_4289185';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4289185';
DELETE FROM songs WHERE id = 'pisniua_4289185';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4289185','Доки живуть люди','Музика: Paweł Kukiz Слова: Paweł Kukiz. Виконує: Paweł Kukiz','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ще не вмерла Україна ,
Доки живуть люди.
Вже назавжди буде жити,
Хоч би в тяжкім труді.

Приспів:
До кінця, до перемоги,
Доки на Майдані -
Дух козацький в огні гріє,
Вона не загине.

Ще не вмерла Україна,
Вона вічно живе.
Куля душі не вбиває,
Слава Україні!

Приспів. (2)','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4289185'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4289185','Доки живуть люди','Ще не вмерла Україна ,
Доки живуть люди.
Вже назавжди буде жити,
Хоч би в тяжкім труді.

Приспів:
До кінця, до перемоги,
Доки на Майдані -
Дух козацький в огні гріє,
Вона не загине.

Ще не вмерла Україна,
Вона вічно живе.
Куля душі не вбиває,
Слава Україні!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_429083';
DELETE FROM song_versions WHERE song_id = 'pisniua_429083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_429083';
DELETE FROM songs WHERE id = 'pisniua_429083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_429083','Повітря хворих ранків (Я хворію)','Музика: Ірена Карпа Слова: Ірена Карпа. Виконує: Ірена Карпа','uk','ukraine_1991',NULL,NULL,'слова розібрано на слух: Б.П.П., співає Ірена Карпа','Ірена Карпа, Фактично Самі: Б.П.П., Mp3 — http://artists.iuma.com/IUMA/Bands/Actually_Alone/index-1.html Слова — http://mirror01.iptelecom.net.ua/~fucksami/aalir.html','повітря хворих ранків
б''ється в ніздрі
я перелічу ранки
від цілунків
я хворію         | (3)
я...

в потоках каламутних
зникне ??штрика
я намочила ноги
знов до тебе
я хворію         | (3)
я...

повітря хворих ранків
б''ється в ніздрі
я перелічу ранки
від цілунків
я хворію         | (3)
я...','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_429083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_429083','Повітря хворих ранків (Я хворію)','повітря хворих ранків
б''ється в ніздрі
я перелічу ранки
від цілунків
я хворію         | (3)
я...

в потоках каламутних
зникне ??штрика
я намочила ноги
знов до тебе
я хворію         | (3)
я...

повітря хворих ранків
б''ється в ніздрі
я перелічу ранки
від цілунків
я хворію         | (3)
я...');
DELETE FROM song_links WHERE song_id = 'pisniua_429034';
DELETE FROM song_versions WHERE song_id = 'pisniua_429034';
DELETE FROM songs_fts WHERE song_id = 'pisniua_429034';
DELETE FROM songs WHERE id = 'pisniua_429034';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_429034','Падала зірка','Музика: Павло Доскоч Слова: Павло Доскоч. Виконує: Світозари, Павло Доскоч','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Вже сонце стиха скрилось за горою,
Нахилить віти стомлена верба,
Лиш я один стою, тебе чекаю,
Де ти, моя дівчино дорога?..
Приспів:
Падала зірка в вечірнє небо золота,         |
Солов''я пісня дзвеніла стиха опівночі,      |
Десь забарилась моя дівчинонька сумна...    |
Прийди до мене, дай подивлюсь я в твої очі! | (2)
Чекаю я тебе під калиною,
Дивлюсь в глибоке небо без зорі,
Напевно, я один на цілім світі
Так покохав ці ночі чарівні...
Приспів.
Кохання час прийде і не вернеться,
Засвітить нічку ранок гомінкий,
І не питай мене, дівчино мила,
Чому під вербу знов прийшов сумний?..
Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_429034'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_429034','Падала зірка','Вже сонце стиха скрилось за горою,
Нахилить віти стомлена верба,
Лиш я один стою, тебе чекаю,
Де ти, моя дівчино дорога?..
Приспів:
Падала зірка в вечірнє небо золота,         |
Солов''я пісня дзвеніла стиха опівночі,      |
Десь забарилась моя дівчинонька сумна...    |
Прийди до мене, дай подивлюсь я в твої очі! | (2)
Чекаю я тебе під калиною,
Дивлюсь в глибоке небо без зорі,
Напевно, я один на цілім світі
Так покохав ці ночі чарівні...
Приспів.
Кохання час прийде і не вернеться,
Засвітить нічку ранок гомінкий,
І не питай мене, дівчино мила,
Чому під вербу знов прийшов сумний?..
Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_429034_l1','pisniua_429034','YouTube','https://www.youtube.com/watch?v=Ow9udm99oVg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_429034_l2','pisniua_429034','YouTube','https://www.youtube.com/watch?v=5fnGiJGqehM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4289930';
DELETE FROM song_versions WHERE song_id = 'pisniua_4289930';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4289930';
DELETE FROM songs WHERE id = 'pisniua_4289930';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4289930','Мамині слова','Музика: Михайло Герц Слова: О. Бригас','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Злітають дні, не знаючи спочинку, -
У мандри син рушатиме за мить.
Окрайчиком, завиненим в хустинку,
Його матуся в путь благословить:

Приспів:
Хліба Святого візьми собі, сину,
Велика в нім сила й багатство у нім.
Сили Небесні в недобру годину
Нехай захищають тебе і твій дім.

В краях незнаних юнь лише міцніє,
А Хліб свячений душу зігріва.
В спекотний день, а чи в лиху завію
Летять до сина мамині слова:

Приспів.

Віддзвонять дзвони. Защебечуть діти.
Настане час зірковий пташенят,
В бабусиній хустині Хліба крихти
Вже поведуть в дорогу онучат.

Приспів','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4289930'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4289930','Мамині слова','Злітають дні, не знаючи спочинку, -
У мандри син рушатиме за мить.
Окрайчиком, завиненим в хустинку,
Його матуся в путь благословить:

Приспів:
Хліба Святого візьми собі, сину,
Велика в нім сила й багатство у нім.
Сили Небесні в недобру годину
Нехай захищають тебе і твій дім.

В краях незнаних юнь лише міцніє,
А Хліб свячений душу зігріва.
В спекотний день, а чи в лиху завію
Летять до сина мамині слова:

Приспів.

Віддзвонять дзвони. Защебечуть діти.
Настане час зірковий пташенят,
В бабусиній хустині Хліба крихти
Вже поведуть в дорогу онучат.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_429236';
DELETE FROM song_versions WHERE song_id = 'pisniua_429236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_429236';
DELETE FROM songs WHERE id = 'pisniua_429236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_429236','Чуєш мій друже славний Юначе','(Ми сміло в бій підем). Музика: Тарас Компаніченко, (?) Слова: Олена Теліга, (?). Виконує: Тарас Компаніченко, Хорея Козацька, Волинський народний хор','uk','ukr_ssr_1919_1991',NULL,NULL,'Співає Тарас Компаніченко: пісня Київської юнацької школи 1918р., сл. та муз. невідомого автора, редакція Т. Компаніченко. — Дух не вмирає, дух не згасає. Олег Скрипка презентує пісні барикад. Пісні Помаранчевого повстання. Кружало, 2005.','Спасительна: світ не по Правді. Українські релігійні роздуми про Воскресіння, Неволю і Спасіння. Но ми докажем своїм Клинком. Землі Святої врагу не даймо. Стежки до листків про Українські пісні. Висловлювання: Світ Правди засвітить. "Зеленеє Жито Зелене Хорошії Гості у мене": Пісні — наші Гості, їх треба вміти добре прийняти. — Народна мудрість Підбір акордів: Const','Чуєш, мій друже, славний юначе,
Як Україна стогне і плаче?
З півночі чорна постає хмара,
Рикає хижо московська навала.
Приспів:
Ми сміло в бій підем за Україну
І голови складем за Землю Рідну.
Ми сміло в бій підем за Русь Святую
І як один проллєм кров молодою.
Ворог лукавий йде на Вкраїну
Щоб обернути Край Наш в руїну.
Лава до лави станьмо як криця
На герць кривавий з ворогом бицця
Приспів.
Сміло до бою брате рушаймо,
Землі Святої врагу не даймо.
Жереб щасливий за Край вмірати,
А не в кайданах вік звікувати
Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:istorychni'', ''cat:povstanski'', ''cat:suspilno-politychni'', ''Гимни та марші'', ''Історичні пісні'', ''Повстанські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_429236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_429236','Чуєш мій друже славний Юначе','Чуєш, мій друже, славний юначе,
Як Україна стогне і плаче?
З півночі чорна постає хмара,
Рикає хижо московська навала.
Приспів:
Ми сміло в бій підем за Україну
І голови складем за Землю Рідну.
Ми сміло в бій підем за Русь Святую
І як один проллєм кров молодою.
Ворог лукавий йде на Вкраїну
Щоб обернути Край Наш в руїну.
Лава до лави станьмо як криця
На герць кривавий з ворогом бицця
Приспів.
Сміло до бою брате рушаймо,
Землі Святої врагу не даймо.
Жереб щасливий за Край вмірати,
А не в кайданах вік звікувати
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_429236_l1','pisniua_429236','YouTube','https://www.youtube.com/watch?v=VacIkXRKGa4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_429236_l2','pisniua_429236','YouTube','https://www.youtube.com/watch?v=sCpblOvToL4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_429236_l3','pisniua_429236','YouTube','https://www.youtube.com/watch?v=mlUVutmhfjM','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_429236_l4','pisniua_429236','YouTube','https://www.youtube.com/watch?v=V4xNinttXG8','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_429236_l5','pisniua_429236','YouTube','https://www.youtube.com/watch?v=g0zR2CT0Wwo','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_429236_l6','pisniua_429236','YouTube','https://www.youtube.com/watch?v=H9ufmimaUrs','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_429434';
DELETE FROM song_versions WHERE song_id = 'pisniua_429434';
DELETE FROM songs_fts WHERE song_id = 'pisniua_429434';
DELETE FROM songs WHERE id = 'pisniua_429434';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_429434','Ой був Сава в Немирові в ляхів на обіді','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Українські релігійні роздуми про Спасіння © Видавництво „Павутинонька“, Нью Йорк – Львів – Київ – Харків – Москва, 2003 2. Народні пісні в записах С. Руданського. Упор., вступна стаття і прим. Н.С. Шумади. Нотн. матер. упор. З.І. Василенко. Українські народні пісні в записах письменників. Київ, Муз. Україна 1972. 291с.','Спасительна: світ не по Правді. Українські релігійні роздуми про Воскресіння, Неволю і Спасіння. Ой Ми зіслані на признаванє. Нема в світі Правди не зіскати. Ускочили Три Козаки тай стали питати. Ти б не ходив та до Січі церкви руйнувати. А чи ж нам Панове Лицарі ой не ганьба тепера. Ой був Сава в Немирові в ляхів на обіді Ой був у Січі Старий Козак на прізвище Чалий Листки з приводу цієї Пісні: Українські реліґійні роздуми про Неволю та Спасіння Коляда і Великдень: Різдво і Відродження Світа. Бог, Різдво Світа, Прадід і Лицарі. Стежки до листків про Українські традиції.','Ой був Сава в Немирові в ляхів на обіді
Він не знає не гадає о своєї біді        | (2)

Ой чомусь мені Милі Браття мед-вино не п''ється
Десь на мене молодого бідонька кладеться (кується/прядеться) | (2)

Сідлай хлопче та сідлай малий коня вороного
А під себе малий хлопче старого гнідого  | (2)

Стоїть явір над водою в воду похилився
Іде Сава з Немирова тяжко зажурився      | (2)

Ой приїхав та пан Сава до свойого двора
Питається челядоньки чи все гаразд дома  | (2)

Ой все гаразд ой все гаразд тільки одно страшно
Виглядають із-за Гори Три Козаки  часто  | (2)

Ой сів Сава кінець столу дрібні листи пише
Його жінка молодая дитину колише         | (2)

Ой сів Сава кінець столу став листи читати
Ускочили Три Козаки тай стали питати     | (2)

Здоров здоров пане Саво як ти поживаєш
Далекії гості маєш чим їх привітаєш      | (2)

Ой не знаю Милі Браття чим же вас вітати
Породила жінка сина буду в куми брати    | (2)

Ой коли б ти пане Саво хтів у куми брати
Ти б не ходив та до Січі церкви руйнувати  | (2)','[''pisni.org.ua'', ''cat:dumy'', ''cat:istorychni'', ''cat:kozacki'', ''Думи'', ''Історичні пісні'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_429434'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_429434','Ой був Сава в Немирові в ляхів на обіді','Ой був Сава в Немирові в ляхів на обіді
Він не знає не гадає о своєї біді        | (2)

Ой чомусь мені Милі Браття мед-вино не п''ється
Десь на мене молодого бідонька кладеться (кується/прядеться) | (2)

Сідлай хлопче та сідлай малий коня вороного
А під себе малий хлопче старого гнідого  | (2)

Стоїть явір над водою в воду похилився
Іде Сава з Немирова тяжко зажурився      | (2)

Ой приїхав та пан Сава до свойого двора
Питається челядоньки чи все гаразд дома  | (2)

Ой все гаразд ой все гаразд тільки одно страшно
Виглядають із-за Гори Три Козаки  часто  | (2)

Ой сів Сава кінець столу дрібні листи пише
Його жінка молодая дитину колише         | (2)

Ой сів Сава кінець столу став листи читати
Ускочили Три Козаки тай стали питати     | (2)

Здоров здоров пане Саво як ти поживаєш
Далекії гості маєш чим їх привітаєш      | (2)

Ой не знаю Милі Браття чим же вас вітати
Породила жінка сина буду в куми брати    | (2)

Ой коли б ти пане Саво хтів у куми брати
Ти б не ходив та до Січі церкви руйнувати  | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4292436';
DELETE FROM song_versions WHERE song_id = 'pisniua_4292436';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4292436';
DELETE FROM songs WHERE id = 'pisniua_4292436';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4292436','Христос Воскрес!','Музика: Дмитро Мулик Слова: Дмитро Мулик','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Задзвенить воскресний дзвін,
І проснуться села і міста...
Люди йдуть з усіх сторін
Славити Воскреслого Христа!

Приспів:
Великий День, радіє люд увесь,    |
Привітно сяє сонечко з небес!     |
Вітаються усі: "Христос Воскрес!" |
Відповідай: "Воістину Воскрес!"   | (2)

Гарні паски й крашанки
Принесуть, щоб в церкві освятить.
Запалають свічечки,
І свята молитва зазвучить.

Приспів','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:voskresni'', ''Церковні пісні'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4292436'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4292436','Христос Воскрес!','Задзвенить воскресний дзвін,
І проснуться села і міста...
Люди йдуть з усіх сторін
Славити Воскреслого Христа!

Приспів:
Великий День, радіє люд увесь,    |
Привітно сяє сонечко з небес!     |
Вітаються усі: "Христос Воскрес!" |
Відповідай: "Воістину Воскрес!"   | (2)

Гарні паски й крашанки
Принесуть, щоб в церкві освятить.
Запалають свічечки,
І свята молитва зазвучить.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_428930';
DELETE FROM song_versions WHERE song_id = 'pisniua_428930';
DELETE FROM songs_fts WHERE song_id = 'pisniua_428930';
DELETE FROM songs WHERE id = 'pisniua_428930';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_428930','Дубки','(Ой, на горі два дубки). Українська народна пісня. Виконує: Mad Heads (XL)','uk','ukraine_before_1917',NULL,NULL,'Вадим Красноокий, лідер Mad Heads (XL)',NULL,'Ой на горі два дубки
Ой на горі два дубки
Ой на горі два дубки два дубки
Схилилися до купки

Вітер дуба хитає
Вітер дуба хитає
Вітер дуба хитає хитає
Козак дівку питає

Ой дівчино чия ти
Ой дівчино чия ти
Ой дівчино чия ти чия ти
Чи вийдеш ти гуляти

Не питайся чия я
Не питайся чия я
Не питайся чия я чия я
Вийдеш ти то й вийду я','[''pisni.org.ua'', ''cat:dances'', ''cat:polky'', ''Пісні до танцю'', ''Польки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_428930'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_428930','Дубки','Ой на горі два дубки
Ой на горі два дубки
Ой на горі два дубки два дубки
Схилилися до купки

Вітер дуба хитає
Вітер дуба хитає
Вітер дуба хитає хитає
Козак дівку питає

Ой дівчино чия ти
Ой дівчино чия ти
Ой дівчино чия ти чия ти
Чи вийдеш ти гуляти

Не питайся чия я
Не питайся чия я
Не питайся чия я чия я
Вийдеш ти то й вийду я');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_428930_l1','pisniua_428930','YouTube','https://www.youtube.com/watch?v=Lq7Wqnm0a68','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_428930_l2','pisniua_428930','YouTube','https://www.youtube.com/watch?v=e8v_MHlyGGY','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_428930_l3','pisniua_428930','YouTube','https://www.youtube.com/watch?v=QoE3je3taBA','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_428930_l4','pisniua_428930','YouTube','https://www.youtube.com/watch?v=014ePg2RoNM','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_428930_l5','pisniua_428930','YouTube','https://www.youtube.com/watch?v=GALnnMws5Lw','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_428930_l6','pisniua_428930','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_4294539';
DELETE FROM song_versions WHERE song_id = 'pisniua_4294539';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4294539';
DELETE FROM songs WHERE id = 'pisniua_4294539';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4294539','Матерям','Музика: Олександр Білаш Слова: В. Кот. Виконує: Театр пісні Джерела','uk','ukraine_1991',NULL,NULL,'https://www.youtube.com/watch?v=vwFPr-8uslM',NULL,'Ростуть сини у матерів,
В дорогу йдуть від них далеку,
А матері їх ждуть, і ждуть,
Як ждем із вирію лелеку...
Несуть вони весну красну,
Земля від них теплом зігрілась,
А матері в задумі літ
Журливо на тини схилились...

Приспів:
Сини, сини, журба, сини,
Печаль колискою гойдає,
Коли ж, сини, ви підросли?..
Прийдіть, ми ждем вас, виглядаєм...

Придіть до нас і в заметіль,
І навесні, і теплим літом,
Бо ми вас ждем біля воріт
І зацвіли вже сивим цвітом...

Приспів. (2)','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4294539'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4294539','Матерям','Ростуть сини у матерів,
В дорогу йдуть від них далеку,
А матері їх ждуть, і ждуть,
Як ждем із вирію лелеку...
Несуть вони весну красну,
Земля від них теплом зігрілась,
А матері в задумі літ
Журливо на тини схилились...

Приспів:
Сини, сини, журба, сини,
Печаль колискою гойдає,
Коли ж, сини, ви підросли?..
Прийдіть, ми ждем вас, виглядаєм...

Придіть до нас і в заметіль,
І навесні, і теплим літом,
Бо ми вас ждем біля воріт
І зацвіли вже сивим цвітом...

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_429389';
DELETE FROM song_versions WHERE song_id = 'pisniua_429389';
DELETE FROM songs_fts WHERE song_id = 'pisniua_429389';
DELETE FROM songs WHERE id = 'pisniua_429389';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_429389','Ой піду я Лугом Лугом Долиною','(Дума про Україну). Українська народна пісня. Виконує: Микола Будник','uk','ukraine_before_1917',NULL,NULL,'1. Співає зі старосвітською бандурою кобзар Микола Будник: Воскресні та Спасительні пісні © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003 2. Українські релігійні роздуми про Спасіння © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003','Українські реліґійні роздуми про Воскресіння, Неволю і Спасіння. Пісні Великодні — Спасительні: світ не по Правді. Пісні-плачі Сокола-Прадіда. "Плачуть Малі Діти нічим накормити" — Про яку їжу мова? Ой Ми зіслані на Признаванє. Нема в світі Правди не зіскати. Гей Брате Мій Орле а де ж Мої Маленькії Діти? Плачуть Малі Діти нічим накормити. Заплакала Україна така її Доля. За Дрібними Слізьми Тебе не впізнала. Гей Гук Мати Гук там де Козаки п''ють Гей гук Мати гук де козаки п''ють Ой зза Гори зза Лиману Вітер повіває Ой летіла бомба з московського поля Ой піду я Лугом Лугом-Долиною Господа Милосердного прохали та благали. Ой устань же Козаченьку. Листки з приводу цієї Пісні: Українські реліґійні пісні-роздуми про Неволю та Спасіння. Плач Сокола. Традиції Батька. Коляда і Великдень: Різдво і Відродження Світа. Еротичні містерії, тиждень від Катерини 7.12 до Калети. Доля. Св. Микола 19.12 – Народний речник перед Богом і Прадід. Рокове Коло. Стежки до листків про Українські традиції.','Ой піду я Лугом
Лугом-долиною
Гей чи не зустрінуся
З Родом-родиною

Ой Там Моя Сестра
Пшениченьку жала
Я сказав їй Драствуй вона промовчала

Ой Сестро-моя-сестро
Щож Ти горда стала
Сказав Тобі Драствуй а Ти промовчала

Ой Брате-мій-брате
Я не горда стала
За Дрібними Слізьми Тебе не впізнала

Ой Сестро-моя-сестро
Щож Ти так ізмарніла
Твоя голівонька рано посивіла

Ой Брате-мій-брате
Я того змарніла
Що Тяжкого Горя рано возиміла

На Чужому Полі
Тяжко нароблюся я
А прийду Додому важко зажурюся

Нічим протопити
Нічого зварити
Плачуть Малі Діти нічим накормити','[''pisni.org.ua'', ''cat:dumy'', ''cat:kozacki'', ''cat:socialno-pobutovi'', ''cat:suspilno-politychni'', ''Думи'', ''Козацькі пісні'', ''Соціально-побутові пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_429389'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_429389','Ой піду я Лугом Лугом Долиною','Ой піду я Лугом
Лугом-долиною
Гей чи не зустрінуся
З Родом-родиною

Ой Там Моя Сестра
Пшениченьку жала
Я сказав їй Драствуй вона промовчала

Ой Сестро-моя-сестро
Щож Ти горда стала
Сказав Тобі Драствуй а Ти промовчала

Ой Брате-мій-брате
Я не горда стала
За Дрібними Слізьми Тебе не впізнала

Ой Сестро-моя-сестро
Щож Ти так ізмарніла
Твоя голівонька рано посивіла

Ой Брате-мій-брате
Я того змарніла
Що Тяжкого Горя рано возиміла

На Чужому Полі
Тяжко нароблюся я
А прийду Додому важко зажурюся

Нічим протопити
Нічого зварити
Плачуть Малі Діти нічим накормити');
DELETE FROM song_links WHERE song_id = 'pisniua_4295787';
DELETE FROM song_versions WHERE song_id = 'pisniua_4295787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4295787';
DELETE FROM songs WHERE id = 'pisniua_4295787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4295787','Рідна Україна','Музика: Ніколо Петраш Слова: Людмила Пономаренко. Виконує: Ірина Шевченко','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Тут Карпати, біля хати
Із волошками в гаю -
Їх не можна не кохати,
Я з дитинства їх люблю!
Тут калина, горобина
Тане снігом на вустах,
Тут живе моя родина,
Червоніє мак в житах.

Приспів:
Рідна Україна, в душі єдина,
Матінко моя!
Сонячна країна, в моєму серці
На все життя!

Тут від серця і до серця
Пісня Мамина летить,
По землі барвінок в''ється
І ручай з гори біжить.
Я не знаю, де у світі
Є іще така краса,
Зорі наче в оксамиті
І безмежні небеса...

Приспів. (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4295787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4295787','Рідна Україна','Тут Карпати, біля хати
Із волошками в гаю -
Їх не можна не кохати,
Я з дитинства їх люблю!
Тут калина, горобина
Тане снігом на вустах,
Тут живе моя родина,
Червоніє мак в житах.

Приспів:
Рідна Україна, в душі єдина,
Матінко моя!
Сонячна країна, в моєму серці
На все життя!

Тут від серця і до серця
Пісня Мамина летить,
По землі барвінок в''ється
І ручай з гори біжить.
Я не знаю, де у світі
Є іще така краса,
Зорі наче в оксамиті
І безмежні небеса...

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4295787_l1','pisniua_4295787','YouTube','https://www.youtube.com/watch?v=oXWBGyfzFUc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4291939';
DELETE FROM song_versions WHERE song_id = 'pisniua_4291939';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4291939';
DELETE FROM songs WHERE id = 'pisniua_4291939';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4291939','Ти ще відкриєш очі','Музика: Руслана Слова: Олександр Ксенофонтов. Виконує: Руслана, Олександр Ксенофонтов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У чому суть,
Я не питаю.
Куди ідуть,
Чому зникають.
Хто був зажди,
І вже немає.
Лише слова
Не знають
Смерті...

Приспів:
Світло раптово зникло.
Тиша думки колише.
Може, за краєм ночі
Ти ще відкриєш очі.

Спинити все,
Ніхто не в силах.
Безсилий сміх,
І сум безсилий.
Зникає все,
Та слів не стерти.
Лише слова
Не знають
Смерті.

Приспів. (2)','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4291939'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4291939','Ти ще відкриєш очі','У чому суть,
Я не питаю.
Куди ідуть,
Чому зникають.
Хто був зажди,
І вже немає.
Лише слова
Не знають
Смерті...

Приспів:
Світло раптово зникло.
Тиша думки колише.
Може, за краєм ночі
Ти ще відкриєш очі.

Спинити все,
Ніхто не в силах.
Безсилий сміх,
І сум безсилий.
Зникає все,
Та слів не стерти.
Лише слова
Не знають
Смерті.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4291939_l1','pisniua_4291939','YouTube','https://www.youtube.com/watch?v=_v4g9q0Fut4','video',NULL,1);
