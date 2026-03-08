DELETE FROM song_links WHERE song_id = 'pisniua_84909';
DELETE FROM song_versions WHERE song_id = 'pisniua_84909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_84909';
DELETE FROM songs WHERE id = 'pisniua_84909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_84909','Я сьогодні щось дуже сумую','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'збірка "козацькі пісні"',NULL,'Я сьогодні щось дуже сумую
Про козацькую долю згадав,
Ще й про славу свою незабуду,
Що колись я як сокіл літав.

Боронив свою рідну вкраїну,
Не боявся я лютих татар
І не думав, що в полі загину
Як громив я лихих яничар.

А тепер все пройшло,все минуло
Чорна хмара над морем зайшла
І з наказу змії-Катерини
Кров''ю плаче козацька земля.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_84909'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_84909','Я сьогодні щось дуже сумую','Я сьогодні щось дуже сумую
Про козацькую долю згадав,
Ще й про славу свою незабуду,
Що колись я як сокіл літав.

Боронив свою рідну вкраїну,
Не боявся я лютих татар
І не думав, що в полі загину
Як громив я лихих яничар.

А тепер все пройшло,все минуло
Чорна хмара над морем зайшла
І з наказу змії-Катерини
Кров''ю плаче козацька земля.');
DELETE FROM song_links WHERE song_id = 'pisniua_849171';
DELETE FROM song_versions WHERE song_id = 'pisniua_849171';
DELETE FROM songs_fts WHERE song_id = 'pisniua_849171';
DELETE FROM songs WHERE id = 'pisniua_849171';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_849171','Ми є такі','Музика: Тризубий Стас Слова: Тризубий Стас. Виконує: Тризубий Стас','uk','ukraine_1991',NULL,NULL,'http://community.livejournal.com/kobzari/',NULL,'Гетьман забувся у сні у козацькому курені.
Варта поснула вночі - сплять козаки.
А чи ми насправді дурні, а чи кимось обдурені?
А, може, заміцно спимо, бо ми є такі, бо ми є такі...

Наш кошовий отаман вчора був нами обраний
і всі ми за славу його поклали кістки.
І тими кістками Майдан триста років як вдобрений...
Та ми забули про це. Бо ми є такі. Бо ми є такі...

Ні, ми не були дурні у підпащину руськую!
Це душі скалічили нам більшовики.
Ми вкрилися шаром брехні, як риб''ячою лускою
і брешемо самі собі, бо ми є такі, бо ми є такі..

І як нас назвати людьми і як нас пробачити?!
Ми Україну свою розтягли на шматки.
І тільки й навчилися ми, що красти й пиячити.
І хто нас пробачить за те, що ми є такі? Що ми є такі...

Каже в розмові сусід, що не піде на вибори.
Хата у нього нова, грошей пачки...
І знову за нього москаль або жид нашу долю нам вибере...
І житиме сам замість нас, бо ми є такі, бо ми є такі...

Де ж ми тепер ідемо, як не бачимо обрію?
А! Підем, куди поведуть новітні панки...
І знову на шию ярмо, а чи відразу на добрива.
Та ми з вами згідні й на це. Бо ми є такі, бо ми є такі...

Гетьман забувся у сні у козацькому курені.
Варта поснула вночі - сплять козаки.
А чи ми насправді дурні, а чи ще будем обдурені?
Та, мабуть, заміцно спимо, бо ми є такі, бо ми є такі...','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_849171'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_849171','Ми є такі','Гетьман забувся у сні у козацькому курені.
Варта поснула вночі - сплять козаки.
А чи ми насправді дурні, а чи кимось обдурені?
А, може, заміцно спимо, бо ми є такі, бо ми є такі...

Наш кошовий отаман вчора був нами обраний
і всі ми за славу його поклали кістки.
І тими кістками Майдан триста років як вдобрений...
Та ми забули про це. Бо ми є такі. Бо ми є такі...

Ні, ми не були дурні у підпащину руськую!
Це душі скалічили нам більшовики.
Ми вкрилися шаром брехні, як риб''ячою лускою
і брешемо самі собі, бо ми є такі, бо ми є такі..

І як нас назвати людьми і як нас пробачити?!
Ми Україну свою розтягли на шматки.
І тільки й навчилися ми, що красти й пиячити.
І хто нас пробачить за те, що ми є такі? Що ми є такі...

Каже в розмові сусід, що не піде на вибори.
Хата у нього нова, грошей пачки...
І знову за нього москаль або жид нашу долю нам вибере...
І житиме сам замість нас, бо ми є такі, бо ми є такі...

Де ж ми тепер ідемо, як не бачимо обрію?
А! Підем, куди поведуть новітні панки...
І знову на шию ярмо, а чи відразу на добрива.
Та ми з вами згідні й на це. Бо ми є такі, бо ми є такі...

Гетьман забувся у сні у козацькому курені.
Варта поснула вночі - сплять козаки.
А чи ми насправді дурні, а чи ще будем обдурені?
Та, мабуть, заміцно спимо, бо ми є такі, бо ми є такі...');
DELETE FROM song_links WHERE song_id = 'pisniua_848858';
DELETE FROM song_versions WHERE song_id = 'pisniua_848858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_848858';
DELETE FROM songs WHERE id = 'pisniua_848858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_848858','П''є журавка воду','Музика: Олександр Зуєв Слова: Іван Зінченко. Виконує: Ватрівчани, Раїса Кириченко','uk','ukr_ssr_1919_1991',NULL,'1924','Записано від Л. М. Старченко, 1924 року народження, українки, мешкає в місті Перевальську.',NULL,'Де курні дороги вийшли за село,
Там у журавки синє джерело.
П''є журавка воду — джерело без дна,
П''є журавка воду — воду п''є одна.

Йшла війна степами, та й до білих хат.
А у журавлихи двоє журавлят.
П''є журавка воду — крилоньки згорта,
Журавель напитись та й не приліта.

Не здійма крилята журавель від ран.
Вже не закурличе, де трава бур''ян.
П''є журавка воду — а кругом дими.
На світанку вмилась, вмилася слізьми.

Аж весна настала — зацвіли льони.
А у журавлихи виросли сини.
П''є журавка воду — в косах сивина.
П''є журавка воду — воду п''є одна','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:patriotic'', ''cat:rekrutski'', ''Пісні з ностальгічними мотивами'', ''Патріотичні пісні'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_848858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_848858','П''є журавка воду','Де курні дороги вийшли за село,
Там у журавки синє джерело.
П''є журавка воду — джерело без дна,
П''є журавка воду — воду п''є одна.

Йшла війна степами, та й до білих хат.
А у журавлихи двоє журавлят.
П''є журавка воду — крилоньки згорта,
Журавель напитись та й не приліта.

Не здійма крилята журавель від ран.
Вже не закурличе, де трава бур''ян.
П''є журавка воду — а кругом дими.
На світанку вмилась, вмилася слізьми.

Аж весна настала — зацвіли льони.
А у журавлихи виросли сини.
П''є журавка воду — в косах сивина.
П''є журавка воду — воду п''є одна');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_848858_l1','pisniua_848858','YouTube','https://www.youtube.com/watch?v=HNmrPa4Jec8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_848858_l2','pisniua_848858','http://www.playcast.ru','http://www.playcast.ru','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8483415';
DELETE FROM song_versions WHERE song_id = 'pisniua_8483415';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8483415';
DELETE FROM songs WHERE id = 'pisniua_8483415';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8483415','Кацапи','Музика: Віктор Бронюк Слова: Віктор Бронюк. Виконує: Т.І.К. (Тік)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ми жили собі, не знаючи горя,
Сонцю раділи, купались у морі,
Не знали біди, війни не чекали.
Як бути щасливими? - У вас не питали!
А ви нас братами колись називали,
А так получилось, що ви - йо*нутий брат,
І в гості, відверто, ми вас не чекали.
Ну як вам пояснити, не вживаючи мат?

Приспів:
Кацапи, а чому ми вас маєм питати,
Як жити на власній землі?!!
І хочеться дуже сказати:
Нах*й ідіть, москалі!
А чому ми вас маєм питати
Як жити на власній землі?!!
І хочеться дуже сказати:
Нах*й ідіть, москалі!

Як придурок сусід, треба жити на стрьомі,
А тут сотні мільйонів дурних, божевільних
Визволяти зібралися нас, непокорних,
А як можуть раби визволяти вільних?!!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8483415'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8483415','Кацапи','Ми жили собі, не знаючи горя,
Сонцю раділи, купались у морі,
Не знали біди, війни не чекали.
Як бути щасливими? - У вас не питали!
А ви нас братами колись називали,
А так получилось, що ви - йо*нутий брат,
І в гості, відверто, ми вас не чекали.
Ну як вам пояснити, не вживаючи мат?

Приспів:
Кацапи, а чому ми вас маєм питати,
Як жити на власній землі?!!
І хочеться дуже сказати:
Нах*й ідіть, москалі!
А чому ми вас маєм питати
Як жити на власній землі?!!
І хочеться дуже сказати:
Нах*й ідіть, москалі!

Як придурок сусід, треба жити на стрьомі,
А тут сотні мільйонів дурних, божевільних
Визволяти зібралися нас, непокорних,
А як можуть раби визволяти вільних?!!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8483415_l1','pisniua_8483415','YouTube','https://www.youtube.com/watch?v=1JyurCCk9ZY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8483415_l2','pisniua_8483415','YouTube','https://www.youtube.com/watch?v=pbNEZMNbl7U','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8481603';
DELETE FROM song_versions WHERE song_id = 'pisniua_8481603';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8481603';
DELETE FROM songs WHERE id = 'pisniua_8481603';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8481603','Небо хилиться','Музика: Альона Савраненко (alyona alyona), KOLA, Vanek Klimenko Слова: Альона Савраненко (alyona alyona), KOLA, Vanek Klimenko','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Небо, небо хилиться, хилиться...     |
Небо ледь тримається, падає, ой-є... |
Тихо-тихо диха в потилицю,           |
Каже нам, що в світі ще правда є!..  | (2)

А небо-небо знає більше, ніж ми,
Небо тихо падає між людьми,
З неба сіє сонце в голови мир,
Але воля - справа лиш нас самих!
Стомлені вірити на слово,
Встигли погаснути в небі наївні вогні,
Тільки надія живе, доки мрія ще є!
Ти ненавидиш, але Бог - ні!
Чисті води змиють із лиця сум,
У житті для зла немає часу!
Більше не ховай за гнівом красу,
Небо воду дасть й не буде посух!
Може твої очі ясні лиють сльози рясні,
Їх земля суха в себе прийма,
Та ніхто не зможе тут жити
І щиро любити цей світ, коли неба нема...

Приспів.

Кришталь має кожна людина,
З роками він забруднюється,
Наче судини.
Очищення має зробити кожен,
Кожен перехожий! Кожен перехожий!
Від непростих думок, які тягнуть вниз,
Та складних розмов, де купа сліз,
Не впади у злість, та завжди слухай
Свою совість, небо в поміч!

Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8481603'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8481603','Небо хилиться','Приспів:
Небо, небо хилиться, хилиться...     |
Небо ледь тримається, падає, ой-є... |
Тихо-тихо диха в потилицю,           |
Каже нам, що в світі ще правда є!..  | (2)

А небо-небо знає більше, ніж ми,
Небо тихо падає між людьми,
З неба сіє сонце в голови мир,
Але воля - справа лиш нас самих!
Стомлені вірити на слово,
Встигли погаснути в небі наївні вогні,
Тільки надія живе, доки мрія ще є!
Ти ненавидиш, але Бог - ні!
Чисті води змиють із лиця сум,
У житті для зла немає часу!
Більше не ховай за гнівом красу,
Небо воду дасть й не буде посух!
Може твої очі ясні лиють сльози рясні,
Їх земля суха в себе прийма,
Та ніхто не зможе тут жити
І щиро любити цей світ, коли неба нема...

Приспів.

Кришталь має кожна людина,
З роками він забруднюється,
Наче судини.
Очищення має зробити кожен,
Кожен перехожий! Кожен перехожий!
Від непростих думок, які тягнуть вниз,
Та складних розмов, де купа сліз,
Не впади у злість, та завжди слухай
Свою совість, небо в поміч!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8481603_l1','pisniua_8481603','YouTube','https://www.youtube.com/watch?v=Sx8oZQMfniE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_849001';
DELETE FROM song_versions WHERE song_id = 'pisniua_849001';
DELETE FROM songs_fts WHERE song_id = 'pisniua_849001';
DELETE FROM songs WHERE id = 'pisniua_849001';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_849001','Вдалині за селом','(В гори прийду до тебе). Музика: Михало Рожко Слова: О. Бондар','uk','ukraine_before_1917',NULL,NULL,'Почуто на весіллі',NULL,'В далині за селом
Я тебе чекаю
На високій полонині
Соловей співає.

Приспів:
В гори прийди до мене
Квітку візьми від мене
Квітка тобі розкаже
Тайну зелених гір

В далині за селом
Там живе красуня
Ти прийди і візьми
Серце тої красуні.

Приспів.

В далині за селом
Зеленіють гори
На високій полонині
Сяють ясні зорі.

