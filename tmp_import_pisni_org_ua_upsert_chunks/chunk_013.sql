DELETE FROM song_links WHERE song_id = 'pisniua_2219971';
DELETE FROM song_versions WHERE song_id = 'pisniua_2219971';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2219971';
DELETE FROM songs WHERE id = 'pisniua_2219971';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2219971','Батькова калина','Музика: Олесь Коляда Слова: Микола Сингаївський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Батькова калина коло хати,
То ж від неї сяйво під вікном,
Що зігріє нас, як рідна мати,
Цвітом і красою, і теплом.
Батькова калина коло хати,
Я до неї серцем пригорнусь,
Буду кожне гроно цілувати
І снаги, і мужності нап''юсь.

Приспів:
Батькова калина, як любов, єдина!
Батькова дорога - то моя тривога,
Батькова калина - дума, Україна,   |
Наша пісня, доля, українська воля! | (2)

Батькова калина коло хати,
Птахи п''ють росу з її долонь,
Вміє вона з роду чарувати,
Як горить калиновий вогонь.

Приспів.

Батькова калина коло хати,
Знов про неї мову поведу,
Щоб у спадок дітям передати
Все, що нам судилось на роду!

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2219971'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2219971','Батькова калина','Батькова калина коло хати,
То ж від неї сяйво під вікном,
Що зігріє нас, як рідна мати,
Цвітом і красою, і теплом.
Батькова калина коло хати,
Я до неї серцем пригорнусь,
Буду кожне гроно цілувати
І снаги, і мужності нап''юсь.

Приспів:
Батькова калина, як любов, єдина!
Батькова дорога - то моя тривога,
Батькова калина - дума, Україна,   |
Наша пісня, доля, українська воля! | (2)

Батькова калина коло хати,
Птахи п''ють росу з її долонь,
Вміє вона з роду чарувати,
Як горить калиновий вогонь.

Приспів.

Батькова калина коло хати,
Знов про неї мову поведу,
Щоб у спадок дітям передати
Все, що нам судилось на роду!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2219971_l1','pisniua_2219971','YouTube','https://www.youtube.com/watch?v=K4Gmu0KC2cU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2219971_l2','pisniua_2219971','YouTube','https://www.youtube.com/watch?v=hXwVYCg5ynI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2218563';
DELETE FROM song_versions WHERE song_id = 'pisniua_2218563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2218563';
DELETE FROM songs WHERE id = 'pisniua_2218563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2218563','Колискова','Музика: Мирослава Вербищук Слова: Мирослава Вербищук. Виконує: Мирослава Вербищук','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Непомітно догорає день,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2216055';
DELETE FROM song_versions WHERE song_id = 'pisniua_2216055';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2216055';
DELETE FROM songs WHERE id = 'pisniua_2216055';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2216055','Будь прославлений','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Будь прославлений,
Як рясний плід дає земля,
Як достатку тече ріка,
D
Будь прославлений!

Будь прославлений,
Як пустеля самотня скрізь,
Як іду по долинах сліз,
Будь прославлений!

Кожен дар Твій повертаю Тобі в хвалі,
Коли темінь наступає, кажу Тобі:
Будь благословен навіки!
Будь благословен!
Будь благословен навіки!
Господи мій, будь благословен!

Будь прославлений,
Коли радість цвіте в мені,
Коли світлі приємні дні,
Будь прославлений!
Будь прославлений,
Коли в серці страждання й сум,
Коли тяжко свій хрест несу,
Будь прославлений!

Ти дав, і Ти узяв,
Ти дав, і Ти узяв,
Слова ж мої без змін:
О, будь благословен!','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2216055'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2216055','Будь прославлений','Будь прославлений,
Як рясний плід дає земля,
Як достатку тече ріка,
D
Будь прославлений!

Будь прославлений,
Як пустеля самотня скрізь,
Як іду по долинах сліз,
Будь прославлений!

Кожен дар Твій повертаю Тобі в хвалі,
Коли темінь наступає, кажу Тобі:
Будь благословен навіки!
Будь благословен!
Будь благословен навіки!
Господи мій, будь благословен!

Будь прославлений,
Коли радість цвіте в мені,
Коли світлі приємні дні,
Будь прославлений!
Будь прославлений,
Коли в серці страждання й сум,
Коли тяжко свій хрест несу,
Будь прославлений!

Ти дав, і Ти узяв,
Ти дав, і Ти узяв,
Слова ж мої без змін:
О, будь благословен!');
DELETE FROM song_links WHERE song_id = 'pisniua_2221192';
DELETE FROM song_versions WHERE song_id = 'pisniua_2221192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2221192';
DELETE FROM songs WHERE id = 'pisniua_2221192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2221192','Серенада','Музика: Олег Турко Слова: Олег Турко. Виконує: DZIDZIO','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Я познакомився
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
DELETE FROM song_links WHERE song_id = 'pisniua_222124';
DELETE FROM song_versions WHERE song_id = 'pisniua_222124';
DELETE FROM songs_fts WHERE song_id = 'pisniua_222124';
DELETE FROM songs WHERE id = 'pisniua_222124';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_222124','Летіла зозуля','Українська народна пісня. Виконує: Аве Марія, Ансамбль Львівського Університету "Черемош"','uk','ukraine_before_1917',NULL,NULL,'Для варіанту тексту 1: джерело невідоме. Для варіанту тексту 2: 1. Книга "Пісні "Черемоша"; 2. Аудіо "ВІА "Аве Марія". "Повій вітре".','Для варіанту тексту 2: - Основний текст подано за джерелом [1]. - У джерелі [2] є відмінності у тексті: * Вона полетіла доньку рятувати. ** Горобчиком хліба, зозулею солі. *** Ой, мамо, ой, мамо, як важко без долі. - Акорди підібрано на слух за джерелами [1] і [2]. Варіант мелодії 1 і варіант мелодії 2 подано для варіанту тексту 2. Підбір акордів: bohdanko@epost.com.ua','Варіант 1:
Летіла зозуля та й стала кувати
Ой то не зозуля, то рідная мати.       | (2)
Ой то не зозуля, то рідная мати,
Вона прилетіла доньку рятувати.        | (2)
Якби мати знала, яка мені біда,
Вона б передала горобчиком хліба.      | (2)
Горобчиком хліба, зозулею солі.
Ой, мамо! Ой, мамо! Як важко без долі. | (2)
Варіант 2:
Em
Летіла зозуля та й стала кувати.
Ой то не зозуля, то рідная мати.   (x2)
Ой то не зозуля, то рідная мати,
Вона полетіла дочку визволяти.     (x2)
"Якби мати знала, яка мені біда,
Вона б передала горобчиком хліба.  (x2)
Горобчиком хліба, голубкою солі. **
Ой, мамо, ой, мамо, як тяжко без долі."  (x2) ***','[''pisni.org.ua'', ''cat:narodni'', ''cat:pro-batkiv'', ''Народні пісні'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_222124'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_222124','Летіла зозуля','Варіант 1:
Летіла зозуля та й стала кувати
Ой то не зозуля, то рідная мати.       | (2)
Ой то не зозуля, то рідная мати,
Вона прилетіла доньку рятувати.        | (2)
Якби мати знала, яка мені біда,
Вона б передала горобчиком хліба.      | (2)
Горобчиком хліба, зозулею солі.
Ой, мамо! Ой, мамо! Як важко без долі. | (2)
Варіант 2:
Em
Летіла зозуля та й стала кувати.
Ой то не зозуля, то рідная мати.   (x2)
Ой то не зозуля, то рідная мати,
Вона полетіла дочку визволяти.     (x2)
"Якби мати знала, яка мені біда,
Вона б передала горобчиком хліба.  (x2)
Горобчиком хліба, голубкою солі. **
Ой, мамо, ой, мамо, як тяжко без долі."  (x2) ***');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_222124_l1','pisniua_222124','YouTube','https://www.youtube.com/watch?v=oS6EACygEQ0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_222124_l2','pisniua_222124','YouTube','https://www.youtube.com/watch?v=eqnPnZelgo8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_222124_l3','pisniua_222124','YouTube','https://www.youtube.com/watch?v=QcMNTuWg-e4','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2221694';
DELETE FROM song_versions WHERE song_id = 'pisniua_2221694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2221694';
DELETE FROM songs WHERE id = 'pisniua_2221694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2221694','День учителя','Музика: Леся Соболевська Слова: Леся Соболевська','uk','ukraine_1991',NULL,NULL,NULL,'Акорди у нотному файлі. Пісня для школярів','Ваш День учителя у тихий день осінній.
Нехай для вас сьогодні небо буде синім
І тепле сонечко осяє вашу хату,
І щирі усмішки зігріють ваше свято.

Приспів:
Ми вас вітаєм і несем в дарунок квіти,
Нехай вони вам ще нагадують про літо,
Щоб щедра доля вам стелилася барвисто
І ви, як завжди, усміхались променисто.

В душі несете ви усі наші тривоги,
Хай буде світлою для вас шкільна дорога.
Нехай для вас завжди іскриться в кожнім слові
Промінчик щирої і світлої любові.

Приспів.    фонограма "мінус"','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2221694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2221694','День учителя','Ваш День учителя у тихий день осінній.
Нехай для вас сьогодні небо буде синім
І тепле сонечко осяє вашу хату,
І щирі усмішки зігріють ваше свято.

Приспів:
Ми вас вітаєм і несем в дарунок квіти,
Нехай вони вам ще нагадують про літо,
Щоб щедра доля вам стелилася барвисто
І ви, як завжди, усміхались променисто.

В душі несете ви усі наші тривоги,
Хай буде світлою для вас шкільна дорога.
Нехай для вас завжди іскриться в кожнім слові
Промінчик щирої і світлої любові.

Приспів.    фонограма "мінус"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2221694_l1','pisniua_2221694','YouTube','https://www.youtube.com/watch?v=BUpUKOLZ588','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2221777';
DELETE FROM song_versions WHERE song_id = 'pisniua_2221777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2221777';
DELETE FROM songs WHERE id = 'pisniua_2221777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2221777','В час, коли ніхто не бачить','Музика: Ганна Гаврилець. Виконує: Віталій Свирид','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'В час, коли ніхто не бачить,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2223063';
DELETE FROM song_versions WHERE song_id = 'pisniua_2223063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2223063';
DELETE FROM songs WHERE id = 'pisniua_2223063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2223063','Слався, рідна Снігурівко!','Слова: Юрій Ревкін','uk','ukraine_1991',NULL,NULL,'вікіпедія','Місто Снігурівка — адміністративний центр Снігурівського району Миколаївської області на річці Інгулець.','Слався, рідна Снігурівко,
На всю Україну,
Хай про тебе всюди дзвінко
Щира пісня лине!

Хай розкаже, як зростала
На крутому схилі,
Свою долю колихала
В Інгулецькій хвилі!

Як дніпровською водою
Землю пригостили,
Для добробуту вагомі
Врожаї зростили!

Розквітай, наш краю милий
В єдиній державі,
Слава вільній Україні!
Снігурівці - слава!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2223063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2223063','Слався, рідна Снігурівко!','Слався, рідна Снігурівко,
На всю Україну,
Хай про тебе всюди дзвінко
Щира пісня лине!

Хай розкаже, як зростала
На крутому схилі,
Свою долю колихала
В Інгулецькій хвилі!

Як дніпровською водою
Землю пригостили,
Для добробуту вагомі
Врожаї зростили!

Розквітай, наш краю милий
В єдиній державі,
Слава вільній Україні!
Снігурівці - слава!');
DELETE FROM song_links WHERE song_id = 'pisniua_2222614';
DELETE FROM song_versions WHERE song_id = 'pisniua_2222614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2222614';
DELETE FROM songs WHERE id = 'pisniua_2222614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2222614','Сім''я і родина','Музика: Станіслав Городинський. Виконує: Станіслав Городинський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Душа шукає захисту й тепла,
Вона його знаходить у родині,
Тут батько й мати, наче два крила,
Що так потрібні у житті людині.

Приспів:
Сім''я і родина та ще й Батьківщина,
Чи є щось святіше за це?
Щоб дерево роду гордилося плодом -
Плекаймо мале деревце!

Коли сім''я збереться за столом
І пісню-думу заспіває тихо,
Душа зігріта ніжністю й теплом
Й не страшні ні біда, ні лихо.

Приспів.

В родиннім колі зрозуміють нас,
Добро посіють - проросте зернина,
Роки кружляють, як весняний вальс,
Нехай святиться в них сім''я й родина!

Приспів. (2)','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2222614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2222614','Сім''я і родина','Душа шукає захисту й тепла,
Вона його знаходить у родині,
Тут батько й мати, наче два крила,
Що так потрібні у житті людині.

Приспів:
Сім''я і родина та ще й Батьківщина,
Чи є щось святіше за це?
Щоб дерево роду гордилося плодом -
Плекаймо мале деревце!

Коли сім''я збереться за столом
І пісню-думу заспіває тихо,
Душа зігріта ніжністю й теплом
Й не страшні ні біда, ні лихо.

Приспів.

В родиннім колі зрозуміють нас,
Добро посіють - проросте зернина,
Роки кружляють, як весняний вальс,
Нехай святиться в них сім''я й родина!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2222614_l1','pisniua_2222614','YouTube','https://www.youtube.com/watch?v=P8-G0ES1xVs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2225212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2225212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2225212';
DELETE FROM songs WHERE id = 'pisniua_2225212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2225212','Не цілуй','Музика: Віктор Бронюк, Ірина Білик Слова: Віктор Бронюк, Ірина Білик. Виконує: Т.І.К. (Тік), Ірина Білик','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ти писала листи
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
DELETE FROM song_links WHERE song_id = 'pisniua_22267';
DELETE FROM song_versions WHERE song_id = 'pisniua_22267';
DELETE FROM songs_fts WHERE song_id = 'pisniua_22267';
DELETE FROM songs WHERE id = 'pisniua_22267';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_22267','Чари ночі (три голоси)','(Сміються, плачуть солов''ї). Музика: В. Безкоровайний Слова: Олександр Олесь. Виконує: Рідна пісня, Дмитро Гнатюк, Андрій Селезньов, Ніна Матвієнко, Тарас Компаніченко','uk','ukraine_1991',NULL,'2003','1. Українські народні романси. Упорядкування передмова та примітки Л. Ященка. - К.: В-во АН УРСР, 1961. - 412 с. 2. Олександр Олесь. Чари ночі. Лірика. — К.: Радянський письменник, 1989. — 224 с. 3. Василь Триліс - три голоси.','В репертуарі народного гурту "Рідна пісня" (м. Київ) - з 2003 року. Виконуються 1, 2, 6, 8 та на завершення знову 1 куплети. Авторство тексту безсумнівне. А от щодо мелодії... У збірнику А. Я. Михалка "Пісенний вінок", К., "Криниця", 2005 та в деяких інших джерелах автором названо В. Безкоровайного. За свідчення Віктора Лісовола (кобзар, автор мелодії), композитором "Чарів" був Федір Дорошко. Отже - потрібна більш певна інформація. Можливо, йдеться про іншу мелодію на ці слова. — В. Триліс Перебір 6 (бас - 3-2-1-2-3). Акорди підібрані Віктором (vperfetsjkyj@gmail.com) з відео виконання цієї пісні Тарасом Компаніченком на YouTube.','Am
Сміються, плачуть солов''ї
І б''ють піснями в груди:
"Цілуй, цілуй, цілуй її, —
Знов молодість не буде!
Ти не дивись, що буде там —
Чи забуття, чи зрада:
Весна іде назустріч вам,
Весна в сей час вам рада.
На мент єдиний залиши
Свій сум, думки і горе —
І струмінь власної душі
Улий в шумляче море.
Лови летючу мить життя!
Чаруйсь, хмелій, впивайся,
І серед мрій і забуття
В розкошах закохайся.
Поглянь, уся земля тремтить
В палких обіймах ночі,
Лист квітці рвійно шелестить,
Траві струмок воркоче.
Відбились зорі у воді,
Летять до хмар тумани...
Тут ллються пахощі густі,
Там гнуться верби п''яні.
Як іскра ще в тобі горить
І згаснути не вспіла, —
Гори! - життя єдина мить,
Для смерті ж - вічність ціла.
Чого ж стоїш без руху ти,
Коли весь світ співає?
Налагодь струни золоті:
Бенкет весна справляє.
І сміло йди під дзвін чарок
З вогнем, з піснями в гості,
На свято радісне квіток,
Кохання, снів і млості.
Загине все без вороття:
Що візьме час, що люди,
Погасне в серці багаття,
І захолонуть груди.
І схочеш ти вернуть собі,
Як Фауст, дні минулі...
Та знай: над нас — боги скупі,
Над нас — глухі й нечулі..."
Сміються, плачуть солов''ї
І б''ють піснями в груди:
"Цілуй, цілуй, цілуй її -
Знов молодість не буде."','[''pisni.org.ua'', ''cat:lirychni'', ''cat:romansy'', ''Пісні про кохання, ліричні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_22267'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_22267','Чари ночі (три голоси)','Am
Сміються, плачуть солов''ї
І б''ють піснями в груди:
"Цілуй, цілуй, цілуй її, —
Знов молодість не буде!
Ти не дивись, що буде там —
Чи забуття, чи зрада:
Весна іде назустріч вам,
Весна в сей час вам рада.
На мент єдиний залиши
Свій сум, думки і горе —
І струмінь власної душі
Улий в шумляче море.
Лови летючу мить життя!
Чаруйсь, хмелій, впивайся,
І серед мрій і забуття
В розкошах закохайся.
Поглянь, уся земля тремтить
В палких обіймах ночі,
Лист квітці рвійно шелестить,
Траві струмок воркоче.
Відбились зорі у воді,
Летять до хмар тумани...
Тут ллються пахощі густі,
Там гнуться верби п''яні.
Як іскра ще в тобі горить
І згаснути не вспіла, —
Гори! - життя єдина мить,
Для смерті ж - вічність ціла.
Чого ж стоїш без руху ти,
Коли весь світ співає?
Налагодь струни золоті:
Бенкет весна справляє.
І сміло йди під дзвін чарок
З вогнем, з піснями в гості,
На свято радісне квіток,
Кохання, снів і млості.
Загине все без вороття:
Що візьме час, що люди,
Погасне в серці багаття,
І захолонуть груди.
І схочеш ти вернуть собі,
Як Фауст, дні минулі...
Та знай: над нас — боги скупі,
Над нас — глухі й нечулі..."
Сміються, плачуть солов''ї
І б''ють піснями в груди:
"Цілуй, цілуй, цілуй її -
Знов молодість не буде."');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22267_l1','pisniua_22267','YouTube','https://www.youtube.com/watch?v=RVs6hi0Oz6k','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22267_l2','pisniua_22267','YouTube','https://www.youtube.com/watch?v=M5DDORnohHE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22267_l3','pisniua_22267','YouTube','https://www.youtube.com/watch?v=z3mutZ9DPKk','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22267_l4','pisniua_22267','YouTube','https://www.youtube.com/watch?v=lQIs8CKOvKg','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22267_l5','pisniua_22267','YouTube','https://www.youtube.com/watch?v=Wh7sqePFiS8','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22267_l6','pisniua_22267','YouTube','https://www.youtube.com/watch?v=EA67WlOfH_I','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22267_l7','pisniua_22267','YouTube','https://www.youtube.com/watch?v=w4Ewzqd-NHY','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22267_l8','pisniua_22267','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,8);
DELETE FROM song_links WHERE song_id = 'pisniua_2226199';
DELETE FROM song_versions WHERE song_id = 'pisniua_2226199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2226199';
DELETE FROM songs WHERE id = 'pisniua_2226199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2226199','Новорічне','Музика: Віктор Охріменко Слова: Ігор Федчишин','uk','ukraine_1991',NULL,NULL,'http://poezia.org/ua/id/30967/',NULL,'Коли час завис у небесах,
Та кружляє, як підбитий птах,
Коли кожна втрачена в шляху хвилинка
В скронях відбиває сум і жах -
Чи в бокал наллєш собі вина,
Чи скуштуєш радощів сповна,
Чи загра тобі веселкою ялинка
В новорічних сяючи вогнях?

Коли дім вже видно в далині,
Тільки дюйм залишився мені -
Чи тобі підкаже горда серединка,
Що пора запалювать вогні?
Чи в бокал наллєш обом вина,
Підійдеш тихенько до вікна,
Чи заграє нам веселкою ялинка
В новорічних сяючи вогнях.

Коли я за клямку вже візьмусь -
Затремтиш й розплачешся чомусь
І розтанеш у обіймах, як сніжинка.
"З Новим роком, люба! Я вернувсь!"
Що рідніше сяючих повік,
Що миліше, коли тане сніг?
Що вам побажати, друзі, в цю хвилинку,
Коли нас обняв вже Новий рік!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2226199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2226199','Новорічне','Коли час завис у небесах,
Та кружляє, як підбитий птах,
Коли кожна втрачена в шляху хвилинка
В скронях відбиває сум і жах -
Чи в бокал наллєш собі вина,
Чи скуштуєш радощів сповна,
Чи загра тобі веселкою ялинка
В новорічних сяючи вогнях?

Коли дім вже видно в далині,
Тільки дюйм залишився мені -
Чи тобі підкаже горда серединка,
Що пора запалювать вогні?
Чи в бокал наллєш обом вина,
Підійдеш тихенько до вікна,
Чи заграє нам веселкою ялинка
В новорічних сяючи вогнях.

Коли я за клямку вже візьмусь -
Затремтиш й розплачешся чомусь
І розтанеш у обіймах, як сніжинка.
"З Новим роком, люба! Я вернувсь!"
Що рідніше сяючих повік,
Що миліше, коли тане сніг?
Що вам побажати, друзі, в цю хвилинку,
Коли нас обняв вже Новий рік!');
DELETE FROM song_links WHERE song_id = 'pisniua_2224010';
DELETE FROM song_versions WHERE song_id = 'pisniua_2224010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2224010';
DELETE FROM songs WHERE id = 'pisniua_2224010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2224010','Славтесь, Лубни величаві','Музика: І. Любич Слова: О. Хало','uk','ukraine_1991',NULL,NULL,'вікіпедія',NULL,'Славтесь, Лубни величаві,
Горда красуня Сула.
Рідному місту навіки
Наша хвала!

Прославляймо Лубен,
Звитягу трудову,
Малинове знамено,
Козацьку булаву,
Місто сонця і весни -
Вічно юні Лубни!

З верхнього Валу - донині
Вірна і доблесна путь,
Хай над Лубнами зоріє
Світлість майбуть!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2224010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2224010','Славтесь, Лубни величаві','Славтесь, Лубни величаві,
Горда красуня Сула.
Рідному місту навіки
Наша хвала!

Прославляймо Лубен,
Звитягу трудову,
Малинове знамено,
Козацьку булаву,
Місто сонця і весни -
Вічно юні Лубни!

