DELETE FROM song_links WHERE song_id = 'pisniua_2247111';
DELETE FROM song_versions WHERE song_id = 'pisniua_2247111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2247111';
DELETE FROM songs WHERE id = 'pisniua_2247111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2247111','Артистичний романс','Музика: Геннадій Желуденко Слова: Євген Летюк','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Це ж зовсім для тебе незвичне,
Чому ти така недоторкана.
Багато в тобі артистичного,
Та зовсім немає акторського.

Зустрінемось ми не скоро,
Стежки заростуть ожиною.
Не кожен артист є актором,
Не кожна кохана - дружиною.

І радість осіннім листом
Впаде десь порою ранньою.
Не кожен актор є артистом,
Не кожна дружина - коханою.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2247111'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2247111','Артистичний романс','Це ж зовсім для тебе незвичне,
Чому ти така недоторкана.
Багато в тобі артистичного,
Та зовсім немає акторського.

Зустрінемось ми не скоро,
Стежки заростуть ожиною.
Не кожен артист є актором,
Не кожна кохана - дружиною.

І радість осіннім листом
Впаде десь порою ранньою.
Не кожен актор є артистом,
Не кожна дружина - коханою.');
DELETE FROM song_links WHERE song_id = 'pisniua_2246379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2246379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2246379';
DELETE FROM songs WHERE id = 'pisniua_2246379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2246379','Повставали козаченьки','Музика: народна Слова: Віра Лебедова','uk','ukraine_before_1917',NULL,NULL,'Збірка пісень січових стрільців',NULL,'Повставали козаченьки
Довгими рядами,
Загриміли сурми, труби
На бій з ворогами.

А як ішли козаченьки
До славного бою.
Зашуміли всі прапори
Їм над головою!

А як в бій йшли волі, слави
Славно добувати,
Присягали краще згинуть,
А стяг не віддати.

Присягали за Вкраїну
Життям наложити,
І кайдани ворожії
З матері здоймити!

Пішли в похід козаченьки,
Тільки стяг ще мріє.
А за ними буйний вітер
По могилах віє.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2246379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2246379','Повставали козаченьки','Повставали козаченьки
Довгими рядами,
Загриміли сурми, труби
На бій з ворогами.

А як ішли козаченьки
До славного бою.
Зашуміли всі прапори
Їм над головою!

А як в бій йшли волі, слави
Славно добувати,
Присягали краще згинуть,
А стяг не віддати.

Присягали за Вкраїну
Життям наложити,
І кайдани ворожії
З матері здоймити!

