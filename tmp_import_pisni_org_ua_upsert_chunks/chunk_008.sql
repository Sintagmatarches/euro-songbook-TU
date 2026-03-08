DELETE FROM song_links WHERE song_id = 'pisniua_2127063';
DELETE FROM song_versions WHERE song_id = 'pisniua_2127063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2127063';
DELETE FROM songs WHERE id = 'pisniua_2127063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2127063','Забава аж до рання','Українська народна пісня. Виконує: Зорепад','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Гей, забава! Забава аж до рання!
Гей, забава, забава цілу ніч!
Гей, гуляла! Гуляла аж до рання!
Гей, гуляла, гуляла цілу ніч!

Ти казала, ти казала
В понеділок підем разом,
Підем разом по барвінок.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ти казала, ти казала
У вівторок поцілуєш,
Поцілуєш разів сорок.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ага, моя мила,
Моя мила до роботи не лінива,
Як з роботи я прийду -
Все за неї пороблю,
Все за неї пороблю, моя мила!

Гей, забава! Забава аж до рання!
Гей, забава, забава цілу ніч!
Гей, гуляла! Гуляла аж до рання!
Гей, гуляла, гуляла цілу ніч!

Ти казала, ти казала
У середу підем разом,
Підем разом по череду.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ти казала, ти казала
У четвер підем разом,
Підем разом на спацер.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ага, моя мила,
Моя мила до роботи не лінива,
Як з роботи я прийду -
Все за неї пороблю,
Все за неї пороблю, моя мила!

Гей, забава! Забава аж до рання!
Гей, забава, забава цілу ніч!
Гей, гуляла! Гуляла аж до рання!
Гей, гуляла, гуляла цілу ніч!

Ти казала, ти сказала
У п''ятницю підем разом,
Підем разом на вулицю.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ти казала, ти сказала
У суботу підем разом,
Підем разом на роботу.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ага, моя мила,
До роботи, до роботи не лінива,
Як з роботи я прийду -
Все за неї пороблю,
Все за неї пороблю, моя мила!

Гей, забава! Забава аж до рання!
Гей, забава, забава цілу ніч!
Гей, гуляла! Гуляла аж до рання!
Гей, гуляла, гуляла цілу ніч!

Ти сказала, ти казала
У неділю підем разом,
Підем разом на весілля.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ага, моя мила,
Моя мила до роботи не лінива,
Як з роботи я прийду -
Все за неї пороблю,
Все за неї пороблю, моя мила!

