DELETE FROM song_links WHERE song_id = 'pisniua_110220';
DELETE FROM song_versions WHERE song_id = 'pisniua_110220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_110220';
DELETE FROM songs WHERE id = 'pisniua_110220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_110220','Ні, я не ту кохав...','Музика: А. Говорадло Слова: А. Говорадло, Олександр Положинський. Виконує: Тартак, Дует "Світязь"','uk','ukraine_1991',NULL,NULL,'http://www.tartak.com.ua/song.html','Аранжування: Д. Гершензон та "Тартак" Виконують "Тартак" та дует "Світязь"','У полоні темноти, наче сон з''явилась ти.
Та я прокинувся, тому що ти лишилась назавжди.
Я кохав тебе, як міг, квіти клав тобі до ніг,
Та білі мухи налетіли - вкрив любов холодний сніг.
Ця любов мене дістала - перед очима матиляла,
Цілий день, цілий день, цілий день мене пиляла!
І я спокій втрачав, я на тебе кричав,
Я горлянку зривав, як собака гарчав.
Ну скільки вже можна мені тебе вчити -
Ти дай мені трошечки перепочити,
Ти вилізи з хати, ти піди погуляти -
Людей подивитись, себе показати.
Погуляла, покружляла, погуляла, покружляла,
Людей подивилась, себе показала.
Погуляла, покружляла, погуляла, покружляла,
Та до мене назад ти оглоблі вертала.

Ні, ні я не ту кохав, не ті слова я говорив!
Ні, ні я не ту чекав, не ту теплом своїм зігрів!
Ніч, ніч осліпила нас - блакитних снів жадана мить!
Ні, ні я не тій моливсь - любов украла ніч!

Мов настояне вино, випив я любов давно -
Так добряче нализався, що мені вже все одно.
Проживу без тебе я, ти давно вже не моя -
Опинилась у в''язниці, тепер бог тобі суддя.
Добре так, добре так - я тепер одинак!
Добре так, добре так - я тепер холостяк!
Та твоє миле обличчя мене знов до себе кличе,
І цієї мани не позбутись ніяк!

Як приснишся вночі - то хоч бери та кричи -
Закриють очі глядачі, затулять вуха слухачі!
Не хочу знати, де ти, і знати, де тебе знайти.
Ти розумієш, чи ні? Ти не потрібна мені!

Ні, ні я не ту кохав, не ті слова я говорив!
Ні, ні я не ту чекав, не ту теплом своїм зігрів!
Ніч, ніч осліпила нас - блакитних снів жадана мить!
Ні, ні я не тій моливсь - любов украла ніч!','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_110220'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_110220','Ні, я не ту кохав...','У полоні темноти, наче сон з''явилась ти.
Та я прокинувся, тому що ти лишилась назавжди.
Я кохав тебе, як міг, квіти клав тобі до ніг,
Та білі мухи налетіли - вкрив любов холодний сніг.
Ця любов мене дістала - перед очима матиляла,
Цілий день, цілий день, цілий день мене пиляла!
І я спокій втрачав, я на тебе кричав,
Я горлянку зривав, як собака гарчав.
Ну скільки вже можна мені тебе вчити -
Ти дай мені трошечки перепочити,
Ти вилізи з хати, ти піди погуляти -
Людей подивитись, себе показати.
Погуляла, покружляла, погуляла, покружляла,
Людей подивилась, себе показала.
Погуляла, покружляла, погуляла, покружляла,
Та до мене назад ти оглоблі вертала.

Ні, ні я не ту кохав, не ті слова я говорив!
Ні, ні я не ту чекав, не ту теплом своїм зігрів!
Ніч, ніч осліпила нас - блакитних снів жадана мить!
Ні, ні я не тій моливсь - любов украла ніч!

Мов настояне вино, випив я любов давно -
Так добряче нализався, що мені вже все одно.
Проживу без тебе я, ти давно вже не моя -
Опинилась у в''язниці, тепер бог тобі суддя.
Добре так, добре так - я тепер одинак!
Добре так, добре так - я тепер холостяк!
Та твоє миле обличчя мене знов до себе кличе,
І цієї мани не позбутись ніяк!

Як приснишся вночі - то хоч бери та кричи -
Закриють очі глядачі, затулять вуха слухачі!
Не хочу знати, де ти, і знати, де тебе знайти.
Ти розумієш, чи ні? Ти не потрібна мені!

Ні, ні я не ту кохав, не ті слова я говорив!
Ні, ні я не ту чекав, не ту теплом своїм зігрів!
Ніч, ніч осліпила нас - блакитних снів жадана мить!
Ні, ні я не тій моливсь - любов украла ніч!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_110220_l1','pisniua_110220','YouTube','https://www.youtube.com/watch?v=P5EWb6GYPas','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_110220_l2','pisniua_110220','YouTube','https://www.youtube.com/watch?v=PDEThXLArXw','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_1100505';
DELETE FROM song_versions WHERE song_id = 'pisniua_1100505';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1100505';
DELETE FROM songs WHERE id = 'pisniua_1100505';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1100505','Ой ходімо, жінко','Українська народна пісня. Виконує: Народний хор Україна','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'-Ой ходімо, жінко, ходімо, ходімо,
Ой ходімо жінко пшеницю в''язати.

-Ой хоч піду в''язати не буду,
Бо в пшениці полова болить в мене голова.

-Ой ходімо, жінко, ходімо, ходімо,
Ой ходімо жінко ячмінь в''язати.

-Ой хоч піду в''язати не буду,
Бо в ячмені гістячки болять в мене кісточки.

-Ой ходімо, жінко, ходімо,ходімо,
Ой ходімо жінко буряки копати.

-Ой хоч піду копати не буду,
Бо велика гичка а я невеличка.

-Ой ходімо, жінко, ходімо,ходімо,
Ой ходімо, жінко, до кума гуляти

-Ой дай Боже в здоров''ї прожити
Через день через два до кума ходити.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1100505'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1100505','Ой ходімо, жінко','-Ой ходімо, жінко, ходімо, ходімо,
Ой ходімо жінко пшеницю в''язати.

-Ой хоч піду в''язати не буду,
Бо в пшениці полова болить в мене голова.

-Ой ходімо, жінко, ходімо, ходімо,
Ой ходімо жінко ячмінь в''язати.

-Ой хоч піду в''язати не буду,
Бо в ячмені гістячки болять в мене кісточки.

-Ой ходімо, жінко, ходімо,ходімо,
Ой ходімо жінко буряки копати.

-Ой хоч піду копати не буду,
Бо велика гичка а я невеличка.

-Ой ходімо, жінко, ходімо,ходімо,
Ой ходімо, жінко, до кума гуляти

-Ой дай Боже в здоров''ї прожити
Через день через два до кума ходити.');
DELETE FROM song_links WHERE song_id = 'pisniua_1119426';
DELETE FROM song_versions WHERE song_id = 'pisniua_1119426';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1119426';
DELETE FROM songs WHERE id = 'pisniua_1119426';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1119426','Колискова','Музика: Остап Гавриш Слова: Тамара Шевченко. Виконує: Маріанна Гавриш','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Заспівай, матусю, колискову,
Щоб почути любу пісню знову.
Заспівай так лагідно, тихенько,
Я згадаю, як була маленька.

Розкажи мені, матусю, казку,
Щоб відчуть любов твою і ласку.
Я до тебе ніжно пригорнуся
І на мить в дитинство повернуся.

То ж давай забудемо тривоги,
Не страшні нам відстані-дороги.
Ми близькі, хоч і такі далекі.
Твій привіт несуть мені лелеки','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1119426'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1119426','Колискова','Заспівай, матусю, колискову,
Щоб почути любу пісню знову.
Заспівай так лагідно, тихенько,
Я згадаю, як була маленька.

Розкажи мені, матусю, казку,
Щоб відчуть любов твою і ласку.
Я до тебе ніжно пригорнуся
І на мить в дитинство повернуся.

То ж давай забудемо тривоги,
Не страшні нам відстані-дороги.
Ми близькі, хоч і такі далекі.
Твій привіт несуть мені лелеки');
DELETE FROM song_links WHERE song_id = 'pisniua_1120921';
DELETE FROM song_versions WHERE song_id = 'pisniua_1120921';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1120921';
DELETE FROM songs WHERE id = 'pisniua_1120921';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1120921','Бувай ми здорова','Виконує: Львівське Ретро','uk','ukraine_1991',NULL,NULL,'http://nashe.com.ua/song.htm?id=2443&art=214',NULL,'Куплю си ґазету, сяду до трамваю
Бувай ми здорова, я вже від''їжджаю (2)
Ґазету читаю, їду у трамваю
Бувай ми здорова, вже тя не чекаю

Куплю си кашкета, на вуха нагачу
Бувай ми здорова, вже тебе не бачу (2)
Купив чи кашкета, моїх вух не видно
Бувай ми здорова, вже мені не стидно

Куплю си бамбона, солодощі маю
Бувай ми здорова, я відпочиваю (2)

Куплю си телєфон, зателєфоную
Бувай ми здорова, я тебе не чую (2)
Купив си телєфон, не телєфонує
Бувай ми здорова, колись тя почую

Куплю си тромбона, голосно заграю
Бувай ми здорова, я тя не кохаю (2)
Купив си тромбона, та й голосно граю
Бувай ми здорова, я тебе не знаю

Куплю си сигару, трохи зафайкочу
Бувай ми здорова, я тебе не хочу (2)