З верхнього Валу - донині
Вірна і доблесна путь,
Хай над Лубнами зоріє
Світлість майбуть!');
DELETE FROM song_links WHERE song_id = 'pisniua_2222055';
DELETE FROM song_versions WHERE song_id = 'pisniua_2222055';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2222055';
DELETE FROM songs WHERE id = 'pisniua_2222055';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2222055','Квіти черемшини','(Наламай мені, кохана). Музика: Тетяна Кисленко, Віра Євтушек Слова: Т. Василько','uk','ukraine_1991',NULL,NULL,'Авторське подання: Т. Василько. Калинове вино. Львів: Плай, 2005. - 96 с.',NULL,'Наламай мені, кохана,
У діброві черемшини,
Я той цвіт чарівний
У Черемош кину.

Хай пливе за море,
У чужі країни,
Бо і там брати мої,
Сестри з України.

Мов каліки-журавлі,
Що відбились від родини,
Стережуть чужі поля,
Золоті руїни.

Бо і їм, напевне, сниться
Пісня солов''їна,
В черемшиновім намисті
Мила Україна.

Я кидаю у Черемош
Квіти черемшини,
Хай несуть вони за море
Вістку з України.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2222055'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2222055','Квіти черемшини','Наламай мені, кохана,
У діброві черемшини,
Я той цвіт чарівний
У Черемош кину.

Хай пливе за море,
У чужі країни,
Бо і там брати мої,
Сестри з України.

Мов каліки-журавлі,
Що відбились від родини,
Стережуть чужі поля,
Золоті руїни.

Бо і їм, напевне, сниться
Пісня солов''їна,
В черемшиновім намисті
Мила Україна.

Я кидаю у Черемош
Квіти черемшини,
Хай несуть вони за море
Вістку з України.');
DELETE FROM song_links WHERE song_id = 'pisniua_2223251';
DELETE FROM song_versions WHERE song_id = 'pisniua_2223251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2223251';
DELETE FROM songs WHERE id = 'pisniua_2223251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2223251','Урок','Музика: Т. Потапенко Слова: М. Івенсен','uk','ukraine_1991',NULL,NULL,'інтернет',NULL,'Хмарка в небі, а по лузі
По траві — тінь пливе.
Ляльки вчать уважно букви:
"А, бе, ве, а, бе, ве..."
Вітре, нам не заважай
І сторінки не гортай,
Ти слів не розбереш,
Тільки всіх зіб''єш.

Підійшло кача поважно.
Підійшло — кря-кря-кря!
І давай щипать відважно
Корінець букваря.
Ти, кача, не заважай,
Ляльок з толку не збивай:
Не "кря-кря-кря", а як?
А, бе, ве... — ось так.

Ось коза — стук-стук копитцем.
Тут хіба ждуть тебе?
Я коза, я хочу вчиться,
Бе-бе-бе, бе-бе-бе! —
Ти, коза, не заважай,
Ляльок з толку не збивай:
Не "бе-бе-бе", а як?
А, бе, ве... — ось так.

Причепилося телятко,
І собі. Му-му-му! —
От телятко-недоглядко!
Що ти скажеш йому?
Ти, теля, не заважай,
Ляльок з толку не збивай:
Не "му-му-му", а як? —
А, бе, ве... — ось так.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2223251'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2223251','Урок','Хмарка в небі, а по лузі
По траві — тінь пливе.
Ляльки вчать уважно букви:
"А, бе, ве, а, бе, ве..."
Вітре, нам не заважай
І сторінки не гортай,
Ти слів не розбереш,
Тільки всіх зіб''єш.

Підійшло кача поважно.
Підійшло — кря-кря-кря!
І давай щипать відважно
Корінець букваря.
Ти, кача, не заважай,
Ляльок з толку не збивай:
Не "кря-кря-кря", а як?
А, бе, ве... — ось так.

Ось коза — стук-стук копитцем.
Тут хіба ждуть тебе?
Я коза, я хочу вчиться,
Бе-бе-бе, бе-бе-бе! —
Ти, коза, не заважай,
Ляльок з толку не збивай:
Не "бе-бе-бе", а як?
А, бе, ве... — ось так.

Причепилося телятко,
І собі. Му-му-му! —
От телятко-недоглядко!
Що ти скажеш йому?
Ти, теля, не заважай,
Ляльок з толку не збивай:
Не "му-му-му", а як? —
А, бе, ве... — ось так.');
DELETE FROM song_links WHERE song_id = 'pisniua_2223277';
DELETE FROM song_versions WHERE song_id = 'pisniua_2223277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2223277';
DELETE FROM songs WHERE id = 'pisniua_2223277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2223277','Запиши мене у школу!','Музика: О. Зульфугарова Слова: Р. Зека','uk','ukraine_1991',NULL,NULL,'інтернет',NULL,'Мамо, шість сьогодні років,
Шість мені,
В школу ти мене запишеш
А чи ні?

Я читать сама умію і писать,
Я лічить до ста умію й додавать.
Я не можу зараз ляльку одягать:
Хай сама вона побуде перший раз.
Запиши мене у школу, в перший клас!

Мамо, шість сьогодні років,
Шість мені,
В школу ти мене запишеш
А чи ні?

Он поглянь, як радо діти в школу йдуть —
Гордо як вони книжки свої несуть,
Тільки я одна повинна вдома буть.
Мамо, мамо, сумно так мені в цей час.
Запиши мене у школу, в перший клас!','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2223277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2223277','Запиши мене у школу!','Мамо, шість сьогодні років,
Шість мені,
В школу ти мене запишеш
А чи ні?

Я читать сама умію і писать,
Я лічить до ста умію й додавать.
Я не можу зараз ляльку одягать:
Хай сама вона побуде перший раз.
Запиши мене у школу, в перший клас!

Мамо, шість сьогодні років,
Шість мені,
В школу ти мене запишеш
А чи ні?

Он поглянь, як радо діти в школу йдуть —
Гордо як вони книжки свої несуть,
Тільки я одна повинна вдома буть.
Мамо, мамо, сумно так мені в цей час.
Запиши мене у школу, в перший клас!');
DELETE FROM song_links WHERE song_id = 'pisniua_2228697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2228697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2228697';
DELETE FROM songs WHERE id = 'pisniua_2228697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2228697','Оберіг','Слова: Т. Василько','uk','ukraine_1991',NULL,NULL,'Авторське подання: Т. Василько. Гомін Підгір''я (альманах) № 8, 2009. – С. 116 - 135.',NULL,'Від серця пісня,
До неба думка,
Від діда-прадіда душа
Дзвінка і запальна.

Приспів:
Бандури гомін,
Трембіти говір
На сто світів, на сто доріг. -
Української культури
Славний львівський оберіг. -
Це наша Альма-Матер!

Талант від Бога -
Він для народу,
Для Батьківщини, нації. -
Не згубимо його!

Приспів.

Народів мудрість
У книжнім слові:
Безцінний скарб від поколінь -
Для нових поколінь.

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2228697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2228697','Оберіг','Від серця пісня,
До неба думка,
Від діда-прадіда душа
Дзвінка і запальна.

Приспів:
Бандури гомін,
Трембіти говір
На сто світів, на сто доріг. -
Української культури
Славний львівський оберіг. -
Це наша Альма-Матер!

Талант від Бога -
Він для народу,
Для Батьківщини, нації. -
Не згубимо його!

Приспів.

Народів мудрість
У книжнім слові:
Безцінний скарб від поколінь -
Для нових поколінь.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_222199';
DELETE FROM song_versions WHERE song_id = 'pisniua_222199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_222199';
DELETE FROM songs WHERE id = 'pisniua_222199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_222199','Вийшла молода','Українська народна пісня. Виконує: Рахіля Руснак','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Вийшла молода на городчика,
Тай до зіллєчка свого,
Тай рве бервінок собі на вінок, |
Та й жалібненько й плаче        | (2)

А за нев - за нев її ненечко:
"Чо ж  ти, донечко, й плачеш?
Ой, чи жаль тобі подвір''я сего, |
Чи мене - старенького?"         | (2)

"Ой, не жаль мені подвір''я сего,
Ані Вас - старенького,
Лишень жаль мені за русу косу,  |
За дівоцькую ношу.              | (2)

Дівки гуляють, дівки гуляють,
Лиш мене не приймають
Ні до дівочок, ні до жіночок,   |
Лиш під злотний віночок."       | (2)','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_222199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_222199','Вийшла молода','Вийшла молода на городчика,
Тай до зіллєчка свого,
Тай рве бервінок собі на вінок, |
Та й жалібненько й плаче        | (2)

А за нев - за нев її ненечко:
"Чо ж  ти, донечко, й плачеш?
Ой, чи жаль тобі подвір''я сего, |
Чи мене - старенького?"         | (2)

"Ой, не жаль мені подвір''я сего,
Ані Вас - старенького,
Лишень жаль мені за русу косу,  |
За дівоцькую ношу.              | (2)

Дівки гуляють, дівки гуляють,
Лиш мене не приймають
Ні до дівочок, ні до жіночок,   |
Лиш під злотний віночок."       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_222199_l1','pisniua_222199','YouTube','https://www.youtube.com/watch?v=n0kgehdc2X4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2227410';
DELETE FROM song_versions WHERE song_id = 'pisniua_2227410';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2227410';
DELETE FROM songs WHERE id = 'pisniua_2227410';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2227410','На горі жито','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісні Городенківщини/Упорядник - Марія Сорока. Снятин: Прут-Принт, 2006.',NULL,'Та й на горі жито,
На долині овес,
Та й всі дзвони задзвонили,
Бо Ісус Христос воскрес!

На й всі дзвони задзвонили,
Чути аж на гору,
Збирайтеся люди добрі
До Божого храму.

Ідіть, люди, до церковці
До Божого дому,
Та й вклікайте на коліна,
Та й моліться Богу.

Ідіть, люди, до церковці,
Слухайте науки,
Бо Ісус Христос та й на хресті
За нас терпів муки.

Бо Ісус Христос та й на хресті
Мученьки тримає,
Та й Господи милосердний,
Як сі цей світ має.','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2227410'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2227410','На горі жито','Та й на горі жито,
На долині овес,
Та й всі дзвони задзвонили,
Бо Ісус Христос воскрес!

На й всі дзвони задзвонили,
Чути аж на гору,
Збирайтеся люди добрі
До Божого храму.

Ідіть, люди, до церковці
До Божого дому,
Та й вклікайте на коліна,
Та й моліться Богу.

Ідіть, люди, до церковці,
Слухайте науки,
Бо Ісус Христос та й на хресті
За нас терпів муки.

Бо Ісус Христос та й на хресті
Мученьки тримає,
Та й Господи милосердний,
Як сі цей світ має.');
DELETE FROM song_links WHERE song_id = 'pisniua_2226293';
DELETE FROM song_versions WHERE song_id = 'pisniua_2226293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2226293';
DELETE FROM songs WHERE id = 'pisniua_2226293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2226293','Михаїлу','Музика: Тарас Компаніченко Слова: народні. Виконує: Хорея Козацька','uk','ukraine_before_1917',NULL,NULL,'Альбом "Хорея Козацька"2009 р однойменого гурту',NULL,'Молитися згодні
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
DELETE FROM song_links WHERE song_id = 'pisniua_2226717';
DELETE FROM song_versions WHERE song_id = 'pisniua_2226717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2226717';
DELETE FROM songs WHERE id = 'pisniua_2226717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2226717','Патріотичний гімн','Музика: Ігор Хомин Слова: Богдан-Ігор Антонич','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Навпроти тьми, неволі, горя
За честь, за волю, за свободу
Ми - лицарі із Чорномор''я
Козацького нащадки роду!

Ми - друзі, вірні побратими,
Не роз''єднало нас життя.
Ми іскрами вогню святими
Напишемо свій глузд буття.

Над нами гордий прапор має,
Вперед сміливо йдем,
У серці правда лиш одна є,
Наснажена дзвінким мечем.

Честь власна й слава України -
Нам мріється лицарський чин.
Не вміє пригинати спини
Козацький вільний юний син!','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2226717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2226717','Патріотичний гімн','Навпроти тьми, неволі, горя
За честь, за волю, за свободу
Ми - лицарі із Чорномор''я
Козацького нащадки роду!

Ми - друзі, вірні побратими,
Не роз''єднало нас життя.
Ми іскрами вогню святими
Напишемо свій глузд буття.

Над нами гордий прапор має,
Вперед сміливо йдем,
У серці правда лиш одна є,
Наснажена дзвінким мечем.

Честь власна й слава України -
Нам мріється лицарський чин.
Не вміє пригинати спини
Козацький вільний юний син!');
DELETE FROM song_links WHERE song_id = 'pisniua_2227756';
DELETE FROM song_versions WHERE song_id = 'pisniua_2227756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2227756';
DELETE FROM songs WHERE id = 'pisniua_2227756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2227756','Чернятинські коломийки','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісні Городенківщини/Упорядник - Марія Сорока. Снятин: Прут-Принт, 2006.',NULL,'Мене мати породила та й коло припічка.
Та й казала: "Рости, доню, тоненька, як свічка",
А я мами послухала й виросла тоненька,
На сім сажнів поясина, та й та коротенька.

Ой, косив я сіно, сіно, косив я отаву,
Полюбив я дівчиноньку, маленьку, цікаву.
Ой, косив я сіно, сіно, косив я осоку.
Полюбив я дівчиноньку, тоненьку, високу.

А ви, хлопці, гуляєте, бо ви жінок не маєте,
А якби ви жінок мали, ви би дома ночували.
Стара баба, як вмирала, та ще сі й питала,
Чи нема де весіллячка, щоби погуляла.

Ой, на горі жито, жито зелене-зелене,
Ой, час, мати дочку дати за мене ,за мене.
Ой, гуляли парубочки, аж корчма гуділа,
А багацька дівчинонька під корчмов сиділа.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2227756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2227756','Чернятинські коломийки','Мене мати породила та й коло припічка.
Та й казала: "Рости, доню, тоненька, як свічка",
А я мами послухала й виросла тоненька,
На сім сажнів поясина, та й та коротенька.

Ой, косив я сіно, сіно, косив я отаву,
Полюбив я дівчиноньку, маленьку, цікаву.
Ой, косив я сіно, сіно, косив я осоку.
Полюбив я дівчиноньку, тоненьку, високу.

А ви, хлопці, гуляєте, бо ви жінок не маєте,
А якби ви жінок мали, ви би дома ночували.
Стара баба, як вмирала, та ще сі й питала,
Чи нема де весіллячка, щоби погуляла.

Ой, на горі жито, жито зелене-зелене,
Ой, час, мати дочку дати за мене ,за мене.
Ой, гуляли парубочки, аж корчма гуділа,
А багацька дівчинонька під корчмов сиділа.');
DELETE FROM song_links WHERE song_id = 'pisniua_2224777';
DELETE FROM song_versions WHERE song_id = 'pisniua_2224777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2224777';
DELETE FROM songs WHERE id = 'pisniua_2224777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2224777','Бігли коні через степ','Музика: Олександр Білаш Слова: Микола Томенко. Виконує: Ансамбль Льонок, поліський народний хор, Ауріка Ротару','uk','ukr_ssr_1919_1991',NULL,'1988','аудіозапис','Переважно цю пісню вважають народною, а насправді вона має авторів. Слова написав Микола ТОМЕНКО, а музику – Олександр БІЛАШ. До народного стилю повертають зміст і музика. Текст відтворює козацьку добу й цьому органічно сприяє музика. Відповідно, і виконували її як народну. В інтернеті її записів опубліковано небагато. І мало хто знає, що свого часу її заспівала Ауріка РОТАРУ. Але і в її виконанні пісня дуже швидко згубилася. Кілька разів її передали в передачі "Вечірній вісник" на УТ-1. Це орієнтовно, 1988-1989 роки. І все. А оскільки формат цих програм був більше інформаційним, то зазвичай пісень повністю не транслювали. Цей запис – з одного з тих випусків, записаний ще на аудіокасету з телевізора. Тому якість, звісно, не студійна. Але враховуючи, скільки минуло часу – а це майже 35 років, – й технічні на той час можливості, то ще й не так погано. Пісня перегукується з нашим сьогоденням. Тож на те кілька причин, щоби про неї згадати й опублікувати...','Бігли коні через степ,
Де червоний мак цвіте,
Бігли коні без зупину
Крізь палаючу країну.

Приспів:
А за тином, а за тином
Проводжала мати сина...
Проводжала, посивіла,          |
Мимо коні пролетіли...         | (2)

Не спинялись ні на мить,
Бо земля кругом горить,
І блищали шаблі гострі,        |
Не вертались хлопці в гості... | (2)

Приспів.

Не спинити їх ніколи,
Червоніють маки в полі,
І летять у вічність коні        |
Вже не бліді, а червоні...      | (2)

Бігли коні через степ','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2224777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2224777','Бігли коні через степ','Бігли коні через степ,
Де червоний мак цвіте,
Бігли коні без зупину
Крізь палаючу країну.

Приспів:
А за тином, а за тином
Проводжала мати сина...
Проводжала, посивіла,          |
Мимо коні пролетіли...         | (2)

Не спинялись ні на мить,
Бо земля кругом горить,
І блищали шаблі гострі,        |
Не вертались хлопці в гості... | (2)

Приспів.

Не спинити їх ніколи,
Червоніють маки в полі,
І летять у вічність коні        |
Вже не бліді, а червоні...      | (2)

Бігли коні через степ');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2224777_l1','pisniua_2224777','YouTube','https://www.youtube.com/watch?v=ca1wVf7z40k','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2224777_l2','pisniua_2224777','YouTube','https://www.youtube.com/watch?v=kh1MvEmoBWs','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2224777_l3','pisniua_2224777','YouTube','https://www.youtube.com/watch?v=AjOF9LscMcA','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_222899';
DELETE FROM song_versions WHERE song_id = 'pisniua_222899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_222899';
DELETE FROM songs WHERE id = 'pisniua_222899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_222899','Висить ябко, висить','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Висить ябко, висить
Але впасти мусить...
Котра дівка файна,    | (2)
Вити заміж мусить.

Висить ябко, висить,
Висить паперівка...
Як ся гонорує, -      | (2)
То є львівська дівка.

Ти ми обіцяла,
Що будеш чекала,
Я пішов до війська,   | (2)
А ти ся віддала.

Я пішов до війська
На чотири роки,
А ти ся віддала, -    | (2)
На всі штири боки.

Я пішов до війська
Славу здобувати,
А ти ся віддала, -    | (2)
Не хтіла чекати.

