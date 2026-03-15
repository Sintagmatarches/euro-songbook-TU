DELETE FROM song_links WHERE song_id = 'pisniua_311962';
DELETE FROM song_versions WHERE song_id = 'pisniua_311962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_311962';
DELETE FROM songs WHERE id = 'pisniua_311962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_311962','Лебеді кохання','Музика: Ярослав Борута Слова: Вадим Крищенко. Виконує: Лебеді кохання','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Прилетіли лебеді,
Сіли на воді,
Звеселили ласкою
Очі молоді.
Ой, то не лебедики
Впали на крило,
То моє коханнячко |
Весну привело.    | (2)

Приспів:
Лебеді, лебеді, лебеді,
Лебеді кохання
Прилітають тільки раз -
Вперше і востаннє.
Лебеді, лебеді, лебеді, -
З радістю й журбою
Прилетіли лебеді   |
І до нас з тобою.  | (2)

Прилетіли лебеді -
Білі, наче цвіт,
Трепетною ніжністю
Затулили світ,
Заховали полечко
Й небо голубе,
Щоб я тільки бачила |
Одного тебе.        | (2)

Приспів.

Прилетіли лебеді -
Обтрусили пух.
Разом нас покликали
На квітковий луг.
Впало біле пір''ячко
На зелену віть.
Прилетіли лебеді - |
Ой, не відлетіть.  | (2)

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_311962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_311962','Лебеді кохання','Прилетіли лебеді,
Сіли на воді,
Звеселили ласкою
Очі молоді.
Ой, то не лебедики
Впали на крило,
То моє коханнячко |
Весну привело.    | (2)

Приспів:
Лебеді, лебеді, лебеді,
Лебеді кохання
Прилітають тільки раз -
Вперше і востаннє.
Лебеді, лебеді, лебеді, -
З радістю й журбою
Прилетіли лебеді   |
І до нас з тобою.  | (2)

Прилетіли лебеді -
Білі, наче цвіт,
Трепетною ніжністю
Затулили світ,
Заховали полечко
Й небо голубе,
Щоб я тільки бачила |
Одного тебе.        | (2)

Приспів.

Прилетіли лебеді -
Обтрусили пух.
Разом нас покликали
На квітковий луг.
Впало біле пір''ячко
На зелену віть.
Прилетіли лебеді - |
Ой, не відлетіть.  | (2)

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_311962_l1','pisniua_311962','YouTube','https://www.youtube.com/watch?v=jdLK9kyzpgE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_311962_l2','pisniua_311962','YouTube','https://www.youtube.com/watch?v=W8Mop39vhd4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_312560';
DELETE FROM song_versions WHERE song_id = 'pisniua_312560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_312560';
DELETE FROM songs WHERE id = 'pisniua_312560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_312560','Колискова Тиша. Вечір на дворі','Музика: Ігор Білик Слова: Богдан Сливчук','uk','ukraine_1991',NULL,NULL,'Від автора',NULL,'Тиша. Вечір на дворі,
Сонечко сховалося.
Цілу днину дітворі
Hіжно посміхалося.
Приспів:
Gm
Заснули зайчики,
Заснули білочки,
І ти, наш котику,
Засни, засни.
Gm
Заснули квіточки,
Заснули діточки,
І ти, малесенький,
Засни
Тиша. Вечір надворі,
Зіроньки з''явилися.
Спать лягайте, всі малі,
Вже за день стомилися.
Тиша. Вечір надворі
Ходить попід вікнами.
Вийшов місяць угорі,
Наче з срібла витканий.
Тиша. Вечір надворі
Ледь у вікна стукає.
Вже час спати дітворі,
Казку діти слухають.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_312560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_312560','Колискова Тиша. Вечір на дворі','Тиша. Вечір на дворі,
Сонечко сховалося.
Цілу днину дітворі
Hіжно посміхалося.
Приспів:
Gm
Заснули зайчики,
Заснули білочки,
І ти, наш котику,
Засни, засни.
Gm
Заснули квіточки,
Заснули діточки,
І ти, малесенький,
Засни
Тиша. Вечір надворі,
Зіроньки з''явилися.
Спать лягайте, всі малі,
Вже за день стомилися.
Тиша. Вечір надворі
Ходить попід вікнами.
Вийшов місяць угорі,
Наче з срібла витканий.
Тиша. Вечір надворі
Ледь у вікна стукає.
Вже час спати дітворі,
Казку діти слухають.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_312560_l1','pisniua_312560','YouTube','https://www.youtube.com/watch?v=xO5YF3PXNzE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_312560_l2','pisniua_312560','YouTube','https://www.youtube.com/watch?v=PZ4wid-B0-0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_312560_l3','pisniua_312560','YouTube','https://www.youtube.com/watch?v=TZ0cPnOilHs','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3126261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3126261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3126261';
DELETE FROM songs WHERE id = 'pisniua_3126261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3126261','Бобринець','Музика: Євген Манженко Слова: Євген Манженко. Виконує: Веселі Біоритми','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ой, який я молодець, шо поїхав в Бобринець!
Олів''є їв, холодець, з мармішеллю голубець.
Тєлєсами рухали, караоке слухали.
Погуляв красиво, видно. Спомнить тіки стидно.

Приспів:
Наливай іше, отець, за весілля, за Бобринець!
Закусю грибочком за твою за дочку.
Хай все буде на столі, лагода і мир в сім''ї!
Омине нехай капець славне місто Бобринець!

Ой, який я молодець, шо поїхав в Бобринець!
З молодим пив, з дідом, з кумами і сусідом!
Приїхав я заряджений, костюм надів наглажений.
Виглядав солідно. Спомнить тіки стидно.

Приспів.

Ой, який я молодець, шо поїхав в Бобринець!
Танцював із дружкою, говорив на вушко їй.
Шось мутив з кумою, спортив їм обої.
Погуляв солідно, видно. Спомнить тіки стидно.

Приспів.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3126261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3126261','Бобринець','Ой, який я молодець, шо поїхав в Бобринець!
Олів''є їв, холодець, з мармішеллю голубець.
Тєлєсами рухали, караоке слухали.
Погуляв красиво, видно. Спомнить тіки стидно.

Приспів:
Наливай іше, отець, за весілля, за Бобринець!
Закусю грибочком за твою за дочку.
Хай все буде на столі, лагода і мир в сім''ї!
Омине нехай капець славне місто Бобринець!

Ой, який я молодець, шо поїхав в Бобринець!
З молодим пив, з дідом, з кумами і сусідом!
Приїхав я заряджений, костюм надів наглажений.
Виглядав солідно. Спомнить тіки стидно.

Приспів.

Ой, який я молодець, шо поїхав в Бобринець!
Танцював із дружкою, говорив на вушко їй.
Шось мутив з кумою, спортив їм обої.
Погуляв солідно, видно. Спомнить тіки стидно.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3126261_l1','pisniua_3126261','YouTube','https://www.youtube.com/watch?v=SKlxPyJzLkQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3167828';
DELETE FROM song_versions WHERE song_id = 'pisniua_3167828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3167828';
DELETE FROM songs WHERE id = 'pisniua_3167828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3167828','Доня хоче спати','Слова: Платон Воронько','uk','ukraine_1991',NULL,NULL,'http://www.malecha.org.ua/',NULL,'У моєї доні
Оченята сонні,
Рученьки,
Мов з вати,
Доня
Хоче спати...

Ніч прийшла
Тихенька,
Спи,
Моя маленька...','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3167828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3167828','Доня хоче спати','У моєї доні
Оченята сонні,
Рученьки,
Мов з вати,
Доня
Хоче спати...

Ніч прийшла
Тихенька,
Спи,
Моя маленька...');
DELETE FROM song_links WHERE song_id = 'pisniua_3161364';
DELETE FROM song_versions WHERE song_id = 'pisniua_3161364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3161364';
DELETE FROM songs WHERE id = 'pisniua_3161364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3161364','Чом ти дитино не спиш?','Музика: Володимир Мотошин Слова: Світлана Кушнірук. Виконує: Володимир Мотошин','uk','ukraine_1991',NULL,NULL,NULL,NULL,'І
Зіроньки в небі, нічка настала
Чом ти, дитино, не спиш?
Спатоньки треба, - нічка сказала, -
Сил набираться, рости

Приспів:
Білка пухнаста давно вже заснула,
Бачить казковії сни.
А ведмежатка, кумедні звірятка,
Спатимуть аж до Весни.

ІІ
Спи, моя радість, сонечко мамине,
Доню кохана моя.
Он у лісочку десь під пиньочком
Спить вже мале зайченя.

Приспів.

ІІІ
Сніг за вікном і морози потріскують,
Дятел сховався в дупло.
Вкрився він пір''ячком, пахучим зіллячком
Сон пахне літнім теплом...

Приспів 2:
Сплять вже малята - дівчатка й хлоп''ятка,
Спи, моя доню, засни...
Очки заплющ, і нехай тобі сняться Найдивовижніші сни','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3161364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3161364','Чом ти дитино не спиш?','І
Зіроньки в небі, нічка настала
Чом ти, дитино, не спиш?
Спатоньки треба, - нічка сказала, -
Сил набираться, рости

Приспів:
Білка пухнаста давно вже заснула,
Бачить казковії сни.
А ведмежатка, кумедні звірятка,
Спатимуть аж до Весни.

ІІ
Спи, моя радість, сонечко мамине,
Доню кохана моя.
Он у лісочку десь під пиньочком
Спить вже мале зайченя.

Приспів.

ІІІ
Сніг за вікном і морози потріскують,
Дятел сховався в дупло.
Вкрився він пір''ячком, пахучим зіллячком
Сон пахне літнім теплом...

Приспів 2:
Сплять вже малята - дівчатка й хлоп''ятка,
Спи, моя доню, засни...
Очки заплющ, і нехай тобі сняться Найдивовижніші сни');
DELETE FROM song_links WHERE song_id = 'pisniua_3184020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3184020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3184020';
DELETE FROM songs WHERE id = 'pisniua_3184020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3184020','Упав сніжок на обніжок',NULL,'uk','ukraine_1991',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно-літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256 с.',NULL,'Упав сніжок на обніжок
Та й взявся водою.
Любнв козак дві дівчини -
Не взяв ні одної! Гу!

Упав сніжок на обніжок
Та й скоро розтане.
Ой, виходьте на вулицю,
Як вечір настане! Гу!

Ой, на нашім подвір''ячку
Високі пороги.
Хто не вийде на вулицю,
Переб''ємо ноги! Гу!

Чи й у тебе, дівчинонько,
Нерідная мати?
Усі вийшли на вулицю,
А ти лягла спати. Гу!

