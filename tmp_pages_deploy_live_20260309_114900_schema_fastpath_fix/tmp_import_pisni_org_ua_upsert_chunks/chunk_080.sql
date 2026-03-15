DELETE FROM song_links WHERE song_id = 'pisniua_9422786';
DELETE FROM song_versions WHERE song_id = 'pisniua_9422786';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9422786';
DELETE FROM songs WHERE id = 'pisniua_9422786';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9422786','Додому','Музика: KALUSH, Skofka Слова: KALUSH, Skofka. Виконує: KALUSH, Skofka','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Де би не був, не забуду дім!             |
Хочеш, закрути мене як бігуді,           |
Я з закритими очима знайду, де мій двір, |
Бо де би не був, не забуду дім!          | (2)

Де б не носило Скофа по чужих краях,
Я вертатимусь додому по дорогах і полях,
Боляче, коли побачив вдалині рідний маяк,
І хочеш море переплить до нього, але нема як...
Рідна хата пахне пирогами з вишнями із печі,
Снилось як світив фарами ближніми уночі,
І бачив баба з дідом в хаті крутили калачі,
От би зараз діда постукать би по плечі...

Приспів.

Скрипнув двері. Мама вдома.
Квіти на стіл. Стіл, вечеря -
Ситний маминий суп,
Татові все мало солі.
Спритно радий несу маминий суп!
А знову світла ніч в мене в Калуші палала,
Мовила мені, твого двору вже нема...
Покоління мінялося, запамятали стіни,
Як дитина ці писала імені на віки.
А знову світла ніч, но без мене вже гуляла,
А, може, коли-небудь, я вже би не жалів
За минуле, шо летіло в даль, неначе ворон,
А я вдома, зберігаю свою ностальгію...
Я до тебе все прийду!.. П''яним уночі знайду!..
Хай не будеш на виду, тебе знайду!..
Хай дорогу замете, із курсу не зіб''є мене!..

Приспів.','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:pro-batkiv'', ''Пісні з ностальгічними мотивами'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9422786'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9422786','Додому','Приспів:
Де би не був, не забуду дім!             |
Хочеш, закрути мене як бігуді,           |
Я з закритими очима знайду, де мій двір, |
Бо де би не був, не забуду дім!          | (2)

Де б не носило Скофа по чужих краях,
Я вертатимусь додому по дорогах і полях,
Боляче, коли побачив вдалині рідний маяк,
І хочеш море переплить до нього, але нема як...
Рідна хата пахне пирогами з вишнями із печі,
Снилось як світив фарами ближніми уночі,
І бачив баба з дідом в хаті крутили калачі,
От би зараз діда постукать би по плечі...

Приспів.

Скрипнув двері. Мама вдома.
Квіти на стіл. Стіл, вечеря -
Ситний маминий суп,
Татові все мало солі.
Спритно радий несу маминий суп!
А знову світла ніч в мене в Калуші палала,
Мовила мені, твого двору вже нема...
Покоління мінялося, запамятали стіни,
Як дитина ці писала імені на віки.
А знову світла ніч, но без мене вже гуляла,
А, може, коли-небудь, я вже би не жалів
За минуле, шо летіло в даль, неначе ворон,
А я вдома, зберігаю свою ностальгію...
Я до тебе все прийду!.. П''яним уночі знайду!..
Хай не будеш на виду, тебе знайду!..
Хай дорогу замете, із курсу не зіб''є мене!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9422786_l1','pisniua_9422786','YouTube','https://www.youtube.com/watch?v=OF7bh0Y3vyo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9424281';
DELETE FROM song_versions WHERE song_id = 'pisniua_9424281';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9424281';
DELETE FROM songs WHERE id = 'pisniua_9424281';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9424281','Гей, сивий вітер плаче','Музика: Василь Лютий Слова: Володимир Даник. Виконує: GONTA','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Гей, сивий вітер плаче:
Не вмирай козаче, трохи поживи!
Ех, рад би я пожити,                |
Кров моя розлита по густій траві!.. |

Гей, вітер хмари гонить:
А тебе твій коник жде як і колись...
Ех, мабуть, я не встану,            |
Бо глибокі рани і не підвестись...  | (2)

Гей, вітер все ворожить:
Дівчину хорошу, друже, полюби!
Ех, рад би я любити,                |
Та не бачать світу очі голубі...    | (2)

Гей, вітер завиває, по степу гуляє:
Погуляй і ти!
Ех, мені не гуляти,                 |
Світу не видати, долі не знайти!..  | (2)

Гей, сивий вітер плаче:
Не вмирай козаче, трохи поживи!
Ех, рад би я пожити!..
Ех, рад би я пожити!..

