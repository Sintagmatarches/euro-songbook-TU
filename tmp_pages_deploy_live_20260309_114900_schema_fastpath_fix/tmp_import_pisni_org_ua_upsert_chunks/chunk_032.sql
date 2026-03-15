DELETE FROM song_links WHERE song_id = 'pisniua_3467222';
DELETE FROM song_versions WHERE song_id = 'pisniua_3467222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3467222';
DELETE FROM songs WHERE id = 'pisniua_3467222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3467222','РЕКВІЄМ','Музика: Тетяна VLASNA Слова: Тетяна VLASNA, Ала Іващенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Нема таких осінніх партитур,
Які б зіграли ноту завершальну,
Оцих жорстких, диявольських тортур,
Оцього горя ноту прощавальну!..
Нема таких смичків, немає струн,
Немає рук умілих музикантів,
Які б розклад змінили віщих трун
І дії оправдали окупантів...

Приспів:
Коли твій син не повертається з війни,
Коли село встріча Героя на колінах,
Спинися, музико, і тишу обійми,
Хай син побуде хоть на мить у рідних стінах...
Двохсотий - цифра, та непрощена вона,
Бо це обірване чиєсь життя і доля...
Мужчин найкращих забирає ця війна,
Безжально косить, сипле смертю серед поля...

Допоки виполіскують дощі,
Допоки наші діти в пазурищах,
Життя давно не ціниться ніким,
І сльози горя, лють на кладовищах...
Хіба їх ладен злікувати звук?..
Хіба під силу відчай музикантах?..
Серед жаливих, здичавілих мук
Лиш образ Богоматері Оранти...

Приспів.

Коли твій син не повертається з війни,
Коли село встріча Героя на колінах,
Спинися, музико, і тишу обійми,
Хай син побуде хоть на мить у рідних стінах...','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3467222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3467222','РЕКВІЄМ','Нема таких осінніх партитур,
Які б зіграли ноту завершальну,
Оцих жорстких, диявольських тортур,
Оцього горя ноту прощавальну!..
Нема таких смичків, немає струн,
Немає рук умілих музикантів,
Які б розклад змінили віщих трун
І дії оправдали окупантів...

Приспів:
Коли твій син не повертається з війни,
Коли село встріча Героя на колінах,
Спинися, музико, і тишу обійми,
Хай син побуде хоть на мить у рідних стінах...
Двохсотий - цифра, та непрощена вона,
Бо це обірване чиєсь життя і доля...
Мужчин найкращих забирає ця війна,
Безжально косить, сипле смертю серед поля...

Допоки виполіскують дощі,
Допоки наші діти в пазурищах,
Життя давно не ціниться ніким,
І сльози горя, лють на кладовищах...
Хіба їх ладен злікувати звук?..
Хіба під силу відчай музикантах?..
Серед жаливих, здичавілих мук
Лиш образ Богоматері Оранти...

Приспів.

Коли твій син не повертається з війни,
Коли село встріча Героя на колінах,
Спинися, музико, і тишу обійми,
Хай син побуде хоть на мить у рідних стінах...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3467222_l1','pisniua_3467222','YouTube','https://www.youtube.com/watch?v=pz2smNm3ZBA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3475323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3475323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3475323';
DELETE FROM songs WHERE id = 'pisniua_3475323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3475323','ТННП','(Ти ніколи не помреш). Музика: Руслан Горовий Слова: Руслан Горовий','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На маленькій землі так багато любові.
На маленькій землі стільки місця для всіх.
Вбити нашу любов, потопити у крові -
На таке може бути здатен виключно псих.
Я прикрию тебе. Я прикрию собою.
Так було і так буде, допоки ми тут.
На маленькій землі все лікують любов''ю,
Гоять рани своїм і своїх бережуть.

Приспів:
Якщо янголом станеш за моїми плечима,
Я дивитимусь далі твоїми очима!
Для любові немає кордонів і меж.
Доки житиму я, ти ніколи не помреш!..

На маленькій землі так багато любові,
Навіть там, де здається, її і нема.
Вона в кожній клітині і в кожному слові,
Навіть там, де гримить і лютує війна.
Я дивлюся на світ крізь твої окуляри.
Ти в футболках моїх засинаєш давно.
І тепло моїх рук крізь твої капіляри
Йде по тілу і гріє, як гарне вино.

Приспів.

На маленькій землі суміш жаху і болю
Розриває і нищить усе навкруги.
На маленькій землі час від часу до бою
Мають стати всі ті, хто цей світ полюбив.
Мої руки у шрамах і наче стигмати,
Час від часу на шкірі проявляє те зло,
Що не хоче любити, хоче тільки вбивати,
Те, що перетворило війни на ремесло.

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3475323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3475323','ТННП','На маленькій землі так багато любові.
На маленькій землі стільки місця для всіх.
Вбити нашу любов, потопити у крові -
На таке може бути здатен виключно псих.
Я прикрию тебе. Я прикрию собою.
Так було і так буде, допоки ми тут.
На маленькій землі все лікують любов''ю,
Гоять рани своїм і своїх бережуть.

Приспів:
Якщо янголом станеш за моїми плечима,
Я дивитимусь далі твоїми очима!
Для любові немає кордонів і меж.
Доки житиму я, ти ніколи не помреш!..

На маленькій землі так багато любові,
Навіть там, де здається, її і нема.
Вона в кожній клітині і в кожному слові,
Навіть там, де гримить і лютує війна.
Я дивлюся на світ крізь твої окуляри.
Ти в футболках моїх засинаєш давно.
І тепло моїх рук крізь твої капіляри
Йде по тілу і гріє, як гарне вино.

Приспів.

На маленькій землі суміш жаху і болю
Розриває і нищить усе навкруги.
На маленькій землі час від часу до бою
Мають стати всі ті, хто цей світ полюбив.
Мої руки у шрамах і наче стигмати,
Час від часу на шкірі проявляє те зло,
Що не хоче любити, хоче тільки вбивати,
Те, що перетворило війни на ремесло.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3475323_l1','pisniua_3475323','YouTube','https://www.youtube.com/watch?v=cyxNiEWMW7w','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3456121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3456121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3456121';
DELETE FROM songs WHERE id = 'pisniua_3456121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3456121','Повітряна тривога в Криму','Музика: Дмитро Осичнюк Слова: Дмитро Осичнюк. Виконує: SPIV BRATIV','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Вперше за цю війну
Повітряна тривога в Криму,
А все це тому,
Що за скоїне біль не минув...

Невже в Криму бавовна?
Дим піднявся чорний,
А місяць майже повний,
Ніч буде безсонна!..
Отже долетіло,
Значить все можливо!
А це ще не відплата,
Це лише початок!

Приспів. (2)

Крим - це Україна!
Україна сильна!
Може і повільно
Та своє ми звільним!
Це розкол режиму -
Раша загориться!
Все почалось з Криму,
Кримом закінчиться!

Приспів. (2)

Все почалось з Криму,
Кримом закінчиться!
Їх тепер ми знаємо:
Більш не повториться!
Все почалось з Криму, |
Кримом закінчиться!   | (2)','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3456121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3456121','Повітряна тривога в Криму','Приспів:
Вперше за цю війну
Повітряна тривога в Криму,
А все це тому,
Що за скоїне біль не минув...

Невже в Криму бавовна?
Дим піднявся чорний,
А місяць майже повний,
Ніч буде безсонна!..
Отже долетіло,
Значить все можливо!
А це ще не відплата,
Це лише початок!

Приспів. (2)

Крим - це Україна!
Україна сильна!
Може і повільно
Та своє ми звільним!
Це розкол режиму -
Раша загориться!
Все почалось з Криму,
Кримом закінчиться!

Приспів. (2)

Все почалось з Криму,
Кримом закінчиться!
Їх тепер ми знаємо:
Більш не повториться!
Все почалось з Криму, |
Кримом закінчиться!   | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3456121_l1','pisniua_3456121','YouTube','https://www.youtube.com/watch?v=o6LudeVAP5w','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_34626';
DELETE FROM song_versions WHERE song_id = 'pisniua_34626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_34626';
DELETE FROM songs WHERE id = 'pisniua_34626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_34626','Ой на святий вечір',NULL,'uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой на святий вечір,
Рівно опівночі.
Прилетіли Ангелики
Христу до помочи.

Святі Ангелики
Прилетіли з неба,
Дали знати Йосипові,
Що тікати треба.

Утікали вони
Горов та долинов,
Хоронили життя своє
З маленьков дитинов.

А на розказ Божий
Свята Божа Мати
Веліла нам, християнам,
Заколядувати.','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''Пісні на християнську тематику'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_34626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_34626','Ой на святий вечір','Ой на святий вечір,
Рівно опівночі.
Прилетіли Ангелики
Христу до помочи.

Святі Ангелики
Прилетіли з неба,
Дали знати Йосипові,
Що тікати треба.

Утікали вони
Горов та долинов,
Хоронили життя своє
З маленьков дитинов.

А на розказ Божий
Свята Божа Мати
Веліла нам, християнам,
Заколядувати.');
DELETE FROM song_links WHERE song_id = 'pisniua_3463168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3463168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3463168';
DELETE FROM songs WHERE id = 'pisniua_3463168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3463168','Пісня Бориса','Музика: Вадим Гомоляка Слова: Дмитро Луценко','uk','ukraine_1991',NULL,NULL,'В. Гомоляка. Дві пісні із кінофільму "Радість моя", Советский композитор, Київ — 1962 р.','Послухати мелодію та переглянути/завантажити ноти можна тут: https://musescore.com/user/56304587/scores/22415134','Край села шелестить верба.
Впала ніч на землю голуба.
Загляда місяць в тихий став. |
Нащо я щиро так покохав?     | (2)

В самоті серце защемить...
Як тебе, кохана, розлюбить.
Я ходжу до верби дарма,      |
Бо тебе розлюбити сил нема.  | (2)

З білих зір я вінок сплету,
Дам тобі веселку золоту,
Полотном стежку застелю,
Бо тебе лиш одну я люблю.
Запашні віти нахилю,
Бо тебе лиш одну я люблю!','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3463168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3463168','Пісня Бориса','Край села шелестить верба.
Впала ніч на землю голуба.
Загляда місяць в тихий став. |
Нащо я щиро так покохав?     | (2)

В самоті серце защемить...
Як тебе, кохана, розлюбить.
Я ходжу до верби дарма,      |
Бо тебе розлюбити сил нема.  | (2)

З білих зір я вінок сплету,
Дам тобі веселку золоту,
Полотном стежку застелю,
Бо тебе лиш одну я люблю.
Запашні віти нахилю,
Бо тебе лиш одну я люблю!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3463168_l1','pisniua_3463168','YouTube','https://www.youtube.com/watch?v=v3Se9SE-NX0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3463020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3463020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3463020';
DELETE FROM songs WHERE id = 'pisniua_3463020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3463020','Не мовчи','Музика: YAKTAK Слова: Ярослав Карпук, Катерина Мєдвєдєва. Виконує: YAKTAK','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Приспів:
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
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_348261','Студентка','Слова: народні','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Якось то було раз у маю,
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
DELETE FROM song_links WHERE song_id = 'pisniua_3486424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3486424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3486424';
DELETE FROM songs WHERE id = 'pisniua_3486424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3486424','Собаченя Димок','Слова: Леонід Луговий','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Стрибає від щастя
Сріблястий собачка -
Він Петрика щойно зустрів.
Бо кращого друга
Немає в окрузі,
Від будки до самих морів.

Приспів:
Смішний Димок, що скачеш ти?..
В тобі хлопчина друга бачить.
Тримають песики завжди
Закон і слово "гав" собаче.

Димок босоніжки
Попробував трішки
І в будку сховався мерщій.
У Петрика мама -
Така собі дама,
А Петрик у цуцика свій!

Приспів.

Він біг по калюжі,
Захекався дуже,
Від лапок до носа промок.
Отримуй, будь ласка,
Поп-корн і ковбаску,
Веселий собачка Димок.

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3486424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3486424','Собаченя Димок','Стрибає від щастя
Сріблястий собачка -
Він Петрика щойно зустрів.
Бо кращого друга
Немає в окрузі,
Від будки до самих морів.

Приспів:
Смішний Димок, що скачеш ти?..
В тобі хлопчина друга бачить.
Тримають песики завжди
Закон і слово "гав" собаче.

Димок босоніжки
Попробував трішки
І в будку сховався мерщій.
У Петрика мама -
Така собі дама,
А Петрик у цуцика свій!

Приспів.

Він біг по калюжі,
Захекався дуже,
Від лапок до носа промок.
Отримуй, будь ласка,
Поп-корн і ковбаску,
Веселий собачка Димок.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_347364';
DELETE FROM song_versions WHERE song_id = 'pisniua_347364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_347364';
DELETE FROM songs WHERE id = 'pisniua_347364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_347364','Ой, чиє ж то жито','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'чула в родині, бабуня співали','не впевнена, що це повний текст пісні','Ой, чиє ж то жито, чиї ж то покоси (2р.)
Чия ж то дівчина розпустила коси?

Коси розпустила, заміж не ходила, (2р.)
Козак має жінку, його й полюбила.

Козак має жінку, щей діточок троє, (2р.)
А моє серденько крається на двоє.