Ой, треба би тій матінці
Даруночок дати,
Щоб пустила свою дочку
До нас погуляти! Гу!','[''pisni.org.ua'', ''cat:podilski'', ''Пісні з Поділля'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3184020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3184020','Упав сніжок на обніжок','Упав сніжок на обніжок
Та й взявся водою.
Любнв козак дві дівчини -
Не взяв ні одної! Гу!

Упав сніжок на обніжок
Та й скоро розтане.
Ой, виходьте на вулицю,
Як вечір настане! Гу!

Ой, на нашім подвір''ячку
Високі пороги.
Хто не вийде на вулицю,
Переб''ємо ноги! Гу!

Чи й у тебе, дівчинонько,
Нерідная мати?
Усі вийшли на вулицю,
А ти лягла спати. Гу!

Ой, треба би тій матінці
Даруночок дати,
Щоб пустила свою дочку
До нас погуляти! Гу!');
DELETE FROM song_links WHERE song_id = 'pisniua_3209065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3209065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3209065';
DELETE FROM songs WHERE id = 'pisniua_3209065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3209065','Зоряна колискова','Музика: Олександр Іванько Слова: Бобришев. Виконує: Антоніна Овчаренко','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Заплутавсь місяць у гілках,
Застиг на мить,
А мо вмостивсь перепочити,
І зазирає у вікно,
Напевне, хоче обігрітись.
Його дивують рушники -
Яка краса,
А ще засмаглі паляниці,
Їх щойно вийняли з печі,
Вони гарячі й темнолиці.

А я холодний і блідий,
Холодний місяць,
Заклятий місяць ледь не плаче,
Ледь-ледь не плаче,
І зазираючи в шибки,
Кляне свою гірку невдачу.

Заходь зігрію, пригощу,
Мерщій заходь -
Господар двері прочиняє,
І диво наш незвичний гість,
У теплу хату поспішає.
Посмакував він пиріжок,
Чудовий смак,
Із самовару випив чаю,
І пропонує дітлахам:
Давайте я Вас погойдаю.

Перетворився на човна,
Перетворився,
І став малечу колисати,
Став колисати,
Недовго він їх забавляв,
Бо скоро всі схотіли спати.

Тож до сестричок зірочок,
Сестер зірок
Подався в небо він поволі,
Світив старанно цілу ніч,
Було, як вдень на сніжнім полі,
Світив всю ніч','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3209065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3209065','Зоряна колискова','Заплутавсь місяць у гілках,
Застиг на мить,
А мо вмостивсь перепочити,
І зазирає у вікно,
Напевне, хоче обігрітись.
Його дивують рушники -
Яка краса,
А ще засмаглі паляниці,
Їх щойно вийняли з печі,
Вони гарячі й темнолиці.

А я холодний і блідий,
Холодний місяць,
Заклятий місяць ледь не плаче,
Ледь-ледь не плаче,
І зазираючи в шибки,
Кляне свою гірку невдачу.

Заходь зігрію, пригощу,
Мерщій заходь -
Господар двері прочиняє,
І диво наш незвичний гість,
У теплу хату поспішає.
Посмакував він пиріжок,
Чудовий смак,
Із самовару випив чаю,
І пропонує дітлахам:
Давайте я Вас погойдаю.

Перетворився на човна,
Перетворився,
І став малечу колисати,
Став колисати,
Недовго він їх забавляв,
Бо скоро всі схотіли спати.

Тож до сестричок зірочок,
Сестер зірок
Подався в небо він поволі,
Світив старанно цілу ніч,
Було, як вдень на сніжнім полі,
Світив всю ніч');
DELETE FROM song_links WHERE song_id = 'pisniua_3219424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3219424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3219424';
DELETE FROM songs WHERE id = 'pisniua_3219424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3219424','Поглянь, яка зима','Музика: Микола Янченко Слова: Микола Янченко. Виконує: Микола Янченко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Білим снігом все довкола замело,
Заблукали коні, не знайдуть дороги,
Вже давно зими такої не було,
Мерзнуть щоки, мерзнуть руки,
Мерзнуть ноги.

Приспів:
Кума, моя кума,
Поглянь, яка зима,
Не дай пропасти
Кумові в дорозі!
Бо ти ж - моя рідня,
Я не прошу щодня,
Налий вина,
Бо згину на морозі!

Було літо, щебетали солов''ї,
Сонце в росах цілувало ранні квіти,
А тепер замерзли рученьки мої -
Не сховати, не відтерти,
Не зігріти.

Приспів.

В тебе добре серце і така ж душа,
Не дасиш пропасти у лиху негоду,
Як народиться від сірої лоша -
Твоїм іменем, кумасю, звати буду!

Приспів. (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3219424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3219424','Поглянь, яка зима','Білим снігом все довкола замело,
Заблукали коні, не знайдуть дороги,
Вже давно зими такої не було,
Мерзнуть щоки, мерзнуть руки,
Мерзнуть ноги.

Приспів:
Кума, моя кума,
Поглянь, яка зима,
Не дай пропасти
Кумові в дорозі!
Бо ти ж - моя рідня,
Я не прошу щодня,
Налий вина,
Бо згину на морозі!

Було літо, щебетали солов''ї,
Сонце в росах цілувало ранні квіти,
А тепер замерзли рученьки мої -
Не сховати, не відтерти,
Не зігріти.

Приспів.

В тебе добре серце і така ж душа,
Не дасиш пропасти у лиху негоду,
Як народиться від сірої лоша -
Твоїм іменем, кумасю, звати буду!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_322929';
DELETE FROM song_versions WHERE song_id = 'pisniua_322929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_322929';
DELETE FROM songs WHERE id = 'pisniua_322929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_322929','На цвинтарі тихім','(Який файний світ)','uk','ukraine_1991',NULL,NULL,NULL,NULL,'На цвинтарі тихім небіжчики сплять,
Лиш вітер травою хитає.
Небіжчик Павло і небіжчик Василь
Тихесенько пісню співають.

Приспів:
О, Боже, який файний світ,
Як тяжко його покидати,
Там цідять горілку, там цідять вино,
І пивом дають запивати.

Десь рипнули двері, десь гримнув костур,
Відкрилася з краю могила.
Небіжчик Павло і небіжчик Василь
Вже випили пляшку чорнила.

Приспів.

Небіжка Варвара побігла в буфет
І взяла там хліба і сала.
Для кума Павла вона взяла вина,
Горілки Гаврилові взяла.

Приспів.

Як випили всі вони тії чари,
Ой, скільки ж то було там сміху:
Скелети гриміли, кричали, ревли -
Доходило навіть до гріху.

Приспів.

На ранок картина було ось яка:
Костур Василя поламався,
Гаврило Павла відтягнув від труни,
А сам із Варваров зостався.

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_322929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_322929','На цвинтарі тихім','На цвинтарі тихім небіжчики сплять,
Лиш вітер травою хитає.
Небіжчик Павло і небіжчик Василь
Тихесенько пісню співають.

Приспів:
О, Боже, який файний світ,
Як тяжко його покидати,
Там цідять горілку, там цідять вино,
І пивом дають запивати.

Десь рипнули двері, десь гримнув костур,
Відкрилася з краю могила.
Небіжчик Павло і небіжчик Василь
Вже випили пляшку чорнила.

Приспів.

Небіжка Варвара побігла в буфет
І взяла там хліба і сала.
Для кума Павла вона взяла вина,
Горілки Гаврилові взяла.

Приспів.

Як випили всі вони тії чари,
Ой, скільки ж то було там сміху:
Скелети гриміли, кричали, ревли -
Доходило навіть до гріху.

Приспів.

На ранок картина було ось яка:
Костур Василя поламався,
Гаврило Павла відтягнув від труни,
А сам із Варваров зостався.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_322929_l1','pisniua_322929','YouTube','https://www.youtube.com/watch?v=6QKcdBqy9Og','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_322929_l2','pisniua_322929','YouTube','https://www.youtube.com/watch?v=R7hxA-1jyxk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_322929_l3','pisniua_322929','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_324869';
DELETE FROM song_versions WHERE song_id = 'pisniua_324869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_324869';
DELETE FROM songs WHERE id = 'pisniua_324869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_324869','На долині туман','Музика: Борис Буєвський Слова: Василь Діденко. Виконує: Микола Кондратюк, Дмитро Гнатюк, Рушничок','uk','ukraine_1991',NULL,NULL,'http://www3.gu.kiev.ua/CALENDAR/ualyrics/song.htm',NULL,'На долині туман,
На долині туман упав.
Мак червоний в росі,
Мак червоний в росі скупав.

По стежині дівча,
По стежині дівча ішло.
Тепле літо в очах,
Тепле літо в очах цвіло.

На долині туман,
На долині туман упав.
Білі ніжки в росі,
Білі ніжки в росі скупав.

Понад гору дівча,
Понад гору дівча ішло,
Мак червоний в село,
Мак червоний в село несло.

За дівчам тим і я,
За дівчам тим і я ступав,
Бо в долині туман,
Бо в долині туман розтав','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_324869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_324869','На долині туман','На долині туман,
На долині туман упав.
Мак червоний в росі,
Мак червоний в росі скупав.

По стежині дівча,
По стежині дівча ішло.
Тепле літо в очах,
Тепле літо в очах цвіло.

На долині туман,
На долині туман упав.
Білі ніжки в росі,
Білі ніжки в росі скупав.

Понад гору дівча,
Понад гору дівча ішло,
Мак червоний в село,
Мак червоний в село несло.

За дівчам тим і я,
За дівчам тим і я ступав,
Бо в долині туман,
Бо в долині туман розтав');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_324869_l1','pisniua_324869','YouTube','https://www.youtube.com/watch?v=RdIdvoG4CD0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_324869_l2','pisniua_324869','YouTube','https://www.youtube.com/watch?v=c81FhXKGhBk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_324869_l3','pisniua_324869','YouTube','https://www.youtube.com/watch?v=t1PE29gylzo','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_324869_l4','pisniua_324869','YouTube','https://www.youtube.com/watch?v=6ggYvWozwNc','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_324869_l5','pisniua_324869','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_325467';
DELETE FROM song_versions WHERE song_id = 'pisniua_325467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_325467';
DELETE FROM songs WHERE id = 'pisniua_325467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_325467','Ой я дiвчина Полтавка','Музика: Микола Лисенко Слова: Іван Котляревський','uk','ukraine_1991',NULL,NULL,'Текст п''єси на сайті: http://lib.ru/SU/UKRAINA/KOTLYAREVS_KIJ/natalka_.txt','Адаптовано до сучасного правопису. Останні десятиліття гарно виконувала цю пісню Народна артиска України Марія Стефюк.','Ой я дiвчина Полтавка,
А зовуть мене Наталка:
Дівка проста, не красива,    |(2)
З добрим серцем, не спесива. |

Коло мене хлопці в''ються
I за мене часто б''ються,
А я люблю Петра дуже,        |(2)
До других мені байдуже.      |

Мої подруги пустують
I зі всякими жартують,
А я без Петра скучаю         |(2)
I веселості не знаю.         |

Я з Петром моїм щаслива,
I весела, й жартівлива,
Я Петра люблю душею,         |(2)
Вiн один владіє нею.         |    Фонограма-мінус (mp3, 320 kbps)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_325467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_325467','Ой я дiвчина Полтавка','Ой я дiвчина Полтавка,
А зовуть мене Наталка:
Дівка проста, не красива,    |(2)
З добрим серцем, не спесива. |

Коло мене хлопці в''ються
I за мене часто б''ються,
А я люблю Петра дуже,        |(2)
До других мені байдуже.      |

Мої подруги пустують
I зі всякими жартують,
А я без Петра скучаю         |(2)
I веселості не знаю.         |

Я з Петром моїм щаслива,
I весела, й жартівлива,
Я Петра люблю душею,         |(2)
Вiн один владіє нею.         |    Фонограма-мінус (mp3, 320 kbps)');
DELETE FROM song_links WHERE song_id = 'pisniua_3253020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3253020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3253020';
DELETE FROM songs WHERE id = 'pisniua_3253020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3253020','Передзвони мені пізніше','Музика: Гайдамаки Слова: Олександр Ярмола. Виконує: Гайдамаки','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я занурився у бізнес із головою свій,
І криза світова лишила без надій,
Тепер я маю лиш кредити і борги,
Від яких мені нікуди не втекти.
І я ховаюся у місті між людей,
Відправив за кордон дружину і дітей,
Мої батьки отримують погрозливі дзвінки,
Мій телефон блокує ліві номери.

Передзвони мені пізніше! |
Please, call me later!   |
Передзвони мені пізніше! |
Дай мені шанс!..         | (2)

Я востаннє грошей від знайомих людей
Візьму під заставу душі свої,
Та піду в казино, усе поставлю на "0",
А розплачуватимуся душею!..

Передзвони мені пізніше!
Please, call me later!
Передзвони мені пізніше!
Дай мені шанс!..
Передзвони мені пізніше!
Please, call me later!
Передзвони мені пізніше!
Повір ще раз!..

Я - невідомий герой, моє імя - мільйон,
Моє життя - казино, моя країна - сон,
Коли все ставиш на "0",
Твій сон кінчається вмить,
Виключай телефон, блокуй усі номери!

Передзвони мені пізніше!
Please, call me later!
Передзвони мені пізніше!
Дай мені шанс!..
Передзвони мені пізніше!
Please, call me later!
Передзвони мені пізніше!
Повір ще раз!..','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3253020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3253020','Передзвони мені пізніше','Я занурився у бізнес із головою свій,
І криза світова лишила без надій,
Тепер я маю лиш кредити і борги,
Від яких мені нікуди не втекти.
І я ховаюся у місті між людей,
Відправив за кордон дружину і дітей,
Мої батьки отримують погрозливі дзвінки,
Мій телефон блокує ліві номери.

Передзвони мені пізніше! |
Please, call me later!   |
Передзвони мені пізніше! |
Дай мені шанс!..         | (2)

Я востаннє грошей від знайомих людей
Візьму під заставу душі свої,
Та піду в казино, усе поставлю на "0",
А розплачуватимуся душею!..

Передзвони мені пізніше!
Please, call me later!
Передзвони мені пізніше!
Дай мені шанс!..
Передзвони мені пізніше!
Please, call me later!
Передзвони мені пізніше!
Повір ще раз!..

Я - невідомий герой, моє імя - мільйон,
Моє життя - казино, моя країна - сон,
Коли все ставиш на "0",
Твій сон кінчається вмить,
Виключай телефон, блокуй усі номери!

Передзвони мені пізніше!
Please, call me later!
Передзвони мені пізніше!
Дай мені шанс!..
Передзвони мені пізніше!
Please, call me later!
Передзвони мені пізніше!
Повір ще раз!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3253020_l1','pisniua_3253020','YouTube','https://www.youtube.com/watch?v=uKYQPpiZDHE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3261';
DELETE FROM songs WHERE id = 'pisniua_3261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3261','Зірки мигтять','Виконує: Чорні черешні, Наталя Криничанка','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Зіpки мигтять, всі діти сплять,
Дитина хоче спати,
Засни, засни, очка замкни, -
Казку буду казати.

Був собі князь, був собі паж
І була ще цаpівна,
Жили в гаю, наче в pаю,
Кpаса кpасі не pівна.

Цаpівні тій любився князь,
Любилися обоє,
Цаpівні теж любився паж,
Любилися всі тpоє.

Але пpийшла поpа стpашна
Жоpстока смеpть наспіла,
Князя з''їв пес, пажа з''їв кіт,
Цаpівну мишка з''їла.
А-а, а-а-а-а
Цаpівну мишка з''їла.

А щоб тобі не було жаль,
Скажу лиш для pозpади:
З цукpу був князь, з тістечка паж,
Цаpівна з чоколяди.

Зіpки мигтять, всі діти сплять
Дитина хоче спати,
Засни, засни, очка замкни, -
Казку буду казати.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''cat:zhartivlyvi'', ''Дитячі пісні'', ''Колискові'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3261','Зірки мигтять','Зіpки мигтять, всі діти сплять,
Дитина хоче спати,
Засни, засни, очка замкни, -
Казку буду казати.

Був собі князь, був собі паж
І була ще цаpівна,
Жили в гаю, наче в pаю,
Кpаса кpасі не pівна.

Цаpівні тій любився князь,
Любилися обоє,
Цаpівні теж любився паж,
Любилися всі тpоє.

Але пpийшла поpа стpашна
Жоpстока смеpть наспіла,
Князя з''їв пес, пажа з''їв кіт,
Цаpівну мишка з''їла.
А-а, а-а-а-а
Цаpівну мишка з''їла.

А щоб тобі не було жаль,
Скажу лиш для pозpади:
З цукpу був князь, з тістечка паж,
Цаpівна з чоколяди.

Зіpки мигтять, всі діти сплять
Дитина хоче спати,
Засни, засни, очка замкни, -
Казку буду казати.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3261_l1','pisniua_3261','YouTube','https://www.youtube.com/watch?v=lupfLuD5jmc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3261_l2','pisniua_3261','YouTube','https://www.youtube.com/watch?v=gdQKJly4pF4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3296065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3296065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3296065';
DELETE FROM songs WHERE id = 'pisniua_3296065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3296065','Колискова','Музика: Vivienne Mort Слова: Vivienne Mort. Виконує: Vivienne Mort','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Руки лагідні дрімоти
Тихо гладять твій животик.
Лиха не існує доти,
Доки ти в її обіймах.

Сон...
Сон на крилах
Білих-білих сов...

А татко полетів у космос,
А татко там,
Татко полетів у космос,
Але ж мама завжди з тобою,
Мама тут...

Там маленьким котеняткам
Потискай м''якенькі лапки,
Чуєш, як поважно сови
Нам співають колискову?

Сон...
Без думок сумних
Казковий сон...

Там, у добрих снах рожевих,
Шелестять на квітах феї,
Там вони збирають маки,
Там ніколи ти не плакав.

Ні...
Ти ж не будеш
Плакати уві сні...

А татко полетів у космос,
А татко там,
Татко полетів у космос,
Але ж мама завжди з тобою,
Мама тут...
Але ж мама завжди з тобою,
Мама тут!..','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3296065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3296065','Колискова','Руки лагідні дрімоти
Тихо гладять твій животик.
Лиха не існує доти,
Доки ти в її обіймах.

Сон...
Сон на крилах
Білих-білих сов...

А татко полетів у космос,
А татко там,
Татко полетів у космос,
Але ж мама завжди з тобою,
Мама тут...

Там маленьким котеняткам
Потискай м''якенькі лапки,
Чуєш, як поважно сови
Нам співають колискову?

Сон...
Без думок сумних
Казковий сон...

Там, у добрих снах рожевих,
Шелестять на квітах феї,
Там вони збирають маки,
Там ніколи ти не плакав.

Ні...
Ти ж не будеш
Плакати уві сні...

А татко полетів у космос,
А татко там,
Татко полетів у космос,
Але ж мама завжди з тобою,
Мама тут...
Але ж мама завжди з тобою,
Мама тут!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3296065_l1','pisniua_3296065','YouTube','https://www.youtube.com/watch?v=J6uIah1SXnc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_331168';
DELETE FROM song_versions WHERE song_id = 'pisniua_331168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_331168';
DELETE FROM songs WHERE id = 'pisniua_331168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_331168','Спи Мій Хлопчику Прекрасний Баєчки-баю','Музика: Олександр Гречанінов Слова: народні','uk','ukraine_1991',NULL,NULL,'Співаймо Світові-Дитині: Колядки, Щедрівки та Колискові © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2002','Колискові: Світові-Дитині. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... – Мед і Ябка... Ходить Котик по Плоточку. Листки з приводу цієї Пісні: Еротичні містерії, Катерини 7.12 — Передріздвяний Святочний час. Еротичні містерії, Калета 13.12 — Передріздвяний Святочний час. Співаймо Світові-Дитині: Колядки, Щедрівки та Колискові. Стежки до листків про Українські традиції. Висловлювання: Відчути і зрозуміти. Підійміть очі ваші та гляньте на ниви, як вони пополовіли вже для жнив. І ще: Я маю їжу їсти, якої ви не знаєте. – Євангелія (від Івана)','Спи Мій Хлопчику Прекрасний Баєчки-баю
Тихо світить Місяць Ясний Баєчки-баю

Казочку тобі розкажу Баєчки-баю
Тихо Пісню проспіваю Баєчки-баю

Оченята хай дрімають Баєчки-баю
Устонька хай промовляють Баєчки-баю

До Синочка Сон прилине Баєчки-баю
І в Колисочці спочине Баєчки-баю','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_331168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_331168','Спи Мій Хлопчику Прекрасний Баєчки-баю','Спи Мій Хлопчику Прекрасний Баєчки-баю
Тихо світить Місяць Ясний Баєчки-баю

Казочку тобі розкажу Баєчки-баю
Тихо Пісню проспіваю Баєчки-баю

Оченята хай дрімають Баєчки-баю
Устонька хай промовляють Баєчки-баю

До Синочка Сон прилине Баєчки-баю
І в Колисочці спочине Баєчки-баю');
DELETE FROM song_links WHERE song_id = 'pisniua_3333121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3333121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3333121';
DELETE FROM songs WHERE id = 'pisniua_3333121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3333121','Перечекати','Музика: Darwin Слова: Darwin. Виконує: Тіна Кароль','uk','ukraine_1991',NULL,NULL,'https://www.youtube.com/watch?v=kofjCoxrOrs',NULL,'Мені здається, я тебе знаю
Уже тисячу років,
Твою адресу, твої вагання
І сльози на ноти...
Та не пророк я і може в чомусь
Ти не довіряй мені,
Лиш знай, двері не замкнені...

Приспів:
Перечекати цей дощ,      |
Перечекати цю зливу,     |
І всі негоди також       |
Ти можеш зі мною, милий! | (2)

Ти можеш зі мною, милий...

Для щастя мало дощів з грозою, -
То крапля у морі,
Аби лиш дах був над головою
І ми були двоє!..
Аби з тобою під звуки рому
На небо дивитися
І один одному снитися!..

Приспів. (2)

Ти можеш зі мною, милий...','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3333121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3333121','Перечекати','Мені здається, я тебе знаю
Уже тисячу років,
Твою адресу, твої вагання
І сльози на ноти...
Та не пророк я і може в чомусь
Ти не довіряй мені,
Лиш знай, двері не замкнені...

Приспів:
Перечекати цей дощ,      |
Перечекати цю зливу,     |
І всі негоди також       |
Ти можеш зі мною, милий! | (2)

Ти можеш зі мною, милий...

Для щастя мало дощів з грозою, -
То крапля у морі,
Аби лиш дах був над головою
І ми були двоє!..
Аби з тобою під звуки рому
На небо дивитися
І один одному снитися!..

Приспів. (2)

Ти можеш зі мною, милий...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3333121_l1','pisniua_3333121','YouTube','https://www.youtube.com/watch?v=0c6jXfON4Aw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3333121_l2','pisniua_3333121','YouTube','https://www.youtube.com/watch?v=iCupz63nBhE','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3338525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3338525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3338525';
DELETE FROM songs WHERE id = 'pisniua_3338525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3338525','Як жити без тебе','Музика: Олег Винник Слова: Олег Винник. Виконує: Олег Винник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я міг би прожити на хлібі й воді,
В пустелі, чи в горах, віддавшись меті.
Без гаджетів, кави, комфорту, тепла,
Без брендових лахів, без кола і двора.
Але я не зміг би жити без тебе,
Скажи як, я зміг би жити без тебе?..

Приспів:
Ти дала мені свої ангельські крила -
Я лечу над світом, немов, білий птах!
Я люблю! І мені вистачить сили
Все життя носити тебе на руках!

Я міг прожити без віскі й вина,
Без довгого сну, дорогого майна,
Без синього моря, без гарних доріг,
Без доброго слова, без рук чи без ніг.
Але я не зміг би жити без тебе,
Скажи як, я зміг би жити без тебе?..

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3338525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3338525','Як жити без тебе','Я міг би прожити на хлібі й воді,
В пустелі, чи в горах, віддавшись меті.
Без гаджетів, кави, комфорту, тепла,
Без брендових лахів, без кола і двора.
Але я не зміг би жити без тебе,
Скажи як, я зміг би жити без тебе?..

Приспів:
Ти дала мені свої ангельські крила -
Я лечу над світом, немов, білий птах!
Я люблю! І мені вистачить сили
Все життя носити тебе на руках!

Я міг прожити без віскі й вина,
Без довгого сну, дорогого майна,
Без синього моря, без гарних доріг,
Без доброго слова, без рук чи без ніг.
Але я не зміг би жити без тебе,
Скажи як, я зміг би жити без тебе?..

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3338525_l1','pisniua_3338525','YouTube','https://www.youtube.com/watch?v=w5KTP6Rlk74','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3338525_l2','pisniua_3338525','YouTube','https://www.youtube.com/watch?v=N3BjRp8QvSc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_333560';
DELETE FROM song_versions WHERE song_id = 'pisniua_333560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_333560';
DELETE FROM songs WHERE id = 'pisniua_333560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_333560','Може настав той час...','Музика: Роман Бучко Слова: Роман Бучко. Виконує: Роман Бучко','uk','ukraine_1991',NULL,NULL,'Добірка поезії та прози "Моя правда", © Роман Бучко, 2006 (редакція 3)','Любій Наталочці присвячую... За те, що порятувала від самотності! Наразі виконую сам. Якщо хтось бажатиме допомогти - 8 096 749 0741 Підбір акордів: Роман Бучко','І
Так несподівано...
Мрія моя збулась
Так безкорисливо...
Звучать твої слова

Може розтане сніг
Той перший сніг, що ліг
Розпачем самоти
В душі моїй...

Приспів (1):
Може настав той час...
Любити тебе одну
Може настав той час
Свічку гасити до сну
Може настав той час
Зорі нам сяють з небес...
Може настав той час,
Любити тебе.

ІІ
В тиху, священну ніч
Я тебе обніму...
Ніжністю огорну...
Скажу, що я люблю,

Піснею буду я
Мрії здійсню твої,
Долі подякую...
І прошепчу...

Приспів (1)
Приспів (2):
Певно настав той час...
Любити тебе одну
Певно настав той час
Свічку палити до сну
Певно настав той час
Зорі нам сяють з небес...
Певно настав той час,
Сказати "люблю..."
Підбір акордів:  Роман Бучко','[''pisni.org.ua'', ''cat:bardivski'', ''cat:kolyskovi'', ''cat:romansy'', ''Бардівські пісні'', ''Колискові'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_333560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_333560','Може настав той час...','І
Так несподівано...
Мрія моя збулась
Так безкорисливо...
Звучать твої слова

Може розтане сніг
Той перший сніг, що ліг
Розпачем самоти
В душі моїй...

Приспів (1):
Може настав той час...
Любити тебе одну
Може настав той час
Свічку гасити до сну
Може настав той час
Зорі нам сяють з небес...
Може настав той час,
Любити тебе.

ІІ
В тиху, священну ніч
Я тебе обніму...
Ніжністю огорну...
Скажу, що я люблю,

Піснею буду я
Мрії здійсню твої,
Долі подякую...
І прошепчу...

Приспів (1)
Приспів (2):
Певно настав той час...
Любити тебе одну
Певно настав той час
Свічку палити до сну
Певно настав той час
Зорі нам сяють з небес...
Певно настав той час,
Сказати "люблю..."
Підбір акордів:  Роман Бучко');
DELETE FROM song_links WHERE song_id = 'pisniua_33424';
DELETE FROM song_versions WHERE song_id = 'pisniua_33424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_33424';
DELETE FROM songs WHERE id = 'pisniua_33424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_33424','Розпрягайте, хлопці, коні','Музика: Іван Негребецький Слова: Іван Негребецький. Виконує: невідомий, Кубанський Козачий Хор, Рушничок, Ярослав Бурлачук','uk','ukraine_1991',NULL,NULL,'Співаник. Львів, Храм Різдва Пресвятої Богородиці, 2002.','Пісню з приспівом виконують приблизно з такою ж частотою, як і без нього. Поданий варіант приспіву трапляється у виконанні значно рідше. Anrzej. У виконанні гурту Рушничок: http://chomikuj.pl/WDR/Muzyka+Ukrai*c5*84ska/Narodowa+-+Folk+- +Regionalna/Rushnychok','Dm
Розпрягайте, хлопці, коні,
Тай лягайте спочивать.
А я піду в сад зелений,
В сад криниченьку копать.
Приспів:*
Маруся раз, два, три, калина.
Чорнявая дівчина
В саду ягоди рвала.
Копав, копав криниченьку,
У вишневому саду.
Чи не вийде дівчинонька
Рано-вранці по воду?
Приспів.
Вийшла, вийшла дівчинонька
Рано-вранці воду брать.**
А за нею козаченько
Веде коня напувать.
Приспів.
Просив, просив відеречка -
Вона йому не дала.
Дарував їй злотий перстень*** -
Вона його не взяла.
Приспів.
Знаю, знаю, дівчинонько,
Чим я тебе образив.
Що я вчора із вечора
Кращу тебе полюбив.
Приспів.
Вона ростом невеличка,
Ще й літами молода.
Руса коса до пояса,
В косі стрічка золота.
Приспів.
Запрягайте, хлопці, коні
Годі далі спочивать,
Тай поїдем в степ широкий
Славу-волю здобувать
Приспів.
*Варіант приспіву (увів Anrzej):
Маруся, раз, два, три, калина.
Чорнявая дівчина
В саду ягоди рвала,
Маруся, - Апч-хи! - Будь здорова,
Дівчино чорноброва,
Чом не любиш ти мене?
**Варіант рядка:
В сад вишневий воду брать,
***Варіант рядка:
Дарив, дарив з руки перстень -','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_33424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_33424','Розпрягайте, хлопці, коні','Dm
Розпрягайте, хлопці, коні,
Тай лягайте спочивать.
А я піду в сад зелений,
В сад криниченьку копать.
Приспів:*
Маруся раз, два, три, калина.
Чорнявая дівчина
В саду ягоди рвала.
Копав, копав криниченьку,
У вишневому саду.
Чи не вийде дівчинонька
Рано-вранці по воду?
Приспів.
Вийшла, вийшла дівчинонька
Рано-вранці воду брать.**
А за нею козаченько
Веде коня напувать.
Приспів.
Просив, просив відеречка -
Вона йому не дала.
Дарував їй злотий перстень*** -
Вона його не взяла.
Приспів.
Знаю, знаю, дівчинонько,
Чим я тебе образив.
Що я вчора із вечора
Кращу тебе полюбив.
Приспів.
Вона ростом невеличка,
Ще й літами молода.
Руса коса до пояса,
В косі стрічка золота.
Приспів.
Запрягайте, хлопці, коні
Годі далі спочивать,
Тай поїдем в степ широкий
Славу-волю здобувать
Приспів.
*Варіант приспіву (увів Anrzej):
Маруся, раз, два, три, калина.
Чорнявая дівчина
В саду ягоди рвала,
Маруся, - Апч-хи! - Будь здорова,
Дівчино чорноброва,
Чом не любиш ти мене?
**Варіант рядка:
В сад вишневий воду брать,
***Варіант рядка:
Дарив, дарив з руки перстень -');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33424_l1','pisniua_33424','YouTube','https://www.youtube.com/watch?v=tIUcAWp7MYk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33424_l2','pisniua_33424','YouTube','https://www.youtube.com/watch?v=j33KZxpHpds','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33424_l3','pisniua_33424','YouTube','https://www.youtube.com/watch?v=MZbnYe3kedc','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33424_l4','pisniua_33424','YouTube','https://www.youtube.com/watch?v=AOoz3dAWzD4','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33424_l5','pisniua_33424','YouTube','https://www.youtube.com/watch?v=-LKKXJPwrNc','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33424_l6','pisniua_33424','YouTube','https://www.youtube.com/watch?v=lnmLFq61d3Y','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33424_l7','pisniua_33424','YouTube','https://www.youtube.com/watch?v=s7WzCn0Av8Y','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33424_l8','pisniua_33424','YouTube','https://www.youtube.com/watch?v=95ep8Engnyo','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33424_l9','pisniua_33424','YouTube','https://www.youtube.com/watch?v=2N6slYXHWbA','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33424_l10','pisniua_33424','YouTube','https://www.youtube.com/watch?v=LZ5ohvPkmAk','video',NULL,10);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33424_l11','pisniua_33424','http://www.artdevice.dp.ua/work/dyk/song/song5.html','http://www.artdevice.dp.ua/work/dyk/song/song5.html','external',NULL,11);
DELETE FROM song_links WHERE song_id = 'pisniua_3368222';
DELETE FROM song_versions WHERE song_id = 'pisniua_3368222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3368222';
DELETE FROM songs WHERE id = 'pisniua_3368222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3368222','Чорне і біле','Музика: ZOZULYA Слова: ZOZULYA','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує ZOZULYA.','Злюсь на себе, що не сплю,
З тобою бути хочу!
Мабуть, тебе люблю!..
Що сталось?.. Закохалась!..
Про тебе нагадає
Усе в мені твоє!..

Приспів:
Ти - моє чорне і біле!..
Ти - половина і ціле!..
Ти - є мій гріх і спокуса!..
Ти зачепив мою душу!..
Ти - все, що знаю й не знаю!..
Ти - все що гублю й збираю!..
Ти - що змогла й не зуміла!..
Ти - усе те, що хотіла!..

Злюсь на себе, що люблю!..
І де тебе шукати?..
Без вітру не зловлю!..
Так сталось!.. - Не склалось!..

Приспів. (2)
Про тебе нагадає
Тепло, яке прийде!..

Приспів.

І ніхто не знає,
Про що душа страждає...
І ніхто, ніхто не знає,
Кому вона співає...','[''pisni.org.ua'', ''cat:lirychni'', ''cat:nostalgia'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3368222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3368222','Чорне і біле','Злюсь на себе, що не сплю,
З тобою бути хочу!
Мабуть, тебе люблю!..
Що сталось?.. Закохалась!..
Про тебе нагадає
Усе в мені твоє!..

Приспів:
Ти - моє чорне і біле!..
Ти - половина і ціле!..
Ти - є мій гріх і спокуса!..
Ти зачепив мою душу!..
Ти - все, що знаю й не знаю!..
Ти - все що гублю й збираю!..
Ти - що змогла й не зуміла!..
Ти - усе те, що хотіла!..

Злюсь на себе, що люблю!..
І де тебе шукати?..
Без вітру не зловлю!..
Так сталось!.. - Не склалось!..

Приспів. (2)
Про тебе нагадає
Тепло, яке прийде!..

Приспів.

І ніхто не знає,
Про що душа страждає...
І ніхто, ніхто не знає,
Кому вона співає...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3368222_l1','pisniua_3368222','YouTube','https://www.youtube.com/watch?v=he1v2LSai5U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3416525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3416525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3416525';
DELETE FROM songs WHERE id = 'pisniua_3416525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3416525','Світ задрімав','Музика: Андрій Мильчук Слова: Зоряна Лісевич','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Світ задрімав, тільки зорі
Тихо мигтять із небес.
Нічка  - легка і прозора,
Сповнена мрій і чудес...

Приспів:
Очка замкни й за хвилину
Небом нічним у човні
Ти попливеш у країну,
Повну казок і вогнів...
Очка замкни і для тебе
Диво-квітки зацвітуть,
Ніжні жар-птиці у небі
Сяйво своє розіллють...

Хай тобі ця колисанка
Радість несе і тепло,
Щоб цілу ніч до світанку
Затишно в снах тих було...

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3416525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3416525','Світ задрімав','Світ задрімав, тільки зорі
Тихо мигтять із небес.
Нічка  - легка і прозора,
Сповнена мрій і чудес...

Приспів:
Очка замкни й за хвилину
Небом нічним у човні
Ти попливеш у країну,
Повну казок і вогнів...
Очка замкни і для тебе
Диво-квітки зацвітуть,
Ніжні жар-птиці у небі
Сяйво своє розіллють...

Хай тобі ця колисанка
Радість несе і тепло,
Щоб цілу ніч до світанку
Затишно в снах тих було...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3416525_l1','pisniua_3416525','YouTube','https://www.youtube.com/watch?v=JuGndToW7lI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3424';
DELETE FROM songs WHERE id = 'pisniua_3424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3424','Червона рута','Музика: Володимир Івасюк Слова: Володимир Івасюк. Виконує: Софія Ротару, Назарій Яремчук, Василь Зінкевич, Смерічка, Рушничок, Володимир Івасюк, Карпати','uk','ukraine_1991',NULL,NULL,'Червона рута. Пісенник. Київ, Музична Україна, 1993','У виконання гурту Рушничок: http://chomikuj.pl/WDR/Muzyka+Ukrai*c5*84ska/Narodowa+-+Folk+-+Regionalna/Rushnychok Підбір акордів: Володимир Івасюк','Gm
Ти признайся мені,
D7
Звідки в тебе ті чари,
Cm
Я без тебе всі дні
У полоні печалі.
Може, десь у лісах
F
Ти чар-зілля шукала,
F7
Сонце-руту знайшла
І мене зчарувала?
Приспів:
Червону руту
Не шукай вечорами, -
Ти у ме_не єдина,
7
Тільки ти, повір.
Бо твоя врода -
То є чистая вода,
То є би_страя вода
З синіх гір.
Бачу я тебе в снах,
У дібровах зелених
По забутих стежках
Ти приходиш до мене.
І не треба нести
Мені квітку надії,
Бо давно уже ти
Увійшла в мої мрії.
Приспів:
Червону руту
Не шукай вечорами, -
Ти у ме_не єдина,
7
Тільки ти, повір.
Бо твоя врода -
То є чистая вода,
То є би_страя вода
Gm
З синіх гір.
7
То є би_страя вода
З синіх гір.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3424','Червона рута','Gm
Ти признайся мені,
D7
Звідки в тебе ті чари,
Cm
Я без тебе всі дні
У полоні печалі.
Може, десь у лісах
F
Ти чар-зілля шукала,
F7
Сонце-руту знайшла
І мене зчарувала?
Приспів:
Червону руту
Не шукай вечорами, -
Ти у ме_не єдина,
7
Тільки ти, повір.
Бо твоя врода -
То є чистая вода,
То є би_страя вода
З синіх гір.
Бачу я тебе в снах,
У дібровах зелених
По забутих стежках
Ти приходиш до мене.
І не треба нести
Мені квітку надії,
Бо давно уже ти
Увійшла в мої мрії.
Приспів:
Червону руту
Не шукай вечорами, -
Ти у ме_не єдина,
7
Тільки ти, повір.
Бо твоя врода -
То є чистая вода,
То є би_страя вода
Gm
З синіх гір.
7
То є би_страя вода
З синіх гір.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3424_l1','pisniua_3424','YouTube','https://www.youtube.com/watch?v=UGcx8zkdsVU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3424_l2','pisniua_3424','YouTube','https://www.youtube.com/watch?v=1ee9j--j6ko','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3424_l3','pisniua_3424','YouTube','https://www.youtube.com/watch?v=t6nXzkzh5x4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3424_l4','pisniua_3424','YouTube','https://www.youtube.com/watch?v=rS1ORVWrGPA','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3424_l5','pisniua_3424','YouTube','https://www.youtube.com/watch?v=o6UoI4jqyU4','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3424_l6','pisniua_3424','YouTube','https://www.youtube.com/watch?v=aKfAmqsFd4k','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3424_l7','pisniua_3424','YouTube','https://www.youtube.com/watch?v=WxEtfv0aaIQ','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3424_l8','pisniua_3424','YouTube','https://www.youtube.com/watch?v=_CbByQwgWK4','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3424_l9','pisniua_3424','YouTube','https://www.youtube.com/watch?v=rK3HCvTdK68','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3424_l10','pisniua_3424','YouTube','https://www.youtube.com/watch?v=hPI5l-hFXAE','video',NULL,10);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3424_l11','pisniua_3424','YouTube','https://www.youtube.com/watch?v=tnEggXLLRn8','video',NULL,11);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3424_l12','pisniua_3424','YouTube','https://www.youtube.com/watch?v=YBlJtUMWCVs','video',NULL,12);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3424_l13','pisniua_3424','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,13);
DELETE FROM song_links WHERE song_id = 'pisniua_342560';
DELETE FROM song_versions WHERE song_id = 'pisniua_342560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_342560';
DELETE FROM songs WHERE id = 'pisniua_342560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_342560','Клофелін','Музика: Ігор Мельничук Слова: Ігор Мельничук. Виконує: Брати Гадюкіни','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Четвертий день страждаю, мало їм,
Четвертий день в душі моїй печаль,
Як пригадаю теплу майську ніч
І нашу зустріч, і нічний трамвай.
Ми на "Конєчній" були вже на "ти",
Манив кущами нас весняний гай.
Купив "Чінзано" - навести панти.
Ти засміялась - буде всьо "ол райт".
Приспів:
Шо? Шо? Шось підлила до вина.
В міліції кажуть: "якийсь клофелін",
Бо обручка, получка і цепура
B        C(III)             G(III)
Щезли, як з білих яблунь дим.
Лівов руков обняв осиний стан,
Десь пів години м''яв твої вуста,
На лавці тісно, холодно в траві,
Остання думка тліла в голові.
А потім мрак!...і щезли всі вогні.
А потім світло - я лежу в кущах.
В руці бичок, віжать десь муравлі
І дві сльози на пом''ятих щоках.','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_342560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_342560','Клофелін','Четвертий день страждаю, мало їм,
Четвертий день в душі моїй печаль,
Як пригадаю теплу майську ніч
І нашу зустріч, і нічний трамвай.
Ми на "Конєчній" були вже на "ти",
Манив кущами нас весняний гай.
Купив "Чінзано" - навести панти.
Ти засміялась - буде всьо "ол райт".
Приспів:
Шо? Шо? Шось підлила до вина.
В міліції кажуть: "якийсь клофелін",
Бо обручка, получка і цепура
B        C(III)             G(III)
Щезли, як з білих яблунь дим.
Лівов руков обняв осиний стан,
Десь пів години м''яв твої вуста,
На лавці тісно, холодно в траві,
Остання думка тліла в голові.
А потім мрак!...і щезли всі вогні.
А потім світло - я лежу в кущах.
В руці бичок, віжать десь муравлі
І дві сльози на пом''ятих щоках.');
DELETE FROM song_links WHERE song_id = 'pisniua_3463020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3463020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3463020';
DELETE FROM songs WHERE id = 'pisniua_3463020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3463020','Не мовчи','Музика: YAKTAK Слова: Ярослав Карпук, Катерина Мєдвєдєва. Виконує: YAKTAK','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Лиш прошу, не мовчи,
Бо мовчання вбивало нас,
Так бувало із нами не раз,
Час рух спинив,
Засинали спина до спини...
Не мовчи!
Говори мені свої "але",
Говори про пусте й головне,
Щоб більше ми
Не спали спина до спини...

Спали спина до спини
Міняти ще не пізно,
Як мене заносить - спини,
Поцілуй ніжно!
Вранці щось розкажи
В холодній постелі,
Нехай завжди сміх твій
Бігає по стелі!
Коли тебе немає вдома
На стіні сирість,
Колюча ковдра не зігріє
Так, як твоя щирість.
На мені самотності пальто,
Я з нього так виріс...
Де любов купить?..
Де взять на виріст?

Приспів.

Не спали спина до спини...

І знаєш, я заплутався, ніби
В сітку, все життя вмістилось
В маленьку квартирку...
Новий день, і знову все по списку,
Тільки б твоє серце мені за прописку.
Вчора говорив із вічним небом,
В нього очі, як у тебе, сині теж!..
Мені більше нічого не треба,
Як біля мене заснеш!..

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3463020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3463020','Не мовчи','Приспів:
Лиш прошу, не мовчи,
Бо мовчання вбивало нас,
Так бувало із нами не раз,
Час рух спинив,
Засинали спина до спини...
Не мовчи!
Говори мені свої "але",
Говори про пусте й головне,
Щоб більше ми
Не спали спина до спини...

Спали спина до спини
Міняти ще не пізно,
Як мене заносить - спини,
Поцілуй ніжно!
Вранці щось розкажи
В холодній постелі,
Нехай завжди сміх твій
Бігає по стелі!
Коли тебе немає вдома
На стіні сирість,
Колюча ковдра не зігріє
Так, як твоя щирість.
На мені самотності пальто,
Я з нього так виріс...
Де любов купить?..
Де взять на виріст?

Приспів.

Не спали спина до спини...

І знаєш, я заплутався, ніби
В сітку, все життя вмістилось
В маленьку квартирку...
Новий день, і знову все по списку,
Тільки б твоє серце мені за прописку.
Вчора говорив із вічним небом,
В нього очі, як у тебе, сині теж!..
Мені більше нічого не треба,
Як біля мене заснеш!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3463020_l1','pisniua_3463020','YouTube','https://www.youtube.com/watch?v=JulDOMKkE70','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_348261';
DELETE FROM song_versions WHERE song_id = 'pisniua_348261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_348261';
DELETE FROM songs WHERE id = 'pisniua_348261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_348261','Студентка','Слова: народні','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Якось то було раз у маю,
Пішла студентка аж до гаю.
За нею студент з тиха манжав,       (2)
І він студентку за руку взяв.

І пішли вони в далекий ліс,
Вона стомилась, він її ніс.
Втомилась вона, втомився сам,       (2)
І посідали під дубом там.

На купу листя він назгортав,
І він студентку на руки взяв.
Що було дальше не скажу вам,        (2)
Бо особисто не був я там.

Літо минуло осінь прийшла,
Студентка в школу більш не пішла.
Зима минула, марець наспів,         (2)
В студентки чути вже такий спів.

Ой люляй, люляй синочку мій,
Студент чорнявий, то батько твій.
Ой люляй, люляй ще й засинай,       (2)
Під час кохання був місяць май.','[''pisni.org.ua'', ''cat:halycki'', ''Пісні з Галичини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_348261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_348261','Студентка','Якось то було раз у маю,
Пішла студентка аж до гаю.
За нею студент з тиха манжав,       (2)
І він студентку за руку взяв.

І пішли вони в далекий ліс,
Вона стомилась, він її ніс.
Втомилась вона, втомився сам,       (2)
І посідали під дубом там.

На купу листя він назгортав,
І він студентку на руки взяв.
Що було дальше не скажу вам,        (2)
Бо особисто не був я там.

Літо минуло осінь прийшла,
Студентка в школу більш не пішла.
Зима минула, марець наспів,         (2)
В студентки чути вже такий спів.

Ой люляй, люляй синочку мій,
Студент чорнявий, то батько твій.
Ой люляй, люляй ще й засинай,       (2)
Під час кохання був місяць май.');
DELETE FROM song_links WHERE song_id = 'pisniua_3492560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3492560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3492560';
DELETE FROM songs WHERE id = 'pisniua_3492560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3492560','За хмарами','Музика: Володимир Будейчук Слова: Лариса Архипенко. Виконує: Наталія Бучинська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приходить вечір, невипитим вином
Вплітає мрії у моє волосся...
А я тебе не бачила давно,
А я тебе й кохаю досі!..

Приспів:
За хмарами, за хмарами     |
Над річкою глибокою        |
Птахи кружляють парами,    |
А я не знаю спокою...      |
За хмарами, за хмарами     |
Голуби голубляться,        |
Як станемо ми парою,       |
То стерпиться і злюбиться! | (2)

Як станемо ми парою,
То стерпиться і злюбиться!

Без попереджень у сни приходив знов,
До тебе бігла, коханий, боса!..
А ти в мені свою любов знайшов,
Чи то мені все так здалося?..

Приспів.

Як станемо ми парою,
То стерпиться і злюбиться!','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3492560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3492560','За хмарами','Приходить вечір, невипитим вином
Вплітає мрії у моє волосся...
А я тебе не бачила давно,
А я тебе й кохаю досі!..

Приспів:
За хмарами, за хмарами     |
Над річкою глибокою        |
Птахи кружляють парами,    |
А я не знаю спокою...      |
За хмарами, за хмарами     |
Голуби голубляться,        |
Як станемо ми парою,       |
То стерпиться і злюбиться! | (2)

Як станемо ми парою,
То стерпиться і злюбиться!

Без попереджень у сни приходив знов,
До тебе бігла, коханий, боса!..
А ти в мені свою любов знайшов,
Чи то мені все так здалося?..

Приспів.

Як станемо ми парою,
То стерпиться і злюбиться!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3492560_l1','pisniua_3492560','YouTube','https://www.youtube.com/watch?v=6MlYBNP-u_I','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3492560_l2','pisniua_3492560','YouTube','https://www.youtube.com/watch?v=h8X-xzpYzH0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3515065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3515065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3515065';
DELETE FROM songs WHERE id = 'pisniua_3515065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3515065','Місто добра','Музика: Світлана Тарабарова Слова: Світлана Тарабарова','uk','ukraine_1991',NULL,NULL,'аудіозапис','Побачивши та почувши цей потужний меседж чистої любові - ви вже ніколи не залишитесь байдужими і сподіваюсь, приєднаєтесь до чарівників - янголів для маленьких дітей та всіх, хто потребує допомоги тут. Місто Добра — це місце сили та любові для дітей, жінок, бабусь та собачок. Це найбільший шелтер в Україні з медичною ліцензією, командою юристів, освітніми можливості та втіленими мріями для підопічних Міста Добра. Засновниця Міста Добра Марта Левченко разом з командою щодня шукає нові шляхи допомоги українським дітям — і в цьому дуже потрібна ваша допомога! Команда працює над розширенням Медичного центру "Дім метеликів", де важкохворі діти отримають паліативне медичне піклування, а також реабілітацію, тепло та всю можливу підтримку.','Це місто - місто добра,
Місто добра!
Це місто - місто добра!

Це місто - місто добра! |
Наш дім любові та віри! |
Це місто - місто добра! |
Місце моєї, твоєї сили! | (2)

Добра!
Серце своє не ховай, чуєш!
Добра!
Янголом стань для маленьких дітей!
Місто добра!
Серце своє не ховай, чуєш!
Місто добра!
Янголом стань для маленьких дітей!

В Місті Добра для кожного є місце!
В Місті Добра відроджуються мрії!
Тут я зустрів своїх вірних друзів!
Повірив у себе! У диво! У людяність!
І нехай-хай лунає дитячий сміх!
В місті добра
Серце б''ється одне на всі!

Це місто - місто добра! |
Наш дім любові та віри! |
Це місто - місто добра! |
Місце моєї, твоєї сили! | (2)

Добра!
Серце своє не ховай, чуєш!
Добра!
Янголом стань для маленьких дітей!
Місто добра!
Серце своє не ховай, чуєш!
Місто добра!
Янголом стань для маленьких дітей!

Я люблю наших песиків-хвостиків,
Вони такі милі-милі!
Я люблю наші прогулянки просто неба,
І смачні-смачні сніданки!
Я дякую всім, кожного дня,
Хто піклується про нас!
Дякую всім серцем!
Я вірю, я і мої друзі стануть щасливими!
І все це завдяки Місту добра!
Усміхнись, у нас є дім! Є майбутнє!
І є Україна!

Місто добра!
Серце своє не ховай, чуєш!
Добра!
Янголом стань для маленьких дітей!
Місто добра!
Серце своє не ховай, чуєш!
Місто добра!
Янголом стань для маленьких дітей!

Це місто - місто добра! |
Наш дім любові та віри! |
Це місто - місто добра! |
Місце моєї, твоєї сили! | (2)','[''pisni.org.ua'', ''cat:druzhba'', ''cat:socialno-pobutovi'', ''Пісні про дружбу'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3515065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3515065','Місто добра','Це місто - місто добра,
Місто добра!
Це місто - місто добра!

Це місто - місто добра! |
Наш дім любові та віри! |
Це місто - місто добра! |
Місце моєї, твоєї сили! | (2)

Добра!
Серце своє не ховай, чуєш!
Добра!
Янголом стань для маленьких дітей!
Місто добра!
Серце своє не ховай, чуєш!
Місто добра!
Янголом стань для маленьких дітей!

В Місті Добра для кожного є місце!
В Місті Добра відроджуються мрії!
Тут я зустрів своїх вірних друзів!
Повірив у себе! У диво! У людяність!
І нехай-хай лунає дитячий сміх!
В місті добра
Серце б''ється одне на всі!

Це місто - місто добра! |
Наш дім любові та віри! |
Це місто - місто добра! |
Місце моєї, твоєї сили! | (2)

Добра!
Серце своє не ховай, чуєш!
Добра!
Янголом стань для маленьких дітей!
Місто добра!
Серце своє не ховай, чуєш!
Місто добра!
Янголом стань для маленьких дітей!

Я люблю наших песиків-хвостиків,
Вони такі милі-милі!
Я люблю наші прогулянки просто неба,
І смачні-смачні сніданки!
Я дякую всім, кожного дня,
Хто піклується про нас!
Дякую всім серцем!
Я вірю, я і мої друзі стануть щасливими!
І все це завдяки Місту добра!
Усміхнись, у нас є дім! Є майбутнє!
І є Україна!

Місто добра!
Серце своє не ховай, чуєш!
Добра!
Янголом стань для маленьких дітей!
Місто добра!
Серце своє не ховай, чуєш!
Місто добра!
Янголом стань для маленьких дітей!

Це місто - місто добра! |
Наш дім любові та віри! |
Це місто - місто добра! |
Місце моєї, твоєї сили! | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3515065_l1','pisniua_3515065','YouTube','https://www.youtube.com/watch?v=KHwUXP--0vs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3565467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3565467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3565467';
DELETE FROM songs WHERE id = 'pisniua_3565467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3565467','Частівки','Музика: народна Слова: Сергій Воскрекасенко, Валентин Лагода','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Слава котиться землею,
Україна золота,
Під яскравою зорею
Буйним цвітом розцвіта!

Приспів:
Грай, любий баяністе,
Грай, друже, вигравай
Грай, любий баяністе,
Життя наше прославляй!

Хай я зовсім молода
Та вже знаменита,
Люблять мене усі хлопці,
Бо я працьовита!

Приспів.

Руки вправні золоті
Мають наші люди,
Як сказали - так в житті
Неодмінно буде!

Приспів.

Хай же наша пісня лине
Поза лісом, гаєм,
Щастя, сили й перемоги
Ми усім бажаєм!

Приспів.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3565467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3565467','Частівки','Слава котиться землею,
Україна золота,
Під яскравою зорею
Буйним цвітом розцвіта!

Приспів:
Грай, любий баяністе,
Грай, друже, вигравай
Грай, любий баяністе,
Життя наше прославляй!

Хай я зовсім молода
Та вже знаменита,
Люблять мене усі хлопці,
Бо я працьовита!

Приспів.

Руки вправні золоті
Мають наші люди,
Як сказали - так в житті
Неодмінно буде!

Приспів.

Хай же наша пісня лине
Поза лісом, гаєм,
Щастя, сили й перемоги
Ми усім бажаєм!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_383962';
DELETE FROM song_versions WHERE song_id = 'pisniua_383962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_383962';
DELETE FROM songs WHERE id = 'pisniua_383962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_383962','Ой, чумаче, чумаче','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Український народний співаник, Мюнхен, 1946 р.',NULL,'Ой, чумаче, чумаче,
Ой, чумаче, чумаче,
Гей, чом не сієш, не ореш?

Чом не сієш, не ореш?
Чом не сієш, не ореш?
Гей, чом не рано з Криму йдеш?

Чом не рано з Криму йдеш?
Чом не рано з Криму йдеш?
Гей, не всіх чумаків ведеш?

"Ой, я сію і орю,
Ой, я сію і орю,
Гей, і раненько з Криму йду.

І раненько з Криму йду,
І раненько з Криму йду,
Гей, і всіх чумаків веду.

Тільки нема одного,
Тільки нема одного,
Гей, брата мого рідного.

Десь зостався у Криму,
Десь зостався у Криму,
Гей, брати солі на вагу.

Сталась йому причина,
Сталась йому причина,
Гей, сіль голову розбила.

Там між трьома шляхами,
Там між трьома шляхами,
Гей, там яму копали.

Ой, там яму копали,
Ой, там яму копали,
Гей, там чумака сховали!"','[''pisni.org.ua'', ''cat:chumacki'', ''Чумацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_383962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_383962','Ой, чумаче, чумаче','Ой, чумаче, чумаче,
Ой, чумаче, чумаче,
Гей, чом не сієш, не ореш?

Чом не сієш, не ореш?
Чом не сієш, не ореш?
Гей, чом не рано з Криму йдеш?

Чом не рано з Криму йдеш?
Чом не рано з Криму йдеш?
Гей, не всіх чумаків ведеш?

"Ой, я сію і орю,
Ой, я сію і орю,
Гей, і раненько з Криму йду.

І раненько з Криму йду,
І раненько з Криму йду,
Гей, і всіх чумаків веду.

Тільки нема одного,
Тільки нема одного,
Гей, брата мого рідного.

Десь зостався у Криму,
Десь зостався у Криму,
Гей, брати солі на вагу.

Сталась йому причина,
Сталась йому причина,
Гей, сіль голову розбила.

Там між трьома шляхами,
Там між трьома шляхами,
Гей, там яму копали.

Ой, там яму копали,
Ой, там яму копали,
Гей, там чумака сховали!"');
DELETE FROM song_links WHERE song_id = 'pisniua_388168';
DELETE FROM song_versions WHERE song_id = 'pisniua_388168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_388168';
DELETE FROM songs WHERE id = 'pisniua_388168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_388168','Ой в Ліску в Ліску на Жовтім Піску','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Колядки і щедрівки. - К.: Музична Україна. - 1991. - 240 с.','Колядка Дівчині. Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','Ой в ліску, в ліску, на жовтім піску.
Приспівка: Святий вечір!

Росте деревце тонке, високе,
Тонке, високе, листом широке,
Листом широке, верхом кудряве,
Верхом кудряве, ще й кучеряве.
На тім деревці сив сокіл сидить,
Сив сокіл сидить, далеко видить.
Ой видить, видить на чисте поле,
На чисте поле, на синє море.
На синім морі корабель пливе,
Корабель пливе, аж море гуде.
А в тім кораблі світлонька горить,
А в тій світлоньці гречна панна сидить.
Гречная панна, панна Ганнуся.
Ой сидить, сидить, три хустки рубить.
Першую рубить свому свекрові,
Другую рубить своїй свекрусі,
Третюю рубить свому милому.
- Ой дати б, дати, ким передати?
Ні сором, ні два, понесу сама.
Як у двір ввійшла, як зоря зійшла.
В сіни влетіла ластівочкою,
До хати увійшла невісточкою.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_388168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_388168','Ой в Ліску в Ліску на Жовтім Піску','Ой в ліску, в ліску, на жовтім піску.
Приспівка: Святий вечір!

Росте деревце тонке, високе,
Тонке, високе, листом широке,
Листом широке, верхом кудряве,
Верхом кудряве, ще й кучеряве.
На тім деревці сив сокіл сидить,
Сив сокіл сидить, далеко видить.
Ой видить, видить на чисте поле,
На чисте поле, на синє море.
На синім морі корабель пливе,
Корабель пливе, аж море гуде.
А в тім кораблі світлонька горить,
А в тій світлоньці гречна панна сидить.
Гречная панна, панна Ганнуся.
Ой сидить, сидить, три хустки рубить.
Першую рубить свому свекрові,
Другую рубить своїй свекрусі,
Третюю рубить свому милому.
- Ой дати б, дати, ким передати?
Ні сором, ні два, понесу сама.
Як у двір ввійшла, як зоря зійшла.
В сіни влетіла ластівочкою,
До хати увійшла невісточкою.');
DELETE FROM song_links WHERE song_id = 'pisniua_388020';
DELETE FROM song_versions WHERE song_id = 'pisniua_388020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_388020';
DELETE FROM songs WHERE id = 'pisniua_388020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_388020','В Пана Господаря Тернові Двори','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://zabor.zp.ua','Можливе літературне втручання в кінці: До царя-султана Кайдани ламати. Кайдани ламати, Братів визволяти. Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','В пана господаря
Тернові двори!
Тернові двори,
Тисові столи.

А поза столове
Сидять панове.
Ой, сидять, сидять,
Радоньку радять.

Та й складімось, браття,
Та й по золотому.
Та й по золотому,
Та й по червоному.

Та й купім, браття,
Золоті човни.
Золоті човни,
Срібні весельця.

Срібні весельця,
Шовкові шнури.
Та й спустімося, браття,
По тихому Дунаю.

По тихому Дунаю
Аж у Чорне море.
Та й підемо, браття,
До царя-султана.

До царя-султана
Кайдани ламати.
Кайдани ламати,
Братів визволяти.','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_388020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_388020','В Пана Господаря Тернові Двори','В пана господаря
Тернові двори!
Тернові двори,
Тисові столи.

А поза столове
Сидять панове.
Ой, сидять, сидять,
Радоньку радять.

Та й складімось, браття,
Та й по золотому.
Та й по золотому,
Та й по червоному.

Та й купім, браття,
Золоті човни.
Золоті човни,
Срібні весельця.

Срібні весельця,
Шовкові шнури.
Та й спустімося, браття,
По тихому Дунаю.

По тихому Дунаю
Аж у Чорне море.
Та й підемо, браття,
До царя-султана.

До царя-султана
Кайдани ламати.
Кайдани ламати,
Братів визволяти.');
DELETE FROM song_links WHERE song_id = 'pisniua_393261';
DELETE FROM song_versions WHERE song_id = 'pisniua_393261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_393261';
DELETE FROM songs WHERE id = 'pisniua_393261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_393261','Мамо, але я дурна','Музика: Віка Врадій Слова: Віка Врадій. Виконує: Віка Врадій','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ви мя послали мамо вчитися до Львова,
Я поступила в трете ПТУ.
На ту стипендію розїлась, як корова,
Бо пиріжки дешеві, як гівно.

Приспів:
Мамо, що маю робити?
Мамо, але я дурна!
Мамо, ну що маю робити?
Мамо, але я дурна!

Ви наказали, мамо, щоб я не гуляла,
Бо львівські хлопці хочуть тілько секс,
Свого наставника я врешті покохала,
Він має дачу, але старий, як пес.

Приспів.

Перегідрольм вибілила коси,
Побрила ноги, маю манікьюр,
Тепер по ночах я вивчаю секси,
А в день на парі я роблю перекур.

Приспів.

Мамо!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_393261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_393261','Мамо, але я дурна','Ви мя послали мамо вчитися до Львова,
Я поступила в трете ПТУ.
На ту стипендію розїлась, як корова,
Бо пиріжки дешеві, як гівно.

Приспів:
Мамо, що маю робити?
Мамо, але я дурна!
Мамо, ну що маю робити?
Мамо, але я дурна!

Ви наказали, мамо, щоб я не гуляла,
Бо львівські хлопці хочуть тілько секс,
Свого наставника я врешті покохала,
Він має дачу, але старий, як пес.

Приспів.

Перегідрольм вибілила коси,
Побрила ноги, маю манікьюр,
Тепер по ночах я вивчаю секси,
А в день на парі я роблю перекур.

Приспів.

Мамо!');
DELETE FROM song_links WHERE song_id = 'pisniua_396261';
DELETE FROM song_versions WHERE song_id = 'pisniua_396261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_396261';
DELETE FROM songs WHERE id = 'pisniua_396261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_396261','Веремія','(Божевілля). Слова: Роман Кизим','uk','ukraine_1991',NULL,NULL,NULL,'Можливий інший варіант назви пісні "Україна", оскільки в приспіві можна замінити слово "веремія" на слово "Україна". Дякую!','Тихо, стояти. Читаєм на бігбордах:
Сьогодні в місті відбудеться концерт,
До вашої уваги, як завжди профі-маги.
Та ні, ні, ні! Це я так, щоб був заряд!
Тож продовжуємо далі читати зразок,
До вашої уваги пару десятків зірок,
Серед яких: ТНМКонго разом з Тартаком,
Друга Ріка, Руслана з красивим каблуком,
Діля, Катя Чілі, Ділема, Ді Шифер -
Кращі наші гурти та діджеї-майстри.
Напрями в музиці переплились,
Стук, гамір - потім розійшлись.
Який там Рок, якщо танцюєм Гоп!
Різні стилі були вони в силі зробити вдох.
Один, два, три - починай рахувать,
Незважай на те, що треба чекать.
Тож зараз взмозі почати співать,
Прошу в динаміки звуку додать!

Приспів:
Це справжня веремія, тут живе надія,
В якій палає мрія, так!
Це дика веремія, хай живе надія,
Вогнем палає мрія, так!
Це справжня веремія, тут живе надія,
В якій палає мрія, так!
Це дика веремія, хай живе надія,
Вогнем, вогнем палає мрія-я-я...

Так, люди, світло на сцену!
Бурхливі оплески дають всім шанс.
А де ж платня, якщо є аванс,
Ні, стоп - знову музика в dance.
Заграла гітара, вдарив барабан,
Парубки на сцену запрошуйте дам!
Тож виходять музики і грають музу,
Як справжній тамада розказати мушу.
Що на постоли вийшов Тартак,
Як завжди усих підвісив на гак!
Просто кажучи всих розірвав,
Далі на сцені Танок на Майдан.
Заграв своє бінго-бонго,
Народ не витримує шуму того.
Що казати, коли Руслана наша заспівала,
А ногі ваші, як наші, стрибали й стрибають,
Далі йде Борщ,
Після виступу цього почався дощ!

Приспів.

На кінець мушу додати я,
Що на концерті була Росія,
Тобто з Росії, тобто не наші,
Які начебто приїхали сюди!
Як виступали наші гурти,
Ті пороззявляли роти.
О це так-так! Дивно, але файно,
Треба своє - оце і маймо!
На цьому закінчити мушу,
Прошу востаннє розкрити душу...

Це справжня веремія... Тут живе надія...
Це дика веремія... Хай живе надія...

Приспів (два рази).','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_396261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_396261','Веремія','Тихо, стояти. Читаєм на бігбордах:
Сьогодні в місті відбудеться концерт,
До вашої уваги, як завжди профі-маги.
Та ні, ні, ні! Це я так, щоб був заряд!
Тож продовжуємо далі читати зразок,
До вашої уваги пару десятків зірок,
Серед яких: ТНМКонго разом з Тартаком,
Друга Ріка, Руслана з красивим каблуком,
Діля, Катя Чілі, Ділема, Ді Шифер -
Кращі наші гурти та діджеї-майстри.
Напрями в музиці переплились,
Стук, гамір - потім розійшлись.
Який там Рок, якщо танцюєм Гоп!
Різні стилі були вони в силі зробити вдох.
Один, два, три - починай рахувать,
Незважай на те, що треба чекать.
Тож зараз взмозі почати співать,
Прошу в динаміки звуку додать!

Приспів:
Це справжня веремія, тут живе надія,
В якій палає мрія, так!
Це дика веремія, хай живе надія,
Вогнем палає мрія, так!
Це справжня веремія, тут живе надія,
В якій палає мрія, так!
Це дика веремія, хай живе надія,
Вогнем, вогнем палає мрія-я-я...

Так, люди, світло на сцену!
Бурхливі оплески дають всім шанс.
А де ж платня, якщо є аванс,
Ні, стоп - знову музика в dance.
Заграла гітара, вдарив барабан,
Парубки на сцену запрошуйте дам!
Тож виходять музики і грають музу,
Як справжній тамада розказати мушу.
Що на постоли вийшов Тартак,
Як завжди усих підвісив на гак!
Просто кажучи всих розірвав,
Далі на сцені Танок на Майдан.
Заграв своє бінго-бонго,
Народ не витримує шуму того.
Що казати, коли Руслана наша заспівала,
А ногі ваші, як наші, стрибали й стрибають,
Далі йде Борщ,
Після виступу цього почався дощ!

Приспів.

На кінець мушу додати я,
Що на концерті була Росія,
Тобто з Росії, тобто не наші,
Які начебто приїхали сюди!
Як виступали наші гурти,
Ті пороззявляли роти.
О це так-так! Дивно, але файно,
Треба своє - оце і маймо!
На цьому закінчити мушу,
Прошу востаннє розкрити душу...

Це справжня веремія... Тут живе надія...
Це дика веремія... Хай живе надія...

Приспів (два рази).');
DELETE FROM song_links WHERE song_id = 'pisniua_39424';
DELETE FROM song_versions WHERE song_id = 'pisniua_39424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_39424';
DELETE FROM songs WHERE id = 'pisniua_39424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_39424','Ні обіцянок, ні пробачень','Музика: Сергій Лазо Слова: Сергій Лазо. Виконує: Віктор Павлік','uk','ukraine_1991',NULL,NULL,NULL,'Вступ не мав вже сил підбирати, кому то важливо - вперед. Підбір акордів: kolivan','Вступ: Em

Іще два тижні, і запалає
Пожежа сонця у жовтім клені,
Я погляд твій кожен день шукаю.
Твій літній погляд очей зелених.

Приспів:
Ні обіцянок, ні пробачень
Все сталося само собою,
Слова набули нових значень,
Ми ж не змінилися з тобою.

Я в перший раз не чекаю осінь,
Бо з нею в літо не повернутись.
І вітер грає твоїм волоссям,
А я не можу і доторкнутись.

Приспів. (2)

Хоча б на мить, хоча б на хвилину
Спинити час і тебе серпневу.
Моя біда і твоя провина,
що наше щастя розтало в небі.

Приспів. (2) (останній рядок повторюється чотири рази)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_39424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_39424','Ні обіцянок, ні пробачень','Вступ: Em

Іще два тижні, і запалає
Пожежа сонця у жовтім клені,
Я погляд твій кожен день шукаю.
Твій літній погляд очей зелених.

Приспів:
Ні обіцянок, ні пробачень
Все сталося само собою,
Слова набули нових значень,
Ми ж не змінилися з тобою.

Я в перший раз не чекаю осінь,
Бо з нею в літо не повернутись.
І вітер грає твоїм волоссям,
А я не можу і доторкнутись.

Приспів. (2)

Хоча б на мить, хоча б на хвилину
Спинити час і тебе серпневу.
Моя біда і твоя провина,
що наше щастя розтало в небі.

Приспів. (2) (останній рядок повторюється чотири рази)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_39424_l1','pisniua_39424','YouTube','https://www.youtube.com/watch?v=9ivsllc8lm4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_39424_l2','pisniua_39424','YouTube','https://www.youtube.com/watch?v=9MH3Rixcq-M','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_39424_l3','pisniua_39424','YouTube','https://www.youtube.com/watch?v=nMBm1f9tH_U','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_398364';
DELETE FROM song_versions WHERE song_id = 'pisniua_398364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_398364';
DELETE FROM songs WHERE id = 'pisniua_398364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_398364','Колискова','(Коли, коли, коли Сонко...). Музика: Марія Бурмака Слова: Олесь Гончар. Виконує: Марія Бурмака','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Коли, коли, коли Сонко
Ще був маленький,
Колисала колисоньку
Дрімота-ненька.

Тепер, тепер вже сам Сонко
Тебе колише,
Тепер, тепер в твоє личко
Сон-зіллям дише.

Коли, коли будеш синку,
Мов козак хоробрий
І правді брат, тобі синку,
Будько буде добрий.

Колись, колись, коли Сонко
Ще був маленький,
Колисала колисоньку
Дрімота-ненька.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_398364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_398364','Колискова','Коли, коли, коли Сонко
Ще був маленький,
Колисала колисоньку
Дрімота-ненька.

Тепер, тепер вже сам Сонко
Тебе колише,
Тепер, тепер в твоє личко
Сон-зіллям дише.

Коли, коли будеш синку,
Мов козак хоробрий
І правді брат, тобі синку,
Будько буде добрий.

Колись, колись, коли Сонко
Ще був маленький,
Колисала колисоньку
Дрімота-ненька.');
DELETE FROM song_links WHERE song_id = 'pisniua_4103185';
DELETE FROM song_versions WHERE song_id = 'pisniua_4103185';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4103185';
DELETE FROM songs WHERE id = 'pisniua_4103185';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4103185','Вірую','Музика: Микола Леонтович Слова: народні. Виконує: Хор імені Григорія Верьовки','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вірую!
Вірую во єдиного Бога Отця,
Вседержителя,
Творця неба і землі,
І всього видимого, і невидимого.

Вірую!
І во єдиного Господа Ісуса Христа,
Сина Божого,
Єдинородного, від Отця родженого
Перше всіх віків.

Вірую!
Світло від Світла, Бога істинного
Від Бога істинного;
Родженного, несотворенного,
Одноістотного з Отцем,
Через которого все сталося.

Вірую!
Що для нас людей
І для нашого спасіння
З неба зійшов.

Вірую!
І тіло прийняв від Духа Святого,
І Діви Марії,
І став чоловіком.

Вірую!
Розп´ятий був за нас
При Понтійському Пілаті,
Страждав і був похований;
І воскрес на третій день,
Як було у писанії.

Вірую!
І вознісся на небо,
І сидить праворуч Отця.

Вірую!
І знову прийде у славі
Судити живих і мертвих,
Царству ж Його не буде кінця.

Вірую!
І в Духа Святого, Господа животворного,
Що від Отця походить,
Що Йому з Отцем і Сином
Однаковий поклін і однакова слава,
Що говорив через пророків.

Вірую!
Во єдину, Святу, Соборную
І Апостольськую Церкву.
Визнаю одне хрещення
На відпущення гріхів,
На відпущення гріхів!

Чекаю воскресіння мертвих
І життя будучого віку!
Амінь.','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4103185'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4103185','Вірую','Вірую!
Вірую во єдиного Бога Отця,
Вседержителя,
Творця неба і землі,
І всього видимого, і невидимого.

Вірую!
І во єдиного Господа Ісуса Христа,
Сина Божого,
Єдинородного, від Отця родженого
Перше всіх віків.

Вірую!
Світло від Світла, Бога істинного
Від Бога істинного;
Родженного, несотворенного,
Одноістотного з Отцем,
Через которого все сталося.

Вірую!
Що для нас людей
І для нашого спасіння
З неба зійшов.

Вірую!
І тіло прийняв від Духа Святого,
І Діви Марії,
І став чоловіком.

Вірую!
Розп´ятий був за нас
При Понтійському Пілаті,
Страждав і був похований;
І воскрес на третій день,
Як було у писанії.

Вірую!
І вознісся на небо,
І сидить праворуч Отця.

Вірую!
І знову прийде у славі
Судити живих і мертвих,
Царству ж Його не буде кінця.

Вірую!
І в Духа Святого, Господа животворного,
Що від Отця походить,
Що Йому з Отцем і Сином
Однаковий поклін і однакова слава,
Що говорив через пророків.

Вірую!
Во єдину, Святу, Соборную
І Апостольськую Церкву.
Визнаю одне хрещення
На відпущення гріхів,
На відпущення гріхів!

Чекаю воскресіння мертвих
І життя будучого віку!
Амінь.');
DELETE FROM song_links WHERE song_id = 'pisniua_397766';
DELETE FROM song_versions WHERE song_id = 'pisniua_397766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_397766';
DELETE FROM songs WHERE id = 'pisniua_397766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_397766','Гей, Іване','Українська народна пісня. Виконує: Гопак, Рената Бабак','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Гей, Іване, Іване миленький,
Чому ж мені через тебе
Світ не веселенький?

Гей, Іване, Іване, Іване,
Прийди, прийди, мій миленький,
Бо серденько в''яне.

Гей, Іване, прийди погуляти,
А я тебе поцілую,
Щоб не знала мати.

Ой співаю співаночки
Весело, весело -
Чути мої співаночки
На другоє село.

Сидить Василь коло ясел
Корівок годує, -
Дай ня Боже здоров''ячка,
Як файно цілує.

Сидить Юра коло мура,
А я коло нього,
Який Юра файний хлопець -
Пішла би за нього.

Ой співала я, співала,
Зозуля кувала,
Коли ше мя попросили,
Щеб вам заспівала.

Коли ше мя попросили,
Щеб вам заспівала!','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_397766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_397766','Гей, Іване','Гей, Іване, Іване миленький,
Чому ж мені через тебе
Світ не веселенький?

Гей, Іване, Іване, Іване,
Прийди, прийди, мій миленький,
Бо серденько в''яне.

Гей, Іване, прийди погуляти,
А я тебе поцілую,
Щоб не знала мати.

Ой співаю співаночки
Весело, весело -
Чути мої співаночки
На другоє село.

Сидить Василь коло ясел
Корівок годує, -
Дай ня Боже здоров''ячка,
Як файно цілує.

Сидить Юра коло мура,
А я коло нього,
Який Юра файний хлопець -
Пішла би за нього.

Ой співала я, співала,
Зозуля кувала,
Коли ше мя попросили,
Щеб вам заспівала.

Коли ше мя попросили,
Щеб вам заспівала!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_397766_l1','pisniua_397766','YouTube','https://www.youtube.com/watch?v=Xvc3zNoK3w0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_410137';
DELETE FROM song_versions WHERE song_id = 'pisniua_410137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_410137';
DELETE FROM songs WHERE id = 'pisniua_410137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_410137','Тільку ві Львові','Музика: Генрик Варс Слова: Емануел Шлехтер. Виконує: Віктор Морозов','uk','ukraine_1991',NULL,NULL,'Аудіо-CD- Віктор Морозов. Тільку ві Львові. 2002','Пісня зі Львова, популярна з 30-х років XX ст. Виконують: Віктор Морозов і батяр-бенд "Галичина" * Текст та акорди перевірив і виправив Віктор Морозов (www.mo-productions.com) Підбір акордів: bohdanko:)','Вступ: Em Em/G F#7 F#7/C#
Мелодія 1:
Най єнші шукають на вербах грушок
В Мюнхені, Парижі, Торонті,
Мене ж Бог боронить від хибних думок,
Зі Львова я ані на крок.
Мелодія 2:
Бо де ще є людєм так файно, як ту,
Тільку ві Львові.
Бо де ще зубачиш таку красоту,
Тільку ві Львові.
Мелодія 3:
Ховаймо на спід тягар наших бід,
І в Штати нема чо тікати.
A            E         С#
Таж пиво у нас холодне, як лід,
Дівчата солодкі, як мід.
Мелодія 2:
Якби ще десь раз я вродитисі вмів, то
Тільку ві Львові.
Так люблю той Львів, що бракує ми слів.
Львів то є Львів.
Програш (на тему Вступу).
Мелодія 1:
На світі є Відень, Гонконг і Нью-Йорк,
Я ж нігди туди не поїду,
Бо зроду не схильний до хибних думок,
Зі Львова я ані на крок.
Мелодія 2:
Бо де ще так файно є людям, як ту,
Тільку ві Львові.
Бо де ще зубачиш таку красоту,
Тільку ві Львові.
Мелодія 3:
Ховаймо на спід тягар наших бід,
І в Штати нема чо тікати.
Таж пиво у нас холодне, як лід,
Дівчата солодкі, як мід.
Мелодія 2:
Бо де ще зубачиш таку красоту,
Тільку ві Львові.
Роздінут, роззуют, ще й писок наб''ют
Тільку ві Львові.
Мелодія 2: (перехід на півтона вище)
Якби ще десь раз я вродитисі вмів, то
Тільку ві Львові.
Так люблю той Львів, що бракує ми слів.
Львів то є Львів.','[''pisni.org.ua'', ''cat:lviv'', ''cat:patriotic'', ''cat:zhartivlyvi'', ''Пісні про Львів'', ''Патріотичні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_410137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_410137','Тільку ві Львові','Вступ: Em Em/G F#7 F#7/C#
Мелодія 1:
Най єнші шукають на вербах грушок
В Мюнхені, Парижі, Торонті,
Мене ж Бог боронить від хибних думок,
Зі Львова я ані на крок.
Мелодія 2:
Бо де ще є людєм так файно, як ту,
Тільку ві Львові.
Бо де ще зубачиш таку красоту,
Тільку ві Львові.
Мелодія 3:
Ховаймо на спід тягар наших бід,
І в Штати нема чо тікати.
A            E         С#
Таж пиво у нас холодне, як лід,
Дівчата солодкі, як мід.
Мелодія 2:
Якби ще десь раз я вродитисі вмів, то
Тільку ві Львові.
Так люблю той Львів, що бракує ми слів.
Львів то є Львів.
Програш (на тему Вступу).
Мелодія 1:
На світі є Відень, Гонконг і Нью-Йорк,
Я ж нігди туди не поїду,
Бо зроду не схильний до хибних думок,
Зі Львова я ані на крок.
Мелодія 2:
Бо де ще так файно є людям, як ту,
Тільку ві Львові.
Бо де ще зубачиш таку красоту,
Тільку ві Львові.
Мелодія 3:
Ховаймо на спід тягар наших бід,
І в Штати нема чо тікати.
Таж пиво у нас холодне, як лід,
Дівчата солодкі, як мід.
Мелодія 2:
Бо де ще зубачиш таку красоту,
Тільку ві Львові.
Роздінут, роззуют, ще й писок наб''ют
Тільку ві Львові.
Мелодія 2: (перехід на півтона вище)
Якби ще десь раз я вродитисі вмів, то
Тільку ві Львові.
Так люблю той Львів, що бракує ми слів.
Львів то є Львів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_410137_l1','pisniua_410137','YouTube','https://www.youtube.com/watch?v=x11T2XN8PPo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_410137_l2','pisniua_410137','YouTube','https://www.youtube.com/watch?v=lHBiAhiddJ8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_410137_l3','pisniua_410137','YouTube','https://www.youtube.com/watch?v=psEh_Vlrmhg','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_410137_l4','pisniua_410137','YouTube','https://www.youtube.com/watch?v=0o9SD4DNaSE','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_410137_l5','pisniua_410137','YouTube','https://www.youtube.com/watch?v=BYYphzOq1U8','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_410137_l6','pisniua_410137','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_410787';
DELETE FROM song_versions WHERE song_id = 'pisniua_410787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_410787';
DELETE FROM songs WHERE id = 'pisniua_410787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_410787','Вона','(Завтра прийде до кімнати). Музика: Кость Москалець Слова: Кость Москалець. Виконує: Віктор Морозов, Четвертий кут','uk','ukraine_1991',NULL,NULL,'текст- www.mo-productions.com; Аудіо- Віктор Морозов і Четвертий Кут. ЧЕТВЕРТИЙ КУТ. 1993','* F-5/6* [1 x 0 2 0 x] F6* [1 3 0 2 3 x] F7M [1 x 3 2 1 0] Esus4 [0 2 0 2 0 0] Текст та акорди перевірив і виправив Віктор Морозов (http://www.victormorozov.com).','Вступ:  Am F-5/6* (2)
Am F6 Esus4 E7
Am                F-5/6*
Завтра прийде до кімнати
Am              F-5/6*
Твоїх друзів   небагато,
Am        F6        Esus4 E7
Вип''ємо холодного вина.
Am               F-5/6*
Хтось принесе   білі айстри,
Am              F-5/6*
Скаже хтось:   "Життя прекрасне",
Am                 F6*       Esus4 E7
Так, життя прекрасне, а вона...
Приспів 1:
А вона, а вона
Сидітиме сумна,
Буде пити, не п''яніти
Від дешевого вина.
Я співатиму для неї,
Аж бринітиме кришталь,
Та хіба зуміє голос
E7        F7M
Подолати цю печаль?
Esus4 E7
...цю печаль?
Так вже в світі повелося,
Я люблю її волосся,
Am       F6          Esus4 E7
Я люблю її тонкі вуста.
Та невдовзі прийде осінь,
Ми усі розбіжимося
Am       F6         Esus4 E7
По русифікованих містах.
Приспів 2:
Лиш вона, лиш вона
Сидітиме сумна,
Буде пити, не п''яніти
Від дешевого вина.
Моя дівчинко печальна,
Моя доле золота.
Я продовжую кричати,
Ніч безмежна і пуста...
Я продовжую кричати,
Ніч безмежна і пуста...
Я продовжую кричати,
Ніч безмежна і пуста...','[''pisni.org.ua'', ''cat:bardivski'', ''cat:lirychni'', ''cat:nostalgia'', ''cat:philosophic'', ''Бардівські пісні'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_410787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_410787','Вона','Вступ:  Am F-5/6* (2)
Am F6 Esus4 E7
Am                F-5/6*
Завтра прийде до кімнати
Am              F-5/6*
Твоїх друзів   небагато,
Am        F6        Esus4 E7
Вип''ємо холодного вина.
Am               F-5/6*
Хтось принесе   білі айстри,
Am              F-5/6*
Скаже хтось:   "Життя прекрасне",
Am                 F6*       Esus4 E7
Так, життя прекрасне, а вона...
Приспів 1:
А вона, а вона
Сидітиме сумна,
Буде пити, не п''яніти
Від дешевого вина.
Я співатиму для неї,
Аж бринітиме кришталь,
Та хіба зуміє голос
E7        F7M
Подолати цю печаль?
Esus4 E7
...цю печаль?
Так вже в світі повелося,
Я люблю її волосся,
Am       F6          Esus4 E7
Я люблю її тонкі вуста.
Та невдовзі прийде осінь,
Ми усі розбіжимося
Am       F6         Esus4 E7
По русифікованих містах.
Приспів 2:
Лиш вона, лиш вона
Сидітиме сумна,
Буде пити, не п''яніти
Від дешевого вина.
Моя дівчинко печальна,
Моя доле золота.
Я продовжую кричати,
Ніч безмежна і пуста...
Я продовжую кричати,
Ніч безмежна і пуста...
Я продовжую кричати,
Ніч безмежна і пуста...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_410787_l1','pisniua_410787','YouTube','https://www.youtube.com/watch?v=zgvTfhHdvUs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_410787_l2','pisniua_410787','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4119981';
DELETE FROM song_versions WHERE song_id = 'pisniua_4119981';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4119981';
DELETE FROM songs WHERE id = 'pisniua_4119981';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4119981','Шинкарочко, потанцюй!','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'З пам''яті','Текст можна імпровізувати, наскільки вистачить фантазії, багаторазово повторюваний приспів підхоплюється всіма. Рубрикація: жартівливі, танцювальні мелодії.','По вулиці, по газонам
Бігла баба з макогоном.
Приспів.
Шинкарочко, потанцюй!
Підборцями подрібцюй! | (2)

Од Ковеля до Кишінок
Козак знає кожен шинок.
Приспів.

Від Кишінок до Жмеринки
Я тікав від злої жінки.
Приспів.

Від Жмеринки в Кременчук
Я від жінки утечу.
Приспів.

А у вас в Мелитополі
Шинкарочки мов тополі!
Приспів.

А під Стриєм у діброві
Шинкарочки чорноброві.
Приспів.

А від Стрию до Опішні
У дівчат вуста як вишні.
Приспів.

Од Опішні по Карпати
Вже нема куди тікати.
Приспів.

А в Поліссі та Волині
У шинкарок очі сині.
Приспів.

Від Волині до Мукачу
Відкоштую спотикачу.
Приспів.    фонограма-мінус(midi)','[''pisni.org.ua'', ''cat:dances'', ''Пісні до танцю'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4119981'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4119981','Шинкарочко, потанцюй!','По вулиці, по газонам
Бігла баба з макогоном.
Приспів.
Шинкарочко, потанцюй!
Підборцями подрібцюй! | (2)

Од Ковеля до Кишінок
Козак знає кожен шинок.
Приспів.

Від Кишінок до Жмеринки
Я тікав від злої жінки.
Приспів.

Від Жмеринки в Кременчук
Я від жінки утечу.
Приспів.

А у вас в Мелитополі
Шинкарочки мов тополі!
Приспів.

А під Стриєм у діброві
Шинкарочки чорноброві.
Приспів.

А від Стрию до Опішні
У дівчат вуста як вишні.
Приспів.

Од Опішні по Карпати
Вже нема куди тікати.
Приспів.

А в Поліссі та Волині
У шинкарок очі сині.
Приспів.

Від Волині до Мукачу
Відкоштую спотикачу.
Приспів.    фонограма-мінус(midi)');
DELETE FROM song_links WHERE song_id = 'pisniua_41185';
DELETE FROM song_versions WHERE song_id = 'pisniua_41185';
DELETE FROM songs_fts WHERE song_id = 'pisniua_41185';
DELETE FROM songs WHERE id = 'pisniua_41185';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_41185','Коли до губ твоїх','Музика: Тарас Чубай Слова: Григорій Чубай. Виконує: Плач Єремії, Тарас Чубай','uk','ukraine_1991',NULL,NULL,'Пісневир. Молодіжний співаник. Львів 2001',NULL,'Коли до губ твоїх лишається півподиху,
Коли до губ твоїх лишається півкроку -
Зіниці твої виткані із подиву,
В очах у тебе синьо і широко.

Щось шепчеш зачаровано і тихо ти,
Той шепіт мою тишу синьо крає,
І забуваю я, що вмію дихати,
І що ходити вмію, забуваю.

А чорний птах повік твоїх здіймається
І впевненість мою кудись відмає.
Неступленим півкроку залишається,
Півподиху у горлі застрягає.

Зіниці твої виткані із подиву,
В очах у тебе синьо і широко,
Але до губ твоїх лишається півподиху,
До губ твоїх лишається півкроку.

Але до губ твоїх лишається півподиху,
До губ твоїх лишається півкроку.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_41185'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_41185','Коли до губ твоїх','Коли до губ твоїх лишається півподиху,
Коли до губ твоїх лишається півкроку -
Зіниці твої виткані із подиву,
В очах у тебе синьо і широко.

Щось шепчеш зачаровано і тихо ти,
Той шепіт мою тишу синьо крає,
І забуваю я, що вмію дихати,
І що ходити вмію, забуваю.

А чорний птах повік твоїх здіймається
І впевненість мою кудись відмає.
Неступленим півкроку залишається,
Півподиху у горлі застрягає.

Зіниці твої виткані із подиву,
В очах у тебе синьо і широко,
Але до губ твоїх лишається півподиху,
До губ твоїх лишається півкроку.

Але до губ твоїх лишається півподиху,
До губ твоїх лишається півкроку.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_41185_l1','pisniua_41185','YouTube','https://www.youtube.com/watch?v=3KQHg7o_NQA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_41185_l2','pisniua_41185','YouTube','https://www.youtube.com/watch?v=8JQ66l2LNIo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_41185_l3','pisniua_41185','YouTube','https://www.youtube.com/watch?v=PgsNJoj6BQg','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_41185_l4','pisniua_41185','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_41232';
DELETE FROM song_versions WHERE song_id = 'pisniua_41232';
DELETE FROM songs_fts WHERE song_id = 'pisniua_41232';
DELETE FROM songs WHERE id = 'pisniua_41232';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_41232','Б''ютіфул Карпати','Музика: Мертвий півень Слова: Мертвий півень. Виконує: Мертвий півень','uk','ukraine_1991',NULL,NULL,'Пісневир. Молодіжний співаник. Львів 2001',NULL,'Іду я плаєм в синю даль -
Висить Марічка на смерічці.
Парує сивий дим проваль,
Цвіте червлена ружа-чічка.

Пр.:
Б''ютіфул Карпати!
Верховина, рідна мати,
Dm
Не дай же нам погибати!
Б''ютіфул Карпати!

За небокраєм небокрай,
Трембіти голос чути в лісі.
А он ялинок ген розмай
І синьо-жовта фана в стрісі.

Пр.

Залазить п''яне сонце в річку,
Останній промінь свій кидає.
Іде Іванко до Марічки
І пісеньку співає.

Пр.

* В оригіналі виконується з акорда H#m.
Мені ж пасує з Hm.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:zhartivlyvi'', ''Пісні про красу природи'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_41232'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_41232','Б''ютіфул Карпати','Іду я плаєм в синю даль -
Висить Марічка на смерічці.
Парує сивий дим проваль,
Цвіте червлена ружа-чічка.

Пр.:
Б''ютіфул Карпати!
Верховина, рідна мати,
Dm
Не дай же нам погибати!
Б''ютіфул Карпати!

За небокраєм небокрай,
Трембіти голос чути в лісі.
А он ялинок ген розмай
І синьо-жовта фана в стрісі.

Пр.

Залазить п''яне сонце в річку,
Останній промінь свій кидає.
Іде Іванко до Марічки
І пісеньку співає.

Пр.

* В оригіналі виконується з акорда H#m.
Мені ж пасує з Hm.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_41232_l1','pisniua_41232','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4128083';
DELETE FROM song_versions WHERE song_id = 'pisniua_4128083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4128083';
DELETE FROM songs WHERE id = 'pisniua_4128083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4128083','Колискова','Музика: Леся Тельнюк Слова: Дмитро Чередниченко. Виконує: Сестри Тельнюк','uk','ukraine_1991',NULL,NULL,'http://www.telnyuk.info',NULL,'Зелену колиску
Вітер гойдає в саду.
Птахи блакитні
На бильцях сидять.
В колисці постілонька
Луговая,
Подушечка
Пуховая.
Там сонячні зайчики
Сплять.
А птахи блакитні
На бильцях
Гойдаються.
Вітер яблуню
Потермосив,
У колиску яблук
Натрусив.
- А де ж тії зайчики? -
Діти питаються.
...Зелена колиска
Гойдається.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4128083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4128083','Колискова','Зелену колиску
Вітер гойдає в саду.
Птахи блакитні
На бильцях сидять.
В колисці постілонька
Луговая,
Подушечка
Пуховая.
Там сонячні зайчики
Сплять.
А птахи блакитні
На бильцях
Гойдаються.
Вітер яблуню
Потермосив,
У колиску яблук
Натрусив.
- А де ж тії зайчики? -
Діти питаються.
...Зелена колиска
Гойдається.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4128083_l1','pisniua_4128083','YouTube','https://www.youtube.com/watch?v=JyuK_-g46ho','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_41338';
DELETE FROM song_versions WHERE song_id = 'pisniua_41338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_41338';
DELETE FROM songs WHERE id = 'pisniua_41338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_41338','Пісня про вампіра','Музика: Тарас Чубай Слова: Андрій Панчишин. Виконує: Тарас Чубай, Не журись!','uk','ukraine_1991',NULL,NULL,'Пісневир. Молодіжний співаник. Львів 2001.','У пісенниках "Збірник пісень Студентського братства Львівської політехніки" та "Пісневир" ця пісня була опублікована з неправильною назвою: "Пісня про вампіра". Насправді пісня називається просто "Вампір" (музика Тараса Чубая, слова Андрія Панчишина). Її виконував не "Четвертий кут", а Тарас Чубай у виставі театру "Не журись!" "Картотека пана Базя" (пісня є на касеті "Не журись!", яка так і називається: "Картотека пана Базя"). (Інформацію надав Віктор Морозов, http://www.mo-productions.com)','Я гуляю по темних ночах,
Я ховаюся в мокрих корчах.
Я не лютий небачений звір,
Я простий український вампір.

Приспів:
Я шукаю тебе, в мене очі незрячі.
Я шукаю тебе, в мене зуби собачі.
Я шукаю тебе, в мене пальці холодні.
Я живу у безодні.

Ти сьогодні підеш у кіно,
Я залізу в відкрите вікно.
Заховаюся в темнім кутку.
Ти прийдеш, а я скажу:  "Ку-ку!"

Приспів:
Я чекаю тебе, в мене очі незрячі.
Я чекаю тебе, в мене зуби собачі.
Я чекаю тебе, в мене пальці холодні.
Я живу у безодні.

Ти дівчисько дурне та зелене,
Ти далеко не перша у мене.
Але моє жагуче кохання,
Мабуть, буде для тебе останнє.

Приспів:
Я цілую тебе, в мене очі незрячі.
Я цілую тебе, в мене зуби собачі.
Я цiлую тебе, в мене пальці холодні.
Я живу у безодні.
Я кохаю тебе, в мене очі незрячі.
Я кохаю тебе, в мене зуби собачі.
Я кохаю тебе, в мене пальці холодні.
Я живу у безодні.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:zhartivlyvi'', ''Бардівські пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_41338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_41338','Пісня про вампіра','Я гуляю по темних ночах,
Я ховаюся в мокрих корчах.
Я не лютий небачений звір,
Я простий український вампір.

Приспів:
Я шукаю тебе, в мене очі незрячі.
Я шукаю тебе, в мене зуби собачі.
Я шукаю тебе, в мене пальці холодні.
Я живу у безодні.

Ти сьогодні підеш у кіно,
Я залізу в відкрите вікно.
Заховаюся в темнім кутку.
Ти прийдеш, а я скажу:  "Ку-ку!"

Приспів:
Я чекаю тебе, в мене очі незрячі.
Я чекаю тебе, в мене зуби собачі.
Я чекаю тебе, в мене пальці холодні.
Я живу у безодні.

Ти дівчисько дурне та зелене,
Ти далеко не перша у мене.
Але моє жагуче кохання,
Мабуть, буде для тебе останнє.

Приспів:
Я цілую тебе, в мене очі незрячі.
Я цілую тебе, в мене зуби собачі.
Я цiлую тебе, в мене пальці холодні.
Я живу у безодні.
Я кохаю тебе, в мене очі незрячі.
Я кохаю тебе, в мене зуби собачі.
Я кохаю тебе, в мене пальці холодні.
Я живу у безодні.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_41338_l1','pisniua_41338','YouTube','https://www.youtube.com/watch?v=hBxzUwdj1fY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4139481';
DELETE FROM song_versions WHERE song_id = 'pisniua_4139481';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4139481';
DELETE FROM songs WHERE id = 'pisniua_4139481';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4139481','Дим-димок','Музика: Анатолій Матвійчук Слова: Анатолій Матвійчук. Виконує: Анатолій Матвійчук','uk','ukraine_1991',NULL,NULL,NULL,NULL,'В третій хаті від майдану
Міста Бородянка
Проживає баба Ганна,
Вільна громадянка.
Бабу Ганю знає кожен -
Є на то причина,
Бо без неї жить не може
Ні один мужчина.

Приспів:
Дим-димок над хатою,
Як зелений змій,
Не журися, брате мій,
Чарочку налий.
Завтра будем думати,
Віддавать борги,
А тепер хай журяться
Наші вороги.

А коли заборонили
Гнати кляте зілля,
Баба Ганя не згубилась -
Перейшла в підпілля:
Конспірацію тримає,
Не дратує долю,
Оковиту відпускає
Тільки по паролю.
Приспів.

Баба Ганя б''є поклони
За перебудову -
Може, зм''якшаться закони,
Все почнеться знову.
І здійсниться давня мрія,
Прийде день чарівний,
І вона шинок відкриє
Кооперативний.
Приспів. (2)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4139481'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4139481','Дим-димок','В третій хаті від майдану
Міста Бородянка
Проживає баба Ганна,
Вільна громадянка.
Бабу Ганю знає кожен -
Є на то причина,
Бо без неї жить не може
Ні один мужчина.

Приспів:
Дим-димок над хатою,
Як зелений змій,
Не журися, брате мій,
Чарочку налий.
Завтра будем думати,
Віддавать борги,
А тепер хай журяться
Наші вороги.

А коли заборонили
Гнати кляте зілля,
Баба Ганя не згубилась -
Перейшла в підпілля:
Конспірацію тримає,
Не дратує долю,
Оковиту відпускає
Тільки по паролю.
Приспів.

Баба Ганя б''є поклони
За перебудову -
Може, зм''якшаться закони,
Все почнеться знову.
І здійсниться давня мрія,
Прийде день чарівний,
І вона шинок відкриє
Кооперативний.
Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4138333';
DELETE FROM song_versions WHERE song_id = 'pisniua_4138333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4138333';
DELETE FROM songs WHERE id = 'pisniua_4138333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4138333','Я нiколи нiкому тебе не вiддам!..','Музика: Ніколо Петраш Слова: Людмила Пономаренко. Виконує: Олександр Пономарьов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я так чекав тебе, чекав, що сни здійснилися...
Мені вуста, твої вуста ночами снилися.
Щоб ми зустрілися в житті під цими зорями,
Назвавши їх на самоті своїми долями...
Сама любов для нас обох той час зазначила,
Ти на долонях рук своїх мене побачила,
Зійшлись дві лінії в одну дорогу зоряну,
Як два струмки в одну ріку, дощами сховану.
Приспів:
Я ніколи, нікому Тебе не віддам!
Хочу бачити, чути, любити щодня.
Я нікого, ніколи ще так не кохав,
Я так довго, так довго на тебе чекав!
Я завжди сердцем відчував що ми зустрінемось
І вже нікуди від надій та мрій не дінемось.
Нам мало Всесвіту з тобою, мало вічності,
Для наших чистих почуттів, для їх чарівності!
Я ніколи нікому тебе не віддам!
Хочу бачити, чути, любити щодня.
Я ніколи нікого ще так не кохав,
Я так довго, так дoвго на тебе...
Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4138333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4138333','Я нiколи нiкому тебе не вiддам!..','Я так чекав тебе, чекав, що сни здійснилися...
Мені вуста, твої вуста ночами снилися.
Щоб ми зустрілися в житті під цими зорями,
Назвавши їх на самоті своїми долями...
Сама любов для нас обох той час зазначила,
Ти на долонях рук своїх мене побачила,
Зійшлись дві лінії в одну дорогу зоряну,
Як два струмки в одну ріку, дощами сховану.
Приспів:
Я ніколи, нікому Тебе не віддам!
Хочу бачити, чути, любити щодня.
Я нікого, ніколи ще так не кохав,
Я так довго, так довго на тебе чекав!
Я завжди сердцем відчував що ми зустрінемось
І вже нікуди від надій та мрій не дінемось.
Нам мало Всесвіту з тобою, мало вічності,
Для наших чистих почуттів, для їх чарівності!
Я ніколи нікому тебе не віддам!
Хочу бачити, чути, любити щодня.
Я ніколи нікого ще так не кохав,
Я так довго, так дoвго на тебе...
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4138333_l1','pisniua_4138333','YouTube','https://www.youtube.com/watch?v=Pcya4bTkuJs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4138333_l2','pisniua_4138333','YouTube','https://www.youtube.com/watch?v=vCNpm9b8vWA','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4138333_l3','pisniua_4138333','YouTube','https://www.youtube.com/watch?v=iBLM2ceyyG8','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4138333_l4','pisniua_4138333','YouTube','https://www.youtube.com/watch?v=9Bm88ds-FVs','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_414131';
DELETE FROM song_versions WHERE song_id = 'pisniua_414131';
DELETE FROM songs_fts WHERE song_id = 'pisniua_414131';
DELETE FROM songs WHERE id = 'pisniua_414131';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_414131','Були на селі','Музика: Олег Скрипка Слова: Олег Скрипка. Виконує: Воплі Відоплясова','uk','ukraine_1991',NULL,NULL,NULL,'"ВВ" альбом "Хвилі Амура"','Гей, були, були на селі,
Гей, були, були у Вороньках.

Гей, були, були на селі.
Гей були, були у Вороньках,
Правили храм.

Гей, були, були на селі,
Гей, були, були у Вороньках,
Правили храм, гуляли в дворі.

їхали підводой
До дядька Івана,
У дворі сідали
Довгими рядками.

Сідали у мотоцикли,
Ганяли за горілкой,
Пили на сіновалі,
Травили анекдоти.

Були-ли на ставку,
Ловили коропів,
Зозуля кувала,
Лікувала тричі
Раз-два-три.

Клали гілля в хаті,
Різали утята,
Рвали поросяті.
Гей, були, були на селі.','[''pisni.org.ua'', ''cat:philosophic'', ''cat:zhartivlyvi'', ''Філософські пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_414131'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_414131','Були на селі','Гей, були, були на селі,
Гей, були, були у Вороньках.

Гей, були, були на селі.
Гей були, були у Вороньках,
Правили храм.

Гей, були, були на селі,
Гей, були, були у Вороньках,
Правили храм, гуляли в дворі.

їхали підводой
До дядька Івана,
У дворі сідали
Довгими рядками.

Сідали у мотоцикли,
Ганяли за горілкой,
Пили на сіновалі,
Травили анекдоти.

Були-ли на ставку,
Ловили коропів,
Зозуля кувала,
Лікувала тричі
Раз-два-три.

Клали гілля в хаті,
Різали утята,
Рвали поросяті.
Гей, були, були на селі.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_414131_l1','pisniua_414131','YouTube','https://www.youtube.com/watch?v=gRDHDU_vRbM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4151930';
DELETE FROM song_versions WHERE song_id = 'pisniua_4151930';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4151930';
DELETE FROM songs WHERE id = 'pisniua_4151930';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4151930','Ворожка','Музика: Олесь Царук Слова: Василь Еллан-Блакитний. Виконує: Олесь Царук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Твоя слава, як бубон, гучна -
Дроботіла смаглява циганка.
Тобі серце віддасть не одна
Ясноока красуня панянка.

Ой, щасливий, щасливий юнак:
Саме щастя, ні крихітки муки.
А те щастя - така гарна річ,
Позлоти ж бо за правдоньку руки.

Може, прийде ще слава гучна
Та не згоїться в серденьку ранка.
Прошумує свавільна весна -
Восени не заводять веснянки.

Ой, брехала про щастя вона,
Чорноока прудкая циганка.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4151930'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4151930','Ворожка','Твоя слава, як бубон, гучна -
Дроботіла смаглява циганка.
Тобі серце віддасть не одна
Ясноока красуня панянка.

Ой, щасливий, щасливий юнак:
Саме щастя, ні крихітки муки.
А те щастя - така гарна річ,
Позлоти ж бо за правдоньку руки.

Може, прийде ще слава гучна
Та не згоїться в серденьку ранка.
Прошумує свавільна весна -
Восени не заводять веснянки.

Ой, брехала про щастя вона,
Чорноока прудкая циганка.');
DELETE FROM song_links WHERE song_id = 'pisniua_415430';
DELETE FROM song_versions WHERE song_id = 'pisniua_415430';
DELETE FROM songs_fts WHERE song_id = 'pisniua_415430';
DELETE FROM songs WHERE id = 'pisniua_415430';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_415430','Дупа жалізова','Музика: Сергій Кузьминський Слова: Сергій Кузьминський. Виконує: Брати Гадюкіни','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Соло:
e -0-7-6-7-9-7-6-7-6-------------12-10-9-10-9-7-6-7-9-7-6-------
h -------------------8-7-8--------------------------------8-7-8-
g -------------------------8-9----------------------------------
Я знав тебе пацанкою малою
І ноль вніманія на тебе обращав
А як прийшов із армії додому
Тебе побачив і на дупу впав

Ти розквіла як маковиння на городі
Я від кохання чисто звар''ював
Я за тобою їздив на мопеді
Hеоднократно погляд твій лапав

Приспів: (2)
Гой-ра, ой-ра-я
Дупа джалізовая

Hа проводах в Стецишина Миколи
Ти шейк зі мною танцювать пішла
І тут мені повіла откровенно
Же влюблена в Безкоровайного Петра

І я напився і пішов до клубу
І цеглою побив всі ліхтарі
По 206-й, частині другій
Hародний суд два роки дав мені.

Приспів. (2)

За то шо їв я на параші сало,
Блатні мене зробили пєтухом
Тепер живу я досить непогано
Хіба із дупи часто л''ється кров

Приспів. (6)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_415430'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_415430','Дупа жалізова','Соло:
e -0-7-6-7-9-7-6-7-6-------------12-10-9-10-9-7-6-7-9-7-6-------
h -------------------8-7-8--------------------------------8-7-8-
g -------------------------8-9----------------------------------
Я знав тебе пацанкою малою
І ноль вніманія на тебе обращав
А як прийшов із армії додому
Тебе побачив і на дупу впав

Ти розквіла як маковиння на городі
Я від кохання чисто звар''ював
Я за тобою їздив на мопеді
Hеоднократно погляд твій лапав

Приспів: (2)
Гой-ра, ой-ра-я
Дупа джалізовая

Hа проводах в Стецишина Миколи
Ти шейк зі мною танцювать пішла
І тут мені повіла откровенно
Же влюблена в Безкоровайного Петра

І я напився і пішов до клубу
І цеглою побив всі ліхтарі
По 206-й, частині другій
Hародний суд два роки дав мені.

Приспів. (2)

За то шо їв я на параші сало,
Блатні мене зробили пєтухом
Тепер живу я досить непогано
Хіба із дупи часто л''ється кров

Приспів. (6)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_415430_l1','pisniua_415430','YouTube','https://www.youtube.com/watch?v=glROmi23dD8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_416634';
DELETE FROM song_versions WHERE song_id = 'pisniua_416634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_416634';
DELETE FROM songs WHERE id = 'pisniua_416634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_416634','Дякую','Музика: Гурт "Океан Ельзи" Слова: Гурт "Океан Ельзи". Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'Текст (основа) та аудіо (mp3): http://www.dyakyu.com/song.html','Акорди подано спрощено. Підібрано за електричною версією пісні. Деякі акорди: F7M [x 3 3 2 1 0] C* [x 3 2 0 1 3] D* [x x 4 x 3 2] D** [x x 4 x 3 5] Am/F* [x x 3 5 5 5] Em/5- [x x 2 3 x 3] G7M [x 2 0 0 3 2] Edim [x x 2 3 2 3] Замість Em/5- можна брати Edim. Аудіо (mp3) і відео до пісні є на сайті http://www.dyakyu.com/song.html:) *** Тут в аудіо текст такий: "Дякую тобі, за то, шо ти завжди зі мною..." Підбір акордів: bohdanko','Вступ:  С F7M С F7M

С          F7M          C*            D* D** D*
Дякую тобі,   за те, що ти завжди зі мною,  ***
Am/F*        Em/5-       A             D
І навіть так, як я хотів, і не без бою,
Fm                         C  F7M С F7M
але й без непотрібних слів.

Дякую тобі, за те, що ти завжди зі мною,  ***
і я живу не так як всі, як за стіною,
але з любов''ю на душі.

Програш:
C F7M C* D
Am/F* Em/5- A D
Fm C F7M С F7M

Дякую тобі, за те, що ти завжди зі мною, ***
і може й я твоє дитя, але з тобою
я світу дам нове життя.
D
...але з тобою
F7M                     C
я світу дам нове життя.

Табулатура основної мелодії для гітари:

Lead.guitar (підібрав bohdanko[c]pisni.org.ua)

E||----------------------|-----------------------|----------------------|
H||------------1---------|-------------1---------|------------1---------|
G||-----------------0----|--------0---------0----|-----------------0----|
D||-------2--------------|--2--3-----------------|-------2--------------|
A||--3-------------------|-----------------------|--3-------------------|
E||----------------------|-----------------------|----------------------|

-----------------------|----------------------|--0----------------|
-------------1---------|------------1---------|-------------------|
--------0---------0----|-----------------0----|-------------------|
--2--3-----------------|-------2--------------|-------------------|
-----------------------|--3-------------------|-------------------|

---------------------|------------3----------|------------2h-5--2h-5--|
------------1--------|-----------------1/-3--|-------3----------------|
-------2-------------|-------0---------------|------------------------|
--3------------------|--2--------------------|--4---------------------|

--2----------------|------------5---------|------------3--------|
-------------------|-----------------5----|---------------------|
-------------------|-------5--------------|-------3-------------|
-------------------|--3-------------------|--2------------------|

--0---------3---------|--5----------------|-----------------2----|
-------2---------5----|-------------------|------------3---------|
-------2---------6----|-------------------|-------2--------------|
----------------------|-------------------|--0-------------------|
--0-------------------|-------------------|----------------------|

-----------------------|-----------------1----|------------------||
-----------------------|------------1---------|------------------||
------0-2h0------------|-------1--------------|------------------||
-------------4----0----|--3-------------------|------------------||','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_416634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_416634','Дякую','Вступ:  С F7M С F7M

С          F7M          C*            D* D** D*
Дякую тобі,   за те, що ти завжди зі мною,  ***
Am/F*        Em/5-       A             D
І навіть так, як я хотів, і не без бою,
Fm                         C  F7M С F7M
але й без непотрібних слів.

Дякую тобі, за те, що ти завжди зі мною,  ***
і я живу не так як всі, як за стіною,
але з любов''ю на душі.

Програш:
C F7M C* D
Am/F* Em/5- A D
Fm C F7M С F7M

Дякую тобі, за те, що ти завжди зі мною, ***
і може й я твоє дитя, але з тобою
я світу дам нове життя.
D
...але з тобою
F7M                     C
я світу дам нове життя.

Табулатура основної мелодії для гітари:

Lead.guitar (підібрав bohdanko[c]pisni.org.ua)

E||----------------------|-----------------------|----------------------|
H||------------1---------|-------------1---------|------------1---------|
G||-----------------0----|--------0---------0----|-----------------0----|
D||-------2--------------|--2--3-----------------|-------2--------------|
A||--3-------------------|-----------------------|--3-------------------|
E||----------------------|-----------------------|----------------------|

-----------------------|----------------------|--0----------------|
-------------1---------|------------1---------|-------------------|
--------0---------0----|-----------------0----|-------------------|
--2--3-----------------|-------2--------------|-------------------|
-----------------------|--3-------------------|-------------------|

---------------------|------------3----------|------------2h-5--2h-5--|
------------1--------|-----------------1/-3--|-------3----------------|
-------2-------------|-------0---------------|------------------------|
--3------------------|--2--------------------|--4---------------------|

--2----------------|------------5---------|------------3--------|
-------------------|-----------------5----|---------------------|
-------------------|-------5--------------|-------3-------------|
-------------------|--3-------------------|--2------------------|

--0---------3---------|--5----------------|-----------------2----|
-------2---------5----|-------------------|------------3---------|
-------2---------6----|-------------------|-------2--------------|
----------------------|-------------------|--0-------------------|
--0-------------------|-------------------|----------------------|

-----------------------|-----------------1----|------------------||
-----------------------|------------1---------|------------------||
------0-2h0------------|-------1--------------|------------------||
-------------4----0----|--3-------------------|------------------||');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_416634_l1','pisniua_416634','YouTube','https://www.youtube.com/watch?v=dTvYfIJdGdg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_417034';
DELETE FROM song_versions WHERE song_id = 'pisniua_417034';
DELETE FROM songs_fts WHERE song_id = 'pisniua_417034';
DELETE FROM songs WHERE id = 'pisniua_417034';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_417034','Краса твоя','Музика: Ескейп Слова: Ескейп. Виконує: Escape','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Зараз дуже холодно мені, біль в моїй душі.
Та серце моє так болить, потрібна ти мені.
Сиджу і думаю собі: "Коли прийдеш сюди?".
Не знаю як мені змогти прожити ці всі дні.

Приспів:
Краса твоя мене з розуму звела
Без тебе я не можу  уо -у-о-о,
І в своїх снах я бачу лиш тебе.

По вулицях я сам ходжу і дим від сигарет,
Від нього я забув уже як люблю я тебе.
В моїх очах цей дивний погляд на оцей весь світ.
З моїх очей сльоза вже зараз потече.

Краса твоя мене з розуму звела
Без тебе я не можу  уо -у-о-о,
І в своїх снах я бачу лиш тебе.

Краса твоя мене з розуму звела
Без тебе я не можу  уо -у-о-о,
І в своїх снах я бачу лиш тебе уо -у-о-є','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_417034'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_417034','Краса твоя','Зараз дуже холодно мені, біль в моїй душі.
Та серце моє так болить, потрібна ти мені.
Сиджу і думаю собі: "Коли прийдеш сюди?".
Не знаю як мені змогти прожити ці всі дні.

Приспів:
Краса твоя мене з розуму звела
Без тебе я не можу  уо -у-о-о,
І в своїх снах я бачу лиш тебе.

По вулицях я сам ходжу і дим від сигарет,
Від нього я забув уже як люблю я тебе.
В моїх очах цей дивний погляд на оцей весь світ.
З моїх очей сльоза вже зараз потече.

Краса твоя мене з розуму звела
Без тебе я не можу  уо -у-о-о,
І в своїх снах я бачу лиш тебе.

Краса твоя мене з розуму звела
Без тебе я не можу  уо -у-о-о,
І в своїх снах я бачу лиш тебе уо -у-о-є');
DELETE FROM song_links WHERE song_id = 'pisniua_417083';
DELETE FROM song_versions WHERE song_id = 'pisniua_417083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_417083';
DELETE FROM songs WHERE id = 'pisniua_417083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_417083','Там, де нас нема','Музика: Гурт "Океан Ельзи" Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'Диск MP3 формату "ОЕ"','Підбір акордів: Невідомо','Intro: Em D C# C H

Там, там, там, тільки там, де нас нема
Hm
Там не падає зима
Тільки там, тільки там де нас нема з неба
Там, там, там, тільки там, де нас нема
Там не падає вона
Тільки там, тільки там де нас нема й не треба

Там, там, там, тільки там, де нас нема
Ходять всі на головах
Тільки там, тільки там де нас нема ходять
Там, там, там, тільки там, де нас нема
Ходять всі на головах
І питаються у нас де ви є ?

Em A         Am   H(?)
Скажі мені, чому не можу
Забути те, чого нема
Скажі мені, чому не можу
Забути те, що
Те, що навколо зима.

Там, там, там, тільки там, де нас нема
Там не падає зима
Тільки там, тільки там де нас нема  люди
Там, там, там, тільки там, де нас нема
Там тече жива вода
Тільки там, тільки там де нас нема всюди

Там, там, там, тільки там, де нас нема
Менше льоду, ніж тепла
Тільки там, тільки там де нас нема льоду
Там, там, там, тільки там, де нас нема
Ходять всі на головах
І тече жива вода не для нас.

Скажі мені, чому не можу
Забути те, чого нема
Скажі мені, чому не можу
Забути те, що
Те, що навколо зима.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:philosophic'', ''Пісні про кохання, ліричні'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_417083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_417083','Там, де нас нема','Intro: Em D C# C H

Там, там, там, тільки там, де нас нема
Hm
Там не падає зима
Тільки там, тільки там де нас нема з неба
Там, там, там, тільки там, де нас нема
Там не падає вона
Тільки там, тільки там де нас нема й не треба

Там, там, там, тільки там, де нас нема
Ходять всі на головах
Тільки там, тільки там де нас нема ходять
Там, там, там, тільки там, де нас нема
Ходять всі на головах
І питаються у нас де ви є ?

Em A         Am   H(?)
Скажі мені, чому не можу
Забути те, чого нема
Скажі мені, чому не можу
Забути те, що
Те, що навколо зима.

Там, там, там, тільки там, де нас нема
Там не падає зима
Тільки там, тільки там де нас нема  люди
Там, там, там, тільки там, де нас нема
Там тече жива вода
Тільки там, тільки там де нас нема всюди

Там, там, там, тільки там, де нас нема
Менше льоду, ніж тепла
Тільки там, тільки там де нас нема льоду
Там, там, там, тільки там, де нас нема
Ходять всі на головах
І тече жива вода не для нас.

Скажі мені, чому не можу
Забути те, чого нема
Скажі мені, чому не можу
Забути те, що
Те, що навколо зима.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_417083_l1','pisniua_417083','YouTube','https://www.youtube.com/watch?v=ZMCP7Zd-1Uk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_417083_l2','pisniua_417083','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_417333';
DELETE FROM song_versions WHERE song_id = 'pisniua_417333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_417333';
DELETE FROM songs WHERE id = 'pisniua_417333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_417333','Файне місто Тернопіль','Музика: Брати Гадюкіни Слова: Брати Гадюкіни. Виконує: Брати Гадюкіни, Русичі','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Програш-1:  A A D A Asus4 A (x2)

Програш-2:  A Asus4 A1+5 Asus4 A (x4)

A
Я мав сімнадцять років, я вчитися не хтів
A
Я втік від мами з татом, я болт на все забив
A
В Тернополі торчав катав у ширку дімедрол
A
Я ненавидів поп, я слухав тіко рок-н-рол

Приспів
Камон Вася, старайся не трусити попіл
Добий, бродяга, п''ятку і поїдем
A
В файне місто Тернопіль

Програш-2 (x4)

Я там зустрів чувіху їй шістнадцяти не було
Зовсім малолєтка, але в ліжку як акула
Я з нею все забув, забув про ширку й дімедрол
Але вона любила диско, а не рок-н-рол

Приспів

Програш-2 (x4)

Програш-3:      A D A-A
A A A A (x3)

Програш-2 (x2)

Вона крутила БоніЕм і я від того звар''ював
Нагнав її із хати, ше й під сраку надавав
І хоч я понімав, шо то в свої ворота гол
Але баби на час - форева онлі рок-н-рол

Приспів
Програш-3:      A Asus4 A1+5 Asus4 A (x2)
A Asus4 A1+5 Asus4 A
D (пауза)
A Asus4 A1+5 Asus4 A (x4)

Програш-1 (x2)

Файне місто Тернопіль (х4)  A A D A
Добий бродяга п''ятку
І поїдем в файне місто Тернопіль','[''pisni.org.ua'', ''cat:philosophic'', ''cat:zhartivlyvi'', ''Філософські пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_417333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_417333','Файне місто Тернопіль','Програш-1:  A A D A Asus4 A (x2)

Програш-2:  A Asus4 A1+5 Asus4 A (x4)

A
Я мав сімнадцять років, я вчитися не хтів
A
Я втік від мами з татом, я болт на все забив
A
В Тернополі торчав катав у ширку дімедрол
A
Я ненавидів поп, я слухав тіко рок-н-рол

Приспів
Камон Вася, старайся не трусити попіл
Добий, бродяга, п''ятку і поїдем
A
В файне місто Тернопіль

Програш-2 (x4)

Я там зустрів чувіху їй шістнадцяти не було
Зовсім малолєтка, але в ліжку як акула
Я з нею все забув, забув про ширку й дімедрол
Але вона любила диско, а не рок-н-рол

Приспів

Програш-2 (x4)

Програш-3:      A D A-A
A A A A (x3)

Програш-2 (x2)

Вона крутила БоніЕм і я від того звар''ював
Нагнав її із хати, ше й під сраку надавав
І хоч я понімав, шо то в свої ворота гол
Але баби на час - форева онлі рок-н-рол

Приспів
Програш-3:      A Asus4 A1+5 Asus4 A (x2)
A Asus4 A1+5 Asus4 A
D (пауза)
A Asus4 A1+5 Asus4 A (x4)

Програш-1 (x2)

Файне місто Тернопіль (х4)  A A D A
Добий бродяга п''ятку
І поїдем в файне місто Тернопіль');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_417333_l1','pisniua_417333','YouTube','https://www.youtube.com/watch?v=HRqstELBTOw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_417333_l2','pisniua_417333','YouTube','https://www.youtube.com/watch?v=Cah4MJiVUFI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_417333_l3','pisniua_417333','http://accords.com.ua/song/312871','http://accords.com.ua/song/312871','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_417737';
DELETE FROM song_versions WHERE song_id = 'pisniua_417737';
DELETE FROM songs_fts WHERE song_id = 'pisniua_417737';
DELETE FROM songs WHERE id = 'pisniua_417737';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_417737','Чуваки, всьо чотко','Музика: Сергій Кузьминський Слова: Сергій Кузьминський. Виконує: Брати Гадюкіни','uk','ukraine_1991',NULL,NULL,'http://vik75.h1.ru/muz1.shtml?id=101',NULL,'Кохана, я з далека бачу
Кохана, писок твій червоний
Кохана, трохи я сі тащу
Кохана, випив ацетони

Приспів:
Чуваки, всьо чотко
Чуваки, гей дана-дана
Чуваки, всьо чотко

Чуваки, гей дана-дана
Чуваки, всьо чотко

Чуваки, гей джига-джига
Чуваки, всьо чотко
Чуваки, гей бугі-мугі, є

Я видів, же на краківскькім базарі
Жиди файні мешти продавали
Я хтів би с, аби ти мала такі самі
То врешті ми з тобов сі змільдували

Приспів.

Ява триста пєдесята
Блистит, як в собаки яйця
Стою я під твоєю хатов
Виходь, поїдемо на танці','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_417737'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_417737','Чуваки, всьо чотко','Кохана, я з далека бачу
Кохана, писок твій червоний
Кохана, трохи я сі тащу
Кохана, випив ацетони

Приспів:
Чуваки, всьо чотко
Чуваки, гей дана-дана
Чуваки, всьо чотко

Чуваки, гей дана-дана
Чуваки, всьо чотко

Чуваки, гей джига-джига
Чуваки, всьо чотко
Чуваки, гей бугі-мугі, є

Я видів, же на краківскькім базарі
Жиди файні мешти продавали
Я хтів би с, аби ти мала такі самі
То врешті ми з тобов сі змільдували

Приспів.

Ява триста пєдесята
Блистит, як в собаки яйця
Стою я під твоєю хатов
Виходь, поїдемо на танці');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_417737_l1','pisniua_417737','YouTube','https://www.youtube.com/watch?v=UX6EGrbX_IQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_418134';
DELETE FROM song_versions WHERE song_id = 'pisniua_418134';
DELETE FROM songs_fts WHERE song_id = 'pisniua_418134';
DELETE FROM songs WHERE id = 'pisniua_418134';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_418134','Горобина ніч','Музика: Олег Макаревич Слова: Лілія Золотоноша. Виконує: Оксана Білозір','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Моє бажання зупини,
Один-єдиний крок і - осінь.
Я не скажу тобі - "прийди",
Дощ розпускає довгі коси.
То буде завтра як завжди,
А за плечима пересуди.
Моєї тут нема вини,
За нас все вирішили люди.

Не в тому річ, не в тому річ,
Що горобина плаче ніч,
А в тому річ, а в тому річ,
Що ми з тобою - різні.
Що це кохання - боротьба,
Розчарування і журба...,
Як осінь пізня.

Ти забереш моє - "прощай",
Сумління знову стане чистим.
Від мене тихо відвикай.
На горобині вже намисто.
На темнім вечорі розлук,
З тобою вже сміється інша.
Ти доторкнувся інших рук,
Я не прийду до тебе більше.

Не в тому річ, не в тому річ,
Що горобина плаче ніч,
А в тому річ, а в тому річ,
Що ми з тобою - різні.
Що це кохання - боротьба,
Розчарування і журба...
Як осінь пізня.

На горобині водночас
Тривожне листя облетіло.
Я знову чую білий вальс,
Для тебе серце я відкрила.

Не в тому річ, не в тому річ,
Що горобина плаче ніч,
А в тому річ, а в тому річ,
Що ми з тобою - різні.
Що це кохання - боротьба,
Розчарування і журба...
Як осінь пізня.

Що це кохання - боротьба,
Розчарування і журба...
Як осінь пізня','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_418134'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_418134','Горобина ніч','Моє бажання зупини,
Один-єдиний крок і - осінь.
Я не скажу тобі - "прийди",
Дощ розпускає довгі коси.
То буде завтра як завжди,
А за плечима пересуди.
Моєї тут нема вини,
За нас все вирішили люди.

Не в тому річ, не в тому річ,
Що горобина плаче ніч,
А в тому річ, а в тому річ,
Що ми з тобою - різні.
Що це кохання - боротьба,
Розчарування і журба...,
Як осінь пізня.

Ти забереш моє - "прощай",
Сумління знову стане чистим.
Від мене тихо відвикай.
На горобині вже намисто.
На темнім вечорі розлук,
З тобою вже сміється інша.
Ти доторкнувся інших рук,
Я не прийду до тебе більше.

Не в тому річ, не в тому річ,
Що горобина плаче ніч,
А в тому річ, а в тому річ,
Що ми з тобою - різні.
Що це кохання - боротьба,
Розчарування і журба...
Як осінь пізня.

На горобині водночас
Тривожне листя облетіло.
Я знову чую білий вальс,
Для тебе серце я відкрила.

Не в тому річ, не в тому річ,
Що горобина плаче ніч,
А в тому річ, а в тому річ,
Що ми з тобою - різні.
Що це кохання - боротьба,
Розчарування і журба...
Як осінь пізня.

Що це кохання - боротьба,
Розчарування і журба...
Як осінь пізня');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_418134_l1','pisniua_418134','YouTube','https://www.youtube.com/watch?v=lq61xybszl4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_418134_l2','pisniua_418134','YouTube','https://www.youtube.com/watch?v=AytnB_t87y0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4187735';
DELETE FROM song_versions WHERE song_id = 'pisniua_4187735';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4187735';
DELETE FROM songs WHERE id = 'pisniua_4187735';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4187735','Цей новий рік','Музика: Ігор Рудий Слова: Оксана Голуб. Виконує: Іван Красовський, Оксана Голуб, Ігор Рудий, Владислав Лєлюшкін','uk','ukraine_1991',NULL,NULL,'Продюсер',NULL,'Світять вогнів герлянди.
Ясно, неначе вдень.
В місті сьогодні свято,
Свято в серцях людей!
Рідні прийдуть, знайомі.
Їх зутрічати час.
В кожнім гостиннім домі
Радо чекають вас.

Приспів:
Новий рік!
Хай подарує нам Новий рік
Безліч думок і заповітних мрій!
Новий рік!
Хай буде чистим цей новий рік,
Мов той найперший білий,
Сріблястий сніг!

Казку чекають діти,
Чути веселий сміх!
Нам вже не зрозуміти
Мрій всіх дитячих їх.
Та у цю ніч дитинство
Ближчим стає для всіх.
Мить чарівного дійства -
Відлік хвилин нових.

Приспів','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4187735'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4187735','Цей новий рік','Світять вогнів герлянди.
Ясно, неначе вдень.
В місті сьогодні свято,
Свято в серцях людей!
Рідні прийдуть, знайомі.
Їх зутрічати час.
В кожнім гостиннім домі
Радо чекають вас.

Приспів:
Новий рік!
Хай подарує нам Новий рік
Безліч думок і заповітних мрій!
Новий рік!
Хай буде чистим цей новий рік,
Мов той найперший білий,
Сріблястий сніг!

Казку чекають діти,
Чути веселий сміх!
Нам вже не зрозуміти
Мрій всіх дитячих їх.
Та у цю ніч дитинство
Ближчим стає для всіх.
Мить чарівного дійства -
Відлік хвилин нових.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4187735_l1','pisniua_4187735','YouTube','https://www.youtube.com/watch?v=JlsI5ui5KHs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4187735_l2','pisniua_4187735','YouTube','https://www.youtube.com/watch?v=LJWjZZPYk_0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4190634';
DELETE FROM song_versions WHERE song_id = 'pisniua_4190634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4190634';
DELETE FROM songs WHERE id = 'pisniua_4190634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4190634','Місяць і зорі','Музика: Алла Басова Слова: Марійка Підгірянка. Виконує: Віка Воробйова','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Тихий вечір, тихий красний,
Над горою місяць ясний
Пасе зорі, завертає,
На трембіті грає, грає.

Приспів:
Гой-я, зорі, гой-я, гой-я,
Трембіточка срібна моя.
Кошарочка овець повна,
На овечках біла вовна.

Ходить місяць аж до ранку,
Вийшла зоря на полянку.
Ой, місяцю, місяченьку,
Зганяй зорі помаленьку.

Приспів.

Вже отара зірок рідне,
А вівчарик блідне, блідне.
Вже зірниця розквітає,
Встати сонце закликає.

Приспів','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4190634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4190634','Місяць і зорі','Тихий вечір, тихий красний,
Над горою місяць ясний
Пасе зорі, завертає,
На трембіті грає, грає.

Приспів:
Гой-я, зорі, гой-я, гой-я,
Трембіточка срібна моя.
Кошарочка овець повна,
На овечках біла вовна.

Ходить місяць аж до ранку,
Вийшла зоря на полянку.
Ой, місяцю, місяченьку,
Зганяй зорі помаленьку.

Приспів.

Вже отара зірок рідне,
А вівчарик блідне, блідне.
Вже зірниця розквітає,
Встати сонце закликає.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4190634_l1','pisniua_4190634','YouTube','https://www.youtube.com/watch?v=9ZKJjUZ2Z5Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4196185';
DELETE FROM song_versions WHERE song_id = 'pisniua_4196185';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4196185';
DELETE FROM songs WHERE id = 'pisniua_4196185';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4196185','Материнська колисанка','Музика: Валерій Подвала Слова: Платон Воронько. Виконує: Алла Шутько','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Материнська колисанка,
Доню моя мила, -
Се надія і благанка -
Дати щастю крила!

На літа твої й світанки,
Долі подорожні,
Материнські колисанки
Любі і тривожні...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4196185'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4196185','Материнська колисанка','Материнська колисанка,
Доню моя мила, -
Се надія і благанка -
Дати щастю крила!

На літа твої й світанки,
Долі подорожні,
Материнські колисанки
Любі і тривожні...');
DELETE FROM song_links WHERE song_id = 'pisniua_4211338';
DELETE FROM song_versions WHERE song_id = 'pisniua_4211338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4211338';
DELETE FROM songs WHERE id = 'pisniua_4211338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4211338','Весела пісня','Музика: Віктор Бронюк Слова: Віктор Бронюк. Виконує: Т.І.К. (Тік)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Гупає в грудях малий барабан,
Труби трублять, грає баян,
Радісно пісня весела лунає,
"ТІК" звучить, для вас Вітька співає!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!

Мені пропонують піти в депутати,
А я хочу разом із вами співати!
Вся моя влада і весь мій закон -
Пісня, баян, і я кричу в мікрофон:
Що буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!

Гупає в грудях малий барабан,
Труби трублять, грає баян,
Радісно пісня весела лунає,
"ТІК" звучить, для вас Вітька співає,
Що буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4211338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4211338','Весела пісня','Гупає в грудях малий барабан,
Труби трублять, грає баян,
Радісно пісня весела лунає,
"ТІК" звучить, для вас Вітька співає!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!

Мені пропонують піти в депутати,
А я хочу разом із вами співати!
Вся моя влада і весь мій закон -
Пісня, баян, і я кричу в мікрофон:
Що буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!

Гупає в грудях малий барабан,
Труби трублять, грає баян,
Радісно пісня весела лунає,
"ТІК" звучить, для вас Вітька співає,
Що буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!');
DELETE FROM song_links WHERE song_id = 'pisniua_4212838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4212838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4212838';
DELETE FROM songs WHERE id = 'pisniua_4212838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4212838','Ти — найкраща з людей','Музика: Darwin Слова: Darwin. Виконує: Darwin, Alyosha','uk','ukraine_1991',NULL,NULL,'аудіозапис','Рекомендовано грати на барре.','Я нікому не розкажу
Тільки тобі,
Як, здавалося, востаннє
Рута цвіте,
Як у небі неосяжнім
Гасли зорі,
Якби я міг згадати все,
Згадати все!..

Приспів:
Hm
Хайнорілей,
G
Ти — найкраща з людей!
A
Норілей-норілай,
F#
Я тобі винен сонце й
F#
Небо і більше...
Hm
Хайнорілей,
G
Серед сотень очей,
A
Норілей-норілай,
F#
Я лише твоїм
Hm
Відкриваю свій відчай,
G
Свій відчай,
Свій відчай...

Я нікому не відкрию
Тільки тобі
Досі нездійсненну мрію
Із моїх снів,
Наче всі дороги світу
Стали твої
А я навік - обрій для них,
Обрій для них!..

Приспів.

Хайнорілей,
Ти — найкраща з людей!
Норілей-норілай,
Я тобі винен сонце й
Небо і більше...
Хайнорілей...','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4212838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4212838','Ти — найкраща з людей','Я нікому не розкажу
Тільки тобі,
Як, здавалося, востаннє
Рута цвіте,
Як у небі неосяжнім
Гасли зорі,
Якби я міг згадати все,
Згадати все!..

Приспів:
Hm
Хайнорілей,
G
Ти — найкраща з людей!
A
Норілей-норілай,
F#
Я тобі винен сонце й
F#
Небо і більше...
Hm
Хайнорілей,
G
Серед сотень очей,
A
Норілей-норілай,
F#
Я лише твоїм
Hm
Відкриваю свій відчай,
G
Свій відчай,
Свій відчай...

Я нікому не відкрию
Тільки тобі
Досі нездійсненну мрію
Із моїх снів,
Наче всі дороги світу
Стали твої
А я навік - обрій для них,
Обрій для них!..

Приспів.

Хайнорілей,
Ти — найкраща з людей!
Норілей-норілай,
Я тобі винен сонце й
Небо і більше...
Хайнорілей...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4212838_l1','pisniua_4212838','YouTube','https://www.youtube.com/watch?v=XF8sP7DaPk4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4212838_l2','pisniua_4212838','YouTube','https://www.youtube.com/watch?v=7J5r9Hb2COg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_421838';
DELETE FROM song_versions WHERE song_id = 'pisniua_421838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_421838';
DELETE FROM songs WHERE id = 'pisniua_421838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_421838','Святкова','(А зі мною був красивий). Музика: Олександр Злотник Слова: О. Піка. Виконує: Оксана Білозір','uk','ukraine_1991',NULL,NULL,'Аудіо-альбом "Оксана Білозір. "Горобина ніч"','Текст записано на слух з аудіо.','Все було святково,
все було казково.
Заховав нас вечір
за широкі плечі...

Щоб ніхто не бачив,
чи сміюсь, чи плачу...
Щоб ніхто не чув,
Хто зі мною був.

Приспів: (2)
А зі мною був красивий...
А зі мною був щасливий...
Був зі мною мій миленький -
І забрав моє серденько.

Заховав нас вечір
за широкі плечі
і повів охоче
у покої ночі.

А у тих покоях
ми були лиш двоє.
І ніхто не знає,
кого я кохаю.

Приспів. (2)

І ніхто не знає,
кого я чекаю,
кого я цілую
і за ким сумую.

І ніхто не бачив,
чи сміюсь чи плачу.
І ніхто не чув,
хто зі мною був.

Приспів. (2)

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_421838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_421838','Святкова','Все було святково,
все було казково.
Заховав нас вечір
за широкі плечі...

Щоб ніхто не бачив,
чи сміюсь, чи плачу...
Щоб ніхто не чув,
Хто зі мною був.

Приспів: (2)
А зі мною був красивий...
А зі мною був щасливий...
Був зі мною мій миленький -
І забрав моє серденько.

Заховав нас вечір
за широкі плечі
і повів охоче
у покої ночі.

А у тих покоях
ми були лиш двоє.
І ніхто не знає,
кого я кохаю.

Приспів. (2)

І ніхто не знає,
кого я чекаю,
кого я цілую
і за ким сумую.

І ніхто не бачив,
чи сміюсь чи плачу.
І ніхто не чув,
хто зі мною був.

Приспів. (2)

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4233632';
DELETE FROM song_versions WHERE song_id = 'pisniua_4233632';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4233632';
DELETE FROM songs WHERE id = 'pisniua_4233632';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4233632','На городі сурма грає','Музика: Микола Садовський Слова: народні. Виконує: Січова оркестра Сурма','uk','ukraine_1991',NULL,NULL,'Платівка грамвидавництва "Columbia" 27122-F',NULL,'На городі сурма грає,
На городі сурма грає,
Гей, то Січ        |
В похід виступає.  | (2)

Пусти мене, моя мати,
Пусти мене, моя мати,
Гей, там зі Січев  |
Погуляти.          | (2)

Буду тобі день орати,
Буду тобі день орати,
Гей, три дні ціпом |
Молотити.          | (2)','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4233632'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4233632','На городі сурма грає','На городі сурма грає,
На городі сурма грає,
Гей, то Січ        |
В похід виступає.  | (2)

Пусти мене, моя мати,
Пусти мене, моя мати,
Гей, там зі Січев  |
Погуляти.          | (2)

Буду тобі день орати,
Буду тобі день орати,
Гей, три дні ціпом |
Молотити.          | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4233632_l1','pisniua_4233632','YouTube','https://www.youtube.com/watch?v=S_qtPNFGN34','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4243134';
DELETE FROM song_versions WHERE song_id = 'pisniua_4243134';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4243134';
DELETE FROM songs WHERE id = 'pisniua_4243134';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4243134','Гітара','Музика: Ірина Федишин Слова: Ірина Федишин. Виконує: Ірина Федишин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сонце за горою сховається
І на землю тихо ніч впаде,
А моя душа розривається,
Бо не знаю - милий чи прийде.
"На-на" - десь мелодія заграла
"На-на" - моє серце надірвала
"На-на" - я на тебе так чекала,
Чекала...

Приспів:
Твоя гітара, "на-на-на-на-на",
Давно не грала, "на-на-на-на-на",
Як буде сумно, "на-на-на-на-на",
На ній заграй, на ній заграй.
Своїй дівчині, "на-на-на-на-на",
Одній, єдиній, "на-на-на-на-на",
Веселу пісню, "на-на-на-на-на",
На ній заграй!..

А в моїй душі лиш одна струна
Залишилася від тої гри,
І не знаю я, але знаєш ти,
Як по ній акордами іти.
"На-на" - десь мелодія заграла
"На-на" - моє серце надірвала
"На-на" - я на тебе так чекала,
Чекала...

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4243134'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4243134','Гітара','Сонце за горою сховається
І на землю тихо ніч впаде,
А моя душа розривається,
Бо не знаю - милий чи прийде.
"На-на" - десь мелодія заграла
"На-на" - моє серце надірвала
"На-на" - я на тебе так чекала,
Чекала...

Приспів:
Твоя гітара, "на-на-на-на-на",
Давно не грала, "на-на-на-на-на",
Як буде сумно, "на-на-на-на-на",
На ній заграй, на ній заграй.
Своїй дівчині, "на-на-на-на-на",
Одній, єдиній, "на-на-на-на-на",
Веселу пісню, "на-на-на-на-на",
На ній заграй!..

А в моїй душі лиш одна струна
Залишилася від тої гри,
І не знаю я, але знаєш ти,
Як по ній акордами іти.
"На-на" - десь мелодія заграла
"На-на" - моє серце надірвала
"На-на" - я на тебе так чекала,
Чекала...

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4243134_l1','pisniua_4243134','YouTube','https://www.youtube.com/watch?v=XGc-C7dYOh4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4243539';
DELETE FROM song_versions WHERE song_id = 'pisniua_4243539';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4243539';
DELETE FROM songs WHERE id = 'pisniua_4243539';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4243539','Галя молода','Музика: Gallina Слова: Gallina. Виконує: Gallina','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я шукала, мама, правду,
Я ж з дитинства хрещена,
Та немає тої правди
У очах розбещених.
Ви ж йому були не теща,
Сином називаючи,
А він тільки їсть та бреше
Легко, мов співаючи.

Приспів:
Шуба-шуба-шуба-да,
Шуба-шуба-шуба да,
А я Галя молода!
Шуба-шуба-шуба-да,
Шуба-шуба-шуба да,
А я Галя молода!

Ви ж самі співали, мамо,
Ви ж були моторною,
Але раптом з''їхав трактор
На ту смугу чорную.
Полюбила козаченька,
Йому квіти кидала,
А ви взяли мене, ненько,
Ще й за нього видали.

Приспів.

Та не треба сльози, мамо,
Проливати річками,
В мене ж мамо повна хата -
Півники з індичками.
Хай же квітне Україна,
А я з нею славлюся,
А із рідним чоловіком
Я вже якось справлюся!

Приспів. (3)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4243539'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4243539','Галя молода','Я шукала, мама, правду,
Я ж з дитинства хрещена,
Та немає тої правди
У очах розбещених.
Ви ж йому були не теща,
Сином називаючи,
А він тільки їсть та бреше
Легко, мов співаючи.

Приспів:
Шуба-шуба-шуба-да,
Шуба-шуба-шуба да,
А я Галя молода!
Шуба-шуба-шуба-да,
Шуба-шуба-шуба да,
А я Галя молода!

Ви ж самі співали, мамо,
Ви ж були моторною,
Але раптом з''їхав трактор
На ту смугу чорную.
Полюбила козаченька,
Йому квіти кидала,
А ви взяли мене, ненько,
Ще й за нього видали.

Приспів.

Та не треба сльози, мамо,
Проливати річками,
В мене ж мамо повна хата -
Півники з індичками.
Хай же квітне Україна,
А я з нею славлюся,
А із рідним чоловіком
Я вже якось справлюся!

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4243539_l1','pisniua_4243539','YouTube','https://www.youtube.com/watch?v=zSX57WDxpU0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_426931';
DELETE FROM song_versions WHERE song_id = 'pisniua_426931';
DELETE FROM songs_fts WHERE song_id = 'pisniua_426931';
DELETE FROM songs WHERE id = 'pisniua_426931';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_426931','Підпільник Кіндрат','Музика: Андрій Миколайчук Слова: Андрій Миколайчук. Виконує: Андрій Миколайчук','uk','ukraine_1991',NULL,NULL,'Аудіо-альбом "Андрій Миколайчук. "Піду втоплюся"','Текст і акорди записано на слух з аудіо. Тональність оригінальна. * Тут за другим разом на останній рядок приспіву є перехід на 2 півтони вгору, і тоді пісня до кінця виконується у тональності "Hm". Підбір акордів: bohdanko (www.pisni.org.ua)','Передмова:
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
DELETE FROM song_links WHERE song_id = 'pisniua_4271232';
DELETE FROM song_versions WHERE song_id = 'pisniua_4271232';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4271232';
DELETE FROM songs WHERE id = 'pisniua_4271232';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4271232','Полтавські галушки','Музика: Василь Якубович Слова: Анатолій Лихошвай. Виконує: Лтава','uk','ukraine_1991',NULL,NULL,'http://rvo.pl.ua/nove/zbirka_urok_literaturi_ridnogo_kraju1.doc','Пісню виконує Полтавський хор "Лтава" ім. Міщенка.','Був я, друзі, у Тюмені -
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
DELETE FROM song_links WHERE song_id = 'pisniua_42685';
DELETE FROM song_versions WHERE song_id = 'pisniua_42685';
DELETE FROM songs_fts WHERE song_id = 'pisniua_42685';
DELETE FROM songs WHERE id = 'pisniua_42685';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_42685','Усміхнися мені','Музика: Володимир Шабашевич Слова: Вадим Крищенко. Виконує: Назарій Яремчук, Андрій Кравчук, Павло Мрежук','uk','ukraine_1991',NULL,NULL,'www.yaremchuk.cv.ua','TODO: вичитати!','Усміхнися мені,
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
DELETE FROM song_links WHERE song_id = 'pisniua_4272333';
DELETE FROM song_versions WHERE song_id = 'pisniua_4272333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4272333';
DELETE FROM songs WHERE id = 'pisniua_4272333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4272333','Хочу на море','Музика: Наталія Фаліон Слова: Наталія Фаліон. Виконує: Лісапетний батальйон','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Наступило літо, зеленіє жито,
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
DELETE FROM song_links WHERE song_id = 'pisniua_4287';
DELETE FROM song_versions WHERE song_id = 'pisniua_4287';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4287';
DELETE FROM songs WHERE id = 'pisniua_4287';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4287','При долині кущ калини',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'При долині кущ калини
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
DELETE FROM song_links WHERE song_id = 'pisniua_429034';
DELETE FROM song_versions WHERE song_id = 'pisniua_429034';
DELETE FROM songs_fts WHERE song_id = 'pisniua_429034';
DELETE FROM songs WHERE id = 'pisniua_429034';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_429034','Падала зірка','Музика: Павло Доскоч Слова: Павло Доскоч. Виконує: Світозари, Павло Доскоч','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вже сонце стиха скрилось за горою,
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
DELETE FROM song_links WHERE song_id = 'pisniua_430';
DELETE FROM song_versions WHERE song_id = 'pisniua_430';
DELETE FROM songs_fts WHERE song_id = 'pisniua_430';
DELETE FROM songs WHERE id = 'pisniua_430';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_430','Тихий сон','Музика: А. Алєксандров Слова: Осип Маковей. Виконує: Наталія Кияк, Ольга Аркадьєва','uk','ukraine_1991',NULL,NULL,'Пісневир. Молодіжний співаник. Львів 2001','переробка пісні групи "Pet Shop Boys"','Тихий сон по горах ходить,
За рученьку нiчку водить.
I шумлять ліси все тихше,
Сон малих звiрят колише.
Не шуміть, ліси зелені,
Спати йдіть, вітри студені.
Най малята сплять здорові,
Най їм сняться сни чудові.
Аж на небі зазоріє,
Сонце їх малих зогріє.
I зогріє, й поцілує,
I світами помандрує.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_430'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_430','Тихий сон','Тихий сон по горах ходить,
За рученьку нiчку водить.
I шумлять ліси все тихше,
Сон малих звiрят колише.
Не шуміть, ліси зелені,
Спати йдіть, вітри студені.
Най малята сплять здорові,
Най їм сняться сни чудові.
Аж на небі зазоріє,
Сонце їх малих зогріє.
I зогріє, й поцілує,
I світами помандрує.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_430_l1','pisniua_430','YouTube','https://www.youtube.com/watch?v=CBO4lthxElI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_430_l2','pisniua_430','YouTube','https://www.youtube.com/watch?v=xY7UldL15w4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4298634';
DELETE FROM song_versions WHERE song_id = 'pisniua_4298634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4298634';
DELETE FROM songs WHERE id = 'pisniua_4298634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4298634','Калина','Музика: Анатолій Розанов Слова: Сергій Кузнєцов, Ірина Федишин. Виконує: Ірина Федишин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я не перший день тебе люблю,
Але все одно любов мою,
Холодно, не помічаєш ти,
Не даруєш квітів, як завжди...
За тобою ходжу наче тінь.
І чекаю так на погляд твій,
Тільки слів сказати, що люблю
Не знайду...

Приспів:
Цвіте калина біля джерела,
Цвіте черемха, але тільки я,
Я так сумую без твоїх очей,
Без тебе я...
А ти проходиш поруч, як завжди,
Мене не бачиш, як ніколи ти,
Ти - моє щастя, ти - любов моя,
I біль моя...

Сонце не зустріне місяця,
Ми, як літо і зима.
Ти почуй мене, коханий мій,
Найрідніший, дорогий:
Мрії ти мої не розбивай,
Квіти подаруй, не відпускай,
І мені, прошепочи, що любиш ти...

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4298634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4298634','Калина','Я не перший день тебе люблю,
Але все одно любов мою,
Холодно, не помічаєш ти,
Не даруєш квітів, як завжди...
За тобою ходжу наче тінь.
І чекаю так на погляд твій,
Тільки слів сказати, що люблю
Не знайду...

Приспів:
Цвіте калина біля джерела,
Цвіте черемха, але тільки я,
Я так сумую без твоїх очей,
Без тебе я...
А ти проходиш поруч, як завжди,
Мене не бачиш, як ніколи ти,
Ти - моє щастя, ти - любов моя,
I біль моя...

Сонце не зустріне місяця,
Ми, як літо і зима.
Ти почуй мене, коханий мій,
Найрідніший, дорогий:
Мрії ти мої не розбивай,
Квіти подаруй, не відпускай,
І мені, прошепочи, що любиш ти...

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4298634_l1','pisniua_4298634','YouTube','https://www.youtube.com/watch?v=5C-YMH5_tEo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4300230';
DELETE FROM song_versions WHERE song_id = 'pisniua_4300230';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4300230';
DELETE FROM songs WHERE id = 'pisniua_4300230';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4300230','Кохання','Музика: Pianoбой Слова: Pianoбой. Виконує: Pianoбой','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Якби я міг врятувати світ,
Ім''ям назвав би твоїм!
Зробив би так, щоб все навкруги
Завжди співало ним
І дихало твоїм коханням!

Приспів:
Тепер я знаю, це кохання!
Ти моє вперше і востаннє!
Тобі так личить моє кохання!

Якби я міг долати час,
Я б золотий вік знайшов,
Спитати всіх тих фараонів і богів,
Чому зі мною ти,
Вся з ніг до голови з кохання!

Приспів.

Для нас з тобою
Цей велетенський світ
Стає такий легкий -
Розправим крила і полетим!
Кохання!
Ми разом творимо кохання!
Це наше перше і останнє
Кохання!..

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4300230'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4300230','Кохання','Якби я міг врятувати світ,
Ім''ям назвав би твоїм!
Зробив би так, щоб все навкруги
Завжди співало ним
І дихало твоїм коханням!

Приспів:
Тепер я знаю, це кохання!
Ти моє вперше і востаннє!
Тобі так личить моє кохання!

Якби я міг долати час,
Я б золотий вік знайшов,
Спитати всіх тих фараонів і богів,
Чому зі мною ти,
Вся з ніг до голови з кохання!

Приспів.

Для нас з тобою
Цей велетенський світ
Стає такий легкий -
Розправим крила і полетим!
Кохання!
Ми разом творимо кохання!
Це наше перше і останнє
Кохання!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4300230_l1','pisniua_4300230','YouTube','https://www.youtube.com/watch?v=r2bYL4h0xJ4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4304735';
DELETE FROM song_versions WHERE song_id = 'pisniua_4304735';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4304735';
DELETE FROM songs WHERE id = 'pisniua_4304735';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4304735','Птахоподібна','(То не пташина). Музика: Михайло Хома Слова: Михайло Хома. Виконує: DZIDZIO','uk','ukraine_1991',NULL,NULL,NULL,NULL,'То не пташина,  то не людина,
Тая людина є птахо-подібна...

А сіло на землю,
І мерзне шоcь в лапки.
То не пташина, то не людина,   |
Тая людина є птахо-подібна.   |2p.

Дзьоб від пташини,
А зуби людини.
Дзьоб від пташини, а зуби людини,  |
Тая людина є птахо-подібна.       |2p.

Яйка пташини,
А краники мужчини.
Яйка пташини, а краник мужчини,   |
Тая людина є птахо-подібна.      |2p.

Млєчко пташини,
А циці дівчини.
Млєчко пташини, в цицях дівчини,   |
Тая людина є птахо-подібна.       |2p.

В цицях дівчини,
Млєчко пташини.
Мням-мням-мням-мням-мням,     |
Млєчко пташини.               |2p.

Ой не понятна
Та птахо-людина.
Трохи мужчина, а трохи дівчина,
Ой не понятна, та птахо-людина.
То не пташина,  то не людина,
Тая людина є птахо-подібна.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4304735'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4304735','Птахоподібна','То не пташина,  то не людина,
Тая людина є птахо-подібна...

А сіло на землю,
І мерзне шоcь в лапки.
То не пташина, то не людина,   |
Тая людина є птахо-подібна.   |2p.

Дзьоб від пташини,
А зуби людини.
Дзьоб від пташини, а зуби людини,  |
Тая людина є птахо-подібна.       |2p.

Яйка пташини,
А краники мужчини.
Яйка пташини, а краник мужчини,   |
Тая людина є птахо-подібна.      |2p.

Млєчко пташини,
А циці дівчини.
Млєчко пташини, в цицях дівчини,   |
Тая людина є птахо-подібна.       |2p.

В цицях дівчини,
Млєчко пташини.
Мням-мням-мням-мням-мням,     |
Млєчко пташини.               |2p.

Ой не понятна
Та птахо-людина.
Трохи мужчина, а трохи дівчина,
Ой не понятна, та птахо-людина.
То не пташина,  то не людина,
Тая людина є птахо-подібна.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4304735_l1','pisniua_4304735','YouTube','https://www.youtube.com/watch?v=ZbMlFJ99Qkw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4304735_l2','pisniua_4304735','YouTube','https://www.youtube.com/watch?v=-inIvziNpIg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4304481';
DELETE FROM song_versions WHERE song_id = 'pisniua_4304481';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4304481';
DELETE FROM songs WHERE id = 'pisniua_4304481';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4304481','Колискова для мами',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сонце в обрій спадало в сонях,
Ніч за сонцем услід іде,
Засинає в земних долонях
Неспокійний матусин день.
Мамі втома лягла на очі,
В моїм серці дзвенять слова:
Як я хочу, ох, я хочу
Колискову їй заспівать!

Приспів:
Мамо, я на долонці
У твій сон принесу
Поцілунок від сонця
І пречисту росу,
І любисток духмяний
Прикладу до чола,
Щоб завжди моя мама
Молодою була!..

Намалюють зірки на небі
Золотаві шляхи-путі,
Ти сказала, що я для тебе
Зоренятко ясне в житті.
А за вікнами бродять клени,
Місяць в шибці мов колобок.
Мамо, мамо, а ти для мене -
Добре сяйво усіх зірок.

Приспів. (2)','[''pisni.org.ua'', ''cat:kolyskovi'', ''cat:pro-batkiv'', ''Колискові'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4304481'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4304481','Колискова для мами','Сонце в обрій спадало в сонях,
Ніч за сонцем услід іде,
Засинає в земних долонях
Неспокійний матусин день.
Мамі втома лягла на очі,
В моїм серці дзвенять слова:
Як я хочу, ох, я хочу
Колискову їй заспівать!

Приспів:
Мамо, я на долонці
У твій сон принесу
Поцілунок від сонця
І пречисту росу,
І любисток духмяний
Прикладу до чола,
Щоб завжди моя мама
Молодою була!..

Намалюють зірки на небі
Золотаві шляхи-путі,
Ти сказала, що я для тебе
Зоренятко ясне в житті.
А за вікнами бродять клени,
Місяць в шибці мов колобок.
Мамо, мамо, а ти для мене -
Добре сяйво усіх зірок.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4304481_l1','pisniua_4304481','YouTube','https://www.youtube.com/watch?v=008vjRZC7jw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4304481_l2','pisniua_4304481','YouTube','https://www.youtube.com/watch?v=x7W1JIgCg6s','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4334032';
DELETE FROM song_versions WHERE song_id = 'pisniua_4334032';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4334032';
DELETE FROM songs WHERE id = 'pisniua_4334032';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4334032','Не моя!..','Музика: Kozak System Слова: Василь Симоненко, Олександр Положинський. Виконує: Kozak System','uk','ukraine_1991',NULL,NULL,'аудіозапис','Підбір акордів VovaRko.','Em
Ну скажи, хіба не фантастично,
G
Що у цьому хаосі доріг
Am
Під суворим небом, небом вічним,
H7
Я тебе зустрів і не зберіг?..
Em
Ти і я - це вічне, як і небо,
G
Доки мерехтітимуть світи!..
Am
Буду я приходити до тебе
H7
І до інших йтимуть горді ти!..
Приспів:
G
Як все буденно, як все звично - |
D
Скільки раз це бачила Земля!    |
Am
Але ми з тобою, ми не вічні,    |
Em
Ми з тобою - просто ти і я...   | (2)
Ну скажи, хіба це не печально,
Що життя без гриму і прикрас
Розкидало штормом п''ятибальним
Наші сни так само, як і нас...
Доля часто є несправедлива,
Там і тут, так само, як і скрізь.
Якось буду я, ти будь щаслива, -
Нам з тобою більше не зійтись!..
Приспів. (2)
І тому для мене так трагічно
Те, що ти чиясь, а не моя!..
І тому для мене так трагічно
Те, що ти чиясь, а не моя!..','[''pisni.org.ua'', ''cat:lirychni'', ''cat:nostalgia'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4334032'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4334032','Не моя!..','Em
Ну скажи, хіба не фантастично,
G
Що у цьому хаосі доріг
Am
Під суворим небом, небом вічним,
H7
Я тебе зустрів і не зберіг?..
Em
Ти і я - це вічне, як і небо,
G
Доки мерехтітимуть світи!..
Am
Буду я приходити до тебе
H7
І до інших йтимуть горді ти!..
Приспів:
G
Як все буденно, як все звично - |
D
Скільки раз це бачила Земля!    |
Am
Але ми з тобою, ми не вічні,    |
Em
Ми з тобою - просто ти і я...   | (2)
Ну скажи, хіба це не печально,
Що життя без гриму і прикрас
Розкидало штормом п''ятибальним
Наші сни так само, як і нас...
Доля часто є несправедлива,
Там і тут, так само, як і скрізь.
Якось буду я, ти будь щаслива, -
Нам з тобою більше не зійтись!..
Приспів. (2)
І тому для мене так трагічно
Те, що ти чиясь, а не моя!..
І тому для мене так трагічно
Те, що ти чиясь, а не моя!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4334032_l1','pisniua_4334032','YouTube','https://www.youtube.com/watch?v=HqeNjgxf-LU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4334032_l2','pisniua_4334032','YouTube','https://www.youtube.com/watch?v=nQ2dxjVrRFU','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4334032_l3','pisniua_4334032','YouTube','https://www.youtube.com/watch?v=5F1X7EbjNfQ','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_4340535';
DELETE FROM song_versions WHERE song_id = 'pisniua_4340535';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4340535';
DELETE FROM songs WHERE id = 'pisniua_4340535';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4340535','Світанкові роси','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Туманом сідають світанкові роси,
Своїм сизим крилом накрили ліси,
Ті роси та довгії дівочії коси
В моє серце запали ви назавжди.

Приспів:

Ой, роси, роси! Та й дівочії коси!
Інієм осіли ви на моїй голові.
Чорнії брови та ті карії очі,
Назавжди залишились у мене в душі.

Світанкові роси та чорнії коси,
В яких заховалась росяна сльоза.
Ті давнії, ті серпневії  роси,
То щаслива юність твоя і моя

Приспів:

Сижу ось тут, на тій квітучій поляні,
Де наша берізка красуня росте.
Довгі віти її ніжно вітер хитає,
Пам''ять про нас вона теж береже.

Приспів:

Роки за роками незамітно спливають,
У минуле за журавлиним клином пливуть.
Юний образ твій з собою вони забирають,
Той образ, що його я не хочу забуть.

Приспів:','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4340535'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4340535','Світанкові роси','Туманом сідають світанкові роси,
Своїм сизим крилом накрили ліси,
Ті роси та довгії дівочії коси
В моє серце запали ви назавжди.

Приспів:

Ой, роси, роси! Та й дівочії коси!
Інієм осіли ви на моїй голові.
Чорнії брови та ті карії очі,
Назавжди залишились у мене в душі.

Світанкові роси та чорнії коси,
В яких заховалась росяна сльоза.
Ті давнії, ті серпневії  роси,
То щаслива юність твоя і моя

Приспів:

Сижу ось тут, на тій квітучій поляні,
Де наша берізка красуня росте.
Довгі віти її ніжно вітер хитає,
Пам''ять про нас вона теж береже.

Приспів:

Роки за роками незамітно спливають,
У минуле за журавлиним клином пливуть.
Юний образ твій з собою вони забирають,
Той образ, що його я не хочу забуть.

Приспів:');
DELETE FROM song_links WHERE song_id = 'pisniua_4338685';
DELETE FROM song_versions WHERE song_id = 'pisniua_4338685';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4338685';
DELETE FROM songs WHERE id = 'pisniua_4338685';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4338685','Біла черемха','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Черемха зелена висока,
Красується в білій фаті,
Своїм ароматом чарує
Навкруги дерева усі.

А дуб кучерявий влюбився,
Той дуб молодий не пеньок.
Хоч жінку та дітей  має
Та шукає ще коханок.

Обласкала черемха дуба,
Зелень його общипала
Та й ясеня в полі зустріла
І його вона покохала.

А ясен високий влюбився,
Ясен молодий не пеньок.
Хоч жінку та дітей має
Та шукає ще коханок.

Черемха ясеня покохала,
Машину, хату забрала.
Знайшла собі клена старого
Та й заміж вийшла за нього.

А клен як старий грибок,
Мов той трухлявий пеньок.
Залишив жінку та діти
Та й шукає собі коханок.

Черемхо, моя ти, черемхо,
Красуєшся в білій фаті,
Скажи мені правду, черемхо,
Чому ягоди твої терпкі?..','[''pisni.org.ua'', ''cat:bardivski'', ''cat:boykivski'', ''cat:kolomyyky'', ''cat:plastovi'', ''cat:romansy'', ''Бардівські пісні'', ''Пісні з Бойківщини'', ''Коломийки'', ''Пластові пісні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4338685'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4338685','Біла черемха','Черемха зелена висока,
Красується в білій фаті,
Своїм ароматом чарує
Навкруги дерева усі.

А дуб кучерявий влюбився,
Той дуб молодий не пеньок.
Хоч жінку та дітей  має
Та шукає ще коханок.

Обласкала черемха дуба,
Зелень його общипала
Та й ясеня в полі зустріла
І його вона покохала.

А ясен високий влюбився,
Ясен молодий не пеньок.
Хоч жінку та дітей має
Та шукає ще коханок.

Черемха ясеня покохала,
Машину, хату забрала.
Знайшла собі клена старого
Та й заміж вийшла за нього.

А клен як старий грибок,
Мов той трухлявий пеньок.
Залишив жінку та діти
Та й шукає собі коханок.

Черемхо, моя ти, черемхо,
Красуєшся в білій фаті,
Скажи мені правду, черемхо,
Чому ягоди твої терпкі?..');
DELETE FROM song_links WHERE song_id = 'pisniua_4340634';
DELETE FROM song_versions WHERE song_id = 'pisniua_4340634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4340634';
DELETE FROM songs WHERE id = 'pisniua_4340634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4340634','Гей, гей, гей, ду, ду, ду!','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Гей, гей, гей, гей,
Ду, ду, ду, ду, ду!
Сонце із-за гір виглядає.
Гей, гей, гей! Вівчар вівці жене
І пісню веселу співає.
Ой, Марічко, гарна чічко,
Карії оченята маєш,
Чи пустиш ня зимувати,
Чи вже когось маєш?

Гей, гей, гей, гей,
Ду, ду, ду, ду, ду!
Над горами сонце сходить,
Гей, гей, гей, гей,
Ду, ду, ду, ду, ду!
Марічка по травах бродить.
Ой, легіню, мій легіню,
Прийму я тя  до хати,
Та й будеш ти зі мною,
В полі коником орати?

Гей, гей, гей, гей,
Ду, ду, ду, ду, ду!
Сонце за обрій сідає,
Гей, гей,гей! Вівчар вівці жене
Та й на трембіті грає.
Ой, краю мій, рідний краю,
З високими горами
В тобі дівки як козулі,
З довгими ногами.

Гей, гей, гей, гей,
Ду, ду, ду, ду, ду!
В полонині трави буяють,
Гей, гей, гей, гей,
Ду, ду, ду, ду, ду!
Мої вівці в травах гуляють.
Ой, вівці ви, мої вівці,
Та  великії отари,
Буду  довго я вас пасти,
Аж допоки мене   стане.

Гей, гей, гей, гей, |
Ду, ду, ду, ду, ду! | (4)','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4340634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4340634','Гей, гей, гей, ду, ду, ду!','Гей, гей, гей, гей,
Ду, ду, ду, ду, ду!
Сонце із-за гір виглядає.
Гей, гей, гей! Вівчар вівці жене
І пісню веселу співає.
Ой, Марічко, гарна чічко,
Карії оченята маєш,
Чи пустиш ня зимувати,
Чи вже когось маєш?

Гей, гей, гей, гей,
Ду, ду, ду, ду, ду!
Над горами сонце сходить,
Гей, гей, гей, гей,
Ду, ду, ду, ду, ду!
Марічка по травах бродить.
Ой, легіню, мій легіню,
Прийму я тя  до хати,
Та й будеш ти зі мною,
В полі коником орати?

Гей, гей, гей, гей,
Ду, ду, ду, ду, ду!
Сонце за обрій сідає,
Гей, гей,гей! Вівчар вівці жене
Та й на трембіті грає.
Ой, краю мій, рідний краю,
З високими горами
В тобі дівки як козулі,
З довгими ногами.

Гей, гей, гей, гей,
Ду, ду, ду, ду, ду!
В полонині трави буяють,
Гей, гей, гей, гей,
Ду, ду, ду, ду, ду!
Мої вівці в травах гуляють.
Ой, вівці ви, мої вівці,
Та  великії отари,
Буду  довго я вас пасти,
Аж допоки мене   стане.

Гей, гей, гей, гей, |
Ду, ду, ду, ду, ду! | (4)');
DELETE FROM song_links WHERE song_id = 'pisniua_4340930';
DELETE FROM song_versions WHERE song_id = 'pisniua_4340930';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4340930';
DELETE FROM songs WHERE id = 'pisniua_4340930';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4340930','Ніжна колисанка','Музика: Олег Петров Слова: Марія Морозенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В сну рожеві хвилі
Заколишуть вечір,
Засріблиться місяць
Над гніздом лелечим.
Солодко й спокійно
Дітки спочивають,
Ніжну колисанку
Зорі їм співають.

Приспів:
Слухай ніжну колисанку
І спи солодко до ранку...
Сплять у нірочках звірята,
У гніздечках - пташенята.
Оченята закривай,
Люлі-люлі, засинай,
Люлі-люлі, засинай...

Пропливає казка
В човнику срібненькім,
Доторкнеться ласка
Діточок маленьких.
Спи, дитя кирпате,
Спи, маленька втіхо,
Хай в житті твоєму
Вік не буде лиха.

Приспів. (2)

Люлі-люлі, засинай','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4340930'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4340930','Ніжна колисанка','В сну рожеві хвилі
Заколишуть вечір,
Засріблиться місяць
Над гніздом лелечим.
Солодко й спокійно
Дітки спочивають,
Ніжну колисанку
Зорі їм співають.

Приспів:
Слухай ніжну колисанку
І спи солодко до ранку...
Сплять у нірочках звірята,
У гніздечках - пташенята.
Оченята закривай,
Люлі-люлі, засинай,
Люлі-люлі, засинай...

Пропливає казка
В човнику срібненькім,
Доторкнеться ласка
Діточок маленьких.
Спи, дитя кирпате,
Спи, маленька втіхо,
Хай в житті твоєму
Вік не буде лиха.

Приспів. (2)

Люлі-люлі, засинай');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4340930_l1','pisniua_4340930','YouTube','https://www.youtube.com/watch?v=xLZK6kglY-U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4349787';
DELETE FROM song_versions WHERE song_id = 'pisniua_4349787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4349787';
DELETE FROM songs WHERE id = 'pisniua_4349787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4349787','Човнику, пливи','Слова: Зоряна Лісевич','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Соломія Коваль.','Гойда, гойда-да,
Човник нас несе.
Берегом, берегом,
Берегом, берегом
В зелені усе!..
Гойда, гойда-да,
Човнику, пливи.
Берегом, берегом,
Берегом, берегом
Килими трави...
Гойда, гойда-да,
Колихає плав...
Берегом, берегом,
Берегом, берегом
Шепотіння трав...

Гойда, гойда-да,
Гойда в добру путь!
Берегом, берегом,
Берегом, берегом
Дзвоники цвітуть...
Гойда, гойда-да,
Віє навпростець.
Берегом, берегом,
Берегом, берегом
Теплий вітерець...
Гойда, гойда-да,
Колихає цвіт.
Берегом, берегом,
Берегом, берегом
Пропливає світ...

Гойда, гойда-да,
Коники сюрчать.
Берегом, берегом,
Берегом, берегом
Ліс та й сіножать...
Гойда, гойда-да,
Чути спів пташок.
Берегом, берегом,
Берегом, берегом
Вівці й пастушок...
Гойда, гойда-да,
Срібно хвиля б''є.
Берегом, берегом,
Берегом, берегом
Літечко моє...

Гойда, гойда-да,
Сині небеса.
Сонечко, сонечко,
Сонечко, сонечко,
Ах, яка краса...
Гойда, гойда-да,
Поле, гай і луг.
Барвами, барвами,
Барвами, барвами
Мерехтить навкруг!..
Гойда, гойда-да,
Сонна течія,
В човнику, в човнику,
В човнику, в човнику
Тільки ти і я!..','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4349787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4349787','Човнику, пливи','Гойда, гойда-да,
Човник нас несе.
Берегом, берегом,
Берегом, берегом
В зелені усе!..
Гойда, гойда-да,
Човнику, пливи.
Берегом, берегом,
Берегом, берегом
Килими трави...
Гойда, гойда-да,
Колихає плав...
Берегом, берегом,
Берегом, берегом
Шепотіння трав...

Гойда, гойда-да,
Гойда в добру путь!
Берегом, берегом,
Берегом, берегом
Дзвоники цвітуть...
Гойда, гойда-да,
Віє навпростець.
Берегом, берегом,
Берегом, берегом
Теплий вітерець...
Гойда, гойда-да,
Колихає цвіт.
Берегом, берегом,
Берегом, берегом
Пропливає світ...

Гойда, гойда-да,
Коники сюрчать.
Берегом, берегом,
Берегом, берегом
Ліс та й сіножать...
Гойда, гойда-да,
Чути спів пташок.
Берегом, берегом,
Берегом, берегом
Вівці й пастушок...
Гойда, гойда-да,
Срібно хвиля б''є.
Берегом, берегом,
Берегом, берегом
Літечко моє...

Гойда, гойда-да,
Сині небеса.
Сонечко, сонечко,
Сонечко, сонечко,
Ах, яка краса...
Гойда, гойда-да,
Поле, гай і луг.
Барвами, барвами,
Барвами, барвами
Мерехтить навкруг!..
Гойда, гойда-да,
Сонна течія,
В човнику, в човнику,
В човнику, в човнику
Тільки ти і я!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4349787_l1','pisniua_4349787','YouTube','https://www.youtube.com/watch?v=YXmmUScx-44','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4370338';
DELETE FROM song_versions WHERE song_id = 'pisniua_4370338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4370338';
DELETE FROM songs WHERE id = 'pisniua_4370338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4370338','Якби я...','Музика: Єлизавета Кравчук Слова: Єлизавета Кравчук','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Каріна Кантерук.','Якби я з''явилась у цей світ,
Не жаліла б ніколи про це ти,
Я б найкращою донечкою стала,
За що, скажи, мене вбиваєш, мамо?..

Приспів:
Не почуєш ти моїх пісень     |
І не побачиш                 |
Колір моїх карих очей!..     |
Не відчуєш дотик моїх рук!.. |
Чому ти зупинила серця стук, |
Серця мого стук?..           | (2)

Чекала, що світ мене прийме,
Що мама зігріє, обійме!
Тільки поясни, у чому гріх-провина?
За що зі мною, рідна, так вчинила?

Приспів.

Не почуєш ти моїх пісень
І не побачиш
Колір моїх карих очей!..
Не відчуєш дотик моїх рук!..
Та знай, я все одно тебе люблю!
Так тебе люблю!

Та знай, я все одно тебе люблю!
Так тебе люблю!..','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4370338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4370338','Якби я...','Якби я з''явилась у цей світ,
Не жаліла б ніколи про це ти,
Я б найкращою донечкою стала,
За що, скажи, мене вбиваєш, мамо?..

Приспів:
Не почуєш ти моїх пісень     |
І не побачиш                 |
Колір моїх карих очей!..     |
Не відчуєш дотик моїх рук!.. |
Чому ти зупинила серця стук, |
Серця мого стук?..           | (2)

Чекала, що світ мене прийме,
Що мама зігріє, обійме!
Тільки поясни, у чому гріх-провина?
За що зі мною, рідна, так вчинила?

Приспів.

Не почуєш ти моїх пісень
І не побачиш
Колір моїх карих очей!..
Не відчуєш дотик моїх рук!..
Та знай, я все одно тебе люблю!
Так тебе люблю!

Та знай, я все одно тебе люблю!
Так тебе люблю!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4370338_l1','pisniua_4370338','YouTube','https://www.youtube.com/watch?v=aWjBEvz8VTE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_438083';
DELETE FROM song_versions WHERE song_id = 'pisniua_438083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_438083';
DELETE FROM songs WHERE id = 'pisniua_438083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_438083','Не йди','Слова: С.К.А.Й., Гайтана. Виконує: Гайтана, С.К.А.Й.','uk','ukraine_1991',NULL,NULL,'http://www.skay.com.ua','Підібрано на слух з аудіо, спрощено. Деякі із акордів: Dsus2, Dsus2/D [x x 0 2 3 0] Dsus2/C# [x 4 x 2 3 0] Dsus2/H [x 2 x 2 3 0] Dsus2/A [x 0 x 2 3 0] * Тут і далі у приспіві можуть бути й інші акорди. Доповнення: TOHA: "... В приспіві використовується така послідовність акордів: Dsus2/D-Dsus2/H-G-A, а от після другого приспіву (співає Олег), коли Гайтана співає без слів, гітарист грає такі акорди:перший раз Dsus2/D-Dsus2/H-Dsus2/A#-G-A другий раз Dsus2/D-Dsus2/H-Dsus2/A#-G-(пауза)Dsus2/D-куплет. Штрих для правої руки у куплеті і, частково, у приспіві (коли гітарист грає пальцями): Q E E Q E E E E E E Q E E E||-------------0----------|--------------0----------| B||-------3----------3-----|--------3----------3-----| G||----------2----------2--|-----2-----2----------2--| D||--0---------------------|-------------------------| A||------------------------|--4----------------------| E||------------------------|-------------------------| Q - quarter (1/4) E - 8th (1/8) Підбір-Ovovka (Tarasvm.90@mail.ru): e|-0--5-7-7/9-----0--0-------0-----0------0----------0-0--------0-0---- h|-3--------------3-3--3-3--3-3---3-3---3---3----0---3-0----2---2-2/3- g|-2--------------2-----2--2---2-2---2-2-----2--2-2--2-2---2-2--2-2/4- D|-0--4-5-5/7/0---0----------------------------0---0------2---2-------- A|-0--------------0-------4-----2-----0--0---------------0-----0-0----- E|--------------------------------------------3-----3-3----------------- e|-----0-------0-----0-------0---------0----------------- h|----3--3---3--3---3--3---3--3----0-----0----3p2------- g|---2----2-2----2-2----2-2----2--2-2----2---2---2---2-- D|--0----------------------------0---0------2-----2-2---- A|---------4--4---2------0--0--------------0-------0--0-- E|------------------------------3-----3-3-3--------------- e|-----0-------0-----0-------0---------0-------------------- h|----3--3---3--3---3--3------3----0---3-0-----3p2-----2--- g|---2----2-2----2-2----2-2-------2-2--2--2---2---2--2-2-2- D|--0----------------------------0---0-----0-2-----2-2---2-- A|---------4--4---2------0------------------0-------0-0-0--- E|------------------------------3-----3-3-------------------- e|----0-------0---0-------0------------------------ h|------3---3--3----3---3--3---3------0----2-3-2-- g|---2---2-2-----2---2-2----2---2---2--2---2-2-2-- D|--0-----0--0----------------0--0-0----0-2-------- A|--------------2-----2--2---------------0--0-0-0-- E|---------------------------3----3--3------------- e|----0-------0----0-------0----------------------- h|------3---3--3-----3---3--3-----0-----2-3p2--2-- g|---2---2-2----2-2---2-2----2--2---2---2-2-----2- D|--0-----0--0-----------------0----0--2-----2---- A|---------------2-----2--2-----------0--0----0--- E|----------------------------3--3-3-3------------ e|----0-----0-----0-------0-------------------------- h|------3-----3-----3---3--3-------0----0---2-2--3--- g|---2---2-2---2-2---2-2----2----2---2---2--2--2--4-- D|--0---------------------------0-----0----2----2--5- A|--------4-----2-----0--0----------------0--0------- E|-----------------------------3--3----3------------- e|----0-----0-----0-------0--------0-------------- h|------3-----3-----3---3--3-----0---0-----2-3-2-- g|---2---2-2---2-2---2-2----2----2----2----2-2-2-- D|--0---------------------------0------0--2------- A|--------4-----2-----0--0---------------0--0-0-0- E|-----------------------------3--3-3---3--------- e|--0---|-0---|-3---|-0---|-0-|-0-|-0-| h|--3---|-3---|-3---|-0---|-2-|-3-|-5-| g|--2-2-|-2-2-|-0---|-2---|-2-|-4-|-6-| D|--0---|-0---|-0-0-|-2---|-2-|-5-|-7-| A|--0---|-2---|-2---|-0---|-0-|-5-|-7-| E|------|-----|-3---|-----|---|---|---| e|--0---|-0---|-3---|-0---|-0-| h|--3---|-3---|-3---|-0---|-3-| g|--2-2-|-2-2-|-0---|-2---|-4-| D|--0---|-0---|-0-0-|-2-2-|-5-| A|--0---|-2---|-2---|-0---|-5-| E|------|-----|-3---|-----|---| e|--0---|-0---|-0---|-3---|-0-| h|--3---|-3---|-3---|-3---|-1-| g|--2-2-|-2-2-|-2-2-|-0---|-0-| D|--0---|-0---|-0---|-0-0-|-2-| A|--0---|-2---|-1---|-2---|-3-| E|------|-----|-----|-3---|---| e|--0---|-0---|-0---|-3----|-0-| h|--3---|-3---|-3---|-3----|-3-| g|--2-2-|-2-2-|-2-2-|-0--2-|-2-| D|--0---|-0---|-0---|-0-0--|-0-| A|--0---|-2---|-1---|-2----|-0-| E|------|-----|-----|-3----|---| e|----0------0-------0-------0-----------0-------------------- h|------3------3-------3-------3-----0-----0-----2---3p2---2-- g|---2---2--2---2---2---2---2---2---2-2-----2---2-2-----2--2-- D|--0-----0------------------------0---0-----0-----2-----2---- A|---------4-----4-2-----2-0-----0-------------0----0-----0-0- E|--------------------------------3-----3-3---3--------------- e|----0------0-------0-------0---------------------------------- h|------3------3-------3-------3-----0---0-0-----2---3p2--3p2--- g|---2---2--2---2---2---2---2---2-----2--2--2-----2--2----2----- D|--0-----0------------------------0---0-----0--2--2----2----2-- A|---------4-----4-2-----2-0-------------------0----0----0----0- E|--------------------------------3-----3-3---3----------------- e|--2---|-0---|-3---|-0---|-0-|-0-| h|--3---|-3---|-3---|-2---|-3-|-5-| g|--2-2-|-2-2-|-0---|-2---|-4-|-6-| D|--0---|-0---|-0-0-|-2-2-|-5-|-7-| A|--0---|-2---|-2---|-0---|-5-|-7-| E|------|-----|-3---|-----|---|---| e|--2---|-0---|-3---|-0---| h|--3---|-3---|-3---|-2---| g|--2-2-|-2-2-|-4---|-2---| D|--0---|-0---|-5---|-2-2-| A|--0---|-2---|-5-5-|-0---| E|------|-----|-3---|-----| e|--2---|-0---|-3---|-0---|-0-|-0-|-0-| h|--3---|-3---|-3---|-0---|-2-|-3-|-5-| g|--2-2-|-2-2-|-0---|-2---|-2-|-4-|-6-| D|--0---|-0---|-0-0-|-2---|-2-|-5-|-7-| A|--0---|-2---|-2---|-0---|-0-|-5-|-7-| E|------|-----|-3---|-----|---|---|---| e|--2---|-0---|-3---|-0---|-0-|-0-|-0---0-| h|--3---|-3---|-3---|-0---|-2-|-3-|-5/0-3-| g|--2-2-|-2-2-|-0---|-2---|-2-|-4-|-6---2-| D|--0---|-0---|-0-0-|-2---|-2-|-5-|-7---0-| A|--0---|-2---|-2---|-0---|-0-|-5-|-7---0-| E|------|-----|-3---|-----|---|---|-------| Підбір акордів: bohdanko (pisni.org.ua)','Dsus2/D     /C#        /H /A
Як холодно без тебе, сумно як -
G              Dsus2  A
Заплаканії вікна.
З тобою бути мій таємний знак,
що жити без тебе ніяк не звикну.

Так холодно коли тебе нема -
без сонця не воскресну.
Бо в серці залишилася зима,
а над тобою теплі весни.

Dsus2/D     /H      G   A *
Не йди!     Не йди! Не йди!..

Як холодно без тебе - все біда
Сльоза біжить по скроні.
Життя моє лилось немов вода
крізь наші дві розведені долоні

Не йди! Не йди! Не йди...
Не йди! не йди! не йди!..

Як холодно без, тебе сумно як
Заплаканії вікна
З тобою бути мій таємний знак,
що жити без тебе ніяк не звикну

Не йди! Не йди! Не йди від мене!..
Не йди! Не йди! Не йди!..
Не йди! Не йди! Не йди!..
Не йди! Не йди! Не йди!..
Не йди...','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_438083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_438083','Не йди','Dsus2/D     /C#        /H /A
Як холодно без тебе, сумно як -
G              Dsus2  A
Заплаканії вікна.
З тобою бути мій таємний знак,
що жити без тебе ніяк не звикну.

Так холодно коли тебе нема -
без сонця не воскресну.
Бо в серці залишилася зима,
а над тобою теплі весни.

Dsus2/D     /H      G   A *
Не йди!     Не йди! Не йди!..

Як холодно без тебе - все біда
Сльоза біжить по скроні.
Життя моє лилось немов вода
крізь наші дві розведені долоні

Не йди! Не йди! Не йди...
Не йди! не йди! не йди!..

Як холодно без, тебе сумно як
Заплаканії вікна
З тобою бути мій таємний знак,
що жити без тебе ніяк не звикну

Не йди! Не йди! Не йди від мене!..
Не йди! Не йди! Не йди!..
Не йди! Не йди! Не йди!..
Не йди! Не йди! Не йди!..
Не йди...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_438083_l1','pisniua_438083','YouTube','https://www.youtube.com/watch?v=CNPxNKNgxNU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4392931';
DELETE FROM song_versions WHERE song_id = 'pisniua_4392931';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4392931';
DELETE FROM songs WHERE id = 'pisniua_4392931';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4392931','Суперсила','Музика: Юлія Хащевська Слова: Юлія Хащевська','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує гурт FRANKO band.','Я - тобі стебло,
Ти - мені коріння,
Зопалу я розбиваю чоло,
Ти ж зберігаєш терпіння...
Ти - мені вогонь,
Я тобі, як злива,
Передчуваю від серця й до скронь:
Ми — це щось надважливе!..
Здатні на неможливе!..

Приспів:
Чи на землі, чи високо у небі,
О, хай там що, я завжди біля тебе!
Твоя рука у моїй — то моя суперсила!
Ми ті, кого хвиля накрила,
Ті, що тепер мають крила!..

Я - тобі любов,
Ти - мені довіру,
Море тепла від душевних розмов
Й трохи мурашок під шкіру...
Серце не знає міри!..

Приспів.

Я, ти — сім''я,
Ми — єдине ціле!
Я промовлятиму твоє ім''я,
Щоб воно душу гріло!..

Чи на землі, чи високо у небі,
О, хай там що, я завжди біля тебе!
Твоя рука у моїй — то моя суперсила!
Ми ті, кого хвиля накрила,
І мені більше нічого не треба,
Лиш би весь світ прихилити до тебе!..
Ти - моя радість, надія, моя суперсила!
Ми ті, кого хвиля накрила,
Разом навіки щасливі!..','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4392931'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4392931','Суперсила','Я - тобі стебло,
Ти - мені коріння,
Зопалу я розбиваю чоло,
Ти ж зберігаєш терпіння...
Ти - мені вогонь,
Я тобі, як злива,
Передчуваю від серця й до скронь:
Ми — це щось надважливе!..
Здатні на неможливе!..

Приспів:
Чи на землі, чи високо у небі,
О, хай там що, я завжди біля тебе!
Твоя рука у моїй — то моя суперсила!
Ми ті, кого хвиля накрила,
Ті, що тепер мають крила!..

Я - тобі любов,
Ти - мені довіру,
Море тепла від душевних розмов
Й трохи мурашок під шкіру...
Серце не знає міри!..

Приспів.

Я, ти — сім''я,
Ми — єдине ціле!
Я промовлятиму твоє ім''я,
Щоб воно душу гріло!..

Чи на землі, чи високо у небі,
О, хай там що, я завжди біля тебе!
Твоя рука у моїй — то моя суперсила!
Ми ті, кого хвиля накрила,
І мені більше нічого не треба,
Лиш би весь світ прихилити до тебе!..
Ти - моя радість, надія, моя суперсила!
Ми ті, кого хвиля накрила,
Разом навіки щасливі!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4392931_l1','pisniua_4392931','YouTube','https://www.youtube.com/watch?v=F2kXQWSi3GU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_44032';
DELETE FROM song_versions WHERE song_id = 'pisniua_44032';
DELETE FROM songs_fts WHERE song_id = 'pisniua_44032';
DELETE FROM songs WHERE id = 'pisniua_44032';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_44032','Мовчати','Музика: Скрябін Слова: Скрябін. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,'текст і акорди - http://skryabin.ru, Мерлюка Грiшi aka Graff, hryts@ukr.net','Виконують Скрябін та Ірина Білик (в дуеті).','-------------------------0-----
-----1/0-0-0/1---3/0---3-------
----2---2-2---2-2---0-2-2-----2
---2-----------0-----3-------3-
--0----------------------------

0--------------------------------
-3-1/0---0/1----3/0------0-------
-------2-----2-2---0---2---------
--------------0-------2-2--------
---------------------0-----------

Давай виключим свiтло i будем мовчати
Am                 G       F*
Про то що не можна  словами сказати
Не можна писати  не можливо зiграти
А тiльки мовчати тихенько мовчати

Давай мовчати про то шо дiвчата
Не вмiють сховати не можуть спати
Давай про мене i про тебе мовчати
Мовчати аж поки не захочем кричати

Мiсяць впав темно в кiмнатi
Як добре шо ти навчилась мовчати
Про то шо нiколи не змогла би збрехати
Про то шо нiколи менi не спитатись

Ми будем з тобою у лiжку лежати
Лежати як снiг водою стiкати
Ми будемо жадно свої сльози ковтати
А з ними слова Яких не сказати

Давай помовчу тобi просто на вушко
Холодною стала чаю кружка
А ми ше маєм про шо помовчати
А ми ше маєм про шо полежати

Як свiтло проб''ється через нашi штори
Ми знову з тобою як снiг заговорим
А поки ше темно є в нашiй кiмнатi
Давай з тобою будем просто...  (Solo)

F*
---0-------
---1-------
---2-------
---3-------
---3-------
---0-------

Dm7
---1-------
---1-------
---2-------
---0-------','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_44032'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_44032','Мовчати','-------------------------0-----
-----1/0-0-0/1---3/0---3-------
----2---2-2---2-2---0-2-2-----2
---2-----------0-----3-------3-
--0----------------------------

0--------------------------------
-3-1/0---0/1----3/0------0-------
-------2-----2-2---0---2---------
--------------0-------2-2--------
---------------------0-----------

Давай виключим свiтло i будем мовчати
Am                 G       F*
Про то що не можна  словами сказати
Не можна писати  не можливо зiграти
А тiльки мовчати тихенько мовчати

Давай мовчати про то шо дiвчата
Не вмiють сховати не можуть спати
Давай про мене i про тебе мовчати
Мовчати аж поки не захочем кричати

Мiсяць впав темно в кiмнатi
Як добре шо ти навчилась мовчати
Про то шо нiколи не змогла би збрехати
Про то шо нiколи менi не спитатись

Ми будем з тобою у лiжку лежати
Лежати як снiг водою стiкати
Ми будемо жадно свої сльози ковтати
А з ними слова Яких не сказати

Давай помовчу тобi просто на вушко
Холодною стала чаю кружка
А ми ше маєм про шо помовчати
А ми ше маєм про шо полежати

Як свiтло проб''ється через нашi штори
Ми знову з тобою як снiг заговорим
А поки ше темно є в нашiй кiмнатi
Давай з тобою будем просто...  (Solo)

F*
---0-------
---1-------
---2-------
---3-------
---3-------
---0-------

Dm7
---1-------
---1-------
---2-------
---0-------');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_44032_l1','pisniua_44032','YouTube','https://www.youtube.com/watch?v=KLQx9Hk7D08','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_44032_l2','pisniua_44032','YouTube','https://www.youtube.com/watch?v=2-flz5VkENU','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_441333';
DELETE FROM song_versions WHERE song_id = 'pisniua_441333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_441333';
DELETE FROM songs WHERE id = 'pisniua_441333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_441333','Стоїть дівча над бистрою водою','Слова: народні. Виконує: Квітка Цісик, Ірина Зінковська, Русичі','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Стоїть дівча над бистрою водою
І так тихенько пісню гомонить:
"Бистра вода, візьми мене з собою
Бо я не можу більш на світі жить".

Ти приходив до мене о півночі
Саме тоді коли я міцно сплю
І цілував заплаканії очі
І говорив не плач мила люблю.

Скажи нащо тебе я полюбила
Скажи нащо повірила тобі
Якби не ти, сумна я б не ходила
І день і ніч не плакала б в журбі.

Без тебе я як цвіт без сонця в''яну,
Без тебе ох! як тяжко в світі жить
Скажи о де я чарів цих дістану,
Щоби тебе забуть і розлюбить.

Стоїть дівча над бистрою водою
І так жалібно пісню гомонить:
"Бистра вода, візьми мене з собою.
Бо я не можу більш на світі жить".','[''pisni.org.ua'', ''cat:dances'', ''cat:waltzes'', ''Пісні до танцю'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_441333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_441333','Стоїть дівча над бистрою водою','Стоїть дівча над бистрою водою
І так тихенько пісню гомонить:
"Бистра вода, візьми мене з собою
Бо я не можу більш на світі жить".

Ти приходив до мене о півночі
Саме тоді коли я міцно сплю
І цілував заплаканії очі
І говорив не плач мила люблю.

Скажи нащо тебе я полюбила
Скажи нащо повірила тобі
Якби не ти, сумна я б не ходила
І день і ніч не плакала б в журбі.

Без тебе я як цвіт без сонця в''яну,
Без тебе ох! як тяжко в світі жить
Скажи о де я чарів цих дістану,
Щоби тебе забуть і розлюбить.

Стоїть дівча над бистрою водою
І так жалібно пісню гомонить:
"Бистра вода, візьми мене з собою.
Бо я не можу більш на світі жить".');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_441333_l1','pisniua_441333','YouTube','https://www.youtube.com/watch?v=TalDee2XOxM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_441333_l2','pisniua_441333','YouTube','https://www.youtube.com/watch?v=gBomisicK5Q','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_441333_l3','pisniua_441333','YouTube','https://www.youtube.com/watch?v=bJXC_A0wmbI','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_4425083';
DELETE FROM song_versions WHERE song_id = 'pisniua_4425083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4425083';
DELETE FROM songs WHERE id = 'pisniua_4425083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4425083','Гімн Спеціалізованої школи №196','Музика: народна Слова: І. Олейничук','uk','ukraine_1991',NULL,NULL,'аудіозапис','Гімн Спеціалізованої школи №196 Святошинського району м. Києва.','Чесність, щирість, добро,
Справедливість і демократизм -
Це основа шкільної родини:
Один Дев''ять Шість!
В благороднім прагненні
Ми щастя поєднались,
Мови різні, наче свою рідну,
Знати тут бажаєм.

Мудрість предків, козацька слава,
"Кобзар" - оберіг,
Земля рідна - ненька Україна -
Наш одвічний світ!
Так навчають учнів в нашій школі -
Один Дев''ять Шість, -
Щоб в майбутнім рідну Україну
Кожен з нас любив й беріг!

Скарб найбільший нам дарує школа -
Науку життя!
Пісня й праця - дві великі сили,
Мов жива вода.
Сонцелика школа - Берегиня -
Один Дев''ять Шість -
Захища нас, наче мати рідна,
Всіх від зла, незгод та лих!

Щоб не зрадив світ нас
У майбутнім, школа всіх навча:
Шанувати понад все Людину,
Матір і Дитя!
Щирі серцем, чисті ми душею
Тут стаємо!
Україні громадянську вірність
Чесно принесемо!

Процвітай же, рідна наша школо,
Світ барвистих мрій!
Хай душа творця не переквітне
В благородстві дій!
Хай в серцях сіяє сонцеквітно:
Один Дев''ять Шість!
Хай узнають про здобутки школи
Україна й увесь світ!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4425083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4425083','Гімн Спеціалізованої школи №196','Чесність, щирість, добро,
Справедливість і демократизм -
Це основа шкільної родини:
Один Дев''ять Шість!
В благороднім прагненні
Ми щастя поєднались,
Мови різні, наче свою рідну,
Знати тут бажаєм.

Мудрість предків, козацька слава,
"Кобзар" - оберіг,
Земля рідна - ненька Україна -
Наш одвічний світ!
Так навчають учнів в нашій школі -
Один Дев''ять Шість, -
Щоб в майбутнім рідну Україну
Кожен з нас любив й беріг!

Скарб найбільший нам дарує школа -
Науку життя!
Пісня й праця - дві великі сили,
Мов жива вода.
Сонцелика школа - Берегиня -
Один Дев''ять Шість -
Захища нас, наче мати рідна,
Всіх від зла, незгод та лих!

Щоб не зрадив світ нас
У майбутнім, школа всіх навча:
Шанувати понад все Людину,
Матір і Дитя!
Щирі серцем, чисті ми душею
Тут стаємо!
Україні громадянську вірність
Чесно принесемо!

Процвітай же, рідна наша школо,
Світ барвистих мрій!
Хай душа творця не переквітне
В благородстві дій!
Хай в серцях сіяє сонцеквітно:
Один Дев''ять Шість!
Хай узнають про здобутки школи
Україна й увесь світ!');
DELETE FROM song_links WHERE song_id = 'pisniua_4430';
DELETE FROM song_versions WHERE song_id = 'pisniua_4430';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4430';
DELETE FROM songs WHERE id = 'pisniua_4430';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4430','Водограй','Музика: Володимир Івасюк Слова: Володимир Івасюк. Виконує: Смерічка, Назарій Яремчук, Софія Ротару, Кобза, Валентина Купріна, Марія Яремчук, Зоряна Юдін','uk','ukraine_1991',NULL,NULL,'Червона рута. Пісенник. Київ, Музична Україна, 1993',NULL,'Тече вода, тече бистра,
А куди - не знає,
Поміж гори, в світ широкий
Тече, не вертає.
Ми зустрінемось з тобою
Біля водограю
І попросим його щиро -
Хай він нам заграє.

Приспів:
Ой водо-водограй, грай для нас, грай...
Танок свій жвавий ти не зупиняй.
За красну пісню на всі голоси,
Що хочеш, водограю, попроси.
Струни дає тобі кожна весна,
Дзвінкість дарує їм осінь ясна.
І ми заграєм на струнах твоїх -
Хай розіллють вони радісний сміх.

Подивись, як сіру скелю
Б''є вода іскриста,
Ти зроби мені з тих крапель
Зоряне намисто.
Краще я зберу джерела
Й з них зроблю цимбали,
Щоб тобі, дівчино мила,
вони красно грали

Приспів','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4430'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4430','Водограй','Тече вода, тече бистра,
А куди - не знає,
Поміж гори, в світ широкий
Тече, не вертає.
Ми зустрінемось з тобою
Біля водограю
І попросим його щиро -
Хай він нам заграє.

Приспів:
Ой водо-водограй, грай для нас, грай...
Танок свій жвавий ти не зупиняй.
За красну пісню на всі голоси,
Що хочеш, водограю, попроси.
Струни дає тобі кожна весна,
Дзвінкість дарує їм осінь ясна.
І ми заграєм на струнах твоїх -
Хай розіллють вони радісний сміх.

Подивись, як сіру скелю
Б''є вода іскриста,
Ти зроби мені з тих крапель
Зоряне намисто.
Краще я зберу джерела
Й з них зроблю цимбали,
Щоб тобі, дівчино мила,
вони красно грали

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4430_l1','pisniua_4430','YouTube','https://www.youtube.com/watch?v=04Q90DzXKsw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4430_l2','pisniua_4430','YouTube','https://www.youtube.com/watch?v=tdQUrlQ2MSE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4430_l3','pisniua_4430','YouTube','https://www.youtube.com/watch?v=VoXS2TnRdhI','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4430_l4','pisniua_4430','YouTube','https://www.youtube.com/watch?v=zVCdqFUtkro','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4430_l5','pisniua_4430','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_4430338';
DELETE FROM song_versions WHERE song_id = 'pisniua_4430338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4430338';
DELETE FROM songs WHERE id = 'pisniua_4430338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4430338','Грайливий дощик',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Дощик, з дітками пограй!
Крап-крап-крап!
Нам краплиночки роздай,
Крап-крап-крап!
Весело краплиночкам,
Крап-крап-крап!
Грають без зупиночки,
Крап-крап-крап!

Дощик, дощик, не шуми!
Крап-крап-крап!
Та співаємо й самі,
Крап-крап-крап!
Всі дерева поливай,
Крап-крап-крап!
А маляток не чіпай,
Крап-крап-крап!','[''pisni.org.ua'', ''cat:mifichni'', ''Пісня з міфічними, світотворчими мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4430338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4430338','Грайливий дощик','Дощик, з дітками пограй!
Крап-крап-крап!
Нам краплиночки роздай,
Крап-крап-крап!
Весело краплиночкам,
Крап-крап-крап!
Грають без зупиночки,
Крап-крап-крап!

Дощик, дощик, не шуми!
Крап-крап-крап!
Та співаємо й самі,
Крап-крап-крап!
Всі дерева поливай,
Крап-крап-крап!
А маляток не чіпай,
Крап-крап-крап!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4430338_l1','pisniua_4430338','YouTube','https://www.youtube.com/watch?v=ThCzfxmNu8Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4432333';
DELETE FROM song_versions WHERE song_id = 'pisniua_4432333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4432333';
DELETE FROM songs WHERE id = 'pisniua_4432333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4432333','Наймудріша людина вчитель','Музика: Ніколо Петраш Слова: народні','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ви присвятили нам життя,
Наші любі педагоги!
Ви нас ведете в майбуття
Через радощі й тривоги!
Ви нам сердець своїх тепло
Віддаєте до краплини!
Ви в душах сієте добро,
Як зернини! Як зернини!

Приспів:
Наймудріша людина - вчитель |
Осяває шкільну обитель      |
І живуть для нової зміни    |
Вчителі України!            | (2)

Де б ми на світі не були,
Ваша мудрість завжди з нами!
Ви нам тепло все віддали,
Ми вас любим до безтями!
Ви мов цілюще джерело,
Ви мов сонце в яснім небі!
Хай пісня лине на добро -
І нам іншого не треба!

Приспів.

Ви мов цілюще джерело,
Ви мов сонце в яснім небі!
Хай пісня лине на добро -
І нам іншого не треба!

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''cat:shkilni'', ''Пісні присвячені окремим особам'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4432333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4432333','Наймудріша людина вчитель','Ви присвятили нам життя,
Наші любі педагоги!
Ви нас ведете в майбуття
Через радощі й тривоги!
Ви нам сердець своїх тепло
Віддаєте до краплини!
Ви в душах сієте добро,
Як зернини! Як зернини!

Приспів:
Наймудріша людина - вчитель |
Осяває шкільну обитель      |
І живуть для нової зміни    |
Вчителі України!            | (2)

Де б ми на світі не були,
Ваша мудрість завжди з нами!
Ви нам тепло все віддали,
Ми вас любим до безтями!
Ви мов цілюще джерело,
Ви мов сонце в яснім небі!
Хай пісня лине на добро -
І нам іншого не треба!

Приспів.

Ви мов цілюще джерело,
Ви мов сонце в яснім небі!
Хай пісня лине на добро -
І нам іншого не треба!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4432333_l1','pisniua_4432333','YouTube','https://www.youtube.com/watch?v=TxBwjMT5ee4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_443032';
DELETE FROM song_versions WHERE song_id = 'pisniua_443032';
DELETE FROM songs_fts WHERE song_id = 'pisniua_443032';
DELETE FROM songs WHERE id = 'pisniua_443032';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_443032','Квiти в волоссi','Музика: Андрій Хливнюк Слова: Андрій Хливнюк. Виконує: Бумбокс','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вступ:

|-------------|-------------|-------------|---------[12]---|
|-------------|--------[7]--|-------------|------------[12]|
|-------------|----------[7]|-------------|----------------|
|---4---0---4-|---4---0-----|---4---0---4-|---4---0--------|
|-2---2---2---|-1---1-------|-0---0---0---|----------------|
|-------------|-------------|-------------|-4---4----------|

|-------------|------------[7]-|-------------|---------[12]---|
|-------------|--------[7]-----|-------------|------------[12]|
|-------------|----------[7]---|-------------|----------------|
|---4---0---4-|---4---0--------|---4---0---4-|---4---0--------|
|-2---2---2---|-1---1----------|-0---0---0---|----------------|
|-------------|----------------|-------------|-4---4----------|

Примітка: звук у квадратних дужках виконується флажолетом

Hm
Вона носила квіти в волоссі
Hm/A#
І ними грався він і ще вітер
Hm/A
Здавалося давно вже дорослі
E7sus2/G#            (F#)
Але кохали щиро мов діти

Відчинені серця щирі очі -
Таких не так багато є в світі
Лилися сльози щастя щоночі
Обіцянки назавжди любити

Будиночок на розі двох вулиць
Паркан плющем осіннім завитий
Здавалося дощі схаменулись,
Здавалося завжди буде літо

Лише один дзвінок телефону
І варто тільки їм захотіти
Повіяло теплом з-за кордону
А одже неодмінно летіти

Приспів:
Hm     Hm/A       E7sus2/G#
Не обіцяй назавжди
E7sus2/G  F#
Не обіцяй навічно
Де твоє моє завтра
У скронях вітер свище
Не обіцяй навіщо
Не обіцяй не треба
Залежить час найближчий
Та не завжди від тебе

І раптом все змінилось навколо
Проблеми ціни сни сподівання
Роз''їхалися як діти в школу
Що першим було стало останнім

Їй у Варшавські спальні райони
Йому Москву бетоном залити
Але кохання у таксофонах
Приречене не довго прожити

Куди ведуть строкаті дороги
Чому ви заблукали у світі
Вас сотні тисячі вас мільйони
В Ізраїлі Канаді на Кріті

Є спогади про те як було все,
Надії є на те як все буде
Нас доля стрімко течією несе
Бо ми є не титани - ми люди!

Приспів.

Акорди:

Hm  Hm/A# Hm/A  E7sus2/G#  F#  E7sus2/G

|-2-|--2--|--2--|-----2----|-2-|----2----|
|-3-|--3--|--3--|-----3----|-2-|----3----|
|-4-|--4--|--4--|-----4----|-3-|----4----|
|-4-|--4--|--4--|-----2----|-4-|----2----|
|-2-|--2--|--2--|-----2----|-4-|----2----|
|-2-|--6--|--5--|-----4----|-2-|----3----|','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_443032'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_443032','Квiти в волоссi','Вступ:

|-------------|-------------|-------------|---------[12]---|
|-------------|--------[7]--|-------------|------------[12]|
|-------------|----------[7]|-------------|----------------|
|---4---0---4-|---4---0-----|---4---0---4-|---4---0--------|
|-2---2---2---|-1---1-------|-0---0---0---|----------------|
|-------------|-------------|-------------|-4---4----------|

|-------------|------------[7]-|-------------|---------[12]---|
|-------------|--------[7]-----|-------------|------------[12]|
|-------------|----------[7]---|-------------|----------------|
|---4---0---4-|---4---0--------|---4---0---4-|---4---0--------|
|-2---2---2---|-1---1----------|-0---0---0---|----------------|
|-------------|----------------|-------------|-4---4----------|

Примітка: звук у квадратних дужках виконується флажолетом

Hm
Вона носила квіти в волоссі
Hm/A#
І ними грався він і ще вітер
Hm/A
Здавалося давно вже дорослі
E7sus2/G#            (F#)
Але кохали щиро мов діти

Відчинені серця щирі очі -
Таких не так багато є в світі
Лилися сльози щастя щоночі
Обіцянки назавжди любити

Будиночок на розі двох вулиць
Паркан плющем осіннім завитий
Здавалося дощі схаменулись,
Здавалося завжди буде літо

Лише один дзвінок телефону
І варто тільки їм захотіти
Повіяло теплом з-за кордону
А одже неодмінно летіти

Приспів:
Hm     Hm/A       E7sus2/G#
Не обіцяй назавжди
E7sus2/G  F#
Не обіцяй навічно
Де твоє моє завтра
У скронях вітер свище
Не обіцяй навіщо
Не обіцяй не треба
Залежить час найближчий
Та не завжди від тебе

І раптом все змінилось навколо
Проблеми ціни сни сподівання
Роз''їхалися як діти в школу
Що першим було стало останнім

Їй у Варшавські спальні райони
Йому Москву бетоном залити
Але кохання у таксофонах
Приречене не довго прожити

Куди ведуть строкаті дороги
Чому ви заблукали у світі
Вас сотні тисячі вас мільйони
В Ізраїлі Канаді на Кріті

Є спогади про те як було все,
Надії є на те як все буде
Нас доля стрімко течією несе
Бо ми є не титани - ми люди!

Приспів.

Акорди:

Hm  Hm/A# Hm/A  E7sus2/G#  F#  E7sus2/G

|-2-|--2--|--2--|-----2----|-2-|----2----|
|-3-|--3--|--3--|-----3----|-2-|----3----|
|-4-|--4--|--4--|-----4----|-3-|----4----|
|-4-|--4--|--4--|-----2----|-4-|----2----|
|-2-|--2--|--2--|-----2----|-4-|----2----|
|-2-|--6--|--5--|-----4----|-2-|----3----|');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_443032_l1','pisniua_443032','YouTube','https://www.youtube.com/watch?v=Colk2fXqjlo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_443032_l2','pisniua_443032','YouTube','https://www.youtube.com/watch?v=qKNRNTx01sE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_443032_l3','pisniua_443032','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_4433338';
DELETE FROM song_versions WHERE song_id = 'pisniua_4433338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4433338';
DELETE FROM songs WHERE id = 'pisniua_4433338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4433338','Летять журавлі','Музика: Степан Кривенький Слова: Степан Кривенький','uk','ukraine_1991',NULL,NULL,'Волинь моя [Ноти]: пісні для нар. хору, вок. ансамблю та солоспіву.','Пісню виконує Народна аматорська чоловіча капела НД "Просвіта" (м. Горохів).','Над краєм моїм летять журавлі,
Летять журавлі назустріч весні!

Приспів:
Летять журавлі!.. Летять журавлі
За море, в далекі краї...
Кру... Кру... Кру...
Кру... Кру... Кру...
За море в далекі краї...

А, може, в дорозі вас стріне біда,
Верніть на Вкраїну, де хвилі Дніпра!

Приспів.

Доріг є багато і скрізь є весна,
Та ви пам''ятайте, що мати одна!

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4433338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4433338','Летять журавлі','Над краєм моїм летять журавлі,
Летять журавлі назустріч весні!

Приспів:
Летять журавлі!.. Летять журавлі
За море, в далекі краї...
Кру... Кру... Кру...
Кру... Кру... Кру...
За море в далекі краї...

А, може, в дорозі вас стріне біда,
Верніть на Вкраїну, де хвилі Дніпра!

Приспів.

Доріг є багато і скрізь є весна,
Та ви пам''ятайте, що мати одна!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4433338_l1','pisniua_4433338','YouTube','https://www.youtube.com/watch?v=Uz5QdBrCtc4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4450539';
DELETE FROM song_versions WHERE song_id = 'pisniua_4450539';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4450539';
DELETE FROM songs WHERE id = 'pisniua_4450539';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4450539','Цей сон!','Музика: Степан Гіга Слова: Михайло Мартинюк, Андрій Головань, Олександр Іванов. Виконує: Леся Нікітюк, Степан Гіга','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Україна вернула кордон!
Красна площа - тепер полігон,
За Уралом панує Китай,
А Курили - японський то край!
На росії щодня повна діч
І тривога лунає всю ніч!
"Ще не вмерла!" співають в ОРДЛО,
А у бункері здохло пуйло!

Приспів:
Цей сон! Цей сон
Мені щоночі сниться!
Крізь сон, крізь сон
Моє лице сміється!
Цей сон! Цей сон
Мене не покидає!
Яка краса,
Коли там підгорає!

Бачать орки вночі страшний сон,
Як надзюрив на них пес Патрон,
А цигани приблизно за рік
Розпилили північний потік.
У ефірах на "раша-тудей"
Арестович лякає людей,
В мавзолеї Бандера лежить
І "Червона калина" звучить!

Приспів.','[''pisni.org.ua'', ''cat:viyskovi'', ''cat:zhartivlyvi'', ''Пісні на військову тематику'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4450539'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4450539','Цей сон!','Україна вернула кордон!
Красна площа - тепер полігон,
За Уралом панує Китай,
А Курили - японський то край!
На росії щодня повна діч
І тривога лунає всю ніч!
"Ще не вмерла!" співають в ОРДЛО,
А у бункері здохло пуйло!

Приспів:
Цей сон! Цей сон
Мені щоночі сниться!
Крізь сон, крізь сон
Моє лице сміється!
Цей сон! Цей сон
Мене не покидає!
Яка краса,
Коли там підгорає!

Бачать орки вночі страшний сон,
Як надзюрив на них пес Патрон,
А цигани приблизно за рік
Розпилили північний потік.
У ефірах на "раша-тудей"
Арестович лякає людей,
В мавзолеї Бандера лежить
І "Червона калина" звучить!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4450539_l1','pisniua_4450539','YouTube','https://www.youtube.com/watch?v=x8DOfGW86sQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_444083';
DELETE FROM song_versions WHERE song_id = 'pisniua_444083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_444083';
DELETE FROM songs WHERE id = 'pisniua_444083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_444083','Я не знаю','Музика: Тартак Слова: Сашко Положинський. Виконує: Тартак','uk','ukraine_1991',NULL,NULL,'Текст списаний зі вкладинки нового альбому "Сльози та Соплі" Акорди самі собою напросилися.','Цю пісню варто чути вживу! Підбір акордів: CepJ','Я не знаю, що робити... Я не знаю, що казати...
Де знайти чарівні квіти, щоб тобі подарувати...
Щоб тебе причарувати - на секунду, на хвилину...
Бо таких, як я,- багато, а така, як ти,- єдина...
Кожен випадковий погляд зачіпає дивні струни.
Коли я з тобою поряд, тіло пробиває струмом.
Шепочу слова кохання - ледве чутно... Тихо-тихо,
Адже ти мої зізнання все одно зустрінеш сміхом...

Am
Але мов солодкий гріх -
Твої губи, твої очі!
Залишитися без них
Я не можу і не хочу!
Знову сам себе зриваю -
Залишаюсь і зникаю...
Що знаходжу, що втрачаю -
Я не знаю, я не знаю...

Захлинаючись у хвилях твого збудливого сміху,
Поринаю в божевілля і шукаю в ньому втіху...
Сподіваюсь на відлигу - це для мене надважливо,
Бо пробити твою кригу неможливо... Неможливо!...

Але мов солодкий гріх -
Твої губи, твої очі!
Залишитися без них
Я не можу і не хочу!
Знову сам себе зриваю -
Залишаюсь і зникаю...
Що знаходжу, що втрачаю -
Я не знаю, я не знаю...','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_444083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_444083','Я не знаю','Я не знаю, що робити... Я не знаю, що казати...
Де знайти чарівні квіти, щоб тобі подарувати...
Щоб тебе причарувати - на секунду, на хвилину...
Бо таких, як я,- багато, а така, як ти,- єдина...
Кожен випадковий погляд зачіпає дивні струни.
Коли я з тобою поряд, тіло пробиває струмом.
Шепочу слова кохання - ледве чутно... Тихо-тихо,
Адже ти мої зізнання все одно зустрінеш сміхом...

Am
Але мов солодкий гріх -
Твої губи, твої очі!
Залишитися без них
Я не можу і не хочу!
Знову сам себе зриваю -
Залишаюсь і зникаю...
Що знаходжу, що втрачаю -
Я не знаю, я не знаю...

Захлинаючись у хвилях твого збудливого сміху,
Поринаю в божевілля і шукаю в ньому втіху...
Сподіваюсь на відлигу - це для мене надважливо,
Бо пробити твою кригу неможливо... Неможливо!...

Але мов солодкий гріх -
Твої губи, твої очі!
Залишитися без них
Я не можу і не хочу!
Знову сам себе зриваю -
Залишаюсь і зникаю...
Що знаходжу, що втрачаю -
Я не знаю, я не знаю...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_444083_l1','pisniua_444083','YouTube','https://www.youtube.com/watch?v=3_CF1yenWZo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_444083_l2','pisniua_444083','YouTube','https://www.youtube.com/watch?v=DUsOdc2XuxI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_447236';
DELETE FROM song_versions WHERE song_id = 'pisniua_447236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_447236';
DELETE FROM songs WHERE id = 'pisniua_447236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_447236','Все буде добре','Музика: Святослав Вакарчук Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,NULL,'Спасибі best за слова. Замість E7 можна брати E','Вступ: Am G E7 Am | (2)

Я пам''ятаю час, коли лиш починався світ
Хто міг то підіймався та йшов.
Ішов собі високо в гори, взявши у похід
свою надію сильну, як любов

Приспів:
що все буде добре
E7
... для кожного з нас.
Що все буде добре
E7
... настане наш час.

Я бачив, як навколо нас,
і долі і вогні,
все далі й далі змінювали світ.
І ми все вище бо в долині небо не таке.
І далі щось веде мене в похід.

Приспів:
І все буде добре
... для кожного з нас.
І все буде добре
... настане наш час.

Програш: Am G C F E7 | (2)

І ось, коли ми майме там, де холодно і сніг.
І зовсім близько наша саме та.
Бажання сильні, як любов, поможуть нам дійти
і буде взята наша висота.

Приспів:
І все буде добре       |
... для кожного з нас. | (2)
І все буде добре       |
... насте нас час.     |','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_447236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_447236','Все буде добре','Вступ: Am G E7 Am | (2)

Я пам''ятаю час, коли лиш починався світ
Хто міг то підіймався та йшов.
Ішов собі високо в гори, взявши у похід
свою надію сильну, як любов

Приспів:
що все буде добре
E7
... для кожного з нас.
Що все буде добре
E7
... настане наш час.

Я бачив, як навколо нас,
і долі і вогні,
все далі й далі змінювали світ.
І ми все вище бо в долині небо не таке.
І далі щось веде мене в похід.

Приспів:
І все буде добре
... для кожного з нас.
І все буде добре
... настане наш час.

Програш: Am G C F E7 | (2)

І ось, коли ми майме там, де холодно і сніг.
І зовсім близько наша саме та.
Бажання сильні, як любов, поможуть нам дійти
і буде взята наша висота.

Приспів:
І все буде добре       |
... для кожного з нас. | (2)
І все буде добре       |
... насте нас час.     |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_447236_l1','pisniua_447236','YouTube','https://www.youtube.com/watch?v=hTlUznMDVS4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_447236_l2','pisniua_447236','YouTube','https://www.youtube.com/watch?v=CQHxSLi4Ku8','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4474838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4474838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4474838';
DELETE FROM songs WHERE id = 'pisniua_4474838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4474838','Дівонько','Музика: Гурт "YAGODY" Слова: народні. Виконує: Гурт "YAGODY"','uk','ukraine_1991',NULL,NULL,'аудіозапис','Аранжування музики - Jenny Records Lviv (Мар''ян Крискув). Співають: Софія Лешишак, Зоряна Дибовська, Марія Витрикуш, Тетяна Войтів.','Ой, у дівоньки,
Ой, у дівоньки
Попід вікноньки,
Дівонько,
Садок саджений,
Садок саджений,
Обгороджений,
Дівонько.

А в тім садочку,
А в тім садочку
Росте зіллячко,
Дівонько.
Росте зіллячко,
Росте зіллячко
Неоднакоє,
Дівонько.

Неоднакоє, неоднакоє,
А троякоє, дівонько.

Перше зіллячко,
Перше зіллячко -
На сватаннячко,
Дівонько.

Друге зіллячко,
Друге зіллячко -
На відданнячко,
Дівонько.

Третє зіллячко,
Третє зіллячко -
На весіллячко,
Дівонько.

Прийшли ми к тебі,
Прийшли ми к тебі
Колядувати,
Дівонько.

Колядувати,
Колядувати
Привіншувати,
Дівонько.

Віншуєм тебе,
Віншуєм тебе,
Щистєм, здоров''єм,
Дівонько.','[''pisni.org.ua'', ''cat:huculski'', ''Гуцульські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4474838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4474838','Дівонько','Ой, у дівоньки,
Ой, у дівоньки
Попід вікноньки,
Дівонько,
Садок саджений,
Садок саджений,
Обгороджений,
Дівонько.

А в тім садочку,
А в тім садочку
Росте зіллячко,
Дівонько.
Росте зіллячко,
Росте зіллячко
Неоднакоє,
Дівонько.

Неоднакоє, неоднакоє,
А троякоє, дівонько.

Перше зіллячко,
Перше зіллячко -
На сватаннячко,
Дівонько.

Друге зіллячко,
Друге зіллячко -
На відданнячко,
Дівонько.

Третє зіллячко,
Третє зіллячко -
На весіллячко,
Дівонько.

Прийшли ми к тебі,
Прийшли ми к тебі
Колядувати,
Дівонько.

Колядувати,
Колядувати
Привіншувати,
Дівонько.

Віншуєм тебе,
Віншуєм тебе,
Щистєм, здоров''єм,
Дівонько.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4474838_l1','pisniua_4474838','YouTube','https://www.youtube.com/watch?v=qEiC0SfSGFY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_450931';
DELETE FROM song_versions WHERE song_id = 'pisniua_450931';
DELETE FROM songs_fts WHERE song_id = 'pisniua_450931';
DELETE FROM songs WHERE id = 'pisniua_450931';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_450931','Жовтий листок – на зеленій траві','Музика: Євген Шантир Слова: Євген Шантир. Виконує: Євген Шантир','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Жовтий листок - на зеленій траві, -
Щирі тобі вітання!
До серця мого ти вмить повернув
Перше моє кохання!

Жовтий листок - на зеленій траві, -
В небі пливуть хмаринки,
Любов найдорожчі з ними несе
Перші свої краплинки.

Жовтий листок - на зеленій траві, -
Юність і зрілість разом
В одне почуття  з''єднались вони
І конкурують з часом!

Жовтий листок - на зеленій траві, -
Символ людської долі,
З ним Перше моє кохання живе
В грудях, як вітер в полі!

Жовтий листок - на зеленій траві,
Чуєш душі бажання? -
З весною хай буде завжди в житті
Перше моє кохання!','[''pisni.org.ua'', ''cat:romansy'', ''cat:socialno-pobutovi'', ''Романси'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_450931'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_450931','Жовтий листок – на зеленій траві','Жовтий листок - на зеленій траві, -
Щирі тобі вітання!
До серця мого ти вмить повернув
Перше моє кохання!

Жовтий листок - на зеленій траві, -
В небі пливуть хмаринки,
Любов найдорожчі з ними несе
Перші свої краплинки.

Жовтий листок - на зеленій траві, -
Юність і зрілість разом
В одне почуття  з''єднались вони
І конкурують з часом!

Жовтий листок - на зеленій траві, -
Символ людської долі,
З ним Перше моє кохання живе
В грудях, як вітер в полі!

Жовтий листок - на зеленій траві,
Чуєш душі бажання? -
З весною хай буде завжди в житті
Перше моє кохання!');
DELETE FROM song_links WHERE song_id = 'pisniua_4539981';
DELETE FROM song_versions WHERE song_id = 'pisniua_4539981';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4539981';
DELETE FROM songs WHERE id = 'pisniua_4539981';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4539981','Вином текла','Музика: Анна Трінчер Слова: Анна Трінчер','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Засудити? Легко!
В''янеш, то підлий води.
Я вибрала це пекло,
А могла просто піти...
Напружені щелепи,
Бо набрала в рот води.
Просто дай собі зійти,
Бо знову доза, або три.

Приспів:
Я не розкажу, яка самотня я...
Я не розкажу про свої почуття...
В тобі немає ані грама каяття,
Просто зникни із мого життя!..
Я вином текла в твоїй крові,
Я не спала ще без твоїх обійм...
Та лишившись серед білих стін,
Я нарешті змила з тебе грим...
Я вином текла в твоїй крові,
Розчинялася у твоїй брехні...
Та залишившись на самоті,
Вільним стала птахом вдалині!..

Стиснувши зуби, я знов говорю.
Ще одна спроба сказати: "Люблю!"
Ще одна спроба бути почутою,
Ще одна спроба побачити
В лютому весну...
Почути зізнання чесні
І залишки твоєї честі,
А у відповідь холод
Німий і вже незнайомий...

Приспів.

Вільним стала птахом вдалині!..','[''pisni.org.ua'', ''cat:devoted'', ''cat:philosophic'', ''cat:socialno-pobutovi'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Філософські пісні'', ''Соціально-побутові пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4539981'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4539981','Вином текла','Засудити? Легко!
В''янеш, то підлий води.
Я вибрала це пекло,
А могла просто піти...
Напружені щелепи,
Бо набрала в рот води.
Просто дай собі зійти,
Бо знову доза, або три.

Приспів:
Я не розкажу, яка самотня я...
Я не розкажу про свої почуття...
В тобі немає ані грама каяття,
Просто зникни із мого життя!..
Я вином текла в твоїй крові,
Я не спала ще без твоїх обійм...
Та лишившись серед білих стін,
Я нарешті змила з тебе грим...
Я вином текла в твоїй крові,
Розчинялася у твоїй брехні...
Та залишившись на самоті,
Вільним стала птахом вдалині!..

Стиснувши зуби, я знов говорю.
Ще одна спроба сказати: "Люблю!"
Ще одна спроба бути почутою,
Ще одна спроба побачити
В лютому весну...
Почути зізнання чесні
І залишки твоєї честі,
А у відповідь холод
Німий і вже незнайомий...

Приспів.

Вільним стала птахом вдалині!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4539981_l1','pisniua_4539981','YouTube','https://www.youtube.com/watch?v=D1l6Wp2pP_8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4543287';
DELETE FROM song_versions WHERE song_id = 'pisniua_4543287';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4543287';
DELETE FROM songs WHERE id = 'pisniua_4543287';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4543287','Я не буду пити','Музика: Дмитро Волканов Слова: Дмитро Волканов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я не буду пити
Більш ніколи у житті,
Я не буду пити!
Господи, мене прости!
Я не буду пити,
Чесно, я тобі клянусь!
Я тобі клянусь!..

Приспів:
Тільки приходить вечір, |
Нічка ляга на плечі,    |
Чарочка наливається,    |
Обіцянка забувається!   | (2)

Я не буду пити! -
Сто разів це обіцяв,
Але кожен раз
Я сам себе обманював.
Як приходить вечір,
Щось у горлі деренчить,
Треба ж промочить!..

Приспів.

А я буду пити,
Танцювати і співать,
Щоби москалям не дати
Шансів нас зламать!
Заспіваймо пісню,
Як співали козаки,
Будьмо, мужики!

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4543287'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4543287','Я не буду пити','Я не буду пити
Більш ніколи у житті,
Я не буду пити!
Господи, мене прости!
Я не буду пити,
Чесно, я тобі клянусь!
Я тобі клянусь!..

Приспів:
Тільки приходить вечір, |
Нічка ляга на плечі,    |
Чарочка наливається,    |
Обіцянка забувається!   | (2)

Я не буду пити! -
Сто разів це обіцяв,
Але кожен раз
Я сам себе обманював.
Як приходить вечір,
Щось у горлі деренчить,
Треба ж промочить!..

Приспів.

А я буду пити,
Танцювати і співать,
Щоби москалям не дати
Шансів нас зламать!
Заспіваймо пісню,
Як співали козаки,
Будьмо, мужики!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4543287_l1','pisniua_4543287','YouTube','https://www.youtube.com/watch?v=U1tOVnp4wx8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4547787';
DELETE FROM song_versions WHERE song_id = 'pisniua_4547787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4547787';
DELETE FROM songs WHERE id = 'pisniua_4547787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4547787','З якого ти поверху неба?','Музика: Jerry Heil, Yarmak Слова: Jerry Heil, Yarmak','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Я не знаю, з якого ти поверху неба...
Ти ж до мене спускалась десятками років...
Щоб зі мною відчути людські потреби,
Ти навіщось свої крила змінила на кроки...

Щоб так скорився світ. буває раз в ніколи.
Як я зустрів тебе, планети стали в ряд.
Ти - чистий Божий плід, і я молю відколи
На небі янголи звели космічний долепряд.
Твій стиль, твоя манера, моя прекрасна Венера,
Я тобі у коси заплітаю рядками зірки.
Твоя свята душа - чистий прояв етера,
І я всім демонам лишу плітки.
Дай мені шанс, я віддам все, що маю:
Свої струни і ноти,
Я тобі тільки світ свій відкрив!
Дай мені час — це не просто кохаю,
Я завжди буду поруч,
Щоб життя не підрізало крил!

Приспів.

Крила змінила...

Найбільший скарб в житті — знайти свою людину,
Хто почуття не розгубив — той справжній багатій!
Ти - не миттєва сторіс, ти - моя половина,
Моя увага, моя любов і повага тій,
Що завжди була поруч, коли так важко було,
Завжди говорила, що ми всім бідам на зло
Пройдемо всі сюрпризи долі. Були кризи,
Були сльози, було сказано щось мимоволі...
Я не знаю, з якого ти поверху неба,
Але хочу лиш до тебе, до тебе, до тебе!..
Я не знаю, чи даси мені своєї згоди,
Та я вчинками до тебе вистеляю сходи!..

Приспів. (2)

Крила змінила... Крила змінила...','[''pisni.org.ua'', ''cat:devoted'', ''cat:lirychni'', ''cat:philosophic'', ''Пісні присвячені окремим особам'', ''Пісні про кохання, ліричні'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4547787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4547787','З якого ти поверху неба?','Приспів:
Я не знаю, з якого ти поверху неба...
Ти ж до мене спускалась десятками років...
Щоб зі мною відчути людські потреби,
Ти навіщось свої крила змінила на кроки...

Щоб так скорився світ. буває раз в ніколи.
Як я зустрів тебе, планети стали в ряд.
Ти - чистий Божий плід, і я молю відколи
На небі янголи звели космічний долепряд.
Твій стиль, твоя манера, моя прекрасна Венера,
Я тобі у коси заплітаю рядками зірки.
Твоя свята душа - чистий прояв етера,
І я всім демонам лишу плітки.
Дай мені шанс, я віддам все, що маю:
Свої струни і ноти,
Я тобі тільки світ свій відкрив!
Дай мені час — це не просто кохаю,
Я завжди буду поруч,
Щоб життя не підрізало крил!

Приспів.

Крила змінила...

Найбільший скарб в житті — знайти свою людину,
Хто почуття не розгубив — той справжній багатій!
Ти - не миттєва сторіс, ти - моя половина,
Моя увага, моя любов і повага тій,
Що завжди була поруч, коли так важко було,
Завжди говорила, що ми всім бідам на зло
Пройдемо всі сюрпризи долі. Були кризи,
Були сльози, було сказано щось мимоволі...
Я не знаю, з якого ти поверху неба,
Але хочу лиш до тебе, до тебе, до тебе!..
Я не знаю, чи даси мені своєї згоди,
Та я вчинками до тебе вистеляю сходи!..

Приспів. (2)

Крила змінила... Крила змінила...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4547787_l1','pisniua_4547787','YouTube','https://www.youtube.com/watch?v=Nm6ENxo40ik','video',NULL,1);