Гей, вітер став казати:
Жде на тебе мати, знову не засне...
Ех, це б дійти до неньки,           |
Та моє серденько надто мовчазне...  | (2)','[''pisni.org.ua'', ''cat:ato'', ''cat:euromaydan'', ''Пісні російсько-української війни та АТО'', ''Пісні Євромайдану'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9424281'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9424281','Гей, сивий вітер плаче','Гей, сивий вітер плаче:
Не вмирай козаче, трохи поживи!
Ех, рад би я пожити,                |
Кров моя розлита по густій траві!.. |

Гей, вітер хмари гонить:
А тебе твій коник жде як і колись...
Ех, мабуть, я не встану,            |
Бо глибокі рани і не підвестись...  | (2)

Гей, вітер все ворожить:
Дівчину хорошу, друже, полюби!
Ех, рад би я любити,                |
Та не бачать світу очі голубі...    | (2)

Гей, вітер завиває, по степу гуляє:
Погуляй і ти!
Ех, мені не гуляти,                 |
Світу не видати, долі не знайти!..  | (2)

Гей, сивий вітер плаче:
Не вмирай козаче, трохи поживи!
Ех, рад би я пожити!..
Ех, рад би я пожити!..

Гей, вітер став казати:
Жде на тебе мати, знову не засне...
Ех, це б дійти до неньки,           |
Та моє серденько надто мовчазне...  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9424281_l1','pisniua_9424281','YouTube','https://www.youtube.com/watch?v=TShUCmtckYk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_942484';
DELETE FROM song_versions WHERE song_id = 'pisniua_942484';
DELETE FROM songs_fts WHERE song_id = 'pisniua_942484';
DELETE FROM songs WHERE id = 'pisniua_942484';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_942484','Подарунок від Святого Миколая','Музика: Наталія Роман Слова: Наталія Роман','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Подарунок він приніс
В зимову, холодну ніч.
Я його чекав весь рік, Миколай.
В ніч, яку, на жаль проспав,
Під  подушечку поклав
Свій гостинець Миколай, Миколай

Приспів:
Лиш раз в рік таке буває
Господь небо відкриває
І на землю поспішає Миколай
В кожну хаточку, домівку,
Чемним дітям під голівку
Ласку Божу залишає Миколай.

Мріють кожен рік малята
Ніч чудесну не проспати
І побачить як приходить Миколай
Та якби сон не підкрався
Кожен певно дочекався б
І побачив твою велич Миколай.

Приспів.','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''cat:dytyachi'', ''cat:svyatyy-mykolay'', ''Церковні пісні'', ''Пісні на християнську тематику'', ''Дитячі пісні'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_942484'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_942484','Подарунок від Святого Миколая','Подарунок він приніс
В зимову, холодну ніч.
Я його чекав весь рік, Миколай.
В ніч, яку, на жаль проспав,
Під  подушечку поклав
Свій гостинець Миколай, Миколай

Приспів:
Лиш раз в рік таке буває
Господь небо відкриває
І на землю поспішає Миколай
В кожну хаточку, домівку,
Чемним дітям під голівку
Ласку Божу залишає Миколай.

Мріють кожен рік малята
Ніч чудесну не проспати
І побачить як приходить Миколай
Та якби сон не підкрався
Кожен певно дочекався б
І побачив твою велич Миколай.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_942484_l1','pisniua_942484','YouTube','https://www.youtube.com/watch?v=yov78gG5ztU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9424580';
DELETE FROM song_versions WHERE song_id = 'pisniua_9424580';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9424580';
DELETE FROM songs WHERE id = 'pisniua_9424580';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9424580','Вчителі і діти','Слова: невідомий','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сонечко всміхається,
Радісно вітається,
В школі починається
Не один урок.
Діти намагаються,
Вчителі стараються,
У майбутнє впевнено
Робимо ми крок!

Приспів:
Сонце радісно сія,
Школа двері відчиня!
Як тут не радіти?
Бо найкращі друзі - ми,
З перших днів і назавжди -
Вчителі і діти!

Формули і правила
Вивчимо старанно ми,
Будемо розумними,
Добрими дітьми!
Бо бажають від душі
Мами, тати, вчителі,
Щоб усі ми виросли
Справжніми людьми!

Приспів.

Діти можуть по морям
Плавать капітанами,
Будувати, чи пекти,
Навіть одяг шить.
Керувать слухняними
Машинами і кранами,
Цього лише треба нас
Трішечки навчить!

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9424580'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9424580','Вчителі і діти','Сонечко всміхається,
Радісно вітається,
В школі починається
Не один урок.
Діти намагаються,
Вчителі стараються,
У майбутнє впевнено
Робимо ми крок!

Приспів:
Сонце радісно сія,
Школа двері відчиня!
Як тут не радіти?
Бо найкращі друзі - ми,
З перших днів і назавжди -
Вчителі і діти!

Формули і правила
Вивчимо старанно ми,
Будемо розумними,
Добрими дітьми!
Бо бажають від душі
Мами, тати, вчителі,
Щоб усі ми виросли
Справжніми людьми!

Приспів.

Діти можуть по морям
Плавать капітанами,
Будувати, чи пекти,
Навіть одяг шить.
Керувать слухняними
Машинами і кранами,
Цього лише треба нас
Трішечки навчить!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9424580_l1','pisniua_9424580','YouTube','https://www.youtube.com/watch?v=xyjoC8WWGR4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_94281';
DELETE FROM song_versions WHERE song_id = 'pisniua_94281';
DELETE FROM songs_fts WHERE song_id = 'pisniua_94281';
DELETE FROM songs WHERE id = 'pisniua_94281';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_94281','Дружба','Музика: Б.Савельєв Слова: М.Пляцковський. Виконує: Гурт "Морські Піщинки"','uk','ukraine_1991',NULL,NULL,'мій комп',NULL,'Дружба вiрная не зламається
Не розклеїться від дощів і хуг
Друг в біді не лишить
Добрим словом втішить _
Ось який він незвичайний справжній друг!

Друг в біді мене завжди виручить
Не-розлий-вода  кажуть всі навкруг.
У важку хвилину, і вночі, і в днину _
Ось який він незвичайний справжній друг!','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_94281'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_94281','Дружба','Дружба вiрная не зламається
Не розклеїться від дощів і хуг
Друг в біді не лишить
Добрим словом втішить _
Ось який він незвичайний справжній друг!

Друг в біді мене завжди виручить
Не-розлий-вода  кажуть всі навкруг.
У важку хвилину, і вночі, і в днину _
Ось який він незвичайний справжній друг!');
DELETE FROM song_links WHERE song_id = 'pisniua_9425786';
DELETE FROM song_versions WHERE song_id = 'pisniua_9425786';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9425786';
DELETE FROM songs WHERE id = 'pisniua_9425786';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9425786','Лісова ялинка','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'В лісі випав білий сніг,
Наступає Новий рік!
Стали думати звірята,     |
Як зустріть чудове свято. | (2)

Ось ялинка зелененька,
Ні велика, ні маленька,
Ми прикрасимо її,         |
Заспіваємо пісні!         | (2)

Білка принесла горішки,
Їжачок - гриби і шишки,
Ведмежатко - пряники      |
Та смачні медяники!       | (2)

Дятли, снігурі й синиці
Посідали на ялинці
І сказали: Пишну хвою     |
Ми прикрасимо собою!      | (2)

В лісі випав білий сніг,
Наступає Новий рік!
Так придумали звірята,    |
Як зустріть чудове свято! | (2)

Як зустріть чудове свято! | (2)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9425786'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9425786','Лісова ялинка','В лісі випав білий сніг,
Наступає Новий рік!
Стали думати звірята,     |
Як зустріть чудове свято. | (2)

Ось ялинка зелененька,
Ні велика, ні маленька,
Ми прикрасимо її,         |
Заспіваємо пісні!         | (2)

Білка принесла горішки,
Їжачок - гриби і шишки,
Ведмежатко - пряники      |
Та смачні медяники!       | (2)

Дятли, снігурі й синиці
Посідали на ялинці
І сказали: Пишну хвою     |
Ми прикрасимо собою!      | (2)

В лісі випав білий сніг,
Наступає Новий рік!
Так придумали звірята,    |
Як зустріть чудове свято! | (2)

Як зустріть чудове свято! | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9425786_l1','pisniua_9425786','YouTube','https://www.youtube.com/watch?v=0Gb24zEbccs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9425786_l2','pisniua_9425786','YouTube','https://www.youtube.com/watch?v=NGeVlvsgFyI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_942384';
DELETE FROM song_versions WHERE song_id = 'pisniua_942384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_942384';
DELETE FROM songs WHERE id = 'pisniua_942384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_942384','Колискова','(Спи, моя люба). Музика: Тарас Чубай Слова: Олег Лишега. Виконує: Плач Єремії, Тарас Чубай','uk','ukraine_1991',NULL,'1992','1. http://www.mo-productions.com/ukr/zironkatapelyrics.html 2. http://accords.com.ua','Вперше пісня увійшла до альбому "ЧЕРЕЗ ЗІРОНЬКУ ЯСНУ (1992) (Українські колискові пісні) (книжка й музична касета) Використані акорди: H11/F# [2 0 1 4 2 0] Em/C [x 3 2 0 0 0] Підбір акордів: невідомий','Em Em/C H11/F# Hsus4 H7
Спи,       моя люба,      усе засинає,
Попивши на ніч з pіки молока.
Циферблат будильника
поріс сухим очеретом, дрімає.
Колиска твоя,
всміхнувшись прощально
білосніжним сміхом,
загойдалась на вітрі,
підвішена до неба снами.
Я заплету твої коси до завтра,
ранком нахилюсь над тобою в інеї,
стрічки яскраві, багряні.
...стрічки яскраві.
Спи, моя люба,
в домі очерету горить свічка,
запалена мною, бездомним.
Крига над тобою, крига під тобою.
Полум''я відігріє пам''ять.
Спи, моя люба, усе засинає,
попивши на ніч з ріки молока.
Кpига над тобою, кpига під тобою. (2)
Полум''я відігpіє пам''ять. (Кpига над тобою) (4)
Спи, моя люба, усе засинає,
попивши на ніч з pіки молока...
А-а...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_942384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_942384','Колискова','Em Em/C H11/F# Hsus4 H7
Спи,       моя люба,      усе засинає,
Попивши на ніч з pіки молока.
Циферблат будильника
поріс сухим очеретом, дрімає.
Колиска твоя,
всміхнувшись прощально
білосніжним сміхом,
загойдалась на вітрі,
підвішена до неба снами.
Я заплету твої коси до завтра,
ранком нахилюсь над тобою в інеї,
стрічки яскраві, багряні.
...стрічки яскраві.
Спи, моя люба,
в домі очерету горить свічка,
запалена мною, бездомним.
Крига над тобою, крига під тобою.
Полум''я відігріє пам''ять.
Спи, моя люба, усе засинає,
попивши на ніч з ріки молока.
Кpига над тобою, кpига під тобою. (2)
Полум''я відігpіє пам''ять. (Кpига над тобою) (4)
Спи, моя люба, усе засинає,
попивши на ніч з pіки молока...
А-а...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_942384_l1','pisniua_942384','YouTube','https://www.youtube.com/watch?v=SL6mkEOfuBE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9424686';
DELETE FROM song_versions WHERE song_id = 'pisniua_9424686';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9424686';
DELETE FROM songs WHERE id = 'pisniua_9424686';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9424686','Сонце','Музика: Вова зі Львова, Morphom Слова: Вова зі Львова, Morphom. Виконує: Вова зі Львова, Morphom','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Сонце, ти світиш однаково всім,
Навчи мене бути таким,
Навчи мене просто світити!
Сонце і навіть тоді, коли грім,
Ти прикладом будеш моїм,
Як сяяти і не згоріти!

Харюсь на людей дорослих,
Швидко, як маленькі діти,
Це на вигляд і на запах
Десь так як зів''ялі квіти.
Це по суті і по факту
Ознака незрілості,
Відсутність розуміння,
Присутність зарозумілості,
Бажання всіх навчити,
Але не вчитись самому,
Бажання всіх розбудити,
Коли сам сплю, наче кома.
Бажання всім розказати
Те, що не треба нікому,
Бажання всіх врятувати,
Коли ніхто не тоне,
Або тонуть усі та не шарить ніхто.
Я приходжу у храм, але там шапіто,
Я тікаю до себе, тікаю від них,
Я не вірю у всі їхні байки про гріх,
Я забув, шо вони теж шукають своє,
Я забув, шо над ними теж сонечко є,
Подивився на нього, а потім на себе
І все пригадалося - сяяти треба!

Приспів.

Подивлюсь на сонце і згадаю
Для чого я тут,
Щоб для наших братиків бути,
Як запасний парашут,
Щоб для наших сестричок
Бути запасним летовищем.
У вас не видно сонця там?
Не страшно, ненадовго ще.
Подивлюсь на сонце і все
Стане спокійно і ясно,
Пригадаю, що все тут доречно
І все тут є вчасно.
Пригадаю: той, хто іншим віддає,
Той не збідніє
І тому задурно сонце світить,
Вітер в спину віє,
Ми не побачимо з тобою ніч,
Тінями нам не бути,
Безліч усміхнених облич
Не дадуть нам заснути...
Забуду про себе, забуду про его,
Забуду тривожність, забуду бентегу,
Забуду про втечу, забуду-забуду,
Залишуся з ними й світити їм буду,
Залишуся з нами, вони це і є ми.
Без нас і без сонця ми просто згниємо,
Тому, коли сонця не видно з-за хмари,
Я також світитиму даром!

Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9424686'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9424686','Сонце','Приспів:
Сонце, ти світиш однаково всім,
Навчи мене бути таким,
Навчи мене просто світити!
Сонце і навіть тоді, коли грім,
Ти прикладом будеш моїм,
Як сяяти і не згоріти!

Харюсь на людей дорослих,
Швидко, як маленькі діти,
Це на вигляд і на запах
Десь так як зів''ялі квіти.
Це по суті і по факту
Ознака незрілості,
Відсутність розуміння,
Присутність зарозумілості,
Бажання всіх навчити,
Але не вчитись самому,
Бажання всіх розбудити,
Коли сам сплю, наче кома.
Бажання всім розказати
Те, що не треба нікому,
Бажання всіх врятувати,
Коли ніхто не тоне,
Або тонуть усі та не шарить ніхто.
Я приходжу у храм, але там шапіто,
Я тікаю до себе, тікаю від них,
Я не вірю у всі їхні байки про гріх,
Я забув, шо вони теж шукають своє,
Я забув, шо над ними теж сонечко є,
Подивився на нього, а потім на себе
І все пригадалося - сяяти треба!

Приспів.

Подивлюсь на сонце і згадаю
Для чого я тут,
Щоб для наших братиків бути,
Як запасний парашут,
Щоб для наших сестричок
Бути запасним летовищем.
У вас не видно сонця там?
Не страшно, ненадовго ще.
Подивлюсь на сонце і все
Стане спокійно і ясно,
Пригадаю, що все тут доречно
І все тут є вчасно.
Пригадаю: той, хто іншим віддає,
Той не збідніє
І тому задурно сонце світить,
Вітер в спину віє,
Ми не побачимо з тобою ніч,
Тінями нам не бути,
Безліч усміхнених облич
Не дадуть нам заснути...
Забуду про себе, забуду про его,
Забуду тривожність, забуду бентегу,
Забуду про втечу, забуду-забуду,
Залишуся з ними й світити їм буду,
Залишуся з нами, вони це і є ми.
Без нас і без сонця ми просто згниємо,
Тому, коли сонця не видно з-за хмари,
Я також світитиму даром!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9424686_l1','pisniua_9424686','YouTube','https://www.youtube.com/watch?v=9bcFCPU7j-8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9425282';
DELETE FROM song_versions WHERE song_id = 'pisniua_9425282';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9425282';
DELETE FROM songs WHERE id = 'pisniua_9425282';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9425282','Випускник','Музика: Михайло Хома Слова: Наталія Харибіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я зі школою дружу,
Чесно, друзі, вам скажу,
Що без школи я - слабак!
Тож на витівки мастак!
Я навчатися любив,
Поважав учителів
І читав книжки, як є,
Телефони - не моє!

Приспів:
Я такий увесь крутий,      |
Випускник - я ще й який,   |
Волю я словам даю,         |
Без книжок не їм, не сплю! | (2)

Хай сміються з мене ті,
Хто до школи не ходив,
Хто не вивчив ЗНО,
І боїться хто його!
Не любити школу гріх:
Буде горе, а не сміх,
Пам''ятатиму "святу"
Школу рідну, золоту!

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9425282'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9425282','Випускник','Я зі школою дружу,
Чесно, друзі, вам скажу,
Що без школи я - слабак!
Тож на витівки мастак!
Я навчатися любив,
Поважав учителів
І читав книжки, як є,
Телефони - не моє!

Приспів:
Я такий увесь крутий,      |
Випускник - я ще й який,   |
Волю я словам даю,         |
Без книжок не їм, не сплю! | (2)

Хай сміються з мене ті,
Хто до школи не ходив,
Хто не вивчив ЗНО,
І боїться хто його!
Не любити школу гріх:
Буде горе, а не сміх,
Пам''ятатиму "святу"
Школу рідну, золоту!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9425282_l1','pisniua_9425282','YouTube','https://www.youtube.com/watch?v=bKqS218yNOA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9434282';
DELETE FROM song_versions WHERE song_id = 'pisniua_9434282';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9434282';
DELETE FROM songs WHERE id = 'pisniua_9434282';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9434282','Ой, летять сніжинки','Музика: Микола Ведмедеря Слова: Г. Бойко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ой, летять, летять сніжинки
На доріжки, на стежинки,
На ліси і на поля -
Біла, біла вся земля! Ех!

Приспів:
Сніг летить, летить, летить!
Новий Рік до нас спішить!
Сніг кружляє, виграє,
Новий Рік вже настає!

В кульках вся ялинка сяє,
Дітвора пісень співає,
В хороводі закружля,
Веселиться вся земля! Ех!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9434282'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9434282','Ой, летять сніжинки','Ой, летять, летять сніжинки
На доріжки, на стежинки,
На ліси і на поля -
Біла, біла вся земля! Ех!

Приспів:
Сніг летить, летить, летить!
Новий Рік до нас спішить!
Сніг кружляє, виграє,
Новий Рік вже настає!

В кульках вся ялинка сяє,
Дітвора пісень співає,
В хороводі закружля,
Веселиться вся земля! Ех!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9434282_l1','pisniua_9434282','YouTube','https://www.youtube.com/watch?v=qn5iO8BqUSQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9434282_l2','pisniua_9434282','YouTube','https://www.youtube.com/watch?v=0cIyW03VBaM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_942181';
DELETE FROM song_versions WHERE song_id = 'pisniua_942181';
DELETE FROM songs_fts WHERE song_id = 'pisniua_942181';
DELETE FROM songs WHERE id = 'pisniua_942181';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_942181','Світи, місяченьку','Українська народна пісня. Виконує: Ансамбль Львівського Університету "Черемош", Піккардійська Терція','uk','ukraine_before_1917',NULL,NULL,NULL,'Черемош (це парубоцька пісня, тому в ідеалі мали б виконувати самі хлопці) Цю пісню Черемош виконував кілька разів у складі октету хлопців (по двоє на кожен голос)','Світи місяченько,
Світи за діброву.
Нехай я перейду, нехай я перейду
До дівчини на розмову
Нехай я перейду, нехай я перейду
До дівчини на розмову

Світи місяченько,
Світи через річку.
Нехай я перейду, нехай я перейду
До милої на всю нічку.
Нехай я перейду, нехай я перейду
До милої на всю нічку.

Нехай я перейду
Чобіт не замочу
Най ніхто не знає, Най ніхто не знає
До котрої я ходжу.
Най ніхто не знає, Най ніхто не знає
До котрої я ходжу.

Світив місяченько,
Та й зайшов за хмари.
А я, бідний, плачу, а я, бідний, тужу,
Що не маю собі пари.
А я, бідний, плачу, а я, бідний, тужу,
Що не маю собі пари','[''pisni.org.ua'', ''cat:lirychni'', ''cat:narodni'', ''Пісні про кохання, ліричні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_942181'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_942181','Світи, місяченьку','Світи місяченько,
Світи за діброву.
Нехай я перейду, нехай я перейду
До дівчини на розмову
Нехай я перейду, нехай я перейду
До дівчини на розмову

Світи місяченько,
Світи через річку.
Нехай я перейду, нехай я перейду
До милої на всю нічку.
Нехай я перейду, нехай я перейду
До милої на всю нічку.

Нехай я перейду
Чобіт не замочу
Най ніхто не знає, Най ніхто не знає
До котрої я ходжу.
Най ніхто не знає, Най ніхто не знає
До котрої я ходжу.

Світив місяченько,
Та й зайшов за хмари.
А я, бідний, плачу, а я, бідний, тужу,
Що не маю собі пари.
А я, бідний, плачу, а я, бідний, тужу,
Що не маю собі пари');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_942181_l1','pisniua_942181','YouTube','https://www.youtube.com/watch?v=2dzBF0S5LKI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_942181_l2','pisniua_942181','YouTube','https://www.youtube.com/watch?v=9UQm9DshwlQ','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9425487';
DELETE FROM song_versions WHERE song_id = 'pisniua_9425487';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9425487';
DELETE FROM songs WHERE id = 'pisniua_9425487';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9425487','Мама Мія','Музика: Даріо Фаріна Слова: Марія Демків','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Нам так багато потрібно знати,
Щоби отримати атестати.
Йду на екзамен - душа тріпоче,
О, як же здати я на дванадцять хочу!
Як важко гризти граніт науки,
Запам''ятати все - справжня мука!
Уже, нарешті, дзвінок останній,
Пора забути вже про школу, про навчання!
О, Ма-Ма! О, мама Мія, Ма! | (4)

Нам так багато потрібно знати,
Щоби отримати атестати.
Йду на екзамен - душа тріпоче,
О, як же здати я на дванадцять хочу!
Шпаргалки часто нас виручали,
Ми їх з собою так багато брали!
Тепер позаду наука в школі,
Ми не забудемо цих років ніколи!
О, Ма-Ма! О, мама Мія, Ма! | (4)','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9425487'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9425487','Мама Мія','Нам так багато потрібно знати,
Щоби отримати атестати.
Йду на екзамен - душа тріпоче,
О, як же здати я на дванадцять хочу!
Як важко гризти граніт науки,
Запам''ятати все - справжня мука!
Уже, нарешті, дзвінок останній,
Пора забути вже про школу, про навчання!
О, Ма-Ма! О, мама Мія, Ма! | (4)

Нам так багато потрібно знати,
Щоби отримати атестати.
Йду на екзамен - душа тріпоче,
О, як же здати я на дванадцять хочу!
Шпаргалки часто нас виручали,
Ми їх з собою так багато брали!
Тепер позаду наука в школі,
Ми не забудемо цих років ніколи!
О, Ма-Ма! О, мама Мія, Ма! | (4)');
DELETE FROM song_links WHERE song_id = 'pisniua_943080';
DELETE FROM song_versions WHERE song_id = 'pisniua_943080';
DELETE FROM songs_fts WHERE song_id = 'pisniua_943080';
DELETE FROM songs WHERE id = 'pisniua_943080';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_943080','Ох і не стелися, хрещатий барвінку (три голоси)','Українська народна пісня. Виконує: Хор "Чумаки", Михайло Гришко','uk','ukr_ssr_1919_1991',NULL,'1991','1. http://www.ukrlib.com.ua/ 2. Перлини української народної пісні. Упорядник В. М. Гордійчук. - К.: Музична Україна, 1989. - 392 с. 3. Надав Василь Триліс','Чоловічий народний хор "Чумаки" п/о Василя Триліса. Солісти: Святослав Стус (тенор) та Андрій Климович (баритон). Запис 1991 року. У виконанні хору "Чумаки" звучать 1, 2, 4, 5 в''язки пісні.','Ох і не стелися,
Хрещатий барвінку,
Та і по крутій горі...
Гей, не втішайтесь,
Злії воріженьки,
Та пригодоньці мої!

Бо моя пригода —
Козацька врода,
Як та ранняя роса:
Що вітер повіє,
Сонечко пригріє,
Роса на землю впаде.

Що вітер повіє,
Сонечко пригріє,
Роса на землю впаде,
Так моя неслава,
Людська поговірка,
Усе марно пропаде!

Наїхали пани
Та ще й орандарі
Воли й вози забирать...
Гей, беріть же ви
Усю худібоньку -
Не маю вам що й казать!

А я, як жив буду,
Усе те забуду,
Воли й вози покуплю,
Мережані ярма,
Тернові занози -
То все сам я пороблю!

На людськую славу
Й тую поговірку
Ще раз у Крим ісхожу;
Повні вози солі,
Повні мажі риби
Ще додому привезу','[''pisni.org.ua'', ''cat:chumacki'', ''cat:suspilno-politychni'', ''Чумацькі пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_943080'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_943080','Ох і не стелися, хрещатий барвінку (три голоси)','Ох і не стелися,
Хрещатий барвінку,
Та і по крутій горі...
Гей, не втішайтесь,
Злії воріженьки,
Та пригодоньці мої!

Бо моя пригода —
Козацька врода,
Як та ранняя роса:
Що вітер повіє,
Сонечко пригріє,
Роса на землю впаде.

Що вітер повіє,
Сонечко пригріє,
Роса на землю впаде,
Так моя неслава,
Людська поговірка,
Усе марно пропаде!

Наїхали пани
Та ще й орандарі
Воли й вози забирать...
Гей, беріть же ви
Усю худібоньку -
Не маю вам що й казать!

А я, як жив буду,
Усе те забуду,
Воли й вози покуплю,
Мережані ярма,
Тернові занози -
То все сам я пороблю!

На людськую славу
Й тую поговірку
Ще раз у Крим ісхожу;
Повні вози солі,
Повні мажі риби
Ще додому привезу');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_943080_l1','pisniua_943080','YouTube','https://www.youtube.com/watch?v=TiZu6IwBUp8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_943080_l2','pisniua_943080','YouTube','https://www.youtube.com/watch?v=A9fjnvylR8o','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_943080_l3','pisniua_943080','YouTube','https://www.youtube.com/watch?v=ZyU6n7LArxc','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_943080_l4','pisniua_943080','YouTube','https://www.youtube.com/watch?v=Theqdzky3Wc','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_943080_l5','pisniua_943080','YouTube','https://www.youtube.com/watch?v=7NLINN3xzhk','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_9433383';
DELETE FROM song_versions WHERE song_id = 'pisniua_9433383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9433383';
DELETE FROM songs WHERE id = 'pisniua_9433383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9433383','Остання путь','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Прийдіть сьогодні всі,
Прийдіть сьогодні всі
Зі мною попрощатись,
Бо я вже йду від вас,
Бо я вже йду від вас
До Бога відчитатись...

Приспів:
Остання путь,
Остання путь,
Останняя дорога...
Остання путь,
Остання путь
Від рідного порога...

Колись моє життя,
Колись моє життя,
Як квітка процвітало,
Тепер я вже лежу,
Тепер я вже лежу,
Як та трава зів''яла...

Приспів.

Не плачте, не прийду,
Не плачте, не прийду,
Не буду з вами жити,
Бо я вже йду від вас,
Бо я вже йду від вас,
Де буде Бог судити.

Приспів.

А, може, ще прийдеш?
А, може, ще прийдеш?
Ми будем виглядати!
Бо хто же нам буде,
Бо хто же нам буде
У горі помагати?..

Приспів.

Не будем плакати,
Не будем плакати,
Будемо ся молити,
Щоб Господь дав душі,
Щоб Господь дав душі
У Його царстві жити.

Приспів.','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9433383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9433383','Остання путь','Прийдіть сьогодні всі,
Прийдіть сьогодні всі
Зі мною попрощатись,
Бо я вже йду від вас,
Бо я вже йду від вас
До Бога відчитатись...

Приспів:
Остання путь,
Остання путь,
Останняя дорога...
Остання путь,
Остання путь
Від рідного порога...

Колись моє життя,
Колись моє життя,
Як квітка процвітало,
Тепер я вже лежу,
Тепер я вже лежу,
Як та трава зів''яла...

Приспів.

Не плачте, не прийду,
Не плачте, не прийду,
Не буду з вами жити,
Бо я вже йду від вас,
Бо я вже йду від вас,
Де буде Бог судити.

Приспів.

А, може, ще прийдеш?
А, може, ще прийдеш?
Ми будем виглядати!
Бо хто же нам буде,
Бо хто же нам буде
У горі помагати?..

Приспів.

Не будем плакати,
Не будем плакати,
Будемо ся молити,
Щоб Господь дав душі,
Щоб Господь дав душі
У Його царстві жити.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9433383_l1','pisniua_9433383','YouTube','https://www.youtube.com/watch?v=xCjfe1kx_qA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9434188';
DELETE FROM song_versions WHERE song_id = 'pisniua_9434188';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9434188';
DELETE FROM songs WHERE id = 'pisniua_9434188';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9434188','Дзвоники дзвенять','Музика: Нелі Марковська Слова: Нелі Марковська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Падає тихесенько перший сніг пухнатий,
Засніжив віконечко, залетів до хати.
Весь поріг засипав, ділі-ділі-дон,
Зачепив годинник - бом-бом-бом!..

Приспів:
Ділі-ділі-дон!
Дзвоники дзвенять!
Ділі-ділі-дон!
Дзвоники не сплять! Дон!
Ділі-ділі-ділі-ділі!
Дін-дін-дін!
Лунає Веселий перезвін!

Падають, кружляються зірочки-сніжинки,
Білим пухом падають на ялинки.
Світяться барвисто, ділі-ділі-дон,
Сріблястим намистом, бом-бом-бом!

Приспів.

І веселий настрій в новорічне свято
Будуть подаруночки нам усім багато.
Хай дзвенять дзвіночки, сипле сніговій,
Ми зустрінем разом рік Новий!

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:new-year'', ''Дитячі пісні'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9434188'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9434188','Дзвоники дзвенять','Падає тихесенько перший сніг пухнатий,
Засніжив віконечко, залетів до хати.
Весь поріг засипав, ділі-ділі-дон,
Зачепив годинник - бом-бом-бом!..

Приспів:
Ділі-ділі-дон!
Дзвоники дзвенять!
Ділі-ділі-дон!
Дзвоники не сплять! Дон!
Ділі-ділі-ділі-ділі!
Дін-дін-дін!
Лунає Веселий перезвін!

Падають, кружляються зірочки-сніжинки,
Білим пухом падають на ялинки.
Світяться барвисто, ділі-ділі-дон,
Сріблястим намистом, бом-бом-бом!

Приспів.

І веселий настрій в новорічне свято
Будуть подаруночки нам усім багато.
Хай дзвенять дзвіночки, сипле сніговій,
Ми зустрінем разом рік Новий!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9434188_l1','pisniua_9434188','YouTube','https://www.youtube.com/watch?v=ICuqEqeAmrE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9434188_l2','pisniua_9434188','YouTube','https://www.youtube.com/watch?v=qsGtF_amkbY','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9434188_l3','pisniua_9434188','YouTube','https://www.youtube.com/watch?v=g_SOZW6tOGo','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_9439889';
DELETE FROM song_versions WHERE song_id = 'pisniua_9439889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9439889';
DELETE FROM songs WHERE id = 'pisniua_9439889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9439889','Я вам бажаю щастя','Музика: Олексій Малахов Слова: Лариса Флінта. Виконує: Наталія Валевська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Я вам бажаю щастя без краю!
Вітер надасть сили знов!
І кожен день нехай вас зустрічає
Віра, Надія, Любов!

Хай щастя ваші плечі
Окутає крилом!
Хай кожен теплий вечір
Дарує вам любов!
Нехай усмішки сяють
Та радують слова,
А всі, хто вірить,
Мають в житті лише дива!

Приспів. (2)

Завжди подяку майте
За кожен новий день,
Та серцем зігрівайте
Близьких до вас людей!
Хай ллється водограєм
Дітей щасливий сміх!
Примножимо, що маєм,
Розділимо на всіх!

Приспів. (4)

І кожен день нехай вас зустрічає
Віра, Надія, Любов!','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9439889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9439889','Я вам бажаю щастя','Приспів:
Я вам бажаю щастя без краю!
Вітер надасть сили знов!
І кожен день нехай вас зустрічає
Віра, Надія, Любов!

Хай щастя ваші плечі
Окутає крилом!
Хай кожен теплий вечір
Дарує вам любов!
Нехай усмішки сяють
Та радують слова,
А всі, хто вірить,
Мають в житті лише дива!

Приспів. (2)

Завжди подяку майте
За кожен новий день,
Та серцем зігрівайте
Близьких до вас людей!
Хай ллється водограєм
Дітей щасливий сміх!
Примножимо, що маєм,
Розділимо на всіх!

Приспів. (4)

І кожен день нехай вас зустрічає
Віра, Надія, Любов!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9439889_l1','pisniua_9439889','YouTube','https://www.youtube.com/watch?v=4e5BnKu3z90','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9438181';
DELETE FROM song_versions WHERE song_id = 'pisniua_9438181';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9438181';
DELETE FROM songs WHERE id = 'pisniua_9438181';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9438181','Новий рiк','Музика: Андрій Ігначенко Слова: Анна Фешенко. Виконує: Kamaliya','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Загадай бажання в Новий Рік,
Як в казці здійсниться,
Ти лиш посміхнися!..
Щастя в дім приходить на поріг
І свято так близько,
Піднімем ігристе у Новий Рік!

За вікном сніжинки падають,
Чути звуки музики й салют,
А ти зі мною поруч будь!
В новорічну ніч любов свою
Я тобі дарую й мрією
Назустріч всім дивам лечу!
Маски знімемо й з почуттями щирими!

Приспів.

У Новий рік! У Новий рік!
У Новий рік!

Ніч засяє сотнями гірлянд,
П''ять хвилин, куранти б''ють
І скрізь лунає голосно моя
Пісня, що наповнює серця!
В Новорічну ніч усі разом
Любов''ю землю зігріва!
Маски знімемо й з почуттями щирими!

Приспів.

У Новий рік! У Новий рік!
У Новий рік!

Приспів. (2)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9438181'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9438181','Новий рiк','Приспів:
Загадай бажання в Новий Рік,
Як в казці здійсниться,
Ти лиш посміхнися!..
Щастя в дім приходить на поріг
І свято так близько,
Піднімем ігристе у Новий Рік!

За вікном сніжинки падають,
Чути звуки музики й салют,
А ти зі мною поруч будь!
В новорічну ніч любов свою
Я тобі дарую й мрією
Назустріч всім дивам лечу!
Маски знімемо й з почуттями щирими!

Приспів.

У Новий рік! У Новий рік!
У Новий рік!

Ніч засяє сотнями гірлянд,
П''ять хвилин, куранти б''ють
І скрізь лунає голосно моя
Пісня, що наповнює серця!
В Новорічну ніч усі разом
Любов''ю землю зігріва!
Маски знімемо й з почуттями щирими!

Приспів.

У Новий рік! У Новий рік!
У Новий рік!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9438181_l1','pisniua_9438181','YouTube','https://www.youtube.com/watch?v=jvHYTCYrGho','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_942982';
DELETE FROM song_versions WHERE song_id = 'pisniua_942982';
DELETE FROM songs_fts WHERE song_id = 'pisniua_942982';
DELETE FROM songs WHERE id = 'pisniua_942982';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_942982','Откаль Сонечко сходило','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Лемківські співанки. Зібрав і упорядкував М. Соболевський. — К.: Музична Україна, 1967. — 320 с.','Пісня з добірки М.Соболевського: Лемківські співанки Діалектизми: єдно - одне; иде - іде; конколя - кукіль; коприва - кропива; мі - мені; младий - молодий; откаль - звідки; росне - росте; росний - рости (наказовий спосіб); урод - вроди, уроди; червене - червоне; яблін, яблінка - яблуня.','Откаль Сонечко сходило
Там Дівча Яблін садило
Росний Яблінко високо
А по при Земли широко
Урод Яблочко або Дві
Єдно Милому Друге мі
Урод Яблочко Червене
Як моє Личко Рум''яне

Як ся достане Младому
Легко буде Серцу мойому
Як ся достане Старому
Тяжко буде Серцу мойому
Як Старий иде до Млина
То росне за Ним Коприва
Як Старий иде до Поля
То росне за Ним Конколя','[''pisni.org.ua'', ''cat:kupalski'', ''cat:lemkivski'', ''cat:vesnyanky-hayivky'', ''cat:zeleni-svyata'', ''Купальські пісні'', ''Лемківські пісні'', ''Веснянки та гаївки'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_942982'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_942982','Откаль Сонечко сходило','Откаль Сонечко сходило
Там Дівча Яблін садило
Росний Яблінко високо
А по при Земли широко
Урод Яблочко або Дві
Єдно Милому Друге мі
Урод Яблочко Червене
Як моє Личко Рум''яне

Як ся достане Младому
Легко буде Серцу мойому
Як ся достане Старому
Тяжко буде Серцу мойому
Як Старий иде до Млина
То росне за Ним Коприва
Як Старий иде до Поля
То росне за Ним Конколя');
DELETE FROM song_links WHERE song_id = 'pisniua_9429484';
DELETE FROM song_versions WHERE song_id = 'pisniua_9429484';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9429484';
DELETE FROM songs WHERE id = 'pisniua_9429484';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9429484','Святий Миколай','Музика: Анастасія Комлікова Слова: Лариса Дубас','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Друже всіх дітей й дорослих,
Любий Миколаю,
Завітай до нас у гості,
Добрий Миколаю!
Усмішками щирими
Ми тебе зустрінемо,
Святий Миколаю!..
Святий Миколаю!..

Ми на тебе так чекали,
Любий Миколаю,
Іграшки всі поскладали,
Добрий Миколаю!
Чистота в усіх оселях,
Чути пісеньки веселі,
Святий Миколаю!..
Святий Миколаю!..

Віримо у твою ласку,
Любий Миколаю!
Завітай у світлу казку,
Добрий Миколаю!
Коли вся земля радіє,   |
Коли здійснюються мрії, |
Святий Миколаю!..       |
Святий Миколаю!..       | (2)','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9429484'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9429484','Святий Миколай','Друже всіх дітей й дорослих,
Любий Миколаю,
Завітай до нас у гості,
Добрий Миколаю!
Усмішками щирими
Ми тебе зустрінемо,
Святий Миколаю!..
Святий Миколаю!..

Ми на тебе так чекали,
Любий Миколаю,
Іграшки всі поскладали,
Добрий Миколаю!
Чистота в усіх оселях,
Чути пісеньки веселі,
Святий Миколаю!..
Святий Миколаю!..

Віримо у твою ласку,
Любий Миколаю!
Завітай у світлу казку,
Добрий Миколаю!
Коли вся земля радіє,   |
Коли здійснюються мрії, |
Святий Миколаю!..       |
Святий Миколаю!..       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9429484_l1','pisniua_9429484','YouTube','https://www.youtube.com/watch?v=rLwr_X5Cu6A','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9440786';
DELETE FROM song_versions WHERE song_id = 'pisniua_9440786';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9440786';
DELETE FROM songs WHERE id = 'pisniua_9440786';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9440786','Зачарований вінок','Музика: Михайло Назарець Слова: Юлія Хандожинська','uk','ukraine_before_1917',NULL,NULL,'авторське подання',NULL,'На Івана, на Купала,
Ой, віночок виплітала
Ой, віночок виплітала,
В воду биструю пускала.
Ти пливи, пливи, віночок,
Під зелений бережочок,
Ти пливи, не заблудися,
Де коханий подивися.

Приспів:
А вінок в воді купається,
А душа на двоє крається...
Ой, подійте диво-чари,
Не залишитись без пари.
В ніч липневу, в ніч медову
Розплету косу шовкову,
На траву намисто кину,
Своє щастя не покину!..

А вінок пливе тихенько,
Грай, музико, веселенько!
Ідіть, хлопці, до водиці
Та й скоріш на вечорниці!
Вечір, сонечко сідає,
Вже й багаття догоряє...
У сорочці вишиваній
Хлопець мій вінок тримає!..

Приспів.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9440786'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9440786','Зачарований вінок','На Івана, на Купала,
Ой, віночок виплітала
Ой, віночок виплітала,
В воду биструю пускала.
Ти пливи, пливи, віночок,
Під зелений бережочок,
Ти пливи, не заблудися,
Де коханий подивися.

Приспів:
А вінок в воді купається,
А душа на двоє крається...
Ой, подійте диво-чари,
Не залишитись без пари.
В ніч липневу, в ніч медову
Розплету косу шовкову,
На траву намисто кину,
Своє щастя не покину!..

А вінок пливе тихенько,
Грай, музико, веселенько!
Ідіть, хлопці, до водиці
Та й скоріш на вечорниці!
Вечір, сонечко сідає,
Вже й багаття догоряє...
У сорочці вишиваній
Хлопець мій вінок тримає!..

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_9441787';
DELETE FROM song_versions WHERE song_id = 'pisniua_9441787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9441787';
DELETE FROM songs WHERE id = 'pisniua_9441787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9441787','Любить Миколай','Музика: Микола Ведмедеря Слова: Марія Яновська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Коли мороз пощипує за щічки,
Покриє льодом тихий став і річку,
Як білим снігом вкриє сад і гай —
Для всіх несе гостинці Миколай!

Приспів:
Такий привітний, у новім кожушку,
Кладе гостинці тихо під подушку.
Слухняним будь! Собі запам''ятай,
Що тільки чемних любить Миколай!

Де спить дитина, знає дуже добре,
Дід Миколай ласкавий і хоробрий
У шапці-невидимці уночі
Заходить тихо в хату, без ключів!

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9441787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9441787','Любить Миколай','Коли мороз пощипує за щічки,
Покриє льодом тихий став і річку,
Як білим снігом вкриє сад і гай —
Для всіх несе гостинці Миколай!

Приспів:
Такий привітний, у новім кожушку,
Кладе гостинці тихо під подушку.
Слухняним будь! Собі запам''ятай,
Що тільки чемних любить Миколай!

Де спить дитина, знає дуже добре,
Дід Миколай ласкавий і хоробрий
У шапці-невидимці уночі
Заходить тихо в хату, без ключів!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_9435982';
DELETE FROM song_versions WHERE song_id = 'pisniua_9435982';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9435982';
DELETE FROM songs WHERE id = 'pisniua_9435982';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9435982','Чарівний Миколай','Музика: Марія Демків Слова: І. Корнійчук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На землю України,
У наш прекрасний край
Зійшов з самого неба
Чарівний Миколай!

Приспів:
Святий наш Миколаю,
Ти снишся нам вночі,
Тебе ми дуже любим, |
І молимось тобі!    | (2)

Цукерки й мандаринки,
І яблучка смачні
Розносиш в ніч чарівну
Щасливій дітворі!

Приспів.

Радіють всюди діти,
І вірять в чудеса:
Що із небес дорога
На землю пролягла!

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9435982'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9435982','Чарівний Миколай','На землю України,
У наш прекрасний край
Зійшов з самого неба
Чарівний Миколай!

Приспів:
Святий наш Миколаю,
Ти снишся нам вночі,
Тебе ми дуже любим, |
І молимось тобі!    | (2)

Цукерки й мандаринки,
І яблучка смачні
Розносиш в ніч чарівну
Щасливій дітворі!

Приспів.

Радіють всюди діти,
І вірять в чудеса:
Що із небес дорога
На землю пролягла!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_9442580';
DELETE FROM song_versions WHERE song_id = 'pisniua_9442580';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9442580';
DELETE FROM songs WHERE id = 'pisniua_9442580';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9442580','Стефанія','(Stefania). Музика: Тимофій Музичук, Ігор Діденчук, Віталій Дужик Слова: Олег Псюк, Іван Кліменко. Виконує: Kalush Orchestra','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Стефанія мамо! Мамо Стефанія!
Розквітає поле, а вона сивіє!..
Заспівай мені, мамо, колискову,
Хочу ще почути твоє рідне слово!..

Вона мене колисала, дала мені ритм,
І, напевне, силу волі
Не забрати в мене, бо дала вона!
Напевне знала може більше і від Соломона.
Ламаними дорогами прийду я завжди до тебе!
Вона не розбудить,
Не будить мене в сильні бурі,
Забере в бабулі дві дулі, ніби вони кулі...
Дуже добре знала мене, не була обманута,
Як була дуже втомлена, гойдала мене в такт
Люлі... Люлі... Люлі...

Приспів.

Я не в пеленах, но, ма, но, ма,
Хватить, якби я не виріс на виріст
За речі платить...
Я - не мала дитина, вона далі нерви тратить,
Я гуляв, шляк би тебе трафив!..
Ти все молода, о, мамо, на піку,
Якщо не ціню опіку на піку слави -
Мені в тупику... Забивайте піку цю піку,
Я би попік спік своєю любов''ю...
Люлі... Люлі... Люлі...

Приспів. (2)','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9442580'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9442580','Стефанія','Приспів:
Стефанія мамо! Мамо Стефанія!
Розквітає поле, а вона сивіє!..
Заспівай мені, мамо, колискову,
Хочу ще почути твоє рідне слово!..

Вона мене колисала, дала мені ритм,
І, напевне, силу волі
Не забрати в мене, бо дала вона!
Напевне знала може більше і від Соломона.
Ламаними дорогами прийду я завжди до тебе!
Вона не розбудить,
Не будить мене в сильні бурі,
Забере в бабулі дві дулі, ніби вони кулі...
Дуже добре знала мене, не була обманута,
Як була дуже втомлена, гойдала мене в такт
Люлі... Люлі... Люлі...

Приспів.

Я не в пеленах, но, ма, но, ма,
Хватить, якби я не виріс на виріст
За речі платить...
Я - не мала дитина, вона далі нерви тратить,
Я гуляв, шляк би тебе трафив!..
Ти все молода, о, мамо, на піку,
Якщо не ціню опіку на піку слави -
Мені в тупику... Забивайте піку цю піку,
Я би попік спік своєю любов''ю...
Люлі... Люлі... Люлі...

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9442580_l1','pisniua_9442580','YouTube','https://www.youtube.com/watch?v=5nRQWc4YKGU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9442580_l2','pisniua_9442580','YouTube','https://www.youtube.com/watch?v=9mxqYaNpvnY','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9442580_l3','pisniua_9442580','YouTube','https://www.youtube.com/watch?v=NPns2ShboT8','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9442580_l4','pisniua_9442580','YouTube','https://www.youtube.com/watch?v=aW9xbvE3jdQ','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_9447181';
DELETE FROM song_versions WHERE song_id = 'pisniua_9447181';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9447181';
DELETE FROM songs WHERE id = 'pisniua_9447181';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9447181','Рідні мої','Музика: Vanek Klimenko Слова: Альона Савраненко (alyona alyona), Jerry Heil. Виконує: Альона Савраненко (alyona alyona), Jerry Heil','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Будь ласка,
Відпустіть на Пасху
До сім''ї,
Де мене знають без маски.
На зорі,
Де читала баба казки,
Де в ціні любов,
А не заслуги і поразки!.. | (2)

Рідні мої, рідні мої,
Я знаю, чекаєте в гості,
Я вам обіцяла весною,
Очима моргнула — а вже руда осінь...
Рідні мої, рідні мої,
Я бачу, як вужчає коло,
Тепер уже менше стільців
Стоїть біля столу святкового...
Рідні мої, рідні мої,
Розмови до пізньої ночі,
В печі закипатиме горщик,
І свічка світитиме в очі...
Рідні мої, рідні мої,
Іконами із рушниками
Колись зустрічали,
Тепер проводжають усіх,
Хто більше не з нами...

Приспів.

Рідні мої, рідні мої,
Куди розлітаєтесь стрімко?
Хай птахи летять із гнізда,
А то ж ваші стіни, то ваша стріха.
Рідні мої, рідні мої,
Із буди не гавка собака,
І котик на ґанку уже не мурчить,
Щоб діти навколо не плакали...
Рідні мої, рідні мої,
Чому ваші коси сивіють?
Я знаю, як дати нове життя,
Старе ж повертати не вмію...
Рідні мої, рідні мої,
Я хочу вам пообіцяти,
Що я берегтиму традиції цої сім''ї!..

Приспів.

Будь ласка...','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9447181'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9447181','Рідні мої','Приспів:
Будь ласка,
Відпустіть на Пасху
До сім''ї,
Де мене знають без маски.
На зорі,
Де читала баба казки,
Де в ціні любов,
А не заслуги і поразки!.. | (2)

Рідні мої, рідні мої,
Я знаю, чекаєте в гості,
Я вам обіцяла весною,
Очима моргнула — а вже руда осінь...
Рідні мої, рідні мої,
Я бачу, як вужчає коло,
Тепер уже менше стільців
Стоїть біля столу святкового...
Рідні мої, рідні мої,
Розмови до пізньої ночі,
В печі закипатиме горщик,
І свічка світитиме в очі...
Рідні мої, рідні мої,
Іконами із рушниками
Колись зустрічали,
Тепер проводжають усіх,
Хто більше не з нами...

Приспів.

Рідні мої, рідні мої,
Куди розлітаєтесь стрімко?
Хай птахи летять із гнізда,
А то ж ваші стіни, то ваша стріха.
Рідні мої, рідні мої,
Із буди не гавка собака,
І котик на ґанку уже не мурчить,
Щоб діти навколо не плакали...
Рідні мої, рідні мої,
Чому ваші коси сивіють?
Я знаю, як дати нове життя,
Старе ж повертати не вмію...
Рідні мої, рідні мої,
Я хочу вам пообіцяти,
Що я берегтиму традиції цої сім''ї!..

Приспів.

Будь ласка...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9447181_l1','pisniua_9447181','YouTube','https://www.youtube.com/watch?v=eZslMJsyKdw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9447484';
DELETE FROM song_versions WHERE song_id = 'pisniua_9447484';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9447484';
DELETE FROM songs WHERE id = 'pisniua_9447484';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9447484','Купалася дівка Маринка','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Олена Гончаренко',NULL,'Купалася дівка Маринка,
Купала на Йвана!

Купаючи, вона змерзла,
Купала на Йвана!

Та нігде їй перегрітися,
Купала на Йвана!

У Іванка пуд рукою,
Купала на Йвана!

Пуд рукою, пуд полою,
Купала на Йвана!','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9447484'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9447484','Купалася дівка Маринка','Купалася дівка Маринка,
Купала на Йвана!

Купаючи, вона змерзла,
Купала на Йвана!

Та нігде їй перегрітися,
Купала на Йвана!

У Іванка пуд рукою,
Купала на Йвана!

Пуд рукою, пуд полою,
Купала на Йвана!');
DELETE FROM song_links WHERE song_id = 'pisniua_944282';
DELETE FROM song_versions WHERE song_id = 'pisniua_944282';
DELETE FROM songs_fts WHERE song_id = 'pisniua_944282';
DELETE FROM songs WHERE id = 'pisniua_944282';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_944282','Прощальний романс','Музика: Михайло Зарічний Слова: Олександр Ірванець. Виконує: ПереBANDя, Михайло Зарічний','uk','ukraine_1991',NULL,NULL,'1. Надав М. Зарічний','Підбір акордів: М. Зарічний','Bm
А я тебе кидаю
Em7
В світі такому холодному.
A7
Всі клятви й обіцянки
F#7              Bm7+
Раптом упали в ціні.
І тільки два слова,
Два слова сумління колотимуть:
G7
Пробачиш мені?
C                F#9+
Моя мила, пробачиш мені?

Пробач мені, мила,
Яви свою милість, пробач мені.
Звільни мою душу
Від того, що так їй пече.
Тому ми й прощання
Назвали останнім побаченням,
Щоб мати надію -
А раптом побачимось ще.

Але ти мовчиш.
Головою печально похитуєш
І стук твоїх кроків
Відлунює в скроні мої:
"Навіщо ти кидаєш милу,
На-ві-що ти ки-да-єш?
Це ж, може, остання любов,
Тож не кидай її!..."

Останні вагання
Змиває і злизує злива.
Останніх благань
Благенькі блакитні вогні.
А я тебе кидаю,
Я тебе кидаю, мила,
Мов круг рятувальний,
Якого хтось кинув мені.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_944282'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_944282','Прощальний романс','Bm
А я тебе кидаю
Em7
В світі такому холодному.
A7
Всі клятви й обіцянки
F#7              Bm7+
Раптом упали в ціні.
І тільки два слова,
Два слова сумління колотимуть:
G7
Пробачиш мені?
C                F#9+
Моя мила, пробачиш мені?

Пробач мені, мила,
Яви свою милість, пробач мені.
Звільни мою душу
Від того, що так їй пече.
Тому ми й прощання
Назвали останнім побаченням,
Щоб мати надію -
А раптом побачимось ще.

Але ти мовчиш.
Головою печально похитуєш
І стук твоїх кроків
Відлунює в скроні мої:
"Навіщо ти кидаєш милу,
На-ві-що ти ки-да-єш?
Це ж, може, остання любов,
Тож не кидай її!..."

Останні вагання
Змиває і злизує злива.
Останніх благань
Благенькі блакитні вогні.
А я тебе кидаю,
Я тебе кидаю, мила,
Мов круг рятувальний,
Якого хтось кинув мені.');
DELETE FROM song_links WHERE song_id = 'pisniua_9436580';
DELETE FROM song_versions WHERE song_id = 'pisniua_9436580';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9436580';
DELETE FROM songs WHERE id = 'pisniua_9436580';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9436580','Ріка','Музика: Євген Турчинов Слова: Сергій Жадан. Виконує: Жадан і Собаки','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
І немає різниці при цій ріці,            |
Що відбивають твої зіниці...             |
Твої вилиці, тінь на твоєму лиці,        |
Наприкінці не буде різниці...            |
Не матиме значення жодне з учень,        |
І мовчання нічне не матиме значення...   |
Освячена кожна з твоїх речей,            |
До побачення, ніжна моя, до побачення!.. | (2)

Тихо так, наче падає сніг,
Тьмяно зникаючи між небесами,
Лишається світло з усіх утіх,
І небо наповнюється голосами...
Палає вогонь для усіх, хто пішов,
І звістка здається такою гіркою...
Місце прощання болюче, як шов,
Ніби стоїш над нічною рікою...

Приспів.

Дивно так починається рік,
Наче хтось переписує ріки.
Кожна, з прописаних нами доріг,
Тьмою лягатиме на повіки...
Світло так, наче палять вогні,
І течія вигорає зісподу,
Все відчитається на глибині,
І ступаєш у відданість, ніби у воду...

Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9436580'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9436580','Ріка','Приспів:
І немає різниці при цій ріці,            |
Що відбивають твої зіниці...             |
Твої вилиці, тінь на твоєму лиці,        |
Наприкінці не буде різниці...            |
Не матиме значення жодне з учень,        |
І мовчання нічне не матиме значення...   |
Освячена кожна з твоїх речей,            |
До побачення, ніжна моя, до побачення!.. | (2)

Тихо так, наче падає сніг,
Тьмяно зникаючи між небесами,
Лишається світло з усіх утіх,
І небо наповнюється голосами...
Палає вогонь для усіх, хто пішов,
І звістка здається такою гіркою...
Місце прощання болюче, як шов,
Ніби стоїш над нічною рікою...

Приспів.

Дивно так починається рік,
Наче хтось переписує ріки.
Кожна, з прописаних нами доріг,
Тьмою лягатиме на повіки...
Світло так, наче палять вогні,
І течія вигорає зісподу,
Все відчитається на глибині,
І ступаєш у відданість, ніби у воду...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9436580_l1','pisniua_9436580','YouTube','https://www.youtube.com/watch?v=szad9NmyYd4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_943281';
DELETE FROM song_versions WHERE song_id = 'pisniua_943281';
DELETE FROM songs_fts WHERE song_id = 'pisniua_943281';
DELETE FROM songs WHERE id = 'pisniua_943281';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_943281','Балада про бабусю і онука','Музика: Олег Сухарєв Слова: Олег Сухарєв. Виконує: Олег Сухарєв','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: фофка','Іван був з вінницької області,
ходив напувати худобу за село...
Але доля мала свої пристрасті
і його до столиці занесло.

Вона була прекрасная шполяночка,
осьо уся оси осина.
І там у друга була п''яночка
так Іван покохав Христину

Вона навчалась в інституті,
була дуже вумна, знала похідні,
займалась спортом, скакала на батуті,
грати на гітарі ходила в вихідні.

Іван був хлопець роботящий,
він на заводі танки випускав,
він токар був з усіх в цеху найкращий
і дошку пошани завжди прикрашав...

- Виходь за мене, Христю, заміж,
твоїм навік я обіцяю бути.
- Не вийду я за тебе заміж,
я про це не хочу навіть чути.

- Але не на того ти попала, віриш,
Іван характером був хлопець впертий.
Або під вінець ти зі мною підеш,
або краще мені тоді вмерти...

"Гірко", "Гірко" кричали п''яні гості.
Дай вам, Боже, щєстя многії літа
музики змовкли тільки десь о шостій,
в кімнаті молодих не стало світла...

...Мати збирала ковбаси і сиру,
мати проводжала діток до столиці,
"Станемо ми, мамо в чергу на квартиру,
дай-но на прощання напитися водиці..."

Так все сталося, як і гадалося -
все відбулося належним чином.
слава богу хотілось, слава богу моглося,
навесну Христина принесла сина...

Три вісімсот, назвали Андрієм,
знов мати збирає ковбаси і сиру,
Христина посміхається, Іван радіє,
як враз підійшла черга на квартиру...

Хлопчик підростав до наук придатний,
вивчав комп''ютори й англійську мову,
чемний був і акуратний,
- ну що там  школі? - п''ятірка знову..

Літо. Канікули. Весела пора.
Телеграма. Будь ласка. Розпишіться. Ручка.
"Іванку, Христинко, а чи не пора
показати мені мого онучка?

Їхали на поїзді і на автобУсі,
сірими грунтівками пилюки наковтались.
Вона вже на порозі. "Біжи, синку, до бабусі!"
Іванко і Христинка з матір''ю вітались.

- А ти, чому мовчиш, любий мій онуче?
в тобі ж, малятко, козацькая кров є...
я молока наллю тобі повную кружку...
- Здравстуйтє, бабушка, как ваше здаров''є?','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_943281'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_943281','Балада про бабусю і онука','Іван був з вінницької області,
ходив напувати худобу за село...
Але доля мала свої пристрасті
і його до столиці занесло.

Вона була прекрасная шполяночка,
осьо уся оси осина.
І там у друга була п''яночка
так Іван покохав Христину

Вона навчалась в інституті,
була дуже вумна, знала похідні,
займалась спортом, скакала на батуті,
грати на гітарі ходила в вихідні.

Іван був хлопець роботящий,
він на заводі танки випускав,
він токар був з усіх в цеху найкращий
і дошку пошани завжди прикрашав...

- Виходь за мене, Христю, заміж,
твоїм навік я обіцяю бути.
- Не вийду я за тебе заміж,
я про це не хочу навіть чути.

- Але не на того ти попала, віриш,
Іван характером був хлопець впертий.
Або під вінець ти зі мною підеш,
або краще мені тоді вмерти...

"Гірко", "Гірко" кричали п''яні гості.
Дай вам, Боже, щєстя многії літа
музики змовкли тільки десь о шостій,
в кімнаті молодих не стало світла...

...Мати збирала ковбаси і сиру,
мати проводжала діток до столиці,
"Станемо ми, мамо в чергу на квартиру,
дай-но на прощання напитися водиці..."

Так все сталося, як і гадалося -
все відбулося належним чином.
слава богу хотілось, слава богу моглося,
навесну Христина принесла сина...

Три вісімсот, назвали Андрієм,
знов мати збирає ковбаси і сиру,
Христина посміхається, Іван радіє,
як враз підійшла черга на квартиру...

Хлопчик підростав до наук придатний,
вивчав комп''ютори й англійську мову,
чемний був і акуратний,
- ну що там  школі? - п''ятірка знову..

Літо. Канікули. Весела пора.
Телеграма. Будь ласка. Розпишіться. Ручка.
"Іванку, Христинко, а чи не пора
показати мені мого онучка?

Їхали на поїзді і на автобУсі,
сірими грунтівками пилюки наковтались.
Вона вже на порозі. "Біжи, синку, до бабусі!"
Іванко і Христинка з матір''ю вітались.

- А ти, чому мовчиш, любий мій онуче?
в тобі ж, малятко, козацькая кров є...
я молока наллю тобі повную кружку...
- Здравстуйтє, бабушка, как ваше здаров''є?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_943281_l1','pisniua_943281','YouTube','https://www.youtube.com/watch?v=z1flEAoO344','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_945085';
DELETE FROM song_versions WHERE song_id = 'pisniua_945085';
DELETE FROM songs_fts WHERE song_id = 'pisniua_945085';
DELETE FROM songs WHERE id = 'pisniua_945085';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_945085','Темна ніч настала','Українська народна пісня. Виконує: Курінь','uk','ukr_ssr_1919_1991',NULL,NULL,'Аудіо-записи дуету "Курінь"','Текст і акорди записано на слух з аудіо.','Вступ: Em Am Em Am Em

Темна ніч наста- ла.
Всюди було тихо.
До села з-під лісу  |
Вже підходить лихо. |

Приїжджають кати
Попід кожну хату,
Арештують друзів    |
За підпільну працю. |(2)

Друзів арештують,
Закувають руки,
Тай вивозять шляхом |
до тюрми на муки.   |(2)

Так сиділи друзі
По півтора року,
Тай виводять друзів |
Слухати вироку.     |(2)

Вирок прочитали,
На смерть засудили.
Тарахтить скоростріл - |
Друзі повалились.      |(2)

Але їхня слава,
Слава не пропала!
Слава Україні!     |
Всім Героям слава! |(2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_945085'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_945085','Темна ніч настала','Вступ: Em Am Em Am Em

Темна ніч наста- ла.
Всюди було тихо.
До села з-під лісу  |
Вже підходить лихо. |

Приїжджають кати
Попід кожну хату,
Арештують друзів    |
За підпільну працю. |(2)

Друзів арештують,
Закувають руки,
Тай вивозять шляхом |
до тюрми на муки.   |(2)

Так сиділи друзі
По півтора року,
Тай виводять друзів |
Слухати вироку.     |(2)

Вирок прочитали,
На смерть засудили.
Тарахтить скоростріл - |
Друзі повалились.      |(2)

Але їхня слава,
Слава не пропала!
Слава Україні!     |
Всім Героям слава! |(2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_945085_l1','pisniua_945085','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9454383';
DELETE FROM song_versions WHERE song_id = 'pisniua_9454383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9454383';
DELETE FROM songs WHERE id = 'pisniua_9454383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9454383','День народження','Музика: Юрій Ящук Слова: Юрій Шмегельський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ось настав цей святковий день,
Ти вітання скоріш приймай!
Щирих друзів, своїх гостей,
Ти на свято усіх скликай!
І нехай веселяться всі,
Хай зігріє тебе любов!
Поздоровлення від душі
Лиш для тебе лунають знов!

Приспів:
Цей день щасливий,
Він для тебе особливий!
Вір у те, що все можливо
В твій день народження!
Цей день щасливий
Ми відсвяткуємо бурхливо!
Знаєш ти, що все можливо
В твій день народження!

Хай здійсняється безліч мрій,
І щастить у житті не раз! -
Зичать друзі усі твої
В цей шалений святковий час!
І лунає веселий спів,
І у тебе в душі весна,
Скільки квітів і теплих слів,
Що закрутиться голова!

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9454383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9454383','День народження','Ось настав цей святковий день,
Ти вітання скоріш приймай!
Щирих друзів, своїх гостей,
Ти на свято усіх скликай!
І нехай веселяться всі,
Хай зігріє тебе любов!
Поздоровлення від душі
Лиш для тебе лунають знов!

Приспів:
Цей день щасливий,
Він для тебе особливий!
Вір у те, що все можливо
В твій день народження!
Цей день щасливий
Ми відсвяткуємо бурхливо!
Знаєш ти, що все можливо
В твій день народження!

Хай здійсняється безліч мрій,
І щастить у житті не раз! -
Зичать друзі усі твої
В цей шалений святковий час!
І лунає веселий спів,
І у тебе в душі весна,
Скільки квітів і теплих слів,
Що закрутиться голова!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9454383_l1','pisniua_9454383','YouTube','https://www.youtube.com/watch?v=oCUhmpcNzSA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9446786';
DELETE FROM song_versions WHERE song_id = 'pisniua_9446786';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9446786';
DELETE FROM songs WHERE id = 'pisniua_9446786';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9446786','Паляниця','Музика: Олег Винник Слова: KATERYNA','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Падав безжалісно Град,
Била блискавиця,
Били російських солдат
Прямо на границі!
Хай ці фашисти ідуть
На*ер з України!
Будем мочити їх тут!
З нами Джавеліни!

Мами російськтих солдат,   |
Вам спиться чи не спиться? |
Доки тут ваші сини         |
Вчать слово "Паляниця!"    |
Вірили, що за три дні      |
Візьмуть вони Київ,        |
Але дізнались всю міць     |
Нашої країни!              | (2)','[''pisni.org.ua'', ''cat:viyskovi'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9446786'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9446786','Паляниця','Падав безжалісно Град,
Била блискавиця,
Били російських солдат
Прямо на границі!
Хай ці фашисти ідуть
На*ер з України!
Будем мочити їх тут!
З нами Джавеліни!

Мами російськтих солдат,   |
Вам спиться чи не спиться? |
Доки тут ваші сини         |
Вчать слово "Паляниця!"    |
Вірили, що за три дні      |
Візьмуть вони Київ,        |
Але дізнались всю міць     |
Нашої країни!              | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9446786_l1','pisniua_9446786','YouTube','https://www.youtube.com/watch?v=mGGn7DeSE4Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9447384';
DELETE FROM song_versions WHERE song_id = 'pisniua_9447384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9447384';
DELETE FROM songs WHERE id = 'pisniua_9447384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9447384','Великодні дзвони',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Дзвонять дзвони величаво,
Радості багато,
Бо прийшов до нас Великдень - |
Наймиліше свято!              | (2)

На майдані, біля храму
Кошики з пасками.
У них свічі пломеніють        |
Ясними вогнями.               | (2)

Дзвонять дзвони урочисто,
Отці добро святять.
Христос Воскрес! Тож радіймо
Великоднім святам!
Христос Воскрес! Тож радіймо
Цим великим святам!','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:voskresni'', ''Церковні пісні'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9447384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9447384','Великодні дзвони','Дзвонять дзвони величаво,
Радості багато,
Бо прийшов до нас Великдень - |
Наймиліше свято!              | (2)

На майдані, біля храму
Кошики з пасками.
У них свічі пломеніють        |
Ясними вогнями.               | (2)

Дзвонять дзвони урочисто,
Отці добро святять.
Христос Воскрес! Тож радіймо
Великоднім святам!
Христос Воскрес! Тож радіймо
Цим великим святам!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9447384_l1','pisniua_9447384','YouTube','https://www.youtube.com/watch?v=zeU19lgZyhE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9454989';
DELETE FROM song_versions WHERE song_id = 'pisniua_9454989';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9454989';
DELETE FROM songs WHERE id = 'pisniua_9454989';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9454989','У матері над хатою','Музика: Андрій Грановський Слова: Валерій Ковтуненко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У матері над хатою лелеки цокотять...
У матері над хатою два лебеді летять...
У матері над хатою пливе весна, весна...       |
У матері над хатою, а мати все одна...         | (2)

А мати жде, надіється, що в ріднії краї
Повернуться, повернуться ті дітоньки її...
Накрила стіл під грушею, заслала рушники,      |
На них дрібненько падають квітневі пелюстки... | (2)

Та дітоньки, вже виросли, покинули свій дім,
А матінка лиш молиться, прохая щастя всім!..
І сивина закралася до неї на виски,            |
Накрила білим інеєм травневі пелюстки...       | (2)

У матері над хатою молитви чуть слова,
Вона молитись буде ще поки є жива!..
Молитва матері завжди відчутна на душі,        |
На серці не згасає ні в день, ні у ночі!..     | (2)

Пора прийшла, сніг падає, надворі вже зима,
А в хаті тій нетопленій вже матері нема...
Лише в саду під грушею лишились навіки         |
Снігами припорошені квітчасті рушники...       | (2)','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:pro-batkiv'', ''cat:pro-ditey'', ''Пісні з ностальгічними мотивами'', ''Пісні про любов до батьків'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9454989'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9454989','У матері над хатою','У матері над хатою лелеки цокотять...
У матері над хатою два лебеді летять...
У матері над хатою пливе весна, весна...       |
У матері над хатою, а мати все одна...         | (2)

А мати жде, надіється, що в ріднії краї
Повернуться, повернуться ті дітоньки її...
Накрила стіл під грушею, заслала рушники,      |
На них дрібненько падають квітневі пелюстки... | (2)

Та дітоньки, вже виросли, покинули свій дім,
А матінка лиш молиться, прохая щастя всім!..
І сивина закралася до неї на виски,            |
Накрила білим інеєм травневі пелюстки...       | (2)

У матері над хатою молитви чуть слова,
Вона молитись буде ще поки є жива!..
Молитва матері завжди відчутна на душі,        |
На серці не згасає ні в день, ні у ночі!..     | (2)

Пора прийшла, сніг падає, надворі вже зима,
А в хаті тій нетопленій вже матері нема...
Лише в саду під грушею лишились навіки         |
Снігами припорошені квітчасті рушники...       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9454989_l1','pisniua_9454989','YouTube','https://www.youtube.com/watch?v=5es3senbCco','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9446282';
DELETE FROM song_versions WHERE song_id = 'pisniua_9446282';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9446282';
DELETE FROM songs WHERE id = 'pisniua_9446282';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9446282','Розстріляна весна','(Буча). Музика: Ірина Федишин Слова: о. Петро Половко. Виконує: Ірина Федишин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Здригнувся світ, це біль пекуча,
Мов на хресті розп''ята Буча,
Немає сонця, тільки ночі,
Нема життя, закриті очі...
Нема весни, її спалили,
Ні це не сни, їх взяли й вбили,
Бо їх вина, що українці,
Це 41-ший, фашисти, німці...

Приспів:
Розстріляна весна...    |
Розстріляні мрії...     |
І стогне від болю земля |
В моїй Україні...       | (2)

До Бога хочеться кричати,
І битись в груди, не мовчати,
Але і Ти був на хресті,
Зв''язали руки теж Тобі...
Сміялись, били і плювали,
І одіж твою роздирали,
Хоч мав Ти силу всю могучу,
Згадай, Ісусе, нашу Бучу!..
Поглянь на свіжі ще могили,
Одне прошу, подай нам сили,
Вже не питаюся, чому?..
Лиш зупиги оцю війну!..

Приспів.

Пробач, до зла ми стали спішні,
І визнаєм, що ми є грішні...
Помилуй, Боже, ще хоч раз,
Помилуй нас!.. Помилуй нас!..
Здригнувся світ, що кров текуча,
Побачив світ, розп''ята Буча,
Весна розстріляна і мрія,
Побачив світ, яка росія...

Приспів.

В моїй Україні...','[''pisni.org.ua'', ''cat:christian'', ''cat:devoted'', ''cat:viyskovi'', ''Пісні на християнську тематику'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9446282'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9446282','Розстріляна весна','Здригнувся світ, це біль пекуча,
Мов на хресті розп''ята Буча,
Немає сонця, тільки ночі,
Нема життя, закриті очі...
Нема весни, її спалили,
Ні це не сни, їх взяли й вбили,
Бо їх вина, що українці,
Це 41-ший, фашисти, німці...

Приспів:
Розстріляна весна...    |
Розстріляні мрії...     |
І стогне від болю земля |
В моїй Україні...       | (2)

До Бога хочеться кричати,
І битись в груди, не мовчати,
Але і Ти був на хресті,
Зв''язали руки теж Тобі...
Сміялись, били і плювали,
І одіж твою роздирали,
Хоч мав Ти силу всю могучу,
Згадай, Ісусе, нашу Бучу!..
Поглянь на свіжі ще могили,
Одне прошу, подай нам сили,
Вже не питаюся, чому?..
Лиш зупиги оцю війну!..

Приспів.

Пробач, до зла ми стали спішні,
І визнаєм, що ми є грішні...
Помилуй, Боже, ще хоч раз,
Помилуй нас!.. Помилуй нас!..
Здригнувся світ, що кров текуча,
Побачив світ, розп''ята Буча,
Весна розстріляна і мрія,
Побачив світ, яка росія...

Приспів.

В моїй Україні...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9446282_l1','pisniua_9446282','YouTube','https://www.youtube.com/watch?v=42m6YNW5XAQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9446282_l2','pisniua_9446282','YouTube','https://www.youtube.com/watch?v=PWCkvs_dokc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9455487';
DELETE FROM song_versions WHERE song_id = 'pisniua_9455487';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9455487';
DELETE FROM songs WHERE id = 'pisniua_9455487';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9455487','Повернись живим!','Музика: Марія Бурмака Слова: Марія Бурмака. Виконує: Марія Бурмака','uk','ukraine_1991',NULL,NULL,'аудіозапис','Повернись живим - це молитва і заклинання всіх, хто любить. Вночі і вдень, щохвилини і щосекунди. На війні немає атеїстів, і коли навіть вже надії немає – любов, єдине що береже, це і є той самий Ангел Охоронець!','Де моя душа -
Там ідуть бої,
Ми не віддамо
Рідної землі!
Де моя земля -
Серце моє там,
Я війні тебе,
Милий, не віддам!

Приспів:
Повернись живим! -
Я тебе молю!..
Знає тільки Бог,
Як тебе люблю!
Там, де ти тепер,
Лиш війна і дим,
Але я молю:
Повернись живим!

Плачуть голоси
Рідних і близьких,
По світах війна
Розкидала їх...
Розпинають нас,
Але ми стоїм!
Тільки я прошу:
Повернись живим!

Приспів.

Україна вся,
Як один кулак,
І важливий лиш
Перемоги знак!
Хай тебе в бою
На передовій
Ангел захистить,
Огорне крильми!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9455487'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9455487','Повернись живим!','Де моя душа -
Там ідуть бої,
Ми не віддамо
Рідної землі!
Де моя земля -
Серце моє там,
Я війні тебе,
Милий, не віддам!

Приспів:
Повернись живим! -
Я тебе молю!..
Знає тільки Бог,
Як тебе люблю!
Там, де ти тепер,
Лиш війна і дим,
Але я молю:
Повернись живим!

Плачуть голоси
Рідних і близьких,
По світах війна
Розкидала їх...
Розпинають нас,
Але ми стоїм!
Тільки я прошу:
Повернись живим!

Приспів.

Україна вся,
Як один кулак,
І важливий лиш
Перемоги знак!
Хай тебе в бою
На передовій
Ангел захистить,
Огорне крильми!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9455487_l1','pisniua_9455487','YouTube','https://www.youtube.com/watch?v=RdbiipY-eJA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9455487_l2','pisniua_9455487','YouTube','https://www.youtube.com/watch?v=YV2fiw5Eiac','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_944888';
DELETE FROM song_versions WHERE song_id = 'pisniua_944888';
DELETE FROM songs_fts WHERE song_id = 'pisniua_944888';
DELETE FROM songs WHERE id = 'pisniua_944888';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_944888','Дивлюсь в твої карі очі','(Карі очі). Музика: Роман Бурлак Слова: Роман Бурлак. Виконує: Роман Бурлак','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Я знаю як то сталось,
на те є Всевишнього воля,
що у цьому світі ми зустрілися з тобою.
І відколи ми знайомі, над тим не думав я ніколи.
Але ж воно насправді так і є -
мені Бог подарував тебе.

Дивлюсь в твої карі очі, а в їх глибині -
О, дай Боже утопитись як в гірській воді.
І так любо посміхаються твої уста,
і у серці зазвучала ніжності струна.

Я не знаю що радість, а що - гріх.
Та щастя в світі не для всіх.
І я несу свій дар в життя.
Ти - моя, лише моя.
Завжди.
З тобою поряд ідем
І свою чашу ми до дна доп''єм.
Якщо кохаєм - то значить ми живем.

Дивлюсь в твої карі очі...','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_944888'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_944888','Дивлюсь в твої карі очі','Я знаю як то сталось,
на те є Всевишнього воля,
що у цьому світі ми зустрілися з тобою.
І відколи ми знайомі, над тим не думав я ніколи.
Але ж воно насправді так і є -
мені Бог подарував тебе.

Дивлюсь в твої карі очі, а в їх глибині -
О, дай Боже утопитись як в гірській воді.
І так любо посміхаються твої уста,
і у серці зазвучала ніжності струна.

Я не знаю що радість, а що - гріх.
Та щастя в світі не для всіх.
І я несу свій дар в життя.
Ти - моя, лише моя.
Завжди.
З тобою поряд ідем
І свою чашу ми до дна доп''єм.
Якщо кохаєм - то значить ми живем.

Дивлюсь в твої карі очі...');
DELETE FROM song_links WHERE song_id = 'pisniua_945484';
DELETE FROM song_versions WHERE song_id = 'pisniua_945484';
DELETE FROM songs_fts WHERE song_id = 'pisniua_945484';
DELETE FROM songs WHERE id = 'pisniua_945484';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_945484','Ревуть, стогнуть гори-хвилі','Музика: Марко Кропивницький Слова: Марко Кропивницький. Виконує: Хор "Чумаки"','uk','ukraine_1991',NULL,'1994','1. "Пісні боротьби та волі", упор. О. Міньківський, "Мистецтво", К., 1967. 2. Триліс В.','Пісня з вистави Марка Кропивницького "Невольник" (за Т. Шевченком). Дослідники вважають М. Кропивницького автором слів і мелодії, проте достовірної інформації про авторство, як і про найперший варіант пісні, немає. За загальними поетичними та мелодійними ознаками пісня сприймається як народна. Виконувалась чи не кожним чоловічим хором в Україні. З 1994 року - в постійному репертуарі чоловічого народного хору "Чумаки" п/о В. Триліса (м. Київ).','Ревуть, стогнуть гори-хвилі
В синесенькім морі,
Плачуть, тужать козаченьки  |
В турецькій неволі.         |(2)

Вже два роки у кайданах
Терпнуть наші руки.
За що, Боже милосердний,    |
Нам послав ці муки?         |(2)

Підборкали яничари
Орлят України,
Підборкали та й кинули      |
Живих в домовину.           |(2)

Де ж ви, славні запорожці,
Сини вольной волі?
Чом не йдете визволяти      |
З важкої неволі?            |(2)','[''pisni.org.ua'', ''cat:istorychni'', ''cat:kozacki'', ''Історичні пісні'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_945484'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_945484','Ревуть, стогнуть гори-хвилі','Ревуть, стогнуть гори-хвилі
В синесенькім морі,
Плачуть, тужать козаченьки  |
В турецькій неволі.         |(2)

Вже два роки у кайданах
Терпнуть наші руки.
За що, Боже милосердний,    |
Нам послав ці муки?         |(2)

Підборкали яничари
Орлят України,
Підборкали та й кинули      |
Живих в домовину.           |(2)

Де ж ви, славні запорожці,
Сини вольной волі?
Чом не йдете визволяти      |
З важкої неволі?            |(2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_945484_l1','pisniua_945484','YouTube','https://www.youtube.com/watch?v=tg2VvfKpQr8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_945484_l2','pisniua_945484','YouTube','https://www.youtube.com/watch?v=iYQnj_SY3HE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_945484_l3','pisniua_945484','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_9449585';
DELETE FROM song_versions WHERE song_id = 'pisniua_9449585';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9449585';
DELETE FROM songs WHERE id = 'pisniua_9449585';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9449585','Ой, добраніч, широкеє поле',NULL,'uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой добраніч, широкеє поле,
Жито ядренеє!
Добраніч, на здоров''я,
Жнії молодії, серпи золотії!

Приходьте завтра ранесенько,
Як солнійко зійде, росиця опаде,
Та приносьте по бохону хліба,
По білому сиру.

Вже солнійко зійшло, росиця опала,
А мої жнійки не бували.
Чи повтомилися, чи поморилися,
Чи на мене, нивку, забулися?

Ми не позморилися, не повтомилися,
І на тебе, нивку, не забувалися!','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9449585'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9449585','Ой, добраніч, широкеє поле','Ой добраніч, широкеє поле,
Жито ядренеє!
Добраніч, на здоров''я,
Жнії молодії, серпи золотії!

Приходьте завтра ранесенько,
Як солнійко зійде, росиця опаде,
Та приносьте по бохону хліба,
По білому сиру.

Вже солнійко зійшло, росиця опала,
А мої жнійки не бували.
Чи повтомилися, чи поморилися,
Чи на мене, нивку, забулися?

Ми не позморилися, не повтомилися,
І на тебе, нивку, не забувалися!');
DELETE FROM song_links WHERE song_id = 'pisniua_9454580';
DELETE FROM song_versions WHERE song_id = 'pisniua_9454580';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9454580';
DELETE FROM songs WHERE id = 'pisniua_9454580';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9454580','До війни','Музика: Тоні Браско Слова: Тоні Браско','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
За крок від кохання і до війни
Ми стількі не бачились від тепер
Одна із так бажанних мною мрій,
Лише цілувати тебе!
Кохати тебе більше, ніж до війни,
Шукаючи репостом серед людей!
Навіщо ці крила мені, скажи?
Навіщо вони, коли немає тебе?

У кожну мить та кожен день
На самоті... Це саме те,
Щоб згадувати колір твоїх очей
До болі в скронях та й запаморочень...
Поки лунають постріли і все в вогні,
Я не маю ім''я, лише позивний.
Двадцять четвертого лютого вранці ми
Навчились цінувати з тобою кожну мить!..
Знаю твоє серце - це мій приют,
Тепер лінія життя - це лінія вогню.
Коли скінчиться все, прошу, мені подаруй
У парку Горького солодкий поцілунок!
Життя нове, країна мрій,
Це буде скоро, тільки це зрозумій!
Ми зустрінемось влітку у Харкові,
І в Одесу поїдемо восени!..

Приспів.

Мій рідний Харків, потерпи ще трішки!
Знаю, тобі важко лишитись колишнім...
Зацвітуть Шевченкові сади та вишні
І ми від Дарвіна до Площі пішки.
Сховавшись від дощу під улюблену арку,
Потім за руку від Сумської до парку,
Чи, зголоднівши, по Культури до Маку
Не боючись гуляти з ночі до ранку!..
Тільки сонце сіятиме кожен день,
Що до Саржиного яру знову нас веде,
А навкруги замість сліз посмішки дітей,
Ми обіцяємо, що відбудуємо тебе!
Ми о дев''ятій, помовчавши хвилину,
Згадаєм хлопців, захищавших країну!
Усі разом посидимо біля Кофеїну,
Тому що далі знаєш, Все буде Україна!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9454580'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9454580','До війни','Приспів:
За крок від кохання і до війни
Ми стількі не бачились від тепер
Одна із так бажанних мною мрій,
Лише цілувати тебе!
Кохати тебе більше, ніж до війни,
Шукаючи репостом серед людей!
Навіщо ці крила мені, скажи?
Навіщо вони, коли немає тебе?

У кожну мить та кожен день
На самоті... Це саме те,
Щоб згадувати колір твоїх очей
До болі в скронях та й запаморочень...
Поки лунають постріли і все в вогні,
Я не маю ім''я, лише позивний.
Двадцять четвертого лютого вранці ми
Навчились цінувати з тобою кожну мить!..
Знаю твоє серце - це мій приют,
Тепер лінія життя - це лінія вогню.
Коли скінчиться все, прошу, мені подаруй
У парку Горького солодкий поцілунок!
Життя нове, країна мрій,
Це буде скоро, тільки це зрозумій!
Ми зустрінемось влітку у Харкові,
І в Одесу поїдемо восени!..

Приспів.

Мій рідний Харків, потерпи ще трішки!
Знаю, тобі важко лишитись колишнім...
Зацвітуть Шевченкові сади та вишні
І ми від Дарвіна до Площі пішки.
Сховавшись від дощу під улюблену арку,
Потім за руку від Сумської до парку,
Чи, зголоднівши, по Культури до Маку
Не боючись гуляти з ночі до ранку!..
Тільки сонце сіятиме кожен день,
Що до Саржиного яру знову нас веде,
А навкруги замість сліз посмішки дітей,
Ми обіцяємо, що відбудуємо тебе!
Ми о дев''ятій, помовчавши хвилину,
Згадаєм хлопців, захищавших країну!
Усі разом посидимо біля Кофеїну,
Тому що далі знаєш, Все буде Україна!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9454580_l1','pisniua_9454580','YouTube','https://www.youtube.com/watch?v=733a9K291kY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9460383';
DELETE FROM song_versions WHERE song_id = 'pisniua_9460383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9460383';
DELETE FROM songs WHERE id = 'pisniua_9460383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9460383','Рідна','Музика: Макс Бурла Слова: Макс Бурла','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ай, пара з землі - пала чорнозем,
Козак на коні із іржавим мечем
На жовто блакитному фоні розсікає
Проміні сонця, що світять на рідне
Замучене, прямо до корню обвите
Почуттям боргу за свою Батьківщину,
За свою родину до смерті
В Києві чи на Волині...

Сонця нема, та ти сумна,
Сльози та сум біля вікна...
Милого не видно через туман,
Молитвами в слід і по вітрам...
В колодці зазеленіла вода,
Лелеки полетіли від суму на даль...
Чекати рідне дома чи медаль,
Ватман вицвів і засох пензаль...

Зібрати в кулак всю ту міць України,
Забрати своє, нехай навіть руїни,
Пройшовши по кісткам братів і до нині
Незламні, незабуті, навіть, в домовині.
А ви, орки, що як далі?
Із самого початку видно, що у фіналі
Червоним шатром для вас кінчиться
Акт і ми підем далі!

Рідна, рідна мова моя!
Рідна, рідна воля моя!
Лови, лови колорит!
Рідне слово, рідний ритм!
Видно, видно моє поле,
З вікна в Криму моє море!
Видно кораблі ідуть -
Покажем їм путь, ей!

Уже зав''явші вуха від постійного гулу,
Напружені руки від злості й задуло
Попелом моє подвір''я, забули,
Що таке спокій, щасливе минуле,
Щасливе майбутнє і правда за нами!
Зареве Дніпро і кручі з містами,
Скаже Путін на площі останні слова,
І буде забитий камнями!..

І розірвавши прям до атома
Майбутнє десь на два тома,
Грози нема, нема грома,
Не мочуть ливні прапора,
Але із смогу йде війна...
На плитах точуть імена,
Свободу топче сатана,
Доки земля заплакана...

Мова моя!.. Воля моя!..
Колорит... Моє поле!..
Моє море!.. Покажем їм путь!..
Рідна, рідна мова моя!
Рідна, рідна воля моя!
Лови, лови колорит!
Рідне слово, рідний ритм!
Видно, видно моє поле,
З вікна в Криму моє море!
Видно кораблі ідуть -
Покажем їм путь, ей!','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9460383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9460383','Рідна','Ай, пара з землі - пала чорнозем,
Козак на коні із іржавим мечем
На жовто блакитному фоні розсікає
Проміні сонця, що світять на рідне
Замучене, прямо до корню обвите
Почуттям боргу за свою Батьківщину,
За свою родину до смерті
В Києві чи на Волині...

Сонця нема, та ти сумна,
Сльози та сум біля вікна...
Милого не видно через туман,
Молитвами в слід і по вітрам...
В колодці зазеленіла вода,
Лелеки полетіли від суму на даль...
Чекати рідне дома чи медаль,
Ватман вицвів і засох пензаль...

Зібрати в кулак всю ту міць України,
Забрати своє, нехай навіть руїни,
Пройшовши по кісткам братів і до нині
Незламні, незабуті, навіть, в домовині.
А ви, орки, що як далі?
Із самого початку видно, що у фіналі
Червоним шатром для вас кінчиться
Акт і ми підем далі!

Рідна, рідна мова моя!
Рідна, рідна воля моя!
Лови, лови колорит!
Рідне слово, рідний ритм!
Видно, видно моє поле,
З вікна в Криму моє море!
Видно кораблі ідуть -
Покажем їм путь, ей!

Уже зав''явші вуха від постійного гулу,
Напружені руки від злості й задуло
Попелом моє подвір''я, забули,
Що таке спокій, щасливе минуле,
Щасливе майбутнє і правда за нами!
Зареве Дніпро і кручі з містами,
Скаже Путін на площі останні слова,
І буде забитий камнями!..

І розірвавши прям до атома
Майбутнє десь на два тома,
Грози нема, нема грома,
Не мочуть ливні прапора,
Але із смогу йде війна...
На плитах точуть імена,
Свободу топче сатана,
Доки земля заплакана...

Мова моя!.. Воля моя!..
Колорит... Моє поле!..
Моє море!.. Покажем їм путь!..
Рідна, рідна мова моя!
Рідна, рідна воля моя!
Лови, лови колорит!
Рідне слово, рідний ритм!
Видно, видно моє поле,
З вікна в Криму моє море!
Видно кораблі ідуть -
Покажем їм путь, ей!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9460383_l1','pisniua_9460383','YouTube','https://www.youtube.com/watch?v=gjmTpoYOieY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9457383';
DELETE FROM song_versions WHERE song_id = 'pisniua_9457383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9457383';
DELETE FROM songs WHERE id = 'pisniua_9457383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9457383','Маємо жити','Музика: Люся Кава Слова: Люся Кава. Виконує: Люся Кава','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Нам дає силу мати-земля,
Наше дитинство, наша сім''я!
Вчили батьки з малечку літ:
Любити людей, любити весь світ!
Любити країну, любити своє!
Народ України, це наше святе!
Ніде не знайти краще землі,
Знаю це я, знаєш це ти!

Приспів:
Маємо жити!
Кохати! Любити!
Витворяти! Творити
На своїй землі!
Маємо жити!
Кохати! Любити,
Щоб росли наші діти
На своїй землі!
Маємо жити, Ма! |
Маємо жити!     |
Маємо жити      |
На своїй землі! | (2)

Янголи наші з нами завжди,
Нам дають віру далі іти!
Ніколи ніхто не завадить мені,
Вільно живу на своїй я землі!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9457383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9457383','Маємо жити','Нам дає силу мати-земля,
Наше дитинство, наша сім''я!
Вчили батьки з малечку літ:
Любити людей, любити весь світ!
Любити країну, любити своє!
Народ України, це наше святе!
Ніде не знайти краще землі,
Знаю це я, знаєш це ти!

Приспів:
Маємо жити!
Кохати! Любити!
Витворяти! Творити
На своїй землі!
Маємо жити!
Кохати! Любити,
Щоб росли наші діти
На своїй землі!
Маємо жити, Ма! |
Маємо жити!     |
Маємо жити      |
На своїй землі! | (2)

Янголи наші з нами завжди,
Нам дають віру далі іти!
Ніколи ніхто не завадить мені,
Вільно живу на своїй я землі!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9457383_l1','pisniua_9457383','YouTube','https://www.youtube.com/watch?v=D9GvuzzuZ_I','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9459982';
DELETE FROM song_versions WHERE song_id = 'pisniua_9459982';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9459982';
DELETE FROM songs WHERE id = 'pisniua_9459982';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9459982','КоляГаля','Музика: Геля Зозуля Слова: Геля Зозуля','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Коля! Коля!
Коля, така в тебе доля...

Коля каже: Серце коле,
Галю, йди, поможи!
Галя Колі не поможе,
Хоч, шо хоч їй кажи!..
Вона не хоче, вона не може,
Йому лиш Бог тепер поможе!
Вона не хоче, вона не буде,
Вона про нього геть забуде!

Галю, мила, ну згадай же,
Як ми разом були!
Галя каже: Не згадаю!
Йди, гуляй й не тужи!
А я не помню, а я забула,
А може того і не було...
А я не помню, а то не я,
То гірка до денька моя...

Їх звела гіркая доля
І ще капля алкоголя.
Але Коля ще не знає,
Галя ніц не пам''ятає,
Не пам''ятає...
І не згадає, вона забула,
Бо того всього і не було!
Вона забула, то не вона,
І то вже не її вина!

Вона не хоче, вона не може,
Йому лиш Бог тепер поможе!
Вона не хоче, вона не буде,
Вона про нього геть забуде!
І не згадає, вона забула,
Бо того всього і не було!
Вона забула, то не вона,
І то вже не її вина!
Вина випила вона...
Коля, така в тебе доля!

Галя колі не поможе,
Бо тепер вона не може,
Бо тепер немає сили,
Що б у неї не просили,
Навіть, якщо Колі коле!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9459982'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9459982','КоляГаля','Коля! Коля!
Коля, така в тебе доля...

Коля каже: Серце коле,
Галю, йди, поможи!
Галя Колі не поможе,
Хоч, шо хоч їй кажи!..
Вона не хоче, вона не може,
Йому лиш Бог тепер поможе!
Вона не хоче, вона не буде,
Вона про нього геть забуде!

Галю, мила, ну згадай же,
Як ми разом були!
Галя каже: Не згадаю!
Йди, гуляй й не тужи!
А я не помню, а я забула,
А може того і не було...
А я не помню, а то не я,
То гірка до денька моя...

Їх звела гіркая доля
І ще капля алкоголя.
Але Коля ще не знає,
Галя ніц не пам''ятає,
Не пам''ятає...
І не згадає, вона забула,
Бо того всього і не було!
Вона забула, то не вона,
І то вже не її вина!

Вона не хоче, вона не може,
Йому лиш Бог тепер поможе!
Вона не хоче, вона не буде,
Вона про нього геть забуде!
І не згадає, вона забула,
Бо того всього і не було!
Вона забула, то не вона,
І то вже не її вина!
Вина випила вона...
Коля, така в тебе доля!

Галя колі не поможе,
Бо тепер вона не може,
Бо тепер немає сили,
Що б у неї не просили,
Навіть, якщо Колі коле!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9459982_l1','pisniua_9459982','YouTube','https://www.youtube.com/watch?v=aNP0k4WOjhE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9454686';
DELETE FROM song_versions WHERE song_id = 'pisniua_9454686';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9454686';
DELETE FROM songs WHERE id = 'pisniua_9454686';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9454686','Синочку, уцілій!','Музика: Валентина Шевченко Слова: Валентина Шевченко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Читаю твій лист і в рідних буквах
Бачу твою любов!.. Стаю на коліна
І молюсь Богородиці знов і знов!..
Дивлюсь на світлину, і тихо сльозу утираю
І серцем своїм від кулі тебе закриваю!..

Приспів:
Синочку, синку рідний мій,
Тебе благаю, уцілій!
Відважним, гідним будь, моя дитино!
Бо ти не мій лиш син, а й України!

Вже літо прийшло, троянди розквітли
У ріднім дворі, лелеки курличуть,
Співа соловейко на ранній зорі,
А ти десь далеко у бронижилеті і берцях,
Але щосекунди ти вдома, ти в маминім серці!..

Приспів.

Для мене - дитя, а для України
Ти - мужній солдат! Прошу я у Бога,
Нехай обмине тебе клятий град!..
Мій красень, мій син
Пішов ти свій рідний край захищати!..
Прошу повернись,
Тобі іще ж жити і кохати!..

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:pro-ditey'', ''Пісні російсько-української війни та АТО'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9454686'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9454686','Синочку, уцілій!','Читаю твій лист і в рідних буквах
Бачу твою любов!.. Стаю на коліна
І молюсь Богородиці знов і знов!..
Дивлюсь на світлину, і тихо сльозу утираю
І серцем своїм від кулі тебе закриваю!..

Приспів:
Синочку, синку рідний мій,
Тебе благаю, уцілій!
Відважним, гідним будь, моя дитино!
Бо ти не мій лиш син, а й України!

Вже літо прийшло, троянди розквітли
У ріднім дворі, лелеки курличуть,
Співа соловейко на ранній зорі,
А ти десь далеко у бронижилеті і берцях,
Але щосекунди ти вдома, ти в маминім серці!..

Приспів.

Для мене - дитя, а для України
Ти - мужній солдат! Прошу я у Бога,
Нехай обмине тебе клятий град!..
Мій красень, мій син
Пішов ти свій рідний край захищати!..
Прошу повернись,
Тобі іще ж жити і кохати!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9454686_l1','pisniua_9454686','YouTube','https://www.youtube.com/watch?v=jK6IZM514iU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_94580';
DELETE FROM song_versions WHERE song_id = 'pisniua_94580';
DELETE FROM songs_fts WHERE song_id = 'pisniua_94580';
DELETE FROM songs WHERE id = 'pisniua_94580';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_94580','Сумний святий вечір','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,'*Тут можливі й інші варіанти тексту: - "В сорок першім році" - "В сорок сьомім році"','Сумний святий вечір
В сорок шостім році.*
По всій нашій Україні
Плач на кожнім кроці.

Сіли до вечері
Мати з діточками
Замість мали вечеряти
Облились сльозами.

"Мамо де наш тато", -
Діти ся питають.
- Чому з нами не сідають,
- Чом не вечеряють.

"Тата вороги вбили,
Села попалили.
Ті прокляті яничари,
Руїни лишили".

Там далеко, далеко.
В далекій чужині,
Споминають святий вечір
В нашій славній Україні.    Фрагмент аудіо','[''pisni.org.ua'', ''cat:halycki'', ''cat:istorychni'', ''Пісні з Галичини'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_94580'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_94580','Сумний святий вечір','Сумний святий вечір
В сорок шостім році.*
По всій нашій Україні
Плач на кожнім кроці.

Сіли до вечері
Мати з діточками
Замість мали вечеряти
Облились сльозами.

"Мамо де наш тато", -
Діти ся питають.
- Чому з нами не сідають,
- Чом не вечеряють.

"Тата вороги вбили,
Села попалили.
Ті прокляті яничари,
Руїни лишили".

Там далеко, далеко.
В далекій чужині,
Споминають святий вечір
В нашій славній Україні.    Фрагмент аудіо');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_94580_l1','pisniua_94580','YouTube','https://www.youtube.com/watch?v=pc7HolrF_xc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_94580_l2','pisniua_94580','YouTube','https://www.youtube.com/watch?v=HYai7zF1UPA','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_94580_l3','pisniua_94580','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_9456384';
DELETE FROM song_versions WHERE song_id = 'pisniua_9456384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9456384';
DELETE FROM songs WHERE id = 'pisniua_9456384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9456384','Жінка на чужині','Музика: Валентина Шевченко Слова: Валентина Шевченко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Так холодно і порожньо у краї чужім,
Бо небо тут чуже, й не рідна мова...
Щомиті повертається думками в рідний дім,
І чує ніжну пісню колискову!..
Подивиться у небо, де летять журавлі,
Так хочеться із ними полетіти,
Полинути хоча б на мить до рідної землі,
В той дім, де так чекають її діти!..

Приспів:
Жінка на чужині,
Ніби та птаха безкрила,
Бачить вона у сні
Діточок посмішку милу!..
Господа молить вночі,
Щоб дав терпіння й сили!..
Жінка на чужині,
Ніби та птаха безкрила...

Змарніла і утомлена змахне сльозу з очей,
Дитячі фото ніжно поцілує,
Засушену калиноньку пригорне до грудей
І за вкраїнським небом засумує...
І серце заболить, що так невпинно час іде,
В дворі без неї вишні відцвітають...
І звернеться до Бога, щоб простив її за те,
Що діточки без неї підростають...

Приспів.

Речитатив:
Який же не солодкий
І тяжкий хліб чужий,
Де почуття жіночі неважливі...
Багато, що продати і купити
Можна в світі цім,
Але вкраїнську душу неможливо!..

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9456384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9456384','Жінка на чужині','Так холодно і порожньо у краї чужім,
Бо небо тут чуже, й не рідна мова...
Щомиті повертається думками в рідний дім,
І чує ніжну пісню колискову!..
Подивиться у небо, де летять журавлі,
Так хочеться із ними полетіти,
Полинути хоча б на мить до рідної землі,
В той дім, де так чекають її діти!..

Приспів:
Жінка на чужині,
Ніби та птаха безкрила,
Бачить вона у сні
Діточок посмішку милу!..
Господа молить вночі,
Щоб дав терпіння й сили!..
Жінка на чужині,
Ніби та птаха безкрила...

Змарніла і утомлена змахне сльозу з очей,
Дитячі фото ніжно поцілує,
Засушену калиноньку пригорне до грудей
І за вкраїнським небом засумує...
І серце заболить, що так невпинно час іде,
В дворі без неї вишні відцвітають...
І звернеться до Бога, щоб простив її за те,
Що діточки без неї підростають...

Приспів.

Речитатив:
Який же не солодкий
І тяжкий хліб чужий,
Де почуття жіночі неважливі...
Багато, що продати і купити
Можна в світі цім,
Але вкраїнську душу неможливо!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9456384_l1','pisniua_9456384','YouTube','https://www.youtube.com/watch?v=PjdqfG1uNF0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_94686';
DELETE FROM song_versions WHERE song_id = 'pisniua_94686';
DELETE FROM songs_fts WHERE song_id = 'pisniua_94686';
DELETE FROM songs WHERE id = 'pisniua_94686';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_94686','Добрий вечір всім Вам!',NULL,'uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Добрий вечір всім Вам
Хочем побажати!
Чи дозволиш, господарю Заколядувати?

Не лінуйся встати, свічку запалити,
З нами разом в своїм домі
Бога  восхвалити.

Ми прийшли здалека, хочем Вам сказати,
Що Син Божий народився
В Пречистої Мати.

Мати Благодати,  дозволь запитати,
Яким будеш свого Сина
Ім’ям називати?

Пречиста Мати Ісусом назвала
По всій землі Іудейській
Залунала слава.

Йосифу старому дав
Господь звістити
Щоб мати з Ісусом Могла ся іскрити.

На ослі втікала Із Ісусом Мати -
Ірод лютий з своїм військом
Почав їх шукати.

Мати зрадувалась Христу, своєму Сину,-
Лютий Ірод дав зрубати
Найменшу дитину.

З Вифлеєму Діва  в Єгипет втікала,
Свого Сина від Ірода
В пустелі сховала.

Господня Сила Дитя схоронила,
Через Христа душа наша
Спасенною стала.

І ми, господарю,
прийшли поклін дати
Ісусові  і Йосифу, і Пречистій Мати.

І весь мир радіє у Різдво Христове,
Колядує в кожній хаті
І дитя малоє.

Слава Тобі, Боже, за те величество,
Щосьмо діждали видіти
Христове Рождество.

І ми тепер будем Господа просити,
Щоби дав щастя і здоров’я
Во вік віков жити.','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:zakarpatski'', ''Колядки'', ''Закарпатські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_94686'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_94686','Добрий вечір всім Вам!','Добрий вечір всім Вам
Хочем побажати!
Чи дозволиш, господарю Заколядувати?

Не лінуйся встати, свічку запалити,
З нами разом в своїм домі
Бога  восхвалити.

Ми прийшли здалека, хочем Вам сказати,
Що Син Божий народився
В Пречистої Мати.

Мати Благодати,  дозволь запитати,
Яким будеш свого Сина
Ім’ям називати?

Пречиста Мати Ісусом назвала
По всій землі Іудейській
Залунала слава.

Йосифу старому дав
Господь звістити
Щоб мати з Ісусом Могла ся іскрити.

На ослі втікала Із Ісусом Мати -
Ірод лютий з своїм військом
Почав їх шукати.

Мати зрадувалась Христу, своєму Сину,-
Лютий Ірод дав зрубати
Найменшу дитину.

З Вифлеєму Діва  в Єгипет втікала,
Свого Сина від Ірода
В пустелі сховала.

Господня Сила Дитя схоронила,
Через Христа душа наша
Спасенною стала.

І ми, господарю,
прийшли поклін дати
Ісусові  і Йосифу, і Пречистій Мати.

І весь мир радіє у Різдво Христове,
Колядує в кожній хаті
І дитя малоє.

Слава Тобі, Боже, за те величество,
Щосьмо діждали видіти
Христове Рождество.

І ми тепер будем Господа просити,
Щоби дав щастя і здоров’я
Во вік віков жити.');
DELETE FROM song_links WHERE song_id = 'pisniua_9455282';
DELETE FROM song_versions WHERE song_id = 'pisniua_9455282';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9455282';
DELETE FROM songs WHERE id = 'pisniua_9455282';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9455282','Коли мине війна','Музика: Настя Каменських Слова: Настя Каменських','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ой-на... Ой-на...
Ой-на... Ой-на...
Ой, я знаю,
Людям важко...

Я закриваю руками очі,
Я так робила тисячі разів,
Я так відчути тебе знову хочу,
Я чути хочу твій рідний спів!..

Ой-на... Ой-на... Жито зелене...
Ой, не можу жити без тебе!..
Ой, я знаю, знаю сама,
Будеш ти любити мене,
Коли мине війна!..
Воу-воу!.. На-на-на-на!.. |
Будеш ти любити мене,     |
Коли мине війна!..        |
Воу-воу!.. На-на-на-на!.. |
Будеш ти любити мене!..   | (2)

Всюди люди, всі дні і ночі
Тільки шукаю твої карі очі!..
Хочу, щоб ти так пишався
Коханням моїм!.. Ти знай,
Навколо мене люди... Люди...
Сумую без тебе... Де ти?..
Я птахом злітаю у небо,
В обійми, щоб ти пригорнув!
Тихо прошепотів: Я скоро
Повернусь, тільки дочекайся!..

Приспів.','[''pisni.org.ua'', ''cat:viyskovi'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9455282'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9455282','Коли мине війна','Ой-на... Ой-на...
Ой-на... Ой-на...
Ой, я знаю,
Людям важко...

Я закриваю руками очі,
Я так робила тисячі разів,
Я так відчути тебе знову хочу,
Я чути хочу твій рідний спів!..

Ой-на... Ой-на... Жито зелене...
Ой, не можу жити без тебе!..
Ой, я знаю, знаю сама,
Будеш ти любити мене,
Коли мине війна!..
Воу-воу!.. На-на-на-на!.. |
Будеш ти любити мене,     |
Коли мине війна!..        |
Воу-воу!.. На-на-на-на!.. |
Будеш ти любити мене!..   | (2)

Всюди люди, всі дні і ночі
Тільки шукаю твої карі очі!..
Хочу, щоб ти так пишався
Коханням моїм!.. Ти знай,
Навколо мене люди... Люди...
Сумую без тебе... Де ти?..
Я птахом злітаю у небо,
В обійми, щоб ти пригорнув!
Тихо прошепотів: Я скоро
Повернусь, тільки дочекайся!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9455282_l1','pisniua_9455282','YouTube','https://www.youtube.com/watch?v=0D257gaWMPI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9462787';
DELETE FROM song_versions WHERE song_id = 'pisniua_9462787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9462787';
DELETE FROM songs WHERE id = 'pisniua_9462787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9462787','Доньці','Музика: KOLA Слова: Павло Вишебаба. Виконує: Vyshebaba, KOLA','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Тільки не пиши мені про війну,
Розкажи, чи є біля тебе сад,
Чи там повзають равлики по в''юну?
Чи ти чуєш коників і цикад?
І як люди кличуть своїх котів
В тих далеких-далеких від нас краях?
Те, чого найбільше би я хотів,
Щоб не було смутку в твоїх рядках.

Приспів:
Очі, мов той океан, і щоночі
Бачити їх - то є найдорожче!
Хай буде так, щоб кожна донька
Батька-героя свого обняла!
Очі дітей - океан, навіть мовчки
Знають усе, бо вже стали дорослі.
Хай буде так, щоб кожне маля
З батьком-героєм обіймалося!

Чи цвіте там вишня та абрикос?
І якщо подарують тобі букет,
Розкажи, як добре нам тут жилось.
Не кажи, як бігла ти від ракет,
Перш ніж повернутися з чужини,
Запроси в Україну до нас гостей,
Ми покажемо кожному по війні,
Як ми вдячні за спокій своїх дітей.

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:pro-ditey'', ''Пісні російсько-української війни та АТО'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9462787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9462787','Доньці','Тільки не пиши мені про війну,
Розкажи, чи є біля тебе сад,
Чи там повзають равлики по в''юну?
Чи ти чуєш коників і цикад?
І як люди кличуть своїх котів
В тих далеких-далеких від нас краях?
Те, чого найбільше би я хотів,
Щоб не було смутку в твоїх рядках.

Приспів:
Очі, мов той океан, і щоночі
Бачити їх - то є найдорожче!
Хай буде так, щоб кожна донька
Батька-героя свого обняла!
Очі дітей - океан, навіть мовчки
Знають усе, бо вже стали дорослі.
Хай буде так, щоб кожне маля
З батьком-героєм обіймалося!

Чи цвіте там вишня та абрикос?
І якщо подарують тобі букет,
Розкажи, як добре нам тут жилось.
Не кажи, як бігла ти від ракет,
Перш ніж повернутися з чужини,
Запроси в Україну до нас гостей,
Ми покажемо кожному по війні,
Як ми вдячні за спокій своїх дітей.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9462787_l1','pisniua_9462787','YouTube','https://www.youtube.com/watch?v=EVnqSP7aRzk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9456484';
DELETE FROM song_versions WHERE song_id = 'pisniua_9456484';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9456484';
DELETE FROM songs WHERE id = 'pisniua_9456484';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9456484','Згурівській школі-інтернату','Музика: Володимир Проценко Слова: Володимир Проценко. Виконує: Володимир Проценко','uk','ukraine_1991',NULL,'2018','збірка "Диліжанс хрещатої долини" 2018 рік.',NULL,'Згадав далекі дні сирітства,
Братів, сестер і рідну школу...
Як це бентежить, навіть, більше,
Не можу Вам сказати слово...

У Згурівці хати в осаді,
Обгорнуті в сніги пестиві.
Серед вітрів і снігопадів
Наш інтернат сумний і сивий...

У спадщину його лишили,
Для дітвори він був затишним...
Не знав ніколи самотини,
Ми вікували в ньому вічно...

Морозні зими гріли долю
В шкільному, рідному багатті.
Тепер розхристаний до болю,
Малий і трохи тіснуватий...

Роки вернути - недоречно,
Учителів лишилось мало,
Але без всяких заперечень
Вони в думках назавжди з нами...

В дзвінких дитячих переливах,
І досі дбають, як лелеки.
На їх легких і рідних крилах
Ми летимо в життя далеке!..','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9456484'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9456484','Згурівській школі-інтернату','Згадав далекі дні сирітства,
Братів, сестер і рідну школу...
Як це бентежить, навіть, більше,
Не можу Вам сказати слово...

У Згурівці хати в осаді,
Обгорнуті в сніги пестиві.
Серед вітрів і снігопадів
Наш інтернат сумний і сивий...

У спадщину його лишили,
Для дітвори він був затишним...
Не знав ніколи самотини,
Ми вікували в ньому вічно...

Морозні зими гріли долю
В шкільному, рідному багатті.
Тепер розхристаний до болю,
Малий і трохи тіснуватий...

Роки вернути - недоречно,
Учителів лишилось мало,
Але без всяких заперечень
Вони в думках назавжди з нами...

В дзвінких дитячих переливах,
І досі дбають, як лелеки.
На їх легких і рідних крилах
Ми летимо в життя далеке!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9456484_l1','pisniua_9456484','YouTube','https://www.youtube.com/watch?v=9fCE_bTYa5k','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9459181';
DELETE FROM song_versions WHERE song_id = 'pisniua_9459181';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9459181';
DELETE FROM songs WHERE id = 'pisniua_9459181';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9459181','Як ти?','Музика: Віктор Морозов Слова: Катерина Міхаліцина. Виконує: Віктор Морозов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Як ти? - запитуєш.
І нині це наш пароль,
Наша перепустка в "далі"
Хистке й нетривале...

Але осмислене,
Але оспільнене.
Роль цього паролю -
Щоб вужче стискалися лави,
Й так вже ущільнені,
Й так вже до болю міцні...

Там, за цим "Як ти?"
Сховалися діти, як миші,
Або кажанчики
В темних підвалах.
Гучні гаркання градів
І тиша, стократно гучніша...

Майже оглушлива,
Сперта на темінь і страх,
Недолічитись своїх -
Глибший, ніж недожити.
Дім, що хитається,
Дім, що сичить по кутках...

Яблуко... Келих...
Ангелик у цяточку... Квіти
Ще довоєнні книжки
І підбірки пісень,
Сукня, сандалі і все,
На що вистачить літер...

Там, за цим "Як ти?",
Є ранок, а може, і день,
Ще один день, щоб стояти
І слухати вітер...

Як ти? - запитуєш.
І нині це наш пароль...','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9459181'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9459181','Як ти?','Як ти? - запитуєш.
І нині це наш пароль,
Наша перепустка в "далі"
Хистке й нетривале...

Але осмислене,
Але оспільнене.
Роль цього паролю -
Щоб вужче стискалися лави,
Й так вже ущільнені,
Й так вже до болю міцні...

Там, за цим "Як ти?"
Сховалися діти, як миші,
Або кажанчики
В темних підвалах.
Гучні гаркання градів
І тиша, стократно гучніша...

Майже оглушлива,
Сперта на темінь і страх,
Недолічитись своїх -
Глибший, ніж недожити.
Дім, що хитається,
Дім, що сичить по кутках...

Яблуко... Келих...
Ангелик у цяточку... Квіти
Ще довоєнні книжки
І підбірки пісень,
Сукня, сандалі і все,
На що вистачить літер...

Там, за цим "Як ти?",
Є ранок, а може, і день,
Ще один день, щоб стояти
І слухати вітер...

Як ти? - запитуєш.
І нині це наш пароль...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9459181_l1','pisniua_9459181','YouTube','https://www.youtube.com/watch?v=dXcLbuuMSBo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9467487';
DELETE FROM song_versions WHERE song_id = 'pisniua_9467487';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9467487';
DELETE FROM songs WHERE id = 'pisniua_9467487';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9467487','Різдво','Музика: Софія Куценко Слова: Софія Куценко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'А з неба сніг упаде на мою долонь,
Ніхто б не зміг зупинити думок полон,
Бо всі слова візерунками на вікні,
І ця зима щось відкриє тобі й мені...

Приспів:
Нам Різдво несе дива! -
Скажеш ти і скажу я,
Що в душі живуть і в серці
Мрії, зорі й почуття!
Нам Різдво несе дива!
Я скажу тобі сама,
Що зимовий сон здійсниться!
Нам Різдво несе дива!

А сніг летить і сніжинки немов птахи,
Казкова мить пише небу немов листи
Про це Різдво і про нас, про майбудні дні,
Немов в вікно я побачу різдвяні сни!

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9467487'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9467487','Різдво','А з неба сніг упаде на мою долонь,
Ніхто б не зміг зупинити думок полон,
Бо всі слова візерунками на вікні,
І ця зима щось відкриє тобі й мені...

Приспів:
Нам Різдво несе дива! -
Скажеш ти і скажу я,
Що в душі живуть і в серці
Мрії, зорі й почуття!
Нам Різдво несе дива!
Я скажу тобі сама,
Що зимовий сон здійсниться!
Нам Різдво несе дива!

А сніг летить і сніжинки немов птахи,
Казкова мить пише небу немов листи
Про це Різдво і про нас, про майбудні дні,
Немов в вікно я побачу різдвяні сни!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9467487_l1','pisniua_9467487','YouTube','https://www.youtube.com/watch?v=jHZVdNVVrPs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9470487';
DELETE FROM song_versions WHERE song_id = 'pisniua_9470487';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9470487';
DELETE FROM songs WHERE id = 'pisniua_9470487';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9470487','Кайдани','Музика: Максим Бурла, Карим Хушвахтов Слова: Максим Бурла, Карим Хушвахтов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Під теплою ковдрою зустрінем ранок
Десь у Гурзуфі, на пляжі в Криму.
Дивитись на "рускій воєнний корабль"
Втонувший, покинутий, як сироту...
Ржавілий й запльований пам''ятник "русичам",
Від cтиду зігнувший корму з надписом:
"Рускій воєнний корабль, іди-ка ти на х*й!
Слава ЗСУ!"
Денацифікая, спецоперація, утилізація,
В мусор пакет, замість насіння,
В карманах рублі і пару безцінних монет.
Можеш чекати від путіна проводи:
Музика, барабан, гроб і кларнет.
Прошу чекати ще трохи, будь-ласка,
Бо кожному з нас він повинен мінет.
Страх перед смертю виверне
На світ таємне і покаже нутро.
Бабок багато і весь такий козир,
Сходи заплати, щоб не прилетіло.
Прилетить чи ні, загули сирени,
І як казино - чорне "zero"
Вірно підскаже лиш доля,
Або священник і вірне кадило...

Приспів:
Заморили рідну, неньку Україну.              |
Протримайся трохи, доки нечисть досі в тилу! |
Забувайте страхи й кайдани порвіте           |
І вражою злою, кров''ю волю окропіте!         | (2)

Затягнувши рани, протверезів від кошмарів,
Торкнувшись губами до кохання, що було далеко...
Тільки з нами порвала розлука, зараз тихше,
Бур''янами, глибше біль у серці лиш словами...
Зібравши порване намисто, в лодоні кріпко стисну,
Не терпівши злих думок про тих, хто ніс руїни в місто.
Наша свобода й совість чиста!
І тільки українець знає скільки в словах змісту...
А може забудеться і з поколіннями
Буде записане тільки в книжках?..
Дай, Боже, дітям не знати
Що таке бомби, паніка, що таке жах!..
24-го всі зрозуміли
Хто кому близький, хто кому - так.
На дно пішов руській корабль,
Слідом і руський літак...

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9470487'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9470487','Кайдани','Під теплою ковдрою зустрінем ранок
Десь у Гурзуфі, на пляжі в Криму.
Дивитись на "рускій воєнний корабль"
Втонувший, покинутий, як сироту...
Ржавілий й запльований пам''ятник "русичам",
Від cтиду зігнувший корму з надписом:
"Рускій воєнний корабль, іди-ка ти на х*й!
Слава ЗСУ!"
Денацифікая, спецоперація, утилізація,
В мусор пакет, замість насіння,
В карманах рублі і пару безцінних монет.
Можеш чекати від путіна проводи:
Музика, барабан, гроб і кларнет.
Прошу чекати ще трохи, будь-ласка,
Бо кожному з нас він повинен мінет.
Страх перед смертю виверне
На світ таємне і покаже нутро.
Бабок багато і весь такий козир,
Сходи заплати, щоб не прилетіло.
Прилетить чи ні, загули сирени,
І як казино - чорне "zero"
Вірно підскаже лиш доля,
Або священник і вірне кадило...

Приспів:
Заморили рідну, неньку Україну.              |
Протримайся трохи, доки нечисть досі в тилу! |
Забувайте страхи й кайдани порвіте           |
І вражою злою, кров''ю волю окропіте!         | (2)

Затягнувши рани, протверезів від кошмарів,
Торкнувшись губами до кохання, що було далеко...
Тільки з нами порвала розлука, зараз тихше,
Бур''янами, глибше біль у серці лиш словами...
Зібравши порване намисто, в лодоні кріпко стисну,
Не терпівши злих думок про тих, хто ніс руїни в місто.
Наша свобода й совість чиста!
І тільки українець знає скільки в словах змісту...
А може забудеться і з поколіннями
Буде записане тільки в книжках?..
Дай, Боже, дітям не знати
Що таке бомби, паніка, що таке жах!..
24-го всі зрозуміли
Хто кому близький, хто кому - так.
На дно пішов руській корабль,
Слідом і руський літак...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9470487_l1','pisniua_9470487','YouTube','https://www.youtube.com/watch?v=oh7L13PS5IA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9475281';
DELETE FROM song_versions WHERE song_id = 'pisniua_9475281';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9475281';
DELETE FROM songs WHERE id = 'pisniua_9475281';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9475281','Порічка','Музика: YAKTAK, KOLA Слова: YAKTAK, KOLA','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Спека так розкриває сукню білу,
Небо, ніби посилає мені знак,
Зранку все відкриває штору сіру,
Серце твоє б''ється все зі мною в такт...
Де взяла ти очі ці лісові?
Гвинтокрилі метелики в животі
Вилітають, та гріють на холоді,
А ти зі смаком ягоди:

Приспів:
Солодка порічка,        |
Що росте по річках,     |
В твою квіткову стрічку |
Нас заховає нічка!..    | (2)

Мов сніг, тану, загорнувшися тобою,
Не шукаю більше я від долі знак,
Так не буває, але між нами сталось,
Стрімко по річках я бігла і розквітала...
Де ти взяв очі свої глибокі?..
Скрізь мороз, а ти, мов теплий спокій,
Запишу кожні твої слова в щоденник серця я!..

Приспів.

Порічка!.. Порічка!.. Порічка!..
Порічка!.. Порічка!.. Порічка!..
Порічка!.. Порічка!.. Порічка!..
Порічка!.. Ти наче солодка порічка!..

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9475281'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9475281','Порічка','Спека так розкриває сукню білу,
Небо, ніби посилає мені знак,
Зранку все відкриває штору сіру,
Серце твоє б''ється все зі мною в такт...
Де взяла ти очі ці лісові?
Гвинтокрилі метелики в животі
Вилітають, та гріють на холоді,
А ти зі смаком ягоди:

Приспів:
Солодка порічка,        |
Що росте по річках,     |
В твою квіткову стрічку |
Нас заховає нічка!..    | (2)

Мов сніг, тану, загорнувшися тобою,
Не шукаю більше я від долі знак,
Так не буває, але між нами сталось,
Стрімко по річках я бігла і розквітала...
Де ти взяв очі свої глибокі?..
Скрізь мороз, а ти, мов теплий спокій,
Запишу кожні твої слова в щоденник серця я!..

Приспів.

Порічка!.. Порічка!.. Порічка!..
Порічка!.. Порічка!.. Порічка!..
Порічка!.. Порічка!.. Порічка!..
Порічка!.. Ти наче солодка порічка!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9475281_l1','pisniua_9475281','YouTube','https://www.youtube.com/watch?v=88Pt8XIUdFE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9467585';
DELETE FROM song_versions WHERE song_id = 'pisniua_9467585';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9467585';
DELETE FROM songs WHERE id = 'pisniua_9467585';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9467585','Радій, Земля!','Музика: IXTIS_BAND Слова: IXTIS_BAND','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Мирно, тихо люди спочивали,
Раптом хори ангелів святих
Славну нову пісню заспівали,
Що родивсь для світу Божий Син!

Приспів:
Радій, Земля!
Прослав Спасителя Христа!
Божий Син прийшов,
Щоб світ спасти!
І хай в серцях знайдеться
Місце для Христа,
Щоб Він сьогодні
Теж там народивсь!

Пастухи, почувши цю новину,
З радістю пішли у Вифлеєм,
Там лежав у яслах, вкритий сіном,
Цар, Спаситель світу, Божий Син!

Приспів.

Так як мудрецям зоря світила
І вказала шлях їм до Христа,
У цей день Різдва любов''ю й миром
Хай засвітяться людські серця!

Приспів.','[''pisni.org.ua'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9467585'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9467585','Радій, Земля!','Мирно, тихо люди спочивали,
Раптом хори ангелів святих
Славну нову пісню заспівали,
Що родивсь для світу Божий Син!

Приспів:
Радій, Земля!
Прослав Спасителя Христа!
Божий Син прийшов,
Щоб світ спасти!
І хай в серцях знайдеться
Місце для Христа,
Щоб Він сьогодні
Теж там народивсь!

Пастухи, почувши цю новину,
З радістю пішли у Вифлеєм,
Там лежав у яслах, вкритий сіном,
Цар, Спаситель світу, Божий Син!

Приспів.

Так як мудрецям зоря світила
І вказала шлях їм до Христа,
У цей день Різдва любов''ю й миром
Хай засвітяться людські серця!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9467585_l1','pisniua_9467585','YouTube','https://www.youtube.com/watch?v=SGtohf4UZTE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_946281';
DELETE FROM song_versions WHERE song_id = 'pisniua_946281';
DELETE FROM songs_fts WHERE song_id = 'pisniua_946281';
DELETE FROM songs WHERE id = 'pisniua_946281';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_946281','Ангел Божий','Слова: невідомий','uk','ukraine_1991',NULL,NULL,NULL,'Церковна пісня на благовіщення. Записано у Закарпатті.','Ангел Божий вість Марії
З неба приносить.
Благодатная радуйся!
Її голосить.
Зачнеш Сина Діво чиста,
І породиш Спаса Христа
На спасіння всіх!    (2)

Як же станесь та новина
Скажи Гавриле?
Як із мого дівства зродись
Бог Емануїл?
О предивна се новина,
Щоб повила Діва Сина
Мужа невістна. (2)

"Дух святий на Тебе зійде,
Сей Тя осінить,
Непоняте чудес чудо
В Тобі ся сповнить,
І Ти приймеш в своїм лоні
Бога Слова, що в Сіоні
Вічно владієть"!  (2)

Я послушна слуга Божа,
Нехай так буде,
Що звіщаєш, Я приймаю,
Най живуть люди".
І почала Діва Бога
З того радість в небі многа,
І по всій землі. (2)    мелодія  (','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_946281'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_946281','Ангел Божий','Ангел Божий вість Марії
З неба приносить.
Благодатная радуйся!
Її голосить.
Зачнеш Сина Діво чиста,
І породиш Спаса Христа
На спасіння всіх!    (2)

Як же станесь та новина
Скажи Гавриле?
Як із мого дівства зродись
Бог Емануїл?
О предивна се новина,
Щоб повила Діва Сина
Мужа невістна. (2)

"Дух святий на Тебе зійде,
Сей Тя осінить,
Непоняте чудес чудо
В Тобі ся сповнить,
І Ти приймеш в своїм лоні
Бога Слова, що в Сіоні
Вічно владієть"!  (2)

Я послушна слуга Божа,
Нехай так буде,
Що звіщаєш, Я приймаю,
Най живуть люди".
І почала Діва Бога
З того радість в небі многа,
І по всій землі. (2)    мелодія  (');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_946281_l1','pisniua_946281','YouTube','https://www.youtube.com/watch?v=k5i88FC4Vos','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_946889';
DELETE FROM song_versions WHERE song_id = 'pisniua_946889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_946889';
DELETE FROM songs WHERE id = 'pisniua_946889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_946889','В дні прожиті','Музика: Ольга Богомолець Слова: Ліна Костенко. Виконує: Ольга Богомолець, Сестри Тельнюк','uk','ukraine_1991',NULL,NULL,NULL,NULL,'В дні, прожиті печально і просто,
Все було як незайманий сніг.
Темнооким чудесним гостем
Я чекала тебе з доріг.

Забарився, прийшов нескоро.
Марнувала я дні в жалю.
І в недобру для серця пору
Я сказала комусь: - Люблю.

Хтось підносив мене до неба,
Я вдихала його, голубе...
І не мріяла вже про тебе,
Щоби цим не образить тебе.

А буває - спинюсь на місці,
Простягаю руки без слів,
Ніби жду чудесної вісті
З невідомих нікому країв...

Є для серця така покута -
Забувати скоріше зло,
Аніж те, що мусило бути
І чого в житті не було.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_946889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_946889','В дні прожиті','В дні, прожиті печально і просто,
Все було як незайманий сніг.
Темнооким чудесним гостем
Я чекала тебе з доріг.

Забарився, прийшов нескоро.
Марнувала я дні в жалю.
І в недобру для серця пору
Я сказала комусь: - Люблю.

Хтось підносив мене до неба,
Я вдихала його, голубе...
І не мріяла вже про тебе,
Щоби цим не образить тебе.

А буває - спинюсь на місці,
Простягаю руки без слів,
Ніби жду чудесної вісті
З невідомих нікому країв...

Є для серця така покута -
Забувати скоріше зло,
Аніж те, що мусило бути
І чого в житті не було.');
DELETE FROM song_links WHERE song_id = 'pisniua_9479487';
DELETE FROM song_versions WHERE song_id = 'pisniua_9479487';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9479487';
DELETE FROM songs WHERE id = 'pisniua_9479487';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9479487','З Днем народження, мамо!','Музика: Анатолій Розанов Слова: Тетяна Шершова. Виконує: Діти Фрістайла','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Хоч я і вдалині, та не забула, ні
Купити квіти в особливий день.
Не обійму, на жаль, тому в душі печаль,
Не подарую я своїх пісень...
І фото у руках, де блиск в твоїх очах,
Сімнадцять років радісних твоїх.
Вже старша стала я, давно своя сім''я,
Почуй слова ти побажань моїх.

Приспів:
Хай минають роки,
Ми з тобою навіки,
Рідна матінко, єдина моя!
Всі печалі пройдуть,
Тільки ти щаслива будь
В день народження тобі зичу я!

Неначе день жила, закохана була,
І легкою була твоя хода.
Холоднії вітри сипнули сивини
Та ти для мене, мамо, молода.
Мудріший погляд твій та сповнений надій,
Шкода, що час невпинно так летить.
За ласку знов і знов, і за твою любов,
Я вдячна кожен день і кожну мить.

Приспів.

Додому довгий шлях, та все в моїх руках,
Ріднесенька, до тебе я лечу.
До себе притулю, віддам любов свою,
Наплачемось з тобою досхочу.
Тепло і ніжність рук, тремтливий серця стук,
Це почуття насправді неземне.
Пройшла я сто доріг, і ось він, мій поріг.
Твоя молитва зберегла мене!..

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9479487'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9479487','З Днем народження, мамо!','Хоч я і вдалині, та не забула, ні
Купити квіти в особливий день.
Не обійму, на жаль, тому в душі печаль,
Не подарую я своїх пісень...
І фото у руках, де блиск в твоїх очах,
Сімнадцять років радісних твоїх.
Вже старша стала я, давно своя сім''я,
Почуй слова ти побажань моїх.

Приспів:
Хай минають роки,
Ми з тобою навіки,
Рідна матінко, єдина моя!
Всі печалі пройдуть,
Тільки ти щаслива будь
В день народження тобі зичу я!

Неначе день жила, закохана була,
І легкою була твоя хода.
Холоднії вітри сипнули сивини
Та ти для мене, мамо, молода.
Мудріший погляд твій та сповнений надій,
Шкода, що час невпинно так летить.
За ласку знов і знов, і за твою любов,
Я вдячна кожен день і кожну мить.

Приспів.

Додому довгий шлях, та все в моїх руках,
Ріднесенька, до тебе я лечу.
До себе притулю, віддам любов свою,
Наплачемось з тобою досхочу.
Тепло і ніжність рук, тремтливий серця стук,
Це почуття насправді неземне.
Пройшла я сто доріг, і ось він, мій поріг.
Твоя молитва зберегла мене!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9479487_l1','pisniua_9479487','YouTube','https://www.youtube.com/watch?v=6qnmA29-7F4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9463889';
DELETE FROM song_versions WHERE song_id = 'pisniua_9463889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9463889';
DELETE FROM songs WHERE id = 'pisniua_9463889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9463889','Хай нам, брате, пощастить!','Музика: YARMAK Слова: YARMAK. Виконує: YARMAK','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Хай нам, брате, пощастить!
Хай нас небо захистить!
Тризуб, що несу на грудях!

Лютий нас розбудив рано-вранці,
Дикуни вже прорвали терени,
Я стояв серед тих новобранців,
Не моє - підвивати сиренам!..
Доля не питала мене, піду я чи ні,
Я б не зміг дивитися на все вдалечині,
Ця війна підкралася в країну нашу підло,
І мені за честь стояти з воїнами світла!
Вперше я одягаю наш піксель,
Вперше нас всіх шикують у лави,
І я впевнений ще нам на вік цей
Всім дістанеться волі і слави!
І нехай, брате, кулі минають!
Я нам всім лиш одне побажаю:
Все пройти, хай зірки прикривають,
Бо хоробрих і смерть поважає!

Приспів:
Хай нам, брате, пощастить!
Хай нас небо захистить!
Тризуб, що несу на грудях,
То і є моя броня!
Хай нам, брате, пощастить!
Все палає і свистить,
А ми йдемо в бій,
Бо це наш край, наша земля!

Ми ніколи не хилимо гриви!
Ця дорога шліфує героїв!
Нас лякали вже ядерним грибом,
Та тут кожен, як атомна зброя!
Подавай-подавай в кулемет набої,
Призивали пацаном, а переможе воїн!
Не питай, не питай,
Хто із нас повернеться!
І куди мене дорога долі ще заверне ця,
Скільки там ще попереду герцю,
Скільки вже натерпілись ці люди,
У нас крига тепер замість серця!
Це найдовший в житті місяць лютий...
Рідне поле засіяне гільзами,
Кров наповнює маки червоні,
А нас доля несе в новий бій за мить,
Через пекло у Бога в долоні!

Приспів.

Хай нам, брате, пощастить!
Хай нас небо захистить!

Приспів.

Хай нам, брате, пощастить!','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9463889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9463889','Хай нам, брате, пощастить!','Хай нам, брате, пощастить!
Хай нас небо захистить!
Тризуб, що несу на грудях!

Лютий нас розбудив рано-вранці,
Дикуни вже прорвали терени,
Я стояв серед тих новобранців,
Не моє - підвивати сиренам!..
Доля не питала мене, піду я чи ні,
Я б не зміг дивитися на все вдалечині,
Ця війна підкралася в країну нашу підло,
І мені за честь стояти з воїнами світла!
Вперше я одягаю наш піксель,
Вперше нас всіх шикують у лави,
І я впевнений ще нам на вік цей
Всім дістанеться волі і слави!
І нехай, брате, кулі минають!
Я нам всім лиш одне побажаю:
Все пройти, хай зірки прикривають,
Бо хоробрих і смерть поважає!

Приспів:
Хай нам, брате, пощастить!
Хай нас небо захистить!
Тризуб, що несу на грудях,
То і є моя броня!
Хай нам, брате, пощастить!
Все палає і свистить,
А ми йдемо в бій,
Бо це наш край, наша земля!

Ми ніколи не хилимо гриви!
Ця дорога шліфує героїв!
Нас лякали вже ядерним грибом,
Та тут кожен, як атомна зброя!
Подавай-подавай в кулемет набої,
Призивали пацаном, а переможе воїн!
Не питай, не питай,
Хто із нас повернеться!
І куди мене дорога долі ще заверне ця,
Скільки там ще попереду герцю,
Скільки вже натерпілись ці люди,
У нас крига тепер замість серця!
Це найдовший в житті місяць лютий...
Рідне поле засіяне гільзами,
Кров наповнює маки червоні,
А нас доля несе в новий бій за мить,
Через пекло у Бога в долоні!

Приспів.

Хай нам, брате, пощастить!
Хай нас небо захистить!

Приспів.

Хай нам, брате, пощастить!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9463889_l1','pisniua_9463889','YouTube','https://www.youtube.com/watch?v=4IiJxK3Y4SM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9463889_l2','pisniua_9463889','YouTube','https://www.youtube.com/watch?v=4KmQNAAEfSI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9474484';
DELETE FROM song_versions WHERE song_id = 'pisniua_9474484';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9474484';
DELETE FROM songs WHERE id = 'pisniua_9474484';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9474484','Лють','Музика: Сергій Соловій Слова: Сергій Соловій. Виконує: Kozak System','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я лють свою перетворю на зброю,
Я смерть несу проклятим ворогам,
Бо справжній я - непереможний воїн!  |
Честь всім героям: сестрам і братам! | (2)

Я лють свою перетворю на волю,
Свобода у крові моїй тече!
За цю можливість дякую я долі,       |
Бо цей вогонь запеклих не пече!      | (2)

Я лють свою перетворю на вітер,
Як сокіл в небі бачу ворогів!
Я рознесу їх, мов шалений вихор,     |
Побачать наш вони священний гнів!    | (2)

Я лють свою перетворю на щит,
Міста і села вкрию в тяжку мить!
Я всі вогні візьму лише на себе,     |
Мов скеля, мужньо я прийму цей бій!  | (2)

Я лють свою перетворю на віру,
Я вірю в наші славні імена!
Я вірю в перемогу України!           |
Вона єдина! Вона у нас одна!         | (2)

Вона єдина! Вона у нас одна!','[''pisni.org.ua'', ''cat:ato'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9474484'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9474484','Лють','Я лють свою перетворю на зброю,
Я смерть несу проклятим ворогам,
Бо справжній я - непереможний воїн!  |
Честь всім героям: сестрам і братам! | (2)

Я лють свою перетворю на волю,
Свобода у крові моїй тече!
За цю можливість дякую я долі,       |
Бо цей вогонь запеклих не пече!      | (2)

Я лють свою перетворю на вітер,
Як сокіл в небі бачу ворогів!
Я рознесу їх, мов шалений вихор,     |
Побачать наш вони священний гнів!    | (2)

Я лють свою перетворю на щит,
Міста і села вкрию в тяжку мить!
Я всі вогні візьму лише на себе,     |
Мов скеля, мужньо я прийму цей бій!  | (2)

Я лють свою перетворю на віру,
Я вірю в наші славні імена!
Я вірю в перемогу України!           |
Вона єдина! Вона у нас одна!         | (2)

Вона єдина! Вона у нас одна!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9474484_l1','pisniua_9474484','YouTube','https://www.youtube.com/watch?v=2IqZva_43bs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9474484_l2','pisniua_9474484','YouTube','https://www.youtube.com/watch?v=lyFSNv0M40w','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_947188';
DELETE FROM song_versions WHERE song_id = 'pisniua_947188';
DELETE FROM songs_fts WHERE song_id = 'pisniua_947188';
DELETE FROM songs WHERE id = 'pisniua_947188';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_947188','У середу родилася','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Записано зі слуху',NULL,'У середу родилася - горе ж мені, горе
Не піду я за старого - бородою коле

А піду я за такого, що сміються вуса
Він до мене кивне-моргне, а я засміюся

Він до мене кивнув-моргнув - я засміялася
Вийшла мати воду брати та й догадалася

Чого ж доню, чого ж доню так часто смієшся?
Полюбила козаченька, та не признаєшся

Тобі, мамцю, не питати, мені не казати
Як набрала відро води, то й іди до хати

Ой пий, мамцю, тую воду, що я наносила
Приймай мамцю того зятя, що я полюбила

Буду пити, буду пити, буду розливати
Недоброго зятя маю - буду чарувати

Чарувала ручки, ніжки ще й чорнії очі
Щоб не ходив до дівчини темненької ночі','[''pisni.org.ua'', ''cat:volynski'', ''Пісні з Волині'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_947188'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_947188','У середу родилася','У середу родилася - горе ж мені, горе
Не піду я за старого - бородою коле

А піду я за такого, що сміються вуса
Він до мене кивне-моргне, а я засміюся

Він до мене кивнув-моргнув - я засміялася
Вийшла мати воду брати та й догадалася

Чого ж доню, чого ж доню так часто смієшся?
Полюбила козаченька, та не признаєшся

Тобі, мамцю, не питати, мені не казати
Як набрала відро води, то й іди до хати

Ой пий, мамцю, тую воду, що я наносила
Приймай мамцю того зятя, що я полюбила

Буду пити, буду пити, буду розливати
Недоброго зятя маю - буду чарувати

Чарувала ручки, ніжки ще й чорнії очі
Щоб не ходив до дівчини темненької ночі');
DELETE FROM song_links WHERE song_id = 'pisniua_9486982';
DELETE FROM song_versions WHERE song_id = 'pisniua_9486982';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9486982';
DELETE FROM songs WHERE id = 'pisniua_9486982';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9486982','Народжені Вільними!','Музика: Злата Огнєвіч, Without Limits (Без Обмежень) Слова: Злата Огнєвіч, Without Limits (Без Обмежень). Виконує: Злата Огнєвіч, Without Limits (Без Обмежень)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Заливає дощем нас, але в серці немає страху!
Розчинилась у фальш - біль...
І всередині щем та гарні люди на нашім шляху,
Переможемо цей біль!
Подивись, тепер ми по світу скрізь іншим світимо,
По серед химер, вибухів і сліз ми не впадемо!

Приспів:
Чуєш, ми, ми народжені вільними, народжені сильними!
Не спинити! Межу перетнули ви і греблю вже зірвано!

Вони думали,
Що ми вдягнемо ярмо рабів і впадемо на коліна,
Але, що розбудили силу, наша воля не тлінна!
Чуєш, як реве Черемош, Дніпро, Сіверський Донець?..
Ми шляхи пройдем звільнимо Азов! Там імлі кінець!

Приспів. (2)

Через тугу і біль не забракне зусиль,
Щоб вогнем і мечем їх на потяв!
Наші хлопці, як сталь, розіб''ють на кришталь
Ту ворожу орду, дай запалу!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9486982'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9486982','Народжені Вільними!','Заливає дощем нас, але в серці немає страху!
Розчинилась у фальш - біль...
І всередині щем та гарні люди на нашім шляху,
Переможемо цей біль!
Подивись, тепер ми по світу скрізь іншим світимо,
По серед химер, вибухів і сліз ми не впадемо!

Приспів:
Чуєш, ми, ми народжені вільними, народжені сильними!
Не спинити! Межу перетнули ви і греблю вже зірвано!

Вони думали,
Що ми вдягнемо ярмо рабів і впадемо на коліна,
Але, що розбудили силу, наша воля не тлінна!
Чуєш, як реве Черемош, Дніпро, Сіверський Донець?..
Ми шляхи пройдем звільнимо Азов! Там імлі кінець!

Приспів. (2)

Через тугу і біль не забракне зусиль,
Щоб вогнем і мечем їх на потяв!
Наші хлопці, як сталь, розіб''ють на кришталь
Ту ворожу орду, дай запалу!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9486982_l1','pisniua_9486982','YouTube','https://www.youtube.com/watch?v=EaG11N7hYmk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_947282';
DELETE FROM song_versions WHERE song_id = 'pisniua_947282';
DELETE FROM songs_fts WHERE song_id = 'pisniua_947282';
DELETE FROM songs WHERE id = 'pisniua_947282';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_947282','Кривий Танець','Українська народна пісня. Виконує: Тінь сонця','uk','ukraine_before_1917',NULL,NULL,'http://www.sunshadow.com.ua/','Гаївки-Великдень: Українське свято Відродження Світа. Гра-коловід Змії/Змія. Весна Світа. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... – Мед і Ябка... А ми Йому Кінця не знайдем.','А ми Кривого Танцю йдем, Танцю йдем,
А ми Йому Кінця не знайдем, не знайдем,
А Вода  по Каменю,
А Вода по Білому,
Стиха йде стиха йде.

Ішли Дівчата через Двір, через Двір.
На них Хусточки як Мак цвів, як Мак цвів.
Стали Хусточки маяти,
Стала Діброва палати.
Стали Дівчата гасити,
Решетом Воду носити.
Скільки в Решеті Водиці,
Стільки в дівчатках правдиці.','[''pisni.org.ua'', ''cat:all-ukraine'', ''cat:vesnyanky-hayivky'', ''Загальноукраїнські пісні'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_947282'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_947282','Кривий Танець','А ми Кривого Танцю йдем, Танцю йдем,
А ми Йому Кінця не знайдем, не знайдем,
А Вода  по Каменю,
А Вода по Білому,
Стиха йде стиха йде.

Ішли Дівчата через Двір, через Двір.
На них Хусточки як Мак цвів, як Мак цвів.
Стали Хусточки маяти,
Стала Діброва палати.
Стали Дівчата гасити,
Решетом Воду носити.
Скільки в Решеті Водиці,
Стільки в дівчатках правдиці.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_947282_l1','pisniua_947282','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9472580';
DELETE FROM song_versions WHERE song_id = 'pisniua_9472580';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9472580';
DELETE FROM songs WHERE id = 'pisniua_9472580';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9472580','Борітеся — поборете!','Музика: Павло Табаков Слова: Тарас Шевченко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Борітеся — поборете!
Хай Вам Бог помагає!
За вас правда, |
За вас слава   |
І воля святая! | (2)

За горами гори, хмарою повиті,
Засіяні горем, кровію политі.
Споконвіку Прометея
Там орел карає,
Що день Божий ребра
Й серце розбиває.
Розбиває, та не вип''є
Живущої крові, —
Серце знову оживає
І сміється знову.
Не вмирає душа наша,
Не вмирає воля.
І неситий не виоре
На дні моря поле.

Приспів.

Не скує душі живої
І слова живого.
Не понесе слави Бога,
Великого Бога.
Ми віруєм Твоїй силі
І Духу живому.
Встане правда! встане воля!
І тобі одному
Помоляться всі язики
Вовіки і віки.
А поки ще течуть ріки,
Кривавії ріки!
За горами гори, хмарою повиті,
Засіяні горем, кровію политі.

Приспів.','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9472580'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9472580','Борітеся — поборете!','Приспів:
Борітеся — поборете!
Хай Вам Бог помагає!
За вас правда, |
За вас слава   |
І воля святая! | (2)

За горами гори, хмарою повиті,
Засіяні горем, кровію политі.
Споконвіку Прометея
Там орел карає,
Що день Божий ребра
Й серце розбиває.
Розбиває, та не вип''є
Живущої крові, —
Серце знову оживає
І сміється знову.
Не вмирає душа наша,
Не вмирає воля.
І неситий не виоре
На дні моря поле.

Приспів.

Не скує душі живої
І слова живого.
Не понесе слави Бога,
Великого Бога.
Ми віруєм Твоїй силі
І Духу живому.
Встане правда! встане воля!
І тобі одному
Помоляться всі язики
Вовіки і віки.
А поки ще течуть ріки,
Кривавії ріки!
За горами гори, хмарою повиті,
Засіяні горем, кровію политі.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9472580_l1','pisniua_9472580','YouTube','https://www.youtube.com/watch?v=2fhkw3p0iYM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9472580_l2','pisniua_9472580','YouTube','https://www.youtube.com/watch?v=LPiiPeY6sU8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9472580_l3','pisniua_9472580','YouTube','https://www.youtube.com/watch?v=-hEFTcEFwhM','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_9488786';
DELETE FROM song_versions WHERE song_id = 'pisniua_9488786';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9488786';
DELETE FROM songs WHERE id = 'pisniua_9488786';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9488786','Вище хмар','Музика: Shumei Слова: Shumei','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Не благай почуття, будь обережна...
Не біжи за вчорашнім днем ​​безмежним...
Затушу свою тінь до міліметра...
Закричи та біжи у свої тенета...
Тихо я прошепчу, та хто почує...
Серце хоче кричати, ніхто не чує!..
І сльозою розтопити міцні кайдани,
Плаче дощ, плачу я і небо з нами!..

Приспів:
Вище хмар злечу, щоб почати все спочатку,
Я тебе люблю все життя і до останку!
Вище хмар злечу, щоб почати все спочатку,
Я тебе люблю все життя і до останку!

Та чому кожен раз, коли злітаєш,
Щось тримає тебе і ти не знаєш,
Як любов зберегти, але це тайна...
І до зустрічі - сказати, та не буквально!
Тихо я прошепчу, та хто почує...
Серце хоче кричать, ніхто не чує!..
Моя воля міцна, та хто повірить,
І я знаю, сльозам ніхто не вірить...

Приспів.

Все життя і до останку!..

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9488786'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9488786','Вище хмар','Не благай почуття, будь обережна...
Не біжи за вчорашнім днем ​​безмежним...
Затушу свою тінь до міліметра...
Закричи та біжи у свої тенета...
Тихо я прошепчу, та хто почує...
Серце хоче кричати, ніхто не чує!..
І сльозою розтопити міцні кайдани,
Плаче дощ, плачу я і небо з нами!..

Приспів:
Вище хмар злечу, щоб почати все спочатку,
Я тебе люблю все життя і до останку!
Вище хмар злечу, щоб почати все спочатку,
Я тебе люблю все життя і до останку!

Та чому кожен раз, коли злітаєш,
Щось тримає тебе і ти не знаєш,
Як любов зберегти, але це тайна...
І до зустрічі - сказати, та не буквально!
Тихо я прошепчу, та хто почує...
Серце хоче кричать, ніхто не чує!..
Моя воля міцна, та хто повірить,
І я знаю, сльозам ніхто не вірить...

Приспів.

Все життя і до останку!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9488786_l1','pisniua_9488786','YouTube','https://www.youtube.com/watch?v=eBIitwsLq34','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9488786_l2','pisniua_9488786','YouTube','https://www.youtube.com/watch?v=yFgm94JUGT8','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9480384';
DELETE FROM song_versions WHERE song_id = 'pisniua_9480384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9480384';
DELETE FROM songs WHERE id = 'pisniua_9480384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9480384','Діти війни','Музика: Сергій Нехаєвський Слова: Оля Киця','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Em
Стоїть малюк, закривши оченята,
На личку рана, куртка вся брудна,
До ротика підносить рученята,
А у кремлі радіє сатана!
Де дівся дім? Де іграшки поділись?
Де ліжечко, в якому тихо спав?
Де теплий плед, під ним із татом грілись,
Коли мороз за носика щипав.
Am\H7\Em\C\Am\H7\Em\
М-М-М-М-М-М-М-М  -....
Де книжечка із добрими казками?
Машинки, ними грався з дідусем?
А, де усе, що так любила мама?
Куди, скажіть, поділося усе?
Стоїть малюк, не може зрозуміти,
Що він зробив поганого комусь.
Чому сидять заплаканії діти,
І стогне чийсь згорьований татусь?..
Am\H7\Em\C\Am\H7\Em\
А-А-А-А-А-А-А  -....
Бабуся в крик і падає на землю,
Благає всіх: "Рятуйте, поможіть!"
Бо десь отам, у цій руїні темній
Її донька з онуками лежить.
Це будуть перші згадки із дитинства:
Руїни, сльози, страх і крик людей.
Навіки закарбується це звірство
У душах всіх скалічених дітей,
Війною покалічених дітей...
Am\H7\Em\C\Am\H7\Em\
М-М-М-М-М-М-М-М  -....','[''pisni.org.ua'', ''cat:ato'', ''cat:pro-ditey'', ''Пісні російсько-української війни та АТО'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9480384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9480384','Діти війни','Em
Стоїть малюк, закривши оченята,
На личку рана, куртка вся брудна,
До ротика підносить рученята,
А у кремлі радіє сатана!
Де дівся дім? Де іграшки поділись?
Де ліжечко, в якому тихо спав?
Де теплий плед, під ним із татом грілись,
Коли мороз за носика щипав.
Am\H7\Em\C\Am\H7\Em\
М-М-М-М-М-М-М-М  -....
Де книжечка із добрими казками?
Машинки, ними грався з дідусем?
А, де усе, що так любила мама?
Куди, скажіть, поділося усе?
Стоїть малюк, не може зрозуміти,
Що він зробив поганого комусь.
Чому сидять заплаканії діти,
І стогне чийсь згорьований татусь?..
Am\H7\Em\C\Am\H7\Em\
А-А-А-А-А-А-А  -....
Бабуся в крик і падає на землю,
Благає всіх: "Рятуйте, поможіть!"
Бо десь отам, у цій руїні темній
Її донька з онуками лежить.
Це будуть перші згадки із дитинства:
Руїни, сльози, страх і крик людей.
Навіки закарбується це звірство
У душах всіх скалічених дітей,
Війною покалічених дітей...
Am\H7\Em\C\Am\H7\Em\
М-М-М-М-М-М-М-М  -....');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9480384_l1','pisniua_9480384','YouTube','https://www.youtube.com/watch?v=Tc9Wc7YzF2o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9480384_l2','pisniua_9480384','YouTube','https://www.youtube.com/watch?v=B8lVHfcgGLc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9489085';
DELETE FROM song_versions WHERE song_id = 'pisniua_9489085';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9489085';
DELETE FROM songs WHERE id = 'pisniua_9489085';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9489085','Схилилась мати','Музика: Олександр Келеберда Слова: Марина Лавришин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Схилилась мати на могилі сина,
Заплакала і тихо промовля:
Ну що ж, синочку, так тебе просила:
Не йди! А ти: Хто піде, як не я?!

Просила, сину рідний мій, єдиний,
Ти бережи себе на цій війні!
Не чую вже твій голос "солов''їний",
Якби ж ти знав, як боляче мені!..

Не для війни тебе я народила,
Тебе ростила, берегла тебе!
Не вберегла, ворожа куля вбила,   |
Забрала смерть частиночку мене!.. | (2)

Надіялася - в старості доглянеш,
Як схочу пити - принесеш води.
З Днем матері тихенько привітаєш...
А ти лежиш й мовчиш, мовчиш, мовчиш...

Сиділа мати, плакала й молилась,
Щоб душу сина Бог до неба взяв!
Мовчання увесь цвинтар оповило,
І дощик з неба плакати почав...','[''pisni.org.ua'', ''cat:pro-ditey'', ''cat:zahalni-cinnosti'', ''Пісні про любов до дітей'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9489085'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9489085','Схилилась мати','Схилилась мати на могилі сина,
Заплакала і тихо промовля:
Ну що ж, синочку, так тебе просила:
Не йди! А ти: Хто піде, як не я?!

Просила, сину рідний мій, єдиний,
Ти бережи себе на цій війні!
Не чую вже твій голос "солов''їний",
Якби ж ти знав, як боляче мені!..

Не для війни тебе я народила,
Тебе ростила, берегла тебе!
Не вберегла, ворожа куля вбила,   |
Забрала смерть частиночку мене!.. | (2)

Надіялася - в старості доглянеш,
Як схочу пити - принесеш води.
З Днем матері тихенько привітаєш...
А ти лежиш й мовчиш, мовчиш, мовчиш...

Сиділа мати, плакала й молилась,
Щоб душу сина Бог до неба взяв!
Мовчання увесь цвинтар оповило,
І дощик з неба плакати почав...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9489085_l1','pisniua_9489085','YouTube','https://www.youtube.com/watch?v=2YXzDw3E6J8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9490686';
DELETE FROM song_versions WHERE song_id = 'pisniua_9490686';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9490686';
DELETE FROM songs WHERE id = 'pisniua_9490686';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9490686','Син і дочка','Музика: Мар''яна Яромій (YAROMIYA) Слова: Мар''яна Яромій (YAROMIYA)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Маленькі ручки,
Маленькі кроки,
І розбігаються в різні боки,
Невинні щирі оченята,
В них добра так багато.
Знай, це схожість твоя!
Знай, це гордість твоя!
Знай, що вже дорожчих нема,
Ті, що говорять:
Люблю тебе, ма!

Приспів:
А у садочку сидить син і дочка,      |
Такі маленькі, такі вони схожі!      |
Щаслива? люблю без особливих причин! |
Моя радість і світло - дочка і син!  | (2)

І син!..

Тихенько час біжить,
І ростуть щохвилини,
Та все міцніша любов
До доньки і сина!
Вже дорослі такі,
Та для мене дитина.
Більше щастя нема -
Мати дочку і сина!
Знай, це схожість твоя!
Знай, це гордість твоя!
Знай, що вже дорожчих нема,
Ті, що говорять:
Люблю тебе, ма!

Приспів.

І син!..','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9490686'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9490686','Син і дочка','Маленькі ручки,
Маленькі кроки,
І розбігаються в різні боки,
Невинні щирі оченята,
В них добра так багато.
Знай, це схожість твоя!
Знай, це гордість твоя!
Знай, що вже дорожчих нема,
Ті, що говорять:
Люблю тебе, ма!

Приспів:
А у садочку сидить син і дочка,      |
Такі маленькі, такі вони схожі!      |
Щаслива? люблю без особливих причин! |
Моя радість і світло - дочка і син!  | (2)

І син!..

Тихенько час біжить,
І ростуть щохвилини,
Та все міцніша любов
До доньки і сина!
Вже дорослі такі,
Та для мене дитина.
Більше щастя нема -
Мати дочку і сина!
Знай, це схожість твоя!
Знай, це гордість твоя!
Знай, що вже дорожчих нема,
Ті, що говорять:
Люблю тебе, ма!

Приспів.

І син!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9490686_l1','pisniua_9490686','YouTube','https://www.youtube.com/watch?v=fsKZ647ofOY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9479786';
DELETE FROM song_versions WHERE song_id = 'pisniua_9479786';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9479786';
DELETE FROM songs WHERE id = 'pisniua_9479786';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9479786','А знаєте, війна колись закінчиться...','Музика: Timothy Rusavuk Слова: Марія Скочиліс','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'А знаєте...
А знаєте, війна колись закінчиться,
І з часом відбудуються міста,
Але ніколи більше не повернуться
Всі ті, кого забрали небеса...

Їх вже немає, безліч їх загинуло,
Але за що?.. Чому така ціна?..
Вони на небі, мабуть, поруч з ангелами,
Їм там спокійніше, бо на землі війна...

Це все так боляче, що серце розривається,
Де правда і в чиїх руках життя?..
Чому війна лише простих людей торкається?
А для політиків здається просто гра...

Знову до неба я з молитвою звертаюся,
Благаю, Боже, спокою пошли,
Щоб моя рідна серцю Україна
Не знала більше пострілів війни!..

А знаєте, війна колись закінчиться,
І тільки спогади залишаться в серцях...
Благаю, Боже, збережи мою країну,
Молюсь до Тебе, збережи усім життя!..','[''pisni.org.ua'', ''cat:devoted'', ''cat:nostalgia'', ''cat:viyskovi'', ''Пісні присвячені окремим особам'', ''Пісні з ностальгічними мотивами'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9479786'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9479786','А знаєте, війна колись закінчиться...','А знаєте...
А знаєте, війна колись закінчиться,
І з часом відбудуються міста,
Але ніколи більше не повернуться
Всі ті, кого забрали небеса...

Їх вже немає, безліч їх загинуло,
Але за що?.. Чому така ціна?..
Вони на небі, мабуть, поруч з ангелами,
Їм там спокійніше, бо на землі війна...

Це все так боляче, що серце розривається,
Де правда і в чиїх руках життя?..
Чому війна лише простих людей торкається?
А для політиків здається просто гра...

Знову до неба я з молитвою звертаюся,
Благаю, Боже, спокою пошли,
Щоб моя рідна серцю Україна
Не знала більше пострілів війни!..

А знаєте, війна колись закінчиться,
І тільки спогади залишаться в серцях...
Благаю, Боже, збережи мою країну,
Молюсь до Тебе, збережи усім життя!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9479786_l1','pisniua_9479786','YouTube','https://www.youtube.com/watch?v=L67z9D-Qgjo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9497888';
DELETE FROM song_versions WHERE song_id = 'pisniua_9497888';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9497888';
DELETE FROM songs WHERE id = 'pisniua_9497888';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9497888','Твій Син прийде до кожного у серце','Музика: Олександр Тяптін Слова: Олександр Тяптін','uk','ukraine_1991',NULL,NULL,'авторська різдвяна пісня',NULL,'Як над вертепом зірка блискотіла,
Марія людям Сина привела.
За Сина Богу свічку засвітила,
Його Різдвом, народженням жила.

Приспів:
Твій Син прийде до кожного у серце,
Людей полюбить і утішить їх!
І подолає смерть в небеснім герці,
Воскресне сам і воскресить усіх!

Ти встелиш ясла м''якше від постелі,
І усміхнешся, плачучи в журбі.
Ти вбережеш Його від лиха у пустелі.
І вбережеш від сумнівів в собі.

Приспів.

Ти будеш щастя так Йому бажати,
Як розуміють людськії серця.
А Він земного щастя не захоче,
Лиш виконати Заповіт Отця!

Приспів.

Коли прийшли Його випробування,
Коли, здалось, лишився без Отця,
Ти з серцем в ранах,
Серцем, ледь не вбитим,
Була із ним до самого кінця.

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9497888'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9497888','Твій Син прийде до кожного у серце','Як над вертепом зірка блискотіла,
Марія людям Сина привела.
За Сина Богу свічку засвітила,
Його Різдвом, народженням жила.

Приспів:
Твій Син прийде до кожного у серце,
Людей полюбить і утішить їх!
І подолає смерть в небеснім герці,
Воскресне сам і воскресить усіх!

Ти встелиш ясла м''якше від постелі,
І усміхнешся, плачучи в журбі.
Ти вбережеш Його від лиха у пустелі.
І вбережеш від сумнівів в собі.

Приспів.

Ти будеш щастя так Йому бажати,
Як розуміють людськії серця.
А Він земного щастя не захоче,
Лиш виконати Заповіт Отця!

Приспів.

Коли прийшли Його випробування,
Коли, здалось, лишився без Отця,
Ти з серцем в ранах,
Серцем, ледь не вбитим,
Була із ним до самого кінця.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_9497188';
DELETE FROM song_versions WHERE song_id = 'pisniua_9497188';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9497188';
DELETE FROM songs WHERE id = 'pisniua_9497188';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9497188','На Святого Миколая','Музика: Наталія Май Слова: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На святого Миколая
В небі зорі ясно сяють,
І святкова гарна пісня
Всіх єднає на землі!
На святого Миколая
Бог усім допомагає,
І радіють всі на світі:
І великі, і малі!

На святого Миколая
В небі янголи співають,
І святкова гарна пісня
Всіх єднає на землі!
На святого Миколая
Бог усім допомагає,
Щоб усі були добріші,
Щоб щасливими були!

Речитатив:
Боже наш Всемилостивий,
Уклінно благаємо Тебе:
Пошли нашій Україні
Спокою, щастя
Та процвітання!

На святого Миколая
Бог усім допомагає,
І радіють всі на світі:
І великі, і малі!
На святого Миколая
Бог усім допомагає,
Щоб усі були добріші,
Щоб щасливими!
Зі святом Вас!','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:svyatyy-mykolay'', ''Дитячі пісні'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9497188'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9497188','На Святого Миколая','На святого Миколая
В небі зорі ясно сяють,
І святкова гарна пісня
Всіх єднає на землі!
На святого Миколая
Бог усім допомагає,
І радіють всі на світі:
І великі, і малі!

На святого Миколая
В небі янголи співають,
І святкова гарна пісня
Всіх єднає на землі!
На святого Миколая
Бог усім допомагає,
Щоб усі були добріші,
Щоб щасливими були!

Речитатив:
Боже наш Всемилостивий,
Уклінно благаємо Тебе:
Пошли нашій Україні
Спокою, щастя
Та процвітання!

На святого Миколая
Бог усім допомагає,
І радіють всі на світі:
І великі, і малі!
На святого Миколая
Бог усім допомагає,
Щоб усі були добріші,
Щоб щасливими!
Зі святом Вас!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9497188_l1','pisniua_9497188','YouTube','https://www.youtube.com/watch?v=OcW0hR5Wxlo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9492384';
DELETE FROM song_versions WHERE song_id = 'pisniua_9492384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9492384';
DELETE FROM songs WHERE id = 'pisniua_9492384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9492384','Танцюєш і плачеш','Музика: Назарій Савчук, Владислав Ступак Слова: Назарій Савчук, Владислав Ступак','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'І крізь вуаль
Я побачу твою печаль...
Твої очі, як кришталь,
А з них сльози
І мені так жаль...

Приспів:
Все, як ти хотіла:
Ти в білому платті,
Але цей вальс
Ти танцюєш і плачеш,
Серце розбила і полетіла,
А моїх очей, мабуть,
Вже не побачиш...
Все, як ти хотіла:
Ти в білому платті,
Але цей вальс
Ти танцюєш і плачеш,
Серце розбила і полетіла,
Але не з тим
Танцювати хотіла...

Скажіть, по чому кохання?..
Я куплю, щоб більше
Не мати страждання.
Чи краще, щоб просто
Відрізали пам''ять,
Бо серце це вам не камінь...
Це рани, які залишились
На пам''ять, це біль,
Яку не залити стаканом...
Навчи мене жити, щоб ніколи,
Нікого, як тебе не любити!..
Згадаєш ще не раз
Ті наші ночі, як на зорі
Я дивився в твої очі,
Блакитні очі...
Ти говорила, що кохаєш,
А насправді просто моє серце
Спопеляєш, холодом вбиваєш...

Все, як ти хотіла:
Ти в білому платті,
Але цей вальс
Ти танцюєш і плачеш,
Серце розбила і полетіла,
Але не з тим
Танцювати хотіла...
І крізь вуаль
Я побачу твою печаль...
Твої очі, як кришталь,
А з них сльози
І мені так жаль...

Я знайшов тебе,
Де більше таких нема,
А зараз на тобі
Печаль і біла фата...
Я кохав тебе, неначе
Це солодкий сон,
Я зараз сам на самоті,
Шкода, що це не сон...
Забуваю твої очі,
Задихаючись, а ти кружляєш
В сукні з ним,
Слізьми вкриваючись...
Не забувай моє ім''я,
Хоч може й треба так,
Мабуть, щаслива будеш ти,
А я - самотній птах...

Приспів.

І крізь вуаль
Я побачу твою печаль...
Твої очі, як кришталь,
А з них сльози
І мені так жаль...','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9492384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9492384','Танцюєш і плачеш','І крізь вуаль
Я побачу твою печаль...
Твої очі, як кришталь,
А з них сльози
І мені так жаль...

Приспів:
Все, як ти хотіла:
Ти в білому платті,
Але цей вальс
Ти танцюєш і плачеш,
Серце розбила і полетіла,
А моїх очей, мабуть,
Вже не побачиш...
Все, як ти хотіла:
Ти в білому платті,
Але цей вальс
Ти танцюєш і плачеш,
Серце розбила і полетіла,
Але не з тим
Танцювати хотіла...

Скажіть, по чому кохання?..
Я куплю, щоб більше
Не мати страждання.
Чи краще, щоб просто
Відрізали пам''ять,
Бо серце це вам не камінь...
Це рани, які залишились
На пам''ять, це біль,
Яку не залити стаканом...
Навчи мене жити, щоб ніколи,
Нікого, як тебе не любити!..
Згадаєш ще не раз
Ті наші ночі, як на зорі
Я дивився в твої очі,
Блакитні очі...
Ти говорила, що кохаєш,
А насправді просто моє серце
Спопеляєш, холодом вбиваєш...

Все, як ти хотіла:
Ти в білому платті,
Але цей вальс
Ти танцюєш і плачеш,
Серце розбила і полетіла,
Але не з тим
Танцювати хотіла...
І крізь вуаль
Я побачу твою печаль...
Твої очі, як кришталь,
А з них сльози
І мені так жаль...

Я знайшов тебе,
Де більше таких нема,
А зараз на тобі
Печаль і біла фата...
Я кохав тебе, неначе
Це солодкий сон,
Я зараз сам на самоті,
Шкода, що це не сон...
Забуваю твої очі,
Задихаючись, а ти кружляєш
В сукні з ним,
Слізьми вкриваючись...
Не забувай моє ім''я,
Хоч може й треба так,
Мабуть, щаслива будеш ти,
А я - самотній птах...

Приспів.

І крізь вуаль
Я побачу твою печаль...
Твої очі, як кришталь,
А з них сльози
І мені так жаль...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9492384_l1','pisniua_9492384','YouTube','https://www.youtube.com/watch?v=OqgdIwQhCqQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_94989';
DELETE FROM song_versions WHERE song_id = 'pisniua_94989';
DELETE FROM songs_fts WHERE song_id = 'pisniua_94989';
DELETE FROM songs WHERE id = 'pisniua_94989';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_94989','Божий Син днесь народився *','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Видавництво Отців Василіан "Місіонер"',NULL,'Божий Син днесь народився,
З небес Він до  нас знизився,
З Діви  Пречистої Непорочної Воплотився
всім на землі.

Породила Бога-Слово
З покоління Давидова,
Марія Пречиста, Божая невіста,
В Вифлеємі.

Там ся Ангели з''явили,
Прихід Спаса прославляли,
Як Його рождества
Із чоловічества
Вже прийшов час.

Взяв на себе наше тіло
Й людським сином звався сміло,
Як тоє вже давно
Пророки нам явно
Предсказали.

І злучив Він невіддільно
Дві природи обі спільно,
І в одній особі
А двійній природі
Нам явився.

Вже й вертеп ся украшає,
Небо зірку посилає,
Щоб вказала місто,
Де Бога Пречиста
Леліяла.

В полях пастирі зраділи,
Як лиш Ангелів узріли,
Що славили Первенця,
Ісуса Молодця,
У вертепі.

Три царі прийшли зі Сходу
І Царю усього роду
Золото, ливан, миро
Принесли все щиро,
Жертвували.

Спас зійшов мир просвітити,
І всіх грішних відкупити,
Й з людтої вражої
Неволі вічної
Піддвигнути.

Тож ми Спаса величаймо,
І всі разом прославляймо,
Кожная людина
Перед ним коліна
Хай приклонить.    мелодія  (','[''pisni.org.ua'', ''cat:christian'', ''cat:halycki'', ''cat:kolyadky'', ''Пісні на християнську тематику'', ''Пісні з Галичини'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_94989'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_94989','Божий Син днесь народився *','Божий Син днесь народився,
З небес Він до  нас знизився,
З Діви  Пречистої Непорочної Воплотився
всім на землі.

Породила Бога-Слово
З покоління Давидова,
Марія Пречиста, Божая невіста,
В Вифлеємі.

Там ся Ангели з''явили,
Прихід Спаса прославляли,
Як Його рождества
Із чоловічества
Вже прийшов час.

Взяв на себе наше тіло
Й людським сином звався сміло,
Як тоє вже давно
Пророки нам явно
Предсказали.

І злучив Він невіддільно
Дві природи обі спільно,
І в одній особі
А двійній природі
Нам явився.

Вже й вертеп ся украшає,
Небо зірку посилає,
Щоб вказала місто,
Де Бога Пречиста
Леліяла.

В полях пастирі зраділи,
Як лиш Ангелів узріли,
Що славили Первенця,
Ісуса Молодця,
У вертепі.

Три царі прийшли зі Сходу
І Царю усього роду
Золото, ливан, миро
Принесли все щиро,
Жертвували.

Спас зійшов мир просвітити,
І всіх грішних відкупити,
Й з людтої вражої
Неволі вічної
Піддвигнути.

Тож ми Спаса величаймо,
І всі разом прославляймо,
Кожная людина
Перед ним коліна
Хай приклонить.    мелодія  (');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_94989_l1','pisniua_94989','YouTube','https://www.youtube.com/watch?v=jIAYshMcVb8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_94989_l2','pisniua_94989','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_949989';
DELETE FROM song_versions WHERE song_id = 'pisniua_949989';
DELETE FROM songs_fts WHERE song_id = 'pisniua_949989';
DELETE FROM songs WHERE id = 'pisniua_949989';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_949989','Ти любов моя','Музика: Герман Жуковський Слова: Олекса Новицький','uk','ukr_ssr_1919_1991',NULL,'1953','1. Зіронька. Пісенник. — К.: Держ. в-во образ. м-ва і муз л-ри, 1963. — 144 с.','Пісня з кінофільму "Доля Марини" режисерів Віктора Івченка та Ісаака Шмарука (1953)','Ой дівчино, чим ти полонила
Юне сеpце в той вечіpній час?

Ти любов моя,      |
Ой ти, дівчинонько |(2)
Гоpдая!            |

Пеpейду несходжені доpоги,
Пpонесу в душі твоє ім''я.

Ти любов моя,      |
Ой ти, дівчинонько |(2)
Гоpдая!            |

Все без тебе я,
Ой ти, любов моя
Ніжная.

Ти любов моя,
Ой ти, дiвчинонько
Гоpдая!    Фонограма-мінус (MP3 з MIDI)','[''pisni.org.ua'', ''cat:films'', ''Українські пісні в кінофільмах'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_949989'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_949989','Ти любов моя','Ой дівчино, чим ти полонила
Юне сеpце в той вечіpній час?

Ти любов моя,      |
Ой ти, дівчинонько |(2)
Гоpдая!            |

Пеpейду несходжені доpоги,
Пpонесу в душі твоє ім''я.

Ти любов моя,      |
Ой ти, дівчинонько |(2)
Гоpдая!            |

Все без тебе я,
Ой ти, любов моя
Ніжная.

Ти любов моя,
Ой ти, дiвчинонько
Гоpдая!    Фонограма-мінус (MP3 з MIDI)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_949989_l1','pisniua_949989','YouTube','https://www.youtube.com/watch?v=VvK46wNvD8Y','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_949989_l2','pisniua_949989','YouTube','https://www.youtube.com/watch?v=5nCaF4FQcFE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_949989_l3','pisniua_949989','YouTube','https://www.youtube.com/watch?v=mGdFO2ssM2M','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_949989_l4','pisniua_949989','YouTube','https://www.youtube.com/watch?v=h901Xyuggig','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_9512585';
DELETE FROM song_versions WHERE song_id = 'pisniua_9512585';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9512585';
DELETE FROM songs WHERE id = 'pisniua_9512585';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9512585','Вишита сорочка','Музика: Мар''яна Яромій (YAROMIYA) Слова: Мар''яна Яромій (YAROMIYA)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вишиту сорочку шила рано мати
Різними нитками, сиділа біля хати,
Шила-вишивала і тихо щось співала,
Хай складеться доля - щоразу промовляла.
Щоразу промовляла...

Приспів:
Сорочку вишивала тобі, доню!
Червоні маки й жовті колоски!
Щасливу, щоб ти мала завжди долю!
Неси у світ традиції свої!

За вікном вже місяць вигляда із хмари,
Свій промінчик, мов ту ниточку, дає.
А мати час не гає, та за вікном світає,
Для доньки вишиває, сорочку-оберіг дає!

Приспів. (2)','[''pisni.org.ua'', ''cat:pro-ditey'', ''cat:zahalni-cinnosti'', ''Пісні про любов до дітей'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9512585'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9512585','Вишита сорочка','Вишиту сорочку шила рано мати
Різними нитками, сиділа біля хати,
Шила-вишивала і тихо щось співала,
Хай складеться доля - щоразу промовляла.
Щоразу промовляла...

Приспів:
Сорочку вишивала тобі, доню!
Червоні маки й жовті колоски!
Щасливу, щоб ти мала завжди долю!
Неси у світ традиції свої!

За вікном вже місяць вигляда із хмари,
Свій промінчик, мов ту ниточку, дає.
А мати час не гає, та за вікном світає,
Для доньки вишиває, сорочку-оберіг дає!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9512585_l1','pisniua_9512585','YouTube','https://www.youtube.com/watch?v=gnK6BNXEq2A','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9502080';
DELETE FROM song_versions WHERE song_id = 'pisniua_9502080';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9502080';
DELETE FROM songs WHERE id = 'pisniua_9502080';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9502080','Холодно','Музика: Oleksandr Surov, Dmytro Skliarov Слова: Oleksandr Surov, Dmytro Skliarov','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У моїм серці розбиті мрії,
Але в сумних очах живе надія!..
Стріляли в душу, ламали крила
Але не знали, в чому моя сила..
Я нікому не віддам своє!
Свобода - все, що в мене є!
Я ніколи свого не віддам,
Яка би не прийшла біда!..

Приспів:
Холодно...
В домі моєму холодно,
Та його не залишу!..
Все одно, все одно
Я чекатиму, я чекатиму тишу!..
Ходимо...
Під небом синім ходимо,
Воно бачить і чує!..
Все одно, все одно,
Хто забрав тепло,
Той холод відчує!..

Мені не страшно - я добре знаю,
Ніякий ворог не злякає
Мою, твою зграю!..
І все що маю - одне бажання:
Нехай цей холод лютий
Буде у мене востаннє!..
Я нікому не віддам своє!
Свобода - все, що в мене є!
Я ніколи свого не віддам,
Яка би не прийшла біда!..

Приспів.

Холодно!.. Холодно!..
Холодно!.. Холодно!..
Холодно!.. Холодно!..
Холодно!.. Холодно!..
Холодно!.. Холодно!..
Холодно...
В небі моєму холодно,
Та його не залишу!..
Все одно, все одно
Я чекатиму, я чекатиму тишу!..','[''pisni.org.ua'', ''cat:ato'', ''cat:philosophic'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Філософські пісні'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9502080'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9502080','Холодно','У моїм серці розбиті мрії,
Але в сумних очах живе надія!..
Стріляли в душу, ламали крила
Але не знали, в чому моя сила..
Я нікому не віддам своє!
Свобода - все, що в мене є!
Я ніколи свого не віддам,
Яка би не прийшла біда!..

Приспів:
Холодно...
В домі моєму холодно,
Та його не залишу!..
Все одно, все одно
Я чекатиму, я чекатиму тишу!..
Ходимо...
Під небом синім ходимо,
Воно бачить і чує!..
Все одно, все одно,
Хто забрав тепло,
Той холод відчує!..

Мені не страшно - я добре знаю,
Ніякий ворог не злякає
Мою, твою зграю!..
І все що маю - одне бажання:
Нехай цей холод лютий
Буде у мене востаннє!..
Я нікому не віддам своє!
Свобода - все, що в мене є!
Я ніколи свого не віддам,
Яка би не прийшла біда!..

Приспів.

Холодно!.. Холодно!..
Холодно!.. Холодно!..
Холодно!.. Холодно!..
Холодно!.. Холодно!..
Холодно!.. Холодно!..
Холодно...
В небі моєму холодно,
Та його не залишу!..
Все одно, все одно
Я чекатиму, я чекатиму тишу!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9502080_l1','pisniua_9502080','YouTube','https://www.youtube.com/watch?v=rhPpQWGm7Tk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9502080_l2','pisniua_9502080','YouTube','https://www.youtube.com/watch?v=_E5sjGErmKg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9513982';
DELETE FROM song_versions WHERE song_id = 'pisniua_9513982';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9513982';
DELETE FROM songs WHERE id = 'pisniua_9513982';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9513982','Гімн команди "Первоцвіт" (Заводська Школа)',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконують дітки зі Школи.','Ми - нащадки добрі,
Славного народу - дух!
І старання Славу принесе
По душі і серці
Цвіту Первоціту!

З нами Україна!
З нами наш народ!
Тож, крокуй, Первоцвіт!

Хай лунає пісня "Привіт!"
Хай лине нам,
Цінить і любить
Наш собою цвіт Первоцвіт!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9513982'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9513982','Гімн команди "Первоцвіт" (Заводська Школа)','Ми - нащадки добрі,
Славного народу - дух!
І старання Славу принесе
По душі і серці
Цвіту Первоціту!

З нами Україна!
З нами наш народ!
Тож, крокуй, Первоцвіт!

Хай лунає пісня "Привіт!"
Хай лине нам,
Цінить і любить
Наш собою цвіт Первоцвіт!');
DELETE FROM song_links WHERE song_id = 'pisniua_9496080';
DELETE FROM song_versions WHERE song_id = 'pisniua_9496080';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9496080';
DELETE FROM songs WHERE id = 'pisniua_9496080';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9496080','Сучасна я ялиночка',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сучасна я ялиночка,
Красуня й веселиночка,
Дарую всім цілуночки,
Й ховаю подаруночки.
Я - ялинка зелененька,
Кожна голочка гарненька,
Промінцями кульки грають,
Оченята в діток сяють!
Я - ялинка зелененька,
Кожна голочка гарненька,
Промінцями кульки грають,
Оченята сяють!

На святі я - красунечка,
Радію, мов пустуночка,
Бо хочу бути новою,
Сучасно-суперовою!
Гарна шубка й рукавички,
І підбори, і спідничка.
В мене зачіска святкова,
Я - ялиночка чудова!
Гарна шубка й рукавички,
І підбори, і спідничка.
В мене зачіска святкова,
Я така чудова!

Сучасна я ялиночка,
На святі, мов перлиночка.
Тут мрії всі збуваються,
Все діткам дозволяється!
З Новим роком всіх вітаю!
В хороводі закружляю.
Ручки всі дамо, малята,
І підемо танцювати!
З Новим роком всіх вітаю!
В хороводі закружляю.
Ручки всі дамо, малята,
Разом танцювати!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9496080'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9496080','Сучасна я ялиночка','Сучасна я ялиночка,
Красуня й веселиночка,
Дарую всім цілуночки,
Й ховаю подаруночки.
Я - ялинка зелененька,
Кожна голочка гарненька,
Промінцями кульки грають,
Оченята в діток сяють!
Я - ялинка зелененька,
Кожна голочка гарненька,
Промінцями кульки грають,
Оченята сяють!

На святі я - красунечка,
Радію, мов пустуночка,
Бо хочу бути новою,
Сучасно-суперовою!
Гарна шубка й рукавички,
І підбори, і спідничка.
В мене зачіска святкова,
Я - ялиночка чудова!
Гарна шубка й рукавички,
І підбори, і спідничка.
В мене зачіска святкова,
Я така чудова!

Сучасна я ялиночка,
На святі, мов перлиночка.
Тут мрії всі збуваються,
Все діткам дозволяється!
З Новим роком всіх вітаю!
В хороводі закружляю.
Ручки всі дамо, малята,
І підемо танцювати!
З Новим роком всіх вітаю!
В хороводі закружляю.
Ручки всі дамо, малята,
Разом танцювати!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9496080_l1','pisniua_9496080','YouTube','https://www.youtube.com/watch?v=ds_XzTb1R1A','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9492484';
DELETE FROM song_versions WHERE song_id = 'pisniua_9492484';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9492484';
DELETE FROM songs WHERE id = 'pisniua_9492484';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9492484','Стою на колінах, вмиваюсь сльозами','Слова: Леся Данильчик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Стою на колінах, вмиваюсь сльозами,
Не можу молитву сказати словами.
Та Ти наперед усе, Господи, знаєш
І кожну сльозу із очей витираєш.

Мій Боже, молитва моя не за себе,
Не прагну даремно тривожити небо.
Усе, що потрібно я, Господи, маю.
За інших людей Тебе, нині благаю!

За тих, хто сьогодні в підвалах ночують,
Хто вдень і вночі страшні вибухи чують,
Хто вже призабув запах свіжого хліба,
У кого від дому немає вже й сліду...

За тих матерів і батьків, що ніколи
Не будуть вести своїх діток до школи...
За доньку і сина, що плачуть ночами,
Бо вже не побачать ні тата, ні мами...

Сьогодні, мій Боже, до Тебе молюся
За діда старого, за сиву бабусю,
Що дні доживають в холодних оселях, -
Тікати стареньким від горя несила...

Молюся й за тих, хто лишивши родину,
Пішов захищати державу Вкраїну!..
За тих, хто людей від поранень лікує,
За тих, хто з вогню кожну душу рятує!..

Молитву оцю я щодня в серці ношу.
І милості, милості, Господи, прошу!
Помилуй, потіш, підкріпи кожне серце,
Спаси й збережи від тенет злої смерті!..

Зміцни, звесели, в кого руки охляли,
І тих, хто про Тебе ніколи не знали,
Поклич за Собою, дай справжнє прозріння,
Хай кожному явиться Боже спасіння!

Благаю Тебе, щоб серця не стверділи,
Щоб вміли прощати й любити уміли!...
Нехай душа кожна впаде на коліна
Й пізнає, що в Тебе є поміч і сила!

Стою на колінах, молитву шепочу...
За інших людей Тебе, Господи, прошу.
Нехай в небеса ця молитва полине, -
Помилуй, мій Боже, народ України!..','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9492484'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9492484','Стою на колінах, вмиваюсь сльозами','Стою на колінах, вмиваюсь сльозами,
Не можу молитву сказати словами.
Та Ти наперед усе, Господи, знаєш
І кожну сльозу із очей витираєш.

Мій Боже, молитва моя не за себе,
Не прагну даремно тривожити небо.
Усе, що потрібно я, Господи, маю.
За інших людей Тебе, нині благаю!

За тих, хто сьогодні в підвалах ночують,
Хто вдень і вночі страшні вибухи чують,
Хто вже призабув запах свіжого хліба,
У кого від дому немає вже й сліду...

За тих матерів і батьків, що ніколи
Не будуть вести своїх діток до школи...
За доньку і сина, що плачуть ночами,
Бо вже не побачать ні тата, ні мами...

Сьогодні, мій Боже, до Тебе молюся
За діда старого, за сиву бабусю,
Що дні доживають в холодних оселях, -
Тікати стареньким від горя несила...

Молюся й за тих, хто лишивши родину,
Пішов захищати державу Вкраїну!..
За тих, хто людей від поранень лікує,
За тих, хто з вогню кожну душу рятує!..

Молитву оцю я щодня в серці ношу.
І милості, милості, Господи, прошу!
Помилуй, потіш, підкріпи кожне серце,
Спаси й збережи від тенет злої смерті!..

Зміцни, звесели, в кого руки охляли,
І тих, хто про Тебе ніколи не знали,
Поклич за Собою, дай справжнє прозріння,
Хай кожному явиться Боже спасіння!

Благаю Тебе, щоб серця не стверділи,
Щоб вміли прощати й любити уміли!...
Нехай душа кожна впаде на коліна
Й пізнає, що в Тебе є поміч і сила!

Стою на колінах, молитву шепочу...
За інших людей Тебе, Господи, прошу.
Нехай в небеса ця молитва полине, -
Помилуй, мій Боже, народ України!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9492484_l1','pisniua_9492484','YouTube','https://www.youtube.com/watch?v=6iUnjmSpn24','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9488188';
DELETE FROM song_versions WHERE song_id = 'pisniua_9488188';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9488188';
DELETE FROM songs WHERE id = 'pisniua_9488188';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9488188','Наші діти','Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Зараз мріють наші діти в Україні
Не про кубики, машинки і ляльки.
По ночах не сплять спокійно і донині,
Все у світі, певно, стало навпаки!

Приспів:
Тільки діти, то є діти,
Їм так хочеться радіти!
Та розуміють все малі,
І просять в Бога миру на землі!

Зараз мріють наші діти в Україні:
Тільки б швидше вже закінчився цей жах!
І дорослі, щоб, напевно, знали ціну
Тим сльозинкам у довірливих очах...

Речитатив:
Наші діти мають право просто жити,
Мати дім, садочок, школу і родину!

Наші діти мають право просто жити!
Без війни! Під мирним небом України!

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9488188'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9488188','Наші діти','Зараз мріють наші діти в Україні
Не про кубики, машинки і ляльки.
По ночах не сплять спокійно і донині,
Все у світі, певно, стало навпаки!

Приспів:
Тільки діти, то є діти,
Їм так хочеться радіти!
Та розуміють все малі,
І просять в Бога миру на землі!

Зараз мріють наші діти в Україні:
Тільки б швидше вже закінчився цей жах!
І дорослі, щоб, напевно, знали ціну
Тим сльозинкам у довірливих очах...

Речитатив:
Наші діти мають право просто жити,
Мати дім, садочок, школу і родину!

Наші діти мають право просто жити!
Без війни! Під мирним небом України!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9488188_l1','pisniua_9488188','YouTube','https://www.youtube.com/watch?v=AcgiGqEbkd0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_94889';
DELETE FROM song_versions WHERE song_id = 'pisniua_94889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_94889';
DELETE FROM songs WHERE id = 'pisniua_94889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_94889','Пісня про Палія','Музика: Володимир Скоробський Слова: Левко Боровиковський. Виконує: Володимир Скоробський, Журборіз, Михайло Коваль','uk','ukraine_before_1917',NULL,NULL,'1. Аудіо-CD "Дует "Журборіз". Летом дужих крил" (концерт з "Останньої Барикади", 2003) 2. Співаник Українського Лицаря. Видання Куреня УСП ч.15 "Орден Залізної Остроги" ім. Святослава Завойовника Пласту – НСОУ.– Київ: Українська Видавнича Спілка, 2006.– 104 с.','-Метун-: Почув цю пісню від дуету бардів із Києва - сподобалась:) Акорди підібрано на слух з аудіозапису. Підбір акордів: -Метун-','Вступ:  Em C G H7  (4)

Люлька в роті зашкварчала,
Шабля в ніжнах забряжчала -
Шабля різанину чує,
Люлька пожари віщує.

Сидіть вдома на покої
Не пристало козакові.
Склич, козаче, склич дружину,
Йди, Палію, в Ляхівщину.

Програш: Em C G H7 (2)

Годі, коню, в стійлі спати,
Їдем ляхів полякати.
Швидше мчи, ніж кремнем збита
Згасне іскра від копита.

Хто, як стрілка, із майдану
Вихрем мчиться за Украйну.
Яр, ліс, річка й туча синя -
Козакові не запина.

Програш.

Хто в траві - врівні з травою,
Хто в воді - врівні з водою.
Хто у лісі - врівні з лісом,
Ніччю перевертнем-бісом.

Ранні півні не співали,
В Польщі замки запалали.
У пожарі жида шкварить
І з пожару люльку палить

Палій!

Де був замок - попелище,
Де цвів город - там кладбище.
Враже поле кров''ю мочить
І об камінь шаблю точить.

Ще й не мріло, не світало,
Польщі край як не бувало.
У Палія на причілку
Крикнув півень на засіку:

"Кукуріку!"

Програш: Em C G H7 (5)

Люлька в роті зашкварчала,
Шабля в ніжнах забряжчала -
Шабля різанину чує,
Люлька пожари віщує.

Сидіть вдома на покої
Не пристало пластунові.
Склич, пластуне, склич дружину,
Йди, пластуне, в Україну.

Програш: Em C G H7 (4)','[''pisni.org.ua'', ''cat:bardivski'', ''cat:istorychni'', ''cat:kozacki'', ''cat:patriotic'', ''Бардівські пісні'', ''Історичні пісні'', ''Козацькі пісні'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_94889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_94889','Пісня про Палія','Вступ:  Em C G H7  (4)

Люлька в роті зашкварчала,
Шабля в ніжнах забряжчала -
Шабля різанину чує,
Люлька пожари віщує.

Сидіть вдома на покої
Не пристало козакові.
Склич, козаче, склич дружину,
Йди, Палію, в Ляхівщину.

Програш: Em C G H7 (2)

Годі, коню, в стійлі спати,
Їдем ляхів полякати.
Швидше мчи, ніж кремнем збита
Згасне іскра від копита.

Хто, як стрілка, із майдану
Вихрем мчиться за Украйну.
Яр, ліс, річка й туча синя -
Козакові не запина.

Програш.

Хто в траві - врівні з травою,
Хто в воді - врівні з водою.
Хто у лісі - врівні з лісом,
Ніччю перевертнем-бісом.

Ранні півні не співали,
В Польщі замки запалали.
У пожарі жида шкварить
І з пожару люльку палить

Палій!

Де був замок - попелище,
Де цвів город - там кладбище.
Враже поле кров''ю мочить
І об камінь шаблю точить.

Ще й не мріло, не світало,
Польщі край як не бувало.
У Палія на причілку
Крикнув півень на засіку:

"Кукуріку!"

Програш: Em C G H7 (5)

Люлька в роті зашкварчала,
Шабля в ніжнах забряжчала -
Шабля різанину чує,
Люлька пожари віщує.

Сидіть вдома на покої
Не пристало пластунові.
Склич, пластуне, склич дружину,
Йди, пластуне, в Україну.

Програш: Em C G H7 (4)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_94889_l1','pisniua_94889','YouTube','https://www.youtube.com/watch?v=VEOe1RE0Fy4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9514383';
DELETE FROM song_versions WHERE song_id = 'pisniua_9514383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9514383';
DELETE FROM songs WHERE id = 'pisniua_9514383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9514383','Найкращі подруги','Музика: Володимир Будейчук Слова: Ірина Зінковська. Виконує: Катерина Бужинська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Найкращі подруги, мов рідні сестри!
Найкращі подруги, як дві зорі!
Твій біль ножем в моєму серці,
Твій біль в моєму серці!..
Найкращі подруги - це я і ти!..

Мій дім для тебе назавжди відкритий,
У щасті й тузі ти мені дзвони!
Як хочеться, щоби і наші діти
Дружити вміли так, як ми!
Ціную і люблю тебе такою!
Красива, вірна, добра і проста!
Хай щастя ллється у твій дім рікою,
І хай міцніє дружба у віках!

Приспів:
Найкращі подруги, мов рідні сестри!
Найкращі подруги, як дві зорі!
Твій біль ножем в моєму серці,
Твій біль в моєму серці!..
Твій успіх окриляє мій політ!
Найкращі подруги - дві таємниці!
Тобі бажаю завжди так цвісти!
Хай все омріяне здійсниться,
Жадане все здійсниться!..
Найкращі подруги - це я і ти!..

Мене завжди ти серцем відчуваєш,
В тобі завжди цвіте душі краса,
В тобі нема корисливості й фальші,
Ти, як і я, ще віриш в чудеса!
Ціную і люблю тебе такою!
Красива, вірна, добра і проста!
Хай щастя ллється у твій дім рікою,
І хай міцніє дружба у віках!

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''cat:zahalni-cinnosti'', ''Пісні про дружбу'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9514383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9514383','Найкращі подруги','Найкращі подруги, мов рідні сестри!
Найкращі подруги, як дві зорі!
Твій біль ножем в моєму серці,
Твій біль в моєму серці!..
Найкращі подруги - це я і ти!..

Мій дім для тебе назавжди відкритий,
У щасті й тузі ти мені дзвони!
Як хочеться, щоби і наші діти
Дружити вміли так, як ми!
Ціную і люблю тебе такою!
Красива, вірна, добра і проста!
Хай щастя ллється у твій дім рікою,
І хай міцніє дружба у віках!

Приспів:
Найкращі подруги, мов рідні сестри!
Найкращі подруги, як дві зорі!
Твій біль ножем в моєму серці,
Твій біль в моєму серці!..
Твій успіх окриляє мій політ!
Найкращі подруги - дві таємниці!
Тобі бажаю завжди так цвісти!
Хай все омріяне здійсниться,
Жадане все здійсниться!..
Найкращі подруги - це я і ти!..

Мене завжди ти серцем відчуваєш,
В тобі завжди цвіте душі краса,
В тобі нема корисливості й фальші,
Ти, як і я, ще віриш в чудеса!
Ціную і люблю тебе такою!
Красива, вірна, добра і проста!
Хай щастя ллється у твій дім рікою,
І хай міцніє дружба у віках!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9514383_l1','pisniua_9514383','YouTube','https://www.youtube.com/watch?v=96pyMrmlHf0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_948787';
DELETE FROM song_versions WHERE song_id = 'pisniua_948787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_948787';
DELETE FROM songs WHERE id = 'pisniua_948787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_948787','Стою у лісі самотою','Українська народна пісня. Виконує: Акорд','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,NULL,'Стою у лісі самотою,
Бачу своє рідне село.
В ріднім селі чути співають,  |
А в мене серденько звело.     | (2)

Давно за північ, та не спиться
Снуються думи в голові
"Чи доживу я, чи побачу       |
Вкраїну вільну, не в ярмі?"   | (2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_948787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_948787','Стою у лісі самотою','Стою у лісі самотою,
Бачу своє рідне село.
В ріднім селі чути співають,  |
А в мене серденько звело.     | (2)

Давно за північ, та не спиться
Снуються думи в голові
"Чи доживу я, чи побачу       |
Вкраїну вільну, не в ярмі?"   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_9504683';
DELETE FROM song_versions WHERE song_id = 'pisniua_9504683';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9504683';
DELETE FROM songs WHERE id = 'pisniua_9504683';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9504683','Це моя земля','Музика: Дмитро Білаш Слова: Міла Кирилюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ти скажи, що нам все наснилось,
Що за вікнами не війна
Ми з тобою ураз змінились,
За свободу зросла ціна...
Ти - боєць в окопі холоднім,
Захищаєш землю святу,
Ми усі за крок до безодні,
А я вірю в силу твою!

Приспів:
Це моя земля! Це твоя земля
Із полями безмежно широкими!
Буде проклята ця страшна війна,
А дерева ще будуть високими!
Заколосяться золоті поля,
Зацвітуть вишні пишними гронами!
Це моя земля! Це твоя земля
Задзвенить переможними дзвонами!

Обіцяй, що у нас все буде,
Ми народимо доньок, синів,
І зростатимуть вільні люди
Тут, у рідній своїй землі!
Хочу, щоб було чисте небо,
Хай повернуться журавлі!
Хай летять пісні вільним степом,
І шумлять зелені гаї!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9504683'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9504683','Це моя земля','Ти скажи, що нам все наснилось,
Що за вікнами не війна
Ми з тобою ураз змінились,
За свободу зросла ціна...
Ти - боєць в окопі холоднім,
Захищаєш землю святу,
Ми усі за крок до безодні,
А я вірю в силу твою!

Приспів:
Це моя земля! Це твоя земля
Із полями безмежно широкими!
Буде проклята ця страшна війна,
А дерева ще будуть високими!
Заколосяться золоті поля,
Зацвітуть вишні пишними гронами!
Це моя земля! Це твоя земля
Задзвенить переможними дзвонами!

Обіцяй, що у нас все буде,
Ми народимо доньок, синів,
І зростатимуть вільні люди
Тут, у рідній своїй землі!
Хочу, щоб було чисте небо,
Хай повернуться журавлі!
Хай летять пісні вільним степом,
І шумлять зелені гаї!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9504683_l1','pisniua_9504683','YouTube','https://www.youtube.com/watch?v=gnspuT6_10I','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9504683_l2','pisniua_9504683','YouTube','https://www.youtube.com/watch?v=oovEmur4yWQ','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9516384';
DELETE FROM song_versions WHERE song_id = 'pisniua_9516384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9516384';
DELETE FROM songs WHERE id = 'pisniua_9516384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9516384','Руна полонина','Музика: Петро Чорт Слова: Петро Чорт','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Петро Чорт.','Ай, руна полонина, руна полонина
Не дури ня, біля вино, бо я - не дітина!
Не дури ня, біля вино, бо я - не дітина.

Ай бідненька дівчина помахує пальцьом:
Дай ми, Боже, ленгарійка хоть із одним яйцьом,
Хоть із одним яйцьом!

Ай піду я в Хмельницьку бурячки копати,
Та гі маю їх копати дам ся пожвакати.

Вертепийку, Вертепийку, заверни телятка,
Як і в тебе, так і в мене сірі вічинятка,
Карі вічинятка.

Ай, Мигалю, Мигалю, учини ми лялю
Із ручками тай ніжками, най ся забавляю,
Най ся забавляю.

А поляна зелена, поляна зелена,
На поляні файні дівки тай вода студена,
Тай вода студена!

Тече вода з-під явора, а потичок повний
Та де ти ся краса діла, хлопче мололенький?

Ай, била видна мама єдна єдиниця,
Я на воду не ходила, бо в саду кирниця,
Я на воду не ходила!','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9516384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9516384','Руна полонина','Ай, руна полонина, руна полонина
Не дури ня, біля вино, бо я - не дітина!
Не дури ня, біля вино, бо я - не дітина.

Ай бідненька дівчина помахує пальцьом:
Дай ми, Боже, ленгарійка хоть із одним яйцьом,
Хоть із одним яйцьом!

Ай піду я в Хмельницьку бурячки копати,
Та гі маю їх копати дам ся пожвакати.

Вертепийку, Вертепийку, заверни телятка,
Як і в тебе, так і в мене сірі вічинятка,
Карі вічинятка.

Ай, Мигалю, Мигалю, учини ми лялю
Із ручками тай ніжками, най ся забавляю,
Най ся забавляю.

А поляна зелена, поляна зелена,
На поляні файні дівки тай вода студена,
Тай вода студена!

Тече вода з-під явора, а потичок повний
Та де ти ся краса діла, хлопче мололенький?

Ай, била видна мама єдна єдиниця,
Я на воду не ходила, бо в саду кирниця,
Я на воду не ходила!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9516384_l1','pisniua_9516384','YouTube','https://www.youtube.com/watch?v=n3iVQqfZkJo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9504787';
DELETE FROM song_versions WHERE song_id = 'pisniua_9504787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9504787';
DELETE FROM songs WHERE id = 'pisniua_9504787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9504787','Пречудово в світі жити',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Пречудово в світі жити
І по-справжньому дружити,
І любити геть усіх -       |
Хай лунають пісня й сміх!  | (2)

Гарно друзів вірних мати,
З ними у танку кружляти,
Пісеньки співати, гратись, |
З друзями не розлучатись.  | (2)

Пісеньки співати, гратись,
З друзями не розлучатись!
Пісеньки співати, гратись,
З друзями не розлучатись!','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9504787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9504787','Пречудово в світі жити','Пречудово в світі жити
І по-справжньому дружити,
І любити геть усіх -       |
Хай лунають пісня й сміх!  | (2)

Гарно друзів вірних мати,
З ними у танку кружляти,
Пісеньки співати, гратись, |
З друзями не розлучатись.  | (2)

Пісеньки співати, гратись,
З друзями не розлучатись!
Пісеньки співати, гратись,
З друзями не розлучатись!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9504787_l1','pisniua_9504787','YouTube','https://www.youtube.com/watch?v=90FTQzHlvmo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9504787_l2','pisniua_9504787','YouTube','https://www.youtube.com/watch?v=_q2PgVJAgNg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9495787';
DELETE FROM song_versions WHERE song_id = 'pisniua_9495787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9495787';
DELETE FROM songs WHERE id = 'pisniua_9495787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9495787','Янгол з неба сповістив','Музика: Оксана Пічугіна Слова: Оксана Пічугіна','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Янгол з неба сповістив
Радісну новину,
Й задзвенів колядок спів |
В цю зимову днину!       | (2)

Народився Божий син,
В яслах, не у хаті,
Пастушки дари несуть     |
Тій святій дитяті!       | (2)

Щастя йде у кожен дім,
Світ немов змінився,
Ой, радуйся, земле, син  |
Божий народився!         | (2)','[''pisni.org.ua'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9495787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9495787','Янгол з неба сповістив','Янгол з неба сповістив
Радісну новину,
Й задзвенів колядок спів |
В цю зимову днину!       | (2)

Народився Божий син,
В яслах, не у хаті,
Пастушки дари несуть     |
Тій святій дитяті!       | (2)

Щастя йде у кожен дім,
Світ немов змінився,
Ой, радуйся, земле, син  |
Божий народився!         | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9495787_l1','pisniua_9495787','YouTube','https://www.youtube.com/watch?v=Gg6Gz1-isWY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9495787_l2','pisniua_9495787','YouTube','https://www.youtube.com/watch?v=7wB8R63kZFs','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9500487';
DELETE FROM song_versions WHERE song_id = 'pisniua_9500487';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9500487';
DELETE FROM songs WHERE id = 'pisniua_9500487';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9500487','Молитва за Захисників та Україну','Музика: Олена Мачайло Слова: Зоряна Лісевич','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Наш татусьо пішов на війну,
Захищає мене і мамусю!
Свого тата я сильно люблю
І за нього я щиро молюся.
Любий ангеле, що в небесах,
Дуже хочу тебе попрохати:
Розгорни свої крила, як птах,
І від куль заступи мого тата!

Приспів:
Мій любий ангеле святий,
Ти білі крилонька розкрий,
І день, і ніч охороняй
Захисників та рідний край!
Мій любий ангеле святий,
Над Україною лети!
Її Господнім світлом Ти
Благослови і освіти! Освіти!

Я малюю свого татуся,
На малюнку він знову зі мною!
І радіє родина уся -
Бо живий і вернувся героєм!
Божий Ангеле, що угорі,
Глянь на землю - війна не стихає...
Волонтери тут і лікарі,
Заступись і за них, я прохаю!..

Приспів.','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9500487'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9500487','Молитва за Захисників та Україну','Наш татусьо пішов на війну,
Захищає мене і мамусю!
Свого тата я сильно люблю
І за нього я щиро молюся.
Любий ангеле, що в небесах,
Дуже хочу тебе попрохати:
Розгорни свої крила, як птах,
І від куль заступи мого тата!

Приспів:
Мій любий ангеле святий,
Ти білі крилонька розкрий,
І день, і ніч охороняй
Захисників та рідний край!
Мій любий ангеле святий,
Над Україною лети!
Її Господнім світлом Ти
Благослови і освіти! Освіти!

Я малюю свого татуся,
На малюнку він знову зі мною!
І радіє родина уся -
Бо живий і вернувся героєм!
Божий Ангеле, що угорі,
Глянь на землю - війна не стихає...
Волонтери тут і лікарі,
Заступись і за них, я прохаю!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9500487_l1','pisniua_9500487','YouTube','https://www.youtube.com/watch?v=NWwA4CiC8WM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_95188';
DELETE FROM song_versions WHERE song_id = 'pisniua_95188';
DELETE FROM songs_fts WHERE song_id = 'pisniua_95188';
DELETE FROM songs WHERE id = 'pisniua_95188';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_95188','Любіть Україну','Музика: Віктор Лузан, Богдан Шиптур Слова: Володимир Сосюра. Виконує: Український народний хор Заспів','uk','ukraine_1991',NULL,NULL,'"Перлини Української поезії..."',NULL,'Любіть Україну, як сонце, любіть,
Як вітер, і трави, і води,
В годину щасливу і в радості мить,
Любіть у годину негоди! (2)

Любіть Україну у сні й наяву,
Вишневу свою Україну,
Красу її, вічно живу і нову,
І мову її солов''їну. (2)

Для нас вона в світлі єдина, одна
В просторів солодкому чарі,
Вона у зірках і у вербах вона,
І в кожному серця ударі. (2)

Юначе! Хай буде для неї твій сміх,
І сльозви, і все до загину...
Не можна любити народів других,
Коли ти не любиш Вкарїну. (2)

Дівчино! Як небо її голубе,
Люби  її кожну хвилину.
Коханий любить не захоче тебе,
Коли ти не любиш Вкраїну. (2)

Любіть у коханні, в труді, у бою,
Як пісню, що лине зорею,
Всім серцем любіть Україну свою,
І вічні ми будемо з нею! (2)','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_95188'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_95188','Любіть Україну','Любіть Україну, як сонце, любіть,
Як вітер, і трави, і води,
В годину щасливу і в радості мить,
Любіть у годину негоди! (2)

Любіть Україну у сні й наяву,
Вишневу свою Україну,
Красу її, вічно живу і нову,
І мову її солов''їну. (2)

Для нас вона в світлі єдина, одна
В просторів солодкому чарі,
Вона у зірках і у вербах вона,
І в кожному серця ударі. (2)

Юначе! Хай буде для неї твій сміх,
І сльозви, і все до загину...
Не можна любити народів других,
Коли ти не любиш Вкарїну. (2)

Дівчино! Як небо її голубе,
Люби  її кожну хвилину.
Коханий любить не захоче тебе,
Коли ти не любиш Вкраїну. (2)

Любіть у коханні, в труді, у бою,
Як пісню, що лине зорею,
Всім серцем любіть Україну свою,
І вічні ми будемо з нею! (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_95188_l1','pisniua_95188','YouTube','https://www.youtube.com/watch?v=9YyOcjJ_nqo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9529580';
DELETE FROM song_versions WHERE song_id = 'pisniua_9529580';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9529580';
DELETE FROM songs WHERE id = 'pisniua_9529580';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9529580','Живемо одне життя','Музика: Artison Слова: Artison','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Час мене навчив,
Лише довіряти тим,
Хто був поруч у пітьмі,
Разом зі мною світив
На той шлях, який мітив.
Моменти, коли все,
Кінець, напевно, настав,
Поруч були, але ті,
Від кого я не чекав.
Ми грішні, але прагнемо
Попасти в рай.
Ми рівні, але кричимо
Із різних зграй.
Вдихай, вони казали,
Ти тільки вдихай!
Але, пірнувши в цю безодню,
Я втрачаю край...

Приспів:
Я просто живу!.. Я живу!..
Пам''ятаю тих, кого любив
І тих, кого люблю!..
Я живу!.. я живу!..
Пам''ятаю тих, кого любив
І тих, кого люблю!..

Хтось втрачає дім,
Але не втрачає віри!
Хтось сім''ю будує,
А хто грає досі в ігри.
Навіть сама темна ніч
Закінчиться світлом!
Вітрила лише відкрий -
Наповняться вітром!
Тим, кому потрібен,
Я вам душу доручаю,
Кому не потрібен,
Я назавжди відпускаю!
І про що слова цієї пісні,
Шариш, знаю: Живемо
Одне життя, удачі бажаю!

Приспів.

Я живу!.. я живу!..      |
Пам''ятаю тих, кого любив |
І тих, кого люблю!..     | (2)','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9529580'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9529580','Живемо одне життя','Час мене навчив,
Лише довіряти тим,
Хто був поруч у пітьмі,
Разом зі мною світив
На той шлях, який мітив.
Моменти, коли все,
Кінець, напевно, настав,
Поруч були, але ті,
Від кого я не чекав.
Ми грішні, але прагнемо
Попасти в рай.
Ми рівні, але кричимо
Із різних зграй.
Вдихай, вони казали,
Ти тільки вдихай!
Але, пірнувши в цю безодню,
Я втрачаю край...

Приспів:
Я просто живу!.. Я живу!..
Пам''ятаю тих, кого любив
І тих, кого люблю!..
Я живу!.. я живу!..
Пам''ятаю тих, кого любив
І тих, кого люблю!..

Хтось втрачає дім,
Але не втрачає віри!
Хтось сім''ю будує,
А хто грає досі в ігри.
Навіть сама темна ніч
Закінчиться світлом!
Вітрила лише відкрий -
Наповняться вітром!
Тим, кому потрібен,
Я вам душу доручаю,
Кому не потрібен,
Я назавжди відпускаю!
І про що слова цієї пісні,
Шариш, знаю: Живемо
Одне життя, удачі бажаю!

Приспів.

Я живу!.. я живу!..      |
Пам''ятаю тих, кого любив |
І тих, кого люблю!..     | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9529580_l1','pisniua_9529580','YouTube','https://www.youtube.com/watch?v=U-cIvi1T4Z0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9517686';
DELETE FROM song_versions WHERE song_id = 'pisniua_9517686';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9517686';
DELETE FROM songs WHERE id = 'pisniua_9517686';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9517686','Великодня пісня','Музика: Оксана Пічугіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Задзвеніли дзвони спозаранку,
Заспівали янголи з небес!
Ми сьогодні встали на світанку,
Бо Христос воскрес!
Воістину воскрес!

Приспів:
Хай же пісня ця звеселить серця!
Бо Христос воістину воскрес!

Освятили кошик великодній,
І душа очікує чудес!
Вся природа ожила сьогодні,
Бо Христос воскрес!
Воістину воскрес!

Приспів.

За столом зібралася родина,
І в молитві з нами світ увесь!
Дай же, Боже, миру в Україну,
Бо Христос воскрес!
Воістину воскрес!

Приспів. (2)','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9517686'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9517686','Великодня пісня','Задзвеніли дзвони спозаранку,
Заспівали янголи з небес!
Ми сьогодні встали на світанку,
Бо Христос воскрес!
Воістину воскрес!

Приспів:
Хай же пісня ця звеселить серця!
Бо Христос воістину воскрес!

Освятили кошик великодній,
І душа очікує чудес!
Вся природа ожила сьогодні,
Бо Христос воскрес!
Воістину воскрес!

Приспів.

За столом зібралася родина,
І в молитві з нами світ увесь!
Дай же, Боже, миру в Україну,
Бо Христос воскрес!
Воістину воскрес!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9517686_l1','pisniua_9517686','YouTube','https://www.youtube.com/watch?v=9X7WIM_0Czc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9517686_l2','pisniua_9517686','YouTube','https://www.youtube.com/watch?v=HicLpPD2wmg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9520889';
DELETE FROM song_versions WHERE song_id = 'pisniua_9520889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9520889';
DELETE FROM songs WHERE id = 'pisniua_9520889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9520889','Терпи, терпи – терпець тебе шліфує','Слова: Василь Стус','uk','ukraine_1991',NULL,NULL,'аудіозапис','Нейромережа оживляє безсмертний вірш Василя Стуса "Терпи, терпи – терпець тебе шліфує" у неповторному музичному виконанні. Слухайте, як штучний інтелект перетворює класичну українську поезію на сучасну пісню, зберігаючи глибину та силу оригінального твору.','Терпи, терпи — терпець тебе шліфує,
Сталить твій дух — тож і терпи, терпи.
Ніхто тебе з недолі не врятує,
Ніхто не зіб''є з власної тропи.

На ній і стій, і стрій — допоки скону,
Допоки світу й сонця — стій і стій.
Хай шлях — до раю, пекла чи полону —
Усе пройди і винести зумій.

Торуй свій шлях — той, що твоїм назвався,
Той, що обрав тебе навіки вік.
До нього змалку ти заповідався,
До нього сам Господь тебе прирік!

Терпи!.. І стій, і стрій!..
Зумій найти твій шлях навік!..
Терпи!.. І стій, і стрій!..
Зумій пройти твій шлях навік!..
Терпи!.. Терпи!.. Терпи!..

На ній і стій, і стрій — допоки скону,
Допоки світу й сонця — стій і стій.
Хай шлях — до раю, пекла чи полону —
Усе пройди і винести зумій.
Терпи!.. Терпи!.. Терпи!..
Терпи!.. Терпи!.. Терпи!..
Терпи!.. Терпи!.. Терпи!..','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9520889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9520889','Терпи, терпи – терпець тебе шліфує','Терпи, терпи — терпець тебе шліфує,
Сталить твій дух — тож і терпи, терпи.
Ніхто тебе з недолі не врятує,
Ніхто не зіб''є з власної тропи.

На ній і стій, і стрій — допоки скону,
Допоки світу й сонця — стій і стій.
Хай шлях — до раю, пекла чи полону —
Усе пройди і винести зумій.

Торуй свій шлях — той, що твоїм назвався,
Той, що обрав тебе навіки вік.
До нього змалку ти заповідався,
До нього сам Господь тебе прирік!

Терпи!.. І стій, і стрій!..
Зумій найти твій шлях навік!..
Терпи!.. І стій, і стрій!..
Зумій пройти твій шлях навік!..
Терпи!.. Терпи!.. Терпи!..

На ній і стій, і стрій — допоки скону,
Допоки світу й сонця — стій і стій.
Хай шлях — до раю, пекла чи полону —
Усе пройди і винести зумій.
Терпи!.. Терпи!.. Терпи!..
Терпи!.. Терпи!.. Терпи!..
Терпи!.. Терпи!.. Терпи!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9520889_l1','pisniua_9520889','YouTube','https://www.youtube.com/watch?v=Bq2_CA_2Xac','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9520889_l2','pisniua_9520889','YouTube','https://www.youtube.com/watch?v=_0NsQUvOog0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9520889_l3','pisniua_9520889','YouTube','https://www.youtube.com/watch?v=5WvbztGrr4o','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_9527188';
DELETE FROM song_versions WHERE song_id = 'pisniua_9527188';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9527188';
DELETE FROM songs WHERE id = 'pisniua_9527188';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9527188','Донечка','Музика: Марія Мазур Слова: Марія Мазур','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ранок прокидається, дзвінко виграє,
А мені всміхається серденько моє!..
Дві малих долонечки і прості слова:
Тату! Тату, донечка, а душа співа!

Приспів:
Ось така дівчинка! Ось така квіточка! |
Ось таке щастя моє!                   |
Ось така ягідка! Ось така зірочка!    |
Ось таке сонце моє, що гріє!          | (2)

Все життя змінилося, я уже не я,
Як на світ з''явилася крихітка моя!
Небо, зорі, сонечко міцно пригорну,
Так люблю я донечко, лиш тебе одну!

Приспів.

Теплий вечір падає в синю далечінь,
Засинає, радує на моїм плечі,
Та, кому присвячую всі свої пісні,
Посміхнеться татові тихо уві сні...

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9527188'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9527188','Донечка','Ранок прокидається, дзвінко виграє,
А мені всміхається серденько моє!..
Дві малих долонечки і прості слова:
Тату! Тату, донечка, а душа співа!

Приспів:
Ось така дівчинка! Ось така квіточка! |
Ось таке щастя моє!                   |
Ось така ягідка! Ось така зірочка!    |
Ось таке сонце моє, що гріє!          | (2)

Все життя змінилося, я уже не я,
Як на світ з''явилася крихітка моя!
Небо, зорі, сонечко міцно пригорну,
Так люблю я донечко, лиш тебе одну!

Приспів.

Теплий вечір падає в синю далечінь,
Засинає, радує на моїм плечі,
Та, кому присвячую всі свої пісні,
Посміхнеться татові тихо уві сні...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9527188_l1','pisniua_9527188','YouTube','https://www.youtube.com/watch?v=-qDC4GxJ_A8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9506188';
DELETE FROM song_versions WHERE song_id = 'pisniua_9506188';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9506188';
DELETE FROM songs WHERE id = 'pisniua_9506188';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9506188','Королева','Музика: Roma Tuz Слова: Roma Tuz','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Погляд вниз, твій каприз,
Його істерика...
Кожен звук, дотик рук,
Але манери так схожі
На ноти швидкого набору,
Як тепер вилізти
З його мінору?..
Душу рятуй! Перебинтуй!
І підборіддя вище!
Ти як туман, безмежна
Там, де править тиша...
Дівчинка сильна крізь
Досвід за двадцять,
Та зараз ці цифри
Нічого не значать, бо

Приспів:
Коли подруги казали: Королева!  |
Поза очі називали тебе: Стерво! |
Приміряли ту корону кришталеву, |
А ти бачила холодну металеву... | (2)

Кориці в каву більше,
Четвер чи середа - раділи,
Що не пише тобі твоя біда.
Розмови летіли, дерева жовтіли,
Ти так залишатись одна
Не хотіла, стояла та сіла...
Зранку робота, салони, шопінг,
Дівчинка-авторитет...
Помада червона приховує,
Хто вона... Тільки єдиний
Паркет рахує на собі
Щовечора дівчинки сльози...
Розтанула дама
На мокрій підлозі...

Приспів.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9506188'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9506188','Королева','Погляд вниз, твій каприз,
Його істерика...
Кожен звук, дотик рук,
Але манери так схожі
На ноти швидкого набору,
Як тепер вилізти
З його мінору?..
Душу рятуй! Перебинтуй!
І підборіддя вище!
Ти як туман, безмежна
Там, де править тиша...
Дівчинка сильна крізь
Досвід за двадцять,
Та зараз ці цифри
Нічого не значать, бо

Приспів:
Коли подруги казали: Королева!  |
Поза очі називали тебе: Стерво! |
Приміряли ту корону кришталеву, |
А ти бачила холодну металеву... | (2)

Кориці в каву більше,
Четвер чи середа - раділи,
Що не пише тобі твоя біда.
Розмови летіли, дерева жовтіли,
Ти так залишатись одна
Не хотіла, стояла та сіла...
Зранку робота, салони, шопінг,
Дівчинка-авторитет...
Помада червона приховує,
Хто вона... Тільки єдиний
Паркет рахує на собі
Щовечора дівчинки сльози...
Розтанула дама
На мокрій підлозі...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9506188_l1','pisniua_9506188','YouTube','https://www.youtube.com/watch?v=kdQo3cUjzng','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9517383';
DELETE FROM song_versions WHERE song_id = 'pisniua_9517383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9517383';
DELETE FROM songs WHERE id = 'pisniua_9517383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9517383','Білі ночі','Музика: Masha Kondratenko, ALESSON Слова: Masha Kondratenko, OSTY','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Це були білі-білі ночі, |
Музика на двох!..       |
На мені твоя сорочка,   |
А на серці шторм...     |
Були білі-білі ночі,    |
Білі-білі ночі,         |
П''ять бокалів вина      |
І музика на двох!..     | (2)

Мовчу, я до тебе лину
Крізь міста і листи,
І плутались літери,
Блукали думки!
Поки бігла до тебе,
Я зносила всі кроси,
Я прийду о восьмій
П''яна і боса...
Старі, тісні квартири
Та й загублений район,
Сльози щастя без причини,
Наш улюблений балкон.
Танцювати так розкуто,
Заховатися у дим,
Ми ніколи вже не будемо
Такими молодими...

Приспів.

Кричи, розбий моє серце
Тихим словом кривим,
Чому біля тебе
Почуття провини?..
Такої, як ти, мені не знайти,
Лише біля тебе почуваюсь живим!..
І знову перевернутий твій телефон,
Я просто хочу знати, я тобі хто?
Маємо безліч фото,
Навіть спільний альбом,
Але він прихований, як наша любов...

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9517383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9517383','Білі ночі','Приспів:
Це були білі-білі ночі, |
Музика на двох!..       |
На мені твоя сорочка,   |
А на серці шторм...     |
Були білі-білі ночі,    |
Білі-білі ночі,         |
П''ять бокалів вина      |
І музика на двох!..     | (2)

Мовчу, я до тебе лину
Крізь міста і листи,
І плутались літери,
Блукали думки!
Поки бігла до тебе,
Я зносила всі кроси,
Я прийду о восьмій
П''яна і боса...
Старі, тісні квартири
Та й загублений район,
Сльози щастя без причини,
Наш улюблений балкон.
Танцювати так розкуто,
Заховатися у дим,
Ми ніколи вже не будемо
Такими молодими...

Приспів.

Кричи, розбий моє серце
Тихим словом кривим,
Чому біля тебе
Почуття провини?..
Такої, як ти, мені не знайти,
Лише біля тебе почуваюсь живим!..
І знову перевернутий твій телефон,
Я просто хочу знати, я тобі хто?
Маємо безліч фото,
Навіть спільний альбом,
Але він прихований, як наша любов...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9517383_l1','pisniua_9517383','YouTube','https://www.youtube.com/watch?v=Sdyoy4feRGc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9500888';
DELETE FROM song_versions WHERE song_id = 'pisniua_9500888';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9500888';
DELETE FROM songs WHERE id = 'pisniua_9500888';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9500888','Різдво Христове','Музика: Наталія Май Слова: Наталія Май','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'В кожну хату ми йдемо пісню заспівати,
Зірку ясну несемо, щоб колядувати!
Не барися, відчиняй, свято йде чудове!
З нами пісню заспівай про Різдво Христове!
Най-на-на-най! Най-на-на-най!
Най-на-на-най! Свято йде чудове!
Най-на-на-най! Най-на-на-най!
Най-на-на-най! Це Різдво Христове!

Побажаємо добра, щастя і любові
Хай радіє дітвора, в нас Різдво Христове!
В небі зіронька ясна, місяць засвітився,
Пісня радісна луна, то Христос родився!
Най-на-на-най! Най-на-на-най!
Най-на-на-най! Місяць засвітився!
Най-на-на-най! Най-на-на-най!
Най-на-на-най! То Христос родився!
Не барися, відчиняй, свято йде чудове!
З нами пісню заспівай про Різдво Христове!
Най-на-на-най! Най-на-на-най!      |
Най-на-на-най! Свято йде чудове!   |
Най-на-на-най! Най-на-на-най!      |
Най-на-на-най! Це Різдво Христове! | (2)','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9500888'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9500888','Різдво Христове','В кожну хату ми йдемо пісню заспівати,
Зірку ясну несемо, щоб колядувати!
Не барися, відчиняй, свято йде чудове!
З нами пісню заспівай про Різдво Христове!
Най-на-на-най! Най-на-на-най!
Най-на-на-най! Свято йде чудове!
Най-на-на-най! Най-на-на-най!
Най-на-на-най! Це Різдво Христове!

Побажаємо добра, щастя і любові
Хай радіє дітвора, в нас Різдво Христове!
В небі зіронька ясна, місяць засвітився,
Пісня радісна луна, то Христос родився!
Най-на-на-най! Най-на-на-най!
Най-на-на-най! Місяць засвітився!
Най-на-на-най! Най-на-на-най!
Най-на-на-най! То Христос родився!
Не барися, відчиняй, свято йде чудове!
З нами пісню заспівай про Різдво Христове!
Най-на-на-най! Най-на-на-най!      |
Най-на-на-най! Свято йде чудове!   |
Най-на-на-най! Най-на-на-най!      |
Най-на-на-най! Це Різдво Христове! | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9500888_l1','pisniua_9500888','YouTube','https://www.youtube.com/watch?v=npnSW-eFSqU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9500888_l2','pisniua_9500888','YouTube','https://www.youtube.com/watch?v=u79XnZiY3sc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9531683';
DELETE FROM song_versions WHERE song_id = 'pisniua_9531683';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9531683';
DELETE FROM songs WHERE id = 'pisniua_9531683';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9531683','Токсік','Музика: Oleg Shkarpeta Слова: Oleg Shkarpeta','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'А до неї заливають
Кожен день чоловіки,
Але їй ніхто не треба,
Бо в неї вже є.

Вона хотіла із ним під вінець,
А він - червоний прапорець.
Як же багато він розбив сердець,
Вона кладе цьому кінець...

А до неї заливають
Кожен день чоловіки,
Але їй ніхто не треба,
Бо в неї вже є.

Приспів:
У неї вже є токсік, маніпулятор,       |
Кон*ений аб''юзер, якому насрати.       |
Вона хотіла вміти танцювати бачату,    |
Але поки навчилась лиш його пробачати. | (2)

Емоційні гойдалки... Окей...
Емоційні гойдалки...

Вона хотіла з подругами апероль,
Але попала під контроль...
Вона ще відгрібає за своїх колишніх,
Але теперішнього не залишить!..
А до неї заливають
Кожен день чоловіки,
Але їй ніхто не треба,
Бо в неї вже є.

Приспів.

Емоційні гойдалки... Окей...
Емоційні гойдалки... Окей...','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9531683'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9531683','Токсік','А до неї заливають
Кожен день чоловіки,
Але їй ніхто не треба,
Бо в неї вже є.

Вона хотіла із ним під вінець,
А він - червоний прапорець.
Як же багато він розбив сердець,
Вона кладе цьому кінець...

А до неї заливають
Кожен день чоловіки,
Але їй ніхто не треба,
Бо в неї вже є.

Приспів:
У неї вже є токсік, маніпулятор,       |
Кон*ений аб''юзер, якому насрати.       |
Вона хотіла вміти танцювати бачату,    |
Але поки навчилась лиш його пробачати. | (2)

Емоційні гойдалки... Окей...
Емоційні гойдалки...

Вона хотіла з подругами апероль,
Але попала під контроль...
Вона ще відгрібає за своїх колишніх,
Але теперішнього не залишить!..
А до неї заливають
Кожен день чоловіки,
Але їй ніхто не треба,
Бо в неї вже є.

Приспів.

Емоційні гойдалки... Окей...
Емоційні гойдалки... Окей...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9531683_l1','pisniua_9531683','YouTube','https://www.youtube.com/watch?v=LVBcP0ewr8g','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9534384';
DELETE FROM song_versions WHERE song_id = 'pisniua_9534384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9534384';
DELETE FROM songs WHERE id = 'pisniua_9534384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9534384','Різдво','Музика: Chris Tomlin, Ed Cash, Matt Redman Слова: Chris Tomlin','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ангели звішають знов
Про божественну любов,
Це маленьке Немовля
Нам усім дало життя!
Наш Месія, Божий Син,
Зацарює вічно Він!

Приспів:
Різдво! Різдво!
Сина Бог послав Свого!
Різдво! Різдво!
Це любов до нас Його -
Світло життя до нас зійшло
В Різдво!

Божий Син і Син людський
Від початку пресвятий
Для страждань у світ прийшов,
Шоб явити нам любов!
Від гріха і зла звільнив,
Двері в вічність нам відкрив!

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9534384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9534384','Різдво','Ангели звішають знов
Про божественну любов,
Це маленьке Немовля
Нам усім дало життя!
Наш Месія, Божий Син,
Зацарює вічно Він!

Приспів:
Різдво! Різдво!
Сина Бог послав Свого!
Різдво! Різдво!
Це любов до нас Його -
Світло життя до нас зійшло
В Різдво!

Божий Син і Син людський
Від початку пресвятий
Для страждань у світ прийшов,
Шоб явити нам любов!
Від гріха і зла звільнив,
Двері в вічність нам відкрив!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9534384_l1','pisniua_9534384','YouTube','https://www.youtube.com/watch?v=4nmQGb6BJec','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9534384_l2','pisniua_9534384','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_9538281';
DELETE FROM song_versions WHERE song_id = 'pisniua_9538281';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9538281';
DELETE FROM songs WHERE id = 'pisniua_9538281';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9538281','Коляда-колядка','Музика: ШІ Слова: Зоряна Лісевич','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Йде Різдво снігами,
Ту-ду-ду-ду-ду,
Святкувати з нами
Коляд-коляду!

Приспів:
Коляда-колядка       |
Лунає тут і там!     |
Божеє Дитятко        |
Народилось нині нам! | (2)

Ангел із сурмою,
Наче білий птах,
Радо з новиною
Лине в небесах!

Приспів.

Зіронька Різдвяна
Золотом блищить.
Хай для всіх настане
Ця щаслива мить!

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9538281'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9538281','Коляда-колядка','Йде Різдво снігами,
Ту-ду-ду-ду-ду,
Святкувати з нами
Коляд-коляду!

Приспів:
Коляда-колядка       |
Лунає тут і там!     |
Божеє Дитятко        |
Народилось нині нам! | (2)

Ангел із сурмою,
Наче білий птах,
Радо з новиною
Лине в небесах!

Приспів.

Зіронька Різдвяна
Золотом блищить.
Хай для всіх настане
Ця щаслива мить!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9538281_l1','pisniua_9538281','YouTube','https://www.youtube.com/watch?v=aY1l8KKSuSg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9533487';
DELETE FROM song_versions WHERE song_id = 'pisniua_9533487';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9533487';
DELETE FROM songs WHERE id = 'pisniua_9533487';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9533487','Різдво','Слова: Анастасія Димид, Dominico','uk','ukraine_1991',NULL,NULL,'аудіозапис','Над створенням пісні працювала велика команда: Dominico, Анастасія Димид, Світлана Гричко, Олег Пономарьов, Богдан Криницький, Творча школа Домініко, Андрій Знімщиков, Людмила Хозінська, Анатолій Андрейчук, Роман Грузінський.','З неба прийшов нам Спаситель,
В яслах убогих родився для нас!
В Яслах Ісус був сповитий,
Радість велика осяяла нас!

Приспів:
Рождество! Слава Богу в небі!
Рождество! Славний день Різдва!
Ангели небесні і пісні чудесні
В день народження Христа!

Нині Христа прославляймо!
Радість і свято, і мир на землі!
Щиро Ісуса витаймо!
Хай Україна воскресне в борні!

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9533487'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9533487','Різдво','З неба прийшов нам Спаситель,
В яслах убогих родився для нас!
В Яслах Ісус був сповитий,
Радість велика осяяла нас!

Приспів:
Рождество! Слава Богу в небі!
Рождество! Славний день Різдва!
Ангели небесні і пісні чудесні
В день народження Христа!

Нині Христа прославляймо!
Радість і свято, і мир на землі!
Щиро Ісуса витаймо!
Хай Україна воскресне в борні!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9533487_l1','pisniua_9533487','YouTube','https://www.youtube.com/watch?v=16L9W2ksl9I','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9526580';
DELETE FROM song_versions WHERE song_id = 'pisniua_9526580';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9526580';
DELETE FROM songs WHERE id = 'pisniua_9526580';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9526580','Жінка з цікавим минулим',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Очі бачили кого ти обрав,
І не думай, що я обманула,
Від добра не чекають добра,
Що було - то було...
Моє кохання то не жарт і не гра,
Помилок я своїх не забула,
І ніжності повна душа
У жінки з цікавим минулим...

Приспів:
Ти - моя остання спроба!
Спроба! Спроба!
Я - твоя найвища проба!
Проба! Проба!
Ти скажи, що ти зі мною робиш?..
Мені так добре,
Що я тебе знайшла!..
Ти - моя остання спроба!
Спроба! Спроба!
Я - твоя найвища проба!
Проба! Пробач!
Я з тобою про всіх забула,
Коротка пам''ять
У жінки з цікавим минулим!..

А я сміялась, щоб не плакати знов,
Уночі згадаю всіх і забуду,
І скільки попереду спроб -
Хай буде, як буде!..
А ти кажеш, що мене покохав,
Та здається, що я це вже десь чула...
Самотність - любові ціна
У жінки з цікавим минулим...

Приспів.','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9526580'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9526580','Жінка з цікавим минулим','Очі бачили кого ти обрав,
І не думай, що я обманула,
Від добра не чекають добра,
Що було - то було...
Моє кохання то не жарт і не гра,
Помилок я своїх не забула,
І ніжності повна душа
У жінки з цікавим минулим...

Приспів:
Ти - моя остання спроба!
Спроба! Спроба!
Я - твоя найвища проба!
Проба! Проба!
Ти скажи, що ти зі мною робиш?..
Мені так добре,
Що я тебе знайшла!..
Ти - моя остання спроба!
Спроба! Спроба!
Я - твоя найвища проба!
Проба! Пробач!
Я з тобою про всіх забула,
Коротка пам''ять
У жінки з цікавим минулим!..

А я сміялась, щоб не плакати знов,
Уночі згадаю всіх і забуду,
І скільки попереду спроб -
Хай буде, як буде!..
А ти кажеш, що мене покохав,
Та здається, що я це вже десь чула...
Самотність - любові ціна
У жінки з цікавим минулим...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9526580_l1','pisniua_9526580','YouTube','https://www.youtube.com/watch?v=xJ4-MRYQL5M','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9526580_l2','pisniua_9526580','YouTube','https://www.youtube.com/watch?v=tQmB3q4W5UY','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9526580_l3','pisniua_9526580','YouTube','https://www.youtube.com/watch?v=BGQvCvHJ5gQ','video',NULL,3);
