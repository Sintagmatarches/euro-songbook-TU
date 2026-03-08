DELETE FROM song_links WHERE song_id = 'pisniua_32525';
DELETE FROM song_versions WHERE song_id = 'pisniua_32525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_32525';
DELETE FROM songs WHERE id = 'pisniua_32525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_32525','Стоїть гора високая','Музика: Микола Лисенко Слова: Леонід Глібов. Виконує: Квітка Цісик','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Стоїть гора високая,
А під горою гай, гай, гай
Зелений гай, густесенький
Неначе справді рай.

Під гаєм в''ється річенька,
Мов скло вона блистить.
Долиною зеленою,
Кудись вона біжить.

Під берегом у затінку
Прив''язані стоять човни.
Три верби там схилилися,
Мов журяться вони.

Як хороше, як весело
На білім світі жить!
Чого ж у мене серденько
І мліє, і болить?

Болить воно та журиться,
Що вернеться весна,
А молодість не вернеться,
Не вернеться вона!

До вас ще верби ви мої,
Повернеться весна.
А молодість не вернеться,
Не вернеться вона!','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:nostalgia'', ''cat:romansy'', ''Пісні про красу природи'', ''Пісні з ностальгічними мотивами'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_32525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_32525','Стоїть гора високая','Стоїть гора високая,
А під горою гай, гай, гай
Зелений гай, густесенький
Неначе справді рай.

Під гаєм в''ється річенька,
Мов скло вона блистить.
Долиною зеленою,
Кудись вона біжить.

Під берегом у затінку
Прив''язані стоять човни.
Три верби там схилилися,
Мов журяться вони.

Як хороше, як весело
На білім світі жить!
Чого ж у мене серденько
І мліє, і болить?

Болить воно та журиться,
Що вернеться весна,
А молодість не вернеться,
Не вернеться вона!

До вас ще верби ви мої,
Повернеться весна.
А молодість не вернеться,
Не вернеться вона!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_32525_l1','pisniua_32525','YouTube','https://www.youtube.com/watch?v=HIxtJPXI8uA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_32525_l2','pisniua_32525','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3252261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3252261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3252261';
DELETE FROM songs WHERE id = 'pisniua_3252261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3252261','Гімн олімпійців України','Музика: Геннадій Татарченко Слова: Юрій Рибчинський','uk','ukraine_1991',NULL,NULL,'На поклик Олімпу. Київ: "Олімпійська література". - 1996 р.',NULL,'Україно, нас благослови!
Дай нам крила, щоб важкі дороги
Нас вели до перемоги.
Україно нас благослови!
Ми клянемось славити Тебе,
Щоб на світі знали всі народи
Твою силу, Твою вроду!
Ми клянемось славити тебе!

Приспів:
Ти зоряна, Ти нескорена,
Ти - натхнення джерело.
Запали теплом своїх долонь
Олімпійський в серцях вогонь!
Олімпійський запали вогонь!
Слався, рідна земле,
Слався, щедре поле,
Слався, слався, небо синє,
Слався, наша сила,
Слався, наша доле,
Слався Україно!

Світлий краю, твій величний Стяг
Хай дарує нам юначу вдачу,
Щоб з Олімпу завжди бачить
Сльози щастя на твоїх очах!

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3252261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3252261','Гімн олімпійців України','Україно, нас благослови!
Дай нам крила, щоб важкі дороги
Нас вели до перемоги.
Україно нас благослови!
Ми клянемось славити Тебе,
Щоб на світі знали всі народи
Твою силу, Твою вроду!
Ми клянемось славити тебе!

Приспів:
Ти зоряна, Ти нескорена,
Ти - натхнення джерело.
Запали теплом своїх долонь
Олімпійський в серцях вогонь!
Олімпійський запали вогонь!
Слався, рідна земле,
Слався, щедре поле,
Слався, слався, небо синє,
Слався, наша сила,
Слався, наша доле,
Слався Україно!

Світлий краю, твій величний Стяг
Хай дарує нам юначу вдачу,
Щоб з Олімпу завжди бачить
Сльози щастя на твоїх очах!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3251525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3251525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3251525';
DELETE FROM songs WHERE id = 'pisniua_3251525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3251525','Доня моя, доня','Музика: Олександр Жилінський Слова: Олексій Кононенко. Виконує: Олександр Жилінський','uk','ukraine_1991',NULL,NULL,'архів композитора',NULL,'Останні літні дні
Поклали на долоні
Щасливому мені
Мою маленьку доню.
День сонце відчиняв
Веселе і рум''яне,
Коли я цілував
Своє дитя кохане.

Приспів:
У моєї доні оченята чорні,
У моєї доні вії, наче мрії.
Доня моя, доня,
Доле моя, доле,
Ти - мої тривоги, ти - мої надії.

Забулись пелюшки,
Ті ягідочки шлюбу.
Зосталися ляльки
В селі у баби Люби.
День сонце відчиняв,
Тулився рік до року.
Я доню зустрічав
З останнього уроку.

Приспів.

День сонце відчиня
Одвіку і довіку.
Зібралася рідня,
Стараються музики.
До сонця чашу п''ю,
Схиляюся в поклоні.
Я заміж віддаю
Свою кохану доню.

Приспів','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3251525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3251525','Доня моя, доня','Останні літні дні
Поклали на долоні
Щасливому мені
Мою маленьку доню.
День сонце відчиняв
Веселе і рум''яне,
Коли я цілував
Своє дитя кохане.

Приспів:
У моєї доні оченята чорні,
У моєї доні вії, наче мрії.
Доня моя, доня,
Доле моя, доле,
Ти - мої тривоги, ти - мої надії.

Забулись пелюшки,
Ті ягідочки шлюбу.
Зосталися ляльки
В селі у баби Люби.
День сонце відчиняв,
Тулився рік до року.
Я доню зустрічав
З останнього уроку.

Приспів.

День сонце відчиня
Одвіку і довіку.
Зібралася рідня,
Стараються музики.
До сонця чашу п''ю,
Схиляюся в поклоні.
Я заміж віддаю
Свою кохану доню.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_3257222';
DELETE FROM song_versions WHERE song_id = 'pisniua_3257222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3257222';
DELETE FROM songs WHERE id = 'pisniua_3257222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3257222','Ой, устану ранесенько','Українська народна пісня. Виконує: Черкаський народний хор','uk','ukraine_before_1917',NULL,NULL,NULL,'Обробка укр. нар. пісні композитором Євгеном Кухарцем.','Ой, устану ранесенько,
Вмию личко білесенько,
Ще сонечко не зійшло -
В мене личко розцвіло.

Ой, пішла я та й по сіно,
В мене личко зрум''яніло.
Ой, чи брала, чи не брала -
Василечка пострічала.

Василечку, серце моє,
Нав''язали в''язок двоє.
А він в''язки дов''язує
Та й до мене підморгує.

Каже: "Дівко чепурненька,
Сама станом та й гарненька,
Ось в''язки я нав''язую,
Обніму та й поцілую".

"Личко не дам цілувати,
Віднеси сіно до хати.
А як любиш, не жартуєш,
Біля хати поцілуєш".

До роботи він береться,
Несе сіно - спина гнеться,
Сіно несе, помагає,
Хай же сватів засилає','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3257222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3257222','Ой, устану ранесенько','Ой, устану ранесенько,
Вмию личко білесенько,
Ще сонечко не зійшло -
В мене личко розцвіло.

Ой, пішла я та й по сіно,
В мене личко зрум''яніло.
Ой, чи брала, чи не брала -
Василечка пострічала.

Василечку, серце моє,
Нав''язали в''язок двоє.
А він в''язки дов''язує
Та й до мене підморгує.

Каже: "Дівко чепурненька,
Сама станом та й гарненька,
Ось в''язки я нав''язую,
Обніму та й поцілую".

"Личко не дам цілувати,
Віднеси сіно до хати.
А як любиш, не жартуєш,
Біля хати поцілуєш".

До роботи він береться,
Несе сіно - спина гнеться,
Сіно несе, помагає,
Хай же сватів засилає');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3257222_l1','pisniua_3257222','YouTube','https://www.youtube.com/watch?v=G1I8GsGYU2k','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3257222_l2','pisniua_3257222','YouTube','https://www.youtube.com/watch?v=pgwXOse9UXI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3257222_l3','pisniua_3257222','YouTube','https://www.youtube.com/watch?v=1_E84cThoSo','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3257222_l4','pisniua_3257222','YouTube','https://www.youtube.com/watch?v=KcmKpQU7Ixk','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3257222_l5','pisniua_3257222','YouTube','https://www.youtube.com/watch?v=o_1y8SWX1uc','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_325467';
DELETE FROM song_versions WHERE song_id = 'pisniua_325467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_325467';
DELETE FROM songs WHERE id = 'pisniua_325467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_325467','Ой я дiвчина Полтавка','Музика: Микола Лисенко Слова: Іван Котляревський','uk','ukraine_before_1917',NULL,NULL,'Текст п''єси на сайті: http://lib.ru/SU/UKRAINA/KOTLYAREVS_KIJ/natalka_.txt','Адаптовано до сучасного правопису. Останні десятиліття гарно виконувала цю пісню Народна артиска України Марія Стефюк.','Ой я дiвчина Полтавка,
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
DELETE FROM song_links WHERE song_id = 'pisniua_3251065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3251065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3251065';
DELETE FROM songs WHERE id = 'pisniua_3251065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3251065','Попід садочок, попід калину','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські народні пісні з нотами. Кого люблю — Мій буде / Упоряд. Г. І. Ганзбурґ; Худож.-оформлювач Л. Д. Киркач. — Харків: Фоліо, 2004. — 287 с.',NULL,'Попід садочок, попід калину        |
Сподобав козак гарну дівчину.      | (2)

Гарна дівчина, гарного роду.       |
З нев ся оженю, не дам нікому.     | (2)

Цеї осені мав ся женити,           |
Взяли до війська — мушу служити.   | (2)

Взяли до війська, як пташку з гаю, |
Ой, Боже, Боже, в чужім я краю.    | (2)

Ой, Боже, Боже, в чужім я краю,    |
Щастя і долі я вже не маю.         | (2)

Пишу листочок — папір рожевий,     |
Служу, серденько, чекай на мене.   | (2)

Дівчина взяла, лист відписала,     |
Служи, козаче, буду чекала!        | (2)','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3251065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3251065','Попід садочок, попід калину','Попід садочок, попід калину        |
Сподобав козак гарну дівчину.      | (2)

Гарна дівчина, гарного роду.       |
З нев ся оженю, не дам нікому.     | (2)

Цеї осені мав ся женити,           |
Взяли до війська — мушу служити.   | (2)

Взяли до війська, як пташку з гаю, |
Ой, Боже, Боже, в чужім я краю.    | (2)

Ой, Боже, Боже, в чужім я краю,    |
Щастя і долі я вже не маю.         | (2)

Пишу листочок — папір рожевий,     |
Служу, серденько, чекай на мене.   | (2)

Дівчина взяла, лист відписала,     |
Служи, козаче, буду чекала!        | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3253020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3253020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3253020';
DELETE FROM songs WHERE id = 'pisniua_3253020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3253020','Передзвони мені пізніше','Музика: Гайдамаки Слова: Олександр Ярмола. Виконує: Гайдамаки','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Я занурився у бізнес із головою свій,
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
DELETE FROM song_links WHERE song_id = 'pisniua_325168';
DELETE FROM song_versions WHERE song_id = 'pisniua_325168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_325168';
DELETE FROM songs WHERE id = 'pisniua_325168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_325168','Прощальна','(Наступив прощання час...)','uk','ukraine_1991',NULL,NULL,'З пам''яті за емігрантськими аудіозаписами українських канадців 70-х років ХХ ст.','Заключна концертна пісня одного з емігрантських українських гуртів.','Наступив прощання час -
Розстаємось ми,
Хай залишаться у нас         |(2)
В серці ці пісні.            |

Пісні, що до нас приходять
З далеких Карпат,
Пісні, що в собі приносять   |(2)
Український лад.             |

Про ніжні карпатські ночі,
До світання спів,
про палкі дівочі очі,        |(2)
Про любов без слів.          |

