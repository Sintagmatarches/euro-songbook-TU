DELETE FROM song_links WHERE song_id = 'pisniua_2828';
DELETE FROM song_versions WHERE song_id = 'pisniua_2828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2828';
DELETE FROM songs WHERE id = 'pisniua_2828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2828','Не сміє бути в нас страху','Музика: Роман Купчинський Слова: Роман Купчинський. Виконує: Не журись!','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'Сурма. Збірник воєнних пісень.- Львів-Київ: Червона Калина, 1922; Звитяга. Книжечка учасника табору.- 2002','Славень (гимн) "Лицарів Залізної Остроги"; славень (гимн) Ордену Залізної Остроги (Пласт)','Не сміє бути в нас страху,
Ні жодної тривоги,
Бо ми є лицарі грізні
Залізної Остроги. *

Не страшать нас і в цісарів
Високії пороги,
Бо ми є лицарі грізні
Залізної Остроги.

А до дівочих ніжних серць
Ми знаєм всі дороги,
Бо ми є лицарі грізні
Залізної Остроги.

Не святкуватиме ніхто
Над нами перемоги,
Бо ми є лицарі грізні
Залізної Остроги.

* У кожному стовпчику 2 останні рядки повторюються двічі.','[''pisni.org.ua'', ''cat:plastovi'', ''cat:strilecki'', ''Пластові пісні'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2828','Не сміє бути в нас страху','Не сміє бути в нас страху,
Ні жодної тривоги,
Бо ми є лицарі грізні
Залізної Остроги. *

Не страшать нас і в цісарів
Високії пороги,
Бо ми є лицарі грізні
Залізної Остроги.

А до дівочих ніжних серць
Ми знаєм всі дороги,
Бо ми є лицарі грізні
Залізної Остроги.

Не святкуватиме ніхто
Над нами перемоги,
Бо ми є лицарі грізні
Залізної Остроги.

* У кожному стовпчику 2 останні рядки повторюються двічі.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2828_l1','pisniua_2828','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_282498';
DELETE FROM song_versions WHERE song_id = 'pisniua_282498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_282498';
DELETE FROM songs WHERE id = 'pisniua_282498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_282498','Ой полети, зозуленько','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські народні пісні: Пісенник/ Упоряд. Л.Силенко.-К.:Муз. Україна, 1989.- 176с.',NULL,'Ой полети, зозуленько,
На зорі раненько,
Тай й на моїй родиноньці    |
Закуй жалібненько           | (2)

Сядь, зозуле, край віконця,
Де мати сідає,
Із якого ненька мене        |
Щодня виглядає              | (2)

Облітай же, зозуленько,
Вишневий садочок,
Та й принеси, хоч квіточку, |
Хоч один листочок.          | (2)','[''pisni.org.ua'', ''cat:43'', ''Еміґрантські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_282498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_282498','Ой полети, зозуленько','Ой полети, зозуленько,
На зорі раненько,
Тай й на моїй родиноньці    |
Закуй жалібненько           | (2)

Сядь, зозуле, край віконця,
Де мати сідає,
Із якого ненька мене        |
Щодня виглядає              | (2)

Облітай же, зозуленько,
Вишневий садочок,
Та й принеси, хоч квіточку, |
Хоч один листочок.          | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_281818';
DELETE FROM song_versions WHERE song_id = 'pisniua_281818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_281818';
DELETE FROM songs WHERE id = 'pisniua_281818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_281818','Закувала зозуленька','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://posydenky.lvivport.com',NULL,'Закувала зозуленька
В стодолі на розі,
Заплакала дівчинонька
В батька на порозі.

Ой візьму я коновоньки
Та й піду по воду,
А там хлопці-риболовці
З козацького роду.

"Ой ви, хлопці-риболовці,
З прекрасного роду,
Візьміть мене на той човен,
Перевезіть через воду".

"Ми би тебе перевезли,
Щоб хвиля не била.
Ми би тебе з собов взяли,
Щоб мати не тужила".

"Моя мати старенькая
Не буде тужити,
Вона сама добре знає,
Що не маю з ким жити".

Як сідала у той човен,
Тяженько зітхнула,
Відбилася від берега,
Хустинкою змахнула.

Ой, ніхто того не бачив,
Тільки стара мати,
Що сиділа край берега
Та й стала ридати:

"Ой ти, доню, моя доню,
Доню моя красна..."
"Що ми з того, що я красна,
Коли доля нещасна".','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_281818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_281818','Закувала зозуленька','Закувала зозуленька
В стодолі на розі,
Заплакала дівчинонька
В батька на порозі.

Ой візьму я коновоньки
Та й піду по воду,
А там хлопці-риболовці
З козацького роду.

"Ой ви, хлопці-риболовці,
З прекрасного роду,
Візьміть мене на той човен,
Перевезіть через воду".

"Ми би тебе перевезли,
Щоб хвиля не била.
Ми би тебе з собов взяли,
Щоб мати не тужила".

"Моя мати старенькая
Не буде тужити,
Вона сама добре знає,
Що не маю з ким жити".

Як сідала у той човен,
Тяженько зітхнула,
Відбилася від берега,
Хустинкою змахнула.

Ой, ніхто того не бачив,
Тільки стара мати,
Що сиділа край берега
Та й стала ридати:

"Ой ти, доню, моя доню,
Доню моя красна..."
"Що ми з того, що я красна,
Коли доля нещасна".');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_281818_l1','pisniua_281818','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_283919';
DELETE FROM song_versions WHERE song_id = 'pisniua_283919';
DELETE FROM songs_fts WHERE song_id = 'pisniua_283919';
DELETE FROM songs WHERE id = 'pisniua_283919';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_283919','Ой, на горі жито','(... На долині жито). Музика: народ Слова: народ','uk','ukraine_before_1917',NULL,NULL,'Український народний співаник, Мюнхен, 1946 р.',NULL,'Ой, на горі жито,
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
DELETE FROM song_links WHERE song_id = 'pisniua_283798';
DELETE FROM song_versions WHERE song_id = 'pisniua_283798';
DELETE FROM songs_fts WHERE song_id = 'pisniua_283798';
DELETE FROM songs WHERE id = 'pisniua_283798';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_283798','Готуй мені збрую','Музика: Роман Купчинський Слова: Роман Купчинський','uk','ukrainian_peoples_republic_1917_1921',NULL,'1917','Стрілецькі пісні Романа Купчинського "Як з бережан да кадри", упор В.Подуфалий, Тернопіль. 1990 р.','написано в березні 1917 року при виході двох куренів УСС з вишколу у Розвадові в поле під Бережани','Готуй мені збрую,
Готуй мені коня.
Бо я серцем похід чую,
Дівчинонько моя.

Дай уста рожеві
Ще поцілувати,
Ніж заграють нам крицаві
Московські гармати.

Піду я, піду я,
А де, сам не знаю,
Може люту смерть найду я
В далекому краю.

Прийдуть вірні друзі,
Прийдуть, заспівають
Під явором, в темнім лузі
Мене поховають.

Не плач же, дівчино,
Серденько кохане,
А заплачеш в ту хвилину,
Як мене не стане.','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_283798'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_283798','Готуй мені збрую','Готуй мені збрую,
Готуй мені коня.
Бо я серцем похід чую,
Дівчинонько моя.

Дай уста рожеві
Ще поцілувати,
Ніж заграють нам крицаві
Московські гармати.

Піду я, піду я,
А де, сам не знаю,
Може люту смерть найду я
В далекому краю.

Прийдуть вірні друзі,
Прийдуть, заспівають
Під явором, в темнім лузі
Мене поховають.

Не плач же, дівчино,
Серденько кохане,
А заплачеш в ту хвилину,
Як мене не стане.');
DELETE FROM song_links WHERE song_id = 'pisniua_282899';
DELETE FROM song_versions WHERE song_id = 'pisniua_282899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_282899';
DELETE FROM songs WHERE id = 'pisniua_282899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_282899','Гей, волинськими шляхами','Музика: М. Празький Слова: Олесь Бабій','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'В дорогу! Пластовий співаник. "Молоде життя", Ауґсбурґ, 1949.','стрілецька пісня','Гей, волинськими шляхами
І безмежними степами
Горде військо в бій іде.
То Стрільці йдуть Січовії,
Мов орлята степовії,
Громом пісня їх гуде!
Гей, бій буде!

Йдуть Стрільці, ідуть герої,
Йдуть до волі золотої,
Шлях свій трупами значать.
Не страшна їм смерть-могила,
Не грізна ворожа сила!
В Київ волю здобувать,
Орли летять!','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_282899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_282899','Гей, волинськими шляхами','Гей, волинськими шляхами
І безмежними степами
Горде військо в бій іде.
То Стрільці йдуть Січовії,
Мов орлята степовії,
Громом пісня їх гуде!
Гей, бій буде!

Йдуть Стрільці, ідуть герої,
Йдуть до волі золотої,
Шлях свій трупами значать.
Не страшна їм смерть-могила,
Не грізна ворожа сила!
В Київ волю здобувать,
Орли летять!');
DELETE FROM song_links WHERE song_id = 'pisniua_284055';
DELETE FROM song_versions WHERE song_id = 'pisniua_284055';
DELETE FROM songs_fts WHERE song_id = 'pisniua_284055';
DELETE FROM songs WHERE id = 'pisniua_284055';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_284055','Задумала вража баба','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Український народний співаник, Мюнхен, 1946 р.',NULL,'Задумала вража баба
Та й забагатіти,
Підсипала куріпочку,
Підсипала куріпочку,
Щоб вивела діти.

Як вдалося вражій бабі
На біду, на горе:
Висиділа куріпочка,
Висиділа куріпочка,
Усіх тільки троє.

Як погнала стара баба
Куріпочку пасти,
Сама сіла під тиночком,
Сама сіла під тиночком
Куделицю прясти.

Наступає чорна хмара,
Дощик накрапає, -
Стара баба куріп''яток
Стара баба куріп''яток
В хату заганяє.

Ще й до хати не догнала,
Як одно стоптала,
На другеє іспіткнулась,
На другеє іспіткнулась,
На третеє впала.

Як вернувся дід із лісу,
Став бабу питати:
"Що це наших, бабусенько,
Що це наших, бабусенько,
Курчат не видати?"','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_284055'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_284055','Задумала вража баба','Задумала вража баба
Та й забагатіти,
Підсипала куріпочку,
Підсипала куріпочку,
Щоб вивела діти.

Як вдалося вражій бабі
На біду, на горе:
Висиділа куріпочка,
Висиділа куріпочка,
Усіх тільки троє.

Як погнала стара баба
Куріпочку пасти,
Сама сіла під тиночком,
Сама сіла під тиночком
Куделицю прясти.

Наступає чорна хмара,
Дощик накрапає, -
Стара баба куріп''яток
Стара баба куріп''яток
В хату заганяє.

Ще й до хати не догнала,
Як одно стоптала,
На другеє іспіткнулась,
На другеє іспіткнулась,
На третеє впала.

Як вернувся дід із лісу,
Став бабу питати:
"Що це наших, бабусенько,
Що це наших, бабусенько,
Курчат не видати?"');
DELETE FROM song_links WHERE song_id = 'pisniua_282216';
DELETE FROM song_versions WHERE song_id = 'pisniua_282216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_282216';
DELETE FROM songs WHERE id = 'pisniua_282216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_282216','На вгороді коло броду','Музика: Микола Лисенко Слова: Тарас Шевченко','uk','ukraine_before_1917',NULL,'1848','Кобзар','Написано 1848 року в Кос-Аралі.','На вгороді коло броду
Барвінок не сходить.
Чомусь дівчина до броду
По воду не ходить.

На вгороді коло тину
Сохне на тичині
Хміль зелений, не виходить
Дівчина з хатини.

На вгороді коло броду
Верба похилилась.
Зажурилась чорнобрива,
Тяжко зажурилась.

Плаче, плаче та ридає,
Як рибонька б''ється...
А над нею, молодою,
Поганець сміється.    Фонограма-мінус (mp3)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_282216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_282216','На вгороді коло броду','На вгороді коло броду
Барвінок не сходить.
Чомусь дівчина до броду
По воду не ходить.

На вгороді коло тину
Сохне на тичині
Хміль зелений, не виходить
Дівчина з хатини.

На вгороді коло броду
Верба похилилась.
Зажурилась чорнобрива,
Тяжко зажурилась.

Плаче, плаче та ридає,
Як рибонька б''ється...
А над нею, молодою,
Поганець сміється.    Фонограма-мінус (mp3)');
DELETE FROM song_links WHERE song_id = 'pisniua_28313';
DELETE FROM song_versions WHERE song_id = 'pisniua_28313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28313';
DELETE FROM songs WHERE id = 'pisniua_28313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28313','Зелений дзвін','Музика: Володимир Івасюк Слова: Ростислав Братунь','uk','ukraine_1991',NULL,NULL,'http://ivasyuk.domivka.net/',NULL,'Зовуть дороги, шляхи нас кличуть,
Щоб відкривати казки на землі.
І з нами завжди — вітер в обличчя,
Краса незнана десь у далі.

Приспів:
А над усім гуде,
В неспокій нас веде
Зелений дзвін —
Весни тривога!
Зелений дзвін —
Весни дорога!
Зелений дзвін —
У всьому!
Іди за ним
Із дому!

До таємниці доріг далеких
Нас обрій вабить знов навесні,
І кілометри, немов лелеки,
Ключами линуть у наші дні.

Приспів.','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28313','Зелений дзвін','Зовуть дороги, шляхи нас кличуть,
Щоб відкривати казки на землі.
І з нами завжди — вітер в обличчя,
Краса незнана десь у далі.

Приспів:
А над усім гуде,
В неспокій нас веде
Зелений дзвін —
Весни тривога!
Зелений дзвін —
Весни дорога!
Зелений дзвін —
У всьому!
Іди за ним
Із дому!

До таємниці доріг далеких
Нас обрій вабить знов навесні,
І кілометри, немов лелеки,
Ключами линуть у наші дні.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_284073';
DELETE FROM song_versions WHERE song_id = 'pisniua_284073';
DELETE FROM songs_fts WHERE song_id = 'pisniua_284073';
DELETE FROM songs WHERE id = 'pisniua_284073';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_284073','Ой, устану я в понеділок','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Український народний співаник, Мюнхен, 1946 р.',NULL,'Ой, устану я в понеділок,
Чи не напряду я хоч починок?

Приспів:
Ой, пряла чи не пряла,
Простіть, люди, що збрехала!
І клочя курить, і головка болить,
І до корчми кортить...
Ой, там куми п''ють,
Ой, там куми ждуть,
Та все вони випивають,
Та все мене споминають:
"Що за новина, що куми нема?"

Ой, устану я у вівторок,
Чи не напряду я пасмів сорок?

Приспів.

Ой, устану я у середу,
Чи не напряду я попереду?

Приспів.

Ой, устану я у четвер,
Чи не напряду я хоч тепер?

Приспів.

Ой, устану я у п''ятницю,
Чи не напряду я хоч чисницю?

Приспів.

Ой, устану я у суботу,
Чи не напряду я всю роботу?

Приспів','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_284073'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_284073','Ой, устану я в понеділок','Ой, устану я в понеділок,
Чи не напряду я хоч починок?

Приспів:
Ой, пряла чи не пряла,
Простіть, люди, що збрехала!
І клочя курить, і головка болить,
І до корчми кортить...
Ой, там куми п''ють,
Ой, там куми ждуть,
Та все вони випивають,
Та все мене споминають:
"Що за новина, що куми нема?"

Ой, устану я у вівторок,
Чи не напряду я пасмів сорок?

Приспів.

Ой, устану я у середу,
Чи не напряду я попереду?

Приспів.

Ой, устану я у четвер,
Чи не напряду я хоч тепер?

Приспів.

Ой, устану я у п''ятницю,
Чи не напряду я хоч чисницю?

Приспів.

Ой, устану я у суботу,
Чи не напряду я всю роботу?

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_282818';
DELETE FROM song_versions WHERE song_id = 'pisniua_282818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_282818';
DELETE FROM songs WHERE id = 'pisniua_282818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_282818','Ой да розвивайся, ой да сухий дубе','Українська народна пісня. Виконує: Черкаський народний хор','uk','ukraine_before_1917',NULL,NULL,'Найкращі пісні України, "Майдан", К., 1992.',NULL,'Ой да розвивайся, ой да сухий дубе, —
Завтра мороз буде.
Ой да убирайся, молодий козаче, —
Скоро похід буде.

Я морозу та ще й не боюся —
Зараз розів''юся.
Я ж походу та ще й не боюся —
Зараз уберуся.

Ой да на коника та й швидко схопився,
Низенько вклонився.
— Ой да прощавайте, сусідоньки,
Може, з ким сварився!

Приливайте мою дороженьку,
Щоб не курилася,
Розважайте та й отця і неньку,
Щоб не журилися.

Розкопайте та й крутії гори,
Щоб не валялися,
Розважайте брата із сестрою,
Щоб не побивалися.

Іскосіть ви та суху травоньку,
Щоб не хилилася,
Розважайте мою дівчиноньку,
Щоб не журилася.

— Приливали твою дороженьку —
Так куриться дуже,
Розважали твоїх отця-неньку,
Та журяться дуже.

Розкопали круті гори,
Валяються дуже.
Розважали брата із сестрою —
Побиваються дуже.

Іскосили всю сухую травоньку —
Так ламається дуже.
Розважали твою дівчиноньку —
Так журиться дуже','[''pisni.org.ua'', ''cat:kozacki'', ''cat:socialno-pobutovi'', ''Козацькі пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_282818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_282818','Ой да розвивайся, ой да сухий дубе','Ой да розвивайся, ой да сухий дубе, —
Завтра мороз буде.
Ой да убирайся, молодий козаче, —
Скоро похід буде.

Я морозу та ще й не боюся —
Зараз розів''юся.
Я ж походу та ще й не боюся —
Зараз уберуся.

Ой да на коника та й швидко схопився,
Низенько вклонився.
— Ой да прощавайте, сусідоньки,
Може, з ким сварився!

Приливайте мою дороженьку,
Щоб не курилася,
Розважайте та й отця і неньку,
Щоб не журилися.

Розкопайте та й крутії гори,
Щоб не валялися,
Розважайте брата із сестрою,
Щоб не побивалися.

Іскосіть ви та суху травоньку,
Щоб не хилилася,
Розважайте мою дівчиноньку,
Щоб не журилася.

— Приливали твою дороженьку —
Так куриться дуже,
Розважали твоїх отця-неньку,
Та журяться дуже.

Розкопали круті гори,
Валяються дуже.
Розважали брата із сестрою —
Побиваються дуже.

Іскосили всю сухую травоньку —
Так ламається дуже.
Розважали твою дівчиноньку —
Так журиться дуже');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_282818_l1','pisniua_282818','YouTube','https://www.youtube.com/watch?v=sCcHMgaqqNI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_282818_l2','pisniua_282818','YouTube','https://www.youtube.com/watch?v=wlF0kVZaGJE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_282818_l3','pisniua_282818','YouTube','https://www.youtube.com/watch?v=G2m3DD3mzHw','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_282818_l4','pisniua_282818','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_28328';
DELETE FROM song_versions WHERE song_id = 'pisniua_28328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28328';
DELETE FROM songs WHERE id = 'pisniua_28328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28328','Зимова казка','Музика: Володимир Івасюк Слова: Ростислав Братунь. Виконує: Віктор Шпортько','uk','ukraine_1991',NULL,NULL,'http://ivasyuk.domivka.net/',NULL,'Ніч зимову іскристу закликаю, зову,
Щоби казка сьогодні нам збулась наяву:
Принеси мені чарів, я прошу, принеси,
В сніговому серпанку, в мерехтінні краси.

Приспів:
Ти мене задивуєш, зачаруєш мене,
Як снігуронька чудом голубим промайне,
Як снігуронька прийде, чи любов це моя
У кружлянні сніжинок, мов зоря, засія.

Буду тебе я звати, щоб нікуди не йшла,
Буду я думку гадати — чи насправді була,
А чи, може, майнула, усміхнулась мені —
І не буде здаватись, що це в казці, у сні...

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28328','Зимова казка','Ніч зимову іскристу закликаю, зову,
Щоби казка сьогодні нам збулась наяву:
Принеси мені чарів, я прошу, принеси,
В сніговому серпанку, в мерехтінні краси.

Приспів:
Ти мене задивуєш, зачаруєш мене,
Як снігуронька чудом голубим промайне,
Як снігуронька прийде, чи любов це моя
У кружлянні сніжинок, мов зоря, засія.

Буду тебе я звати, щоб нікуди не йшла,
Буду я думку гадати — чи насправді була,
А чи, може, майнула, усміхнулась мені —
І не буде здаватись, що це в казці, у сні...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_28328_l1','pisniua_28328','YouTube','https://www.youtube.com/watch?v=j3wg8luBheA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_283010';
DELETE FROM song_versions WHERE song_id = 'pisniua_283010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_283010';
DELETE FROM songs WHERE id = 'pisniua_283010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_283010','Мамо, моя мамо','Музика: Юрій Грицюк Слова: Юрій Грицюк. Виконує: Микола Гнатюк','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я не знав чи я провернусь і коли,
Коли йшов шукати щастя у світи.
Стільки років вже пройшло — душа щемить
Знаю, що мене чекаєш ти.
Я залишу справи всі на кілька днів,
Суєта щоденна може зачекати.
Сяду в поїзд і повернусь в рідний дім,
Де мене завжди чекає мати.

Приспів:
Мамо, моя мамо, рідна моя ненько
Ти мене будь-ласка розбуди раненько,
Я візьму відерце, піду до криниці
І тобі напитись принесу водиці.

Ми з тобою тихо сядем у садку,
Посміємось, попечалимось удвох.
Скільки суму було на твоїм віку,
Та ніхто не знає, видно тільки Бог.
Я поїду, ти залишися сама
І будеш на мене кожен день чекати.
Буде гріти мене думка лиш одна:
Десь в віконці виглядає мене мати.

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_283010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_283010','Мамо, моя мамо','Я не знав чи я провернусь і коли,
Коли йшов шукати щастя у світи.
Стільки років вже пройшло — душа щемить
Знаю, що мене чекаєш ти.
Я залишу справи всі на кілька днів,
Суєта щоденна може зачекати.
Сяду в поїзд і повернусь в рідний дім,
Де мене завжди чекає мати.

Приспів:
Мамо, моя мамо, рідна моя ненько
Ти мене будь-ласка розбуди раненько,
Я візьму відерце, піду до криниці
І тобі напитись принесу водиці.

Ми з тобою тихо сядем у садку,
Посміємось, попечалимось удвох.
Скільки суму було на твоїм віку,
Та ніхто не знає, видно тільки Бог.
Я поїду, ти залишися сама
І будеш на мене кожен день чекати.
Буде гріти мене думка лиш одна:
Десь в віконці виглядає мене мати.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_283010_l1','pisniua_283010','YouTube','https://www.youtube.com/watch?v=K7EZkKzplhE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_284379';
DELETE FROM song_versions WHERE song_id = 'pisniua_284379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_284379';
DELETE FROM songs WHERE id = 'pisniua_284379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_284379','Рушник','Музика: Олександр Лазарєв Слова: Олександр Лазарєв, Наталка Коцюк. Виконує: Олександр Лазарєв','uk','ukraine_1991',NULL,'2006','авторське подання','28.10.2006 Добровеличківка – Долинська','Вишивала мама мою долю, одиноку долю нелегку.
Вишивала радістю і болем на яскраво-ніжнім рушнику.
Вишивала рідна, та й не знала - пролетять роки як у ві сні
І пошле їй Бог дочку-красуню у кітучім травні, навесні.
Буде травень буйно квітувати і зозуля перша закує,
Прошепоче щиро вдячність мати Богу за народження моє.

Приспів:
Моя матусю, небесними очима ти прямо в душу дивишся мені,
На рушнику квітуєш мов калина, а я співаю тобі мої пісні.
Мої пісні - то мій уклін і сповідь, тобі нетлінне сонечко моє.
Нехай завжди у музиці і в слові,
нехай святиться у віках і''мя твоє

Сплине час у праці і стражданні, запорошить коси сивина
Доні перша, матері остання. Все минає − пам''ять не мина.
І рушник, як память не минає, він в моєму домі на стіні.
Кожен ранок з вишитого раю мама посміхається мені.
Лиш зозуля не кує, не плаче - одинока пташка у вінку...
Як могла ти, мамо, передбачить долю на квітучім рушнику.

Приспів','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_284379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_284379','Рушник','Вишивала мама мою долю, одиноку долю нелегку.
Вишивала радістю і болем на яскраво-ніжнім рушнику.
Вишивала рідна, та й не знала - пролетять роки як у ві сні
І пошле їй Бог дочку-красуню у кітучім травні, навесні.
Буде травень буйно квітувати і зозуля перша закує,
Прошепоче щиро вдячність мати Богу за народження моє.

Приспів:
Моя матусю, небесними очима ти прямо в душу дивишся мені,
На рушнику квітуєш мов калина, а я співаю тобі мої пісні.
Мої пісні - то мій уклін і сповідь, тобі нетлінне сонечко моє.
Нехай завжди у музиці і в слові,
нехай святиться у віках і''мя твоє

Сплине час у праці і стражданні, запорошить коси сивина
Доні перша, матері остання. Все минає − пам''ять не мина.
І рушник, як память не минає, він в моєму домі на стіні.
Кожен ранок з вишитого раю мама посміхається мені.
Лиш зозуля не кує, не плаче - одинока пташка у вінку...
Як могла ти, мамо, передбачить долю на квітучім рушнику.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_28616';
DELETE FROM song_versions WHERE song_id = 'pisniua_28616';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28616';
DELETE FROM songs WHERE id = 'pisniua_28616';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28616','Гей Гук Мати Гук де Козаки п''ють','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Бібліотека поета. Народна лірика. 2. Перлини української народної пісні. - К.: Музична Україна, 1989','Спасительна: світ не по Правді. Українські релігійні роздуми про Воскресіння, Неволю і Спасіння. Но ми докажем своїм Клинком. Веселая Та Доріженька куди Вони йдуть. Отамане наш не дбаєш за нас. Стежки до листків про Українські пісні.','Гей Гук мати Гук де Козаки п''ють
І Веселая Та Доріженька куди Вони йдуть

Та куди ж вони йдуть там Бори гудуть
Поперед себе та вражих панів облавою пруть

Зібрались вони під Рясні Дуби
Та чекаючи та й Отамана на Раду собі

Отаман іде як Голуб гуде
А під Білою та Березою Головку кладе

Отамане наш не дбаєш за нас
Ось і бач наше та Товариство як розгардіяш.

Чи не срам Тобі покидати нас
І по застумах та цього лісу блукати без нас

Глянь Отамане вже світ настає
Ой уже ж наше та Товариство Коней сідлає

Ой помру ж я помру не зажив Слави
Бо нема мені та Долі бути Батьком над Вами','[''pisni.org.ua'', ''cat:istorychni'', ''cat:kozacki'', ''Історичні пісні'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28616'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28616','Гей Гук Мати Гук де Козаки п''ють','Гей Гук мати Гук де Козаки п''ють
І Веселая Та Доріженька куди Вони йдуть

Та куди ж вони йдуть там Бори гудуть
Поперед себе та вражих панів облавою пруть

Зібрались вони під Рясні Дуби
Та чекаючи та й Отамана на Раду собі

Отаман іде як Голуб гуде
А під Білою та Березою Головку кладе

Отамане наш не дбаєш за нас
Ось і бач наше та Товариство як розгардіяш.

Чи не срам Тобі покидати нас
І по застумах та цього лісу блукати без нас

Глянь Отамане вже світ настає
Ой уже ж наше та Товариство Коней сідлає

Ой помру ж я помру не зажив Слави
Бо нема мені та Долі бути Батьком над Вами');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_28616_l1','pisniua_28616','YouTube','https://www.youtube.com/watch?v=icaAyNq8Tgk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_28616_l2','pisniua_28616','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_28457';
DELETE FROM song_versions WHERE song_id = 'pisniua_28457';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28457';
DELETE FROM songs WHERE id = 'pisniua_28457';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28457','Асфальт засипаний каштанами','Музика: Ігор Білик Слова: Ніна Вернигора','uk','ukraine_1991',NULL,NULL,'із уст автора',NULL,'Асфальт засипаний каштанами,
Настав дощів осінніх час.
Нестерпно літа так чекали ми,
А тут же осінь жде на нас.

Пожовклий мокрий лист каштановий
Приклеїв вітер до лиця.
О Боже, сонця так чекали ми,
Звідкіль підкралась осінь ця?

І плаче осінь,
Душа рятунку просить.
Верба схилила коси до води.
І плаче осінь, а журавлі відносять
весни моєї роси в холоди.

Асфальт засипаний каштанами,
Травневі ночі не вернуть
І солов''ми довгожданими
Цю тишину не розітнуть.

Дощу засмучена мелодія.
Промоклий наскрізь листопад.
І у очах твоїх сьогодні я
Неможу сонця відшукать.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28457'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28457','Асфальт засипаний каштанами','Асфальт засипаний каштанами,
Настав дощів осінніх час.
Нестерпно літа так чекали ми,
А тут же осінь жде на нас.

Пожовклий мокрий лист каштановий
Приклеїв вітер до лиця.
О Боже, сонця так чекали ми,
Звідкіль підкралась осінь ця?

І плаче осінь,
Душа рятунку просить.
Верба схилила коси до води.
І плаче осінь, а журавлі відносять
весни моєї роси в холоди.

Асфальт засипаний каштанами,
Травневі ночі не вернуть
І солов''ми довгожданими
Цю тишину не розітнуть.

Дощу засмучена мелодія.
Промоклий наскрізь листопад.
І у очах твоїх сьогодні я
Неможу сонця відшукать.');
DELETE FROM song_links WHERE song_id = 'pisniua_284091';
DELETE FROM song_versions WHERE song_id = 'pisniua_284091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_284091';
DELETE FROM songs WHERE id = 'pisniua_284091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_284091','І шумить, і гуде *','Українська народна пісня. Виконує: Квітка Цісик','uk','ukraine_before_1917',NULL,NULL,'Український народний співаник, Мюнхен, 1946 р.',NULL,'І шумить, і гуде,
Дрібен дощик іде...
А хто мене, молодую,
А хто мене, молодую,
Та додому проведе?

Обізвався козак
У зеленім саду:
"Гуляй, гуляй, дівчинонько,
Гуляй, гуляй, дівчинонько,
Я додому проведу!

"Ой, прошу ж я тебе,
Не веди ж ти мене,
Бо сердиту матір маю,
Бо сердиту матір маю,
Буде бити мене.

Ой, ти, ненько моя,
А я ж донька твоя,
Тоді, було бити-вчити,
Тоді, було бити-вчити,
Як маленька була.

А тепер я велика,
Треба мені чоловіка,
Ні старого, ні малого,
Ні старого, ні малого,
Козаченька молодого.

Щоб у полі орав,
І у домі дбав,
Ой, а мене ж, молодую,
Ой, а мене ж, молодую,
Та хазяйкою звав!"','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_284091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_284091','І шумить, і гуде *','І шумить, і гуде,
Дрібен дощик іде...
А хто мене, молодую,
А хто мене, молодую,
Та додому проведе?

Обізвався козак
У зеленім саду:
"Гуляй, гуляй, дівчинонько,
Гуляй, гуляй, дівчинонько,
Я додому проведу!

"Ой, прошу ж я тебе,
Не веди ж ти мене,
Бо сердиту матір маю,
Бо сердиту матір маю,
Буде бити мене.

Ой, ти, ненько моя,
А я ж донька твоя,
Тоді, було бити-вчити,
Тоді, було бити-вчити,
Як маленька була.

А тепер я велика,
Треба мені чоловіка,
Ні старого, ні малого,
Ні старого, ні малого,
Козаченька молодого.

Щоб у полі орав,
І у домі дбав,
Ой, а мене ж, молодую,
Ой, а мене ж, молодую,
Та хазяйкою звав!"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_284091_l1','pisniua_284091','YouTube','https://www.youtube.com/watch?v=cGEiKQ_6kO4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_284091_l2','pisniua_284091','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_28563';
DELETE FROM song_versions WHERE song_id = 'pisniua_28563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28563';
DELETE FROM songs WHERE id = 'pisniua_28563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28563','Біжить доріжка','Музика: Богдан Весоловський Слова: Михайло Масло','uk','ukraine_1991',NULL,NULL,'Богдан Весоловський "Я знов тобі..." Львів "Галицька видавнича спілка" 2002',NULL,'Біжить доріжка, стелиться,
Біжить у красен день.
Кружля по ній метелиця
Од яблунь і вишень.
Біжить осяйна луками,
Біжить через жита.
І стрічами й розлуками
Обпалює вуста.

А де ж моя веселиця
Терниста і крута?
Біжить доріжка, стелиться
І в пісню заверта.
А де ж моя веселиця
Терниста і крута?
Біжить доріжка, стелиться
І в пісню заверта.','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28563'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28563','Біжить доріжка','Біжить доріжка, стелиться,
Біжить у красен день.
Кружля по ній метелиця
Од яблунь і вишень.
Біжить осяйна луками,
Біжить через жита.
І стрічами й розлуками
Обпалює вуста.

А де ж моя веселиця
Терниста і крута?
Біжить доріжка, стелиться
І в пісню заверта.
А де ж моя веселиця
Терниста і крута?
Біжить доріжка, стелиться
І в пісню заверта.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_28563_l1','pisniua_28563','YouTube','https://www.youtube.com/watch?v=g9KjVKzM22w','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_28563_l2','pisniua_28563','YouTube','https://www.youtube.com/watch?v=hPI5l-hFXAE','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_285498';
DELETE FROM song_versions WHERE song_id = 'pisniua_285498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_285498';
DELETE FROM songs WHERE id = 'pisniua_285498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_285498','Кант про Ноя','Виконує: Василь Жданкін','uk','ukraine_1991',NULL,NULL,'Альбом','За словами В. Жданкіна датується XV ст. Виконує:Василь Жданкін Альбом Приватний запис','Сказав Господь: "Святим духом!
А ти, Ною, слухай ухом:
Строй ковчег, строй ковчег
Строй ковчег, строй ковчег!

Триста локтів довжиною,
А п''ятдесять шириною.
Тридцять вверх, тридцять вверх. | (2)

І глаголю всьому світу,
Щоб люд державсь завіту
Одвернувсь од гріха. | (2)

Возьми жену, возьми діти
Возьми тварі, возьми квіти
І взойдіть на ковчег. | (2)','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_285498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_285498','Кант про Ноя','Сказав Господь: "Святим духом!
А ти, Ною, слухай ухом:
Строй ковчег, строй ковчег
Строй ковчег, строй ковчег!

Триста локтів довжиною,
А п''ятдесять шириною.
Тридцять вверх, тридцять вверх. | (2)

І глаголю всьому світу,
Щоб люд державсь завіту
Одвернувсь од гріха. | (2)

Возьми жену, возьми діти
Возьми тварі, возьми квіти
І взойдіть на ковчег. | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_285961';
DELETE FROM song_versions WHERE song_id = 'pisniua_285961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_285961';
DELETE FROM songs WHERE id = 'pisniua_285961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_285961','Ізза Гаю Зеленого',NULL,'uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','Із-за Гаю Зеленого
Приспів: Щедрий Вечор Добрий Вечор
Добрим Людям на Здоров''я!

Вибігає Сивий Коник
Ніхто Коня не спіймає
Не спіймає не осідлає
Обізвався Пан Михайло
Ой я Коня іспіймаю
Іспіймаю іссідлаю
Да проїду за Гіроньку
За Гіроньку по Дівоньку!
Да привезем Батьку Слугу
Батьку Слугу Матці Другу
Собі Жену як Калину','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_285961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_285961','Ізза Гаю Зеленого','Із-за Гаю Зеленого
Приспів: Щедрий Вечор Добрий Вечор
Добрим Людям на Здоров''я!

Вибігає Сивий Коник
Ніхто Коня не спіймає
Не спіймає не осідлає
Обізвався Пан Михайло
Ой я Коня іспіймаю
Іспіймаю іссідлаю
Да проїду за Гіроньку
За Гіроньку по Дівоньку!
Да привезем Батьку Слугу
Батьку Слугу Матці Другу
Собі Жену як Калину');
DELETE FROM song_links WHERE song_id = 'pisniua_286777';
DELETE FROM song_versions WHERE song_id = 'pisniua_286777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_286777';
DELETE FROM songs WHERE id = 'pisniua_286777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_286777','Серед села дичка','Українська народна пісня. Виконує: Ансамбль Львівського Університету "Черемош"','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','* - важко розібрати слова,','Серед села дичка, гоя-гоя,
Посіяла мамка пшона, чуга-я,
Болить мя головка, гоя-гоя-я-я |
За тим єдинаком, чуга-я.       | (2)

Ой ти, єдинаку, гоя-гоя
Маю на тя нюху*, чуга-я
Любити тя мушу, гоя-гоя-я-я    |
Лем ти нич не скажу, чуга-я.   | (2)

Серед села дичка, гоя-гоя
Розпустила листя, чуга-я
Легінь вівчарив, гоя-гоя-я-я   |
Я го полюбила, чуга-я.         | (2)

Прийде до ня милий,  гоя-гоя
Посидить, **** чуга-я
Любила та й буду, гоя-гоя-я-я  |
То мені розкаже, чуга-я.       | (2)','[''pisni.org.ua'', ''cat:huculski'', ''Гуцульські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_286777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_286777','Серед села дичка','Серед села дичка, гоя-гоя,
Посіяла мамка пшона, чуга-я,
Болить мя головка, гоя-гоя-я-я |
За тим єдинаком, чуга-я.       | (2)

Ой ти, єдинаку, гоя-гоя
Маю на тя нюху*, чуга-я
Любити тя мушу, гоя-гоя-я-я    |
Лем ти нич не скажу, чуга-я.   | (2)

Серед села дичка, гоя-гоя
Розпустила листя, чуга-я
Легінь вівчарив, гоя-гоя-я-я   |
Я го полюбила, чуга-я.         | (2)

Прийде до ня милий,  гоя-гоя
Посидить, **** чуга-я
Любила та й буду, гоя-гоя-я-я  |
То мені розкаже, чуга-я.       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_286777_l1','pisniua_286777','YouTube','https://www.youtube.com/watch?v=8A_gtBs4rw0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_286777_l2','pisniua_286777','YouTube','https://www.youtube.com/watch?v=S1ppMjcgFrU','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_286777_l3','pisniua_286777','YouTube','https://www.youtube.com/watch?v=nbS2pLjkmh4','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_28624';
DELETE FROM song_versions WHERE song_id = 'pisniua_28624';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28624';
DELETE FROM songs WHERE id = 'pisniua_28624';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28624','Ой полети, галко','Українська народна пісня. Виконує: Василь Литвин','uk','ukraine_before_1917',NULL,NULL,'1. Бібліотека поета. Народна лірика. 2. Книга:Українські народні пісні;В 2 книгах; Київ, "Мистецтво" 1955; Кн.1,с.58-59',NULL,'Ой полети, галко, ой полети, чорна,
Да й на Січ риби їсти;
Ой принеси, галко, ой принеси, чорна,
Від кошового вісті!
Ой да уже ж галці, ой да уже ж чорній
Да на Січ не літати;
Ой да уже ж галці, ой да уже ж чорній
Вістей не слихати!
Гей, ви, запорожці, гей, ви, молодії,
Да де ж ваші жупани?
Ой наші жупани поносили пани,
Самі ми пропали!
Гей, ви, запорожці, гей, ви, молодії,
Ой де ж ваші списи?
Ох, і наші списи у пана у стрісі,
Самі ми у лісі!
Гей, ви, запорожці, гей, ви, молодії,
Та де ж ваші рушниці?
Ой наші рушниці у пана в світлиці,
Самі ми в темниці!
Ой полети, галко, ой полети, чорна,
Да й на Січ риби їсти;
Ой принеси, галко, ой принеси, чорна,
Від кошового вісті!
Ой да уже ж галці, ой да уже ж чорній
Да на Січ не літати;
Ой да уже ж галці, ой да уже ж чорній
Вістей не слихати!','[''pisni.org.ua'', ''cat:istorychni'', ''cat:kozacki'', ''Історичні пісні'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28624'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28624','Ой полети, галко','Ой полети, галко, ой полети, чорна,
Да й на Січ риби їсти;
Ой принеси, галко, ой принеси, чорна,
Від кошового вісті!
Ой да уже ж галці, ой да уже ж чорній
Да на Січ не літати;
Ой да уже ж галці, ой да уже ж чорній
Вістей не слихати!
Гей, ви, запорожці, гей, ви, молодії,
Да де ж ваші жупани?
Ой наші жупани поносили пани,
Самі ми пропали!
Гей, ви, запорожці, гей, ви, молодії,
Ой де ж ваші списи?
Ох, і наші списи у пана у стрісі,
Самі ми у лісі!
Гей, ви, запорожці, гей, ви, молодії,
Та де ж ваші рушниці?
Ой наші рушниці у пана в світлиці,
Самі ми в темниці!
Ой полети, галко, ой полети, чорна,
Да й на Січ риби їсти;
Ой принеси, галко, ой принеси, чорна,
Від кошового вісті!
Ой да уже ж галці, ой да уже ж чорній
Да на Січ не літати;
Ой да уже ж галці, ой да уже ж чорній
Вістей не слихати!');
DELETE FROM song_links WHERE song_id = 'pisniua_284767';
DELETE FROM song_versions WHERE song_id = 'pisniua_284767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_284767';
DELETE FROM songs WHERE id = 'pisniua_284767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_284767','Козацька застава','Музика: народна Слова: народ','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Нема Січі, загубили клейноди і славу,
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
DELETE FROM song_links WHERE song_id = 'pisniua_287212';
DELETE FROM song_versions WHERE song_id = 'pisniua_287212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_287212';
DELETE FROM songs WHERE id = 'pisniua_287212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_287212','Здрастуй, дім','Музика: Едуард Драч Слова: Едуард Драч. Виконує: Едуард Драч','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Здрастуй, дім,
Зустрічай, кохана,
Обіймай - скільки стане сил!
Хай їм грець, шляхті й басурманам,  |
Не питай, а збирай на стіл!         | (2)

Плач і сліз не втирай, дівчино,
Не прийшов з нами козак твій.
Боронив чайку-Україну,              |
Та й крильми - сокіл молодий.       | (2)

Став на стіл в келихах мед-вина,
Став на всіх, та ще й зайвий став,
Бо завжди пом''януть повинен         |
Той, хто пан, всіх тих, хто пропав. | (2)

Не кляніть долю безталанну,
На печаль не втрачайте сил,
Віруйте - Україна встане і          |
Ворогів струсить, наче пил.         | (2)

І якщо нашу крівцю знову
Буде пить вража голова -
Свисне знов шабелька Сіркова,       |
Загуде Йвана булава!                | (2)

Здрастуй, дім,
Зустрічай, кохана,
Обіймай - скільки стане сил!
Хай їм грець, шляхті й басурманам,  |
Не питай, а збирай на стіл!         | (2)','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_287212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_287212','Здрастуй, дім','Здрастуй, дім,
Зустрічай, кохана,
Обіймай - скільки стане сил!
Хай їм грець, шляхті й басурманам,  |
Не питай, а збирай на стіл!         | (2)

Плач і сліз не втирай, дівчино,
Не прийшов з нами козак твій.
Боронив чайку-Україну,              |
Та й крильми - сокіл молодий.       | (2)

Став на стіл в келихах мед-вина,
Став на всіх, та ще й зайвий став,
Бо завжди пом''януть повинен         |
Той, хто пан, всіх тих, хто пропав. | (2)

Не кляніть долю безталанну,
На печаль не втрачайте сил,
Віруйте - Україна встане і          |
Ворогів струсить, наче пил.         | (2)

І якщо нашу крівцю знову
Буде пить вража голова -
Свисне знов шабелька Сіркова,       |
Загуде Йвана булава!                | (2)

Здрастуй, дім,
Зустрічай, кохана,
Обіймай - скільки стане сил!
Хай їм грець, шляхті й басурманам,  |
Не питай, а збирай на стіл!         | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_28716';
DELETE FROM song_versions WHERE song_id = 'pisniua_28716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28716';
DELETE FROM songs WHERE id = 'pisniua_28716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28716','Купала на Івана','(Ішли дівки по ягідки). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Купальські пісні / Упорядник Ю.Антків. Львів: БаК, 2004',NULL,'1. Купала на Івана,               (2)
Ішли дівки по ягідки.          (2)

2. Купала на Івана,               (2)
Ішов Іван та й в воду впав.    (2)

3. Купала на Івана,               (2)
За ним Марена скочила.         (2)

4. Купала на Івана,               (2)
Дівка Марена втонула.          (2)

5. Купала на Івана,               (2)
Ішли дівки по ягідки.          (2)    Основна мелодія','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28716','Купала на Івана','1. Купала на Івана,               (2)
Ішли дівки по ягідки.          (2)

2. Купала на Івана,               (2)
Ішов Іван та й в воду впав.    (2)

3. Купала на Івана,               (2)
За ним Марена скочила.         (2)

4. Купала на Івана,               (2)
Дівка Марена втонула.          (2)

5. Купала на Івана,               (2)
Ішли дівки по ягідки.          (2)    Основна мелодія');
DELETE FROM song_links WHERE song_id = 'pisniua_287354';
DELETE FROM song_versions WHERE song_id = 'pisniua_287354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_287354';
DELETE FROM songs WHERE id = 'pisniua_287354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_287354','Заспіваймо','(Під шатрами добре спати). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','пісня, яку співають в поході','Заспіваймо по українськи,
По українськи:
Під шатрами добре спати,
Не треба ся накривати,
Ані гріє, ані пріє,
Через дірки вітер віє!

Заспіваймо по французьки,
По французьки:
Під шатрон добре спон,
Не требон накривон,
Ані грон, ані прон,
Через дірки вітер вон.

Заспіваймо по англійськи,
По англійськи:
Під шатрейшон добре спейшон,
Не требейшон накривейшон,
Ані грейшон, ані прейшон,
Через дірки вітер вейшон.

Заспіваймо по німецьки,
По німецьки:
Під шатрехен добре спехен,
Не требехен накривехен,
Ані грехен, ані прехен,
Через дірки вітер вехен.

Заспіваймо по італійськи,
По італійськи:
Під шатріні добре спіні,
Не требіні накривіні,
Ані гріні, ані пріні,
Через дірки вітер віні.

Заспіваймо по африканськи,
По африканськи:
Під шатругі добре спугі,
Не требугі накривугі,
Ані гругі, ані пругі,
Через дірки вітер вугі.

Заспіваймо по російськи,
По російськи:
Під шатроф добре споф,
Не требоф накривоф,
Ані гроф, ані проф,
Через дірки вітер воф.

Заспіваймо по китайськи,
По китайськи:
Під шатрінг добре спінг,
Не требінг накривінг,
Ані грінг, ані прінг,
Через дірки вітер вінг.

Заспіваймо по грецьки,
По грецьки:
Під шатрос добре спос,
Не требос накривос,
Ані грос, ані прос,
Через дірки вітер вос.

Заспіваймо по латинськи,
По латинськи:
Під шатратус добре спатус,
Не требатус накриватус,
Ані гратус, ані пратус,
Через дірки вітер ватус.

Заспіваймо по жидівськи,
По жидівськи:
Під шатрала добре спала,
Не требала накривала,
Ані грала, ані прала,
Через дірки вітер вала.

Заспіваймо по індіянськи,
По індіянськи:
Під шатрав добре спав,
Не требав накривав,
Ані грав, ані прав,
Через дірки вітер вав.

Заспіваймо по австралійськи,
По австралійськи:
Під шатрейт добре спейт,
Не требейт накривейт,
Ані грейт, ані прейт,
Через дірки вітер вейт.

Заспіваймо по грузинськи,
По грузинськи:
Під шатрадзе добре спадзе,
Не требадзе накривадзе,
Ані градзе, ані прадзе,
Через дірки вітер вадзе.

Заспіваймо по польськи,
По польськи:
Під шатрець добре спець,
Не требець накривець,
Ані грець, ані прець,
Через дірки вітер вець.

Кінець!','[''pisni.org.ua'', ''cat:manrivni'', ''cat:plastovi'', ''Пісні на мандрівну тематику'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_287354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_287354','Заспіваймо','Заспіваймо по українськи,
По українськи:
Під шатрами добре спати,
Не треба ся накривати,
Ані гріє, ані пріє,
Через дірки вітер віє!

Заспіваймо по французьки,
По французьки:
Під шатрон добре спон,
Не требон накривон,
Ані грон, ані прон,
Через дірки вітер вон.

Заспіваймо по англійськи,
По англійськи:
Під шатрейшон добре спейшон,
Не требейшон накривейшон,
Ані грейшон, ані прейшон,
Через дірки вітер вейшон.

Заспіваймо по німецьки,
По німецьки:
Під шатрехен добре спехен,
Не требехен накривехен,
Ані грехен, ані прехен,
Через дірки вітер вехен.

Заспіваймо по італійськи,
По італійськи:
Під шатріні добре спіні,
Не требіні накривіні,
Ані гріні, ані пріні,
Через дірки вітер віні.

Заспіваймо по африканськи,
По африканськи:
Під шатругі добре спугі,
Не требугі накривугі,
Ані гругі, ані пругі,
Через дірки вітер вугі.

Заспіваймо по російськи,
По російськи:
Під шатроф добре споф,
Не требоф накривоф,
Ані гроф, ані проф,
Через дірки вітер воф.

Заспіваймо по китайськи,
По китайськи:
Під шатрінг добре спінг,
Не требінг накривінг,
Ані грінг, ані прінг,
Через дірки вітер вінг.

Заспіваймо по грецьки,
По грецьки:
Під шатрос добре спос,
Не требос накривос,
Ані грос, ані прос,
Через дірки вітер вос.

Заспіваймо по латинськи,
По латинськи:
Під шатратус добре спатус,
Не требатус накриватус,
Ані гратус, ані пратус,
Через дірки вітер ватус.

Заспіваймо по жидівськи,
По жидівськи:
Під шатрала добре спала,
Не требала накривала,
Ані грала, ані прала,
Через дірки вітер вала.

Заспіваймо по індіянськи,
По індіянськи:
Під шатрав добре спав,
Не требав накривав,
Ані грав, ані прав,
Через дірки вітер вав.

Заспіваймо по австралійськи,
По австралійськи:
Під шатрейт добре спейт,
Не требейт накривейт,
Ані грейт, ані прейт,
Через дірки вітер вейт.

Заспіваймо по грузинськи,
По грузинськи:
Під шатрадзе добре спадзе,
Не требадзе накривадзе,
Ані градзе, ані прадзе,
Через дірки вітер вадзе.

Заспіваймо по польськи,
По польськи:
Під шатрець добре спець,
Не требець накривець,
Ані грець, ані прець,
Через дірки вітер вець.

Кінець!');
DELETE FROM song_links WHERE song_id = 'pisniua_28694';
DELETE FROM song_versions WHERE song_id = 'pisniua_28694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28694';
DELETE FROM songs WHERE id = 'pisniua_28694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28694','Ми йдемо','Музика: Марія Бурмака, М. Павлiв Слова: Марія Бурмака, М. Павлiв. Виконує: Марія Бурмака','uk','ukraine_1991',NULL,NULL,'текст- http://burmaka.kiev.ua; аудіо- Марія Бурмака. "Лишаеться надія". 1994','* В оригіналі пісня виконується з Cm. У 1 і 3 рядках приспіву замість D можна зіграти Eadd9, а замість кожного останнього A - F#m. Замість F#m можна грати F#. Можна зіграти без Em* і А*. Деякі із використаних акордів: Esus2 [0 2 2 4 5 2] Eadd9 [0 2 2 x 0 2] Подано варіант тексту з аудіо-варіанту. У тексті з http://burmaka.kiev.ua тут є інакше: * Нiколи не закiнчиться терпiння. ** Ми йдемо, i нi про що не говорим. *** Назад вже вороття для нас немає.','Hm         Em       Hm  Em*
Хитнулася в туманi далечiнь,
Hm           Em          Hm   Em*
Слiди, що перед нами встали пилом.
Тут не було нiкого, тiльки тiнь
G          A        Esus2 G
Дорогу нам iмлою заступила.

Де безпритульнi заблукали почуття,
Заплутанi у срiбне павутиння.
Нiколи не закiнчиться життя,
Нiколи не обірветься терпiння.*

Приспів:
Hm  A D      Em           F#   Hm A*
Ми йдемо, за нами гаснуть лiхтарi.
Hm  A D     Em       F#  A*
Ми йдемо, попереду вогонь,
Hm  A D     Em           F#  Hm A*
Ми йдемо, i нi про що не говори.**
Hm  A D       Em         F# A*
Ми йдемо, ми все одно йдемо!

Програш:  Hm Em  (4)

Колиска там, гойдаючись, скрипить,
I спогади у небуття стирає.
Стихає вiтер: немовлятко спить —
Вже вороття назад для нас немає.***

Приспів.','[''pisni.org.ua'', ''cat:manrivni'', ''cat:philosophic'', ''Пісні на мандрівну тематику'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28694','Ми йдемо','Hm         Em       Hm  Em*
Хитнулася в туманi далечiнь,
Hm           Em          Hm   Em*
Слiди, що перед нами встали пилом.
Тут не було нiкого, тiльки тiнь
G          A        Esus2 G
Дорогу нам iмлою заступила.

Де безпритульнi заблукали почуття,
Заплутанi у срiбне павутиння.
Нiколи не закiнчиться життя,
Нiколи не обірветься терпiння.*

Приспів:
Hm  A D      Em           F#   Hm A*
Ми йдемо, за нами гаснуть лiхтарi.
Hm  A D     Em       F#  A*
Ми йдемо, попереду вогонь,
Hm  A D     Em           F#  Hm A*
Ми йдемо, i нi про що не говори.**
Hm  A D       Em         F# A*
Ми йдемо, ми все одно йдемо!

Програш:  Hm Em  (4)

Колиска там, гойдаючись, скрипить,
I спогади у небуття стирає.
Стихає вiтер: немовлятко спить —
Вже вороття назад для нас немає.***

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_287767';
DELETE FROM song_versions WHERE song_id = 'pisniua_287767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_287767';
DELETE FROM songs WHERE id = 'pisniua_287767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_287767','Бог! Україна! Свобода!',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис','пісня Легіону Остроги','На відстані кроку в минулі віки,
Коли знов в уяві постануть
Забуті слова, скам''яніли думки,
Народу історії й рани,
Не можна забути усіх, хто в боях
Віддали за волю гарячі серця.

Приспів:
Меч у долоні, рішучість в очах,
Ти - обраний свого народу.
Крок уперед і слова на устах:
Бог! Україна! Свобода!

Крізь море вогню, крізь ночі без сну
Крокують незламні колони
І пісню підхоплять про землю свою
Хто став у ряди оборони.
Воля народу - велика мета:
За це ми підемо у бій до кінця!

Приспів.

Вітчизну плюндрує чужинська орда,
Палають навколо багаття скорботи.
Бери чим скоріше у руки меча,
Разом ми зуміємо орду поборити!

Приспів. (2)','[''pisni.org.ua'', ''cat:plastovi'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_287767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_287767','Бог! Україна! Свобода!','На відстані кроку в минулі віки,
Коли знов в уяві постануть
Забуті слова, скам''яніли думки,
Народу історії й рани,
Не можна забути усіх, хто в боях
Віддали за волю гарячі серця.

Приспів:
Меч у долоні, рішучість в очах,
Ти - обраний свого народу.
Крок уперед і слова на устах:
Бог! Україна! Свобода!

Крізь море вогню, крізь ночі без сну
Крокують незламні колони
І пісню підхоплять про землю свою
Хто став у ряди оборони.
Воля народу - велика мета:
За це ми підемо у бій до кінця!

Приспів.

Вітчизну плюндрує чужинська орда,
Палають навколо багаття скорботи.
Бери чим скоріше у руки меча,
Разом ми зуміємо орду поборити!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_286328';
DELETE FROM song_versions WHERE song_id = 'pisniua_286328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_286328';
DELETE FROM songs WHERE id = 'pisniua_286328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_286328','В Цьому Домі як у Віночку','Виконує: Волиняни','uk','ukraine_before_1917',NULL,NULL,NULL,'Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда) ― Святий Збір (Трійця) ― Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','В Цьому Домі як у Віночку
Приспів: Щедрий Вечір Добрий Вечір

Тут Господар як Виноград
Господиня як Калина
А їх Дітки як Ті Квітки
Сад садили поливали
Вище мене краще мене','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_286328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_286328','В Цьому Домі як у Віночку','В Цьому Домі як у Віночку
Приспів: Щедрий Вечір Добрий Вечір

Тут Господар як Виноград
Господиня як Калина
А їх Дітки як Ті Квітки
Сад садили поливали
Вище мене краще мене');
DELETE FROM song_links WHERE song_id = 'pisniua_287653';
DELETE FROM song_versions WHERE song_id = 'pisniua_287653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_287653';
DELETE FROM songs WHERE id = 'pisniua_287653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_287653','Йшли стрільці на войну','Українська народна пісня','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'стрілецька пісня','Почув її від свого діда. ЇЇ співали повстанці на Волині','Йшли стрільці на войну за Україну!
Йшли стрільці на войну за Україну! |
Кожен з них покинув дома дівчину   | (2)

Як прийшли на поле стали на врага,
Як прийшли на поле стали на врага,
Всі разом гукнули: Гей! Ура! Ура!

А батько старенький окопи копав,
А батько старенький окопи копав,
Здалеку побачив як стрілець упав.

Він собі не вірить ні очам своїм,
Він собі не вірить ні очам своїм,
Підійшов він ближче - а то його син!

Назбирав він досок зробив йому гріб,
Назбирав він досок зробив йому гріб,
Сам гірко заплакав і поклав у гріб.

Як прийшов додому сів біля стола,
Як прийшов додому сів біля стола,
Ой Боже ж, мій Боже, болить голова.

А мати питає: Ой ти мужу мій!
А мати питає: Ой ти мужу мій!
Чи живе на войні син рідненький мій!

Ой живе він жиє в темному гробі,
Ой живе він жиє в темному гробі,
Висока могила і хрест на груді.

Як мати почула батькові слова,
Як мати почула батькові слова,
То зразу зомліла й впала нежива.

А батько з тоски вийняв револьвер,
А батько з тоски вийняв револьвер,
Сам себе прострілив і важко помер!','[''pisni.org.ua'', ''cat:povstanski'', ''cat:strilecki'', ''Повстанські пісні'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_287653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_287653','Йшли стрільці на войну','Йшли стрільці на войну за Україну!
Йшли стрільці на войну за Україну! |
Кожен з них покинув дома дівчину   | (2)

Як прийшли на поле стали на врага,
Як прийшли на поле стали на врага,
Всі разом гукнули: Гей! Ура! Ура!

А батько старенький окопи копав,
А батько старенький окопи копав,
Здалеку побачив як стрілець упав.

Він собі не вірить ні очам своїм,
Він собі не вірить ні очам своїм,
Підійшов він ближче - а то його син!

Назбирав він досок зробив йому гріб,
Назбирав він досок зробив йому гріб,
Сам гірко заплакав і поклав у гріб.

Як прийшов додому сів біля стола,
Як прийшов додому сів біля стола,
Ой Боже ж, мій Боже, болить голова.

А мати питає: Ой ти мужу мій!
А мати питає: Ой ти мужу мій!
Чи живе на войні син рідненький мій!

Ой живе він жиє в темному гробі,
Ой живе він жиє в темному гробі,
Висока могила і хрест на груді.

Як мати почула батькові слова,
Як мати почула батькові слова,
То зразу зомліла й впала нежива.

А батько з тоски вийняв револьвер,
А батько з тоски вийняв револьвер,
Сам себе прострілив і важко помер!');
DELETE FROM song_links WHERE song_id = 'pisniua_287394';
DELETE FROM song_versions WHERE song_id = 'pisniua_287394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_287394';
DELETE FROM songs WHERE id = 'pisniua_287394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_287394','Лев спить','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','колискова пісня','Гей у джунґлях,
У диких джунґлях
Лев спить тихим сном,
А він, бо вей...

Спи, дитино, моя дитино,
Лев спить тихим сном.
А він, бо вей...

А в таборі,
Таборі нашім
Зіроньки мигтять,
А він, бо вей...

Спи, дитино, моя дитино,
Лев спить тихим сном.
А він, бо вей...','[''pisni.org.ua'', ''cat:kolyskovi'', ''cat:plastovi'', ''Колискові'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_287394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_287394','Лев спить','Гей у джунґлях,
У диких джунґлях
Лев спить тихим сном,
А він, бо вей...

Спи, дитино, моя дитино,
Лев спить тихим сном.
А він, бо вей...

А в таборі,
Таборі нашім
Зіроньки мигтять,
А він, бо вей...

Спи, дитино, моя дитино,
Лев спить тихим сном.
А він, бо вей...');
DELETE FROM song_links WHERE song_id = 'pisniua_286993';
DELETE FROM song_versions WHERE song_id = 'pisniua_286993';
DELETE FROM songs_fts WHERE song_id = 'pisniua_286993';
DELETE FROM songs WHERE id = 'pisniua_286993';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_286993','Шапка землі','Слова: Вадим Крищенко','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,NULL,'Шапка землі — висока могила — козацька могила,
Насип її ненько Вкраїно під небо для тих,
Кого смерть в тридцять третім скосила,
Бо нам перед ними покаятись треба,
Очистити душу за голос лякливий, за руку безсилу.
Ой шапку землі мусиш ти і я мушу принести
На цю всескорботну могилу.','[''pisni.org.ua'', ''cat:holodomor'', ''Пісні про голодомор'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_286993'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_286993','Шапка землі','Шапка землі — висока могила — козацька могила,
Насип її ненько Вкраїно під небо для тих,
Кого смерть в тридцять третім скосила,
Бо нам перед ними покаятись треба,
Очистити душу за голос лякливий, за руку безсилу.
Ой шапку землі мусиш ти і я мушу принести
На цю всескорботну могилу.');
DELETE FROM song_links WHERE song_id = 'pisniua_287165';
DELETE FROM song_versions WHERE song_id = 'pisniua_287165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_287165';
DELETE FROM songs WHERE id = 'pisniua_287165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_287165','Маршують вже повстанці','Музика: Роман Купчинський Слова: Роман Купчинський','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис','пісня Легіону','Маршують вже повстанці,
Як давно колись стрільці,
Сяє зброя їх у сонці,
Грає усміх на лиці.
Приспів:
G
Хто живий, хто живий,
D
В ряд ставай, в ряд ставай!
A
Здобувати, визволяти
Рідний край!
Тільки зброя дасть нам волю,
Гей, юначе, не барись,
В тихих водах, ясні зорі
Знов засяють, як колись.
Приспів.
Вже не буде ворог лютий
Розпинати нам братів,
Не вливатиме отрути
В серця чисті юнаків.
Приспів.
Перед нами молодими
Простелився волі шлях,
Пісня лине в небо синє
Переможно має стяг.
Приспів.','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_287165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_287165','Маршують вже повстанці','Маршують вже повстанці,
Як давно колись стрільці,
Сяє зброя їх у сонці,
Грає усміх на лиці.
Приспів:
G
Хто живий, хто живий,
D
В ряд ставай, в ряд ставай!
A
Здобувати, визволяти
Рідний край!
Тільки зброя дасть нам волю,
Гей, юначе, не барись,
В тихих водах, ясні зорі
Знов засяють, як колись.
Приспів.
Вже не буде ворог лютий
Розпинати нам братів,
Не вливатиме отрути
В серця чисті юнаків.
Приспів.
Перед нами молодими
Простелився волі шлях,
Пісня лине в небо синє
Переможно має стяг.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_287165_l1','pisniua_287165','YouTube','https://www.youtube.com/watch?v=Nqqx3AUcIqo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_287675';
DELETE FROM song_versions WHERE song_id = 'pisniua_287675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_287675';
DELETE FROM songs WHERE id = 'pisniua_287675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_287675','Ішла Дівонька Лужком Бережком',NULL,'uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','Ішла Дівонька Лужком-Бережком
Приспів: Ой рано
Ой рано-рано
Сонечко зійшло кохано

Зустріла вона Трьох Косариків
Ви Косарики-мої-братіки
Скосіте мені Шовкову Траву
А за те буду усім Трьом платна
Першому дарю Шовкову Траву
Другому дарю Золотий Перстень
Третьому буду Сама Молода','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_287675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_287675','Ішла Дівонька Лужком Бережком','Ішла Дівонька Лужком-Бережком
Приспів: Ой рано
Ой рано-рано
Сонечко зійшло кохано

Зустріла вона Трьох Косариків
Ви Косарики-мої-братіки
Скосіте мені Шовкову Траву
А за те буду усім Трьом платна
Першому дарю Шовкову Траву
Другому дарю Золотий Перстень
Третьому буду Сама Молода');
DELETE FROM song_links WHERE song_id = 'pisniua_287697';
DELETE FROM song_versions WHERE song_id = 'pisniua_287697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_287697';
DELETE FROM songs WHERE id = 'pisniua_287697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_287697','А в Ліску в Ліску на Жовтім Піску (2)',NULL,'uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Листки з приводу цієї Пісні: Поезія Астральних з''яв і реліґійні настрої. Питання походження людини в Колядкових мітах. Одною з найцікавіших загадок Колядкової космогонії є походження людини... Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда) ― Святий Збір (Трійця) ― Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','А в Ліску в Ліску на Жовтім Піску
Приспів: Рожа-моя
Вся Червоная Боровая

Росте Деревце тонко високо
Тонко високо в Корінь глибоко
В Корінь глибоко Листом широко

На Тім Деревці Гуси-лебеді
Ой сидять-сидять Далеко видять
Ой видять же вни Чистоє Поле
Чистоє Поле Синьоє Море

На Синім Морі Корабель пливе
А в Тім Кораблі Ґречна Панночка
Ґречна Панночка чом Ганусечка
Озивається до Паниченька
До Паниченька-Поповиченька

Ой Паниченьку-Поповиченьку
Ой возьми мене та з Кораблика
Бо є у мене Сімдесят Братів
Сімдесят Братів а Три Рідненькі
Ой держать мені та Парть велику
А як мня візьмеш Все-тото дадуть','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:philosophic'', ''cat:shchedrivky'', ''cat:vesilni'', ''Колядки'', ''Філософські пісні'', ''Щедрівки'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_287697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_287697','А в Ліску в Ліску на Жовтім Піску (2)','А в Ліску в Ліску на Жовтім Піску
Приспів: Рожа-моя
Вся Червоная Боровая

Росте Деревце тонко високо
Тонко високо в Корінь глибоко
В Корінь глибоко Листом широко

На Тім Деревці Гуси-лебеді
Ой сидять-сидять Далеко видять
Ой видять же вни Чистоє Поле
Чистоє Поле Синьоє Море

На Синім Морі Корабель пливе
А в Тім Кораблі Ґречна Панночка
Ґречна Панночка чом Ганусечка
Озивається до Паниченька
До Паниченька-Поповиченька

Ой Паниченьку-Поповиченьку
Ой возьми мене та з Кораблика
Бо є у мене Сімдесят Братів
Сімдесят Братів а Три Рідненькі
Ой держать мені та Парть велику
А як мня візьмеш Все-тото дадуть');
DELETE FROM song_links WHERE song_id = 'pisniua_287522';
DELETE FROM song_versions WHERE song_id = 'pisniua_287522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_287522';
DELETE FROM songs WHERE id = 'pisniua_287522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_287522','На різдво Христове',NULL,'uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'На Різдво Христове
Ангел прилетів,
Він летів по небу,
Людям говорив:
Всі люди, святкуйте,
В цей день торжествуйте,
В день Христового Різдва!

Я лечу від Бога,
Радість вам приніс,
Що в вертепі біднім
Народивсь Христос:
Скоріш поспішайте,
Младенца вітайте
Новонарожденного!

А Ірод лукавий,
Крепко в злість упав,
Дітей всіх побити
Воїнів послав:
Дітей всіх побили,
Мечі потупили,
А Христос навік зоставсь!

Много согрішили,
Спасе дорогий,
Всі ми - люди - грішні,
Ти один Святий:
Прости согрішення,
Дай нам обновлення
В день Христового Різдва!','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_287522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_287522','На різдво Христове','На Різдво Христове
Ангел прилетів,
Він летів по небу,
Людям говорив:
Всі люди, святкуйте,
В цей день торжествуйте,
В день Христового Різдва!

Я лечу від Бога,
Радість вам приніс,
Що в вертепі біднім
Народивсь Христос:
Скоріш поспішайте,
Младенца вітайте
Новонарожденного!

А Ірод лукавий,
Крепко в злість упав,
Дітей всіх побити
Воїнів послав:
Дітей всіх побили,
Мечі потупили,
А Христос навік зоставсь!

Много согрішили,
Спасе дорогий,
Всі ми - люди - грішні,
Ти один Святий:
Прости согрішення,
Дай нам обновлення
В день Христового Різдва!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_287522_l1','pisniua_287522','YouTube','https://www.youtube.com/watch?v=7mkbCQdpjBc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_287522_l2','pisniua_287522','YouTube','https://www.youtube.com/watch?v=q1EfszNrrOE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_287522_l3','pisniua_287522','YouTube','https://www.youtube.com/watch?v=YRZDmrC5Gyw','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_287522_l4','pisniua_287522','YouTube','https://www.youtube.com/watch?v=K5MX-i8aRqA','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_287522_l5','pisniua_287522','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_287379';
DELETE FROM song_versions WHERE song_id = 'pisniua_287379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_287379';
DELETE FROM songs WHERE id = 'pisniua_287379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_287379','Коли візьму хустину','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Коли візьму хустину
Вдягнуся в однострій,
Здається в ту хвилину,
Що цілий світ є мій.

Гладесенькі дороги
Відкриються нараз,
Щоб я піти мав змогу
На сходини на час.

Ступаю рівним кроком,
На мені однострій
І цілий світ широкий
У цю хвилину мій.

Гладесенькі дороги
Відкриються нараз,
Щоб я піти мав змогу
На сходини на час.','[''pisni.org.ua'', ''cat:manrivni'', ''cat:plastovi'', ''Пісні на мандрівну тематику'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_287379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_287379','Коли візьму хустину','Коли візьму хустину
Вдягнуся в однострій,
Здається в ту хвилину,
Що цілий світ є мій.

Гладесенькі дороги
Відкриються нараз,
Щоб я піти мав змогу
На сходини на час.

Ступаю рівним кроком,
На мені однострій
І цілий світ широкий
У цю хвилину мій.

Гладесенькі дороги
Відкриються нараз,
Щоб я піти мав змогу
На сходини на час.');
DELETE FROM song_links WHERE song_id = 'pisniua_288251';
DELETE FROM song_versions WHERE song_id = 'pisniua_288251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_288251';
DELETE FROM songs WHERE id = 'pisniua_288251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_288251','Jingle bells',NULL,'uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: Настенька Підбір акордів: Настенька','C
Кружляє над будинками
F
І падає до ніг
G
Сріблястими сніжинками
C
Лапатий перший сніг.
Укрилась білим килимом
За вікнами земля,
І весело наспівує
Метелиця-зима:

Приспів:
C
День-дзень-дзень, день-дзень-дзень,

Скоро Новий рік!
Летять сніжинки, білий сніг
G
Вже випав на поріг.
День-дзень-дзень, день-дзень-дзень,
Новорічний дзвін
Знов дзвенить і всіх вітає
З Новим роком він.

А Дід Мороз саночками
В червонім кожушку
Привіз нам подаруночки
У чарівнім мішку.
Ялиночка красується,
Засяяли вогні,
Нехай нам радість принесуть
Ці новорічні дні.

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:new-year'', ''Дитячі пісні'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_288251'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_288251','Jingle bells','C
Кружляє над будинками
F
І падає до ніг
G
Сріблястими сніжинками
C
Лапатий перший сніг.
Укрилась білим килимом
За вікнами земля,
І весело наспівує
Метелиця-зима:

Приспів:
C
День-дзень-дзень, день-дзень-дзень,

Скоро Новий рік!
Летять сніжинки, білий сніг
G
Вже випав на поріг.
День-дзень-дзень, день-дзень-дзень,
Новорічний дзвін
Знов дзвенить і всіх вітає
З Новим роком він.

А Дід Мороз саночками
В червонім кожушку
Привіз нам подаруночки
У чарівнім мішку.
Ялиночка красується,
Засяяли вогні,
Нехай нам радість принесуть
Ці новорічні дні.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_288251_l1','pisniua_288251','YouTube','https://www.youtube.com/watch?v=2A97DabfjIk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_288251_l2','pisniua_288251','YouTube','https://www.youtube.com/watch?v=_sf0sn-CjSI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_288251_l3','pisniua_288251','YouTube','https://www.youtube.com/watch?v=yjdPwcypxrE','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_287952';
DELETE FROM song_versions WHERE song_id = 'pisniua_287952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_287952';
DELETE FROM songs WHERE id = 'pisniua_287952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_287952','Ой умер старенький батько','Музика: Тарас Мартинюк Слова: Тарас Шевченко. Виконує: І Кров по Долині','uk','ukraine_before_1917',NULL,NULL,'1. Авторське подання; 2. http://litopys.org.ua/shevchenko/shev273.htm','Підбір акордів: Тарас Мартинюк','"Ой умер старенький батько
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
DELETE FROM song_links WHERE song_id = 'pisniua_287818';
DELETE FROM song_versions WHERE song_id = 'pisniua_287818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_287818';
DELETE FROM songs WHERE id = 'pisniua_287818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_287818','Наш девіз','(Ні сліз, ні ридань). Українська народна пісня. Виконує: Не журись!, Софія Федина','uk','ukr_ssr_1919_1991',NULL,NULL,'1. Пісневир: Молодіжний співаник. - Львів, 2001. - 224 с. 2. Аудіо-альбом "Софія Федина. Буде нам з тобою що згадати…" (2008)','*Відміна: "Єдиним могутнім девізом З''єднаєм кордони Збручів." [2]','Ні сліз, ні ридань, ні прокльонів,
Em
Ні кволости дряхлих старців,
А нових сотень, батальйонів,
Твердих і незламних борців.

Єдиним могутнім поривом
Зітремо кордони Збручів.*
Держава - це кров і залізо,
Свобода - це вістря мечів!

Від Дону, Кубані й Кавказу,
До Тиси і Пруту-ріки,
Слухняні одному наказу
Повстанські залізні полки.

В неволі Дніпро і Карпати,
Гартуйте серця, насталіть,
Іде Україна могутня,
Для волі майбутніх століть.','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_287818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_287818','Наш девіз','Ні сліз, ні ридань, ні прокльонів,
Em
Ні кволости дряхлих старців,
А нових сотень, батальйонів,
Твердих і незламних борців.

Єдиним могутнім поривом
Зітремо кордони Збручів.*
Держава - це кров і залізо,
Свобода - це вістря мечів!

Від Дону, Кубані й Кавказу,
До Тиси і Пруту-ріки,
Слухняні одному наказу
Повстанські залізні полки.

В неволі Дніпро і Карпати,
Гартуйте серця, насталіть,
Іде Україна могутня,
Для волі майбутніх століть.');
DELETE FROM song_links WHERE song_id = 'pisniua_288717';
DELETE FROM song_versions WHERE song_id = 'pisniua_288717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_288717';
DELETE FROM songs WHERE id = 'pisniua_288717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_288717','В добру путь','Музика: Богдан Косопуд Слова: Богдан Косопуд. Виконує: Богдан Косопуд','uk','ukraine_1991',NULL,NULL,'1. авторське подання',NULL,'Твої батьки, котрі тебе зростили,
Сповна тобі серденька віддають.
Маленьку на руках тебе носили,
Тепер благословляють в добру путь.

Приспів 1:
Так хочемо щоб ти була щаслива,    |
Розумна, гарна, завжди молода.     |
І мрії щоб усі твої здійснились,   | (2)
Кохання вірне щоб в житті знайшла. |

Ми будем щиро Господу молитись,
Щоб долю добру й щастя тобі дав -
Вродливій нашій донечці жаданій -
І Ангел щоб тебе оберігав.

Приспів 2:
Іди життям, неси любов і ласку,    |
І випромінюй щастям та добром.     |
Погане хай залишиться у казці,     | (2)
Недобре все хай буде тільки сном.  |

Приспів 1.

Приспів 2','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_288717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_288717','В добру путь','Твої батьки, котрі тебе зростили,
Сповна тобі серденька віддають.
Маленьку на руках тебе носили,
Тепер благословляють в добру путь.

Приспів 1:
Так хочемо щоб ти була щаслива,    |
Розумна, гарна, завжди молода.     |
І мрії щоб усі твої здійснились,   | (2)
Кохання вірне щоб в житті знайшла. |

Ми будем щиро Господу молитись,
Щоб долю добру й щастя тобі дав -
Вродливій нашій донечці жаданій -
І Ангел щоб тебе оберігав.

Приспів 2:
Іди життям, неси любов і ласку,    |
І випромінюй щастям та добром.     |
Погане хай залишиться у казці,     | (2)
Недобре все хай буде тільки сном.  |

Приспів 1.

Приспів 2');
DELETE FROM song_links WHERE song_id = 'pisniua_289869';
DELETE FROM song_versions WHERE song_id = 'pisniua_289869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_289869';
DELETE FROM songs WHERE id = 'pisniua_289869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_289869','Оголошення','Музика: Андрій Панчишин Слова: Андрій Панчишин. Виконує: Андрій Панчишин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'По цілому місту на ринвах іржавих,
На стінах облізлих і на парканах,
Старанно розвішане оголошення,
Оголошення:
"Загублену мову рідну, материнську
Поверну власникові безкоштовно,
Безкоштовно."

Прилизаний диктор поправив краватку
І зуби блискучі продемонстрував,
А зараз послухайте оголошення,
Оголошення:
"Загублену мову рідну, материнську
Вважати недійсною, недійсною,
Недійсною."

У кожнім кіоску вечірня газета,
На третій сторінці в самому кутку
Читайте у рубриці оголошення,
Оголошення:
"Продам свою мову рідну, материнську
У доброму стані
Недорого, недорого."

У вечірню газету загорнуте сало
І диктора голос летить в порожнечу,
І ринву іржаву шкребуть двірники.
Даремно давали ви оголошення,
Оголошення.

Адже людина без рідної мови
Не зрозуміє його ніколи в житті,
Ніколи в житті, ніколи в житті.','[''pisni.org.ua'', ''cat:pisni-pro-movy'', ''Пісні про рідну мову'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_289869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_289869','Оголошення','По цілому місту на ринвах іржавих,
На стінах облізлих і на парканах,
Старанно розвішане оголошення,
Оголошення:
"Загублену мову рідну, материнську
Поверну власникові безкоштовно,
Безкоштовно."

Прилизаний диктор поправив краватку
І зуби блискучі продемонстрував,
А зараз послухайте оголошення,
Оголошення:
"Загублену мову рідну, материнську
Вважати недійсною, недійсною,
Недійсною."

У кожнім кіоску вечірня газета,
На третій сторінці в самому кутку
Читайте у рубриці оголошення,
Оголошення:
"Продам свою мову рідну, материнську
У доброму стані
Недорого, недорого."

У вечірню газету загорнуте сало
І диктора голос летить в порожнечу,
І ринву іржаву шкребуть двірники.
Даремно давали ви оголошення,
Оголошення.

Адже людина без рідної мови
Не зрозуміє його ніколи в житті,
Ніколи в житті, ніколи в житті.');
DELETE FROM song_links WHERE song_id = 'pisniua_28869';
DELETE FROM song_versions WHERE song_id = 'pisniua_28869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28869';
DELETE FROM songs WHERE id = 'pisniua_28869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28869','Тихо, в вечірнім промінні',NULL,'uk','ukraine_1991',NULL,NULL,'Українські пісні про кохання "Струни серця"','TODO: авторство','Тихо, в вечірнім промінні
Сонце ховається в гай.
Линуть вечірнії тіні,
Нічка жадана, сховай.

Люба, не треба вагання,
Бачу в очах я твоїх
Море безмежне кохання,
Бурю шалених утіх.

Мріють під місяцем клени.
Серце так солодко б''є,
Бо найдорожче для мене
Ніжне кохання твоє.

Люба крізь сон промовляє:
"Що ті гарячі слова"
Вітер туман колихає.
Зорі, дерева, трава.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28869','Тихо, в вечірнім промінні','Тихо, в вечірнім промінні
Сонце ховається в гай.
Линуть вечірнії тіні,
Нічка жадана, сховай.

Люба, не треба вагання,
Бачу в очах я твоїх
Море безмежне кохання,
Бурю шалених утіх.

Мріють під місяцем клени.
Серце так солодко б''є,
Бо найдорожче для мене
Ніжне кохання твоє.

Люба крізь сон промовляє:
"Що ті гарячі слова"
Вітер туман колихає.
Зорі, дерева, трава.');
DELETE FROM song_links WHERE song_id = 'pisniua_288216';
DELETE FROM song_versions WHERE song_id = 'pisniua_288216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_288216';
DELETE FROM songs WHERE id = 'pisniua_288216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_288216','В глубокій долині звізда засвітила','Музика: народ Слова: народ','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: ― Святі Водорщі) ―: Дівич-Вечір...... Зелені Свята () ― Царинні Містерії...... Астральні Жнива... Рокове Коло.','В глубокій долині звізда засвітила,
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
DELETE FROM song_links WHERE song_id = 'pisniua_290971';
DELETE FROM song_versions WHERE song_id = 'pisniua_290971';
DELETE FROM songs_fts WHERE song_id = 'pisniua_290971';
DELETE FROM songs WHERE id = 'pisniua_290971';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_290971','На Чорнобиль журавлі летіли','Музика: Олександр Білаш Слова: Дмитро Павличко. Виконує: Микола Кондратюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На Чорнобиль журавлі летіли,
З вирію вертались на весні.
Як сніжниця попелище біле
Зозвівалось в рідній стороні.

Там згоріли гнізда і гніздечка,
Поржавіла хвоя і трава,
Журавлина крихітна вервечка
Напиналась, наче тятева.

Не було ні стогону, ні крику,
Тільки пошум виморених крил.
Журавлі несли печаль велику,
Наче тінь невидимих могил.

Не спинились птиці на кордоні,
Де всякає атом у пісок
І дивився батько з під долоні,
І ридала мати в небеса','[''pisni.org.ua'', ''cat:chornobyl'', ''cat:nostalgia'', ''Чорнобильська катастрофа: пісні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_290971'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_290971','На Чорнобиль журавлі летіли','На Чорнобиль журавлі летіли,
З вирію вертались на весні.
Як сніжниця попелище біле
Зозвівалось в рідній стороні.

Там згоріли гнізда і гніздечка,
Поржавіла хвоя і трава,
Журавлина крихітна вервечка
Напиналась, наче тятева.

Не було ні стогону, ні крику,
Тільки пошум виморених крил.
Журавлі несли печаль велику,
Наче тінь невидимих могил.

Не спинились птиці на кордоні,
Де всякає атом у пісок
І дивився батько з під долоні,
І ридала мати в небеса');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_290971_l1','pisniua_290971','YouTube','https://www.youtube.com/watch?v=3ELD7FsAVvo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_290971_l2','pisniua_290971','YouTube','https://www.youtube.com/watch?v=WZ8epZYucuc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_290971_l3','pisniua_290971','YouTube','https://www.youtube.com/watch?v=wG63bv5ZOEs','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_289756';
DELETE FROM song_versions WHERE song_id = 'pisniua_289756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_289756';
DELETE FROM songs WHERE id = 'pisniua_289756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_289756','Дух Молоді','Музика: Юлія Лорд Слова: Юлія Лорд. Виконує: Юлія Лорд','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Готуй себе і зброю свою,
Щоб повертати втрачений світ.
Тебе лишають друзі твої,
Я знаю слово, гідне їх всіх.

Приспів:
Йди до світла, так простіше,
Вибираєм, хто сильніший.
Я за тебе буду гірше,
Вибираєм, хто сильніший.
То сказати буде гірше,
Вибираєм, хто сильніший

Ми маєм бути тут до кінця,
Співати і зривати серця.
Мені погано дихати тим,
Що є заразним, що є сумним.

Приспів.

Я обіцяю вибачить всіх
І пам''ятати радісний сміх
Забудь про м''язи у голові
Не думай більше ти взагалі

Приспів.

Є відмова (9)','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_289756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_289756','Дух Молоді','Готуй себе і зброю свою,
Щоб повертати втрачений світ.
Тебе лишають друзі твої,
Я знаю слово, гідне їх всіх.

Приспів:
Йди до світла, так простіше,
Вибираєм, хто сильніший.
Я за тебе буду гірше,
Вибираєм, хто сильніший.
То сказати буде гірше,
Вибираєм, хто сильніший

Ми маєм бути тут до кінця,
Співати і зривати серця.
Мені погано дихати тим,
Що є заразним, що є сумним.

Приспів.

Я обіцяю вибачить всіх
І пам''ятати радісний сміх
Забудь про м''язи у голові
Не думай більше ти взагалі

Приспів.

Є відмова (9)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_289756_l1','pisniua_289756','YouTube','https://www.youtube.com/watch?v=URx5xFAXJFY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_289313';
DELETE FROM song_versions WHERE song_id = 'pisniua_289313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_289313';
DELETE FROM songs WHERE id = 'pisniua_289313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_289313','Зоряна','Музика: Олександр Лазарєв Слова: Олександр Лазарєв, Антоніна Корінь. Виконує: Олександр Лазарєв','uk','ukraine_1991',NULL,'2006','авторське подання','Долинська 31.08.2006','Люба дівчино, кохана,
Синьоока та рум''яна - маків цвіт.
Кажуть ти не йдеш, а пишеш,
І на всіх медами дишеш - ясен світ.
Я блукав у полі, в лісі,
У гаях мого Полісся все сходив.
Линув птахом над горами,
Щоб зустріть тебе - Зоряно, диво з див.

Приспів:
Гей, Зоряно! Дівчино кохана, дівчина жадана,
Ти моя, Зоряна!
Гей, Зоряно! Зоре-зоряниця, дівчина кохана,
Зоре-чарівниця!

Як побачу твої очі,
То без тебе я не хочу в світі жить.
Буду я тебе кохати і до серця пригортати кожну мить.
Руки я твої цілую,
Перстень і фату дарую - одягни!
Ой Зоряночко, Зоряна!
На рушник весільний станьмо восени!

Приспів','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_289313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_289313','Зоряна','Люба дівчино, кохана,
Синьоока та рум''яна - маків цвіт.
Кажуть ти не йдеш, а пишеш,
І на всіх медами дишеш - ясен світ.
Я блукав у полі, в лісі,
У гаях мого Полісся все сходив.
Линув птахом над горами,
Щоб зустріть тебе - Зоряно, диво з див.

Приспів:
Гей, Зоряно! Дівчино кохана, дівчина жадана,
Ти моя, Зоряна!
Гей, Зоряно! Зоре-зоряниця, дівчина кохана,
Зоре-чарівниця!

Як побачу твої очі,
То без тебе я не хочу в світі жить.
Буду я тебе кохати і до серця пригортати кожну мить.
Руки я твої цілую,
Перстень і фату дарую - одягни!
Ой Зоряночко, Зоряна!
На рушник весільний станьмо восени!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_288199';
DELETE FROM song_versions WHERE song_id = 'pisniua_288199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_288199';
DELETE FROM songs WHERE id = 'pisniua_288199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_288199','В Вифлеємі тайна явилась велика','Музика: Остап Нижанківський Слова: народ','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В Вифлеємі тайна явилась велика,
Там бо народився предвічний Владика.
Богу честь віддаймо, весело співаймо:  |
Слава во вишних Богу!                  | (2)

Марія Пречиста Господа сповила,
В вертепі на сіні в яслах положила.
Там пастирі грають, ангели співают:    |
Слава во вишних Богу!                  | (2)

Всі небесні сили Ісуса хвалили,
А пастирям в полі радість цю звістили.
Всі з душі співають, Спаса величають:  |
Слава во вишних Богу!                  | (2)

Господнє Дитятко три царі вгощали,
Ісусові в ясла дарунки поклали.
Весело вітають і гуртом співають:      |
Слава во вишних Богу!                  | (2)

І ми Христа разом щиро привітаймо,
Господа Вселений покірно благаймо:
В мирі проживати, Бога величати!       |
Слава во вишних Богу!                  | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_288199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_288199','В Вифлеємі тайна явилась велика','В Вифлеємі тайна явилась велика,
Там бо народився предвічний Владика.
Богу честь віддаймо, весело співаймо:  |
Слава во вишних Богу!                  | (2)

Марія Пречиста Господа сповила,
В вертепі на сіні в яслах положила.
Там пастирі грають, ангели співают:    |
Слава во вишних Богу!                  | (2)

Всі небесні сили Ісуса хвалили,
А пастирям в полі радість цю звістили.
Всі з душі співають, Спаса величають:  |
Слава во вишних Богу!                  | (2)

Господнє Дитятко три царі вгощали,
Ісусові в ясла дарунки поклали.
Весело вітають і гуртом співають:      |
Слава во вишних Богу!                  | (2)

І ми Христа разом щиро привітаймо,
Господа Вселений покірно благаймо:
В мирі проживати, Бога величати!       |
Слава во вишних Богу!                  | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_28919';
DELETE FROM song_versions WHERE song_id = 'pisniua_28919';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28919';
DELETE FROM songs WHERE id = 'pisniua_28919';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28919','Гей, на Івана, гей, на Купала','Українська народна пісня. Виконує: Вогневир','uk','ukraine_before_1917',NULL,NULL,'Горбенко Л. Ясне-красне Купайло.- Олесько, 2001',NULL,'1.  Гей, на Івана, гей, на Купала, гей, гей, гей,
Красна дівчина долі шукала гей, гей, гей.

2.  Долі шукала, віночок вила гей, гей, гей.
Долі водою його пустила гей, гей, гей.

3.  Поплинь, віночку, по бистрій хвилі, гей, гей, гей,
Поплинь під хату, де живе милий, гей, гей, гей.

4.  Поплив віночок долі водою, гей, гей, гей,
Серце дівчини забрав з собою, гей, гей, гей','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28919'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28919','Гей, на Івана, гей, на Купала','1.  Гей, на Івана, гей, на Купала, гей, гей, гей,
Красна дівчина долі шукала гей, гей, гей.

2.  Долі шукала, віночок вила гей, гей, гей.
Долі водою його пустила гей, гей, гей.

3.  Поплинь, віночку, по бистрій хвилі, гей, гей, гей,
Поплинь під хату, де живе милий, гей, гей, гей.

4.  Поплив віночок долі водою, гей, гей, гей,
Серце дівчини забрав з собою, гей, гей, гей');
DELETE FROM song_links WHERE song_id = 'pisniua_291063';
DELETE FROM song_versions WHERE song_id = 'pisniua_291063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_291063';
DELETE FROM songs WHERE id = 'pisniua_291063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_291063','Нічний блюз','Музика: Контрабас Слова: Сергій Буланий. Виконує: Контрабас','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ніч на стрісі хати висить,
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
DELETE FROM song_links WHERE song_id = 'pisniua_288961';
DELETE FROM song_versions WHERE song_id = 'pisniua_288961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_288961';
DELETE FROM songs WHERE id = 'pisniua_288961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_288961','Шукають "бандьорів"','Музика: сотенний Тараско Слова: сотенний Тараско','uk','ukr_ssr_1919_1991',NULL,NULL,'Пісневир. Молодіжний співаник. - Львів, 2001. - 224 с.',NULL,'Приспів:
Раз, два, три, чотири, лізуть до комори,
Розбивають старі скрині - шукають "бандьорів".
Випхав Стaлін свої діти на Західні землі,
Щоб народ наш научати, щоб не були темні.
Приспів.
А як зайшли до села: "Дай, бабушка, кушать
Бульбочкі і молока." - самогонку глушать.
Приспів.
Як вертали із облави - зайшли до райкому
Тай поставили на стіл пляшку самогону.
Приспів.
А в райкомі на соломі комуну створили.
Добре їли, добре пили, повіїв любили.
Приспів.
Ті московські козолупи - всі їх добре знають.
Навіть кури і качки зі страху тікають.
Приспів.
А марксисти-активісти роботи навчили.
Взяли собі прапори, - по селі ходили.
Приспів.
А запроданці тим часом слави здобували:
Що забрали на Вкраїні - в Москву відсилали.
Приспів.
Сорок років проминуло московської влади.
Пробудились українці й дають собі ради!
Приспів.
Раз, два, три, чотири, лізуть із комори
З машинґверами в руках молоді "бандьори"! (2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_288961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_288961','Шукають "бандьорів"','Приспів:
Раз, два, три, чотири, лізуть до комори,
Розбивають старі скрині - шукають "бандьорів".
Випхав Стaлін свої діти на Західні землі,
Щоб народ наш научати, щоб не були темні.
Приспів.
А як зайшли до села: "Дай, бабушка, кушать
Бульбочкі і молока." - самогонку глушать.
Приспів.
Як вертали із облави - зайшли до райкому
Тай поставили на стіл пляшку самогону.
Приспів.
А в райкомі на соломі комуну створили.
Добре їли, добре пили, повіїв любили.
Приспів.
Ті московські козолупи - всі їх добре знають.
Навіть кури і качки зі страху тікають.
Приспів.
А марксисти-активісти роботи навчили.
Взяли собі прапори, - по селі ходили.
Приспів.
А запроданці тим часом слави здобували:
Що забрали на Вкраїні - в Москву відсилали.
Приспів.
Сорок років проминуло московської влади.
Пробудились українці й дають собі ради!
Приспів.
Раз, два, три, чотири, лізуть із комори
З машинґверами в руках молоді "бандьори"! (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_28920';
DELETE FROM song_versions WHERE song_id = 'pisniua_28920';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28920';
DELETE FROM songs WHERE id = 'pisniua_28920';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28920','Ой ніхто ж там не бував','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Горбенко Л. Ясне-красне Купайло.- Олесько, 2001 2. Пісні з Волині. Упорядкування текстів та примітки О. Ф. Ошуркевича. Упорядкування нотних матеріалів М. С. Стефанишина. - К.: Музична Україна, 1970. - 336 с.',NULL,'Ой ніхто ж там не бував, де ся явір розвивав,
ой яворе, явороньку зелененький!
Ой таменько зійшло три місяці ясних,
ой яворе, явороньку зелененький!
Три місяці ясних, три парубки красних.
ой яворе, явороньку зелененький!
Ой один парубок - то то ж наш Іванко,
ой яворе, явороньку зелененький!
А другий парубок - то то ж наш Михалко,
ой яворе, явороньку зелененький!
А третій парубок - то то ж наш Семенко.
ой яворе, явороньку зелененький!
Ой таменька зійшло три зіроньки ясних.
ой яворе, явороньку зелененький!
Три зіроньки ясних, три дівоньки красних:
ой яворе, явороньку зелененький!
Ой одна дівонька - то наша Маруся,
ой яворе, явороньку зелененький!
А друга дівонька - то наша Настуся,
ой яворе, явороньку зелененький!
А третя дівонька - то наша Ганнуся.
ой яворе, явороньку зелененький!','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28920'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28920','Ой ніхто ж там не бував','Ой ніхто ж там не бував, де ся явір розвивав,
ой яворе, явороньку зелененький!
Ой таменько зійшло три місяці ясних,
ой яворе, явороньку зелененький!
Три місяці ясних, три парубки красних.
ой яворе, явороньку зелененький!
Ой один парубок - то то ж наш Іванко,
ой яворе, явороньку зелененький!
А другий парубок - то то ж наш Михалко,
ой яворе, явороньку зелененький!
А третій парубок - то то ж наш Семенко.
ой яворе, явороньку зелененький!
Ой таменька зійшло три зіроньки ясних.
ой яворе, явороньку зелененький!
Три зіроньки ясних, три дівоньки красних:
ой яворе, явороньку зелененький!
Ой одна дівонька - то наша Маруся,
ой яворе, явороньку зелененький!
А друга дівонька - то наша Настуся,
ой яворе, явороньку зелененький!
А третя дівонька - то наша Ганнуся.
ой яворе, явороньку зелененький!');
DELETE FROM song_links WHERE song_id = 'pisniua_290697';
DELETE FROM song_versions WHERE song_id = 'pisniua_290697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_290697';
DELETE FROM songs WHERE id = 'pisniua_290697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_290697','Багряна ріка','Музика: Тарас Мартинюк Слова: Тарас Мартинюк. Виконує: І Кров по Долині','uk','ukraine_1991',NULL,NULL,'1. Авторське подання',NULL,'На білім полотні,
З якого пошила мати сорочку.
Змивала в багряній ріці,
Сліди від крові свого синочка.

І плаче за своїм сином,
Що заблукав десь у війні.
Лежить десь мертвим під тином,
І кров тисячів стікає по ріці.

Із білого полотна,
З якого мати пошила сорочку.
У ній ховали мертвого стрільця,
Й мати в сльозах крикнула - "Синочку!"

"Не йди від мене, сину,
Не покидай свою Вкраїну.
І слава твоя і всіх стрільців,
Повік залишиться у мене в серці!"

І кров тисячів стікає по ріці!
Багряній ріці!','[''pisni.org.ua'', ''cat:bardivski'', ''cat:istorychni'', ''cat:pro-ditey'', ''Бардівські пісні'', ''Історичні пісні'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_290697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_290697','Багряна ріка','На білім полотні,
З якого пошила мати сорочку.
Змивала в багряній ріці,
Сліди від крові свого синочка.

І плаче за своїм сином,
Що заблукав десь у війні.
Лежить десь мертвим під тином,
І кров тисячів стікає по ріці.

Із білого полотна,
З якого мати пошила сорочку.
У ній ховали мертвого стрільця,
Й мати в сльозах крикнула - "Синочку!"

"Не йди від мене, сину,
Не покидай свою Вкраїну.
І слава твоя і всіх стрільців,
Повік залишиться у мене в серці!"

І кров тисячів стікає по ріці!
Багряній ріці!');
DELETE FROM song_links WHERE song_id = 'pisniua_29012';
DELETE FROM song_versions WHERE song_id = 'pisniua_29012';
DELETE FROM songs_fts WHERE song_id = 'pisniua_29012';
DELETE FROM songs WHERE id = 'pisniua_29012';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_29012','Заплету віночок','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Ой на Івана та й на Купайла...- Львів: Студентське братство ЛНУ ім.І.Франка, 2002',NULL,'Заплету віночок, заплету шовковий
на щастя, на долю, на чорнії брови.	(2)

Та й пущу віночок на биструю воду
на щастя, на долю, на милого вроду.	(2)

Ой полинь, віночку, прудко за водою
на щастя, на долю милого зі мною.	(2)    Основна мелодія','[''pisni.org.ua'', ''cat:kupalski'', ''cat:lirychni'', ''cat:narodni'', ''Купальські пісні'', ''Пісні про кохання, ліричні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_29012'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_29012','Заплету віночок','Заплету віночок, заплету шовковий
на щастя, на долю, на чорнії брови.	(2)

Та й пущу віночок на биструю воду
на щастя, на долю, на милого вроду.	(2)

Ой полинь, віночку, прудко за водою
на щастя, на долю милого зі мною.	(2)    Основна мелодія');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_29012_l1','pisniua_29012','YouTube','https://www.youtube.com/watch?v=K5NfyMKdGAQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_28993';
DELETE FROM song_versions WHERE song_id = 'pisniua_28993';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28993';
DELETE FROM songs WHERE id = 'pisniua_28993';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28993','Не стій, вербо, над водою','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Ой на Івана та й на Купайла...- Львів: Студентське братство ЛНУ ім.І.Франка, 2002',NULL,'Не стій, вербо, над водою рано, рано.
Не стій, вербо, над водою та й ранесенько.

Розвий, вербо, сімсот квіток, рано, рано.
Щоб всім хлопцям по квіточці, рано, рано.
Лиш Іванку нема квітки рано, рано.
Не журися, красний Йване, рано, рано.
Буде тобі квітка красна, рано, рано.
Буде тобі тай Маринка, рано, рано.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28993'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28993','Не стій, вербо, над водою','Не стій, вербо, над водою рано, рано.
Не стій, вербо, над водою та й ранесенько.

Розвий, вербо, сімсот квіток, рано, рано.
Щоб всім хлопцям по квіточці, рано, рано.
Лиш Іванку нема квітки рано, рано.
Не журися, красний Йване, рано, рано.
Буде тобі квітка красна, рано, рано.
Буде тобі тай Маринка, рано, рано.');
DELETE FROM song_links WHERE song_id = 'pisniua_292114';
DELETE FROM song_versions WHERE song_id = 'pisniua_292114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_292114';
DELETE FROM songs WHERE id = 'pisniua_292114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_292114','Ой попід Гору Дві Зозуленьки Ячмінь жнуть',NULL,'uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда) ― Святий Збір (Трійця) ― Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','Ой попід Гору Дві Зозуленьки Ячмінь жнуть
А Трета Ганнусі понад Береги Льон бере
Оі зрівнай Боже Гори-долини рівненько
Щоби сі було аж до Батенька видненько
Ой ци видненько ци не видненько я знаю
Я Свого Батенька по Голосочку пізнаю

Ой попід Гору Дві Зозуленьки Ячмінь жнуть
А Трета Ганнусі понад Береги Льон бере
Оі зрівнай Боже Гори-долини рівненько
Щоби сі було аж до Матінки видненько
Ой ци видненько ци не видненько я знаю
Я Свою Матінку по Голосочку пізнаю

Ой попід Гору Дві Зозуленьки Ячмінь жнуть
А Трета Ганнусі понад Береги Льон бере
Оі зрівнай Боже Гори-долини рівненько
Щоби сі було аж до Браччика видненько
Ой ци видненько ци не видненько я знаю
Я Свого Браччика по Голосочку пізнаю

Ой попід Гору Дві Зозуленьки Ячмінь жнуть
А Трета Ганнусі понад Береги Льон бере
Оі зрівнай Боже Гори-долини рівненько
Щоби сі було аж до Сестрички видненько
Ой ци видненько ци не видненько я знаю
Я Свою Сестричку по Голосочку пізнаю

Ой попід Гору Дві Зозуленьки Ячмінь жнуть
А Трета Ганнусі понад Береги Льон бере
Оі зрівнай Боже Гори-долини рівненько
Щоби сі було аж до Милого видненько
Ой ци видненько ци не видненько я знаю
Я Свого Милого по Голосочку пізнаю','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_292114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_292114','Ой попід Гору Дві Зозуленьки Ячмінь жнуть','Ой попід Гору Дві Зозуленьки Ячмінь жнуть
А Трета Ганнусі понад Береги Льон бере
Оі зрівнай Боже Гори-долини рівненько
Щоби сі було аж до Батенька видненько
Ой ци видненько ци не видненько я знаю
Я Свого Батенька по Голосочку пізнаю

Ой попід Гору Дві Зозуленьки Ячмінь жнуть
А Трета Ганнусі понад Береги Льон бере
Оі зрівнай Боже Гори-долини рівненько
Щоби сі було аж до Матінки видненько
Ой ци видненько ци не видненько я знаю
Я Свою Матінку по Голосочку пізнаю

Ой попід Гору Дві Зозуленьки Ячмінь жнуть
А Трета Ганнусі понад Береги Льон бере
Оі зрівнай Боже Гори-долини рівненько
Щоби сі було аж до Браччика видненько
Ой ци видненько ци не видненько я знаю
Я Свого Браччика по Голосочку пізнаю

Ой попід Гору Дві Зозуленьки Ячмінь жнуть
А Трета Ганнусі понад Береги Льон бере
Оі зрівнай Боже Гори-долини рівненько
Щоби сі було аж до Сестрички видненько
Ой ци видненько ци не видненько я знаю
Я Свою Сестричку по Голосочку пізнаю

Ой попід Гору Дві Зозуленьки Ячмінь жнуть
А Трета Ганнусі понад Береги Льон бере
Оі зрівнай Боже Гори-долини рівненько
Щоби сі було аж до Милого видненько
Ой ци видненько ци не видненько я знаю
Я Свого Милого по Голосочку пізнаю');
DELETE FROM song_links WHERE song_id = 'pisniua_291293';
DELETE FROM song_versions WHERE song_id = 'pisniua_291293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_291293';
DELETE FROM songs WHERE id = 'pisniua_291293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_291293','Молитва за Україну','Музика: Олександр Лазарєв Слова: Олександр Лазарєв. Виконує: Олександр Лазарєв','uk','ukraine_1991',NULL,'2005','авторське подання','28.07.2005 Кривий Ріг','Над білим світом сонечко встає,
У срібні дзвони жайворонок б''є,
Господь росою землю окропив
І день ясний для нас благословив.

Приспів:
На коліна встану, до землі вклонюсь,
За мою Вкраїну серцем помолюсь.
Хай на неї зійде благодать свята,
Хай її освятить Божа чистота.

Полинуть в небо помисли мої,
Підхоплять поклик серця солов''ї.
Во ім''я Сина і святого Духа
Мою молитву, Господи, послухай.

Приспів.

О Боже правий, мудрості нам дай
І до гріха народ не допускай.
Тебе молю — рятуй нас від біди,
Від сну страшного спаси і відведи.

Приспів','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_291293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_291293','Молитва за Україну','Над білим світом сонечко встає,
У срібні дзвони жайворонок б''є,
Господь росою землю окропив
І день ясний для нас благословив.

Приспів:
На коліна встану, до землі вклонюсь,
За мою Вкраїну серцем помолюсь.
Хай на неї зійде благодать свята,
Хай її освятить Божа чистота.

Полинуть в небо помисли мої,
Підхоплять поклик серця солов''ї.
Во ім''я Сина і святого Духа
Мою молитву, Господи, послухай.

Приспів.

О Боже правий, мудрості нам дай
І до гріха народ не допускай.
Тебе молю — рятуй нас від біди,
Від сну страшного спаси і відведи.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2910';
DELETE FROM songs WHERE id = 'pisniua_2910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2910','Біла хмара, чорна хмара','Музика: Юрій Сошальський Слова: Юрій Сошальський. Виконує: Дмитро Хома, Pomylka Rezydenta, Гурт "Зоряна ніч"','uk','ukraine_before_1917',NULL,NULL,'Збірник пісень Студентського братства Львівської політехніки. Львів 2000','Текст з незначними відмінностями (співає Дмитро Хома): Над потічком,над потічком Стелиться блакить. А я хочу,і не хочу Вік тебе любить. Приспів: Біла хмара,чорна хмара, Ми з тобою пара і не пара, Дощик буде,сонце буде, Що мені робить. Біла хмара наче квітка В небі забринить. Закохатись можна легко Важче розлюбить. Біла хмара вітром дише На мою біду. Тебе дівча не залишу, Кращу не знайду.','Над поточком, над поточком*
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
DELETE FROM song_links WHERE song_id = 'pisniua_293515';
DELETE FROM song_versions WHERE song_id = 'pisniua_293515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_293515';
DELETE FROM songs WHERE id = 'pisniua_293515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_293515','Добрий вечір всім вам','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. http://www.nik-mykachiv.narod.ru/','Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда) ― Святий Збір (Трійця) ― Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','Добрий вечір всім вам, щаслива година,
Породила Діва Превічного Сина.
Приспів:
Хвалу Богу даймо, Весело співаймо
В день Христова Рождества!
Не в царських палатах Сина породила,
А в біднім вертепі Господа сповила.
Приспів.
Не межи царями Господь нам з''явився,
А між вівчарями в яслах положився.
Приспів.
Пастирі убогі до стайні приходять,
На в''язочці сіна Господа знаходять.
Приспів.
А на світлім Сході зоря засвітила,
Трьох царів премудрих дуже звеселила.
Приспів.
Золото і ладан, смирну вони взяли,
І в Ієрусалимі за Христа питали.
Приспів.
Найшли Христа Бога не в Ієрусалимі,
А в убогій стайні, в місті Віфліємі.
Приспів.
Убогим вертепом царі не гордили,
Христові в вертепі поклони зложили.
Приспів.
І ми Христа Бога всі радо вітаймо,
Разом з пастушками весело співаймо.
Приспів.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_293515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_293515','Добрий вечір всім вам','Добрий вечір всім вам, щаслива година,
Породила Діва Превічного Сина.
Приспів:
Хвалу Богу даймо, Весело співаймо
В день Христова Рождества!
Не в царських палатах Сина породила,
А в біднім вертепі Господа сповила.
Приспів.
Не межи царями Господь нам з''явився,
А між вівчарями в яслах положився.
Приспів.
Пастирі убогі до стайні приходять,
На в''язочці сіна Господа знаходять.
Приспів.
А на світлім Сході зоря засвітила,
Трьох царів премудрих дуже звеселила.
Приспів.
Золото і ладан, смирну вони взяли,
І в Ієрусалимі за Христа питали.
Приспів.
Найшли Христа Бога не в Ієрусалимі,
А в убогій стайні, в місті Віфліємі.
Приспів.
Убогим вертепом царі не гордили,
Христові в вертепі поклони зложили.
Приспів.
І ми Христа Бога всі радо вітаймо,
Разом з пастушками весело співаймо.
Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_292798';
DELETE FROM song_versions WHERE song_id = 'pisniua_292798';
DELETE FROM songs_fts WHERE song_id = 'pisniua_292798';
DELETE FROM songs WHERE id = 'pisniua_292798';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_292798','Серед тіней','Музика: Дмитро Добрий-Вечір Слова: Дмитро Добрий-Вечір. Виконує: Вій','uk','ukraine_1991',NULL,NULL,'аудіозапис','Підбір акордів: Ле','Я йду серед тіней всіма забутих,
Тіней тих кораблів, що потонули,
Капітани давніх часів
На честь усіх королів,
Знов ведуть свої кораблі
У пошук райських країв   з ім''ям Бога.
Я розкинув крила та зірвавсь у прірву,
У похмуру осінь, крізь холодну зливу,
А знесилі крила не підняли тіла
Та не сталось дива, знову впав у прірву.

Я йду серед тіней, мов сомнамбула,
Війська вбитих солдат, всіма забутих,
Мірний рух знівечених тіл,
Погляд мертвих очей,
Брудне пір''я зламаних крил,
Дзвін іржавих мечей - військо Бога!
Я зірвавсь у прірву та розкинув крила,
Крізь холодну зливу я злетів у небо,
Я співаю пісню про далекі зорі,
Я лечу до Бога, я лечу до дому!

Я йду серед руїн давнього горя
До безкраїх пустель мертвого моря,
Чорні ікла спаленних міст -
Тінь могутніх країн
Та провалля братніх могил безіменних царів -
Дітей Бога.

Я заплющив очі та розкинув крила,
Розтуливши хмари, я дістався неба,
Я збираю зорі у свої долоні,
Я торкаюсь сонця, розмовляю з Богом.
Розтуливши хмари, я дістався неба,
Я збираю зорі у свої долоні,
Я торкаюсь сонця, розмовляю з Богом,
Я, нарешті, долетів!..','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_292798'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_292798','Серед тіней','Я йду серед тіней всіма забутих,
Тіней тих кораблів, що потонули,
Капітани давніх часів
На честь усіх королів,
Знов ведуть свої кораблі
У пошук райських країв   з ім''ям Бога.
Я розкинув крила та зірвавсь у прірву,
У похмуру осінь, крізь холодну зливу,
А знесилі крила не підняли тіла
Та не сталось дива, знову впав у прірву.

Я йду серед тіней, мов сомнамбула,
Війська вбитих солдат, всіма забутих,
Мірний рух знівечених тіл,
Погляд мертвих очей,
Брудне пір''я зламаних крил,
Дзвін іржавих мечей - військо Бога!
Я зірвавсь у прірву та розкинув крила,
Крізь холодну зливу я злетів у небо,
Я співаю пісню про далекі зорі,
Я лечу до Бога, я лечу до дому!

Я йду серед руїн давнього горя
До безкраїх пустель мертвого моря,
Чорні ікла спаленних міст -
Тінь могутніх країн
Та провалля братніх могил безіменних царів -
Дітей Бога.

Я заплющив очі та розкинув крила,
Розтуливши хмари, я дістався неба,
Я збираю зорі у свої долоні,
Я торкаюсь сонця, розмовляю з Богом.
Розтуливши хмари, я дістався неба,
Я збираю зорі у свої долоні,
Я торкаюсь сонця, розмовляю з Богом,
Я, нарешті, долетів!..');
DELETE FROM song_links WHERE song_id = 'pisniua_29165';
DELETE FROM song_versions WHERE song_id = 'pisniua_29165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_29165';
DELETE FROM songs WHERE id = 'pisniua_29165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_29165','Стрийський парк',NULL,'uk','ukraine_before_1917',NULL,NULL,'http://www.shulga.kiev.ua/',NULL,'В Стрийськім парку ми ся здибали з тобов.
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
DELETE FROM song_links WHERE song_id = 'pisniua_292495';
DELETE FROM song_versions WHERE song_id = 'pisniua_292495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_292495';
DELETE FROM songs WHERE id = 'pisniua_292495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_292495','Прийшла весна з квітами','Українська народна пісня. Виконує: Коралі','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Прийшла весна з квітами,
Прийшла весна з квітами,
Зеленими вітами,
Зеленими вітами.

Принесла нам літечко,
Принесла нам літечко,
Запашнеє зіллячко,
Запашнеє зіллячко.

Вижгородські парубки,
Вижгородські парубки
Усі грають на дудки,
Усі грають на дудки.

Лиш Василько не грає,
Лиш Василько не грає -
Женитися думає,
Женитися думає.

Ой, ти весна красна,
Що ж ти нам принесла?
Ду-ду-ду-ду,
Що ж ти нам принесла?

Хлопцям по кийочку,
Дівкам по віночку.
Ду-ду-ду-ду,
Дівкам по віночку!

Ой, ти весна красна,
Що ж ти нам принесла?
Ду-ду-ду-ду,
Що ти нам принесла?','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_292495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_292495','Прийшла весна з квітами','Прийшла весна з квітами,
Прийшла весна з квітами,
Зеленими вітами,
Зеленими вітами.

Принесла нам літечко,
Принесла нам літечко,
Запашнеє зіллячко,
Запашнеє зіллячко.

Вижгородські парубки,
Вижгородські парубки
Усі грають на дудки,
Усі грають на дудки.

Лиш Василько не грає,
Лиш Василько не грає -
Женитися думає,
Женитися думає.

Ой, ти весна красна,
Що ж ти нам принесла?
Ду-ду-ду-ду,
Що ж ти нам принесла?

Хлопцям по кийочку,
Дівкам по віночку.
Ду-ду-ду-ду,
Дівкам по віночку!

Ой, ти весна красна,
Що ж ти нам принесла?
Ду-ду-ду-ду,
Що ти нам принесла?');
DELETE FROM song_links WHERE song_id = 'pisniua_293653';
DELETE FROM song_versions WHERE song_id = 'pisniua_293653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_293653';
DELETE FROM songs WHERE id = 'pisniua_293653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_293653','Казала мі мама','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Пісні лемківські та українські. Видання туристичного клюбу "Малюх". Упор. Войтек Хемієвскі. Варшава, 2001.','* всі куплети повторюються на зразок першого','F
Казала мі мама,    |
Жебы-м ся выдала.  |
F
Я їй одповіла,     |
Я їй одповіла,     |
F                  |
Я їй одповіла,     | (2)*
Же я ищы мала.     |

Казала мі мама
Же сватове пришли,
Я їй одповіла,
Я їй одповіла,
Я їй одповіла,
Жебы з хыжы вышли.

Казала мі мама
Же юж мам придане,
Я їй одповіла,
Я їй одповіла,
Я їй одповіла,
Най дома зістане.

Не силуй ня, мамко,
Прийде час на вшытко,
І я так дозрію,
І я так дозрію,
І я так дозрію,
Як у полі жытко.','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_293653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_293653','Казала мі мама','F
Казала мі мама,    |
Жебы-м ся выдала.  |
F
Я їй одповіла,     |
Я їй одповіла,     |
F                  |
Я їй одповіла,     | (2)*
Же я ищы мала.     |

Казала мі мама
Же сватове пришли,
Я їй одповіла,
Я їй одповіла,
Я їй одповіла,
Жебы з хыжы вышли.

Казала мі мама
Же юж мам придане,
Я їй одповіла,
Я їй одповіла,
Я їй одповіла,
Най дома зістане.

Не силуй ня, мамко,
Прийде час на вшытко,
І я так дозрію,
І я так дозрію,
І я так дозрію,
Як у полі жытко.');
DELETE FROM song_links WHERE song_id = 'pisniua_294111';
DELETE FROM song_versions WHERE song_id = 'pisniua_294111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_294111';
DELETE FROM songs WHERE id = 'pisniua_294111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_294111','Колискова','(Спи, засни, моя дитино...). Музика: Платон Майборода Слова: Андрій Малишко. Виконує: Дударик, Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Спи, засни, моя дитино,
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
DELETE FROM song_links WHERE song_id = 'pisniua_292624';
DELETE FROM song_versions WHERE song_id = 'pisniua_292624';
DELETE FROM songs_fts WHERE song_id = 'pisniua_292624';
DELETE FROM songs WHERE id = 'pisniua_292624';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_292624','Нам казали','Музика: Андрій Кузьменко Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Нам казали,
Нам казали: "Стояти", - ми стояли,
Нам казали: "Лежати", - ми лежали,
Нам казали: "Кричати", - ми кричати,
Нам казали: "Качумайте", - качумали.
Нам казали: "Не моргати", - не моргали,
Нам казали: "Буде добре", - ми чекали
І всі дружно головами їм махали.
Ну шо із того всього ми дістали?

Приспів:
Тара-та-й-та-ратата-там,
Тара-та-й-та-ратата-там,
Тара-та-й-та-ратата-там,
Тара-та-й-та-ратата-там.

Нам казали: "Свистіти", - ми свистіли,
Нам казали: "Гудіти", - ми гуділи,
Нам казали: "Свербіти", - ми свербіли,
Нам казали: "Дуріти", - ми дуріли.
Нам казали: "Кусати", - ми кусали,
Показали, як ковтати - ми ковтали -
І на вуха нам лапшу свою мотали.
Ну шо із того всього ми дістали?

Приспів.

Нам казали: "Перестаньте", - перестали,
Нам казали: "В нас не вийшло" і змотались,
А ми сіли покурили і поржали.
Ну шо із того всього ми дістали?

Приспів. (2)','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_292624'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_292624','Нам казали','Нам казали,
Нам казали: "Стояти", - ми стояли,
Нам казали: "Лежати", - ми лежали,
Нам казали: "Кричати", - ми кричати,
Нам казали: "Качумайте", - качумали.
Нам казали: "Не моргати", - не моргали,
Нам казали: "Буде добре", - ми чекали
І всі дружно головами їм махали.
Ну шо із того всього ми дістали?

Приспів:
Тара-та-й-та-ратата-там,
Тара-та-й-та-ратата-там,
Тара-та-й-та-ратата-там,
Тара-та-й-та-ратата-там.

Нам казали: "Свистіти", - ми свистіли,
Нам казали: "Гудіти", - ми гуділи,
Нам казали: "Свербіти", - ми свербіли,
Нам казали: "Дуріти", - ми дуріли.
Нам казали: "Кусати", - ми кусали,
Показали, як ковтати - ми ковтали -
І на вуха нам лапшу свою мотали.
Ну шо із того всього ми дістали?

Приспів.

Нам казали: "Перестаньте", - перестали,
Нам казали: "В нас не вийшло" і змотались,
А ми сіли покурили і поржали.
Ну шо із того всього ми дістали?

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_292624_l1','pisniua_292624','YouTube','https://www.youtube.com/watch?v=mEnurfP38pA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_294199';
DELETE FROM song_versions WHERE song_id = 'pisniua_294199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_294199';
DELETE FROM songs WHERE id = 'pisniua_294199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_294199','Ой на річці на Йордані','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'До народних джерел Сумщини. Хрестоматія – посібник. Упорядник С.В. П’ятаченко',NULL,'Ой на річці на Йордані
Тиха вода стояла,
Діва Марія свого сина купала.

Іскупавши у китаєчку сповила,
Ісповивши у колисочку уложила,
Під головку василечок мостила.

Прилітало з неба три янголи,
Літали, над тим дитям
Трьома голосами співали.

Первий янгол миром -
Кадилом мирував,
Другий янгол щастям -
Здоров''ям подарував,
Третій янгол із цим
Празником поздоровляв:

Поздоровляю, пане-хазяїну,
Вашому дому,
Як Ісус Христос
З Діви народився, як у раю,
То так же я, пане-хазяїну,
Вашому дому -
Здрастуйте, з празником,
З святим Рождеством!','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_294199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_294199','Ой на річці на Йордані','Ой на річці на Йордані
Тиха вода стояла,
Діва Марія свого сина купала.

Іскупавши у китаєчку сповила,
Ісповивши у колисочку уложила,
Під головку василечок мостила.

Прилітало з неба три янголи,
Літали, над тим дитям
Трьома голосами співали.

Первий янгол миром -
Кадилом мирував,
Другий янгол щастям -
Здоров''ям подарував,
Третій янгол із цим
Празником поздоровляв:

Поздоровляю, пане-хазяїну,
Вашому дому,
Як Ісус Христос
З Діви народився, як у раю,
То так же я, пане-хазяїну,
Вашому дому -
Здрастуйте, з празником,
З святим Рождеством!');
DELETE FROM song_links WHERE song_id = 'pisniua_293675';
DELETE FROM song_versions WHERE song_id = 'pisniua_293675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_293675';
DELETE FROM songs WHERE id = 'pisniua_293675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_293675','Любимо землю свою','Музика: Богдана Фільц Слова: Микола Сингаївський','uk','ukraine_1991',NULL,NULL,'аудіозапис','Виконує:Жіноче тріо','Квітне й радіє земля,
Сонце мережить поля,
Променем грає ріка, грає ріка,     |
Лине веснянка дзвінка, дзвінка.    | (2)

Вже зеленіють лани,
Птахи летять до весни,
Всюди ласкаве тепло, всюди тепло   |
Сонце для нас розлило.             | (2)

Любимо сонячний світ,
Квіт у полі в гаю
Любимо неба блакить, неба блакить, |
Любимо землю свою, свою.           | (2)

Землю свою...','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_293675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_293675','Любимо землю свою','Квітне й радіє земля,
Сонце мережить поля,
Променем грає ріка, грає ріка,     |
Лине веснянка дзвінка, дзвінка.    | (2)

Вже зеленіють лани,
Птахи летять до весни,
Всюди ласкаве тепло, всюди тепло   |
Сонце для нас розлило.             | (2)

Любимо сонячний світ,
Квіт у полі в гаю
Любимо неба блакить, неба блакить, |
Любимо землю свою, свою.           | (2)

Землю свою...');
DELETE FROM song_links WHERE song_id = 'pisniua_293828';
DELETE FROM song_versions WHERE song_id = 'pisniua_293828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_293828';
DELETE FROM songs WHERE id = 'pisniua_293828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_293828','Надходить ніч','Слова: Іван Франко. Виконує: Трембіта','uk','ukraine_1991',NULL,NULL,'аудіозапис','Заслужена капела України "Трембіта". Іван Франко. Зів''яле листя (рецитація та спів)','Надходить ніч. Боюсь я тої ночі!
Коли довкола світ увесь засне,
Я тільки сам замкнуть не можу очі:
Загиб спокій, і сон мина мене.
Я сам сиджу і риюсь в своїй рані,
І плачу й тужу, плачу і клену,
І мрії всі летять, біжать, мов п''яні,
До неї! Бачать лиш її одну.

І бачиться, що з мріями отими
Й душа моя летить із тіла геть;
І щось, немов крилаті серафими,
Несе її — і чую я їх лет.
До мене ж безграничная тривога,
Бліда розпука підсідає вмить,
І чорні думи, мов з фортуни рога,
На мене ллє, щоб світ мені затьмить.

І бачиться, що я в якійсь безодні,
Де холод, слизь і вітер, темно скрізь,
І виють звірі, люті та голодні,
І стогне бір, і гіллям б''ється ліс.
Ось на розпутті я стою пустому
І весь тремчу, гадюка серце ссе,
Не видно шляху, тільки голос грому
Якусь погрозу дикую несе.

І я безсильний, хорий, і утома,
Мов млинове каміння, тисне грудь, —
Бездомний — я бажав би бути дома,
В теплі бажав би, в щасті відітхнуть.
Я, що так довго, гаряче кохаю
І за любов знайшов погорду й глум,
Бажаю хоч на хвилю бути в раю,
Обнять тебе, ціль моїх мрій і дум.

Обнять тебе, до серця пригорнути,
Із твоїх уст солодкий нектар пить,
В твоїх очах душею потонути,
В твоїх обіймах згинуть і ожить.
Та дощ січе, скрипить обмокле гілля,
Вихри ревуть: "Дарма! Дарма! Дарма!"
І заревло скажене божевілля
У серці: "Ні! Чи ж виходу нема?

Ні! Мусить буть! Не хочу погибати,
Не знавши хоч на хвилечку її!
Хоч би прийшлось і чорту душу дати,
А сповняться бажання всі мої!"
І чую, як при тих словах із мене
Обпало щось, мов листя, мов краса,
А щось влилося темне і студене, —
Се віра в чорта, віра в чудеса.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_293828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_293828','Надходить ніч','Надходить ніч. Боюсь я тої ночі!
Коли довкола світ увесь засне,
Я тільки сам замкнуть не можу очі:
Загиб спокій, і сон мина мене.
Я сам сиджу і риюсь в своїй рані,
І плачу й тужу, плачу і клену,
І мрії всі летять, біжать, мов п''яні,
До неї! Бачать лиш її одну.

І бачиться, що з мріями отими
Й душа моя летить із тіла геть;
І щось, немов крилаті серафими,
Несе її — і чую я їх лет.
До мене ж безграничная тривога,
Бліда розпука підсідає вмить,
І чорні думи, мов з фортуни рога,
На мене ллє, щоб світ мені затьмить.

І бачиться, що я в якійсь безодні,
Де холод, слизь і вітер, темно скрізь,
І виють звірі, люті та голодні,
І стогне бір, і гіллям б''ється ліс.
Ось на розпутті я стою пустому
І весь тремчу, гадюка серце ссе,
Не видно шляху, тільки голос грому
Якусь погрозу дикую несе.

І я безсильний, хорий, і утома,
Мов млинове каміння, тисне грудь, —
Бездомний — я бажав би бути дома,
В теплі бажав би, в щасті відітхнуть.
Я, що так довго, гаряче кохаю
І за любов знайшов погорду й глум,
Бажаю хоч на хвилю бути в раю,
Обнять тебе, ціль моїх мрій і дум.

Обнять тебе, до серця пригорнути,
Із твоїх уст солодкий нектар пить,
В твоїх очах душею потонути,
В твоїх обіймах згинуть і ожить.
Та дощ січе, скрипить обмокле гілля,
Вихри ревуть: "Дарма! Дарма! Дарма!"
І заревло скажене божевілля
У серці: "Ні! Чи ж виходу нема?

Ні! Мусить буть! Не хочу погибати,
Не знавши хоч на хвилечку її!
Хоч би прийшлось і чорту душу дати,
А сповняться бажання всі мої!"
І чую, як при тих словах із мене
Обпало щось, мов листя, мов краса,
А щось влилося темне і студене, —
Се віра в чорта, віра в чудеса.');
DELETE FROM song_links WHERE song_id = 'pisniua_294961';
DELETE FROM song_versions WHERE song_id = 'pisniua_294961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_294961';
DELETE FROM songs WHERE id = 'pisniua_294961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_294961','Націоналісти *','(Чуєш, сурми грають). Виконує: Софія Федина','uk','ukraine_1991',NULL,NULL,'1. Аудіо-альбом "Софія Федина. Буде нам з тобою що згадати…" (Ліда, 2008)',NULL,'Чуєш, сурми грають, юнаків скликають,
У ряди збирають, "Буде бій!" - звіщають. Гей!

Приспів 1:
Hаціоналісти - раз, два! Молоді орлята, |
Хлопці, хлопці, соколята!               |(2)

Україна-мати кличе нас повстати,
Одностайно стати, в бою погуляти. Гей!

Приспів 1.

Hе будемо спати, плакати-ридати,
День пімсти, розплати будем готувати. Гей!

Приспів 1.

За нашу свободу, за красу і вроду
Підемо в огонь, в воду для свого народу. Гей!

Приспів 2:
Hаціоналісти - раз, два! Молоді орлята, |
Хлопці, хлопці і дівчата!               |(2)

Hе сумуй, родино! Не тужи, дівчино!
Кличе Україна - наша Батьківщина. Гей!

Приспів 2.    Аудіо (повна версія, 128 kbps)  (
Аудіо (фрагмент, 32 kbps). Співає Софія Федина','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_294961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_294961','Націоналісти *','Чуєш, сурми грають, юнаків скликають,
У ряди збирають, "Буде бій!" - звіщають. Гей!

Приспів 1:
Hаціоналісти - раз, два! Молоді орлята, |
Хлопці, хлопці, соколята!               |(2)

Україна-мати кличе нас повстати,
Одностайно стати, в бою погуляти. Гей!

Приспів 1.

Hе будемо спати, плакати-ридати,
День пімсти, розплати будем готувати. Гей!

Приспів 1.

За нашу свободу, за красу і вроду
Підемо в огонь, в воду для свого народу. Гей!

Приспів 2:
Hаціоналісти - раз, два! Молоді орлята, |
Хлопці, хлопці і дівчата!               |(2)

Hе сумуй, родино! Не тужи, дівчино!
Кличе Україна - наша Батьківщина. Гей!

Приспів 2.    Аудіо (повна версія, 128 kbps)  (
Аудіо (фрагмент, 32 kbps). Співає Софія Федина');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_294961_l1','pisniua_294961','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_294665';
DELETE FROM song_versions WHERE song_id = 'pisniua_294665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_294665';
DELETE FROM songs WHERE id = 'pisniua_294665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_294665','Ой, Богдане','Музика: Едуард Драч Слова: Едуард Драч. Виконує: Едуард Драч','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У жовтих степах і солоних шляхах
Лежала окута ярмом Україна.
В чужацькій неволі, неначе в пітьмах,
Бриніла на волю, як зірка, надія єдина.
Злим подихом степ шматував вітруган,
Розносив, мов вогники згаслії сили,
Котилася куля, звенів ятаган
І голови знову козацькі летіли.

Повій, вітре, на Вкраїну суходолом та і з моря,
Роздував шалений вітер попіл навкруги,
Прилетіло разом з вітром на Вкраїну люте горе -
Круками злетілись на вкраїну вороги.
Прилетіло разом з вітром на Вкраїну люте горе -
Круками злетілись вороги.

І казав Богдан в ту днину: "Гей, чи згасли наші сили?
Чи не досить крукам чорним пити кров з полів?
Чи не досить чути стогін і стогнати від безсилля,
Дивлячись на сльози гіркі наших матерів?
Чи не досить чути стогін і стогнати від безсилля,
Дивлячись на сльози матерів?"

Ой, Богдане, ти Богдане, ти усіх вів за собою,
Всіх, хто щастя Україні рідній марив щастям.
Геть летіло кручя чорне, прапор знову звав до бою
І несли нас наші коні щастя добувать!
Геть летіло кручя чорне, прапор знову звав до бою
І несли нас наші коні щастя добувать!','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_294665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_294665','Ой, Богдане','У жовтих степах і солоних шляхах
Лежала окута ярмом Україна.
В чужацькій неволі, неначе в пітьмах,
Бриніла на волю, як зірка, надія єдина.
Злим подихом степ шматував вітруган,
Розносив, мов вогники згаслії сили,
Котилася куля, звенів ятаган
І голови знову козацькі летіли.

Повій, вітре, на Вкраїну суходолом та і з моря,
Роздував шалений вітер попіл навкруги,
Прилетіло разом з вітром на Вкраїну люте горе -
Круками злетілись на вкраїну вороги.
Прилетіло разом з вітром на Вкраїну люте горе -
Круками злетілись вороги.

І казав Богдан в ту днину: "Гей, чи згасли наші сили?
Чи не досить крукам чорним пити кров з полів?
Чи не досить чути стогін і стогнати від безсилля,
Дивлячись на сльози гіркі наших матерів?
Чи не досить чути стогін і стогнати від безсилля,
Дивлячись на сльози матерів?"

Ой, Богдане, ти Богдане, ти усіх вів за собою,
Всіх, хто щастя Україні рідній марив щастям.
Геть летіло кручя чорне, прапор знову звав до бою
І несли нас наші коні щастя добувать!
Геть летіло кручя чорне, прапор знову звав до бою
І несли нас наші коні щастя добувать!');
DELETE FROM song_links WHERE song_id = 'pisniua_29614';
DELETE FROM song_versions WHERE song_id = 'pisniua_29614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_29614';
DELETE FROM songs WHERE id = 'pisniua_29614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_29614','Ой верше, мій верше','(Верше). Українська народна пісня. Виконує: Анна Чеберенчик','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой верше, мій верше,
Мій зелений верше!
Юж мі так не буде (2)
Як ми било перше.

Бо лемківські гори
Долини прекрасни,
Не можна забити (2)
Ні в біді, ні в щасти.

Рідна Лемковино,
Зелені Карпати!
Де би лемко не бил (2)
Мусит баса дати.

Ой верше, мій верше,
Мій зелений верше!
Більш ми так не буде (2)
Як ми било перше','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_29614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_29614','Ой верше, мій верше','Ой верше, мій верше,
Мій зелений верше!
Юж мі так не буде (2)
Як ми било перше.

Бо лемківські гори
Долини прекрасни,
Не можна забити (2)
Ні в біді, ні в щасти.

Рідна Лемковино,
Зелені Карпати!
Де би лемко не бил (2)
Мусит баса дати.

Ой верше, мій верше,
Мій зелений верше!
Більш ми так не буде (2)
Як ми било перше');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_29614_l1','pisniua_29614','YouTube','https://www.youtube.com/watch?v=1NefOSTEJYI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_29614_l2','pisniua_29614','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_296055';
DELETE FROM song_versions WHERE song_id = 'pisniua_296055';
DELETE FROM songs_fts WHERE song_id = 'pisniua_296055';
DELETE FROM songs WHERE id = 'pisniua_296055';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_296055','Слава Отцю і Сину','Музика: народ Слова: народ. Виконує: Народний хор Україна','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Боже, ми молимось щиро,
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
DELETE FROM song_links WHERE song_id = 'pisniua_296614';
DELETE FROM song_versions WHERE song_id = 'pisniua_296614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_296614';
DELETE FROM songs WHERE id = 'pisniua_296614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_296614','Як я собі в нашім селі заспівам','Музика: народна Слова: народ. Виконує: Софія Федина','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Як я собі в нашім селі заспівам,
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
DELETE FROM song_links WHERE song_id = 'pisniua_295993';
DELETE FROM song_versions WHERE song_id = 'pisniua_295993';
DELETE FROM songs_fts WHERE song_id = 'pisniua_295993';
DELETE FROM songs WHERE id = 'pisniua_295993';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_295993','Ой ти, мово українська','Музика: О. Калищук Слова: О. Калищук. Виконує: Народний хор Україна','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ой ти, мово українська,
Колисанко материнська,
Що в душі завжди жива.
Ти моя найперша казка,
Перший біль і перша ласка,
Перші мамині слова.

Скільки музики в цій мові,
Скільки сили в кожнім слові,
Скільки сонця й теплоти.
Ти піснями ввись злітаєш,
Хоч і доленьки не маєш,
Хоч і сил нема, - летиш.

Для душі ти - наче ліки.
Не убить тебе довіку
І ніким не зупинить,
Не поставить на коліна,
Бо на крилах пісні линеш
З мого серця кожну мить.

Ой ти, мово українська,
Колисанко материнська,
Що в душі завжди жива.
Ти моя найперша казка,
Перший біль і перша ласка,
Перші мамині слова.','[''pisni.org.ua'', ''cat:pisni-pro-movy'', ''Пісні про рідну мову'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_295993'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_295993','Ой ти, мово українська','Ой ти, мово українська,
Колисанко материнська,
Що в душі завжди жива.
Ти моя найперша казка,
Перший біль і перша ласка,
Перші мамині слова.

Скільки музики в цій мові,
Скільки сили в кожнім слові,
Скільки сонця й теплоти.
Ти піснями ввись злітаєш,
Хоч і доленьки не маєш,
Хоч і сил нема, - летиш.

Для душі ти - наче ліки.
Не убить тебе довіку
І ніким не зупинить,
Не поставить на коліна,
Бо на крилах пісні линеш
З мого серця кожну мить.

Ой ти, мово українська,
Колисанко материнська,
Що в душі завжди жива.
Ти моя найперша казка,
Перший біль і перша ласка,
Перші мамині слова.');
DELETE FROM song_links WHERE song_id = 'pisniua_2952';
DELETE FROM song_versions WHERE song_id = 'pisniua_2952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2952';
DELETE FROM songs WHERE id = 'pisniua_2952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2952','Я - Крук','(Сотник Крук). Музика: Анатолій Сухий Слова: Анатолій Сухий. Виконує: Рутенія','uk','ukraine_1991',NULL,NULL,'1. Пісневир. Молодіжний співаник. Львів 2001. 2. Альбом "Неопалима Купина". 2007','Пісня з репертуару гурту "Рутенія". Акорди (варіант 2) надав Ярослав Юрчишин. Варіанти тексту: * Як ми рибу глушили в Дністрі ** А пам''ятаєш, друже Москаль, *** Друже Москаль, ми упирі? Ні!','Я - Крук, чорний сотник УПА.
Моя сотня в далекому схроні.
Добрі хлопці в моєму загоні
Підуть завтра у бій.

Приспів:
І не чекай, моя Оксано,
Додому з лісу партизана.
Бо завтра знову буде бій,
І не вернеться сотник твій.

Я - Крук, і мені все одно,
Мені славу співає округа,
Відрізняю від ворога друга,
Я крук, чорний галицький Крук.

Приспів.

А пам''ятаєш, друже Карась,
Ті останні бої на Дністрі,*
Пам''ятаєш той місяць і зорі?
Друже Карась, ми упирі? Ні!

Приспів.

А пам''ятаєш, друже Калино,
В 33-ім свою Полтавщину,
Пам''ятаєш той хліба шматок?
Друже Калино, ми упирі? Ні!

Приспів.

А пам''ятаєш, друже Рязань,**
Свою Росію, прогнилі ізби,
П''яну душу, розп''яту не призьбі?
Друже Рязань, ми упирі? Ні!***

Приспів.

Акорди (варіант 2):
Я, Крук - чорний сотник УПА.
Моя сотня в далекому схроні.
Добрі хлопці в моєму загоні
Підуть завтра у бій.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2952','Я - Крук','Я - Крук, чорний сотник УПА.
Моя сотня в далекому схроні.
Добрі хлопці в моєму загоні
Підуть завтра у бій.

Приспів:
І не чекай, моя Оксано,
Додому з лісу партизана.
Бо завтра знову буде бій,
І не вернеться сотник твій.

Я - Крук, і мені все одно,
Мені славу співає округа,
Відрізняю від ворога друга,
Я крук, чорний галицький Крук.

Приспів.

А пам''ятаєш, друже Карась,
Ті останні бої на Дністрі,*
Пам''ятаєш той місяць і зорі?
Друже Карась, ми упирі? Ні!

Приспів.

А пам''ятаєш, друже Калино,
В 33-ім свою Полтавщину,
Пам''ятаєш той хліба шматок?
Друже Калино, ми упирі? Ні!

Приспів.

А пам''ятаєш, друже Рязань,**
Свою Росію, прогнилі ізби,
П''яну душу, розп''яту не призьбі?
Друже Рязань, ми упирі? Ні!***

Приспів.

Акорди (варіант 2):
Я, Крук - чорний сотник УПА.
Моя сотня в далекому схроні.
Добрі хлопці в моєму загоні
Підуть завтра у бій.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2952_l1','pisniua_2952','YouTube','https://www.youtube.com/watch?v=tpRESiUhKL0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2952_l2','pisniua_2952','YouTube','https://www.youtube.com/watch?v=3WAPlbKzt_8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2952_l3','pisniua_2952','YouTube','https://www.youtube.com/watch?v=LqJvDA8TNo4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2952_l4','pisniua_2952','YouTube','https://www.youtube.com/watch?v=Mr4ft_rcTXU','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2952_l5','pisniua_2952','YouTube','https://www.youtube.com/watch?v=ASLW0y_c6y8','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2952_l6','pisniua_2952','YouTube','https://www.youtube.com/watch?v=guYCcf0kD4U','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2952_l7','pisniua_2952','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_295192';
DELETE FROM song_versions WHERE song_id = 'pisniua_295192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_295192';
DELETE FROM songs WHERE id = 'pisniua_295192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_295192','В зеленім ліску по жовтім піску','Музика: народна Слова: народ. Виконує: Теотокос','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда) ― Святий Збір (Трійця) ― Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','В зеленім ліску по жовтім піску
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
DELETE FROM song_links WHERE song_id = 'pisniua_296073';
DELETE FROM song_versions WHERE song_id = 'pisniua_296073';
DELETE FROM songs_fts WHERE song_id = 'pisniua_296073';
DELETE FROM songs WHERE id = 'pisniua_296073';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_296073','Кучері','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українська народна пісня в обробці',NULL,'Ой біда, подруженьки, ой біда,
Я дівчина гарная, молода.
Як зустріла хлопця я за селом,
Задивилась на кучері над чолом,
задивилась на кучері над чолом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
загубила серденько за селом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
била мене матінка батогом.
Довго насміхалася я над ним:
Де взяв таких кучерів чарівних?
Через тії кучері над чолом
простояла ніченьку за селом,
простояла ніченьку за селом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
загубила серденько за селом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
била мене матінка батогом.
Не бий мене, матінко, батогом,
Бо я їду звечора з Васильом.
Через тії кучері над чолом
загубила серденько за селом,
загубила серденько за селом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
загубила серденько за селом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
била мене матінка батогом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
загубила серденько за селом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
била мене матінка батогом.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_296073'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_296073','Кучері','Ой біда, подруженьки, ой біда,
Я дівчина гарная, молода.
Як зустріла хлопця я за селом,
Задивилась на кучері над чолом,
задивилась на кучері над чолом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
загубила серденько за селом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
била мене матінка батогом.
Довго насміхалася я над ним:
Де взяв таких кучерів чарівних?
Через тії кучері над чолом
простояла ніченьку за селом,
простояла ніченьку за селом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
загубила серденько за селом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
била мене матінка батогом.
Не бий мене, матінко, батогом,
Бо я їду звечора з Васильом.
Через тії кучері над чолом
загубила серденько за селом,
загубила серденько за селом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
загубила серденько за селом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
била мене матінка батогом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
загубила серденько за селом.
Ой, кучері, кучері, ви мої,
наробили клопоту ви мені,
Через тії кучері над чолом
била мене матінка батогом.');
DELETE FROM song_links WHERE song_id = 'pisniua_296675';
DELETE FROM song_versions WHERE song_id = 'pisniua_296675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_296675';
DELETE FROM songs WHERE id = 'pisniua_296675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_296675','Да просив мене Герасим','Українська народна пісня. Виконує: Божичі','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Да просив мене Герасим
Ой шоб я пішла грати з ним.

А я його не люблю,
Ой грати з ним я не піду.

Ти козаче чорноусий,
Чого в тебе жупан куций.

Мене дівки підпоїли,
Жупан мені підкроїли-підрізали.

Бодай тая околіла,
Жупан мені підкроїла-підрізала.

Єсть у мене копа жита,
Ой буде в мене жупан довший.

Єсть у мене купа грошей,
Буде в мене жупан довший.

Ішов козак долиною,
Ой косив травку сокирою-топором','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_296675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_296675','Да просив мене Герасим','Да просив мене Герасим
Ой шоб я пішла грати з ним.

А я його не люблю,
Ой грати з ним я не піду.

Ти козаче чорноусий,
Чого в тебе жупан куций.

Мене дівки підпоїли,
Жупан мені підкроїли-підрізали.

Бодай тая околіла,
Жупан мені підкроїла-підрізала.

Єсть у мене копа жита,
Ой буде в мене жупан довший.

Єсть у мене купа грошей,
Буде в мене жупан довший.

Ішов козак долиною,
Ой косив травку сокирою-топором');
DELETE FROM song_links WHERE song_id = 'pisniua_29653';
DELETE FROM song_versions WHERE song_id = 'pisniua_29653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_29653';
DELETE FROM songs WHERE id = 'pisniua_29653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_29653','Виряджала мати сина під Крути до бою',NULL,'uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,NULL,NULL,'Виряджала мати сина
Під Крути до бою
Розчесала кучерики
Понад головою.

Іди, іди, мій синочку,
Та й не забаряйся
Як побореш вороженьків,
Додому вертайся.

Ждала, ждала мати сина,
Під Крути ходила
Та й шукала між трупами
Головоньку сина.

А як найшла між трупами
Головоньку сина,
Ридаючи колихала
Та й заголосила.

Сину рідний, Боже милий,
А я твоя мати
Сину рідний, сину милий,
Забили прокляті.','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_29653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_29653','Виряджала мати сина під Крути до бою','Виряджала мати сина
Під Крути до бою
Розчесала кучерики
Понад головою.

Іди, іди, мій синочку,
Та й не забаряйся
Як побореш вороженьків,
Додому вертайся.

Ждала, ждала мати сина,
Під Крути ходила
Та й шукала між трупами
Головоньку сина.

А як найшла між трупами
Головоньку сина,
Ридаючи колихала
Та й заголосила.

Сину рідний, Боже милий,
А я твоя мати
Сину рідний, сину милий,
Забили прокляті.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_29653_l1','pisniua_29653','YouTube','https://www.youtube.com/watch?v=pK2i6EJ2LVY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_296971';
DELETE FROM song_versions WHERE song_id = 'pisniua_296971';
DELETE FROM songs_fts WHERE song_id = 'pisniua_296971';
DELETE FROM songs WHERE id = 'pisniua_296971';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_296971','Новорічна ніч','Музика: Геннадій Татарченко Слова: Петро Мага. Виконує: Павло Зібров','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Як календар останній лист втрачає,
Як дзвін нічний дванадцяту проб''є,
Як зірка новорічна прилітає,
То кожен тихо мріє про своє.
Я розливаю в келихи бажання,
І в очі гляну друзям щирим всім,
Дзвенить кришталь "За щастя, за кохання!
За доброту людей, за теплий дім!"

Приспів:
Новорічна ніч - на майбутній рік надія,
Новорічна ніч - щоб збулось все так, як мрію,
Щоб в казкових снах посміхалася дитина,
Щастя України в новорічну ніч!

Прошу у Бога зовсім небагато:
Спокійних і уcміхнених облич,
Щоб лиш салют відомий бив гарматами
І не лише у цю казкову ніч.
Притулку тим, хто завжди у дорозі,
Блакиті - небу, пісні - солов''ю,
Щоб ті, що піднімались по тривозі,
Щасливо повертались у сім''ю.

Приспів. (2)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_296971'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_296971','Новорічна ніч','Як календар останній лист втрачає,
Як дзвін нічний дванадцяту проб''є,
Як зірка новорічна прилітає,
То кожен тихо мріє про своє.
Я розливаю в келихи бажання,
І в очі гляну друзям щирим всім,
Дзвенить кришталь "За щастя, за кохання!
За доброту людей, за теплий дім!"

Приспів:
Новорічна ніч - на майбутній рік надія,
Новорічна ніч - щоб збулось все так, як мрію,
Щоб в казкових снах посміхалася дитина,
Щастя України в новорічну ніч!

Прошу у Бога зовсім небагато:
Спокійних і уcміхнених облич,
Щоб лиш салют відомий бив гарматами
І не лише у цю казкову ніч.
Притулку тим, хто завжди у дорозі,
Блакиті - небу, пісні - солов''ю,
Щоб ті, що піднімались по тривозі,
Щасливо повертались у сім''ю.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_296971_l1','pisniua_296971','YouTube','https://www.youtube.com/watch?v=Qo0c_g7ey_U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_296591';
DELETE FROM song_versions WHERE song_id = 'pisniua_296591';
DELETE FROM songs_fts WHERE song_id = 'pisniua_296591';
DELETE FROM songs WHERE id = 'pisniua_296591';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_296591','Ой, не буду все лем банувати','Музика: народна Слова: народ. Виконує: Софія Федина','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, не буду все лем банувати,
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
DELETE FROM song_links WHERE song_id = 'pisniua_296818';
DELETE FROM song_versions WHERE song_id = 'pisniua_296818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_296818';
DELETE FROM songs WHERE id = 'pisniua_296818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_296818','Я підкручу сиві вуса','Українська народна пісня. Виконує: Нескорені','uk','ukraine_before_1917',NULL,NULL,'1. Надала Б. Сімович',NULL,'Я підкручу сиві вуса, розверну рамена,
Чорнявая молодичко, подивись на мене.

Як така ти гонорова, най калюх мій трісне,
Кедь не любиш, то хоть разом заспіваймо пісню','[''pisni.org.ua'', ''cat:huculski'', ''cat:kolomyyky'', ''cat:zhartivlyvi'', ''Гуцульські пісні'', ''Коломийки'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_296818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_296818','Я підкручу сиві вуса','Я підкручу сиві вуса, розверну рамена,
Чорнявая молодичко, подивись на мене.

Як така ти гонорова, най калюх мій трісне,
Кедь не любиш, то хоть разом заспіваймо пісню');
DELETE FROM song_links WHERE song_id = 'pisniua_296990';
DELETE FROM song_versions WHERE song_id = 'pisniua_296990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_296990';
DELETE FROM songs WHERE id = 'pisniua_296990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_296990','Палац Спорту','Музика: Павло Зібров Слова: Юрій Рибчинський. Виконує: Павло Зібров','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Славлю палац, де гартується спорт України,
Славлю палац, що дарує нам щастя хвилини,
Славлю палац, до якого ведуть всі дороги,
Славлю палац, де куються завжди перемоги.

Приспів:
Палац Спорту, Палац Спорту -
Грім оплесків і боротьби гроза.
Палац Спорту, Палац Спорту,
Як велетень тримає небеса.
Палац Спорту, Палац Спорту -
Вогонь твій Олімпійський не згаса.
Палац Спорту, Палац Спорту -
Це сила міста і його краса.

Славлю палац, де вирують шалені змагання,
Славлю палац, де надія вмирає остання,
Славлю палац, що нас кличе неначе додому,
Славлю палац і людей, що працюють у ньому.

Приспів. (2)','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_296990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_296990','Палац Спорту','Славлю палац, де гартується спорт України,
Славлю палац, що дарує нам щастя хвилини,
Славлю палац, до якого ведуть всі дороги,
Славлю палац, де куються завжди перемоги.

Приспів:
Палац Спорту, Палац Спорту -
Грім оплесків і боротьби гроза.
Палац Спорту, Палац Спорту,
Як велетень тримає небеса.
Палац Спорту, Палац Спорту -
Вогонь твій Олімпійський не згаса.
Палац Спорту, Палац Спорту -
Це сила міста і його краса.

Славлю палац, де вирують шалені змагання,
Славлю палац, де надія вмирає остання,
Славлю палац, що нас кличе неначе додому,
Славлю палац і людей, що працюють у ньому.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2990';
DELETE FROM song_versions WHERE song_id = 'pisniua_2990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2990';
DELETE FROM songs WHERE id = 'pisniua_2990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2990','Не журіться, юні друзі','Музика: Богдан Ганушевський Слова: Олександр Олесь','uk','ukraine_1991',NULL,NULL,'1. У мандри. Збірник українських пісень пластової молоді. - Мельбурн - Аделаїда, 1981.','Акорди 1: підібрано на слух за джерелом 1, спрощено. Акорди 2: популярний варіянт на мелодію з мультфільму "Бременські музиканти". Підбір акордів: bohdanko (pisni.org.ua)','Не журіться, юні друзі,
Є країна чарівна -
Наша славна Україна, |
Наша рідна сторона.  |(2)

Гори, доли, полонини,
Стайні, вівці, вівчарі,
Там на горах щохвилини  |
Світять ватри вівтарі.  |(2)

І на них складають жертви
Наші землі, труди й кров,
І на тих пустелях мертвих  |
Сходить наша воля знов.    |(2)

Воля-пташка, воля-вітер,
Що за волю не даси?
Йди, шукай її по світу   |
Через гори і ліси.       |(2)

Не журіться, юні друзі,
Є країна чарівна -
Наша славна Україна,  |
Наша рідна сторона.   |(2)

Акорди 1:
Не журіться, юні друзі,
Є країна чарівна -
Наша славна Україна,
Наша рідна сторона.
Наша славна Україна,
Наша рідна сторона.

Акорди 2:
Am
Не журіться, юні друзі,
Dm
Є країна чарівна -
Наша славна Україна,
Наша рідна сторона.','[''pisni.org.ua'', ''cat:plastovi'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2990','Не журіться, юні друзі','Не журіться, юні друзі,
Є країна чарівна -
Наша славна Україна, |
Наша рідна сторона.  |(2)

Гори, доли, полонини,
Стайні, вівці, вівчарі,
Там на горах щохвилини  |
Світять ватри вівтарі.  |(2)

І на них складають жертви
Наші землі, труди й кров,
І на тих пустелях мертвих  |
Сходить наша воля знов.    |(2)

Воля-пташка, воля-вітер,
Що за волю не даси?
Йди, шукай її по світу   |
Через гори і ліси.       |(2)

Не журіться, юні друзі,
Є країна чарівна -
Наша славна Україна,  |
Наша рідна сторона.   |(2)

Акорди 1:
Не журіться, юні друзі,
Є країна чарівна -
Наша славна Україна,
Наша рідна сторона.
Наша славна Україна,
Наша рідна сторона.

Акорди 2:
Am
Не журіться, юні друзі,
Dm
Є країна чарівна -
Наша славна Україна,
Наша рідна сторона.');
DELETE FROM song_links WHERE song_id = 'pisniua_297498';
DELETE FROM song_versions WHERE song_id = 'pisniua_297498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_297498';
DELETE FROM songs WHERE id = 'pisniua_297498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_297498','Рушничок','Музика: Ірина Білик Слова: Ірина Білик. Виконує: Аліна Гросу','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мама мені вишивала рушник
Голками, наче сріблясте проміння.
Дощ за вікном моїм начебто зник -
В небі хмаринки не чорні, а сині.
Стати б маленькою зростом мені,
Стежкою, аж до зорі мандрувати,
Тільки насправді, а не уві сні
Голосно пісню веселу співати.

Приспів:
Ой, рушник, рушничок -
Кольорова доріжка.
Ой, рушник, рушничок,
Вже стомились ніжки.
Ой, рушник, рушничок,
Полем стелиться нитка.
Ой, рушник, рушничок,
Я маленька, як квітка,
Я маленька, як квітка.

З маків червоних віночок сплету,
Райдуга зранку доріжкою стане,
Все подолаю і все віднайду,
Зіроньку з неба яскраву дістану.
Друзям в дарунок несу рушничок,
Кажуть, що дива на світі немає,
Вірю: до зустрічі з казкою крок,
Щастя навколо по світу - я знаю.

Приспів.

Ой, рушник, рушничок -
Кольорова доріжка.
Ой, рушник, рушничок,
Вже стомились ніжки.
Ой, рушник, рушничок,
Полем стелиться нитка.
Ой, рушник, рушничок...

Приспів.

Я маленька, як квітка,
Я маленька, як квітка!..','[''pisni.org.ua'', ''cat:manrivni'', ''cat:nostalgia'', ''cat:pro-batkiv'', ''Пісні на мандрівну тематику'', ''Пісні з ностальгічними мотивами'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_297498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_297498','Рушничок','Мама мені вишивала рушник
Голками, наче сріблясте проміння.
Дощ за вікном моїм начебто зник -
В небі хмаринки не чорні, а сині.
Стати б маленькою зростом мені,
Стежкою, аж до зорі мандрувати,
Тільки насправді, а не уві сні
Голосно пісню веселу співати.

Приспів:
Ой, рушник, рушничок -
Кольорова доріжка.
Ой, рушник, рушничок,
Вже стомились ніжки.
Ой, рушник, рушничок,
Полем стелиться нитка.
Ой, рушник, рушничок,
Я маленька, як квітка,
Я маленька, як квітка.

З маків червоних віночок сплету,
Райдуга зранку доріжкою стане,
Все подолаю і все віднайду,
Зіроньку з неба яскраву дістану.
Друзям в дарунок несу рушничок,
Кажуть, що дива на світі немає,
Вірю: до зустрічі з казкою крок,
Щастя навколо по світу - я знаю.

Приспів.

Ой, рушник, рушничок -
Кольорова доріжка.
Ой, рушник, рушничок,
Вже стомились ніжки.
Ой, рушник, рушничок,
Полем стелиться нитка.
Ой, рушник, рушничок...

Приспів.

Я маленька, як квітка,
Я маленька, як квітка!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_297498_l1','pisniua_297498','YouTube','https://www.youtube.com/watch?v=VLZbJIHIiR4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_297498_l2','pisniua_297498','YouTube','https://www.youtube.com/watch?v=ZeOM2Ttmux0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_29697';
DELETE FROM song_versions WHERE song_id = 'pisniua_29697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_29697';
DELETE FROM songs WHERE id = 'pisniua_29697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_29697','Колискова','Музика: Володимир Івасюк Слова: Михайло Івасюк','uk','ukraine_before_1917',NULL,NULL,'http://ivasyuk.domivka.net/',NULL,'Ти спи, любий сину, в щасливому сні,
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
DELETE FROM song_links WHERE song_id = 'pisniua_298395';
DELETE FROM song_versions WHERE song_id = 'pisniua_298395';
DELETE FROM songs_fts WHERE song_id = 'pisniua_298395';
DELETE FROM songs WHERE id = 'pisniua_298395';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_298395','Рекрутська','Музика: народ Слова: народ. Виконує: Марія Бурмака','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Гой да на прийомі галки в''ю,
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
DELETE FROM song_links WHERE song_id = 'pisniua_298563';
DELETE FROM song_versions WHERE song_id = 'pisniua_298563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_298563';
DELETE FROM songs WHERE id = 'pisniua_298563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_298563','Мандри','Музика: Марія Бурмака Слова: Андрій Малишко. Виконує: Марія Бурмака','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В путь нічого збирати не буду:
Є тютюн і книжки, сухарі.
Десь піду я спокійно між люди,
Поклонюся вечірній зорі.

Так ходили, мабуть, святогори,
Де земля, як волошковий клин.
Так піду я в поля неозорі
І з піснями один на один.

Попрошу собі сил небагато
Молодим і гарячим слівцем.
Щоб на руки всю землю підняти,
Повернути до сонця лицем','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_298563'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_298563','Мандри','В путь нічого збирати не буду:
Є тютюн і книжки, сухарі.
Десь піду я спокійно між люди,
Поклонюся вечірній зорі.

Так ходили, мабуть, святогори,
Де земля, як волошковий клин.
Так піду я в поля неозорі
І з піснями один на один.

Попрошу собі сил небагато
Молодим і гарячим слівцем.
Щоб на руки всю землю підняти,
Повернути до сонця лицем');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_298563_l1','pisniua_298563','http://burmaka.com.ua/al_vesno.htm','http://burmaka.com.ua/al_vesno.htm','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_297512';
DELETE FROM song_versions WHERE song_id = 'pisniua_297512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_297512';
DELETE FROM songs WHERE id = 'pisniua_297512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_297512','Мама','Музика: Ірина Білик Слова: Ірина Білик. Виконує: Аліна Гросу','uk','ukraine_1991',NULL,NULL,'аудіозапис','пісня про маму','Хто мене зігріє в темну ніч?
Хто мені тихенько заспіває?
Ми з тобою, мамо, віч-на-віч.
Знаю я, що кращої немає.
Хай минають дні, летять роки
I, нехай, складне стає так просто.
Може вже й доросла я?

Приспів:
Я не буду казати
Та знай: ми блукаємо між світами.
Але там, де у неба є край
Чути пісню моєї мами.
Я не буду казати
Та знай: ти у мене одна єдина.
Тільки ти чекай.
Мамо, я до тебе лину!

Хто мене зігріє в темну ніч?
Доля, мов ріка, така глибока.
Тільки ми з тобою віч-на-віч,
Ніжна моя мамо синьоока.
Хай минають дні, летять роки
I, нехай, cкладне стає так просто.
Може вже й доросла я?

Приспів. (2)','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_297512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_297512','Мама','Хто мене зігріє в темну ніч?
Хто мені тихенько заспіває?
Ми з тобою, мамо, віч-на-віч.
Знаю я, що кращої немає.
Хай минають дні, летять роки
I, нехай, складне стає так просто.
Може вже й доросла я?

Приспів:
Я не буду казати
Та знай: ми блукаємо між світами.
Але там, де у неба є край
Чути пісню моєї мами.
Я не буду казати
Та знай: ти у мене одна єдина.
Тільки ти чекай.
Мамо, я до тебе лину!

Хто мене зігріє в темну ніч?
Доля, мов ріка, така глибока.
Тільки ми з тобою віч-на-віч,
Ніжна моя мамо синьоока.
Хай минають дні, летять роки
I, нехай, cкладне стає так просто.
Може вже й доросла я?

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_297512_l1','pisniua_297512','YouTube','https://www.youtube.com/watch?v=9uYHQV1Lprs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_297512_l2','pisniua_297512','YouTube','https://www.youtube.com/watch?v=rIBBZDlSIeI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_297512_l3','pisniua_297512','YouTube','https://www.youtube.com/watch?v=cpAon8D3yTw','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2971';
DELETE FROM song_versions WHERE song_id = 'pisniua_2971';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2971';
DELETE FROM songs WHERE id = 'pisniua_2971';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2971','Коли у путь','(Бий, барабан). Виконує: Журборіз','uk','ukraine_before_1917',NULL,NULL,'Пісневир. Молодіжний співаник. Львів 2001.',NULL,'C
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
DELETE FROM song_links WHERE song_id = 'pisniua_296828';
DELETE FROM song_versions WHERE song_id = 'pisniua_296828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_296828';
DELETE FROM songs WHERE id = 'pisniua_296828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_296828','Чи я тобі не казала, як ти сіяв ленцю','Українська народна пісня. Виконує: Нескорені','uk','ukraine_before_1917',NULL,NULL,'1. Надала Б. Сімович','В''язки 1, 2 співають дівчата, 3, 4, 5 — хлопці. Еротика, жарти, забави, загадки: Катерини – Калета – Андрія... Зелені Свята... Гаївки-Великдень... Весілля... – Щедровечірнє й Новорічне: Маланка й Василь. Коза. Кіт... Де Коза ходить там Жито родить! Козуню-Любуню пристань до мене Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда) ― Святий Збір (Трійця) ― Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','Чи я тобі не казала, як ти сіяв ленцю,
Не бери си великую, візьми собі меншу,

Бо велика, як ялиця, буде тебе бити,
А маленька рум''яненька буде тя любити.

Ой, дівчино, дівчинонько, чи підеш за мене?
Не будеш ти хліба печи у мене, у мене,

Бо у мене сам п''єц пече, кітка тріски носить,
Попід лави вода тече та й миски полоче,

Попід лави вода тече, миски обмиває,
Через сіни вітер віє, хату замітає','[''pisni.org.ua'', ''cat:huculski'', ''cat:kolomyyky'', ''cat:kolyadky'', ''cat:krasa-pryrody'', ''cat:kupalski'', ''cat:mifichni'', ''cat:philosophic'', ''cat:shchedrivky'', ''cat:socialno-pobutovi'', ''cat:vesnyanky-hayivky'', ''cat:zeleni-svyata'', ''Гуцульські пісні'', ''Коломийки'', ''Колядки'', ''Пісні про красу природи'', ''Купальські пісні'', ''Пісня з міфічними, світотворчими мотивами'', ''Філософські пісні'', ''Щедрівки'', ''Соціально-побутові пісні'', ''Веснянки та гаївки'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_296828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_296828','Чи я тобі не казала, як ти сіяв ленцю','Чи я тобі не казала, як ти сіяв ленцю,
Не бери си великую, візьми собі меншу,

Бо велика, як ялиця, буде тебе бити,
А маленька рум''яненька буде тя любити.

Ой, дівчино, дівчинонько, чи підеш за мене?
Не будеш ти хліба печи у мене, у мене,

Бо у мене сам п''єц пече, кітка тріски носить,
Попід лави вода тече та й миски полоче,

Попід лави вода тече, миски обмиває,
Через сіни вітер віє, хату замітає');
DELETE FROM song_links WHERE song_id = 'pisniua_3101962';
DELETE FROM song_versions WHERE song_id = 'pisniua_3101962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3101962';
DELETE FROM songs WHERE id = 'pisniua_3101962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3101962','Чорнобривці','Музика: Володимир Верменич Слова: Микола Сингаївський. Виконує: Віктор Павлік','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Чорнобривців насіяла мати.
У моїм світанковім краю,
Am          Е            Аm
Та й навчила веснянки співати
Про квітучу надію свою.

Приспів:
Як на ті чорнобривці погляну,
Бачу матір стареньку,
Бачу руки твої, моя мамо,
Твою ласку я чую, рідненька.

Я розлуки і зустрічі знаю,
Бачив я у чужій стороні
Чорнобривці із рідного краю,
Що насіяла ти навесні.

Приспів.

Прилітають до нашого поля
Із далеких країв журавлі,
Розцвітають і квіти, і доля
На моїй українській землі.

Приспів.','[''pisni.org.ua'', ''cat:patriotic'', ''cat:pro-batkiv'', ''Патріотичні пісні'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3101962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3101962','Чорнобривці','Чорнобривців насіяла мати.
У моїм світанковім краю,
Am          Е            Аm
Та й навчила веснянки співати
Про квітучу надію свою.

Приспів:
Як на ті чорнобривці погляну,
Бачу матір стареньку,
Бачу руки твої, моя мамо,
Твою ласку я чую, рідненька.

Я розлуки і зустрічі знаю,
Бачив я у чужій стороні
Чорнобривці із рідного краю,
Що насіяла ти навесні.

Приспів.

Прилітають до нашого поля
Із далеких країв журавлі,
Розцвітають і квіти, і доля
На моїй українській землі.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3101962_l1','pisniua_3101962','YouTube','https://www.youtube.com/watch?v=M9AcyyJYTtQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_29890';
DELETE FROM song_versions WHERE song_id = 'pisniua_29890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_29890';
DELETE FROM songs WHERE id = 'pisniua_29890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_29890','Повір очам','Музика: Володимир Івасюк Слова: Володимир Кудрявцев. Виконує: Піккардійська Терція','uk','ukraine_1991',NULL,NULL,'http://ivasyuk.domivka.net/',NULL,'Чому ти не віриш моїм очам
І погляд свій рониш долу?
А я сподівалась в розлуці, що нам
Довіра не зрадить ніколи.

Приспів:
Глянь же в очі
І мені ти знов повіриш.
Знай, що серцю
Все вони розкажуть щиро,
Бо в коханні
Очі знають серця мову.
Глянь,
І ти повіриш знову.

Птахи відлітають і їх не спинить, —
Чи можеш ти біль їх збагнути?
Хоч твій погляд — як мить,
Але спогад щемить
В моїм серці, як пісня забута.

Приспів.

Повір цим очам і, як сон, промайне
Той сумнів, що душу бентежить.
За тобою піду, як покличеш мене
У життя, у степ безмежний.

Приспів.','[''pisni.org.ua'', ''cat:dances'', ''cat:tango'', ''Пісні до танцю'', ''Танґо'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_29890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_29890','Повір очам','Чому ти не віриш моїм очам
І погляд свій рониш долу?
А я сподівалась в розлуці, що нам
Довіра не зрадить ніколи.

Приспів:
Глянь же в очі
І мені ти знов повіриш.
Знай, що серцю
Все вони розкажуть щиро,
Бо в коханні
Очі знають серця мову.
Глянь,
І ти повіриш знову.

Птахи відлітають і їх не спинить, —
Чи можеш ти біль їх збагнути?
Хоч твій погляд — як мить,
Але спогад щемить
В моїм серці, як пісня забута.

Приспів.

Повір цим очам і, як сон, промайне
Той сумнів, що душу бентежить.
За тобою піду, як покличеш мене
У життя, у степ безмежний.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_31020';
DELETE FROM song_versions WHERE song_id = 'pisniua_31020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_31020';
DELETE FROM songs WHERE id = 'pisniua_31020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_31020','Поїзд у Варшаву','Музика: Володимир Верменич Слова: Ліна Костенко. Виконує: Наталя Криничанка','uk','ukraine_1991',NULL,NULL,'1. текст - Пісневир: Молодіжний співаник.- Львів, 2001; 2. аудіо - Наталка Криничанка. "Я кохаю цього чоловіка". 1997.','Цей варіант пісні від Наталі Криничанки дещо відрізняється від авторського варіанту. * Тут текст польською "Komu co do tego, ze my tak kochamy..." читається так: "Кому цо до теґо, же ми так кохами..." Ця пісня увійшла в аудіо-альбом (CD) "Я кохаю цього чоловіка". З питаннями щодо придбання альбому та з пропозиціями щодо музичної співпраці звертайтесь за адресою etra@ukr.net або залишайте повідомлення на сторінці "Українські пісні: Наталя Криничанка". Підбір акордів: bohdanko','Вступ:  Dm Gm C Dm
Поїзд у Варшаву   спогади навіяв.
Я на Україні згадую тебе.
Ти співав для мене пісню вечорами:          |
"Komu co do tego,   ze my tak kochamy..." * |
Я люблю, коханий, Київ і Варшаву,
Але батьківщина в кожного своя.
Як тебе згадаю - забринить сльозами:      | (2)
"Komu co do tego, ze my tak kochamy..."   |
Програш (як Вступ).
Поїзд у Варшаву йде крізь моє серце,
Сто доріг між нами, а печаль одна.
І минають роки, роки за роками...         | (2)
Komu co do tego, ze my tak kochamy...     |
Програш (як Вступ).','[''pisni.org.ua'', ''cat:bardivski'', ''cat:nostalgia'', ''cat:philosophic'', ''cat:romansy'', ''Бардівські пісні'', ''Пісні з ностальгічними мотивами'', ''Філософські пісні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_31020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_31020','Поїзд у Варшаву','Вступ:  Dm Gm C Dm
Поїзд у Варшаву   спогади навіяв.
Я на Україні згадую тебе.
Ти співав для мене пісню вечорами:          |
"Komu co do tego,   ze my tak kochamy..." * |
Я люблю, коханий, Київ і Варшаву,
Але батьківщина в кожного своя.
Як тебе згадаю - забринить сльозами:      | (2)
"Komu co do tego, ze my tak kochamy..."   |
Програш (як Вступ).
Поїзд у Варшаву йде крізь моє серце,
Сто доріг між нами, а печаль одна.
І минають роки, роки за роками...         | (2)
Komu co do tego, ze my tak kochamy...     |
Програш (як Вступ).');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_31020_l1','pisniua_31020','YouTube','https://www.youtube.com/watch?v=rYNjD5PwqhE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_31020_l2','pisniua_31020','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3102727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3102727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3102727';
DELETE FROM songs WHERE id = 'pisniua_3102727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3102727','Ой даєш мні, моя мамо','Українська народна пісня. Виконує: Софія Практика','uk','ukraine_before_1917',NULL,NULL,'Практика Софія Михайлівна; село Деревні, Жовківський район, Львівська область.','Транскрипція тексту: Катерина Практика Весілля у селі Деревні Жовківського району Львівської області','Ой даєш мні, моя мамо, ой даєш, ой даєш,
Чого ж ти сі, моя мамо, його не питаєш:

(Чого його не питаєш) Як то мені буде,
Чи він мене молоденьку пустить межи люди','[''pisni.org.ua'', ''cat:halycki'', ''Пісні з Галичини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3102727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3102727','Ой даєш мні, моя мамо','Ой даєш мні, моя мамо, ой даєш, ой даєш,
Чого ж ти сі, моя мамо, його не питаєш:

(Чого його не питаєш) Як то мені буде,
Чи він мене молоденьку пустить межи люди');
DELETE FROM song_links WHERE song_id = 'pisniua_3102121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3102121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3102121';
DELETE FROM songs WHERE id = 'pisniua_3102121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3102121','Мій Києве-граде','Музика: Анатолій Матвійчук Слова: Анатолій Матвійчук. Виконує: Анатолій Матвійчук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ранкове проміння скрадається тихо,
Туманом клубочаться вранішні сни,
Читаю Тебе, як розгорнуту книгу
Мій Києве славний, мій граде ясний!
Святковий Майдан і зелений Хрещатик,
Софія, Печерськ і прадавній Поділ -
Я ними з дитинства учився пишатись,
Я місто своє назавжди полюбив!

Приспів:
Мій Києве-граде, мій сонячний брате,
Ти крила розкинув над сивим Дніпром,
Тобі вікувати, Тобі панувати,
Тобі за добро воздавати добром!
Мій Києве-граде, приймаєш Ти радо
Гостей із далеких держав і країн,
Хай різних чудес на землі так багато,
А Ти в моїм серці навіки один!

Ти бачив немало і щастя, і горя,
Тебе вороги руйнували не раз,
Та рвались у небо дзвіниці соборів
І промінь надії у серці не згас,
І віра Твоя незборима й вічна
З Тобою була в лабіринтах століть,
Ти з попелу днів, наче Фенікс магічний,
Щоразу злітав у небесну блакить!

Приспів.

Ти - місто добра, Ти - столиця любові,
Майбутнє Твоє, як зоря устає.
У жилах Твоїх я лиш крапелька крові,
А Ти — нескінченне натхнення моє!
В Тобі наша доля, в Тобі наша слава,
В Тобі наша вічність і наші серця,
І всі покоління моєї держави
Читатимуть глави Твої без кінця.

Приспів.

А Ти в моїм серці навіки один!','[''pisni.org.ua'', ''cat:kyyiv'', ''Пісні про Київ'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3102121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3102121','Мій Києве-граде','Ранкове проміння скрадається тихо,
Туманом клубочаться вранішні сни,
Читаю Тебе, як розгорнуту книгу
Мій Києве славний, мій граде ясний!
Святковий Майдан і зелений Хрещатик,
Софія, Печерськ і прадавній Поділ -
Я ними з дитинства учився пишатись,
Я місто своє назавжди полюбив!

Приспів:
Мій Києве-граде, мій сонячний брате,
Ти крила розкинув над сивим Дніпром,
Тобі вікувати, Тобі панувати,
Тобі за добро воздавати добром!
Мій Києве-граде, приймаєш Ти радо
Гостей із далеких держав і країн,
Хай різних чудес на землі так багато,
А Ти в моїм серці навіки один!

Ти бачив немало і щастя, і горя,
Тебе вороги руйнували не раз,
Та рвались у небо дзвіниці соборів
І промінь надії у серці не згас,
І віра Твоя незборима й вічна
З Тобою була в лабіринтах століть,
Ти з попелу днів, наче Фенікс магічний,
Щоразу злітав у небесну блакить!

Приспів.

Ти - місто добра, Ти - столиця любові,
Майбутнє Твоє, як зоря устає.
У жилах Твоїх я лиш крапелька крові,
А Ти — нескінченне натхнення моє!
В Тобі наша доля, в Тобі наша слава,
В Тобі наша вічність і наші серця,
І всі покоління моєї держави
Читатимуть глави Твої без кінця.

Приспів.

А Ти в моїм серці навіки один!');
DELETE FROM song_links WHERE song_id = 'pisniua_3102560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3102560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3102560';
DELETE FROM songs WHERE id = 'pisniua_3102560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3102560','Кропи нас, матінонько','Українська народна пісня. Виконує: Софія Практика','uk','ukraine_before_1917',NULL,NULL,'1. Практика Софія Михайлівна; село Деревні, Жовківський район, Львівська область.','Транскрипція тексту: Катерина Практика Транскрипція нотна: Андрій Вовчак Весілля у селі Деревні Жовківського району Львівської області','Кропи нас, матінонько,
Кропи нас, матінонько,
Свяченою водою.

Свяченою водою,
Свяченою водою,
Доброю доленькою','[''pisni.org.ua'', ''cat:halycki'', ''cat:vesilni'', ''Пісні з Галичини'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3102560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3102560','Кропи нас, матінонько','Кропи нас, матінонько,
Кропи нас, матінонько,
Свяченою водою.

Свяченою водою,
Свяченою водою,
Доброю доленькою');
DELETE FROM song_links WHERE song_id = 'pisniua_3100929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3100929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3100929';
DELETE FROM songs WHERE id = 'pisniua_3100929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3100929','Ой, ти, місяцю-зоре','Українська народна пісня. Виконує: Михайло Гришко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, ти, місяцю-зоре,
Ти зайди за комору,
Там десь моя миленькая
Та пшениченьку поле.

Ой, ти, місяцю-зоре,
Та світи на все поле,
Там десь моя миленькая
Та пшениченьку поле.

Вона поле та все поле,
Та все кукіль вибирає,
Кукіль вона вибирає,
На сонечко поглядає.

Кукіль вона вибирає,
На сонечко поглядає,
Чи високо соколонько
У небі літає','[''pisni.org.ua'', ''cat:all-ukraine'', ''Загальноукраїнські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3100929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3100929','Ой, ти, місяцю-зоре','Ой, ти, місяцю-зоре,
Ти зайди за комору,
Там десь моя миленькая
Та пшениченьку поле.

Ой, ти, місяцю-зоре,
Та світи на все поле,
Там десь моя миленькая
Та пшениченьку поле.

Вона поле та все поле,
Та все кукіль вибирає,
Кукіль вона вибирає,
На сонечко поглядає.

Кукіль вона вибирає,
На сонечко поглядає,
Чи високо соколонько
У небі літає');
DELETE FROM song_links WHERE song_id = 'pisniua_29990';
DELETE FROM song_versions WHERE song_id = 'pisniua_29990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_29990';
DELETE FROM songs WHERE id = 'pisniua_29990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_29990','Я ще не все тобі сказав','Музика: Володимир Івасюк Слова: Степан Пушик. Виконує: Назарій Яремчук, Віктор Шпортько','uk','ukraine_1991',NULL,NULL,'http://ivasyuk.domivka.net/',NULL,'Повіяв буйний вітер із-за гір,
І тане сніг, немов горить папір.
Біжать струмки, біжать серед зими
По тих стежках, куди ходили ми.

Приспів:
То не весна — не вір струмкам, кохана,
Бо теплий вітер в січні, то омана —
Ще будуть заметілі, ще будуть сніговії,
Не вір вітрам, бо квіти їм не вірять.
Прийде весна і всюди крига скресне,
Не вір вітрам, не вір словам облесним.
І буде наша зустріч за зимою,
Ще буду я з тобою, ти — зі мною.

У небі вітер накосив дощів,
Сказати я тобі давно хотів,
Аби слова, холодні та гіркі,
В далеке море занесли струмки.

Повіяв буйний вітер, заспівав,
Я ще не все, не все тобі сказав.
Поклич мене — я по тонкім льоду
До тебе знов дорогу віднайду.

Приспів','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_29990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_29990','Я ще не все тобі сказав','Повіяв буйний вітер із-за гір,
І тане сніг, немов горить папір.
Біжать струмки, біжать серед зими
По тих стежках, куди ходили ми.

Приспів:
То не весна — не вір струмкам, кохана,
Бо теплий вітер в січні, то омана —
Ще будуть заметілі, ще будуть сніговії,
Не вір вітрам, бо квіти їм не вірять.
Прийде весна і всюди крига скресне,
Не вір вітрам, не вір словам облесним.
І буде наша зустріч за зимою,
Ще буду я з тобою, ти — зі мною.

У небі вітер накосив дощів,
Сказати я тобі давно хотів,
Аби слова, холодні та гіркі,
В далеке море занесли струмки.

Повіяв буйний вітер, заспівав,
Я ще не все, не все тобі сказав.
Поклич мене — я по тонкім льоду
До тебе знов дорогу віднайду.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_299461';
DELETE FROM song_versions WHERE song_id = 'pisniua_299461';
DELETE FROM songs_fts WHERE song_id = 'pisniua_299461';
DELETE FROM songs WHERE id = 'pisniua_299461';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_299461','Весь світ звеселився','Музика: О. Калищук Слова: О. Калищук. Виконує: Народний хор Україна','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Весь світ звеселився,
Святкують всі кругом.
Христос народився,
Славмо Його.

Приспів:
Христос, Христос народився!  |
Славім, славімо Його!        | (2)

Вітаймо всі нині
Один одного.
Христос народився.
Славімо Його.

Приспів.

Співаймо, радіймо,
Тужити нам чого?
Христос народився.
Славімо Його.

Приспів.','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_299461'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_299461','Весь світ звеселився','Весь світ звеселився,
Святкують всі кругом.
Христос народився,
Славмо Його.

Приспів:
Христос, Христос народився!  |
Славім, славімо Його!        | (2)

Вітаймо всі нині
Один одного.
Христос народився.
Славімо Його.

Приспів.

Співаймо, радіймо,
Тужити нам чого?
Христос народився.
Славімо Його.

Приспів.');
