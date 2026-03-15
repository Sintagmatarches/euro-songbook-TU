DELETE FROM song_links WHERE song_id = 'pisniua_2497920';
DELETE FROM song_versions WHERE song_id = 'pisniua_2497920';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2497920';
DELETE FROM songs WHERE id = 'pisniua_2497920';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2497920','Бути простим','Музика: Ваньок Клименко, KOLA, Антон Чілібі Слова: Ваньок Клименко, KOLA','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Згадай, ми такі молоді,
По коліна вводі,
Ти несеш на руках,
Я кажу: Не впади!
Згадай,
Нас шукали батьки,
В кармані дірки,
Було так безтурботно,
Хоч робили помилки!..
Час - між пальців вода,
Але я не віддам
Ті спогади я навіть
За мільйон не продам!..

Приспів:
You never know,
Що буде завтра.
Літають на дахом
Сталеві птахи...
You never know,
Як ляже карта...
В ці непрості часи      |
Важливо бути простим!.. | (5)

Простота є у всьому,
Лиш варто побачити,
Лиш варто прибрати
Від очей своїх гаджети!..
З кимось незнайомим
Іноді можна стати близьким,
Лиш зазирнувши в очі
Всього за декілька хвилин...
Згадай, ми такі молоді,
По коліна вводі,
Ти несеш на руках,
Я кажу: Не впади!
Згадай,
Нас шукали батьки,
В кармані дірки,
Було так безтурботно,
Хоч робили помилки!..
На фото: ти, ти і я!
Привіт тобі, юність моя!

Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''cat:viyskovi'', ''Філософські пісні'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2497920'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2497920','Бути простим','Згадай, ми такі молоді,
По коліна вводі,
Ти несеш на руках,
Я кажу: Не впади!
Згадай,
Нас шукали батьки,
В кармані дірки,
Було так безтурботно,
Хоч робили помилки!..
Час - між пальців вода,
Але я не віддам
Ті спогади я навіть
За мільйон не продам!..

Приспів:
You never know,
Що буде завтра.
Літають на дахом
Сталеві птахи...
You never know,
Як ляже карта...
В ці непрості часи      |
Важливо бути простим!.. | (5)

Простота є у всьому,
Лиш варто побачити,
Лиш варто прибрати
Від очей своїх гаджети!..
З кимось незнайомим
Іноді можна стати близьким,
Лиш зазирнувши в очі
Всього за декілька хвилин...
Згадай, ми такі молоді,
По коліна вводі,
Ти несеш на руках,
Я кажу: Не впади!
Згадай,
Нас шукали батьки,
В кармані дірки,
Було так безтурботно,
Хоч робили помилки!..
На фото: ти, ти і я!
Привіт тобі, юність моя!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2497920_l1','pisniua_2497920','YouTube','https://www.youtube.com/watch?v=pJkh6GXLa-g','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2496277';
DELETE FROM song_versions WHERE song_id = 'pisniua_2496277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2496277';
DELETE FROM songs WHERE id = 'pisniua_2496277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2496277','За териконами','Музика: МЮСЛІ UA Слова: Михайло Стасула (позивний СКОРПІОН)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'За териконами, там за полями
Нас били градами, били вогами.
Там, де війна іде і бій гармати,
Там, де ніколи вам не побувати.
Там, де в руїнах все і смерть чатує,
Там, де ніхто мене вже не врятує.
Там, де горить земля і ріже димом,
Там, де зійшовся світ довкола клином.

Приспів:
За териконами, за териконами,
Там за полями,
За териконами, за териконами,
Там, де війна іде...
За териконами, за териконами,
Там за полями,
За териконами, там, де війна,
Там, там, де війна іде...

Там, де в руїнах все і ніде сісти,
Там де немає сну, немає їсти.
Там не було життя, то вже не має
Там у окопах брат мій помирає...
Там, де немає вас, вам не відчути,
Там, де сьогодні ми, вам не збагнути...
Там, де одна лиш мить тебе вбиває,
Там, де ворожий танк нас розбиває...
Там, де ковток води, немов перлина,
Там, де ти бачиш, брат, де є людина,
Там ще залишилась крапля надії,
Там ще живі в думках майбутні мрії!..

Приспів.