Бувай ми здорова, моя солодонька
Бувай ми здорова, моя дівчинонька (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1120921'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1120921','Бувай ми здорова','Куплю си ґазету, сяду до трамваю
Бувай ми здорова, я вже від''їжджаю (2)
Ґазету читаю, їду у трамваю
Бувай ми здорова, вже тя не чекаю

Куплю си кашкета, на вуха нагачу
Бувай ми здорова, вже тебе не бачу (2)
Купив чи кашкета, моїх вух не видно
Бувай ми здорова, вже мені не стидно

Куплю си бамбона, солодощі маю
Бувай ми здорова, я відпочиваю (2)

Куплю си телєфон, зателєфоную
Бувай ми здорова, я тебе не чую (2)
Купив си телєфон, не телєфонує
Бувай ми здорова, колись тя почую

Куплю си тромбона, голосно заграю
Бувай ми здорова, я тя не кохаю (2)
Купив си тромбона, та й голосно граю
Бувай ми здорова, я тебе не знаю

Куплю си сигару, трохи зафайкочу
Бувай ми здорова, я тебе не хочу (2)

Бувай ми здорова, моя солодонька
Бувай ми здорова, моя дівчинонька (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1120921_l1','pisniua_1120921','YouTube','https://www.youtube.com/watch?v=HADiIMgvGJs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1125725';
DELETE FROM song_versions WHERE song_id = 'pisniua_1125725';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1125725';
DELETE FROM songs WHERE id = 'pisniua_1125725';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1125725','Розпилася молодиця','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1964','Пісні з Волині, Музична Україна, Київ-1970','Входить до розділу "Жартівливі та гумористичні пісні". Записана в с. Щурин Рожищенського р-ну від О. П. Юхимчук, 1964','Розпилася молодиця,
Розпилася.
Копійочка з червінчиком
Осталася.

Цілий тиждень копієчку
торгувала,
А в неділю чоловіка
Позичала.

"Ой сусідко, сусідонько,
На добридень!.
Позич мені чоловіка,
Хоч на один день".

"А я тобі чоловіка
не позичу,
Бо я його за рік, за два
Не покличу.

Лучче тобі я позичу
Сита-решета.
Чоловіка не позичу
Сама молода.

Лучче тобі я позичу
Плуга-борони.
Чоловіка не позичу,
Боже борони.

То ти собі бороною
Заволочиш,
А то мого чоловіка
Розволочиш" .','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1125725'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1125725','Розпилася молодиця','Розпилася молодиця,
Розпилася.
Копійочка з червінчиком
Осталася.

Цілий тиждень копієчку
торгувала,
А в неділю чоловіка
Позичала.

"Ой сусідко, сусідонько,
На добридень!.
Позич мені чоловіка,
Хоч на один день".

"А я тобі чоловіка
не позичу,
Бо я його за рік, за два
Не покличу.

Лучче тобі я позичу
Сита-решета.
Чоловіка не позичу
Сама молода.

Лучче тобі я позичу
Плуга-борони.
Чоловіка не позичу,
Боже борони.

То ти собі бороною
Заволочиш,
А то мого чоловіка
Розволочиш" .');
DELETE FROM song_links WHERE song_id = 'pisniua_1126909';
DELETE FROM song_versions WHERE song_id = 'pisniua_1126909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1126909';
DELETE FROM songs WHERE id = 'pisniua_1126909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1126909','Ой виходьте, парубойки','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1964','Пісні з Волині, Музична Україна, Київ - 1970','Веснянка. Записана в с. Трилисиця Рожищенського р-ну від групи жінок, 1964','Ой виходьте, прубойки,
На високу гірку.
Вибирайте, парубойки,
Найхорішу дівку.

Кожна гарна , кожна гарна,
Жодна не погана.
А між ними Галюсина,
Як вимальована.','[''pisni.org.ua'', ''cat:volynski'', ''Пісні з Волині'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1126909'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1126909','Ой виходьте, парубойки','Ой виходьте, прубойки,
На високу гірку.
Вибирайте, парубойки,
Найхорішу дівку.

Кожна гарна , кожна гарна,
Жодна не погана.
А між ними Галюсина,
Як вимальована.');
DELETE FROM song_links WHERE song_id = 'pisniua_1141323';
DELETE FROM song_versions WHERE song_id = 'pisniua_1141323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1141323';
DELETE FROM songs WHERE id = 'pisniua_1141323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1141323','Розпросторся, душе моя','Слова: Василь Стус. Виконує: Олена Голуб','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Розпросторся, душе моя, на чотири татамі,
І не кулься од нагая, і не крийся руками.
Хай у тебе є дві межі та середина - справжня,
Марно, вороже, ворожить - молода чи поважна?..

І як то сниться мені земля, на якій лиш ночую,
Як мені небеса болять, коли їх я не чую.
Як постав в очах мій край, наче стовп осіянний,
Каже, сина бери, карай, вибір для мене, коханий.

Тож просторся, душе моя, на чотири татамі,
І не кулься од нагая, і не крийся руками.
Тож просторся, душе моя, на чотири татамі,
І не кулься од нагая, і не крийся руками!

Тож просторся, душе моя!
Тож просторся, душе моя!','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1141323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1141323','Розпросторся, душе моя','Розпросторся, душе моя, на чотири татамі,
І не кулься од нагая, і не крийся руками.
Хай у тебе є дві межі та середина - справжня,
Марно, вороже, ворожить - молода чи поважна?..

І як то сниться мені земля, на якій лиш ночую,
Як мені небеса болять, коли їх я не чую.
Як постав в очах мій край, наче стовп осіянний,
Каже, сина бери, карай, вибір для мене, коханий.

Тож просторся, душе моя, на чотири татамі,
І не кулься од нагая, і не крийся руками.
Тож просторся, душе моя, на чотири татамі,
І не кулься од нагая, і не крийся руками!

Тож просторся, душе моя!
Тож просторся, душе моя!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1141323_l1','pisniua_1141323','YouTube','https://www.youtube.com/watch?v=-r8MoEJHJCE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1141323_l2','pisniua_1141323','YouTube','https://www.youtube.com/watch?v=Fy4Nps2POUk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1141323_l3','pisniua_1141323','YouTube','https://www.youtube.com/watch?v=vZXqLZ6Z-2A','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_1144606';
DELETE FROM song_versions WHERE song_id = 'pisniua_1144606';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1144606';
DELETE FROM songs WHERE id = 'pisniua_1144606';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1144606','Новий рік','Музика: Фрідрік Карлссон Слова: Оксана Голуб. Виконує: Оксана Голуб','uk','ukraine_1991',NULL,NULL,'Продюсер',NULL,'Тисячі вогнів
Місто знов осяють,
Мов з казкових снів
Білий сніг кружляє.

Приспів:
Так, хоч і дорослі ми
Та у цю ніч з дітьми
Свято чекаємо і див
Щоб наступний рік для нас
Всі двері відкрив.

Що минулий рік
Кожному залишив
Пригадаєм ми
В новорічній тиші.

Приспів:
І потім кришталю дзвін,
Відлік нових хвилин
Знов розпочне прощанню час
Бо вже Новий рік іде,
Чекає на нас','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1144606'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1144606','Новий рік','Тисячі вогнів
Місто знов осяють,
Мов з казкових снів
Білий сніг кружляє.

Приспів:
Так, хоч і дорослі ми
Та у цю ніч з дітьми
Свято чекаємо і див
Щоб наступний рік для нас
Всі двері відкрив.

Що минулий рік
Кожному залишив
Пригадаєм ми
В новорічній тиші.

Приспів:
І потім кришталю дзвін,
Відлік нових хвилин
Знов розпочне прощанню час
Бо вже Новий рік іде,
Чекає на нас');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1144606_l1','pisniua_1144606','YouTube','https://www.youtube.com/watch?v=JlsI5ui5KHs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1144606_l2','pisniua_1144606','YouTube','https://www.youtube.com/watch?v=2yHdppr1TAI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1144606_l3','pisniua_1144606','YouTube','https://www.youtube.com/watch?v=i3EBXaJXm5c','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1144606_l4','pisniua_1144606','YouTube','https://www.youtube.com/watch?v=XU8Bo9PLV3w','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_1164404';
DELETE FROM song_versions WHERE song_id = 'pisniua_1164404';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1164404';
DELETE FROM songs WHERE id = 'pisniua_1164404';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1164404','Маєва нічка','Музика: Лев Лепкий Слова: Лев Лепкий. Виконує: Рушничок, Марта Шпак','uk','ukraine_1991',NULL,NULL,NULL,'Колискова пісня Знаками питання позначені нерозбірливі місця У тексті - дулі - груші.','Маєва нічка леготом дише,
Ген співа соловейко.
Пісня кохання до сну колише    |
Ой люлі, моє серденько.        | (2)

Ой люлі, люлі, люлі
Спи, серце моє, спи
До сну вколишуть дулі ??
Ой люлі, серце моє.

Де вчора блакить в тіні сховалась
Листя шепоче легенько
Сон тихий в мрію душі зіллявся |
Ой люлі, моє серденько         | (2)

Ой люлі, люлі, люлі
Спи, серце моє, спи
До сну вколишуть дулі
Ой люлі, серце моє.

Люлі серденько, тільки думками
До тебе з поля полину
Невпинна пісня моя вколише     |
Тебе в вечірню годину          | (2)

Ой люлі, люлі, люлі
Спи, серце моє, спи
До сну вколишуть дулі
Ой люлі, серце моє','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1164404'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1164404','Маєва нічка','Маєва нічка леготом дише,
Ген співа соловейко.
Пісня кохання до сну колише    |
Ой люлі, моє серденько.        | (2)

Ой люлі, люлі, люлі
Спи, серце моє, спи
До сну вколишуть дулі ??
Ой люлі, серце моє.

Де вчора блакить в тіні сховалась
Листя шепоче легенько
Сон тихий в мрію душі зіллявся |
Ой люлі, моє серденько         | (2)

Ой люлі, люлі, люлі
Спи, серце моє, спи
До сну вколишуть дулі
Ой люлі, серце моє.

Люлі серденько, тільки думками
До тебе з поля полину
Невпинна пісня моя вколише     |
Тебе в вечірню годину          | (2)

Ой люлі, люлі, люлі
Спи, серце моє, спи
До сну вколишуть дулі
Ой люлі, серце моє');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1164404_l1','pisniua_1164404','YouTube','https://www.youtube.com/watch?v=6_Qwptq4hKU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_11808';
DELETE FROM song_versions WHERE song_id = 'pisniua_11808';
DELETE FROM songs_fts WHERE song_id = 'pisniua_11808';
DELETE FROM songs WHERE id = 'pisniua_11808';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_11808','Де ти тепер','Музика: Ігор Шамо, Вадим Гомоляка Слова: Борис Палійчук. Виконує: Квітка Цісик, Ніна Шестакова, Таїсія Повалій, Олександр Малінін, Елеонора Яроцька, Марта Шпак','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: Nick Falafivka','Місто спить, згасли вогні,
Разом гуляли з тобою всю ніч ми.
Згадка прощання, перші признання...
Де тепер вони?
Ми гадали, зустрічі ждали,
Та пройшли ті дні
Ти сказав: "і в час біди
Дружби такої ніхто не зітре з землі"
Довга розлука, віддалі мука
Ти в душі завжди!
В даль полинеш, все покинеш
Прийдеш знов сюди.
Відгукнись! Де ти в цей час?
Знаю, ти згадував в горі мене не раз...
Весняні ночі стали коротші,
Тільки не для нас
Все промине, в даль полине
Наш любимий вальс.
Наш любимий вальс.','[''pisni.org.ua'', ''cat:dances'', ''cat:lirychni'', ''cat:waltzes'', ''Пісні до танцю'', ''Пісні про кохання, ліричні'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_11808'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_11808','Де ти тепер','Місто спить, згасли вогні,
Разом гуляли з тобою всю ніч ми.
Згадка прощання, перші признання...
Де тепер вони?
Ми гадали, зустрічі ждали,
Та пройшли ті дні
Ти сказав: "і в час біди
Дружби такої ніхто не зітре з землі"
Довга розлука, віддалі мука
Ти в душі завжди!
В даль полинеш, все покинеш
Прийдеш знов сюди.
Відгукнись! Де ти в цей час?
Знаю, ти згадував в горі мене не раз...
Весняні ночі стали коротші,
Тільки не для нас
Все промине, в даль полине
Наш любимий вальс.
Наш любимий вальс.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_11808_l1','pisniua_11808','YouTube','https://www.youtube.com/watch?v=HavVNW6OhM4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_11808_l2','pisniua_11808','YouTube','https://www.youtube.com/watch?v=Q--JGhMCsTc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_11808_l3','pisniua_11808','YouTube','https://www.youtube.com/watch?v=olwVAajTILg','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_11808_l4','pisniua_11808','YouTube','https://www.youtube.com/watch?v=DOUI78pqqug','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_11808_l5','pisniua_11808','YouTube','https://www.youtube.com/watch?v=dsIcdWqyfdo','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_11808_l6','pisniua_11808','YouTube','https://www.youtube.com/watch?v=sxY7LblNNuY','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_1188426';
DELETE FROM song_versions WHERE song_id = 'pisniua_1188426';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1188426';
DELETE FROM songs WHERE id = 'pisniua_1188426';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1188426','Мире лукавий','Музика: народна Слова: о. Стефан Яворський. Виконує: Ярослав Крисько','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Мире лукавий, скорбми ісполненний!
Коль ти нетвердий, коль несовершенний!
Коль суть не благі твої зді утіхи,
Коль суть плачевні радості і сміхи.

Коль неспокойні твої честь, богатство,
Вітр, дим, нічтоже, все непостоянство.
Цвіте тут в єдин час, в другий увядає,
Днесь на престолі - завтра низпадає.

Хде єсть гордяйся Давид вопіяше
Все мимо ідє, уже той не бяше.
Мниться нам сладкі твої зді забави,
Сластьми ізнуренні суть нашії нрави.

Похоті смислу зріти препятствують,
Горкоє сладко бити показують.
Високий сущий всяк в мирі гордиться,
Мнят же богаті што смерть їх боїться.

Што нам в богатстві аще смерть царствує,
Ін собирає, ін наслідствує.
Што нам за польза от честі биває
Єгда смерть ранги весьма презирає.

Єдина убо мисль вірним да буде,
Как Судія в той день страшний прибуде!
Спросят нас бідних там вскорі отвіта -
Почто теряли всує наші літа!','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1188426'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1188426','Мире лукавий','Мире лукавий, скорбми ісполненний!
Коль ти нетвердий, коль несовершенний!
Коль суть не благі твої зді утіхи,
Коль суть плачевні радості і сміхи.

Коль неспокойні твої честь, богатство,
Вітр, дим, нічтоже, все непостоянство.
Цвіте тут в єдин час, в другий увядає,
Днесь на престолі - завтра низпадає.

Хде єсть гордяйся Давид вопіяше
Все мимо ідє, уже той не бяше.
Мниться нам сладкі твої зді забави,
Сластьми ізнуренні суть нашії нрави.

Похоті смислу зріти препятствують,
Горкоє сладко бити показують.
Високий сущий всяк в мирі гордиться,
Мнят же богаті што смерть їх боїться.

Што нам в богатстві аще смерть царствує,
Ін собирає, ін наслідствує.
Што нам за польза от честі биває
Єгда смерть ранги весьма презирає.

Єдина убо мисль вірним да буде,
Как Судія в той день страшний прибуде!
Спросят нас бідних там вскорі отвіта -
Почто теряли всує наші літа!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1188426_l1','pisniua_1188426','YouTube','https://www.youtube.com/watch?v=hSPFV0kk1iI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1188426_l2','pisniua_1188426','YouTube','https://www.youtube.com/watch?v=mCJ4DW9TGFk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1188426_l3','pisniua_1188426','YouTube','https://www.youtube.com/watch?v=FoxHFpaAdWM','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1188426_l4','pisniua_1188426','YouTube','https://www.youtube.com/watch?v=TaxM6yeThDE','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1188426_l5','pisniua_1188426','YouTube','https://www.youtube.com/watch?v=5GM4fEnXzEk','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1188426_l6','pisniua_1188426','YouTube','https://www.youtube.com/watch?v=veEgXZdJ52w','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_1194404';
DELETE FROM song_versions WHERE song_id = 'pisniua_1194404';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1194404';
DELETE FROM songs WHERE id = 'pisniua_1194404';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1194404','Колискова Україні','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Засинає сонце, засинає небо
І зорить вечірняя зоря,
Засинає вітер за моїм віконцем,
Тільки чути шепіт солов''я.

Приспів:
Люлі-люлі, земле моя рідна,
Люлі-люлі, ріки і поля.
У долонях Божих Україна
Засинає, наче немовля.
Люлі-люлі, люлі-люлі,
Люлі-люлі, люлі-люлі-ля...
Люлі-люлі, люлі-люлі,
Люлі-люлі, люлі-люлі-ля...

Задивились в річку верби златокосі,
Нахилили віти до води,
І упала зірка в кришталеві роси,
І заснула в шовковій траві.

Приспів. (2)','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1194404'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1194404','Колискова Україні','Засинає сонце, засинає небо
І зорить вечірняя зоря,
Засинає вітер за моїм віконцем,
Тільки чути шепіт солов''я.

Приспів:
Люлі-люлі, земле моя рідна,
Люлі-люлі, ріки і поля.
У долонях Божих Україна
Засинає, наче немовля.
Люлі-люлі, люлі-люлі,
Люлі-люлі, люлі-люлі-ля...
Люлі-люлі, люлі-люлі,
Люлі-люлі, люлі-люлі-ля...

Задивились в річку верби златокосі,
Нахилили віти до води,
І упала зірка в кришталеві роси,
І заснула в шовковій траві.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_1196220';
DELETE FROM song_versions WHERE song_id = 'pisniua_1196220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1196220';
DELETE FROM songs WHERE id = 'pisniua_1196220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1196220','Сонце сідає, ніч наступає','Музика: Сергій Татієнко Слова: Валентина Юрченко. Виконує: Тріо Либідь','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сонце сідає,
Ніч наступає,
Спів соловейка
Чути у гаї.
Дрімають вікна
Хатин чепурненьких,
Десь чути пісню
Дитині маленькій...

Приспів:
Спи, моє любе,
Сил набирайся...
Спи і до ранку
Не просинайся...
Сон твій спокійний
Я охороняю,
Бо щастя більшого
За тебе не маю...
Люлі-люлі, люлі-люлі..

Я вже й не знаю
Снів тих чарівних,
Роки, як свічка,
Швидко згоріли...
В щасті ніколи
Мені вже не жити,
З щастя твого
Можу тільки радіти...

Приспів.

Ніч опустилась,
Чути у гаю,
Як соловейко
Пісню співає...
Наче в долонях,
Стискає серденько
Та колискова
Дитині маленькій...

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1196220'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1196220','Сонце сідає, ніч наступає','Сонце сідає,
Ніч наступає,
Спів соловейка
Чути у гаї.
Дрімають вікна
Хатин чепурненьких,
Десь чути пісню
Дитині маленькій...

Приспів:
Спи, моє любе,
Сил набирайся...
Спи і до ранку
Не просинайся...
Сон твій спокійний
Я охороняю,
Бо щастя більшого
За тебе не маю...
Люлі-люлі, люлі-люлі..

Я вже й не знаю
Снів тих чарівних,
Роки, як свічка,
Швидко згоріли...
В щасті ніколи
Мені вже не жити,
З щастя твого
Можу тільки радіти...

Приспів.

Ніч опустилась,
Чути у гаю,
Як соловейко
Пісню співає...
Наче в долонях,
Стискає серденько
Та колискова
Дитині маленькій...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_1215101';
DELETE FROM song_versions WHERE song_id = 'pisniua_1215101';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1215101';
DELETE FROM songs WHERE id = 'pisniua_1215101';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1215101','Маршрутка','Музика: Андрій Кузьменко Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів - Олег Сторожук. Також зручно грати в тональності Em. Отже: замість Fm,C#,G# - Em,C,G','Коли зранку встаю - каву наливаю,
G#
Бо без неї трохи туго соображаю,
Штани натягую, "I''m glad to see you"
G#
І у тапочках на босу ногу вибігаю.
Потім розумію, шо я замерзаю
G#
І до дому за туфлями повертаю.
На зупинку свою знову прибігаю
G#
І нервово із народом на автобус я чекаю.

Приспів:
Їде маршрутка, як велика собача будка,
На дорозі всіх підрізає,
G#
Бо шансон в салоні рубає:
Владімірський централ!
G#
Владімірський централ!
Владімірський централ!
G#
Владімірський центра-тра-тра-тра-
Тра-тра-тра-тра-трал!

Руку піднімаю, тіпа зупиняю,
І в салон, як Джекі Чан, через вікно залізаю,
На когось падаю, на когось кашляю,
І дві гривні для воділи із кишені дістаю.
Трохи матюкаю, трохи підскакую,
І сусіди всі мене із різних боків "I love you",
На коліна стаю - трохи подихаю,
І до виходу пролізти між ногами пробую.

Приспів. (2)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''cat:zhartivlyvi'', ''Соціально-побутові пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1215101'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1215101','Маршрутка','Коли зранку встаю - каву наливаю,
G#
Бо без неї трохи туго соображаю,
Штани натягую, "I''m glad to see you"
G#
І у тапочках на босу ногу вибігаю.
Потім розумію, шо я замерзаю
G#
І до дому за туфлями повертаю.
На зупинку свою знову прибігаю
G#
І нервово із народом на автобус я чекаю.

Приспів:
Їде маршрутка, як велика собача будка,
На дорозі всіх підрізає,
G#
Бо шансон в салоні рубає:
Владімірський централ!
G#
Владімірський централ!
Владімірський централ!
G#
Владімірський центра-тра-тра-тра-
Тра-тра-тра-тра-трал!

Руку піднімаю, тіпа зупиняю,
І в салон, як Джекі Чан, через вікно залізаю,
На когось падаю, на когось кашляю,
І дві гривні для воділи із кишені дістаю.
Трохи матюкаю, трохи підскакую,
І сусіди всі мене із різних боків "I love you",
На коліна стаю - трохи подихаю,
І до виходу пролізти між ногами пробую.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1215101_l1','pisniua_1215101','YouTube','https://www.youtube.com/watch?v=WMGKtHey_YQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1215101_l2','pisniua_1215101','YouTube','https://www.youtube.com/watch?v=qvak3Q9XgKU','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1215101_l3','pisniua_1215101','YouTube','https://www.youtube.com/watch?v=QZ5jI_sQ2No','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1215101_l4','pisniua_1215101','YouTube','https://www.youtube.com/watch?v=sR-6oh_c6NE','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_1194707';
DELETE FROM song_versions WHERE song_id = 'pisniua_1194707';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1194707';
DELETE FROM songs WHERE id = 'pisniua_1194707';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1194707','Золотава осінь','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май, Гурт "Зоряна ніч", Петро Довгошия','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Осінній жовтий лист
Кружляє зверху вниз,
Свої наспівує пісні.
Ти кажеш - не журись,
Я повернусь колись -
Не обіцяй цього мені.
І марно не кажи,
І не тривож душі,
Мені лишилися пісні.
Бо знаю я сама,
Що йде до нас зима,
І так далеко до весни.

Приспів:
Золотава осінь
Розпустила коси
І птахом у небо летить.
За тобою буду
Все життя жаліти
І серденько буде боліть.
Золотава осінь
Йде простоволоса,
Шепоче мені - зупинись...
І питає вітра,
Де так довго він баривсь?..

І знову жовтий лист -
Від осені сюрприз -
Дарує усміх золотий,
Кажу слова не ті,
Гублюсь на самоті,
Лиш на прощання погляд твій.
І марно не кажи,
І не тривож душі,
Мені лишилися пісні,
Бо знаю я сама,
Що йде до нас зима
І так далеко до весни...

Приспів. (2)

Все питає вітра,
Де так довго він баривсь?','[''pisni.org.ua'', ''cat:lirychni'', ''cat:nostalgia'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1194707'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1194707','Золотава осінь','Осінній жовтий лист
Кружляє зверху вниз,
Свої наспівує пісні.
Ти кажеш - не журись,
Я повернусь колись -
Не обіцяй цього мені.
І марно не кажи,
І не тривож душі,
Мені лишилися пісні.
Бо знаю я сама,
Що йде до нас зима,
І так далеко до весни.

Приспів:
Золотава осінь
Розпустила коси
І птахом у небо летить.
За тобою буду
Все життя жаліти
І серденько буде боліть.
Золотава осінь
Йде простоволоса,
Шепоче мені - зупинись...
І питає вітра,
Де так довго він баривсь?..

І знову жовтий лист -
Від осені сюрприз -
Дарує усміх золотий,
Кажу слова не ті,
Гублюсь на самоті,
Лиш на прощання погляд твій.
І марно не кажи,
І не тривож душі,
Мені лишилися пісні,
Бо знаю я сама,
Що йде до нас зима
І так далеко до весни...

Приспів. (2)

Все питає вітра,
Де так довго він баривсь?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1194707_l1','pisniua_1194707','YouTube','https://www.youtube.com/watch?v=fTnGJefELYA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1194707_l2','pisniua_1194707','YouTube','https://www.youtube.com/watch?v=LLgeoG-Lk4E','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1194707_l3','pisniua_1194707','YouTube','https://www.youtube.com/watch?v=ym1QVAmtHZs','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1194707_l4','pisniua_1194707','YouTube','https://www.youtube.com/watch?v=ne5RSk1MN6Q','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1194707_l5','pisniua_1194707','YouTube','https://www.youtube.com/watch?v=x0U4fvDnceU','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_12101';
DELETE FROM song_versions WHERE song_id = 'pisniua_12101';
DELETE FROM songs_fts WHERE song_id = 'pisniua_12101';
DELETE FROM songs WHERE id = 'pisniua_12101';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_12101','Троянди на пероні','Музика: Анатолій Горчинський Слова: Олександр Богачук. Виконує: Крайня Хата, Анатолій Горчинський, Віктор Мазаний, Анастасія Жукова, Гурт Wszystko, Андрій Євтушенко, Гурт Мрія, Юлія Пєшковська, Оксана Пекун, Валентина Купріна','uk','ukraine_1991',NULL,NULL,'Співаник для таборів Марійської Дружини','Акорди від piwtorachok.','На пероні, на люднім пероні,
Де розлуки і зустрічі плачуть,
Хтось розсипав троянди червоні,
І, здається, ніхто їх не бачить...
Приспів:
А троянди, а троянди
До людей пелюстками кричать:
"Ми не квіти, ми - кохання
А кохання не можна топтать"
В моїм серці чи біль чи то смуток:
Не зустрів ти мене і сьогодні.
Хтось дарує комусь поцілунок,
А хтось топче троянди червоні...
Приспів.
На пероні, на тихім пероні,
Вже не чути далекого стуку.
Хтось розсипав троянди червоні,
Чи то зустріч свою, чи розлуку...
Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_12101'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_12101','Троянди на пероні','На пероні, на люднім пероні,
Де розлуки і зустрічі плачуть,
Хтось розсипав троянди червоні,
І, здається, ніхто їх не бачить...
Приспів:
А троянди, а троянди
До людей пелюстками кричать:
"Ми не квіти, ми - кохання
А кохання не можна топтать"
В моїм серці чи біль чи то смуток:
Не зустрів ти мене і сьогодні.
Хтось дарує комусь поцілунок,
А хтось топче троянди червоні...
Приспів.
На пероні, на тихім пероні,
Вже не чути далекого стуку.
Хтось розсипав троянди червоні,
Чи то зустріч свою, чи розлуку...
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_12101_l1','pisniua_12101','YouTube','https://www.youtube.com/watch?v=_0b8u-VvEsw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_12101_l2','pisniua_12101','YouTube','https://www.youtube.com/watch?v=Gm9qwSNJqCk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_12101_l3','pisniua_12101','YouTube','https://www.youtube.com/watch?v=5A09gMnLhgQ','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_12101_l4','pisniua_12101','YouTube','https://www.youtube.com/watch?v=MAFiSbVNKGA','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_12101_l5','pisniua_12101','YouTube','https://www.youtube.com/watch?v=e9WW8WFLtbk','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_12101_l6','pisniua_12101','YouTube','https://www.youtube.com/watch?v=Gb-h2t4cZQY','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_12101_l7','pisniua_12101','YouTube','https://www.youtube.com/watch?v=sYQ8_-b5XEY','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_12101_l8','pisniua_12101','YouTube','https://www.youtube.com/watch?v=vjAI8G_odcU','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_12101_l9','pisniua_12101','YouTube','https://www.youtube.com/watch?v=q-IBBbDP8lg','video',NULL,9);
DELETE FROM song_links WHERE song_id = 'pisniua_1230404';
DELETE FROM song_versions WHERE song_id = 'pisniua_1230404';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1230404';
DELETE FROM songs WHERE id = 'pisniua_1230404';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1230404','Дас іст гуд фантастіш','Музика: Михайло Хома, Олег Турко Слова: Михайло Хома, Олег Турко. Виконує: DZIDZIO','uk','ukraine_1991',NULL,NULL,'відеозапис',NULL,'Тобі вже вісімнадцять
І ти на всьо готова,
А ми не говорили
Про секс ще ані слова.
Я вже не можу більше
Ту тєму відкладати,
Мені вже надоїло
І я махав чекати.

Приспів
Das іst good fantastіsch, |
Das іst good, ya, ya!     |
Чуєш, хочу я!             | (2)

Я про любов глибоку
Німецький фільм дивився,
Реально еротичний
Про тебе сон приснився.
Мені ти шепотіла:
Ich lіebe dіch ja wohl...
А я відповідав
Любовних слів пароль.

Приспів.

Якась твоя подруга
До мене подзвонила,
Мене чомусь без тебе
До себе запросила.
Ти маєш зрозуміти:
Я мушу взрослим стати,
Мені вже надоїло
І я махав чекати.

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1230404'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1230404','Дас іст гуд фантастіш','Тобі вже вісімнадцять
І ти на всьо готова,
А ми не говорили
Про секс ще ані слова.
Я вже не можу більше
Ту тєму відкладати,
Мені вже надоїло
І я махав чекати.

Приспів
Das іst good fantastіsch, |
Das іst good, ya, ya!     |
Чуєш, хочу я!             | (2)

Я про любов глибоку
Німецький фільм дивився,
Реально еротичний
Про тебе сон приснився.
Мені ти шепотіла:
Ich lіebe dіch ja wohl...
А я відповідав
Любовних слів пароль.

Приспів.

Якась твоя подруга
До мене подзвонила,
Мене чомусь без тебе
До себе запросила.
Ти маєш зрозуміти:
Я мушу взрослим стати,
Мені вже надоїло
І я махав чекати.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1230404_l1','pisniua_1230404','YouTube','https://www.youtube.com/watch?v=9W5P2ZqyWxA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1230404_l2','pisniua_1230404','YouTube','https://www.youtube.com/watch?v=uhOrQflqDo0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_124622';
DELETE FROM song_versions WHERE song_id = 'pisniua_124622';
DELETE FROM songs_fts WHERE song_id = 'pisniua_124622';
DELETE FROM songs WHERE id = 'pisniua_124622';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_124622','Сильний вітер *','Музика: Михайло Ткачук Слова: Михайло Ткачук','uk','ukraine_1991',NULL,NULL,NULL,'Ще один варіант, який співають у нас, на Львівщині.','Сильний вітер, сильний вітер, сильний вітер,
Поламав у чистім полі білі квіти...
І чому це, і чому це все так сталось,
Що моє кохання з милим обірвалось.

Приспів:
Сильний вітер, сильний вітер, сильний вітер,
Не ламай у чистім полі білі квіти,
Рознеси моє страждання,
Поверни моє кохання,
Сильний вітер.

Із-за хмари ясний місяць похилився,
А у полі дві стежини розійшлися...
І твоя стежина круто повернула,
А моя стежина в росах потонула.

Приспів.

Як приходив я до тебе опівночі,
І дивився в твої карі ясні очі,
Ти сказала, що не треба, що не треба...
Хай розкаже сильний вітер все про тебе.

Приспів.

Та я вірю, що стежини ці зійдуться,
І любов-кохання з милим повернеться...
А у полі білий вітер ще гуляє,
Але вже він білих квітів не ламає.

Приспів.','[''pisni.org.ua'', ''cat:dances'', ''cat:lirychni'', ''cat:waltzes'', ''Пісні до танцю'', ''Пісні про кохання, ліричні'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_124622'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_124622','Сильний вітер *','Сильний вітер, сильний вітер, сильний вітер,
Поламав у чистім полі білі квіти...
І чому це, і чому це все так сталось,
Що моє кохання з милим обірвалось.

Приспів:
Сильний вітер, сильний вітер, сильний вітер,
Не ламай у чистім полі білі квіти,
Рознеси моє страждання,
Поверни моє кохання,
Сильний вітер.

Із-за хмари ясний місяць похилився,
А у полі дві стежини розійшлися...
І твоя стежина круто повернула,
А моя стежина в росах потонула.

Приспів.

Як приходив я до тебе опівночі,
І дивився в твої карі ясні очі,
Ти сказала, що не треба, що не треба...
Хай розкаже сильний вітер все про тебе.

Приспів.

Та я вірю, що стежини ці зійдуться,
І любов-кохання з милим повернеться...
А у полі білий вітер ще гуляє,
Але вже він білих квітів не ламає.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_124622_l1','pisniua_124622','YouTube','https://www.youtube.com/watch?v=P8LByX5U6so','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_124622_l2','pisniua_124622','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_1252000';
DELETE FROM song_versions WHERE song_id = 'pisniua_1252000';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1252000';
DELETE FROM songs WHERE id = 'pisniua_1252000';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1252000','Журба','Музика: Fame Слова: Fame. Виконує: Fame','uk','ukraine_1991',NULL,NULL,'http://audiovkontakte.ru/audio-56900426_155056665','Dm E Am','Я кохав її, як ніколи не кохав,
Це спекотне почуття мені палало
І тоді я зовсім тями не мав,
Вже були разом у минулому житті,
Та й зустрілися ми знову,
Море шепотіло хвилями забуті пісні,
Немов уві сні...

Приспів:
Бо покохав я дівчину, покохав
Тому й ночами майже не спав,
Вулицями блукав,
Покохав до нестями,
Покохав не було спокою,
Покохав я дівчину, покохав,
Перед очима наче туман,
Невже, це самообман,
Покохав, та й собі пообіцяв:
Вона буде зі мною!
Вже нема журби, сонце цілує небо, |
Вже нема журби,                   |
За минуле триматись не треба...   | (2)

Але не зберегли
Кохання з нею ми свого,
Не помітили в гучному мегаполісі
Ми як почав згасати вогонь.
Так боляче було,
Та що було те й загуло восени,
Я б хотів змінити я минуле,
То нічого не міняв би взагалі.

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:nostalgia'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1252000'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1252000','Журба','Я кохав її, як ніколи не кохав,
Це спекотне почуття мені палало
І тоді я зовсім тями не мав,
Вже були разом у минулому житті,
Та й зустрілися ми знову,
Море шепотіло хвилями забуті пісні,
Немов уві сні...

Приспів:
Бо покохав я дівчину, покохав
Тому й ночами майже не спав,
Вулицями блукав,
Покохав до нестями,
Покохав не було спокою,
Покохав я дівчину, покохав,
Перед очима наче туман,
Невже, це самообман,
Покохав, та й собі пообіцяв:
Вона буде зі мною!
Вже нема журби, сонце цілує небо, |
Вже нема журби,                   |
За минуле триматись не треба...   | (2)

Але не зберегли
Кохання з нею ми свого,
Не помітили в гучному мегаполісі
Ми як почав згасати вогонь.
Так боляче було,
Та що було те й загуло восени,
Я б хотів змінити я минуле,
То нічого не міняв би взагалі.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1252000_l1','pisniua_1252000','YouTube','https://www.youtube.com/watch?v=1t7DGL_rir4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1251404';
DELETE FROM song_versions WHERE song_id = 'pisniua_1251404';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1251404';
DELETE FROM songs WHERE id = 'pisniua_1251404';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1251404','Для маленького Iванка','Слова: Тамара Маршалова','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Для маленького Іванка
Склала мати колисанку.
Колисанку дивну склала,
Місяць й зорі повплітала...

Поміж зорями ясними
Річка снів дитячих плине,
А у річці - місяць-човен,
Казочок чарівних повен...

Човен хвилею гойдає,
Птах-казкар увись злітає,
Поспішає до Іванка,
Заспівати колисанку:

- Люлі-бай, моє хороше,
Снів спускається пороша,
Хутко в ліжечко лягай,
Казку гарну оглядай...
Люлі-бай...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1251404'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1251404','Для маленького Iванка','Для маленького Іванка
Склала мати колисанку.
Колисанку дивну склала,
Місяць й зорі повплітала...

Поміж зорями ясними
Річка снів дитячих плине,
А у річці - місяць-човен,
Казочок чарівних повен...

Човен хвилею гойдає,
Птах-казкар увись злітає,
Поспішає до Іванка,
Заспівати колисанку:

- Люлі-бай, моє хороше,
Снів спускається пороша,
Хутко в ліжечко лягай,
Казку гарну оглядай...
Люлі-бай...');
DELETE FROM song_links WHERE song_id = 'pisniua_124323';
DELETE FROM song_versions WHERE song_id = 'pisniua_124323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_124323';
DELETE FROM songs WHERE id = 'pisniua_124323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_124323','8-ий колір **','Музика: Мотор''ролла Слова: Мотор''ролла. Виконує: Мотор''ролла','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: Mann Troy','Em    Am     G       H7(II)
Я йшов по воді і назад озирався
Em    Am     G       H7(II)
А потім побачив тебе
Em    Am     G       H7(II)
Тебе у воді, я отак закохався
Em    Am     G       H7(II)
Веселка цариця небес

Мені закортіло всі хмари за гору
Загнати і витерти бруд
З обличчя і ніг, щоб унизити сором,
C7(III)       H7(II)
Навіки залишитись тут

Приспів:
Хочеш я твоїм кольором буду
C       Em7       Am       H7(II)
Восьмим кольором, восьмим чудом
Білим, я буду білим, як сніг,
C       Em7        Am       H7(II)
Якщо ти ним бути дозволиш мені

Дозволиш, я знаю, натягнуться струни
Порвуться, і я полечу
Я буду співати:  "У небі літаю!",
За мрію життям заплачу

Я буду проміння за пальці тримати
Гаряче, як жовті вогні
І в губи безодню небес цілувати
Ніхто не завадить мені

Приспів Х 2

Я буду проміння за пальці тримати
Гаряче, як жовті вогні
І в губи безодню небес цілувати
Ніхто не завадить мені

Приспів Х 2','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_124323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_124323','8-ий колір **','Em    Am     G       H7(II)
Я йшов по воді і назад озирався
Em    Am     G       H7(II)
А потім побачив тебе
Em    Am     G       H7(II)
Тебе у воді, я отак закохався
Em    Am     G       H7(II)
Веселка цариця небес

Мені закортіло всі хмари за гору
Загнати і витерти бруд
З обличчя і ніг, щоб унизити сором,
C7(III)       H7(II)
Навіки залишитись тут

Приспів:
Хочеш я твоїм кольором буду
C       Em7       Am       H7(II)
Восьмим кольором, восьмим чудом
Білим, я буду білим, як сніг,
C       Em7        Am       H7(II)
Якщо ти ним бути дозволиш мені

Дозволиш, я знаю, натягнуться струни
Порвуться, і я полечу
Я буду співати:  "У небі літаю!",
За мрію життям заплачу

Я буду проміння за пальці тримати
Гаряче, як жовті вогні
І в губи безодню небес цілувати
Ніхто не завадить мені

Приспів Х 2

Я буду проміння за пальці тримати
Гаряче, як жовті вогні
І в губи безодню небес цілувати
Ніхто не завадить мені

Приспів Х 2');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_124323_l1','pisniua_124323','YouTube','https://www.youtube.com/watch?v=DAaLa3vF8sU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_124323_l2','pisniua_124323','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_1281725';
DELETE FROM song_versions WHERE song_id = 'pisniua_1281725';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1281725';
DELETE FROM songs WHERE id = 'pisniua_1281725';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1281725','Зайшло сонечко','Музика: Ніна Матвієнко Слова: Ніна Матвієнко. Виконує: Ніна Матвієнко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Зайшло сонечко,
Стало темно,
Ніч підкралася
На лапочках.
Івасику пора
Вже спать.
А він сердиться,
Крутить носиком,
І став легенько
Схлипувать.

Івасику,
Голубчику,
Чого не спиш,
Синочку мій?
І горобчик спить,
І котик спить,
І тільки ти не спиш.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1281725'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1281725','Зайшло сонечко','Зайшло сонечко,
Стало темно,
Ніч підкралася
На лапочках.
Івасику пора
Вже спать.
А він сердиться,
Крутить носиком,
І став легенько
Схлипувать.

Івасику,
Голубчику,
Чого не спиш,
Синочку мій?
І горобчик спить,
І котик спить,
І тільки ти не спиш.');
DELETE FROM song_links WHERE song_id = 'pisniua_1345323';
DELETE FROM song_versions WHERE song_id = 'pisniua_1345323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1345323';
DELETE FROM songs WHERE id = 'pisniua_1345323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1345323','Десь по світу','Музика: Luis Fonsi, Daddy Yankee Слова: Luis Fonsi, Daddy Yankee. Виконує: На всі 100, Захар','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Так! Ти саме та з моїх мрій,
Я люблю тебе!
Аромат твій зваблює мене!
Ти, моє світило, яке по житті веде!
Де ти був до цього, чуєш, де?..
Тут, є у мене вже на тебе хитрий план,
І заради нього піду на обман,
Цілуватиму тебе до втрати пульсу!
Я, я кохання вип''ю наше все до дна,
І побачиш ти, що все це не дарма,
Вже колись співав про те, що зацілую!

Приспів:
Десь по світу,
Розкидала доля нас обох по світу!
На шалені вчинки провокує літо,
Я лечу до тебе моя, Афродито!
Десь по світу,
Розкидала доля нас обох по світу!
Ти завжди мені потрібен, як повітря!
Йди до мене, бо моя любов розквітла!

Кину все і лину я до тебе
В темпі серця ритму!
Дочекайся, синьоока, почуття мої глибокі!
Кину все і вирушатиму на крилах вітру,
Щоб тебе скоріш зустріти,
Бо ти для мене, як повітря!
У нас з тобою все вже там було,
І у машині - там було,
У літаку теж і там було,
На пляжі, звісно, і там було!
Кохання штука запальна -
Ритмічно тілом бам, бам!
Локацію змінили,
Все по колу будем - бам, бам!
Не треба перейматися,
У нас чудово справи,
Я керуватиму сценарієм забави,
І тільки крапельками
Піт вкриває твою спину,
Все це без перерви, все це беззупинну!
По світу, по світу, розвіяні по світу |
Сумую за тобою, куди себе подіти?..   |
На пошуки поїду - і тебе побачу,      |
Всю таку спекотну і таку гарячу!      | (2)

Приспів. (2)

Кину все і лину я до тебе
В темпі серця ритму!
Дочекайся синьоока,
Почуття мої глибокі!
Кину все і вирушатиму на крилах вітру,
Щоб тебе скоріш зустріти,
Бо ти для мене, як повітря!
Десь по світу!..','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1345323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1345323','Десь по світу','Так! Ти саме та з моїх мрій,
Я люблю тебе!
Аромат твій зваблює мене!
Ти, моє світило, яке по житті веде!
Де ти був до цього, чуєш, де?..
Тут, є у мене вже на тебе хитрий план,
І заради нього піду на обман,
Цілуватиму тебе до втрати пульсу!
Я, я кохання вип''ю наше все до дна,
І побачиш ти, що все це не дарма,
Вже колись співав про те, що зацілую!

Приспів:
Десь по світу,
Розкидала доля нас обох по світу!
На шалені вчинки провокує літо,
Я лечу до тебе моя, Афродито!
Десь по світу,
Розкидала доля нас обох по світу!
Ти завжди мені потрібен, як повітря!
Йди до мене, бо моя любов розквітла!

Кину все і лину я до тебе
В темпі серця ритму!
Дочекайся, синьоока, почуття мої глибокі!
Кину все і вирушатиму на крилах вітру,
Щоб тебе скоріш зустріти,
Бо ти для мене, як повітря!
У нас з тобою все вже там було,
І у машині - там було,
У літаку теж і там було,
На пляжі, звісно, і там було!
Кохання штука запальна -
Ритмічно тілом бам, бам!
Локацію змінили,
Все по колу будем - бам, бам!
Не треба перейматися,
У нас чудово справи,
Я керуватиму сценарієм забави,
І тільки крапельками
Піт вкриває твою спину,
Все це без перерви, все це беззупинну!
По світу, по світу, розвіяні по світу |
Сумую за тобою, куди себе подіти?..   |
На пошуки поїду - і тебе побачу,      |
Всю таку спекотну і таку гарячу!      | (2)

Приспів. (2)

Кину все і лину я до тебе
В темпі серця ритму!
Дочекайся синьоока,
Почуття мої глибокі!
Кину все і вирушатиму на крилах вітру,
Щоб тебе скоріш зустріти,
Бо ти для мене, як повітря!
Десь по світу!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1345323_l1','pisniua_1345323','YouTube','https://www.youtube.com/watch?v=BJgiyGO271M','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1345323_l2','pisniua_1345323','YouTube','https://www.youtube.com/watch?v=2V39u8hko48','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_135707';
DELETE FROM song_versions WHERE song_id = 'pisniua_135707';
DELETE FROM songs_fts WHERE song_id = 'pisniua_135707';
DELETE FROM songs WHERE id = 'pisniua_135707';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_135707','Ужгородська колискова','(Колискова для коханої)','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Жовтий лист впаде тихо за вікном
Знов приходить ніч
Вітер заспіва пісню на добро
Надобраніч

Я тебе очей зігрію ясним поглядом
І всю ніч з тобою буду берегти твій сон

Приспів:
Засинай моя кохана
Я тебе присплю
Вітер заспіва осанну
Я тебе люблю

Пелюстки троянд вкриють від біди
І вкрадуть печаль
Поцілунок твій - Зоряні світи
Сонце Засипай','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_135707'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_135707','Ужгородська колискова','Жовтий лист впаде тихо за вікном
Знов приходить ніч
Вітер заспіва пісню на добро
Надобраніч

Я тебе очей зігрію ясним поглядом
І всю ніч з тобою буду берегти твій сон

Приспів:
Засинай моя кохана
Я тебе присплю
Вітер заспіва осанну
Я тебе люблю

Пелюстки троянд вкриють від біди
І вкрадуть печаль
Поцілунок твій - Зоряні світи
Сонце Засипай');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_135707_l1','pisniua_135707','YouTube','https://www.youtube.com/watch?v=6GZ1ODc-1Jc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1340220';
DELETE FROM song_versions WHERE song_id = 'pisniua_1340220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1340220';
DELETE FROM songs WHERE id = 'pisniua_1340220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1340220','Життя летить','Музика: ФІОЛЕТ Слова: ФІОЛЕТ. Виконує: ФІОЛЕТ','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Всі прочитані книги
Припали роками і пилом,
І зустрічних усмішок хвиля
Тримає когось...
Безликі міста за стінами,
Ніч прихистить і нагріє мене.
Ти куриш - волосся пропахло димом,
Мої рими смішні, мої любі рими!..

Приспів:
День за днем, рік за роком
Життя лежить і ненароком
Себе побачиш якось збоку...
Це я такий!..
І світ не той в очах і віриш,
Таксі втекло - й додому дійдеш
Через пів міста, третя ночі
Життя летить і мокнуть очі... -
Це ми такі... Це ми такі...

Все, що не встиг зробити,
Чари зникли, з''явились кредити,
Тануть мрії, рай іs death...
Відпочинку не має,
День переходить у день,
Пісні безликі,
Язики гострі й пики,
Комета ніяк не прилетить
І не зникне...
Відчуття несправедливого
І ще чогось дурного,
Опиратися не варто,
Опиратись це дорого!

Приспів.

Всі прочитані книги
В смітнику зависли десь
І ми застигли в металево-
Бетонних конструкціях...
Не купив машини,
Не зробив революції,
Безликі міста за стінами...
Відпустку чекаю п''ятий рік.
Ти звільнений за власним бажанням! -
Відверто, пофіг, кисло в роті,
В серці солодко трохи... | (8)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1340220'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1340220','Життя летить','Всі прочитані книги
Припали роками і пилом,
І зустрічних усмішок хвиля
Тримає когось...
Безликі міста за стінами,
Ніч прихистить і нагріє мене.
Ти куриш - волосся пропахло димом,
Мої рими смішні, мої любі рими!..

Приспів:
День за днем, рік за роком
Життя лежить і ненароком
Себе побачиш якось збоку...
Це я такий!..
І світ не той в очах і віриш,
Таксі втекло - й додому дійдеш
Через пів міста, третя ночі
Життя летить і мокнуть очі... -
Це ми такі... Це ми такі...

Все, що не встиг зробити,
Чари зникли, з''явились кредити,
Тануть мрії, рай іs death...
Відпочинку не має,
День переходить у день,
Пісні безликі,
Язики гострі й пики,
Комета ніяк не прилетить
І не зникне...
Відчуття несправедливого
І ще чогось дурного,
Опиратися не варто,
Опиратись це дорого!

Приспів.

Всі прочитані книги
В смітнику зависли десь
І ми застигли в металево-
Бетонних конструкціях...
Не купив машини,
Не зробив революції,
Безликі міста за стінами...
Відпустку чекаю п''ятий рік.
Ти звільнений за власним бажанням! -
Відверто, пофіг, кисло в роті,
В серці солодко трохи... | (8)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1340220_l1','pisniua_1340220','YouTube','https://www.youtube.com/watch?v=dJFtXd7sdik','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1368404';
DELETE FROM song_versions WHERE song_id = 'pisniua_1368404';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1368404';
DELETE FROM songs WHERE id = 'pisniua_1368404';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1368404','ПоБарабану','Музика: Василь Марущак Слова: Василь Марущак. Виконує: Цвіт Кульбаби','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'А я і не питаю, бо не скаже ніхто,
Зелені твої очі полонили - і всьо,
А час не питає і робить своє,
Забирає все, що в нас є!
А я і не питаю, бо не скаже ніхто,
Чого дівчата закривають очі на всьо,
А часом буває, що все навпаки -
Змінює нас, змінює все!

Приспів:
Мені по барабану хто ти така      |
І шо в тебе Porsche, в мене нема. |
А море по коліна, танцюю собі,    |
Достоінство дала природа тобі!    | (2)

Повитирай сльози після дощу
І намалюй губи, коли я прийду,
Включи собі Кульбаби улюблений трек -
І просто співай, і в душі танцюй!
А я купив шампанське, тюльпани тобі,
Хотів щоб вечір ми провели самі,
А ти, як малолєтка, повела себе,
І несерйозно сприймаєш мене!..

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1368404'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1368404','ПоБарабану','А я і не питаю, бо не скаже ніхто,
Зелені твої очі полонили - і всьо,
А час не питає і робить своє,
Забирає все, що в нас є!
А я і не питаю, бо не скаже ніхто,
Чого дівчата закривають очі на всьо,
А часом буває, що все навпаки -
Змінює нас, змінює все!

Приспів:
Мені по барабану хто ти така      |
І шо в тебе Porsche, в мене нема. |
А море по коліна, танцюю собі,    |
Достоінство дала природа тобі!    | (2)

Повитирай сльози після дощу
І намалюй губи, коли я прийду,
Включи собі Кульбаби улюблений трек -
І просто співай, і в душі танцюй!
А я купив шампанське, тюльпани тобі,
Хотів щоб вечір ми провели самі,
А ти, як малолєтка, повела себе,
І несерйозно сприймаєш мене!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1368404_l1','pisniua_1368404','YouTube','https://www.youtube.com/watch?v=7VSECaIU72w','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1368404_l2','pisniua_1368404','YouTube','https://www.youtube.com/watch?v=IcB6wPLeixc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_1379202';
DELETE FROM song_versions WHERE song_id = 'pisniua_1379202';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1379202';
DELETE FROM songs WHERE id = 'pisniua_1379202';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1379202','Поведи мене','Музика: Володимир Домшинський Слова: Василь Савюк. Виконує: Гурт Будьмо','uk','ukraine_1991',NULL,NULL,NULL,NULL,'А любов нас кличе
В яворовий гай, де зорі.
А любов нам каже:
Місяць вже, уже на дворі
І відкриє душу нам
Замріяна смерека,
Подарують гори файну пісню
Нам здалека.

Приспів:
Поведи мене,             |
Де зорі цілувались,      |
А любов казала: Гірко!.. |
Поведи мене,             |
Де ночі обнімались,      |
А любов співала дзвінко! | (2)

Я тебе чекаю
На закоханій стежині,
Щоб зустріти знову
Твої очі сині, сині!
Хай любов не в''яне,
Хай любов веде до пари,
Десь високо в горах
Хай горять для нас стожари!

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1379202'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1379202','Поведи мене','А любов нас кличе
В яворовий гай, де зорі.
А любов нам каже:
Місяць вже, уже на дворі
І відкриє душу нам
Замріяна смерека,
Подарують гори файну пісню
Нам здалека.

Приспів:
Поведи мене,             |
Де зорі цілувались,      |
А любов казала: Гірко!.. |
Поведи мене,             |
Де ночі обнімались,      |
А любов співала дзвінко! | (2)

Я тебе чекаю
На закоханій стежині,
Щоб зустріти знову
Твої очі сині, сині!
Хай любов не в''яне,
Хай любов веде до пари,
Десь високо в горах
Хай горять для нас стожари!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1379202_l1','pisniua_1379202','YouTube','https://www.youtube.com/watch?v=8aBRNktrwWE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_139606';
DELETE FROM song_versions WHERE song_id = 'pisniua_139606';
DELETE FROM songs_fts WHERE song_id = 'pisniua_139606';
DELETE FROM songs WHERE id = 'pisniua_139606';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_139606','Тиха нічка теплесенька','Слова: Микола Сингаївський','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Тиха нічка теплесенька,
а дитинка малесенька.
А-а-а, люлі,
дитиночка спати,
а бабуся
буде колихати...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_139606'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_139606','Тиха нічка теплесенька','Тиха нічка теплесенька,
а дитинка малесенька.
А-а-а, люлі,
дитиночка спати,
а бабуся
буде колихати...');
DELETE FROM song_links WHERE song_id = 'pisniua_138426';
DELETE FROM song_versions WHERE song_id = 'pisniua_138426';
DELETE FROM songs_fts WHERE song_id = 'pisniua_138426';
DELETE FROM songs WHERE id = 'pisniua_138426';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_138426','Стожари','Музика: Павло Дворський Слова: Володимир Кудрявцев. Виконує: Назарій Яремчук, Павло Дворський, Іван Попович','uk','ukraine_1991',NULL,NULL,NULL,'Ось підібрав які-неякі акорди. Не знаю, на скільки правильно. Мені здається, нормально. Спробуйте...','Am
Був зорепад, і зелен сад,
E
І ми були у парі.
Dm
По тім саду без тебе йду,
Коли горять стожари.

Приспів:
Гей ви, стожари, мені насняться ваші чари
Так хочу стріти кохання наяву.
Так чом, стожари, ви знов заходите за хмари,
Коли я з вами і мрію і живу, живу?

Як маків цвіт в полях горить,
Так зорі квітнуть ясно.
Впаде зоря і вмить згора,
Моя ж любов не згасне.

Приспів.

Зірки горять, а де ж зоря,
Що долею озветься?
Я кличу знов свою любов,
Вона навіки в серці.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_138426'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_138426','Стожари','Am
Був зорепад, і зелен сад,
E
І ми були у парі.
Dm
По тім саду без тебе йду,
Коли горять стожари.

Приспів:
Гей ви, стожари, мені насняться ваші чари
Так хочу стріти кохання наяву.
Так чом, стожари, ви знов заходите за хмари,
Коли я з вами і мрію і живу, живу?

Як маків цвіт в полях горить,
Так зорі квітнуть ясно.
Впаде зоря і вмить згора,
Моя ж любов не згасне.

Приспів.

Зірки горять, а де ж зоря,
Що долею озветься?
Я кличу знов свою любов,
Вона навіки в серці.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_138426_l1','pisniua_138426','YouTube','https://www.youtube.com/watch?v=cFhXqzy59DU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_138426_l2','pisniua_138426','YouTube','https://www.youtube.com/watch?v=Kpq0xUYGkqg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_138426_l3','pisniua_138426','YouTube','https://www.youtube.com/watch?v=Tvxr1_1ddcA','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_138426_l4','pisniua_138426','YouTube','https://www.youtube.com/watch?v=YrwKysS7FoY','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_138426_l5','pisniua_138426','YouTube','https://www.youtube.com/watch?v=4c9oR-DKs08','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_138426_l6','pisniua_138426','YouTube','https://www.youtube.com/watch?v=4XWPYi-4V_Y','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_138426_l7','pisniua_138426','YouTube','https://www.youtube.com/watch?v=Qy2W6KjS1hs','video',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_1417909';
DELETE FROM song_versions WHERE song_id = 'pisniua_1417909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1417909';
DELETE FROM songs WHERE id = 'pisniua_1417909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1417909','Чому?','Музика: Олександр Пономарьов Слова: Олександр Пономарьов. Виконує: DZIDZIO, Олександр Пономарьов, ALEKSEEV, Артем Пивоваров','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Чому тебе раніше не зустрів?
Чому життя так склалося?
Не ту раніше любив...      |
Любив, чи так здавалося... | (2)

Чому такії очі, як твої
Мені не зустрічалися?..
Не ті я очі любив...       |
Любив, чи так здавалося... | (2)

Чому не твої ніжнії вуста
Зі мною цілувалися?..
Не ті вуста я любив...     |
Любив, чи так здавалося... | (2)

Чому не ніжні рученьки твої
До мене доторкалися?..
Не ті я руки любив...      |
Любив, чи так здавалося... | (2)

І ось тебе нарешті я зустрів -
Це, слава Богу, сталося!
Я ту тепер полюбив!..      |
Збулося, що бажалося!..    | (2)

Чому тебе раніше не зустрів?..','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1417909'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1417909','Чому?','Чому тебе раніше не зустрів?
Чому життя так склалося?
Не ту раніше любив...      |
Любив, чи так здавалося... | (2)

Чому такії очі, як твої
Мені не зустрічалися?..
Не ті я очі любив...       |
Любив, чи так здавалося... | (2)

Чому не твої ніжнії вуста
Зі мною цілувалися?..
Не ті вуста я любив...     |
Любив, чи так здавалося... | (2)

Чому не ніжні рученьки твої
До мене доторкалися?..
Не ті я руки любив...      |
Любив, чи так здавалося... | (2)

І ось тебе нарешті я зустрів -
Це, слава Богу, сталося!
Я ту тепер полюбив!..      |
Збулося, що бажалося!..    | (2)

Чому тебе раніше не зустрів?..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1417909_l1','pisniua_1417909','YouTube','https://www.youtube.com/watch?v=dBIp-Zdu6PI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1418505';
DELETE FROM song_versions WHERE song_id = 'pisniua_1418505';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1418505';
DELETE FROM songs WHERE id = 'pisniua_1418505';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1418505','Світ потребує краси','Музика: Stas Chornyy Слова: Альона Савраненко (alyona alyona). Виконує: Альона Савраненко (alyona alyona)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Цей світ потребує краси
Справжньої, як посмішка доці...
Проси - і світ надасть сил,
І ввійде у кров твою сонце!..

Всі ми переплетені планетами,
З''єднані єдиними тенетами,
Різні такі, різні такі... Тільки,
Серед таких є не таких скільки?
Сховані від поглядів за усмішки,
Граємо емоціями у сніжки,
Там, де краса, там, де краса в серці,
Все набува, все набува сенсу!

Приспів.

Ввійде у кров твою сонце!.. | (4)

Що в тобі такого є, що колихає світ?
Так чому ти віддаєш своє і топиш цей лід?
І просто намагаєшся змінити людей,
Бо в тебе є життя одне, ти знаєш щось іде
І він точно приведе всіх до сонця,
А воно проллє своє світло на таємне.
Тоді всі дістануть зі схованки те, що ховали,
Адже Бог нас створив недаремно.
Всі, як свічки, світло прекрасне у кожному!
Ми себе покажемо - і справді переможемо!
Своє знайдемо місце, ми і є чиста вода,
Там би кожен найкраще людям віддав!
І прихований шрам вже не змінить минуле,
Любов, що ломали, трощили й гнули,
Міняли місцями прекрасне й жахливе,
Хай змиє сльозами несправжнє ця злива!

Приспів. (2)

Ввійде у кров твою сонце!.. | (4)

Щоб завдати болю, треба зовсім мало сил...
Щоб сягнути неба, треба зовсім мало мрій...
Все забудеться і все збудеться, все зцілиться!..
З''єднані у хвилю в людей рвуться голоси,
Сповнені любові, сподівання і надій!..
Не ховайте нас! Не принижуйте! Покажіть нас!

Речитатив:
Привіт, моє тіло. Хочу поговорити з тобою:
Мене навчили тебе не любити,
Навчили, що бісять твої складки і твоя плоскість.
Навчили не любити свої ноги, не від вух,
Тому й не для танцполів.
Навчили замальовувати всі везувії на обличчі,
Та навчили хотіти себе змінити.
Тіло, ти не втискаєшся у рамки,
Але я не хочу утягувати, зашпакльовувати,
Ненавідіти, хотіти перекроїти.
Я тебе приймаю і я хочу тебе любити!
А ще показати, хочу бачити різні тіла, такі ж
Бездоганні диспропорції рамок краси як і моя.
Тіло, я хочу поговорити:
Давай себе любити! Покажіть нас!','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1418505'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1418505','Світ потребує краси','Приспів:
Цей світ потребує краси
Справжньої, як посмішка доці...
Проси - і світ надасть сил,
І ввійде у кров твою сонце!..

Всі ми переплетені планетами,
З''єднані єдиними тенетами,
Різні такі, різні такі... Тільки,
Серед таких є не таких скільки?
Сховані від поглядів за усмішки,
Граємо емоціями у сніжки,
Там, де краса, там, де краса в серці,
Все набува, все набува сенсу!

Приспів.

Ввійде у кров твою сонце!.. | (4)

Що в тобі такого є, що колихає світ?
Так чому ти віддаєш своє і топиш цей лід?
І просто намагаєшся змінити людей,
Бо в тебе є життя одне, ти знаєш щось іде
І він точно приведе всіх до сонця,
А воно проллє своє світло на таємне.
Тоді всі дістануть зі схованки те, що ховали,
Адже Бог нас створив недаремно.
Всі, як свічки, світло прекрасне у кожному!
Ми себе покажемо - і справді переможемо!
Своє знайдемо місце, ми і є чиста вода,
Там би кожен найкраще людям віддав!
І прихований шрам вже не змінить минуле,
Любов, що ломали, трощили й гнули,
Міняли місцями прекрасне й жахливе,
Хай змиє сльозами несправжнє ця злива!

Приспів. (2)

Ввійде у кров твою сонце!.. | (4)

Щоб завдати болю, треба зовсім мало сил...
Щоб сягнути неба, треба зовсім мало мрій...
Все забудеться і все збудеться, все зцілиться!..
З''єднані у хвилю в людей рвуться голоси,
Сповнені любові, сподівання і надій!..
Не ховайте нас! Не принижуйте! Покажіть нас!

Речитатив:
Привіт, моє тіло. Хочу поговорити з тобою:
Мене навчили тебе не любити,
Навчили, що бісять твої складки і твоя плоскість.
Навчили не любити свої ноги, не від вух,
Тому й не для танцполів.
Навчили замальовувати всі везувії на обличчі,
Та навчили хотіти себе змінити.
Тіло, ти не втискаєшся у рамки,
Але я не хочу утягувати, зашпакльовувати,
Ненавідіти, хотіти перекроїти.
Я тебе приймаю і я хочу тебе любити!
А ще показати, хочу бачити різні тіла, такі ж
Бездоганні диспропорції рамок краси як і моя.
Тіло, я хочу поговорити:
Давай себе любити! Покажіть нас!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1418505_l1','pisniua_1418505','YouTube','https://www.youtube.com/watch?v=016tPRN9g3U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1426000';
DELETE FROM song_versions WHERE song_id = 'pisniua_1426000';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1426000';
DELETE FROM songs WHERE id = 'pisniua_1426000';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1426000','Дід','Музика: Ольга Монастирська Слова: Ольга Монастирська. Виконує: Ольга Монастирська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Перекрутився навиворіт світ:
В дівку влюбився старесенький дід.
Майже беззубий і лисий, як пень,
Бігав за нею цілісінький день!
Бабі в''язики болять дотепер,
Краще би той дідуганище вмер!..
А то до нині, зараза, живе,
Ще й молодичку до шлюбу веде!

Приспів:
А вже весілля! А вже весілля!
Лунає музика на все село!
Прибуло гостей ціле подвіря,
У нас такого давно не було!
Вже будуть танці, гучна забава,
А на столі запашний коровай,
Тож сумувати не маєм права,
А хто сумує, тому наливай!

В нашім селі тож подія така,
Так, як телицю вели до бика,
Так, як привезли товар в магазин,
Дівок багато, а дідо один!
В хлопців до нині болить голова:
Чи тая дівка вже чисто дурна?
Така ще юна, а дідо старий,
Певно у нього багато грошей!..

Приспів.

В нашім селі ще таке не було,
Так, як прибуло якесь НЛО.
Усі дивилися на молодих,
Хто через сльози, а хто через сміх.
Ой, люди добрі, яка ж там любов?
Кажуть: Шукав та й нарешті знайшов!
Жалем купляв та й нарешті купив,
Певно багато грошей заробив!

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1426000'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1426000','Дід','Перекрутився навиворіт світ:
В дівку влюбився старесенький дід.
Майже беззубий і лисий, як пень,
Бігав за нею цілісінький день!
Бабі в''язики болять дотепер,
Краще би той дідуганище вмер!..
А то до нині, зараза, живе,
Ще й молодичку до шлюбу веде!

Приспів:
А вже весілля! А вже весілля!
Лунає музика на все село!
Прибуло гостей ціле подвіря,
У нас такого давно не було!
Вже будуть танці, гучна забава,
А на столі запашний коровай,
Тож сумувати не маєм права,
А хто сумує, тому наливай!

В нашім селі тож подія така,
Так, як телицю вели до бика,
Так, як привезли товар в магазин,
Дівок багато, а дідо один!
В хлопців до нині болить голова:
Чи тая дівка вже чисто дурна?
Така ще юна, а дідо старий,
Певно у нього багато грошей!..

Приспів.

В нашім селі ще таке не було,
Так, як прибуло якесь НЛО.
Усі дивилися на молодих,
Хто через сльози, а хто через сміх.
Ой, люди добрі, яка ж там любов?
Кажуть: Шукав та й нарешті знайшов!
Жалем купляв та й нарешті купив,
Певно багато грошей заробив!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1426000_l1','pisniua_1426000','YouTube','https://www.youtube.com/watch?v=Lu3kc_P12no','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1454220';
DELETE FROM song_versions WHERE song_id = 'pisniua_1454220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1454220';
DELETE FROM songs WHERE id = 'pisniua_1454220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1454220','Добрий день, Everybody!','Музика: Мюслі Ua, VASIA CHARISMA Слова: Мюслі Ua, VASIA CHARISMA','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'А прем''єр Джонсонюк Борис
Танки гриз, як барбарис!
А прем''єр Джонсонюк Борис
Тан-танки гриз, тан-танки гриз!
А прем''єр Джонсонюк Борис
Танки гриз, як барбарис!
Тан-танки гриз, як барбарис,
Прем''єр Джонсонюк Борис!

Добрий день, Everybody!
Слава Україні!

Добрий день, Everybody!
Ukraіne love you and |
Уважєніє very much!  | (3)

And уважєніє very much!
Very, very, very much!

А прем''єр Джонсонюк Борис
Танки гриз, як барбарис!
А прем''єр Джонсонюк Борис
Тан-танки гриз, тан-танки гриз!
А прем''єр Джонсонюк Борис
Танки гриз, як барбарис,
Прем''єр Джонсонюк Борис!
Джонсонюк Борис!

Слава Україні!
Добрий день, Everybody!
Слава Україні!
Добрий день, Everybody!
Слава Україні!

Пане, Борис! Пане, Борис!
Слава Ісусу Христу!
Добрий день, Everybody!
Слава Ісусу Христу!

Ви - легенда! Ви - легенда!
Рветя русню на Британський прапор!
Ви - легенда! Ви - легенда!
Пане, Борис! Пане, Борис!

Якщо у вас єсть проблємно,
Чірікнули мене, -
Я чірікнув Арестовичу
Чірікнув Арестовичу
Два-три тижні - проблєм нема!
Всьо!
Проблєм нема!
Два-три тижні - проблєм нема!
Кури несуться,
Зеленський - президент!
Всім оркам - пи*дець!
Добрий день Everybody!
Слава Україні!
Всьо!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1454220'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1454220','Добрий день, Everybody!','А прем''єр Джонсонюк Борис
Танки гриз, як барбарис!
А прем''єр Джонсонюк Борис
Тан-танки гриз, тан-танки гриз!
А прем''єр Джонсонюк Борис
Танки гриз, як барбарис!
Тан-танки гриз, як барбарис,
Прем''єр Джонсонюк Борис!

Добрий день, Everybody!
Слава Україні!

Добрий день, Everybody!
Ukraіne love you and |
Уважєніє very much!  | (3)

And уважєніє very much!
Very, very, very much!

А прем''єр Джонсонюк Борис
Танки гриз, як барбарис!
А прем''єр Джонсонюк Борис
Тан-танки гриз, тан-танки гриз!
А прем''єр Джонсонюк Борис
Танки гриз, як барбарис,
Прем''єр Джонсонюк Борис!
Джонсонюк Борис!

Слава Україні!
Добрий день, Everybody!
Слава Україні!
Добрий день, Everybody!
Слава Україні!

Пане, Борис! Пане, Борис!
Слава Ісусу Христу!
Добрий день, Everybody!
Слава Ісусу Христу!

Ви - легенда! Ви - легенда!
Рветя русню на Британський прапор!
Ви - легенда! Ви - легенда!
Пане, Борис! Пане, Борис!

Якщо у вас єсть проблємно,
Чірікнули мене, -
Я чірікнув Арестовичу
Чірікнув Арестовичу
Два-три тижні - проблєм нема!
Всьо!
Проблєм нема!
Два-три тижні - проблєм нема!
Кури несуться,
Зеленський - президент!
Всім оркам - пи*дець!
Добрий день Everybody!
Слава Україні!
Всьо!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1454220_l1','pisniua_1454220','YouTube','https://www.youtube.com/watch?v=snp-z7xfBkY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_149808';
DELETE FROM song_versions WHERE song_id = 'pisniua_149808';
DELETE FROM songs_fts WHERE song_id = 'pisniua_149808';
DELETE FROM songs WHERE id = 'pisniua_149808';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_149808','Де ти, доле моя, бродиш?','Музика: народна Слова: Роман Туровський-Савчук','uk','ukraine_1991',NULL,NULL,'http://www.torban.org/pisni/dolja.html',NULL,'Де ти доле моя бродиш?
Не докличусь я до тебе?
Доси можна пригорнути
Поле дикеє до себе. -

Вона скаче в чистім полі,
Кожух - з мертвого рабина,
А в руці наган блискучий
з ланцюжком з паникадила.

А онук рабина - покруч,
з шаблею що не зна жалю,
понад ними Чорний Прапор -
Старий світ іде на палю...

Де ти доле моя бродиш?
Чи в Сибіру, у неволі?
Тільки вітер чорний виє
в степу коло Гуляй-Поля...    Мелодія I','[''pisni.org.ua'', ''cat:pivden'', ''Пісні з півдня України'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_149808'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_149808','Де ти, доле моя, бродиш?','Де ти доле моя бродиш?
Не докличусь я до тебе?
Доси можна пригорнути
Поле дикеє до себе. -

Вона скаче в чистім полі,
Кожух - з мертвого рабина,
А в руці наган блискучий
з ланцюжком з паникадила.

А онук рабина - покруч,
з шаблею що не зна жалю,
понад ними Чорний Прапор -
Старий світ іде на палю...

Де ти доле моя бродиш?
Чи в Сибіру, у неволі?
Тільки вітер чорний виє
в степу коло Гуляй-Поля...    Мелодія I');
DELETE FROM song_links WHERE song_id = 'pisniua_1514202';
DELETE FROM song_versions WHERE song_id = 'pisniua_1514202';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1514202';
DELETE FROM songs WHERE id = 'pisniua_1514202';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1514202','День народження','Музика: Ірина Батюк, Роман Калин, Сергій Лазановський Слова: Ірина Батюк, Роман Калин, Сергій Лазановський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
З днем народження! Многая літа
В щасті й гаразді проживи до ста!
З днем народження! Многая літа!
Всі тебе вітають, і вітаю я!

Ти прокинешся сьогодні,
Наче, то є звичний день.
Та усі тобі довкола -
Співають пісень!
Рідні, друзі і знайомі
Зичуть многая літа!
Надсилатимуть листівки
"З днем народження!"

Приспів.

Всі незгоди це дрібниця,
Їх сьогодні забувай!
Щастям своїм поділися,
Хутчіше наливай!
Дружно келихи піднімем,
Дружно вип''ємо до дна,
І всі гучно заспіваєм:
"З днем народження!"

Приспів. (2)','[''pisni.org.ua'', ''cat:druzhba'', ''cat:socialno-pobutovi'', ''cat:zahalni-cinnosti'', ''Пісні про дружбу'', ''Соціально-побутові пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1514202'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1514202','День народження','Приспів:
З днем народження! Многая літа
В щасті й гаразді проживи до ста!
З днем народження! Многая літа!
Всі тебе вітають, і вітаю я!

Ти прокинешся сьогодні,
Наче, то є звичний день.
Та усі тобі довкола -
Співають пісень!
Рідні, друзі і знайомі
Зичуть многая літа!
Надсилатимуть листівки
"З днем народження!"

Приспів.

Всі незгоди це дрібниця,
Їх сьогодні забувай!
Щастям своїм поділися,
Хутчіше наливай!
Дружно келихи піднімем,
Дружно вип''ємо до дна,
І всі гучно заспіваєм:
"З днем народження!"

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1514202_l1','pisniua_1514202','YouTube','https://www.youtube.com/watch?v=GhF3XWRzQrw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1531323';
DELETE FROM song_versions WHERE song_id = 'pisniua_1531323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1531323';
DELETE FROM songs WHERE id = 'pisniua_1531323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1531323','Твоя','Музика: Альона Омаргалієва, Антон Борзенко Слова: Альона Омаргалієва','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
З тобою можу не боятися,
Казати кожен день,
Як сильно тебе люблю!
Посміхатися, бути слабкою
І водночас сильною,
Розчинятися від твоїх
Ніжних поцілунків і обійм,
Тільки твоя,
Назавжди ти тільки мій!..

А мені би, мені би до тебе,
Щоб удвох очима у небо,
Ніби з головою у прірву
В тебе падаю.
Світ без тебе
Тупо втрачає всі сенси,
Кожен поцілунок -
Відбиток на серці,
Твоє ім''я, як тату, не зітру!
А Ти - безмежних моїх світів маяк,
А я залежна, бо вся твоя!..

Приспів.

Тіло заховалось в обіймах,
Губи у полоні, не вільні,
Знову почуття, наче хвилі,
Лиш до тебе несуть,
Руки біля серця стискаю щосили...
Лиш з тобою можу я бути щаслива!..
Твоє ім''я, як тату, не зітру!
А Ти - безмежних моїх світів маяк,
А я залежна, бо вся твоя!..

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1531323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1531323','Твоя','Приспів:
З тобою можу не боятися,
Казати кожен день,
Як сильно тебе люблю!
Посміхатися, бути слабкою
І водночас сильною,
Розчинятися від твоїх
Ніжних поцілунків і обійм,
Тільки твоя,
Назавжди ти тільки мій!..

А мені би, мені би до тебе,
Щоб удвох очима у небо,
Ніби з головою у прірву
В тебе падаю.
Світ без тебе
Тупо втрачає всі сенси,
Кожен поцілунок -
Відбиток на серці,
Твоє ім''я, як тату, не зітру!
А Ти - безмежних моїх світів маяк,
А я залежна, бо вся твоя!..

Приспів.

Тіло заховалось в обіймах,
Губи у полоні, не вільні,
Знову почуття, наче хвилі,
Лиш до тебе несуть,
Руки біля серця стискаю щосили...
Лиш з тобою можу я бути щаслива!..
Твоє ім''я, як тату, не зітру!
А Ти - безмежних моїх світів маяк,
А я залежна, бо вся твоя!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1531323_l1','pisniua_1531323','YouTube','https://www.youtube.com/watch?v=9_J46vLkur8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1531323_l2','pisniua_1531323','YouTube','https://www.youtube.com/watch?v=7VAgj7pF4qU','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_1545127';
DELETE FROM song_versions WHERE song_id = 'pisniua_1545127';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1545127';
DELETE FROM songs WHERE id = 'pisniua_1545127';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1545127','Мужчина','Музика: Alena Omargalieva, Сергій Ранов Слова: Alena Omargalieva','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'А ти на мене не чекав,
Навіть і не сподівався,
А я пришла в твоє життя,
Щоби ти мною милувався!..
Я загадала собі сон,
Щоби два серця в унісон
Билися разом,
Навіть, якщо армагедон!..
Ой, як тебе чекаю
Кожен новий день,
Відчути твою ніжність
Найтепліших долонь.
Ти, Богом даний був
Мені серед людей!..
Потрапила у твій полон!..

Приспів:
Цей мужчина тільки мій!..
Обережно, дівчата!
Мій най-найкрасивіший
Романтичний початок!
Ой, матінко, пробач,
Твоя донька пропала!
За добрі очі, за щирую душу
Його покохала!

А ти на мене не чекав,
Навіть і не сподівався.
Нарешті у моє життя
Ти буревієм увірвався,
Коли ти поруч, я живу!
Тримай мене! Не відпускай!
Коли цілуєш,
Моя душа несеться в рай!

Приспів.  (2)','[''pisni.org.ua'', ''cat:devoted'', ''cat:lirychni'', ''Пісні присвячені окремим особам'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1545127'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1545127','Мужчина','А ти на мене не чекав,
Навіть і не сподівався,
А я пришла в твоє життя,
Щоби ти мною милувався!..
Я загадала собі сон,
Щоби два серця в унісон
Билися разом,
Навіть, якщо армагедон!..
Ой, як тебе чекаю
Кожен новий день,
Відчути твою ніжність
Найтепліших долонь.
Ти, Богом даний був
Мені серед людей!..
Потрапила у твій полон!..

Приспів:
Цей мужчина тільки мій!..
Обережно, дівчата!
Мій най-найкрасивіший
Романтичний початок!
Ой, матінко, пробач,
Твоя донька пропала!
За добрі очі, за щирую душу
Його покохала!

А ти на мене не чекав,
Навіть і не сподівався.
Нарешті у моє життя
Ти буревієм увірвався,
Коли ти поруч, я живу!
Тримай мене! Не відпускай!
Коли цілуєш,
Моя душа несеться в рай!

Приспів.  (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1545127_l1','pisniua_1545127','YouTube','https://www.youtube.com/watch?v=EN7D7hiQcOc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1563404';
DELETE FROM song_versions WHERE song_id = 'pisniua_1563404';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1563404';
DELETE FROM songs WHERE id = 'pisniua_1563404';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1563404','Коломийка','Музика: Євген Коваленко Слова: народні. Виконує: Кобза','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Ой, яка ти, чічка, файна,
Яка ти, яка ти!
В тебе очі, мов ті вишні
У синіх Карпатах.
Ой, яка ти, чічка, файна,
Яка ти, яка ти!
Цілу нічку виглядаю,
Втомився чекати.

Приспів:
У Карпатах течуть води,
Сопілки співають!
Молоденькі гуцулята
Сонечко стрічають!

Ой, яка ти, чічка, файна,
Яка ти, яка ти!
Буде пісня в твоїм серці
Радісно співати.

Приспів.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1563404'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1563404','Коломийка','Ой, яка ти, чічка, файна,
Яка ти, яка ти!
В тебе очі, мов ті вишні
У синіх Карпатах.
Ой, яка ти, чічка, файна,
Яка ти, яка ти!
Цілу нічку виглядаю,
Втомився чекати.

Приспів:
У Карпатах течуть води,
Сопілки співають!
Молоденькі гуцулята
Сонечко стрічають!

Ой, яка ти, чічка, файна,
Яка ти, яка ти!
Буде пісня в твоїм серці
Радісно співати.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1563404_l1','pisniua_1563404','YouTube','https://www.youtube.com/watch?v=rK765Vnco3g','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_160303';
DELETE FROM song_versions WHERE song_id = 'pisniua_160303';
DELETE FROM songs_fts WHERE song_id = 'pisniua_160303';
DELETE FROM songs WHERE id = 'pisniua_160303';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_160303','Мумітроль','Музика: Скрябін Слова: Скрябін. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,'текст: http://nashe.com.ua/song.htm?id=4569','Підбір акордів: Olegman','Intro: C G Am F

Кохана, я тебе люблю, так особливо,
Чувіха, я прошу, будь чемна, бо буду бити
Руками, ногами, своєю головою,
Локтями, ремнями, залізною трубою.

Приспів:
D#(А#)    F
Якщо ти зрадиш, кохана,
Я вирву всі твої патли,
До м''яса вкушу за руку,
Як велика скажена собака.

Якщо ти зрадиш, кохана,
Я виб''ю всі твої зуби,
В коробочку їх поскладаю
І буду над нею ридати.

Intro

Маленька, подай свій мобільний, я почитаю,
Від кого прийшла есемеска, і буду бити
Руками, ногами, своєю головою,
Локтями, ремнями, залізною трубою.

Приспів.

Solo: D# F Dm Gm (2x)

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_160303'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_160303','Мумітроль','Intro: C G Am F

Кохана, я тебе люблю, так особливо,
Чувіха, я прошу, будь чемна, бо буду бити
Руками, ногами, своєю головою,
Локтями, ремнями, залізною трубою.

Приспів:
D#(А#)    F
Якщо ти зрадиш, кохана,
Я вирву всі твої патли,
До м''яса вкушу за руку,
Як велика скажена собака.

Якщо ти зрадиш, кохана,
Я виб''ю всі твої зуби,
В коробочку їх поскладаю
І буду над нею ридати.

Intro

Маленька, подай свій мобільний, я почитаю,
Від кого прийшла есемеска, і буду бити
Руками, ногами, своєю головою,
Локтями, ремнями, залізною трубою.

Приспів.

Solo: D# F Dm Gm (2x)

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_160303_l1','pisniua_160303','YouTube','https://www.youtube.com/watch?v=pkKJCmjD4fI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_160303_l2','pisniua_160303','YouTube','https://www.youtube.com/watch?v=jcJG9azCHcI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_160303_l3','pisniua_160303','YouTube','https://www.youtube.com/watch?v=EVYJNYqxN78','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_1622';
DELETE FROM song_versions WHERE song_id = 'pisniua_1622';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1622';
DELETE FROM songs WHERE id = 'pisniua_1622';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1622','Під облачком','Музика: Ярослав Трохановскій Слова: Семан Мадзелян. Виконує: Анна Чеберенчик, Марія Бурмака, Гайдамаки, Надія Боянівська, Володимир Самайда','uk','ukraine_1991',NULL,NULL,'Текст записано на слух з аудіо: Марія Бурмака. "Лишається надія". 1994; частково використано тексти з http://www.burmaka.kiev.ua','Деякі використані тут акорди: Asus2 [x 0 2 2 0 0] Adim [x 0 1 2 1 2] * Тут, можливо, має бути такий текст: "Же мя звурит дівка чорнобрива." На сайті http://www.burmaka.kiev.ua текст даної пісні подано з суттєвими помилками. Тут ці помилки частково виправлено. Значення деяких використаних тут слів і словосполучень лемківського діалекту: - під облачком - під віконцем - премилений - гарний - нич - нічого - д''яблом (дзяблем) - дияволом - видів - бачив Підбір акордів: bohdanko','Вступ:
Am Asus2
Під облачком явір похилений,
Сидит на нім пташок премилений.
Am          Adіm       E    F C
Слухай, мила, як той пташок співа,
Же з любови нич добра не бива.
Же з любови, же з любови нич добра не бива.
Ци та любов є од Бога дана?
Ци лем може д''яблом підшептана?
Хоч би-с не хтів, то мусиш любити,
Хоч би-с не хтів, прото маш терпіти.
Хоч би-с не хтів, хоч би-с не хтів, прото маш терпіти.
Мила, мила, ти покусо єдна,
Любив я тя не рік і не два.
Ци ми дала зілля си напити?
Не мож, мила, ніяк без тя жити.
Не мож, мила, не мож, мила, ніяк без тя жити.
Ми ворожка давно ворожила,
Же мя здурит дівка чорнобрива.  *
Же не буду видів за ньов світа,
Аж проминут мої млади літа.
Аж проминут, аж проминут мої млади літа.
Програш (на тему Вступу).
Під облачком явір зеленіє.
Посмотр, мила, як той вітер віє.
Може, вирве єго з корінями.
Мила моя, што то буде з нами?
Мила моя, мила моя, што то буде з нами?
Програш (на тему Вступу).','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:lirychni'', ''Лемківські пісні'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1622'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1622','Під облачком','Вступ:
Am Asus2
Під облачком явір похилений,
Сидит на нім пташок премилений.
Am          Adіm       E    F C
Слухай, мила, як той пташок співа,
Же з любови нич добра не бива.
Же з любови, же з любови нич добра не бива.
Ци та любов є од Бога дана?
Ци лем може д''яблом підшептана?
Хоч би-с не хтів, то мусиш любити,
Хоч би-с не хтів, прото маш терпіти.
Хоч би-с не хтів, хоч би-с не хтів, прото маш терпіти.
Мила, мила, ти покусо єдна,
Любив я тя не рік і не два.
Ци ми дала зілля си напити?
Не мож, мила, ніяк без тя жити.
Не мож, мила, не мож, мила, ніяк без тя жити.
Ми ворожка давно ворожила,
Же мя здурит дівка чорнобрива.  *
Же не буду видів за ньов світа,
Аж проминут мої млади літа.
Аж проминут, аж проминут мої млади літа.
Програш (на тему Вступу).
Під облачком явір зеленіє.
Посмотр, мила, як той вітер віє.
Може, вирве єго з корінями.
Мила моя, што то буде з нами?
Мила моя, мила моя, што то буде з нами?
Програш (на тему Вступу).');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1622_l1','pisniua_1622','YouTube','https://www.youtube.com/watch?v=EdDFF80vzj0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1622_l2','pisniua_1622','YouTube','https://www.youtube.com/watch?v=Oxqm1joc3jI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1622_l3','pisniua_1622','YouTube','https://www.youtube.com/watch?v=vfReLU3-mHo','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1622_l4','pisniua_1622','YouTube','https://www.youtube.com/watch?v=TV9s72Z7GaQ','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1622_l5','pisniua_1622','YouTube','https://www.youtube.com/watch?v=ONqMvVfQ-n8','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1622_l6','pisniua_1622','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_167828';
DELETE FROM song_versions WHERE song_id = 'pisniua_167828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_167828';
DELETE FROM songs WHERE id = 'pisniua_167828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_167828','Заколишу','Музика: Олександр Пономарьов Слова: Олександр Пономарьов. Виконує: Олександр Пономарьов','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: kolivan','Вступ:  D G A   D G B

Куплет:

Верби з вітром колискової співають,
Тихо шепчуться трави,
Це для тебе в ніч зірки не згасають,
Для тебе солов''ї співають.

Приспів:
Заколишу, присплю і в сні я цілуватиму тебе.
Заколишу, присплю і в сні я цілуватиму тебе.

Вступ.

Я тебе приголублю, зігрію,
Принесу найкращі квіти,
Лиш одна солодка в мене ти мрія,
Для мене ти одна надія.

Приспів.
Модуляція на 1 тон.

Верби з вітром колискової співають,
Тихо шепчуться трави,
Це для тебе в ніч зірки не згасають,
Для тебе солов''ї співають.

Приспів:
Заколишу, присплю і в сні я цілуватиму тебе.
Заколишу, присплю і в сні я цілуватиму тебе','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_167828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_167828','Заколишу','Вступ:  D G A   D G B

Куплет:

Верби з вітром колискової співають,
Тихо шепчуться трави,
Це для тебе в ніч зірки не згасають,
Для тебе солов''ї співають.

Приспів:
Заколишу, присплю і в сні я цілуватиму тебе.
Заколишу, присплю і в сні я цілуватиму тебе.

Вступ.

Я тебе приголублю, зігрію,
Принесу найкращі квіти,
Лиш одна солодка в мене ти мрія,
Для мене ти одна надія.

Приспів.
Модуляція на 1 тон.

Верби з вітром колискової співають,
Тихо шепчуться трави,
Це для тебе в ніч зірки не згасають,
Для тебе солов''ї співають.

Приспів:
Заколишу, присплю і в сні я цілуватиму тебе.
Заколишу, присплю і в сні я цілуватиму тебе');
DELETE FROM song_links WHERE song_id = 'pisniua_188202';
DELETE FROM song_versions WHERE song_id = 'pisniua_188202';
DELETE FROM songs_fts WHERE song_id = 'pisniua_188202';
DELETE FROM songs WHERE id = 'pisniua_188202';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_188202','В глибокій долині сталася новина','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: ― Святі Водорщі) ―: Дівич-Вечір...... Зелені Свята () ― Царинні Містерії...... Астральні Жнива... Рокове Коло.','В глибокій долині
Сталася новина,
То Пречиста Діва Мати       |
Сина породила.              | (2)

А як породила,
Та й стала співати:
"Люляй, люляй, мій синочку, |
А я буду спати."            | (2)

"Мамо моя, мамо,
Зажди хоч хвилину,
Бо я іду на небеса,         |
Принесу перину".            | (2)

"Ой сину, мій сину,
Де ж ти таке годен,
Іще нема три години,        |
Як Ти ся народив".          | (2)

"Мамо ж моя, мамо,
Годен же я, годен.
Я сотворив небо й землю     |
Поки ся народив".           | (2)','[''pisni.org.ua'', ''cat:narodni'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_188202'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_188202','В глибокій долині сталася новина','В глибокій долині
Сталася новина,
То Пречиста Діва Мати       |
Сина породила.              | (2)

А як породила,
Та й стала співати:
"Люляй, люляй, мій синочку, |
А я буду спати."            | (2)

"Мамо моя, мамо,
Зажди хоч хвилину,
Бо я іду на небеса,         |
Принесу перину".            | (2)

"Ой сину, мій сину,
Де ж ти таке годен,
Іще нема три години,        |
Як Ти ся народив".          | (2)

"Мамо ж моя, мамо,
Годен же я, годен.
Я сотворив небо й землю     |
Поки ся народив".           | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_188202_l1','pisniua_188202','YouTube','https://www.youtube.com/watch?v=bBT_ado6G90','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_188202_l2','pisniua_188202','YouTube','https://www.youtube.com/watch?v=Z9l88GrOL7A','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_188202_l3','pisniua_188202','YouTube','https://www.youtube.com/watch?v=Pa5fBYPJejc','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_194202';
DELETE FROM song_versions WHERE song_id = 'pisniua_194202';
DELETE FROM songs_fts WHERE song_id = 'pisniua_194202';
DELETE FROM songs WHERE id = 'pisniua_194202';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_194202','Та як сів Христос та вечеряти','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'До народних джерел Сумщини. Хрестоматія – посібник. Упорядник С.В. П’ятаченко',NULL,'Та як сів Христос та вечеряти
Щедрий вечір! Вам добрий вечір!

Та прийшла к йому Божая Мати:
Щедрий вечір! Вам добрий вечір!

Та сідай, Мати, з нами вечеряти.
Щедрий вечір! Вам добрий вечір!

Ой спасибі, Сину, за твою вечерю,
Щедрий вечір! Вам добрий вечір!

Ой дай мені, Сину, райськії ключі
Щедрий вечір! Вам добрий вечір!

Та й одімкнути рай і пекло,
Щедрий вечір! Вам добрий вечір!

Тай повипускати всі праведні душі,
Щедрий вечір! Вам добрий вечір!

Тільки однієї та не випускати:
Щедрий вечір! Вам добрий вечір!

Вона поругала отця і неньку,
Щедрий вечір! Вам добрий вечір!

І братіка, і сестрицю,
Щедрий вечір! Вам добрий вечір!

Вона не ругала, тільки подумала.
Щедрий вечір! Вам добрий вечір!','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_194202'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_194202','Та як сів Христос та вечеряти','Та як сів Христос та вечеряти
Щедрий вечір! Вам добрий вечір!

Та прийшла к йому Божая Мати:
Щедрий вечір! Вам добрий вечір!

Та сідай, Мати, з нами вечеряти.
Щедрий вечір! Вам добрий вечір!

Ой спасибі, Сину, за твою вечерю,
Щедрий вечір! Вам добрий вечір!

Ой дай мені, Сину, райськії ключі
Щедрий вечір! Вам добрий вечір!

Та й одімкнути рай і пекло,
Щедрий вечір! Вам добрий вечір!

Тай повипускати всі праведні душі,
Щедрий вечір! Вам добрий вечір!

Тільки однієї та не випускати:
Щедрий вечір! Вам добрий вечір!

Вона поругала отця і неньку,
Щедрий вечір! Вам добрий вечір!

І братіка, і сестрицю,
Щедрий вечір! Вам добрий вечір!

Вона не ругала, тільки подумала.
Щедрий вечір! Вам добрий вечір!');
DELETE FROM song_links WHERE song_id = 'pisniua_194220';
DELETE FROM song_versions WHERE song_id = 'pisniua_194220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_194220';
DELETE FROM songs WHERE id = 'pisniua_194220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_194220','Лобода','Українська народна пісня. Виконує: Бурдон','uk','ukraine_before_1917',NULL,NULL,'http://burdon.lviv.ua',NULL,'Ой побреду, побреду
По коліна в лободу.
Чи я в тебе наймичка,
Що я боса хожу?

Як я в тебе наймичка,
То ти мені заплати.
Як я в тебе хазяюшка,
Черевички купи.

Купи мені черевички
За цілого п''ятака,
Щоб я зранку до вечора
Вибивала гопака.

Ти не піп, ти не дяк,
Не цілюй мене так,
Нехай мене поцілує
Запорізький козак.

Запорізькі козаки,
Вони добрі люди,
Обернеться, поцілує
Злипаються губи.

Очерет, осока,
Чорні брови в козака.
На те мати родила,
Щоб дівчина любила.

Очерет, осочина,
В тебе жінка позичена.
Брешете, вражі люди,
Оженюся - жінка буде!','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_194220'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_194220','Лобода','Ой побреду, побреду
По коліна в лободу.
Чи я в тебе наймичка,
Що я боса хожу?

Як я в тебе наймичка,
То ти мені заплати.
Як я в тебе хазяюшка,
Черевички купи.

Купи мені черевички
За цілого п''ятака,
Щоб я зранку до вечора
Вибивала гопака.

Ти не піп, ти не дяк,
Не цілюй мене так,
Нехай мене поцілує
Запорізький козак.

Запорізькі козаки,
Вони добрі люди,
Обернеться, поцілує
Злипаються губи.

Очерет, осока,
Чорні брови в козака.
На те мати родила,
Щоб дівчина любила.

Очерет, осочина,
В тебе жінка позичена.
Брешете, вражі люди,
Оженюся - жінка буде!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_194220_l1','pisniua_194220','YouTube','https://www.youtube.com/watch?v=TFnZNnGMFko','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_194220_l2','pisniua_194220','YouTube','https://www.youtube.com/watch?v=I3eeV0Ex4Vg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_197220';
DELETE FROM song_versions WHERE song_id = 'pisniua_197220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_197220';
DELETE FROM songs WHERE id = 'pisniua_197220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_197220','Ой легойка коломийка','Українська народна пісня. Виконує: Народний хор Україна','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой легойка коломийка
Легойка, легойка,
Та від тої коломийки
Болить головойка.
Та як станиш коломийки
Співати, співати,
Затужиш ти та й заплачеш
Та й станеш думати.

Сидить Юра коло мура,
А я трошки збоку,
Який, мамко, Юра файний,
Лишень го нівроку.
Ци я тобі не казала,
Юрію, Юрію,
Не пий воду студененьку,
Я тобі нагрію.

Не пий воду студененьку,
Але пий медочек;
Солодіші твої губки
Від тих співаночок.
Ой Юрію, Юрієчку,
Юрію-кришталю,
Кажуть люди, що ти люблю,
Сама си не таю.

Ішов любчик в полонину
З білими вівцема,
Забрав мою перстинину
З трьома камінцєма.
Або мені перстинину,
Або мені гроші,
Або ми си побираймо-
Обоє хороші.

Нащо нам си,Юрієчку,
Таїти, таїти,
Коли ми си так любимо,
Як маленькі діти.
Гуцулочка молоденька,
Гуцулочка красна,
Як си вбуєш, опережеш,
Як та чічка ясна.

На тім боці при потоці
Хатки повбивані,
А в Космачі такі дівки,
Як намальовані.
Подивлю си я на Космач,
А в Космачі ємі,
А в Космачі такі дівки,
Як цвіт на калині.','[''pisni.org.ua'', ''cat:kolomyyky'', ''cat:zhartivlyvi'', ''Коломийки'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_197220'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_197220','Ой легойка коломийка','Ой легойка коломийка
Легойка, легойка,
Та від тої коломийки
Болить головойка.
Та як станиш коломийки
Співати, співати,
Затужиш ти та й заплачеш
Та й станеш думати.

Сидить Юра коло мура,
А я трошки збоку,
Який, мамко, Юра файний,
Лишень го нівроку.
Ци я тобі не казала,
Юрію, Юрію,
Не пий воду студененьку,
Я тобі нагрію.

Не пий воду студененьку,
Але пий медочек;
Солодіші твої губки
Від тих співаночок.
Ой Юрію, Юрієчку,
Юрію-кришталю,
Кажуть люди, що ти люблю,
Сама си не таю.

Ішов любчик в полонину
З білими вівцема,
Забрав мою перстинину
З трьома камінцєма.
Або мені перстинину,
Або мені гроші,
Або ми си побираймо-
Обоє хороші.

Нащо нам си,Юрієчку,
Таїти, таїти,
Коли ми си так любимо,
Як маленькі діти.
Гуцулочка молоденька,
Гуцулочка красна,
Як си вбуєш, опережеш,
Як та чічка ясна.

На тім боці при потоці
Хатки повбивані,
А в Космачі такі дівки,
Як намальовані.
Подивлю си я на Космач,
А в Космачі ємі,
А в Космачі такі дівки,
Як цвіт на калині.');
DELETE FROM song_links WHERE song_id = 'pisniua_193323';
DELETE FROM song_versions WHERE song_id = 'pisniua_193323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_193323';
DELETE FROM songs WHERE id = 'pisniua_193323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_193323','Булочка з маком','Музика: Володимир Бебешко Слова: Віка Врадій. Виконує: Віка Врадій','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я знов сама, ти десь на горі
І твої вівці набридли мені.
Я хочу ласки, я хочу любов,
Я хочу ше щось, а ти десь пропав.

Приспів:
З маком, з маком, з маком,
З маком булка
Я люблю булочку з маком.
З маком, з маком, з маком,
З маком булка
Я люблю булочку з маком.

Я вже цвіту, як на хлібі плісня,
В вікно ся дивлю на твої поля,
Я пам''ятаю на стріху любов,
А потім тато сокиров кидав.

Приспів.

Не маю сили чекати тя з гір,
Мені Грицько сказав: "ком ту хір",
Він нині буде - козання "ком-ком",
А ти є ліпше з своїм батогом.

Приспів.

Ой ти хора головонька,
Макове зернятко,
Покохай мене так сильно,
Як своє ягнятко!..','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_193323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_193323','Булочка з маком','Я знов сама, ти десь на горі
І твої вівці набридли мені.
Я хочу ласки, я хочу любов,
Я хочу ше щось, а ти десь пропав.

Приспів:
З маком, з маком, з маком,
З маком булка
Я люблю булочку з маком.
З маком, з маком, з маком,
З маком булка
Я люблю булочку з маком.

Я вже цвіту, як на хлібі плісня,
В вікно ся дивлю на твої поля,
Я пам''ятаю на стріху любов,
А потім тато сокиров кидав.

Приспів.

Не маю сили чекати тя з гір,
Мені Грицько сказав: "ком ту хір",
Він нині буде - козання "ком-ком",
А ти є ліпше з своїм батогом.

Приспів.

Ой ти хора головонька,
Макове зернятко,
Покохай мене так сильно,
Як своє ягнятко!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_193323_l1','pisniua_193323','YouTube','https://www.youtube.com/watch?v=e9tWLBQ3cjs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_196606';
DELETE FROM song_versions WHERE song_id = 'pisniua_196606';
DELETE FROM songs_fts WHERE song_id = 'pisniua_196606';
DELETE FROM songs WHERE id = 'pisniua_196606';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_196606','Гей, тече річечка','Українська народна пісня. Виконує: Софія Федина','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Гей, тече річечка,
Гей, тече бистренька,
Ніхто не перейде,
Ніхто не перейде,
Лем я молоденька.

Лем я молоденька
Перейду з легенька,
В правій ручці ключик,
В правій ручці ключик
Од мого серденька.

В правій ручці ключик,
Серденько замкнути,
Кого я любила,
Кого я любила,
Дай, Боже, забути.

Дай, Боже, забути
Та й не пам''ятати,
На фальшивих хлопців,
На фальшивих хлопців
Надії не мати.

Гей, там серед поля
Виросла тополя,
Спитав мя шугай,
Спитав мя шугай:
Килько я мам поля.

А я поля не мам,
Лем чорни мам очи.
Мене такий возме,
Мене такий возме
Што поля не хоче','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_196606'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_196606','Гей, тече річечка','Гей, тече річечка,
Гей, тече бистренька,
Ніхто не перейде,
Ніхто не перейде,
Лем я молоденька.

Лем я молоденька
Перейду з легенька,
В правій ручці ключик,
В правій ручці ключик
Од мого серденька.

В правій ручці ключик,
Серденько замкнути,
Кого я любила,
Кого я любила,
Дай, Боже, забути.

Дай, Боже, забути
Та й не пам''ятати,
На фальшивих хлопців,
На фальшивих хлопців
Надії не мати.

Гей, там серед поля
Виросла тополя,
Спитав мя шугай,
Спитав мя шугай:
Килько я мам поля.

А я поля не мам,
Лем чорни мам очи.
Мене такий возме,
Мене такий возме
Што поля не хоче');
DELETE FROM song_links WHERE song_id = 'pisniua_196622';
DELETE FROM song_versions WHERE song_id = 'pisniua_196622';
DELETE FROM songs_fts WHERE song_id = 'pisniua_196622';
DELETE FROM songs WHERE id = 'pisniua_196622';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_196622','Ллється пісня буревісна','Українська народна пісня. Виконує: Софія Федина','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис',NULL,'Ллється пісня буревісна
По Лемківщині кругом
Гей-гей, ллється пісня -
То повстанці йдуть шляхом!

Гордо й сміло, вправо й вліво,
Мазепинки з тризубом.
Гей-гей, гордо й сміло -
То повстанці йдуть шляхом!

Серце в''яне, як погляне
До дівчини за вікном
Гей-гей, серце в''яне -
То повстанці йдуть шляхом!

Україно, Батьківщино,
В бій підемо із врагом,
Гей-гей, Україно, -
То повстанці йдуть шляхом!','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:povstanski'', ''Лемківські пісні'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_196622'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_196622','Ллється пісня буревісна','Ллється пісня буревісна
По Лемківщині кругом
Гей-гей, ллється пісня -
То повстанці йдуть шляхом!

Гордо й сміло, вправо й вліво,
Мазепинки з тризубом.
Гей-гей, гордо й сміло -
То повстанці йдуть шляхом!

Серце в''яне, як погляне
До дівчини за вікном
Гей-гей, серце в''яне -
То повстанці йдуть шляхом!

Україно, Батьківщино,
В бій підемо із врагом,
Гей-гей, Україно, -
То повстанці йдуть шляхом!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_196622_l1','pisniua_196622','YouTube','https://www.youtube.com/watch?v=HT0hDAErpr8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2100063';
DELETE FROM song_versions WHERE song_id = 'pisniua_2100063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2100063';
DELETE FROM songs WHERE id = 'pisniua_2100063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2100063','Пропливав туман над житом','Українська народна пісня. Виконує: Народний хор Україна','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'1.Пропливав туман над житом,
Цвів у полі мак,
Ой з широким білим світом  |
Прощався козак.            | (2)

2.Згадав неньку, згадав милу-
Застогнав від ран,
Відкрив очі через силу,    |
А в очах туман.            | (2)

3.Десь в тумані ворон кряче
На горе-біду,
Десь його миленька плаче   |
В вишневім саду.           | (2)

4.Не дійти вже до криниці
По воду живу,
Десь поставлять у каплиці  |
Свічку і йому.             | (2)','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2100063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2100063','Пропливав туман над житом','1.Пропливав туман над житом,
Цвів у полі мак,
Ой з широким білим світом  |
Прощався козак.            | (2)

2.Згадав неньку, згадав милу-
Застогнав від ран,
Відкрив очі через силу,    |
А в очах туман.            | (2)

3.Десь в тумані ворон кряче
На горе-біду,
Десь його миленька плаче   |
В вишневім саду.           | (2)

4.Не дійти вже до криниці
По воду живу,
Десь поставлять у каплиці  |
Свічку і йому.             | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2100063_l1','pisniua_2100063','YouTube','https://www.youtube.com/watch?v=bWDSY1_4Rws','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2103199';
DELETE FROM song_versions WHERE song_id = 'pisniua_2103199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2103199';
DELETE FROM songs WHERE id = 'pisniua_2103199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2103199','Достойно є','Музика: Микола Леонтович Слова: народні. Виконує: Хор імені Григорія Верьовки','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Достойно є...
Достойно є, і це є істина -
Славити Тебе, Богородицю,
Завжди Славную і Пренепорочную,
Й Матір Бога нашого.

Чеснішу,
Чеснішу від Херувимів
І незрівнянно
Славнішу від Серафимів,
Що без зотління
Бога Слово, Бога Слово
Бога Слово породила!

Дійсну Богородицю,
Тебе величаємо,
Тебе величаємо!..','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2103199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2103199','Достойно є','Достойно є...
Достойно є, і це є істина -
Славити Тебе, Богородицю,
Завжди Славную і Пренепорочную,
Й Матір Бога нашого.

Чеснішу,
Чеснішу від Херувимів
І незрівнянно
Славнішу від Серафимів,
Що без зотління
Бога Слово, Бога Слово
Бога Слово породила!

Дійсну Богородицю,
Тебе величаємо,
Тебе величаємо!..');
DELETE FROM song_links WHERE song_id = 'pisniua_210717';
DELETE FROM song_versions WHERE song_id = 'pisniua_210717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_210717';
DELETE FROM songs WHERE id = 'pisniua_210717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_210717','Він чекає на неї','Музика: Святослав Вакарчук Слова: Святослав Вакарчук. Виконує: Олександр Пономарьов','uk','ukraine_1991',NULL,NULL,'http://nashe.com.ua/artist.htm?id=31',NULL,'Він любить косити газони,
Вона любить збирати квіти,
Він не знає, де діти гроші,
А у неї голодні діти.
Вона встане і піде в місто,
Щоб шукати нової долі,
А він полетить у далі -
У нього своя неволя.

Приспів:
Але він чекає на неї,
Він чекає на неї,
Він так давно чекає на неї,
Чекає завжди!

У нього кидають камінь,
Бо не може він їх догнати,
А для неї співають пісню
І готові життя чекати!
У неї багато сонця,
Подарованого батьками,
А у нього сім''я - лиш небо,
Він не знає своєї мами...

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_210717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_210717','Він чекає на неї','Він любить косити газони,
Вона любить збирати квіти,
Він не знає, де діти гроші,
А у неї голодні діти.
Вона встане і піде в місто,
Щоб шукати нової долі,
А він полетить у далі -
У нього своя неволя.

Приспів:
Але він чекає на неї,
Він чекає на неї,
Він так давно чекає на неї,
Чекає завжди!

У нього кидають камінь,
Бо не може він їх догнати,
А для неї співають пісню
І готові життя чекати!
У неї багато сонця,
Подарованого батьками,
А у нього сім''я - лиш небо,
Він не знає своєї мами...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_210717_l1','pisniua_210717','YouTube','https://www.youtube.com/watch?v=RPPhgXPpKLc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_211114';
DELETE FROM song_versions WHERE song_id = 'pisniua_211114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_211114';
DELETE FROM songs WHERE id = 'pisniua_211114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_211114','Вона','Музика: Кость Москалець Слова: Кость Москалець. Виконує: Плач Єремії','uk','ukraine_1991',NULL,NULL,'Пісневир. Молодіжний співаник. Львів 2001.',NULL,'Завтра прийде до кімнати
Твоїх друзів   небагато,
Вип''єте холодного вина.

Хтось принесе білі айстри,
Скаже хтось — життя прекрасне,
Так, життя прекрасне, а вона...

Приспів:
А вона, а вона сидітиме сумна,
Буде пити — не п''яніти   від дешевого вина.
Я співатиму для неї, аж бринітиме кришталь,
Та хіба зуміє голос подолати цю печаль.

Так вже в світі повелося —
Я люблю її волосся,
Я люблю її тонкі уста.

Та невдовзі прийде осінь,
Ми усі розбіжимося
По русифікованих містах.

Приспів:
Лиш вона, лиш вона сидітиме сумна,
Буде пити — не п''яніти від дешевого вина.
Моя дівчинко печальна, моя доле золота,
Я продовжую кричати... ніч безмежна і пуста.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:philosophic'', ''Пісні про кохання, ліричні'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_211114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_211114','Вона','Завтра прийде до кімнати
Твоїх друзів   небагато,
Вип''єте холодного вина.

Хтось принесе білі айстри,
Скаже хтось — життя прекрасне,
Так, життя прекрасне, а вона...

Приспів:
А вона, а вона сидітиме сумна,
Буде пити — не п''яніти   від дешевого вина.
Я співатиму для неї, аж бринітиме кришталь,
Та хіба зуміє голос подолати цю печаль.

Так вже в світі повелося —
Я люблю її волосся,
Я люблю її тонкі уста.

Та невдовзі прийде осінь,
Ми усі розбіжимося
По русифікованих містах.

Приспів:
Лиш вона, лиш вона сидітиме сумна,
Буде пити — не п''яніти від дешевого вина.
Моя дівчинко печальна, моя доле золота,
Я продовжую кричати... ніч безмежна і пуста.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_211114_l1','pisniua_211114','YouTube','https://www.youtube.com/watch?v=zgvTfhHdvUs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_211114_l2','pisniua_211114','YouTube','https://www.youtube.com/watch?v=GRJ8vBdKhPo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_211114_l3','pisniua_211114','YouTube','https://www.youtube.com/watch?v=4_IhWydtQr0','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_211114_l4','pisniua_211114','YouTube','https://www.youtube.com/watch?v=BzkJIMW6Mx4','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_211114_l5','pisniua_211114','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_21111';
DELETE FROM song_versions WHERE song_id = 'pisniua_21111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_21111';
DELETE FROM songs WHERE id = 'pisniua_21111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_21111','Олівці','Виконує: Ілюзія Дотику','uk','ukraine_1991',NULL,NULL,'Збірник пісень Студентського братства Львівської політехніки. Львів 2000.','Пісня "Андрія з Рівного"','Подарувала мені мама кольорові олівці,
А я сиджу собі й малюю різнобарвні прапорці:
Прапорець червоно-чорний, синьо-жовтий прапорець,
Бо Радянському Союзу вже нарешті є кінець.

Оголосили голодовку вчора ми у дитсадку.
Хай портрет вождя знімають, що прибитий у кутку.
Хай портрет Бандери вчеплять, що за волю воював,
Що за вільну Україну свою голову поклав.

А мама герб намалювала, і серп, і молот угорі
І "Єднайтесь", — написала, — "Всіх країн пролетарі".
А я узяв і все закреслив, і тризуб намалював,
І "Слава вільній Україні!" — гордо мамі я сказав.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:zhartivlyvi'', ''Бардівські пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_21111'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_21111','Олівці','Подарувала мені мама кольорові олівці,
А я сиджу собі й малюю різнобарвні прапорці:
Прапорець червоно-чорний, синьо-жовтий прапорець,
Бо Радянському Союзу вже нарешті є кінець.

Оголосили голодовку вчора ми у дитсадку.
Хай портрет вождя знімають, що прибитий у кутку.
Хай портрет Бандери вчеплять, що за волю воював,
Що за вільну Україну свою голову поклав.

А мама герб намалювала, і серп, і молот угорі
І "Єднайтесь", — написала, — "Всіх країн пролетарі".
А я узяв і все закреслив, і тризуб намалював,
І "Слава вільній Україні!" — гордо мамі я сказав.');
DELETE FROM song_links WHERE song_id = 'pisniua_2124277';
DELETE FROM song_versions WHERE song_id = 'pisniua_2124277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2124277';
DELETE FROM songs WHERE id = 'pisniua_2124277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2124277','Ой Петре, Петре, петрівочка','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1965','Пісні з Волині, Музична Україна, Київ - 1970','Петрівочна пісня, записана в с. Колдяжне Ковельського р-ну від В. С. Філіпчук, 1965','Ой Петре, Петре, петрівочка,
Не виспалася невісточка.
Погнала воли, задрімала,
На пень ноженьки позбивала.
Ой дай же Боже, більшої ночі,
На невістчині чорнії очі,
На невістчине біле тіло,
Щоб воно спати не хотіло.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2124277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2124277','Ой Петре, Петре, петрівочка','Ой Петре, Петре, петрівочка,
Не виспалася невісточка.
Погнала воли, задрімала,
На пень ноженьки позбивала.
Ой дай же Боже, більшої ночі,
На невістчині чорнії очі,
На невістчине біле тіло,
Щоб воно спати не хотіло.');
DELETE FROM song_links WHERE song_id = 'pisniua_2124251';
DELETE FROM song_versions WHERE song_id = 'pisniua_2124251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2124251';
DELETE FROM songs WHERE id = 'pisniua_2124251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2124251','Ой на горі зацвіли ожинки','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1967','Пісні з Волині, Музична Україна, Київ - 1970','Жниварська, записана в с. Лобна Любомльського р-ну від А. В. Поліщук, 1967','Ой на горі зацвіли ожинки,
В нашого господаря дожинки.

Ой до межі, женчики, до межі,
Розчинені пироженьки у діжі.

Ой жніте, женчики, до краю,
На вечерю бохінчика покраю.','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2124251'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2124251','Ой на горі зацвіли ожинки','Ой на горі зацвіли ожинки,
В нашого господаря дожинки.

Ой до межі, женчики, до межі,
Розчинені пироженьки у діжі.

Ой жніте, женчики, до краю,
На вечерю бохінчика покраю.');
DELETE FROM song_links WHERE song_id = 'pisniua_212354';
DELETE FROM song_versions WHERE song_id = 'pisniua_212354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_212354';
DELETE FROM songs WHERE id = 'pisniua_212354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_212354','Село','Музика: Данило Слова: Данило. Виконує: Данило','uk','ukraine_1991',NULL,NULL,'http://www.navsi100.com/','Виконує Данило.','Немає спасу на селі,
Усі женилися давно.
Немає, що робить мені...
Немає з ким піти в кіно...
В селі є дівчина одна,
І та горбата, і страшна.
Сьогодні йду до неї я,
Кохана дівчина моя!..

Приспів:
Хоч куди не підеш,
Кращої не знайдеш!
Ти зосталась одна,
В селі нікого нема!
Холєра!
Хоч куди не підеш,
Кращої не знайдеш!
Ти зосталась одна,
В селі нікого нема!

Ми самогону наженем,
Підем до клубу і хильнем,
Юрба танцює на очах,
А з ними дівчина в штанах.
А після цього всі разом
Підем в зажурене село
І чути п''яную юрбу,
А з ними дівчину мою...

Приспів.

У нас болото до колін,
Нема електрики в селі,
Сюди автобус не заїде,
Немає спасу на селі...
Немає спасу на селі,
Усі женилися давно,
Немає дівчини-краси,
Немає з ким піти в кіно...

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_212354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_212354','Село','Немає спасу на селі,
Усі женилися давно.
Немає, що робить мені...
Немає з ким піти в кіно...
В селі є дівчина одна,
І та горбата, і страшна.
Сьогодні йду до неї я,
Кохана дівчина моя!..

Приспів:
Хоч куди не підеш,
Кращої не знайдеш!
Ти зосталась одна,
В селі нікого нема!
Холєра!
Хоч куди не підеш,
Кращої не знайдеш!
Ти зосталась одна,
В селі нікого нема!

Ми самогону наженем,
Підем до клубу і хильнем,
Юрба танцює на очах,
А з ними дівчина в штанах.
А після цього всі разом
Підем в зажурене село
І чути п''яную юрбу,
А з ними дівчину мою...

Приспів.

У нас болото до колін,
Нема електрики в селі,
Сюди автобус не заїде,
Немає спасу на селі...
Немає спасу на селі,
Усі женилися давно,
Немає дівчини-краси,
Немає з ким піти в кіно...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_212354_l1','pisniua_212354','YouTube','https://www.youtube.com/watch?v=zaIMAg-9guc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2125716';
DELETE FROM song_versions WHERE song_id = 'pisniua_2125716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2125716';
DELETE FROM songs WHERE id = 'pisniua_2125716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2125716','Журба за журбою','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1966','Пісні з Волині, Музична Україна, Київ-1970','Пісня про сімейне життя. Записана в с. Світязь Любомльського р-ну від Ф. П. Прасюк, 1966','Журба за журбою,
Туга за тугою.
Дала ж мене мати
Заміж молодою.

На людському полі
жито та пшениця,
А на мому полі
Кукіль та метлиця.

На людському полі
Косарики косять,
А на мому полі
журавлики зносять.

На людському полі
Копа до копи,
А на мому полі
Лежать штири снопи.

А я подумала,
Що з ними зробити,
Чи їх в скирти скласти,
Чи помолотити?

Чи їх в скирти скласти,
Чи помолотити.
Чи здати до корчми
та й тії пропити?','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2125716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2125716','Журба за журбою','Журба за журбою,
Туга за тугою.
Дала ж мене мати
Заміж молодою.

На людському полі
жито та пшениця,
А на мому полі
Кукіль та метлиця.

На людському полі
Косарики косять,
А на мому полі
журавлики зносять.

На людському полі
Копа до копи,
А на мому полі
Лежать штири снопи.

А я подумала,
Що з ними зробити,
Чи їх в скирти скласти,
Чи помолотити?

Чи їх в скирти скласти,
Чи помолотити.
Чи здати до корчми
та й тії пропити?');
DELETE FROM song_links WHERE song_id = 'pisniua_2126515';
DELETE FROM song_versions WHERE song_id = 'pisniua_2126515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2126515';
DELETE FROM songs WHERE id = 'pisniua_2126515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2126515','Весело, батейку, весело','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1965','Пісні з Волині, Музична Україна, Київ-1970','Жниварська. Виконується на мелодію пісні "Маяло житечко, маяло". Записана в с.Старі Кошари Ковельського р-ну від А. М. Клімашевської, 1965','Весело, батейку, весело.
Ми тобі віночка несемо.
А ще буде веселій,
Як положемо на столі.
Як положемо на столі,
колосочками до землі.
Пожнемо гори й долинки.
Зробимо,  батейку, обжинки.','[''pisni.org.ua'', ''cat:obzhynkovi'', ''cat:volynski'', ''Обжинкові пісні'', ''Пісні з Волині'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2126515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2126515','Весело, батейку, весело','Весело, батейку, весело.
Ми тобі віночка несемо.
А ще буде веселій,
Як положемо на столі.
Як положемо на столі,
колосочками до землі.
Пожнемо гори й долинки.
Зробимо,  батейку, обжинки.');
DELETE FROM song_links WHERE song_id = 'pisniua_2126591';
DELETE FROM song_versions WHERE song_id = 'pisniua_2126591';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2126591';
DELETE FROM songs WHERE id = 'pisniua_2126591';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2126591','Сало','Музика: Ю. Пономаренко Слова: Наталія Багмут. Виконує: Михайло Поплавський','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Приспів:
Ой, ой, ой, і до душі пристало
Ой, ой, ой, і наше рідне сало!
Ой, закуски кращої немає,
Гей, наливай! Душа співає!
Ой, ой, ой, і наше рідне сало!
Ой, ой, ой, і тебе не буде мало!
Ой, з тобою наш народ гуляє!
Ой, душа співає!

Знов дорога повела
Від села і до села,
Де цвіте картопля на городі,
Де Вкраїнське сало завжди в моді!
Сало їм, на салі сплю,
Бо я так його люблю!
От якби ще й салом укривався,
То як сир у маслі я б купався!

Приспів.

Український талісман,
Віковічний наш талан,
Сало - символ сили і достатку,
Буде сало - буде все в порядку!
Хай кабанчики ростуть,
Хай багатство нам дають,
Щоб ми всі жили як бочки в салі,
Щоб не знали горя і печалі!

Приспів','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2126591'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2126591','Сало','Приспів:
Ой, ой, ой, і до душі пристало
Ой, ой, ой, і наше рідне сало!
Ой, закуски кращої немає,
Гей, наливай! Душа співає!
Ой, ой, ой, і наше рідне сало!
Ой, ой, ой, і тебе не буде мало!
Ой, з тобою наш народ гуляє!
Ой, душа співає!

Знов дорога повела
Від села і до села,
Де цвіте картопля на городі,
Де Вкраїнське сало завжди в моді!
Сало їм, на салі сплю,
Бо я так його люблю!
От якби ще й салом укривався,
То як сир у маслі я б купався!

Приспів.

Український талісман,
Віковічний наш талан,
Сало - символ сили і достатку,
Буде сало - буде все в порядку!
Хай кабанчики ростуть,
Хай багатство нам дають,
Щоб ми всі жили як бочки в салі,
Щоб не знали горя і печалі!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2126890';
DELETE FROM song_versions WHERE song_id = 'pisniua_2126890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2126890';
DELETE FROM songs WHERE id = 'pisniua_2126890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2126890','Ой не рости, кропцю','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1967','Пісні з Волині, музична Україна, Київ - 1970','Веснянка. Записана у с.Лобна Любешівського р-ну від Ю. Г. Комар, 1967','Ой не рости, кропцю,
Вище огородцю.
Ой не ходи, старий,
По моєму дворцю.

Бо я тебе, старий,
Давно не злюбила.
По твоїх слідочках
Камінь я котила.

Каміння котюче,
Сяду, започину.
Старого люблячи,
Навіки загину.','[''pisni.org.ua'', ''cat:volynski'', ''Пісні з Волині'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2126890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2126890','Ой не рости, кропцю','Ой не рости, кропцю,
Вище огородцю.
Ой не ходи, старий,
По моєму дворцю.

Бо я тебе, старий,
Давно не злюбила.
По твоїх слідочках
Камінь я котила.

Каміння котюче,
Сяду, започину.
Старого люблячи,
Навіки загину.');
DELETE FROM song_links WHERE song_id = 'pisniua_2126522';
DELETE FROM song_versions WHERE song_id = 'pisniua_2126522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2126522';
DELETE FROM songs WHERE id = 'pisniua_2126522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2126522','Чорним очкам пора спати','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1955','Пісні з Волині, Музична Україна, Київ-1970','Пісні про кохання. Записана в с.Кримно Камінь-Каширського району від групи жінок, 1955. Цю пісню деколи наспівує мій батько, а серед молодшого покоління її вже, на жаль, не чути','Чорним очкам пора спати,
Бо їм треба рано встати,
Бо їм треба рано встати,
Коничкові обрік дати.
Коничкові обрік дати,
До дівчини поїхати.
Під''їжджає під ворота -
Стоїть дівка краща злота.
На ній сукня паперова,
Сама гарана, чорноброва.
Бере коня за гривоньку,
А козака за рученьку.
Дає коню вівса-сіна,
А козаку меду-вина.
Сама сіла в кінці стола,
До козака - ані слова.
"Чого сіла, посмутніла,
Чи жаль коню вівса-сіна?
Чи жаль коню вівса-сіна,
Чи козаку меду-вина?"
"Не жаль коню вівса-сіна,
Ні козаку меду-вина,
А жаль мені молодості,
Що не любиш по щирості"','[''pisni.org.ua'', ''cat:volynski'', ''Пісні з Волині'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2126522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2126522','Чорним очкам пора спати','Чорним очкам пора спати,
Бо їм треба рано встати,
Бо їм треба рано встати,
Коничкові обрік дати.
Коничкові обрік дати,
До дівчини поїхати.
Під''їжджає під ворота -
Стоїть дівка краща злота.
На ній сукня паперова,
Сама гарана, чорноброва.
Бере коня за гривоньку,
А козака за рученьку.
Дає коню вівса-сіна,
А козаку меду-вина.
Сама сіла в кінці стола,
До козака - ані слова.
"Чого сіла, посмутніла,
Чи жаль коню вівса-сіна?
Чи жаль коню вівса-сіна,
Чи козаку меду-вина?"
"Не жаль коню вівса-сіна,
Ні козаку меду-вина,
А жаль мені молодості,
Що не любиш по щирості"');
DELETE FROM song_links WHERE song_id = 'pisniua_2128267';
DELETE FROM song_versions WHERE song_id = 'pisniua_2128267';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2128267';
DELETE FROM songs WHERE id = 'pisniua_2128267';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2128267','Ти до мене не ходи','Українська народна пісня. Виконує: Русичі','uk','ukraine_before_1917',NULL,NULL,'rusychi.org',NULL,'Ти до мене не ходи, куций коротенький,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2126910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2126910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2126910';
DELETE FROM songs WHERE id = 'pisniua_2126910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2126910','Ой виходьте, дівчата','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісні з Волині, Музична Україна, Київ - 1970','Веснянка. Записана в с.Торчин Рожищенського р-ну від А. Д. Шапова і А. П. Морушка','Ой виходьте, дівчата,
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
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2128175','Красива жінка незаміжня','Музика: Анатолій Матвійчук Слова: Анатолій Матвійчук. Виконує: Алла Кудлай','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вона прокинеться до ранку,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2130717';
DELETE FROM song_versions WHERE song_id = 'pisniua_2130717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2130717';
DELETE FROM songs WHERE id = 'pisniua_2130717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2130717','Колискова','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Колискова моєї мами',NULL,'Люлі-люлі-люлі,
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
DELETE FROM song_links WHERE song_id = 'pisniua_213414';
DELETE FROM song_versions WHERE song_id = 'pisniua_213414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_213414';
DELETE FROM songs WHERE id = 'pisniua_213414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_213414','Розпитаю про любов','Музика: Ігор Білозір Слова: Богдан Стельмах. Виконує: Ватра, Оксана Білозір','uk','ukraine_1991',NULL,NULL,'1. Стельмах Б. М. Світлиця пісень і спогадів.– Львів: Сполом, 2001 2. Аудіозапис пісні "Розпитаю про любов" у виконанні ВІА "Ватра"','Текст подано за джерелом 1. * Тут за джерелом 2: "Впали сніги в береги круто." Акорди (варіант 1) опублікував IhorKo. Акорди (варіант 2) додав bohdanko за джерелом 2.','Що за біда! - яра вода хвилю жене.
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
DELETE FROM song_links WHERE song_id = 'pisniua_213420';
DELETE FROM song_versions WHERE song_id = 'pisniua_213420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_213420';
DELETE FROM songs WHERE id = 'pisniua_213420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_213420','Пісня буде поміж нас','Музика: Володимир Івасюк Слова: Володимир Івасюк. Виконує: Софія Ротару, Назарій Яремчук, Василь Зінкевич, Смерічка, Ірина Шинкарук, Людмила Ясінська','uk','ukraine_1991',NULL,NULL,'Червона рута. Пісенник. Київ, Музична Україна, 1993','присвячена відомій поетесі й письменниці Галині Тарасюк Підбір акордів: IhorKo','Програш:
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
DELETE FROM song_links WHERE song_id = 'pisniua_214022';
DELETE FROM song_versions WHERE song_id = 'pisniua_214022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_214022';
DELETE FROM songs WHERE id = 'pisniua_214022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_214022','Час рікою пливе','Слова: Богдан Лепкий, Іван Франко. Виконує: Микола Гнатюк','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Час рікою пливе, як зустрів я тебе,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2142596';
DELETE FROM song_versions WHERE song_id = 'pisniua_2142596';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2142596';
DELETE FROM songs WHERE id = 'pisniua_2142596';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2142596','Колискова для доні','Музика: Павло Дворський Слова: Ліна Костенко. Виконує: Павло Дворський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Дитя моє, ночі безсонні,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2145216';
DELETE FROM song_versions WHERE song_id = 'pisniua_2145216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2145216';
DELETE FROM songs WHERE id = 'pisniua_2145216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2145216','Ой, гуп, тіда-ріда','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Мої бабуся і мама з Тернопільщини',NULL,'Ой, гуп, тіда-ріда,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2150515';
DELETE FROM song_versions WHERE song_id = 'pisniua_2150515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2150515';
DELETE FROM songs WHERE id = 'pisniua_2150515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2150515','Біла колискова','Музика: Таня Ша Слова: Светіслав Ґрбічб, Геннадій Сидоров. Виконує: Росава','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ніч, в небі хмари сплять,
І янголи летять до вікон...
Біль, біди всіх часів
Хай оминають всі наш дім до віку...

Ніч у тиші сипле сніг,
У білі шати білий світ вдягає.
Засинай і уві сні
Нехай чарівний наспів грає тобі...

Nocc nezhna rodjena,
Da ochі zatvara,
Da donese chuda...

Bol, zebnje, vsakі strah
Nestacce na znak,
Radost bіcce vsuda...

Nocc sad tіho sіpa sneg,
U belo ruho da odene jutro,
Nezhno jastuk grlі sad
I krіla pesme ponecce te tuda u nocc...

Ніч у тиші сипле сніг,
У білі шати білий світ вдягає.
Засинай і уві сні
Нехай чарівний наспів грає тобі...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2150515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2150515','Біла колискова','Ніч, в небі хмари сплять,
І янголи летять до вікон...
Біль, біди всіх часів
Хай оминають всі наш дім до віку...

Ніч у тиші сипле сніг,
У білі шати білий світ вдягає.
Засинай і уві сні
Нехай чарівний наспів грає тобі...

Nocc nezhna rodjena,
Da ochі zatvara,
Da donese chuda...

Bol, zebnje, vsakі strah
Nestacce na znak,
Radost bіcce vsuda...

Nocc sad tіho sіpa sneg,
U belo ruho da odene jutro,
Nezhno jastuk grlі sad
I krіla pesme ponecce te tuda u nocc...

Ніч у тиші сипле сніг,
У білі шати білий світ вдягає.
Засинай і уві сні
Нехай чарівний наспів грає тобі...');
DELETE FROM song_links WHERE song_id = 'pisniua_2152777';
DELETE FROM song_versions WHERE song_id = 'pisniua_2152777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2152777';
DELETE FROM songs WHERE id = 'pisniua_2152777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2152777','Літр портвейну','Музика: Тостер Слова: Тостер. Виконує: Тостер','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Цілий день туди-сюди,
Ні присісти, ні лягти,
То робота, то сім''я,
Де не глянь - одна ...
І тупієш на очах,
Знай, це на все життя,
Забудь про них, йди до нас!

І тупієш на очах,
Знай, це на все життя,
Забудь про них, йди до нас!
Цілий день туди-сюди,
Ні присісти, ні лягти,
То робота, то сім''я...

Купити собі портвейну літр
І випий сам його один.
Купити собі портвейну літр -
Це те, що ти давно хотів!

І "drug" не приймаю,
П''ю "вино" і все OK,
More thіngs wіll be ok,
Коли куплю собі портвейн.
Клінтон Моніку ... you,
Зараз сяду і нап''юсь,
Бен Ладен USA ... off

Купити собі портвейну літр
І випий сам його один.
Купити собі портвейну літр -
Це те, що ти давно хотів!

Цілий день туди-сюди,
Ні присісти, ні лягти,
То робота, то сім''я,
Де не глянь - одна ...
І тупієш на очах,
Знай, це на все життя,
Забудь про них, йди до нас!

Купити собі портвейну літр
І випий сам його один.
Купити собі портвейну літр -
Це те, що ти давно хотів!','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2152777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2152777','Літр портвейну','Цілий день туди-сюди,
Ні присісти, ні лягти,
То робота, то сім''я,
Де не глянь - одна ...
І тупієш на очах,
Знай, це на все життя,
Забудь про них, йди до нас!

І тупієш на очах,
Знай, це на все життя,
Забудь про них, йди до нас!
Цілий день туди-сюди,
Ні присісти, ні лягти,
То робота, то сім''я...

Купити собі портвейну літр
І випий сам його один.
Купити собі портвейну літр -
Це те, що ти давно хотів!

І "drug" не приймаю,
П''ю "вино" і все OK,
More thіngs wіll be ok,
Коли куплю собі портвейн.
Клінтон Моніку ... you,
Зараз сяду і нап''юсь,
Бен Ладен USA ... off

Купити собі портвейну літр
І випий сам його один.
Купити собі портвейну літр -
Це те, що ти давно хотів!

Цілий день туди-сюди,
Ні присісти, ні лягти,
То робота, то сім''я,
Де не глянь - одна ...
І тупієш на очах,
Знай, це на все життя,
Забудь про них, йди до нас!

Купити собі портвейну літр
І випий сам його один.
Купити собі портвейну літр -
Це те, що ти давно хотів!');
DELETE FROM song_links WHERE song_id = 'pisniua_2154063';
DELETE FROM song_versions WHERE song_id = 'pisniua_2154063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2154063';
DELETE FROM songs WHERE id = 'pisniua_2154063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2154063','Сірко собака','Музика: Вхід У Змінному Взутті Слова: Вхід У Змінному Взутті. Виконує: Вхід У Змінному Взутті','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Сірка ти знаєш, куме мій, Сірка собаку мойого,
Пішов раз я на полювання з ним - у зимку це було,
Рушницю взяв з собой, та ще і пістолєт! Да!
І думав, що відмідь тодіся не врятує, нєт!
Пішов з Cірком на полювання, ага, я це казав,
Пішов раз я на відмідя, Сірка з собою взяв,
Сірко, собака мій, пішов зі мной на ведмедя,
А шо із того було - я розкажу погодя!
Сірко, собака мій, Сірко, собака мій, собака,
Сірко, собака мій, Сірко, собака мій, пес!

Запхав в рушницю в два стволи тугого жакана,
Ведмедя думав завалить чи може кабана,
З тваринами ціма у мене давняя война,
То ж думав справді я тоді, що ведмедю - хана.
І от прямую лісом та і бачу пагорба,
Там може, справді, спить ведмідь чи може то кабан,
Сірко за мной біжить, ти знаєш, куме, то мій пес,
Як я іду на ведмедя, беру його в лєс.
Сірко, собака мій, Сірко, собака мій, собака,
Сірко, собака мій, Сірко, собака мій, пес!

Якщо берлога із медведєм, де ж там голова?..
Ведмедя мудро вполювать - то не прості слова,
І бачу я із дірочки на пагорбі щось дмить,
То точно є берлога і там лежіть ведмідь.
Чи може то помилка є, оптіческий обман,
І то є не берлога і там сидить кабан,
Та мені страшно не було, рушницю ж я узяв,
Сірко, собака мій, мене із заду прикривав.
Сірко, собака мій, Сірко, собака мій, собака,
Сірко, собака мій, Сірко, собака мій, пес!

Якщо берлога поруч, то нема шляху назад,
Важливо знать, де голова, а де ведмедя зад.
Якщо нема шляху назад, то є "питання два",
І де в берлоги зад, а де, звиняюсь, голова?..
Пулять в ведмедя навмання - то виглядає тупо,
Важливо перш за все дізнатись, де голова, де дупа,
Є у берлоги горби два, один є трохи нищий,
Там мусить бути голова, а другий трохи вищий.
Того не розумію я й Сірко - то мій собака,
Де ж у берлоги голова, а де, звиняюсь, срака...
Сірко, собака мій, Сірко, собака мій, собака,
Сірко, собака мій, Сірко, собака мій, пес!

Забий собі у люльку трохи доброго табака,
Бо ми не палимо з Сірком, Сірко - то мій собака,
Налив сам собі одну, куме, бо в мене ще є,
А Сірко, собака мій, то він горілки не п''є.
Тож націлив я рушницю та влупав два жакана,
Туди, де голова, чи в ведмедя, чи в кабана,
Влупив та й затаївся, сам дихалку причаїв,
І з ведмедем покінчено, бо думаю, влучив.
І раптом ззаду щось важке мені на плечі - гець,
Чи то ведмідь, чи то кабан, все думаю - капець,
А сам і бачу, шо Сірко, і, шо Сірко, то чую я,
І розумію, шо Сірко та сру не переставая.
Сірко, собака мій, Сірко, собака мій, собака,
Сірко, собака мій, Сірко, собака мій, пес!
Сірко, собака мій, Сірко, собака мій, собака,
Сірко, собака мій, Сірко, собака мій, пес!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2154063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2154063','Сірко собака','Сірка ти знаєш, куме мій, Сірка собаку мойого,
Пішов раз я на полювання з ним - у зимку це було,
Рушницю взяв з собой, та ще і пістолєт! Да!
І думав, що відмідь тодіся не врятує, нєт!
Пішов з Cірком на полювання, ага, я це казав,
Пішов раз я на відмідя, Сірка з собою взяв,
Сірко, собака мій, пішов зі мной на ведмедя,
А шо із того було - я розкажу погодя!
Сірко, собака мій, Сірко, собака мій, собака,
Сірко, собака мій, Сірко, собака мій, пес!

Запхав в рушницю в два стволи тугого жакана,
Ведмедя думав завалить чи може кабана,
З тваринами ціма у мене давняя война,
То ж думав справді я тоді, що ведмедю - хана.
І от прямую лісом та і бачу пагорба,
Там може, справді, спить ведмідь чи може то кабан,
Сірко за мной біжить, ти знаєш, куме, то мій пес,
Як я іду на ведмедя, беру його в лєс.
Сірко, собака мій, Сірко, собака мій, собака,
Сірко, собака мій, Сірко, собака мій, пес!

Якщо берлога із медведєм, де ж там голова?..
Ведмедя мудро вполювать - то не прості слова,
І бачу я із дірочки на пагорбі щось дмить,
То точно є берлога і там лежіть ведмідь.
Чи може то помилка є, оптіческий обман,
І то є не берлога і там сидить кабан,
Та мені страшно не було, рушницю ж я узяв,
Сірко, собака мій, мене із заду прикривав.
Сірко, собака мій, Сірко, собака мій, собака,
Сірко, собака мій, Сірко, собака мій, пес!

Якщо берлога поруч, то нема шляху назад,
Важливо знать, де голова, а де ведмедя зад.
Якщо нема шляху назад, то є "питання два",
І де в берлоги зад, а де, звиняюсь, голова?..
Пулять в ведмедя навмання - то виглядає тупо,
Важливо перш за все дізнатись, де голова, де дупа,
Є у берлоги горби два, один є трохи нищий,
Там мусить бути голова, а другий трохи вищий.
Того не розумію я й Сірко - то мій собака,
Де ж у берлоги голова, а де, звиняюсь, срака...
Сірко, собака мій, Сірко, собака мій, собака,
Сірко, собака мій, Сірко, собака мій, пес!

Забий собі у люльку трохи доброго табака,
Бо ми не палимо з Сірком, Сірко - то мій собака,
Налив сам собі одну, куме, бо в мене ще є,
А Сірко, собака мій, то він горілки не п''є.
Тож націлив я рушницю та влупав два жакана,
Туди, де голова, чи в ведмедя, чи в кабана,
Влупив та й затаївся, сам дихалку причаїв,
І з ведмедем покінчено, бо думаю, влучив.
І раптом ззаду щось важке мені на плечі - гець,
Чи то ведмідь, чи то кабан, все думаю - капець,
А сам і бачу, шо Сірко, і, шо Сірко, то чую я,
І розумію, шо Сірко та сру не переставая.
Сірко, собака мій, Сірко, собака мій, собака,
Сірко, собака мій, Сірко, собака мій, пес!
Сірко, собака мій, Сірко, собака мій, собака,
Сірко, собака мій, Сірко, собака мій, пес!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2154063_l1','pisniua_2154063','YouTube','https://www.youtube.com/watch?v=PTOdifVaoEY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2154063_l2','pisniua_2154063','YouTube','https://www.youtube.com/watch?v=IAt3iTWi_zI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_215591';
DELETE FROM song_versions WHERE song_id = 'pisniua_215591';
DELETE FROM songs_fts WHERE song_id = 'pisniua_215591';
DELETE FROM songs WHERE id = 'pisniua_215591';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_215591','Хулігани','Музика: Тартак Слова: Тартак. Виконує: Тартак','uk','ukraine_1991',NULL,NULL,'tartak@tartak.com.ua',NULL,'Мама любить тата, тато любить маму,
Мене ніхто не любить - тому мені погано!
Мама любить тата, тато любить маму,
Мене ніхто не любить - стану хуліганом!

А хулі-хулі-хулі-хулі-хулі-хулігану
Усе в житті до шмиги, усе по-барабану -
Нікого не боїться, нічого не цінує,
Захоче - дасть по пиці, захоче - поцілує!

А мама любить тата, тато любить маму,
Мене ніхто не любить - тому мені погано!
Мама любить тата, тато любить маму,
Мене ніхто не любить - стану хуліганом!

А хулі-хулі-хулі-хулі-хулі-хулігани -
Це справжні "казанови", це справжні "донжуани"!
Коли ідуть по вулиці веселою ватагою -
Дівчата всі хвилюються, дівчата так і падають!

Бо мама любить тата, тато любить маму,
Мене ніхто не любить - тому мені погано!
Мама любить тата, тато любить маму,
Мене ніхто не любить - стану хуліганом!

А хулі-хулі-хулі-хулі-хулі-хулігани -
Майбутні командири, майбутні капітани!
Без вагань відважні, хоробрі без причини!
Хулігани - справжнє майбутнє батьківщини!

Мама любить тата, тато любить маму,
Мене ніхто не любить - тому мені погано!
Мама любить тата, тато любить маму,
Мене ніхто не любить - стану хуліганом!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_215591'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_215591','Хулігани','Мама любить тата, тато любить маму,
Мене ніхто не любить - тому мені погано!
Мама любить тата, тато любить маму,
Мене ніхто не любить - стану хуліганом!

А хулі-хулі-хулі-хулі-хулі-хулігану
Усе в житті до шмиги, усе по-барабану -
Нікого не боїться, нічого не цінує,
Захоче - дасть по пиці, захоче - поцілує!

А мама любить тата, тато любить маму,
Мене ніхто не любить - тому мені погано!
Мама любить тата, тато любить маму,
Мене ніхто не любить - стану хуліганом!

А хулі-хулі-хулі-хулі-хулі-хулігани -
Це справжні "казанови", це справжні "донжуани"!
Коли ідуть по вулиці веселою ватагою -
Дівчата всі хвилюються, дівчата так і падають!

Бо мама любить тата, тато любить маму,
Мене ніхто не любить - тому мені погано!
Мама любить тата, тато любить маму,
Мене ніхто не любить - стану хуліганом!

А хулі-хулі-хулі-хулі-хулі-хулігани -
Майбутні командири, майбутні капітани!
Без вагань відважні, хоробрі без причини!
Хулігани - справжнє майбутнє батьківщини!

Мама любить тата, тато любить маму,
Мене ніхто не любить - тому мені погано!
Мама любить тата, тато любить маму,
Мене ніхто не любить - стану хуліганом!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_215591_l1','pisniua_215591','YouTube','https://www.youtube.com/watch?v=qoBkMCHlYF4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_215591_l2','pisniua_215591','YouTube','https://www.youtube.com/watch?v=A9i4QpEjy1c','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2156212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2156212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2156212';
DELETE FROM songs WHERE id = 'pisniua_2156212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2156212','Апрєль','Музика: Віктор Бронюк Слова: Т.І.К. (Тік)','uk','ukraine_1991',NULL,NULL,NULL,'Підібрано досить точно до оригіналу','Сама не подумала, нащо -
Пішла і забувши про літо.
Не вернешся більше нізащо.
Повернеш назад усі квіти...
Літала, не думала в безвісті -
Чекала повернення раю.
Сумними думками тверезості.
П''яніла від чорного чаю.

Ще так далеко до зими і до морозів.
Навіщо спомини сумні, навіщо сльози.
Ще так далеко до весни, або до літа.
І може хтось, але не я...
Подарить квіти.

Жодної битви не виграла -
Кохання з війною зрівнявши.
А ти сама себе із дому вигнала.
У душу нічого не взявши.
Такого чудового літа,
Давно вже у мене не було.
Цілий світ хотів тобі подарити,
А ти його просто не чула.

Ще так далеко до зими і до морозів.
Навіщо сповіді сумні, навіщо сльози.
Ще так далеко до весни або до літа.
І може хтось, але не я...
Подарить квіти.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2156212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2156212','Апрєль','Сама не подумала, нащо -
Пішла і забувши про літо.
Не вернешся більше нізащо.
Повернеш назад усі квіти...
Літала, не думала в безвісті -
Чекала повернення раю.
Сумними думками тверезості.
П''яніла від чорного чаю.

Ще так далеко до зими і до морозів.
Навіщо спомини сумні, навіщо сльози.
Ще так далеко до весни, або до літа.
І може хтось, але не я...
Подарить квіти.

Жодної битви не виграла -
Кохання з війною зрівнявши.
А ти сама себе із дому вигнала.
У душу нічого не взявши.
Такого чудового літа,
Давно вже у мене не було.
Цілий світ хотів тобі подарити,
А ти його просто не чула.

Ще так далеко до зими і до морозів.
Навіщо сповіді сумні, навіщо сльози.
Ще так далеко до весни або до літа.
І може хтось, але не я...
Подарить квіти.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2156212_l1','pisniua_2156212','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2156653';
DELETE FROM song_versions WHERE song_id = 'pisniua_2156653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2156653';
DELETE FROM songs WHERE id = 'pisniua_2156653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2156653','Битва під Конотопом','Музика: народна Слова: Леонід Полтава. Виконує: Остап Кіндрачук','uk','ukraine_1991',NULL,NULL,'Спів кобзаря','Входить до репертуару кобзаря Остапа Кіндрачука.','То не димлять пожеж дими,
Не ринуть буруни потоку-
Беруть бояр навперейми
Відважні вої Конотопу.

Приспів:
Метають ядра гармаші, гармаші,
Шаблям торуючи дорогу.
Радій народе од душі,
Святкуй Виговський перемогу.

І косять зайд немов траву,
Народ єднаючи під стяги,
Веде Виговський на Москву
Полки козацької звитяги.

Приспів.

Нестримні з крилами орлів,
Відплати спраглі за наругу,
Летять на орди москалів
Герої Січі, браття з Лугу.

Приспів.

То не громи від громовиць,
Не чорні хмари б''ють грозою-
Співають кулі з гаківниць
І сіють помстою святою.

Приспів.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2156653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2156653','Битва під Конотопом','То не димлять пожеж дими,
Не ринуть буруни потоку-
Беруть бояр навперейми
Відважні вої Конотопу.

Приспів:
Метають ядра гармаші, гармаші,
Шаблям торуючи дорогу.
Радій народе од душі,
Святкуй Виговський перемогу.

І косять зайд немов траву,
Народ єднаючи під стяги,
Веде Виговський на Москву
Полки козацької звитяги.

Приспів.

Нестримні з крилами орлів,
Відплати спраглі за наругу,
Летять на орди москалів
Герої Січі, браття з Лугу.

Приспів.

То не громи від громовиць,
Не чорні хмари б''ють грозою-
Співають кулі з гаківниць
І сіють помстою святою.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_216550';
DELETE FROM song_versions WHERE song_id = 'pisniua_216550';
DELETE FROM songs_fts WHERE song_id = 'pisniua_216550';
DELETE FROM songs WHERE id = 'pisniua_216550';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_216550','Роксоляна','Слова: Брати Гадюкіни. Виконує: Брати Гадюкіни','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Стара кав''ярня в центрi Львова
Я зайшов туди раптово
Ти сиділа за столічкoм в глибині
Філіжанку з порцеляни
Елеганцько, двома пальцями
Ти тримала і посміхалась мені

Приспів:
Роксоляно, мені бракує твоїх уст
Роксоляно, мені бракує твоїх очей
Роксоляно, мені бракує твого бюсту
Роксоляно, i тих шальоних ночей

Потім ми шпацерували,
Пили пиво з дерунами,
І шампана, і горілку, і каберне.
Потім ніц не пам''ятаю,
Рано очі відкриваю,
А біля ліжка - чорне твоє комбіне.

Приспів.

А в наступний понеділок
Шось ми в споднях засвербіло,
Я пахвину аж до виразки роздер.
Сіро-ртутну мазь купив
І мастив, мастив, мастив.
Роксоляно, з ким тобі файно тепер?

Приспів.
Варіант акордів зі Збірника пісень Студентського Братства
Львівської Політехніки:

Стара кав''ярня в центрі Львова, я зайшов туди раптово.
Ти сиділа край столічка в глибині.
Філіжанку з порцеляни елігантсько, двома пальцями,
Ти тримала і посміхалась мені.','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:zhartivlyvi'', ''Пісні з ностальгічними мотивами'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_216550'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_216550','Роксоляна','Стара кав''ярня в центрi Львова
Я зайшов туди раптово
Ти сиділа за столічкoм в глибині
Філіжанку з порцеляни
Елеганцько, двома пальцями
Ти тримала і посміхалась мені

Приспів:
Роксоляно, мені бракує твоїх уст
Роксоляно, мені бракує твоїх очей
Роксоляно, мені бракує твого бюсту
Роксоляно, i тих шальоних ночей

Потім ми шпацерували,
Пили пиво з дерунами,
І шампана, і горілку, і каберне.
Потім ніц не пам''ятаю,
Рано очі відкриваю,
А біля ліжка - чорне твоє комбіне.

Приспів.

А в наступний понеділок
Шось ми в споднях засвербіло,
Я пахвину аж до виразки роздер.
Сіро-ртутну мазь купив
І мастив, мастив, мастив.
Роксоляно, з ким тобі файно тепер?

Приспів.
Варіант акордів зі Збірника пісень Студентського Братства
Львівської Політехніки:

Стара кав''ярня в центрі Львова, я зайшов туди раптово.
Ти сиділа край столічка в глибині.
Філіжанку з порцеляни елігантсько, двома пальцями,
Ти тримала і посміхалась мені.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_216550_l1','pisniua_216550','YouTube','https://www.youtube.com/watch?v=cfAW6e4uhXw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_216550_l2','pisniua_216550','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_216498';
DELETE FROM song_versions WHERE song_id = 'pisniua_216498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_216498';
DELETE FROM songs WHERE id = 'pisniua_216498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_216498','Орися','Музика: Сергій Фоменко Слова: Сергій Фоменко. Виконує: Мандри','uk','ukraine_1991',NULL,NULL,'CD "Легенда про Іванка та Одарку"','Кліп: http://www.mandrymusic.com/video/Mandry_klip_Orycya.avi Підбір акордів: Арміна','Ой не ходи, ходи, Орисю, на гору, на Лиску.
Не ходи, ходи, Орисю, a грай на сопілці.

Ой-гой, дриці-дриці, oй-гой, дриці-дриці
Не ходи на Лису гору, А грай на сопілці.
Ой-гой, дриці-дриці, oй-гой, дриці-дриці
Не ходи на Лису гору, А грай на сопілці.

Бо на горі, на Лисці туман над ярами.
Бо на горі, на Лисці чорти з відьмаками.

Ой-гой, дриці-дриці oй-гой, дриці-дриці
Там шугає така нечисть, що гріх і дивитись.

В чорта роги - круторогі, очі - як лещата.
Жінка в нього - чорна жаба, бридка та вусата.

Ой-гой, дриці-дриці oй-гой, дриці-дриці
Отакі жінки в тім царстві, хвайні молодиці.

Чорт зубатий та багатий хоче кльову дівку,
Може їй платити златом та водить до шинку.

Ой-гой, дриці-дриці oй-гой, дриці-дриці
Не ходи, Орись, на гору, a чекай на принця.','[''pisni.org.ua'', ''cat:philosophic'', ''cat:zhartivlyvi'', ''Філософські пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_216498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_216498','Орися','Ой не ходи, ходи, Орисю, на гору, на Лиску.
Не ходи, ходи, Орисю, a грай на сопілці.

Ой-гой, дриці-дриці, oй-гой, дриці-дриці
Не ходи на Лису гору, А грай на сопілці.
Ой-гой, дриці-дриці, oй-гой, дриці-дриці
Не ходи на Лису гору, А грай на сопілці.

Бо на горі, на Лисці туман над ярами.
Бо на горі, на Лисці чорти з відьмаками.

Ой-гой, дриці-дриці oй-гой, дриці-дриці
Там шугає така нечисть, що гріх і дивитись.

В чорта роги - круторогі, очі - як лещата.
Жінка в нього - чорна жаба, бридка та вусата.

Ой-гой, дриці-дриці oй-гой, дриці-дриці
Отакі жінки в тім царстві, хвайні молодиці.

Чорт зубатий та багатий хоче кльову дівку,
Може їй платити златом та водить до шинку.

Ой-гой, дриці-дриці oй-гой, дриці-дриці
Не ходи, Орись, на гору, a чекай на принця.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_216498_l1','pisniua_216498','YouTube','https://www.youtube.com/watch?v=nBO9IOngjJA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_216498_l2','pisniua_216498','YouTube','https://www.youtube.com/watch?v=b6xWCWWvxMo','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2167563';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167563';
DELETE FROM songs WHERE id = 'pisniua_2167563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167563','Колискова від зайчика','Слова: Ігор Січовик','uk','ukraine_1991',NULL,NULL,'http://www.malecha.org.ua',NULL,'Місяць з''явився на небі,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2167798';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167798';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167798';
DELETE FROM songs WHERE id = 'pisniua_2167798';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167798','Вечір дуже добрий','Слова: Платон Воронько','uk','ukraine_1991',NULL,NULL,'http://www.malecha.org.ua/',NULL,'Вечір дуже добрий,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2167869';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167869';
DELETE FROM songs WHERE id = 'pisniua_2167869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167869','Над колискою','Слова: Олександр Олесь','uk','ukraine_1991',NULL,NULL,'http://www.malecha.org.ua/',NULL,'Спи, мій малесенький, спи, мій синок...
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
DELETE FROM song_links WHERE song_id = 'pisniua_2167777';
DELETE FROM song_versions WHERE song_id = 'pisniua_2167777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2167777';
DELETE FROM songs WHERE id = 'pisniua_2167777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2167777','В небі, в морі сяють зорі','Слова: Платон Воронько','uk','ukraine_1991',NULL,NULL,'http://www.malecha.org.ua/',NULL,'В небі, в морі
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
DELETE FROM song_links WHERE song_id = 'pisniua_2170158';
DELETE FROM song_versions WHERE song_id = 'pisniua_2170158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2170158';
DELETE FROM songs WHERE id = 'pisniua_2170158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2170158','Не може заснути малюк!','Музика: Леся Горова Слова: Леся Горова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Не може заснути малюк,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2171767';
DELETE FROM song_versions WHERE song_id = 'pisniua_2171767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2171767';
DELETE FROM songs WHERE id = 'pisniua_2171767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2171767','Колискова','Музика: Ігор Білозір Слова: Богдан Стельмах. Виконує: Оксана Муха','uk','ukraine_1991',NULL,NULL,'Стельмах Б. М. Світлиця пісень і спогадів.- Львів: Сполом, 2001.',NULL,'Небесами місяць плине,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2176410';
DELETE FROM song_versions WHERE song_id = 'pisniua_2176410';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2176410';
DELETE FROM songs WHERE id = 'pisniua_2176410';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2176410','Брами вже замкнули','Музика: Генрик Варс Слова: Емануель Шлехтер. Виконує: Віктор Морозов','uk','ukraine_1991',NULL,NULL,'http://www.mo-productions.com/',NULL,'Брами вже замкнули
лілю-лілю-лі
квітки сплят і пташки сплят
і пси сплят і коти
оченятка стỳли
лілю-лілю-лі
всі вже сплят
засни, маленька, й ти

Як зароб''ю двіста злотих
то збудую тобі дім
будеш спала як царівна
на пелюстках в домі тім
добраніч, доню, спім...

А в садочку твому буде
повно яблунів і груш
будем тебе колисали
в ароматах білих руж
добраніч
очка змруж

У крамничці куп''ю меду
масло мліко яйка сіль
куликівский хліб і сало
як си збудиш жеби с мала
їсти пити повен стіл

Як зароб''ю двіста злотих
буде в нас великий баль
буде музика і танці
і забава буде...
цить...
мала царівна спить','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2176410'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2176410','Брами вже замкнули','Брами вже замкнули
лілю-лілю-лі
квітки сплят і пташки сплят
і пси сплят і коти
оченятка стỳли
лілю-лілю-лі
всі вже сплят
засни, маленька, й ти

Як зароб''ю двіста злотих
то збудую тобі дім
будеш спала як царівна
на пелюстках в домі тім
добраніч, доню, спім...

А в садочку твому буде
повно яблунів і груш
будем тебе колисали
в ароматах білих руж
добраніч
очка змруж

У крамничці куп''ю меду
масло мліко яйка сіль
куликівский хліб і сало
як си збудиш жеби с мала
їсти пити повен стіл

Як зароб''ю двіста злотих
буде в нас великий баль
буде музика і танці
і забава буде...
цить...
мала царівна спить');
DELETE FROM song_links WHERE song_id = 'pisniua_2185495';
DELETE FROM song_versions WHERE song_id = 'pisniua_2185495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2185495';
DELETE FROM songs WHERE id = 'pisniua_2185495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2185495','Колискова','(Спи, засни, моя дитино, спи, моє маля...). Музика: Роман Свистун Слова: Андрій Малишко','uk','ukraine_1991',NULL,NULL,'Збірка пісень "Край ромашковий"',NULL,'Спи, засни, моя дитино, спи, моє маля,
Ніч іде в гаї, долини, трави нахиля.
Хай тобі ця ні насниться, що в огнях сія.
Будеш завтра в світ дивитися, зіронько моя!

Перша ніч твоя почата
В співах солов''я,
Дай же мамі рученята,
Зіронько моя.

Посміхнись до мене, синку,
І зрадію я,
Не хвилину і не днину -
Я навік твоя.

Сплять ліси, поля, криниці,
Шепіт ручая.
Ти відкрий, відкрий очиці,
Юносте моя.

Підеш ти по Україні,
Де життя буя.
Виростай, моя дитино,
Зіронько моя!','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2185495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2185495','Колискова','Спи, засни, моя дитино, спи, моє маля,
Ніч іде в гаї, долини, трави нахиля.
Хай тобі ця ні насниться, що в огнях сія.
Будеш завтра в світ дивитися, зіронько моя!

Перша ніч твоя почата
В співах солов''я,
Дай же мамі рученята,
Зіронько моя.

Посміхнись до мене, синку,
І зрадію я,
Не хвилину і не днину -
Я навік твоя.

Сплять ліси, поля, криниці,
Шепіт ручая.
Ти відкрий, відкрий очиці,
Юносте моя.

Підеш ти по Україні,
Де життя буя.
Виростай, моя дитино,
Зіронько моя!');
DELETE FROM song_links WHERE song_id = 'pisniua_2186653';
DELETE FROM song_versions WHERE song_id = 'pisniua_2186653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2186653';
DELETE FROM songs WHERE id = 'pisniua_2186653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2186653','Колискова маленькому киянину','Музика: Олександр Білаш Слова: Борис Олійник. Виконує: Ніна Матвієнко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Спи, мій маленький киянине, люлі,
Спи, мій роменовий цвіт!
Щедро тобі накували зозулі
Цілих п''ятнадцять століть.

Скільки прислали дарунків і ласки
Із многомовних країв!
Кий-сивоус передав тобі казку
Аж із полянських гаїв.

Либідь русява тобі колискову
Грає на струнах Дніпра,
Дарниця стелить дорогу шовкову,
Вишиту ниттю добра.

Спи, мій маленький киянине, люлі,
Спи, мій калиновий цвіт!
Хай накують тобі щедрі зозулі
Миру на тисячу літ!

Спи, мій маленький киянине, люлі,
Спи, мій калиновий цвіт!
Хай накують тобі щедрі зозулі
Миру на тисячу літ!','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2186653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2186653','Колискова маленькому киянину','Спи, мій маленький киянине, люлі,
Спи, мій роменовий цвіт!
Щедро тобі накували зозулі
Цілих п''ятнадцять століть.

Скільки прислали дарунків і ласки
Із многомовних країв!
Кий-сивоус передав тобі казку
Аж із полянських гаїв.

Либідь русява тобі колискову
Грає на струнах Дніпра,
Дарниця стелить дорогу шовкову,
Вишиту ниттю добра.

Спи, мій маленький киянине, люлі,
Спи, мій калиновий цвіт!
Хай накують тобі щедрі зозулі
Миру на тисячу літ!

Спи, мій маленький киянине, люлі,
Спи, мій калиновий цвіт!
Хай накують тобі щедрі зозулі
Миру на тисячу літ!');
DELETE FROM song_links WHERE song_id = 'pisniua_2188716';
DELETE FROM song_versions WHERE song_id = 'pisniua_2188716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2188716';
DELETE FROM songs WHERE id = 'pisniua_2188716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2188716','Не дощ','Музика: Андрій Підлужний Слова: Андрій Підлужний. Виконує: Тіна Кароль','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Давай без сліз завершимо любов,
Без зайвих слів,
Образ і звинувачень,
І в той момент,
Коли пульсує ненависть і кров,
Протягнемо назустріч руки.

Приспів:
Не дощ і не сніг
Стримати мене не зміг...
Не дощ і не сніг...
Не дощ і не сніг,
Ніколи я б піти не зміг,
Не дощ і не сніг...

Давай від всіх збудуємо стіну,
Від злих очей,
Проклять і наговорів,
І в той момент,
Коли сім''я порветься, як струна,
Відкрий мені назустріч двері.

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2188716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2188716','Не дощ','Давай без сліз завершимо любов,
Без зайвих слів,
Образ і звинувачень,
І в той момент,
Коли пульсує ненависть і кров,
Протягнемо назустріч руки.

Приспів:
Не дощ і не сніг
Стримати мене не зміг...
Не дощ і не сніг...
Не дощ і не сніг,
Ніколи я б піти не зміг,
Не дощ і не сніг...

Давай від всіх збудуємо стіну,
Від злих очей,
Проклять і наговорів,
І в той момент,
Коли сім''я порветься, як струна,
Відкрий мені назустріч двері.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2188716_l1','pisniua_2188716','YouTube','https://www.youtube.com/watch?v=oSWQGlsmZVM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2188716_l2','pisniua_2188716','YouTube','https://www.youtube.com/watch?v=yYDvEhh0uBE','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2194563';
DELETE FROM song_versions WHERE song_id = 'pisniua_2194563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2194563';
DELETE FROM songs WHERE id = 'pisniua_2194563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2194563','Кучерики','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Кучерики, кучерики,
Кучерики мої,
Поцілуй мене, козаче,
Я мамки не бою.

Приспів:
Ой, кучерявая,
Кучерява мати,
Кучериків накрутила
Хлопців чарувати.

Кучерики, кучерики,
Кучері шовкові,
Поцілуй мене, козаче,
Бо я чорноброва.

Приспів.

Кучерики, кучерики,
Кучерики маю,
За те мене мати била,
Що хлопцям моргаю.

Приспів.

Кучерики, кучерики,
Кучерики в''ються,
А за мене, молодую,
Усі хлопці б''ються.

Приспів.

Кучерики, кучерики,
Кучерики мої,
Поцілуй мене, козаче,
Я мамки не бою.

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2194563'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2194563','Кучерики','Кучерики, кучерики,
Кучерики мої,
Поцілуй мене, козаче,
Я мамки не бою.

Приспів:
Ой, кучерявая,
Кучерява мати,
Кучериків накрутила
Хлопців чарувати.

Кучерики, кучерики,
Кучері шовкові,
Поцілуй мене, козаче,
Бо я чорноброва.

Приспів.

Кучерики, кучерики,
Кучерики маю,
За те мене мати била,
Що хлопцям моргаю.

Приспів.

Кучерики, кучерики,
Кучерики в''ються,
А за мене, молодую,
Усі хлопці б''ються.

Приспів.

Кучерики, кучерики,
Кучерики мої,
Поцілуй мене, козаче,
Я мамки не бою.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2194563_l1','pisniua_2194563','YouTube','https://www.youtube.com/watch?v=5noBcUe7ons','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2194563_l2','pisniua_2194563','YouTube','https://www.youtube.com/watch?v=vZFb9g85vIM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_220096';
DELETE FROM song_versions WHERE song_id = 'pisniua_220096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_220096';
DELETE FROM songs WHERE id = 'pisniua_220096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_220096','Колискова','Музика: Олег Скрипка Слова: Олег Скрипка. Виконує: Воплі Відоплясова','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Висить місяць,
Він киває рогами.
Треба трохи поспати,
Бай - бай.

Ходить яром Ціпа,
Сіпа та регоче,
Голить, хто лягти не хоче.
В нього бритва є.

Засинайте, люди.
Зараз, зараз вони прийдуть,
Ціпа та Могила!
Оу, є.

Пушкін та Державін
Досі не лягали,
Зрозуміло, хто ж це на ніч
Чай п''є?

Волохатий Дідько
Варить брудну каву,
Плямка в жіжі, парить ноги, -
Спати не дає!

Засинайте, люди.
Зараз, вони зараз прийдуть,
Ціпа та Могила, Глина!
Оу - є!

Пан! Могила! Тріщить - гілля ламає,
У зачіску встромляє. Ходить, дурник, - навкруги гуркіт.
Чи мозги має? Усіх примушує лягти воно,
У простирадлі, робить плями, на веделці - хаванина.
Та як гикне! Злякався, вагітної жінки злякався.
Ну, хіба розум є? Є? Є!?','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_220096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_220096','Колискова','Висить місяць,
Він киває рогами.
Треба трохи поспати,
Бай - бай.

Ходить яром Ціпа,
Сіпа та регоче,
Голить, хто лягти не хоче.
В нього бритва є.

Засинайте, люди.
Зараз, зараз вони прийдуть,
Ціпа та Могила!
Оу, є.

Пушкін та Державін
Досі не лягали,
Зрозуміло, хто ж це на ніч
Чай п''є?

Волохатий Дідько
Варить брудну каву,
Плямка в жіжі, парить ноги, -
Спати не дає!

Засинайте, люди.
Зараз, вони зараз прийдуть,
Ціпа та Могила, Глина!
Оу - є!

Пан! Могила! Тріщить - гілля ламає,
У зачіску встромляє. Ходить, дурник, - навкруги гуркіт.
Чи мозги має? Усіх примушує лягти воно,
У простирадлі, робить плями, на веделці - хаванина.
Та як гикне! Злякався, вагітної жінки злякався.
Ну, хіба розум є? Є? Є!?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_220096_l1','pisniua_220096','YouTube','https://www.youtube.com/watch?v=3InwxuUVn_0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_220694';
DELETE FROM song_versions WHERE song_id = 'pisniua_220694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_220694';
DELETE FROM songs WHERE id = 'pisniua_220694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_220694','Зроби мені хіп хоп','Музика: Танок на майдані Конго Слова: Танок на майдані Конго. Виконує: Танок на майдані Конго','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я кохаю Гриця (Гриця!), кохаю лише Гриця
За те, що у Гриця в кишені полу-полуниця
Він приходить, мене робить, я кохаю Гриця
Його бачу, червонію, як та полуниця

Зроби мені хіп, зроби мені хоп.
Зроби мені А!, зроби мені хіп-хоп

Ваня (Ваня!) зайшов до мене Ваня
Каже: лажа, зараз мила робимо кохання
Гори, ріки та озера - все твоє, Грицько - холера
Да він тобі не пара! У відповідь йому казала
Ванія, Ванія, сідай у свої санія
Мені ото твоє кохання не потрібне, Ваня
Їжджай собі до дому, кохай хоч свої сані-мані
Мені не жити без хіп-хопу, без хіп-хопу, Ваня

Зроби мені хіп, зроби мені хоп.
Зроби мені А!, зроби мені хіп-хоп

Микола (Микола) приносить Кока-колу
Я кажу: тьфу! До дому йди Микола
Йди собі до дому та не чекай на мене
Пий свою бодягу та не приходь сюди
Бо я кохаю лише Гриця, кохаю лише Гриця
За те, що у Гриця в кишені полу-полуниця
Він приходить, мене робить, я кохаю Гриця
Його бачу, червонію, як та полуниця

Він робить мені хіп, він робить мені хоп
Він робить мені А! Робить мені хіп-хоп

Приповза та стогне кволий вуйку Мирославе
Облави (облави!), навкруги облави
Ти кохала Гриця, кохала лише Гриця
Тепер його немає, так одружимося, киця!
Тільки терміново треба рушити до лісу
Скоріш складай валізу! Я кажу: іди до біса
У кожному віконці да майже три чекістських рильця
Так на який ляд, Мирославе, зіпсував ти Гриця

Він робив мені хіп, він робив мені хоп
Він робив мені А!, робив мені хіп-хоп

Еніки-Беніки їли вареніки, Еніки-Беніки слухали рап
Слухали вухами, яблуню трюхали, паданки їли, робили хіп-хап
Штопала, хлопала, гроши прохлопала, різала, мазала, очі вилазили
Очи вилазили різними лазами разом з водолазами та верхолазами

Гриця (Гриця!), кохаю лише Гриця
За те, що у Гриця в кишені полу-полуниця
Він приходить, мене робить, я кохаю Гриця
Його бачу, червонію, як та полуниця

Зроби мені хіп, зроби мені хоп
Зроби мені А!, зроби мені хіп-хоп','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_220694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_220694','Зроби мені хіп хоп','Я кохаю Гриця (Гриця!), кохаю лише Гриця
За те, що у Гриця в кишені полу-полуниця
Він приходить, мене робить, я кохаю Гриця
Його бачу, червонію, як та полуниця

Зроби мені хіп, зроби мені хоп.
Зроби мені А!, зроби мені хіп-хоп

Ваня (Ваня!) зайшов до мене Ваня
Каже: лажа, зараз мила робимо кохання
Гори, ріки та озера - все твоє, Грицько - холера
Да він тобі не пара! У відповідь йому казала
Ванія, Ванія, сідай у свої санія
Мені ото твоє кохання не потрібне, Ваня
Їжджай собі до дому, кохай хоч свої сані-мані
Мені не жити без хіп-хопу, без хіп-хопу, Ваня

Зроби мені хіп, зроби мені хоп.
Зроби мені А!, зроби мені хіп-хоп

Микола (Микола) приносить Кока-колу
Я кажу: тьфу! До дому йди Микола
Йди собі до дому та не чекай на мене
Пий свою бодягу та не приходь сюди
Бо я кохаю лише Гриця, кохаю лише Гриця
За те, що у Гриця в кишені полу-полуниця
Він приходить, мене робить, я кохаю Гриця
Його бачу, червонію, як та полуниця

Він робить мені хіп, він робить мені хоп
Він робить мені А! Робить мені хіп-хоп

Приповза та стогне кволий вуйку Мирославе
Облави (облави!), навкруги облави
Ти кохала Гриця, кохала лише Гриця
Тепер його немає, так одружимося, киця!
Тільки терміново треба рушити до лісу
Скоріш складай валізу! Я кажу: іди до біса
У кожному віконці да майже три чекістських рильця
Так на який ляд, Мирославе, зіпсував ти Гриця

Він робив мені хіп, він робив мені хоп
Він робив мені А!, робив мені хіп-хоп

Еніки-Беніки їли вареніки, Еніки-Беніки слухали рап
Слухали вухами, яблуню трюхали, паданки їли, робили хіп-хап
Штопала, хлопала, гроши прохлопала, різала, мазала, очі вилазили
Очи вилазили різними лазами разом з водолазами та верхолазами

Гриця (Гриця!), кохаю лише Гриця
За те, що у Гриця в кишені полу-полуниця
Він приходить, мене робить, я кохаю Гриця
Його бачу, червонію, як та полуниця

Зроби мені хіп, зроби мені хоп
Зроби мені А!, зроби мені хіп-хоп');
DELETE FROM song_links WHERE song_id = 'pisniua_2208111';
DELETE FROM song_versions WHERE song_id = 'pisniua_2208111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2208111';
DELETE FROM songs WHERE id = 'pisniua_2208111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2208111','Колискова','(Тихо ніч спадає на поля). Музика: Руслан Грех Слова: Руслан Грех. Виконує: Руслан Грех','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Тихо ніч спадає на поля,
Зорі засівають небоколо,
Спи собі, дитинонько моя,
Тихо-тихо наспіваю я
Сни ніким небачені ніколи...

Приспів:
Кольорові сни, що від весни
Ховаються між літом,
Пахнуть білим яблуневим цвітом...
Сни... Сни...

Солодко в заплющених очах
Пропливають човниками хвилі,
В небі синім синьоокий птах
У барвисто-веселкових снах
Долю селить в рученята милі...

Приспів.

Сонечко зігріє небеса,
Золото розкине по долині,
Світ небесний і земна краса,
Очі мами й Божі чудеса
Усміхаються малій дитині!

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2208111'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2208111','Колискова','Тихо ніч спадає на поля,
Зорі засівають небоколо,
Спи собі, дитинонько моя,
Тихо-тихо наспіваю я
Сни ніким небачені ніколи...

Приспів:
Кольорові сни, що від весни
Ховаються між літом,
Пахнуть білим яблуневим цвітом...
Сни... Сни...

Солодко в заплющених очах
Пропливають човниками хвилі,
В небі синім синьоокий птах
У барвисто-веселкових снах
Долю селить в рученята милі...

Приспів.

Сонечко зігріє небеса,
Золото розкине по долині,
Світ небесний і земна краса,
Очі мами й Божі чудеса
Усміхаються малій дитині!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2208111_l1','pisniua_2208111','YouTube','https://www.youtube.com/watch?v=AYuEoLvrz2c','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2211369';
DELETE FROM song_versions WHERE song_id = 'pisniua_2211369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2211369';
DELETE FROM songs WHERE id = 'pisniua_2211369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2211369','Я тя кохам','Музика: Михайло Хома, Олег Турко Слова: Михайло Хома, Олег Турко. Виконує: DZIDZIO, Вова зі Львова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ти подзвонила, що розлюбила
І виїжджаєш в Америку -
Мене трусило, спотіли руки,
Відразу впав я в істерику.

Приспів:
Я тя кохам, I love you,     |
Я тебе кохаю, я тебя люблю, |
Чуєш, я тє кохам,           |
I love you, I love you!     | (2)

Ти їдеш в штати, бо хочеш мати
Якесь нове увлеченіє,
По гороскопу ти була раком,
Kороче, сонця затменіє.

Приспів.

Короче, baby, з тобою maybe
Я думав ми вже розсталися,
Ти блєфувала бо так хотіла,
Шоб ми з тобою розписалися.

Речитатив:
Я для тебе всі свої псевдо-філософські трактати
Поміняв на недоторканні депутатські мандати,
А яка ти?.. Ти забила на мене, як на дебіла
І до кого, незрозуміло, за океани звалила,
Там ти покуштуєш, мила, їхнє господарське мило,
І мабуть тобі стане в жилу, же ти не живеш, як жила,
Добре жила - не тужила, в''язала, варила, шила,
Та свою долю рішила, бо у дупі мала шило.
Занапастила нашу любов, нашу квітку пахньонсу,
Проміняла все шо мала на американські піньонзи.
Най тє не прийме діяспора й депортує міліція,
І ти вернешся до України, до Вови й до Дзідзя.
Чого? Бо все йодно

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''cat:zhartivlyvi'', ''Пісні про кохання, ліричні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2211369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2211369','Я тя кохам','Ти подзвонила, що розлюбила
І виїжджаєш в Америку -
Мене трусило, спотіли руки,
Відразу впав я в істерику.

Приспів:
Я тя кохам, I love you,     |
Я тебе кохаю, я тебя люблю, |
Чуєш, я тє кохам,           |
I love you, I love you!     | (2)

Ти їдеш в штати, бо хочеш мати
Якесь нове увлеченіє,
По гороскопу ти була раком,
Kороче, сонця затменіє.

Приспів.

Короче, baby, з тобою maybe
Я думав ми вже розсталися,
Ти блєфувала бо так хотіла,
Шоб ми з тобою розписалися.

Речитатив:
Я для тебе всі свої псевдо-філософські трактати
Поміняв на недоторканні депутатські мандати,
А яка ти?.. Ти забила на мене, як на дебіла
І до кого, незрозуміло, за океани звалила,
Там ти покуштуєш, мила, їхнє господарське мило,
І мабуть тобі стане в жилу, же ти не живеш, як жила,
Добре жила - не тужила, в''язала, варила, шила,
Та свою долю рішила, бо у дупі мала шило.
Занапастила нашу любов, нашу квітку пахньонсу,
Проміняла все шо мала на американські піньонзи.
Най тє не прийме діяспора й депортує міліція,
І ти вернешся до України, до Вови й до Дзідзя.
Чого? Бо все йодно

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2211369_l1','pisniua_2211369','YouTube','https://www.youtube.com/watch?v=BeF_qg2OyIg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2209495';
DELETE FROM song_versions WHERE song_id = 'pisniua_2209495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2209495';
DELETE FROM songs WHERE id = 'pisniua_2209495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2209495','Шкідлива звичка','Музика: Kofei.IN Слова: Олександр Тарасенко. Виконує: Kofei.IN','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я позбавився шкідливих звичок,
Не палю і більше не кохаю,
Імовірно, я тепер щасливий,
Що з тобою більше не буваю...
Стер усі пісні, що ти любила,
Я ненавидів їх більше всього.
Я тебе вже не кохаю, мила,
То щасливої тобі дороги!

Приспів:
Ти - моя шкідлива звичка,
Не турбуй мене по середам і суботам,
Нерви на приділі, я не вічний,
Кохана, знайди собі роботу!
Прощавай і не дзвони мені,
І без тебе вистачає проблем,
Забудь адресу, не ходи сюди,
Я давно завів собі гарем!

Кожен день лише одні проблеми
Я іду до дому як на страту
Ще не встигну увійти у двері,
Починаєш ти мене пиляти.
Скільки можна це терпіти?
Я - не янгол і не мати Тереза,
Ситуація вийшла з-під контролю,
Ось, тобі мій погляд тверезий.

Приспів.

Прощавай і не дзвони мені,
І без тебе вистачає проблем,
Забудь адресу, не ходи сюди,
Я давно завів собі гарем!','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2209495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2209495','Шкідлива звичка','Я позбавився шкідливих звичок,
Не палю і більше не кохаю,
Імовірно, я тепер щасливий,
Що з тобою більше не буваю...
Стер усі пісні, що ти любила,
Я ненавидів їх більше всього.
Я тебе вже не кохаю, мила,
То щасливої тобі дороги!

Приспів:
Ти - моя шкідлива звичка,
Не турбуй мене по середам і суботам,
Нерви на приділі, я не вічний,
Кохана, знайди собі роботу!
Прощавай і не дзвони мені,
І без тебе вистачає проблем,
Забудь адресу, не ходи сюди,
Я давно завів собі гарем!

Кожен день лише одні проблеми
Я іду до дому як на страту
Ще не встигну увійти у двері,
Починаєш ти мене пиляти.
Скільки можна це терпіти?
Я - не янгол і не мати Тереза,
Ситуація вийшла з-під контролю,
Ось, тобі мій погляд тверезий.

Приспів.

Прощавай і не дзвони мені,
І без тебе вистачає проблем,
Забудь адресу, не ходи сюди,
Я давно завів собі гарем!');
DELETE FROM song_links WHERE song_id = 'pisniua_2215158';
DELETE FROM song_versions WHERE song_id = 'pisniua_2215158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2215158';
DELETE FROM songs WHERE id = 'pisniua_2215158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2215158','Сексуальна','Музика: Вова зі Львова Слова: Вова зі Львова, Mirami. Виконує: Вова зі Львова, Mirami','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'О-у, сексуальна настільки,
Хоч бери й пиши про це на лобі,
Спалюєш усіх і все, навколо пусто,
Як в пустелі Гобі,
В порівнянні з тобою міс світу -
Красива, наче хобіт,
Через тебе і таких, як ти
"Харт ен соул філ соу бед ту Мобі"
Але з попою такою, як в тебе,
Все це можна мати в попі,
Коливання твоїх грудей -
Це травми психічні плюс фобії.
Пацани кричать: "фак мій мозок",
Але для тебе це хобі,
Як що ти будеш Амігалою -
Для тебе буду Обі-Ван Кенобі!

Приспів:
Сексуальна, небезпечна,          |
Непокірна та беззаперечна.       |
Спокушаю - наступаєш,            |
Це найкраща ніч, ти добре знаєш! | (2)

Ти добре знаєш який я,
Як я ставлюсь до того, яка ти,
Таких як ти більше нема,
Це правда, але подібних багато.
Тому порада всім красуням -
Будь-ласка, не будьте егоїстки,
Я не дуже люблю м''ясо,
Але дуже люблю голі кістки!
Поділіться зі мною всім
Найкращим, що ви маєте,
А в знак подяки ми замутим
З вами кабаре і вар''єте,
Потім поміняємо любов групову
На пристрасний тет-а-тет,
Маю риму ідеальну на ет,
Але її не пустять в ефір.

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2215158'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2215158','Сексуальна','О-у, сексуальна настільки,
Хоч бери й пиши про це на лобі,
Спалюєш усіх і все, навколо пусто,
Як в пустелі Гобі,
В порівнянні з тобою міс світу -
Красива, наче хобіт,
Через тебе і таких, як ти
"Харт ен соул філ соу бед ту Мобі"
Але з попою такою, як в тебе,
Все це можна мати в попі,
Коливання твоїх грудей -
Це травми психічні плюс фобії.
Пацани кричать: "фак мій мозок",
Але для тебе це хобі,
Як що ти будеш Амігалою -
Для тебе буду Обі-Ван Кенобі!

Приспів:
Сексуальна, небезпечна,          |
Непокірна та беззаперечна.       |
Спокушаю - наступаєш,            |
Це найкраща ніч, ти добре знаєш! | (2)

Ти добре знаєш який я,
Як я ставлюсь до того, яка ти,
Таких як ти більше нема,
Це правда, але подібних багато.
Тому порада всім красуням -
Будь-ласка, не будьте егоїстки,
Я не дуже люблю м''ясо,
Але дуже люблю голі кістки!
Поділіться зі мною всім
Найкращим, що ви маєте,
А в знак подяки ми замутим
З вами кабаре і вар''єте,
Потім поміняємо любов групову
На пристрасний тет-а-тет,
Маю риму ідеальну на ет,
Але її не пустять в ефір.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2215158_l1','pisniua_2215158','YouTube','https://www.youtube.com/watch?v=x4foFc5sank','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2215158_l2','pisniua_2215158','YouTube','https://www.youtube.com/watch?v=JMKJLMhv3RI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_221591';
DELETE FROM song_versions WHERE song_id = 'pisniua_221591';
DELETE FROM songs_fts WHERE song_id = 'pisniua_221591';
DELETE FROM songs WHERE id = 'pisniua_221591';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_221591','Їжачок','Музика: Фліт Слова: Фліт. Виконує: Фліт','uk','ukraine_1991',NULL,NULL,'http://www.flit.com.ua',NULL,'Наша розповідь про їжачка
Про маленького неслухняного
Як спіткала малого біда
Вже не жвавого не рум’яного
В темнім лісі багато пригод
Птахи, равлики, скунси, олені
Та чомусь потягнуло його
На доріженьку асфальтовану

Їжачок! Піднімись, підберись!
Їжачок! Разом з нами посміхнись!
Їжачок! Навкруги озирнись! Їжачок! Їжачок!
Але він перетвориться в зірку
І лапками весь світ обійме
Не чіпайте його не чіпайте його не треба
Хай він сили у собі знайде

Міг би бути щасливим кінець
Як би було все по-інакшому
Та біжав він собі навпростець
І раптово тут звідкись машіна
І відбулась кривава біда
Ми про неї вам не розкажемо
Але факт вже малого нема
І сволота зла непокарана','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_221591'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_221591','Їжачок','Наша розповідь про їжачка
Про маленького неслухняного
Як спіткала малого біда
Вже не жвавого не рум’яного
В темнім лісі багато пригод
Птахи, равлики, скунси, олені
Та чомусь потягнуло його
На доріженьку асфальтовану

Їжачок! Піднімись, підберись!
Їжачок! Разом з нами посміхнись!
Їжачок! Навкруги озирнись! Їжачок! Їжачок!
Але він перетвориться в зірку
І лапками весь світ обійме
Не чіпайте його не чіпайте його не треба
Хай він сили у собі знайде

Міг би бути щасливим кінець
Як би було все по-інакшому
Та біжав він собі навпростець
І раптово тут звідкись машіна
І відбулась кривава біда
Ми про неї вам не розкажемо
Але факт вже малого нема
І сволота зла непокарана');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_221591_l1','pisniua_221591','YouTube','https://www.youtube.com/watch?v=l0arrQ9PbWg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2218563';
DELETE FROM song_versions WHERE song_id = 'pisniua_2218563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2218563';
DELETE FROM songs WHERE id = 'pisniua_2218563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2218563','Колискова','Музика: Мирослава Вербищук Слова: Мирослава Вербищук. Виконує: Мирослава Вербищук','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Непомітно догорає день,
На місто падає тканина,
Але все ж таки засинай, дитино,
Забувай тисячі імен,
Забудь тії очі, що запалять ночі.

Приспів:
Зупини цей день, цей час,
Нехай він не розлучить нас.
Забудь пісні, що я співаю-таю...
Зупини цей день, цю ніч,
Забудь про репліку і річ,
Співаю знову й знову
Колискову...

Нехай солодким твій сон був,
Від цеї пісні ти заснув,
До ранку-світанку
Закрий, дитинко, очі
Від злої тої ночі...

Приспів. (2)','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2218563'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2218563','Колискова','Непомітно догорає день,
На місто падає тканина,
Але все ж таки засинай, дитино,
Забувай тисячі імен,
Забудь тії очі, що запалять ночі.

Приспів:
Зупини цей день, цей час,
Нехай він не розлучить нас.
Забудь пісні, що я співаю-таю...
Зупини цей день, цю ніч,
Забудь про репліку і річ,
Співаю знову й знову
Колискову...

Нехай солодким твій сон був,
Від цеї пісні ти заснув,
До ранку-світанку
Закрий, дитинко, очі
Від злої тої ночі...

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_221952';
DELETE FROM song_versions WHERE song_id = 'pisniua_221952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_221952';
DELETE FROM songs WHERE id = 'pisniua_221952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_221952','8-ий колір *','Музика: Мотор''ролла Слова: Мотор''ролла. Виконує: Мотор''ролла','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: Чорновіл С. О.','я йшов по воді і назад озирався
а потім побачив тебе
тебе у воді, я отак закохався
веселка цариця небес
мені закортіло всі хмари за гору
загнати і витерти бруд
з обличчя і ніг, щоб унизити сором,
навіки залишитись тут

Em   D(басF#)G         Am
хочеш я твоїм кольором буду
восьмим кольором, восьмим чудом
Em    D(басF#)G         Am
білим, я буду білим, як сніг,
якщо ти ним бути дозволиш мені

дозволиш, я знаю, натягнуться струни
порвуться, і я полечу
я буду співати, у небі літаю,
за мрію життям заплачу

я буду проміння за пальці тримати
гаряче, як жовті вогні
і в губи безодню небес цілувати
ніхто не завадить мені','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_221952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_221952','8-ий колір *','я йшов по воді і назад озирався
а потім побачив тебе
тебе у воді, я отак закохався
веселка цариця небес
мені закортіло всі хмари за гору
загнати і витерти бруд
з обличчя і ніг, щоб унизити сором,
навіки залишитись тут

Em   D(басF#)G         Am
хочеш я твоїм кольором буду
восьмим кольором, восьмим чудом
Em    D(басF#)G         Am
білим, я буду білим, як сніг,
якщо ти ним бути дозволиш мені

дозволиш, я знаю, натягнуться струни
порвуться, і я полечу
я буду співати, у небі літаю,
за мрію життям заплачу

я буду проміння за пальці тримати
гаряче, як жовті вогні
і в губи безодню небес цілувати
ніхто не завадить мені');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_221952_l1','pisniua_221952','YouTube','https://www.youtube.com/watch?v=tpw8RBx8AMc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_221952_l2','pisniua_221952','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2219212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2219212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2219212';
DELETE FROM songs WHERE id = 'pisniua_2219212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2219212','Наливай, кума!','Музика: Микола Янченко Слова: Микола Янченко. Виконує: Микола Янченко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Куме, знов нечиста сила
Вкрала шапку і кожух!
Та ми вчора їх пропили -
От що я тобі скажу.
Та вже, мабуть, до шинкарки
Не підем сьогодні ми,
А підемо до Одарки,
До Одарки, до куми!

Приспів:
Наливай, наливай, кума,
Кума!
Що то за кума,
Що з кумом не пила?
Що то за кума,
Що куму не дала?
Чарочку горілки |
Куму не дала!   | (2)

Підем, куме, до Одарки,
Хай похмілля прожене,
Піднесе горілки чарку,
Посміхнеться, підморгне!
Там у неї все до ладу,
І живе вона одна,
А про шапку і не згадуй,
Скоро, куме, вже весна!

Приспів.

А, як виженем похмілля,
Від якого все болить,
Кинем, куме, кляте зілля,
Щоб і хату не пропить.
Досить нам козу водити,
Не вилазити з корчми,
то ж зав''язуємо пити
До наступної зими!

Приспів. (2)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2219212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2219212','Наливай, кума!','Куме, знов нечиста сила
Вкрала шапку і кожух!
Та ми вчора їх пропили -
От що я тобі скажу.
Та вже, мабуть, до шинкарки
Не підем сьогодні ми,
А підемо до Одарки,
До Одарки, до куми!

Приспів:
Наливай, наливай, кума,
Кума!
Що то за кума,
Що з кумом не пила?
Що то за кума,
Що куму не дала?
Чарочку горілки |
Куму не дала!   | (2)

Підем, куме, до Одарки,
Хай похмілля прожене,
Піднесе горілки чарку,
Посміхнеться, підморгне!
Там у неї все до ладу,
І живе вона одна,
А про шапку і не згадуй,
Скоро, куме, вже весна!

Приспів.

А, як виженем похмілля,
Від якого все болить,
Кинем, куме, кляте зілля,
Щоб і хату не пропить.
Досить нам козу водити,
Не вилазити з корчми,
то ж зав''язуємо пити
До наступної зими!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2221192';
DELETE FROM song_versions WHERE song_id = 'pisniua_2221192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2221192';
DELETE FROM songs WHERE id = 'pisniua_2221192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2221192','Серенада','Музика: Олег Турко Слова: Олег Турко. Виконує: DZIDZIO','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я познакомився
З тобою в самальоті,
Коли летів в Ізраїль
Я до своєї тьоті.
Сиділа збоку ти,
Покрашена бландінка,
І в мене почалась
Неадекватна поведінка.

Приспів:
I lіke you! I want you!
I lіke you! I want you!
Любов з першого взгляда,
I need you тебя,
Ти - мая серенада,
Любов з першого взгляда,
I need you тебя,
Ти - мая серенада!

Любила ти комфорт,
Масаж і ресторани,
Я накупив тобі
Білизни чемадани.
Ти пудрила мозги,
З тобою впав я в дєтство,
На тебе я спустив
Всьо тьотіне наслєдство.

Приспів.

Ти кинула мене
І з другим полетіла,
І вже тепер ти рижа
У боінгу сиділа,
Нового чувака
Класічєски розводиш,
Мене, як молодого,
Ше більше тим заводиш.

Приспів. (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2221192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2221192','Серенада','Я познакомився
З тобою в самальоті,
Коли летів в Ізраїль
Я до своєї тьоті.
Сиділа збоку ти,
Покрашена бландінка,
І в мене почалась
Неадекватна поведінка.

Приспів:
I lіke you! I want you!
I lіke you! I want you!
Любов з першого взгляда,
I need you тебя,
Ти - мая серенада,
Любов з першого взгляда,
I need you тебя,
Ти - мая серенада!

Любила ти комфорт,
Масаж і ресторани,
Я накупив тобі
Білизни чемадани.
Ти пудрила мозги,
З тобою впав я в дєтство,
На тебе я спустив
Всьо тьотіне наслєдство.

Приспів.

Ти кинула мене
І з другим полетіла,
І вже тепер ти рижа
У боінгу сиділа,
Нового чувака
Класічєски розводиш,
Мене, як молодого,
Ше більше тим заводиш.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2221192_l1','pisniua_2221192','YouTube','https://www.youtube.com/watch?v=3OCp6KAz4bA','video',NULL,1);
