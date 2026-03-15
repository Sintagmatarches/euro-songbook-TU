DELETE FROM song_links WHERE song_id = 'pisniua_2221777';
DELETE FROM song_versions WHERE song_id = 'pisniua_2221777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2221777';
DELETE FROM songs WHERE id = 'pisniua_2221777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2221777','В час, коли ніхто не бачить','Музика: Ганна Гаврилець. Виконує: Віталій Свирид','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В час, коли ніхто не бачить,
Над горою коник скаче,
Ні від кого, ні до кого
Під копитами дорога.
В час, коли ніхто не жде,
В синім небі хмара йде,
Ні від себе, ні до себе
Поспішає в синім небі.

Схоче - блискавку напише,
Схоче - сосни поколише,
Схоче - дощиком впаде,
Отако та хмара йде...

Йде, радіє і не бачить,
Що горою коник скаче
Ні від кого, ні до кого
Під копитами дорога.
Коник має сиву гриву,
Наздогнати неможливо.
І не треба доганяти,
Коник ляже скоро спати.

Хмарка уночі розтане,  |
Тиша на землі настане, |
Коник уві сні прийде,  |
Отако воно буде...     | (2)

Отако воно буде...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2221777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2221777','В час, коли ніхто не бачить','В час, коли ніхто не бачить,
Над горою коник скаче,
Ні від кого, ні до кого
Під копитами дорога.
В час, коли ніхто не жде,
В синім небі хмара йде,
Ні від себе, ні до себе
Поспішає в синім небі.

Схоче - блискавку напише,
Схоче - сосни поколише,
Схоче - дощиком впаде,
Отако та хмара йде...

Йде, радіє і не бачить,
Що горою коник скаче
Ні від кого, ні до кого
Під копитами дорога.
Коник має сиву гриву,
Наздогнати неможливо.
І не треба доганяти,
Коник ляже скоро спати.

Хмарка уночі розтане,  |
Тиша на землі настане, |
Коник уві сні прийде,  |
Отако воно буде...     | (2)

Отако воно буде...');
DELETE FROM song_links WHERE song_id = 'pisniua_2226293';
DELETE FROM song_versions WHERE song_id = 'pisniua_2226293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2226293';
DELETE FROM songs WHERE id = 'pisniua_2226293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2226293','Михаїлу','Музика: Тарас Компаніченко Слова: народні. Виконує: Хорея Козацька','uk','ukraine_1991',NULL,NULL,'Альбом "Хорея Козацька"2009 р однойменого гурту',NULL,'Молитися згодні
Возбранной воєводі.

Приспів:
Михаїле Архангеле чудний, |
Михаїле Архангеле дивний, |
Воїн бо він страшливий!   | (2)

А усе та перед богом
Стоїть за нас помог боронь.
Киють херувими і всі серафими.

Приспів.

І на страшнім суді
Заступником буде Архангеле святий
Всім нам многі літа!

Приспів.','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2226293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2226293','Михаїлу','Молитися згодні
Возбранной воєводі.

Приспів:
Михаїле Архангеле чудний, |
Михаїле Архангеле дивний, |
Воїн бо він страшливий!   | (2)

А усе та перед богом
Стоїть за нас помог боронь.
Киють херувими і всі серафими.

Приспів.

І на страшнім суді
Заступником буде Архангеле святий
Всім нам многі літа!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2226293_l1','pisniua_2226293','YouTube','https://www.youtube.com/watch?v=ENVJ9sB703w','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2226293_l2','pisniua_2226293','YouTube','https://www.youtube.com/watch?v=lJqQZZe5mDE','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2225212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2225212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2225212';
DELETE FROM songs WHERE id = 'pisniua_2225212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2225212','Не цілуй','Музика: Віктор Бронюк, Ірина Білик Слова: Віктор Бронюк, Ірина Білик. Виконує: Т.І.К. (Тік), Ірина Білик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ти писала листи
Святому Валентину,
Написала бажання
Одне-єдине,
Але не знала адреси,
Куди відправити.
Він тебе цілував,
Ти його цілувала,
Він тебе кохав,
Ти його не кохала,
Боялась правду сказати,
Щоб його не образити.

Не цілуй, не цілуй,
Не цілуй, коли не любиш...
Ти ж на ранок все забудеш,
Ти усе забудеш...
Не кохай, не кохай,
Як не віриш у кохання,
Перша фраза, як остання,
Перша і остання...

Тобі хотілось тепла,
Ти зігрітись хотіла,
Ти тулилась до його
Гарячого тіла,
І намагалась бій серця
Його почути,
А на ранок боялась
Докору совісті,
Але ми герої
Із різної повісті,
Де за сценарієм -
Вранці нам разом не бути...