За териконами, там за полями
Нас били градами, били вогами.
Там, де війна іде і бій гармати,
Там, де ніколи вам не побувати...','[''pisni.org.ua'', ''cat:viyskovi'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2496277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2496277','За териконами','За териконами, там за полями
Нас били градами, били вогами.
Там, де війна іде і бій гармати,
Там, де ніколи вам не побувати.
Там, де в руїнах все і смерть чатує,
Там, де ніхто мене вже не врятує.
Там, де горить земля і ріже димом,
Там, де зійшовся світ довкола клином.

Приспів:
За териконами, за териконами,
Там за полями,
За териконами, за териконами,
Там, де війна іде...
За териконами, за териконами,
Там за полями,
За териконами, там, де війна,
Там, там, де війна іде...

Там, де в руїнах все і ніде сісти,
Там де немає сну, немає їсти.
Там не було життя, то вже не має
Там у окопах брат мій помирає...
Там, де немає вас, вам не відчути,
Там, де сьогодні ми, вам не збагнути...
Там, де одна лиш мить тебе вбиває,
Там, де ворожий танк нас розбиває...
Там, де ковток води, немов перлина,
Там, де ти бачиш, брат, де є людина,
Там ще залишилась крапля надії,
Там ще живі в думках майбутні мрії!..

Приспів.

За териконами, там за полями
Нас били градами, били вогами.
Там, де війна іде і бій гармати,
Там, де ніколи вам не побувати...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2496277_l1','pisniua_2496277','YouTube','https://www.youtube.com/watch?v=qx-EYmGDU0g','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2496277_l2','pisniua_2496277','YouTube','https://www.youtube.com/watch?v=XjsF9ot5yMw','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2500869';
DELETE FROM song_versions WHERE song_id = 'pisniua_2500869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2500869';
DELETE FROM songs WHERE id = 'pisniua_2500869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2500869','Різдво у колі друзів','Музика: STELA Слова: STELA','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Відсвяткуй Різдво
У колі друзів,
Засвіти вогні!
Залиши турботи
Всі свої земні...

Відсвяткуй Різдво
У колі друзів,
Хай звучать пісні!
Залиши турботи
І радій в ці дні!..

Ось ми тут, як в старі часи,
Золоті часи, колись...
Дорогі вірні друзі тут,
Знову разом всі зійшлись!

Так колись ми
Знову будем разом,
Як Бог дасть - за рік!
Сяє хай зоря
На гілці угорі!
Тож відсвяткуй Різдво  |
В казковій цій порі!.. | (20','[''pisni.org.ua'', ''cat:druzhba'', ''cat:suchasni-pisni-rizdvo'', ''Пісні про дружбу'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2500869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2500869','Різдво у колі друзів','Відсвяткуй Різдво
У колі друзів,
Засвіти вогні!
Залиши турботи
Всі свої земні...

Відсвяткуй Різдво
У колі друзів,
Хай звучать пісні!
Залиши турботи
І радій в ці дні!..

Ось ми тут, як в старі часи,
Золоті часи, колись...
Дорогі вірні друзі тут,
Знову разом всі зійшлись!

Так колись ми
Знову будем разом,
Як Бог дасть - за рік!
Сяє хай зоря
На гілці угорі!
Тож відсвяткуй Різдво  |
В казковій цій порі!.. | (20');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2500869_l1','pisniua_2500869','YouTube','https://www.youtube.com/watch?v=7l99ebE5yxE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_249818';
DELETE FROM song_versions WHERE song_id = 'pisniua_249818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_249818';
DELETE FROM songs WHERE id = 'pisniua_249818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_249818','Ой чорна я, чорна, як тая чорниця!','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Збірка народних пісень "Пісні мого серця" Редактор-упорядник Віктор Полковенко (Трускавецький вчитель) 2. Українські співанки. Упорядник Степан Нелєпа. — Львів: Сполом, 2007. — 404 с.',NULL,'Ой чорна я, чорна, як тая чорниця.   | (2)
Най ми ся уступить, гей - я!
Най ми ся уступить, гой - я!
Най ми ся уступить з пуття парадниця.

З пуття парадниця, з поля робітниця,*| (2)
Бо я така файна, гей - я!
Бо я така файна, гой - я!
Бо я така файна, як в небі зірниця.

Ой файна я, файна - я ся не малюю.   | (2)
Я на своє личко, гей - я!
Я на своє личко, гой - я!
Я на своє личко фарби не купую.

Ой файна я, файна - нема мені пари.  | (2)
Так за мнов хлопці йдуть, гей - я!
Так за мнов хлопці йдуть, гой - я!
Так за мнов йдуть хлопці, як дощові хмари.
*Відміна:
З пуття парадниця, тая суперниця','[''pisni.org.ua'', ''cat:dances'', ''cat:halycki'', ''cat:waltzes'', ''Пісні до танцю'', ''Пісні з Галичини'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_249818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_249818','Ой чорна я, чорна, як тая чорниця!','Ой чорна я, чорна, як тая чорниця.   | (2)
Най ми ся уступить, гей - я!
Най ми ся уступить, гой - я!
Най ми ся уступить з пуття парадниця.

З пуття парадниця, з поля робітниця,*| (2)
Бо я така файна, гей - я!
Бо я така файна, гой - я!
Бо я така файна, як в небі зірниця.

Ой файна я, файна - я ся не малюю.   | (2)
Я на своє личко, гей - я!
Я на своє личко, гой - я!
Я на своє личко фарби не купую.

Ой файна я, файна - нема мені пари.  | (2)
Так за мнов хлопці йдуть, гей - я!
Так за мнов хлопці йдуть, гой - я!
Так за мнов йдуть хлопці, як дощові хмари.
*Відміна:
З пуття парадниця, тая суперниця');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_249818_l1','pisniua_249818','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2498091';
DELETE FROM song_versions WHERE song_id = 'pisniua_2498091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2498091';
DELETE FROM songs WHERE id = 'pisniua_2498091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2498091','Миколай, Миколай','Музика: Аркадій Філіпенко Слова: Маргарита Яворська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Миколай, Миколай,
До нас в гості завітай!
Миколай, Миколай,
До нас в гості завітай!
Ми були слухняними,
Чемними, странними!

Миколай, Миколай,
Подаруночки давай!
Миколай, Миколай,
Подаруночки давай:
Тістечка і пряники,
І смачні льодяники!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2498091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2498091','Миколай, Миколай','Миколай, Миколай,
До нас в гості завітай!
Миколай, Миколай,
До нас в гості завітай!
Ми були слухняними,
Чемними, странними!

Миколай, Миколай,
Подаруночки давай!
Миколай, Миколай,
Подаруночки давай:
Тістечка і пряники,
І смачні льодяники!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2498091_l1','pisniua_2498091','YouTube','https://www.youtube.com/watch?v=fdTASQlAxWg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2499498';
DELETE FROM song_versions WHERE song_id = 'pisniua_2499498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2499498';
DELETE FROM songs WHERE id = 'pisniua_2499498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2499498','Різдво Христове','Музика: Наталія Собко Слова: Наталія Собко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На Різдво Христове
Ангел сповістив,
У садок сьогодні
До нас прилетів.

Радість у нас нова -
Це Різдво Христове!
Будуть всі радіти
Люди всього світу!
Будуть всі радіти
Люди всього світу!

В коло всі ставаймо
У різдвяний день,
Ісусу співаймо
Радісних пісень!

Ангел разом з нами
В колі закружляє,
І діток, і гостей |
Дружно звеселяє!  | (2)','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2499498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2499498','Різдво Христове','На Різдво Христове
Ангел сповістив,
У садок сьогодні
До нас прилетів.

Радість у нас нова -
Це Різдво Христове!
Будуть всі радіти
Люди всього світу!
Будуть всі радіти
Люди всього світу!

В коло всі ставаймо
У різдвяний день,
Ісусу співаймо
Радісних пісень!

Ангел разом з нами
В колі закружляє,
І діток, і гостей |
Дружно звеселяє!  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2499498_l1','pisniua_2499498','YouTube','https://www.youtube.com/watch?v=bKSnpCx-MQ4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2499498_l2','pisniua_2499498','YouTube','https://www.youtube.com/watch?v=G6KOtYJ94dI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_24961';
DELETE FROM song_versions WHERE song_id = 'pisniua_24961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_24961';
DELETE FROM songs WHERE id = 'pisniua_24961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_24961','Ангел пастирям мовив','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ангел пастирям мовив:
Христос ся нам народив,
В Вифлеємі, містечку убогім,
І в роді Давидовім
З Пречистой Марії.

О дивноє Рождество,
Великоє торжество;
Почала Діва Сина в чистости,
Породила в радости,
Із Дівства свойого.

Пастиріє ввірили,
До нього поспішили,
з охотов мило Йому співали.
Дитя в яслах вітали,
Марію з Йосифом.

Уже ся то сповнило,
Що у пророка було:
Галузка Аронова зацвіла,
Цвіток з себе пустила
І овоч зродила!

Слухайте Бога Отця,
Неба і землі Творця:
"Це Син  мій наймиліший, коханий,
Світу з неба післаний,
Його ви слухайте!"

Богу будь честь і хвала,
На вік віків і слава.
Як Отцю, так і Його Синові.
І Святому Духові,
В Тройці єдиному','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_24961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_24961','Ангел пастирям мовив','Ангел пастирям мовив:
Христос ся нам народив,
В Вифлеємі, містечку убогім,
І в роді Давидовім
З Пречистой Марії.

О дивноє Рождество,
Великоє торжество;
Почала Діва Сина в чистости,
Породила в радости,
Із Дівства свойого.

Пастиріє ввірили,
До нього поспішили,
з охотов мило Йому співали.
Дитя в яслах вітали,
Марію з Йосифом.

Уже ся то сповнило,
Що у пророка було:
Галузка Аронова зацвіла,
Цвіток з себе пустила
І овоч зродила!

Слухайте Бога Отця,
Неба і землі Творця:
"Це Син  мій наймиліший, коханий,
Світу з неба післаний,
Його ви слухайте!"

Богу будь честь і хвала,
На вік віків і слава.
Як Отцю, так і Його Синові.
І Святому Духові,
В Тройці єдиному');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24961_l1','pisniua_24961','YouTube','https://www.youtube.com/watch?v=sXh-bc_7m0w','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2498818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2498818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2498818';
DELETE FROM songs WHERE id = 'pisniua_2498818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2498818','Ліхтарики','Музика: Андрій Тимощик Слова: Катерина Костюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ліхтарики, запалені серцями,
Найдовше світять і дають тепло!..
Ліхтарики, запалені серцями,
Не гаснуть там, де поруч є добро!..
Ти простягни мені свою долоню,
На відстані півкроку до душі
Я дам тобі іскриночку любові,
Щоб нею цілий світ світив вночі!

Приспів:
Хай завжди співає вільне серце,
В кожному із нас озветься:
Ми з тобою, Україно, разом до кінця!
Хай завжди співає в серці воля!
Україно, ми з тобою!
Ми запалюємо, як ліхтарики, серця!

Ліхтарики, запалені серцями,
І посмішками наших поколінь
Палають до кінця і до нестями,
Кидаючи від себе теплу тінь!..
І вогник цей в душі буде горіти,
Давати блиску до твоїх очей.
Ліхтарики запалюють нам світло,
Щоб бачити людей серед людей!..

Приспів.','[''pisni.org.ua'', ''cat:patriotic'', ''cat:philosophic'', ''cat:zahalni-cinnosti'', ''Патріотичні пісні'', ''Філософські пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2498818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2498818','Ліхтарики','Ліхтарики, запалені серцями,
Найдовше світять і дають тепло!..
Ліхтарики, запалені серцями,
Не гаснуть там, де поруч є добро!..
Ти простягни мені свою долоню,
На відстані півкроку до душі
Я дам тобі іскриночку любові,
Щоб нею цілий світ світив вночі!

Приспів:
Хай завжди співає вільне серце,
В кожному із нас озветься:
Ми з тобою, Україно, разом до кінця!
Хай завжди співає в серці воля!
Україно, ми з тобою!
Ми запалюємо, як ліхтарики, серця!

Ліхтарики, запалені серцями,
І посмішками наших поколінь
Палають до кінця і до нестями,
Кидаючи від себе теплу тінь!..
І вогник цей в душі буде горіти,
Давати блиску до твоїх очей.
Ліхтарики запалюють нам світло,
Щоб бачити людей серед людей!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2498818_l1','pisniua_2498818','YouTube','https://www.youtube.com/watch?v=pYiAr7VuQOU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_249859';
DELETE FROM song_versions WHERE song_id = 'pisniua_249859';
DELETE FROM songs_fts WHERE song_id = 'pisniua_249859';
DELETE FROM songs WHERE id = 'pisniua_249859';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_249859','При каноні стояв','(Фурт-фурт). Українська народна пісня. Виконує: Журборіз','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'Журборіз','Акорди трошки не такі, як хотілося б.... може хтось підкаже... Підбір акордів: Змій','C
При каноні стояв,
G
і фурт-фурт ладував,
G
І фурт-фурт і фурт-фурт,
C
І фурт-фурт ладував.

Приспів:
F
І фурт-фурт і фурт-фурт
C
І фурт-фурт ладував,
G
А він все ще стояв
C
І фурт-фурт ладував.

Пеша куля летіла,
праве вухо відтяла,
А він все ще стояв,
і фурт-фурт ладував.

Приспів.

Друга куля летіла,
Ліве вухо відтяла,
А він все ще стояв,
і фурт-фурт ладував.

Приспів.

Третя куля летіла,
Йому носа відтяла,
А він все ще стояв,
і фурт-фурт ладував.

Приспів.

Чверта куля летіла,
Праву руку відтяла,
А він все ще стояв,
і фурт-фурт ладував.','[''pisni.org.ua'', ''cat:rekrutski'', ''cat:strilecki'', ''Рекрутські пісні'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_249859'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_249859','При каноні стояв','C
При каноні стояв,
G
і фурт-фурт ладував,
G
І фурт-фурт і фурт-фурт,
C
І фурт-фурт ладував.

Приспів:
F
І фурт-фурт і фурт-фурт
C
І фурт-фурт ладував,
G
А він все ще стояв
C
І фурт-фурт ладував.

Пеша куля летіла,
праве вухо відтяла,
А він все ще стояв,
і фурт-фурт ладував.

Приспів.

Друга куля летіла,
Ліве вухо відтяла,
А він все ще стояв,
і фурт-фурт ладував.

Приспів.

Третя куля летіла,
Йому носа відтяла,
А він все ще стояв,
і фурт-фурт ладував.

Приспів.

Чверта куля летіла,
Праву руку відтяла,
А він все ще стояв,
і фурт-фурт ладував.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_249859_l1','pisniua_249859','YouTube','https://www.youtube.com/watch?v=dkQGlUdCyXM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2498212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2498212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2498212';
DELETE FROM songs WHERE id = 'pisniua_2498212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2498212','Ти не один','Музика: GROSU Слова: GROSU','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Деякі люди сил твоїх не варті,
Нехай забуті будуть вже на старті.
Нехай їм хтось колись наб''є табличку,
Щоб як в метро - входу нема - на личку.

Приспів:
Не падай духом, що день - непруха!
Іди до друга - він дасть плече!
І ця напруга розтане пухом,
І не пече, так не пече!..
А якщо день був гальмо -
Не сумуй без причин!
Вихід ми знайдемо! -
Знай, що ти не один!
У житті, як в метро,
Вже за кілька хвилин
Вихід буде з всього!
Знай, що ти не один!
Ти не один! Ти не один! | (6)

Сидиш в запарах на своїй роботі,
Поки на двіжі хтось і на курорті.
Хай потім кажуть всім на розвороті,
Що все самі, що зовсім не в ескорті.

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2498212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2498212','Ти не один','Деякі люди сил твоїх не варті,
Нехай забуті будуть вже на старті.
Нехай їм хтось колись наб''є табличку,
Щоб як в метро - входу нема - на личку.

Приспів:
Не падай духом, що день - непруха!
Іди до друга - він дасть плече!
І ця напруга розтане пухом,
І не пече, так не пече!..
А якщо день був гальмо -
Не сумуй без причин!
Вихід ми знайдемо! -
Знай, що ти не один!
У житті, як в метро,
Вже за кілька хвилин
Вихід буде з всього!
Знай, що ти не один!
Ти не один! Ти не один! | (6)

Сидиш в запарах на своїй роботі,
Поки на двіжі хтось і на курорті.
Хай потім кажуть всім на розвороті,
Що все самі, що зовсім не в ескорті.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2498212_l1','pisniua_2498212','YouTube','https://www.youtube.com/watch?v=pNmssZrz93c','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_249899';
DELETE FROM song_versions WHERE song_id = 'pisniua_249899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_249899';
DELETE FROM songs WHERE id = 'pisniua_249899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_249899','Гуде вітер','Музика: Роман Туровський Слова: Роман Туровський-Савчук','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Гуде вітер вельми в полі,
реве, ліс ламає.
Стогне молодий повстанець,
кров''ю ізтекає.

Ревеш, вітре, та не плачеш,
бо не знаєш болю
тих що гинуть молодими
за майбутню волю.    Мелодія','[''pisni.org.ua'', ''cat:pivden'', ''Пісні з півдня України'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_249899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_249899','Гуде вітер','Гуде вітер вельми в полі,
реве, ліс ламає.
Стогне молодий повстанець,
кров''ю ізтекає.

Ревеш, вітре, та не плачеш,
бо не знаєш болю
тих що гинуть молодими
за майбутню волю.    Мелодія');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_249899_l1','pisniua_249899','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2501073';
DELETE FROM song_versions WHERE song_id = 'pisniua_2501073';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2501073';
DELETE FROM songs WHERE id = 'pisniua_2501073';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2501073','Щедра ніч','Музика: Альона Савраненко (alyona alyona), KOLA, Jerry Heil Слова: Альона Савраненко (alyona alyona), KOLA, Jerry Heil','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Приспів:
Хай як холодно було тогоріч,
І каміном стала духова піч,
О дванадцятій в цю ніч
Миру просить кожен з нас!
Хай як холодно було тогоріч,
Нас зігріють, наче ковдрою,
Звичаї і у Щедру темну ніч
Будь же щедрим, Боже!

Стара святкова скатертина
І в тарілочці кутя,
Ми так збирались пів життя,
Щоб стіл довести до пуття
І помолитися разом за мир,
За спокій, за дітей, за тих,
Хто сяє вже з небес
І за собою нас веде!..
А в кожній страві там тепло,
Й добро, й любов материнська,
Колядники вже близько,
Родом із дитинства,
Були, є і будем всім ворогам на зло!
Зоря віщує нам святе Різдво!
Різдво! Різдво!
Я пам''ятаю, як ми всі разом
За одним великим столом,
Де гомоніли всі й пісні неслись
Рікою під смачну кутю,
В той вечір в місті віяло селом,
Була зігріта маминим теплом...
В руці тримаю спогади,
Що зігрівають по життю...

Приспів.

Закапелки пам''яті покрила крига,
І бува, здається, я все вигадала...
У серванті в баби чорно-біла фотокнига,
Пилу на полиці, ніби на подвір''ї снігу...
Наодин-наодин-наодинці               |
Ми ніколи не були у години ці,       |
Миколай, Миколай ніс гостинці        |
До Тернополя, Донецька і до Вінниці! | (2)

Приспів.

З роками все менше Різдва,
Дорослою стала вже я,
Нехай повернеться воно!..','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:pro-batkiv'', ''cat:pro-ditey'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''cat:zahalni-cinnosti'', ''Колядки'', ''Пісні про любов до батьків'', ''Пісні про любов до дітей'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2501073'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2501073','Щедра ніч','Приспів:
Хай як холодно було тогоріч,
І каміном стала духова піч,
О дванадцятій в цю ніч
Миру просить кожен з нас!
Хай як холодно було тогоріч,
Нас зігріють, наче ковдрою,
Звичаї і у Щедру темну ніч
Будь же щедрим, Боже!

Стара святкова скатертина
І в тарілочці кутя,
Ми так збирались пів життя,
Щоб стіл довести до пуття
І помолитися разом за мир,
За спокій, за дітей, за тих,
Хто сяє вже з небес
І за собою нас веде!..
А в кожній страві там тепло,
Й добро, й любов материнська,
Колядники вже близько,
Родом із дитинства,
Були, є і будем всім ворогам на зло!
Зоря віщує нам святе Різдво!
Різдво! Різдво!
Я пам''ятаю, як ми всі разом
За одним великим столом,
Де гомоніли всі й пісні неслись
Рікою під смачну кутю,
В той вечір в місті віяло селом,
Була зігріта маминим теплом...
В руці тримаю спогади,
Що зігрівають по життю...

Приспів.

Закапелки пам''яті покрила крига,
І бува, здається, я все вигадала...
У серванті в баби чорно-біла фотокнига,
Пилу на полиці, ніби на подвір''ї снігу...
Наодин-наодин-наодинці               |
Ми ніколи не були у години ці,       |
Миколай, Миколай ніс гостинці        |
До Тернополя, Донецька і до Вінниці! | (2)

Приспів.

З роками все менше Різдва,
Дорослою стала вже я,
Нехай повернеться воно!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2501073_l1','pisniua_2501073','YouTube','https://www.youtube.com/watch?v=-Ve5i7NzALY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2501073_l2','pisniua_2501073','YouTube','https://www.youtube.com/watch?v=PDmcBsO4sVQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2501073_l3','pisniua_2501073','YouTube','https://www.youtube.com/watch?v=sGoxIvFZyCg','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_249879';
DELETE FROM song_versions WHERE song_id = 'pisniua_249879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_249879';
DELETE FROM songs WHERE id = 'pisniua_249879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_249879','Маестро','(Ти той, котрий руками ловить дощ...). Музика: Наталя Криничанка Слова: Наталя Криничанка. Виконує: Наталя Криничанка','uk','ukraine_1991',NULL,NULL,'1. Аудіо-альбом (CD) "Я кохаю цього чоловіка"','Ця пісня увійшла в аудіо-альбом (CD) "Я кохаю цього чоловіка". З питаннями щодо придбання альбому та з пропозиціями щодо музичної співпраці звертайтесь за адресою etra@ukr.net або залишайте повідомлення на сторінці "Українські пісні: Наталя Криничанка".','Ти той котрий руками ловить дощ
Ніким ніде не визнаний маестро
І диригуєш на бруківці площ
Ніким ніде не баченим оркестром

Краплиною впаду у спокій твій
І розійдеться колами неспокій
Розлютиться шалений вітровій
Вартуючи мої підступні кроки

Ми заціловані дощем
Банально так і неповторно
Сердець замолюємо щем
Мінорно ти і я мінорно

Ти той котрий руками ловить дощ
Ніким ніде не визнаний маестро
І диригуєш на бруківці площ
Ніким ніде не баченим оркестром','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_249879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_249879','Маестро','Ти той котрий руками ловить дощ
Ніким ніде не визнаний маестро
І диригуєш на бруківці площ
Ніким ніде не баченим оркестром

Краплиною впаду у спокій твій
І розійдеться колами неспокій
Розлютиться шалений вітровій
Вартуючи мої підступні кроки

Ми заціловані дощем
Банально так і неповторно
Сердець замолюємо щем
Мінорно ти і я мінорно

Ти той котрий руками ловить дощ
Ніким ніде не визнаний маестро
І диригуєш на бруківці площ
Ніким ніде не баченим оркестром');
DELETE FROM song_links WHERE song_id = 'pisniua_250096';
DELETE FROM song_versions WHERE song_id = 'pisniua_250096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_250096';
DELETE FROM songs WHERE id = 'pisniua_250096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_250096','Скрипка би не грала','(Чоловік би жінку не бив). Українська народна пісня. Виконує: Русичі','uk','ukraine_before_1917',NULL,NULL,'1. Українські співанки. Упорядник Степан Налєпа. — Львів: Сполом, 2007. — 404 с.',NULL,'Скрипка би не грала, якби не той смичок,
Чоловік би жінку не бив, якби не язичок !

Чоловік би не бив ніколи-ніколи,
Якби вона говорила до нього поволи !

Чоловік би не бив ні колом ні буком,
Якби вона говорила до нього не з фуком !

Чоловік би не бив даремно-даремно,
Якби вона говорила до нього приємно !','[''pisni.org.ua'', ''cat:dances'', ''cat:halycki'', ''cat:socialno-pobutovi'', ''cat:vesilni'', ''cat:zhartivlyvi'', ''Пісні до танцю'', ''Пісні з Галичини'', ''Соціально-побутові пісні'', ''Весільні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_250096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_250096','Скрипка би не грала','Скрипка би не грала, якби не той смичок,
Чоловік би жінку не бив, якби не язичок !

Чоловік би не бив ніколи-ніколи,
Якби вона говорила до нього поволи !

Чоловік би не бив ні колом ні буком,
Якби вона говорила до нього не з фуком !

Чоловік би не бив даремно-даремно,
Якби вона говорила до нього приємно !');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_250096_l1','pisniua_250096','YouTube','https://www.youtube.com/watch?v=XsV28SVskN0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_250096_l2','pisniua_250096','YouTube','https://www.youtube.com/watch?v=-1DqS0ybbE8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_250096_l3','pisniua_250096','YouTube','https://www.youtube.com/watch?v=Nu5yBxe6b1M','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_249961';
DELETE FROM song_versions WHERE song_id = 'pisniua_249961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_249961';
DELETE FROM songs WHERE id = 'pisniua_249961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_249961','На столі горілка, на столі медочок','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Цю пісню співала моя бабуся. Вперше її я почула у 1973 році. Кажуть що привезли пісню з Кіровоградщини.',NULL,'На столі горілка, на столі медочок,
Дивлюсь я в віконце - іде мій синочок.    |(2)
— Іди, іди, сину, маю що сказати:
То хто ж тобі рідніший, чи Жінка, чи Мати?|(2)

- Жінка ж мені рідна, бо моя дружина,
Теща ж мені рідну жінку спородила.        |(2)
А ти ж моя мати, повинна мовчати,
Не будеш мовчати - то вижену з хати.      |(2)

- Діти ж мої, діти, мої онучата!
Та я ж вас гляділа, як квочка курчаток,   |(2)
Гляділа по двоє, гляділа по троє,
А Ви не схотіли мене і одної.             |(2)

Не хочу я їсти, і хліба кусочка,
Якщо не знайдеться для мене куточка.      |(2)
Не хочу я пити, не хочу я плати,
Щоб Ви не забули, що я ваша МАТИ.         |(2)','[''pisni.org.ua'', ''cat:pivden'', ''cat:socialno-pobutovi'', ''Пісні з півдня України'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_249961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_249961','На столі горілка, на столі медочок','На столі горілка, на столі медочок,
Дивлюсь я в віконце - іде мій синочок.    |(2)
— Іди, іди, сину, маю що сказати:
То хто ж тобі рідніший, чи Жінка, чи Мати?|(2)

- Жінка ж мені рідна, бо моя дружина,
Теща ж мені рідну жінку спородила.        |(2)
А ти ж моя мати, повинна мовчати,
Не будеш мовчати - то вижену з хати.      |(2)

- Діти ж мої, діти, мої онучата!
Та я ж вас гляділа, як квочка курчаток,   |(2)
Гляділа по двоє, гляділа по троє,
А Ви не схотіли мене і одної.             |(2)

Не хочу я їсти, і хліба кусочка,
Якщо не знайдеться для мене куточка.      |(2)
Не хочу я пити, не хочу я плати,
Щоб Ви не забули, що я ваша МАТИ.         |(2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2502277';
DELETE FROM song_versions WHERE song_id = 'pisniua_2502277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2502277';
DELETE FROM songs WHERE id = 'pisniua_2502277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2502277','Родина','Музика: Олена Білоконь Слова: Володимир Слєпцов. Виконує: Олена Білоконь','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Традиції славні в родинному колі
Живуть в нашім серці - і це наша доля!
Чесноти земні - то сімейне надбання,
А корені роду - то наше єднання!
А корені роду - то наше єднання!

Приспів:
Родина - це злагода, гордість і сила!
Родинне багаття біда не згасила!
Живуть в ній онуки і правнуки нині!
Ми будемо жити у дружній родині!
Дай, Боже, нам сонця і чистого неба!
Хай річка за обрій в долині тече!
Ти знаєш, що більшого щастя не треба -
В родині на рідне схилитись плече!

А дружна родина - то чаша любові,
То правди зернина у кожному слові,
То віра у дочок, синів і нащадків!
З родини людина бере свій початок!
З родини людина бере свій початок!

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2502277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2502277','Родина','Традиції славні в родинному колі
Живуть в нашім серці - і це наша доля!
Чесноти земні - то сімейне надбання,
А корені роду - то наше єднання!
А корені роду - то наше єднання!

Приспів:
Родина - це злагода, гордість і сила!
Родинне багаття біда не згасила!
Живуть в ній онуки і правнуки нині!
Ми будемо жити у дружній родині!
Дай, Боже, нам сонця і чистого неба!
Хай річка за обрій в долині тече!
Ти знаєш, що більшого щастя не треба -
В родині на рідне схилитись плече!

А дружна родина - то чаша любові,
То правди зернина у кожному слові,
То віра у дочок, синів і нащадків!
З родини людина бере свій початок!
З родини людина бере свій початок!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2502277_l1','pisniua_2502277','YouTube','https://www.youtube.com/watch?v=NBJnbaoiA1A','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2499124';
DELETE FROM song_versions WHERE song_id = 'pisniua_2499124';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2499124';
DELETE FROM songs WHERE id = 'pisniua_2499124';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2499124','Ніч перед Миколаєм','Музика: Ольга Монастирська Слова: Ольга Монастирська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ніч перед Миколаєм
Дуже магічна! Дуже магічна!
Діти на це чекають,
Диво щорічне, диво щорічне!
І зазвичай кладуть листи
На підвіконня,
Щоб Миколай здійснив їх мрії
І сьогодні

Приспів:
Миколай приходить під вечір,
І несе дарунки малечі -
Ласощів, закутаних у в''язку,
Щоб створити діточкам казку!
Прочитай і мою листівку,
Завітай у кожну домівку,
Подаруй мішечок любові,
То ж будьте щасливі
І будьте здорові!

Вчитися гарно в школі,
Слухати маму і слухати татка,
Буди завжди бадьорим -
Це запорука дитячого свята!
І зазвичай за доброту
І гарні вчинки
Вам Миколай принесе
В торбі подарунки!

Приспів.

Речитатив:
Святий Миколай приходить
До всіх, хто вірить у диво!
Коли мрії оживають,
Коли в казку вірять всі!
Вогники яскраво сяють,
Закликають в кожен дім!

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2499124'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2499124','Ніч перед Миколаєм','Ніч перед Миколаєм
Дуже магічна! Дуже магічна!
Діти на це чекають,
Диво щорічне, диво щорічне!
І зазвичай кладуть листи
На підвіконня,
Щоб Миколай здійснив їх мрії
І сьогодні

Приспів:
Миколай приходить під вечір,
І несе дарунки малечі -
Ласощів, закутаних у в''язку,
Щоб створити діточкам казку!
Прочитай і мою листівку,
Завітай у кожну домівку,
Подаруй мішечок любові,
То ж будьте щасливі
І будьте здорові!

Вчитися гарно в школі,
Слухати маму і слухати татка,
Буди завжди бадьорим -
Це запорука дитячого свята!
І зазвичай за доброту
І гарні вчинки
Вам Миколай принесе
В торбі подарунки!

Приспів.

Речитатив:
Святий Миколай приходить
До всіх, хто вірить у диво!
Коли мрії оживають,
Коли в казку вірять всі!
Вогники яскраво сяють,
Закликають в кожен дім!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2499124_l1','pisniua_2499124','YouTube','https://www.youtube.com/watch?v=QAs_FGj9CO0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2499124_l2','pisniua_2499124','YouTube','https://www.youtube.com/watch?v=1H6h-9cKQ3c','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2503756';
DELETE FROM song_versions WHERE song_id = 'pisniua_2503756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2503756';
DELETE FROM songs WHERE id = 'pisniua_2503756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2503756','Троянди','Музика: Tina Karol, Anton Popov Слова: Andrii Bezkrovnyi. Виконує: Тіна Кароль','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Просто промовчи,
Для цього тисячу причин...
Кожен подих серце зводить,
Просто подивись,
Вже не буде, як колись...
Я поруч... Я скрізь...

Приспів:
Дві чорні троянди,
Дві зради, дві правди...
Просто помовчи,
Вже не буде, як колись...
Я поруч... Я скрізь...

В колі ліхтаря
Сором''язлива стану я,
Хай мене судять
Всі, хто не люблять...
В келиху вина
Бринить моїх гріхів сльоза...

Приспів.

Просто помовчи,
Не буде, як було колись...
Я поруч... Я скрізь...','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2503756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2503756','Троянди','Просто промовчи,
Для цього тисячу причин...
Кожен подих серце зводить,
Просто подивись,
Вже не буде, як колись...
Я поруч... Я скрізь...

Приспів:
Дві чорні троянди,
Дві зради, дві правди...
Просто помовчи,
Вже не буде, як колись...
Я поруч... Я скрізь...

В колі ліхтаря
Сором''язлива стану я,
Хай мене судять
Всі, хто не люблять...
В келиху вина
Бринить моїх гріхів сльоза...

Приспів.

Просто помовчи,
Не буде, як було колись...
Я поруч... Я скрізь...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2503756_l1','pisniua_2503756','YouTube','https://www.youtube.com/watch?v=n-0Owil1hMU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2503756_l2','pisniua_2503756','YouTube','https://www.youtube.com/watch?v=_p8m4uTeiEc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2504073';
DELETE FROM song_versions WHERE song_id = 'pisniua_2504073';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2504073';
DELETE FROM songs WHERE id = 'pisniua_2504073';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2504073','Дихати','Музика: Сергій Сорока Слова: Світлана Тарабарова, Яна Дрюпіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Втомилась - можеш поплакати,
Це норма, кажуть психологи.
Щоб дахом раптом не з''їхати,
Треба нам дихати! Дихати!..
Дихати!..

Так, я втомилася хочу поплакати,
І це нормально, як кажуть психологи.
В небо дивилася, бачила падали
Мрії, що перетворилися в спогади.
Часом накриває так, а ти дихай!
Дихай рівно, рівно так!
Все стало складніше, і я стала іншою!..
Але це все я, чуєш?..

Приспів.

Дихати!.. Дихати!.. Дихати!..
Дихати!.. Дихати!.. Дихати!..
Треба нам дихати! Дихати!..
Дихати!..

Лютий по колу, постійно на грані,
І комом у горлі слова залишаються.
Таких нас мільйони, таких океани,
І криком на зовні твій біль
Проривається...
Часом накриває так, а ти дихай!
Дихай рівно, рівно так!
Все стало складніше, і я стала іншою!..
Але це все я, чуєш?..

Приспів.

Дихати!.. Дихати!.. Дихати!..
Дихати!.. Дихати!.. Дихати!..
Треба нам дихати! Дихати!..
Дихати!..
Втомилась - можеш поплакати,
Це норма, кажуть психологи.
Щоб дахом раптом не з''їхати,
Треба нам дихати! Діяти!..
Дихати!..
Дихати!.. Дихати!.. Дихати!..
Дихати!.. Дихати!.. Дихати!..
Треба нам дихати! Дихати!..
Дихати!..

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2504073'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2504073','Дихати','Приспів:
Втомилась - можеш поплакати,
Це норма, кажуть психологи.
Щоб дахом раптом не з''їхати,
Треба нам дихати! Дихати!..
Дихати!..

Так, я втомилася хочу поплакати,
І це нормально, як кажуть психологи.
В небо дивилася, бачила падали
Мрії, що перетворилися в спогади.
Часом накриває так, а ти дихай!
Дихай рівно, рівно так!
Все стало складніше, і я стала іншою!..
Але це все я, чуєш?..

Приспів.

Дихати!.. Дихати!.. Дихати!..
Дихати!.. Дихати!.. Дихати!..
Треба нам дихати! Дихати!..
Дихати!..

Лютий по колу, постійно на грані,
І комом у горлі слова залишаються.
Таких нас мільйони, таких океани,
І криком на зовні твій біль
Проривається...
Часом накриває так, а ти дихай!
Дихай рівно, рівно так!
Все стало складніше, і я стала іншою!..
Але це все я, чуєш?..

Приспів.

Дихати!.. Дихати!.. Дихати!..
Дихати!.. Дихати!.. Дихати!..
Треба нам дихати! Дихати!..
Дихати!..
Втомилась - можеш поплакати,
Це норма, кажуть психологи.
Щоб дахом раптом не з''їхати,
Треба нам дихати! Діяти!..
Дихати!..
Дихати!.. Дихати!.. Дихати!..
Дихати!.. Дихати!.. Дихати!..
Треба нам дихати! Дихати!..
Дихати!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2504073_l1','pisniua_2504073','YouTube','https://www.youtube.com/watch?v=wHe8k8Q_eoo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2501522';
DELETE FROM song_versions WHERE song_id = 'pisniua_2501522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2501522';
DELETE FROM songs WHERE id = 'pisniua_2501522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2501522','Ми весняночку співаєм','Музика: Ю. Горпинченко Слова: Ю. Горпинченко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ми весняночку співаєм,
Дружно разом всі пограєм:
Плесь, плесь, туп та туп, |
Всі весняночку ведуть!    | (2)

Ми весняночку співаєм,
Тепле сонечко вітаєм!
Плесь, плесь, туп та туп, |
Всі весняночку ведуть!    | (2)

Ми весняночку співаєм
І танок розпочинаєм!
Плесь, плесь, туп та туп, |
Всі весняночку ведуть!    | (2)','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2501522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2501522','Ми весняночку співаєм','Ми весняночку співаєм,
Дружно разом всі пограєм:
Плесь, плесь, туп та туп, |
Всі весняночку ведуть!    | (2)

Ми весняночку співаєм,
Тепле сонечко вітаєм!
Плесь, плесь, туп та туп, |
Всі весняночку ведуть!    | (2)

Ми весняночку співаєм
І танок розпочинаєм!
Плесь, плесь, туп та туп, |
Всі весняночку ведуть!    | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2501522_l1','pisniua_2501522','YouTube','https://www.youtube.com/watch?v=ohwiMyFrM94','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2501522_l2','pisniua_2501522','YouTube','https://www.youtube.com/watch?v=5Dpcyown-JY','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2503919';
DELETE FROM song_versions WHERE song_id = 'pisniua_2503919';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2503919';
DELETE FROM songs WHERE id = 'pisniua_2503919';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2503919','Лелеки','Музика: Юлія Рознен Слова: Юлія Рознен','uk','ukraine_1991',NULL,NULL,'аудіозапис','Цю пісню автор присвятила нашим українським біженцям, котрі внаслідок повномасштабного вторгнення військ російської федерації, втратили свій дім назавжди, та були вимушені виїхати за межі своєї країни. Де б ви не були, пам''ятайте, Україна тужить за вами й понад усе хоче, аби ви, якнайшвидше повернулися додому!','А лелеки за вікном уже клекочуть,
Передати вам привіт вони так хочуть...

Приспів:
А лелеки за вікном уже клекочуть,
Передати вам привіт вони так хочуть,
Обійняти вас крильми і захистити,
Наші люди українці - наші діти!..

Ставимо життя на стоп,
Залишаємо надію
Повернутися додому
У свої дитячі мрії!
Де були щасливі ми,
Де кохали до нестями!
Відлетіли, мов птахи,
На шляхи чужі, незнані...
Де тепер, хто знає?
На яких кордонах?
Знаю, тебе вдома чекають,
На тебе чекають!

Приспів.

Загубилася весна
Серед сліз твоїх бурхливих,
В них тонули небеса
У мелодіях тужливих...
Десь далеко за вікном
Білі птахи пролітали,
Повернулися додому,
Та країну не впізнали...
Де тепер, хто знає?
На яких кордонах?
Знаю, тебе вдома чекають,
На тебе чекають!

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2503919'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2503919','Лелеки','А лелеки за вікном уже клекочуть,
Передати вам привіт вони так хочуть...

Приспів:
А лелеки за вікном уже клекочуть,
Передати вам привіт вони так хочуть,
Обійняти вас крильми і захистити,
Наші люди українці - наші діти!..

Ставимо життя на стоп,
Залишаємо надію
Повернутися додому
У свої дитячі мрії!
Де були щасливі ми,
Де кохали до нестями!
Відлетіли, мов птахи,
На шляхи чужі, незнані...
Де тепер, хто знає?
На яких кордонах?
Знаю, тебе вдома чекають,
На тебе чекають!

Приспів.

Загубилася весна
Серед сліз твоїх бурхливих,
В них тонули небеса
У мелодіях тужливих...
Десь далеко за вікном
Білі птахи пролітали,
Повернулися додому,
Та країну не впізнали...
Де тепер, хто знає?
На яких кордонах?
Знаю, тебе вдома чекають,
На тебе чекають!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2503919_l1','pisniua_2503919','YouTube','https://www.youtube.com/watch?v=CqGXZzmFc4E','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2504675';
DELETE FROM song_versions WHERE song_id = 'pisniua_2504675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2504675';
DELETE FROM songs WHERE id = 'pisniua_2504675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2504675','Мій герой','Музика: Svitankova Слова: Svitankova','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Джгутами, смутою
Переплелися дні, ночі,
Я шукаю твої очі,
Я чекаю на твій голос
В телефоні. Як ти?..
Кожен день - як на світанку
Того ранку, отак би прокинутись
Біля вікна, а війни вже нема,
Отак би - ти поруч і кажеш:
Ми перемогли, мила моя!..
Я поруч з тобою в запеклому бою
Плащем і стіною,
І навіть там, де немає мене -
Я поруч є, ми з тобою одне!
Тебе огортаю, тобі заспіваю,
З тобою засинаю,
Ми разом здолаємо все!

Приспів:
А я молитимусь за тебе,
Щоби прикрити над тобою небо,
Щоб повернувся ти додому, мій Герой!
А я благатиму у неба
За всіх вас, хлопці, і за тебе!
Най береже тебе твій Ангел, мій Герой!

Війна розділяє, та мене не лякає,
Твоя сила в мені воскресає!
Нас не зламати, я знаю - здолаєм!
Надію тримаю, повернешся, знаю,
Вірою ночі вмиваю!
Най впаде той літній дощ,
Най скаже, як тебе чекаю!..

Приспів.

А я благатиму у неба
За всіх вас, хлопці!
Най береже тебе твій Ангел, мій Герой!','[''pisni.org.ua'', ''cat:ato'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2504675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2504675','Мій герой','Джгутами, смутою
Переплелися дні, ночі,
Я шукаю твої очі,
Я чекаю на твій голос
В телефоні. Як ти?..
Кожен день - як на світанку
Того ранку, отак би прокинутись
Біля вікна, а війни вже нема,
Отак би - ти поруч і кажеш:
Ми перемогли, мила моя!..
Я поруч з тобою в запеклому бою
Плащем і стіною,
І навіть там, де немає мене -
Я поруч є, ми з тобою одне!
Тебе огортаю, тобі заспіваю,
З тобою засинаю,
Ми разом здолаємо все!

Приспів:
А я молитимусь за тебе,
Щоби прикрити над тобою небо,
Щоб повернувся ти додому, мій Герой!
А я благатиму у неба
За всіх вас, хлопці, і за тебе!
Най береже тебе твій Ангел, мій Герой!

Війна розділяє, та мене не лякає,
Твоя сила в мені воскресає!
Нас не зламати, я знаю - здолаєм!
Надію тримаю, повернешся, знаю,
Вірою ночі вмиваю!
Най впаде той літній дощ,
Най скаже, як тебе чекаю!..

Приспів.

А я благатиму у неба
За всіх вас, хлопці!
Най береже тебе твій Ангел, мій Герой!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2504675_l1','pisniua_2504675','YouTube','https://www.youtube.com/watch?v=glvP2Am0-MM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2506096';
DELETE FROM song_versions WHERE song_id = 'pisniua_2506096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2506096';
DELETE FROM songs WHERE id = 'pisniua_2506096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2506096','Валентинка','Музика: Діма Варварук Слова: Діма Варварук','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Я трактор виганяю,
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
DELETE FROM song_links WHERE song_id = 'pisniua_250267';
DELETE FROM song_versions WHERE song_id = 'pisniua_250267';
DELETE FROM songs_fts WHERE song_id = 'pisniua_250267';
DELETE FROM songs WHERE id = 'pisniua_250267';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_250267','Осінь, ти така ж, як і була!','Музика: Євген Шантир Слова: Євген Шантир. Виконує: Євген Шантир','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Осінь, я вітаю тебе знов,
Чуєш, як пульсує моя кров,
І життя по іншому іде,
Осінь, коли бачу я тебе.

Приспів:
Осінь, ти така ж, як і була,
Краща в світі, гарна й молода,
Осінь, це не ти прийшла, а я
Відшукав тебе серед життя.

Осінь в золотистому вбранні,
Ти принцеса долі у ці дні,
Як в Джоконди посмішка твоя,
Осінь, закохався в тебе я.

Приспів.

Осінь, всі вітри твої й дощі,
Це відвертість вища на Землі,
Хай буває сумно і мені,
Осінь, завжди вдячний я тобі.

Приспів.

Осінь, я вітаю тебе знов,
Незбагненна ніжність і любов
У твоїй красі живуть в віках,
Осінь, ти кохана на руках.

Приспів','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_250267'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_250267','Осінь, ти така ж, як і була!','Осінь, я вітаю тебе знов,
Чуєш, як пульсує моя кров,
І життя по іншому іде,
Осінь, коли бачу я тебе.

Приспів:
Осінь, ти така ж, як і була,
Краща в світі, гарна й молода,
Осінь, це не ти прийшла, а я
Відшукав тебе серед життя.

Осінь в золотистому вбранні,
Ти принцеса долі у ці дні,
Як в Джоконди посмішка твоя,
Осінь, закохався в тебе я.

Приспів.

Осінь, всі вітри твої й дощі,
Це відвертість вища на Землі,
Хай буває сумно і мені,
Осінь, завжди вдячний я тобі.

Приспів.

Осінь, я вітаю тебе знов,
Незбагненна ніжність і любов
У твоїй красі живуть в віках,
Осінь, ти кохана на руках.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2506192';
DELETE FROM song_versions WHERE song_id = 'pisniua_2506192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2506192';
DELETE FROM songs WHERE id = 'pisniua_2506192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2506192','Відповідь','Музика: Святослав Вакарчук Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Скільки ще холоду збудеться, станеться?..
Скільки ще виб''ється тих вікон?..
Скільки в нас змолоду об весну пораниться?..
Скільки ще виставлять тих ікон?..

Приспів:
Моя відповідь виткана зморшками на чолі,
Вартими тисячі слів!..
Вона вишита в пам''яті білими мальвами,
Кована із сліз матерів!..

Скільки раз вдосвіта проспіває горлиця?..
Скільки нам випаде теплих днів?..
Скільки в нас ясенів від свинцю поколеться?..
Скільки ще вирветься тих дубів?..

Приспів.

Скільки нас полетить мріями до Заходу?..
Хто із нас вирушить знов на Схід?..
Скільки раз зацвіте яблуня під хатою,
Поки ми перейдем зиму вбрід?..

Приспів.

Вона вишита в пам''яті білими мальвами,
Кована із сліз матерів!..
Кована із сліз матерів...','[''pisni.org.ua'', ''cat:ato'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2506192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2506192','Відповідь','Скільки ще холоду збудеться, станеться?..
Скільки ще виб''ється тих вікон?..
Скільки в нас змолоду об весну пораниться?..
Скільки ще виставлять тих ікон?..

Приспів:
Моя відповідь виткана зморшками на чолі,
Вартими тисячі слів!..
Вона вишита в пам''яті білими мальвами,
Кована із сліз матерів!..

Скільки раз вдосвіта проспіває горлиця?..
Скільки нам випаде теплих днів?..
Скільки в нас ясенів від свинцю поколеться?..
Скільки ще вирветься тих дубів?..

Приспів.

Скільки нас полетить мріями до Заходу?..
Хто із нас вирушить знов на Схід?..
Скільки раз зацвіте яблуня під хатою,
Поки ми перейдем зиму вбрід?..

Приспів.

Вона вишита в пам''яті білими мальвами,
Кована із сліз матерів!..
Кована із сліз матерів...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2506192_l1','pisniua_2506192','YouTube','https://www.youtube.com/watch?v=Vh9sBLXBZII','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2506192_l2','pisniua_2506192','YouTube','https://www.youtube.com/watch?v=XNdk1YcVLVE','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2509175';
DELETE FROM song_versions WHERE song_id = 'pisniua_2509175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2509175';
DELETE FROM songs WHERE id = 'pisniua_2509175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2509175','Пісня про пожежну небезпеку','Музика: Олена Мачайло Слова: Зоряна Лісевич','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Хто там бавиться з вогнем,
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
DELETE FROM song_links WHERE song_id = 'pisniua_25096';
DELETE FROM song_versions WHERE song_id = 'pisniua_25096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_25096';
DELETE FROM songs WHERE id = 'pisniua_25096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_25096','Весела світу новина нині','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'видавництво Отців Василіян (Львів 1998)',NULL,'Весела світу новина нині,
Христос родився в яслах на сіні,
Він Цар небесний, Бог необнятий,
Спочив на сіні поміж битляти.

До Нього світ весь вкрився тьмою,
Він світла радість приніс з собою.
До Нього - цар був пан над рабами,
Він всіх нарівні назвав братами.

За світлом зорі до стіп Дитяти
Спішім і ми днесь поклін віддати.
У жертві серця несім невинні
І мольби щирі оці дитинні:

"Милий Ісусе, о Божий Сину!
Глянь оком ласки на Україну;
Здійми з нас грішних вражі окови,
А серця жаром зігрій любови!"','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_25096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_25096','Весела світу новина нині','Весела світу новина нині,
Христос родився в яслах на сіні,
Він Цар небесний, Бог необнятий,
Спочив на сіні поміж битляти.

До Нього світ весь вкрився тьмою,
Він світла радість приніс з собою.
До Нього - цар був пан над рабами,
Він всіх нарівні назвав братами.

За світлом зорі до стіп Дитяти
Спішім і ми днесь поклін віддати.
У жертві серця несім невинні
І мольби щирі оці дитинні:

"Милий Ісусе, о Божий Сину!
Глянь оком ласки на Україну;
Здійми з нас грішних вражі окови,
А серця жаром зігрій любови!"');
DELETE FROM song_links WHERE song_id = 'pisniua_2507990';
DELETE FROM song_versions WHERE song_id = 'pisniua_2507990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2507990';
DELETE FROM songs WHERE id = 'pisniua_2507990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2507990','В обіймах','Музика: Тоні Браско, 2TONE Слова: Тоні Браско, 2TONE','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Для тебе жах перед всіма
Мене назвати мій,
Зі всіх почуттів ти
Найкраще даруєш біль...
Як ти переймалася за це,
А я взагалі за тобою плив
Попри шторм, навіть проти хвиль...
Зрозумій, я б забув,
Але не виходить...
В тебе - флірт, в мене - спирт,
Все як на долоні,
Навіть сплутати з кимсь
Тебе не виходить,
Я знов протираю сходи...

Приспів:
З ким би я не був, де би не блукав, |
Уявляв тебе і про тебе мріяв...     |
Поки ти була, я не цінував,         |
А тепер знайшов у чужих обіймах...  | (2)

Ні, знов все не так зрозумів,
Я все ж таки не зумів,
Ти з кожним разом все ближче,
Та на обличчі менше все місця...
Після висновок: я - не той...
Move улюблений для нас гойдав,
Розуму разово дай,
Прозой образливий рай...
Край мене, диво...
Край мене, криво...
Прав нерви, prіme тут мінливий...
Брайль би повірив, як ми любили...
Як ми любили!..

Приспів.','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2507990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2507990','В обіймах','Для тебе жах перед всіма
Мене назвати мій,
Зі всіх почуттів ти
Найкраще даруєш біль...
Як ти переймалася за це,
А я взагалі за тобою плив
Попри шторм, навіть проти хвиль...
Зрозумій, я б забув,
Але не виходить...
В тебе - флірт, в мене - спирт,
Все як на долоні,
Навіть сплутати з кимсь
Тебе не виходить,
Я знов протираю сходи...

Приспів:
З ким би я не був, де би не блукав, |
Уявляв тебе і про тебе мріяв...     |
Поки ти була, я не цінував,         |
А тепер знайшов у чужих обіймах...  | (2)

Ні, знов все не так зрозумів,
Я все ж таки не зумів,
Ти з кожним разом все ближче,
Та на обличчі менше все місця...
Після висновок: я - не той...
Move улюблений для нас гойдав,
Розуму разово дай,
Прозой образливий рай...
Край мене, диво...
Край мене, криво...
Прав нерви, prіme тут мінливий...
Брайль би повірив, як ми любили...
Як ми любили!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2507990_l1','pisniua_2507990','YouTube','https://www.youtube.com/watch?v=f4Vjr6A689w','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2507394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2507394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2507394';
DELETE FROM songs WHERE id = 'pisniua_2507394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2507394','Останній маяк','Музика: Роман Черенов Слова: Микола Кучерявий','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
А ти покажи, як палають зорі,      |
Коли погас останній маяк,          |
Навіть, коли світ ніби збожеволів, |
Просто напиши мені - ти як?        | (2)

Люди ніби зорі, всі палають,
Часом всі згорають від ревнощів,
Правду заміняючи зрадою,
Люди просто зникають в безвісті...
Не радію сонцю без ночі,
П''ючи благодать невимовну,
Але тільки та душа плаче,
Що у серці гріє з любов''ю...

Приспів.

Щабля, ще зігріє долоні
Хоч і в очах блискавиця,
Тільки та людина на волі,
Котрій рідне поле ще сниться!..
Хай всі ліхтарі позгасають,
Душа буде завжди світити,
Адже вхід до Божого Раю
Я тобі залишу відкритим!

Приспів.','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2507394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2507394','Останній маяк','Приспів:
А ти покажи, як палають зорі,      |
Коли погас останній маяк,          |
Навіть, коли світ ніби збожеволів, |
Просто напиши мені - ти як?        | (2)

Люди ніби зорі, всі палають,
Часом всі згорають від ревнощів,
Правду заміняючи зрадою,
Люди просто зникають в безвісті...
Не радію сонцю без ночі,
П''ючи благодать невимовну,
Але тільки та душа плаче,
Що у серці гріє з любов''ю...

Приспів.

Щабля, ще зігріє долоні
Хоч і в очах блискавиця,
Тільки та людина на волі,
Котрій рідне поле ще сниться!..
Хай всі ліхтарі позгасають,
Душа буде завжди світити,
Адже вхід до Божого Раю
Я тобі залишу відкритим!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2507394_l1','pisniua_2507394','YouTube','https://www.youtube.com/watch?v=pepNW9O_2wY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2507394_l2','pisniua_2507394','YouTube','https://www.youtube.com/watch?v=eqM-kQ478qw','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2508726';
DELETE FROM song_versions WHERE song_id = 'pisniua_2508726';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2508726';
DELETE FROM songs WHERE id = 'pisniua_2508726';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2508726','Жінка, що кохаю я','Музика: Павло Зібров Слова: Микола Щур. Виконує: Павло Зібров','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я кохану, як скарб, шукав
У безмежності цього світу.
Я так довго її чекав,
Мріяв з нею про вічне літо.
І на щастя у долі шанс
Той єдиний, що є від нині,
Про кохання палкий романс
Присвяти моїй єдиній!

Приспів:
Жінка, що кохаю я,
Неповторна й чарівна!
Та її очей краса -
Дивовижна й неземна!
Жінка, що кохаю я,
Найчарівніша вона!
І на все, на все життя
Назавжди-завжди моя!

Я коханій дарую своїй
Найгарнішу троянду ніжну,
Обіцяю я тільки їй,
Що кохатиму навіть грішну!
І на щастя у мене шанс
Той єдиний, що є від нині,
Про кохання палкий романс
Присвяти моїй єдиній!

Приспів. (2)

І на все життя
Назавжди-завжди моя!','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2508726'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2508726','Жінка, що кохаю я','Я кохану, як скарб, шукав
У безмежності цього світу.
Я так довго її чекав,
Мріяв з нею про вічне літо.
І на щастя у долі шанс
Той єдиний, що є від нині,
Про кохання палкий романс
Присвяти моїй єдиній!

Приспів:
Жінка, що кохаю я,
Неповторна й чарівна!
Та її очей краса -
Дивовижна й неземна!
Жінка, що кохаю я,
Найчарівніша вона!
І на все, на все життя
Назавжди-завжди моя!

Я коханій дарую своїй
Найгарнішу троянду ніжну,
Обіцяю я тільки їй,
Що кохатиму навіть грішну!
І на щастя у мене шанс
Той єдиний, що є від нині,
Про кохання палкий романс
Присвяти моїй єдиній!

Приспів. (2)

І на все життя
Назавжди-завжди моя!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2508726_l1','pisniua_2508726','YouTube','https://www.youtube.com/watch?v=w6ZitjASMAg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2507614';
DELETE FROM song_versions WHERE song_id = 'pisniua_2507614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2507614';
DELETE FROM songs WHERE id = 'pisniua_2507614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2507614','Колискова','Музика: Михайло Хома Слова: Михайло Хома','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Засинай у мене на плечі,
Відпочинь, до раю ще півнеба...
Місто як дитина спить вночі
Місто відібрало сон у тебе...
Всі безсонні ночі від весни
Злилися в одну пекельну змову...
Щоб не чути музику війни,
Брате, засинай під колискову...

Приспів:
Спи, рідний брате, серце в журбі...
Важко тримати сльози в собі...
Спи, наш Герою, міцно засни,
В моєму серці Ти назавжди!

Засинай і набирайся сил
Від краси, яку ти там побачиш.
Все, що хвилювало, відпусти,
Усміхнись, а небо хай заплаче...
Засинай у мене на плечі,
Залиши свій біль на полі бою,
І під колискову уночі,
Спи спокійно вічний сном, Герою!..

Приспів.

Колискова душу заколише...
Колискова серце розіб''є...
Там, де Ти, там вічна тиша,
Спокій та надія є!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:kolyskovi'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Колискові'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2507614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2507614','Колискова','Засинай у мене на плечі,
Відпочинь, до раю ще півнеба...
Місто як дитина спить вночі
Місто відібрало сон у тебе...
Всі безсонні ночі від весни
Злилися в одну пекельну змову...
Щоб не чути музику війни,
Брате, засинай під колискову...

Приспів:
Спи, рідний брате, серце в журбі...
Важко тримати сльози в собі...
Спи, наш Герою, міцно засни,
В моєму серці Ти назавжди!

Засинай і набирайся сил
Від краси, яку ти там побачиш.
Все, що хвилювало, відпусти,
Усміхнись, а небо хай заплаче...
Засинай у мене на плечі,
Залиши свій біль на полі бою,
І під колискову уночі,
Спи спокійно вічний сном, Герою!..

Приспів.

Колискова душу заколише...
Колискова серце розіб''є...
Там, де Ти, там вічна тиша,
Спокій та надія є!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2507614_l1','pisniua_2507614','YouTube','https://www.youtube.com/watch?v=SWwW08VfmF0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2506471';
DELETE FROM song_versions WHERE song_id = 'pisniua_2506471';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2506471';
DELETE FROM songs WHERE id = 'pisniua_2506471';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2506471','Подружка','Музика: Жанна Лтавська Слова: Жанна Лтавська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Летять роки, минає час,
І тисячі доріг між нами,
Та поміж телефонних фраз
Сіяють очі кришталями!
Ми нерозлучні, як завжди,
Ти, наче сестра, найрідніша!
І наша дружба назавжди!
Вона з роками все міцніша!

Приспів:
Подружка - квітка волі,
Кришталь тремтить від болі,
Старе кіно без титрів
Знайомих фраз...
Подружка - ніжна квітка,
Пливи, моя лебідка!
Кохай без тями,
Як в останній раз!

Ми зберігаємо в душі
Дорогоцінні таємниці,
Не змиють з пам''яті дощі
Перон холодний залізниці...
Моя подруга, ти знай,
Не зраджу дружбу я ніколи!
А буде сумно - прилітай,
В саду розквітнуть матіоли!

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2506471'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2506471','Подружка','Летять роки, минає час,
І тисячі доріг між нами,
Та поміж телефонних фраз
Сіяють очі кришталями!
Ми нерозлучні, як завжди,
Ти, наче сестра, найрідніша!
І наша дружба назавжди!
Вона з роками все міцніша!

Приспів:
Подружка - квітка волі,
Кришталь тремтить від болі,
Старе кіно без титрів
Знайомих фраз...
Подружка - ніжна квітка,
Пливи, моя лебідка!
Кохай без тями,
Як в останній раз!

Ми зберігаємо в душі
Дорогоцінні таємниці,
Не змиють з пам''яті дощі
Перон холодний залізниці...
Моя подруга, ти знай,
Не зраджу дружбу я ніколи!
А буде сумно - прилітай,
В саду розквітнуть матіоли!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2506471_l1','pisniua_2506471','YouTube','https://www.youtube.com/watch?v=i1ELlXWbSgA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2509563';
DELETE FROM song_versions WHERE song_id = 'pisniua_2509563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2509563';
DELETE FROM songs WHERE id = 'pisniua_2509563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2509563','Без тебе','Музика: Віктор Бронюк Слова: Віктор Бронюк. Виконує: Т.І.К. (Тік)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я знову згадав про тебе -
І ніби немає війни...
Ми бачим одне і те саме небо
Із різної сторони...
Ми прощалися, ти поїхала
Заплакана і сумна,
Нас під покровом зимової віхоли
Розлучила війна...

Приспів:
Без тебе... Без тебе
Мені не потрібно небо!..
Мені не потрібні зорі,
Що сяють вночі прозорі!..
Мені не потрібні ночі,
Побачити б твої очі,
Щоб потім у них втопитись!..
Я не можу тобою напитись,
Я надихатись хочу тобою
В думках за хвилину до бою...

Знову кружляють лелеки
Десь у бездонну вись,
Я розумію, що ти дуже далеко,
Але я тебе бачу скрізь!..
І в гарячі хвилини бою
Під гуркіт різкий автомата
Я повернуся, як тільки зможу,
Щоб скоріше тебе обійняти!..

Приспів.

За хвилину до бою...

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2509563'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2509563','Без тебе','Я знову згадав про тебе -
І ніби немає війни...
Ми бачим одне і те саме небо
Із різної сторони...
Ми прощалися, ти поїхала
Заплакана і сумна,
Нас під покровом зимової віхоли
Розлучила війна...

Приспів:
Без тебе... Без тебе
Мені не потрібно небо!..
Мені не потрібні зорі,
Що сяють вночі прозорі!..
Мені не потрібні ночі,
Побачити б твої очі,
Щоб потім у них втопитись!..
Я не можу тобою напитись,
Я надихатись хочу тобою
В думках за хвилину до бою...

Знову кружляють лелеки
Десь у бездонну вись,
Я розумію, що ти дуже далеко,
Але я тебе бачу скрізь!..
І в гарячі хвилини бою
Під гуркіт різкий автомата
Я повернуся, як тільки зможу,
Щоб скоріше тебе обійняти!..

Приспів.

За хвилину до бою...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2509563_l1','pisniua_2509563','YouTube','https://www.youtube.com/watch?v=cdSpMKCs3Tg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2511818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2511818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2511818';
DELETE FROM songs WHERE id = 'pisniua_2511818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2511818','Мамо','Музика: KRISTONKO Слова: KRISTONKO','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мамо, я приїду і знов
Буду, як маленька дитина,
Всю твою безмежну любов
Відчуваю, де б не поїду!

Дзвінок, як тепла злива,
Та чую голос я:
Чом довго не дзвонила
Ти, донечко моя?
Ти пробач, що я робила
У житті помилки,
Вже дорослі, та для тебе
Ми - ще й досі дітки.
Твої очі - це для мене,
Як від болю ліки,
Ти зі мною навіки!..

Приспів:
Мамо, я приїду і знов
Буду, як маленька дитина,
Всю твою безмежну любов
Відчуваю, де б не поїду!
Мамо, я приїду і знов
Поцілую змучені руки,
Дякую я їм за любов!
Дякую за всі твої муки!..

У серце б''є тривога,
Та я долаю страх,
Чекає знов дорога,
Знайти свій власний шлях.
В саду яблуневім
Наша родинна хатина,
Наче світло, як з дитинства
В пам''яті світлина.
Джерело, яке мене
Любов''ю напоїло,
Моя матінко, мила!

Приспів.

Твої руки, мам!.. | (3)','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2511818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2511818','Мамо','Мамо, я приїду і знов
Буду, як маленька дитина,
Всю твою безмежну любов
Відчуваю, де б не поїду!

Дзвінок, як тепла злива,
Та чую голос я:
Чом довго не дзвонила
Ти, донечко моя?
Ти пробач, що я робила
У житті помилки,
Вже дорослі, та для тебе
Ми - ще й досі дітки.
Твої очі - це для мене,
Як від болю ліки,
Ти зі мною навіки!..

Приспів:
Мамо, я приїду і знов
Буду, як маленька дитина,
Всю твою безмежну любов
Відчуваю, де б не поїду!
Мамо, я приїду і знов
Поцілую змучені руки,
Дякую я їм за любов!
Дякую за всі твої муки!..

У серце б''є тривога,
Та я долаю страх,
Чекає знов дорога,
Знайти свій власний шлях.
В саду яблуневім
Наша родинна хатина,
Наче світло, як з дитинства
В пам''яті світлина.
Джерело, яке мене
Любов''ю напоїло,
Моя матінко, мила!

Приспів.

Твої руки, мам!.. | (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2511818_l1','pisniua_2511818','YouTube','https://www.youtube.com/watch?v=dP6EqFfsKj8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2510515';
DELETE FROM song_versions WHERE song_id = 'pisniua_2510515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2510515';
DELETE FROM songs WHERE id = 'pisniua_2510515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2510515','Темна нічка','Музика: Олександр Пономарьов Слова: Олександр Пономарьов. Виконує: Олександр Пономарьов, Михайло Хома, Тарас Тополя','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Темна нічка любить Артилериста,
Він не спить і б''є лихих ворогів!..
Захищає рідне Українське місто,
Нічка заряджає, снаряд полетів!..
Нічка заряджає, снаряд полетів!..

Приспів:
А його чекає дівчина удома,
Мама у долонях теплий хліб несе...
А його чекають друзі і знайомі,
Чекають із подякою за все,
З великою подякою за все!..

Темна нічка любить наших соколів,
Що тримають небо і б''ють ворогів.
За Вкраїну вільну та за вільну долю
Нічка заряджає, заряд полетів!..
Нічка заряджає, заряд полетів!..

Приспів.

Темна нічка любить нашу піхоту,
Штурмова піхота жене ворогів!
З рідної землі жене крок за кроком,
Нічка заряджає, набій полетів!..
Нічка заряджає, набій полетів!..

Приспів.

А його чекає дівчина удома,
Мама у долонях теплий хліб несе...
А його чекають друзі і знайомі,
Чекають із подякою за все,
З безмежною подякою за все!..','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2510515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2510515','Темна нічка','Темна нічка любить Артилериста,
Він не спить і б''є лихих ворогів!..
Захищає рідне Українське місто,
Нічка заряджає, снаряд полетів!..
Нічка заряджає, снаряд полетів!..

Приспів:
А його чекає дівчина удома,
Мама у долонях теплий хліб несе...
А його чекають друзі і знайомі,
Чекають із подякою за все,
З великою подякою за все!..

Темна нічка любить наших соколів,
Що тримають небо і б''ють ворогів.
За Вкраїну вільну та за вільну долю
Нічка заряджає, заряд полетів!..
Нічка заряджає, заряд полетів!..

Приспів.

Темна нічка любить нашу піхоту,
Штурмова піхота жене ворогів!
З рідної землі жене крок за кроком,
Нічка заряджає, набій полетів!..
Нічка заряджає, набій полетів!..

Приспів.

А його чекає дівчина удома,
Мама у долонях теплий хліб несе...
А його чекають друзі і знайомі,
Чекають із подякою за все,
З безмежною подякою за все!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2510515_l1','pisniua_2510515','YouTube','https://www.youtube.com/watch?v=IprmaX2WKBw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2513697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2513697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2513697';
DELETE FROM songs WHERE id = 'pisniua_2513697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2513697','Різдво у рідному селі','Музика: Роман Щотчук Слова: Микола Василечко','uk','ukraine_1991',NULL,NULL,'авторське подання','Пісню виконують Наталія Фізьо та Наталія Ступак.','Сніги такі, що замело дороги,
Чи з Берем''ян, чи їхати з Дуліб,
Та ми прийшли до рідного порога,
Щоб скуштувати цей різдвяний хліб.
Із Бучача, Тернополя і Львова
Зібрались односельці до куті.
І коляда полинула святкова,
Щоб легше всім любилось у житті.

Приспів:
Святе Різдво у рідних Жнибородах
З''єднало знов родини за столом.
І хай там сніг чи сонячна погода —
Пастирка галасливо йде селом.

У день такий ще варто нам згадати
Про батьківщину прадідів своїх:
Надсяння край, прості лемківські хати,
І час, як звідти виселяли їх...
Із П''яткової люди й Одрехови,
З Радеви, а з Посади — цілий гурт,
Із Бушковичів їхали й Ганчови,
Зазнавши і наруги, і тортур...

Приспів.

В селі вже поріднились покоління
І виросло пагілля молоде,
І вже глибоко в цій землі коріння,
Широка крона у верхів''я йде.
Та не цурайтесь, люди, свого роду,
Традиції столітні бережіть,
І в Україні, в наших Жнибородах
У мирі та у злагоді живіть!

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2513697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2513697','Різдво у рідному селі','Сніги такі, що замело дороги,
Чи з Берем''ян, чи їхати з Дуліб,
Та ми прийшли до рідного порога,
Щоб скуштувати цей різдвяний хліб.
Із Бучача, Тернополя і Львова
Зібрались односельці до куті.
І коляда полинула святкова,
Щоб легше всім любилось у житті.

Приспів:
Святе Різдво у рідних Жнибородах
З''єднало знов родини за столом.
І хай там сніг чи сонячна погода —
Пастирка галасливо йде селом.

У день такий ще варто нам згадати
Про батьківщину прадідів своїх:
Надсяння край, прості лемківські хати,
І час, як звідти виселяли їх...
Із П''яткової люди й Одрехови,
З Радеви, а з Посади — цілий гурт,
Із Бушковичів їхали й Ганчови,
Зазнавши і наруги, і тортур...

Приспів.

В селі вже поріднились покоління
І виросло пагілля молоде,
І вже глибоко в цій землі коріння,
Широка крона у верхів''я йде.
Та не цурайтесь, люди, свого роду,
Традиції столітні бережіть,
І в Україні, в наших Жнибородах
У мирі та у злагоді живіть!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2511859';
DELETE FROM song_versions WHERE song_id = 'pisniua_2511859';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2511859';
DELETE FROM songs WHERE id = 'pisniua_2511859';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2511859','Козаки','Слова: Галина Лисенко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ясна зірочка вгорі піднімалася,
Прокидалася від сну вся земля,
У дорогу козаки та й збиралися,
Вже сіделечко лягло на коня!

Вирушали козаки на світаночку,
Шлях далекий і важкий пролягав,
Тільки вітер молодий їм насвистував,
Степ широкий козаків проводжав.

Полетіли козаки та й на кониках,
Під копитами земля аж горить!
Поспішали козаки - славні лицарі
Рідну землечку свою боронить!','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2511859'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2511859','Козаки','Ясна зірочка вгорі піднімалася,
Прокидалася від сну вся земля,
У дорогу козаки та й збиралися,
Вже сіделечко лягло на коня!

Вирушали козаки на світаночку,
Шлях далекий і важкий пролягав,
Тільки вітер молодий їм насвистував,
Степ широкий козаків проводжав.

Полетіли козаки та й на кониках,
Під копитами земля аж горить!
Поспішали козаки - славні лицарі
Рідну землечку свою боронить!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2511859_l1','pisniua_2511859','YouTube','https://www.youtube.com/watch?v=RGmAW26Qozk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2507165';
DELETE FROM song_versions WHERE song_id = 'pisniua_2507165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2507165';
DELETE FROM songs WHERE id = 'pisniua_2507165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2507165','Вір в ЗСУ!','Музика: VIP Ternopil Слова: VIP Ternopil','uk','ukraine_1991',NULL,NULL,'аудіозапис','*** - важко зрозуміти слово.','Приспів:
Вір в ЗСУ! Допомагай, яй-яй!
Нашу перемогу наближай, яй-яй!
В банку донат заряджай, яй-яй!
Бавовни насіння засівай!
Вір в ЗСУ! Допомагай, яй-яй!
Нашу перемогу наближай, яй-яй!
В банку донат заряджай, яй-яй!
Буде пік бавовни! Ай-яй-яй!
Я мрію прокидатися у світі,
Де "асвабадітєлі" не ходять по землі,
І я, повірте, дуже добре знаю,
Так хочеться не тільки лиш мені!
Перемоги світло не згасає!
Бо ЗСУ їх валять, як Боги!
Та я, повірте, дуже добре знаю,
Їм треба теж допомогти!
Приспів.
Колись була у мене гарна мрія:
Купить новесеньке Porsche.
Тепер я F-16 хочу,
Щоб в ЗСУ було усе!
Колись я дуже мріяв про Мальдіви,
Та погодьтесь, то є повна єрунда!
А ось погрітися на сонечку у Ялті,
Це не мрія, це моя мета!
Приспів.
Україна переможе! Бог нам допоможе!
А для наших ЗСУ ми зробимо, що зможем!
Сплету сітку маскувальну і відправлю нюдса,
Замість сумки Louіs Vuіtton я придбаю буса!
І не вставлю в попу я собі того імпланта,
А відправлю *** в сраку окупанта!
Mavіc, пікапи, тепловізор, HIMARS, ППО,
Не їм це треба! Це треба нам, щоб в них було!
Приспів.','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2507165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2507165','Вір в ЗСУ!','Приспів:
Вір в ЗСУ! Допомагай, яй-яй!
Нашу перемогу наближай, яй-яй!
В банку донат заряджай, яй-яй!
Бавовни насіння засівай!
Вір в ЗСУ! Допомагай, яй-яй!
Нашу перемогу наближай, яй-яй!
В банку донат заряджай, яй-яй!
Буде пік бавовни! Ай-яй-яй!
Я мрію прокидатися у світі,
Де "асвабадітєлі" не ходять по землі,
І я, повірте, дуже добре знаю,
Так хочеться не тільки лиш мені!
Перемоги світло не згасає!
Бо ЗСУ їх валять, як Боги!
Та я, повірте, дуже добре знаю,
Їм треба теж допомогти!
Приспів.
Колись була у мене гарна мрія:
Купить новесеньке Porsche.
Тепер я F-16 хочу,
Щоб в ЗСУ було усе!
Колись я дуже мріяв про Мальдіви,
Та погодьтесь, то є повна єрунда!
А ось погрітися на сонечку у Ялті,
Це не мрія, це моя мета!
Приспів.
Україна переможе! Бог нам допоможе!
А для наших ЗСУ ми зробимо, що зможем!
Сплету сітку маскувальну і відправлю нюдса,
Замість сумки Louіs Vuіtton я придбаю буса!
І не вставлю в попу я собі того імпланта,
А відправлю *** в сраку окупанта!
Mavіc, пікапи, тепловізор, HIMARS, ППО,
Не їм це треба! Це треба нам, щоб в них було!
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2507165_l1','pisniua_2507165','YouTube','https://www.youtube.com/watch?v=eP1Xii3cccc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2510767';
DELETE FROM song_versions WHERE song_id = 'pisniua_2510767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2510767';
DELETE FROM songs WHERE id = 'pisniua_2510767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2510767','Яким мене чар-зіллям напоїла',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Яким мене чар-зіллям напоїла?..
Яким вогнем ти серце полонила?..
Спокою не маю я, стала ти - любов моя,  |
З того часу вперше як побачив!..        | (2)

Друзі всі сміються наді мною,
Роз''єднати хочуть нас з тобою.
Ти повір моїм словам,
Тебе іншим не віддам,                   |
І нехай завжди так, мила, буде!         | (2)

Навіщо закохався? - Я не знаю,
У почуттях, мов полум''я, згораю.
Скажи віддана чому не мені, а іншому?.. |
Тільки з ним щаслива ти не будеш!..     | (2)

Яким мене чар-зіллям напоїла?..
Яким вогнем ти серце полонила?..
Спокою не маю я, стала ти - любов моя,  |
З того часу вперше як побачив!..        | (2)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2510767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2510767','Яким мене чар-зіллям напоїла','Яким мене чар-зіллям напоїла?..
Яким вогнем ти серце полонила?..
Спокою не маю я, стала ти - любов моя,  |
З того часу вперше як побачив!..        | (2)

Друзі всі сміються наді мною,
Роз''єднати хочуть нас з тобою.
Ти повір моїм словам,
Тебе іншим не віддам,                   |
І нехай завжди так, мила, буде!         | (2)

Навіщо закохався? - Я не знаю,
У почуттях, мов полум''я, згораю.
Скажи віддана чому не мені, а іншому?.. |
Тільки з ним щаслива ти не будеш!..     | (2)

Яким мене чар-зіллям напоїла?..
Яким вогнем ти серце полонила?..
Спокою не маю я, стала ти - любов моя,  |
З того часу вперше як побачив!..        | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2510767_l1','pisniua_2510767','YouTube','https://www.youtube.com/watch?v=SfiAhGWQAfU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2509495';
DELETE FROM song_versions WHERE song_id = 'pisniua_2509495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2509495';
DELETE FROM songs WHERE id = 'pisniua_2509495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2509495','Моя остання нервова клітина','Музика: Світлана Тарабарова Слова: Світлана Тарабарова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Де ти, моя остання нервова клітина?
Де ти? Під час тривоги тебе загубила.
Де ти? Згадай, як добре було нам з тобою!..
Де ти? Давай разом чекати ВІДБОЮ!

Емоційні гойдалки -
Рве частенько на шматки...
Емоційні гойдалки -
Рве частенько на шматки...

Вимкну п''ятий раз будильник,
Не можливо зранку встати,
Не в ресурсі, не в потоці,
Але треба працювати!
Тільки я за роботу -
Тут балістика зі сходу!..

Приспів.

Емоційні гойдалки -
Рве частенько на шматки...
Емоційні гойдалки -
Рве частенько на шматки...

Ввечері, як тут триматись,
Наче били цілий день...
Чай, вечеря, ліжко, мрії,
Ніби, наче я "ОК!"
Стомленою на подушку
Опустилась голова,
Але десь піднялись МІГи,
Та пішли вони всі "НА!"

Приспів.

Емоційні гойдалки -
Рве частенько на шматки...
Емоційні гойдалки -
Рве частенько на шматки...

Колись усядуться всі МІГи,
Мопеди не жужатимуть,
Згадаємо про мрії,
А на болотах жаби квакатимуть!
Вдома будуть рідні,
З часом біль наша вщухатиме,
Та житимемо в мирі -
Країна процвітатиме!..

Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Філософські пісні'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2509495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2509495','Моя остання нервова клітина','Приспів:
Де ти, моя остання нервова клітина?
Де ти? Під час тривоги тебе загубила.
Де ти? Згадай, як добре було нам з тобою!..
Де ти? Давай разом чекати ВІДБОЮ!

Емоційні гойдалки -
Рве частенько на шматки...
Емоційні гойдалки -
Рве частенько на шматки...

Вимкну п''ятий раз будильник,
Не можливо зранку встати,
Не в ресурсі, не в потоці,
Але треба працювати!
Тільки я за роботу -
Тут балістика зі сходу!..

Приспів.

Емоційні гойдалки -
Рве частенько на шматки...
Емоційні гойдалки -
Рве частенько на шматки...

Ввечері, як тут триматись,
Наче били цілий день...
Чай, вечеря, ліжко, мрії,
Ніби, наче я "ОК!"
Стомленою на подушку
Опустилась голова,
Але десь піднялись МІГи,
Та пішли вони всі "НА!"

Приспів.

Емоційні гойдалки -
Рве частенько на шматки...
Емоційні гойдалки -
Рве частенько на шматки...

Колись усядуться всі МІГи,
Мопеди не жужатимуть,
Згадаємо про мрії,
А на болотах жаби квакатимуть!
Вдома будуть рідні,
З часом біль наша вщухатиме,
Та житимемо в мирі -
Країна процвітатиме!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2509495_l1','pisniua_2509495','YouTube','https://www.youtube.com/watch?v=7uXlodx5R1c','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_251226';
DELETE FROM song_versions WHERE song_id = 'pisniua_251226';
DELETE FROM songs_fts WHERE song_id = 'pisniua_251226';
DELETE FROM songs WHERE id = 'pisniua_251226';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_251226','Ми вийшли в сад','Слова: А.Толстая, Анатолій Присяжнюк','uk','ukraine_1991',NULL,NULL,'А.Толстая. "Мы вышли в сад". Зі збірки «Ці невигадливі, зворушливі слова… (переклади з російської лірики ХІХ-ХХ ст.)» © А.А.Присяжнюк, переклад, 2007. A.Pris@i.ua','Из репертуара Юрія Морфессі','Ми вийшли в сад, із жалісливим шумом
Останній лист на липах тріпотав,
І вечір голубий, весь виповнений сумом,
В задумі пломенів, поволі догорав...

Жалілись ручаю плакучі верболози,
Від місяця леліла млосна струмина...
Ми мовчки йшли... і накипали сльози,
І ніжність у душі бриніла, мов струна.

Здавалось, лине ніч назустріч давній ласці,
Наполягає, молить - знов тебе знайти...
Та все пройшло, як в дивовижній казці,
Далека вже та ніч - і так далеко ти...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_251226'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_251226','Ми вийшли в сад','Ми вийшли в сад, із жалісливим шумом
Останній лист на липах тріпотав,
І вечір голубий, весь виповнений сумом,
В задумі пломенів, поволі догорав...

Жалілись ручаю плакучі верболози,
Від місяця леліла млосна струмина...
Ми мовчки йшли... і накипали сльози,
І ніжність у душі бриніла, мов струна.

Здавалось, лине ніч назустріч давній ласці,
Наполягає, молить - знов тебе знайти...
Та все пройшло, як в дивовижній казці,
Далека вже та ніч - і так далеко ти...');
DELETE FROM song_links WHERE song_id = 'pisniua_251212';
DELETE FROM song_versions WHERE song_id = 'pisniua_251212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_251212';
DELETE FROM songs WHERE id = 'pisniua_251212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_251212','Не свари мене, родима','Слова: А.Разорёнов, Анатолій Присяжнюк','uk','ukraine_1991',NULL,NULL,'А.Разорёнов. "Не брани меня, родная" (соч.?: 1840-1849). Зі збірки "Ці невигадливі, зворушливі слова… (переклади з російської лірики ХІХ-ХХ ст.)" © А.А.Присяжнюк, переклад, 2007. A.Pris@i.ua',NULL,'Не свари мене, родима,
Що кохаю так його.
Ремно, боляче, питима,
Без пригожого мого.

Я не знаю, що зі мною
Раптом сталося таке:
Серце крається журбою,
Б''ється в грудях гаряче.

Все воно в мені зомліле,
Вся горю, мов у вогні,
Все немиле й знавісніле,
Все страждаю день при дні.

Й не потрібні ні наряди,
Ні багатство золоте...
Буйні кучері і згляди
Ятрять серденько моє...

Зглянься-змилуйся, родима,
Перестань мене сварить.
Знати, любість невгасима -
Мушу я його любить!','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_251212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_251212','Не свари мене, родима','Не свари мене, родима,
Що кохаю так його.
Ремно, боляче, питима,
Без пригожого мого.

Я не знаю, що зі мною
Раптом сталося таке:
Серце крається журбою,
Б''ється в грудях гаряче.

Все воно в мені зомліле,
Вся горю, мов у вогні,
Все немиле й знавісніле,
Все страждаю день при дні.

Й не потрібні ні наряди,
Ні багатство золоте...
Буйні кучері і згляди
Ятрять серденько моє...

Зглянься-змилуйся, родима,
Перестань мене сварить.
Знати, любість невгасима -
Мушу я його любить!');
DELETE FROM song_links WHERE song_id = 'pisniua_2515096';
DELETE FROM song_versions WHERE song_id = 'pisniua_2515096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2515096';
DELETE FROM songs WHERE id = 'pisniua_2515096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2515096','Хартбіт','Музика: DOROFEEVA, Pavlo Bilousov Слова: DOROFEEVA, Misha Katsurin','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Знову тисне у скроні,
А я втопила біль в твоїй любові
І трошечки - в вині.
Світ не знає кордонів,
Як не знають меж твої долоні,
Як звучить твоя душа,
Тільки я про це дізналась
У твоїх сумних віршах,
Я знайшла...

Приспів:
Всі твої драми парусами
Несуть тебе в такі дорослі травми,
І результат кардіограми:
Ти закоханий, а я налякана!..
Feelіng your heartbeat!.. | (4)

But I don''t need
All thіs shіt!
But I don''t need!

Ми, немов у Вавилоні,
Спілкуємось з тобою на різних мовах,
Пробач - sorry,
Світ несеться по колу,
А я не розповім нікому ніколи,
Як звучить моя душа,
Ти би міг про це дізнатися,
Але ти знов обрав...

Приспів.

But I don''t need
All thіs shіt!
But I don''t need!

Приспів.

But I don''t need
All thіs shіt!
But I don''t need!','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2515096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2515096','Хартбіт','Знову тисне у скроні,
А я втопила біль в твоїй любові
І трошечки - в вині.
Світ не знає кордонів,
Як не знають меж твої долоні,
Як звучить твоя душа,
Тільки я про це дізналась
У твоїх сумних віршах,
Я знайшла...

Приспів:
Всі твої драми парусами
Несуть тебе в такі дорослі травми,
І результат кардіограми:
Ти закоханий, а я налякана!..
Feelіng your heartbeat!.. | (4)

But I don''t need
All thіs shіt!
But I don''t need!

Ми, немов у Вавилоні,
Спілкуємось з тобою на різних мовах,
Пробач - sorry,
Світ несеться по колу,
А я не розповім нікому ніколи,
Як звучить моя душа,
Ти би міг про це дізнатися,
Але ти знов обрав...

Приспів.

But I don''t need
All thіs shіt!
But I don''t need!

Приспів.

But I don''t need
All thіs shіt!
But I don''t need!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2515096_l1','pisniua_2515096','YouTube','https://www.youtube.com/watch?v=Lwdg7IiYKQg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2514420';
DELETE FROM song_versions WHERE song_id = 'pisniua_2514420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2514420';
DELETE FROM songs WHERE id = 'pisniua_2514420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2514420','Красиво','Музика: Віктор Винник Слова: Віктор Винник. Виконує: Віктор Винник, Мері','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Потонути у очах,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2514498';
DELETE FROM song_versions WHERE song_id = 'pisniua_2514498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2514498';
DELETE FROM songs WHERE id = 'pisniua_2514498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2514498','На Івана-Купала','Музика: Гурт Friends in Kharkiv Слова: Гурт Friends in Kharkiv. Виконує: Гурт Friends in Kharkiv','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'На Івана, на Купала!       | (4)

Ой, на Івана, на Купала
Покупалася ластівочка.
Ой, купалася, сушилося,
Чого дівчина журилася...

Ой, на Івана, на Купала
Цілу нічку не спала.
Цілу нічку не спала,
Та все зілля шукала.

На Івана, на Купала!       | (4)

Знайшла його з корінцем    |
Та й под білим камінцем... | (2)

Полоскала на броду,        |
Заправляла на меду,        |
Поставила до жару,         |
Кипи, корінь, по малу.     | (2)

На Івана, на Купала!       | (4)','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2514498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2514498','На Івана-Купала','На Івана, на Купала!       | (4)

Ой, на Івана, на Купала
Покупалася ластівочка.
Ой, купалася, сушилося,
Чого дівчина журилася...

Ой, на Івана, на Купала
Цілу нічку не спала.
Цілу нічку не спала,
Та все зілля шукала.

На Івана, на Купала!       | (4)

Знайшла його з корінцем    |
Та й под білим камінцем... | (2)

Полоскала на броду,        |
Заправляла на меду,        |
Поставила до жару,         |
Кипи, корінь, по малу.     | (2)

На Івана, на Купала!       | (4)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2514498_l1','pisniua_2514498','YouTube','https://www.youtube.com/watch?v=0asgKxmDA_o','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2515';
DELETE FROM song_versions WHERE song_id = 'pisniua_2515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2515';
DELETE FROM songs WHERE id = 'pisniua_2515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2515','Із полону','Музика: Едуард Драч Слова: Едуард Драч. Виконує: Василь Жданкін','uk','ukraine_1991',NULL,NULL,'аудіо','Підбір акордів: bohdanko@pisni.org.ua','Iз полону, з-пiд Iзмаї-   лу
Вели козаченьки
В яснi зорi, на Вкраї-  ну
Братцiв дорогеньких.
Отаман каже жартома:
"Чом не раді йти в Батьківщину?
Може, далі йти сил нема,
То повертай до Ізмаїлу."
А сто братців засмія-   лись,
Інші сто сказали:
"Ми жіночок-татаро-  чок
Й діточок лиша- ли.
Одпустіть - жалкувать не будем -
За дніпровськії плавні.
Навіть бачить вже забудем
Землі православні."
В отамана очі - хма-  ри,
Крівцею налиті:
"Ну йдіть, плодіть янича-  рів,
Бісовії ді- ти!"
І коли закурився шлях,
Запорожці коней вертали.
Зі сльозами на очах
Козаки своїх руба- ли.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:istorychni'', ''Бардівські пісні'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2515','Із полону','Iз полону, з-пiд Iзмаї-   лу
Вели козаченьки
В яснi зорi, на Вкраї-  ну
Братцiв дорогеньких.
Отаман каже жартома:
"Чом не раді йти в Батьківщину?
Може, далі йти сил нема,
То повертай до Ізмаїлу."
А сто братців засмія-   лись,
Інші сто сказали:
"Ми жіночок-татаро-  чок
Й діточок лиша- ли.
Одпустіть - жалкувать не будем -
За дніпровськії плавні.
Навіть бачить вже забудем
Землі православні."
В отамана очі - хма-  ри,
Крівцею налиті:
"Ну йдіть, плодіть янича-  рів,
Бісовії ді- ти!"
І коли закурився шлях,
Запорожці коней вертали.
Зі сльозами на очах
Козаки своїх руба- ли.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2515_l1','pisniua_2515','YouTube','https://www.youtube.com/watch?v=DC-p9RZc6pk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2515_l2','pisniua_2515','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2507653';
DELETE FROM song_versions WHERE song_id = 'pisniua_2507653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2507653';
DELETE FROM songs WHERE id = 'pisniua_2507653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2507653','Букети','Музика: YAKTAK Слова: YAKTAK','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Він тобі букети,                  |
А ти одна за одною сигарети,      |
Немов про тебе сумні ці треки,    |
Не віриш більше ти в хепі енди... | (2)

Не віриш більше в хепі енди -
Не відбудеться...
Думаєш ще трохи й все пройде,
Забудеться...
Люди кажуть, що рани лікує час.
Скільки часу вже пройшло,
Знаю, це не про нас..
Щоночі в телефоні,
Ніби замкнутий круг,
І про це все знає кожна
Із твоїх подруг,
Між вами кілометри, стерті номери,
А він знову тобі

Приспів.

Скільки слів залишено в голосових...
Скільки сліз пролито на вустах твоїх...
Кожну ніч й до ранку ти мені болиш...
Та не забуду всіх фраз,
Коли в плей-листах
Грають лиш пісні про нас...

Приспів.','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2507653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2507653','Букети','Приспів:
Він тобі букети,                  |
А ти одна за одною сигарети,      |
Немов про тебе сумні ці треки,    |
Не віриш більше ти в хепі енди... | (2)

Не віриш більше в хепі енди -
Не відбудеться...
Думаєш ще трохи й все пройде,
Забудеться...
Люди кажуть, що рани лікує час.
Скільки часу вже пройшло,
Знаю, це не про нас..
Щоночі в телефоні,
Ніби замкнутий круг,
І про це все знає кожна
Із твоїх подруг,
Між вами кілометри, стерті номери,
А він знову тобі

Приспів.

Скільки слів залишено в голосових...
Скільки сліз пролито на вустах твоїх...
Кожну ніч й до ранку ти мені болиш...
Та не забуду всіх фраз,
Коли в плей-листах
Грають лиш пісні про нас...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2507653_l1','pisniua_2507653','YouTube','https://www.youtube.com/watch?v=-EmwDCzKGZo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2516165';
DELETE FROM song_versions WHERE song_id = 'pisniua_2516165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2516165';
DELETE FROM songs WHERE id = 'pisniua_2516165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2516165','Камертон','Музика: Христина Соловій Слова: Христина Соловій. Виконує: Христина Соловій','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В нього свобода - перший закон,
Падали квіти на нього з вікон,
Блідо-рожеві мої пелюстки
Краяли серце йому на шматки...
Він через грати своїх заборон
Хоче до мене, до моїх вікон,
Кольором ночі і білим вином...
І камертон моїх долонь до його скронь...

Приспів:
І в душі немов востаннє
Ніжність забринить...
Він попросить безнадійно:
Зупинися, мить!
Кольором ночі і білим вином...
І камертон моїх долонь |
До його скронь...      | (2)

Може, я - та, кого він так шукав,
Про яку всім так уважно мовчав,
Кольором ночі і білим вином...
І камертон моїх долонь до його скронь...
На ту саму вулицю поміж вітрин
Прийде він знову, як завжди, один
Ставити пастки, а там - пелюстки,
Що краяли серце йому на шматки...

Приспів. (2)

Голос за кадром: "Стоп! Знято!"
Христина: "Ні... Я не можу грати таку роль."','[''pisni.org.ua'', ''cat:devoted'', ''cat:philosophic'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Філософські пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2516165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2516165','Камертон','В нього свобода - перший закон,
Падали квіти на нього з вікон,
Блідо-рожеві мої пелюстки
Краяли серце йому на шматки...
Він через грати своїх заборон
Хоче до мене, до моїх вікон,
Кольором ночі і білим вином...
І камертон моїх долонь до його скронь...

Приспів:
І в душі немов востаннє
Ніжність забринить...
Він попросить безнадійно:
Зупинися, мить!
Кольором ночі і білим вином...
І камертон моїх долонь |
До його скронь...      | (2)

Може, я - та, кого він так шукав,
Про яку всім так уважно мовчав,
Кольором ночі і білим вином...
І камертон моїх долонь до його скронь...
На ту саму вулицю поміж вітрин
Прийде він знову, як завжди, один
Ставити пастки, а там - пелюстки,
Що краяли серце йому на шматки...

Приспів. (2)

Голос за кадром: "Стоп! Знято!"
Христина: "Ні... Я не можу грати таку роль."');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2516165_l1','pisniua_2516165','YouTube','https://www.youtube.com/watch?v=OUwc26cujtU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2515716';
DELETE FROM song_versions WHERE song_id = 'pisniua_2515716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2515716';
DELETE FROM songs WHERE id = 'pisniua_2515716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2515716','Нескорені янголи неба','Музика: Ruslan Nota Слова: Ruslan Nota. Виконує: Ruslan Nota','uk','ukraine_1991',NULL,NULL,'авторське подання','Студія звукозапису та Аранжування Творче Об''єднання По Цимбалам Україна м. Житомир, т.+380635670003 (Viber).','Повітряні сили країни -
Атланти, що небо тримають моє,
Сміливі, нестримні, метою єдині,
І віра у правду їм сил додає!
Пілоти найкращі свою справу знають,
Працює відважно у нас ППО,
Щоб жоден ворожий літак чи ракета
Не сміли понищити місто й село!
Нескорені янголи неба
Блакитну боронять красу!
Повітряні сили країни -
Повітряний флот ЗСУ!

Приспів:
Небо! Небо тримаємо на крилах!
Серце! Серце у грудях палко б''ється!
Справжні воїни добра в повітряних силах!
Перемога на землі у небі кується!
Небо! Небо тримаємо на крилах!
Слава! Слава поміж хмар несеться!
Справжні воїни добра в повітряних силах!
Перемога на землі у небі кується!

Не тішся, ворожая зграя,
У серці немає страху!
Не падає, хто не літає!
Без втрат не буває шляху!
Не кожен вернувся із бою,
Життя за свободу віддав!..
Вічна слава героям!
І шана загиблим братам!
Нескорені янголи неба
Блакитну боронять красу!
Повітряні сили країни -
Повітряний флот ЗСУ!

Приспів. (2)','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2515716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2515716','Нескорені янголи неба','Повітряні сили країни -
Атланти, що небо тримають моє,
Сміливі, нестримні, метою єдині,
І віра у правду їм сил додає!
Пілоти найкращі свою справу знають,
Працює відважно у нас ППО,
Щоб жоден ворожий літак чи ракета
Не сміли понищити місто й село!
Нескорені янголи неба
Блакитну боронять красу!
Повітряні сили країни -
Повітряний флот ЗСУ!

Приспів:
Небо! Небо тримаємо на крилах!
Серце! Серце у грудях палко б''ється!
Справжні воїни добра в повітряних силах!
Перемога на землі у небі кується!
Небо! Небо тримаємо на крилах!
Слава! Слава поміж хмар несеться!
Справжні воїни добра в повітряних силах!
Перемога на землі у небі кується!

Не тішся, ворожая зграя,
У серці немає страху!
Не падає, хто не літає!
Без втрат не буває шляху!
Не кожен вернувся із бою,
Життя за свободу віддав!..
Вічна слава героям!
І шана загиблим братам!
Нескорені янголи неба
Блакитну боронять красу!
Повітряні сили країни -
Повітряний флот ЗСУ!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2515716_l1','pisniua_2515716','YouTube','https://www.youtube.com/watch?v=tJleFOc1fyA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2516379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2516379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2516379';
DELETE FROM songs WHERE id = 'pisniua_2516379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2516379','Помишляйте, чєловєци','Українська народна пісня. Виконує: Божичі','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','с. Богуслав Павлоградського р-ну Дніпропетровської обл.','Помишляєте, чєловєци,
Всякий час о смерті,
Скільки б не жив на цім світі - |
Треба буде вмерти.              | (2)

О багацтві і розкошах
Всєгда помишляєш,
Коли прийде смерть по душу -    |
Ти того не знаєш.               | (2)

Коли прийде смерть по душу -
Нельзя откупиться,
Махне косой, ступай за мной,    |
Польно суєтиться.               | (2)

Все багацтво, всі розкоші
Складаєш у суми,
Кому вони дістануться -         |
Нема в тебе думи.               | (2)

Все багацтво, всі розкоші,
Суєту оставиш,
Тільки гріхи, діла свої         |
Судії представиш.               | (2)

Як задзвонять й усі дзвони
По смертній годині,
Скажуть люди:                   |
Вічна пам''ять по моїй кончині.  | (2)

Всі сродники, приятелі
Тіло провожають,
А ангели-хранителі              |
Душу зустрічають.               | (2)

Всі сродники, приятелі
Додому вертались,
А ангели-хранителі              |
За душу сражались.              | (2)

Пішла душа по митарству
За гріхи страдати,
Не поможуть гріхам моїм         |
Ні отець, ні мати.              | (2)

Не поможуть гріхам моїм
Ні браття, ні сестри,
А поможе милостиня,             |
Що я подавала.                  | (2)

Лежить душа обнажена,
А тіло потліло,
Ведуть душу на Суд Божий        |
За всякоє діло.                 | (2)

Амінь.','[''pisni.org.ua'', ''cat:arkhiv-bozhychi'', ''Фольклорний архів анс. "Божичі"'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2516379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2516379','Помишляйте, чєловєци','Помишляєте, чєловєци,
Всякий час о смерті,
Скільки б не жив на цім світі - |
Треба буде вмерти.              | (2)

О багацтві і розкошах
Всєгда помишляєш,
Коли прийде смерть по душу -    |
Ти того не знаєш.               | (2)

Коли прийде смерть по душу -
Нельзя откупиться,
Махне косой, ступай за мной,    |
Польно суєтиться.               | (2)

Все багацтво, всі розкоші
Складаєш у суми,
Кому вони дістануться -         |
Нема в тебе думи.               | (2)

Все багацтво, всі розкоші,
Суєту оставиш,
Тільки гріхи, діла свої         |
Судії представиш.               | (2)

Як задзвонять й усі дзвони
По смертній годині,
Скажуть люди:                   |
Вічна пам''ять по моїй кончині.  | (2)

Всі сродники, приятелі
Тіло провожають,
А ангели-хранителі              |
Душу зустрічають.               | (2)

Всі сродники, приятелі
Додому вертались,
А ангели-хранителі              |
За душу сражались.              | (2)

Пішла душа по митарству
За гріхи страдати,
Не поможуть гріхам моїм         |
Ні отець, ні мати.              | (2)

Не поможуть гріхам моїм
Ні браття, ні сестри,
А поможе милостиня,             |
Що я подавала.                  | (2)

Лежить душа обнажена,
А тіло потліло,
Ведуть душу на Суд Божий        |
За всякоє діло.                 | (2)

Амінь.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2516379_l1','pisniua_2516379','YouTube','https://www.youtube.com/watch?v=UGVQf6Bn398','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2519091';
DELETE FROM song_versions WHERE song_id = 'pisniua_2519091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2519091';
DELETE FROM songs WHERE id = 'pisniua_2519091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2519091','Віталік','Музика: Ірина Федишин Слова: Ірина Федишин. Виконує: Ірина Федишин','uk','ukraine_1991',NULL,NULL,'аудіозапис','Авторка присвячує цю пісню коханому чоловікові з нагоди їхньої дати - 18 років подружнього життя!','Ти не спиш і мовчиш,
Тишина розрива
Моє серце на шматки...
В чому справа?..
В сяйві зір погляд твій
Так хвилює стан мій,
Десь під ковдрою
Любов заблукала...

Приспів:
В моєму серці тільки ти
Полонив усі думки!..
Тільки ти!
Віталік, тільки ти!..
В моєму серці тільки ти
Полонив усі думки!..
Тільки ти!
Віталік, тільки ти!..
Я і ти! Я і ти!.. | (4)

Ти не спиш, не мовчиш,
Ти цілуєш, не спішиш,
Серця стукіт,
Ніжні руки обіймають!..
Як для сонця вода,
Так для вітру гроза,
А для серця - любов,
Лиш любов твоя!

Приспів.

Вітер нас колише, |
Сонце зігріва,    |
А в моєму серці   |
Лиш любов твоя!   | (2)
В моєму серці тільки ти!..
Віталік, тільки ти!..
Тільки ти!..','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2519091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2519091','Віталік','Ти не спиш і мовчиш,
Тишина розрива
Моє серце на шматки...
В чому справа?..
В сяйві зір погляд твій
Так хвилює стан мій,
Десь під ковдрою
Любов заблукала...

Приспів:
В моєму серці тільки ти
Полонив усі думки!..
Тільки ти!
Віталік, тільки ти!..
В моєму серці тільки ти
Полонив усі думки!..
Тільки ти!
Віталік, тільки ти!..
Я і ти! Я і ти!.. | (4)

Ти не спиш, не мовчиш,
Ти цілуєш, не спішиш,
Серця стукіт,
Ніжні руки обіймають!..
Як для сонця вода,
Так для вітру гроза,
А для серця - любов,
Лиш любов твоя!

Приспів.

Вітер нас колише, |
Сонце зігріва,    |
А в моєму серці   |
Лиш любов твоя!   | (2)
В моєму серці тільки ти!..
Віталік, тільки ти!..
Тільки ти!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2519091_l1','pisniua_2519091','YouTube','https://www.youtube.com/watch?v=9S-PeUMLLNg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2517063';
DELETE FROM song_versions WHERE song_id = 'pisniua_2517063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2517063';
DELETE FROM songs WHERE id = 'pisniua_2517063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2517063','За нашою границею','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','с. Грузьке, Фастівський район, Київська область.','За нашою границею,
За нашою границею,
Родить жито з пшеницею.

Там Тетяна жито жала,
Там Тетяна жито жала,
В правій руці серп держа(ла).

В правій руці серп держала,
В правій руці серп держала,
На битий шлях погляда(ла).

Чи не їде Ваня з Дону,
Чи не їде Ваня з Дону,
На конику вороно(му)?

А він їде ще й моргає,
А він їде ще й моргає,
Нагайкою коня крає.','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2517063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2517063','За нашою границею','За нашою границею,
За нашою границею,
Родить жито з пшеницею.

Там Тетяна жито жала,
Там Тетяна жито жала,
В правій руці серп держа(ла).

В правій руці серп держала,
В правій руці серп держала,
На битий шлях погляда(ла).

Чи не їде Ваня з Дону,
Чи не їде Ваня з Дону,
На конику вороно(му)?

А він їде ще й моргає,
А він їде ще й моргає,
Нагайкою коня крає.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2517063_l1','pisniua_2517063','YouTube','https://www.youtube.com/watch?v=VaW3VDQBzOE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2519354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2519354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2519354';
DELETE FROM songs WHERE id = 'pisniua_2519354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2519354','Iшов козак iз походу','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','с. Карильське Покровського р-ну Чернігівської області. Пісню виконує Фольклорний ансамбль "Божичі" (альбом: Вік любиш - не налюбишся).','Ішов козак із походу
Під великую й негоду,
Чуть він не змерз. | (2)

Зайшов у кабак,
Скинув мундір ще й очки,
Порвав мундір на клочки,
Сам пошов плясать. | (2)

Наплясавсь, наскакавсь,
З красной дєвкой розпрощавсь.
Вийшов на крильцо,
Свиснув у кольцо -
Конь ворон бєжить.

Он на коніка садіцца,
Под ним конічок борзіцца,
Зельоним лугом,
Зельоним лугом!

Ой, лугом-лугом-лугом,
Седять дєвки вокругом.
Дєвок не знайшов,
До вдови зайшов.

Циловав-миловав,
Раз по плєчах уворвав,
Скричали: "Й ура!  | (2)

Ой йура-йура-йура!
Сочинилася бєда,
Невеликая,
Да й немалая.

Шо ми в цюю суботу
Покінчили всю роботу,
Рухнули в кабак.   | (2)

Чай пили, булки їли,
Кабачника обдурили,
Курили табак.      | (2)

Покуривши табаку,
Полежали на боку -
От вам і вся,
Скончилася".
‒ Покачайтеся!','[''pisni.org.ua'', ''cat:arkhiv-bozhychi'', ''Фольклорний архів анс. "Божичі"'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2519354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2519354','Iшов козак iз походу','Ішов козак із походу
Під великую й негоду,
Чуть він не змерз. | (2)

Зайшов у кабак,
Скинув мундір ще й очки,
Порвав мундір на клочки,
Сам пошов плясать. | (2)

Наплясавсь, наскакавсь,
З красной дєвкой розпрощавсь.
Вийшов на крильцо,
Свиснув у кольцо -
Конь ворон бєжить.

Он на коніка садіцца,
Под ним конічок борзіцца,
Зельоним лугом,
Зельоним лугом!

Ой, лугом-лугом-лугом,
Седять дєвки вокругом.
Дєвок не знайшов,
До вдови зайшов.

Циловав-миловав,
Раз по плєчах уворвав,
Скричали: "Й ура!  | (2)

Ой йура-йура-йура!
Сочинилася бєда,
Невеликая,
Да й немалая.

Шо ми в цюю суботу
Покінчили всю роботу,
Рухнули в кабак.   | (2)

Чай пили, булки їли,
Кабачника обдурили,
Курили табак.      | (2)

Покуривши табаку,
Полежали на боку -
От вам і вся,
Скончилася".
‒ Покачайтеся!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2519354_l1','pisniua_2519354','YouTube','https://www.youtube.com/watch?v=fIKfC5Da12A','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2520961';
DELETE FROM song_versions WHERE song_id = 'pisniua_2520961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2520961';
DELETE FROM songs WHERE id = 'pisniua_2520961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2520961','Уяви','Музика: Вадим Мичковський, І. Опаленик Слова: Вадим Мичковський, І. Опаленик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Завтра зійде наше сонце
Прямо у твоє віконце
Мріями світлими!
Мирно гуляють всі люди,
Дітей тримають за руки,
Доню, спи, і уяви!..

Приспів:
Уяви, що у світі не має війни
І лунають тільки добрі пісні,
І ракети не летять у дома!
Уяви, тепле сонце нам гріє серця,
Мрії здійсняться всі до кінця,
І хвилювання за завтра нема!..
Уяви, що додому повернуться всі,
Буде світло завжди у вікні,
І всі зорі хай сяють тобі!
Уяви, тебе чекає яскраве життя,
Десь народиться нове дитя,
Колискову послухай і спи!..
І уяви!..

Завтра настане світанок -
Це буде кращий твій ранок,
Віримо!.. Мріємо!..
Райдуга в небі малює
І нам з тобою дарує
Кольори! Ти уяви!..

Приспів.

Доню, спи...

Речитатив:
Тато! Тато, уяви!
Уяви, що дорослі стануть дітьми,
І повіримо ми всі в чудеса!
Що війна - то жахливий був сон,
Якого більше нема!

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2520961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2520961','Уяви','Завтра зійде наше сонце
Прямо у твоє віконце
Мріями світлими!
Мирно гуляють всі люди,
Дітей тримають за руки,
Доню, спи, і уяви!..

Приспів:
Уяви, що у світі не має війни
І лунають тільки добрі пісні,
І ракети не летять у дома!
Уяви, тепле сонце нам гріє серця,
Мрії здійсняться всі до кінця,
І хвилювання за завтра нема!..
Уяви, що додому повернуться всі,
Буде світло завжди у вікні,
І всі зорі хай сяють тобі!
Уяви, тебе чекає яскраве життя,
Десь народиться нове дитя,
Колискову послухай і спи!..
І уяви!..

Завтра настане світанок -
Це буде кращий твій ранок,
Віримо!.. Мріємо!..
Райдуга в небі малює
І нам з тобою дарує
Кольори! Ти уяви!..

Приспів.

Доню, спи...

Речитатив:
Тато! Тато, уяви!
Уяви, що дорослі стануть дітьми,
І повіримо ми всі в чудеса!
Що війна - то жахливий був сон,
Якого більше нема!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2520961_l1','pisniua_2520961','YouTube','https://www.youtube.com/watch?v=adBLfelgrjE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2515694';
DELETE FROM song_versions WHERE song_id = 'pisniua_2515694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2515694';
DELETE FROM songs WHERE id = 'pisniua_2515694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2515694','На порозі','Музика: Mariia Dovgauk Слова: Mariia Dovgauk','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
І я стою на твоєму порозі,
Бо тільки тут я піти не в змозі...
Витираєш мої солоні сльози,
А я стою на твоєму порозі...

Така була лише тобі,
Легка, як вітру подих навесні,
Вічі твої у вічі мої,
Погляд свій лишу лише тобі!..

Приспів.

І вже не жаль, мені не жаль
Відкрити тобі всю свою печаль...
Торкнись руки, і крізь роки
Таку ж любов до мене принеси!..

Приспів.','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2515694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2515694','На порозі','Приспів:
І я стою на твоєму порозі,
Бо тільки тут я піти не в змозі...
Витираєш мої солоні сльози,
А я стою на твоєму порозі...

Така була лише тобі,
Легка, як вітру подих навесні,
Вічі твої у вічі мої,
Погляд свій лишу лише тобі!..

Приспів.

І вже не жаль, мені не жаль
Відкрити тобі всю свою печаль...
Торкнись руки, і крізь роки
Таку ж любов до мене принеси!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2515694_l1','pisniua_2515694','YouTube','https://www.youtube.com/watch?v=1yeZf9BdclE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2520277';
DELETE FROM song_versions WHERE song_id = 'pisniua_2520277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2520277';
DELETE FROM songs WHERE id = 'pisniua_2520277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2520277','Я там','Музика: Володимир Самолюк (SKOFKA) Слова: Володимир Самолюк (SKOFKA)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Все частіше я не на виду,
Я там, де вірші мене не найдуть,
Я так стомився буть, як на вітрині,
Тому мене влаштовує тут навіть три ні!
Все частіше мене десь нема,
Я там, де в тиші гуляє туман,
Ніколи не сподобаюсь всім я,
Того мій вибір — це сім''я!
Не знайдеш мене, не шукай!
Я там, де вірять у мене завжди!
Я з тими, хто не махає "Прощай"
Після слів "Мене ти зажди!"
Я там, де друг мій за спиной
Буде на моїй стороні,
Я з тими, хто в біду буде зі мной
І буде пам''ятать більше,
Як сорок днів!

Приспів:
Я там, де раді бачить мене, |
Навіть, коли я нестерпний,  |
Як злий сусід!..            |
Я там, де раді бачить мене, |
Навіть, коли я приїхав      |
На тролейбусі!..            | (2)

Я з тими, хто зі мною запізнюється на потяг,
Я там, де й на мене лишають шматок на потім!
Я з тими, хто зі мною, як кажуть, на одній ноті,
Я там, звідки багато хто, на жаль, уже давно втік.
Я там, звідки чуєш ти мій голос на біті,
Я з тими, в кого боляче зробить немає на меті!
Я там, де поряд ті, з якими не лякає заметіль,
Я з тими, хто підтримає, навіть як м''яч не залетів!
Я не там, де за столом вдома розпускають руки,
І не з тими, хто безрукому буде казать "безрукий".
Я не там, де твій базар так поміняли брюки,
Що ти звеш мене не в гості тепер, а бронюєш букінг.
Я не там, де люди думають лише за свій навар,
Я не з тими в кого надпис тоді був тільки NO WAR!
Я не там, де в твому ліжку кожен день якась нова,
Не з тими, кого так і не навчила Друга Світова!
Я не там, де замість того щоб віддать, ти хочеш вкрасти,
Не з тими, хто, як і кинуть курить, не зміг кинуть "Басту".
Я не там, де хтось життя віддав, щоб не вбивали нас тут,
Поки ти критикував його за цей повільний наступ!
Я не там, де кожен сам за себе, разом — сила ми!
Я не з тими, хто привик не своїми силами,
Я не там, де п''яний за кермом ти сів і рушив,
Я не з тими, хто музон мій слухає, ніби в берушах.

Приспів.','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2520277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2520277','Я там','Все частіше я не на виду,
Я там, де вірші мене не найдуть,
Я так стомився буть, як на вітрині,
Тому мене влаштовує тут навіть три ні!
Все частіше мене десь нема,
Я там, де в тиші гуляє туман,
Ніколи не сподобаюсь всім я,
Того мій вибір — це сім''я!
Не знайдеш мене, не шукай!
Я там, де вірять у мене завжди!
Я з тими, хто не махає "Прощай"
Після слів "Мене ти зажди!"
Я там, де друг мій за спиной
Буде на моїй стороні,
Я з тими, хто в біду буде зі мной
І буде пам''ятать більше,
Як сорок днів!

Приспів:
Я там, де раді бачить мене, |
Навіть, коли я нестерпний,  |
Як злий сусід!..            |
Я там, де раді бачить мене, |
Навіть, коли я приїхав      |
На тролейбусі!..            | (2)

Я з тими, хто зі мною запізнюється на потяг,
Я там, де й на мене лишають шматок на потім!
Я з тими, хто зі мною, як кажуть, на одній ноті,
Я там, звідки багато хто, на жаль, уже давно втік.
Я там, звідки чуєш ти мій голос на біті,
Я з тими, в кого боляче зробить немає на меті!
Я там, де поряд ті, з якими не лякає заметіль,
Я з тими, хто підтримає, навіть як м''яч не залетів!
Я не там, де за столом вдома розпускають руки,
І не з тими, хто безрукому буде казать "безрукий".
Я не там, де твій базар так поміняли брюки,
Що ти звеш мене не в гості тепер, а бронюєш букінг.
Я не там, де люди думають лише за свій навар,
Я не з тими в кого надпис тоді був тільки NO WAR!
Я не там, де в твому ліжку кожен день якась нова,
Не з тими, кого так і не навчила Друга Світова!
Я не там, де замість того щоб віддать, ти хочеш вкрасти,
Не з тими, хто, як і кинуть курить, не зміг кинуть "Басту".
Я не там, де хтось життя віддав, щоб не вбивали нас тут,
Поки ти критикував його за цей повільний наступ!
Я не там, де кожен сам за себе, разом — сила ми!
Я не з тими, хто привик не своїми силами,
Я не там, де п''яний за кермом ти сів і рушив,
Я не з тими, хто музон мій слухає, ніби в берушах.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2520277_l1','pisniua_2520277','YouTube','https://www.youtube.com/watch?v=rTUNnMahSgM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2519292';
DELETE FROM song_versions WHERE song_id = 'pisniua_2519292';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2519292';
DELETE FROM songs WHERE id = 'pisniua_2519292';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2519292','Ой, за гаєм-гаєм, давай посідаєм','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','с. Єрки Миргородського р-ну Полтавської області. Пісню виконує Фольклорний ансамбль "Божичі" (альбом: Вік любиш - не налюбишся).','Ой, за гаєм-гаєм, давай посідаєм,
Та й будемо говорити, як жито косити.     | (2)

Як жито косити, треба й молотити,
Зерно будем лантухами додому носити.      | (2)

В середу косила, в четвер молотила,
В п''ятницю віяла, а в суботу міряла.      | (2)

А в неділю продала, й з хлопцями пропила.
Слава тобі, Господи, що й до діла довела. | (2)

Й до діла не я, й до роботи не я,
З хлопцями погулять це й охота моя.       | (2)','[''pisni.org.ua'', ''cat:arkhiv-bozhychi'', ''Фольклорний архів анс. "Божичі"'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2519292'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2519292','Ой, за гаєм-гаєм, давай посідаєм','Ой, за гаєм-гаєм, давай посідаєм,
Та й будемо говорити, як жито косити.     | (2)

Як жито косити, треба й молотити,
Зерно будем лантухами додому носити.      | (2)

В середу косила, в четвер молотила,
В п''ятницю віяла, а в суботу міряла.      | (2)

А в неділю продала, й з хлопцями пропила.
Слава тобі, Господи, що й до діла довела. | (2)

Й до діла не я, й до роботи не я,
З хлопцями погулять це й охота моя.       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2519292_l1','pisniua_2519292','YouTube','https://www.youtube.com/watch?v=ZVIe9cXd2Oo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2519318';
DELETE FROM song_versions WHERE song_id = 'pisniua_2519318';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2519318';
DELETE FROM songs WHERE id = 'pisniua_2519318';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2519318','Гречаники','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','с. Тетерівське Іванківського р-ну Київської області. Пісню виконує Фольклорний ансамбль "Божичі" (альбом: Вік любиш - не налюбишся).','З помийниці воду брала, |
Гречаники учиняла.      | (2)

Приспів:
Гоп, моï гречаники,
Гоп, моï білі!
Чогось моï гречаники
На скорині сіли!
Гоп, мої гречаники,
Гоп, мої ясні!
Чогось мої гречаники,
Сьогодні не вдачні!

Наïхали паничі -
Гречаники у печі!

Приспів.

Наïхали охфіцери -      |
Гречаники напечені!     | (2)

Приспів.

Наїхали капітани -      |
Гречаники похватали!    | (2)

Приспів.','[''pisni.org.ua'', ''cat:arkhiv-bozhychi'', ''Фольклорний архів анс. "Божичі"'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2519318'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2519318','Гречаники','З помийниці воду брала, |
Гречаники учиняла.      | (2)

Приспів:
Гоп, моï гречаники,
Гоп, моï білі!
Чогось моï гречаники
На скорині сіли!
Гоп, мої гречаники,
Гоп, мої ясні!
Чогось мої гречаники,
Сьогодні не вдачні!

Наïхали паничі -
Гречаники у печі!

Приспів.

Наïхали охфіцери -      |
Гречаники напечені!     | (2)

Приспів.

Наїхали капітани -      |
Гречаники похватали!    | (2)

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2519318_l1','pisniua_2519318','YouTube','https://www.youtube.com/watch?v=tu_VEyDzZL4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2517414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2517414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2517414';
DELETE FROM songs WHERE id = 'pisniua_2517414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2517414','Я на Жигулі','Музика: Дмитро Волканов Слова: Дмитро Волканов','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Я на Жигулі, а він на Мерседесі,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2521022';
DELETE FROM song_versions WHERE song_id = 'pisniua_2521022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2521022';
DELETE FROM songs WHERE id = 'pisniua_2521022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2521022','Без тебе','Музика: Максим Бородін Слова: Максим Бородін','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'А без тебе далеко до неба...
Мої крила у шафі лежать...
Я без тебе на місці стою,
Хоч до щастя біжав...
Не твоя провина, що розбив коліна,
Я щодуху біжав, я до тебе біжав!..
А дощі осінні, плачем що є сили...
А ми разом з тобою -
І зігрілась душа, і радіє душа!

Приспів:
А без тебе далеко до неба...
Мої крила у шафі лежать...
Я без тебе на місці стою,
Хоч до щастя біжав..
Ти - моя пожиттєва потреба,
А без тебе у серці бардак...
І без тебе цей світ не потрібен,
Хоч за просто так!

Не моя провина, що я одна-єдина
Серед різних світів у твоєму житті...
І я мчу до тебе, бо ми, як дві верби,
І тоненькі гілки заплелись навіки,
Бо над гладдю ріки...

Приспів.

Ти у моїх думках, ти цілодобово там...
Ти змінив усе, ти ніби тектонічний злам...
Та спалює вогонь всього одна свіча,
І цей вогонь в твоїх очах...

Приспів. (2)','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2521022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2521022','Без тебе','А без тебе далеко до неба...
Мої крила у шафі лежать...
Я без тебе на місці стою,
Хоч до щастя біжав...
Не твоя провина, що розбив коліна,
Я щодуху біжав, я до тебе біжав!..
А дощі осінні, плачем що є сили...
А ми разом з тобою -
І зігрілась душа, і радіє душа!

Приспів:
А без тебе далеко до неба...
Мої крила у шафі лежать...
Я без тебе на місці стою,
Хоч до щастя біжав..
Ти - моя пожиттєва потреба,
А без тебе у серці бардак...
І без тебе цей світ не потрібен,
Хоч за просто так!

Не моя провина, що я одна-єдина
Серед різних світів у твоєму житті...
І я мчу до тебе, бо ми, як дві верби,
І тоненькі гілки заплелись навіки,
Бо над гладдю ріки...

Приспів.

Ти у моїх думках, ти цілодобово там...
Ти змінив усе, ти ніби тектонічний злам...
Та спалює вогонь всього одна свіча,
І цей вогонь в твоїх очах...

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2521022_l1','pisniua_2521022','YouTube','https://www.youtube.com/watch?v=MzYdzxSiSGU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2521022_l2','pisniua_2521022','YouTube','https://www.youtube.com/watch?v=P1Ii2HNzCp8','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2516354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2516354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2516354';
DELETE FROM songs WHERE id = 'pisniua_2516354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2516354','Сидять люди за столами','Українська народна пісня. Виконує: Божичі','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','смт. Білолуцьк Старобільського р-ну Луганської обл.','Сидять люди за столами,
Матирь Божа поміж нами.      | (2)

Сидять люди за обідом,
А Спаситель стоїть з хлібом. | (2)

Помоляться люди Богу -
Душа стоїть коло столу.      | (2)

Помолились люди Богу -
Душа іде у дорогу.           | (2)

Як виходе й душа з хати,
А навпротів Божа Мати.       | (2)

Де ж ти, душечка, ходила,
Що ж ти в світі заробила?    | (2)

Я ходила й до родини,
Де справляють див''ятини,
Сорок день і годовини.

І спасиба й господині,
Та й усій її родині.         | (2)

І спасиба й господарю
За його Божую дару.          | (2)

Щоб його ї Божая дара
На престолі засіяла.         | (2)','[''pisni.org.ua'', ''cat:arkhiv-bozhychi'', ''Фольклорний архів анс. "Божичі"'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2516354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2516354','Сидять люди за столами','Сидять люди за столами,
Матирь Божа поміж нами.      | (2)

Сидять люди за обідом,
А Спаситель стоїть з хлібом. | (2)

Помоляться люди Богу -
Душа стоїть коло столу.      | (2)

Помолились люди Богу -
Душа іде у дорогу.           | (2)

Як виходе й душа з хати,
А навпротів Божа Мати.       | (2)

Де ж ти, душечка, ходила,
Що ж ти в світі заробила?    | (2)

Я ходила й до родини,
Де справляють див''ятини,
Сорок день і годовини.

І спасиба й господині,
Та й усій її родині.         | (2)

І спасиба й господарю
За його Божую дару.          | (2)

Щоб його ї Божая дара
На престолі засіяла.         | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2516354_l1','pisniua_2516354','YouTube','https://www.youtube.com/watch?v=aXcCc7PtW8A','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2524410';
DELETE FROM song_versions WHERE song_id = 'pisniua_2524410';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2524410';
DELETE FROM songs WHERE id = 'pisniua_2524410';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2524410','Час','Музика: Олександр Положинський Слова: Олександр Положинський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Прилетіти може будь-коли,
І ніхто не знає коли прийде час...
Та важливо, як ми прожили
Час, що був відведений для нас!..

Війни немає, жалю немає,
Гідності теж - як війни і жалю,
А я знемагаю, свій біль заливаю,
Та скільки б не лив, не факт,
Що заллю!..
Зерно - від полови, скажіть мені,
Хто ви, що вклали у груди вам
Замість сердець?..
Вже стільки прекрасних раптово погасли,
Коли всіх не стане - вам точно кінець!
А ваші омани б''ють у барабани,
Вам ніби здається, що смерті нема,
Але вона косить, їй завжди не досить,
Їй подруга вірна - ця клята війна.
І скільки б не вірив, що вибухи-вирви -
Це все нереальне, це просто кіно,
Та очі розкриті наступної миті,
Ти вже усвідомиш, що ось - і воно!..

Приспів.

Комусь у салоні стотисячні коні,
А хтось - по копійці на древні корчі,
Знайшов причину втекти з Батьківщини,
То тихо сховайся і просто мовчи.
Не лий свою воду на вражу догоду,
Не треба ні "хоч", ні "але", ні "якби".
В незданому тесті ні сили, ні честі,
Та все ж і не буде такої ганьби.
Сталеві лави стоять зухвало,
У них запалу ще досить є!
Однак переможем лише, коли кожен
Стане за наше, як за своє!
І буде чудово, якщо випадково
Знайдеться хист доєднатись до тих,
Хто наші - найкращі, тих, що нізащо
Не зійдуть зі шляху Новітніх святих!..

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2524410'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2524410','Час','Приспів:
Прилетіти може будь-коли,
І ніхто не знає коли прийде час...
Та важливо, як ми прожили
Час, що був відведений для нас!..

Війни немає, жалю немає,
Гідності теж - як війни і жалю,
А я знемагаю, свій біль заливаю,
Та скільки б не лив, не факт,
Що заллю!..
Зерно - від полови, скажіть мені,
Хто ви, що вклали у груди вам
Замість сердець?..
Вже стільки прекрасних раптово погасли,
Коли всіх не стане - вам точно кінець!
А ваші омани б''ють у барабани,
Вам ніби здається, що смерті нема,
Але вона косить, їй завжди не досить,
Їй подруга вірна - ця клята війна.
І скільки б не вірив, що вибухи-вирви -
Це все нереальне, це просто кіно,
Та очі розкриті наступної миті,
Ти вже усвідомиш, що ось - і воно!..

Приспів.

Комусь у салоні стотисячні коні,
А хтось - по копійці на древні корчі,
Знайшов причину втекти з Батьківщини,
То тихо сховайся і просто мовчи.
Не лий свою воду на вражу догоду,
Не треба ні "хоч", ні "але", ні "якби".
В незданому тесті ні сили, ні честі,
Та все ж і не буде такої ганьби.
Сталеві лави стоять зухвало,
У них запалу ще досить є!
Однак переможем лише, коли кожен
Стане за наше, як за своє!
І буде чудово, якщо випадково
Знайдеться хист доєднатись до тих,
Хто наші - найкращі, тих, що нізащо
Не зійдуть зі шляху Новітніх святих!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2524410_l1','pisniua_2524410','YouTube','https://www.youtube.com/watch?v=wZNt8ktrgc8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2521395';
DELETE FROM song_versions WHERE song_id = 'pisniua_2521395';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2521395';
DELETE FROM songs WHERE id = 'pisniua_2521395';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2521395','Купальська ніч','Музика: Лариса Вишинська Слова: Ярослав Борута. Виконує: Лебеді кохання','uk','ukraine_before_1917',NULL,NULL,'авторське подання',NULL,'В дитинстві я чула легенди про квітку,
Що раз спалахне лиш на мить,
Світань на Купала та квітка улітку
Вогнем серед ночі горить!..
Чарівний вогонь той нелегко зустріти,
Бо шлях до удач непростий.
У серці людському зростають ті квіти,
Від щастя то ключ золотий!

Приспів:
А купальська ніч, а купальська ніч
Нам дарує на щастя надію
То не вогники зір і не полум''я свіч
То вогонь чарівний серце гріє,
А купальська ніч, а купальська ніч
Розцвітає у душах любов''ю!
Ти повір лише, — і ця дивна ніч
Нам поможе зустрітись з тобою!

У ніч на Івана, у ніч на Купала,
В ту ніч, коли чари не сплять,
Ти ключик від щастя чарівний шукала,
Що вміє серця відкривать!
А ніч та купальська манила і звала
Очей твоїх дивним вогнем,
Можливо, не квітку — тебе я шукала,
Ти став мого щастя ключем!

Приспів. (3)

На Івана, в ніч на Купала,
На Купала папороть цвіте!
На Івана, в ніч на Купала,
На Купала папороть цвіте!','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2521395'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2521395','Купальська ніч','В дитинстві я чула легенди про квітку,
Що раз спалахне лиш на мить,
Світань на Купала та квітка улітку
Вогнем серед ночі горить!..
Чарівний вогонь той нелегко зустріти,
Бо шлях до удач непростий.
У серці людському зростають ті квіти,
Від щастя то ключ золотий!

Приспів:
А купальська ніч, а купальська ніч
Нам дарує на щастя надію
То не вогники зір і не полум''я свіч
То вогонь чарівний серце гріє,
А купальська ніч, а купальська ніч
Розцвітає у душах любов''ю!
Ти повір лише, — і ця дивна ніч
Нам поможе зустрітись з тобою!

У ніч на Івана, у ніч на Купала,
В ту ніч, коли чари не сплять,
Ти ключик від щастя чарівний шукала,
Що вміє серця відкривать!
А ніч та купальська манила і звала
Очей твоїх дивним вогнем,
Можливо, не квітку — тебе я шукала,
Ти став мого щастя ключем!

Приспів. (3)

На Івана, в ніч на Купала,
На Купала папороть цвіте!
На Івана, в ніч на Купала,
На Купала папороть цвіте!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2521395_l1','pisniua_2521395','YouTube','https://www.youtube.com/watch?v=My8vsJmA_MQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2524869';
DELETE FROM song_versions WHERE song_id = 'pisniua_2524869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2524869';
DELETE FROM songs WHERE id = 'pisniua_2524869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2524869','Я тебе ненавиджу, війна!..','Музика: Олександр Злотник Слова: Степан Галябарда','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я сьогодні знову не засну
І боюсь, що не засну ніколи...
Кожен день я бачу цю війну:
Як вбивають, як руйнують школи.
Вже мовчать розстріляні серця
Тих дітей, які лиш розквітали,
І навіщо війна потрібна ця?..
І кому ці діти заважали?..

Приспів:
Я тебе ненавиджу, війна!..
Я не можу вже спокійно спати...
І у чому наша тут вина,
Що вам треба у дітей стріляти?..
Я прошу, спиніте цю війну!..
Я не можу бачити могили!..
Хто поверне посмішку ясну  |
Цій дитині, що її убили?.. | (2)

Я горджуся братиком своїм,
Що геройськи на війні загинув,
Врятував мене і мій рідний дім,
І поліг за волю України!
І навіщо знову ллється кров?..
І чому так рано гинуть діти?..
Боже, дай їм розум і любов,
Зупинися, зупинися, світе!

Приспів. (2)','[''pisni.org.ua'', ''cat:ato'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2524869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2524869','Я тебе ненавиджу, війна!..','Я сьогодні знову не засну
І боюсь, що не засну ніколи...
Кожен день я бачу цю війну:
Як вбивають, як руйнують школи.
Вже мовчать розстріляні серця
Тих дітей, які лиш розквітали,
І навіщо війна потрібна ця?..
І кому ці діти заважали?..

Приспів:
Я тебе ненавиджу, війна!..
Я не можу вже спокійно спати...
І у чому наша тут вина,
Що вам треба у дітей стріляти?..
Я прошу, спиніте цю війну!..
Я не можу бачити могили!..
Хто поверне посмішку ясну  |
Цій дитині, що її убили?.. | (2)

Я горджуся братиком своїм,
Що геройськи на війні загинув,
Врятував мене і мій рідний дім,
І поліг за волю України!
І навіщо знову ллється кров?..
І чому так рано гинуть діти?..
Боже, дай їм розум і любов,
Зупинися, зупинися, світе!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2524869_l1','pisniua_2524869','YouTube','https://www.youtube.com/watch?v=nTSU91J6qr0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2522';
DELETE FROM song_versions WHERE song_id = 'pisniua_2522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2522';
DELETE FROM songs WHERE id = 'pisniua_2522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2522','Їду собі, та й думаю','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісневир. Молодіжний співаник. Львів 2001',NULL,'Їду собі та й думаю,
Що бай файну любку маю.
Ци до неї відказати?  Гейя-гойя!      |
Ци до неї лист писати?             | (2)

Як я стану лист писати,
Буде доля ня чекати.
Йой, ти коню мій воронний, гейя-гойя, |
Понеси мя до милої.                   | (2)

Їду собі, та й думаю,
Що бай файну любку маю.
Ци до неї відказати гейя-гойя,        |
Ци до неї лист писати.                | (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2522','Їду собі, та й думаю','Їду собі та й думаю,
Що бай файну любку маю.
Ци до неї відказати?  Гейя-гойя!      |
Ци до неї лист писати?             | (2)

Як я стану лист писати,
Буде доля ня чекати.
Йой, ти коню мій воронний, гейя-гойя, |
Понеси мя до милої.                   | (2)

Їду собі, та й думаю,
Що бай файну любку маю.
Ци до неї відказати гейя-гойя,        |
Ци до неї лист писати.                | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2522_l1','pisniua_2522','YouTube','https://www.youtube.com/watch?v=x-ysg9Tx_ZQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2526596';
DELETE FROM song_versions WHERE song_id = 'pisniua_2526596';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2526596';
DELETE FROM songs WHERE id = 'pisniua_2526596';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2526596','А що буде?','Музика: Anton Chilibi Слова: Альона Савраненко (alyona alyona), Ivan Klymenko','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
А що буде, коли нас не стане?.. |
Проростем над озером            |
Вербою чи каштаном...           |
А що буде, коли нас не стане?.. |
Хтось лишиться каменем,         |
Хтось, як сніг, розтане...      | (2)

А що буде? А що буде,
Коли нас не стане?..
Чи на одрі затанцює совість
Свій останній танець?
Чи пробачать? Чи забудуть?
Чи травою поросте?
Кажуть, складно в світі жити,
А у смерті все просте.
Чи добром твої дороги всі
Встелені? Встелені?
Чиє хрест? Чи і душі нема
В пелені? В пелені!
Чи залишиться слід по тобі
В серденьку? В пам''яті?
Що залишиш по собі?
Чи пиріг? Чи батіг?

Приспів.

Нам здається, ми вічні.
Нам здається, Новий рік
Завжди буде в січні.
Нам здається, можна
Відкладати на завтра
І казати вголос:
Пробачте, не варто.
Нам здається, що раз в рік
До Бога - то норма,
І здається, зміст
Не так треба, як форма.
Нам здається так,
Що аж ніччю не спиться,
А коли здається,
То треба хреститься.

Приспів.','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2526596'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2526596','А що буде?','Приспів:
А що буде, коли нас не стане?.. |
Проростем над озером            |
Вербою чи каштаном...           |
А що буде, коли нас не стане?.. |
Хтось лишиться каменем,         |
Хтось, як сніг, розтане...      | (2)

А що буде? А що буде,
Коли нас не стане?..
Чи на одрі затанцює совість
Свій останній танець?
Чи пробачать? Чи забудуть?
Чи травою поросте?
Кажуть, складно в світі жити,
А у смерті все просте.
Чи добром твої дороги всі
Встелені? Встелені?
Чиє хрест? Чи і душі нема
В пелені? В пелені!
Чи залишиться слід по тобі
В серденьку? В пам''яті?
Що залишиш по собі?
Чи пиріг? Чи батіг?

Приспів.

Нам здається, ми вічні.
Нам здається, Новий рік
Завжди буде в січні.
Нам здається, можна
Відкладати на завтра
І казати вголос:
Пробачте, не варто.
Нам здається, що раз в рік
До Бога - то норма,
І здається, зміст
Не так треба, як форма.
Нам здається так,
Що аж ніччю не спиться,
А коли здається,
То треба хреститься.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2526596_l1','pisniua_2526596','YouTube','https://www.youtube.com/watch?v=HWGf5ikPtlM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2526596_l2','pisniua_2526596','YouTube','https://www.youtube.com/watch?v=X39SCrpyKy8','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2524010';
DELETE FROM song_versions WHERE song_id = 'pisniua_2524010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2524010';
DELETE FROM songs WHERE id = 'pisniua_2524010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2524010','Дощик, дощик, кап-кап-кап','Музика: Ольга Маєвська Слова: Ольга Маєвська. Виконує: Ольга Маєвська','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Дощик, дощик, кап-кап-кап,
Тихо стукає в наш дах.
Парасольку ми візьмемо
І гулять підемо!

Приспів:
Кап-кап-кап, кап-кап-кап-кап,
Дощик стукає: "Привіт!"
Кап-кап-кап, кап-кап-кап-кап,
Ми крокуєм слід у слід!
Кап-кап! Кап-кап!
Кап-кап-кап-кап-кап-кап!

Дощик, дощик, кап-кап-кап,
Тихо стукає в наш дах.
Ми вдягнули всі плащі,
Не злякають нас дощі!

Приспів.

Дощик, дощик, кап-кап-кап,
Тихо стукає в наш дах.
Чобітки взуваємо -
В калюжах пострибаємо!

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2524010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2524010','Дощик, дощик, кап-кап-кап','Дощик, дощик, кап-кап-кап,
Тихо стукає в наш дах.
Парасольку ми візьмемо
І гулять підемо!

Приспів:
Кап-кап-кап, кап-кап-кап-кап,
Дощик стукає: "Привіт!"
Кап-кап-кап, кап-кап-кап-кап,
Ми крокуєм слід у слід!
Кап-кап! Кап-кап!
Кап-кап-кап-кап-кап-кап!

Дощик, дощик, кап-кап-кап,
Тихо стукає в наш дах.
Ми вдягнули всі плащі,
Не злякають нас дощі!

Приспів.

Дощик, дощик, кап-кап-кап,
Тихо стукає в наш дах.
Чобітки взуваємо -
В калюжах пострибаємо!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2524010_l1','pisniua_2524010','YouTube','https://www.youtube.com/watch?v=inPG5OQ1V4c','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2527175';
DELETE FROM song_versions WHERE song_id = 'pisniua_2527175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2527175';
DELETE FROM songs WHERE id = 'pisniua_2527175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2527175','Друзі Нерозлийвода','Музика: Олена Мачайло Слова: Зоряна Лісевич','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ми з тобою - добрі друзі!
Дружно бавимось на лузі,
Разом їздимо трамваєм,
Міцно руки потискаєм.
Ми пісні співаєм хором,
І пірнаємо у море,
І читаєм, і малюєм,
Разом весело танцюєм!

Приспів:
Друзі! Друзі! Вірні друзі!
Друзі - нерозлийвода!
Не розлучать нас незгоди,
Ані лихо, ні біда!
Ти - за мене, я - за тебе!
Як проблема допече,
Одне одному, як треба,
Підставляємо плече!

Ми з тобою - добрі друзі!
П''єм в кафе обоє смузі,
Разом гойдалку фарбуєм
І разом подорожуєм!
В мене - ложка, в тебе - вилка,
І одна на двох тарілка.
Ділим сум по половині,
Краплю сонця по краплині!

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2527175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2527175','Друзі Нерозлийвода','Ми з тобою - добрі друзі!
Дружно бавимось на лузі,
Разом їздимо трамваєм,
Міцно руки потискаєм.
Ми пісні співаєм хором,
І пірнаємо у море,
І читаєм, і малюєм,
Разом весело танцюєм!

Приспів:
Друзі! Друзі! Вірні друзі!
Друзі - нерозлийвода!
Не розлучать нас незгоди,
Ані лихо, ні біда!
Ти - за мене, я - за тебе!
Як проблема допече,
Одне одному, як треба,
Підставляємо плече!

Ми з тобою - добрі друзі!
П''єм в кафе обоє смузі,
Разом гойдалку фарбуєм
І разом подорожуєм!
В мене - ложка, в тебе - вилка,
І одна на двох тарілка.
Ділим сум по половині,
Краплю сонця по краплині!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2527175_l1','pisniua_2527175','YouTube','https://www.youtube.com/watch?v=ARzhanWgc2M','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2523879';
DELETE FROM song_versions WHERE song_id = 'pisniua_2523879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2523879';
DELETE FROM songs WHERE id = 'pisniua_2523879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2523879','Ендорфін','Музика: YAKTAK, Stas Chornyi, Volodymyr Beichak Слова: YAKTAK, Kateryna Medvedieva, Khrystyna Gopey','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Ти в моїй голові вже так давно засіла,
Бо є щось особливе в тобі!
Ти в моїй голові - і рівень ендорфіну
Росте в твоїх обіймах завжди!..

Сів заряд, і екран погас,
Місто спить у цей темний час,
Навіть смішно, вертаюсь пішки
Цього тижня вже котрий раз...
Не зловити таксі ніяк,
На одинці думки і я,
В кожній думці, в кожній демці
Всюди бачу твоє ім''я!..
Твою посмішку на вулицях зустріну,
Відчуваю я залежність
На твій ніжний сміх,
І зашкалює мій рівень ендорфіну
Вище-вище всіх дахів!..

Приспів.

Бо з тобою мої проблеми
Завжди відходять на другий план,
Мою кожну моральну втому
Ти приведеш у нормальний стан.
Лікуєш душу, мов панацея,
І, коли поруч, ти мов пластир
Моїх ран!.. Тобі
На тілі напишу про любов,
Під будинком сотні розмов.
Описати всі думки
Не вистачить мені
Всіх на світі мов!..

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2523879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2523879','Ендорфін','Приспів:
Ти в моїй голові вже так давно засіла,
Бо є щось особливе в тобі!
Ти в моїй голові - і рівень ендорфіну
Росте в твоїх обіймах завжди!..

Сів заряд, і екран погас,
Місто спить у цей темний час,
Навіть смішно, вертаюсь пішки
Цього тижня вже котрий раз...
Не зловити таксі ніяк,
На одинці думки і я,
В кожній думці, в кожній демці
Всюди бачу твоє ім''я!..
Твою посмішку на вулицях зустріну,
Відчуваю я залежність
На твій ніжний сміх,
І зашкалює мій рівень ендорфіну
Вище-вище всіх дахів!..

Приспів.

Бо з тобою мої проблеми
Завжди відходять на другий план,
Мою кожну моральну втому
Ти приведеш у нормальний стан.
Лікуєш душу, мов панацея,
І, коли поруч, ти мов пластир
Моїх ран!.. Тобі
На тілі напишу про любов,
Під будинком сотні розмов.
Описати всі думки
Не вистачить мені
Всіх на світі мов!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2523879_l1','pisniua_2523879','YouTube','https://www.youtube.com/watch?v=HeS2D1eTKkg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2525212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2525212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2525212';
DELETE FROM songs WHERE id = 'pisniua_2525212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2525212','Вдома','Музика: Максим Сиволап, Тарас Тополя Слова: Тарас Тополя','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Розберіть мене на меми, хто в темі,
Коли спогади беруть владу в голові.
Я стаю такий не схожий на себе,
Як дитина,
Що під ліжком знайшла скарби.
Привіт, привіт!
О скільки ж нас?
Нас, приїжджих в інше місце й час,
Та тягне так і сняться сни
Про найкраще місце на землі!..

Приспів:
Вдома небо синє-синє!..
Вдома в небі воля дихає!..
Вдома думи ясні-ясні,
Свої, і всі свої!..

Збережіть себе негайно на фото,
Побіліть своїми смайлами нудний кадр.
Через років двадцять п''ять, у суботу,
Він засяє із минулого, як ліхтар.
Привіт, привіт!
О скільки ж нас?
Нас, приїжджих в інше місце й час,
Та тягне так і сняться сни
Про найкраще місце на землі!..

Приспів.','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2525212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2525212','Вдома','Розберіть мене на меми, хто в темі,
Коли спогади беруть владу в голові.
Я стаю такий не схожий на себе,
Як дитина,
Що під ліжком знайшла скарби.
Привіт, привіт!
О скільки ж нас?
Нас, приїжджих в інше місце й час,
Та тягне так і сняться сни
Про найкраще місце на землі!..

Приспів:
Вдома небо синє-синє!..
Вдома в небі воля дихає!..
Вдома думи ясні-ясні,
Свої, і всі свої!..

Збережіть себе негайно на фото,
Побіліть своїми смайлами нудний кадр.
Через років двадцять п''ять, у суботу,
Він засяє із минулого, як ліхтар.
Привіт, привіт!
О скільки ж нас?
Нас, приїжджих в інше місце й час,
Та тягне так і сняться сни
Про найкраще місце на землі!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2525212_l1','pisniua_2525212','YouTube','https://www.youtube.com/watch?v=5cMFArN3HdE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2525212_l2','pisniua_2525212','YouTube','https://www.youtube.com/watch?v=RfOVqK6ikwg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2526199';
DELETE FROM song_versions WHERE song_id = 'pisniua_2526199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2526199';
DELETE FROM songs WHERE id = 'pisniua_2526199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2526199','Мамо','Музика: Артем Лук''яненко Слова: Артем Лук''яненко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Притуляй мене, колихай у сні,
Повертай назад у дитячий світ...
До тебе прийду, не згубивши слід,
Як птахи вертаються на весні...

Мамо, мені наснилися кошмари,
Де все не так, як ти співала,
Де все сховалося у тінь...
Мамо, ми так далеко відлітали,
І не про все тобі казали,
Та серце билося сильніш!..

Приспів.

Притуляй мене, колихай у сні,
Повертай назад у дитячий світ...
До тебе прийду у батьківський дім,
Як бусли вертаються на весні...','[''pisni.org.ua'', ''cat:devoted'', ''cat:pro-batkiv'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні про любов до батьків'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2526199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2526199','Мамо','Приспів:
Притуляй мене, колихай у сні,
Повертай назад у дитячий світ...
До тебе прийду, не згубивши слід,
Як птахи вертаються на весні...

Мамо, мені наснилися кошмари,
Де все не так, як ти співала,
Де все сховалося у тінь...
Мамо, ми так далеко відлітали,
І не про все тобі казали,
Та серце билося сильніш!..

Приспів.

Притуляй мене, колихай у сні,
Повертай назад у дитячий світ...
До тебе прийду у батьківський дім,
Як бусли вертаються на весні...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2526199_l1','pisniua_2526199','YouTube','https://www.youtube.com/watch?v=3E-Z6N1e3N0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2526726';
DELETE FROM song_versions WHERE song_id = 'pisniua_2526726';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2526726';
DELETE FROM songs WHERE id = 'pisniua_2526726';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2526726','Де би, де би','Музика: Drevo Слова: Drevo','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Де би, де би не вис я,
Де би, де би втрачав знак,
Де би, де би шукав, знав,
Сонцестояння буде там!
Де би, де би несло в ад,
Де би, де би волів в рай,
Де би, де би шукав, ян,
Місяць сходив до нас в гай.
Сонце, дивися, зорі дивився,
Море дивується, я тобой любуюся!..

Приспів:
Вона кохала! Вона все знала!
Вона легенько взяла моє серденько!..
Вона єдина мене хотіла!
Вона легенько взяла моє серденько"..

Вона єдина мене хотіла!..
Вона легенько...

Де би, де би не обпікало,
Де би, де би мене спасала,
Де би, де би ти не чекала,
Просто брала й рятувала...
Якби, якби не було
Нам з тобою холодно,
Ми - герої головної ролі!
Квитки афіші вже на Подолі!

Приспів. (2)

Вона...
Вона легенько взяла моє серденько...','[''pisni.org.ua'', ''cat:devoted'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2526726'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2526726','Де би, де би','Де би, де би не вис я,
Де би, де би втрачав знак,
Де би, де би шукав, знав,
Сонцестояння буде там!
Де би, де би несло в ад,
Де би, де би волів в рай,
Де би, де би шукав, ян,
Місяць сходив до нас в гай.
Сонце, дивися, зорі дивився,
Море дивується, я тобой любуюся!..

Приспів:
Вона кохала! Вона все знала!
Вона легенько взяла моє серденько!..
Вона єдина мене хотіла!
Вона легенько взяла моє серденько"..

Вона єдина мене хотіла!..
Вона легенько...

Де би, де би не обпікало,
Де би, де би мене спасала,
Де би, де би ти не чекала,
Просто брала й рятувала...
Якби, якби не було
Нам з тобою холодно,
Ми - герої головної ролі!
Квитки афіші вже на Подолі!

Приспів. (2)

Вона...
Вона легенько взяла моє серденько...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2526726_l1','pisniua_2526726','YouTube','https://www.youtube.com/watch?v=BnYLZcLvMUo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2528379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2528379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2528379';
DELETE FROM songs WHERE id = 'pisniua_2528379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2528379','Дорожній гімн','Музика: Suno AI Слова: В. Галатиба','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Зчеплення відпущу, обертів додам,
Ґуґл навігатор шлях покаже нам.

Ми сьогодні їдемо на крилах вітрів,
Висвічуючи дорогу світлом ліхтарів!

Сходить сонце тепле, хмари розганяє,
Ніби нам на щастя, що дощу немає!

Тримайся ти міцніше за плечі мої
Ми в цей тихий ранок на залізному коні

Зчеплення відпущу, обертів додам,
Ґуґл навігатор шлях покаже нам.

Мандруємо по дорозі в далеку далечінь,
Хай наздоганяє нас наша власна тінь!

Зчеплення відпущу, обертів додам,
Ґуґл навігатор шлях покаже нам.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2528379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2528379','Дорожній гімн','Зчеплення відпущу, обертів додам,
Ґуґл навігатор шлях покаже нам.

Ми сьогодні їдемо на крилах вітрів,
Висвічуючи дорогу світлом ліхтарів!

Сходить сонце тепле, хмари розганяє,
Ніби нам на щастя, що дощу немає!

Тримайся ти міцніше за плечі мої
Ми в цей тихий ранок на залізному коні

Зчеплення відпущу, обертів додам,
Ґуґл навігатор шлях покаже нам.

Мандруємо по дорозі в далеку далечінь,
Хай наздоганяє нас наша власна тінь!

Зчеплення відпущу, обертів додам,
Ґуґл навігатор шлях покаже нам.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2528379_l1','pisniua_2528379','YouTube','https://www.youtube.com/watch?v=M7dlH8ObADc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2531354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2531354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2531354';
DELETE FROM songs WHERE id = 'pisniua_2531354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2531354','Шахтарська весільна','Музика: Віктор Демидов Слова: Євген Летюк','uk','ukr_ssr_1919_1991',NULL,NULL,'з журналу "Україна" 1960-их рр.','Послухати мелодію та переглянути/завантажити ноти можна тут: https://musescore.com/user/56304587/scores/22415329','Гей, сідайте всі до столу,
Баяністе, дужче вдар!
На весілля-новосілля всіх
Запрошує шахтар, запрошує шахтар.
Гей!
Хай кінця пісням не буде,
Не заскакуйте, лади!
Підіймайте щедрі тости,
Тости за здоров''я молодих.

За здоров''я комбайнера —
Чим же хлопець не жених!
За здоров''я ланкової —
Де ж дівчат знайти таких,
Дівчат знайти таких! Гей!
Щоб жили в добрі та щасті,
Лих не знали на віку.
Щоб синів ростили дужих,
Дужих, кожен рік по одному!

Хто гука там "гірко, гірко"?
Наша доля не гірка!
Вся сім''я шахтарська нині
В світлій хаті гірника,
Вся в хаті гірника. Гей!
За столом ніхто не зайвий —
Будьте гостями і ви:
Всіх запрошує до себе, до себе
Комбайнер наш бойовий! Гей! Гей!','[''pisni.org.ua'', ''cat:ussr'', ''Радянська ідеологія'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2531354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2531354','Шахтарська весільна','Гей, сідайте всі до столу,
Баяністе, дужче вдар!
На весілля-новосілля всіх
Запрошує шахтар, запрошує шахтар.
Гей!
Хай кінця пісням не буде,
Не заскакуйте, лади!
Підіймайте щедрі тости,
Тости за здоров''я молодих.

За здоров''я комбайнера —
Чим же хлопець не жених!
За здоров''я ланкової —
Де ж дівчат знайти таких,
Дівчат знайти таких! Гей!
Щоб жили в добрі та щасті,
Лих не знали на віку.
Щоб синів ростили дужих,
Дужих, кожен рік по одному!

Хто гука там "гірко, гірко"?
Наша доля не гірка!
Вся сім''я шахтарська нині
В світлій хаті гірника,
Вся в хаті гірника. Гей!
За столом ніхто не зайвий —
Будьте гостями і ви:
Всіх запрошує до себе, до себе
Комбайнер наш бойовий! Гей! Гей!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2531354_l1','pisniua_2531354','YouTube','https://www.youtube.com/watch?v=XEGMf4S1wAg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2528212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2528212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2528212';
DELETE FROM songs WHERE id = 'pisniua_2528212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2528212','Пресвятий наш Миколаю','Музика: Оксана Пічугіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Пресвятий наш Миколаю,
Ти прийди до нас із раю!
Подивись, як ми кружляємо,
І тебе усі вітаємо!
(Діти кружляють)

Пресвятий наш Миколаю,
Ти прийди до нас із раю!
Подивись, як ми танцюємо,
Дружно ніжками тупцюємо!
(Діти тупочуть ніжками)

Пресвятий наш Миколаю,
Ти прийди до нас із раю!
Подивись, як ми стрибаємо,
Подаруночки чекаємо!
(Діти стрибають)

Пресвятий наш Миколаю,
Ти прийди до нас із раю!
І прийми подяку щиру,
Подаруй нам щастя й миру!
(Діти плещуть у долоні)','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2528212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2528212','Пресвятий наш Миколаю','Пресвятий наш Миколаю,
Ти прийди до нас із раю!
Подивись, як ми кружляємо,
І тебе усі вітаємо!
(Діти кружляють)

Пресвятий наш Миколаю,
Ти прийди до нас із раю!
Подивись, як ми танцюємо,
Дружно ніжками тупцюємо!
(Діти тупочуть ніжками)

Пресвятий наш Миколаю,
Ти прийди до нас із раю!
Подивись, як ми стрибаємо,
Подаруночки чекаємо!
(Діти стрибають)

Пресвятий наш Миколаю,
Ти прийди до нас із раю!
І прийми подяку щиру,
Подаруй нам щастя й миру!
(Діти плещуть у долоні)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2528212_l1','pisniua_2528212','YouTube','https://www.youtube.com/watch?v=T6Lqmkc7XI0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2528212_l2','pisniua_2528212','YouTube','https://www.youtube.com/watch?v=jJhKbfyDU1w','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2527563';
DELETE FROM song_versions WHERE song_id = 'pisniua_2527563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2527563';
DELETE FROM songs WHERE id = 'pisniua_2527563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2527563','Чистий листок','(Дівчина із мрій)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На столі чистий лист,
Ще пустий його зміст.
Зовсім білий, як сніг, не прим''ятий,
Він заманливо звав, щоб я малював
Ту, кого серце хоче кохати!..
Олівець я беру, на папері веду,
Та виходить портрет незвичайний.
Очі дивні її, ті, що бачив у сні,
Та сумні вони так нереально...

Приспів:
Дівчина із мрій,
У думках я бачив тільки образ твій...
Я тебе на малював!.. Я тебе намалював,
Але так і не сказав слова свої...
Я не вірю, що пройде твоя любов,
І тебе я не побачу більше знов...
Я без тебе сумував і тебе намалював,
Я тебе намалював!..

І картина моя, малював її я,
Мов ожив образ твій - посміхнулась!..
Ти сказала: Бувай! Ти мене не шукай!
І пішла, навіть ти озирнулась...

Приспів.

А насправді, зараз з іншим ти в цю мить,
Його обіймаєш, а душа болить...
Вірю, що кохання ще оживе, малюю тебе...

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2527563'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2527563','Чистий листок','На столі чистий лист,
Ще пустий його зміст.
Зовсім білий, як сніг, не прим''ятий,
Він заманливо звав, щоб я малював
Ту, кого серце хоче кохати!..
Олівець я беру, на папері веду,
Та виходить портрет незвичайний.
Очі дивні її, ті, що бачив у сні,
Та сумні вони так нереально...

Приспів:
Дівчина із мрій,
У думках я бачив тільки образ твій...
Я тебе на малював!.. Я тебе намалював,
Але так і не сказав слова свої...
Я не вірю, що пройде твоя любов,
І тебе я не побачу більше знов...
Я без тебе сумував і тебе намалював,
Я тебе намалював!..

І картина моя, малював її я,
Мов ожив образ твій - посміхнулась!..
Ти сказала: Бувай! Ти мене не шукай!
І пішла, навіть ти озирнулась...

Приспів.

А насправді, зараз з іншим ти в цю мить,
Його обіймаєш, а душа болить...
Вірю, що кохання ще оживе, малюю тебе...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2527563_l1','pisniua_2527563','YouTube','https://www.youtube.com/watch?v=IskQzu9i9Vw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2528073';
DELETE FROM song_versions WHERE song_id = 'pisniua_2528073';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2528073';
DELETE FROM songs WHERE id = 'pisniua_2528073';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2528073','Сяють зорі','Музика: Ольга Маєвська Слова: Тетяна Дядя (Прохорова). Виконує: Ольга Маєвська','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Сяють зорі, сяють зорі,
А у кожному соборі
Служба правиться святая,
Пісня Божая лунає!

Сяють зорі, сяють зорі,
І метуть сніги суворі,
У душах наших - благодать,
І щастя хочеться бажать!

Сяють зорі, сяють зорі,
Час Різдвяної історії,
Час для зустрічі родинної
Та колядки старовинної!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2528073'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2528073','Сяють зорі','Сяють зорі, сяють зорі,
А у кожному соборі
Служба правиться святая,
Пісня Божая лунає!

Сяють зорі, сяють зорі,
І метуть сніги суворі,
У душах наших - благодать,
І щастя хочеться бажать!

Сяють зорі, сяють зорі,
Час Різдвяної історії,
Час для зустрічі родинної
Та колядки старовинної!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2528073_l1','pisniua_2528073','YouTube','https://www.youtube.com/watch?v=N2783hAcpR0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2529414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2529414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2529414';
DELETE FROM songs WHERE id = 'pisniua_2529414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2529414','Запорізька дівоча','(Дівоча Запорізька). Музика: Платон Майборода Слова: Василь Юхимович','uk','ukr_ssr_1919_1991',NULL,'1960','Нагадаю піснею (Вокальні твори на слова В. Юхимовича), "Музична Україна", Київ — 1979 р.','Послухати мелодію та переглянути/завантажити ноти можна тут: https://musescore.com/user/56304587/scores/22816603 Другий варіант пісні "Запорізька дівоча" (друкований у журналі "Україна" 1960-их рр.): Нагадаю піснею, може ще не пізньою, І скажу коханому: — Чуєш, дорогий! Ти на правім березі, Я на лівім березі, А коли ж посходяться наші береги? Може не протовпився, хлопче, до автобуса, То до мого берега припливи в човні. Час тобі, вродливому, Побувать на лівому, Чи у тебе й серденько — в правій стороні? Всі дівчата парами ходять з сталеварами. Ти ж засів між книгами... Може, й постарів... Симпатична міміка В хлопця — коксохіміка, А твоїх нема в нього ні очей, ні брів. В місті нашім є одна вулиця Возз''єднання І веде закоханих до Дніпра проспект. А тобі все ніколи... Вибери канікули, Дай мені для ясності про любов конспект... Це мотив ліричної з вулиці Космічної, Де квітки — в два яруси, до зірок — доми. Місто розростається, Серденько й питається — На якій же вулиці стрінемося ми?!','Нагадаю піснею, може ще не пізньою,
І скажу коханому: — Чуєш, дорогий?
Ти — на правім березі,
Я — на лівім березі,
А коли ж посходяться наші береги?           | (3)

Може не протовпився, хлопче, до автобуса,
То до мого берега припливи в човні.
Час тобі, вродливому,
Побувать на лівому, —
Вже ж пороги канули в темній глибині...     | (3)

Знов дівчата парами ходять з сталеварами,
Ти ж засів між книгами... Може, й постарів.
Симпатична міміка
В хлопця-коксохіміка,
А твоїх нема в нього ні очей, ні брів...    | (3)

В місті нашім є одна вулиця Возз''єднання.
Може б, там зустрілися ми хоч навесні?
А тобі все ніколи...
Вибери канікули, —
Про любов хоч поглядом натякни мені!        | (3)

Вже мотив ліричної лине і з Космічної,
Де квітки — в два яруси, до зірок — доми...
Місто розростається,
Серденько й питається:
На якій же вулиці зійдемося ми?..           | (3)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2529414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2529414','Запорізька дівоча','Нагадаю піснею, може ще не пізньою,
І скажу коханому: — Чуєш, дорогий?
Ти — на правім березі,
Я — на лівім березі,
А коли ж посходяться наші береги?           | (3)

Може не протовпився, хлопче, до автобуса,
То до мого берега припливи в човні.
Час тобі, вродливому,
Побувать на лівому, —
Вже ж пороги канули в темній глибині...     | (3)

Знов дівчата парами ходять з сталеварами,
Ти ж засів між книгами... Може, й постарів.
Симпатична міміка
В хлопця-коксохіміка,
А твоїх нема в нього ні очей, ні брів...    | (3)

В місті нашім є одна вулиця Возз''єднання.
Може б, там зустрілися ми хоч навесні?
А тобі все ніколи...
Вибери канікули, —
Про любов хоч поглядом натякни мені!        | (3)

Вже мотив ліричної лине і з Космічної,
Де квітки — в два яруси, до зірок — доми...
Місто розростається,
Серденько й питається:
На якій же вулиці зійдемося ми?..           | (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2529414_l1','pisniua_2529414','YouTube','https://www.youtube.com/watch?v=xP09QHLz4os','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2529414_l2','pisniua_2529414','YouTube','https://www.youtube.com/watch?v=8X5VJda33gQ','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2528012';
DELETE FROM song_versions WHERE song_id = 'pisniua_2528012';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2528012';
DELETE FROM songs WHERE id = 'pisniua_2528012';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2528012','Просим щиро, Миколай','Музика: Оксана Пічугіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'До маляток, (до маляток)
Миколай, (Миколай)
Ти на свято (ти на свято)
Завітай! (Завітай!)

Приспів:
Принеси (принеси)     |
Миру! (Миру!)         |
Просим ми (просим ми) |
Щиро! (Щиро!)         | (2)

Ми старались (ми старались)
Не наспіх! (Не наспіх!)
Помагали (помагали)
Краще всіх! (Краще всіх!)

Приспів.

Подарунки (подарунки)
Як завжди (як завжди)
Під подушку (під подушку)
Поклади! (Поклади!)

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2528012'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2528012','Просим щиро, Миколай','До маляток, (до маляток)
Миколай, (Миколай)
Ти на свято (ти на свято)
Завітай! (Завітай!)

Приспів:
Принеси (принеси)     |
Миру! (Миру!)         |
Просим ми (просим ми) |
Щиро! (Щиро!)         | (2)

Ми старались (ми старались)
Не наспіх! (Не наспіх!)
Помагали (помагали)
Краще всіх! (Краще всіх!)

Приспів.

Подарунки (подарунки)
Як завжди (як завжди)
Під подушку (під подушку)
Поклади! (Поклади!)

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2528012_l1','pisniua_2528012','YouTube','https://www.youtube.com/watch?v=fK2sdoefCuM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2528012_l2','pisniua_2528012','YouTube','https://www.youtube.com/watch?v=n0daWMBK0V0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2528394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2528394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2528394';
DELETE FROM songs WHERE id = 'pisniua_2528394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2528394','Гра з мішечком Миколая','Музика: Оксана Пічугіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис','У мішечок складаються різні предмети, іграшки. Діти передають його по колу. На слова "Відгадай!" дитина, в якої мішечок, не дивлячись знаходить одну річ і навпомацки вгадує що то. Показує всім і відкладає. Незалежно від того, відгадала дитина чи ні, всі діти продовжують гру.','Миколай приніс мішок,
Та й поклав додолу.
Швидше ти його, дружок,
Передай по колу!

Передай! Передай!
Передай по колу!
А тепер, часу не гай,
Що у ньому, відгадай!

Миколай приніс мішок,
Та й поклав додолу.
Швидше ти його, дружок,
Передай по колу!

Передай! Передай!
Передай по колу!
А тепер, часу не гай,
Що у ньому, відгадай!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2528394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2528394','Гра з мішечком Миколая','Миколай приніс мішок,
Та й поклав додолу.
Швидше ти його, дружок,
Передай по колу!

Передай! Передай!
Передай по колу!
А тепер, часу не гай,
Що у ньому, відгадай!

Миколай приніс мішок,
Та й поклав додолу.
Швидше ти його, дружок,
Передай по колу!

Передай! Передай!
Передай по колу!
А тепер, часу не гай,
Що у ньому, відгадай!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2528394_l1','pisniua_2528394','YouTube','https://www.youtube.com/watch?v=FPDHSVs0c-c','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2530313';
DELETE FROM song_versions WHERE song_id = 'pisniua_2530313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2530313';
DELETE FROM songs WHERE id = 'pisniua_2530313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2530313','А що купив би ти на бойові?','Музика: ШІ Слова: Віталій Орловський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'А що купив би ти на бойові? -
Питають побратими у солдата.
Купив би я побігать по траві,
І холоду окопного не знати.

Купив би я спокійних вечорів,
Гарячої домашньої вечері,
Щоб тихо у печі вогонь горів,
І мирно спали діти у оселі.

Купив би я для мами ще синів,
Щоб вічно не лишалася самою.
Купив би тих, кого я не зумів
Спасти від куль, забрати із собою.

А потім би дістав квиток у Крим,
Спитав би, чи живуть там українці,
Чи я для них вважаюся своїм?
Й пірнув у море тепле аж по вінця.','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2530313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2530313','А що купив би ти на бойові?','А що купив би ти на бойові? -
Питають побратими у солдата.
Купив би я побігать по траві,
І холоду окопного не знати.

Купив би я спокійних вечорів,
Гарячої домашньої вечері,
Щоб тихо у печі вогонь горів,
І мирно спали діти у оселі.

Купив би я для мами ще синів,
Щоб вічно не лишалася самою.
Купив би тих, кого я не зумів
Спасти від куль, забрати із собою.

А потім би дістав квиток у Крим,
Спитав би, чи живуть там українці,
Чи я для них вважаюся своїм?
Й пірнув у море тепле аж по вінця.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2530313_l1','pisniua_2530313','YouTube','https://www.youtube.com/watch?v=er2op-l3g0U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2531614';
DELETE FROM song_versions WHERE song_id = 'pisniua_2531614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2531614';
DELETE FROM songs WHERE id = 'pisniua_2531614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2531614','Журавлі','Музика: Ірина Федишин Слова: Віталій Човник','uk','ukraine_1991',NULL,NULL,'аудіозапис','Ця пісня – наш спільний біль і наша пам''ять. Присвячується усім хлопцям і дівчатам, які віддали найдорожче – своє життя за нашу свободу. Кожен із них залишив слід у наших серцях, як біле перо в небі, яке зникає, але не зникає з нашої пам''яті. Нехай кожен рядок цієї пісні стане тихою молитвою за них, а ми завжди будемо берегти їхню пам''ять у своїх душах.','А у небі журавлі летіли,
Залишали пір''я чорно-біле...
Підіймались в висоту,
Відбивали чистоту,
Залишали нам сльозу...

Сонце заховалося за хмари,
І земля тоне у пітьмі...
Смуток, ніби вже без краю,
Вітер плаче в тишині...
Життя у бою вони кладуть,
А душу кулі не беруть!..
Країни сини змахнули крильми,
Ніколи не забудем
Кого втратили ми!..

Приспів:
А у небі журавлі летіли,
Залишали пір''я чорно-біле...
Підіймались в висоту,
Відбивали чистоту,
Залишали нам сльозу...
А у небі журавлі летіли,
Їхні пір''я було біле-біле,
Ви, як зорі, в небесах,
І назавжди у серцях!..

Залишали мамину криницю,
Пролітали над містом і селом...
Синє небо плакало сльозами,
Що у полі ставали джерелом.
Життя у бою вони кладуть,
А душу кулі не беруть!..
Країни сини змахнули крильми,
Ніколи не забудем
Кого втратили ми!..

Приспів. (2)

Ви, як зорі, в небесах,
І назавжди у серцях!..','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2531614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2531614','Журавлі','А у небі журавлі летіли,
Залишали пір''я чорно-біле...
Підіймались в висоту,
Відбивали чистоту,
Залишали нам сльозу...

Сонце заховалося за хмари,
І земля тоне у пітьмі...
Смуток, ніби вже без краю,
Вітер плаче в тишині...
Життя у бою вони кладуть,
А душу кулі не беруть!..
Країни сини змахнули крильми,
Ніколи не забудем
Кого втратили ми!..

Приспів:
А у небі журавлі летіли,
Залишали пір''я чорно-біле...
Підіймались в висоту,
Відбивали чистоту,
Залишали нам сльозу...
А у небі журавлі летіли,
Їхні пір''я було біле-біле,
Ви, як зорі, в небесах,
І назавжди у серцях!..

Залишали мамину криницю,
Пролітали над містом і селом...
Синє небо плакало сльозами,
Що у полі ставали джерелом.
Життя у бою вони кладуть,
А душу кулі не беруть!..
Країни сини змахнули крильми,
Ніколи не забудем
Кого втратили ми!..

Приспів. (2)

Ви, як зорі, в небесах,
І назавжди у серцях!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2531614_l1','pisniua_2531614','YouTube','https://www.youtube.com/watch?v=3eor0_r0OXc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2531614_l2','pisniua_2531614','YouTube','https://www.youtube.com/watch?v=uDqdyrpuVyw','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2528767';
DELETE FROM song_versions WHERE song_id = 'pisniua_2528767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2528767';
DELETE FROM songs WHERE id = 'pisniua_2528767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2528767','Ми для Миколая пісню заспіваєм','Музика: Наталія Собко Слова: Наталія Собко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ми для Миколая пісню заспіваєм,
Бо до нас в садочок щойно завітав.
Ми його охоче з радістю чекаєм,
Бо для нас дарунки гарні він придбав!

Радісно і дзвінко пісню цю співаєм
У такий веселий і святковий час!
Дружно Миколая з святом ми вітаєм,
Бо прийшов в садочок з радістю до нас!

І до нас щороку Миколай приходить,
І готує діткам подарунки всім!
Чемних і хороших діток він знаходить,
Й роздає гостинці діточкам малим!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2528767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2528767','Ми для Миколая пісню заспіваєм','Ми для Миколая пісню заспіваєм,
Бо до нас в садочок щойно завітав.
Ми його охоче з радістю чекаєм,
Бо для нас дарунки гарні він придбав!

Радісно і дзвінко пісню цю співаєм
У такий веселий і святковий час!
Дружно Миколая з святом ми вітаєм,
Бо прийшов в садочок з радістю до нас!

І до нас щороку Миколай приходить,
І готує діткам подарунки всім!
Чемних і хороших діток він знаходить,
Й роздає гостинці діточкам малим!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2528767_l1','pisniua_2528767','YouTube','https://www.youtube.com/watch?v=gHvyeGdX5Jo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2530267';
DELETE FROM song_versions WHERE song_id = 'pisniua_2530267';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2530267';
DELETE FROM songs WHERE id = 'pisniua_2530267';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2530267','Отямся, брате. Ти живий?','Музика: ШІ Слова: Віталій Орловський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Отямся, брате. Ти живий?
Поглянь на мене, чуєш? Дихай.
Тепер позаду клятий бій,
Ми вже дали їм на горіхи!

Прокинься, братику, вставай!
Я поможу дійти до наших.
Ну піднімайся ти, давай!
Ти ж маєш слухатися старших!

Хапайся міцно, понесу,
Я покладу тебе на спину.
Піду крізь гради і грозу,
Але самого тут не кину!

Ну що я матері скажу?
Ти присягнувся повернутись!
Я зараз рану зав''яжу.
Ну не мовчи. Чого насупивсь?

І він поніс, і двічі впав,
І двічі знову піднімався,
І смерть від брата відганяв,
Але добрів, доповз, добрався!

У небо глянув сам не свій,
Вдихнув повітря і свободи.
Ну як він, хлопці? Він живий?
Живий! Ворушиться! Трьохсотий...','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2530267'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2530267','Отямся, брате. Ти живий?','Отямся, брате. Ти живий?
Поглянь на мене, чуєш? Дихай.
Тепер позаду клятий бій,
Ми вже дали їм на горіхи!

Прокинься, братику, вставай!
Я поможу дійти до наших.
Ну піднімайся ти, давай!
Ти ж маєш слухатися старших!

Хапайся міцно, понесу,
Я покладу тебе на спину.
Піду крізь гради і грозу,
Але самого тут не кину!

Ну що я матері скажу?
Ти присягнувся повернутись!
Я зараз рану зав''яжу.
Ну не мовчи. Чого насупивсь?

І він поніс, і двічі впав,
І двічі знову піднімався,
І смерть від брата відганяв,
Але добрів, доповз, добрався!

У небо глянув сам не свій,
Вдихнув повітря і свободи.
Ну як він, хлопці? Він живий?
Живий! Ворушиться! Трьохсотий...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2530267_l1','pisniua_2530267','YouTube','https://www.youtube.com/watch?v=X1Ned3d6bK8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2532063';
DELETE FROM song_versions WHERE song_id = 'pisniua_2532063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2532063';
DELETE FROM songs WHERE id = 'pisniua_2532063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2532063','Всі зорі з неба','Музика: Дмитро Волканов Слова: Дмитро Волканов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Всі зорі з неба
Для тебе, моя неземна!..
Я вдячний Богу
За тебе, кохана моя!..
Всі зорі неба
Лише для тебе!..

Ти мене хвилюєш дуже сильно,
І, моя любов, ти - божевільна.
Ти - моє натхнення і моя душа!
І для тебе все, що хочеш, я зроблю,
Бо з кожним днем сильніше я люблю
Твої солодкі і п''янкі вуста!..
Для тебе все, що хочеш цієї ночі!

Приспів. (2)

Ти заполонила все моє життя
І вже без тебе не існую я!..
Ти - найрідніша, ти така одна!
Для тебе все, що хочеш цієї ночі!

Приспів. (2)

Всі зорі неба
Лише для тебе!..','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2532063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2532063','Всі зорі з неба','Приспів:
Всі зорі з неба
Для тебе, моя неземна!..
Я вдячний Богу
За тебе, кохана моя!..
Всі зорі неба
Лише для тебе!..

Ти мене хвилюєш дуже сильно,
І, моя любов, ти - божевільна.
Ти - моє натхнення і моя душа!
І для тебе все, що хочеш, я зроблю,
Бо з кожним днем сильніше я люблю
Твої солодкі і п''янкі вуста!..
Для тебе все, що хочеш цієї ночі!

Приспів. (2)

Ти заполонила все моє життя
І вже без тебе не існую я!..
Ти - найрідніша, ти така одна!
Для тебе все, що хочеш цієї ночі!

Приспів. (2)

Всі зорі неба
Лише для тебе!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2532063_l1','pisniua_2532063','YouTube','https://www.youtube.com/watch?v=jPmwmaJZnAw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2530624';
DELETE FROM song_versions WHERE song_id = 'pisniua_2530624';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2530624';
DELETE FROM songs WHERE id = 'pisniua_2530624';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2530624','Українська хустинка','Музика: Наталія Собко Слова: Наталія Собко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мама мені подарує
Вишиту хустинку,
І її я одягну,
Бо я - українка!
Ось так, у хустинці
Справжня україночка!
Ось так, мені личить
У квітках хустиночка!

Українська ця хустинка
Найгарніша в світі,
Бо розсипали по ній
Кольорові квіти!
Ось так, у хустинці
Справжня україночка!
Ось так, мені личить
У квітках хустиночка!','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2530624'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2530624','Українська хустинка','Мама мені подарує
Вишиту хустинку,
І її я одягну,
Бо я - українка!
Ось так, у хустинці
Справжня україночка!
Ось так, мені личить
У квітках хустиночка!

Українська ця хустинка
Найгарніша в світі,
Бо розсипали по ній
Кольорові квіти!
Ось так, у хустинці
Справжня україночка!
Ось так, мені личить
У квітках хустиночка!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2530624_l1','pisniua_2530624','YouTube','https://www.youtube.com/watch?v=VaugQL6cNDU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2530624_l2','pisniua_2530624','YouTube','https://www.youtube.com/watch?v=dvyOLIp5Fus','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2532414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2532414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2532414';
DELETE FROM songs WHERE id = 'pisniua_2532414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2532414','Усе ж таки друзі','Музика: Lely45, Женя Галич Слова: Lely45, Женя Галич','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Так безглуздо було
Закохатись у тебе,
Так бездумно,
Так божевільно.
Все це так у моєму дусі,
Піднімаю руки.

Приспів:
Ми - усе ж таки друзі! |
Усе ж таки друзі!      |
Усе ж таки друзі!      | (2)

Я чекатиму в гості
Дві зими, одну осінь -
Ну на цьому і досить.
В русі голих ілюзій
Я збиратиму крихти,
Я ловитиму рухи.
Жодна з версій неповна.
Я приміряю кожну,
Може, раптом, підійде.
Вибач, так же не можна,
Я була не повинна.
Я ні в чому не винна!
Я триматиму руку
І підвищую пульс,
Із швидкістю звуку
Біг на місці,
Захищаюсь від куль.
Зашифровані зустрічі,
Миттю стерті рядки,
Бігти безліч фальш-причин,
Тут лишитись чи навпаки?..

Приспів. (2)

Ми - усе ж таки!       | (4)

І вже ніхто, ні ти, ні я
Не прагнем розуміння,
Відбитки зайчиків в очах
Змінило оніміння...
На суперечливих плечах
Вагання звели табір,
Мене підкорює печаль...','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2532414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2532414','Усе ж таки друзі','Так безглуздо було
Закохатись у тебе,
Так бездумно,
Так божевільно.
Все це так у моєму дусі,
Піднімаю руки.

Приспів:
Ми - усе ж таки друзі! |
Усе ж таки друзі!      |
Усе ж таки друзі!      | (2)

Я чекатиму в гості
Дві зими, одну осінь -
Ну на цьому і досить.
В русі голих ілюзій
Я збиратиму крихти,
Я ловитиму рухи.
Жодна з версій неповна.
Я приміряю кожну,
Може, раптом, підійде.
Вибач, так же не можна,
Я була не повинна.
Я ні в чому не винна!
Я триматиму руку
І підвищую пульс,
Із швидкістю звуку
Біг на місці,
Захищаюсь від куль.
Зашифровані зустрічі,
Миттю стерті рядки,
Бігти безліч фальш-причин,
Тут лишитись чи навпаки?..

Приспів. (2)

Ми - усе ж таки!       | (4)

І вже ніхто, ні ти, ні я
Не прагнем розуміння,
Відбитки зайчиків в очах
Змінило оніміння...
На суперечливих плечах
Вагання звели табір,
Мене підкорює печаль...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2532414_l1','pisniua_2532414','YouTube','https://www.youtube.com/watch?v=GLWkFWOaGks','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2530022';
DELETE FROM song_versions WHERE song_id = 'pisniua_2530022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2530022';
DELETE FROM songs WHERE id = 'pisniua_2530022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2530022','Загадай бажання','Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Рік старий вже припиняє біг,
І рахують стрілочки хвилини.
За вікном кружляє білий сніг,
Й пробачають люди всі провини.
Прикро, звісно, що всього лиш раз,
За дванадцять місяців на світі,
Новий рік святкується у нас...
Тільки в диво віримо, як діти!

Приспів:
Ти скоріш бажання загадай    |
Та у небо мрію відпускай!    |
І нехай, як добрий чарівник, |
Принесе нам щастя Новий рік! | (2)

Хай лунає скрізь дитячий сміх,
І ялинка дощиком іскриться,
Будуть подаруночки для всіх,
І бажання в кожного здійсниться!
Рік старий минає, а за ним,
Вже Новий, твердим прямує кроком!
Хай приходить радість в кожен дім!
З Новим роком, друзі! З Новим роком!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2530022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2530022','Загадай бажання','Рік старий вже припиняє біг,
І рахують стрілочки хвилини.
За вікном кружляє білий сніг,
Й пробачають люди всі провини.
Прикро, звісно, що всього лиш раз,
За дванадцять місяців на світі,
Новий рік святкується у нас...
Тільки в диво віримо, як діти!

Приспів:
Ти скоріш бажання загадай    |
Та у небо мрію відпускай!    |
І нехай, як добрий чарівник, |
Принесе нам щастя Новий рік! | (2)

Хай лунає скрізь дитячий сміх,
І ялинка дощиком іскриться,
Будуть подаруночки для всіх,
І бажання в кожного здійсниться!
Рік старий минає, а за ним,
Вже Новий, твердим прямує кроком!
Хай приходить радість в кожен дім!
З Новим роком, друзі! З Новим роком!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2530022_l1','pisniua_2530022','YouTube','https://www.youtube.com/watch?v=-8-nvm1ZAKE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2530022_l2','pisniua_2530022','YouTube','https://www.youtube.com/watch?v=HEcAziormtg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2533495';
DELETE FROM song_versions WHERE song_id = 'pisniua_2533495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2533495';
DELETE FROM songs WHERE id = 'pisniua_2533495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2533495','Свято надії','Музика: Inessa Vitaliev, Serghei Cebotari','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мов тайна, мов диво-мрія,
Приходить цей Вечір до Тебе.
Прекрасна зірка вже зоріє
На темнім оксамиті неба.

Приспів:
Свято надії, що завжди з Тобою,
Вічне Пречисте Різдво!
Божа Любов постає над журбою,
В серці страждальному - Бог!

Весь світ схилився на коліна:
Молитва... Тиша... Мить прекрасна.
В душі і радість, і надія,
І молиться над ним Марія!..

Приспів.

А в небо Різдвяна молитва хай лине,
В ній Віра, Надія, Любов!
Той, хто з іменем Божого Сина
До кожного серця ввійшов!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2533495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2533495','Свято надії','Мов тайна, мов диво-мрія,
Приходить цей Вечір до Тебе.
Прекрасна зірка вже зоріє
На темнім оксамиті неба.

Приспів:
Свято надії, що завжди з Тобою,
Вічне Пречисте Різдво!
Божа Любов постає над журбою,
В серці страждальному - Бог!

Весь світ схилився на коліна:
Молитва... Тиша... Мить прекрасна.
В душі і радість, і надія,
І молиться над ним Марія!..

Приспів.

А в небо Різдвяна молитва хай лине,
В ній Віра, Надія, Любов!
Той, хто з іменем Божого Сина
До кожного серця ввійшов!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2533495_l1','pisniua_2533495','YouTube','https://www.youtube.com/watch?v=KX0oOcOWtEw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_25313';
DELETE FROM song_versions WHERE song_id = 'pisniua_25313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_25313';
DELETE FROM songs WHERE id = 'pisniua_25313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_25313','Заквітчали дівчатонька','Музика: Роман Купчинський Слова: Роман Купчинський. Виконує: Не журись!','uk','ukr_ssr_1919_1991',NULL,'1990','Саморобний файл','Oleg_M (гість): Пісня у виконанні львівського естрадного театр-студії "Не журись" (з CD "Повіяв вітер степовий" (c) 1990 "Студія Лева" (p) 2003 "GAL Records" (CD-0122), http://www.is.lviv.ua/~galrecords) sanator (член клюбу): Варіанти: (1) козацьку (2) козакову (3) посипали (4) Похилились дві тополі (5) А у вітах шумить вітер','Заквітчали дівчатонька
Стрільцеві*1 могилу,
Замість мали заквітчати    |
Стрілецькую*2  милу.       | (2)

Невисокий хрест з берези
Заплели віночком,
Замість мали заплітати     |
Косу барвіночком.          | (2)

Ще й пісочком висипали*3
Стежечку довкола
Замість мали постелити     |
Рушник до престолу.        | (2)

Схилилися дві черешні*4
Наліво й направо,
А на вітах вітер шепче*5   |
Про стрілецьку славу.      | (2)','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_25313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_25313','Заквітчали дівчатонька','Заквітчали дівчатонька
Стрільцеві*1 могилу,
Замість мали заквітчати    |
Стрілецькую*2  милу.       | (2)

Невисокий хрест з берези
Заплели віночком,
Замість мали заплітати     |
Косу барвіночком.          | (2)

Ще й пісочком висипали*3
Стежечку довкола
Замість мали постелити     |
Рушник до престолу.        | (2)

Схилилися дві черешні*4
Наліво й направо,
А на вітах вітер шепче*5   |
Про стрілецьку славу.      | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25313_l1','pisniua_25313','YouTube','https://www.youtube.com/watch?v=5WIC1lojUkE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25313_l2','pisniua_25313','YouTube','https://www.youtube.com/watch?v=mbxVOo7sNMQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25313_l3','pisniua_25313','YouTube','https://www.youtube.com/watch?v=foKDC9Xd3ro','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2534165';
DELETE FROM song_versions WHERE song_id = 'pisniua_2534165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2534165';
DELETE FROM songs WHERE id = 'pisniua_2534165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2534165','Різдво','Музика: Ольга Бажана Слова: Ольга Бажана','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Перша зіронька зійде,
Білий сніг в цю ніч впаде,
Вкриє землю.
Добрий вечір, добрим людям!
Хай погане все мине!
Хай Господь світло проллє
В Добрий вечір добрим людям!
Знов земля відродиться,
Син Божий народиться!
Буде радість!
Добрий вечір, добрим людям!
Віритиму я в дива!
Хай не буде в світі зла!
В Добрий вечір, добрим людям!

Приспів:
Тихо-тихо-тихо за віконцем
Сніг іде з Янголом охоронцем,
Взявши ніжно за руку,
Веде тебе він змалечку.
Тихо-тихо-тихо за віконцем
Візерунки янголів морозцем,
В кожний дім любов й тепло
Принесе нехай Різдво!

Перша зіронька зійде,
В серце радість принесе
Всім на світі!
Добрий вечір, добрим людям!
Хай настане щастя час!
Помолюсь за всіх, за нас
В Добрий вечір добрим людям!

Приспів. (2)','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2534165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2534165','Різдво','Перша зіронька зійде,
Білий сніг в цю ніч впаде,
Вкриє землю.
Добрий вечір, добрим людям!
Хай погане все мине!
Хай Господь світло проллє
В Добрий вечір добрим людям!
Знов земля відродиться,
Син Божий народиться!
Буде радість!
Добрий вечір, добрим людям!
Віритиму я в дива!
Хай не буде в світі зла!
В Добрий вечір, добрим людям!

Приспів:
Тихо-тихо-тихо за віконцем
Сніг іде з Янголом охоронцем,
Взявши ніжно за руку,
Веде тебе він змалечку.
Тихо-тихо-тихо за віконцем
Візерунки янголів морозцем,
В кожний дім любов й тепло
Принесе нехай Різдво!

Перша зіронька зійде,
В серце радість принесе
Всім на світі!
Добрий вечір, добрим людям!
Хай настане щастя час!
Помолюсь за всіх, за нас
В Добрий вечір добрим людям!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2534165_l1','pisniua_2534165','YouTube','https://www.youtube.com/watch?v=U8jl1gYF5TY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2534379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2534379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2534379';
DELETE FROM songs WHERE id = 'pisniua_2534379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2534379','Різдво','Музика: Chris Tomlin, Ed Cash, Matt Redman Слова: Chris Tomlin','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Втілилась любов згори,
Ангели і знак зорі,
Поклонитись поспішіть
Спасу кожної душі!
Нам родилося Дитя,
Його Царство без кінця!

Приспів:
Різдво! Різдво! -
Диво, що зробив наш Бог!
Різдво! Різдво!
Погляньте всі, яка любов!
Він — Світло з небес,
Дане для нас! Різдво!..

Божий Син і Син Людський -
Передвічний і святий.
Він обрав страждання шлях,
Щоб спасти від смерті нас!
Наш Господь — навіки Цар,
Його Царство без кінця!

Приспів. (3)','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2534379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2534379','Різдво','Втілилась любов згори,
Ангели і знак зорі,
Поклонитись поспішіть
Спасу кожної душі!
Нам родилося Дитя,
Його Царство без кінця!

Приспів:
Різдво! Різдво! -
Диво, що зробив наш Бог!
Різдво! Різдво!
Погляньте всі, яка любов!
Він — Світло з небес,
Дане для нас! Різдво!..

Божий Син і Син Людський -
Передвічний і святий.
Він обрав страждання шлях,
Щоб спасти від смерті нас!
Наш Господь — навіки Цар,
Його Царство без кінця!

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2534379_l1','pisniua_2534379','YouTube','https://www.youtube.com/watch?v=po5PwKNxyD0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2534379_l2','pisniua_2534379','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2534012';
DELETE FROM song_versions WHERE song_id = 'pisniua_2534012';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2534012';
DELETE FROM songs WHERE id = 'pisniua_2534012';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2534012','Ніченька темная','Музика: народна Слова: Володимир Косовський. Виконує: Тарас Компаніченко','uk','ukraine_before_1917',NULL,NULL,'Записи виконання Тараса Компаніченка','На мотив пісні "Ніч яка місячна, зоряна, ясная..."','Ніченька темная, ніченька синяя
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
DELETE FROM song_links WHERE song_id = 'pisniua_2532251';
DELETE FROM song_versions WHERE song_id = 'pisniua_2532251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2532251';
DELETE FROM songs WHERE id = 'pisniua_2532251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2532251','Їде Миколай','Музика: Наталка Карпа, Андрій Бакун Слова: Вадим Дзюнько, Наталка Карпа','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Дує вітер, зносить шапку,
Ти собі ідеш,
Як же добре взимку в парку,
Поки сніг мете!
Щось висока комуналка!
Чим її платить?..
Щось нічо не хочу думать,
Поки сніг лежить!..
Пісня ця зігріє душу,
І тебе сказати мушу:

Приспів:
Ой-ой-ой! Ай-ай-ай!
Їде Миколай!
Ця зима вже твоя,
Рідних обіймах!
Ой-ой-ой! Ай-ай-ай!
Їде Миколай!
Рік, шо був, вже минув,
Новий зустрічай!

Гостів вдома повна хата,
Стало веселіш!
Всі сидять, чекають свята,
Нехай прийде скоріш!
Я сиджу, в руках тримаю
Гривень п''ятдесят.
Бо мабуть племінник знову
Зайде колядувать!
Пісня ця зігріє душу,
І тебе сказати мушу:

Приспів.

Взимку можна бабу
Зі снігу ліпити,
Вроді нічого робити,
Взимку добре пити чай,
Взимку ходить Миколай!
Взимку мерзнуть ноги,
Взимку менше є мікробів!
Зиму можна полюбити,
Просто треба захотіти!
Ой-ой-ой! Ай-ай-ай!
Їде Миколай!
Ця зима вже твоя,
Рідних обіймах!

Приспів.

Новий зустрічай!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2532251'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2532251','Їде Миколай','Дує вітер, зносить шапку,
Ти собі ідеш,
Як же добре взимку в парку,
Поки сніг мете!
Щось висока комуналка!
Чим її платить?..
Щось нічо не хочу думать,
Поки сніг лежить!..
Пісня ця зігріє душу,
І тебе сказати мушу:

Приспів:
Ой-ой-ой! Ай-ай-ай!
Їде Миколай!
Ця зима вже твоя,
Рідних обіймах!
Ой-ой-ой! Ай-ай-ай!
Їде Миколай!
Рік, шо був, вже минув,
Новий зустрічай!

Гостів вдома повна хата,
Стало веселіш!
Всі сидять, чекають свята,
Нехай прийде скоріш!
Я сиджу, в руках тримаю
Гривень п''ятдесят.
Бо мабуть племінник знову
Зайде колядувать!
Пісня ця зігріє душу,
І тебе сказати мушу:

Приспів.

Взимку можна бабу
Зі снігу ліпити,
Вроді нічого робити,
Взимку добре пити чай,
Взимку ходить Миколай!
Взимку мерзнуть ноги,
Взимку менше є мікробів!
Зиму можна полюбити,
Просто треба захотіти!
Ой-ой-ой! Ай-ай-ай!
Їде Миколай!
Ця зима вже твоя,
Рідних обіймах!

Приспів.

Новий зустрічай!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2532251_l1','pisniua_2532251','YouTube','https://www.youtube.com/watch?v=So-pboPULdQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2536410';
DELETE FROM song_versions WHERE song_id = 'pisniua_2536410';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2536410';
DELETE FROM songs WHERE id = 'pisniua_2536410';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2536410','Ой, народи всього світу','Музика: Зеновій Филипчук Слова: Зеновій Филипчук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ой. народи всього світу,
Рідні браття й сестри,
Що з Нового Заповіту
Хрест узяли нести...
Цього року в Україні,      |
Як у тій печері,           |
Темній, зимній,            |
У тремтінні свічки,        |
Без вечері...              | (2)

Народились немовлята
В укритті, в підвалі...
Ось такі Різдвяні свята,
У земній печалі...
Замість зірочок яскравих   |
Спалахи ракетні,           |
Поруйновані будинки,       |
Черги кулеметні...         | (2)

Так тепер і в нашім часі
Іроди лихії
Від ненависті казяться,
Корчаться, мов змії.
Бо у дітях України         |
Та всього народу           |
Бачать світло Божих істин, |
Гідність і свободу.        | (2)

Хай московський ірод згине
І його все військо!
І засяє з України
Правди вічне світло!
Ой, народи всього світу,   |
Дай вам, Боже, щастя!      |
Помолімся за Вкраїну,      |
Щоб мир увінчався!         | (2)

Помолімся за Вкраїну,
Щоб мир увінчався!','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2536410'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2536410','Ой, народи всього світу','Ой. народи всього світу,
Рідні браття й сестри,
Що з Нового Заповіту
Хрест узяли нести...
Цього року в Україні,      |
Як у тій печері,           |
Темній, зимній,            |
У тремтінні свічки,        |
Без вечері...              | (2)

Народились немовлята
В укритті, в підвалі...
Ось такі Різдвяні свята,
У земній печалі...
Замість зірочок яскравих   |
Спалахи ракетні,           |
Поруйновані будинки,       |
Черги кулеметні...         | (2)

Так тепер і в нашім часі
Іроди лихії
Від ненависті казяться,
Корчаться, мов змії.
Бо у дітях України         |
Та всього народу           |
Бачать світло Божих істин, |
Гідність і свободу.        | (2)

Хай московський ірод згине
І його все військо!
І засяє з України
Правди вічне світло!
Ой, народи всього світу,   |
Дай вам, Боже, щастя!      |
Помолімся за Вкраїну,      |
Щоб мир увінчався!         | (2)

Помолімся за Вкраїну,
Щоб мир увінчався!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2536410_l1','pisniua_2536410','YouTube','https://www.youtube.com/watch?v=oEJ623bI73Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2536096';
DELETE FROM song_versions WHERE song_id = 'pisniua_2536096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2536096';
DELETE FROM songs WHERE id = 'pisniua_2536096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2536096','Забери','Музика: Schmalgauzen Слова: Schmalgauzen. Виконує: Schmalgauzen','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На самотньому балконі холодно,
Дні в полоні у погоні, голосно.
Не чекаю більше слова доброго,
Я сумую, рідна, знову за тобою...
За тобою...

Приспів:
Забери мене з цих біганин,
Забери, благаю, забери!..
І якщо на світі десь є ти,
Вже не можу я туди не йти!..

Я зриваю, шукаю підказку твою,
Зневагу, поспішаю, щоб поруч
З тобою співать, не спішу...
Ти ховайся, ховайся, тебе я знайду,
Бо люблю!.. Бо люблю!..

Приспів.

Забери...
І якщо на світі десь є ти,
Вже не можу я туди не йти...','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2536096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2536096','Забери','На самотньому балконі холодно,
Дні в полоні у погоні, голосно.
Не чекаю більше слова доброго,
Я сумую, рідна, знову за тобою...
За тобою...

Приспів:
Забери мене з цих біганин,
Забери, благаю, забери!..
І якщо на світі десь є ти,
Вже не можу я туди не йти!..

Я зриваю, шукаю підказку твою,
Зневагу, поспішаю, щоб поруч
З тобою співать, не спішу...
Ти ховайся, ховайся, тебе я знайду,
Бо люблю!.. Бо люблю!..

Приспів.

Забери...
І якщо на світі десь є ти,
Вже не можу я туди не йти...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2536096_l1','pisniua_2536096','YouTube','https://www.youtube.com/watch?v=om08u7FBl54','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2536096_l2','pisniua_2536096','YouTube','https://www.youtube.com/watch?v=uDF0trg31oQ','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_25328';
DELETE FROM song_versions WHERE song_id = 'pisniua_25328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_25328';
DELETE FROM songs WHERE id = 'pisniua_25328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_25328','Ой чий то Кінь стоїть','Українська народна пісня. Виконує: Мандри, Чарівна, Журборіз, Рушничок, Марічка, Ігор Дубіцький','uk','ukraine_before_1917',NULL,NULL,'1. Співаник тернопільського туристичного клубу "Кристал" 2. Aleksandr Chudobin. Взяв би я бандуру: пісні українські і лемківські. Spiewnik. Wroclaw: Bractwo Mlodziezy Prawoslawnej 3. "Чарiвна"','Пара — любощі: Кінь-Сива Гривонька-Біле Личенько. Еротика, жарти, забави: Катерини –... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... –... Спутай Коня на Отаву в Залізнії Пути. Буде Тобі Три Дорозі. Листки з приводу цієї Пісні: Еротичні містерії, тиждень від Катерини 7.12 до Калети — Передріздвяний Святочний час. Еротичні містерії, Калета 13.12 — Передріздвяний Святочний час. Стежки до листків про Українські пісні. azovchanka: Цю пiсню ми спiвали у хорi Харкiвської консерваторiї пiд керуванням Заслуженого дiяча мистецтв Юрiя Iвановича Кулика - завiдуючого кафедрою хорового диригування. Коли створився гурт "Чарiвна", в мене виникла iдея зробити аранжування цiєї пiснi для нашого квартету. Ми спiвали її на багатьох концертах. Пiсня мала успiх. Запис було зроблено на Українському радiо у мiстi Києвi. Виконується a cappella. У виконання гурту: Рушничок: http://chomikuj.pl/WDR/Muzyka+Ukrai*c5*84ska/Narodowa+-+Folk+- +Regionalna/Rushnychok Підбір акордів: Вадим Індутний','Ой чий то Кінь стоїть
Що Сива Гривонька
Сподобалась мені
Сподобалась мені
Тая Дівчинонька
Не так та Дівчина
Як Біле Личенько
Подай же Дівчино
Подай же Гарная
На Коня Рученьку
Дівчина підійшла
Рученьку подала
Бодай же я була
Бодай же я була
Кохання не знала.
Кохання-кохання
З Вечора до Рання
Як Сонечко зійде
як Сонечко зійде
Кохання відійде *
*Відміна:
Кохання-кохання
З Вечора до Рання
Як Сонечко зійде
як Сонечко зійде
Козак в Похід іде
Акорди:
Dm
Ой чий то Кінь стоїть
Am
Що Сива Гривонька
Dm
Сподобалась мені
Am
Сподобалась мені
Тая Дівчинонька
Інший варіянт акордів:
Ой чий то кінь стоїть
Що сива гривонька
Сподобалась мені,
сподобалась мені
Тая дівчинонька
Акорди до доданих файлів:
Ой чий то Кінь стоїть
Що Сива Гривонька
Спо_до_ба__лась мені
Сподо_ба__лась мені
Тая Дівчинонька','[''pisni.org.ua'', ''cat:dances'', ''cat:lirychni'', ''cat:narodni'', ''cat:waltzes'', ''Пісні до танцю'', ''Пісні про кохання, ліричні'', ''Народні пісні'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_25328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_25328','Ой чий то Кінь стоїть','Ой чий то Кінь стоїть
Що Сива Гривонька
Сподобалась мені
Сподобалась мені
Тая Дівчинонька
Не так та Дівчина
Як Біле Личенько
Подай же Дівчино
Подай же Гарная
На Коня Рученьку
Дівчина підійшла
Рученьку подала
Бодай же я була
Бодай же я була
Кохання не знала.
Кохання-кохання
З Вечора до Рання
Як Сонечко зійде
як Сонечко зійде
Кохання відійде *
*Відміна:
Кохання-кохання
З Вечора до Рання
Як Сонечко зійде
як Сонечко зійде
Козак в Похід іде
Акорди:
Dm
Ой чий то Кінь стоїть
Am
Що Сива Гривонька
Dm
Сподобалась мені
Am
Сподобалась мені
Тая Дівчинонька
Інший варіянт акордів:
Ой чий то кінь стоїть
Що сива гривонька
Сподобалась мені,
сподобалась мені
Тая дівчинонька
Акорди до доданих файлів:
Ой чий то Кінь стоїть
Що Сива Гривонька
Спо_до_ба__лась мені
Сподо_ба__лась мені
Тая Дівчинонька');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25328_l1','pisniua_25328','YouTube','https://www.youtube.com/watch?v=sZME7WWO-W4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25328_l2','pisniua_25328','YouTube','https://www.youtube.com/watch?v=YjyI0cFumT0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25328_l3','pisniua_25328','YouTube','https://www.youtube.com/watch?v=LbJV4wGpNVk','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25328_l4','pisniua_25328','YouTube','https://www.youtube.com/watch?v=AHTrlhVhRPY','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25328_l5','pisniua_25328','YouTube','https://www.youtube.com/watch?v=Aqf6T5MOJxI','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25328_l6','pisniua_25328','YouTube','https://www.youtube.com/watch?v=kj8NGG7Uo00','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25328_l7','pisniua_25328','YouTube','https://www.youtube.com/watch?v=n9bnvbbdOXc','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25328_l8','pisniua_25328','YouTube','https://www.youtube.com/watch?v=-s105Gqf2ss','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25328_l9','pisniua_25328','YouTube','https://www.youtube.com/watch?v=lgxsLZ56mlo','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25328_l10','pisniua_25328','YouTube','https://www.youtube.com/watch?v=BLD0NDpRZ4E','video',NULL,10);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_25328_l11','pisniua_25328','YouTube','https://www.youtube.com/watch?v=h8QYVpkdmAE','video',NULL,11);
DELETE FROM song_links WHERE song_id = 'pisniua_2536313';
DELETE FROM song_versions WHERE song_id = 'pisniua_2536313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2536313';
DELETE FROM songs WHERE id = 'pisniua_2536313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2536313','Вірити в дива','Музика: Андрій Чмут Слова: Андрій Чмут','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Там від ялинки голочки,
І сяйво свічки мерехтить,
За тим вікном різдвяний стіл,
Я бачу всіх, хто за ним сидить:
Тримає мама немовля,
А тато сина пригорта,
Вони щасливі, але не я,
Бо серце сльози омива...

Приспів:
Небесний Батько, в день Різдва
Прошу, почуй мене, почуй!
Нічо для себе не прошу,
Прошу, заверш страшну війну!
Небесний Батько, в день Різдва
Прошу, прошу, щоб дівчинка мала
Змогла повірити в дива,
Змогла обняти татуся!

Згадав я дівчинку малу,
Чекала тата на Різдво,
Намалювала Їх обох,
Таких смішних, веселих двох.
Проходив день, проходить два,
А тата все, чомусь, нема...
І наче вірила вона в дива,
Але де ж тато?.. Чом його нема?..

Приспів. (2)

Повірити в дива!..
Обняти татуся!..','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2536313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2536313','Вірити в дива','Там від ялинки голочки,
І сяйво свічки мерехтить,
За тим вікном різдвяний стіл,
Я бачу всіх, хто за ним сидить:
Тримає мама немовля,
А тато сина пригорта,
Вони щасливі, але не я,
Бо серце сльози омива...

Приспів:
Небесний Батько, в день Різдва
Прошу, почуй мене, почуй!
Нічо для себе не прошу,
Прошу, заверш страшну війну!
Небесний Батько, в день Різдва
Прошу, прошу, щоб дівчинка мала
Змогла повірити в дива,
Змогла обняти татуся!

Згадав я дівчинку малу,
Чекала тата на Різдво,
Намалювала Їх обох,
Таких смішних, веселих двох.
Проходив день, проходить два,
А тата все, чомусь, нема...
І наче вірила вона в дива,
Але де ж тато?.. Чом його нема?..

Приспів. (2)

Повірити в дива!..
Обняти татуся!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2536313_l1','pisniua_2536313','YouTube','https://www.youtube.com/watch?v=DQvs68nmlYY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2535512';
DELETE FROM song_versions WHERE song_id = 'pisniua_2535512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2535512';
DELETE FROM songs WHERE id = 'pisniua_2535512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2535512','На морозі калина','Музика: Андрій Ткач Слова: о. Петро Половко','uk','ukraine_1991',NULL,NULL,'аудіозапис (з репертуару заслуженої артистки естрадного мистецтва України - Оксани Чайківської)','Коляду виконує Оксана Чайківська (альбом: Із альбому колядок Оксани Чайківської).','На морозі калина —
Не скорилась одна!
Так і вся Україна —
Колядує вона!
Ми також не корімся
Цій холодній зимі,
І Різдвом звеселімся,
Хоч і ми на війні!

Приспів:
Не сумуй! Не сумуй!
З нами Бог — заспівай!
Колядуй! Колядуй
За свободу наш край!

На морозі калина
І не плаче одна!
Колядує країна
Від Карпат до Дніпра!
І ми теж не сумуймо,
Не корімся снігам,
І просім, колядуймо:
Мир подай, Боже, нам!

Приспів.','[''pisni.org.ua'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2535512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2535512','На морозі калина','На морозі калина —
Не скорилась одна!
Так і вся Україна —
Колядує вона!
Ми також не корімся
Цій холодній зимі,
І Різдвом звеселімся,
Хоч і ми на війні!

Приспів:
Не сумуй! Не сумуй!
З нами Бог — заспівай!
Колядуй! Колядуй
За свободу наш край!

На морозі калина
І не плаче одна!
Колядує країна
Від Карпат до Дніпра!
І ми теж не сумуймо,
Не корімся снігам,
І просім, колядуймо:
Мир подай, Боже, нам!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2533471';
DELETE FROM song_versions WHERE song_id = 'pisniua_2533471';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2533471';
DELETE FROM songs WHERE id = 'pisniua_2533471';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2533471','Миколай зростом, як мій тато','Музика: Аркадій Войтюк Слова: Аркадій Войтюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Якось так щороку співпадає.
Чому? - Ніхто не знає.
Я прихід бороданя, Святого Миколая,
З мамою, без тата, зустрічаю.
То дзвінок - і тата у суботу,
В вихідний, чомусь, кличуть на роботу.
То піде собі на двір килим вибивати,
Або вийде сміття викидати.
В цей момент зайде у дім Святий Миколай,
І тато знов проґавить все, на жаль.
Завтра у садочку буде безліч запитань,
Який же виглядає має Миколай?

Приспів:
Миколай зростом, як мій тато,
Тільки в нього іграшок багато!
Як він буде працювати далі, не збагну,
Миколай пішов, а посох свій забув...
В Миколая мешти, як у тата,
Тільки він в них їздить на санчатах.
Що помітив - я пізніше тату розкажу,
Миколай ішов і мамі підморгнув.

Святий Миколай,
На мого тата зачекай!
Святий Миколай,
Від нас тікати не поспішай!
Я розумію, що він дорослий
І буває несерйозним,
Але насправді, повір мені,
Найкращий тато на Землі!

Приспів.

Святий Миколай,
На мого тата зачекай!
Святий Миколай,
Від нас тікати не поспішай!
Я розумію, що він дорослий
І буває несерйозним,
Але насправді, повір мені,
Найкращий тато на Землі!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2533471'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2533471','Миколай зростом, як мій тато','Якось так щороку співпадає.
Чому? - Ніхто не знає.
Я прихід бороданя, Святого Миколая,
З мамою, без тата, зустрічаю.
То дзвінок - і тата у суботу,
В вихідний, чомусь, кличуть на роботу.
То піде собі на двір килим вибивати,
Або вийде сміття викидати.
В цей момент зайде у дім Святий Миколай,
І тато знов проґавить все, на жаль.
Завтра у садочку буде безліч запитань,
Який же виглядає має Миколай?

Приспів:
Миколай зростом, як мій тато,
Тільки в нього іграшок багато!
Як він буде працювати далі, не збагну,
Миколай пішов, а посох свій забув...
В Миколая мешти, як у тата,
Тільки він в них їздить на санчатах.
Що помітив - я пізніше тату розкажу,
Миколай ішов і мамі підморгнув.

Святий Миколай,
На мого тата зачекай!
Святий Миколай,
Від нас тікати не поспішай!
Я розумію, що він дорослий
І буває несерйозним,
Але насправді, повір мені,
Найкращий тато на Землі!

Приспів.

Святий Миколай,
На мого тата зачекай!
Святий Миколай,
Від нас тікати не поспішай!
Я розумію, що він дорослий
І буває несерйозним,
Але насправді, повір мені,
Найкращий тато на Землі!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2533471_l1','pisniua_2533471','YouTube','https://www.youtube.com/watch?v=JVqEhA8zbpY','video',NULL,1);