Де в зелених верховинах
Сонячних Карпат
Камінь щастя і надії -       |(2)
Камінь ізмарагд.             |','[''pisni.org.ua'', ''cat:43'', ''cat:dances'', ''cat:emigration'', ''cat:waltzes'', ''Еміґрантські пісні'', ''Пісні до танцю'', ''Пісні про еміґрацію'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_325168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_325168','Прощальна','Наступив прощання час -
Розстаємось ми,
Хай залишаться у нас         |(2)
В серці ці пісні.            |

Пісні, що до нас приходять
З далеких Карпат,
Пісні, що в собі приносять   |(2)
Український лад.             |

Про ніжні карпатські ночі,
До світання спів,
про палкі дівочі очі,        |(2)
Про любов без слів.          |

Де в зелених верховинах
Сонячних Карпат
Камінь щастя і надії -       |(2)
Камінь ізмарагд.             |');
DELETE FROM song_links WHERE song_id = 'pisniua_3254364';
DELETE FROM song_versions WHERE song_id = 'pisniua_3254364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3254364';
DELETE FROM songs WHERE id = 'pisniua_3254364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3254364','Довго парубочиш','Слова: Йосип Боднар','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Ти, Андрію-парубію,
Довго парубочиш.
Женитися ти боїшся,            |
А може, не хочеш.              | (2)

Подивися сам на себе,
Як ти виглядаєш —
Голова вже трохи сива,         |
На ногу кульгаєш.              | (2)

Цю дівчину, що ти сватав,
Не треба брехати —
Вона тобі обіцяла              |
Ногу порівняти.                | (2)

Вибирай собі дівчину, щоби
Мала чорні брови і довгії коси,
Бо ті білі обскубані           |
Такі злі, як оси.              | (2)

Щоби гарно заспівала,
Легко танцювала,
Щоби тобі по ногах             |
Вона не ставала.               | (2)

Щоб раненько все вставала,
Тихенько ходила,
Щоби тебе до полудня           |
Вона не будила.                | (2)

Щоб раненько все вставала
І піч розпалила,
Щоби тобі на полудне           |
Кулеші зварила.                | (2)

Щоб варила легкі страви, —
Нехай не мудрує,
Бо квасоля і горох             |
Тебе дуже дує.                 | (2)

Щоби вміла все робити
Та ще й віск зливати,
Бо без цеї процедури           |
Ти не зможеш спати.            | (2)

Ти вже вдома не ночуєш,
Спиш, де ніч попаде,
Як немає дівки в Коропці,      |
То йдеш в Горигляди.           | (2)

Мама вже її зустріне
На своїм порозі.
Першу ніч ти з нею будеш спати |
В своїм оборозі.               | (2)

Ти, Андрію-парубію,
Маєш ганджів купу,
Як до року не вженешся,        |
То підеш на групу.             | (2)','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3254364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3254364','Довго парубочиш','Ти, Андрію-парубію,
Довго парубочиш.
Женитися ти боїшся,            |
А може, не хочеш.              | (2)

Подивися сам на себе,
Як ти виглядаєш —
Голова вже трохи сива,         |
На ногу кульгаєш.              | (2)

Цю дівчину, що ти сватав,
Не треба брехати —
Вона тобі обіцяла              |
Ногу порівняти.                | (2)

Вибирай собі дівчину, щоби
Мала чорні брови і довгії коси,
Бо ті білі обскубані           |
Такі злі, як оси.              | (2)

Щоби гарно заспівала,
Легко танцювала,
Щоби тобі по ногах             |
Вона не ставала.               | (2)

Щоб раненько все вставала,
Тихенько ходила,
Щоби тебе до полудня           |
Вона не будила.                | (2)

Щоб раненько все вставала
І піч розпалила,
Щоби тобі на полудне           |
Кулеші зварила.                | (2)

Щоб варила легкі страви, —
Нехай не мудрує,
Бо квасоля і горох             |
Тебе дуже дує.                 | (2)

Щоби вміла все робити
Та ще й віск зливати,
Бо без цеї процедури           |
Ти не зможеш спати.            | (2)

Ти вже вдома не ночуєш,
Спиш, де ніч попаде,
Як немає дівки в Коропці,      |
То йдеш в Горигляди.           | (2)

Мама вже її зустріне
На своїм порозі.
Першу ніч ти з нею будеш спати |
В своїм оборозі.               | (2)

Ти, Андрію-парубію,
Маєш ганджів купу,
Як до року не вженешся,        |
То підеш на групу.             | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3261121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3261121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3261121';
DELETE FROM songs WHERE id = 'pisniua_3261121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3261121','Гімн Лісам','Музика: Роберт Голованенко Слова: Василь Пагиря. Виконує: Роберт Голованенко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Карпати, Карпати, щасливий мій краю,
Смеречане небо, гірські студенці,
Я з вами радію, я звами співаю,
Літа ваші - зморшки на моїм лиці.
Я по землі ходив стежинами,
Не знав ні ліфтів, ні коліс.
Я спав під юними ялинами,
Моєю хатою завжди був ліс.

Приспів:
Дуби, дуби - ми з вами зріднені,
Я вас садив, я з вами ріс.
Деревце кожне звав по імені,
Крізь все життя я вас проніс.
Як гість ішов до вас непроханий -
Вставали, й кроку не ступи.
Дуби, дуби, я в вас закоханий,
Мої нескорені дуби.

Карпати, Карпати, зелений мій краю,
І зоряне небо, й гірські студенці,
Я з вами зростаю, я з вами злітаю,
Літа ваші - зморшки на моїм лиці.
І безслідно вже мені не щезнути,
Бо вічність ліс мені нарік.
В його будинку величезному
Мене прописано навік.

Приспів','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3261121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3261121','Гімн Лісам','Карпати, Карпати, щасливий мій краю,
Смеречане небо, гірські студенці,
Я з вами радію, я звами співаю,
Літа ваші - зморшки на моїм лиці.
Я по землі ходив стежинами,
Не знав ні ліфтів, ні коліс.
Я спав під юними ялинами,
Моєю хатою завжди був ліс.

Приспів:
Дуби, дуби - ми з вами зріднені,
Я вас садив, я з вами ріс.
Деревце кожне звав по імені,
Крізь все життя я вас проніс.
Як гість ішов до вас непроханий -
Вставали, й кроку не ступи.
Дуби, дуби, я в вас закоханий,
Мої нескорені дуби.

Карпати, Карпати, зелений мій краю,
І зоряне небо, й гірські студенці,
Я з вами зростаю, я з вами злітаю,
Літа ваші - зморшки на моїм лиці.
І безслідно вже мені не щезнути,
Бо вічність ліс мені нарік.
В його будинку величезному
Мене прописано навік.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3261121_l1','pisniua_3261121','YouTube','https://www.youtube.com/watch?v=DzNcG4UOj0o','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3256323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3256323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3256323';
DELETE FROM songs WHERE id = 'pisniua_3256323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3256323','Цвіт землі','Музика: Олександр Злотник Слова: Микола Сингаївський','uk','ukraine_1991',NULL,NULL,'Джерело: Співаночки, с. 383-384.',NULL,'Цвітуть сади, цвітуть луги,
Цвітінням ниви розлились,
І затопили береги, і затопили береги, |
І цвіт пливе в небесну вись.          | (2)

В саду вишневім залюбки
Вінки сплітає дітвора,
Синиці, ластівки, шпаки,              |
Синиці, ластівки, шпаки,              |
Летять до кожного двора.              | (2)

І лине скрізь пташиний грай,
Моя квітуча сторона.
Цвіте земля, цвіте мій край,          |
Цвіте земля, цвіте мій край           |
І в серці кожного весна.              | (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3256323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3256323','Цвіт землі','Цвітуть сади, цвітуть луги,
Цвітінням ниви розлились,
І затопили береги, і затопили береги, |
І цвіт пливе в небесну вись.          | (2)

В саду вишневім залюбки
Вінки сплітає дітвора,
Синиці, ластівки, шпаки,              |
Синиці, ластівки, шпаки,              |
Летять до кожного двора.              | (2)

І лине скрізь пташиний грай,
Моя квітуча сторона.
Цвіте земля, цвіте мій край,          |
Цвіте земля, цвіте мій край           |
І в серці кожного весна.              | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3256929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3256929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3256929';
DELETE FROM songs WHERE id = 'pisniua_3256929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3256929','А може ти','Музика: Андрій Підлужний Слова: Андрій Підлужний. Виконує: Антоніна Матвієнко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Страх, коли побачиш,
Як хтось цілує його уста
І розплітаються зміями коси...
Страх, коли словами
Не пояснити як я його люблю... -
Розум втрачаю і з розумом сили...

Приспів:
А може ти, а може я
Загубили почуття...
А може ти, а може я?..
А може ти, а може я
Загубили почуття...

Страх, коли нічого
Ти вже не хочеш від буття
І допомоги ні в кого не просиш...
Страх, коли ці п''ять секунд
Зі мною життя і ти наче раб
Вберегти їх не в змозі...

Приспів.

А може?..

П''ять секунд
Не відчуваєш неба...
Пять секунд,
Що змінюють тебе...
П''ять секунд
Не уявляєш де ти...
П''ять секунд,
Всього лиш п''ять секунд...

Приспів.

А може я?.. А може я?','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3256929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3256929','А може ти','Страх, коли побачиш,
Як хтось цілує його уста
І розплітаються зміями коси...
Страх, коли словами
Не пояснити як я його люблю... -
Розум втрачаю і з розумом сили...

Приспів:
А може ти, а може я
Загубили почуття...
А може ти, а може я?..
А може ти, а може я
Загубили почуття...

Страх, коли нічого
Ти вже не хочеш від буття
І допомоги ні в кого не просиш...
Страх, коли ці п''ять секунд
Зі мною життя і ти наче раб
Вберегти їх не в змозі...

Приспів.

А може?..

П''ять секунд
Не відчуваєш неба...
Пять секунд,
Що змінюють тебе...
П''ять секунд
Не уявляєш де ти...
П''ять секунд,
Всього лиш п''ять секунд...

Приспів.

А може я?.. А може я?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3256929_l1','pisniua_3256929','YouTube','https://www.youtube.com/watch?v=G11ufrW1jI0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3256929_l2','pisniua_3256929','YouTube','https://www.youtube.com/watch?v=dnKBPmbcqsA','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3256929_l3','pisniua_3256929','YouTube','https://www.youtube.com/watch?v=BV4hEe7wi0s','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3262929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3262929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3262929';
DELETE FROM songs WHERE id = 'pisniua_3262929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3262929','Я сьогодні на фронт від''їжджаю','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Я сьогодні на фронт від''їжджаю,
Покидаю ріднесенький край,
Може, вернусь, а, може, загину...
Ти, дівчино, про мене згадай!

Ти згадай ту широку долину,
Як нам місяць ясненький світив.
Я стояв там у сірій шинелі,
Про розлуку тобі говорив.

Не вернувся коханий додому,
Зосталася дівчина сама.
На германському фронті загинув,
Тільки в полі могила одна.

Тільки в полі могила чорніє,
Кругом неї шовкова трава...
Поскидайте ж ви, хлопці, пілотки,
Бо вже вашого друга нема.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3262929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3262929','Я сьогодні на фронт від''їжджаю','Я сьогодні на фронт від''їжджаю,
Покидаю ріднесенький край,
Може, вернусь, а, може, загину...
Ти, дівчино, про мене згадай!

Ти згадай ту широку долину,
Як нам місяць ясненький світив.
Я стояв там у сірій шинелі,
Про розлуку тобі говорив.

Не вернувся коханий додому,
Зосталася дівчина сама.
На германському фронті загинув,
Тільки в полі могила одна.

Тільки в полі могила чорніє,
Кругом неї шовкова трава...
Поскидайте ж ви, хлопці, пілотки,
Бо вже вашого друга нема.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3262929_l1','pisniua_3262929','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3263525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3263525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3263525';
DELETE FROM songs WHERE id = 'pisniua_3263525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3263525','На Івана, на Купала *','Слова: Володимир Голуб','uk','ukraine_before_1917',NULL,NULL,'авторське подання',NULL,'На Івана, на Купала
Я забула, що казала,
Я до тебе пригорнулась,
Мавкою я обернулась.

Приспів:
Ти пливи, пливи, віночок,
Рано-вранці  по воді,
Ти знайди, знайди, віночок,
Мого милого в юрбі,
Одного-єдиного
Я прошу тебе, знайди.

На Івана, на Купала
Я у Господа спитала,
На Івана, на Купала
Милого свого шукала.

Приспів.

На Івана, на Купала
Я забула, що казала,
Через ватру я стрибала,
Та чогось не вистачало.

Приспів.

Ти пливи, пливи, віночок,
Ти пливи, пливи, віночок...','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3263525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3263525','На Івана, на Купала *','На Івана, на Купала
Я забула, що казала,
Я до тебе пригорнулась,
Мавкою я обернулась.

Приспів:
Ти пливи, пливи, віночок,
Рано-вранці  по воді,
Ти знайди, знайди, віночок,
Мого милого в юрбі,
Одного-єдиного
Я прошу тебе, знайди.

На Івана, на Купала
Я у Господа спитала,
На Івана, на Купала
Милого свого шукала.

Приспів.

На Івана, на Купала
Я забула, що казала,
Через ватру я стрибала,
Та чогось не вистачало.

Приспів.

Ти пливи, пливи, віночок,
Ти пливи, пливи, віночок...');
DELETE FROM song_links WHERE song_id = 'pisniua_3261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3261';
DELETE FROM songs WHERE id = 'pisniua_3261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3261','Зірки мигтять','Виконує: Чорні черешні, Наталя Криничанка','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Зіpки мигтять, всі діти сплять,
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
DELETE FROM song_links WHERE song_id = 'pisniua_3265626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3265626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3265626';
DELETE FROM songs WHERE id = 'pisniua_3265626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3265626','Школярi - школярики','Музика: Олександр Злотник Слова: Олександр Вратарьов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На підвіконні в класі квіти,
Навпроти - Гоголя портрет.
А ми блукаємо по світу
Через мережу "Інтернет".
Якби не вчилися у школі,
Ніколи б не почули ми
Про теорему Піфагора,
І про частинки "не" і "ні".

Приспів:
Школярі - школярики,
Очі, як ліхтарики
По законах фізики
Зимно край вікна.
Школярі - школярики,
Очі, як ліхтарики,
По законах лірики -
Круглий рік весна!

Але найкращий час - у школі,
Це добре знає кожний клас,
Коли співа веселий дзвоник
І на перерву кличе нас.
У всіх такі цікаві теми:
Про макіяж і Брітні Спірс
І тільки мій рудий Ромео
Про мене знов складає вірш.

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:shkilni'', ''Дитячі пісні'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3265626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3265626','Школярi - школярики','На підвіконні в класі квіти,
Навпроти - Гоголя портрет.
А ми блукаємо по світу
Через мережу "Інтернет".
Якби не вчилися у школі,
Ніколи б не почули ми
Про теорему Піфагора,
І про частинки "не" і "ні".

Приспів:
Школярі - школярики,
Очі, як ліхтарики
По законах фізики
Зимно край вікна.
Школярі - школярики,
Очі, як ліхтарики,
По законах лірики -
Круглий рік весна!

Але найкращий час - у школі,
Це добре знає кожний клас,
Коли співа веселий дзвоник
І на перерву кличе нас.
У всіх такі цікаві теми:
Про макіяж і Брітні Спірс
І тільки мій рудий Ромео
Про мене знов складає вірш.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3261424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3261424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3261424';
DELETE FROM songs WHERE id = 'pisniua_3261424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3261424','Ой, на ставу, на ставочку, на ставі','Українська народна пісня. Виконує: Етнографічний хор Гомін','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, на ставу, на ставочку, на ставі,      | (2)
На ставі.

Там плавало два козаки на човні,          | (2)
На човні.

Вийшла дівчина, в відра води набрала,     | (2)
Набрала.

На козака молодого моргала,               | (2)
Моргала.

Ти козаче, соколоньку, соколю,            | (2)
Соколю.

Візьми ж мене в новий човен з собою,      | (2)
З собою!

Як я буду тебе в новий човен брать,       | (2)
Човен брать?

А хто ж буде лебедоньки заганять,         | (2)
Заганять?

Єсть у мене брат молодший, ще й стрілець, | (2)
Ще й стрілець.

Встрілив-вцілив щонайкращу з лебедиць,    | (2)
З лебедиць.

Розлилася кров червона по ставі,          | (2)
По ставі.

Розсипалось біле пір''я по траві,          | (2)
По траві.

А хто ж теє біле пір''я ізбере,            | (2)
Ізбере,

То той мене, молодую, забере,             | (2)
Забере!','[''pisni.org.ua'', ''cat:podilski'', ''Пісні з Поділля'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3261424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3261424','Ой, на ставу, на ставочку, на ставі','Ой, на ставу, на ставочку, на ставі,      | (2)
На ставі.

Там плавало два козаки на човні,          | (2)
На човні.

Вийшла дівчина, в відра води набрала,     | (2)
Набрала.

На козака молодого моргала,               | (2)
Моргала.

Ти козаче, соколоньку, соколю,            | (2)
Соколю.

Візьми ж мене в новий човен з собою,      | (2)
З собою!

Як я буду тебе в новий човен брать,       | (2)
Човен брать?

А хто ж буде лебедоньки заганять,         | (2)
Заганять?

Єсть у мене брат молодший, ще й стрілець, | (2)
Ще й стрілець.

Встрілив-вцілив щонайкращу з лебедиць,    | (2)
З лебедиць.

Розлилася кров червона по ставі,          | (2)
По ставі.

Розсипалось біле пір''я по траві,          | (2)
По траві.

А хто ж теє біле пір''я ізбере,            | (2)
Ізбере,

То той мене, молодую, забере,             | (2)
Забере!');
DELETE FROM song_links WHERE song_id = 'pisniua_325929';
DELETE FROM song_versions WHERE song_id = 'pisniua_325929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_325929';
DELETE FROM songs WHERE id = 'pisniua_325929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_325929','Чардаш','(Повій вітре з Верховини). Музика: Анатолій Сухий Слова: Анатолій Сухий. Виконує: Рутенія, Кость Єрофєєв','uk','ukr_ssr_1919_1991',NULL,'1988','http://www.ukrmusic.com.ua/ukr/text.php?albumid=319&id=4312','За аудіозаписом концерту частини гурту "Рутенія" в Москві 1988 (1989) року. Виконує гурт "Рутенія", Кость Єрофєєв, Анатолій Сухий у всіх складах Рутенії Авторство пісні, ймовірно, слід шукати в середовищі гурту "Рутенія", тобто Анатолій Сухий, Кость Єрофєєв тощо.','Повій вітре з Верховини
Та на неньову хатину,
Бо може ня завтра замордують
За мої гріхи.

А в темниці сирі стіни,
Вже мі тешуть домовину,
Гайвороння чорне-чорне кряче
На свіжавий хрест.

А у горах хлопці чорні
Вип''ють за моє здоров''я,
Вже стають жовніри в ряд стрілецький,
Гей-гей.

Ти ж моя єдина любко,
Не тужи, моя голубко,
Тяжка куля вдарить ня під серце
За мою любов.

Як поведуть ня на муку
В душу вдариться розпука;
Заграй мені чардаш, старий майстер,
Бо вмира гуцул','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_325929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_325929','Чардаш','Повій вітре з Верховини
Та на неньову хатину,
Бо може ня завтра замордують
За мої гріхи.

А в темниці сирі стіни,
Вже мі тешуть домовину,
Гайвороння чорне-чорне кряче
На свіжавий хрест.

А у горах хлопці чорні
Вип''ють за моє здоров''я,
Вже стають жовніри в ряд стрілецький,
Гей-гей.

Ти ж моя єдина любко,
Не тужи, моя голубко,
Тяжка куля вдарить ня під серце
За мою любов.

Як поведуть ня на муку
В душу вдариться розпука;
Заграй мені чардаш, старий майстер,
Бо вмира гуцул');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_325929_l1','pisniua_325929','YouTube','https://www.youtube.com/watch?v=UQB9AiJDvlw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_325929_l2','pisniua_325929','YouTube','https://www.youtube.com/watch?v=diZSMWTEApA','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_325929_l3','pisniua_325929','YouTube','https://www.youtube.com/watch?v=5H-KtaL2_z8','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_325929_l4','pisniua_325929','http://www.ukrmusic.com.ua/ukr/album.php?id=319','http://www.ukrmusic.com.ua/ukr/album.php?id=319','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_326222';
DELETE FROM song_versions WHERE song_id = 'pisniua_326222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_326222';
DELETE FROM songs WHERE id = 'pisniua_326222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_326222','Повєстка','Музика: Гуцул Каліпсо Слова: Гуцул Каліпсо. Виконує: Гуцул Каліпсо','uk','ukraine_1991',NULL,NULL,'http://gutsulcalipso.org.ua/index.php',NULL,'Ой на горі на високій жиу один хлопчина
Вже давно був повнолітній та й не ймиу дівчину

Ніколи не був у місті бо не мав нагоду
Він не бачив культуристів й мінеральну воду

Так одного дня у ранці він пішоу в долину
Та й почув в поштовій скрині запах гуталіну

Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка

Давай, плоскостоп''я, скаліоз у лави давай
Панки, наркомани всі до зброї давай
плоскостоп''я, скаліоз у лави давай
Панки, наркомани всі до зброї давай

Він зібрау свої валізи тай рушиу до міста
Там на него одягнули шлєм як у танкіста

Дали файну форму в руки, дали автомата
Та й начальники, шакали, всі сварились матом

Хлопець був старший на рік стау називаться дідом
Хоч він був без бороди але всім завідау

Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка

Давай, плоскостоп''я, скаліоз у лави давай
Панки, наркомани всі до зброї давай
плоскостоп''я, скаліоз у лави давай
Панки, наркомани всі до зброї давай

Служба йшла по розпорядку вранці вдень і вніч
Командири п''ють горілку падають навзніч

А салаги всі працюють треба ж щось робить
Треба вчасно генералу дачу закінчить

Так минула служба в лавах в лавах збройних сил
Якби мау він трохи розум взяу б та й закосиу

Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка

Давай, плоскостоп''я, скаліоз у лави давай
Панки, наркомани всі до зброї давай
плоскостоп''я, скаліоз у лави давай
Панки, наркомани всі до зброї давай','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_326222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_326222','Повєстка','Ой на горі на високій жиу один хлопчина
Вже давно був повнолітній та й не ймиу дівчину

Ніколи не був у місті бо не мав нагоду
Він не бачив культуристів й мінеральну воду

Так одного дня у ранці він пішоу в долину
Та й почув в поштовій скрині запах гуталіну

Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка

Давай, плоскостоп''я, скаліоз у лави давай
Панки, наркомани всі до зброї давай
плоскостоп''я, скаліоз у лави давай
Панки, наркомани всі до зброї давай

Він зібрау свої валізи тай рушиу до міста
Там на него одягнули шлєм як у танкіста

Дали файну форму в руки, дали автомата
Та й начальники, шакали, всі сварились матом

Хлопець був старший на рік стау називаться дідом
Хоч він був без бороди але всім завідау

Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка

Давай, плоскостоп''я, скаліоз у лави давай
Панки, наркомани всі до зброї давай
плоскостоп''я, скаліоз у лави давай
Панки, наркомани всі до зброї давай

Служба йшла по розпорядку вранці вдень і вніч
Командири п''ють горілку падають навзніч

А салаги всі працюють треба ж щось робить
Треба вчасно генералу дачу закінчить

Так минула служба в лавах в лавах збройних сил
Якби мау він трохи розум взяу б та й закосиу

Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка
Пришла файна звєстка під назвою повєстка

Давай, плоскостоп''я, скаліоз у лави давай
Панки, наркомани всі до зброї давай
плоскостоп''я, скаліоз у лави давай
Панки, наркомани всі до зброї давай');
DELETE FROM song_links WHERE song_id = 'pisniua_325323';
DELETE FROM song_versions WHERE song_id = 'pisniua_325323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_325323';
DELETE FROM songs WHERE id = 'pisniua_325323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_325323','Ой, цьоцю, скажіт котра година','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Записав від музик на весіллі на Львівщині на початку 1980-х. 2. Українські співанки. Упорядник Степан Налєпа. — Львів: Сполом, 2007. — 404 с.','Відміна подана за джерелом 2. Сьогодні ця пісня звучить коло ватри в поході, на весіллі, одного разу чув її з брехунця у виконанні батярського гурту, здається, з Івано-Франківщини.','Ой як то файно рано встати
І похмелитися з роси,
І Каську траснути по крижах,
І з''їсти метр ковбаси.

Приспів:
Ой, цьоцю, скажіт котра година,
Бо в мене пірвалася пружина,
Спішу на здибанку з Мариськом,
Мамунцю, рихтуйте весілє.

А в стайни мукала корова
І ремиґала буряки,
А ти лежиш така здорова,
Лежиш, відлежуєш боки.

Приспів.

А Стефка вудила ковбаси
І несла їх уже на дим,
А Ганка рахувала злоті (гроші) -
Завтра буде файний калим.*

Приспів.

А Місько вчора знов був п''яний -
Вже му ввижалися чорти,
І був не годен розрізнити
Де є корова, а де - ти.

Приспів.

А Каська вилізла на плота,
Задерла ноги догори
І як зачала щось співати,
Що позбігалися всі пси.

Приспів.
*Відміна:

А Стефка вудила ковбаси
І юш носила їх на стрих,
Я хтів ї влапити за литку —
Вона зробила дуже крик','[''pisni.org.ua'', ''cat:dances'', ''cat:foxtrots'', ''cat:halycki'', ''cat:zhartivlyvi'', ''Пісні до танцю'', ''Фокстроти'', ''Пісні з Галичини'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_325323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_325323','Ой, цьоцю, скажіт котра година','Ой як то файно рано встати
І похмелитися з роси,
І Каську траснути по крижах,
І з''їсти метр ковбаси.

Приспів:
Ой, цьоцю, скажіт котра година,
Бо в мене пірвалася пружина,
Спішу на здибанку з Мариськом,
Мамунцю, рихтуйте весілє.

А в стайни мукала корова
І ремиґала буряки,
А ти лежиш така здорова,
Лежиш, відлежуєш боки.

Приспів.

А Стефка вудила ковбаси
І несла їх уже на дим,
А Ганка рахувала злоті (гроші) -
Завтра буде файний калим.*

Приспів.

А Місько вчора знов був п''яний -
Вже му ввижалися чорти,
І був не годен розрізнити
Де є корова, а де - ти.

Приспів.

А Каська вилізла на плота,
Задерла ноги догори
І як зачала щось співати,
Що позбігалися всі пси.

Приспів.
*Відміна:

А Стефка вудила ковбаси
І юш носила їх на стрих,
Я хтів ї влапити за литку —
Вона зробила дуже крик');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_325323_l1','pisniua_325323','YouTube','https://www.youtube.com/watch?v=k0Vo07TxS9I','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_325323_l2','pisniua_325323','YouTube','https://www.youtube.com/watch?v=DyOSlUXngg8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_325323_l3','pisniua_325323','YouTube','https://www.youtube.com/watch?v=4ARNWqY_cs0','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3262766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3262766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3262766';
DELETE FROM songs WHERE id = 'pisniua_3262766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3262766','Триста літ','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Триста літ, триста літ минає,
Як наш брат в неволі конає,
Наш український народ!

Поривай, поривай кайдани,
Хай ще раз Україна встане,
Весь український народ!

Бодай ті вороги пропали,
Що для нас тюрьми збудували
На українській землі!

Уставай, уставай, народе,
Здобувай Україні волю
На українській землі!

Господи, Господи, помилуй
Господи, Господи, помилуй
Наш український народ!','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3262766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3262766','Триста літ','Триста літ, триста літ минає,
Як наш брат в неволі конає,
Наш український народ!

Поривай, поривай кайдани,
Хай ще раз Україна встане,
Весь український народ!

Бодай ті вороги пропали,
Що для нас тюрьми збудували
На українській землі!

Уставай, уставай, народе,
Здобувай Україні волю
На українській землі!

Господи, Господи, помилуй
Господи, Господи, помилуй
Наш український народ!');
DELETE FROM song_links WHERE song_id = 'pisniua_3269962';
DELETE FROM song_versions WHERE song_id = 'pisniua_3269962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3269962';
DELETE FROM songs WHERE id = 'pisniua_3269962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3269962','Метелик','Музика: Наталія Май Слова: Наталія Май. Виконує: Зоряний дощ','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На світі жив метелик,
Яскравий, наче літо,
Він мав багряні крила,
Щоб в небо відлетіти.
І мандрував метелик
Із квіточки на квітку,
Співав пісні веселі,
Співав пісні привітні.

Приспів:
Він до неба злітає,
Радість людям дарує,
Суму в серці не має,
Поміж хмарок танцює.
Він до неба злітає,
Аж до самого сонця,
І всміхається літо
У прозоре віконце!

Та ось пожовкло листя
І став холодним вітер,
І птахи піднялися,
Щоб в вирій полетіти.
Засумував метелик
І спати ліг до літа,
І бачив сни веселі,
І бачив сни привітні!

Приспів. (2)','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3269962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3269962','Метелик','На світі жив метелик,
Яскравий, наче літо,
Він мав багряні крила,
Щоб в небо відлетіти.
І мандрував метелик
Із квіточки на квітку,
Співав пісні веселі,
Співав пісні привітні.

Приспів:
Він до неба злітає,
Радість людям дарує,
Суму в серці не має,
Поміж хмарок танцює.
Він до неба злітає,
Аж до самого сонця,
І всміхається літо
У прозоре віконце!

Та ось пожовкло листя
І став холодним вітер,
І птахи піднялися,
Щоб в вирій полетіти.
Засумував метелик
І спати ліг до літа,
І бачив сни веселі,
І бачив сни привітні!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3269962_l1','pisniua_3269962','YouTube','https://www.youtube.com/watch?v=dGwFTcbH5rM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3269962_l2','pisniua_3269962','YouTube','https://www.youtube.com/watch?v=NlmujM7yzu0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3269962_l3','pisniua_3269962','YouTube','https://www.youtube.com/watch?v=l0LSOBzKyEM','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3264560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3264560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3264560';
DELETE FROM songs WHERE id = 'pisniua_3264560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3264560','Рідна школа','Музика: невідомий Слова: Тетяна Садохіна. Виконує: Тетяна Садохіна','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Знову як вперше заходимо в клас,
Вчитель привітно озветься до нас,
Парти і стенди, таблиці і дзвоник
Все тут до болі знайоме.
Нам так хотілось дорослими стати,
І вже здавалось недовго чекати,
Наче у сні пролетіли літа
Школа - пора золота.

Приспів:
Школа, школа, рідна школа,
Тобі щастя бажаєм,
Перші уроки, юності кроки,
Всіх вчителів пам''ятаєм.

Перші уроки, юності кроки,
Всіх вчителів пам''ятаєм.
Скільки доріг нам пройти доведеться,
В пам''яті школа дитинством озветься,
Перший світанок, росяний ранок,
Друзі і дзвоник останній.

Приспів. (4)

Всіх вчителів пам''ятаєм.
Школа тебе пам''ятає.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3264560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3264560','Рідна школа','Знову як вперше заходимо в клас,
Вчитель привітно озветься до нас,
Парти і стенди, таблиці і дзвоник
Все тут до болі знайоме.
Нам так хотілось дорослими стати,
І вже здавалось недовго чекати,
Наче у сні пролетіли літа
Школа - пора золота.

Приспів:
Школа, школа, рідна школа,
Тобі щастя бажаєм,
Перші уроки, юності кроки,
Всіх вчителів пам''ятаєм.

Перші уроки, юності кроки,
Всіх вчителів пам''ятаєм.
Скільки доріг нам пройти доведеться,
В пам''яті школа дитинством озветься,
Перший світанок, росяний ранок,
Друзі і дзвоник останній.

Приспів. (4)

Всіх вчителів пам''ятаєм.
Школа тебе пам''ятає.');
DELETE FROM song_links WHERE song_id = 'pisniua_326828';
DELETE FROM song_versions WHERE song_id = 'pisniua_326828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_326828';
DELETE FROM songs WHERE id = 'pisniua_326828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_326828','Терен цвіте','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські та російські народні пісні під акомпанемент гітари / Упорядник В. О. Манілов.- Київ: Музична Україна, 1995.- 80 c.',NULL,'Терен цвіте, терен цвіте,
Листя опа- да- є,
Хто в любові не знається,
Той горя не зна- є.
Хто в любові не знається,
Той горя не зна- є.

А я, молода дівчина,
Вже горя зазнала,
Вечероньки недоїла,  |
Нічки недоспала.     | (x2)

Ой візьму я кріселечко,
Сяду край віконця,
Іще очі не дрімали,   |
А вже сходить сонце.  | (x2)

Хоч дрімайте, не дрімайте,
Не будете спати:
Десь поїхав мій миленький  |
Іншої шукати.              | (x2)

Очі мої, очі мої,
Що ви наробили?
Кого люди обминали,  |
Того полюбили.       | (x2)','[''pisni.org.ua'', ''cat:dances'', ''cat:waltzes'', ''Пісні до танцю'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_326828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_326828','Терен цвіте','Терен цвіте, терен цвіте,
Листя опа- да- є,
Хто в любові не знається,
Той горя не зна- є.
Хто в любові не знається,
Той горя не зна- є.

А я, молода дівчина,
Вже горя зазнала,
Вечероньки недоїла,  |
Нічки недоспала.     | (x2)

Ой візьму я кріселечко,
Сяду край віконця,
Іще очі не дрімали,   |
А вже сходить сонце.  | (x2)

Хоч дрімайте, не дрімайте,
Не будете спати:
Десь поїхав мій миленький  |
Іншої шукати.              | (x2)

Очі мої, очі мої,
Що ви наробили?
Кого люди обминали,  |
Того полюбили.       | (x2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_326828_l1','pisniua_326828','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_327560';
DELETE FROM song_versions WHERE song_id = 'pisniua_327560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_327560';
DELETE FROM songs WHERE id = 'pisniua_327560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_327560','Три брати','(Ой там у лузі). Українська народна пісня. Виконує: Володимир Вермінський, Акорд','uk','ukr_ssr_1919_1991',NULL,NULL,'з CD "Йшли селом партизани" (с) 2002 ПТ "GroLis Records" (м. Тернопіль), http://www.grolis.com.ua','bohdanko (модератор): Акорди записано на слух з аудіо. Тональність оригінальна. Anrzej: Знаю ще таку в''язку цієї пісні: Нехай загинем ми у бою Та наша слава не впаде, Ще наша славна Україна По цілім світі загуде! Підбір акордів: bohdanko (www.pisni.org.ua)','Вступ:  Hm F#m C# F#m (x2)

F#m
Ой там у лузі, там при дорозі
Червоні маки розцвіли.
Ой там три браття з Прикарпаття  |
C#        F#m          | (x2)
Життя за волю віддали.           |

Їх було троє, всього лиш троє,
Були гранати, шмайсери.
Вони не знали, що друг їх зрадив
Катам червоної Москви.

Як їх боївку оточили,
Кричать: "Бандєри, руки ввєрх!"
Хтось крикнув: "Слава Україні!   |
Ми не здамося, краще смерть!"    | (2)

І тут три браття поцілувались,
Ніхто пощади не просив.
І більш не рвалися гранати,
І кулемет не стукотів.

І ми боротися будемо
Проти проклятих ворогів
І вічну славу пам''ятати
Про мужніх хлопців, трьох братів.','[''pisni.org.ua'', ''cat:narodni'', ''cat:patriotic'', ''cat:povstanski'', ''Народні пісні'', ''Патріотичні пісні'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_327560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_327560','Три брати','Вступ:  Hm F#m C# F#m (x2)

F#m
Ой там у лузі, там при дорозі
Червоні маки розцвіли.
Ой там три браття з Прикарпаття  |
C#        F#m          | (x2)
Життя за волю віддали.           |

Їх було троє, всього лиш троє,
Були гранати, шмайсери.
Вони не знали, що друг їх зрадив
Катам червоної Москви.

Як їх боївку оточили,
Кричать: "Бандєри, руки ввєрх!"
Хтось крикнув: "Слава Україні!   |
Ми не здамося, краще смерть!"    | (2)

І тут три браття поцілувались,
Ніхто пощади не просив.
І більш не рвалися гранати,
І кулемет не стукотів.

І ми боротися будемо
Проти проклятих ворогів
І вічну славу пам''ятати
Про мужніх хлопців, трьох братів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_327560_l1','pisniua_327560','YouTube','https://www.youtube.com/watch?v=xgbyH-hgkHw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_327560_l2','pisniua_327560','YouTube','https://www.youtube.com/watch?v=w4Iz9JWLfRY','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_327560_l3','pisniua_327560','YouTube','https://www.youtube.com/watch?v=4a2rSwjWUAI','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_327560_l4','pisniua_327560','YouTube','https://www.youtube.com/watch?v=dbMMeBnOWas','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_327560_l5','pisniua_327560','YouTube','https://www.youtube.com/watch?v=owawfcFeTK8','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_327560_l6','pisniua_327560','YouTube','https://www.youtube.com/watch?v=GP3-K-03mKE','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_327560_l7','pisniua_327560','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_3273424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3273424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3273424';
DELETE FROM songs WHERE id = 'pisniua_3273424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3273424','Весілля','Українська народна пісня. Виконує: Володимир Гуменчук','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'А на нашому подвір''ї музики заграли,
Бо ми своїх молодих до шлюбу збирали.
Білий верес, білий верес маркою кружляє,
Все село, все село весілля гуляє!

Приспів:
Весело, весело, весело співали,
Весело, весело до ранку гуляли!
Весело, весело, весело співали,
Весело, весело весілля гуляли!

Веселіться, любі гості, за столи сідайте
І за молодих повну наливайте.
Вишиваний рушник, каравай духмяний,
Танцювати ідіть всі, хто ще не п''яний.

Приспів.

Посідали за столи свахи зі сватами,
А куми цілий день ходять з тарілками.
Наливай первачку, усім наливають,
Бо у нас, бо у нас весілля гуляють!

Приспів.

Позбиралися дружби на город втікати,
А дужки, а дружки хочуть танцювати.
Станьте в коло усі, сумувати годі,
Бо у нас, бо у нас дуже танці в моді!

Приспів.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3273424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3273424','Весілля','А на нашому подвір''ї музики заграли,
Бо ми своїх молодих до шлюбу збирали.
Білий верес, білий верес маркою кружляє,
Все село, все село весілля гуляє!

Приспів:
Весело, весело, весело співали,
Весело, весело до ранку гуляли!
Весело, весело, весело співали,
Весело, весело весілля гуляли!

Веселіться, любі гості, за столи сідайте
І за молодих повну наливайте.
Вишиваний рушник, каравай духмяний,
Танцювати ідіть всі, хто ще не п''яний.

Приспів.

Посідали за столи свахи зі сватами,
А куми цілий день ходять з тарілками.
Наливай первачку, усім наливають,
Бо у нас, бо у нас весілля гуляють!

Приспів.

Позбиралися дружби на город втікати,
А дужки, а дружки хочуть танцювати.
Станьте в коло усі, сумувати годі,
Бо у нас, бо у нас дуже танці в моді!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3271020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3271020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3271020';
DELETE FROM songs WHERE id = 'pisniua_3271020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3271020','Настала ніч, затихло всюди',NULL,'uk','ukraine_1991',NULL,NULL,'Пісенник молодіжної спільноти церкви святого Миколая на Аскольдовій Могилі. - м. Київ. - 2011.',NULL,'Настала ніч, затихло всюди,
Заснув святий Єрусалим.
Схиливши голову на груди,
Христос сидів і учні з ним.

Він їм сказав про хресні муки,
Про смерть сою Він говорив.
І голос чорної розпуки
Спливав з Його пророчих слів.

І на чоло христове біле,
Вже виступав кривавий піт.
Прийміть і їжте моє тіло,
Я кров проллю за вас усіх.

Скорбна душа моя до болю,
Бо ворог всіх вас розжене.
Воістину я вам говорю,
Один із вас продасть мене.

І став Петро, о Боже, мушу,
Сказати правду і скажу.
Хай зрадять всі, за тебе душу
Свою я, Боже, положу.

І відповів Син Чоловічий;
Чи зможеш Ти свій хрест нести?
Не заспіває півень двічі,
Як тричі відречешся Ти.

Бо хай не мучать вас тривоги,
За смуток радістю віддам.
Я йду в далекую дорогу.
Щоб місце приготовить вам.

Після зими дає Бог весну,
А після ночі день встає.
Я завтра вмру і знов воскресну,
І всім вам дам життя своє.

Не бійтесь, діти, світа цього,
Не забувайте слів моїх.
І в Мене вірте ви, у Бога!
Я світ цей грішний переміг.

Ще ніч була, ще сонне місто,
Поринуло у сизу тьму.
А Божий Син йшов урочисто
На муки й смерть і на ганьбу','[''pisni.org.ua'', ''cat:christian'', ''cat:strasni'', ''Пісні на християнську тематику'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3271020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3271020','Настала ніч, затихло всюди','Настала ніч, затихло всюди,
Заснув святий Єрусалим.
Схиливши голову на груди,
Христос сидів і учні з ним.

Він їм сказав про хресні муки,
Про смерть сою Він говорив.
І голос чорної розпуки
Спливав з Його пророчих слів.

І на чоло христове біле,
Вже виступав кривавий піт.
Прийміть і їжте моє тіло,
Я кров проллю за вас усіх.

Скорбна душа моя до болю,
Бо ворог всіх вас розжене.
Воістину я вам говорю,
Один із вас продасть мене.

І став Петро, о Боже, мушу,
Сказати правду і скажу.
Хай зрадять всі, за тебе душу
Свою я, Боже, положу.

І відповів Син Чоловічий;
Чи зможеш Ти свій хрест нести?
Не заспіває півень двічі,
Як тричі відречешся Ти.

Бо хай не мучать вас тривоги,
За смуток радістю віддам.
Я йду в далекую дорогу.
Щоб місце приготовить вам.

Після зими дає Бог весну,
А після ночі день встає.
Я завтра вмру і знов воскресну,
І всім вам дам життя своє.

Не бійтесь, діти, світа цього,
Не забувайте слів моїх.
І в Мене вірте ви, у Бога!
Я світ цей грішний переміг.

Ще ніч була, ще сонне місто,
Поринуло у сизу тьму.
А Божий Син йшов урочисто
На муки й смерть і на ганьбу');
DELETE FROM song_links WHERE song_id = 'pisniua_3265766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3265766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3265766';
DELETE FROM songs WHERE id = 'pisniua_3265766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3265766','Друзі','Слова: Зоя Солярик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Важко в житті здолати біль одному,
Важко іти, коли впивається зрада.
Келих вина я знов за вас підійму,       |
Друзі мої, моя ви - щира порада.        | (2)

Я часто думаю про вас,
Я радий знову вас зустріти,
Серця утішити, зігріти
І побажати: "В добрий час!"

Плинуть роки - не в''яне долі вінок -
Знову зійшлись ми з вами в дружному колі:
Безліч надій, нових ідей і думок,       |
Сльози і сміх, і щастя, й радісна доля. | (2)

Я часто думаю про вас,
Я радий знову вас зустріти,
Серця утішити, зігріти
І побажати: "В добрий час!"','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3265766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3265766','Друзі','Важко в житті здолати біль одному,
Важко іти, коли впивається зрада.
Келих вина я знов за вас підійму,       |
Друзі мої, моя ви - щира порада.        | (2)

Я часто думаю про вас,
Я радий знову вас зустріти,
Серця утішити, зігріти
І побажати: "В добрий час!"

Плинуть роки - не в''яне долі вінок -
Знову зійшлись ми з вами в дружному колі:
Безліч надій, нових ідей і думок,       |
Сльози і сміх, і щастя, й радісна доля. | (2)

Я часто думаю про вас,
Я радий знову вас зустріти,
Серця утішити, зігріти
І побажати: "В добрий час!"');
DELETE FROM song_links WHERE song_id = 'pisniua_3273727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3273727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3273727';
DELETE FROM songs WHERE id = 'pisniua_3273727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3273727','Добрий Святий Миколай','Музика: Микола Ведмедеря Слова: В. Кленц','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Прийшла в гості нічка-чаклунка
І сон сколихала над вушком.
Святий Миколай подарунки
Тихенько поклав під подушку.

Приспів:
Знаю тебе, добре знаю,
Щедрий святий Миколаю,
Чекає тебе зимова пора,
Жде з нетерпінням уся дітвора!

Приніс Ти цукерки в торбинці,
Та іграшки дуже гарненькі.
Я вдячний тобі за гостинці,
Для мене ти - ніби, рідненький.

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3273727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3273727','Добрий Святий Миколай','Прийшла в гості нічка-чаклунка
І сон сколихала над вушком.
Святий Миколай подарунки
Тихенько поклав під подушку.

Приспів:
Знаю тебе, добре знаю,
Щедрий святий Миколаю,
Чекає тебе зимова пора,
Жде з нетерпінням уся дітвора!

Приніс Ти цукерки в торбинці,
Та іграшки дуже гарненькі.
Я вдячний тобі за гостинці,
Для мене ти - ніби, рідненький.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3274467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3274467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3274467';
DELETE FROM songs WHERE id = 'pisniua_3274467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3274467','Новий рік','Музика: Юрій Михайлюк Слова: Юрій Михайлюк','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Щастя в душу прийде
На білому килимі зими,
І кожен диво знайде,
Все збудеться, як мріємо ми.
Дід Мороз на білих санях,
Ялинка, з неба білий сніг,
Кожен щастя до свята має
І всюди буде сміх.

Приспів:
Новий рік - веселий сміх,
Новий час летить до нас!
Новий рік, Новий рік!
Новий рік - веселий сміх,
Кожен з нас хай буде щасливим!
Новий рік, Новий рік!

Друзі, велика сім''я
За святковим новорічним столом.
Подарунків і ти, і я
Чекаємо всі разом.
Свято наближається
В новорічну казкову мить,
Мрії наші всі збуваються,
Як зірка з неба летить!

Приспів.

Новий рік, Новий рік!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3274467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3274467','Новий рік','Щастя в душу прийде
На білому килимі зими,
І кожен диво знайде,
Все збудеться, як мріємо ми.
Дід Мороз на білих санях,
Ялинка, з неба білий сніг,
Кожен щастя до свята має
І всюди буде сміх.

Приспів:
Новий рік - веселий сміх,
Новий час летить до нас!
Новий рік, Новий рік!
Новий рік - веселий сміх,
Кожен з нас хай буде щасливим!
Новий рік, Новий рік!

Друзі, велика сім''я
За святковим новорічним столом.
Подарунків і ти, і я
Чекаємо всі разом.
Свято наближається
В новорічну казкову мить,
Мрії наші всі збуваються,
Як зірка з неба летить!

Приспів.

Новий рік, Новий рік!');
DELETE FROM song_links WHERE song_id = 'pisniua_328467';
DELETE FROM song_versions WHERE song_id = 'pisniua_328467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_328467';
DELETE FROM songs WHERE id = 'pisniua_328467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_328467','Почекай','Музика: Василь Чудик Слова: Василь Чудик. Виконує: Василь Чудик','uk','ukraine_1991',NULL,NULL,NULL,'Текст взято з дежерела 2, суттєво виправлено й доповнено за аудіо-записом [1]. Акорди підібрано за аудіо-записом [1]. Тональність оригінальна. Підбір акордів: bohdanko (www.pisni.org.ua)','Почекай, почекай, почекай, моя мила, ще трошки,
Лихоліття минуть, ти забудеш печалі, мов сон.
Стяг засяє над нами в кольорах пшениці й волошки,
І останній совітський солдат перетне наш кордон.

Гідну відсіч дамо ми усяким непрошеним гостям.
До Москви більш ніколи не підемо ми на поклон.
Перейдемо до ринку, валюти. Розпустим колгоспи.
І останній совітський солдат перетне наш кордон.

Усміхнися, кохана. Вкраїна вже скоро повстане!
Й залунає ця пісня від Сяну самого по Дон.
Постаменти позносим, а тим, кому треба, поставим.
І останній совітський солдат перетне наш кордон.

Не будеш нарікати ти більше на Раду Міністрів,
З споживацької книжки останній відірвеш купон.
Бо буде в магазинах горілка, і буде що їсти.
І останній совітський солдат перетне наш кордон.

І вже скоро з тобою ми раптом прокинемось вранці,
А Верховная Рада приймає про власність закон.
І стоїть на трибуні Кравчук Леонід в вишиванці.
І останній совітський солдат перетнув наш кордон.

Отоді вже, кохана, відкинувши всякі вагання
І позбавившись страху й безглуздих старих забобон,
Ми нарешті з тобою серйозно займемся коханням,
Як останній совітський солдат перетне наш кордон.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:suspilno-politychni'', ''Бардівські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_328467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_328467','Почекай','Почекай, почекай, почекай, моя мила, ще трошки,
Лихоліття минуть, ти забудеш печалі, мов сон.
Стяг засяє над нами в кольорах пшениці й волошки,
І останній совітський солдат перетне наш кордон.

Гідну відсіч дамо ми усяким непрошеним гостям.
До Москви більш ніколи не підемо ми на поклон.
Перейдемо до ринку, валюти. Розпустим колгоспи.
І останній совітський солдат перетне наш кордон.

Усміхнися, кохана. Вкраїна вже скоро повстане!
Й залунає ця пісня від Сяну самого по Дон.
Постаменти позносим, а тим, кому треба, поставим.
І останній совітський солдат перетне наш кордон.

Не будеш нарікати ти більше на Раду Міністрів,
З споживацької книжки останній відірвеш купон.
Бо буде в магазинах горілка, і буде що їсти.
І останній совітський солдат перетне наш кордон.

І вже скоро з тобою ми раптом прокинемось вранці,
А Верховная Рада приймає про власність закон.
І стоїть на трибуні Кравчук Леонід в вишиванці.
І останній совітський солдат перетнув наш кордон.

Отоді вже, кохана, відкинувши всякі вагання
І позбавившись страху й безглуздих старих забобон,
Ми нарешті з тобою серйозно займемся коханням,
Як останній совітський солдат перетне наш кордон.');
DELETE FROM song_links WHERE song_id = 'pisniua_3277766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3277766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3277766';
DELETE FROM songs WHERE id = 'pisniua_3277766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3277766','Новорічне свято','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Замело усі дороги,
Занесло усі стежки,
Тільки місяць однорогий
Плине в хмарках навпрошки.

Приспів:
Ну, а в нас сьогодні свято,
Жарти, музика і сміх.
Круг ялинки танцювати
Ми запрошуєм усіх!

Маски ми приготували,
І костюми зшили ми,
Новорічні карнавали
Йдуть на свято до зими.

Приспів.

Тут і дівчинка Ромашка,
Коник-дзвоник тоже є
І веселий чебурашка
Вовку руку подає.

Приспів.

Дід мороз ступив у коло
І снігуронька мала,
І сніжинки срібночолі
З казки тихої прийшли.

Приспів.

Грай же, музико, завзято,
Веселіш, гучніше грай.
Новорічне добре свято
Завітало в рідний край!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3277766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3277766','Новорічне свято','Замело усі дороги,
Занесло усі стежки,
Тільки місяць однорогий
Плине в хмарках навпрошки.

Приспів:
Ну, а в нас сьогодні свято,
Жарти, музика і сміх.
Круг ялинки танцювати
Ми запрошуєм усіх!

Маски ми приготували,
І костюми зшили ми,
Новорічні карнавали
Йдуть на свято до зими.

Приспів.

Тут і дівчинка Ромашка,
Коник-дзвоник тоже є
І веселий чебурашка
Вовку руку подає.

Приспів.

Дід мороз ступив у коло
І снігуронька мала,
І сніжинки срібночолі
З казки тихої прийшли.

Приспів.

Грай же, музико, завзято,
Веселіш, гучніше грай.
Новорічне добре свято
Завітало в рідний край!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3276560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3276560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3276560';
DELETE FROM songs WHERE id = 'pisniua_3276560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3276560','Вчителько рідна','Музика: І. Тарнавська Слова: О. Проценко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Щира серцем, душа - як пісня,
Тиха пристань дитячих мрій.
Люба вчителько, квітко ніжна,
З сонця зітканий погляд твій.
Слово чисте і справедливе
Сієш в душі, зерно росте.
Зріє колосом творча нива,
Білим віршем талант цвіте.

Приспів:
Вчителько рідна,
Ти - мудрість землі,
Світла надія моя!
Вчителько рідна,
Ми - діти твої,
Ти - світанкова зоря!

Мудра жінка, дружина й мати,
Скільки світла в тобі й тепла.
Знають всі, в тебе навстіж хата,
Ждуть, як спраги до джерела.
І нагодуєш, і зігрієш,
Знайдеш ліки від лиха й зла,
Вітром серця печаль розвієш,
Всім наділиш душі добра.

Приспів. (2)','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3276560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3276560','Вчителько рідна','Щира серцем, душа - як пісня,
Тиха пристань дитячих мрій.
Люба вчителько, квітко ніжна,
З сонця зітканий погляд твій.
Слово чисте і справедливе
Сієш в душі, зерно росте.
Зріє колосом творча нива,
Білим віршем талант цвіте.

Приспів:
Вчителько рідна,
Ти - мудрість землі,
Світла надія моя!
Вчителько рідна,
Ми - діти твої,
Ти - світанкова зоря!

Мудра жінка, дружина й мати,
Скільки світла в тобі й тепла.
Знають всі, в тебе навстіж хата,
Ждуть, як спраги до джерела.
І нагодуєш, і зігрієш,
Знайдеш ліки від лиха й зла,
Вітром серця печаль розвієш,
Всім наділиш душі добра.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3276560_l1','pisniua_3276560','YouTube','https://www.youtube.com/watch?v=d79tJcf9MmE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3277626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3277626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3277626';
DELETE FROM songs WHERE id = 'pisniua_3277626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3277626','Тиха нічка, світять зорі','(Каравана йде свята). Музика: Юрій Ільків Слова: Роман Завадович. Виконує: Юрій Ільків','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Dm
Тиха нічка, світять зорі,
Am
Сніг біленький мерехтить,
H
За селом, ген, там під лісом
C
Десь дзвіночок гомонить.
F
Чи господар то спізнився,
C
Поспішає до села?
Gm
Ні, то лісом ледве чутно
Каравана йде свята.
Приспів:
F
З гаю вибігли зайчата,
C
Поставали на лапках:
Gm
Миколай везе дарунки
Чемним дітям на санках.
Попереду ангелятко
Дзвонить жваво у дзвінок,
Далі йде дідусь поважний,
Тягне сани за шнурок,
На санках тих ангелятко
Дивних скарбів береже.
За санками третій ангел
На лещатах жваво йде.
Приспів.
Тиха нічка, світять зорі,
Сніг біленький мерехтить.
За селом, ген там, під лісом
Десь дзвіночок гомонить...
Приспів.
З гаю вибігли зайчата,
Повставали на лапках,
Миколай везе дарунки
Чемним дітям на санках.
Вони також всі чекають
На даруночки свої,
Миколай прийшов на свято -
Всі веселі й голосні!
Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3277626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3277626','Тиха нічка, світять зорі','Dm
Тиха нічка, світять зорі,
Am
Сніг біленький мерехтить,
H
За селом, ген, там під лісом
C
Десь дзвіночок гомонить.
F
Чи господар то спізнився,
C
Поспішає до села?
Gm
Ні, то лісом ледве чутно
Каравана йде свята.
Приспів:
F
З гаю вибігли зайчата,
C
Поставали на лапках:
Gm
Миколай везе дарунки
Чемним дітям на санках.
Попереду ангелятко
Дзвонить жваво у дзвінок,
Далі йде дідусь поважний,
Тягне сани за шнурок,
На санках тих ангелятко
Дивних скарбів береже.
За санками третій ангел
На лещатах жваво йде.
Приспів.
Тиха нічка, світять зорі,
Сніг біленький мерехтить.
За селом, ген там, під лісом
Десь дзвіночок гомонить...
Приспів.
З гаю вибігли зайчата,
Повставали на лапках,
Миколай везе дарунки
Чемним дітям на санках.
Вони також всі чекають
На даруночки свої,
Миколай прийшов на свято -
Всі веселі й голосні!
Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3282869';
DELETE FROM song_versions WHERE song_id = 'pisniua_3282869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3282869';
DELETE FROM songs WHERE id = 'pisniua_3282869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3282869','День Соборності','Слова: Тетяна Власова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я в такому, бачиш, відрядженні,
Звідки люди приходять незрячими,
Де ведуться якісь перемовини,
Найміцніші коктейлі замовлені...

Тут, забувши про маму з татом,
Називаються гордим птахом,
Полонених ганяють голими,
А для "захисту" цілять в голови...

Тут калічать і зносять повністю,
Відзначаючи День Соборності,
Викрадають, збивають з ніг,
Поливають водою в сніг...

Тут повітря - із газу вата,
Тут уже почали вбивати,
Але, знаєш, тут кожен сяє:
"Переможемо! Обіцяєм!"

І з здобутком, безмежно цінним,
Я приїду додому цілим!','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3282869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3282869','День Соборності','Я в такому, бачиш, відрядженні,
Звідки люди приходять незрячими,
Де ведуться якісь перемовини,
Найміцніші коктейлі замовлені...

Тут, забувши про маму з татом,
Називаються гордим птахом,
Полонених ганяють голими,
А для "захисту" цілять в голови...

Тут калічать і зносять повністю,
Відзначаючи День Соборності,
Викрадають, збивають з ніг,
Поливають водою в сніг...

Тут повітря - із газу вата,
Тут уже почали вбивати,
Але, знаєш, тут кожен сяє:
"Переможемо! Обіцяєм!"

І з здобутком, безмежно цінним,
Я приїду додому цілим!');
DELETE FROM song_links WHERE song_id = 'pisniua_3285727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3285727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3285727';
DELETE FROM songs WHERE id = 'pisniua_3285727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3285727','Добрий ранок, Україно!','Музика: Нумер 482 Слова: Нумер 482. Виконує: Нумер 482','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Палаючи вогнем в своїх серцях,
Ми маємо забути слово "жах".
Тримаючи,
Тримаючи долю в своїх руках,
Ми знаємо, чуєш, знаємо,
Що вірно, а що не так!
Приспів:
Добрий ранок, Україно!
Прокидайся вже, мала.
Я несу, тобі єдина,
Чашку кави й молока.
Добрий ранок, Україно!
Все, що є моє в житті.
Прокидайся, Україно!
Час вставати, час знайти!
Ковтаючи сльози разом з дощем,
Втрачаємо зайве з кожним днем.
Ми створимо,
Збудуємо майбутнє своєю рукою.
Ми маємо, чуєш,
Маємо стати самі собою!
Приспів.
Захищати, оберігати -
Це означає любити,
Дарувати радість, з тобою любити -
Це теж означає любити.
Любити - значить прощати
І просто як є сприймати.
Для мене ти люба й кохана,
Для когось - рідна мати.
Приспів.','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3285727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3285727','Добрий ранок, Україно!','Палаючи вогнем в своїх серцях,
Ми маємо забути слово "жах".
Тримаючи,
Тримаючи долю в своїх руках,
Ми знаємо, чуєш, знаємо,
Що вірно, а що не так!
Приспів:
Добрий ранок, Україно!
Прокидайся вже, мала.
Я несу, тобі єдина,
Чашку кави й молока.
Добрий ранок, Україно!
Все, що є моє в житті.
Прокидайся, Україно!
Час вставати, час знайти!
Ковтаючи сльози разом з дощем,
Втрачаємо зайве з кожним днем.
Ми створимо,
Збудуємо майбутнє своєю рукою.
Ми маємо, чуєш,
Маємо стати самі собою!
Приспів.
Захищати, оберігати -
Це означає любити,
Дарувати радість, з тобою любити -
Це теж означає любити.
Любити - значить прощати
І просто як є сприймати.
Для мене ти люба й кохана,
Для когось - рідна мати.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3285727_l1','pisniua_3285727','YouTube','https://www.youtube.com/watch?v=lCcxFj2VqTo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3285560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3285560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3285560';
DELETE FROM songs WHERE id = 'pisniua_3285560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3285560','Весняночка','(Прийшла весна). Музика: Аркадій Філіпенко Слова: Г. Бойко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Прийшла весна,
Ой, прийшла ясна.
Подивися, дружок,
Як цвіте лужок.

Приспів:
Ясне сонечко,
Сіяй,
З нами свято
Зустрічай!

З полів, садів
Та й лунає спів.
Ти у коло іди,
Хоровод води.

Приспів.

Святковий час
Та й прийшов до нас,
Звеселив рідний край
Наш квітучий май!

Приспів.','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3285560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3285560','Весняночка','Прийшла весна,
Ой, прийшла ясна.
Подивися, дружок,
Як цвіте лужок.

Приспів:
Ясне сонечко,
Сіяй,
З нами свято
Зустрічай!

З полів, садів
Та й лунає спів.
Ти у коло іди,
Хоровод води.

Приспів.

Святковий час
Та й прийшов до нас,
Звеселив рідний край
Наш квітучий май!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3285560_l1','pisniua_3285560','YouTube','https://www.youtube.com/watch?v=sDLEUMRYqUk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3277929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3277929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3277929';
DELETE FROM songs WHERE id = 'pisniua_3277929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3277929','Крим','Музика: Геннадій Костенко Слова: Геннадій Костенко','uk','ukraine_1991',NULL,'2014','Інформаційний бюлетень ІКААПУ Інформ №9 (282) 2014 рік.',NULL,'Блакитноокую красу,
Під гомін білосніжних чайок
Несуть бурхливі хвилі су -
По-тюркськи воду означає.

А понад су під синню хмар
Золотокрилі висять гори,
Що, ніби сонячний Ікар,
Царюють над морським простором...

Оце і є наш сивий Крим -
Частина нашої Вітчизни,
Стає ще більш він дорогим,
Коли подумаєш про вічне.

Сьогодні ж помисли мої
Про те, що вічна Україна,
І кожна часточка її -
Мов серця нашого краплина.

Тому нізащо рідний Крим
Не віддамо нікому в світі.
Хай буде завжди молодим
Над Кримом сонце у зеніті!','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3277929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3277929','Крим','Блакитноокую красу,
Під гомін білосніжних чайок
Несуть бурхливі хвилі су -
По-тюркськи воду означає.

А понад су під синню хмар
Золотокрилі висять гори,
Що, ніби сонячний Ікар,
Царюють над морським простором...

Оце і є наш сивий Крим -
Частина нашої Вітчизни,
Стає ще більш він дорогим,
Коли подумаєш про вічне.

Сьогодні ж помисли мої
Про те, що вічна Україна,
І кожна часточка її -
Мов серця нашого краплина.

Тому нізащо рідний Крим
Не віддамо нікому в світі.
Хай буде завжди молодим
Над Кримом сонце у зеніті!');
DELETE FROM song_links WHERE song_id = 'pisniua_3283323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3283323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3283323';
DELETE FROM songs WHERE id = 'pisniua_3283323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3283323','Гімн НВК "Дивосвіт"','Музика: невідомий Слова: Оля Савицька','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'А у нашому садочку
Вісім груп для діточок,
І туди, немов на свято,
Водять нас і мама, й тато.
Тут ми бавимось, танцюєм,
І співаєм, і малюєм,
Ходимо на двір гуляти.
Іграшок є у нас багато.

Приспів:
Диво-диво-дивосвіт
Тебе любить цілий світ!
Диво-диво-дивосвіт
Тебе любить цілий світ!

Тут і ляльки, і машинки,
І звірятка, і хатинки,
Кубики і пірамідки -
Не сумують наші дітки.
А о сьомій залюбки
Забирають нас батьки
І ми йдемо до воріт.
Тож до завтра, "Дивосвіт".

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3283323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3283323','Гімн НВК "Дивосвіт"','А у нашому садочку
Вісім груп для діточок,
І туди, немов на свято,
Водять нас і мама, й тато.
Тут ми бавимось, танцюєм,
І співаєм, і малюєм,
Ходимо на двір гуляти.
Іграшок є у нас багато.

Приспів:
Диво-диво-дивосвіт
Тебе любить цілий світ!
Диво-диво-дивосвіт
Тебе любить цілий світ!

Тут і ляльки, і машинки,
І звірятка, і хатинки,
Кубики і пірамідки -
Не сумують наші дітки.
А о сьомій залюбки
Забирають нас батьки
І ми йдемо до воріт.
Тож до завтра, "Дивосвіт".

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_328020';
DELETE FROM song_versions WHERE song_id = 'pisniua_328020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_328020';
DELETE FROM songs WHERE id = 'pisniua_328020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_328020','Шуміли верби в поповій долині','Українська народна пісня. Виконує: Софія Федина','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні Марії Байко',NULL,'Шуміли верби в поповій долині.
Шумів за ними березовий ліс.
По полю мряки простяглися сиві,
Сонце сховалось за верхи беріз.
У таку то пору, десь у літній вечір,
Оповідала бабуся стара,
Про одну дівчину, що через кохання
Запропастила молоде життя.
"А в нашому селі, а давно то било,
Жив біля церкви овдовілий дяк.
Била у него дочка-красавиця,
Гарна, як ружа, як розквітлий мак.
Гарна, вродлива всіх хлопців манила,
Наче не знала, що то кохання час.
Бувало в церкві як вона стояла,
То зі святими рівнялась єї стать.
Хлопці шаліли, а вона - сміялась,
Наче не знала, що то крові жар.
Рано-раненько до церкви дзвонили,
А ішли люди попри дубовий ліс.
Знайшли дівоче скам''яніле тіло,
Зв"язане з дубом на вік вічну путь."
Змовкла бабуся, голову склонила,
І витерла сльозу стареча рука.
А верби шуміли, наче говорили,
Всьому лиш винні молоді літа','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_328020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_328020','Шуміли верби в поповій долині','Шуміли верби в поповій долині.
Шумів за ними березовий ліс.
По полю мряки простяглися сиві,
Сонце сховалось за верхи беріз.
У таку то пору, десь у літній вечір,
Оповідала бабуся стара,
Про одну дівчину, що через кохання
Запропастила молоде життя.
"А в нашому селі, а давно то било,
Жив біля церкви овдовілий дяк.
Била у него дочка-красавиця,
Гарна, як ружа, як розквітлий мак.
Гарна, вродлива всіх хлопців манила,
Наче не знала, що то кохання час.
Бувало в церкві як вона стояла,
То зі святими рівнялась єї стать.
Хлопці шаліли, а вона - сміялась,
Наче не знала, що то крові жар.
Рано-раненько до церкви дзвонили,
А ішли люди попри дубовий ліс.
Знайшли дівоче скам''яніле тіло,
Зв"язане з дубом на вік вічну путь."
Змовкла бабуся, голову склонила,
І витерла сльозу стареча рука.
А верби шуміли, наче говорили,
Всьому лиш винні молоді літа');
DELETE FROM song_links WHERE song_id = 'pisniua_3282560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3282560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3282560';
DELETE FROM songs WHERE id = 'pisniua_3282560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3282560','Мамо, не плач','Музика: Василь Дунець Слова: Оксана Максимишин-Корабель. Виконує: Василь Дунець','uk','ukraine_1991',NULL,NULL,'авторське подання','Аранжування і запис - Сергій Родько. Бек-вокал - Таня Шарган. Пісню виконує Василь Дунець (альбом: "Я ще не се сказав").','Мамо, не плач, я повернусь весною,
У шибку пташинкою вдарюсь твою.
Прийду на світанні в садок із росою,
А, може, дощем на поріг упаду.
А, може, дощем на поріг упаду,

Голубко, не плач, так судилося, ненько,
Що слово "бабуню" не буде твоїм.
Прийду і попрошуся в сон твій тихенько,
Розкажу, як мається в домі новім.
Розкажу, як мається в домі новім.

Мені колискову ангел співає
І рана смертельна уже не болить.
Ти знаєш, матусю, й тут сумно буває,
Душа за тобою, рідненька, болить.
Душа за тобою, рідненька, болить.

Мамочко, вибач за чорну хустину,
За те, що віднині ти будеш сама.
Тебе я любив і любив Україну,
Вона, як і ти, була в мене одна.
Тебе я любив і любив Україну,
Вона, як і ти, була в мене одна.
Вона, як і ти, була в мене одна','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3282560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3282560','Мамо, не плач','Мамо, не плач, я повернусь весною,
У шибку пташинкою вдарюсь твою.
Прийду на світанні в садок із росою,
А, може, дощем на поріг упаду.
А, може, дощем на поріг упаду,

Голубко, не плач, так судилося, ненько,
Що слово "бабуню" не буде твоїм.
Прийду і попрошуся в сон твій тихенько,
Розкажу, як мається в домі новім.
Розкажу, як мається в домі новім.

Мені колискову ангел співає
І рана смертельна уже не болить.
Ти знаєш, матусю, й тут сумно буває,
Душа за тобою, рідненька, болить.
Душа за тобою, рідненька, болить.

Мамочко, вибач за чорну хустину,
За те, що віднині ти будеш сама.
Тебе я любив і любив Україну,
Вона, як і ти, була в мене одна.
Тебе я любив і любив Україну,
Вона, як і ти, була в мене одна.
Вона, як і ти, була в мене одна');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3282560_l1','pisniua_3282560','YouTube','https://www.youtube.com/watch?v=_pOAnJfcScY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3278364';
DELETE FROM song_versions WHERE song_id = 'pisniua_3278364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3278364';
DELETE FROM songs WHERE id = 'pisniua_3278364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3278364','Дерев''яні щити','(Герої Не Вмирають). Музика: Гайдамаки Слова: Олександр Ярмола. Виконує: Гайдамаки','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Дерев''яний щит захистить від куль,
Кольоровий шолом для спорту,
Ти мріяв про справжню війну
У центрі міста на фронті.
Тут все, як на справжній війні,
Справжня смерть, справжня кров,
Справжній бій.
Дерев''яні Щит поможе тобі,
Захистить від куль тебе ангел твій.

Приспів:
Дерев''яні щити
Захистили не всіх,
Своїм тілом тебе
Заступив кожен з них.
Дерев''яні щити
Проти куль бойових.

На майдан твій батько пустив тебе,
Протест обіцяв бути мирним.
Але ти зустрів на майдані людей,
Готових віддати життя за вкраїну,
Що вірили у свої сили,
Зводили барикади,
Ти вирішив стати з ними
В обороні громади!

Приспів.

А коли той день, якого усі чекали,
Настав, він мусив настати,
Лишилися до кінця лиш ті,
Хто був готовий життя віддати.
Нас били, палили, кидали гранати,
Стріляли снайпери по очах -
Ми винесли з бою своїх Героїв
На їх дерев''яних щитах!

Приспів. (2)','[''pisni.org.ua'', ''cat:devoted'', ''cat:euromaydan'', ''Пісні присвячені окремим особам'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3278364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3278364','Дерев''яні щити','Дерев''яний щит захистить від куль,
Кольоровий шолом для спорту,
Ти мріяв про справжню війну
У центрі міста на фронті.
Тут все, як на справжній війні,
Справжня смерть, справжня кров,
Справжній бій.
Дерев''яні Щит поможе тобі,
Захистить від куль тебе ангел твій.

Приспів:
Дерев''яні щити
Захистили не всіх,
Своїм тілом тебе
Заступив кожен з них.
Дерев''яні щити
Проти куль бойових.

На майдан твій батько пустив тебе,
Протест обіцяв бути мирним.
Але ти зустрів на майдані людей,
Готових віддати життя за вкраїну,
Що вірили у свої сили,
Зводили барикади,
Ти вирішив стати з ними
В обороні громади!

Приспів.

А коли той день, якого усі чекали,
Настав, він мусив настати,
Лишилися до кінця лиш ті,
Хто був готовий життя віддати.
Нас били, палили, кидали гранати,
Стріляли снайпери по очах -
Ми винесли з бою своїх Героїв
На їх дерев''яних щитах!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3278364_l1','pisniua_3278364','YouTube','https://www.youtube.com/watch?v=uti-SZYhW1k','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3281962';
DELETE FROM song_versions WHERE song_id = 'pisniua_3281962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3281962';
DELETE FROM songs WHERE id = 'pisniua_3281962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3281962','Гімн народу України','Музика: Михайло Вербицький Слова: Володимир Мельников','uk','ukraine_1991',NULL,NULL,'Авторське подання',NULL,'Ми - твої, Вкраїно, діти - козацького роду...
Хай у єдності розквітне злагода народу!
Хай Господь дарує мудрість і щасливу долю.
Прославляймо України прапор, мир і волю...

Приспів:
Слава, слава Україні! - заспіваймо, браття,
І єднаймося для миру, злагоди, завзяття.
Слава, слава Україні - мирній, працьовитій!
Ще Вкраїна наша стане кращою у світі.

Прославляймо не словами прапор України,
А звитягами у праці, справами своїми...
Хай держава наша стане раєм для Людини!
Розіллється в світі слава - слава України.

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3281962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3281962','Гімн народу України','Ми - твої, Вкраїно, діти - козацького роду...
Хай у єдності розквітне злагода народу!
Хай Господь дарує мудрість і щасливу долю.
Прославляймо України прапор, мир і волю...

Приспів:
Слава, слава Україні! - заспіваймо, браття,
І єднаймося для миру, злагоди, завзяття.
Слава, слава Україні - мирній, працьовитій!
Ще Вкраїна наша стане кращою у світі.

Прославляймо не словами прапор України,
А звитягами у праці, справами своїми...
Хай держава наша стане раєм для Людини!
Розіллється в світі слава - слава України.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3278962';
DELETE FROM song_versions WHERE song_id = 'pisniua_3278962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3278962';
DELETE FROM songs WHERE id = 'pisniua_3278962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3278962','Колискова для Марії','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Колисаночку-співанку
Хочу наспівати,
У колисці заколишу
Тебе, Діва Мати.

Приспів:
Я тобі, Божа Мати            |
Свята Діва Чистая,           |
Колисанками, мов серпанками, |
Колисоньку вистелю.          | (2)

Запалю маленьку зірку
У небеснім вирі,
Народилася Марія
При її світлі щирім.

Приспів.

Розцвітає світ широкий
Сонце, рідні гори,
Над колискою небесні
Заспівали хори.

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3278962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3278962','Колискова для Марії','Колисаночку-співанку
Хочу наспівати,
У колисці заколишу
Тебе, Діва Мати.

Приспів:
Я тобі, Божа Мати            |
Свята Діва Чистая,           |
Колисанками, мов серпанками, |
Колисоньку вистелю.          | (2)

Запалю маленьку зірку
У небеснім вирі,
Народилася Марія
При її світлі щирім.

Приспів.

Розцвітає світ широкий
Сонце, рідні гори,
Над колискою небесні
Заспівали хори.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3278962_l1','pisniua_3278962','YouTube','https://www.youtube.com/watch?v=KGT3mFQRF18','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3280020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3280020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3280020';
DELETE FROM songs WHERE id = 'pisniua_3280020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3280020','Ми - першокласники','Музика: М. Ровенко Слова: М. Ровенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Нові портфелики,
А в них - букварики.
Не так то просто
Серед друзів нас знайти.

Приспів.
Ми - першокласники,  |
Ми - однокласники,   |
О, як нам весело     |
Гуртом до школи йти! | (2)

Ми пишем палички,
Крючечки, галочки.
Складаєм літери
До купки у склади.

Приспів.

Малюєм пташечки,
Квітки-ромашечки,
Співаєм весело,
Ти, пісенько, лети!

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3280020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3280020','Ми - першокласники','Нові портфелики,
А в них - букварики.
Не так то просто
Серед друзів нас знайти.

Приспів.
Ми - першокласники,  |
Ми - однокласники,   |
О, як нам весело     |
Гуртом до школи йти! | (2)

Ми пишем палички,
Крючечки, галочки.
Складаєм літери
До купки у склади.

Приспів.

Малюєм пташечки,
Квітки-ромашечки,
Співаєм весело,
Ти, пісенько, лети!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3280020_l1','pisniua_3280020','YouTube','https://www.youtube.com/watch?v=wuIlz17Hrzo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3289323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3289323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3289323';
DELETE FROM songs WHERE id = 'pisniua_3289323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3289323','У ніч під Новий рік','Музика: Павло Єрмолаєв Слова: Павло Єрмолаєв','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В ніч під Новий рік так трапляється:
Сниться ялинка нам і Дід Мороз.
Легкі сніжинки розлітаються,
Перетворюючись у білий хоровод.

Приспів:
Новий рік настає!
Що він нам принесе?
Новий рік настає!
Що він нам принесе?..

Дзвінкий сміх, гості за столом,
Вогники на ялинках горять.
Добре, що є свято Новий рік,
У кожному домі йому кожен радий.

Приспів.

А на ранок ми прокидаємося -
Ось ми вже і в новому році.
Святкові свічки догоріли,
Сон пройшов, і казка наяву.

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3289323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3289323','У ніч під Новий рік','В ніч під Новий рік так трапляється:
Сниться ялинка нам і Дід Мороз.
Легкі сніжинки розлітаються,
Перетворюючись у білий хоровод.

Приспів:
Новий рік настає!
Що він нам принесе?
Новий рік настає!
Що він нам принесе?..

Дзвінкий сміх, гості за столом,
Вогники на ялинках горять.
Добре, що є свято Новий рік,
У кожному домі йому кожен радий.

Приспів.

А на ранок ми прокидаємося -
Ось ми вже і в новому році.
Святкові свічки догоріли,
Сон пройшов, і казка наяву.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3286626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3286626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3286626';
DELETE FROM songs WHERE id = 'pisniua_3286626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3286626','Днів земних минають роки','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://www.midi.ru/song/130533/','Пісню виконують Брати Степчуки.','Днів земних минають роки - скільки їх було,
Не стихають людські кроки, не вмирає зло,
І до неба лине голос від землі,
Там де під ногами колос у крові.
З кожним роком земля наша розмежована,
Ласкою Його святою обдарована.
Хай повніє твоя чаша миром у Христі,
Колоситься мирним хлібом в Божій доброті.

Приспів:
Ми бажаєм жити мирно людям на землі,
Хай летять завжди спокійно в небі журавлі,
І Христа до свого серця всі прийміть,
Мир святий в душі озветься - буде добре жить,
Буде добре жить...

Чи то південь, чи то захід - люди скрізь одні,
І один у всіх нас прадід, одні корені.
Чому ж миту нема всюди, злагоди?
Бо без Бога в серці люди - не брати.

Приспів. (2)','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3286626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3286626','Днів земних минають роки','Днів земних минають роки - скільки їх було,
Не стихають людські кроки, не вмирає зло,
І до неба лине голос від землі,
Там де під ногами колос у крові.
З кожним роком земля наша розмежована,
Ласкою Його святою обдарована.
Хай повніє твоя чаша миром у Христі,
Колоситься мирним хлібом в Божій доброті.

Приспів:
Ми бажаєм жити мирно людям на землі,
Хай летять завжди спокійно в небі журавлі,
І Христа до свого серця всі прийміть,
Мир святий в душі озветься - буде добре жить,
Буде добре жить...

Чи то південь, чи то захід - люди скрізь одні,
І один у всіх нас прадід, одні корені.
Чому ж миту нема всюди, злагоди?
Бо без Бога в серці люди - не брати.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3286626_l1','pisniua_3286626','YouTube','https://www.youtube.com/watch?v=uYpLkcnXo9U','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3286626_l2','pisniua_3286626','YouTube','https://www.youtube.com/watch?v=S1qhCQk2l8c','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3280168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3280168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3280168';
DELETE FROM songs WHERE id = 'pisniua_3280168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3280168','Школа','Музика: І. Тарнавська Слова: В. Федотова. Виконує: Христина Вартанян','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я щоранку мов кручі в омут
Поринаю у вир шкільний.
Відпочинок, далекий спомин
У неспиннім путі моїм.

Приспів:
Школа - це дитинства несміливі кроки,
Це веселі друзі, шлях до майбуття!
Школа - це перерви, школа - це уроки,
"Школа" називається так моє життя! | (2)

Ти від вересня і до травня
Нас тримаєш у класах своїх.
Та не було б літо жаданим
Без уроків твоїх складних.

Приспів.

Хай горить в твоїх вікнах світло,
Хай лунає веселий сміх.
Твої двері високі привітно
Хай відчинені будуть для всіх!

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3280168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3280168','Школа','Я щоранку мов кручі в омут
Поринаю у вир шкільний.
Відпочинок, далекий спомин
У неспиннім путі моїм.

Приспів:
Школа - це дитинства несміливі кроки,
Це веселі друзі, шлях до майбуття!
Школа - це перерви, школа - це уроки,
"Школа" називається так моє життя! | (2)

Ти від вересня і до травня
Нас тримаєш у класах своїх.
Та не було б літо жаданим
Без уроків твоїх складних.

Приспів.

Хай горить в твоїх вікнах світло,
Хай лунає веселий сміх.
Твої двері високі привітно
Хай відчинені будуть для всіх!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_328626';
DELETE FROM song_versions WHERE song_id = 'pisniua_328626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_328626';
DELETE FROM songs WHERE id = 'pisniua_328626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_328626','А що я казав','Музика: Василь Чудик Слова: Василь Чудик. Виконує: Василь Чудик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'А що я казав, бачиш - розвіялись хмари.
Більше ніщо не стоїть поміж наших сердець.
Можна в найдальший куточок тепер закинуть гітару, |
Тільки сказав Чорновіл: "боротьбі не кінець".     | (2)

Отже ще рано нам мила пускатися в танці,
Глянь-но на ватру, що он-де горить за горбом.
То не опришки, і не русалки, і не повстанці - |
В темному лісі палить там архіви обком.       | (2)

Ти вже гадала, що врешті скінчились тривоги,
Ти вже взялась накривати святковий наш стіл.
"До остаточної дуже далеко нам всім перемоги, |
Доки не знищений ворог", сказав Чорновіл.     | (2)

Тож схаменімось, бо зовсім не слід передчасно радіти,
Що вже не висить над нами той серп з молотком.
Замість до кіна підемо з тобою сьогодні на мітинг, |
В темному лісі ше діє підпільний обком.            | (2)

Мов автомата не випущу з рук інструмента,
Мусиш кохана чекати до кращих часів.
От оберемо достойного ми президента, |
Кандидатура вже є - то пан Чорновіл. | (2)

Отже ще рано нам мила з тобою пускатися в танці,
Глянь-но на ватру що онде горить за горбом.
То не русалки, і не опришки, і не повстанці, |
В темному лісі палить там архіви обком.      | (2)','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_328626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_328626','А що я казав','А що я казав, бачиш - розвіялись хмари.
Більше ніщо не стоїть поміж наших сердець.
Можна в найдальший куточок тепер закинуть гітару, |
Тільки сказав Чорновіл: "боротьбі не кінець".     | (2)

Отже ще рано нам мила пускатися в танці,
Глянь-но на ватру, що он-де горить за горбом.
То не опришки, і не русалки, і не повстанці - |
В темному лісі палить там архіви обком.       | (2)

Ти вже гадала, що врешті скінчились тривоги,
Ти вже взялась накривати святковий наш стіл.
"До остаточної дуже далеко нам всім перемоги, |
Доки не знищений ворог", сказав Чорновіл.     | (2)

Тож схаменімось, бо зовсім не слід передчасно радіти,
Що вже не висить над нами той серп з молотком.
Замість до кіна підемо з тобою сьогодні на мітинг, |
В темному лісі ше діє підпільний обком.            | (2)

Мов автомата не випущу з рук інструмента,
Мусиш кохана чекати до кращих часів.
От оберемо достойного ми президента, |
Кандидатура вже є - то пан Чорновіл. | (2)

Отже ще рано нам мила з тобою пускатися в танці,
Глянь-но на ватру що онде горить за горбом.
То не русалки, і не опришки, і не повстанці, |
В темному лісі палить там архіви обком.      | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3289929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3289929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3289929';
DELETE FROM songs WHERE id = 'pisniua_3289929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3289929','Новорічні дзвіночки','Музика: Михайло Герц Слова: Р. Бойчук','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Новий вже скоро рік
Прийде на наш поріг
І щастя повний міх
Він принесе для всіх.
Зайде у кожен дім
І покладе на стіл
Чарівні, не прості -
Дзвіночки дінь-ділінь.

Приспів:
Дінь-ділінь, дзень-дзелень -
Рік новий іде,
Дінь-ділінь, дзень-дзелень -
Щастя нам несе.
Дінь-ділінь, дзень-дзелень -
Дзвоники в руках,
Дінь-ділінь, дзень-дзелень -
Пісня на вустах.

Ті дзвоники добра
В передчуттях Різдва
Дзеленькають: "Пора
Повірити в дива"...
І вогнегривий кінь
Овечці та козі
Дарує чарівні
Дзвіночки дінь-ділінь.

Приспів.

Не знайте жодних бід -
Хай скреснуть, наче лід
І мир прийде у світ
На многа-многа літ!
У році хай новім,
Прийдешнім, чарівнім -
Завжди лунають всім
Дзвіночки дінь-ділінь.

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3289929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3289929','Новорічні дзвіночки','Новий вже скоро рік
Прийде на наш поріг
І щастя повний міх
Він принесе для всіх.
Зайде у кожен дім
І покладе на стіл
Чарівні, не прості -
Дзвіночки дінь-ділінь.

Приспів:
Дінь-ділінь, дзень-дзелень -
Рік новий іде,
Дінь-ділінь, дзень-дзелень -
Щастя нам несе.
Дінь-ділінь, дзень-дзелень -
Дзвоники в руках,
Дінь-ділінь, дзень-дзелень -
Пісня на вустах.

Ті дзвоники добра
В передчуттях Різдва
Дзеленькають: "Пора
Повірити в дива"...
І вогнегривий кінь
Овечці та козі
Дарує чарівні
Дзвіночки дінь-ділінь.

Приспів.

Не знайте жодних бід -
Хай скреснуть, наче лід
І мир прийде у світ
На многа-многа літ!
У році хай новім,
Прийдешнім, чарівнім -
Завжди лунають всім
Дзвіночки дінь-ділінь.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3289467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3289467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3289467';
DELETE FROM songs WHERE id = 'pisniua_3289467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3289467','З-за високих гір Карпатських','Слова: Л. Антонова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'З-за високих гір
Карпатських,
Із-за полонин
Йшла колядочка до мене!
Колядин-один!

Подолавши річку, море
І широкий степ,
Нам колядочка принесла
Танці і вертеп!

У вінок вплела різдвяний
Гілочки модрин
І принесла людям щастя!
Колядин-один!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3289467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3289467','З-за високих гір Карпатських','З-за високих гір
Карпатських,
Із-за полонин
Йшла колядочка до мене!
Колядин-один!

Подолавши річку, море
І широкий степ,
Нам колядочка принесла
Танці і вертеп!

У вінок вплела різдвяний
Гілочки модрин
І принесла людям щастя!
Колядин-один!');
DELETE FROM song_links WHERE song_id = 'pisniua_3287222';
DELETE FROM song_versions WHERE song_id = 'pisniua_3287222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3287222';
DELETE FROM songs WHERE id = 'pisniua_3287222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3287222','Пам’яті Небесної Сотні','Слова: Михайло Кіт','uk','ukraine_1991',NULL,NULL,'інтернет',NULL,'Життя не всміхнеться інертним,
Їм сум навіва навіть цвіт.
Живі, поклонітеся мертвим,
Вони так любили цей світ.
Любили свою Україну.
Такі за державу помруть!
Із нею ішли до загину,
Їх Небесною Сотнею звуть.

Приспів:
Ця сотня гукне мільйони,
Які вірний шлях оберуть.
З''єднає живих у загони,
А ті до мети приведуть!

Шануймо Вітчизну, як матір,
Любімо, як рідне дитя.
Спішімо усе їй віддати,
Даруймо святі почуття.
На подвиг зовуть нас Герої,
Щоб ми захистили свій край.
Не збиймось з дороги святої.
Вкраїно, про це пам''ятай!

Приспів.','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3287222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3287222','Пам’яті Небесної Сотні','Життя не всміхнеться інертним,
Їм сум навіва навіть цвіт.
Живі, поклонітеся мертвим,
Вони так любили цей світ.
Любили свою Україну.
Такі за державу помруть!
Із нею ішли до загину,
Їх Небесною Сотнею звуть.

Приспів:
Ця сотня гукне мільйони,
Які вірний шлях оберуть.
З''єднає живих у загони,
А ті до мети приведуть!

Шануймо Вітчизну, як матір,
Любімо, як рідне дитя.
Спішімо усе їй віддати,
Даруймо святі почуття.
На подвиг зовуть нас Герої,
Щоб ми захистили свій край.
Не збиймось з дороги святої.
Вкраїно, про це пам''ятай!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3289168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3289168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3289168';
DELETE FROM songs WHERE id = 'pisniua_3289168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3289168','Там, де ти тепер','Музика: Танок на майдані Конго, МАСО "Слобожанський" Слова: Танок на майдані Конго, МАСО "Слобожанський". Виконує: Танок на майдані Конго, МАСО "Слобожанський"','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Там де ти тепер - там гаряче вночі,
Там поруч буде море, в якім нема медуз,
Я вірю, що дельфіни там стрибають через зорі
І ти з того радієш, ріжучи гарбуз.
Я знаю, там де ти, завжди багато сонця,
Хвилі у віконці і скляні дахи,
На всі боки салюти, пісні усюди чути,
Всі навкруги радіють, а не навпаки.
Безкінечний берег, в усьому - безліміт
І лід лише в стакані, і більше не болить,
Я до сих пір не бачив, як ти танцюєш,
Станцюємо разом...

Там, де, там, де ти тепер...
Там, де, там, де ти тепер...
Там, де, там, де ти тепер...

На нашій вулиці завжди то грім, то сніг, то бруд
І ті, що не до вподоби нам, по ній до нас ідуть,
Пісок на сніг, а сіль на наст,
І ніби шар за шаром хтось кладе на нас.
Перегортають час старі календарі,
Набратись сил. Набрався - сів, вивчаю слово "ні",
От, якби ти знов тут, було би "так",
Ставай на місце кожного і всіх буде шкода.
Пускають діти змія і зараз полетить,
І жодної мети, не хочу я додому,
Бігборди обіцяють нове яскраве шоу,
Я б краще подивився, як танцюєш ти.

Там, де, там, де ти тепер...
Там, де, там, де ти тепер...
Там, де, там, де ти тепер...

Там, де ти тепер, мабуть, усе інакше,
Я, сподіваюсь, тепло там, де ти тепер.
Я стер усе погане і стало ніби краще,
Дещо сумнівався, але перся і допер.
Я знаю - там де ти, завжди багато сонця,
Хвилі у віконці і скляні дахи,
На всі боки салюти, пісні усюди чути...
Пісні усюди чути... Пісні усюди чути...

Там, де, там, де ти тепер...
Там, де, там, де ти тепер...
Там, де, там, де ти тепер...','[''pisni.org.ua'', ''cat:euromaydan'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3289168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3289168','Там, де ти тепер','Там де ти тепер - там гаряче вночі,
Там поруч буде море, в якім нема медуз,
Я вірю, що дельфіни там стрибають через зорі
І ти з того радієш, ріжучи гарбуз.
Я знаю, там де ти, завжди багато сонця,
Хвилі у віконці і скляні дахи,
На всі боки салюти, пісні усюди чути,
Всі навкруги радіють, а не навпаки.
Безкінечний берег, в усьому - безліміт
І лід лише в стакані, і більше не болить,
Я до сих пір не бачив, як ти танцюєш,
Станцюємо разом...

Там, де, там, де ти тепер...
Там, де, там, де ти тепер...
Там, де, там, де ти тепер...

На нашій вулиці завжди то грім, то сніг, то бруд
І ті, що не до вподоби нам, по ній до нас ідуть,
Пісок на сніг, а сіль на наст,
І ніби шар за шаром хтось кладе на нас.
Перегортають час старі календарі,
Набратись сил. Набрався - сів, вивчаю слово "ні",
От, якби ти знов тут, було би "так",
Ставай на місце кожного і всіх буде шкода.
Пускають діти змія і зараз полетить,
І жодної мети, не хочу я додому,
Бігборди обіцяють нове яскраве шоу,
Я б краще подивився, як танцюєш ти.

Там, де, там, де ти тепер...
Там, де, там, де ти тепер...
Там, де, там, де ти тепер...

Там, де ти тепер, мабуть, усе інакше,
Я, сподіваюсь, тепло там, де ти тепер.
Я стер усе погане і стало ніби краще,
Дещо сумнівався, але перся і допер.
Я знаю - там де ти, завжди багато сонця,
Хвилі у віконці і скляні дахи,
На всі боки салюти, пісні усюди чути...
Пісні усюди чути... Пісні усюди чути...

Там, де, там, де ти тепер...
Там, де, там, де ти тепер...
Там, де, там, де ти тепер...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3289168_l1','pisniua_3289168','YouTube','https://www.youtube.com/watch?v=Wv1K6Tb3eRU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_329364';
DELETE FROM song_versions WHERE song_id = 'pisniua_329364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_329364';
DELETE FROM songs WHERE id = 'pisniua_329364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_329364','Прилетіли Щебетоньки','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога: Доля © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Тай начала щебетати Господаря викликати. Духові Птахи сповіщають Господа-Господаря про Добро і Красу Світа, про Його Щасливу і Здорову Долю, про те, що сотворений Світ весело і щасливо множиться. У Святочних піснях проглядає ідея щасливости від молодого роду, молодої худоби. В чім же зазначується ця ідея молодости? Це — спомин молодости, первісної сили, здоров''я, плодючости в Первопочині звіринного й людського життя, а заразом молитвенне побажання, щоб усе це вернулося. А в Нашого Хазяїна тай Ворота Нові Вой забарив си Місєць у Крузї Добрий Вечір Щедрий Вечір Защебетала гей Ластівонька Маланочка Ластівочка на Кошарі щебетала Прилетіла Ластівочка Прилетіли Щебетоньки Ци Дома Дома Пане Ґосподарю Чи дума Думу Микола Дома Щедрик-Щедрик Щедрівочка (1) Щедрик-Щедрик Щедрівочка (2) Щедрик-Щедрик Щедрівочка (3) Богу молився щоб Світ творився. Трійця буде ся сьвітити — Ми ся будем Богу молити. Сидять Святі з Перами промовляють Cловами. Будете ви тут Гостеньки мали. Листки з приводу цієї Пісні: Астральна реліґія. Трійця. Українське Свято Воведення 4.12 - Передріздвяний Святочний час. Еротичні містерії, Катерини 7.12 — Передріздвяний Святочний час. Св. Микола 19.12 – Народний речник перед Богом і Прадід. Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда) ― Святий Збір (Трійця) ― Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','Прилетіли Щебетоньки
Перед ваші Океноньки
Сїли-пали защебетали
Будете ви тут Гостеньки мали
Перший гостонько сам Господонько
Закликав Господь в Окенонько
Ой вийди-вийди Господареньку!
Господар вийшов Богу ся вклонив
Щоб минї Господь Доленьку дав!
Обозри ся Господароньку
Чи світит Зора на Подвіроньку
Вже (Зора) вийшла (тай) розсвітила
Всю челядоньку розвеселила

А за Зоренькою Доленька іде
Яла Она ся допитувати
Для кого ви Столи стелите
Ми тут Доленько Трійцю робили
Трійцю з вощеньку до Божого домоньку

Яла ся (Доля) допитувати
Яку вам Доленьку дати
Дай нам Доленьку всїм здоровенько
Бо пійдемо в Божий Домонько
Понесемо Трійцю з вощеньку
Поставимо на Престоленьку
Трійця буде ся сьвітити
Ми ся будем Богу молити','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_329364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_329364','Прилетіли Щебетоньки','Прилетіли Щебетоньки
Перед ваші Океноньки
Сїли-пали защебетали
Будете ви тут Гостеньки мали
Перший гостонько сам Господонько
Закликав Господь в Окенонько
Ой вийди-вийди Господареньку!
Господар вийшов Богу ся вклонив
Щоб минї Господь Доленьку дав!
Обозри ся Господароньку
Чи світит Зора на Подвіроньку
Вже (Зора) вийшла (тай) розсвітила
Всю челядоньку розвеселила

А за Зоренькою Доленька іде
Яла Она ся допитувати
Для кого ви Столи стелите
Ми тут Доленько Трійцю робили
Трійцю з вощеньку до Божого домоньку

Яла ся (Доля) допитувати
Яку вам Доленьку дати
Дай нам Доленьку всїм здоровенько
Бо пійдемо в Божий Домонько
Понесемо Трійцю з вощеньку
Поставимо на Престоленьку
Трійця буде ся сьвітити
Ми ся будем Богу молити');
DELETE FROM song_links WHERE song_id = 'pisniua_329065';
DELETE FROM song_versions WHERE song_id = 'pisniua_329065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_329065';
DELETE FROM songs WHERE id = 'pisniua_329065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_329065','Дивно твоя краса летить за тисячі років','Музика: Ірена Карпа Слова: Ірена Карпа. Виконує: Ірена Карпа','uk','ukraine_1991',NULL,NULL,'слова розібрано на слух: LO-FI Травми, співає Ірена Карпа','Ірена Карпа, Фактично Самі: LO-FI Травми, Mp3 — http://www.karpa.name/en/songs.html Видиво — http://www.karpa.name/ua/video.html','дивно-дивно твоя краса летить за тисячі років
тінь на скронях знаки що в прірву тягнуть
прірву глибоку моя воля розірве
серце витре пальці об вуста твої
моя воля кличе на сполох б''є зникає
дивина дивина дивина а-а а-а
дивина а-а
дивина

.....д''івина

дивно-дивно не прочитати хто ти демон чи янгол
я боюся хоча і знаю знаю те що не варто
на край світу щоб не зустрітися з собою в тілі твоїм
на край світу там де на дні лежить коха...
дивина дивина-а
дивина а-а а-а
дивина а-а-а
дивина
а-а а-а
а-а','[''pisni.org.ua'', ''cat:druzhba'', ''cat:manrivni'', ''Пісні про дружбу'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_329065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_329065','Дивно твоя краса летить за тисячі років','дивно-дивно твоя краса летить за тисячі років
тінь на скронях знаки що в прірву тягнуть
прірву глибоку моя воля розірве
серце витре пальці об вуста твої
моя воля кличе на сполох б''є зникає
дивина дивина дивина а-а а-а
дивина а-а
дивина

.....д''івина

дивно-дивно не прочитати хто ти демон чи янгол
я боюся хоча і знаю знаю те що не варто
на край світу щоб не зустрітися з собою в тілі твоїм
на край світу там де на дні лежить коха...
дивина дивина-а
дивина а-а а-а
дивина а-а-а
дивина
а-а а-а
а-а');
DELETE FROM song_links WHERE song_id = 'pisniua_3303424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3303424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3303424';
DELETE FROM songs WHERE id = 'pisniua_3303424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3303424','Марш бурлаків',NULL,'uk','ukr_ssr_1919_1991',NULL,'1947','аудіозапис','Пісня Куріня ст. пластунів "Бурлаки", створена 1947 року на еміґрації.','Гей, ми - бурлаки, бурлаки,
Кожний до трудів привик,
Замість грізної відзнаки
Носим подертий черевик!

Нас не злякає лявіна,
Ані Сагари піски,
Море для нас по коліна,
А Міссісіпі по кістки.','[''pisni.org.ua'', ''cat:plastovi'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3303424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3303424','Марш бурлаків','Гей, ми - бурлаки, бурлаки,
Кожний до трудів привик,
Замість грізної відзнаки
Носим подертий черевик!

Нас не злякає лявіна,
Ані Сагари піски,
Море для нас по коліна,
А Міссісіпі по кістки.');
DELETE FROM song_links WHERE song_id = 'pisniua_329828';
DELETE FROM song_versions WHERE song_id = 'pisniua_329828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_329828';
DELETE FROM songs WHERE id = 'pisniua_329828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_329828','Добрий Вечір Щедрий Вечір','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло. Тай начала щебетати Господаря викликати. Устань Ґаздо підведися! Листки з приводу цієї пісні: Українське Свято Воведення 4.12 - Передріздвяний Святочний час. Еротичні містерії, Катерини 7.12 — Передріздвяний Святочний час. Св. Микола 19.12 – Народний речник перед Богом і Прадід. Рокове Коло. Стежки до листків про Українські традиції.','Добрий Вечір Щедрий Вечір
Цьому Ґазді на Весь-Вечір!

Прилетіла Ластівочка
Сіла собі Край Віконця

Як почала щебетати
Ґазду з Хати викликати

Устань Ґаздо підведися
У Кошару подивися!

Там Овечки покотились
Баранчики народились

Ці Баранці Круторогі
А вам Ґаздо на здоров''я!','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:philosophic'', ''cat:shchedrivky'', ''Колядки'', ''Філософські пісні'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_329828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_329828','Добрий Вечір Щедрий Вечір','Добрий Вечір Щедрий Вечір
Цьому Ґазді на Весь-Вечір!

Прилетіла Ластівочка
Сіла собі Край Віконця

Як почала щебетати
Ґазду з Хати викликати

Устань Ґаздо підведися
У Кошару подивися!

Там Овечки покотились
Баранчики народились

Ці Баранці Круторогі
А вам Ґаздо на здоров''я!');
DELETE FROM song_links WHERE song_id = 'pisniua_3296065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3296065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3296065';
DELETE FROM songs WHERE id = 'pisniua_3296065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3296065','Колискова','Музика: Vivienne Mort Слова: Vivienne Mort. Виконує: Vivienne Mort','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Руки лагідні дрімоти
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
DELETE FROM song_links WHERE song_id = 'pisniua_3292168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3292168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3292168';
DELETE FROM songs WHERE id = 'pisniua_3292168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3292168','Розстелився туман над Карпатами','Музика: Ярослав Нудик Слова: Ярослав Нудик. Виконує: Курінь','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис',NULL,'Розстелився туман над Карпатами
І повис на ялини стрункі.
Там прощались з своїми дівчатами, |
Хлопці йшли на війну молоді...    | (2)

І ласкаві слова на прощання
Говорили голубкам своїм,
Про єдине і вірне кохання,        |
Наказали чекати усім.             | (2)

Не прощаємося з вами, любоньки,
Не співайте нам пісню сумну.
Ще обнімемо ми вас, голубоньки,   |
І зустрінемо разом весну.         | (2)

Розстелився туман над Карпатами
І повис на ялини стрункі.
Там прощались з своїми дівчатами, |
Хлопці йшли на війну молоді...    | (2)

Хлопці йшли на війну молоді...    | (2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3292168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3292168','Розстелився туман над Карпатами','Розстелився туман над Карпатами
І повис на ялини стрункі.
Там прощались з своїми дівчатами, |
Хлопці йшли на війну молоді...    | (2)

І ласкаві слова на прощання
Говорили голубкам своїм,
Про єдине і вірне кохання,        |
Наказали чекати усім.             | (2)

Не прощаємося з вами, любоньки,
Не співайте нам пісню сумну.
Ще обнімемо ми вас, голубоньки,   |
І зустрінемо разом весну.         | (2)

Розстелився туман над Карпатами
І повис на ялини стрункі.
Там прощались з своїми дівчатами, |
Хлопці йшли на війну молоді...    | (2)

Хлопці йшли на війну молоді...    | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_331168';
DELETE FROM song_versions WHERE song_id = 'pisniua_331168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_331168';
DELETE FROM songs WHERE id = 'pisniua_331168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_331168','Спи Мій Хлопчику Прекрасний Баєчки-баю','Музика: Олександр Гречанінов Слова: народні','uk','ukraine_before_1917',NULL,NULL,'Співаймо Світові-Дитині: Колядки, Щедрівки та Колискові © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2002','Колискові: Світові-Дитині. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... – Мед і Ябка... Ходить Котик по Плоточку. Листки з приводу цієї Пісні: Еротичні містерії, Катерини 7.12 — Передріздвяний Святочний час. Еротичні містерії, Калета 13.12 — Передріздвяний Святочний час. Співаймо Світові-Дитині: Колядки, Щедрівки та Колискові. Стежки до листків про Українські традиції. Висловлювання: Відчути і зрозуміти. Підійміть очі ваші та гляньте на ниви, як вони пополовіли вже для жнив. І ще: Я маю їжу їсти, якої ви не знаєте. – Євангелія (від Івана)','Спи Мій Хлопчику Прекрасний Баєчки-баю
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
DELETE FROM song_links WHERE song_id = 'pisniua_3303869';
DELETE FROM song_versions WHERE song_id = 'pisniua_3303869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3303869';
DELETE FROM songs WHERE id = 'pisniua_3303869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3303869','З Новим роком!',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Рік закінчився Старий,
Розпочався Рік Новий,
І у нас на Україні біло, біло!
Морозець вже пристає,
Вікна розмальовує,
Всі чекають,
Щоб дванадцята пробила!
І, о, диво, він прийшов до нас!

Приспів:
З Новим Роком! З Новим щастям!
Казка наша почалась вже!
Всі чекають на подарунки -
Під ялинкою пакунки.
З новим Роком! З Новим щастям!
Щоб збулись всі мрії ваші!
Дід Мороз в своїй торбинці
Щастя принесе на рік цей!

Скільки снігу намело,
Наче з неба золото.
Нам зима дарує
Свято новорічне.
Всі радіють на землі:
І дорослі, і малі,
Але ми радіємо за всіх найбільше,
Бо співаєм пісню цю для вас!

Приспів.

З Новим Роком! З Новим щастям!
З Новим Роком! З Новим щастям!
З Новим Роком! З Новим щастям!
З Новим Роком! З Новим щастям!

З новим-новим-новим роком!
З новим-новим-новим щастям!
З новим-новим-новим роком!
З новим-новим-новим щастям!

З Новим Роком! З Новим щастям!','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:new-year'', ''Дитячі пісні'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3303869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3303869','З Новим роком!','Рік закінчився Старий,
Розпочався Рік Новий,
І у нас на Україні біло, біло!
Морозець вже пристає,
Вікна розмальовує,
Всі чекають,
Щоб дванадцята пробила!
І, о, диво, він прийшов до нас!

Приспів:
З Новим Роком! З Новим щастям!
Казка наша почалась вже!
Всі чекають на подарунки -
Під ялинкою пакунки.
З новим Роком! З Новим щастям!
Щоб збулись всі мрії ваші!
Дід Мороз в своїй торбинці
Щастя принесе на рік цей!

Скільки снігу намело,
Наче з неба золото.
Нам зима дарує
Свято новорічне.
Всі радіють на землі:
І дорослі, і малі,
Але ми радіємо за всіх найбільше,
Бо співаєм пісню цю для вас!

Приспів.

З Новим Роком! З Новим щастям!
З Новим Роком! З Новим щастям!
З Новим Роком! З Новим щастям!
З Новим Роком! З Новим щастям!

З новим-новим-новим роком!
З новим-новим-новим щастям!
З новим-новим-новим роком!
З новим-новим-новим щастям!

З Новим Роком! З Новим щастям!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3303869_l1','pisniua_3303869','YouTube','https://www.youtube.com/watch?v=zbGnbctrrr0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3303869_l2','pisniua_3303869','YouTube','https://www.youtube.com/watch?v=WNOhe_HL16k','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3309727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3309727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3309727';
DELETE FROM songs WHERE id = 'pisniua_3309727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3309727','Ой, плаче, тужить стара мати','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,'Пісня 30-х років минулого століття.','Ой, плаче, тужить стара мати,
Та ще й дівчина молода, -
Злетілись кати, мов ті круки,
На наші села і міста.

Злетілись кати, мов ті круки,
Забрали милого зі сну:
"Прощай, прощай, моя дівчино,
Я завтра на розстріл іду!

Не сам один я тут попався -
Нас триста орлів тут сидить,
І щонайкращий цвіт України -
Найтяжчі муки він терпить.

Щодня виводять по одному.
Під звук моторів чути стріл,
І ще раз: "Слава Україні!" -
Тоді мертві падуть долів".

Ніхто не скаже, де могила,
Де поховав червоний кат,
А на могилі не заплаче
Ні сестра, ані рідний брат.

На тій могилі кущ один калини,
А нею вітер шелестить:
Вона мені всю правду скаже,
Де мій миленький твердо спить.

Сама я руту посадила,
Сама я буду поливать,
Сама повстанця полюбила,
Сама я буду забувать.','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3309727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3309727','Ой, плаче, тужить стара мати','Ой, плаче, тужить стара мати,
Та ще й дівчина молода, -
Злетілись кати, мов ті круки,
На наші села і міста.

Злетілись кати, мов ті круки,
Забрали милого зі сну:
"Прощай, прощай, моя дівчино,
Я завтра на розстріл іду!

Не сам один я тут попався -
Нас триста орлів тут сидить,
І щонайкращий цвіт України -
Найтяжчі муки він терпить.

Щодня виводять по одному.
Під звук моторів чути стріл,
І ще раз: "Слава Україні!" -
Тоді мертві падуть долів".

Ніхто не скаже, де могила,
Де поховав червоний кат,
А на могилі не заплаче
Ні сестра, ані рідний брат.

На тій могилі кущ один калини,
А нею вітер шелестить:
Вона мені всю правду скаже,
Де мій миленький твердо спить.

Сама я руту посадила,
Сама я буду поливать,
Сама повстанця полюбила,
Сама я буду забувать.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3309727_l1','pisniua_3309727','YouTube','https://www.youtube.com/watch?v=d1r6JMrh3Fs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_330727';
DELETE FROM song_versions WHERE song_id = 'pisniua_330727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_330727';
DELETE FROM songs WHERE id = 'pisniua_330727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_330727','Батяр я си, батяр','Українська народна пісня. Виконує: Віктор Морозов','uk','ukraine_before_1917',NULL,NULL,'1. http://www.mo-productions.com. 2. Аудіо-CD "Віктор Морозов. Тільку ві Львові". 2002.','Кожна львівська дільниця мала свій фольклор і свої пісенні гімни. Батяри Личакова, Клепарова, Замарстинова, Голоска, Підзамча, Городоцького передмістя вміли не тільки бити писки, але й влаштовували гучні забави, слава про які котилася містом... (http://www.mo-productions.com) Текст взято з джерела 1, доповнено за джерелом 2. Акорди записано на слух з аудіо. Тональність оригінальна. * Тут в аудіо: "Як мав штири рочки, ходив до дівчини". Послухати (Real Audio) можна тут: http://www.mo-productions.com Підбір акордів: bohdanko (pisni.org.ua)','F
Батяр я си, батяр з малої дитини,
Ой, дана-дана, дана-дана, гей!
C
Як мав штири роки, ходив до дівчини, *
F
Ой, дана-дана, дана-дана, гей!
Батяруйте, хлопці, як я батярую,
Ой, дана-дана, дана-дана, гей!
Ні одної нічки дома не ночую.
Ой, дана-дана, дана-дана, гей!
Маю жаль на маму, маю жаль на тата,
Ой, дана-дана, дана-дана, гей!
Же мя породили такого вар''ята.
Ой, дана-дана, дана-дана, гей!','[''pisni.org.ua'', ''cat:dances'', ''cat:polky'', ''Пісні до танцю'', ''Польки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_330727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_330727','Батяр я си, батяр','F
Батяр я си, батяр з малої дитини,
Ой, дана-дана, дана-дана, гей!
C
Як мав штири роки, ходив до дівчини, *
F
Ой, дана-дана, дана-дана, гей!
Батяруйте, хлопці, як я батярую,
Ой, дана-дана, дана-дана, гей!
Ні одної нічки дома не ночую.
Ой, дана-дана, дана-дана, гей!
Маю жаль на маму, маю жаль на тата,
Ой, дана-дана, дана-дана, гей!
Же мя породили такого вар''ята.
Ой, дана-дана, дана-дана, гей!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_330727_l1','pisniua_330727','YouTube','https://www.youtube.com/watch?v=OgcBGqfuiTM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_33121';
DELETE FROM song_versions WHERE song_id = 'pisniua_33121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_33121';
DELETE FROM songs WHERE id = 'pisniua_33121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_33121','Місяць на небі','Українська народна пісня. Виконує: Дударик, Анатолій Солов''яненко, Мар''ян Шуневич, Рушничок, Світлана Криворучко, Володимир Миркотан, Ватра','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Місяць на небі, зіроньки сяють,
Тихо по морю човен пливе.
В човні дівчина пісню співає,    |
А козак чує - серденько мре.     | (2)

Пісня та мила, пісня та люба
Все про кохання, все про любов.
Як ми любились - тай розійшлися, |
Тепер зійшлися навіки знов.      | (2)

Ой очі, очі, очі дівочі...
Темні, як нічка, ясні як день
Ви ж мене, очі, плакать навчили, |
Де ж ви навчились зводить людей? | (2)

Місяць на небі, зіроньки сяють,
Тихо по морю човен пливе.
В човні дівчина пісню співає,    |
А козак чує - серденько мре.     | (2)','[''pisni.org.ua'', ''cat:lirychni'', ''cat:romansy'', ''Пісні про кохання, ліричні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_33121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_33121','Місяць на небі','Місяць на небі, зіроньки сяють,
Тихо по морю човен пливе.
В човні дівчина пісню співає,    |
А козак чує - серденько мре.     | (2)

Пісня та мила, пісня та люба
Все про кохання, все про любов.
Як ми любились - тай розійшлися, |
Тепер зійшлися навіки знов.      | (2)

Ой очі, очі, очі дівочі...
Темні, як нічка, ясні як день
Ви ж мене, очі, плакать навчили, |
Де ж ви навчились зводить людей? | (2)

Місяць на небі, зіроньки сяють,
Тихо по морю човен пливе.
В човні дівчина пісню співає,    |
А козак чує - серденько мре.     | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l1','pisniua_33121','YouTube','https://www.youtube.com/watch?v=le4XkAkuM2Q','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l2','pisniua_33121','YouTube','https://www.youtube.com/watch?v=9uZw_WK8Ap4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l3','pisniua_33121','YouTube','https://www.youtube.com/watch?v=qSEGYgntZgU','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l4','pisniua_33121','YouTube','https://www.youtube.com/watch?v=0RSOXrfbUmw','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l5','pisniua_33121','YouTube','https://www.youtube.com/watch?v=LmFhZJPueZ0','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l6','pisniua_33121','YouTube','https://www.youtube.com/watch?v=CjaS-hg-T_o','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l7','pisniua_33121','YouTube','https://www.youtube.com/watch?v=wRVir8EyP9s','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l8','pisniua_33121','YouTube','https://www.youtube.com/watch?v=00p9hon2M4k','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l9','pisniua_33121','YouTube','https://www.youtube.com/watch?v=-Q0073NgZ0Q','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l10','pisniua_33121','YouTube','https://www.youtube.com/watch?v=6-3hXNLYbiY','video',NULL,10);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l11','pisniua_33121','YouTube','https://www.youtube.com/watch?v=PEWHzwZY_oY','video',NULL,11);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l12','pisniua_33121','YouTube','https://www.youtube.com/watch?v=T6c5f761XxY','video',NULL,12);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l13','pisniua_33121','YouTube','https://www.youtube.com/watch?v=x6BOPdxxueg','video',NULL,13);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l14','pisniua_33121','YouTube','https://www.youtube.com/watch?v=r0YTRMZ83TA','video',NULL,14);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33121_l15','pisniua_33121','http://guitarshilin.ru/index53ba.htm','http://guitarshilin.ru/index53ba.htm','external',NULL,15);
DELETE FROM song_links WHERE song_id = 'pisniua_331323';
DELETE FROM song_versions WHERE song_id = 'pisniua_331323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_331323';
DELETE FROM songs WHERE id = 'pisniua_331323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_331323','Хтось у Борі гукає','Українська народна пісня. Виконує: Ніна Матвієнко, Тріо "Золоті Ключі"','uk','ukraine_before_1917',NULL,NULL,'Потаємні пісні любощів і кохання © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2002','Пара - любощі: Бір-Кінь. Шкода-Город. Гаївки-Великдень: Українське свято Відродження Світа. Астральні Заручини — Українське містичне Весілля: Різдво Світа / Купала. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... – Мед і Ябка... Кругом Нього зелененько всередині веселенько. Спутай Коня на Отаву в Залізнії Пути. Хлопець Коней шукає. Івана Купала тай в Воду упала. Ой Твої Воли давно в Шкоді. Чого Івасю змарнів-змарнів Листки з приводу цієї Пісні: Еротичні містерії, тиждень від Катерини 7.12 до Калети — Передріздвяний Святочний час. Еротичні містерії, Калета 13.12 — Передріздвяний Святочний час. Гаїлка-Великдень — Українське Свято Відродження Світа. Стежки до листків про Українські традиції. Для нас, для розуміння нашого сьогоднішнього внутрішнього "я", важна не тільки наша недавня козацька історія і не тільки князівські часи, але й також і всі попередні часи. — Вадим Щербаківський.','Хтось у Борі гукає    | (2)
Хлопець Коней шукає   | (2)

Не шукай Хлопче Коней | (2)
Твої Коники в Шкоді   | (2)

Твої Коники в Шкоді   | (2)
У Дівчини в Городі    | (2)

Піди Коники займеш
Тай до Дівчини зайдеш | (2)','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_331323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_331323','Хтось у Борі гукає','Хтось у Борі гукає    | (2)
Хлопець Коней шукає   | (2)

Не шукай Хлопче Коней | (2)
Твої Коники в Шкоді   | (2)

Твої Коники в Шкоді   | (2)
У Дівчини в Городі    | (2)

Піди Коники займеш
Тай до Дівчини зайдеш | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3314525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3314525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3314525';
DELETE FROM songs WHERE id = 'pisniua_3314525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3314525','Випускний бал','Музика: Степан Осипчук Слова: М. Шакура','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Щемний смуток наповнює нас,
Наче в чомусь сьогодні ми винні.
До побачення, школо і клас:
Ми з тобою прощаємось нині.

Тут роки незабутні пройшли:
І дитинство, і юність крилата.
В твоїх стінах скарбницю знайшли,
Що не тільки знаннями багата.

І тепер відлітаємо ми
Вже немовби на іншу планету.
Лише вчора були ми дітьми,
А тепер віддаємо естафету.

Відійдуть у минуле роки,
Наші скроні побілять вже зими.
Ми вернемось не як старики,
Ми вернемось завжди молодими.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3314525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3314525','Випускний бал','Щемний смуток наповнює нас,
Наче в чомусь сьогодні ми винні.
До побачення, школо і клас:
Ми з тобою прощаємось нині.

Тут роки незабутні пройшли:
І дитинство, і юність крилата.
В твоїх стінах скарбницю знайшли,
Що не тільки знаннями багата.

І тепер відлітаємо ми
Вже немовби на іншу планету.
Лише вчора були ми дітьми,
А тепер віддаємо естафету.

Відійдуть у минуле роки,
Наші скроні побілять вже зими.
Ми вернемось не як старики,
Ми вернемось завжди молодими.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3314525_l1','pisniua_3314525','http://osypchuk.at.ua/','http://osypchuk.at.ua/','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_330121';
DELETE FROM song_versions WHERE song_id = 'pisniua_330121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_330121';
DELETE FROM songs WHERE id = 'pisniua_330121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_330121','В Чистому Полі Сам Плужок ходить','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Що за Плуг, який сам у Полі ходить і оре, а за ним Господь ходить? Що за Поле? Чому народні знахарки говорять: звертайся до Місяця, а молися до Бога? Колядка стародавня: Українське Різдво Світа. В Чистому Полі Сам Плужок ходить. А в Ліску в Ліску на Жовтім Піску А в Полі в Полі Плужок ходит А в Полі в Полі Сам Плужок оре В Полі Полі Плужок оре А в Полі Полі Сам Господь ходив В Чистому Полі Сам Плужок ходить Гей понад Лужок оре там Плужок За Горою за Крутою Щедрий Вечір Місяченьку Мій Братіку Ой в Чистім Полі на Оболоні Гей грай Море Ой Дзяде Дзяде на Твойму Дворі - Сив Голуб Ой Добрий Вечір Пане Господарю ми в Тебе Ой там за Лісом за Дубиною - Плужок оре Ой ти Місячку мій Братчику Орала би ся Золота Гора дзвиніли Під Дубиною під Зеленою Ой дай Боже Розійдися Туманочку оре Милий із Раночку Росте Деревко Тонке й Високе Чий же то Плужок найранче вийшов А всі Святії за Погоничів за Посівачів. Листки з приводу цієї Пісні: Українське Свято Воведення 4.12 - Передріздвяний Святочний час. Св. Микола 19.12 – Народний речник перед Богом і Прадід. Бог, Різдво Світа, Дідух і Лицарі. Cвятий Збір, 8 січня. Весілля — Свята Неділя: Святий Коровай. Стежки до листків про Українські традиції.','В Чистому Полі Сам Плужок ходить

Приспів :
Святий Вечір Добрий Вечір

Сам плужок ходить Божу Матір водить
Божа Мати ходить Воли поганяє
Воли поганяє до них промовляє
Г''оріте Синки г''оріть Долинки
То посіємо Жито-Пшеницю
Жито-Пшеницю всяку Пашницю
А з Колосочка Жита Коробочка
А із Снопочка Жита Повна Бочка','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:shchedrivky'', ''Колядки'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_330121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_330121','В Чистому Полі Сам Плужок ходить','В Чистому Полі Сам Плужок ходить

Приспів :
Святий Вечір Добрий Вечір

Сам плужок ходить Божу Матір водить
Божа Мати ходить Воли поганяє
Воли поганяє до них промовляє
Г''оріте Синки г''оріть Долинки
То посіємо Жито-Пшеницю
Жито-Пшеницю всяку Пашницю
А з Колосочка Жита Коробочка
А із Снопочка Жита Повна Бочка');
DELETE FROM song_links WHERE song_id = 'pisniua_331929';
DELETE FROM song_versions WHERE song_id = 'pisniua_331929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_331929';
DELETE FROM songs WHERE id = 'pisniua_331929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_331929','І се Село і то Село','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Потаємні пісні любощів і кохання © Видавництво „Павутинонька“, Нью Йорк – Львів – Київ – Харків – Москва, 2002 2. Веснянки. Українські народні пісні. - К.: Музична Україна, 1988. С. 181.','*Відміна подана за дж. 2. У ній однакова ритмічна будова в''язок. Відповідає доданим файлам. Еротика: Катерини – Калета – Андрія... Зелені Свята... Гаївки-Великдень... Весілля... Кругом Нього зелененько всередині веселенько. Правой ручкою обняла ще й поцілувала. Читати листки, де є згадка з приводу цієї Пісні: Еротичні містерії, Катерини 7.12 — Передріздвяний Святочний час. Еротичні містерії, Калета 13.12 — Передріздвяний Святочний час. Стежки до інших листків про Українські пісні.','І се Село і то Село
Чомусь мені не весело
Там мені веселенько
Де моє Серденько

Я ж думала чужий іде
Та мала тікати
Аж то Моє Серденятко
Іде мене цілувати

Я ж думала чужий іде
Та мала ховацця
Аж то Моє Серденятко
Іде ціловацця
Відміна:*

І се Село і то Село,
Чомусь мені невесело!
Ой там мені веселенько,
Де моє Серденько.

Я ж думала - чужий іде
Та вже мала заховаться,
Аж то Моє Серденятко
Іде цілуваться

Я ж думала - чужий іде
Та вже мала утікати,
А то Моє Серденятко -
Мене цілувати','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_331929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_331929','І се Село і то Село','І се Село і то Село
Чомусь мені не весело
Там мені веселенько
Де моє Серденько

Я ж думала чужий іде
Та мала тікати
Аж то Моє Серденятко
Іде мене цілувати

Я ж думала чужий іде
Та мала ховацця
Аж то Моє Серденятко
Іде ціловацця
Відміна:*

І се Село і то Село,
Чомусь мені невесело!
Ой там мені веселенько,
Де моє Серденько.

Я ж думала - чужий іде
Та вже мала заховаться,
Аж то Моє Серденятко
Іде цілуваться

Я ж думала - чужий іде
Та вже мала утікати,
А то Моє Серденятко -
Мене цілувати');
DELETE FROM song_links WHERE song_id = 'pisniua_3317962';
DELETE FROM song_versions WHERE song_id = 'pisniua_3317962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3317962';
DELETE FROM songs WHERE id = 'pisniua_3317962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3317962','Любисток','Музика: Анна Олєйнікова Слова: Людмила Чижова. Виконує: Анастасія Карабан','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У любистку мати
Донечку купала,
Щоб міцне здоров''я
На все життя мала.

Щоб зростала люба
Донечка вродлива,
І була у неї
Доленька щаслива.

Як купала, знала
Матінка: не марно
Коса, немов з шовку
Виростала гарна.

Оченята - терня,
Личенько, мов ружа:
Той любисток - зілля
Чарівниче дуже.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3317962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3317962','Любисток','У любистку мати
Донечку купала,
Щоб міцне здоров''я
На все життя мала.

Щоб зростала люба
Донечка вродлива,
І була у неї
Доленька щаслива.

Як купала, знала
Матінка: не марно
Коса, немов з шовку
Виростала гарна.

Оченята - терня,
Личенько, мов ружа:
Той любисток - зілля
Чарівниче дуже.');
DELETE FROM song_links WHERE song_id = 'pisniua_3321261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3321261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3321261';
DELETE FROM songs WHERE id = 'pisniua_3321261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3321261','Десятий клас','Музика: Борис Монастирьов Слова: Юрій Рибчинський','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує ВІА "Чарівні гітари".','Останній раз малюєш крейдою
Ти на дошці дівчину в білому.
Останній скінчився урок,
З тобою прощається дзвінок,
Один ти в класі пустому...

Приспів:
Твоя Наталка не з тобою
Танцює вальс прощальний свій,
Вона танцює вальс серед своїх друзів,
Ти чекаєш, коли прийде вона...
Так чекають, коли прийде весна,
Так чекають любові своєї,
Так чекають своєї долі,
Щоб у всьому зізнатися їй...

Сьогодні вечір наш прощальний,
По школі бродить сумний вальс,
І так схожі на наречених,
І так схожі на наречених
Твої подруги в бальних сукнях...

Приспів.

Стояли поруч наші парти,
І шкільний сад гілками махає.
Прощайте, шкільні роки!
І ти назавжди запам''ятаєш
Останній бал своєї Наталки...

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3321261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3321261','Десятий клас','Останній раз малюєш крейдою
Ти на дошці дівчину в білому.
Останній скінчився урок,
З тобою прощається дзвінок,
Один ти в класі пустому...

Приспів:
Твоя Наталка не з тобою
Танцює вальс прощальний свій,
Вона танцює вальс серед своїх друзів,
Ти чекаєш, коли прийде вона...
Так чекають, коли прийде весна,
Так чекають любові своєї,
Так чекають своєї долі,
Щоб у всьому зізнатися їй...

Сьогодні вечір наш прощальний,
По школі бродить сумний вальс,
І так схожі на наречених,
І так схожі на наречених
Твої подруги в бальних сукнях...

Приспів.

Стояли поруч наші парти,
І шкільний сад гілками махає.
Прощайте, шкільні роки!
І ти назавжди запам''ятаєш
Останній бал своєї Наталки...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_331467';
DELETE FROM song_versions WHERE song_id = 'pisniua_331467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_331467';
DELETE FROM songs WHERE id = 'pisniua_331467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_331467','Новая зоря','Музика: Софія Федина Слова: Софія Федина. Виконує: Софія Федина','uk','ukraine_before_1917',NULL,NULL,NULL,'Аранжування: Юрій Антонюк','Новая зоря зійшля над світом...
Нову радість принесла дорослим й дітям...
Своїм сяєвом шлях прокладає,
з Божим Рождеством усіх вітає!

Приспів:
Святий вечір, добрий вечір
Ця господа вас вітає.
Святий вечір, добрий вечір,
Зірка з неба нам сіяє.
Святий вечір, добрий вечір,
Ми усі одна родина.
Святий вечір, добрий вечір -
Колядує Україна.

Шастя і добро у кожній хаті.
Щирістю й теплом усі багаті.
Хай колядки звуки не змовкають -
Небеса усіх благословляють!

Приспів','[''pisni.org.ua'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_331467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_331467','Новая зоря','Новая зоря зійшля над світом...
Нову радість принесла дорослим й дітям...
Своїм сяєвом шлях прокладає,
з Божим Рождеством усіх вітає!

Приспів:
Святий вечір, добрий вечір
Ця господа вас вітає.
Святий вечір, добрий вечір,
Зірка з неба нам сіяє.
Святий вечір, добрий вечір,
Ми усі одна родина.
Святий вечір, добрий вечір -
Колядує Україна.

Шастя і добро у кожній хаті.
Щирістю й теплом усі багаті.
Хай колядки звуки не змовкають -
Небеса усіх благословляють!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_330869';
DELETE FROM song_versions WHERE song_id = 'pisniua_330869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_330869';
DELETE FROM songs WHERE id = 'pisniua_330869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_330869','Господарський Двір на Семи Стовпах','Українська народна пісня. Виконує: Берегиня','uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Колядка стародавня: Українське Різдво Світа. Рай розвився Господь звеселився. Буде в Тебе Господь на Вечері. Ой там виxодило та Три Товариші. А посеред Двора стоять Три Дерева. Володар Володар й одчиняй Ворота. Своєго Дворку Самі Володаре. Листки з приводу цієї Пісні: Ідея Бога на Свят-Вечер. Бог, Різдво Світа, Дідух і Лицарі. Українські релігійні роздуми про Бога: Яблучко. Св. Микола 19.12 – Народний речник перед Богом і Прадід. Стежки до листків про Українські традиції.','Господарський Двір на Семи Стовпах
Стовпи Точені Позолочені
А посеред Двора стоять Три Дерева

Чи Дома Дома Пане Господаре
Своєго Дворку Самі Володаре

Приспів тут і далі:
Щедрий Вечір Добрий Вечір
Добрим Людям на Здоров''я !

А я знаю що Пан Дома
Сидить собі Конець Стола

На Нім Шуба Соболева
А Шапочка Королева

А на Шубі Поясочка
На Поясі Калиточка

Коло Його Жона Його
Коло Неї Дітки Його

Скільки Кочечок стільки Дочечок
Скільки Дубочків стільки Синочків','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:philosophic'', ''cat:shchedrivky'', ''Колядки'', ''Філософські пісні'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_330869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_330869','Господарський Двір на Семи Стовпах','Господарський Двір на Семи Стовпах
Стовпи Точені Позолочені
А посеред Двора стоять Три Дерева

Чи Дома Дома Пане Господаре
Своєго Дворку Самі Володаре

Приспів тут і далі:
Щедрий Вечір Добрий Вечір
Добрим Людям на Здоров''я !

А я знаю що Пан Дома
Сидить собі Конець Стола

На Нім Шуба Соболева
А Шапочка Королева

А на Шубі Поясочка
На Поясі Калиточка

Коло Його Жона Його
Коло Неї Дітки Його

Скільки Кочечок стільки Дочечок
Скільки Дубочків стільки Синочків');
DELETE FROM song_links WHERE song_id = 'pisniua_3319626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3319626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3319626';
DELETE FROM songs WHERE id = 'pisniua_3319626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3319626','Останній дзвінок','Музика: Сергій Голоскевич Слова: Віталій Назарук','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Дзвоник лунає в дворі,
Радість несе дітворі...
Квіти в маленькій руці,
Сльози на нашім лиці.
Вальс на шкільному дворі,
Нині іще школярі,
Фото зробили  на згадку собі,
Дякуєм, школо, тобі,
Дякуєм, школо, тобі...

Приспів:
Поведуть нас дороги у даль,
Досягнемо своєї мети,
Але у серці застигла печаль,
Пам''ять наших шкільних років.
Рідний вальс на шкільному подвір''ї,
Пригадаємо, друзі, не раз,
Вечори в товариськім сузір''ї,
Близький серденьку наш шкільний вальс,
Близький серденьку наш шкільний вальс...

Нас поведе у  життя,
Кожного доля своя,
Але на всьому путі
Лишаться дні золоті.
Пам''ять на вік збереже
Рідне, шкільне - не чуже,
Ранок при сонці весняний ясний,
Дзвоник останній, шкільний,
Дзвоник останній, шкільний...

Приспів.

Стих наш останній дзвінок,
Ось і останній урок,
В смутку застигли батьки,
Що нас вели всі роки,
Так пролетіли літа,
Але ця мить золота.
Ми ще до школи прийдемо не раз
І закружляє нас вальс,
І закружляє нас вальс...

Приспів.    Фонограма мінус (mp3)','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3319626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3319626','Останній дзвінок','Дзвоник лунає в дворі,
Радість несе дітворі...
Квіти в маленькій руці,
Сльози на нашім лиці.
Вальс на шкільному дворі,
Нині іще школярі,
Фото зробили  на згадку собі,
Дякуєм, школо, тобі,
Дякуєм, школо, тобі...

Приспів:
Поведуть нас дороги у даль,
Досягнемо своєї мети,
Але у серці застигла печаль,
Пам''ять наших шкільних років.
Рідний вальс на шкільному подвір''ї,
Пригадаємо, друзі, не раз,
Вечори в товариськім сузір''ї,
Близький серденьку наш шкільний вальс,
Близький серденьку наш шкільний вальс...

Нас поведе у  життя,
Кожного доля своя,
Але на всьому путі
Лишаться дні золоті.
Пам''ять на вік збереже
Рідне, шкільне - не чуже,
Ранок при сонці весняний ясний,
Дзвоник останній, шкільний,
Дзвоник останній, шкільний...

Приспів.

Стих наш останній дзвінок,
Ось і останній урок,
В смутку застигли батьки,
Що нас вели всі роки,
Так пролетіли літа,
Але ця мить золота.
Ми ще до школи прийдемо не раз
І закружляє нас вальс,
І закружляє нас вальс...

Приспів.    Фонограма мінус (mp3)');
DELETE FROM song_links WHERE song_id = 'pisniua_331766';
DELETE FROM song_versions WHERE song_id = 'pisniua_331766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_331766';
DELETE FROM songs WHERE id = 'pisniua_331766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_331766','Гиля Гиля Селезеню Гиля Гиля Білокрилий','Українська народна пісня. Виконує: Веснівка','uk','ukraine_before_1917',NULL,NULL,'Потаємні пісні любощів і кохання © Видавництво „Павутинонька“, Нью Йорк – Львів – Київ – Харків – Москва, 2002','(1) І сам Селезень Чорновусий: Може, мова про те, що "Селезень Чорновусий" — сам, не має ще Пари. Він же "Селезень Невеличкий", чи "Селезень Чорнобривий": складні імена. (2) Селезень сам — підходить до Пари. Гиля Гиля Селезеню — Еротика: Катерини – Калета – Андрія... Зелені Свята... Гаївки-Великдень... Качата-Гусята усі Гори вкрили. Читати листки, де є згадка з приводу цієї Пісні: Еротичні містерії, Катерини 7.12 — Передріздвяний Святочний час. Еротичні містерії, Калета 13.12 — Передріздвяний Святочний час. Стежки до інших листків про Українські пісні. Гиля Гиля Селезеню','Гиля-Гиля Селезеню Гиля-Гиля Білокрилий
Ох Мій Милий Чорнобривий - 2
Приспів 1: Прикуйся Ти аж до Хати
Щоб не чули Отець-Мати Селезню-Селезню
Ой на тому Селезеню тай жупан куций
І сам Селезень Чорновусий - 2
Приспів 2: Гиля-гиля Селезеню
Гиля-гиля Білокрилий Селезню-Селезню
Ой на тому Селезеню тай і черевички
І сам Селезень Невеличкий - 2
Приспів 2
Ой на тому Селезеню тай ковпак сивий
І сам Селезень Чорнобривий - 2
Приспів 2
Ой на тому Селезеню тай і панчішечки
І сам Селезень тай до Душечки - 2
Приспів 1','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_331766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_331766','Гиля Гиля Селезеню Гиля Гиля Білокрилий','Гиля-Гиля Селезеню Гиля-Гиля Білокрилий
Ох Мій Милий Чорнобривий - 2
Приспів 1: Прикуйся Ти аж до Хати
Щоб не чули Отець-Мати Селезню-Селезню
Ой на тому Селезеню тай жупан куций
І сам Селезень Чорновусий - 2
Приспів 2: Гиля-гиля Селезеню
Гиля-гиля Білокрилий Селезню-Селезню
Ой на тому Селезеню тай і черевички
І сам Селезень Невеличкий - 2
Приспів 2
Ой на тому Селезеню тай ковпак сивий
І сам Селезень Чорнобривий - 2
Приспів 2
Ой на тому Селезеню тай і панчішечки
І сам Селезень тай до Душечки - 2
Приспів 1');
DELETE FROM song_links WHERE song_id = 'pisniua_3318424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3318424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3318424';
DELETE FROM songs WHERE id = 'pisniua_3318424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3318424','Закохані','Музика: Олександр Положинський Слова: Олександр Положинський','uk','ukraine_1991',NULL,NULL,NULL,'Пісню виконує Був''є. Пісня "Закохані" була створена Олександром Положинським спеціально для кінофільму "Жива".','Закохані, розлучені серця війною,
Змучені, засліплені, загублені в пітьмі,
І з долею порваною, знекровленою ранами,
Шукали щастя в тій страшній війні...

Приспів:
Ввійди в мій день, ввійди в мій сон,
Де з серцем серце б''ється в унісон!
Ввійди в мій сон, ввійди в мій день,
Стань першою із радісних пісень!

Закохані, приречені серця,
Вогнем обпечені,
Занурені у болісний туман,
Від злих очей ховалися,
А долі й далі рвалися
І знову кров точилася із ран...

Приспів.

Закохані, замріяні,
По всесвіту розвіяні
Хоча б ще раз побути віч-на-віч
Та видно не судилося,
Все тихше в грудях билося,
Любов собі забрала вічна ніч...

Приспів. (2)','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3318424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3318424','Закохані','Закохані, розлучені серця війною,
Змучені, засліплені, загублені в пітьмі,
І з долею порваною, знекровленою ранами,
Шукали щастя в тій страшній війні...

Приспів:
Ввійди в мій день, ввійди в мій сон,
Де з серцем серце б''ється в унісон!
Ввійди в мій сон, ввійди в мій день,
Стань першою із радісних пісень!

Закохані, приречені серця,
Вогнем обпечені,
Занурені у болісний туман,
Від злих очей ховалися,
А долі й далі рвалися
І знову кров точилася із ран...

Приспів.

Закохані, замріяні,
По всесвіту розвіяні
Хоча б ще раз побути віч-на-віч
Та видно не судилося,
Все тихше в грудях билося,
Любов собі забрала вічна ніч...

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3318424_l1','pisniua_3318424','YouTube','https://www.youtube.com/watch?v=cVGSjxoolCA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3334626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3334626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3334626';
DELETE FROM songs WHERE id = 'pisniua_3334626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3334626','Величавий Севастополь','Музика: Вано Мураделі Слова: Мирослав Мамчак. Виконує: Олександр Іванов','uk','ukraine_1991',NULL,'2000','https://uk.wikipedia.org/wiki/%D0%93%D1%96%D0%BC%D0%BD_%D0%A1%D0% B5%D0%B2%D0%B0%D1%81%D1%82%D0%BE%D0','Виконує: Олександр Іванов {3926} Пісня була написана у 2000 році, вперше прозвучала в 2001 року. Пісня — українськомовна версія гімну Севастополя "Легендарный Севастополь". У приспіві слова "гордость русских моряков" змінено на "столиця українських морякiв". Крім того, у тексті стали фігурувати стародавні руси, козаки, Київ.','Хай летить велична слава
Про звитягу моряків,
Севастопольських героїв —
Всіх його захисників!
Всі у світі хай узнають,
Як ескадри кораблів
I матроси за Вітчизну
Йшли у бій на ворогів!

Приспів:
Величавий Севастополь -
Місто слави й кораблів:
Білокам''яна столиця
Українських моряків!

Тут хрестились древні руси —
Володимира сини,
I святую ратну славу
В стольний Київ принесли!
Тут не раз у бій кривавий
Йшли на подвиг козаки,
Бились на смерть в бастіонах
Українці-моряки!

Приспів.

В бойовім строю змінили
Ветеранів їх сини,
I в серцях їх пломеніє
Героїзм Сапун-гори!
То ж, якщо на нас нападуть,
Як колись у дні війни,
Знову в бій готові встати
Українські моряки!

Приспів','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3334626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3334626','Величавий Севастополь','Хай летить велична слава
Про звитягу моряків,
Севастопольських героїв —
Всіх його захисників!
Всі у світі хай узнають,
Як ескадри кораблів
I матроси за Вітчизну
Йшли у бій на ворогів!

Приспів:
Величавий Севастополь -
Місто слави й кораблів:
Білокам''яна столиця
Українських моряків!

Тут хрестились древні руси —
Володимира сини,
I святую ратну славу
В стольний Київ принесли!
Тут не раз у бій кривавий
Йшли на подвиг козаки,
Бились на смерть в бастіонах
Українці-моряки!

Приспів.

В бойовім строю змінили
Ветеранів їх сини,
I в серцях їх пломеніє
Героїзм Сапун-гори!
То ж, якщо на нас нападуть,
Як колись у дні війни,
Знову в бій готові встати
Українські моряки!

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3334626_l1','pisniua_3334626','YouTube','https://www.youtube.com/watch?v=Eqw2hNxf8SM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3333121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3333121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3333121';
DELETE FROM songs WHERE id = 'pisniua_3333121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3333121','Перечекати','Музика: Darwin Слова: Darwin. Виконує: Тіна Кароль','uk','ukraine_before_1917',NULL,NULL,'https://www.youtube.com/watch?v=kofjCoxrOrs',NULL,'Мені здається, я тебе знаю
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
DELETE FROM song_links WHERE song_id = 'pisniua_332222';
DELETE FROM song_versions WHERE song_id = 'pisniua_332222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_332222';
DELETE FROM songs WHERE id = 'pisniua_332222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_332222','А я Хліба напечу-напечу - Жона','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Потаємні пісні любощів і кохання © Видавництво „Павутинонька“, Нью Йорк – Львів – Київ – Харків – Москва, 2002','Гаївка: Українське Відродження Світа. Пісня-Гра. Еротика: Катерини – Калета – Андрія... Зелені Свята... Гаївки-Великдень... Весілля... Вибирай си кого любиш. Правой ручкою обняла ще й поцілувала. Читати листки, де є згадка з приводу цієї Пісні: Еротичні містерії, Катерини 7.12 — Передріздвяний Святочний час. Еротичні містерії, Калета 13.12 — Передріздвяний Святочний час. Стежки до інших листків про Українські пісні.','Стають двома півколами навпроти.
Дівчина-Жона посередині, поза Колом — Парубок.
Після останньої в''язки Парубок ловить Дівчину й цілує.

Помірно.

Перше Півколо:
А я Хліба напечу-напечу
Свою Жону вікличу-вікличу

Друге Півколо:
А ми Хлібец із''їмо-із''їмо
Тобі Жони не дамо не дамо

Перше Півколо:
А я Булок напечу-напечу
Свою Жону вікличу-вікличу

Друге Півколо:
А ми Булки із''їмо-із''їмо
Тобі Жони не дамо не дамо

Перше Півколо:
А я Вина наточу-наточу
Свою Жону вікличу-вікличу

Друге Півколо:
А ми вино вип''ємо-вип''ємо
Тобі Жони не дамо не дамо

Перше Півколо:
Я Цукерків накуп''ю-накуп''ю
Свою Жону вікличу-вікличу

Друге Півколо:
Ми цукерки із''їмо-із''їмо
Тобі Жони не дамо не дамо

Перше Півколо:
Я Горілки накуп''ю-накуп''ю
Таки Жону піддурю-піддурю

Друге Півколо:
Ми Горілку  вип''ємо-вип''ємо
Таки Жони не дамо не дамо

Перше Півколо:
Я Перстенів накуп''ю-накуп''ю
Свою Жону вікуп''ю-вікуп''ю

Друге Півколо:
Ми Перстенец на палец на палец
Тобі Жоно Молодец-Молодец !','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_332222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_332222','А я Хліба напечу-напечу - Жона','Стають двома півколами навпроти.
Дівчина-Жона посередині, поза Колом — Парубок.
Після останньої в''язки Парубок ловить Дівчину й цілує.

Помірно.

Перше Півколо:
А я Хліба напечу-напечу
Свою Жону вікличу-вікличу

Друге Півколо:
А ми Хлібец із''їмо-із''їмо
Тобі Жони не дамо не дамо

Перше Півколо:
А я Булок напечу-напечу
Свою Жону вікличу-вікличу

Друге Півколо:
А ми Булки із''їмо-із''їмо
Тобі Жони не дамо не дамо

Перше Півколо:
А я Вина наточу-наточу
Свою Жону вікличу-вікличу

Друге Півколо:
А ми вино вип''ємо-вип''ємо
Тобі Жони не дамо не дамо

Перше Півколо:
Я Цукерків накуп''ю-накуп''ю
Свою Жону вікличу-вікличу

Друге Півколо:
Ми цукерки із''їмо-із''їмо
Тобі Жони не дамо не дамо

Перше Півколо:
Я Горілки накуп''ю-накуп''ю
Таки Жону піддурю-піддурю

Друге Півколо:
Ми Горілку  вип''ємо-вип''ємо
Таки Жони не дамо не дамо

Перше Півколо:
Я Перстенів накуп''ю-накуп''ю
Свою Жону вікуп''ю-вікуп''ю

Друге Півколо:
Ми Перстенец на палец на палец
Тобі Жоно Молодец-Молодец !');
DELETE FROM song_links WHERE song_id = 'pisniua_332525';
DELETE FROM song_versions WHERE song_id = 'pisniua_332525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_332525';
DELETE FROM songs WHERE id = 'pisniua_332525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_332525','Наша Маринка Купалочка','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004 2. Купальські пісні. Українські народні пісні. Пісенник. Упорядник О. Ю Чебанюк. - К.: Музична Україна, 1989. - 196 с.','Пара - любощі: Берег-Купання. Купалочка. Астральні Заручини — Українське містичне Весілля: Різдво Світа / Купала. Обрядове Купання. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... – Мед і Ябка... Рай розвився Господь звеселився. Івана Купала тай в Воду упала. Посеред Моря купалась. У мене личко як Яблучко. Зовсім я Дівка Складнесенька-Ладнесенька. Були Світилки Яснії Зірки. Листки з приводу цієї Пісні: Українські релігійні роздуми про Бога. Про Свято Івана Купала Стежки до листків про Українські традиції.','Наша Маринка  Купалочка
Посеред Моря купалась   |(2)
На Бережечку білилась   |(2)

Вийшла на Улицю(Вулицю) хвалилась
У мене личко як Яблучко |(2)
У мене брови чорнесенькі
Зовсім я Дівка Складнесенька(Ладнесенька)','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_332525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_332525','Наша Маринка Купалочка','Наша Маринка  Купалочка
Посеред Моря купалась   |(2)
На Бережечку білилась   |(2)

Вийшла на Улицю(Вулицю) хвалилась
У мене личко як Яблучко |(2)
У мене брови чорнесенькі
Зовсім я Дівка Складнесенька(Ладнесенька)');
DELETE FROM song_links WHERE song_id = 'pisniua_3333869';
DELETE FROM song_versions WHERE song_id = 'pisniua_3333869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3333869';
DELETE FROM songs WHERE id = 'pisniua_3333869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3333869','Новорічна пісенька',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'З Новим Роком ми вітаємо вас щиро!
Хай лунає сміх веселий звідусіль!
І бажаємо добра, любові й миру,
Хай у танці закружляє заметіль!

Приспів:
Вітаємо із Новим Роком!
Усі ми крок за кроком
Упевнено прямуємо
У своє майбуття!
Усе Вам хай вдається,
Добро в сім''ї ведеться!
Хай радістю й любов''ю
Наповняться серця!

Новий Рік - дитинства нашого це свято,
Коли вірили ми в казку й чудеса!
На ялинці сяє вогників багато,
Ллється музика прекрасна, голосна!

Приспів.

Хай у Новому Році збудуться надії!
Наполегливо прямуйте до мети!
Прагнення душі і добрі, світлі мрії
Ви в житті своїм зумійте зберегти!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3333869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3333869','Новорічна пісенька','З Новим Роком ми вітаємо вас щиро!
Хай лунає сміх веселий звідусіль!
І бажаємо добра, любові й миру,
Хай у танці закружляє заметіль!

Приспів:
Вітаємо із Новим Роком!
Усі ми крок за кроком
Упевнено прямуємо
У своє майбуття!
Усе Вам хай вдається,
Добро в сім''ї ведеться!
Хай радістю й любов''ю
Наповняться серця!

Новий Рік - дитинства нашого це свято,
Коли вірили ми в казку й чудеса!
На ялинці сяє вогників багато,
Ллється музика прекрасна, голосна!

Приспів.

Хай у Новому Році збудуться надії!
Наполегливо прямуйте до мети!
Прагнення душі і добрі, світлі мрії
Ви в житті своїм зумійте зберегти!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3335364';
DELETE FROM song_versions WHERE song_id = 'pisniua_3335364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3335364';
DELETE FROM songs WHERE id = 'pisniua_3335364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3335364','Розмова','Музика: Микола Воловик Слова: Лариса Вировець. Виконує: Люцина Хворост, Микола Воловик','uk','ukraine_1991',NULL,NULL,'Вировець Лариса. Якби: Поезії. - Харків, 2006.',NULL,'Як не потрібен, я піду?..

Що я на це сказати мушу?
Що усмішка, як на біду,
Вже розтопила змерзлу душу?
Що півгодини цих мені
Вже півжиття не вистачало?
На тлі байдужості й брехні
Мов пісня, бесіда звучала...

Що спільна мова - то є дар,
Який єднає і лікує?
...А ми вже стомлені від свар,
І нам усім давно бракує
Порозуміння і тепла,
А, може, й трішечки любові...
А в нас проблеми та діла,
Та ще й біда напоготові...
І де й береться, навісна?
На скроні тіпнулась прожилка...

- Ідіть!..
...Буяє вже весна...
Я не така вже й сильна жінка.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3335364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3335364','Розмова','Як не потрібен, я піду?..

Що я на це сказати мушу?
Що усмішка, як на біду,
Вже розтопила змерзлу душу?
Що півгодини цих мені
Вже півжиття не вистачало?
На тлі байдужості й брехні
Мов пісня, бесіда звучала...

Що спільна мова - то є дар,
Який єднає і лікує?
...А ми вже стомлені від свар,
І нам усім давно бракує
Порозуміння і тепла,
А, може, й трішечки любові...
А в нас проблеми та діла,
Та ще й біда напоготові...
І де й береться, навісна?
На скроні тіпнулась прожилка...

- Ідіть!..
...Буяє вже весна...
Я не така вже й сильна жінка.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3335364_l1','pisniua_3335364','YouTube','https://www.youtube.com/watch?v=ftf1VPU5oZo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3327121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3327121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3327121';
DELETE FROM songs WHERE id = 'pisniua_3327121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3327121','Пісня до Першого вересня','Музика: Микола Шевченко Слова: Тетяна Лавинюкова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Перше вересня на порі,
Поспішають всі школярі:
Рідна школа і рідний клас
Зустрічають так радо нас.
Це новий вже навчальний рік
Завітав до нас на поріг,
Вирушаємо без вагань
У прекрасну країну знань!

Приспів:
В садах розквітли айстри і жоржини,
Для наших вчителів осінні квіти.
Великий шлях у кожної людини   |
З шкільної починається освіти! | (2)

Йдуть до школи всі школярі,
А над школою угорі
Сяє в сонячних променях
Синьо-жовтий державний стяг!
Пролунає шкільний дзвінок -
І почнеться новий урок.
Буде кожний з нас патріот
І єдиний весь наш народ!

Приспів.

Нехай далеко пісня наша лине,
Ми хочемо зростати і радіти!
Єдина в нас країна - Україна!  |
І ми - єдиної країни діти!     | (2)','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3327121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3327121','Пісня до Першого вересня','Перше вересня на порі,
Поспішають всі школярі:
Рідна школа і рідний клас
Зустрічають так радо нас.
Це новий вже навчальний рік
Завітав до нас на поріг,
Вирушаємо без вагань
У прекрасну країну знань!

Приспів:
В садах розквітли айстри і жоржини,
Для наших вчителів осінні квіти.
Великий шлях у кожної людини   |
З шкільної починається освіти! | (2)

Йдуть до школи всі школярі,
А над школою угорі
Сяє в сонячних променях
Синьо-жовтий державний стяг!
Пролунає шкільний дзвінок -
І почнеться новий урок.
Буде кожний з нас патріот
І єдиний весь наш народ!

Приспів.

Нехай далеко пісня наша лине,
Ми хочемо зростати і радіти!
Єдина в нас країна - Україна!  |
І ми - єдиної країни діти!     | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3338828';
DELETE FROM song_versions WHERE song_id = 'pisniua_3338828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3338828';
DELETE FROM songs WHERE id = 'pisniua_3338828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3338828','Вечір випускний','Музика: Олександр Соломон','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'І ось настав
Цей довгожданий вечір -
До нього йшли ви цілих
Десять літ.
Перетворились з милої малечі
В майже дорослих,
Вчорашніх школярів.
Сьогодні вас вітають рідні й друзі,
Прийшли усі на свято це шкільне,
І вам здається, ніби тільки вчора
За руку вели вас,
Та час невпинно йде...

Приспів:
Вечір випускний - сльози на очах,
Школо, прощавай!... Квіти у руках.
Вечір випускний... Що чекає нас?
Не повернемось вже в десятий клас.

Ви всі підете різними шляхами,
Які поведуть вас в широкий світ.
І ваша школа - наша рідна мама -
Вас проводжають в перший ваш політ.
Спасибі вам, учителі невтомні,
Спасибі вам за золото знання!
Ми не забудем ніколи рідну школу,
Бо ми єдині з нею на усе життя!

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3338828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3338828','Вечір випускний','І ось настав
Цей довгожданий вечір -
До нього йшли ви цілих
Десять літ.
Перетворились з милої малечі
В майже дорослих,
Вчорашніх школярів.
Сьогодні вас вітають рідні й друзі,
Прийшли усі на свято це шкільне,
І вам здається, ніби тільки вчора
За руку вели вас,
Та час невпинно йде...

Приспів:
Вечір випускний - сльози на очах,
Школо, прощавай!... Квіти у руках.
Вечір випускний... Що чекає нас?
Не повернемось вже в десятий клас.

Ви всі підете різними шляхами,
Які поведуть вас в широкий світ.
І ваша школа - наша рідна мама -
Вас проводжають в перший ваш політ.
Спасибі вам, учителі невтомні,
Спасибі вам за золото знання!
Ми не забудем ніколи рідну школу,
Бо ми єдині з нею на усе життя!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3338525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3338525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3338525';
DELETE FROM songs WHERE id = 'pisniua_3338525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3338525','Як жити без тебе','Музика: Олег Винник Слова: Олег Винник. Виконує: Олег Винник','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Я міг би прожити на хлібі й воді,
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
DELETE FROM song_links WHERE song_id = 'pisniua_3349626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3349626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3349626';
DELETE FROM songs WHERE id = 'pisniua_3349626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3349626','Дощик','Музика: Василь Лисенко Слова: Галина Лисенко','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Леся Лисенко.','Дощик, дощик накрапає,
Дощик, землю поливає:
Кап, кап, кап, кап, кап,
Кап, кап, кап, кап, кап...

Дощик, дощик накрапає,
Все довкола оживає.
Кап, кап, кап, кап, кап,
Кап, кап, кап, кап, кап...

Дощик, дощик накрапає,
Дощик пісеньку співає:
Кап, кап, кап, кап, кап,
Кап, кап, кап, кап, кап...','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:krasa-pryrody'', ''Дитячі пісні'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3349626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3349626','Дощик','Дощик, дощик накрапає,
Дощик, землю поливає:
Кап, кап, кап, кап, кап,
Кап, кап, кап, кап, кап...

Дощик, дощик накрапає,
Все довкола оживає.
Кап, кап, кап, кап, кап,
Кап, кап, кап, кап, кап...

Дощик, дощик накрапає,
Дощик пісеньку співає:
Кап, кап, кап, кап, кап,
Кап, кап, кап, кап, кап...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3349626_l1','pisniua_3349626','YouTube','https://www.youtube.com/watch?v=6NdeZd1VIbQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3349626_l2','pisniua_3349626','YouTube','https://www.youtube.com/watch?v=o5oU8j73eFc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3339261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3339261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3339261';
DELETE FROM songs WHERE id = 'pisniua_3339261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3339261','Татова донечка','Музика: Тетяна Кулька Слова: Тетяна Кулька','uk','ukraine_1991',NULL,NULL,'Із збірки пісень "Пісня летить над краєм".','Пісню виконують Ілона Кулька та Катруся Бражнікова (альбом: Пісня летить над краєм).','Я нікого цим вже не здивую,
Це вже ні для кого не секрет,-
Дуже міцно таточка люблю я,
В нас із ним зірковий VIP-дует.

Приспів:
Я - татова солодка донечка,
Татове русяве сонечко!
Татова солодка донечка,
Татове я сонечко!

Хочу бути схожою на тата,
Мудрою і сильною, як він.
Й стану я поважна і багата,
І відома бізнес-леді всім.

Приспів.

Знаю, що таких як я багато,
Всі ми любим татусів своїх.
Та для мене мій рідненький тато
Є завжди найкращим за усіх!

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3339261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3339261','Татова донечка','Я нікого цим вже не здивую,
Це вже ні для кого не секрет,-
Дуже міцно таточка люблю я,
В нас із ним зірковий VIP-дует.

Приспів:
Я - татова солодка донечка,
Татове русяве сонечко!
Татова солодка донечка,
Татове я сонечко!

Хочу бути схожою на тата,
Мудрою і сильною, як він.
Й стану я поважна і багата,
І відома бізнес-леді всім.

Приспів.

Знаю, що таких як я багато,
Всі ми любим татусів своїх.
Та для мене мій рідненький тато
Є завжди найкращим за усіх!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3336261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3336261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3336261';
DELETE FROM songs WHERE id = 'pisniua_3336261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3336261','Весно, йди скоріше','Музика: Анастасія Комлікова Слова: Лариса Дубас','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Пісню виконує ансамбль "Капітошка" ДМШ ім. Леонтовича (м. Донецьк).','Плаче зимонька-зима,
Снігу білого нема,
Що то за калюжі,
Мені прикро дуже...

Приспів:
Вже іде до нас весна!
Ми ж писали їй листа:
Весно, йди скоріше, |
Буде всім тепліше!  | (2)

Зимо-зимонька, не плач,
Не лютуй і нас пробач,
Хочемо радіти
В гаю поміж квітів!

Приспів.

Чути співи тут і там,
Ми співаємо для мам
Пташечками дзвінко:
Прощавай, сніжинко!

Приспів.

Ми просили у весни,
Щоби дні були ясні,
Щоби привітати
Наших мам із святом!

Приспів.','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3336261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3336261','Весно, йди скоріше','Плаче зимонька-зима,
Снігу білого нема,
Що то за калюжі,
Мені прикро дуже...

Приспів:
Вже іде до нас весна!
Ми ж писали їй листа:
Весно, йди скоріше, |
Буде всім тепліше!  | (2)

Зимо-зимонька, не плач,
Не лютуй і нас пробач,
Хочемо радіти
В гаю поміж квітів!

Приспів.

Чути співи тут і там,
Ми співаємо для мам
Пташечками дзвінко:
Прощавай, сніжинко!

Приспів.

Ми просили у весни,
Щоби дні були ясні,
Щоби привітати
Наших мам із святом!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3336261_l1','pisniua_3336261','YouTube','https://www.youtube.com/watch?v=E9rZfIPFdVY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_333560';
DELETE FROM song_versions WHERE song_id = 'pisniua_333560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_333560';
DELETE FROM songs WHERE id = 'pisniua_333560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_333560','Може настав той час...','Музика: Роман Бучко Слова: Роман Бучко. Виконує: Роман Бучко','uk','ukraine_before_1917',NULL,NULL,'Добірка поезії та прози "Моя правда", © Роман Бучко, 2006 (редакція 3)','Любій Наталочці присвячую... За те, що порятувала від самотності! Наразі виконую сам. Якщо хтось бажатиме допомогти - 8 096 749 0741 Підбір акордів: Роман Бучко','І
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
DELETE FROM song_links WHERE song_id = 'pisniua_334168';
DELETE FROM song_versions WHERE song_id = 'pisniua_334168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_334168';
DELETE FROM songs WHERE id = 'pisniua_334168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_334168','Маланки ходили Василька просили','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Співаймо Світові-Дитині © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Пасла Маланка Два Качура Символіка Щедрого Вечера і Василя. Щедрий Вечер, 13-14 січня, зачинається властиво під Новий Рік (7 днів наперед Богоявління — символ Місячний!), т. є. в вечер перед св. Василя. Це особливо улюблене Українське свято: мітичного Василя і Маланки, — є найщирішим шануванням Місяця з його женихальними мотивами (ними переповнені Щедрівки). Тоді мітичну постать Василя мішають часто з мітольоґійно-Місячною постаттю Іллї — Ілії, який є в Українського народу покровителем урожаїв збіжжя, особливо жита (сніп жита, дід Ілля, — в часі жнив, — це постава Місяця). Стежки до інших листків про Українські традиції.','Маланки ходили Василька просили
Василечку Татку пусти нас у Хатку
Перед Столом стояли Чесний Хрест держали
Моліцця Богу люди Богу Свічу ставте
А нам Пиріг дайте !

Відміни:

Маланка ходила Васильки носила
Я Жита не жала Золотий Хрест держала
Васильку Мій Батьку пусти мене в Хатку','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:lirychni'', ''cat:narodni'', ''cat:shchedrivky'', ''Колядки'', ''Пісні про кохання, ліричні'', ''Народні пісні'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_334168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_334168','Маланки ходили Василька просили','Маланки ходили Василька просили
Василечку Татку пусти нас у Хатку
Перед Столом стояли Чесний Хрест держали
Моліцця Богу люди Богу Свічу ставте
А нам Пиріг дайте !

Відміни:

Маланка ходила Васильки носила
Я Жита не жала Золотий Хрест держала
Васильку Мій Батьку пусти мене в Хатку');
DELETE FROM song_links WHERE song_id = 'pisniua_3342869';
DELETE FROM song_versions WHERE song_id = 'pisniua_3342869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3342869';
DELETE FROM songs WHERE id = 'pisniua_3342869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3342869','Козаче','Музика: Олена Білоконь Слова: Володимир Слєпцов. Виконує: Олена Білоконь','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ти мені подарував незабутню ніч,
Ніжно так поцілував і пішов на Січ.
Спалахнула блискавка, ніби знак, |
Я тебе чекатиму, мій козак!      | (2)

Приспів:
Козаку-козаче, буде бій,
Знай, що я не плачу, рідний мій!
Україну неньку захисти! -
У моїм серденьку завжди ти!

Розумію я тебе - хто ж, якщо не ти
Матір Україну зможе зберегти!
Вороги тремтітимуть, ясна річ,   |
Захистить знедолених славна Січ! | (2)

Приспів.

Свіжий вітер вісточку тобі знов
Принесе, коханий мій, про любов!
Праведну молитву почуй мою,      |
Боже, захисти його у бою!        | (2)

Приспів.

Україну неньку захисти! -
У моїм серденьку завжди ти!','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3342869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3342869','Козаче','Ти мені подарував незабутню ніч,
Ніжно так поцілував і пішов на Січ.
Спалахнула блискавка, ніби знак, |
Я тебе чекатиму, мій козак!      | (2)

Приспів:
Козаку-козаче, буде бій,
Знай, що я не плачу, рідний мій!
Україну неньку захисти! -
У моїм серденьку завжди ти!

Розумію я тебе - хто ж, якщо не ти
Матір Україну зможе зберегти!
Вороги тремтітимуть, ясна річ,   |
Захистить знедолених славна Січ! | (2)

Приспів.

Свіжий вітер вісточку тобі знов
Принесе, коханий мій, про любов!
Праведну молитву почуй мою,      |
Боже, захисти його у бою!        | (2)

Приспів.

Україну неньку захисти! -
У моїм серденьку завжди ти!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3342869_l1','pisniua_3342869','YouTube','https://www.youtube.com/watch?v=tGYwXVreIaw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3342869_l2','pisniua_3342869','YouTube','https://www.youtube.com/watch?v=hAj0VhimkM4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3342869_l3','pisniua_3342869','YouTube','https://www.youtube.com/watch?v=JMT3uQGbDDI','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3342869_l4','pisniua_3342869','YouTube','https://www.youtube.com/watch?v=D7nKmSsLJt0','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3342869_l5','pisniua_3342869','YouTube','https://www.youtube.com/watch?v=gFnEzdSAbFE','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_3358020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3358020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3358020';
DELETE FROM songs WHERE id = 'pisniua_3358020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3358020','Сонечко','Музика: Василь Лисенко Слова: Галина Лисенко','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Леся Лисенко.','Сонечко, сонечко
З неба усміхається!..
Сонечко, сонечко
До малят вітається!..

Сонечко, сонечко
На сопілці грає!..
Сонечко, сонечко
Пісеньку співає!..

Сонечко, сонечко
Наше золотеньке,
Світи, світи, сонечко,
Діточкам маленьким!

Сонечко, сонечко
З неба усміхається!..
Сонечко, сонечко
До малят вітається!..','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:krasa-pryrody'', ''Дитячі пісні'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3358020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3358020','Сонечко','Сонечко, сонечко
З неба усміхається!..
Сонечко, сонечко
До малят вітається!..

Сонечко, сонечко
На сопілці грає!..
Сонечко, сонечко
Пісеньку співає!..

Сонечко, сонечко
Наше золотеньке,
Світи, світи, сонечко,
Діточкам маленьким!

Сонечко, сонечко
З неба усміхається!..
Сонечко, сонечко
До малят вітається!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3358020_l1','pisniua_3358020','YouTube','https://www.youtube.com/watch?v=9bJUYE0NTS8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_333869';
DELETE FROM song_versions WHERE song_id = 'pisniua_333869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_333869';
DELETE FROM songs WHERE id = 'pisniua_333869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_333869','Щодрий Вечор Добрий Вечор','Українська народна пісня. Виконує: Ніна Матвієнко, Тріо "Золоті Ключі"','uk','ukraine_before_1917',NULL,NULL,'Співаймо Світові-Дитині © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Щедровати — Ще даровати?! Щодрувати — Що даровати?! Наспів подібний до - Щедрик Щедрик Щедрівочка (3) Стародавні Колядки-Щедрівки: Українські Різдво Світа і Щедрий Вечір. Радуйся Земле Коляда іде! Пасла Маланка Два Качура Символіка Щедрого Вечера і Василя. Щедрий Вечер, 13-14 січня, зачинається властиво під Новий Рік (7 днів наперед Богоявління — символ Місячний!), т. є. в вечер перед св. Василя. Це особливо улюблене Українське свято: мітичного Василя і Маланки, — є найщирішим шануванням Місяця з його женихальними мотивами (ними переповнені Щедрівки). Тоді мітичну постать Василя мішають часто з мітольоґійно-Місячною постаттю Іллї — Ілії, який є в Українського народу покровителем урожаїв збіжжя, особливо жита (сніп жита, дід Ілля, — в часі жнив, — це постава Місяця). Листки з приводу цієї Пісні: Що означає ім''я "Коляда"? Що означає "Дідух"? Співаймо Світові-Дитині: Колядки, Щедрівки, Колискові... Стежки до інших листків про Українські традиції.','Щодрий Вечор Добрий Вечор !
Ми прийшли Дядьку щедровати
Добровати Довге Літо споминати
Зароди Боже Жито і Овес
А нам Дяденька Пирожка винес
Святий Вечор !

Не кажіть Дядьку довго стояти
Снігу топтати короткі свитки
Померзли литки
Святий Вечор !

Ув оцей Хаті нема що дати
Солому січуть Пироги печуть
Уголє смажать Пироги мажать
Святий Вечор !','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:manrivni'', ''cat:shchedrivky'', ''Колядки'', ''Пісні на мандрівну тематику'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_333869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_333869','Щодрий Вечор Добрий Вечор','Щодрий Вечор Добрий Вечор !
Ми прийшли Дядьку щедровати
Добровати Довге Літо споминати
Зароди Боже Жито і Овес
А нам Дяденька Пирожка винес
Святий Вечор !

Не кажіть Дядьку довго стояти
Снігу топтати короткі свитки
Померзли литки
Святий Вечор !

Ув оцей Хаті нема що дати
Солому січуть Пироги печуть
Уголє смажать Пироги мажать
Святий Вечор !');
DELETE FROM song_links WHERE song_id = 'pisniua_3349020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3349020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3349020';
DELETE FROM songs WHERE id = 'pisniua_3349020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3349020','Нічого не буде, як раніше...','Музика: Веремій, Назар Хассан (ХАС) Слова: Веремій, Назар Хассан (ХАС). Виконує: Веремій, Назар Хассан (ХАС)','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісня присвячена всім тим, хто, повернувшись з фронту, відчув байдужість своєї країни, суспільства, усім тим, кому важко повернутися до звичайного життя у той час, коли за менше ніж тисячу кілометрів й далі свищуть кулі...','З тобою від людей
Ховались, разом ми тікали
Від лихих думок
Їх погляду очей,
Ми віримо в одне,
Напевно знаємо своє,
І, впавши, підставляєм
Один одному плече -
Я знаю, так треба!

Приспів:
Нічого не буде, як раніше!..
Час не повернеш!
Зранку ми прокинемося інші!
Тільки не звертати зі шляху,
Яким ідеш!

З тобою за людей стояли
Разом ми, віддаючи життя
За землю і за її дітей.
Але тепер кому, скажи,
Потрібен я, потрібен ти?
Ховаються тепер
Від поглядів уже вони...
Я знаю, так треба!

Приспів.

Ми бачили як чорнозем
Ставав червоним не у снах,
Бачили, як підлі ворони
Чекали на страх у наших очах,
Бачили, як плачуть ікони,
Плакав, але мовчав...
Бачили ми цвіт Вавилону
Перед тим як він впав.
Та коли ми повернулись назад,
Чи чекали нас тут?..
Коли ми будували маршрут
Чи чекали на бруд?
Слова "бла" замість тисячі діл,
Замість тисячі тіл!..
Та ти знаєш, що найгірше? -
Вже не буде, як раніше!
Нічого не буде, як раніше...
Все, що зникло в часі, не вернеш!..

Приспів.

Не звертай зі шляху, яким ідеш!','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3349020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3349020','Нічого не буде, як раніше...','З тобою від людей
Ховались, разом ми тікали
Від лихих думок
Їх погляду очей,
Ми віримо в одне,
Напевно знаємо своє,
І, впавши, підставляєм
Один одному плече -
Я знаю, так треба!

Приспів:
Нічого не буде, як раніше!..
Час не повернеш!
Зранку ми прокинемося інші!
Тільки не звертати зі шляху,
Яким ідеш!

З тобою за людей стояли
Разом ми, віддаючи життя
За землю і за її дітей.
Але тепер кому, скажи,
Потрібен я, потрібен ти?
Ховаються тепер
Від поглядів уже вони...
Я знаю, так треба!

Приспів.

Ми бачили як чорнозем
Ставав червоним не у снах,
Бачили, як підлі ворони
Чекали на страх у наших очах,
Бачили, як плачуть ікони,
Плакав, але мовчав...
Бачили ми цвіт Вавилону
Перед тим як він впав.
Та коли ми повернулись назад,
Чи чекали нас тут?..
Коли ми будували маршрут
Чи чекали на бруд?
Слова "бла" замість тисячі діл,
Замість тисячі тіл!..
Та ти знаєш, що найгірше? -
Вже не буде, як раніше!
Нічого не буде, як раніше...
Все, що зникло в часі, не вернеш!..

Приспів.

Не звертай зі шляху, яким ідеш!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3349020_l1','pisniua_3349020','YouTube','https://www.youtube.com/watch?v=fRuuO4IBMgM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_33560';
DELETE FROM song_versions WHERE song_id = 'pisniua_33560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_33560';
DELETE FROM songs WHERE id = 'pisniua_33560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_33560','Нова радість стала','Українська народна пісня. Виконує: Піккардійська Терція, Київський камерний хор, Дударик','uk','ukraine_before_1917',NULL,NULL,'народна коляда','Акорди підібрав: Susiak Підбір акордів: Susiak','Нова радість стала,
Яка не бувала,
Над вертепом звізда ясна
Увесь світ засія-ла.

Де Христос родився,
З Діви воплотився,
Як чоловік пеленами
Убого повився.

Ангели співають:
"Слава" восклицають,
На небесах і на землі
Мир проповідають.

Нова радість стала,
Що на небі хвала,
Звізда ясна над вертепом
Весь світ осіяла.

Пастирі з ягнятком
Перед тим дитятком
На коліна припадають,
Царя-Бога вихваляють.

Давид виграває,
В гуслі ударяє,
Мелодійно і предивно
Бога вихваляє.

І ми теж співаймо,
Царя прославляймо,
Із Марії рожденному
Славу й честь віддаймо.

Просимо Тя, Царю,
Небесний Владарю,
Даруй літа щасливії
Цього дому господарю.

Сему господарю
І сій господині,
Даруй літа щасливії
Усій їх родині.

Просим Тебе, Царю,
Просимо всі нині,
Верни волю, пошли славу
Нашій ненці Україні.

Дай нам в мирі жити
І Тебе хвалити
А по смерті в царстві Твому
Во вік вічно жити.','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:narodni'', ''Пісні на християнську тематику'', ''Колядки'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_33560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_33560','Нова радість стала','Нова радість стала,
Яка не бувала,
Над вертепом звізда ясна
Увесь світ засія-ла.

Де Христос родився,
З Діви воплотився,
Як чоловік пеленами
Убого повився.

Ангели співають:
"Слава" восклицають,
На небесах і на землі
Мир проповідають.

Нова радість стала,
Що на небі хвала,
Звізда ясна над вертепом
Весь світ осіяла.

Пастирі з ягнятком
Перед тим дитятком
На коліна припадають,
Царя-Бога вихваляють.

Давид виграває,
В гуслі ударяє,
Мелодійно і предивно
Бога вихваляє.

І ми теж співаймо,
Царя прославляймо,
Із Марії рожденному
Славу й честь віддаймо.

Просимо Тя, Царю,
Небесний Владарю,
Даруй літа щасливії
Цього дому господарю.

Сему господарю
І сій господині,
Даруй літа щасливії
Усій їх родині.

Просим Тебе, Царю,
Просимо всі нині,
Верни волю, пошли славу
Нашій ненці Україні.

Дай нам в мирі жити
І Тебе хвалити
А по смерті в царстві Твому
Во вік вічно жити.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33560_l1','pisniua_33560','YouTube','https://www.youtube.com/watch?v=m8-F4GkfxMI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33560_l2','pisniua_33560','YouTube','https://www.youtube.com/watch?v=fVS7mPGtCsE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33560_l3','pisniua_33560','YouTube','https://www.youtube.com/watch?v=9mChk1Fa1Rc','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33560_l4','pisniua_33560','YouTube','https://www.youtube.com/watch?v=JqYZ8XOdEng','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33560_l5','pisniua_33560','YouTube','https://www.youtube.com/watch?v=WhT4GG5AUDo','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33560_l6','pisniua_33560','YouTube','https://www.youtube.com/watch?v=-Pli4ynxFqQ','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33560_l7','pisniua_33560','YouTube','https://www.youtube.com/watch?v=9iIhTSnCBwQ','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33560_l8','pisniua_33560','YouTube','https://www.youtube.com/watch?v=kLO-jTslSGg','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33560_l9','pisniua_33560','YouTube','https://www.youtube.com/watch?v=vm7_30BAAzE','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33560_l10','pisniua_33560','YouTube','https://www.youtube.com/watch?v=SGFQERskqGI','video',NULL,10);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_33560_l11','pisniua_33560','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,11);
DELETE FROM song_links WHERE song_id = 'pisniua_3339727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3339727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3339727';
DELETE FROM songs WHERE id = 'pisniua_3339727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3339727','Мамине безсоння','Музика: Павло Зібров Слова: Петро Мага. Виконує: Павло Зібров','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ангели - хранителі рідної землі,
Змучені новинами мами фронтові,
Побіліли скронями, навіть, без зими,
І стоять безсоннями у очах сини...

Приспів:
Не стріляйте в мамині кольорові сни,      |
Повертайтесь воїни, соколи-сини!..        |
Тільки десь у просторі, що горить в боях, |
Син промовив матері: Хто, якщо не я?..    | (2)

Ворог за туманами криється в полях,
Та безсоння мамине освітило шлях,
Щоб летіли соколи в сяйво неземне,
Поки будуть постріли - мама не засне.

Приспів. (2)','[''pisni.org.ua'', ''cat:ato'', ''cat:pro-ditey'', ''Пісні російсько-української війни та АТО'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3339727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3339727','Мамине безсоння','Ангели - хранителі рідної землі,
Змучені новинами мами фронтові,
Побіліли скронями, навіть, без зими,
І стоять безсоннями у очах сини...

Приспів:
Не стріляйте в мамині кольорові сни,      |
Повертайтесь воїни, соколи-сини!..        |
Тільки десь у просторі, що горить в боях, |
Син промовив матері: Хто, якщо не я?..    | (2)

Ворог за туманами криється в полях,
Та безсоння мамине освітило шлях,
Щоб летіли соколи в сяйво неземне,
Поки будуть постріли - мама не засне.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3339727_l1','pisniua_3339727','YouTube','https://www.youtube.com/watch?v=MKcnaddTy94','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3356525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3356525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3356525';
DELETE FROM songs WHERE id = 'pisniua_3356525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3356525','Квіточки','Музика: Алла Бінцаровська Слова: Алла Бінцаровська','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконують Надійка та Софійка Стельмахи.','Посади мамо, синій барвінок,
У саду ти його посади.
Будуть очі мої такі сині,
Як у тебе синіють завжди!..
Чорнобривці посій край стежини,
Коло нашої білої хати,
Щоб були у твоєї дитини
Чорні брови такі, як у тата!

Приспів:
І як квіточка до сонечка
Посміхнеться ваша донечка!..
Ваша донечка, як квіточка,
Серед весен, серед літечка!..
Ваша донечка, як квіточка,
Серед весен, серед літечка!..

Посади мамо, білу лілею,
Рученята, щоб білі були,
І півонії кущ біля неї,
Щоб так щічки мої розцвіли!
Кучеряві троянди - на ганку,
Як моє кучеряве волосся,
Солов''ї українські до ранку
Заливаються хай стоголоссям!

Приспів.

Ваша донечка, як квіточка,
Серед весен, серед літечка!..','[''pisni.org.ua'', ''cat:pro-batkiv'', ''cat:pro-ditey'', ''Пісні про любов до батьків'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3356525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3356525','Квіточки','Посади мамо, синій барвінок,
У саду ти його посади.
Будуть очі мої такі сині,
Як у тебе синіють завжди!..
Чорнобривці посій край стежини,
Коло нашої білої хати,
Щоб були у твоєї дитини
Чорні брови такі, як у тата!

Приспів:
І як квіточка до сонечка
Посміхнеться ваша донечка!..
Ваша донечка, як квіточка,
Серед весен, серед літечка!..
Ваша донечка, як квіточка,
Серед весен, серед літечка!..

Посади мамо, білу лілею,
Рученята, щоб білі були,
І півонії кущ біля неї,
Щоб так щічки мої розцвіли!
Кучеряві троянди - на ганку,
Як моє кучеряве волосся,
Солов''ї українські до ранку
Заливаються хай стоголоссям!

Приспів.

Ваша донечка, як квіточка,
Серед весен, серед літечка!..');
DELETE FROM song_links WHERE song_id = 'pisniua_33424';
DELETE FROM song_versions WHERE song_id = 'pisniua_33424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_33424';
DELETE FROM songs WHERE id = 'pisniua_33424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_33424','Розпрягайте, хлопці, коні','Музика: Іван Негребецький Слова: Іван Негребецький. Виконує: невідомий, Кубанський Козачий Хор, Рушничок, Ярослав Бурлачук','uk','ukraine_before_1917',NULL,NULL,'Співаник. Львів, Храм Різдва Пресвятої Богородиці, 2002.','Пісню з приспівом виконують приблизно з такою ж частотою, як і без нього. Поданий варіант приспіву трапляється у виконанні значно рідше. Anrzej. У виконанні гурту Рушничок: http://chomikuj.pl/WDR/Muzyka+Ukrai*c5*84ska/Narodowa+-+Folk+- +Regionalna/Rushnychok','Dm
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
DELETE FROM song_links WHERE song_id = 'pisniua_3351727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3351727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3351727';
DELETE FROM songs WHERE id = 'pisniua_3351727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3351727','Рік Новий стрічать','Музика: Дмитро Суботенко Слова: Максим Рильський, Сергій Гордієнко. Виконує: Дмитро Суботенко','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Ой, весела в нас зима,
Веселішої нема:
Грає срібними зірками,
В''ється синіми димками.
Ой, весела в нас зима,
Снігом землю обійма.
Грає срібними зірками.

Приспів:
Є струнка ялинка в нас!
Скільки сяє тут прикрас!
Ми зібралися юрбою —
Разом з піснею новою
Рік Новий стрічать!

Серед неба й зірочок
Поспішає літачок.
За штурвалом Новий рік
Починає часу лік.
Ми старий рік проводжаєм,
Пам''ятати нас бажаєм.
Закінчив він свій політ —
Облетів усенький світ!
Новий рік приніс сніги,
Все прикрасив навкруги.
Ми старий рік проводжаєм,
Пам''ятати нас бажаєм.
За штурвалом Новий рік
Починає часу лік.
З ним підемо крок за кроком
Всіх вітати з Новим роком!

Приспів. (2)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3351727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3351727','Рік Новий стрічать','Ой, весела в нас зима,
Веселішої нема:
Грає срібними зірками,
В''ється синіми димками.
Ой, весела в нас зима,
Снігом землю обійма.
Грає срібними зірками.

Приспів:
Є струнка ялинка в нас!
Скільки сяє тут прикрас!
Ми зібралися юрбою —
Разом з піснею новою
Рік Новий стрічать!

Серед неба й зірочок
Поспішає літачок.
За штурвалом Новий рік
Починає часу лік.
Ми старий рік проводжаєм,
Пам''ятати нас бажаєм.
Закінчив він свій політ —
Облетів усенький світ!
Новий рік приніс сніги,
Все прикрасив навкруги.
Ми старий рік проводжаєм,
Пам''ятати нас бажаєм.
За штурвалом Новий рік
Починає часу лік.
З ним підемо крок за кроком
Всіх вітати з Новим роком!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3351727_l1','pisniua_3351727','YouTube','https://www.youtube.com/watch?v=A1vnR3PoN-M','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3351727_l2','pisniua_3351727','YouTube','https://www.youtube.com/watch?v=1FdnNpbLq5w','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_335065';
DELETE FROM song_versions WHERE song_id = 'pisniua_335065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_335065';
DELETE FROM songs WHERE id = 'pisniua_335065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_335065','Ой чий же то Плужок так рано вийшов','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Стародавні Колядки-Щедрівки: Українські Різдво Світа і Щедрий Вечір. Буде Тобі Три Дорозі. Ініціація, поділ на статеві гурти та вибір Пари. Є в Колядках та Щедрівках ще одна характеристика старинности Українського свята Збору. Це ті етичні роздуми й догани, висказані мітичними Голубами. З такими роздумами й моралями можна часто стрітитися в Колядках. Вони очевидно мають свою ціль і належать до проґрами Свята. Отож цікава річ, що подібні моральні науки і так само з покликом на первісну етику народу бувають на вселюдних святах пракультурних народів природи, приміром у Якутів, або у інших палеоазіятів (про те ще опісля). Ці анальоґії, як самих всенародних свят, так і моральних доган і пісень, ставлять Українське Різдвяне свято, і окремо Святий Збір, у ряді свят такого самого, первісного типу. Здається однако ж, що саме етнічний характер Українського свята Збору висновується з далеко глибших початків життя Українського народу. На це вказують як раз моралізуючі Святочні практики Українського народу і анальоґійні їм практики народів природи. Бо такі періодичні, Святочні, моральні поклики мають свій початок в ініціяційних поученнях, даваних пракультурними народами своїй молоді перед уведенням її в Молодецький або Дівоцький стан. Таке уведення буває попереджуване окремими обрядами і реліґійно-моральними науками. Після довершення обряду ініціяції творять з ініціятів, обов''язково, статеві (полові) гурти (Хлопців і Дівчат) з ціллю розділити молодіж обох статей (полів) від себе, а заразом улегшити обом сторонам вибір дружини — з більшого гурту. Отож такі статеві гурти повинні задержувати приписану їм етику і культивувати її на будуче. З бігом часу і життя ці реліґійно-моральні норми могли б затрачуватися, що звичайно й буває; тому їх пригадується в часі Святочних племінних зборів; а цю пригадку сповняє звичайно сама молодь Святочними піснями. Є сенсаційне в піднятих тут етнольоґічних дослідах над Українським народом, що згадані вище суспільні засади і норми, властиві дуже старинним народам природи, зберіг Український нарід традиційно в Колядках і Щедрівках, а тим самим дав доказ, що ці засади і норми не перестали бути для нього цікавими як провідні життєві ідеї — і до сьогодні. Самогуртування: статеві, вікові та станові гурти. В Колядках і Щедрівках є образці статевих гуртів молоді та вікових відділів молоді і старших людей. Є там спомини про вандрівні й осілі гурти Хлопців-Молодців (вандрувати = бродити, блукати); гурти для реліґійної пропаганди (типові гурти пізніших Колядників); вандрівні гурти для полагодження економічних справ (гурти "Купців"); гурти спеціальних ремісників, працюючих удома для родини; гурти фахових рільних робітників обох полів, працюючих окремо, і гурти працівників старших; гурти мужви зі схильністю емансипувати себе від жіноцтва задля ідейних цілей — і такі ж гурти задля емансипації чисто статевої (безперечно пізніші, в округах, де вибивалася на верх матеровлада); гурти боєві і козацькі. Всі оті гурти уложилися в пам''яті народу неначе ступінь за ступенем в міру культурно-історичногої еволюції — і приявляються нам сьогодня у відповідній культурно-історичній характеристиці. Таке самогуртування народу в статеві, станові та вікові гурти лежало безперечно в засадах Старовіцького суспільного світогляду Українського народу, а не було ділом припадку. А що воно перейшло було в суспільну норму, свідчать про це Колядки й Щедрівки, які згадують часто про установу Трьох Сел на Україні і дають докази, що були вони не тільки в Старинні часи, але перетривали до новішої доби. Були це окремі села: Старих людей, Молодців (Парубків) і Дівчат. (Самогуртування: У праці Кс. Сосенка вжито "гуртуванняся", що відповідало б "самоорганізації" в сучасній науковій термінології. Самоорганізація як явище є предметом вивчення окремої сучасної науки — синергетики. Доречно говорити про етнологічну синергетику.) Символіка Щедрого Вечера і Василя. Щедрий Вечер зачинається властиво під Новий Рік, 13-14 січня (7 днів наперед Богоявління — символ Місячний!), т. є. в вечер перед св. Василя. Це особливо улюблене Українське свято: мітичного Василя і Маланки, — є найщирішим шануванням Місяця з його женихальними мотивами (ними переповнені Щедрівки). Тоді мітичну постать Василя мішають часто з мітольоґійно-Місячною постаттю Іллї — Ілії, який є в Українського народу покровителем урожаїв збіжжя, особливо жита (сніп жита, дід Ілля, — в часі жнив, — це постава Місяця). Листки з приводу цієї Пісні: Святий Збір, 8 січня: Статеві гурти для рільних робіт: пракультурні образці. Говорячи все за Дівочки. Колядки як Українські релігійні роздуми про Бога. Щедрий Вечер, 13-14 січня. Маланки-Василь. Коза. Стежки до інших листків про Українські традиції.','Ой чий же то Плужок так рано вийшов

Приспів:
Ой рано-рано дуже раненько.

Пана Господаря так рано вийшов
А Пан Господар Пшениченьку сіє
А Божа Мати їсти приносить
Їсти приносить і так Бога просить
Зароди же Боже Пшеницю як Лози
А будуть жати самі Парубоньки
Будуть в''язати самі Дівоньки
Будуть Конопоньки як Злоті Зіроньки
А Сам Господар поміж Копами
Як Ясен Місяць поміж Зорями','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_335065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_335065','Ой чий же то Плужок так рано вийшов','Ой чий же то Плужок так рано вийшов

Приспів:
Ой рано-рано дуже раненько.

Пана Господаря так рано вийшов
А Пан Господар Пшениченьку сіє
А Божа Мати їсти приносить
Їсти приносить і так Бога просить
Зароди же Боже Пшеницю як Лози
А будуть жати самі Парубоньки
Будуть в''язати самі Дівоньки
Будуть Конопоньки як Злоті Зіроньки
А Сам Господар поміж Копами
Як Ясен Місяць поміж Зорями');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_335065_l1','pisniua_335065','http://gomin.uazone.net/song.php?song=195','http://gomin.uazone.net/song.php?song=195','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_336869';
DELETE FROM song_versions WHERE song_id = 'pisniua_336869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_336869';
DELETE FROM songs WHERE id = 'pisniua_336869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_336869','Ой Снодо Снодо Тонкая','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Відділ рукописів ЦНБ НАН України, 1, 1328. Лист О.О.Потебні до І.П.Новицького, арк. 4-5. 2. Українські народні пісні в записах Олександра Потебні. - К.: Музична Україна, 1988.','Записана у Вовчанському повіті Харківської губернії. Ой но на Морі Павутиноньки. Сіяти Павучки-павучки.','- Ой Снодо, Снодо Тонкая!
Ой яка Ти, Снодо, Тонкая!
Була в Мене Невістка Такая.
Та мостила Мости із Трості,        |(2)
Та гатила Гаті із М''яти,           |(2)
Становила Стовпи Золоті,           |(2)
Вішала Шнури Шовкові               |(2)
Та чіпляла Дзвони Спижові,         |(2)
Слала Китайку по Морю.             |(2)
Ой Туди їхав Нелюб мій.            |(2)
- Та не бряжчіть, Мости із Трості! |(2)
Та не пахніть Гаті із М''яти!       |(2)
Та не сяйте, Стовпи Золоті!        |(2)
Та не майте Шнури Шовкові!         |(2)
Та не дзвоніть, Дзвони Спижові!    |(2)
Та не май, Китайко на Морі!        |(2)

- Ой Снодо, Снодо Тонкая!
Ой яка Ти, Снодо, Тонкая!
Була в Мене Невістка Такая.
Та мостила Мости із Трості,        |(2)
Та гатила Гаті із М''яти,           |(2)
Становила Стовпи Золоті,           |(2)
Вішала Шнури Шовкові               |(2)
Та чіпляла Дзвони Спижові,         |(2)
Слала Китайку по Морю.             |(2)
Ой Туди їхав Мій Милий.            |(2)
- Та забряжчіть, Мости із Трості!  |(2)
Та запахніть Гаті із М''яти!        |(2)
Та засяйте, Стовпи Золоті!         |(2)
Та замайте Шнури Шовкові!          |(2)
Та задзвоніть, Дзвони Спижові!     |(2)
Та замай, Китайко по Морю!         |(2)','[''pisni.org.ua'', ''cat:slobozhanski'', ''cat:vesnyanky-hayivky'', ''Пісні з слобожанщини'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_336869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_336869','Ой Снодо Снодо Тонкая','- Ой Снодо, Снодо Тонкая!
Ой яка Ти, Снодо, Тонкая!
Була в Мене Невістка Такая.
Та мостила Мости із Трості,        |(2)
Та гатила Гаті із М''яти,           |(2)
Становила Стовпи Золоті,           |(2)
Вішала Шнури Шовкові               |(2)
Та чіпляла Дзвони Спижові,         |(2)
Слала Китайку по Морю.             |(2)
Ой Туди їхав Нелюб мій.            |(2)
- Та не бряжчіть, Мости із Трості! |(2)
Та не пахніть Гаті із М''яти!       |(2)
Та не сяйте, Стовпи Золоті!        |(2)
Та не майте Шнури Шовкові!         |(2)
Та не дзвоніть, Дзвони Спижові!    |(2)
Та не май, Китайко на Морі!        |(2)

- Ой Снодо, Снодо Тонкая!
Ой яка Ти, Снодо, Тонкая!
Була в Мене Невістка Такая.
Та мостила Мости із Трості,        |(2)
Та гатила Гаті із М''яти,           |(2)
Становила Стовпи Золоті,           |(2)
Вішала Шнури Шовкові               |(2)
Та чіпляла Дзвони Спижові,         |(2)
Слала Китайку по Морю.             |(2)
Ой Туди їхав Мій Милий.            |(2)
- Та забряжчіть, Мости із Трості!  |(2)
Та запахніть Гаті із М''яти!        |(2)
Та засяйте, Стовпи Золоті!         |(2)
Та замайте Шнури Шовкові!          |(2)
Та задзвоніть, Дзвони Спижові!     |(2)
Та замай, Китайко по Морю!         |(2)');