Не цілуй, не цілуй,        |
Не цілуй, коли не любиш... |
Ти ж на ранок все забудеш, |
Ти усе забудеш...          |
Не кохай, не кохай,        |
Як не віриш у кохання,     |
Догорає ніч остання,       |
Перша і остання...         | (2)','[''pisni.org.ua'', ''cat:lirychni'', ''cat:nostalgia'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2225212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2225212','Не цілуй','Ти писала листи
Святому Валентину,
Написала бажання
Одне-єдине,
Але не знала адреси,
Куди відправити.
Він тебе цілував,
Ти його цілувала,
Він тебе кохав,
Ти його не кохала,
Боялась правду сказати,
Щоб його не образити.

Не цілуй, не цілуй,
Не цілуй, коли не любиш...
Ти ж на ранок все забудеш,
Ти усе забудеш...
Не кохай, не кохай,
Як не віриш у кохання,
Перша фраза, як остання,
Перша і остання...

Тобі хотілось тепла,
Ти зігрітись хотіла,
Ти тулилась до його
Гарячого тіла,
І намагалась бій серця
Його почути,
А на ранок боялась
Докору совісті,
Але ми герої
Із різної повісті,
Де за сценарієм -
Вранці нам разом не бути...

Не цілуй, не цілуй,        |
Не цілуй, коли не любиш... |
Ти ж на ранок все забудеш, |
Ти усе забудеш...          |
Не кохай, не кохай,        |
Як не віриш у кохання,     |
Догорає ніч остання,       |
Перша і остання...         | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2225212_l1','pisniua_2225212','YouTube','https://www.youtube.com/watch?v=qlvUgdcJgPw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_223616';
DELETE FROM song_versions WHERE song_id = 'pisniua_223616';
DELETE FROM songs_fts WHERE song_id = 'pisniua_223616';
DELETE FROM songs WHERE id = 'pisniua_223616';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_223616','Тиша навкруги','Музика: Олександр Богачук Слова: Олександр Богачук. Виконує: Тріо Мареничів, Ot Vinta, Рушничок, Таїсія Повалій, Йосип Кобзон, Made in Ukraine, Гурт Wszystko, Сестри Тельнюк, Олена Слободянюк','uk','ukraine_1991',NULL,NULL,'1. Надіслав Ярослав Богачук 2. Олександр Богачук. Горно: Поезії. — К.: Дніпро, 1984. — 216 с.','У збірці поезій О. Богачука (Дж. 2) приспів починається так: "Ой скажи мені..."','Тиша навкруги,
Сплять в росі луги.
Тільки ти, і я,
Й пісня солов''я*.

Приспів:
Розкажи мені,
Любиш ти чи ні?
І в очах сія:
"Я — навік твоя!"

Скільки я пройшов...
А тебе знайшов
У своїх краях,
Ластівко моя!

Приспів.

Згасла вже зоря,
Пісня солов''я,
Лиш любов сія —
І твоя, й моя.

Приспів.
* Відміна: І ясна зоря','[''pisni.org.ua'', ''cat:lirychni'', ''cat:romansy'', ''Пісні про кохання, ліричні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_223616'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_223616','Тиша навкруги','Тиша навкруги,
Сплять в росі луги.
Тільки ти, і я,
Й пісня солов''я*.

Приспів:
Розкажи мені,
Любиш ти чи ні?
І в очах сія:
"Я — навік твоя!"

Скільки я пройшов...
А тебе знайшов
У своїх краях,
Ластівко моя!

Приспів.

Згасла вже зоря,
Пісня солов''я,
Лиш любов сія —
І твоя, й моя.

Приспів.
* Відміна: І ясна зоря');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_223616_l1','pisniua_223616','YouTube','https://www.youtube.com/watch?v=wpzMWxVVH-8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_223616_l2','pisniua_223616','YouTube','https://www.youtube.com/watch?v=QqJOm1Fzz3I','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_223616_l3','pisniua_223616','YouTube','https://www.youtube.com/watch?v=IyEuajuJ2Ek','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2238420';
DELETE FROM song_versions WHERE song_id = 'pisniua_2238420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2238420';
DELETE FROM songs WHERE id = 'pisniua_2238420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2238420','Вінні Пух','Музика: Арсен Мірзоян Слова: Арсен Мірзоян. Виконує: Арсен Мірзоян','uk','ukraine_1991',NULL,NULL,'аудіозапис','arsen-music.com.ua/media/audio/VinniPuhmix.mp3','Мальовані квіти, веселі діти
По той бік екрану не злазять з дивану,
Побачили Вінні очі невинні,
Опілки не важні, бо серце справжнє.
Приспів:
А я лише хотів тебе привітати,
Повітряну кулю - зелену, зелену!
І "безвозмєздно" подарувати
Порожній горшечок із запахом меду!
А я лише хотів тебе привітати,
Із самого ранку - у  гості до тебе,
Але мій друг не вміє влучно стріляти,
І коє-хто не вірить, що я - синє небо!
Обурений досі - колючки у носі,
На моїх сідницях синці від рушниці,
Якби не кєнтуха - рожеві вуха -
Без нього б і пісня була нескладуха.
Приспів.
Я скоро повернусь, ще декілька серій,
Але б не хотів сваритися з режисером.
Якогось осла привезли на зйомки,
Той хвіст загубив десь у лісі, у йолках.
Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2238420'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2238420','Вінні Пух','Мальовані квіти, веселі діти
По той бік екрану не злазять з дивану,
Побачили Вінні очі невинні,
Опілки не важні, бо серце справжнє.
Приспів:
А я лише хотів тебе привітати,
Повітряну кулю - зелену, зелену!
І "безвозмєздно" подарувати
Порожній горшечок із запахом меду!
А я лише хотів тебе привітати,
Із самого ранку - у  гості до тебе,
Але мій друг не вміє влучно стріляти,
І коє-хто не вірить, що я - синє небо!
Обурений досі - колючки у носі,
На моїх сідницях синці від рушниці,
Якби не кєнтуха - рожеві вуха -
Без нього б і пісня була нескладуха.
Приспів.
Я скоро повернусь, ще декілька серій,
Але б не хотів сваритися з режисером.
Якогось осла привезли на зйомки,
Той хвіст загубив десь у лісі, у йолках.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2238420_l1','pisniua_2238420','YouTube','https://www.youtube.com/watch?v=gm_0cfp1Epo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2238420_l2','pisniua_2238420','YouTube','https://www.youtube.com/watch?v=9syP_5Of0bc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2238420_l3','pisniua_2238420','YouTube','https://www.youtube.com/watch?v=oXfFqZxAKQM','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2239328';
DELETE FROM song_versions WHERE song_id = 'pisniua_2239328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2239328';
DELETE FROM songs WHERE id = 'pisniua_2239328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2239328','Каділак','Музика: Михайло Хома, Олег Турко Слова: Михайло Хома. Виконує: DZIDZIO','uk','ukraine_1991',NULL,NULL,'вконтакті',NULL,'Я давним давно хотів
Пересісти з Жигулів
На великий Кадилак,
До упора повний бак,
Бог почув мої слова
І сказав: "Ходи сюда,
На тобі ключі, тримай,
Їдь собі, панти ганяй".

Приспів:
Я тепер - крутий чувак,  |
Маю чорний Кадилак,      |
В мене "DZIDZIO" номера, |
Помахай мені па-па!      | (2)

Їду в місто і в село,
А на хвилях радіо
Рано, ввечері і вночі
Крутяться мої пісні.
Кадилак не Жигулі,
Да, действітельно мені
Заканало, повезло,
Круто! О-о-о-о-о!

Приспів. (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2239328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2239328','Каділак','Я давним давно хотів
Пересісти з Жигулів
На великий Кадилак,
До упора повний бак,
Бог почув мої слова
І сказав: "Ходи сюда,
На тобі ключі, тримай,
Їдь собі, панти ганяй".

Приспів:
Я тепер - крутий чувак,  |
Маю чорний Кадилак,      |
В мене "DZIDZIO" номера, |
Помахай мені па-па!      | (2)

Їду в місто і в село,
А на хвилях радіо
Рано, ввечері і вночі
Крутяться мої пісні.
Кадилак не Жигулі,
Да, действітельно мені
Заканало, повезло,
Круто! О-о-о-о-о!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2239328_l1','pisniua_2239328','YouTube','https://www.youtube.com/watch?v=wRm1FpvqE4E','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2240165';
DELETE FROM song_versions WHERE song_id = 'pisniua_2240165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2240165';
DELETE FROM songs WHERE id = 'pisniua_2240165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2240165','Кіт не знав','Музика: Юрий Крылатов Слова: Платон Воронько','uk','ukraine_1991',NULL,NULL,'З пам''яті',NULL,'Падав сніг на поріг,
Кіт зліпив собі пиріг.
Падав сніг на поріг,
Кіт зліпив собі пиріг.

Поки смажив, поки пік,
А пиріг водою стік.
Падав сніг на поріг,
Кіт зліпив собі пиріг.

Кіт не знав, що на пиріг
Треба тісто, а не сніг.
Кіт не знав, що на пиріг
Треба тісто, а не сніг','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:zhartivlyvi'', ''Дитячі пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2240165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2240165','Кіт не знав','Падав сніг на поріг,
Кіт зліпив собі пиріг.
Падав сніг на поріг,
Кіт зліпив собі пиріг.

Поки смажив, поки пік,
А пиріг водою стік.
Падав сніг на поріг,
Кіт зліпив собі пиріг.

Кіт не знав, що на пиріг
Треба тісто, а не сніг.
Кіт не знав, що на пиріг
Треба тісто, а не сніг');
DELETE FROM song_links WHERE song_id = 'pisniua_2246818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2246818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2246818';
DELETE FROM songs WHERE id = 'pisniua_2246818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2246818','Забудуть мене всі','Музика: Мар''ян Гаденко Слова: Ганна Дущак. Виконує: Гурт Дзвони','uk','ukraine_1991',NULL,NULL,NULL,NULL,'І знову прилетять, і відлетять лелеки,
І стомлено вітри присядуть на стерню,
Забудуть мене всі, і близькі, і далекі,        |
І друзі ті, яких у серці хороню.               | (2)

Зажуряться ліси в осінній позолоті,
Долинами туман кошлато задимить,
Скупає мене хтось в словесному болоті          |
Та знаю чистоту - не зможе очорнить.           | (2)

А легіт молодий ту грушку кучеряву
Голубить ніжно так у літньому саду,
Пройшов шляхом життя, як світло крізь темряву, |
Хоч вірив підіймусь, якщо десь і впаду.        | (2)

І знову прилетять, і відлетять лелеки,
І стомлено вітри присядуть на стерню,
Згадають мене всі, і близькі, і далекі,        |
І друзі ті, яких у серці хороню.               | (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2246818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2246818','Забудуть мене всі','І знову прилетять, і відлетять лелеки,
І стомлено вітри присядуть на стерню,
Забудуть мене всі, і близькі, і далекі,        |
І друзі ті, яких у серці хороню.               | (2)

Зажуряться ліси в осінній позолоті,
Долинами туман кошлато задимить,
Скупає мене хтось в словесному болоті          |
Та знаю чистоту - не зможе очорнить.           | (2)

А легіт молодий ту грушку кучеряву
Голубить ніжно так у літньому саду,
Пройшов шляхом життя, як світло крізь темряву, |
Хоч вірив підіймусь, якщо десь і впаду.        | (2)

І знову прилетять, і відлетять лелеки,
І стомлено вітри присядуть на стерню,
Згадають мене всі, і близькі, і далекі,        |
І друзі ті, яких у серці хороню.               | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2246818_l1','pisniua_2246818','YouTube','https://www.youtube.com/watch?v=HXiAXGgZwfk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2246818_l2','pisniua_2246818','YouTube','https://www.youtube.com/watch?v=lUX0fLSFBAo','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2247596';
DELETE FROM song_versions WHERE song_id = 'pisniua_2247596';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2247596';
DELETE FROM songs WHERE id = 'pisniua_2247596';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2247596','Гімн професійних спілок України','Музика: Євген Доненко Слова: Григорій Заброда. Виконує: Євген Доненко','uk','ukraine_1991',NULL,NULL,'Автор слів',NULL,'Коли неправди біль стискає горло,
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
DELETE FROM song_links WHERE song_id = 'pisniua_224910';
DELETE FROM song_versions WHERE song_id = 'pisniua_224910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_224910';
DELETE FROM songs WHERE id = 'pisniua_224910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_224910','В саду гуляла','Музика: Л. Лепкий Слова: Л. Лепкий','uk','ukraine_1991',NULL,NULL,NULL,'На сайті уже є варіант цієї пісні. У нас, на Львівщині популярним є саме цей.','В саду гуляла, квіти збирала, (2)
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
DELETE FROM song_links WHERE song_id = 'pisniua_2253573';
DELETE FROM song_versions WHERE song_id = 'pisniua_2253573';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2253573';
DELETE FROM songs WHERE id = 'pisniua_2253573';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2253573','Наречена','Музика: Михайло Хома (Дзідзьо) Слова: Михайло Хома (Дзідзьо). Виконує: Михайло Хома','uk','ukraine_1991',NULL,NULL,'vk.com',NULL,'Я дивлюсь уночі
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
DELETE FROM song_links WHERE song_id = 'pisniua_2255910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2255910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2255910';
DELETE FROM songs WHERE id = 'pisniua_2255910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2255910','Сховалось сонце за горою','Музика: народна Слова: Мусій Кононенко','uk','ukraine_1991',NULL,NULL,'Співаночки, с. 310-311.',NULL,'Сховалось сонце за горою,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2259414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2259414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2259414';
DELETE FROM songs WHERE id = 'pisniua_2259414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2259414','Обійми','Музика: Гурт "Океан Ельзи" Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'Офіційна група ОЕ Вконтакті','Рустам Минивэнов.','Коли настане день,
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
DELETE FROM song_links WHERE song_id = 'pisniua_225818';
DELETE FROM song_versions WHERE song_id = 'pisniua_225818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_225818';
DELETE FROM songs WHERE id = 'pisniua_225818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_225818','Очі волошкові','Музика: Степан Сабадаш Слова: Анатолій Драгомирецький. Виконує: Дмитро Гнатюк, Олександр Василенко, Євген Савчук, Марічка, Василь Лазарович','uk','ukraine_1991',NULL,NULL,'За давнім аудіозаписом у виконанні Дмитра Гнатюка.','"Пісню виконав уперше Євген Савчук у супроводі ансамблю "Марічка" — той самий Савчук, якого знаємо як видатного українського диригента, Шевченківського лауреата. Але найкраще заспівав "Очі волошкові" Дмитро Гнатюк." Дивитися: http://www.doba.cv.ua/index.php?file=news.php&num=312&s=10#pos, також на цьому сайті сторінку про Сабадаша (матеріал висланий). Підбір акордів: Sh_Vetal В третьому куплеті за бажанням можна зробити модуляцію вгору. Підбір акордів: Sh_Vetal','Я іду багряним садом,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2263993';
DELETE FROM song_versions WHERE song_id = 'pisniua_2263993';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2263993';
DELETE FROM songs WHERE id = 'pisniua_2263993';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2263993','Секс-бомби','Музика: Наталія Фаліон Слова: Наталія Фаліон','uk','ukraine_1991',NULL,NULL,'відеозапис','*** - нерозбірливо. Виконує: Лісапетний батальйон.','Надоїло нам, бабам, корови доїть,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2264394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2264394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2264394';
DELETE FROM songs WHERE id = 'pisniua_2264394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2264394','Коли навколо ні душі...','Музика: Гурт "Океан Ельзи" Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Коли навколо ні душі,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2267653';
DELETE FROM song_versions WHERE song_id = 'pisniua_2267653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2267653';
DELETE FROM songs WHERE id = 'pisniua_2267653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2267653','Гімн Українському тризубу','Музика: Володимир Ярцев Слова: Леся Степовичка. Виконує: Народна самодіяльна капела Братства ОУН-УПА м. Збараж, Володимир Ярцев','uk','ukraine_1991',NULL,NULL,NULL,'Пісню виконує Народна самодіяльна капела Братства ОУН-УПА м. Збараж.','Розправив крила і злетів високо,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2264379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2264379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2264379';
DELETE FROM songs WHERE id = 'pisniua_2264379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2264379','На небі','Музика: Гурт "Океан Ельзи" Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'аудіозапис; ** акорди (частково): Sviatoslav Adept - www.youtube.com/watch?v=aQPfQq2Y_Ns','Підбір акордів: частково - bohdanko (pisni.org.ua)','Там, де для когось
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
DELETE FROM song_links WHERE song_id = 'pisniua_2268251';
DELETE FROM song_versions WHERE song_id = 'pisniua_2268251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2268251';
DELETE FROM songs WHERE id = 'pisniua_2268251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2268251','Колискова для коханої','Музика: Віктор Ох Слова: Ярослав Чорногуз. Виконує: Ярослав Чорногуз','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Місяць підкрався неждано,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2269158';
DELETE FROM song_versions WHERE song_id = 'pisniua_2269158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2269158';
DELETE FROM songs WHERE id = 'pisniua_2269158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2269158','Лю-лі, лю-лі, мій синочку','Музика: Леся Горова Слова: Ганна Білецька. Виконує: Леся Горова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Лю-лі, лю-лі, мій синочку,
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
DELETE FROM song_links WHERE song_id = 'pisniua_227354';
DELETE FROM song_versions WHERE song_id = 'pisniua_227354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_227354';
DELETE FROM songs WHERE id = 'pisniua_227354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_227354','Ой, смереко!','Музика: Любомир Яким Слова: Любомир Яким. Виконує: Mad Heads (XL), Микола Гнатюк','uk','ukraine_1991',NULL,NULL,'http://www.madheads.kiev.ua/ukrainian/','Підбір акордів від Freik.','На краю села хатина,
Am
Загляда в вікно смерека,
А в хатині є дівчина -
C
Та до неї так далеко.

Приспів:
Ой, смереко,
Am
Розкажи мені, смереко,
E
Чом ростеш ти так далеко,
Am
Чарівна моя смереко?..

Вийди, мила, на озерце,
Бачити тебе я мушу,
Ти запала мені в серце,
Полонила мою душу!

Приспів.

Вже весна Карпати вкрила,
Журавлі вже прилетіли,
Лиш свою дівчину любу
Ми з тобою не зустріли...

Акорди від Andre (12.02.2007 20:33)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_227354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_227354','Ой, смереко!','На краю села хатина,
Am
Загляда в вікно смерека,
А в хатині є дівчина -
C
Та до неї так далеко.

Приспів:
Ой, смереко,
Am
Розкажи мені, смереко,
E
Чом ростеш ти так далеко,
Am
Чарівна моя смереко?..

Вийди, мила, на озерце,
Бачити тебе я мушу,
Ти запала мені в серце,
Полонила мою душу!

Приспів.

Вже весна Карпати вкрила,
Журавлі вже прилетіли,
Лиш свою дівчину любу
Ми з тобою не зустріли...

Акорди від Andre (12.02.2007 20:33)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_227354_l1','pisniua_227354','YouTube','https://www.youtube.com/watch?v=xhu2sViciug','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_227354_l2','pisniua_227354','YouTube','https://www.youtube.com/watch?v=3iljrBXkoLo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_227354_l3','pisniua_227354','YouTube','https://www.youtube.com/watch?v=miWjWpb0fS8','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_227354_l4','pisniua_227354','YouTube','https://www.youtube.com/watch?v=rbbHTIGQcMM','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_227354_l5','pisniua_227354','YouTube','https://www.youtube.com/watch?v=1YyQejxPbfE','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_227354_l6','pisniua_227354','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_2278096';
DELETE FROM song_versions WHERE song_id = 'pisniua_2278096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2278096';
DELETE FROM songs WHERE id = 'pisniua_2278096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2278096','У неділю рано','Слова: народні','uk','ukraine_1991',NULL,NULL,'з вуст батьків','Пісня, яку співали жертви операції "Вісла".','У неділю рано
Зорі ся ховають,
А наші з району    |
Людей собирають.   | (2)

Людей собирають
До клубу на збори
І говорять людям:  |
Залишайте гори.    | (2)

Залишайте гори
І рідну хатину,
Бо ми вас завезем  |
В далеку чужину.   | (2)

Поїзд похилився
В далеку чужину
І ще раз подивлюсь |
На рідну хатину... | (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2278096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2278096','У неділю рано','У неділю рано
Зорі ся ховають,
А наші з району    |
Людей собирають.   | (2)

Людей собирають
До клубу на збори
І говорять людям:  |
Залишайте гори.    | (2)

Залишайте гори
І рідну хатину,
Бо ми вас завезем  |
В далеку чужину.   | (2)

Поїзд похилився
В далеку чужину
І ще раз подивлюсь |
На рідну хатину... | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2281716';
DELETE FROM song_versions WHERE song_id = 'pisniua_2281716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2281716';
DELETE FROM songs WHERE id = 'pisniua_2281716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2281716','Колисонька кленовая','Музика: Віктор Морозов Слова: Андрій Панчишин. Виконує: Віктор Морозов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Колисонька кленовая
Скрипуча, скрипуча,
Дитинонька маленькая
Плакуча, плакуча.

А я буду колисоньку
Гойдати, гойдати,
А я свою дитиноньку
Буду колисати.

Ой, ми люляй, ой, ми люляй,
Дитинко моя,
Ой, ми люляй, ой, ми люляй,
Дитинонько моя.

Ой, співаю колисанку
Тихеньку, тихеньку,
Про кленову колисоньку,
Дитинку маленьку.

Ой, ми люляй...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2281716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2281716','Колисонька кленовая','Колисонька кленовая
Скрипуча, скрипуча,
Дитинонька маленькая
Плакуча, плакуча.

А я буду колисоньку
Гойдати, гойдати,
А я свою дитиноньку
Буду колисати.

Ой, ми люляй, ой, ми люляй,
Дитинко моя,
Ой, ми люляй, ой, ми люляй,
Дитинонько моя.

Ой, співаю колисанку
Тихеньку, тихеньку,
Про кленову колисоньку,
Дитинку маленьку.

Ой, ми люляй...');
DELETE FROM song_links WHERE song_id = 'pisniua_22869';
DELETE FROM song_versions WHERE song_id = 'pisniua_22869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_22869';
DELETE FROM songs WHERE id = 'pisniua_22869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_22869','Ніч вже йде',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ніч вже йде... За веpхи
Ясне сонце зайшло, юнаки!
Тихо спіть... Без тpивог...
З нами Бог! З нами Бог!..
(муpмуpандо)
Добpаніч, добpаніч, добpаніч!','[''pisni.org.ua'', ''cat:kolyskovi'', ''cat:plastovi'', ''Колискові'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_22869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_22869','Ніч вже йде','Ніч вже йде... За веpхи
Ясне сонце зайшло, юнаки!
Тихо спіть... Без тpивог...
З нами Бог! З нами Бог!..
(муpмуpандо)
Добpаніч, добpаніч, добpаніч!');
DELETE FROM song_links WHERE song_id = 'pisniua_228512';
DELETE FROM song_versions WHERE song_id = 'pisniua_228512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_228512';
DELETE FROM songs WHERE id = 'pisniua_228512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_228512','В темну нічку','Музика: Семан Мадзелян Слова: Семан Мадзелян','uk','ukraine_1991',NULL,NULL,'Самвидавний туристський пісенник: Там на Лемковині помедже горами. - Літо 1981. 2. Семан Мадзелян. - Смак долі. Криниця: Наша Загорода. 2000.','Ця пісня, як і деякі інші пісні Семана Мадзеляна, настільки поширена, що у переважній більшості публікацій аторство не вказане, натомість її вважають народною. Додаткову інформацію про авторство (джерело 2) надала "Евеліна". Вказаний у джерелі 1 пісенник створений українцем з Польщі Лехом Ляхом. Діалектизми: видит - бачить; гукат - ухкає; ґамця - устонька (від ґамба - уста, рот); ґу, ку - до; лем - тільки; любост - кохання; пария, париї - яр, яри (звір, звори); позерати - поглядати; покля хтят - поки хочуть; притульме ся- пригорнімся, притулімся; сой - собі; убіч, убочы - схил, схили гори; юж - вже.','Hm
В темну нічку в убочы
Сова гукат по ночы,
Дримлют горы, люде спят,
Лем Ганічка з Ванічком    |
Позерают сой в очы,       |(2)
Позерают сой в очы, лем.  |

Притуль же ня, Ванічку!
Дай мі ґамці, Ганічко!
Ту не видит нихто нас,
Лем місячок на небі,      |
Притульме ся ґу собі,     |(2)
Притульме ся ґу собі, лем.|

Зашов місяц за хмару
И не видів юж пару,
Што робили они там.
Там Ганічка з Ванічком    |
Позерали на хмару,        |(2)
Позерали на хмару, лем.   |

Чом ты, хмаро, заздростиш
Того щастя любости,
Най тя вітры роздуют ген;
Най Ганічка з Ванічком    |
Покля хтят ся любуют,     |(2)
Покля хтят ся любуют, лем.|

В темну нічку в убочы
Сова гукат по ночы,
Дуют вітры горами ген...
Лем потокы, париї         |
Споминают за ними,        |(2)
Споминают за ними, лем.   |
Авторський текст за джерелом 2:

В темну нічку в Убочы
Сова гукат по ночы,
Дримут горы, люде спят.
Лем Ганічка з Ванічком
Позерают сой в очы,
Позерают сой в очы, лем!

Притуль же мя, Ванічку,
Дай мі ґамці, Ганічко,
Ту не видит нихто нас.
Лем місячок на небі,
Притульме ся ґу собі,
Притульме ся ґу собі, лем.

Зашол місяц за хмару
І не видів уж пару,
Што робили они там.
А Ганічка з Ванічком
Позерали на хмару,
Позерали на хмару, лем.

Чом ты, хмаро, заздростиш
Того щастя в любости?
Най тя вітры роздуют ген!
Най Ганічка з Ванічком
Покля ся хтят любуют,
Покля ся хтят любуют, лем.

В темну нічку в Убочы
Сова гукат по ночы,
Дуют вітры горами, лем!
Лем потокы, париі
Споминают за ними,
Споминают за ними, лем.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:lemkivski'', ''Пісні про красу природи'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_228512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_228512','В темну нічку','Hm
В темну нічку в убочы
Сова гукат по ночы,
Дримлют горы, люде спят,
Лем Ганічка з Ванічком    |
Позерают сой в очы,       |(2)
Позерают сой в очы, лем.  |

Притуль же ня, Ванічку!
Дай мі ґамці, Ганічко!
Ту не видит нихто нас,
Лем місячок на небі,      |
Притульме ся ґу собі,     |(2)
Притульме ся ґу собі, лем.|

Зашов місяц за хмару
И не видів юж пару,
Што робили они там.
Там Ганічка з Ванічком    |
Позерали на хмару,        |(2)
Позерали на хмару, лем.   |

Чом ты, хмаро, заздростиш
Того щастя любости,
Най тя вітры роздуют ген;
Най Ганічка з Ванічком    |
Покля хтят ся любуют,     |(2)
Покля хтят ся любуют, лем.|

В темну нічку в убочы
Сова гукат по ночы,
Дуют вітры горами ген...
Лем потокы, париї         |
Споминают за ними,        |(2)
Споминают за ними, лем.   |
Авторський текст за джерелом 2:

В темну нічку в Убочы
Сова гукат по ночы,
Дримут горы, люде спят.
Лем Ганічка з Ванічком
Позерают сой в очы,
Позерают сой в очы, лем!

Притуль же мя, Ванічку,
Дай мі ґамці, Ганічко,
Ту не видит нихто нас.
Лем місячок на небі,
Притульме ся ґу собі,
Притульме ся ґу собі, лем.

Зашол місяц за хмару
І не видів уж пару,
Што робили они там.
А Ганічка з Ванічком
Позерали на хмару,
Позерали на хмару, лем.

Чом ты, хмаро, заздростиш
Того щастя в любости?
Най тя вітры роздуют ген!
Най Ганічка з Ванічком
Покля ся хтят любуют,
Покля ся хтят любуют, лем.

В темну нічку в Убочы
Сова гукат по ночы,
Дуют вітры горами, лем!
Лем потокы, париі
Споминают за ними,
Споминают за ними, лем.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_228512_l1','pisniua_228512','YouTube','https://www.youtube.com/watch?v=jWbl3EyBhUc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_228512_l2','pisniua_228512','YouTube','https://www.youtube.com/watch?v=Ai0pUr7K_y0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_228797';
DELETE FROM song_versions WHERE song_id = 'pisniua_228797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_228797';
DELETE FROM songs WHERE id = 'pisniua_228797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_228797','Чекатиму','Музика: Дмитро Корс Слова: Ірена Карпа. Виконує: Дмитро Корс','uk','ukraine_1991',NULL,NULL,'Аудіо-запис пісні','Виправлення й доповнення від "bohdanko" (модератор): Текст і акорди записано на слух з аудіо. Тональність оригінальна. Для спрощення можна зіграти в іншій тональності (нижче): - Вступ: | Em Am G H | (x2) - Куплет: | Em Am | G H | Em Am G | H | - Приспів: | Em Am H | C Am | Em Am H | C Am | C | - Програш 1: | C Am Em |... і т.д. Підбір акордів: bohdanko (pisni.org.ua)','Вступ:  Gm Cm A# D (x2)

Бачу сни і читаю зі снів.
Поясни, чого не зрозумів.
Самота обіймає і тихо питає:
D
Чи ти та чи не та? Чи та?

Приспів:
А я чекатиму стільки, скільки треба.
А я чекатиму лише на тебе.
А я чекатиму. Буду тримати небо.
Небо триматиму лише для тебе
D#
Я...

Програш 1:  D# Cm Gm

Я нехай ми - лиш тінь на дні.
Я кохатиму лише твої очі сумні.
Летимо, залишаючи місто самотнє,
Що ховало тебе.

Приспів.

Програш 2:  D# Cm A# D

Приспів 2:
А я чекатиму стільки, скільки треба.
А я чекатиму лише на тебе.
А я чекатиму. Буду тримати небо.
Небо триматиму лише для тебе...
Я чекатиму...
Я чекатиму...
Я чекатиму. Буду тримати небо.
Небо триматиму лише для тебе
D#
Я...
Лише для тебе я... (x2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_228797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_228797','Чекатиму','Вступ:  Gm Cm A# D (x2)

Бачу сни і читаю зі снів.
Поясни, чого не зрозумів.
Самота обіймає і тихо питає:
D
Чи ти та чи не та? Чи та?

Приспів:
А я чекатиму стільки, скільки треба.
А я чекатиму лише на тебе.
А я чекатиму. Буду тримати небо.
Небо триматиму лише для тебе
D#
Я...

Програш 1:  D# Cm Gm

Я нехай ми - лиш тінь на дні.
Я кохатиму лише твої очі сумні.
Летимо, залишаючи місто самотнє,
Що ховало тебе.

Приспів.

Програш 2:  D# Cm A# D

Приспів 2:
А я чекатиму стільки, скільки треба.
А я чекатиму лише на тебе.
А я чекатиму. Буду тримати небо.
Небо триматиму лише для тебе...
Я чекатиму...
Я чекатиму...
Я чекатиму. Буду тримати небо.
Небо триматиму лише для тебе
D#
Я...
Лише для тебе я... (x2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_228797_l1','pisniua_228797','YouTube','https://www.youtube.com/watch?v=ZVz9XUXoyfg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_228797_l2','pisniua_228797','YouTube','https://www.youtube.com/watch?v=65lC0kaf6gc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_228797_l3','pisniua_228797','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2289797';
DELETE FROM song_versions WHERE song_id = 'pisniua_2289797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2289797';
DELETE FROM songs WHERE id = 'pisniua_2289797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2289797','Поцілую','Музика: Роман Скорпіон Слова: Роман Скорпіон. Виконує: Роман Скорпіон','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Наші долі з тобою зійшлися,
Були дві, є суцільна одна,
Я тебе не віддам, не залишу,
Ти моя, чуєш моя?..

Приспів:
Поцілую тебе, поцілую!  |
Поцілую тебе, пригорну! |
І розкажу тобі, кохана, |
Як я сильно тебе люблю! | (2)

Твої очі, як небо, блакитне,
У яких я тонув би щодня,
Я тебе не віддам, не залишу,
Ти моя, чуєш моя?..

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2289797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2289797','Поцілую','Наші долі з тобою зійшлися,
Були дві, є суцільна одна,
Я тебе не віддам, не залишу,
Ти моя, чуєш моя?..

Приспів:
Поцілую тебе, поцілую!  |
Поцілую тебе, пригорну! |
І розкажу тобі, кохана, |
Як я сильно тебе люблю! | (2)

Твої очі, як небо, блакитне,
У яких я тонув би щодня,
Я тебе не віддам, не залишу,
Ти моя, чуєш моя?..

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2289797_l1','pisniua_2289797','YouTube','https://www.youtube.com/watch?v=EeG7ivPVTh0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_229471';
DELETE FROM song_versions WHERE song_id = 'pisniua_229471';
DELETE FROM songs_fts WHERE song_id = 'pisniua_229471';
DELETE FROM songs WHERE id = 'pisniua_229471';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_229471','Листопад','Музика: Андрій Остапенко Слова: Вадим Крищенко. Виконує: Оксана Білозір, Василь Білоцерківський','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Дощі багряні листопаду,
Полинний присмак на губах,
Я звала радість на пораду,
Але прийшла чомусь журба.
Та дайте я ще раз нап''юся
Із чаші дивної пори,
Вже відлетіли білі гуси,
Забравши літа кольори.

Приспів:
Листопад, листопад -
Давня згадка у слові,
Як прощальна сльоза,
Як відлуння любові.
Листопад, листопад,
Я тобі не дозволю,
Прилетівши у сад,
Замести мою долю...

Сади закутані в багрянці,
Не відгукнеш - не відгукнусь,
У листопадовому танці
Ми загубилися чомусь.
З останніми листками саду
Віддаленіли я і ти,
Дощі багряні листопаду
Вже нас не можуть віднайти.

Приспів','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_229471'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_229471','Листопад','Дощі багряні листопаду,
Полинний присмак на губах,
Я звала радість на пораду,
Але прийшла чомусь журба.
Та дайте я ще раз нап''юся
Із чаші дивної пори,
Вже відлетіли білі гуси,
Забравши літа кольори.

Приспів:
Листопад, листопад -
Давня згадка у слові,
Як прощальна сльоза,
Як відлуння любові.
Листопад, листопад,
Я тобі не дозволю,
Прилетівши у сад,
Замести мою долю...

Сади закутані в багрянці,
Не відгукнеш - не відгукнусь,
У листопадовому танці
Ми загубилися чомусь.
З останніми листками саду
Віддаленіли я і ти,
Дощі багряні листопаду
Вже нас не можуть віднайти.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_229471_l1','pisniua_229471','YouTube','https://www.youtube.com/watch?v=1FxzaaubPTA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_229471_l2','pisniua_229471','YouTube','https://www.youtube.com/watch?v=fvk6328FhHI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_229471_l3','pisniua_229471','YouTube','https://www.youtube.com/watch?v=I9EnBnHNV5o','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_229471_l4','pisniua_229471','YouTube','https://www.youtube.com/watch?v=Wc-Y2G1hQS4','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_2303971';
DELETE FROM song_versions WHERE song_id = 'pisniua_2303971';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2303971';
DELETE FROM songs WHERE id = 'pisniua_2303971';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2303971','У хатинці','Слова: Марійка Підгірянка. Виконує: Лідія Максимяк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Тихо, лялю моя, спи,
Надворі гудуть вітри,
Надворі мете снігами,      |
Нам тут добре коло мами... | (2)

Приспів:
Нам тут добре у хатинці:
І лялюні, і дитинці.
Спи, лялюню, моя спи, засни,
Хай собі гудуть вітри...
Спи, лялюню моя, спи, засни,
Хай гудуть вітри...
Спи, дитинонько, спи,
Очка зажмури...
Можеш, рибко, тихо спати,  |
Над тобою рідна мати       |
Шепче молитви...           | (2)

Тихо, кицю моя, спи
І дитинку не буди,
Надворі мете снігами,      |
Нам тут добре коло мами... | (2)

Приспів.

Спи, дитинонько, спи,
Спи, дитинонько, спи,
Очка зажмури...
Спи, дитинонько, спи...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2303971'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2303971','У хатинці','Тихо, лялю моя, спи,
Надворі гудуть вітри,
Надворі мете снігами,      |
Нам тут добре коло мами... | (2)

Приспів:
Нам тут добре у хатинці:
І лялюні, і дитинці.
Спи, лялюню, моя спи, засни,
Хай собі гудуть вітри...
Спи, лялюню моя, спи, засни,
Хай гудуть вітри...
Спи, дитинонько, спи,
Очка зажмури...
Можеш, рибко, тихо спати,  |
Над тобою рідна мати       |
Шепче молитви...           | (2)

Тихо, кицю моя, спи
І дитинку не буди,
Надворі мете снігами,      |
Нам тут добре коло мами... | (2)

Приспів.

Спи, дитинонько, спи,
Спи, дитинонько, спи,
Очка зажмури...
Спи, дитинонько, спи...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2303971_l1','pisniua_2303971','YouTube','https://www.youtube.com/watch?v=XD01zDfw9O0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2303952';
DELETE FROM song_versions WHERE song_id = 'pisniua_2303952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2303952';
DELETE FROM songs WHERE id = 'pisniua_2303952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2303952','Сни ці раз у рік приходять','Виконує: Лідія Максимяк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я сьогодні чемна-чемна,
Бо святий надходить час,
Бо надворі буде темно -
Миколай прийде до нас!
Ляжу спати скоро-скоро,  |
Щоб увиділось мені,      |
Як небесні дивні хори,   |
Шлють вітання неземні... | (2)

А вітання - то проміння,
Наче мамині вуста,
То доріжка до спасіння,
Шлях-дорога до Христа!
Хай не буде подарунка,   |
Не така вже благодать,   |
Але ніч у візерунках,    |
Але хори янголят.        | (2)

Сни ці раз у рік приходять,
Добрі, гарні, чарівні.
Херувими хороводять,
Є там місце і мені.
Ляжу спати скоро-скоро,  |
Щоб увиділось мені,      |
Як небесні дивні хори,   |
Шлють вітання неземні... | (2)

Неземні...

Ляжу спати скоро-скоро,  |
Щоб увиділось мені,      |
Як небесні дивні хори,   |
Шлють вітання неземні... | (2)','[''pisni.org.ua'', ''cat:kolyskovi'', ''cat:svyatyy-mykolay'', ''Колискові'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2303952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2303952','Сни ці раз у рік приходять','Я сьогодні чемна-чемна,
Бо святий надходить час,
Бо надворі буде темно -
Миколай прийде до нас!
Ляжу спати скоро-скоро,  |
Щоб увиділось мені,      |
Як небесні дивні хори,   |
Шлють вітання неземні... | (2)

А вітання - то проміння,
Наче мамині вуста,
То доріжка до спасіння,
Шлях-дорога до Христа!
Хай не буде подарунка,   |
Не така вже благодать,   |
Але ніч у візерунках,    |
Але хори янголят.        | (2)

Сни ці раз у рік приходять,
Добрі, гарні, чарівні.
Херувими хороводять,
Є там місце і мені.
Ляжу спати скоро-скоро,  |
Щоб увиділось мені,      |
Як небесні дивні хори,   |
Шлють вітання неземні... | (2)

Неземні...

Ляжу спати скоро-скоро,  |
Щоб увиділось мені,      |
Як небесні дивні хори,   |
Шлють вітання неземні... | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2303952_l1','pisniua_2303952','YouTube','https://www.youtube.com/watch?v=7LscAEIY3cE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2303952_l2','pisniua_2303952','YouTube','https://www.youtube.com/watch?v=DY9kUUVBvXw','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2303952_l3','pisniua_2303952','YouTube','https://www.youtube.com/watch?v=90xpsOwi2TQ','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2338192';
DELETE FROM song_versions WHERE song_id = 'pisniua_2338192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2338192';
DELETE FROM songs WHERE id = 'pisniua_2338192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2338192','Сизі тумани','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Тумани, сизі тумани
Повільно пливуть по гаю,
Під свої крила ховають
Стареньку хатину мою...

Приспів:
Тумани, мої ви тумани,
Як люблю я ту вашу пору,
Коли дивлюсь на вас рано
Здається мені, що вами пливу.

Пливу, крила простилаю,
З висоти на гори дивлюсь,
Смерічки я обнімаю,
До берізок теж доторкнусь.

Приспів:

Полечу над своїм краєм,
Там, де водоспади грають,
А веселки тут високо
Гори стрімкі огортають.

Писпів:

Краю, мій рідний розмаю,
Незбагнена твоя краса,
Де в смерек віти звисають,
Неначе дівоча краса...

Приспів:','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2338192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2338192','Сизі тумани','Тумани, сизі тумани
Повільно пливуть по гаю,
Під свої крила ховають
Стареньку хатину мою...

Приспів:
Тумани, мої ви тумани,
Як люблю я ту вашу пору,
Коли дивлюсь на вас рано
Здається мені, що вами пливу.

Пливу, крила простилаю,
З висоти на гори дивлюсь,
Смерічки я обнімаю,
До берізок теж доторкнусь.

Приспів:

Полечу над своїм краєм,
Там, де водоспади грають,
А веселки тут високо
Гори стрімкі огортають.

Писпів:

Краю, мій рідний розмаю,
Незбагнена твоя краса,
Де в смерек віти звисають,
Неначе дівоча краса...

Приспів:');
DELETE FROM song_links WHERE song_id = 'pisniua_2338457';
DELETE FROM song_versions WHERE song_id = 'pisniua_2338457';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2338457';
DELETE FROM songs WHERE id = 'pisniua_2338457';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2338457','Свою ніжність мені подаруй','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Подаруй мені свою ніжність
І до мене ти пригорнись.
Тіла відчую твого свіжість -
Щасливою буде ця мить!

Подаруй мені поцілунок,
Міцно так мене обніми,
Я серце віддам у дарунок,
Тільки ти його не топчи!

Подарую тобі свою вірність
І збережу я її назавжди.
Ти взамін дай любов мені щиру,
Щоб в серці зміг її зберегти!

Подаруй мені любов гарячу,
Яка так серця зігріває,
А я тобі ласкою віддячу,
Що тільки в легенді буває!','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2338457'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2338457','Свою ніжність мені подаруй','Подаруй мені свою ніжність
І до мене ти пригорнись.
Тіла відчую твого свіжість -
Щасливою буде ця мить!

Подаруй мені поцілунок,
Міцно так мене обніми,
Я серце віддам у дарунок,
Тільки ти його не топчи!

Подарую тобі свою вірність
І збережу я її назавжди.
Ти взамін дай любов мені щиру,
Щоб в серці зміг її зберегти!

Подаруй мені любов гарячу,
Яка так серця зігріває,
А я тобі ласкою віддячу,
Що тільки в легенді буває!');
DELETE FROM song_links WHERE song_id = 'pisniua_2338777';
DELETE FROM song_versions WHERE song_id = 'pisniua_2338777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2338777';
DELETE FROM songs WHERE id = 'pisniua_2338777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2338777','Я трояндою стану','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Я трояндою білою стану
Мене ти в руки візьмеш,
Вдихнеш аромат чарівний,
До губ своїх прикладеш.
Ця троянда, біла троянда
Як світле кохання моє,
Ця білосніжна чиста квітка
Як найщиріше бажання моє.

Трояндою червоною стану,
Її в руки  ніжно  візьмеш,
Радісна сльозинка моя впаде -
За краплину роси ти приймеш.
Троянда чарівна червона
То моя вірна та щира любов.
Ця троянда чарівна червона
То серця мого гарячая кров.

Пелюстками троянд  я стану,
І дорогу тобі щедро встелю.
По них обережно будеш ступати,
А піднімусь і з тобою разом піду.
В пелюстках цих квітів чарівних,
Найщиріші мої є там почуття.
Трояндами білими та червоними
Хай стелиться доля твоя і моя.','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2338777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2338777','Я трояндою стану','Я трояндою білою стану
Мене ти в руки візьмеш,
Вдихнеш аромат чарівний,
До губ своїх прикладеш.
Ця троянда, біла троянда
Як світле кохання моє,
Ця білосніжна чиста квітка
Як найщиріше бажання моє.

Трояндою червоною стану,
Її в руки  ніжно  візьмеш,
Радісна сльозинка моя впаде -
За краплину роси ти приймеш.
Троянда чарівна червона
То моя вірна та щира любов.
Ця троянда чарівна червона
То серця мого гарячая кров.

Пелюстками троянд  я стану,
І дорогу тобі щедро встелю.
По них обережно будеш ступати,
А піднімусь і з тобою разом піду.
В пелюстках цих квітів чарівних,
Найщиріші мої є там почуття.
Трояндами білими та червоними
Хай стелиться доля твоя і моя.');
DELETE FROM song_links WHERE song_id = 'pisniua_2341192';
DELETE FROM song_versions WHERE song_id = 'pisniua_2341192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2341192';
DELETE FROM songs WHERE id = 'pisniua_2341192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2341192','Червона калино.','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Калино, червона калино,
Який гарний твій білий цвіт,
Дівчино, моя люба дівчино,
Не милий мені без тебе світ.

Калино, кучерява калино,
Гарні червоні грона твої.
Дівчино,молодая дівчино,
Чому без тебе сумні мої  дні.

Калино, пишна калино,
Ягоди соком ти  наливаєш,
Скажи мені лісовая красуне,
Чи когось щиро кохаєш?.

Кохаєш його дуже щиро,
Ягідки для нього тримаєш
Посміхаєшся  йому мило,
І листочками його обнімаєш.

Калинонька  посміхнулась,
До дуба листком доторкнулась,
Тільки тебе я, дубочку, кохаю,
І ягідки спілі тобі тримаю...','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2341192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2341192','Червона калино.','Калино, червона калино,
Який гарний твій білий цвіт,
Дівчино, моя люба дівчино,
Не милий мені без тебе світ.

Калино, кучерява калино,
Гарні червоні грона твої.
Дівчино,молодая дівчино,
Чому без тебе сумні мої  дні.

Калино, пишна калино,
Ягоди соком ти  наливаєш,
Скажи мені лісовая красуне,
Чи когось щиро кохаєш?.

Кохаєш його дуже щиро,
Ягідки для нього тримаєш
Посміхаєшся  йому мило,
І листочками його обнімаєш.

Калинонька  посміхнулась,
До дуба листком доторкнулась,
Тільки тебе я, дубочку, кохаю,
І ягідки спілі тобі тримаю...');
DELETE FROM song_links WHERE song_id = 'pisniua_2339653';
DELETE FROM song_versions WHERE song_id = 'pisniua_2339653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2339653';
DELETE FROM songs WHERE id = 'pisniua_2339653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2339653','Марія-Анна','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'У горах високих зелених,
Де калина червона цвіте.
Тут біля річки стрімкої,
Кохана дівчина живе.

Приспів:
О, Маріє- Анно,
Чарівна квітко Карпат,
О, Маріє-Анно,
Бурхливий ти водоспад,
О, Маріє-Анно,
Чиста джерельна вода,
О, Маріє-Анно,
Висока смерічко струнка.

Гуляєш ти в долині квітучій,
Де Іван-Чай пурпурово цвіте,
Стелиться тобі стежка барвінком,
І пісня твоя понад горами іде.

Приспів.

Я в гори високі до тебе піду,
Любов щиру свою тобі принесу,
Тільки серце своє мені відчини
І вірне кохання моє ти прийми!

Приспів.','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2339653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2339653','Марія-Анна','У горах високих зелених,
Де калина червона цвіте.
Тут біля річки стрімкої,
Кохана дівчина живе.

Приспів:
О, Маріє- Анно,
Чарівна квітко Карпат,
О, Маріє-Анно,
Бурхливий ти водоспад,
О, Маріє-Анно,
Чиста джерельна вода,
О, Маріє-Анно,
Висока смерічко струнка.

Гуляєш ти в долині квітучій,
Де Іван-Чай пурпурово цвіте,
Стелиться тобі стежка барвінком,
І пісня твоя понад горами іде.

Приспів.

Я в гори високі до тебе піду,
Любов щиру свою тобі принесу,
Тільки серце своє мені відчини
І вірне кохання моє ти прийми!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2349797';
DELETE FROM song_versions WHERE song_id = 'pisniua_2349797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2349797';
DELETE FROM songs WHERE id = 'pisniua_2349797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2349797','Маленький трамвайчик','Музика: Олександр Шевченко Слова: Олександр Шевченко','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Віра Кідик.','Маленький трамвайчик
У місті маленькім
Із раннього ранку
Невтомно кружля,
Старанний трамвайчик,
Трудяга маленький,
Він возить, і возить,
І возить малят.

Приспів:
Трамвайчик маленький
По місту кружля!
Маленький трамвайчик,
Що возить малят!

Рушаємо разом,
Сідай сміливіше,
Дзвенить наш трамвайчик
На вулицю всю,
Щоб їхати швидше
І ще веселіше,
Співаємо разом
Ми пісеньку цю.

Простує трамвайчик
По рейках маленьких,
Маленьке усе
За віконцем малим,
Маленькі будинки,
Ми їдемо містом
Маленьким таким.

Приспів.

Закінчиться день,
Тоді вечір настане,
Трамвайчик стомився,
Давай, спочивай,
Ми виростем скоро,
Дитинство скінчиться,
І виросте з нами
Маленький трамвай.

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2349797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2349797','Маленький трамвайчик','Маленький трамвайчик
У місті маленькім
Із раннього ранку
Невтомно кружля,
Старанний трамвайчик,
Трудяга маленький,
Він возить, і возить,
І возить малят.

Приспів:
Трамвайчик маленький
По місту кружля!
Маленький трамвайчик,
Що возить малят!

Рушаємо разом,
Сідай сміливіше,
Дзвенить наш трамвайчик
На вулицю всю,
Щоб їхати швидше
І ще веселіше,
Співаємо разом
Ми пісеньку цю.

Простує трамвайчик
По рейках маленьких,
Маленьке усе
За віконцем малим,
Маленькі будинки,
Ми їдемо містом
Маленьким таким.

Приспів.

Закінчиться день,
Тоді вечір настане,
Трамвайчик стомився,
Давай, спочивай,
Ми виростем скоро,
Дитинство скінчиться,
І виросте з нами
Маленький трамвай.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2349797_l1','pisniua_2349797','YouTube','https://www.youtube.com/watch?v=rDL2iUBbrhM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2352665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2352665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2352665';
DELETE FROM songs WHERE id = 'pisniua_2352665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2352665','Летіла лелека','Музика: Майя Янчишин-Чедрик Слова: Майя Янчишин-Чедрик. Виконує: Дует MOVA','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Летіла лелека
Онде, не далеко,
Крихітне малятко
Принесла у хатку...
Наче намистиночка,
Малесенька дитиночка,
Люлі-люлі, баю, |
Тебе колихаю... | (2)

Соловей щебече,
Вже надходить вечір,
Вітер у гаю шумить -
Колискову гомонить...
Сплять уже звірятонька,
Сірі зайченятонька...
Люлі-люлі, баю, |
Тебе колихаю... | (2

Горличка туркоче
І гніздечко в''є,
Хто ж моїй малечі
Спатки не дає?..
Пізня вже годинонька,
Спи, моя дитинонька...
Люлі-люлі, баю, |
Тебе колихаю... | (2','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2352665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2352665','Летіла лелека','Летіла лелека
Онде, не далеко,
Крихітне малятко
Принесла у хатку...
Наче намистиночка,
Малесенька дитиночка,
Люлі-люлі, баю, |
Тебе колихаю... | (2)

Соловей щебече,
Вже надходить вечір,
Вітер у гаю шумить -
Колискову гомонить...
Сплять уже звірятонька,
Сірі зайченятонька...
Люлі-люлі, баю, |
Тебе колихаю... | (2

Горличка туркоче
І гніздечко в''є,
Хто ж моїй малечі
Спатки не дає?..
Пізня вже годинонька,
Спи, моя дитинонька...
Люлі-люлі, баю, |
Тебе колихаю... | (2');
DELETE FROM song_links WHERE song_id = 'pisniua_2355665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2355665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2355665';
DELETE FROM songs WHERE id = 'pisniua_2355665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2355665','Подаруй мені таку ніч','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Подаруй мені таку ніч,
Коли світяться зорі ясні!..
Подаруй мені таку ніч,
Про яку складають пісні!..

Подаруй мені таку ніч,
Коли вишні будуть в цвіту
І аромат їх цей чарівний
Я на повні груди вдихну!..

Подаруй мені таку ніч,
Щоб місяць в небі гуляв
І по зеленій ніжній траві
Проміння своє розсівав!..

Подаруй мені таку ніч,
Щоб сади буйно цвіли,
І в цьому саду, чарівнім,
Тільки ми разом були!..

Подаруй мені таку ніч,
Щоб ніжно скрипка лунала,
І твоя тепла ніжна рука
Мене за плечі обіймала!..

Подаруй мені ти таку ніч -
І я на край світу з тобою піду...','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2355665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2355665','Подаруй мені таку ніч','Подаруй мені таку ніч,
Коли світяться зорі ясні!..
Подаруй мені таку ніч,
Про яку складають пісні!..

Подаруй мені таку ніч,
Коли вишні будуть в цвіту
І аромат їх цей чарівний
Я на повні груди вдихну!..

Подаруй мені таку ніч,
Щоб місяць в небі гуляв
І по зеленій ніжній траві
Проміння своє розсівав!..

Подаруй мені таку ніч,
Щоб сади буйно цвіли,
І в цьому саду, чарівнім,
Тільки ми разом були!..

Подаруй мені таку ніч,
Щоб ніжно скрипка лунала,
І твоя тепла ніжна рука
Мене за плечі обіймала!..

Подаруй мені ти таку ніч -
І я на край світу з тобою піду...');
DELETE FROM song_links WHERE song_id = 'pisniua_2358899';
DELETE FROM song_versions WHERE song_id = 'pisniua_2358899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2358899';
DELETE FROM songs WHERE id = 'pisniua_2358899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2358899','Де би я','Музика: Сергій Бабкін Слова: Сергій Бабкін. Виконує: Сергій Бабкін','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я вештався світом,
Шукав дивні квіти,
З кожним наступним кроком
Рахував роки...
Твоїми ногами знаходив
Занедбані храми,
Серце, відлите в камені,
Легшало навпаки...

Приспів:
Де би я, де би я, де би я,
Де би я не був - все про тебе
Нагадує, мов позаду ідеш,
Або дивишся на мене крізь світ...
Де би я, де би я, де би я,
Де би я не був - все охоплено
Твоєю владою, за собою ведеш,
Вимальовуючи слід...

Буває злітаю, хочу сховатись
Від зграї - все вмить завмирає,
Коли очі твої кидають пелюстки...
Я все розумію, але недосяжна мрія
Буде жити і після того,
Як дістанусь твоєї руки!..

Приспів.

Ти завжди зі мною поруч -
Праворуч або ліворуч,
В розмовах сторонніх людей
Я чую твої думки...
Проте, до нестями мусимо бавити
Себе почуттями, ідем по одному колу,
Наче стрімкі струмки...

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2358899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2358899','Де би я','Я вештався світом,
Шукав дивні квіти,
З кожним наступним кроком
Рахував роки...
Твоїми ногами знаходив
Занедбані храми,
Серце, відлите в камені,
Легшало навпаки...

Приспів:
Де би я, де би я, де би я,
Де би я не був - все про тебе
Нагадує, мов позаду ідеш,
Або дивишся на мене крізь світ...
Де би я, де би я, де би я,
Де би я не був - все охоплено
Твоєю владою, за собою ведеш,
Вимальовуючи слід...

Буває злітаю, хочу сховатись
Від зграї - все вмить завмирає,
Коли очі твої кидають пелюстки...
Я все розумію, але недосяжна мрія
Буде жити і після того,
Як дістанусь твоєї руки!..

Приспів.

Ти завжди зі мною поруч -
Праворуч або ліворуч,
В розмовах сторонніх людей
Я чую твої думки...
Проте, до нестями мусимо бавити
Себе почуттями, ідем по одному колу,
Наче стрімкі струмки...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2358899_l1','pisniua_2358899','YouTube','https://www.youtube.com/watch?v=-svQdxQ1JIY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2357055';
DELETE FROM song_versions WHERE song_id = 'pisniua_2357055';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2357055';
DELETE FROM songs WHERE id = 'pisniua_2357055';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2357055','Крила','Музика: Джамала Слова: Тетяна Мілімко. Виконує: Джамала','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я вмію літати,
Але хочу його крила!..
І в темряві сяють,
Але він - для мене світило!..
Я вільна, мов птаха,
Але хочу його небо!..
З усіх скарбів світу
Мені лише його дотик треба...

Приспів:
Чому ти обрав мене,
І цей, дивний, шлях зі мною?..
На ньому багато каміння є,
На ньому гора за горою...
Чому ти несеш мене,
Коли далі йти не сила?..
Коли я в обіймах зневіри,
Знімаєш для мене ти крила!..
Крила... Крила...
Крила... Крила...
Я довго шукала у темряві,
У небі, по хвилях...
Повірила в себе,
Але хочу лише його крила!..

Чому ти обрав мене,
І цей, дивний, шлях зі мною?..
На ньому багато каміння є,
На ньому гора за горою...
Чому ти несеш мене,
Коли далі йти не сила?..
Коли я в обіймах зневіри,
Знімаєш для мене ти крила!..

І вчиш не зупинятись ніколи,
Хоча через каміння та гори йти...
На ньому так важко втрачати,
Бувають злі люди, байдужі...
А ти кажеш: Треба вибачати!..
Несеш мене через калюжі,
А я сама вже вмію літати,
Але хочу лише його крила!..
А я давно вже вмію кохати,
Але ніколи так не любила!..

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2357055'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2357055','Крила','Я вмію літати,
Але хочу його крила!..
І в темряві сяють,
Але він - для мене світило!..
Я вільна, мов птаха,
Але хочу його небо!..
З усіх скарбів світу
Мені лише його дотик треба...

Приспів:
Чому ти обрав мене,
І цей, дивний, шлях зі мною?..
На ньому багато каміння є,
На ньому гора за горою...
Чому ти несеш мене,
Коли далі йти не сила?..
Коли я в обіймах зневіри,
Знімаєш для мене ти крила!..
Крила... Крила...
Крила... Крила...
Я довго шукала у темряві,
У небі, по хвилях...
Повірила в себе,
Але хочу лише його крила!..

Чому ти обрав мене,
І цей, дивний, шлях зі мною?..
На ньому багато каміння є,
На ньому гора за горою...
Чому ти несеш мене,
Коли далі йти не сила?..
Коли я в обіймах зневіри,
Знімаєш для мене ти крила!..

І вчиш не зупинятись ніколи,
Хоча через каміння та гори йти...
На ньому так важко втрачати,
Бувають злі люди, байдужі...
А ти кажеш: Треба вибачати!..
Несеш мене через калюжі,
А я сама вже вмію літати,
Але хочу лише його крила!..
А я давно вже вмію кохати,
Але ніколи так не любила!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2357055_l1','pisniua_2357055','YouTube','https://www.youtube.com/watch?v=vG_DfsRoN6g','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2357055_l2','pisniua_2357055','YouTube','https://www.youtube.com/watch?v=GVhloDhlFAA','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2360697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2360697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2360697';
DELETE FROM songs WHERE id = 'pisniua_2360697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2360697','Не буду ся женити!','Музика: Іван Мадяр Слова: народні. Виконує: Іван Мадяр','uk','ukraine_1991',NULL,NULL,'https://youtu.be/mQSymGobXDc','Пісню виконує Іван Мадяр.','Пішов Іван в полонину косити,
Пішло за ним дев''ять дівок сушити.
Та й накосив дев''ять валів в один день -
Не посушать дев''ять дівок за тиждень!

Приспів:
Не буду ся женити,
Лем так буду ходити
Межи тима горами
За чужими жонами!
Чужі жони такі суть -
Палиночки принесуть,
Палиночки ще й вина:
Пийте, хлопці, до рання!

Любилась ня цілий тиждень, гея-гой!
Забулась ня на восьмий день, гея-гой!
Не велика серцю туга, гея-гой!
Не будеш ти, буде друга, гея-гой!

Приспів','[''pisni.org.ua'', ''cat:zakarpatski'', ''Закарпатські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2360697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2360697','Не буду ся женити!','Пішов Іван в полонину косити,
Пішло за ним дев''ять дівок сушити.
Та й накосив дев''ять валів в один день -
Не посушать дев''ять дівок за тиждень!

Приспів:
Не буду ся женити,
Лем так буду ходити
Межи тима горами
За чужими жонами!
Чужі жони такі суть -
Палиночки принесуть,
Палиночки ще й вина:
Пийте, хлопці, до рання!

Любилась ня цілий тиждень, гея-гой!
Забулась ня на восьмий день, гея-гой!
Не велика серцю туга, гея-гой!
Не будеш ти, буде друга, гея-гой!

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2360697_l1','pisniua_2360697','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2361063';
DELETE FROM song_versions WHERE song_id = 'pisniua_2361063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2361063';
DELETE FROM songs WHERE id = 'pisniua_2361063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2361063','Частівки','Слова: Любов Іванова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Заробила вчора брагу,
Хай там буде про запас.
Мій Петро тамує спрагу -
Ходить в клуню кожен час.

А в куми моєї Тані
Редьки соток п''ять, мабуть.
Мужики з-під бару п''яні
Під закуску її рвуть.

Теща з зятем розсварились,
Не говорять певно з рік!
А дочка - не заступилась
Зять до другої утік!..

Самогонку молодиці
Продавали на розлив,
Бо в селі Гнилі Кислиці
Більш нема альтернатив.

На дієту сіла Дінка -
Чи то баба, чи мужик?..
Де колись була ширінка,
Стрінги моднії впритик...

Ущипнув гусак за ляжку,
Ну а я візьму граблі,
Запряжу його в упряжку
Хай катає по селі.

Як по місту, по Парижу
Вів Іван діваху рижу,
А батькам відправив вістку:
Мов, везу для вас невістку.

Мав піддати куражу
Мій миленький Міша
Роздягнулась і лежу
Тиждень, чи вже й більше!

А на березі вербичка,
Соловейко тьох та тьох!
Глянь, Петро, яка травичка,
Давай ляжемо удвох!

Запросила я Серьожку
До ставка спуститись вниз,
Будуть танці під гармошку,
А за танцями - стриптиз!

Коло річки, коло Бугу
Витинали гопака.
Мій Петро цілує другу
Я вже, бачте, не така...

Я - хороша господиня,
Тільки ось яка біда:
Уродилась одна диня
Решта поля - лобода!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2361063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2361063','Частівки','Заробила вчора брагу,
Хай там буде про запас.
Мій Петро тамує спрагу -
Ходить в клуню кожен час.

А в куми моєї Тані
Редьки соток п''ять, мабуть.
Мужики з-під бару п''яні
Під закуску її рвуть.

Теща з зятем розсварились,
Не говорять певно з рік!
А дочка - не заступилась
Зять до другої утік!..

Самогонку молодиці
Продавали на розлив,
Бо в селі Гнилі Кислиці
Більш нема альтернатив.

На дієту сіла Дінка -
Чи то баба, чи мужик?..
Де колись була ширінка,
Стрінги моднії впритик...

Ущипнув гусак за ляжку,
Ну а я візьму граблі,
Запряжу його в упряжку
Хай катає по селі.

Як по місту, по Парижу
Вів Іван діваху рижу,
А батькам відправив вістку:
Мов, везу для вас невістку.

Мав піддати куражу
Мій миленький Міша
Роздягнулась і лежу
Тиждень, чи вже й більше!

А на березі вербичка,
Соловейко тьох та тьох!
Глянь, Петро, яка травичка,
Давай ляжемо удвох!

Запросила я Серьожку
До ставка спуститись вниз,
Будуть танці під гармошку,
А за танцями - стриптиз!

Коло річки, коло Бугу
Витинали гопака.
Мій Петро цілує другу
Я вже, бачте, не така...

Я - хороша господиня,
Тільки ось яка біда:
Уродилась одна диня
Решта поля - лобода!');
DELETE FROM song_links WHERE song_id = 'pisniua_2368495';
DELETE FROM song_versions WHERE song_id = 'pisniua_2368495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2368495';
DELETE FROM songs WHERE id = 'pisniua_2368495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2368495','Фантазер','Музика: Олександр Морозов Слова: Богдан Малик. Виконує: Богдан Малик','uk','ukraine_1991',NULL,NULL,'https://www.youtube.com/watch?v=ULc7GZ1Iqcs',NULL,'Все я вигадав сам,
Бачити я не міг,
Бо був сильний туман,
Бо був сильний туман
І невипавший сніг...
Пісню ніжних сердець
Під акорди дощу,
Де щасливий кінець,
Де щасливий кінець,
Де тебе я люблю!..
Я приходив!.. Я був
І в мороз, і в жару,
І тобі говорив,
І тобі говорив,
Що тебе лиш люблю!..
І за очі твої
Я відав би усе -
Навіть своє життя!
Та не треба тобі
Неземні почуття!..

Приспів:
Фантазер -
Ти мене називала...
Фантазер,
А ми з тобою - не пара!..
Ти одна!
Ти мені наймиліша!
Ну, а я...
Я люблю все сильніше!..

Промайнув швидко час -
Ти вже з іншим тепер,
І немає вже нас,
І немає вже нас:
Ні теб, ні мене!..
Та тепер в тебе є
Тільки мрії земні,
І земні почуття,
І в наш світ неземний
Вже нема вороття!..

Приспів','[''pisni.org.ua'', ''cat:lirychni'', ''cat:nostalgia'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2368495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2368495','Фантазер','Все я вигадав сам,
Бачити я не міг,
Бо був сильний туман,
Бо був сильний туман
І невипавший сніг...
Пісню ніжних сердець
Під акорди дощу,
Де щасливий кінець,
Де щасливий кінець,
Де тебе я люблю!..
Я приходив!.. Я був
І в мороз, і в жару,
І тобі говорив,
І тобі говорив,
Що тебе лиш люблю!..
І за очі твої
Я відав би усе -
Навіть своє життя!
Та не треба тобі
Неземні почуття!..

Приспів:
Фантазер -
Ти мене називала...
Фантазер,
А ми з тобою - не пара!..
Ти одна!
Ти мені наймиліша!
Ну, а я...
Я люблю все сильніше!..

Промайнув швидко час -
Ти вже з іншим тепер,
І немає вже нас,
І немає вже нас:
Ні теб, ні мене!..
Та тепер в тебе є
Тільки мрії земні,
І земні почуття,
І в наш світ неземний
Вже нема вороття!..

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2368495_l1','pisniua_2368495','YouTube','https://www.youtube.com/watch?v=ULc7GZ1Iqcs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2368495_l2','pisniua_2368495','YouTube','https://www.youtube.com/watch?v=CIYtNGF1J7s','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2368495_l3','pisniua_2368495','YouTube','https://www.youtube.com/watch?v=rgjhMtI0MfE','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_237859';
DELETE FROM song_versions WHERE song_id = 'pisniua_237859';
DELETE FROM songs_fts WHERE song_id = 'pisniua_237859';
DELETE FROM songs WHERE id = 'pisniua_237859';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_237859','Гей, соколи','Виконує: Володимир Вермінський, Гурт "Зоряна ніч"','uk','ukraine_1991',NULL,NULL,'1. Аудіо-CD "Володимир Вермінський. Йшли селом партизани 2" (2005) 2. Пісня "Соколи" 3. Форум "Вогнем і Мечем"','Текст взято із джерела 2, виправлено і доповнено за джерелом 1. Акорди підібрано на слух за джерелом 1, спрощено. Оригінальна тональність: Fm (каподастр на I ладі). * Тут у джерелі 1: "Плаче, жаль, молода дівчина". Спрощено за джерелом 2 для більш зручного співання. ** Тут послідовність "H7 Em H7 G D" можна замінити на "H7 Em D". Підбір акордів: bohdanko (pisni.org.ua)','Вступ: | G | D H7 | Em | H7 Em H7 Em |
Em
Гей, десь там, де чорні води,
H7
Сів на коня козак молодий.
Em
Плаче молода дівчина,*
H7          Em H7 G D **
Їде козак з Укра_ їни.
Приспів:
G
Гей, гей, гей, соколи,
Оминайте гори, ліси, доли.
Em
Дзвінь, дзвінь, дзвінь, дзвіночку,
Степовий жайво_ ро_ ночку!
G
Гей, гей, гей, соколи,
Оминайте гори, ліси, доли.
Em
Дзвінь, дзвінь, дзвінь, дзвіночку,
Мій степовий, дзвінь, дзвінь, дзвінь!
Жаль, жаль, за милою,
За рідною стороною.
Жаль, жаль, серце плаче,
Більше її не побачу.
Приспів.
Плаче, плаче, дівчинонька,
Люба моя ластівонька.
А я у чужому краю,
Серце спокою не має.
Приспів.
Меду-вина наливайте.
Як загину - поховайте
На далекій Україні
Коло милої дівчини.
Приспів.
Варіант пісні польською мовою
(за джерелом 3):
1. Oj, tam gdzieś z nad czarnej wody
Siada na koń kozak młody.
Czule żegna się z dziewczyną,
Jeszcze czulej z Ukrainą.
Refr.:
Hej, hej, hej, sokoły!
Omijajcie góry, lasy, doly.
bis Dzwoń, dzwoń, dzwoń dzwoneczku,
Moj stepowy skowroneczku.
Moj stepowy dzwoń, dzwoń, dzwoń. (2)
2. Ona jedna pozostała,
Przepióreczka moja mała.
A ja tutaj w obcej stronie
Dniem i nocą tęsknię do niej.
3. Pięknych dziewcząt jest nie mało,
A najwięcej w Ukrainie.
Tam me serce pozostało
Przy kochanej mej dziewczynie.
4. Wina, wina, wina dajcie,
A jak umrę, pochowajcie
Na zielonej Ukrainie,
Przy kochanej mej dziewczynie.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:manrivni'', ''Пісні про кохання, ліричні'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_237859'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_237859','Гей, соколи','Вступ: | G | D H7 | Em | H7 Em H7 Em |
Em
Гей, десь там, де чорні води,
H7
Сів на коня козак молодий.
Em
Плаче молода дівчина,*
H7          Em H7 G D **
Їде козак з Укра_ їни.
Приспів:
G
Гей, гей, гей, соколи,
Оминайте гори, ліси, доли.
Em
Дзвінь, дзвінь, дзвінь, дзвіночку,
Степовий жайво_ ро_ ночку!
G
Гей, гей, гей, соколи,
Оминайте гори, ліси, доли.
Em
Дзвінь, дзвінь, дзвінь, дзвіночку,
Мій степовий, дзвінь, дзвінь, дзвінь!
Жаль, жаль, за милою,
За рідною стороною.
Жаль, жаль, серце плаче,
Більше її не побачу.
Приспів.
Плаче, плаче, дівчинонька,
Люба моя ластівонька.
А я у чужому краю,
Серце спокою не має.
Приспів.
Меду-вина наливайте.
Як загину - поховайте
На далекій Україні
Коло милої дівчини.
Приспів.
Варіант пісні польською мовою
(за джерелом 3):
1. Oj, tam gdzieś z nad czarnej wody
Siada na koń kozak młody.
Czule żegna się z dziewczyną,
Jeszcze czulej z Ukrainą.
Refr.:
Hej, hej, hej, sokoły!
Omijajcie góry, lasy, doly.
bis Dzwoń, dzwoń, dzwoń dzwoneczku,
Moj stepowy skowroneczku.
Moj stepowy dzwoń, dzwoń, dzwoń. (2)
2. Ona jedna pozostała,
Przepióreczka moja mała.
A ja tutaj w obcej stronie
Dniem i nocą tęsknię do niej.
3. Pięknych dziewcząt jest nie mało,
A najwięcej w Ukrainie.
Tam me serce pozostało
Przy kochanej mej dziewczynie.
4. Wina, wina, wina dajcie,
A jak umrę, pochowajcie
Na zielonej Ukrainie,
Przy kochanej mej dziewczynie.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l1','pisniua_237859','YouTube','https://www.youtube.com/watch?v=ml1ao_QHiMQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l2','pisniua_237859','YouTube','https://www.youtube.com/watch?v=SlL3UJ_Tz8U','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l3','pisniua_237859','YouTube','https://www.youtube.com/watch?v=IyocBqoS1mo','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l4','pisniua_237859','YouTube','https://www.youtube.com/watch?v=VHb00UI5oyg','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l5','pisniua_237859','YouTube','https://www.youtube.com/watch?v=IBKGewaF9RU','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l6','pisniua_237859','YouTube','https://www.youtube.com/watch?v=BdQbqnIqktg','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l7','pisniua_237859','YouTube','https://www.youtube.com/watch?v=bk_45f_Sgn0','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l8','pisniua_237859','YouTube','https://www.youtube.com/watch?v=0QrYTIsrNi0','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l9','pisniua_237859','YouTube','https://www.youtube.com/watch?v=-5oJs5FPjfI','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l10','pisniua_237859','YouTube','https://www.youtube.com/watch?v=eWuMx5m3-OI','video',NULL,10);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l11','pisniua_237859','YouTube','https://www.youtube.com/watch?v=jhaTXWEVgHA','video',NULL,11);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l12','pisniua_237859','YouTube','https://www.youtube.com/watch?v=cVwqm-UpjaM','video',NULL,12);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l13','pisniua_237859','YouTube','https://www.youtube.com/watch?v=ZmClImoZ04Y','video',NULL,13);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l14','pisniua_237859','YouTube','https://www.youtube.com/watch?v=2OvxPjXon5Q','video',NULL,14);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l15','pisniua_237859','YouTube','https://www.youtube.com/watch?v=bSVv_Bbj6f4','video',NULL,15);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l16','pisniua_237859','YouTube','https://www.youtube.com/watch?v=vdl0feBW3d8','video',NULL,16);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237859_l17','pisniua_237859','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,17);
DELETE FROM song_links WHERE song_id = 'pisniua_237665';
DELETE FROM song_versions WHERE song_id = 'pisniua_237665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_237665';
DELETE FROM songs WHERE id = 'pisniua_237665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_237665','Берізки','Музика: Євген Шантир Слова: Євген Шантир. Виконує: Євген Шантир','uk','ukraine_1991',NULL,NULL,NULL,'Збірка пісень "КОРАБЛИК"','Привітливо щирі,
Сумні та щасливі,
Вклоняючись вітру,
Берізки стоять,
Берізки милі,
Хай мої мрії
Прямо до Бога
Від вас полетять.
Шукаючи долю,
Я вдячно щокою
До вас приторкнуся,
Берізки мої,
Берізки ніжні,
На роздоріжжі
Шлях до кохання
Знайдіть і мені.
Берізки, берізки,
Ви те, що хоч трішки,
Але так потрібне
І серцю й душі,
Берізки білі,
В модному стилі
Бачу вас завжди
В своєму житті.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:krasa-pryrody'', ''cat:romansy'', ''cat:socialno-pobutovi'', ''cat:zahalni-cinnosti'', ''Бардівські пісні'', ''Пісні про красу природи'', ''Романси'', ''Соціально-побутові пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_237665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_237665','Берізки','Привітливо щирі,
Сумні та щасливі,
Вклоняючись вітру,
Берізки стоять,
Берізки милі,
Хай мої мрії
Прямо до Бога
Від вас полетять.
Шукаючи долю,
Я вдячно щокою
До вас приторкнуся,
Берізки мої,
Берізки ніжні,
На роздоріжжі
Шлях до кохання
Знайдіть і мені.
Берізки, берізки,
Ви те, що хоч трішки,
Але так потрібне
І серцю й душі,
Берізки білі,
В модному стилі
Бачу вас завжди
В своєму житті.');
DELETE FROM song_links WHERE song_id = 'pisniua_237879';
DELETE FROM song_versions WHERE song_id = 'pisniua_237879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_237879';
DELETE FROM songs WHERE id = 'pisniua_237879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_237879','Коханий','(Осіннє кохання). Музика: Ігор Білозір Слова: Петро Запотічний. Виконує: Квітка Цісик, Оксана Білозір, Ніна Шестакова','uk','ukraine_1991',NULL,NULL,'Аудіо-CD "Kvitka. Two colors" 1989 аудіоджерело, CD - альбом "Вишневий рай", 272 BRIGHTON BEACH.AVE.BROOKLIN.NY 11235 USA Interpriz Production, 1997','Текст і акорди записано на слух за аудіо-джерелом. Ориґінальна тональність: Fm (каподастр на I ладі). * Тут у тексті я не впевнений. Підбір акордів: bohdanko (pisni.org.ua)','Вступ: Em Am Em Am H7 (2)
1.
Я покохала тебе восени,
Жовте листя з дерев опадало.
Літо бабине йшло у солодкі сни,
А кохання моє розквітало...
А кохання моє, а кохання моє,
А кохання моє розквітало.
Приспів:
Em
Коханий, дивлюсь на небо -
Am
в синій далі срібний зорепад.
D
Коханий, це ніби той
наш пам''ятний останній листопад.
Em
Коханий, не плачу я,
Am
бо не поверну спалену зорю.
D
Коханий, лиш вітер спогад
навіває про любов мою.
Вітер хмаринку небом жене,
А я в уяві бачу тебе,
Знов придивляюсь - я бачу тебе, тебе.
Жалісний подув тугу жене.
Поле шепоче - чую тебе.
Знов прислухаюсь - я чую тебе, тебе.
2.
Я покохала тебе восени,
А тоді готовилась йти в путь.*
А кохання моє, наче гомін весни,
Огрівало нам ночі щасливі...
А кохання моє, а кохання моє
Огрівало нам ночі щасливі.
Приспів.
Варіант 2 куплету:
Я покохала тебе восени,
Теплі дні готувалися в вирій
А кохання моє, наче гомін весни,
Вигравало на ноті щасливій...','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_237879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_237879','Коханий','Вступ: Em Am Em Am H7 (2)
1.
Я покохала тебе восени,
Жовте листя з дерев опадало.
Літо бабине йшло у солодкі сни,
А кохання моє розквітало...
А кохання моє, а кохання моє,
А кохання моє розквітало.
Приспів:
Em
Коханий, дивлюсь на небо -
Am
в синій далі срібний зорепад.
D
Коханий, це ніби той
наш пам''ятний останній листопад.
Em
Коханий, не плачу я,
Am
бо не поверну спалену зорю.
D
Коханий, лиш вітер спогад
навіває про любов мою.
Вітер хмаринку небом жене,
А я в уяві бачу тебе,
Знов придивляюсь - я бачу тебе, тебе.
Жалісний подув тугу жене.
Поле шепоче - чую тебе.
Знов прислухаюсь - я чую тебе, тебе.
2.
Я покохала тебе восени,
А тоді готовилась йти в путь.*
А кохання моє, наче гомін весни,
Огрівало нам ночі щасливі...
А кохання моє, а кохання моє
Огрівало нам ночі щасливі.
Приспів.
Варіант 2 куплету:
Я покохала тебе восени,
Теплі дні готувалися в вирій
А кохання моє, наче гомін весни,
Вигравало на ноті щасливій...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237879_l1','pisniua_237879','YouTube','https://www.youtube.com/watch?v=dfm07XPxeyM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237879_l2','pisniua_237879','YouTube','https://www.youtube.com/watch?v=mHrQzLkFnOA','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237879_l3','pisniua_237879','YouTube','https://www.youtube.com/watch?v=9TkKQYihmo4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237879_l4','pisniua_237879','YouTube','https://www.youtube.com/watch?v=stdiQdvUtfA','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237879_l5','pisniua_237879','YouTube','https://www.youtube.com/watch?v=urqahlWfZ6I','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237879_l6','pisniua_237879','YouTube','https://www.youtube.com/watch?v=8V0p-IriW6w','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237879_l7','pisniua_237879','YouTube','https://www.youtube.com/watch?v=501Ed8nRfFo','video',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_237818';
DELETE FROM song_versions WHERE song_id = 'pisniua_237818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_237818';
DELETE FROM songs WHERE id = 'pisniua_237818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_237818','Там за Лісом за Лугом ходить Козак за Плугом','Музика: народна Слова: Осип Маковей. Виконує: Ніна Матвієнко, Тріо "Золоті Ключі"','uk','ukraine_1991',NULL,NULL,'Українські релігійні роздуми про Спасіння © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003','Спасительна: світ не по Правді. Українські релігійні роздуми про Воскресіння, і Спасіння. Ой Ми зіслані на признаванє. Нема в світі Правди не зіскати. Ой устань же Козаченьку. Оре Ниву не свою добре що в Своїм Краю. Хто посіє і пожне як не стане вже мене. За це Поле за Село їх не мало полягло. Листки з приводу цієї Пісні: Українські реліґійні роздуми про Неволю та Спасіння Коляда і Великдень: Різдво і Відродження Світа. Еротичні містерії, тиждень від Катерини 7.12 до Калети. Доля. Св. Микола 19.12 – Народний речник перед Богом і Прадід. Стежки до листків про Українські традиції.','Там за Лісом за Лугом ходить Козак за Плугом
Оре Ниву не свою добре що в Своїм Краю       | (2)

Оре-оре тай туже хто Родині послуже
Хто посіє і пожне як не стане вже мене       | (2)

Станьте Коні Вороні бо Могили в загоні
Ще й до того на Межі і на лихо не чужі       | (2)

Тут Гармати орали Наші Хлопці вмирали
За це Поле за Село їх не мало полягло        | (2)

Тут пшениця поросте, синій блават зацвіте.
Козак сяде і спічне, бідні душі пом''яне...   | (2)

Там за Лісом за Лугом ходить Козак за Плугом
Десь далеко Громи б''ють людям жити не дають  | (2)','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_237818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_237818','Там за Лісом за Лугом ходить Козак за Плугом','Там за Лісом за Лугом ходить Козак за Плугом
Оре Ниву не свою добре що в Своїм Краю       | (2)

Оре-оре тай туже хто Родині послуже
Хто посіє і пожне як не стане вже мене       | (2)

Станьте Коні Вороні бо Могили в загоні
Ще й до того на Межі і на лихо не чужі       | (2)

Тут Гармати орали Наші Хлопці вмирали
За це Поле за Село їх не мало полягло        | (2)

Тут пшениця поросте, синій блават зацвіте.
Козак сяде і спічне, бідні душі пом''яне...   | (2)

Там за Лісом за Лугом ходить Козак за Плугом
Десь далеко Громи б''ють людям жити не дають  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237818_l1','pisniua_237818','YouTube','https://www.youtube.com/watch?v=mIVRe6__Oqc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_237818_l2','pisniua_237818','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_239614';
DELETE FROM song_versions WHERE song_id = 'pisniua_239614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_239614';
DELETE FROM songs WHERE id = 'pisniua_239614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_239614','Ходить котик по дворі','Слова: Микола Сингаївський','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ходить котик по горі,
носить сон у рукаві.
Усім дітям продає,
а Марічці так дає.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_239614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_239614','Ходить котик по дворі','Ходить котик по горі,
носить сон у рукаві.
Усім дітям продає,
а Марічці так дає.');
DELETE FROM song_links WHERE song_id = 'pisniua_2399394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2399394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2399394';
DELETE FROM songs WHERE id = 'pisniua_2399394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2399394','Спи солодко, маля','Музика: Йоганнес Брамс Слова: невідомий','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Спи солодко, маля,
До наступного дня.
Сон злітає із долонь,
Спи до сходу ранніх зір.

Мама пісню співа
Для свого немовля...
Мама пісню співа
Для свого немовля...

Всі тваринки вже сплять,
Лиш дерева шумлять...
Сон злітає із долонь,
Спи до сходу ранніх зір.

Ранок знов в ранній час
Збудить ніжно всіх нас...
Ранок знов в ранній час
Збудить ніжно всіх нас...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2399394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2399394','Спи солодко, маля','Спи солодко, маля,
До наступного дня.
Сон злітає із долонь,
Спи до сходу ранніх зір.

Мама пісню співа
Для свого немовля...
Мама пісню співа
Для свого немовля...

Всі тваринки вже сплять,
Лиш дерева шумлять...
Сон злітає із долонь,
Спи до сходу ранніх зір.

Ранок знов в ранній час
Збудить ніжно всіх нас...
Ранок знов в ранній час
Збудить ніжно всіх нас...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2399394_l1','pisniua_2399394','YouTube','https://www.youtube.com/watch?v=LAGypBeaM2U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_239890';
DELETE FROM song_versions WHERE song_id = 'pisniua_239890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_239890';
DELETE FROM songs WHERE id = 'pisniua_239890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_239890','Дніпропетровськ','Музика: Євген Шантир Слова: Євген Шантир. Виконує: Євген Шантир','uk','ukraine_1991',NULL,NULL,NULL,'Збірка пісень "КОРАБЛИК"','Там, де Дніпро несе широкі води
І береги славетні пролягли,
Дніпропетровськ на пагорбах свободи
Підняв своєї долі прапори.
Приспів:
Дніпропетровськ - мій рідний край,
Живи в віках і процвітай,
І  Україну, Україну  прославляй!
Дніпропетровськ - тобі мої вітання,
Хай сяє сонце й линуть журавлі,
Дніпропетровськ - даруєш ти кохання,
Що зостається в квітах на Землі.
Приспів.
Ростуть твої масиви  і все вище
Злітають мрії у своїй меті,
Дніпропетровськ, я знаю ти найкраще,
Моє найкраще місто у житті!
Приспів.
На світ увесь відомі і величні,
Дніпропетровськ, горять твої Зірки,
Твої проспекти й площі - історичні,
Летять над ними білі голубки.
Приспів.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:himny-marshi'', ''cat:krasa-pryrody'', ''cat:socialno-pobutovi'', ''cat:suspilno-politychni'', ''cat:zahalni-cinnosti'', ''Бардівські пісні'', ''Гимни та марші'', ''Пісні про красу природи'', ''Соціально-побутові пісні'', ''Суспільно-політичні пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_239890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_239890','Дніпропетровськ','Там, де Дніпро несе широкі води
І береги славетні пролягли,
Дніпропетровськ на пагорбах свободи
Підняв своєї долі прапори.
Приспів:
Дніпропетровськ - мій рідний край,
Живи в віках і процвітай,
І  Україну, Україну  прославляй!
Дніпропетровськ - тобі мої вітання,
Хай сяє сонце й линуть журавлі,
Дніпропетровськ - даруєш ти кохання,
Що зостається в квітах на Землі.
Приспів.
Ростуть твої масиви  і все вище
Злітають мрії у своїй меті,
Дніпропетровськ, я знаю ти найкраще,
Моє найкраще місто у житті!
Приспів.
На світ увесь відомі і величні,
Дніпропетровськ, горять твої Зірки,
Твої проспекти й площі - історичні,
Летять над ними білі голубки.
Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2424818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2424818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2424818';
DELETE FROM songs WHERE id = 'pisniua_2424818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2424818','Спи, зайченятко маленьке, засни',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Спи, зайченятко маленьке, засни,
Хай дивовижними будуть всі сни!
Гілка гойдається, вітер шумить:
Крихітко, мама тебе захистить!

Спи безтурботно, малятко мале!
Мама сидить, колихає тебе
Та примовляє вона: Баю-бай,
Спи, мій маленький, скоріш засинай!

Проте не лякайся ти темноти -
Буде матуся твій сон стерегти!
Всім немовлятам спати пора:
В ліжках солодко спить дітвора.

Спи, зайченятко маленьке, засни,
Хай дивовижними будуть всі сни!
Гілка гойдається, вітер шумить:
Крихітко, мама тебе захистить!','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2424818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2424818','Спи, зайченятко маленьке, засни','Спи, зайченятко маленьке, засни,
Хай дивовижними будуть всі сни!
Гілка гойдається, вітер шумить:
Крихітко, мама тебе захистить!

Спи безтурботно, малятко мале!
Мама сидить, колихає тебе
Та примовляє вона: Баю-бай,
Спи, мій маленький, скоріш засинай!

Проте не лякайся ти темноти -
Буде матуся твій сон стерегти!
Всім немовлятам спати пора:
В ліжках солодко спить дітвора.

Спи, зайченятко маленьке, засни,
Хай дивовижними будуть всі сни!
Гілка гойдається, вітер шумить:
Крихітко, мама тебе захистить!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2424818_l1','pisniua_2424818','YouTube','https://www.youtube.com/watch?v=NrdCvRNrvXY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2424818_l2','pisniua_2424818','YouTube','https://www.youtube.com/watch?v=tmxo_GFZPrI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2432828';
DELETE FROM song_versions WHERE song_id = 'pisniua_2432828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2432828';
DELETE FROM songs WHERE id = 'pisniua_2432828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2432828','Мамина пісня','Музика: Олександр Злотник Слова: Олександр Вратарьов. Виконує: Оксана Білозір','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Прилетіли буслики
Із країв далеких,
Прилетіли з вирію,
Буслики лелеки...
Потомились буслики,
Бо на крилах несли
Красну весну, а іще -
Теплого Олексу...

Приспів:
Леле-лелеченьки,
Буслики-буслята,
Крила край віконечка
Біля хати...
Леле-лелеченьки,
Буслики-буслята,
Прилетіли сонечко
Колисати...

Повернулись буслики
Чорно-білі крила,
Повернулись буслики
Та й заклекотіли...
Ой, лелече колесо,
Кинуте у небо,
Мама тихим голосом
Нам співа про тебе...

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''cat:pro-ditey'', ''Колискові'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2432828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2432828','Мамина пісня','Прилетіли буслики
Із країв далеких,
Прилетіли з вирію,
Буслики лелеки...
Потомились буслики,
Бо на крилах несли
Красну весну, а іще -
Теплого Олексу...

Приспів:
Леле-лелеченьки,
Буслики-буслята,
Крила край віконечка
Біля хати...
Леле-лелеченьки,
Буслики-буслята,
Прилетіли сонечко
Колисати...

Повернулись буслики
Чорно-білі крила,
Повернулись буслики
Та й заклекотіли...
Ой, лелече колесо,
Кинуте у небо,
Мама тихим голосом
Нам співа про тебе...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2432828_l1','pisniua_2432828','YouTube','https://www.youtube.com/watch?v=qLV2A7gI4k0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_243596';
DELETE FROM song_versions WHERE song_id = 'pisniua_243596';
DELETE FROM songs_fts WHERE song_id = 'pisniua_243596';
DELETE FROM songs WHERE id = 'pisniua_243596';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_243596','Хвилюватися немає причин','Музика: Бумбокс Слова: Андрій Хливнюк. Виконує: Бумбокс','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я точно знаю в тебе тато влучний мисливець
Я знаю твоя мама точно зам воєнкома
C#
Чому, скажи мені ти в жахливих снах не наснилась
Навіщо нас тоді спільний дружбан познайомив.

Якби мені тоді дали один тільки натяк
Я б замість Люсі називав тебе завжди Надя
Тепер благаю відпусти, не хочу, не треба
Ми родичі, я наполягаю, що я твій дядя.

Приспів (2):

Хвилюватися немає причин, як дають, то бери
Якщо б''ють, то біжи, кричи.
Hm
Технологія проста: ким би ти не став
Зранку встав, присідай до ста і читай устав.

Телебачення і в день і в ночі
Дорогі глядачі, нам сюди надішліть листа
Ми його тут покладем в лото трон
Ви програли, пардон, селяві, і живіть до ста.

Обіцяли, що дадуть аксельбанти
Сподівались, нас по квартирах розселять
Ай, немає нікого крутішого за курсантів
Та чомусь діди кругом такі не веселі.
Якби мені тоді дали один тільки натяк
Я б пішов в ботани, в бібліотеці б зашився
Став би зіркою, катався б, тікав від фанатів
Та навряд, чи сам собою б лишився.

Приспів.

Обіцяли роялті від продажі альбому
А по тєліку вони в брулях лімузинах
Я чекав, минуло більш ніж п''ять років по тому
Впізнає мене в крамниці тепер тьотя Зіна.
Якби мені тоді дали один тільки натяк
Я б не знаю ким би став, куди б, де забіг би
Годі наді мною дослідів, ой, нєнада
Зупиніть на світлофорі планету - я вийду.

Хвилюватися немає причин, як дають, то бери
Якщо б''ють, то біжи, кричи.
Технологія проста: ким би ти не став
Зранку встав, присідай до ста і читай устав.
Телебачення і в день і в ночі
Дорогі глядачі, нам сюди надішліть листа
Ми його тут покладем в лохо трон
Ви програли, пардон, селяві, і живіть до ста.

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_243596'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_243596','Хвилюватися немає причин','Я точно знаю в тебе тато влучний мисливець
Я знаю твоя мама точно зам воєнкома
C#
Чому, скажи мені ти в жахливих снах не наснилась
Навіщо нас тоді спільний дружбан познайомив.

Якби мені тоді дали один тільки натяк
Я б замість Люсі називав тебе завжди Надя
Тепер благаю відпусти, не хочу, не треба
Ми родичі, я наполягаю, що я твій дядя.

Приспів (2):

Хвилюватися немає причин, як дають, то бери
Якщо б''ють, то біжи, кричи.
Hm
Технологія проста: ким би ти не став
Зранку встав, присідай до ста і читай устав.

Телебачення і в день і в ночі
Дорогі глядачі, нам сюди надішліть листа
Ми його тут покладем в лото трон
Ви програли, пардон, селяві, і живіть до ста.

Обіцяли, що дадуть аксельбанти
Сподівались, нас по квартирах розселять
Ай, немає нікого крутішого за курсантів
Та чомусь діди кругом такі не веселі.
Якби мені тоді дали один тільки натяк
Я б пішов в ботани, в бібліотеці б зашився
Став би зіркою, катався б, тікав від фанатів
Та навряд, чи сам собою б лишився.

Приспів.

Обіцяли роялті від продажі альбому
А по тєліку вони в брулях лімузинах
Я чекав, минуло більш ніж п''ять років по тому
Впізнає мене в крамниці тепер тьотя Зіна.
Якби мені тоді дали один тільки натяк
Я б не знаю ким би став, куди б, де забіг би
Годі наді мною дослідів, ой, нєнада
Зупиніть на світлофорі планету - я вийду.

Хвилюватися немає причин, як дають, то бери
Якщо б''ють, то біжи, кричи.
Технологія проста: ким би ти не став
Зранку встав, присідай до ста і читай устав.
Телебачення і в день і в ночі
Дорогі глядачі, нам сюди надішліть листа
Ми його тут покладем в лохо трон
Ви програли, пардон, селяві, і живіть до ста.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_243596_l1','pisniua_243596','YouTube','https://www.youtube.com/watch?v=YWRAj5pQKPo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2436665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2436665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2436665';
DELETE FROM songs WHERE id = 'pisniua_2436665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2436665','Схованки','Музика: Дмитрій Сисоєв Слова: Дмитрій Сисоєв. Виконує: VLADA K','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На сенсорних екранах
Вподобайки,
Віртуальний світ
Змінив погляди на все,
А скрізь коменти і лайки,
Месенджери спілкування
Замінили живе...

Приспів:
А я хочу з друзями
Бавитись в схованки,
Залишити спогади,
Щоб було про що згадати!..
Бо життя то є сходинки,
Сходинки! Сходинки! Сходинки!
Бо життя то є спогади,
А щоб мати їх
Треба кайфувати, треба кайфувати, |
А не залипати в телефоні вдома!   | (2)

Я вибираю двір, а не гігабайти,
Вечорами крейдою розмалюю асфальт!
Сусіди з вікон не будуть кричати,
Бо розуміють, що мені це в кайф!

Приспів.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2436665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2436665','Схованки','На сенсорних екранах
Вподобайки,
Віртуальний світ
Змінив погляди на все,
А скрізь коменти і лайки,
Месенджери спілкування
Замінили живе...

Приспів:
А я хочу з друзями
Бавитись в схованки,
Залишити спогади,
Щоб було про що згадати!..
Бо життя то є сходинки,
Сходинки! Сходинки! Сходинки!
Бо життя то є спогади,
А щоб мати їх
Треба кайфувати, треба кайфувати, |
А не залипати в телефоні вдома!   | (2)

Я вибираю двір, а не гігабайти,
Вечорами крейдою розмалюю асфальт!
Сусіди з вікон не будуть кричати,
Бо розуміють, що мені це в кайф!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2436665_l1','pisniua_2436665','YouTube','https://www.youtube.com/watch?v=1UTTSIHETeg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_244010';
DELETE FROM song_versions WHERE song_id = 'pisniua_244010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_244010';
DELETE FROM songs WHERE id = 'pisniua_244010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_244010','Ой на горі дощ іде','Українська народна пісня. Виконує: Черемшина, Ансамбль Льонок','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой на горі дощ іде,
А в долині сонце.

Ой,прийди-прийди, милий
Під моє віконце.       | (2)

Ой на горі дощ іде,
Скоре перестане.

Ой,прийди-прийди, милий,
Як вечір настане.      | (2)

Прийди на світанні,
Щоб не чула мати,

Ой, як я твоє личко
Буду цілувати.         | (2)

Ой на горі дощ іде,
А в долині сонце.

Ой,прийди-прийди, милий
Під моє віконце.       | (2)','[''pisni.org.ua'', ''cat:volynski'', ''Пісні з Волині'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_244010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_244010','Ой на горі дощ іде','Ой на горі дощ іде,
А в долині сонце.

Ой,прийди-прийди, милий
Під моє віконце.       | (2)

Ой на горі дощ іде,
Скоре перестане.

Ой,прийди-прийди, милий,
Як вечір настане.      | (2)

Прийди на світанні,
Щоб не чула мати,

Ой, як я твоє личко
Буду цілувати.         | (2)

Ой на горі дощ іде,
А в долині сонце.

Ой,прийди-прийди, милий
Під моє віконце.       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_244010_l1','pisniua_244010','YouTube','https://www.youtube.com/watch?v=ciT9YxDITs8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_244010_l2','pisniua_244010','YouTube','https://www.youtube.com/watch?v=nl8XxVczisg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_244694';
DELETE FROM song_versions WHERE song_id = 'pisniua_244694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_244694';
DELETE FROM songs WHERE id = 'pisniua_244694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_244694','Новий рік','Музика: Євген Шантир Слова: Євген Шантир. Виконує: Євген Шантир','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ось і знову прийшов Новий рік,
Наших мрій і надій оберіг,
Дід Мороз і Снігуронька з ним
Нас вітають із роком Новим!

Приспів:
Новий рік, Новий рік, Новий рік,
Ти маестро всіх наших доріг,
Новий рік, Новий рік, Новий рік,
Подаруй нам кохання на вік!

Починають куранти свій біг,
Новорічний летить чистий сніг,
Всі ялинки святкові такі,
Новий рік - феєрверків вогні! (приспів)

Ти, як справжній чаклун, Новий рік,
Нашу казку дитинства зберіг,
Новий рік, ти для нас кожен раз
У житті, наче шлях в перший клас. (приспів)','[''pisni.org.ua'', ''cat:bardivski'', ''cat:socialno-pobutovi'', ''cat:zahalni-cinnosti'', ''Бардівські пісні'', ''Соціально-побутові пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_244694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_244694','Новий рік','Ось і знову прийшов Новий рік,
Наших мрій і надій оберіг,
Дід Мороз і Снігуронька з ним
Нас вітають із роком Новим!

Приспів:
Новий рік, Новий рік, Новий рік,
Ти маестро всіх наших доріг,
Новий рік, Новий рік, Новий рік,
Подаруй нам кохання на вік!

Починають куранти свій біг,
Новорічний летить чистий сніг,
Всі ялинки святкові такі,
Новий рік - феєрверків вогні! (приспів)

Ти, як справжній чаклун, Новий рік,
Нашу казку дитинства зберіг,
Новий рік, ти для нас кожен раз
У житті, наче шлях в перший клас. (приспів)');
DELETE FROM song_links WHERE song_id = 'pisniua_245292';
DELETE FROM song_versions WHERE song_id = 'pisniua_245292';
DELETE FROM songs_fts WHERE song_id = 'pisniua_245292';
DELETE FROM songs WHERE id = 'pisniua_245292';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_245292','Царю небесний','(Царю небесний, утішителю...). Музика: народна Слова: церковна пісня','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Царю небесний,
утішителю, Душе істини,
що всюди єси і все наповняєш,
скарбе дібр і життя подателю,
прийди і вселися в нас,
і очисти нас від усякої скверни,
і спаси Благий душі наші.    комп''ютерне відтворення','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_245292'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_245292','Царю небесний','Царю небесний,
утішителю, Душе істини,
що всюди єси і все наповняєш,
скарбе дібр і життя подателю,
прийди і вселися в нас,
і очисти нас від усякої скверни,
і спаси Благий душі наші.    комп''ютерне відтворення');
DELETE FROM song_links WHERE song_id = 'pisniua_24550';
DELETE FROM song_versions WHERE song_id = 'pisniua_24550';
DELETE FROM songs_fts WHERE song_id = 'pisniua_24550';
DELETE FROM songs WHERE id = 'pisniua_24550';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_24550','Я їду додому','Музика: Святослав Вакарчук Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'Аудіозапис(CD) - Океан Ельзи. Твій формат. 2003 - Бонус-трек. -C- Roshen/Вакарчук','А я додав акорди:) -bohdanko Підбір акордів: bohdanko','Em  D             Am   *
Я бачу навколо   каміння і квіти,
Міста і вокзали,   і сонце, і сніг.
Я буду чекати, я буду хотіти,
Їх бачити знову, і знову до них.

Приспів:
Я їду додому,
Em
До тебе додому,
Де очі знайомі
Em
І завжди нові.
Я їду додому,
Em
До тебе додому.
Які ж вони довгі,
Em
Ті ночі і дні.

Програш: Em D C  (2)

А знаєш, буває, коли я не можу
Піднятися далі в полоні оков,
Але відчеваю, невидима сила
Мене підіймає знову і знов.

Приспів.

* В оригіналі пісня грається з акорду Gm.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:manrivni'', ''cat:nostalgia'', ''Пісні про кохання, ліричні'', ''Пісні на мандрівну тематику'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_24550'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_24550','Я їду додому','Em  D             Am   *
Я бачу навколо   каміння і квіти,
Міста і вокзали,   і сонце, і сніг.
Я буду чекати, я буду хотіти,
Їх бачити знову, і знову до них.

Приспів:
Я їду додому,
Em
До тебе додому,
Де очі знайомі
Em
І завжди нові.
Я їду додому,
Em
До тебе додому.
Які ж вони довгі,
Em
Ті ночі і дні.

Програш: Em D C  (2)

А знаєш, буває, коли я не можу
Піднятися далі в полоні оков,
Але відчеваю, невидима сила
Мене підіймає знову і знов.

Приспів.

* В оригіналі пісня грається з акорду Gm.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24550_l1','pisniua_24550','YouTube','https://www.youtube.com/watch?v=dLWQm1UDwO0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2465318';
DELETE FROM song_versions WHERE song_id = 'pisniua_2465318';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2465318';
DELETE FROM songs WHERE id = 'pisniua_2465318';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2465318','Колискова','Музика: Марина Круть Слова: Герда Соняш','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Люлі, люлі, сину мій,
Звірі йдуть у лютий бій.
Нічка буде та й мине,
Татко звірів прожене!..

Приспів:
А ти спи... Спи... Спи...
Я малюю тобі сни...
Спи... Спи... Спи...
Тато береже степи!..

То не місяць, а вогні,
То не звірі - вороги!
Та нам хижі не страшні,
В нас є воля і пісні!

Приспів.

Оповив хати залізобетон,
В пікселі брати стережуть твій сон!
Стали ми усі сильними з весни,
Щоб ти, сину, жив, в світі без війни!
Люлі, люлі, ну, спи, малятко, спи...
Я вже не боюсь, і не бійся ти!

Спи... Спи... Спи... | (3)

Люлі, люлі, сину мій...
Люлі, люлі, сину мій...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2465318'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2465318','Колискова','Люлі, люлі, сину мій,
Звірі йдуть у лютий бій.
Нічка буде та й мине,
Татко звірів прожене!..

Приспів:
А ти спи... Спи... Спи...
Я малюю тобі сни...
Спи... Спи... Спи...
Тато береже степи!..

То не місяць, а вогні,
То не звірі - вороги!
Та нам хижі не страшні,
В нас є воля і пісні!

Приспів.

Оповив хати залізобетон,
В пікселі брати стережуть твій сон!
Стали ми усі сильними з весни,
Щоб ти, сину, жив, в світі без війни!
Люлі, люлі, ну, спи, малятко, спи...
Я вже не боюсь, і не бійся ти!

Спи... Спи... Спи... | (3)

Люлі, люлі, сину мій...
Люлі, люлі, сину мій...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2465318_l1','pisniua_2465318','YouTube','https://www.youtube.com/watch?v=6AncA5LcxK4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2465318_l2','pisniua_2465318','YouTube','https://www.youtube.com/watch?v=3ekdz3-xR_E','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2465379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2465379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2465379';
DELETE FROM songs WHERE id = 'pisniua_2465379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2465379','Кульбаби','Музика: Іван Клименко Слова: Іван Клименко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ми знову все на потім,
На потім, потім,
І поруч пройшов потяг,
А в ньому не ми...
Сховати пустоту
Не допоможе нам одяг,
А може ми забули, як то
Бути людьми... Тож

Приспів:
Цілуй мене і ваби,
Падай зі мною в кульбаби!
Цілого життя нам мало,
Було би два - віддала би!..
Цілуй мене і ваби,
Падай зі мною в кульбаби!
Цілого життя нам мало,
Було би два - віддала би тобі!..

Тікаєм від буденості
Кожен в свої берлоги,
А почуття провини
Ми топимо у вині...
І де наші відверті
Щирі діалоги,
Що нагають нам,
Як то бути людьми?..
А я біля себе посаджу тебе,
Дивитимемось в небо,
Поки не впадем,
А ти давай!

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2465379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2465379','Кульбаби','Ми знову все на потім,
На потім, потім,
І поруч пройшов потяг,
А в ньому не ми...
Сховати пустоту
Не допоможе нам одяг,
А може ми забули, як то
Бути людьми... Тож

Приспів:
Цілуй мене і ваби,
Падай зі мною в кульбаби!
Цілого життя нам мало,
Було би два - віддала би!..
Цілуй мене і ваби,
Падай зі мною в кульбаби!
Цілого життя нам мало,
Було би два - віддала би тобі!..

Тікаєм від буденості
Кожен в свої берлоги,
А почуття провини
Ми топимо у вині...
І де наші відверті
Щирі діалоги,
Що нагають нам,
Як то бути людьми?..
А я біля себе посаджу тебе,
Дивитимемось в небо,
Поки не впадем,
А ти давай!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2465379_l1','pisniua_2465379','YouTube','https://www.youtube.com/watch?v=tOpsGhNHY58','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2465379_l2','pisniua_2465379','YouTube','https://www.youtube.com/watch?v=B6Hg_gEy7iw','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2466216';
DELETE FROM song_versions WHERE song_id = 'pisniua_2466216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2466216';
DELETE FROM songs WHERE id = 'pisniua_2466216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2466216','Чекає вдома','Музика: А. Вдовиченко, Я. Карпук, К. Медведєва, В. Самолюк Слова: А. Вдовиченко, Я. Карпук, К. Медведєва, В. Самолюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Я дожену останнього вагона,     |
Коли вона мене чекає вдома!..   |
Я дотягнусь останнього балкона, |
Коли вона мене чекає вдома!..   | (2)

Дякую, що чекаєш!
Дякую, що ти ждеш!
Подумки обіймаєш
І під подушку кладеш!
Дякую, що ти терпиш!
Дякую, що тремтиш!
Коли не телефоную
Ти плачеш або мовчиш...
Тепліше немає ковдри,
Ніж твої руки...
За кілометр впізнаю
Всі твої рухи!..
Рідніше немає нічого,
Ніж твій погляд!..
Ти дочекайся,
А я уже поряд!..

Приспів.

А я по стінам,
Коли без тебе постійно...
А я по стелі,
Коли без тебе в постелі...
Ми без зупину думаємо
Про обійми, тому біжим
На біле світло у тунелі...
Ми стомлені відстанню,
Шукаємо пристані,
Біжимо розхристанні
На зустріч один одному,
Бо не можем чекать!..

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2466216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2466216','Чекає вдома','Приспів:
Я дожену останнього вагона,     |
Коли вона мене чекає вдома!..   |
Я дотягнусь останнього балкона, |
Коли вона мене чекає вдома!..   | (2)

Дякую, що чекаєш!
Дякую, що ти ждеш!
Подумки обіймаєш
І під подушку кладеш!
Дякую, що ти терпиш!
Дякую, що тремтиш!
Коли не телефоную
Ти плачеш або мовчиш...
Тепліше немає ковдри,
Ніж твої руки...
За кілометр впізнаю
Всі твої рухи!..
Рідніше немає нічого,
Ніж твій погляд!..
Ти дочекайся,
А я уже поряд!..

Приспів.

А я по стінам,
Коли без тебе постійно...
А я по стелі,
Коли без тебе в постелі...
Ми без зупину думаємо
Про обійми, тому біжим
На біле світло у тунелі...
Ми стомлені відстанню,
Шукаємо пристані,
Біжимо розхристанні
На зустріч один одному,
Бо не можем чекать!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2466216_l1','pisniua_2466216','YouTube','https://www.youtube.com/watch?v=ed0aLnuNw_U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2468990';
DELETE FROM song_versions WHERE song_id = 'pisniua_2468990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2468990';
DELETE FROM songs WHERE id = 'pisniua_2468990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2468990','Повільно','Музика: ADAM Слова: ADAM','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сьогодні, мила, день буде прекрасним,
І на морозі розцвітуть сади,
І сонце нам світити буде ясно!
Все буде так, як того схочем ми!..

Приспів:
Танцюй зі мною повільно!..
Хай зачекає світ божевільний...
Танцюй зі мною повільно!..
Бути щасливі ми повинні!..

Сьогодні, мила, день буде, як треба
І в темнім небі зорі спалахнуть,
А потім нам з тобою, якщо треба,
Вони із неба в руки упадуть!..

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2468990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2468990','Повільно','Сьогодні, мила, день буде прекрасним,
І на морозі розцвітуть сади,
І сонце нам світити буде ясно!
Все буде так, як того схочем ми!..

Приспів:
Танцюй зі мною повільно!..
Хай зачекає світ божевільний...
Танцюй зі мною повільно!..
Бути щасливі ми повинні!..

Сьогодні, мила, день буде, як треба
І в темнім небі зорі спалахнуть,
А потім нам з тобою, якщо треба,
Вони із неба в руки упадуть!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468990_l1','pisniua_2468990','YouTube','https://www.youtube.com/watch?v=rdZcvBvIzMU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468990_l2','pisniua_2468990','YouTube','https://www.youtube.com/watch?v=FtYiKqJwpTw','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468990_l3','pisniua_2468990','YouTube','https://www.youtube.com/watch?v=yQkKn0qy5F8','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468990_l4','pisniua_2468990','YouTube','https://www.youtube.com/watch?v=Zu6HK5ESeaU','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468990_l5','pisniua_2468990','YouTube','https://www.youtube.com/watch?v=fLevAcA1IA8','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_2471515';
DELETE FROM song_versions WHERE song_id = 'pisniua_2471515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2471515';
DELETE FROM songs WHERE id = 'pisniua_2471515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2471515','Жоржини','Музика: Володимир Будейчук Слова: Катерина Костюк. Виконує: Наталія Бучинська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В солодкому сні приходиш мені,
Затримують відлік хвилини...
У мріях одні закохані дні,
Нас двоє і квітнуть жоржини!..
Кохання зійшло, як сонце зайшло
За теплий і зоряний вечір...

Приспів:
Забери мене, бери до свого серця  |
І нехай любов рікою розіллється!  |
Зачаруй мене, даруй мені жоржини, |
Називай лише мене "Моя дружина!"  | (2)

А очі твої - тумани мутні,
Як вперше, я в них заблукала...
Багряна любов розквітла в мені
І спокій навіки забрала...
Хай все перейде, хай сонце зійде,
Де цвітом так ваблять жоржини!..

Приспів.

Зачаруй мене, даруй мені жоржини,
Називай лише мене "Моя дружина!"','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2471515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2471515','Жоржини','В солодкому сні приходиш мені,
Затримують відлік хвилини...
У мріях одні закохані дні,
Нас двоє і квітнуть жоржини!..
Кохання зійшло, як сонце зайшло
За теплий і зоряний вечір...

Приспів:
Забери мене, бери до свого серця  |
І нехай любов рікою розіллється!  |
Зачаруй мене, даруй мені жоржини, |
Називай лише мене "Моя дружина!"  | (2)

А очі твої - тумани мутні,
Як вперше, я в них заблукала...
Багряна любов розквітла в мені
І спокій навіки забрала...
Хай все перейде, хай сонце зійде,
Де цвітом так ваблять жоржини!..

Приспів.

Зачаруй мене, даруй мені жоржини,
Називай лише мене "Моя дружина!"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2471515_l1','pisniua_2471515','YouTube','https://www.youtube.com/watch?v=LPEsij-LvfA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2471515_l2','pisniua_2471515','YouTube','https://www.youtube.com/watch?v=ftvsisTdAEE','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2486522';
DELETE FROM song_versions WHERE song_id = 'pisniua_2486522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2486522';
DELETE FROM songs WHERE id = 'pisniua_2486522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2486522','Спи, котику милий','Музика: Олег Берестовий Слова: Олег Берестовий','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Спи, котику милий,      |
Працюють Збройні Сили!  |
У пікселі люди - герої, |
Вони щохвилини з тобою! | (2)

Сонечко сідає, ніч наступає,
Сон солодкий тебе ніжно обіймає,
Хай тобі насняться всі наші мрії,
Стануть реальними всі наші надії:
Світанок в Криму із яскравими зорями,
Троянди Донецьку з його териконами,
Харківські вулиці з цілими вікнами,
Проспекти Херсону, водою незмитими!
Як стиглу черешню їмо в Мелітополі,
І вже триколорів нема в Севастополі.
Все буде так, а поки ти спи,
Спи, котику, спи!..

Приспів.

Уяви: на Азовсталі запущені домени,
Знову концерт під Новою Каховкою,
Дивимось матч Десни у Чернігові,
Бачу всі пляжі Одеси відкритими!
Чиста вода знову є в Миколаєві,
Бориспіль відкрито, всі рейси за графіком,
Буча, Бахмут, Лисичанськ відбудовано!
Все буде так, а поки ти спи!..

Приспів.

Спи, котику милий,
Працюють Збройні Сили!
Не Marvel, Dіce та ковбої,
А в пікселі супергерої!','[''pisni.org.ua'', ''cat:devoted'', ''cat:kolyskovi'', ''cat:pro-ditey'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Колискові'', ''Пісні про любов до дітей'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2486522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2486522','Спи, котику милий','Приспів:
Спи, котику милий,      |
Працюють Збройні Сили!  |
У пікселі люди - герої, |
Вони щохвилини з тобою! | (2)

Сонечко сідає, ніч наступає,
Сон солодкий тебе ніжно обіймає,
Хай тобі насняться всі наші мрії,
Стануть реальними всі наші надії:
Світанок в Криму із яскравими зорями,
Троянди Донецьку з його териконами,
Харківські вулиці з цілими вікнами,
Проспекти Херсону, водою незмитими!
Як стиглу черешню їмо в Мелітополі,
І вже триколорів нема в Севастополі.
Все буде так, а поки ти спи,
Спи, котику, спи!..

Приспів.

Уяви: на Азовсталі запущені домени,
Знову концерт під Новою Каховкою,
Дивимось матч Десни у Чернігові,
Бачу всі пляжі Одеси відкритими!
Чиста вода знову є в Миколаєві,
Бориспіль відкрито, всі рейси за графіком,
Буча, Бахмут, Лисичанськ відбудовано!
Все буде так, а поки ти спи!..

Приспів.

Спи, котику милий,
Працюють Збройні Сили!
Не Marvel, Dіce та ковбої,
А в пікселі супергерої!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2486522_l1','pisniua_2486522','YouTube','https://www.youtube.com/watch?v=HFRFXfkStXg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2506096';
DELETE FROM song_versions WHERE song_id = 'pisniua_2506096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2506096';
DELETE FROM songs WHERE id = 'pisniua_2506096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2506096','Валентинка','Музика: Діма Варварук Слова: Діма Варварук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я трактор виганяю,
До неї під''їжджаю:
Сідай, мала, не бійся,
Бо я ся не кусаю!
Вали куди подалі,
Я сторіси знімаю,
В моєму Instagramі
Тобі місця немає!
Я збрив скоренько вуса,
Красиво одягнувся,
За квіткою нагнувся,
Холєра послизнувся -
Коліна у болоті,
Трава у мене в роті,
Але я не здаюся,
Тебе якось доб''юся!
Нічо не помічаю,
Я сторіс тут знімаю,
Підписникам клянуся,
На трактор не ведуся!
Я - модна інстакраля,
Перегляди збираю,
Зараз закину фотку,
Мені й без тебе чотко!

Приспів:
Це кожен відчуває,
Коли щиро кохає,
На тракторі чи мерсі
Свою малу катає.
Я в тебе закохався
І в почуттях зізнався!

Постій хоча б хвилинку!
Ти - моя валентинка!
Ва-ва-ва-валентинка!
Ва-ва-ва-валентинка!
Ти - моя валентинка!
Ва-ва-ва-валентинка!
Ва-ва-ва-валентинка!
Ва-ва-ва-валентинка!
Ти - моя валентинка!
Ва-ва-ва-валентинка!

І я стою гадаю,
Робити що не знаю,
Тепер я ще крутіший
На жизі під''їжджаю.
Мала сьогодні вільна? -
Я впевнено питаю.
Легенько повернулась
І щиро посміхнулась,
А я сиджу чекаю
І квітку протягаю,
Вона почервоніла,
Але до мене сіла.
Знайшов іzі.ua,
Все для крутих людей,
Продав магнітофона,
Купив собі іPhona!
Забули всі образи,
На сторіс тепер разом,
Ділюсь з підписниками
Своїми почуттями!

Приспів.

Ти - моя половинка!
Найкраща валентинка!
Ва-ва-ва-валентинка!
ва-ва-ва-валентинка!
Ти - моя валентинка!
Ва-ва-ва-валентинка!
Ва-ва-ва-валентинка!
Ва-ва-ва-валентинка!
Ти - моя валентинка!
Ва-ва-ва-валентинка!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2506096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2506096','Валентинка','Я трактор виганяю,
До неї під''їжджаю:
Сідай, мала, не бійся,
Бо я ся не кусаю!
Вали куди подалі,
Я сторіси знімаю,
В моєму Instagramі
Тобі місця немає!
Я збрив скоренько вуса,
Красиво одягнувся,
За квіткою нагнувся,
Холєра послизнувся -
Коліна у болоті,
Трава у мене в роті,
Але я не здаюся,
Тебе якось доб''юся!
Нічо не помічаю,
Я сторіс тут знімаю,
Підписникам клянуся,
На трактор не ведуся!
Я - модна інстакраля,
Перегляди збираю,
Зараз закину фотку,
Мені й без тебе чотко!

Приспів:
Це кожен відчуває,
Коли щиро кохає,
На тракторі чи мерсі
Свою малу катає.
Я в тебе закохався
І в почуттях зізнався!

Постій хоча б хвилинку!
Ти - моя валентинка!
Ва-ва-ва-валентинка!
Ва-ва-ва-валентинка!
Ти - моя валентинка!
Ва-ва-ва-валентинка!
Ва-ва-ва-валентинка!
Ва-ва-ва-валентинка!
Ти - моя валентинка!
Ва-ва-ва-валентинка!

І я стою гадаю,
Робити що не знаю,
Тепер я ще крутіший
На жизі під''їжджаю.
Мала сьогодні вільна? -
Я впевнено питаю.
Легенько повернулась
І щиро посміхнулась,
А я сиджу чекаю
І квітку протягаю,
Вона почервоніла,
Але до мене сіла.
Знайшов іzі.ua,
Все для крутих людей,
Продав магнітофона,
Купив собі іPhona!
Забули всі образи,
На сторіс тепер разом,
Ділюсь з підписниками
Своїми почуттями!

Приспів.

Ти - моя половинка!
Найкраща валентинка!
Ва-ва-ва-валентинка!
ва-ва-ва-валентинка!
Ти - моя валентинка!
Ва-ва-ва-валентинка!
Ва-ва-ва-валентинка!
Ва-ва-ва-валентинка!
Ти - моя валентинка!
Ва-ва-ва-валентинка!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2506096_l1','pisniua_2506096','YouTube','https://www.youtube.com/watch?v=LO7m0lxWD0s','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2509175';
DELETE FROM song_versions WHERE song_id = 'pisniua_2509175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2509175';
DELETE FROM songs WHERE id = 'pisniua_2509175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2509175','Пісня про пожежну небезпеку','Музика: Олена Мачайло Слова: Зоряна Лісевич','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Хто там бавиться з вогнем,
Додає усім проблем?
Хто у домі жартівник,
І до рук узяв сірник?
Ой, горить! Горить! Горить!
Ой, димить! Димить! Димить!
Може все згоріти вмить!
Поможіть! Допоможіть!

Приспів:
Увага! Увага! Пожежа!
Пожежників покликати належить!
Ти ґав не лови, не дрімай,
Один нуль один набирай!
Увага! Увага! Пожежа!
Пожежників покликати належить!
Пожежників швидко гукни -
Погасять пожежу вони!

Хто там бавиться з вогнем,
Додає усім проблем?
В лісі ватру хто палив
І її не загасив?
Ой, горить! Горить! Горить!
Ой, димить! Димить! Димить!
Може все згоріти вмить!
Поможіть! Допоможіть!

Приспів.

Хто там бавиться з вогнем,
Додає усім проблем?
Хто по полечку ходив
І суху траву палив?
Ой, горить! Горить! Горить!
Ой, димить! Димить! Димить!
Може все згоріти вмить!
Поможіть! Допоможіть!

Приспів.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2509175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2509175','Пісня про пожежну небезпеку','Хто там бавиться з вогнем,
Додає усім проблем?
Хто у домі жартівник,
І до рук узяв сірник?
Ой, горить! Горить! Горить!
Ой, димить! Димить! Димить!
Може все згоріти вмить!
Поможіть! Допоможіть!

Приспів:
Увага! Увага! Пожежа!
Пожежників покликати належить!
Ти ґав не лови, не дрімай,
Один нуль один набирай!
Увага! Увага! Пожежа!
Пожежників покликати належить!
Пожежників швидко гукни -
Погасять пожежу вони!

Хто там бавиться з вогнем,
Додає усім проблем?
В лісі ватру хто палив
І її не загасив?
Ой, горить! Горить! Горить!
Ой, димить! Димить! Димить!
Може все згоріти вмить!
Поможіть! Допоможіть!

Приспів.

Хто там бавиться з вогнем,
Додає усім проблем?
Хто по полечку ходив
І суху траву палив?
Ой, горить! Горить! Горить!
Ой, димить! Димить! Димить!
Може все згоріти вмить!
Поможіть! Допоможіть!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2509175_l1','pisniua_2509175','YouTube','https://www.youtube.com/watch?v=ApkcFggMRno','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2514420';
DELETE FROM song_versions WHERE song_id = 'pisniua_2514420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2514420';
DELETE FROM songs WHERE id = 'pisniua_2514420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2514420','Красиво','Музика: Віктор Винник Слова: Віктор Винник. Виконує: Віктор Винник, Мері','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Потонути у очах,
Загорнутися в ранкові сни,
Залишити все, як є,
Зупинити час...
Не ховатися за слова,
Пити вітер ранньої весни,
Залишити все, як є,
Думати про нас...

Приспів:
Давай зробим красиво!
Давай будем щасливі!
Ти для мене, як диво!
Давай зробим красиво!
Давай зробим красиво!
Давай будем щасливі!
Не дивись, що я сивий,
Давай зробим красиво!

Не триматися за жаль,
Не палити своє серце ним!..
Говорити все, як є,
Просто, без прикрас!..
Відпустити ту печаль,
Ней летить, як дим!..
Залишити все, як є,
Думати про нас...

Приспів.

Потонути у очах,
Загорнутися в ранкові сни,
Залишити все, як є,
Зупинити час...

Приспів. (2)','[''pisni.org.ua'', ''cat:devoted'', ''cat:socialno-pobutovi'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Соціально-побутові пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2514420'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2514420','Красиво','Потонути у очах,
Загорнутися в ранкові сни,
Залишити все, як є,
Зупинити час...
Не ховатися за слова,
Пити вітер ранньої весни,
Залишити все, як є,
Думати про нас...

Приспів:
Давай зробим красиво!
Давай будем щасливі!
Ти для мене, як диво!
Давай зробим красиво!
Давай зробим красиво!
Давай будем щасливі!
Не дивись, що я сивий,
Давай зробим красиво!

Не триматися за жаль,
Не палити своє серце ним!..
Говорити все, як є,
Просто, без прикрас!..
Відпустити ту печаль,
Ней летить, як дим!..
Залишити все, як є,
Думати про нас...

Приспів.

Потонути у очах,
Загорнутися в ранкові сни,
Залишити все, як є,
Зупинити час...

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2514420_l1','pisniua_2514420','YouTube','https://www.youtube.com/watch?v=i3C1nQjuYuw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2517414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2517414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2517414';
DELETE FROM songs WHERE id = 'pisniua_2517414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2517414','Я на Жигулі','Музика: Дмитро Волканов Слова: Дмитро Волканов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я на Жигулі, а він на Мерседесі,
Я у Жашкові, а він живе в Одесі!
Любиш ти його, тому що він красивий,
А я в двадцять год уже сивий! Поїхали!

Ти мене приворожила, серце забрала,
Що мені тепер робити? - Я зовсім не знаю.
Закохався я по вуха, що це за діла?
Я без тебе не живу, просто помираю! Ой!

Приспів:
Я на Жигулі, а він на Мерседесі,
Я у Жашкові, а він живе в Одесі!
Любиш ти його, тому що він красивий,
А я в двадцять год уже сивий!
І тобі не треба мої поцілунки,
Він тобі дарує класні подарунки.
Секрети від Вікторії і сумку Guccі,
Але все одно я круче!

Я тобі скажу, мала, що ти зовсім не права!
Головне, що їде, марка зовсім не важлива!
Краде мої слова, посивіла голова,
Бо мене ніколи, ти ніколи не любила!..

Приспів.

Але все одно я круче!
Але все одно я круче!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2517414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2517414','Я на Жигулі','Я на Жигулі, а він на Мерседесі,
Я у Жашкові, а він живе в Одесі!
Любиш ти його, тому що він красивий,
А я в двадцять год уже сивий! Поїхали!

Ти мене приворожила, серце забрала,
Що мені тепер робити? - Я зовсім не знаю.
Закохався я по вуха, що це за діла?
Я без тебе не живу, просто помираю! Ой!

Приспів:
Я на Жигулі, а він на Мерседесі,
Я у Жашкові, а він живе в Одесі!
Любиш ти його, тому що він красивий,
А я в двадцять год уже сивий!
І тобі не треба мої поцілунки,
Він тобі дарує класні подарунки.
Секрети від Вікторії і сумку Guccі,
Але все одно я круче!

Я тобі скажу, мала, що ти зовсім не права!
Головне, що їде, марка зовсім не важлива!
Краде мої слова, посивіла голова,
Бо мене ніколи, ти ніколи не любила!..

Приспів.

Але все одно я круче!
Але все одно я круче!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2517414_l1','pisniua_2517414','YouTube','https://www.youtube.com/watch?v=ptedNJ1T1cQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2534012';
DELETE FROM song_versions WHERE song_id = 'pisniua_2534012';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2534012';
DELETE FROM songs WHERE id = 'pisniua_2534012';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2534012','Ніченька темная','Музика: народна Слова: Володимир Косовський. Виконує: Тарас Компаніченко','uk','ukraine_1991',NULL,NULL,'Записи виконання Тараса Компаніченка','На мотив пісні "Ніч яка місячна, зоряна, ясная..."','Ніченька темная, ніченька синяя
Мороком кутає гай.
Вийди, коханая, вийди, єдиная, -        |
Разом зі мною втікай!                   | (2)

Я заведу тебе в нетрі глибокії:
Річка там тихо біжить -
Будемо жити разом із гранатами,         |
Разом з гвинтівкою жить.                | (2)

Там по лісах і ярах не віддалена
Ворогу нас не спіймать -
Там наплювать нам на Гітлера й Сталіна, |
Там на обох наплювать!                  | (2)

Крови вкраїнської море бездоннеє
П''ють та не вип''ють усе:
Сталін в Сибір гнав батьків міліонами,  |
Гітлер - до Райху везе.                 | (2)

Всі, як один, по лісах поховаємось,
Всі, як один, утечем -
Дружно піднімемось, часу не згаємо,     |
Вдаримо з лісу огнем!                   | (2)

А як не стане катів на Україні,
Щастям розквітне наш край!
Вийди ж, коханая, вийди, єдиная, -      |
Разом зі мною втікай!                   | (2)

А як не стане катів на Україні,
Щастям розквітне наш край!
Вийди ж, коханая, вийди, єдиная, -      |
Разом зі мною втікай!                   | (2)','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2534012'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2534012','Ніченька темная','Ніченька темная, ніченька синяя
Мороком кутає гай.
Вийди, коханая, вийди, єдиная, -        |
Разом зі мною втікай!                   | (2)

Я заведу тебе в нетрі глибокії:
Річка там тихо біжить -
Будемо жити разом із гранатами,         |
Разом з гвинтівкою жить.                | (2)

Там по лісах і ярах не віддалена
Ворогу нас не спіймать -
Там наплювать нам на Гітлера й Сталіна, |
Там на обох наплювать!                  | (2)

Крови вкраїнської море бездоннеє
П''ють та не вип''ють усе:
Сталін в Сибір гнав батьків міліонами,  |
Гітлер - до Райху везе.                 | (2)

Всі, як один, по лісах поховаємось,
Всі, як один, утечем -
Дружно піднімемось, часу не згаємо,     |
Вдаримо з лісу огнем!                   | (2)

А як не стане катів на Україні,
Щастям розквітне наш край!
Вийди ж, коханая, вийди, єдиная, -      |
Разом зі мною втікай!                   | (2)

А як не стане катів на Україні,
Щастям розквітне наш край!
Вийди ж, коханая, вийди, єдиная, -      |
Разом зі мною втікай!                   | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2534012_l1','pisniua_2534012','YouTube','https://www.youtube.com/watch?v=xJSIPwge-s8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2537212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2537212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2537212';
DELETE FROM songs WHERE id = 'pisniua_2537212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2537212','Колишня','Музика: Ivan Klimenko, MamaRika, DOVI, STORM Слова: Ivan Klimenko, MamaRika','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Речитатив:
І поки вони пліткували
Про те, що нам не бути разом,
Ми збирали себе по крихтах,
Вчилися заново вірити і кохати...
І, навіть, коли весь світ був проти,
Ми всупереч всьому обрали бути
Щасливими!..

Слова чужі,як листопад,
Жовтіють і зникають взимку,
Там за вікном десятки чужих порад,
А ми спостерігаєм, як росте людинка...
Слова чужі, як казино,
То підігріють, то потім зроблять бідним,
Ми дякуєм, але нам все одно,
Бо з нашого вікна правду краще видно!..
Летим удвох над втомленим містом,
Тримай мене міцно, будь ласка!..

Приспів:
Нехай вони кидають слова на наш рахунок
Коли ти поряд це поря-поря-поря-порятунок!
Нехай вони пліткують годинами і тижнями,
Не стану я ніколи коли-коли-колишньою...
Коли-коли-колишньою...
Коли-коли-колишньою...

Бачиш, син росте не по рокам!
Час наче пісок, я трішки заздрю
Юнакам, які на останні гроші
Купили квіти і спішать,
Наче комахи на світло,
До своїх рідних дівчат!
Кохання, як вино, з часом
Дорожче і міцніше, навіть
Коли двоє поважають
Один одного, не давлять,
І навіть, коли навкруги всі
Щось про нас говорять,
На наших дверях табличка:
Don''t dіsturb, sorry!

Приспів.

Летим удвох над втомленим містом,
Тримай мене міцно, будь ласка!..','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2537212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2537212','Колишня','Речитатив:
І поки вони пліткували
Про те, що нам не бути разом,
Ми збирали себе по крихтах,
Вчилися заново вірити і кохати...
І, навіть, коли весь світ був проти,
Ми всупереч всьому обрали бути
Щасливими!..

Слова чужі,як листопад,
Жовтіють і зникають взимку,
Там за вікном десятки чужих порад,
А ми спостерігаєм, як росте людинка...
Слова чужі, як казино,
То підігріють, то потім зроблять бідним,
Ми дякуєм, але нам все одно,
Бо з нашого вікна правду краще видно!..
Летим удвох над втомленим містом,
Тримай мене міцно, будь ласка!..

Приспів:
Нехай вони кидають слова на наш рахунок
Коли ти поряд це поря-поря-поря-порятунок!
Нехай вони пліткують годинами і тижнями,
Не стану я ніколи коли-коли-колишньою...
Коли-коли-колишньою...
Коли-коли-колишньою...

Бачиш, син росте не по рокам!
Час наче пісок, я трішки заздрю
Юнакам, які на останні гроші
Купили квіти і спішать,
Наче комахи на світло,
До своїх рідних дівчат!
Кохання, як вино, з часом
Дорожче і міцніше, навіть
Коли двоє поважають
Один одного, не давлять,
І навіть, коли навкруги всі
Щось про нас говорять,
На наших дверях табличка:
Don''t dіsturb, sorry!

Приспів.

Летим удвох над втомленим містом,
Тримай мене міцно, будь ласка!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2537212_l1','pisniua_2537212','YouTube','https://www.youtube.com/watch?v=6MQrol9a-jI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_25457';
DELETE FROM song_versions WHERE song_id = 'pisniua_25457';
DELETE FROM songs_fts WHERE song_id = 'pisniua_25457';
DELETE FROM songs WHERE id = 'pisniua_25457';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_25457','Річка','(Двічі в одну річку не ввійдеш...). Музика: Юлія Рай Слова: Юлія Рай. Виконує: Юлія Рай','uk','ukraine_1991',NULL,NULL,'Аудіозапис','* В оригіналі пісня виконується в тональності Hm. Тоді акорди такі: - Вступ: G Em G F# Hm - Куплет: G | Hm | G A | D Em F# - Приспів: Hm Em | A D | G A D Hm | Em F# Hm Підбір акордів: bohdanko','Вступ: C Am C H Em
C
Більше я не дамся смутку в полон,
Em
І не наздожене мене печаль.
Я не заплачу за тобою знов.
Прощавай, прощавай, любий, любий.

Приспів:
Двічі в одну річку не ввійдеш,
Не благай мене.
Ти зі мною щастя не знайдеш.
Не руйнуй, що є.
Наша пам''ять збереже любов, що у нас була.
Вибач... Зрозумій... Я розлюбила.

Те, що вже минуло, не повернеш.
І ти не знайдеш ніжність в моїх очах.
Щастя, що втікає, не доженеш.
Ти один, я одна, любий, любий...

Приспів.
Програш (на мелодію куплету).
Приспів (2).','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_25457'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_25457','Річка','Вступ: C Am C H Em
C
Більше я не дамся смутку в полон,
Em
І не наздожене мене печаль.
Я не заплачу за тобою знов.
Прощавай, прощавай, любий, любий.

Приспів:
Двічі в одну річку не ввійдеш,
Не благай мене.
Ти зі мною щастя не знайдеш.
Не руйнуй, що є.
Наша пам''ять збереже любов, що у нас була.
Вибач... Зрозумій... Я розлюбила.

Те, що вже минуло, не повернеш.
І ти не знайдеш ніжність в моїх очах.
Щастя, що втікає, не доженеш.
Ти один, я одна, любий, любий...

Приспів.
Програш (на мелодію куплету).
Приспів (2).');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25457_l1','pisniua_25457','YouTube','https://www.youtube.com/watch?v=eqTvB5aVJTE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25457_l2','pisniua_25457','YouTube','https://www.youtube.com/watch?v=TFn5tKj-vlQ','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2572175';
DELETE FROM song_versions WHERE song_id = 'pisniua_2572175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2572175';
DELETE FROM songs WHERE id = 'pisniua_2572175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2572175','Сумная колядка','Музика: народна Слова: Любов Савчук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сумная колядка
Линула по світу,
Та її вже не співають      |
Українські діти.           | (2)

Ворожі ракети,
Каби, іскандери
Поховали під завали        |
Дитячі серденька...        | (2)

Вони відлетіли
Янголами в небо
І благають про молитву     |
У мене і в тебе.           | (2)

Хай Різдвяна зірка
Засвітить в дорогу
Всім, хто в небі і в окопі |
Кує перемогу!..            | (2)

Хай оберігає
Янгол-охоронець
ЗСУ і ТРО                  |
Від ворожих дронів!        | (2)

Просимо у Бога
Миру для Вкраїни,
А орда чужинська хижа      |
Навіки хай згине!          | (2)

Ти, Різдвяна зірко,
Засвітись в дорогу
Всім, хто в небі і в окопі |
Неси перемогу!             | (2)','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2572175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2572175','Сумная колядка','Сумная колядка
Линула по світу,
Та її вже не співають      |
Українські діти.           | (2)

Ворожі ракети,
Каби, іскандери
Поховали під завали        |
Дитячі серденька...        | (2)

Вони відлетіли
Янголами в небо
І благають про молитву     |
У мене і в тебе.           | (2)

Хай Різдвяна зірка
Засвітить в дорогу
Всім, хто в небі і в окопі |
Кує перемогу!..            | (2)

Хай оберігає
Янгол-охоронець
ЗСУ і ТРО                  |
Від ворожих дронів!        | (2)

Просимо у Бога
Миру для Вкраїни,
А орда чужинська хижа      |
Навіки хай згине!          | (2)

Ти, Різдвяна зірко,
Засвітись в дорогу
Всім, хто в небі і в окопі |
Неси перемогу!             | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2572175_l1','pisniua_2572175','YouTube','https://www.youtube.com/watch?v=3noYevS4qmE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_260212';
DELETE FROM song_versions WHERE song_id = 'pisniua_260212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_260212';
DELETE FROM songs WHERE id = 'pisniua_260212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_260212','А ми удвох','Музика: Олександр Зуєв Слова: Володимир Кудрявцев. Виконує: Кобза, ВІА Калина, Мертвий півень','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Gm
У зелен саду у зір на виду
Хто любиться, милується
Gm
Щасливий усміх, рука у руці
Йдуть парами по вулиці.

Приспів:
А ми удвох, а ми удвох
В одне дівча закохані.
Все мріємо і віримо,
Що любить нас обох.
А ми удвох, а ми удвох
Неначе причаровані.
Тій дівчині освідчитись
Ніяк не зберемось.

Удвох день у день, співаєм пісень
І все заради дівчини
Для неї ми ще тієї зими
Всі модні танці вивчили.

Приспів.

А небо вже все, немов синій степ,
Зірницями поорано,
Кому ж це із нас дівчина в цей час
Всміхається так зоряно?..

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_260212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_260212','А ми удвох','Gm
У зелен саду у зір на виду
Хто любиться, милується
Gm
Щасливий усміх, рука у руці
Йдуть парами по вулиці.

Приспів:
А ми удвох, а ми удвох
В одне дівча закохані.
Все мріємо і віримо,
Що любить нас обох.
А ми удвох, а ми удвох
Неначе причаровані.
Тій дівчині освідчитись
Ніяк не зберемось.

Удвох день у день, співаєм пісень
І все заради дівчини
Для неї ми ще тієї зими
Всі модні танці вивчили.

Приспів.

А небо вже все, немов синій степ,
Зірницями поорано,
Кому ж це із нас дівчина в цей час
Всміхається так зоряно?..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_260212_l1','pisniua_260212','YouTube','https://www.youtube.com/watch?v=utTPSVi9V0E','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_260212_l2','pisniua_260212','YouTube','https://www.youtube.com/watch?v=sugivuBy2Fs','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_260212_l3','pisniua_260212','YouTube','https://www.youtube.com/watch?v=mSSkrD-gb7w','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_260212_l4','pisniua_260212','YouTube','https://www.youtube.com/watch?v=Q6nboBzYNCo','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_260461';
DELETE FROM song_versions WHERE song_id = 'pisniua_260461';
DELETE FROM songs_fts WHERE song_id = 'pisniua_260461';
DELETE FROM songs WHERE id = 'pisniua_260461';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_260461','12 комуністів','Музика: Тризубий Стас Слова: Тризубий Стас. Виконує: Тризубий Стас','uk','ukraine_1991',NULL,NULL,'http://www.itc.ua/forum/showthread.php?t=3075',NULL,'Дванадцять комуністів в однім куротнім місці
Зутрілися на з''їзді чи на пленумі ЦК.
В готелі поселились, а чим це закінчилось,
Про це моя історія не радісна така.

Дванадцять комуністів пішли купатись в море,
І в хвилі променисті кожен весело стрибав,
Та двоє з перепою лишились під водою,
От вже і починається, як я попереджав.

Бо тільки десятеро вийшли із води,
Ось так і зменшуються в партії ряди.

Вже десять комунітсів покупані та чисті
В покоях ономісних перетравлюють обід,
В вісьмох перетрамилось, а двоє отруїлось,
А троє в моїй пісні ще захворіли на СНІД.

Всі вісім комуністів останні чули вісті,
Про СНІД, що ходить в місці, попередив партактив,
Розважились приємно в непевнім товаристві,
Типовий сексуальний кримінальний детектив.

Трьох неслухняних довелося поховать,
І залишилось із вісім тільки п''ять.

З п''ятірки комуністів один помер на місті,
Бо кунив сигарету на імпортний килим,
А четверо тушили, з них троє так спішили,
Що довго не прожили, бо попав у горло дим.

Багато комуністів померло в моїй пісні,
Сама Агата Крісті позаздрила б мені,
Та ще один лишився, що в омрі не втопився,
Обідом не втруївся і не загинув у вогні.

Таки не тонуть і в пожежах не горять,
Вони і досі на шиях в нас сидять.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:suspilno-politychni'', ''cat:zhartivlyvi'', ''Бардівські пісні'', ''Суспільно-політичні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_260461'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_260461','12 комуністів','Дванадцять комуністів в однім куротнім місці
Зутрілися на з''їзді чи на пленумі ЦК.
В готелі поселились, а чим це закінчилось,
Про це моя історія не радісна така.

Дванадцять комуністів пішли купатись в море,
І в хвилі променисті кожен весело стрибав,
Та двоє з перепою лишились під водою,
От вже і починається, як я попереджав.

Бо тільки десятеро вийшли із води,
Ось так і зменшуються в партії ряди.

Вже десять комунітсів покупані та чисті
В покоях ономісних перетравлюють обід,
В вісьмох перетрамилось, а двоє отруїлось,
А троє в моїй пісні ще захворіли на СНІД.

Всі вісім комуністів останні чули вісті,
Про СНІД, що ходить в місці, попередив партактив,
Розважились приємно в непевнім товаристві,
Типовий сексуальний кримінальний детектив.

Трьох неслухняних довелося поховать,
І залишилось із вісім тільки п''ять.

З п''ятірки комуністів один помер на місті,
Бо кунив сигарету на імпортний килим,
А четверо тушили, з них троє так спішили,
Що довго не прожили, бо попав у горло дим.

Багато комуністів померло в моїй пісні,
Сама Агата Крісті позаздрила б мені,
Та ще один лишився, що в омрі не втопився,
Обідом не втруївся і не загинув у вогні.

Таки не тонуть і в пожежах не горять,
Вони і досі на шиях в нас сидять.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_260461_l1','pisniua_260461','YouTube','https://www.youtube.com/watch?v=zxYFFUMqPRc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_263515';
DELETE FROM song_versions WHERE song_id = 'pisniua_263515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_263515';
DELETE FROM songs WHERE id = 'pisniua_263515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_263515','Намалюй мені ніч','Музика: Мирослав Скорик Слова: Микола Петренко. Виконує: Софія Ротару, Маріанна Винницька, Орест Цимбала, Володимир Дейнеко','uk','ukraine_1991',NULL,NULL,'http://www.fortuna-rotaru.com',NULL,'Я до тебе прийду, через гори і доли,
Тільки ти не розпитуй мене, не хвилюй,
Намалюй мені ніч, коли падають зорі,
Намалюй, я прошу, намалюй
Намалюй мені ніч, коли падають зорі,
Намалюй, я прошу, намалюй,
Намалюй, я прошу, намалюй.

Намалюй мені ніч, що зве і шепоче,
Найпалкіші слова, найдивніші слова,
В гами барв піднеси славу темної ночі
Що навколо зірки розсіва...

Ну а сам ти який?
Вечір, день а чи ранок?
Що на серці - чи промінь, чи ніч,
Намалюй мені ніч, коли зорі багряні,
Вирушають у путь, щоб згоріть.
Намалюй мені ніч, коли зорі багряні,
Вирушають у путь, щоб згоріть,
Вирушають у путь, щоб згоріть','[''pisni.org.ua'', ''cat:lirychni'', ''cat:romansy'', ''Пісні про кохання, ліричні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_263515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_263515','Намалюй мені ніч','Я до тебе прийду, через гори і доли,
Тільки ти не розпитуй мене, не хвилюй,
Намалюй мені ніч, коли падають зорі,
Намалюй, я прошу, намалюй
Намалюй мені ніч, коли падають зорі,
Намалюй, я прошу, намалюй,
Намалюй, я прошу, намалюй.

Намалюй мені ніч, що зве і шепоче,
Найпалкіші слова, найдивніші слова,
В гами барв піднеси славу темної ночі
Що навколо зірки розсіва...

Ну а сам ти який?
Вечір, день а чи ранок?
Що на серці - чи промінь, чи ніч,
Намалюй мені ніч, коли зорі багряні,
Вирушають у путь, щоб згоріть.
Намалюй мені ніч, коли зорі багряні,
Вирушають у путь, щоб згоріть,
Вирушають у путь, щоб згоріть');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_263515_l1','pisniua_263515','YouTube','https://www.youtube.com/watch?v=y1A8hfLq3v8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_263515_l2','pisniua_263515','YouTube','https://www.youtube.com/watch?v=Tby43vEsnHs','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_263515_l3','pisniua_263515','YouTube','https://www.youtube.com/watch?v=-ri2ki0uxek','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_263515_l4','pisniua_263515','YouTube','https://www.youtube.com/watch?v=Gdt_aylWyUs','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_263515_l5','pisniua_263515','YouTube','https://www.youtube.com/watch?v=5V-py0vP2_E','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_263515_l6','pisniua_263515','YouTube','https://www.youtube.com/watch?v=lWyBUZ2eeTo','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_263515_l7','pisniua_263515','YouTube','https://www.youtube.com/watch?v=BVmeU24DWMs','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_263515_l8','pisniua_263515','YouTube','https://www.youtube.com/watch?v=snpJBdfqwMM','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_263515_l9','pisniua_263515','YouTube','https://www.youtube.com/watch?v=gdou7-7Y6Sk','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_263515_l10','pisniua_263515','YouTube','https://www.youtube.com/watch?v=wGJYdSs56sk','video',NULL,10);
DELETE FROM song_links WHERE song_id = 'pisniua_263591';
DELETE FROM song_versions WHERE song_id = 'pisniua_263591';
DELETE FROM songs_fts WHERE song_id = 'pisniua_263591';
DELETE FROM songs WHERE id = 'pisniua_263591';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_263591','Ой на горі два дубки','Музика: Володимир Конощенко Слова: Петро Власюк. Виконує: Лідія Кондрашевська','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ой на горі два дубки,
Милий мій, миленький,
Ой на горі два дубки,
Голубе сивенький!

То зрубай мила,
То зрубай мила,
То зрубай, у-ха-ха,
Мила чорнобривая.

Я сокири не маю,
Милий мій, миленький,
Я сокири не маю
Голубе сивенький.

То купи мила
То купи мила,
То купи у-ха-ха,
Мила чорнобривая.

А я грошей не маю,
Милий мій, миленький,
А я грошей не маю,
Голубе сивенький!

Зароби, милая,
Зароби, милая,
Зароби, у-ха-ха
Мила-чорнобривая.

Я робити не вмію
Милий мій, миленький,
Я робити не вмію
Голубе сивенький.

То вмирай мила,
То вмирай мила,
То вмирай у-ха-ха,
Мила чорнобривая.

Я вмирати не буду
Милий мій, миленький,
Я вмирати не буду
Голубе сивенький

То уб''ю, мила,
То уб''ю, мила,
То уб''ю у-ха-ха,
Мила чорнобривая.

Де ж ти мене поховаєш
Милий мій, миленький,
Де ж ти мене поховаєш,
Голубе сивенький

За хлівом, мила,
За хлівом, мила,
За хлівом у-ха-ха,
Мила чорнобривая!

Чим ти мене повезеш
Милий мій, миленький,
Чим ти мене повезеш
Голубе сивенький

Тачкою, мила,
Тачкою, мила,
Тачкою у-ха-ха,
Мила чорнобривая.

А чим будеш дзвонити
Милий мій, миленький?
А чим будеш дзвонити
Голубе сивенький?

Гарбузом, мила,
Гарбузом, мила,
Гарбузом у-ха-ха,
Мила чорнобривая.

А як будеш плакати,
Милий мій, миленький,
А як будеш плакати,
Голубе сивенький?

У-ха-ха, мила,
У-ха-ха, мила,
У-ха-ха, у-ха-ха,
Мила чорнобривая

А як будеш молитись,
Милий мій, миленький?
А як будеш молитись,
Голубе сивенький?

"Отче наш", мила,
"Отче наш", мила,
"Отче наш" у-ха-ха,
Мила чорнобривая.

А що мені посадиш,
Милий мій, миленький?
А що мені посадиш,
Голубе сивеньки?

Будачок, мила,
Будачок, мила,
Будачок у-ха-ха,
Мила чорнобривая.

А хто буде підливати
Милий мій, миленький?
А хто буде підливати
Голубе сивенький?

Дрібний дощ, мила,
Дрібний дощ, мила,
Дрібний дощ, у-ха-ха
Мила чорнобривая!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_263591'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_263591','Ой на горі два дубки','Ой на горі два дубки,
Милий мій, миленький,
Ой на горі два дубки,
Голубе сивенький!

То зрубай мила,
То зрубай мила,
То зрубай, у-ха-ха,
Мила чорнобривая.

Я сокири не маю,
Милий мій, миленький,
Я сокири не маю
Голубе сивенький.

То купи мила
То купи мила,
То купи у-ха-ха,
Мила чорнобривая.

А я грошей не маю,
Милий мій, миленький,
А я грошей не маю,
Голубе сивенький!

Зароби, милая,
Зароби, милая,
Зароби, у-ха-ха
Мила-чорнобривая.

Я робити не вмію
Милий мій, миленький,
Я робити не вмію
Голубе сивенький.

То вмирай мила,
То вмирай мила,
То вмирай у-ха-ха,
Мила чорнобривая.

Я вмирати не буду
Милий мій, миленький,
Я вмирати не буду
Голубе сивенький

То уб''ю, мила,
То уб''ю, мила,
То уб''ю у-ха-ха,
Мила чорнобривая.

Де ж ти мене поховаєш
Милий мій, миленький,
Де ж ти мене поховаєш,
Голубе сивенький

За хлівом, мила,
За хлівом, мила,
За хлівом у-ха-ха,
Мила чорнобривая!

Чим ти мене повезеш
Милий мій, миленький,
Чим ти мене повезеш
Голубе сивенький

Тачкою, мила,
Тачкою, мила,
Тачкою у-ха-ха,
Мила чорнобривая.

А чим будеш дзвонити
Милий мій, миленький?
А чим будеш дзвонити
Голубе сивенький?

Гарбузом, мила,
Гарбузом, мила,
Гарбузом у-ха-ха,
Мила чорнобривая.

А як будеш плакати,
Милий мій, миленький,
А як будеш плакати,
Голубе сивенький?

У-ха-ха, мила,
У-ха-ха, мила,
У-ха-ха, у-ха-ха,
Мила чорнобривая

А як будеш молитись,
Милий мій, миленький?
А як будеш молитись,
Голубе сивенький?

"Отче наш", мила,
"Отче наш", мила,
"Отче наш" у-ха-ха,
Мила чорнобривая.

А що мені посадиш,
Милий мій, миленький?
А що мені посадиш,
Голубе сивеньки?

Будачок, мила,
Будачок, мила,
Будачок у-ха-ха,
Мила чорнобривая.

А хто буде підливати
Милий мій, миленький?
А хто буде підливати
Голубе сивенький?

Дрібний дощ, мила,
Дрібний дощ, мила,
Дрібний дощ, у-ха-ха
Мила чорнобривая!');
DELETE FROM song_links WHERE song_id = 'pisniua_264899';
DELETE FROM song_versions WHERE song_id = 'pisniua_264899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_264899';
DELETE FROM songs WHERE id = 'pisniua_264899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_264899','А липи цвітуть','Музика: Остап Гавриш Слова: Василь Гостюк. Виконує: Лілія Сандулеса, Іво Бобул','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я прийду до тебе в садок,
У трави зелені зелені.
Назбираєм з тобою зірок,
Що в небі, що в небі, що в небі.
І падали коси із пліч,
Задумалась ніжність в чеканні.
Поцілунки у зоряну ніч
В коханні, в коханні, в коханні.

Приспів:
А липи цвітуть духмяні-духмяні,
А двоє ідуть купатись в коханні,
А липи цвітуть духмяні-духмяні,
А двоє ідуть щасливі в коханні.

Прокинулись ранки зі сну,
Згорають у щирості очі.
Пригорнися до мене, я жду
Від ночі, від ночі й до ночі.
Купатись з тобою в росі,
Відчути той дотик незнаний.
Тільки губи шепочуть мені -
Коханий, коханий, коханий.

Приспів. (3)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_264899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_264899','А липи цвітуть','Я прийду до тебе в садок,
У трави зелені зелені.
Назбираєм з тобою зірок,
Що в небі, що в небі, що в небі.
І падали коси із пліч,
Задумалась ніжність в чеканні.
Поцілунки у зоряну ніч
В коханні, в коханні, в коханні.

Приспів:
А липи цвітуть духмяні-духмяні,
А двоє ідуть купатись в коханні,
А липи цвітуть духмяні-духмяні,
А двоє ідуть щасливі в коханні.

Прокинулись ранки зі сну,
Згорають у щирості очі.
Пригорнися до мене, я жду
Від ночі, від ночі й до ночі.
Купатись з тобою в росі,
Відчути той дотик незнаний.
Тільки губи шепочуть мені -
Коханий, коханий, коханий.

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_264899_l1','pisniua_264899','YouTube','https://www.youtube.com/watch?v=7zEI0e9716c','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_264899_l2','pisniua_264899','YouTube','https://www.youtube.com/watch?v=XjtddFO6azs','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_275226';
DELETE FROM song_versions WHERE song_id = 'pisniua_275226';
DELETE FROM songs_fts WHERE song_id = 'pisniua_275226';
DELETE FROM songs WHERE id = 'pisniua_275226';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_275226','Над колискою','Музика: Росава Слова: Олександр Олесь. Виконує: Росава','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Спи, мій малесенький,
Спи, мій синок...

Я розкажу тобі безліч казок.
Нащо ж ти віченьки знову розкрив?
Спи, моя пташко, - то вітер завив.

Стогне і виє уже він давно,
Б''ється і стука в наше вікно.
Геть, розбишако, в далекі степи.

Спи, моя ластівко, солодко спи,
Ось уже й вітер зовсім занімів,
Мабуть, заснуть під намет полетів.

Холодно зараз в лісах і лугах,
Все потонуло в глибоких снігах.
Бігають зайчики, мерзнуть, тремтять,
Затишок хочуть собі відшукать.

Ось вони вгляділи, о, кущик стоїть,
Годі! Давно вже лисичка там спить.
Кинулись знову кудись на грядки,
Ой, там ночують сьогодні вовки.

Краще ви в поле біжіть, за лісок.
Знайдете там ви соломки стіжок,
Глибше забийтесь, зарийтесь в снопки,
Щоб не знайшли вас голодні вовки.

Спи ж, мій малесенький, годі гулять,
Зайчики білі давно уже сплять...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_275226'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_275226','Над колискою','Спи, мій малесенький,
Спи, мій синок...

Я розкажу тобі безліч казок.
Нащо ж ти віченьки знову розкрив?
Спи, моя пташко, - то вітер завив.

Стогне і виє уже він давно,
Б''ється і стука в наше вікно.
Геть, розбишако, в далекі степи.

Спи, моя ластівко, солодко спи,
Ось уже й вітер зовсім занімів,
Мабуть, заснуть під намет полетів.

Холодно зараз в лісах і лугах,
Все потонуло в глибоких снігах.
Бігають зайчики, мерзнуть, тремтять,
Затишок хочуть собі відшукать.

Ось вони вгляділи, о, кущик стоїть,
Годі! Давно вже лисичка там спить.
Кинулись знову кудись на грядки,
Ой, там ночують сьогодні вовки.

Краще ви в поле біжіть, за лісок.
Знайдете там ви соломки стіжок,
Глибше забийтесь, зарийтесь в снопки,
Щоб не знайшли вас голодні вовки.

Спи ж, мій малесенький, годі гулять,
Зайчики білі давно уже сплять...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_275226_l1','pisniua_275226','YouTube','https://www.youtube.com/watch?v=7aZYb8Ynkno','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_275292';
DELETE FROM song_versions WHERE song_id = 'pisniua_275292';
DELETE FROM songs_fts WHERE song_id = 'pisniua_275292';
DELETE FROM songs WHERE id = 'pisniua_275292';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_275292','Сонко-Дрімко','(Пізня вже годинка). Музика: Алла Мігай Слова: Наталя Кулик. Виконує: Росава, Ольга Токар','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Пізня вже годинка,
Чом не спиш, дитинко?
Он твоя матуся
Кличе Сонька-Дрімка

На котячих лапках
Сонько-Дрімко ходить.
Каже він малятам:
"Пустувати годі!"
Гра закінчилась,
Матінка втомилась
В ліжко лягай,
Швидше засинай.

Сонько-Дрімко носить
Всім, хто лиш попросить,
В кошику лозовім
Казочки чудові.
Принесе співанку,
Тиху колисанку.
Хто її послуха —
Спатиме до ранку.

Синку маленький, донечко рідненька
Нічка прийшла, спатоньки пора.

А-а-а-а...
Завтра Сонько-Дрімко
Прийде в кожну хату.
Знову наших діток
Буде колисати','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_275292'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_275292','Сонко-Дрімко','Пізня вже годинка,
Чом не спиш, дитинко?
Он твоя матуся
Кличе Сонька-Дрімка

На котячих лапках
Сонько-Дрімко ходить.
Каже він малятам:
"Пустувати годі!"
Гра закінчилась,
Матінка втомилась
В ліжко лягай,
Швидше засинай.

Сонько-Дрімко носить
Всім, хто лиш попросить,
В кошику лозовім
Казочки чудові.
Принесе співанку,
Тиху колисанку.
Хто її послуха —
Спатиме до ранку.

Синку маленький, донечко рідненька
Нічка прийшла, спатоньки пора.

А-а-а-а...
Завтра Сонько-Дрімко
Прийде в кожну хату.
Знову наших діток
Буде колисати');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_275292_l1','pisniua_275292','YouTube','https://www.youtube.com/watch?v=aRXkjZ3YzFA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_275292_l2','pisniua_275292','YouTube','https://www.youtube.com/watch?v=jOEk1-u7qUQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_275292_l3','pisniua_275292','YouTube','https://www.youtube.com/watch?v=4ZMGJEnK2ok','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_275292_l4','pisniua_275292','YouTube','https://www.youtube.com/watch?v=m07IsxAE5h8','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_27797';
DELETE FROM song_versions WHERE song_id = 'pisniua_27797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_27797';
DELETE FROM songs WHERE id = 'pisniua_27797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_27797','Лишайся, мила, не плач, кохана','(Марш УHCО). Музика: народна','uk','ukraine_1991',NULL,NULL,'http://www.shulga.kiev.ua',NULL,'H7
Лишайся, мила,  не плач, кохана,
За твої думи і сина спокійний сон
Я вранці рано у партизани
Піду з боївкою УHCО
Я вийшов з мiста, я встав з окопу
Спливають кров''ю Абхазія і Дністер
і від Донбасу до Перекопу
Два переходи БТР
Не плач, кохана, вже сурми грають,
Тебе згадаю в застінку перед кінцем
Бо хто воює, той не вмирає,
Повік залишиться бійцем
До ліктя лікоть стає підмога
О, мила, чао, белла, чао, белла, чао, чао, чао
і од порога і до порога
Йде наша правда, наш звичай
В бою загинуть - не на базарі
Сьогодні - я , завтра - він, післязавтра - ти,
Кому - на лаврах, кому - на нарах,
Кому - в УHCО, кому - в менти
Нас криють міни, гірська дорога
і кожен з нас сто раз вмер і сто раз воскрес
і ось я вперше молюся Богу
Як хрест стискаю АКС
Ми знову разом на барикадах
і не здригнеться твоя і моя рука
"УHCО - до штурму, УHА - до Влади!" -
Звучить наказ провідника
Снаряди свищуть, тріщить бруківка,
Моє кохання давно є одна війна
Мій дім - руїни, сім''я - боївка,
А заповіт - статут УHА
Нехай гуркочуть бої запеклі
Бо краще згинути вовком, ніж жити псом
У рай не пустять, проте у пеклі
Я твердо знаю є УHCО.
У рай не пустять, проте у пеклі
Я твердо знаю є УHCО.','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:patriotic'', ''Гимни та марші'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_27797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_27797','Лишайся, мила, не плач, кохана','H7
Лишайся, мила,  не плач, кохана,
За твої думи і сина спокійний сон
Я вранці рано у партизани
Піду з боївкою УHCО
Я вийшов з мiста, я встав з окопу
Спливають кров''ю Абхазія і Дністер
і від Донбасу до Перекопу
Два переходи БТР
Не плач, кохана, вже сурми грають,
Тебе згадаю в застінку перед кінцем
Бо хто воює, той не вмирає,
Повік залишиться бійцем
До ліктя лікоть стає підмога
О, мила, чао, белла, чао, белла, чао, чао, чао
і од порога і до порога
Йде наша правда, наш звичай
В бою загинуть - не на базарі
Сьогодні - я , завтра - він, післязавтра - ти,
Кому - на лаврах, кому - на нарах,
Кому - в УHCО, кому - в менти
Нас криють міни, гірська дорога
і кожен з нас сто раз вмер і сто раз воскрес
і ось я вперше молюся Богу
Як хрест стискаю АКС
Ми знову разом на барикадах
і не здригнеться твоя і моя рука
"УHCО - до штурму, УHА - до Влади!" -
Звучить наказ провідника
Снаряди свищуть, тріщить бруківка,
Моє кохання давно є одна війна
Мій дім - руїни, сім''я - боївка,
А заповіт - статут УHА
Нехай гуркочуть бої запеклі
Бо краще згинути вовком, ніж жити псом
У рай не пустять, проте у пеклі
Я твердо знаю є УHCО.
У рай не пустять, проте у пеклі
Я твердо знаю є УHCО.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27797_l1','pisniua_27797','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_279717';
DELETE FROM song_versions WHERE song_id = 'pisniua_279717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_279717';
DELETE FROM songs WHERE id = 'pisniua_279717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_279717','And the Third Angel Sounded','(Брат! Піва кончілась, ти представляєш?). Музика: Мертвий півень Слова: Юрій Андрухович','uk','ukraine_1991',NULL,NULL,'офіційний сайт',NULL,'Брат! Піва кончілась, ти представляєш брат?
Піва кончілась, жена ушла!"

Один з недобитих
перестрів мене, підбитого, серед нічного Львова.
Він переважно належить їм -
я, напевно, єдиний, хто про це знає.
Він також хотів пива, як виявилось, -
п''яний мародер і т. д.

"Брат!Піва кончілась,
ти представляєш брат? Брат!Піва кончілась, жена ушла!"

Я не знав, що буває на світі такий розпач.
Мені все причувалося щось про третину вод
і полин.
Ангел у футболці з третім номером ішов по небу
зі своєю дурнуватою дудкою.
Ми обійнялися, ніби перед стратою.
Перепрошую, перед стартом.

"Брат!Піва кончілась,
ти представляєш брат? Брат!Піва кончілась, жена ушла!"','[''pisni.org.ua'', ''cat:druzhba'', ''cat:socialno-pobutovi'', ''Пісні про дружбу'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_279717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_279717','And the Third Angel Sounded','Брат! Піва кончілась, ти представляєш брат?
Піва кончілась, жена ушла!"

Один з недобитих
перестрів мене, підбитого, серед нічного Львова.
Він переважно належить їм -
я, напевно, єдиний, хто про це знає.
Він також хотів пива, як виявилось, -
п''яний мародер і т. д.

"Брат!Піва кончілась,
ти представляєш брат? Брат!Піва кончілась, жена ушла!"

Я не знав, що буває на світі такий розпач.
Мені все причувалося щось про третину вод
і полин.
Ангел у футболці з третім номером ішов по небу
зі своєю дурнуватою дудкою.
Ми обійнялися, ніби перед стратою.
Перепрошую, перед стартом.

"Брат!Піва кончілась,
ти представляєш брат? Брат!Піва кончілась, жена ушла!"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_279717_l1','pisniua_279717','YouTube','https://www.youtube.com/watch?v=YM9jmkabtfQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_282199';
DELETE FROM song_versions WHERE song_id = 'pisniua_282199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_282199';
DELETE FROM songs WHERE id = 'pisniua_282199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_282199','Сонце низенько, вечір близенько','Слова: Іван Котляревський','uk','ukraine_1991',NULL,NULL,'http://poetry.uazone.net',NULL,'Сонце низенько, вечір близенько,
Іди до мене, моє серденько!             | (2)

Ой вийди, вийди, та не барися,
Моє серденько, розвеселися.             | (2)

Ой вийди, вийди, серденько, Галю,
Серденько, рибонько, дорогий кришталю!  | (2)

Ой вийди, вийди, не бійсь морозу,
Я твої ніженьки в шапочку вложу.        | (2)

Через річеньку, через болото
Подай рученьку, моє золото!             | (2)

Через річеньку, через биструю
Подай рученьку, подай другую!           | (2)

Ой біда, біда, що я не вдався, —
Брів через річеньку, та не вмивався.    | (2)

Ой завернуся та умиюся,
На свою милую хоч подивлюся.            | (2)

"Ой, не вертайся, та не вмивайся,
Ти ж мені, серденько, й так сподобався. | (2)

Ой там криниця під перелазом —
Вмиємось, серденько, обоє разом.        | (2)

Моя хустина шовками шита —
Утремось, серденько, хоч буду бита.     | (2)

Битиме мати, знатиму, за що:
За тебе, серденько, не за ледащо!"      | (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_282199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_282199','Сонце низенько, вечір близенько','Сонце низенько, вечір близенько,
Іди до мене, моє серденько!             | (2)

Ой вийди, вийди, та не барися,
Моє серденько, розвеселися.             | (2)

Ой вийди, вийди, серденько, Галю,
Серденько, рибонько, дорогий кришталю!  | (2)

Ой вийди, вийди, не бійсь морозу,
Я твої ніженьки в шапочку вложу.        | (2)

Через річеньку, через болото
Подай рученьку, моє золото!             | (2)

Через річеньку, через биструю
Подай рученьку, подай другую!           | (2)

Ой біда, біда, що я не вдався, —
Брів через річеньку, та не вмивався.    | (2)

Ой завернуся та умиюся,
На свою милую хоч подивлюся.            | (2)

"Ой, не вертайся, та не вмивайся,
Ти ж мені, серденько, й так сподобався. | (2)

Ой там криниця під перелазом —
Вмиємось, серденько, обоє разом.        | (2)

Моя хустина шовками шита —
Утремось, серденько, хоч буду бита.     | (2)

Битиме мати, знатиму, за що:
За тебе, серденько, не за ледащо!"      | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_282199_l1','pisniua_282199','YouTube','https://www.youtube.com/watch?v=dAMz_7qtm7M','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_282199_l2','pisniua_282199','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_283919';
DELETE FROM song_versions WHERE song_id = 'pisniua_283919';
DELETE FROM songs_fts WHERE song_id = 'pisniua_283919';
DELETE FROM songs WHERE id = 'pisniua_283919';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_283919','Ой, на горі жито','(... На долині жито). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Український народний співаник, Мюнхен, 1946 р.',NULL,'Ой, на горі жито,
На долині жито,
В чистім полі край дороги
Козака забито.

Вбито ж його, вбито,
Затягнено в жито,
Червоною китайкою
Голову накрито.

Ой прийшла дівчина
З чорними очима,
Відокрила китаєчку
Тай заголосила.

"Ой устань, козаче,
Устань молоденький,
Ходить, блудить коло тебе
Твій кінь вороненький".

Ой най же він блудить,
Най нічку ночує,
Та чейже він до родини
Доріженьку чує.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_283919'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_283919','Ой, на горі жито','Ой, на горі жито,
На долині жито,
В чистім полі край дороги
Козака забито.

Вбито ж його, вбито,
Затягнено в жито,
Червоною китайкою
Голову накрито.

Ой прийшла дівчина
З чорними очима,
Відокрила китаєчку
Тай заголосила.

"Ой устань, козаче,
Устань молоденький,
Ходить, блудить коло тебе
Твій кінь вороненький".

Ой най же він блудить,
Най нічку ночує,
Та чейже він до родини
Доріженьку чує.');
DELETE FROM song_links WHERE song_id = 'pisniua_284767';
DELETE FROM song_versions WHERE song_id = 'pisniua_284767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_284767';
DELETE FROM songs WHERE id = 'pisniua_284767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_284767','Козацька застава','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Нема Січі, загубили клейноди і славу,
Однісінькая на Подолі козацька застава.
Чорні круки в синім небі - значить буде битва,
Обнялися запорожці - почали молитву:

Приспів:
"Гей, доле, повернися, до Вкраїни прихилися,
Наша воля не пропала, в дикім полі заблукала.
Може долі не чекати? Нам би волю не приспати.
Відступатися не гоже, поможи нам, святий Бже.

Навіть Хортиця без Січі у чорній оправі,
А в Києві на Подолі козацька застава.
Скам''яніли запорожці, не ідуть між люди
Тай із каменя молитву по Вкраїні чути:

Приспів. (2)','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_284767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_284767','Козацька застава','Нема Січі, загубили клейноди і славу,
Однісінькая на Подолі козацька застава.
Чорні круки в синім небі - значить буде битва,
Обнялися запорожці - почали молитву:

Приспів:
"Гей, доле, повернися, до Вкраїни прихилися,
Наша воля не пропала, в дикім полі заблукала.
Може долі не чекати? Нам би волю не приспати.
Відступатися не гоже, поможи нам, святий Бже.

Навіть Хортиця без Січі у чорній оправі,
А в Києві на Подолі козацька застава.
Скам''яніли запорожці, не ідуть між люди
Тай із каменя молитву по Вкраїні чути:

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_287952';
DELETE FROM song_versions WHERE song_id = 'pisniua_287952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_287952';
DELETE FROM songs WHERE id = 'pisniua_287952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_287952','Ой умер старенький батько','Музика: Тарас Мартинюк Слова: Тарас Шевченко. Виконує: І Кров по Долині','uk','ukraine_1991',NULL,NULL,'1. Авторське подання; 2. http://litopys.org.ua/shevchenko/shev273.htm','Підбір акордів: Тарас Мартинюк','"Ой умер старенький батько
І старенькая мати,
Та нема кому щирої
Тії Радоньки дати.

Що мені  на світі,
Сироті, робити?
Чи йти в люде жити,
Чи дома журитись?

Ой піду я в гай зелений,
Посаджу я руту.
Якщо зійде моя рута,
Остануся тута,
Прийде милий в мою хату
Хазяйнувати.
А як же ні, то я піду
Доленьку шукати."

Посходила тая рута,
В гаї зеленіє.
А дівчина-сиротина
У наймах марніє.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_287952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_287952','Ой умер старенький батько','"Ой умер старенький батько
І старенькая мати,
Та нема кому щирої
Тії Радоньки дати.

Що мені  на світі,
Сироті, робити?
Чи йти в люде жити,
Чи дома журитись?

Ой піду я в гай зелений,
Посаджу я руту.
Якщо зійде моя рута,
Остануся тута,
Прийде милий в мою хату
Хазяйнувати.
А як же ні, то я піду
Доленьку шукати."

Посходила тая рута,
В гаї зеленіє.
А дівчина-сиротина
У наймах марніє.');
DELETE FROM song_links WHERE song_id = 'pisniua_288216';
DELETE FROM song_versions WHERE song_id = 'pisniua_288216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_288216';
DELETE FROM songs WHERE id = 'pisniua_288216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_288216','В глубокій долині звізда засвітила','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: ― Святі Водорщі) ―: Дівич-Вечір...... Зелені Свята () ― Царинні Містерії...... Астральні Жнива... Рокове Коло.','В глубокій долині звізда засвітила,
Де Пречиста Діва Мати сина породила.             | (2)

Не в царських палатах, а поміж бидляти
У пустині у яскині, треба вшитким знати.         | (2)

Як го породила, так йому співала:
"Люляй, люляй, мій Синочку, а я буду спала".     | (2)

Що то Бога Христа Марія Пречиста
І родила, і кормила Його, як невіста.            | (2)

На руках тримала і йому співала,
Всемогутнім своїм Творцем Його називала.         | (2)

Гварит: "Люляй Сину, буд зо мнов без впину,
Коли взяв єс собі мене за матір єдину".          | (2)

Повіч, Правосуде, де хто з вірних буде.
Най зо мною пред Тобою станут усі люде.          | (2)

Тобі ся молити, і Тебе просити,
Жеби с дав нам в своїм царстві вовік-віків жити. | (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_288216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_288216','В глубокій долині звізда засвітила','В глубокій долині звізда засвітила,
Де Пречиста Діва Мати сина породила.             | (2)

Не в царських палатах, а поміж бидляти
У пустині у яскині, треба вшитким знати.         | (2)

Як го породила, так йому співала:
"Люляй, люляй, мій Синочку, а я буду спала".     | (2)

Що то Бога Христа Марія Пречиста
І родила, і кормила Його, як невіста.            | (2)

На руках тримала і йому співала,
Всемогутнім своїм Творцем Його називала.         | (2)

Гварит: "Люляй Сину, буд зо мнов без впину,
Коли взяв єс собі мене за матір єдину".          | (2)

Повіч, Правосуде, де хто з вірних буде.
Най зо мною пред Тобою станут усі люде.          | (2)

Тобі ся молити, і Тебе просити,
Жеби с дав нам в своїм царстві вовік-віків жити. | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_291063';
DELETE FROM song_versions WHERE song_id = 'pisniua_291063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_291063';
DELETE FROM songs WHERE id = 'pisniua_291063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_291063','Нічний блюз','Музика: Контрабас Слова: Сергій Буланий. Виконує: Контрабас','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ніч на стрісі хати висить,
Дощ моросить,
Світло ллє духмяний місяць,
Дня є досить.
Dm         B   C(III) D(V) Dm
А я тебе прошу -
Я тебе прошу
"Просто побудь зі мною,
Просто побудь зі мною,
Просто побудь зі мною
І послухай мій блюз".

Ходить сон коло вікон,
За ним дрімота,
Питає дрімоту сон:
"Чи є робота?"
А я тебе прошу,
Я тебе прошу -
"Просто побудь зі мною,
Просто побудь зі мною,
Просто побудь зі мною
І послухай мій блюз".

Ніч весняна,
Пахне п''яно в''ялий бузок,
Я тебе заколисаю, я тебе,
Адже я маю жменю казок.
І я тебе прошу,
Я тебе прошу -
"Просто побудь зі мною,
Просто побудь зі мною,
Просто побудь зі мною
І послухай мій блюз".

З ранком день новий прийде
Білою кішкою,
Сонце золотим горішком
Зійде нишком,
Dm         B   C(III) D(V) Dm
Тоді ти підеш,
Тоді ти підеш.
Тепер же побудь зі мною,
Просто посидь зі мною,
Хочеш, полеж зі мною
Послухай мій блюз...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_291063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_291063','Нічний блюз','Ніч на стрісі хати висить,
Дощ моросить,
Світло ллє духмяний місяць,
Дня є досить.
Dm         B   C(III) D(V) Dm
А я тебе прошу -
Я тебе прошу
"Просто побудь зі мною,
Просто побудь зі мною,
Просто побудь зі мною
І послухай мій блюз".

Ходить сон коло вікон,
За ним дрімота,
Питає дрімоту сон:
"Чи є робота?"
А я тебе прошу,
Я тебе прошу -
"Просто побудь зі мною,
Просто побудь зі мною,
Просто побудь зі мною
І послухай мій блюз".

Ніч весняна,
Пахне п''яно в''ялий бузок,
Я тебе заколисаю, я тебе,
Адже я маю жменю казок.
І я тебе прошу,
Я тебе прошу -
"Просто побудь зі мною,
Просто побудь зі мною,
Просто побудь зі мною
І послухай мій блюз".

З ранком день новий прийде
Білою кішкою,
Сонце золотим горішком
Зійде нишком,
Dm         B   C(III) D(V) Dm
Тоді ти підеш,
Тоді ти підеш.
Тепер же побудь зі мною,
Просто посидь зі мною,
Хочеш, полеж зі мною
Послухай мій блюз...');
DELETE FROM song_links WHERE song_id = 'pisniua_2910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2910';
DELETE FROM songs WHERE id = 'pisniua_2910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2910','Біла хмара, чорна хмара','Музика: Юрій Сошальський Слова: Юрій Сошальський. Виконує: Дмитро Хома, Pomylka Rezydenta, Гурт "Зоряна ніч"','uk','ukraine_1991',NULL,NULL,'Збірник пісень Студентського братства Львівської політехніки. Львів 2000','Текст з незначними відмінностями (співає Дмитро Хома): Над потічком,над потічком Стелиться блакить. А я хочу,і не хочу Вік тебе любить. Приспів: Біла хмара,чорна хмара, Ми з тобою пара і не пара, Дощик буде,сонце буде, Що мені робить. Біла хмара наче квітка В небі забринить. Закохатись можна легко Важче розлюбить. Біла хмара вітром дише На мою біду. Тебе дівча не залишу, Кращу не знайду.','Над поточком, над поточком*
Хмариться блакить.
А я хочу та й не хочу
Вік тебе любить.
Приспів: (2)
Біла хмара, чорна хмара —
Ми з тобою пара, може, і не пара.
Дощик буде, сонце буде —
Що ж мені робить?
Чорна хмара вітром дише
На мою біду.
Тебе, дівко, як залишу,
Кращу не знайду.
Приспів. (2)
Біла хмара, наче квітка,
В небі забринить.
Покохати можна швидко,
Важче розлюбить.
Приспів. (2)
Обі хмари в небі синім
Разом, як і ми.
Не дивись на мене сумно,
Краще обійми.
Приспів. (2)
*Відміна:
Над холмочком, над горбочком','[''pisni.org.ua'', ''cat:dances'', ''cat:lirychni'', ''cat:polky'', ''cat:zhartivlyvi'', ''Пісні до танцю'', ''Пісні про кохання, ліричні'', ''Польки'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2910','Біла хмара, чорна хмара','Над поточком, над поточком*
Хмариться блакить.
А я хочу та й не хочу
Вік тебе любить.
Приспів: (2)
Біла хмара, чорна хмара —
Ми з тобою пара, може, і не пара.
Дощик буде, сонце буде —
Що ж мені робить?
Чорна хмара вітром дише
На мою біду.
Тебе, дівко, як залишу,
Кращу не знайду.
Приспів. (2)
Біла хмара, наче квітка,
В небі забринить.
Покохати можна швидко,
Важче розлюбить.
Приспів. (2)
Обі хмари в небі синім
Разом, як і ми.
Не дивись на мене сумно,
Краще обійми.
Приспів. (2)
*Відміна:
Над холмочком, над горбочком');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2910_l1','pisniua_2910','YouTube','https://www.youtube.com/watch?v=KRRWln2LyY4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2910_l2','pisniua_2910','YouTube','https://www.youtube.com/watch?v=FvxfHJAZFwE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2910_l3','pisniua_2910','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_29165';
DELETE FROM song_versions WHERE song_id = 'pisniua_29165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_29165';
DELETE FROM songs WHERE id = 'pisniua_29165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_29165','Стрийський парк',NULL,'uk','ukraine_1991',NULL,NULL,'http://www.shulga.kiev.ua/',NULL,'В Стрийськім парку ми ся здибали з тобов.
Межи нами ся зашпортала любов.
А та любов як чорна шмата,
Шо на вітрі ся калата
За тобов -моя кохана за тобов. (останні 3 рядки - двічі)

Ти важєй, моя кохана, ти важєй.
У трамвай ти на ходу не залажєй.
Бо трамвай хопит за ногу і потягне на дорогу,
Ти важєй, моя кохана, ти важєй.

Ти важєй, моя кохана, ти важєй.
З самольота з парашутом не скачей,
Бо парашут ся не відкриє-кров тя нагла відраз влиє.
Ти важєй, моя кохана, ти важєй.
Бо парашут ся не відкриє.
Хто ж тоді ми ноги вмиє?
Ти важєй, моя кохана, ти важєй.

Ти важєй, моя кохана, ти важєй.
Свої очі в чорну фарбу не мачей,
Бо ті фарба виїсть очі.
Хто ж тебе сліпаку схоче?
Ти важєй, моя кохана, ти важєй.

Ти важєй, моя кохана, ти важєй.
До сусіда, до Івана не лажєй,
Бо Іван така скотина-раз і два і вже дитина.
Ти важєй, моя кохана, ти важєй.

А в той вечір із дахівки падав дощ.
Ти сиділа в теплій хаті й жерла борщ.
Ти сиділа в теплій хаті й напихалася борщем,
А я мокнув як той дурень під дощем.

Якось раз сказала ти мені: "Іван,
Приходжєй, ми разом ляжем на диван."
Кілько раз до тя приходив, бився моров я об сходи.
Ну а вчора ти поставила капкан.

Зачекай, моя кохана, зачекай.
Прийде час і ти сама прийдеш на чай,
А я тебе підкаравулю і наб''ю на пузі гулю.
Зачекай моя кохана, зачекай.

Було літо, була осінь вже зима.
Темнов стежков ти із танців йдеш сама.
Я тебе підкаравулив і ти пішла додому з гулев
Була в нас одна дівчина, вже нема.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_29165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_29165','Стрийський парк','В Стрийськім парку ми ся здибали з тобов.
Межи нами ся зашпортала любов.
А та любов як чорна шмата,
Шо на вітрі ся калата
За тобов -моя кохана за тобов. (останні 3 рядки - двічі)

Ти важєй, моя кохана, ти важєй.
У трамвай ти на ходу не залажєй.
Бо трамвай хопит за ногу і потягне на дорогу,
Ти важєй, моя кохана, ти важєй.

Ти важєй, моя кохана, ти важєй.
З самольота з парашутом не скачей,
Бо парашут ся не відкриє-кров тя нагла відраз влиє.
Ти важєй, моя кохана, ти важєй.
Бо парашут ся не відкриє.
Хто ж тоді ми ноги вмиє?
Ти важєй, моя кохана, ти важєй.

Ти важєй, моя кохана, ти важєй.
Свої очі в чорну фарбу не мачей,
Бо ті фарба виїсть очі.
Хто ж тебе сліпаку схоче?
Ти важєй, моя кохана, ти важєй.

Ти важєй, моя кохана, ти важєй.
До сусіда, до Івана не лажєй,
Бо Іван така скотина-раз і два і вже дитина.
Ти важєй, моя кохана, ти важєй.

А в той вечір із дахівки падав дощ.
Ти сиділа в теплій хаті й жерла борщ.
Ти сиділа в теплій хаті й напихалася борщем,
А я мокнув як той дурень під дощем.

Якось раз сказала ти мені: "Іван,
Приходжєй, ми разом ляжем на диван."
Кілько раз до тя приходив, бився моров я об сходи.
Ну а вчора ти поставила капкан.

Зачекай, моя кохана, зачекай.
Прийде час і ти сама прийдеш на чай,
А я тебе підкаравулю і наб''ю на пузі гулю.
Зачекай моя кохана, зачекай.

Було літо, була осінь вже зима.
Темнов стежков ти із танців йдеш сама.
Я тебе підкаравулив і ти пішла додому з гулев
Була в нас одна дівчина, вже нема.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_29165_l1','pisniua_29165','YouTube','https://www.youtube.com/watch?v=KrzSJTIJ76M','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_29165_l2','pisniua_29165','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_296055';
DELETE FROM song_versions WHERE song_id = 'pisniua_296055';
DELETE FROM songs_fts WHERE song_id = 'pisniua_296055';
DELETE FROM songs WHERE id = 'pisniua_296055';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_296055','Слава Отцю і Сину','Українська народна пісня. Виконує: Народний хор Україна','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Боже, ми молимось щиро,
Нашу молитву прийми.
Серцем у Тебе ми вірим,
Славим в піснях Тебе ми.

Слава Отцю і сину, і Святому Духу,
І нині, і повсякчас, і навіки вічні. Амінь.

Боже, помилуй нас, грішних,
Боже, гріхи нам прости.
Допоможи нам, Всевишний,
В царство Твоє увійти.

Слава Отцю і сину, і Святому Духу,
І нині, і повсякчас, і навіки вічні. Амінь.

Боже, Тебе визнаємо -
Ти нам вказав правди шлях.
Серце Тобі віддаємо,
Славим Тебе у піснях.

Слава Отцю і сину, і Святому Духу,
І нині, і повсякчас, і навіки вічні. Амінь.','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_296055'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_296055','Слава Отцю і Сину','Боже, ми молимось щиро,
Нашу молитву прийми.
Серцем у Тебе ми вірим,
Славим в піснях Тебе ми.

Слава Отцю і сину, і Святому Духу,
І нині, і повсякчас, і навіки вічні. Амінь.

Боже, помилуй нас, грішних,
Боже, гріхи нам прости.
Допоможи нам, Всевишний,
В царство Твоє увійти.

Слава Отцю і сину, і Святому Духу,
І нині, і повсякчас, і навіки вічні. Амінь.

Боже, Тебе визнаємо -
Ти нам вказав правди шлях.
Серце Тобі віддаємо,
Славим Тебе у піснях.

Слава Отцю і сину, і Святому Духу,
І нині, і повсякчас, і навіки вічні. Амінь.');
DELETE FROM song_links WHERE song_id = 'pisniua_294111';
DELETE FROM song_versions WHERE song_id = 'pisniua_294111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_294111';
DELETE FROM songs WHERE id = 'pisniua_294111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_294111','Колискова','(Спи, засни, моя дитино...). Музика: Платон Майборода Слова: Андрій Малишко. Виконує: Дударик, Ніна Матвієнко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Спи, засни, моя дитино,
Спи, моє маля.
Ніч іде в гаї, долини,
Трави нахиля.
Хай тобі ця ніч насниться,
Що в вогнях сія,
Будеш завтра в світ дивиться, |
Зіронько моя.                 | (2)

Посміхнись до мене, сину,
І зрадію я,
Не хвилину і не днину,
Я навік твоя.
Перша ніч твоя почата
В співах солов''я,
Дай же мамі рученята,         |
Зіронько моя.                 | (2)

Сплять ліси, поля, криниці,
Шепіт ручая,
Ти відкрий, відкрий очиці,
Юносте моя.
Підеш ти по Україні,
Де життя буя.
Виростай, моя дитино,         |
Зіронько моя.                 | (2)','[''pisni.org.ua'', ''cat:kolyskovi'', ''cat:patriotic'', ''Колискові'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_294111'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_294111','Колискова','Спи, засни, моя дитино,
Спи, моє маля.
Ніч іде в гаї, долини,
Трави нахиля.
Хай тобі ця ніч насниться,
Що в вогнях сія,
Будеш завтра в світ дивиться, |
Зіронько моя.                 | (2)

Посміхнись до мене, сину,
І зрадію я,
Не хвилину і не днину,
Я навік твоя.
Перша ніч твоя почата
В співах солов''я,
Дай же мамі рученята,         |
Зіронько моя.                 | (2)

Сплять ліси, поля, криниці,
Шепіт ручая,
Ти відкрий, відкрий очиці,
Юносте моя.
Підеш ти по Україні,
Де життя буя.
Виростай, моя дитино,         |
Зіронько моя.                 | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_295192';
DELETE FROM song_versions WHERE song_id = 'pisniua_295192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_295192';
DELETE FROM songs WHERE id = 'pisniua_295192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_295192','В зеленім ліску по жовтім піску','Українська народна пісня. Виконує: Теотокос','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда) ― Святий Збір (Трійця) ― Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','В зеленім ліску по жовтім піску
Щедрий Святий Вечір Божий!

Пава ходила, пір''я згубила.
Щедрий Святий Вечір Божий!

В зеленім ліску по жовтім піску
Щедрий Святий Вечір Божий!

Дівчина ходила, пір''я збирала.
Щедрий Святий Вечір Божий!

Пір''я збирала, в фартушок клала.
Щедрий Святий Вечір Божий!

В фартушок клала, віночок плела.
Щедрий Святий Вечір Божий!','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:philosophic'', ''cat:shchedrivky'', ''Колядки'', ''Філософські пісні'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_295192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_295192','В зеленім ліску по жовтім піску','В зеленім ліску по жовтім піску
Щедрий Святий Вечір Божий!

Пава ходила, пір''я згубила.
Щедрий Святий Вечір Божий!

В зеленім ліску по жовтім піску
Щедрий Святий Вечір Божий!

Дівчина ходила, пір''я збирала.
Щедрий Святий Вечір Божий!

Пір''я збирала, в фартушок клала.
Щедрий Святий Вечір Божий!

В фартушок клала, віночок плела.
Щедрий Святий Вечір Божий!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_295192_l1','pisniua_295192','YouTube','https://www.youtube.com/watch?v=6VM8nHjEk0I','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_295192_l2','pisniua_295192','YouTube','https://www.youtube.com/watch?v=AAVEVsFSW3I','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_295192_l3','pisniua_295192','YouTube','https://www.youtube.com/watch?v=oO1lZaIsRjU','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_296591';
DELETE FROM song_versions WHERE song_id = 'pisniua_296591';
DELETE FROM songs_fts WHERE song_id = 'pisniua_296591';
DELETE FROM songs WHERE id = 'pisniua_296591';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_296591','Ой, не буду все лем банувати','Українська народна пісня. Виконує: Софія Федина','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, не буду все лем банувати,
Дам я собі гудакам заграти.
Грайте же мі з вечора до рана,
Бо я собі дівка мальована.

Звідалися, што мі то, што мі то,
Мам я личко побито, побито.
Побила го моя люба мамка,
Же м любила чорнявого Янка.

А ворота цвяками забила,
Жеби до нас хлопці не ходили,
А я взяла цвяки одорвала:
"Ходьте, хлопці", мамка юж казала','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_296591'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_296591','Ой, не буду все лем банувати','Ой, не буду все лем банувати,
Дам я собі гудакам заграти.
Грайте же мі з вечора до рана,
Бо я собі дівка мальована.

Звідалися, што мі то, што мі то,
Мам я личко побито, побито.
Побила го моя люба мамка,
Же м любила чорнявого Янка.

А ворота цвяками забила,
Жеби до нас хлопці не ходили,
А я взяла цвяки одорвала:
"Ходьте, хлопці", мамка юж казала');
DELETE FROM song_links WHERE song_id = 'pisniua_29697';
DELETE FROM song_versions WHERE song_id = 'pisniua_29697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_29697';
DELETE FROM songs WHERE id = 'pisniua_29697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_29697','Колискова','Музика: Володимир Івасюк Слова: Михайло Івасюк','uk','ukraine_1991',NULL,NULL,'http://ivasyuk.domivka.net/',NULL,'Ти спи, любий сину, в щасливому сні,
Довкола нас тиша і місяць в вікні.
Торкається шибок лиш сяєво зір,
Шумить десь далеко смарагдовий бір.

А...

Й від озера лине поклін комиша...
Тебе покриває мій зір і душа.
Хай ніч, любий сину, снує срібний шовк.
Ти спи — на сторожі безмежна любов.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_29697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_29697','Колискова','Ти спи, любий сину, в щасливому сні,
Довкола нас тиша і місяць в вікні.
Торкається шибок лиш сяєво зір,
Шумить десь далеко смарагдовий бір.

А...

Й від озера лине поклін комиша...
Тебе покриває мій зір і душа.
Хай ніч, любий сину, снує срібний шовк.
Ти спи — на сторожі безмежна любов.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_29697_l1','pisniua_29697','YouTube','https://www.youtube.com/watch?v=836dglbxLT8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_296614';
DELETE FROM song_versions WHERE song_id = 'pisniua_296614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_296614';
DELETE FROM songs WHERE id = 'pisniua_296614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_296614','Як я собі в нашім селі заспівам','Українська народна пісня. Виконує: Софія Федина','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Як я собі в нашім селі заспівам,
Вшитких хлопців до роботи позберам.
Позберам вшитких хлопців до нашого села -
Затим селом все ня болит голова.

Не лем хлопців, але й вшитки дівчата,
Бо на поли юж робота зачата.
Співают дівчата із нашого села -
За тим селом все ня болит голова.

Як я собі на весілю заспівам,
Вшитких гостей до співання позберам.
Весіля, весіля, на Петра, на Михала -
По весілю все ня болит голова.

А, як буду у далекій стороні,
То заплачу, то затужу в чужині.
До свойого села, де родина моя -
За тим селом все ня болит голова','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_296614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_296614','Як я собі в нашім селі заспівам','Як я собі в нашім селі заспівам,
Вшитких хлопців до роботи позберам.
Позберам вшитких хлопців до нашого села -
Затим селом все ня болит голова.

Не лем хлопців, але й вшитки дівчата,
Бо на поли юж робота зачата.
Співают дівчата із нашого села -
За тим селом все ня болит голова.

Як я собі на весілю заспівам,
Вшитких гостей до співання позберам.
Весіля, весіля, на Петра, на Михала -
По весілю все ня болит голова.

А, як буду у далекій стороні,
То заплачу, то затужу в чужині.
До свойого села, де родина моя -
За тим селом все ня болит голова');
DELETE FROM song_links WHERE song_id = 'pisniua_2971';
DELETE FROM song_versions WHERE song_id = 'pisniua_2971';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2971';
DELETE FROM songs WHERE id = 'pisniua_2971';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2971','Коли у путь','(Бий, барабан). Виконує: Журборіз','uk','ukraine_1991',NULL,NULL,'Пісневир. Молодіжний співаник. Львів 2001.',NULL,'C
Коли у путь, коли у путь,
Коли у путь сурма покличе,
Ти пригадай наш давній звичай —
Веселу пісню заспівай.

Приспів:
Бий барабан, бий барабан,
Бий барабан, лунайте труби.
Цілуй дівчину просто в губи
І келих повний наливай.

Султан завів собі гарем,
Жінок з півсотні має в нім.
І кожну може з них обнять.
Хотів би я султаном стать.
Та він нещасний чоловік:
Не п''є горілки цілий вік,
Бо не велить йому Коран.
Нехай же буде він султан.

Приспів.

У Римі Папі добре жить,
Вино, як воду, може пить,
Ще й грошей повна келія.
Хотів би бути Папа я.
Та він нещасний чоловік:
Не знав кохання цілий вік.
А я не хочу буть один.
Нехай же буде Папа він.

Приспів.

А я наллю собі бокал,
Перехилю, щоб він не впав,
Ще й обійму дівочий стан —
Тепер я Папа і султан.

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:zhartivlyvi'', ''Пісні про кохання, ліричні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2971'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2971','Коли у путь','C
Коли у путь, коли у путь,
Коли у путь сурма покличе,
Ти пригадай наш давній звичай —
Веселу пісню заспівай.

Приспів:
Бий барабан, бий барабан,
Бий барабан, лунайте труби.
Цілуй дівчину просто в губи
І келих повний наливай.

Султан завів собі гарем,
Жінок з півсотні має в нім.
І кожну може з них обнять.
Хотів би я султаном стать.
Та він нещасний чоловік:
Не п''є горілки цілий вік,
Бо не велить йому Коран.
Нехай же буде він султан.

Приспів.

У Римі Папі добре жить,
Вино, як воду, може пить,
Ще й грошей повна келія.
Хотів би бути Папа я.
Та він нещасний чоловік:
Не знав кохання цілий вік.
А я не хочу буть один.
Нехай же буде Папа він.

Приспів.

А я наллю собі бокал,
Перехилю, щоб він не впав,
Ще й обійму дівочий стан —
Тепер я Папа і султан.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2971_l1','pisniua_2971','YouTube','https://www.youtube.com/watch?v=oaUj-N80yZA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2971_l2','pisniua_2971','YouTube','https://www.youtube.com/watch?v=QdYcxQZMp9o','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2971_l3','pisniua_2971','YouTube','https://www.youtube.com/watch?v=LdHDSlRGJ7o','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_298395';
DELETE FROM song_versions WHERE song_id = 'pisniua_298395';
DELETE FROM songs_fts WHERE song_id = 'pisniua_298395';
DELETE FROM songs WHERE id = 'pisniua_298395';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_298395','Рекрутська','Українська народна пісня. Виконує: Марія Бурмака','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Гой да на прийомі галки в''ю,
Ой, галки в''ються,
А в дівчи, ой, а в дівчини,
Ой, да сльози ллються.

Гой да ти, дівчино, моє се,
Ой, моє серце,
Сховай ме, ой, сховай мене
Ой, да під ряденце.

Гой да я ряденце не придба,
Ой, не придбала,
Щоб я те, ой, тебе, серце,
Ой, да заховала.

Гой да на прийомі галки в''ю,
Ой, галки в''ються,
А в дівчи, ой, а в дівчини,
Ой, да сльози ллються...','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_298395'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_298395','Рекрутська','Гой да на прийомі галки в''ю,
Ой, галки в''ються,
А в дівчи, ой, а в дівчини,
Ой, да сльози ллються.

Гой да ти, дівчино, моє се,
Ой, моє серце,
Сховай ме, ой, сховай мене
Ой, да під ряденце.

Гой да я ряденце не придба,
Ой, не придбала,
Щоб я те, ой, тебе, серце,
Ой, да заховала.

Гой да на прийомі галки в''ю,
Ой, галки в''ються,
А в дівчи, ой, а в дівчини,
Ой, да сльози ллються...');
DELETE FROM song_links WHERE song_id = 'pisniua_3103168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3103168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3103168';
DELETE FROM songs WHERE id = 'pisniua_3103168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3103168','Хваліть ім''я Господнє','Музика: Кирило Стеценко Слова: народні. Виконує: Хор імені Григорія Верьовки','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Хваліть ім''я Господнє,
Хваліть раби Господні,
Раби Господні!
Алилуя! Алилуя!
Алилуя...

Благословенний Господній
Світ Сіону,
Що живе в Єрусалимі,
В Єрусалимі!
Алилуя! Алилуя!
Алилуя...

Прославляйте Господа,
Бо Він милосердний,
Бо велика ласка Його,
Ласка Його!
Алилуя! Алилуя!
Алилуя...

Прославляйте Бога Небесного,
Бо велика ласка Його,
Ласка Його!
Алилуя! Алилуя!
Алилуя...','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3103168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3103168','Хваліть ім''я Господнє','Хваліть ім''я Господнє,
Хваліть раби Господні,
Раби Господні!
Алилуя! Алилуя!
Алилуя...

Благословенний Господній
Світ Сіону,
Що живе в Єрусалимі,
В Єрусалимі!
Алилуя! Алилуя!
Алилуя...

Прославляйте Господа,
Бо Він милосердний,
Бо велика ласка Його,
Ласка Його!
Алилуя! Алилуя!
Алилуя...

Прославляйте Бога Небесного,
Бо велика ласка Його,
Ласка Його!
Алилуя! Алилуя!
Алилуя...');
DELETE FROM song_links WHERE song_id = 'pisniua_310929';
DELETE FROM song_versions WHERE song_id = 'pisniua_310929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_310929';
DELETE FROM songs WHERE id = 'pisniua_310929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_310929','Відправила message','Музика: Сергій Підкаура Слова: Сергій Підкаура. Виконує: Наталя Могилевська, Віталій Козловський','uk','ukraine_1991',NULL,NULL,'http://www.navsi100.com/','Виконують: Наталка Могилевська та Віталій Козловський (в дуеті) Anrzej: У первісному поданні автором музики була вказана Олена Корнєєва; після грунтовної перевірки в інтернеті автором музики і слів вказано Сергія Підкауру. Підбір акордів: bohdanko (pisni.org.ua)','Вступ: Cm Fm A# Gm

Cm    Fm              A# ...
Любов - це велика сила
Хтось істину відкрив
Ти так його хотіла,
Коли він говорив
Він брав її руками
Гарячу і смішну
Як дві зорі тілами
Зливалися в одну

Приспів:
Cm
Відправила message
Fm
Як море на весь екран
A#
Відправила message
Gm
Що все не правда і обман

Відправила message
Розбитого серця знак
Відправила message
Що я не хочу жити так

Коли він рано вийшов
Щоб більше не прийти
Її зустріла тиша
Очима сироти
Яку ніхто не хоче
Яка завжди одна
Які дві різні ночі
Щаслива і страшна

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_310929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_310929','Відправила message','Вступ: Cm Fm A# Gm

Cm    Fm              A# ...
Любов - це велика сила
Хтось істину відкрив
Ти так його хотіла,
Коли він говорив
Він брав її руками
Гарячу і смішну
Як дві зорі тілами
Зливалися в одну

Приспів:
Cm
Відправила message
Fm
Як море на весь екран
A#
Відправила message
Gm
Що все не правда і обман

Відправила message
Розбитого серця знак
Відправила message
Що я не хочу жити так

Коли він рано вийшов
Щоб більше не прийти
Її зустріла тиша
Очима сироти
Яку ніхто не хоче
Яка завжди одна
Які дві різні ночі
Щаслива і страшна

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310929_l1','pisniua_310929','YouTube','https://www.youtube.com/watch?v=tbTZxiyPXUI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310929_l2','pisniua_310929','YouTube','https://www.youtube.com/watch?v=P0OfBC-Wydc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310929_l3','pisniua_310929','YouTube','https://www.youtube.com/watch?v=OIURxcy6Las','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_311065';
DELETE FROM song_versions WHERE song_id = 'pisniua_311065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_311065';
DELETE FROM songs WHERE id = 'pisniua_311065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_311065','Соколята','(Крутилось пір''я на вітру...). Музика: В''ячеслав Хурсенко Слова: В''ячеслав Хурсенко. Виконує: В''ячеслав Хурсенко, Соколята','uk','ukraine_1991',NULL,NULL,NULL,'Пісня присвячена дітям Василя Зінкевича. Підбір акордів tenore91.','Am
Крутилось пір''я на вітру,
A7
І я згадав негоду ту,
В яку мене моя любов
Покинула.
Виймали жала із грудей
Очата двох моїх дітей
Dm
І вся моя любов на них
E7
Рікою хлинула.
Приспів:
Зростають у гніздечку соколята,
О, Боже, ти за все мене прости!
О, як я їх не хочу відпускати,
У простори юнацької мети.
В роках моїх така велика сила,
Та долю не затримати нічим, —
Сини мої візьміть мої вітрила,
Та й батька не забудьте поміж тим.
Я спав роками у вогні,
Біда сивіла на мені,
І тільки мати у селі,
В сльозах журилася.
А я синочків обіймав,
І сам у себе запитав,
О де ж ти наша доле
Забарилася!
Приспів:
Зростають у гніздечку соколята,
О Боже, ти за все мене прости!
О як я їх не хочу відпускати,
У простори юнацької мети.
В роках моїх така велика сила,
Та долю не затримати нічим, —
Сини мої візьміть мої вітрила,
Та й батька не забудьте поміж тим.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:lirychni'', ''cat:nostalgia'', ''cat:philosophic'', ''Бардівські пісні'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_311065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_311065','Соколята','Am
Крутилось пір''я на вітру,
A7
І я згадав негоду ту,
В яку мене моя любов
Покинула.
Виймали жала із грудей
Очата двох моїх дітей
Dm
І вся моя любов на них
E7
Рікою хлинула.
Приспів:
Зростають у гніздечку соколята,
О, Боже, ти за все мене прости!
О, як я їх не хочу відпускати,
У простори юнацької мети.
В роках моїх така велика сила,
Та долю не затримати нічим, —
Сини мої візьміть мої вітрила,
Та й батька не забудьте поміж тим.
Я спав роками у вогні,
Біда сивіла на мені,
І тільки мати у селі,
В сльозах журилася.
А я синочків обіймав,
І сам у себе запитав,
О де ж ти наша доле
Забарилася!
Приспів:
Зростають у гніздечку соколята,
О Боже, ти за все мене прости!
О як я їх не хочу відпускати,
У простори юнацької мети.
В роках моїх така велика сила,
Та долю не затримати нічим, —
Сини мої візьміть мої вітрила,
Та й батька не забудьте поміж тим.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_311065_l1','pisniua_311065','YouTube','https://www.youtube.com/watch?v=PvOscf8aiqY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_311065_l2','pisniua_311065','YouTube','https://www.youtube.com/watch?v=MzKL07NQIEk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_311065_l3','pisniua_311065','YouTube','https://www.youtube.com/watch?v=hADOlWPCBW4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_311065_l4','pisniua_311065','YouTube','https://www.youtube.com/watch?v=hEC5qF1PDC0','video',NULL,4);