Гей, забава! Забава аж до рання!
Гей, забава, забава цілу ніч!
Гей, гуляла! Гуляла аж до рання!
Гей, гуляла, гуляла цілу ніч!','[''pisni.org.ua'', ''cat:narodni'', ''cat:vesilni'', ''Народні пісні'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2127063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2127063','Забава аж до рання','Гей, забава! Забава аж до рання!
Гей, забава, забава цілу ніч!
Гей, гуляла! Гуляла аж до рання!
Гей, гуляла, гуляла цілу ніч!

Ти казала, ти казала
В понеділок підем разом,
Підем разом по барвінок.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ти казала, ти казала
У вівторок поцілуєш,
Поцілуєш разів сорок.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ага, моя мила,
Моя мила до роботи не лінива,
Як з роботи я прийду -
Все за неї пороблю,
Все за неї пороблю, моя мила!

Гей, забава! Забава аж до рання!
Гей, забава, забава цілу ніч!
Гей, гуляла! Гуляла аж до рання!
Гей, гуляла, гуляла цілу ніч!

Ти казала, ти казала
У середу підем разом,
Підем разом по череду.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ти казала, ти казала
У четвер підем разом,
Підем разом на спацер.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ага, моя мила,
Моя мила до роботи не лінива,
Як з роботи я прийду -
Все за неї пороблю,
Все за неї пороблю, моя мила!

Гей, забава! Забава аж до рання!
Гей, забава, забава цілу ніч!
Гей, гуляла! Гуляла аж до рання!
Гей, гуляла, гуляла цілу ніч!

Ти казала, ти сказала
У п''ятницю підем разом,
Підем разом на вулицю.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ти казала, ти сказала
У суботу підем разом,
Підем разом на роботу.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ага, моя мила,
До роботи, до роботи не лінива,
Як з роботи я прийду -
Все за неї пороблю,
Все за неї пороблю, моя мила!

Гей, забава! Забава аж до рання!
Гей, забава, забава цілу ніч!
Гей, гуляла! Гуляла аж до рання!
Гей, гуляла, гуляла цілу ніч!

Ти сказала, ти казала
У неділю підем разом,
Підем разом на весілля.

Я прийшов - тебе нема:
Підманула, підвела!
Підманула, підвела моя мила!

Ага, моя мила,
Моя мила до роботи не лінива,
Як з роботи я прийду -
Все за неї пороблю,
Все за неї пороблю, моя мила!

Гей, забава! Забава аж до рання!
Гей, забава, забава цілу ніч!
Гей, гуляла! Гуляла аж до рання!
Гей, гуляла, гуляла цілу ніч!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2127063_l1','pisniua_2127063','YouTube','https://www.youtube.com/watch?v=gVyflsOiCXI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2127063_l2','pisniua_2127063','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2126091';
DELETE FROM song_versions WHERE song_id = 'pisniua_2126091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2126091';
DELETE FROM songs WHERE id = 'pisniua_2126091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2126091','Мій друг','Музика: Повний привід Слова: Повний привід. Виконує: Повний привід','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У цьому світі, де від дня
Лише листок календаря,
Я не забув твоє ім''я.
Летить вперед безжально час
І хай моря розділять нас -
Над дружбою не владен час.

Приспів:
І я не зраджу почуттям,
Я все зроблю, я все віддам,
Щоб тільки разом бути нам!
І я не зраджу почуттям,
Я все зроблю, я все віддам,
Щоб бути разом, друже, нам!

Я пам''ятаю, як дітьми,
Ми клялись, обіцяли ми:
Лиш разом дійдем до мети!
Блукали довго в місяцях
Та не згубили ми в роках
Важливість даних нами клятв.

Приспів.

Той самий блиск в твоїх очах
І ті ж обійми на плечах,
З тобою я забув про страх,
І, як я знову оступлюсь,
Я знаю, що я не впаду,
Бо ззаду вже стоїть мій друг.
Той самий блиск в твоїх очах
І ті ж обійми на плечах,
З тобою я забув про страх,
І, як я знову оступлюсь,
Я знаю, що я не впаду,
Бо ззаду вже стоїть мій... мій...','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2126091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2126091','Мій друг','У цьому світі, де від дня
Лише листок календаря,
Я не забув твоє ім''я.
Летить вперед безжально час
І хай моря розділять нас -
Над дружбою не владен час.

Приспів:
І я не зраджу почуттям,
Я все зроблю, я все віддам,
Щоб тільки разом бути нам!
І я не зраджу почуттям,
Я все зроблю, я все віддам,
Щоб бути разом, друже, нам!

Я пам''ятаю, як дітьми,
Ми клялись, обіцяли ми:
Лиш разом дійдем до мети!
Блукали довго в місяцях
Та не згубили ми в роках
Важливість даних нами клятв.

Приспів.

Той самий блиск в твоїх очах
І ті ж обійми на плечах,
З тобою я забув про страх,
І, як я знову оступлюсь,
Я знаю, що я не впаду,
Бо ззаду вже стоїть мій друг.
Той самий блиск в твоїх очах
І ті ж обійми на плечах,
З тобою я забув про страх,
І, як я знову оступлюсь,
Я знаю, що я не впаду,
Бо ззаду вже стоїть мій... мій...');
DELETE FROM song_links WHERE song_id = 'pisniua_2127277';
DELETE FROM song_versions WHERE song_id = 'pisniua_2127277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2127277';
DELETE FROM songs WHERE id = 'pisniua_2127277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2127277','Як сніги покриють землю','Українська народна пісня','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'http://kruty.org.ua',NULL,'Як сніги покривають землю,
Як нам білим встелять путь,
Спом''янемо тую славу,
Що осталась нам з-під Крут.

Не шукайте Термопілів,
Тільки Крути спогадай,
Де спартанці-українці
Полягли за рідний край.

Триста юних одчайдухів,
В сто крат більший був там враг,
Не вступились, не подались,
Всі лягли там на полях.','[''pisni.org.ua'', ''cat:kruty'', "Пісні пам''яті Героїв бою під Крутами"]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2127277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2127277','Як сніги покриють землю','Як сніги покривають землю,
Як нам білим встелять путь,
Спом''янемо тую славу,
Що осталась нам з-під Крут.

Не шукайте Термопілів,
Тільки Крути спогадай,
Де спартанці-українці
Полягли за рідний край.

Триста юних одчайдухів,
В сто крат більший був там враг,
Не вступились, не подались,
Всі лягли там на полях.');
DELETE FROM song_links WHERE song_id = 'pisniua_2126910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2126910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2126910';
DELETE FROM songs WHERE id = 'pisniua_2126910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2126910','Ой виходьте, дівчата','Музика: народ Слова: народ','uk','ukraine_before_1917',NULL,NULL,'Пісні з Волині, Музична Україна, Київ - 1970','Веснянка. Записана в с.Торчин Рожищенського р-ну від А. Д. Шапова і А. П. Морушка','Ой виходьте, дівчата,
Та в сей вечір на вулицю
Весну красну стрічати,
Весну красну вітати.

Будем весну стрічати
Та віночки сплітати,
А віночки сплетемо,
Хороводом підемо.','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''cat:volynski'', ''Веснянки та гаївки'', ''Пісні з Волині'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2126910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2126910','Ой виходьте, дівчата','Ой виходьте, дівчата,
Та в сей вечір на вулицю
Весну красну стрічати,
Весну красну вітати.

Будем весну стрічати
Та віночки сплітати,
А віночки сплетемо,
Хороводом підемо.');
DELETE FROM song_links WHERE song_id = 'pisniua_2128175';
DELETE FROM song_versions WHERE song_id = 'pisniua_2128175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2128175';
DELETE FROM songs WHERE id = 'pisniua_2128175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2128175','Красива жінка незаміжня','Музика: Анатолій Матвійчук Слова: Анатолій Матвійчук. Виконує: Алла Кудлай','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Вона прокинеться до ранку,
Чи може зовсім не засне.
Привітне сонце крізь фіранку
В її обличчя зазирне
Нехитрі вранішні турботи,
І кава чорна та гірка.
І мов на крилах на роботу
Летить стурбована така.

Красива жінка незаміжня
Стоїть, задумавшись в метро.
В її очах печаль торішня,
А на вустах журби добро.
Красива жінка незаміжня
Очей до Вас не підійма.
Вона ще може бути ніжна,
Але в душі її зима.

Чи доля так пожартувала?
Чи щось не склалось у житті?
До неї сватались чимало
Та все не ті, та все не ті.
І вже шепочуться сусіди
З недобрим виразом обличь,
Що в інших вже дорослі діти,
А ця гуляє день та ніч.

Красива жінка незаміжня
Стоїть, задумавшись в метро.
В її очах печаль торішня,
А на вустах журби добро.
Красива жінка незаміжня
Очей до Вас не підійма.
Вона ще може бути ніжна,
Але в душі її зима.

А й би просто посміхнутись,
Журбою кинувши до ніг,
І несподівано проснутись
В обіймах ніжних і міцних.
І на роботу не летіти,
А вийти з ним, коханим, удвох.
І хай собі плетуть сусіди -
Суддя їм Бог, суддя їм Бог.

Красива жінка незаміжня
Стоїть, задумавшись в метро.
В її очах печаль торішня,
А на вустах журби добро.
Красива жінка незаміжня
Очей до Вас не підійма.
Вона ще може бути ніжна,
Але в душі її зима.

Красива жінка незаміжня...','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2128175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2128175','Красива жінка незаміжня','Вона прокинеться до ранку,
Чи може зовсім не засне.
Привітне сонце крізь фіранку
В її обличчя зазирне
Нехитрі вранішні турботи,
І кава чорна та гірка.
І мов на крилах на роботу
Летить стурбована така.

Красива жінка незаміжня
Стоїть, задумавшись в метро.
В її очах печаль торішня,
А на вустах журби добро.
Красива жінка незаміжня
Очей до Вас не підійма.
Вона ще може бути ніжна,
Але в душі її зима.

Чи доля так пожартувала?
Чи щось не склалось у житті?
До неї сватались чимало
Та все не ті, та все не ті.
І вже шепочуться сусіди
З недобрим виразом обличь,
Що в інших вже дорослі діти,
А ця гуляє день та ніч.

Красива жінка незаміжня
Стоїть, задумавшись в метро.
В її очах печаль торішня,
А на вустах журби добро.
Красива жінка незаміжня
Очей до Вас не підійма.
Вона ще може бути ніжна,
Але в душі її зима.

А й би просто посміхнутись,
Журбою кинувши до ніг,
І несподівано проснутись
В обіймах ніжних і міцних.
І на роботу не летіти,
А вийти з ним, коханим, удвох.
І хай собі плетуть сусіди -
Суддя їм Бог, суддя їм Бог.

Красива жінка незаміжня
Стоїть, задумавшись в метро.
В її очах печаль торішня,
А на вустах журби добро.
Красива жінка незаміжня
Очей до Вас не підійма.
Вона ще може бути ніжна,
Але в душі її зима.

Красива жінка незаміжня...');
DELETE FROM song_links WHERE song_id = 'pisniua_21277';
DELETE FROM song_versions WHERE song_id = 'pisniua_21277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_21277';
DELETE FROM songs WHERE id = 'pisniua_21277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_21277','Для тебе *','Виконує: Мертвий півень','uk','ukraine_1991',NULL,NULL,'Пісневир. Молодіжний співаник. Львів 2001.',NULL,'Старий сивий пес ляже біля ніг твоїх.
Мале кошеня вискочить тобі на руки.
Ніхто ще не бачив Богородицю такою,
Ніхто ще не бачив Богородицю...

Добрий вогонь зігріє нас сьогодні,
Юний вітер закоханий в нас,
Тому щонас неможливо не любити,
Тому що нас неможливо не любити…

Тому що ми святі в своїй любові,
Тому що ми святі...','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_21277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_21277','Для тебе *','Старий сивий пес ляже біля ніг твоїх.
Мале кошеня вискочить тобі на руки.
Ніхто ще не бачив Богородицю такою,
Ніхто ще не бачив Богородицю...

Добрий вогонь зігріє нас сьогодні,
Юний вітер закоханий в нас,
Тому щонас неможливо не любити,
Тому що нас неможливо не любити…

Тому що ми святі в своїй любові,
Тому що ми святі...');
DELETE FROM song_links WHERE song_id = 'pisniua_2129354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2129354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2129354';
DELETE FROM songs WHERE id = 'pisniua_2129354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2129354','Гречка','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українська дитяча література: Антологія / Вступ У45 на ст. та упорядкув. Л. П. Козачок. - К.: Вища шк., 2002. - 519 с.',NULL,'Ой виорю нивку довгесеньку
Та посію гречку гарнесеньку.
А вродила гречка,
Мала-невеличка -
Гречка!
Ізберу я женців,
Дівок та молодців,
А старії баби
Гречку в''язали.
Іздеру, ізмелю,
Галушок наварю -
Гречка.
А в нашої гречки
Чорнії вершечки,
А в нашого вівса
Русая коса.
Іздеру, ізмелю,
Галушок наварю -
Гречка!','[''pisni.org.ua'', ''cat:all-ukraine'', ''Загальноукраїнські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2129354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2129354','Гречка','Ой виорю нивку довгесеньку
Та посію гречку гарнесеньку.
А вродила гречка,
Мала-невеличка -
Гречка!
Ізберу я женців,
Дівок та молодців,
А старії баби
Гречку в''язали.
Іздеру, ізмелю,
Галушок наварю -
Гречка.
А в нашої гречки
Чорнії вершечки,
А в нашого вівса
Русая коса.
Іздеру, ізмелю,
Галушок наварю -
Гречка!');
DELETE FROM song_links WHERE song_id = 'pisniua_2129818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2129818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2129818';
DELETE FROM songs WHERE id = 'pisniua_2129818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2129818','А-а-а-а, люлі...','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','село Рокитне Яготинського району','А-а-а-а, люлі...
Чужим діткам дулі-дулі.
А Андрійку - калачі,
Шоб Андрійко спав удень і вночі.

А-а-а-а, люлі, баю-баю,
А я своє мале дитя й приколихаю,
Приколишу, пригойдаю,
Сама піду трошки погуляю.

Ай, люлі-люлі-люлі-люлі,
Налетіли гулі,
Посідали на воротях
У червоненьких чоботях.

А-а-а-а, люлі-люлі-люлячки,
Шовковії довірвечки,
Золотії бильця,
Приколишу чорнобривця.

Приколишу, пригойдаю,
Сама піду погуляю...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2129818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2129818','А-а-а-а, люлі...','А-а-а-а, люлі...
Чужим діткам дулі-дулі.
А Андрійку - калачі,
Шоб Андрійко спав удень і вночі.

А-а-а-а, люлі, баю-баю,
А я своє мале дитя й приколихаю,
Приколишу, пригойдаю,
Сама піду трошки погуляю.

Ай, люлі-люлі-люлі-люлі,
Налетіли гулі,
Посідали на воротях
У червоненьких чоботях.

А-а-а-а, люлі-люлі-люлячки,
Шовковії довірвечки,
Золотії бильця,
Приколишу чорнобривця.

Приколишу, пригойдаю,
Сама піду погуляю...');
DELETE FROM song_links WHERE song_id = 'pisniua_212971';
DELETE FROM song_versions WHERE song_id = 'pisniua_212971';
DELETE FROM songs_fts WHERE song_id = 'pisniua_212971';
DELETE FROM songs WHERE id = 'pisniua_212971';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_212971','Ой з-за гори чорна хмара стала','Українська народна пісня. Виконує: Не журись!','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'"Молоде життя", Ауґсбурґ, 1949','версія козацької пісні','Ой з-за гори чорна хмара встала.
То не хмара - ворожа навала.
То не хмара - ворожа навала.
Від гарматів земля застогнала.
Ой, збирайтесь, хлопці молодії,
Ой, збирайтесь, стрільці січовії.
Та підемо горами-ярами,
Та будемо биться з ворогами.
Та й покинем неньку і дівчину,
Та за нашу славну Україну.
Ой з-за гори чорна хмара стала.
По всім світі йде стрілецька слава.
По всім світі йде стрілецька слава.','[''pisni.org.ua'', ''cat:kozacki'', ''cat:strilecki'', ''Козацькі пісні'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_212971'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_212971','Ой з-за гори чорна хмара стала','Ой з-за гори чорна хмара встала.
То не хмара - ворожа навала.
То не хмара - ворожа навала.
Від гарматів земля застогнала.
Ой, збирайтесь, хлопці молодії,
Ой, збирайтесь, стрільці січовії.
Та підемо горами-ярами,
Та будемо биться з ворогами.
Та й покинем неньку і дівчину,
Та за нашу славну Україну.
Ой з-за гори чорна хмара стала.
По всім світі йде стрілецька слава.
По всім світі йде стрілецька слава.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_212971_l1','pisniua_212971','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2130199';
DELETE FROM song_versions WHERE song_id = 'pisniua_2130199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2130199';
DELETE FROM songs WHERE id = 'pisniua_2130199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2130199','Збережи мене в серці своїм','Музика: Мар''ян Гаденко Слова: Микола Сингаївський. Виконує: Олексій Похвала','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Бережи мене в серці своїм,
Називай лиш єдиним-одним,
Як росу береже світання,
Як душа незрадливе кохання,
Бережи мене в серці своїм.

Повтори мене в серці своїм,
Наче спалахом осяйний,
Запромінь мене із пітьми,       |
Щоб любов''ю світилися ми,       |
Повтори мене в серці своїм.     | (2)

Схорони мене в серці своїм,
Не ховай лиш у лоні земнім,
У холодну сльотаву завію        |
Я ще пісню в душі лелію,        |
Схорони мене в серці своїм.     | (2)

Воскреси мене в серці своїм,
Бо проснеться мій голос, мов грім,
І кохання пелюстки зів''ялі      |
Оживуть і воскреснуть з печалі, |
Воскреси мене в серці своїм!    | (2)

Бережи мене в серці своїм,
Називай лиш єдиним-одним,
Як росу береже світання,        |
Як душа незрадливе кохання,     |
Бережи мене в серці своїм.      | (3)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2130199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2130199','Збережи мене в серці своїм','Бережи мене в серці своїм,
Називай лиш єдиним-одним,
Як росу береже світання,
Як душа незрадливе кохання,
Бережи мене в серці своїм.

Повтори мене в серці своїм,
Наче спалахом осяйний,
Запромінь мене із пітьми,       |
Щоб любов''ю світилися ми,       |
Повтори мене в серці своїм.     | (2)

Схорони мене в серці своїм,
Не ховай лиш у лоні земнім,
У холодну сльотаву завію        |
Я ще пісню в душі лелію,        |
Схорони мене в серці своїм.     | (2)

Воскреси мене в серці своїм,
Бо проснеться мій голос, мов грім,
І кохання пелюстки зів''ялі      |
Оживуть і воскреснуть з печалі, |
Воскреси мене в серці своїм!    | (2)

Бережи мене в серці своїм,
Називай лиш єдиним-одним,
Як росу береже світання,        |
Як душа незрадливе кохання,     |
Бережи мене в серці своїм.      | (3)');
DELETE FROM song_links WHERE song_id = 'pisniua_2130251';
DELETE FROM song_versions WHERE song_id = 'pisniua_2130251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2130251';
DELETE FROM songs WHERE id = 'pisniua_2130251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2130251','Та живе любов','Музика: Мар''ян Гаденко Слова: Олександр Мороз. Виконує: Гурт Дзвони','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Від солов''їв здригнулась неба синь,
А місто спить, загорнуте в тумани.
Я повернусь, лише ти попроси        |
Очима чи руками, чи словами.        | (2)

Я повернусь і зачарую знов,
А ти заплачеш тихо без причини.
Життя минає та живе любов           |
З твоїми неповторними очима.        | (2)

Живе любов!

Пливуть, пливуть травневі голоси,
Гойдають цвіт заклетчаний над нами.
Від солов''їв здригнулась неба синь, |
А місто спить, загорнуте в тумани.  | (2)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2130251'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2130251','Та живе любов','Від солов''їв здригнулась неба синь,
А місто спить, загорнуте в тумани.
Я повернусь, лише ти попроси        |
Очима чи руками, чи словами.        | (2)

Я повернусь і зачарую знов,
А ти заплачеш тихо без причини.
Життя минає та живе любов           |
З твоїми неповторними очима.        | (2)

Живе любов!

Пливуть, пливуть травневі голоси,
Гойдають цвіт заклетчаний над нами.
Від солов''їв здригнулась неба синь, |
А місто спить, загорнуте в тумани.  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2130251_l1','pisniua_2130251','YouTube','https://www.youtube.com/watch?v=Uz-_udH11zY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2129697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2129697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2129697';
DELETE FROM songs WHERE id = 'pisniua_2129697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2129697','Добрий вечор, матусенько моя','(весільна). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','село Крутоярівка Прилуцького району','Добрий вечор,
Матусенько моя,
Ой, чи мила
Дружинонька моя?

Якби тобі,
Мій синочку, мила,
Якби мені
Ділечко робила.

Якби мені
Прання прала,
Якби мене
Матір''ю звала...','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2129697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2129697','Добрий вечор, матусенько моя','Добрий вечор,
Матусенько моя,
Ой, чи мила
Дружинонька моя?

Якби тобі,
Мій синочку, мила,
Якби мені
Ділечко робила.

Якби мені
Прання прала,
Якби мене
Матір''ю звала...');
DELETE FROM song_links WHERE song_id = 'pisniua_21293';
DELETE FROM song_versions WHERE song_id = 'pisniua_21293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_21293';
DELETE FROM songs WHERE id = 'pisniua_21293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_21293','Гей на горі, там женці жнуть','Українська народна пісня. Виконує: Соколи, Іван Мацялко','uk','ukraine_before_1917',NULL,NULL,'Пісневир. Молодіжний співаник. Львів 2001.','Інші варіанти цієї пісні: Ой на Горі тай Женці жнуть; Гей на горі, там женці жнуть*;','Гей, на горі там женці жнуть,
А попід горою, яром, долиною
Козаки йдуть.
Гей, долиною, гей,
Широкою козаки йдуть.

Попереду Дорошенко
Веде своє військо, військо Запорозьке
Хорошенько.
Гей, долиною, гей,
Широкою хорошенько.

А позаду Сагайдачний,
Що проміняв жінку на тютюн та люльку,
Необачний.
Гей, долиною, гей,
Широкою необачний.

Гей вернися, Сагайдачний,
Візьми свою жінку,
Віддай тютюн, люльку, необачний.
Гей, долиною, гей,
Широкою необачний.

Мені жінка не годиться,
А тютюн та люлька козаку в дорозі
Знадобиться.
Гей, долиною, гей,
Широкою знадобиться.

Гей хто в лісі, озовися,
Та викрешем вогню і потягнем люльку,
Не журися.
Гей, долиною, гей,
Широкою не журися.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_21293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_21293','Гей на горі, там женці жнуть','Гей, на горі там женці жнуть,
А попід горою, яром, долиною
Козаки йдуть.
Гей, долиною, гей,
Широкою козаки йдуть.

Попереду Дорошенко
Веде своє військо, військо Запорозьке
Хорошенько.
Гей, долиною, гей,
Широкою хорошенько.

А позаду Сагайдачний,
Що проміняв жінку на тютюн та люльку,
Необачний.
Гей, долиною, гей,
Широкою необачний.

Гей вернися, Сагайдачний,
Візьми свою жінку,
Віддай тютюн, люльку, необачний.
Гей, долиною, гей,
Широкою необачний.

Мені жінка не годиться,
А тютюн та люлька козаку в дорозі
Знадобиться.
Гей, долиною, гей,
Широкою знадобиться.

Гей хто в лісі, озовися,
Та викрешем вогню і потягнем люльку,
Не журися.
Гей, долиною, гей,
Широкою не журися.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_21293_l1','pisniua_21293','YouTube','https://www.youtube.com/watch?v=54hGpgMuaNk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2129379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2129379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2129379';
DELETE FROM songs WHERE id = 'pisniua_2129379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2129379','Жайворонок','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українська дитяча література: Антологія / Вступ У45 на ст. та упорядкув. Л. П. Козачок. - К.: Вища шк., 2002. - 519 с.',NULL,'- Ой чому ти, жайворонку,
Рано з вирію вилітав?
Ще по горах сніженьки лежать,
По долинах криженьки стоять...

- А я тії сніженьки
Крильцями розмечу,
А я тії криженьки
Ніжками потопчу!','[''pisni.org.ua'', ''cat:all-ukraine'', ''Загальноукраїнські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2129379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2129379','Жайворонок','- Ой чому ти, жайворонку,
Рано з вирію вилітав?
Ще по горах сніженьки лежать,
По долинах криженьки стоять...

- А я тії сніженьки
Крильцями розмечу,
А я тії криженьки
Ніжками потопчу!');
DELETE FROM song_links WHERE song_id = 'pisniua_2128192';
DELETE FROM song_versions WHERE song_id = 'pisniua_2128192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2128192';
DELETE FROM songs WHERE id = 'pisniua_2128192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2128192','Колискова','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Мати мого чоловіка, родом із села Тустоголови, Зборівський район Тернопільської області',NULL,'Ой, колисала баба діда
Від вечора до обіда.

А дід бабі не дав спати,
мусіла му їсти дати.

Ой, дала їсти, дала пити,
Сама пішла горшки мити.

Ой, мила горшки та й заснула,
прийшля свиня та й копнула.

ой, били свиню макогоном
Перед паном економом.

Ой, взяли свиню перед війта,
А свиня каже, що є бита...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2128192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2128192','Колискова','Ой, колисала баба діда
Від вечора до обіда.

А дід бабі не дав спати,
мусіла му їсти дати.

Ой, дала їсти, дала пити,
Сама пішла горшки мити.

Ой, мила горшки та й заснула,
прийшля свиня та й копнула.

ой, били свиню макогоном
Перед паном економом.

Ой, взяли свиню перед війта,
А свиня каже, що є бита...');
DELETE FROM song_links WHERE song_id = 'pisniua_2128267';
DELETE FROM song_versions WHERE song_id = 'pisniua_2128267';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2128267';
DELETE FROM songs WHERE id = 'pisniua_2128267';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2128267','Ти до мене не ходи','Музика: народ Слова: народ. Виконує: Русичі','uk','ukraine_before_1917',NULL,NULL,'rusychi.org',NULL,'Ти до мене не ходи, куций коротенький,
Бо до мене ходить хлопець високий тоненький.
Понад сад виноград,
А у саду грушка.
Вийди, вийди, ти до мене,
Моя щебетушка.

Ти до мене не ходи, не міси болота,
Я за тебе не піду, хоч би був зі злота.
Чи ти, мила, така гарна,
Чи мені здається.
Через тебе, моя мила,
Сон мій не береться.

Ти до мене, ти до мене не ходи, не псуй собі ночі,
Я за тебе не піду, бо ми ся не хоче.
Понад сад виноград,
А у саду сливка,
Вийди, вийди, ти до мене,
Моя чорнобривка.

Ти до мене не ходи, не псуй собі ночі,
Я за тебе не піду, бо мати не хоче.
Перестань, перестань
До мене ходити.
Є у мене гарний хлопець,
Буде мя любити.
Любити','[''pisni.org.ua'', ''cat:lirychni'', ''cat:narodni'', ''cat:zhartivlyvi'', ''Пісні про кохання, ліричні'', ''Народні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2128267'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2128267','Ти до мене не ходи','Ти до мене не ходи, куций коротенький,
Бо до мене ходить хлопець високий тоненький.
Понад сад виноград,
А у саду грушка.
Вийди, вийди, ти до мене,
Моя щебетушка.

Ти до мене не ходи, не міси болота,
Я за тебе не піду, хоч би був зі злота.
Чи ти, мила, така гарна,
Чи мені здається.
Через тебе, моя мила,
Сон мій не береться.

Ти до мене, ти до мене не ходи, не псуй собі ночі,
Я за тебе не піду, бо ми ся не хоче.
Понад сад виноград,
А у саду сливка,
Вийди, вийди, ти до мене,
Моя чорнобривка.

Ти до мене не ходи, не псуй собі ночі,
Я за тебе не піду, бо мати не хоче.
Перестань, перестань
До мене ходити.
Є у мене гарний хлопець,
Буде мя любити.
Любити');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2128267_l1','pisniua_2128267','YouTube','https://www.youtube.com/watch?v=2wsF2Aah7Kg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2128267_l2','pisniua_2128267','YouTube','https://www.youtube.com/watch?v=-TNFMZpk3fU','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2128267_l3','pisniua_2128267','YouTube','https://www.youtube.com/watch?v=6UwWyD_auIg','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2128267_l4','pisniua_2128267','YouTube','https://www.youtube.com/watch?v=J6nM0vHDL2Q','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2128267_l5','pisniua_2128267','YouTube','https://www.youtube.com/watch?v=lj3HHF6Ur0g','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2128267_l6','pisniua_2128267','YouTube','https://www.youtube.com/watch?v=5B4vXyMqdEY','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_2130277';
DELETE FROM song_versions WHERE song_id = 'pisniua_2130277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2130277';
DELETE FROM songs WHERE id = 'pisniua_2130277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2130277','Ностальгія','Музика: Мар''ян Гаденко Слова: Зоя Кучерява. Виконує: Мар''ян Гаденко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Поговоріть зі мною по-вкраїнськи,
Я так давно живу на чужині.
А погляд ваш неначе материнський
І щось у серці стиснулось мені.
Ну, як там вдома? Чи цвіте калина?      |
Чи пахнуть чебреці і спориші?           |
Мене забула, мабуть, Україна,           |
Яка живе, живе в моїй душі.             | (2)

Коли птахи летять у піднебесні
В краї, де Україна і весна,
До них я посилаю своє серце,
Рятунку від журби мені нема.
Чому в житті, чому в житті так вийшло - |
Ридає ностальгія в чужині.              |
Є дім і сад, і зацвітають вишні,        |
Але додому хочеться мені.               | (3)

Є дім і сад, і зацвітають вишні,
Але додому хочеться мені...','[''pisni.org.ua'', ''cat:emigration'', ''cat:romansy'', ''Пісні про еміґрацію'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2130277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2130277','Ностальгія','Поговоріть зі мною по-вкраїнськи,
Я так давно живу на чужині.
А погляд ваш неначе материнський
І щось у серці стиснулось мені.
Ну, як там вдома? Чи цвіте калина?      |
Чи пахнуть чебреці і спориші?           |
Мене забула, мабуть, Україна,           |
Яка живе, живе в моїй душі.             | (2)

Коли птахи летять у піднебесні
В краї, де Україна і весна,
До них я посилаю своє серце,
Рятунку від журби мені нема.
Чому в житті, чому в житті так вийшло - |
Ридає ностальгія в чужині.              |
Є дім і сад, і зацвітають вишні,        |
Але додому хочеться мені.               | (3)

Є дім і сад, і зацвітають вишні,
Але додому хочеться мені...');
DELETE FROM song_links WHERE song_id = 'pisniua_212952';
DELETE FROM song_versions WHERE song_id = 'pisniua_212952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_212952';
DELETE FROM songs WHERE id = 'pisniua_212952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_212952','О, Україно! О люба ненько','(За Україну). Музика: Ярослав Ярославенко Слова: Микола Вороний. Виконує: Не журись!','uk','ukraine_1991',NULL,NULL,NULL,NULL,'О, Україно! О люба ненько,
Тобі вірненько присягнем!

Серця кров і любов,
Все тобі віддати в боротьбі
За Україну, за її волю,
За честь і славу, за народ!

Яремні(1) пута ми вже пірвали(2)
І зруйнували царський трон.

З-під ярем і тюрем,
Де був гніт, ідем на вольний світ.
За Україну, за її волю,
За честь і славу, за народ!

За Україну, з вогнем-завзяттям,
Рушаймо браття всі вперед

Слушний час кличе нас,
Ну ж бо враз сповнять святий наказ
За Україну, за її волю,
За честь і славу, за народ!

Вперед же браття, прапор наш має,
І сонце сяє нам в очах.

Дружній тиск, зброї блиск,
Кари гнів і з ним побідний спів...
За Україну, за її волю,
За честь і славу, за народ!

Варіанти:
(1) Ганебні
(2) порвали','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:patriotic'', ''Гимни та марші'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_212952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_212952','О, Україно! О люба ненько','О, Україно! О люба ненько,
Тобі вірненько присягнем!

Серця кров і любов,
Все тобі віддати в боротьбі
За Україну, за її волю,
За честь і славу, за народ!

Яремні(1) пута ми вже пірвали(2)
І зруйнували царський трон.

З-під ярем і тюрем,
Де був гніт, ідем на вольний світ.
За Україну, за її волю,
За честь і славу, за народ!

За Україну, з вогнем-завзяттям,
Рушаймо браття всі вперед

Слушний час кличе нас,
Ну ж бо враз сповнять святий наказ
За Україну, за її волю,
За честь і славу, за народ!

Вперед же браття, прапор наш має,
І сонце сяє нам в очах.

Дружній тиск, зброї блиск,
Кари гнів і з ним побідний спів...
За Україну, за її волю,
За честь і славу, за народ!

Варіанти:
(1) Ганебні
(2) порвали');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_212952_l1','pisniua_212952','YouTube','https://www.youtube.com/watch?v=Q1Q6kim1ios','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_212952_l2','pisniua_212952','YouTube','https://www.youtube.com/watch?v=XXPYjZfI1zc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_212952_l3','pisniua_212952','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_212890';
DELETE FROM song_versions WHERE song_id = 'pisniua_212890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_212890';
DELETE FROM songs WHERE id = 'pisniua_212890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_212890','Дощик','(День почався сонячно...). Музика: Ігор Білик Слова: Л. Бєгун','uk','ukraine_1991',NULL,NULL,'від авторів',NULL,'День почався сонячно,
Радісно, піднесено,
Раптом все змінилося,
Хмари наповзли.
Подивлюсь в віконечко,
Заспіваю весело,
Щоб усім почулася
Музика грози.

Кап кап кап, капає
Дощик веселий мій,
Під дощем радсним
ти спокійно стій.
Він, як промінь сонячний,
теплий і стрімкий,
капай, капай дощику,
друже мокрий мій.

Молода Весна усе
Прикрашає квітами.
Повернулися птахи,
Віє вітерець.
А коли земля засне
Краплями великими,
Тихо змиє порохи
Дощик - молодець.

Дощик по хмариночках
Скаче - перестрибує,
А коли побачить нас,
До землі летить.
Хто іде по вулиці,
Він за кожним бігає,
І до всіх чіпляється,
Хоче намочить.    мелодія пісні','[''pisni.org.ua'', ''cat:zakarpatski'', ''Закарпатські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_212890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_212890','Дощик','День почався сонячно,
Радісно, піднесено,
Раптом все змінилося,
Хмари наповзли.
Подивлюсь в віконечко,
Заспіваю весело,
Щоб усім почулася
Музика грози.

Кап кап кап, капає
Дощик веселий мій,
Під дощем радсним
ти спокійно стій.
Він, як промінь сонячний,
теплий і стрімкий,
капай, капай дощику,
друже мокрий мій.

Молода Весна усе
Прикрашає квітами.
Повернулися птахи,
Віє вітерець.
А коли земля засне
Краплями великими,
Тихо змиє порохи
Дощик - молодець.

Дощик по хмариночках
Скаче - перестрибує,
А коли побачить нас,
До землі летить.
Хто іде по вулиці,
Він за кожним бігає,
І до всіх чіпляється,
Хоче намочить.    мелодія пісні');
DELETE FROM song_links WHERE song_id = 'pisniua_212990';
DELETE FROM song_versions WHERE song_id = 'pisniua_212990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_212990';
DELETE FROM songs WHERE id = 'pisniua_212990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_212990','Карпатськії гори, зійдіть на долину',NULL,'uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'Олесь Боднар',NULL,'Карпатськії гори, зійдіть на долину,
Стрільці січовії, прийдіть на годину.  | (2)

Стрільці січовії прийшли на годину,
Та було вже пізно, взяли Україну.      | (2)

Тернопіль узяли, а Львів обложили,
А під Перемишлем життя положили.       | (2)

А під Перемишлем висока могила —
Її насипала стрілецька дружина.        | (2)

А на тій могилі червона калина —
Її посадила стрільцева дружина.        | (2)

Чи ви, хлопці, спали, чи ви в карти грали,
Що ви Україну москалям віддали.        | (2)

Ой ні, ми не спали, і в карти не грали,
Сиділи в окопах, та й з крісів стріляли. (2)

Карпатськії гори, єднайтесь долами,
А ви, браття й сестри, ідіть разом з нами.(2)','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_212990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_212990','Карпатськії гори, зійдіть на долину','Карпатськії гори, зійдіть на долину,
Стрільці січовії, прийдіть на годину.  | (2)

Стрільці січовії прийшли на годину,
Та було вже пізно, взяли Україну.      | (2)

Тернопіль узяли, а Львів обложили,
А під Перемишлем життя положили.       | (2)

А під Перемишлем висока могила —
Її насипала стрілецька дружина.        | (2)

А на тій могилі червона калина —
Її посадила стрільцева дружина.        | (2)

Чи ви, хлопці, спали, чи ви в карти грали,
Що ви Україну москалям віддали.        | (2)

Ой ні, ми не спали, і в карти не грали,
Сиділи в окопах, та й з крісів стріляли. (2)

Карпатськії гори, єднайтесь долами,
А ви, браття й сестри, ідіть разом з нами.(2)');
DELETE FROM song_links WHERE song_id = 'pisniua_212910';
DELETE FROM song_versions WHERE song_id = 'pisniua_212910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_212910';
DELETE FROM songs WHERE id = 'pisniua_212910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_212910','Слава, слава, отамане','Музика: Михайло Гайворонський Слова: Юрій Назарак','uk','ukr_ssr_1919_1991',NULL,'1990','1. Повік не зів''яне. Стрілецькі пісні Михайла Гайворонського. Упор. В. Подуфалий. Тернопіль, 1990. 2. Олесь Боднар',NULL,'Слава, слава, отамане,
Гей, ти, батьку наш!
Ми з тобою на ворога        |
Підемо всі враз!            | (2)

Коні твої осідлані,
Ми від рання ждем;
Вийди, батьку отамане,      |
І скажи: ми йдем!           | (2)

І як та хмара, як туча,
Вдарим на врагів,
І з тобою в трудах, славі,  |
Вертаємось домів.           | (2)

Не час, ореле, горювати, -
Глум забудь і біль;
Краще згинуть, як так жити, |
В бій веди, у бій!          | (2)

Та ж ми твої соколята,
Ти ж отаман наш;
Ми до бою за тобою          |
Підемо всі враз!            | (2)','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_212910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_212910','Слава, слава, отамане','Слава, слава, отамане,
Гей, ти, батьку наш!
Ми з тобою на ворога        |
Підемо всі враз!            | (2)

Коні твої осідлані,
Ми від рання ждем;
Вийди, батьку отамане,      |
І скажи: ми йдем!           | (2)

І як та хмара, як туча,
Вдарим на врагів,
І з тобою в трудах, славі,  |
Вертаємось домів.           | (2)

Не час, ореле, горювати, -
Глум забудь і біль;
Краще згинуть, як так жити, |
В бій веди, у бій!          | (2)

Та ж ми твої соколята,
Ти ж отаман наш;
Ми до бою за тобою          |
Підемо всі враз!            | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2130216';
DELETE FROM song_versions WHERE song_id = 'pisniua_2130216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2130216';
DELETE FROM songs WHERE id = 'pisniua_2130216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2130216','Прощай','Музика: Мар''ян Гаденко Слова: Мар''ян Гаденко. Виконує: Іван Мацялко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Загубив я тебе назавжди,
Все пройшло і печаль, і тривога,
Пролетять наді мною вітри
Та залишиться в пам''яті спогад.

Приспів:
Тож прощай, моя мила, прощай,
Не стрічати нам більше світанки,
А летіти в думках в синю даль
На рожевім коні спозаранку.

Розійшлись, не подали роки
Без єдиного слова вагання,
І тому не роки, а віки
Не закінчиться наше кохання.

Приспів.

Чи повернуться знову ті дні,
Чи зустрінемось ще раз - не знаю,
Хоч залишуся я в самоті,
Але зради повік не шукаю.

Приспів. (2)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2130216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2130216','Прощай','Загубив я тебе назавжди,
Все пройшло і печаль, і тривога,
Пролетять наді мною вітри
Та залишиться в пам''яті спогад.

Приспів:
Тож прощай, моя мила, прощай,
Не стрічати нам більше світанки,
А летіти в думках в синю даль
На рожевім коні спозаранку.

Розійшлись, не подали роки
Без єдиного слова вагання,
І тому не роки, а віки
Не закінчиться наше кохання.

Приспів.

Чи повернуться знову ті дні,
Чи зустрінемось ще раз - не знаю,
Хоч залишуся я в самоті,
Але зради повік не шукаю.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2130414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2130414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2130414';
DELETE FROM songs WHERE id = 'pisniua_2130414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2130414','Ностальгія','Музика: Ігор Яснюк Слова: Н. Папроцька. Виконує: Світозари, Ігор Яснюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я дивлюся як вечірня зоря засина,
І ховається в хмар білосніжну перину,
Знаю я, що прокинеться згодом вона
В тім далекім краю, де моя Батьківщина.
І до болю в очах я вдивляюся в даль
У байдужу холодну блакить океану.
Україно моя - невгамовна печаль,
Мого серця відкрита пульсуюча рана.

Приспів:
Куди оком не кинь, все чужі береги,
Благодатна земля, що сягає довкола,
Не жаліє для мене тепла і снаги,
Але рідною стати не зможе ніколи.

Я єдину тебе ніжно матір''ю зву,
Бо кривити душею не хочу й не вмію.
У далекій чужині тобою живу,
Переймаюсь тобою, тобою хворію.
Ця хвороба - тяжка незбагнена любов,
Що нуждою і потом, і цвітом калина,
З молоком материнським ввійшла в мою кров,
В цілім світі від неї немає вакцини.

Приспів.

Не лякає мене ні буран, ні гроза
І всім бідам на зло я в обличчя сміюся.
Тільки знов, коли сонце вечірнє згаса,
У зажурі на обрій далекий дивлюся.

Приспів.

Не жаліє для мене тепла і снаги,
Але рідною стати не зможе ніколи...','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2130414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2130414','Ностальгія','Я дивлюся як вечірня зоря засина,
І ховається в хмар білосніжну перину,
Знаю я, що прокинеться згодом вона
В тім далекім краю, де моя Батьківщина.
І до болю в очах я вдивляюся в даль
У байдужу холодну блакить океану.
Україно моя - невгамовна печаль,
Мого серця відкрита пульсуюча рана.

Приспів:
Куди оком не кинь, все чужі береги,
Благодатна земля, що сягає довкола,
Не жаліє для мене тепла і снаги,
Але рідною стати не зможе ніколи.

Я єдину тебе ніжно матір''ю зву,
Бо кривити душею не хочу й не вмію.
У далекій чужині тобою живу,
Переймаюсь тобою, тобою хворію.
Ця хвороба - тяжка незбагнена любов,
Що нуждою і потом, і цвітом калина,
З молоком материнським ввійшла в мою кров,
В цілім світі від неї немає вакцини.

Приспів.

Не лякає мене ні буран, ні гроза
І всім бідам на зло я в обличчя сміюся.
Тільки знов, коли сонце вечірнє згаса,
У зажурі на обрій далекий дивлюся.

Приспів.

Не жаліє для мене тепла і снаги,
Але рідною стати не зможе ніколи...');
DELETE FROM song_links WHERE song_id = 'pisniua_2130717';
DELETE FROM song_versions WHERE song_id = 'pisniua_2130717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2130717';
DELETE FROM songs WHERE id = 'pisniua_2130717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2130717','Колискова','Музика: народна Слова: народ','uk','ukraine_before_1917',NULL,NULL,'Колискова моєї мами',NULL,'Люлі-люлі-люлі,
Всі дітки поснули,
Тільки моя доня
Не спить не дрімає,
Очками моргає,
З котком розмовляє.
Аа, аа, а.

Люлі-люлі-баю,
Я котка налаю,
Щоб до нас не ходив,
Щоб донечку не будив.
Аа, аа, а.

Коте, коте, котку,
Не лізь на колодку,
Бо поб''єш головку,
Та буде боліти,
Нікому жаліти.
Аа, аа, а.

Коте волохатий,
Не ходи по хаті,
Не буди дитяти,
Бо дитятко буде спать ,
А ти будеш заважать.
Аа, аа, а.

Ой, ти коте-котина,
Засни мала дитина.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2130717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2130717','Колискова','Люлі-люлі-люлі,
Всі дітки поснули,
Тільки моя доня
Не спить не дрімає,
Очками моргає,
З котком розмовляє.
Аа, аа, а.

Люлі-люлі-баю,
Я котка налаю,
Щоб до нас не ходив,
Щоб донечку не будив.
Аа, аа, а.

Коте, коте, котку,
Не лізь на колодку,
Бо поб''єш головку,
Та буде боліти,
Нікому жаліти.
Аа, аа, а.

Коте волохатий,
Не ходи по хаті,
Не буди дитяти,
Бо дитятко буде спать ,
А ти будеш заважать.
Аа, аа, а.

Ой, ти коте-котина,
Засни мала дитина.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2130717_l1','pisniua_2130717','YouTube','https://www.youtube.com/watch?v=ZiMXESB1zL4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2130596';
DELETE FROM song_versions WHERE song_id = 'pisniua_2130596';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2130596';
DELETE FROM songs WHERE id = 'pisniua_2130596';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2130596','Ще НВУ (Ще не вмерла Україна)','Музика: Т.І.К. (Тік) Слова: Т.І.К. (Тік). Виконує: Т.І.К. (Тік)','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ми будували комунізм, але в нас не вийшло,
Вмерли коні - залишилося червоне дишло.
Бабу будували з величезним мечом,
А прожектор перестройки хтось побив кирпичом.

Приспів:
Ми звикли, шо Дніпро ревучий реве,
А ненька Україна ще не вмерла, і не вмре.
Ми нанюхались свободи і чорнобильського диму,
Хором радісно співаєм "Ще не вмерла Україна!"

Нам казали: "вперьод, два шага назад",
І ми загнали себе у величезний зад,
Напилися пепсі, напилися коли,
Ми такої свободи ще не знали ніколи.

Приспів.

Хтось плакав про свою втрачену гордість,
А вночі ховав, закопував совість,
Нас завела внікуда державна колія,
Ми помрем - вони напишуть "нас єднає земля!"

Просто звикли, шо Дніпро ревучий реве,
А ненька Україна ще не вмерла, і не вмре.
Ми нанюхались свободи і чорнобильського диму,
Хором радісно співаєм "Ще не вмерла Україна!"','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2130596'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2130596','Ще НВУ (Ще не вмерла Україна)','Ми будували комунізм, але в нас не вийшло,
Вмерли коні - залишилося червоне дишло.
Бабу будували з величезним мечом,
А прожектор перестройки хтось побив кирпичом.

Приспів:
Ми звикли, шо Дніпро ревучий реве,
А ненька Україна ще не вмерла, і не вмре.
Ми нанюхались свободи і чорнобильського диму,
Хором радісно співаєм "Ще не вмерла Україна!"

Нам казали: "вперьод, два шага назад",
І ми загнали себе у величезний зад,
Напилися пепсі, напилися коли,
Ми такої свободи ще не знали ніколи.

Приспів.

Хтось плакав про свою втрачену гордість,
А вночі ховав, закопував совість,
Нас завела внікуда державна колія,
Ми помрем - вони напишуть "нас єднає земля!"

Просто звикли, шо Дніпро ревучий реве,
А ненька Україна ще не вмерла, і не вмре.
Ми нанюхались свободи і чорнобильського диму,
Хором радісно співаєм "Ще не вмерла Україна!"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2130596_l1','pisniua_2130596','YouTube','https://www.youtube.com/watch?v=q0B31bLef6M','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2130420';
DELETE FROM song_versions WHERE song_id = 'pisniua_2130420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2130420';
DELETE FROM songs WHERE id = 'pisniua_2130420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2130420','Святкова','Музика: Олександр Смик Слова: Олександр Смик. Виконує: Олександр Смик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Справжнє свято, справжнє свято,
Наша мама пахне татом,
Навіть кава із горнятка
Надзвичайно запашна.
Коли в домі всі сміються, |
Як танцює чорний бусол,   |
У віконній акварелі       |
Відступає чужина.         | (2)

Слід за кожним комином живуть птахи крилаті,
Їх, як ту надію, не розганяє дим.
Об''їздивши Європи, вернеться в хату тато
І, певно, що на весну ми добудуєм дім.
Об''їздивши Європи, вернеться в хату тато
І, певно, що на весну ми добудуєм дім.

Приспів.

В селі зима предовга, весна скороминуща,
І мама забрунявіє, як завжди, по весні.
Тепер я свого татка в Європи не відпущу,
Хай вдома добудовує лелечий дім мені.
Тепер я свого татка в Європи не відпущу,
Хай вдома добудовує лелечий дім мені.

Приспів.','[''pisni.org.ua'', ''cat:43'', ''cat:emigration'', ''Еміґрантські пісні'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2130420'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2130420','Святкова','Приспів:
Справжнє свято, справжнє свято,
Наша мама пахне татом,
Навіть кава із горнятка
Надзвичайно запашна.
Коли в домі всі сміються, |
Як танцює чорний бусол,   |
У віконній акварелі       |
Відступає чужина.         | (2)

Слід за кожним комином живуть птахи крилаті,
Їх, як ту надію, не розганяє дим.
Об''їздивши Європи, вернеться в хату тато
І, певно, що на весну ми добудуєм дім.
Об''їздивши Європи, вернеться в хату тато
І, певно, що на весну ми добудуєм дім.

Приспів.

В селі зима предовга, весна скороминуща,
І мама забрунявіє, як завжди, по весні.
Тепер я свого татка в Європи не відпущу,
Хай вдома добудовує лелечий дім мені.
Тепер я свого татка в Європи не відпущу,
Хай вдома добудовує лелечий дім мені.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2130369';
DELETE FROM song_versions WHERE song_id = 'pisniua_2130369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2130369';
DELETE FROM songs WHERE id = 'pisniua_2130369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2130369','Моїй коханій Україні','Музика: І. Вовчак Слова: Н. Бай. Виконує: І. Вовчак','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Моя кохана, Україно,
Мені являєшся вві сні,
Шепочеш ніжно тополино
У цій далекій стороні.

Приспів:
За тебе щиро помолюся
І заридаю крадькома,
Усім привітно усміхнуся,
Хоч в серці радості нема.

Ніщо мене отут не тішить,
Чужа земля, чужі зірки.
Не гріє сонце, тільки світить,
Розпалює сумні думки.

Приспів.

Та вже не довго.. Я полину
На рідну славну Україну,
Де наймиліший наш Дніпро,
Там жити й вмерти - все одно.

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2130369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2130369','Моїй коханій Україні','Моя кохана, Україно,
Мені являєшся вві сні,
Шепочеш ніжно тополино
У цій далекій стороні.

Приспів:
За тебе щиро помолюся
І заридаю крадькома,
Усім привітно усміхнуся,
Хоч в серці радості нема.

Ніщо мене отут не тішить,
Чужа земля, чужі зірки.
Не гріє сонце, тільки світить,
Розпалює сумні думки.

Приспів.

Та вже не довго.. Я полину
На рідну славну Україну,
Де наймиліший наш Дніпро,
Там жити й вмерти - все одно.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_213369';
DELETE FROM song_versions WHERE song_id = 'pisniua_213369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_213369';
DELETE FROM songs WHERE id = 'pisniua_213369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_213369','Ішов відважний гайовий','Слова: Богдан Лепкий. Виконує: Петро Довгошия','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ішов відважний гайовий,      |
D7         G              | (2р)
До лісу  темного,            |
D
Назустріч му дівчинонька,    |
Як тая ясна зіронька,        |
G          C     G       | (2р)
Він взяв її за рученьку,     |
До лісу проводив.            |
Назустріч їм сарна біжить,   |
Стежкою попід ліс,           | (2р)
Він вимірив, він вицілив,    |
В саме серце їй вистрілив,   |
Ох темна ніч майовая,        |
Як він її убив.              | (2р)
Пішов відважний гайовий,     |
Дивитись, що він вбив,       | (2р)
Його мила в крові лежить,    |
Останні слова говорить:      |
"Ой милий мій, щось наробив, |
Що я вмирать мушу".          | (2р)
Набив відважний гайовий,     |
Рушницю другий раз,          | (2р)
Він вимірив, він вицілив,    |
В саме серце собі встрілив,  |
Ох темна ніч майовая,        |
Як він себе убив.            | (2р)
Лиш соловейко в вишині,      |
Тихенько щебетав,            | (2р)
Він бачив все і не сказав,   |
Як милий з милою прощавсь,   |
Ох темна ніч майовая,        |
Як він з нею прощавсь.       | (2р)','[''pisni.org.ua'', ''cat:dances'', ''cat:waltzes'', ''Пісні до танцю'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_213369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_213369','Ішов відважний гайовий','Ішов відважний гайовий,      |
D7         G              | (2р)
До лісу  темного,            |
D
Назустріч му дівчинонька,    |
Як тая ясна зіронька,        |
G          C     G       | (2р)
Він взяв її за рученьку,     |
До лісу проводив.            |
Назустріч їм сарна біжить,   |
Стежкою попід ліс,           | (2р)
Він вимірив, він вицілив,    |
В саме серце їй вистрілив,   |
Ох темна ніч майовая,        |
Як він її убив.              | (2р)
Пішов відважний гайовий,     |
Дивитись, що він вбив,       | (2р)
Його мила в крові лежить,    |
Останні слова говорить:      |
"Ой милий мій, щось наробив, |
Що я вмирать мушу".          | (2р)
Набив відважний гайовий,     |
Рушницю другий раз,          | (2р)
Він вимірив, він вицілив,    |
В саме серце собі встрілив,  |
Ох темна ніч майовая,        |
Як він себе убив.            | (2р)
Лиш соловейко в вишині,      |
Тихенько щебетав,            | (2р)
Він бачив все і не сказав,   |
Як милий з милою прощавсь,   |
Ох темна ніч майовая,        |
Як він з нею прощавсь.       | (2р)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213369_l1','pisniua_213369','YouTube','https://www.youtube.com/watch?v=igpXeeYB5Lo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213369_l2','pisniua_213369','YouTube','https://www.youtube.com/watch?v=DEsSUEGJRpQ','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2130293';
DELETE FROM song_versions WHERE song_id = 'pisniua_2130293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2130293';
DELETE FROM songs WHERE id = 'pisniua_2130293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2130293','Пані осінь','Музика: Мар''ян Гаденко. Виконує: Мар''ян Гаденко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ви ніколи не станете ні моєю дружиною, ані коханою.
І в думках я не часто по імені зможу назвать.
Ви залишитись тільки незбагненною гордою панною,
Пані осінь - уста уві сні шепотять.

Ви не маєте й тіні кокетства, чи юної заздрості,  |
Й не міняючи вас журавлями курличуть літа,        |
А в глибинах очей стільки смутку й тихої радості. |
Осінь злою буває, у вас же вона золота.           | (2)

Ваші діти давно називають вас "мамою",
І докучливою стукає в ваше вікно суєта,
І накладено грим непростою душевною драмою,
А під ним поцілунку чекають заснулі уста.
Ви ідете, а осінь встеляє вам килимом листя       |
І коралі намиста дарує калина сумна,              |
Мов кохання, юначе, прекрасне і чисте             |
Йде життям пані осінь, чи може то пані весна...   | (2)','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:romansy'', ''Пісні з ностальгічними мотивами'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2130293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2130293','Пані осінь','Ви ніколи не станете ні моєю дружиною, ані коханою.
І в думках я не часто по імені зможу назвать.
Ви залишитись тільки незбагненною гордою панною,
Пані осінь - уста уві сні шепотять.

Ви не маєте й тіні кокетства, чи юної заздрості,  |
Й не міняючи вас журавлями курличуть літа,        |
А в глибинах очей стільки смутку й тихої радості. |
Осінь злою буває, у вас же вона золота.           | (2)

Ваші діти давно називають вас "мамою",
І докучливою стукає в ваше вікно суєта,
І накладено грим непростою душевною драмою,
А під ним поцілунку чекають заснулі уста.
Ви ідете, а осінь встеляє вам килимом листя       |
І коралі намиста дарує калина сумна,              |
Мов кохання, юначе, прекрасне і чисте             |
Йде життям пані осінь, чи може то пані весна...   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2131756';
DELETE FROM song_versions WHERE song_id = 'pisniua_2131756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2131756';
DELETE FROM songs WHERE id = 'pisniua_2131756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2131756','Попелюшка','Музика: Ліля Кобільник Слова: Марія Матіос. Виконує: Ліля Кобільник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я з поїзда, як з розуму зійду,
І зійде в небеса зорі корона,
Стече з лиця сльоза моя солона
Впаде як лист у пізню саду.

А була ж я королівна, Богу рівна, Богу вірна,
Невибаглива і вірна королева, королівна.
А тепер я ним забута, в ланцюги плачу закута.
У печальнім капелюшку попелюшка, попелюшка,
Попелюшка, попелюшка.

Подивишся на мене з-під руки,
Захочеш знову взять мене на руки
Із чорних вод великої розлуки,
Із вічних вод невічної ріки.

Бо ж була я королівна, Богу рівна, Богу вірна,
Невибаглива і вірна королева, королівна.
А тепер я ним забута, в ланцюги плачу закута.
У печальнім капелюшку попелюшка, попелюшка,
Попелюшка, попелюшка.
У печальнім капелюшку попелюшка, попелюшка.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2131756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2131756','Попелюшка','Я з поїзда, як з розуму зійду,
І зійде в небеса зорі корона,
Стече з лиця сльоза моя солона
Впаде як лист у пізню саду.

А була ж я королівна, Богу рівна, Богу вірна,
Невибаглива і вірна королева, королівна.
А тепер я ним забута, в ланцюги плачу закута.
У печальнім капелюшку попелюшка, попелюшка,
Попелюшка, попелюшка.

Подивишся на мене з-під руки,
Захочеш знову взять мене на руки
Із чорних вод великої розлуки,
Із вічних вод невічної ріки.

Бо ж була я королівна, Богу рівна, Богу вірна,
Невибаглива і вірна королева, королівна.
А тепер я ним забута, в ланцюги плачу закута.
У печальнім капелюшку попелюшка, попелюшка,
Попелюшка, попелюшка.
У печальнім капелюшку попелюшка, попелюшка.');
DELETE FROM song_links WHERE song_id = 'pisniua_2131869';
DELETE FROM song_versions WHERE song_id = 'pisniua_2131869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2131869';
DELETE FROM songs WHERE id = 'pisniua_2131869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2131869','Так рано ще','Музика: Ліля Кобільник Слова: Марія Матіос. Виконує: Ліля Кобільник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Так рано ще і ще моя рука
З твоїм волоссям не була у змові,
Ще тіні сплять на нашім рушникові
І тінь смереки у вікні легка.

Так рано ще і ще розлука спить,
Немов перед гріхом прекрасна мавра,
Так нам, доле, ранок пережить,
Коли іще слова і сльози марні.

Так рано ще і ще розлука спить...
Так рано ще і ще розлука спить...
Так рано ще і ще розлука спить...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2131869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2131869','Так рано ще','Так рано ще і ще моя рука
З твоїм волоссям не була у змові,
Ще тіні сплять на нашім рушникові
І тінь смереки у вікні легка.

Так рано ще і ще розлука спить,
Немов перед гріхом прекрасна мавра,
Так нам, доле, ранок пережить,
Коли іще слова і сльози марні.

Так рано ще і ще розлука спить...
Так рано ще і ще розлука спить...
Так рано ще і ще розлука спить...');
DELETE FROM song_links WHERE song_id = 'pisniua_2131716';
DELETE FROM song_versions WHERE song_id = 'pisniua_2131716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2131716';
DELETE FROM songs WHERE id = 'pisniua_2131716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2131716','Журавлі','Музика: Ліля Кобільник Слова: Ліна Костенко. Виконує: Ліля Кобільник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ті журавлі, і їх прощальні сурми...
Тих відлітань сюїта голуба...
Натягне дощ свої осінні струни,    |
Торкне ті струни пальчиком верба.  | (2)

Сумна арфістко, - рученьки вербові! -
Тих відлітань сюїта голуба...
Зіграй мені мелодію любові,        |
Ту, без котрої холодно словам.     | (2)

Ту, без котрої холодно словам...

Зіграй мені осінній плач калини.
Зіграй усе, що я тебе прошу.
Я не скрипковий ключ, а журавлиний |
Тобі над полем в небі напишу.      | (2)

Тобі над полем в небі напишу...    | (2)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2131716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2131716','Журавлі','Ті журавлі, і їх прощальні сурми...
Тих відлітань сюїта голуба...
Натягне дощ свої осінні струни,    |
Торкне ті струни пальчиком верба.  | (2)

Сумна арфістко, - рученьки вербові! -
Тих відлітань сюїта голуба...
Зіграй мені мелодію любові,        |
Ту, без котрої холодно словам.     | (2)

Ту, без котрої холодно словам...

Зіграй мені осінній плач калини.
Зіграй усе, що я тебе прошу.
Я не скрипковий ключ, а журавлиний |
Тобі над полем в небі напишу.      | (2)

Тобі над полем в небі напишу...    | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_213251';
DELETE FROM song_versions WHERE song_id = 'pisniua_213251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_213251';
DELETE FROM songs WHERE id = 'pisniua_213251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_213251','А в Нашого Дядька да в Його Дому Святий Вечір','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Службоньку служив Слізоньку вронив. Підперся Мечем під праве плече. Св. Микола символом Прадіда й Місяця. Оба Свята, — св. Михайла і св. Миколи, — вдаряють Місячною символікою. Постать св. Николая (Николи, Миколи) — це образ, схожий до св. Михайла, прикрашений мистецько складеною Місячною символікою. Ось приклад Колядки, — Славен єс Боже по всему Сьвіту, — де співають, як Господь посилає послугу свою, св. Петра, встріть Николу, котрого кличе в гостину до Ґазди, де вже сам гостює з св. Петром. Меч в одній руці у св. Николи — це Новий Місяць, Кубок у другій — це Повня Місяця; Теплий Вітрик, Дрібний Дощик — це атрибути Весняного Місяця, його добродійна Астральна еманація. Малу-ж годинку перегодивши Тай уже иде Сьвйитий Никола Никола идет тай Весну ведет Йа Весну ведет а Зимку женет Так Весну ведет Крутим Колачем А Зимку женет Ясненьким Мечем Ясненьким Мечем Теплим Вітриком Теплим Вітриком Дрибним Дожджиком А на Николї Сьвйита Коруна А в ручках йиму Золотий Кубок Але в цій Колядці можуть бути поєднані Астральні порухи. Меч, себто Новий Місяць, його доповненням є символ Повні Місяця — Кубок; Свята Коруна — це Сонце, а Дрібний Дощик є символом Господа і в деяких Українських мітологічних образцях символ Зорі. Це відповідає одному з найкрасших мітологічних Колядкових образців, Трійці: Місяць, Сонце і Дощик — сам Милий Господь Бог. Теплий Вітрик можна б також уважати за символ Господа. Пригадується біблійна аналогія: Тихий Вітрець як символ Господа. Сам св. Никола — це символ Прадіда і послідовно: уособлення Місяця. В світовій мітології Прадід є символом Місяця або Сонця. Наше дослідження виказує, що в Коляді і Щедрім Вечері дуже наголошується шанування Прадіда й Місяця. Св. Микола і містична Купіль Господа. Подібна з повищою інша Колядка: А в Нашого Дядька да в Його Дому. А в Нашого Дядька да в Його Дому А в Нашего Дядька да в Його Дому Святий Вечер! В Кінець Стола там стояв Микола Підперся Мечем під праве плече А в лівій руці Кубочок держав А з того Кубочка Сльоза капнула А з тії Сльози Дунай розлився А в тім Дунаю Христос купався Христос купався на муку здався!... Таємна Сльоза з Кубка, з якого Дунай розлився, а в нім Христос купався, — це рівновартність Дощику з Неба. Цей дуже популярний Колядковий мотив буде окремо обговорено. Сльози і Купіль Господа. Плач Сокола. Службоньку служив Слізоньку вронив: А в Горі в Горі в Глибокім Зворі А в Нашого Дядька да в Його Дому У Пана Івана да за Його Сталом Листки з приводу цієї Пісні: Передріздвяний Святочний час: Упереджуючі знаки, Михайла 21.11. Українське Свято Воведення 4.12 - Передріздвяний Святочний час. Еротичні містерії, Катерини 7.12 — Передріздвяний Святочний час. Св. Микола 19.12 – Народний речник перед Богом і Прадід. Бог, Різдво Світа, Прадід і Лицарі. Прабатько – Вчитель, Лицар і Вірник Божий. Сльози і Купіль Господа. Плач Сокола. Службоньку служив Слізоньку вронив. Свята, Тайна, Вечеря 6.01 - Містичний час Різдва Світа. Стежки до листків про Українські традиції. Рокове Коло.','А в Нашого Дядька да в Його Дому
Приспів: Святий Вечір !

В кінець Стола там стояв Микола
Підперся Мечем під праве плече
А в лївій ручцї Кубочок  держав
А з того Кубочка Сльоза капнула
А з тії Сльози Дунай розлився
А в тім Дунаю Христос купався
Христос купався на Муку здався

А Божая Мати по Берегу ходила
По Берегу ходила, Сина свого питала
Ой Сину Божий, де ж ти бував
На Святу Кутю де ж ти вечеряв
На Святе Різдво де ж ти обідав
Ой вечеряв я да в Пана Дядька
Там я обідав - його одвідав

Бувай же здоров да Пане Дядьку
Не сам з собою з своєю Женою
Із Милим Богом з хорошим родом

Збірка Бодянського.
Відміна із Золотоноші в збірці Бодянського починається так:

Сидить Микола ув кінець Стола
На Стіл схилив ся Слїзоньками обмив ся
А з тії Слізочки розішлись Річечки
А з тих Річечок став Тихий Дунайок
А в тім Дунаї Христос купав ся
Христос купав ся на Муку здав ся
і т. д. ...','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_213251'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_213251','А в Нашого Дядька да в Його Дому Святий Вечір','А в Нашого Дядька да в Його Дому
Приспів: Святий Вечір !

В кінець Стола там стояв Микола
Підперся Мечем під праве плече
А в лївій ручцї Кубочок  держав
А з того Кубочка Сльоза капнула
А з тії Сльози Дунай розлився
А в тім Дунаю Христос купався
Христос купався на Муку здався

А Божая Мати по Берегу ходила
По Берегу ходила, Сина свого питала
Ой Сину Божий, де ж ти бував
На Святу Кутю де ж ти вечеряв
На Святе Різдво де ж ти обідав
Ой вечеряв я да в Пана Дядька
Там я обідав - його одвідав

Бувай же здоров да Пане Дядьку
Не сам з собою з своєю Женою
Із Милим Богом з хорошим родом

Збірка Бодянського.
Відміна із Золотоноші в збірці Бодянського починається так:

Сидить Микола ув кінець Стола
На Стіл схилив ся Слїзоньками обмив ся
А з тії Слізочки розішлись Річечки
А з тих Річечок став Тихий Дунайок
А в тім Дунаї Христос купав ся
Христос купав ся на Муку здав ся
і т. д. ...');
DELETE FROM song_links WHERE song_id = 'pisniua_2131777';
DELETE FROM song_versions WHERE song_id = 'pisniua_2131777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2131777';
DELETE FROM songs WHERE id = 'pisniua_2131777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2131777','Дощ','Музика: Ліля Кобільник Слова: Л. Лазурко. Виконує: Ліля Кобільник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Дощові неземні дощопади,
Затопили сумні листопади,
Оголили тонкі пальці саду
Дощові неземні дощопади.

Паде дощ, пада дощ, пада,
Сльози прощ чорноту саду,
Сором площ скриє дощ радо
І відплаче чиюсь зраду.

Паде дощ, пада дощ, пада,
Паде, паде, паде, паде дощ,
Осіннє паде-де-де.
Іде, іде, іде дощопад,
Останнє паде-де-де.

Веде, веде, веде листопад
Прощальне паде-де-де.
Паде, паде, паде падолист
Печальне паде-де-де.

Пада лист, жовтий лист паде,
Осінь спокій у нас вкраде,
У полоні сумних листопадів
Вже не вимолити пощади.
Пада лист, жовтий лист паде.

Паде, паде, паде, паде дощ,
Осіннє паде-де-де.
Іде, іде, іде дощопад,
Останнє паде-де-де.

Веде, веде, веде листопад
Прощальне паде-де-де.
Паде, паде, паде падолист
Печальне паде-де-де,
Прощальне паде-де-де.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2131777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2131777','Дощ','Дощові неземні дощопади,
Затопили сумні листопади,
Оголили тонкі пальці саду
Дощові неземні дощопади.

Паде дощ, пада дощ, пада,
Сльози прощ чорноту саду,
Сором площ скриє дощ радо
І відплаче чиюсь зраду.

Паде дощ, пада дощ, пада,
Паде, паде, паде, паде дощ,
Осіннє паде-де-де.
Іде, іде, іде дощопад,
Останнє паде-де-де.

Веде, веде, веде листопад
Прощальне паде-де-де.
Паде, паде, паде падолист
Печальне паде-де-де.

Пада лист, жовтий лист паде,
Осінь спокій у нас вкраде,
У полоні сумних листопадів
Вже не вимолити пощади.
Пада лист, жовтий лист паде.

Паде, паде, паде, паде дощ,
Осіннє паде-де-де.
Іде, іде, іде дощопад,
Останнє паде-де-де.

Веде, веде, веде листопад
Прощальне паде-де-де.
Паде, паде, паде падолист
Печальне паде-де-де,
Прощальне паде-де-де.');
DELETE FROM song_links WHERE song_id = 'pisniua_2132012';
DELETE FROM song_versions WHERE song_id = 'pisniua_2132012';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2132012';
DELETE FROM songs WHERE id = 'pisniua_2132012';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2132012','Зоряний ноктюрн № З','Музика: Ігор Жук Слова: Ігор Жук. Виконує: Ігор Жук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Цієї ночі небеса такі прозорі -
Господь їх звечора ще хмаркою протер,
Щоб нам обом одні і ті ж світили зорі,        |
Іще вологі після дощику в четвер.             | (2)

Поволі гаснуть ліхтарі вечірніх вулиць;
То вже наш час - чи відчуваєш ти, чи ні,
Як наші погляди легенько доторкнулись         |
Один до одного у темній глибині?..            | (2)

Такі натомлені шаленою добою,
Такі туманності між зоряних прикрас,
Вони напевне щось там шепчуть між собою,      |
Вже незалежні і від неба, і від нас.          | (2)

Прийдуть удосвіта навшпиньки, обережно,
Щоби й не скрипнула найменша із дощок... -
А нам присниться щось високе, щось безмежне - |
І знов, прокинувшись, не знатимемо, що...     | (2)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2132012'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2132012','Зоряний ноктюрн № З','Цієї ночі небеса такі прозорі -
Господь їх звечора ще хмаркою протер,
Щоб нам обом одні і ті ж світили зорі,        |
Іще вологі після дощику в четвер.             | (2)

Поволі гаснуть ліхтарі вечірніх вулиць;
То вже наш час - чи відчуваєш ти, чи ні,
Як наші погляди легенько доторкнулись         |
Один до одного у темній глибині?..            | (2)

Такі натомлені шаленою добою,
Такі туманності між зоряних прикрас,
Вони напевне щось там шепчуть між собою,      |
Вже незалежні і від неба, і від нас.          | (2)

Прийдуть удосвіта навшпиньки, обережно,
Щоби й не скрипнула найменша із дощок... -
А нам присниться щось високе, щось безмежне - |
І знов, прокинувшись, не знатимемо, що...     | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2131616';
DELETE FROM song_versions WHERE song_id = 'pisniua_2131616';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2131616';
DELETE FROM songs WHERE id = 'pisniua_2131616';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2131616','Козацькому роду нема переводу','Українська народна пісня. Виконує: Лайош Молнар','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, у полі широкому зелена травиця,
Там копали козаченьки глибоку криницю.

Ой, копали, викопали, летіли до бою
Та й змішали кров гарячу з чистою водою.

Рано-вранці дівчинонька, хороша на вроду,
Із козацької криниці набирала воду.

Напийсь, напийсь водиченьки, молода дівчина,
Вроди, вроди, чорнобрива, козацького сина.

Хай п''є земля вкраїнськая із криниці воду,
Хай не буде переводу козацькому роду!
Хай не буде переводу козацькому роду!','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2131616'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2131616','Козацькому роду нема переводу','Ой, у полі широкому зелена травиця,
Там копали козаченьки глибоку криницю.

Ой, копали, викопали, летіли до бою
Та й змішали кров гарячу з чистою водою.

Рано-вранці дівчинонька, хороша на вроду,
Із козацької криниці набирала воду.

Напийсь, напийсь водиченьки, молода дівчина,
Вроди, вроди, чорнобрива, козацького сина.

Хай п''є земля вкраїнськая із криниці воду,
Хай не буде переводу козацькому роду!
Хай не буде переводу козацькому роду!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2131616_l1','pisniua_2131616','YouTube','https://www.youtube.com/watch?v=B1dkReTka7k','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2131798';
DELETE FROM song_versions WHERE song_id = 'pisniua_2131798';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2131798';
DELETE FROM songs WHERE id = 'pisniua_2131798';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2131798','Липнева ностальгія','Музика: Ліля Кобільник Слова: Л. Лазурко. Виконує: Ліля Кобільник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мій дивний сон, мій давній сум -
Липнева ностальгія.
Твій теплий спомин, твій ноктюрн -
Лілея і лілія.

Ой, леле, леле, лілія,
Ой, лелі-лелі-лілея.
Ти говорив: "Любов моя,
Кохаю лиш тебе я!"

Мій лебединий легкий лід,
Одвічні біль і мрія,
Твої цілунки - сонця квіт,
Лілея і лілія.
Ласкавий спів напомнить їм,
Огорнить і зігріє,
Липневий дім, а в домі тім -
Лілея і лілія.

За домом ніч посіє сміх
І плач, в нім листя мліє.
Тебе беріг твій оберіг -
Лілея і лілія.
Ніч дивних снів, ніч давніх дум,
За липами біліє,
Твій теплий спомин, твій ноктюрн -
Лілея і лілія.

Ой, леле, леле, лілія,
Ой, лелі-лелі-лілея.
Скажу тобі: "Любов моя,
Кохаю лиш тебе я!"','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2131798'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2131798','Липнева ностальгія','Мій дивний сон, мій давній сум -
Липнева ностальгія.
Твій теплий спомин, твій ноктюрн -
Лілея і лілія.

Ой, леле, леле, лілія,
Ой, лелі-лелі-лілея.
Ти говорив: "Любов моя,
Кохаю лиш тебе я!"

Мій лебединий легкий лід,
Одвічні біль і мрія,
Твої цілунки - сонця квіт,
Лілея і лілія.
Ласкавий спів напомнить їм,
Огорнить і зігріє,
Липневий дім, а в домі тім -
Лілея і лілія.

За домом ніч посіє сміх
І плач, в нім листя мліє.
Тебе беріг твій оберіг -
Лілея і лілія.
Ніч дивних снів, ніч давніх дум,
За липами біліє,
Твій теплий спомин, твій ноктюрн -
Лілея і лілія.

Ой, леле, леле, лілія,
Ой, лелі-лелі-лілея.
Скажу тобі: "Любов моя,
Кохаю лиш тебе я!"');
DELETE FROM song_links WHERE song_id = 'pisniua_2132379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2132379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2132379';
DELETE FROM songs WHERE id = 'pisniua_2132379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2132379','Вечір випускний','Музика: Олександр Довгопол Слова: Олеся Любошенко. Виконує: Дивниця','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Фотографій глянцева повість
про дитинство, школу і час
починались дні веселкові
вирушали ми в перший клас

у зіницях милі смішинки
у портфелях перші скарби
фантастичні гумки й точилки,
ручки й палички для лічби.

Приспів
Блукає вечір випускний
в травах запашних
сходами шкільних поверхів.
Більше не шукай у гнізді птахів
в небо проводжай дітлахів

З року в рік ставали коротші
Дні до вирію журавлів
і були за все найдорожчі
теплі усмішки вчителів

Непомітно ми стали стрункіші
мов топольки і явори.
І вже юність повісті пише
на світлинах нової пори','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:shkilni'', ''Пісні з ностальгічними мотивами'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2132379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2132379','Вечір випускний','Фотографій глянцева повість
про дитинство, школу і час
починались дні веселкові
вирушали ми в перший клас

у зіницях милі смішинки
у портфелях перші скарби
фантастичні гумки й точилки,
ручки й палички для лічби.

Приспів
Блукає вечір випускний
в травах запашних
сходами шкільних поверхів.
Більше не шукай у гнізді птахів
в небо проводжай дітлахів

З року в рік ставали коротші
Дні до вирію журавлів
і були за все найдорожчі
теплі усмішки вчителів

Непомітно ми стали стрункіші
мов топольки і явори.
І вже юність повісті пише
на світлинах нової пори');
DELETE FROM song_links WHERE song_id = 'pisniua_2132165';
DELETE FROM song_versions WHERE song_id = 'pisniua_2132165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2132165';
DELETE FROM songs WHERE id = 'pisniua_2132165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2132165','Українська пісня','Музика: І. Шварц Слова: Булат Окуджава. Виконує: Ігор Жук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Картоплину у теплий город навесні закопаю,
Заодно кулемета змащу і нагострю шаблі,
І за чаркою мовчки Степана Бандеру згадаю -
А інакше нащо б я і жив у своєму селі.

Як стемніє, збирайтеся, хлопці, у мене в стодолі,
Говоріть - але тихо, бо ходять і тут москалі! -
Поміркуємо разом, чи довга дорога до волі -
А інакше нащо б нам і жити у ріднім селі.

В однострої УПА заспіває нам вуйко Гаврило
Про червону калину і чорну роботу в ріллі,
І Господь нам додасть трохи розуму, честі і сили -
А інакше нащо нам і жити у ріднім селі.

І коли кукурікне когут про часи перемоги,
І тризуб заблищить у Гаврила на гордім чолі -
В нас повірять і кури, і коні, й воли круторогі -
А інакше нащо нам і жити на нашій землі!

І корови, і гуси, і свині, й воли круторогі -
А інакше нащо нам і жити на нашій землі!','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2132165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2132165','Українська пісня','Картоплину у теплий город навесні закопаю,
Заодно кулемета змащу і нагострю шаблі,
І за чаркою мовчки Степана Бандеру згадаю -
А інакше нащо б я і жив у своєму селі.

Як стемніє, збирайтеся, хлопці, у мене в стодолі,
Говоріть - але тихо, бо ходять і тут москалі! -
Поміркуємо разом, чи довга дорога до волі -
А інакше нащо б нам і жити у ріднім селі.

В однострої УПА заспіває нам вуйко Гаврило
Про червону калину і чорну роботу в ріллі,
І Господь нам додасть трохи розуму, честі і сили -
А інакше нащо нам і жити у ріднім селі.

І коли кукурікне когут про часи перемоги,
І тризуб заблищить у Гаврила на гордім чолі -
В нас повірять і кури, і коні, й воли круторогі -
А інакше нащо нам і жити на нашій землі!

І корови, і гуси, і свині, й воли круторогі -
А інакше нащо нам і жити на нашій землі!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2132165_l1','pisniua_2132165','YouTube','https://www.youtube.com/watch?v=2xle0VOOyM8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_213216';
DELETE FROM song_versions WHERE song_id = 'pisniua_213216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_213216';
DELETE FROM songs WHERE id = 'pisniua_213216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_213216','Нема в світі','Музика: Михайло Гайворонський Слова: Юрій Назарак','uk','ukr_ssr_1919_1991',NULL,'1990','1. "Молоде життя", Ауґсбурґ, 1949 2. Повік не зів''яне. Стрілецькі пісні Михайла Гайворонського. Упор. В. Подуфалий. Тернопіль, 1990.',NULL,'Нема в світі кращих хлопців
Над Січових добровольців,
Гей, гей, над Січових добровольців.
Як ідуть в бій, то співають
І зі співом умирають -
Гей, гей, наші славні добровольці!

Йдуть на приступ гострим крісом
Поборотись навіть з бісом.
Хоч їм кулі в очі свищуть,
Рій ворожий вістрям нищуть,
Гей, гей, рій ворожий вістрям нищуть!

Нема в світі кращих хлопців
Най січових добровольців.
Добровольці додре знають,
За що б''ються і вмирають,
Гей, гей, наші славні добровольці!','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_213216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_213216','Нема в світі','Нема в світі кращих хлопців
Над Січових добровольців,
Гей, гей, над Січових добровольців.
Як ідуть в бій, то співають
І зі співом умирають -
Гей, гей, наші славні добровольці!

Йдуть на приступ гострим крісом
Поборотись навіть з бісом.
Хоч їм кулі в очі свищуть,
Рій ворожий вістрям нищуть,
Гей, гей, рій ворожий вістрям нищуть!

Нема в світі кращих хлопців
Най січових добровольців.
Добровольці додре знають,
За що б''ються і вмирають,
Гей, гей, наші славні добровольці!');
DELETE FROM song_links WHERE song_id = 'pisniua_2133717';
DELETE FROM song_versions WHERE song_id = 'pisniua_2133717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2133717';
DELETE FROM songs WHERE id = 'pisniua_2133717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2133717','Пусти мене','Музика: Андрій Кузьменко Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Програш: Gm Bb Cm

За вікном плакав нудний дощ,
Всім розказував про свою біду,
Налий, налий, налий,
Налий нам двом,
Давайте вип''єм за тих,
Кого нема з нами зараз тут.

Боже, чи добре їм там?
Чи посміхались вони,
Коли до себе Ти їх брав?

Приспів:
Пусти мене
F
Хоч краєчком ока подивитись на них,
Пусти мене,
Я скажу два слова ті, що не встиг.
Пусти мене... Пусти мене...
Пусти!

Програш:Gm Bb Cm

Відповів мені мудрий Бог
Вічним небом і золотом зірок:
Ти не спіши, слухай, тільки не спіши,
Піднятися до мене встигнеш ти завжди.
Поки ти ще серед людей -
Навчися цінувати кожен новий день,

Приспів. (2)

Навчи людей любити цей світ
Та не тільки себе,
Навчи людей радіти завжди,
Коли сонце встає.
Навчи мене! Навчи мене!
Навчи!

Приспів. (3)

Велике щастя - зустрічати новий день!
Велике щастя - зустрічати новий день!
Велике щастя - зустрічати новий день!
Велике щастя - зустрічати новий день!','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2133717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2133717','Пусти мене','Програш: Gm Bb Cm

За вікном плакав нудний дощ,
Всім розказував про свою біду,
Налий, налий, налий,
Налий нам двом,
Давайте вип''єм за тих,
Кого нема з нами зараз тут.

Боже, чи добре їм там?
Чи посміхались вони,
Коли до себе Ти їх брав?

Приспів:
Пусти мене
F
Хоч краєчком ока подивитись на них,
Пусти мене,
Я скажу два слова ті, що не встиг.
Пусти мене... Пусти мене...
Пусти!

Програш:Gm Bb Cm

Відповів мені мудрий Бог
Вічним небом і золотом зірок:
Ти не спіши, слухай, тільки не спіши,
Піднятися до мене встигнеш ти завжди.
Поки ти ще серед людей -
Навчися цінувати кожен новий день,

Приспів. (2)

Навчи людей любити цей світ
Та не тільки себе,
Навчи людей радіти завжди,
Коли сонце встає.
Навчи мене! Навчи мене!
Навчи!

Приспів. (3)

Велике щастя - зустрічати новий день!
Велике щастя - зустрічати новий день!
Велике щастя - зустрічати новий день!
Велике щастя - зустрічати новий день!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2133717_l1','pisniua_2133717','YouTube','https://www.youtube.com/watch?v=Alla0rqvivw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2133717_l2','pisniua_2133717','YouTube','https://www.youtube.com/watch?v=ZF3sRyI3xnc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2133717_l3','pisniua_2133717','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_213414';
DELETE FROM song_versions WHERE song_id = 'pisniua_213414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_213414';
DELETE FROM songs WHERE id = 'pisniua_213414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_213414','Розпитаю про любов','Музика: Ігор Білозір Слова: Богдан Стельмах. Виконує: Ватра, Оксана Білозір','uk','ukraine_before_1917',NULL,NULL,'1. Стельмах Б. М. Світлиця пісень і спогадів.– Львів: Сполом, 2001 2. Аудіозапис пісні "Розпитаю про любов" у виконанні ВІА "Ватра"','Текст подано за джерелом 1. * Тут за джерелом 2: "Впали сніги в береги круто." Акорди (варіант 1) опублікував IhorKo. Акорди (варіант 2) додав bohdanko за джерелом 2.','Що за біда! - яра вода хвилю жене.
Я - молода, як вода яра!..
Хлопче, пильнуй, не прогайнуй гарну мене -
Може, якраз я тобі пара.
Приспів:
G
Розпитаю про любов,
Em
Прочитаю про любов,
Заспіваю про любов, про кохання!
G
Як за місяцем зоря,
Em
За тобою ходжу я,
Ой, любове ти моя рання.
Акорди (варіант 2):
Що за біда! - яра вода хвилю жене.
Я - молода, як вода яра!..
Хлопче, пильнуй, не прогайнуй гарну мене -
Може, якраз я тобі пара.
Приспів:
F
Розпитаю про любов,
Dm
Прочитаю про любов,
Заспіваю про любов, про кохання!
F
Як за місяцем зоря,
Dm
За тобою ходжу я,
Ой, любове ти моя рання.
Текст:
Що за біда! - яра вода хвилю жене.
Я - молода, як вода яра!..
Хлопче пильнуй, не прогайнуй гарну мене -
Може, якраз я тобі пара.
Приспів:
Розпитаю про любов,
Прочитаю про любов,
Заспіваю про любов, про кохання!
Як за місяцем зоря,
За тобою ходжу я
Ой, любове ти моя рання.
Що за біда! - вже та вода хвиль не жене,
Впали сніги в береги Бугу.
Хлопче, пильнуй, не прогайнуй гарну мене -
Може, якраз я твоя буду.
Приспів.
Що за біда! - знов та вода хвилю жене:
Ще один рік у потік змила.
Хлопче, пильнуй, не прогайнуй гарну мене -
Може, якраз я твоя мила.
Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_213414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_213414','Розпитаю про любов','Що за біда! - яра вода хвилю жене.
Я - молода, як вода яра!..
Хлопче, пильнуй, не прогайнуй гарну мене -
Може, якраз я тобі пара.
Приспів:
G
Розпитаю про любов,
Em
Прочитаю про любов,
Заспіваю про любов, про кохання!
G
Як за місяцем зоря,
Em
За тобою ходжу я,
Ой, любове ти моя рання.
Акорди (варіант 2):
Що за біда! - яра вода хвилю жене.
Я - молода, як вода яра!..
Хлопче, пильнуй, не прогайнуй гарну мене -
Може, якраз я тобі пара.
Приспів:
F
Розпитаю про любов,
Dm
Прочитаю про любов,
Заспіваю про любов, про кохання!
F
Як за місяцем зоря,
Dm
За тобою ходжу я,
Ой, любове ти моя рання.
Текст:
Що за біда! - яра вода хвилю жене.
Я - молода, як вода яра!..
Хлопче пильнуй, не прогайнуй гарну мене -
Може, якраз я тобі пара.
Приспів:
Розпитаю про любов,
Прочитаю про любов,
Заспіваю про любов, про кохання!
Як за місяцем зоря,
За тобою ходжу я
Ой, любове ти моя рання.
Що за біда! - вже та вода хвиль не жене,
Впали сніги в береги Бугу.
Хлопче, пильнуй, не прогайнуй гарну мене -
Може, якраз я твоя буду.
Приспів.
Що за біда! - знов та вода хвилю жене:
Ще один рік у потік змила.
Хлопче, пильнуй, не прогайнуй гарну мене -
Може, якраз я твоя мила.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213414_l1','pisniua_213414','YouTube','https://www.youtube.com/watch?v=kftnOXnyqqc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213414_l2','pisniua_213414','YouTube','https://www.youtube.com/watch?v=XKXr-H1pEzQ','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_213573';
DELETE FROM song_versions WHERE song_id = 'pisniua_213573';
DELETE FROM songs_fts WHERE song_id = 'pisniua_213573';
DELETE FROM songs WHERE id = 'pisniua_213573';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_213573','Ой не світи, місяченьку','Українська народна пісня. Виконує: Квітка Цісик, Оксана Петрусенко','uk','ukraine_before_1917',NULL,NULL,'1. аудіозапис 2. Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.','Квітка Цісик виконує лише перші три в''язки.','Ой не світи, місяченьку,
Cm
Не світи нікому,
Тільки світи миленькому,
Як iде  додому!
Як iде  додому!

Світи йому ранесенько,
Тай розганяй хмари,
А як же він іншу має,
То й зайди за хмари!          | (2)

Світив місяць, світив ясний,
Та й зайшов за хмару,
А я, бідна, гірко плачу -
Зрадив мене милий.            | (2)

Або ж мене вірно люби,
Або ж навік лиши,
Або ж мої чорні брови,
На папері спиши.              | (2)

— "Писав же я чотирі дні
І чотирі ночі,
Та не можу ісписати
Твої карі очі."               | (2)

"Писав же ти на папері,
Пиши на китайці,
Не змалюєш та звечора,
То я умру вранці."            | (2)','[''pisni.org.ua'', ''cat:narodni'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_213573'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_213573','Ой не світи, місяченьку','Ой не світи, місяченьку,
Cm
Не світи нікому,
Тільки світи миленькому,
Як iде  додому!
Як iде  додому!

Світи йому ранесенько,
Тай розганяй хмари,
А як же він іншу має,
То й зайди за хмари!          | (2)

Світив місяць, світив ясний,
Та й зайшов за хмару,
А я, бідна, гірко плачу -
Зрадив мене милий.            | (2)

Або ж мене вірно люби,
Або ж навік лиши,
Або ж мої чорні брови,
На папері спиши.              | (2)

— "Писав же я чотирі дні
І чотирі ночі,
Та не можу ісписати
Твої карі очі."               | (2)

"Писав же ти на папері,
Пиши на китайці,
Не змалюєш та звечора,
То я умру вранці."            | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213573_l1','pisniua_213573','YouTube','https://www.youtube.com/watch?v=3HEiGKJcLKM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213573_l2','pisniua_213573','YouTube','https://www.youtube.com/watch?v=8NsCcYD8wjs','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213573_l3','pisniua_213573','YouTube','https://www.youtube.com/watch?v=igFMPBhy9DQ','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213573_l4','pisniua_213573','YouTube','https://www.youtube.com/watch?v=gufxahsE8fo','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213573_l5','pisniua_213573','YouTube','https://www.youtube.com/watch?v=JfWqOYAxrB8','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213573_l6','pisniua_213573','YouTube','https://www.youtube.com/watch?v=Ve1bT7N9D4c','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213573_l7','pisniua_213573','YouTube','https://www.youtube.com/watch?v=CL9gR6PAbGU','video',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_213726';
DELETE FROM song_versions WHERE song_id = 'pisniua_213726';
DELETE FROM songs_fts WHERE song_id = 'pisniua_213726';
DELETE FROM songs WHERE id = 'pisniua_213726';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_213726','Дорогі мої батьки','Музика: А. Говорадло Слова: Д. Гершинзон. Виконує: Оксана Білозір, Дует "Світязь"','uk','ukraine_1991',NULL,NULL,'http://www.poplavskiy.com/',NULL,'За вікнами сніг, а в нас на столі
Іскриться рожеве вино
Знов батьківський дім зібрав нас усіх
Так затишно в нім і тепло
Хоч важко уже за святковим столом
Обходити мамі гостей
Ми з"їхались всі, святкують батьки
Весілля своє золоте

Приспів:
Келих терпкого вина, вип''єм ми за Вас до дна
Хай не старять Вас роки, дорогі мої батьки
Келих терпкого вина, вип"єм ми за Вас до дна
Хай не старять Вас роки, дорогі мої батьки

За вікнами сніг, а в домі у нас
Розмови, та сміх не стиха
Ми з''їхались всі, у наших батьків
Сьогодні пора золота
Гортаємо ми, мов сторінки життя
Альбом фотографій старих
Онуки сидять у батьків на руках
І так вони схожі на них

Приспів','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:pro-batkiv'', ''Пісні з ностальгічними мотивами'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_213726'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_213726','Дорогі мої батьки','За вікнами сніг, а в нас на столі
Іскриться рожеве вино
Знов батьківський дім зібрав нас усіх
Так затишно в нім і тепло
Хоч важко уже за святковим столом
Обходити мамі гостей
Ми з"їхались всі, святкують батьки
Весілля своє золоте

Приспів:
Келих терпкого вина, вип''єм ми за Вас до дна
Хай не старять Вас роки, дорогі мої батьки
Келих терпкого вина, вип"єм ми за Вас до дна
Хай не старять Вас роки, дорогі мої батьки

За вікнами сніг, а в домі у нас
Розмови, та сміх не стиха
Ми з''їхались всі, у наших батьків
Сьогодні пора золота
Гортаємо ми, мов сторінки життя
Альбом фотографій старих
Онуки сидять у батьків на руках
І так вони схожі на них

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213726_l1','pisniua_213726','YouTube','https://www.youtube.com/watch?v=uwqZOn0alMQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213726_l2','pisniua_213726','YouTube','https://www.youtube.com/watch?v=6jLMlM20MoA','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_21369';
DELETE FROM song_versions WHERE song_id = 'pisniua_21369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_21369';
DELETE FROM songs WHERE id = 'pisniua_21369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_21369','Ой попід гай зелененький','(Пісня про Довбуша). Українська народна пісня. Виконує: Тарас Житинський','uk','ukraine_before_1917',NULL,NULL,'Пісневир. Молодіжний співаник. Львів 2001.',NULL,'Ой по-під гай зелененький
Ходить Довбуш молоденький

На ніженьку налягає,
Топірцем ся підпирає.

Ой, ви, хлопці, свистом-свистом,
Засипає стежки листом.

Ой, ви, хлопці, бігом-бігом,
Замітає стежки снігом.

Аби Кути не минути,
До Космача повернути.

До Космача, та й до Дзвінки,
До Штефанової жінки.

Добрий вечір, Штефанова!
Чи вечеря вже готова?

А вечеря не готова,
Бо Штефана нема вдома.

Він поїхав петлювати,
Мабудь буде ночувати .

Штефан пішов на роботу,
Повернеться у суботу.

Чи будеш нам відкривати?
Чи самим ся добувати?

В мене двері тисовії,
На них замки сталевії.

Не поможуть замки твої,
Як підставлю плечі свої.

Довбуш начав налягати,
Стали двері ся ламати.

Довбуш двері відкриває,
(Довбуш плечі підкладає,)
Штефан в Довбуша стріляє.

Як устрілив в праве плече,
А з лівого кровця тече.

Бо знав добре поціляти,
Довбуш буде помирати.

Ой, ви, хлопці, ой, ви мої,
Візьміть мене з хати тої.

Ой, ви, хлопці, ви, молодці,
Беріть мене на топорці.

Беріть мене на топори,
Занесіть мя в чорні гори.

Занесіть мя в Верховину,
Де родився, там най згину.

Там родились тато й мати,
Там я буду спочивати.

Сріблом-златом поділіться,
Та й за мною не журіться.

Штефанові дайте мірку,
Бо я любив його жінку.

Штефанисі дайте сала,
Бо вона мене кохала.

Тай топірці занехайте,
Крови більш не проливайте.

Бо кров людська - не водиця,
Проливати не годиться.

Як будемо ґаздувати,
Жінкам правди не казати!

Не журіться, пане-браття, -
Ще повстане Прикарпаття!

Ой, попід гай зелененький
Ходить Довбуш молоденький.

* Послідовність повторів рядків
для кожної строфи: 1-1-2-2-1-2-2
Наталка (гість): Я граю так:

Am
Гаєм, гаєм зелененьким...
C                      G7          С
Гаєм, гаєм зелененьким ішов Довбуш молоденький,
Ішов Довбуш молоденький.
(Два останні рядки - двічі)

Ось така основна мелодія.
Можна трохи вжити плаваючий бас,
там, де один і той же акорд кілька разів.','[''pisni.org.ua'', ''cat:dumy'', ''cat:huculski'', ''cat:istorychni'', ''cat:narodni'', ''Думи'', ''Гуцульські пісні'', ''Історичні пісні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_21369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_21369','Ой попід гай зелененький','Ой по-під гай зелененький
Ходить Довбуш молоденький

На ніженьку налягає,
Топірцем ся підпирає.

Ой, ви, хлопці, свистом-свистом,
Засипає стежки листом.

Ой, ви, хлопці, бігом-бігом,
Замітає стежки снігом.

Аби Кути не минути,
До Космача повернути.

До Космача, та й до Дзвінки,
До Штефанової жінки.

Добрий вечір, Штефанова!
Чи вечеря вже готова?

А вечеря не готова,
Бо Штефана нема вдома.

Він поїхав петлювати,
Мабудь буде ночувати .

Штефан пішов на роботу,
Повернеться у суботу.

Чи будеш нам відкривати?
Чи самим ся добувати?

В мене двері тисовії,
На них замки сталевії.

Не поможуть замки твої,
Як підставлю плечі свої.

Довбуш начав налягати,
Стали двері ся ламати.

Довбуш двері відкриває,
(Довбуш плечі підкладає,)
Штефан в Довбуша стріляє.

Як устрілив в праве плече,
А з лівого кровця тече.

Бо знав добре поціляти,
Довбуш буде помирати.

Ой, ви, хлопці, ой, ви мої,
Візьміть мене з хати тої.

Ой, ви, хлопці, ви, молодці,
Беріть мене на топорці.

Беріть мене на топори,
Занесіть мя в чорні гори.

Занесіть мя в Верховину,
Де родився, там най згину.

Там родились тато й мати,
Там я буду спочивати.

Сріблом-златом поділіться,
Та й за мною не журіться.

Штефанові дайте мірку,
Бо я любив його жінку.

Штефанисі дайте сала,
Бо вона мене кохала.

Тай топірці занехайте,
Крови більш не проливайте.

Бо кров людська - не водиця,
Проливати не годиться.

Як будемо ґаздувати,
Жінкам правди не казати!

Не журіться, пане-браття, -
Ще повстане Прикарпаття!

Ой, попід гай зелененький
Ходить Довбуш молоденький.

* Послідовність повторів рядків
для кожної строфи: 1-1-2-2-1-2-2
Наталка (гість): Я граю так:

Am
Гаєм, гаєм зелененьким...
C                      G7          С
Гаєм, гаєм зелененьким ішов Довбуш молоденький,
Ішов Довбуш молоденький.
(Два останні рядки - двічі)

Ось така основна мелодія.
Можна трохи вжити плаваючий бас,
там, де один і той же акорд кілька разів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_21369_l1','pisniua_21369','YouTube','https://www.youtube.com/watch?v=fJh0ij99pT8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_21369_l2','pisniua_21369','YouTube','https://www.youtube.com/watch?v=ZFTkGRidiGg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_21369_l3','pisniua_21369','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_213665';
DELETE FROM song_versions WHERE song_id = 'pisniua_213665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_213665';
DELETE FROM songs WHERE id = 'pisniua_213665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_213665','Мак','(соловейко (забавлянка)). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Дитячі забавлянки','Дитяча гра - забавлянка. потрібно співати і показувати: як сіють мак, як росте мак, як рвуть мак, як ідять мак!','Соловеєчку, сватку, сватку,
Чи бував ти в нашім садку,
Чи видав же ти, як мак сіють?

Ось так, ось так, ось так, сіють мак!

Соловеєчку, сватку, сватку,
Чи бував же ти в нашім садку,
Чи видав же ти, як мак ріс?

Ось так, ось так, ось так, ріс мак!

Соловеєчку, сватку, сватку,
Чи бував ти в нашім садку,
Чи видав же ти як мак рвуть?

Ось так, ось так, ось так, рвуть мак!

Соловеєчку, сватку, сватку,
Чи бував ти в нашім садку,
Чи видав же ти як їдять мак?
Ось так, ось так, ось так, їдять мак!','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:vesnyanky-hayivky'', ''Дитячі пісні'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_213665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_213665','Мак','Соловеєчку, сватку, сватку,
Чи бував ти в нашім садку,
Чи видав же ти, як мак сіють?

Ось так, ось так, ось так, сіють мак!

Соловеєчку, сватку, сватку,
Чи бував же ти в нашім садку,
Чи видав же ти, як мак ріс?

Ось так, ось так, ось так, ріс мак!

Соловеєчку, сватку, сватку,
Чи бував ти в нашім садку,
Чи видав же ти як мак рвуть?

Ось так, ось так, ось так, рвуть мак!

Соловеєчку, сватку, сватку,
Чи бував ти в нашім садку,
Чи видав же ти як їдять мак?
Ось так, ось так, ось так, їдять мак!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213665_l1','pisniua_213665','YouTube','https://www.youtube.com/watch?v=xCh7HdAOJ00','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2132675';
DELETE FROM song_versions WHERE song_id = 'pisniua_2132675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2132675';
DELETE FROM songs WHERE id = 'pisniua_2132675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2132675','Боже, як я тебе люблю!','Музика: Михайло Мода Слова: Мирослав Воньо. Виконує: Михайло Мода','uk','ukraine_1991',NULL,NULL,'З батькового рукопису','Ця пісня зараз дуже часто звучить на різних FM- радіостанціях, значить, популярна. Тому я вирішила її помістити на Ваш сайт. Хто захоче " зкачати" "мінусівку", може це зробити, зайшовши на www.minus.lviv.ua Там, правда, вона поміщена під назвою "Як я тебе люблю!". Той, хто її помістив, поступив дуже і дуже не коректно. Не можна без відома авторів поміщати "мінусівки".','Кожен щастя зазнати б хотів,
Тільки доля своє всім пророчить.
Але я своє щастя зустрів
Й більше з ним розлучатись не хочу.

Приспів:
Кожне слово твоє ловлю,
Бо я маю чим дорожити.
Боже, як я тебе люблю!
Я без тебе не зможу жити.

Кожне слово твоє ловлю,
Бо я маю чим дорожити.
Боже, як я тебе люблю!
А без тебе навіщо жити?!

Як ти ніжність даруєш свою,
То нічого не чую й не бачу.
Я з твоїми вустами сміюсь,
І з очима твоїми я плачу.

Приспів.

Хтось шукає на світі скарби,
А хтось істину завжди шукає.
Знає істину той, хто любив, -
Над любов в світі скарбу немає.

Приспів','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2132675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2132675','Боже, як я тебе люблю!','Кожен щастя зазнати б хотів,
Тільки доля своє всім пророчить.
Але я своє щастя зустрів
Й більше з ним розлучатись не хочу.

Приспів:
Кожне слово твоє ловлю,
Бо я маю чим дорожити.
Боже, як я тебе люблю!
Я без тебе не зможу жити.

Кожне слово твоє ловлю,
Бо я маю чим дорожити.
Боже, як я тебе люблю!
А без тебе навіщо жити?!

Як ти ніжність даруєш свою,
То нічого не чую й не бачу.
Я з твоїми вустами сміюсь,
І з очима твоїми я плачу.

Приспів.

Хтось шукає на світі скарби,
А хтось істину завжди шукає.
Знає істину той, хто любив, -
Над любов в світі скарбу немає.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2132675_l1','pisniua_2132675','YouTube','https://www.youtube.com/watch?v=jMR9U7INt7w','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2132675_l2','pisniua_2132675','YouTube','https://www.youtube.com/watch?v=My8qAiBk1zM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2134192';
DELETE FROM song_versions WHERE song_id = 'pisniua_2134192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2134192';
DELETE FROM songs WHERE id = 'pisniua_2134192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2134192','Співай, моя мамо','Музика: Зоя Слободян Слова: Георгій Петрук-Попик. Виконує: Зоя Слободян','uk','ukraine_1991',NULL,NULL,NULL,'Чудова пісня, яку нажаль неможливо знайти в інеті.','Коли співає мама навесні,
Летять, мов гуси-лебеді, пісні.
Від снів тоді пробуджуються трави
І проліски виходять на галяви,
Коли співає мама навесні.

Як мама синім літом заспіва,
То жайворонки кличуть на жнива.
Дзвенить тоді земля наша багата,
Літають понад вікна ластів''ята,
Як мама синім літом заспіва.

Співай, моя мамо,
Співай, моя рідна.
Ти в мене на світі одна
У синьому літі мелодія срібна.
Свята, як твоя сивина.

Коли співає мама восени,
Курличуть журавлі із далини.
І котиться весілля нашим краєм
І пахне за столами короваєм,
Коли співає мама восени.

Як мама заспіва серед зими,
Втихає заметіль за ворітьми.
Барвінок тоді проситься до хати,
Щедрують попід вікнами дівчата,
Як мама заспіва серед зими.

Співай, моя мамо,
Співай, моя рідна.
Ти в мене на світі одна
У синьому літі мелодія срібна.
Свята, як твоя сивина','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:pro-batkiv'', ''Пісні з ностальгічними мотивами'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2134192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2134192','Співай, моя мамо','Коли співає мама навесні,
Летять, мов гуси-лебеді, пісні.
Від снів тоді пробуджуються трави
І проліски виходять на галяви,
Коли співає мама навесні.

Як мама синім літом заспіва,
То жайворонки кличуть на жнива.
Дзвенить тоді земля наша багата,
Літають понад вікна ластів''ята,
Як мама синім літом заспіва.

Співай, моя мамо,
Співай, моя рідна.
Ти в мене на світі одна
У синьому літі мелодія срібна.
Свята, як твоя сивина.

Коли співає мама восени,
Курличуть журавлі із далини.
І котиться весілля нашим краєм
І пахне за столами короваєм,
Коли співає мама восени.

Як мама заспіва серед зими,
Втихає заметіль за ворітьми.
Барвінок тоді проситься до хати,
Щедрують попід вікнами дівчата,
Як мама заспіва серед зими.

Співай, моя мамо,
Співай, моя рідна.
Ти в мене на світі одна
У синьому літі мелодія срібна.
Свята, як твоя сивина');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2134192_l1','pisniua_2134192','YouTube','https://www.youtube.com/watch?v=k9HhOtvQXQ0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2134192_l2','pisniua_2134192','http://ukrnovini.host.kz','http://ukrnovini.host.kz','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2137716';
DELETE FROM song_versions WHERE song_id = 'pisniua_2137716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2137716';
DELETE FROM songs WHERE id = 'pisniua_2137716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2137716','Вітамін "Ю"','Музика: Тризубий Стас Слова: Тризубий Стас. Виконує: Тризубий Стас','uk','ukraine_1991',NULL,NULL,'http://uamusiclib.com',NULL,'Наша медицина зосім не дурна -
Зробила вітаміна цікавого вона.
Схвалили депутати, гроші дав мінфін,
Пішов у виробництво вітамін.

Назвали вітаміна - вітаміном Ю,
Відтепер людина буде, як у раю.
Він на всі випадки, на всі хвороби він,
Наш національний вітамін.

Я левом дивлюсь на дружину, я хочу I love you,
Бо силу сховано левину у вітаміні Ю.
Немає краще сім''янина, не палю і не п''ю
І вам відомо де причина - у вітаміні Ю.

Всіх ми нагодуємо вітаміном Ю,
Вітамінізуємо суспільство та сім''ю.
Жоден із недоїдків зайвим не буде,
Піде у країни СНД.

Їжте, депутатики, супер вітамін,
Кризу подолати вам допоможе він.
Дайте президентові, а трохи у кабмін
Наш національний вітамін.

Віднині нам на Україні не треба врожаю,
Наш порятунок у вітаміні, у вітаміні Ю.
І я ніколи не загину, бо вітамін жую,
Немає краще вітаміну від вітаміну Ю.

Чи ти зі Львова, чи з Долини,
Або гниєш в Стрию,
Не забувай про вітаміни,
Про вітаміни Ю!','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2137716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2137716','Вітамін "Ю"','Наша медицина зосім не дурна -
Зробила вітаміна цікавого вона.
Схвалили депутати, гроші дав мінфін,
Пішов у виробництво вітамін.

Назвали вітаміна - вітаміном Ю,
Відтепер людина буде, як у раю.
Він на всі випадки, на всі хвороби він,
Наш національний вітамін.

Я левом дивлюсь на дружину, я хочу I love you,
Бо силу сховано левину у вітаміні Ю.
Немає краще сім''янина, не палю і не п''ю
І вам відомо де причина - у вітаміні Ю.

Всіх ми нагодуємо вітаміном Ю,
Вітамінізуємо суспільство та сім''ю.
Жоден із недоїдків зайвим не буде,
Піде у країни СНД.

Їжте, депутатики, супер вітамін,
Кризу подолати вам допоможе він.
Дайте президентові, а трохи у кабмін
Наш національний вітамін.

Віднині нам на Україні не треба врожаю,
Наш порятунок у вітаміні, у вітаміні Ю.
І я ніколи не загину, бо вітамін жую,
Немає краще вітаміну від вітаміну Ю.

Чи ти зі Львова, чи з Долини,
Або гниєш в Стрию,
Не забувай про вітаміни,
Про вітаміни Ю!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2137716_l1','pisniua_2137716','YouTube','https://www.youtube.com/watch?v=HoRyz5uT200','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2137457';
DELETE FROM song_versions WHERE song_id = 'pisniua_2137457';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2137457';
DELETE FROM songs WHERE id = 'pisniua_2137457';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2137457','У Львові дощ','Музика: Тризубий Стас Слова: Тризубий Стас. Виконує: Тризубий Стас','uk','ukraine_1991',NULL,NULL,'http://uamusiclib.com',NULL,'Листопадовий пил, уривок із сюжету,
Симфонія на тлі дощу,
А я іду о''пів чи двадцять на дев''єту
По стрийській у гумовім плащу.
Я на свою біду забув парасолю,
Бо так вже склався той сюжет.
Тролейбуси не йдуть, не пустять без пароля,
А тачки ми ставати не хотят.

У Львові дощ,
Дощ, дощ, дощ...

Годиною раніш я стиг подумать стаху,
А, може, би-сь удома сидів,
Бо змокнеш ні за гріш, дивись, як капить з даху,
Не хочете приймити Львів?
Кобіти йдуть сумні, як жаби в калабані,
Холодні мокрі та слизькі.
На свіжім паркані дошки повиривані,
А то були сухі дошки!

У Львові дощ,
Дощ, дощ, дощ...

У небі геть діра, на ратуш воду лиє
З понеділка, а вже четвер.
З-під вежі визира на всю оту стихію
Сумний демократичний мер.
Папери залива, нема на місці зама,
На стріх ведуть сліди кальош,
Хоч влада і нова, але погода така сама,
І от - собі роби, що хоч.

У Львові дощ,
Дощ, дощ, дощ...','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2137457'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2137457','У Львові дощ','Листопадовий пил, уривок із сюжету,
Симфонія на тлі дощу,
А я іду о''пів чи двадцять на дев''єту
По стрийській у гумовім плащу.
Я на свою біду забув парасолю,
Бо так вже склався той сюжет.
Тролейбуси не йдуть, не пустять без пароля,
А тачки ми ставати не хотят.

У Львові дощ,
Дощ, дощ, дощ...

Годиною раніш я стиг подумать стаху,
А, може, би-сь удома сидів,
Бо змокнеш ні за гріш, дивись, як капить з даху,
Не хочете приймити Львів?
Кобіти йдуть сумні, як жаби в калабані,
Холодні мокрі та слизькі.
На свіжім паркані дошки повиривані,
А то були сухі дошки!

У Львові дощ,
Дощ, дощ, дощ...

У небі геть діра, на ратуш воду лиє
З понеділка, а вже четвер.
З-під вежі визира на всю оту стихію
Сумний демократичний мер.
Папери залива, нема на місці зама,
На стріх ведуть сліди кальош,
Хоч влада і нова, але погода така сама,
І от - собі роби, що хоч.

У Львові дощ,
Дощ, дощ, дощ...');
DELETE FROM song_links WHERE song_id = 'pisniua_213420';
DELETE FROM song_versions WHERE song_id = 'pisniua_213420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_213420';
DELETE FROM songs WHERE id = 'pisniua_213420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_213420','Пісня буде поміж нас','Музика: Володимир Івасюк Слова: Володимир Івасюк. Виконує: Софія Ротару, Назарій Яремчук, Василь Зінкевич, Смерічка, Ірина Шинкарук, Людмила Ясінська','uk','ukraine_before_1917',NULL,NULL,'Червона рута. Пісенник. Київ, Музична Україна, 1993','присвячена відомій поетесі й письменниці Галині Тарасюк Підбір акордів: IhorKo','Програш:
Пролягла дорога від твоїх воріт
До моїх воріт, як струна.
То чому ж згубився твій самотній слід -
Знаєш ти одна, ти одна...
Зимна осінь ще той слід листям не накрила,
Бо до тебе навесні я повернусь, мила.
Твої руки я візьму знову в свої руки,
A               C         D              Em  С D
Й не розквітне поміж нас жовтий квіт розлуки.
Не ховай очей блакитний промінь,
Заспівай мені в останній раз.
Пісню ту  візьму собі на спомин,
Пісня буде поміж нас.
Бо твій голос, бо твій голос - щедра повінь,
Я мов колос, зелен колос, нею повен.
Жовтий лист спаде і виросте зелений,
А ти в пісні будеш завжди біля мене.
Як зійдуть сніги із гір потоками,
Ой глибокими, навесні.
Забринить дорога та неспокоєм
Вдалині мені, вдалині...
Зимна осінь ще той слід листям не накрила,
Бо до тебе навесні я повернусь, мила.
Твої руки я візьму знову в свої руки,
A               C         D              Em  С D
Й не розквітне поміж нас жовтий квіт розлуки.
Не ховай очей блакитний промінь,
Заспівай мені в останній раз.
Пісню ту  візьму собі на спомин,
Пісня буде поміж нас.
Бо твій голос, бо твій голос - щедра повінь,
Я мов колос, зелен колос, нею повен.
Жовтий лист спаде і виросте зелений,
А ти в пісні будеш завжди біля мене.
Програш з початку (або без нього)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_213420'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_213420','Пісня буде поміж нас','Програш:
Пролягла дорога від твоїх воріт
До моїх воріт, як струна.
То чому ж згубився твій самотній слід -
Знаєш ти одна, ти одна...
Зимна осінь ще той слід листям не накрила,
Бо до тебе навесні я повернусь, мила.
Твої руки я візьму знову в свої руки,
A               C         D              Em  С D
Й не розквітне поміж нас жовтий квіт розлуки.
Не ховай очей блакитний промінь,
Заспівай мені в останній раз.
Пісню ту  візьму собі на спомин,
Пісня буде поміж нас.
Бо твій голос, бо твій голос - щедра повінь,
Я мов колос, зелен колос, нею повен.
Жовтий лист спаде і виросте зелений,
А ти в пісні будеш завжди біля мене.
Як зійдуть сніги із гір потоками,
Ой глибокими, навесні.
Забринить дорога та неспокоєм
Вдалині мені, вдалині...
Зимна осінь ще той слід листям не накрила,
Бо до тебе навесні я повернусь, мила.
Твої руки я візьму знову в свої руки,
A               C         D              Em  С D
Й не розквітне поміж нас жовтий квіт розлуки.
Не ховай очей блакитний промінь,
Заспівай мені в останній раз.
Пісню ту  візьму собі на спомин,
Пісня буде поміж нас.
Бо твій голос, бо твій голос - щедра повінь,
Я мов колос, зелен колос, нею повен.
Жовтий лист спаде і виросте зелений,
А ти в пісні будеш завжди біля мене.
Програш з початку (або без нього)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213420_l1','pisniua_213420','YouTube','https://www.youtube.com/watch?v=O8COWSH9tvI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213420_l2','pisniua_213420','YouTube','https://www.youtube.com/watch?v=-BzkxOVlAvw','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213420_l3','pisniua_213420','YouTube','https://www.youtube.com/watch?v=391qUoG8iEw','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_213899';
DELETE FROM song_versions WHERE song_id = 'pisniua_213899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_213899';
DELETE FROM songs WHERE id = 'pisniua_213899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_213899','Чувай!','(Гімн дністрян). Музика: Натан Баркер 1848 р. Слова: Валентин Стецюк','uk','ukraine_before_1917',NULL,'1848','Експедиція Товариства Лева "Дністер" http://geocities.com/dnistrove/','Підбір акордів: Роман Лемішко','У горах Карпатських бере початки
І до моря, моря Чорного-о-го
Плине Дністер cеред лісів, ланів.
У тому краю,
Немов у раю,
C
Будем жити ми безжурно.
Готовий до спливу наш катамаран

Готовий до спливу наш катамаран
І команда наша - ого-го-о!
Рушимо в путь каньйоном Дністровим
Від Галичини
На Буковину
І на сонячне Поділля!

Містечка і села, фортеці, церкви
На своєму шляху ми не минемо.
Дослідимо і збережемо
Природу Дністра,
Культуру людей
На прийдешні покоління!

Природа привітна до нас не завжди -
На Дністрі або спека або негода,
Вітер жене бурхливих хвиль вали.
Та в дощ і туман
Іде караван,
З нами синьо-жовта фана!

Вітрила подерті, а вітер в лице.
Ми на веслах, веслах, аж до ночі.
Ділим сухпай і залишки води.
Хай сонце пече,
Хай дощик січе -
Витривалі ми і дужі!','[''pisni.org.ua'', ''cat:halycki'', ''cat:himny-marshi'', ''Пісні з Галичини'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_213899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_213899','Чувай!','У горах Карпатських бере початки
І до моря, моря Чорного-о-го
Плине Дністер cеред лісів, ланів.
У тому краю,
Немов у раю,
C
Будем жити ми безжурно.
Готовий до спливу наш катамаран

Готовий до спливу наш катамаран
І команда наша - ого-го-о!
Рушимо в путь каньйоном Дністровим
Від Галичини
На Буковину
І на сонячне Поділля!

Містечка і села, фортеці, церкви
На своєму шляху ми не минемо.
Дослідимо і збережемо
Природу Дністра,
Культуру людей
На прийдешні покоління!

Природа привітна до нас не завжди -
На Дністрі або спека або негода,
Вітер жене бурхливих хвиль вали.
Та в дощ і туман
Іде караван,
З нами синьо-жовта фана!

Вітрила подерті, а вітер в лице.
Ми на веслах, веслах, аж до ночі.
Ділим сухпай і залишки води.
Хай сонце пече,
Хай дощик січе -
Витривалі ми і дужі!');
DELETE FROM song_links WHERE song_id = 'pisniua_214022';
DELETE FROM song_versions WHERE song_id = 'pisniua_214022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_214022';
DELETE FROM songs WHERE id = 'pisniua_214022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_214022','Час рікою пливе','Слова: Богдан Лепкий, Іван Франко. Виконує: Микола Гнатюк','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Час рікою пливе, як зустрів я тебе,
Як зустрів я тебе, моя пташко,
Довго, довго дививсь, марно очі трудив,      |
А впізнати тебе було важко.                  | (2)
Ти висока струнка, в тебе руса коса,
В тебе очі сумні, не веселі,
І уста вже не ті, не солодкі такі,           |
Скажи, хто цілував їх без мене.              | (2)
Як зустрінеш колись, привітай усміхнись,
Усміхнись, як колись усміхалась,
Хоч пройшли вже роки і ми стали батьки,      |
Але наша любов не зів''яла.                   | (2)
Як почуєш колись біля свого вікна,
Що хтось плаче і гірко зітхає,
Не вставай, не трудись, не тривож свого сна, |
Тільки знай, що тебе хтось кохає.            | (2)
Я за своє життя море сліз пролила,
Море сліз від тяжкої розлуки,
Я тепер не дитя, як я була колись,           |
Щоби горю іти прямо в руки.                  | (2)
А у тебе є син, а у мене дочка,
Ох як схожі вони між собою,
То давай же ми їх об''єднаєм навік,           |
Коли нам не судилось з тобою.                | (2)
На зелені луги впали білі сніги,
Де з тобою ми часто гуляли,
По дорогах зими йшли закохані ми,            |
Ясні зорі над нами сіяли.                    | (2)','[''pisni.org.ua'', ''cat:dances'', ''cat:lirychni'', ''cat:waltzes'', ''Пісні до танцю'', ''Пісні про кохання, ліричні'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_214022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_214022','Час рікою пливе','Час рікою пливе, як зустрів я тебе,
Як зустрів я тебе, моя пташко,
Довго, довго дививсь, марно очі трудив,      |
А впізнати тебе було важко.                  | (2)
Ти висока струнка, в тебе руса коса,
В тебе очі сумні, не веселі,
І уста вже не ті, не солодкі такі,           |
Скажи, хто цілував їх без мене.              | (2)
Як зустрінеш колись, привітай усміхнись,
Усміхнись, як колись усміхалась,
Хоч пройшли вже роки і ми стали батьки,      |
Але наша любов не зів''яла.                   | (2)
Як почуєш колись біля свого вікна,
Що хтось плаче і гірко зітхає,
Не вставай, не трудись, не тривож свого сна, |
Тільки знай, що тебе хтось кохає.            | (2)
Я за своє життя море сліз пролила,
Море сліз від тяжкої розлуки,
Я тепер не дитя, як я була колись,           |
Щоби горю іти прямо в руки.                  | (2)
А у тебе є син, а у мене дочка,
Ох як схожі вони між собою,
То давай же ми їх об''єднаєм навік,           |
Коли нам не судилось з тобою.                | (2)
На зелені луги впали білі сніги,
Де з тобою ми часто гуляли,
По дорогах зими йшли закохані ми,            |
Ясні зорі над нами сіяли.                    | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214022_l1','pisniua_214022','YouTube','https://www.youtube.com/watch?v=SZHSQsAJMqw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214022_l2','pisniua_214022','YouTube','https://www.youtube.com/watch?v=nYY2s1GOG1w','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214022_l3','pisniua_214022','YouTube','https://www.youtube.com/watch?v=V8-V2gagCsM','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2139420';
DELETE FROM song_versions WHERE song_id = 'pisniua_2139420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2139420';
DELETE FROM songs WHERE id = 'pisniua_2139420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2139420','Стоїть тополя','Музика: Олександр Осадчий Слова: Вадим Крищенко. Виконує: Тріо Либідь, Лідія Михайленко, Алла Кудлай, Віталій Білоножко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Стоїть тополя, наче доля,
Яка вросла у родовід,
Гілками синє небо коле,
Збирає горлицю в політ.
Стоїть тополя на роздоллі,
Легенда памяті жива
І листям промовля поволі
Святі Шевченкові слова.

Приспів:
Тополя, тополя, глибоке коріння,
Політ журавлинний її верховіть.
Тополя, тополя, задума осіння
В очах мого серця, як матір стоїть.

Стоїть тополя, день світає
В її потрісканій корі.
Стоїть одненька, виглядає
Свох синів з крутих далів.
Стоїть тополя, не старіє,
Її обходить часу мить
І я втішаюсь, і радію,
Що корінь з нею в нас один.

Приспів. (2)

В очах мого серця, як матір стоїть!','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2139420'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2139420','Стоїть тополя','Стоїть тополя, наче доля,
Яка вросла у родовід,
Гілками синє небо коле,
Збирає горлицю в політ.
Стоїть тополя на роздоллі,
Легенда памяті жива
І листям промовля поволі
Святі Шевченкові слова.

Приспів:
Тополя, тополя, глибоке коріння,
Політ журавлинний її верховіть.
Тополя, тополя, задума осіння
В очах мого серця, як матір стоїть.

Стоїть тополя, день світає
В її потрісканій корі.
Стоїть одненька, виглядає
Свох синів з крутих далів.
Стоїть тополя, не старіє,
Її обходить часу мить
І я втішаюсь, і радію,
Що корінь з нею в нас один.

Приспів. (2)

В очах мого серця, як матір стоїть!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2139420_l1','pisniua_2139420','YouTube','https://www.youtube.com/watch?v=kxHes5CeLDg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2139420_l2','pisniua_2139420','YouTube','https://www.youtube.com/watch?v=EyuM1UWz8nw','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2139420_l3','pisniua_2139420','YouTube','https://www.youtube.com/watch?v=-nvtXEfhvUU','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_214010';
DELETE FROM song_versions WHERE song_id = 'pisniua_214010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_214010';
DELETE FROM songs WHERE id = 'pisniua_214010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_214010','Не вір','Музика: Олександр Смик Слова: Олександр Смик. Виконує: Чорні черешні, Юрій Поліщук','uk','ukraine_1991',NULL,NULL,'Аудіо-CD - Олександр Смик. Мистецький проект "Червоне... Чорне... Біле..." (Історія закутків української душі). Ч.1. Мелодії та тексти Олександра Смика. 2001.','Програш між куплетами грається на ті ж акорди, але на жаль, не шарю в табах. Кому смакує, замість Аm можна грати Am7. "bohdanko" (модератор): Оригінальна тональність - Cm (каподастр на I ладі).','Не вір мені, не вір,
Я сивий чоловік.
Мов одинокий звір,
Вступаю в новий вік.

Вірші — лише слова,
Що зводять до небес.
Я від чужих сховав
Любові вічний хрест.

Програш.

У глибину очей
Ховав його вночі,
Подалі від людей,
В духовну височінь.

Не вір мені, не вір,
Коли кажу "люблю".
Цей спалений клавір
Я більше не спалю.

Програш.

Різдвяна ворожба.
Під крилами горби.
Мальована юрба,
І хрест, який в тобі.

Не вір мені, не вір.  |
Я сивий чоловік.      | (2)
Мов одинокий звір,    |
Вступаю в новий вік.  |

Вірші — лише слова,
Що зводять до небес.
Я від чужих сховав
Любові вічний хрест.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:romansy'', ''Бардівські пісні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_214010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_214010','Не вір','Не вір мені, не вір,
Я сивий чоловік.
Мов одинокий звір,
Вступаю в новий вік.

Вірші — лише слова,
Що зводять до небес.
Я від чужих сховав
Любові вічний хрест.

Програш.

У глибину очей
Ховав його вночі,
Подалі від людей,
В духовну височінь.

Не вір мені, не вір,
Коли кажу "люблю".
Цей спалений клавір
Я більше не спалю.

Програш.

Різдвяна ворожба.
Під крилами горби.
Мальована юрба,
І хрест, який в тобі.

Не вір мені, не вір.  |
Я сивий чоловік.      | (2)
Мов одинокий звір,    |
Вступаю в новий вік.  |

Вірші — лише слова,
Що зводять до небес.
Я від чужих сховав
Любові вічний хрест.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214010_l1','pisniua_214010','YouTube','https://www.youtube.com/watch?v=8qOebunA1GY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2140022';
DELETE FROM song_versions WHERE song_id = 'pisniua_2140022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2140022';
DELETE FROM songs WHERE id = 'pisniua_2140022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2140022','Весна','Українська народна пісня. Виконує: ДахаБраха','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, весняночка, де твоя дочка?
Погнала бичків за воріта.

Пасіться, бички, я спраду мички,
Свойму милому на рукавички.

Ой, ти, весна, ти красна,
А, що ж ти нам вонєсла?

Я й вонєсло, вонєсло
Три користі радості.

Три користі радості
Й одна користь - пастушок.

Й одна користь - пастушок,
Друга користь ратає.

Друга користь ратає,
Третя користь бортнічок.

А ратай, оре, сокає,
А бортнік творе, токає.

Ой, ти, весна, ти красна,
А, що ж ти нам вонєсла?

Я й вонєсло, вонєсло
Три користі радості.','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2140022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2140022','Весна','Ой, весняночка, де твоя дочка?
Погнала бичків за воріта.

Пасіться, бички, я спраду мички,
Свойму милому на рукавички.

Ой, ти, весна, ти красна,
А, що ж ти нам вонєсла?

Я й вонєсло, вонєсло
Три користі радості.

Три користі радості
Й одна користь - пастушок.

Й одна користь - пастушок,
Друга користь ратає.

Друга користь ратає,
Третя користь бортнічок.

А ратай, оре, сокає,
А бортнік творе, токає.

Ой, ти, весна, ти красна,
А, що ж ти нам вонєсла?

Я й вонєсло, вонєсло
Три користі радості.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2140022_l1','pisniua_2140022','YouTube','https://www.youtube.com/watch?v=VRGeDRzOqmc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2138354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2138354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2138354';
DELETE FROM songs WHERE id = 'pisniua_2138354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2138354','Прапор України','Музика: Олександр Пономарьов Слова: Олександр Пономарьов. Виконує: Олександр Пономарьов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Рідна ненька Україна,
Незалежна, горда, вільна,
Діти ми усі, усі твої,
Сила рідної землі!
Моя рідна Україна,
Твоя пісня солов''їна
Буде линути в віках
Добрим в радість, злим на страх.

Приспів:
Слава Україні! Україні слава!
Всім Її героям, дітям всім Її!
Підіймемо гордо ми над головами
Прапор України, прапор рідної землі!

Рідна ненька Україна,
Золотом в небесну синь
Прапор рідної країни
Ми піднімем в височінь!

Приспів. (3)','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2138354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2138354','Прапор України','Рідна ненька Україна,
Незалежна, горда, вільна,
Діти ми усі, усі твої,
Сила рідної землі!
Моя рідна Україна,
Твоя пісня солов''їна
Буде линути в віках
Добрим в радість, злим на страх.

Приспів:
Слава Україні! Україні слава!
Всім Її героям, дітям всім Її!
Підіймемо гордо ми над головами
Прапор України, прапор рідної землі!

Рідна ненька Україна,
Золотом в небесну синь
Прапор рідної країни
Ми піднімем в височінь!

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2138354_l1','pisniua_2138354','YouTube','https://www.youtube.com/watch?v=CkulwCj7dq0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2138675';
DELETE FROM song_versions WHERE song_id = 'pisniua_2138675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2138675';
DELETE FROM songs WHERE id = 'pisniua_2138675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2138675','Бистра вода','Музика: Zrada Слова: Андрій Михальчишин. Виконує: Zrada','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Бистра вода мене несе,
Мені ворожить ясне сонце,
Вітер шумить, місяць блистить,
Вечірня пісня тут гомонить.

Збудився я і пісню чув,
Чув я в траві, чув я в воді.
Нехай будемо тут, з водою пливемо,
Тут у лісі життя почнемо.

Нове життя в лісі почав,
Тебе знайду, давно це знав.
Земля вся так збудилася,
В серці пливе бистра вода.','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2138675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2138675','Бистра вода','Бистра вода мене несе,
Мені ворожить ясне сонце,
Вітер шумить, місяць блистить,
Вечірня пісня тут гомонить.

Збудився я і пісню чув,
Чув я в траві, чув я в воді.
Нехай будемо тут, з водою пливемо,
Тут у лісі життя почнемо.

Нове життя в лісі почав,
Тебе знайду, давно це знав.
Земля вся так збудилася,
В серці пливе бистра вода.');
DELETE FROM song_links WHERE song_id = 'pisniua_213879';
DELETE FROM song_versions WHERE song_id = 'pisniua_213879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_213879';
DELETE FROM songs WHERE id = 'pisniua_213879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_213879','Кедь ми прийшла карта','Українська народна пісня. Виконує: Тарас Чубай, Скрябін, Мар''ян Шуневич, Мар''яна Садовська','uk','ukraine_before_1917',NULL,NULL,'CD- Тарас Чубай і Скрябін. "Наші партизани". 2000','Проект "Наші Партизани" Ймовірно, тут за основу взято текст і ноти з книги: Сурма. Збірник воєнних пісень.- Львів-Київ: Червона Калина, 1922.- 142 c. * В оригіналі: тональність Dm (каподастр на V ладі). Підбір акордів: bohdanko','Вступ:   Am F E  (4)
Кедь ми прийшла карта нароковац,
Став я свого неня дошіковац:
"Неню ж ти мій, неню, вчинь ми таку волю -  |
Йди за мене слу- жить на ту войну".         |
Кедь ми прийшла карта нароковац,
Став я музиченьків дошіковац:
"Гей ви, музиченьки, заграйте ми чардаш,
Най я си погулям в тот молодий час.
Гей ви, музиченьки, заграйте ми чардаш,
Най я си погулям в тот остатній раз".
Стали музиченьки чардаш грати,
Стали ми ся сльози з очей ляти.
Ніхто не заплаче, ні отец, ні матка,    | (2)
Лем за мном заплачут три дівчатка.      |
А єдна заплаче, бо я її брат,
А друга заплаче, бо я її сват,
А третя заплаче, бо плакати мусить,   | (2)
Бо вона від мене перштінь носить.     |
Фінал (на тему Вступу).','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:lirychni'', ''cat:narodni'', ''cat:rekrutski'', ''Лемківські пісні'', ''Пісні про кохання, ліричні'', ''Народні пісні'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_213879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_213879','Кедь ми прийшла карта','Вступ:   Am F E  (4)
Кедь ми прийшла карта нароковац,
Став я свого неня дошіковац:
"Неню ж ти мій, неню, вчинь ми таку волю -  |
Йди за мене слу- жить на ту войну".         |
Кедь ми прийшла карта нароковац,
Став я музиченьків дошіковац:
"Гей ви, музиченьки, заграйте ми чардаш,
Най я си погулям в тот молодий час.
Гей ви, музиченьки, заграйте ми чардаш,
Най я си погулям в тот остатній раз".
Стали музиченьки чардаш грати,
Стали ми ся сльози з очей ляти.
Ніхто не заплаче, ні отец, ні матка,    | (2)
Лем за мном заплачут три дівчатка.      |
А єдна заплаче, бо я її брат,
А друга заплаче, бо я її сват,
А третя заплаче, бо плакати мусить,   | (2)
Бо вона від мене перштінь носить.     |
Фінал (на тему Вступу).');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213879_l1','pisniua_213879','YouTube','https://www.youtube.com/watch?v=14KBKNbPDMk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213879_l2','pisniua_213879','YouTube','https://www.youtube.com/watch?v=xO5YF3PXNzE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_213879_l3','pisniua_213879','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2138165';
DELETE FROM song_versions WHERE song_id = 'pisniua_2138165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2138165';
DELETE FROM songs WHERE id = 'pisniua_2138165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2138165','Муха','(Муходром). Музика: Тризубий Стас Слова: Тризубий Стас. Виконує: Тризубий Стас, Тризубий Стас','uk','ukraine_1991',NULL,NULL,'Ігор Сусяк','Підбір акордів: Ілона Сусяк','В мене бритва дуже гарна, зараз в техніці прогрес.
F#m
Я голюся регулярно і поважаю цей процес.
І вона ратує мене необхідна звичка ця,
Бо не можу ж я зі сцени вдарить мордою лиця.
От якось стою, голюся, шось під ніс собі свистю
A
І у дзеркало дивлюся, бачу - молодість, тю-тю.
З перспективами все глухо і з фінансами ку-ку,
І раптом сіла мені муха на поголену щоку.

Як обпльований я стою, до підлоти я не звик,
Бо лице ж не купа гною, унітаз або смітник.
Я схопив її у жменю і списав її в тираж,
Щоб не лазила по мені, затуляючи пейзаж.

Але раптом схаменувся, що зробив страшенний глум
І жахнувся, аж здригнувся, ніби вдарив мене струм.
Чом я волю дав спокусі, вбивчу руку не спинив?
І ні в чім невинній мусі, її віку вкоротив.

Нащо взяв я гріх на душу? - це ж ганьба на все життя.
Я екологію порушив, діалектику буття.
Між людиною й мікробом була мостиком вона,
А я довів її до гробу і тепер-ка нам хана.

Може, та забита муха, то був наш останній шанс,
У житті і так не пруха і конкретний дисбаланс.
І теперка, Венсеремос, заїдять нас комарі,
Як раніше не спечемось у озоновій дірі.

Хоч природа - штука сильна
Та вразливий має бік:
Бо усе в ній діє спільно
І без мухи нам гаплик.
Он китайці мух побили і пішов зворотній рух:
Самі себе розплодили у середовищі без мух.

Одним словом, як вам муха раптом сяде на чоло,
Не робіть різкого руха, щоб не сталось западло.
Бо і так вже в нас розруха, а ще поб''єм останніх мух.
Ні, хай знає кожна муха - українець мухам друг.

Об''єднаймось ратувати,захищати бідних мух,
Комуністи, демократи, НДП, Народний Рух.
Як поможуть цій тварині і парламент, і грінпіс,
То не буде в Україні ні інфляцій, ані криз.

Але, як її спасати? Ну, це ніякий не секрет:
Уряд мусить закладати цю тваринку у бюджет.
Треба простір їй створити і валютний коридор.
Ось тоді будемо жити і не страшний голодомор.

Зволікать немає часу, хай підключиться кабмін,
Треба всю мушину масу розглядать, як протеїн.
Уявіть собі: посуха, чи той жук все пожере,
А як є в резерві муха, Україна ще не вмре.

Я в нове тисячоріччя разом з мухою іду
І хай сідає на обличчя, ображатись не буду.
Це вона для мене - муха, а я для неї - муходром.
Хай знайомиться, хай нюха, треба жити нам разом.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:suspilno-politychni'', ''Бардівські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2138165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2138165','Муха','В мене бритва дуже гарна, зараз в техніці прогрес.
F#m
Я голюся регулярно і поважаю цей процес.
І вона ратує мене необхідна звичка ця,
Бо не можу ж я зі сцени вдарить мордою лиця.
От якось стою, голюся, шось під ніс собі свистю
A
І у дзеркало дивлюся, бачу - молодість, тю-тю.
З перспективами все глухо і з фінансами ку-ку,
І раптом сіла мені муха на поголену щоку.

Як обпльований я стою, до підлоти я не звик,
Бо лице ж не купа гною, унітаз або смітник.
Я схопив її у жменю і списав її в тираж,
Щоб не лазила по мені, затуляючи пейзаж.

Але раптом схаменувся, що зробив страшенний глум
І жахнувся, аж здригнувся, ніби вдарив мене струм.
Чом я волю дав спокусі, вбивчу руку не спинив?
І ні в чім невинній мусі, її віку вкоротив.

Нащо взяв я гріх на душу? - це ж ганьба на все життя.
Я екологію порушив, діалектику буття.
Між людиною й мікробом була мостиком вона,
А я довів її до гробу і тепер-ка нам хана.

Може, та забита муха, то був наш останній шанс,
У житті і так не пруха і конкретний дисбаланс.
І теперка, Венсеремос, заїдять нас комарі,
Як раніше не спечемось у озоновій дірі.

Хоч природа - штука сильна
Та вразливий має бік:
Бо усе в ній діє спільно
І без мухи нам гаплик.
Он китайці мух побили і пішов зворотній рух:
Самі себе розплодили у середовищі без мух.

Одним словом, як вам муха раптом сяде на чоло,
Не робіть різкого руха, щоб не сталось западло.
Бо і так вже в нас розруха, а ще поб''єм останніх мух.
Ні, хай знає кожна муха - українець мухам друг.

Об''єднаймось ратувати,захищати бідних мух,
Комуністи, демократи, НДП, Народний Рух.
Як поможуть цій тварині і парламент, і грінпіс,
То не буде в Україні ні інфляцій, ані криз.

Але, як її спасати? Ну, це ніякий не секрет:
Уряд мусить закладати цю тваринку у бюджет.
Треба простір їй створити і валютний коридор.
Ось тоді будемо жити і не страшний голодомор.

Зволікать немає часу, хай підключиться кабмін,
Треба всю мушину масу розглядать, як протеїн.
Уявіть собі: посуха, чи той жук все пожере,
А як є в резерві муха, Україна ще не вмре.

Я в нове тисячоріччя разом з мухою іду
І хай сідає на обличчя, ображатись не буду.
Це вона для мене - муха, а я для неї - муходром.
Хай знайомиться, хай нюха, треба жити нам разом.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2138165_l1','pisniua_2138165','YouTube','https://www.youtube.com/watch?v=iVjwl7dKdKc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2137919';
DELETE FROM song_versions WHERE song_id = 'pisniua_2137919';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2137919';
DELETE FROM songs WHERE id = 'pisniua_2137919';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2137919','Дощик','Музика: Тризубий Стас Слова: Тризубий Стас. Виконує: Тризубий Стас','uk','ukraine_1991',NULL,NULL,'http://uamusiclib.com',NULL,'Цілий день на наш садочок
Вересневий сипле дощик,
Капа в ліжко, капа в борщик,
Кап, кап, кап.

Мокрий носик, мокрий пальчик,
Мокрий півник, мокрий зайчик
І в калюжі мокрий м''ячик,
Хляп, хляп, хляп.

Дощику, дощику, ти не лий,
Ти нас, любий дощику, пожалій.
Дощику, дощику, не пади,
Ось трішки підростем, зажди.

Ой, не треба, дощик, литься
На Сергійка та на Гриця.
Плаче песик, плаче киця,
Кап, кап, кап.

Плачуть Олі, плачуть Тані,
Ручкі сині, мокрі штані.
Ходять няні в калабані,
Хляп, хляп, хляп.

Дощику, дощику, ти не мочи,
Ти за шийку, дощику, не течи.
Дощику, дощику, не пади,
Ми не хочемо води.

Ой, ви тьоті, ой, ви дяді,
На роботі в облраді,
Язичкі у вас плескаті
Ляп, ляп, ляп.

Ви прийдіть до нас в садочок,
Ми поставим вас в куточок
І по попці вам пруточок,
Хляп, хляп, хляп.

Дощику, дощику, поможи,
Кому пожалітися підкажи.
Дощику, дощику, не пади,
Ось трішки підростем, зажди','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2137919'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2137919','Дощик','Цілий день на наш садочок
Вересневий сипле дощик,
Капа в ліжко, капа в борщик,
Кап, кап, кап.

Мокрий носик, мокрий пальчик,
Мокрий півник, мокрий зайчик
І в калюжі мокрий м''ячик,
Хляп, хляп, хляп.

Дощику, дощику, ти не лий,
Ти нас, любий дощику, пожалій.
Дощику, дощику, не пади,
Ось трішки підростем, зажди.

Ой, не треба, дощик, литься
На Сергійка та на Гриця.
Плаче песик, плаче киця,
Кап, кап, кап.

Плачуть Олі, плачуть Тані,
Ручкі сині, мокрі штані.
Ходять няні в калабані,
Хляп, хляп, хляп.

Дощику, дощику, ти не мочи,
Ти за шийку, дощику, не течи.
Дощику, дощику, не пади,
Ми не хочемо води.

Ой, ви тьоті, ой, ви дяді,
На роботі в облраді,
Язичкі у вас плескаті
Ляп, ляп, ляп.

Ви прийдіть до нас в садочок,
Ми поставим вас в куточок
І по попці вам пруточок,
Хляп, хляп, хляп.

Дощику, дощику, поможи,
Кому пожалітися підкажи.
Дощику, дощику, не пади,
Ось трішки підростем, зажди');
DELETE FROM song_links WHERE song_id = 'pisniua_2140328';
DELETE FROM song_versions WHERE song_id = 'pisniua_2140328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2140328';
DELETE FROM songs WHERE id = 'pisniua_2140328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2140328','Не треба','Музика: Григорій Вагапов Слова: Григорій Вагапов. Виконує: Вперше Чую','uk','ukraine_1991',NULL,NULL,'http://v4.kiev.ua/musics/1/0/4.html','Am Там де хрестами Випекли груди G F Там нас більше немає E7 А інших не буде Am В пісні забутих Місяцем звірів G F В ній нас більше не буде E7 Я в інші не вірю Am F Не треба не треба Dm E Нам нічого чекати Am F Dm E Кричали вітер небо і мати Am F Не варто не варто Dm E Нас безнадія не псує Am F Dm E7 До того ж кожному мрія пасує Чуєш?','Am
Там де хрестами випекли груди,
Там нас більше немає,
E7
А інших не буде.
Am
В пісні забутих місяцем звірів
В ній нас більше не буде,
E7
Я в інші не вірю.
Не треба, не треба,
Нам нічого чекати -
Кричали вітер, небо і мати.
Не варто, не варто,
Нас безнадія не псує.
До того ж, кожному мрія пасує,
Чуєш?
Ось, де любили кашу берези,
А нас мало не вбили
За те, що тверезі.
Ми огортаєм в напис планету,
Мене і тільки мене
Прошу вважати поетом.
Не треба, не треба,
Нам нічого втрачати,
Літати просто неба
І спати.
Не варто, не варто,
Нас безнадія не псує.
До того ж, кожному мрія пасує,
Чуєш?
Дощ непомітний став язикатим
Там, де вам нас не зустріть
Та й не вам нас шукати.
Вітер і хмари, чуєш, хмари і труби
Тут, де нас вже немає,
А вас вже не буде.
Не варто, не варто,
Цей ризик хоч не важливий
Та я стою волохатий
Щасливий.
Не треба, не треба
Дивитись, що там позаду.
Життя і справді негарне з фасаду,
Чуєш?','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2140328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2140328','Не треба','Am
Там де хрестами випекли груди,
Там нас більше немає,
E7
А інших не буде.
Am
В пісні забутих місяцем звірів
В ній нас більше не буде,
E7
Я в інші не вірю.
Не треба, не треба,
Нам нічого чекати -
Кричали вітер, небо і мати.
Не варто, не варто,
Нас безнадія не псує.
До того ж, кожному мрія пасує,
Чуєш?
Ось, де любили кашу берези,
А нас мало не вбили
За те, що тверезі.
Ми огортаєм в напис планету,
Мене і тільки мене
Прошу вважати поетом.
Не треба, не треба,
Нам нічого втрачати,
Літати просто неба
І спати.
Не варто, не варто,
Нас безнадія не псує.
До того ж, кожному мрія пасує,
Чуєш?
Дощ непомітний став язикатим
Там, де вам нас не зустріть
Та й не вам нас шукати.
Вітер і хмари, чуєш, хмари і труби
Тут, де нас вже немає,
А вас вже не буде.
Не варто, не варто,
Цей ризик хоч не важливий
Та я стою волохатий
Щасливий.
Не треба, не треба
Дивитись, що там позаду.
Життя і справді негарне з фасаду,
Чуєш?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2140328_l1','pisniua_2140328','YouTube','https://www.youtube.com/watch?v=SHH7AttSUwA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2140328_l2','pisniua_2140328','YouTube','https://www.youtube.com/watch?v=IqFdatdem64','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2141012';
DELETE FROM song_versions WHERE song_id = 'pisniua_2141012';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2141012';
DELETE FROM songs WHERE id = 'pisniua_2141012';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2141012','Пам''яті жертв голодоморів','Музика: Анатолій Шейченко Слова: Людмила Степаненко. Виконує: Лариса Кваріані','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис',NULL,'Двадцять перший. На Схід ешелонний
З награбованим хлібом вагони.
Лютий голод, червона чума,
Ні! Прощення такому нема!

Приспів:
Мамо, мамо, дай хоч крихтинку,    |
Дай мені, дай мені хоч соломинку. |
Плаче, плаче дитина голодна:      |
Мамо, мамо, чому ти холодна?      | (2)

Тридцять третій. Безлюдні поля,
У скорботі німіє земля,
Стиглий колос у полі чорніє,
Україна від голоду мліє.

Приспів.

Сорок сьомий. Холодна зима,
Ні окрайця у хаті нема,
У кутку посивіла дитина,
Пухне з голоду вся Україна.

Приспів','[''pisni.org.ua'', ''cat:holodomor'', ''cat:suspilno-politychni'', ''Пісні про голодомор'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2141012'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2141012','Пам''яті жертв голодоморів','Двадцять перший. На Схід ешелонний
З награбованим хлібом вагони.
Лютий голод, червона чума,
Ні! Прощення такому нема!

Приспів:
Мамо, мамо, дай хоч крихтинку,    |
Дай мені, дай мені хоч соломинку. |
Плаче, плаче дитина голодна:      |
Мамо, мамо, чому ти холодна?      | (2)

Тридцять третій. Безлюдні поля,
У скорботі німіє земля,
Стиглий колос у полі чорніє,
Україна від голоду мліє.

Приспів.

Сорок сьомий. Холодна зима,
Ні окрайця у хаті нема,
У кутку посивіла дитина,
Пухне з голоду вся Україна.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2140716';
DELETE FROM song_versions WHERE song_id = 'pisniua_2140716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2140716';
DELETE FROM songs WHERE id = 'pisniua_2140716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2140716','Зимонька-зима','Музика: Леся Соболевська Слова: Наталія Руда. Виконує: Іринка Ткачик','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ви не знаєте, що сталось?
Що за дивна новина?
Поки всі ви міцно спали,
Вже до нас прийшла зима.

Приспів:
Зима-зимонька весела,
Білі всі міста і села.
І радіє дітвора,
Бо санчат прийшла пора,
Бо санчат прийшла пора.

Одягайтеся хутчіше
І виходьте на поріг.
Подивіться, як красиво!
Всюди білий-білий сніг.

Приспів.

Я санчата приготую,
Нові лижі й ковзани.
Друзям зателефоную,
Щоб збиралися й вони.

Приспів.

Буде сміх дзвінкий лунати
І на гірці, й на льоду.
Ось я так весело й гарно
Час зимовий проведу.

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2140716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2140716','Зимонька-зима','Ви не знаєте, що сталось?
Що за дивна новина?
Поки всі ви міцно спали,
Вже до нас прийшла зима.

Приспів:
Зима-зимонька весела,
Білі всі міста і села.
І радіє дітвора,
Бо санчат прийшла пора,
Бо санчат прийшла пора.

Одягайтеся хутчіше
І виходьте на поріг.
Подивіться, як красиво!
Всюди білий-білий сніг.

Приспів.

Я санчата приготую,
Нові лижі й ковзани.
Друзям зателефоную,
Щоб збиралися й вони.

Приспів.

Буде сміх дзвінкий лунати
І на гірці, й на льоду.
Ось я так весело й гарно
Час зимовий проведу.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2140716_l1','pisniua_2140716','YouTube','https://www.youtube.com/watch?v=s3E2DNw6lUM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2141394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2141394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2141394';
DELETE FROM songs WHERE id = 'pisniua_2141394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2141394','Доньці','Музика: Василь Жданкін Слова: Василь Жданкін. Виконує: Василь Жданкін','uk','ukraine_1991',NULL,NULL,'аудіозапис','* - тяжко розібрати цей рядок','Доню, пташко, квітка дрібная,
Як жити тяжко ти ще не знаєш.
Я не дам тобі срібла,
Я не дам тобі злата,
Ні коштовних каменів,
Ні розкішних палат.
Те, що можу я дати,
Ти не купиш за злато:
Я навчу тебе пісню
Про убогий сад.

Той сад предивний,
Той сад прекрасний,
Не бачені квіти у саду тім,
Той, хто може любити,
Той, хто може прощати,
Той, хто вміє страждати,
Буде жити в нім.

Проста та пісня,
Як скибка хліба.
Та лиш устами
Її марно співати.
Ти ту пісню святую
Проспівай своїм серцем,
Господи, її слухай,*
Бо одійду я...','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2141394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2141394','Доньці','Доню, пташко, квітка дрібная,
Як жити тяжко ти ще не знаєш.
Я не дам тобі срібла,
Я не дам тобі злата,
Ні коштовних каменів,
Ні розкішних палат.
Те, що можу я дати,
Ти не купиш за злато:
Я навчу тебе пісню
Про убогий сад.

Той сад предивний,
Той сад прекрасний,
Не бачені квіти у саду тім,
Той, хто може любити,
Той, хто може прощати,
Той, хто вміє страждати,
Буде жити в нім.

Проста та пісня,
Як скибка хліба.
Та лиш устами
Її марно співати.
Ти ту пісню святую
Проспівай своїм серцем,
Господи, її слухай,*
Бо одійду я...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2141394_l1','pisniua_2141394','YouTube','https://www.youtube.com/watch?v=Ssged_cQHos','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2142596';
DELETE FROM song_versions WHERE song_id = 'pisniua_2142596';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2142596';
DELETE FROM songs WHERE id = 'pisniua_2142596';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2142596','Колискова для доні','Музика: Павло Дворський Слова: Ліна Костенко. Виконує: Павло Дворський','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Дитя моє, ночі безсонні,
Дитя моє, лагідні ранки,
Дитя моє, теплі долоні
І тихі, як сон, колисанки.

Приспів:
Ой, люлі, ой, люленьки-люлі, |
Під вечір злетілися гулі     |
Та й стали думать-гадати,    |
Що доні моїй дарувати.       | (2)

Даруйте їй дні променисті
І дол, і щастя безкрає,
А серце ласкаве і чисте
Вона й сама уже має.

Приспів.

Ой, люлі, ой, люленьки-люлі,
Під вечір злетілися гулі
Та й стали думать-гадати,
Що доні моїй дарувати,
Що доні моїй дарувати...','[''pisni.org.ua'', ''cat:kolyskovi'', ''cat:pro-ditey'', ''Колискові'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2142596'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2142596','Колискова для доні','Дитя моє, ночі безсонні,
Дитя моє, лагідні ранки,
Дитя моє, теплі долоні
І тихі, як сон, колисанки.

Приспів:
Ой, люлі, ой, люленьки-люлі, |
Під вечір злетілися гулі     |
Та й стали думать-гадати,    |
Що доні моїй дарувати.       | (2)

Даруйте їй дні променисті
І дол, і щастя безкрає,
А серце ласкаве і чисте
Вона й сама уже має.

Приспів.

Ой, люлі, ой, люленьки-люлі,
Під вечір злетілися гулі
Та й стали думать-гадати,
Що доні моїй дарувати,
Що доні моїй дарувати...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2142596_l1','pisniua_2142596','YouTube','https://www.youtube.com/watch?v=WGPpXNKc4D4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2141675';
DELETE FROM song_versions WHERE song_id = 'pisniua_2141675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2141675';
DELETE FROM songs WHERE id = 'pisniua_2141675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2141675','Знову разом','Українська народна пісня. Виконує: Віктор Шпортько','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Вечір в небі догорає,
Щось торкнеться у душі струни.
Ти повернешся, я знаю,
Прийдеш з давньої весни.
Та весна подарувала
Нам колись щасливі дні
Зараз серце хоче знову
У ті ночі, що наснилися мені.

Приспів:
Знову ми з тобою разом
І летить нас човен - в сяйві день.
Знову ми з тобою разом,
Серце завмирає од пісень.
Плаче і дзвенить гітара,
В серце лине пісня знов і знов.
Тихо нам шепоче море
І співають зорі, моя любов.

Повертають мене мрії,
Мов птахи летять у синю даль,
Там були у нас з тобою
І кохання, і печаль.
Знов мелодія відверта
Не дає мені заснуть
І звучить для тебе ніжна пісня-ретро,
Що знайшла до тебе путь.

Приспів.

Плаче і дзвенить гітара,
В серце лине пісня про любов.
Тихо нам шепоче море
І співають зорі, моя любов.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2141675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2141675','Знову разом','Вечір в небі догорає,
Щось торкнеться у душі струни.
Ти повернешся, я знаю,
Прийдеш з давньої весни.
Та весна подарувала
Нам колись щасливі дні
Зараз серце хоче знову
У ті ночі, що наснилися мені.

Приспів:
Знову ми з тобою разом
І летить нас човен - в сяйві день.
Знову ми з тобою разом,
Серце завмирає од пісень.
Плаче і дзвенить гітара,
В серце лине пісня знов і знов.
Тихо нам шепоче море
І співають зорі, моя любов.

Повертають мене мрії,
Мов птахи летять у синю даль,
Там були у нас з тобою
І кохання, і печаль.
Знов мелодія відверта
Не дає мені заснуть
І звучить для тебе ніжна пісня-ретро,
Що знайшла до тебе путь.

Приспів.

Плаче і дзвенить гітара,
В серце лине пісня про любов.
Тихо нам шепоче море
І співають зорі, моя любов.');
DELETE FROM song_links WHERE song_id = 'pisniua_2141461';
DELETE FROM song_versions WHERE song_id = 'pisniua_2141461';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2141461';
DELETE FROM songs WHERE id = 'pisniua_2141461';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2141461','Биковня','Музика: Остап Гавриш Слова: Вадим Крищенко. Виконує: Віктор Шпортько','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я не вмію навмання признаватись у любові,
Тільки в серці Биковня, наче квіти малинові
Між дубів і між тополь я собі пройду поволі,
Скільки тут минуло доль і нові знайшлися долі.

Приспів:
Биковня, Биковня, я ходу зупиню,
Гляну в очі твої, пригадаю всі дати.
Биковня, ти дозволь біля твого вогню,
Біля вічного твого вогню постояти.
Биковня, хай відкотить минулого грім
І для щастя зроста твоє древо могутнє,
На дніпровській землі височіє твій дім
І очима добра поглядає в майбутнє!

Не забудуться літа, що котили чорні грози,
Лиш ота земля свята, що ввібрала кров і сльози,
Знову ранок в далині розлива блакитні води,
Бо якраз у Биковні на весь Київ сонце сходить.

Приспів. (2)','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2141461'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2141461','Биковня','Я не вмію навмання признаватись у любові,
Тільки в серці Биковня, наче квіти малинові
Між дубів і між тополь я собі пройду поволі,
Скільки тут минуло доль і нові знайшлися долі.

Приспів:
Биковня, Биковня, я ходу зупиню,
Гляну в очі твої, пригадаю всі дати.
Биковня, ти дозволь біля твого вогню,
Біля вічного твого вогню постояти.
Биковня, хай відкотить минулого грім
І для щастя зроста твоє древо могутнє,
На дніпровській землі височіє твій дім
І очима добра поглядає в майбутнє!

Не забудуться літа, що котили чорні грози,
Лиш ота земля свята, що ввібрала кров і сльози,
Знову ранок в далині розлива блакитні води,
Бо якраз у Биковні на весь Київ сонце сходить.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2141767';
DELETE FROM song_versions WHERE song_id = 'pisniua_2141767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2141767';
DELETE FROM songs WHERE id = 'pisniua_2141767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2141767','Вертайтесь, соколи','Українська народна пісня. Виконує: Іван Мацялко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Розлетілись, мов лелеки, по цілому світу
Наші сестри і брати - України діти.
Залишили свою хату і свою родину,
Пішли щастя пошукати, ген, аж на чужину.

Приспів:
Соколи зі Штатів, Соколи з Канади,
Чекає на вас українська громада.
Дніпро і Дністер, і чарівні Карпати
Вас просять у гості до рідної хати.

Бо на вашій старій хаті гніздяться лелеки,
Свою тугу, свою радість шлють в краї далекі.
Повертайтесь, брати наші, повертайтесь, сестри,
Разом з вами Україна оживе, воскресне!

Приспів. (2)

Оживає рідна мова, ростуть соколята,
Буде кому Україну-неньку прославляти.
Мій далекий любий брате, приїжджай як зможеш!
Поєднай нас всіх на віки, Господи наш Боже!

Приспів.

Соколи зі Штатів, Соколи з Канади!..','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2141767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2141767','Вертайтесь, соколи','Розлетілись, мов лелеки, по цілому світу
Наші сестри і брати - України діти.
Залишили свою хату і свою родину,
Пішли щастя пошукати, ген, аж на чужину.

Приспів:
Соколи зі Штатів, Соколи з Канади,
Чекає на вас українська громада.
Дніпро і Дністер, і чарівні Карпати
Вас просять у гості до рідної хати.

Бо на вашій старій хаті гніздяться лелеки,
Свою тугу, свою радість шлють в краї далекі.
Повертайтесь, брати наші, повертайтесь, сестри,
Разом з вами Україна оживе, воскресне!

Приспів. (2)

Оживає рідна мова, ростуть соколята,
Буде кому Україну-неньку прославляти.
Мій далекий любий брате, приїжджай як зможеш!
Поєднай нас всіх на віки, Господи наш Боже!

Приспів.

Соколи зі Штатів, Соколи з Канади!..');
DELETE FROM song_links WHERE song_id = 'pisniua_214158';
DELETE FROM song_versions WHERE song_id = 'pisniua_214158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_214158';
DELETE FROM songs WHERE id = 'pisniua_214158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_214158','Ганцю, не дримай','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Співаник "Пісні українців Польщі"',NULL,'Ганцю, не дримай, дверка отверай,
Пуст мя на заграду!
Розмария  і лелия на біло преквитала, гей!
Наша Ганичка лем за Яничка би ся видавала.

Ой в лісі, в лісі, в лісі на дубі
Зозуля кукала.
Розмария і лелия на біло преквитала, гей!
Наша Ганичка лем за Яничка би ся видавала.

Так мі повідала (2) мойой Ганички мац.
Же она мі не даст (2) Ганцю за жену взяц.
Розмария і лелия...

Як она мі не даст (2) Ганцю за жену взяц,
Буду я єй дівку (2) з корчмички виганяц.
Розмария і лелия...','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_214158'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_214158','Ганцю, не дримай','Ганцю, не дримай, дверка отверай,
Пуст мя на заграду!
Розмария  і лелия на біло преквитала, гей!
Наша Ганичка лем за Яничка би ся видавала.

Ой в лісі, в лісі, в лісі на дубі
Зозуля кукала.
Розмария і лелия на біло преквитала, гей!
Наша Ганичка лем за Яничка би ся видавала.

Так мі повідала (2) мойой Ганички мац.
Же она мі не даст (2) Ганцю за жену взяц.
Розмария і лелия...

Як она мі не даст (2) Ганцю за жену взяц,
Буду я єй дівку (2) з корчмички виганяц.
Розмария і лелия...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214158_l1','pisniua_214158','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_214267';
DELETE FROM song_versions WHERE song_id = 'pisniua_214267';
DELETE FROM songs_fts WHERE song_id = 'pisniua_214267';
DELETE FROM songs WHERE id = 'pisniua_214267';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_214267','Кед мі пришла карта','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'текст (основа) і акорди - http://lemko.org/lemko/spivanky/6.html','* У тексті правопис частково приведено до сучасного українського: літеру "ы" (див. джерело) замінено на "и". ** Слово "камратя" виправлено на "камаратя".','Кед мі пришла карта нароко- вац,
Став я свого ня-  ня дошиковац:
Встанте, няню, з гро-  бу, зробте таку волю, |
Ідте за ня служиц на ту войну...             |

Не піду я служиц на ту войну,
Ні, не піду служиц я за тебе;
Кед ти пришла карта, іди на воєнку
Ід на войну служиц сам за себе!

Мої камаратя, вчинте волю,
Ідте за ня служиц на ту войну.
Бо я ищи младий и младе дівча мам,
Як ня виручите, вшитко вам дам!

Як мі пришла карта нароковац
Став я музикантів дошиковац;
Гей ви, музиканте, заграйте мі чардаш
Най сой витанцую свій младий час.

Стали музиканте чардаш грати,
Стали мі ся з очи сизи ляти...
Ніхто не заплаче, ні отец, ні матка,
Лем за мном заплачут три дівчатка.

А єдна заплаче, бо я єй брат,
А друга заплаче, бо я єй рад.
А третя заплаче, бо плакати мусит,
Бо она од мене перстен носит.','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:rekrutski'', ''Лемківські пісні'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_214267'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_214267','Кед мі пришла карта','Кед мі пришла карта нароко- вац,
Став я свого ня-  ня дошиковац:
Встанте, няню, з гро-  бу, зробте таку волю, |
Ідте за ня служиц на ту войну...             |

Не піду я служиц на ту войну,
Ні, не піду служиц я за тебе;
Кед ти пришла карта, іди на воєнку
Ід на войну служиц сам за себе!

Мої камаратя, вчинте волю,
Ідте за ня служиц на ту войну.
Бо я ищи младий и младе дівча мам,
Як ня виручите, вшитко вам дам!

Як мі пришла карта нароковац
Став я музикантів дошиковац;
Гей ви, музиканте, заграйте мі чардаш
Най сой витанцую свій младий час.

Стали музиканте чардаш грати,
Стали мі ся з очи сизи ляти...
Ніхто не заплаче, ні отец, ні матка,
Лем за мном заплачут три дівчатка.

А єдна заплаче, бо я єй брат,
А друга заплаче, бо я єй рад.
А третя заплаче, бо плакати мусит,
Бо она од мене перстен носит.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214267_l1','pisniua_214267','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2141379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2141379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2141379';
DELETE FROM songs WHERE id = 'pisniua_2141379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2141379','Народження доньки','Музика: Едуард Драч Слова: Едуард Драч. Виконує: Едуард Драч','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сьогодні у мене весь день відчуття,
Ніби брама небес відчиняється,
І радісне серце на хвилях життя
Зі щастям прийдешнім єднається.
Двом душам дарується третя душа,
Щоби далі їм жити родиною.
Замріяний ангел і тиха свіча
Привітають маленьке дівча.

Приспів:
Народження доньки,
Шумлять міста,
А десь у небесах
Душа її летить,
Летить до нас,
Як білокрилий птах.
Народження доньки,
Зоря стає,
А в ній і я, і ти.
Народження доньки,
Сліз трохи є,
Але від радості.

Вітають малят і щасливих батьків
Ясним сонцем усміхнені вулиці,
А я вже лічу оті дні, як віки,
Що місто і нам посміхнулося.
Та ось в вишині над думками моїми
Твій образ в вікні повстає
Тримаєш, немов неба гомін,
Маленьке дитятко моє.

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2141379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2141379','Народження доньки','Сьогодні у мене весь день відчуття,
Ніби брама небес відчиняється,
І радісне серце на хвилях життя
Зі щастям прийдешнім єднається.
Двом душам дарується третя душа,
Щоби далі їм жити родиною.
Замріяний ангел і тиха свіча
Привітають маленьке дівча.

Приспів:
Народження доньки,
Шумлять міста,
А десь у небесах
Душа її летить,
Летить до нас,
Як білокрилий птах.
Народження доньки,
Зоря стає,
А в ній і я, і ти.
Народження доньки,
Сліз трохи є,
Але від радості.

Вітають малят і щасливих батьків
Ясним сонцем усміхнені вулиці,
А я вже лічу оті дні, як віки,
Що місто і нам посміхнулося.
Та ось в вишині над думками моїми
Твій образ в вікні повстає
Тримаєш, немов неба гомін,
Маленьке дитятко моє.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2142859';
DELETE FROM song_versions WHERE song_id = 'pisniua_2142859';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2142859';
DELETE FROM songs WHERE id = 'pisniua_2142859';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2142859','Мій коханий Київ','Музика: Олександр Осадчий Слова: Борис Чіп. Виконує: Олександр Василенко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Коли подих весни огортає гаї
І наводять веселки мости,
Закипа буйноцвіт, не згаса солов''їнь,
Усміхаєшся молодо ти.
Із очей твоїх щирих зорить доброта
Синявою небес і Дніпра.
І приходить по тих веселкових мостах
Золотого кохання пора.

Приспів:
Київ -
Місто на Дніпровій хвилі,
Київ -
Місто, де живе надія.
Київ,
Ти мені даруєш крила,
Київ,
Мій коханий Київ!

Поринаю в глибінь твоїх сивих віків,
До даоеких слов''янських начал,
Чую серцем бентежним не тільки свій спів,
А й твою полинову печаль.
Я з тобою завжди будні і свята ділю,
До твоїх прихиляюсь надій...
Рідне місто моє, як тебе я люблю,
Ти з дитинства мій сонячний дім!

Приспів','[''pisni.org.ua'', ''cat:kyyiv'', ''Пісні про Київ'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2142859'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2142859','Мій коханий Київ','Коли подих весни огортає гаї
І наводять веселки мости,
Закипа буйноцвіт, не згаса солов''їнь,
Усміхаєшся молодо ти.
Із очей твоїх щирих зорить доброта
Синявою небес і Дніпра.
І приходить по тих веселкових мостах
Золотого кохання пора.

Приспів:
Київ -
Місто на Дніпровій хвилі,
Київ -
Місто, де живе надія.
Київ,
Ти мені даруєш крила,
Київ,
Мій коханий Київ!

Поринаю в глибінь твоїх сивих віків,
До даоеких слов''янських начал,
Чую серцем бентежним не тільки свій спів,
А й твою полинову печаль.
Я з тобою завжди будні і свята ділю,
До твоїх прихиляюсь надій...
Рідне місто моє, як тебе я люблю,
Ти з дитинства мій сонячний дім!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2143175';
DELETE FROM song_versions WHERE song_id = 'pisniua_2143175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2143175';
DELETE FROM songs WHERE id = 'pisniua_2143175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2143175','Скажи, чому','Музика: Павло Дворський Слова: Віктор Герасименко. Виконує: Павло Дворський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'О, Боже мій, яка цвіла в садах весна,
Коли в полон мене навіки ти взяла
І я був твій, а ти - моя,
І я на голос твій летів через моря.

Тепер шукаю, де мені тебе знайти,
За що нас доля розлучила назавжди.
Скажи, чому без тебе я
На цьому світі, як розгублене дитя?

Скажи, чому люблю очей твоїх блакить?
Чому так швидко розтає кохання мить
І голос твій в душі луна,
Хоч і лежить на моїх скронях сивина?

Як жаль, що час, як та ріка, кудись біжить
Та голос твій, як вічна музика, звучить.
Прийди, прийди, тебе молю,
У сни мої, я знов і знов тебе люблю!

О, Боже мій, яка цвіла в садах весна,
Коли в полон мене навіки ти взяла
І я був твій, а ти - моя,
І я на голос твій летів через моря,
І я на голос твій летів через моря!','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2143175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2143175','Скажи, чому','О, Боже мій, яка цвіла в садах весна,
Коли в полон мене навіки ти взяла
І я був твій, а ти - моя,
І я на голос твій летів через моря.

Тепер шукаю, де мені тебе знайти,
За що нас доля розлучила назавжди.
Скажи, чому без тебе я
На цьому світі, як розгублене дитя?

Скажи, чому люблю очей твоїх блакить?
Чому так швидко розтає кохання мить
І голос твій в душі луна,
Хоч і лежить на моїх скронях сивина?

Як жаль, що час, як та ріка, кудись біжить
Та голос твій, як вічна музика, звучить.
Прийди, прийди, тебе молю,
У сни мої, я знов і знов тебе люблю!

О, Боже мій, яка цвіла в садах весна,
Коли в полон мене навіки ти взяла
І я був твій, а ти - моя,
І я на голос твій летів через моря,
І я на голос твій летів через моря!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2143175_l1','pisniua_2143175','YouTube','https://www.youtube.com/watch?v=QMFAzJfphX4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_214457';
DELETE FROM song_versions WHERE song_id = 'pisniua_214457';
DELETE FROM songs_fts WHERE song_id = 'pisniua_214457';
DELETE FROM songs WHERE id = 'pisniua_214457';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_214457','Цвіт України і краса','Музика: Ярослав Ярославенко Слова: Олександр Тисовський','uk','ukraine_1991',NULL,NULL,'В дорогу. Пластовий співаник.- 2-е вид.- Торонто, 1987',NULL,'Цвіт України і краса,
Скобів орлиний ми рід,
Любимо сонце, рух, життя,
Любимо волю і світ.

Пласт — наша гордість і мрія,
Любий Отчизні наш труд,
Буйний в нім порив, надія,
В Пласті росте новий люд.

Приспів: (2)
Браття, пора нам станути в ряд,
Стяг пластовий підійняти,
Славу Вкраїні придбать!

Сонце по небі колує,
Знають і хмари свій шлях,
Вітер невпинно мандрує
По України полях.

Ми ж сонця ясного діти,
Вольного вітру брати,
Мали б в безділлі змарніти,
Цілі життя не знайти?!

Приспів','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:plastovi'', ''Гимни та марші'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_214457'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_214457','Цвіт України і краса','Цвіт України і краса,
Скобів орлиний ми рід,
Любимо сонце, рух, життя,
Любимо волю і світ.

Пласт — наша гордість і мрія,
Любий Отчизні наш труд,
Буйний в нім порив, надія,
В Пласті росте новий люд.

Приспів: (2)
Браття, пора нам станути в ряд,
Стяг пластовий підійняти,
Славу Вкраїні придбать!

Сонце по небі колує,
Знають і хмари свій шлях,
Вітер невпинно мандрує
По України полях.

Ми ж сонця ясного діти,
Вольного вітру брати,
Мали б в безділлі змарніти,
Цілі життя не знайти?!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2142899';
DELETE FROM song_versions WHERE song_id = 'pisniua_2142899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2142899';
DELETE FROM songs WHERE id = 'pisniua_2142899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2142899','Ци ти підеш, ци не підеш','Українська народна пісня. Виконує: Павло Дворський','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ци ти підеш, ци не підеш,
Гей, ци ти підеш за мене?
Бо у мене нич не збира,
Гей, нич охота на тебе.

Кед би мала-с куст талярів, |
Гей, або зо три пари волів, |
То би-с товти мала, мала,   |
Гей, цілу копу фраєрів.     | (2)

Моя мила задрема,
Гей, задремала, я заспав,
Кейси фрасип з капелюха,
Гей, з капелюха перко зняв.

Я сой думав жи то била,     |
Гей, жи то била мила моя,   |
А то била стародавна,       |
Гей, стародавна фраївка.    | (2)

Ци ти підеш, ци не підеш,
Гей, ци ти підеш за мене?
Бо у мене нич не збира,
Гей, нич охота на тебе,
Гей, нич охота на тебе,
Гей, нич охота на тебе!','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2142899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2142899','Ци ти підеш, ци не підеш','Ци ти підеш, ци не підеш,
Гей, ци ти підеш за мене?
Бо у мене нич не збира,
Гей, нич охота на тебе.

Кед би мала-с куст талярів, |
Гей, або зо три пари волів, |
То би-с товти мала, мала,   |
Гей, цілу копу фраєрів.     | (2)

Моя мила задрема,
Гей, задремала, я заспав,
Кейси фрасип з капелюха,
Гей, з капелюха перко зняв.

Я сой думав жи то била,     |
Гей, жи то била мила моя,   |
А то била стародавна,       |
Гей, стародавна фраївка.    | (2)

Ци ти підеш, ци не підеш,
Гей, ци ти підеш за мене?
Бо у мене нич не збира,
Гей, нич охота на тебе,
Гей, нич охота на тебе,
Гей, нич охота на тебе!');
DELETE FROM song_links WHERE song_id = 'pisniua_214410';
DELETE FROM song_versions WHERE song_id = 'pisniua_214410';
DELETE FROM songs_fts WHERE song_id = 'pisniua_214410';
DELETE FROM songs WHERE id = 'pisniua_214410';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_214410','Отче наш','Виконує: Не журись!','uk','ukraine_1991',NULL,NULL,'Звитяга. Книжечка учасника табору.- 2002',NULL,'Отче наш, Отче наш, Отче наш!
Ти, котрий єси на небі,
Нехай святиться ім''я Твоє, Отче наш!

Нехай прийде царство Твоє,
Нехай буде воля Твоя,
Як на небі, так і на землі, Отче наш!

Хліб щоденний наш дай сьогодні нам
І прости нам провини наші,
Як і ми їх прощаємо довжникам нашим.

Отче наш, Отче наш, Отче наш!
І не веди нас у спокусу
Але ізбави нас від лукавого, Отче наш!','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:plastovi'', ''Церковні пісні'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_214410'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_214410','Отче наш','Отче наш, Отче наш, Отче наш!
Ти, котрий єси на небі,
Нехай святиться ім''я Твоє, Отче наш!

Нехай прийде царство Твоє,
Нехай буде воля Твоя,
Як на небі, так і на землі, Отче наш!

Хліб щоденний наш дай сьогодні нам
І прости нам провини наші,
Як і ми їх прощаємо довжникам нашим.

Отче наш, Отче наш, Отче наш!
І не веди нас у спокусу
Але ізбави нас від лукавого, Отче наш!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214410_l1','pisniua_214410','YouTube','https://www.youtube.com/watch?v=C8YzoJr0-7M','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214410_l2','pisniua_214410','YouTube','https://www.youtube.com/watch?v=Unn0kbRKvcA','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2140777';
DELETE FROM song_versions WHERE song_id = 'pisniua_2140777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2140777';
DELETE FROM songs WHERE id = 'pisniua_2140777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2140777','Буковино ти зелена','(Буковино ляно). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Буковино, ти зелена,
На три части поділена.

Куди ходжу, куди броджу,
Та нічого не знаходжу.

Лиш знайшов я три листочки
З зеленої калиночки.

Один зірву та заграю,
Батька й матері не маю.

Другий зірву та заграю,
Братів й сестер я не маю.

Третій зірву та заграю,
Я в неволі пропадаю.

Я й не воваль, й не родина,
Плаче серце, як дитина.

Плаче й плаче, має чого,
Нема правди ні від кого.

Нема правди та не буде,
Пішла правда поміж люди.

Пішла правда між горами,
Лиш неправда межи нами.','[''pisni.org.ua'', ''cat:halycki'', ''Пісні з Галичини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2140777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2140777','Буковино ти зелена','Буковино, ти зелена,
На три части поділена.

Куди ходжу, куди броджу,
Та нічого не знаходжу.

Лиш знайшов я три листочки
З зеленої калиночки.

Один зірву та заграю,
Батька й матері не маю.

Другий зірву та заграю,
Братів й сестер я не маю.

Третій зірву та заграю,
Я в неволі пропадаю.

Я й не воваль, й не родина,
Плаче серце, як дитина.

Плаче й плаче, має чого,
Нема правди ні від кого.

Нема правди та не буде,
Пішла правда поміж люди.

Пішла правда між горами,
Лиш неправда межи нами.');
DELETE FROM song_links WHERE song_id = 'pisniua_2144910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2144910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2144910';
DELETE FROM songs WHERE id = 'pisniua_2144910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2144910','В Молодятині над лісом','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,'Пісня про боївку СБ УПА, командиром якої був Степан Козьмин "Левко". Інші псевда - реальні стрільців сотні "Спартана". Молодятин- село Коломийського р-ну Івано-Франківської обл.','В Молодятині над лісом
Постелився синій дим.
Там повстанці вогонь клали,
Щоб погрітися над ним.

То була Левка боївка
Гріли руки на вогні.
Тут призрів стрілець Калина,
Що іде хтось по горі.

То ішли кацапи дикі,
За слідом, що вів у ліс.
Крикнув Левко: "Биймо, хлопці,
Щоб кацап сюда не ліз!"

Хлопці скидали ґранати,
Вітер снігом завівав.
Він курив кацапам в очі
Мов повстанців рятував.

Впав у бою стрілець Крига,
Впав у бою тай лежить.
А по снігу кров''ю пише,
Що йому уже не жить.

Старий батько як учув це
З кулеметом в ліс біжить.
Він приходить на те місце -
Його син вбитий лежить.','[''pisni.org.ua'', ''cat:istorychni'', ''cat:povstanski'', ''Історичні пісні'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2144910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2144910','В Молодятині над лісом','В Молодятині над лісом
Постелився синій дим.
Там повстанці вогонь клали,
Щоб погрітися над ним.

То була Левка боївка
Гріли руки на вогні.
Тут призрів стрілець Калина,
Що іде хтось по горі.

То ішли кацапи дикі,
За слідом, що вів у ліс.
Крикнув Левко: "Биймо, хлопці,
Щоб кацап сюда не ліз!"

Хлопці скидали ґранати,
Вітер снігом завівав.
Він курив кацапам в очі
Мов повстанців рятував.

Впав у бою стрілець Крига,
Впав у бою тай лежить.
А по снігу кров''ю пише,
Що йому уже не жить.

Старий батько як учув це
З кулеметом в ліс біжить.
Він приходить на те місце -
Його син вбитий лежить.');
DELETE FROM song_links WHERE song_id = 'pisniua_214471';
DELETE FROM song_versions WHERE song_id = 'pisniua_214471';
DELETE FROM songs_fts WHERE song_id = 'pisniua_214471';
DELETE FROM songs WHERE id = 'pisniua_214471';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_214471','Пісня про мову','Музика: Ярослав Юрчишин Слова: Ярослав Юрчишин. Виконує: Ярослав Юрчишин','uk','ukraine_1991',NULL,'1999','Співаник Українського Лицаря. Видання Куреня УСП ч.15 "Орден Залізної Остроги" ім. Святослава Завойовника Пласту – НСОУ.– Київ: Українська Видавнича Спілка, 2006.– 104 с.','Акорди додав автор пісні. "Пісня написана в 1999 році в селі Сприня Старосамбірського району Львівської області під час проведення першого Збору молодіжних національно-патріотичних організацій Львівщини з нагоди 55­ї річниці утворення УГВР. На цьому зборі було ініційовано вдалу молодіжну кампанію "Молодь проти русифікації", результатом якої стала заборона Головою львівської обласної держадміністрації трансляції першого російськомовного FM­радіо на території Львівщини. Тоді Славко ще був активістом "Молодої Просвіти"... (Джерело: Співаник Українського Лицаря, 2006)','Хай щастя не вічне,  а життя скороплинне,
Ой, роде мій красний,  не скорочуй його.
Немає держави,  малої країни,
Яка б відцуралась  від слова свого.
Хай спливають роки,  виростають діти.
Та не можна свого   чужим замінити.

Все тільки найкраще з усієї планети
У мову впадає, немов ті потічки.
Навіщо ж міняти слово наших поетів
На річку, якою нам в безвість пливти?

Як іскриться вода, дно все глибше зникає.
Найрідніша ріка зцілить, що відмирає.

Та раптом міліти наша річка почала,
Із річки чужої попала вода.
Вона непогана, та нас роз''єднала,
Та нас поділила на табори два.

І нема щастя нам, ой, та на цім світі -
Різними мовами розмовляють одних батьків діти.

Ой, чистити треба стрімку мову-річку
Від намулу-бруду з чужих берегів.
Бо діти маленькі як вип''ють водички,
Забудуть про славу дідів-прабатьків.

Ти, юначе, не стій, ой, не стій, ради Бога.
В бій запеклий вступай, поки не збили з дороги.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:pisni-pro-movy'', ''Бардівські пісні'', ''Пісні про рідну мову'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_214471'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_214471','Пісня про мову','Хай щастя не вічне,  а життя скороплинне,
Ой, роде мій красний,  не скорочуй його.
Немає держави,  малої країни,
Яка б відцуралась  від слова свого.
Хай спливають роки,  виростають діти.
Та не можна свого   чужим замінити.

Все тільки найкраще з усієї планети
У мову впадає, немов ті потічки.
Навіщо ж міняти слово наших поетів
На річку, якою нам в безвість пливти?

Як іскриться вода, дно все глибше зникає.
Найрідніша ріка зцілить, що відмирає.

Та раптом міліти наша річка почала,
Із річки чужої попала вода.
Вона непогана, та нас роз''єднала,
Та нас поділила на табори два.

І нема щастя нам, ой, та на цім світі -
Різними мовами розмовляють одних батьків діти.

Ой, чистити треба стрімку мову-річку
Від намулу-бруду з чужих берегів.
Бо діти маленькі як вип''ють водички,
Забудуть про славу дідів-прабатьків.

Ти, юначе, не стій, ой, не стій, ради Бога.
В бій запеклий вступай, поки не збили з дороги.');
DELETE FROM song_links WHERE song_id = 'pisniua_214328';
DELETE FROM song_versions WHERE song_id = 'pisniua_214328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_214328';
DELETE FROM songs WHERE id = 'pisniua_214328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_214328','Марш "Леґіону"','Музика: Ярослав Юрчишин, Богдан Кухарук Слова: Ярослав Юрчишин, Богдан Кухарук. Виконує: Ярослав Юрчишин, Богдан Кухарук','uk','ukraine_1991',NULL,'2001','1. Звитяга. Книжечка учасника табору.- 2002 2. Співаник Українського Лицаря. Видання Куреня УСП ч.15 “Орден Залізної Остроги” ім. Святослава Завойовника Пласту – НСОУ.– Київ: Українська Видавнича Спілка, 2006.– 104 с.','* 2 останні рядки кожного куплету - двічі. "Слова і музика старшого пластуна Ярослава Юрчишина та старшого пластуна-скоба Богдана Кухарука з "Ордену Залізної Остроги". Марш складений під час проведення всеукраїнського пластового табору військового пластування "Леґіон" 14 серпня 2001 року в селі Лаврів Старосамбірського району Львівської області." (Джерело: Співаник Українського Лицаря, 2006)','Вже не скажуть "діти" про нас,
Стати воїном прийшов час.
Переконані, це не сон,
Є надійний шлях — "Леґіон".  *

Не будемо плакать, ридать —
Переможем ворожу рать.
Стиснемо міцніш автомат,
Лиш вперед, ні кроку назад.

Вигнати раба із сердець
Допоможе Золотий Хрест,
А червоно-чорний наш стяг
Поведе до нових звитяг.

Хай щодня міцніє рука,
Вишкільна стежа не легка.
Але щоб мети досягти,
Сили в собі мусиш знайти.

Віримо у те, за що клав
Голову свою Святослав.
Не існує слова полон,
Для тих, хто пройшов "Леґіон"!

Воїна ми шляхом підем,
"Леґіону" стяг піднесем.
Й понесем в життя круговерть —
Гасло "Перемога або смерть!"','[''pisni.org.ua'', ''cat:bardivski'', ''cat:himny-marshi'', ''cat:plastovi'', ''Бардівські пісні'', ''Гимни та марші'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_214328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_214328','Марш "Леґіону"','Вже не скажуть "діти" про нас,
Стати воїном прийшов час.
Переконані, це не сон,
Є надійний шлях — "Леґіон".  *

Не будемо плакать, ридать —
Переможем ворожу рать.
Стиснемо міцніш автомат,
Лиш вперед, ні кроку назад.

Вигнати раба із сердець
Допоможе Золотий Хрест,
А червоно-чорний наш стяг
Поведе до нових звитяг.

Хай щодня міцніє рука,
Вишкільна стежа не легка.
Але щоб мети досягти,
Сили в собі мусиш знайти.

Віримо у те, за що клав
Голову свою Святослав.
Не існує слова полон,
Для тих, хто пройшов "Леґіон"!

Воїна ми шляхом підем,
"Леґіону" стяг піднесем.
Й понесем в життя круговерть —
Гасло "Перемога або смерть!"');
DELETE FROM song_links WHERE song_id = 'pisniua_2144890';
DELETE FROM song_versions WHERE song_id = 'pisniua_2144890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2144890';
DELETE FROM songs WHERE id = 'pisniua_2144890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2144890','Чи чуєш ти, друже мій милий?','(Як були ми ще дітьми). Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,'Була популярна під час боротьби УПА в Коломийському р-ні Івано-Франківської обл.','Чи чуєш ти друже мій милий,
Чи чуєш той брязкіт кайдан.
Як нарід по тюрмах наш бідує,
А скільки терпіння і ран.

Чи бачиш жита половіють —
Ти сієш воно не твоє.
А ворог проклятий забирає
І працю ту нашу клює.

Вдень воріг до тебе сміється,
А вночі кайдани клює.
Чи бачиш жита половіють
Ти сієш воно не твоє.

Чи бачиш Дніпро висихає
Карпати шуміти стають.
Зозульки по деревах сідають
Недолю Україні кують.

Як були ми дітьми ще малими,
То в серці сказали собі —
Для тебе живемо, Україно,
Щоб волю здобути тобі.

Не тішся вороже проклятий,
Що буде Україна твоя.
Ще прийде той час, та хвилина,
Ще прийде заплата твоя.

Ще прийде той час, та година,
Ще прийдуть розплатнії дні,
Що блиснуть по всій Україні,
Що блиснуть повстання страшні.','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2144890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2144890','Чи чуєш ти, друже мій милий?','Чи чуєш ти друже мій милий,
Чи чуєш той брязкіт кайдан.
Як нарід по тюрмах наш бідує,
А скільки терпіння і ран.

Чи бачиш жита половіють —
Ти сієш воно не твоє.
А ворог проклятий забирає
І працю ту нашу клює.

Вдень воріг до тебе сміється,
А вночі кайдани клює.
Чи бачиш жита половіють
Ти сієш воно не твоє.

Чи бачиш Дніпро висихає
Карпати шуміти стають.
Зозульки по деревах сідають
Недолю Україні кують.

Як були ми дітьми ще малими,
То в серці сказали собі —
Для тебе живемо, Україно,
Щоб волю здобути тобі.

Не тішся вороже проклятий,
Що буде Україна твоя.
Ще прийде той час, та хвилина,
Ще прийде заплата твоя.

Ще прийде той час, та година,
Ще прийдуть розплатнії дні,
Що блиснуть по всій Україні,
Що блиснуть повстання страшні.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2144890_l1','pisniua_2144890','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2144515';
DELETE FROM song_versions WHERE song_id = 'pisniua_2144515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2144515';
DELETE FROM songs WHERE id = 'pisniua_2144515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2144515','Ніч','Музика: Роман Іваненко Слова: Валентина Полинок. Виконує: Оксана Голуб','uk','ukraine_1991',NULL,NULL,'Продюсер',NULL,'Ніч...
Гасить вогні
Тиші рука.
Час...
Плине між нас
Ніби ріка.
Весно! Яви...
Зоряні сни
І поверни
Сонце мені.

Стих...
Гомін струни,
Змовкли слова.
Гнів...
Смуток і сміх
Впали в правах.
Ніч перейду,
Бо знаю лиш я,
Що є на Землі
Ніжність твоя.

Там...
Сходить з надій
Квітка зорі.
День!..
Миле ім''я
Мені повтори.
Знову світають
Всі барви Землі,
Ранок летить
На пташинім крилі,
Вийдем на зустріч
Сонячним дням.
Доля ясна
Засвітиться нам','[''pisni.org.ua'', ''cat:all-ukraine'', ''Загальноукраїнські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2144515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2144515','Ніч','Ніч...
Гасить вогні
Тиші рука.
Час...
Плине між нас
Ніби ріка.
Весно! Яви...
Зоряні сни
І поверни
Сонце мені.

Стих...
Гомін струни,
Змовкли слова.
Гнів...
Смуток і сміх
Впали в правах.
Ніч перейду,
Бо знаю лиш я,
Що є на Землі
Ніжність твоя.

Там...
Сходить з надій
Квітка зорі.
День!..
Миле ім''я
Мені повтори.
Знову світають
Всі барви Землі,
Ранок летить
На пташинім крилі,
Вийдем на зустріч
Сонячним дням.
Доля ясна
Засвітиться нам');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2144515_l1','pisniua_2144515','YouTube','https://www.youtube.com/watch?v=Zd_M4C8dJz4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2144515_l2','pisniua_2144515','YouTube','https://www.youtube.com/watch?v=Mel7im2NvSA','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2144515_l3','pisniua_2144515','YouTube','https://www.youtube.com/watch?v=crFA1a4MkEc','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2144515_l4','pisniua_2144515','YouTube','https://www.youtube.com/watch?v=EZJ5mPnqm5s','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_2147675';
DELETE FROM song_versions WHERE song_id = 'pisniua_2147675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2147675';
DELETE FROM songs WHERE id = 'pisniua_2147675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2147675','Пісня про Новий Рік','Музика: Наталія Май Слова: Наталія Май. Виконує: Василечки','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'За вікном, за вікном падають сніжинки,
Ти, матусю, стели білу скатертинку
І ялинку гуртом будем прикрашати,
Новий Рік, Новий Рік вже у нашій хаті!

Новий Рік, Новий Рік вже у нашій хаті!
Новий Рік, Новий Рік вже у нашій хаті!

Білий сніг, білий сніг по землі кружляє,
А ялиночка в нас вогниками сяє,
У таночок пішли хлопці і дівчата,
Новий Рік, Новий Рік вже у нашій хаті!

Новий Рік, Новий Рік вже у нашій хаті!
Новий Рік, Новий Рік вже у нашій хаті!

Новий Рік, Новий Рік вже у нашій хаті!
Новий Рік, Новий Рік вже у нашій хаті!','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:new-year'', ''Дитячі пісні'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2147675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2147675','Пісня про Новий Рік','За вікном, за вікном падають сніжинки,
Ти, матусю, стели білу скатертинку
І ялинку гуртом будем прикрашати,
Новий Рік, Новий Рік вже у нашій хаті!

Новий Рік, Новий Рік вже у нашій хаті!
Новий Рік, Новий Рік вже у нашій хаті!

Білий сніг, білий сніг по землі кружляє,
А ялиночка в нас вогниками сяє,
У таночок пішли хлопці і дівчата,
Новий Рік, Новий Рік вже у нашій хаті!

Новий Рік, Новий Рік вже у нашій хаті!
Новий Рік, Новий Рік вже у нашій хаті!

Новий Рік, Новий Рік вже у нашій хаті!
Новий Рік, Новий Рік вже у нашій хаті!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2147675_l1','pisniua_2147675','YouTube','https://www.youtube.com/watch?v=ffufsxQPirk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2147675_l2','pisniua_2147675','YouTube','https://www.youtube.com/watch?v=PpACinBPTbM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2143495';
DELETE FROM song_versions WHERE song_id = 'pisniua_2143495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2143495';
DELETE FROM songs WHERE id = 'pisniua_2143495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2143495','Рідна школа','Виконує: Павло Мрежук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Багряним цвітом осінь засила,
Мене до школи мати повела,
І зустріча у рідній школі нас
Наш світлий незабутній перший клас.
Тоді до школи бігли залюбки,
Та, як весна, промчали ті роки.
Але у серці спогад не погас
Про рідну школу і про перший клас.

Приспів:
Та рідна школа в нашому селі,
Над нею знов кружляють журавлі,
Пора осіння кличе, кличе нас
В далекий незабутній перший клас.

Роки минають, вчителько моя,
В душі не гасне усмішка твоя.
Моє життя, як небо голубе,
В житті я часто згадую тебе.
Дарую квіти вчительці своїй
І серця поклик сповнений надій,
Бо вдячний я за все, що нам дали
У рідній школі в нашому селі.

Приспів. (2)','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2143495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2143495','Рідна школа','Багряним цвітом осінь засила,
Мене до школи мати повела,
І зустріча у рідній школі нас
Наш світлий незабутній перший клас.
Тоді до школи бігли залюбки,
Та, як весна, промчали ті роки.
Але у серці спогад не погас
Про рідну школу і про перший клас.

Приспів:
Та рідна школа в нашому селі,
Над нею знов кружляють журавлі,
Пора осіння кличе, кличе нас
В далекий незабутній перший клас.

Роки минають, вчителько моя,
В душі не гасне усмішка твоя.
Моє життя, як небо голубе,
В житті я часто згадую тебе.
Дарую квіти вчительці своїй
І серця поклик сповнений надій,
Бо вдячний я за все, що нам дали
У рідній школі в нашому селі.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2145717';
DELETE FROM song_versions WHERE song_id = 'pisniua_2145717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2145717';
DELETE FROM songs WHERE id = 'pisniua_2145717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2145717','Чумак воли завертає','Українська народна пісня. Виконує: Очеретяний кіт','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Гей, чумак воли завертає,
Нові ярма надіває,
Сірі воли запрягає,
Гей, у Крим по сіль поїжджає,
Жінку вдома оставляє,
Жінку вдома оставляє...

Гей, оставайся, жінко, вдома,
Рубай дрова до порога,
А солому до ослона,
Гей, соломою в печі топить,
Горшечками воду носить,
А в сусіди солі просить...

Гей, сусідочки-голубочки,
Дайте солі два дрібочки,
Научайте свої дочки,
Гей, щоб по ночах не ходили,
Чумаченьків не любили,
Чумаченьків не любили...

Гей, чумак зиму п''є,
Зиму п''є, гуляє,
Прийде літо - покидає,
Сам в дорозі пропадає,
Сам в дорозі пропадає...','[''pisni.org.ua'', ''cat:chumacki'', ''cat:socialno-pobutovi'', ''Чумацькі пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2145717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2145717','Чумак воли завертає','Гей, чумак воли завертає,
Нові ярма надіває,
Сірі воли запрягає,
Гей, у Крим по сіль поїжджає,
Жінку вдома оставляє,
Жінку вдома оставляє...

Гей, оставайся, жінко, вдома,
Рубай дрова до порога,
А солому до ослона,
Гей, соломою в печі топить,
Горшечками воду носить,
А в сусіди солі просить...

Гей, сусідочки-голубочки,
Дайте солі два дрібочки,
Научайте свої дочки,
Гей, щоб по ночах не ходили,
Чумаченьків не любили,
Чумаченьків не любили...

Гей, чумак зиму п''є,
Зиму п''є, гуляє,
Прийде літо - покидає,
Сам в дорозі пропадає,
Сам в дорозі пропадає...');
DELETE FROM song_links WHERE song_id = 'pisniua_214495';
DELETE FROM song_versions WHERE song_id = 'pisniua_214495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_214495';
DELETE FROM songs WHERE id = 'pisniua_214495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_214495','Брехунець','Музика: Андрій Панчишин Слова: Андрій Панчишин. Виконує: Не журись!','uk','ukraine_1991',NULL,NULL,'записано на слух з аудіо','Інформацію про авторство пісні надав Віктор Морозов (http://www.mo-productions.com) Підбір акордів: bohdanko','Вступ:  Dm A7  (2)

Від народження брехати
А тепер настав кінець
Gm
Захлинається від правди
Мій кухонний брехунець.

Приспів:
Брехунець, брехунець,
Ой, брехунець.

Вже від правди вухо в''яне.
Навіть у програмі "Час"
Кажуть: "В них не все погано,
І не все прекрасно в нас."

Приспів.

"Бюрократії тенета...
І бракує ковбаси..." -
Розкричалися газети,
Як ворожі голоси.

Приспів.

Правда справа, правда зліва,
Правда з-над і правда з-під...
Епідемія правдива,
Небезпечніша за "СПІД".

Приспів.

Всі на правді подуріли,
Хоч не виходи надвір.
Я б відправив потерпілих
Лікуватися в Сибір.

Приспів.

Нелегкі часи настали;
Але це ще не кінець.
Нас не так уже і мало -
Причаївся брехунець.

Приспів.

Ще згорить Перебудова
У пекельному вогні,
І тоді настане знову
Царство світлої брехні.

Приспів.

Приспів 2:
Брехунець, брехунець...
Хто... Брехунець.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:suspilno-politychni'', ''Бардівські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_214495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_214495','Брехунець','Вступ:  Dm A7  (2)

Від народження брехати
А тепер настав кінець
Gm
Захлинається від правди
Мій кухонний брехунець.

Приспів:
Брехунець, брехунець,
Ой, брехунець.

Вже від правди вухо в''яне.
Навіть у програмі "Час"
Кажуть: "В них не все погано,
І не все прекрасно в нас."

Приспів.

"Бюрократії тенета...
І бракує ковбаси..." -
Розкричалися газети,
Як ворожі голоси.

Приспів.

Правда справа, правда зліва,
Правда з-над і правда з-під...
Епідемія правдива,
Небезпечніша за "СПІД".

Приспів.

Всі на правді подуріли,
Хоч не виходи надвір.
Я б відправив потерпілих
Лікуватися в Сибір.

Приспів.

Нелегкі часи настали;
Але це ще не кінець.
Нас не так уже і мало -
Причаївся брехунець.

Приспів.

Ще згорить Перебудова
У пекельному вогні,
І тоді настане знову
Царство світлої брехні.

Приспів.

Приспів 2:
Брехунець, брехунець...
Хто... Брехунець.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214495_l1','pisniua_214495','YouTube','https://www.youtube.com/watch?v=e88zZQHo0UU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214495_l2','pisniua_214495','YouTube','https://www.youtube.com/watch?v=jQkUmDGHCWQ','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2145216';
DELETE FROM song_versions WHERE song_id = 'pisniua_2145216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2145216';
DELETE FROM songs WHERE id = 'pisniua_2145216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2145216','Ой, гуп, тіда-ріда','Музика: народ Слова: народ','uk','ukraine_before_1917',NULL,NULL,'Мої бабуся і мама з Тернопільщини',NULL,'Ой, гуп, тіда-ріда,
Відрізала баба в діда,
Та й повісила на кілок,
Щоб не бігав до дівок.

Ой, гуп, тіда-ріда,
Відрізала баба в діда,
Та й повісила на кілок,
Щоб не бігав до дівок.

Ой, гуп, тіда-ріда,
Відрізала баба в діда,
Та й повісила на кілок,
Щоб не бігав до дівок.','[''pisni.org.ua'', ''cat:podilski'', ''Пісні з Поділля'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2145216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2145216','Ой, гуп, тіда-ріда','Ой, гуп, тіда-ріда,
Відрізала баба в діда,
Та й повісила на кілок,
Щоб не бігав до дівок.

Ой, гуп, тіда-ріда,
Відрізала баба в діда,
Та й повісила на кілок,
Щоб не бігав до дівок.

Ой, гуп, тіда-ріда,
Відрізала баба в діда,
Та й повісила на кілок,
Щоб не бігав до дівок.');
DELETE FROM song_links WHERE song_id = 'pisniua_2145111';
DELETE FROM song_versions WHERE song_id = 'pisniua_2145111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2145111';
DELETE FROM songs WHERE id = 'pisniua_2145111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2145111','Віра, Надія, Любов','Музика: Надія Косяк Слова: Надія Косяк. Виконує: Надія Косяк','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Живе в моїм серці Надія,
Що щастя зумію знайти.
Вона додає мені сили,
Коли я лечу до мети.
Я в друзях ціную надійність
Й прощаю своїх ворогів,
Я тільки на себе надіюсь
Й на те, що Господь заповів.

Приспів:
Любов дарує душі моїй крила,
Від щастя до неба злітає вона
І світло яскраве її незгасиме
Чарує довкола усіх, як весна.
Віру, Надію, Любов нам небеса дарували!
Віра, Надія, Любов завжди нам допомагали!
Віра, Надія, Любов в серці ніколи не згасне!
Віра, Надія, Любов - то наше справжнє багатство!

І все, що від Бога дається,
Нам з Вірою треба пройти,
І доля тому лиш всміхнеться,
Хто впевнено йде до мети.
Ми в світ цей приходим для того,
Щоб щось тут на краще змінить,
Щоб нашим нащадкам з любов''ю,
Надією й вірою жить.

Приспів','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2145111'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2145111','Віра, Надія, Любов','Живе в моїм серці Надія,
Що щастя зумію знайти.
Вона додає мені сили,
Коли я лечу до мети.
Я в друзях ціную надійність
Й прощаю своїх ворогів,
Я тільки на себе надіюсь
Й на те, що Господь заповів.

Приспів:
Любов дарує душі моїй крила,
Від щастя до неба злітає вона
І світло яскраве її незгасиме
Чарує довкола усіх, як весна.
Віру, Надію, Любов нам небеса дарували!
Віра, Надія, Любов завжди нам допомагали!
Віра, Надія, Любов в серці ніколи не згасне!
Віра, Надія, Любов - то наше справжнє багатство!

І все, що від Бога дається,
Нам з Вірою треба пройти,
І доля тому лиш всміхнеться,
Хто впевнено йде до мети.
Ми в світ цей приходим для того,
Щоб щось тут на краще змінить,
Щоб нашим нащадкам з любов''ю,
Надією й вірою жить.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_214694';
DELETE FROM song_versions WHERE song_id = 'pisniua_214694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_214694';
DELETE FROM songs WHERE id = 'pisniua_214694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_214694','Підманула','(Ти казала в понеділок). Українська народна пісня. Виконує: Воплі Відоплясова','uk','ukraine_before_1917',NULL,NULL,'http://www.vopli.com/ru_web/02/fayno/fayno_main.htm','Стиль: Український етно-рок','Ти казала в понеділок
Підем разом по барвінок.
Я прийшов тебе нема,
Підманула, підвела.

Приспів:
Ти ж мене підманула,
Ти ж мене підвела,
Ти ж мене молодого
З ума-розуму звела.

Ти казала у вівторок
Поцілуєш разів сорок
Я прийшов тебе нема,
Підманула, підвела.

Ти казала у п''ятницю
Даш залізти під спідницю,
Я прийшов тебе нема,
Підманула, підвела.

Ти призналась по траві,
Що у тебе грудей три
Перевірив там одна,
Підманула, підвела

Ти казала в мерседі
Будеш всім давать по черзі.
Я прийшов, а там менти.
Знову підманула ти.

Ти казала на тусє
Будем слухати Vе.Vе.
Я прийшов, а там попса,
Підманула підвела.

Довго листувались ми,
Я тоді сидів в тюрмі.
Вийшов, тобі сорок два,
Мабуть, знову сяду я.

Ми зустрілися на чаті,
Ти мені назвалась Катьой,
А насправді ти Іван,
Ах, який ти хуліган!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_214694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_214694','Підманула','Ти казала в понеділок
Підем разом по барвінок.
Я прийшов тебе нема,
Підманула, підвела.

Приспів:
Ти ж мене підманула,
Ти ж мене підвела,
Ти ж мене молодого
З ума-розуму звела.

Ти казала у вівторок
Поцілуєш разів сорок
Я прийшов тебе нема,
Підманула, підвела.

Ти казала у п''ятницю
Даш залізти під спідницю,
Я прийшов тебе нема,
Підманула, підвела.

Ти призналась по траві,
Що у тебе грудей три
Перевірив там одна,
Підманула, підвела

Ти казала в мерседі
Будеш всім давать по черзі.
Я прийшов, а там менти.
Знову підманула ти.

Ти казала на тусє
Будем слухати Vе.Vе.
Я прийшов, а там попса,
Підманула підвела.

Довго листувались ми,
Я тоді сидів в тюрмі.
Вийшов, тобі сорок два,
Мабуть, знову сяду я.

Ми зустрілися на чаті,
Ти мені назвалась Катьой,
А насправді ти Іван,
Ах, який ти хуліган!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214694_l1','pisniua_214694','YouTube','https://www.youtube.com/watch?v=awuG3RVBVHQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214694_l2','pisniua_214694','YouTube','https://www.youtube.com/watch?v=osvjOPrnuL8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214694_l3','pisniua_214694','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2147055';
DELETE FROM song_versions WHERE song_id = 'pisniua_2147055';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2147055';
DELETE FROM songs WHERE id = 'pisniua_2147055';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2147055','Офіцери, панове...','Музика: Олександр Злотник Слова: Володимир Мельников. Виконує: Павло Зібров','uk','ukraine_1991',NULL,NULL,'Авторське подання','Пісня "Офіцери, панове" у виконанні народного артиста України Павла Зіброва на слова заслуженого діяча мистецтв України Володимира Мельникова та музику народного артиста України, заслуженого діяча мистецтв України Олександра Злотника присвячена усім офіцерам України. Пісня "народилася" завдяки проекту щодо створення циклу патріотичних пісень, присвячених людям у погонах, який ініціював Наливайченко Валентин Олександрович, а організаційно очолив генерал- майор Кондратюк Валерій Віталійович - керівник апарату Голови Служби безпеки України. Аранжування заслуженого артиста України Сергія Коваля. Фонограму-мінус можна взяти на сторінці пісні Офіцерам безпеки','Він був кращим завжди, присягнувши служити народу,
Як дитина радів, "обмиваючи" перші зірки...
Не зганьбив свою честь, і останню його нагороду,
Не ховаючи сліз, вже приймали старенькі батьки...

Приспів:
Офіцери, панове! Тільки зрадників ви не прощали...
У душі - лейтенанти, хоча сивина біля скронь...
Офіцери, панове! Ви країну свою захищали
І, втрачаючи друзів, долали підступний вогонь.

Він ще вчора казав: "Маю честь Україні служити",
Де могили святі, а в землі - пуповина моя...
Це, йому завдяки, на землі я продовжую жити
І слова "Маю честь!" разом з вами повторюю я!

Приспів','[''pisni.org.ua'', ''cat:viyskovi'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2147055'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2147055','Офіцери, панове...','Він був кращим завжди, присягнувши служити народу,
Як дитина радів, "обмиваючи" перші зірки...
Не зганьбив свою честь, і останню його нагороду,
Не ховаючи сліз, вже приймали старенькі батьки...

Приспів:
Офіцери, панове! Тільки зрадників ви не прощали...
У душі - лейтенанти, хоча сивина біля скронь...
Офіцери, панове! Ви країну свою захищали
І, втрачаючи друзів, долали підступний вогонь.

Він ще вчора казав: "Маю честь Україні служити",
Де могили святі, а в землі - пуповина моя...
Це, йому завдяки, на землі я продовжую жити
І слова "Маю честь!" разом з вами повторюю я!

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2147055_l1','pisniua_2147055','YouTube','https://www.youtube.com/watch?v=5dnpy5bds-E','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_214869';
DELETE FROM song_versions WHERE song_id = 'pisniua_214869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_214869';
DELETE FROM songs WHERE id = 'pisniua_214869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_214869','Гей, хлопці, в коло','(Гей, хлопці, в коло станьмо бадьоро). Українська народна пісня. Виконує: Вогневир','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,'Хто Матір забуває, того Бог карає. Тарас Шевченко Іще живі та здорові Всі Родичі Гарбузові.','Гей Хлопці в коло станьмо бадьоро
Пісню нову заспіваймо
Ми молодії Хлопці лісовії           |
Змолоду світа вживаймо              | (2)

Нам не страшная і праця тяжкая
Ми не боїмось нічого
Ані тої слоти ані роботи            |
Ані морозу страшного                | (2)

Бо при роботі піт залляє очі
Дощ біле тіло обмиє
Вітер обсушить мороз нас не зрушить |
В тім наше тіло свіжіє              | (2)

В УПА служити кулемет носити
І мандрувати по світу
Ми молодії Хлопці лісовії           |
Скрізь нам дороги відкрито          | (2)

Варіант 2:

Гей, хлопці, в коло станьмо бадьоро,
Пісню нову заспіваймо,
Ми молодії, хлопці лісовії, |
З молоду світа вживаймо.    |(2)

Ми молодії хлопці лісовії
Не боїмося нічого,
Ані тої слоти, ані роботи, |
Ані морозу важкого.        |(2)

Бо при роботі піт заллє очі,
Дощ біле тіло обмиє,
Вітер обсушить, а мороз не рушить, |
Тим наше тіло свіжіє.              |(2)

При УПА служити, кулемет носити
І мандрувати край світа...
Ми молодії, хлопці лісовії, |
Скрізь нам дорога відкрита. |(2)

Кулемет носити, дівчину любити,
І мандрувати край ліса -
Ми молодії, хлопці лісовії, |
Скрізь нам дорога відкрита. |(2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_214869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_214869','Гей, хлопці, в коло','Гей Хлопці в коло станьмо бадьоро
Пісню нову заспіваймо
Ми молодії Хлопці лісовії           |
Змолоду світа вживаймо              | (2)

Нам не страшная і праця тяжкая
Ми не боїмось нічого
Ані тої слоти ані роботи            |
Ані морозу страшного                | (2)

Бо при роботі піт залляє очі
Дощ біле тіло обмиє
Вітер обсушить мороз нас не зрушить |
В тім наше тіло свіжіє              | (2)

В УПА служити кулемет носити
І мандрувати по світу
Ми молодії Хлопці лісовії           |
Скрізь нам дороги відкрито          | (2)

Варіант 2:

Гей, хлопці, в коло станьмо бадьоро,
Пісню нову заспіваймо,
Ми молодії, хлопці лісовії, |
З молоду світа вживаймо.    |(2)

Ми молодії хлопці лісовії
Не боїмося нічого,
Ані тої слоти, ані роботи, |
Ані морозу важкого.        |(2)

Бо при роботі піт заллє очі,
Дощ біле тіло обмиє,
Вітер обсушить, а мороз не рушить, |
Тим наше тіло свіжіє.              |(2)

При УПА служити, кулемет носити
І мандрувати край світа...
Ми молодії, хлопці лісовії, |
Скрізь нам дорога відкрита. |(2)

Кулемет носити, дівчину любити,
І мандрувати край ліса -
Ми молодії, хлопці лісовії, |
Скрізь нам дорога відкрита. |(2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2147697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2147697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2147697';
DELETE FROM songs WHERE id = 'pisniua_2147697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2147697','Квінти','Музика: Скрябін Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Am
Вони жили красиво, як вміли,
G
Бісилися, пили вино і любили
F
Відкинутись в кріслах своєї машини,
G
Під музику рахувати години.

Приспів:
Та ніщо не вічне, а любов тим більше,
Він хотів як краще, а віддав назавжди,
А вона чекала, просто сил не стало
G
І струна порвалась!

Ти його болиш десь всередині,
Провалився міст на половині.
Мобільного екран плаче словами,
Може і добре.

На заправках і в аеропортах
Було їм, як у ліжку, комфортно
Тулитися просто один до одного
Так ніби навколо немає нікого.

Приспів.

А тепер вона з іншим шукає
Ту штуку, що буде їх вчити літати,
А пам''ять вперто ніяк не стирає
Попереднього юзера файли.

Приспів.','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2147697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2147697','Квінти','Am
Вони жили красиво, як вміли,
G
Бісилися, пили вино і любили
F
Відкинутись в кріслах своєї машини,
G
Під музику рахувати години.

Приспів:
Та ніщо не вічне, а любов тим більше,
Він хотів як краще, а віддав назавжди,
А вона чекала, просто сил не стало
G
І струна порвалась!

Ти його болиш десь всередині,
Провалився міст на половині.
Мобільного екран плаче словами,
Може і добре.

На заправках і в аеропортах
Було їм, як у ліжку, комфортно
Тулитися просто один до одного
Так ніби навколо немає нікого.

Приспів.

А тепер вона з іншим шукає
Ту штуку, що буде їх вчити літати,
А пам''ять вперто ніяк не стирає
Попереднього юзера файли.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2147697_l1','pisniua_2147697','YouTube','https://www.youtube.com/watch?v=lDa6CVZrvcc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2147697_l2','pisniua_2147697','YouTube','https://www.youtube.com/watch?v=o2uevwhwEFo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2147697_l3','pisniua_2147697','YouTube','https://www.youtube.com/watch?v=dZLBBZrZO4k','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2148111';
DELETE FROM song_versions WHERE song_id = 'pisniua_2148111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2148111';
DELETE FROM songs WHERE id = 'pisniua_2148111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2148111','Різдво для двох','Музика: Олег Петров Слова: Олена Ясинецька. Виконує: Олена Ясинецька','uk','ukraine_1991',NULL,NULL,NULL,'Аранжування - Павло Завада. Твір записано на студії Павла Завади (м.Луцьк)','Ніч..В яслах дитя, пахне кутя для всіх,
Сніг наче обрус Святий Ісус стелить до ніг.
Ніч..Ранок не скоро. Хай спить немовля,
Сніг..Падають зорі з срібних крил янголя.

Приспів:
Янголів сміх - Різдво для всіх,
Чистий ясний світиться сніг.
Янголів сміх - Різдво для всіх,
Чистий ясний світиться сніг.

Ніч..Ми віч-на-віч. Золото свіч для двох.
Ти..Ти лиш і я. Чути нам як дихає Бог.
Ти...Свічка не гасне. Я...Янгол не спить.
Ти, Боженько, здрастуй. Святий Боже, прости.
Боженько, здрастуй. Боже, прости.

Приспів:
Дихає Бог. Різдво для двох,
Янголів сміх. Різдво для всіх,
Дихає Бог, світиться сніг.
Різдво для двох - Різдво для віх','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2148111'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2148111','Різдво для двох','Ніч..В яслах дитя, пахне кутя для всіх,
Сніг наче обрус Святий Ісус стелить до ніг.
Ніч..Ранок не скоро. Хай спить немовля,
Сніг..Падають зорі з срібних крил янголя.

Приспів:
Янголів сміх - Різдво для всіх,
Чистий ясний світиться сніг.
Янголів сміх - Різдво для всіх,
Чистий ясний світиться сніг.

Ніч..Ми віч-на-віч. Золото свіч для двох.
Ти..Ти лиш і я. Чути нам як дихає Бог.
Ти...Свічка не гасне. Я...Янгол не спить.
Ти, Боженько, здрастуй. Святий Боже, прости.
Боженько, здрастуй. Боже, прости.

Приспів:
Дихає Бог. Різдво для двох,
Янголів сміх. Різдво для всіх,
Дихає Бог, світиться сніг.
Різдво для двох - Різдво для віх');
DELETE FROM song_links WHERE song_id = 'pisniua_214798';
DELETE FROM song_versions WHERE song_id = 'pisniua_214798';
DELETE FROM songs_fts WHERE song_id = 'pisniua_214798';
DELETE FROM songs WHERE id = 'pisniua_214798';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_214798','Всі Покою щиро прагнуть','Музика: народна Слова: Іван Мазепа','uk','ukraine_before_1917',NULL,NULL,NULL,'Від Івана Степановича Мазепи. Наспів " Зібралися всі Бурлаки до рідної xати ". З Пісень про Мазепу: Нам не страшний червоний гніт. Ой пише-пише да Гетьман Мазепа Спасительна: світ не по Правді. Українські релігійні роздуми про Воскресіння, Неволю і Спасіння. Ой Ми зіслані на признаванє. Нема в світі Правди не зіскати. Господа Милосердного прохали та благали. Но ми докажем своїм Клинком. Же през Шаблю маєм права. Листки з приводу цієї Пісні: Коляда і Великдень: Різдво і Відродження Світа. Українські реліґійні роздуми про Неволю та Спасіння Еротичні містерії, тиждень від Катерини 7.12 до Калети. Доля. Св. Микола 19.12 – Народний речник перед Богом і Прадід. Стежки до листків про Українські традиції. Висловлювання: Се із віку так. Доки Колядники ходять, доки Гаївки співають і Писанки пишуть, доти Українська віра і нарід будуть у світі. – Народна мудрість','Всі Покою щиро прагнуть
Та не в єден гуж всі тягнуть
Той направо, той наліво а все браття, то-то диво.

Не маш любви, не маш згоди,
Од Жовтої взявши води,
През незгоди всі пропали - самі себе звоювали.

Гей, братища, пора знати,
Що не всім нам панувати,
Не всім дано теє знати,  як речима керувати.

На корабель поглядімо,
Много людей полічімо,
Однак стирник сам керує весь корабель направує.

Пчілка бідна матку знає
І оної послуxає,
Жжалься Боже України,  що не в купі має сини.

Єден живе із погани,
кличе: сюди, отамани,
Ідем матку рятувати не дамо їй погибати.

Другий ляxам за грош служить,
по Вкраїні і той тужить,
Мати моя старенькая, чом ти вельми слабенькая?

Розно тебе розшарпали,
гди аж по Дніпр туркам дали,
Все то фортель, щоб слабіла і аж вкінець сил не міла.

Третій москві аж голдує і їй вірно услугує,
Той на матку нарікає і недолю проклинає.

Ліпше було не родити, нежлі в такиx бідаx жити,
Зо всіx сторон ворогують, огнем мечем руінують.

Од всіx не маш зичливості, ні слушної учтивости,
Мужиками називають, в купі лиxо одбувати.

Я сам бідний не здолаю, xіба тілько заволаю:
Гей, панове єнерали, чого ж єсте так оспали!
І ви, панство полковники, без жадної політики,
Озьмітеся всі за руки, не допустіть горкой муки
Матці нашій більш терпіти.
Нуте врагів, нуте бити!
Самопали набивайте, гостриx шабель добувайте!

А за волю xоч умріте і вольностей бороніте,
Неxай вічна буде слава
Же през шаблю маєм права!','[''pisni.org.ua'', ''cat:dumy'', ''cat:istorychni'', ''cat:kozacki'', ''cat:philosophic'', ''cat:suspilno-politychni'', ''Думи'', ''Історичні пісні'', ''Козацькі пісні'', ''Філософські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_214798'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_214798','Всі Покою щиро прагнуть','Всі Покою щиро прагнуть
Та не в єден гуж всі тягнуть
Той направо, той наліво а все браття, то-то диво.

Не маш любви, не маш згоди,
Од Жовтої взявши води,
През незгоди всі пропали - самі себе звоювали.

Гей, братища, пора знати,
Що не всім нам панувати,
Не всім дано теє знати,  як речима керувати.

На корабель поглядімо,
Много людей полічімо,
Однак стирник сам керує весь корабель направує.

Пчілка бідна матку знає
І оної послуxає,
Жжалься Боже України,  що не в купі має сини.

Єден живе із погани,
кличе: сюди, отамани,
Ідем матку рятувати не дамо їй погибати.

Другий ляxам за грош служить,
по Вкраїні і той тужить,
Мати моя старенькая, чом ти вельми слабенькая?

Розно тебе розшарпали,
гди аж по Дніпр туркам дали,
Все то фортель, щоб слабіла і аж вкінець сил не міла.

Третій москві аж голдує і їй вірно услугує,
Той на матку нарікає і недолю проклинає.

Ліпше було не родити, нежлі в такиx бідаx жити,
Зо всіx сторон ворогують, огнем мечем руінують.

Од всіx не маш зичливості, ні слушної учтивости,
Мужиками називають, в купі лиxо одбувати.

Я сам бідний не здолаю, xіба тілько заволаю:
Гей, панове єнерали, чого ж єсте так оспали!
І ви, панство полковники, без жадної політики,
Озьмітеся всі за руки, не допустіть горкой муки
Матці нашій більш терпіти.
Нуте врагів, нуте бити!
Самопали набивайте, гостриx шабель добувайте!

А за волю xоч умріте і вольностей бороніте,
Неxай вічна буде слава
Же през шаблю маєм права!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214798_l1','pisniua_214798','YouTube','https://www.youtube.com/watch?v=cAzepVAH4ng','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_214798_l2','pisniua_214798','YouTube','https://www.youtube.com/watch?v=olB5Jwx90lU','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2145726';
DELETE FROM song_versions WHERE song_id = 'pisniua_2145726';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2145726';
DELETE FROM songs WHERE id = 'pisniua_2145726';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2145726','Новорічна пісня','Музика: Олександр Осадчий, Елла Осадча Слова: Юрій Рогоза. Виконує: Елла Осадча','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вам секрет відкрию свій - незвичайну таємницю.
Найчудовіша із мрій в новорічну ніч здійсниться.
Світ казковий спалахне кольоровими вогнями
Та в дитинство поверне, та в дитинство поверне
На годину тата й маму.

Приспів:
Буде весело нам, буде весело нам
Хором пісню співати,
Та навколо ялинки, навколо ялинки
Разом танцювати.
Мабуть іншого свята, веселого свята
Такого немає,
Що дорослих в далеке дитинство вертає,
Що дорослих в далеке дитинство вертає.

Як шкода, що швидко нас
Залишає добре свято,
Та батькам надходить час
Знов дорослими ставати.
Але довгий рік мине
І тоді запросить знову
Тата, маму й мене, тата, маму й мене
Новорічний світ казковий!

Приспів.

Буде весело нам','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2145726'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2145726','Новорічна пісня','Вам секрет відкрию свій - незвичайну таємницю.
Найчудовіша із мрій в новорічну ніч здійсниться.
Світ казковий спалахне кольоровими вогнями
Та в дитинство поверне, та в дитинство поверне
На годину тата й маму.

Приспів:
Буде весело нам, буде весело нам
Хором пісню співати,
Та навколо ялинки, навколо ялинки
Разом танцювати.
Мабуть іншого свята, веселого свята
Такого немає,
Що дорослих в далеке дитинство вертає,
Що дорослих в далеке дитинство вертає.

Як шкода, що швидко нас
Залишає добре свято,
Та батькам надходить час
Знов дорослими ставати.
Але довгий рік мине
І тоді запросить знову
Тата, маму й мене, тата, маму й мене
Новорічний світ казковий!

Приспів.

Буде весело нам');
DELETE FROM song_links WHERE song_id = 'pisniua_2148717';
DELETE FROM song_versions WHERE song_id = 'pisniua_2148717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2148717';
DELETE FROM songs WHERE id = 'pisniua_2148717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2148717','На різдвяні свята всі ся радуймо','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'На різдвяні свята всі ся радуймо,
Старі і молоді заколядуймо.
Христос народився від Діви Марії,
На різдвяні свята, як цвіт лілії.

А вже нічка темна землю вкриває,
А Пречиста Діва місця шукає.
Ни було для неї в Вифлеємі хати,
Мусіла в вертепі заночувати.

Люди не прийняли, жаль її було,
Для Ісуса в світі місця ни було.
Лиш в широкім степі, у вільнім вертепі,
Там Пречиста Діва Сина зродила.

З великого труду Діва спочила,
І Божого Сина нам народила.
Породила Спаса, положила в яслах,
Най тобі, Маріє, серце радіє.

Пастушки в стаєнці тоді ни були,
Вони своє стадо в поли берегли.
Ангели злетіли, пастушки зраділи,
Про велике чудо розповідали.

Вінчую вас з цими святами,
З цим Рождеством,
Абисти в щастю, здоровлю прожили
Многа літ до ста літ.
Доки вам Пан Біг не призначит ваш вік.
Христос ся Рождає!    18_2007rizak_seans11_На різдвяні свята','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:narodni'', ''Колядки'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2148717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2148717','На різдвяні свята всі ся радуймо','На різдвяні свята всі ся радуймо,
Старі і молоді заколядуймо.
Христос народився від Діви Марії,
На різдвяні свята, як цвіт лілії.

А вже нічка темна землю вкриває,
А Пречиста Діва місця шукає.
Ни було для неї в Вифлеємі хати,
Мусіла в вертепі заночувати.

Люди не прийняли, жаль її було,
Для Ісуса в світі місця ни було.
Лиш в широкім степі, у вільнім вертепі,
Там Пречиста Діва Сина зродила.

З великого труду Діва спочила,
І Божого Сина нам народила.
Породила Спаса, положила в яслах,
Най тобі, Маріє, серце радіє.

Пастушки в стаєнці тоді ни були,
Вони своє стадо в поли берегли.
Ангели злетіли, пастушки зраділи,
Про велике чудо розповідали.

Вінчую вас з цими святами,
З цим Рождеством,
Абисти в щастю, здоровлю прожили
Многа літ до ста літ.
Доки вам Пан Біг не призначит ваш вік.
Христос ся Рождає!    18_2007rizak_seans11_На різдвяні свята');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2148717_l1','pisniua_2148717','YouTube','https://www.youtube.com/watch?v=UgOkVBElgig','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2149798';
DELETE FROM song_versions WHERE song_id = 'pisniua_2149798';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2149798';
DELETE FROM songs WHERE id = 'pisniua_2149798';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2149798','Старий рік минає','Українська народна пісня. Виконує: Оксана Білозір','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Старий Рік минає!
Старий Рік минає, Новий наступає,    |
Новий наступає!                      |  (2)

Пане Господарю!
Пане Господарю, Великий Владарю,     |
Великий Владарю!                     |  (2)

Дайте нам з Полиці,
Дайте нам з Полиці із Медом Пшениці, |
Із Медом Пшениці!                    |  (2)

І ще щось такого,
І ще щось такого до столу святого,   |
До столу святого!                    |  (2)

Не дайте стояти,
Не дайте стояти, впускайте до хати,  |
Впускайте до хати!                   |  (2)

Як маєте дівку,
Як маєте дівку то шліть по горівку,  |
То шліть по горівку!                 |  (2)

Як маєте сина,
Як маєте сина - дайте бочку вина,    |
Дайте бочку вина!                    |  (2)

Старий Рік минає!
Старий Рік минає, Христос ся рождає, |
Христос ся рождає!                   |  (2)

Речитатив:
А я - хлопець-українець ще й козак нівроку
Прийшов вам вінчувати в день Нового року!
Новий Рік настає, Старий рік утікає,
Слава Україні! Христос ся рождає!','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:narodni'', ''Пісні на християнську тематику'', ''Колядки'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2149798'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2149798','Старий рік минає','Старий Рік минає!
Старий Рік минає, Новий наступає,    |
Новий наступає!                      |  (2)

Пане Господарю!
Пане Господарю, Великий Владарю,     |
Великий Владарю!                     |  (2)

Дайте нам з Полиці,
Дайте нам з Полиці із Медом Пшениці, |
Із Медом Пшениці!                    |  (2)

І ще щось такого,
І ще щось такого до столу святого,   |
До столу святого!                    |  (2)

Не дайте стояти,
Не дайте стояти, впускайте до хати,  |
Впускайте до хати!                   |  (2)

Як маєте дівку,
Як маєте дівку то шліть по горівку,  |
То шліть по горівку!                 |  (2)

Як маєте сина,
Як маєте сина - дайте бочку вина,    |
Дайте бочку вина!                    |  (2)

Старий Рік минає!
Старий Рік минає, Христос ся рождає, |
Христос ся рождає!                   |  (2)

Речитатив:
А я - хлопець-українець ще й козак нівроку
Прийшов вам вінчувати в день Нового року!
Новий Рік настає, Старий рік утікає,
Слава Україні! Христос ся рождає!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2149798_l1','pisniua_2149798','YouTube','https://www.youtube.com/watch?v=GzObM18W4dI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2149798_l2','pisniua_2149798','YouTube','https://www.youtube.com/watch?v=0fpMuhjc0WY','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2148063';
DELETE FROM song_versions WHERE song_id = 'pisniua_2148063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2148063';
DELETE FROM songs WHERE id = 'pisniua_2148063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2148063','Діва Марія церкву збудувала, радуйся','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'1. Діва Марія церкву збудувала, радуйся,
Ой радуйся, земле, вже Син Божий народився.

2. З двома дверима, із трома вікнами, радуйся,
Ой радуйся, земле, вже Син Божий народився.

3. В перше віконце засіяло сонце, радуйся,
Ой радуйся, земле, вже Син Божий народився.

4. В друге віконце ясний місяченько, радуйся,
Ой радуйся, земле, вже Син Божий народився.

5. В трете віконце ангел з неба злинув, радуйся,
Ой радуйся, земле, вже Син Божий народився.

6. Ангел з неба злинув, слезоньку зронив, радуйся,
Ой радуйся, земле, вже Син Божий народився.

7. А з тої слезоньки Дунай розлився, радуйся,
Ой радуйся, земле, вже Син Божий народився.*)

8. Нехай святкує вся наша родина, радуйся,
Ой радуйся, земле, вже Син Божий народився.

9. Вся наша родина, славна Україна, радуйся,
Ой радуйся, земле, вже Син Божий охрестився.    12_20081024vovczak_seans2_Діва Марія церкву збудувала.mp3','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2148063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2148063','Діва Марія церкву збудувала, радуйся','1. Діва Марія церкву збудувала, радуйся,
Ой радуйся, земле, вже Син Божий народився.

2. З двома дверима, із трома вікнами, радуйся,
Ой радуйся, земле, вже Син Божий народився.

3. В перше віконце засіяло сонце, радуйся,
Ой радуйся, земле, вже Син Божий народився.

4. В друге віконце ясний місяченько, радуйся,
Ой радуйся, земле, вже Син Божий народився.

5. В трете віконце ангел з неба злинув, радуйся,
Ой радуйся, земле, вже Син Божий народився.

6. Ангел з неба злинув, слезоньку зронив, радуйся,
Ой радуйся, земле, вже Син Божий народився.

7. А з тої слезоньки Дунай розлився, радуйся,
Ой радуйся, земле, вже Син Божий народився.*)

8. Нехай святкує вся наша родина, радуйся,
Ой радуйся, земле, вже Син Божий народився.

9. Вся наша родина, славна Україна, радуйся,
Ой радуйся, земле, вже Син Божий охрестився.    12_20081024vovczak_seans2_Діва Марія церкву збудувала.mp3');
DELETE FROM song_links WHERE song_id = 'pisniua_2149328';
DELETE FROM song_versions WHERE song_id = 'pisniua_2149328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2149328';
DELETE FROM songs WHERE id = 'pisniua_2149328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2149328','Ой ти, пташко жовтобоко','(Стоїть явір над горою). Слова: Григорій Сковорода. Виконує: Ніна Матвієнко','uk','ukraine_1991',NULL,NULL,'http://scovoroda.info',NULL,'Ой ти, пташко жовтобоко,
Не клади гнізда високо,
А клади лиш на лужку,
На зеленім моріжку.
Яструб ген над головою
Висить, хоче ухопить,
Вашою живе він кров''ю,
Глянь же! Пазури сталить!

Стоїть явір над горою,
Все киває головою,
Буйні вітри повівають,
Руки явору ламають.
А вербички шумлять низько,
Заколишуть мене в снах,
Тут тече потічок близько,
Видко воду аж до дна.

Нащо ж думати-гадати,
Що в селі родила мати?
То у тих хай мозок рветься,
Хто високо вгору пнеться.
А я буду собі тихо
Коротати милий вік,
Так мені мине все лихо —
Щасний буду чоловік','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2149328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2149328','Ой ти, пташко жовтобоко','Ой ти, пташко жовтобоко,
Не клади гнізда високо,
А клади лиш на лужку,
На зеленім моріжку.
Яструб ген над головою
Висить, хоче ухопить,
Вашою живе він кров''ю,
Глянь же! Пазури сталить!

Стоїть явір над горою,
Все киває головою,
Буйні вітри повівають,
Руки явору ламають.
А вербички шумлять низько,
Заколишуть мене в снах,
Тут тече потічок близько,
Видко воду аж до дна.

Нащо ж думати-гадати,
Що в селі родила мати?
То у тих хай мозок рветься,
Хто високо вгору пнеться.
А я буду собі тихо
Коротати милий вік,
Так мені мине все лихо —
Щасний буду чоловік');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2149328_l1','pisniua_2149328','YouTube','https://www.youtube.com/watch?v=O9vTml-bH9A','video',NULL,1);