Пішли в похід козаченьки,
Тільки стяг ще мріє.
А за ними буйний вітер
По могилах віє.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2246379_l1','pisniua_2246379','YouTube','https://www.youtube.com/watch?v=ir0RpBMsDxY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2246379_l2','pisniua_2246379','YouTube','https://www.youtube.com/watch?v=NEdvaKzCMjs','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2246379_l3','pisniua_2246379','YouTube','https://www.youtube.com/watch?v=dlrwfJkBAkA','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2248869';
DELETE FROM song_versions WHERE song_id = 'pisniua_2248869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2248869';
DELETE FROM songs WHERE id = 'pisniua_2248869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2248869','Ти ж мене підманула','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,'... не судіть строго...:)','Ти казала в понеділок підем разом по барвінок,
Я прийшов - тебе нема, підманула, підвела.
Приспів:
Ти ж мене підманула, ти ж мене підвела, |
Ти ж мене молодого з ума розума звела.  | (2)
Ти казала у вівторок поцілуєш разів сорок,
Я прийшов - тебе нема, підманула, підвела.
Приспів.
Ти казала у середу підем разом по череду,
Я прийшов - тебе нема, підманула, підвела.
Приспів.
Ти казала у четвер підем разом на концерт,
Я прийшов - тебе нема, підманула, підвела.
Приспів.
Ти казала у п''ятницю підем разом по пшеницю
Я прийшов - тебе нема, підманула, підвела.
Приспів.
Ти казала у суботу підем разом на роботу
Я прийшов - тебе нема, підманула, підвела.
Приспів.
Ти казала у неділю підем разом на весілля,
Я прийшов - тебе нема, підманула, підвела.
Приспів.','[''pisni.org.ua'', ''cat:narodni'', ''cat:zhartivlyvi'', ''Народні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2248869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2248869','Ти ж мене підманула','Ти казала в понеділок підем разом по барвінок,
Я прийшов - тебе нема, підманула, підвела.
Приспів:
Ти ж мене підманула, ти ж мене підвела, |
Ти ж мене молодого з ума розума звела.  | (2)
Ти казала у вівторок поцілуєш разів сорок,
Я прийшов - тебе нема, підманула, підвела.
Приспів.
Ти казала у середу підем разом по череду,
Я прийшов - тебе нема, підманула, підвела.
Приспів.
Ти казала у четвер підем разом на концерт,
Я прийшов - тебе нема, підманула, підвела.
Приспів.
Ти казала у п''ятницю підем разом по пшеницю
Я прийшов - тебе нема, підманула, підвела.
Приспів.
Ти казала у суботу підем разом на роботу
Я прийшов - тебе нема, підманула, підвела.
Приспів.
Ти казала у неділю підем разом на весілля,
Я прийшов - тебе нема, підманула, підвела.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2248869_l1','pisniua_2248869','YouTube','https://www.youtube.com/watch?v=d48ypboriBY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2247596';
DELETE FROM song_versions WHERE song_id = 'pisniua_2247596';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2247596';
DELETE FROM songs WHERE id = 'pisniua_2247596';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2247596','Гімн професійних спілок України','Музика: Євген Доненко Слова: Григорій Заброда. Виконує: Євген Доненко','uk','ukraine_before_1917',NULL,NULL,'Автор слів',NULL,'Коли неправди біль стискає горло,
Порушений закон, до розпачу лиш крок -
Людина йде з надією у серці
Шукати захисту у профспілок.

Приспів:
Профспілки України,
Укріпляймо ряди!
Наша сила в єднанні
На шляхах боротьби!
Ми за право на працю,
Соціальні права!
Ми за право народу
На достойне життя!

Не треба гнутись, бить земні поклони,
Нас мільйони, ми - знедолених оплот!
На заклик станем в маршові колони,
За нами правда сили і народ!

Приспів.

Людина праці, щоб була в повазі,
Хай голос профспілок луна, як віщий дзвін!
Бездушності, свавіллю і зневазі
Відверто і рішуче кажем: "Ні!"

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:socialno-pobutovi'', ''Гимни та марші'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2247596'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2247596','Гімн професійних спілок України','Коли неправди біль стискає горло,
Порушений закон, до розпачу лиш крок -
Людина йде з надією у серці
Шукати захисту у профспілок.

Приспів:
Профспілки України,
Укріпляймо ряди!
Наша сила в єднанні
На шляхах боротьби!
Ми за право на працю,
Соціальні права!
Ми за право народу
На достойне життя!

Не треба гнутись, бить земні поклони,
Нас мільйони, ми - знедолених оплот!
На заклик станем в маршові колони,
За нами правда сили і народ!

Приспів.

Людина праці, щоб була в повазі,
Хай голос профспілок луна, як віщий дзвін!
Бездушності, свавіллю і зневазі
Відверто і рішуче кажем: "Ні!"

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2248694';
DELETE FROM song_versions WHERE song_id = 'pisniua_2248694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2248694';
DELETE FROM songs WHERE id = 'pisniua_2248694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2248694','Три Купали','Музика: Геннадій Желуденко Слова: Геннадій Желуденко','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой, на Івана, ой, на Купала
Перша купальська пора настала -
Папороть-зіллю десь між тернами
Раптом розквітнуть опівніч саму!
Цвіту того ніхто хай не бачив,
Та все одно у мрії хлопчачій
Той цвіт незнаний знайти, зірвати,
Милій, коханій подарувати!

Ой, на Івана, ой, на Купала
Друга купальська пора настала -
Онде дівчата вінки сплітають,
На тиху воду у плав пускають...
Хай ті віночки хлопці піймають -
Кожен свого, якого бажає!..
І хай дівчата у мить пророчу
Суджених взнають по тих віночках.

Ой, на Івана, ой, на Купала
Третя купальська пора настала -
Вогнищ навколо гулять-кружляти,
Крізь їхній пломінь скакать-стрибати!..
Гей, спалахніть високі багаття,
Гей, розпаліть юначе завзяття!
Світіть до рання! Але кохання
Світить хай довше, ніж до світання!..
І без вгасання!','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2248694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2248694','Три Купали','Ой, на Івана, ой, на Купала
Перша купальська пора настала -
Папороть-зіллю десь між тернами
Раптом розквітнуть опівніч саму!
Цвіту того ніхто хай не бачив,
Та все одно у мрії хлопчачій
Той цвіт незнаний знайти, зірвати,
Милій, коханій подарувати!

Ой, на Івана, ой, на Купала
Друга купальська пора настала -
Онде дівчата вінки сплітають,
На тиху воду у плав пускають...
Хай ті віночки хлопці піймають -
Кожен свого, якого бажає!..
І хай дівчата у мить пророчу
Суджених взнають по тих віночках.

Ой, на Івана, ой, на Купала
Третя купальська пора настала -
Вогнищ навколо гулять-кружляти,
Крізь їхній пломінь скакать-стрибати!..
Гей, спалахніть високі багаття,
Гей, розпаліть юначе завзяття!
Світіть до рання! Але кохання
Світить хай довше, ніж до світання!..
І без вгасання!');
DELETE FROM song_links WHERE song_id = 'pisniua_224818';
DELETE FROM song_versions WHERE song_id = 'pisniua_224818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_224818';
DELETE FROM songs WHERE id = 'pisniua_224818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_224818','Волинь моя','Музика: Степан Кривенький Слова: Степан Кривенький. Виконує: Волинський народний хор','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Поліський краю дорогий,
Мені ти був колискою.
Озер блакить і синь лісів
Для мене стали піснею.

Приспів:
Волинь моя,
Краса моя,
Земля моя сонячна.

Шумлять, колишуться хліба,
Як хвиля в морі грається.
Моя заквітчана земля
До сонця усміхається.

Приспів.

Де ще знайти таку красу,
Як в казці намальовану,
Як нерозплетену косу,
До серця причаровану.

Приспів','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:volynski'', ''Пісні про красу природи'', ''Пісні з Волині'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_224818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_224818','Волинь моя','Поліський краю дорогий,
Мені ти був колискою.
Озер блакить і синь лісів
Для мене стали піснею.

Приспів:
Волинь моя,
Краса моя,
Земля моя сонячна.

Шумлять, колишуться хліба,
Як хвиля в морі грається.
Моя заквітчана земля
До сонця усміхається.

Приспів.

Де ще знайти таку красу,
Як в казці намальовану,
Як нерозплетену косу,
До серця причаровану.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224818_l1','pisniua_224818','YouTube','https://www.youtube.com/watch?v=tIXPBHKKMS0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224818_l2','pisniua_224818','YouTube','https://www.youtube.com/watch?v=vY4N84NTWvg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224818_l3','pisniua_224818','YouTube','https://www.youtube.com/watch?v=5ppWuELEYJM','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224818_l4','pisniua_224818','YouTube','https://www.youtube.com/watch?v=tj0vOoPTJvo','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224818_l5','pisniua_224818','YouTube','https://www.youtube.com/watch?v=sdEtFqHYIno','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224818_l6','pisniua_224818','YouTube','https://www.youtube.com/watch?v=iTAYvQIjyio','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_2248624';
DELETE FROM song_versions WHERE song_id = 'pisniua_2248624';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2248624';
DELETE FROM songs WHERE id = 'pisniua_2248624';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2248624','Грай, бандуро, грай','Музика: Ігор Шамо Слова: Дмитро Луценко','uk','ukraine_before_1917',NULL,NULL,'Запис з концерту Української хорової капели у Вашингтоні, 1986 р.',NULL,'Ой, у полі на роздоллі
Це вітри гудуть.
Ой, у полі на роздоллі
Запорожці йдуть.
Гострими шаблями
Крешуть бунтарі
І співають пісню кобзарі.

Приспів:
Гей, грай, грай,
Грай, бандуро, грай!
Грай, моя бандуро,
На всі струни грай,
Щоб шумів піснями
Наш козацький край!
Грай, моя бандуро,
Грай, грай, грай!

Україно, Україно,
Рідна сторона,
Буйним житом колоситься
В полі далина.
Греблі у загравах
Сяють на Дніпрі
І співають пісню кобзарі.

Приспів.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2248624'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2248624','Грай, бандуро, грай','Ой, у полі на роздоллі
Це вітри гудуть.
Ой, у полі на роздоллі
Запорожці йдуть.
Гострими шаблями
Крешуть бунтарі
І співають пісню кобзарі.

Приспів:
Гей, грай, грай,
Грай, бандуро, грай!
Грай, моя бандуро,
На всі струни грай,
Щоб шумів піснями
Наш козацький край!
Грай, моя бандуро,
Грай, грай, грай!

Україно, Україно,
Рідна сторона,
Буйним житом колоситься
В полі далина.
Греблі у загравах
Сяють на Дніпрі
І співають пісню кобзарі.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2248624_l1','pisniua_2248624','YouTube','https://www.youtube.com/watch?v=zqPJhlG4zqo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2249614';
DELETE FROM song_versions WHERE song_id = 'pisniua_2249614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2249614';
DELETE FROM songs WHERE id = 'pisniua_2249614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2249614','Чи не той то Омелько','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські народні пісні з нотами. Засвічу свічку восковую. - Харків: Фоліо, 2002. - 289 с.',NULL,'Чи не той то Омелько,
Чи не той то Омелько,
Чи не той то Омелько,       |
Що жне жито помаленьку?     | (2)

Цілу жменю до смерку,
Цілу жменю до смерку,
Цілу жменю до смерку,       |
Жне Омелько в холодку.      | (2)

Він нажав півснопа,
Він нажав півснопа,
Він нажав півснопа,         |
Тай хвалиться, що копа!     | (2)

Він нажав цілий сніп,
Він нажав цілий сніп,
Він нажав цілий сніп,       |
Та й говорить - десять кіп! | (2)

А як сяде за обід,
А як сяде за обід,
А як сяде за обід -         |
Із Омелька ллється піт.     | (2)

Пообідавши, Омеля,
Пообідавши, Омеля,
Пообідавши, Омеля,          |
Завалився спать в постелю.  | (2)

Він за мною упадає,
Він за мною упадає,
Він за мною упадає,         |
Ще й сватати обіцяє.        | (2)

Іди геть, іди проч,
Іди геть, іди проч,
Іди геть, іди проч,         |
Голівоньки не мороч.        | (2)

Ти ледачий, наче пень,
Ти ледачий, наче пень,
Ти ледачий, наче пень,      |
Жменю жнеш за цілий день.   | (2)

А мій милий роботящий,
А мій милий роботящий,
А мій милий роботящий,      |
Він - ударник настоящий!    | (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2249614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2249614','Чи не той то Омелько','Чи не той то Омелько,
Чи не той то Омелько,
Чи не той то Омелько,       |
Що жне жито помаленьку?     | (2)

Цілу жменю до смерку,
Цілу жменю до смерку,
Цілу жменю до смерку,       |
Жне Омелько в холодку.      | (2)

Він нажав півснопа,
Він нажав півснопа,
Він нажав півснопа,         |
Тай хвалиться, що копа!     | (2)

Він нажав цілий сніп,
Він нажав цілий сніп,
Він нажав цілий сніп,       |
Та й говорить - десять кіп! | (2)

А як сяде за обід,
А як сяде за обід,
А як сяде за обід -         |
Із Омелька ллється піт.     | (2)

Пообідавши, Омеля,
Пообідавши, Омеля,
Пообідавши, Омеля,          |
Завалився спать в постелю.  | (2)

Він за мною упадає,
Він за мною упадає,
Він за мною упадає,         |
Ще й сватати обіцяє.        | (2)

Іди геть, іди проч,
Іди геть, іди проч,
Іди геть, іди проч,         |
Голівоньки не мороч.        | (2)

Ти ледачий, наче пень,
Ти ледачий, наче пень,
Ти ледачий, наче пень,      |
Жменю жнеш за цілий день.   | (2)

А мій милий роботящий,
А мій милий роботящий,
А мій милий роботящий,      |
Він - ударник настоящий!    | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2249614_l1','pisniua_2249614','YouTube','https://www.youtube.com/watch?v=6Y0eWriMRMg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2249522';
DELETE FROM song_versions WHERE song_id = 'pisniua_2249522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2249522';
DELETE FROM songs WHERE id = 'pisniua_2249522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2249522','Ой, їхав чумак, на дорозі став','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські народні пісні з нотами. Засвічу свічку восковую. - Харків: Фоліо, 2002. - 289 с.',NULL,'Ой, їхав чумак, на дорозі став,
Воли його поболіли, сам чумак заслаб.      | (2)

Ой, заслаб чумак, заслаб та й лежить,
Ніхто ж його не спитає, що в нього болить. | (2)

Болить у його серце й голова,
Бідна ж моя головонька — чужа сторона!     | (2)

Прийшов до нього товариш його,
Бере його за рученьку, жалує його.         | (2)

Товаришу мій, що в тебе болить?
Болять руки, болять ноги, болить голова.   | (2)

Товаришу мій, не жалуй мене,
Бери мої сірі воли, поховай мене.          | (2)

Бери і воли, бери і вози,
Зроби ж мені домовину хоч із рогоджі.      | (2)','[''pisni.org.ua'', ''cat:chumacki'', ''Чумацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2249522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2249522','Ой, їхав чумак, на дорозі став','Ой, їхав чумак, на дорозі став,
Воли його поболіли, сам чумак заслаб.      | (2)

Ой, заслаб чумак, заслаб та й лежить,
Ніхто ж його не спитає, що в нього болить. | (2)

Болить у його серце й голова,
Бідна ж моя головонька — чужа сторона!     | (2)

Прийшов до нього товариш його,
Бере його за рученьку, жалує його.         | (2)

Товаришу мій, що в тебе болить?
Болять руки, болять ноги, болить голова.   | (2)

Товаришу мій, не жалуй мене,
Бери мої сірі воли, поховай мене.          | (2)

Бери і воли, бери і вози,
Зроби ж мені домовину хоч із рогоджі.      | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_224890';
DELETE FROM song_versions WHERE song_id = 'pisniua_224890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_224890';
DELETE FROM songs WHERE id = 'pisniua_224890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_224890','Зелене листя, білі каштани','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Записав на Львівщині.','Це синтетичний варіант пісні, утворений з куплетів, записаних у Бузькому, Жовківському, Перемишлянському районах Львівщини. У почутих варіантах деякі куплети відсутні і (або виконуються в іншому порядку). Згадав ще один куплет, вкупі з видозміненим іншим: Адже сама я того зазнала, | (2) Адже сама я того зазнала, | (2) Коли невірного вірно кохала. | Бо тії хлопці то зрада світу, | (2) Бо тії хлопці то зрада світу - | (2) На марно гублять дівочі літа. |','Зелене листя, білі каштани,       | (2)
Зелене листя, білі каштани...       | (2)
Ой як то сумно, як вечір стане.     |

Ой як то сумно, як  то нудно,     | (2)
Ой як то сумно, як  то нудно:       | (2)
Любла хлопця - забути трудно.       |

Любла хлопця півтора року,        | (2)
Любла хлопця півтора року,          | (2)
Аж ся дізнали сусіди збоку.         |

Як ся дізнали - розщебетали,      | (2)
Як ся дізнали - розщебетали,        | (2)
Бодай же ж вони щастя не знали.     |

Сусіди близькі - вороги тяжкі,    | (2)
Сусіди близькі - вороги тяжкі,      | (2)
Пийте, гуляйте, як самі знайте.     |

Пийте, гуляйте, як самі знайте.   | (2)
Пийте, гуляйте, як самі знайте.     | (2)
Де двоє ходять - не розлучайте.     |

Мати до доні: встань, схаменися,  | (2)
Мати до доні: встань, схаменися,    | (2)
Піди до церкви та й помолися.       |

А я ходила, богу молилась,        | (2)
А я ходила, богу молилась,          | (2)
Не дав бог щастя - ми розлучились.  |

Від Бога щастя, від людей слава,  | (2)
Від Бога щастя, від людей слава,    | (2)
Що нас з тобою порозлучала.         |

Не дав бог щастя, не дали люди,   | (2)
Не дав бог щастя, не дали люди, -   | (2)
З того кохання ніщо не буде.        |

Буду казати світу цілому,         | (2)
Буду казати світу цілому,           | (2)
Щоб він не вірив ніде й нікому.     |

Адже сама я того зазнала,         | (2)
Адже сама я того зазнала,           | (2)
Коли миленького вірно кохала.       |

Зелене листя, білі каштани,       | (2)
Зелене листя, білі каштани...       | (2)
Ой як то сумно, як вечір стане.     |    Мелодія пісні (midi)','[''pisni.org.ua'', ''cat:dances'', ''cat:halycki'', ''cat:lirychni'', ''cat:narodni'', ''cat:waltzes'', ''Пісні до танцю'', ''Пісні з Галичини'', ''Пісні про кохання, ліричні'', ''Народні пісні'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_224890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_224890','Зелене листя, білі каштани','Зелене листя, білі каштани,       | (2)
Зелене листя, білі каштани...       | (2)
Ой як то сумно, як вечір стане.     |

Ой як то сумно, як  то нудно,     | (2)
Ой як то сумно, як  то нудно:       | (2)
Любла хлопця - забути трудно.       |

Любла хлопця півтора року,        | (2)
Любла хлопця півтора року,          | (2)
Аж ся дізнали сусіди збоку.         |

Як ся дізнали - розщебетали,      | (2)
Як ся дізнали - розщебетали,        | (2)
Бодай же ж вони щастя не знали.     |

Сусіди близькі - вороги тяжкі,    | (2)
Сусіди близькі - вороги тяжкі,      | (2)
Пийте, гуляйте, як самі знайте.     |

Пийте, гуляйте, як самі знайте.   | (2)
Пийте, гуляйте, як самі знайте.     | (2)
Де двоє ходять - не розлучайте.     |

Мати до доні: встань, схаменися,  | (2)
Мати до доні: встань, схаменися,    | (2)
Піди до церкви та й помолися.       |

А я ходила, богу молилась,        | (2)
А я ходила, богу молилась,          | (2)
Не дав бог щастя - ми розлучились.  |

Від Бога щастя, від людей слава,  | (2)
Від Бога щастя, від людей слава,    | (2)
Що нас з тобою порозлучала.         |

Не дав бог щастя, не дали люди,   | (2)
Не дав бог щастя, не дали люди, -   | (2)
З того кохання ніщо не буде.        |

Буду казати світу цілому,         | (2)
Буду казати світу цілому,           | (2)
Щоб він не вірив ніде й нікому.     |

Адже сама я того зазнала,         | (2)
Адже сама я того зазнала,           | (2)
Коли миленького вірно кохала.       |

Зелене листя, білі каштани,       | (2)
Зелене листя, білі каштани...       | (2)
Ой як то сумно, як вечір стане.     |    Мелодія пісні (midi)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224890_l1','pisniua_224890','YouTube','https://www.youtube.com/watch?v=1iyH3eGUiG8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224890_l2','pisniua_224890','YouTube','https://www.youtube.com/watch?v=P-HYwSBFzLg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224890_l3','pisniua_224890','YouTube','https://www.youtube.com/watch?v=_eXRtaec0Rk','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224890_l4','pisniua_224890','YouTube','https://www.youtube.com/watch?v=0gqiFkVlIZw','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224890_l5','pisniua_224890','YouTube','https://www.youtube.com/watch?v=h9-jmqBoC9o','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224890_l6','pisniua_224890','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_224828';
DELETE FROM song_versions WHERE song_id = 'pisniua_224828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_224828';
DELETE FROM songs WHERE id = 'pisniua_224828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_224828','Мамина коса','(Ой, чого та калина віти похилила). Музика: В. Хорт Слова: І. Чернецький','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ой, чого калина віти похилила -
Чи багато цвіту, чи тяжка роса?..
Ой, чого так рано мама посивіла?     |
А була у неї золота коса.            | (2)

Мамині дороги, мамині тривоги
Простелила доля у незнану даль.
За ворота вийде, стане край дороги,  |
В коси заплітає сивини печаль.       | (2)

Стеляться тумани долами-лугами,
Стеляться тумани на глибокі сни...
Гей, дорого дальня, поверни до мами, |
Буде в її косах менше сивини.        | (2)

Ой, чого калина віти похилила?','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_224828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_224828','Мамина коса','Ой, чого калина віти похилила -
Чи багато цвіту, чи тяжка роса?..
Ой, чого так рано мама посивіла?     |
А була у неї золота коса.            | (2)

Мамині дороги, мамині тривоги
Простелила доля у незнану даль.
За ворота вийде, стане край дороги,  |
В коси заплітає сивини печаль.       | (2)

Стеляться тумани долами-лугами,
Стеляться тумани на глибокі сни...
Гей, дорого дальня, поверни до мами, |
Буде в її косах менше сивини.        | (2)

Ой, чого калина віти похилила?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224828_l1','pisniua_224828','YouTube','https://www.youtube.com/watch?v=GKFKX1mdRk8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224828_l2','pisniua_224828','YouTube','https://www.youtube.com/watch?v=N9fuNe_V1hg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224828_l3','pisniua_224828','YouTube','https://www.youtube.com/watch?v=JAxrDYQx1HY','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224828_l4','pisniua_224828','YouTube','https://www.youtube.com/watch?v=Aqs9K4P1VyI','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224828_l5','pisniua_224828','http://vladimir1702.mylivepage.ru/file/1682/4067','http://vladimir1702.mylivepage.ru/file/1682/4067','external',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_2250512';
DELETE FROM song_versions WHERE song_id = 'pisniua_2250512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2250512';
DELETE FROM songs WHERE id = 'pisniua_2250512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2250512','Їхав козак з України','Українська народна пісня. Виконує: Бунчук, Барви України','uk','ukraine_before_1917',NULL,NULL,'http://bunchukzp.blogspot.com/p/blog-page_6476.html',NULL,'Їхав козак з України,        | (2)
Та й заїхав до дівчини.      | (2)

Дівка двері відчинила,       | (2)
Не той козак, що любила.     | (2)

Дала коню вівса їсти,        | (2)
А козаку в крісло сісти.     | (2)

"Ой, Боже ж мій, що я роблю? | (2)
Не той козак, що я люблю.    | (2)

Дзвонять коні підківками,    | (2)
А козаки шабельками.         | (2)','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:kozacki'', ''cat:naddnipryanski'', ''cat:slobozhanski'', ''Гимни та марші'', ''Козацькі пісні'', ''Наддніпрянські пісні'', ''Пісні з слобожанщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2250512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2250512','Їхав козак з України','Їхав козак з України,        | (2)
Та й заїхав до дівчини.      | (2)

Дівка двері відчинила,       | (2)
Не той козак, що любила.     | (2)

Дала коню вівса їсти,        | (2)
А козаку в крісло сісти.     | (2)

"Ой, Боже ж мій, що я роблю? | (2)
Не той козак, що я люблю.    | (2)

Дзвонять коні підківками,    | (2)
А козаки шабельками.         | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2250512_l1','pisniua_2250512','YouTube','https://www.youtube.com/watch?v=uGYOGIoj2GQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2249653';
DELETE FROM song_versions WHERE song_id = 'pisniua_2249653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2249653';
DELETE FROM songs WHERE id = 'pisniua_2249653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2249653','Ой, червона калинонька','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські народні пісні з нотами. Засвічу свічку восковую. - Харків: Фоліо, 2002. - 289 с.',NULL,'Ой, червона калинонька
Без вітру шумить,
Чужий батько,
Чужа мати
Не б''є, да й болить.

Чужий батько,
Чужа мати
Не б''є, да й болить,
Як увійде у світлоньку,
Та й загомонить.

Як увійде у світлоньку,
Та й загомонить,
А у мене, молодої,
Серденько болить.

Як увійде у світлоньку,
Скоса гляне,
А у мене, молодої,
Серце в''яне.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2249653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2249653','Ой, червона калинонька','Ой, червона калинонька
Без вітру шумить,
Чужий батько,
Чужа мати
Не б''є, да й болить.

Чужий батько,
Чужа мати
Не б''є, да й болить,
Як увійде у світлоньку,
Та й загомонить.

Як увійде у світлоньку,
Та й загомонить,
А у мене, молодої,
Серденько болить.

Як увійде у світлоньку,
Скоса гляне,
А у мене, молодої,
Серце в''яне.');
DELETE FROM song_links WHERE song_id = 'pisniua_224952';
DELETE FROM song_versions WHERE song_id = 'pisniua_224952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_224952';
DELETE FROM songs WHERE id = 'pisniua_224952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_224952','Їхав козак за Дунай','Музика: народна Слова: Семен Климовський. Виконує: Олександр Таранець, Володимир Зарков, Анатолій Солов''яненко, Тарас Компаніченко','uk','ukraine_before_1917',NULL,NULL,NULL,'Підбір акордів: Makhno (dovgoborets@hotmail.com)','Їхав козак за Дунай, сказав: "Дівчино, прощай!
Ти, конику вороненький, неси та гуляй!"
Постій, постій, мій козаче, твоя дівчина плаче,
На кого ж ти покидаєш - тільки подумай.
Приспів:
Лучше було б, лучше було б не ходить,
Лучше було б, лучше було б не любить,
Лучше було б, лучше було б та й не знать,
Чим тепер, чим тепер забувать.
Вийшла, руки заломавши і тяженько заплакавши:
"Як ти мене покидаєш - тільки подумай!"
"Білих ручок не ламай, ясних очок не стирай;
Мене з війни із славою к собі дожидай".
Приспів.
"Не хочу я нічого, тільки тебе одного;
Ти будь здоров, мій миленький, а все пропадай".
Свиснув козак на коня: "Оставайся здорова!
Як не згину, то вернуся через три года!"
Приспів.
Їхав козак за Дунай, сказав: "Дівчино, прощай!
Ти, конику вороненький, скачи та гуляй!"
Приспів. (2)','[''pisni.org.ua'', ''cat:kozacki'', ''cat:patriotic'', ''cat:slobozhanski'', ''Козацькі пісні'', ''Патріотичні пісні'', ''Пісні з слобожанщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_224952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_224952','Їхав козак за Дунай','Їхав козак за Дунай, сказав: "Дівчино, прощай!
Ти, конику вороненький, неси та гуляй!"
Постій, постій, мій козаче, твоя дівчина плаче,
На кого ж ти покидаєш - тільки подумай.
Приспів:
Лучше було б, лучше було б не ходить,
Лучше було б, лучше було б не любить,
Лучше було б, лучше було б та й не знать,
Чим тепер, чим тепер забувать.
Вийшла, руки заломавши і тяженько заплакавши:
"Як ти мене покидаєш - тільки подумай!"
"Білих ручок не ламай, ясних очок не стирай;
Мене з війни із славою к собі дожидай".
Приспів.
"Не хочу я нічого, тільки тебе одного;
Ти будь здоров, мій миленький, а все пропадай".
Свиснув козак на коня: "Оставайся здорова!
Як не згину, то вернуся через три года!"
Приспів.
Їхав козак за Дунай, сказав: "Дівчино, прощай!
Ти, конику вороненький, скачи та гуляй!"
Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224952_l1','pisniua_224952','YouTube','https://www.youtube.com/watch?v=KuFiRAfK4v4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224952_l2','pisniua_224952','YouTube','https://www.youtube.com/watch?v=0K4YJ9-sGkQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224952_l3','pisniua_224952','YouTube','https://www.youtube.com/watch?v=q45TEeMbWxw','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224952_l4','pisniua_224952','YouTube','https://www.youtube.com/watch?v=_W3P74WfkzA','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224952_l5','pisniua_224952','YouTube','https://www.youtube.com/watch?v=JiT45GfyCXU','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224952_l6','pisniua_224952','YouTube','https://www.youtube.com/watch?v=FTnRCbpkieU','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224952_l7','pisniua_224952','YouTube','https://www.youtube.com/watch?v=2KAd38TarB4','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224952_l8','pisniua_224952','YouTube','https://www.youtube.com/watch?v=ge_LKPd9deM','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224952_l9','pisniua_224952','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,9);
DELETE FROM song_links WHERE song_id = 'pisniua_2251022';
DELETE FROM song_versions WHERE song_id = 'pisniua_2251022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2251022';
DELETE FROM songs WHERE id = 'pisniua_2251022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2251022','Ой, не розвивайся, зелена діброво','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські народні пісні з нотами. Кого люблю — Мій буде / Упоряд. Г. І. Ганзбурґ; Худож.-оформлювач Л. Д. Киркач. — Харків: Фоліо, 2004. — 287 с.',NULL,'Ой, не розвивайся, зелена діброво,
Коли тії козаки йдуть, молодії жовніри!
Де слізонька кане, білий камінь стане,
Під ним рута зелена, на нім рожа червона.
Батенько виходить, шабельку виносить
Свому сину на війну, на чужую сторону:
Шабелька гостренька, мій син молоденький,
Повернися та з війни, та з чужої сторони!

Ой, не розвивайся, зелена діброво,
Коли тії козаки йдуть, молодії жовніри!
Де слізонька кане, білий камінь стане,
Під ним рута зелена, на нім рожа червона.
Матінка виходить, кошулю виносить
Свому сину на війну, на чужую сторону:
Кошуля новенька, мій син молоденький,
Повернися та з війни, та з чужої сторони!

Ой, не розвивайся, зелена діброво,
Коли тії козаки йдуть, молодії жовніри!
Де слізонька кане, білий камінь стане,
Під ним рута зелена, на нім рожа червона.
Братичок виходить, коника виводить
Свому брату на війну, на чужую сторону:
Коник вороненький, мій брат молоденький,
Повернися та з війни, та з чужої сторони!

Ой, не розвивайся, зелена діброво,
Коли тії козаки йдуть, молодії жовніри!
Де слізонька кане, білий камінь стане,
Під ним рута зелена, на нім рожа червона.
Сестричка виходить, хустоньку виносить
Свому брату на війну, на чужую сторону:
Хустонька новенька, брат мій молоденький,
Повернися та з війни, та з чужої сторони!

Ой, не розвивайся, зелена діброво,
Коли тії козаки йдуть, молодії жовніри!
Де слізонька кане, білий камінь стане,
Під ним рута зелена, на нім рожа червона.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2251022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2251022','Ой, не розвивайся, зелена діброво','Ой, не розвивайся, зелена діброво,
Коли тії козаки йдуть, молодії жовніри!
Де слізонька кане, білий камінь стане,
Під ним рута зелена, на нім рожа червона.
Батенько виходить, шабельку виносить
Свому сину на війну, на чужую сторону:
Шабелька гостренька, мій син молоденький,
Повернися та з війни, та з чужої сторони!

Ой, не розвивайся, зелена діброво,
Коли тії козаки йдуть, молодії жовніри!
Де слізонька кане, білий камінь стане,
Під ним рута зелена, на нім рожа червона.
Матінка виходить, кошулю виносить
Свому сину на війну, на чужую сторону:
Кошуля новенька, мій син молоденький,
Повернися та з війни, та з чужої сторони!

Ой, не розвивайся, зелена діброво,
Коли тії козаки йдуть, молодії жовніри!
Де слізонька кане, білий камінь стане,
Під ним рута зелена, на нім рожа червона.
Братичок виходить, коника виводить
Свому брату на війну, на чужую сторону:
Коник вороненький, мій брат молоденький,
Повернися та з війни, та з чужої сторони!

Ой, не розвивайся, зелена діброво,
Коли тії козаки йдуть, молодії жовніри!
Де слізонька кане, білий камінь стане,
Під ним рута зелена, на нім рожа червона.
Сестричка виходить, хустоньку виносить
Свому брату на війну, на чужую сторону:
Хустонька новенька, брат мій молоденький,
Повернися та з війни, та з чужої сторони!

Ой, не розвивайся, зелена діброво,
Коли тії козаки йдуть, молодії жовніри!
Де слізонька кане, білий камінь стане,
Під ним рута зелена, на нім рожа червона.');
DELETE FROM song_links WHERE song_id = 'pisniua_224910';
DELETE FROM song_versions WHERE song_id = 'pisniua_224910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_224910';
DELETE FROM songs WHERE id = 'pisniua_224910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_224910','В саду гуляла','Музика: Л. Лепкий Слова: Л. Лепкий','uk','ukraine_before_1917',NULL,NULL,NULL,'На сайті уже є варіант цієї пісні. У нас, на Львівщині популярним є саме цей.','В саду гуляла, квіти збирала, (2)
Кого любила - причарувала.

Причарувала серце і душу, (2)
Тепер до тебе ходити мушу.

Ходити буду, любити буду, (2)
Скажу по правді, брати не буду.

Ой ти, дівчино, гарна і пишна, (2)
Чом ти до мене вчора не вийшла?

Я виходила, тебе не було, (2)
Я постояла та й ся вернула.

Я більш не вийду, з тобов не стану, (2)
Пришлю ти сестру, сестру Оксану.

А я з сестрою весь вечір стою, (2)
Не та розмова, що із тобою.

Не та розмова, не тії слова, (2)
Не біле личко, не чорноброва.','[''pisni.org.ua'', ''cat:halycki'', ''cat:lirychni'', ''Пісні з Галичини'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_224910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_224910','В саду гуляла','В саду гуляла, квіти збирала, (2)
Кого любила - причарувала.

Причарувала серце і душу, (2)
Тепер до тебе ходити мушу.

Ходити буду, любити буду, (2)
Скажу по правді, брати не буду.

Ой ти, дівчино, гарна і пишна, (2)
Чом ти до мене вчора не вийшла?

Я виходила, тебе не було, (2)
Я постояла та й ся вернула.

Я більш не вийду, з тобов не стану, (2)
Пришлю ти сестру, сестру Оксану.

А я з сестрою весь вечір стою, (2)
Не та розмова, що із тобою.

Не та розмова, не тії слова, (2)
Не біле личко, не чорноброва.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224910_l1','pisniua_224910','YouTube','https://www.youtube.com/watch?v=ISuux1DTDJc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224910_l2','pisniua_224910','YouTube','https://www.youtube.com/watch?v=wojdp98EZGo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224910_l3','pisniua_224910','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_224990';
DELETE FROM song_versions WHERE song_id = 'pisniua_224990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_224990';
DELETE FROM songs WHERE id = 'pisniua_224990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_224990','Місяць і зіроньки','Українська народна пісня. Виконує: Тріо Мареничів, Рушничок','uk','ukraine_before_1917',NULL,NULL,'1. Туристський пісеник "Де гори Карпати де Писаний Камінь". - Літо, 1982 2. Аудіозапис тріо Маренич','*Акорди подані за джерелом 1.','Місяць і зіроньки,
Чом ви не сяєте?
А мій милий любить другу,
Чом ви не скажете?
Він другу полюбив,
За мене забувся,
Моє серденько в грудях б''ється,
Вороги сміються.
Вороги, вороги,
За що ви судите?
Я вашого не люблю,
Мого не чаруйте!
Не люблю, не люблю,
Любити не буду.
Як ви мого зчаруєте,
З ким я жити буду?
Місяць і зіроньки,
Чом ви не сяєте?
А мій милий любить другу,
Чом ви не скажете?
Акорди:*
C
Місяць і зіроньки,
Чом ви не сяєте?
А мій милий любить другу,
Чом ви не скаже_те?','[''pisni.org.ua'', ''cat:dances'', ''cat:poliski'', ''cat:waltzes'', ''Пісні до танцю'', ''Пісні з Полісся'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_224990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_224990','Місяць і зіроньки','Місяць і зіроньки,
Чом ви не сяєте?
А мій милий любить другу,
Чом ви не скажете?
Він другу полюбив,
За мене забувся,
Моє серденько в грудях б''ється,
Вороги сміються.
Вороги, вороги,
За що ви судите?
Я вашого не люблю,
Мого не чаруйте!
Не люблю, не люблю,
Любити не буду.
Як ви мого зчаруєте,
З ким я жити буду?
Місяць і зіроньки,
Чом ви не сяєте?
А мій милий любить другу,
Чом ви не скажете?
Акорди:*
C
Місяць і зіроньки,
Чом ви не сяєте?
А мій милий любить другу,
Чом ви не скаже_те?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224990_l1','pisniua_224990','YouTube','https://www.youtube.com/watch?v=OaKy1OcViEE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_225063';
DELETE FROM song_versions WHERE song_id = 'pisniua_225063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225063';
DELETE FROM songs WHERE id = 'pisniua_225063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225063','Сухая верба','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Сухая верба, сухая верба,
А на ній листя зелене...
"Ой де ж ти їдеш, де від''їжджаєш
Ти, мій миленький від мене?"

"Недалеченько, моє серденько,
Вернусь до тебе скоренько.
Як будеш жива ти, моя мила,
Щоби за мнов не тужила".

Якби я мала крила орлині,
Якби я вміла літати,
Я б полетіла на Україну
Свого милого шукати.

Лечу я нічку, лечу я другу,
Свого милого не бачу.
Ой сяду, сяду в вишневім саду,
Сяду та й гірко заплачу.

Ой, вийшла з хати старая мати
Та й свого сина питає:
"Що то за пташка, що за пташина
В нашому саду співає?"

Ой, то не пташка, то не пташина
В нашому саду співає,
А то дівчина зарученая
Свого милого шукає.','[''pisni.org.ua'', ''cat:dances'', ''cat:halycki'', ''cat:waltzes'', ''Пісні до танцю'', ''Пісні з Галичини'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225063','Сухая верба','Сухая верба, сухая верба,
А на ній листя зелене...
"Ой де ж ти їдеш, де від''їжджаєш
Ти, мій миленький від мене?"

"Недалеченько, моє серденько,
Вернусь до тебе скоренько.
Як будеш жива ти, моя мила,
Щоби за мнов не тужила".

Якби я мала крила орлині,
Якби я вміла літати,
Я б полетіла на Україну
Свого милого шукати.

Лечу я нічку, лечу я другу,
Свого милого не бачу.
Ой сяду, сяду в вишневім саду,
Сяду та й гірко заплачу.

Ой, вийшла з хати старая мати
Та й свого сина питає:
"Що то за пташка, що за пташина
В нашому саду співає?"

Ой, то не пташка, то не пташина
В нашому саду співає,
А то дівчина зарученая
Свого милого шукає.');
DELETE FROM song_links WHERE song_id = 'pisniua_2250111';
DELETE FROM song_versions WHERE song_id = 'pisniua_2250111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2250111';
DELETE FROM songs WHERE id = 'pisniua_2250111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2250111','Сини мої, сини, сини-соловейки!','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські народні пісні з нотами. Кого люблю — Мій буде / Упоряд. Г. І. Ганзбурґ; Худож.-оформлювач Л. Д. Киркач. — Харків: Фоліо, 2004. — 287 с.',NULL,'Сини мої, сини, сини-соловейки!
Чом ви мене не кидали, як були маленькі?

Стали підростати, стали покидати,
А хто ж буде при старості хлібом годувати?

Дочки мої пави, горе мені з вами!
Чом ви мене не кидали, як падали з лави?

Стали підростати, стали покидати,
А хто ж буде при старих літ в головоньці ськати?

Ой, буду ж я, буду неділеньки ждати:
Чи не прийде, не приїде дочка відвідати?

Неділя минає, а дочки немає,
Журба мене з ніг валяє, та ніхто не знає.

Коли б мені крильця та совині очі,
То б знялася, полетіла темненької ночі!

Ой, сіла б я, впала на битім порозі,
Вийшла мати води брати, та й облили сльози.

Годі тобі, мати, дрібні сльози лити,
Порадь мене, моя мати, як у світі жити?

А чи мені жити, а чи горювати,
Чи обняти голівоньку та й помандрувати?

Ой, хоч помандрую, — слави наберуся,
Як обніму голівоньку, назад не вернуся!','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2250111'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2250111','Сини мої, сини, сини-соловейки!','Сини мої, сини, сини-соловейки!
Чом ви мене не кидали, як були маленькі?

Стали підростати, стали покидати,
А хто ж буде при старості хлібом годувати?

Дочки мої пави, горе мені з вами!
Чом ви мене не кидали, як падали з лави?

Стали підростати, стали покидати,
А хто ж буде при старих літ в головоньці ськати?

Ой, буду ж я, буду неділеньки ждати:
Чи не прийде, не приїде дочка відвідати?

Неділя минає, а дочки немає,
Журба мене з ніг валяє, та ніхто не знає.

Коли б мені крильця та совині очі,
То б знялася, полетіла темненької ночі!

Ой, сіла б я, впала на битім порозі,
Вийшла мати води брати, та й облили сльози.

Годі тобі, мати, дрібні сльози лити,
Порадь мене, моя мати, як у світі жити?

А чи мені жити, а чи горювати,
Чи обняти голівоньку та й помандрувати?

Ой, хоч помандрую, — слави наберуся,
Як обніму голівоньку, назад не вернуся!');
DELETE FROM song_links WHERE song_id = 'pisniua_224971';
DELETE FROM song_versions WHERE song_id = 'pisniua_224971';
DELETE FROM songs_fts WHERE song_id = 'pisniua_224971';
DELETE FROM songs WHERE id = 'pisniua_224971';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_224971','Копав-копав Криниченьку','Українська народна пісня. Виконує: Журборіз, Русичі','uk','ukraine_before_1917',NULL,NULL,'1. Червоная калинонька. Українські народні пісні. Пісенник. Упорядник В. М. Пономаренко. - К.: Музична Україна, 1988. - 200 с.',NULL,'Копав-копав криниченьку
Неділеньку - дві...
Любив козак дівчиноньку
Людям - не собі.

Приспів:
Ой жаль-жаль
Серцю буде -
Візьмуть її люди!
Візьмуть її люди -
Моя не буде!
Ой жаль-жаль!

А вже з тої криниченьки
Орли воду п''ють...
А вже тую дівчиноньку
До шлюбу ведуть.

Приспів.

Один веде за рученьку,
Другий - за рукав,
Третій стоїть, гірко плаче:
Любив та й не взяв!

Приспів','[''pisni.org.ua'', ''cat:halycki'', ''Пісні з Галичини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_224971'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_224971','Копав-копав Криниченьку','Копав-копав криниченьку
Неділеньку - дві...
Любив козак дівчиноньку
Людям - не собі.

Приспів:
Ой жаль-жаль
Серцю буде -
Візьмуть її люди!
Візьмуть її люди -
Моя не буде!
Ой жаль-жаль!

А вже з тої криниченьки
Орли воду п''ють...
А вже тую дівчиноньку
До шлюбу ведуть.

Приспів.

Один веде за рученьку,
Другий - за рукав,
Третій стоїть, гірко плаче:
Любив та й не взяв!

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224971_l1','pisniua_224971','YouTube','https://www.youtube.com/watch?v=MRErn2-t3g4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224971_l2','pisniua_224971','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2251471';
DELETE FROM song_versions WHERE song_id = 'pisniua_2251471';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2251471';
DELETE FROM songs WHERE id = 'pisniua_2251471';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2251471','Купальські забави','Музика: Олександр Жилінський Слова: Олексій Кононенко. Виконує: ManSound','uk','ukraine_before_1917',NULL,NULL,'архів композитора',NULL,'З барвінку віночки
Дівчата сплітали,
Скидали сорочки,
Під верби ховали.
Заходили в річку,
Віночки пускали
У темную нічку,
У темную нічку
На Йвана Купала.

Приспів:
Пливіте, віночки, до тихого ставу,
До тихого ставу, у чисті озерця.
Зелений Купало, зведи нас до пари,
Зведи нас до пари, щоб було - до серця!

У березі хлопці
Сорочки шукали,
Ловили віночки,
Дівчатам гукали:
— А чий то віночок,
Що хвиля гойдала?
Ходіть у таночок,
Ходіть у таночок
На Йвана Купала.

Приспів.

Виходили з ночі
Нагії Купави,
Сміялися в очі,
Манили у трави...
Ой, давні й далекі
Купальські забави,
Раділи лелеки,
Раділи лелеки
На Йвана Купала.

Приспів.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2251471'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2251471','Купальські забави','З барвінку віночки
Дівчата сплітали,
Скидали сорочки,
Під верби ховали.
Заходили в річку,
Віночки пускали
У темную нічку,
У темную нічку
На Йвана Купала.

Приспів:
Пливіте, віночки, до тихого ставу,
До тихого ставу, у чисті озерця.
Зелений Купало, зведи нас до пари,
Зведи нас до пари, щоб було - до серця!

У березі хлопці
Сорочки шукали,
Ловили віночки,
Дівчатам гукали:
— А чий то віночок,
Що хвиля гойдала?
Ходіть у таночок,
Ходіть у таночок
На Йвана Купала.

Приспів.

Виходили з ночі
Нагії Купави,
Сміялися в очі,
Манили у трави...
Ой, давні й далекі
Купальські забави,
Раділи лелеки,
Раділи лелеки
На Йвана Купала.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2251471_l1','pisniua_2251471','YouTube','https://www.youtube.com/watch?v=o-VEhNAGdrE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2251471_l2','pisniua_2251471','YouTube','https://www.youtube.com/watch?v=q4iuiHa4u2I','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_225111';
DELETE FROM song_versions WHERE song_id = 'pisniua_225111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225111';
DELETE FROM songs WHERE id = 'pisniua_225111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225111','Волиняночка','Музика: Олександр Каліщук Слова: Олександр Каліщук. Виконує: Дует Награш','uk','ukraine_1991',NULL,NULL,'1. З пам''яті за емігрантськими аудіозаписами 70-х років ХХ ст. 2. Олександр Каліщук. Волиняночка. Збірка пісень. - Львів: Калина-Прес, 1988. - 144 с. 3. Жартівливі та сатиричні пісні. Упорядкування, передмова та примітки М. К. Дмитренка. - К.: Дніпро, 1988. - 328 с. 4. Волинь у піснях. Зібрав та упорядкував І.Федько. - Львів, 1969.','В емігрантських аудіозаписах порядок в''язок 1-2-3-4-1. В авторському варіанті відсутня п''ята в''язка [2]. Усі шість в''язок подані подані у джерелі [3] із посиланням на [4].','Чи є в світі де Дівчина, як та Ганночка, -
Кароока, Чорноброва Волиняночка,
Волиняночка, Волиняночка,   |
Кароока Волиняночка.        | (2)

В Неї Коси, як Покоси, простелилися,
А у Косах Білі Стрічки розпустилися,
Розпустилися, розпустилися, |
Білі Стрічки розпустилися.  | (2)

Розвивається на Вітрі та й Хустиночка,
Ой, хороша із Ганнусі буде Жіночка,
Буде Жіночка, буде Жіночка, |
Із Ганнусі буде Жіночка.    | (2)

Усі Хлопці до Ганнусі залицяються,
Ще й жонаті на Ганнусю задивляються,
Задивляються, задивляються, |
На Ганнусю задивляються.    | (2)

Та із Нею, на Роботі загорілою,
Навіть Поле розмовляє, наче з Милою,
Наче з Милою, наче з Милою, |
Розмовляє, наче з Милою.    | (2)

І моргає Ясний Місяць над Дібровою;
Прилітай, я буду ждати, Чорнобровая,
Чорнобровая, Чорнобровая,   |
Буду ждати, Чорнобровая!    | (2)','[''pisni.org.ua'', ''cat:volynski'', ''Пісні з Волині'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225111'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225111','Волиняночка','Чи є в світі де Дівчина, як та Ганночка, -
Кароока, Чорноброва Волиняночка,
Волиняночка, Волиняночка,   |
Кароока Волиняночка.        | (2)

В Неї Коси, як Покоси, простелилися,
А у Косах Білі Стрічки розпустилися,
Розпустилися, розпустилися, |
Білі Стрічки розпустилися.  | (2)

Розвивається на Вітрі та й Хустиночка,
Ой, хороша із Ганнусі буде Жіночка,
Буде Жіночка, буде Жіночка, |
Із Ганнусі буде Жіночка.    | (2)

Усі Хлопці до Ганнусі залицяються,
Ще й жонаті на Ганнусю задивляються,
Задивляються, задивляються, |
На Ганнусю задивляються.    | (2)

Та із Нею, на Роботі загорілою,
Навіть Поле розмовляє, наче з Милою,
Наче з Милою, наче з Милою, |
Розмовляє, наче з Милою.    | (2)

І моргає Ясний Місяць над Дібровою;
Прилітай, я буду ждати, Чорнобровая,
Чорнобровая, Чорнобровая,   |
Буду ждати, Чорнобровая!    | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225111_l1','pisniua_225111','YouTube','https://www.youtube.com/watch?v=kYwDzVNf-rM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225111_l2','pisniua_225111','YouTube','https://www.youtube.com/watch?v=SW5GZtZdzNM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_225199';
DELETE FROM song_versions WHERE song_id = 'pisniua_225199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225199';
DELETE FROM songs WHERE id = 'pisniua_225199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225199','Ой паночку наш','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Колесса Ф. Шкільний співаник. З педагогічної спадщини композитора.- Київ: Музична Україна, 1991.- 224 с.','Першоджерело: Народні мелодії з голосу Лесі Українки / Записав і упорядив Климент Квітка. Ч. I, К., 1917.- с. 49','1. Ой паночку наш,
Додомоньку час!
А вже сонце над грушами,
Пускайте нас із душами,
Додомоньку час!

2. Ой паночку наш,
Додомоньку час!
А вже мати затопила,
Вечеряти наварила,
Виглядає нас.    Мелодія для 1 голосу','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225199','Ой паночку наш','1. Ой паночку наш,
Додомоньку час!
А вже сонце над грушами,
Пускайте нас із душами,
Додомоньку час!

2. Ой паночку наш,
Додомоньку час!
А вже мати затопила,
Вечеряти наварила,
Виглядає нас.    Мелодія для 1 голосу');
DELETE FROM song_links WHERE song_id = 'pisniua_2251096';
DELETE FROM song_versions WHERE song_id = 'pisniua_2251096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2251096';
DELETE FROM songs WHERE id = 'pisniua_2251096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2251096','Та, ой, там за горою','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські народні пісні з нотами. Кого люблю — Мій буде / Упоряд. Г. І. Ганзбурґ; Худож.-оформлювач Л. Д. Киркач. — Харків: Фоліо, 2004. — 287 с.',NULL,'Та, ой, там за горою
Та козак водку п''є,
Та, ой, там за рікою   |
Та дівка сльози ллє.   | (2)

Та й об чом, дівка, плачеш
Та даром сльози ллєш,
Та кого вірно любиш —  |
Заміж не підеш.        | (2)

Та не сповнилось дівці
Вісімнадцять літ:
Та наїхало сватать —   |
Кінця й краю нет.      | (2)

Дівчина сказала:
Заміж не пойду —
Циганка гадала,        |
Що в Дунаї втону.      | (2)

Не бійся, дівчино:
Я вистрою мост,
Широкий та довгий —    |
На тисячу вьорст.      | (2)

По отім мосточку
Машини ідуть,
Чугунії рейки -        |
Шумлять і гудуть.      | (2)

Та сосна розвивайся —
Невесту везуть;
Ой, сосна розвивалась, |
А мости роздались.     | (2)

Ой, сосна розвивалась,
А мости роздались.
Невеста втонула:       |
Подружечки остались.   | (2)

Не жаль мне вагонов,
Не жаль мне моста,
А жаль мне нєвєсту     |
Вінчального дня.       | (2)

Мости я построю,
Та вагони куплю,
А нєвєсти такої        |
Та повік не найду...   | (2)','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2251096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2251096','Та, ой, там за горою','Та, ой, там за горою
Та козак водку п''є,
Та, ой, там за рікою   |
Та дівка сльози ллє.   | (2)

Та й об чом, дівка, плачеш
Та даром сльози ллєш,
Та кого вірно любиш —  |
Заміж не підеш.        | (2)

Та не сповнилось дівці
Вісімнадцять літ:
Та наїхало сватать —   |
Кінця й краю нет.      | (2)

Дівчина сказала:
Заміж не пойду —
Циганка гадала,        |
Що в Дунаї втону.      | (2)

Не бійся, дівчино:
Я вистрою мост,
Широкий та довгий —    |
На тисячу вьорст.      | (2)

По отім мосточку
Машини ідуть,
Чугунії рейки -        |
Шумлять і гудуть.      | (2)

Та сосна розвивайся —
Невесту везуть;
Ой, сосна розвивалась, |
А мости роздались.     | (2)

Ой, сосна розвивалась,
А мости роздались.
Невеста втонула:       |
Подружечки остались.   | (2)

Не жаль мне вагонов,
Не жаль мне моста,
А жаль мне нєвєсту     |
Вінчального дня.       | (2)

Мости я построю,
Та вагони куплю,
А нєвєсти такої        |
Та повік не найду...   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2254192';
DELETE FROM song_versions WHERE song_id = 'pisniua_2254192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2254192';
DELETE FROM songs WHERE id = 'pisniua_2254192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2254192','В сорок першім році','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'Співаночки, с. 32.','Повстанська пісня','В сорок першім році,
Як стави гатили,
Українські хлопці    |
Річеньками плили.    | (2)

Плили вони, плили
Бистрими ріками,
Ні один не діждався  |
Рідненької мами.     | (2)

Вийшла стара мати
Сина пізнавати,
Роздягає одяг -      |
І стала плакати.     | (2)

Ой, сину ж мій, сину,
Як тобі здається,
Україна встала,      |
А тобі й не сниться. | (2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2254192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2254192','В сорок першім році','В сорок першім році,
Як стави гатили,
Українські хлопці    |
Річеньками плили.    | (2)

Плили вони, плили
Бистрими ріками,
Ні один не діждався  |
Рідненької мами.     | (2)

Вийшла стара мати
Сина пізнавати,
Роздягає одяг -      |
І стала плакати.     | (2)

Ой, сину ж мій, сину,
Як тобі здається,
Україна встала,      |
А тобі й не сниться. | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_225216';
DELETE FROM song_versions WHERE song_id = 'pisniua_225216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225216';
DELETE FROM songs WHERE id = 'pisniua_225216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225216','Женці','(Край дороги широкої). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Колесса Ф. Шкільний співаник. З педагогічної спадщини композитора.- Київ: Музична Україна, 1991.- 224 с.','Першоджерело: Мелодія народна. Запис Ф. Колесси','1. Край дороги широкої,  (2)
керниченьки глибокої.  (2)

2. Ішли женці жито жати  (2)
Та й забули серпи взяти.  (2)

3. Серпи взяли, хліб забули,  (2)
Ой, які ж то женці були!  (2)    Мелодія для 1 голосу','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225216','Женці','1. Край дороги широкої,  (2)
керниченьки глибокої.  (2)

2. Ішли женці жито жати  (2)
Та й забули серпи взяти.  (2)

3. Серпи взяли, хліб забули,  (2)
Ой, які ж то женці були!  (2)    Мелодія для 1 голосу');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225216_l1','pisniua_225216','YouTube','https://www.youtube.com/watch?v=g6vUit5v7bs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_225124';
DELETE FROM song_versions WHERE song_id = 'pisniua_225124';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225124';
DELETE FROM songs WHERE id = 'pisniua_225124';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225124','Ой куриться доріженька','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Колесса Ф. Шкільний співаник. З педагогічної спадщини композитора.- Київ: Музична Україна, 1991.- 224 с.','Першоджерело: Народні мелодії з голосу Лесі Українки / Записав і упорядив Климент Квітка. Ч. I, К., 1917.- с. 52','1. Ой куриться доріженька, куриться, куриться.
Чогось наша господиня журиться, журиться.

2. Що треба їй кониченька продати, продати,
Та женчикам музиченьки наняти, наняти.

3. "Заріж, заріж, господине, індика, індика,
Щоб нам була із Варшави музика, музика.

4. Хоч з Варшави, не з Варшави, з Кракова, з Кракова,
Щоб нам була музиченька готова, готова!"    Основна мелодія','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225124'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225124','Ой куриться доріженька','1. Ой куриться доріженька, куриться, куриться.
Чогось наша господиня журиться, журиться.

2. Що треба їй кониченька продати, продати,
Та женчикам музиченьки наняти, наняти.

3. "Заріж, заріж, господине, індика, індика,
Щоб нам була із Варшави музика, музика.

4. Хоч з Варшави, не з Варшави, з Кракова, з Кракова,
Щоб нам була музиченька готова, готова!"    Основна мелодія');
DELETE FROM song_links WHERE song_id = 'pisniua_225369';
DELETE FROM song_versions WHERE song_id = 'pisniua_225369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225369';
DELETE FROM songs WHERE id = 'pisniua_225369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225369','Господаря нема вдома','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1948','Пісні з Львівщини. - К.: Музична Україна, 1988.','Записана 1948 року в с. Крушельниця Сколівського р-ну на Львівщині від Б.С.Костіва.','Господаря нема дома,
Бо поїхав він до Львова
Мед-вино купувати,       (3)
Женчиків угощати.','[''pisni.org.ua'', ''cat:boykivski'', ''cat:obzhynkovi'', ''Пісні з Бойківщини'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225369','Господаря нема вдома','Господаря нема дома,
Бо поїхав він до Львова
Мед-вино купувати,       (3)
Женчиків угощати.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225369_l1','pisniua_225369','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2255165';
DELETE FROM song_versions WHERE song_id = 'pisniua_2255165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2255165';
DELETE FROM songs WHERE id = 'pisniua_2255165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2255165','Таточку, татусю','Музика: Ірина Батюк Слова: Нестор Мартинець. Виконує: Зоряна Рощук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Багато пісень ми про маму співаєм,
В думках ми у неї весь час.
Але ми прекрасно про те пам''ятаєм:
Без батька не було би й нас.
Ти сильний, красивий, я кращих не знаю,
А посмішка - спокій сім''ї.
Молюся до Бога, його я благаю,
Щоб довго ти жив на землі.

Приспів:
Таточку, татусю, найрідніший мій,
Таточку, татусю, ти мов оберіг!
Таточку, татусю, ти один такий,
Будь же, мій татусю, завжди молодий! | (2)

Щоб впевненість твоя мене надихала
Щасливо прожить кожен день,
А я щоб про тебе й матусю співала
Нових задушевних пісень.
З тобою, я знаю, пройдем всі дороги,
Стежки, що до щастя вели.
І завжди ми будем на рідні пороги
Вертатися де б не були.

Приспів. (3)','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2255165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2255165','Таточку, татусю','Багато пісень ми про маму співаєм,
В думках ми у неї весь час.
Але ми прекрасно про те пам''ятаєм:
Без батька не було би й нас.
Ти сильний, красивий, я кращих не знаю,
А посмішка - спокій сім''ї.
Молюся до Бога, його я благаю,
Щоб довго ти жив на землі.

Приспів:
Таточку, татусю, найрідніший мій,
Таточку, татусю, ти мов оберіг!
Таточку, татусю, ти один такий,
Будь же, мій татусю, завжди молодий! | (2)

Щоб впевненість твоя мене надихала
Щасливо прожить кожен день,
А я щоб про тебе й матусю співала
Нових задушевних пісень.
З тобою, я знаю, пройдем всі дороги,
Стежки, що до щастя вели.
І завжди ми будем на рідні пороги
Вертатися де б не були.

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2255165_l1','pisniua_2255165','YouTube','https://www.youtube.com/watch?v=OVR3SoyGGT4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2254495';
DELETE FROM song_versions WHERE song_id = 'pisniua_2254495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2254495';
DELETE FROM songs WHERE id = 'pisniua_2254495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2254495','Гімн Івачева Долішнього','Слова: Ярослав Довбуш','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Вздовж Товтрів високих і Серету-ріки
Розкинулись села на вічні віки.
Між ними Івачів Долішній стоїть,
Міцніє й зростає вже кілька століть.

Приспів:
Івачів Долішній, моє рідне село,
Від рук працьовитих зміцніло й зросло.
Земля моїх прадідів, моїх батьків,
Хвала тобі й слава на віки віків.

Там люди зростали — герої-сини,
В борні за свободу вони полягли.
Про їх боротьбу, що до слави вела,
Нагадує пам''ятник серед села.

Приспів.

Майбутнє твоє, Батьківщино моя,
Я бачу в квітучих садах і полях.
І люди щасливі в країні живуть
І Господу щиру подяку несуть.

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2254495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2254495','Гімн Івачева Долішнього','Вздовж Товтрів високих і Серету-ріки
Розкинулись села на вічні віки.
Між ними Івачів Долішній стоїть,
Міцніє й зростає вже кілька століть.

Приспів:
Івачів Долішній, моє рідне село,
Від рук працьовитих зміцніло й зросло.
Земля моїх прадідів, моїх батьків,
Хвала тобі й слава на віки віків.

Там люди зростали — герої-сини,
В борні за свободу вони полягли.
Про їх боротьбу, що до слави вела,
Нагадує пам''ятник серед села.

Приспів.

Майбутнє твоє, Батьківщино моя,
Я бачу в квітучих садах і полях.
І люди щасливі в країні живуть
І Господу щиру подяку несуть.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2255073';
DELETE FROM song_versions WHERE song_id = 'pisniua_2255073';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2255073';
DELETE FROM songs WHERE id = 'pisniua_2255073';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2255073','Марш зауральських українців','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Тарас Каляндрук "Загадки козацьких характерників".','Найбільше море - Тихий океан. Марш написаний в кінці ХIX ст. - на початку ХХ ст., його українці Сибіру вважали своїм гімном. Виконувався він на мелодію відомої чеської пісні "Гей! Слов''яни!", на яку пізніше був покладений і гімн Польщі "Єще Польска не згінела".','За Уралом за далеким наша піснь лунає -
Це Азійська Україна право добуває.
Урал, Алтай, Амур, Ферган і найбільше море
Знають добре українських колоністів горе.

Катерина, суча дочка, московська цариця,
Зграбувала нашу землю, віддала чужинцям.
На Вкраїні нам не стало ні кута, ні хати,
Ми покинули Край Рідний, пішли в світ блукати.

Україна всіх годує, лиш не свої діти,
Що марніють на чужині, мов підтяті квіти.
Висміяли нашу мову, кров і мозок ссали,
У пустиню, тайгу, тундру діток висилали.

Сірко і Тарас Шевченко поет незабутий,
Тут страждали у Сибіру, щоб волю добути.
Ми купили собі право кров''ю і кістками
Жити тут, користуватись лісами, полями...','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2255073'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2255073','Марш зауральських українців','За Уралом за далеким наша піснь лунає -
Це Азійська Україна право добуває.
Урал, Алтай, Амур, Ферган і найбільше море
Знають добре українських колоністів горе.

Катерина, суча дочка, московська цариця,
Зграбувала нашу землю, віддала чужинцям.
На Вкраїні нам не стало ні кута, ні хати,
Ми покинули Край Рідний, пішли в світ блукати.

Україна всіх годує, лиш не свої діти,
Що марніють на чужині, мов підтяті квіти.
Висміяли нашу мову, кров і мозок ссали,
У пустиню, тайгу, тундру діток висилали.

Сірко і Тарас Шевченко поет незабутий,
Тут страждали у Сибіру, щоб волю добути.
Ми купили собі право кров''ю і кістками
Жити тут, користуватись лісами, полями...');
DELETE FROM song_links WHERE song_id = 'pisniua_225498';
DELETE FROM song_versions WHERE song_id = 'pisniua_225498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225498';
DELETE FROM songs WHERE id = 'pisniua_225498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225498','Берізка','(Кожен вечір дожидаю). Музика: Сергій Козак Слова: Степан Крижанівський. Виконує: Сергій Козак','uk','ukr_ssr_1919_1991',NULL,'1957','Українські народні романси. - К.: В-во АН УРСР, 1961. - с. 388-389','*Поданий варіант рими "забарилась-лишилась" поширеніший і звучить гарніше, хоча в оригіналі пісні у вказаному джерелі надрукована римована пара "загулялась-зосталась". Там же є посилання на інше джерело: Пісні українських радянських композиторів. - К.: Держ. в-во образотворчого мистецтва і музичної л-ри, 1957. - с. 278.','Кожен вечір дожидаю -
Вийдеш ти чи ні?
Кожен вечір виглядаю
У далечині.

Бачу: в білому убранні
Край твоїх воріт
Хтось в неясному смерканні
Все стоїть, стоїть.

Чи не ти мене чекаєш
В сумі самоти?
Я лечу і повертаю, -
Ні, не ти, не ти...

Край воріт сумна і мила
В білому вбранні
Жде мене берізка біла
У самотині.

Скільки раз імла вечірня
Маяла крильми,
Стільки раз берізка вірна
Виглядала з тьми.

Ти ж десь довго забарилась*,
Не вернулась в дім,
Ти берізкою лишилась*
В спогаді моїм','[''pisni.org.ua'', ''cat:dances'', ''cat:krasa-pryrody'', ''cat:romansy'', ''cat:waltzes'', ''Пісні до танцю'', ''Пісні про красу природи'', ''Романси'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225498','Берізка','Кожен вечір дожидаю -
Вийдеш ти чи ні?
Кожен вечір виглядаю
У далечині.

Бачу: в білому убранні
Край твоїх воріт
Хтось в неясному смерканні
Все стоїть, стоїть.

Чи не ти мене чекаєш
В сумі самоти?
Я лечу і повертаю, -
Ні, не ти, не ти...

Край воріт сумна і мила
В білому вбранні
Жде мене берізка біла
У самотині.

Скільки раз імла вечірня
Маяла крильми,
Стільки раз берізка вірна
Виглядала з тьми.

Ти ж десь довго забарилась*,
Не вернулась в дім,
Ти берізкою лишилась*
В спогаді моїм');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225498_l1','pisniua_225498','YouTube','https://www.youtube.com/watch?v=X-EfqjA-sJA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225498_l2','pisniua_225498','YouTube','https://www.youtube.com/watch?v=frTj_dtOu2Q','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225498_l3','pisniua_225498','YouTube','https://www.youtube.com/watch?v=g_DQZShxQuI','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_225293';
DELETE FROM song_versions WHERE song_id = 'pisniua_225293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225293';
DELETE FROM songs WHERE id = 'pisniua_225293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225293','Поїхав тато до Комарова','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Записав на початку 80-х ХХ ст. у Бориславі.','* Всі куплети слід виконувати на зразок першого.','Поїхав тато, гей-гей,
До Комарова, гей-гей,
Поїхав тато до Комарова,        |
Залишив маму з наймитом вдома.  | (2) *

Приїхав тато із Комарова,
Питає діти: - що було вдома?

Ой тату, тату, тату-татуню,
Цілував наймит нашу мамуню.

Цілував руці, цілував бузі,
Аж було видко (чути) далеко в лузі.

Так ся любили, так ся кохали,
Аж ся перини перевертали.

Ой тату, тату, дай мамі раду,-
Бери бук в руки, бий маму ззаду.

Ой їде тато до Комарова,
Вже не лишає мамуню вдома. *','[''pisni.org.ua'', ''cat:halycki'', ''Пісні з Галичини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225293','Поїхав тато до Комарова','Поїхав тато, гей-гей,
До Комарова, гей-гей,
Поїхав тато до Комарова,        |
Залишив маму з наймитом вдома.  | (2) *

Приїхав тато із Комарова,
Питає діти: - що було вдома?

Ой тату, тату, тату-татуню,
Цілував наймит нашу мамуню.

Цілував руці, цілував бузі,
Аж було видко (чути) далеко в лузі.

Так ся любили, так ся кохали,
Аж ся перини перевертали.

Ой тату, тату, дай мамі раду,-
Бери бук в руки, бий маму ззаду.

Ой їде тато до Комарова,
Вже не лишає мамуню вдома. *');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225293_l1','pisniua_225293','YouTube','https://www.youtube.com/watch?v=bdCcaOHq2bI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2255394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2255394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2255394';
DELETE FROM songs WHERE id = 'pisniua_2255394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2255394','Заколисна пісня','Музика: Василь Безкоровайний Слова: Петро Карманський. Виконує: Рената Бабак','uk','ukraine_before_1917',NULL,'1909','українська бібліотека','Вірш написаний у 1909 р., музика - у 1919 р.','Спи, дитино моя, щастя мого життя,
Яра квітко пахучого маю!
Най колише тебе любий чар забуття,
Срібна мрія про роскоші раю.

Не дивися, що я вже від провесни літ
Ходжу п''яна слізьми і журбою:
Хоч рабині ти син, та прийшов ти на світ
Під щасливим знаком і звіздою.

Чуєш, ген від степів громовий іде спів,
Що від нього трясуться палати,
Знай, що в тобі пливе кров бойких лицарів,
Що не вміли просить, ні ридати.

Спи, кохання! Засни сном бойця, що спочив,
Заколисаний гамором боїв,
І кріпися, як лев, бо народ твій ожив
Серед шляху жде на героїв.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2255394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2255394','Заколисна пісня','Спи, дитино моя, щастя мого життя,
Яра квітко пахучого маю!
Най колише тебе любий чар забуття,
Срібна мрія про роскоші раю.

Не дивися, що я вже від провесни літ
Ходжу п''яна слізьми і журбою:
Хоч рабині ти син, та прийшов ти на світ
Під щасливим знаком і звіздою.

Чуєш, ген від степів громовий іде спів,
Що від нього трясуться палати,
Знай, що в тобі пливе кров бойких лицарів,
Що не вміли просить, ні ридати.

Спи, кохання! Засни сном бойця, що спочив,
Заколисаний гамором боїв,
І кріпися, як лев, бо народ твій ожив
Серед шляху жде на героїв.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2255394_l1','pisniua_2255394','YouTube','https://www.youtube.com/watch?v=GezktM5oGoo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2255354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2255354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2255354';
DELETE FROM songs WHERE id = 'pisniua_2255354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2255354','Нині Рождество Божого Дитяти','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Лемківські пісні / Уклад. М. І. Турко. - Львів: "Растр-7", 2009. - 164 с.',NULL,'Нині рождество Божого Дитяти,
Всі українці йдуть Його вітати.

Приспів:
Тут і лемки співают, подоляки виграют,
Волиняк щось міркує, бойко легко танцює,
Полтавець плясає, гуцул трембітає:
Тра-ра, тра-ра, тра-ра-ра-ра-ра.

Чути довкола любі жарти, сміхи,
Ісус маленький б''є в ручки з утіхи.

Приспів.

Грают, співают українські села,
Щоб та дитина все була весела.

Щоб весело було всім, по своєму говорім,
По вкраїнськи помолись і співати знов берись:
Ісусе на сіні, дай щастя Вкраїні,
Боже, Боже, Боже долю дай!','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:lemkivski'', ''cat:shchedrivky'', ''Колядки'', ''Лемківські пісні'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2255354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2255354','Нині Рождество Божого Дитяти','Нині рождество Божого Дитяти,
Всі українці йдуть Його вітати.

Приспів:
Тут і лемки співают, подоляки виграют,
Волиняк щось міркує, бойко легко танцює,
Полтавець плясає, гуцул трембітає:
Тра-ра, тра-ра, тра-ра-ра-ра-ра.

Чути довкола любі жарти, сміхи,
Ісус маленький б''є в ручки з утіхи.

Приспів.

Грают, співают українські села,
Щоб та дитина все була весела.

Щоб весело було всім, по своєму говорім,
По вкраїнськи помолись і співати знов берись:
Ісусе на сіні, дай щастя Вкраїні,
Боже, Боже, Боже долю дай!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2255354_l1','pisniua_2255354','YouTube','https://www.youtube.com/watch?v=vPLAEKc_Dso','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2255354_l2','pisniua_2255354','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2253573';
DELETE FROM song_versions WHERE song_id = 'pisniua_2253573';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2253573';
DELETE FROM songs WHERE id = 'pisniua_2253573';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2253573','Наречена','Музика: Михайло Хома (Дзідзьо) Слова: Михайло Хома (Дзідзьо). Виконує: Михайло Хома','uk','ukraine_before_1917',NULL,NULL,'vk.com',NULL,'Я дивлюсь уночі
На небо - і бачу очі твої
Твої вуста, наречена моя.
Місто спить в тишині,
А музика серця рветься з душі,
Мої пісні, - наречена, - тобі.

Половина серця,
Доля ти моя.
Моя є для тебе,
А твоя - моя!

Я тебе поведу,
Віру, Надію, Любов
Пронесу через життя,
Наречена моя!

Половина серця, |
Доля ти моя.    |
Моя є для тебе, |
А твоя - моя!   | (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2253573'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2253573','Наречена','Я дивлюсь уночі
На небо - і бачу очі твої
Твої вуста, наречена моя.
Місто спить в тишині,
А музика серця рветься з душі,
Мої пісні, - наречена, - тобі.

Половина серця,
Доля ти моя.
Моя є для тебе,
А твоя - моя!

Я тебе поведу,
Віру, Надію, Любов
Пронесу через життя,
Наречена моя!

Половина серця, |
Доля ти моя.    |
Моя є для тебе, |
А твоя - моя!   | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2253573_l1','pisniua_2253573','YouTube','https://www.youtube.com/watch?v=vtLjv70ayGk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2253573_l2','pisniua_2253573','YouTube','https://www.youtube.com/watch?v=UEht5As6XXk','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_225550';
DELETE FROM song_versions WHERE song_id = 'pisniua_225550';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225550';
DELETE FROM songs WHERE id = 'pisniua_225550';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225550','Вже би-м була їхала','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'З пам''яті.','Частина цього тексту з нотами є у збірці: Весільні пісні. Серія: Народні співи Галичини. - Львів: Гердан, 1992. Цю пісню починають виконувати дівчата під час благословення батьками молодої пари в момент, коли весільний староста просить це зробити втретє. Пісню продовжують виконувати протягом всього обряду випроваджання молодих до шлюбу (до свекрів) з хати, з подвір''я (окроплення святою водою, кланяння родичам, гостям, сусідам тощо).','Вже би-м була їхала, вже би-м була йшла,
Та ще своїй матінці не вклонилася.
Кланяюсь тобі, мамо,        |
Що будила мене рано, -      |(2)*1
Більше не будеш, не будеш.  |

Вже би-м була їхала, вже би-м була йшла,
Та ще свому татові не вклонилася.
Кланяюсь тобі, тату,
Що пускав вночі до хати, - *2
Більше не будеш, не будеш.

Вже би-м була їхала, вже би-м була йшла,
Та ще свому братові не вклонилася.
Кланяюсь тобі, брате,
Що водив хлопців до хати, - *3
Більше не будеш, не будеш.

Вже би-м була їхала, вже би-м була йшла,
Та ще своїй сестронці не вклонилася.
Кланяюсь тобі, сестро,
Що навчила косу плести, -
Більше не будеш, не будеш.

Вже би-м була їхала, вже би-м була йшла,
Та своїм порогам ще не вклонилася.
Кланяюсь вам, пороги,
Де ходили босі ноги, -
Більше не будуть, не будуть.

Вже би-м була їхала, вже би-м була йшла,
Та своїй криниці ще не вклонилася.
Кланяюся, криничко,
Де вмивалось біле личко, -
Більше не буде, не буде.

Вже би-м була їхала, вже би-м була йшла,
Та свому подвір''ю ще не вклонилася.
Кланяюся, подвір''я,
Де гулялося весілля, -
Більше не буде, не буде.

Вже би-м була їхала, вже би-м була йшла,
Та своїй калині ще не вклонилася.
Кланяюся, калино,
Що з дівча зросла дівчина, - *4
Більше не буде, не буде.

Вже би-м була їхала, вже би-м була йшла,
Та своїм воротам ще не вклонилася.
Кланяюсь вам, ворота,
Де стояла хлопців рота, -
Більше не буде, не буде.

Вже би-м була їхала, вже би-м була йшла,
Та своїм тополям ще не вклонилася.
Кланяюсь вам, тополі,
Де стояли ми обоє, -
Більше не будем, не будем.

Вже би-м була їхала, вже би-м була йшла,
Та своїм сусідам ще не вклонилася.
Кланяюсь вам, сусіди,
Говорили, що хотіли, -
Більше не буде, не буде.
*1. Усі в''язки виконують за взірцем першої.
*2. Варіанти: Що вночі отворяв хату;
Що збудовав мені хату;
Що навчив мене багато.
*3. Варіанти: Що навчив мене гуляти
(тобто танцювати);
Що пускав мене гуляти;
також деякі *2.
*4. Варіант:  Кланяюсь, калинонько,
Що берегла дівчиноньку.    Голос 1 (','[''pisni.org.ua'', ''cat:halycki'', ''cat:narodni'', ''cat:pro-batkiv'', ''cat:vesilni'', ''Пісні з Галичини'', ''Народні пісні'', ''Пісні про любов до батьків'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225550'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225550','Вже би-м була їхала','Вже би-м була їхала, вже би-м була йшла,
Та ще своїй матінці не вклонилася.
Кланяюсь тобі, мамо,        |
Що будила мене рано, -      |(2)*1
Більше не будеш, не будеш.  |

Вже би-м була їхала, вже би-м була йшла,
Та ще свому татові не вклонилася.
Кланяюсь тобі, тату,
Що пускав вночі до хати, - *2
Більше не будеш, не будеш.

Вже би-м була їхала, вже би-м була йшла,
Та ще свому братові не вклонилася.
Кланяюсь тобі, брате,
Що водив хлопців до хати, - *3
Більше не будеш, не будеш.

Вже би-м була їхала, вже би-м була йшла,
Та ще своїй сестронці не вклонилася.
Кланяюсь тобі, сестро,
Що навчила косу плести, -
Більше не будеш, не будеш.

Вже би-м була їхала, вже би-м була йшла,
Та своїм порогам ще не вклонилася.
Кланяюсь вам, пороги,
Де ходили босі ноги, -
Більше не будуть, не будуть.

Вже би-м була їхала, вже би-м була йшла,
Та своїй криниці ще не вклонилася.
Кланяюся, криничко,
Де вмивалось біле личко, -
Більше не буде, не буде.

Вже би-м була їхала, вже би-м була йшла,
Та свому подвір''ю ще не вклонилася.
Кланяюся, подвір''я,
Де гулялося весілля, -
Більше не буде, не буде.

Вже би-м була їхала, вже би-м була йшла,
Та своїй калині ще не вклонилася.
Кланяюся, калино,
Що з дівча зросла дівчина, - *4
Більше не буде, не буде.

Вже би-м була їхала, вже би-м була йшла,
Та своїм воротам ще не вклонилася.
Кланяюсь вам, ворота,
Де стояла хлопців рота, -
Більше не буде, не буде.

Вже би-м була їхала, вже би-м була йшла,
Та своїм тополям ще не вклонилася.
Кланяюсь вам, тополі,
Де стояли ми обоє, -
Більше не будем, не будем.

Вже би-м була їхала, вже би-м була йшла,
Та своїм сусідам ще не вклонилася.
Кланяюсь вам, сусіди,
Говорили, що хотіли, -
Більше не буде, не буде.
*1. Усі в''язки виконують за взірцем першої.
*2. Варіанти: Що вночі отворяв хату;
Що збудовав мені хату;
Що навчив мене багато.
*3. Варіанти: Що навчив мене гуляти
(тобто танцювати);
Що пускав мене гуляти;
також деякі *2.
*4. Варіант:  Кланяюсь, калинонько,
Що берегла дівчиноньку.    Голос 1 (');
DELETE FROM song_links WHERE song_id = 'pisniua_225420';
DELETE FROM song_versions WHERE song_id = 'pisniua_225420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225420';
DELETE FROM songs WHERE id = 'pisniua_225420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225420','Ой дай, дана, межи туденьками','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1959','Пісні з Львівщини. - К.: Музична Україна, 1988.','Записана 1959 року в м. Дрогобичі від Л.В.Кикавець.','- Ой дай, дана, дана, дана, межи туденьками,
Як легенько погуляти коломийки з вами.
А я жала пшениченьку лиш по колоскови,
Пізнаю тебе, мій милий, лиш по голоскови.

Ожинки, ожинки, ожинки, ожинки,
Обжинки, обжинки, лиш по голоскови.

- Минулася косовиця, минулися жнива,
Вийди, вийди на обору, моя чорнобрива.
- Ой на стерни, на стерниску скрекочуть сороки,
Ти до мене не ходи, бо-с дуже високий.

Ожинки, ожинки, ожинки, ожинки,
Обжинки, обжинки, бо-с дуже високий.

- Не можу я жито жати, ліпше в копи класти,
Та так ходжу, зазираю, як би любку вкрасти.
Жито жати і складати, не можу си скласти,
Обіймати, цілувати, коби лиш допасти.

Ожинки, ожинки, ожинки, ожинки,
Обжинки, обжинки, коби лиш допасти.

Ми цариночку убрали, добре потрудилися,
Коломийки витинаєм: вмієм веселитися.

Ожинки, ожинки, ожинки, ожинки,
Обжинки, обжинки, вмієм веселитися.','[''pisni.org.ua'', ''cat:halycki'', ''cat:obzhynkovi'', ''Пісні з Галичини'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225420'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225420','Ой дай, дана, межи туденьками','- Ой дай, дана, дана, дана, межи туденьками,
Як легенько погуляти коломийки з вами.
А я жала пшениченьку лиш по колоскови,
Пізнаю тебе, мій милий, лиш по голоскови.

Ожинки, ожинки, ожинки, ожинки,
Обжинки, обжинки, лиш по голоскови.

- Минулася косовиця, минулися жнива,
Вийди, вийди на обору, моя чорнобрива.
- Ой на стерни, на стерниску скрекочуть сороки,
Ти до мене не ходи, бо-с дуже високий.

Ожинки, ожинки, ожинки, ожинки,
Обжинки, обжинки, бо-с дуже високий.

- Не можу я жито жати, ліпше в копи класти,
Та так ходжу, зазираю, як би любку вкрасти.
Жито жати і складати, не можу си скласти,
Обіймати, цілувати, коби лиш допасти.

Ожинки, ожинки, ожинки, ожинки,
Обжинки, обжинки, коби лиш допасти.

Ми цариночку убрали, добре потрудилися,
Коломийки витинаєм: вмієм веселитися.

Ожинки, ожинки, ожинки, ожинки,
Обжинки, обжинки, вмієм веселитися.');
DELETE FROM song_links WHERE song_id = 'pisniua_225277';
DELETE FROM song_versions WHERE song_id = 'pisniua_225277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225277';
DELETE FROM songs WHERE id = 'pisniua_225277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225277','Як Сурми заграють','Українська народна пісня. Виконує: Рушничок','uk','ukraine_before_1917',NULL,NULL,'З пам''яті за емігрантськими аудіозаписами 70-х років ХХ ст.','Темп кінного маршу. Еротика, жарти, забави: Катерини –... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... –... Хто ж нас поцілує в уста малинові. Козак перед боєм цілує Подругу. Стежки до листків про Українські пісні. Висловлювання: Се із віку так. Буду в січі жить Бога боронить. — Колядки-Щедрівки','Як Сурми заграють похіднії Горни -
Провісники в Рідних Хатах,
У Нічку тривожну, у Ніченьку Чорну
Коня осідлає Козак.

Коня осідлає, поправить Попругу,
Козацьке одягне Вбрання,
Козак перед боєм цілує Подругу,
А потім погладить Коня.

Прощайте усі мої Рідні Станиці
І соком налиті Сади, -
Коню Вороному Козак дасть напитись
З холодної Річки Води.

Ударить об Землю Залізом Підкови,
Залізні вдягне Мундштуки
Й Зеленому Долу поклоняться знову
Хоробрі Орли Козаки.','[''pisni.org.ua'', ''cat:kozacki'', ''cat:kubanski'', ''Козацькі пісні'', ''Кубанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225277','Як Сурми заграють','Як Сурми заграють похіднії Горни -
Провісники в Рідних Хатах,
У Нічку тривожну, у Ніченьку Чорну
Коня осідлає Козак.

Коня осідлає, поправить Попругу,
Козацьке одягне Вбрання,
Козак перед боєм цілує Подругу,
А потім погладить Коня.

Прощайте усі мої Рідні Станиці
І соком налиті Сади, -
Коню Вороному Козак дасть напитись
З холодної Річки Води.

Ударить об Землю Залізом Підкови,
Залізні вдягне Мундштуки
Й Зеленому Долу поклоняться знову
Хоробрі Орли Козаки.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225277_l1','pisniua_225277','YouTube','https://www.youtube.com/watch?v=4cmfBIxfb0w','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225277_l2','pisniua_225277','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_225573';
DELETE FROM song_versions WHERE song_id = 'pisniua_225573';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225573';
DELETE FROM songs WHERE id = 'pisniua_225573';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225573','Раз у похід козак собирався','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Записав з пам''яті за емігрантськими аудіозаписами 70-х років ХХ ст.',NULL,'Раз у похід козак собирався,
Він дівчину свою розважав, -
Про кохання палке, як прощався, |(2)
Він дівчині своїй розказав.     |

- Не сумуй ти, моя чорнобрива,
Я з кривавого бою вернусь,
Як не візьме сирая могила,      |(2)
Я навіки твоїм зостаюсь.        |

І повірила щиро дівчина,
Обіцяння йому віддала.
Де взялася недобра година, -    |(2)
Лиха вістка із війська прийшла. |

Чорнобривого, кажуть, немає, -
Він загинув в кривавім бою,
Люди добрі його поховали        |(2)
У чужому далекім краю.          |

А той хлопець з походу вертався,
Він живий, - то помилка була.
Біг скоріш до дівчини питаться, |(2)
Що забула його, козака.         |','[''pisni.org.ua'', ''cat:kozacki'', ''cat:rekrutski'', ''Козацькі пісні'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225573'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225573','Раз у похід козак собирався','Раз у похід козак собирався,
Він дівчину свою розважав, -
Про кохання палке, як прощався, |(2)
Він дівчині своїй розказав.     |

- Не сумуй ти, моя чорнобрива,
Я з кривавого бою вернусь,
Як не візьме сирая могила,      |(2)
Я навіки твоїм зостаюсь.        |

І повірила щиро дівчина,
Обіцяння йому віддала.
Де взялася недобра година, -    |(2)
Лиха вістка із війська прийшла. |

Чорнобривого, кажуть, немає, -
Він загинув в кривавім бою,
Люди добрі його поховали        |(2)
У чужому далекім краю.          |

А той хлопець з походу вертався,
Він живий, - то помилка була.
Біг скоріш до дівчини питаться, |(2)
Що забула його, козака.         |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225573_l1','pisniua_225573','YouTube','https://www.youtube.com/watch?v=19Do7qZkB1I','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225573_l2','pisniua_225573','YouTube','https://www.youtube.com/watch?v=U6MfCN-uLE8','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2255890';
DELETE FROM song_versions WHERE song_id = 'pisniua_2255890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2255890';
DELETE FROM songs WHERE id = 'pisniua_2255890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2255890','Миколай','Музика: Мері Слова: Віктор Винник. Виконує: Мері','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ти хто дід мороз? - Ні, я - Миколай,
Ну тоді, заходь, взуття не знімай,
Всі свої - будь, як вдома, і не стій за порогом,
Посидиш трохи з нами, відпочинеш з дороги.
Ну розказуй, як сам? Де весь рік пропадаєш?
Що нового у вас, бо у нас, - ну, сам знаєш.
Ми хотіли, як краще, але нас не почули,
Із новин у нас тільки, тільки вибори були.

Приспів:
Привітає з Новим роком всіх старенький Миколай,
І погляне добрим оком на Вкраїну, рідний край.
Він про тебе не забуде, тільки ти його чекай,
З Новим роком привітає, всіх старенький Миколай.

Як там цей Санта Клаус? Ми на нього чекали,
Але наша таможня в нього оленів забрала.
В Санта Клауса класно, бо його фінансують,
Але я таке чув, що його депортують.
І співає країна "белые розы",
І чекає на їхнього дєда мороза.
Але Ти у нас є, Святий Миколаю,
Ми Тебе ні на кого ніколи не проміняєм!

Приспів.

Миколай вже близько, він скоро прийде до тебе,
Він просто не може про тебе забути,
Тобі потрібно тільки вірити, вірити і чекати...
На свого Святого Миколая, на нашого Миколая.

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2255890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2255890','Миколай','Ти хто дід мороз? - Ні, я - Миколай,
Ну тоді, заходь, взуття не знімай,
Всі свої - будь, як вдома, і не стій за порогом,
Посидиш трохи з нами, відпочинеш з дороги.
Ну розказуй, як сам? Де весь рік пропадаєш?
Що нового у вас, бо у нас, - ну, сам знаєш.
Ми хотіли, як краще, але нас не почули,
Із новин у нас тільки, тільки вибори були.

Приспів:
Привітає з Новим роком всіх старенький Миколай,
І погляне добрим оком на Вкраїну, рідний край.
Він про тебе не забуде, тільки ти його чекай,
З Новим роком привітає, всіх старенький Миколай.

Як там цей Санта Клаус? Ми на нього чекали,
Але наша таможня в нього оленів забрала.
В Санта Клауса класно, бо його фінансують,
Але я таке чув, що його депортують.
І співає країна "белые розы",
І чекає на їхнього дєда мороза.
Але Ти у нас є, Святий Миколаю,
Ми Тебе ні на кого ніколи не проміняєм!

Приспів.

Миколай вже близько, він скоро прийде до тебе,
Він просто не може про тебе забути,
Тобі потрібно тільки вірити, вірити і чекати...
На свого Святого Миколая, на нашого Миколая.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2255910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2255910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2255910';
DELETE FROM songs WHERE id = 'pisniua_2255910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2255910','Сховалось сонце за горою','Музика: народна Слова: Мусій Кононенко','uk','ukraine_before_1917',NULL,NULL,'Співаночки, с. 310-311.',NULL,'Сховалось сонце за горою,
Туман легенький землю вкрив.
Шепоче вітер з осокою,   |
Гайок зелений потемнів.  | (2)

Далеко співи десь лунають,
На небі зірки миготять.
Отари з поля поспішають  |
У холодочку відпочить.   | (2)

Блакитне небо обгорнуло
Усю рослинність, всіх дітей.
Село в садочку потонуло, |
Затьохкав пісню соловей. | (2)

Моя Вкраїно, ти мій краю,
Ти чарівниченько моя,
Я без кінця тебе кохаю,  |
Ще більш кохати хочу я!  | (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2255910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2255910','Сховалось сонце за горою','Сховалось сонце за горою,
Туман легенький землю вкрив.
Шепоче вітер з осокою,   |
Гайок зелений потемнів.  | (2)

Далеко співи десь лунають,
На небі зірки миготять.
Отари з поля поспішають  |
У холодочку відпочить.   | (2)

Блакитне небо обгорнуло
Усю рослинність, всіх дітей.
Село в садочку потонуло, |
Затьохкав пісню соловей. | (2)

Моя Вкраїно, ти мій краю,
Ти чарівниченько моя,
Я без кінця тебе кохаю,  |
Ще більш кохати хочу я!  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2255910_l1','pisniua_2255910','YouTube','https://www.youtube.com/watch?v=Gao5hqvqHK8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2255910_l2','pisniua_2255910','YouTube','https://www.youtube.com/watch?v=Cxj7WTRwInY','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2255910_l3','pisniua_2255910','YouTube','https://www.youtube.com/watch?v=7q7iHC7gXFg','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2255910_l4','pisniua_2255910','YouTube','https://www.youtube.com/watch?v=1VJW56Hm9p8','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_225414';
DELETE FROM song_versions WHERE song_id = 'pisniua_225414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225414';
DELETE FROM songs WHERE id = 'pisniua_225414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225414','Ми вже жати закінчили','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1948','Пісні з Львівщини. - К.: Музична Україна, 1988.','Записана 1948 року в с. Крушельниця Сколівського р-ну Львівщини від Г.С.Яворської.','Ми вже жати закінчили,
Закінчили і в''язать,
Випили мед-горілочку,
Хочемо потанцювать.','[''pisni.org.ua'', ''cat:boykivski'', ''cat:obzhynkovi'', ''Пісні з Бойківщини'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225414','Ми вже жати закінчили','Ми вже жати закінчили,
Закінчили і в''язать,
Випили мед-горілочку,
Хочемо потанцювать.');
DELETE FROM song_links WHERE song_id = 'pisniua_2256512';
DELETE FROM song_versions WHERE song_id = 'pisniua_2256512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2256512';
DELETE FROM songs WHERE id = 'pisniua_2256512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2256512','Еміґрант Сонґ','Музика: Kozak System Слова: Сергій Жадан. Виконує: Kozak System','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Хто нас кликав у пітьму і знемогу,
Як з тобою ми рушали в дорогу?..
Щоби я не говорив -
Я сюди не повернусь...

Ніч ходила голосами і снами,
Наше сонце не встигало за нами.
Не чекай мене дарма -
Я сюди не повернусь...

В чорних трюмах від Одеси до Ґданська
Світить зіркою душа еміґрантська.
Щоби я не говорив -
Я сюди не повернусь...

Перші статки і солодка свобода,
Хліб щоденний і щоденна робота.
Не чекай мене дарма -
Я сюди не повернусь...

Впала зірка - невагома і пізня,
Най за мною заридає Вітчизна.
Щоби я не говорив -
Я сюди не повернусь...

Все життя без вороття і спокою,
Все, що мав, я залишив за собою.
Не чекай мене дарма -
Я сюди не повернусь...','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2256512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2256512','Еміґрант Сонґ','Хто нас кликав у пітьму і знемогу,
Як з тобою ми рушали в дорогу?..
Щоби я не говорив -
Я сюди не повернусь...

Ніч ходила голосами і снами,
Наше сонце не встигало за нами.
Не чекай мене дарма -
Я сюди не повернусь...

В чорних трюмах від Одеси до Ґданська
Світить зіркою душа еміґрантська.
Щоби я не говорив -
Я сюди не повернусь...

Перші статки і солодка свобода,
Хліб щоденний і щоденна робота.
Не чекай мене дарма -
Я сюди не повернусь...

Впала зірка - невагома і пізня,
Най за мною заридає Вітчизна.
Щоби я не говорив -
Я сюди не повернусь...

Все життя без вороття і спокою,
Все, що мав, я залишив за собою.
Не чекай мене дарма -
Я сюди не повернусь...');
DELETE FROM song_links WHERE song_id = 'pisniua_2255212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2255212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2255212';
DELETE FROM songs WHERE id = 'pisniua_2255212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2255212','Заспівай, родино','Українська народна пісня. Виконує: Марія Гошовська','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Розквіта моя Вкраїна, де під небом журавлиним
Мій Дніпро й мої Карпати, степу даль.
Сторона моя єдина, моє сонце - Україна,
Тиха радість і моя печаль.

Приспів:
Заспівай, родино, щоб усе збулось,
Щоб у нашій хаті лиш добро велось!
Запроси на свято друзів звідусіль,
Буде пісня рідна, буде хліб і сіль!
Заспівай, родино, пам''ятай повік
Материнську пісню, батьківський поріг!
З заходу до сходу бережи в добрі
Нашого народу щастя оберіг!

Ожива в моїм цвітінні молода моя Вкраїна,
Як калина, мов дівчина, в зорянім вінку.
Буде радості година, коли збратана родина,
Будуть друзі на її шляху.

Приспів. (2)','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2255212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2255212','Заспівай, родино','Розквіта моя Вкраїна, де під небом журавлиним
Мій Дніпро й мої Карпати, степу даль.
Сторона моя єдина, моє сонце - Україна,
Тиха радість і моя печаль.

Приспів:
Заспівай, родино, щоб усе збулось,
Щоб у нашій хаті лиш добро велось!
Запроси на свято друзів звідусіль,
Буде пісня рідна, буде хліб і сіль!
Заспівай, родино, пам''ятай повік
Материнську пісню, батьківський поріг!
З заходу до сходу бережи в добрі
Нашого народу щастя оберіг!

Ожива в моїм цвітінні молода моя Вкраїна,
Як калина, мов дівчина, в зорянім вінку.
Буде радості година, коли збратана родина,
Будуть друзі на її шляху.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2255212_l1','pisniua_2255212','YouTube','https://www.youtube.com/watch?v=Beo_ZhyXDIE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2257022';
DELETE FROM song_versions WHERE song_id = 'pisniua_2257022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2257022';
DELETE FROM songs WHERE id = 'pisniua_2257022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2257022','Благослови, Боже','Українська народна пісня. Виконує: Етнографічний хор Гомін','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Благослови, Боже,
Пречиста Госпоже,
І отець і мати
Своєму дитяті
Коровай зібгати!

І в другий раз,
У добрий час!
Благослови, Боже,
Пречиста Госпоже,
І отець і мати
Своєму дитяті
Коровай зібгати!

І в третій раз
У добрий час!
Благослови, Боже,
Пречиста Госпоже,
І отець і мати
Своєму дитяті
Коровай зібгати!','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2257022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2257022','Благослови, Боже','Благослови, Боже,
Пречиста Госпоже,
І отець і мати
Своєму дитяті
Коровай зібгати!

І в другий раз,
У добрий час!
Благослови, Боже,
Пречиста Госпоже,
І отець і мати
Своєму дитяті
Коровай зібгати!

І в третій раз
У добрий час!
Благослови, Боже,
Пречиста Госпоже,
І отець і мати
Своєму дитяті
Коровай зібгати!');
DELETE FROM song_links WHERE song_id = 'pisniua_2257114';
DELETE FROM song_versions WHERE song_id = 'pisniua_2257114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2257114';
DELETE FROM songs WHERE id = 'pisniua_2257114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2257114','В синє море кров Дніпром тече','Українська народна пісня. Виконує: Етнографічний хор Гомін','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'В синє море кров Дніпром тече,
В синє море кров Дніпром тече.
Там Січ наша, гей-гей, там Січ наша,
Там Січ наша на ворога йде!

Попереду отаман їде,
Попереду отаман їде,
Під ним коник, гей-гей, під ним коник,
Під ним коник так сумненько йде.

Ой, як мені веселому буть?
Ой, як мені веселому буть?
На Вкраїну, гей-гей, на Вкраїну,
На Вкраїну москалі ідуть!

Не страшна нам в лютім бою смерть!
Не страшна нам в лютім бою смерть!
Бій приносить, гей-гей, бій приносить,
Бій приносить славу, волю й честь!','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2257114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2257114','В синє море кров Дніпром тече','В синє море кров Дніпром тече,
В синє море кров Дніпром тече.
Там Січ наша, гей-гей, там Січ наша,
Там Січ наша на ворога йде!

Попереду отаман їде,
Попереду отаман їде,
Під ним коник, гей-гей, під ним коник,
Під ним коник так сумненько йде.

Ой, як мені веселому буть?
Ой, як мені веселому буть?
На Вкраїну, гей-гей, на Вкраїну,
На Вкраїну москалі ідуть!

Не страшна нам в лютім бою смерть!
Не страшна нам в лютім бою смерть!
Бій приносить, гей-гей, бій приносить,
Бій приносить славу, волю й честь!');
DELETE FROM song_links WHERE song_id = 'pisniua_225665';
DELETE FROM song_versions WHERE song_id = 'pisniua_225665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225665';
DELETE FROM songs WHERE id = 'pisniua_225665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225665','Ой, заспіваймо - нехай вдома почують...','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські народні мелодії / Зібрав і зредаґував Зіновій Лисько. Т. 7 (Мелодії 6440-7716).- Торонто - Нью Йорк: Українська вільна академія наук у США і Канаді, 1981','Місцевість: Колодяжне, пов. Ковель Першоджерело: "Черв. Калина", ч. 20','1. Ой, заспіваймо - нехай вдома почують!
Ой, нехай же нам вечероньку готують.
2. Утомила нас та широкая нива,
Що тепера нам і вечера немила.
3. Ой не так нива, як високії гори,
Ой не так гори, як широкі загони.
і т. д.    Мелодія для 1 голосу','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225665','Ой, заспіваймо - нехай вдома почують...','1. Ой, заспіваймо - нехай вдома почують!
Ой, нехай же нам вечероньку готують.
2. Утомила нас та широкая нива,
Що тепера нам і вечера немила.
3. Ой не так нива, як високії гори,
Ой не так гори, як широкі загони.
і т. д.    Мелодія для 1 голосу');
DELETE FROM song_links WHERE song_id = 'pisniua_225726';
DELETE FROM song_versions WHERE song_id = 'pisniua_225726';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225726';
DELETE FROM songs WHERE id = 'pisniua_225726';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225726','Посвята','(Пам''яті Володимира Івасюка). Музика: Геннадій Татарченко Слова: Юрій Рибчинський. Виконує: Назарій Яремчук','uk','ukraine_1991',NULL,NULL,'Пісні Назарія Яремчука. "Бібліотека українця", Київ, 1995.','* в аудіозаписі "заплаче"','В терновому вінку мелодій
Навіщо йдеш на небеса,
На кого кидаєш, на кого
Весняний наш пісенний сад?
Заб''ється* мати в дикій тузі,
І сивим левом стане Львів,
На кого кидаєш ти друзів,
І ворогів, і ворогів?

Приспів:
Пішов у синє небо він,          |
Мій брат по долі і по крові,    |
І стогне дзвін, сумує дзвін     | (2)
В душі, і в музиці, і в слові.  |

Без тебе не квітує квітень,
Без тебе літо, мов зима,
Скажи мені, на тому світі
Є Україна чи нема?
Чи справді там за небокраєм
Не знають наших кривд і мук,
Чи там так ангели співають,
Як ми в часи тяжких розлук?

Приспів.

Ти був шаленим і відвертим
З блакиттю чистою в очах,
Без тебе всі роялі мертві,
Без тебе всі скрипки мовчать.
Як важко, брате мій, без тебе
Вкраїнську пісню колисать,
Не зорі падають із неба,
Зірки ідуть на небеса.

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225726'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225726','Посвята','В терновому вінку мелодій
Навіщо йдеш на небеса,
На кого кидаєш, на кого
Весняний наш пісенний сад?
Заб''ється* мати в дикій тузі,
І сивим левом стане Львів,
На кого кидаєш ти друзів,
І ворогів, і ворогів?

Приспів:
Пішов у синє небо він,          |
Мій брат по долі і по крові,    |
І стогне дзвін, сумує дзвін     | (2)
В душі, і в музиці, і в слові.  |

Без тебе не квітує квітень,
Без тебе літо, мов зима,
Скажи мені, на тому світі
Є Україна чи нема?
Чи справді там за небокраєм
Не знають наших кривд і мук,
Чи там так ангели співають,
Як ми в часи тяжких розлук?

Приспів.

Ти був шаленим і відвертим
З блакиттю чистою в очах,
Без тебе всі роялі мертві,
Без тебе всі скрипки мовчать.
Як важко, брате мій, без тебе
Вкраїнську пісню колисать,
Не зорі падають із неба,
Зірки ідуть на небеса.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225726_l1','pisniua_225726','YouTube','https://www.youtube.com/watch?v=sqM6Fy4xqtA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2257010';
DELETE FROM song_versions WHERE song_id = 'pisniua_2257010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2257010';
DELETE FROM songs WHERE id = 'pisniua_2257010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2257010','Благослови, Боже','Українська народна пісня. Виконує: Етнографічний хор Гомін','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Благослови, Боже,
Пречиста Госпоже,
І отець і мати
Своєму дитяті
Це вілечко звити,
Цей день звеселити!

І в другий раз,
У добрий час!
Благослови, Боже,
Пречиста Госпоже,
І отець і мати
Своєму дитяті
Це вілечко звити,
Цей день звеселити!

І в третій раз
У добрий час!
Благослови, Боже,
Пречиста Госпоже,
І отець і мати
Своєму дитяті
Це вілечко звити,
Цей день звеселити!','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2257010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2257010','Благослови, Боже','Благослови, Боже,
Пречиста Госпоже,
І отець і мати
Своєму дитяті
Це вілечко звити,
Цей день звеселити!

І в другий раз,
У добрий час!
Благослови, Боже,
Пречиста Госпоже,
І отець і мати
Своєму дитяті
Це вілечко звити,
Цей день звеселити!

І в третій раз
У добрий час!
Благослови, Боже,
Пречиста Госпоже,
І отець і мати
Своєму дитяті
Це вілечко звити,
Цей день звеселити!');
DELETE FROM song_links WHERE song_id = 'pisniua_2257313';
DELETE FROM song_versions WHERE song_id = 'pisniua_2257313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2257313';
DELETE FROM songs WHERE id = 'pisniua_2257313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2257313','Різдво в серці','Музика: Юлія Шпинда-Малик Слова: Сергій Сірий. Виконує: Юлія Шпинда-Малик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На вікні мороз малює квіти,
Заметіль співає під вікном,
А у домі затишно і світло,
Вся сім''я зібралась за столом.
Цього свята так усі чекали,
Щоб із ним впустити в дім добро,
Щоб прогнати геть старі печалі
І здійснити мрії на Різдво!

Приспів:
Різдво в кожній хаті, у кожному домі,
Воно в кожнім серці зорею зійшло,
Тож, будьмо багаті, щасливі, здорові!
Хай нас зігріває родинне тепло!

На ялинці - іграшки барвисті,
На обрусі - запашна кутя.
Батько вносить дідуха врочисто,
Аби колосилося життя.
Радість колядою лине дзвінко
З побажанням, щоб усе було:
І удача, і любов по вінця,
І збувались мрії на Різдво!

Приспів. (3)

Хай нас зігріває родинне тепло.
Родинне тепло','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2257313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2257313','Різдво в серці','На вікні мороз малює квіти,
Заметіль співає під вікном,
А у домі затишно і світло,
Вся сім''я зібралась за столом.
Цього свята так усі чекали,
Щоб із ним впустити в дім добро,
Щоб прогнати геть старі печалі
І здійснити мрії на Різдво!

Приспів:
Різдво в кожній хаті, у кожному домі,
Воно в кожнім серці зорею зійшло,
Тож, будьмо багаті, щасливі, здорові!
Хай нас зігріває родинне тепло!

На ялинці - іграшки барвисті,
На обрусі - запашна кутя.
Батько вносить дідуха врочисто,
Аби колосилося життя.
Радість колядою лине дзвінко
З побажанням, щоб усе було:
І удача, і любов по вінця,
І збувались мрії на Різдво!

Приспів. (3)

Хай нас зігріває родинне тепло.
Родинне тепло');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2257313_l1','pisniua_2257313','YouTube','https://www.youtube.com/watch?v=WgVG_6V3Zv4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2257313_l2','pisniua_2257313','YouTube','https://www.youtube.com/watch?v=qc7Bu8P-UMA','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_225818';
DELETE FROM song_versions WHERE song_id = 'pisniua_225818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225818';
DELETE FROM songs WHERE id = 'pisniua_225818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225818','Очі волошкові','Музика: Степан Сабадаш Слова: Анатолій Драгомирецький. Виконує: Дмитро Гнатюк, Олександр Василенко, Євген Савчук, Марічка, Василь Лазарович','uk','ukraine_before_1917',NULL,NULL,'За давнім аудіозаписом у виконанні Дмитра Гнатюка.','"Пісню виконав уперше Євген Савчук у супроводі ансамблю "Марічка" — той самий Савчук, якого знаємо як видатного українського диригента, Шевченківського лауреата. Але найкраще заспівав "Очі волошкові" Дмитро Гнатюк." Дивитися: http://www.doba.cv.ua/index.php?file=news.php&num=312&s=10#pos, також на цьому сайті сторінку про Сабадаша (матеріал висланий). Підбір акордів: Sh_Vetal В третьому куплеті за бажанням можна зробити модуляцію вгору. Підбір акордів: Sh_Vetal','Я іду багряним садом,
Туман ляга на лист опалий,
Тут колись ходили рядом,
А навкруги - весна буяла!

Приспів
Ой ви очі волошкові,
Мов троянди, пелюстки-вуста,
Стан твій ніжний, смерековий,
Ти веснянко моя чарівна.

Не забуть мені тi ночі,
Цілунок вуст твоїх медових,
і тепер так серце хоче
Вуста твої відчути знову!

Приспів.

Дні ідуть, літа минають,
Зове душа Прийди кохана!,
Ти повернешся, я знаю,
Моя любов, моя жадана!

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:romansy'', ''Пісні про кохання, ліричні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225818','Очі волошкові','Я іду багряним садом,
Туман ляга на лист опалий,
Тут колись ходили рядом,
А навкруги - весна буяла!

Приспів
Ой ви очі волошкові,
Мов троянди, пелюстки-вуста,
Стан твій ніжний, смерековий,
Ти веснянко моя чарівна.

Не забуть мені тi ночі,
Цілунок вуст твоїх медових,
і тепер так серце хоче
Вуста твої відчути знову!

Приспів.

Дні ідуть, літа минають,
Зове душа Прийди кохана!,
Ти повернешся, я знаю,
Моя любов, моя жадана!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225818_l1','pisniua_225818','YouTube','https://www.youtube.com/watch?v=rH5o6jCa5D4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225818_l2','pisniua_225818','YouTube','https://www.youtube.com/watch?v=Z5SKMdm-xuc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225818_l3','pisniua_225818','YouTube','https://www.youtube.com/watch?v=Lijjq1PtGXg','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225818_l4','pisniua_225818','YouTube','https://www.youtube.com/watch?v=crcjXFJyvs8','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225818_l5','pisniua_225818','YouTube','https://www.youtube.com/watch?v=rmxagMFpgGQ','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225818_l6','pisniua_225818','YouTube','https://www.youtube.com/watch?v=k-4FKQYfyK4','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_2257328';
DELETE FROM song_versions WHERE song_id = 'pisniua_2257328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2257328';
DELETE FROM songs WHERE id = 'pisniua_2257328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2257328','Їхали чумаки з України','Українська народна пісня. Виконує: Очеретяний кіт','uk','ukraine_before_1917',NULL,NULL,'http://ocheret.blogspot.com/p/blog-page_08.html',NULL,'Їхали чумаки
З України,
Та пустили пожар
По долині.

Та пустили пожар
По долині -
Соловйові діточки
Погоріли.

Чи ж я тобі, брате,
Не казала,
Чи ж я твого серденька
Не прияла.

Щоб не вив гніздечка
Та й в лужині -
А ізвив гніздечко
В березині.

А ізвив гніздечко
В березині,
На високім дереві -
Яворині...

Їхали чумаки
З України,
Та пустили пожар
По долині...','[''pisni.org.ua'', ''cat:chumacki'', ''Чумацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2257328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2257328','Їхали чумаки з України','Їхали чумаки
З України,
Та пустили пожар
По долині.

Та пустили пожар
По долині -
Соловйові діточки
Погоріли.

Чи ж я тобі, брате,
Не казала,
Чи ж я твого серденька
Не прияла.

Щоб не вив гніздечка
Та й в лужині -
А ізвив гніздечко
В березині.

А ізвив гніздечко
В березині,
На високім дереві -
Яворині...

Їхали чумаки
З України,
Та пустили пожар
По долині...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2257328_l1','pisniua_2257328','YouTube','https://www.youtube.com/watch?v=Y6qBWjIdt78','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_225879';
DELETE FROM song_versions WHERE song_id = 'pisniua_225879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225879';
DELETE FROM songs WHERE id = 'pisniua_225879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225879','На Різдво Христове','Музика: Ігор Перчук, Ярослав Дуб Слова: Зеновій Филипчук. Виконує: Інеса Братущик, Настя Сердюк','uk','ukr_ssr_1919_1991',NULL,'1989','Аудіозапис концерту фестивалю "Червона рута" в Ченівцях (1989)','Пісню вперше на широкій публіці виконав на першому фестивалі "Червона Рута" в Чернівцях 1989 року невідомий мені автор з діаспори в Росії, після чого ця пісня практично стала народною. Доповнення від "bohdanko": Акорди записано на слух з аудіо. Тональність оригінальна (така ж, як і в аудіо-джерелі); але можливо, що в оригіналі пісня виконувалась на півтон вище (з каподастром на I ладі). * Тут 2 останні рядки - це фрагмент коляди "Нова радість стала" Підбір акордів: bohdanko (pisni.org.ua)','Вступ: Dm C Dm
Сядемо до столу   всі на Святий вечір,
Сяйво загориться   в кожному вікні
І на Україні,   і вкраю далечім -      |
Там, де б''ється серце   нашої рідні.   |
І поставим свічі там попід хрестами,
Кому відсіяли зорі голубі,
Але їхня воля, їхня віра з нами,      |(2)
Нас не покидає в щасті та журбі.      |
Тож нехай коляди близькі і далекі
На Різдво Христове злиються в одно -
Як навесні в парі зоряні лелеки      |(2)
Із чужин вернули на своє гніздо.     |
Сядемо до столу всі на Святий вечір,
Сяйво загориться в кожному вікні...
І на Україні, і вкраю далечім -     |(2)
Там, де б''ється серце нашої рідні.  |
Тож нехай коляди близькі і далекі
На Різдво Христове злиються в одно...
Над вертепом звізда ясна
У весь сві- іт засія- а- ла... *','[''pisni.org.ua'', ''cat:bardivski'', ''cat:emigration'', ''cat:nostalgia'', ''Бардівські пісні'', ''Пісні про еміґрацію'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225879','На Різдво Христове','Вступ: Dm C Dm
Сядемо до столу   всі на Святий вечір,
Сяйво загориться   в кожному вікні
І на Україні,   і вкраю далечім -      |
Там, де б''ється серце   нашої рідні.   |
І поставим свічі там попід хрестами,
Кому відсіяли зорі голубі,
Але їхня воля, їхня віра з нами,      |(2)
Нас не покидає в щасті та журбі.      |
Тож нехай коляди близькі і далекі
На Різдво Христове злиються в одно -
Як навесні в парі зоряні лелеки      |(2)
Із чужин вернули на своє гніздо.     |
Сядемо до столу всі на Святий вечір,
Сяйво загориться в кожному вікні...
І на Україні, і вкраю далечім -     |(2)
Там, де б''ється серце нашої рідні.  |
Тож нехай коляди близькі і далекі
На Різдво Христове злиються в одно...
Над вертепом звізда ясна
У весь сві- іт засія- а- ла... *');
DELETE FROM song_links WHERE song_id = 'pisniua_2258354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2258354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2258354';
DELETE FROM songs WHERE id = 'pisniua_2258354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2258354','Любив дiвчину, дiвчина мене','Українська народна пісня. Виконує: Етнографічний хор Гомін','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Любив дівчину, дівчина мене,
Казала вона: прийди до мене!
Прийди, прийди, серденько моє! | (2)

Прийшов до неї я в понеділок -
Нема дівчини, поле барвінок.
Ага, нема дівчини вдома!       | (2)

Прийшов до неї рано в вівторок -
Нема дівчини а вже днів сорок.
Ага, нема дівчини вдома!       | (2)

Прийшов до неї рано в середу -
Нема дівчини, пасе череду.
Ага, нема дівчини вдома!       | (2)

Прийшов до неї рано у четвер -
Нема дівчини, нема і тепер.
Ага, нема дівчини вдома!       | (2)

Прийшов до неї рано в п''ятницю -
Нема дівчини, пасе телицю.
Ага, нема дівчини вдома!       | (2)

Прийшов до неї рано в суботу -
Нема дівчини, робить роботу.
Ага, нема дівчини вдома!       | (2)

Прийшов до неї рано в неділю -
Дала дівчина сорочку білу.
Сорочку дала й поцілувала!     | (2)
О!','[''pisni.org.ua'', ''cat:naddnipryanski'', ''Наддніпрянські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2258354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2258354','Любив дiвчину, дiвчина мене','Любив дівчину, дівчина мене,
Казала вона: прийди до мене!
Прийди, прийди, серденько моє! | (2)

Прийшов до неї я в понеділок -
Нема дівчини, поле барвінок.
Ага, нема дівчини вдома!       | (2)

Прийшов до неї рано в вівторок -
Нема дівчини а вже днів сорок.
Ага, нема дівчини вдома!       | (2)

Прийшов до неї рано в середу -
Нема дівчини, пасе череду.
Ага, нема дівчини вдома!       | (2)

Прийшов до неї рано у четвер -
Нема дівчини, нема і тепер.
Ага, нема дівчини вдома!       | (2)

Прийшов до неї рано в п''ятницю -
Нема дівчини, пасе телицю.
Ага, нема дівчини вдома!       | (2)

Прийшов до неї рано в суботу -
Нема дівчини, робить роботу.
Ага, нема дівчини вдома!       | (2)

Прийшов до неї рано в неділю -
Дала дівчина сорочку білу.
Сорочку дала й поцілувала!     | (2)
О!');
DELETE FROM song_links WHERE song_id = 'pisniua_225961';
DELETE FROM song_versions WHERE song_id = 'pisniua_225961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225961';
DELETE FROM songs WHERE id = 'pisniua_225961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225961','По землі криваве місиво','(Серденько поранила). Музика: Анатолій Сухий Слова: Анатолій Сухий. Виконує: Кость Єрофєєв, Рутенія','uk','ukraine_1991',NULL,NULL,'За аудіозаписом концерту частини гурту "Рутенія" в Москві 1988(89) року.','Назву пісні слід уточнити. Виконують: гурт "Рутенія", Кость Єрофєєв. Автори пісні, ймовірно, в середовищі гурту "Рутенія".','По землі криваве місиво,
А я ніженьки порізала,
Ніженьки порізала,
Серденько поранила...
Що ж ти дивишся, мій хлопчику, -
Я стою зґвалтована,
Я стою розхристана, -
Візьми ножа й доріж.

Приспів:
Гей,
Та не пора ще спати нам,
Бо ще вогні не згасли там,
Де
Слова лунають крізь бетон,
А пісня рве гнилий кордон,
Ще,
Ще кобзи струни не звучать,
А наші душі вже кричать:
Сті-і-ій!

Father, tell me please what is the Ukraine?
Vater, zagen sie bitte was ist die Ukraine?
Ojtec, powiedz mnie co to jest Ukraina?
Папа, что такое Украина? Почему я украинец?

Ми кохалися під зорями, -
А степи твої розорені,
Ми співали про смерічечки, -
Повсихали твої річечки,
А на нас чужі кожушини, -
А сини твої задушені...

Приспів:','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_225961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_225961','По землі криваве місиво','По землі криваве місиво,
А я ніженьки порізала,
Ніженьки порізала,
Серденько поранила...
Що ж ти дивишся, мій хлопчику, -
Я стою зґвалтована,
Я стою розхристана, -
Візьми ножа й доріж.

Приспів:
Гей,
Та не пора ще спати нам,
Бо ще вогні не згасли там,
Де
Слова лунають крізь бетон,
А пісня рве гнилий кордон,
Ще,
Ще кобзи струни не звучать,
А наші душі вже кричать:
Сті-і-ій!

Father, tell me please what is the Ukraine?
Vater, zagen sie bitte was ist die Ukraine?
Ojtec, powiedz mnie co to jest Ukraina?
Папа, что такое Украина? Почему я украинец?

Ми кохалися під зорями, -
А степи твої розорені,
Ми співали про смерічечки, -
Повсихали твої річечки,
А на нас чужі кожушини, -
А сини твої задушені...

Приспів:');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_225961_l1','pisniua_225961','YouTube','https://www.youtube.com/watch?v=8_3_2UJhC5w','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2260457';
DELETE FROM song_versions WHERE song_id = 'pisniua_2260457';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2260457';
DELETE FROM songs WHERE id = 'pisniua_2260457';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2260457','На безіменній висоті','Музика: Веніамін Баснер Слова: Михайло Матусовський. Виконує: Іван Брязун','uk','ukraine_1991',NULL,NULL,'Пісні до свят. Муз. Укр. - К., 1975 р.',NULL,'Гаї диміли під горою,
Вечірній обрій пломенів...
Нас залишалось тільки троє
Із вісімнадцяти бійців.
О, скільки їх, хороших друзів,
Лежать лишилось в темноті
Край незнайомого присілку |
На безіменній висоті...   | (2)

Ракета падала, світила
Вогонь, як зірка, догоряв...
Кого в бою тім не скосило -
Назавжди все запам''ятав.
Вік не забуде, не забуде
Атаки лютії оті
Край незнайомого присілку |
На безіменній висоті...   | (2)

Над нами "мессери" кружляли,
І ворог злішав з кожним днем...
Та ще міцніше ми єднались
Під перехресним артвогнем.
І як би важко не бувало,
Ти в мрії вірив золоті
Край незнайомого присілку |
На безіменній висоті...   | (2)

У снах я бачу вас, солдати,
З ким на фронтах пройшов війну,
Землянку нашу в три накати,
Над нею звуглену сосну.
Неначе знову разом з вами
У тій задимленій путі
Край незнайомого присілку |
На безіменній висоті...   | (2)','[''pisni.org.ua'', ''cat:viyskovi'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2260457'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2260457','На безіменній висоті','Гаї диміли під горою,
Вечірній обрій пломенів...
Нас залишалось тільки троє
Із вісімнадцяти бійців.
О, скільки їх, хороших друзів,
Лежать лишилось в темноті
Край незнайомого присілку |
На безіменній висоті...   | (2)

Ракета падала, світила
Вогонь, як зірка, догоряв...
Кого в бою тім не скосило -
Назавжди все запам''ятав.
Вік не забуде, не забуде
Атаки лютії оті
Край незнайомого присілку |
На безіменній висоті...   | (2)

Над нами "мессери" кружляли,
І ворог злішав з кожним днем...
Та ще міцніше ми єднались
Під перехресним артвогнем.
І як би важко не бувало,
Ти в мрії вірив золоті
Край незнайомого присілку |
На безіменній висоті...   | (2)

У снах я бачу вас, солдати,
З ким на фронтах пройшов війну,
Землянку нашу в три накати,
Над нею звуглену сосну.
Неначе знову разом з вами
У тій задимленій путі
Край незнайомого присілку |
На безіменній висоті...   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2259414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2259414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2259414';
DELETE FROM songs WHERE id = 'pisniua_2259414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2259414','Обійми','Музика: Гурт "Океан Ельзи" Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_before_1917',NULL,NULL,'Офіційна група ОЕ Вконтакті','Рустам Минивэнов.','Коли настане день,
Закінчиться війна,
Там загубив себе,
Побачив аж до дна

Приспів:
Обійми мене, обійми мене, обійми
Так лагідно і не пускай,
Обійми мене, обійми мене, обійми
Твоя весна прийде нехай.

І от моя душа складає зброю вниз,
Невже таки вона
Так хоче теплих сліз?

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2259414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2259414','Обійми','Коли настане день,
Закінчиться війна,
Там загубив себе,
Побачив аж до дна

Приспів:
Обійми мене, обійми мене, обійми
Так лагідно і не пускай,
Обійми мене, обійми мене, обійми
Твоя весна прийде нехай.

І от моя душа складає зброю вниз,
Невже таки вона
Так хоче теплих сліз?

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2259414_l1','pisniua_2259414','YouTube','https://www.youtube.com/watch?v=--Wokwe4-i0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2259414_l2','pisniua_2259414','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2260158';
DELETE FROM song_versions WHERE song_id = 'pisniua_2260158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2260158';
DELETE FROM songs WHERE id = 'pisniua_2260158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2260158','Ой, послала мене мати до Дунаю хусти прати','Українська народна пісня. Виконує: Етнографічний хор Гомін','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, послала мене мати
До Дунаю хусти прати.

Приспів:
Дунаю, Дунаю,
Дунаєчку, Дунаю,
Яка в тобі зимна вода
На краю, на краю!

Ой, чи прала, чи не прала -
З парубками простояла.

Приспів.

За те ж мене мати била,
Щоб я пізно не ходила,
Щоб я пізно не ходила,
Щоб я хлопців не любила.

Приспів.

Я ж нікого не любила,
Тільки Петра та Данила,
Тільки Гриця та Степана,
Ще й чорнявого Івана.

Приспів.

Сватай, сватай мене, Грицю,
Казав батько: дам телицю,
Казав батько: дам вола,
Аби вдома не була!

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2260158'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2260158','Ой, послала мене мати до Дунаю хусти прати','Ой, послала мене мати
До Дунаю хусти прати.

Приспів:
Дунаю, Дунаю,
Дунаєчку, Дунаю,
Яка в тобі зимна вода
На краю, на краю!

Ой, чи прала, чи не прала -
З парубками простояла.

Приспів.

За те ж мене мати била,
Щоб я пізно не ходила,
Щоб я пізно не ходила,
Щоб я хлопців не любила.

Приспів.

Я ж нікого не любила,
Тільки Петра та Данила,
Тільки Гриця та Степана,
Ще й чорнявого Івана.

Приспів.

Сватай, сватай мене, Грицю,
Казав батько: дам телицю,
Казав батько: дам вола,
Аби вдома не була!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2260158_l1','pisniua_2260158','YouTube','https://www.youtube.com/watch?v=O6QyYC7Tt2A','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2260158_l2','pisniua_2260158','YouTube','https://www.youtube.com/watch?v=T6xaB2Jvd8s','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2259665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2259665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2259665';
DELETE FROM songs WHERE id = 'pisniua_2259665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2259665','Кожушок','Музика: Анна Олєйнікова Слова: Платон Воронько. Виконує: Анастасія Боднарчук','uk','ukraine_1991',NULL,'2013','власна пісня','Нова пісня для дітей. Опублікована у збірці *Анна Олєйнікова. Зимонька. "Іліон", Миколаїв, 2013 р.','Йшов сніжок на торжок
Продавати кожушок.
Кіт купив того кожуха,
Загорнувсь по самі вуха.

Ой, сніг, ой, сніжок,
То був сніжний кожушок!

Як забіг у нім до хати,
Хутро стало розтавати.
Сів воркотик за мішком
Та й умився кожушком.

Ой, сніг, ой, сніжок,
Ой, розтанув кожушок','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2259665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2259665','Кожушок','Йшов сніжок на торжок
Продавати кожушок.
Кіт купив того кожуха,
Загорнувсь по самі вуха.

Ой, сніг, ой, сніжок,
То був сніжний кожушок!

Як забіг у нім до хати,
Хутро стало розтавати.
Сів воркотик за мішком
Та й умився кожушком.

Ой, сніг, ой, сніжок,
Ой, розтанув кожушок');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2259665_l1','pisniua_2259665','YouTube','https://www.youtube.com/watch?v=klAK1dDxf2o','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2260920';
DELETE FROM song_versions WHERE song_id = 'pisniua_2260920';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2260920';
DELETE FROM songs WHERE id = 'pisniua_2260920';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2260920','Нехай квітує Україна','Музика: Олександр Кузьміч Слова: Ірина Зінковська. Виконує: Ірина Зінковська','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Закохана у волю,
Закохана в життя,
Зазнала і недолю,
Терпіла забуття.
Так хочу сонцем гріти,
Цвісти для всіх людей,
Вогнем завжди горіти
В серцях своїх дітей.

Приспів:
Нехай квітує Україна
В духмяних сонячних садах!
Нехай збирається родина -
Наш оберіг у всіх віках!
Привітною хай буде доля,
Не буде заздрості і зла!
Цінуймо, браття, нашу волю,
Нам треба жити для добра!

Я вірю, все минеться
І прийде новий час:
Світ щиро усміхнеться
Від радості за нас.
Я - Україна-мати
І Берегиня літ.
Я хочу об''єднати
Весь український рід!

Приспів','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2260920'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2260920','Нехай квітує Україна','Закохана у волю,
Закохана в життя,
Зазнала і недолю,
Терпіла забуття.
Так хочу сонцем гріти,
Цвісти для всіх людей,
Вогнем завжди горіти
В серцях своїх дітей.

Приспів:
Нехай квітує Україна
В духмяних сонячних садах!
Нехай збирається родина -
Наш оберіг у всіх віках!
Привітною хай буде доля,
Не буде заздрості і зла!
Цінуймо, браття, нашу волю,
Нам треба жити для добра!

Я вірю, все минеться
І прийде новий час:
Світ щиро усміхнеться
Від радості за нас.
Я - Україна-мати
І Берегиня літ.
Я хочу об''єднати
Весь український рід!

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2260920_l1','pisniua_2260920','YouTube','https://www.youtube.com/watch?v=GNvlpBO32B8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2260920_l2','pisniua_2260920','YouTube','https://www.youtube.com/watch?v=y2qrai2cbqs','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2261379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2261379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2261379';
DELETE FROM songs WHERE id = 'pisniua_2261379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2261379','Друзі','Музика: Олесь Коляда Слова: Іван Козаченко. Виконує: Олесь Коляда','uk','ukraine_1991',NULL,NULL,'О. Коляда. Пісні для української родини. Бердичів, 1999 р.',NULL,'Дороги бистрої стріла,
Неначе ниточка згорає.
Вона не раз мене вела
На край землі і поза краєм.
І щоб не трапилось біди
Поміж реалій та ілюзій,
Мене сьогодні і завжди
Зустрінуть і проводять друзі.

В зеленім золоті поля,
У вечоровій теплій тузі,
Я чую вас ізвіддаля,
Мої далекі добрі друзі.
На цій землі тонкій, мов лист,
Що можна подихом пробити
Ви маєте священний хист -
Чекати, вірити, любити.

Що можу я зробить для вас,
Про що для вас молити Бога?
Нехай невладним буде час
І світла стелиться дорога.
Хай щастя буде повен дім,
Здоров''я і добра комори,
Нехай у серці молодім
Ніколи не гостює горе.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2261379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2261379','Друзі','Дороги бистрої стріла,
Неначе ниточка згорає.
Вона не раз мене вела
На край землі і поза краєм.
І щоб не трапилось біди
Поміж реалій та ілюзій,
Мене сьогодні і завжди
Зустрінуть і проводять друзі.

В зеленім золоті поля,
У вечоровій теплій тузі,
Я чую вас ізвіддаля,
Мої далекі добрі друзі.
На цій землі тонкій, мов лист,
Що можна подихом пробити
Ви маєте священний хист -
Чекати, вірити, любити.

Що можу я зробить для вас,
Про що для вас молити Бога?
Нехай невладним буде час
І світла стелиться дорога.
Хай щастя буде повен дім,
Здоров''я і добра комори,
Нехай у серці молодім
Ніколи не гостює горе.');
DELETE FROM song_links WHERE song_id = 'pisniua_226010';
DELETE FROM song_versions WHERE song_id = 'pisniua_226010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_226010';
DELETE FROM songs WHERE id = 'pisniua_226010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_226010','Живи, Україно, прекрасна і сильна','Українська народна пісня. Виконує: Рутенія, Кость Єрофєєв','uk','ukraine_before_1917',NULL,NULL,'За аудіозаписом концерту частини гурту "Рутенія" 1988(89) року в Москві.','Пісню виконують: "Рутенія", Кость Єрофєєв. Автори, ймовірно, в середовищі гурту "Рутенія" (Анатолій Сухий, Кость Єрофєєв).','Живи, Україно, прекрасна і сильна, -
В Совітськім Союзі ти щастя знайшла,
Між рівними рівна, між вільними вільна
Під сонцем свободи, як цвіт розцвіла.

Слава Союзу Совєтському, слава,
Слава Вітчизні навіки віків!
Живи, Україно, Совєтська держава
В єдиній родині народів-братів.

Я перечитую жовті сторінки             |
Бульварної преси - "Вечірнього Києва", |
Де верховодить своєю елітою            |
Київський князь Володимир Васильович.  |
І не візьме його ні параліч,           |(2)
Ані змій зелений,                      |
Батько його, звичайно, Ілліч,          |
Але на жаль, на щастя, не Ленін...     |','[''pisni.org.ua'', ''cat:bardivski'', ''cat:suspilno-politychni'', ''Бардівські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_226010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_226010','Живи, Україно, прекрасна і сильна','Живи, Україно, прекрасна і сильна, -
В Совітськім Союзі ти щастя знайшла,
Між рівними рівна, між вільними вільна
Під сонцем свободи, як цвіт розцвіла.

Слава Союзу Совєтському, слава,
Слава Вітчизні навіки віків!
Живи, Україно, Совєтська держава
В єдиній родині народів-братів.

Я перечитую жовті сторінки             |
Бульварної преси - "Вечірнього Києва", |
Де верховодить своєю елітою            |
Київський князь Володимир Васильович.  |
І не візьме його ні параліч,           |(2)
Ані змій зелений,                      |
Батько його, звичайно, Ілліч,          |
Але на жаль, на щастя, не Ленін...     |');
DELETE FROM song_links WHERE song_id = 'pisniua_2259717';
DELETE FROM song_versions WHERE song_id = 'pisniua_2259717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2259717';
DELETE FROM songs WHERE id = 'pisniua_2259717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2259717','То є Львів','Музика: Скрябін Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,'vk.com',NULL,'Привіт, старий, ти кльово виглядаєш.
Я гордий, шо давно вже так і добре тебе знаю.
Ми знов зустрілись, веди мене на каву
Як 20 років тому, де костел на Привокзальній.
Сімка вниз, на Погулянку повертає,
Дзеленькає сердито, бо все часу немає,
Ну, а площа Ринок спати не лягає,
Історії збирає і розповідає...

То є Львів, мій колєґа, про нього різне кажуть:
Приезжим из востока Криївку тут покажуть.
То є Львів, моє місто, не з простого тіста,
Ліплений роками - друзями й ворогами.
То є Львів старенький, мудрий, сивий дядько,
Кожному залишить кавалочок на згадку.
То є Львів "Бонжорно!", Неаполь і Ліворно,
По-галицьки говорять, наші в них погоду роблять.

Дівка-Левандівка пахне поїздами,
Мостами, переїздами і гострими словами,
А ратуша скучає, шпилем небо дзюравить,
Вона крута чувіха, і її ніхто не сварить.
Ну, а Сихів-Сихів, в автобусі надихав,
Вікна запотіли від запахів неділі,
А стара Пекарська, я нею нагулявся,
Як пари пропускав і по Личакові хитався.

То є Львів, шановні, вбирайте шлюбні сподні,
Краватку, маринарку і "вйо!" по Стрийськім парку.
То є Львів чудовий, вуйко ґонуровий,
Я тішуся, шо з вами ходжу цими вулицями.
То є Львів старенький, мудрий, сивий дядько,
Кожному залишить кавалочок на згадку.
То є Львів "Бонжорно!", Неаполь і Ліворно,
По-галицьки говорять, наші в них погоду роблять.
То є Львів, то Львів...','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2259717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2259717','То є Львів','Привіт, старий, ти кльово виглядаєш.
Я гордий, шо давно вже так і добре тебе знаю.
Ми знов зустрілись, веди мене на каву
Як 20 років тому, де костел на Привокзальній.
Сімка вниз, на Погулянку повертає,
Дзеленькає сердито, бо все часу немає,
Ну, а площа Ринок спати не лягає,
Історії збирає і розповідає...

То є Львів, мій колєґа, про нього різне кажуть:
Приезжим из востока Криївку тут покажуть.
То є Львів, моє місто, не з простого тіста,
Ліплений роками - друзями й ворогами.
То є Львів старенький, мудрий, сивий дядько,
Кожному залишить кавалочок на згадку.
То є Львів "Бонжорно!", Неаполь і Ліворно,
По-галицьки говорять, наші в них погоду роблять.

Дівка-Левандівка пахне поїздами,
Мостами, переїздами і гострими словами,
А ратуша скучає, шпилем небо дзюравить,
Вона крута чувіха, і її ніхто не сварить.
Ну, а Сихів-Сихів, в автобусі надихав,
Вікна запотіли від запахів неділі,
А стара Пекарська, я нею нагулявся,
Як пари пропускав і по Личакові хитався.

То є Львів, шановні, вбирайте шлюбні сподні,
Краватку, маринарку і "вйо!" по Стрийськім парку.
То є Львів чудовий, вуйко ґонуровий,
Я тішуся, шо з вами ходжу цими вулицями.
То є Львів старенький, мудрий, сивий дядько,
Кожному залишить кавалочок на згадку.
То є Львів "Бонжорно!", Неаполь і Ліворно,
По-галицьки говорять, наші в них погоду роблять.
То є Львів, то Львів...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2259717_l1','pisniua_2259717','YouTube','https://www.youtube.com/watch?v=F7IpMyW4nWA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_226022';
DELETE FROM song_versions WHERE song_id = 'pisniua_226022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_226022';
DELETE FROM songs WHERE id = 'pisniua_226022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_226022','Панамерікан','Музика: Анатолій Сухий Слова: Анатолій Сухий. Виконує: Рутенія','uk','ukraine_1991',NULL,'2001','За аудіозаписом концерту частини гурту "Рутенія" 1988(89) року в Москві.','Пісню виконують: гурт "Рутенія", Кость Єрофєєв. Автори пісні, ймовірно, в середовищі гурту "Рутенія" (Анатолій Сухий, Кость Єрофєєв). Доповнив Bohdanko: Назву пісні уточнив за Аудіо-CD "Рутенія. 10 років по тому" (2001)','Забери мене, Pan American,
Не в Калькутту і не в Рим,
А на острів, де тече ріка,
Де вулканів білий дим.

Відвези мене, Pan American,
Рейсом своїм голубим
Від обіцянок істерики -
Я не хочу бути злим...

Там, де правда замінила правду,
Мова замінила мову,
Віра замінила віру,
Зрада замінила зраду.

Я втомився від речей пустих,
Від базальтових облич,
Окулярів, лисин, брів густих,
Там, де чорний день зміняє білу ніч.

Відвези мене, Pan American,
До моїх дитячих снів,
Невідомого материка,
В край дельфінів і слонів.

Там, де... Де туземки синьоокі,
Де фламінго білий стрій,
Де мені поверне спокій
Маскарад забутих мрій.

Забери мене до рідних слів
Від засліплюючих фраз,
Чорний день зміняє білу ніч -
Нам нема шляху назад.

Вперед,
Вперед, вперед, вперед до синіх атолів,
Вперед, вперед, вперед в пустоту,
Вперед, вперед, вперед в царство білих магнолій,
Вперед... Що там я знайду?

Забери мене, Pan American,
Не в Калькутту і не в Рим,
А на острів, де тече ріка,
Де вулканів білий дим.','[''pisni.org.ua'', ''cat:manrivni'', ''cat:suspilno-politychni'', ''Пісні на мандрівну тематику'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_226022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_226022','Панамерікан','Забери мене, Pan American,
Не в Калькутту і не в Рим,
А на острів, де тече ріка,
Де вулканів білий дим.

Відвези мене, Pan American,
Рейсом своїм голубим
Від обіцянок істерики -
Я не хочу бути злим...

Там, де правда замінила правду,
Мова замінила мову,
Віра замінила віру,
Зрада замінила зраду.

Я втомився від речей пустих,
Від базальтових облич,
Окулярів, лисин, брів густих,
Там, де чорний день зміняє білу ніч.

Відвези мене, Pan American,
До моїх дитячих снів,
Невідомого материка,
В край дельфінів і слонів.

Там, де... Де туземки синьоокі,
Де фламінго білий стрій,
Де мені поверне спокій
Маскарад забутих мрій.

Забери мене до рідних слів
Від засліплюючих фраз,
Чорний день зміняє білу ніч -
Нам нема шляху назад.

Вперед,
Вперед, вперед, вперед до синіх атолів,
Вперед, вперед, вперед в пустоту,
Вперед, вперед, вперед в царство білих магнолій,
Вперед... Що там я знайду?

Забери мене, Pan American,
Не в Калькутту і не в Рим,
А на острів, де тече ріка,
Де вулканів білий дим.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_226022_l1','pisniua_226022','YouTube','https://www.youtube.com/watch?v=nsDuANbN-BQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_226022_l2','pisniua_226022','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2261522';
DELETE FROM song_versions WHERE song_id = 'pisniua_2261522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2261522';
DELETE FROM songs WHERE id = 'pisniua_2261522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2261522','Іще не кинуто монету','Музика: Геннадій Желуденко Слова: Леонід Латинін','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Іще не кинуто монету...
Ще доля коней не жене,
Ще в тартар не летить планета...
Люби мене, люби мене.
Допоки ще дзвінок не грянув,
Неначе грім безхмарним днем,
Допоки в вічність я не канув -
Люби мене, люби мене.

Іще бруківка під ногами,
Ще повен струму кожен нерв,
Іще горить зоря над нами...
Люби мене, люби мене.
Ще десь лиш в зародку розлука,
Ще завтра бажане й ясне,
Іще прекрасна навіть мука...
Люби мене, люби мене.

Ще є снага, ще кличуть мрії,
Ще не збулося головне,
Іще горить свіча надії...
Люби мене, люби мене.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2261522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2261522','Іще не кинуто монету','Іще не кинуто монету...
Ще доля коней не жене,
Ще в тартар не летить планета...
Люби мене, люби мене.
Допоки ще дзвінок не грянув,
Неначе грім безхмарним днем,
Допоки в вічність я не канув -
Люби мене, люби мене.

Іще бруківка під ногами,
Ще повен струму кожен нерв,
Іще горить зоря над нами...
Люби мене, люби мене.
Ще десь лиш в зародку розлука,
Ще завтра бажане й ясне,
Іще прекрасна навіть мука...
Люби мене, люби мене.

Ще є снага, ще кличуть мрії,
Ще не збулося головне,
Іще горить свіча надії...
Люби мене, люби мене.');
DELETE FROM song_links WHERE song_id = 'pisniua_226158';
DELETE FROM song_versions WHERE song_id = 'pisniua_226158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_226158';
DELETE FROM songs WHERE id = 'pisniua_226158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_226158','Жовтий дощ із голубої хмари','Музика: Кость Москалець Слова: Кость Москалець. Виконує: Кость Москалець','uk','ukraine_1991',NULL,NULL,'За аудіозаписом кнцерту 19 березня 1989 року в Москві.','Назву пісні слід уточнити.','Ще учора це дівчисько було в школі,
Просувало форму звечора собі,
Нині втікло це дівчисько з дому
І блукає, і зустрінеться тобі.

Соловейка промайнула тінь,
Зупинись, невже ти не помітив?
У дівчиська стрічка на чолі -
Два кольори: жовтий і... і блакитний!

Ще учора був ти ренеґатом,
Плазував, лизав, аплодував -
Так навчив тебе робити тато,
Рідна школа теж допомогла.

Жовтий дощ із голубої хмари
Сипле довго - майже цілу ніч,
Нам не треба сірих тротуарів,
Сниться міліціонерові Париж,
Париж...

Нині маєш свій останній шанс -
Пригадай напівзабуту мову,
Зрозумій оце ім''я - Тарас
І не бійся патиків гумових.

І не бійся кулі чи ножа,
Житимеш! Якщо ти це помітив -
Дівчинка іде, у неї стрічка -
Два кольори: жовтий і блакитний!

Жовтий дощ із голубої хмари
Сипле довго - майже цілу ніч,
Нам не треба нових яничарів,
А старі подохнуть і самі!
Самі...','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_226158'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_226158','Жовтий дощ із голубої хмари','Ще учора це дівчисько було в школі,
Просувало форму звечора собі,
Нині втікло це дівчисько з дому
І блукає, і зустрінеться тобі.

Соловейка промайнула тінь,
Зупинись, невже ти не помітив?
У дівчиська стрічка на чолі -
Два кольори: жовтий і... і блакитний!

Ще учора був ти ренеґатом,
Плазував, лизав, аплодував -
Так навчив тебе робити тато,
Рідна школа теж допомогла.

Жовтий дощ із голубої хмари
Сипле довго - майже цілу ніч,
Нам не треба сірих тротуарів,
Сниться міліціонерові Париж,
Париж...

Нині маєш свій останній шанс -
Пригадай напівзабуту мову,
Зрозумій оце ім''я - Тарас
І не бійся патиків гумових.

І не бійся кулі чи ножа,
Житимеш! Якщо ти це помітив -
Дівчинка іде, у неї стрічка -
Два кольори: жовтий і блакитний!

Жовтий дощ із голубої хмари
Сипле довго - майже цілу ніч,
Нам не треба нових яничарів,
А старі подохнуть і самі!
Самі...');
DELETE FROM song_links WHERE song_id = 'pisniua_226114';
DELETE FROM song_versions WHERE song_id = 'pisniua_226114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_226114';
DELETE FROM songs WHERE id = 'pisniua_226114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_226114','Та ти, дівко, подівочиш...','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'За аудіозаписом концерту на фестивалі "Червона Рута" 1989 року.','Симпатичне подання пісні невідомим мені виконавцем.','Та ти, дівко, подівочиш, та я полегіню,
Будем ми си побирати на святу неділю.

Казала-м ти, легінику, та й буду казати:
Не бери ня, молоденьку, - будеш банувати.

Ой будеш ти банувати, будеш банувати,
Та як будеш у суботу сам сорочку прати.

Та я буду у суботу сам сорочку прати,
Та я буду у неділю файну жону мати.

Хоть гори йду, хоть долу йду - до дівчини зайду,
Та в дівчини файні очка - біди собі знайду.

Чотири би писарики не переписали,
Що ми двоє із миленьков перещебетали.

Ой сяду я на коника - вішта, коню, вішта -
Та лиш тими доріжками, куди мила ішла.','[''pisni.org.ua'', ''cat:huculski'', ''Гуцульські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_226114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_226114','Та ти, дівко, подівочиш...','Та ти, дівко, подівочиш, та я полегіню,
Будем ми си побирати на святу неділю.

Казала-м ти, легінику, та й буду казати:
Не бери ня, молоденьку, - будеш банувати.

Ой будеш ти банувати, будеш банувати,
Та як будеш у суботу сам сорочку прати.

Та я буду у суботу сам сорочку прати,
Та я буду у неділю файну жону мати.

Хоть гори йду, хоть долу йду - до дівчини зайду,
Та в дівчини файні очка - біди собі знайду.

Чотири би писарики не переписали,
Що ми двоє із миленьков перещебетали.

Ой сяду я на коника - вішта, коню, вішта -
Та лиш тими доріжками, куди мила ішла.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_226114_l1','pisniua_226114','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_22616';
DELETE FROM song_versions WHERE song_id = 'pisniua_22616';
DELETE FROM songs_fts WHERE song_id = 'pisniua_22616';
DELETE FROM songs WHERE id = 'pisniua_22616';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_22616','Час прощання',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вже надходить час прощання між нами,
Приємно провели ми час.
Минули вже ті дні чарівні і веселі,
Прощаємо вас.

А тепер лиш думка в серці зосталась,
І спомином жити будем.
Як прийдеться колись зустрітися знову -
Думками вернем.

Згадаймо ті хвилини,
Як разом ми всі були,
Як вогники нас чарували,
І іскри навіки гасли.

Та ще знову прийде час вернутись,
Де тихі ліси все шумлять,
Де скоро лине день, і місяць надходить,
І зорі мерехтять.','[''pisni.org.ua'', ''cat:plastovi'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_22616'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_22616','Час прощання','Вже надходить час прощання між нами,
Приємно провели ми час.
Минули вже ті дні чарівні і веселі,
Прощаємо вас.

А тепер лиш думка в серці зосталась,
І спомином жити будем.
Як прийдеться колись зустрітися знову -
Думками вернем.

Згадаймо ті хвилини,
Як разом ми всі були,
Як вогники нас чарували,
І іскри навіки гасли.

Та ще знову прийде час вернутись,
Де тихі ліси все шумлять,
Де скоро лине день, і місяць надходить,
І зорі мерехтять.');
DELETE FROM song_links WHERE song_id = 'pisniua_2261971';
DELETE FROM song_versions WHERE song_id = 'pisniua_2261971';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2261971';
DELETE FROM songs WHERE id = 'pisniua_2261971';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2261971','Сиджу та й думаю',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісня остарбайтерів, вивезених на примусові роботи до Німеччини під час ІІ Світової війни. Співається на мелодію пісні "Ой, чий то кінь стоїть, що сива гривонька".','Сиджу та й думаю,
Сиджу та й думаю
Коли ж я вернуся,
Коли ж я вернуся
До рідного краю?

До рідного краю,
До любої рідні,
Що я так далеко,
Що я так далеко
У чужій стороні.

А в чужій стороні
Тяжко працювати,
Навіть нема коли,
Навіть нема коли
Листа написати.

Листа написала
Та й стала плакати:
Ой, що ж там думає,
Ой, що ж там гадає
Моя рідна мати?

Чи вона думає,
Що я ще є жива,
Чи вона думає,
Чи вона гадає,
Що мене вже й нема?..','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2261971'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2261971','Сиджу та й думаю','Сиджу та й думаю,
Сиджу та й думаю
Коли ж я вернуся,
Коли ж я вернуся
До рідного краю?

До рідного краю,
До любої рідні,
Що я так далеко,
Що я так далеко
У чужій стороні.

А в чужій стороні
Тяжко працювати,
Навіть нема коли,
Навіть нема коли
Листа написати.

Листа написала
Та й стала плакати:
Ой, що ж там думає,
Ой, що ж там гадає
Моя рідна мати?

Чи вона думає,
Що я ще є жива,
Чи вона думає,
Чи вона гадає,
Що мене вже й нема?..');
DELETE FROM song_links WHERE song_id = 'pisniua_2264675';
DELETE FROM song_versions WHERE song_id = 'pisniua_2264675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2264675';
DELETE FROM songs WHERE id = 'pisniua_2264675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2264675','Пісня про доброту','Музика: Володимир Львовський Слова: Валерій Шульжик','uk','ukraine_1991',NULL,NULL,'http://poezia.org/ua/id/37144/personnels, пісня "Доброта" з мультфільму "Пригоди поросятка Фунтика".',NULL,'Дуже добре бігать влітку
З карамелькою у роті,
А в руці тримать для друга
Карамельку про запас.

Приспів:
Бо найкраща, бо найкраща,
Щира, безкорисна завше,
І довірливо-потрібна
В цьому світі доброта,
В цьому світі доброта!

Добре бігати по вулиці
З теплим кроликом на грудях,
Маючи за нагороду
Серденька малого стук.

Приспів.

Добре бігати по місту
З голубом у капелюсі.
З шариком на нитці жовтим
І з усмішкою до вух.

Приспів.','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2264675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2264675','Пісня про доброту','Дуже добре бігать влітку
З карамелькою у роті,
А в руці тримать для друга
Карамельку про запас.

Приспів:
Бо найкраща, бо найкраща,
Щира, безкорисна завше,
І довірливо-потрібна
В цьому світі доброта,
В цьому світі доброта!

Добре бігати по вулиці
З теплим кроликом на грудях,
Маючи за нагороду
Серденька малого стук.

Приспів.

Добре бігати по місту
З голубом у капелюсі.
З шариком на нитці жовтим
І з усмішкою до вух.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2265665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2265665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2265665';
DELETE FROM songs WHERE id = 'pisniua_2265665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2265665','Писанка','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Намалюю писанку, намалюю
Коника гривастого намалюю.
Розмалюю писанку, розмалюю -
Соловейка-любчика намалюю.

Приспів:
Писанка, писанка,  |
Веселковий цвіт.   |
Писанка, писанка,  |
Твій дитячий світ. | (2)

Розмалюю писанку, розмалюю,
Різблену сопілочку намалюю.
Та моя сопілочка буде грати,
Буде коник весело танцювати.

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2265665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2265665','Писанка','Намалюю писанку, намалюю
Коника гривастого намалюю.
Розмалюю писанку, розмалюю -
Соловейка-любчика намалюю.

Приспів:
Писанка, писанка,  |
Веселковий цвіт.   |
Писанка, писанка,  |
Твій дитячий світ. | (2)

Розмалюю писанку, розмалюю,
Різблену сопілочку намалюю.
Та моя сопілочка буде грати,
Буде коник весело танцювати.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_226694';
DELETE FROM song_versions WHERE song_id = 'pisniua_226694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_226694';
DELETE FROM songs WHERE id = 'pisniua_226694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_226694','Причепивсь ведмідь до зайця','Музика: Валерій Маренич Слова: І. Музичук. Виконує: Валерій Маренич','uk','ukraine_1991',NULL,NULL,'Аудіо-CD “Валерій Маренич. “Волинь”','Текст і акорди записано на слух з аудіо. Тональність оригінальна. Підбір акордів: bohdanko (www.pisni.org.ua)','Вступ:  C G C   (x2)
F C G C (x2)

Причепивсь ведмідь до зайця,
зняв свої штани,
каже: "Брат тобі я старший.
Ти мене лизни.
Хочу я, щоб цю пошану
весь побачив ліс.
Я за те тобі, мій друже,
дулю дам під ніс.”

Програш:  F C G C
F C G C С7

Зайчик став в геройську позу,
підкрутив свій вус:
"За таку роботу” - каже -
"з роду не берусь.”
Потім став на задні лапки,
плюнув у штани
і побіг від того брата -
спробуй дожени!

А ось ми частенько лижем
отаких братів;
тільки б хто давав лизнути,
тільки б хто хотів...
Бог братів нам посилає -
гірше сатани!
Вже пора і нам плювати
у чужі штани.

Програш:  F C G C

Вже пора і нам плювати
у чужі штани.','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_226694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_226694','Причепивсь ведмідь до зайця','Вступ:  C G C   (x2)
F C G C (x2)

Причепивсь ведмідь до зайця,
зняв свої штани,
каже: "Брат тобі я старший.
Ти мене лизни.
Хочу я, щоб цю пошану
весь побачив ліс.
Я за те тобі, мій друже,
дулю дам під ніс.”

Програш:  F C G C
F C G C С7

Зайчик став в геройську позу,
підкрутив свій вус:
"За таку роботу” - каже -
"з роду не берусь.”
Потім став на задні лапки,
плюнув у штани
і побіг від того брата -
спробуй дожени!

А ось ми частенько лижем
отаких братів;
тільки б хто давав лизнути,
тільки б хто хотів...
Бог братів нам посилає -
гірше сатани!
Вже пора і нам плювати
у чужі штани.

Програш:  F C G C

Вже пора і нам плювати
у чужі штани.');
DELETE FROM song_links WHERE song_id = 'pisniua_2264379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2264379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2264379';
DELETE FROM songs WHERE id = 'pisniua_2264379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2264379','На небі','Музика: Гурт "Океан Ельзи" Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_before_1917',NULL,NULL,'аудіозапис; ** акорди (частково): Sviatoslav Adept - www.youtube.com/watch?v=aQPfQq2Y_Ns','Підбір акордів: частково - bohdanko (pisni.org.ua)','Там, де для когось
Тільки лютий за вікном -
На моїй вулиці давно уже весна.
І дух захоплює немов від висоти,
Бо так живу, немов літаю я,
Так немов літаю я
Кожну мить, коли зі мною ти!..
Приспів:
І я на небі!
Мила моя, на небі!
Зоре моя, на небі,
Відколи тебе знайшов!
І я на небі,
Мов на земному небі,
Мила, коли з тобою -
Літаю і знов, і знов!
І я не знаю,
Як світанок настає,
І як закінчився
Улюблений альбом,
Бо не бажаю
Ні хвилини самоти.
І там живу, немов літаю я,
Так немов літаю я
Кожну мить, коли зі мною ти!..
Приспів.
А часом,
Коли я сам не свій,
І в голові дивні думки,
І на душі сумно,
Згадую я очі твої -
І все стає мов навпаки,
Теплим таким!..
Приспів. (2)
Літаю і знов, і знов...
Літаю і знов, і знов...
Акорди:
В тональності Am
(для високого голосу):
Вступ: Am Dm F G Am (x2)
Am
Там, де для когось
тільки лютий за вікном -
На моїй вулиці давно уже весна.
Am
І дух захоплює немов від висоти,
Бо так живу, немов літаю я,
Так немов літаю я
Кожну мить, коли зі мною ти!..
Приспів:
І я на небі! Мила моя, на небі!
F
Зоре моя, на небі,
відколи тебе знайшов!
І я на небі, мов на земному небі,
F
Мила, коли з тобою -
літаю і знов, і знов!
І я не знаю, як світанок настає,
І як закінчився улюблений альбом,
Бо не бажаю ні хвилини самоти.
І там живу, немов літаю я,
Так немов літаю я
Кожну мить, коли зі мною ти!..
Приспів.
А часом, коли   я сам не свій,
F
І в голові
С
дивні думки, і на душі сумно,
Згадую я    очі твої -
І все стає мов навпаки,
E
теплим таким!..
Приспів. (x2)
Закінчення:
Літаю і знов, і знов... (x2)
В тональності Em
(для низького голосу):
Вступ: Em Am C D Em (x2)
Куплет: Em Am G Em
Приспів: Em Am C D Em (x2)
"А часом, коли...":
H Em C G (x2) | H
Закінчення: С D Em (x2)
Оригінальна тональність
(для дуже високого голосу):
Cm = Am + капо III','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2264379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2264379','На небі','Там, де для когось
Тільки лютий за вікном -
На моїй вулиці давно уже весна.
І дух захоплює немов від висоти,
Бо так живу, немов літаю я,
Так немов літаю я
Кожну мить, коли зі мною ти!..
Приспів:
І я на небі!
Мила моя, на небі!
Зоре моя, на небі,
Відколи тебе знайшов!
І я на небі,
Мов на земному небі,
Мила, коли з тобою -
Літаю і знов, і знов!
І я не знаю,
Як світанок настає,
І як закінчився
Улюблений альбом,
Бо не бажаю
Ні хвилини самоти.
І там живу, немов літаю я,
Так немов літаю я
Кожну мить, коли зі мною ти!..
Приспів.
А часом,
Коли я сам не свій,
І в голові дивні думки,
І на душі сумно,
Згадую я очі твої -
І все стає мов навпаки,
Теплим таким!..
Приспів. (2)
Літаю і знов, і знов...
Літаю і знов, і знов...
Акорди:
В тональності Am
(для високого голосу):
Вступ: Am Dm F G Am (x2)
Am
Там, де для когось
тільки лютий за вікном -
На моїй вулиці давно уже весна.
Am
І дух захоплює немов від висоти,
Бо так живу, немов літаю я,
Так немов літаю я
Кожну мить, коли зі мною ти!..
Приспів:
І я на небі! Мила моя, на небі!
F
Зоре моя, на небі,
відколи тебе знайшов!
І я на небі, мов на земному небі,
F
Мила, коли з тобою -
літаю і знов, і знов!
І я не знаю, як світанок настає,
І як закінчився улюблений альбом,
Бо не бажаю ні хвилини самоти.
І там живу, немов літаю я,
Так немов літаю я
Кожну мить, коли зі мною ти!..
Приспів.
А часом, коли   я сам не свій,
F
І в голові
С
дивні думки, і на душі сумно,
Згадую я    очі твої -
І все стає мов навпаки,
E
теплим таким!..
Приспів. (x2)
Закінчення:
Літаю і знов, і знов... (x2)
В тональності Em
(для низького голосу):
Вступ: Em Am C D Em (x2)
Куплет: Em Am G Em
Приспів: Em Am C D Em (x2)
"А часом, коли...":
H Em C G (x2) | H
Закінчення: С D Em (x2)
Оригінальна тональність
(для дуже високого голосу):
Cm = Am + капо III');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2264379_l1','pisniua_2264379','YouTube','https://www.youtube.com/watch?v=KIZT-A0tl74','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2264379_l2','pisniua_2264379','YouTube','https://www.youtube.com/watch?v=5JsLsd_fqjY','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2264394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2264394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2264394';
DELETE FROM songs WHERE id = 'pisniua_2264394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2264394','Коли навколо ні душі...','Музика: Гурт "Океан Ельзи" Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Коли навколо ні душі,
Коли моя не може спати,
Чомусь так хочеться мені
Для тебе пісню заспівати...

Приспів:
І най чекає цілий світ!
Не забере мене від тебе
Ані їх колючий дріт,
Ні синє небо,
Ані чужий терновий цвіт...

Коли буває від усіх
Ховаю я себе за грати,
Чомусь так хочеться мені
Твою безмежність відчувати...

Приспів.

Най зупиниться Земля!
Най прийдуть всі вони забрати,
Все одно не зможу я
Тебе віддати,
Бо ти була і є моя!..

Коли навколо ні душі,
Коли моя не може спати','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2264394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2264394','Коли навколо ні душі...','Коли навколо ні душі,
Коли моя не може спати,
Чомусь так хочеться мені
Для тебе пісню заспівати...

Приспів:
І най чекає цілий світ!
Не забере мене від тебе
Ані їх колючий дріт,
Ні синє небо,
Ані чужий терновий цвіт...

Коли буває від усіх
Ховаю я себе за грати,
Чомусь так хочеться мені
Твою безмежність відчувати...

Приспів.

Най зупиниться Земля!
Най прийдуть всі вони забрати,
Все одно не зможу я
Тебе віддати,
Бо ти була і є моя!..

Коли навколо ні душі,
Коли моя не може спати');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2264394_l1','pisniua_2264394','YouTube','https://www.youtube.com/watch?v=yUmkM3-M3BA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2263993';
DELETE FROM song_versions WHERE song_id = 'pisniua_2263993';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2263993';
DELETE FROM songs WHERE id = 'pisniua_2263993';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2263993','Секс-бомби','Музика: Наталія Фаліон Слова: Наталія Фаліон','uk','ukraine_before_1917',NULL,NULL,'відеозапис','*** - нерозбірливо. Виконує: Лісапетний батальйон.','Надоїло нам, бабам, корови доїть,
Догоджать своїм хлопам і борщі варить.
Ми закинемо сапи у куток в сарай,
Свиням, курям і тюкам скажемо: Гудбай!

Приспів
А ми такі, ми такі кльові,
А ми такі - баби фартові,
Якщо гулять - то аж до ранку,
Якщо кохать - то до останку!
Секс-бомби, уа-уа,
Секс-бомби, це тринь-трава,
Секс-бомби, гримить село,
Секс-бомби, усім на зло!

Ми на морі не були, тільки на ставку,
Ми ще бренді не пили, не їли ікру,
В шоу-бізнес ми ідем зароблять бабла...

Приспів. (2)    Фонограма-мінус (mp3, 96kbps)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2263993'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2263993','Секс-бомби','Надоїло нам, бабам, корови доїть,
Догоджать своїм хлопам і борщі варить.
Ми закинемо сапи у куток в сарай,
Свиням, курям і тюкам скажемо: Гудбай!

Приспів
А ми такі, ми такі кльові,
А ми такі - баби фартові,
Якщо гулять - то аж до ранку,
Якщо кохать - то до останку!
Секс-бомби, уа-уа,
Секс-бомби, це тринь-трава,
Секс-бомби, гримить село,
Секс-бомби, усім на зло!

Ми на морі не були, тільки на ставку,
Ми ще бренді не пили, не їли ікру,
В шоу-бізнес ми ідем зароблять бабла...

Приспів. (2)    Фонограма-мінус (mp3, 96kbps)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2263993_l1','pisniua_2263993','YouTube','https://www.youtube.com/watch?v=Pux5Zu9YzXs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2263993_l2','pisniua_2263993','www.minus.lviv.ua','https://www.minus.lviv.ua','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2265726';
DELETE FROM song_versions WHERE song_id = 'pisniua_2265726';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2265726';
DELETE FROM songs WHERE id = 'pisniua_2265726';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2265726','Благословіть','Слова: Зоя Солярик','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Вже дитинство, як вітер, промчало,
Юність душу торкає теплом.
Мендельсоновим вальсом стрічає
Доля двох молодих за селом.
Хай обійдуть невдачі з журбою,
Всі нещастя у прірву впадуть,
Хай засвітиться доля любов''ю
І добро засіває їм путь.

Приспів:
Благословіть їх, матері,
На довгу і щасливу долю.
Хай білі ангели вгорі        |
Їм збережуть життя в любові. | (2)

Хай дорога пряма і широка
Їх вестиме в житті до кінця.
Добавлялося б щастя щороку
Аж до їх золотого вінця.
Хай любов поміж ними не згасне,
Віра й правда живе поміж них.
Світлу долю, єдину й прекрасну
Їм освятить весільний рушник.

Приспів. (2)','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2265726'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2265726','Благословіть','Вже дитинство, як вітер, промчало,
Юність душу торкає теплом.
Мендельсоновим вальсом стрічає
Доля двох молодих за селом.
Хай обійдуть невдачі з журбою,
Всі нещастя у прірву впадуть,
Хай засвітиться доля любов''ю
І добро засіває їм путь.

Приспів:
Благословіть їх, матері,
На довгу і щасливу долю.
Хай білі ангели вгорі        |
Їм збережуть життя в любові. | (2)

Хай дорога пряма і широка
Їх вестиме в житті до кінця.
Добавлялося б щастя щороку
Аж до їх золотого вінця.
Хай любов поміж ними не згасне,
Віра й правда живе поміж них.
Світлу долю, єдину й прекрасну
Їм освятить весільний рушник.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2267653';
DELETE FROM song_versions WHERE song_id = 'pisniua_2267653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2267653';
DELETE FROM songs WHERE id = 'pisniua_2267653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2267653','Гімн Українському тризубу','Музика: Володимир Ярцев Слова: Леся Степовичка. Виконує: Народна самодіяльна капела Братства ОУН-УПА м. Збараж, Володимир Ярцев','uk','ukraine_before_1917',NULL,NULL,NULL,'Пісню виконує Народна самодіяльна капела Братства ОУН-УПА м. Збараж.','Розправив крила і злетів високо,
І новину поніс в усі світи
Наш вільний український тризуб - сокіл,
Що досягли ми гордої мети.

Приспів:
Героям - слава! Україні - слава! -
Дзвенять Карпати, Чорне море й степ.
Благословенні є - Вітчизна і Держава,
Блакитне небо й жито золоте!

Є Україна, молода й прекрасна,
Правічна мрія з прадідів - дідів,
Дитя Богдана, Лесі і Тараса,
Січі, повстанців й січових стрельців.

Приспів.

Нумо - до праці, щоб здолать Руїну!
І хай пощезнуть круки - вороги.
Збудуємо щасливу Україну!
Нам стане і завзяття, і снаги!

Приспів','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2267653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2267653','Гімн Українському тризубу','Розправив крила і злетів високо,
І новину поніс в усі світи
Наш вільний український тризуб - сокіл,
Що досягли ми гордої мети.

Приспів:
Героям - слава! Україні - слава! -
Дзвенять Карпати, Чорне море й степ.
Благословенні є - Вітчизна і Держава,
Блакитне небо й жито золоте!

Є Україна, молода й прекрасна,
Правічна мрія з прадідів - дідів,
Дитя Богдана, Лесі і Тараса,
Січі, повстанців й січових стрельців.

Приспів.

Нумо - до праці, щоб здолать Руїну!
І хай пощезнуть круки - вороги.
Збудуємо щасливу Україну!
Нам стане і завзяття, і снаги!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2267828';
DELETE FROM song_versions WHERE song_id = 'pisniua_2267828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2267828';
DELETE FROM songs WHERE id = 'pisniua_2267828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2267828','Веселка','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Краплю дощика берем,
Трішки сонця додаєм,
Світанкової роси,
Жменьку радості для всіх.

Приспів:
Подивись на небо -
Кольори ясні,
Сумувать не треба -
Просто посміхнись!
Подивись на небо -
Сонце золоте,
Сумувать не треба -
Все на краще йде!

Слово лагідне скажи,
Теплий погляд залиши,
І добрішим стане світ
Й наша пісня задзвенить!

Приспів. (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2267828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2267828','Веселка','Краплю дощика берем,
Трішки сонця додаєм,
Світанкової роси,
Жменьку радості для всіх.

Приспів:
Подивись на небо -
Кольори ясні,
Сумувать не треба -
Просто посміхнись!
Подивись на небо -
Сонце золоте,
Сумувать не треба -
Все на краще йде!

Слово лагідне скажи,
Теплий погляд залиши,
І добрішим стане світ
Й наша пісня задзвенить!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2267828_l1','pisniua_2267828','YouTube','https://www.youtube.com/watch?v=oKDPCbvfB18','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2267828_l2','pisniua_2267828','YouTube','https://www.youtube.com/watch?v=0wuxrXGcMwI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_226616';
DELETE FROM song_versions WHERE song_id = 'pisniua_226616';
DELETE FROM songs_fts WHERE song_id = 'pisniua_226616';
DELETE FROM songs WHERE id = 'pisniua_226616';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_226616','Спитай','Музика: Віктор Морозов Слова: Віталій Коротич. Виконує: Віктор Морозов, Піккардійська Терція, Смерічка','uk','ukraine_1991',NULL,NULL,'1. Аудіо-CD "Смерічка" (1986) http://www.victormorozov.com/ukr/discogr-2.html#smerichka 2. Аудіо-CD "Піккардійська терція. "Я придумаю світ" (1999) http://tercia.alfaspace.net/album3.html#5','Тут у джерелі [2] текст інший: * "Спитай у листя і квітки," ** "Куди зникають пісні." *** "А цього ще не відкрито" Правильний, тобто оригінальний текст - у джерелі [1]. Деякі з використаних акордів: F#m7/-5[2 x 2 2 1 0] D9/11 [x 0 4 0 3 0] C7M [x 3 2 0 0 0] G6 [3 2 0 0 0 0] Текст та акорди перевірив і виправив Віктор Морозов (http://www.victormorozov.com). Додаткова інформація про авторство та рік написання пісні - з того ж джерела. Підбір акордів: bohdanko (www.pisni.org.ua)','Вступ:  Em Am F#m7/-5 H7 Em F#m7/-5 H7

Куди     відходить життя,
А звідки   приходить, звідки.
Спитай    у листя і в квітки, *    |
Куди         відходить життя.      |

А де зникають пісні,
Нікому це невідомо,
Спитай у відлуння й грому,
Де зникають пісні. **
Спитай у відлуння й грому,
Де          зникають пісні. **

Програш (як Вступ).

Чому згасають зірки,
І цього ще не відкрито, ***
Спитай у метеорита,   |
Чому згасають зірки.  |(2)

Коли ти був молодий,
Як жайвір понад полями,
Спитай у своєї мами,   |
Коли ти був молодим.   | (2)

Програш (як Вступ).','[''pisni.org.ua'', ''cat:bardivski'', ''cat:philosophic'', ''Бардівські пісні'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_226616'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_226616','Спитай','Вступ:  Em Am F#m7/-5 H7 Em F#m7/-5 H7

Куди     відходить життя,
А звідки   приходить, звідки.
Спитай    у листя і в квітки, *    |
Куди         відходить життя.      |

А де зникають пісні,
Нікому це невідомо,
Спитай у відлуння й грому,
Де зникають пісні. **
Спитай у відлуння й грому,
Де          зникають пісні. **

Програш (як Вступ).

Чому згасають зірки,
І цього ще не відкрито, ***
Спитай у метеорита,   |
Чому згасають зірки.  |(2)

Коли ти був молодий,
Як жайвір понад полями,
Спитай у своєї мами,   |
Коли ти був молодим.   | (2)

Програш (як Вступ).');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_226616_l1','pisniua_226616','YouTube','https://www.youtube.com/watch?v=Mh6LqRwbUiI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2265879';
DELETE FROM song_versions WHERE song_id = 'pisniua_2265879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2265879';
DELETE FROM songs WHERE id = 'pisniua_2265879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2265879','Моє маленьке янголятко','Музика: Ольга Гура Слова: Ольга Гура. Виконує: Ольга Гура','uk','ukraine_1991',NULL,'2013','авторське подання','Авторська пісня з альбому "Українські колисанки. Ходить сон..." 2013 р.','Приспів:
Моє маленьке янголятко!
Твій погляд чистий, як роса.
Не залишай дитинства казку -
Лиш їй підвладні небеса!

Не поспішай в казки дорослі,
Де нечестиві королі,
Плекайся, синку, в срібних росах
У казці рідної землі.

Приспів.

Не заблукай, моє серденько, -
Звабливі бо дива чужі.
Хай тиха колискова неньки
Розквітне казкою в душі,
Розквітне казкою в душі...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2265879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2265879','Моє маленьке янголятко','Приспів:
Моє маленьке янголятко!
Твій погляд чистий, як роса.
Не залишай дитинства казку -
Лиш їй підвладні небеса!

Не поспішай в казки дорослі,
Де нечестиві королі,
Плекайся, синку, в срібних росах
У казці рідної землі.

Приспів.

Не заблукай, моє серденько, -
Звабливі бо дива чужі.
Хай тиха колискова неньки
Розквітне казкою в душі,
Розквітне казкою в душі...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2265879_l1','pisniua_2265879','YouTube','https://www.youtube.com/watch?v=K6Ny55kw7bM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2268414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2268414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2268414';
DELETE FROM songs WHERE id = 'pisniua_2268414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2268414','По сіно','Музика: Анатолій Кулик Слова: Юрій Удод','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Як потреба є у тебе,
Ти до мене поспішай,
Бо ти знаєш, я без друга
Не розріжу й коровай.
Почуваю із тобою,
Як у діда на печі.
І думки пливуть юрбою,
І зібрав у луг харчі.

Вечір. Сонце за горою
Червоніє із-за хмар.
Вип''єм чарку ми з тобою,
Як накосим спілих трав.

Сіно легко нам косити
Під веселий дружний спів.
А у парі як робити,
Вистача кумедниж слів.
Пісня й жарти при нагоді
Надають припливу сил,
Хмари сині у дрімоті
Не здіймають сизих крил.

Вечір. Сонце за горою
Червоніє із-за хмар.
Вип''єм чарку ми з тобою
У покосах спілих трав.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2268414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2268414','По сіно','Як потреба є у тебе,
Ти до мене поспішай,
Бо ти знаєш, я без друга
Не розріжу й коровай.
Почуваю із тобою,
Як у діда на печі.
І думки пливуть юрбою,
І зібрав у луг харчі.

Вечір. Сонце за горою
Червоніє із-за хмар.
Вип''єм чарку ми з тобою,
Як накосим спілих трав.

Сіно легко нам косити
Під веселий дружний спів.
А у парі як робити,
Вистача кумедниж слів.
Пісня й жарти при нагоді
Надають припливу сил,
Хмари сині у дрімоті
Не здіймають сизих крил.

Вечір. Сонце за горою
Червоніє із-за хмар.
Вип''єм чарку ми з тобою
У покосах спілих трав.');
DELETE FROM song_links WHERE song_id = 'pisniua_2269010';
DELETE FROM song_versions WHERE song_id = 'pisniua_2269010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2269010';
DELETE FROM songs WHERE id = 'pisniua_2269010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2269010','Долоньки','Музика: Ірина Федишин Слова: Ірина Федишин. Виконує: Ірина Федишин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'День з радості починається,
Радість та швидше за всіх,
Хай радість Вам усміхається
І в обійми швидко біжить.
Така малесенька іскорка
А від неї весь світ горить,
Коли мене обіймаєш ти -
Крила виростають умить.

Приспів:
Малесенькі долоньки |
Сина чи доньки      |
Ніжніше за все!     |
Малесенькі долоньки |
Сина чи доньки      |
Ніжніше за все!     | (2)

Цей день, цю ніч не забуду я
Пам''ятаю я кожну мить,
Як ти і я притулилися -
І навколо все так змінилося.
Блиском очей твоїх
Можна засвітити зірки,
А від слідів твоїх
В пустелі виростають сади.

Приспів. (2)

Малесенькі долоньки
Ніжніші за все...
Малесенькі долоньки
Ніжніші за все...

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2269010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2269010','Долоньки','День з радості починається,
Радість та швидше за всіх,
Хай радість Вам усміхається
І в обійми швидко біжить.
Така малесенька іскорка
А від неї весь світ горить,
Коли мене обіймаєш ти -
Крила виростають умить.

Приспів:
Малесенькі долоньки |
Сина чи доньки      |
Ніжніше за все!     |
Малесенькі долоньки |
Сина чи доньки      |
Ніжніше за все!     | (2)

Цей день, цю ніч не забуду я
Пам''ятаю я кожну мить,
Як ти і я притулилися -
І навколо все так змінилося.
Блиском очей твоїх
Можна засвітити зірки,
А від слідів твоїх
В пустелі виростають сади.

Приспів. (2)

Малесенькі долоньки
Ніжніші за все...
Малесенькі долоньки
Ніжніші за все...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2262879';
DELETE FROM song_versions WHERE song_id = 'pisniua_2262879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2262879';
DELETE FROM songs WHERE id = 'pisniua_2262879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2262879','Хресту Твоєму','Слова: Петро Гончаров. Виконує: Етнографічний хор Гомін','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Хресту Твоєму поклоняємося, Владико,
І святе воскресіння Твоє
Славимо, славимо, славимо!

Хресту Твоєму поклоняємося, Владико,
І святе воскресіння Твоє
Славимо, славимо, славимо!

Хресту Твоєму поклоняємося, Владико,
І святе воскресіння Твоє
Славимо, славимо, славимо!','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:voskresni'', ''Церковні пісні'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2262879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2262879','Хресту Твоєму','Хресту Твоєму поклоняємося, Владико,
І святе воскресіння Твоє
Славимо, славимо, славимо!

Хресту Твоєму поклоняємося, Владико,
І святе воскресіння Твоє
Славимо, славимо, славимо!

Хресту Твоєму поклоняємося, Владико,
І святе воскресіння Твоє
Славимо, славимо, славимо!');
DELETE FROM song_links WHERE song_id = 'pisniua_226869';
DELETE FROM song_versions WHERE song_id = 'pisniua_226869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_226869';
DELETE FROM songs WHERE id = 'pisniua_226869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_226869','До помсти','(Пісня українських добровольців). Слова: І. Гордієвський','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,NULL,'Кохана моя Україно,
Як довго була ти у сні!
Зробили із тебе руїни
Кремлівські кати навісні.

В Москві у найбільшого ката
Вино і розкоші були,
А наші змарнілі дівчата
Під тюрмами долю кляли.

Гей, слухай недолюдок Сталін,
Потонеш ти в морі пожеж!
Ти мрієш нас нищити й далі?
Собако, від нас не втечеш!

За чорні години розпуки,
Сльозу що у неньки сія,
За всі катування і муки
Відплатить країна моя!

І не допоможуть чужинці-
Англієць проклятий і жид.
До помсти, брати українці,
До помсти, великий нарід','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_226869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_226869','До помсти','Кохана моя Україно,
Як довго була ти у сні!
Зробили із тебе руїни
Кремлівські кати навісні.

В Москві у найбільшого ката
Вино і розкоші були,
А наші змарнілі дівчата
Під тюрмами долю кляли.

Гей, слухай недолюдок Сталін,
Потонеш ти в морі пожеж!
Ти мрієш нас нищити й далі?
Собако, від нас не втечеш!

За чорні години розпуки,
Сльозу що у неньки сія,
За всі катування і муки
Відплатить країна моя!

І не допоможуть чужинці-
Англієць проклятий і жид.
До помсти, брати українці,
До помсти, великий нарід');
DELETE FROM song_links WHERE song_id = 'pisniua_2264818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2264818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2264818';
DELETE FROM songs WHERE id = 'pisniua_2264818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2264818','Класному керівнику','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Щиру пісню для Вас написав весь наш клас,
За ці довгі роки, що навчали Ви нас,
Поряд з нами були, від біди берегли,
Не забудем ми Вас, випускний весь наш клас!

Приспів:
Спасибі Вам, наш керівник,
Що вогник ніжності не зник,
У Ваших лагідних очах
За довгий час,
За світлу правду і добро,
За Вашу мудрість і тепло,
За те, що щиро Ви усіх любили нас!

Щиру пісню для Вас, написав весь наш клас,
За ці довгі роки, що навчали Ви нас,
За турботу й тепло, за любов і добро,
Що для кожного з нас у Вашім серці було!

Приспів. (2)','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2264818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2264818','Класному керівнику','Щиру пісню для Вас написав весь наш клас,
За ці довгі роки, що навчали Ви нас,
Поряд з нами були, від біди берегли,
Не забудем ми Вас, випускний весь наш клас!

Приспів:
Спасибі Вам, наш керівник,
Що вогник ніжності не зник,
У Ваших лагідних очах
За довгий час,
За світлу правду і добро,
За Вашу мудрість і тепло,
За те, що щиро Ви усіх любили нас!

Щиру пісню для Вас, написав весь наш клас,
За ці довгі роки, що навчали Ви нас,
За турботу й тепло, за любов і добро,
Що для кожного з нас у Вашім серці було!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_226756';
DELETE FROM song_versions WHERE song_id = 'pisniua_226756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_226756';
DELETE FROM songs WHERE id = 'pisniua_226756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_226756','Шева','Музика: Скрябін Слова: Скрябін. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,'текст - http://www.skryabin.ru, аудіо - альбом "Рок-екзистенція 2003"','Підбір акордів: maciekkk','То моє місто - то моя велика країна,
То мій будинок, моя нова машина,
І діти випрошують гроші на світлофорах,
То саме є в вас.
Прийміть нас до себе в Європу!
Em
Ну хіба Чорнобиль є в нас, а в вас ше нє,
Але зато в нас є...

Приспів:
Андрій Шевченко (Шева! Шева!)
Андрій Шевченко (Шева! Шева!)

То мій макдональдс, то моя смачна кока-кола,
Солдати безногі після Афганістану,
Мої заводи, шо кромлять отрутою річки,
То саме є в вас.
Візьміть нас до себе в Європу,
Ну хіба Чорнобиль є в нас, а в вас ше нє,
Але зато в нас є...

Приспів.

То мої люди - то моя велика культура,
А серед них є дурні і дури,
Є серед них розумні і всякі,
То саме є в вас - чим ми гірші?..
Може, тим - шо в нас Чорнобиль, а в вас - ше нє?
Але зато в нас є...

Приспів.','[''pisni.org.ua'', ''cat:chornobyl'', ''cat:suspilno-politychni'', ''Чорнобильська катастрофа: пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_226756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_226756','Шева','То моє місто - то моя велика країна,
То мій будинок, моя нова машина,
І діти випрошують гроші на світлофорах,
То саме є в вас.
Прийміть нас до себе в Європу!
Em
Ну хіба Чорнобиль є в нас, а в вас ше нє,
Але зато в нас є...

Приспів:
Андрій Шевченко (Шева! Шева!)
Андрій Шевченко (Шева! Шева!)

То мій макдональдс, то моя смачна кока-кола,
Солдати безногі після Афганістану,
Мої заводи, шо кромлять отрутою річки,
То саме є в вас.
Візьміть нас до себе в Європу,
Ну хіба Чорнобиль є в нас, а в вас ше нє,
Але зато в нас є...

Приспів.

То мої люди - то моя велика культура,
А серед них є дурні і дури,
Є серед них розумні і всякі,
То саме є в вас - чим ми гірші?..
Може, тим - шо в нас Чорнобиль, а в вас - ше нє?
Але зато в нас є...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2268251';
DELETE FROM song_versions WHERE song_id = 'pisniua_2268251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2268251';
DELETE FROM songs WHERE id = 'pisniua_2268251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2268251','Колискова для коханої','Музика: Віктор Ох Слова: Ярослав Чорногуз. Виконує: Ярослав Чорногуз','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Місяць підкрався неждано,
Зорі усі засвітив...
Спи, моє сонце кохане,
Спи, моє диво із див.

Спи, моя радосте ніжна,
Спи, моє щастя ясне.
Пролісок подихом свіжим
Думи сумні прожене.

Спи моя люба, хай Леля
Кучері пестить твої,
Хай засміються веселим
Співом своїм солов''ї.

Диво явлю тобі в хату,
Казкою стане у сні -
Взимку почнеш засинати,
Ранок прийде - навесні.

Спи... О, Яриле, дай чудо -
Хмелю кохання вином -
Хай все життя твоє буде
Щастя омріяним сном','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2268251'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2268251','Колискова для коханої','Місяць підкрався неждано,
Зорі усі засвітив...
Спи, моє сонце кохане,
Спи, моє диво із див.

Спи, моя радосте ніжна,
Спи, моє щастя ясне.
Пролісок подихом свіжим
Думи сумні прожене.

Спи моя люба, хай Леля
Кучері пестить твої,
Хай засміються веселим
Співом своїм солов''ї.

Диво явлю тобі в хату,
Казкою стане у сні -
Взимку почнеш засинати,
Ранок прийде - навесні.

Спи... О, Яриле, дай чудо -
Хмелю кохання вином -
Хай все життя твоє буде
Щастя омріяним сном');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2268251_l1','pisniua_2268251','YouTube','https://www.youtube.com/watch?v=dVxUY9t88tE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2269919';
DELETE FROM song_versions WHERE song_id = 'pisniua_2269919';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2269919';
DELETE FROM songs WHERE id = 'pisniua_2269919';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2269919','Я сиджу у ніг Ісуса',NULL,'uk','ukraine_1991',NULL,NULL,'http://songs.fleita.com/file.php?id=6164','В іншому варіанті "Я сиджу в ногах Ісуса" скрізь там, де "у ніг Ісуса". Пісню виконують брати Степчуки.','Я сиджу у ніг Ісуса -
Слухаю Його слова:
О, як любо, як солодко    |
Научатись від Христа.     | (2)

Я сиджу у ніг Ісуса -
На минуле дивлюсь я...
Милість Його так велика,  |
Що збагнуть не можу я.    | (2)

Я сиджу у ніг Ісуса,
Він мене благословля.
Він гріхи простив мої всі |
І спокоєм наповня.        | (2)

Я сиджу у ніг Ісуса:
Люблю теж молитись я,
І пісні хвали співати     |
В славу для Спасителя.    | (2)

О, благослови, мій Спасе,
Біля ніг Твоїх мене,
Глянь на мене із любов''ю  |
І яви Своє лице.          | (2)

Отче! Дай Духа Святого,
А також любов Христа,
Щоб я міг тут свято жити, |
Серцем линуть в небеса.   | (2)','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2269919'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2269919','Я сиджу у ніг Ісуса','Я сиджу у ніг Ісуса -
Слухаю Його слова:
О, як любо, як солодко    |
Научатись від Христа.     | (2)

Я сиджу у ніг Ісуса -
На минуле дивлюсь я...
Милість Його так велика,  |
Що збагнуть не можу я.    | (2)

Я сиджу у ніг Ісуса,
Він мене благословля.
Він гріхи простив мої всі |
І спокоєм наповня.        | (2)

Я сиджу у ніг Ісуса:
Люблю теж молитись я,
І пісні хвали співати     |
В славу для Спасителя.    | (2)

О, благослови, мій Спасе,
Біля ніг Твоїх мене,
Глянь на мене із любов''ю  |
І яви Своє лице.          | (2)

Отче! Дай Духа Святого,
А також любов Христа,
Щоб я міг тут свято жити, |
Серцем линуть в небеса.   | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2269919_l1','pisniua_2269919','YouTube','https://www.youtube.com/watch?v=h2faE1SMdZQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2267614';
DELETE FROM song_versions WHERE song_id = 'pisniua_2267614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2267614';
DELETE FROM songs WHERE id = 'pisniua_2267614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2267614','Човен','Слова: Євген Гребінка','uk','ukraine_1991',NULL,NULL,'Є.П. Гребінка. Т.1. - К., 1980 р.',NULL,'Заграло, запінилось синєє море,
І буйнії вітри по морю шумлять,
І хвиля гуляє, мов чорнії гори
Одна за другою біжать.
Як темная нічка, насупились хмари,
В тих хмарах, мов голос небесної кари,
За громом громи гуркотять.

Іграє і пінеться синєє море.
Хтось човен на море пустив,
Бурхнув він по хвилі, ниряє на волі,
Од берега геть покотив:
Качається, бідний, один без весельця.
Ох, жаль мені човна, ох, жаль мого серця!
Чого він під бурю поплив?

Ущухнуло море, і хвилі вляглися,
Пустують по піні мавки,
Уп''ять забіліли, уп''ять простяглися
По морю кругом байдаки,
Де ж човен дівався, де плавле мій милий?
Мабуть, він не плавле, бо онде по хвилі
Біліють із нього тріски.

Як човнові море,для мене світ білий
Ізмалку здавався страшним,
Да як заховаться? Не можна ж вік цілий
Пробути з собою одним.
Прощай, мій покою, пускаюсь у море!
І, може, недоля і лютеє горе
Пограються з човном моїм.','[''pisni.org.ua'', ''cat:naddnipryanski'', ''cat:romansy'', ''Наддніпрянські пісні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2267614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2267614','Човен','Заграло, запінилось синєє море,
І буйнії вітри по морю шумлять,
І хвиля гуляє, мов чорнії гори
Одна за другою біжать.
Як темная нічка, насупились хмари,
В тих хмарах, мов голос небесної кари,
За громом громи гуркотять.

Іграє і пінеться синєє море.
Хтось човен на море пустив,
Бурхнув він по хвилі, ниряє на волі,
Од берега геть покотив:
Качається, бідний, один без весельця.
Ох, жаль мені човна, ох, жаль мого серця!
Чого він під бурю поплив?

Ущухнуло море, і хвилі вляглися,
Пустують по піні мавки,
Уп''ять забіліли, уп''ять простяглися
По морю кругом байдаки,
Де ж човен дівався, де плавле мій милий?
Мабуть, він не плавле, бо онде по хвилі
Біліють із нього тріски.

Як човнові море,для мене світ білий
Ізмалку здавався страшним,
Да як заховаться? Не можна ж вік цілий
Пробути з собою одним.
Прощай, мій покою, пускаюсь у море!
І, може, недоля і лютеє горе
Пограються з човном моїм.');
DELETE FROM song_links WHERE song_id = 'pisniua_2270091';
DELETE FROM song_versions WHERE song_id = 'pisniua_2270091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2270091';
DELETE FROM songs WHERE id = 'pisniua_2270091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2270091','Повертай додому','Музика: Олег Винник Слова: Олег Винник. Виконує: Олег Винник','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Не зрозумілі, афіші, реклами
Мова чужа і нездійснені плани,
Хаос думок, морок перед очима
Ти - іноземець - відома картина:
Все у вогнях, у квітках і вазонах,
Світ, де реально усе по законах,
Долі людей в безкінечній спіралі,
Ти туди йдеш усе далі і далі...

Приспів:
Повертай додому, до рідної хати,
Де тебе чекають батько і мати!
Повертай додому з тернистих доріг,
Повертай додому в свій оберіг!

Відкриті погляди, успіх, кар''єра -
Все відокремлено мовним бар''єром,
Гасне надії остання краплина,
Ти - іноземець, але ж ти людина!
Серце усе ще про затишок мріє
Та чуже сонце ні за що не гріє,
Де воно щастя, хто його знає,
Добре лиш там, де нас немає.

Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2270091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2270091','Повертай додому','Не зрозумілі, афіші, реклами
Мова чужа і нездійснені плани,
Хаос думок, морок перед очима
Ти - іноземець - відома картина:
Все у вогнях, у квітках і вазонах,
Світ, де реально усе по законах,
Долі людей в безкінечній спіралі,
Ти туди йдеш усе далі і далі...

Приспів:
Повертай додому, до рідної хати,
Де тебе чекають батько і мати!
Повертай додому з тернистих доріг,
Повертай додому в свій оберіг!

Відкриті погляди, успіх, кар''єра -
Все відокремлено мовним бар''єром,
Гасне надії остання краплина,
Ти - іноземець, але ж ти людина!
Серце усе ще про затишок мріє
Та чуже сонце ні за що не гріє,
Де воно щастя, хто його знає,
Добре лиш там, де нас немає.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2270091_l1','pisniua_2270091','YouTube','https://www.youtube.com/watch?v=-yGXzdzrWQs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2270091_l2','pisniua_2270091','YouTube','https://www.youtube.com/watch?v=5TeN4Twq484','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_22694';
DELETE FROM song_versions WHERE song_id = 'pisniua_22694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_22694';
DELETE FROM songs WHERE id = 'pisniua_22694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_22694','Гей ви, козаченьки','Музика: Геннадій Татарченко Слова: Вадим Крищенко. Виконує: Назарій Яремчук, Дмитро Гнатюк','uk','ukraine_1991',NULL,NULL,'Текст: www.yaremchuk.cv.ua',NULL,'Є і нам про що згадати...
Пісне, душу возвелич
Ой була в нас ненька мати -
Запорізька славна Січ.

Приспів:
Гей, ви, козаченьки, - вітер в чистім полі,
Научіть нащадків так любити волю
Гей, ви, козаченьки, - спомин з м''яти-рути,
Научіть минулу славу повернути.

Круточола наша доля,
Не вода в ній - кров тече.
Козаку найперше - воля,
Козаку найперше - честь.

Приспів.

А прийшла лиха година -
Впав козак наш у траві,
Щоб іскрилась Україна
На гетьманській булаві.

Обросила землю рана
Із козацького чола,
Щоб неправда помирала,
Щоби правдонька жила.

Приспів','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_22694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_22694','Гей ви, козаченьки','Є і нам про що згадати...
Пісне, душу возвелич
Ой була в нас ненька мати -
Запорізька славна Січ.

Приспів:
Гей, ви, козаченьки, - вітер в чистім полі,
Научіть нащадків так любити волю
Гей, ви, козаченьки, - спомин з м''яти-рути,
Научіть минулу славу повернути.

Круточола наша доля,
Не вода в ній - кров тече.
Козаку найперше - воля,
Козаку найперше - честь.

Приспів.

А прийшла лиха година -
Впав козак наш у траві,
Щоб іскрилась Україна
На гетьманській булаві.

Обросила землю рана
Із козацького чола,
Щоб неправда помирала,
Щоби правдонька жила.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2269158';
DELETE FROM song_versions WHERE song_id = 'pisniua_2269158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2269158';
DELETE FROM songs WHERE id = 'pisniua_2269158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2269158','Лю-лі, лю-лі, мій синочку','Музика: Леся Горова Слова: Ганна Білецька. Виконує: Леся Горова','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Лю-лі, лю-лі, мій синочку,
Нічка лягла спати,
Стало темно, я заснула,
Так заснула, що забула
Віконце закрити,
Місяць засвітити...
Віконце закрити,
Місяць засвітити...

Спи, синочку, спить тваринка,
Спить комашка ще й пташинка
І коточок спить,
Наш коточок спить...
Пишні лапки, гострі зубки
Ясні очка, як зірочки,
Наш коточок спить,
А-а-а-а...

Завтра встане, щоб робити,
Щоб мурликати, ходити,
І котили, і котити
Землю вгору аж до сонця
З-під віконця з-під віконця,
Де зійшло воно,
Де зійшло воно...

Сонце гляне на хатину,
На колиску, на дитину,
Його виловить коточок,
Потім сяде у куточок,
Тихо згорнеться в клубочок
І поспить собі годину,
І поспить собі годину...
І поспить собі годину...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2269158'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2269158','Лю-лі, лю-лі, мій синочку','Лю-лі, лю-лі, мій синочку,
Нічка лягла спати,
Стало темно, я заснула,
Так заснула, що забула
Віконце закрити,
Місяць засвітити...
Віконце закрити,
Місяць засвітити...

Спи, синочку, спить тваринка,
Спить комашка ще й пташинка
І коточок спить,
Наш коточок спить...
Пишні лапки, гострі зубки
Ясні очка, як зірочки,
Наш коточок спить,
А-а-а-а...

Завтра встане, щоб робити,
Щоб мурликати, ходити,
І котили, і котити
Землю вгору аж до сонця
З-під віконця з-під віконця,
Де зійшло воно,
Де зійшло воно...

Сонце гляне на хатину,
На колиску, на дитину,
Його виловить коточок,
Потім сяде у куточок,
Тихо згорнеться в клубочок
І поспить собі годину,
І поспить собі годину...
І поспить собі годину...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2269158_l1','pisniua_2269158','YouTube','https://www.youtube.com/watch?v=UCQP_blNqnQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2270073';
DELETE FROM song_versions WHERE song_id = 'pisniua_2270073';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2270073';
DELETE FROM songs WHERE id = 'pisniua_2270073';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2270073','Перлина Україна','Музика: Олег Винник Слова: Олег Винник. Виконує: Олег Винник','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Приспів:
Перлина Україна,
На весь світ одна єдина.
Перлина Україна,
На весь світ одна єдина...

З небес святих прозоро синіх
Упала зоряна сльозина
І утворилася перлина,
Ім''я у неї - Україна!

Приспів.

Блакитне небо, жовте поле,
Україно, моя доле,
Хлібом, сіллю ти гостинна,
Ти і я - одна родина!

Приспів. (2)','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2270073'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2270073','Перлина Україна','Приспів:
Перлина Україна,
На весь світ одна єдина.
Перлина Україна,
На весь світ одна єдина...

З небес святих прозоро синіх
Упала зоряна сльозина
І утворилася перлина,
Ім''я у неї - Україна!

Приспів.

Блакитне небо, жовте поле,
Україно, моя доле,
Хлібом, сіллю ти гостинна,
Ти і я - одна родина!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2270073_l1','pisniua_2270073','YouTube','https://www.youtube.com/watch?v=ITOoBLo0BBc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_227091';
DELETE FROM song_versions WHERE song_id = 'pisniua_227091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_227091';
DELETE FROM songs WHERE id = 'pisniua_227091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_227091','Руська балада','Музика: Анатолій Сухий Слова: Анатолій Сухий. Виконує: Рутенія','uk','ukraine_1991',NULL,'2002','http://www.ukrmusic.com.ua/ukr/text.php?albumid=319&id=4308','Пісня з альбому гурту Рутенія "Десь за Дніпром гримить гроза", 2002. Виконує Рутенія. Автори напевно в середовищі Рутенії (ймовірно А. Сухий).','Росли у вдовиній хаті
Брати синьоокі - русини,
Замалі їм здалися Карпати, -
Подалися долі шукати.

Приспів:
Шукай, не шукай свою долю, шукай, не шукай.

А доля братів розкидала,
І краще б її не шукати,
Як вдарили громом гармати,
Пішли два брати воювати.

Приспів:
Воювали козаки синьооких яничар.

Як здригнулися Карпати,
Турок вбив свого старшого брата.*
До схід сонця трава похилилась
Бо гадюкою мати зробилась.
Затруїла зловісна гадюка
У шатрі після бою синочка.

Приспів:
Воювали козаки синьооких яничар.

Росте у зелених горах
Квітка русинського горя.
Вона поросла у чагарах
Із серця мого яничара.

Як вечір спаде на крижі,
Старезним гуцульським хижам,
Розкриє пелюстки хижі
Чорна квітка забутих легенд.

Приспів:
Ой заграй, моя трембіто,
Підростають діти.

*Варіант: Брат убив свого старшого брата.','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_227091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_227091','Руська балада','Росли у вдовиній хаті
Брати синьоокі - русини,
Замалі їм здалися Карпати, -
Подалися долі шукати.

Приспів:
Шукай, не шукай свою долю, шукай, не шукай.

А доля братів розкидала,
І краще б її не шукати,
Як вдарили громом гармати,
Пішли два брати воювати.

Приспів:
Воювали козаки синьооких яничар.

Як здригнулися Карпати,
Турок вбив свого старшого брата.*
До схід сонця трава похилилась
Бо гадюкою мати зробилась.
Затруїла зловісна гадюка
У шатрі після бою синочка.

Приспів:
Воювали козаки синьооких яничар.

Росте у зелених горах
Квітка русинського горя.
Вона поросла у чагарах
Із серця мого яничара.

Як вечір спаде на крижі,
Старезним гуцульським хижам,
Розкриє пелюстки хижі
Чорна квітка забутих легенд.

Приспів:
Ой заграй, моя трембіто,
Підростають діти.

*Варіант: Брат убив свого старшого брата.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_227091_l1','pisniua_227091','YouTube','https://www.youtube.com/watch?v=pcQyl-3iI1U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2271111';
DELETE FROM song_versions WHERE song_id = 'pisniua_2271111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2271111';
DELETE FROM songs WHERE id = 'pisniua_2271111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2271111','Свою матір залишив Ісус',NULL,'uk','ukraine_1991',NULL,NULL,'Пісенник молодіжної спільноти церкви святого Миколая на Аскольдовій Могилі. - м. Київ. - 2011.',NULL,'Свою матір залишив Ісус,
Щоб мав в світі до кого прийти.
Опікою Вона тебе оточить,
Коли схочеш до неї прийти.

Приспів:
До Її ніг, до ніг, похилися,
І свої турботи віддай Їй.
Вона серцем материнським
Кожен час чекає,
Залиши Марії тягар свій.

Зрозуміти так ніхто не зможе,
І любити не спроможний теж.
Так в житті ніхто не допоможе,
Кращої матусі не знайдеш.

Приспів.

Так багато Марію шукало,
Щоб віднайти свій життя шлях.
Серце материнське потішало
Всіх, хто ніс свій біль,
Горе і страх.

Приспів.','[''pisni.org.ua'', ''cat:strasni'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2271111'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2271111','Свою матір залишив Ісус','Свою матір залишив Ісус,
Щоб мав в світі до кого прийти.
Опікою Вона тебе оточить,
Коли схочеш до неї прийти.

Приспів:
До Її ніг, до ніг, похилися,
І свої турботи віддай Їй.
Вона серцем материнським
Кожен час чекає,
Залиши Марії тягар свій.

Зрозуміти так ніхто не зможе,
І любити не спроможний теж.
Так в житті ніхто не допоможе,
Кращої матусі не знайдеш.

Приспів.

Так багато Марію шукало,
Щоб віднайти свій життя шлях.
Серце материнське потішало
Всіх, хто ніс свій біль,
Горе і страх.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2270212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2270212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2270212';
DELETE FROM songs WHERE id = 'pisniua_2270212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2270212','Роксолана','Музика: Олег Винник Слова: Олег Винник. Виконує: Олег Винник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сумні очі cміхом не сховати,
По них тебе так легко упізнати.
Хто б не була ти - Настя чи Оксана,
Тобі одне ім''я, ти - Роксолана!
Ти - Роксолана!

Життя твоє пройде, як на екрані,
У Лондоні, Парижі чи Мілані,
Чутлива, ніжна і така жаданна,
Тобі одне ім''я, ти - Роксолана!
Ти - Роксолана!

Мадам, сеньора, леді або фрау,
Та край чужий не гоїть в серці рану.
I вигляда тебе старенька мама,
Чарівна Українка - Роксолана.
Ти - Роксолана!','[''pisni.org.ua'', ''cat:devoted'', ''cat:istorychni'', ''Пісні присвячені окремим особам'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2270212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2270212','Роксолана','Сумні очі cміхом не сховати,
По них тебе так легко упізнати.
Хто б не була ти - Настя чи Оксана,
Тобі одне ім''я, ти - Роксолана!
Ти - Роксолана!

Життя твоє пройде, як на екрані,
У Лондоні, Парижі чи Мілані,
Чутлива, ніжна і така жаданна,
Тобі одне ім''я, ти - Роксолана!
Ти - Роксолана!

Мадам, сеньора, леді або фрау,
Та край чужий не гоїть в серці рану.
I вигляда тебе старенька мама,
Чарівна Українка - Роксолана.
Ти - Роксолана!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2270212_l1','pisniua_2270212','YouTube','https://www.youtube.com/watch?v=LpiOD_-gTvk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2270212_l2','pisniua_2270212','YouTube','https://www.youtube.com/watch?v=Q7TYZcv7ntk','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_227318';
DELETE FROM song_versions WHERE song_id = 'pisniua_227318';
DELETE FROM songs_fts WHERE song_id = 'pisniua_227318';
DELETE FROM songs WHERE id = 'pisniua_227318';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_227318','Молитва за Україну','Музика: Крістіна Загаріна Слова: Крістіна Загаріна','uk','ukraine_1991',NULL,NULL,NULL,'Один із авторів (скоріше автор слів), наскільки мені відомо, - це Христина Малишкіна. Пісню цю співають в костьолах. Зокрема, під час революційних подій минулого року її співали прихожани під час щоденних молитв за Україну. Хоча написана пісня значно раніше. Мінус: http://www.minus.lviv.ua/minus/artist/Аннушка/rec/7801/?c=13026 Підбір акордів: campanella','Вибачайте, текст та','[''pisni.org.ua'', ''cat:christian'', ''cat:patriotic'', ''Пісні на християнську тематику'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_227318'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_227318','Молитва за Україну','Вибачайте, текст та');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_227318_l1','pisniua_227318','YouTube','https://www.youtube.com/watch?v=M0hkw3fyg3A','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2271818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2271818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2271818';
DELETE FROM songs WHERE id = 'pisniua_2271818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2271818','Люби ти Україну!','Музика: Т.І.К. (Тік) Слова: Віктор Бронюк. Виконує: Т.І.К. (Тік)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Там, де трави вмиваються росами,
Де поля золотяться покосами,
Де живе в моїм серці єдина -
Там вона, там моя Україна!
Я не хочу писати віршів сумних
Про те, як живеться в ріднім краю,
Я не хочу тлумачити кожному з них
За що я люблю Країну мою!
І дивно чути від знайомих людей,
Що з цієї країни потрібно тікати.
Я - не емігрант, я маю батьківщину
І я не боюся в голос сказати!

Приспів:
Так я люблю Україну!
Я тут народився і тут хочу жити!
Так я люблю Україну!
Сильно люблю і буду любити!
Так я люблю Україну!
Свою родину, свою сім''ю!
Мені є що втрачати, є кого любити,
І я сильно ціную те, що люблю!

Можна змиритись із втратою,
Ми завжди цінуємо те, що втрачаєм.
Живемо під вічною вартою,
Маємо волю, а права не маєм.
І хтось мені скаже: А ти що співаєш?
Де твоя зброя? Народ підіймай!
Я просто перезаряджаю набої,
А ти коли хочеш - зі мною співай.

Приспів. (2)','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2271818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2271818','Люби ти Україну!','Там, де трави вмиваються росами,
Де поля золотяться покосами,
Де живе в моїм серці єдина -
Там вона, там моя Україна!
Я не хочу писати віршів сумних
Про те, як живеться в ріднім краю,
Я не хочу тлумачити кожному з них
За що я люблю Країну мою!
І дивно чути від знайомих людей,
Що з цієї країни потрібно тікати.
Я - не емігрант, я маю батьківщину
І я не боюся в голос сказати!

Приспів:
Так я люблю Україну!
Я тут народився і тут хочу жити!
Так я люблю Україну!
Сильно люблю і буду любити!
Так я люблю Україну!
Свою родину, свою сім''ю!
Мені є що втрачати, є кого любити,
І я сильно ціную те, що люблю!

Можна змиритись із втратою,
Ми завжди цінуємо те, що втрачаєм.
Живемо під вічною вартою,
Маємо волю, а права не маєм.
І хтось мені скаже: А ти що співаєш?
Де твоя зброя? Народ підіймай!
Я просто перезаряджаю набої,
А ти коли хочеш - зі мною співай.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2271818_l1','pisniua_2271818','YouTube','https://www.youtube.com/watch?v=CdVDmTAOEhw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2271818_l2','pisniua_2271818','YouTube','https://www.youtube.com/watch?v=QopDnWOBcuM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2274111';
DELETE FROM song_versions WHERE song_id = 'pisniua_2274111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2274111';
DELETE FROM songs WHERE id = 'pisniua_2274111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2274111','Ой, віночку, пливи за водою','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Зачаровані ночі спустились,
То Купало іде нам навстріч,
Ліс притих і калина схилилась,
Всі чекають чудес у цю ніч.
Розгориться багаття яскраво,
Ясно зорі іскрами замерехтять,
А дівчата ітимуть до ставу
У води щастя долю питать.

Приспів:
Ой, віночку, пливи за водою,
Десь там доля на мене чека,
Десь за синьою далиною
Стука серце козака.
Десь за синьою далиною
Стука серце козака.

У обіймах Купальської ночі
В дикім танці стрибає вогонь,
Пломеніють закохані очі,
Зігріва перший дотик долонь.
Понад ставом, понад ставочком
Лосно серце дівоче щемить,
Над водою кружляють віночки
І замріяно пісня бринить.

Приспів.

Речитатив:
Ой, віночку, пливи в синє море,
Ой, віночку, на дно не іди,
Щоб не знати дівчиноньці горя,
Ти віночку їй пару знайди.

Приспів.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2274111'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2274111','Ой, віночку, пливи за водою','Зачаровані ночі спустились,
То Купало іде нам навстріч,
Ліс притих і калина схилилась,
Всі чекають чудес у цю ніч.
Розгориться багаття яскраво,
Ясно зорі іскрами замерехтять,
А дівчата ітимуть до ставу
У води щастя долю питать.

Приспів:
Ой, віночку, пливи за водою,
Десь там доля на мене чека,
Десь за синьою далиною
Стука серце козака.
Десь за синьою далиною
Стука серце козака.

У обіймах Купальської ночі
В дикім танці стрибає вогонь,
Пломеніють закохані очі,
Зігріва перший дотик долонь.
Понад ставом, понад ставочком
Лосно серце дівоче щемить,
Над водою кружляють віночки
І замріяно пісня бринить.

Приспів.

Речитатив:
Ой, віночку, пливи в синє море,
Ой, віночку, на дно не іди,
Щоб не знати дівчиноньці горя,
Ти віночку їй пару знайди.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2274111_l1','pisniua_2274111','http://minus.lviv.ua/','http://minus.lviv.ua/','external',NULL,1);