Приспів. (2)    Фонограма-мінус (midi)','[''pisni.org.ua'', ''cat:dances'', ''cat:huculski'', ''cat:lirychni'', ''cat:narodni'', ''cat:polky'', ''Пісні до танцю'', ''Гуцульські пісні'', ''Пісні про кохання, ліричні'', ''Народні пісні'', ''Польки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_849001'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_849001','Вдалині за селом','В далині за селом
Я тебе чекаю
На високій полонині
Соловей співає.

Приспів:
В гори прийди до мене
Квітку візьми від мене
Квітка тобі розкаже
Тайну зелених гір

В далині за селом
Там живе красуня
Ти прийди і візьми
Серце тої красуні.

Приспів.

В далині за селом
Зеленіють гори
На високій полонині
Сяють ясні зорі.

Приспів. (2)    Фонограма-мінус (midi)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_849001_l1','pisniua_849001','YouTube','https://www.youtube.com/watch?v=ZBLTs_s1nsk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_849001_l2','pisniua_849001','YouTube','https://www.youtube.com/watch?v=etr3RarsKBM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_848575';
DELETE FROM song_versions WHERE song_id = 'pisniua_848575';
DELETE FROM songs_fts WHERE song_id = 'pisniua_848575';
DELETE FROM songs WHERE id = 'pisniua_848575';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_848575','Да й розкопаю я гору','Українська народна пісня. Виконує: Буття','uk','ukraine_before_1917',NULL,NULL,'1. http://www.buttia.kiev.ua/reper_2001.html',NULL,'Да й розкопаю гору,   |(2)
Да й посію я рожу.

Да й посію я рожу,    |(2)
Да й поставлю сторожу.

Да й нехай вітер має, |(2)
Да й рожу повіває.

Да й рожу повіває,    |(2)
Да й мати сина лає.

Да й мати сина лає,   |(2)
Да й гулять не пускає.

Ой пусти ж мене, мати,|(2)
У вишневий сад гуляти!

Хоч на час на часочок |(2)
У вишневенький садочок!','[''pisni.org.ua'', ''cat:kupalski'', ''cat:volynski'', ''Купальські пісні'', ''Пісні з Волині'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_848575'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_848575','Да й розкопаю я гору','Да й розкопаю гору,   |(2)
Да й посію я рожу.

Да й посію я рожу,    |(2)
Да й поставлю сторожу.

Да й нехай вітер має, |(2)
Да й рожу повіває.

Да й рожу повіває,    |(2)
Да й мати сина лає.

Да й мати сина лає,   |(2)
Да й гулять не пускає.

Ой пусти ж мене, мати,|(2)
У вишневий сад гуляти!

Хоч на час на часочок |(2)
У вишневенький садочок!');
DELETE FROM song_links WHERE song_id = 'pisniua_8491979';
DELETE FROM song_versions WHERE song_id = 'pisniua_8491979';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8491979';
DELETE FROM songs WHERE id = 'pisniua_8491979';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8491979','Чекаємо Миколая','Музика: Микола Ведмедеря Слова: Юлія Хандожинська','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Сипле, сипле, засипає
Білий сніг, сніжок.
Миколай несе святковий
На плечі мішок.
У мішку тім, ой, багато
Подарунків є!
Миколай обов''язково
Дітям принесе.

Приспів:
Миколаю, Миколаю,
Ми на тебе так чекаєм!
Ти прийти не забувай,
Миколаю, Миколай!

Ми слухняними були,
Віршики читали,
На рахунок раз, два, три
Мамі помагали!
Усі квіти полили,
Що росли в горщечках,
І ялинку чепурили
Знизу до вершечку!

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8491979'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8491979','Чекаємо Миколая','Сипле, сипле, засипає
Білий сніг, сніжок.
Миколай несе святковий
На плечі мішок.
У мішку тім, ой, багато
Подарунків є!
Миколай обов''язково
Дітям принесе.

Приспів:
Миколаю, Миколаю,
Ми на тебе так чекаєм!
Ти прийти не забувай,
Миколаю, Миколай!

Ми слухняними були,
Віршики читали,
На рахунок раз, два, три
Мамі помагали!
Усі квіти полили,
Що росли в горщечках,
І ялинку чепурили
Знизу до вершечку!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_849013';
DELETE FROM song_versions WHERE song_id = 'pisniua_849013';
DELETE FROM songs_fts WHERE song_id = 'pisniua_849013';
DELETE FROM songs WHERE id = 'pisniua_849013';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_849013','Ой наїхали вози з України (на чотири голоси)','Українська народна пісня. Виконує: Хор "Чумаки"','uk','ukraine_1991',NULL,'1998','1. Текст і ноти отримані від капели бандуристів "Карпати" (м. Львів).','В репертуарі чоловічого хору "Чумаки" з 1998 року.','Ой наїхали вози з України,
Гей, з України,
Розійшлися круторогі
По долині,
Гей, гей, по долині.

Розійшлися круторогі по байраку,
Гей, по байраку, -
Чумаченьки гуляли
Аж до ранку,
Гей, гей, аж до ранку.

Соловейко співа, репетує,
Гей, репетує!
Та ніхто його співу
Вже не чує,
Гей, гей, вже не чує','[''pisni.org.ua'', ''cat:chumacki'', ''Чумацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_849013'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_849013','Ой наїхали вози з України (на чотири голоси)','Ой наїхали вози з України,
Гей, з України,
Розійшлися круторогі
По долині,
Гей, гей, по долині.

Розійшлися круторогі по байраку,
Гей, по байраку, -
Чумаченьки гуляли
Аж до ранку,
Гей, гей, аж до ранку.

Соловейко співа, репетує,
Гей, репетує!
Та ніхто його співу
Вже не чує,
Гей, гей, вже не чує');
DELETE FROM song_links WHERE song_id = 'pisniua_8486858';
DELETE FROM song_versions WHERE song_id = 'pisniua_8486858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8486858';
DELETE FROM songs WHERE id = 'pisniua_8486858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8486858','А ми любим ЗСУ','Музика: Олеся Май Слова: Наталія Май. Виконує: Ярослава Руденко','uk','ukraine_1991',NULL,NULL,'https://www.youtube.com/watch?v=r4J-qMk_8BI',NULL,'Пам''ятайте, москалі!
Ми живем на цій землі!
Будем неньку захищати
І великі, і малі!
Вам ніколи не збагнуть
Цю єдину справжню суть:
Що російським окупантам
Нашу волю не здобуть!

Приспів:
А ми любим ЗСУ рідненьке
І голубим до свого серденька!
А ми любим, хлопці, ви найкращі!
Не здамося ми нізащо!
А ми любим ЗСУ рідненьке
І голубим до свого серденька!
А ми любим, хлопці, ви найкращі!
Перемога буде наша!

Пам''ятайте, москалі,
Ви для світу - люди злі.
Наша доля - то є воля
На високому крилі!
Не дано вам зрозуміть
Вічну істину століть,
Що червоную калину
Вам ніколи не зломить!

Приспів.

А ми любим ЗСУ!
І голубим ЗСУ!
А ми любим ЗСУ!
Перемога буде наша!

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8486858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8486858','А ми любим ЗСУ','Пам''ятайте, москалі!
Ми живем на цій землі!
Будем неньку захищати
І великі, і малі!
Вам ніколи не збагнуть
Цю єдину справжню суть:
Що російським окупантам
Нашу волю не здобуть!

Приспів:
А ми любим ЗСУ рідненьке
І голубим до свого серденька!
А ми любим, хлопці, ви найкращі!
Не здамося ми нізащо!
А ми любим ЗСУ рідненьке
І голубим до свого серденька!
А ми любим, хлопці, ви найкращі!
Перемога буде наша!

Пам''ятайте, москалі,
Ви для світу - люди злі.
Наша доля - то є воля
На високому крилі!
Не дано вам зрозуміть
Вічну істину століть,
Що червоную калину
Вам ніколи не зломить!

Приспів.

А ми любим ЗСУ!
І голубим ЗСУ!
А ми любим ЗСУ!
Перемога буде наша!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8486858_l1','pisniua_8486858','YouTube','https://www.youtube.com/watch?v=r4J-qMk_8BI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8491950';
DELETE FROM song_versions WHERE song_id = 'pisniua_8491950';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8491950';
DELETE FROM songs WHERE id = 'pisniua_8491950';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8491950','Важливо','Музика: Ірина Батюк, Роман Калин, Сергій Лазановський Слова: Ірина Батюк, Роман Калин, Сергій Лазановський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я би, я би так хотів
Розказати кілька слів
Про історію свою,
Що знайома всім до болю...
В пошуках сенсу життя,
Забуваєм про почуття,
Як птахи, проти вітру летим,
Не зламати б крил!..

Приспів:
Так важливо цінувати
Тих, хто поруч із тобою!
Подзвонити мамі й тату
І сказати їм "Все ок!"
Бо так важливо цінувати
Тих, хто поруч із тобою!
Подзвонити своїм друзям
І не втратити зв''язок!

Я би так, я би так, я би хотів
Розказати кілька слів...
Не приховуй від людей
Почуття, які в тобі живуть!..
Дай волю їм, впусти в свій дім,
Хай стане затишно у нім!..
Настане час, не стане нас,
І тільки фото на стіні...

Приспів.

Я би так, я би так, я би хотів...
Я би так, я би так, я би хотів...
Я би так хотів...
Я би так хотів, так хотів
Не втратити зв''язок!..

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8491950'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8491950','Важливо','Я би, я би так хотів
Розказати кілька слів
Про історію свою,
Що знайома всім до болю...
В пошуках сенсу життя,
Забуваєм про почуття,
Як птахи, проти вітру летим,
Не зламати б крил!..

Приспів:
Так важливо цінувати
Тих, хто поруч із тобою!
Подзвонити мамі й тату
І сказати їм "Все ок!"
Бо так важливо цінувати
Тих, хто поруч із тобою!
Подзвонити своїм друзям
І не втратити зв''язок!

Я би так, я би так, я би хотів
Розказати кілька слів...
Не приховуй від людей
Почуття, які в тобі живуть!..
Дай волю їм, впусти в свій дім,
Хай стане затишно у нім!..
Настане час, не стане нас,
І тільки фото на стіні...

Приспів.

Я би так, я би так, я би хотів...
Я би так, я би так, я би хотів...
Я би так хотів...
Я би так хотів, так хотів
Не втратити зв''язок!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8491950_l1','pisniua_8491950','YouTube','https://www.youtube.com/watch?v=GK3t7DZTZJs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8495415';
DELETE FROM song_versions WHERE song_id = 'pisniua_8495415';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8495415';
DELETE FROM songs WHERE id = 'pisniua_8495415';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8495415','Мамо, ти молись','Музика: Мар''яна Ромась, Олександр Шевченко Слова: Мар''яна Ромась','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мамо, молись... Мамо, молись...

Мати на колінах благає миру,
Батько погляд в небо - до Бога щиро.
Сина відпустили в дорогу далеку,
Тепер він захищає від небезпеки!..

Приспів:
Мамо, ти молись,
А я буду жити!
Чорте, зупинись!
Не дам свою неньку ділити!..
Мамо, ти молись!
У нас сильна країна!
Душами сплелись,
Не впадемо ми на коліна!

Знову чути постріл - стоять солдати,
Вони за мир готові життя віддати,
За синє небо чисте, майбутнє для дітей,
А мати на колінах у тьмі страшних ночей...

Приспів.

Мамо, ти молись!
Молись, мамо!..
Молись, мамо!..
Моя мамо, молись!..
Я живий!.. Я живий!..
Молись, мамо!..
Молись, мамо!..','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8495415'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8495415','Мамо, ти молись','Мамо, молись... Мамо, молись...

Мати на колінах благає миру,
Батько погляд в небо - до Бога щиро.
Сина відпустили в дорогу далеку,
Тепер він захищає від небезпеки!..

Приспів:
Мамо, ти молись,
А я буду жити!
Чорте, зупинись!
Не дам свою неньку ділити!..
Мамо, ти молись!
У нас сильна країна!
Душами сплелись,
Не впадемо ми на коліна!

Знову чути постріл - стоять солдати,
Вони за мир готові життя віддати,
За синє небо чисте, майбутнє для дітей,
А мати на колінах у тьмі страшних ночей...

Приспів.

Мамо, ти молись!
Молись, мамо!..
Молись, мамо!..
Моя мамо, молись!..
Я живий!.. Я живий!..
Молись, мамо!..
Молись, мамо!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8495415_l1','pisniua_8495415','YouTube','https://www.youtube.com/watch?v=ctByEMv_lPA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_849450';
DELETE FROM song_versions WHERE song_id = 'pisniua_849450';
DELETE FROM songs_fts WHERE song_id = 'pisniua_849450';
DELETE FROM songs WHERE id = 'pisniua_849450';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_849450','Млиночок','(Млинок). Українська народна пісня. Виконує: Бурдон','uk','ukraine_before_1917',NULL,NULL,'1. http://burdon.lviv.ua/songs.html',NULL,'Там на горі млиночок, млиночок.
Кінь мене несе, тихо йде й у поле.

А там дівочок таночок, таночок.
Кінь мене несе, тихо йде й у поле.

Поміж ними сам Іван, сам Іван.
Кінь мене несе, тихо йде й у поле.

А він собі дівку брав, дівку брав.
Кінь мене несе, тихо йде й у поле.

Ходи жінко зо мною, зо мною.
Кінь мене несе, тихо йде й у поле.

Будеш мені жоною, жоною.
Кінь мене несе, тихо йде й у поле.','[''pisni.org.ua'', ''cat:all-ukraine'', ''cat:kupalski'', ''Загальноукраїнські пісні'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_849450'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_849450','Млиночок','Там на горі млиночок, млиночок.
Кінь мене несе, тихо йде й у поле.

А там дівочок таночок, таночок.
Кінь мене несе, тихо йде й у поле.

Поміж ними сам Іван, сам Іван.
Кінь мене несе, тихо йде й у поле.

А він собі дівку брав, дівку брав.
Кінь мене несе, тихо йде й у поле.

Ходи жінко зо мною, зо мною.
Кінь мене несе, тихо йде й у поле.

Будеш мені жоною, жоною.
Кінь мене несе, тихо йде й у поле.');
DELETE FROM song_links WHERE song_id = 'pisniua_8487756';
DELETE FROM song_versions WHERE song_id = 'pisniua_8487756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8487756';
DELETE FROM songs WHERE id = 'pisniua_8487756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8487756','Осінь в Україні','Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Знову осінь в Україну,
Знову осінь в Україну -
У чудовий, рідний край,
Завітала на гостину,
Завітала на гостину,
Принесла нам урожай!

Приспів.
Всім дарунки роздала
Щедрі і багаті
Наша Осінь золота!

Знову осінь в Україні,
Знову осінь в Україні
Завітала на поля.
Урожай зібрала нині,
Урожай зібрала нині,
Відпочине хай земля!

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8487756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8487756','Осінь в Україні','Знову осінь в Україну,
Знову осінь в Україну -
У чудовий, рідний край,
Завітала на гостину,
Завітала на гостину,
Принесла нам урожай!

Приспів.
Всім дарунки роздала
Щедрі і багаті
Наша Осінь золота!

Знову осінь в Україні,
Знову осінь в Україні
Завітала на поля.
Урожай зібрала нині,
Урожай зібрала нині,
Відпочине хай земля!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8487756_l1','pisniua_8487756','YouTube','https://www.youtube.com/watch?v=5D9cUxc0VTQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8495116';
DELETE FROM song_versions WHERE song_id = 'pisniua_8495116';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8495116';
DELETE FROM songs WHERE id = 'pisniua_8495116';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8495116','Веселий танок парами','Музика: Ольга Маєвська Слова: Ольга Маєвська','uk','ukraine_1991',NULL,NULL,'авторське подання','Пісню виконує Ольга Маєвська (альбом: Пісні для дітей).','Ми з дружечком ідемо
І танок розпочнемо.
Ручки - плесь! Ніжки - чок!
Посміхнись мені, дружок!

Друга ти міцніш тримай
І навпочіпки стрибай!
Зупинись, постривай!
В парі весело кружляй!

З другом плескай веселіш,
Плесь да плесь, ти не лінись!
Вправо-вліво повернись
І усім ти посміхнись!

На носок, на каблучок -
Ми танцюєм гопачок!
Ти з дружечком обіймись,
А тепер усім вклонись!','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8495116'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8495116','Веселий танок парами','Ми з дружечком ідемо
І танок розпочнемо.
Ручки - плесь! Ніжки - чок!
Посміхнись мені, дружок!

Друга ти міцніш тримай
І навпочіпки стрибай!
Зупинись, постривай!
В парі весело кружляй!

З другом плескай веселіш,
Плесь да плесь, ти не лінись!
Вправо-вліво повернись
І усім ти посміхнись!

На носок, на каблучок -
Ми танцюєм гопачок!
Ти з дружечком обіймись,
А тепер усім вклонись!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8495116_l1','pisniua_8495116','YouTube','https://www.youtube.com/watch?v=5Yr1l3cLGaw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8495409';
DELETE FROM song_versions WHERE song_id = 'pisniua_8495409';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8495409';
DELETE FROM songs WHERE id = 'pisniua_8495409';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8495409','Дарунки Миколая','Музика: Оксана Пічугіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В кожну хату, в кожен дім
Миколай приходить,
І дарунками усім,
Хто слухняний, годить.

Приспів:
Хай Господь вас береже! -
Скаже він на вушко...
І цукерки покладе,
Пряник під подушку.

Миколай несе в мішку
Добру казку й диво,
Щоб спалося в ніч таку
Діточкам щасливо!

Приспів.

А за тих, хто нагрішив,
Він у Бога просить!
І даруночки смачні
Всім завжди приносить!

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8495409'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8495409','Дарунки Миколая','В кожну хату, в кожен дім
Миколай приходить,
І дарунками усім,
Хто слухняний, годить.

Приспів:
Хай Господь вас береже! -
Скаже він на вушко...
І цукерки покладе,
Пряник під подушку.

Миколай несе в мішку
Добру казку й диво,
Щоб спалося в ніч таку
Діточкам щасливо!

Приспів.

А за тих, хто нагрішив,
Він у Бога просить!
І даруночки смачні
Всім завжди приносить!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8495409_l1','pisniua_8495409','YouTube','https://www.youtube.com/watch?v=vdGhGyUVcXs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8496909';
DELETE FROM song_versions WHERE song_id = 'pisniua_8496909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8496909';
DELETE FROM songs WHERE id = 'pisniua_8496909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8496909','Ой, тумани, тумани','Музика: Валерій Воробей Слова: Валентин Панасюк. Виконує: Гурт Награш','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Понад берегом стали
Ранком сиві тумани,
А назустріч туманам
В наступ йшли ЗСУ!
Йшли солдати-герої,
Всі до бою готові,
Визволяти вітчизну -
Рідну землю свою!

Приспів:
Ой, тумани, тумани,
Передайте вітрами:
Українські соколи
Проганяють орду!
Ой, тумани, тумани,
Перемога за нами!
Захищайте, тумани,
Наших хлопців в бою!

Небо вкрили ракети,
Гуркіт йшов понад степом,
Рвались сиві тумани
У кривавім бою...
І відлунням небесним
Розійшлось понад степом
У бою за вітчизну -
Рідну матір свою!..

Приспів.

Зникли сиві тумани,
Сонце вийшло за хмари,
Гордо полем ступали
України сини!
Йшли солдати-герої
З перемогою полем!
Та, на жаль, з того поля
Повернулись не всі...

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8496909'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8496909','Ой, тумани, тумани','Понад берегом стали
Ранком сиві тумани,
А назустріч туманам
В наступ йшли ЗСУ!
Йшли солдати-герої,
Всі до бою готові,
Визволяти вітчизну -
Рідну землю свою!

Приспів:
Ой, тумани, тумани,
Передайте вітрами:
Українські соколи
Проганяють орду!
Ой, тумани, тумани,
Перемога за нами!
Захищайте, тумани,
Наших хлопців в бою!

Небо вкрили ракети,
Гуркіт йшов понад степом,
Рвались сиві тумани
У кривавім бою...
І відлунням небесним
Розійшлось понад степом
У бою за вітчизну -
Рідну матір свою!..

Приспів.

Зникли сиві тумани,
Сонце вийшло за хмари,
Гордо полем ступали
України сини!
Йшли солдати-герої
З перемогою полем!
Та, на жаль, з того поля
Повернулись не всі...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8496909_l1','pisniua_8496909','YouTube','https://www.youtube.com/watch?v=SZrdSCzBnbA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_849154';
DELETE FROM song_versions WHERE song_id = 'pisniua_849154';
DELETE FROM songs_fts WHERE song_id = 'pisniua_849154';
DELETE FROM songs WHERE id = 'pisniua_849154';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_849154','Ой чорна я си чорна *','Українська народна пісня. Виконує: Бурдон','uk','ukraine_before_1917',NULL,NULL,'1. Запис пісні з альбому',NULL,'Ой чорна я си чорна,
Чорнява як циганка,
Жем си полюбила, жем си полюбила,
Чорнявого Іванка.

Іванка, та й Іванка
Іванка та й не дурня,
Якби го не збудила,
Якби го не збудила,
То спав би до полудня!

Люблю тебе марусю,
Люблю я твою вроду,
Люблю дивисися,
Люблю дивитися,
Як ти ідеш по воду.

Як ти ідеш по воду,
Як ти ідеш з водою,
Люблю дивитися,
Люблю дивитися,
Марусю за тобою.

у лісі два дубочки,
Обидва зелененькі
Ми так паровані,
Ми так паровані,
Обоє чорнявенькі.

Ой піду я до ліса,
Войду дай заколишу,
Я з відси не поїду,
Я звітсь не поїду,
Кохання не залишу.

Кохання, та й кохання,
Дівочеє страждання,
Поки сонечко зійде,
Поки сонечко зійде,
Кохання ся розійде.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:narodni'', ''Пісні про кохання, ліричні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_849154'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_849154','Ой чорна я си чорна *','Ой чорна я си чорна,
Чорнява як циганка,
Жем си полюбила, жем си полюбила,
Чорнявого Іванка.

Іванка, та й Іванка
Іванка та й не дурня,
Якби го не збудила,
Якби го не збудила,
То спав би до полудня!

Люблю тебе марусю,
Люблю я твою вроду,
Люблю дивисися,
Люблю дивитися,
Як ти ідеш по воду.

Як ти ідеш по воду,
Як ти ідеш з водою,
Люблю дивитися,
Люблю дивитися,
Марусю за тобою.

у лісі два дубочки,
Обидва зелененькі
Ми так паровані,
Ми так паровані,
Обоє чорнявенькі.

Ой піду я до ліса,
Войду дай заколишу,
Я з відси не поїду,
Я звітсь не поїду,
Кохання не залишу.

Кохання, та й кохання,
Дівочеє страждання,
Поки сонечко зійде,
Поки сонечко зійде,
Кохання ся розійде.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_849154_l1','pisniua_849154','YouTube','https://www.youtube.com/watch?v=iH0FwcNWHzY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_849154_l2','pisniua_849154','YouTube','https://www.youtube.com/watch?v=GsGypYu8iiQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_849154_l3','pisniua_849154','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_849777';
DELETE FROM song_versions WHERE song_id = 'pisniua_849777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_849777';
DELETE FROM songs WHERE id = 'pisniua_849777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_849777','Чому дружки не співают','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Лемківські співанки. Зібрав і упорядкував М. Соболевський. — К.: Музична Україна, 1967. — 320 с.','Пісня з добірки М. Соболевського: Лемківські співанки','Чому дружки не співают?
Бо зарідки зуби мают.
Треба тіста замісити,
Дружкам зуби заліпити.

Пришли нам ту приданяне,
Што ми їм ту їсти даме?
Навариме дрібних трісок,
Накладеме на сім мисок.

Повідала рибка рибці,
Же палюнка єст в барилці.
А ми отсаль не підеме,
Докля ми єй не вип''єме.

Милий-милий, буд же мі здрав,
Добру ти мя фраїрку мав,
Добру-добру не хоц яку,
Не будеш мав нигда таку.

Боже-Боже, нич не зроблю
Лем я продам свою ролю,
Ролю продам за дукати
Сам ся піду звербувати.

Кермеш-кермеш, Бог тя створив,
Давно я ся на тя строїв,
Забив бичка и теличку
Кермеш випав у п''ятничку','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_849777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_849777','Чому дружки не співают','Чому дружки не співают?
Бо зарідки зуби мают.
Треба тіста замісити,
Дружкам зуби заліпити.

Пришли нам ту приданяне,
Што ми їм ту їсти даме?
Навариме дрібних трісок,
Накладеме на сім мисок.

Повідала рибка рибці,
Же палюнка єст в барилці.
А ми отсаль не підеме,
Докля ми єй не вип''єме.

Милий-милий, буд же мі здрав,
Добру ти мя фраїрку мав,
Добру-добру не хоц яку,
Не будеш мав нигда таку.

Боже-Боже, нич не зроблю
Лем я продам свою ролю,
Ролю продам за дукати
Сам ся піду звербувати.

Кермеш-кермеш, Бог тя створив,
Давно я ся на тя строїв,
Забив бичка и теличку
Кермеш випав у п''ятничку');
DELETE FROM song_links WHERE song_id = 'pisniua_8500373';
DELETE FROM song_versions WHERE song_id = 'pisniua_8500373';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8500373';
DELETE FROM songs WHERE id = 'pisniua_8500373';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8500373','Чорнобильська Слава','Музика: Сергій Нехаєвський Слова: Сергій Нехаєвський. Виконує: Сергій Нехаєвський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'В квітневу ніч біда - пророчество шамана
Реактор спалахнув, хитнулася Земля.
У небо зрив жбурнув, неначе із вулкана,
На "До" та "Після" наше він поділив життя...

Приспів:
Собою ми закрили від ядерного лиха
Людей на всій планеті: і в горах, і в степах.
На шлях, де нас чекає до себе вічність тиха,
Ми стали й захистили життя у всіх містах.
Вам всім Героям - Слава! І пам''ять у серцях!

Хто встав за рухом серця, кого позвала служба,
Гранітним обеліском ми стали на віки.
Живих та, хто на небі, чорнобильська та дружба
Всіх повінчала разом, тоді і назавжди...

Приспів.

Реактор потушили майже своєю кров''ю,
Ми всі там постраждали від ядерної чуми...
Вкраїні ми віддали в Чорнобилі здоров''я,
Для кожного майбутнє розтануло у дими...

Приспів','[''pisni.org.ua'', ''cat:chornobyl'', ''Чорнобильська катастрофа: пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8500373'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8500373','Чорнобильська Слава','В квітневу ніч біда - пророчество шамана
Реактор спалахнув, хитнулася Земля.
У небо зрив жбурнув, неначе із вулкана,
На "До" та "Після" наше він поділив життя...

Приспів:
Собою ми закрили від ядерного лиха
Людей на всій планеті: і в горах, і в степах.
На шлях, де нас чекає до себе вічність тиха,
Ми стали й захистили життя у всіх містах.
Вам всім Героям - Слава! І пам''ять у серцях!

Хто встав за рухом серця, кого позвала служба,
Гранітним обеліском ми стали на віки.
Живих та, хто на небі, чорнобильська та дружба
Всіх повінчала разом, тоді і назавжди...

Приспів.

Реактор потушили майже своєю кров''ю,
Ми всі там постраждали від ядерної чуми...
Вкраїні ми віддали в Чорнобилі здоров''я,
Для кожного майбутнє розтануло у дими...

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8500373_l1','pisniua_8500373','YouTube','https://www.youtube.com/watch?v=71e5K70GTWk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8496001';
DELETE FROM song_versions WHERE song_id = 'pisniua_8496001';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8496001';
DELETE FROM songs WHERE id = 'pisniua_8496001';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8496001','Пісенька янголят','Музика: Галина Заботіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ми - маленькі янголята,
І дорослим, і малятам
Звістку радісну несемо:
Народився Божий Син!
Між теляток і овечок
Б''ється крихітне сердечко...
Йому шану віддаємо,
Він для нас такий один!

Приспів.
І весь світ співає
Радісних пісень,
І Різдво святкують
Люди у цей день!

Ми - маленькі янголята,
Ми несемо в кожну хату
І вітання, і колядки,
Хай радіє вся земля!
В яслах вогник засвітився,
Янгол з неба опустився
Привітати це дитятко -
Це святеє немовля!

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8496001'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8496001','Пісенька янголят','Ми - маленькі янголята,
І дорослим, і малятам
Звістку радісну несемо:
Народився Божий Син!
Між теляток і овечок
Б''ється крихітне сердечко...
Йому шану віддаємо,
Він для нас такий один!

Приспів.
І весь світ співає
Радісних пісень,
І Різдво святкують
Люди у цей день!

Ми - маленькі янголята,
Ми несемо в кожну хату
І вітання, і колядки,
Хай радіє вся земля!
В яслах вогник засвітився,
Янгол з неба опустився
Привітати це дитятко -
Це святеє немовля!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8496001_l1','pisniua_8496001','YouTube','https://www.youtube.com/watch?v=_S2SWaTo25k','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_849307';
DELETE FROM song_versions WHERE song_id = 'pisniua_849307';
DELETE FROM songs_fts WHERE song_id = 'pisniua_849307';
DELETE FROM songs WHERE id = 'pisniua_849307';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_849307','Ти і я','Музика: Михайло Дубецький Слова: Михайло Дубецький. Виконує: Оксана Білозір, Ігор Білозір, Ватра, Михайло Дубецький','uk','ukraine_1991',NULL,NULL,'1. Авторське подання',NULL,'Ми пливем у човні з тобою поруч, мила,
В нас обох збентежені серця
Хоч нас обох кохання щире
В житті уперше полонило
А мовчимо і ти, і я.
Хоч нас обох кохання щире
В житті уперше полонило
А мовчимо і ти, і я.

Ось і місяць зійшов, роса на землю впала,
Залунав спів солов''їв,
І нам здалось, що навіть трави  |
Десь про любов собі шептали,    |(2)
А ми кохаємось без слів.        |

Твої очі цвітуть наче волошки сині,
Зайві тут зрадливії слова
Бо в очі віримо щасливі         |
Ледь-ледь веселі, ледь журливі  |(2)
І мовчимо і ти, і я.            |','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_849307'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_849307','Ти і я','Ми пливем у човні з тобою поруч, мила,
В нас обох збентежені серця
Хоч нас обох кохання щире
В житті уперше полонило
А мовчимо і ти, і я.
Хоч нас обох кохання щире
В житті уперше полонило
А мовчимо і ти, і я.

Ось і місяць зійшов, роса на землю впала,
Залунав спів солов''їв,
І нам здалось, що навіть трави  |
Десь про любов собі шептали,    |(2)
А ми кохаємось без слів.        |

Твої очі цвітуть наче волошки сині,
Зайві тут зрадливії слова
Бо в очі віримо щасливі         |
Ледь-ледь веселі, ледь журливі  |(2)
І мовчимо і ти, і я.            |');
DELETE FROM song_links WHERE song_id = 'pisniua_8498103';
DELETE FROM song_versions WHERE song_id = 'pisniua_8498103';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8498103';
DELETE FROM songs WHERE id = 'pisniua_8498103';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8498103','Ось яка ялиночка!','Музика: Т. Попатенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ось яка ялиночка
В залі є у нас -
Ми таку ялиночку
Бачим перший раз:

Приспів:
Іграшки висять,
Вогники горять,
Мов струмочок чарівний,
Ллється дощик золотий,
Ллється дощик золотий!

Щоб ялинці весело
Стало у садку,
Подаруєм пісеньку
Ми їй ось таку!

Приспів.

Голочки ялиночка
Стала розправлять -
Хоче так ялиночка
З нами танцювать!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8498103'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8498103','Ось яка ялиночка!','Ось яка ялиночка
В залі є у нас -
Ми таку ялиночку
Бачим перший раз:

Приспів:
Іграшки висять,
Вогники горять,
Мов струмочок чарівний,
Ллється дощик золотий,
Ллється дощик золотий!

Щоб ялинці весело
Стало у садку,
Подаруєм пісеньку
Ми їй ось таку!

Приспів.

Голочки ялиночка
Стала розправлять -
Хоче так ялиночка
З нами танцювать!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8498103_l1','pisniua_8498103','YouTube','https://www.youtube.com/watch?v=uSFv8V9WAX8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8493312';
DELETE FROM song_versions WHERE song_id = 'pisniua_8493312';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8493312';
DELETE FROM songs WHERE id = 'pisniua_8493312';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8493312','Імператори','Музика: Klavdia Petrivna Слова: Klavdia Petrivna','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Яка в мене може бути радикальна трансформація,
Коли навколо тиснуть люди, їхня радіація?..
Коли йде від них негативна вібрація,
Я не знаю, нащо вам та інформація?..
Навколо мене крутяться вільні анархісти,
Я вже не знаю, що їм розповісти...
Навколо ходять одні провокатори,
Придумали собі, що вони - імператори.

Приспів:
Багато втратили, в халепу втрапили,
І з часом попадали, вони - імператори...
Імператори багато втратили,              |
В халепу втрапили,                       |
І з часом попадали, вони - імператори... | (2)

Імператори...

І так в житті буває, що треба обирати,
Чи лежати камінчиком, чи сонечком палати,
Плекати надію чи просто здатися,
Плести по течії, їй віддатися...
І все міняється, як погода,
Б''ються не знаючи, що таке свобода,
Дивлять на світ крізь вузькі паттерни,
Хай нахер ідуть такі імператори!

Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8493312'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8493312','Імператори','Яка в мене може бути радикальна трансформація,
Коли навколо тиснуть люди, їхня радіація?..
Коли йде від них негативна вібрація,
Я не знаю, нащо вам та інформація?..
Навколо мене крутяться вільні анархісти,
Я вже не знаю, що їм розповісти...
Навколо ходять одні провокатори,
Придумали собі, що вони - імператори.

Приспів:
Багато втратили, в халепу втрапили,
І з часом попадали, вони - імператори...
Імператори багато втратили,              |
В халепу втрапили,                       |
І з часом попадали, вони - імператори... | (2)

Імператори...

І так в житті буває, що треба обирати,
Чи лежати камінчиком, чи сонечком палати,
Плекати надію чи просто здатися,
Плести по течії, їй віддатися...
І все міняється, як погода,
Б''ються не знаючи, що таке свобода,
Дивлять на світ крізь вузькі паттерни,
Хай нахер ідуть такі імператори!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8493312_l1','pisniua_8493312','YouTube','https://www.youtube.com/watch?v=j3FKauSpu1U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8500817';
DELETE FROM song_versions WHERE song_id = 'pisniua_8500817';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8500817';
DELETE FROM songs WHERE id = 'pisniua_8500817';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8500817','Зірка яскрава в небі тривожному','Музика: Vitaliia Hrytsak Слова: Vitaliia Hrytsak','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Зірка яскрава в небі тривожному
Вість українцю показує кожному:
Мерехтить кажучи: Діва на сіні
Вже оповила Божу дитину!
Зірці різдвяній в цім боці планети
Зовсім байдужі ворожі ракети.
Хоче наш ворог свято забрати,
Та зоря сяє ясно й завзято!

Зірка освячує Схід благодаттю
І підглядає в окопи солдатів,
Знає, як хочуть в це свято додому,
Знає, що мають кутю вони й втому!..
Поки не згасла у темряві ночі,
Раптом солдат піднімає вверх очі,
Видно прохання у сильних очах:
До перемоги світи, зірко, шлях!

Зірка летить далі між узбереж
Криму, Херсону, Одеси, авжеж!
Світить, де темно, де купу болю,
Де окупанти поцупили волю!..
Темні освячуючи горизонти в домі,
Де рідних чекають із фронту,
Хоче теплом доторкнутись до серця
В домі, де хтось вже не повернеться...

Зірка різдвяна сяє вогнями,
Бо перемога точно за нами!
Не віддамо з Богом в серці свого!
Христос родився! Славімо Його!..','[''pisni.org.ua'', ''cat:christian'', ''cat:viyskovi'', ''Пісні на християнську тематику'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8500817'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8500817','Зірка яскрава в небі тривожному','Зірка яскрава в небі тривожному
Вість українцю показує кожному:
Мерехтить кажучи: Діва на сіні
Вже оповила Божу дитину!
Зірці різдвяній в цім боці планети
Зовсім байдужі ворожі ракети.
Хоче наш ворог свято забрати,
Та зоря сяє ясно й завзято!

Зірка освячує Схід благодаттю
І підглядає в окопи солдатів,
Знає, як хочуть в це свято додому,
Знає, що мають кутю вони й втому!..
Поки не згасла у темряві ночі,
Раптом солдат піднімає вверх очі,
Видно прохання у сильних очах:
До перемоги світи, зірко, шлях!

Зірка летить далі між узбереж
Криму, Херсону, Одеси, авжеж!
Світить, де темно, де купу болю,
Де окупанти поцупили волю!..
Темні освячуючи горизонти в домі,
Де рідних чекають із фронту,
Хоче теплом доторкнутись до серця
В домі, де хтось вже не повернеться...

Зірка різдвяна сяє вогнями,
Бо перемога точно за нами!
Не віддамо з Богом в серці свого!
Христос родився! Славімо Його!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8500817_l1','pisniua_8500817','YouTube','https://www.youtube.com/watch?v=8uV6gPMVmfo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8500817_l2','pisniua_8500817','YouTube','https://www.youtube.com/watch?v=M1cHFkJq-ik','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8498552';
DELETE FROM song_versions WHERE song_id = 'pisniua_8498552';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8498552';
DELETE FROM songs WHERE id = 'pisniua_8498552';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8498552','Миколаю, Миколаю!','Музика: Тетяна Аліксійчук Слова: Тетяна Аліксійчук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Миколаю, Миколаю,
Дітки всі Тебе чекають!
Ти до нас скоріш прийди,
Подарунки принеси!
Ти до нас скоріш прийди,
Подарунки принеси!

Миколаю, Миколаю,
Тебе радо зустрічаєм!
Чемні були ми весь час,
Ти приходь скоріш до нас!
Чемні були ми весь час,
Ти приходь скоріш до нас!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8498552'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8498552','Миколаю, Миколаю!','Миколаю, Миколаю,
Дітки всі Тебе чекають!
Ти до нас скоріш прийди,
Подарунки принеси!
Ти до нас скоріш прийди,
Подарунки принеси!

Миколаю, Миколаю,
Тебе радо зустрічаєм!
Чемні були ми весь час,
Ти приходь скоріш до нас!
Чемні були ми весь час,
Ти приходь скоріш до нас!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8498552_l1','pisniua_8498552','YouTube','https://www.youtube.com/watch?v=-n4TAdm-M8o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8498552_l2','pisniua_8498552','YouTube','https://www.youtube.com/watch?v=Zx98iUosLKo','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8498116';
DELETE FROM song_versions WHERE song_id = 'pisniua_8498116';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8498116';
DELETE FROM songs WHERE id = 'pisniua_8498116';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8498116','Миколая свято','(З небес до нас прибув)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'З небес до нас прибув
У гості Миколай!
Ми просимо тебе:
Нам ніжки зігрівай!

Приспів:
Ставай із нами в коло |
І поведем танок,      |
Бо Миколая свято -    |
Найкраще для діток!   | (2)

Даруночки приніс
Для діток Миколай!
Ми просимо тебе:
Із нами заспівай!

Приспів.

Наш любий Миколай,
Ми молимось тобі,
Щоб мир уже настав
На всій нашій землі!
Щоб стали діти в коло |
І повели танок,       |
Бо Миколая свято -    |
Найкраще для діток!   | (2)','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8498116'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8498116','Миколая свято','З небес до нас прибув
У гості Миколай!
Ми просимо тебе:
Нам ніжки зігрівай!

Приспів:
Ставай із нами в коло |
І поведем танок,      |
Бо Миколая свято -    |
Найкраще для діток!   | (2)

Даруночки приніс
Для діток Миколай!
Ми просимо тебе:
Із нами заспівай!

Приспів.

Наш любий Миколай,
Ми молимось тобі,
Щоб мир уже настав
На всій нашій землі!
Щоб стали діти в коло |
І повели танок,       |
Бо Миколая свято -    |
Найкраще для діток!   | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8498116_l1','pisniua_8498116','YouTube','https://www.youtube.com/watch?v=vLXfQ2JGX-Y','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8498116_l2','pisniua_8498116','YouTube','https://www.youtube.com/watch?v=HIvn8E4Clug','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8499910';
DELETE FROM song_versions WHERE song_id = 'pisniua_8499910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8499910';
DELETE FROM songs WHERE id = 'pisniua_8499910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8499910','У ніч святу Різдва','Музика: Мирон Береза Слова: Тетяна Прозорова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Чарівною стежкою в сніжний мотив
Під янгольський спів-торжество
З криштальною мрією - диво із див -
До серця заходить Різдво!
Коли над землею панує Різдво,
Прямує до кожного в дім, -
Наповнює світлом цей світ і добром,
Дива відбуваються в нім!

Приспів:
Вірю, в ніч святу Різдва
Відбуваються дива!
Бо Ісус рождається,
Зорі усміхаються!
А у ніч святу Різдва
Відбуваються дива -
Небо відкривається,
Світ благословляється!

Чи зіроньки сяйво, чи сміх янголят,
Чи полум''я тепле очей?
І хочеться знову життя розпочать
З різдвяних таємних ночей!
Душа просвітліла й радіє ізнов,
Вся разом зібралась рідня!
Христос народився! Дарує любов!
І будьте щасливі щодня!

Приспів.

Вірю, в ніч святу Різдва
Відбуваються дива!
Бо Ісус рождається,
Зорі усміхаються!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8499910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8499910','У ніч святу Різдва','Чарівною стежкою в сніжний мотив
Під янгольський спів-торжество
З криштальною мрією - диво із див -
До серця заходить Різдво!
Коли над землею панує Різдво,
Прямує до кожного в дім, -
Наповнює світлом цей світ і добром,
Дива відбуваються в нім!

Приспів:
Вірю, в ніч святу Різдва
Відбуваються дива!
Бо Ісус рождається,
Зорі усміхаються!
А у ніч святу Різдва
Відбуваються дива -
Небо відкривається,
Світ благословляється!

Чи зіроньки сяйво, чи сміх янголят,
Чи полум''я тепле очей?
І хочеться знову життя розпочать
З різдвяних таємних ночей!
Душа просвітліла й радіє ізнов,
Вся разом зібралась рідня!
Христос народився! Дарує любов!
І будьте щасливі щодня!

Приспів.

Вірю, в ніч святу Різдва
Відбуваються дива!
Бо Ісус рождається,
Зорі усміхаються!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8499910_l1','pisniua_8499910','YouTube','https://www.youtube.com/watch?v=2opQX9B1U3Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_850070';
DELETE FROM song_versions WHERE song_id = 'pisniua_850070';
DELETE FROM songs_fts WHERE song_id = 'pisniua_850070';
DELETE FROM songs WHERE id = 'pisniua_850070';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_850070','Каштани','Музика: Євген Шантир Слова: Євген Шантир. Виконує: Євген Шантир','uk','ukraine_1991',NULL,NULL,'1. Авторське подання',NULL,'Каштани на землю летять,
Дарують палкі почуття,
Зриває з дерев листопад
Пожовклі сторінки життя,
Де юність була й солов''ї
Осінні гуляють дощі,
Як спогади різні мої,
Каштани лежать на землі.

Каштани на землю летять,
Неначе казкові зірки
Вони загадково горять
Багаттям надій у ріки,
Нехай непомітно роки
Сховалися в жовті листки,
Як в небі мої журавлі,
Каштани лежать на землі.

Каштани на землю летять,
Навколо шумить карнавал,
Природа бажає справлять
Осінній святковий свій бал,
Тут сонце, вітри і дощі,
Тумани і в квітах шляхи,
Як мрії здійсненні мої,
Каштани лежать на землі','[''pisni.org.ua'', ''cat:all-ukraine'', ''cat:bardivski'', ''cat:romansy'', ''Загальноукраїнські пісні'', ''Бардівські пісні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_850070'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_850070','Каштани','Каштани на землю летять,
Дарують палкі почуття,
Зриває з дерев листопад
Пожовклі сторінки життя,
Де юність була й солов''ї
Осінні гуляють дощі,
Як спогади різні мої,
Каштани лежать на землі.

Каштани на землю летять,
Неначе казкові зірки
Вони загадково горять
Багаттям надій у ріки,
Нехай непомітно роки
Сховалися в жовті листки,
Як в небі мої журавлі,
Каштани лежать на землі.

Каштани на землю летять,
Навколо шумить карнавал,
Природа бажає справлять
Осінній святковий свій бал,
Тут сонце, вітри і дощі,
Тумани і в квітах шляхи,
Як мрії здійсненні мої,
Каштани лежать на землі');
DELETE FROM song_links WHERE song_id = 'pisniua_8496013';
DELETE FROM song_versions WHERE song_id = 'pisniua_8496013';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8496013';
DELETE FROM songs WHERE id = 'pisniua_8496013';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8496013','Києву з любов''ю','Музика: Олександр Юров Слова: Олександр Юров. Виконує: Маркіян Свято','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'З часів славетних Кия, Щека і Хорива
Та сестри їх Либідь, мов з квіту і роси
На кручах над Дніпром,
Мов птах розправив крила,
Постало наше місто на віки.
І скільки б орд чужинців
Коли б тут не з''являлось,
Їх всіх зметали хвилі Славутича-ріки,
Твоє життя і спокій навік оберігають
Князь Володимир і Архангел Михаїл!

Приспів:
О, Києве, з любов''ю промовляєм,
Софії сняться золотії куполи.
О, Києве, тебе оберігають
Твої Святі й сучасники твої!
О, Києве, і гомін твій, Хрещатик,
І Бессарабка та Андріївський узвіз,
Поділ і Гідропарк і Київське "Динамо",
Поділ і Гідропарк і Київське "Динамо" -
Назавжди в серці й пам''яті моїй!

Ми завжди йшли вперед
До світла та свободи!
Кияни з віку в вік - були стійкі бійці!
До злагоди між нас-пройшли шляхи-дороги,
На берегти Дніпра ми йшли завжди!
Бувало всяке тут: і повені й пожежі,
Проте, незламний дух і віра нас вели!
Друзям і землякам раділи ми без межі,
Далеко за Дніпро пісні наші пливли!

Приспів.

Завжди велося так аж з Ольги й Ярослава,
Що мудрістю й відвагою наш град не зубожів!
Живи в віках, наш Київ, хай мирним буде небо
Над схилами Дніпра й на всій Землі!

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8496013'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8496013','Києву з любов''ю','З часів славетних Кия, Щека і Хорива
Та сестри їх Либідь, мов з квіту і роси
На кручах над Дніпром,
Мов птах розправив крила,
Постало наше місто на віки.
І скільки б орд чужинців
Коли б тут не з''являлось,
Їх всіх зметали хвилі Славутича-ріки,
Твоє життя і спокій навік оберігають
Князь Володимир і Архангел Михаїл!

Приспів:
О, Києве, з любов''ю промовляєм,
Софії сняться золотії куполи.
О, Києве, тебе оберігають
Твої Святі й сучасники твої!
О, Києве, і гомін твій, Хрещатик,
І Бессарабка та Андріївський узвіз,
Поділ і Гідропарк і Київське "Динамо",
Поділ і Гідропарк і Київське "Динамо" -
Назавжди в серці й пам''яті моїй!

Ми завжди йшли вперед
До світла та свободи!
Кияни з віку в вік - були стійкі бійці!
До злагоди між нас-пройшли шляхи-дороги,
На берегти Дніпра ми йшли завжди!
Бувало всяке тут: і повені й пожежі,
Проте, незламний дух і віра нас вели!
Друзям і землякам раділи ми без межі,
Далеко за Дніпро пісні наші пливли!

Приспів.

Завжди велося так аж з Ольги й Ярослава,
Що мудрістю й відвагою наш град не зубожів!
Живи в віках, наш Київ, хай мирним буде небо
Над схилами Дніпра й на всій Землі!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_849909';
DELETE FROM song_versions WHERE song_id = 'pisniua_849909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_849909';
DELETE FROM songs WHERE id = 'pisniua_849909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_849909','Стрілецький романс','(Колись, дівчино мила). Музика: Лев Лепкий Слова: Лев Лепкий','uk','ukr_ssr_1919_1991',NULL,'1990','1. Українські популярні пісні-романси. — Львів, Сполом, 2002. — 94 с. 2. Повік не зів''яне. Стрілецькі пісні Михайла Гайворонського. Упор. В. Подуфалий. Тернопіль, 1990.','* можливо, "сподівання"? ** за джерелом 2: серця','Колись, дівчино мила,
А був це чудний час,
Як ще любов носила
Десь попід небом нас,
Ми мріяли, зітхали,
Кохання присягали,
А соловейко тьохкав,
Все тьох, тьох, тьох.

І був би я дівчину
Вірненько так кохав,
І був би я єдину
До груди пригортав, **
І був би соловейко,
І був би малесенький
Наш тьохкав на калині
Все тьох, тьох, тьох.

Та десь війна взялася
І ось який кінець, —
Дівчина — віддалася,
Я — Січовий Стрілець.
Таке то в нас кохання,
Закляття, сповідання* —
Що в серденьку остало
Лиш: ох-ох-ох!','[''pisni.org.ua'', ''cat:halycki'', ''cat:rekrutski'', ''cat:strilecki'', ''Пісні з Галичини'', ''Рекрутські пісні'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_849909'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_849909','Стрілецький романс','Колись, дівчино мила,
А був це чудний час,
Як ще любов носила
Десь попід небом нас,
Ми мріяли, зітхали,
Кохання присягали,
А соловейко тьохкав,
Все тьох, тьох, тьох.

І був би я дівчину
Вірненько так кохав,
І був би я єдину
До груди пригортав, **
І був би соловейко,
І був би малесенький
Наш тьохкав на калині
Все тьох, тьох, тьох.

Та десь війна взялася
І ось який кінець, —
Дівчина — віддалася,
Я — Січовий Стрілець.
Таке то в нас кохання,
Закляття, сповідання* —
Що в серденьку остало
Лиш: ох-ох-ох!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_849909_l1','pisniua_849909','YouTube','https://www.youtube.com/watch?v=ATftTcEwQx8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_849909_l2','pisniua_849909','YouTube','https://www.youtube.com/watch?v=DoSu5FkgynY','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_849909_l3','pisniua_849909','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_8503807';
DELETE FROM song_versions WHERE song_id = 'pisniua_8503807';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8503807';
DELETE FROM songs WHERE id = 'pisniua_8503807';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8503807','Одне велике серце','Музика: Ольга Бажана Слова: Ольга Бажана. Виконує: Наталія Могилевська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Як один день, як одна ніч
Тисячі холодних днів минули...
Кожен день із страхом віч-на-віч,
Та ми жодної хвилини не забули!..
Як одна мить, спалах - і нема,
Все, що було "до", більше вже не дійсно...
Тисячі холодних днів зима,
Я тобі кажу: Дівчинко, не бійся!..

Приспів:
В нас одне велике серце!
В нас одна велика мрія!
Жили, кохали, ми все долали,
І кожен день перемагали!
В нас одне велике серце!
В нас одне на всіх бажання:
Разом у щасті! Разом в прощанні!
Слава Героям! Хвилина мовчання...

Як один день, як одна ніч
Але дуже довга, темна і жахлива...
Ми стояли разом пліч-о-пліч,
Тисячі холодних днів
Нас так змінили...
Як один сон без пробудження,
Знаю, він скінчиться, -
Кожен з нас чекає!
Тисячі холодних днів земля
Разом з нами зло перемагає!..

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8503807'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8503807','Одне велике серце','Як один день, як одна ніч
Тисячі холодних днів минули...
Кожен день із страхом віч-на-віч,
Та ми жодної хвилини не забули!..
Як одна мить, спалах - і нема,
Все, що було "до", більше вже не дійсно...
Тисячі холодних днів зима,
Я тобі кажу: Дівчинко, не бійся!..

Приспів:
В нас одне велике серце!
В нас одна велика мрія!
Жили, кохали, ми все долали,
І кожен день перемагали!
В нас одне велике серце!
В нас одне на всіх бажання:
Разом у щасті! Разом в прощанні!
Слава Героям! Хвилина мовчання...

Як один день, як одна ніч
Але дуже довга, темна і жахлива...
Ми стояли разом пліч-о-пліч,
Тисячі холодних днів
Нас так змінили...
Як один сон без пробудження,
Знаю, він скінчиться, -
Кожен з нас чекає!
Тисячі холодних днів земля
Разом з нами зло перемагає!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8503807_l1','pisniua_8503807','YouTube','https://www.youtube.com/watch?v=jAE4eeYqUU8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8498858';
DELETE FROM song_versions WHERE song_id = 'pisniua_8498858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8498858';
DELETE FROM songs WHERE id = 'pisniua_8498858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8498858','У нас серця дитячі','Музика: Олеся Май Слова: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сонячну радість зламали тривоги,
Сонце закрили ракети гучні,
Наші батьки на стражденних
Дорогах стримують подих війни...
Молимось Богу і віримо в диво,
І в ЗСУ, що неначе стіна,
Прийде весна і ми будем щасливі,
Бо закінчиться війна!

Приспів:
У нас серця дитячі, відкриті і гарячі,
Ми рідну Україну закриєм від біди!
Ми станемо стіною, добром перед пітьмою,
Й ворожа чорна хмара розтане назавжди!

Вам не здолати козацького духу,
Ворог загине, підступний і злий!
Зробимо все, щоби наші онуки
В вільній країні жили!
Молимось Богу і віримо в диво,
І в ЗСУ, що неначе стіна,
Прийде весна і ми будем щасливі,
Бо закінчиться війна!

Приспів. (2)','[''pisni.org.ua'', ''cat:ato'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8498858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8498858','У нас серця дитячі','Сонячну радість зламали тривоги,
Сонце закрили ракети гучні,
Наші батьки на стражденних
Дорогах стримують подих війни...
Молимось Богу і віримо в диво,
І в ЗСУ, що неначе стіна,
Прийде весна і ми будем щасливі,
Бо закінчиться війна!

Приспів:
У нас серця дитячі, відкриті і гарячі,
Ми рідну Україну закриєм від біди!
Ми станемо стіною, добром перед пітьмою,
Й ворожа чорна хмара розтане назавжди!

Вам не здолати козацького духу,
Ворог загине, підступний і злий!
Зробимо все, щоби наші онуки
В вільній країні жили!
Молимось Богу і віримо в диво,
І в ЗСУ, що неначе стіна,
Прийде весна і ми будем щасливі,
Бо закінчиться війна!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8498858_l1','pisniua_8498858','YouTube','https://www.youtube.com/watch?v=HK0F1v_QSFs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8501409';
DELETE FROM song_versions WHERE song_id = 'pisniua_8501409';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8501409';
DELETE FROM songs WHERE id = 'pisniua_8501409';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8501409','Вогники','Музика: Іван Марунич, Олександр Положинський Слова: Олександр Положинський, Іван Марунич','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вогники заполонили місто,
З неба сніжинки тихо кружляють,
Ти приїдеш додому?
Та приїду ж, звісно,
Бо на Різдво всіх удома чекають!..

Приспів:
Наше нове Різдво нас приводить до тями,
Всіх огортає у теплі обійми,
Світло дарує, мов усмішка мами,
Світло, якого ніхто не відійме,
Світло, яке ніщо не замінить!..

Вогники - маяки в океані,
Хвилі підступні, вітри рокітливі,
Наші шляхи нові і незнані,
Ми прийдемо туди, де ми будем щасливі!..

Приспів.

Вогники засяяли в небі,
Мов погляди тих, хто сьогодні не з нами,
Ясні й молоді, наче квіти травневі,
Нові вартові небесної брами...

Наше нове Різдво нас приводить до тями,
Всіх огортає у теплі обійми,
Світло дарує, мов усмішка мами,
Світло, якого ніхто не відійме!
Наше нове Різдво у великій родині
Гріє серця, як дорога додому!
Це початок життя - і ми в ньому єдині,
Й світла цього не здолати нікому,
Світло, яке ніщо не замінить!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8501409'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8501409','Вогники','Вогники заполонили місто,
З неба сніжинки тихо кружляють,
Ти приїдеш додому?
Та приїду ж, звісно,
Бо на Різдво всіх удома чекають!..

Приспів:
Наше нове Різдво нас приводить до тями,
Всіх огортає у теплі обійми,
Світло дарує, мов усмішка мами,
Світло, якого ніхто не відійме,
Світло, яке ніщо не замінить!..

Вогники - маяки в океані,
Хвилі підступні, вітри рокітливі,
Наші шляхи нові і незнані,
Ми прийдемо туди, де ми будем щасливі!..

Приспів.

Вогники засяяли в небі,
Мов погляди тих, хто сьогодні не з нами,
Ясні й молоді, наче квіти травневі,
Нові вартові небесної брами...

Наше нове Різдво нас приводить до тями,
Всіх огортає у теплі обійми,
Світло дарує, мов усмішка мами,
Світло, якого ніхто не відійме!
Наше нове Різдво у великій родині
Гріє серця, як дорога додому!
Це початок життя - і ми в ньому єдині,
Й світла цього не здолати нікому,
Світло, яке ніщо не замінить!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8501409_l1','pisniua_8501409','YouTube','https://www.youtube.com/watch?v=-5RS47OVE8c','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_85052';
DELETE FROM song_versions WHERE song_id = 'pisniua_85052';
DELETE FROM songs_fts WHERE song_id = 'pisniua_85052';
DELETE FROM songs WHERE id = 'pisniua_85052';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_85052','В Вифлеємі тайна',NULL,'uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'В Вифлеємі тайна сталась превелика,
Бо там народився Предвічний Владика
Хвалу Богу даймо, весело співаймо:
Слава во вишніх Богу!"

Марія Пречиста Царя нам повила,
В вертепі на сіні, в яслах положила.
Там пастирі грають,
Ангели співають:
"Слава во вишніх Богу!"

Всі небесні Сили Христа прославили
І пастирям в полі радість цю звістили,
Тому всі утішно
Грають Спасу пісню:
"Слава во вишніх Богу!"

Дари зі собою всі приносили
Вишньому Цареві в яслах положили,
Втішно споглядають
І разом співають:
"Слава во вишніх Богу!"

Три царі з дарами зі сходу прибули,
Весело, смиренно Христа привітали.
Дари Му приносять,
Піснь нову голосять:
"Слава во вишніх Богу!"

І ми разом нині Царя привітаймо:
Предвічного Бога о ласку благаймо,
В мирі проживати
На віки співати:
"Слава во вишніх Богу!"','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_85052'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_85052','В Вифлеємі тайна','В Вифлеємі тайна сталась превелика,
Бо там народився Предвічний Владика
Хвалу Богу даймо, весело співаймо:
Слава во вишніх Богу!"

Марія Пречиста Царя нам повила,
В вертепі на сіні, в яслах положила.
Там пастирі грають,
Ангели співають:
"Слава во вишніх Богу!"

Всі небесні Сили Христа прославили
І пастирям в полі радість цю звістили,
Тому всі утішно
Грають Спасу пісню:
"Слава во вишніх Богу!"

Дари зі собою всі приносили
Вишньому Цареві в яслах положили,
Втішно споглядають
І разом співають:
"Слава во вишніх Богу!"

Три царі з дарами зі сходу прибули,
Весело, смиренно Христа привітали.
Дари Му приносять,
Піснь нову голосять:
"Слава во вишніх Богу!"

І ми разом нині Царя привітаймо:
Предвічного Бога о ласку благаймо,
В мирі проживати
На віки співати:
"Слава во вишніх Богу!"');
DELETE FROM song_links WHERE song_id = 'pisniua_8501705';
DELETE FROM song_versions WHERE song_id = 'pisniua_8501705';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8501705';
DELETE FROM songs WHERE id = 'pisniua_8501705';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8501705','Новий рік','Музика: Олексій Діброва Слова: Юлія Діброва, Вадим Мичковський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ало, мала! Ти вдома? Їду!
Давай, бігом дзвони сусіду,
Бо Новий рік - веселе свято,
Будемо ялинку прикрашати!
Я такий рум''яний вже на старті,
З вогником бенгальським на азарті,
Друзів запросив так веселіше,
Накривай столи давай хутчіше!

Приспів:
Новий рік! Будем танцювати!
Новий рік! Jіngle Bells співати!
Новий рік! Забудь про всі проблеми!
Все окей! Все буде офігенно!
Новий рік зустрінемо красиво!
Новий рік подарує диво!
Новий рік - чарівна хвилина!
Все ок! Все буде Україна!

Зроби, мала, красиве селфі -
Як ми їмо смачні десерти.
Нехай пошириться Тік-Током,
Як ми вітаєм з Новим роком!
Там за вікном летять сніжинки,
А дома пахнуть мандаринки!
До мрії йдемо крок за кроком,
Давай вітати З Новим роком!

Приспів.

Наш президент сказав вітання,
Одне на всіх у нас бажання:
Добра та миру всій країні!
Ех, Так і буде! Слава Україні!
З Новим роком! З Новим роком!

Приспів.

Все ок! Все буде Україна!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8501705'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8501705','Новий рік','Ало, мала! Ти вдома? Їду!
Давай, бігом дзвони сусіду,
Бо Новий рік - веселе свято,
Будемо ялинку прикрашати!
Я такий рум''яний вже на старті,
З вогником бенгальським на азарті,
Друзів запросив так веселіше,
Накривай столи давай хутчіше!

Приспів:
Новий рік! Будем танцювати!
Новий рік! Jіngle Bells співати!
Новий рік! Забудь про всі проблеми!
Все окей! Все буде офігенно!
Новий рік зустрінемо красиво!
Новий рік подарує диво!
Новий рік - чарівна хвилина!
Все ок! Все буде Україна!

Зроби, мала, красиве селфі -
Як ми їмо смачні десерти.
Нехай пошириться Тік-Током,
Як ми вітаєм з Новим роком!
Там за вікном летять сніжинки,
А дома пахнуть мандаринки!
До мрії йдемо крок за кроком,
Давай вітати З Новим роком!

Приспів.

Наш президент сказав вітання,
Одне на всіх у нас бажання:
Добра та миру всій країні!
Ех, Так і буде! Слава Україні!
З Новим роком! З Новим роком!

Приспів.

Все ок! Все буде Україна!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8501705_l1','pisniua_8501705','YouTube','https://www.youtube.com/watch?v=hz9gaKWnxuA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_850501';
DELETE FROM song_versions WHERE song_id = 'pisniua_850501';
DELETE FROM songs_fts WHERE song_id = 'pisniua_850501';
DELETE FROM songs WHERE id = 'pisniua_850501';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_850501','Пісня Франчески','Музика: Олександр Білаш Слова: Дмитро Павличко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Мала я човен і море,
Мала коханого я.
Думала я, що не згасне
Зіронька ясна моя.
Сяяла зіронька мила,
Раптом погасла вона.
Чом же навіки з коханим
Нас розлучила війна?

Приспів:
Чайкою в небі любов моя літає,
Милого в світі любов моя шукає.
Ні на хвилиноньку крил не склада
Скривджена тяжко душа молода.

Запанувала неправда,
Зрада в моєму краю -
Топче ворожа навала
Землю чудову мою.
Човен, і море, і волю
В мене чужинці взяли.
Тільки біленької чайки
Вбити вони не змогли.

Приспів.

Мужній юнак з України
Бився за волю мою.
Нині між вами, сеньйори,
Вбивцю його пізнаю.
Вже крізь тумани для мене
Зіронька не засія,
Тільки живою навіки
Чаєнька буде моя!

Приспів.','[''pisni.org.ua'', ''cat:films'', ''Українські пісні в кінофільмах'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_850501'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_850501','Пісня Франчески','Мала я човен і море,
Мала коханого я.
Думала я, що не згасне
Зіронька ясна моя.
Сяяла зіронька мила,
Раптом погасла вона.
Чом же навіки з коханим
Нас розлучила війна?

Приспів:
Чайкою в небі любов моя літає,
Милого в світі любов моя шукає.
Ні на хвилиноньку крил не склада
Скривджена тяжко душа молода.

Запанувала неправда,
Зрада в моєму краю -
Топче ворожа навала
Землю чудову мою.
Човен, і море, і волю
В мене чужинці взяли.
Тільки біленької чайки
Вбити вони не змогли.

Приспів.

Мужній юнак з України
Бився за волю мою.
Нині між вами, сеньйори,
Вбивцю його пізнаю.
Вже крізь тумани для мене
Зіронька не засія,
Тільки живою навіки
Чаєнька буде моя!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_8507103';
DELETE FROM song_versions WHERE song_id = 'pisniua_8507103';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8507103';
DELETE FROM songs WHERE id = 'pisniua_8507103';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8507103','Яскраві моменти','Музика: Вадим Мичковський Слова: Вадим Мичковський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Є такі моменти в житті,
Коли ти в моменті дуже щасливий,
І поруч з тобою люди твої
Життям перевірені, не фальшиві!
Нові країни, нові місця,
І я тебе тримаю за руку,
Я хочу з тобою прожити до ста,
І щоб наш альбом дивились онуки!

Приспів:
Я хочу пережити ще раз ці моменти,
Яскраві моменти - життя компліменти!
Моменти в які ми з тобою щасливі!
А інше усе, нам було неважливе...
О-о! О-о! О-о! Не важливе...
О-о! О-о! О-о! Яскраві моменти!..

Ти народила щастя маленьке,
Садочок, школа і вже випускний...
Час пролітає, батьки постаріли,
І ти молодий, але трошки сивий...
Разом в Карпати, разом по світу,
Або просто на кухні п''ємо вінішко!
Ми разом щасливі, вже пів життя,
Але мені мало, я хочу ще трішки!

Приспів.

Речитатив:
Життя це мить, яка минає швидко,
Не встигнеш обернутись,
Як старість вже близько.
Проживи цю мить яскраво,
Як останній вечір!
Збирай безцінні спогади,
А не брендові речі!

Приспів.','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8507103'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8507103','Яскраві моменти','Є такі моменти в житті,
Коли ти в моменті дуже щасливий,
І поруч з тобою люди твої
Життям перевірені, не фальшиві!
Нові країни, нові місця,
І я тебе тримаю за руку,
Я хочу з тобою прожити до ста,
І щоб наш альбом дивились онуки!

Приспів:
Я хочу пережити ще раз ці моменти,
Яскраві моменти - життя компліменти!
Моменти в які ми з тобою щасливі!
А інше усе, нам було неважливе...
О-о! О-о! О-о! Не важливе...
О-о! О-о! О-о! Яскраві моменти!..

Ти народила щастя маленьке,
Садочок, школа і вже випускний...
Час пролітає, батьки постаріли,
І ти молодий, але трошки сивий...
Разом в Карпати, разом по світу,
Або просто на кухні п''ємо вінішко!
Ми разом щасливі, вже пів життя,
Але мені мало, я хочу ще трішки!

Приспів.

Речитатив:
Життя це мить, яка минає швидко,
Не встигнеш обернутись,
Як старість вже близько.
Проживи цю мить яскраво,
Як останній вечір!
Збирай безцінні спогади,
А не брендові речі!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8507103_l1','pisniua_8507103','YouTube','https://www.youtube.com/watch?v=mZNM9z7Xc-c','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8508603';
DELETE FROM song_versions WHERE song_id = 'pisniua_8508603';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8508603';
DELETE FROM songs WHERE id = 'pisniua_8508603';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8508603','Перемога','Музика: Наталія Май Слова: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Перемога!..
Стій! Зупинися! Навкруг подивися!
Це рідна земля, єдина твоя!
Тут ми зростали, сорочки вдягали,
І, наче у снах, була тут весна...
Ми нескорені, бо в нас козацька кров!
Серце зболене, та мир настане знов!..

Приспів:
Як зацвітуть сади, не буде вже біди,
І враз закінчиться тривога,
Як зацвітуть сади, до мене прийдеш ти,
І скажеш тихо: Перемога!

Перемога! Перемога! Перемога!

Стій! Зупинися! Навкруг подивися!
Це спів солов''я, пшеничні поля!
Тут із колиски пісні материнські,
Стежки в споришах, вкраїнська душа!
Ми нескорені, бо в нас козацька кров!
Серце зболене, та мир настане знов!..

Приспів.

Перемога! Перемога! Перемога!','[''pisni.org.ua'', ''cat:viyskovi'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8508603'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8508603','Перемога','Перемога!..
Стій! Зупинися! Навкруг подивися!
Це рідна земля, єдина твоя!
Тут ми зростали, сорочки вдягали,
І, наче у снах, була тут весна...
Ми нескорені, бо в нас козацька кров!
Серце зболене, та мир настане знов!..

Приспів:
Як зацвітуть сади, не буде вже біди,
І враз закінчиться тривога,
Як зацвітуть сади, до мене прийдеш ти,
І скажеш тихо: Перемога!

Перемога! Перемога! Перемога!

Стій! Зупинися! Навкруг подивися!
Це спів солов''я, пшеничні поля!
Тут із колиски пісні материнські,
Стежки в споришах, вкраїнська душа!
Ми нескорені, бо в нас козацька кров!
Серце зболене, та мир настане знов!..

Приспів.

Перемога! Перемога! Перемога!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8508603_l1','pisniua_8508603','YouTube','https://www.youtube.com/watch?v=7_CpZofp_V4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8501714';
DELETE FROM song_versions WHERE song_id = 'pisniua_8501714';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8501714';
DELETE FROM songs WHERE id = 'pisniua_8501714';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8501714','Люди-титани','Музика: Kozak System Слова: Kozak System. Виконує: Kozak System','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
А ми ще, а ми ще повоюємо,
А ми ще, а ми ще потанцюємо!..
Ти металом зціли наші рани,
Бо ми - люди, ми - люди-титани!

Я колись запитаю у Тебе,
Ти ж керуєш усім там на небі:
Чому нас не покликав з собою?..
Що невже не сплатили ми долю?..
Що невже Ти вважаєш так треба?..
Ми ж доволі здіймали до Тебе!..
Вже трьохсота Твоя Мона Ліза!..
Та й до біса вона! Та й до біса!

Приспів. (2)

Я одне про що попрошу Тебе:
Хай всі наші не будуть забутими!
А ми тут, поки дихаєм рівно,
Все стабільно. Плюс. Плюс.
Все стабільно...

Приспів. (2)','[''pisni.org.ua'', ''cat:christian'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні на християнську тематику'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8501714'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8501714','Люди-титани','Приспів:
А ми ще, а ми ще повоюємо,
А ми ще, а ми ще потанцюємо!..
Ти металом зціли наші рани,
Бо ми - люди, ми - люди-титани!

Я колись запитаю у Тебе,
Ти ж керуєш усім там на небі:
Чому нас не покликав з собою?..
Що невже не сплатили ми долю?..
Що невже Ти вважаєш так треба?..
Ми ж доволі здіймали до Тебе!..
Вже трьохсота Твоя Мона Ліза!..
Та й до біса вона! Та й до біса!

Приспів. (2)

Я одне про що попрошу Тебе:
Хай всі наші не будуть забутими!
А ми тут, поки дихаєм рівно,
Все стабільно. Плюс. Плюс.
Все стабільно...

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8501714_l1','pisniua_8501714','YouTube','https://www.youtube.com/watch?v=1N4NXSFTzZ4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8510705';
DELETE FROM song_versions WHERE song_id = 'pisniua_8510705';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8510705';
DELETE FROM songs WHERE id = 'pisniua_8510705';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8510705','Дитинство','Музика: Анна Добриднєва Слова: Анна Добриднєва','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Де хилиться старенький ліхтар,
Будинок біля школи і парк,
За вікнами спокійна весна.
Калюжами до друзів ішов,
Просила мама знову і знов:
Додому повернись до темна!..

Приспів:
Тільки де ж тепер зустрітись?..
Дороги не знайти у дитинство...
Я дівчатам по сусідству
Відправила листи у дитинство...
У дитинство...

Ну хто би так подумати міг,
Що хлопці у моєму дворі
Так будуть захищати мій дім!
Я знаю, що побачу не всіх,
Коли розтане той клятий сніг,
Не бійся мама, то лише грім!

Приспів.

Куди б не розкидало життя,
В нові будинки чи в укриття,
Вночі насниться кожному дім!
Мене такою запам''ятай,
На відстані за руку тримай!
Я подумки тобі відповім...

Приспів.

У дитинство... У дитинство... | (4)','[''pisni.org.ua'', ''cat:ato'', ''cat:pro-ditey'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні про любов до дітей'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8510705'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8510705','Дитинство','Де хилиться старенький ліхтар,
Будинок біля школи і парк,
За вікнами спокійна весна.
Калюжами до друзів ішов,
Просила мама знову і знов:
Додому повернись до темна!..

Приспів:
Тільки де ж тепер зустрітись?..
Дороги не знайти у дитинство...
Я дівчатам по сусідству
Відправила листи у дитинство...
У дитинство...

Ну хто би так подумати міг,
Що хлопці у моєму дворі
Так будуть захищати мій дім!
Я знаю, що побачу не всіх,
Коли розтане той клятий сніг,
Не бійся мама, то лише грім!

Приспів.

Куди б не розкидало життя,
В нові будинки чи в укриття,
Вночі насниться кожному дім!
Мене такою запам''ятай,
На відстані за руку тримай!
Я подумки тобі відповім...

Приспів.

У дитинство... У дитинство... | (4)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8510705_l1','pisniua_8510705','YouTube','https://www.youtube.com/watch?v=lOrvUXg8Un8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8510256';
DELETE FROM song_versions WHERE song_id = 'pisniua_8510256';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8510256';
DELETE FROM songs WHERE id = 'pisniua_8510256';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8510256','Христос живий','Музика: Tanya Navrotski Слова: Mariya Zvirid','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Світанок той приніс надію,
Минула ніч і день настав!
Із першим променем неділі
Христос воскрес! Смерть переміг!
Із мертвих встав!

Приспів:
Христос живий і жива надія!
Христос воскрес! Воскресли ми!
Співаю я, душа радіє,
Бо у Христі життя моє тепер нове!

В той день звершив Він перемогу,
І ночі більш немає вже!
Навіки зникли сум й тривога,
І Ангел білий світлу вість
Жінкам несе!

Приспів.

Яка чудова вістка лине до небес:
Христос воскрес!
Христос воістину воскрес!

Приспів.','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8510256'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8510256','Христос живий','Світанок той приніс надію,
Минула ніч і день настав!
Із першим променем неділі
Христос воскрес! Смерть переміг!
Із мертвих встав!

Приспів:
Христос живий і жива надія!
Христос воскрес! Воскресли ми!
Співаю я, душа радіє,
Бо у Христі життя моє тепер нове!

В той день звершив Він перемогу,
І ночі більш немає вже!
Навіки зникли сум й тривога,
І Ангел білий світлу вість
Жінкам несе!

Приспів.

Яка чудова вістка лине до небес:
Христос воскрес!
Христос воістину воскрес!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8510256_l1','pisniua_8510256','YouTube','https://www.youtube.com/watch?v=yiYNO9fNS8o','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8512979';
DELETE FROM song_versions WHERE song_id = 'pisniua_8512979';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8512979';
DELETE FROM songs WHERE id = 'pisniua_8512979';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8512979','Пам''ятаймо Героїв!','(Мамо, мамо, не плачте). Музика: Михайло Брунський Слова: Вадим Крищенко. Виконує: Михайло Брунський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вража куля шалена перебила крило,
Опустіте знамена, нахиліте чоло.
Впав у лютім двобої,
Щоб свій край не віддать,
Він упав, хоч герою лиш було
Двадцять п''ять...

Приспів:
Пам''ятаймо героїв,
Не забудьмо про всіх,
Хто за неньку Вкраїну
В лютій битві поліг!..
Хай всі бачуть, хай чує
Поклик наших завзять,
Як уміють Вкраїнці -
Жить, боротись, вмирать!..
Мамо, мамо, не плачте,
Хоч мовчать нема сил...
Небо схилене плаче
Біля свіжих могил...
Мамо, Вашого сина,
Що до кривди не звик,
Записала Вкраїна
В своє серце навік!..

Була мужність козацька,
Йшов грудьми на вогонь,
У бою під Слов''янськом
Стихло серце його...
Але воїн не падав,
Не точився назад,
З мертвих рук, як відплата,
Все строчив автомат!..

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:pro-ditey'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні про любов до дітей'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8512979'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8512979','Пам''ятаймо Героїв!','Вража куля шалена перебила крило,
Опустіте знамена, нахиліте чоло.
Впав у лютім двобої,
Щоб свій край не віддать,
Він упав, хоч герою лиш було
Двадцять п''ять...

Приспів:
Пам''ятаймо героїв,
Не забудьмо про всіх,
Хто за неньку Вкраїну
В лютій битві поліг!..
Хай всі бачуть, хай чує
Поклик наших завзять,
Як уміють Вкраїнці -
Жить, боротись, вмирать!..
Мамо, мамо, не плачте,
Хоч мовчать нема сил...
Небо схилене плаче
Біля свіжих могил...
Мамо, Вашого сина,
Що до кривди не звик,
Записала Вкраїна
В своє серце навік!..

Була мужність козацька,
Йшов грудьми на вогонь,
У бою під Слов''янськом
Стихло серце його...
Але воїн не падав,
Не точився назад,
З мертвих рук, як відплата,
Все строчив автомат!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8512979_l1','pisniua_8512979','YouTube','https://www.youtube.com/watch?v=6fD5mSemxaU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8512979_l2','pisniua_8512979','YouTube','https://www.youtube.com/watch?v=ZzWY8lHq7iM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_851415';
DELETE FROM song_versions WHERE song_id = 'pisniua_851415';
DELETE FROM songs_fts WHERE song_id = 'pisniua_851415';
DELETE FROM songs WHERE id = 'pisniua_851415';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_851415','Батьківська колискова','(Світять зорі неозорі). Музика: Едуард Драч Слова: Едуард Драч. Виконує: Едуард Драч, Едуард Драч','uk','ukraine_before_1917',NULL,NULL,'http://users.iptelecom.net.ua/~drachedw/','Акорди підібрано на слух за аудіо. Подано спрощено. Один із акордів: C7M [x 3 2 0 0 0] Підбір акордів: bohdanko (pisni.org.ua)','Em      C7M
Світять зорі неозорі,
А над ними - глибина,
Em           C7M
Десь за морем, синім морем
Мій синочок засина.
Мама його колисає,
Ніжки ковдрою вкрива,
Біля ліжечка сідає,
Тихо пісеньку співа.
Приспів (двічі):
C7M
Спи, мій котику маленький,
Спи, мій зайчику сіренький,
C7M
Через зіроньку ясну
Я бажаю тобі сну.
За горами, за морями
Я в далекій далині.
Хай розкаже тобі мама
Та й про татка в чужині.
Про далеку ту країну
Хай розмову поведе,
Намалює, як картину,
І у сон твій покладе...','[''pisni.org.ua'', ''cat:bardivski'', ''cat:kolyskovi'', ''Бардівські пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_851415'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_851415','Батьківська колискова','Em      C7M
Світять зорі неозорі,
А над ними - глибина,
Em           C7M
Десь за морем, синім морем
Мій синочок засина.
Мама його колисає,
Ніжки ковдрою вкрива,
Біля ліжечка сідає,
Тихо пісеньку співа.
Приспів (двічі):
C7M
Спи, мій котику маленький,
Спи, мій зайчику сіренький,
C7M
Через зіроньку ясну
Я бажаю тобі сну.
За горами, за морями
Я в далекій далині.
Хай розкаже тобі мама
Та й про татка в чужині.
Про далеку ту країну
Хай розмову поведе,
Намалює, як картину,
І у сон твій покладе...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_851415_l1','pisniua_851415','YouTube','https://www.youtube.com/watch?v=uB31ZbYtX5g','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8512205';
DELETE FROM song_versions WHERE song_id = 'pisniua_8512205';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8512205';
DELETE FROM songs WHERE id = 'pisniua_8512205';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8512205','Мамо','Музика: Денис Главацький Слова: Інна Главацька, Марія Кокіш-Гринник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У кожного в житті своя любов,
Та мамину любов не замінити!
Пригорнеш, мамо, ти своїм крилом,
Я вік тебе за це буду любити!
У світі завжди безліч є доріг,
Та всі вони до мами повертають!
У спогадах ступаю на поріг,
Де з радістю й любов''ю зустрічають!

Приспів:
Мамо! Мамо! Серце моє!
Твоя любов завжди зі мною!
Люба моя, рідна нене,
Ти відкрила світ для мене!
Мамо! Мамо! Рідна моя!
Хай буде вдячна тобі доля
За все, рідна моя мамо!

Хай Ангел охоронець береже,
Життєва стежка радістю розквітне!
Кохана, найрідніша, дорога,
Майбутнє твоє завжди буде світле!
А на обличчі рідному твоїм
Від радості усмішок милих, щирих!
Життя дарує теплих вечорів,
Ну а світанків сонячних, щасливих!

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8512205'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8512205','Мамо','У кожного в житті своя любов,
Та мамину любов не замінити!
Пригорнеш, мамо, ти своїм крилом,
Я вік тебе за це буду любити!
У світі завжди безліч є доріг,
Та всі вони до мами повертають!
У спогадах ступаю на поріг,
Де з радістю й любов''ю зустрічають!

Приспів:
Мамо! Мамо! Серце моє!
Твоя любов завжди зі мною!
Люба моя, рідна нене,
Ти відкрила світ для мене!
Мамо! Мамо! Рідна моя!
Хай буде вдячна тобі доля
За все, рідна моя мамо!

Хай Ангел охоронець береже,
Життєва стежка радістю розквітне!
Кохана, найрідніша, дорога,
Майбутнє твоє завжди буде світле!
А на обличчі рідному твоїм
Від радості усмішок милих, щирих!
Життя дарує теплих вечорів,
Ну а світанків сонячних, щасливих!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8512205_l1','pisniua_8512205','YouTube','https://www.youtube.com/watch?v=qCpuSdxt3YI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8512205_l2','pisniua_8512205','YouTube','https://www.youtube.com/watch?v=bAzons866Dg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8512205_l3','pisniua_8512205','YouTube','https://www.youtube.com/watch?v=PB9oRncC7NE','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_8506501';
DELETE FROM song_versions WHERE song_id = 'pisniua_8506501';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8506501';
DELETE FROM songs WHERE id = 'pisniua_8506501';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8506501','Люблю тебе','Музика: Сергій Заболотний Слова: Сергій Заболотний','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Приспів:
Люблю тебе!
Маниш мене, дурманиш,
Люблю тебе!
Серце моє ти раниш,
Люблю тебе - і ти це знаєш!
Люблю тебе!

Ця біль мине!
Думки я словами відганяю,
Ця біль мине!
Межі мого серця грають,
Ти довела мене до краю,
Ця біль мине...

Приспів.

Ти в кожнім слові моїм!..
Ти в кожній пісні моїй!..
Всі для тебе вони!..
Скажи тільки, що пам''ятаєш,
Що я люблю - і ти це знаєш!..

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8506501'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8506501','Люблю тебе','Приспів:
Люблю тебе!
Маниш мене, дурманиш,
Люблю тебе!
Серце моє ти раниш,
Люблю тебе - і ти це знаєш!
Люблю тебе!

Ця біль мине!
Думки я словами відганяю,
Ця біль мине!
Межі мого серця грають,
Ти довела мене до краю,
Ця біль мине...

Приспів.

Ти в кожнім слові моїм!..
Ти в кожній пісні моїй!..
Всі для тебе вони!..
Скажи тільки, що пам''ятаєш,
Що я люблю - і ти це знаєш!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8506501_l1','pisniua_8506501','YouTube','https://www.youtube.com/watch?v=g6rk-oZAOTA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8506501_l2','pisniua_8506501','YouTube','https://www.youtube.com/watch?v=Pt36zVmZPB4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_851256';
DELETE FROM song_versions WHERE song_id = 'pisniua_851256';
DELETE FROM songs_fts WHERE song_id = 'pisniua_851256';
DELETE FROM songs WHERE id = 'pisniua_851256';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_851256','Капітан',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'С        F          G       Em  AM
Цю пісню приніс нам старий вітруган,
В одному з далеких морів,
С    F          G     Em AM
Її наспівав молодий капітан,
В одному з далеких портів.

Співали її в морі і на землі
І час свій сповільнював біг
І той хто хоч раз міг почути її,
Забути ніколи не зміг

Коли корабель відправлявся в моря
Вітрила напнувши свої
Матросам здавалось що навіть земля
тихенько співала її

У морі їм шторм всі вітрила порвав
Нептун забирав моряків
Та навіть коли корабель потопав
Матроси співали її

Давно вже нема капітана. То й що?
Десь спить він в обіймах морів
Та іноді людям здавалося що
То море співало її','[''pisni.org.ua'', ''cat:plastovi'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_851256'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_851256','Капітан','С        F          G       Em  AM
Цю пісню приніс нам старий вітруган,
В одному з далеких морів,
С    F          G     Em AM
Її наспівав молодий капітан,
В одному з далеких портів.

Співали її в морі і на землі
І час свій сповільнював біг
І той хто хоч раз міг почути її,
Забути ніколи не зміг

Коли корабель відправлявся в моря
Вітрила напнувши свої
Матросам здавалось що навіть земля
тихенько співала її

У морі їм шторм всі вітрила порвав
Нептун забирав моряків
Та навіть коли корабель потопав
Матроси співали її

Давно вже нема капітана. То й що?
Десь спить він в обіймах морів
Та іноді людям здавалося що
То море співало її');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_851256_l1','pisniua_851256','YouTube','https://www.youtube.com/watch?v=sby9OjZjRNQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8518518';
DELETE FROM song_versions WHERE song_id = 'pisniua_8518518';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8518518';
DELETE FROM songs WHERE id = 'pisniua_8518518';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8518518','Волинські Частушки','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Як любила Колю, Колю -
Та й конхвєти їла в волю,
А як стала любить Ваню -
То й зубами тарабаню.
Ох, ох, ни дай, Бог,
З городскими знатьця,
Уму мало -
Тіко гоноровості багато.

Я любіла поігратца,
Я любіла пошутіть.
За мої вєсьолі шутки
Бросив милєнькій любіть.
Не полізу на березу,
Бо вона хитаєтьця,
Я беззубого люблю:
Беззубий не кусається.
Не полізу на березу,
Бо боюся висоти,
Не жаль мені милейкого,
Тіко його красоти.

Ой, мамцю моя,
Люблю чорного я,
Бо він мене називає:
Щебетушко моя!
Щебетушко моя,
Говорушко моя,
Перестань говорить,
Бо мні серце болить.
Бо мні серце болить,
Ще й печонки болять.
Пусти мине, моя мати,
На вечорки гулять.
На вечорки гулять,
Нагулятися,
І з хорошим ковалєром
Настоятися.
Ковалєру, ковалєру,
Нащ обираш ту холєру? -
То хиріє, то боліє -
Козакові серце мліє...

Ой, казали на меня,
Що я нивеличка,
А я свому миленькому,
Як пирипеличка.
Ой, казали на мине,
Що я - американка,
Нивелика, й нимала,
Сама обійманка.

Ой, надіну біле плаття -
По землі волочиться,
Полюбила капітана,
Ще й майора хочеться!
Полюбіла капітана,
В його сірая шінель,
Посмотрєла в документи -
В його семеро дітей.

Моя міла із тоски
Проглотіла три доски.
Через тридцять три неділі
Тіко ящики летіли.

Куди йдеш? Куди йдеш?
Куди чимкиндаєш?
До дівок! До дівок!
Хіба ти не знаєш?
Я любила Колю, Колю -
То й конхвєти їла в волю,
А типєр люблю я Мішу -
І бумажки нє увіжу.

Ой, бивало називала:
Коля! Коля! Ніколай!
А типер така, зараза,
Що в глаза ні попадай!

В Озденіжі болота
Засіяни льоном,
Озденізькі парубки
Пахнуть ''дікалоном.

Ой, мати моя,
А я - дочка твоя,
Треба було бити, вчити,
Як маленька я була!
А типер я велика,
Треба мені чоловіка -
Ни старого, ни малого,
Ковалєра молодого!

Барабани били-били,
Я на їх дивилася.
Барабанщик - гарний хлопець,
Я в його влюбилася!

Гармоністику, грай,
Твоє діло - грати,
Бо ти хочеш молоду
Дівчину кохати!

Ой, піду я краков''яка,
То мазури, то поляка.
То мазури, то баюри,
А поляка - на бесака.

Ой, яблучко, куди котишся:
Упадеш - пропадеш,
Не воротішся!','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8518518'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8518518','Волинські Частушки','Як любила Колю, Колю -
Та й конхвєти їла в волю,
А як стала любить Ваню -
То й зубами тарабаню.
Ох, ох, ни дай, Бог,
З городскими знатьця,
Уму мало -
Тіко гоноровості багато.

Я любіла поігратца,
Я любіла пошутіть.
За мої вєсьолі шутки
Бросив милєнькій любіть.
Не полізу на березу,
Бо вона хитаєтьця,
Я беззубого люблю:
Беззубий не кусається.
Не полізу на березу,
Бо боюся висоти,
Не жаль мені милейкого,
Тіко його красоти.

Ой, мамцю моя,
Люблю чорного я,
Бо він мене називає:
Щебетушко моя!
Щебетушко моя,
Говорушко моя,
Перестань говорить,
Бо мні серце болить.
Бо мні серце болить,
Ще й печонки болять.
Пусти мине, моя мати,
На вечорки гулять.
На вечорки гулять,
Нагулятися,
І з хорошим ковалєром
Настоятися.
Ковалєру, ковалєру,
Нащ обираш ту холєру? -
То хиріє, то боліє -
Козакові серце мліє...

Ой, казали на меня,
Що я нивеличка,
А я свому миленькому,
Як пирипеличка.
Ой, казали на мине,
Що я - американка,
Нивелика, й нимала,
Сама обійманка.

Ой, надіну біле плаття -
По землі волочиться,
Полюбила капітана,
Ще й майора хочеться!
Полюбіла капітана,
В його сірая шінель,
Посмотрєла в документи -
В його семеро дітей.

Моя міла із тоски
Проглотіла три доски.
Через тридцять три неділі
Тіко ящики летіли.

Куди йдеш? Куди йдеш?
Куди чимкиндаєш?
До дівок! До дівок!
Хіба ти не знаєш?
Я любила Колю, Колю -
То й конхвєти їла в волю,
А типєр люблю я Мішу -
І бумажки нє увіжу.

Ой, бивало називала:
Коля! Коля! Ніколай!
А типер така, зараза,
Що в глаза ні попадай!

В Озденіжі болота
Засіяни льоном,
Озденізькі парубки
Пахнуть ''дікалоном.

Ой, мати моя,
А я - дочка твоя,
Треба було бити, вчити,
Як маленька я була!
А типер я велика,
Треба мені чоловіка -
Ни старого, ни малого,
Ковалєра молодого!

Барабани били-били,
Я на їх дивилася.
Барабанщик - гарний хлопець,
Я в його влюбилася!

Гармоністику, грай,
Твоє діло - грати,
Бо ти хочеш молоду
Дівчину кохати!

Ой, піду я краков''яка,
То мазури, то поляка.
То мазури, то баюри,
А поляка - на бесака.

Ой, яблучко, куди котишся:
Упадеш - пропадеш,
Не воротішся!');
DELETE FROM song_links WHERE song_id = 'pisniua_8513858';
DELETE FROM song_versions WHERE song_id = 'pisniua_8513858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8513858';
DELETE FROM songs WHERE id = 'pisniua_8513858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8513858','Дівчинка, привіт!','Музика: Олександр Круглий (LESAN) Слова: Олександр Круглий (LESAN)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Привіт!
На випускном прощальний танець,
І нам всього сімнадцять ще,
Ти завтра мене точно згадаєш,
Дівчинка, привіт!
На випускном прощальний танець,
Дорослими ми стали вже,
І ти в такій красивій сукні,
Дівчинка, привіт!

Я дивлюсь, в твоїх очах вогні,
Я в цьому костюмі чуть смішний,
Шукаю все момент аби сказати
То, як я давно тебе любив!
І ти так красива, що залип,
Хочу пам''ятати завжди цю мить,
Завтра вже чекає нове життя,
Всі спогади в піснях...
А поки, мені дай свою долонь,
Цілий світ завмер біля нас з тобою!

Приспів.

В моїй руці твоя рука,
І серце пополам,
Завтра ми будем вже дорослі
В різних містах...
Теплий, щасливий погляд
Трішки у сльозах, днів тисячі,
Але у пам''яті цей на віки!
І нехай ми будем далеко,
Дівчинка моя,
Пам''ятай мій корявий почерк,
Як написав тобі: Люблю тебе я!

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8513858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8513858','Дівчинка, привіт!','Приспів:
Привіт!
На випускном прощальний танець,
І нам всього сімнадцять ще,
Ти завтра мене точно згадаєш,
Дівчинка, привіт!
На випускном прощальний танець,
Дорослими ми стали вже,
І ти в такій красивій сукні,
Дівчинка, привіт!

Я дивлюсь, в твоїх очах вогні,
Я в цьому костюмі чуть смішний,
Шукаю все момент аби сказати
То, як я давно тебе любив!
І ти так красива, що залип,
Хочу пам''ятати завжди цю мить,
Завтра вже чекає нове життя,
Всі спогади в піснях...
А поки, мені дай свою долонь,
Цілий світ завмер біля нас з тобою!

Приспів.

В моїй руці твоя рука,
І серце пополам,
Завтра ми будем вже дорослі
В різних містах...
Теплий, щасливий погляд
Трішки у сльозах, днів тисячі,
Але у пам''яті цей на віки!
І нехай ми будем далеко,
Дівчинка моя,
Пам''ятай мій корявий почерк,
Як написав тобі: Люблю тебе я!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8513858_l1','pisniua_8513858','YouTube','https://www.youtube.com/watch?v=04KQ-hBRzKo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8511171';
DELETE FROM song_versions WHERE song_id = 'pisniua_8511171';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8511171';
DELETE FROM songs WHERE id = 'pisniua_8511171';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8511171','Українські марші',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконують Ілля Найда і гурт "Зоряна ніч" (альбом: Українські марші).','Там на горі, на Маківці,
Там ся бились Січові Стрільці.
Хлопці, підемо, боротися будемо,
За Україну, за вільнії права й державу!
Хлопці, підемо, боротися будемо
За Україну, за вільнії права!

Там, десь далеко на Волині,
Зібралася армія УПА,
Щоби воскресла Україна
І завітала слобода!
Щоби воскресла Україна
І завітала слобода!

У горах Карпатах, де я ся народив,
З гори на долину до школи я ходив,
Там пташки співають, там весело, у-ха-ха,
І голос сопілки там чути звіддаля!
Там пташки співають, там весело, у-ха-ха,
І голос сопілки там чути звіддаля!

О, Україно, о, люба ненько,
Тобі вірненько присягнем.
О, Україно, о, люба ненько,
Тобі вірненько присягнем!
Серця кров і любов -
Все тобі віддати в боротьбі!
За Україну, за її волю,
За честь і славу, за народ!
За Україну, за її волю,
За честь і славу, за народ!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8511171'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8511171','Українські марші','Там на горі, на Маківці,
Там ся бились Січові Стрільці.
Хлопці, підемо, боротися будемо,
За Україну, за вільнії права й державу!
Хлопці, підемо, боротися будемо
За Україну, за вільнії права!

Там, десь далеко на Волині,
Зібралася армія УПА,
Щоби воскресла Україна
І завітала слобода!
Щоби воскресла Україна
І завітала слобода!

У горах Карпатах, де я ся народив,
З гори на долину до школи я ходив,
Там пташки співають, там весело, у-ха-ха,
І голос сопілки там чути звіддаля!
Там пташки співають, там весело, у-ха-ха,
І голос сопілки там чути звіддаля!

О, Україно, о, люба ненько,
Тобі вірненько присягнем.
О, Україно, о, люба ненько,
Тобі вірненько присягнем!
Серця кров і любов -
Все тобі віддати в боротьбі!
За Україну, за її волю,
За честь і славу, за народ!
За Україну, за її волю,
За честь і славу, за народ!');
DELETE FROM song_links WHERE song_id = 'pisniua_8510272';
DELETE FROM song_versions WHERE song_id = 'pisniua_8510272';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8510272';
DELETE FROM songs WHERE id = 'pisniua_8510272';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8510272','Христос воскрес!','Музика: Tanya Navrotski Слова: Mariya Zvirid','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Пташки будили землю співом,
І ранок сонцем засіяв,
І сталося велике диво -
Холодний камінь там відпав.
І ангел Божий вмить з''явився,
Христос Воскрес! - жінкам звістив!
І сад від слави освятився,
Христос був мертвим та ожив!

Приспів:
Христос воскрес - жива надія!
Христос воскрес - душа радіє!
Співає серденько моє!
Христос життя мені дає!
Христос життя мені дає!

І струни радості бриніли,
І прокидалася земля,
Марія бігла, як на крилах,
І учням добру вість несла!

Приспів.

Любов жива! Ісусу хвала!
Він щастя дає і спасіння
У славнім своїм воскресінні!

Приспів.','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8510272'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8510272','Христос воскрес!','Пташки будили землю співом,
І ранок сонцем засіяв,
І сталося велике диво -
Холодний камінь там відпав.
І ангел Божий вмить з''явився,
Христос Воскрес! - жінкам звістив!
І сад від слави освятився,
Христос був мертвим та ожив!

Приспів:
Христос воскрес - жива надія!
Христос воскрес - душа радіє!
Співає серденько моє!
Христос життя мені дає!
Христос життя мені дає!

І струни радості бриніли,
І прокидалася земля,
Марія бігла, як на крилах,
І учням добру вість несла!

Приспів.

Любов жива! Ісусу хвала!
Він щастя дає і спасіння
У славнім своїм воскресінні!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8510272_l1','pisniua_8510272','YouTube','https://www.youtube.com/watch?v=rtI_e5ytbNE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8504858';
DELETE FROM song_versions WHERE song_id = 'pisniua_8504858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8504858';
DELETE FROM songs WHERE id = 'pisniua_8504858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8504858','Звірята на лужку','Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вийшли дружно всі звірята
Весну красну привітати
На лужок, всі разом
На лужок!

Прикотився, як клубочок,
Став скоріше у таночок
Їжачок, колючий їжачок!

І ведмедик клишоногий
Розім''яти вийшов ноги
Гуп, гуп, гуп, тупоче,
Тупу-туп!

Зайці, білки й лисенята,
Грають в піжмурки, малята.
Ой, ку-ку, лунає у ліску!

І усім, так гарно гратись їм!','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8504858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8504858','Звірята на лужку','Вийшли дружно всі звірята
Весну красну привітати
На лужок, всі разом
На лужок!

Прикотився, як клубочок,
Став скоріше у таночок
Їжачок, колючий їжачок!

І ведмедик клишоногий
Розім''яти вийшов ноги
Гуп, гуп, гуп, тупоче,
Тупу-туп!

Зайці, білки й лисенята,
Грають в піжмурки, малята.
Ой, ку-ку, лунає у ліску!

І усім, так гарно гратись їм!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8504858_l1','pisniua_8504858','YouTube','https://www.youtube.com/watch?v=AlUeVKmx2dc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8518070';
DELETE FROM song_versions WHERE song_id = 'pisniua_8518070';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8518070';
DELETE FROM songs WHERE id = 'pisniua_8518070';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8518070','Коліжанка','Музика: Олександр Соломон Слова: Олександр Соломон','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Наталія Бунь.','Росли ми з тобою,
Дружили з тобою,
Завжди були разом,
Завжди були двоє!
Щоб мрії збувались,
Обоє хотіли
А я і не знала,
Що ти так посмієш.

Приспів:
Ти, подруго-коліжанко,
Що ж ти, люба, наробила?..
Свого милого не любиш,
Мого милого зманила...
Ти, подруго-коліжанко,
Не кажи, що ти не знала!
Свого милого не любиш,
А чужого зчарувала...

Ну, як ти посміла?
Чому так зробила?
Чому моє щастя
Жорстоко розбила?
Забрала кохання,
Любов зчарувала,
Його цілувала,
А я і не знала...

Приспів. (2)','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8518070'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8518070','Коліжанка','Росли ми з тобою,
Дружили з тобою,
Завжди були разом,
Завжди були двоє!
Щоб мрії збувались,
Обоє хотіли
А я і не знала,
Що ти так посмієш.

Приспів:
Ти, подруго-коліжанко,
Що ж ти, люба, наробила?..
Свого милого не любиш,
Мого милого зманила...
Ти, подруго-коліжанко,
Не кажи, що ти не знала!
Свого милого не любиш,
А чужого зчарувала...

Ну, як ти посміла?
Чому так зробила?
Чому моє щастя
Жорстоко розбила?
Забрала кохання,
Любов зчарувала,
Його цілувала,
А я і не знала...

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8518070_l1','pisniua_8518070','YouTube','https://www.youtube.com/watch?v=YRwidham4Bw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_85205';
DELETE FROM song_versions WHERE song_id = 'pisniua_85205';
DELETE FROM songs_fts WHERE song_id = 'pisniua_85205';
DELETE FROM songs WHERE id = 'pisniua_85205';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_85205','Пісня про матір','Музика: Олександр Морозов Слова: Борис Олійник','uk','ukraine_1991',NULL,NULL,'Пісенник "Заспіваймо собі". Видавництво "Закарпаття". Ужгород-2001','Дещо інший варіант цієї пісні виконує Таїсія Повалій.','Посіяла людям
літа свої, літечка житом,
Прибрала планету,
послала стежкам споришу,
Навчила дітей,
як на світі по совісті жити,
Зітхнула полегко -
і тихо пішла за межу.

- Куди ж це ви, мамо?! -
сполохано кинулись діти.
- Куди ж ви, бабусю? -
онуки біжать до воріт.
Та я недалечко...
де сонце лягає спочити.
Пора мені, діти...
А ви вже без мене ростіть.

- Та як же без вас ми?..
Та що ви намислили, мамо?
- А хто нас, бабусю,
У сон поведе у казках?
- А я вам лишаю
всі райдуги із журавлями
І срібло на травах,
і золото на колосках.

Не треба нам райдуг,
не треба нам срібла і злота,
Аби тільки ви
чекали на нас край воріт.
Та ми переробим
усю вашу вічну роботу, -
Лишайтесь, матусю.
Навіки лишайтесь. Не йдіть.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_85205'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_85205','Пісня про матір','Посіяла людям
літа свої, літечка житом,
Прибрала планету,
послала стежкам споришу,
Навчила дітей,
як на світі по совісті жити,
Зітхнула полегко -
і тихо пішла за межу.

- Куди ж це ви, мамо?! -
сполохано кинулись діти.
- Куди ж ви, бабусю? -
онуки біжать до воріт.
Та я недалечко...
де сонце лягає спочити.
Пора мені, діти...
А ви вже без мене ростіть.

- Та як же без вас ми?..
Та що ви намислили, мамо?
- А хто нас, бабусю,
У сон поведе у казках?
- А я вам лишаю
всі райдуги із журавлями
І срібло на травах,
і золото на колосках.

Не треба нам райдуг,
не треба нам срібла і злота,
Аби тільки ви
чекали на нас край воріт.
Та ми переробим
усю вашу вічну роботу, -
Лишайтесь, матусю.
Навіки лишайтесь. Не йдіть.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_85205_l1','pisniua_85205','YouTube','https://www.youtube.com/watch?v=HyglVUGhNQo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_85205_l2','pisniua_85205','YouTube','https://www.youtube.com/watch?v=bN65ECI28Jc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_85205_l3','pisniua_85205','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_8522575';
DELETE FROM song_versions WHERE song_id = 'pisniua_8522575';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8522575';
DELETE FROM songs WHERE id = 'pisniua_8522575';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8522575','Ой, паночку наш','Українська народна пісня','uk','ukraine_1991',NULL,'2010','аудіозапис','с. Блудше, Козелецький район, Чернігівська область. Оригінальна назва альбому: "Антология народной музыки: Украинская музыка" (2010).','Ой, паночку наш, та й заведи нас,
Та й заведи нас та й у добрий час!

Вже сонечко над липою,
Тряси, пане, калитою.
Тряси, не тряси - по рублю даси!

Чужі пани дукачі, роблять діло і вночі.
Наш пан - соловейко, пускає ранень(ко)!

Пускає й удень молодих людей:
Голівоньку змити, на вулоньку вий(ти)!

А вже сонце котиться, нам додому хочеться.
Хочеться давно, а ми не йдемо!

А ми не йдемо, приказу ждемо,
Приказу ждемо пана своєго!

Закотилося сонечко за зелений бір,
За зелений бір, за зелений бір.','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8522575'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8522575','Ой, паночку наш','Ой, паночку наш, та й заведи нас,
Та й заведи нас та й у добрий час!

Вже сонечко над липою,
Тряси, пане, калитою.
Тряси, не тряси - по рублю даси!

Чужі пани дукачі, роблять діло і вночі.
Наш пан - соловейко, пускає ранень(ко)!

Пускає й удень молодих людей:
Голівоньку змити, на вулоньку вий(ти)!

А вже сонце котиться, нам додому хочеться.
Хочеться давно, а ми не йдемо!

А ми не йдемо, приказу ждемо,
Приказу ждемо пана своєго!

Закотилося сонечко за зелений бір,
За зелений бір, за зелений бір.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8522575_l1','pisniua_8522575','YouTube','https://www.youtube.com/watch?v=yUxri8gUX1s','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8517001';
DELETE FROM song_versions WHERE song_id = 'pisniua_8517001';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8517001';
DELETE FROM songs WHERE id = 'pisniua_8517001';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8517001','Ой, купався Іван','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','с. Грузьке, Фастівський район, Київська область.','Ой, купався Іван,
Да й у воду упав.

Стороною дощику,
Стороною,
Да й на мою роженьку
Червоную.

Посажу я рожу,
Поставлю сторожу,
Невірна сторожа,  —
Пощіпана рожа.

Стороною дощику,
Стороною,
Да й на мою роженьку
Червоную.

Ой, летіло-помело
Через наше село,

Стовпом дим,
Бог й з ним.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8517001'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8517001','Ой, купався Іван','Ой, купався Іван,
Да й у воду упав.

Стороною дощику,
Стороною,
Да й на мою роженьку
Червоную.

Посажу я рожу,
Поставлю сторожу,
Невірна сторожа,  —
Пощіпана рожа.

Стороною дощику,
Стороною,
Да й на мою роженьку
Червоную.

Ой, летіло-помело
Через наше село,

Стовпом дим,
Бог й з ним.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8517001_l1','pisniua_8517001','YouTube','https://www.youtube.com/watch?v=3mBoob8UdNE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_851272';
DELETE FROM song_versions WHERE song_id = 'pisniua_851272';
DELETE FROM songs_fts WHERE song_id = 'pisniua_851272';
DELETE FROM songs WHERE id = 'pisniua_851272';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_851272','Осінь прощається з нами','Музика: Євген Шантир Слова: Євген Шантир. Виконує: Євген Шантир','uk','ukraine_before_1917',NULL,NULL,NULL,'Збірка пісень "Кораблик"','Ось і чудові осінні
Дні добігають кінця,
І горизонти туманні
Наче ідуть в небуття.
Осінь прощається з нами,
Жовті останні листки
Вітер зриває і сніжні
В небі зібрались хмарки.

Скрізь кольори темно-сірі
Пишуть пейзажі свої,
І загадково-похмурі
Клином летять журавлі.
Осінь прощається з нами,
Жовті останні листки
Вітер зриває і сніжні
В небі зібрались хмарки.

Перші сніжинки кружляють,
З ними холодні дощі
Землю сльозами вмивають
Рясно і вдень, і вночі.
Осінь прощається з нами,
Жовті останні листки
Вітер зриває і сніжні
В небі зібрались хмарки!','[''pisni.org.ua'', ''cat:bardivski'', ''cat:kozacki'', ''cat:romansy'', ''cat:socialno-pobutovi'', ''cat:zahalni-cinnosti'', ''Бардівські пісні'', ''Козацькі пісні'', ''Романси'', ''Соціально-побутові пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_851272'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_851272','Осінь прощається з нами','Ось і чудові осінні
Дні добігають кінця,
І горизонти туманні
Наче ідуть в небуття.
Осінь прощається з нами,
Жовті останні листки
Вітер зриває і сніжні
В небі зібрались хмарки.

Скрізь кольори темно-сірі
Пишуть пейзажі свої,
І загадково-похмурі
Клином летять журавлі.
Осінь прощається з нами,
Жовті останні листки
Вітер зриває і сніжні
В небі зібрались хмарки.

Перші сніжинки кружляють,
З ними холодні дощі
Землю сльозами вмивають
Рясно і вдень, і вночі.
Осінь прощається з нами,
Жовті останні листки
Вітер зриває і сніжні
В небі зібрались хмарки!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_851272_l1','pisniua_851272','YouTube','https://www.youtube.com/watch?v=HqTNtYja2Ac','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8513103';
DELETE FROM song_versions WHERE song_id = 'pisniua_8513103';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8513103';
DELETE FROM songs WHERE id = 'pisniua_8513103';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8513103','Сестра','Музика: Олег Козачук, Victoria Niro Слова: Олег Козачук, Олена Турковська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мені моя подруга, як сестра,
Цьому на заваді жоден хлопець не став,
Бо допоки моя подруга, як сестра мені,
Мене не образиш, бо вона буде зла!
Тому тусуйся, дядя!
Мені моя подруга, як сестра,
Цьому на заваді жоден хлопець не став,
Бо допоки моя подруга, як сестра мені,
Мене не образиш, бо вона буде зла!
Ніби пітбуль у платті!

Подруго, привіт!
Привіт!
Розкажи мені,
Про що?
Що в тебе нового?
Ти розквітнула, як цвіт, бачу!
В мене пацан новий і не такий,
Як всі вони, що тільки видавалися
Людьми моїми ними,
Не були геть зовсім наче!
А цей не такий?..
Та ні він щастя мені приніс, окрім того,
Що він дуже добрий ще й смішить мене до сліз!
Сестра, чим більше чую, тим цікавіше ще мені,
Виглядає виглядає, як описаний тобою, мачо!

Приспів.

Мабуть, не повіриш декого зустріла також!
Також?
Теж дуже веселий, кличе до себе у Калуш,
Відчуваю скоро кликатиме заміж мене,
Він душею чистий, ніби випраний із ваніш.
Ану, почекай, цікаво, кажеш, калушанин?
Мій також обіцяв, що візьмем шлюб в одному
З їхніх храмів тож,
Тільки не кажи, звати твого милого теж Романом?..
Так, Романом!
У Романа тепер Problema з подвійним романом!
Now you whana say hey! Now you whana say ha!
Якщо в тебе є подруга подру-подру-подруга!
Now you whana say hey! Now you whana say ha!
Якщо в тебе є подруга подру-подру-подруга!

Приспів.

Ай, Рома! Ай, Рома!
Краще утікай, Рома!
Ми у гніві з подругою,
Ніби блискавка із громом!
Ай, Рома! Ай, Рома!
Краще утікай, Рома!
Від нас не сховаєшся, краще
Перечекай вдома!','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8513103'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8513103','Сестра','Мені моя подруга, як сестра,
Цьому на заваді жоден хлопець не став,
Бо допоки моя подруга, як сестра мені,
Мене не образиш, бо вона буде зла!
Тому тусуйся, дядя!
Мені моя подруга, як сестра,
Цьому на заваді жоден хлопець не став,
Бо допоки моя подруга, як сестра мені,
Мене не образиш, бо вона буде зла!
Ніби пітбуль у платті!

Подруго, привіт!
Привіт!
Розкажи мені,
Про що?
Що в тебе нового?
Ти розквітнула, як цвіт, бачу!
В мене пацан новий і не такий,
Як всі вони, що тільки видавалися
Людьми моїми ними,
Не були геть зовсім наче!
А цей не такий?..
Та ні він щастя мені приніс, окрім того,
Що він дуже добрий ще й смішить мене до сліз!
Сестра, чим більше чую, тим цікавіше ще мені,
Виглядає виглядає, як описаний тобою, мачо!

Приспів.

Мабуть, не повіриш декого зустріла також!
Також?
Теж дуже веселий, кличе до себе у Калуш,
Відчуваю скоро кликатиме заміж мене,
Він душею чистий, ніби випраний із ваніш.
Ану, почекай, цікаво, кажеш, калушанин?
Мій також обіцяв, що візьмем шлюб в одному
З їхніх храмів тож,
Тільки не кажи, звати твого милого теж Романом?..
Так, Романом!
У Романа тепер Problema з подвійним романом!
Now you whana say hey! Now you whana say ha!
Якщо в тебе є подруга подру-подру-подруга!
Now you whana say hey! Now you whana say ha!
Якщо в тебе є подруга подру-подру-подруга!

Приспів.

Ай, Рома! Ай, Рома!
Краще утікай, Рома!
Ми у гніві з подругою,
Ніби блискавка із громом!
Ай, Рома! Ай, Рома!
Краще утікай, Рома!
Від нас не сховаєшся, краще
Перечекай вдома!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8513103_l1','pisniua_8513103','YouTube','https://www.youtube.com/watch?v=lcHzy4BZDs0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8524373';
DELETE FROM song_versions WHERE song_id = 'pisniua_8524373';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8524373';
DELETE FROM songs WHERE id = 'pisniua_8524373';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8524373','Мій вірний друже','(Сумую дуже). Музика: KVITNEVYI Слова: majra','uk','ukraine_1991',NULL,NULL,'авторське подання','Пісню виконує KVITNEVYI.','Ходить сонце десь за небокраєм,
І ніби й день, а світла тут нема...
Воно в мої думки не зазирає,
Надворі літо, а в душі зима...
І що кому я буду говорити?
І хто сьогодні скаже щось мені?
Не маю права - плакати, тужити,
Жалітись, що живу на чужині...

Приспів:
Я сумую дуже... Я сумую дуже...
Я так далеко, в чужині сама...
В моїм саду давно зав''яли ружі,
А серце темна туга обійма...
Я сумую дуже...
Мій вірний друже, я сумую дуже,
Я так далеко, в чужині сама...
В моїм саду давно зав''яли ружі,
А серце темна туга обійма...
Я сумую дуже... Я сумую дуже...

Бо важко всім, війна всьому причина,
Немає в світі радості буття...
А в мене доля теж одна - єдина,
І йде на захід стежечка життя...
Дарує осінь чари горобині,
Калина сяє чарівним вогнем!...
Зустрінемося, друже, на Волині,
Всі негаразди ми переживем!..

Приспів.

Пройдемо разом по стежках знайомих,
За зустріч - келих вип''ємо до дна!
Я вірю, всі повернуться додому
В той день, коли закінчиться війна!..
Мій вірний друже, я сумую дуже,
Я так далеко, в чужині сама...
В моїм саду давно зав''яли ружі,
А серце темна туга обійма...
Я сумую дуже... Я сумую дуже...','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8524373'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8524373','Мій вірний друже','Ходить сонце десь за небокраєм,
І ніби й день, а світла тут нема...
Воно в мої думки не зазирає,
Надворі літо, а в душі зима...
І що кому я буду говорити?
І хто сьогодні скаже щось мені?
Не маю права - плакати, тужити,
Жалітись, що живу на чужині...

Приспів:
Я сумую дуже... Я сумую дуже...
Я так далеко, в чужині сама...
В моїм саду давно зав''яли ружі,
А серце темна туга обійма...
Я сумую дуже...
Мій вірний друже, я сумую дуже,
Я так далеко, в чужині сама...
В моїм саду давно зав''яли ружі,
А серце темна туга обійма...
Я сумую дуже... Я сумую дуже...

Бо важко всім, війна всьому причина,
Немає в світі радості буття...
А в мене доля теж одна - єдина,
І йде на захід стежечка життя...
Дарує осінь чари горобині,
Калина сяє чарівним вогнем!...
Зустрінемося, друже, на Волині,
Всі негаразди ми переживем!..

Приспів.

Пройдемо разом по стежках знайомих,
За зустріч - келих вип''ємо до дна!
Я вірю, всі повернуться додому
В той день, коли закінчиться війна!..
Мій вірний друже, я сумую дуже,
Я так далеко, в чужині сама...
В моїм саду давно зав''яли ружі,
А серце темна туга обійма...
Я сумую дуже... Я сумую дуже...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8524373_l1','pisniua_8524373','YouTube','https://www.youtube.com/watch?v=umQsrz18cs0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8510575';
DELETE FROM song_versions WHERE song_id = 'pisniua_8510575';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8510575';
DELETE FROM songs WHERE id = 'pisniua_8510575';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8510575','Рана','Музика: Ірина Федишин Слова: Петро Половко. Виконує: Ірина Федишин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'А за вікном весь білий світ
Не знає, як їй це сказати:
Він на війні лишився ніг,
Чи схоче ще його чекати?..
Який важкий цей біль розлук,
Він відчує крик та втому...
Просив: Ти напиши в Facebook,
Чи повертатися додому?..

Приспів:
Він так в житті               |
Ще не чекав, не чекав,        |
Вогнем горіла в серці рана... |
Під вечір тихо                |
Прочитав, прочитав:           |
Тебе чекаю, твоя кохана!..    | (2)

Він плакав плакав цілу ніч,
А зорі за вікном світились,
Їх міліони світлих свіч -
Це є любов, це не приснилось!..
В руках троянди він тримав,
Такі самі, як на весіллі,
Її кохає, як кохав,
Війна дала їм чашу в сілі...

Приспів.

Попри все любіть, кохайте,
Щоб не сталося - чекайте!
Вірність - дорога ціна,
Бо любов - вона така!..

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8510575'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8510575','Рана','А за вікном весь білий світ
Не знає, як їй це сказати:
Він на війні лишився ніг,
Чи схоче ще його чекати?..
Який важкий цей біль розлук,
Він відчує крик та втому...
Просив: Ти напиши в Facebook,
Чи повертатися додому?..

Приспів:
Він так в житті               |
Ще не чекав, не чекав,        |
Вогнем горіла в серці рана... |
Під вечір тихо                |
Прочитав, прочитав:           |
Тебе чекаю, твоя кохана!..    | (2)

Він плакав плакав цілу ніч,
А зорі за вікном світились,
Їх міліони світлих свіч -
Це є любов, це не приснилось!..
В руках троянди він тримав,
Такі самі, як на весіллі,
Її кохає, як кохав,
Війна дала їм чашу в сілі...

Приспів.

Попри все любіть, кохайте,
Щоб не сталося - чекайте!
Вірність - дорога ціна,
Бо любов - вона така!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8510575_l1','pisniua_8510575','YouTube','https://www.youtube.com/watch?v=Y_61ci2iD_Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8514909';
DELETE FROM song_versions WHERE song_id = 'pisniua_8514909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8514909';
DELETE FROM songs WHERE id = 'pisniua_8514909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8514909','Фермер','Музика: народна Слова: Юрій Шмегельський','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, у полі, чорнім полі,
Посівна вирує!
То у рідній Україні
Фермер хазяйнує!
То пооре, то посіє,         |
Сонечко зігріє.             |
Дощ впаде і землю зросить,  |
Поле зеленіє!               | (2)

Агрономи, трактористи
На селі працюють.
Комбайнери на "Джон Дірах"
Всіх нас прогодують!
Хай годують, заробляють,    |
Завжди процвітають!         |
В нашій рідній Україні      |
Всі вас поважають!          | (2)

Десь на фермі, там, на фермі,
Поросята й свині,
Десь індики та курчата,
Корови в долині.
І які б часи не були,       |
Праця закипає.              |
І корми підвозять фури,     |
М''яско підростає!           | (2)

А коли жнива настануть,
З ранку і до ночі
Відпочинку геть не мають
Руки ті, робочі!
Усі складнощі долають,      |
І вогонь, і воду,           |
Бо наш фермер - то господар |
В будь-яку погоду!          | (2)

Літо щедре проминає,
Наступає осінь,
Коли фермер там, у полі,
Пшеницю покосить.
Він покосив, він покосив,   |
Вже осінь минає,            |
А озиме поле весну          |
Вже собі чекає!..           | (2)','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8514909'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8514909','Фермер','Ой, у полі, чорнім полі,
Посівна вирує!
То у рідній Україні
Фермер хазяйнує!
То пооре, то посіє,         |
Сонечко зігріє.             |
Дощ впаде і землю зросить,  |
Поле зеленіє!               | (2)

Агрономи, трактористи
На селі працюють.
Комбайнери на "Джон Дірах"
Всіх нас прогодують!
Хай годують, заробляють,    |
Завжди процвітають!         |
В нашій рідній Україні      |
Всі вас поважають!          | (2)

Десь на фермі, там, на фермі,
Поросята й свині,
Десь індики та курчата,
Корови в долині.
І які б часи не були,       |
Праця закипає.              |
І корми підвозять фури,     |
М''яско підростає!           | (2)

А коли жнива настануть,
З ранку і до ночі
Відпочинку геть не мають
Руки ті, робочі!
Усі складнощі долають,      |
І вогонь, і воду,           |
Бо наш фермер - то господар |
В будь-яку погоду!          | (2)

Літо щедре проминає,
Наступає осінь,
Коли фермер там, у полі,
Пшеницю покосить.
Він покосив, він покосив,   |
Вже осінь минає,            |
А озиме поле весну          |
Вже собі чекає!..           | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8514909_l1','pisniua_8514909','YouTube','https://www.youtube.com/watch?v=osp3CJL5Z0c','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8520474';
DELETE FROM song_versions WHERE song_id = 'pisniua_8520474';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8520474';
DELETE FROM songs WHERE id = 'pisniua_8520474';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8520474','Що на Петра хліб я пекла','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Повна назва альбому: Цвіте терен. Традиційна музика Лівобережної Київщини. с. Безуглівка, Згурівський район, Київська область.','Що на Петра хліб я пекла,
А на Івана хліб вибірала,
Іване-Іваше...

Що на Івана-Купала,
Чуть я у воду не впала,
Іване-Іваше...','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8520474'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8520474','Що на Петра хліб я пекла','Що на Петра хліб я пекла,
А на Івана хліб вибірала,
Іване-Іваше...

Що на Івана-Купала,
Чуть я у воду не впала,
Іване-Іваше...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8520474_l1','pisniua_8520474','YouTube','https://www.youtube.com/watch?v=RgTprIvbI1Y','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8525256';
DELETE FROM song_versions WHERE song_id = 'pisniua_8525256';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8525256';
DELETE FROM songs WHERE id = 'pisniua_8525256';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8525256','Хепі-енд','Музика: TESLENKO Слова: TESLENKO','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'А хто сказав, що він лиш тебе кохає?
І кожну ніч з тобою подумки засинає...
Про тебе всі написанні пісні співає,
Поруч із собою лиш тебе уявляє!..

Я знаю було важко, забути б ті слова,
Той випадок де правда - складніше,
Ніж брехня. Ти вигадала образ
У своїй голові, з приємного лиш
Досвід казати слово "Ні!".
І все, що так тебе вабило,
У тих стінах сильно ранило...
Чи то був знак, що кінець кіно
Вже настав давно?..

Приспів:
А хто сказав, що він лиш тебе кохає?
І кожну ніч з тобою подумки засинає...
Про тебе всі написанні пісні співає,
Поруч із собою лиш тебе уявляє!..
Може, просто ти продумала наперед
Сценарій, по якому у вас хепі енд?..
І виникла проблема лише одна,
Що вирішила все ти сама...

Гуляти по кварталах і бачить всіх по парах,
Втрачати розум в барах, та щастя не знайти...
І думки твої хворі, і осінь у мінорі,
Дивитися на зорі і свою не знайти...
І все, що так тебе вабило,
У тих стінах сильно ранило...
Чи то був знак, що кінець кіно
Вже настав давно?..

Приспів.','[''pisni.org.ua'', ''cat:mifichni'', ''Пісня з міфічними, світотворчими мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8525256'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8525256','Хепі-енд','А хто сказав, що він лиш тебе кохає?
І кожну ніч з тобою подумки засинає...
Про тебе всі написанні пісні співає,
Поруч із собою лиш тебе уявляє!..

Я знаю було важко, забути б ті слова,
Той випадок де правда - складніше,
Ніж брехня. Ти вигадала образ
У своїй голові, з приємного лиш
Досвід казати слово "Ні!".
І все, що так тебе вабило,
У тих стінах сильно ранило...
Чи то був знак, що кінець кіно
Вже настав давно?..

Приспів:
А хто сказав, що він лиш тебе кохає?
І кожну ніч з тобою подумки засинає...
Про тебе всі написанні пісні співає,
Поруч із собою лиш тебе уявляє!..
Може, просто ти продумала наперед
Сценарій, по якому у вас хепі енд?..
І виникла проблема лише одна,
Що вирішила все ти сама...

Гуляти по кварталах і бачить всіх по парах,
Втрачати розум в барах, та щастя не знайти...
І думки твої хворі, і осінь у мінорі,
Дивитися на зорі і свою не знайти...
І все, що так тебе вабило,
У тих стінах сильно ранило...
Чи то був знак, що кінець кіно
Вже настав давно?..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8525256_l1','pisniua_8525256','YouTube','https://www.youtube.com/watch?v=X-iUdlQxxmU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8521219';
DELETE FROM song_versions WHERE song_id = 'pisniua_8521219';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8521219';
DELETE FROM songs WHERE id = 'pisniua_8521219';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8521219','Мотанка','Музика: Євген Соколов Слова: Людмила Горова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Схрещуються долі,
Сходяться нитками,
Вузлики на пілці
Сталися руками.
Мотанка маленька
В тебе під бинтами -
Я тобі сьогодні
Буду замість мами!

Мотанка маленька
У твоїй долоні -
Я тебе не кину,
Виведу з полонів.
Виведу з пожежі,
Винесу з підвалу,
Зупиню-замовлю
Звірову навалу!

Затулю їм вуха,
Засліплю їм очі,
Запалю заграви
В полі серед ночі!
Хай зміїне кодло
Корчиться й німіє,
Бо на тебе й погляд
Звести не посміє!

Я - не просто лялька,
В''язана зі споду:
Сила в мені б''ється
Від усього роду!
Хто мене намовив -
Знається на слові,
Сила в кожній нитці
Від її любові!

Схрещуються долі, |
В''яжуть павутину, |
Я тебе врятую!    |
Я тебе не кину!   | (2)

Я тебе врятую!    |
Я тебе не кину!   | (6)','[''pisni.org.ua'', ''cat:devoted'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8521219'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8521219','Мотанка','Схрещуються долі,
Сходяться нитками,
Вузлики на пілці
Сталися руками.
Мотанка маленька
В тебе під бинтами -
Я тобі сьогодні
Буду замість мами!

Мотанка маленька
У твоїй долоні -
Я тебе не кину,
Виведу з полонів.
Виведу з пожежі,
Винесу з підвалу,
Зупиню-замовлю
Звірову навалу!

Затулю їм вуха,
Засліплю їм очі,
Запалю заграви
В полі серед ночі!
Хай зміїне кодло
Корчиться й німіє,
Бо на тебе й погляд
Звести не посміє!

Я - не просто лялька,
В''язана зі споду:
Сила в мені б''ється
Від усього роду!
Хто мене намовив -
Знається на слові,
Сила в кожній нитці
Від її любові!

Схрещуються долі, |
В''яжуть павутину, |
Я тебе врятую!    |
Я тебе не кину!   | (2)

Я тебе врятую!    |
Я тебе не кину!   | (6)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8521219_l1','pisniua_8521219','YouTube','https://www.youtube.com/watch?v=sFkkRemOeVM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8525714';
DELETE FROM song_versions WHERE song_id = 'pisniua_8525714';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8525714';
DELETE FROM songs WHERE id = 'pisniua_8525714';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8525714','Про осінь','Музика: Andriy Samchuk, Misha Averin, Mariia Dovgauk Слова: Andriy Samchuk, Misha Averin, Mariia Dovgauk','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Осінь вже вбралася у золотії шати,
Носить вже жовте листя і наводить сум...
Я пам''ятаю обіцяв тебе звозити в "Штати",
Багато чого обіцяв, і знаєш, я здержу!
Я зроблю все, щоб ти була щаслива!
Не завадить грім і грози,
Не завадить навіть злива!
Знаєш, була б дощем — я був би завжди мокрим!
Була б ти пляжем — був би завжди босим!
Куди б не йшла, триматиму твої долоні,
Твої долоні... Просиджу разом у однім вагоні...

Приспів:
Без тебе боюсь, без тебе не треба!
З тобою ця осінь така тепла!
Як важко вже зігрітися мені...
Я без тебе не я, без тебе - без неба!
З тобою — це вся моя потреба!
Не відпускай мої долоні ти!

Чути багато криків десь в далечині,
Кричать серця розбиті, і самі
Ми всі шукаємо собі по парі,
Десь там деінде, там, де точно вже її немає...
Та не задумуємось ми ніколи,
Що те, що ми шукаєм, поруч було ще зі школи!..
Ти рідна, вибач, що я гаяв час,
І дякую, що крізь роки ти мені дала шанс!..
Куди б не йшов, триматиму твої долоні,
Твої долоні... Просиджу разом у однім вагоні...

Приспів.

Я без тебе - без неба... | (3)

Без тебе - без неба...
Я без тебе - без неба... | (3)

Без тебе - без неба...','[''pisni.org.ua'', ''cat:devoted'', ''cat:nostalgia'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні з ностальгічними мотивами'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8525714'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8525714','Про осінь','Осінь вже вбралася у золотії шати,
Носить вже жовте листя і наводить сум...
Я пам''ятаю обіцяв тебе звозити в "Штати",
Багато чого обіцяв, і знаєш, я здержу!
Я зроблю все, щоб ти була щаслива!
Не завадить грім і грози,
Не завадить навіть злива!
Знаєш, була б дощем — я був би завжди мокрим!
Була б ти пляжем — був би завжди босим!
Куди б не йшла, триматиму твої долоні,
Твої долоні... Просиджу разом у однім вагоні...

Приспів:
Без тебе боюсь, без тебе не треба!
З тобою ця осінь така тепла!
Як важко вже зігрітися мені...
Я без тебе не я, без тебе - без неба!
З тобою — це вся моя потреба!
Не відпускай мої долоні ти!

Чути багато криків десь в далечині,
Кричать серця розбиті, і самі
Ми всі шукаємо собі по парі,
Десь там деінде, там, де точно вже її немає...
Та не задумуємось ми ніколи,
Що те, що ми шукаєм, поруч було ще зі школи!..
Ти рідна, вибач, що я гаяв час,
І дякую, що крізь роки ти мені дала шанс!..
Куди б не йшов, триматиму твої долоні,
Твої долоні... Просиджу разом у однім вагоні...

Приспів.

Я без тебе - без неба... | (3)

Без тебе - без неба...
Я без тебе - без неба... | (3)

Без тебе - без неба...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8525714_l1','pisniua_8525714','YouTube','https://www.youtube.com/watch?v=jwN4B4XNdfE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8525714_l2','pisniua_8525714','YouTube','https://www.youtube.com/watch?v=qOurhjj2JeI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8532154';
DELETE FROM song_versions WHERE song_id = 'pisniua_8532154';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8532154';
DELETE FROM songs WHERE id = 'pisniua_8532154';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8532154','Святий Миколаю, прочитай мій лист','Музика: Аркадій Войтюк Слова: Аркадій Войтюк. Виконує: Аркадій Войтюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Десь у лісі на Поліссі,
В казковому місці,
Сніг мете, сніг мете
Й від небажаних гостей
Щось приховує.
Серед пишних ялиночок
Стоїть собі будиночок,
З димаря дим іде,
Хто ж у ньому живе?..
На столі свічник,
Там старенький чарівник
Подалі від очей
Читає листи від дітей.

Приспів:
Святий Миколаю,
Прочитай мій лист,
Там важливий зміст!
Я лиш одне бажання загадав:
Миру вдома! Миру вдома!
Святий Миколаю,
Прочитай мій лист!
Він не такий, як колись,
Не треба більше забавлянь,
Лиш миру вдома! Миру вдома!

Слухняним - мир,
А неслухняним - різку!
Нехай життя своє
Переосмислять!
Глянь під подушку -
Різки там немає,
Бо подарує Миколай
Все те, що щиро забажаєш!

Приспів.

Лиш миру вдома! Миру вдома
Подаруй, Миколаю!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8532154'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8532154','Святий Миколаю, прочитай мій лист','Десь у лісі на Поліссі,
В казковому місці,
Сніг мете, сніг мете
Й від небажаних гостей
Щось приховує.
Серед пишних ялиночок
Стоїть собі будиночок,
З димаря дим іде,
Хто ж у ньому живе?..
На столі свічник,
Там старенький чарівник
Подалі від очей
Читає листи від дітей.

Приспів:
Святий Миколаю,
Прочитай мій лист,
Там важливий зміст!
Я лиш одне бажання загадав:
Миру вдома! Миру вдома!
Святий Миколаю,
Прочитай мій лист!
Він не такий, як колись,
Не треба більше забавлянь,
Лиш миру вдома! Миру вдома!

Слухняним - мир,
А неслухняним - різку!
Нехай життя своє
Переосмислять!
Глянь під подушку -
Різки там немає,
Бо подарує Миколай
Все те, що щиро забажаєш!

Приспів.

Лиш миру вдома! Миру вдома
Подаруй, Миколаю!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8532154_l1','pisniua_8532154','YouTube','https://www.youtube.com/watch?v=4FOtk0lhug0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8531272';
DELETE FROM song_versions WHERE song_id = 'pisniua_8531272';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8531272';
DELETE FROM songs WHERE id = 'pisniua_8531272';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8531272','Вбери-но білу сукню','Музика: Юрій Жерновий, ШI Слова: Василь Стус','uk','ukraine_1991',NULL,NULL,'авторське подання (Юрій Жерновий)','Пісню виконує Suno AI.','Приспів:
Вбери-но білу сукню
На тіло, на прогінне,
Нехай я, переждалий,
Од шалу затремчу...

Вбери пречисту сукню,
І озирнись лукаво,
І зваб мене прожогом,
Аби я звисочів...

Вбери-но гарну сукню,
Не дай мені уздріти
Далекі перегони
Пролопотілих літ...

Приспів.

Вбери дівочу сукню,
Обдай тим сяйним сяйвом,
Нехай відчую: медом
Мені твій танцескік...

Вбери-но славну сукню
На тіло молодече,
На вигронені перса
І лебідь живота...

Милуюся — несила
Од думи продихнути:
Зорить мені у душу
Безсмертний погляд твій...

Приспів.','[''pisni.org.ua'', ''cat:descriptions'', ''Описова інформація'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8531272'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8531272','Вбери-но білу сукню','Приспів:
Вбери-но білу сукню
На тіло, на прогінне,
Нехай я, переждалий,
Од шалу затремчу...

Вбери пречисту сукню,
І озирнись лукаво,
І зваб мене прожогом,
Аби я звисочів...

Вбери-но гарну сукню,
Не дай мені уздріти
Далекі перегони
Пролопотілих літ...

Приспів.

Вбери дівочу сукню,
Обдай тим сяйним сяйвом,
Нехай відчую: медом
Мені твій танцескік...

Вбери-но славну сукню
На тіло молодече,
На вигронені перса
І лебідь живота...

Милуюся — несила
Од думи продихнути:
Зорить мені у душу
Безсмертний погляд твій...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8531272_l1','pisniua_8531272','YouTube','https://www.youtube.com/watch?v=8gNLvglzXCY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8531272_l2','pisniua_8531272','YouTube','https://www.youtube.com/watch?v=frPBUb2mvlk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8531272_l3','pisniua_8531272','YouTube','https://www.youtube.com/watch?v=WDn98fj7Bxs','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8531272_l4','pisniua_8531272','YouTube','https://www.youtube.com/watch?v=sktBrSac5KI','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_8530373';
DELETE FROM song_versions WHERE song_id = 'pisniua_8530373';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8530373';
DELETE FROM songs WHERE id = 'pisniua_8530373';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8530373','Різдво іде по Україні','Музика: Станіслава Май Слова: Наталія Май','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Свято на порозі,
Миколай в дорозі,
Подарунки він
Несе для всіх!
Кожен загадає
Миру в ріднім краї,
Хай лунає скрізь
Веселий сміх!

Приспів:
Різдво іде по Україні!
Різдво крокує по землі!
Різдво іде по Україні,
Несе нам радощі свої!
Різдво іде по Україні,
Дарує щастя кожну мить!
Різдво іде по Україні,
Різдвяна зіронька горить!

Свято - галасливе,
Люди всі - щасливі!
Миколай заводить хоровод.
Побажаєм щиро Україні миру!
Хай живе у щасті наш народ!

Приспів.','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8530373'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8530373','Різдво іде по Україні','Свято на порозі,
Миколай в дорозі,
Подарунки він
Несе для всіх!
Кожен загадає
Миру в ріднім краї,
Хай лунає скрізь
Веселий сміх!

Приспів:
Різдво іде по Україні!
Різдво крокує по землі!
Різдво іде по Україні,
Несе нам радощі свої!
Різдво іде по Україні,
Дарує щастя кожну мить!
Різдво іде по Україні,
Різдвяна зіронька горить!

Свято - галасливе,
Люди всі - щасливі!
Миколай заводить хоровод.
Побажаєм щиро Україні миру!
Хай живе у щасті наш народ!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8530373_l1','pisniua_8530373','YouTube','https://www.youtube.com/watch?v=YwYLnydv9cw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8529756';
DELETE FROM song_versions WHERE song_id = 'pisniua_8529756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8529756';
DELETE FROM songs WHERE id = 'pisniua_8529756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8529756','Напиши мені','Музика: Тетяна Тимошенко Слова: Тетяна Тимошенко. Виконує: Мотор''ролла','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Небо, небо вітер звело,
Йдемо, йдемо, хто зна де ми?
Вдома тепло, а ми в пекло,
Вчора в гості, завтра?..

Приспів:
Напиши мені, як там у дворі
Сонце ллє промені!..
Як наша мала? Трохи підросла?
Поцілуй, обійми!..
Напиши мені, як там у дворі
Сонце ллє промені!..
Як наша мала? Трохи підросла?
Поцілуй, обійми і бережи її!
Своїх очей ти не зімкни!
І кожну мить люби!..

Знаю, важко, буде краще!
Стане небо в нас інакше!
Вдома тепло буде завжди!
Я без тебе, крапка...

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8529756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8529756','Напиши мені','Небо, небо вітер звело,
Йдемо, йдемо, хто зна де ми?
Вдома тепло, а ми в пекло,
Вчора в гості, завтра?..

Приспів:
Напиши мені, як там у дворі
Сонце ллє промені!..
Як наша мала? Трохи підросла?
Поцілуй, обійми!..
Напиши мені, як там у дворі
Сонце ллє промені!..
Як наша мала? Трохи підросла?
Поцілуй, обійми і бережи її!
Своїх очей ти не зімкни!
І кожну мить люби!..

Знаю, важко, буде краще!
Стане небо в нас інакше!
Вдома тепло буде завжди!
Я без тебе, крапка...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8529756_l1','pisniua_8529756','YouTube','https://www.youtube.com/watch?v=qPsFfiJDpfU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8529756_l2','pisniua_8529756','YouTube','https://www.youtube.com/watch?v=tbpaHsHLUWI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8528705';
DELETE FROM song_versions WHERE song_id = 'pisniua_8528705';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8528705';
DELETE FROM songs WHERE id = 'pisniua_8528705';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8528705','В небі зіронька світила','Музика: Ольга Маєвська Слова: Тетяна Дядя (Прохорова). Виконує: Ольга Маєвська','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'В Небі зіронька світила,
Була нічка ясна!
Марія сина народила
І поклала в ясла.

І радіють всі на світі,
Всі пісні співають,
Із народженням Ісуса
У цю ніч вітають.

Всіх на світі, як годиться,
Треба сповістити,
Будуть люди веселиться,
Будуть в щасті жити!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8528705'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8528705','В небі зіронька світила','В Небі зіронька світила,
Була нічка ясна!
Марія сина народила
І поклала в ясла.

І радіють всі на світі,
Всі пісні співають,
Із народженням Ісуса
У цю ніч вітають.

Всіх на світі, як годиться,
Треба сповістити,
Будуть люди веселиться,
Будуть в щасті жити!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8528705_l1','pisniua_8528705','YouTube','https://www.youtube.com/watch?v=pMzMzzk5Sps','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8533373';
DELETE FROM song_versions WHERE song_id = 'pisniua_8533373';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8533373';
DELETE FROM songs WHERE id = 'pisniua_8533373';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8533373','Люблю','Музика: Юрій Йосифович Слова: Юрій Йосифович','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я тобі кажу "Люблю!",
Наче вже не зможу це сказати.
Моє сонце, добрим будь!
Вірю, зможеш все подолати!
Крізь усе, що рве нас в пил,
Крізь розпуку і печалі
Ти пройди і не зламайсь
Кажу: Живи щасливо далі!

Приспів:
Ми з тобою разом в полі,
Де немає місця болю,
Все, що буде за нами,
Це наш шлях, це наша доля...
Ми з тобою разом в полі,
Де немає місця болю,
Все, що буде за нами,
Це наш шлях, це наша рана...

Ще тобі кажу "Пробач..."
Схоже, я не зміг, і це напевно,
Добрий мій, не плач,
Люблю тебе безмежно!

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8533373'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8533373','Люблю','Я тобі кажу "Люблю!",
Наче вже не зможу це сказати.
Моє сонце, добрим будь!
Вірю, зможеш все подолати!
Крізь усе, що рве нас в пил,
Крізь розпуку і печалі
Ти пройди і не зламайсь
Кажу: Живи щасливо далі!

Приспів:
Ми з тобою разом в полі,
Де немає місця болю,
Все, що буде за нами,
Це наш шлях, це наша доля...
Ми з тобою разом в полі,
Де немає місця болю,
Все, що буде за нами,
Це наш шлях, це наша рана...

Ще тобі кажу "Пробач..."
Схоже, я не зміг, і це напевно,
Добрий мій, не плач,
Люблю тебе безмежно!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8533373_l1','pisniua_8533373','YouTube','https://www.youtube.com/watch?v=PGFvDMlL26E','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8524979';
DELETE FROM song_versions WHERE song_id = 'pisniua_8524979';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8524979';
DELETE FROM songs WHERE id = 'pisniua_8524979';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8524979','Молитва до Матері Божої Покрови','Музика: Оксана Пічугіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Крізь роки, неначе знову,
Козаченьки йдуть в похід.
Матір Божая, Покрова,    |
Збережи наш славний рід! | (2)

Отаман нахмурив брови,
Чути шепіт козаків:
Матір Божая, Покрова,    |
Захисти від ворогів!     | (2)

Й дотепер завжди готові
Боронити рідний край!
Матір Божая, Покрова,    |
Дай нам волю й силу дай! | (2)

Хай лунає рідне слово
І у місті, і в селі:
Матір Божая, Покрова,    |
Дай нам миру на землі!   | (2)','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8524979'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8524979','Молитва до Матері Божої Покрови','Крізь роки, неначе знову,
Козаченьки йдуть в похід.
Матір Божая, Покрова,    |
Збережи наш славний рід! | (2)

Отаман нахмурив брови,
Чути шепіт козаків:
Матір Божая, Покрова,    |
Захисти від ворогів!     | (2)

Й дотепер завжди готові
Боронити рідний край!
Матір Божая, Покрова,    |
Дай нам волю й силу дай! | (2)

Хай лунає рідне слово
І у місті, і в селі:
Матір Божая, Покрова,    |
Дай нам миру на землі!   | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8524979_l1','pisniua_8524979','YouTube','https://www.youtube.com/watch?v=CTWtktmDIc0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8524979_l2','pisniua_8524979','YouTube','https://www.youtube.com/watch?v=fD9eLtrjDOo','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8533501';
DELETE FROM song_versions WHERE song_id = 'pisniua_8533501';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8533501';
DELETE FROM songs WHERE id = 'pisniua_8533501';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8533501','Святий Миколаю','Музика: Геннадій Крупник Слова: Тетяна Біла, Тарас Постніков','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Лютий вітер віє, всюди сніг біліє,
А у серці - мир та благодать,
І святкові свічечки горять.
Святим духом Божим наповниться кожен,
Хто з чистим серцем і з любов''ю зможе
З нами помолиться і заспівать:

Приспів:
Святий Миколаю, угоднику Божий,
Ти за нас молися, дітям посміхнися,
Щоб любов та віра кріпли в серці!
Святий Миколаю, я тебе благаю:
Миру і любові, чудеса святкові
Подаруй нам, Святий Миколаю!

Свято дивом грає,
Мрії нас чекають...
Ти відчуєш щастя мить,
Де ця мелодія звучить...
Вірою наділить, наші души зцілить
Чудотворець Миколай!
З нами пісню, чуєш, заспівай!

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8533501'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8533501','Святий Миколаю','Лютий вітер віє, всюди сніг біліє,
А у серці - мир та благодать,
І святкові свічечки горять.
Святим духом Божим наповниться кожен,
Хто з чистим серцем і з любов''ю зможе
З нами помолиться і заспівать:

Приспів:
Святий Миколаю, угоднику Божий,
Ти за нас молися, дітям посміхнися,
Щоб любов та віра кріпли в серці!
Святий Миколаю, я тебе благаю:
Миру і любові, чудеса святкові
Подаруй нам, Святий Миколаю!

Свято дивом грає,
Мрії нас чекають...
Ти відчуєш щастя мить,
Де ця мелодія звучить...
Вірою наділить, наші души зцілить
Чудотворець Миколай!
З нами пісню, чуєш, заспівай!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8533501_l1','pisniua_8533501','YouTube','https://www.youtube.com/watch?v=unWNArzv-xU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8529013';
DELETE FROM song_versions WHERE song_id = 'pisniua_8529013';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8529013';
DELETE FROM songs WHERE id = 'pisniua_8529013';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8529013','У волоссі осінь','Музика: Нікіта Кісельов, Влад Ступак Слова: Нікіта Кісельов, SKYLERR','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
А у її волоссі осінь,
І ноги по калюжам босі
До нього йдуть
По асфальтованій дорозі...
А у її волоссі осінь,
А у нього в серці злива,
Бо тільки з ним
Вона по-справжньому щаслива!..

А ти йому, ти йому себе всю
Віддала, не питав адресу...
Ти йому своїх рук тепло
І очей вогонь...
А він тобі, наче сонцем раннім
Дарував квіти і зізнання...
Він тобі всі свої думки,
Всю свою любов!..

Приспів.

Зелений чай жасмину,
І знову папіроси,
Вона його любила,
Як вітер любить осінь...
Він спокій твій порушив
У орендованій квартирі,
Де двоє гріли душі
У теплім кашемірі...
У його піснях,
У його думках — тихий океан...

Приспів.

Ти, наче листопад,
Заблукав у місті цьому,
Осінь їй подарував,
Проводжаючи додому...
Листя жовті падають...
Хай вони нагадують
Його любов!..

Приспів.

У волоссі осінь...
У волоссі осінь...
У волоссі осінь...
А у її волоссі осінь,
А у нього в серці злива,
Бо тільки з ним
Вона по-справжньому щаслива!..','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8529013'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8529013','У волоссі осінь','Приспів:
А у її волоссі осінь,
І ноги по калюжам босі
До нього йдуть
По асфальтованій дорозі...
А у її волоссі осінь,
А у нього в серці злива,
Бо тільки з ним
Вона по-справжньому щаслива!..

А ти йому, ти йому себе всю
Віддала, не питав адресу...
Ти йому своїх рук тепло
І очей вогонь...
А він тобі, наче сонцем раннім
Дарував квіти і зізнання...
Він тобі всі свої думки,
Всю свою любов!..

Приспів.

Зелений чай жасмину,
І знову папіроси,
Вона його любила,
Як вітер любить осінь...
Він спокій твій порушив
У орендованій квартирі,
Де двоє гріли душі
У теплім кашемірі...
У його піснях,
У його думках — тихий океан...

Приспів.

Ти, наче листопад,
Заблукав у місті цьому,
Осінь їй подарував,
Проводжаючи додому...
Листя жовті падають...
Хай вони нагадують
Його любов!..

Приспів.

У волоссі осінь...
У волоссі осінь...
У волоссі осінь...
А у її волоссі осінь,
А у нього в серці злива,
Бо тільки з ним
Вона по-справжньому щаслива!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8529013_l1','pisniua_8529013','YouTube','https://www.youtube.com/watch?v=yLj714b4IBc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8530205';
DELETE FROM song_versions WHERE song_id = 'pisniua_8530205';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8530205';
DELETE FROM songs WHERE id = 'pisniua_8530205';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8530205','Моя Україна','Слова: Аля Михайленко','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Над попелом й пилом
Здіймаються крила,
Моя Україна!
Моя Україна!

Приспів:
Незламна та сильна,   |
Ти - волі символ!     |
І вірою-правдою       |
За тебе стою, стою!.. | (2)

Перша, єдина,
Навіки, ти, слався,
Моя Україно!
Міцніша із часом!

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8530205'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8530205','Моя Україна','Над попелом й пилом
Здіймаються крила,
Моя Україна!
Моя Україна!

Приспів:
Незламна та сильна,   |
Ти - волі символ!     |
І вірою-правдою       |
За тебе стою, стою!.. | (2)

Перша, єдина,
Навіки, ти, слався,
Моя Україно!
Міцніша із часом!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_8534256';
DELETE FROM song_versions WHERE song_id = 'pisniua_8534256';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8534256';
DELETE FROM songs WHERE id = 'pisniua_8534256';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8534256','В цей Новий Рік','Музика: Ольга Бажана Слова: Ольга Бажана','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ось іще рік пройшов,
Ми всі сильнішими стали.
Хтось кохання знайшов,
А хтось зашив старі рани...
А я тебе люблю
Все більше із кожним роком,
І я до мрії йду,
Будую щастя кожним кроком!..

Приспів:
В цей Новий рік
Я попрошу одне у Бога,
Щоб мир прийшов в наш світ,
А в Україну - перемога!
В цей Новий рік
Я попрошу одне єдине,
Щоб мир прийшов в цей світ,
І щастя - в кожну родину!

Добіг до кінця старий рік,
Я ні про що не шкодую,
Що зміг, для мене зберіг,
А що не втримав, я не жалкую!..

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8534256'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8534256','В цей Новий Рік','Ось іще рік пройшов,
Ми всі сильнішими стали.
Хтось кохання знайшов,
А хтось зашив старі рани...
А я тебе люблю
Все більше із кожним роком,
І я до мрії йду,
Будую щастя кожним кроком!..

Приспів:
В цей Новий рік
Я попрошу одне у Бога,
Щоб мир прийшов в наш світ,
А в Україну - перемога!
В цей Новий рік
Я попрошу одне єдине,
Щоб мир прийшов в цей світ,
І щастя - в кожну родину!

Добіг до кінця старий рік,
Я ні про що не шкодую,
Що зміг, для мене зберіг,
А що не втримав, я не жалкую!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8534256_l1','pisniua_8534256','YouTube','https://www.youtube.com/watch?v=micSWkHkVS4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_85358';
DELETE FROM song_versions WHERE song_id = 'pisniua_85358';
DELETE FROM songs_fts WHERE song_id = 'pisniua_85358';
DELETE FROM songs WHERE id = 'pisniua_85358';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_85358','Мій зоряний світ','Музика: Олексій Семенов Слова: Ю.О.Засенко','uk','ukraine_1991',NULL,NULL,'Пісенник "Червона Рута", Київ "Музична Україна", 1993',NULL,'Вишневий сад, білява моя хата,
Що край села замріялась у світ.
Живе тут вся рідня моя крилата,     | (2)
З очима в небо, з мріями в політ.   |

Приспів:
Чумацький шлях - мій компас у світи.
Чумацький шлях - надія і тривога.
Чумацький шлях - мені по нім іти,
Як рід мій йшов від отчого порога.

Мій зореліт у далеч невідому
Мчить крізь космічне плетиво доріг.
Поверне нас Чумацький шлях додому,  | (2)
Де хата біла, батьківський поріг.   |

Приспів.','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_85358'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_85358','Мій зоряний світ','Вишневий сад, білява моя хата,
Що край села замріялась у світ.
Живе тут вся рідня моя крилата,     | (2)
З очима в небо, з мріями в політ.   |

Приспів:
Чумацький шлях - мій компас у світи.
Чумацький шлях - надія і тривога.
Чумацький шлях - мені по нім іти,
Як рід мій йшов від отчого порога.

Мій зореліт у далеч невідому
Мчить крізь космічне плетиво доріг.
Поверне нас Чумацький шлях додому,  | (2)
Де хата біла, батьківський поріг.   |

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_8526909';
DELETE FROM song_versions WHERE song_id = 'pisniua_8526909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8526909';
DELETE FROM songs WHERE id = 'pisniua_8526909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8526909','Що ти наробила?','Музика: Тіна Кароль Слова: Марія Довгаюк (Domiy)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ну що? Ну що ти наробила?
Ти заплела у свої коси
Квіти, що він тобі приносив...

Приспів:
Ну що? Ну що ти наробила?      |
Ти заплела у свої коси         |
Квіти, що він тобі приносив... | (2)

А я, я казати більш не буду,
Гляну в очі, все розкажуть.
Рятуватися від люду,
Як є любов, то вам добре буде...
Ая-яй, і час пройшов,
І ти ту зірку не знайшов...
Чи то згадав, чи то збагнув,
Коли любов її відчув...

Приспів.

Ну що? Ну що ти наробила?
Ти заплела у свої коси
Квіти, що він тобі приносив...','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8526909'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8526909','Що ти наробила?','Ну що? Ну що ти наробила?
Ти заплела у свої коси
Квіти, що він тобі приносив...

Приспів:
Ну що? Ну що ти наробила?      |
Ти заплела у свої коси         |
Квіти, що він тобі приносив... | (2)

А я, я казати більш не буду,
Гляну в очі, все розкажуть.
Рятуватися від люду,
Як є любов, то вам добре буде...
Ая-яй, і час пройшов,
І ти ту зірку не знайшов...
Чи то згадав, чи то збагнув,
Коли любов її відчув...

Приспів.

Ну що? Ну що ти наробила?
Ти заплела у свої коси
Квіти, що він тобі приносив...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8526909_l1','pisniua_8526909','YouTube','https://www.youtube.com/watch?v=SM8tLkIDNR4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8526909_l2','pisniua_8526909','YouTube','https://www.youtube.com/watch?v=ugqfyIZ5BgU','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8533979';
DELETE FROM song_versions WHERE song_id = 'pisniua_8533979';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8533979';
DELETE FROM songs WHERE id = 'pisniua_8533979';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8533979','Славний батько наш Петлюра','Музика: Яків Степовий Слова: п. Огнев. Виконує: Хорея Козацька','uk','ukraine_1991',NULL,NULL,'Записи виконання Хореї Козацької',NULL,'Славний батько наш Петлюра,
Отаман завзятий,
Зібрав військо українське
Селян захищати!

Приспів:
І козацтво бойове,
Товариство удале
Йде на поміч отаману    |
В його тяжкій боротьбі! | (2)

Захищає вже три роки
України долю
І боронить з бідним людом
І землю, і волю!

Приспів.

Хоче батько наш Петлюра,
Щоб бідні селяни
Не робили на комуну,
Не робили й пану!

Приспів.

І посивів вже Петлюра,
Отаман завзятий -
Йому тяжко, йому важко
За правду стояти!

Приспів.

"Але правда переможе",-
Так Петлюра каже.
І по ньому на Вкраїні
Слава не поляже!

Приспів. (2)','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8533979'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8533979','Славний батько наш Петлюра','Славний батько наш Петлюра,
Отаман завзятий,
Зібрав військо українське
Селян захищати!

Приспів:
І козацтво бойове,
Товариство удале
Йде на поміч отаману    |
В його тяжкій боротьбі! | (2)

Захищає вже три роки
України долю
І боронить з бідним людом
І землю, і волю!

Приспів.

Хоче батько наш Петлюра,
Щоб бідні селяни
Не робили на комуну,
Не робили й пану!

Приспів.

І посивів вже Петлюра,
Отаман завзятий -
Йому тяжко, йому важко
За правду стояти!

Приспів.

"Але правда переможе",-
Так Петлюра каже.
І по ньому на Вкраїні
Слава не поляже!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8533979_l1','pisniua_8533979','YouTube','https://www.youtube.com/watch?v=3NNnEXc1lXY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8530950';
DELETE FROM song_versions WHERE song_id = 'pisniua_8530950';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8530950';
DELETE FROM songs WHERE id = 'pisniua_8530950';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8530950','Сів на трактор Миколай','Музика: Андрій Мильчук Слова: Зоряна Лісевич','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Сів на трактор Миколай
І поїхав через гай,
Через поле, через бір,
Дир-дир-дир-дир-дир-дир-дир!

Миколай везе пакунки -
Зайченятам подарунки:
Солодесенькі морквинки
І хрумкенькі капустинки!

Приспів.

Миколай везе пакунки -
Чемній білочці дарунки:
Різні жолуді й горішки,
І смачних грибочків трішки.

Приспів

Миколай везе пакунки -
Їжачкові подарунки:
Модну в''язану беретку,
Безрукавку і шкарпетки.

Приспів.

Миколай везе пакунки -
Чемним мишкам подарунки:
Будуть мати сірі мишки
Сир, і бублики, і книжку!

Приспів.

Миколай везе пакунки -
Для єнота дарунки.
Подарує він єноту
І сопілочку, і ноти.

Приспів.

Миколай везе пакунки -
Ведмежатку подарунки.
Подарує ведмежатку
Мед у бочці і в горнятку!

Приспів.

Миколай везе пакунки -
Для лисички подарунки:
Дуже теплі рукавички
І у квіточки спідничку.

Приспів.

Миколай везе пакунок -
Буде вовку подарунок.
Це - новесенькі санчата
Щоб із гірки міг з''їжджати!
Сів на трактор Миколай!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8530950'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8530950','Сів на трактор Миколай','Приспів:
Сів на трактор Миколай
І поїхав через гай,
Через поле, через бір,
Дир-дир-дир-дир-дир-дир-дир!

Миколай везе пакунки -
Зайченятам подарунки:
Солодесенькі морквинки
І хрумкенькі капустинки!

Приспів.

Миколай везе пакунки -
Чемній білочці дарунки:
Різні жолуді й горішки,
І смачних грибочків трішки.

Приспів

Миколай везе пакунки -
Їжачкові подарунки:
Модну в''язану беретку,
Безрукавку і шкарпетки.

Приспів.

Миколай везе пакунки -
Чемним мишкам подарунки:
Будуть мати сірі мишки
Сир, і бублики, і книжку!

Приспів.

Миколай везе пакунки -
Для єнота дарунки.
Подарує він єноту
І сопілочку, і ноти.

Приспів.

Миколай везе пакунки -
Ведмежатку подарунки.
Подарує ведмежатку
Мед у бочці і в горнятку!

Приспів.

Миколай везе пакунки -
Для лисички подарунки:
Дуже теплі рукавички
І у квіточки спідничку.

Приспів.

Миколай везе пакунок -
Буде вовку подарунок.
Це - новесенькі санчата
Щоб із гірки міг з''їжджати!
Сів на трактор Миколай!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8530950_l1','pisniua_8530950','YouTube','https://www.youtube.com/watch?v=7eFCC0itwIk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8534552';
DELETE FROM song_versions WHERE song_id = 'pisniua_8534552';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8534552';
DELETE FROM songs WHERE id = 'pisniua_8534552';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8534552','Народився','Музика: Олег Майовський Слова: Олег Майовський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Кожен день ми чуєм щось то там, то тут,
Там війна, там голод, бомби серце рвуть...
Це не є щось нове, так вже десь було,
Але Бог дав Сина, щоб забрати зло!

Приспів:
Народився нам Христос Спаситель! -
Дарував надію Бог нам у серця!
Народився, в тілі поселився,
І своїм життям нам показав Отця!

Навіть там, де мирно і в достатку все,
Без Ісуса сили гріх, біду несем.
Де знайти ту силу? Спокій де знайти? -
В імені Ісуса, лиш покличеш ти!

Приспів.

Скоро вийде сонечко, хмарка перейде,
Бо у моє серденько Божий мир прийде!
Там, де бомби рвалися, зацвітуть сади,
Щоби не ставалося, до Христа прийди!

Приспів. (2)

Христос народився!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8534552'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8534552','Народився','Кожен день ми чуєм щось то там, то тут,
Там війна, там голод, бомби серце рвуть...
Це не є щось нове, так вже десь було,
Але Бог дав Сина, щоб забрати зло!

Приспів:
Народився нам Христос Спаситель! -
Дарував надію Бог нам у серця!
Народився, в тілі поселився,
І своїм життям нам показав Отця!

Навіть там, де мирно і в достатку все,
Без Ісуса сили гріх, біду несем.
Де знайти ту силу? Спокій де знайти? -
В імені Ісуса, лиш покличеш ти!

Приспів.

Скоро вийде сонечко, хмарка перейде,
Бо у моє серденько Божий мир прийде!
Там, де бомби рвалися, зацвітуть сади,
Щоби не ставалося, до Христа прийди!

Приспів. (2)

Христос народився!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8534552_l1','pisniua_8534552','YouTube','https://www.youtube.com/watch?v=f7hiwVeZNgc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8536501';
DELETE FROM song_versions WHERE song_id = 'pisniua_8536501';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8536501';
DELETE FROM songs WHERE id = 'pisniua_8536501';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8536501','Різдво іде','Музика: Соломія Гордєєва Слова: Соломія Гордєєва','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ми всі кудись пороз''їжджались
Шукати спокій і добро,
Але ми щиро помолились,
Бо щастя там,
Де рідний дім і тепло,
Де метушня,
Святкова й запашна кутя,
Де спокій та вогонь любові,
Де снігом вкрите наше місто,
А ми чекаємо Різдва!

Приспів:
Іде Різдво у кожен дім,
І запашна кутя удасться,
Ти не забудь, хто там за нас
Виборює свободи щастя!
І пам''ятай, хто вже з небес
Лиш поглядає все за нами,
Прийшов Святвечір в кожен дім,
І хоч пролито сльозами...

Ісус покладений у яслах
Дає надію нам усім,
І навіть там, де все погасло,
Він принесе любов та мир!
Хтось у дорозі у різдвяні свята,
Хтось молиться залишитись живим,
А хтось так мріє бути в хаті,
У те Різдво, де теплий дім.

Приспів.

Різдво є вічне й неповторне,
Хтось молиться,
Хтось просить каяття,
А я у Бога лиш попрошу,
Щоб дав нам миру для життя!
І знов я повернусь додому,
Бо там залишилась моя сім''я!..

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8536501'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8536501','Різдво іде','Ми всі кудись пороз''їжджались
Шукати спокій і добро,
Але ми щиро помолились,
Бо щастя там,
Де рідний дім і тепло,
Де метушня,
Святкова й запашна кутя,
Де спокій та вогонь любові,
Де снігом вкрите наше місто,
А ми чекаємо Різдва!

Приспів:
Іде Різдво у кожен дім,
І запашна кутя удасться,
Ти не забудь, хто там за нас
Виборює свободи щастя!
І пам''ятай, хто вже з небес
Лиш поглядає все за нами,
Прийшов Святвечір в кожен дім,
І хоч пролито сльозами...

Ісус покладений у яслах
Дає надію нам усім,
І навіть там, де все погасло,
Він принесе любов та мир!
Хтось у дорозі у різдвяні свята,
Хтось молиться залишитись живим,
А хтось так мріє бути в хаті,
У те Різдво, де теплий дім.

Приспів.

Різдво є вічне й неповторне,
Хтось молиться,
Хтось просить каяття,
А я у Бога лиш попрошу,
Щоб дав нам миру для життя!
І знов я повернусь додому,
Бо там залишилась моя сім''я!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8536501_l1','pisniua_8536501','YouTube','https://www.youtube.com/watch?v=QSfIzq9JiB0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8531878';
DELETE FROM song_versions WHERE song_id = 'pisniua_8531878';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8531878';
DELETE FROM songs WHERE id = 'pisniua_8531878';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8531878','Мадонна','Музика: Собаки в Космосі Слова: Сергій Жадан','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Пісню виконує Жадан і Собаки (альбом: Мадонна).','Сімнадцять років,
Українська філологія,
У неї біографія -
Суцільна наркологія.
Вона і на похмілля
Говорила з акцентом,
Навіть власного тата
Вона звала абсентом.
Вона так усе робила -
Палячи й руйнуючи,
Навіть в крематорій
Вона бігала танцюючи.
Співи з сатаною і її
Церковні твісти,
Я все життя говорю,
Щоб про неї розповісти.

Приспів:
Але як вона сварилася
І як вона кричала!
Як вона засмучувалась,
Як вона кінчала!
Обкурена мадонна -
Богоматір телецентрів,
Справжня суперзірка
Наших перших концертів.

Харківські торчки,
Провідники і стюардеси,
Громлені вітрини,
Переплутані адреси,
Вулиці свободи,
Космонавти і пірати.
Давай, принцесо, тішитись -
Співай про опіати!
Співай про нашу радість,
Співай про нашу щедрість,
Твори свою історію,
Лікуй її ущербність.
Це наша чорна музика
Нестримна і невтомна,
Це нам співає госпели
Обкурена мадонна.

Приспів.

Як її виносило
І як її здіймало,
Як її викручувало,
Як її ламало.
Радісні маньяки,
Роздовбаї та бандити -
Всі, кого вона
Уперто вчила любити.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8531878'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8531878','Мадонна','Сімнадцять років,
Українська філологія,
У неї біографія -
Суцільна наркологія.
Вона і на похмілля
Говорила з акцентом,
Навіть власного тата
Вона звала абсентом.
Вона так усе робила -
Палячи й руйнуючи,
Навіть в крематорій
Вона бігала танцюючи.
Співи з сатаною і її
Церковні твісти,
Я все життя говорю,
Щоб про неї розповісти.

Приспів:
Але як вона сварилася
І як вона кричала!
Як вона засмучувалась,
Як вона кінчала!
Обкурена мадонна -
Богоматір телецентрів,
Справжня суперзірка
Наших перших концертів.

Харківські торчки,
Провідники і стюардеси,
Громлені вітрини,
Переплутані адреси,
Вулиці свободи,
Космонавти і пірати.
Давай, принцесо, тішитись -
Співай про опіати!
Співай про нашу радість,
Співай про нашу щедрість,
Твори свою історію,
Лікуй її ущербність.
Це наша чорна музика
Нестримна і невтомна,
Це нам співає госпели
Обкурена мадонна.

Приспів.

Як її виносило
І як її здіймало,
Як її викручувало,
Як її ламало.
Радісні маньяки,
Роздовбаї та бандити -
Всі, кого вона
Уперто вчила любити.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8531878_l1','pisniua_8531878','YouTube','https://www.youtube.com/watch?v=4dIaMmFlX5s','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8533654';
DELETE FROM song_versions WHERE song_id = 'pisniua_8533654';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8533654';
DELETE FROM songs WHERE id = 'pisniua_8533654';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8533654','До мами на Різдво','Музика: Володимир Кузнєцов Слова: Галина Пігут-Николишин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'А я до мами їду на Різдво,
Вечірня зірка душу зігріває.
Свята вечеря зібрана давно
І у вікно матуся виглядає!
Здалека я побачу рідний дім,
Ялинку в сяйві прямо біля хати!
І на даху розгойдується дим,
А на порозі сива рідна мати.

Приспів:
А за вікном так сипле білий сніг, |
Зоря різдвяна ясно так сіяє,      |
І колядник нам звісточку приніс,  |
Що вже Ісусик в яслах нас вітає!  | (2)

І смачно так запахли пампушки,
Кутя така солодка тільки в мами,
Згадалося, як були ми дітьми,
І так раділи з маком калачами.
Запалить свічку мама на столі,
Молитву щиру тихо прочитає,
І до вечері сядемо усі,
Згадаєм тих, кого уже немає...

Приспів.
А за вікном так сипле білий сніг...
Сніг!.. Сніг!..','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8533654'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8533654','До мами на Різдво','А я до мами їду на Різдво,
Вечірня зірка душу зігріває.
Свята вечеря зібрана давно
І у вікно матуся виглядає!
Здалека я побачу рідний дім,
Ялинку в сяйві прямо біля хати!
І на даху розгойдується дим,
А на порозі сива рідна мати.

Приспів:
А за вікном так сипле білий сніг, |
Зоря різдвяна ясно так сіяє,      |
І колядник нам звісточку приніс,  |
Що вже Ісусик в яслах нас вітає!  | (2)

І смачно так запахли пампушки,
Кутя така солодка тільки в мами,
Згадалося, як були ми дітьми,
І так раділи з маком калачами.
Запалить свічку мама на столі,
Молитву щиру тихо прочитає,
І до вечері сядемо усі,
Згадаєм тих, кого уже немає...

Приспів.
А за вікном так сипле білий сніг...
Сніг!.. Сніг!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8533654_l1','pisniua_8533654','YouTube','https://www.youtube.com/watch?v=iPwcaSyue6I','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_85501';
DELETE FROM song_versions WHERE song_id = 'pisniua_85501';
DELETE FROM songs_fts WHERE song_id = 'pisniua_85501';
DELETE FROM songs WHERE id = 'pisniua_85501';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_85501','Новий день','Музика: Гурт "Океан Ельзи" Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'текст (основа) - http://www.okeanelzy.com/ua/','Підбір акордів: smash','Riff 1  * (див. після основного тексту)
Riff 2

Чу- єш, як весна день починає,
Бачиш, як сонце зустрiчає?
Там, де вода воду шукає,
Ти побувай.

Приспiв (Riff 1):
F
Знову і знову видно з вікна
Наше розпатлане сонце - і знов
Новий день прийшов.

Riff 2 A

Чуєш, як весна день починає,
Бачиш, як тiнь в стелю тiкає?
Голосом дивним нас вiтає
Цей новий день.

Приспiв (Riff 1)

Riff 2 A

Чуєш, як весна день починає,
Бачиш, як краплями падає вниз
Там де вода воду шукає
Ти побувай

Solo                       |--1-по-3-------\
E||------------------------|------------------------||------------------------||
B||------------------------|--------------3b---3----||--------------3bs-5s3---||
G||*-2--2--5--2--2--5------|--2--5--5--2-----------*||--2--5--5--2------------||
D||*-----------------------|-----------------------*||------------------------||
A||------------------------|------------------------||------------------------||
E||------------------------|------------------------||------------------------||

Приспiв (Riff 1)

Riff 1:
F
E||--13~-----12------13----|--13~-----12------13----|
B||------------------------|------------------------|
G||------------------------|------------------------|
D||------------------------|------------------------|
A||------------------------|------------------------|
E||------------------------|------------------------|

--13~-----12------13----|--15~-------------------|

--13~-----12------13----|--13~-----12------13----|
--13~-----12------10----|--7~---------------|

Riff2:
E||---------------------------|-----------------------------|
B||---5--5--5--3--5--5--5--3--|--5--3--5--6--8--6--5h6h5-3--|
G||*--------------------------|-----------------------------|
D||*--------------------------|-----------------------------|
A||---------------------------|-----------------------------|
E||---------------------------|-----------------------------|

|-1-по-3---------------------\
--5--5--5--3--5--5--5--3--|--5--5--5--5--5--3--1h3h1-0---||

-4-----------------------------\
--5--3--1--0--1--0--------|-------------------|
--------------------2--0--|--2----------------|

Riff 2 A:
|---5--5--5--3--5~-------|------5--6--8--6--5h6h5-3---||
--5--5--5--3--5--5------|------5--6--8--6--5h6h5-3--|--5--5--5--3--5----x--x--|
--------------------------|--5~---------------||
--3--1--0--1h-0-----------|-------------------||
-----------------2--0h-2--|-------------------||','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_85501'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_85501','Новий день','Riff 1  * (див. після основного тексту)
Riff 2

Чу- єш, як весна день починає,
Бачиш, як сонце зустрiчає?
Там, де вода воду шукає,
Ти побувай.

Приспiв (Riff 1):
F
Знову і знову видно з вікна
Наше розпатлане сонце - і знов
Новий день прийшов.

Riff 2 A

Чуєш, як весна день починає,
Бачиш, як тiнь в стелю тiкає?
Голосом дивним нас вiтає
Цей новий день.

Приспiв (Riff 1)

Riff 2 A

Чуєш, як весна день починає,
Бачиш, як краплями падає вниз
Там де вода воду шукає
Ти побувай

Solo                       |--1-по-3-------\
E||------------------------|------------------------||------------------------||
B||------------------------|--------------3b---3----||--------------3bs-5s3---||
G||*-2--2--5--2--2--5------|--2--5--5--2-----------*||--2--5--5--2------------||
D||*-----------------------|-----------------------*||------------------------||
A||------------------------|------------------------||------------------------||
E||------------------------|------------------------||------------------------||

Приспiв (Riff 1)

Riff 1:
F
E||--13~-----12------13----|--13~-----12------13----|
B||------------------------|------------------------|
G||------------------------|------------------------|
D||------------------------|------------------------|
A||------------------------|------------------------|
E||------------------------|------------------------|

--13~-----12------13----|--15~-------------------|

--13~-----12------13----|--13~-----12------13----|
--13~-----12------10----|--7~---------------|

Riff2:
E||---------------------------|-----------------------------|
B||---5--5--5--3--5--5--5--3--|--5--3--5--6--8--6--5h6h5-3--|
G||*--------------------------|-----------------------------|
D||*--------------------------|-----------------------------|
A||---------------------------|-----------------------------|
E||---------------------------|-----------------------------|

|-1-по-3---------------------\
--5--5--5--3--5--5--5--3--|--5--5--5--5--5--3--1h3h1-0---||

-4-----------------------------\
--5--3--1--0--1--0--------|-------------------|
--------------------2--0--|--2----------------|

Riff 2 A:
|---5--5--5--3--5~-------|------5--6--8--6--5h6h5-3---||
--5--5--5--3--5--5------|------5--6--8--6--5h6h5-3--|--5--5--5--3--5----x--x--|
--------------------------|--5~---------------||
--3--1--0--1h-0-----------|-------------------||
-----------------2--0h-2--|-------------------||');
DELETE FROM song_links WHERE song_id = 'pisniua_8533219';
DELETE FROM song_versions WHERE song_id = 'pisniua_8533219';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8533219';
DELETE FROM songs WHERE id = 'pisniua_8533219';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8533219','На Різдво','Музика: Tanya Navrotski Слова: Mariya Zvirid','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Звучала ніч різдвяними акордами,
Лунав над містом ангельський хорал,
І зорі мерехтіли в небі нотами,
Та світ свого Месію не чекав.
І я жила у темряві загублена,
Не знала про Спасителя Христа,
Та Він мене знайшов, я Ним відкуплена,
Тепер звучить у серці ніч свята!

Приспів:
На Різдво зійшла на землю радість,
Бо Спаситель народився нам!
Хай земля свого Царя прославить,
І несе подяки фіміам!

Спаситель народився в світ для кожного,
Правдива ця історія жива,
Знайди ти місце в серці Сину Божому
У дивну ніч Христового Різдва!

Приспів.

Різдво - це відкрите небо,
Це мир у людських серцях!
Народжений Спас - для тебе
Дарунок від Бога Отця!

Приспів.

Хай земля свого Царя прославить,
І несе подяки фіміам!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8533219'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8533219','На Різдво','Звучала ніч різдвяними акордами,
Лунав над містом ангельський хорал,
І зорі мерехтіли в небі нотами,
Та світ свого Месію не чекав.
І я жила у темряві загублена,
Не знала про Спасителя Христа,
Та Він мене знайшов, я Ним відкуплена,
Тепер звучить у серці ніч свята!

Приспів:
На Різдво зійшла на землю радість,
Бо Спаситель народився нам!
Хай земля свого Царя прославить,
І несе подяки фіміам!

Спаситель народився в світ для кожного,
Правдива ця історія жива,
Знайди ти місце в серці Сину Божому
У дивну ніч Христового Різдва!

Приспів.

Різдво - це відкрите небо,
Це мир у людських серцях!
Народжений Спас - для тебе
Дарунок від Бога Отця!

Приспів.

Хай земля свого Царя прославить,
І несе подяки фіміам!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8533219_l1','pisniua_8533219','YouTube','https://www.youtube.com/watch?v=3x43ubslc9Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8543714';
DELETE FROM song_versions WHERE song_id = 'pisniua_8543714';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8543714';
DELETE FROM songs WHERE id = 'pisniua_8543714';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8543714','Папороті цвіт','Музика: ШІ Слова: Ольга Калина','uk','ukraine_before_1917',NULL,NULL,'авторське подання','Пісню виконує НП Октава.','В чарівну ніч, в ніч на Купала
Русалки сплутали сліди.
Як тихо Мавка заспівала,
То всіх манили до води.
А спів той нісся над водою,
Торкавсь закоханих сердець.
Там ми зустрілися з тобою
Й ти запросив мене в танець.

Приспів:
Шукають люди в ніч Купали
Чарівний папороті цвіт,
Щоб квітка щастя дарувала,
Та десь згубивсь до неї слід...
Шукаю щастя, як шукала,
Хоча минуло стільки літ.

Плету і пущу я віночок,
Нехай пливе він по воді.
Сама я вийду на місточок,
Де ми ходили молоді,
Де на Купала аж до ранку
Шукали папороті цвіт,
Русалки з річки на світанку
В тумані наш сховали слід.

Приспів.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8543714'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8543714','Папороті цвіт','В чарівну ніч, в ніч на Купала
Русалки сплутали сліди.
Як тихо Мавка заспівала,
То всіх манили до води.
А спів той нісся над водою,
Торкавсь закоханих сердець.
Там ми зустрілися з тобою
Й ти запросив мене в танець.

Приспів:
Шукають люди в ніч Купали
Чарівний папороті цвіт,
Щоб квітка щастя дарувала,
Та десь згубивсь до неї слід...
Шукаю щастя, як шукала,
Хоча минуло стільки літ.

Плету і пущу я віночок,
Нехай пливе він по воді.
Сама я вийду на місточок,
Де ми ходили молоді,
Де на Купала аж до ранку
Шукали папороті цвіт,
Русалки з річки на світанку
В тумані наш сховали слід.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8543714_l1','pisniua_8543714','YouTube','https://www.youtube.com/watch?v=UaE-zx7rZTQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8538171';
DELETE FROM song_versions WHERE song_id = 'pisniua_8538171';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8538171';
DELETE FROM songs WHERE id = 'pisniua_8538171';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8538171','Карі очі','Музика: Назарій Савчук, Владислав Ступак Слова: Назарій Савчук, Владислав Ступак','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Не дають заснути
Твої карі очі,
А може це любов,
Але ти так не хочеш...

Приспів:
Не дають заснути
Твої карі очі,
А може це любов,
Але ти так не хочеш...
Не дають заснути
Твої карі очі,
А може це любов,
Але ти так не хочеш...
Я танцюю сам п''яний
В обіймах ночі,
А серце шепоче:
Я до тебе так хочу!..

Ти на танцполі, твої скелети
Знову просяться на волю.
А може я - на картах - твоя доля?..
Тобі не притаманна ця свобода,
Не сип на рану солі...
Ти - моя параноя,
Не поможе антидот.
Погляд королеви,
Холодом вбиваєш знов...
Нагадує про тебе
Навіть лютий за вікном...
Ти - моя залежність,
А, може, це любов?..

Приспів.

Не дають заснути...  |
А, може, це любов?.. | (2)

Я відчуваю ритм
Твого серцебиття,
Я бачу, як ти граєшся
Зі мною без кінця...
Парфумів твоїх аромат,
Що не дає забути,
Що не дає заснути...
Навіщо ж ти зі мною так?..
Всі шанси на "зеро",
Але я кину кості,
Азарт поза межі,
Втрачається розум...
Рожева сукня і карі очі,
Що ж ти наробила?..
Чи хто це напророчив?..

Приспів. (2)

Не дають заснути...  |
А, може, це любов?.. | (2)','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8538171'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8538171','Карі очі','Не дають заснути
Твої карі очі,
А може це любов,
Але ти так не хочеш...

Приспів:
Не дають заснути
Твої карі очі,
А може це любов,
Але ти так не хочеш...
Не дають заснути
Твої карі очі,
А може це любов,
Але ти так не хочеш...
Я танцюю сам п''яний
В обіймах ночі,
А серце шепоче:
Я до тебе так хочу!..

Ти на танцполі, твої скелети
Знову просяться на волю.
А може я - на картах - твоя доля?..
Тобі не притаманна ця свобода,
Не сип на рану солі...
Ти - моя параноя,
Не поможе антидот.
Погляд королеви,
Холодом вбиваєш знов...
Нагадує про тебе
Навіть лютий за вікном...
Ти - моя залежність,
А, може, це любов?..

Приспів.

Не дають заснути...  |
А, може, це любов?.. | (2)

Я відчуваю ритм
Твого серцебиття,
Я бачу, як ти граєшся
Зі мною без кінця...
Парфумів твоїх аромат,
Що не дає забути,
Що не дає заснути...
Навіщо ж ти зі мною так?..
Всі шанси на "зеро",
Але я кину кості,
Азарт поза межі,
Втрачається розум...
Рожева сукня і карі очі,
Що ж ти наробила?..
Чи хто це напророчив?..

Приспів. (2)

Не дають заснути...  |
А, може, це любов?.. | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8538171_l1','pisniua_8538171','YouTube','https://www.youtube.com/watch?v=94lwAXNgEtg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8537575';
DELETE FROM song_versions WHERE song_id = 'pisniua_8537575';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8537575';
DELETE FROM songs WHERE id = 'pisniua_8537575';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8537575','Марія Пречиста','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Марія Пречиста,
Марія Пречиста
По світу ходила,
По світу ходила.
Малого Ісуса,
Малого Ісуса
В утробі носила,
В утробі носила.

Та й пішла Пречиста,
Та й пішла Пречиста
До славного міста,
До славного міста!
Просилася на ніч,
Просила на ніч
В ґазди багатого,
В ґазди багатого.

Ой, ґаздо-ґаздочко,
Ой, ґаздо-ґаздочко,
Ще й господарочку!
Ще й господарочку!
Пустіть мене на ніч,
Пустіть мене на ніч
До свого домочку!
До свого домочку!

Він не знав, що має,
Він не знав, що має
З Пречистов робити...
З Пречистов робити...
Та й пішов до віта,
Та й пішов до віта,
З вітом ся радити!
З вітом ся радити!

Віт йому наказав,
віт йому наказав
Пречисту прогнати...
Пречисту прогнати...
Пречисту прогнати,
Пречисту прогнати,
Псами натравляти,
Псами натравляти.
Пси Марію знали,
Пси Марію знали,
Та й її не кусали,
Та й її не кусали.

Та й пішла Пречиста,
Та й пішла Пречиста
До другого міста.
До другого міста.
Просилася на ніч,
Просилася на ніч
В ґазди бідненького!
В ґазди бідненького!
Ой, ґаздо-ґаздочко,
Ой, ґаздо-ґаздочко,
Ще й господарочку!
Ще й господарочку!
Прийміть мене на ніч,
Прийміть мене на ніч
До свого домочку!
До свого домочку!

В мене хати нема,
В мене хати нема,
Лиш одна шопчина,
Лиш одна шопчина.
В ній переночує,
В ній переночує
Одна челядина,
Одна челядина.

Вночі опівночі,
Вночі опівночі
Жінка ся збудила,
Жінка ся збудила.
Вставай, чоловіче,
Вставай, чоловіче,
Є якась новина!
Є якась новина!
Бо над нашов шопов,
Бо над нашов шопов
Зірка засвітила!
Зірка засвітила!
То Пречиста Діва, |
То Пречиста Діва  |
Сина породила!    |
Сина породила!    | (2)','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''cat:suchasni-pisni-rizdvo'', ''Пісні до Богородиці'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8537575'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8537575','Марія Пречиста','Марія Пречиста,
Марія Пречиста
По світу ходила,
По світу ходила.
Малого Ісуса,
Малого Ісуса
В утробі носила,
В утробі носила.

Та й пішла Пречиста,
Та й пішла Пречиста
До славного міста,
До славного міста!
Просилася на ніч,
Просила на ніч
В ґазди багатого,
В ґазди багатого.

Ой, ґаздо-ґаздочко,
Ой, ґаздо-ґаздочко,
Ще й господарочку!
Ще й господарочку!
Пустіть мене на ніч,
Пустіть мене на ніч
До свого домочку!
До свого домочку!

Він не знав, що має,
Він не знав, що має
З Пречистов робити...
З Пречистов робити...
Та й пішов до віта,
Та й пішов до віта,
З вітом ся радити!
З вітом ся радити!

Віт йому наказав,
віт йому наказав
Пречисту прогнати...
Пречисту прогнати...
Пречисту прогнати,
Пречисту прогнати,
Псами натравляти,
Псами натравляти.
Пси Марію знали,
Пси Марію знали,
Та й її не кусали,
Та й її не кусали.

Та й пішла Пречиста,
Та й пішла Пречиста
До другого міста.
До другого міста.
Просилася на ніч,
Просилася на ніч
В ґазди бідненького!
В ґазди бідненького!
Ой, ґаздо-ґаздочко,
Ой, ґаздо-ґаздочко,
Ще й господарочку!
Ще й господарочку!
Прийміть мене на ніч,
Прийміть мене на ніч
До свого домочку!
До свого домочку!

В мене хати нема,
В мене хати нема,
Лиш одна шопчина,
Лиш одна шопчина.
В ній переночує,
В ній переночує
Одна челядина,
Одна челядина.

Вночі опівночі,
Вночі опівночі
Жінка ся збудила,
Жінка ся збудила.
Вставай, чоловіче,
Вставай, чоловіче,
Є якась новина!
Є якась новина!
Бо над нашов шопов,
Бо над нашов шопов
Зірка засвітила!
Зірка засвітила!
То Пречиста Діва, |
То Пречиста Діва  |
Сина породила!    |
Сина породила!    | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8537575_l1','pisniua_8537575','YouTube','https://www.youtube.com/watch?v=BKPP3vQUCWc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8541474';
DELETE FROM song_versions WHERE song_id = 'pisniua_8541474';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8541474';
DELETE FROM songs WHERE id = 'pisniua_8541474';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8541474','Пелюстки старовинного романсу','Музика: Лариса Сокольська Слова: Ліна Костенко. Виконує: Лариса Сокольська','uk','ukraine_1991',NULL,'2025','аудіозапис','Музику написано 04.02.2025 р. о 00:35 год. Пісню виконує Лариса Сокольська (альбом: Пісні Лариси Сокольської).','Той клавесин і плакав, і плекав
Чужу печаль. Свічки горіли кволо.
Старий співак співав, як пелікан,
Проціджуючи музику крізь воло.

Він був старий і плакав не про нас.
Той голос був як з іншої акустики.
Але губив під люстрами романс
Прекрасних слів одквітлі вже пелюстки.

На голови, де, наче солов''ї,
Своє гніздо щодня звивають будні,
Упав романс, як він любив її
І говорив слова їй незабутні.

Він цей вокал підносив, як бокал.
У нього був метелик на маніжці.
Якісь красуні, всупереч вікам,
До нього йшли по місячній доріжці.

А потім зникла музика. Антракт.
Усі мужчини говорили прозою.
Жінки мовчали. Все було не так.
Їм не хотілось пива і морозива.

Старий співав без гриму і гримас.
Були слова палкими й несучасними.
О, заспівайте дівчині романс!
Жінки втомились бути не прекрасними','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8541474'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8541474','Пелюстки старовинного романсу','Той клавесин і плакав, і плекав
Чужу печаль. Свічки горіли кволо.
Старий співак співав, як пелікан,
Проціджуючи музику крізь воло.

Він був старий і плакав не про нас.
Той голос був як з іншої акустики.
Але губив під люстрами романс
Прекрасних слів одквітлі вже пелюстки.

На голови, де, наче солов''ї,
Своє гніздо щодня звивають будні,
Упав романс, як він любив її
І говорив слова їй незабутні.

Він цей вокал підносив, як бокал.
У нього був метелик на маніжці.
Якісь красуні, всупереч вікам,
До нього йшли по місячній доріжці.

А потім зникла музика. Антракт.
Усі мужчини говорили прозою.
Жінки мовчали. Все було не так.
Їм не хотілось пива і морозива.

Старий співав без гриму і гримас.
Були слова палкими й несучасними.
О, заспівайте дівчині романс!
Жінки втомились бути не прекрасними');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8541474_l1','pisniua_8541474','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8536950';
DELETE FROM song_versions WHERE song_id = 'pisniua_8536950';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8536950';
DELETE FROM songs WHERE id = 'pisniua_8536950';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8536950','Пісня миру','Музика: Володимир Хозінський Слова: Володимир Хозінський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Із ангелом звеличимо Христа,
Рожденного з Пречистої Марії!
Спасіння нашого життя
Любов''ю радістю, зігріє!
Це Він прийшов до мене із небес,
Щоб показати всю любов із раю!
Христос родився, мир цей із небес
На землю піснею лунає!

Приспів:
Радуйся, земля! Втішайся, небо!
Бог наш народивсь! Слава Йому!
Він нам поверне спокій, як треба,
Тож пісню миру співай йому!
Не бійся, мій народе, я з тобою,
Щоби утерти сльози всі твої!
Це Я - надія зраненого роду,
Що так віддавна молиться Тобі.

Приношу мир мій з неба я на землю,
Хай колядою він летить, де ти!
У твоє серце і твої потреби
Прийшов я наповнити в цю мить!

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8536950'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8536950','Пісня миру','Із ангелом звеличимо Христа,
Рожденного з Пречистої Марії!
Спасіння нашого життя
Любов''ю радістю, зігріє!
Це Він прийшов до мене із небес,
Щоб показати всю любов із раю!
Христос родився, мир цей із небес
На землю піснею лунає!

Приспів:
Радуйся, земля! Втішайся, небо!
Бог наш народивсь! Слава Йому!
Він нам поверне спокій, як треба,
Тож пісню миру співай йому!
Не бійся, мій народе, я з тобою,
Щоби утерти сльози всі твої!
Це Я - надія зраненого роду,
Що так віддавна молиться Тобі.

Приношу мир мій з неба я на землю,
Хай колядою він летить, де ти!
У твоє серце і твої потреби
Прийшов я наповнити в цю мить!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8536950_l1','pisniua_8536950','YouTube','https://www.youtube.com/watch?v=1ANPaZCj7-U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8552';
DELETE FROM song_versions WHERE song_id = 'pisniua_8552';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8552';
DELETE FROM songs WHERE id = 'pisniua_8552';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8552','Сину, качки летять','Музика: Олександр Білаш Слова: Михайло Ткач','uk','ukraine_1991',NULL,NULL,NULL,NULL,'На світанку сина   сповивала мати,
І в думках бажала швидше підростать.
Глянь, моя дитино,   через Україну,    |
Через нашу хату   вже качки летять.    |

На світанку сину нашептала мати -
Під чумацьким шляхом чумаченьки сплять.
Виростай, дитино, через Україну,       |
Через нашу хату вже качки летять.      | (2)

На світанку, сину, буду наслухати,
Коли в небі синім крила зашумлять.
Повертай же, сину! Через Україну,      |
Через нашу хату вже качки летять.      | (2)

На світанку сина важко виглядати,
А ще важче очі в ночі видивлять.
Прилітай, дитино! Через Україну,       |
Через нашу хату вже качки летять.      | (2)','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8552'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8552','Сину, качки летять','На світанку сина   сповивала мати,
І в думках бажала швидше підростать.
Глянь, моя дитино,   через Україну,    |
Через нашу хату   вже качки летять.    |

На світанку сину нашептала мати -
Під чумацьким шляхом чумаченьки сплять.
Виростай, дитино, через Україну,       |
Через нашу хату вже качки летять.      | (2)

На світанку, сину, буду наслухати,
Коли в небі синім крила зашумлять.
Повертай же, сину! Через Україну,      |
Через нашу хату вже качки летять.      | (2)

На світанку сина важко виглядати,
А ще важче очі в ночі видивлять.
Прилітай, дитино! Через Україну,       |
Через нашу хату вже качки летять.      | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8552_l1','pisniua_8552','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8533358';
DELETE FROM song_versions WHERE song_id = 'pisniua_8533358';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8533358';
DELETE FROM songs WHERE id = 'pisniua_8533358';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8533358','Різдво','Музика: YAGODA Слова: YAGODA','uk','ukraine_1991',NULL,NULL,'аудіозапис','Співачка YAGODA поєднала відому колядку "Щедрик" з авторською піснею і так створила різдвяний хіт. Співачка запросила до співпраці творчу школу Павла Табакова. "Я впевнена, що все іде своїм шляхом. І це доля була створити з дітьми цю колядку, в основі якої лежить всесвітньо відомий "Щедрик". Ця ідея виникла спонтанно, і ми її реалізували протягом тижня часу" - розповіда співачка. Відеокліп YAGODA відзняла на студії звукозапису, саме в день роботи над піснею. "Ми хотіли показати процес запису колядки. Це було щось неймовірне, справжні магія. Як тепер можна не вірити в магію Різдва!" - говорить співачка.','Речитатив:
Христос рождається!
А чи вдома господар?
А чи вдома господиня?
Христос рождається!

Так яскраво світить місяць,
Зірка хилиться в вікно,
І в кімнаті біля рідних
Поселилася любов.
Відчиняй серце своє!
Різдво до тебе йде!
Відчиняй серце своє!
Різдво прийде попроси все!

Приспів:
Не вкрадуть Різдво!
Не вкрадуть добро,
Що живе у тобі і мені!
Не вкрадуть Різдво!
Поки ми разом,
Любов з неба торкає землі!

І заходить у оселю
З колядою дітвора:
Щедрик! Щедрик!
І чекає донька тата
Кожен вірить у дива!
Відчиняй серце своє!
Різдво до тебе йде!
Відчиняй серце своє!
Різдво прийде попроси все!

Приспів.

Щедрик, щедрик, щедрівочка,
Прилетіла ластівочка,
Стала собі щебетати,
Господаря викликати!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8533358'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8533358','Різдво','Речитатив:
Христос рождається!
А чи вдома господар?
А чи вдома господиня?
Христос рождається!

Так яскраво світить місяць,
Зірка хилиться в вікно,
І в кімнаті біля рідних
Поселилася любов.
Відчиняй серце своє!
Різдво до тебе йде!
Відчиняй серце своє!
Різдво прийде попроси все!

Приспів:
Не вкрадуть Різдво!
Не вкрадуть добро,
Що живе у тобі і мені!
Не вкрадуть Різдво!
Поки ми разом,
Любов з неба торкає землі!

І заходить у оселю
З колядою дітвора:
Щедрик! Щедрик!
І чекає донька тата
Кожен вірить у дива!
Відчиняй серце своє!
Різдво до тебе йде!
Відчиняй серце своє!
Різдво прийде попроси все!

Приспів.

Щедрик, щедрик, щедрівочка,
Прилетіла ластівочка,
Стала собі щебетати,
Господаря викликати!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8533358_l1','pisniua_8533358','YouTube','https://www.youtube.com/watch?v=GMxYUFf-ux0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8552415';
DELETE FROM song_versions WHERE song_id = 'pisniua_8552415';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8552415';
DELETE FROM songs WHERE id = 'pisniua_8552415';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8552415','Лелека','Музика: Ірина Вихованець (Fiinka) Слова: Ірина Вихованець (Fiinka)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Живе на світі татко
Веселий і смішний!
Живе на світі татко
Коханий, дорогий!
І я за ним скучаю,
Хоч він не так й далеко,
Тому поп''ю я чаю
І закажу лелеку!

Приспів:
Щоб лелека полетів,
Татку цьомчик передав!
Щось йому пробурмотів,
Щоб наш татко не скучав!
Шоб не знав наш дорогий
Ні болячок, ні хвороб,
То лелека заказний
Передасть йому дзьоб-дзьоб!

Дзьоб-дзьоб! Дзьоб-дзьоб! | (10)

Живе на світі татко,
І він такий один!
І він для нас найкращий
Без всяких там причин!
Без нього я сумую,
Хоч він не так й далеко,
Тому я потанцюю
І закажу лелеку!

Приспів.

Я закажу бузька
Для свого татуська!
Ми поїдем разом
В місто чи село.
То такий лелека,
Холодно чи спека,
Прилетит до татка,
Щоб там не було!

Дзьоб-дзьоб! Дзьоб-дзьоб! | (20)

Лелека, а!','[''pisni.org.ua'', ''cat:devoted'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8552415'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8552415','Лелека','Живе на світі татко
Веселий і смішний!
Живе на світі татко
Коханий, дорогий!
І я за ним скучаю,
Хоч він не так й далеко,
Тому поп''ю я чаю
І закажу лелеку!

Приспів:
Щоб лелека полетів,
Татку цьомчик передав!
Щось йому пробурмотів,
Щоб наш татко не скучав!
Шоб не знав наш дорогий
Ні болячок, ні хвороб,
То лелека заказний
Передасть йому дзьоб-дзьоб!

Дзьоб-дзьоб! Дзьоб-дзьоб! | (10)

Живе на світі татко,
І він такий один!
І він для нас найкращий
Без всяких там причин!
Без нього я сумую,
Хоч він не так й далеко,
Тому я потанцюю
І закажу лелеку!

Приспів.

Я закажу бузька
Для свого татуська!
Ми поїдем разом
В місто чи село.
То такий лелека,
Холодно чи спека,
Прилетит до татка,
Щоб там не було!

Дзьоб-дзьоб! Дзьоб-дзьоб! | (20)

Лелека, а!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8552415_l1','pisniua_8552415','YouTube','https://www.youtube.com/watch?v=HB9CLZGcY50','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8560518';
DELETE FROM song_versions WHERE song_id = 'pisniua_8560518';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8560518';
DELETE FROM songs WHERE id = 'pisniua_8560518';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8560518','Співають діти','Музика: Олена Риковська Слова: Надія Красоткіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Співають діти — і душа радіє,
Бо й так повинно бути на землі:
Що в небеса летить щаслива мрія,
А всі живуть у мирі і теплі!

Приспів:
Співають діти — значить є надія!
Співають діти — значить є життя!
І в небеса летить дитяча мрія
В казковий світ, в чарівне майбуття!

Це й так повинно на планеті бути,
Щоб в світ приходили всі для добра,
Щоб всі були щасливі і розкуті,
Бо на землі для розквіту пора!

Приспів.

Співають діти — срібні голосочки,
Летять у синю даль дзвінкі пісні!
Співають рідні донечки й синочки,
І їхні личка — радісні й ясні!

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8560518'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8560518','Співають діти','Співають діти — і душа радіє,
Бо й так повинно бути на землі:
Що в небеса летить щаслива мрія,
А всі живуть у мирі і теплі!

Приспів:
Співають діти — значить є надія!
Співають діти — значить є життя!
І в небеса летить дитяча мрія
В казковий світ, в чарівне майбуття!

Це й так повинно на планеті бути,
Щоб в світ приходили всі для добра,
Щоб всі були щасливі і розкуті,
Бо на землі для розквіту пора!

Приспів.

Співають діти — срібні голосочки,
Летять у синю даль дзвінкі пісні!
Співають рідні донечки й синочки,
І їхні личка — радісні й ясні!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8560518_l1','pisniua_8560518','YouTube','https://www.youtube.com/watch?v=EYFtz7IVdWQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8560518_l2','pisniua_8560518','YouTube','https://www.youtube.com/watch?v=Q79pgXaf-Sg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8552409';
DELETE FROM song_versions WHERE song_id = 'pisniua_8552409';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8552409';
DELETE FROM songs WHERE id = 'pisniua_8552409';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8552409','Тато','Музика: Khrystyna Khrystonko, Andriy Bezkrovnyi Слова: Khrystyna Khrystonko, Andriy Bezkrovnyi','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Бо лише тато
Зробить все для тебе завзято!
Якщо треба - він приїде
І до серця пригорне!
Бо тільки тато
Дасть тобі добру пораду!
Він навчить, як в світі жити,
Знає, де добро і зло!

Тато добре знає, що не так,
Що в очах його донечки милої.
Погляд твій в мені все прочитав,
Скільки в ньому добра і сили є!
Не старій! Не хворій! -
В Бога попрошу.
Як ти там, тату мій?..
Я тебе люблю!..

Приспів.

Завжди ти знайдеш слова-ключі,
В тиху ніч чи в спокій мій ранковий
П''ємо чай, як ліки для душі,
І сміємось в домі знов й знову!..
Не старій! Не хворій! -
В Бога попрошу.
Як ти там, тату мій?..
Я тебе люблю!..

Приспів.

Мій тату, тату! |
Тату! Тату!     |
Таточку ти мій! |
Мій тату, тату! |
Таточку ти мій! | (2)','[''pisni.org.ua'', ''cat:devoted'', ''cat:pro-batkiv'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні про любов до батьків'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8552409'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8552409','Тато','Приспів:
Бо лише тато
Зробить все для тебе завзято!
Якщо треба - він приїде
І до серця пригорне!
Бо тільки тато
Дасть тобі добру пораду!
Він навчить, як в світі жити,
Знає, де добро і зло!

Тато добре знає, що не так,
Що в очах його донечки милої.
Погляд твій в мені все прочитав,
Скільки в ньому добра і сили є!
Не старій! Не хворій! -
В Бога попрошу.
Як ти там, тату мій?..
Я тебе люблю!..

Приспів.

Завжди ти знайдеш слова-ключі,
В тиху ніч чи в спокій мій ранковий
П''ємо чай, як ліки для душі,
І сміємось в домі знов й знову!..
Не старій! Не хворій! -
В Бога попрошу.
Як ти там, тату мій?..
Я тебе люблю!..

Приспів.

Мій тату, тату! |
Тату! Тату!     |
Таточку ти мій! |
Мій тату, тату! |
Таточку ти мій! | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8552409_l1','pisniua_8552409','YouTube','https://www.youtube.com/watch?v=cBeHSIuD7q4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8532312';
DELETE FROM song_versions WHERE song_id = 'pisniua_8532312';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8532312';
DELETE FROM songs WHERE id = 'pisniua_8532312';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8532312','Ветерани','Музика: NORD DIVISION, Тіна Кароль Слова: NORD DIVISION, Тіна Кароль','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Це моє місто і це моя країна,
Люба ненька, рідна батьківщина,
Виростила ти мене, як рідного сина,
Хочу бути твоїм, доки не стану сивим!
Доки маю подих твоєї свободи,
Де ліси, степи, водойми, гори.
Ураїно-Мати! - Завжди звучить гордо,
Скільки вороженьки тримали нас за горло.
Істребляють, як націю,
В Україні не існують слів капітуляції,
На кістках тут танці, сонце зійде вранці,
А доки темрява покрила наші ілюстрації,
Наші ілюстрації...
В кулак зімкнулись пальці, дата на оградці.
Герої не вмирають! Рідні плачуть на лавці...
Такі ось тут нотації, но ми ще не вмерли
І наші голоси розносять славу цим героям
До самого неба!
Свободи є потреба! В неволі нам не жити!
І наше тепло сонечко жовте, як жито!
І небо тут блакитне, і мрії розквітають,
Письменників, поетів кохають, поважають.
До них немає жалю, вони несли кайдани.
Моя країно, ми загоїм рани! Твої ветерани!
Твої ветерани! Твої ветерани!
Ми - ветерани війни, яку не обирали,
Страшної гри, яку в дитинстві грали,
Добро і зло місяцями поміняли,
Скільки болю у гімн закарбували
Наші предки, що волю здобували,
Тіло і душу за свободу клали,
Щоб гасла козаків ніколи не згасали!
Моя Україна - велична держава,
Як у гетьмана в руках булава!
Від заходу до сходу золотава,
В кровавих битвах і земля кровава,
Але завжди родюча, як ці тексти - колюча,
Як правда в око - гірка й болюча,
Як смерть Росії неминуча!
Новий світанок, і історія квітуча,
Ми її напишем і ми її озвучим!
Помер Кравчук, помре і Кучма,
Міни ляжуть кучно, гімн лунає гучно,
Як доленосний вітер віє,
Як надія тільки воїнів гріє!
Тільки вони в перемогу вірять!
Тільки їм дано її здобути!
Сталевою волею залізо гнути,
Всіх хто у вічність відійшов,
Обіцяю, не забути! Обіцяю, не забути!
Як не забуті герої, що бились за Крути,
І ми будем битись, поки серце б''ється,
Поки буревісна пісня ллється,
Поки Крим додому не повернеться,
Поки не повернем Азов!
Буду нагадувати знов і знов,
Герої мають позбутись оков!
Я вірш написав, як граніт відколов.
Тримаймо стрій за всіх,
Хто у вічність відійшов!
За всіх, хто у вічність відійшов!

Приспів:
Янголи наші вогнями уночі
Завжди над нами! Завжди над нами!
Янголи наші, ви порохом на кулях
Стали завжди над нами!..
Скинем кайдани! Сонце над нами! |
Кличе нас доля, гармати і воля! | (3)

Війна продовжує забирати
Найкращих синів нашої держави.
На зупинку ми не маємо права, аби не була
Даремною полеглих воїнів справа!
Хибні герої не раз кажуть Бебеху Роману,
Як дивились в Маріуполі тік-токи в підвалах
З набитим пузом до відвалу.
Тримайте свою хвилю слави.
Наш прапор б''ється від кожного
Останнього подиху Героїв з великої літери!
Де їхня кров окропила землю,
Ніколи не виростуть квіти,
Не будуть сміятися діти.
Полонених не можуть звільнити,
Депутати йдуть на канікули,
Свобода коштує скільки?
Почувши це, ти осторонь завмер,
Для тебе це складний екзамен.
У мріях ти - чемпіон на рожевому татамі,
Тікати з війни за доглядом неіснуючої мами,
Мертві плани, як посеред Хезболи
У Хассана на*рали.
Ті, хто пішов у вічність, не забути ніколи,
Скільки на країну вилилось горе...
Мрію про сталеву націю та кордони,
Мрію, щоб московії не було ніколи.
Щоб жовто-блакитний стяг замайорів знову
Від Сяну до Дону!
Щоб товариші мали змогу не пропадати
Із поля бою і повертатись з посмішкою
К рідним додому! Як прийняти цей
Дзвінок матері молодого воїна,
Що не повернувся живим з останнього бою?
Наш тризуб залитий кров''ю, народе мій,
Ти це помни!
Зневажати пам''ять героїв не дамо нікому!
Хто прийшов до нас із зброєю,
Від зброї загине у соняшниковому полі!
Тільки гідним належить воля!
В останній путь проводжаєм воїна строєм,
На колінах, перед Україной полонених строєм.
Схід і захід разом, поки поруч побратими,
Ми єдині! Наші ідеї розійдуться по всій
Славній Україні! По всій славній Україні!

Приспів.

Сміливі українці завжди мають щастя,
У генералів руки по лікоть в крові,
У солдат - по зап''ястя.
Зв''язаний з козаками, зброю не скласти,
Один вже відрубав руки, якщо будуть
В армії красти. Кишені глибше окопів,
В які снаряд може попасти,
Куди воїн на полі бою може безслідно пропасти.
Ситуація непроста і надскладна,
Жовто-синій прапор в крові, червоно-чорний - УПА.
Завзята боротьба. Ще не вмерла Україна і не вмре!
Будемо нищити ворога, поки смерть нас не забере.
Радію тому, що є.
Не вистрелиш ти, вистрелять тебе.
Це непросто гасло - Україна понад усе!
Кажу думку кожного, який про все знає,
Правило, не розмовляти про війну,
На якій не був з нами. Зручно підказувати,
Як керувати військами з дивану,
Поки могила воїна обросла бур''янами.
Російськомовний воюючий патріот військовий,
Чи україномовний, який родом зі Львову,
Знання мови, чи повне незнання мови,
Проте життя вони віддають однакове.
Головна проблематика даного твору -
Чому не саджають за хабарі прокурорів,
Або МСЕК лікарів? Чому воюють не вони?
Вперше в історії світу не працюють військові канони.
Культурна експансія, русифікованість телебачення,
Витіснення культури, або її апропріація,
Процес повільної поступової окупації,
І от багатьом здається, що нас чекає капітуляція.
Якось дивіться, нічого не сталось,
NORD DIVISION грає, аж генерали всі встали.
Й хлопці снились мені крізь густі тумани,
Котрі йшли назустріч вічності й вмирали...
Бережіть завжди цю цяточку землі,
До якої будуть кинуті всі мої думки.
Іншої такої ніколи не знайти,
Навіть якщо всю землю пішки обійти.
Де усюди рідні гетьманські степи,
А навколо йдуть дощі з крові.
І не прочитає батько дитині колискової,
Бо його тіло вже везуть в труні.
Це мій рідний дім, скільки про тебе
Я написав віршів, скільки не повернулось
З великої війни твоїх вірних дочок, синів...
Скільки в окопах я провів. ми принесли сюди
Дух непокори продовжувати боротьбу
За волю народів. Київська Русь стоїть
В своєму шоломі. Нема на світі другої
Держави такої. Скільки причинено нам
Ворогом болі, від цього моя голова
Розривається сама по собі... Моя єдина
Любов присвячується матері моїй,
Для неї дістаю з неба всі зорі.
Безкінечна кількість інтерв''ю брехні,
Кожен розказує як правильно перемогти,
Сидячи в зручному командному пункті,
В очі ніколи не бачивши війни...
Українці, скиньте кайдани,
Інакше ми програєм, якби ви знали,
Скільки мені дзвонило генералів
На день народження та поздоровляли,
Казали зупинитися мені з цими піснями.
Ця пісня для всіх тих, хто здався в полон,
Для всіх тих, хто чекає додому Азов,
Для кого честь і гідність важливіша,
Ніж грошей мільйон.
Для кого ця клята війна, наче сон.

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8532312'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8532312','Ветерани','Це моє місто і це моя країна,
Люба ненька, рідна батьківщина,
Виростила ти мене, як рідного сина,
Хочу бути твоїм, доки не стану сивим!
Доки маю подих твоєї свободи,
Де ліси, степи, водойми, гори.
Ураїно-Мати! - Завжди звучить гордо,
Скільки вороженьки тримали нас за горло.
Істребляють, як націю,
В Україні не існують слів капітуляції,
На кістках тут танці, сонце зійде вранці,
А доки темрява покрила наші ілюстрації,
Наші ілюстрації...
В кулак зімкнулись пальці, дата на оградці.
Герої не вмирають! Рідні плачуть на лавці...
Такі ось тут нотації, но ми ще не вмерли
І наші голоси розносять славу цим героям
До самого неба!
Свободи є потреба! В неволі нам не жити!
І наше тепло сонечко жовте, як жито!
І небо тут блакитне, і мрії розквітають,
Письменників, поетів кохають, поважають.
До них немає жалю, вони несли кайдани.
Моя країно, ми загоїм рани! Твої ветерани!
Твої ветерани! Твої ветерани!
Ми - ветерани війни, яку не обирали,
Страшної гри, яку в дитинстві грали,
Добро і зло місяцями поміняли,
Скільки болю у гімн закарбували
Наші предки, що волю здобували,
Тіло і душу за свободу клали,
Щоб гасла козаків ніколи не згасали!
Моя Україна - велична держава,
Як у гетьмана в руках булава!
Від заходу до сходу золотава,
В кровавих битвах і земля кровава,
Але завжди родюча, як ці тексти - колюча,
Як правда в око - гірка й болюча,
Як смерть Росії неминуча!
Новий світанок, і історія квітуча,
Ми її напишем і ми її озвучим!
Помер Кравчук, помре і Кучма,
Міни ляжуть кучно, гімн лунає гучно,
Як доленосний вітер віє,
Як надія тільки воїнів гріє!
Тільки вони в перемогу вірять!
Тільки їм дано її здобути!
Сталевою волею залізо гнути,
Всіх хто у вічність відійшов,
Обіцяю, не забути! Обіцяю, не забути!
Як не забуті герої, що бились за Крути,
І ми будем битись, поки серце б''ється,
Поки буревісна пісня ллється,
Поки Крим додому не повернеться,
Поки не повернем Азов!
Буду нагадувати знов і знов,
Герої мають позбутись оков!
Я вірш написав, як граніт відколов.
Тримаймо стрій за всіх,
Хто у вічність відійшов!
За всіх, хто у вічність відійшов!

Приспів:
Янголи наші вогнями уночі
Завжди над нами! Завжди над нами!
Янголи наші, ви порохом на кулях
Стали завжди над нами!..
Скинем кайдани! Сонце над нами! |
Кличе нас доля, гармати і воля! | (3)

Війна продовжує забирати
Найкращих синів нашої держави.
На зупинку ми не маємо права, аби не була
Даремною полеглих воїнів справа!
Хибні герої не раз кажуть Бебеху Роману,
Як дивились в Маріуполі тік-токи в підвалах
З набитим пузом до відвалу.
Тримайте свою хвилю слави.
Наш прапор б''ється від кожного
Останнього подиху Героїв з великої літери!
Де їхня кров окропила землю,
Ніколи не виростуть квіти,
Не будуть сміятися діти.
Полонених не можуть звільнити,
Депутати йдуть на канікули,
Свобода коштує скільки?
Почувши це, ти осторонь завмер,
Для тебе це складний екзамен.
У мріях ти - чемпіон на рожевому татамі,
Тікати з війни за доглядом неіснуючої мами,
Мертві плани, як посеред Хезболи
У Хассана на*рали.
Ті, хто пішов у вічність, не забути ніколи,
Скільки на країну вилилось горе...
Мрію про сталеву націю та кордони,
Мрію, щоб московії не було ніколи.
Щоб жовто-блакитний стяг замайорів знову
Від Сяну до Дону!
Щоб товариші мали змогу не пропадати
Із поля бою і повертатись з посмішкою
К рідним додому! Як прийняти цей
Дзвінок матері молодого воїна,
Що не повернувся живим з останнього бою?
Наш тризуб залитий кров''ю, народе мій,
Ти це помни!
Зневажати пам''ять героїв не дамо нікому!
Хто прийшов до нас із зброєю,
Від зброї загине у соняшниковому полі!
Тільки гідним належить воля!
В останній путь проводжаєм воїна строєм,
На колінах, перед Україной полонених строєм.
Схід і захід разом, поки поруч побратими,
Ми єдині! Наші ідеї розійдуться по всій
Славній Україні! По всій славній Україні!

Приспів.

Сміливі українці завжди мають щастя,
У генералів руки по лікоть в крові,
У солдат - по зап''ястя.
Зв''язаний з козаками, зброю не скласти,
Один вже відрубав руки, якщо будуть
В армії красти. Кишені глибше окопів,
В які снаряд може попасти,
Куди воїн на полі бою може безслідно пропасти.
Ситуація непроста і надскладна,
Жовто-синій прапор в крові, червоно-чорний - УПА.
Завзята боротьба. Ще не вмерла Україна і не вмре!
Будемо нищити ворога, поки смерть нас не забере.
Радію тому, що є.
Не вистрелиш ти, вистрелять тебе.
Це непросто гасло - Україна понад усе!
Кажу думку кожного, який про все знає,
Правило, не розмовляти про війну,
На якій не був з нами. Зручно підказувати,
Як керувати військами з дивану,
Поки могила воїна обросла бур''янами.
Російськомовний воюючий патріот військовий,
Чи україномовний, який родом зі Львову,
Знання мови, чи повне незнання мови,
Проте життя вони віддають однакове.
Головна проблематика даного твору -
Чому не саджають за хабарі прокурорів,
Або МСЕК лікарів? Чому воюють не вони?
Вперше в історії світу не працюють військові канони.
Культурна експансія, русифікованість телебачення,
Витіснення культури, або її апропріація,
Процес повільної поступової окупації,
І от багатьом здається, що нас чекає капітуляція.
Якось дивіться, нічого не сталось,
NORD DIVISION грає, аж генерали всі встали.
Й хлопці снились мені крізь густі тумани,
Котрі йшли назустріч вічності й вмирали...
Бережіть завжди цю цяточку землі,
До якої будуть кинуті всі мої думки.
Іншої такої ніколи не знайти,
Навіть якщо всю землю пішки обійти.
Де усюди рідні гетьманські степи,
А навколо йдуть дощі з крові.
І не прочитає батько дитині колискової,
Бо його тіло вже везуть в труні.
Це мій рідний дім, скільки про тебе
Я написав віршів, скільки не повернулось
З великої війни твоїх вірних дочок, синів...
Скільки в окопах я провів. ми принесли сюди
Дух непокори продовжувати боротьбу
За волю народів. Київська Русь стоїть
В своєму шоломі. Нема на світі другої
Держави такої. Скільки причинено нам
Ворогом болі, від цього моя голова
Розривається сама по собі... Моя єдина
Любов присвячується матері моїй,
Для неї дістаю з неба всі зорі.
Безкінечна кількість інтерв''ю брехні,
Кожен розказує як правильно перемогти,
Сидячи в зручному командному пункті,
В очі ніколи не бачивши війни...
Українці, скиньте кайдани,
Інакше ми програєм, якби ви знали,
Скільки мені дзвонило генералів
На день народження та поздоровляли,
Казали зупинитися мені з цими піснями.
Ця пісня для всіх тих, хто здався в полон,
Для всіх тих, хто чекає додому Азов,
Для кого честь і гідність важливіша,
Ніж грошей мільйон.
Для кого ця клята війна, наче сон.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8532312_l1','pisniua_8532312','YouTube','https://www.youtube.com/watch?v=ZpBgdnJNYbE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8554219';
DELETE FROM song_versions WHERE song_id = 'pisniua_8554219';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8554219';
DELETE FROM songs WHERE id = 'pisniua_8554219';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8554219','Людині потрібна людина','Музика: Ivan Klymenko Слова: Ivan Klymenko, Nikita Verloka, Lirusha','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Домовились не листуватися,
Щоб кожен побув на одинці.
Нам треба паузу взяти,
Розкласти думки на полиці.
А стелі все тиснуть і тиснуть,
Не хочу грати в мовчанку!
Зірвусь, напишу тобі лист,
Щоб разом прокинутись зранку!

Приспів:
Людині потрібна людина!
Сховатись під ковдру,
Заснути у тебе в колінах!..
Якщо життя вести нас
Буде кривими,
Я виправлю, вирулю,
Зроблю ці стежки прямими!

А хто сказав,
Що наші шляхи мають розійтись?
А хто сказав,
Що ми тягнемо один одного вниз?
Ну хто сказав?
А я вірити не буду їм усім!
А я буду лише з ним,
Бо

Приспів.

Як не крути,

Приспів.

Навіть, коли я мовчу,
Обіймаючи голосом, кричу
Цьому світу: Я тебе люблю,
Бо без тебе я не проживу!..','[''pisni.org.ua'', ''cat:devoted'', ''cat:philosophic'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Філософські пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8554219'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8554219','Людині потрібна людина','Домовились не листуватися,
Щоб кожен побув на одинці.
Нам треба паузу взяти,
Розкласти думки на полиці.
А стелі все тиснуть і тиснуть,
Не хочу грати в мовчанку!
Зірвусь, напишу тобі лист,
Щоб разом прокинутись зранку!

Приспів:
Людині потрібна людина!
Сховатись під ковдру,
Заснути у тебе в колінах!..
Якщо життя вести нас
Буде кривими,
Я виправлю, вирулю,
Зроблю ці стежки прямими!

А хто сказав,
Що наші шляхи мають розійтись?
А хто сказав,
Що ми тягнемо один одного вниз?
Ну хто сказав?
А я вірити не буду їм усім!
А я буду лише з ним,
Бо

Приспів.

Як не крути,

Приспів.

Навіть, коли я мовчу,
Обіймаючи голосом, кричу
Цьому світу: Я тебе люблю,
Бо без тебе я не проживу!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8554219_l1','pisniua_8554219','YouTube','https://www.youtube.com/watch?v=8MbL1D7bH2M','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8557518';
DELETE FROM song_versions WHERE song_id = 'pisniua_8557518';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8557518';
DELETE FROM songs WHERE id = 'pisniua_8557518';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8557518','Ліза','Музика: Brykulets Слова: Brykulets','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вибери мене, моя голубонько!
Спи, моя солодка,
Хоть весь день!
У віконце сонечко постукало,
Я люблю тебе!
Ти знаєш про це.
Сніжинка падала, падала,
В губи тебе п''яний цілував,
Ніби в око щось мені потрапило,
Тобою заболів!..

Приспів:
Під грусний диско-танець
Від тебе не сховаюсь,
Ми курим фантастично,
Між нами сексуальность!
Під грусний диско-танець
Дозвольте, закохаюсь!
Зі мною прагматичность,
З тобою ненормальность!
Ліза залізла в серце!        |
Ліза залізла в душу!         |
Як добре все-таки,           |
Шо ми не просто дружим!      |
Ліза залізла в серце!        |
Ліза залізла в душу!         |
Як пощастило,                |
Що колишній твій був хуже!.. | (2)

Вибач мене,
Я не ладний з почуттями.
Давно не бачив,
Як бавиш і граєш в любов.
Складний екзамен,
Не муч тижнями...
Повір,
Завис телеграм на тобі,
Тривожний спосіб
Прив''язаності рве на шматки,
Забиває печаль
Непритомні думки...
Уникай, уникай, ігноруй і мовчи,
Чекатиму на тебе!..

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8557518'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8557518','Ліза','Вибери мене, моя голубонько!
Спи, моя солодка,
Хоть весь день!
У віконце сонечко постукало,
Я люблю тебе!
Ти знаєш про це.
Сніжинка падала, падала,
В губи тебе п''яний цілував,
Ніби в око щось мені потрапило,
Тобою заболів!..

Приспів:
Під грусний диско-танець
Від тебе не сховаюсь,
Ми курим фантастично,
Між нами сексуальность!
Під грусний диско-танець
Дозвольте, закохаюсь!
Зі мною прагматичность,
З тобою ненормальность!
Ліза залізла в серце!        |
Ліза залізла в душу!         |
Як добре все-таки,           |
Шо ми не просто дружим!      |
Ліза залізла в серце!        |
Ліза залізла в душу!         |
Як пощастило,                |
Що колишній твій був хуже!.. | (2)

Вибач мене,
Я не ладний з почуттями.
Давно не бачив,
Як бавиш і граєш в любов.
Складний екзамен,
Не муч тижнями...
Повір,
Завис телеграм на тобі,
Тривожний спосіб
Прив''язаності рве на шматки,
Забиває печаль
Непритомні думки...
Уникай, уникай, ігноруй і мовчи,
Чекатиму на тебе!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8557518_l1','pisniua_8557518','YouTube','https://www.youtube.com/watch?v=XAlpn1NfOHA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8548501';
DELETE FROM song_versions WHERE song_id = 'pisniua_8548501';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8548501';
DELETE FROM songs WHERE id = 'pisniua_8548501';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8548501','Динь, динь, білий динь','Музика: Yuriy Kalan Слова: народні. Виконує: Y.K. Music','uk','ukraine_before_1917',NULL,NULL,'авторське подання',NULL,'Приспів:
Динь, динь, білий динь,
Вставай, дівко, клади вгинь!
Динь, динь, білий динь,
Вставай, дівко, клади вгинь!

Дівка встала, вгня наклала
Не є того, що чекала.
Динь, динь, білий динь,
Вставай, дівко, клади вгинь.

Приспів.

Збирай тріски по дворови,
Вари їсти лингарьови.
Динь, динь, білий динь,
Вставай, дівко, клади вгинь!

Приспів.

Полюбила ти п''яницю,
Почешися за гузицю.
Динь, динь, білий динь,
Вставай, дівко, клади вгинь!

Приспів.

Дівка встала, вгня наклала,
Не є того, що чекала.
Динь, динь, білий динь,
Вставай, дівко, клади вгинь!','[''pisni.org.ua'', ''cat:zakarpatski'', ''Закарпатські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8548501'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8548501','Динь, динь, білий динь','Приспів:
Динь, динь, білий динь,
Вставай, дівко, клади вгинь!
Динь, динь, білий динь,
Вставай, дівко, клади вгинь!

Дівка встала, вгня наклала
Не є того, що чекала.
Динь, динь, білий динь,
Вставай, дівко, клади вгинь.

Приспів.

Збирай тріски по дворови,
Вари їсти лингарьови.
Динь, динь, білий динь,
Вставай, дівко, клади вгинь!

Приспів.

Полюбила ти п''яницю,
Почешися за гузицю.
Динь, динь, білий динь,
Вставай, дівко, клади вгинь!

Приспів.

Дівка встала, вгня наклала,
Не є того, що чекала.
Динь, динь, білий динь,
Вставай, дівко, клади вгинь!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8548501_l1','pisniua_8548501','YouTube','https://www.youtube.com/watch?v=ia7-5iyOXC4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8548501_l2','pisniua_8548501','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
