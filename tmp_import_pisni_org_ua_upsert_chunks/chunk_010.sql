DELETE FROM song_links WHERE song_id = 'pisniua_2167395';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167395';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167395';
DELETE FROM songs WHERE id = 'pisniua_2167395';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167395','Журавочка','Музика: Богдан-Юрій Янівський Слова: Петро Шкраб''юк. Виконує: Богдан Косопуд','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Летить журавочка здаля,
Над нею димні хмари.
Нема у неї журавля,
Нема у мене пари.

О зоре, не згасай, світи!
На серце впала туга.
Лети, журавочко, лети
За себе і за друга.

Летить журавочка сама,
Несе пташину втому.
Нема журавлика, нема,
Гіркий мій шлях додому.

О зоре, не згасай світи,
І хоч на серці туга,
Лети, журавочко, лети
За себе і за друга','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2167395'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2167395','Журавочка','Летить журавочка здаля,
Над нею димні хмари.
Нема у неї журавля,
Нема у мене пари.

О зоре, не згасай, світи!
На серце впала туга.
Лети, журавочко, лети
За себе і за друга.

Летить журавочка сама,
Несе пташину втому.
Нема журавлика, нема,
Гіркий мій шлях додому.

О зоре, не згасай світи,
І хоч на серці туга,
Лети, журавочко, лети
За себе і за друга');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2167395_l1','pisniua_2167395','YouTube','https://www.youtube.com/watch?v=advVaTyjWSA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_21665';
DELETE FROM song_versions WHERE song_id = 'pisniua_21665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_21665';
DELETE FROM songs WHERE id = 'pisniua_21665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_21665','А ти, старий діду, чому ся не жениш?','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'А вже весна скресла. Збірник гаївок. Львів, 2003.','Пара-Непара. Українські релігійні роздуми про Воскресіння, Неволю і Спасіння. Нема в світі Правди не зіскати. Чого Старий не женишся. Старої не хочу Молода не піде. Листки з приводу цієї Пісні: Українські реліґійні роздуми про Неволю та Спасіння Традиції самогуртування: Cвятий Збір. Вістуни великого Свята, аскети, люди ідеї. Стежки до листків про Українські традиції.','А ти, старий діду, чому ся не жениш?
Я лігав, думав, думав,
я вставав, думав, думав, чому ся не жениш?

Старої не хочу, молода не піде,
Я лігав, думав, думав,
я вставав, думав, думав, молода не піде.

А хоть вона піде, то нароби біди,
Я лігав, думав, думав,
я вставав, думав, думав, то нароби біди.

Подібно і далі розспівується кожний рядок:

А хоть не нароби, то не зварит їсти.
А хоть зварит їсти, то ми не налиє.
А хоть ми налиє, то не подасть лишки.
А хоть подасть лишку, то сама не сяде.
А хоть вона сяде, то не буде їсти.
А хоть буде їсти, то ми не постелит.
А хоть ми постелит, то сама не ляже.
А хоть вона ляже, то ми не обійме.
А хоть мня обійме, то не поцілує.
А хоть поцілує, то на землю сплює.    Мелодія для 1 і 2 голосу','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_21665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_21665','А ти, старий діду, чому ся не жениш?','А ти, старий діду, чому ся не жениш?
Я лігав, думав, думав,
я вставав, думав, думав, чому ся не жениш?

Старої не хочу, молода не піде,
Я лігав, думав, думав,
я вставав, думав, думав, молода не піде.

А хоть вона піде, то нароби біди,
Я лігав, думав, думав,
я вставав, думав, думав, то нароби біди.

Подібно і далі розспівується кожний рядок:

А хоть не нароби, то не зварит їсти.
А хоть зварит їсти, то ми не налиє.
А хоть ми налиє, то не подасть лишки.
А хоть подасть лишку, то сама не сяде.
А хоть вона сяде, то не буде їсти.
А хоть буде їсти, то ми не постелит.
А хоть ми постелит, то сама не ляже.
А хоть вона ляже, то ми не обійме.
А хоть мня обійме, то не поцілує.
А хоть поцілує, то на землю сплює.    Мелодія для 1 і 2 голосу');
DELETE FROM song_links WHERE song_id = 'pisniua_2167756';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167756';
DELETE FROM songs WHERE id = 'pisniua_2167756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167756','Донечка','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://www.malecha.org.ua/',NULL,'Мама свою донечку
В любистку купала,
Мама своїй донечці
Доленьку гукала:
Нехай вода чистая
Змиє лихі очі,
Нехай доля красная
До нас стежку топче.

Мама своїй донечці
Кучері чесала,
Мама своїй донечці
Коси виплітала:
Нехай нижче пояса
Виростають коси,
Нехай добрий молодець
Рученьку попросить.

Мама свою донечку
Спатоньки вкладала,
Мама своїй донечці
Пісеньку співала:
Нехай засне донечка
Під мамине слово,
Нехай росте рідная
Велика й здорова.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''cat:narodni'', ''Дитячі пісні'', ''Колискові'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2167756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2167756','Донечка','Мама свою донечку
В любистку купала,
Мама своїй донечці
Доленьку гукала:
Нехай вода чистая
Змиє лихі очі,
Нехай доля красная
До нас стежку топче.

Мама своїй донечці
Кучері чесала,
Мама своїй донечці
Коси виплітала:
Нехай нижче пояса
Виростають коси,
Нехай добрий молодець
Рученьку попросить.

Мама свою донечку
Спатоньки вкладала,
Мама своїй донечці
Пісеньку співала:
Нехай засне донечка
Під мамине слово,
Нехай росте рідная
Велика й здорова.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2167756_l1','pisniua_2167756','YouTube','https://www.youtube.com/watch?v=-Flvni-EF7o','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2166293';
DELETE FROM song_versions WHERE song_id = 'pisniua_2166293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2166293';
DELETE FROM songs WHERE id = 'pisniua_2166293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2166293','Кохана дружина','Музика: Едуард Драч Слова: Едуард Драч. Виконує: Едуард Драч','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Тебе одну, найкращу із жінок,
Навіки покохав всім серцем я.
І зникне спокій враз навколо мене,
І кожен день ставав благословенним,
Немов печать із вуст моїх знялась,
І радісно співа душа моя,
Знов відчуває крила за спиною,
Летить в піснях, стає сама собою!

Приспів:
Кохана дружино, серце співа,
Душа бринить в промінні світанковім!
Кохана, безсилі інші слова,
Кохана, вся ніжність в цім золотім,
Наче сама любов, в цім золотім,
Наче сама любов, в цім золотім,
Наче сама любов, слові!

Тобі одній, найкращій із жінок,
Навіки присягав всім серцем я.
Вінчання хором ангели співали,
Рясним промінням в небеса літати.
В твоїй душі все золото зірок,
А в слові ніжність пісні солов''я.
Мені немає кращої за тебе,
Що ж, дійсно, родяться на небі!

Приспів.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2166293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2166293','Кохана дружина','Тебе одну, найкращу із жінок,
Навіки покохав всім серцем я.
І зникне спокій враз навколо мене,
І кожен день ставав благословенним,
Немов печать із вуст моїх знялась,
І радісно співа душа моя,
Знов відчуває крила за спиною,
Летить в піснях, стає сама собою!

Приспів:
Кохана дружино, серце співа,
Душа бринить в промінні світанковім!
Кохана, безсилі інші слова,
Кохана, вся ніжність в цім золотім,
Наче сама любов, в цім золотім,
Наче сама любов, в цім золотім,
Наче сама любов, слові!

Тобі одній, найкращій із жінок,
Навіки присягав всім серцем я.
Вінчання хором ангели співали,
Рясним промінням в небеса літати.
В твоїй душі все золото зірок,
А в слові ніжність пісні солов''я.
Мені немає кращої за тебе,
Що ж, дійсно, родяться на небі!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2165697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2165697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2165697';
DELETE FROM songs WHERE id = 'pisniua_2165697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2165697','Ніч новорічна','Музика: Тарас Петриненко Слова: Ірина Білик. Виконує: Ірина Білик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Свічі різдвяні запалюють зорі
І серце чекає тепла.
Залишимо тугу, забудемо горе,
Ніч новорічна прийшла!

Приспів:
В ніч новорічну все незвично!
В ніч новорічну, в ніч добра!
В ніч новорічну пісня кличе всіх,
Хто зі мною, тих, з ким я!

Віра і правда здолають розлуки,
Щоб сяяла кожна душа.
Назавджи кохані візьміться за руки,
Ніч новорічна прийшла!

Приспів. (2)

Пісня різдвяна лунає на волі,
Єднає святі почуття.
Повірте у диво, для щастя і долі
Ніч новорічна прийшла!

Приспів. (2)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2165697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2165697','Ніч новорічна','Свічі різдвяні запалюють зорі
І серце чекає тепла.
Залишимо тугу, забудемо горе,
Ніч новорічна прийшла!

Приспів:
В ніч новорічну все незвично!
В ніч новорічну, в ніч добра!
В ніч новорічну пісня кличе всіх,
Хто зі мною, тих, з ким я!

Віра і правда здолають розлуки,
Щоб сяяла кожна душа.
Назавджи кохані візьміться за руки,
Ніч новорічна прийшла!

Приспів. (2)

Пісня різдвяна лунає на волі,
Єднає святі почуття.
Повірте у диво, для щастя і долі
Ніч новорічна прийшла!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2165697_l1','pisniua_2165697','YouTube','https://www.youtube.com/watch?v=L4e9ph6HbLY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2167175';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167175';
DELETE FROM songs WHERE id = 'pisniua_2167175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167175','Мій Львове','Музика: Сергій Петросян Слова: Богдан Косопуд','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Уклін тобі, доземний, рідний Львове,
За те, що ти таким на світі є.
Де б не бував я, повертаюсь знову
До міста - Лева, бо воно моє.

Люблю тебе, мій Львове старовинний,
Я, завше тобі славу віщував.
Порив до волі - галицький, нестримний
Душі моїй спокою не давав.

Ти був завжди проводирем Свободи,
До правди і єднання закликав.
Ти еталоном був культури, моди,
Тебе, хто жив тут, рідним називав.

Твій древній дух дає мені наснагу
До відданої праці, до життя.
Історія - вселя в мені відвагу,
Сучасність - вірний погляд в майбуття!