Крається на двоє, на дві половини, (2р.)
Одна - для козака, друга - для дівчини','[''pisni.org.ua'', ''cat:slobozhanski'', ''Пісні з слобожанщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_347364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_347364','Ой, чиє ж то жито','Ой, чиє ж то жито, чиї ж то покоси (2р.)
Чия ж то дівчина розпустила коси?

Коси розпустила, заміж не ходила, (2р.)
Козак має жінку, його й полюбила.

Козак має жінку, щей діточок троє, (2р.)
А моє серденько крається на двоє.

Крається на двоє, на дві половини, (2р.)
Одна - для козака, друга - для дівчини');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_347364_l1','pisniua_347364','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_348869';
DELETE FROM song_versions WHERE song_id = 'pisniua_348869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_348869';
DELETE FROM songs WHERE id = 'pisniua_348869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_348869','Ой, роду наш красний','(У полі калина). Українська народна пісня. Виконує: Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,'Кружало: Ніна Матвієнко. Найкраще. — Київ, 2004.','*У записі Ніна Матвієнко співає: "Небагато нас є".','У полі калина,
У полі червона.
Хорошенько цвіте.

Приспів:
Ой роду наш красний,
Роду наш прекрасний,
Не цураймося, признаваймося,
Бо багацько нас є.*

Що перший цвіточок -
То рідний батенько.
Хорошенько цвіте.

Приспів.

Що другий цвіточок -
То рідная ненька.
Хорошенько цвіте.

Приспів.

Що третій цвіточок -
Рідна сторононька.
Хорошенько цвіте.

Приспів.','[''pisni.org.ua'', ''cat:narodni'', ''cat:patriotic'', ''cat:pro-batkiv'', ''Народні пісні'', ''Патріотичні пісні'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_348869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_348869','Ой, роду наш красний','У полі калина,
У полі червона.
Хорошенько цвіте.

Приспів:
Ой роду наш красний,
Роду наш прекрасний,
Не цураймося, признаваймося,
Бо багацько нас є.*

Що перший цвіточок -
То рідний батенько.
Хорошенько цвіте.

Приспів.

Що другий цвіточок -
То рідная ненька.
Хорошенько цвіте.

Приспів.

Що третій цвіточок -
Рідна сторононька.
Хорошенько цвіте.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_348869_l1','pisniua_348869','YouTube','https://www.youtube.com/watch?v=TvurONrpUWw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_348869_l2','pisniua_348869','YouTube','https://www.youtube.com/watch?v=eRmyIOQQevU','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3479065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3479065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3479065';
DELETE FROM songs WHERE id = 'pisniua_3479065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3479065','Поверніться живими, герої!','Музика: Ілля Резніков Слова: Ілля Резніков','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ця пісня лунає з самої землі,
В ній заклик поколінь
Та прагнення до волі!
Нікуди не зникала, вона була завжди,
Її слова зберіг вільний вітер в полі!
Гори додали своє життя,
Б''ють в барабан хвилі у морі,
Бачили різне: відвагу, любов,
Пам''ять крізь час та надію крізь горе!..

Приспів:
Поверніться живими, герої!
Ви мусите жити під сонцем новим
Для тих, що чекали вдома,
Для тих, що не повернулись живими!
Поверніться живими, будь ласка!
Розкажете дітям ще на ніч казку!
Під сонцем новим розвіється дим,
Брудні ворогів розтануть сліди!

Якби ж одної чистої віри
Достатньо було, щоб перемогти,
І правди одної достатньо аби
Смерті до ворога шлях знайти.
Доволі якби було слова поета,
Щоби назад полетіли ракети,
Якби ж, почувши дитини плач,
Із сорому скоїв самогубство кат.
Але ні... Якщо б не герої,
Якби не їх воля залізна,
Коли б не взяли до рук зброї,
Складати вірші було б пізно...
Вчорашні звичайні люди
Сьогодні тримають землю і небо,
Ніхто не знає, що завтра буде,
Але вони роблять все, що треба!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3479065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3479065','Поверніться живими, герої!','Ця пісня лунає з самої землі,
В ній заклик поколінь
Та прагнення до волі!
Нікуди не зникала, вона була завжди,
Її слова зберіг вільний вітер в полі!
Гори додали своє життя,
Б''ють в барабан хвилі у морі,
Бачили різне: відвагу, любов,
Пам''ять крізь час та надію крізь горе!..

Приспів:
Поверніться живими, герої!
Ви мусите жити під сонцем новим
Для тих, що чекали вдома,
Для тих, що не повернулись живими!
Поверніться живими, будь ласка!
Розкажете дітям ще на ніч казку!
Під сонцем новим розвіється дим,
Брудні ворогів розтануть сліди!

Якби ж одної чистої віри
Достатньо було, щоб перемогти,
І правди одної достатньо аби
Смерті до ворога шлях знайти.
Доволі якби було слова поета,
Щоби назад полетіли ракети,
Якби ж, почувши дитини плач,
Із сорому скоїв самогубство кат.
Але ні... Якщо б не герої,
Якби не їх воля залізна,
Коли б не взяли до рук зброї,
Складати вірші було б пізно...
Вчорашні звичайні люди
Сьогодні тримають землю і небо,
Ніхто не знає, що завтра буде,
Але вони роблять все, що треба!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3479065_l1','pisniua_3479065','YouTube','https://www.youtube.com/watch?v=RKz2E2egfKE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3485065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3485065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3485065';
DELETE FROM songs WHERE id = 'pisniua_3485065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3485065','Колись було','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Колись були кури,
Тепер канарейки,
Колись були гроші,
А тепер наклейки!

Приспів:
Гойра, Маруська, гойра!   |
Маруська, гойра,          |
Марунька, ай, цвай, драй! | (2)

Колись було файно,
А тепер ше ліпше,
Колись був товариш,
Тепер - комуніста!

Приспів.

Колись були хлопці,
Хлопці золотії,
А тепер всі лисі,
І усі крутії!

Приспів.

Колись були дівки
Моцні, як сапери,
Тепер сі лишили
Худі, як ровери!

Приспів.

Колись були газди,
Файно газдували,
А тепер ті газди
В Чехи сі подали!

Приспів.

Колись були жінки -
Добресенькі тьотки,
А тепер мігери,
Лишень робить пльотки!

Приспів.

Колись були діти,
Добрі та слухняні,
Тепер дискотека,
Танцювають п''яні.

Приспів.

Колись були діти,
До школи ходили,
А тепер ті діти
Школу завалили!

Приспів.

Колись була добра
Та самая влада,
Тепер троха ліпша
Верховная Рада.

Приспів.

Колись були яйці,
Ковбаса дешева,
А тепер задурно
Лишень дощ із неба!

Приспів.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3485065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3485065','Колись було','Колись були кури,
Тепер канарейки,
Колись були гроші,
А тепер наклейки!

Приспів:
Гойра, Маруська, гойра!   |
Маруська, гойра,          |
Марунька, ай, цвай, драй! | (2)

Колись було файно,
А тепер ше ліпше,
Колись був товариш,
Тепер - комуніста!

Приспів.

Колись були хлопці,
Хлопці золотії,
А тепер всі лисі,
І усі крутії!

Приспів.

Колись були дівки
Моцні, як сапери,
Тепер сі лишили
Худі, як ровери!

Приспів.

Колись були газди,
Файно газдували,
А тепер ті газди
В Чехи сі подали!

Приспів.

Колись були жінки -
Добресенькі тьотки,
А тепер мігери,
Лишень робить пльотки!

Приспів.

Колись були діти,
Добрі та слухняні,
Тепер дискотека,
Танцювають п''яні.

Приспів.

Колись були діти,
До школи ходили,
А тепер ті діти
Школу завалили!

Приспів.

Колись була добра
Та самая влада,
Тепер троха ліпша
Верховная Рада.

Приспів.

Колись були яйці,
Ковбаса дешева,
А тепер задурно
Лишень дощ із неба!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3485065_l1','pisniua_3485065','YouTube','https://www.youtube.com/watch?v=22_2BogMJvM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3492560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3492560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3492560';
DELETE FROM songs WHERE id = 'pisniua_3492560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3492560','За хмарами','Музика: Володимир Будейчук Слова: Лариса Архипенко. Виконує: Наталія Бучинська','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Приходить вечір, невипитим вином
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
DELETE FROM song_links WHERE song_id = 'pisniua_3489727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3489727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3489727';
DELETE FROM songs WHERE id = 'pisniua_3489727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3489727','Ходить Миколай','Музика: Микола Ведмедеря Слова: Юлія Хандожинська','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'А по світу ходить,
Ходить Миколай,
Ти лише бажання
Вчасно загадай!
Будь сміливим, чемним,
Чесним, добрим будь -
І тоді гостинці
З радістю прийдуть!

Приспів:
Миколаю, Миколаю,
Цілий рік тебе чекаю!
Миколаю, Миколай,
Всіх зі святом привітай!

Зимова пороша
Заміта сліди,
І куди не глянеш -
Білі килими.
А по білім-білім,
Білім килимку
Миколай дарунки
Нам несе в мішку!

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3489727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3489727','Ходить Миколай','А по світу ходить,
Ходить Миколай,
Ти лише бажання
Вчасно загадай!
Будь сміливим, чемним,
Чесним, добрим будь -
І тоді гостинці
З радістю прийдуть!

Приспів:
Миколаю, Миколаю,
Цілий рік тебе чекаю!
Миколаю, Миколай,
Всіх зі святом привітай!

Зимова пороша
Заміта сліди,
І куди не глянеш -
Білі килими.
А по білім-білім,
Білім килимку
Миколай дарунки
Нам несе в мішку!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3489727_l1','pisniua_3489727','YouTube','https://www.youtube.com/watch?v=J4mC-OwN8t0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_349020';
DELETE FROM song_versions WHERE song_id = 'pisniua_349020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_349020';
DELETE FROM songs WHERE id = 'pisniua_349020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_349020','Ой зацвіла червона калина','Українська народна пісня. Виконує: Рідна пісня','uk','ukraine_1991',NULL,'1996','1. "Українські народні пісні", К., "Мистецтво", 1955. Кн. 1, с. 461. 2. Поголосся та деякі відмінності в тексті: так співали цю пісню в с. Катеринополі (Черкащина) принаймні в 50-х роках: В. Триліс','В репертуарі жіночого гурту "Рідна пісня" (м. Київ) з 1996 року.','Ой зацвіла червона калина
Над криницею.
Горе жити, моя рідна ненько,
Жити за п''яницею.

Бо п''яниця - то не робітниця,
Що день, що ніч п''є,
А як прийде із корчми додому -
Мене молодую б''є.

Потихесеньку, помалесеньку,
Моя мати, йди:
Спить п''яниця в рубленій коморі -
Гляди його не збуди.

Ой нехай же він спить, та нехай вже він спить,
Та бодай він не встав,
Що він твою бідну голівоньку
Та й навік заклопотав.

Ой не лай, мати, не клени, мати,
П''яницю мого,
Бо як умре - зостануться діти,
Горе буде без нього','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_349020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_349020','Ой зацвіла червона калина','Ой зацвіла червона калина
Над криницею.
Горе жити, моя рідна ненько,
Жити за п''яницею.

Бо п''яниця - то не робітниця,
Що день, що ніч п''є,
А як прийде із корчми додому -
Мене молодую б''є.

Потихесеньку, помалесеньку,
Моя мати, йди:
Спить п''яниця в рубленій коморі -
Гляди його не збуди.

Ой нехай же він спить, та нехай вже він спить,
Та бодай він не встав,
Що він твою бідну голівоньку
Та й навік заклопотав.

Ой не лай, мати, не клени, мати,
П''яницю мого,
Бо як умре - зостануться діти,
Горе буде без нього');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_349020_l1','pisniua_349020','YouTube','https://www.youtube.com/watch?v=BfC137U_h9o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_349020_l2','pisniua_349020','YouTube','https://www.youtube.com/watch?v=JdDGbWkwAYU','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3490020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3490020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3490020';
DELETE FROM songs WHERE id = 'pisniua_3490020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3490020','Осiнь, осiнь вже пришла','Музика: Євгеній Скрипкiн Слова: Євгеній Скрипкiн','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Осінь, осінь вже пришла,
Жовте листя принесла!
Дощик, дощик всюди ллє,
Нам гуляти не дає!..
Дощик, дощик всюди ллє,
Нам гуляти не дає!..

Парасольки ми візьмем,
I на вулицю підем!
Крапай, дощик, на малят,
Поливай усе підряд!..
Крапай, дощик, на малят,
Поливай усе підряд!..','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3490020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3490020','Осiнь, осiнь вже пришла','Осінь, осінь вже пришла,
Жовте листя принесла!
Дощик, дощик всюди ллє,
Нам гуляти не дає!..
Дощик, дощик всюди ллє,
Нам гуляти не дає!..

Парасольки ми візьмем,
I на вулицю підем!
Крапай, дощик, на малят,
Поливай усе підряд!..
Крапай, дощик, на малят,
Поливай усе підряд!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3490020_l1','pisniua_3490020','YouTube','https://www.youtube.com/watch?v=E_sFsiBbiZk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3490020_l2','pisniua_3490020','YouTube','https://www.youtube.com/watch?v=F32a5bZP-Uc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_349168';
DELETE FROM song_versions WHERE song_id = 'pisniua_349168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_349168';
DELETE FROM songs WHERE id = 'pisniua_349168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_349168','Пісня про Україну','Музика: Тетянa Лободa Слова: Любов Забашта','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Над Дніпровою сагою линуть думи за тобою.
Твої очі волошкові, твої далі барвінкові.
Хліб без тебе зачерствіє, слово батьківське завяне.
Україно, Україно, сторона моя кохана.

Пшениченька в полі грає, світять води, як Дунаї.
Хлюпотять озера й ріки. Дорога моя навіки.
Як зірниця запалаєш крізь моря і океани,
Україно, Україно, сторона моя кохана.

Виростай, моя висока, червоній, немов калина.
Мов кохана кароока, рідна нене Україно!
Журавлі у небі линуть, тай вертають додомоньку,
Україна, Україна - Дніпровая сторононька.','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_349168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_349168','Пісня про Україну','Над Дніпровою сагою линуть думи за тобою.
Твої очі волошкові, твої далі барвінкові.
Хліб без тебе зачерствіє, слово батьківське завяне.
Україно, Україно, сторона моя кохана.

Пшениченька в полі грає, світять води, як Дунаї.
Хлюпотять озера й ріки. Дорога моя навіки.
Як зірниця запалаєш крізь моря і океани,
Україно, Україно, сторона моя кохана.

Виростай, моя висока, червоній, немов калина.
Мов кохана кароока, рідна нене Україно!
Журавлі у небі линуть, тай вертають додомоньку,
Україна, Україна - Дніпровая сторононька.');
DELETE FROM song_links WHERE song_id = 'pisniua_3499323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3499323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3499323';
DELETE FROM songs WHERE id = 'pisniua_3499323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3499323','Що у світі стало?','Музика: Оксана Пічугіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Що у світі стало?
Та й пора настала,
Бо син Божий народився,   |
Щоби світ змінився!       | (2)

Приспів:
Щедрий вечір!
Добрий вечір!
Із Різдвом Христовим!

Що у світі стало?
Зірка засіяла!
Сповістила всім новину    |
Про Марію й Сина!         | (2)

Приспів.

Що у світі стало?
В яслах сповивала,
Серця крихітну частинку,  |
Божую дитинку.            | (2)

Приспів.

Що у світі стало?
Свічка запалала,
Хай із вогником Різдвяним |
Щастя людям стане!        | (2)

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3499323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3499323','Що у світі стало?','Що у світі стало?
Та й пора настала,
Бо син Божий народився,   |
Щоби світ змінився!       | (2)

Приспів:
Щедрий вечір!
Добрий вечір!
Із Різдвом Христовим!

Що у світі стало?
Зірка засіяла!
Сповістила всім новину    |
Про Марію й Сина!         | (2)

Приспів.

Що у світі стало?
В яслах сповивала,
Серця крихітну частинку,  |
Божую дитинку.            | (2)

Приспів.

Що у світі стало?
Свічка запалала,
Хай із вогником Різдвяним |
Щастя людям стане!        | (2)

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3499323_l1','pisniua_3499323','YouTube','https://www.youtube.com/watch?v=pgKhNLB0Zd8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3499323_l2','pisniua_3499323','YouTube','https://www.youtube.com/watch?v=Ci_mTy8l5Vc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3489121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3489121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3489121';
DELETE FROM songs WHERE id = 'pisniua_3489121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3489121','На крилах любові','Музика: Ніна Кордонська Слова: Ніна Кордонська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Як же серце моє
В ту хвилину відчуло,
Що це ти, саме ти,
Назустріч ідеш!
Що стежина моя
І твоя перетнулись -
І ми так покохали
Усім серцем без меж!

Приспів:
І на крилах любові
Ми полетіли!
Теплий сонячний вітер
Закружляв наші дні!
І з небес зорепади
Нам так ясно світили,
І весни всміхались
Тобі і мені!

І в цю радісну мить
Все немовби розквітло,
Навіть сонце сіяло
Яскравіш з висоти!
Скільки в серці тепла,
Скільки ніжності й світла,
Що у світі од нас
Щасливіш не знайти!

Приспів.

Вірю, зможемо вдвох
Крізь літа і завіхи
Нашу вірну любов
Назавжди зберегти!
Бо ж на нашій землі
Кожен любить і мріє
Свою долю щасливу,
Єдину знайти!

Приспів. (2)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3489121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3489121','На крилах любові','Як же серце моє
В ту хвилину відчуло,
Що це ти, саме ти,
Назустріч ідеш!
Що стежина моя
І твоя перетнулись -
І ми так покохали
Усім серцем без меж!

Приспів:
І на крилах любові
Ми полетіли!
Теплий сонячний вітер
Закружляв наші дні!
І з небес зорепади
Нам так ясно світили,
І весни всміхались
Тобі і мені!

І в цю радісну мить
Все немовби розквітло,
Навіть сонце сіяло
Яскравіш з висоти!
Скільки в серці тепла,
Скільки ніжності й світла,
Що у світі од нас
Щасливіш не знайти!

Приспів.

Вірю, зможемо вдвох
Крізь літа і завіхи
Нашу вірну любов
Назавжди зберегти!
Бо ж на нашій землі
Кожен любить і мріє
Свою долю щасливу,
Єдину знайти!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3489121_l1','pisniua_3489121','YouTube','https://www.youtube.com/watch?v=FkyJHyj4E1Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_349467';
DELETE FROM song_versions WHERE song_id = 'pisniua_349467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_349467';
DELETE FROM songs WHERE id = 'pisniua_349467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_349467','Чорна Кура','(Як iйшов я). Українська народна пісня. Виконує: Бурдон','uk','ukraine_before_1917',NULL,NULL,'1. http://burdon.lviv.ua/songs.html','Подкарпатська народна. За основу взято русинську версію, а останнiй куплет (вiд дiвчини) спiвають на Лемкiвщинi. Виконує гурт "Бурдон".','Як iйшов я з Дебрецина додому
Зайшла менi чорна кура дорогу
Іди, іди, чорна кура, додому
Не заваджай, не заваджай на дорозi никому

Як iйшов я з Дебрецина до Хусту
Тай знайшов си вишиваную хустку
Ой ци мила, ци не мила ю шила
Лем би она, лем би она вишиваною была

Як-ем iйшла вчера гвечер з Панського
Здибала-м там на дорозi милого
Так ня стискав i притискав до себе
Ци ты пiдеш, ци ты пiдеш, драга душо, за мене','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:vesnyanky-hayivky'', ''Лемківські пісні'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_349467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_349467','Чорна Кура','Як iйшов я з Дебрецина додому
Зайшла менi чорна кура дорогу
Іди, іди, чорна кура, додому
Не заваджай, не заваджай на дорозi никому

Як iйшов я з Дебрецина до Хусту
Тай знайшов си вишиваную хустку
Ой ци мила, ци не мила ю шила
Лем би она, лем би она вишиваною была

Як-ем iйшла вчера гвечер з Панського
Здибала-м там на дорозi милого
Так ня стискав i притискав до себе
Ци ты пiдеш, ци ты пiдеш, драга душо, за мене');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_349467_l1','pisniua_349467','YouTube','https://www.youtube.com/watch?v=WeLCEk-H0gI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_349467_l2','pisniua_349467','YouTube','https://www.youtube.com/watch?v=7E4j2WP3kGk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_349467_l3','pisniua_349467','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3497663';
DELETE FROM song_versions WHERE song_id = 'pisniua_3497663';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3497663';
DELETE FROM songs WHERE id = 'pisniua_3497663';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3497663','Прийми, о, Всепітая Божая Мати',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Прийми, о, Всепітая Божая Мати,
Подячні від нас молитви.
Тобі їх заносим від щирого серця,
Прийми їх, Маріє, прийми!

Приспів:
Маріє, Ти є наша надія!
Маріє, Ти для нас є покров!
Будь з нами, наша Мати єдина,
Даруєм Тобі щиру любов!

Ти нам є правдива дорога до Бога,
І нам Тебе Бог дарував,
Тож зглянься, Пречистая Діво, над нами,
До стіп Твоїх кожен припав.

Приспів.

Благаєм, Богородице Діво Маріє,
Провадь нас крізь хвилі життя,
Хай Твої святі материнські обійми
Хоронять від всякого зла!

Приспів.

Ми просим, Святая Небесна Царице,
Моли свого Сина за нас,
Щоб душі очистив і сповнив любов''ю,
Простив всіх, помилував нас.

Приспів.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3497663'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3497663','Прийми, о, Всепітая Божая Мати','Прийми, о, Всепітая Божая Мати,
Подячні від нас молитви.
Тобі їх заносим від щирого серця,
Прийми їх, Маріє, прийми!

Приспів:
Маріє, Ти є наша надія!
Маріє, Ти для нас є покров!
Будь з нами, наша Мати єдина,
Даруєм Тобі щиру любов!

Ти нам є правдива дорога до Бога,
І нам Тебе Бог дарував,
Тож зглянься, Пречистая Діво, над нами,
До стіп Твоїх кожен припав.

Приспів.

Благаєм, Богородице Діво Маріє,
Провадь нас крізь хвилі життя,
Хай Твої святі материнські обійми
Хоронять від всякого зла!

Приспів.

Ми просим, Святая Небесна Царице,
Моли свого Сина за нас,
Щоб душі очистив і сповнив любов''ю,
Простив всіх, помилував нас.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3497525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3497525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3497525';
DELETE FROM songs WHERE id = 'pisniua_3497525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3497525','Миколай Святий іде','Музика: С. Грушко Слова: С. Грушко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Миколай Святий іде
І даруночки несе,
У торбинку поскладав
Для дітей усе, що мав:
І цукерки і горішки,
Гарні іграшки та книжки.
У торбинку поскладав
Для дітей усе, що мав!

Миколай вночі ходив
Та нікого не збудив,
З нами він пожартував,
Подаруночки сховав:
Під подушку чи під щічки,
В чобітки чи рукавички.
З нами він пожартував,
Подаруночки сховав.

Ті, хто чемними були,
Подаруночки знайшли!
Миколай усе, що мав,
Із торбиночки роздав:
І цукерки, і горішки,
Гарні іграшки та книжки!
Миколай усе, що мав,
Із торбиночки роздав!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3497525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3497525','Миколай Святий іде','Миколай Святий іде
І даруночки несе,
У торбинку поскладав
Для дітей усе, що мав:
І цукерки і горішки,
Гарні іграшки та книжки.
У торбинку поскладав
Для дітей усе, що мав!

Миколай вночі ходив
Та нікого не збудив,
З нами він пожартував,
Подаруночки сховав:
Під подушку чи під щічки,
В чобітки чи рукавички.
З нами він пожартував,
Подаруночки сховав.

Ті, хто чемними були,
Подаруночки знайшли!
Миколай усе, що мав,
Із торбиночки роздав:
І цукерки, і горішки,
Гарні іграшки та книжки!
Миколай усе, що мав,
Із торбиночки роздав!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3497525_l1','pisniua_3497525','YouTube','https://www.youtube.com/watch?v=frz0QQVq6W0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_34929';
DELETE FROM song_versions WHERE song_id = 'pisniua_34929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_34929';
DELETE FROM songs WHERE id = 'pisniua_34929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_34929','Балада про мальви','(Мальви). Музика: Володимир Івасюк Слова: Богдан Гура. Виконує: Софія Ротару, Василь Зінкевич, Віктор Грибик, Любов Камінська, Володимир Івасюк, Рената Бабак, Оксана Муха, Ольга Умінська, Інеса Братущик, Орест Хома','uk','ukraine_1991',NULL,NULL,'http://ivasyuk.domivka.net/','mp3: http://ivasyuk.domivka.net/pages.php?l=uks=mp3p=balada_pro_malvy Підбір акордів: Lubko','1 Строфа:
Заснули мальви біля хати,
Їх місяць вийшов колихати.
І тільки мати не засне,    |
Мати не засне, —           |
Жде вона мене.             |
Приспів 1:
О, мамо рідна, ти мене не жди,
Em              Edіm Hm
Мені в наш дім ніколи не прийти.
З мойого серця мальва проросла
І кров''ю зацвіла.
Не плач же, мамо, ти ж бо не одна,
Em            Edіm Hm
Багато мальв насіяла війна.
Вони шепочуть для тебе восени:
— Засни, засни.
2 Строфа:
У матерів є любі діти,
А у моєї — тільки квіти.
Самотні квіти під вікном,  |
Квіти під вікном           | (2)
Заснули вже давно.         |
Приспів 2:
Як сонце зійде — вийди на поріг,
І люди вклоняться тобі до ніг.
Пройдися полем — мальви буйних лук
Торкнуться твоїх рук.
Життя — як пісня, що не віддзвенить.
Em               Edіm   Hm
Я в мальві знов для тебе буду жить.
Якщо ж я ласку не встигла принести —
Dm      E   | модуляція на 3 тони вгору
Прости, прости.
Життя — як пісня, що не віддзвенить.
Am               Adіm   Em
Я в мальві знов для тебе буду жить.
Якщо ж я ласку не встигла принести —
Dm      E   | або можна ще раз
Прости, прости.  | модуляцію повторити на Gm, A','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:nostalgia'', ''cat:patriotic'', ''cat:pro-batkiv'', ''Пісні про красу природи'', ''Пісні з ностальгічними мотивами'', ''Патріотичні пісні'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_34929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_34929','Балада про мальви','1 Строфа:
Заснули мальви біля хати,
Їх місяць вийшов колихати.
І тільки мати не засне,    |
Мати не засне, —           |
Жде вона мене.             |
Приспів 1:
О, мамо рідна, ти мене не жди,
Em              Edіm Hm
Мені в наш дім ніколи не прийти.
З мойого серця мальва проросла
І кров''ю зацвіла.
Не плач же, мамо, ти ж бо не одна,
Em            Edіm Hm
Багато мальв насіяла війна.
Вони шепочуть для тебе восени:
— Засни, засни.
2 Строфа:
У матерів є любі діти,
А у моєї — тільки квіти.
Самотні квіти під вікном,  |
Квіти під вікном           | (2)
Заснули вже давно.         |
Приспів 2:
Як сонце зійде — вийди на поріг,
І люди вклоняться тобі до ніг.
Пройдися полем — мальви буйних лук
Торкнуться твоїх рук.
Життя — як пісня, що не віддзвенить.
Em               Edіm   Hm
Я в мальві знов для тебе буду жить.
Якщо ж я ласку не встигла принести —
Dm      E   | модуляція на 3 тони вгору
Прости, прости.
Життя — як пісня, що не віддзвенить.
Am               Adіm   Em
Я в мальві знов для тебе буду жить.
Якщо ж я ласку не встигла принести —
Dm      E   | або можна ще раз
Прости, прости.  | модуляцію повторити на Gm, A');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_34929_l1','pisniua_34929','YouTube','https://www.youtube.com/watch?v=YpSZ2U9bCvc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_34929_l2','pisniua_34929','YouTube','https://www.youtube.com/watch?v=YdF0dOD05t4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_34929_l3','pisniua_34929','YouTube','https://www.youtube.com/watch?v=C90mWRI7bAY','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_34929_l4','pisniua_34929','YouTube','https://www.youtube.com/watch?v=2ANBfx2NBwc','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_34929_l5','pisniua_34929','YouTube','https://www.youtube.com/watch?v=FZulJCQLAgU','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_34929_l6','pisniua_34929','YouTube','https://www.youtube.com/watch?v=siFlR1ZyMC4','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_34929_l7','pisniua_34929','YouTube','https://www.youtube.com/watch?v=hPI5l-hFXAE','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_34929_l8','pisniua_34929','YouTube','https://www.youtube.com/watch?v=4Xugh6FH-SM','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_34929_l9','pisniua_34929','YouTube','https://www.youtube.com/watch?v=cQ272MSMqrI','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_34929_l10','pisniua_34929','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,10);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_34929_l11','pisniua_34929','www.orpheusandlyra.com','https://www.orpheusandlyra.com','external',NULL,11);
DELETE FROM song_links WHERE song_id = 'pisniua_3497962';
DELETE FROM song_versions WHERE song_id = 'pisniua_3497962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3497962';
DELETE FROM songs WHERE id = 'pisniua_3497962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3497962','Мій друг','Музика: Наталія Дзеньків Слова: Наталія Дзеньків','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Прийшов той час, коли
За мить змінились наші долі,
З твоїх очей сяє блакить,
Нема в ній страху й болю...
Повернись у мої сни!..
Повернись і живи!.. Живи!..

Приспів:
Мій друг,
Яким би не було життя,
Якою б не була війна,
З тобою сміється душа,
В ній наша сила!
Мій друг,
Яким би не було життя,
А істина є одна:
То наша з тобою земля!
Вона є вільна!

Настане день, який завжди
Ми будем пам''ятати,
Але тебе, як в перший раз,
Я хочу обіймати!
Повернись у мої сни!..
Повернись і живи!.. Живи!..

Приспів.

То наша з тобою земля!
Вона є вільна!
Вона є вільна!
Вільна! Вільна! Вільна!','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3497962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3497962','Мій друг','Прийшов той час, коли
За мить змінились наші долі,
З твоїх очей сяє блакить,
Нема в ній страху й болю...
Повернись у мої сни!..
Повернись і живи!.. Живи!..

Приспів:
Мій друг,
Яким би не було життя,
Якою б не була війна,
З тобою сміється душа,
В ній наша сила!
Мій друг,
Яким би не було життя,
А істина є одна:
То наша з тобою земля!
Вона є вільна!

Настане день, який завжди
Ми будем пам''ятати,
Але тебе, як в перший раз,
Я хочу обіймати!
Повернись у мої сни!..
Повернись і живи!.. Живи!..

Приспів.

То наша з тобою земля!
Вона є вільна!
Вона є вільна!
Вільна! Вільна! Вільна!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3497962_l1','pisniua_3497962','YouTube','https://www.youtube.com/watch?v=8TBDQkcrpg8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3501424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3501424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3501424';
DELETE FROM songs WHERE id = 'pisniua_3501424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3501424','Не таке Різдво','Музика: Ірина Федишин Слова: Віталій Човник, Петро Половко. Виконує: Ірина Федишин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В декого вікна вкриті морозом,
В декого вікон просто нема...
В декого хата заметена снігом,
В декого хати просто нема...

Приспів:
Не таке Різдво, якби хотілося...
Не таке Різдво в дитинстві снилося...
Не таке Різдво, щоб всі зустрілися...
Та Ісус прийшов, щоб ми зігрілися!..
Щоб ми зігрілися!..

Ялинка сама є не такою,
І страви різдвяні зовсім не ті...
Не так йде вертеп з колядою,
Сніжинки падуть не такі...
Не такі...

Приспів.

А на Різдво так хочеться дива,
Щоби закінчилась війна!..
Боже, даруй нашим воїнам крила,
Щоб Україна знов розцвіла!

Приспів.

В Маріуполь та Бахмут повернуться люди,
Повернеться світло в українські міста!
Закінчиться смуток, біль і тиивоги,
І у Криму зазвучить коляда!

Не таке Різдво, якби хотілося...
Не таке Різдво в дитинстві снилося...
Не таке Різдво, щоб всі зустрілися...
Та Ісус прийшов, щоб ми зігрілися!
Не таке Різдво, якби хотілося...
Не таке Різдво в дитинстві снилося...
Не таке Різдво, щоб всі зустрілися...
Та Ісус прийшов, щоб ми зігрілися
Його теплом! Його теплом!

Речитатив:
Я знаю, надіюсь і вірю,
Що миром засяє зоря!
Розженуть увесь смуток, зневіру
Маленькі долоні Христа!
Ми любимо, хлопці, Вас, знайте,
І ділимось серця теплом!
Чекаємо Вас, повертайтесь!
Вітаємо Всіх із Різдвом!','[''pisni.org.ua'', ''cat:ato'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3501424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3501424','Не таке Різдво','В декого вікна вкриті морозом,
В декого вікон просто нема...
В декого хата заметена снігом,
В декого хати просто нема...

Приспів:
Не таке Різдво, якби хотілося...
Не таке Різдво в дитинстві снилося...
Не таке Різдво, щоб всі зустрілися...
Та Ісус прийшов, щоб ми зігрілися!..
Щоб ми зігрілися!..

Ялинка сама є не такою,
І страви різдвяні зовсім не ті...
Не так йде вертеп з колядою,
Сніжинки падуть не такі...
Не такі...

Приспів.

А на Різдво так хочеться дива,
Щоби закінчилась війна!..
Боже, даруй нашим воїнам крила,
Щоб Україна знов розцвіла!

Приспів.

В Маріуполь та Бахмут повернуться люди,
Повернеться світло в українські міста!
Закінчиться смуток, біль і тиивоги,
І у Криму зазвучить коляда!

Не таке Різдво, якби хотілося...
Не таке Різдво в дитинстві снилося...
Не таке Різдво, щоб всі зустрілися...
Та Ісус прийшов, щоб ми зігрілися!
Не таке Різдво, якби хотілося...
Не таке Різдво в дитинстві снилося...
Не таке Різдво, щоб всі зустрілися...
Та Ісус прийшов, щоб ми зігрілися
Його теплом! Його теплом!

Речитатив:
Я знаю, надіюсь і вірю,
Що миром засяє зоря!
Розженуть увесь смуток, зневіру
Маленькі долоні Христа!
Ми любимо, хлопці, Вас, знайте,
І ділимось серця теплом!
Чекаємо Вас, повертайтесь!
Вітаємо Всіх із Різдвом!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3501424_l1','pisniua_3501424','YouTube','https://www.youtube.com/watch?v=7NMeLOF9Fe0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3515065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3515065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3515065';
DELETE FROM songs WHERE id = 'pisniua_3515065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3515065','Місто добра','Музика: Світлана Тарабарова Слова: Світлана Тарабарова','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Побачивши та почувши цей потужний меседж чистої любові - ви вже ніколи не залишитесь байдужими і сподіваюсь, приєднаєтесь до чарівників - янголів для маленьких дітей та всіх, хто потребує допомоги тут. Місто Добра — це місце сили та любові для дітей, жінок, бабусь та собачок. Це найбільший шелтер в Україні з медичною ліцензією, командою юристів, освітніми можливості та втіленими мріями для підопічних Міста Добра. Засновниця Міста Добра Марта Левченко разом з командою щодня шукає нові шляхи допомоги українським дітям — і в цьому дуже потрібна ваша допомога! Команда працює над розширенням Медичного центру "Дім метеликів", де важкохворі діти отримають паліативне медичне піклування, а також реабілітацію, тепло та всю можливу підтримку.','Це місто - місто добра,
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
DELETE FROM song_links WHERE song_id = 'pisniua_3498727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3498727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3498727';
DELETE FROM songs WHERE id = 'pisniua_3498727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3498727','За столом зібралася родина','Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Дозвольте колядувати,
Христа Бога прславляти!

За столом зібралася родина,
За віконцем пада білий сніг.
Колядує рідна Україна,
Ряджені вже стали на поріг!

Весело від хати і до хати
Витоптали стежками сніжок,
Дітвора прийшла колядувати,
На порозі вже стоїть мішок!

Ми заколядуємо вам, люди,
Побажаєм щастя і добра!
Із Різдвом Христовим хай прибуде
Радощів вам, миру і тепла!

Хай на серці стане веселіше,
І Господь здоров''я вам дає!
Ви нас почастуйте, чимскоріше,
У мішок складайте все що є!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3498727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3498727','За столом зібралася родина','Дозвольте колядувати,
Христа Бога прславляти!

За столом зібралася родина,
За віконцем пада білий сніг.
Колядує рідна Україна,
Ряджені вже стали на поріг!

Весело від хати і до хати
Витоптали стежками сніжок,
Дітвора прийшла колядувати,
На порозі вже стоїть мішок!

Ми заколядуємо вам, люди,
Побажаєм щастя і добра!
Із Різдвом Христовим хай прибуде
Радощів вам, миру і тепла!

Хай на серці стане веселіше,
І Господь здоров''я вам дає!
Ви нас почастуйте, чимскоріше,
У мішок складайте все що є!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3498727_l1','pisniua_3498727','YouTube','https://www.youtube.com/watch?v=X3vM5Etc4zw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3514626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3514626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3514626';
DELETE FROM songs WHERE id = 'pisniua_3514626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3514626','Зустріч друзів','Музика: Євген Мартинов Слова: Роберт Рождественський','uk','ukraine_1991',NULL,NULL,'переклад Віктора Леві',NULL,'Пісня хай зачинається,
Хай до неба здіймається,
Хай у пісні займається
Ясен світ.
Посидімо притишені,
Хай вже скроні засніжені,
Все робили в житті ж то ми
Так, як слід.

Зійде сонце над річкою,
Є вже справою звичною,
Щоб засів цьогорічний
У землю ліг.
Тільки б дощик змочив його,
Буревій не згубив його,
І щоб згодом укрив його
Вчасно сніг.

Стиглий хліб загойдається,
І життя не кінчається,
Знов життя починається
Раз у раз.
В небі гратимуть райдуги,
Буде мир, буде радісно,
І онуки та правнуки
Змінять нас.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3514626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3514626','Зустріч друзів','Пісня хай зачинається,
Хай до неба здіймається,
Хай у пісні займається
Ясен світ.
Посидімо притишені,
Хай вже скроні засніжені,
Все робили в житті ж то ми
Так, як слід.

Зійде сонце над річкою,
Є вже справою звичною,
Щоб засів цьогорічний
У землю ліг.
Тільки б дощик змочив його,
Буревій не згубив його,
І щоб згодом укрив його
Вчасно сніг.

Стиглий хліб загойдається,
І життя не кінчається,
Знов життя починається
Раз у раз.
В небі гратимуть райдуги,
Буде мир, буде радісно,
І онуки та правнуки
Змінять нас.');
DELETE FROM song_links WHERE song_id = 'pisniua_3506525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3506525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3506525';
DELETE FROM songs WHERE id = 'pisniua_3506525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3506525','А жити треба','Музика: Ольга Монастирська Слова: Ольга Монастирська. Виконує: Ольга Монастирська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Так на душі чомусь тривожно...
Так на душі чомусь печаль...
Якби була спроможна,
Якби була спроможна,
Щоб усе змінити в мить,
Але на жаль...
Там, десь в горі, майнуло світло...
Знаю, що сонце завжди горить!..
Хмари розійдуться з вітром,
Хмари розійдуться з вітром,
І настане щастя мить! Щастя мить!

Приспів:
А жити треба все одно!
Треба все одно!
Треба все і посміхатись!
Якби не було, важко не було,
Але рук не опускати!
Творити треба все добро!
Треба все добро!
І нехай вам все вдасться!
В гавані з оков, де живе любов, |
Там живе і справжнє щастя!      | (2)

Так на душі чомусь неясно...
Так на душі чомусь печаль...
Бачити все прекрасне,
Бачити все прекрасне,
Ніби хтось заборонив,
І це на жаль...
Хмарою є недобрі люди,
Стелять немов тумани перед лицем...
Але все так не буде!
Але все так не буде!
Буде краще! Лиш повірити у це!

Приспів.

А жити треба все одно!

Приспів.

Тут живе і справжнє щастя!','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3506525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3506525','А жити треба','Так на душі чомусь тривожно...
Так на душі чомусь печаль...
Якби була спроможна,
Якби була спроможна,
Щоб усе змінити в мить,
Але на жаль...
Там, десь в горі, майнуло світло...
Знаю, що сонце завжди горить!..
Хмари розійдуться з вітром,
Хмари розійдуться з вітром,
І настане щастя мить! Щастя мить!

Приспів:
А жити треба все одно!
Треба все одно!
Треба все і посміхатись!
Якби не було, важко не було,
Але рук не опускати!
Творити треба все добро!
Треба все добро!
І нехай вам все вдасться!
В гавані з оков, де живе любов, |
Там живе і справжнє щастя!      | (2)

Так на душі чомусь неясно...
Так на душі чомусь печаль...
Бачити все прекрасне,
Бачити все прекрасне,
Ніби хтось заборонив,
І це на жаль...
Хмарою є недобрі люди,
Стелять немов тумани перед лицем...
Але все так не буде!
Але все так не буде!
Буде краще! Лиш повірити у це!

Приспів.

А жити треба все одно!

Приспів.

Тут живе і справжнє щастя!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3506525_l1','pisniua_3506525','YouTube','https://www.youtube.com/watch?v=3TqQqDVjrQk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3506525_l2','pisniua_3506525','YouTube','https://www.youtube.com/watch?v=aXgxAMz2GdU','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3523168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3523168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3523168';
DELETE FROM songs WHERE id = 'pisniua_3523168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3523168','Побратим','Музика: LEVCHENKO Слова: LEVCHENKO','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Чути грім, видно дим,
Та ти, брате, не один!
Із тобою побратим,
Буде завжди поруч він!
Це плече, це твій брат!
Чує десь летить снаряд,
У долонях автомат,
Вивезем без втрат, брат!

Ти - простий пацан з народу,
Але зараз у кордона,
Борониш нашу свободу,
Не даєш ворогу проходу!
Десь сумують за тобою
Твої рідні і кохана,
Повернешся - обіцяв,
Як розвіються тумани.
Нехай віра не згасає!
Пам''ятай, тебе чекають!
Пам''ятай, тебе кохають
І ніколи не забувають!
Нехай ти зараз далеко,
Та з тобою усі ми!
Ти пройдеш, братан, це пекло
І, як раніше, посидим!

Приспів.

Десь земля дрижить від куль,
Й дим у небі не згасає,
Сонце якось вже не гріє,
Але знаю, що тримаєшся!
Будь сильним, і живи!
Ти - наш символ від народу!
Діти пам''ятатимуть завжди,
Яка ціна свободи!
Нехай віра не згасає!
Пам''ятай, тебе чекають!
Пам''ятай, тебе кохають
І ніколи не забувають!
Нехай ти зараз далеко,
Та з тобою усі ми!
Ти пройдеш, братан, це пекло
І, як раніше, посидим!

Приспів. (2)','[''pisni.org.ua'', ''cat:ato'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3523168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3523168','Побратим','Приспів:
Чути грім, видно дим,
Та ти, брате, не один!
Із тобою побратим,
Буде завжди поруч він!
Це плече, це твій брат!
Чує десь летить снаряд,
У долонях автомат,
Вивезем без втрат, брат!

Ти - простий пацан з народу,
Але зараз у кордона,
Борониш нашу свободу,
Не даєш ворогу проходу!
Десь сумують за тобою
Твої рідні і кохана,
Повернешся - обіцяв,
Як розвіються тумани.
Нехай віра не згасає!
Пам''ятай, тебе чекають!
Пам''ятай, тебе кохають
І ніколи не забувають!
Нехай ти зараз далеко,
Та з тобою усі ми!
Ти пройдеш, братан, це пекло
І, як раніше, посидим!

Приспів.

Десь земля дрижить від куль,
Й дим у небі не згасає,
Сонце якось вже не гріє,
Але знаю, що тримаєшся!
Будь сильним, і живи!
Ти - наш символ від народу!
Діти пам''ятатимуть завжди,
Яка ціна свободи!
Нехай віра не згасає!
Пам''ятай, тебе чекають!
Пам''ятай, тебе кохають
І ніколи не забувають!
Нехай ти зараз далеко,
Та з тобою усі ми!
Ти пройдеш, братан, це пекло
І, як раніше, посидим!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3523168_l1','pisniua_3523168','YouTube','https://www.youtube.com/watch?v=FWJpYdSMXUE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3523168_l2','pisniua_3523168','YouTube','https://www.youtube.com/watch?v=MOqrVjBoZUo','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3528121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3528121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3528121';
DELETE FROM songs WHERE id = 'pisniua_3528121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3528121','Не пройде','Музика: Марія Довгаюк (Domiy), Андрій Дрововоз, Олег Шумей (SHUMEI) Слова: Марія Довгаюк (Domiy), Андрій Дрововоз, Олег Шумей (SHUMEI)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Якщо це не пройде,
Ти поцілуй мене.
Ми падали в той вечір,
І любов на наші плечі!..
І любов на наші плечі...

Криком, криком, криком з душі
До мене тихо-тихо говори.
Як же тепер бути мені,
Бо я не знаю вже без тебе днів...
Криком, криком, криком з душі
Скажи, кому написані пісні.
Звикаєм ми до самоти,
Я так боюсь без тебе висоти!..

Приспів.

Зараз я не хочу слів,
Тоді, коли не будем молоді,
Розкажу, як тебе любив
Поміж тривог і холодів...
Бракувало світлих днів,
Танцю серед вулиць і вогнів...
Розкажу, як тебе любив,
І як тобі я наболів...

Приспів. (2)

Якщо це не пройде...','[''pisni.org.ua'', ''cat:devoted'', ''cat:nostalgia'', ''Пісні присвячені окремим особам'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3528121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3528121','Не пройде','Приспів:
Якщо це не пройде,
Ти поцілуй мене.
Ми падали в той вечір,
І любов на наші плечі!..
І любов на наші плечі...

Криком, криком, криком з душі
До мене тихо-тихо говори.
Як же тепер бути мені,
Бо я не знаю вже без тебе днів...
Криком, криком, криком з душі
Скажи, кому написані пісні.
Звикаєм ми до самоти,
Я так боюсь без тебе висоти!..

Приспів.

Зараз я не хочу слів,
Тоді, коли не будем молоді,
Розкажу, як тебе любив
Поміж тривог і холодів...
Бракувало світлих днів,
Танцю серед вулиць і вогнів...
Розкажу, як тебе любив,
І як тобі я наболів...

Приспів. (2)

Якщо це не пройде...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3528121_l1','pisniua_3528121','YouTube','https://www.youtube.com/watch?v=0JQFO0M3wOs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3528121_l2','pisniua_3528121','YouTube','https://www.youtube.com/watch?v=Ow6UYC8eXoI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3516121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3516121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3516121';
DELETE FROM songs WHERE id = 'pisniua_3516121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3516121','Пташка','Музика: Morphom, Zlata Ognevich Слова: Morphom','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Рашисти швидкими темпами
Просуваються з півночі,
Ворог зайшов на територію
Чорнобильської АЕС
В Сумській області
Танкові колони окупантів
Наблизились до міста
Охтирка та Конотоп...

Збудувала пташка дім у тихім полі,
Час її покликав у нове життя!
Та не знала пташка скільки буде болі
В місці, де народиться її дитя...

Приспів:
Бийся, пташко, бийся!   |
Маєш два крила.         |
Нічого не бійся!        |
Станеш, як стріла, йой! | (2)

Ви прийшли вбивати нас,
Натомість повиздихаєте тут самі!
Бо не треба злити
Конотопську відьму!
Смерть ходитиме за вами по колу...

Небо стало чорним, запалали трави,
Сніг розтав, і ворог прийшов того дня.
Ворог, наче ворон, хоче крові й слави,
Та не кине пташка рідне пташеня!
Вони всі заплатять!..

Приспів. (2)','[''pisni.org.ua'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3516121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3516121','Пташка','Рашисти швидкими темпами
Просуваються з півночі,
Ворог зайшов на територію
Чорнобильської АЕС
В Сумській області
Танкові колони окупантів
Наблизились до міста
Охтирка та Конотоп...

Збудувала пташка дім у тихім полі,
Час її покликав у нове життя!
Та не знала пташка скільки буде болі
В місці, де народиться її дитя...

Приспів:
Бийся, пташко, бийся!   |
Маєш два крила.         |
Нічого не бійся!        |
Станеш, як стріла, йой! | (2)

Ви прийшли вбивати нас,
Натомість повиздихаєте тут самі!
Бо не треба злити
Конотопську відьму!
Смерть ходитиме за вами по колу...

Небо стало чорним, запалали трави,
Сніг розтав, і ворог прийшов того дня.
Ворог, наче ворон, хоче крові й слави,
Та не кине пташка рідне пташеня!
Вони всі заплатять!..

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3516121_l1','pisniua_3516121','YouTube','https://www.youtube.com/watch?v=3mPmEA0sZiY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3516121_l2','pisniua_3516121','YouTube','https://www.youtube.com/watch?v=jzca-QQHM4M','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3523929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3523929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3523929';
DELETE FROM songs WHERE id = 'pisniua_3523929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3523929','Я повернуся в Україну!','Слова: Василь Чопей','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Живу, працюю я в чужині,
Моя країна у вогні...
А там моря і гори сині,
Тому так важко тут мені...

Приспів:
Я повернуся в Україну,
В степи, лани, рясні сади!
Не назавжди ж її покинув!..
Не назавжди!.. Не назавжди!..

Бо я люблю її, чудову,
До неї лину уві сні!..
І солов''їну рідну мову,
І чарівні, дзвінкі пісні!

Приспів.

Там ворог топче рідну землю,
Міста в руїнах, все горить...
А я в чужині біль цей терплю,
Туди душа моя летить...

Приспів.

Хоча тут гарно так, спок1йно,
І для народу все чомусь...
Та в Україну свою рідну
Я неодмінно повернусь!..

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3523929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3523929','Я повернуся в Україну!','Живу, працюю я в чужині,
Моя країна у вогні...
А там моря і гори сині,
Тому так важко тут мені...

Приспів:
Я повернуся в Україну,
В степи, лани, рясні сади!
Не назавжди ж її покинув!..
Не назавжди!.. Не назавжди!..

Бо я люблю її, чудову,
До неї лину уві сні!..
І солов''їну рідну мову,
І чарівні, дзвінкі пісні!

Приспів.

Там ворог топче рідну землю,
Міста в руїнах, все горить...
А я в чужині біль цей терплю,
Туди душа моя летить...

Приспів.

Хоча тут гарно так, спок1йно,
І для народу все чомусь...
Та в Україну свою рідну
Я неодмінно повернусь!..

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3516261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3516261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3516261';
DELETE FROM songs WHERE id = 'pisniua_3516261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3516261','Чіловічє Божественной','Українська народна пісня. Виконує: Божичі','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','с. Трембачеве Старобільского р-ну Луганської обл. Пісню виконує Фольклорний ансамбль "Божичі" (альбом: Божичі – Псальми. Помишляйте, чєловєци).','Чіловічє Божественной
Жив у світі милосердной.    | (2)

Не уповай, чіловічє,
Ні на срібло, ні на злато,
Ні на велике багатство.

Бо великоє багатство
Ні заробе душі царство.     | (2)

На тім світі огонь горить,
Ой там Господь судом суде.  | (2)

А він суде ще розсуде
За час, за час, за минуту.  | (2)

Праведні душі - в правую руку,
А грєшниє - у лєвую.        | (2)

Праведні душі псальми співають,
А грєшні плачуть і ридають. | (2)

Ой, Боже ж наш милосердной,
Чим ми тобі прогрішили?     | (2)

А тим же ви прогрішили,
Що в Божий храм не ходили.  | (2)

А хоч же ви і ходили,
Богу свічі не становили.    | (2)

А хоч же ви (й) становили,
То й милости не подавали.   | (2)

А хоч же ви подавали,
Так в той же час споминали. | (2)

Нащо було подавати,
Як в той же час споминати?  | (2)','[''pisni.org.ua'', ''cat:arkhiv-bozhychi'', ''Фольклорний архів анс. "Божичі"'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3516261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3516261','Чіловічє Божественной','Чіловічє Божественной
Жив у світі милосердной.    | (2)

Не уповай, чіловічє,
Ні на срібло, ні на злато,
Ні на велике багатство.

Бо великоє багатство
Ні заробе душі царство.     | (2)

На тім світі огонь горить,
Ой там Господь судом суде.  | (2)

А він суде ще розсуде
За час, за час, за минуту.  | (2)

Праведні душі - в правую руку,
А грєшниє - у лєвую.        | (2)

Праведні душі псальми співають,
А грєшні плачуть і ридають. | (2)

Ой, Боже ж наш милосердной,
Чим ми тобі прогрішили?     | (2)

А тим же ви прогрішили,
Що в Божий храм не ходили.  | (2)

А хоч же ви і ходили,
Богу свічі не становили.    | (2)

А хоч же ви (й) становили,
То й милости не подавали.   | (2)

А хоч же ви подавали,
Так в той же час споминали. | (2)

Нащо було подавати,
Як в той же час споминати?  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3516261_l1','pisniua_3516261','YouTube','https://www.youtube.com/watch?v=6be1zsyc8E4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3526929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3526929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3526929';
DELETE FROM songs WHERE id = 'pisniua_3526929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3526929','Миколай','Музика: Олена Риковська Слова: Леонід Талалай','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Червоніють снігурі
На снігу під липою.
Йде в кожусі Миколай, |
Аж сніжок порипує...  | (2)

Зупинився у дворі,
Розв''язав торбиночку.
Нашій бабі сніговій   |
Пов''язав хустиночку.  | (2)

Ми також усі тебе,
Миколай, чекаємо!
Подаруночки твої      |
З радістю приймаємо!  | (2)','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3526929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3526929','Миколай','Червоніють снігурі
На снігу під липою.
Йде в кожусі Миколай, |
Аж сніжок порипує...  | (2)

Зупинився у дворі,
Розв''язав торбиночку.
Нашій бабі сніговій   |
Пов''язав хустиночку.  | (2)

Ми також усі тебе,
Миколай, чекаємо!
Подаруночки твої      |
З радістю приймаємо!  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3526929_l1','pisniua_3526929','YouTube','https://www.youtube.com/watch?v=z4dmPHmM5Mk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3526929_l2','pisniua_3526929','YouTube','https://www.youtube.com/watch?v=VPkIevXsI_w','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3518525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3518525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3518525';
DELETE FROM songs WHERE id = 'pisniua_3518525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3518525','Я буду з тобою','Музика: Світлана Тарабарова Слова: Світлана Тарабарова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я шукаю друзів, не шукаю ворогів,
Я на межі, я на межі фантастичних світів,
Я так хвилююсь, але не здаюсь!
Шукаю себе, шукаю свій шлях і вже не боюсь!
Очі закрий, лети! Ризики варті твоїх мрій
І не ховай серце своє від почуттів!
Очі закрий, лети у намальовані світи!
Настане день, настане час -
І щасливим стане кожен з нас!

Приспів:
Я буду з тобою на твоїй стороні!
Всі зорі на небі, немов вартові!
Я буду з тобою на твоїй стороні,
А ти не зупиняйся і мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Я буду з тобою на твоїй стороні!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Зорі всі на небі це твої вартові!

Очі закрий, лети! Ризики варті твоїх мрій
І не ховай серце своє від почуттів!
Очі закрий, лети у намальовані світи!
Настане день, настане час -
І щасливим стане кожен з нас!

Приспів.','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3518525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3518525','Я буду з тобою','Я шукаю друзів, не шукаю ворогів,
Я на межі, я на межі фантастичних світів,
Я так хвилююсь, але не здаюсь!
Шукаю себе, шукаю свій шлях і вже не боюсь!
Очі закрий, лети! Ризики варті твоїх мрій
І не ховай серце своє від почуттів!
Очі закрий, лети у намальовані світи!
Настане день, настане час -
І щасливим стане кожен з нас!

Приспів:
Я буду з тобою на твоїй стороні!
Всі зорі на небі, немов вартові!
Я буду з тобою на твоїй стороні,
А ти не зупиняйся і мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Я буду з тобою на твоїй стороні!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Мрій! Мрій! Мрій! Мрій! Мрій! Мрій!
Зорі всі на небі це твої вартові!

Очі закрий, лети! Ризики варті твоїх мрій
І не ховай серце своє від почуттів!
Очі закрий, лети у намальовані світи!
Настане день, настане час -
І щасливим стане кожен з нас!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3518525_l1','pisniua_3518525','YouTube','https://www.youtube.com/watch?v=m_-Dr3KsSdQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_351424';
DELETE FROM song_versions WHERE song_id = 'pisniua_351424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_351424';
DELETE FROM songs WHERE id = 'pisniua_351424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_351424','Про любов','Музика: Андрій Кузьменко Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Лиши собі на вечір пару папіросів,
Щоб правильно закінчився день.
Пів-скляночки вина
Вот так - за все хороше,
За тих, кому не пишуть пісень!..
Приспів:
Про любов
Їм не будуть співати!..
Про любов,
Як завжди, вляжуться спати...
Про любов
Вино не можна мішати!...
По любов
Знов і знов!..
Бере акорди вітер
На дротах електричних,
Сумніше пісні в світі нема.
Всі хто її не чули,
Всі, хто її не знає,
Долийте в склянку трохи вина!..
Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_351424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_351424','Про любов','Лиши собі на вечір пару папіросів,
Щоб правильно закінчився день.
Пів-скляночки вина
Вот так - за все хороше,
За тих, кому не пишуть пісень!..
Приспів:
Про любов
Їм не будуть співати!..
Про любов,
Як завжди, вляжуться спати...
Про любов
Вино не можна мішати!...
По любов
Знов і знов!..
Бере акорди вітер
На дротах електричних,
Сумніше пісні в світі нема.
Всі хто її не чули,
Всі, хто її не знає,
Долийте в склянку трохи вина!..
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_351424_l1','pisniua_351424','YouTube','https://www.youtube.com/watch?v=SPk-XyICmcU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_351424_l2','pisniua_351424','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3528261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3528261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3528261';
DELETE FROM songs WHERE id = 'pisniua_3528261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3528261','Ми святого Миколая радо зустрічаємо','Музика: Олена Кирияк Слова: Олена Кирияк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Ми святого Миколая
Радо зустрічаємо!
Разом пісню, разом пісню
Весело співаємо!

Руки вгору, руки вгору,
В колі затанцюємо!
Руки вгору, руки вгору,
Ніжками працюємо!

Приспів.

Руки вгору, руки вгору,
Ти і я кружляємо!
Руки вгору, руки вгору,
І відпочиваємо!

Приспів.

Руки вгору, руки вгору,
Порахуєм до п''яти!
Руки вгору, руки вгору,
"Миколай!" - гукаєм ми!

Приспів.

Руки вгору, руки вгору,
Ось як ми стрибаємо.
Руки вгору, руки вгору,
Ми тебе вітаємо!

Приспів.

Руки вгору, руки вгору,
Всі сьогодні - молодці!
Руки вгору, руки вгору,
Подаруночки неси!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3528261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3528261','Ми святого Миколая радо зустрічаємо','Приспів:
Ми святого Миколая
Радо зустрічаємо!
Разом пісню, разом пісню
Весело співаємо!

Руки вгору, руки вгору,
В колі затанцюємо!
Руки вгору, руки вгору,
Ніжками працюємо!

Приспів.

Руки вгору, руки вгору,
Ти і я кружляємо!
Руки вгору, руки вгору,
І відпочиваємо!

Приспів.

Руки вгору, руки вгору,
Порахуєм до п''яти!
Руки вгору, руки вгору,
"Миколай!" - гукаєм ми!

Приспів.

Руки вгору, руки вгору,
Ось як ми стрибаємо.
Руки вгору, руки вгору,
Ми тебе вітаємо!

Приспів.

Руки вгору, руки вгору,
Всі сьогодні - молодці!
Руки вгору, руки вгору,
Подаруночки неси!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3528261_l1','pisniua_3528261','YouTube','https://www.youtube.com/watch?v=ZQ23Wm6p3jo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3528261_l2','pisniua_3528261','YouTube','https://www.youtube.com/watch?v=SMFxPkM56Go','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3517626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3517626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3517626';
DELETE FROM songs WHERE id = 'pisniua_3517626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3517626','Друзі - я і ти','Музика: Оксана Пічугіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Друзі зустрічаються -
Раз, два, три!
(Плещуть в долоні)
Ручками вітаються -
Раз, два, три!
(Махають "Привіт")

Приспів:
Всім дружити треба!
Друзі - я і ти!
(Пальчиком: "ну-ну!")
Кращого за тебе
(Подають руки один одному)
Друга не знайти!
(Розкривають в сторони
На човник, кружляють)

Друзі посміхаються -
Раз, два, три!
(Вказівні пальчики до щічок)
Щиро обіймаються -
Раз, два, три!
(Обіймаються)

Приспів.

Друзі-пострибайчики,
Раз, два, три!
Як веселі зайчики -
Раз, два, три!
( Стрибають)

Приспів.

Друзі заховаються -
(Закривають обличчя руками)
Раз, два, три!
Потім знов з''являються -
Раз, два, три!
(Відкривають, руки в сторони,
Посміхаються)

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3517626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3517626','Друзі - я і ти','Друзі зустрічаються -
Раз, два, три!
(Плещуть в долоні)
Ручками вітаються -
Раз, два, три!
(Махають "Привіт")

Приспів:
Всім дружити треба!
Друзі - я і ти!
(Пальчиком: "ну-ну!")
Кращого за тебе
(Подають руки один одному)
Друга не знайти!
(Розкривають в сторони
На човник, кружляють)

Друзі посміхаються -
Раз, два, три!
(Вказівні пальчики до щічок)
Щиро обіймаються -
Раз, два, три!
(Обіймаються)

Приспів.

Друзі-пострибайчики,
Раз, два, три!
Як веселі зайчики -
Раз, два, три!
( Стрибають)

Приспів.

Друзі заховаються -
(Закривають обличчя руками)
Раз, два, три!
Потім знов з''являються -
Раз, два, три!
(Відкривають, руки в сторони,
Посміхаються)

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3517626_l1','pisniua_3517626','YouTube','https://www.youtube.com/watch?v=MVs_p6gYfZ8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3517626_l2','pisniua_3517626','YouTube','https://www.youtube.com/watch?v=pjovlmO38tY','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3507424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3507424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3507424';
DELETE FROM songs WHERE id = 'pisniua_3507424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3507424','За Свободу і за Честь!','Музика: Сергій Василюк Слова: Сергій Василюк','uk','ukraine_1991',NULL,NULL,'аудіозапис','Найщиріші вітання 110-й окремій механізованій бригаді імені генерал-хорунжого Марка Безручка! До річниці створення героїчного підрозділу, який по суті постав два роки тому на буремному Донецькому напрямі та за весь цей час був основною потугою ЗСУ в Авдіївці та її околицях, презентуємо кліп та славень цієї вже без перебільшення легендарної Бригади!','Йде Волинь, Карпати йдуть!
Над Дніпром скипає лють.
Степ козацький знає путь!
України горда суть:

Приспів:
За Свободу і за Честь,
За життя, що нищить смерть!
110-та йде у бій,
Міць душі тримає стрій!

В час тривожної імли
Ми постали! Ми змогли!
Стяг звитяги пронесли,
Йтимем далі, як і йшли!

Приспів.

Ми поєднані в однім:
Нам Авдіївка за дім,
Був Донецьк і є своїм,
Зачекався рідний Крим!..

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3507424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3507424','За Свободу і за Честь!','Йде Волинь, Карпати йдуть!
Над Дніпром скипає лють.
Степ козацький знає путь!
України горда суть:

Приспів:
За Свободу і за Честь,
За життя, що нищить смерть!
110-та йде у бій,
Міць душі тримає стрій!

В час тривожної імли
Ми постали! Ми змогли!
Стяг звитяги пронесли,
Йтимем далі, як і йшли!

Приспів.

Ми поєднані в однім:
Нам Авдіївка за дім,
Був Донецьк і є своїм,
Зачекався рідний Крим!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3507424_l1','pisniua_3507424','YouTube','https://www.youtube.com/watch?v=Yeo97ypDeQA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3534424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3534424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3534424';
DELETE FROM songs WHERE id = 'pisniua_3534424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3534424','Це прийшло Різдво','Музика: Єлизавета Ткаченко Слова: Єлизавета Ткаченко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Чому всі веселі?
Чому всі щасливі
І посмішки на вустах?
Міцнішає віра,
Збуваються мрії,
Надія у серцях!
І хочеться серцем
У небо злетіти
До янголів у хор!
Прославити Бога
За Його любов!

Приспів:
Це прийшло Різдво!
Це прийшло Різдво!
Радість знову нам принесло!
Нагадало всім про любов Христа
Та відкритий шлях в небеса!
Це прийшло Різдво!
Це прийшло Різдво!
Радість знову нам принесло!
Нагадало всім про любов Христа
Та шлях в небеса!

Якщо ти веселий,
Якщо ти щасливий,
Бо в серці Бог живе,
Згадай, що навколо
Є люди, у кого
Життя таке сумне...
Піди до них, друже,
Відкрий своє серце,
В біді допоможи!
І шлях до спасіння
Ти людям покажи!

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3534424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3534424','Це прийшло Різдво','Чому всі веселі?
Чому всі щасливі
І посмішки на вустах?
Міцнішає віра,
Збуваються мрії,
Надія у серцях!
І хочеться серцем
У небо злетіти
До янголів у хор!
Прославити Бога
За Його любов!

Приспів:
Це прийшло Різдво!
Це прийшло Різдво!
Радість знову нам принесло!
Нагадало всім про любов Христа
Та відкритий шлях в небеса!
Це прийшло Різдво!
Це прийшло Різдво!
Радість знову нам принесло!
Нагадало всім про любов Христа
Та шлях в небеса!

Якщо ти веселий,
Якщо ти щасливий,
Бо в серці Бог живе,
Згадай, що навколо
Є люди, у кого
Життя таке сумне...
Піди до них, друже,
Відкрий своє серце,
В біді допоможи!
І шлях до спасіння
Ти людям покажи!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3534424_l1','pisniua_3534424','YouTube','https://www.youtube.com/watch?v=vjdF45Ida0w','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3526168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3526168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3526168';
DELETE FROM songs WHERE id = 'pisniua_3526168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3526168','Найкращі в світі - Українки!','Музика: Олеся Май Слова: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує гурт Фанта.','Ми йдемо по світу в білих вишиванках,
Нас стрічають всюди усмішки рясні,
На розшитих квітах росяні серпанки
Й тихі колискові мамині пісні!

Приспів:
Найкращі в світі - Українки!
Немов дзвіночки, голоси,
Як намальовані картинки,
Мов калиновий світ усі!
Найкращі в світі - Українки!
Немов дзвіночки, голоси,
Як намальовані картинки,
Мов калиновий світ усі! Усі!

Світ розбудять рано солов''ї піснями,
І ранкові роси упадуть до ніг,
Зацвітуть любов''ю очі, що від мами,
Карі й волошкові зіроньки ясні!

Приспів.','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3526168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3526168','Найкращі в світі - Українки!','Ми йдемо по світу в білих вишиванках,
Нас стрічають всюди усмішки рясні,
На розшитих квітах росяні серпанки
Й тихі колискові мамині пісні!

Приспів:
Найкращі в світі - Українки!
Немов дзвіночки, голоси,
Як намальовані картинки,
Мов калиновий світ усі!
Найкращі в світі - Українки!
Немов дзвіночки, голоси,
Як намальовані картинки,
Мов калиновий світ усі! Усі!

Світ розбудять рано солов''ї піснями,
І ранкові роси упадуть до ніг,
Зацвітуть любов''ю очі, що від мами,
Карі й волошкові зіроньки ясні!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3526168_l1','pisniua_3526168','YouTube','https://www.youtube.com/watch?v=rHZmt5Qu1RE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3538168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3538168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3538168';
DELETE FROM songs WHERE id = 'pisniua_3538168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3538168','Щастя на Різдво','Музика: Slava Dym Слова: Slava Dym','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Як настане різдво
І зійде ясна зоря,
Хай миром править добро,
Ангел світла творить дива
В кожнім серці!

Приспів:
Хай летять сніжинки,
Щастя дарять!
Радість в кожен дім
Хай завітає!
Кожна мить чудес краплинка
Здійснення бажань
Приносять під ялинку!
Сяють зорі,
Мов вогонь казковий,
І зима пішла
В танок святковий!
І зійдеться вся родина,
Знову буде мирна Україна!

Та яскрава зоря
Хай веде до щастя усіх
І в кожній з наших осель
Залунає радісний сміх
Всім на диво!..

Приспів.

Мирна, сильна, вільна Україна!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3538168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3538168','Щастя на Різдво','Як настане різдво
І зійде ясна зоря,
Хай миром править добро,
Ангел світла творить дива
В кожнім серці!

Приспів:
Хай летять сніжинки,
Щастя дарять!
Радість в кожен дім
Хай завітає!
Кожна мить чудес краплинка
Здійснення бажань
Приносять під ялинку!
Сяють зорі,
Мов вогонь казковий,
І зима пішла
В танок святковий!
І зійдеться вся родина,
Знову буде мирна Україна!

Та яскрава зоря
Хай веде до щастя усіх
І в кожній з наших осель
Залунає радісний сміх
Всім на диво!..

Приспів.

Мирна, сильна, вільна Україна!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3538168_l1','pisniua_3538168','YouTube','https://www.youtube.com/watch?v=ZDnXxrysu2s','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3536525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3536525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3536525';
DELETE FROM songs WHERE id = 'pisniua_3536525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3536525','Вороги в нас не віднімуть Бога Благодати','Музика: Галина Капріян Слова: Галина Капріян','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ой, летіла зозуленька
Тай стала кувати:
Піднімайся, Божий люде,
Йди Христа вітати!
Хай ніхто у тебе радість
Й віру не відніме,
Хай на кожне щире серце
Божа милість зійде!

Вороги нас убивають,
Безжально катують,
Всі могутні світу
Цього думають-мудрують,
Якби то їм люд побожний
З цеї землі зжити,
Та не зможуть вони
Віру Христа умертвити.

Ой, не вдасться, ой, не буде,
Не на тих напали,
Не діждетесь, не впадемо,
Скільки б не вбивали,
З нами правда, Божа сила,
Все військо Небесне!
Кожен, хто Христові служить,
Разом з Ним воскресне!

Тож радій, побожний люде,
Христос народився!
У містечку Вифлеємі
З Діви воплотився,
Народився в кожнім серці
І хто Його знає,
Не приймає благ від світу,
А за Ним ступає!

Хай же радість наповняє
Старого й малого,
Світ Спасати посилає
Господь Сина Свого,
Залишаймо свою тугу       |
І йдемо вітати,           |
Вороги в нас не віднімуть |
Бога Благодати!           | (2)

Речитатив:
І всі приклонили свої коліна
Перед народженим від Діви,
Кожне серце, що тужило,
Возрадувалося.
Кожна душа, що шукала
Джерела святої води,
Втамувала спрагу.
Так з року в рік
Народжується той,
Хто світ спас.
Благодать сходить з неба
І покриває всю землю,
Бо Христос вже народився
І Різдва Його в нас ніхто не відніме!
Тож радій, побожний люде,
Вже сходить зоря вифлеємська,
настає Різдво непереможне!
Христос ся рождає!
Славімо Його!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3536525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3536525','Вороги в нас не віднімуть Бога Благодати','Ой, летіла зозуленька
Тай стала кувати:
Піднімайся, Божий люде,
Йди Христа вітати!
Хай ніхто у тебе радість
Й віру не відніме,
Хай на кожне щире серце
Божа милість зійде!

Вороги нас убивають,
Безжально катують,
Всі могутні світу
Цього думають-мудрують,
Якби то їм люд побожний
З цеї землі зжити,
Та не зможуть вони
Віру Христа умертвити.

Ой, не вдасться, ой, не буде,
Не на тих напали,
Не діждетесь, не впадемо,
Скільки б не вбивали,
З нами правда, Божа сила,
Все військо Небесне!
Кожен, хто Христові служить,
Разом з Ним воскресне!

Тож радій, побожний люде,
Христос народився!
У містечку Вифлеємі
З Діви воплотився,
Народився в кожнім серці
І хто Його знає,
Не приймає благ від світу,
А за Ним ступає!

Хай же радість наповняє
Старого й малого,
Світ Спасати посилає
Господь Сина Свого,
Залишаймо свою тугу       |
І йдемо вітати,           |
Вороги в нас не віднімуть |
Бога Благодати!           | (2)

Речитатив:
І всі приклонили свої коліна
Перед народженим від Діви,
Кожне серце, що тужило,
Возрадувалося.
Кожна душа, що шукала
Джерела святої води,
Втамувала спрагу.
Так з року в рік
Народжується той,
Хто світ спас.
Благодать сходить з неба
І покриває всю землю,
Бо Христос вже народився
І Різдва Його в нас ніхто не відніме!
Тож радій, побожний люде,
Вже сходить зоря вифлеємська,
настає Різдво непереможне!
Христос ся рождає!
Славімо Його!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3536525_l1','pisniua_3536525','YouTube','https://www.youtube.com/watch?v=02FjhW1OX3A','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3529467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3529467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3529467';
DELETE FROM songs WHERE id = 'pisniua_3529467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3529467','Доця','Музика: Leonid Teterin, Andrii Groza, Dima PROKOPOV, Artem Velidchuk Слова: Leonid Teterin, Andrii Groza, Dima PROKOPOV, Artem Velidchuk','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Речитатив:
- Тату, а ти мене любиш?
Я тебе дуже-дуже люблю!
Ти будеш завжди поруч?

Народилась ти,
Біля серця тебе тримаю, -
В мить змінився світ,
Як було до, я не пам''ятаю.
Часу постійно не вистачає,
Та поруч з тобою він завмирає,
Кожна хвилина, мов серцебиття,
Діти йдуть у доросле життя, а я

Приспів:
За тебе, доця, мамині очі,
Все зроблю!
І я не сплю ночі,
Скажи, що хочеш, бо люблю!
За тебе, доця, мамині очі,
Все зроблю,
Бо вас тримаю біля серця,
Ніколи не відпущу!

Коли колискову заспівала мати,
Твої очі сяють, моє серце тане...
Я один за тебе весь світ пере-переверну,
Ти зрозумій, хвилююсь безперервно!..
Посмішка матері, характер батька,
Ми - океани, і таку силу не зламати!
Вся правда у сім''ї - мене так вчила мати.
Навіть уві сні я тебе буду охороняти!

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3529467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3529467','Доця','Речитатив:
- Тату, а ти мене любиш?
Я тебе дуже-дуже люблю!
Ти будеш завжди поруч?

Народилась ти,
Біля серця тебе тримаю, -
В мить змінився світ,
Як було до, я не пам''ятаю.
Часу постійно не вистачає,
Та поруч з тобою він завмирає,
Кожна хвилина, мов серцебиття,
Діти йдуть у доросле життя, а я

Приспів:
За тебе, доця, мамині очі,
Все зроблю!
І я не сплю ночі,
Скажи, що хочеш, бо люблю!
За тебе, доця, мамині очі,
Все зроблю,
Бо вас тримаю біля серця,
Ніколи не відпущу!

Коли колискову заспівала мати,
Твої очі сяють, моє серце тане...
Я один за тебе весь світ пере-переверну,
Ти зрозумій, хвилююсь безперервно!..
Посмішка матері, характер батька,
Ми - океани, і таку силу не зламати!
Вся правда у сім''ї - мене так вчила мати.
Навіть уві сні я тебе буду охороняти!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3529467_l1','pisniua_3529467','YouTube','https://www.youtube.com/watch?v=LegU3Bg0Mx8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3537424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3537424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3537424';
DELETE FROM songs WHERE id = 'pisniua_3537424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3537424','Як я хотів','Музика: Сергій Заболотний Слова: Сергій Заболотний','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Бувають дні, коли не сплю,
В думках лиш ти,
Я залишаюсь в тихім домі
Самоти...
І, поки падає, і тане сніг за склом
Чекаю тут, біля багаття...
Я розумію, що не так у цій зимі,
І це Різдво іде не вперше у житті,
Сьогодні сам я зустрічаю за столом,
І сподіваюсь - не кінець кохання...

Приспів:
Як я хотів, як я хотів, моя любов,
Як я хотів би, щоб кохала мене знов,
Щоб однакових вечорів, сумних без тебе,
Більше не було!.. Не було!..
Як я хотів, як я хотів, моя любов,
Як я хотів би, щоб кохала мене знов,
Щоб однакових вечорів, сумних без тебе,
Більше не було!..

Тебе побачу й розумію, що все вийде,
Я не впадаю в ревнощі і мить провини,
Цілував би й обіймав би тебе знову,
Ти з голови не йдеш моєї...

Приспів. (2)

Як я хотів, щоб це кохання не пішло,
Щоб не розтануло без слів, як сніг на сонці,
Розчарування й болю в серці не було,
Та я один у цьому році...','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3537424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3537424','Як я хотів','Бувають дні, коли не сплю,
В думках лиш ти,
Я залишаюсь в тихім домі
Самоти...
І, поки падає, і тане сніг за склом
Чекаю тут, біля багаття...
Я розумію, що не так у цій зимі,
І це Різдво іде не вперше у житті,
Сьогодні сам я зустрічаю за столом,
І сподіваюсь - не кінець кохання...

Приспів:
Як я хотів, як я хотів, моя любов,
Як я хотів би, щоб кохала мене знов,
Щоб однакових вечорів, сумних без тебе,
Більше не було!.. Не було!..
Як я хотів, як я хотів, моя любов,
Як я хотів би, щоб кохала мене знов,
Щоб однакових вечорів, сумних без тебе,
Більше не було!..

Тебе побачу й розумію, що все вийде,
Я не впадаю в ревнощі і мить провини,
Цілував би й обіймав би тебе знову,
Ти з голови не йдеш моєї...

Приспів. (2)

Як я хотів, щоб це кохання не пішло,
Щоб не розтануло без слів, як сніг на сонці,
Розчарування й болю в серці не було,
Та я один у цьому році...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3537424_l1','pisniua_3537424','YouTube','https://www.youtube.com/watch?v=ihh8LbpoYeM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3533364';
DELETE FROM song_versions WHERE song_id = 'pisniua_3533364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3533364';
DELETE FROM songs WHERE id = 'pisniua_3533364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3533364','Не питай','Слова: Іван Огієнко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Не питай, чого в мене заплакані очі,
Чого часто тікаю я в гай
І блукаю я там до півночі...
Не питай!.. Не питай!.. Не питай!..

Не питай, чого в''яну, як квітка, я в гаю
У затінку без сонця й води...
Краще б, мила, мене ти те знала
І не знала тієї біди...

Із грудей твоє серце виймаю без жалю,
Я навіки покинув тебе...
Проклинатимеш ти свою долю
І той час, що кохала мене...

Ти приходиш до мене щоночі пізненько
У годину, як міцно я сплю,
Заглядаєш в заплакані очі      |
І шепочеш: Не плач, я люблю!.. | (2)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3533364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3533364','Не питай','Не питай, чого в мене заплакані очі,
Чого часто тікаю я в гай
І блукаю я там до півночі...
Не питай!.. Не питай!.. Не питай!..

Не питай, чого в''яну, як квітка, я в гаю
У затінку без сонця й води...
Краще б, мила, мене ти те знала
І не знала тієї біди...

Із грудей твоє серце виймаю без жалю,
Я навіки покинув тебе...
Проклинатимеш ти свою долю
І той час, що кохала мене...

Ти приходиш до мене щоночі пізненько
У годину, як міцно я сплю,
Заглядаєш в заплакані очі      |
І шепочеш: Не плач, я люблю!.. | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3533364_l1','pisniua_3533364','YouTube','https://www.youtube.com/watch?v=jOIrpXxggYU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3533364_l2','pisniua_3533364','YouTube','https://www.youtube.com/watch?v=gIXhXVy2gns','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3538467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3538467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3538467';
DELETE FROM songs WHERE id = 'pisniua_3538467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3538467','Вірні друзі','Музика: Павло Зібров Слова: Петро Мага','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Гортаю карди чорно-білого кіно,
Там ходять друзі, я не бачив їх давно...
Коли горять вогні вечірньої пори,
Я набираю вірних друзів номери.

Приспів:
За нашу дружбу я п''ю до дна,
Вона на світі така одна!
Щоб не програти самоті,           |
Заходьте, друзі золоті,           |
У наші спогади, найкращі у житті! | (2)

Заходьте, друзі, я з обіймами стою,
Щоб на гітарі грати молодість свою.
Так ми забудемо про справи і про час,
І навіть ніч підніме чарочку за нас!..

Приспів.

Гортаю карди чорно-білого кіно,
Там ходять друзі, я не бачив їх давно...
І хоч життя тепер у кожного своє,
Та я щасливий, що ви всі у мене є!

Приспів.

Заходьте, грішні і святі,         |
Заходьте, друзі золоті,           |
У наші спогади, найкращі у житті! | (2)','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3538467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3538467','Вірні друзі','Гортаю карди чорно-білого кіно,
Там ходять друзі, я не бачив їх давно...
Коли горять вогні вечірньої пори,
Я набираю вірних друзів номери.

Приспів:
За нашу дружбу я п''ю до дна,
Вона на світі така одна!
Щоб не програти самоті,           |
Заходьте, друзі золоті,           |
У наші спогади, найкращі у житті! | (2)

Заходьте, друзі, я з обіймами стою,
Щоб на гітарі грати молодість свою.
Так ми забудемо про справи і про час,
І навіть ніч підніме чарочку за нас!..

Приспів.

Гортаю карди чорно-білого кіно,
Там ходять друзі, я не бачив їх давно...
І хоч життя тепер у кожного своє,
Та я щасливий, що ви всі у мене є!

Приспів.

Заходьте, грішні і святі,         |
Заходьте, друзі золоті,           |
У наші спогади, найкращі у житті! | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3538467_l1','pisniua_3538467','YouTube','https://www.youtube.com/watch?v=n66hMQzqRc8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_35525';
DELETE FROM song_versions WHERE song_id = 'pisniua_35525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_35525';
DELETE FROM songs WHERE id = 'pisniua_35525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_35525','У Києві, під Крутами','Українська народна пісня','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,NULL,'Присвячено героям Крут Роман (гість): "Цю пісню я знайшов у підручнику з історії за 5 клас (автор В. Мисан)..."','У Києві, під Крутами,
Був тяжкий біль з москалями.
Триста катів на одного,
На студента молодого.
Червоніє сніг на полі,
Це пролили кров герої.
Поле  вкрилося трупами,
Немов у жнива снопами.
А по трупах тих героїв
Зайшов ворог до Кийова.
Ой, не смійся, лютий враже,
Голова твоя ще ляже.','[''pisni.org.ua'', ''cat:kruty'', "Пісні пам''яті Героїв бою під Крутами"]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_35525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_35525','У Києві, під Крутами','У Києві, під Крутами,
Був тяжкий біль з москалями.
Триста катів на одного,
На студента молодого.
Червоніє сніг на полі,
Це пролили кров герої.
Поле  вкрилося трупами,
Немов у жнива снопами.
А по трупах тих героїв
Зайшов ворог до Кийова.
Ой, не смійся, лютий враже,
Голова твоя ще ляже.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_35525_l1','pisniua_35525','YouTube','https://www.youtube.com/watch?v=ewogAAanGS8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3537560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3537560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3537560';
DELETE FROM songs WHERE id = 'pisniua_3537560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3537560','З Різдвом!','Музика: Оксана Заремська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Зірка, що на небі йшла,
До Ісуса привела!
Довго на це місце йшли
В стаєнці Його знайшли.
Ангели співали там,
Що для нас Христос прийшов!
А Ісус на сіні спав
І любов Свою являв!
Він приніс Свою любов!        |
Прощення усіх гріхів дав нам! |
Мир приходить в кожен дім!    |
Вас вітаємо з Різдвом!        | (2)

Там, де була темрява,
Засіяло світло знов!
Сумніву й тривог нема,
В серці живе Христос!
Він народжений, щоб ти        |
Міг про це розповісти людям!  |
Він народжений, щоб жить,     |
І йому завжди служить!        | (2)

Прославляй Його, Земля,       |
Господа Спасителя!            | (2)

Він приніс Свою любов!        |
Прощення усіх гріхів дав нам! |
Мир приходить в кожен дім!    |
Вас вітаємо з Різдвом!        | (2)

Вас вітаємо з Різдвом!        | (2)','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3537560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3537560','З Різдвом!','Зірка, що на небі йшла,
До Ісуса привела!
Довго на це місце йшли
В стаєнці Його знайшли.
Ангели співали там,
Що для нас Христос прийшов!
А Ісус на сіні спав
І любов Свою являв!
Він приніс Свою любов!        |
Прощення усіх гріхів дав нам! |
Мир приходить в кожен дім!    |
Вас вітаємо з Різдвом!        | (2)

Там, де була темрява,
Засіяло світло знов!
Сумніву й тривог нема,
В серці живе Христос!
Він народжений, щоб ти        |
Міг про це розповісти людям!  |
Він народжений, щоб жить,     |
І йому завжди служить!        | (2)

Прославляй Його, Земля,       |
Господа Спасителя!            | (2)

Він приніс Свою любов!        |
Прощення усіх гріхів дав нам! |
Мир приходить в кожен дім!    |
Вас вітаємо з Різдвом!        | (2)

Вас вітаємо з Різдвом!        | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3537560_l1','pisniua_3537560','YouTube','https://www.youtube.com/watch?v=2IdGX1LXltc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3557364';
DELETE FROM song_versions WHERE song_id = 'pisniua_3557364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3557364';
DELETE FROM songs WHERE id = 'pisniua_3557364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3557364','Не вір, не бійся, не проси!','Музика: ШІ Слова: Олена Рассуждай','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Не вір, не бійся, не проси!
Цей світ не винен тобі ласки!
Не гнись під тиском голосів
І не шукай підтримки в масках!
Не плач!.. Сльоза не змиє ран,
Що їх життя вогнем таврує...
Людське мовчання це обман,
Що правду зраджує й марнує...

Приспів:
Не вір! Не бійся! Не проси!
Хай твій вогонь веде між скель!
Хоч правда ріже, ти живи
Без фальші, страху і петель!

Не жди, що хтось подасть тобі
Оту живу, жадану волю.
Її куєш у самоті!..
У боротьбі, в стражданні, в болю!..
Твій шлях веде крізь власні втрати.
Не зупинись, коли болить!..
Ти зможеш втому подолати,
Якщо навчишся серцем жить!..

Приспів.

Ти сам - свій меч,
Свій щит, свій стяг!
Ти сам - опора в дні суворі!
І все, чого давно ти праг,
Знайдеш у власній непокорі!..
Не вір, не бійся, не проси!
Цей світ не винен тобі ласки!
Не гнись під тиском голосів
І не шукай підтримки в масках!

Приспів.','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3557364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3557364','Не вір, не бійся, не проси!','Не вір, не бійся, не проси!
Цей світ не винен тобі ласки!
Не гнись під тиском голосів
І не шукай підтримки в масках!
Не плач!.. Сльоза не змиє ран,
Що їх життя вогнем таврує...
Людське мовчання це обман,
Що правду зраджує й марнує...

Приспів:
Не вір! Не бійся! Не проси!
Хай твій вогонь веде між скель!
Хоч правда ріже, ти живи
Без фальші, страху і петель!

Не жди, що хтось подасть тобі
Оту живу, жадану волю.
Її куєш у самоті!..
У боротьбі, в стражданні, в болю!..
Твій шлях веде крізь власні втрати.
Не зупинись, коли болить!..
Ти зможеш втому подолати,
Якщо навчишся серцем жить!..

Приспів.

Ти сам - свій меч,
Свій щит, свій стяг!
Ти сам - опора в дні суворі!
І все, чого давно ти праг,
Знайдеш у власній непокорі!..
Не вір, не бійся, не проси!
Цей світ не винен тобі ласки!
Не гнись під тиском голосів
І не шукай підтримки в масках!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3557364_l1','pisniua_3557364','YouTube','https://www.youtube.com/watch?v=xwcwmVLzF88','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3538323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3538323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3538323';
DELETE FROM songs WHERE id = 'pisniua_3538323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3538323','Їде в гості Миколай','Музика: ШІ Слова: Зоряна Лісевич','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Спи, засни, ось-ось
Настане нічка чарівна,
Миколай примчить на санях
До твого вікна!
Скрипу-рипу закружляють
З неба саночки,
А у санях Миколая
Подаруночки!

Приспів:
В цю святу ніч чудес
Відчиняє браму Рай,
І до тебе з небес
Їде в гості Миколай!
Скрипу-рип, скрипу-рип,
Сани-саночки, летіть,
І усім діточкам
Подаруночки везіть!

Поки будеш міцно спати
В теплім ліжку ти,
Тишком-нишком зайде в хату
Миколай Святий!
Обтрусивши кожушину
Від сніжиночок,
Покладе під подущину
Подаруночок!

Приспів. (2)','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3538323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3538323','Їде в гості Миколай','Спи, засни, ось-ось
Настане нічка чарівна,
Миколай примчить на санях
До твого вікна!
Скрипу-рипу закружляють
З неба саночки,
А у санях Миколая
Подаруночки!

Приспів:
В цю святу ніч чудес
Відчиняє браму Рай,
І до тебе з небес
Їде в гості Миколай!
Скрипу-рип, скрипу-рип,
Сани-саночки, летіть,
І усім діточкам
Подаруночки везіть!

Поки будеш міцно спати
В теплім ліжку ти,
Тишком-нишком зайде в хату
Миколай Святий!
Обтрусивши кожушину
Від сніжиночок,
Покладе під подущину
Подаруночок!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3538323_l1','pisniua_3538323','YouTube','https://www.youtube.com/watch?v=A7i8SYb0wkY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3557828';
DELETE FROM song_versions WHERE song_id = 'pisniua_3557828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3557828';
DELETE FROM songs WHERE id = 'pisniua_3557828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3557828','Не вистачає дому','Музика: Ruslan Music Слова: Ruslan Music','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Нас розкидало по краях —
По різних селах та містах,
По морях, горах, рівнинах,
По різних країнах...
Та не забудем ми ніяк,
Де починали свій шлях,
Де народились і росли,
Україна в серці завжди!

Приспів:
Не вистачає дому,  |
Рідного балкону,   |
Співу солов''я —    |
Там, де виріс я!.. | (2)

Нас змусила війна
Покинути свої міста,
А хтось просто шукав
Кращого життя!
Та не забудем ми ніяк,
Де починали свій шлях,
Де народились і росли,
Україна в серці завжди!

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''cat:manrivni'', ''Пісні про еміґрацію'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3557828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3557828','Не вистачає дому','Нас розкидало по краях —
По різних селах та містах,
По морях, горах, рівнинах,
По різних країнах...
Та не забудем ми ніяк,
Де починали свій шлях,
Де народились і росли,
Україна в серці завжди!

Приспів:
Не вистачає дому,  |
Рідного балкону,   |
Співу солов''я —    |
Там, де виріс я!.. | (2)

Нас змусила війна
Покинути свої міста,
А хтось просто шукав
Кращого життя!
Та не забудем ми ніяк,
Де починали свій шлях,
Де народились і росли,
Україна в серці завжди!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3557828_l1','pisniua_3557828','YouTube','https://www.youtube.com/watch?v=0_XUnFF_8_8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3557525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3557525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3557525';
DELETE FROM songs WHERE id = 'pisniua_3557525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3557525','Сама не своя','Музика: Alena Omargalieva Слова: Alena Omargalieva, Світлана Крись','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сама не своя!
Сама не своя!
З тобою з під ніг
Зникає земля!..

Приспів:
Сама не своя!
Сама не своя!
З тобою з під ніг
Зникає земля!..
Злітає з Орбіт
Без тебе життя!
Від твоїх обійм
Сама не своя!.. | (2)

Життя її очима -
Відчуття свободи,
Та невідома сила
Перехопила подих.
Знаю сама,
Вже не втекти,
Більше не можу
Бути на самоті...
Серце - мішень,
Ти - як стріла.
Як мені бути?.. | (3)

Приспів.

Сама, сама,     |
Сама не своя!.. | (4)

Любов тримає в курсі,
Куди вона несеться?..
У ритмі твого пульсу
Моє серце б''ється!..
Знаю сама,
Вже не втекти,
Більше не можу
Бути на самоті...
Серце - мішень,
Ти - як стріла.
Як мені бути?.. | (3)
Сама не своя!
Сама не своя!
З тобою з під ніг
Зникає земля!..

Приспів.

Сама, сама,     |
Сама не своя!.. | (4)','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3557525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3557525','Сама не своя','Сама не своя!
Сама не своя!
З тобою з під ніг
Зникає земля!..

Приспів:
Сама не своя!
Сама не своя!
З тобою з під ніг
Зникає земля!..
Злітає з Орбіт
Без тебе життя!
Від твоїх обійм
Сама не своя!.. | (2)

Життя її очима -
Відчуття свободи,
Та невідома сила
Перехопила подих.
Знаю сама,
Вже не втекти,
Більше не можу
Бути на самоті...
Серце - мішень,
Ти - як стріла.
Як мені бути?.. | (3)

Приспів.

Сама, сама,     |
Сама не своя!.. | (4)

Любов тримає в курсі,
Куди вона несеться?..
У ритмі твого пульсу
Моє серце б''ється!..
Знаю сама,
Вже не втекти,
Більше не можу
Бути на самоті...
Серце - мішень,
Ти - як стріла.
Як мені бути?.. | (3)
Сама не своя!
Сама не своя!
З тобою з під ніг
Зникає земля!..

Приспів.

Сама, сама,     |
Сама не своя!.. | (4)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3557525_l1','pisniua_3557525','YouTube','https://www.youtube.com/watch?v=fpfAtGRLt2s','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3557525_l2','pisniua_3557525','YouTube','https://www.youtube.com/watch?v=GbvoYvAwMA8','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3570727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3570727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3570727';
DELETE FROM songs WHERE id = 'pisniua_3570727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3570727','Над мирним краєм зірка зійшла','Музика: ШІ Слова: Ivanna Tarantiuk','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Над мирним краєм зірка зійшла
Вістку й святу долю та й принесла!
Тихо над світом свято добра
Бог народився! - Славімо Христа!

Коляд-колядниця з неба летить,
Зіркою ясною путь освітить!
В тиші наж світом дзвенить висота,
Бог народився! - Славімо Христа!

Снігом сріблястим засіяло все,
Свято Різдва в нашім серці живе!
Колядка велично над світом луна!
Бог народився! - Славімо Христа!

Хай у оселі панує добро!
Щоб не торкався ні смуток, ні зло!
Всім коляда вість принесла!
Бог народився! - Славімо Христа!

Ой, радуйся, земле, клич: Хвала!
Божая правда на крилах зійшла!
Світлом небесним сповняється дім!
Слава Христові на віки віків!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3570727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3570727','Над мирним краєм зірка зійшла','Над мирним краєм зірка зійшла
Вістку й святу долю та й принесла!
Тихо над світом свято добра
Бог народився! - Славімо Христа!

Коляд-колядниця з неба летить,
Зіркою ясною путь освітить!
В тиші наж світом дзвенить висота,
Бог народився! - Славімо Христа!

Снігом сріблястим засіяло все,
Свято Різдва в нашім серці живе!
Колядка велично над світом луна!
Бог народився! - Славімо Христа!

Хай у оселі панує добро!
Щоб не торкався ні смуток, ні зло!
Всім коляда вість принесла!
Бог народився! - Славімо Христа!

Ой, радуйся, земле, клич: Хвала!
Божая правда на крилах зійшла!
Світлом небесним сповняється дім!
Слава Христові на віки віків!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3570727_l1','pisniua_3570727','YouTube','https://www.youtube.com/watch?v=03ZBY6vmZ60','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3544168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3544168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3544168';
DELETE FROM songs WHERE id = 'pisniua_3544168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3544168','Подруги','Музика: Анна Волошина Слова: Квітка Гаєвська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Речитатив:
Я так давно з тобою не розмовляла,
Я часто пишу тобі листи, але стираю їх,
Не знаю, як краще пояснити свої почуття,
Тому просто заспіваю:

Зізнаюсь чесно, у нас було все:
Пісні до ранку, кілометри розмов,
Ти добре знаєш серце моє,
Мої секрети всі, як ніхто.
Тримались разом ми на плаву,
Пройшли крізь сльози і радість, і біль
І я себе на думці ловлю,
Що довіряю тільки тобі!

Приспів:
Найкраща подруга моя,   |
Ти не сумуй, коли сама! |
Як на душі буде зима,   |
Дзвони мені, з тобою я! | (2)

Невпинний час, дні і ночі летять,
Змінилось русло невгамовних думок,
Та спогади незмінно тремтять,
Болить відхилений твій дзвінок.
Я хочу знову той щирий сміх
Простих, сміливих і світлих дівчат,
Ти пам''ятаєш, якими були?..
Скажу, як є, я скучила так!

Приспів. (2)

Найкраща подруга моя!..','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3544168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3544168','Подруги','Речитатив:
Я так давно з тобою не розмовляла,
Я часто пишу тобі листи, але стираю їх,
Не знаю, як краще пояснити свої почуття,
Тому просто заспіваю:

Зізнаюсь чесно, у нас було все:
Пісні до ранку, кілометри розмов,
Ти добре знаєш серце моє,
Мої секрети всі, як ніхто.
Тримались разом ми на плаву,
Пройшли крізь сльози і радість, і біль
І я себе на думці ловлю,
Що довіряю тільки тобі!

Приспів:
Найкраща подруга моя,   |
Ти не сумуй, коли сама! |
Як на душі буде зима,   |
Дзвони мені, з тобою я! | (2)

Невпинний час, дні і ночі летять,
Змінилось русло невгамовних думок,
Та спогади незмінно тремтять,
Болить відхилений твій дзвінок.
Я хочу знову той щирий сміх
Простих, сміливих і світлих дівчат,
Ти пам''ятаєш, якими були?..
Скажу, як є, я скучила так!

Приспів. (2)

Найкраща подруга моя!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3544168_l1','pisniua_3544168','YouTube','https://www.youtube.com/watch?v=U0-QKzXkGZ8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3560525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3560525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3560525';
DELETE FROM songs WHERE id = 'pisniua_3560525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3560525','Бобровая струя','Музика: Орест Лютий Слова: Орест Лютий','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис',NULL,'Я народився у союзі,
Країні красних прапорів,
Мєчтав у космос полетіти
І мати ключ від Жигулів!
Але союз накрився тазом,
Болить промежина моя,
Знахарка каже, допоможе
Мені бобровая струя!

Приспів:
Не помагає ні*уя        |
Мені бобровая струя!    |
Хвилюваться нєт прічін, |
Совкодроч нєізлєчім!    | (2)

Мєчтав я стать міліонєром
І записався в МММ,
Але мій план накрився хєром
І цілим ворохом проблем!
Утратив дім, утратив гроші,
Болить очко і голова.
Гадалка каже, допоможе
Мені бобровая струя!

Приспів.

Хотів життя зробити кращим
І веселішим за квартал,
Голосував за прєза Вову,
Як поц топив за той кагал.
Але ракета прилетіла,
Мєчтав у рай потрапить я.
А Бозя каже, допоможе
Мені бобровая струя!

Приспів.','[''pisni.org.ua'', ''cat:ussr'', ''Радянська ідеологія'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3560525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3560525','Бобровая струя','Я народився у союзі,
Країні красних прапорів,
Мєчтав у космос полетіти
І мати ключ від Жигулів!
Але союз накрився тазом,
Болить промежина моя,
Знахарка каже, допоможе
Мені бобровая струя!

Приспів:
Не помагає ні*уя        |
Мені бобровая струя!    |
Хвилюваться нєт прічін, |
Совкодроч нєізлєчім!    | (2)

Мєчтав я стать міліонєром
І записався в МММ,
Але мій план накрився хєром
І цілим ворохом проблем!
Утратив дім, утратив гроші,
Болить очко і голова.
Гадалка каже, допоможе
Мені бобровая струя!

Приспів.

Хотів життя зробити кращим
І веселішим за квартал,
Голосував за прєза Вову,
Як поц топив за той кагал.
Але ракета прилетіла,
Мєчтав у рай потрапить я.
А Бозя каже, допоможе
Мені бобровая струя!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3560525_l1','pisniua_3560525','YouTube','https://www.youtube.com/watch?v=qU5kxpkBQh8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3571467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3571467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3571467';
DELETE FROM songs WHERE id = 'pisniua_3571467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3571467','Почаївській іконі Божої Матері',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Коли в святім храмі іде служба Божа,
Щоб Господу славу віддати,
Вся світлом палає, вся сонечком сяє    |
Ікона Почаївська Божая Мати!           | (2)

Ти - храму украса і серцю украса,
Хто хоче Тебе в серці мати,
Всім Ти помагаєш, в біді всіх спасаєш, |
Ікона Почаївська Божая Мати!           | (2)

До Тебе приходять у радості й скорбі,
Щоб радість і скорб розділити!
Ти радість приймаєш і скорб розділяєш, |
Ікона Почаївська Божая Мати!           | (2)

До Тебе приходять і хворі в недугах,
Від Тебе щоб зцілення мати.
Ти всіх ізціляєш, і всіх утішаєш,      |
Ікона Почаївська Божая Мати!           | (2)

І ми припадаєм до Образу Твого,
Пречиста Ісусова Мати,
В біді укріпляй нас, благословляй нас, |
Ікона Почаївська Божая Мати!           | (2)

Твій Образ Пречистий, Царице Небесна,
Щоб міг всіх людей зігрівати
Палай невгасимо, світи в кожне серце,  |
Ікона Почаївська Божая Мати!           | (2)','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3571467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3571467','Почаївській іконі Божої Матері','Коли в святім храмі іде служба Божа,
Щоб Господу славу віддати,
Вся світлом палає, вся сонечком сяє    |
Ікона Почаївська Божая Мати!           | (2)

Ти - храму украса і серцю украса,
Хто хоче Тебе в серці мати,
Всім Ти помагаєш, в біді всіх спасаєш, |
Ікона Почаївська Божая Мати!           | (2)

До Тебе приходять у радості й скорбі,
Щоб радість і скорб розділити!
Ти радість приймаєш і скорб розділяєш, |
Ікона Почаївська Божая Мати!           | (2)

До Тебе приходять і хворі в недугах,
Від Тебе щоб зцілення мати.
Ти всіх ізціляєш, і всіх утішаєш,      |
Ікона Почаївська Божая Мати!           | (2)

І ми припадаєм до Образу Твого,
Пречиста Ісусова Мати,
В біді укріпляй нас, благословляй нас, |
Ікона Почаївська Божая Мати!           | (2)

Твій Образ Пречистий, Царице Небесна,
Щоб міг всіх людей зігрівати
Палай невгасимо, світи в кожне серце,  |
Ікона Почаївська Божая Мати!           | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3571467_l1','pisniua_3571467','YouTube','https://www.youtube.com/watch?v=EZrdbOgVWAc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_360869';
DELETE FROM song_versions WHERE song_id = 'pisniua_360869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_360869';
DELETE FROM songs WHERE id = 'pisniua_360869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_360869','Скрипнули ворітечка – свати йдуть','Українська народна пісня. Виконує: Раїса Цапун','uk','ukraine_before_1917',NULL,NULL,'Надала Раїса Цапун','Записано Раїсою Цапун в селі Сварицевичі Дубровицького району Рівненської області','Скрипнули ворітечка - свати йдуть,
Вийди, вийди, мамонько, попитай.
Вийди, вийди, мамонько, попитай,
Якщо люди добрії - запрошай','[''pisni.org.ua'', ''cat:poliski'', ''cat:rayisa-capun'', ''cat:socialno-pobutovi'', ''cat:vesilni'', ''Пісні з Полісся'', ''Цапун Раїса: матеріали'', ''Соціально-побутові пісні'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_360869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_360869','Скрипнули ворітечка – свати йдуть','Скрипнули ворітечка - свати йдуть,
Вийди, вийди, мамонько, попитай.
Вийди, вийди, мамонько, попитай,
Якщо люди добрії - запрошай');
DELETE FROM song_links WHERE song_id = 'pisniua_3543869';
DELETE FROM song_versions WHERE song_id = 'pisniua_3543869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3543869';
DELETE FROM songs WHERE id = 'pisniua_3543869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3543869','Я - егоїстка?','Музика: ШІ Слова: Ліна Костенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я - егоїстка? Мабуть, ви праві.
І я, бувало, думала про себе.
Тримає час гріхи мої нові,
Коли старі ще відмолити треба.

Я - лицемірка? Що ж, можливо, й так.
Життя навчило маски одягати.
Щоб викупити спокій на п''ятак
Доводилося інколи брехати.

Я надто горда? Вперта, як віслюк?
Якщо і, так, не вам мене судити.
Я від повчань втомилась і наук,
А ідеально не навчилась жити.

Бездушна я? Жорстока і черства?
Ну що іще там? Це усі провини?
Я визнаю, були й мої слова
Бездушними, жорстокими, черствими.

Були й дороги інколи криві.
Бувало, й зло лишалося за мною.
Я - егоїстка? Мабуть, ви праві...
Та я й не прикидалася святою.

Як бачиш, я — не подарунок долі.
Терпи таку, або втікай щодуху,
Поки ще ми не з''їли пуда солі
І світ не встиг замкнутися наглухо.

Свавільна, гостра, не терплю розлуки.
Я, мабуть, від природи трохи з перцем.
Дивися сам, до кого тягнеш руки,
Щоб потім не хапатися за серце.

У нас з тобою дуже різні мови.
Чи можна їх в єдину об''єднати?
Повір мені, повір мені на слово:
Тобі не вдасться бурю покохати!','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3543869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3543869','Я - егоїстка?','Я - егоїстка? Мабуть, ви праві.
І я, бувало, думала про себе.
Тримає час гріхи мої нові,
Коли старі ще відмолити треба.

Я - лицемірка? Що ж, можливо, й так.
Життя навчило маски одягати.
Щоб викупити спокій на п''ятак
Доводилося інколи брехати.

Я надто горда? Вперта, як віслюк?
Якщо і, так, не вам мене судити.
Я від повчань втомилась і наук,
А ідеально не навчилась жити.

Бездушна я? Жорстока і черства?
Ну що іще там? Це усі провини?
Я визнаю, були й мої слова
Бездушними, жорстокими, черствими.

Були й дороги інколи криві.
Бувало, й зло лишалося за мною.
Я - егоїстка? Мабуть, ви праві...
Та я й не прикидалася святою.

Як бачиш, я — не подарунок долі.
Терпи таку, або втікай щодуху,
Поки ще ми не з''їли пуда солі
І світ не встиг замкнутися наглухо.

Свавільна, гостра, не терплю розлуки.
Я, мабуть, від природи трохи з перцем.
Дивися сам, до кого тягнеш руки,
Щоб потім не хапатися за серце.

У нас з тобою дуже різні мови.
Чи можна їх в єдину об''єднати?
Повір мені, повір мені на слово:
Тобі не вдасться бурю покохати!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3543869_l1','pisniua_3543869','YouTube','https://www.youtube.com/watch?v=WGKTs_-2WU4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_36121';
DELETE FROM song_versions WHERE song_id = 'pisniua_36121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_36121';
DELETE FROM songs WHERE id = 'pisniua_36121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_36121','Смерічки','Музика: Василь Михайлюк Слова: Микола Юрійчук. Виконує: Андрій Князь','uk','ukr_ssr_1919_1991',NULL,'1967','1. Заспіваймо собі. Пісенник. - Ужгород: Закарпаття, 2001. 2. Пісні про кохання. Випуск 1. - К.: Музична Україна, 1972. 3. Струни серця. Українські народні пісні. Збірник. - Київ, "Дніпро", 1985, с. 235.','Композитор Василь Михайлюк у співавторстві з поетом Миколою Юрійчуком написав пісню "Смерічки" у 1967 році.','У вербах плакучих
Краса незрівнянна,
Та сохне на кручах
Їх врода весняна.
Приспів:
Гей, гей, коло річки,
Що вдаль десь струмоче,
Є в наших смерічках
Щось ніжне й дівоче.
Гей-я, гой-я, гой-я, гей-я, гой-я.
Є в наших смерічках
Щось ніжне й дівоче.
Краса смерекова
Не сохне, не в''яне,
Як осінь в діброви
Карпатські нагляне.
Приспів.
Полощуть їх грози
Із бурями злими,
Ще й люті морози
Цілуються з ними.
Приспів.
Їм юність дарують
Літа не з журбою,
Смерічки хвилюють...
І пахнуть смолою.
Приспів.
Акорди:
У вербах плакучих
Краса незрівнянна,
Та сохне на кручах
Їх врода весняна.
Приспів:
Гей, гей, коло річки,
Що вдаль десь струмоче,
Є в на__ших смерічках
Щось ніж__не й дівоче.
Гей-я, гой-я, гой-я, гей-я, гой-я.
Є в на__ших смерічках
Щось ніж__не й дівоче.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_36121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_36121','Смерічки','У вербах плакучих
Краса незрівнянна,
Та сохне на кручах
Їх врода весняна.
Приспів:
Гей, гей, коло річки,
Що вдаль десь струмоче,
Є в наших смерічках
Щось ніжне й дівоче.
Гей-я, гой-я, гой-я, гей-я, гой-я.
Є в наших смерічках
Щось ніжне й дівоче.
Краса смерекова
Не сохне, не в''яне,
Як осінь в діброви
Карпатські нагляне.
Приспів.
Полощуть їх грози
Із бурями злими,
Ще й люті морози
Цілуються з ними.
Приспів.
Їм юність дарують
Літа не з журбою,
Смерічки хвилюють...
І пахнуть смолою.
Приспів.
Акорди:
У вербах плакучих
Краса незрівнянна,
Та сохне на кручах
Їх врода весняна.
Приспів:
Гей, гей, коло річки,
Що вдаль десь струмоче,
Є в на__ших смерічках
Щось ніж__не й дівоче.
Гей-я, гой-я, гой-я, гей-я, гой-я.
Є в на__ших смерічках
Щось ніж__не й дівоче.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_36121_l1','pisniua_36121','YouTube','https://www.youtube.com/watch?v=HQ91pehPESw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_36121_l2','pisniua_36121','YouTube','https://www.youtube.com/watch?v=GSxGoKevp10','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_36121_l3','pisniua_36121','YouTube','https://www.youtube.com/watch?v=FxE6F53Q3po','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3573560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3573560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3573560';
DELETE FROM songs WHERE id = 'pisniua_3573560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3573560','У твоє серце стукає Різдво','Музика: Наталка Карпа Слова: Софія Міджак, Наталка Карпа','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
У твоє серце стукає Різдво!
У ніч магічну все стихає зло!
І світло завжди пітьму перемагає!
Славімо Його! Христос ся Рождає!

Відлунюються мольби в небеса,
Зорить у небі зіронька ясна,
В повітрі вже панує дух Різдва,
І в кожний дім так хочеться тепла!

Приспів.

Нехай любов огорне увесь біль,
По серці затихає заметіль,
І звістка про народження Христа
Запалить в людях віру у дива!

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3573560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3573560','У твоє серце стукає Різдво','Приспів:
У твоє серце стукає Різдво!
У ніч магічну все стихає зло!
І світло завжди пітьму перемагає!
Славімо Його! Христос ся Рождає!

Відлунюються мольби в небеса,
Зорить у небі зіронька ясна,
В повітрі вже панує дух Різдва,
І в кожний дім так хочеться тепла!

Приспів.

Нехай любов огорне увесь біль,
По серці затихає заметіль,
І звістка про народження Христа
Запалить в людях віру у дива!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3573560_l1','pisniua_3573560','YouTube','https://www.youtube.com/watch?v=sb38_9clk1A','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3570424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3570424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3570424';
DELETE FROM songs WHERE id = 'pisniua_3570424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3570424','Миколай завітав','Музика: Ігор Танчак Слова: Ігор Танчак','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вже зима, вже зима
Стежки замела,
Тихо спить, тихо спить
Віхола-хуга.

Приспів:
В мирні сни,       |
В мирні сни        |
В наш чудовий край |
Завітав, завітав   |
Святий Миколай!    | (2)

У торбинці своїй
Він приніс дари,
І гостинці смачні -
Все для дітвори!

Приспів.

Миколаю святий,
Просимо тебе,
Нехай мир, нехай мир
На землі буде!

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3570424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3570424','Миколай завітав','Вже зима, вже зима
Стежки замела,
Тихо спить, тихо спить
Віхола-хуга.

Приспів:
В мирні сни,       |
В мирні сни        |
В наш чудовий край |
Завітав, завітав   |
Святий Миколай!    | (2)

У торбинці своїй
Він приніс дари,
І гостинці смачні -
Все для дітвори!

Приспів.

Миколаю святий,
Просимо тебе,
Нехай мир, нехай мир
На землі буде!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3570424_l1','pisniua_3570424','YouTube','https://www.youtube.com/watch?v=HLVrQe-iZoo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3570424_l2','pisniua_3570424','YouTube','https://www.youtube.com/watch?v=sxQ_fiKpVe0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3581663';
DELETE FROM song_versions WHERE song_id = 'pisniua_3581663';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3581663';
DELETE FROM songs WHERE id = 'pisniua_3581663';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3581663','Молитва','Музика: Олександр Гончар Слова: Аліна Галіцька','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'О, Господи, ти можеш все на світі,
Ти - наймудріший, твориш чудеса!
Чом від земних гріхів щомиті
Так тяжко стогнуть небеса?..

За що нас, грішних-нерозумних, любиш?
Даєш всім кволим сили для життя,
Сліпим - прозріння, незпомічних - голубиш,
Квітучий шлях готуєш в небуття?..

О, Господи, молю пошли прощення,
Я - грішниця велика, я люблю.
Страждання, муками для мене є щодення...
О, Боже, розуму пошли, молю!..','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3581663'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3581663','Молитва','О, Господи, ти можеш все на світі,
Ти - наймудріший, твориш чудеса!
Чом від земних гріхів щомиті
Так тяжко стогнуть небеса?..

За що нас, грішних-нерозумних, любиш?
Даєш всім кволим сили для життя,
Сліпим - прозріння, незпомічних - голубиш,
Квітучий шлях готуєш в небуття?..

О, Господи, молю пошли прощення,
Я - грішниця велика, я люблю.
Страждання, муками для мене є щодення...
О, Боже, розуму пошли, молю!..');
DELETE FROM song_links WHERE song_id = 'pisniua_3572828';
DELETE FROM song_versions WHERE song_id = 'pisniua_3572828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3572828';
DELETE FROM songs WHERE id = 'pisniua_3572828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3572828','А тебе чекає Новий Рік','Музика: Світлана Кравчук, Валерія Кудрявець, Богдан Травінський Слова: А. Безкровний, В. Кудрявець, Р. Катрук, С. Кравчук','uk','ukraine_1991',NULL,NULL,'аудіозапис','Lyrics: Андрій Безкровний, Валерія Кудрявець, Роман Катрук, Світлана Кравчук, Богдан Травінський. Music: Світлана Кравчук, Валерія Кудрявець, Богдан Травінський.','Свято вже поруч,
Рік промайнув так швидко,
Наче ще вчора було надворі літо,
А вже сьогодні
Оговтатись не встигли,
Вся Україна в очікуванні дива!
Радісно малеча скаче,
Кульки в руках, новорічна казка,
Наче іскри в очах!
Всі старі проблеми швидше ти забувай!
Може щось не встиг здійснити —
Ну і нехай!

Приспів:
А тебе чекає Новий рік!
Друзів зустрічає на поріг!
І сьогодні хай ллється через край.
Щастя загадай, не зволікай!
А тебе чекає Новий рік,
І без снігу навіть зносить з ніг!
Крелики вгорі, зночі до зорі!
Ми йдемо в Новий,
В Новий, Новий, Новий, Новий рік!

Давай сьогодні подякуємо року!
В ці дні холодні зігріємося трохи!
Теплі обійми і найрідніші люди,
Бо всі разом ми!
Хай в нас все добре буде!
Відкоркуємо шампанське, все на столі,
Президенти, майже вже чотири нулі.
Вже лунає дзвін і сьогодні він
Нагадає всім: За кілька хвилин

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3572828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3572828','А тебе чекає Новий Рік','Свято вже поруч,
Рік промайнув так швидко,
Наче ще вчора було надворі літо,
А вже сьогодні
Оговтатись не встигли,
Вся Україна в очікуванні дива!
Радісно малеча скаче,
Кульки в руках, новорічна казка,
Наче іскри в очах!
Всі старі проблеми швидше ти забувай!
Може щось не встиг здійснити —
Ну і нехай!

Приспів:
А тебе чекає Новий рік!
Друзів зустрічає на поріг!
І сьогодні хай ллється через край.
Щастя загадай, не зволікай!
А тебе чекає Новий рік,
І без снігу навіть зносить з ніг!
Крелики вгорі, зночі до зорі!
Ми йдемо в Новий,
В Новий, Новий, Новий, Новий рік!

Давай сьогодні подякуємо року!
В ці дні холодні зігріємося трохи!
Теплі обійми і найрідніші люди,
Бо всі разом ми!
Хай в нас все добре буде!
Відкоркуємо шампанське, все на столі,
Президенти, майже вже чотири нулі.
Вже лунає дзвін і сьогодні він
Нагадає всім: За кілька хвилин

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3572828_l1','pisniua_3572828','YouTube','https://www.youtube.com/watch?v=JRFbrHzhBWg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_36261';
DELETE FROM song_versions WHERE song_id = 'pisniua_36261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_36261';
DELETE FROM songs WHERE id = 'pisniua_36261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_36261','Сніг на зеленому листі','Музика: Олександр Білаш Слова: Михайло Ткач. Виконує: Дмитро Гнатюк, Віктор Женченко, Микола Кондратюк, Анатолій Мокренко, Гурт Барви','uk','ukraine_1991',NULL,NULL,'1. О.Білаш. Любисток. - Київ: Музична Україна, 1970 2. Пісні про кохання. Випуск 1. - К.: Музична Україна, 1972',NULL,'Вигладаю тебе ще з весняних доріг,
Обминаю у мріях стежини тернисті.
Замість тебе в саду раптом сніг, раптом сніг,     |
Ранній сніг на зеленому листі.                    | (2)

Чи дорогу тобі може хтось перебіг,
Чи тебе забарили вітри норовисті,
Що так рано в саду раптом сніг, раптом сніг,      |
Сніг, як сміх, на зеленому листі.                 | (2)

Коли десь, моє щастя, ти збилося з ніг,
То поклич - і до серця мого нахилися, -
І розтане той сніг - ранній сніг, ранній сніг,    |
Сніг, як сум, на зеленому листі.                  | (2)

Я виходити буду щодня на поріг,
Сподіватися буду, що прийдеш колись ти,
Бо для мене той сніг - ранній сніг, ранній сніг,- |
Пізній цвіт на зеленому листі.                    | (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_36261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_36261','Сніг на зеленому листі','Вигладаю тебе ще з весняних доріг,
Обминаю у мріях стежини тернисті.
Замість тебе в саду раптом сніг, раптом сніг,     |
Ранній сніг на зеленому листі.                    | (2)

Чи дорогу тобі може хтось перебіг,
Чи тебе забарили вітри норовисті,
Що так рано в саду раптом сніг, раптом сніг,      |
Сніг, як сміх, на зеленому листі.                 | (2)

Коли десь, моє щастя, ти збилося з ніг,
То поклич - і до серця мого нахилися, -
І розтане той сніг - ранній сніг, ранній сніг,    |
Сніг, як сум, на зеленому листі.                  | (2)

Я виходити буду щодня на поріг,
Сподіватися буду, що прийдеш колись ти,
Бо для мене той сніг - ранній сніг, ранній сніг,- |
Пізній цвіт на зеленому листі.                    | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_36261_l1','pisniua_36261','YouTube','https://www.youtube.com/watch?v=WnRKAuuuZlU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_36261_l2','pisniua_36261','YouTube','https://www.youtube.com/watch?v=_L4Wzr6AjGs','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_36261_l3','pisniua_36261','YouTube','https://www.youtube.com/watch?v=AI8jx2gejA4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_36261_l4','pisniua_36261','YouTube','https://www.youtube.com/watch?v=Wug1RBfBHQw','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_3565467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3565467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3565467';
DELETE FROM songs WHERE id = 'pisniua_3565467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3565467','Частівки','Музика: народна Слова: Сергій Воскрекасенко, Валентин Лагода','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Слава котиться землею,
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
DELETE FROM song_links WHERE song_id = 'pisniua_364168';
DELETE FROM song_versions WHERE song_id = 'pisniua_364168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_364168';
DELETE FROM songs WHERE id = 'pisniua_364168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_364168','Вишневий садок','Музика: Сергій Василюк Слова: Сергій Василюк','uk','ukraine_1991',NULL,NULL,'Запис концерту 12 квітня 2008 р. в Вінниці',NULL,'Вишневий садок поріс бур''яном,
Як серце козацьке в степу полином,
Розбиті дороги пробите село,
Ще й нас запрягають в чергове ярмо.

Чорт забирай, чорт забирай!
E7
Чорт забирай, бережи нас Боже!

Ганебная правда - як гори сміття,
Від Сяну до Дону - красиве життя.
Мій Київ втрачає шляхетність віків!
Що далі - Одеса? На черзі є Львів...

Чорт забирай, чорт забирай!
Чорт забирай, бережи нас Боже!

Приспів:
Рушник вишиваний, на покутті ікона.
Я в бабиній хаті, я знову вдома.
І байдуже те, що тобі скажуть чужі,
Бо є найважливішим те, що скажеш ти.
Рушник вишиваний, теплий хліб на столі.
Немає в світі рідніше землі.
Поки мої сади не стомились цвісти -
Мені є що сказать, є що відповісти.

А чорнії діри нас ваблять і ждуть.
Проллють нашу кров, потім нам продадуть.
Годують примарами тисячі літ,
Стравили зсередини славний мій рід!

Ми голі і босі, тому недарма
Відкритеє небо є наша душа.
Та душу роздерли на Захід, на Схід,
Чужинці вже пишуть за нас "Заповіт".

Чорт забирай, чорт забирай!
Чорт забирай, бережи нас Боже!

Приспів.

І поки у друга ще спалах в очах,
Відчуй його руку, і хай згине страх!
На прю чи на кіл - вибирати тобі,
Загинути в бою чи гнити в тюрмі.

А хто ж ти - кріпак чи козак?
Хто ж ти - кріпак чи козак?
Хто ж ти - кріпак чи козак?
Наволоч чи герой?

Приспів.','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_364168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_364168','Вишневий садок','Вишневий садок поріс бур''яном,
Як серце козацьке в степу полином,
Розбиті дороги пробите село,
Ще й нас запрягають в чергове ярмо.

Чорт забирай, чорт забирай!
E7
Чорт забирай, бережи нас Боже!

Ганебная правда - як гори сміття,
Від Сяну до Дону - красиве життя.
Мій Київ втрачає шляхетність віків!
Що далі - Одеса? На черзі є Львів...

Чорт забирай, чорт забирай!
Чорт забирай, бережи нас Боже!

Приспів:
Рушник вишиваний, на покутті ікона.
Я в бабиній хаті, я знову вдома.
І байдуже те, що тобі скажуть чужі,
Бо є найважливішим те, що скажеш ти.
Рушник вишиваний, теплий хліб на столі.
Немає в світі рідніше землі.
Поки мої сади не стомились цвісти -
Мені є що сказать, є що відповісти.

А чорнії діри нас ваблять і ждуть.
Проллють нашу кров, потім нам продадуть.
Годують примарами тисячі літ,
Стравили зсередини славний мій рід!

Ми голі і босі, тому недарма
Відкритеє небо є наша душа.
Та душу роздерли на Захід, на Схід,
Чужинці вже пишуть за нас "Заповіт".

Чорт забирай, чорт забирай!
Чорт забирай, бережи нас Боже!

Приспів.

І поки у друга ще спалах в очах,
Відчуй його руку, і хай згине страх!
На прю чи на кіл - вибирати тобі,
Загинути в бою чи гнити в тюрмі.

А хто ж ти - кріпак чи козак?
Хто ж ти - кріпак чи козак?
Хто ж ти - кріпак чи козак?
Наволоч чи герой?

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_364168_l1','pisniua_364168','YouTube','https://www.youtube.com/watch?v=Ary5NCQHqHA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_364626';
DELETE FROM song_versions WHERE song_id = 'pisniua_364626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_364626';
DELETE FROM songs WHERE id = 'pisniua_364626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_364626','Ой, Андрійку','Музика: Ольга Богомолець Слова: Ольга Богомолець. Виконує: Ольга Богомолець','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ми з тобов стояли тай на полонині,
Де тепер мандруєш, що сама я нині?
З ким рахуєш зорі з вечора до ранку?
Лиш твої мя очі сняться до світанку.

Ой, Андрійку, куди ж то я дивилась,
Що твоє кохання до мене забарилось?

Квіти я збирала та й плела віночок,
Скільки не гукала, не прийшов в садочок,
Тоді свій віночок в річці окропила,
На стрункій березі я його почепила.

Ой, Андрійку, де ж були мої очі,
Що твоє серденько не чекає ночі?

Як ти будеш їхать конем по дорозі,
Серденько, побачиш ти мене у тривозі.
Повертай ти коня, коня вороного,
Бо на всьому світі люблю тя одного.

Ой, Андрійку, де ж були мої очі,
Що твоє серденько до другої хоче?
Ой, Андрійку, куди ж то я дивилась,
Що твоє кохання до мене забарилось?
Ой, Андрійку, ой...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_364626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_364626','Ой, Андрійку','Ми з тобов стояли тай на полонині,
Де тепер мандруєш, що сама я нині?
З ким рахуєш зорі з вечора до ранку?
Лиш твої мя очі сняться до світанку.

Ой, Андрійку, куди ж то я дивилась,
Що твоє кохання до мене забарилось?

Квіти я збирала та й плела віночок,
Скільки не гукала, не прийшов в садочок,
Тоді свій віночок в річці окропила,
На стрункій березі я його почепила.

Ой, Андрійку, де ж були мої очі,
Що твоє серденько не чекає ночі?

Як ти будеш їхать конем по дорозі,
Серденько, побачиш ти мене у тривозі.
Повертай ти коня, коня вороного,
Бо на всьому світі люблю тя одного.

Ой, Андрійку, де ж були мої очі,
Що твоє серденько до другої хоче?
Ой, Андрійку, куди ж то я дивилась,
Що твоє кохання до мене забарилось?
Ой, Андрійку, ой...');
DELETE FROM song_links WHERE song_id = 'pisniua_367766';
DELETE FROM song_versions WHERE song_id = 'pisniua_367766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_367766';
DELETE FROM songs WHERE id = 'pisniua_367766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_367766','А в Сїночку на Ґаночку','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Щедрівка. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда) і Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) Листойко пише Гадки гадає. Пише Листи до Дївчини. Стежки до листків про Українські традиції.','А в Сїночку на Ґаночку
Там стоїть Кінь бай Вороний
На Тїм Конї Сїдло Ясне
На Тїм Сідлї Панич Красний
Пише Листи до Дївчини
Вона йому одписує

Через Море Рибонькою
Через Лїсок Пташинькою
Я до Тебе не бий Коня
Не бий Коня не трать Гроший
Я до Тебе сама буду
Добри Вечір','[''pisni.org.ua'', ''cat:shchedrivky'', ''cat:vesilni'', ''Щедрівки'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_367766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_367766','А в Сїночку на Ґаночку','А в Сїночку на Ґаночку
Там стоїть Кінь бай Вороний
На Тїм Конї Сїдло Ясне
На Тїм Сідлї Панич Красний
Пише Листи до Дївчини
Вона йому одписує

Через Море Рибонькою
Через Лїсок Пташинькою
Я до Тебе не бий Коня
Не бий Коня не трать Гроший
Я до Тебе сама буду
Добри Вечір');
DELETE FROM song_links WHERE song_id = 'pisniua_365525';
DELETE FROM song_versions WHERE song_id = 'pisniua_365525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_365525';
DELETE FROM songs WHERE id = 'pisniua_365525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_365525','Йшли ми до бою','Українська народна пісня. Виконує: Журборіз','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис',NULL,'Йшли ми до бою темними лісами,
Ішли визволяти рідний край.
Вкраїнське військо Степана Бандери
За наш український звичай. Гей, гей.
Вкраїнське військо Степана Бандери
За наш український звичай.

Нас різали, стріляли, били, катували
Чeрвоні кати, мoскалі.
Ми стерегли державу від клятої навали,
І гнали з української землі. Гей, гей.
Ми стерегли державу від клятої навали,
І гнали з української землі.

Була Україна в сльозах і руїнах,
Тужила за синами вона.
Але ще не вмерла, не впала на коліна,
Прекрасна наша рідна сторона.  Гей, гей.
Але ще не вмерла, не впала на коліна,
Прекрасна наша рідна сторона.

В далекім Сибіру вмирали герої,
Віддати життя їм довелось.
На нашому стязі священні два кольори,
То колір неба й золото колоссь. Гей, гей.
На нашому стязі священні два кольори,
То колір неба й золото колось.
То колір неба й золото колось','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_365525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_365525','Йшли ми до бою','Йшли ми до бою темними лісами,
Ішли визволяти рідний край.
Вкраїнське військо Степана Бандери
За наш український звичай. Гей, гей.
Вкраїнське військо Степана Бандери
За наш український звичай.

Нас різали, стріляли, били, катували
Чeрвоні кати, мoскалі.
Ми стерегли державу від клятої навали,
І гнали з української землі. Гей, гей.
Ми стерегли державу від клятої навали,
І гнали з української землі.

Була Україна в сльозах і руїнах,
Тужила за синами вона.
Але ще не вмерла, не впала на коліна,
Прекрасна наша рідна сторона.  Гей, гей.
Але ще не вмерла, не впала на коліна,
Прекрасна наша рідна сторона.

В далекім Сибіру вмирали герої,
Віддати життя їм довелось.
На нашому стязі священні два кольори,
То колір неба й золото колоссь. Гей, гей.
На нашому стязі священні два кольори,
То колір неба й золото колось.
То колір неба й золото колось');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_365525_l1','pisniua_365525','YouTube','https://www.youtube.com/watch?v=iuNVo9kugLc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_365525_l2','pisniua_365525','YouTube','https://www.youtube.com/watch?v=acVYF38wCGo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_365525_l3','pisniua_365525','YouTube','https://www.youtube.com/watch?v=yACjumk7vFs','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_370929';
DELETE FROM song_versions WHERE song_id = 'pisniua_370929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_370929';
DELETE FROM songs WHERE id = 'pisniua_370929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_370929','Ну і що ж, що прийдеться нам вмерти','Українська народна пісня. Виконує: Рутенія','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис',NULL,'Ну і що ж, що прийдеться нам вмерти?
З автоматом в руках у житах
Ми у вічі сміємося смерті,
А вмирати прийдеться лиш раз...
А вмирати прийдеться лиш раз...

Така вже доля в нас:                 |
Серед громів війни                   |
Зродила нас УПА                      |
І ми - її сини.                      | (2)

Будуть нас на воротах прощати,
Недаремно дівчата, ждучи,
Будуть нам маршової співати,
До атаки гранати рвучись...
До атаки гранати рвучись...

І наша воля в нас -                 |
Серед громів війни                   |
Зродила нас Вкраїна                  |
І ми - її сини.                      | (2)

Наша сотня - залізна, ударна,
Наша сотня в бою - богатир.
Нас тризуба веде знам''я грізне
І завзятий наш друг командир...
І завзятий наш друг командир...

Така вже доля в нас
І наша воля в нас -
Серед громів війни
Зродила нас Вкраїна
І ми - її сини.
Така вже воля в нас -
Серед громів війни
Зродила нас Вкраїна
І ми - її сини.

За потоптану честь України,
За поранену землю святу
Ми йдемо, щоб підняти з руїни
Українську державу нову...
Українську державу нову...

І наша воля в нас -             |
Серед громів війни              |
Зродила нас Вкраїна             |
І ми - її сини.                 | (2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_370929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_370929','Ну і що ж, що прийдеться нам вмерти','Ну і що ж, що прийдеться нам вмерти?
З автоматом в руках у житах
Ми у вічі сміємося смерті,
А вмирати прийдеться лиш раз...
А вмирати прийдеться лиш раз...

Така вже доля в нас:                 |
Серед громів війни                   |
Зродила нас УПА                      |
І ми - її сини.                      | (2)

Будуть нас на воротах прощати,
Недаремно дівчата, ждучи,
Будуть нам маршової співати,
До атаки гранати рвучись...
До атаки гранати рвучись...

І наша воля в нас -                 |
Серед громів війни                   |
Зродила нас Вкраїна                  |
І ми - її сини.                      | (2)

Наша сотня - залізна, ударна,
Наша сотня в бою - богатир.
Нас тризуба веде знам''я грізне
І завзятий наш друг командир...
І завзятий наш друг командир...

Така вже доля в нас
І наша воля в нас -
Серед громів війни
Зродила нас Вкраїна
І ми - її сини.
Така вже воля в нас -
Серед громів війни
Зродила нас Вкраїна
І ми - її сини.

За потоптану честь України,
За поранену землю святу
Ми йдемо, щоб підняти з руїни
Українську державу нову...
Українську державу нову...

І наша воля в нас -             |
Серед громів війни              |
Зродила нас Вкраїна             |
І ми - її сини.                 | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_370929_l1','pisniua_370929','YouTube','https://www.youtube.com/watch?v=DV0kCiMQNoc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_372121';
DELETE FROM song_versions WHERE song_id = 'pisniua_372121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_372121';
DELETE FROM songs WHERE id = 'pisniua_372121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_372121','Із-за гаю сонце сходить','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Із-за гаю сонце сходить,
За гай і заходить.

По долині увечері       |
Козак смутний ходить.   | (2)

Ходить він годину,
Ходить він і другу.

Не виходить чорнобрива  |
Із темного лугу,        | (2)

Не виходить зрадливая...
А з яру та з лісу

З собаками та псарями   |
Їде пан гульвіса.       | (2)

Цькують його собаками,
Крутять назад руки

І завдають козакові     |
Смертельної муки;       | (2)

У льох його, молодого,
Той пан замикає...

А дівчину покриткою     |
По світу пускає.        | (2)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_372121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_372121','Із-за гаю сонце сходить','Із-за гаю сонце сходить,
За гай і заходить.

По долині увечері       |
Козак смутний ходить.   | (2)

Ходить він годину,
Ходить він і другу.

Не виходить чорнобрива  |
Із темного лугу,        | (2)

Не виходить зрадливая...
А з яру та з лісу

З собаками та псарями   |
Їде пан гульвіса.       | (2)

Цькують його собаками,
Крутять назад руки

І завдають козакові     |
Смертельної муки;       | (2)

У льох його, молодого,
Той пан замикає...

А дівчину покриткою     |
По світу пускає.        | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_36869';
DELETE FROM song_versions WHERE song_id = 'pisniua_36869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_36869';
DELETE FROM songs WHERE id = 'pisniua_36869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_36869','Як заграли мені цимбали...','Слова: Марія Влад','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Як заграли мені цимбали
перший раз

На першій забаві,
На першім танці у неділю,-
Очі легінів
Засиніли росою
На білих
Леліях.

Я ж на тій забавоньці
Довго не забавилась,
Перші черевики — в руки -
Скоком через луки.
Ненька не веліла.

А цимбали — вслід,
А цимбали
Вслід-бо
В ноги зіллям,
В серце сріблом
Понадзвонювали.

Як заграли мені цимбали
другий раз

На весіллі —
Гадки-думи обсіли.
Дитинство забрали
Цимбали
Тонкострунаві.

Заграйте мені, цимбали,
на цей раз:

Я заглянути мушу
Моєму народові в душу,

Заграйте мені, цимбали,
ще раз!','[''pisni.org.ua'', ''cat:huculski'', ''cat:vesilni'', ''Гуцульські пісні'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_36869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_36869','Як заграли мені цимбали...','Як заграли мені цимбали
перший раз

На першій забаві,
На першім танці у неділю,-
Очі легінів
Засиніли росою
На білих
Леліях.

Я ж на тій забавоньці
Довго не забавилась,
Перші черевики — в руки -
Скоком через луки.
Ненька не веліла.

А цимбали — вслід,
А цимбали
Вслід-бо
В ноги зіллям,
В серце сріблом
Понадзвонювали.

Як заграли мені цимбали
другий раз

На весіллі —
Гадки-думи обсіли.
Дитинство забрали
Цимбали
Тонкострунаві.

Заграйте мені, цимбали,
на цей раз:

Я заглянути мушу
Моєму народові в душу,

Заграйте мені, цимбали,
ще раз!');
DELETE FROM song_links WHERE song_id = 'pisniua_37020';
DELETE FROM song_versions WHERE song_id = 'pisniua_37020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_37020';
DELETE FROM songs WHERE id = 'pisniua_37020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_37020','Військо','(Звучить як міт). Музика: Едуард Драч Слова: Іван Малкович. Виконує: Едуард Драч, Журборіз','uk','ukraine_1991',NULL,NULL,'текст - http://poetry.uazone.net, Валерій Корнєєв',NULL,'Вступ:

Звучить як міт: відважне військо
жило в лісах цих під землею
і напувало з фляг австрійських  |
Dm             E      Am     |(x2)
дубів коріння — власну стелю.   |

Програш (на мелодію Вступу)  (x2)

Плекало волею ці звори,
а звіра — кров''ю — щоб напився,
щоб гордими лишались гори              |
й хоч хтось в цім світі не скорився... | (x2)

Звучить як міт: відважне військо
жило в лісах цих під землею
і напувало з фляг австрійських  |
дубів коріння — власну стелю.   | (x2)','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_37020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_37020','Військо','Вступ:

Звучить як міт: відважне військо
жило в лісах цих під землею
і напувало з фляг австрійських  |
Dm             E      Am     |(x2)
дубів коріння — власну стелю.   |

Програш (на мелодію Вступу)  (x2)

Плекало волею ці звори,
а звіра — кров''ю — щоб напився,
щоб гордими лишались гори              |
й хоч хтось в цім світі не скорився... | (x2)

Звучить як міт: відважне військо
жило в лісах цих під землею
і напувало з фляг австрійських  |
дубів коріння — власну стелю.   | (x2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_37020_l1','pisniua_37020','YouTube','https://www.youtube.com/watch?v=mM8NfAZ0Df0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_37020_l2','pisniua_37020','YouTube','https://www.youtube.com/watch?v=clZiLytnSCY','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_37020_l3','pisniua_37020','YouTube','https://www.youtube.com/watch?v=zZck9f_0wBk','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_369261';
DELETE FROM song_versions WHERE song_id = 'pisniua_369261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_369261';
DELETE FROM songs WHERE id = 'pisniua_369261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_369261','Роман','Музика: Лідія Королевич Слова: Лідія Королевич. Виконує: Лілія Коструба','uk','ukraine_1991',NULL,NULL,'Авторський рукопис',NULL,'1.Минулися ті дні любови.
Заникло щастя вже моє,
І не повернеться ніколи,
Хоч недалеко воно є.

Я щастя в славі не шукаю,
Ані в грошах, ані в майні,
Лишень одне собі бажаю,
Щоб зрозумів слова мої:

Роман, що ти зробив,
Роман, нащо мене покинув
Роман, ти ж мене любив,
Без тебе я загину

Хоча біля мене тепер ти не є,
Хоча не говориш, о ні!
Я бачу се чорне волосся твоє
І синії очі твої.
Я чую твій голос, солодкі слова:
"О, Лідусь, одна ти у мене"...
Втім, шепче хтось стиха: " це тільки мана...
Твій Роман ніколи не верне".

2.Йордан, це був той день розпуки.
Ох, не забуду я про це!
Я прочитала лист розлуки.
Між нами скінчене усе.
Ах, пощо Романа пізнала?
Пощо його кохала?
Щоб я тепер сама осталась.
І плакала й ридала.

Роман, що ти зробив,
Роман, нащо мене покинув
Роман, ти ж мене любив,
Без тебе я загину','[''pisni.org.ua'', ''cat:dances'', ''cat:tango'', ''Пісні до танцю'', ''Танґо'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_369261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_369261','Роман','1.Минулися ті дні любови.
Заникло щастя вже моє,
І не повернеться ніколи,
Хоч недалеко воно є.

Я щастя в славі не шукаю,
Ані в грошах, ані в майні,
Лишень одне собі бажаю,
Щоб зрозумів слова мої:

Роман, що ти зробив,
Роман, нащо мене покинув
Роман, ти ж мене любив,
Без тебе я загину

Хоча біля мене тепер ти не є,
Хоча не говориш, о ні!
Я бачу се чорне волосся твоє
І синії очі твої.
Я чую твій голос, солодкі слова:
"О, Лідусь, одна ти у мене"...
Втім, шепче хтось стиха: " це тільки мана...
Твій Роман ніколи не верне".

2.Йордан, це був той день розпуки.
Ох, не забуду я про це!
Я прочитала лист розлуки.
Між нами скінчене усе.
Ах, пощо Романа пізнала?
Пощо його кохала?
Щоб я тепер сама осталась.
І плакала й ридала.

Роман, що ти зробив,
Роман, нащо мене покинув
Роман, ти ж мене любив,
Без тебе я загину');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_369261_l1','pisniua_369261','YouTube','https://www.youtube.com/watch?v=PN3UtnBod3c','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_372424';
DELETE FROM song_versions WHERE song_id = 'pisniua_372424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_372424';
DELETE FROM songs WHERE id = 'pisniua_372424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_372424','Про військо Червоне, про Леніна-батька і синів','Виконує: Павло Гащенко, Степан Пасюга, Г. Цибка, Петро Древченко (Древкін)','uk','ukr_ssr_1919_1991',NULL,'1982','"Думи. Історико-героїчний цикл". Київ, Дніпро, 1982.','Комуністичні конструкції історико-героїчного циклу українських народних дум. Конструкція М. Стельмаха, 1982: "Думи. Історико-героїчний цикл." Київ, Дніпро, 1982. ВСТУПНЕ СЛОВО. (МИХАЙЛО СТЕЛЬМАХ) Відомо, що в пісні вилилася вся минула доля, весь справжній характер України; пісня і дума становлять там народу святиню, краще добро українського життя, в них горить любов до батьківщини, виблискує слава минулих подвигів. М.О. Добролюбов. Терпкими соками суворої і величної історії, волелюбністю народного серця і незміренною любов''ю до рідної, навпіл засіяної зерном і кров''ю землі вирощена українська дума. Не в затишку біля домашнього вогнища, а на сплюндрованих вогнем і мечем поселеннях, не під дзвін золотої бджоли, а під гадючий посвист петлі татарського ординця і зловісний блиск турецького ятагана народжувався наш героїчний епос. Народжувався він там, де жив, страждав і боровся український народ: на велелюдних, розколиханих тяжкими звістками майданах і в орлиних гніздах Запорозької Січі, в турецькій неволі і в кривавих січах проти чужоземних людоловів і поневолювачів. Тому ми й крізь віки вчуваємо в українській думі кипучу пристрасть наших предків, разючий свист козацьких шабель, брязкіт невільницьких кайданів і ясу перемог. Історія нашого народу-трудівника склалася так, що він на протязі довгих століть мусив тримати в одній руці серпа, а в другій – зброю. Ніколи наш народ – народ великої душі і доброго серця – не косував і не зазіхав на чужі краї. А на його землю в гонитві за зиском і чорноземом сунули і татарські ординці, і турецькі яничари, і німецькі ландскнехти, і шведські владолюбці, і польські магнати. Тут, на обездолених займищах і кресах, вони шукали ситого життя і слави, тут вони мріяли навіки залишити своє коріння й насіння, а залишили свою зганьблену зброю і могили. Звитяжна боротьба українського народу проти чужоземних завойовників – це основа нашого героїчного епосу. Народившись ще в XV віці, він крізь буремні віки дожив до сьогоднішнього дня і житиме для нових поколінь, бо генієм народу йому дано те безсмертя, перед яким безсилі тумани хронології і перед яким віки стоять у почесній варті; більше того, завдяки своїй волелюбності, героїці, глибині почуттів, поетичній довершеності, наша дума перейшла географічні кордони і стала цінним культурним надбанням інших народів. Отже, життєвий шлях її з віками не обривається, а продовжує зеленіти в новому розвої. І ми можемо гордитися, що наш український епос по праву достойно входить у величну скарбницю світової культури. Історія життя українського народу – душа нашого епосу, а вікопомна поезія "Слова о полку Ігоревім" і поетика народної пісні – крила наших дум. Хто ж є їхнім героєм? Ой полем, полем Килиїмським, То шляхом битим гординським, Ой там гуляв козак Голота, Не боїться ні огня, ні меча, ні третього болота. Правда, на козакові шати дорогії – Три семирязі лихії: Одна недобра, друга негожа, А третя й на хлів незгожа. А ще, правда, на козакові постоли в''язові, А онучі китайчані – Щирі жіноцькі рядняні; Волоки шовкові – Удвоє жіноцькі щирі валові. Правда, на козакові шапка-бирка, Зверху дирка, Травою пошита, Вітром підбита, Куди віє, туди й провіває, Козака молодого прохолоджає. То гуляє козак Голота, погуляє, Ні города, ні села не займає... З блискучою художньою довершеністю розкривається тут образ захисника рідного краю, образ простого воїна, який "не боїться ні огня, ні меча, ні третього болота". З яким прекрасним доброзичливим гумором описано одяг бідного козака, представника народу. І дарма, що на козакові всі "три семирязі лихії", а шапка-бирка "зверху дирка, травою пошита, вітром підбита", він не зазіхає на чужі багатства, він ні города, ні села, ні людей не займає. Небагато рядків думи ми прочитали, а перед нами постав колоритний, по-людяному привабливий образ охоронця Київського поля ― оборонця рідної землі. І навіть його вбогі шати приваблюють нас більше, аніж пишне королівське вбрання. І зовсім інакше, з епічним спокоєм, за яким вчувається приховане презирство, вимальовується образ татарського людолова:... дороге плаття надіває, Чоботи обуває, Шлик бархатний на свою голову надіває, На коня сідає, Безпечно за козаком Голотою ганяє. То козак Голота добре козацький звичай знає, – Ой на татарина скрива, як вовк, поглядає. Каже: "Татарине, татарине! На віщо ж ти важиш: Чи на мою ясненькую зброю, Чи на мого коня вороного, Чи на мене, козака молодого?" "Я, – каже, – важу на твою ясненькую зброю, А ще лучче на твого коня вороного, А ще лучче на тебе, козака молодого. Я тебе хочу живцем у руки взяти, В город Килию запродати, Перед великими панами-башами вихваляти І много червоних не лічачи набрати, Дорогії сукна не мірячи пощитати". Неситому ворогові не судилося здійснити своє вихваляння: в герці козак перемагає нападника. Ці два образи думи є наче символом історичної боротьби українського народу із татарськими і турецькими загарбниками. Символічно звучить наприкінці думи і хвала Килиїмському полю ― рідній землі: Ой поле Килиїмське! Бодай же ти літо й зиму зеленіло, Як ти мене при нещасливій годині сподобило! Рідна земля! Нема в світі нічого дорожчого за неї для нашого серця. Вона ще над колискою немовляти погойдує сонячний промінь і лагідну колисанку матері, вона підводить своїм гірким і солодким хлібом дитину на ноги і входить в її очі та душу своєю безмірною красою, вона дарує своїм дітям велич людини і, скільки може, захищає тебе в лиху годину і сама потребує твого самовідданого захисту. Рідна земля! Вона уся оповита нашою любов''ю, звіку напоєна кров''ю своїх синів і возвеличена духом людини в найкращих її творах. Згадаймо, як бринить вона у безсмертному "Слові о полку Ігоревім", – і ми відчуємо, як вона озивається в думах. Нічого нема гіршого для людини, як неволя. А турецька неволя-каторга своєю сумною славою стала відома на весь світ. Досить заглянути в літописи і свідоцтва минулих віків, щоб збагнути увесь жах і муки невольників на турецьких галерах, щоб почути брязкіт скупаних в людській крові кайданів, щоб побачити, як горде людське чоло, на якому окреслюється мужність і розум, навік пропалює розпечене залізо. Але й на кривавих невольничих торговицях, на які з''їжджалися покупці рабів із трьох материків, і на турецькій каторзі невольники не забувають своєї рідної землі. І ця любов особливо зворушливо озивається в невольницьких плачах-думах, де майже кожен, характерний лише для думи, рядок підкреслює різницю між своїм добрим і чужим лихим краєм, що виплодив людоловів: До костей козацькеє тіло молодецькеє оббивали, Кров християнську неповинно проливали. То як стали бідні невольники на собі кров забачати, Стали турка клясти-проклинати: "Ой ти, турок проклятий, віро бусурмлянська, Розлуко християнська! Ти не одного сина із отцем й з матір''ю розлучила, І брата з сестрою, І мужа з жоною, Товариша із товаришем; Бідному невольнику ніколи й спокою немає. Визволь нас, господи, із тяжкої неволі Та на тихії води, І на яснії зорі, Та у край веселий, Между мир хрещений... Образ рідної землі, любовно виплеканий невольниками, яким залізо-кайдани постирали до кості тіло, хвилює нас і через сотні років. Ми можемо лише здогадуватися, як "тихі води і ясні зорі" рідного краю кликали до себе невольників з проклятого рабства, як у свій час, коли неволя чатувала на нашу землю, кобзарські думи зворушували серця матерів і батьків, братів і сестер. Поетичний образ рідного краю, вимріяний і вистражданий невольниками на чужій каторзі, ми вважаємо одним з найкращих образів у світовій духовній скарбниці. Думи про неволю та про боротьбу з турками і татарами займають чільне місце в українському епосі, до них належать, окрім згаданих, такі неперевершені твори, як "Самійло Кішка", "Івась Удовиченко, Коновченко", "Маруся Богуславка", "Втеча трьох братів із города Азова, з турецької неволі", "Отаман Матяш старий" та інші. Героями цих дум є, як правило, волелюбні сини народу, яких не згинає неволя, які мужньо борються з ворогом, перемагають його або достойно і чесно зустрічають смерть у нерівному бою. В них оспівується вірність товариству, підноситься ідея єдності з російськими братами по зброї. За своїм характером – це глибоко реалістичні твори, в яких не знайдемо слідів ні міфології, ні казковості, ні фантастики. В деяких із цих дум епос глибоко переплітається з лірикою, а в реалістичну основу іноді закономірно входять елементи перебільшення – гіперболізм – з метою різкіше підкреслити хоробрість народних героїв ("Отаман Матяш старий", "Івась Удовиченко, Коновченко"). Друге місце за кількістю у нашому героїчному епосі займають думи про боротьбу українського народу з польською шляхтою, яка, насаджуючи дике кріпосницьке свавілля, захопила більшу частину нашої землі. Ці думи є художнім свідченням самовідданої любові до дідизни і ненависті до її ворогів, зокрема свідченням великого патріотичного піднесення всього українського народу у визвольну війну 1648 – 1654 років. Основними героями цих творів є широкі маси повсталого селянства і козаків, а керівником їх яскраво показано Богдана Хмельницького, якого народ любовно величає "наш батю Зинов". Безсмертною славою увінчує народ в думах своїх вірних синів Богдана Хмельницького, Івана Богуна, Максима Кривоноса, Семена Палія, ― історичних діячів, які, правильно зрозумівши національні інтереси українського народу, в боротьбі проти іноземних загарбників шукали союзу і підтримки у великого народу російського, і, навпаки, довічною ганьбою таврує народ ренегатів і зрадників, таких, як Барабаш, Виговський, Мазепа. Історичних діячів, які боролися за соціальну справедливість, за незалежність своєї країни, народ наділяє найкращими людськими рисами. В народній уяві вони не вмирають після смерті, а живуть і житимуть у пам''яті нових поколінь. Цей мотив є основним мотивом в українському епосі: Полягла козацька молодецька голова, Як од вітру на степу трава: Слава не вмре, не поляже, Лицарство козацьке всякому розкаже!.. Окремо від дум, в яких оспівується козацька звитяга в боротьбі проти татаро-турецького і польсько-шляхетського поневолення, стоїть дорогоцінна перлина нашого епосу – дума "Козак нетяга Фесько Ганжа Андибер". Цей чудовий твір ніби продовжує думу про козака Голоту. Фесько Ганжа Андибер захищає козацьку сірому і бореться проти дуків-срібляників, що захопили у свої руки всю землю. Відомо, що українські думи створювалися десь від кінця XV століття. А через те, що записування їх почалося тільки в XIX віці, важко й уявити, скільки безслідно загинуло чудових творів нашого героїчного епосу. Ті ж думи, що відомі тепер, дійшли до нас з уст великих народних співців-кобзарів, таких, як Іван Стрічка, Остап Вересай, Андрій Шут, Іван Крюковський, Михайло Кравченко та ін. До речі, сліпий кобзар Михайло Кравченко є автором однієї з дум про відоме Сорочинське повстання. В дожовтневий період хронологічно найпізніше виникли дві думи про Сорочинське повстання 1905 року, вони історично правдиво відтворюють повстання селян у селі Великі Сорочинці. Автор думи "Про Сорочинські події 1905 року" Михайло Кравченко сам був учасником повстання і зазнав пересслідувань від царської влади. На його кобзарській судьбі відгомоном далеких віків обізвалася доля славетних кобзарів, які кликали народ до боротьби, ходили в походи і гинули в боях, востаннє тримаючи руку чи на зброї, чи на струнах кобзи. Вони кликали народ до боротьби, ходили в походи і гинули в боях, востаннє тримаючи руку чи на зброї, чи на струнах кобзи. Лише в одній страшній Кодні чорною волею головного реґіментаря королівського і Речі Посполитої війська Стемпковського було страчено разом з повстанцями Ґонти й Залізняка трьох кобзарів, учасників Коліївщини, – Варченка, Скрягу і Сокового. Після Великої Жовтневої революції в українській народній творчості народились думи про соціалістичну дійсність, широковідомими стали імена кобзарів ― авторів нових дум ― Федора Кушнерика, Єгора Мовчана, Володимира Перепелюка та інших. Багатою історією України, дійовою любов''ю до рідного краю ткалася безсмертна тканина нашого героїчного епосу, який увібрав у себе не тільк','А нумо, співці-кобзарі,
На голос давайте затягнем
Та вдаримо в кобзи журливі,
Хай струни орлами клекочуть,
Хай думи весною плюскочуть,
Як в небі пісні журавлині!

А нумо, співці-кобзарі,
Давайте свій строй перестроїм
З сумного на кличний
Та вдаримо в кобзи про волю прийдену
І люд наш відважний, величний!

Нехай ще лиш трохи спочинуть
Пісні старини України:
Неволя турецька,
Орди татарські,
Могили високі
І Січ низова молодецька;
Нехай старина почекає,
Бо час нас усіх обганяє
На крилах своїх переможних
І нас за собою гукає!

А нумо, співці-кобзарі,
Співаймо своїй Батьківщині,
Хто ж кращої пісні од нас заспіває,
У кого є кобза гучніша!
Кому ж, як не людям трудящим і нам,
Воля у світі миліша!
Хто ж перший з співців,
Як не ми, кобзарі,
Думи про волю складали,
Чи ж не ми про відвагу народу
В виру на майданах співали!                         ''\.

А нумо, співці-кобзарі,
Оспіваєм Червону заграву,
Про військо Червоне могутнє,
Про щастя народів майбутнє,
Про Леніна любого славу!

Ой надворі метелиця, грає хуртовина,
А на Київ з Скоропадським суне німців сила.
А за німцем пани й князі, ще й шляхетські графи
Сунуть хмарой в Україну, як та орда з Кафи.

Зажурилась Україна, села запалали,—
То так бідну Україну пани привітали.
Заплакали малі діти, жінки затужили,
Зачорніли по Вкраїні братськії могили.

Пішли сироти по світу з голоду вмирати —
Батька вбили, мати вмерла, ще й спалили хату...
Склали "спілку хліборобську" куркулі поганські,
Та й пішла на них робити голота бідняцька.

А в городі в Половенці, де заводи Брянські,
Б''ють та вішають робочих жандарі гетьманські.
Ще й не вспіли бідні люди покосити сіна,
Пани кажуть, що Вкраїна стала "самостійна".

Яка ж вона "самостійна", як кругом чужинці
І на пана одробляють бідняки вкраїнці?!
Бодай така "самостійна" повік не верталась,
Панам-дукам дала жнива — з бідних насміялась!

Напились пани пузаті з України крові,
Хазяюють, наче дома, у чужій коморі.
Забирають в селян бідних житечко, пшеницю
Та все даром відправляють панам за границю.

Не стерпіли бідні люди гетьманської "ласки"
Та й почали бить чужинців, ще й псів гайдамацьких.

Пани бачать: діло кепське,
Не виходить ладу —
Та й придумали, прокляті,
Якусь Центральну раду.

А в Києві лиха буря —
Появивсь якийсь Петлюра...
Та збирає все ту раду —
Куркульню й панву пузату —

Та все радиться з панвою:
"Як нам бути з голитьбою
Та ще з тими шахтарями,
Що ще здавна бунтарями,

Не вважають добре панство,
Поглядають на багатство,
Щоб у панів одібрати
Та голоті роздавати;

Нам, бач, треба таку владу,
Щоб остались бідні ззаду...
І маєтки, як були,
І пани щоб в них жили,

Бо й сам бог про це ж велів,
Що не можна без панів".

У неділю, в день покрови,
Попи дзвонять в усі дзвони:
"Поможи нам, святий Юрій,
Зібрать золота Петлюрі..."

Пожурились бідні люди:
"Що ж то дальше воно буде?"

А нумо, співці-кобзарі,
На голос давайте затягнем
Та вдаримо в кобзи журливі,
Хай струни орлами клекочуть,
Хай думи весною плюскочуть,
Як в небі пісні журавлині!

Зима хижим звіром виє,
Пургою заносить Вкраїну,
Пани криваві банкети справляють,
Нема людоїдам упину.

Та ось в хуртовині
Чийсь голос почувся:
"До зброї, голото! До зброї!
За мною, голото,
Я шлях покажу
До щастя-життя і до волі!"

Ой, хто ж той орел, що відваживсь літати
У хмарах і в бурі шаленій?
Та бідна голота по слову пізнала,
Що був то учитель наш — Ленін!

Вже буряне небо од хмар прояснилось,
А в ясній блакиті на крилах орлиних
Бунтарськеє серце носилось.
І з того великого серця бучного
Посипались іскри-стожари —
Кругом охопили Вкраїну повстання,
Криваві і гнівні пожари.

То не села тепер горять,
Не бідняцькі хати,
То горять кубла куркульські,
Ще й панські палати.

Наварив Петлюра каші
В автономнім казанку
Та й забув, що тая каша
Не до смаку бідняку...

Ой Петлюро-розбійнику,
Шельма превелика,
Подивися, чи не в тебе
Мазепина пика!..

Сидять пани в Німеччині
Та й чогось похмурились,
Їм досадно, що в Петлюри
Діла розпетлюрились...

В небі гайворони крячуть
На бурю велику —
Б''є Петлюру військо Красне
І в спину, і в пику!

А нумо, співці-кобзарі,
На голос давайте затягнем
Та вдаримо в кобзи журливі,
Хай струни орлами клекочуть,
Хай думи весною плюскочуть,
Як в небі пісні журавлині!

Не всі ще пропали пани генерали,
Купці і князі чужоземні...
Їм сниться Вкраїна, "сердешна небога",—
Не так Україна, як землі.

Пароходи ідуть морем,
Прорізають хвилі,
Їдуть пани лихо діять
Вільній Україні.

Наїхало чуже військо із країв далеких...
Англічани, італійці та іще і греки.

А з-за Дону пре Денюка,
Генерал, стара падлюка,
І кадети, і есери,
Ще й кубанські офіцери.

А з-під Польщі знову буря —
Появився пес Петлюра.
А за ним пани магнати
Йдуть йому допомагати;

Всі на Київ поспішають,
Та богунці не пускають...
Як узявсь Щорс за Петлюру —
Чуть не здер із нього шкуру!

А Боженко тих магнатів
Добре теж одколошматив!
Всилу встиг втекти Петлюра —
Аж облізла з його шкура!

А магнатам дід Боженко
Пом''яв ребра хорошенько!

Заграймо-но жалібно в кобзи,
Боженка і Щорса згадаєм,
Що вмерли за справжню Вкраїну,—
Цю пісню про них ми співаєм.

Ніч вороном чорним упала на землю,
Славута-Дніпро посинів...
Послухай, Вкраїно, про двох з багатьох
Твоїх найлюбимих синів.

Що перший — Боженко, старий твій заступник,—
Він бився за долю Вкраїни
І чесною смертю народного сина
За тебе, Вкраїно, загинув.

А другий — це Щорс, що під прапор покликав
Єднатись робочу голоту,
Бо Ленін йому наказав і навчив.
Як битись за діло народу!

Не вмре ваша слава, богунці відважні.
Бо слава од смерті не гине.
Вас слава сама між народом прославить
Синами справжньої Вкраїни!

Пруться греки, як лелеки,
З моря на Вкраїну,
Кричать: "Жар нам кури, яйця,
Ще й смачну свинину!"
А французи гладять пузо,
З Азовського лізуть.
"А нам,— кричать,— хліб, пшеницю,
Ще й руду залізну!"

А Денікін-товстопикін
Преться із-за Дону
Та на Москву поспішає,
Начебто додому.
Наступає чорна хмара,
Всю Росію криє...
Япон лізе з-за Уралу,
Страшним звіром виє.

Ой піднявся орел над Кремлем,
А за ним орлята —
Бистрі соколи крилаті, ленінці завзяті!
Полетіли ті соколи на чотири боки,
Наробили буржуякам крилами толоки.

Перший сокіл прилітає рятувать Вкраїну,
Кликнув хлопців-партизанів бить панів у спину,
Ще й повів Червоне військо лавами до бою:
"Бийтесь, діти пролетарські, за щасливу долю!"

А два соколи крилаті кликнули в Донбасі,
Загриміло слово "воля" на червонім стязі.
А товариш Фрунзе-сокіл за Урал-горами
Проріза червоним стягом чорні вражі хмари.

Одхлинають чорні сили, труп не підбирають,
А над полем, вкритим трупом, ворони літають...

А нумо, співці-кобзарі,
Затягнемо пісню кобзарську,
Як било панів наше військо Червоне,
Б''ючися за владу Радянську!

Послухайте, громадяни, як діло складалось:
Спершу кайзеру й гетьманцям
По ребрах дісталось!
Надавав їм Щорс з Боженком
І в пику, і в спину —
Кайзер ледь живий вернувся
До свого Берліну.

І Петлюри не минули —
Добре його стусонули,
За кордон, як пес, подався
Та вже більше й не вертався...

Узялись дубасить грека...
Чуть живий через Одесу
Утік в свою греконесу...

Італійцям і французам
Пронизав багнетом пузо
Ворошилов з шахтарями
Та з бідними злидарями.

А Денікін з козаками
Тіка з м''ятими боками...

Іде Клим з Семеном Доном,
Блискають шаблями,
Пада військо генеральське,
Як сміття до ями!

Військо наше йде Червоне,
На кашкетах зорі,
Потопили всіх кадетів
У Чорному морі!

З Прикарпаття на Вкраїну пани покотились,
А із Криму англічани з Врангелем явились...

Та вже більше не стерпіла Радянська Росія...
І хвилею лави,
Як море, заграли
І смерть на панів
Злидарі понесли!
І широкі поля —
Українська земля —
Окропились буржуйською кров''ю,
А з бою народи —
Заступники волі —
Вернулись до праці з любов''ю!

Ой ви ж, пани прудивуси,
Які ж бо ви боягузи,
Нахвалялись за годину
Всю загарбать Україну,
Будьоннівці появились —
Ви, як зайці, покотились
І лісами, й комишами
Аж до самої Варшави.

Згадаєте ще полізти —
Вам не буде більше місця
Ні в Варшаві, ні в Волині,
Ні в Карпатській Україні!

Не річки то бурхливі всієї Росії
До Чорного моря звернули,
То партія військо Червоне послала
Відстоювать діло Комуни.

Удовою затужила осінь над степами,
Дощі дрібні полилися на ковиль сльозами,
В морі Чорнім і Азовськім хвилі розходились,
Над Сивашем, над Чонгаром тумани спустились.
Не акули в синім морі пливуть-пропливають,—
То англійські бронеходи на хвилях гойдають.

Перекоп — ворожий табір — укрився туманом
І гармат велика сила за Турецьким валом.
То не грім ударив з моря в північну годину,—
То англійськії гармати б''ють на Україну.

То не вітер віє з Криму, не дощі то хлищуть —
Клекчуть люттю кулемети, кулі вихрем свищуть.
Вся Росія тут зібралась в цю тяжку годину,
Щоб вступитись за Комуну, за Радянську Україну!

Як гукнув до війська Фрунзе: "Уперед! За волю!
За життя майбутнє наше, за щасливу долю!"

Небо померкло, і зорі погасли,
І хмари спинились біжучі,
Як кинулось військо Червоне
На лави ворожі смердючі!

Багнетами військо відважне Червоне
Врангеля й англійців ударило в лоб,
Од моря до моря луна покотилась:
"Дайош Перекоп!"

І мозком не ввернеш,
І струни не зможуть
Цю ніч перемог оспівати,
Як поклик побідний
На крилах пронісся:
"Нікому вже нас у віках не здолати!"

Трупи ворожі заорють у ниву
Плугами нової Вкраїни,
А слава Червоного війська
Повіки не вмре, не загине!

Повернувся Фрунзе з Криму —
На Вкраїні нове диво:
Поки з паном в Криму бились,
Куркульські банди появились...

А попи до бога тоже:
"Поможи Махнові, боже..."

Трава в степу ляже, копитом зім''ята,
Співатимуть довго тавричанськії дівчата;
Заспівають пісню "Клима-земляка",                        *>
Чия була нещадная до Махна рука!

І вітер заспіває в степу з ковилями
Про те, як за землю билися селяни;
І в степу широкім могили високі
Заспівають думи про життя Комуни!..

Трупи ворожі заорють у ниву
Плугами нової Вкраїни,
А слава Червоного війська
Повіки не вмре,
Не загине!','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_372424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_372424','Про військо Червоне, про Леніна-батька і синів','А нумо, співці-кобзарі,
На голос давайте затягнем
Та вдаримо в кобзи журливі,
Хай струни орлами клекочуть,
Хай думи весною плюскочуть,
Як в небі пісні журавлині!

А нумо, співці-кобзарі,
Давайте свій строй перестроїм
З сумного на кличний
Та вдаримо в кобзи про волю прийдену
І люд наш відважний, величний!

Нехай ще лиш трохи спочинуть
Пісні старини України:
Неволя турецька,
Орди татарські,
Могили високі
І Січ низова молодецька;
Нехай старина почекає,
Бо час нас усіх обганяє
На крилах своїх переможних
І нас за собою гукає!

А нумо, співці-кобзарі,
Співаймо своїй Батьківщині,
Хто ж кращої пісні од нас заспіває,
У кого є кобза гучніша!
Кому ж, як не людям трудящим і нам,
Воля у світі миліша!
Хто ж перший з співців,
Як не ми, кобзарі,
Думи про волю складали,
Чи ж не ми про відвагу народу
В виру на майданах співали!                         ''\.

А нумо, співці-кобзарі,
Оспіваєм Червону заграву,
Про військо Червоне могутнє,
Про щастя народів майбутнє,
Про Леніна любого славу!

Ой надворі метелиця, грає хуртовина,
А на Київ з Скоропадським суне німців сила.
А за німцем пани й князі, ще й шляхетські графи
Сунуть хмарой в Україну, як та орда з Кафи.

Зажурилась Україна, села запалали,—
То так бідну Україну пани привітали.
Заплакали малі діти, жінки затужили,
Зачорніли по Вкраїні братськії могили.

Пішли сироти по світу з голоду вмирати —
Батька вбили, мати вмерла, ще й спалили хату...
Склали "спілку хліборобську" куркулі поганські,
Та й пішла на них робити голота бідняцька.

А в городі в Половенці, де заводи Брянські,
Б''ють та вішають робочих жандарі гетьманські.
Ще й не вспіли бідні люди покосити сіна,
Пани кажуть, що Вкраїна стала "самостійна".

Яка ж вона "самостійна", як кругом чужинці
І на пана одробляють бідняки вкраїнці?!
Бодай така "самостійна" повік не верталась,
Панам-дукам дала жнива — з бідних насміялась!

Напились пани пузаті з України крові,
Хазяюють, наче дома, у чужій коморі.
Забирають в селян бідних житечко, пшеницю
Та все даром відправляють панам за границю.

Не стерпіли бідні люди гетьманської "ласки"
Та й почали бить чужинців, ще й псів гайдамацьких.

Пани бачать: діло кепське,
Не виходить ладу —
Та й придумали, прокляті,
Якусь Центральну раду.

А в Києві лиха буря —
Появивсь якийсь Петлюра...
Та збирає все ту раду —
Куркульню й панву пузату —

Та все радиться з панвою:
"Як нам бути з голитьбою
Та ще з тими шахтарями,
Що ще здавна бунтарями,

Не вважають добре панство,
Поглядають на багатство,
Щоб у панів одібрати
Та голоті роздавати;

Нам, бач, треба таку владу,
Щоб остались бідні ззаду...
І маєтки, як були,
І пани щоб в них жили,

Бо й сам бог про це ж велів,
Що не можна без панів".

У неділю, в день покрови,
Попи дзвонять в усі дзвони:
"Поможи нам, святий Юрій,
Зібрать золота Петлюрі..."

Пожурились бідні люди:
"Що ж то дальше воно буде?"

А нумо, співці-кобзарі,
На голос давайте затягнем
Та вдаримо в кобзи журливі,
Хай струни орлами клекочуть,
Хай думи весною плюскочуть,
Як в небі пісні журавлині!

Зима хижим звіром виє,
Пургою заносить Вкраїну,
Пани криваві банкети справляють,
Нема людоїдам упину.

Та ось в хуртовині
Чийсь голос почувся:
"До зброї, голото! До зброї!
За мною, голото,
Я шлях покажу
До щастя-життя і до волі!"

Ой, хто ж той орел, що відваживсь літати
У хмарах і в бурі шаленій?
Та бідна голота по слову пізнала,
Що був то учитель наш — Ленін!

Вже буряне небо од хмар прояснилось,
А в ясній блакиті на крилах орлиних
Бунтарськеє серце носилось.
І з того великого серця бучного
Посипались іскри-стожари —
Кругом охопили Вкраїну повстання,
Криваві і гнівні пожари.

То не села тепер горять,
Не бідняцькі хати,
То горять кубла куркульські,
Ще й панські палати.

Наварив Петлюра каші
В автономнім казанку
Та й забув, що тая каша
Не до смаку бідняку...

Ой Петлюро-розбійнику,
Шельма превелика,
Подивися, чи не в тебе
Мазепина пика!..

Сидять пани в Німеччині
Та й чогось похмурились,
Їм досадно, що в Петлюри
Діла розпетлюрились...

В небі гайворони крячуть
На бурю велику —
Б''є Петлюру військо Красне
І в спину, і в пику!

А нумо, співці-кобзарі,
На голос давайте затягнем
Та вдаримо в кобзи журливі,
Хай струни орлами клекочуть,
Хай думи весною плюскочуть,
Як в небі пісні журавлині!

Не всі ще пропали пани генерали,
Купці і князі чужоземні...
Їм сниться Вкраїна, "сердешна небога",—
Не так Україна, як землі.

Пароходи ідуть морем,
Прорізають хвилі,
Їдуть пани лихо діять
Вільній Україні.

Наїхало чуже військо із країв далеких...
Англічани, італійці та іще і греки.

А з-за Дону пре Денюка,
Генерал, стара падлюка,
І кадети, і есери,
Ще й кубанські офіцери.

А з-під Польщі знову буря —
Появився пес Петлюра.
А за ним пани магнати
Йдуть йому допомагати;

Всі на Київ поспішають,
Та богунці не пускають...
Як узявсь Щорс за Петлюру —
Чуть не здер із нього шкуру!

А Боженко тих магнатів
Добре теж одколошматив!
Всилу встиг втекти Петлюра —
Аж облізла з його шкура!

А магнатам дід Боженко
Пом''яв ребра хорошенько!

Заграймо-но жалібно в кобзи,
Боженка і Щорса згадаєм,
Що вмерли за справжню Вкраїну,—
Цю пісню про них ми співаєм.

Ніч вороном чорним упала на землю,
Славута-Дніпро посинів...
Послухай, Вкраїно, про двох з багатьох
Твоїх найлюбимих синів.

Що перший — Боженко, старий твій заступник,—
Він бився за долю Вкраїни
І чесною смертю народного сина
За тебе, Вкраїно, загинув.

А другий — це Щорс, що під прапор покликав
Єднатись робочу голоту,
Бо Ленін йому наказав і навчив.
Як битись за діло народу!

Не вмре ваша слава, богунці відважні.
Бо слава од смерті не гине.
Вас слава сама між народом прославить
Синами справжньої Вкраїни!

Пруться греки, як лелеки,
З моря на Вкраїну,
Кричать: "Жар нам кури, яйця,
Ще й смачну свинину!"
А французи гладять пузо,
З Азовського лізуть.
"А нам,— кричать,— хліб, пшеницю,
Ще й руду залізну!"

А Денікін-товстопикін
Преться із-за Дону
Та на Москву поспішає,
Начебто додому.
Наступає чорна хмара,
Всю Росію криє...
Япон лізе з-за Уралу,
Страшним звіром виє.

Ой піднявся орел над Кремлем,
А за ним орлята —
Бистрі соколи крилаті, ленінці завзяті!
Полетіли ті соколи на чотири боки,
Наробили буржуякам крилами толоки.

Перший сокіл прилітає рятувать Вкраїну,
Кликнув хлопців-партизанів бить панів у спину,
Ще й повів Червоне військо лавами до бою:
"Бийтесь, діти пролетарські, за щасливу долю!"

А два соколи крилаті кликнули в Донбасі,
Загриміло слово "воля" на червонім стязі.
А товариш Фрунзе-сокіл за Урал-горами
Проріза червоним стягом чорні вражі хмари.

Одхлинають чорні сили, труп не підбирають,
А над полем, вкритим трупом, ворони літають...

А нумо, співці-кобзарі,
Затягнемо пісню кобзарську,
Як било панів наше військо Червоне,
Б''ючися за владу Радянську!

Послухайте, громадяни, як діло складалось:
Спершу кайзеру й гетьманцям
По ребрах дісталось!
Надавав їм Щорс з Боженком
І в пику, і в спину —
Кайзер ледь живий вернувся
До свого Берліну.

І Петлюри не минули —
Добре його стусонули,
За кордон, як пес, подався
Та вже більше й не вертався...

Узялись дубасить грека...
Чуть живий через Одесу
Утік в свою греконесу...

Італійцям і французам
Пронизав багнетом пузо
Ворошилов з шахтарями
Та з бідними злидарями.

А Денікін з козаками
Тіка з м''ятими боками...

Іде Клим з Семеном Доном,
Блискають шаблями,
Пада військо генеральське,
Як сміття до ями!

Військо наше йде Червоне,
На кашкетах зорі,
Потопили всіх кадетів
У Чорному морі!

З Прикарпаття на Вкраїну пани покотились,
А із Криму англічани з Врангелем явились...

Та вже більше не стерпіла Радянська Росія...
І хвилею лави,
Як море, заграли
І смерть на панів
Злидарі понесли!
І широкі поля —
Українська земля —
Окропились буржуйською кров''ю,
А з бою народи —
Заступники волі —
Вернулись до праці з любов''ю!

Ой ви ж, пани прудивуси,
Які ж бо ви боягузи,
Нахвалялись за годину
Всю загарбать Україну,
Будьоннівці появились —
Ви, як зайці, покотились
І лісами, й комишами
Аж до самої Варшави.

Згадаєте ще полізти —
Вам не буде більше місця
Ні в Варшаві, ні в Волині,
Ні в Карпатській Україні!

Не річки то бурхливі всієї Росії
До Чорного моря звернули,
То партія військо Червоне послала
Відстоювать діло Комуни.

Удовою затужила осінь над степами,
Дощі дрібні полилися на ковиль сльозами,
В морі Чорнім і Азовськім хвилі розходились,
Над Сивашем, над Чонгаром тумани спустились.
Не акули в синім морі пливуть-пропливають,—
То англійські бронеходи на хвилях гойдають.

Перекоп — ворожий табір — укрився туманом
І гармат велика сила за Турецьким валом.
То не грім ударив з моря в північну годину,—
То англійськії гармати б''ють на Україну.

То не вітер віє з Криму, не дощі то хлищуть —
Клекчуть люттю кулемети, кулі вихрем свищуть.
Вся Росія тут зібралась в цю тяжку годину,
Щоб вступитись за Комуну, за Радянську Україну!

Як гукнув до війська Фрунзе: "Уперед! За волю!
За життя майбутнє наше, за щасливу долю!"

Небо померкло, і зорі погасли,
І хмари спинились біжучі,
Як кинулось військо Червоне
На лави ворожі смердючі!

Багнетами військо відважне Червоне
Врангеля й англійців ударило в лоб,
Од моря до моря луна покотилась:
"Дайош Перекоп!"

І мозком не ввернеш,
І струни не зможуть
Цю ніч перемог оспівати,
Як поклик побідний
На крилах пронісся:
"Нікому вже нас у віках не здолати!"

Трупи ворожі заорють у ниву
Плугами нової Вкраїни,
А слава Червоного війська
Повіки не вмре, не загине!

Повернувся Фрунзе з Криму —
На Вкраїні нове диво:
Поки з паном в Криму бились,
Куркульські банди появились...

А попи до бога тоже:
"Поможи Махнові, боже..."

Трава в степу ляже, копитом зім''ята,
Співатимуть довго тавричанськії дівчата;
Заспівають пісню "Клима-земляка",                        *>
Чия була нещадная до Махна рука!

І вітер заспіває в степу з ковилями
Про те, як за землю билися селяни;
І в степу широкім могили високі
Заспівають думи про життя Комуни!..

Трупи ворожі заорють у ниву
Плугами нової Вкраїни,
А слава Червоного війська
Повіки не вмре,
Не загине!');
DELETE FROM song_links WHERE song_id = 'pisniua_372560';
DELETE FROM song_versions WHERE song_id = 'pisniua_372560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_372560';
DELETE FROM songs WHERE id = 'pisniua_372560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_372560','Перемога Корсунська',NULL,'uk','ukraine_before_1917',NULL,NULL,'"Думи. Історико-героїчний цикл". Київ, Дніпро, 1982.',NULL,'Ой обозветься пан Хмельницький,
Отаман-батько чигиринський:
" Гей, друзі-молодці,
Браття, козаки-запорожці!
Добре дбайте, барзо гадайте,
Із ляхами пиво варити зачинайте:
Лядський солод - козацька вода,
Лядські дрова - козацькі труда".
Ой з того пива
Зробили козаки з ляхами превеликеє диво.
Під городом Корсунем вони станом стали,
Під Стеблевом вони солод замочили,
Ще й пива не зварили,
А вже козаки Хмельницького з ляхами барзо посварили.
За ту бражку
Зчинили козаки з ляхами велику драчку;
За той молот
Зробили ляхи з козаками превеликий колот;
А за той не знать-який квас
Не одного ляха козак, як би скурвого сипа, за чуба стряс.
Ляхи чогось догадались,
Від козаків чогось утікали,
А козаки на ляхів нарікали:
"Ой ви, ляхове,
Пеські синове!
Чом ви не дожидаєте,
Нашого пива не допиваєте?"
Тогді козаки ляхів доганяли
Пана Потоцького піймали,
Як барана, зв''язали
Та перед Хмельницького-гетьмана примчали.
"Гей, пане Потоцький!
Чом у тебе й досі розум жіноцький?
Не вмів ти еси в Кам''янськім Подільці пробувати,
Печеного поросяти, куриці з перцем та з шафраном уживати,
А тепер не зумієш ти з нами, козаками, воювати
І житньої соломахи з тузлуком [уплітати].
Хіба велю тебе до рук кримському хану дати,
Щоб навчили тебе кримські нагаї сирої кобилини жувати!"
Тогді ляхи чогось догадались,
На [орендарів] нарікали:
"Гей, ви [орендарове],
Поганські синове!
Нащо то ви великий бунт-тривоги зривали.
На милю по три корчми становили,
Великії мита брали:
Від возового -
По півзолотого,
Від пішого - по два гроші,
А ще не минали й сердешного старця -
Відбирали пшоно та яйця.
А тепер ви тії скарби збирайте
Та Хмельницького єднайте,
А то як не будете Хмельницького єднати,
То не зарікайтесь за річку Віслу до Полонного прудко тікати".
[Орендарі] чогось догадались,
На річку Случу тікали.
Которі тікали до річки Случі,
То погубили чоботи й онучі;
А которі до Прута,
То була від козаків Хмельницького доріженька барзо крута.
На річці Случі
Обломили міст ідучи, Затопили усі клейноди
І всі лядські бубни.
Которі бігли до річки Росі,
То зосталися голі й босі...
.  .  .  .  .  .  .  .  .  .  .
Отеє, панове-молодці, над Полонним не чорна хмара вставала;
Не одна пані-ляшка удовою зосталась.
Озоветься одна пані-ляшка:
"Нема мого пана Яна!
Десь його зв''язали козаки, як би барана,
Та повели до свого гетьмана".
Озоветься друга пані-ляшка:
"Нема мого пана Кардаша!
Десь його Хмельницького козаки поведи до свого коша".
Озоветься третя пані-ляшка:
"Нема мого пана Якуба!
Десь Хмельницького козаки та, либонь,
повісили його десь на дубі".','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_372560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_372560','Перемога Корсунська','Ой обозветься пан Хмельницький,
Отаман-батько чигиринський:
" Гей, друзі-молодці,
Браття, козаки-запорожці!
Добре дбайте, барзо гадайте,
Із ляхами пиво варити зачинайте:
Лядський солод - козацька вода,
Лядські дрова - козацькі труда".
Ой з того пива
Зробили козаки з ляхами превеликеє диво.
Під городом Корсунем вони станом стали,
Під Стеблевом вони солод замочили,
Ще й пива не зварили,
А вже козаки Хмельницького з ляхами барзо посварили.
За ту бражку
Зчинили козаки з ляхами велику драчку;
За той молот
Зробили ляхи з козаками превеликий колот;
А за той не знать-який квас
Не одного ляха козак, як би скурвого сипа, за чуба стряс.
Ляхи чогось догадались,
Від козаків чогось утікали,
А козаки на ляхів нарікали:
"Ой ви, ляхове,
Пеські синове!
Чом ви не дожидаєте,
Нашого пива не допиваєте?"
Тогді козаки ляхів доганяли
Пана Потоцького піймали,
Як барана, зв''язали
Та перед Хмельницького-гетьмана примчали.
"Гей, пане Потоцький!
Чом у тебе й досі розум жіноцький?
Не вмів ти еси в Кам''янськім Подільці пробувати,
Печеного поросяти, куриці з перцем та з шафраном уживати,
А тепер не зумієш ти з нами, козаками, воювати
І житньої соломахи з тузлуком [уплітати].
Хіба велю тебе до рук кримському хану дати,
Щоб навчили тебе кримські нагаї сирої кобилини жувати!"
Тогді ляхи чогось догадались,
На [орендарів] нарікали:
"Гей, ви [орендарове],
Поганські синове!
Нащо то ви великий бунт-тривоги зривали.
На милю по три корчми становили,
Великії мита брали:
Від возового -
По півзолотого,
Від пішого - по два гроші,
А ще не минали й сердешного старця -
Відбирали пшоно та яйця.
А тепер ви тії скарби збирайте
Та Хмельницького єднайте,
А то як не будете Хмельницького єднати,
То не зарікайтесь за річку Віслу до Полонного прудко тікати".
[Орендарі] чогось догадались,
На річку Случу тікали.
Которі тікали до річки Случі,
То погубили чоботи й онучі;
А которі до Прута,
То була від козаків Хмельницького доріженька барзо крута.
На річці Случі
Обломили міст ідучи, Затопили усі клейноди
І всі лядські бубни.
Которі бігли до річки Росі,
То зосталися голі й босі...
.  .  .  .  .  .  .  .  .  .  .
Отеє, панове-молодці, над Полонним не чорна хмара вставала;
Не одна пані-ляшка удовою зосталась.
Озоветься одна пані-ляшка:
"Нема мого пана Яна!
Десь його зв''язали козаки, як би барана,
Та повели до свого гетьмана".
Озоветься друга пані-ляшка:
"Нема мого пана Кардаша!
Десь його Хмельницького козаки поведи до свого коша".
Озоветься третя пані-ляшка:
"Нема мого пана Якуба!
Десь Хмельницького козаки та, либонь,
повісили його десь на дубі".');
DELETE FROM song_links WHERE song_id = 'pisniua_375727';
DELETE FROM song_versions WHERE song_id = 'pisniua_375727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_375727';
DELETE FROM songs WHERE id = 'pisniua_375727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_375727','Кеш. Money. Бабулєс','Музика: Андрій Хливнюк Слова: Андрій Хливнюк. Виконує: Бумбокс','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Є у всіх у нас одна вада -
Ми заручники наших "хочу",
Як і сотні років назад
Бабло, бабло наш камінь точить.
Перше і останнє завдання:
Якомога більше паперів.
Нескінченні наші бажання
Вже не проходять ні в вікна, ні в двері.

Приспів:
Кажуть править кеш, бабулєс.
Хто встиг, той вліз, інші - в ліс.
Вам потрібен кеш? Так, авжеж.
Я вже бачу ліс рук, рук ліс.
Кажуть править кеш, бабулєс.
Ніби то він надає імунітет від всіх криз.
Те, що з ним загубиш вже не знайдеш.
Він підносить до небес, потім кидає вниз.

З іпотечним своїм кредитом
Відчуваєш себе, як Чак Норріс.
Хто ж тепер може з ніг тебе збити? -
Є ж поліс, страховий поліс.
Перше і останнє завдання:
Якомога більше привату.
Ай, страшне ж яке побажання:
Щоб ти жив на одну зарплату.

Приспів. (2)','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_375727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_375727','Кеш. Money. Бабулєс','Є у всіх у нас одна вада -
Ми заручники наших "хочу",
Як і сотні років назад
Бабло, бабло наш камінь точить.
Перше і останнє завдання:
Якомога більше паперів.
Нескінченні наші бажання
Вже не проходять ні в вікна, ні в двері.

Приспів:
Кажуть править кеш, бабулєс.
Хто встиг, той вліз, інші - в ліс.
Вам потрібен кеш? Так, авжеж.
Я вже бачу ліс рук, рук ліс.
Кажуть править кеш, бабулєс.
Ніби то він надає імунітет від всіх криз.
Те, що з ним загубиш вже не знайдеш.
Він підносить до небес, потім кидає вниз.

З іпотечним своїм кредитом
Відчуваєш себе, як Чак Норріс.
Хто ж тепер може з ніг тебе збити? -
Є ж поліс, страховий поліс.
Перше і останнє завдання:
Якомога більше привату.
Ай, страшне ж яке побажання:
Щоб ти жив на одну зарплату.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_37467';
DELETE FROM song_versions WHERE song_id = 'pisniua_37467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_37467';
DELETE FROM songs WHERE id = 'pisniua_37467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_37467','Гей, колись була розкіш-воля','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Бібліотека поета. Народна лірика.',NULL,'Гей, колись була розкіш-воля,
А теперенька -недоленька.
А теперенька - недоленька;
Та болить серце й головонька.
А чорна хмара наступає,
А дрібен дощик накрапає.
А дрібен дощик накрапає,
А мати сина научає:
"Та слухай, сину, мого слова,
Та не йди нігде, сиди дома!"
Син матері не послухав,
Осідлав коня та й поїхав.
Менша сестра коня веде,
Середульша - сідло несе.
"А коли, брате, в гості прийдеш?"
А старша сестра брата пита.
"Візьми, сестро, піску в жменю
Та посій, сестро, на каменю.
А коли, сестро, пісок зійде,
А тоді братік в гості прийде".
Нема з піску нема сходу,
Та нема брата із походу!','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_37467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_37467','Гей, колись була розкіш-воля','Гей, колись була розкіш-воля,
А теперенька -недоленька.
А теперенька - недоленька;
Та болить серце й головонька.
А чорна хмара наступає,
А дрібен дощик накрапає.
А дрібен дощик накрапає,
А мати сина научає:
"Та слухай, сину, мого слова,
Та не йди нігде, сиди дома!"
Син матері не послухав,
Осідлав коня та й поїхав.
Менша сестра коня веде,
Середульша - сідло несе.
"А коли, брате, в гості прийдеш?"
А старша сестра брата пита.
"Візьми, сестро, піску в жменю
Та посій, сестро, на каменю.
А коли, сестро, пісок зійде,
А тоді братік в гості прийде".
Нема з піску нема сходу,
Та нема брата із походу!');
DELETE FROM song_links WHERE song_id = 'pisniua_372869';
DELETE FROM song_versions WHERE song_id = 'pisniua_372869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_372869';
DELETE FROM songs WHERE id = 'pisniua_372869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_372869','Буря на Чорному морі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'"Думи. Історико-героїчний цикл". Київ, Дніпро, 1982.',NULL,'Ой на Чорному морі,
На білому камені,
Ой то там сидить ясен сокіл-білозорець:
Низенько голову склонив,
Та жалібно квилить-проквиляє;
Та на святеє небо,
На Чорноє море
Іспильно поглядає,
Що на святому небі,
На Чорнім морі негаразд починає:
На святому небі усі звізди потьмарило,
Половина місяця у тьму уступило;
На Чорному морі негаразд починає:
Ізо дна моря сильно хвиля вставає,
Судна козацькі молодецькі на три часті розбиває.
Першу часть одбивало -
У тихий Дунай заношало;
Другую часть одбивало -
У землю Грабськую
На каторгу турецьку заношало;
Третю часть одбивало -
Да на Чорному морі затопляло.
То-то же при тій часті два братики рідненькі,
Як голубоньки сивенькі,
То вони потопали,
Порятунку собі нівідкіля не мали.
Да вони один до одного припливали,
Словами промовляли.
Гірко ридали -
Прощенія домагали,
Перед господом милосердним гріхи свої сповідали.
Ой между ними третій, чужий-чужениця,
Бездольний, безродний і безпомощний, потопає,
Порятунку собі нівідкіль не має.
То він до їх припливає,
Словами промовляє,
Гірко сльозами ридає, -
Прощенія домагає,
Перед господом милосердним
Гріхи свої сповідає.
То ті брати промовлять словами,
Обіллються гірко сльозами:
"Се ж то нас, браття, не сильна морська хвиля затопляє;
Се то отцева молитва і материна
Нас видимо карає:
Що як ми у охотне войсько виряджалися,
То од отця, од матки прощенія не приймали,
Да старую матусю ми од себе а й стременами одпихали;
То тоже ми собі превелику гордость мали:
Старшого брата у себе за брата не мали,
Сестру середульшу марно зневажали,
Близькому сусіді хліба і солі ізбавляли;
То же ми собі превелику гордость мали:
Проти божих церков їжджали,
Шличків із голов не здіймали,
На своє лице хреста не клали,
Милосердного творця на поміч не призивали,
Да по улицях кіньми вигравали,
Да проти себе нікого не стрічали,
Діток малих кіньми розбивали,
Кров християнську на сиру землю проливали!
Ей, коли б то нас, браття, могла отцева і матчина молитва відсіля визволяти,
То нехай же б ми могли вже знати,
Як отцеву і матчину молитву штити-поважати,
І старшого брата за рідного батька мати,
Сестру середульшую штити-поважати,
Близького сусіду у себе за рідного брата мати!"
То як стали словами промовляти,
Отцеву і матчину молитву споминати, -
Став господь милосердний їм помагати,
Стало Чорне море утихати;
Та так-то утихало,
Ніби не гуляло.
То стали ті два брати к берегу припливати,
Стали за білий камінь рученьками брати
Да на край виходжати,
На край веселий,
Между мир хрещений,
У города християнськії,
Та до отця, до матки в гості прибувати.
То тоже отець-мати навпроти синів виходжали,
Синів питали:
"Ой сини, пани-молодці!
Чи добре вам у дорозі починало?"
"Добре, отець і мати, нам було на Чорному морі гуляти;
Тільки недобре було, отець і мати,
Чужому-чужениці на Чорному морі потопати:
Йому прощенія ні од кого прийняти
І на чужині порятунку дати!"
Да услиши, господи, у просьбах, у молитвах
Люду царському,
Народу християнському
І усім головам слухающим
На многая літа,
До конця віка!','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_372869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_372869','Буря на Чорному морі','Ой на Чорному морі,
На білому камені,
Ой то там сидить ясен сокіл-білозорець:
Низенько голову склонив,
Та жалібно квилить-проквиляє;
Та на святеє небо,
На Чорноє море
Іспильно поглядає,
Що на святому небі,
На Чорнім морі негаразд починає:
На святому небі усі звізди потьмарило,
Половина місяця у тьму уступило;
На Чорному морі негаразд починає:
Ізо дна моря сильно хвиля вставає,
Судна козацькі молодецькі на три часті розбиває.
Першу часть одбивало -
У тихий Дунай заношало;
Другую часть одбивало -
У землю Грабськую
На каторгу турецьку заношало;
Третю часть одбивало -
Да на Чорному морі затопляло.
То-то же при тій часті два братики рідненькі,
Як голубоньки сивенькі,
То вони потопали,
Порятунку собі нівідкіля не мали.
Да вони один до одного припливали,
Словами промовляли.
Гірко ридали -
Прощенія домагали,
Перед господом милосердним гріхи свої сповідали.
Ой между ними третій, чужий-чужениця,
Бездольний, безродний і безпомощний, потопає,
Порятунку собі нівідкіль не має.
То він до їх припливає,
Словами промовляє,
Гірко сльозами ридає, -
Прощенія домагає,
Перед господом милосердним
Гріхи свої сповідає.
То ті брати промовлять словами,
Обіллються гірко сльозами:
"Се ж то нас, браття, не сильна морська хвиля затопляє;
Се то отцева молитва і материна
Нас видимо карає:
Що як ми у охотне войсько виряджалися,
То од отця, од матки прощенія не приймали,
Да старую матусю ми од себе а й стременами одпихали;
То тоже ми собі превелику гордость мали:
Старшого брата у себе за брата не мали,
Сестру середульшу марно зневажали,
Близькому сусіді хліба і солі ізбавляли;
То же ми собі превелику гордость мали:
Проти божих церков їжджали,
Шличків із голов не здіймали,
На своє лице хреста не клали,
Милосердного творця на поміч не призивали,
Да по улицях кіньми вигравали,
Да проти себе нікого не стрічали,
Діток малих кіньми розбивали,
Кров християнську на сиру землю проливали!
Ей, коли б то нас, браття, могла отцева і матчина молитва відсіля визволяти,
То нехай же б ми могли вже знати,
Як отцеву і матчину молитву штити-поважати,
І старшого брата за рідного батька мати,
Сестру середульшую штити-поважати,
Близького сусіду у себе за рідного брата мати!"
То як стали словами промовляти,
Отцеву і матчину молитву споминати, -
Став господь милосердний їм помагати,
Стало Чорне море утихати;
Та так-то утихало,
Ніби не гуляло.
То стали ті два брати к берегу припливати,
Стали за білий камінь рученьками брати
Да на край виходжати,
На край веселий,
Между мир хрещений,
У города християнськії,
Та до отця, до матки в гості прибувати.
То тоже отець-мати навпроти синів виходжали,
Синів питали:
"Ой сини, пани-молодці!
Чи добре вам у дорозі починало?"
"Добре, отець і мати, нам було на Чорному морі гуляти;
Тільки недобре було, отець і мати,
Чужому-чужениці на Чорному морі потопати:
Йому прощенія ні од кого прийняти
І на чужині порятунку дати!"
Да услиши, господи, у просьбах, у молитвах
Люду царському,
Народу християнському
І усім головам слухающим
На многая літа,
До конця віка!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_372869_l1','pisniua_372869','YouTube','https://www.youtube.com/watch?v=bP6plDOXZHk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_374364';
DELETE FROM song_versions WHERE song_id = 'pisniua_374364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_374364';
DELETE FROM songs WHERE id = 'pisniua_374364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_374364','Новорічна','Музика: Віталій Боднар Слова: Віталій Боднар. Виконує: Дивні','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Тепла, срібна ніч зупинить час,
Рік старий благословляє нас,
Із даля
Чути немовля
В перший раз

Приспів:
Нам,
Нам вже йти
В новий час, в нові світи.
Загадати щось і далі йти.

Хтось в цю ніч собі попросить щось.
Хай так буде, щоби все збулось.
Молодий
Рік прийшов сюди,
Тут він гость

Приспів. (2)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_374364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_374364','Новорічна','Тепла, срібна ніч зупинить час,
Рік старий благословляє нас,
Із даля
Чути немовля
В перший раз

Приспів:
Нам,
Нам вже йти
В новий час, в нові світи.
Загадати щось і далі йти.

Хтось в цю ніч собі попросить щось.
Хай так буде, щоби все збулось.
Молодий
Рік прийшов сюди,
Тут він гость

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_380065';
DELETE FROM song_versions WHERE song_id = 'pisniua_380065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_380065';
DELETE FROM songs WHERE id = 'pisniua_380065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_380065','Сокіл, мамцю, сокіл','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'записано від Павла Івановича Ткачука - фольклориста, етнографа з Вінниччини','Сокіл - символ бога життя, золотокрилий птах, що приніс на землю іскри небесного вогню.','- Сокіл, мамцю, сокіл,
Сокіл молоденький.
Та й по полю літає,     |(2)
А на наше подвір''ячко
Та й крильми махає.
Яку ж йому, моя мати,
Та принадоньку дати?    |(2)
- Насип пшінця по самі колінця,
А водиці по крильця,    |(2)
Нехай він зникає,
То він пшінця наклюється
І води нап''ється,
То й полине в чисте поле
Та й там нагудеться.
- Козак, мамцю, козак,
Козак молоденький
Сивим конем грає,
А на наше подвір''ячко
Конем наїджає.
Яку ж йому, моя мати,
Та принадоньку дати?    |(2)
- Вари кашу, моя доню,
Та клич вечеряти.
Стели постіль білесеньку,
Хай лягає спати:
Голівоньки докупоньки -
Всю ніч розмовляти.      |(2)','[''pisni.org.ua'', ''cat:poliski'', ''Пісні з Полісся'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_380065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_380065','Сокіл, мамцю, сокіл','- Сокіл, мамцю, сокіл,
Сокіл молоденький.
Та й по полю літає,     |(2)
А на наше подвір''ячко
Та й крильми махає.
Яку ж йому, моя мати,
Та принадоньку дати?    |(2)
- Насип пшінця по самі колінця,
А водиці по крильця,    |(2)
Нехай він зникає,
То він пшінця наклюється
І води нап''ється,
То й полине в чисте поле
Та й там нагудеться.
- Козак, мамцю, козак,
Козак молоденький
Сивим конем грає,
А на наше подвір''ячко
Конем наїджає.
Яку ж йому, моя мати,
Та принадоньку дати?    |(2)
- Вари кашу, моя доню,
Та клич вечеряти.
Стели постіль білесеньку,
Хай лягає спати:
Голівоньки докупоньки -
Всю ніч розмовляти.      |(2)');
DELETE FROM song_links WHERE song_id = 'pisniua_370766';
DELETE FROM song_versions WHERE song_id = 'pisniua_370766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_370766';
DELETE FROM songs WHERE id = 'pisniua_370766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_370766','Я професійний раб','Музика: Тарас Петриненко Слова: Тарас Петриненко. Виконує: Тарас Петриненко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я - професійний раб по духу і по крові,
За соцпоходженням, також, я - із рабів,
Я - раб в своїх кістках, я - раб в своїй основі,
Я - раб в своїх думках і у вживанні слів
Раб - професіонал.
В дванадцятім коліні потомственний кріпак,
Закутий в ниць свою, що дід заповідав мені
І сталось нині - плебейський козачок у рідному краю.

За вироком в житті присуджений нарузі,
Ще за декілька віків до рождества свого
Я увійшов у світ з тавром чужих ілюзій:
Кому поклони бити? І славити кого?
Ровесники мої, невільничеє братство:
Покора - наша плоть, смиренність - наша кров.
Восславимо ж своє благословенне рабство
За щастя відчувать послаблення оков.

О, непорочність віри, знесиленого роду
Я небуття свого тобі ввіряю скарб,
Бо рабська смерть моя запліднить дух свободи,
Я знаю, що кажу: Я - професійний раб!','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_370766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_370766','Я професійний раб','Я - професійний раб по духу і по крові,
За соцпоходженням, також, я - із рабів,
Я - раб в своїх кістках, я - раб в своїй основі,
Я - раб в своїх думках і у вживанні слів
Раб - професіонал.
В дванадцятім коліні потомственний кріпак,
Закутий в ниць свою, що дід заповідав мені
І сталось нині - плебейський козачок у рідному краю.

За вироком в житті присуджений нарузі,
Ще за декілька віків до рождества свого
Я увійшов у світ з тавром чужих ілюзій:
Кому поклони бити? І славити кого?
Ровесники мої, невільничеє братство:
Покора - наша плоть, смиренність - наша кров.
Восславимо ж своє благословенне рабство
За щастя відчувать послаблення оков.

О, непорочність віри, знесиленого роду
Я небуття свого тобі ввіряю скарб,
Бо рабська смерть моя запліднить дух свободи,
Я знаю, що кажу: Я - професійний раб!');
DELETE FROM song_links WHERE song_id = 'pisniua_380828';
DELETE FROM song_versions WHERE song_id = 'pisniua_380828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_380828';
DELETE FROM songs WHERE id = 'pisniua_380828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_380828','Гоп-стоп','Виконує: Антон Крук','uk','ukraine_1991',NULL,NULL,NULL,'Виконує: Антон Крук Підбір акордів: Юрцьо','Гоп-стоп, ми заховались між гілля,
Гоп-стоп, і дочекались москаля:
Dm
Тепер розплачуватись пізно,
Бо в Карпатах грізно
Am
Пролунало наше "Слава!"
E
Подивись направо, а ми тебе граблями зліва,
Am
І все, кінець екскурсії в горах.

Гоп-стоп, ти був неґречний щодо нас,
Гоп-стоп, мабуть тому, що ти москаль
А в горах влітку троха парко,
Ти скинув маринарку,
Ліпше б ти її не скинув,
Куме, глянь на спину,
Ну хто відправив ту скотину в Карпати
У футболці СССР.

А в горах влітку троха парко,
Ти скинув маринарку,
Ліпше б ти її не скинув,
Куме, глянь на спину,
Ну хто відправив ту скотину в Карпати
У футболці СССР.

Гоп-стоп, Степане, пхай му під ребро
Гоп-стоп, важєй, щоб не попсув добро,
На наших писках сонця бронза,
Хлопці, кличте ксьондза,
Аби труд наш був немарним,
Най відправить гарний,
Надзвичайно популярний,
У сільському храмі парастас.

Dm
Покличте ксьондза, поки можна,
Ну шо, товаріщ, сложно?
Am
Подивися недалеко, звив гніздо лелека
На трубі, що зветься "Дружба нафтогон".

Гоп-стоп, ми заховались між гілля,
Гоп-стоп, і дочекались москаля:
Тепер розплачуватись пізно,
Бо в Карпатах грізно
Пролунало наше "Слава!"
Подивись направо, а ми тебе граблями зліва,
І все, кінець екскурсії в горах.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_380828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_380828','Гоп-стоп','Гоп-стоп, ми заховались між гілля,
Гоп-стоп, і дочекались москаля:
Dm
Тепер розплачуватись пізно,
Бо в Карпатах грізно
Am
Пролунало наше "Слава!"
E
Подивись направо, а ми тебе граблями зліва,
Am
І все, кінець екскурсії в горах.

Гоп-стоп, ти був неґречний щодо нас,
Гоп-стоп, мабуть тому, що ти москаль
А в горах влітку троха парко,
Ти скинув маринарку,
Ліпше б ти її не скинув,
Куме, глянь на спину,
Ну хто відправив ту скотину в Карпати
У футболці СССР.

А в горах влітку троха парко,
Ти скинув маринарку,
Ліпше б ти її не скинув,
Куме, глянь на спину,
Ну хто відправив ту скотину в Карпати
У футболці СССР.

Гоп-стоп, Степане, пхай му під ребро
Гоп-стоп, важєй, щоб не попсув добро,
На наших писках сонця бронза,
Хлопці, кличте ксьондза,
Аби труд наш був немарним,
Най відправить гарний,
Надзвичайно популярний,
У сільському храмі парастас.

Dm
Покличте ксьондза, поки можна,
Ну шо, товаріщ, сложно?
Am
Подивися недалеко, звив гніздо лелека
На трубі, що зветься "Дружба нафтогон".

Гоп-стоп, ми заховались між гілля,
Гоп-стоп, і дочекались москаля:
Тепер розплачуватись пізно,
Бо в Карпатах грізно
Пролунало наше "Слава!"
Подивись направо, а ми тебе граблями зліва,
І все, кінець екскурсії в горах.');
DELETE FROM song_links WHERE song_id = 'pisniua_381121';
DELETE FROM song_versions WHERE song_id = 'pisniua_381121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_381121';
DELETE FROM songs WHERE id = 'pisniua_381121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_381121','Вставай, Україно','Музика: Б. Юрків, Анатолій Сердюк Слова: Дмитро Павличко. Виконує: Нескорені, Анатолій Сердюк','uk','ukraine_1991',NULL,NULL,'1. Надала Б. Сімович',NULL,'Вставай, Україно, вставай,
Виходь на дорогу свободи,
Де грає широкий Дунай,
Де ждуть європейські народи.

Вставай та кайдани порви,
Дай познак, ясніший від грому,
Що ти не рабиня Москви,
Й рабою не будеш нікому.

Вставай, Україно, вставай,
Єднай Чорне море й Карпати,
І свій переболений край
Не дай ворогам розламати.

Вставай та здіймай знамено
Вселюдської згоди й любові,
Щоб волі святої вино
Спожити без помсти і крові.','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_381121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_381121','Вставай, Україно','Вставай, Україно, вставай,
Виходь на дорогу свободи,
Де грає широкий Дунай,
Де ждуть європейські народи.

Вставай та кайдани порви,
Дай познак, ясніший від грому,
Що ти не рабиня Москви,
Й рабою не будеш нікому.

Вставай, Україно, вставай,
Єднай Чорне море й Карпати,
І свій переболений край
Не дай ворогам розламати.

Вставай та здіймай знамено
Вселюдської згоди й любові,
Щоб волі святої вино
Спожити без помсти і крові.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_381121_l1','pisniua_381121','YouTube','https://www.youtube.com/watch?v=C6hazsq1QpA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_38065';
DELETE FROM song_versions WHERE song_id = 'pisniua_38065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_38065';
DELETE FROM songs WHERE id = 'pisniua_38065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_38065','Шукав свій дім','Музика: Скрябін Слова: Скрябін. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,'текст(основа)- http://skryabin.ru; Аудіо-CD- Скрябін. Озимі люди. 2002','Підбір акордів: bohdanko (pisni.org.ua)','Вступ:  Em G Em G C D G H7
Em    G   Em    G   C     D    G   H7 *
Вінками   із неба   на нас вниз падав сніг
Так тихо   як старість  накрив примітивний світ
Так тихо   як старість  прийшла зима зима зима
Підступно   як старість   прийшла зима зима зима
Так сумно   зима зима
Програш:  Em G Em G C D G H7  (2)
Колись давно пішов я шукати дім
Заліз високо в гори - там ніхто не знав де він
Холодний вітер тільки на дорозі став
I так мені сказав так він сказав
Приспів:
Не треба було йти далеко
Не треба було йти так довго
Земля де бігав ти маленьким
Є твоїм домом
Програш.
Я не послухав вітру і спустився з гір
Пішов спитати в моря - може знає про мій дім
Та тільки засміялись хвилі з моїх слів
I десь далеко було чути їх нехитрий спів
Приспів.
Ходив я довго - всіх кругом за дім питав
А з неба сніг а з неба вже моя зима
Старий місяць головою закивав
I так мені сказав так сказав
Вінками   із неба   на нас вниз падав сніг
Так тихо   як старість  накрив примітивний світ
Програш:  Em D C H7 (безліч разів)','[''pisni.org.ua'', ''cat:manrivni'', ''cat:nostalgia'', ''Пісні на мандрівну тематику'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_38065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_38065','Шукав свій дім','Вступ:  Em G Em G C D G H7
Em    G   Em    G   C     D    G   H7 *
Вінками   із неба   на нас вниз падав сніг
Так тихо   як старість  накрив примітивний світ
Так тихо   як старість  прийшла зима зима зима
Підступно   як старість   прийшла зима зима зима
Так сумно   зима зима
Програш:  Em G Em G C D G H7  (2)
Колись давно пішов я шукати дім
Заліз високо в гори - там ніхто не знав де він
Холодний вітер тільки на дорозі став
I так мені сказав так він сказав
Приспів:
Не треба було йти далеко
Не треба було йти так довго
Земля де бігав ти маленьким
Є твоїм домом
Програш.
Я не послухав вітру і спустився з гір
Пішов спитати в моря - може знає про мій дім
Та тільки засміялись хвилі з моїх слів
I десь далеко було чути їх нехитрий спів
Приспів.
Ходив я довго - всіх кругом за дім питав
А з неба сніг а з неба вже моя зима
Старий місяць головою закивав
I так мені сказав так сказав
Вінками   із неба   на нас вниз падав сніг
Так тихо   як старість  накрив примітивний світ
Програш:  Em D C H7 (безліч разів)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_38065_l1','pisniua_38065','YouTube','https://www.youtube.com/watch?v=HuRfGsPyc2Y','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_376467';
DELETE FROM song_versions WHERE song_id = 'pisniua_376467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_376467';
DELETE FROM songs WHERE id = 'pisniua_376467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_376467','Новий рік','Виконує: Віктор Павлік','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Новий мотив старих надій
В цю ніч з''єднає нас.
І ми підем у рік Новий
На довгий, добрий час.
Забуть про біль в цю дивну ніч,
Вгамуй свою печаль,
Пізнай красу нових обличь
І про старі згадай.

Приспів:
З Новим роком Вас!
Щасти Вам всім у добрий час!
Новорічна мить, як прикраса долі.
Назавжди для всіх і радість, і дитячий сміх!
Зичить нам добра снігова пора в Новий рік.
Новий рік...

Салют зірок дарує шанс,
Помрій і загадай
Добра, тепла, грошей, прикрас
І з нами заспівай!

Приспів.

Новий рік...
Новий рік...','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_376467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_376467','Новий рік','Новий мотив старих надій
В цю ніч з''єднає нас.
І ми підем у рік Новий
На довгий, добрий час.
Забуть про біль в цю дивну ніч,
Вгамуй свою печаль,
Пізнай красу нових обличь
І про старі згадай.

Приспів:
З Новим роком Вас!
Щасти Вам всім у добрий час!
Новорічна мить, як прикраса долі.
Назавжди для всіх і радість, і дитячий сміх!
Зичить нам добра снігова пора в Новий рік.
Новий рік...

Салют зірок дарує шанс,
Помрій і загадай
Добра, тепла, грошей, прикрас
І з нами заспівай!

Приспів.

Новий рік...
Новий рік...');
DELETE FROM song_links WHERE song_id = 'pisniua_366121';
DELETE FROM song_versions WHERE song_id = 'pisniua_366121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_366121';
DELETE FROM songs WHERE id = 'pisniua_366121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_366121','Горлиця','Музика: Ольга Богомолець Слова: Ліна Костенко. Виконує: Ольга Богомолець','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я вранці голос горлиці люблю,
Скрипучі гальма першого трамваю.
Я забуваю, зовсім забуваю.    |
Я вранці голос горлиці люблю. | (2)

Чи може це ввижається мені?
Той несказаний камертон природи -
Де зорі ясні і де чисті води. |
Я вранці голос горлиці люблю. | (2)

Я скучила за дивним зойком слова
Мого народу гілочка тернова.
Гарячий лоб до шибки притулю. |
Я вранці голос горлиці люблю. | (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_366121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_366121','Горлиця','Я вранці голос горлиці люблю,
Скрипучі гальма першого трамваю.
Я забуваю, зовсім забуваю.    |
Я вранці голос горлиці люблю. | (2)

Чи може це ввижається мені?
Той несказаний камертон природи -
Де зорі ясні і де чисті води. |
Я вранці голос горлиці люблю. | (2)

Я скучила за дивним зойком слова
Мого народу гілочка тернова.
Гарячий лоб до шибки притулю. |
Я вранці голос горлиці люблю. | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_374065';
DELETE FROM song_versions WHERE song_id = 'pisniua_374065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_374065';
DELETE FROM songs WHERE id = 'pisniua_374065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_374065','В Райськім Садочку росла Лелія',NULL,'uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло. Десь узялася Молода Дівчина. Прийшов до Неї Миленький Єї Дай ми Маріє Листок Лелії','В Райськім Садочку росла Лелія
Хто ж Її садив Панна Марія
Як садила так садила
Лелійочка ся розвила
Красна Лелія Красна Лелія

Прийшла до Неї Матінка Єї
Дай ми Маріє Листок Лелії
Не дам не дам ні Листочка
Бо ми всохне Лелійочка
Красна Лелія Красна Лелія

Прийшов до Неї Батенько Єї
Дай ми Маріє Листок Лелії
Не дам не дам ні Листочка
Бо ми всохне Лелійочка
Красна Лелія Красна Лелія

Прийшов до Неї Братенько Єї
Дай ми Маріє листок Лелії
Не дам не дам ні Листочка
Бо ми всохне Лелійочка
Красна Лелія Красна Лелія

Прийшла до Неї Сестричка Єї
Дай ми Маріє Листок Лелії
Не дам не дам ні Листочка
Бо ми всохне Лелійочка
Красна Лелія Красна Лелія

Прийшов до Неї Миленький Єї
Дай ми Маріє Листок Лелії
Ой дам ой дам хоч Листочок
Бо Мій бо Мій Коханочок
Красна Лелія Красна Лелія','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_374065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_374065','В Райськім Садочку росла Лелія','В Райськім Садочку росла Лелія
Хто ж Її садив Панна Марія
Як садила так садила
Лелійочка ся розвила
Красна Лелія Красна Лелія

Прийшла до Неї Матінка Єї
Дай ми Маріє Листок Лелії
Не дам не дам ні Листочка
Бо ми всохне Лелійочка
Красна Лелія Красна Лелія

Прийшов до Неї Батенько Єї
Дай ми Маріє Листок Лелії
Не дам не дам ні Листочка
Бо ми всохне Лелійочка
Красна Лелія Красна Лелія

Прийшов до Неї Братенько Єї
Дай ми Маріє листок Лелії
Не дам не дам ні Листочка
Бо ми всохне Лелійочка
Красна Лелія Красна Лелія

Прийшла до Неї Сестричка Єї
Дай ми Маріє Листок Лелії
Не дам не дам ні Листочка
Бо ми всохне Лелійочка
Красна Лелія Красна Лелія

Прийшов до Неї Миленький Єї
Дай ми Маріє Листок Лелії
Ой дам ой дам хоч Листочок
Бо Мій бо Мій Коханочок
Красна Лелія Красна Лелія');
DELETE FROM song_links WHERE song_id = 'pisniua_382168';
DELETE FROM song_versions WHERE song_id = 'pisniua_382168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_382168';
DELETE FROM songs WHERE id = 'pisniua_382168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_382168','Вальс','Музика: Анатолій Горчинський Слова: Борис Олійник. Виконує: Анатолій Горчинський','uk','ukraine_1991',NULL,NULL,'Українське радiо, 3 канал ("Культура"), 17.10.2008, 15:45, програма "Кращi пiснi минулого столiття"',NULL,'Цвіт на каштанах помірно, покірно погас,
Він не зів''яв, а погас, наче люстра у залі,
Все проминуло у нас - старовинний романс,
Тільки гвоздика тремтить на крижині рояля.

Вальс, вальс, вальс, вальс,
Вальс, вальс, вальс, вальс,
Все проминуло, немов старовинний романс,
Вальс, вальс, вальс,
Вальс, вальс, вальс,
Все проминуло, немов старовинний романс.

Тільки мелодія тихше, - облиште, не час,
Я запізнилась навік на заручини наші,
Все проминуло, і вже не поверне до нас
Юний Болконський і ніжна Ростова Наташа.

Вальс, вальс, вальс, вальс,
Вальс, вальс, вальс, вальс,
Все проминуло, і вже не поверне до нас
Вальс, вальс, вальс,
Вальс, вальс, вальс,
Все проминуло, і вже не поверне до нас

Квіт на каштанах так чист і юн зайнявсь,
Вітер волого припав до пелюсток губами,
Все повернулось у цей старовинний романс,
Другі танцюють, а я відпливаю у пам''ять.

Вальс, вальс, вальс, вальс,
Вальс, вальс, вальс, вальс,
Все повернулось у цей старовинний романс,
Вальс, вальс, вальс,
Вальс, вальс, вальс,
Двоє спинились, а я відпливаю у пам''ять.','[''pisni.org.ua'', ''cat:dances'', ''cat:romansy'', ''cat:waltzes'', ''Пісні до танцю'', ''Романси'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_382168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_382168','Вальс','Цвіт на каштанах помірно, покірно погас,
Він не зів''яв, а погас, наче люстра у залі,
Все проминуло у нас - старовинний романс,
Тільки гвоздика тремтить на крижині рояля.

Вальс, вальс, вальс, вальс,
Вальс, вальс, вальс, вальс,
Все проминуло, немов старовинний романс,
Вальс, вальс, вальс,
Вальс, вальс, вальс,
Все проминуло, немов старовинний романс.

Тільки мелодія тихше, - облиште, не час,
Я запізнилась навік на заручини наші,
Все проминуло, і вже не поверне до нас
Юний Болконський і ніжна Ростова Наташа.

Вальс, вальс, вальс, вальс,
Вальс, вальс, вальс, вальс,
Все проминуло, і вже не поверне до нас
Вальс, вальс, вальс,
Вальс, вальс, вальс,
Все проминуло, і вже не поверне до нас

Квіт на каштанах так чист і юн зайнявсь,
Вітер волого припав до пелюсток губами,
Все повернулось у цей старовинний романс,
Другі танцюють, а я відпливаю у пам''ять.

Вальс, вальс, вальс, вальс,
Вальс, вальс, вальс, вальс,
Все повернулось у цей старовинний романс,
Вальс, вальс, вальс,
Вальс, вальс, вальс,
Двоє спинились, а я відпливаю у пам''ять.');
DELETE FROM song_links WHERE song_id = 'pisniua_37626';
DELETE FROM song_versions WHERE song_id = 'pisniua_37626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_37626';
DELETE FROM songs WHERE id = 'pisniua_37626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_37626','Звеселіло подвір''я','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1980','Фольклорні матеріали з отчого краю. Зібрали В.Сокіл та Г.Сокіл.- Львів, 1998','"Так робили на Іря. Вівці лущали перший раз і мішали та й приучовали разом пасти. Тогди отак ладкали..." Зап. 25 травня 1980 року В.Сокіл у с.Ялинкуватому від Коруд Агафії, 1921 року народж.','Звеселіло подвір''я: (2)
Прийшло зелене Іря.

Вівчарі, й уставайте (2)
Та хліб у торби крайте.

Та хліб у торби крайте, (2)
Трумбети забирайте.

Звеселіли вершечки: (2)
Будут пасти овечки.

Веселі й ораниці, (2)
Бо бдут повні дійниці.

Женіт вівці на млаки, (2)
Забирайте й собаки.

Бо може бити зрада,
Може бити і зрада:
Із ліса напада.

Вівчарі вівці доят — (2)
До вечері ся строят.

Собаки собов збили — (2)
Опришків додивили.

Бо прийшли опришки,
Ой бо прийшли опришки
Та й заяли всі стрижки.

Та й два вівчарі взяли, (2)
Денного зв''язали.

Він ся зсунув від хати, (2)
Хотів затрумбетати.

Хотів затрумбетати, (2)
Вби вийшов отиць, мати.

Вби вийшов отиць, мати (2)
Сночка розв''язати.','[''pisni.org.ua'', ''cat:boykivski'', ''cat:zeleni-svyata'', ''Пісні з Бойківщини'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_37626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_37626','Звеселіло подвір''я','Звеселіло подвір''я: (2)
Прийшло зелене Іря.

Вівчарі, й уставайте (2)
Та хліб у торби крайте.

Та хліб у торби крайте, (2)
Трумбети забирайте.

Звеселіли вершечки: (2)
Будут пасти овечки.

Веселі й ораниці, (2)
Бо бдут повні дійниці.

Женіт вівці на млаки, (2)
Забирайте й собаки.

Бо може бити зрада,
Може бити і зрада:
Із ліса напада.

Вівчарі вівці доят — (2)
До вечері ся строят.

Собаки собов збили — (2)
Опришків додивили.

Бо прийшли опришки,
Ой бо прийшли опришки
Та й заяли всі стрижки.

Та й два вівчарі взяли, (2)
Денного зв''язали.

Він ся зсунув від хати, (2)
Хотів затрумбетати.

Хотів затрумбетати, (2)
Вби вийшов отиць, мати.

Вби вийшов отиць, мати (2)
Сночка розв''язати.');
DELETE FROM song_links WHERE song_id = 'pisniua_382929';
DELETE FROM song_versions WHERE song_id = 'pisniua_382929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_382929';
DELETE FROM songs WHERE id = 'pisniua_382929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_382929','Пусти ж мене, мати, до табору','Музика: Роман Купчинський Слова: Марійка Підгірянка','uk','ukraine_1991',NULL,NULL,'Співаник "Пісні для новацтва", Торонто, 2002.',NULL,'Пусти ж мене, мати, до табору
До сонця, до волі, до простору.
Пусти ж мене, мати, з Пластом мандрувати,
Пусти ж мене, мати, з Пластом мандрувати,
З Пластом мандрувати, до табору.

Вставала б я, мамо, рано-вранці,
Бігла б я росою по полянці,
Ішла б я по воду до чистого броду,
Ішла б я по воду до чистого броду,
До чистого броду, рано-вранці.

Сиділа б при ватрі кожен вечір,
При мові-розмові молодечій,
Гляділа б досхочу, як зірки мигочуть,
Гляділа б досхочу, як зірки мигочуть,
Як зірки мигочуть кожен вечір.

Стояла б на варті по наказу,
Всю ніч не здрімала б ані разу,
Хоч скучно, хоч темно, стояла би вірно,
Хоч скучно, хоч темно, стояла би вірно,
Стояла би вірно по наказу.

Вернула б я, мати, із табору,
Привезла б я силу із собою,-
Привезла б я силу до нового чину,
Привезла б я силу до нового чину,
До нового чину і до бою.','[''pisni.org.ua'', ''cat:plastovi'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_382929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_382929','Пусти ж мене, мати, до табору','Пусти ж мене, мати, до табору
До сонця, до волі, до простору.
Пусти ж мене, мати, з Пластом мандрувати,
Пусти ж мене, мати, з Пластом мандрувати,
З Пластом мандрувати, до табору.

Вставала б я, мамо, рано-вранці,
Бігла б я росою по полянці,
Ішла б я по воду до чистого броду,
Ішла б я по воду до чистого броду,
До чистого броду, рано-вранці.

Сиділа б при ватрі кожен вечір,
При мові-розмові молодечій,
Гляділа б досхочу, як зірки мигочуть,
Гляділа б досхочу, як зірки мигочуть,
Як зірки мигочуть кожен вечір.

Стояла б на варті по наказу,
Всю ніч не здрімала б ані разу,
Хоч скучно, хоч темно, стояла би вірно,
Хоч скучно, хоч темно, стояла би вірно,
Стояла би вірно по наказу.

Вернула б я, мати, із табору,
Привезла б я силу із собою,-
Привезла б я силу до нового чину,
Привезла б я силу до нового чину,
До нового чину і до бою.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_382929_l1','pisniua_382929','YouTube','https://www.youtube.com/watch?v=DKQShHEl2UY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_383828';
DELETE FROM song_versions WHERE song_id = 'pisniua_383828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_383828';
DELETE FROM songs WHERE id = 'pisniua_383828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_383828','Стрільцем бим бути рад','Слова: Роман Купчинський','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'аудіозапис',NULL,'Стрільцем бим бути рад.
Стрільцем бим бути рад.

Як побачу порошницю,
Пистолята і рушницю,
Гарну з борсука торбину
Та стрілецьку одежину.

Стрільцем бим бути рад,
Стрільцем бим бути рад.','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_383828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_383828','Стрільцем бим бути рад','Стрільцем бим бути рад.
Стрільцем бим бути рад.

Як побачу порошницю,
Пистолята і рушницю,
Гарну з борсука торбину
Та стрілецьку одежину.

Стрільцем бим бути рад,
Стрільцем бим бути рад.');
DELETE FROM song_links WHERE song_id = 'pisniua_38222';
DELETE FROM song_versions WHERE song_id = 'pisniua_38222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_38222';
DELETE FROM songs WHERE id = 'pisniua_38222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_38222','Вогні Львова','Музика: Володимир Івасюк Слова: Ростислав Братунь. Виконує: Анастасія Плахтій, Орест Цимбала','uk','ukraine_1991',NULL,NULL,'http://ivasyuk.domivka.net/',NULL,'Сьогодні в нас побачення зі Львовом;
Вдягнем святковий одяг і підем.
Хай вулиці своє нам скажуть слово,
Нехай нас вечір містом поведе.

Послухаєм, про що шепочуть клени,
Про що шумить в задумі Стрийський парк.
Можливо, що про тебе і про мене
Свою він пісню нам приносить в дар.

Приспів:
Чи знаєте ви тихі львівські вечори?
Чи з милою їх зустрічали,
У сяєві зорі вечірньої пори
Знайоме місто знову відкривали?

До нас історія підійде поруч,
Довірливо прихилить стрімкість веж.
І, як в легенду, ти на Княжу гору
Своє кохання гордо пронесеш.

Нам усміхнуться, наче очі, вікна
Нових кварталів молодих будов,
І блиск вогнів, і далина блакитна
Вестимуть нас у щастя, у любов.

Приспів.','[''pisni.org.ua'', ''cat:lviv'', ''Пісні про Львів'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_38222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_38222','Вогні Львова','Сьогодні в нас побачення зі Львовом;
Вдягнем святковий одяг і підем.
Хай вулиці своє нам скажуть слово,
Нехай нас вечір містом поведе.

Послухаєм, про що шепочуть клени,
Про що шумить в задумі Стрийський парк.
Можливо, що про тебе і про мене
Свою він пісню нам приносить в дар.

Приспів:
Чи знаєте ви тихі львівські вечори?
Чи з милою їх зустрічали,
У сяєві зорі вечірньої пори
Знайоме місто знову відкривали?

До нас історія підійде поруч,
Довірливо прихилить стрімкість веж.
І, як в легенду, ти на Княжу гору
Своє кохання гордо пронесеш.

Нам усміхнуться, наче очі, вікна
Нових кварталів молодих будов,
І блиск вогнів, і далина блакитна
Вестимуть нас у щастя, у любов.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_38222_l1','pisniua_38222','YouTube','https://www.youtube.com/watch?v=vLLJivXjiX4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_381869';
DELETE FROM song_versions WHERE song_id = 'pisniua_381869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_381869';
DELETE FROM songs WHERE id = 'pisniua_381869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_381869','Ледача невістка, ледача','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://posydenky.lvivport.com',NULL,'Ледача невістка, ледача
Та й до роботи невдача!
Як приїхав миленький з поля,
Стоїть миленька в порога:

"Ой, що ж ти, миленька, такая,
Як водиченька мутная?"
"Підожди, миленький, розкажу:
Я твоїй матусі не вгоджу:

Помию ніженьки у лузі,
Вона помаже в калюжі.
Помию ніженьки у милі,
Вона помаже у глині.

Помажу чобітки — не вбує,
Вона до мене гордує.
Постелю постільку — не ляже,
Ще мойому серденьку докаже:

"Ледача невістка, ледача
Та й до роботи невдача,
Не вміє ділечка робити,
Мені старенькій годити!"','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_381869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_381869','Ледача невістка, ледача','Ледача невістка, ледача
Та й до роботи невдача!
Як приїхав миленький з поля,
Стоїть миленька в порога:

"Ой, що ж ти, миленька, такая,
Як водиченька мутная?"
"Підожди, миленький, розкажу:
Я твоїй матусі не вгоджу:

Помию ніженьки у лузі,
Вона помаже в калюжі.
Помию ніженьки у милі,
Вона помаже у глині.

Помажу чобітки — не вбує,
Вона до мене гордує.
Постелю постільку — не ляже,
Ще мойому серденьку докаже:

"Ледача невістка, ледача
Та й до роботи невдача,
Не вміє ділечка робити,
Мені старенькій годити!"');
DELETE FROM song_links WHERE song_id = 'pisniua_38525';
DELETE FROM song_versions WHERE song_id = 'pisniua_38525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_38525';
DELETE FROM songs WHERE id = 'pisniua_38525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_38525','Провожала мати','(Не рубай тополю). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Проводжала мати сина у солдати        | (2)
А свою невістку в поле жито жати

Вона жала, жала, жала вижинала        | (2)
Тай посеред поля тополею стала

Прийшов син до хати, здраствуй рідна мати | (2)
Де моя дружина, чом не йде стрічати

Не питайся сыну де твоя дружина       | (2)
Візьми сокирину, зрубай тополину

В перший раз ударив, вона похилилась  | (2)
Другий раз ударив, тай заговорила

Не рубай тополю, бо я твоя доля       | (2)
Розгорни листочок, там є твій синочок.','[''pisni.org.ua'', ''cat:podilski'', ''Пісні з Поділля'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_38525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_38525','Провожала мати','Проводжала мати сина у солдати        | (2)
А свою невістку в поле жито жати

Вона жала, жала, жала вижинала        | (2)
Тай посеред поля тополею стала

Прийшов син до хати, здраствуй рідна мати | (2)
Де моя дружина, чом не йде стрічати

Не питайся сыну де твоя дружина       | (2)
Візьми сокирину, зрубай тополину

В перший раз ударив, вона похилилась  | (2)
Другий раз ударив, тай заговорила

Не рубай тополю, бо я твоя доля       | (2)
Розгорни листочок, там є твій синочок.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_38525_l1','pisniua_38525','YouTube','https://www.youtube.com/watch?v=Q18i8Rd5J0k','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_38525_l2','pisniua_38525','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_383525';
DELETE FROM song_versions WHERE song_id = 'pisniua_383525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_383525';
DELETE FROM songs WHERE id = 'pisniua_383525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_383525','Чи диво, чи не диво?','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісня записана в с. Соболівка, Теплицького району, Вінницької області від місцевої фольклористки Євгенії Тондій, 1918 р.н.',NULL,'Чи диво, чи не диво? Ідуть дівки на війну.
Чи диво, чи не диво? Молодиці за ними.
Чи диво, чи не диво? А парубки навздогін.
Чи диво, чи не диво? Звоювали дівки три города.
Чи диво, чи не диво? Молодиці три села.
Чи диво, чи не диво? А парубки три двора.
Чи диво, чи не диво? Сидять дівки за столом.
Чи диво, чи не диво? Молодиці перед столом.
Чи диво, чи не диво? А парубки під столом.
Чи диво, чи не диво? П''ють дівки мед - вино.
Чи диво, чи не диво? Молодиці горілку.
Чи диво, чи не диво? А парубки шевський квас.
Чи диво, чи не диво? Їдять дівки гусятину.
Чи диво, чи не диво? Молодиці - курятину.
Чи диво, чи не диво? А парубки кісточки','[''pisni.org.ua'', ''cat:podilski'', ''cat:zeleni-svyata'', ''Пісні з Поділля'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_383525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_383525','Чи диво, чи не диво?','Чи диво, чи не диво? Ідуть дівки на війну.
Чи диво, чи не диво? Молодиці за ними.
Чи диво, чи не диво? А парубки навздогін.
Чи диво, чи не диво? Звоювали дівки три города.
Чи диво, чи не диво? Молодиці три села.
Чи диво, чи не диво? А парубки три двора.
Чи диво, чи не диво? Сидять дівки за столом.
Чи диво, чи не диво? Молодиці перед столом.
Чи диво, чи не диво? А парубки під столом.
Чи диво, чи не диво? П''ють дівки мед - вино.
Чи диво, чи не диво? Молодиці горілку.
Чи диво, чи не диво? А парубки шевський квас.
Чи диво, чи не диво? Їдять дівки гусятину.
Чи диво, чи не диво? Молодиці - курятину.
Чи диво, чи не диво? А парубки кісточки');
DELETE FROM song_links WHERE song_id = 'pisniua_383065';
DELETE FROM song_versions WHERE song_id = 'pisniua_383065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_383065';
DELETE FROM songs WHERE id = 'pisniua_383065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_383065','Ми їдем в край, далекий край','Українська народна пісня. Виконує: Не журись!','uk','ukr_ssr_1919_1991',NULL,NULL,'1. http://poetry.uazone.net',NULL,'Ми їдем в край,
Далекий край.
На Сибір чи в Алтай,
А місто Львів,
Коханий Львів,
Прощай, прощай,
Прощай...

Прощайте ви мої друзі,
Не поминайте зле,
Згадайте ви, як ми в тюрмі
Ділились сухарем.

Сьогодні ти, а завтра я,
Нам доля всім одна.
Цю гірку чашу мук-терпінь
Ми вип''ємо до дна.

Прийде ще час, мине для нас
Ненависна тюрма
І усміхнеться ще й до нас
Україна вільна!..','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_383065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_383065','Ми їдем в край, далекий край','Ми їдем в край,
Далекий край.
На Сибір чи в Алтай,
А місто Львів,
Коханий Львів,
Прощай, прощай,
Прощай...

Прощайте ви мої друзі,
Не поминайте зле,
Згадайте ви, як ми в тюрмі
Ділились сухарем.

Сьогодні ти, а завтра я,
Нам доля всім одна.
Цю гірку чашу мук-терпінь
Ми вип''ємо до дна.

Прийде ще час, мине для нас
Ненависна тюрма
І усміхнеться ще й до нас
Україна вільна!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_383065_l1','pisniua_383065','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_382467';
DELETE FROM song_versions WHERE song_id = 'pisniua_382467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_382467';
DELETE FROM songs WHERE id = 'pisniua_382467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_382467','Купайлиці','(А наші хлопці недбайлиці). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Записано в с. Кирдани Таращанського р-ну Київської обл.',NULL,'А наші хлопці недбайлиці -
Не поставили купайлиці.
Ой, якби вони про нас дбали,
Нам купайлицю вирубали.
Нам купайлицю вирубали,
Нас на вулицю викликали.
А наші хлопці недбайлиці -
Не поставили купайлиці,
Не вирубали до схід сонця,
Не поставили край віконця,
А вирубали до місяця,
Нехай на ній повісяться.
А наші хлопці недбайлиці -
Не вирубали купайлиці.
Ой, ти молода молодице,
Ой, вийди, вийди на вулицю,
Ой, вийди, вийди на вулицю
Поспав дівонькам купайлицю.
- Нехай дитину заколишу,
Ще й чоловіка перепрошу.
Поставлю я вербу, вербу,
А сама сяду зверху,зверху.
На вербі сиджу гукаю,
Дівчат на свято скликаю.
Котра не прийде на купала,
Щоб вона сіла, та й не встала,
Щоб вона сіла леміжкою,
Щоб її везли теліжкою.
Щоб вона сіла колом,колом,
Щоб її везли волом, волом.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_382467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_382467','Купайлиці','А наші хлопці недбайлиці -
Не поставили купайлиці.
Ой, якби вони про нас дбали,
Нам купайлицю вирубали.
Нам купайлицю вирубали,
Нас на вулицю викликали.
А наші хлопці недбайлиці -
Не поставили купайлиці,
Не вирубали до схід сонця,
Не поставили край віконця,
А вирубали до місяця,
Нехай на ній повісяться.
А наші хлопці недбайлиці -
Не вирубали купайлиці.
Ой, ти молода молодице,
Ой, вийди, вийди на вулицю,
Ой, вийди, вийди на вулицю
Поспав дівонькам купайлицю.
- Нехай дитину заколишу,
Ще й чоловіка перепрошу.
Поставлю я вербу, вербу,
А сама сяду зверху,зверху.
На вербі сиджу гукаю,
Дівчат на свято скликаю.
Котра не прийде на купала,
Щоб вона сіла, та й не встала,
Щоб вона сіла леміжкою,
Щоб її везли теліжкою.
Щоб вона сіла колом,колом,
Щоб її везли волом, волом.');