Дівчино, горянко,
Що несеш у збанку?
Дай ми ся напити, -   | (2)
Буду тя любити.','[''pisni.org.ua'', ''cat:narodni'', ''cat:zhartivlyvi'', ''Народні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_222899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_222899','Висить ябко, висить','Висить ябко, висить
Але впасти мусить...
Котра дівка файна,    | (2)
Вити заміж мусить.

Висить ябко, висить,
Висить паперівка...
Як ся гонорує, -      | (2)
То є львівська дівка.

Ти ми обіцяла,
Що будеш чекала,
Я пішов до війська,   | (2)
А ти ся віддала.

Я пішов до війська
На чотири роки,
А ти ся віддала, -    | (2)
На всі штири боки.

Я пішов до війська
Славу здобувати,
А ти ся віддала, -    | (2)
Не хтіла чекати.

Дівчино, горянко,
Що несеш у збанку?
Дай ми ся напити, -   | (2)
Буду тя любити.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_222899_l1','pisniua_222899','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2229665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2229665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2229665';
DELETE FROM songs WHERE id = 'pisniua_2229665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2229665','Вінок','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1978','"Пісні Тернопільщини". Пісенник. - Вип.1. - Київ: Муз. Україна, 1989.','*Та ми жєли бирвін... Бирвінковий він..." - ці рядки виконавиця пояснює так: Та ми жали барвінок На барвінковий вінок. Джерело: М. Драган. 1978. Свершківці Заліщицького р-ну. Від Ганни Михайлюк (1923, 4 кл). 147. Пісні Тернопільщини: Календарно-обрядова та родинно-побутова лірика: Пісенник. Вип. 1. / Упоряд.: С.І. Стельмащук, П.К. Медведик. Вступ. ст. П. Медведика. — К.: Муз. Україна, 1989.','Та ми жєли бирвін..
Бирвінковий він...*
Благослови, боже,
І отець, і мати,
Свойому дитяти
Віночок зачинати.

Та ми жєли бирвін..
Бирвінковий він...
Благослови, боже,
І отець, і мати,
Свойому дитяти
Віночок закладати.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2229665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2229665','Вінок','Та ми жєли бирвін..
Бирвінковий він...*
Благослови, боже,
І отець, і мати,
Свойому дитяти
Віночок зачинати.

Та ми жєли бирвін..
Бирвінковий він...
Благослови, боже,
І отець, і мати,
Свойому дитяти
Віночок закладати.');
DELETE FROM song_links WHERE song_id = 'pisniua_2229216';
DELETE FROM song_versions WHERE song_id = 'pisniua_2229216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2229216';
DELETE FROM songs WHERE id = 'pisniua_2229216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2229216','Ой, думала-гадала','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1969','"Пісні Тернопільщини", Пісенник, Вип.1., Київ: Муз. Україна, 1989.','М. Прокопчук, 1969, Обич Шумського р-ну. Від Ганни Юрчук (1911, 2 кл). Мелодію розшифрував В. Подуфалий. 137 Джерело: Пісні Тернопільщини: Календарно-обрядова та родинно-побутова лірика: Пісенник. Вип.1. / Упоряд.: С.І.Стельмащук, П.К.Медведик. Вступ. ст. П.Медведика. — К.: Муз. Україна, 1989.','Ой, думала-гадала     | (2)
Маруся молодая,

Де горіх посадити,    | (2)
Щоб його розплодити.

Посадила б його
В матінки на городі, —
Жаль буде на відході.

Садила, поливала,     | (2)
Жодного не вирвала.

Та вирвала одного     | (2)
Для Сергійка молодого.

А другого сама з''їла, | (2)
Щоб коло нього сіла.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2229216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2229216','Ой, думала-гадала','Ой, думала-гадала     | (2)
Маруся молодая,

Де горіх посадити,    | (2)
Щоб його розплодити.

Посадила б його
В матінки на городі, —
Жаль буде на відході.

Садила, поливала,     | (2)
Жодного не вирвала.

Та вирвала одного     | (2)
Для Сергійка молодого.

А другого сама з''їла, | (2)
Щоб коло нього сіла.');
DELETE FROM song_links WHERE song_id = 'pisniua_2229124';
DELETE FROM song_versions WHERE song_id = 'pisniua_2229124';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2229124';
DELETE FROM songs WHERE id = 'pisniua_2229124';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2229124','Україна - Футбольна Держава!',NULL,'uk','ukraine_1991',NULL,NULL,'http://stadion.lviv.ua/ua/Hymn_Euro-2012_Ukraine_video','Демо-версія гімну Чемпіонату Європи з футболу в Україні. Версія на конкурс буде надіслана у виконанні відомих співаків різних музичних напрямів України: року, опери, фольклору та репу.','Україна - футбольна держава!
Ми доводили це, і не раз, -
Українці отримали право,
Щоби свято відбулось у нас!
Про це вірили в кожній родині:
Об''єднає нас, браття, футбол, -
Хай лунає по всій Україні
Вболівальників радісне - "Гол"!

Приспів:
"Євро двадцять-дванадцять" -
Шепочуть в надії вуста!
Євро двадцять-дванадцять
Іде в українські міста!
Євро двадцять-дванадцять -
Наша гордість, як хвиля зроста:
Євро двадцять-дванадцять
Прийшов в України міста,
В України міста!

На небесній блакиті країни
Жовте сонце встає калачем
І чекають поля України
Чемпіонів з футбольним м''ячем.
Ми зустрінемо їх хлібом-сіллю
І наш рідний покажемо край,
Заспіваємо їм пісню вільну, -
Хай летить вона за небокрай!

Приспів.

Київ, Донецьк, Чарків, Львів:
Ми це зробили,- це кожний довів!
Цю мить наближали серця міліонів,-
Вітаємо, браття, своїх чемпіонів!
На євро чекала вся Україна,
І ось настає урочиста хвилина!
Кожен з нас мріяв її дочекаться:
В наших містах євро двадцять-дванадцять!

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2229124'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2229124','Україна - Футбольна Держава!','Україна - футбольна держава!
Ми доводили це, і не раз, -
Українці отримали право,
Щоби свято відбулось у нас!
Про це вірили в кожній родині:
Об''єднає нас, браття, футбол, -
Хай лунає по всій Україні
Вболівальників радісне - "Гол"!

Приспів:
"Євро двадцять-дванадцять" -
Шепочуть в надії вуста!
Євро двадцять-дванадцять
Іде в українські міста!
Євро двадцять-дванадцять -
Наша гордість, як хвиля зроста:
Євро двадцять-дванадцять
Прийшов в України міста,
В України міста!

На небесній блакиті країни
Жовте сонце встає калачем
І чекають поля України
Чемпіонів з футбольним м''ячем.
Ми зустрінемо їх хлібом-сіллю
І наш рідний покажемо край,
Заспіваємо їм пісню вільну, -
Хай летить вона за небокрай!

Приспів.

Київ, Донецьк, Чарків, Львів:
Ми це зробили,- це кожний довів!
Цю мить наближали серця міліонів,-
Вітаємо, браття, своїх чемпіонів!
На євро чекала вся Україна,
І ось настає урочиста хвилина!
Кожен з нас мріяв її дочекаться:
В наших містах євро двадцять-дванадцять!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2229124_l1','pisniua_2229124','YouTube','https://www.youtube.com/watch?v=LQPp3yZLrZk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2229879';
DELETE FROM song_versions WHERE song_id = 'pisniua_2229879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2229879';
DELETE FROM songs WHERE id = 'pisniua_2229879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2229879','Ой, кресали серпики по горі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Закувала зозуленька.',NULL,'Ой, кресали серпики
По горі,
Дожинали житечко
При зорі.

Ой, кресали серпики,
Кресали,
Доки ми житечко
Дожали.

Ой, дожали житечко
В Божий час,
А тепер, господарю,
Частуй нас.

Ой, наша господиня
Домує,
Вона нам вечерю
Готує.

Уже нам вечеря
Не мила:
Широкая нива
Втомила.','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2229879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2229879','Ой, кресали серпики по горі','Ой, кресали серпики
По горі,
Дожинали житечко
При зорі.

Ой, кресали серпики,
Кресали,
Доки ми житечко
Дожали.

Ой, дожали житечко
В Божий час,
А тепер, господарю,
Частуй нас.

Ой, наша господиня
Домує,
Вона нам вечерю
Готує.

Уже нам вечеря
Не мила:
Широкая нива
Втомила.');
DELETE FROM song_links WHERE song_id = 'pisniua_222961';
DELETE FROM song_versions WHERE song_id = 'pisniua_222961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_222961';
DELETE FROM songs WHERE id = 'pisniua_222961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_222961','Літа минають','Музика: Дмитро Циганков Слова: Дмитро Циганков. Виконує: Андрій Хавунка, Зірка Колос','uk','ukraine_1991',NULL,NULL,NULL,'Пісня дуже популярна у нас. Для всіх зустрічей однокласників і просто для старших віком, але не душею людей','Літа минають, літа минають
І їх ніяк не зупинить,
А думка тає, нам серце крає,
Нам серце крає (2) кожну мить.

Були ми гожі, як в травні рожі,
Були уста, як маків цвіт,
Було кохання, було зітхання,
Було і нам (2) сімнадцять літ.

Літа минають, літа минають
І час нам скроні посрібнив
І не забути, і не вернути,
Усіх кого (2) колись любив.

І в юнь, і в старість життя нам в радість,
Бо кожен день живем з надій.
І в 30 років, і в 40 років,
І в 50 (2) ми мололоді','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_222961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_222961','Літа минають','Літа минають, літа минають
І їх ніяк не зупинить,
А думка тає, нам серце крає,
Нам серце крає (2) кожну мить.

Були ми гожі, як в травні рожі,
Були уста, як маків цвіт,
Було кохання, було зітхання,
Було і нам (2) сімнадцять літ.

Літа минають, літа минають
І час нам скроні посрібнив
І не забути, і не вернути,
Усіх кого (2) колись любив.

І в юнь, і в старість життя нам в радість,
Бо кожен день живем з надій.
І в 30 років, і в 40 років,
І в 50 (2) ми мололоді');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_222961_l1','pisniua_222961','YouTube','https://www.youtube.com/watch?v=cn2hi1DWTxw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_222961_l2','pisniua_222961','YouTube','https://www.youtube.com/watch?v=l14-HobPV88','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2231226';
DELETE FROM song_versions WHERE song_id = 'pisniua_2231226';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2231226';
DELETE FROM songs WHERE id = 'pisniua_2231226';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2231226','Білий Ангел Славутича','Музика: Є. Досенко Слова: Олександр Вратарьов. Виконує: Дзвони Сонця, хор','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Доля нас тут разом звела,
Воля неба на те була,
Опустила свої два крила.
Місто Білого Ангела
Тут судилося звести нам,
Місто дружби і святої краси,
Наче храм.

Приспів:
Білий Ангел Славутича -
Символ світлого дня!
Білий Ангел Славутича,
Ти - надія моя!
Будуть весни квітучими,
Біль забуде земля!
Білий Ангел Славутича,
Ти - надія моя!

Ллється з неба блакитний цвіт,
Нам надію віщує він.
Подивись на криштальний
І зоряний світ.
Назавжди у Дніпра весна,
Як любові зоря ясна.
Білий Ангел розкрив
Назавжди два крила!

Приспів.

О, земле рідна,
Надія ти моя,
Одна-єдина на все моє життя.
Ти, Україно, на все моє життя!
Ти, Україно, на все моє життя!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2231226'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2231226','Білий Ангел Славутича','Доля нас тут разом звела,
Воля неба на те була,
Опустила свої два крила.
Місто Білого Ангела
Тут судилося звести нам,
Місто дружби і святої краси,
Наче храм.

Приспів:
Білий Ангел Славутича -
Символ світлого дня!
Білий Ангел Славутича,
Ти - надія моя!
Будуть весни квітучими,
Біль забуде земля!
Білий Ангел Славутича,
Ти - надія моя!

Ллється з неба блакитний цвіт,
Нам надію віщує він.
Подивись на криштальний
І зоряний світ.
Назавжди у Дніпра весна,
Як любові зоря ясна.
Білий Ангел розкрив
Назавжди два крила!

Приспів.

О, земле рідна,
Надія ти моя,
Одна-єдина на все моє життя.
Ти, Україно, на все моє життя!
Ти, Україно, на все моє життя!');
DELETE FROM song_links WHERE song_id = 'pisniua_2231522';
DELETE FROM song_versions WHERE song_id = 'pisniua_2231522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2231522';
DELETE FROM songs WHERE id = 'pisniua_2231522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2231522','А брат сестру за стіл веде','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1989','"Пісні Тернопільщини", Пісенник, Вип.1., Київ: Муз. Україна, 1989.','Опівночі молода у себе дома, а молодий, у себе (якщо весілля спільне в одній хаті, то разом) сідають за стіл з дружбами й дружками, а родина і гості підходять до них і приносять у дар гроші чи (рідше) подарунки. Цей елемент весілля у різних селах мав і свої місцеві назви, як от: дарованє, перепій, посад, сидіти на посазі тощо. Джерело: П. Медведик. 1978. Біла Тернопільського р-ну. Гуртовий спів старших жінок. Мелодію розшифрував Л. Кушлик. Львівська консерваторія, № 2761. 199. Пісні Тернопільщини: Календарно-обрядова та родинно-побутова лірика: Пісенник. Вип.1. / Упоряд.: С.І.Стельмащук, П.К.Медведик. Вступ. ст. П.Медведика. — К.: Муз. Україна, 1989.','А брат сестру за стіл веде,
Милий Боже.
Веде, веде, виводжає,
Милий Боже.

Веде, веде, виводжає,
Милий Боже,
Веде, веде, виводжає,
Милий Боже.

Виводжає, научає,
Милий Боже.
Виводжає, научає,
Милий Боже.','[''pisni.org.ua'', ''cat:narodni'', ''cat:vesilni'', ''Народні пісні'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2231522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2231522','А брат сестру за стіл веде','А брат сестру за стіл веде,
Милий Боже.
Веде, веде, виводжає,
Милий Боже.

Веде, веде, виводжає,
Милий Боже,
Веде, веде, виводжає,
Милий Боже.

Виводжає, научає,
Милий Боже.
Виводжає, научає,
Милий Боже.');
DELETE FROM song_links WHERE song_id = 'pisniua_2229797';
DELETE FROM song_versions WHERE song_id = 'pisniua_2229797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2229797';
DELETE FROM songs WHERE id = 'pisniua_2229797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2229797','Ой, якби я була знала','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1974','"Пісні Тернопільщини". Пісенник. - Вип.1. - Київ: Муз. Україна, 1989.','Джерело: Є. Стефурак. 1974. Жуків Бережанського р-ну. Від Ганни Дуди (1949, 10 кл.). 159. Пісні Тернопільщини: Календарно-обрядова та родинно-побутова лірика: Пісенник. Вип. 1. / Упоряд.: С.І. Стельмащук, П.К. Медведик. Вступ. ст. П. Медведика. — К.: Муз. Україна, 1989.','Ой, якби я була знала,
Що піду від мами,
Була би я не садила
Рожі під вікнами.

А була би посадила
Три городи рути.
А я свої мамусеньки
Не можу забути.

А в неділю ранесенько
Синє море грає.
Два братчики-голубчики
Косу розплітають.

А ви руту покосіте,
Калину зламайте,
А ви мене, молодої,
Заміж не давайте.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2229797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2229797','Ой, якби я була знала','Ой, якби я була знала,
Що піду від мами,
Була би я не садила
Рожі під вікнами.

А була би посадила
Три городи рути.
А я свої мамусеньки
Не можу забути.

А в неділю ранесенько
Синє море грає.
Два братчики-голубчики
Косу розплітають.

А ви руту покосіте,
Калину зламайте,
А ви мене, молодої,
Заміж не давайте.');
DELETE FROM song_links WHERE song_id = 'pisniua_2230919';
DELETE FROM song_versions WHERE song_id = 'pisniua_2230919';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2230919';
DELETE FROM songs WHERE id = 'pisniua_2230919';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2230919','Зеленеє жито, зелене','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1976','"Пісні Тернопільщини". Пісенник. - Вип.1. - Київ: Муз. Україна, 1989.','Джерело: Ю. Горошко. 1976. Передмірка Ланівецького р-ну. Від Теклі Барви (1909, неписьменна). Мелодію розшифрував В. Подуфалий. 187. Пісні Тернопільщини: Календарно-обрядова та родинно-побутова лірика: Пісенник. Вип. 1. / Упоряд.: С.І. Стельмащук, П.К. Медведик. Вступ. ст. П. Медведика. — К.: Муз. Україна, 1989.','Зеленеє жито, зелене,
Хорошії гості у мене.
Зеленеє жито за селом,
Хорошії гості за столом.

Зеленеє жито — півосока,
Хорошії гості здалека.
Зеленеє жито на ланах,
Хорошії гості на лавах.

Зеленеє жито треба жать,
Хорошії гості треба вгощать.
Зеленеє жито женці жнуть,
Хорошії гості вино п''ють.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2230919'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2230919','Зеленеє жито, зелене','Зеленеє жито, зелене,
Хорошії гості у мене.
Зеленеє жито за селом,
Хорошії гості за столом.

Зеленеє жито — півосока,
Хорошії гості здалека.
Зеленеє жито на ланах,
Хорошії гості на лавах.

Зеленеє жито треба жать,
Хорошії гості треба вгощать.
Зеленеє жито женці жнуть,
Хорошії гості вино п''ють.');
DELETE FROM song_links WHERE song_id = 'pisniua_223010';
DELETE FROM song_versions WHERE song_id = 'pisniua_223010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_223010';
DELETE FROM songs WHERE id = 'pisniua_223010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_223010','Козаче, я тобі не вірю','Українська народна пісня. Виконує: Оксана Білозір, Віктор Морозов','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','* частіше пісня зустрічається без двох останніх куплетів, їх походження невідоме','Козаче, козаче, я тобі не вірю,
Зламав їсь калину, на моїм подвір''ю. | (2)
Зламав їсь калину гіляву, гіляву,
Зрадив їсь дівчину біляву, біляву.   | (2)
Я її не зрадив, сама ся зрадила,
Я коня виводив, вона виходила.       | (2)
Я вів коня пасти, на росу, на росу,
Вона виходила - на босу, на босу.    | (2)
Я коня виводив, коня вороного,
Вона виносила вина червоного.        | (2)
Я коня виводив, дівчині говорив,
Сідай же, милая, будеш навік моя.    | (2)
Я скочив на коня, мила й собі сіла,
І ми поїхали в темну ніч гуляти.     | (2)','[''pisni.org.ua'', ''cat:dances'', ''cat:waltzes'', ''Пісні до танцю'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_223010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_223010','Козаче, я тобі не вірю','Козаче, козаче, я тобі не вірю,
Зламав їсь калину, на моїм подвір''ю. | (2)
Зламав їсь калину гіляву, гіляву,
Зрадив їсь дівчину біляву, біляву.   | (2)
Я її не зрадив, сама ся зрадила,
Я коня виводив, вона виходила.       | (2)
Я вів коня пасти, на росу, на росу,
Вона виходила - на босу, на босу.    | (2)
Я коня виводив, коня вороного,
Вона виносила вина червоного.        | (2)
Я коня виводив, дівчині говорив,
Сідай же, милая, будеш навік моя.    | (2)
Я скочив на коня, мила й собі сіла,
І ми поїхали в темну ніч гуляти.     | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_223010_l1','pisniua_223010','YouTube','https://www.youtube.com/watch?v=_8_d8KYVyQc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_223010_l2','pisniua_223010','YouTube','https://www.youtube.com/watch?v=sVxelZx2GHk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_223010_l3','pisniua_223010','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2230192';
DELETE FROM song_versions WHERE song_id = 'pisniua_2230192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2230192';
DELETE FROM songs WHERE id = 'pisniua_2230192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2230192','Таксі','Музика: Аркадій Укупнік Слова: Юрій Рибчинський. Виконує: Лоліта','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Тобі скажу сьогодні все,
Що ти такий, як всі,
І вийду мовчки на шосе,
І зупиню таксі,
Таксі зневірених сердець,
Нічної самоти,
Таксі в якому дощ іде,
Завжди, завжди, завжди...

Приспів:
Кудись я їду і мовчу,
І плачу, плачу, плачу...
Це я сама собі плачу
Сльозами за невдачу,
Нічний водій мене спасе,
Скажу йому - "мерсі",
Кому в коханні не везе,
Того везе таксі...
Нічний водій мене спасе,
Скажу йому - "мерсі",
Кому в коханні не везе,
Того везе таксі...

Крізь темну ніч,
В майбутній день,
Летить, як тінь біди.
Таксі, в якому дощ іде,
Завжди, завжди, завжди,
Сама не знаючи куди,
На захід, чи на схід,
В таксі я їду без мети,
Багато зим і літ...

Приспів. (3)','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2230192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2230192','Таксі','Тобі скажу сьогодні все,
Що ти такий, як всі,
І вийду мовчки на шосе,
І зупиню таксі,
Таксі зневірених сердець,
Нічної самоти,
Таксі в якому дощ іде,
Завжди, завжди, завжди...

Приспів:
Кудись я їду і мовчу,
І плачу, плачу, плачу...
Це я сама собі плачу
Сльозами за невдачу,
Нічний водій мене спасе,
Скажу йому - "мерсі",
Кому в коханні не везе,
Того везе таксі...
Нічний водій мене спасе,
Скажу йому - "мерсі",
Кому в коханні не везе,
Того везе таксі...

Крізь темну ніч,
В майбутній день,
Летить, як тінь біди.
Таксі, в якому дощ іде,
Завжди, завжди, завжди,
Сама не знаючи куди,
На захід, чи на схід,
В таксі я їду без мети,
Багато зим і літ...

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2230192_l1','pisniua_2230192','YouTube','https://www.youtube.com/watch?v=sJWK_KgKUQE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_223022';
DELETE FROM song_versions WHERE song_id = 'pisniua_223022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_223022';
DELETE FROM songs WHERE id = 'pisniua_223022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_223022','Зелене листя, білі каштани *','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Зелене листя, білі каштани...    | (3)
Ой як то сумно, як вечір настане.

Ой як то сумно, як  то нудно:    | (3)
Любив дівчину - забути трудно.

Любив дівчину півтори року,      | (3)
Аж ся дізнали вороги збоку.

Як ся дізнали - розщебетали,     | (3)
Бодай же вони щастя не знали.

Від Бога щастя, від людей слави... | (3)
Ми ся любили - нас розлучили.','[''pisni.org.ua'', ''cat:dances'', ''cat:waltzes'', ''Пісні до танцю'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_223022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_223022','Зелене листя, білі каштани *','Зелене листя, білі каштани...    | (3)
Ой як то сумно, як вечір настане.

Ой як то сумно, як  то нудно:    | (3)
Любив дівчину - забути трудно.

Любив дівчину півтори року,      | (3)
Аж ся дізнали вороги збоку.

Як ся дізнали - розщебетали,     | (3)
Бодай же вони щастя не знали.

Від Бога щастя, від людей слави... | (3)
Ми ся любили - нас розлучили.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_223022_l1','pisniua_223022','YouTube','https://www.youtube.com/watch?v=_eXRtaec0Rk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_223022_l2','pisniua_223022','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2233495';
DELETE FROM song_versions WHERE song_id = 'pisniua_2233495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2233495';
DELETE FROM songs WHERE id = 'pisniua_2233495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2233495','Футбольний гімн','Музика: Сергій Руденко Слова: Сергій Руденко. Виконує: Сергій Руденко','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Слухай, мій друже,
Слухай, мій брате,
Серце гаряче своє!
Серце співає
Пісню про свято,
Свято в якому є

Приспів:
Найкраща в світі гра - футбол,
Де буде пас і буде гол!
Всім серцем прагни до мети
І чемпіоном станеш ти!

Над стадіоном
Гордо й завзято
Жовто-блакитний  стяг.
Бачиш, мій друже,
Бачиш, мій брате,
До перемоги шлях.

Приспів.

Руку - на серце!
Руку - у небо!
Віримо в Бога -
Віримо в себе!
Ми не зрадимо ніколи
Українського футболу!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2233495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2233495','Футбольний гімн','Слухай, мій друже,
Слухай, мій брате,
Серце гаряче своє!
Серце співає
Пісню про свято,
Свято в якому є

Приспів:
Найкраща в світі гра - футбол,
Де буде пас і буде гол!
Всім серцем прагни до мети
І чемпіоном станеш ти!

Над стадіоном
Гордо й завзято
Жовто-блакитний  стяг.
Бачиш, мій друже,
Бачиш, мій брате,
До перемоги шлях.

Приспів.

Руку - на серце!
Руку - у небо!
Віримо в Бога -
Віримо в себе!
Ми не зрадимо ніколи
Українського футболу!');
DELETE FROM song_links WHERE song_id = 'pisniua_2230920';
DELETE FROM song_versions WHERE song_id = 'pisniua_2230920';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2230920';
DELETE FROM songs WHERE id = 'pisniua_2230920';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2230920','Гості мої','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1977','"Пісні Тернопільщини". Пісенник. - Вип.1. -Київ: Муз. Україна, 1989.','Джерело: Є. Стефурак. 1977. Трубчин Борщівського р-ну. Від Петра Олійника (1926, 5 кл.). 188. Пісні Тернопільщини: Календарно-обрядова та родинно-побутова лірика: Пісенник. Вип. 1. / Упоряд.: С.І. Стельмащук, П.К. Медведик. Вступ. ст. П. Медведика. — К.: Муз. Україна, 1989.','Гості мої, гості мої,
Чим же вас вгощати?
Піду, піду в вишневий сад  |
Горобчика спіймати.        | (2)

Горобчику мій маленький,
Як тебе спіймати?
Горобейку мій маленький,   |
Як тебе розправляти?       | (2)

Із реберець — та студинець,
Із голови — печеня.
То був обід, полуденок,    |
Ще и буде вечеря.          | (2)

Пийте, гості, їжте, гості,
Прошу, запивайте!
Чого нема на цім столі,    |
Прошу, вибачайте!          | (2)','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2230920'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2230920','Гості мої','Гості мої, гості мої,
Чим же вас вгощати?
Піду, піду в вишневий сад  |
Горобчика спіймати.        | (2)

Горобчику мій маленький,
Як тебе спіймати?
Горобейку мій маленький,   |
Як тебе розправляти?       | (2)

Із реберець — та студинець,
Із голови — печеня.
То був обід, полуденок,    |
Ще и буде вечеря.          | (2)

Пийте, гості, їжте, гості,
Прошу, запивайте!
Чого нема на цім столі,    |
Прошу, вибачайте!          | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2233267';
DELETE FROM song_versions WHERE song_id = 'pisniua_2233267';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2233267';
DELETE FROM songs WHERE id = 'pisniua_2233267';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2233267','Різдвяна ніч','Українська народна пісня. Виконує: Діана Глухова','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Різдвяна ніч, яскраві зорі,
Навколо Божа благодать,
Скрізь голосів веселі хори,
Вертепи йдуть колядувать!

Несуть, як найсвітлішу мрію,
Блаженну Вифлеємську вість
Про немовля і про Марію,
Спаситель людства народивсь!

Вже на столі стоїть вечеря,
Господар хліб благословля,
Родина збуджена й весела
Христове вславлює ім''я!

Скрізь радість у серцях і мріях,
Різдвяна ніч до нас прийшла,
Проникливе "Аве Марія"
В душі піднесено луна!

Аве Марія!','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2233267'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2233267','Різдвяна ніч','Різдвяна ніч, яскраві зорі,
Навколо Божа благодать,
Скрізь голосів веселі хори,
Вертепи йдуть колядувать!

Несуть, як найсвітлішу мрію,
Блаженну Вифлеємську вість
Про немовля і про Марію,
Спаситель людства народивсь!

Вже на столі стоїть вечеря,
Господар хліб благословля,
Родина збуджена й весела
Христове вславлює ім''я!

Скрізь радість у серцях і мріях,
Різдвяна ніч до нас прийшла,
Проникливе "Аве Марія"
В душі піднесено луна!

Аве Марія!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2233267_l1','pisniua_2233267','YouTube','https://www.youtube.com/watch?v=3GI_8g_3wII','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_22328';
DELETE FROM song_versions WHERE song_id = 'pisniua_22328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_22328';
DELETE FROM songs WHERE id = 'pisniua_22328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_22328','Боже, Ти Бог мій',NULL,'uk','ukraine_1991',NULL,NULL,'Співаник для таборів Марійської Дружини.',NULL,'Боже, Ти Бог мій, Тебе шукаю пильно,
Тебе душа моя прагне.
Боже, почуй мої благання і молитву
І дай душі моїй спокій.
Тоді душа моя насититься любов''ю
І зродиться у ній життя.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_22328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_22328','Боже, Ти Бог мій','Боже, Ти Бог мій, Тебе шукаю пильно,
Тебе душа моя прагне.
Боже, почуй мої благання і молитву
І дай душі моїй спокій.
Тоді душа моя насититься любов''ю
І зродиться у ній життя.');
DELETE FROM song_links WHERE song_id = 'pisniua_2232818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2232818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2232818';
DELETE FROM songs WHERE id = 'pisniua_2232818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2232818','Новорічна пісня','Українська народна пісня. Виконує: Назарій Яремчук','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Час, б''є у дзвони час -
Рік старий для нас
За вікном погас.
Вже з нами віч-на-віч
Стала в сяйві свіч
Новорічна ніч.

Приспів:
З новим Роком!
З новим щастям! -
Щедрує нам нова пора,
Щоб цвіт ясний          |
Зацвів рясно -          |
Засіймося зерном добра! | (2)

Хай ця святкова мить
Болем не болить,
Щастям защемить!
Хай п''ється, мов нектар,
Як любові дар
Поцілунків чар.

Приспів. (3)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2232818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2232818','Новорічна пісня','Час, б''є у дзвони час -
Рік старий для нас
За вікном погас.
Вже з нами віч-на-віч
Стала в сяйві свіч
Новорічна ніч.

Приспів:
З новим Роком!
З новим щастям! -
Щедрує нам нова пора,
Щоб цвіт ясний          |
Зацвів рясно -          |
Засіймося зерном добра! | (2)

Хай ця святкова мить
Болем не болить,
Щастям защемить!
Хай п''ється, мов нектар,
Як любові дар
Поцілунків чар.

Приспів. (3)');
DELETE FROM song_links WHERE song_id = 'pisniua_2234012';
DELETE FROM song_versions WHERE song_id = 'pisniua_2234012';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2234012';
DELETE FROM songs WHERE id = 'pisniua_2234012';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2234012','Бабусина ікона','Музика: Ігор Корнілевич Слова: Анатолій Матвійчук','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Бабуся твердила молитву,
Просила Бога, як могла,
Жахлива громадянська битва
У неї мужа відняла.
Бабуся заклинала Бога
У тридцять третьому, тоді,
Коли від голоду страшного
Брати померли молоді.

Приспів:
Давно бабусі вже немає,
Я запізнилась назавжди...
Стара ікона дотліває,
Мовчать загублені світи.

Вона ридала за синами:
"Господь, хоч їх оборони!"
Сини розтали за димами -
Не повернулися з війни.
Старенька нила від розлуки,
А очі плакать не могли,
Коли, як ворога, онука
У чорнім "вороні" везли.

Приспів.

А я молитимусь до скону,
Щоб не вертались ті літа,
Бо сумно дивиться з ікони
Моя стражденниця свята...','[''pisni.org.ua'', ''cat:istorychni'', ''cat:pro-ditey'', ''Історичні пісні'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2234012'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2234012','Бабусина ікона','Бабуся твердила молитву,
Просила Бога, як могла,
Жахлива громадянська битва
У неї мужа відняла.
Бабуся заклинала Бога
У тридцять третьому, тоді,
Коли від голоду страшного
Брати померли молоді.

Приспів:
Давно бабусі вже немає,
Я запізнилась назавжди...
Стара ікона дотліває,
Мовчать загублені світи.

Вона ридала за синами:
"Господь, хоч їх оборони!"
Сини розтали за димами -
Не повернулися з війни.
Старенька нила від розлуки,
А очі плакать не могли,
Коли, як ворога, онука
У чорнім "вороні" везли.

Приспів.

А я молитимусь до скону,
Щоб не вертались ті літа,
Бо сумно дивиться з ікони
Моя стражденниця свята...');
DELETE FROM song_links WHERE song_id = 'pisniua_2234212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2234212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2234212';
DELETE FROM songs WHERE id = 'pisniua_2234212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2234212','Коляд, Коляд, Колядниця','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Т.А. Пархоменко — Газета "Акцент" / © Засновник і видавець: ТОВ "Медія- Майстер", Черкаси, 2001.','Українська народна творчість, українська пісенність, художній світ.','Відміна 1:
Коляд, коляд, колядниця,
Добра з медом паляниця.
А без меда не така,
Дайте, тітко, п''ятака.
А п''ятак не такий,
Дайте гривню золоту.
А в гривні дві дірочки,
Налийте ще й горілочки.
А горілки я не п''ю,
То дайте щось,
Я вже й піду.

Відміна 2:
Коляд, коляд, колядниця,
Добра з медом паляниця,
Й а без меду не така,
Дайте, дядьку, п''ятака.
Одчиняйте скриньку
Та давайте сливку,
Одчиняйте сундучок
Та давайте п''ятачок.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyadky'', ''cat:narodni'', ''cat:shchedrivky'', ''Дитячі пісні'', ''Колядки'', ''Народні пісні'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2234212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2234212','Коляд, Коляд, Колядниця','Відміна 1:
Коляд, коляд, колядниця,
Добра з медом паляниця.
А без меда не така,
Дайте, тітко, п''ятака.
А п''ятак не такий,
Дайте гривню золоту.
А в гривні дві дірочки,
Налийте ще й горілочки.
А горілки я не п''ю,
То дайте щось,
Я вже й піду.

Відміна 2:
Коляд, коляд, колядниця,
Добра з медом паляниця,
Й а без меду не така,
Дайте, дядьку, п''ятака.
Одчиняйте скриньку
Та давайте сливку,
Одчиняйте сундучок
Та давайте п''ятачок.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2234212_l1','pisniua_2234212','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2230175';
DELETE FROM song_versions WHERE song_id = 'pisniua_2230175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2230175';
DELETE FROM songs WHERE id = 'pisniua_2230175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2230175','Уже чумак дочумакувався','Українська народна пісня. Виконує: Микола Частій','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Уже чумак дочумакувався,
Пропив воли та й у боки взявся.
Ой, ти, чумаче-голубче,
Чом ти не робиш як лучче?

Ой, куди ти, чумаче, мандруєш?
Кому мене, серденько, даруєш?
Ой, ти, чумаче-голубче,
Чом ти не робиш як лучче?

Люди ідуть у поле орати,
Ми з тобою у корчмі гуляти.
Ой, ти, чумаче-голубче,
Чом ти не робиш як лучче?

Та вже люди в полі поорали,
Ми з тобою у корчмі гуляли.
Ой, ти, чумаче-голубче,
Чом ти не робиш як лучче?

Уже люди возять і мішками,
Ми з тобою, серденько, пішками.
Ой, ти, чумаче-голубче,
Чом ти не робиш як лучче?
Ой, ти, чумаче-голубче,
Чом ти не робиш як лучче?','[''pisni.org.ua'', ''cat:chumacki'', ''Чумацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2230175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2230175','Уже чумак дочумакувався','Уже чумак дочумакувався,
Пропив воли та й у боки взявся.
Ой, ти, чумаче-голубче,
Чом ти не робиш як лучче?

Ой, куди ти, чумаче, мандруєш?
Кому мене, серденько, даруєш?
Ой, ти, чумаче-голубче,
Чом ти не робиш як лучче?

Люди ідуть у поле орати,
Ми з тобою у корчмі гуляти.
Ой, ти, чумаче-голубче,
Чом ти не робиш як лучче?

Та вже люди в полі поорали,
Ми з тобою у корчмі гуляли.
Ой, ти, чумаче-голубче,
Чом ти не робиш як лучче?

Уже люди возять і мішками,
Ми з тобою, серденько, пішками.
Ой, ти, чумаче-голубче,
Чом ти не робиш як лучче?
Ой, ти, чумаче-голубче,
Чом ти не робиш як лучче?');
DELETE FROM song_links WHERE song_id = 'pisniua_2233313';
DELETE FROM song_versions WHERE song_id = 'pisniua_2233313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2233313';
DELETE FROM songs WHERE id = 'pisniua_2233313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2233313','Час любити','(Великодні дзвони). Музика: Володимир Шинкарук Слова: Володимир Шинкарук. Виконує: Ірина Шинкарук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Як добірне зерно
Повною мірою
Проростає добро
Вірою, вірою,
Проростає добро,
Золотом зблискує,
Як в душі джерело
Чистеє, чистеє.

Приспів:
Час любити, час прощати,       |
Час збирати розкидане каміння! |
Одягла земля весняні шати,     |
Великодні дзвони -             |
Свято Воскресіння!             | (2)

День летить у блакить,
Щоб вогонь не погас,
Хай любов освятить
Душу кожного з нас!
Світла й радісна мить,
Сонце над кронами,
А Великдень -
Дзвонами, дзвонами!

Приспів. (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:voskresni'', ''Церковні пісні'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2233313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2233313','Час любити','Як добірне зерно
Повною мірою
Проростає добро
Вірою, вірою,
Проростає добро,
Золотом зблискує,
Як в душі джерело
Чистеє, чистеє.

Приспів:
Час любити, час прощати,       |
Час збирати розкидане каміння! |
Одягла земля весняні шати,     |
Великодні дзвони -             |
Свято Воскресіння!             | (2)

День летить у блакить,
Щоб вогонь не погас,
Хай любов освятить
Душу кожного з нас!
Світла й радісна мить,
Сонце над кронами,
А Великдень -
Дзвонами, дзвонами!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2233313_l1','pisniua_2233313','YouTube','https://www.youtube.com/watch?v=_0m9xo1MKyU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2234091';
DELETE FROM song_versions WHERE song_id = 'pisniua_2234091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2234091';
DELETE FROM songs WHERE id = 'pisniua_2234091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2234091','Новий рік','Музика: Василь Марцинюк. Виконує: Василь Марцинюк','uk','ukraine_1991',NULL,NULL,'надав Василь Марцинюк',NULL,'В новорічну тиху нічку
Чути як мороз скрипить -
Наче в казці мелодійно,
Музика звучить.
Заіскрився в небі місяць,
Ясно світить з висоти,
В новорічну казку просить,
Там, де я і ти!

Приспів:
Новий рік несе нам щастя
І добро несе!
Хай усі кругом співають
І радіє все!
За здоров''я щастя й долю
Вип''ємо до дна!
Побажаємо любові і добра!

Заспіваймо дружно пісню
В цей казковий час.
Всі пісні та побажання
Будуть лиш для вас.
В новорічну казку нині
Вірим щиро всі.
Хай щасливі будуть наші
Новорічні дні!

Приспів. (2)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2234091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2234091','Новий рік','В новорічну тиху нічку
Чути як мороз скрипить -
Наче в казці мелодійно,
Музика звучить.
Заіскрився в небі місяць,
Ясно світить з висоти,
В новорічну казку просить,
Там, де я і ти!

Приспів:
Новий рік несе нам щастя
І добро несе!
Хай усі кругом співають
І радіє все!
За здоров''я щастя й долю
Вип''ємо до дна!
Побажаємо любові і добра!

Заспіваймо дружно пісню
В цей казковий час.
Всі пісні та побажання
Будуть лиш для вас.
В новорічну казку нині
Вірим щиро всі.
Хай щасливі будуть наші
Новорічні дні!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2234379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2234379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2234379';
DELETE FROM songs WHERE id = 'pisniua_2234379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2234379','У надії Божа Мати','Українська народна пісня. Виконує: Театр пісні Джерела, театр пісні','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'У надії Божа Мати
Не мала де Сина мати,
У тій стайні, де ягнята,
Там була для неї хата.
Цілий вік свій мандрувала,
Бо життя ніде не мала...
Кругом невіри ганяли,
Малих діток убивали.

Слава рожденному,
В бідних яслах вложеному!

В земних Господа печалях
Святе Дитя виховали
Старий Йосип і Марія -
Людей-грішників надія!

Слава рожденному,
В бідних яслах вложеному!
Слава рожденному,
В бідних яслах вложеному!

І до нього всі звернімось,
Христу Богу поклонімось,
Христу Богу поклонімось!','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2234379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2234379','У надії Божа Мати','У надії Божа Мати
Не мала де Сина мати,
У тій стайні, де ягнята,
Там була для неї хата.
Цілий вік свій мандрувала,
Бо життя ніде не мала...
Кругом невіри ганяли,
Малих діток убивали.

Слава рожденному,
В бідних яслах вложеному!

В земних Господа печалях
Святе Дитя виховали
Старий Йосип і Марія -
Людей-грішників надія!

Слава рожденному,
В бідних яслах вложеному!
Слава рожденному,
В бідних яслах вложеному!

І до нього всі звернімось,
Христу Богу поклонімось,
Христу Богу поклонімось!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2234379_l1','pisniua_2234379','YouTube','https://www.youtube.com/watch?v=HEZf9l6geiE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2234952';
DELETE FROM song_versions WHERE song_id = 'pisniua_2234952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2234952';
DELETE FROM songs WHERE id = 'pisniua_2234952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2234952','Пісня про героя Крут','Музика: Тарас Питлик Слова: Тарас Питлик. Виконує: Тарас Питлик','uk','ukr_ssr_1919_1991',NULL,NULL,'авторське подання',NULL,'Ні, все ж тебе не замело
В снігах крутянських забуттям!
Ти повернувся у село,
Героєм в ріднеє село
На зло убивцям і смертям!

І нас запитуєш щодня
Тривогою сумних очей:
Чи ви готові, як і я,
Життя віддати у боях
Щоб край закрити від смертей!?!

Бо орди хижі знов дзвенять
Мечем підступності й брехні.
Тож станьте всі в могучу рать,
Як юні ми, в єдину рать,
Щоб захистити край в борні!','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2234952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2234952','Пісня про героя Крут','Ні, все ж тебе не замело
В снігах крутянських забуттям!
Ти повернувся у село,
Героєм в ріднеє село
На зло убивцям і смертям!

І нас запитуєш щодня
Тривогою сумних очей:
Чи ви готові, як і я,
Життя віддати у боях
Щоб край закрити від смертей!?!

Бо орди хижі знов дзвенять
Мечем підступності й брехні.
Тож станьте всі в могучу рать,
Як юні ми, в єдину рать,
Щоб захистити край в борні!');
DELETE FROM song_links WHERE song_id = 'pisniua_2233756';
DELETE FROM song_versions WHERE song_id = 'pisniua_2233756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2233756';
DELETE FROM songs WHERE id = 'pisniua_2233756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2233756','Ой, дивноє народження','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Записано в с. Дуліби Стрийського району','Місцеві жителі називають її Дулібською колядкою','Ой, дивноє народження
Божого Сина,
Що Його в цей день
Та й породила
Діва Марія.

Просим Тебе, Йсусе Христе,
Хоч нужда давить нас,
Хай з Різдвом Твоїм,
Торжеством святим
Воля і мир прийде!

Заспіваймо: "Христос родивсь!" -
Ми вірні всі гуртом.
За море цю вість понесе Дніпро,
Що нині в нас Різдво!','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2233756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2233756','Ой, дивноє народження','Ой, дивноє народження
Божого Сина,
Що Його в цей день
Та й породила
Діва Марія.

Просим Тебе, Йсусе Христе,
Хоч нужда давить нас,
Хай з Різдвом Твоїм,
Торжеством святим
Воля і мир прийде!

Заспіваймо: "Христос родивсь!" -
Ми вірні всі гуртом.
За море цю вість понесе Дніпро,
Що нині в нас Різдво!');
DELETE FROM song_links WHERE song_id = 'pisniua_2235818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2235818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2235818';
DELETE FROM songs WHERE id = 'pisniua_2235818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2235818','Наїхали козаченьки з бою','Українська народна пісня. Виконує: Черкаський народний хор','uk','ukraine_before_1917',NULL,NULL,'Аудіозапис','Козацька пісня. Пісня запорізьких та чорноморських козаків. Козацьке минуле України. Пісні з Наддніпрянщини та степової України.','Наїхали козаченьки з бою,
Та й шукали кватири - спокою.
Приспів:
Думай, думку думала,
Думай, думку думала,
Думай, думку думала.
Зайшли вони до одної хати:
Добрий вечір, старенькая мати!
Приспів.
Добрий вечір, старенькая мати!
Ми б хотіли в Вас заночувати.
Приспів.
А де ж Ваша найстаршая дочка?
А де ж Ваша найстаршая дочка?
Приспів.
Нема, нема - аж три версти в полі,
Нема, нема - аж три версти в полі.
Приспів.
Правда, правда,
Ми її зустріли.
Приспів.
Ми ж думали, що то - муравиця,
А то в неї - зелена спідниця.
Приспів.
Через тую зелену спідницю,
Загубив я шаблю і рушницю.
Приспів.
Думай, думку думала.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2235818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2235818','Наїхали козаченьки з бою','Наїхали козаченьки з бою,
Та й шукали кватири - спокою.
Приспів:
Думай, думку думала,
Думай, думку думала,
Думай, думку думала.
Зайшли вони до одної хати:
Добрий вечір, старенькая мати!
Приспів.
Добрий вечір, старенькая мати!
Ми б хотіли в Вас заночувати.
Приспів.
А де ж Ваша найстаршая дочка?
А де ж Ваша найстаршая дочка?
Приспів.
Нема, нема - аж три версти в полі,
Нема, нема - аж три версти в полі.
Приспів.
Правда, правда,
Ми її зустріли.
Приспів.
Ми ж думали, що то - муравиця,
А то в неї - зелена спідниця.
Приспів.
Через тую зелену спідницю,
Загубив я шаблю і рушницю.
Приспів.
Думай, думку думала.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2235818_l1','pisniua_2235818','YouTube','https://www.youtube.com/watch?v=LmIJKVFf_vo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2235818_l2','pisniua_2235818','YouTube','https://www.youtube.com/watch?v=D4EJJzol68U','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2234614';
DELETE FROM song_versions WHERE song_id = 'pisniua_2234614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2234614';
DELETE FROM songs WHERE id = 'pisniua_2234614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2234614','Мам','Музика: Андрій Кузьменко Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,'аудіозапис','...це лише моя спроба.., не судіть строго...:)','Програш(можливий варіант):Am, G, F, C, E,

Я завжди мріяв написати пісню про маму,
Але різні поети всі слова вже сказали.
І я не хотів повторити когось із них.
Я біля свої мами буду завжди маленьким
І, як тільки покличе, прибіжу скоренько,
Тому я їй і написав ці слова як міг.

Приспів:
Am
Мам,
Ти мене вибач шо я став дорослий
І вже минула двадцять третя осінь,
Як я побачив перший раз свій дім.

Мам,

А можна я до тебе завтра приїду
І ми на кухні не одну годину
Собі на різні теми "посидим"?

Я може трохи пізно став її розуміти
І не часто дарував на день народження квіти.
І були часи, коли я тижнями їй не дзвонив.
І кожен раз, коли вона мене обіймає
І разом із татком все про внучку питає -
Я з радості плачу, що маю живих батьків.

Приспів.

Я дуже дякую тобі за то, шо я вмію
І дякую тобі за то, шо я розумів
Ті речі, яких не пояснюють навіть в книжках.
Хай буде біля тебе завжди ангел-хранитель
І я десь тут поряд буду також бродити,
Шоб не міряти наше життя в телефонних дзвінках.

Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''cat:pro-batkiv'', ''Філософські пісні'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2234614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2234614','Мам','Програш(можливий варіант):Am, G, F, C, E,

Я завжди мріяв написати пісню про маму,
Але різні поети всі слова вже сказали.
І я не хотів повторити когось із них.
Я біля свої мами буду завжди маленьким
І, як тільки покличе, прибіжу скоренько,
Тому я їй і написав ці слова як міг.

Приспів:
Am
Мам,
Ти мене вибач шо я став дорослий
І вже минула двадцять третя осінь,
Як я побачив перший раз свій дім.

Мам,

А можна я до тебе завтра приїду
І ми на кухні не одну годину
Собі на різні теми "посидим"?

Я може трохи пізно став її розуміти
І не часто дарував на день народження квіти.
І були часи, коли я тижнями їй не дзвонив.
І кожен раз, коли вона мене обіймає
І разом із татком все про внучку питає -
Я з радості плачу, що маю живих батьків.

Приспів.

Я дуже дякую тобі за то, шо я вмію
І дякую тобі за то, шо я розумів
Ті речі, яких не пояснюють навіть в книжках.
Хай буде біля тебе завжди ангел-хранитель
І я десь тут поряд буду також бродити,
Шоб не міряти наше життя в телефонних дзвінках.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2234614_l1','pisniua_2234614','YouTube','https://www.youtube.com/watch?v=Hnw93N6gX9Y','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2234614_l2','pisniua_2234614','YouTube','https://www.youtube.com/watch?v=fHCKWghNohQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2234614_l3','pisniua_2234614','YouTube','https://www.youtube.com/watch?v=VvEIxHPDCf4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2234614_l4','pisniua_2234614','YouTube','https://www.youtube.com/watch?v=FDUNlFyVJtQ','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2234614_l5','pisniua_2234614','YouTube','https://www.youtube.com/watch?v=jLt2OYBZ5_g','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2234614_l6','pisniua_2234614','YouTube','https://www.youtube.com/watch?v=DVvNNfiN27o','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_2234461';
DELETE FROM song_versions WHERE song_id = 'pisniua_2234461';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2234461';
DELETE FROM songs WHERE id = 'pisniua_2234461';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2234461','Гімн Дунаївцям','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'вікіпедія',NULL,'Місто квітне на славу і щастя,
Дух козацький у наших серцях,
Віра й правда, як перше причастя,
Не померкне ніколи в віках!

Приспів:
Славне місто України,
Пісня маршем в серце лине
Про Дунаївці, про Дунаївці
Найрідніші на землі!
Це Дунаївці мої! Це Дунаївці!

Бережемо традиції роду,
В творчих пошуках люди мої,
Ми під прапором волі народу,
Ми за злагоду й мир на землі!

Приспів.

Хай у полі видзвонює колос
І на чатах стоять журавлі,
І лунає Дунаєвець голос
На подільській квітучій землі!

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2234461'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2234461','Гімн Дунаївцям','Місто квітне на славу і щастя,
Дух козацький у наших серцях,
Віра й правда, як перше причастя,
Не померкне ніколи в віках!

Приспів:
Славне місто України,
Пісня маршем в серце лине
Про Дунаївці, про Дунаївці
Найрідніші на землі!
Це Дунаївці мої! Це Дунаївці!

Бережемо традиції роду,
В творчих пошуках люди мої,
Ми під прапором волі народу,
Ми за злагоду й мир на землі!

Приспів.

Хай у полі видзвонює колос
І на чатах стоять журавлі,
І лунає Дунаєвець голос
На подільській квітучій землі!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2234394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2234394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2234394';
DELETE FROM songs WHERE id = 'pisniua_2234394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2234394','Пісня про героя Крут Миколу Корпана','Музика: Д. Долішня, Тарас Питлик Слова: Д. Долішня. Виконує: Тарас Питлик','uk','ukraine_1991',NULL,NULL,NULL,NULL,'В селі Тяпче біля хати зацвіла калина,
Посадила її мати задля свого сина,
Посадила її мати рано на світанку,
Як Миколу виряджала вчитись в Київ зранку.

Приспів:
Щовесни цвіте калина,
Стежку застеляє,
А під Крутами Микола
В землі спочиває.

Ой напали на Вкраїну вороги прокляті,
Але стрільці-українці були теж завзяті.
Триста юнаків-студентів і Микола з ними
Пішли на війну криваву за Вкраїну милу.

Приспів.

Нехай пам''ять про героїв в серцях не згасає,
Нехай їхня естафета вогнем запалає.
Будем славу цим героям повічно співати
І готові за Вкраїну теж життя віддати!

Приспів','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2234394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2234394','Пісня про героя Крут Миколу Корпана','В селі Тяпче біля хати зацвіла калина,
Посадила її мати задля свого сина,
Посадила її мати рано на світанку,
Як Миколу виряджала вчитись в Київ зранку.

Приспів:
Щовесни цвіте калина,
Стежку застеляє,
А під Крутами Микола
В землі спочиває.

Ой напали на Вкраїну вороги прокляті,
Але стрільці-українці були теж завзяті.
Триста юнаків-студентів і Микола з ними
Пішли на війну криваву за Вкраїну милу.

Приспів.

Нехай пам''ять про героїв в серцях не згасає,
Нехай їхня естафета вогнем запалає.
Будем славу цим героям повічно співати
І готові за Вкраїну теж життя віддати!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2235414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2235414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2235414';
DELETE FROM songs WHERE id = 'pisniua_2235414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2235414','Школа рідна','Музика: Дмитро Хома Слова: Дмитро Хома. Виконує: Дмитро Хома','uk','ukraine_1991',NULL,NULL,'Авторська пісня',NULL,'Іду до школи - немов додому,
На зустріч друзів, забувши втому,
Іду до юності на свято,
Там буде спогадів багато,
Стежину згадую знайому,
Іду до школи - немов додому.

Приспів:
Рідна школа - найкращий наш час,
Не забути десятий наш клас.
Рідна школа одна на землі,
Однокласники і вчителі.
Рідна школа - дорога життя,
Перші успіхи і почуття.
Знов до тебе приходжу сюди,
Ти у серці моїм назавжди.

Іду до школи - душа співає,
Згадка дитинства мене чекає,
Іду сюди не випадково,
Почути правду, мудре слово,
Нас перша вчителька стрічає,
Іду до школи - душа співає.

Приспів','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2235414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2235414','Школа рідна','Іду до школи - немов додому,
На зустріч друзів, забувши втому,
Іду до юності на свято,
Там буде спогадів багато,
Стежину згадую знайому,
Іду до школи - немов додому.

Приспів:
Рідна школа - найкращий наш час,
Не забути десятий наш клас.
Рідна школа одна на землі,
Однокласники і вчителі.
Рідна школа - дорога життя,
Перші успіхи і почуття.
Знов до тебе приходжу сюди,
Ти у серці моїм назавжди.

Іду до школи - душа співає,
Згадка дитинства мене чекає,
Іду сюди не випадково,
Почути правду, мудре слово,
Нас перша вчителька стрічає,
Іду до школи - душа співає.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2235414_l1','pisniua_2235414','YouTube','https://www.youtube.com/watch?v=Dkh3fJQYE6E','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2234697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2234697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2234697';
DELETE FROM songs WHERE id = 'pisniua_2234697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2234697','В новорічну ніч','Музика: Юлія Войс Слова: Юлія Войс. Виконує: Юлія Войс','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В зимове свято новорічні дива,
Всіх з новим роком вітає земля.
Так снігу багато, справжнєє свято,
Всіх вітаємо із щастям новим!

Палають в небі зорі, співає душа,
Сповнені надії, б''ються наші серця,
Загадай бажання і в останнє
Привітаємо ми новий рік.

В новорічну ніч хай співає Земля,
В новорічну ніч справжнє свято й дива.
Щастя і добра, злагоди й тепла
В кожен дім побажаємо всім!

В новорічну ніч друзі і сім''я,
Заспіваємо "З новим роком, Земля!",
Світлих почуттів, щастя в кожен дім
Нам усім!
Із світлим роком новим!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2234697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2234697','В новорічну ніч','В зимове свято новорічні дива,
Всіх з новим роком вітає земля.
Так снігу багато, справжнєє свято,
Всіх вітаємо із щастям новим!

Палають в небі зорі, співає душа,
Сповнені надії, б''ються наші серця,
Загадай бажання і в останнє
Привітаємо ми новий рік.

В новорічну ніч хай співає Земля,
В новорічну ніч справжнє свято й дива.
Щастя і добра, злагоди й тепла
В кожен дім побажаємо всім!

В новорічну ніч друзі і сім''я,
Заспіваємо "З новим роком, Земля!",
Світлих почуттів, щастя в кожен дім
Нам усім!
Із світлим роком новим!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2234697_l1','pisniua_2234697','YouTube','https://www.youtube.com/watch?v=RcHg42WT2wk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2237012';
DELETE FROM song_versions WHERE song_id = 'pisniua_2237012';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2237012';
DELETE FROM songs WHERE id = 'pisniua_2237012';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2237012','А під Новий Рік','Музика: Андрій Кузьменко Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На очах росою сльози,
Знову ти сама зустрінеш цей
Новий Рік,
І замерзли на морозі
Кольорові мрії твої...
Снігом замітає двері,
Може, хтось до тебе прийшов -
Впусти його,
Запроси ще й до вечері,
Поділися своїм теплом.

Приспів:
А під Новий Рік
Люди зустрічаються.
А під Новий Рік
Мрії всі збуваються.
А під Новий Рік
Твій дім не закривається:
Може, прийде той,
Кого ти сподіваєшся.

На вікні узори дивні -
Це твоя подружка-зима
Малює їх,
Пробує розвеселити,
Сипле з неба на людей сніг.
Прибери свою ялинку,
Ангели чекають на знак -
І прилетять
Просто до твого будинку
Пісня тебе звеселять.

Приспів.

Ти його чекай,                 |
Він до тебе прийде,            |
Бо так само на душі його,      |
Він тебе по світі він шукає... | (2)

А під Новий Рік...
А під Новий Рік...

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2237012'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2237012','А під Новий Рік','На очах росою сльози,
Знову ти сама зустрінеш цей
Новий Рік,
І замерзли на морозі
Кольорові мрії твої...
Снігом замітає двері,
Може, хтось до тебе прийшов -
Впусти його,
Запроси ще й до вечері,
Поділися своїм теплом.

Приспів:
А під Новий Рік
Люди зустрічаються.
А під Новий Рік
Мрії всі збуваються.
А під Новий Рік
Твій дім не закривається:
Може, прийде той,
Кого ти сподіваєшся.

На вікні узори дивні -
Це твоя подружка-зима
Малює їх,
Пробує розвеселити,
Сипле з неба на людей сніг.
Прибери свою ялинку,
Ангели чекають на знак -
І прилетять
Просто до твого будинку
Пісня тебе звеселять.

Приспів.

Ти його чекай,                 |
Він до тебе прийде,            |
Бо так само на душі його,      |
Він тебе по світі він шукає... | (2)

А під Новий Рік...
А під Новий Рік...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2237012_l1','pisniua_2237012','YouTube','https://www.youtube.com/watch?v=YaiLLQd_YiA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2236158';
DELETE FROM song_versions WHERE song_id = 'pisniua_2236158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2236158';
DELETE FROM songs WHERE id = 'pisniua_2236158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2236158','Слава черкаського козацтва','Музика: Олександр Стадник Слова: Олександр Стадник. Виконує: Черкаський народний хор','uk','ukraine_before_1917',NULL,NULL,NULL,'Автором тексту і музики є народний артист України Олександр Іванович Стадник - уроженець с. Руська Поляна, співак, композитор, хормейстер. Свого часу - художній керівник Черкаського народного хору, та батько заслуженого діяча мистецтв України Олександра Стадника, художнього керівника Волинського народного хору. Пісні з Черкащини.','Вітер у полі хилить тополі,
Мов на сторожі стали вітряки,
Там їдуть хлопці, хлопці молодці, |
Гей, чигиринські, гей, козаки!    | (2)

За волю неньку, матір стареньку,
В похід рушали наші земляки,
Дощами вмиті, сонцем зігріті,
Гей, чигиринські, гей, козаки.

Сил не жаліли, серцем боліли,
Аби жилося вільно навіки.
Вкраїні милій вірно служили,
Гей, чигиринські, гей, козаки.

Вмиємось водою з сивого Дніпра,
Поклянемось вірності братства,
Доки сонце сяє - слава не вмирає  |
Славного черкаського козацтва!    | (2)','[''pisni.org.ua'', ''cat:kozacki'', ''cat:naddnipryanski'', ''Козацькі пісні'', ''Наддніпрянські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2236158'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2236158','Слава черкаського козацтва','Вітер у полі хилить тополі,
Мов на сторожі стали вітряки,
Там їдуть хлопці, хлопці молодці, |
Гей, чигиринські, гей, козаки!    | (2)

За волю неньку, матір стареньку,
В похід рушали наші земляки,
Дощами вмиті, сонцем зігріті,
Гей, чигиринські, гей, козаки.

Сил не жаліли, серцем боліли,
Аби жилося вільно навіки.
Вкраїні милій вірно служили,
Гей, чигиринські, гей, козаки.

Вмиємось водою з сивого Дніпра,
Поклянемось вірності братства,
Доки сонце сяє - слава не вмирає  |
Славного черкаського козацтва!    | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2236158_l1','pisniua_2236158','YouTube','https://www.youtube.com/watch?v=ntMcYO8tcFA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2236158_l2','pisniua_2236158','YouTube','https://www.youtube.com/watch?v=iI0_uh6h45I','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2237055';
DELETE FROM song_versions WHERE song_id = 'pisniua_2237055';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2237055';
DELETE FROM songs WHERE id = 'pisniua_2237055';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2237055','Розпрощався козак','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Село Радча Івано-Франківської області','Остап: "Давно в дитинстві чув, слова призабув, прийшлось трохи підредагувати."','Розпрощався козак зі своєю ріднею,
Та й поїхав в далеку дорогу, -
За свій рідний край,
За стрілецький звичай
Йшов у бій за свою перемогу!

Буйний вітер свистів під нічною зорею,
Молодий дуб додолу схилився.
Трава шелестить,
Козак в степу лежить,
Над ним коник його зажурився...

Ой, коню, мій коню, не стій наді мною
Пораненим, травою прикритим, -
Ти лети, коню мій,
Скажи неньці рідній,
Що лежу я у полі забитий!

І батько, і ненька, і рідненькі сестри,
Хай ніхто з них за мною не плаче!
Бо я в степу лежу,
Без підмоги тужу -
Сивий ворон наді мною кряче!','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2237055'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2237055','Розпрощався козак','Розпрощався козак зі своєю ріднею,
Та й поїхав в далеку дорогу, -
За свій рідний край,
За стрілецький звичай
Йшов у бій за свою перемогу!

Буйний вітер свистів під нічною зорею,
Молодий дуб додолу схилився.
Трава шелестить,
Козак в степу лежить,
Над ним коник його зажурився...

Ой, коню, мій коню, не стій наді мною
Пораненим, травою прикритим, -
Ти лети, коню мій,
Скажи неньці рідній,
Що лежу я у полі забитий!

І батько, і ненька, і рідненькі сестри,
Хай ніхто з них за мною не плаче!
Бо я в степу лежу,
Без підмоги тужу -
Сивий ворон наді мною кряче!');
DELETE FROM song_links WHERE song_id = 'pisniua_2237890';
DELETE FROM song_versions WHERE song_id = 'pisniua_2237890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2237890';
DELETE FROM songs WHERE id = 'pisniua_2237890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2237890','Вишивала мати доні щастя','Слова: Марія Баліцька','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Колисала мати колиску кленову -
Виспівала доні долю веселкову...
А коли дитина міцно засинала, -
З молитвами щастя доні вишивала.

Приспів:
На Бога! На Сонце! На День Золотий!
На ніжність! На усміх! На погляд ясний!
На Долю щасливу, квітуче Життя -
Мережила мати доньці вишиття.

Коси заплітала - в школу виряджала,
Щоб в людей премудрих розуму навчалась...
А коли ночами свічка мерехтіла, -
Радість вишивала для доні уміло.

Приспів.

Коси розплітала - до шлюбу збирала,
Під вельон віночок з мірту закладала
Й поблагословила вибір в день недільний -
З милим доня стала на рушник весільний!

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2237890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2237890','Вишивала мати доні щастя','Колисала мати колиску кленову -
Виспівала доні долю веселкову...
А коли дитина міцно засинала, -
З молитвами щастя доні вишивала.

Приспів:
На Бога! На Сонце! На День Золотий!
На ніжність! На усміх! На погляд ясний!
На Долю щасливу, квітуче Життя -
Мережила мати доньці вишиття.

Коси заплітала - в школу виряджала,
Щоб в людей премудрих розуму навчалась...
А коли ночами свічка мерехтіла, -
Радість вишивала для доні уміло.

Приспів.

Коси розплітала - до шлюбу збирала,
Під вельон віночок з мірту закладала
Й поблагословила вибір в день недільний -
З милим доня стала на рушник весільний!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2237910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2237910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2237910';
DELETE FROM songs WHERE id = 'pisniua_2237910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2237910','Вишиванка','(Мамина сорочка). Музика: Микола Болотний Слова: Олександр Бугай','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Проводжала сина у дорогу
І молилась щиросердно Богу.
І казала: "Де б не був, синочку,
Бережи матусину сорочку!"
Гаптувала в пору злив і грому,
Щоб здоровим повернувсь додому.
Вишивала, укладала чари,        |
Щоб в полон не брали яничари.   | (2)

Малювала галки і зозулі,
Щоб летіли мимо вражі кулі.
Вишивала день і ніч по краплі,
Лиш би тіла не рубали шаблі.
Дарувала сонця щирі зблиски,
Щоб покласти внука до колиски.
Щоб вернувсь до рідного порога — |
Вишивала і просила Бога:         | (2)

"Отче Боже і Святая Мати,
Хай синочок вернеться до хати!"
Через роки син прийшов додому,
Наче сонце, вишиття на ньому.
Поклонивсь, припавши на коліна,
Та й промовив тихо: "Мамо рідна!
Не оця б з молитвами сорочка, —  |
Не було б ні внука, ні синочка!" | (2)','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2237910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2237910','Вишиванка','Проводжала сина у дорогу
І молилась щиросердно Богу.
І казала: "Де б не був, синочку,
Бережи матусину сорочку!"
Гаптувала в пору злив і грому,
Щоб здоровим повернувсь додому.
Вишивала, укладала чари,        |
Щоб в полон не брали яничари.   | (2)

Малювала галки і зозулі,
Щоб летіли мимо вражі кулі.
Вишивала день і ніч по краплі,
Лиш би тіла не рубали шаблі.
Дарувала сонця щирі зблиски,
Щоб покласти внука до колиски.
Щоб вернувсь до рідного порога — |
Вишивала і просила Бога:         | (2)

"Отче Боже і Святая Мати,
Хай синочок вернеться до хати!"
Через роки син прийшов додому,
Наче сонце, вишиття на ньому.
Поклонивсь, припавши на коліна,
Та й промовив тихо: "Мамо рідна!
Не оця б з молитвами сорочка, —  |
Не було б ні внука, ні синочка!" | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_223616';
DELETE FROM song_versions WHERE song_id = 'pisniua_223616';
DELETE FROM songs_fts WHERE song_id = 'pisniua_223616';
DELETE FROM songs WHERE id = 'pisniua_223616';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_223616','Тиша навкруги','Музика: Олександр Богачук Слова: Олександр Богачук. Виконує: Тріо Мареничів, Ot Vinta, Рушничок, Таїсія Повалій, Йосип Кобзон, Made in Ukraine, Гурт Wszystko, Сестри Тельнюк, Олена Слободянюк','uk','ukraine_before_1917',NULL,NULL,'1. Надіслав Ярослав Богачук 2. Олександр Богачук. Горно: Поезії. — К.: Дніпро, 1984. — 216 с.','У збірці поезій О. Богачука (Дж. 2) приспів починається так: "Ой скажи мені..."','Тиша навкруги,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2237292';
DELETE FROM song_versions WHERE song_id = 'pisniua_2237292';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2237292';
DELETE FROM songs WHERE id = 'pisniua_2237292';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2237292','Як ішов я з Дебречина додому','Українська народна пісня. Виконує: Анатолій Руденко, Київ','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Пісня зі Закарпаття / регіону українських Карпат - вельми популярна в Галичині. Дебречин (Debrecen) - місто в Угорщині, неподалік від Закарпаття. Бардейов, Бардіїв (Bardejov) - місто в Словаччині (історичні землі лемківського Закарпаття). Довгий час місто входило до складу Галицько-Волинської держави. Лише 1321 р. Бардіїв увійшов до складу Угорської держави, а згодом - Словаччини.','Як ішов я з Дебречина додому,
Перейшла ми чорна кура дорогу,
Іди, іди, чорна кура додому!         |
Не заважай, не заважай               |
По дорозі нікому.                    | (2)

Як ішов я з Дебречина до Хусту,
Знайшов лем я вишиваную хустку,
Ой, чи мила, чи не мила ї шила,      |
Лем би, лем би, вона                 |
Вишиваною била.                      | (2)

Як ішов я з Бардейова додому,
Про той вечір не розкажу нікому.
Так мя мила притискала до себе - ой! |
Чи любиш мя, чи не любиш,            |
Бо я млію без тебе!                  | (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:zakarpatski'', ''Лемківські пісні'', ''Закарпатські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2237292'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2237292','Як ішов я з Дебречина додому','Як ішов я з Дебречина додому,
Перейшла ми чорна кура дорогу,
Іди, іди, чорна кура додому!         |
Не заважай, не заважай               |
По дорозі нікому.                    | (2)

Як ішов я з Дебречина до Хусту,
Знайшов лем я вишиваную хустку,
Ой, чи мила, чи не мила ї шила,      |
Лем би, лем би, вона                 |
Вишиваною била.                      | (2)

Як ішов я з Бардейова додому,
Про той вечір не розкажу нікому.
Так мя мила притискала до себе - ой! |
Чи любиш мя, чи не любиш,            |
Бо я млію без тебе!                  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2237292_l1','pisniua_2237292','YouTube','https://www.youtube.com/watch?v=WH-LvP3YQBs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2237292_l2','pisniua_2237292','YouTube','https://www.youtube.com/watch?v=czXP6E4pebI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2237292_l3','pisniua_2237292','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_223756';
DELETE FROM song_versions WHERE song_id = 'pisniua_223756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_223756';
DELETE FROM songs WHERE id = 'pisniua_223756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_223756','Ой ви, сни солдатські…','Музика: Олександр Богачук Слова: Олександр Богачук','uk','ukraine_1991',NULL,NULL,'надіслав Ярослав Богачук',NULL,'Не тужи ти, зимо, не зітхай вітрами,
Нишком-тишком клич собі сніги.
Не буди солдатів, коли сняться мами,
Сняться рідні ниви і луги.
Може, кароокі дивляться їм в душу
І шепочуть жадібні слова.
Той свою Катрусю, той свою Катюшу
Пригорта до серця і співа.
Ои, ви, сни солдатські, мов ті літні ночі,
Милі і короткі ваші сни.
Ще не спали мрії, ще не спали очі,
А труба вже кличе з далини.
Дні ідуть за днями, вдягнені в шинелі,
І стискають міцно автомат.
Десь далеко отчі затишні оселі,
Десь далеко усмішки дівчат...
Втомлені солдати сядуть на привалі,
Защебече солов''єм баян.
Думи розколише, розгойдає далі,
І розчеше промені туман.
Не тужи ти, зимо, не зітхай вітрами,
Нишком-тишком клич собі сніги.
Не буди солдатів, коли сняться мами,
Сняться рідні ниви і луги.','[''pisni.org.ua'', ''cat:viyskovi'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_223756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_223756','Ой ви, сни солдатські…','Не тужи ти, зимо, не зітхай вітрами,
Нишком-тишком клич собі сніги.
Не буди солдатів, коли сняться мами,
Сняться рідні ниви і луги.
Може, кароокі дивляться їм в душу
І шепочуть жадібні слова.
Той свою Катрусю, той свою Катюшу
Пригорта до серця і співа.
Ои, ви, сни солдатські, мов ті літні ночі,
Милі і короткі ваші сни.
Ще не спали мрії, ще не спали очі,
А труба вже кличе з далини.
Дні ідуть за днями, вдягнені в шинелі,
І стискають міцно автомат.
Десь далеко отчі затишні оселі,
Десь далеко усмішки дівчат...
Втомлені солдати сядуть на привалі,
Защебече солов''єм баян.
Думи розколише, розгойдає далі,
І розчеше промені туман.
Не тужи ти, зимо, не зітхай вітрами,
Нишком-тишком клич собі сніги.
Не буди солдатів, коли сняться мами,
Сняться рідні ниви і луги.');
DELETE FROM song_links WHERE song_id = 'pisniua_2238550';
DELETE FROM song_versions WHERE song_id = 'pisniua_2238550';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2238550';
DELETE FROM songs WHERE id = 'pisniua_2238550';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2238550','Гімн Євро-2012','Музика: Віталій Сокол Слова: Віталій Сокол','uk','ukraine_1991',NULL,'2012','авторське подання',NULL,'Євро дві тисячі дванадцять,
Спортивна гра розпочалася —
Чемпіонат з євро-футболу,
Довго чекали цю нагоду
В країні — житниці Європи
З величчю ланів широких,
Тут розпочалась велика гра.

Приспів:
Всі! На футбол! Україна Вас чекає,
Не пропустіть жоден гол — та мить вражає.
Хай у цій грі пощастить гравцям,
Чемпіонат живить нам серця.
Гра велика почалася!

На дружнім, гучнім стадіоні
Всі вболівальники готові
Цікаву гру спостерігати,
За їх кумирів вболівати.
Хай переможе найсильніший,
Скоро дізнаємось — хто ліпший,
Вже розпочалась велика гра.

Приспів.

Coda
Гра велика почалася!
Шлях до перемоги не простий, але він є.    Фонограма-мінус (mp3, 128 kbps)','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2238550'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2238550','Гімн Євро-2012','Євро дві тисячі дванадцять,
Спортивна гра розпочалася —
Чемпіонат з євро-футболу,
Довго чекали цю нагоду
В країні — житниці Європи
З величчю ланів широких,
Тут розпочалась велика гра.

Приспів:
Всі! На футбол! Україна Вас чекає,
Не пропустіть жоден гол — та мить вражає.
Хай у цій грі пощастить гравцям,
Чемпіонат живить нам серця.
Гра велика почалася!

На дружнім, гучнім стадіоні
Всі вболівальники готові
Цікаву гру спостерігати,
За їх кумирів вболівати.
Хай переможе найсильніший,
Скоро дізнаємось — хто ліпший,
Вже розпочалась велика гра.

Приспів.

Coda
Гра велика почалася!
Шлях до перемоги не простий, але він є.    Фонограма-мінус (mp3, 128 kbps)');
DELETE FROM song_links WHERE song_id = 'pisniua_2235665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2235665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2235665';
DELETE FROM songs WHERE id = 'pisniua_2235665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2235665','А над Чорнобилем','Музика: Тарас Питлик Слова: Тарас Питлик. Виконує: Тарас Питлик','uk','ukraine_1991',NULL,NULL,'Авторське подання',NULL,'Прийшла весна, сади цвітуть,
Земля красі радіє.
Пташиний спів, хрущі гудуть,
Поля в квітках рясніють.

Приспів:
А над Чорнобилем - туман і дим
І смерті дзвін рве тишину.
І болем в серці таким страшним
Озветься не одну весну.

Не гомонить дитячий сміх,
Дзвінких пісень не чути.
Лиш пустотінь, мов вічний гріх,
В руїнах розіпнута.

Приспів.

Мине весна і літа спів,
І старість гляне в вічі.
Лиш ця біда, мов Божий гнів,
Для нас навіки-вічні.

Приспів','[''pisni.org.ua'', ''cat:chornobyl'', ''Чорнобильська катастрофа: пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2235665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2235665','А над Чорнобилем','Прийшла весна, сади цвітуть,
Земля красі радіє.
Пташиний спів, хрущі гудуть,
Поля в квітках рясніють.

Приспів:
А над Чорнобилем - туман і дим
І смерті дзвін рве тишину.
І болем в серці таким страшним
Озветься не одну весну.

Не гомонить дитячий сміх,
Дзвінких пісень не чути.
Лиш пустотінь, мов вічний гріх,
В руїнах розіпнута.

Приспів.

Мине весна і літа спів,
І старість гляне в вічі.
Лиш ця біда, мов Божий гнів,
Для нас навіки-вічні.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2238277';
DELETE FROM song_versions WHERE song_id = 'pisniua_2238277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2238277';
DELETE FROM songs WHERE id = 'pisniua_2238277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2238277','Ми бажаєм щастя вам','Музика: Стас Намін Слова: Ігор Федчишин','uk','ukraine_1991',NULL,NULL,'Група "Цветы", "Мы желаем счастья вам"',NULL,'Вітерець кружляє надворі,
Сонечко малює на вікні
Щире привітання вам
І у дзвіночки б''є.
Щоби було весело в цей час
Дуже треба кожному із нас
Знати, що насправді
Щастя в цьому світі є!

Приспів:
Ми бажаєм щастя вам,
Щастя назавжди і у всім!
Хай промінцем тепла
Щастя увійде в ваш дім!
Ми бажаєм щастя вам,
Хай воно іскриться, як сніг,
Хай ковдрою добра
Щастя огорта поріг!

Хай квітучі весни
Радість шлють,
Матіоли по ночах цвітуть,
Многих літ та благих
Вам зозуля накує.
Щоби було весело в цей час
Дуже треба кожному із нас
Знати, що віднині
Щастя в вашій хаті є.

Приспів.','[''pisni.org.ua'', ''cat:translations'', ''Переклади іноземних пісень'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2238277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2238277','Ми бажаєм щастя вам','Вітерець кружляє надворі,
Сонечко малює на вікні
Щире привітання вам
І у дзвіночки б''є.
Щоби було весело в цей час
Дуже треба кожному із нас
Знати, що насправді
Щастя в цьому світі є!

Приспів:
Ми бажаєм щастя вам,
Щастя назавжди і у всім!
Хай промінцем тепла
Щастя увійде в ваш дім!
Ми бажаєм щастя вам,
Хай воно іскриться, як сніг,
Хай ковдрою добра
Щастя огорта поріг!

Хай квітучі весни
Радість шлють,
Матіоли по ночах цвітуть,
Многих літ та благих
Вам зозуля накує.
Щоби було весело в цей час
Дуже треба кожному із нас
Знати, що віднині
Щастя в вашій хаті є.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2239010';
DELETE FROM song_versions WHERE song_id = 'pisniua_2239010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2239010';
DELETE FROM songs WHERE id = 'pisniua_2239010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2239010','Для доні','Музика: Анничка Гнатишак Слова: Анничка Гнатишак. Виконує: Надія Шекеряк','uk','ukraine_1991',NULL,NULL,'авторське подання','Виконує: Альбом:','Добрий ранок, донечко,
Як тобі спалося?
Заховалось сонечко
У твоє волосся.
І сміється донечка,
Зіронька єдина,
Наче ясне сонечко,
Щастя для родини.

Приспів:
Ангели срібнокрилі
З неба злетіли,
Долю несли дитині
Ангели білі.
Ангели срібнокрилі
Божая Сила,
Хай виростає в мирі
Донечка мила.
Ангели срібнокрилі,
Вам я молюся,
Хай виростає в мирі
Доня Катруся.

Де любов і злагода,
Де міцна родина,
Вироста, мов ягода,
Донечка-дитина.
Щічки румянесенькі,
Щирі оченята,
Крихітка ріднесенька,
Радість мами й тата.

Приспів.

Щастя там гніздо будує,
Де колиска в хаті,
І дитяточко годує
Молодая мати.
Бога просить, побажає
Світлого дитинства,
Той убогий, хто не знає
Щастя материнства.

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2239010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2239010','Для доні','Добрий ранок, донечко,
Як тобі спалося?
Заховалось сонечко
У твоє волосся.
І сміється донечка,
Зіронька єдина,
Наче ясне сонечко,
Щастя для родини.

Приспів:
Ангели срібнокрилі
З неба злетіли,
Долю несли дитині
Ангели білі.
Ангели срібнокрилі
Божая Сила,
Хай виростає в мирі
Донечка мила.
Ангели срібнокрилі,
Вам я молюся,
Хай виростає в мирі
Доня Катруся.

Де любов і злагода,
Де міцна родина,
Вироста, мов ягода,
Донечка-дитина.
Щічки румянесенькі,
Щирі оченята,
Крихітка ріднесенька,
Радість мами й тата.

Приспів.

Щастя там гніздо будує,
Де колиска в хаті,
І дитяточко годує
Молодая мати.
Бога просить, побажає
Світлого дитинства,
Той убогий, хто не знає
Щастя материнства.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2238726';
DELETE FROM song_versions WHERE song_id = 'pisniua_2238726';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2238726';
DELETE FROM songs WHERE id = 'pisniua_2238726';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2238726','Дума','(Двісті літ, як розтерзана Січ). Музика: Анатолій Сердюк Слова: Григорій Лютий. Виконує: Анатолій Сердюк','uk','ukraine_1991',NULL,NULL,'http://smoz.ru/',NULL,'Двісті літ, як розтерзана Січ,
Як схололо гніздо України,
В тім гнізді тільки вітер і ніч,
А іще мого серця руїни.

Чи доб''ється ще воля туди,
Затопили й за рідні пороги,
Де ж ви, долі моєї меди,
Де чубаті діди — запороги?..

Двісті літ, як розтерзана Січ,
Ще живі чорні ворони всюди,
Що пили наше небо із віч,
Що довбали козацькії груди...

Обцілуй же зґвалтовану твердь,
Скинь тавро всепокірного смерта,
Тут за кожною згадкою — смерть,
Тут у кожній сльозині безсмертя...','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2238726'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2238726','Дума','Двісті літ, як розтерзана Січ,
Як схололо гніздо України,
В тім гнізді тільки вітер і ніч,
А іще мого серця руїни.

Чи доб''ється ще воля туди,
Затопили й за рідні пороги,
Де ж ви, долі моєї меди,
Де чубаті діди — запороги?..

Двісті літ, як розтерзана Січ,
Ще живі чорні ворони всюди,
Що пили наше небо із віч,
Що довбали козацькії груди...

Обцілуй же зґвалтовану твердь,
Скинь тавро всепокірного смерта,
Тут за кожною згадкою — смерть,
Тут у кожній сльозині безсмертя...');
DELETE FROM song_links WHERE song_id = 'pisniua_2238717';
DELETE FROM song_versions WHERE song_id = 'pisniua_2238717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2238717';
DELETE FROM songs WHERE id = 'pisniua_2238717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2238717','Чому так вийшло','(А у Гуляйполі). Музика: Анатолій Сердюк Слова: Григорій Лютий. Виконує: Анатолій Сердюк','uk','ukraine_1991',NULL,NULL,'http://smoz.ru/',NULL,'Чорна ворожка,
Чорна ворожка
Красно гадала.
Біло-червону,
Біло-червону
Стрічку сплітала.

Приспів:
А у Гуляйполі,
А у Гуляйполі,
Світяться вишні.
Нестор Іванович,
Нестор Іванович,
Чому так вийшло?..

Нестор Іванович,
Як Ви повірили
В казку про щастя,
Як Вам наміряли,
Як Вам відміряли
З чорної масті.

Приспів.

Понад зірниці,
Понад зірниці
Коні галопом.
Хлопці бочанці,
Хлопці ворпівці
Під перекопом.

Приспів.

Нестор Іванович,
Нестор Іванович
Чом така доля,
Що обняла Вас
Земля Парижа -
Не Гуляйполя.

А у Гуляйполі,
А у Гуляйполі,
Журяться вишні.
Нестор Іванович,
Нестор Іванович,
Чому ж так вийшло?
Нестор Іванович,
Нестор Іванович,
Чому не вийшло?..','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2238717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2238717','Чому так вийшло','Чорна ворожка,
Чорна ворожка
Красно гадала.
Біло-червону,
Біло-червону
Стрічку сплітала.

Приспів:
А у Гуляйполі,
А у Гуляйполі,
Світяться вишні.
Нестор Іванович,
Нестор Іванович,
Чому так вийшло?..

Нестор Іванович,
Як Ви повірили
В казку про щастя,
Як Вам наміряли,
Як Вам відміряли
З чорної масті.

Приспів.

Понад зірниці,
Понад зірниці
Коні галопом.
Хлопці бочанці,
Хлопці ворпівці
Під перекопом.

Приспів.

Нестор Іванович,
Нестор Іванович
Чом така доля,
Що обняла Вас
Земля Парижа -
Не Гуляйполя.

А у Гуляйполі,
А у Гуляйполі,
Журяться вишні.
Нестор Іванович,
Нестор Іванович,
Чому ж так вийшло?
Нестор Іванович,
Нестор Іванович,
Чому не вийшло?..');
DELETE FROM song_links WHERE song_id = 'pisniua_2235293';
DELETE FROM song_versions WHERE song_id = 'pisniua_2235293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2235293';
DELETE FROM songs WHERE id = 'pisniua_2235293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2235293','Вишиванка','Музика: Михайло Герц Слова: Віталій Войтко','uk','ukraine_1991',NULL,NULL,'Віталій Войтко',NULL,'На сорочці білій хрестики червоні,
Мов вогонь гарячі калинові грони,
Вишиті з любов''ю ненькою святою,
Щоб життя стелилось стежкою легкою.

Приспів:
Ниточка до ниточки,
Квіточка до квіточки,
Голочка малює в маминих руках.
Не доспала ніченьки,
Утомила віченьки
Та усмішка сонцем сяє на вустах!

Ти у ту сорочку душу свою вклала,
Щоб на віки вічні оберегом стала.
Вишита з любов''ю на щасливу долю,
Відганяє смуток, береже від болю.

Приспів. (2)','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2235293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2235293','Вишиванка','На сорочці білій хрестики червоні,
Мов вогонь гарячі калинові грони,
Вишиті з любов''ю ненькою святою,
Щоб життя стелилось стежкою легкою.

Приспів:
Ниточка до ниточки,
Квіточка до квіточки,
Голочка малює в маминих руках.
Не доспала ніченьки,
Утомила віченьки
Та усмішка сонцем сяє на вустах!

Ти у ту сорочку душу свою вклала,
Щоб на віки вічні оберегом стала.
Вишита з любов''ю на щасливу долю,
Відганяє смуток, береже від болю.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2239096';
DELETE FROM song_versions WHERE song_id = 'pisniua_2239096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2239096';
DELETE FROM songs WHERE id = 'pisniua_2239096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2239096','Козацька балада','Музика: Ігор Хома Слова: Роман Боднар. Виконує: Олег Дорош','uk','ukraine_before_1917',NULL,NULL,'Аудіозапис','Супровід: джаз-ансамбль "Медікус"','Я був у Дикім Полі,
Дивився на кургани,
Там в реві вітру вольнім
Вчув посвист ятаганів.

І могила та нагадала мені
Про дні звитяг і дні смутні,
Там серед хвиль срібного пирію
Згадав я долю злу твою,

Чубатий отамане, низовий козарлюго,
Я бачу твої очі, що повні болю й туги!
Із твоїх рамен, почорнілих від ран,
Знов шовк знамен впав на курган...

Ти помирав на м''якій ковилі,
Спочив у рідній ти землі,
Та люті яничари, побачивши могили,
Степами знову мчали, вбивали і палили!

І будився ти, не тамуючи злість,
Ти люто мстив за ріки сліз.
Назад вертавсь почорнілий від ран
І насипав новий курган! | (3)','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2239096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2239096','Козацька балада','Я був у Дикім Полі,
Дивився на кургани,
Там в реві вітру вольнім
Вчув посвист ятаганів.

І могила та нагадала мені
Про дні звитяг і дні смутні,
Там серед хвиль срібного пирію
Згадав я долю злу твою,

Чубатий отамане, низовий козарлюго,
Я бачу твої очі, що повні болю й туги!
Із твоїх рамен, почорнілих від ран,
Знов шовк знамен впав на курган...

Ти помирав на м''якій ковилі,
Спочив у рідній ти землі,
Та люті яничари, побачивши могили,
Степами знову мчали, вбивали і палили!

І будився ти, не тамуючи злість,
Ти люто мстив за ріки сліз.
Назад вертавсь почорнілий від ран
І насипав новий курган! | (3)');
DELETE FROM song_links WHERE song_id = 'pisniua_2238420';
DELETE FROM song_versions WHERE song_id = 'pisniua_2238420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2238420';
DELETE FROM songs WHERE id = 'pisniua_2238420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2238420','Вінні Пух','Музика: Арсен Мірзоян Слова: Арсен Мірзоян. Виконує: Арсен Мірзоян','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','arsen-music.com.ua/media/audio/VinniPuhmix.mp3','Мальовані квіти, веселі діти
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
DELETE FROM song_links WHERE song_id = 'pisniua_2240910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2240910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2240910';
DELETE FROM songs WHERE id = 'pisniua_2240910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2240910','Козацька','(Як я сяду на коня чорного...). Музика: Віктор Пашник Слова: Віктор Пашник. Виконує: Віктор Пашник','uk','ukraine_before_1917',NULL,NULL,'youtube',NULL,'Як я сяду на коня чорного
Та по білому снігу - вдаль,
То зупинить мене тільки сонного    |
У колибі припутній жаль.           | (2)

Де мої молоді роки-соколи...
Відлетіли, втекли, згинули.
Ой, як хочеться, друзі, деколи     |
Повернути те, що ми кинули.        | (2)

Та, на жаль, назад вороття нема
І у бороду впхався дим,
А над кручею ворон крило зніма:    |
Я б зірвався - і в небо з ним.     | (2)

Попрошу благодаті у панотця,
А коню вороному подам вівса,
Відпочину, а завтра зранку у сонця |
Я спитаю, де мені дітися.          | (2)

...Як я сяду на коня чорного       |
Та по білому снігу - вдаль...      | (2)','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2240910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2240910','Козацька','Як я сяду на коня чорного
Та по білому снігу - вдаль,
То зупинить мене тільки сонного    |
У колибі припутній жаль.           | (2)

Де мої молоді роки-соколи...
Відлетіли, втекли, згинули.
Ой, як хочеться, друзі, деколи     |
Повернути те, що ми кинули.        | (2)

Та, на жаль, назад вороття нема
І у бороду впхався дим,
А над кручею ворон крило зніма:    |
Я б зірвався - і в небо з ним.     | (2)

Попрошу благодаті у панотця,
А коню вороному подам вівса,
Відпочину, а завтра зранку у сонця |
Я спитаю, де мені дітися.          | (2)

...Як я сяду на коня чорного       |
Та по білому снігу - вдаль...      | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2240910_l1','pisniua_2240910','YouTube','https://www.youtube.com/watch?v=UZ5aK_V8zf0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2240910_l2','pisniua_2240910','YouTube','https://www.youtube.com/watch?v=x3Hh_t12wKI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2239328';
DELETE FROM song_versions WHERE song_id = 'pisniua_2239328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2239328';
DELETE FROM songs WHERE id = 'pisniua_2239328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2239328','Каділак','Музика: Михайло Хома, Олег Турко Слова: Михайло Хома. Виконує: DZIDZIO','uk','ukraine_before_1917',NULL,NULL,'вконтакті',NULL,'Я давним давно хотів
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
DELETE FROM song_links WHERE song_id = 'pisniua_2242096';
DELETE FROM song_versions WHERE song_id = 'pisniua_2242096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2242096';
DELETE FROM songs WHERE id = 'pisniua_2242096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2242096','Моя чарівна Оболонь','Музика: Оксана Голуб Слова: Оксана Голуб. Виконує: Оксана Голуб','uk','ukraine_1991',NULL,NULL,'Продюсер',NULL,'Народжена вірою-правдою
Для кожного в серці свята,
Ота Батьківщина прославлена -
Для мене єдина, одна!
Там, де ми вмивалися росами,
В піску залишали сліди,
І мріяли стати дорослими,
І шлях свій в житті віднайти...

Приспів:
Моя чарівна Оболонь,
Я п''ю тепло з твоїх долонь,
У сонячнім серпанку дня,
У хвилях сивого Дніпра!
Купаюсь мов у вирі днів,
У круговерті дивних снів,
І п''ю красу з твоїх долонь,
Моя чарівна Оболонь!

Перлина сучасного Києва,
Осяяна в плесах Дніпра,
І дім, про який завжди мріяла,
Де серцем й душею була.
Тут діти вмиваються росами,
В піску залишають сліди,
І мріють ще стати дорослими,
Так само, як мріяли ми...

Приспів','[''pisni.org.ua'', ''cat:all-ukraine'', ''Загальноукраїнські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2242096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2242096','Моя чарівна Оболонь','Народжена вірою-правдою
Для кожного в серці свята,
Ота Батьківщина прославлена -
Для мене єдина, одна!
Там, де ми вмивалися росами,
В піску залишали сліди,
І мріяли стати дорослими,
І шлях свій в житті віднайти...

Приспів:
Моя чарівна Оболонь,
Я п''ю тепло з твоїх долонь,
У сонячнім серпанку дня,
У хвилях сивого Дніпра!
Купаюсь мов у вирі днів,
У круговерті дивних снів,
І п''ю красу з твоїх долонь,
Моя чарівна Оболонь!

Перлина сучасного Києва,
Осяяна в плесах Дніпра,
І дім, про який завжди мріяла,
Де серцем й душею була.
Тут діти вмиваються росами,
В піску залишають сліди,
І мріють ще стати дорослими,
Так само, як мріяли ми...

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2242096_l1','pisniua_2242096','YouTube','https://www.youtube.com/watch?v=rt0Ht0qPd58','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2242096_l2','pisniua_2242096','YouTube','https://www.youtube.com/watch?v=so-mQTDijXY','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2240952';
DELETE FROM song_versions WHERE song_id = 'pisniua_2240952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2240952';
DELETE FROM songs WHERE id = 'pisniua_2240952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2240952','Для діда та баби','Музика: Анатолій Кальяненко Слова: Анатолій Кальяненко. Виконує: Анатолій Кальяненко','uk','ukraine_1991',NULL,NULL,'Анатолій Кальяненко',NULL,'Місяць заходить і сонце встає,
Ночі і дні за роками минають,
Ми бабусями й дідами стаєм,
В нас вже онуки зростають.

Приспів:
Діду і бабо, ви знову батьки,
Нове життя ви взяли на поруки,
Бо перші діти - останні ляльки,
А справжні діти - це справжні онуки.

Осінь життя вже стоїть за вікном,
Свічка років догорає,
Але ми знаємо, що вона знов
В наших онуках палає.

Приспів.

Боже, прошу, ти продли мені днів,
В долю святу я не хочу втручатись,
Щоби подовше любити синів,
Внуками помилуватись.

Приспів','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2240952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2240952','Для діда та баби','Місяць заходить і сонце встає,
Ночі і дні за роками минають,
Ми бабусями й дідами стаєм,
В нас вже онуки зростають.

Приспів:
Діду і бабо, ви знову батьки,
Нове життя ви взяли на поруки,
Бо перші діти - останні ляльки,
А справжні діти - це справжні онуки.

Осінь життя вже стоїть за вікном,
Свічка років догорає,
Але ми знаємо, що вона знов
В наших онуках палає.

Приспів.

Боже, прошу, ти продли мені днів,
В долю святу я не хочу втручатись,
Щоби подовше любити синів,
Внуками помилуватись.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2240091';
DELETE FROM song_versions WHERE song_id = 'pisniua_2240091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2240091';
DELETE FROM songs WHERE id = 'pisniua_2240091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2240091','Спішімся нині в Вифлеєм','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'колядувала бабуся в с. Завадові Жовківськог району Львівської області','Мав би бути ще один стовпчик - може хто знає?','Спішімся нині В Вифлеєм
Ісуса вітати,
І честь Йому як Богові,
Поклін му віддати.

Просити Його щоб глянув
На наш убогий люд,
Дав щастя й долі на всі дні,
Благословив наш труд.','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2240091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2240091','Спішімся нині в Вифлеєм','Спішімся нині В Вифлеєм
Ісуса вітати,
І честь Йому як Богові,
Поклін му віддати.

Просити Його щоб глянув
На наш убогий люд,
Дав щастя й долі на всі дні,
Благословив наш труд.');
DELETE FROM song_links WHERE song_id = 'pisniua_2240165';
DELETE FROM song_versions WHERE song_id = 'pisniua_2240165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2240165';
DELETE FROM songs WHERE id = 'pisniua_2240165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2240165','Кіт не знав','Музика: Юрий Крылатов Слова: Платон Воронько','uk','ukraine_before_1917',NULL,NULL,'З пам''яті',NULL,'Падав сніг на поріг,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2241251';
DELETE FROM song_versions WHERE song_id = 'pisniua_2241251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2241251';
DELETE FROM songs WHERE id = 'pisniua_2241251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2241251','Ніч на Івана на Купала','Музика: Володимир Якимець Слова: Наталія Заброцька. Виконує: Руслана Калина','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Може зорі зникли влітку,
Обернулись в дивну квітку,
І цвітуть у ніч купальську
Лиш один єдиний раз.
А нам доля обіцяла,
У чарівну ніч Купала
Ми удвох знайдем цю квітку -
І вона з''єднає нас,
І вона з''єднає нас!

Приспів:
Ніч на Івана, на Купала,
Таємниця обійняла!
Ніч на Івана, на Купала,
І вогнем зігріла нас!
В ніч на Івана, на Купала,
Доля щастя дарувала!
В ніч на Івана, на Купала,
Прилетів кохання час!

В небо подивіться влітку
І шукайте зоре-квітку,
Що в чарівну ніч Купала
Зачекалась тільки Вас,
В небо ви дивіться влітку
І шукайте зоре-квітку,
Що дарунком долі стала,
Як прийшов кохання час,
Як прийшов кохання час!

Приспів. (2)

Ніч, єдина ніч кохання,
Ніч - у небі сотні свіч,
А зоря де наша впала?..
Ніч...','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2241251'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2241251','Ніч на Івана на Купала','Може зорі зникли влітку,
Обернулись в дивну квітку,
І цвітуть у ніч купальську
Лиш один єдиний раз.
А нам доля обіцяла,
У чарівну ніч Купала
Ми удвох знайдем цю квітку -
І вона з''єднає нас,
І вона з''єднає нас!

Приспів:
Ніч на Івана, на Купала,
Таємниця обійняла!
Ніч на Івана, на Купала,
І вогнем зігріла нас!
В ніч на Івана, на Купала,
Доля щастя дарувала!
В ніч на Івана, на Купала,
Прилетів кохання час!

В небо подивіться влітку
І шукайте зоре-квітку,
Що в чарівну ніч Купала
Зачекалась тільки Вас,
В небо ви дивіться влітку
І шукайте зоре-квітку,
Що дарунком долі стала,
Як прийшов кохання час,
Як прийшов кохання час!

Приспів. (2)

Ніч, єдина ніч кохання,
Ніч - у небі сотні свіч,
А зоря де наша впала?..
Ніч...');
DELETE FROM song_links WHERE song_id = 'pisniua_2243910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2243910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2243910';
DELETE FROM songs WHERE id = 'pisniua_2243910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2243910','Ой, розвивайся та, сухий дубе','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Аудіозапис','Виконує хор "Червона калина" Дніпропетровського училища культури (ДУК) з м. Дніпропетровськ (Січеслав). Пісні з Дніпропетровщини та Запоріжжя.','Ой, розвивайся та, сухий дубе,
Завтра мороз буде,
Ой, собирайся, молодий козаче,    |
Завтра похід буде.                | (2)

Я й морозу та й не боюся,
Зараз розів''юся,
Я й походу та й не боюся,         |
Зараз соберуся.                   | (2)

Ой, розвився дуб зелененький
В полі край долини,
Ой, зібрався козак молоденький    |
В похід з України.                | (2)

Прощай, батьку, прощай, ненько,
Прощай, Україно!
Бо я їду на війноньку -
Може, там загину.

Ой, ви, верби, верби суховерхі,
Схиліться додолу,
Ой, ви, хлопці, славні Запорожці, |
Верніться до дому!                | (2)

Ой, ви, хлопці, славні Запорожці,
Хороші на вроду,
Хай не буде в світі переводу
Козацькому роду!                  | (2)
Гей!','[''pisni.org.ua'', ''cat:kozacki'', ''cat:naddnipryanski'', ''cat:narodni'', ''Козацькі пісні'', ''Наддніпрянські пісні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2243910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2243910','Ой, розвивайся та, сухий дубе','Ой, розвивайся та, сухий дубе,
Завтра мороз буде,
Ой, собирайся, молодий козаче,    |
Завтра похід буде.                | (2)

Я й морозу та й не боюся,
Зараз розів''юся,
Я й походу та й не боюся,         |
Зараз соберуся.                   | (2)

Ой, розвився дуб зелененький
В полі край долини,
Ой, зібрався козак молоденький    |
В похід з України.                | (2)

Прощай, батьку, прощай, ненько,
Прощай, Україно!
Бо я їду на війноньку -
Може, там загину.

Ой, ви, верби, верби суховерхі,
Схиліться додолу,
Ой, ви, хлопці, славні Запорожці, |
Верніться до дому!                | (2)

Ой, ви, хлопці, славні Запорожці,
Хороші на вроду,
Хай не буде в світі переводу
Козацькому роду!                  | (2)
Гей!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2243910_l1','pisniua_2243910','YouTube','https://www.youtube.com/watch?v=wlF0kVZaGJE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2243910_l2','pisniua_2243910','YouTube','https://www.youtube.com/watch?v=HzmwBTXF5e4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2242010';
DELETE FROM song_versions WHERE song_id = 'pisniua_2242010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2242010';
DELETE FROM songs WHERE id = 'pisniua_2242010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2242010','Пробач','Музика: Друга ріка Слова: Валерій Харчишин. Виконує: Друга ріка','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ти пам''ятаєш дні,
Як ми приїхали сюди
Підкорювати світ,
Ніби співали, грали,
Рвали струни в кач,
Але ж не падали до ніг...
Життя - два кроки в небо,     |
Гоп! І знову падаєш кудись... | (2)

Приспів:
Все мине, не плач!..
Все мине, прости, пробач!..
Все мине, не плач!..
Все мине, прости, пробач!..
Пробач...

Ти пам''ятаєш дні,
Коли у нас хотіли
Викрасти наш світ?..
Ніби могли, творили,
Знали, були там,
Але залишили ті дні...
Життя без болю,
Віри, правди, щастя
Волі не знайде...
Життя без горя -
Краще, знаю, може,
Але не живе...

Приспів. (2)

Все мине! Це все мине!
Це все мине!
Все мине! Це все мине!
Це все мине!
Все мине, не плач!..
Все мине, не плач!..
Пробач...','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2242010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2242010','Пробач','Ти пам''ятаєш дні,
Як ми приїхали сюди
Підкорювати світ,
Ніби співали, грали,
Рвали струни в кач,
Але ж не падали до ніг...
Життя - два кроки в небо,     |
Гоп! І знову падаєш кудись... | (2)

Приспів:
Все мине, не плач!..
Все мине, прости, пробач!..
Все мине, не плач!..
Все мине, прости, пробач!..
Пробач...

Ти пам''ятаєш дні,
Коли у нас хотіли
Викрасти наш світ?..
Ніби могли, творили,
Знали, були там,
Але залишили ті дні...
Життя без болю,
Віри, правди, щастя
Волі не знайде...
Життя без горя -
Краще, знаю, може,
Але не живе...

Приспів. (2)

Все мине! Це все мине!
Це все мине!
Все мине! Це все мине!
Це все мине!
Все мине, не плач!..
Все мине, не плач!..
Пробач...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2242010_l1','pisniua_2242010','YouTube','https://www.youtube.com/watch?v=hgKrrcSEFeg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2242010_l2','pisniua_2242010','YouTube','https://www.youtube.com/watch?v=xYFj58IZ36w','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2242010_l3','pisniua_2242010','YouTube','https://www.youtube.com/watch?v=zpuPP9v-3Ms','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2242010_l4','pisniua_2242010','YouTube','https://www.youtube.com/watch?v=OwURbcZfRCQ','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_2242920';
DELETE FROM song_versions WHERE song_id = 'pisniua_2242920';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2242920';
DELETE FROM songs WHERE id = 'pisniua_2242920';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2242920','Білим замело весь світ','Музика: Юрій Гнатковський, Юлія Лорд Слова: Юрій Гнатковський, Юлія Лорд. Виконує: Юрій Гнатковський, Юлія Лорд','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сніг мете, а значить скоро свято,
Білим запорошений поріг,
Подарунки треба готувати, бо,
Бо до нас крокує Новий рік!
І нехай минуть усі печалі,
Дух Різдва поселиться в серцях,
З''явиться ялинка у кімнаті -
І запалає радість у очах!

Білим, білим,           |
Білим замело весь світ! |
Скоро в гості           |
Прийде Новий рік!       | (2)

Сніг мете, вертеп селом кружляє,
В небесах лунає коляда,
Кум у кума щедрого гостює,
Бо до нас уже, бо до нас уже,
Бо до нас уже, бо до нас уже,
Бо до нас уже прийшли свята!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2242920'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2242920','Білим замело весь світ','Сніг мете, а значить скоро свято,
Білим запорошений поріг,
Подарунки треба готувати, бо,
Бо до нас крокує Новий рік!
І нехай минуть усі печалі,
Дух Різдва поселиться в серцях,
З''явиться ялинка у кімнаті -
І запалає радість у очах!

Білим, білим,           |
Білим замело весь світ! |
Скоро в гості           |
Прийде Новий рік!       | (2)

Сніг мете, вертеп селом кружляє,
В небесах лунає коляда,
Кум у кума щедрого гостює,
Бо до нас уже, бо до нас уже,
Бо до нас уже, бо до нас уже,
Бо до нас уже прийшли свята!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2242920_l1','pisniua_2242920','YouTube','https://www.youtube.com/watch?v=M6yQZ4UcXak','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2242313';
DELETE FROM song_versions WHERE song_id = 'pisniua_2242313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2242313';
DELETE FROM songs WHERE id = 'pisniua_2242313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2242313','Нами снили поліські пущі','Музика: Валерій Маренич Слова: Яр Славутич. Виконує: Валерій Маренич','uk','ukr_ssr_1919_1991',NULL,NULL,'Аудіозапис',NULL,'Нами снили поліські пущі,
Гайдамацькі яри в полях.
І прийшли ми до них, живущі,
Подолавши пекельний шлях.
Повернулися із Берези,
З-за Байкалу і з Соловків,
Багатющі, неначе крези,
Гнівом часу, жалем віків.

Приспів:
Земле люба! Долини отчі!
Це по вас на Вітчизни клич
Пробоєві проходять сотні,
Як воскресла з руїни Січ.
І так любо, допавши зміни,
Налітати, мов княжна рать.
Нам - визвольникам України -
Не приречено умирать!

Від Чернігова до Чернівців,
З-під Лугані за гордий Львів
По залогах стоять упівці
Розбуяли відплати гнів.
І так радісно, рідна земле,
Кров пролити за твій розмай,
Де покару тяжку приємле
Ворог волі, злютивши вкрай.

Приспів.

Нами снили поліські пущі,
Гайдамацькі яри в полях.
І прийшли ми до них, живущі,
Подолавши пекельний шлях.
Повернулися із Берези,
З-за Байкалу і з Соловків,
Багатющі, неначе крези,
Гнівом часу, жалем віків.

Приспів.

І так любо, допавши зміни,
Налітати, мов княжна рать.
Нам - визвольникам України -
Не приречено умирать!','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2242313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2242313','Нами снили поліські пущі','Нами снили поліські пущі,
Гайдамацькі яри в полях.
І прийшли ми до них, живущі,
Подолавши пекельний шлях.
Повернулися із Берези,
З-за Байкалу і з Соловків,
Багатющі, неначе крези,
Гнівом часу, жалем віків.

Приспів:
Земле люба! Долини отчі!
Це по вас на Вітчизни клич
Пробоєві проходять сотні,
Як воскресла з руїни Січ.
І так любо, допавши зміни,
Налітати, мов княжна рать.
Нам - визвольникам України -
Не приречено умирать!

Від Чернігова до Чернівців,
З-під Лугані за гордий Львів
По залогах стоять упівці
Розбуяли відплати гнів.
І так радісно, рідна земле,
Кров пролити за твій розмай,
Де покару тяжку приємле
Ворог волі, злютивши вкрай.

Приспів.

Нами снили поліські пущі,
Гайдамацькі яри в полях.
І прийшли ми до них, живущі,
Подолавши пекельний шлях.
Повернулися із Берези,
З-за Байкалу і з Соловків,
Багатющі, неначе крези,
Гнівом часу, жалем віків.

Приспів.

І так любо, допавши зміни,
Налітати, мов княжна рать.
Нам - визвольникам України -
Не приречено умирать!');
DELETE FROM song_links WHERE song_id = 'pisniua_2244859';
DELETE FROM song_versions WHERE song_id = 'pisniua_2244859';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2244859';
DELETE FROM songs WHERE id = 'pisniua_2244859';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2244859','Козацькі заручини','Музика: Анатолій Сердюк Слова: Анатолій Рекубрацький. Виконує: Анатолій Сердюк','uk','ukraine_before_1917',NULL,NULL,'http://pilipyurik.com/index.php?option=com_content&view=article&id=403:2011-01-10-14-31-07&catid=52:',NULL,'Дівчиноньку козак підмовляв під кленами:
- На Вкраїну, Марусь, турок злий напав.
Тож давай, тож давай спершу ми поженимось,
А тоді, а тоді сходим до попа.
- Ой, Іванку, боюсь наших батька-матінки,
Хоча, знаю, тобі вже пора на Січ,
Тож давай, тож давай забіжим до батюшки,
А тоді, а тоді буде шлюбна ніч.

Приспів:
До дівчат, до дівчат козакам хочеться,
Відпусти, отаман, хлопців хоч на ніч.
Бо дівчата й самі припливли б на Хортицю,
Та не можна дівкам і жінкам на Січ.
Підпусти, відпусти, батьку-отамане,
Відпусти, хоч на ніч, хлопців до дівчат,
Бо, поглянь, скільки їх — клятих бусурманів.
Україні ж треба ще більше козачат.

За дві курки їх піп записав до книжиці,
Ще й Хрестом золотим став їх осінять.
- Марусино моя, як я хочу ніжності.
Ну, дозволь ти себе хоч поцілувать.
- Ой, Іванку, твоя небезпечна подорож,
Може, ти іскладеш й голову за нас.
Від цілунків твоїх голова йде обертом,
Може, цей перший раз — наш останній раз.

Приспів.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2244859'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2244859','Козацькі заручини','Дівчиноньку козак підмовляв під кленами:
- На Вкраїну, Марусь, турок злий напав.
Тож давай, тож давай спершу ми поженимось,
А тоді, а тоді сходим до попа.
- Ой, Іванку, боюсь наших батька-матінки,
Хоча, знаю, тобі вже пора на Січ,
Тож давай, тож давай забіжим до батюшки,
А тоді, а тоді буде шлюбна ніч.

Приспів:
До дівчат, до дівчат козакам хочеться,
Відпусти, отаман, хлопців хоч на ніч.
Бо дівчата й самі припливли б на Хортицю,
Та не можна дівкам і жінкам на Січ.
Підпусти, відпусти, батьку-отамане,
Відпусти, хоч на ніч, хлопців до дівчат,
Бо, поглянь, скільки їх — клятих бусурманів.
Україні ж треба ще більше козачат.

За дві курки їх піп записав до книжиці,
Ще й Хрестом золотим став їх осінять.
- Марусино моя, як я хочу ніжності.
Ну, дозволь ти себе хоч поцілувать.
- Ой, Іванку, твоя небезпечна подорож,
Може, ти іскладеш й голову за нас.
Від цілунків твоїх голова йде обертом,
Може, цей перший раз — наш останній раз.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_224379';
DELETE FROM song_versions WHERE song_id = 'pisniua_224379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_224379';
DELETE FROM songs WHERE id = 'pisniua_224379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_224379','Із полону *','Музика: Едуард Драч Слова: Едуард Драч. Виконує: Едуард Драч','uk','ukraine_1991',NULL,NULL,'1. Аудіо-альбом "Едуард Драч. "Небо України" (1993-1998) 2. http://www.bulava.org/art/drach/nebo/izpolonu.html','Текст взято з джерела 2. За основу взято акорди з джерела 2. Уточнено й доповнено за джерелом 1. В останньому рядку куплета у джерелі 2 замість акорда Am подано акорд A, але в аудіо звучить акорд Am. * Далі грається на тих же акордах, що були до першої зміни тональності (як на початку пісні).','Вступ:  E Am Em E Am H Em  (x2)

Із полону, з-під Ізмаї-  лу
Вели козаченьки
В ясні зорі, на Вкраї- ну  |
Am         H   Em        | (x2)
Братців дорогеньких.       |

Отаман каже жартома:
"Чом не раді йти, братці милі?
Може далі йти сил нема,    |
То повертай до Ізмаїлу!"   | (x2)

А сто братців засміялись,
Інші сто сказали:
"Ми жіночок-вражаночок
Й діточок лишали.
Там жіночок-вражаночок
Й діточок лишали.

Одпустіть, жалкувать не будем,
За дніпровськії плавні,
Навік бачить вже забудем   |
Землі православні".        | (x2)

Зміна тональності:  C#

В отамана очі-хма-   ри,
Крівцею налиті:
"Ну йдіть, плодіть янича-  рів,  |
Hm      C#  F#m                 | (x2)
Бісовії ді- ти!"                 |

Зміна тональності:  H *

І коли закурився шлях,
Запорожці коней вертали,
Зі сльозами на очах        |
Козаки своїх рубали.       | (x2)

Програш:  E Am Em E Am H

Із полону, з-під Ізмаїлу
Вели козаченьки
В ясні зорі, на Вкраїну    |
Братців дорогеньких.       | (x2)

Програш:  E Am Em E Am H Em  (x2)','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_224379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_224379','Із полону *','Вступ:  E Am Em E Am H Em  (x2)

Із полону, з-під Ізмаї-  лу
Вели козаченьки
В ясні зорі, на Вкраї- ну  |
Am         H   Em        | (x2)
Братців дорогеньких.       |

Отаман каже жартома:
"Чом не раді йти, братці милі?
Може далі йти сил нема,    |
То повертай до Ізмаїлу!"   | (x2)

А сто братців засміялись,
Інші сто сказали:
"Ми жіночок-вражаночок
Й діточок лишали.
Там жіночок-вражаночок
Й діточок лишали.

Одпустіть, жалкувать не будем,
За дніпровськії плавні,
Навік бачить вже забудем   |
Землі православні".        | (x2)

Зміна тональності:  C#

В отамана очі-хма-   ри,
Крівцею налиті:
"Ну йдіть, плодіть янича-  рів,  |
Hm      C#  F#m                 | (x2)
Бісовії ді- ти!"                 |

Зміна тональності:  H *

І коли закурився шлях,
Запорожці коней вертали,
Зі сльозами на очах        |
Козаки своїх рубали.       | (x2)

Програш:  E Am Em E Am H

Із полону, з-під Ізмаїлу
Вели козаченьки
В ясні зорі, на Вкраїну    |
Братців дорогеньких.       | (x2)

Програш:  E Am Em E Am H Em  (x2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224379_l1','pisniua_224379','YouTube','https://www.youtube.com/watch?v=MU_vjlF3kVk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224379_l2','pisniua_224379','YouTube','https://www.youtube.com/watch?v=mPli7R8ZgWA','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224379_l3','pisniua_224379','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_224379_l4','pisniua_224379','http://www.bulava.org/art/drach/nebo/izpolonu.html','http://www.bulava.org/art/drach/nebo/izpolonu.html','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_2241573';
DELETE FROM song_versions WHERE song_id = 'pisniua_2241573';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2241573';
DELETE FROM songs WHERE id = 'pisniua_2241573';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2241573','Хай буде все пробачене пробачено','Музика: Леся Горлицька Слова: Ліна Костенко. Виконує: Зорепад','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'І все на світі треба пережити,
І кожен фініш - це, по суті, старт,
І наперед не треба ворожити,
І за минулим плакати не варт.

Приспів:
Хай буде все небачене побачено,     |
Хай буде все пробачене пробачено,   |
Єдине, що від нас іще залежить,     |
Принаймі вік прожити як належить... | (2)

А треба жити, якось треба жити, -
Це зветься досвід, витримка і гарт,
І наперед не треба ворожити,
І за минулим плакати не варт.
Отак як є, а може бути й гірше,
А може бути зовсім, зовсім зле,
А поки розум од біди не згірк ще,
Не будь рабом і смійся як Рабле!

Приспів','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2241573'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2241573','Хай буде все пробачене пробачено','І все на світі треба пережити,
І кожен фініш - це, по суті, старт,
І наперед не треба ворожити,
І за минулим плакати не варт.

Приспів:
Хай буде все небачене побачено,     |
Хай буде все пробачене пробачено,   |
Єдине, що від нас іще залежить,     |
Принаймі вік прожити як належить... | (2)

А треба жити, якось треба жити, -
Це зветься досвід, витримка і гарт,
І наперед не треба ворожити,
І за минулим плакати не варт.
Отак як є, а може бути й гірше,
А може бути зовсім, зовсім зле,
А поки розум од біди не згірк ще,
Не будь рабом і смійся як Рабле!

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2241573_l1','pisniua_2241573','YouTube','https://www.youtube.com/watch?v=pSACJ0bCuCI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2241573_l2','pisniua_2241573','YouTube','https://www.youtube.com/watch?v=1PXWEPZNF4M','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2242495';
DELETE FROM song_versions WHERE song_id = 'pisniua_2242495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2242495';
DELETE FROM songs WHERE id = 'pisniua_2242495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2242495','Ой, посіяв козак гречку','Українська народна пісня. Виконує: хор Українського Радіо (ім. П. Майбороди)','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой, посіяв козак гречку | (2)
На дубові на вершечку.  | (2)

Сам п''ю, сам гуляю,     | (2)
Сам стелюся, сам лягаю! | (2)
Сам п''ю, сам гуляю,     | (2)
Сам стелюся, сам лягаю! | (2)

Ой, посіяв козак гречку | (6)
На дубові на вершечку.  | (6)

Схватилася шура-бура,
Козакові гречку здула.

Сам п''ю, сам гуляю,
Сам стелюся, сам лягаю.
Сам п''ю, сам гуляю,
Сам стелюся, сам лягаю.

Схватилася шура-бура,   | (4)
Козакові гречку здула.  | (6)','[''pisni.org.ua'', ''cat:kozacki'', ''cat:naddnipryanski'', ''Козацькі пісні'', ''Наддніпрянські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2242495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2242495','Ой, посіяв козак гречку','Ой, посіяв козак гречку | (2)
На дубові на вершечку.  | (2)

Сам п''ю, сам гуляю,     | (2)
Сам стелюся, сам лягаю! | (2)
Сам п''ю, сам гуляю,     | (2)
Сам стелюся, сам лягаю! | (2)

Ой, посіяв козак гречку | (6)
На дубові на вершечку.  | (6)

Схватилася шура-бура,
Козакові гречку здула.

Сам п''ю, сам гуляю,
Сам стелюся, сам лягаю.
Сам п''ю, сам гуляю,
Сам стелюся, сам лягаю.

Схватилася шура-бура,   | (4)
Козакові гречку здула.  | (6)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2242495_l1','pisniua_2242495','YouTube','https://www.youtube.com/watch?v=BV1rAF2oY0E','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2244369';
DELETE FROM song_versions WHERE song_id = 'pisniua_2244369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2244369';
DELETE FROM songs WHERE id = 'pisniua_2244369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2244369','Емігрант','Музика: Олександр Семенців Слова: Євгенія Семенців-Кузишин. Виконує: Дует Розмай (США)','uk','ukraine_1991',NULL,NULL,'1-й диск "Там повінчав нас розмай"',NULL,'Один ти в країні чужій,
Ти один на чужій цій землі.
І дерева ось-тут не зелені такі,
Не співають так дзвінко пташки.
Під вікном вишні тут не цвітуть
Й над садком бджоли тут не гудуть
І молитви матусі ось-тут
Вечорами, як звично, не чуть.

Приспів:
Емігрант... Емігрант...
Не сумуй, емігрант, і не плач,
Все пройде: біль розлуки,
І розпач, і сльози.
Емігрант, ти не плач,
Від поразок гірких і невдач
Ще повернемось в свого
Дитинства дороги...

Важкий і тернистий шлях твій,
Як від дому ти у далині.
Це дорога і болю, і розпачу й сліз,
Що з''являються на самоті.
Так від відчаю було не раз,
Що здається, що сил вже нема,
І немов серед шляху, ось тут,
Стоїть непрохідна гора.

Приспів.

Ти так часто вночі не заснеш,
Емігранте, не спиться тобі.
А коли вже заснеш, то насняться тоді
Рідний край і літа молоді.
Це до болю знайоме й мені,
Мов додому лечу, уві сні...
Рідну матір побачить, домівку свою,
І барвінок, що в''ється в саду.

Приспів. (2)','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2244369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2244369','Емігрант','Один ти в країні чужій,
Ти один на чужій цій землі.
І дерева ось-тут не зелені такі,
Не співають так дзвінко пташки.
Під вікном вишні тут не цвітуть
Й над садком бджоли тут не гудуть
І молитви матусі ось-тут
Вечорами, як звично, не чуть.

Приспів:
Емігрант... Емігрант...
Не сумуй, емігрант, і не плач,
Все пройде: біль розлуки,
І розпач, і сльози.
Емігрант, ти не плач,
Від поразок гірких і невдач
Ще повернемось в свого
Дитинства дороги...

Важкий і тернистий шлях твій,
Як від дому ти у далині.
Це дорога і болю, і розпачу й сліз,
Що з''являються на самоті.
Так від відчаю було не раз,
Що здається, що сил вже нема,
І немов серед шляху, ось тут,
Стоїть непрохідна гора.

Приспів.

Ти так часто вночі не заснеш,
Емігранте, не спиться тобі.
А коли вже заснеш, то насняться тоді
Рідний край і літа молоді.
Це до болю знайоме й мені,
Мов додому лечу, уві сні...
Рідну матір побачить, домівку свою,
І барвінок, що в''ється в саду.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2244293';
DELETE FROM song_versions WHERE song_id = 'pisniua_2244293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2244293';
DELETE FROM songs WHERE id = 'pisniua_2244293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2244293','Василечки','(Посіяла василечки). Українська народна пісня. Виконує: Калина, Полтавський хор','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Пісні з Полтавщини. Пісні з Наддніпрянщини. Жартівливі пісні. Хорові пісні. Васильки (василечки / волошки) - символи чоловічої краси в українському фольклорі. Виконує хор "Калина" Полтавського Педагогічного Інституту.','Ой, казали вражі люди,
Що я заміж не піду -
Посіяла василечки
У вишневому саду!
І васильки мої,
І Василь при мені,
Він - чорнявий кучерявий,   |
Сподобався мені!            | (2)

Приспів:
В Катерини кудри в''ються,
А за нею хлопці в''ються,
Бідолашному Василю,         |
Обірвали всю чуприну!       | (2)

Ростіть, ростіть василечки,
Я вас буду поливать,
Ходіть, ходіть, славні хлопці,
Я вас буду милувать!
Ростіть, ростіть василечки,
А я буду поливать,
Доки жива і здорова,        |
Краще буду дівувать!        | (2)

Приспів.

Ой, Василю, Василечку,
серденько Василю!
Купи мені намистечко        |
На білую шию!               | (2)
Я - дівчина з Полтавщини,
Мусиш хлопче знати -
Вмію, вміє пісню заспівати, | (2)
Ще й затанцювати!           | (2)

А дівчина Катерина,
В неї личко, як калина!
Вміє пісню заспівати,       |
Ще й затанцювати!           | (2)','[''pisni.org.ua'', ''cat:naddnipryanski'', ''Наддніпрянські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2244293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2244293','Василечки','Ой, казали вражі люди,
Що я заміж не піду -
Посіяла василечки
У вишневому саду!
І васильки мої,
І Василь при мені,
Він - чорнявий кучерявий,   |
Сподобався мені!            | (2)

Приспів:
В Катерини кудри в''ються,
А за нею хлопці в''ються,
Бідолашному Василю,         |
Обірвали всю чуприну!       | (2)

Ростіть, ростіть василечки,
Я вас буду поливать,
Ходіть, ходіть, славні хлопці,
Я вас буду милувать!
Ростіть, ростіть василечки,
А я буду поливать,
Доки жива і здорова,        |
Краще буду дівувать!        | (2)

Приспів.

Ой, Василю, Василечку,
серденько Василю!
Купи мені намистечко        |
На білую шию!               | (2)
Я - дівчина з Полтавщини,
Мусиш хлопче знати -
Вмію, вміє пісню заспівати, | (2)
Ще й затанцювати!           | (2)

А дівчина Катерина,
В неї личко, як калина!
Вміє пісню заспівати,       |
Ще й затанцювати!           | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2244293_l1','pisniua_2244293','YouTube','https://www.youtube.com/watch?v=CG00Ev6O3qk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2246354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2246354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2246354';
DELETE FROM songs WHERE id = 'pisniua_2246354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2246354','Вже бубон грає','Музика: Сидір Воробкевич Слова: Сидір Воробкевич','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'Збірка пісень січових стрільців "Гей, Січ іде!" 1992 р.',NULL,'Вже бубон грає, треба вставати,
Пан сотник каже машерувати.
Приспів:
Тірбом, тірбом, тірбом, тірбом,
Тірбом, тірбом, тірбом, тірбом.
Бувай здорова, мила Вкраїно,
Не плач за мною, мила дівчино.
Приспів.
Через річеньку, через болото
Подай рученьку, моє золото.
Приспів.
Через рученьку, через биструю
Подай рученьку, на й поцілую.
Приспів.
Не час журитись, не час ридати,
Прийшла вже хвиля в бій виступати.
Приспів.
Свиснули кулі, гукнули гармати.
Ой, стрільці, час нам слави добувати.
Приспів.','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2246354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2246354','Вже бубон грає','Вже бубон грає, треба вставати,
Пан сотник каже машерувати.
Приспів:
Тірбом, тірбом, тірбом, тірбом,
Тірбом, тірбом, тірбом, тірбом.
Бувай здорова, мила Вкраїно,
Не плач за мною, мила дівчино.
Приспів.
Через річеньку, через болото
Подай рученьку, моє золото.
Приспів.
Через рученьку, через биструю
Подай рученьку, на й поцілую.
Приспів.
Не час журитись, не час ридати,
Прийшла вже хвиля в бій виступати.
Приспів.
Свиснули кулі, гукнули гармати.
Ой, стрільці, час нам слави добувати.
Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2246212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2246212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2246212';
DELETE FROM songs WHERE id = 'pisniua_2246212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2246212','Колискова','Слова: Назар Гузій','uk','ukraine_1991',NULL,NULL,'http://vk.com/nazarko_takui_odun','[Жодну з частин даного вірша не можна копіювати або відтворювати в будь-якій формі без дозволу автора]©','Ти спи, мій козаче малий,
Засинай, майбутній гетьмане,
Чекає твій кінь вороний
Із пісні від батька й від мами.

Ти спи, мій козаче малий,
Бо ще трішки й пора воювати,
Спи, мій сину... Очка закрий,
Виростеш і будеш нас захищати.

Спи, козаче наш маленький,
Завтра ми поїдемо на Січ,
Спи, наш сину дорогенький...
Огорнула землю сива ніч...

Спи, козаче, в бій тобі ще рано,
Сину мій, ти, засинай,
Будеш скоро нашим ти гетьманом...
Люлі - люлі... Баю... Бай...

Спи, синочку рідний, - треба спати,
Закрий очка, сину... Закривай,
Україну завтра захищати...
Спи, синочку милий... Засинай...','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2246212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2246212','Колискова','Ти спи, мій козаче малий,
Засинай, майбутній гетьмане,
Чекає твій кінь вороний
Із пісні від батька й від мами.

Ти спи, мій козаче малий,
Бо ще трішки й пора воювати,
Спи, мій сину... Очка закрий,
Виростеш і будеш нас захищати.

Спи, козаче наш маленький,
Завтра ми поїдемо на Січ,
Спи, наш сину дорогенький...
Огорнула землю сива ніч...

Спи, козаче, в бій тобі ще рано,
Сину мій, ти, засинай,
Будеш скоро нашим ти гетьманом...
Люлі - люлі... Баю... Бай...

Спи, синочку рідний, - треба спати,
Закрий очка, сину... Закривай,
Україну завтра захищати...
Спи, синочку милий... Засинай...');
DELETE FROM song_links WHERE song_id = 'pisniua_2246055';
DELETE FROM song_versions WHERE song_id = 'pisniua_2246055';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2246055';
DELETE FROM songs WHERE id = 'pisniua_2246055';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2246055','Я їду в Карпати','Українська народна пісня. Виконує: Назарій Яремчук','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'В теплую літнюю пору,
А чи в холодну зиму
Кличуть Карпатськії гори,
Маревом доброго сну,
В зоряні ночі й до ранку,
У безтурботні роки!
Вперше зустрів там горянку
І покохав назавжди!

Приспів:
Я їду в Карпати,      |
Зелені Карпати        |
Рукою торкнутися зір! |
Там молоді роки       |
І друзів багато,      |
Там дихаю силою гір!  | (2)

Ще пам''ятають смереки -
Юні студентські роки
Линули в гори далекі
Гуртом, неначе птахи.
Жовта старенька гітара,
Тріскіт гілок на вогні,
І як завжди було мало
Пісні, що лилась вночі!

Приспів. (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2246055'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2246055','Я їду в Карпати','В теплую літнюю пору,
А чи в холодну зиму
Кличуть Карпатськії гори,
Маревом доброго сну,
В зоряні ночі й до ранку,
У безтурботні роки!
Вперше зустрів там горянку
І покохав назавжди!

Приспів:
Я їду в Карпати,      |
Зелені Карпати        |
Рукою торкнутися зір! |
Там молоді роки       |
І друзів багато,      |
Там дихаю силою гір!  | (2)

Ще пам''ятають смереки -
Юні студентські роки
Линули в гори далекі
Гуртом, неначе птахи.
Жовта старенька гітара,
Тріскіт гілок на вогні,
І як завжди було мало
Пісні, що лилась вночі!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2245471';
DELETE FROM song_versions WHERE song_id = 'pisniua_2245471';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2245471';
DELETE FROM songs WHERE id = 'pisniua_2245471';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2245471','Києве мій','Музика: Ігор Шамо Слова: Дмитро Луценко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вступ.
Грає море зелене,
Тихий день догора.
Дорогими для мене
Стали схили Дніпра,
Де колишуться віти   |
Зако- ханих мрій...  |
Am          Dm      | (x2)
Як тебе не любити,   |
Ки- єве мій!         |

В очі дивляться канни,
Серце в них переллю.
Хай розкажуть коханій,
Як я вірно люблю.
Буду мріяти й жити   |
На крилах надій...   | (x2)
Як тебе не любити,   |
Києве мій!           |

Спить натомлене місто
Мирним, лагідним сном.
Ген вогні, як намисто,
Розцвіли над Дніпром.
Вечорів оксамити,    |
Мов щастя прибій...  | (x3)
Як тебе не любити,   |
Києве мій!           |','[''pisni.org.ua'', ''cat:kyyiv'', ''cat:patriotic'', ''Пісні про Київ'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2245471'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2245471','Києве мій','Вступ.
Грає море зелене,
Тихий день догора.
Дорогими для мене
Стали схили Дніпра,
Де колишуться віти   |
Зако- ханих мрій...  |
Am          Dm      | (x2)
Як тебе не любити,   |
Ки- єве мій!         |

В очі дивляться канни,
Серце в них переллю.
Хай розкажуть коханій,
Як я вірно люблю.
Буду мріяти й жити   |
На крилах надій...   | (x2)
Як тебе не любити,   |
Києве мій!           |

Спить натомлене місто
Мирним, лагідним сном.
Ген вогні, як намисто,
Розцвіли над Дніпром.
Вечорів оксамити,    |
Мов щастя прибій...  | (x3)
Як тебе не любити,   |
Києве мій!           |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2245471_l1','pisniua_2245471','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2243354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2243354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2243354';
DELETE FROM songs WHERE id = 'pisniua_2243354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2243354','Viva Європа!','Музика: Гайтана Слова: Гайтана. Виконує: Гайтана','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Це наше свято,
Футбольне свято,
Де спільний дух
Об''єднує серця!
Ми - переможці!
Нас тут багато
І всі разом
Ми йдемо до кінця!

Vіva Європа!
Свято єдності країн!
Vіva Європа!
Ми з тобою всі як один!
Побажаємо один одному
Любові і добра,
Vіva Європа!
Ми - єдина сім''я!

Побажаємо один одному
Любові і добра,
Vіva Європа!
Ми - єдина сім''я!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2243354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2243354','Viva Європа!','Це наше свято,
Футбольне свято,
Де спільний дух
Об''єднує серця!
Ми - переможці!
Нас тут багато
І всі разом
Ми йдемо до кінця!

Vіva Європа!
Свято єдності країн!
Vіva Європа!
Ми з тобою всі як один!
Побажаємо один одному
Любові і добра,
Vіva Європа!
Ми - єдина сім''я!

Побажаємо один одному
Любові і добра,
Vіva Європа!
Ми - єдина сім''я!');
DELETE FROM song_links WHERE song_id = 'pisniua_22457';
DELETE FROM song_versions WHERE song_id = 'pisniua_22457';
DELETE FROM songs_fts WHERE song_id = 'pisniua_22457';
DELETE FROM songs WHERE id = 'pisniua_22457';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_22457','Дам я яловицю','Українська народна пісня. Виконує: Анна Чеберенчик, Тріо бандуристок Українського Радіо, Ансамбль Львівського Університету "Черемош", Христина Охітва','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Дам я яловицю,
Дам я яловицю,
І цілого коня.
Жеби моя доня,
Жеби моя доня
Не сиділа дома.

Приспів:
Розмарія, як лелія,
На біло розквітала, гей.
Наша Анничка, лем за Яничка,  |
Би ся оддавала.               | (2)

Виняла-м перечко,
Виняла-м перечко
Дала шугайові.
Наробила-м болю,
Наробила-м болю
Свому Янічкові.

Приспів.

Янічку, Янічку,
Янічку, Янічку,
Повіч ми на віру.
Ци мя возьмеш, ци ні
Ци мя возьмеш, ци ні
Як ся зостарію?

Приспів','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_22457'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_22457','Дам я яловицю','Дам я яловицю,
Дам я яловицю,
І цілого коня.
Жеби моя доня,
Жеби моя доня
Не сиділа дома.

Приспів:
Розмарія, як лелія,
На біло розквітала, гей.
Наша Анничка, лем за Яничка,  |
Би ся оддавала.               | (2)

Виняла-м перечко,
Виняла-м перечко
Дала шугайові.
Наробила-м болю,
Наробила-м болю
Свому Янічкові.

Приспів.

Янічку, Янічку,
Янічку, Янічку,
Повіч ми на віру.
Ци мя возьмеш, ци ні
Ци мя возьмеш, ци ні
Як ся зостарію?

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22457_l1','pisniua_22457','YouTube','https://www.youtube.com/watch?v=NIjGFa01_tI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22457_l2','pisniua_22457','YouTube','https://www.youtube.com/watch?v=_dnU8wBuSb0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22457_l3','pisniua_22457','YouTube','https://www.youtube.com/watch?v=ENuxKO1y6hg','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22457_l4','pisniua_22457','YouTube','https://www.youtube.com/watch?v=1cAlR3UTOWI','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_2247414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2247414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2247414';
DELETE FROM songs WHERE id = 'pisniua_2247414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2247414','О, чарівні, прекрасні очі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'О, чарівні, прекрасні очі,
Зачарували ви мене.
Вас бачу часто серед ночі,
Без вас життя моє страшне.

Не знаю, що таке зі мною,
Та вами марю повсякчас.
Живу лиш мрією одною:
Навік сховатися від вас.

І де б не був, мені повсюди
Ваш погляд світить, як маяк.
Підступність вашу я забуду,
Але чарівність - аж ніяк!

Здіймаю руки я до неба,
Бо муки тяжкії терплю.
Мені вас проклинати треба,
А я, шалений, все ж люблю!','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2247414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2247414','О, чарівні, прекрасні очі','О, чарівні, прекрасні очі,
Зачарували ви мене.
Вас бачу часто серед ночі,
Без вас життя моє страшне.

Не знаю, що таке зі мною,
Та вами марю повсякчас.
Живу лиш мрією одною:
Навік сховатися від вас.

І де б не був, мені повсюди
Ваш погляд світить, як маяк.
Підступність вашу я забуду,
Але чарівність - аж ніяк!

Здіймаю руки я до неба,
Бо муки тяжкії терплю.
Мені вас проклинати треба,
А я, шалений, все ж люблю!');
DELETE FROM song_links WHERE song_id = 'pisniua_224675';
DELETE FROM song_versions WHERE song_id = 'pisniua_224675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_224675';
DELETE FROM songs WHERE id = 'pisniua_224675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_224675','Пісня вікінгів',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'По морю, по морю, по плинних валах,
Пливем на щоглистих, щоглистих зміях,
За нами, за нами буйний вітер віє.
Грізна, грізна, грізна Валикирія.
Гей хлопці-молодці, меч гострий в руці
Промірим всі землі, всі землі-краї
Стаху ми не знаєм, бо щитом нас крий.
Грізна, грізна, грізна Валикирія.
Хто вернесь додому, той з золота п''є
А хто в лютій січі, у січі умре
Той з Одіном вічно в Вальгаллі ясніє
Грізна, грізна, грізна Валикирія.
Агой, агой, агой!
Візьму я нецки
Візьму я нецьки і коромисло
То буде човен, а то весло
Море, як казка, хвилі, як мрія,
Пливу і співаю: "Санта Лючія".
Аж в тім розбився човен на морі,
А я спинився в морськім таборі,
Кухня, як казка, кухар, як мрія,
Лежу й співаю: "Санта Лючія"
Люблю я дуже всі морські вправи,
Пливу по водах човном дірявим,
Сонце, як казка, плесо, як мрія.
Гребу й співаю: "Санта Лючія"','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_224675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_224675','Пісня вікінгів','По морю, по морю, по плинних валах,
Пливем на щоглистих, щоглистих зміях,
За нами, за нами буйний вітер віє.
Грізна, грізна, грізна Валикирія.
Гей хлопці-молодці, меч гострий в руці
Промірим всі землі, всі землі-краї
Стаху ми не знаєм, бо щитом нас крий.
Грізна, грізна, грізна Валикирія.
Хто вернесь додому, той з золота п''є
А хто в лютій січі, у січі умре
Той з Одіном вічно в Вальгаллі ясніє
Грізна, грізна, грізна Валикирія.
Агой, агой, агой!
Візьму я нецки
Візьму я нецьки і коромисло
То буде човен, а то весло
Море, як казка, хвилі, як мрія,
Пливу і співаю: "Санта Лючія".
Аж в тім розбився човен на морі,
А я спинився в морськім таборі,
Кухня, як казка, кухар, як мрія,
Лежу й співаю: "Санта Лючія"
Люблю я дуже всі морські вправи,
Пливу по водах човном дірявим,
Сонце, як казка, плесо, як мрія.
Гребу й співаю: "Санта Лючія"');
DELETE FROM song_links WHERE song_id = 'pisniua_2246653';
DELETE FROM song_versions WHERE song_id = 'pisniua_2246653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2246653';
DELETE FROM songs WHERE id = 'pisniua_2246653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2246653','Козаченьки','Музика: Леонід Попернацький Слова: Володимир Матвієнко. Виконує: Роман Салань','uk','ukraine_before_1917',NULL,NULL,'Продюсер',NULL,'Клятву вірності народу
За державу і свободу
Будуть нести "Козаченьки"
Від роду до роду!

Приспів:
Та Вітчизну обнімімо,
Честь і славу збережімо.
Ми за Україну! Ми за Україну!

Ми вчимося в батька й неньки
Україну будувати.
Завжди будуть "Козаченьки"
Волю захищати!

Приспів.

Рідній нашій Україні
Присягаємо ми нині.
Тож ставайте всі раденько
В коло, "Козаченьки"!

Приспів','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2246653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2246653','Козаченьки','Клятву вірності народу
За державу і свободу
Будуть нести "Козаченьки"
Від роду до роду!

Приспів:
Та Вітчизну обнімімо,
Честь і славу збережімо.
Ми за Україну! Ми за Україну!

Ми вчимося в батька й неньки
Україну будувати.
Завжди будуть "Козаченьки"
Волю захищати!

Приспів.

Рідній нашій Україні
Присягаємо ми нині.
Тож ставайте всі раденько
В коло, "Козаченьки"!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2248410';
DELETE FROM song_versions WHERE song_id = 'pisniua_2248410';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2248410';
DELETE FROM songs WHERE id = 'pisniua_2248410';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2248410','Марш Мукачівського прикордонного загону','Музика: Іван Пустовий Слова: Микола Флінта. Виконує: Державний ансамбль прикордонних військ України','uk','ukraine_1991',NULL,NULL,'авторське подання','Соліст: В. Гог.','Край благословенної краси
Там, де починається Держава,
Де Карпатські гори і ліси,
Прикордонна гордо лине слава -
Де Карпатські гори і ліси.

Приспів:
Знак Пошани дружної родини,
Сяє Орден на стязі твоїм.
Честь і гідність, доблесть України -
Це Мукачівський славний загін!
Це Мукачівський славний загін!

Стрічка річки Тиси в''ється вдаль,
Гори стрімко рвуться понад хмари,
Де смереки ніжать сивий плай,
Прикордонні тут стоять застави -
Де смереки ніжать сивий плай.

Приспів.

Пильно службу бойову несуть,
Щоб на наш кордон не зазіхали,
Батьківщини спокій бережуть
Витязі вкраїнської держави -
Батьківщини спокій бережуть!

Приспів','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2248410'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2248410','Марш Мукачівського прикордонного загону','Край благословенної краси
Там, де починається Держава,
Де Карпатські гори і ліси,
Прикордонна гордо лине слава -
Де Карпатські гори і ліси.

Приспів:
Знак Пошани дружної родини,
Сяє Орден на стязі твоїм.
Честь і гідність, доблесть України -
Це Мукачівський славний загін!
Це Мукачівський славний загін!

Стрічка річки Тиси в''ється вдаль,
Гори стрімко рвуться понад хмари,
Де смереки ніжать сивий плай,
Прикордонні тут стоять застави -
Де смереки ніжать сивий плай.

Приспів.

Пильно службу бойову несуть,
Щоб на наш кордон не зазіхали,
Батьківщини спокій бережуть
Витязі вкраїнської держави -
Батьківщини спокій бережуть!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2246818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2246818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2246818';
DELETE FROM songs WHERE id = 'pisniua_2246818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2246818','Забудуть мене всі','Музика: Мар''ян Гаденко Слова: Ганна Дущак. Виконує: Гурт Дзвони','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'І знову прилетять, і відлетять лелеки,
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