На світі міста кращого немає -
Мій Львів - моя ти гордість і любов!
Якщо кудись від''їду - твердо знаю,
Що неодмінно повернуся знов!','[''pisni.org.ua'', ''cat:lviv'', ''Пісні про Львів'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2167175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2167175','Мій Львове','Уклін тобі, доземний, рідний Львове,
За те, що ти таким на світі є.
Де б не бував я, повертаюсь знову
До міста - Лева, бо воно моє.

Люблю тебе, мій Львове старовинний,
Я, завше тобі славу віщував.
Порив до волі - галицький, нестримний
Душі моїй спокою не давав.

Ти був завжди проводирем Свободи,
До правди і єднання закликав.
Ти еталоном був культури, моди,
Тебе, хто жив тут, рідним називав.

Твій древній дух дає мені наснагу
До відданої праці, до життя.
Історія - вселя в мені відвагу,
Сучасність - вірний погляд в майбуття!

На світі міста кращого немає -
Мій Львів - моя ти гордість і любов!
Якщо кудись від''їду - твердо знаю,
Що неодмінно повернуся знов!');
DELETE FROM song_links WHERE song_id = 'pisniua_2167471';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167471';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167471';
DELETE FROM songs WHERE id = 'pisniua_2167471';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167471','Запалала під вогнем Закарпатська Україна','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'із наспіву хориста мукачівського церковного хору грекокатолицької єпархії.',NULL,'В тисяча дев''ятсот
тридцять восьмому році
Сталась сумна новина.
Запалала під вогнем,
Задрижала під мечем
Закарпатська Україна.

Чехи йдуть, колять б''ють
А мадяри ззаду йдуть
Висилають ультимати
Щоб народ ся піддав
Свою зброю віддав
Бо інакше їм не жити.

А наш батько Волошин
Він скликає всіх старшин
На сумную нараду.
Щоб зійшлися як стій
Всі січовії стрільці.
Стали сміливо до бою.

Не журіться милі браття
Ще повстане Закарпаття
І зелена верховина
І зелена верховина
Самостійна Україна
І щасливо заживемо.    наспів. один голос. (гарне виконання)','[''pisni.org.ua'', ''cat:istorychni'', ''cat:zakarpatski'', ''Історичні пісні'', ''Закарпатські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2167471'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2167471','Запалала під вогнем Закарпатська Україна','В тисяча дев''ятсот
тридцять восьмому році
Сталась сумна новина.
Запалала під вогнем,
Задрижала під мечем
Закарпатська Україна.

Чехи йдуть, колять б''ють
А мадяри ззаду йдуть
Висилають ультимати
Щоб народ ся піддав
Свою зброю віддав
Бо інакше їм не жити.

А наш батько Волошин
Він скликає всіх старшин
На сумную нараду.
Щоб зійшлися як стій
Всі січовії стрільці.
Стали сміливо до бою.

Не журіться милі браття
Ще повстане Закарпаття
І зелена верховина
І зелена верховина
Самостійна Україна
І щасливо заживемо.    наспів. один голос. (гарне виконання)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2167471_l1','pisniua_2167471','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2167563';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167563';
DELETE FROM songs WHERE id = 'pisniua_2167563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167563','Колискова від зайчика','Слова: Ігор Січовик','uk','ukraine_before_1917',NULL,NULL,'http://www.malecha.org.ua',NULL,'Місяць з''явився на небі,
В гості зайшов я до тебе...
Діти поснули малі -
Люлі-люлі...

Зайчик приліг на подушку,
Вкрився м''якесеньким вушком.
Морква лежить на столі -
Люлі-люлі...

Хай вам присняться, малята,
Любі матуся і тато.
Будьте завжди на землі -
Люлі-люлі...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2167563'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2167563','Колискова від зайчика','Місяць з''явився на небі,
В гості зайшов я до тебе...
Діти поснули малі -
Люлі-люлі...

Зайчик приліг на подушку,
Вкрився м''якесеньким вушком.
Морква лежить на столі -
Люлі-люлі...

Хай вам присняться, малята,
Любі матуся і тато.
Будьте завжди на землі -
Люлі-люлі...');
DELETE FROM song_links WHERE song_id = 'pisniua_2167920';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167920';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167920';
DELETE FROM songs WHERE id = 'pisniua_2167920';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167920','Ой, ходила журавочка','Українська народна пісня. Виконує: Леся Бонковська','uk','ukraine_before_1917',NULL,NULL,'http://www.malecha.org.ua/',NULL,'Ой, ходила журавочка
Та й по комишу.
А я свою дитиночку
Та й заколишу.

Ой, ходила журавочка
Та й на той пожар,
Попекла та й білії ніжки,
Стало мені жаль...

Ой, люлі, люлі...

Ой, ходила журавочка
Та й по комишу.
А я свою дитиночку
Та й заколишу...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2167920'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2167920','Ой, ходила журавочка','Ой, ходила журавочка
Та й по комишу.
А я свою дитиночку
Та й заколишу.

Ой, ходила журавочка
Та й на той пожар,
Попекла та й білії ніжки,
Стало мені жаль...

Ой, люлі, люлі...

Ой, ходила журавочка
Та й по комишу.
А я свою дитиночку
Та й заколишу...');
DELETE FROM song_links WHERE song_id = 'pisniua_2167777';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167777';
DELETE FROM songs WHERE id = 'pisniua_2167777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167777','В небі, в морі сяють зорі','Слова: Платон Воронько','uk','ukraine_before_1917',NULL,NULL,'http://www.malecha.org.ua/',NULL,'В небі, в морі
Сяють зорі,
Місяць в човнику
Пливе і питає:
Де живе той
Хлопчина-молодчина,
В кого ліжечко нове?

Я візьму його у човен,
Він зірок по вінця повен, -
Хай бере собі маля
Щасну зірку звідтіля!..','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2167777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2167777','В небі, в морі сяють зорі','В небі, в морі
Сяють зорі,
Місяць в човнику
Пливе і питає:
Де живе той
Хлопчина-молодчина,
В кого ліжечко нове?

Я візьму його у човен,
Він зірок по вінця повен, -
Хай бере собі маля
Щасну зірку звідтіля!..');
DELETE FROM song_links WHERE song_id = 'pisniua_2167798';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167798';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167798';
DELETE FROM songs WHERE id = 'pisniua_2167798';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167798','Вечір дуже добрий','Слова: Платон Воронько','uk','ukraine_before_1917',NULL,NULL,'http://www.malecha.org.ua/',NULL,'Вечір дуже добрий,
Вечір-побігайчик,
Забіжить, засвітить
Золотий каганчик.

Щоб цікаву книжку
Прочитала мати.
Ніч каганчик гасить,
Укладає спати.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2167798'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2167798','Вечір дуже добрий','Вечір дуже добрий,
Вечір-побігайчик,
Забіжить, засвітить
Золотий каганчик.

Щоб цікаву книжку
Прочитала мати.
Ніч каганчик гасить,
Укладає спати.');
DELETE FROM song_links WHERE song_id = 'pisniua_2168952';
DELETE FROM song_versions WHERE song_id = 'pisniua_2168952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2168952';
DELETE FROM songs WHERE id = 'pisniua_2168952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2168952','Колискова','Українська народна пісня. Виконує: Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Спи, дитятко, баю-баю,
Колишу, тобі співаю,
Ніч приходить, треба спати,
Коло тебе рідна мати.

Ой, баю, баю, баю,
Не садися на краю,
Прийде сіренький вовчок
І ухватить за бочок.

Ой, ти, котку-рябку,
Ти скопай нам грядку.
Ми насієм квіточок
Забавляти діточок.

А в нашого Омелечка
Невеличка сімєечка:
Тільки він та вона,
Та старий, та стара,
Та Петрусь, та Павлусь,
Та дванадцять штук Марусь,
Та два парубки вусаті,
Та дві дівки косаті...','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2168952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2168952','Колискова','Спи, дитятко, баю-баю,
Колишу, тобі співаю,
Ніч приходить, треба спати,
Коло тебе рідна мати.

Ой, баю, баю, баю,
Не садися на краю,
Прийде сіренький вовчок
І ухватить за бочок.

Ой, ти, котку-рябку,
Ти скопай нам грядку.
Ми насієм квіточок
Забавляти діточок.

А в нашого Омелечка
Невеличка сімєечка:
Тільки він та вона,
Та старий, та стара,
Та Петрусь, та Павлусь,
Та дванадцять штук Марусь,
Та два парубки вусаті,
Та дві дівки косаті...');
DELETE FROM song_links WHERE song_id = 'pisniua_2167158';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167158';
DELETE FROM songs WHERE id = 'pisniua_2167158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167158','Знак батьківської любові','Музика: Сергій Петросян Слова: Богдан Косопуд','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Направду, важко віднайти
Слова вітань тобі, дитино.
Батьки - це добре знаєш ти,
До тебе завжди серцем линуть.

Приспів:
Кохана, доню, будь щаслива,
Здорова, ніжна та вродлива.
Ми лиш тобою живемо,
Тобі любов віддаємо.

Якби знайти такі слова
Іще не сказані ніколи,
Та їх чомусь ніде нема
І не вивчають їх у школі.

Приспів.

Слова такі є лиш в душі,
Словами тими серце мовить.
Їх ми даруємо тобі
На знак батьківської любові!

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2167158'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2167158','Знак батьківської любові','Направду, важко віднайти
Слова вітань тобі, дитино.
Батьки - це добре знаєш ти,
До тебе завжди серцем линуть.

Приспів:
Кохана, доню, будь щаслива,
Здорова, ніжна та вродлива.
Ми лиш тобою живемо,
Тобі любов віддаємо.

Якби знайти такі слова
Іще не сказані ніколи,
Та їх чомусь ніде нема
І не вивчають їх у школі.

Приспів.

Слова такі є лиш в душі,
Словами тими серце мовить.
Їх ми даруємо тобі
На знак батьківської любові!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2167869';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167869';
DELETE FROM songs WHERE id = 'pisniua_2167869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167869','Над колискою','Слова: Олександр Олесь','uk','ukraine_before_1917',NULL,NULL,'http://www.malecha.org.ua/',NULL,'Спи, мій малесенький, спи, мій синок...
Я розкажу тобі безліч казок!
Нащо ж ти віченьки знову розкрив?!.  |
Спи, моя пташко, то вітер завив.     | (2)

Стогне і виє уже він давно,
Б''ється і стука в наше вікно...
Геть, розбишако, в далекі степи!..   |
Спи, моя ластівко, солодко спи!      | (2)

Ось уже й вітер зовсім занімів...
Мабуть, заснуть під намет полетів...
Холодно зараз в лісах і лугах, —     |
Все потонуло в глибоких снігах.      | (2)

Бігають зайчики, мерзнуть, тремтять,
Затишок хочуть собі відшукать.
Ось вони вгледіли, — кущик стоїть, — |
Годі! Давно вже лисичка там спить.   | (2)

Кинулись знову кудись на грядки, —
Ой, там ночують сьогодні вовки.
Краще ви в поле біжіть, за лісок...  |
Знайдете там ви соломки стіжок.      | (2)

Глибше забийтесь, зарийтесь в снопки,
Щоб не знайшли вас голодні вовки...
Спи ж, мій малесенький, годі гулять, |
Зайчики білі давно уже сплять...     | (2)','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2167869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2167869','Над колискою','Спи, мій малесенький, спи, мій синок...
Я розкажу тобі безліч казок!
Нащо ж ти віченьки знову розкрив?!.  |
Спи, моя пташко, то вітер завив.     | (2)

Стогне і виє уже він давно,
Б''ється і стука в наше вікно...
Геть, розбишако, в далекі степи!..   |
Спи, моя ластівко, солодко спи!      | (2)

Ось уже й вітер зовсім занімів...
Мабуть, заснуть під намет полетів...
Холодно зараз в лісах і лугах, —     |
Все потонуло в глибоких снігах.      | (2)

Бігають зайчики, мерзнуть, тремтять,
Затишок хочуть собі відшукать.
Ось вони вгледіли, — кущик стоїть, — |
Годі! Давно вже лисичка там спить.   | (2)

Кинулись знову кудись на грядки, —
Ой, там ночують сьогодні вовки.
Краще ви в поле біжіть, за лісок...  |
Знайдете там ви соломки стіжок.      | (2)

Глибше забийтесь, зарийтесь в снопки,
Щоб не знайшли вас голодні вовки...
Спи ж, мій малесенький, годі гулять, |
Зайчики білі давно уже сплять...     | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2167869_l1','pisniua_2167869','YouTube','https://www.youtube.com/watch?v=v3RIZ_L1LaI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2169550';
DELETE FROM song_versions WHERE song_id = 'pisniua_2169550';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2169550';
DELETE FROM songs WHERE id = 'pisniua_2169550';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2169550','Ой ну, люлі, люлі **','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'Ой ну, люлі, люлі!
Прилинули гулі
Та й сіли на люлі.
Стали думати-гадати,
Чим дитину дарувати.
Дали йому три квіточки:
Одну квітку сонливую,
Другу квітку дрімливую,
А третюю щасливую.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2169550'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2169550','Ой ну, люлі, люлі **','Ой ну, люлі, люлі!
Прилинули гулі
Та й сіли на люлі.
Стали думати-гадати,
Чим дитину дарувати.
Дали йому три квіточки:
Одну квітку сонливую,
Другу квітку дрімливую,
А третюю щасливую.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2169550_l1','pisniua_2169550','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_216961';
DELETE FROM song_versions WHERE song_id = 'pisniua_216961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_216961';
DELETE FROM songs WHERE id = 'pisniua_216961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_216961','На Україну повернусь!','Музика: Остап Гавриш Слова: Степан Галябарда. Виконує: Іво Бобул','uk','ukraine_1991',NULL,'1992','Журнал "Жінка".- квітень, 1992','* Вступ: мелодія приспіву пісні "Журавлі" (Чуєш, брате мій...) Акорди: Fm6 [1 3 0 1 1 1] "Нашим читачам припала до душі пісня композитора з Косова Остапи Гавриша і талановитого поета з Києва Степана Галябарди "На Україну повернусь" у виконанні популярного співака Іво Бобула. Можливо, цей твір надихне людей, котрі не з власної вини залишили рідний край. Повертайтеся, брати і сестри!" (Журнал "Жінка".- квітень, 1992)','Вступ.*

1.
Є у мене дім, одіж і авто,
Ранок, вечір, ніч, є вишневий сад.
Це у мене вже не візьме ніхто,
Як мої літа не вернуть назад.
Fm7
Тільки раптом задзвенить
Мого серця тятива,
Як почую хоч на мить
Українськії слова.

Приспів:
Fm7
На Україну повернусь
Через роки, через віки,
Устами вдячно притулюсь
До материнської руки.

2.
Сяду у літак, стріну земляків.
Поєднаємо всі свої жалі.
Ляже довгий шлях нам у край батьків,
І наздоженем, певно, журавлів.
Може, хліб черствіший тут,
Та душа враз ожива.
Бо фіалками цвітуть
Українськії слова.

Приспів. (x2)

3.
До свого гнізда полечу я знов,
Певно, там уже діти підросли.
А залишу тут віру і любов,
Може, назавжди повернусь колись.

Програш (на мелодію Приспіву).

Приспів. (x2)','[''pisni.org.ua'', ''cat:emigration'', ''cat:nostalgia'', ''Пісні про еміґрацію'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_216961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_216961','На Україну повернусь!','Вступ.*

1.
Є у мене дім, одіж і авто,
Ранок, вечір, ніч, є вишневий сад.
Це у мене вже не візьме ніхто,
Як мої літа не вернуть назад.
Fm7
Тільки раптом задзвенить
Мого серця тятива,
Як почую хоч на мить
Українськії слова.

Приспів:
Fm7
На Україну повернусь
Через роки, через віки,
Устами вдячно притулюсь
До материнської руки.

2.
Сяду у літак, стріну земляків.
Поєднаємо всі свої жалі.
Ляже довгий шлях нам у край батьків,
І наздоженем, певно, журавлів.
Може, хліб черствіший тут,
Та душа враз ожива.
Бо фіалками цвітуть
Українськії слова.

Приспів. (x2)

3.
До свого гнізда полечу я знов,
Певно, там уже діти підросли.
А залишу тут віру і любов,
Може, назавжди повернусь колись.

Програш (на мелодію Приспіву).

Приспів. (x2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_216961_l1','pisniua_216961','YouTube','https://www.youtube.com/watch?v=36QgTqgfogo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2169797';
DELETE FROM song_versions WHERE song_id = 'pisniua_2169797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2169797';
DELETE FROM songs WHERE id = 'pisniua_2169797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2169797','Відчинилося життя','Музика: Леся Горова Слова: Леся Горова. Виконує: Леся Горова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Відчинилося життя
Для маленької людини,
Засвітилася у небі
Ще одна зоря,
Бо з''явилося на світ
Неповторне і єдине.
Вже йому належить
Сонце, небо і земля.

Приспів:
Засміялись оченята
І заплескали долоньки,
І забилось нове серце поміж нас.
Щось маленьке і незнане,
Щось єдине і кохане
Зустрічає сонце перший раз.

Серед ласки і тепла
Починається надія,
Серед квітів і дерев
Виростатиме дитя.
Ясне сонце дасть йому
Мужності і сили,
Синє небо подарує
Віру й почуття.

Приспів.

Хай дзвінкий дитячий сміх
Увірветься в ваші душі,
Хай симфонія любові
В душах тих луна.
Лиш тоді найбільшим святом
Стане день грядущий.
Лиш тоді у кожнім серці
Цвістиме весна.

Приспів.

Відчинилося життя
Для маленької людини,
Їй тепер належить
Сонце, небо і земля,
Небо і земля!..','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2169797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2169797','Відчинилося життя','Відчинилося життя
Для маленької людини,
Засвітилася у небі
Ще одна зоря,
Бо з''явилося на світ
Неповторне і єдине.
Вже йому належить
Сонце, небо і земля.

Приспів:
Засміялись оченята
І заплескали долоньки,
І забилось нове серце поміж нас.
Щось маленьке і незнане,
Щось єдине і кохане
Зустрічає сонце перший раз.

Серед ласки і тепла
Починається надія,
Серед квітів і дерев
Виростатиме дитя.
Ясне сонце дасть йому
Мужності і сили,
Синє небо подарує
Віру й почуття.

Приспів.

Хай дзвінкий дитячий сміх
Увірветься в ваші душі,
Хай симфонія любові
В душах тих луна.
Лиш тоді найбільшим святом
Стане день грядущий.
Лиш тоді у кожнім серці
Цвістиме весна.

Приспів.

Відчинилося життя
Для маленької людини,
Їй тепер належить
Сонце, небо і земля,
Небо і земля!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2169797_l1','pisniua_2169797','YouTube','https://www.youtube.com/watch?v=Nmt5ljlpfZI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2169797_l2','pisniua_2169797','YouTube','https://www.youtube.com/watch?v=oAMF4oJya-0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2169797_l3','pisniua_2169797','YouTube','https://www.youtube.com/watch?v=gOSG_oUi08Q','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2168971';
DELETE FROM song_versions WHERE song_id = 'pisniua_2168971';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2168971';
DELETE FROM songs WHERE id = 'pisniua_2168971';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2168971','Гайчи, тобі гайчи','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Гайчи, тобі гайчи,
Нема дома мамчи,
Пішла мамка в поле,
А ти спи, соколе.

Люляй  мені, люляй.
В єдно вічка стуляй,
Стуляй їх на спання,
Милий мій, соколя.

Усни мені, усни,
Великий вирости.
Великий, гарненький,
Мій братік маленький.','[''pisni.org.ua'', ''cat:huculski'', ''cat:kolyskovi'', ''Гуцульські пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2168971'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2168971','Гайчи, тобі гайчи','Гайчи, тобі гайчи,
Нема дома мамчи,
Пішла мамка в поле,
А ти спи, соколе.

Люляй  мені, люляй.
В єдно вічка стуляй,
Стуляй їх на спання,
Милий мій, соколя.

Усни мені, усни,
Великий вирости.
Великий, гарненький,
Мій братік маленький.');
DELETE FROM song_links WHERE song_id = 'pisniua_2170410';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170410';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170410';
DELETE FROM songs WHERE id = 'pisniua_2170410';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170410','Отворіться, царські ворота','Слова: о. І. Дуцько','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Отворіться, царські ворота,
Бо вже приходить Цар слави,
Вже зачинається жертва пресвята,
Служитель став до відправи,
Приносить Богу серця дар
За світ цілий і людську твар.

Помолімся щиро разом з ним
До Сотворителя свого,
Нехай молитва, як кадильний дим,
Взнесесь до неба самого.
О, Боже, голос наш прийми,
Змилосердися над людьми.    комп''ютерне відтворення (128 kbps)  (
комп''ютерне відтворення (128 kbps)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''Церковні пісні'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170410'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170410','Отворіться, царські ворота','Отворіться, царські ворота,
Бо вже приходить Цар слави,
Вже зачинається жертва пресвята,
Служитель став до відправи,
Приносить Богу серця дар
За світ цілий і людську твар.

Помолімся щиро разом з ним
До Сотворителя свого,
Нехай молитва, як кадильний дим,
Взнесесь до неба самого.
О, Боже, голос наш прийми,
Змилосердися над людьми.    комп''ютерне відтворення (128 kbps)  (
комп''ютерне відтворення (128 kbps)');
DELETE FROM song_links WHERE song_id = 'pisniua_2169512';
DELETE FROM song_versions WHERE song_id = 'pisniua_2169512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2169512';
DELETE FROM songs WHERE id = 'pisniua_2169512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2169512','Ой ну люлі, люлі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'Ой ну люлі, люлі,
Налетіли гулі,
Посідали та й на люлі.
Стали думать ще й гадать,
Чим дитину годувать:
Чи булками, чи медами,
Чи різками, чи дубцями?
Посідали гулі на воротях
У червоненьких та чоботях.
А я піду познімаю,
На ніженьки понадіваю.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2169512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2169512','Ой ну люлі, люлі','Ой ну люлі, люлі,
Налетіли гулі,
Посідали та й на люлі.
Стали думать ще й гадать,
Чим дитину годувать:
Чи булками, чи медами,
Чи різками, чи дубцями?
Посідали гулі на воротях
У червоненьких та чоботях.
А я піду познімаю,
На ніженьки понадіваю.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2169512_l1','pisniua_2169512','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2168394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2168394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2168394';
DELETE FROM songs WHERE id = 'pisniua_2168394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2168394','Ходить дрімота коло плота','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'Ходить дрімота коло плота,
А сон коло вікон.
Питається сон дрімоти:
- А де будем ночувати?
- Де хатина тепленька,
Де дитина маленька.
Ти ляжеш у ніжках,
А я ляжу в головах.
Ти будеш дрімати,
А я буду присипляти.
Щоб спало - не плакало,
Щоб росло - не боліло
На головоньку, на все тіло.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2168394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2168394','Ходить дрімота коло плота','Ходить дрімота коло плота,
А сон коло вікон.
Питається сон дрімоти:
- А де будем ночувати?
- Де хатина тепленька,
Де дитина маленька.
Ти ляжеш у ніжках,
А я ляжу в головах.
Ти будеш дрімати,
А я буду присипляти.
Щоб спало - не плакало,
Щоб росло - не боліло
На головоньку, на все тіло.');
DELETE FROM song_links WHERE song_id = 'pisniua_2169293';
DELETE FROM song_versions WHERE song_id = 'pisniua_2169293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2169293';
DELETE FROM songs WHERE id = 'pisniua_2169293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2169293','Сини мої','Музика: Василь Дунець Слова: Любов Мілевич. Виконує: Василь Дунець','uk','ukraine_1991',NULL,NULL,'www.vkontakte.ru',NULL,'Сини мої, ви, мов пшеничні зерна,
У світ бентежний рясно проросли.
Вже на шляху у вас колючі терни,
Тривогу в коси мамині вплели.

Приспів:
Змужніли сили ваші й голосочки:   |
Звабливий тенор, жартівливий бас. |
Милуюся і посміхаюсь мовчки,      |
Яке то щастя, що я маю вас!..     | (2)

Здається, вчора теплі колисанки
Я вам співав, як змовкли солов''ї,
Не сплю й тепер, буває, до світанку,
Все думаю про вас, сини мої.

Приспів.

Дорослі діти, школа за плечима,
Нема в дитинство ваше вороття,
І ось, онук мій з карими очима
Вже перші кроки робить у життя.

Приспів. (2)

Яке то щастя, що я маю вас!','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2169293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2169293','Сини мої','Сини мої, ви, мов пшеничні зерна,
У світ бентежний рясно проросли.
Вже на шляху у вас колючі терни,
Тривогу в коси мамині вплели.

Приспів:
Змужніли сили ваші й голосочки:   |
Звабливий тенор, жартівливий бас. |
Милуюся і посміхаюсь мовчки,      |
Яке то щастя, що я маю вас!..     | (2)

Здається, вчора теплі колисанки
Я вам співав, як змовкли солов''ї,
Не сплю й тепер, буває, до світанку,
Все думаю про вас, сини мої.

Приспів.

Дорослі діти, школа за плечима,
Нема в дитинство ваше вороття,
І ось, онук мій з карими очима
Вже перші кроки робить у життя.

Приспів. (2)

Яке то щастя, що я маю вас!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2169293_l1','pisniua_2169293','YouTube','https://www.youtube.com/watch?v=8KQIgydYA_U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2168697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2168697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2168697';
DELETE FROM songs WHERE id = 'pisniua_2168697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2168697','Ай цю, люлю, колишу тя','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'Ай цю, люлю, колишу тя,
Як ти заснеш, я лишу тя. (2)

Сама піду на роботу
Та вже прийду аж в суботу. (2)

Принесу ти калиночку
Та й затичу головочку. (2)

Калинонька буде цвісти,
А дитина буде рости. (2)

Калинонька ме впадати,
Дитинонька ме збирати. (2)','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2168697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2168697','Ай цю, люлю, колишу тя','Ай цю, люлю, колишу тя,
Як ти заснеш, я лишу тя. (2)

Сама піду на роботу
Та вже прийду аж в суботу. (2)

Принесу ти калиночку
Та й затичу головочку. (2)

Калинонька буде цвісти,
А дитина буде рости. (2)

Калинонька ме впадати,
Дитинонька ме збирати. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2170495';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170495';
DELETE FROM songs WHERE id = 'pisniua_2170495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170495','Ісусе, наша радосте','Слова: Й. Р.','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Ісусе, наша радосте,
До Тебе прибігаю
В терпіннях мойого життя     |
І руки простягаю.            | (2)

Дозволь, Ісусе преблагий,
У стіп Твоїх спочити.
Та весь тягар терпінь важких |
У жертві тут зложити.        | (2)

Ти ангелів святих пішли,
Щоби охороняли
Мене від зла, та берегли     |
Від всіх покус лукавих.      | (2)

У цім життю, Ісусе, дай
Усе з Тобою бути,
А в хвилі смерти вічний рай  |
У Тебе осягнути.             | (2)    комп''ютерне відтворення (128 kbps)  (','[''pisni.org.ua'', ''cat:christ'', ''Пісні до Ісуса Христа'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170495','Ісусе, наша радосте','Ісусе, наша радосте,
До Тебе прибігаю
В терпіннях мойого життя     |
І руки простягаю.            | (2)

Дозволь, Ісусе преблагий,
У стіп Твоїх спочити.
Та весь тягар терпінь важких |
У жертві тут зложити.        | (2)

Ти ангелів святих пішли,
Щоби охороняли
Мене від зла, та берегли     |
Від всіх покус лукавих.      | (2)

У цім життю, Ісусе, дай
Усе з Тобою бути,
А в хвилі смерти вічний рай  |
У Тебе осягнути.             | (2)    комп''ютерне відтворення (128 kbps)  (');
DELETE FROM song_links WHERE song_id = 'pisniua_2170563';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170563';
DELETE FROM songs WHERE id = 'pisniua_2170563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170563','Благослови, Боже','Слова: о. І. Дуцько','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Благослови, Боже, нам на Новий Рік!
Щоби був щасливий кожен чоловік!
Щоби нам в здоров''ю плили дні життя,
Щоби всі славили і любили Тя!

Сину Божий, Христе, зроджений для нас,
Дай нам для спасення зачати той час,
Щоби ми гріхів ся всяких стерегли,
В згоді і любові жити всі могли.

Благослови рік той, Мати Пресвята,
Щоби ся родили пшениці, жита,
Щоби ми не знали голоду, війни,
Від вогню і нужди нас охорони!

Так з тим Новим Роком Господа просім,
А Бог допоможе певно людям всім.
І Пречиста Мати вкраїнського краю,
Дасть нам вік щасливий і любов свою.','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170563'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170563','Благослови, Боже','Благослови, Боже, нам на Новий Рік!
Щоби був щасливий кожен чоловік!
Щоби нам в здоров''ю плили дні життя,
Щоби всі славили і любили Тя!

Сину Божий, Христе, зроджений для нас,
Дай нам для спасення зачати той час,
Щоби ми гріхів ся всяких стерегли,
В згоді і любові жити всі могли.

Благослови рік той, Мати Пресвята,
Щоби ся родили пшениці, жита,
Щоби ми не знали голоду, війни,
Від вогню і нужди нас охорони!

Так з тим Новим Роком Господа просім,
А Бог допоможе певно людям всім.
І Пречиста Мати вкраїнського краю,
Дасть нам вік щасливий і любов свою.');
DELETE FROM song_links WHERE song_id = 'pisniua_2170694';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170694';
DELETE FROM songs WHERE id = 'pisniua_2170694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170694','Прийде година','Слова: о. В. Стех','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Прийде година, труби заграють,
Відкриють гроби і всі узнають, і всі узнають,
Що хрест Христовий буде судити тих,             |
Що не вміли його носити, його носити.           | (2)

Відкриєсь небо, розпорхнуть хмари,
Надійде хвиля суду і кари, суду і кари.
Христос явиться, судити стане і в кожну душу,   |
І в серце гляне, і в серце гляне.               | (2)

Хто служив вірно на землі Богу,
Тоді получить заплату многу, заплату многу.
А грішник впаде в море розпуки,                 |
Піде до пекла на вічні муки, на вічні муки.     | (2)

Душе, ти знаєш: суд тя чекає!
Бог терпеливий—все тут прощає, все тут прощає.
Але по смерті, як будеш в блуді,                |
Згадай, що жде тя на Божім суді, на Божім суді? | (2)

Покайся щиро, а страсть Христова Тебе очистить.
Все будь готова! Все будь готова!
Стережись всеї грішної тіни,                    |
Бо дня не знаєш, ані години, ані години.        | (2)

А Ти, Пречиста Христова Мати,
В гріхах-прокляттю не дай вмирати, не дай вмирати.
Прийди на поміч в суду годину                   |
І збережи нас при Твоїм Сину, при Твоїм Сину.   | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170694','Прийде година','Прийде година, труби заграють,
Відкриють гроби і всі узнають, і всі узнають,
Що хрест Христовий буде судити тих,             |
Що не вміли його носити, його носити.           | (2)

Відкриєсь небо, розпорхнуть хмари,
Надійде хвиля суду і кари, суду і кари.
Христос явиться, судити стане і в кожну душу,   |
І в серце гляне, і в серце гляне.               | (2)

Хто служив вірно на землі Богу,
Тоді получить заплату многу, заплату многу.
А грішник впаде в море розпуки,                 |
Піде до пекла на вічні муки, на вічні муки.     | (2)

Душе, ти знаєш: суд тя чекає!
Бог терпеливий—все тут прощає, все тут прощає.
Але по смерті, як будеш в блуді,                |
Згадай, що жде тя на Божім суді, на Божім суді? | (2)

Покайся щиро, а страсть Христова Тебе очистить.
Все будь готова! Все будь готова!
Стережись всеї грішної тіни,                    |
Бо дня не знаєш, ані години, ані години.        | (2)

А Ти, Пречиста Христова Мати,
В гріхах-прокляттю не дай вмирати, не дай вмирати.
Прийди на поміч в суду годину                   |
І збережи нас при Твоїм Сину, при Твоїм Сину.   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2169665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2169665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2169665';
DELETE FROM songs WHERE id = 'pisniua_2169665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2169665','А-а-а-а, люлі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'А-а-а-а, люлі,
Прилетіли гулі,
Сіли на воротях
В червоних чоботях.
Ой ходіте, гулі,
Ой ходіть до хати
Дитину качати.
А гуля біленька,
Дитина маленька,
Посиплемо пшенички,
Поставимо водички.
Гуля наїсться,
Гуля нап''ється,
Здійметься на крильця,
Полетить у садочок
Їсти ягідочок.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2169665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2169665','А-а-а-а, люлі','А-а-а-а, люлі,
Прилетіли гулі,
Сіли на воротях
В червоних чоботях.
Ой ходіте, гулі,
Ой ходіть до хати
Дитину качати.
А гуля біленька,
Дитина маленька,
Посиплемо пшенички,
Поставимо водички.
Гуля наїсться,
Гуля нап''ється,
Здійметься на крильця,
Полетить у садочок
Їсти ягідочок.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2169665_l1','pisniua_2169665','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2170457';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170457';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170457';
DELETE FROM songs WHERE id = 'pisniua_2170457';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170457','Будь благословенний','Слова: о. В. Стех','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Будь благословенний,
Христе Боже наш,
Будь благословенний |
Все у кожний час!   | (2)

Хай благословить Тя
Небо і земля,
Хай несеся всюди    |
Хвала, честь Твоя.  | (2)

Хай Тя вихваляють
Рук Твоїх діла.
Славі бо Твоєї      |
Меж, границь нема.  | (2)

Ти єси безмежний,
Мовби океан.
Ти усім владієш,    |
Ти усього пан.      | (2)

Люблю Тя, Ісусе,
Вічна доброто,
Всіх святих любове, |
Неба красото!       | (2)

В Тобі я бажаю,
Боже мій, спочити.
І на вічні віки     |
В небі Тя славити!  | (2)    комп''ютерне відтворення  (','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170457'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170457','Будь благословенний','Будь благословенний,
Христе Боже наш,
Будь благословенний |
Все у кожний час!   | (2)

Хай благословить Тя
Небо і земля,
Хай несеся всюди    |
Хвала, честь Твоя.  | (2)

Хай Тя вихваляють
Рук Твоїх діла.
Славі бо Твоєї      |
Меж, границь нема.  | (2)

Ти єси безмежний,
Мовби океан.
Ти усім владієш,    |
Ти усього пан.      | (2)

Люблю Тя, Ісусе,
Вічна доброто,
Всіх святих любове, |
Неба красото!       | (2)

В Тобі я бажаю,
Боже мій, спочити.
І на вічні віки     |
В небі Тя славити!  | (2)    комп''ютерне відтворення  (');
DELETE FROM song_links WHERE song_id = 'pisniua_2170616';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170616';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170616';
DELETE FROM songs WHERE id = 'pisniua_2170616';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170616','Сонце світить','Слова: о. Й. Кишакевич','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Сонце світить з гір Ливану,
Сяє злотом в каплях рос,
Йде Хреститель до Йордану,
До Предтечі Спас Христос.
Грай пісню, Йордане,
Радуйся, Йоане,
Предтече Христа.

У йорданських хвилях чистих
Привітав Йоан Христа,
Світлом променів сріблистих
Блисла з облаків дуга.
Грай пісню, Йордане,
Радуйся, Йоане,
Предтече Христа.

І озвався з неба голос:
"Се мій любий серцю Син",
А Йоан склонивсь, мов колос,
Мов за ясним світлом дим,
Грай пісню, Йордане,
Радуйся, Йоане,
Предтече Христа.

Поклонімся й ми Христові
В сім святім величнім дни,
Він з безмежної любові
Охрестивсь, щоб нас спасти.
Грай пісню, Йордане,
Радуйся, Йоане,
Предтече Христа.','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''Церковні пісні'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170616'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170616','Сонце світить','Сонце світить з гір Ливану,
Сяє злотом в каплях рос,
Йде Хреститель до Йордану,
До Предтечі Спас Христос.
Грай пісню, Йордане,
Радуйся, Йоане,
Предтече Христа.

У йорданських хвилях чистих
Привітав Йоан Христа,
Світлом променів сріблистих
Блисла з облаків дуга.
Грай пісню, Йордане,
Радуйся, Йоане,
Предтече Христа.

І озвався з неба голос:
"Се мій любий серцю Син",
А Йоан склонивсь, мов колос,
Мов за ясним світлом дим,
Грай пісню, Йордане,
Радуйся, Йоане,
Предтече Христа.

Поклонімся й ми Христові
В сім святім величнім дни,
Він з безмежної любові
Охрестивсь, щоб нас спасти.
Грай пісню, Йордане,
Радуйся, Йоане,
Предтече Христа.');
DELETE FROM song_links WHERE song_id = 'pisniua_2170471';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170471';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170471';
DELETE FROM songs WHERE id = 'pisniua_2170471';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170471','Зробіть Му місце','Слова: о. В. Стех','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Зробіть Му місце, Господь сам з неба,
Чудно укритий під видом хліба,
Спаситель миру до вас вступає       |
І в серцях ваших трон свій ставляє. | (2)

Зі страхом Божим всі ся зближайте
І з вірою сильною днесь приступайте,
Прийміть до серця Царя живого,      |
Христа Ісуса, Бога Ісуса.           | (2)

Коли засяде в душах Цар слави,
Поклін віддайте Йому з любови.
І за це щастя Йому співайте,        |
І чистим серцем Го прославляйте.    | (2)

Цей хліб небесний скріпить вам сили,
Щобисьте Бога над все любили.
Щоб ви уміли свій хрест носити,     |
Чесно, побожно в світі тім жити.    | (2)

Хто з чистим серцем хліб цей приймає,
Цьому спаситель рай обіцяє.
Той хліб небесний - це чудні ліки,  |
Хто ним ся кормить жить ме навіки.  | (2)

Під видом хліба Спаса прийміте,
Його до серця всі пригорніте!
Хай в наших серцях Він все царствує |
І щедрі ласки всім нам дарує!       | (2)    комп''ютерне відтворення (128 kbps)  (','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christ'', ''Церковні пісні'', ''Пісні до Ісуса Христа'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170471'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170471','Зробіть Му місце','Зробіть Му місце, Господь сам з неба,
Чудно укритий під видом хліба,
Спаситель миру до вас вступає       |
І в серцях ваших трон свій ставляє. | (2)

Зі страхом Божим всі ся зближайте
І з вірою сильною днесь приступайте,
Прийміть до серця Царя живого,      |
Христа Ісуса, Бога Ісуса.           | (2)

Коли засяде в душах Цар слави,
Поклін віддайте Йому з любови.
І за це щастя Йому співайте,        |
І чистим серцем Го прославляйте.    | (2)

Цей хліб небесний скріпить вам сили,
Щобисьте Бога над все любили.
Щоб ви уміли свій хрест носити,     |
Чесно, побожно в світі тім жити.    | (2)

Хто з чистим серцем хліб цей приймає,
Цьому спаситель рай обіцяє.
Той хліб небесний - це чудні ліки,  |
Хто ним ся кормить жить ме навіки.  | (2)

Під видом хліба Спаса прийміте,
Його до серця всі пригорніте!
Хай в наших серцях Він все царствує |
І щедрі ласки всім нам дарує!       | (2)    комп''ютерне відтворення (128 kbps)  (');
DELETE FROM song_links WHERE song_id = 'pisniua_2170624';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170624';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170624';
DELETE FROM songs WHERE id = 'pisniua_2170624';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170624','Ти, Йордане, приготовися','Слова: о. В. Стех','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Ти, Йордане, приготовися!
Ти, Йоане скоро спішися
Діви Марії хрестити Сина,       |
Бога Слова в Тройці єдина       |
Во річних, во річних струях.    | (2)

Облаки, глас свій спустіте,
Йоану се возвістіте.
Най він стане на Йордані        |
І положить свої долоні          |
На главі, на главі Христа.      | (2)

Архангели і Херувими
А і з ними і Серафими
Боговійно всі предстояли,       |
Хрещенню Творця вслугували,     |
Як хрестив, як хрестив Йоан.    | (2)

Небеса днесь ся відчиняють
І Святого Духа вітають.
Він бо у виді голубинім         |
З неба злітає над Божим Сином   |
При Його, при Його хресті.      | (2)

Що за дар, Христе, Царю, Владико,
Дали Тобі такий великий?
Що Ти на водах днесь ся явив,   |
Своїм хрещенням нас відродив    |
І собі, і собі з''єднав.         | (2)

Глянув Отець із небеси:
Ти возлюблений Син Мій єси!
Всі Йому, люди, послух дайте    |
І безнастанно прославляйте,     |
Що ся днесь, що ся днесь явив.  | (2)

І ми нині просім Йоана,
Що Йому власть хрестити дана,
Най він упросить Спаса і Бога,  |
Щоб отверта була дорога         |
Нам грішним, нам грішним у рай. | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''Церковні пісні'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170624'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170624','Ти, Йордане, приготовися','Ти, Йордане, приготовися!
Ти, Йоане скоро спішися
Діви Марії хрестити Сина,       |
Бога Слова в Тройці єдина       |
Во річних, во річних струях.    | (2)

Облаки, глас свій спустіте,
Йоану се возвістіте.
Най він стане на Йордані        |
І положить свої долоні          |
На главі, на главі Христа.      | (2)

Архангели і Херувими
А і з ними і Серафими
Боговійно всі предстояли,       |
Хрещенню Творця вслугували,     |
Як хрестив, як хрестив Йоан.    | (2)

Небеса днесь ся відчиняють
І Святого Духа вітають.
Він бо у виді голубинім         |
З неба злітає над Божим Сином   |
При Його, при Його хресті.      | (2)

Що за дар, Христе, Царю, Владико,
Дали Тобі такий великий?
Що Ти на водах днесь ся явив,   |
Своїм хрещенням нас відродив    |
І собі, і собі з''єднав.         | (2)

Глянув Отець із небеси:
Ти возлюблений Син Мій єси!
Всі Йому, люди, послух дайте    |
І безнастанно прославляйте,     |
Що ся днесь, що ся днесь явив.  | (2)

І ми нині просім Йоана,
Що Йому власть хрестити дана,
Най він упросить Спаса і Бога,  |
Щоб отверта була дорога         |
Нам грішним, нам грішним у рай. | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2170624_l1','pisniua_2170624','YouTube','https://www.youtube.com/watch?v=btaEJsDGfKE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2170756';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170756';
DELETE FROM songs WHERE id = 'pisniua_2170756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170756','На Голготі','Слова: о. І. Дуцько','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'На Голготі вид жорстокий:
Три хрести стоять високі -
Два з розбійниками злими,    |
Третій з Господом між ними.  | (2)

На хресті Христос розп''ятий,
Під хрестом Пречиста Мати
Враз з Йоаном біль страждає, |
Свого Сина вже прощає.       | (2)

Вже Син Божий умирає,
Ще за грішників благає:
Не згадай їм, Отче, того —   |
Віддаю Ти Духа мого.         | (2)

Світ цілий покрився тьмою,
Кров з ребра тече з водою
І завіт старий роздертий —   |
Знак це Божої є смерти.      | (2)

О, страдальна Божа Мати!
Нам в гріхах не дай вмирати,
Смерти як прийде година,     |
Ти прийми нас так, як Сина.  | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:strasni'', ''Церковні пісні'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170756','На Голготі','На Голготі вид жорстокий:
Три хрести стоять високі -
Два з розбійниками злими,    |
Третій з Господом між ними.  | (2)

На хресті Христос розп''ятий,
Під хрестом Пречиста Мати
Враз з Йоаном біль страждає, |
Свого Сина вже прощає.       | (2)

Вже Син Божий умирає,
Ще за грішників благає:
Не згадай їм, Отче, того —   |
Віддаю Ти Духа мого.         | (2)

Світ цілий покрився тьмою,
Кров з ребра тече з водою
І завіт старий роздертий —   |
Знак це Божої є смерти.      | (2)

О, страдальна Божа Мати!
Нам в гріхах не дай вмирати,
Смерти як прийде година,     |
Ти прийми нас так, як Сина.  | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2170158';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170158';
DELETE FROM songs WHERE id = 'pisniua_2170158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170158','Не може заснути малюк!','Музика: Леся Горова Слова: Леся Горова','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Не може заснути малюк,
Поки зайчик його не засне!
Та поки він казку свою
На вушко йому не шепне.

Не може заснути малюк,
Бо ведмедик його ще не спить!
Бо він забагато з''їв меду,
І зубчик у нього болить!

Не може заснути малюк,
На щоці у ляльки сльоза!
Бо ляльку сьогодні вкусила
На прогулянці в парку оса!

Треба її лікувать
Та погладити там, де болить,
Так легше буде їй спати
І біль притихне умить.

Не може заснути малюк,
Щось сон йому не йде...
Він просто дуже чекає,
Поки мама в кімнату зайде!

Поцілує у щічку його,
Мальоху дитятка свого,
Колискова в кімнаті звучить,
Ось, тепер малюк уже спить...','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170158'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170158','Не може заснути малюк!','Не може заснути малюк,
Поки зайчик його не засне!
Та поки він казку свою
На вушко йому не шепне.

Не може заснути малюк,
Бо ведмедик його ще не спить!
Бо він забагато з''їв меду,
І зубчик у нього болить!

Не може заснути малюк,
На щоці у ляльки сльоза!
Бо ляльку сьогодні вкусила
На прогулянці в парку оса!

Треба її лікувать
Та погладити там, де болить,
Так легше буде їй спати
І біль притихне умить.

Не може заснути малюк,
Щось сон йому не йде...
Він просто дуже чекає,
Поки мама в кімнату зайде!

Поцілує у щічку його,
Мальоху дитятка свого,
Колискова в кімнаті звучить,
Ось, тепер малюк уже спить...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2170158_l1','pisniua_2170158','YouTube','https://www.youtube.com/watch?v=amU-RzkJhqo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2170716';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170716';
DELETE FROM songs WHERE id = 'pisniua_2170716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170716','Глянь, душе грішна',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Глянь, душе грішна,
Ось, пред всім людом
Судить Ісуса
Пилат своїм судом.
Хоч Го святим зве    |
І руки вмиває,       |
Кров неповинну       |
На смерть осуждає.   | (2)

Хрест вже готовий,
О, Боже мій милий!
Чи го донести
Будеш Ти мав сили?
Це ж гріхи наші,     |
Що міри не мають,    |
Хрест цей тяженький  |
На Тебе вкладають!   | (2)

Плачмо, о, плачмо
І биймося в груди,
Хай для Ісуса
Хоч це пільгов буде,
Що з жалем щирим,    |
В покуті, з сльозами |
Хрест наш несемо     |
Ісуса слідами.       | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:strasni'', ''Церковні пісні'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170716','Глянь, душе грішна','Глянь, душе грішна,
Ось, пред всім людом
Судить Ісуса
Пилат своїм судом.
Хоч Го святим зве    |
І руки вмиває,       |
Кров неповинну       |
На смерть осуждає.   | (2)

Хрест вже готовий,
О, Боже мій милий!
Чи го донести
Будеш Ти мав сили?
Це ж гріхи наші,     |
Що міри не мають,    |
Хрест цей тяженький  |
На Тебе вкладають!   | (2)

Плачмо, о, плачмо
І биймося в груди,
Хай для Ісуса
Хоч це пільгов буде,
Що з жалем щирим,    |
В покуті, з сльозами |
Хрест наш несемо     |
Ісуса слідами.       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2170716_l1','pisniua_2170716','YouTube','https://www.youtube.com/watch?v=QkSznqY1xuE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2170777';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170777';
DELETE FROM songs WHERE id = 'pisniua_2170777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170777','О, предвічний Боже','Слова: о. В. Стех','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'О, предвічний Боже, відколи живу
Я Тебе гнівити не перестаю.               | (2)

Ти свідчиш мні ласки і любов Свою:
Я Тобі за теє злобою плачу.               | (2)

Ти за мене, Спасе, Кров Свою проляв,
Я нещасний грішник ще її топтав.          | (2)

Ти до мене кликав, щоб я не грішив,
Я не слухав цього, все безбожно жив.      | (2)

Як же довго, Боже, будеш мні терпів?
Чи безкарно грішник буде все броїв?       | (2)

З уст Твоїх, Ісусе, добре знаю це,
Що безбожних кара певно не мине.          | (2)

Грішник там по смерті вчує страшний звук:
Проч іди, проклятий, в пекло вічних мук.  | (2)

Проч іди, проклятий, Ти мя зневажав!
Ти служив мамоні, а мене не знав.         | (2)

О, не дай, Ісусе, прошу, молю Тя,
Щоб на мені сповнилась страшна та судьба. | (2)

Жалую і каюсь за гріхи мої:
Боже милосердний, о, прости мені!         | (2)

Я від нині хочу все Тобі служить,
А по смерті в небі вічно Тя славить!      | (2)    комп''ютерне відтворення  (','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:strasni'', ''Церковні пісні'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170777','О, предвічний Боже','О, предвічний Боже, відколи живу
Я Тебе гнівити не перестаю.               | (2)

Ти свідчиш мні ласки і любов Свою:
Я Тобі за теє злобою плачу.               | (2)

Ти за мене, Спасе, Кров Свою проляв,
Я нещасний грішник ще її топтав.          | (2)

Ти до мене кликав, щоб я не грішив,
Я не слухав цього, все безбожно жив.      | (2)

Як же довго, Боже, будеш мні терпів?
Чи безкарно грішник буде все броїв?       | (2)

З уст Твоїх, Ісусе, добре знаю це,
Що безбожних кара певно не мине.          | (2)

Грішник там по смерті вчує страшний звук:
Проч іди, проклятий, в пекло вічних мук.  | (2)

Проч іди, проклятий, Ти мя зневажав!
Ти служив мамоні, а мене не знав.         | (2)

О, не дай, Ісусе, прошу, молю Тя,
Щоб на мені сповнилась страшна та судьба. | (2)

Жалую і каюсь за гріхи мої:
Боже милосердний, о, прости мені!         | (2)

Я від нині хочу все Тобі служить,
А по смерті в небі вічно Тя славить!      | (2)    комп''ютерне відтворення  (');
DELETE FROM song_links WHERE song_id = 'pisniua_2171012';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171012';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171012';
DELETE FROM songs WHERE id = 'pisniua_2171012';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171012','Христос воскрес, Боже сонце!','Слова: о. І. Дуцько','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Христос воскрес! Христос воскрес!
Боже сонце засіяло,
Темні хмари розігнало,
Всю вселенну огріває
І нове життя вливає
Світлом Божим із небес:
Христос воскрес! Христос воскрес!

Христос воскрес, Христос воскрес!
Радуйся, о Божа Мати,
Діво чиста в благодаті,
Бо весела днесь новина
Про Ісуса Твого Сина
Каже ангел із небес:
Христос воскрес! Христос воскрес!

Христос воскрес, Христос воскрес!
Мати Божа вість приймає,
Свого Сина вижидає,
Жде потіхи милой в болю
Та вітає щасну долю,
Повтаряє серед слез:
Христос воскрес, Христос воскрес!

Христос воскрес, Христос воскрес!
Мертві з гробу повставали,
Хоч давно вже повмирали,
Оживають з Богом нині
Та розказують родині
І на світ голосять весь:
Христос воскрес, Христос воскрес!

Христос воскрес, Христос воскрес!
Поспішають три Марії
Рано з миром в тій надії,
Що Ісуса намирують,
Но при гробі голос чують:
Сталось чудо всіх чудес —
Христос воскрес, Христос воскрес!

Христос воскрес, Христос воскрес!
Ученики не пізнали
З ким в дорозі розмовляли,
Але прийшли до Емауса,
Видять Господа Ісуса,
Видять чудо всіх чудес:
Христос воскрес, Христос воскрес!

Христос воскрес, Христос воскрес!
Господь явно прославився,
Всім апостолам явився,
До Томи сам приступає,
Хресні рани отвирає,
Каже: вір, Томо, від днесь:
Христос воскрес, Христос воскрес!

Христос воскрес, Христос воскрес!
Церков Божа мир приносить,
Воскресення мир голосить,
Бога Спаса величає
І воскресшу піснь співає,
Пісню Божу із небес:
Христос воскрес, Христос воскрес!','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:voskresni'', ''Церковні пісні'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171012'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171012','Христос воскрес, Боже сонце!','Христос воскрес! Христос воскрес!
Боже сонце засіяло,
Темні хмари розігнало,
Всю вселенну огріває
І нове життя вливає
Світлом Божим із небес:
Христос воскрес! Христос воскрес!

Христос воскрес, Христос воскрес!
Радуйся, о Божа Мати,
Діво чиста в благодаті,
Бо весела днесь новина
Про Ісуса Твого Сина
Каже ангел із небес:
Христос воскрес! Христос воскрес!

Христос воскрес, Христос воскрес!
Мати Божа вість приймає,
Свого Сина вижидає,
Жде потіхи милой в болю
Та вітає щасну долю,
Повтаряє серед слез:
Христос воскрес, Христос воскрес!

Христос воскрес, Христос воскрес!
Мертві з гробу повставали,
Хоч давно вже повмирали,
Оживають з Богом нині
Та розказують родині
І на світ голосять весь:
Христос воскрес, Христос воскрес!

Христос воскрес, Христос воскрес!
Поспішають три Марії
Рано з миром в тій надії,
Що Ісуса намирують,
Но при гробі голос чують:
Сталось чудо всіх чудес —
Христос воскрес, Христос воскрес!

Христос воскрес, Христос воскрес!
Ученики не пізнали
З ким в дорозі розмовляли,
Але прийшли до Емауса,
Видять Господа Ісуса,
Видять чудо всіх чудес:
Христос воскрес, Христос воскрес!

Христос воскрес, Христос воскрес!
Господь явно прославився,
Всім апостолам явився,
До Томи сам приступає,
Хресні рани отвирає,
Каже: вір, Томо, від днесь:
Христос воскрес, Христос воскрес!

Христос воскрес, Христос воскрес!
Церков Божа мир приносить,
Воскресення мир голосить,
Бога Спаса величає
І воскресшу піснь співає,
Пісню Божу із небес:
Христос воскрес, Христос воскрес!');
DELETE FROM song_links WHERE song_id = 'pisniua_2170993';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170993';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170993';
DELETE FROM songs WHERE id = 'pisniua_2170993';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170993','Христос воскрес!',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Христос воскрес!
Христос воскрес!

Христос воскрес із мертвих!

Смертію, смертію
Смерть поправ,
Смертію, смертію
Смерть поправ.

І сущим во гробіх,
Во гробіх
Живот,
Живот дарував.    Демо','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''cat:voskresni'', ''Церковні пісні'', ''Пісні на християнську тематику'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170993'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170993','Христос воскрес!','Христос воскрес!
Христос воскрес!

Христос воскрес із мертвих!

Смертію, смертію
Смерть поправ,
Смертію, смертію
Смерть поправ.

І сущим во гробіх,
Во гробіх
Живот,
Живот дарував.    Демо');
DELETE FROM song_links WHERE song_id = 'pisniua_2170798';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170798';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170798';
DELETE FROM songs WHERE id = 'pisniua_2170798';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170798','Як на своє життя погляну',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Як на своє життя погляну,
Заливатись сльозами стану,
Жалю пекучими сльозами
Над моїми всіма гріхами.

Мої кроки не йшли до Бога,
В гріхах була моя дорога,
Я впадав в сумнів і зневіру,
Занехав Бога, святу віру.

Я про земські лиш втіхи дбаю,
А про вічність все забуваю.
Що ж нещасний буду робити,
Як Бог прийде мене судити?

Світ облуди був мені паном,
Вірив я намовам, обманам,
Від гріха брудними устами
Ближніх гнав у пропасті-ями.

Христе, до Тебе в цю хвилину
Іду, як Марія Магдалина,
З миром приношу я амфори
Жалю, каяття і покори.','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:strasni'', ''Церковні пісні'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170798'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170798','Як на своє життя погляну','Як на своє життя погляну,
Заливатись сльозами стану,
Жалю пекучими сльозами
Над моїми всіма гріхами.

Мої кроки не йшли до Бога,
В гріхах була моя дорога,
Я впадав в сумнів і зневіру,
Занехав Бога, святу віру.

Я про земські лиш втіхи дбаю,
А про вічність все забуваю.
Що ж нещасний буду робити,
Як Бог прийде мене судити?

Світ облуди був мені паном,
Вірив я намовам, обманам,
Від гріха брудними устами
Ближніх гнав у пропасті-ями.

Христе, до Тебе в цю хвилину
Іду, як Марія Магдалина,
З миром приношу я амфори
Жалю, каяття і покори.');
DELETE FROM song_links WHERE song_id = 'pisniua_2170920';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170920';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170920';
DELETE FROM songs WHERE id = 'pisniua_2170920';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170920','Хресту Твоєму',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Хресту Твоєму, Спасе Владико,
Поклін, честь, славу складаєм всі,
Страсть Твою славим, Боже, велику, |
І многі муки, рани святі.          | (2)

Хресту Твоєму, Спасе Владико,
Від нас лиш слава і честь одна:
І воскресення славим велике,       |
Що тим збудивши світ до життя.     | (2)

Хресту Твоєму, Спасе Владико,
Кланятись будем вовік-віков:
3 поклоном милість Твою велику     |
Славити будем Твою любов.          | (2)

Хресту Твоєму, Спасе Владико,
Дозволь зносити і честь тоді,
Як оглядати стануть велику         |
У небі славу діти Твої!            | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:strasni'', ''Церковні пісні'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2170920'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2170920','Хресту Твоєму','Хресту Твоєму, Спасе Владико,
Поклін, честь, славу складаєм всі,
Страсть Твою славим, Боже, велику, |
І многі муки, рани святі.          | (2)

Хресту Твоєму, Спасе Владико,
Від нас лиш слава і честь одна:
І воскресення славим велике,       |
Що тим збудивши світ до життя.     | (2)

Хресту Твоєму, Спасе Владико,
Кланятись будем вовік-віков:
3 поклоном милість Твою велику     |
Славити будем Твою любов.          | (2)

Хресту Твоєму, Спасе Владико,
Дозволь зносити і честь тоді,
Як оглядати стануть велику         |
У небі славу діти Твої!            | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2171055';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171055';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171055';
DELETE FROM songs WHERE id = 'pisniua_2171055';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171055','Христос воскрес! Під неба звід!','Слова: о. Й. Кишакевич','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Христос воскрес! Під неба звід
Пливе гомін соток пісень,
Се празник в нас, великий день,
Кінець журби, недолі, бід:
Христос воскрес! Христос воскрес!
Христос воскрес! Христос воскрес!

Христос воскрес! Радіє світ,
Бо вже прийшла весна життя,
Пропала в вік вже власть гріха,
Душевна тьма і смерті слід:
Христос воскрес! Христос воскрес!
Христос воскрес! Христос воскрес!

Христос воскрес! Вже грає дзвін,
З дзвіниць гуде гук голосний,
До церкви йде гурток людей,
Христові честь несе поклін:
Христос воскрес! Христос воскрес!
Христос воскрес! Христос воскрес!

Христос воскрес! Зближаєсь час,
Що по зимі тьми і гріха
Прийде свята життя весна —
Воскресний день святий для нас:
Христос воскрес! Христос воскрес!
Христос воскрес! Христос воскрес!','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:voskresni'', ''Церковні пісні'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171055'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171055','Христос воскрес! Під неба звід!','Христос воскрес! Під неба звід
Пливе гомін соток пісень,
Се празник в нас, великий день,
Кінець журби, недолі, бід:
Христос воскрес! Христос воскрес!
Христос воскрес! Христос воскрес!

Христос воскрес! Радіє світ,
Бо вже прийшла весна життя,
Пропала в вік вже власть гріха,
Душевна тьма і смерті слід:
Христос воскрес! Христос воскрес!
Христос воскрес! Христос воскрес!

Христос воскрес! Вже грає дзвін,
З дзвіниць гуде гук голосний,
До церкви йде гурток людей,
Христові честь несе поклін:
Христос воскрес! Христос воскрес!
Христос воскрес! Христос воскрес!

Христос воскрес! Зближаєсь час,
Що по зимі тьми і гріха
Прийде свята життя весна —
Воскресний день святий для нас:
Христос воскрес! Христос воскрес!
Христос воскрес! Христос воскрес!');
DELETE FROM song_links WHERE song_id = 'pisniua_2171165';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171165';
DELETE FROM songs WHERE id = 'pisniua_2171165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171165','Вси Тя хори',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Вси Тя хори, небес двори,
Тройце, славлять.

Приспів:
Свят, свят, свят,
Господь Бог!
Свят, свят, свят,
Христос Бог!
Свят, свят, свят,
Дух Святий, Саваот!

Вси Тя Сили возносили
І возносять.

Приспів.

Херувими, Серафими
Воскликають.

Приспів.

Архангели і Ангели
Величають.

Приспів.

Вси Тя гласи
Во вся часи воспівають.

Приспів.','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171165','Вси Тя хори','Вси Тя хори, небес двори,
Тройце, славлять.

Приспів:
Свят, свят, свят,
Господь Бог!
Свят, свят, свят,
Христос Бог!
Свят, свят, свят,
Дух Святий, Саваот!

Вси Тя Сили возносили
І возносять.

Приспів.

Херувими, Серафими
Воскликають.

Приспів.

Архангели і Ангели
Величають.

Приспів.

Вси Тя гласи
Во вся часи воспівають.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2171091';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171091';
DELETE FROM songs WHERE id = 'pisniua_2171091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171091','На гору днесь Єлеонську',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'На гору днесь Єлеонську
Христос Син Божий зійшов,
З неї в небо він вознісся, |
Весь світ поблагословив.   | (2)

Вас нині вже лишаю -
Ученикам так сказав
І на радість Свого Духа    |
Їм зіслати обіцяв.         | (2)

Ви ж трудіться над спасениям,
Сей лишаю вам завіт,
Научати всі народи         |
В ім''я моє поспішіть.      | (2)

Так оставив Христос землю,
Вернув з неї до небес,
Йому небо честь віддало,   |
Апостоли і мир весь.       | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christ'', ''Церковні пісні'', ''Пісні до Ісуса Христа'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171091','На гору днесь Єлеонську','На гору днесь Єлеонську
Христос Син Божий зійшов,
З неї в небо він вознісся, |
Весь світ поблагословив.   | (2)

Вас нині вже лишаю -
Ученикам так сказав
І на радість Свого Духа    |
Їм зіслати обіцяв.         | (2)

Ви ж трудіться над спасениям,
Сей лишаю вам завіт,
Научати всі народи         |
В ім''я моє поспішіть.      | (2)

Так оставив Христос землю,
Вернув з неї до небес,
Йому небо честь віддало,   |
Апостоли і мир весь.       | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2171292';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171292';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171292';
DELETE FROM songs WHERE id = 'pisniua_2171292';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171292','Надії зірниця','Музика: А. Гнатишин Слова: о. В. Б. Мендрунь','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Усі християни,
Забудьте про рани,
Вітаймо чудесну
Царицю небесну.

Приспів:
Нам заслона, оборона,
Ось, Вона на троні
В горному Сіоні
Руки підносить,
Господа просить:
Сину мій, Сину коханий,
Розв''яжи гріхів кайдани,
Визволи всіх!

І там, в Царгороді,
І в нашім народі
Ти — миру світлиця,
Надії зірниця.

Приспів.

У пробну годину
Вкраїнську родину
Окрилиш Ти зором —
Небесним покровом.

Приспів.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171292'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171292','Надії зірниця','Усі християни,
Забудьте про рани,
Вітаймо чудесну
Царицю небесну.

Приспів:
Нам заслона, оборона,
Ось, Вона на троні
В горному Сіоні
Руки підносить,
Господа просить:
Сину мій, Сину коханий,
Розв''яжи гріхів кайдани,
Визволи всіх!

І там, в Царгороді,
І в нашім народі
Ти — миру світлиця,
Надії зірниця.

Приспів.

У пробну годину
Вкраїнську родину
Окрилиш Ти зором —
Небесним покровом.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2171318';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171318';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171318';
DELETE FROM songs WHERE id = 'pisniua_2171318';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171318','Царице наша','Слова: о. Й. Кишакевич','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Царице наша і Маріє,
Радосте, втіхо і надіє,
Глянь на нас любо ясним зором,
Покрий від зла нас омофором.     | (2)

За нами встався в свого Сина,
Бо Ти заступниця єдина,
Ти поміч, втіха, осолода,
На кого прийде зло, негода.      | (2)

Ніхто не чув, щоб хто у Тебе,
Просячи помочі в потребі,
В Тебе, Пречиста, одної
Не дізнав ласки пресвятої.       | (2)

В святій любові, в щирій вірі
До Тебе йдем в дні горя сірі
І Тебе просим і благаєм:
3милуйсь над нашим рідним краєм. | (2)

Твоїм ласкавим, ясним зором
І всемогучим омофором
Покрий в день горя і руїни
Весь твій люд бідний України!    | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:do-bohorodyci'', ''Церковні пісні'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171318'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171318','Царице наша','Царице наша і Маріє,
Радосте, втіхо і надіє,
Глянь на нас любо ясним зором,
Покрий від зла нас омофором.     | (2)

За нами встався в свого Сина,
Бо Ти заступниця єдина,
Ти поміч, втіха, осолода,
На кого прийде зло, негода.      | (2)

Ніхто не чув, щоб хто у Тебе,
Просячи помочі в потребі,
В Тебе, Пречиста, одної
Не дізнав ласки пресвятої.       | (2)

В святій любові, в щирій вірі
До Тебе йдем в дні горя сірі
І Тебе просим і благаєм:
3милуйсь над нашим рідним краєм. | (2)

Твоїм ласкавим, ясним зором
І всемогучим омофором
Покрий в день горя і руїни
Весь твій люд бідний України!    | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2171354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171354';
DELETE FROM songs WHERE id = 'pisniua_2171354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171354','Славний день нині','Слова: о. І. К.','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Славний день нині в щасній годині
Всіх вітає, всіх нас, всіх нас вітає,
Блаженством наповняє.
Діва Марія, світу надія,
В церкву заходить, в церкву заходить
І ту осідок творить.

Тут, щоб молитись, завжди служити
Нашому Богу, Богу, в Тройці одному.
Чиста Діво, честь Тобі!
З неба злітають, Діві співають
Пісні прекрасні анголи ясні:
"Діво, неба Царице".

Троне наш вишній, цвіте розкішний
Світу спасіння, світу наше моління:
Чиста Діво, честь Тобі!
В вінцях дівчата вийшли стрічати,
Свічі палають, Діву вітають,
Чисту, Божу невісту.

Божу обранку, дану в дарунку,
Радо, щиро в храмі Її вітають,
Чисту Божу Дівицю.
І слуга Божий, пастир він гожий,
Сам Захарія йде до Марії
І в покорі голосить:

У цій годині Господня нині
Ласка з неба, ласка для нас засяла,
До нас завітала.
Люди, співайте, щиро вітайте
Нині Вседіву, чисту лелію,
Ясну зорю пресвяту.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171354','Славний день нині','Славний день нині в щасній годині
Всіх вітає, всіх нас, всіх нас вітає,
Блаженством наповняє.
Діва Марія, світу надія,
В церкву заходить, в церкву заходить
І ту осідок творить.

Тут, щоб молитись, завжди служити
Нашому Богу, Богу, в Тройці одному.
Чиста Діво, честь Тобі!
З неба злітають, Діві співають
Пісні прекрасні анголи ясні:
"Діво, неба Царице".

Троне наш вишній, цвіте розкішний
Світу спасіння, світу наше моління:
Чиста Діво, честь Тобі!
В вінцях дівчата вийшли стрічати,
Свічі палають, Діву вітають,
Чисту, Божу невісту.

Божу обранку, дану в дарунку,
Радо, щиро в храмі Її вітають,
Чисту Божу Дівицю.
І слуга Божий, пастир він гожий,
Сам Захарія йде до Марії
І в покорі голосить:

У цій годині Господня нині
Ласка з неба, ласка для нас засяла,
До нас завітала.
Люди, співайте, щиро вітайте
Нині Вседіву, чисту лелію,
Ясну зорю пресвяту.');
DELETE FROM song_links WHERE song_id = 'pisniua_2171394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171394';
DELETE FROM songs WHERE id = 'pisniua_2171394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171394','Тобі Ангел, Маріє, об''явив',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Тобі Ангел, Маріє, об''явив,
Що породиш Бога - Слово.

Тож із радістю голосим:
Чиста, чиста, чиста.

Діво Богородице,
Радуйся, радуйся!

Мати благодати,
Господь з Тобою!','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171394','Тобі Ангел, Маріє, об''явив','Тобі Ангел, Маріє, об''явив,
Що породиш Бога - Слово.

Тож із радістю голосим:
Чиста, чиста, чиста.

Діво Богородице,
Радуйся, радуйся!

Мати благодати,
Господь з Тобою!');
DELETE FROM song_links WHERE song_id = 'pisniua_2171379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171379';
DELETE FROM songs WHERE id = 'pisniua_2171379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171379','Радуйся, світе','Слова: І. Г.','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Радуйся, світе! Ликуйте нині
Земле і небо, і вся вселенна,
Бо тайни повна зірниця денна
Вже засіяла.
Облаки синім золотом ткає,          |
Тривожить пекло і покоряє.          |
Радосте, радість, як тебе звати,    |
Святосте, святість, Маріє Мати.     | (2)

Невинна, чиста, чудно зачата,
Пренепорочна! Величним хором
Лучімся дружно з небесним двором,
Хай вся вселенна в радість багата
Поклін приносить — славу голосить   |
Тій, котру небо днесь превозносить! |
О, повна ласки і благодати,         |
Як небо чиста — радуйся Мати!       | (2)

Світ невечерний, що просвічає
З висоти всходу всіх в тьмі сидячих
І в сіні смертній, і в грісі сплячих,
Сам Христос Бог наш Тя величає,
Мольб Твоїх ради — прощає зради     |
І не поскупить грішним відради!     |
Щоб лиш могли ми все величати       |
Тебе, Пречиста Діво і Мати!         | (2)','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171379','Радуйся, світе','Радуйся, світе! Ликуйте нині
Земле і небо, і вся вселенна,
Бо тайни повна зірниця денна
Вже засіяла.
Облаки синім золотом ткає,          |
Тривожить пекло і покоряє.          |
Радосте, радість, як тебе звати,    |
Святосте, святість, Маріє Мати.     | (2)

Невинна, чиста, чудно зачата,
Пренепорочна! Величним хором
Лучімся дружно з небесним двором,
Хай вся вселенна в радість багата
Поклін приносить — славу голосить   |
Тій, котру небо днесь превозносить! |
О, повна ласки і благодати,         |
Як небо чиста — радуйся Мати!       | (2)

Світ невечерний, що просвічає
З висоти всходу всіх в тьмі сидячих
І в сіні смертній, і в грісі сплячих,
Сам Христос Бог наш Тя величає,
Мольб Твоїх ради — прощає зради     |
І не поскупить грішним відради!     |
Щоб лиш могли ми все величати       |
Тебе, Пречиста Діво і Мати!         | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_21717';
DELETE FROM song_versions WHERE song_id = 'pisniua_21717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_21717';
DELETE FROM songs WHERE id = 'pisniua_21717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_21717','А вже весна скресла','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'А вже весна скресла. Збірник гаївок. Львів, 2003.',NULL,'Дівчата:
А вже весна скресла,
Що ти нам принесла?   (2)
А я вам принесла
Парубоцьку красу.   (2)
Парубоцька краса
В болоті мочена.   (2)
В болоті мочена,
У калюжі прана.   (2)
У калюжі прана,
На терню сушена.   (2)
На терню сушена,
У хліві схована.   (2)
Хлопці:
А весна-весною.
А дівка-дівкою.   (2)
Ходить, світом нудить,
Спідницею крутить.   (2)
Крутить, щоб видати:
Хочеться віддати.   (2)
Дома не сидіти,
В дівках не сивіти.   (2)
Покрить головоньку,
Не буть дівчиноньков.   (2)
Дранов нагавицев,
Стати молодицев.   (2)    Мелодія для 1 і 2 голосу','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_21717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_21717','А вже весна скресла','Дівчата:
А вже весна скресла,
Що ти нам принесла?   (2)
А я вам принесла
Парубоцьку красу.   (2)
Парубоцька краса
В болоті мочена.   (2)
В болоті мочена,
У калюжі прана.   (2)
У калюжі прана,
На терню сушена.   (2)
На терню сушена,
У хліві схована.   (2)
Хлопці:
А весна-весною.
А дівка-дівкою.   (2)
Ходить, світом нудить,
Спідницею крутить.   (2)
Крутить, щоб видати:
Хочеться віддати.   (2)
Дома не сидіти,
В дівках не сивіти.   (2)
Покрить головоньку,
Не буть дівчиноньков.   (2)
Дранов нагавицев,
Стати молодицев.   (2)    Мелодія для 1 і 2 голосу');
DELETE FROM song_links WHERE song_id = 'pisniua_2171073';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171073';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171073';
DELETE FROM songs WHERE id = 'pisniua_2171073';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171073','Вознесіння','Музика: о. І. К. Слова: о. В. Б. Мендрунь','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Взяла Ісуса хмара
В многокрилих співах,
Апостоли щасливі
І Марія Діва.

Приспів:
Величай, Україно, нашого Бога,
В вознесінні ясніє правди дорога -
У знесінні, у знесінні Спаса Христа!

Господь — Учитель в тілі,
В ангельській родині...
Гріховні заметілі
Блудять ще донині.

Приспів.

Життя — любов і скруха...
Боже, я не дремлю:
Зішли Святого Духа
Оновити землю!

Приспів.','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:voskresni'', ''Церковні пісні'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171073'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171073','Вознесіння','Взяла Ісуса хмара
В многокрилих співах,
Апостоли щасливі
І Марія Діва.

Приспів:
Величай, Україно, нашого Бога,
В вознесінні ясніє правди дорога -
У знесінні, у знесінні Спаса Христа!

Господь — Учитель в тілі,
В ангельській родині...
Гріховні заметілі
Блудять ще донині.

Приспів.

Життя — любов і скруха...
Боже, я не дремлю:
Зішли Святого Духа
Оновити землю!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2171226';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171226';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171226';
DELETE FROM songs WHERE id = 'pisniua_2171226';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171226','Станьмо нині','Слова: о. І. К.','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Станьмо нині всі в покорі
З Ангелами на Таворі
Спаса повитати,
Чудо прославляти.
Славне чудо ся сповняє,        |
Небо світу ся являє,           |
Спась ся днесь преобразив.     | (2)

Облак з неба гору криє,
Облак чудно красний,
А лице Христа ясніє
Більш, ніж сонце ясне.
0діж сніжно біла стала,        |
Гарним світлом засіяла.        |
Чудо справді всіх чудес!       | (2)

Іллія, Мойсей явились,
Спаса прославляли.
Ученики устрашились,
На лице припали.
Петро говорить: "Спасе, милий, |
Ми би радо ся лишили           |
В віки на горі тії.            | (2)

Нагло чути Отчий явний
Голос торжественний:
"Се всесильний єсть і славний
Син мій возлюблений.
Тож єсли за Ним підете,        |
Вічне щастя в Нім знайдете,    |
Послухайте ж всі Його!"        | (2)

Петро, Яков і з Йоаном
Божество пізнали,
Сином Божим, неба Паном,
Спаса величали.
3 ними ж Серафимів хори        |
Піснь співали при Таворі:      |
"Слава Господу з небес!"       | (2)

І ми нині кріпкі в вірі
Спаса величаймо
І до Нього наші щирі
Мольби засилаймо:
"Спасе світа, ми з Тобою       |
Серцем, мислею, душею          |
Хочем жити в вічний вік!"      | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christ'', ''Церковні пісні'', ''Пісні до Ісуса Христа'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171226'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171226','Станьмо нині','Станьмо нині всі в покорі
З Ангелами на Таворі
Спаса повитати,
Чудо прославляти.
Славне чудо ся сповняє,        |
Небо світу ся являє,           |
Спась ся днесь преобразив.     | (2)

Облак з неба гору криє,
Облак чудно красний,
А лице Христа ясніє
Більш, ніж сонце ясне.
0діж сніжно біла стала,        |
Гарним світлом засіяла.        |
Чудо справді всіх чудес!       | (2)

Іллія, Мойсей явились,
Спаса прославляли.
Ученики устрашились,
На лице припали.
Петро говорить: "Спасе, милий, |
Ми би радо ся лишили           |
В віки на горі тії.            | (2)

Нагло чути Отчий явний
Голос торжественний:
"Се всесильний єсть і славний
Син мій возлюблений.
Тож єсли за Ним підете,        |
Вічне щастя в Нім знайдете,    |
Послухайте ж всі Його!"        | (2)

Петро, Яков і з Йоаном
Божество пізнали,
Сином Божим, неба Паном,
Спаса величали.
3 ними ж Серафимів хори        |
Піснь співали при Таворі:      |
"Слава Господу з небес!"       | (2)

І ми нині кріпкі в вірі
Спаса величаймо
І до Нього наші щирі
Мольби засилаймо:
"Спасе світа, ми з Тобою       |
Серцем, мислею, душею          |
Хочем жити в вічний вік!"      | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2172124';
DELETE FROM song_versions WHERE song_id = 'pisniua_2172124';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2172124';
DELETE FROM songs WHERE id = 'pisniua_2172124';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2172124','О, всепітая Царице','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Господь - моя пісня. Збірник релігійних пісень. Упор. Т.Ференц, І.Мельник, О.Костецька. Львів: "Свічадо", 2005.',NULL,'О, всепітая Царице,
Укріпи нашу любов,
Величати тебе будем
Піснями священних слов.

Приспів: (2)
Радуйся, Святая Діво,
Радуйся, Святая Мати,
Випросила ти у Бога
Більш людей всіх благодати.

За труди Твої земнії
І за всю Твою любов
Величати Тебе будем
Піснями священних слов.

Приспів.

Ти Цариця всього світу
І Владичиця землі,
Покровительниця грішних
І Заступниця в путі.

Приспів.

Випроси нам всім у Бога,
Ти ж бо є святая Мати,
Серце чисте, а у Духа —
Всесвятої благодати.

Приспів.

Прийди до нас з милосердям,
В цей день празничний, святий,
Прийди із благословенням,
Під покров візьми святий.

Приспів.

За віддання всесвятеє
І за всю Твою любов,
Прославляти Тебе будем
Піснями священних слов.

Приспів.

Діво, чистая святая,
Україну збережи.
Дай їй долю, дай їй славу,
Весь народ благослови.

Приспів.    комп''ютерне відтворення','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''cat:do-bohorodyci'', ''Церковні пісні'', ''Пісні на християнську тематику'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2172124'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2172124','О, всепітая Царице','О, всепітая Царице,
Укріпи нашу любов,
Величати тебе будем
Піснями священних слов.

Приспів: (2)
Радуйся, Святая Діво,
Радуйся, Святая Мати,
Випросила ти у Бога
Більш людей всіх благодати.

За труди Твої земнії
І за всю Твою любов
Величати Тебе будем
Піснями священних слов.

Приспів.

Ти Цариця всього світу
І Владичиця землі,
Покровительниця грішних
І Заступниця в путі.

Приспів.

Випроси нам всім у Бога,
Ти ж бо є святая Мати,
Серце чисте, а у Духа —
Всесвятої благодати.

Приспів.

Прийди до нас з милосердям,
В цей день празничний, святий,
Прийди із благословенням,
Під покров візьми святий.

Приспів.

За віддання всесвятеє
І за всю Твою любов,
Прославляти Тебе будем
Піснями священних слов.

Приспів.

Діво, чистая святая,
Україну збережи.
Дай їй долю, дай їй славу,
Весь народ благослови.

Приспів.    комп''ютерне відтворення');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2172124_l1','pisniua_2172124','YouTube','https://www.youtube.com/watch?v=61dZk5CKM9Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_217175';
DELETE FROM song_versions WHERE song_id = 'pisniua_217175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_217175';
DELETE FROM songs WHERE id = 'pisniua_217175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_217175','Мало мені','Музика: Святослав Вакарчук Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'Диск MP3 формату "ОЕ"','Підбір акордів: Невідомий','Intro

Сьогодні знову я іду додому сам
Навколо люди йдуть і дивляться з реклам.
Але чому мені хочеться втекти?
Але чому не там я хожу де ти?

Solo:

1|-5*-3*-2*--------- - 2 раза
2|----------5*-4*---

1|-5*-7*-3*-2*-------
2|-------------5*-4*-

1|-5*-3*-2*---------
2|----------5*-4*---

* - N''ое число раз

Я знаю де мій дім самотній від людей
Я слухав звук дощу, і Billie holiday
Але чому мені хочеться втекти?
І тільки п''яний дощ знає де ти.

Мало-мало-мало мені, не дощу навесні
Мало-мало-мало я знав не чужих, теплих слів
На землі так мало тебе, на землі є стіна
Я один, а ти не одна.

І у твоїх очах нема моїх слідів
І ключ не підійшов а може й не посмів
І тільки п''яний дощ ллє туди-сюди,
І тільки п''яний дощ знає де ти.

Сьогодні знову я іду додому сам...','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_217175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_217175','Мало мені','Intro

Сьогодні знову я іду додому сам
Навколо люди йдуть і дивляться з реклам.
Але чому мені хочеться втекти?
Але чому не там я хожу де ти?

Solo:

1|-5*-3*-2*--------- - 2 раза
2|----------5*-4*---

1|-5*-7*-3*-2*-------
2|-------------5*-4*-

1|-5*-3*-2*---------
2|----------5*-4*---

* - N''ое число раз

Я знаю де мій дім самотній від людей
Я слухав звук дощу, і Billie holiday
Але чому мені хочеться втекти?
І тільки п''яний дощ знає де ти.

Мало-мало-мало мені, не дощу навесні
Мало-мало-мало я знав не чужих, теплих слів
На землі так мало тебе, на землі є стіна
Я один, а ти не одна.

І у твоїх очах нема моїх слідів
І ключ не підійшов а може й не посмів
І тільки п''яний дощ ллє туди-сюди,
І тільки п''яний дощ знає де ти.

Сьогодні знову я іду додому сам...');
DELETE FROM song_links WHERE song_id = 'pisniua_2171461';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171461';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171461';
DELETE FROM songs WHERE id = 'pisniua_2171461';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171461','Гора ясна','Слова: о. М. Лончина','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Гора ясна, де прекрасна
Діва сіяє,
З своїм Сином возлюбленим
Всіх тут приймає.
Вона грішних призиває,   |
Ласки своєй уділяє       |
Всім каючимся.           | (2)

Спішіть скоро до Пречудної
Діви Марії.
Там в Готові на престолі,
Красной лелії.
Вона в нуждах помагає    |
І від всіх бід заступає, |
Яко Цариця.              | (2)

Чудотворна Мати Божа,
Нам допомагай,
З Пресвятой своєй опіки
Нас не випускай:
Ти бо можеш ублагати,    |
Свого Сина, яко Мати,    |
Пані ласкава.            | (2)

В цілім краю всі пізнали,
Щось чудна Мати,
Хто приходить не відходить
Без благодати.
Проси ж Бога Ти за нами, |
Щоб учинив нас синами    |
В небі навіки!           | (2)    комп''ютерне відтворення  (','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:do-bohorodyci'', ''Церковні пісні'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171461'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171461','Гора ясна','Гора ясна, де прекрасна
Діва сіяє,
З своїм Сином возлюбленим
Всіх тут приймає.
Вона грішних призиває,   |
Ласки своєй уділяє       |
Всім каючимся.           | (2)

Спішіть скоро до Пречудної
Діви Марії.
Там в Готові на престолі,
Красной лелії.
Вона в нуждах помагає    |
І від всіх бід заступає, |
Яко Цариця.              | (2)

Чудотворна Мати Божа,
Нам допомагай,
З Пресвятой своєй опіки
Нас не випускай:
Ти бо можеш ублагати,    |
Свого Сина, яко Мати,    |
Пані ласкава.            | (2)

В цілім краю всі пізнали,
Щось чудна Мати,
Хто приходить не відходить
Без благодати.
Проси ж Бога Ти за нами, |
Щоб учинив нас синами    |
В небі навіки!           | (2)    комп''ютерне відтворення  (');
DELETE FROM song_links WHERE song_id = 'pisniua_2172277';
DELETE FROM song_versions WHERE song_id = 'pisniua_2172277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2172277';
DELETE FROM songs WHERE id = 'pisniua_2172277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2172277','Пренепорочна Діво Маріє',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Пренепорочна Діво Маріє,
Світа Царице, ясна лелія,
Ми Тобі, Мати, цвіти приносим,
Ми, Твої діти, всі Тебе просим:

Зглянься, зглянься над нами, |
О, Всеблагая Царице наша,    |
Царице наша, Маріє.          | (2)

Пренепорочна Діво Маріє,
Вкраїнського краю вічна надіє,
Ми Тебе, Мати, молим всі нині:
Дай весну щастя нашій країні.

Зглянься, зглянься над нами, |
О, Всеблагая Царице наша,    |
Царице наша, Маріє.          | (2)','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2172277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2172277','Пренепорочна Діво Маріє','Пренепорочна Діво Маріє,
Світа Царице, ясна лелія,
Ми Тобі, Мати, цвіти приносим,
Ми, Твої діти, всі Тебе просим:

Зглянься, зглянься над нами, |
О, Всеблагая Царице наша,    |
Царице наша, Маріє.          | (2)

Пренепорочна Діво Маріє,
Вкраїнського краю вічна надіє,
Ми Тебе, Мати, молим всі нині:
Дай весну щастя нашій країні.

Зглянься, зглянься над нами, |
О, Всеблагая Царице наша,    |
Царице наша, Маріє.          | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2171212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171212';
DELETE FROM songs WHERE id = 'pisniua_2171212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171212','Спасе Христе',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Спасе Христе, в красі хвали
Ти верху Тавора став,
В Тобі Бога всі пізнали,
Всякий сумнів з серця впав.

Сонце сіяло з небосклону
Ясним світлом золотим
І підніжжя Твого трону,
В віки день цей продовжи.

Сонце ясне погасає,
З гори сходить вже Христос,
А з Голготи виглядає
Хрест високий в росах сльоз.','[''pisni.org.ua'', ''cat:christ'', ''Пісні до Ісуса Христа'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171212','Спасе Христе','Спасе Христе, в красі хвали
Ти верху Тавора став,
В Тобі Бога всі пізнали,
Всякий сумнів з серця впав.

Сонце сіяло з небосклону
Ясним світлом золотим
І підніжжя Твого трону,
В віки день цей продовжи.

Сонце ясне погасає,
З гори сходить вже Христос,
А з Голготи виглядає
Хрест високий в росах сльоз.');
DELETE FROM song_links WHERE song_id = 'pisniua_2171767';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171767';
DELETE FROM songs WHERE id = 'pisniua_2171767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171767','Колискова','Музика: Ігор Білозір Слова: Богдан Стельмах. Виконує: Оксана Муха','uk','ukraine_before_1917',NULL,NULL,'Стельмах Б. М. Світлиця пісень і спогадів.- Львів: Сполом, 2001.',NULL,'Небесами місяць плине,
А водою - другий.
Не вуркочи до дитини,
Котику муругий.

Не вуркочи до дитини,
До мого синочка,
Хай до нього завуркоче
Тиха співаночка.

Хай до нього завуркоче
Голубка сивенька -
Чи впізнає солоденьке,
Що то його ненька?

Чи впізнає немовлятко,
Що то я вуркочу?
Чи спитає, чи вгадає,
Чого в нього хочу?

Ой, літають голубоньки
Та й поза дубами -
Впізнай, синку, свого батька
Межи голубами.

Як він сяде на листочку,
Згорне білі крила —
Скажи, що я тобі мати,
Йому - його мила.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2171767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2171767','Колискова','Небесами місяць плине,
А водою - другий.
Не вуркочи до дитини,
Котику муругий.

Не вуркочи до дитини,
До мого синочка,
Хай до нього завуркоче
Тиха співаночка.

Хай до нього завуркоче
Голубка сивенька -
Чи впізнає солоденьке,
Що то його ненька?

Чи впізнає немовлятко,
Що то я вуркочу?
Чи спитає, чи вгадає,
Чого в нього хочу?

Ой, літають голубоньки
Та й поза дубами -
Впізнай, синку, свого батька
Межи голубами.

Як він сяде на листочку,
Згорне білі крила —
Скажи, що я тобі мати,
Йому - його мила.');
DELETE FROM song_links WHERE song_id = 'pisniua_2172512';
DELETE FROM song_versions WHERE song_id = 'pisniua_2172512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2172512';
DELETE FROM songs WHERE id = 'pisniua_2172512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2172512','Місто Солунське','Слова: о. І. К.','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Місто Солунське нині радіє,
Рожі збирає, що їх там сіяє.
Димитрій славний, мученик хвальний,     |
Мироточивий на землі.                   | (2)

Світу спасенне точить він миро,
За християнську Божую віру.
Кров проливає, миро являє,              |
Людям в недугах на цільбу.              | (2)

Неустрашимий воїн Христовий,
Був він на муки завжди готовий,
Щоб прославляти і величати              |
Спаса Ісуса в світі сім.                | (2)

Списами вбите, мучене тіло
Славою неба тут вже окрилось.
Точить щоденне миро спасення,           |
Чуда премногі творить все.              | (2)

О, заступай нас перед небесним
Божим престолом. Миром чудесним
3мий нас в потребі. Дай нам всім в небі |
Бога хвалити враз з тобою!              | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2172512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2172512','Місто Солунське','Місто Солунське нині радіє,
Рожі збирає, що їх там сіяє.
Димитрій славний, мученик хвальний,     |
Мироточивий на землі.                   | (2)

Світу спасенне точить він миро,
За християнську Божую віру.
Кров проливає, миро являє,              |
Людям в недугах на цільбу.              | (2)

Неустрашимий воїн Христовий,
Був він на муки завжди готовий,
Щоб прославляти і величати              |
Спаса Ісуса в світі сім.                | (2)

Списами вбите, мучене тіло
Славою неба тут вже окрилось.
Точить щоденне миро спасення,           |
Чуда премногі творить все.              | (2)

О, заступай нас перед небесним
Божим престолом. Миром чудесним
3мий нас в потребі. Дай нам всім в небі |
Бога хвалити враз з тобою!              | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2172573';
DELETE FROM song_versions WHERE song_id = 'pisniua_2172573';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2172573';
DELETE FROM songs WHERE id = 'pisniua_2172573';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2172573','Вишні хори','Слова: о. І. К.','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Вишні хори, неба сили
Най тя славлять, Михаїле,
Ти їм передуєш, в небі торжествуєш,
Земним помагаєш, пеклом покараєш.
Слава най лунає від небесних сил!       |
Най славиться днесь Божий Михаїл,       |
Вожде пренебесний, князю безтілесний,   |
Славен, славен, славен будь!            | (2)

При небеснім Божім троні
Ти сторожиш у Сіоні,
В славі необнятий, в чуда пребогатий,
В ласці преобильний, Божий вождь пресильний.
Проти гордих духів ти до бою став,      |
Вкинув в пекло їх, гордість покарав,    |
Борче Божий смілий, славний Михаїле,    |
Славен, славен, славен будь!            | (2)

Ти ж не менше Богу милий,
О, пресвітлий Гавриїле,
З неба зіступаєш, Діві обіцяєш
Слова воплоченіє, людям спасенне.
При Марії троні в небі пристоїш,        |
Повен слави ти, нині ся красиш,         |
Чудний сніжнокрилий, Божий Гавриїле,    |
Славен, славен, славен будь!            | (2)

Хороніть все Церкву Божу!
Побідіть всю власть ворожу!
Будьте поміж нами, крийте нас крилами,
Споможіть в потребі, всіх зберіть нас в небі.
Щоб ми сполучившись з Богом пресвятим,  |
Честь Йому дали серцем всі одним,       |
З вами прославляти, Богу піснь співали: |
Славен, славен, славен будь!            | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2172573'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2172573','Вишні хори','Вишні хори, неба сили
Най тя славлять, Михаїле,
Ти їм передуєш, в небі торжествуєш,
Земним помагаєш, пеклом покараєш.
Слава най лунає від небесних сил!       |
Най славиться днесь Божий Михаїл,       |
Вожде пренебесний, князю безтілесний,   |
Славен, славен, славен будь!            | (2)

При небеснім Божім троні
Ти сторожиш у Сіоні,
В славі необнятий, в чуда пребогатий,
В ласці преобильний, Божий вождь пресильний.
Проти гордих духів ти до бою став,      |
Вкинув в пекло їх, гордість покарав,    |
Борче Божий смілий, славний Михаїле,    |
Славен, славен, славен будь!            | (2)

Ти ж не менше Богу милий,
О, пресвітлий Гавриїле,
З неба зіступаєш, Діві обіцяєш
Слова воплоченіє, людям спасенне.
При Марії троні в небі пристоїш,        |
Повен слави ти, нині ся красиш,         |
Чудний сніжнокрилий, Божий Гавриїле,    |
Славен, славен, славен будь!            | (2)

Хороніть все Церкву Божу!
Побідіть всю власть ворожу!
Будьте поміж нами, крийте нас крилами,
Споможіть в потребі, всіх зберіть нас в небі.
Щоб ми сполучившись з Богом пресвятим,  |
Честь Йому дали серцем всі одним,       |
З вами прославляти, Богу піснь співали: |
Славен, славен, славен будь!            | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2172293';
DELETE FROM song_versions WHERE song_id = 'pisniua_2172293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2172293';
DELETE FROM songs WHERE id = 'pisniua_2172293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2172293','Радіємо нині з чудес',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Радіємо нині з чудес,
Явилася Діва з небес,
Явилася при скелі в красі і у силі   |
Пречистая Діва Свята.                | (2)

У білій одежі була,
В небесному сяйві сяла,
Дітей не забула, до вірних прибула   |
Пречистая Діва Свята.                | (2)

"Прийдіть всі до Мене, прийдіть,
З собою весь біль принесіть,
Я вас заспокою, дам сили до бою      |
І кращий укажу вам світ".            | (2)

Пречистая Діво Свята,
Яка ж Ти для нас дорога!
Покрий нас покровом, своїм омофором, |
Дай ласку повстати з гріха.          | (2)

Подяку складаєм Тобі,
Ми — діти Твої на землі.
Проси свого Сина, Ісуса Христа,      |
Щоб вів нас до Бога Отця.            | (2)

Радіємо нині з чудес,
Явилася Діва з небес!
Царює у небі, шле ласки в потребі,   |
Хто помочі просить Її.               | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:do-bohorodyci'', ''Церковні пісні'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2172293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2172293','Радіємо нині з чудес','Радіємо нині з чудес,
Явилася Діва з небес,
Явилася при скелі в красі і у силі   |
Пречистая Діва Свята.                | (2)

У білій одежі була,
В небесному сяйві сяла,
Дітей не забула, до вірних прибула   |
Пречистая Діва Свята.                | (2)

"Прийдіть всі до Мене, прийдіть,
З собою весь біль принесіть,
Я вас заспокою, дам сили до бою      |
І кращий укажу вам світ".            | (2)

Пречистая Діво Свята,
Яка ж Ти для нас дорога!
Покрий нас покровом, своїм омофором, |
Дай ласку повстати з гріха.          | (2)

Подяку складаєм Тобі,
Ми — діти Твої на землі.
Проси свого Сина, Ісуса Христа,      |
Щоб вів нас до Бога Отця.            | (2)

Радіємо нині з чудес,
Явилася Діва з небес!
Царює у небі, шле ласки в потребі,   |
Хто помочі просить Її.               | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2172293_l1','pisniua_2172293','YouTube','https://www.youtube.com/watch?v=SiKVsobLmeE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_21726';
DELETE FROM song_versions WHERE song_id = 'pisniua_21726';
DELETE FROM songs_fts WHERE song_id = 'pisniua_21726';
DELETE FROM songs WHERE id = 'pisniua_21726';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_21726','Вію, вію, вію вінець','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'А вже весна скресла. Збірник гаївок. Львів, 2003.','Одна людина стоїть по середині, а всі навколо закручуються.','Вію, вію, вію вінець.
Розвію, розвію, розвію вінець.','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_21726'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_21726','Вію, вію, вію вінець','Вію, вію, вію вінець.
Розвію, розвію, розвію вінець.');
DELETE FROM song_links WHERE song_id = 'pisniua_2172596';
DELETE FROM song_versions WHERE song_id = 'pisniua_2172596';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2172596';
DELETE FROM songs WHERE id = 'pisniua_2172596';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2172596','Сил небесних','Слова: о. М. Л.','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Сил небесних воєводо,
Святий Михаїле,
Побідителю преславний      |
Ворожої сили.              | (2)

Архистратиже небесний,
Тя днесь величаєм,
Хорони нас у покусах,      |
Щиро тя благаєм.           | (2)

Поспішай нам все на поміч,
Світлий духу правди,
3аступай нас, тебе просим, |
В день і вночі завжди.     | (2)

Бачиш, як ворог душ наших
Так страшної злоби
Неустанно, як лев лютий,   |
Глядить нашої згуби.       | (2)

Тож ти, славний князю неба,
Стань нам в обороні,
Ми на тебе уповаєм         |
В житті та при сконі.      | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2172596'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2172596','Сил небесних','Сил небесних воєводо,
Святий Михаїле,
Побідителю преславний      |
Ворожої сили.              | (2)

Архистратиже небесний,
Тя днесь величаєм,
Хорони нас у покусах,      |
Щиро тя благаєм.           | (2)

Поспішай нам все на поміч,
Світлий духу правди,
3аступай нас, тебе просим, |
В день і вночі завжди.     | (2)

Бачиш, як ворог душ наших
Так страшної злоби
Неустанно, як лев лютий,   |
Глядить нашої згуби.       | (2)

Тож ти, славний князю неба,
Стань нам в обороні,
Ми на тебе уповаєм         |
В житті та при сконі.      | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2172726';
DELETE FROM song_versions WHERE song_id = 'pisniua_2172726';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2172726';
DELETE FROM songs WHERE id = 'pisniua_2172726';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2172726','Львове мій','Музика: І.Шевчук Слова: І.Шевчук. Виконує: Діана Глухова','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ми львів''яни і львів''янки
Місто любимо своє,
І тому ми гордимося,
Що у ньому ми живем.
Всі ми знаєм: князь Данило
Цьому місту назву дав
І в наймення свого сина
Місто наше він назвав.
Львове місто - княжий Львів,
Львове місто наше - Львів,
Львове - радосте моя -
Місто щастя і добра.
Кожен камінь в центрі міста
Нам розкаже залюбки,
Воювали тут за місто
Славні Галицькі сини.
І тому ось кожне місце
Тут полито кров''ю їх,
І тому ось славна назва,
Горда назва - місто Львів!
Львове місто - княжий Львів,
Львове місто наше - Львів,
Львове - радосте моя,
Місто щастя і добра.
Львове мій, а я - твоя,
Львове - радосте моя,
Львове - радосте моя,
Місто щастя і добра.','[''pisni.org.ua'', ''cat:lviv'', ''Пісні про Львів'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2172726'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2172726','Львове мій','Ми львів''яни і львів''янки
Місто любимо своє,
І тому ми гордимося,
Що у ньому ми живем.
Всі ми знаєм: князь Данило
Цьому місту назву дав
І в наймення свого сина
Місто наше він назвав.
Львове місто - княжий Львів,
Львове місто наше - Львів,
Львове - радосте моя -
Місто щастя і добра.
Кожен камінь в центрі міста
Нам розкаже залюбки,
Воювали тут за місто
Славні Галицькі сини.
І тому ось кожне місце
Тут полито кров''ю їх,
І тому ось славна назва,
Горда назва - місто Львів!
Львове місто - княжий Львів,
Львове місто наше - Львів,
Львове - радосте моя,
Місто щастя і добра.
Львове мій, а я - твоя,
Львове - радосте моя,
Львове - радосте моя,
Місто щастя і добра.');
DELETE FROM song_links WHERE song_id = 'pisniua_2172369';
DELETE FROM song_versions WHERE song_id = 'pisniua_2172369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2172369';
DELETE FROM songs WHERE id = 'pisniua_2172369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2172369','О, Василіє Великий',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'О, Василіє Великий,
Церкви Божої красо,
О, яки ж ми словами     |
Гідну честь Тобі дамо.  | (2)

Ти горів любов''ю Бога,
Ти для Нього працював,
Словом Божим і мольбами |
Блудні душі навертав.   | (2)

Ти над все цінний скарб віри,
Після неї точно жив.
Перед злобою невірних   |
Ти ї мужно боронив.     | (2)

Мов лелія, була красна
Твого серця чистота.
Нею ти яснів, як ангел, |
Як небесная зоря.       | (2)

О, Василіє Великий,
Патріярху наш святий.
Пом''яни нас перед Богом |
І своїм покровом вкрий. | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2172369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2172369','О, Василіє Великий','О, Василіє Великий,
Церкви Божої красо,
О, яки ж ми словами     |
Гідну честь Тобі дамо.  | (2)

Ти горів любов''ю Бога,
Ти для Нього працював,
Словом Божим і мольбами |
Блудні душі навертав.   | (2)

Ти над все цінний скарб віри,
Після неї точно жив.
Перед злобою невірних   |
Ти ї мужно боронив.     | (2)

Мов лелія, була красна
Твого серця чистота.
Нею ти яснів, як ангел, |
Як небесная зоря.       | (2)

О, Василіє Великий,
Патріярху наш святий.
Пом''яни нас перед Богом |
І своїм покровом вкрий. | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2172665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2172665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2172665';
DELETE FROM songs WHERE id = 'pisniua_2172665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2172665','Пісня до святого Миколая','Музика: А. Гнатишин Слова: о. В. Б. Мендрунь','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Отче Миколаю,
Ти у нашім краю
Любий нам усім,
Ти - душі відрада,  |
Ти рятуєш чада,     |
Входиш в кожен дім. | (2)

Миколаю-отче,
Славний чудотворче,
Не забудь мене.
Ти зціляєш рани,    |
В Крехові прочани,  |
Серце в них — одне. | (2)

Сяєш на іконі,
Просимо в поклоні:
Всіх нас подружи!
Україну нашу —      |
Благодати чашу —    |
Вічно бережи!       | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:svyatyy-mykolay'', ''Церковні пісні'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2172665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2172665','Пісня до святого Миколая','Отче Миколаю,
Ти у нашім краю
Любий нам усім,
Ти - душі відрада,  |
Ти рятуєш чада,     |
Входиш в кожен дім. | (2)

Миколаю-отче,
Славний чудотворче,
Не забудь мене.
Ти зціляєш рани,    |
В Крехові прочани,  |
Серце в них — одне. | (2)

Сяєш на іконі,
Просимо в поклоні:
Всіх нас подружи!
Україну нашу —      |
Благодати чашу —    |
Вічно бережи!       | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2172797';
DELETE FROM song_versions WHERE song_id = 'pisniua_2172797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2172797';
DELETE FROM songs WHERE id = 'pisniua_2172797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2172797','А-а-а, котів два','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'А-а-а, котів два,
Сірі, білі обидва.
Сірі, білі, волохаті,
Не ходіте коло хати,
Не будіть нашого дитяти.
У нас дитя маленьке,
Воно спати раденьке.
Хоч раденьке, та не спить,
Треба його дубцем бить.
А хоч треба, та не б''єм.
Малюсіньке - жалуєм.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2172797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2172797','А-а-а, котів два','А-а-а, котів два,
Сірі, білі обидва.
Сірі, білі, волохаті,
Не ходіте коло хати,
Не будіть нашого дитяти.
У нас дитя маленьке,
Воно спати раденьке.
Хоч раденьке, та не спить,
Треба його дубцем бить.
А хоч треба, та не б''єм.
Малюсіньке - жалуєм.');
DELETE FROM song_links WHERE song_id = 'pisniua_2172818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2172818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2172818';
DELETE FROM songs WHERE id = 'pisniua_2172818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2172818','Ой ну, люлі, люлі ****','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986','Колискова','Ой ну, люлі, люлі,
Налетіли гулі,
Ой ви гулі, не гудіть,
Дитиноньки не будіть,-
В нас вона маленька,
Спати раденька.
Хоче спати, та й не спить,
Дайте прута, будем бить.
Будем бить, вибивать,
На мороз викидать,
А з морозу в хату брать
Та у люлі колихать.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2172818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2172818','Ой ну, люлі, люлі ****','Ой ну, люлі, люлі,
Налетіли гулі,
Ой ви гулі, не гудіть,
Дитиноньки не будіть,-
В нас вона маленька,
Спати раденька.
Хоче спати, та й не спить,
Дайте прута, будем бить.
Будем бить, вибивать,
На мороз викидать,
А з морозу в хату брать
Та у люлі колихать.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2172818_l1','pisniua_2172818','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2173457';
DELETE FROM song_versions WHERE song_id = 'pisniua_2173457';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2173457';
DELETE FROM songs WHERE id = 'pisniua_2173457';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2173457','Лагідна пісня','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Лагідна і сонячна, ніжна, як весна,
Рідна моя матінка, зіронька ясна.
Забринить веселкою небо голубе,
Мамо, мамо, серденько, я люблю тебе! | (2)

Як на світі Божому віднайти путі,
З маминою ласкою все життя пройти?
Забринить веселкою небо голубе,
Мамо, мамо, серденько, я люблю тебе! | (2)

Мудрістю освячене диво джерело,
Як Тобі віддячити, мамо, за добро?
Забринить веселкою небо голубе,
Мамо, мамо, серденько, я люблю тебе! | (2)

Мамо! Мамо! Серденько, я люблю тебе!
Мамо, мамо, серденько, я люблю тебе','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2173457'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2173457','Лагідна пісня','Лагідна і сонячна, ніжна, як весна,
Рідна моя матінка, зіронька ясна.
Забринить веселкою небо голубе,
Мамо, мамо, серденько, я люблю тебе! | (2)

Як на світі Божому віднайти путі,
З маминою ласкою все життя пройти?
Забринить веселкою небо голубе,
Мамо, мамо, серденько, я люблю тебе! | (2)

Мудрістю освячене диво джерело,
Як Тобі віддячити, мамо, за добро?
Забринить веселкою небо голубе,
Мамо, мамо, серденько, я люблю тебе! | (2)

Мамо! Мамо! Серденько, я люблю тебе!
Мамо, мамо, серденько, я люблю тебе');
DELETE FROM song_links WHERE song_id = 'pisniua_2173410';
DELETE FROM song_versions WHERE song_id = 'pisniua_2173410';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2173410';
DELETE FROM songs WHERE id = 'pisniua_2173410';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2173410','Вчителі','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Школа, рідна школа,
Знов заходжу в клас,
Тут нам все знайоме,
Тут чекають нас.

Приспів:
Вчителі, вчителі,       |
В школі все життя минає |
Вчителі - журавлі       |
На високім небокраї,    |
Вчителі, вчителі,       |
Наші вчителі!..         | (2)

Шли ми крок за кроком
З Вами по землі,
Плакали й сміялись
Наші вчителі.

Приспів','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2173410'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2173410','Вчителі','Школа, рідна школа,
Знов заходжу в клас,
Тут нам все знайоме,
Тут чекають нас.

Приспів:
Вчителі, вчителі,       |
В школі все життя минає |
Вчителі - журавлі       |
На високім небокраї,    |
Вчителі, вчителі,       |
Наші вчителі!..         | (2)

Шли ми крок за кроком
З Вами по землі,
Плакали й сміялись
Наші вчителі.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2173410_l1','pisniua_2173410','YouTube','https://www.youtube.com/watch?v=pt06PkqT_uA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2173410_l2','pisniua_2173410','YouTube','https://www.youtube.com/watch?v=wm8rjEj3L4g','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2173022';
DELETE FROM song_versions WHERE song_id = 'pisniua_2173022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2173022';
DELETE FROM songs WHERE id = 'pisniua_2173022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2173022','Учитель','Музика: Микола Маліборський Слова: Ігор Шинок','uk','ukraine_1991',NULL,NULL,'інтернет',NULL,'Ой, літа ви погідні, люба школо, наш клас,
Руки вчителя рідні, пригортали ви нас.
Пригортали, тулили до грудей голуб''ят,         |
Був ти, вчителю милий, рідним батьком хлоп''ят. | (2)

Вів ти в сонячні ранки нас в незвідану путь,
Де рожеві світанки в мріях щастя цвітуть.
І знялися на крила ми з сімнадцяти літ -       |
Твоя воля і сила підняла нас в політ!          | (2)

Нас чекають дороги у життя далині,
Нас чекають тривоги, а не тільки пісні.
Всі дороги пройдемо, переможемо зло            |
І в серцях збережемо твого серця тепло.        | (2)

Ой, літа ви погідні, люба школо, наш клас,
Де ти, вчителю рідний, чи ти згадуєш нас?
Щебет рідної школи, наче спів солов''їв,        |
Не забудуть ніколи голуб''ята твої.             | (2)','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2173022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2173022','Учитель','Ой, літа ви погідні, люба школо, наш клас,
Руки вчителя рідні, пригортали ви нас.
Пригортали, тулили до грудей голуб''ят,         |
Був ти, вчителю милий, рідним батьком хлоп''ят. | (2)

Вів ти в сонячні ранки нас в незвідану путь,
Де рожеві світанки в мріях щастя цвітуть.
І знялися на крила ми з сімнадцяти літ -       |
Твоя воля і сила підняла нас в політ!          | (2)

Нас чекають дороги у життя далині,
Нас чекають тривоги, а не тільки пісні.
Всі дороги пройдемо, переможемо зло            |
І в серцях збережемо твого серця тепло.        | (2)

Ой, літа ви погідні, люба школо, наш клас,
Де ти, вчителю рідний, чи ти згадуєш нас?
Щебет рідної школи, наче спів солов''їв,        |
Не забудуть ніколи голуб''ята твої.             | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2173022_l1','pisniua_2173022','YouTube','https://www.youtube.com/watch?v=Q7a7wGLFed0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2173010';
DELETE FROM song_versions WHERE song_id = 'pisniua_2173010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2173010';
DELETE FROM songs WHERE id = 'pisniua_2173010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2173010','Перший дзвоник','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'інтернет',NULL,'Рано-ранесенько встану, як ніколи,
Зайчики сонячні грають у вікні.
Так мені весело, бо іду до школи
І співаю радісні пісні!

Приспів:
Перший дзвоник,
Перший дзвоник пролунає -
Переливи, переливи золоті!
Я сьогодні,
Я сьогодні починаю
Першу стежку у житті!

Травами, росами вкрилися доріжки,
Ляльку й ведмедика дома залишу,
Стануть слухняними зошити і книжки,
Перше слово "мама" напишу!

Приспів.

Вчительку лагідно я візьму за руку,
Мама хвилюється, я їй посміхнусь!
Підемо ми разом у світи науки,
Разом я нічого не боюсь!

Приспів','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2173010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2173010','Перший дзвоник','Рано-ранесенько встану, як ніколи,
Зайчики сонячні грають у вікні.
Так мені весело, бо іду до школи
І співаю радісні пісні!

Приспів:
Перший дзвоник,
Перший дзвоник пролунає -
Переливи, переливи золоті!
Я сьогодні,
Я сьогодні починаю
Першу стежку у житті!

Травами, росами вкрилися доріжки,
Ляльку й ведмедика дома залишу,
Стануть слухняними зошити і книжки,
Перше слово "мама" напишу!

Приспів.

Вчительку лагідно я візьму за руку,
Мама хвилюється, я їй посміхнусь!
Підемо ми разом у світи науки,
Разом я нічого не боюсь!

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2173010_l1','pisniua_2173010','YouTube','https://www.youtube.com/watch?v=xbmGnQfXCms','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2174212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2174212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2174212';
DELETE FROM songs WHERE id = 'pisniua_2174212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2174212','А-а, а-а, а-а, а! Пішла мати жито жати','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'А-а, а-а, а-а, а!
Пішла мати жито жати,
Та не собі - пану,
А-а, а-а, а-а, а!
Мале дитя без сповиття
Не має талану,
А-а, а-а, а-а, а!
Рости, сину, не гни спину
Та на чужій ниві,
А-а, а-а, а-а, а!
Добудь життя, моє дитя,
То будеш щасливий,
А-а, а-а, а-а, а!','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''cat:narodni'', ''Дитячі пісні'', ''Колискові'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2174212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2174212','А-а, а-а, а-а, а! Пішла мати жито жати','А-а, а-а, а-а, а!
Пішла мати жито жати,
Та не собі - пану,
А-а, а-а, а-а, а!
Мале дитя без сповиття
Не має талану,
А-а, а-а, а-а, а!
Рости, сину, не гни спину
Та на чужій ниві,
А-а, а-а, а-а, а!
Добудь життя, моє дитя,
То будеш щасливий,
А-а, а-а, а-а, а!');
DELETE FROM song_links WHERE song_id = 'pisniua_2174091';
DELETE FROM song_versions WHERE song_id = 'pisniua_2174091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2174091';
DELETE FROM songs WHERE id = 'pisniua_2174091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2174091','Христос родився!','Українська народна пісня. Виконує: Василь Барвінський','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.37',NULL,'Марія Чиста, зродивши Христа, в яслах сповила на сіні.
Не розуміє, що то ся діє - Бог помістився у яскині!
Пелени готує, пресладко цілує возлюбленого Младенця.
Яким Ти способом во Мні вмістився,
Безболісно на світ Ти народився, Радосте Моя безмірна!

Мі, віруючі і Христа чтучі,  всі разом пісні співаймо,
Всі веселієм і смірнієм славу й поклони віддаймо.
Радість всім велика, бо Марія Сина на спасіння всім зродила.
Радій, чоловіче, з Рождества того,
Христос бо спасає завжди душ много і від неволі вражої','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2174091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2174091','Христос родився!','Марія Чиста, зродивши Христа, в яслах сповила на сіні.
Не розуміє, що то ся діє - Бог помістився у яскині!
Пелени готує, пресладко цілує возлюбленого Младенця.
Яким Ти способом во Мні вмістився,
Безболісно на світ Ти народився, Радосте Моя безмірна!

Мі, віруючі і Христа чтучі,  всі разом пісні співаймо,
Всі веселієм і смірнієм славу й поклони віддаймо.
Радість всім велика, бо Марія Сина на спасіння всім зродила.
Радій, чоловіче, з Рождества того,
Христос бо спасає завжди душ много і від неволі вражої');
DELETE FROM song_links WHERE song_id = 'pisniua_2174055';
DELETE FROM song_versions WHERE song_id = 'pisniua_2174055';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2174055';
DELETE FROM songs WHERE id = 'pisniua_2174055';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2174055','Нині Рождество Божого Дитяти','Українська народна пісня. Виконує: Яків Байко, Магдалина Байко','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.17','Виконує: Яків та Магдалина Байко, с.Яблониця','Нині рождество Божого Дитяти,
Браття-українці йдуть Його вітати.

Приспів:
Тутки лемки співають, подоляки їм грають,
Волиняк щось міркує, бойко легко танцює,
Полтавець плясає, гуцул трембітає
Трара, трара, трара, ра-ра-ра.

Чути довкола любі жарти, сміхи,
Ісус маленький в ручки б''є з утіхи.

Приспів.

Ісусе маленький, бався разом з нами,
І з Іваськами та й і Михаськами.

Приспів.

Ісусе маленький, мило нам всміхнися,
В кожній потребі за нас заступися.

Приспів.

Ісусе маленький, і Пречиста Мати,
Дозвольте Україні кращу долю мати.

Приспів:
Тутки лемки співають, подоляки їм грають.
Волиняк щось міркує, бойко легко танцює,
Полтавець плясає, гуцул трембітає.
Трара, трара, трара, ра-ра-ра','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:narodni'', ''Лемківські пісні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2174055'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2174055','Нині Рождество Божого Дитяти','Нині рождество Божого Дитяти,
Браття-українці йдуть Його вітати.

Приспів:
Тутки лемки співають, подоляки їм грають,
Волиняк щось міркує, бойко легко танцює,
Полтавець плясає, гуцул трембітає
Трара, трара, трара, ра-ра-ра.

Чути довкола любі жарти, сміхи,
Ісус маленький в ручки б''є з утіхи.

Приспів.

Ісусе маленький, бався разом з нами,
І з Іваськами та й і Михаськами.

Приспів.

Ісусе маленький, мило нам всміхнися,
В кожній потребі за нас заступися.

Приспів.

Ісусе маленький, і Пречиста Мати,
Дозвольте Україні кращу долю мати.

Приспів:
Тутки лемки співають, подоляки їм грають.
Волиняк щось міркує, бойко легко танцює,
Полтавець плясає, гуцул трембітає.
Трара, трара, трара, ра-ра-ра');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2174055_l1','pisniua_2174055','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2173313';
DELETE FROM song_versions WHERE song_id = 'pisniua_2173313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2173313';
DELETE FROM songs WHERE id = 'pisniua_2173313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2173313','Ай, ну, ну-ну, коти два','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://www.abetka-logopedka.org',NULL,'Ай, ну, ну-ну, коти два,
Та ще й сірі обидва, а-а...

По садочку ходять,
Горобчиків ловлять, а-а...

Ай, ну, коти, не гудіть,
Спить дитина - не збудіть, а-а...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2173313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2173313','Ай, ну, ну-ну, коти два','Ай, ну, ну-ну, коти два,
Та ще й сірі обидва, а-а...

По садочку ходять,
Горобчиків ловлять, а-а...

Ай, ну, коти, не гудіть,
Спить дитина - не збудіть, а-а...');
DELETE FROM song_links WHERE song_id = 'pisniua_2173563';
DELETE FROM song_versions WHERE song_id = 'pisniua_2173563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2173563';
DELETE FROM songs WHERE id = 'pisniua_2173563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2173563','Перелаз, мій перелаз','Музика: Микола Янченко Слова: Микола Янченко. Виконує: С. Котець','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Пахнуть вишні, як цвітуть,
Білі навесні.
А роки ідуть, ідуть,
Не вернути їх.
Приспів:
Перелаз мій, перелаз,
Стежка на межі.
Як згадаю я про вас,
Тепло на душі. | (2)
На долині стежкою
Мати нас вела.
Жовтою мережкою
Нам верба цвіла.
Приспів.
Тут росли з тобою ми,
Тут медовий цвіт.
Розійшлись дорогами
У широкий світ.
Приспів.
Соловейко у гаю
Пісню заспівав.
Про вербу над стежкою
Знову нагадав.
Приспів.','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2173563'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2173563','Перелаз, мій перелаз','Пахнуть вишні, як цвітуть,
Білі навесні.
А роки ідуть, ідуть,
Не вернути їх.
Приспів:
Перелаз мій, перелаз,
Стежка на межі.
Як згадаю я про вас,
Тепло на душі. | (2)
На долині стежкою
Мати нас вела.
Жовтою мережкою
Нам верба цвіла.
Приспів.
Тут росли з тобою ми,
Тут медовий цвіт.
Розійшлись дорогами
У широкий світ.
Приспів.
Соловейко у гаю
Пісню заспівав.
Про вербу над стежкою
Знову нагадав.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2173563_l1','pisniua_2173563','YouTube','https://www.youtube.com/watch?v=14_Uo68EYPE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2173563_l2','pisniua_2173563','YouTube','https://www.youtube.com/watch?v=akAINLQfdV8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2173563_l3','pisniua_2173563','YouTube','https://www.youtube.com/watch?v=M0-M6tU2CAc','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2173471';
DELETE FROM song_versions WHERE song_id = 'pisniua_2173471';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2173471';
DELETE FROM songs WHERE id = 'pisniua_2173471';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2173471','Мамин вальс','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Зірка з неба впала в золоті жита,
Пісня залунала тиха і проста,
Пісня про стежину в отчому краю,
Пісня про матусю рідную мою!

Приспів:
Там, де мама моя,
Там і сходить зоря,
Там і сходить зоря!
Там, де мама моя,
Там щаслива і я,
Там щаслива і я!
Там, де мама моя,
Відступає зима,
Відступає зима!
Там, де мама моя,
Там і смутку нема,
Там і смутку нема!

Очі материнські від зорі ясні
Ранком подарують погляд свій мені,
Руки материнські, її два крила,
Щоб мене матуся обійнять могла.

Приспів. (2)','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2173471'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2173471','Мамин вальс','Зірка з неба впала в золоті жита,
Пісня залунала тиха і проста,
Пісня про стежину в отчому краю,
Пісня про матусю рідную мою!

Приспів:
Там, де мама моя,
Там і сходить зоря,
Там і сходить зоря!
Там, де мама моя,
Там щаслива і я,
Там щаслива і я!
Там, де мама моя,
Відступає зима,
Відступає зима!
Там, де мама моя,
Там і смутку нема,
Там і смутку нема!

Очі материнські від зорі ясні
Ранком подарують погляд свій мені,
Руки материнські, її два крила,
Щоб мене матуся обійнять могла.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2174394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2174394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2174394';
DELETE FROM songs WHERE id = 'pisniua_2174394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2174394','А-а-а-а-а-а-а, нехай коту усе лихо','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'А-а-а-а-а-а-а,
Нехай коту усе лихо,
Ти, Іване, спи тихо, а-а-а.
Не ходи, кіт, по печі,
Буду бить у плечі, а-а-а.
Не ходи, кіт, по лавці,
Буду бить по лапці, а-а-а.
Не ходи, кіт, по полиці,
Буду бить по потилиці, а-а-а.
Не ходи, кіт, по мосту,
Буду бить по хвосту, а-а-а.
Не лізь, коток, на колодку,
Розіб''єш головку, а-а-а.
Буде головка боліть,
І нікому буде жаліть, а-а-а.
Нехай коту усе лихо,
Ти, Іване, спи тихо, а-а-а.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2174394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2174394','А-а-а-а-а-а-а, нехай коту усе лихо','А-а-а-а-а-а-а,
Нехай коту усе лихо,
Ти, Іване, спи тихо, а-а-а.
Не ходи, кіт, по печі,
Буду бить у плечі, а-а-а.
Не ходи, кіт, по лавці,
Буду бить по лапці, а-а-а.
Не ходи, кіт, по полиці,
Буду бить по потилиці, а-а-а.
Не ходи, кіт, по мосту,
Буду бить по хвосту, а-а-а.
Не лізь, коток, на колодку,
Розіб''єш головку, а-а-а.
Буде головка боліть,
І нікому буде жаліть, а-а-а.
Нехай коту усе лихо,
Ти, Іване, спи тихо, а-а-а.');
DELETE FROM song_links WHERE song_id = 'pisniua_2174012';
DELETE FROM song_versions WHERE song_id = 'pisniua_2174012';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2174012';
DELETE FROM songs WHERE id = 'pisniua_2174012';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2174012','Народився Ісус Христос','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Джерело: Антологія лемківської пісні, Львів, "Афіша", 2005, с.23','Виконує: Родина Байко','Народився Ісус Христос во Вифлеємі,
Ознаймила ясна звізда по всій вселенній.
То ж то радуймася, купно весельмося
О Спасі нашім.

Он во яслах лежит, красний, як невиннятко,
Ісус Христос, Спаситель наш, малой дитятко.
Анголи Му співают, пасотрі Му дар дают -
Ягня і козля.

Наш маленький, што ж Ти дамо, новороджений,
Од пастирів і од царів обдарований?
А ми дар не маймо, тільки Ти співаймо:
"Слава во Вишніх!"','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2174012'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2174012','Народився Ісус Христос','Народився Ісус Христос во Вифлеємі,
Ознаймила ясна звізда по всій вселенній.
То ж то радуймася, купно весельмося
О Спасі нашім.

Он во яслах лежит, красний, як невиннятко,
Ісус Христос, Спаситель наш, малой дитятко.
Анголи Му співают, пасотрі Му дар дают -
Ягня і козля.

Наш маленький, што ж Ти дамо, новороджений,
Од пастирів і од царів обдарований?
А ми дар не маймо, тільки Ти співаймо:
"Слава во Вишніх!"');
DELETE FROM song_links WHERE song_id = 'pisniua_2174653';
DELETE FROM song_versions WHERE song_id = 'pisniua_2174653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2174653';
DELETE FROM songs WHERE id = 'pisniua_2174653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2174653','Гойда, гойда, гойда','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'Гойда, гойда, гойда,
Іде баба з горба,
За плечима торба,
А в тій торбі калачі,
Щоб Оксана спала вдень і вночі.

Гойда, гойда, гойдаша,
Де кобила, там лоша.
А кобила в лісі,
А лошатко в стрісі.
А кобила сива,
А лоша рябоє,
А прийшов Абрамцьо
Та й забрав обоє.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2174653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2174653','Гойда, гойда, гойда','Гойда, гойда, гойда,
Іде баба з горба,
За плечима торба,
А в тій торбі калачі,
Щоб Оксана спала вдень і вночі.

Гойда, гойда, гойдаша,
Де кобила, там лоша.
А кобила в лісі,
А лошатко в стрісі.
А кобила сива,
А лоша рябоє,
А прийшов Абрамцьо
Та й забрав обоє.');
DELETE FROM song_links WHERE song_id = 'pisniua_2173993';
DELETE FROM song_versions WHERE song_id = 'pisniua_2173993';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2173993';
DELETE FROM songs WHERE id = 'pisniua_2173993';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2173993','Люляй же мі, люляй','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'Люляй же мі, люляй,
Колиско з явора,
Я в тобі колишу
Дитятко-сокола.

А усни мі, усни,
Велике вирости,
Велике, як і я,
Біле, як лелія.

Усни же мі, усни,
Велике вирости,
До вершечка свого,
Літа молодого.

А люляй мі, люляй,
Чорні очка стуляй!
І я би стуляла,
Кеби-м такі мала.

Люляй же мі, люляй,
Чорні очка стуляй!
Як же їх стуляти,
Кед не хотять спати?

А люлю мі, люлю,
Де я тя притулю?
Під зелену липу
Дитину повиту.

А люлю мі, люлю,
Де я тя притулю?
Під зелену сосну
Дитину милосну.

А люлю мі, люлю,
Де я тя притулю?
Під високу дулю,
Там я тя притулю.

Люляй же мі, люляй,
Мій малий синочку,
Вишию я тобі
На літо сорочку.','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2173993'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2173993','Люляй же мі, люляй','Люляй же мі, люляй,
Колиско з явора,
Я в тобі колишу
Дитятко-сокола.

А усни мі, усни,
Велике вирости,
Велике, як і я,
Біле, як лелія.

Усни же мі, усни,
Велике вирости,
До вершечка свого,
Літа молодого.

А люляй мі, люляй,
Чорні очка стуляй!
І я би стуляла,
Кеби-м такі мала.

Люляй же мі, люляй,
Чорні очка стуляй!
Як же їх стуляти,
Кед не хотять спати?

А люлю мі, люлю,
Де я тя притулю?
Під зелену липу
Дитину повиту.

А люлю мі, люлю,
Де я тя притулю?
Під зелену сосну
Дитину милосну.

А люлю мі, люлю,
Де я тя притулю?
Під високу дулю,
Там я тя притулю.

Люляй же мі, люляй,
Мій малий синочку,
Вишию я тобі
На літо сорочку.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2173993_l1','pisniua_2173993','YouTube','https://www.youtube.com/watch?v=InsEgOR3Ybw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_217457';
DELETE FROM song_versions WHERE song_id = 'pisniua_217457';
DELETE FROM songs_fts WHERE song_id = 'pisniua_217457';
DELETE FROM songs WHERE id = 'pisniua_217457';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_217457','Надворі червоніє синіє далина','Українська народна пісня. Виконує: Гуртоправці','uk','ukraine_1991',NULL,'2003','ГУРТОПРАВЦІ: Ой давно-давно','ГУРТОПРАВЦІ: Олег Бут (гітара), Ірина Клименко (заспів, верхній голос), Сусанна Карпенко Ой давно-давно. Найдавніша і новіша етнічна музика українців. Гурти "Древо", "Володар" і гуртоправці. Укл. Ірина Клименко (klymenko_iryna@ukr.net). 2003. — Кружало.','Надворі червоніє синіє далина
Десь вогник розгорівся хтось пісню почина
Коли на крилях Ночі на Землю Сон злетить
Я в Темний Гай виходжу з Квітками гомонить

Приспів: повторюються два останні рядки в''язки.

Мені шептала Роза я бачила його
Учора вранці рвав він квітки з куща мого
Шептав мені Барвінок і я його стрічав
Засмучений ходив він весь цвіт мій потоптав

Ти бачиш що заснув я і сплю уже давно
Закриті в мене двері зачинене вікно
Шепочуцця Троянди Акація зітха
Забудь-забудь про нього тебе ж він не коха','[''pisni.org.ua'', ''cat:philosophic'', ''cat:romansy'', ''Філософські пісні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_217457'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_217457','Надворі червоніє синіє далина','Надворі червоніє синіє далина
Десь вогник розгорівся хтось пісню почина
Коли на крилях Ночі на Землю Сон злетить
Я в Темний Гай виходжу з Квітками гомонить

Приспів: повторюються два останні рядки в''язки.

Мені шептала Роза я бачила його
Учора вранці рвав він квітки з куща мого
Шептав мені Барвінок і я його стрічав
Засмучений ходив він весь цвіт мій потоптав

Ти бачиш що заснув я і сплю уже давно
Закриті в мене двері зачинене вікно
Шепочуцця Троянди Акація зітха
Забудь-забудь про нього тебе ж він не коха');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_217457_l1','pisniua_217457','YouTube','https://www.youtube.com/watch?v=akyHqjyNM1o','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2174165';
DELETE FROM song_versions WHERE song_id = 'pisniua_2174165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2174165';
DELETE FROM songs WHERE id = 'pisniua_2174165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2174165','Син Божий від Отця','Українська народна пісня. Виконує: Йосип Кишакевич','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.38',NULL,'Преславне Боже чудо світ облетіло,
Христос прийняв на Себе людське тіло!
Діва носила, Сина вродила
І сповиває, й ніжно вкладає
В яслах на сіні Сина в темній яскині.

Ангели всі співають: "Слава Творцеві!"
І творять Його волю внизу в вертепі,
Пастирі грають. Христа вітають,
Осел боїться, а віл трясеться,
Три царі привітали - Бога признали.

Ірод злий і прелютий так розсердився,
Що Володар Предвічний тут народився.
Діти карає, кров проливає,
Батьки ридають, ласки благають,
Ірод лихий не чує, в злості лютує.

Ірода того лихого кара спіткала.
А Божому Дитяти хай буде слава:
Він наш Учитель, всім нам Спаситель,
Він наша втіха, поміч, опіка,
Глянь, Боже, на наш нарід, дай йому волю!','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2174165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2174165','Син Божий від Отця','Преславне Боже чудо світ облетіло,
Христос прийняв на Себе людське тіло!
Діва носила, Сина вродила
І сповиває, й ніжно вкладає
В яслах на сіні Сина в темній яскині.

Ангели всі співають: "Слава Творцеві!"
І творять Його волю внизу в вертепі,
Пастирі грають. Христа вітають,
Осел боїться, а віл трясеться,
Три царі привітали - Бога признали.

Ірод злий і прелютий так розсердився,
Що Володар Предвічний тут народився.
Діти карає, кров проливає,
Батьки ридають, ласки благають,
Ірод лихий не чує, в злості лютує.

Ірода того лихого кара спіткала.
А Божому Дитяти хай буде слава:
Він наш Учитель, всім нам Спаситель,
Він наша втіха, поміч, опіка,
Глянь, Боже, на наш нарід, дай йому волю!');
DELETE FROM song_links WHERE song_id = 'pisniua_2174318';
DELETE FROM song_versions WHERE song_id = 'pisniua_2174318';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2174318';
DELETE FROM songs WHERE id = 'pisniua_2174318';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2174318','А-а-а, котів два','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'А-а-а, котів два,
Сіренькії обидва.
По бережку ходили
Та качечку ловили.
Та качечку в юшечку,
А пір''ячко в подушечку.
Подушечка м''якесенька,
Спи, дитино малесенька.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2174318'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2174318','А-а-а, котів два','А-а-а, котів два,
Сіренькії обидва.
По бережку ходили
Та качечку ловили.
Та качечку в юшечку,
А пір''ячко в подушечку.
Подушечка м''якесенька,
Спи, дитино малесенька.');
DELETE FROM song_links WHERE song_id = 'pisniua_2174354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2174354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2174354';
DELETE FROM songs WHERE id = 'pisniua_2174354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2174354','А-а, а-а, котки два','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'А-а, а-а, котки два,
Шарі-бурі обидва.
А ти котку бурий,
Позаганяй щури.
А ти, котку лисий,
Позаганяй миші.
А ти, волохатий,
Дитя колихати','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''cat:narodni'', ''Дитячі пісні'', ''Колискові'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2174354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2174354','А-а, а-а, котки два','А-а, а-а, котки два,
Шарі-бурі обидва.
А ти котку бурий,
Позаганяй щури.
А ти, котку лисий,
Позаганяй миші.
А ти, волохатий,
Дитя колихати');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2174354_l1','pisniua_2174354','YouTube','https://www.youtube.com/watch?v=vsuk5PTkWlI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2174767';
DELETE FROM song_versions WHERE song_id = 'pisniua_2174767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2174767';
DELETE FROM songs WHERE id = 'pisniua_2174767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2174767','А-а, Галя','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'А-а, Галя
По тину скакала,
На телята впала.
Телята ревнули,
Собаки брехнули,
Сусіди почули,
Попові звістили.
А піп з печі -
Та побив плечі.
А матушка з полу -
Та вибила ногу.
А наймичка з груби -
Та побила груди.
А наймит з ослінця -
Та побив колінця.
Дитина з колиски -
Та побила виски.
А баран з-під лави -
Дитину рогами.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2174767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2174767','А-а, Галя','А-а, Галя
По тину скакала,
На телята впала.
Телята ревнули,
Собаки брехнули,
Сусіди почули,
Попові звістили.
А піп з печі -
Та побив плечі.
А матушка з полу -
Та вибила ногу.
А наймичка з груби -
Та побила груди.
А наймит з ослінця -
Та побив колінця.
Дитина з колиски -
Та побила виски.
А баран з-під лави -
Дитину рогами.');
DELETE FROM song_links WHERE song_id = 'pisniua_2175277';
DELETE FROM song_versions WHERE song_id = 'pisniua_2175277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2175277';
DELETE FROM songs WHERE id = 'pisniua_2175277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2175277','Ане мі не вечер','Українська народна пісня. Виконує: Філарет Колесса, с.Пантна','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.139','Виконує: Філарет Колесса {133}, с.Пантна','1. Ани мі не вечер, ани мі не рано, (2)
На моїм серденьку веселости мало.

2. Співай сой, дівчатко, співай собі гласом, (2)
Бо як ти ся видаш, не будеш, лем часом.

3. Співайте, дівчата, на поли поволи, (2)
Дома не будете, бо не мате коли.

4. Ружа, дівча, ружа, покля не маш мужа, (2)
Як будеш мац мужа, спадне з тебе ружа','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2175277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2175277','Ане мі не вечер','1. Ани мі не вечер, ани мі не рано, (2)
На моїм серденьку веселости мало.

2. Співай сой, дівчатко, співай собі гласом, (2)
Бо як ти ся видаш, не будеш, лем часом.

3. Співайте, дівчата, на поли поволи, (2)
Дома не будете, бо не мате коли.

4. Ружа, дівча, ружа, покля не маш мужа, (2)
Як будеш мац мужа, спадне з тебе ружа');
DELETE FROM song_links WHERE song_id = 'pisniua_217495';
DELETE FROM song_versions WHERE song_id = 'pisniua_217495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_217495';
DELETE FROM songs WHERE id = 'pisniua_217495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_217495','Земне кохання','Музика: Ярослав Борута Слова: Михайло Тавшунський','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я без тебе жила увi снi,
Свiт мiй зовсiм не мав кольорiв.
Ти до мене прийшло навеснi,
Коли мак майорiв.

Приспiв:
Чисте земне кохання,
Хто про тебе не мрiє?
Це до зiрок прохання
Пломенить i надiєю грiє.

Я без тебе не чула пiснi
Нi зiрок, нi людей, нi птахiв.
Ти прийшло, i менi прояснiв
Спiв весняних струмкiв.

Приспiв.

Ти прийшло, запалило вогнi,
Все змiнило на краще навкруг.
Твiй дарунок вiд неба менi -
Мiй коханий, мiй друг.

Чисте земне кохання,
Хто про тебе не мрiє?
Це до зiрок прохання
Пломенить чи жевріє.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_217495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_217495','Земне кохання','Я без тебе жила увi снi,
Свiт мiй зовсiм не мав кольорiв.
Ти до мене прийшло навеснi,
Коли мак майорiв.

Приспiв:
Чисте земне кохання,
Хто про тебе не мрiє?
Це до зiрок прохання
Пломенить i надiєю грiє.

Я без тебе не чула пiснi
Нi зiрок, нi людей, нi птахiв.
Ти прийшло, i менi прояснiв
Спiв весняних струмкiв.

Приспiв.

Ти прийшло, запалило вогнi,
Все змiнило на краще навкруг.
Твiй дарунок вiд неба менi -
Мiй коханий, мiй друг.

Чисте земне кохання,
Хто про тебе не мрiє?
Це до зiрок прохання
Пломенить чи жевріє.');
DELETE FROM song_links WHERE song_id = 'pisniua_2174697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2174697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2174697';
DELETE FROM songs WHERE id = 'pisniua_2174697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2174697','Ой у садочку павоньки ходять','Українська народна пісня. Виконує: Філарет Колесса','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.50','Виконує: Філарет Колесса (запис)','Ой у садочку павоньки ходять,
Павоньки ходять, пір''ячко ронять. (2)

Ходить за ними красна дівонька,
Пір''я збирає, вінок збиває. (2)

Та схопилися буйні вітрове,
Буйні вітрове, шайні дощове. (2)

Шайнули вільком у тихі води,
У тихі води, в глибокий Дунай. (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2174697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2174697','Ой у садочку павоньки ходять','Ой у садочку павоньки ходять,
Павоньки ходять, пір''ячко ронять. (2)

Ходить за ними красна дівонька,
Пір''я збирає, вінок збиває. (2)

Та схопилися буйні вітрове,
Буйні вітрове, шайні дощове. (2)

Шайнули вільком у тихі води,
У тихі води, в глибокий Дунай. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2175498';
DELETE FROM song_versions WHERE song_id = 'pisniua_2175498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2175498';
DELETE FROM songs WHERE id = 'pisniua_2175498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2175498','Зажурилась Україна','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга:Українські народні пісні;В 2 книгах;Київ,"Мистецтво"1955;Кн1,стр.27.',NULL,'Зажурилась Україна,
Що нігде прожити:
Гей, витоптала орда кіньми
Маленькії діти!
Ой маленьких витоптала,
Великих забрала,
Назад руки постягала,
Під хана погнала.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2175498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2175498','Зажурилась Україна','Зажурилась Україна,
Що нігде прожити:
Гей, витоптала орда кіньми
Маленькії діти!
Ой маленьких витоптала,
Великих забрала,
Назад руки постягала,
Під хана погнала.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2175498_l1','pisniua_2175498','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2175199';
DELETE FROM song_versions WHERE song_id = 'pisniua_2175199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2175199';
DELETE FROM songs WHERE id = 'pisniua_2175199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2175199','А за нашим хижом сиви волчата','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.126','Виконує: Іванна Макара, с.Висова','1. А за нашом хижом сиви волчата. (2)
Младий я ся женив, младий я ся женив,
Плачут дівчата.

2. Не ошукав я ся яко на віні. (2)
Воли може продац, воли може продац,
Але жену ні.

3. Ой, бо воли продаст за триста злотих, (2)
Ой, але жену ні, ой, але жену ні,
За сто дукатов.

4. Ой, який то тяжкий тот стан малженьский, (2)
Ой, ищи тяжший, ой, ищи тяжший,
Як камін млиньский.

5. Ой, камін млиньский вера хлоп рушит, (2)
Ой, а стан малженьский, ой, а стан малженьский
Лем Бог розлучит','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:socialno-pobutovi'', ''Лемківські пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2175199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2175199','А за нашим хижом сиви волчата','1. А за нашом хижом сиви волчата. (2)
Младий я ся женив, младий я ся женив,
Плачут дівчата.

2. Не ошукав я ся яко на віні. (2)
Воли може продац, воли може продац,
Але жену ні.

3. Ой, бо воли продаст за триста злотих, (2)
Ой, але жену ні, ой, але жену ні,
За сто дукатов.

4. Ой, який то тяжкий тот стан малженьский, (2)
Ой, ищи тяжший, ой, ищи тяжший,
Як камін млиньский.

5. Ой, камін млиньский вера хлоп рушит, (2)
Ой, а стан малженьский, ой, а стан малженьский
Лем Бог розлучит');
DELETE FROM song_links WHERE song_id = 'pisniua_2176096';
DELETE FROM song_versions WHERE song_id = 'pisniua_2176096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2176096';
DELETE FROM songs WHERE id = 'pisniua_2176096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2176096','А кілько то було той моєй утіхи','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.290','Виконує: Магдалина Байко, с.Яблониця','1. А кілько то було той моєй утіхи,
Щом ся находила вліті на оріхи.
Прогнівалам милого, не розмовлям до нього.

2. Маю я милого од нас недалечко,
Такий гарний, красний, як тото яблочко,
Так си красно співа, а ще краще танцює.

3. Барз красно співає і красно танцює,
Ручком обіймає, личко поцілує.
Перепросив Яничок, буде ставав на рушничок','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2176096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2176096','А кілько то було той моєй утіхи','1. А кілько то було той моєй утіхи,
Щом ся находила вліті на оріхи.
Прогнівалам милого, не розмовлям до нього.

2. Маю я милого од нас недалечко,
Такий гарний, красний, як тото яблочко,
Так си красно співа, а ще краще танцює.

3. Барз красно співає і красно танцює,
Ручком обіймає, личко поцілує.
Перепросив Яничок, буде ставав на рушничок');
DELETE FROM song_links WHERE song_id = 'pisniua_2175797';
DELETE FROM song_versions WHERE song_id = 'pisniua_2175797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2175797';
DELETE FROM songs WHERE id = 'pisniua_2175797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2175797','В городі вишенька, в городі калина','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.223','Виконує: М.Ґбур, с.Бортне','1. В городі вишенька, в городі калина,
Любив я дівчину, а мене дівчина.
Любив я дівчину три літа, три літа,
Трудно било жити на світі.
Любив я дівчину три літа, три літа,
Трудно било жити на світі.

2. Осідлав коника, осідлав другого,
Пішов до дівчини, ци буде што з того?
Ци буде што з того, а ци ні а ци ні
Не жали серденько ти мені.
Ци буде што з того, а ци ні а ци ні
Не жали серденько ти мені.

3. Чого ж би я тобі серденько жалила,
То не моя вина, але мамусіна.
Бо як мамця скаже, так буде,
Зі мною маєтку не буде.
Бо як мамця скаже, так буде,
Зі мною маєтку не буде.

4. А мені маєтку не треба, не треба,
А мені маєтку не треба, не треба.
Бо ти мій маєток, самая, самая,
Як на небі зоря ясная...
Бо ти мій маєток, самая, самая,
Як на небі зоря ясная','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2175797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2175797','В городі вишенька, в городі калина','1. В городі вишенька, в городі калина,
Любив я дівчину, а мене дівчина.
Любив я дівчину три літа, три літа,
Трудно било жити на світі.
Любив я дівчину три літа, три літа,
Трудно било жити на світі.

2. Осідлав коника, осідлав другого,
Пішов до дівчини, ци буде што з того?
Ци буде што з того, а ци ні а ци ні
Не жали серденько ти мені.
Ци буде што з того, а ци ні а ци ні
Не жали серденько ти мені.

3. Чого ж би я тобі серденько жалила,
То не моя вина, але мамусіна.
Бо як мамця скаже, так буде,
Зі мною маєтку не буде.
Бо як мамця скаже, так буде,
Зі мною маєтку не буде.

4. А мені маєтку не треба, не треба,
А мені маєтку не треба, не треба.
Бо ти мій маєток, самая, самая,
Як на небі зоря ясная...
Бо ти мій маєток, самая, самая,
Як на небі зоря ясная');
DELETE FROM song_links WHERE song_id = 'pisniua_2175124';
DELETE FROM song_versions WHERE song_id = 'pisniua_2175124';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2175124';
DELETE FROM songs WHERE id = 'pisniua_2175124';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2175124','А хто бачив, а хто чув?','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.107','Виконує: Ярослав Ярославенко {61}, с.Висова','1. А хто бачив, а хто чув?
А хто в мене гнеска був?
Соловія, Соловія, чуд, чуд!
Канарі оченька, ох, ох, ох!

2. Був у мене попів син,
Давав мені волів сім,
Соловія, Соловія, чуд, чуд!
Канарі оченька, ох, ох, ох!

3. А волів я не взяла,
Била м шестьма орала,
Соловія, Соловія, чуд, чуд!
Канарі оченька, ох, ох, ох!

4. А семого продала,
Погонича наняла.
Соловія, Соловія, чуд, чуд!
Канарі оченька, ох, ох, ох!','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2175124'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2175124','А хто бачив, а хто чув?','1. А хто бачив, а хто чув?
А хто в мене гнеска був?
Соловія, Соловія, чуд, чуд!
Канарі оченька, ох, ох, ох!

2. Був у мене попів син,
Давав мені волів сім,
Соловія, Соловія, чуд, чуд!
Канарі оченька, ох, ох, ох!

3. А волів я не взяла,
Била м шестьма орала,
Соловія, Соловія, чуд, чуд!
Канарі оченька, ох, ох, ох!

4. А семого продала,
Погонича наняла.
Соловія, Соловія, чуд, чуд!
Канарі оченька, ох, ох, ох!');
DELETE FROM song_links WHERE song_id = 'pisniua_2176313';
DELETE FROM song_versions WHERE song_id = 'pisniua_2176313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2176313';
DELETE FROM songs WHERE id = 'pisniua_2176313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2176313','Абрам','Музика: Віктор Морозов Слова: Андрій Панчишин. Виконує: Віктор Морозов','uk','ukraine_1991',NULL,NULL,'http://www.mo-productions.com/',NULL,'На пляцу Пруса жив Абрам
він сало їв і пив сто грам
в Абрама був порядний пес
погнав за сучкою і щез...

Абрам
Абрам
па-ра-ба-рам

минуло літо і зима
Абрама з нами вже нема
поїхав він в далекий край
йому сказали шо там рай

Землі на самому краю
жиє Абрам в своїм раю
і знов на дроті Тель-Авів:
ну як там наше місто Львів?

Абрам
Абрам
па-ра-ба-рам

над пляцом Пруса сім сорок
танцюют чемно "сім-сорок"
ти сам обрав собі маршрут
але тебе бракує тут

який дивний той білий світ
ти нинька гість
а був сусід
кошерне сало і сто грам
для тебе завше є
Абрам
Абрам
па-ра-ба-рам','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2176313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2176313','Абрам','На пляцу Пруса жив Абрам
він сало їв і пив сто грам
в Абрама був порядний пес
погнав за сучкою і щез...

Абрам
Абрам
па-ра-ба-рам

минуло літо і зима
Абрама з нами вже нема
поїхав він в далекий край
йому сказали шо там рай

Землі на самому краю
жиє Абрам в своїм раю
і знов на дроті Тель-Авів:
ну як там наше місто Львів?

Абрам
Абрам
па-ра-ба-рам

над пляцом Пруса сім сорок
танцюют чемно "сім-сорок"
ти сам обрав собі маршрут
але тебе бракує тут

який дивний той білий світ
ти нинька гість
а був сусід
кошерне сало і сто грам
для тебе завше є
Абрам
Абрам
па-ра-ба-рам');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2176313_l1','pisniua_2176313','YouTube','https://www.youtube.com/watch?v=3VYoGoAaEQ4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2175726';
DELETE FROM song_versions WHERE song_id = 'pisniua_2175726';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2175726';
DELETE FROM songs WHERE id = 'pisniua_2175726';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2175726','Пущу коня','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга:Українські народні пісні;В 2 книгах;Київ,"Мистецтво"1955;Кн1,стр.42','Пісні з подібними мотивами в віршах: 1 2 3 4','Пущу коня, ой, на яр, на долину,
Ой сам ляжу спати, ой, на пів, на часину.

Ой не спав козак, ой, не час, не годину,
Ой да де взялася, ой, молода дівчина.

Де взялася, ой, молода дівчина,
Ой да зірвала у саду травиченьку.

Та зірвала у саду травиченьку,
Ой да вмочила у воду-криниченьку.

Та вмочила у воду-криниченьку,
Ой да та вдарила парня по личеньку.

Вставай, парню! Ой годі тобі спати!
Ой да наїхали, ой, турки і татари!

Наїхали, ой, турки і татари,
Ой да хотять тебе, ой, парня зарубати.

Хотять тебе, ой, парня зарубати,
Коня вороного із собою забрати.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2175726'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2175726','Пущу коня','Пущу коня, ой, на яр, на долину,
Ой сам ляжу спати, ой, на пів, на часину.

Ой не спав козак, ой, не час, не годину,
Ой да де взялася, ой, молода дівчина.

Де взялася, ой, молода дівчина,
Ой да зірвала у саду травиченьку.

Та зірвала у саду травиченьку,
Ой да вмочила у воду-криниченьку.

Та вмочила у воду-криниченьку,
Ой да та вдарила парня по личеньку.

Вставай, парню! Ой годі тобі спати!
Ой да наїхали, ой, турки і татари!

Наїхали, ой, турки і татари,
Ой да хотять тебе, ой, парня зарубати.

Хотять тебе, ой, парня зарубати,
Коня вороного із собою забрати.');
DELETE FROM song_links WHERE song_id = 'pisniua_2175216';
DELETE FROM song_versions WHERE song_id = 'pisniua_2175216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2175216';
DELETE FROM songs WHERE id = 'pisniua_2175216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2175216','Весільні приспівки','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.130','Існують варіанти тексту, з ними можна ознайомитися на сторінці доданих нот. Виконує: Михайло Соболєвський','1. Зелена ліщина орішки зродила,
Нераз мене мамця про козака била. (2)

2. Била мене мати, іще буде бити,
Покля я престану козака любити. (2)

3. А я не престану, покля не достану
Личка рум''яного, гарненького стану. (2)

4. Над водою стою і в воду дивлюся,
Таку думку маю - піду утоплюся! (2)

5. Не топися, дівче, не губ свою душу,
Хоц бис била найбідніша, а тя взяти мушу! (2)

6. Мамусь моя, мамусь, лем єдну мя мате,
Подумайте собі, за кого мя дате?','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:vesilni'', ''Лемківські пісні'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2175216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2175216','Весільні приспівки','1. Зелена ліщина орішки зродила,
Нераз мене мамця про козака била. (2)

2. Била мене мати, іще буде бити,
Покля я престану козака любити. (2)

3. А я не престану, покля не достану
Личка рум''яного, гарненького стану. (2)

4. Над водою стою і в воду дивлюся,
Таку думку маю - піду утоплюся! (2)

5. Не топися, дівче, не губ свою душу,
Хоц бис била найбідніша, а тя взяти мушу! (2)

6. Мамусь моя, мамусь, лем єдну мя мате,
Подумайте собі, за кого мя дате?');
DELETE FROM song_links WHERE song_id = 'pisniua_2175961';
DELETE FROM song_versions WHERE song_id = 'pisniua_2175961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2175961';
DELETE FROM songs WHERE id = 'pisniua_2175961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2175961','Ой з-за лісу, із-за темного','(Пісня про Нечая). Українська народна пісня. Виконує: Михайло Коваль','uk','ukraine_before_1917',NULL,NULL,'Книга:Українські народні пісні;В 2 книгах;Київ,"Мистецтво"1955;Кн.1,с.51-53',NULL,'Ой з-за лісу, із-за темного,із-під Чорного гаю,
Як крикнули та козаченьки:"Утікаймо, Нечаю!"|(2)

Ой як же ми, козаченьки, будем утікати,
Свою славу козацькую під ноги топтати?|(2)

Ой поставив та козак Нечай та сторожу на місті,
А сам пішов до кумасеньки щуки-риби їсти.|(2)

Не вспів козак, не вспів Нечай кінець столу сісти,
Подивиться в віконечко - аж нема сторожі на місті.|(2)

Не вспів козак, не вспів Нечай щуки-риби їсти,
Ой як гляне в віконечко - аж ляшеньки в місті.|(2)

Ой як крикне та козак Нечай на джуру малого:
"Сідлай, хлопче, сідлай коня вороного, а під мене та другого!|(2)

Ой підтягай, милий хлопче, попруги істуга,-
Буде на ляхів, на тих панів, велика потуга!"|(2)

Не вcпів козак, не вспів Нечай на коника сісти,
Як став ляхів, як став панків, як снопики класти!|(2)

Не вспів козак, не вспів Нечай на коника сісти,
Як став ляшків, як став панків, як капусту сікти.|(2)

Обернувся козак Нечай од брами до брами,-
Виклав ляшків, виклав панків у чотири лави.|(2)

Ой як глянув козак Нечай на джуру малого,-
Кладе джура, кладе малий ще лучче й од його!|(2)

Ой як глянув козак Нечай на правую руку,-
Не вискочить кінь козацький із лядського трупу.|(2)

Ой як гляне козак Нечай та на лівеє плече,-
За ним річка кривавая, що й конем не втече!|(2)

Не за великий час, та за малую годину
Покотилась Нечаєва голівонька в долину.|(2)

Ой збіглися та козаченьки, стали сумувати:
"Ой де б же нам Нечаєве тіло поховати?|(2)

Ой, зійдемось,миле браття, на високу могилу
Та посадим, миле браття, червону калину,
Щоб зійшла лицарська слава на всю Україну"','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2175961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2175961','Ой з-за лісу, із-за темного','Ой з-за лісу, із-за темного,із-під Чорного гаю,
Як крикнули та козаченьки:"Утікаймо, Нечаю!"|(2)

Ой як же ми, козаченьки, будем утікати,
Свою славу козацькую під ноги топтати?|(2)

Ой поставив та козак Нечай та сторожу на місті,
А сам пішов до кумасеньки щуки-риби їсти.|(2)

Не вспів козак, не вспів Нечай кінець столу сісти,
Подивиться в віконечко - аж нема сторожі на місті.|(2)

Не вспів козак, не вспів Нечай щуки-риби їсти,
Ой як гляне в віконечко - аж ляшеньки в місті.|(2)

Ой як крикне та козак Нечай на джуру малого:
"Сідлай, хлопче, сідлай коня вороного, а під мене та другого!|(2)

Ой підтягай, милий хлопче, попруги істуга,-
Буде на ляхів, на тих панів, велика потуга!"|(2)

Не вcпів козак, не вспів Нечай на коника сісти,
Як став ляхів, як став панків, як снопики класти!|(2)

Не вспів козак, не вспів Нечай на коника сісти,
Як став ляшків, як став панків, як капусту сікти.|(2)

Обернувся козак Нечай од брами до брами,-
Виклав ляшків, виклав панків у чотири лави.|(2)

Ой як глянув козак Нечай на джуру малого,-
Кладе джура, кладе малий ще лучче й од його!|(2)

Ой як глянув козак Нечай на правую руку,-
Не вискочить кінь козацький із лядського трупу.|(2)

Ой як гляне козак Нечай та на лівеє плече,-
За ним річка кривавая, що й конем не втече!|(2)

Не за великий час, та за малую годину
Покотилась Нечаєва голівонька в долину.|(2)

Ой збіглися та козаченьки, стали сумувати:
"Ой де б же нам Нечаєве тіло поховати?|(2)

Ой, зійдемось,миле браття, на високу могилу
Та посадим, миле браття, червону калину,
Щоб зійшла лицарська слава на всю Україну"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2175961_l1','pisniua_2175961','YouTube','https://www.youtube.com/watch?v=8LrvRvzFY-g','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2175961_l2','pisniua_2175961','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2175420';
DELETE FROM song_versions WHERE song_id = 'pisniua_2175420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2175420';
DELETE FROM songs WHERE id = 'pisniua_2175420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2175420','Гаю мій зелений','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.198','Виконує: Михайло Бугель, с.Мшана','1.  Гаю, гаю мій зелений, гаю мій густий,
Ой, чи прийде до мня гнеска, (2)
Тот мій миленький?

2. Ой, пасли зме разом уці,
На той убочи, (2)
А мій милий, наймиленьший, (2)
Прийшов аж гночи.

3. Дує вітрик з полонини
На те овечки, (2)
Кед ня шугай щиро любит, (2)
Та прийде гнески','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2175420'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2175420','Гаю мій зелений','1.  Гаю, гаю мій зелений, гаю мій густий,
Ой, чи прийде до мня гнеска, (2)
Тот мій миленький?

2. Ой, пасли зме разом уці,
На той убочи, (2)
А мій милий, наймиленьший, (2)
Прийшов аж гночи.

3. Дує вітрик з полонини
На те овечки, (2)
Кед ня шугай щиро любит, (2)
Та прийде гнески');
DELETE FROM song_links WHERE song_id = 'pisniua_2176175';
DELETE FROM song_versions WHERE song_id = 'pisniua_2176175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2176175';
DELETE FROM songs WHERE id = 'pisniua_2176175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2176175','Листопад','Музика: Станіслав Городинський Слова: невідомий','uk','ukraine_1991',NULL,NULL,'Запис із аудіофайлу',NULL,'Осінь-красуня  в жовтім намисті
До себе кличе і нас п''янить.
На твої коси падає листя -
Нам не забути золота мить.

Приспів:
Цей листопад
По твоїх косах жовте листя розсипає.
Цей листопад
Нам першу зустріч ту, осінню, пригадає.
В цей листопад
Підемо ми удвох осінніми стежками,
Звідки назад
Одна дорога  нам залишиться, кохана.

Золотом сипле осінь багряна,
Душу чарує вона мені.
Крім поцілунків тобі, кохана,
Я подарую осені дні.

Приспів.

Осінь мрійлива, осінь журлива,
Згадку залишить вона для нас.
Колись згадаємо, що осінь мила,
Колись згадаємо ми про цей час.

Приспів.    Звукову доріжку знято з відеокліпу (mp3, 128 kbps)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2176175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2176175','Листопад','Осінь-красуня  в жовтім намисті
До себе кличе і нас п''янить.
На твої коси падає листя -
Нам не забути золота мить.

Приспів:
Цей листопад
По твоїх косах жовте листя розсипає.
Цей листопад
Нам першу зустріч ту, осінню, пригадає.
В цей листопад
Підемо ми удвох осінніми стежками,
Звідки назад
Одна дорога  нам залишиться, кохана.

Золотом сипле осінь багряна,
Душу чарує вона мені.
Крім поцілунків тобі, кохана,
Я подарую осені дні.

Приспів.

Осінь мрійлива, осінь журлива,
Згадку залишить вона для нас.
Колись згадаємо, що осінь мила,
Колись згадаємо ми про цей час.

Приспів.    Звукову доріжку знято з відеокліпу (mp3, 128 kbps)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2176175_l1','pisniua_2176175','YouTube','https://www.youtube.com/watch?v=i1veu3HB7Dg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2176175_l2','pisniua_2176175','YouTube','https://www.youtube.com/watch?v=kyflA8jtZ7A','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2175818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2175818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2175818';
DELETE FROM songs WHERE id = 'pisniua_2175818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2175818','Боже, Боже, што ся стало','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.228','Виконує: Ольга Мурайко, с.Одрехова','1. Боже, Боже, што ся стало?
Же на яблони, же на яблони яблок мало?

2. Чи не било, чи опали?
Чи їх хлопці обирвали? (2)

3. Били, били, але квасни,
Обірвали їх хлопці красни. (2)

4. Лем бо хлопці приходили,
Ми бо яблок не щадили. (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2175818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2175818','Боже, Боже, што ся стало','1. Боже, Боже, што ся стало?
Же на яблони, же на яблони яблок мало?

2. Чи не било, чи опали?
Чи їх хлопці обирвали? (2)

3. Били, били, але квасни,
Обірвали їх хлопці красни. (2)

4. Лем бо хлопці приходили,
Ми бо яблок не щадили. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2175818_l1','pisniua_2175818','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
