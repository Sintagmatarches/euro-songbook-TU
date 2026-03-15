DELETE FROM song_links WHERE song_id = 'pisniua_1119426';
DELETE FROM song_versions WHERE song_id = 'pisniua_1119426';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1119426';
DELETE FROM songs WHERE id = 'pisniua_1119426';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1119426','Колискова','Музика: Остап Гавриш Слова: Тамара Шевченко. Виконує: Маріанна Гавриш','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Заспівай, матусю, колискову,
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
DELETE FROM song_links WHERE song_id = 'pisniua_1117921';
DELETE FROM song_versions WHERE song_id = 'pisniua_1117921';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1117921';
DELETE FROM songs WHERE id = 'pisniua_1117921';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1117921','Прощай, село','Музика: Микола Леонтович Слова: Петро Соколов (Соколенко). Виконує: Курінь','uk','ukraine_before_1917',NULL,NULL,'http://leontovych.narod.ru/notes_e.html',NULL,'Прощай, село, город рідненький,
Прощай, Україно!
Прощай, мій сад зелененький,
Прощавай, дівчино!

А в тім саду, саду зеленому,
Де сонечко сяє,
На калині біля хати
Соловей співає.

Співай, співай, співай, соловейку,
Сидя на калині,
Не журися, дівчинонько,
У тяжкій годині.

А я піду на край світу,
Буду воювати,
Тебе, моє серденятко,
Буду споминати','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1117921'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1117921','Прощай, село','Прощай, село, город рідненький,
Прощай, Україно!
Прощай, мій сад зелененький,
Прощавай, дівчино!

А в тім саду, саду зеленому,
Де сонечко сяє,
На калині біля хати
Соловей співає.

Співай, співай, співай, соловейку,
Сидя на калині,
Не журися, дівчинонько,
У тяжкій годині.

А я піду на край світу,
Буду воювати,
Тебе, моє серденятко,
Буду споминати');
DELETE FROM song_links WHERE song_id = 'pisniua_1101426';
DELETE FROM song_versions WHERE song_id = 'pisniua_1101426';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1101426';
DELETE FROM songs WHERE id = 'pisniua_1101426';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1101426','Минає літо','Музика: Андрій Остапенко Слова: Вадим Крищенко. Виконує: Павло Мрежук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Котилось літо догори,
Вже котиться униз.
У кучеряві явори
Багрянці заплелись.
Запахнув сушений чебрець
І чути яблук смак,
Танцює коник-стрибунець
Прощальний свій гопак.

Приспів:
Минає літо, минає літо,
Минає літечко і що ж?
Хіба для нашої любові
Страшний холодний-сірий дощ?
Минає літо, минає літо,
За руку осінь приведи.
Те, що любов''ю обігріто
Не згасять зимні холоди!

Ось, вже троянд вогонь погас
І не почуєш бджіл.
І все, що спас в саду припас
Поставлено на стіл.
Роса немов прощань сльоза,
І літечко мина,
Вже серпень в річці відв''язав
Для осені човна.

Приспів. (2)

Минає літо...','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1101426'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1101426','Минає літо','Котилось літо догори,
Вже котиться униз.
У кучеряві явори
Багрянці заплелись.
Запахнув сушений чебрець
І чути яблук смак,
Танцює коник-стрибунець
Прощальний свій гопак.

Приспів:
Минає літо, минає літо,
Минає літечко і що ж?
Хіба для нашої любові
Страшний холодний-сірий дощ?
Минає літо, минає літо,
За руку осінь приведи.
Те, що любов''ю обігріто
Не згасять зимні холоди!

Ось, вже троянд вогонь погас
І не почуєш бджіл.
І все, що спас в саду припас
Поставлено на стіл.
Роса немов прощань сльоза,
І літечко мина,
Вже серпень в річці відв''язав
Для осені човна.

Приспів. (2)

Минає літо...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1101426_l1','pisniua_1101426','YouTube','https://www.youtube.com/watch?v=4c4P5MV1nLg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1102606';
DELETE FROM song_versions WHERE song_id = 'pisniua_1102606';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1102606';
DELETE FROM songs WHERE id = 'pisniua_1102606';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1102606','Ой коли ж ти почорніло, зеленеє поле?','Музика: Олексій Керекеша Слова: Тарас Шевченко. Виконує: Олексій Керекеша, Fata Morgana','uk','ukraine_1991',NULL,NULL,'http://www.fata-morgana-band.com',NULL,'Ой чого ти почорніло,
Зеленеє поле?
— Почорніло я од крові
За вольную волю.
Круг містечка Берестечка
На чотири милі
Мене славні запорожці
Своїм трупом вкрили.
Та ще мене гайворони
Укрили з півночі...
Клюють очі козацькії,
А трупу не хочуть.
Почорніло я, зелене,
Та за вашу волю...
Я знов буду зеленіти,
А ви вже ніколи
Не вернетеся на волю,
Будете орати
Мене стиха та орючи
Долю проклинати.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1102606'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1102606','Ой коли ж ти почорніло, зеленеє поле?','Ой чого ти почорніло,
Зеленеє поле?
— Почорніло я од крові
За вольную волю.
Круг містечка Берестечка
На чотири милі
Мене славні запорожці
Своїм трупом вкрили.
Та ще мене гайворони
Укрили з півночі...
Клюють очі козацькії,
А трупу не хочуть.
Почорніло я, зелене,
Та за вашу волю...
Я знов буду зеленіти,
А ви вже ніколи
Не вернетеся на волю,
Будете орати
Мене стиха та орючи
Долю проклинати.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1102606_l1','pisniua_1102606','YouTube','https://www.youtube.com/watch?v=NnQsphBYb_Y','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1102606_l2','pisniua_1102606','YouTube','https://www.youtube.com/watch?v=HmXNBcU5T70','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1102606_l3','pisniua_1102606','YouTube','https://www.youtube.com/watch?v=T18fINVrWVU','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_1114024';
DELETE FROM song_versions WHERE song_id = 'pisniua_1114024';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1114024';
DELETE FROM songs WHERE id = 'pisniua_1114024';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1114024','Журба ж мене сушить *','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Журба ж мене сушить,
Та журба ж мене в''ялить,
Та журба роспроклята
Із ніжок ізвалить.

А я ж тій журбі
Та й не піддаюся,
Як до шинку добреду,
Горілки нап''юся.

Ой, вип''ю я чарку,
Ой, вип''ю другую,
А чи не забуду
За журбу тяжкую?

Ой, вип''ю я чарку,
Ой, вип''ю пятую,
А чи не забуду
За журбу прокляту?

Чогось мені, братця,
Та й горілка не п''ється,
Та коло мого серця,
Як гадина в''ється.','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1114024'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1114024','Журба ж мене сушить *','Журба ж мене сушить,
Та журба ж мене в''ялить,
Та журба роспроклята
Із ніжок ізвалить.

А я ж тій журбі
Та й не піддаюся,
Як до шинку добреду,
Горілки нап''юся.

Ой, вип''ю я чарку,
Ой, вип''ю другую,
А чи не забуду
За журбу тяжкую?

Ой, вип''ю я чарку,
Ой, вип''ю пятую,
А чи не забуду
За журбу прокляту?

Чогось мені, братця,
Та й горілка не п''ється,
Та коло мого серця,
Як гадина в''ється.');
DELETE FROM song_links WHERE song_id = 'pisniua_1103808';
DELETE FROM song_versions WHERE song_id = 'pisniua_1103808';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1103808';
DELETE FROM songs WHERE id = 'pisniua_1103808';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1103808','Косарі косять','Українська народна пісня. Виконує: Берви','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Як же даш, Боже,
З вечора погодоньку,
Возьму відерце
Та й піду по воду.

Возьму ж відерце
Та й піду ж води брати,
Я ж тобі, мати,
Вечеру готувати.

Я ж тобі, мати,
Вечеру готувати,
Бо мені треба йти
Косариків наймать.

Як наймеш, наймеш
Косариків чотири,
Щоби покосили
Всі гори ще й долини.

Щоби покосили
Всі гори ще й долини,
Щоби було видно
Й до моєї родини.

Косареньку, сядь,
Вітер й повиває,
Щоби було, тримай,
На косу й на лезо.','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1103808'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1103808','Косарі косять','Як же даш, Боже,
З вечора погодоньку,
Возьму відерце
Та й піду по воду.

Возьму ж відерце
Та й піду ж води брати,
Я ж тобі, мати,
Вечеру готувати.

Я ж тобі, мати,
Вечеру готувати,
Бо мені треба йти
Косариків наймать.

Як наймеш, наймеш
Косариків чотири,
Щоби покосили
Всі гори ще й долини.

Щоби покосили
Всі гори ще й долини,
Щоби було видно
Й до моєї родини.

Косареньку, сядь,
Вітер й повиває,
Щоби було, тримай,
На косу й на лезо.');
DELETE FROM song_links WHERE song_id = 'pisniua_1117606';
DELETE FROM song_versions WHERE song_id = 'pisniua_1117606';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1117606';
DELETE FROM songs WHERE id = 'pisniua_1117606';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1117606','Ой Іване й Іваночку, й Іване','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісні Шевченкового краю. Записи, впорядкування і примітки Олекси Ошуркевича. Луцьк: Волинська обласна друкарня, 2006. - 484 с.',NULL,'Ой Іване й Іваночку, й Іване,
Уже твоя петрівочка минає.

Уже твоя петрівочка минає,
Половина літечка немає.

Половина літечка немає,
Половина зіллячка всихає.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1117606'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1117606','Ой Іване й Іваночку, й Іване','Ой Іване й Іваночку, й Іване,
Уже твоя петрівочка минає.

Уже твоя петрівочка минає,
Половина літечка немає.

Половина літечка немає,
Половина зіллячка всихає.');
DELETE FROM song_links WHERE song_id = 'pisniua_1101127';
DELETE FROM song_versions WHERE song_id = 'pisniua_1101127';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1101127';
DELETE FROM songs WHERE id = 'pisniua_1101127';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1101127','А льон цвіте','Музика: Іван Сльота Слова: Василь Юхимович. Виконує: Ансамбль Льонок','uk','ukraine_1991',NULL,NULL,'"Від щирого серця". Частина 3. 2001 р.',NULL,'Де льони-довгуни вилягали
І гордо вставали,
Рахували сини,
Скільки літ їм зозулі кували.

Приспів:
А льон цвіте синьо-синьо,
А мати жде додому сина.

Голубіли льони
Та здригнулось від грому Полісся,
По дорогах війни
Синьоокі сини розійшлися.

Приспів.

Почорніли льони,
Не здавались в полон золотими,
Полягали сини
І вставали із пломеню-диму.

Приспів.

Знов розквітли льони
У Поліськім краю голубому.
Повертались сини,
Як герої до рідного дому.

Приспів. (2)','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:patriotic'', ''Пісні з ностальгічними мотивами'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1101127'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1101127','А льон цвіте','Де льони-довгуни вилягали
І гордо вставали,
Рахували сини,
Скільки літ їм зозулі кували.

Приспів:
А льон цвіте синьо-синьо,
А мати жде додому сина.

Голубіли льони
Та здригнулось від грому Полісся,
По дорогах війни
Синьоокі сини розійшлися.

Приспів.

Почорніли льони,
Не здавались в полон золотими,
Полягали сини
І вставали із пломеню-диму.

Приспів.

Знов розквітли льони
У Поліськім краю голубому.
Повертались сини,
Як герої до рідного дому.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1101127_l1','pisniua_1101127','YouTube','https://www.youtube.com/watch?v=fYhFG1iJ1IA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1101127_l2','pisniua_1101127','YouTube','https://www.youtube.com/watch?v=xmc0hDCUdjs','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_1103202';
DELETE FROM song_versions WHERE song_id = 'pisniua_1103202';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1103202';
DELETE FROM songs WHERE id = 'pisniua_1103202';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1103202','Іже Херувимів','Українська народна пісня. Виконує: Хор імені Григорія Верьовки','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Іже Херувимів,
Іже Херувимів
Тайно образующе,
Тайно образующе.

І животворящей Тройці,
І животворящей Тройці
Трисвятую піснь припівающе,
Припівающе.

Всякое нині,
Всякое нині житейское
Отложим попеченіє,
Отложим попеченіє,
Попеченіє.

Амінь.

Яко да Царя,
Яко да Царя
Всіх подимем,
Яко да Царя
Всіх подимем.

Ангельськими невидимо
Дориносима чиньми.

Алилуй, алилуя, алилуя,
Алилуя, алилуя!','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1103202'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1103202','Іже Херувимів','Іже Херувимів,
Іже Херувимів
Тайно образующе,
Тайно образующе.

І животворящей Тройці,
І животворящей Тройці
Трисвятую піснь припівающе,
Припівающе.

Всякое нині,
Всякое нині житейское
Отложим попеченіє,
Отложим попеченіє,
Попеченіє.

Амінь.

Яко да Царя,
Яко да Царя
Всіх подимем,
Яко да Царя
Всіх подимем.

Ангельськими невидимо
Дориносима чиньми.

Алилуй, алилуя, алилуя,
Алилуя, алилуя!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1103202_l1','pisniua_1103202','YouTube','https://www.youtube.com/watch?v=fQooMGGL2Cg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1103220';
DELETE FROM song_versions WHERE song_id = 'pisniua_1103220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1103220';
DELETE FROM songs WHERE id = 'pisniua_1103220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1103220','Твоє весілля','(Через дві неділі). Музика: Микола Балема Слова: Мирослав Воньо. Виконує: Юрій Гаврилюк, Медобори','uk','ukraine_1991',NULL,'2008','Диск "Вір у любов. Золоті пісні від Мирослава", фірма "Мед", м. Вінниця, 2008 рік','Виконавець: Юрій Гаврилюк, диск "Вір у любов. Золоті пісні від Мирослава", фірма "Мед", м.Вінниця, 2008 рік. Є записи цієї пісні у виконанні гурту "Медобори"(колишні, м.Тернопіль, керівник О.Марцинківський) та ВІА "Ватрівчани(м. Тернопіль, керівник Ігор Вовк)','На весільне подвір''я
Заглядатимуть діти,
Буде твоє весілля
Музикою дзвеніти.
А заквітчана скрипка,
Як жива, заспіває,
І не буде лиш видко,
Як я гірко ридаю.

Приспів:
А через два тижні
Вже достигнуть вишні,
Через дві неділі -
Вже твоє весілля.

Бачив місяць, і хмари,
І дерева вечірні,
Як ходили у парі
Ми по вулиці рідній,
Як з моїми зливались
Твої вуста медові.
Як серця наші рвались
До єдиної долі!

Приспів:

А над нами в тиші
Розквітали вишні,
І була неділя
Гарна, як весілля.

Ти скажи мені, милий,
Звідки взялась та третя,
Що тобі пришпилила
Молодого букета?
Восени чи весною
Наша згаснула зірка?
Не мені із тобою
Гості крикнули: "Гірко!"

Приспів:
А на цьому тижні
Вже достигли вишні,
А нині неділя
І твоє весілля','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1103220'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1103220','Твоє весілля','На весільне подвір''я
Заглядатимуть діти,
Буде твоє весілля
Музикою дзвеніти.
А заквітчана скрипка,
Як жива, заспіває,
І не буде лиш видко,
Як я гірко ридаю.

Приспів:
А через два тижні
Вже достигнуть вишні,
Через дві неділі -
Вже твоє весілля.

Бачив місяць, і хмари,
І дерева вечірні,
Як ходили у парі
Ми по вулиці рідній,
Як з моїми зливались
Твої вуста медові.
Як серця наші рвались
До єдиної долі!

Приспів:

А над нами в тиші
Розквітали вишні,
І була неділя
Гарна, як весілля.

Ти скажи мені, милий,
Звідки взялась та третя,
Що тобі пришпилила
Молодого букета?
Восени чи весною
Наша згаснула зірка?
Не мені із тобою
Гості крикнули: "Гірко!"

Приспів:
А на цьому тижні
Вже достигли вишні,
А нині неділя
І твоє весілля');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1103220_l1','pisniua_1103220','YouTube','https://www.youtube.com/watch?v=4Y0oZtgcNn0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1118220';
DELETE FROM song_versions WHERE song_id = 'pisniua_1118220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1118220';
DELETE FROM songs WHERE id = 'pisniua_1118220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1118220','Тихий ліс','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'Співаник УПА. Борці за волю України. упор. О.Бобикевич, Ю.Лаврівський, О.Плешкевич та ін. Львів: Меморіал. 1992. - 190 с.',NULL,'Тихий ліс, а біля нього шанці,
Ніч минула в полум''ї заграв,
Втомлені стрільці поснули вранці,
Вартовий їх сон оберігав.

Тихо, тихо, полем вітер віє,
Шелестить, торкнувшися лиця,
І несуться в даль солодкі мрії
Вартового, юнака стрільця.

Ось він вдома, вийшли сестри любі,
Стара мати в білому платку,
І в той час позад нього на дубі,
Пролунало збуджене "ку-ку".

Ой, чого ти закувала зрана,
Мрій солодких перервала нить,
Угадай, скажи моя кохана,
Скільки років я ще буду жить?

Байдуже кує собі зозуля,
Рік, другий, четвертий на кінець,
І рахунок перервала куля,
Похиливсь прострілений стрілець.','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1118220'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1118220','Тихий ліс','Тихий ліс, а біля нього шанці,
Ніч минула в полум''ї заграв,
Втомлені стрільці поснули вранці,
Вартовий їх сон оберігав.

Тихо, тихо, полем вітер віє,
Шелестить, торкнувшися лиця,
І несуться в даль солодкі мрії
Вартового, юнака стрільця.

Ось він вдома, вийшли сестри любі,
Стара мати в білому платку,
І в той час позад нього на дубі,
Пролунало збуджене "ку-ку".

Ой, чого ти закувала зрана,
Мрій солодких перервала нить,
Угадай, скажи моя кохана,
Скільки років я ще буду жить?

Байдуже кує собі зозуля,
Рік, другий, четвертий на кінець,
І рахунок перервала куля,
Похиливсь прострілений стрілець.');
DELETE FROM song_links WHERE song_id = 'pisniua_1112808';
DELETE FROM song_versions WHERE song_id = 'pisniua_1112808';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1112808';
DELETE FROM songs WHERE id = 'pisniua_1112808';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1112808','Вийшов рекрут за ворота','Українська народна пісня. Виконує: Берегиня','uk','ukraine_before_1917',NULL,NULL,'http://www.franko.lviv.ua/',NULL,'Вийшов рекрут за ворота,
Низенько вклонився,
Прощай, прощай, вся родино,
Може з ким сварився.

Ой, сварився, не сварився,
Прощають всі люди,
Нехай тобі, молодому,
Легка служба буде.

Кропіть, люди, доріженьку,
Щоб ся не курила,
Розраджайте дівчиноньку,
Щоб ся не журила.

Кроплять люди доріженьку,
Дорога ся курить,
Розраджають дівчиноньку,
Дівчина ся журить.

Щоб то була за дорога,
Щоб ся не курила,
Щоб то була за дівчина,
Щоб ся не журила.

Коло млина горобина,
Зацвіла калина,
Породила бідна вдова
Не рекрута, сина.

Вона його породила
Темненької ночі,
Дала йому стан козацький
Ще й карії очі.

Нащо ж мене, моя мамцю,
На сей світ создала,
Що ти мене молодого
В рекрути віддала?

Не сама я віддавала,
Віддавали люди,
Що судили, говорили -
З тебе рекрут буде.','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1112808'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1112808','Вийшов рекрут за ворота','Вийшов рекрут за ворота,
Низенько вклонився,
Прощай, прощай, вся родино,
Може з ким сварився.

Ой, сварився, не сварився,
Прощають всі люди,
Нехай тобі, молодому,
Легка служба буде.

Кропіть, люди, доріженьку,
Щоб ся не курила,
Розраджайте дівчиноньку,
Щоб ся не журила.

Кроплять люди доріженьку,
Дорога ся курить,
Розраджають дівчиноньку,
Дівчина ся журить.

Щоб то була за дорога,
Щоб ся не курила,
Щоб то була за дівчина,
Щоб ся не журила.

Коло млина горобина,
Зацвіла калина,
Породила бідна вдова
Не рекрута, сина.

Вона його породила
Темненької ночі,
Дала йому стан козацький
Ще й карії очі.

Нащо ж мене, моя мамцю,
На сей світ создала,
Що ти мене молодого
В рекрути віддала?

Не сама я віддавала,
Віддавали люди,
Що судили, говорили -
З тебе рекрут буде.');
DELETE FROM song_links WHERE song_id = 'pisniua_1112828';
DELETE FROM song_versions WHERE song_id = 'pisniua_1112828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1112828';
DELETE FROM songs WHERE id = 'pisniua_1112828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1112828','Ой, жалко, жалко рожевого цвіту','Українська народна пісня. Виконує: Берегиня','uk','ukraine_before_1917',NULL,NULL,'http://www.franko.lviv.ua/',NULL,'Ой, жалко, жалко рожевогго цвіту,
Що розвіяв вітер по білому світу.
А ще більше жалко хлопця молодого,
Що йде служити цареві і Богу.

А він йде служити, скажуть присягати,
За дім, за родину треба забувати.
Ой, дадуть мені коня вороного,
Скажуть забувати батенька рідного.

Ой дадуть мені золоте сідельце,
Скажуть забувати закохане серце.
За дім, за родину скоро я забуду,
За любу дівчину повік не забуду.','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1112828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1112828','Ой, жалко, жалко рожевого цвіту','Ой, жалко, жалко рожевогго цвіту,
Що розвіяв вітер по білому світу.
А ще більше жалко хлопця молодого,
Що йде служити цареві і Богу.

А він йде служити, скажуть присягати,
За дім, за родину треба забувати.
Ой, дадуть мені коня вороного,
Скажуть забувати батенька рідного.

Ой дадуть мені золоте сідельце,
Скажуть забувати закохане серце.
За дім, за родину скоро я забуду,
За любу дівчину повік не забуду.');
DELETE FROM song_links WHERE song_id = 'pisniua_1118529';
DELETE FROM song_versions WHERE song_id = 'pisniua_1118529';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1118529';
DELETE FROM songs WHERE id = 'pisniua_1118529';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1118529','Пренебесна, пречудесна',NULL,'uk','ukraine_1991',NULL,NULL,'http://www.bazylianie.pl/mlolytownyk/pisni.htm',NULL,'Пренебесна, пречудесна Діво Маріє!

Ти нам Мати всім єдина,    |
Наймиліша в Свого Сина,    |
Мати Божа, Маріє!          | (2)

Найчесніша, наславніша Діво Маріє!

Херувими, серафими         |
Величають тя з святими,    |
Мати Божа, Маріє!          | (2)

Зоре ясна і прекрасна, Діво Маріє!

Ти надія наша в небі       |
I заступниця в потребі,    |
Мати Божа, Маріє!          | (2)

О, всепіта славо світа, Діво Маріє!

Пісню Ти заносим щиру      |
I молитву на офіру,        |
Мати Божа, Маріє!          | (2)

Благодатна і ласкава, Діво Маріє!

На життя бурхливім морю    |
Помагай нам в нужді, горю, |
Мати Божа, Маріє!          | (2)

Ти дорога всім до Бога, Діво Маріє!

Від гріхів все хорони нас  |
I до неба заведи нас,      |
Мати Божа, Маріє!          | (2)    комп''ютерне відтворення  (','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''cat:do-bohorodyci'', ''Церковні пісні'', ''Пісні на християнську тематику'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1118529'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1118529','Пренебесна, пречудесна','Пренебесна, пречудесна Діво Маріє!

Ти нам Мати всім єдина,    |
Наймиліша в Свого Сина,    |
Мати Божа, Маріє!          | (2)

Найчесніша, наславніша Діво Маріє!

Херувими, серафими         |
Величають тя з святими,    |
Мати Божа, Маріє!          | (2)

Зоре ясна і прекрасна, Діво Маріє!

Ти надія наша в небі       |
I заступниця в потребі,    |
Мати Божа, Маріє!          | (2)

О, всепіта славо світа, Діво Маріє!

Пісню Ти заносим щиру      |
I молитву на офіру,        |
Мати Божа, Маріє!          | (2)

Благодатна і ласкава, Діво Маріє!

На життя бурхливім морю    |
Помагай нам в нужді, горю, |
Мати Божа, Маріє!          | (2)

Ти дорога всім до Бога, Діво Маріє!

Від гріхів все хорони нас  |
I до неба заведи нас,      |
Мати Божа, Маріє!          | (2)    комп''ютерне відтворення  (');
DELETE FROM song_links WHERE song_id = 'pisniua_1100505';
DELETE FROM song_versions WHERE song_id = 'pisniua_1100505';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1100505';
DELETE FROM songs WHERE id = 'pisniua_1100505';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1100505','Ой ходімо, жінко','Музика: народ Слова: народ. Виконує: Народний хор Україна','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'-Ой ходімо, жінко, ходімо, ходімо,
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
DELETE FROM song_links WHERE song_id = 'pisniua_110505';
DELETE FROM song_versions WHERE song_id = 'pisniua_110505';
DELETE FROM songs_fts WHERE song_id = 'pisniua_110505';
DELETE FROM songs WHERE id = 'pisniua_110505';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_110505','Канадо, Канадо','Українська народна пісня. Виконує: Дует "Червоне та чорне"','uk','ukraine_before_1917',NULL,NULL,NULL,'Дует "ЧЕРВОНЕ ТА ЧОРНЕ", аудіоальбом "ЛЕМКІВСЬКЕ ВЕСІЛЛЯ-1" www.lemky.iatp.org.ua','Прийшов до Сянока я
Пашпорт виробляти,
Моя жінка молоденька
Стала банувати.
-Ой не йди, мій милий,
В Канаду служити,
Я лишуся з дітоньками
Та й будем бідити.

Приспів:
Канадо, Канадо,
Яка ж ти зрадлива,
Не одного чоловіка
З жонов розлучила.

Послав я дитину
По свою родину,
Щоб прийшли усі до мене
На час, на годину.
-Ой приходьте, рідні,
Старенькая мати,
Бо не знаю, чи вас буду
Ще колись видати.

Приспів.

Вийшов за село я,
Трохи припізнився.
-Прощай, прощай, родинько,
Може, з ким сварився.
Іду рідним полем,
А там білі квіти,
Плаче жінка молодая,
Плачуть малі діти.

Приспів','[''pisni.org.ua'', ''cat:emigration'', ''cat:lemkivski'', ''Пісні про еміґрацію'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_110505'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_110505','Канадо, Канадо','Прийшов до Сянока я
Пашпорт виробляти,
Моя жінка молоденька
Стала банувати.
-Ой не йди, мій милий,
В Канаду служити,
Я лишуся з дітоньками
Та й будем бідити.

Приспів:
Канадо, Канадо,
Яка ж ти зрадлива,
Не одного чоловіка
З жонов розлучила.

Послав я дитину
По свою родину,
Щоб прийшли усі до мене
На час, на годину.
-Ой приходьте, рідні,
Старенькая мати,
Бо не знаю, чи вас буду
Ще колись видати.

Приспів.

Вийшов за село я,
Трохи припізнився.
-Прощай, прощай, родинько,
Може, з ким сварився.
Іду рідним полем,
А там білі квіти,
Плаче жінка молодая,
Плачуть малі діти.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_1102622';
DELETE FROM song_versions WHERE song_id = 'pisniua_1102622';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1102622';
DELETE FROM songs WHERE id = 'pisniua_1102622';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1102622','Ревана','Українська народна пісня. Виконує: Гудаки','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Не вповідай, цімбойрику,
Що я в полі маю,
Бо я тобі, цімбойрику,
Ручки поламаю.

Ой, Боже,
Як пропало життя молодоє,
Як із дуба у восени
Листя зеленоє.

Ой, Марійко білява,
Марійко білява,
Земля квітне коло тебе,
Як ти ся сміяла.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1102622'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1102622','Ревана','Не вповідай, цімбойрику,
Що я в полі маю,
Бо я тобі, цімбойрику,
Ручки поламаю.

Ой, Боже,
Як пропало життя молодоє,
Як із дуба у восени
Листя зеленоє.

Ой, Марійко білява,
Марійко білява,
Земля квітне коло тебе,
Як ти ся сміяла.');
DELETE FROM song_links WHERE song_id = 'pisniua_1104127';
DELETE FROM song_versions WHERE song_id = 'pisniua_1104127';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1104127';
DELETE FROM songs WHERE id = 'pisniua_1104127';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1104127','Ой ніхто так не літає, як перепеличка','Українська народна пісня. Виконує: Софія Практика','uk','ukraine_before_1917',NULL,NULL,'Практика Софія Михайлівна; село Деревні, Жовківський район, Львівська область.','Транскрипція тексту: Катерина Практика Весілля у селі Деревні Жовківського району Львівської області','Ой ніхто так не літає, як перепеличка,
Ой ніхто так не витає, як рідна сестричка.

Пий, сестричко, жий, сестричко, многая літ,
Розвивайся, розцвітайся, як рожевий цвіт','[''pisni.org.ua'', ''cat:halycki'', ''Пісні з Галичини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1104127'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1104127','Ой ніхто так не літає, як перепеличка','Ой ніхто так не літає, як перепеличка,
Ой ніхто так не витає, як рідна сестричка.

Пий, сестричко, жий, сестричко, многая літ,
Розвивайся, розцвітайся, як рожевий цвіт');
DELETE FROM song_links WHERE song_id = 'pisniua_1121828';
DELETE FROM song_versions WHERE song_id = 'pisniua_1121828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1121828';
DELETE FROM songs WHERE id = 'pisniua_1121828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1121828','Донечка','Виконує: Дует "Світязь"','uk','ukraine_1991',NULL,NULL,'http://nashe.com.ua/song.htm?id=4969',NULL,'Донечка маленька, чорні оченята,
Ти моя красуня, ти моє курчатко.
Як я жив без тебе я не уявляю,
Голос твій дзвіночком цілий день лунає.

Приспів:
Тато, тато, тато...
Мама, мама, мама...
Дідя, дідя, дідя...
Баба, баба, баба...

Ми запам''ятали, милий наш голубчик,
День, коли з''явився в тебе перший зубчик.
Я тебе до себе ніжно пригортаю,
В носик поцілую і заколихаю.

Приспів.

Станеш ти доросла і підеш до школи,
Тільки татка й маму не забудь ніколи.
Бо для мене завжди будеш ти маленька,
Зайчик-пострибайчик, донечка рідненька.

Приспів.

Донечка маленька, чорні оченята,
Ти моя красуня, ти моє курчатко.
Голос твій дзвіночком цілий день лунає,
Як я жив без тебе я не уявляю.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1121828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1121828','Донечка','Донечка маленька, чорні оченята,
Ти моя красуня, ти моє курчатко.
Як я жив без тебе я не уявляю,
Голос твій дзвіночком цілий день лунає.

Приспів:
Тато, тато, тато...
Мама, мама, мама...
Дідя, дідя, дідя...
Баба, баба, баба...

Ми запам''ятали, милий наш голубчик,
День, коли з''явився в тебе перший зубчик.
Я тебе до себе ніжно пригортаю,
В носик поцілую і заколихаю.

Приспів.

Станеш ти доросла і підеш до школи,
Тільки татка й маму не забудь ніколи.
Бо для мене завжди будеш ти маленька,
Зайчик-пострибайчик, донечка рідненька.

Приспів.

Донечка маленька, чорні оченята,
Ти моя красуня, ти моє курчатко.
Голос твій дзвіночком цілий день лунає,
Як я жив без тебе я не уявляю.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1121828_l1','pisniua_1121828','YouTube','https://www.youtube.com/watch?v=uEZ9q1XW1ZI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1104101';
DELETE FROM song_versions WHERE song_id = 'pisniua_1104101';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1104101';
DELETE FROM songs WHERE id = 'pisniua_1104101';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1104101','Ой ніхто так не літає, як голуб сивенький','Українська народна пісня. Виконує: Софія Практика','uk','ukraine_before_1917',NULL,NULL,'Практика Софія Михайлівна; село Деревні, Жовківський район, Львівська область.','Транскрипція тексту: Катерина Практика Весілля у селі Деревні Жовківського району Львівської області','Ой ніхто так не літає, як голуб сивенький,
Ой ніхто так не витає, як тато рідненький.

Пийте, тату, жийте, тату, многая літ,
Розвивайся, розцвітайся, як рожевий цвіт','[''pisni.org.ua'', ''cat:halycki'', ''cat:pro-ditey'', ''Пісні з Галичини'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1104101'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1104101','Ой ніхто так не літає, як голуб сивенький','Ой ніхто так не літає, як голуб сивенький,
Ой ніхто так не витає, як тато рідненький.

Пийте, тату, жийте, тату, многая літ,
Розвивайся, розцвітайся, як рожевий цвіт');
DELETE FROM song_links WHERE song_id = 'pisniua_1102024';
DELETE FROM song_versions WHERE song_id = 'pisniua_1102024';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1102024';
DELETE FROM songs WHERE id = 'pisniua_1102024';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1102024','Приїжджайте частіше додому','Музика: Анатолій Горчинський Слова: Микола Луків. Виконує: Алла Кудлай, Михайло Поплавський, Анатолій Горчинський, Петро Довгошия, Василь Білоцерківський','uk','ukraine_1991',NULL,NULL,NULL,'Виконує:А. Кудлай, М. Поплавський','Ще не видно тополь над садами,
Ще нема ні обіймів, ні сліз.
Відчуваю я зустріч з батьками,
Під мінорний переспів коліс.
Приїжджайте частіше до дому,
Щоб не мучила совість потому.
І батьки хай зрадіють обоє!
Приїжджайте частіше до дому!
Приїжджайте! Приїжджайте!
Приїжджайте частіше до дому!

Очі їхні, любов та благання -
Це є смуток горить з під повік.
Кожна зустріч немовби остання,
А розлука неначе навік.
Приїжджайте частіше до дому!
Ні грошей не привозьте, ні слави.
Будьте з рідними завжди ласкаві.
Приїжджайте частіше до дому!
Приїжджайте! Приїжджайте!
Приїжджайте частіше до дому!

Біль утрати сумління нам палить.
Все життя їх святиня для нас,
Бо батьки переходять у пам''ять,
Не лишають до смерті вже нас.
Приїжджайте частіше до дому!
Бо не вічні ні батько, ні мати...
Завтра можете їх не застати...
Приїжджайте частіше до дому!
Приїжджайте! Приїжджайте!
Приїжджайте частіше до дому!
Приїжджайте! Приїжджайте!
Приїжджайте частіше до дому!','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:pro-batkiv'', ''cat:zahalni-cinnosti'', ''Пісні з ностальгічними мотивами'', ''Пісні про любов до батьків'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1102024'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1102024','Приїжджайте частіше додому','Ще не видно тополь над садами,
Ще нема ні обіймів, ні сліз.
Відчуваю я зустріч з батьками,
Під мінорний переспів коліс.
Приїжджайте частіше до дому,
Щоб не мучила совість потому.
І батьки хай зрадіють обоє!
Приїжджайте частіше до дому!
Приїжджайте! Приїжджайте!
Приїжджайте частіше до дому!

Очі їхні, любов та благання -
Це є смуток горить з під повік.
Кожна зустріч немовби остання,
А розлука неначе навік.
Приїжджайте частіше до дому!
Ні грошей не привозьте, ні слави.
Будьте з рідними завжди ласкаві.
Приїжджайте частіше до дому!
Приїжджайте! Приїжджайте!
Приїжджайте частіше до дому!

Біль утрати сумління нам палить.
Все життя їх святиня для нас,
Бо батьки переходять у пам''ять,
Не лишають до смерті вже нас.
Приїжджайте частіше до дому!
Бо не вічні ні батько, ні мати...
Завтра можете їх не застати...
Приїжджайте частіше до дому!
Приїжджайте! Приїжджайте!
Приїжджайте частіше до дому!
Приїжджайте! Приїжджайте!
Приїжджайте частіше до дому!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1102024_l1','pisniua_1102024','YouTube','https://www.youtube.com/watch?v=SmUrznjqnVY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1102024_l2','pisniua_1102024','YouTube','https://www.youtube.com/watch?v=9I8BCzgfkbY','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_1117622';
DELETE FROM song_versions WHERE song_id = 'pisniua_1117622';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1117622';
DELETE FROM songs WHERE id = 'pisniua_1117622';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1117622','Ой, ти, Їване-поповичу','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісні Шевченкового краю. Записи, впорядкування і примітки Олекси Ошуркевича. Луцьк: Волинська обласна друкарня, 2006. - 484 с.',NULL,'- ой ти, Їване-поповичу,
Виведи Марію на гулицю.

Ой що ж Марія дома робить,
Що на гулицю не виходить?

- Бо в неї ненька не рідненька,
Її гулиця не миленька.

Бо єї ненька б''є та лає,
Та на гулицю не пускає.

- Ой підеш, доню, у суботу,
Як підуть хлопці на роботу.

Ой підеш, ненько, тоді сама
Як на гулиці хлопців нема.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1117622'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1117622','Ой, ти, Їване-поповичу','- ой ти, Їване-поповичу,
Виведи Марію на гулицю.

Ой що ж Марія дома робить,
Що на гулицю не виходить?

- Бо в неї ненька не рідненька,
Її гулиця не миленька.

Бо єї ненька б''є та лає,
Та на гулицю не пускає.

- Ой підеш, доню, у суботу,
Як підуть хлопці на роботу.

Ой підеш, ненько, тоді сама
Як на гулиці хлопців нема.');
DELETE FROM song_links WHERE song_id = 'pisniua_1118505';
DELETE FROM song_versions WHERE song_id = 'pisniua_1118505';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1118505';
DELETE FROM songs WHERE id = 'pisniua_1118505';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1118505','Просимо тя, Діво','Музика: Віктор Матюк Слова: Віктор Матюк. Виконує: Львівські музики','uk','ukraine_1991',NULL,NULL,'http://www.bazylianie.pl/mlolytownyk/pisni.htm',NULL,'Просимо Тя, Діво, шлем до Тебе глас,
Сиротам Ти Мати, - не лишай же нас!
Поможи нам, поможи нам,
Просим з сльозами,
О, Маріє, о, Маріє,
Змилуйсь над нами!

Мати Божа, зоре ясна,   |
Діво пресвята!          |
Покажи нам, що Ти наша, |
Мати преблага,          |
Покажи нам, що Ти наша, |
Мати преблага.          | (2)

Глянь на нас ласкаво оком пресвятим
I зішли нам поміч - людям немічним.
Поможи нам...
О, Маріє, Діво, пом''яни всіх нас,
I в Своїх молитвах не забудь за нас.
Поможи нам...

О, прийми ж, царице, наші ті мольби,
Хай для них простить нам Твій Син всі гріхи.
Поможи нам...','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:do-bohorodyci'', ''Церковні пісні'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1118505'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1118505','Просимо тя, Діво','Просимо Тя, Діво, шлем до Тебе глас,
Сиротам Ти Мати, - не лишай же нас!
Поможи нам, поможи нам,
Просим з сльозами,
О, Маріє, о, Маріє,
Змилуйсь над нами!

Мати Божа, зоре ясна,   |
Діво пресвята!          |
Покажи нам, що Ти наша, |
Мати преблага,          |
Покажи нам, що Ти наша, |
Мати преблага.          | (2)

Глянь на нас ласкаво оком пресвятим
I зішли нам поміч - людям немічним.
Поможи нам...
О, Маріє, Діво, пом''яни всіх нас,
I в Своїх молитвах не забудь за нас.
Поможи нам...

О, прийми ж, царице, наші ті мольби,
Хай для них простить нам Твій Син всі гріхи.
Поможи нам...');
DELETE FROM song_links WHERE song_id = 'pisniua_1105622';
DELETE FROM song_versions WHERE song_id = 'pisniua_1105622';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1105622';
DELETE FROM songs WHERE id = 'pisniua_1105622';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1105622','Та й заплачеш, файна любко','Українська народна пісня. Виконує: Марія Миколайчук','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Та й заплачеш, файна любко,
Заплачеш, заплачеш,
Та як мене на цісарськім
Конику зобачиш.

Ой, не буду, мій миленький,
Не буду, не буду,
Ти - за гору, я - за другу,
За тебе забуду.

А як зачав молод-хлопець
За горб заникати,
Зачали го дівчиноньку
Водов відливати.

Ой, вернися, козаченьку,
Дівчина вмирає,
Треба коня натискати,
Щоб її застатити.

Та як прийшов молод-хлопець
Перед нову браму,
Впорядили дівчиноньку
На тисову лаву.

Та як ввійшов молод-хлопець
Та й став на порозі,
Облилиго по личеньку
Дрібнії сльози:

"Ніжки ж мої, ручки ж мої,
Чом ми си зложили?
Як я їхав на Вкраїну, |
А ви ще робили."      | (2)','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1105622'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1105622','Та й заплачеш, файна любко','Та й заплачеш, файна любко,
Заплачеш, заплачеш,
Та як мене на цісарськім
Конику зобачиш.

Ой, не буду, мій миленький,
Не буду, не буду,
Ти - за гору, я - за другу,
За тебе забуду.

А як зачав молод-хлопець
За горб заникати,
Зачали го дівчиноньку
Водов відливати.

Ой, вернися, козаченьку,
Дівчина вмирає,
Треба коня натискати,
Щоб її застатити.

Та як прийшов молод-хлопець
Перед нову браму,
Впорядили дівчиноньку
На тисову лаву.

Та як ввійшов молод-хлопець
Та й став на порозі,
Облилиго по личеньку
Дрібнії сльози:

"Ніжки ж мої, ручки ж мої,
Чом ми си зложили?
Як я їхав на Вкраїну, |
А ви ще робили."      | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_110220';
DELETE FROM song_versions WHERE song_id = 'pisniua_110220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_110220';
DELETE FROM songs WHERE id = 'pisniua_110220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_110220','Ні, я не ту кохав...','Музика: А. Говорадло Слова: А. Говорадло, Олександр Положинський. Виконує: Тартак, Дует "Світязь"','uk','ukraine_before_1917',NULL,NULL,'http://www.tartak.com.ua/song.html','Аранжування: Д. Гершензон та "Тартак" Виконують "Тартак" та дует "Світязь"','У полоні темноти, наче сон з''явилась ти.
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
DELETE FROM song_links WHERE song_id = 'pisniua_1113101';
DELETE FROM song_versions WHERE song_id = 'pisniua_1113101';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1113101';
DELETE FROM songs WHERE id = 'pisniua_1113101';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1113101','А дід бабі сані','Українська народна пісня. Виконує: Берегиня','uk','ukraine_before_1917',NULL,NULL,'http://www.franko.lviv.ua/',NULL,'А дід бабі сані ладив, (3)
На ярмарок запровадши:

А дід бабу продає, (3)
Ніхто грошей не дає.

Забув бабу розчесати, (3)
Ніяк бабу не продати.

Розсердився дід на бабу, (3)
Роздер бабі кожух ззаду.

Баба ходить та й туркоче, (3)
Залатати кожух хоче.

Баба тяжко затужила, (3)
Три неділі не палила.

На четверту запалила (3)
Та й галушок наварила.

А, як їла - квапилася (3)
Та й галушков вдавилася.

А дід бабу рятує, (3)
Квачем горло шурує.

А ти знала, що беззуба, (3)
Наварила тіста грубо.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1113101'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1113101','А дід бабі сані','А дід бабі сані ладив, (3)
На ярмарок запровадши:

А дід бабу продає, (3)
Ніхто грошей не дає.

Забув бабу розчесати, (3)
Ніяк бабу не продати.

Розсердився дід на бабу, (3)
Роздер бабі кожух ззаду.

Баба ходить та й туркоче, (3)
Залатати кожух хоче.

Баба тяжко затужила, (3)
Три неділі не палила.

На четверту запалила (3)
Та й галушок наварила.

А, як їла - квапилася (3)
Та й галушков вдавилася.

А дід бабу рятує, (3)
Квачем горло шурує.

А ти знала, що беззуба, (3)
Наварила тіста грубо.');
DELETE FROM song_links WHERE song_id = 'pisniua_1114000';
DELETE FROM song_versions WHERE song_id = 'pisniua_1114000';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1114000';
DELETE FROM songs WHERE id = 'pisniua_1114000';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1114000','Ой, летять, летять три соколи','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Ой, летять, летять три соколи через сад, гей, гей.
Зачеркнули вони крилечками виноград.

Зачеркнули вони крилечками виноград, гей, гей,
Цілувалися ми та й з тобою один раз.

Цілувалися ми та й з тобою один раз, гей, гей,
Та не знали ми, що то в світі за любов.

Ой, любов наша, любов, а розлука тяженькая, гей, гей,
Розлучила нас чужа дальня сторона.

Ох, і розлучила нас чужа дальня сторона, гей, гей, гей,
Ой, не так сторона, як родинонька своя.','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1114000'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1114000','Ой, летять, летять три соколи','Ой, летять, летять три соколи через сад, гей, гей.
Зачеркнули вони крилечками виноград.

Зачеркнули вони крилечками виноград, гей, гей,
Цілувалися ми та й з тобою один раз.

Цілувалися ми та й з тобою один раз, гей, гей,
Та не знали ми, що то в світі за любов.

Ой, любов наша, любов, а розлука тяженькая, гей, гей,
Розлучила нас чужа дальня сторона.

Ох, і розлучила нас чужа дальня сторона, гей, гей, гей,
Ой, не так сторона, як родинонька своя.');
DELETE FROM song_links WHERE song_id = 'pisniua_1113707';
DELETE FROM song_versions WHERE song_id = 'pisniua_1113707';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1113707';
DELETE FROM songs WHERE id = 'pisniua_1113707';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1113707','Ой, орали воли, загубили ярмо','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://www.karpaty.lviv.ua, джерело матеріалу: Малова-Малкович П. М. "З карпатських джерел": фольклорно-етнографічеий нарис. - Чернівці: Місто, 2004. - 176 с.',NULL,'Ой, орали воли, загубили ярмо.
- Не дай мене, моя мамко, на чужеє село.
Бо в чужому селі всі сідають вечерять,
А мене молоду посилають по воду.

Ой, ішла я, ішла, повні відра не взяла,
Повні відра не взяла, сльозоньками долила.
Ой, ішла я, ішла та й прислухалася,
Як у саду стара мати сина підмовляла:

- Як ти, сину, жиєш, чом горівку не п''єш,
Чом горівку не п''єш, чому жінку не б''єш?
- Ой, ви, мамо мої, не кажіть це мені,
Як вона вам надоїла, проженіть ви її.

Ой, як я її брав, аж ся гай розвивав,
Зсушили-сте, зморили-сте, що я її не пізнав.
Ой, як я її брав, цвила, як калина,
Зсушили-сте, зморили-сте, вісхла, як билина.

Ой, ви, мамо моя, в мене жінка така,
Що зварить і спече й без вечері спать ляже.
Ой, ви, мамо моя, грішні ваші слова,
Як я буду жінку бить, з ким я буду в світі жить?','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1113707'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1113707','Ой, орали воли, загубили ярмо','Ой, орали воли, загубили ярмо.
- Не дай мене, моя мамко, на чужеє село.
Бо в чужому селі всі сідають вечерять,
А мене молоду посилають по воду.

Ой, ішла я, ішла, повні відра не взяла,
Повні відра не взяла, сльозоньками долила.
Ой, ішла я, ішла та й прислухалася,
Як у саду стара мати сина підмовляла:

- Як ти, сину, жиєш, чом горівку не п''єш,
Чом горівку не п''єш, чому жінку не б''єш?
- Ой, ви, мамо мої, не кажіть це мені,
Як вона вам надоїла, проженіть ви її.

Ой, як я її брав, аж ся гай розвивав,
Зсушили-сте, зморили-сте, що я її не пізнав.
Ой, як я її брав, цвила, як калина,
Зсушили-сте, зморили-сте, вісхла, як билина.

Ой, ви, мамо моя, в мене жінка така,
Що зварить і спече й без вечері спать ляже.
Ой, ви, мамо моя, грішні ваші слова,
Як я буду жінку бить, з ким я буду в світі жить?');
DELETE FROM song_links WHERE song_id = 'pisniua_1116707';
DELETE FROM song_versions WHERE song_id = 'pisniua_1116707';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1116707';
DELETE FROM songs WHERE id = 'pisniua_1116707';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1116707','Ой, та спився козак','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Ой, та спився козак, спився,
Гей, та із розуму збився,
Вороному коню, гей,
Та на гриву схилився.

Ой, поїхав козаченько
Гей, та у чистеє поле,
Де бідна сирота, гей,
Та пшениченьку поле, гей.

Та пшениченьку поле, гей,
А кукіль вибірає,
Кукіль вибірає, гей,
Та на межу кидає.

Годі ж тобі, дівчинонько,
Гей, та кукіль вибірати,
Ходім додомоньку, гей,
Та вари вечеряти.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1116707'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1116707','Ой, та спився козак','Ой, та спився козак, спився,
Гей, та із розуму збився,
Вороному коню, гей,
Та на гриву схилився.

Ой, поїхав козаченько
Гей, та у чистеє поле,
Де бідна сирота, гей,
Та пшениченьку поле, гей.

Та пшениченьку поле, гей,
А кукіль вибірає,
Кукіль вибірає, гей,
Та на межу кидає.

Годі ж тобі, дівчинонько,
Гей, та кукіль вибірати,
Ходім додомоньку, гей,
Та вари вечеряти.');
DELETE FROM song_links WHERE song_id = 'pisniua_110529';
DELETE FROM song_versions WHERE song_id = 'pisniua_110529';
DELETE FROM songs_fts WHERE song_id = 'pisniua_110529';
DELETE FROM songs WHERE id = 'pisniua_110529';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_110529','Не піду я до леса','Українська народна пісня. Виконує: Дует "Червоне та чорне"','uk','ukraine_before_1917',NULL,NULL,NULL,'Дует "ЧЕРВОНЕ ТА ЧОРНЕ", аудіоальбом "ЛЕМКІВСЬКЕ ВЕСІЛЛЯ-3" www.lemky.iatp.org.ua','Не піду я до леса з кониками,
Же би мене гайтове полапали.
Лем я піду на лучку,
Возьму дівча на ручку,
Буду го я бавив
Помалючки.

Не піду я до леса без сокири,
Древко рубац не буду без свой милой.
Древко би мя забило,
Што ж би дівча робило,
Хто би го побавив
Помалючки.

А Боже мій, Боже мій, як то шумні.
Кед мі фраїр коханий приде ку мні.
Сяде собі к постели,
Сяде собі к постели,
Ой аж мі серденько
Розвеселит.

Не піду я до леса з кониками,
Же би мене гайтове полапали.
Лем я піду на лучку,
Возьму дівча на ручку,
Буду го я бавив
Помалючки','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_110529'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_110529','Не піду я до леса','Не піду я до леса з кониками,
Же би мене гайтове полапали.
Лем я піду на лучку,
Возьму дівча на ручку,
Буду го я бавив
Помалючки.

Не піду я до леса без сокири,
Древко рубац не буду без свой милой.
Древко би мя забило,
Што ж би дівча робило,
Хто би го побавив
Помалючки.

А Боже мій, Боже мій, як то шумні.
Кед мі фраїр коханий приде ку мні.
Сяде собі к постели,
Сяде собі к постели,
Ой аж мі серденько
Розвеселит.

Не піду я до леса з кониками,
Же би мене гайтове полапали.
Лем я піду на лучку,
Возьму дівча на ручку,
Буду го я бавив
Помалючки');
DELETE FROM song_links WHERE song_id = 'pisniua_1102921';
DELETE FROM song_versions WHERE song_id = 'pisniua_1102921';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1102921';
DELETE FROM songs WHERE id = 'pisniua_1102921';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1102921','У нас сьогодні свято','Музика: Анатолій Матвійчук Слова: Анатолій Матвійчук. Виконує: Анатолій Матвійчук','uk','ukraine_1991',NULL,NULL,'http://www.matviychuk.muzanya.com',NULL,'Сьогодні на душі так світло,
Сьогодні на душі так ясно,
Зоря ранкова вже розквітла,
Зоря вечірня ще не згасла.
Забулися старі образи,
Зібралися найкращі друзі,
І знову ми сьогодні разом
У доброму й тісному крузі.

Приспів:
У нас сьогодні свято
Таке веселе свято,
Не будем сумувати,
А будем святкувати!
У нас сьогодні свято
Таке веселе свято,
Ми будем жити і не тужити,
І будем святкувати.

Хай музика до ранку грає,
Хай музика летить за обрій,
Людей поганих тут немає,
Сьогодні з нами тільки добрі.
А добрі люди всі веселі,
А добрі люди всі хороші,
Дай, Боже, щоб у нас в оселі
Водилися любов і гроші!

Приспів. (2)','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1102921'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1102921','У нас сьогодні свято','Сьогодні на душі так світло,
Сьогодні на душі так ясно,
Зоря ранкова вже розквітла,
Зоря вечірня ще не згасла.
Забулися старі образи,
Зібралися найкращі друзі,
І знову ми сьогодні разом
У доброму й тісному крузі.

Приспів:
У нас сьогодні свято
Таке веселе свято,
Не будем сумувати,
А будем святкувати!
У нас сьогодні свято
Таке веселе свято,
Ми будем жити і не тужити,
І будем святкувати.

Хай музика до ранку грає,
Хай музика летить за обрій,
Людей поганих тут немає,
Сьогодні з нами тільки добрі.
А добрі люди всі веселі,
А добрі люди всі хороші,
Дай, Боже, щоб у нас в оселі
Водилися любов і гроші!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_1117303';
DELETE FROM song_versions WHERE song_id = 'pisniua_1117303';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1117303';
DELETE FROM songs WHERE id = 'pisniua_1117303';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1117303','А в лебедя ножки біленькі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісні Шевченкового краю. Записи, впорядкування і примітки Олекси Ошуркевича. Луцьк: Волинська обласна друкарня, 2006. - 484 с.',NULL,'А в лебедя ножки біленькі,
А в Івана ложки новенькі.
Маріїна челядь
Сідає вечерять.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1117303'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1117303','А в лебедя ножки біленькі','А в лебедя ножки біленькі,
А в Івана ложки новенькі.
Маріїна челядь
Сідає вечерять.');
DELETE FROM song_links WHERE song_id = 'pisniua_1118202';
DELETE FROM song_versions WHERE song_id = 'pisniua_1118202';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1118202';
DELETE FROM songs WHERE id = 'pisniua_1118202';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1118202','Тужно грала чудовая скрипка','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'Співаник УПА. Борці за волю України. упор. О.Бобикевич, Ю.Лаврівський, О.Плешкевич та ін. Львів: Меморіал. 1992. - 190 с.',NULL,'Тужно грала чудовая скрипка,
Сумно звуки в далечінь неслись,
Бідне серце у грудях боліло,
Тільки сльози котилися вниз.

Розлучалась закохана пара,
Розлучалась не перша вона,
Будь здорова, дівчино кохана,
У повстанці відходжу вже я.

І гукнула далеко гармата,
А на стійці із крісом стрілець,
Згадав вечір чудовий, дівчину,
Й тії сльози, що лилися вниз.','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1118202'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1118202','Тужно грала чудовая скрипка','Тужно грала чудовая скрипка,
Сумно звуки в далечінь неслись,
Бідне серце у грудях боліло,
Тільки сльози котилися вниз.

Розлучалась закохана пара,
Розлучалась не перша вона,
Будь здорова, дівчино кохана,
У повстанці відходжу вже я.

І гукнула далеко гармата,
А на стійці із крісом стрілець,
Згадав вечір чудовий, дівчину,
Й тії сльози, що лилися вниз.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1118202_l1','pisniua_1118202','YouTube','https://www.youtube.com/watch?v=X__Esds1L8g','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1120323';
DELETE FROM song_versions WHERE song_id = 'pisniua_1120323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1120323';
DELETE FROM songs WHERE id = 'pisniua_1120323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1120323','Іноді','Музика: Графіт Слова: Андрій Хливнюк','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Іноді мені здається, навіть не знаю чому
Але твоє серце б''ється в ритмі аналогічному
Ми в циклі вічному і тисячі років до нас
Вже хтось сказав тобі все що я сьогодні зараз
Яке там сон, день в тон словах і дві букви ні
Реп мій як цей світ не новий, здається іноді мені
Ти поряд, я відчуваю на собі твій погляд
Хотів би та пізно, не можу змінити світогляд

Приспів (2):
Іноді я відчуваю тебе
Іноді я забуваю тебе
Іноді я відлітаю від тебе
В небо...

Іноді за стінами сиджу немов за гратами
Стоп! Я в такі серйозні забавки не гратиму
Я відлітаю і сам себе й тебе питаю
Ніхто ж не знав що ти такая, чуєш Кая?
Таке знайоме відчуття, водночас зовсім нове
Щоразу, щоночі, щодня, знову і знову
Відповідаєш все таке одне, напевне знаєш
Коли ти забуваєш мене теж відлітаєш

Приспів.

Іноді мені здається і серце б''ється
Бас, барабан, вокал, розумієш про що йдеться?
Звук, світло, гукають люди на повні груди
Площа, трамвайні колії, якісь споруди
Я хочу бачити хто там і що там
Я намагаюсь, підходжу ближче
Ну ось і все...
Я прокидаюсь

Іноді я...                  |
Іноді я...                  |
І тоді я відлітаю від тебе  |
В небо...                   | (2)

Приспів.','[''pisni.org.ua'', ''cat:zeleni-svyata'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1120323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1120323','Іноді','Іноді мені здається, навіть не знаю чому
Але твоє серце б''ється в ритмі аналогічному
Ми в циклі вічному і тисячі років до нас
Вже хтось сказав тобі все що я сьогодні зараз
Яке там сон, день в тон словах і дві букви ні
Реп мій як цей світ не новий, здається іноді мені
Ти поряд, я відчуваю на собі твій погляд
Хотів би та пізно, не можу змінити світогляд

Приспів (2):
Іноді я відчуваю тебе
Іноді я забуваю тебе
Іноді я відлітаю від тебе
В небо...

Іноді за стінами сиджу немов за гратами
Стоп! Я в такі серйозні забавки не гратиму
Я відлітаю і сам себе й тебе питаю
Ніхто ж не знав що ти такая, чуєш Кая?
Таке знайоме відчуття, водночас зовсім нове
Щоразу, щоночі, щодня, знову і знову
Відповідаєш все таке одне, напевне знаєш
Коли ти забуваєш мене теж відлітаєш

Приспів.

Іноді мені здається і серце б''ється
Бас, барабан, вокал, розумієш про що йдеться?
Звук, світло, гукають люди на повні груди
Площа, трамвайні колії, якісь споруди
Я хочу бачити хто там і що там
Я намагаюсь, підходжу ближче
Ну ось і все...
Я прокидаюсь

Іноді я...                  |
Іноді я...                  |
І тоді я відлітаю від тебе  |
В небо...                   | (2)

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_1120921';
DELETE FROM song_versions WHERE song_id = 'pisniua_1120921';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1120921';
DELETE FROM songs WHERE id = 'pisniua_1120921';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1120921','Бувай ми здорова','Виконує: Львівське Ретро','uk','ukraine_before_1917',NULL,NULL,'http://nashe.com.ua/song.htm?id=2443&art=214',NULL,'Куплю си ґазету, сяду до трамваю
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
DELETE FROM song_links WHERE song_id = 'pisniua_1120622';
DELETE FROM song_versions WHERE song_id = 'pisniua_1120622';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1120622';
DELETE FROM songs WHERE id = 'pisniua_1120622';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1120622','Стежкою до Крутів','Музика: Володимир Мельников Слова: Юрій Лазірко. Виконує: Володимир Мельников','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'вірші Юрія Лазірка "Поле родить так полинно", надруковані на сайті "Поетичні майстерні"','Цю пісню на слова Юрія Лазірка та музику заслуженого діяча мистецтв України Володимира Мельникова виконує автор музики. Це перша пісня Юрія Лазірка на сайті. Привітаємо автора з Нью-Йорку.','Поле родить так полинно,
Нами поле вкрите.
Полягли ми - полягали
У зелених свитах.

Нашу кров дощам не змити -
Маків море грає,
Ген, хвилюється, стікає...
Аж серденько крає.

Хай те серце з Берестечка
Стежкою до Крутів
Нас усіх збере у пісні -
Триста незабутих.

Триста душ вагою волі,
Наче теплий вітер,
Коливають маків поле  -
Пурпурові квіти.

Білий Світе! Крові Цвіте!
Розвеснись, як можеш!
Відросися... Відмовчися
Про людське та боже...

Час, напевно, добрий лікар...
Та гірчить полями.
Стережемо подих вітру
Ми із полинами','[''pisni.org.ua'', ''cat:kruty'', "Пісні пам''яті Героїв бою під Крутами"]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1120622'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1120622','Стежкою до Крутів','Поле родить так полинно,
Нами поле вкрите.
Полягли ми - полягали
У зелених свитах.

Нашу кров дощам не змити -
Маків море грає,
Ген, хвилюється, стікає...
Аж серденько крає.

Хай те серце з Берестечка
Стежкою до Крутів
Нас усіх збере у пісні -
Триста незабутих.

Триста душ вагою волі,
Наче теплий вітер,
Коливають маків поле  -
Пурпурові квіти.

Білий Світе! Крові Цвіте!
Розвеснись, як можеш!
Відросися... Відмовчися
Про людське та боже...

Час, напевно, добрий лікар...
Та гірчить полями.
Стережемо подих вітру
Ми із полинами');
DELETE FROM song_links WHERE song_id = 'pisniua_11202';
DELETE FROM song_versions WHERE song_id = 'pisniua_11202';
DELETE FROM songs_fts WHERE song_id = 'pisniua_11202';
DELETE FROM songs WHERE id = 'pisniua_11202';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_11202','Миколай бородатий','Музика: Тарас Чубай. Виконує: Тарас Чубай','uk','ukraine_1991',NULL,NULL,'Пісневир. Молодіжний співаник. Львів 2001',NULL,'D
Дивитись на зиму через шкло
A
Кльово так самому в хаті.
D
Скоро Різдво
І Миколай бородатий.

D
Скоро українці будуть співати,
A
І не просто так, без причини, —
D
Будуть колядувати
І Миколай бородатий.
D
Ла-ла-ла, ла-ла-ла-ла!
A
Ла-ла-ла, ла-ла-ла-ла!
D
Будуть колядувати
І Миколай бородатий.

Дивлюсь у вікно, сніг лапатий,
Хтось там йде до нашої хати, —
То не якийсь Дід Мороз,
То Миколай бородатий.

Мені принесе він нову гітару,
До вас прийде також незабаром
Святий Миколай.
Миколай бородатий.    Фонограма-мінус (mp3)','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_11202'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_11202','Миколай бородатий','D
Дивитись на зиму через шкло
A
Кльово так самому в хаті.
D
Скоро Різдво
І Миколай бородатий.

D
Скоро українці будуть співати,
A
І не просто так, без причини, —
D
Будуть колядувати
І Миколай бородатий.
D
Ла-ла-ла, ла-ла-ла-ла!
A
Ла-ла-ла, ла-ла-ла-ла!
D
Будуть колядувати
І Миколай бородатий.

Дивлюсь у вікно, сніг лапатий,
Хтось там йде до нашої хати, —
То не якийсь Дід Мороз,
То Миколай бородатий.

Мені принесе він нову гітару,
До вас прийде також незабаром
Святий Миколай.
Миколай бородатий.    Фонограма-мінус (mp3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_11202_l1','pisniua_11202','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_112909';
DELETE FROM song_versions WHERE song_id = 'pisniua_112909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_112909';
DELETE FROM songs WHERE id = 'pisniua_112909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_112909','У лісі темному під білов березов',NULL,'uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'Олесь Боднар',NULL,'У лісі темному під білов березов,
Там соловей пісню співав,
Лежав там убитий стрілець молоденький,
А тіло ніхто не сховав.

Лежав він убитий три дні і три ночі
Аж тіло зчорніло його.
Зрубали калину, сплели домовину,
А ввечір ховали його.

Як його ховали, там сурми не грали,
А соловей пісню співав,
Як зорі сіяли його карі очі,
А він ся з родинов прощав.

Прощай, старий батьку, і ти, стара мати,
І ти, найдорожча, прощай,
Бо більше не вернусь до рідної хати,
Бо більш не вернусь в рідний край.

А моя хатина у темному гаю,
Навколо шовкова трава.
Напевно родина удома не знає,
Що мене на світі нема.

Лише тільки знає один соловейко,
Що солодко пісню співав.
Кров моя стікала по сірій шинелі,
А крук мої очі клював.','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_112909'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_112909','У лісі темному під білов березов','У лісі темному під білов березов,
Там соловей пісню співав,
Лежав там убитий стрілець молоденький,
А тіло ніхто не сховав.

Лежав він убитий три дні і три ночі
Аж тіло зчорніло його.
Зрубали калину, сплели домовину,
А ввечір ховали його.

Як його ховали, там сурми не грали,
А соловей пісню співав,
Як зорі сіяли його карі очі,
А він ся з родинов прощав.

Прощай, старий батьку, і ти, стара мати,
І ти, найдорожча, прощай,
Бо більше не вернусь до рідної хати,
Бо більш не вернусь в рідний край.

А моя хатина у темному гаю,
Навколо шовкова трава.
Напевно родина удома не знає,
Що мене на світі нема.

Лише тільки знає один соловейко,
Що солодко пісню співав.
Кров моя стікала по сірій шинелі,
А крук мої очі клював.');
DELETE FROM song_links WHERE song_id = 'pisniua_112303';
DELETE FROM song_versions WHERE song_id = 'pisniua_112303';
DELETE FROM songs_fts WHERE song_id = 'pisniua_112303';
DELETE FROM songs WHERE id = 'pisniua_112303';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_112303','Там, під Львівським замком','Українська народна пісня. Виконує: Тарас Чубай, Скрябін','uk','ukr_ssr_1919_1991',NULL,NULL,'CD- Тарас Чубай і Скрябін. "Наші партизани". 2000','Підбір акордів: bohdanko','Там, під Львівським замком старий дуб стояв.
Там, під Львівським замком старий дуб стояв,  |
А під тим дубочком партизан лежав.            |

Він лежить, не дише, він неначе спить.
Золоті кучері вітер шелестить.

Над ним стара мати стомлена стоїть
І до свого сина тихо говорить:

"Сину ж ти мій, сину, дитино моя,
Були б тя не вбили, якби не війна.

Було вас у батька п''ятеро синів;
Ти був наймолодший, сину наш, Андрій.

Як ти був маленький, батько воював -
Він за Україну голову поклав!"

Hе плач, стара мати - син героєм став!
Він за Україну голову поклав.

У кожному куплеті рядки співаються
у такій послідовності: 1, 1, 2, 1, 2.

Для спрощення можна замість H зіграти H7,
а F можна пропускати.

Інший варіант акордів (для нижчого голосу):
Для можна замість E зіграти E7,
а A# можна пропускати.','[''pisni.org.ua'', ''cat:narodni'', ''cat:patriotic'', ''cat:povstanski'', ''Народні пісні'', ''Патріотичні пісні'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_112303'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_112303','Там, під Львівським замком','Там, під Львівським замком старий дуб стояв.
Там, під Львівським замком старий дуб стояв,  |
А під тим дубочком партизан лежав.            |

Він лежить, не дише, він неначе спить.
Золоті кучері вітер шелестить.

Над ним стара мати стомлена стоїть
І до свого сина тихо говорить:

"Сину ж ти мій, сину, дитино моя,
Були б тя не вбили, якби не війна.

Було вас у батька п''ятеро синів;
Ти був наймолодший, сину наш, Андрій.

Як ти був маленький, батько воював -
Він за Україну голову поклав!"

Hе плач, стара мати - син героєм став!
Він за Україну голову поклав.

У кожному куплеті рядки співаються
у такій послідовності: 1, 1, 2, 1, 2.

Для спрощення можна замість H зіграти H7,
а F можна пропускати.

Інший варіант акордів (для нижчого голосу):
Для можна замість E зіграти E7,
а A# можна пропускати.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_112303_l1','pisniua_112303','YouTube','https://www.youtube.com/watch?v=jaXmGowRHfg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_112303_l2','pisniua_112303','YouTube','https://www.youtube.com/watch?v=0glFGEzzkzg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_112303_l3','pisniua_112303','YouTube','https://www.youtube.com/watch?v=xYhh4yiyo-c','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_112303_l4','pisniua_112303','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_1121529';
DELETE FROM song_versions WHERE song_id = 'pisniua_1121529';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1121529';
DELETE FROM songs WHERE id = 'pisniua_1121529';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1121529','Старовинний вальс','Музика: невідомий Слова: Микола Луків','uk','ukraine_1991',NULL,NULL,'Микола Луків "Не повертайтесь на круги своя", Київ - 1998, бібліотека до журналу "Дніпро"',NULL,'Падає листя, падає,
В золото світ убравсь.
Хто там, кого там згадує?
Давня платівка. Вальс.

Котяться хвилі. Колами.
Скільки ж століть до нас?
Десь там за видноколами
Будить відлуння вальс.

Руки, обличчя, погляди...
Час поміж нами, час.
Повівом, дивом-подивом
Вальс нас єднає, вальс.','[''pisni.org.ua'', ''cat:dances'', ''cat:waltzes'', ''Пісні до танцю'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1121529'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1121529','Старовинний вальс','Падає листя, падає,
В золото світ убравсь.
Хто там, кого там згадує?
Давня платівка. Вальс.

Котяться хвилі. Колами.
Скільки ж століть до нас?
Десь там за видноколами
Будить відлуння вальс.

Руки, обличчя, погляди...
Час поміж нами, час.
Повівом, дивом-подивом
Вальс нас єднає, вальс.');
DELETE FROM song_links WHERE song_id = 'pisniua_11220';
DELETE FROM song_versions WHERE song_id = 'pisniua_11220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_11220';
DELETE FROM songs WHERE id = 'pisniua_11220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_11220','Жарівка','Музика: Віктор Морозов Слова: Андрій Панчишин. Виконує: Віктор Морозов, Віктор Морозов, Батяр-бенд Галичина','uk','ukraine_1991',NULL,NULL,'1. Пісневир: Молодіжний співаник.— Львів, 2001. 2. Аудіо-записи "Не журись!"','Текст і акорди взято з джерела 1. Уточнено й доповнено із джерела 2.','На вуличці Вірменській
C
В самому центрі Львова
G
Світилася жарівка
C
Страшенно ґонорова.

Вона собі світила
Із вечора до ранку,
Щоби ся не бояли
Львів''яни і львів''янки.

А потім їй набридло
Все на одному місці.
Хотіла би світити
Сама на ціле місто.

Та що там ціле місто,
Для неї то дрібниці.
Світити б так від Бродів
До польської границі.

Отак поміркувала,
Та й взялася за діло.
Раз блимнула добряче
Та й тут-таки згоріла.

Повчальна випливає
Мораль з цієї пісні:
Як хочеш довго жити —
Світи на свому місці.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:lviv'', ''Бардівські пісні'', ''Пісні про Львів'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_11220'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_11220','Жарівка','На вуличці Вірменській
C
В самому центрі Львова
G
Світилася жарівка
C
Страшенно ґонорова.

Вона собі світила
Із вечора до ранку,
Щоби ся не бояли
Львів''яни і львів''янки.

А потім їй набридло
Все на одному місці.
Хотіла би світити
Сама на ціле місто.

Та що там ціле місто,
Для неї то дрібниці.
Світити б так від Бродів
До польської границі.

Отак поміркувала,
Та й взялася за діло.
Раз блимнула добряче
Та й тут-таки згоріла.

Повчальна випливає
Мораль з цієї пісні:
Як хочеш довго жити —
Світи на свому місці.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_11220_l1','pisniua_11220','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1125725';
DELETE FROM song_versions WHERE song_id = 'pisniua_1125725';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1125725';
DELETE FROM songs WHERE id = 'pisniua_1125725';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1125725','Розпилася молодиця','Музика: народ Слова: народ','uk','ukr_ssr_1919_1991',NULL,'1964','Пісні з Волині, Музична Україна, Київ-1970','Входить до розділу "Жартівливі та гумористичні пісні". Записана в с. Щурин Рожищенського р-ну від О. П. Юхимчук, 1964','Розпилася молодиця,
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
DELETE FROM song_links WHERE song_id = 'pisniua_112323';
DELETE FROM song_versions WHERE song_id = 'pisniua_112323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_112323';
DELETE FROM songs WHERE id = 'pisniua_112323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_112323','Лента за лентою','(Вже вечір вечоріє). Музика: Василь Заставний Слова: Микола Сороколіта. Виконує: Тарас Чубай, Скрябін, Плач Єремії','uk','ukr_ssr_1919_1991',NULL,NULL,'Аудіо-CD "Тарас Чубай і Скрябін. "Наші партизани" (2000)','Якось повстанцям стало відомо, що окупанти мають намір передислокувати районний центр з Нових Стрілищ у Вибранівку з метою блокування і знищення воїнів УПА. Туди прибув гарнізон 100 чоловік емгебістів. Повстанський провідник вирішив не допустити здійснення цього наміру. В боївці М. Сороколіта залишилось лише 10 чоловік і стільки налічувалось у групі самооборони. Несподівана вечірня атака була настільки вдалою, що ворог лише відстрілювався. У цьому бою вміло діяв юнак-кулеметник Смерека. Маневруючи, він заливав окупантів свинцевим вогнем. Блискуча операція зірвала назавжди намір ворога. Джерело: http://forum.milua.org/viewtopic.php?f=8&t=4241 Підбір акордів: bohdanko','Вступ:  C F G C   x2
Вже вечір вечоріє, повстанське серце б''є,
А лента набої поспішно подає.
Приспів (x2):
Ах, лента за лентою - набої подавай,
Вкраїнський повстанче, в бою не відступай!
Акорди для низького голосу:
Вступ:  G C D G   x2
Вже вечір вечоріє, повстанське серце б''є,
А лента набої поспішно подає.
Приспів (x2):
Ах, лента за лентою - набої подавай,
Вкраїнський повстанче, в бою не відступай!
Текст пісні:
Вже вечір вечоріє, повстанське серце б''є,
А лента набої поспішно подає.
Приспів (x2):
Ах, лента за лентою - набої подавай,
Вкраїнський повстанче, в бою не відступай!
А ворог атакує і преться щосил,
Юнак-кулеметник їх вправно косив.
Приспів.
Як сонце сходило, втомлений юнак,
Упав він ранений, упав він навзнак.
Приспів.
До нього санітарка поспішно іде,
В обличчя вдивляєсь, його пізнає.
Приспів.
Він в неї вдивляєсь, пече в грудях рана,
Біля кулемета дівчина молода.
Приспів.
А ворог атакує, в останній момент -
Наново заграв вже затихлий кулемет.
Приспів.','[''pisni.org.ua'', ''cat:patriotic'', ''cat:povstanski'', ''Патріотичні пісні'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_112323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_112323','Лента за лентою','Вступ:  C F G C   x2
Вже вечір вечоріє, повстанське серце б''є,
А лента набої поспішно подає.
Приспів (x2):
Ах, лента за лентою - набої подавай,
Вкраїнський повстанче, в бою не відступай!
Акорди для низького голосу:
Вступ:  G C D G   x2
Вже вечір вечоріє, повстанське серце б''є,
А лента набої поспішно подає.
Приспів (x2):
Ах, лента за лентою - набої подавай,
Вкраїнський повстанче, в бою не відступай!
Текст пісні:
Вже вечір вечоріє, повстанське серце б''є,
А лента набої поспішно подає.
Приспів (x2):
Ах, лента за лентою - набої подавай,
Вкраїнський повстанче, в бою не відступай!
А ворог атакує і преться щосил,
Юнак-кулеметник їх вправно косив.
Приспів.
Як сонце сходило, втомлений юнак,
Упав він ранений, упав він навзнак.
Приспів.
До нього санітарка поспішно іде,
В обличчя вдивляєсь, його пізнає.
Приспів.
Він в неї вдивляєсь, пече в грудях рана,
Біля кулемета дівчина молода.
Приспів.
А ворог атакує, в останній момент -
Наново заграв вже затихлий кулемет.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_112323_l1','pisniua_112323','YouTube','https://www.youtube.com/watch?v=3B_FbqWDjL8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_112323_l2','pisniua_112323','YouTube','https://www.youtube.com/watch?v=olw9f13Qjwg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_112323_l3','pisniua_112323','YouTube','https://www.youtube.com/watch?v=pFQxkKIX8Fk','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_112323_l4','pisniua_112323','YouTube','https://www.youtube.com/watch?v=07x-XDXd6I0','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_112323_l5','pisniua_112323','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_112323_l6','pisniua_112323','http://forum.milua.org/viewtopic.php?f=8&t=4241','http://forum.milua.org/viewtopic.php?f=8&t=4241','external',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_1130808';
DELETE FROM song_versions WHERE song_id = 'pisniua_1130808';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1130808';
DELETE FROM songs WHERE id = 'pisniua_1130808';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1130808','Рожеві діви','Музика: АнтитілА Слова: АнтитілА. Виконує: АнтитілА','uk','ukraine_1991',NULL,NULL,'Підбір друга (за великим проханням)',NULL,'G#mіn
Сімдесята ніч тої осені
D#
Вбила всі мої серцеві принципи,
E
Підняла з землі ноги втомлені
C#mіn
І до неї, до неї магнітами.
G#mіn
А її любов - то вона й вона,
D#
Дві венери з рожевими мітками
E
І зав''язані, як одна й одна
C#mіn
Тіла теплого нитками, нитками.
Сімдесятий дощ тої вулиці
Змив усі мої душевні правила.
Я украв її, все відбулося
І даремно капканів наставила.
Я покажу їй, де цвіте любов,
Як віками творили нове життя,
Але правда ця накриває знов:
Не моя, не моя, вона не моя.
Плюс не віре, мінус,
Протилежність не закон,
Де рожеві діви лижуть цукор заборон
Заливає стіни диким медом і вином,
Де рожеві діви лижуть цукор.
G#mіn
Сімдесятий лист тої повісті
D#
Білим, білим лишився, незайманим,
E
Тільки краплями моєї совісті і
C#mіn
снігами іллюзій завалений.
Плюс не віре в мінус,
Протилежність не закон,
Де рожеві діви лижуть цукор заборон.
Заливає стіни диким медом і вином,
Де рожеві діви лижуть цукор.
Заливає стіни диким медом і вином,
Де рожеві діви лижуть цукор.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1130808'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1130808','Рожеві діви','G#mіn
Сімдесята ніч тої осені
D#
Вбила всі мої серцеві принципи,
E
Підняла з землі ноги втомлені
C#mіn
І до неї, до неї магнітами.
G#mіn
А її любов - то вона й вона,
D#
Дві венери з рожевими мітками
E
І зав''язані, як одна й одна
C#mіn
Тіла теплого нитками, нитками.
Сімдесятий дощ тої вулиці
Змив усі мої душевні правила.
Я украв її, все відбулося
І даремно капканів наставила.
Я покажу їй, де цвіте любов,
Як віками творили нове життя,
Але правда ця накриває знов:
Не моя, не моя, вона не моя.
Плюс не віре, мінус,
Протилежність не закон,
Де рожеві діви лижуть цукор заборон
Заливає стіни диким медом і вином,
Де рожеві діви лижуть цукор.
G#mіn
Сімдесятий лист тої повісті
D#
Білим, білим лишився, незайманим,
E
Тільки краплями моєї совісті і
C#mіn
снігами іллюзій завалений.
Плюс не віре в мінус,
Протилежність не закон,
Де рожеві діви лижуть цукор заборон.
Заливає стіни диким медом і вином,
Де рожеві діви лижуть цукор.
Заливає стіни диким медом і вином,
Де рожеві діви лижуть цукор.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1130808_l1','pisniua_1130808','YouTube','https://www.youtube.com/watch?v=23mJwJVLLok','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1130808_l2','pisniua_1130808','YouTube','https://www.youtube.com/watch?v=U4af1pvjqDw','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_1137707';
DELETE FROM song_versions WHERE song_id = 'pisniua_1137707';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1137707';
DELETE FROM songs WHERE id = 'pisniua_1137707';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1137707','Я люблю тебе, як…','Музика: Тризубий Стас Слова: Тризубий Стас. Виконує: Тризубий Стас','uk','ukraine_1991',NULL,NULL,'http://uamusiclib.com',NULL,'Кожна жінка звичайно б хотіла,
Щоби їй присвятили вірші,
Щоб не тільки ми прагнули тіла,
А торкалися також душі.

І на зустріч ми жінці ідемо,
Не помітиш, як ти вже й поет.
І для кожної є в нас поема,
І для кожної є в нас сонет.
І як хочеш від жінки кохання,
Римуй і шукай порівняння.

Я люблю тебе як
Синє небо літак,
Або, як синє море, моряк.
Чи, як вітер вітряк,
Чи, як гроші бідняк,
Чи, як ти перламутровий лак.

Бо ти в мене така,
Як пір''їнка легка
І пахуча, як гроно бузка.
Як травинка тонка,
Як тростинка гнучка,
І така ти у мене й сяка.

Бо кохати бажаємо всі ми,
Бо їй Богу, Їх варто кохать,
І щоранку шукаємо рими,
Щоби вночі їх з чимсь порівнять.

І у розпачі морщимо лоба,
Бо не в кожного Пушкіна хист.
Та для жінки важливіша спроба,
А вже потім - чи є у ній зміст.
І нехай вона була невдала,
Головне, щоб їй було не мало.

Я люблю тебе як
Українець гопак,
І як поле зелене буряк.
Як горілку козак,
Чи, як м''ясо хижак,
Чи, як вішалку любить піджак.

Бо ти в мене така,
Як гантелька тяжка,
Ти, як булочка з маслом м''яка.
Ти, як повна ріка,
Як трамплін для стрибка,
І така ти у мене й сяка.

Двадцять років як ми одружились,
Вже й не віриш, що був молодим.
Тільки в спогадах десь залишились
Порівняння і схильність до рим.

Все вирує і крутиться колом,
Та лиш спокою хоче душа.
Замість тіла - рибалка з футболом,
А все решта давно вже - лапша.
Та кохання років не боїться,
Я - твій козлик, а ти - моя киця.

Я люблю тебе як
Молотка любить цвях,
Як вареника любить друшляк.
Як каструльку баняк,
Як роботу лошак
Як трубу автогенний різак.

Бо ти в мене така,
Як центнер молока,
Ти надійна і вогнетривка.
А розумна яка,
Ніби впала з дубка,
І така ти у мене й сяка.

Кожна жінка звичайно б хотіла,
Щоби їй присвятили вірша,
Щоб не тільки ми прагнули тіла,
А кохала і наша душа.

Це питання мені небайдуже,
А тому, поки жінка жива,
Молода, або навіть не дуже,
Подарую їй ніжні слова.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1137707'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1137707','Я люблю тебе, як…','Кожна жінка звичайно б хотіла,
Щоби їй присвятили вірші,
Щоб не тільки ми прагнули тіла,
А торкалися також душі.

І на зустріч ми жінці ідемо,
Не помітиш, як ти вже й поет.
І для кожної є в нас поема,
І для кожної є в нас сонет.
І як хочеш від жінки кохання,
Римуй і шукай порівняння.

Я люблю тебе як
Синє небо літак,
Або, як синє море, моряк.
Чи, як вітер вітряк,
Чи, як гроші бідняк,
Чи, як ти перламутровий лак.

Бо ти в мене така,
Як пір''їнка легка
І пахуча, як гроно бузка.
Як травинка тонка,
Як тростинка гнучка,
І така ти у мене й сяка.

Бо кохати бажаємо всі ми,
Бо їй Богу, Їх варто кохать,
І щоранку шукаємо рими,
Щоби вночі їх з чимсь порівнять.

І у розпачі морщимо лоба,
Бо не в кожного Пушкіна хист.
Та для жінки важливіша спроба,
А вже потім - чи є у ній зміст.
І нехай вона була невдала,
Головне, щоб їй було не мало.

Я люблю тебе як
Українець гопак,
І як поле зелене буряк.
Як горілку козак,
Чи, як м''ясо хижак,
Чи, як вішалку любить піджак.

Бо ти в мене така,
Як гантелька тяжка,
Ти, як булочка з маслом м''яка.
Ти, як повна ріка,
Як трамплін для стрибка,
І така ти у мене й сяка.

Двадцять років як ми одружились,
Вже й не віриш, що був молодим.
Тільки в спогадах десь залишились
Порівняння і схильність до рим.

Все вирує і крутиться колом,
Та лиш спокою хоче душа.
Замість тіла - рибалка з футболом,
А все решта давно вже - лапша.
Та кохання років не боїться,
Я - твій козлик, а ти - моя киця.

Я люблю тебе як
Молотка любить цвях,
Як вареника любить друшляк.
Як каструльку баняк,
Як роботу лошак
Як трубу автогенний різак.

Бо ти в мене така,
Як центнер молока,
Ти надійна і вогнетривка.
А розумна яка,
Ніби впала з дубка,
І така ти у мене й сяка.

Кожна жінка звичайно б хотіла,
Щоби їй присвятили вірша,
Щоб не тільки ми прагнули тіла,
А кохала і наша душа.

Це питання мені небайдуже,
А тому, поки жінка жива,
Молода, або навіть не дуже,
Подарую їй ніжні слова.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1137707_l1','pisniua_1137707','YouTube','https://www.youtube.com/watch?v=kHmRsQiv754','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1131725';
DELETE FROM song_versions WHERE song_id = 'pisniua_1131725';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1131725';
DELETE FROM songs WHERE id = 'pisniua_1131725';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1131725','Серце ластівки','Музика: Ліля Кобільник Слова: В. Шимборська. Виконує: Ліля Кобільник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Кохалися в ліщині від сонця ми з роси,
Листя жовтого й трави набрали в волосся.  | (2)
Приспів:
Ластівки серце, змилуйся над ними,
Ластівки серце, змилуйся над ними.
Схилились над озером, купалися в листі,
А риби підпливали до них золоті.         | (2)
Приспів.
Дерев тіні диміли на здрібнілі хвилі,
Ластівонько, зроби так, щоб забути вміли. | (2)
Ластівко, моя сестро, весело печальна,
Повінчай їх самоту, ластівонько, зжалься. | (2)
Приспів. (2)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1131725'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1131725','Серце ластівки','Кохалися в ліщині від сонця ми з роси,
Листя жовтого й трави набрали в волосся.  | (2)
Приспів:
Ластівки серце, змилуйся над ними,
Ластівки серце, змилуйся над ними.
Схилились над озером, купалися в листі,
А риби підпливали до них золоті.         | (2)
Приспів.
Дерев тіні диміли на здрібнілі хвилі,
Ластівонько, зроби так, щоб забути вміли. | (2)
Ластівко, моя сестро, весело печальна,
Повінчай їх самоту, ластівонько, зжалься. | (2)
Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_1122101';
DELETE FROM song_versions WHERE song_id = 'pisniua_1122101';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1122101';
DELETE FROM songs WHERE id = 'pisniua_1122101';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1122101','Сонячний віночок','Музика: Леся Соболевська Слова: Леся Соболевська. Виконує: Наталя Миглис','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ой піду я собі плаєм
Аж на гороньку круту.
Квіточок там назбираю
І в віночок заплету
Із рум''янку й материнки,
Із зеленого барвінку,
Ще і сонця промінці
Заплету я в квіти ці.

Приспів:
Сонячний віночок, зоряний віночок,
А ще файна коломийка заплете таночок.
А ще заспіваю в сонячнім розмаї
На усі Карпати-гори красних співаночок.

Моя пісенька озветься
у долині, у гаю,
У прозорому джерельці
Забринить у кришталю.
Одягну я свій віночок
І загляну у струмочок,
І люстеречко ясне
В пісню поведе мене.

Приспів','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1122101'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1122101','Сонячний віночок','Ой піду я собі плаєм
Аж на гороньку круту.
Квіточок там назбираю
І в віночок заплету
Із рум''янку й материнки,
Із зеленого барвінку,
Ще і сонця промінці
Заплету я в квіти ці.

Приспів:
Сонячний віночок, зоряний віночок,
А ще файна коломийка заплете таночок.
А ще заспіваю в сонячнім розмаї
На усі Карпати-гори красних співаночок.

Моя пісенька озветься
у долині, у гаю,
У прозорому джерельці
Забринить у кришталю.
Одягну я свій віночок
І загляну у струмочок,
І люстеречко ясне
В пісню поведе мене.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_1132000';
DELETE FROM song_versions WHERE song_id = 'pisniua_1132000';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1132000';
DELETE FROM songs WHERE id = 'pisniua_1132000';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1132000','Закований лицар','Музика: Ігор Жук Слова: Ігор Жук. Виконує: Ігор Жук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мій лицарю, закований в броню,
Мій мечнику, насуплено суворий,
Мій Гамлете, у темні Ельсінори,
Своїм буттям до тебе я дзвеню.
То сон, то все омана, то — мана.
Зигзицею волаю над тобою,
Прокинься хоч разочок не для бою.
Та що ж тобі: що ранок, то війна.

Ніхто ще світ не виправив мечем,
Ніхто його ще не очистив кров''ю,
Давай його врятуємо любов''ю,
Ти зроду не втікав ще, то втечемо,
Втечемо світ за очі, бозна де,
Аби лиш там була свята земля ще,
А те, що кинеш ти напризволяще,
Воно є вічне, то ж не пропаде.

Мій Фаусте. спини шалений час,
Не будь так недоторканно похмурий,
Ти мій Амур, Феміда і Меркурій,
Нехай там ділять світ собі без нас.
Мій лицарю, закований в броню,
Свою броню найважче подолати,
Та все дарма, мов у порожні лати
Я птахою замерзлою дзвоню...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1132000'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1132000','Закований лицар','Мій лицарю, закований в броню,
Мій мечнику, насуплено суворий,
Мій Гамлете, у темні Ельсінори,
Своїм буттям до тебе я дзвеню.
То сон, то все омана, то — мана.
Зигзицею волаю над тобою,
Прокинься хоч разочок не для бою.
Та що ж тобі: що ранок, то війна.

Ніхто ще світ не виправив мечем,
Ніхто його ще не очистив кров''ю,
Давай його врятуємо любов''ю,
Ти зроду не втікав ще, то втечемо,
Втечемо світ за очі, бозна де,
Аби лиш там була свята земля ще,
А те, що кинеш ти напризволяще,
Воно є вічне, то ж не пропаде.

Мій Фаусте. спини шалений час,
Не будь так недоторканно похмурий,
Ти мій Амур, Феміда і Меркурій,
Нехай там ділять світ собі без нас.
Мій лицарю, закований в броню,
Свою броню найважче подолати,
Та все дарма, мов у порожні лати
Я птахою замерзлою дзвоню...');
DELETE FROM song_links WHERE song_id = 'pisniua_112921';
DELETE FROM song_versions WHERE song_id = 'pisniua_112921';
DELETE FROM songs_fts WHERE song_id = 'pisniua_112921';
DELETE FROM songs WHERE id = 'pisniua_112921';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_112921','Синя чічка','Музика: Михайло Гайворонський Слова: В. Хмара, В. Бобинський','uk','ukr_ssr_1919_1991',NULL,'1990','1. "Молоде життя", Ауґсбурґ, 1949. 2. Повік не зів''яне. Стрілецькі пісні Михайла Гайворонського. Упор. В. Подуфалий. Тернопіль, 1990.',NULL,'Ой, упали сніги білі на Поділлі,
Ой, пішов та у походи хлопець смілий.
Як ішов, лишив дівчині синю чічку,
Та й пішов, пропав донині - камінь в річку.

Ой, зацвіли сади білі на Поділлі,
Повертають із походу хлопці смілий.
Виглядає дівчинонька день і нічку -
Ой, немає... пропав хлопець... камінь в річку...','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_112921'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_112921','Синя чічка','Ой, упали сніги білі на Поділлі,
Ой, пішов та у походи хлопець смілий.
Як ішов, лишив дівчині синю чічку,
Та й пішов, пропав донині - камінь в річку.

Ой, зацвіли сади білі на Поділлі,
Повертають із походу хлопці смілий.
Виглядає дівчинонька день і нічку -
Ой, немає... пропав хлопець... камінь в річку...');
DELETE FROM song_links WHERE song_id = 'pisniua_1138606';
DELETE FROM song_versions WHERE song_id = 'pisniua_1138606';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1138606';
DELETE FROM songs WHERE id = 'pisniua_1138606';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1138606','Приїхала пошта','Українська народна пісня. Виконує: Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Приїхала пошта - привезли письмо...
Ой, чи чула миленька - вбито милого,
Ой, чи чула миленька - вбито милого.

Ой, біжить же миленька, біжить і кричить
У германську землю, де милий лежить,
У германську землю, де милий лежить.

Ой,уставай миленький, ставай, не лежи!
Осідлай же коня - додому біжи!
Осідлай же коня - додому біжи!

Плачуть малі діти, плаче стара мати:
Ой, як же ж нам, миленький, тебе дожидати!
Ой, як же ж нам, миленький, тебе дожидати!..','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1138606'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1138606','Приїхала пошта','Приїхала пошта - привезли письмо...
Ой, чи чула миленька - вбито милого,
Ой, чи чула миленька - вбито милого.

Ой, біжить же миленька, біжить і кричить
У германську землю, де милий лежить,
У германську землю, де милий лежить.

Ой,уставай миленький, ставай, не лежи!
Осідлай же коня - додому біжи!
Осідлай же коня - додому біжи!

Плачуть малі діти, плаче стара мати:
Ой, як же ж нам, миленький, тебе дожидати!
Ой, як же ж нам, миленький, тебе дожидати!..');
DELETE FROM song_links WHERE song_id = 'pisniua_1130202';
DELETE FROM song_versions WHERE song_id = 'pisniua_1130202';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1130202';
DELETE FROM songs WHERE id = 'pisniua_1130202';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1130202','Жіночі сльози','Музика: Мар''ян Гаденко Слова: Мар''ян Гаденко. Виконує: Валентина Боднар-Мацялко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Жіночі сльози щастя не приносять,
Жіночі сльози - крапельки дощу,
Вони від болю все обличчя зросять
І росами прикриють сивину.

Приспів:
Чому в житті, як в неродючім полі,
Де густо розростається бур''ян?
Нема любові без журби і горя,
А де любов, там сходить і обман.

Я біль в собі переживу з роками
І сльозами рясними не заллю.
Хай рознесеться ген поміж вітрами
Краплинки сліз від болю і жалю.

Приспів.

Нема любові без журби і горя,
А де любов, там сходить і обман...

Жіночі сльози щастя не приносять,
Жіночі сльози - крапельки дощу,
Вони від болю все обличчя зросять
І росами прикриють сивину...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1130202'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1130202','Жіночі сльози','Жіночі сльози щастя не приносять,
Жіночі сльози - крапельки дощу,
Вони від болю все обличчя зросять
І росами прикриють сивину.

Приспів:
Чому в житті, як в неродючім полі,
Де густо розростається бур''ян?
Нема любові без журби і горя,
А де любов, там сходить і обман.

Я біль в собі переживу з роками
І сльозами рясними не заллю.
Хай рознесеться ген поміж вітрами
Краплинки сліз від болю і жалю.

Приспів.

Нема любові без журби і горя,
А де любов, там сходить і обман...

Жіночі сльози щастя не приносять,
Жіночі сльози - крапельки дощу,
Вони від болю все обличчя зросять
І росами прикриють сивину...');
DELETE FROM song_links WHERE song_id = 'pisniua_1137725';
DELETE FROM song_versions WHERE song_id = 'pisniua_1137725';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1137725';
DELETE FROM songs WHERE id = 'pisniua_1137725';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1137725','Атомне кохання','Музика: Тризубий Стас Слова: Тризубий Стас. Виконує: Тризубий Стас','uk','ukraine_1991',NULL,NULL,'Підбір акордів Ігор та Ілона Сусяк. Текст виправлено.',NULL,'Програш Cm-Gm

Ти була тонка, як балерина,
Сповнена осяяної грації,
Ти була любов моя єдина,
Ніжна і бліда від радіації.

EЬ(VI)              B
Щастя випромінювали очі
EЬ(VI)                 B
Ті, що покохать мені судилося,
В темряві і, навіть, серед ночі,
EЬ(VI)    F            B
Бачив я тебе, бо ти світилася.

Пам''ятаєш місяць наш медовий,
Вітерець хитав твою голівоньку,
Сипались додолу твої брови,
Дівонько, кохано, білокрилонько.

Ми з тобою ніч оту шалену
Пили велетенськими фужерами,
Живчки мої, мілірентгени,
З твоїми з''єдналися міліберами.

Мила, народи мені дитину,
Плід енергетичної політики.
Хай колись заселять Україну
Діти наші - ядерні рахітики.

Людство далі житиме без їжі
Мріями про завтрашню аварію,
Кисень у крові замінять свіжі
Ізотопи стронцію та барію.

Стрінемо ж холодними серцями
Рік апокаліпсису двохтисячний,
Де живі разом з напівмерцями
Змінюють Земний пейзаж на Місячний.

В нім не буде радості ні горя,
Вже давно фужери нами випиті,
Лиш блукають привиди прозорі
По землі Чорнобиля та Прип''яті.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:chornobyl'', ''Бардівські пісні'', ''Чорнобильська катастрофа: пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1137725'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1137725','Атомне кохання','Програш Cm-Gm

Ти була тонка, як балерина,
Сповнена осяяної грації,
Ти була любов моя єдина,
Ніжна і бліда від радіації.

EЬ(VI)              B
Щастя випромінювали очі
EЬ(VI)                 B
Ті, що покохать мені судилося,
В темряві і, навіть, серед ночі,
EЬ(VI)    F            B
Бачив я тебе, бо ти світилася.

Пам''ятаєш місяць наш медовий,
Вітерець хитав твою голівоньку,
Сипались додолу твої брови,
Дівонько, кохано, білокрилонько.

Ми з тобою ніч оту шалену
Пили велетенськими фужерами,
Живчки мої, мілірентгени,
З твоїми з''єдналися міліберами.

Мила, народи мені дитину,
Плід енергетичної політики.
Хай колись заселять Україну
Діти наші - ядерні рахітики.

Людство далі житиме без їжі
Мріями про завтрашню аварію,
Кисень у крові замінять свіжі
Ізотопи стронцію та барію.

Стрінемо ж холодними серцями
Рік апокаліпсису двохтисячний,
Де живі разом з напівмерцями
Змінюють Земний пейзаж на Місячний.

В нім не буде радості ні горя,
Вже давно фужери нами випиті,
Лиш блукають привиди прозорі
По землі Чорнобиля та Прип''яті.');
DELETE FROM song_links WHERE song_id = 'pisniua_1140725';
DELETE FROM song_versions WHERE song_id = 'pisniua_1140725';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1140725';
DELETE FROM songs WHERE id = 'pisniua_1140725';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1140725','Колискова Ісусу','Музика: Леся Соболевська Слова: Леся Соболевська. Виконує: Леся Соболевська','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Am                 Hdim         E7
Там, де над Вертепом зіронька сіяла,
Матінка Пречиста Сина колисала.
Колисала, колисала у кленових ясельцях,
Колисаночку співала, хоч боліло їй серце.
Колисаночка тихенька заплела на небі вінчик.
Спи, Ісусику маленький, спи, мій сонячний промінчик.

Приспів:
А-а, ніченька мала,
Чим же захистити я б тебе змогла?
Доки зійде сонце на Твоїй землі,
Спи, моє серденько, люленьки-люлі.

І гаптує місяць срібні гобелени,
І шепочуть зорі: не журися, нене!
Затамуй у собі тугу і не край свого серця.
Світ Ісусик порятує і Земля усміхнеться.
Колисаночку тихеньку заспівай йому на щастя.
Спи, Ісусику маленький, моя зіронько прекрасна.

Приспів.

А як день настане, ти прийдеш до світу.
Та не перестане серденько боліти,
Бо чекає вже дорога і бринить в серці туга.
Височить гора Голгофа, де чекає наруга!..
Ну а поки ніч тихенька, колисанку заспіваю.
Спи, Ісусику маленький, спи, рожевий мій розмаю.

Приспів.','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1140725'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1140725','Колискова Ісусу','Am                 Hdim         E7
Там, де над Вертепом зіронька сіяла,
Матінка Пречиста Сина колисала.
Колисала, колисала у кленових ясельцях,
Колисаночку співала, хоч боліло їй серце.
Колисаночка тихенька заплела на небі вінчик.
Спи, Ісусику маленький, спи, мій сонячний промінчик.

Приспів:
А-а, ніченька мала,
Чим же захистити я б тебе змогла?
Доки зійде сонце на Твоїй землі,
Спи, моє серденько, люленьки-люлі.

І гаптує місяць срібні гобелени,
І шепочуть зорі: не журися, нене!
Затамуй у собі тугу і не край свого серця.
Світ Ісусик порятує і Земля усміхнеться.
Колисаночку тихеньку заспівай йому на щастя.
Спи, Ісусику маленький, моя зіронько прекрасна.

Приспів.

А як день настане, ти прийдеш до світу.
Та не перестане серденько боліти,
Бо чекає вже дорога і бринить в серці туга.
Височить гора Голгофа, де чекає наруга!..
Ну а поки ніч тихенька, колисанку заспіваю.
Спи, Ісусику маленький, спи, рожевий мій розмаю.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_1142808';
DELETE FROM song_versions WHERE song_id = 'pisniua_1142808';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1142808';
DELETE FROM songs WHERE id = 'pisniua_1142808';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1142808','Перехрестила на дорогу','Музика: Павло Дворський Слова: Віктор Герасименко. Виконує: Павло Дворський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Перехрестила на дорогу,
Стояла довго на вітру,
Звернулась подумки до Бога:
Спаси кровиночку мою...
А я того не знав, не бачив,
Сказав матусі: Прощавай!
Бо гнав мене той дух юначий,
Який у серці нуртував.

На тих далеких перегонах,
Де гуркотіли поїзди,
Я випробував не долю,
А зовсім, зовсім навпаки.
Життя ламало і крутило
Та душу я зберіг свою,
Бо мама Господа молила:
Спаси кровиночку мою...
Бо мама Господа молила:
Спаси кровиночку мою...

За дальнім полем шлях широкий,
Яким синів я поведу
На ту відому всім дорогу
І слово мамине знайду.
Сини, як птахи, в світ полинуть
Шукати доленьку свою.
Спаси, спаси моїх кровинок... -
Я тихо Господа молю...
Спаси, спаси моїх кровинок... -
Я тихо Господа молю.

Перехрестила на дорогу,
Стояла довго на вітру,
Звернулась подумки до Бога:
Спаси кровиночку мою...','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1142808'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1142808','Перехрестила на дорогу','Перехрестила на дорогу,
Стояла довго на вітру,
Звернулась подумки до Бога:
Спаси кровиночку мою...
А я того не знав, не бачив,
Сказав матусі: Прощавай!
Бо гнав мене той дух юначий,
Який у серці нуртував.

На тих далеких перегонах,
Де гуркотіли поїзди,
Я випробував не долю,
А зовсім, зовсім навпаки.
Життя ламало і крутило
Та душу я зберіг свою,
Бо мама Господа молила:
Спаси кровиночку мою...
Бо мама Господа молила:
Спаси кровиночку мою...

За дальнім полем шлях широкий,
Яким синів я поведу
На ту відому всім дорогу
І слово мамине знайду.
Сини, як птахи, в світ полинуть
Шукати доленьку свою.
Спаси, спаси моїх кровинок... -
Я тихо Господа молю...
Спаси, спаси моїх кровинок... -
Я тихо Господа молю.

Перехрестила на дорогу,
Стояла довго на вітру,
Звернулась подумки до Бога:
Спаси кровиночку мою...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1142808_l1','pisniua_1142808','YouTube','https://www.youtube.com/watch?v=_kWg3NXzkho','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_113202';
DELETE FROM song_versions WHERE song_id = 'pisniua_113202';
DELETE FROM songs_fts WHERE song_id = 'pisniua_113202';
DELETE FROM songs WHERE id = 'pisniua_113202';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_113202','Нема тії сили','Музика: В. Витвицький Слова: Іван Багряний','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'"Молоде життя", Ауґсбурґ, 1949',NULL,'Нема тії сили, щоб весну спинила
Й квітам звеліла не рости!
Хоч матінка мила з журби посивіла,
Так нам присудила цвісти.

Вперед, соколи, до сонця й волі!
Як маки в полі, ми під бурею цвітем!
Героїв діти, ми будем жити,
Землею володіти залізом і вогнем.

Нема того ката, щоб вирив Карпати
Й міг поковтати степи!
Хоч рідная мати в огні розіп''ята,
Так серце завзяте кипить!

Вперед, соколи, до сонця й волі!
Як маки в полі, ми під бурею цвітем!
Героїв діти, ми будем жити,
Землею володіти залізом і вогнем.

Життя знов ітиме, отчизна цвістиме
Й сонце пливтиме золоте!
І матінка мила, що так нас любила,
Всміхнеться нам мило за те!

Вперед, соколи, до сонця й волі!
Як маки в полі, ми під бурею цвітем!
Героїв діти, ми будем жити,
Землею володіти залізом і вогнем.','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_113202'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_113202','Нема тії сили','Нема тії сили, щоб весну спинила
Й квітам звеліла не рости!
Хоч матінка мила з журби посивіла,
Так нам присудила цвісти.

Вперед, соколи, до сонця й волі!
Як маки в полі, ми під бурею цвітем!
Героїв діти, ми будем жити,
Землею володіти залізом і вогнем.

Нема того ката, щоб вирив Карпати
Й міг поковтати степи!
Хоч рідная мати в огні розіп''ята,
Так серце завзяте кипить!

Вперед, соколи, до сонця й волі!
Як маки в полі, ми під бурею цвітем!
Героїв діти, ми будем жити,
Землею володіти залізом і вогнем.

Життя знов ітиме, отчизна цвістиме
Й сонце пливтиме золоте!
І матінка мила, що так нас любила,
Всміхнеться нам мило за те!

Вперед, соколи, до сонця й волі!
Як маки в полі, ми під бурею цвітем!
Героїв діти, ми будем жити,
Землею володіти залізом і вогнем.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_113202_l1','pisniua_113202','YouTube','https://www.youtube.com/watch?v=0hYOosbeaR0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_114426';
DELETE FROM song_versions WHERE song_id = 'pisniua_114426';
DELETE FROM songs_fts WHERE song_id = 'pisniua_114426';
DELETE FROM songs WHERE id = 'pisniua_114426';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_114426','Ти, пластуне',NULL,'uk','ukraine_1991',NULL,NULL,'Легіон 2001. Книжечка таборовика.- 2001',NULL,'Ти, пластуне, живи сам собою,
В кожний мент будь готовий до бою!
Твій рідний край, в неволі у кайданах,
Сочить кров в незагоєних ранах.

Приспів:
Підем в бій, всі як стій,
За красу, за нарід свій!
Гей же ідем, ідем, ідем, гей!
Стяг побіди високо несемо.

Краю рідний, радій, не журися,
Лиш у наші серця подивися:
Там повно сили, віри незламної
Захистить від навали грізної.

Приспів.','[''pisni.org.ua'', ''cat:plastovi'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_114426'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_114426','Ти, пластуне','Ти, пластуне, живи сам собою,
В кожний мент будь готовий до бою!
Твій рідний край, в неволі у кайданах,
Сочить кров в незагоєних ранах.

Приспів:
Підем в бій, всі як стій,
За красу, за нарід свій!
Гей же ідем, ідем, ідем, гей!
Стяг побіди високо несемо.

Краю рідний, радій, не журися,
Лиш у наші серця подивися:
Там повно сили, віри незламної
Захистить від навали грізної.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_1130220';
DELETE FROM song_versions WHERE song_id = 'pisniua_1130220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1130220';
DELETE FROM songs WHERE id = 'pisniua_1130220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1130220','Ми тепер не чужі','Музика: Мар''ян Гаденко Слова: Марія Матіос. Виконує: Олена Клевцова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Потемніє в очах,
Як на стежці осіннього саду,
Сколихнеться перон,
Як у повінь бурхлива ріка.
Бо прощання гірке                |
І сльозу мовчазну безпорадну     |
Не зігріє уже твоя               |
Тепла і рідна рука.              | (2)

Ми тепер не чужі,
А рідніших уже не буває,
Я не вірю в казки
І такий несподіваний сон.
У печальнім "Прощай"
Уже зустріч наступна світає,     |
І летить, і горить, мов комета,  |
Пустинний перон.                 | (2)

Ніхто не виплаче цей час
І наші сльози опівнічні,
І не розкажуть нам про нас
Дощі у серпні, сніг у січні.
Ніхто не виспіває час,
Коли чекатиму на тебе,
І не розкажуть нам про нас
Ні сонце а ні місяць в небі.

Ти мені не сказав, не сказав,
Ані чорне, не біле
Ти мене залишив ,
Як тонку виноградну лозу.
Дасть притулок мені теплий вечір |
І вітер пригорне,                |
І попросить, як брат,            |
Не змивати сльозою сльозу.       | (2)

Ніхто не виплаче цей час
І наші сльози опівнічні,
І не розкажуть нам про нас
Дощі у серпні, сніг у січні.
Ніхто не виспіває час,
Коли чекатиму на тебе,
І не розкажуть нам про нас       |
Ні сонце ані місяць в небі.      | (2)

Ані місяць в небі...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1130220'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1130220','Ми тепер не чужі','Потемніє в очах,
Як на стежці осіннього саду,
Сколихнеться перон,
Як у повінь бурхлива ріка.
Бо прощання гірке                |
І сльозу мовчазну безпорадну     |
Не зігріє уже твоя               |
Тепла і рідна рука.              | (2)

Ми тепер не чужі,
А рідніших уже не буває,
Я не вірю в казки
І такий несподіваний сон.
У печальнім "Прощай"
Уже зустріч наступна світає,     |
І летить, і горить, мов комета,  |
Пустинний перон.                 | (2)

Ніхто не виплаче цей час
І наші сльози опівнічні,
І не розкажуть нам про нас
Дощі у серпні, сніг у січні.
Ніхто не виспіває час,
Коли чекатиму на тебе,
І не розкажуть нам про нас
Ні сонце а ні місяць в небі.

Ти мені не сказав, не сказав,
Ані чорне, не біле
Ти мене залишив ,
Як тонку виноградну лозу.
Дасть притулок мені теплий вечір |
І вітер пригорне,                |
І попросить, як брат,            |
Не змивати сльозою сльозу.       | (2)

Ніхто не виплаче цей час
І наші сльози опівнічні,
І не розкажуть нам про нас
Дощі у серпні, сніг у січні.
Ніхто не виспіває час,
Коли чекатиму на тебе,
І не розкажуть нам про нас       |
Ні сонце ані місяць в небі.      | (2)

Ані місяць в небі...');
DELETE FROM song_links WHERE song_id = 'pisniua_1144303';
DELETE FROM song_versions WHERE song_id = 'pisniua_1144303';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1144303';
DELETE FROM songs WHERE id = 'pisniua_1144303';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1144303','Все шкереберть','Музика: Роман Іваненко Слова: Оксана Голуб. Виконує: Оксана Голуб','uk','ukraine_1991',NULL,NULL,'Автор','В','Скільки в світі людей, стільки ж різних ідей,
Майже кожна із них геніальна...
Хтось будує метро, проектує авто,
Хтось вирішує спірні питання.

Тільки спробуй на мить ти собі уявить,
Що то буде якщо між собою
Все змішати хоч раз і коли пройде час,
Все злетить шкереберть головою.

І кричатимуть гол, хто раніше футбол
Не дивився, не вірив в "Динамо"...
Той що моря не знав в руки візьме штурвал,
Інші скажуть: "Ой, що ж буде знами?..."

Тільки спробуй на мить це собі уявить,
І коли щось зробити не можеш
Не берись, не барись і до того звенись,
Хто у скруті тобі допоможе.

Якщо ти не водій, або нерви не ті
Не спіши купувати автівку...
Коли ж ти багатій на машині крутій
Не вкладай всю до банку готівку.

Так буває у нас, що коли пройде час
Все зникає звільняє кишені,
А хто міг щось змінить, їм воно не болить,
От і слухай нудні теревені','[''pisni.org.ua'', ''cat:all-ukraine'', ''Загальноукраїнські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1144303'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1144303','Все шкереберть','Скільки в світі людей, стільки ж різних ідей,
Майже кожна із них геніальна...
Хтось будує метро, проектує авто,
Хтось вирішує спірні питання.

Тільки спробуй на мить ти собі уявить,
Що то буде якщо між собою
Все змішати хоч раз і коли пройде час,
Все злетить шкереберть головою.

І кричатимуть гол, хто раніше футбол
Не дивився, не вірив в "Динамо"...
Той що моря не знав в руки візьме штурвал,
Інші скажуть: "Ой, що ж буде знами?..."

Тільки спробуй на мить це собі уявить,
І коли щось зробити не можеш
Не берись, не барись і до того звенись,
Хто у скруті тобі допоможе.

Якщо ти не водій, або нерви не ті
Не спіши купувати автівку...
Коли ж ти багатій на машині крутій
Не вкладай всю до банку готівку.

Так буває у нас, що коли пройде час
Все зникає звільняє кишені,
А хто міг щось змінить, їм воно не болить,
От і слухай нудні теревені');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1144303_l1','pisniua_1144303','YouTube','https://www.youtube.com/watch?v=2-u1zBUUT8c','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1126909';
DELETE FROM song_versions WHERE song_id = 'pisniua_1126909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1126909';
DELETE FROM songs WHERE id = 'pisniua_1126909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1126909','Ой виходьте, парубойки','Музика: народ Слова: народ','uk','ukr_ssr_1919_1991',NULL,'1964','Пісні з Волині, Музична Україна, Київ - 1970','Веснянка. Записана в с. Трилисиця Рожищенського р-ну від групи жінок, 1964','Ой виходьте, прубойки,
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
DELETE FROM song_links WHERE song_id = 'pisniua_1143426';
DELETE FROM song_versions WHERE song_id = 'pisniua_1143426';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1143426';
DELETE FROM songs WHERE id = 'pisniua_1143426';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1143426','Київ, Києве мій','Виконує: Павло Мрежук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Град моєї душі,
Ти засліплював зір не одному,
Бо краси й доброти
При стрічанні ніхто не мине.
І з далеких доріг
Я вертаюся знову до дому
Там, де Київ стоїть,
Рідним словом стрічає мене.

Приспів:
Київ, Києве мій,                |
Неповторний, в любові єдиний.   |
Біля плеса Дніпра               |
Ти піднявся, як сонячний спів.  |
Київ, Києве мій,                |
Ти, як пісня, як серце Вкраїни, |
Як колиска земна                |
Волелюбних і гордих синів.      | (2)

Світле сяйво Твоє,
Мовить хочеться дуже багато,
Біля вищих красот
У задумі німій постоять.
Я - кровинка Твоя,
Бо Ти всім нам, як батько і мати.
Хай Господь посила Твоїй долі
Свою благодать!

Приспів. (2)','[''pisni.org.ua'', ''cat:kyyiv'', ''Пісні про Київ'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1143426'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1143426','Київ, Києве мій','Град моєї душі,
Ти засліплював зір не одному,
Бо краси й доброти
При стрічанні ніхто не мине.
І з далеких доріг
Я вертаюся знову до дому
Там, де Київ стоїть,
Рідним словом стрічає мене.

Приспів:
Київ, Києве мій,                |
Неповторний, в любові єдиний.   |
Біля плеса Дніпра               |
Ти піднявся, як сонячний спів.  |
Київ, Києве мій,                |
Ти, як пісня, як серце Вкраїни, |
Як колиска земна                |
Волелюбних і гордих синів.      | (2)

Світле сяйво Твоє,
Мовить хочеться дуже багато,
Біля вищих красот
У задумі німій постоять.
Я - кровинка Твоя,
Бо Ти всім нам, як батько і мати.
Хай Господь посила Твоїй долі
Свою благодать!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_1144909';
DELETE FROM song_versions WHERE song_id = 'pisniua_1144909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1144909';
DELETE FROM songs WHERE id = 'pisniua_1144909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1144909','Сумно дівчино без тебе','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,'Виконували повстанці в підпіллі','Сумно дівчино без тебе
Сам не знаю куди я маю йти.
Не цікавить мене уже інша,
А такої як ти не знайти.

Розігрались обставини грізні,
Тільки видно здалека небосхил.
Ти вразила мене грізним словом —
Я пішов в партизанський загін.

У саду є розкішная груша,
Де так часто тебе я цілував.
Де ж ти, де ж ти моя дорогая,
Сизокрила голубко моя.

У землянці присипаній снігом
Часто бачу тебе я увісні.
Твоє ім''я у лісі перед боєм
Вирізав я ножем на сосні.','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1144909'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1144909','Сумно дівчино без тебе','Сумно дівчино без тебе
Сам не знаю куди я маю йти.
Не цікавить мене уже інша,
А такої як ти не знайти.

Розігрались обставини грізні,
Тільки видно здалека небосхил.
Ти вразила мене грізним словом —
Я пішов в партизанський загін.

У саду є розкішная груша,
Де так часто тебе я цілував.
Де ж ти, де ж ти моя дорогая,
Сизокрила голубко моя.

У землянці присипаній снігом
Часто бачу тебе я увісні.
Твоє ім''я у лісі перед боєм
Вирізав я ножем на сосні.');
DELETE FROM song_links WHERE song_id = 'pisniua_1141323';
DELETE FROM song_versions WHERE song_id = 'pisniua_1141323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1141323';
DELETE FROM songs WHERE id = 'pisniua_1141323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1141323','Розпросторся, душе моя','Слова: Василь Стус. Виконує: Олена Голуб','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Розпросторся, душе моя, на чотири татамі,
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
DELETE FROM song_links WHERE song_id = 'pisniua_1149725';
DELETE FROM song_versions WHERE song_id = 'pisniua_1149725';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1149725';
DELETE FROM songs WHERE id = 'pisniua_1149725';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1149725','А кота-воркота','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Київ, "Музична Україна", 1988, с.86.','Бандура, Учбовий репертуар дитячих музичних шкіл, видання друге, перероблере, Київ, "Музична Україна", 1988, с.86. Обробка Віталія Таловирі.','А кота-воркота,
А кота-воркота!

Годі тобі воркотати,
Ой, що не даєш

Моїй любій неньці
А всю ніченку спати.

Годі тобі воркотати,
Ой, що не даєш

Моїй любій неньці
А всю ніченку спати.    Фонограма-мінус (midi)','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''cat:narodni'', ''Дитячі пісні'', ''Колискові'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1149725'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1149725','А кота-воркота','А кота-воркота,
А кота-воркота!

Годі тобі воркотати,
Ой, що не даєш

Моїй любій неньці
А всю ніченку спати.

Годі тобі воркотати,
Ой, що не даєш

Моїй любій неньці
А всю ніченку спати.    Фонограма-мінус (midi)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1149725_l1','pisniua_1149725','YouTube','https://www.youtube.com/watch?v=CFQZfUgwINs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1144606';
DELETE FROM song_versions WHERE song_id = 'pisniua_1144606';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1144606';
DELETE FROM songs WHERE id = 'pisniua_1144606';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1144606','Новий рік','Музика: Фрідрік Карлссон Слова: Оксана Голуб. Виконує: Оксана Голуб','uk','ukraine_before_1917',NULL,NULL,'Продюсер',NULL,'Тисячі вогнів
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
DELETE FROM song_links WHERE song_id = 'pisniua_114404';
DELETE FROM song_versions WHERE song_id = 'pisniua_114404';
DELETE FROM songs_fts WHERE song_id = 'pisniua_114404';
DELETE FROM songs WHERE id = 'pisniua_114404';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_114404','Боже, вислухай благання',NULL,'uk','ukraine_1991',NULL,NULL,'В дорогу. Пластовий співаник.- 2-е вид.- Торонто, 1987',NULL,'Боже, вислухай благання,
Нищить недоля наш край.
В єдності сила народу,    | (2)
Боже, нам єдність подай.  |

Боже, здійми з нас кайдани,
Не дай загинуть в ярмі,
Волю пошли Україні,       | (2)
Щастя і долі дай їй.      |','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''cat:plastovi'', ''Церковні пісні'', ''Пісні на християнську тематику'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_114404'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_114404','Боже, вислухай благання','Боже, вислухай благання,
Нищить недоля наш край.
В єдності сила народу,    | (2)
Боже, нам єдність подай.  |

Боже, здійми з нас кайдани,
Не дай загинуть в ярмі,
Волю пошли Україні,       | (2)
Щастя і долі дай їй.      |');
DELETE FROM song_links WHERE song_id = 'pisniua_113220';
DELETE FROM song_versions WHERE song_id = 'pisniua_113220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_113220';
DELETE FROM songs WHERE id = 'pisniua_113220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_113220','Накрила нічка','Музика: Роман Купчинський Слова: Роман Купчинський. Виконує: Не журись!','uk','ukr_ssr_1919_1991',NULL,'1990','1. Повік не зів''яне. Стрілецькі пісні Михайла Гайворонського. Упор. В. Подуфалий. Тернопіль, 1990.',NULL,'Накрила нічка, тай тихесенька,
Земленьку кругом.
Лиш вітер мряки жене злегенька
Над розіспаним лугом.

І до любови накликає
Чарівниченько-соловій.
А місяць срібний розтягає
Чарівну пряжу мрій.

Там при окопах на долині
Стоїть поручник молодий.
Йому щохвилі вилітає
Зітханнячко з грудей.

"Спи, дівчино, спи, кохана,
Злоті мрії-сни.
І про мене, голубонько,
Не забудь спімни".

А там у Львові музики грають,
Танець жваво йде.
Дівочі очі як зорі, сяють,
Любка всім вперед веде.

І усміхається чарівно,
І клонить голову на грудь.
А сотник просить, сотник молить:
"Кохана, не забудь".

Сіріє ранок, світла гаснуть,
Тяжіє сонна голова.
А сотник шепче ще до вушка
Прощальнії слова.

"Спи, дівчино, спи, кохана,
Злоті мрії-сни.
І про мене, голубонько,
Не забудь спімни".

Ударив гранат, як грім гримучий,
Землю розгорнув.
Збудив окопи і ліс дрімучий,
І ставок, що вже заснув.

Там при окопах на долині
Лежить поручник молодий.
Йому потічком випливає
Червона кров з грудей.

І знову стихло все довкола,
Ставок заснув, здрімнувся ліс.
А тільки вітер по соснині
Зітхання тихо ніс.

"Спи, дівчино, спи, кохана,
Злоті мрії-сни.
І про мене, голубонько,
Не забудь спімни"','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:strilecki'', ''Пісні з ностальгічними мотивами'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_113220'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_113220','Накрила нічка','Накрила нічка, тай тихесенька,
Земленьку кругом.
Лиш вітер мряки жене злегенька
Над розіспаним лугом.

І до любови накликає
Чарівниченько-соловій.
А місяць срібний розтягає
Чарівну пряжу мрій.

Там при окопах на долині
Стоїть поручник молодий.
Йому щохвилі вилітає
Зітханнячко з грудей.

"Спи, дівчино, спи, кохана,
Злоті мрії-сни.
І про мене, голубонько,
Не забудь спімни".

А там у Львові музики грають,
Танець жваво йде.
Дівочі очі як зорі, сяють,
Любка всім вперед веде.

І усміхається чарівно,
І клонить голову на грудь.
А сотник просить, сотник молить:
"Кохана, не забудь".

Сіріє ранок, світла гаснуть,
Тяжіє сонна голова.
А сотник шепче ще до вушка
Прощальнії слова.

"Спи, дівчино, спи, кохана,
Злоті мрії-сни.
І про мене, голубонько,
Не забудь спімни".

Ударив гранат, як грім гримучий,
Землю розгорнув.
Збудив окопи і ліс дрімучий,
І ставок, що вже заснув.

Там при окопах на долині
Лежить поручник молодий.
Йому потічком випливає
Червона кров з грудей.

І знову стихло все довкола,
Ставок заснув, здрімнувся ліс.
А тільки вітер по соснині
Зітхання тихо ніс.

"Спи, дівчино, спи, кохана,
Злоті мрії-сни.
І про мене, голубонько,
Не забудь спімни"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_113220_l1','pisniua_113220','YouTube','https://www.youtube.com/watch?v=5s9HNJok1lc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_113220_l2','pisniua_113220','YouTube','https://www.youtube.com/watch?v=r1FHfVtPTRg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_113220_l3','pisniua_113220','YouTube','https://www.youtube.com/watch?v=ljJlI39KKSg','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_113220_l4','pisniua_113220','YouTube','https://www.youtube.com/watch?v=Z9oQW_yHMDY','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_1152426';
DELETE FROM song_versions WHERE song_id = 'pisniua_1152426';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1152426';
DELETE FROM songs WHERE id = 'pisniua_1152426';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1152426','Батьки мої','Музика: Ірина Федишин Слова: Ірина Федишин. Виконує: Ірина Федишин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Серце, що біль відчуває,
Що завжди научає мене,
Серце, яке зігріває,
Що за руку в світі веде.
Ви найбільше,
Що маю в цьому житті.
Я люблю Вас батьки,
Рідні мої!
Ви завжди біля мене,
Вдень і вночі,
Ви ночей не доспали,
Батьки мої!

Приспів:
Нехай усмішка тепла не зникає,
Вона дарує радість і тепло,
Нехай Господь завжди Вам помагає
За ваше щире батьківське добро,
Батьки мої!

Низько я Вам уклонюся,
Ви мене на світ привели.
Богу за Вас помолюся,
Бо я з Вами не знаю біди.
Ви найбільше,
Що маю в цьому житті.
Я люблю Вас батьки,
Рідні мої!
Ви завжди біля мене,
Вдень і вночі,
Ви ночей не доспали,
Батьки мої!

Приспів.

Ви найбільше,
Що маю в цьому житті.
Я люблю вас батьки,
Рідні мої!
Ви завжди біля мене,
Вдень і вночі,
Ви ночей не доспали,
Батьки мої!

Приспів','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1152426'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1152426','Батьки мої','Серце, що біль відчуває,
Що завжди научає мене,
Серце, яке зігріває,
Що за руку в світі веде.
Ви найбільше,
Що маю в цьому житті.
Я люблю Вас батьки,
Рідні мої!
Ви завжди біля мене,
Вдень і вночі,
Ви ночей не доспали,
Батьки мої!

Приспів:
Нехай усмішка тепла не зникає,
Вона дарує радість і тепло,
Нехай Господь завжди Вам помагає
За ваше щире батьківське добро,
Батьки мої!

Низько я Вам уклонюся,
Ви мене на світ привели.
Богу за Вас помолюся,
Бо я з Вами не знаю біди.
Ви найбільше,
Що маю в цьому житті.
Я люблю Вас батьки,
Рідні мої!
Ви завжди біля мене,
Вдень і вночі,
Ви ночей не доспали,
Батьки мої!

Приспів.

Ви найбільше,
Що маю в цьому житті.
Я люблю вас батьки,
Рідні мої!
Ви завжди біля мене,
Вдень і вночі,
Ви ночей не доспали,
Батьки мої!

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1152426_l1','pisniua_1152426','YouTube','https://www.youtube.com/watch?v=c_zH8sWZFi0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1147921';
DELETE FROM song_versions WHERE song_id = 'pisniua_1147921';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1147921';
DELETE FROM songs WHERE id = 'pisniua_1147921';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1147921','Лада','Музика: Олеся Сінчук Слова: Олеся Сінчук. Виконує: Олеся Сінчук','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Прокидаюсь у ніжність ранку,
У смарагдовий подих сонця,
Срібні дзвоники - сміх із ганку -
Долітає в моє віконце.

Ой, Ладо, Ладо...
Ой, Ладо, Ладо...
Ой, Ладо, Ладо...
Ой, Ладо, Ладо...
Ой, Ладо, Ладо...
Ой, Ладо, Ладо...
Ой, Ладо, Ладо ла...

Лель гукає в долину літа,
В казку лагідну і мінливу,
Сходить в серці вогненним  дивом
Квіт купальський, піснями вмитий

Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо ла!

Будем зорі в долонях пестить,
В жар співучий стрибать босоніж,
І шукати у хмарах сонних
Князя-Місяця білий перстень

Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо ла!

Ой, на Купала, на Купала
Біла лебідка прилітала,
Вінок із вогню заплітала,
Та в бистру річку та й пускала,
Та в бистру річку та й пускала,
Свого милого закликала.
-Пливи, віночку, річечкою,
Знайди милого в дальнім краю!

В морі Купалочка купалася,
Радо на сонечку сушилася,
Радо на сонечку сушилася,
Чистими росами вмивалася,
А як пішла вона до лісочку,
То зірвала собі жар-квіточку,
А тая квіточка з вогню, з вогню,
Дай же ти, дай мені долю ясну!
В морі Купалочка купалася,
З нашим Купалочком побралася!

Гори, гори ясно, щоби не погасло! 12 разів

Щастя! Небо в обійми кличу,
П''ю єднання одвічну радість,
І вплітаю у крила райдуг
Душі рідні - сонячні свічі!

Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1147921'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1147921','Лада','Прокидаюсь у ніжність ранку,
У смарагдовий подих сонця,
Срібні дзвоники - сміх із ганку -
Долітає в моє віконце.

Ой, Ладо, Ладо...
Ой, Ладо, Ладо...
Ой, Ладо, Ладо...
Ой, Ладо, Ладо...
Ой, Ладо, Ладо...
Ой, Ладо, Ладо...
Ой, Ладо, Ладо ла...

Лель гукає в долину літа,
В казку лагідну і мінливу,
Сходить в серці вогненним  дивом
Квіт купальський, піснями вмитий

Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо ла!

Будем зорі в долонях пестить,
В жар співучий стрибать босоніж,
І шукати у хмарах сонних
Князя-Місяця білий перстень

Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо ла!

Ой, на Купала, на Купала
Біла лебідка прилітала,
Вінок із вогню заплітала,
Та в бистру річку та й пускала,
Та в бистру річку та й пускала,
Свого милого закликала.
-Пливи, віночку, річечкою,
Знайди милого в дальнім краю!

В морі Купалочка купалася,
Радо на сонечку сушилася,
Радо на сонечку сушилася,
Чистими росами вмивалася,
А як пішла вона до лісочку,
То зірвала собі жар-квіточку,
А тая квіточка з вогню, з вогню,
Дай же ти, дай мені долю ясну!
В морі Купалочка купалася,
З нашим Купалочком побралася!

Гори, гори ясно, щоби не погасло! 12 разів

Щастя! Небо в обійми кличу,
П''ю єднання одвічну радість,
І вплітаю у крила райдуг
Душі рідні - сонячні свічі!

Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!
Ой, Ладо, Ладо!');
DELETE FROM song_links WHERE song_id = 'pisniua_1149404';
DELETE FROM song_versions WHERE song_id = 'pisniua_1149404';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1149404';
DELETE FROM songs WHERE id = 'pisniua_1149404';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1149404','З Новим роком та Різдвом Христовим!','Музика: Олена Вдовиченко Слова: Олена Вдовиченко','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Скоро прийде Новий рік,
До країн та на поріг,
Хай до вас ще завітає   |
Щастя й радості бажає.  | (2)

Хай приходить і Різдво
Та дарує вам тепло.
Щоб різдв''яна коляда    |
Мир у хату принесла.    | (2)','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:new-year'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Пісні на християнську тематику'', ''Колядки'', ''Пісні про Новий Рік'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1149404'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1149404','З Новим роком та Різдвом Христовим!','Скоро прийде Новий рік,
До країн та на поріг,
Хай до вас ще завітає   |
Щастя й радості бажає.  | (2)

Хай приходить і Різдво
Та дарує вам тепло.
Щоб різдв''яна коляда    |
Мир у хату принесла.    | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_1150323';
DELETE FROM song_versions WHERE song_id = 'pisniua_1150323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1150323';
DELETE FROM songs WHERE id = 'pisniua_1150323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1150323','Щаслива подія настала',NULL,'uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Щаслива подія настала
Зійшла в небі зірка яскрава.
Ангели вітають весь світ
Христос народився в цю мить.

Різдвяні свята, різдвяні свята
Прийдуть у кожну оселю до нас.
І за столом вся родина збереться,
І запанує любов серед нас.

Христос народився, о диво,
А матір Пречистая Діва
У ясла його положила,
Дитя Боже благословила.

Ідуть на поклін пастухи
Вітати ідуть три царі.
Дари свої щедрі дарують
Різдво Іісуса святкують.

Різдвяні свята, різдвяні свята
Прийдуть у кожну оселю до нас.
І за столом вся родина збереться,
І запанує любов серед нас.

Ходімо і ми завітаймо,
І Боже дитя привітаймо.
Ісусе, о Божий сину,
Завжди бережи Україну.

Різдвяні свята, різдвяні свята
Прийдуть у кожну оселю до нас.
І за столом вся родина збереться,
І запанує любов серед нас.','[''pisni.org.ua'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1150323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1150323','Щаслива подія настала','Щаслива подія настала
Зійшла в небі зірка яскрава.
Ангели вітають весь світ
Христос народився в цю мить.

Різдвяні свята, різдвяні свята
Прийдуть у кожну оселю до нас.
І за столом вся родина збереться,
І запанує любов серед нас.

Христос народився, о диво,
А матір Пречистая Діва
У ясла його положила,
Дитя Боже благословила.

Ідуть на поклін пастухи
Вітати ідуть три царі.
Дари свої щедрі дарують
Різдво Іісуса святкують.

Різдвяні свята, різдвяні свята
Прийдуть у кожну оселю до нас.
І за столом вся родина збереться,
І запанує любов серед нас.

Ходімо і ми завітаймо,
І Боже дитя привітаймо.
Ісусе, о Божий сину,
Завжди бережи Україну.

Різдвяні свята, різдвяні свята
Прийдуть у кожну оселю до нас.
І за столом вся родина збереться,
І запанує любов серед нас.');
DELETE FROM song_links WHERE song_id = 'pisniua_115000';
DELETE FROM song_versions WHERE song_id = 'pisniua_115000';
DELETE FROM songs_fts WHERE song_id = 'pisniua_115000';
DELETE FROM songs WHERE id = 'pisniua_115000';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_115000','Заспівай мені, мамо','Музика: Володимир Верменич, Володимир Конощенко Слова: Олександр Богачук. Виконує: Валентина Степова, Григорій Гребінченко, Уляна Фарина, Тетяна Галаш, Павло та Петро Приймаки, Наталія Гоцко','uk','ukraine_1991',NULL,'1995',NULL,'В. Конощенко. На щастя, на добро. "Арфа". К., 1995 р.','Заспівай мені, мамо моя,
Як бувало, колись над колискою,
Буду слухати, слухати я,
І стояти в замрії берізкою.
Заспівай, заспівай,
Заспівай мені, мамо моя,
Як співала колись над колискою,   |
Заспівай мені, мамо моя.          | (2)

Чи то сни, чи то, мамо, не сни:
Хтось що вечора стука в вікно мені,
І зітхають всю ніч ясени,
І гойдаються місячні промені.
Чи то сни, чи то, мамо, не сни?
Хтось щовечора стука в вікно мені. |
Чи то сни, чи то, мамо, не сни?    | (2)

Заспівай мені, мамо, про те,
Що приходить до нас, не питаючи,
І без кореня в серці росте,
І без цвіту цвіте, розквітаючи.
Заспівай, заспівай,
Заспівай, що без цвіту цвіте.
Що приходить до нас, не питаючи,    |
Заспівай мені, мамо, про те.        | (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_115000'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_115000','Заспівай мені, мамо','Заспівай мені, мамо моя,
Як бувало, колись над колискою,
Буду слухати, слухати я,
І стояти в замрії берізкою.
Заспівай, заспівай,
Заспівай мені, мамо моя,
Як співала колись над колискою,   |
Заспівай мені, мамо моя.          | (2)

Чи то сни, чи то, мамо, не сни:
Хтось що вечора стука в вікно мені,
І зітхають всю ніч ясени,
І гойдаються місячні промені.
Чи то сни, чи то, мамо, не сни?
Хтось щовечора стука в вікно мені. |
Чи то сни, чи то, мамо, не сни?    | (2)

Заспівай мені, мамо, про те,
Що приходить до нас, не питаючи,
І без кореня в серці росте,
І без цвіту цвіте, розквітаючи.
Заспівай, заспівай,
Заспівай, що без цвіту цвіте.
Що приходить до нас, не питаючи,    |
Заспівай мені, мамо, про те.        | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_115000_l1','pisniua_115000','YouTube','https://www.youtube.com/watch?v=6-MhFCpu1IU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1150000';
DELETE FROM song_versions WHERE song_id = 'pisniua_1150000';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1150000';
DELETE FROM songs WHERE id = 'pisniua_1150000';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1150000','Ой, стала нам ся нині новина','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, стала нам ся нині новина
Та й на годину.
Ой, пороодила Божая мати         |
Божого сина!                     | (2)

Зі сходу сонця аж до заходу
Три царі ішли,
Богу рожденному, Божому сину,    |
Дарунки несли.                   | (2)

Один - миро, а другий - кадило,
А третій - злато,
Щоби тримати в небі корону,      |
А всі три за то.                 | (2)

Дари зложили, поклін віддали
Та й поїхали,
А безбожному царю Іроду          |
Знати не дали.                   | (2)

А цар Ірод, як розсердився,
Що діять - не знав.
По всій країні маленькії діти    |
Рубати казав.                    | (2)

Йосип старенький з Дівов Марієй,
Як це почули,
Із Вифлеєму аж до Єгипту         |
З Христом утекли.                | (2)

А цар Ірод зі своїм військом
За ними ся гнав,
Стрітив він хлопа, хлопа-холопа, |
Що пшеничку жав.                 | (2)

Ой, ти хлопе, хлопе-холопе,
Пшеничку жжащий,
Чи ти не бачив якусь невісту     |
З дитям біжачи?                  | (2)

Зійшла із неба Божая сила
Та й їх затьмила,
Так їх затьмила, затуманила      |
Та й завернула.                  | (2)','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1150000'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1150000','Ой, стала нам ся нині новина','Ой, стала нам ся нині новина
Та й на годину.
Ой, пороодила Божая мати         |
Божого сина!                     | (2)

Зі сходу сонця аж до заходу
Три царі ішли,
Богу рожденному, Божому сину,    |
Дарунки несли.                   | (2)

Один - миро, а другий - кадило,
А третій - злато,
Щоби тримати в небі корону,      |
А всі три за то.                 | (2)

Дари зложили, поклін віддали
Та й поїхали,
А безбожному царю Іроду          |
Знати не дали.                   | (2)

А цар Ірод, як розсердився,
Що діять - не знав.
По всій країні маленькії діти    |
Рубати казав.                    | (2)

Йосип старенький з Дівов Марієй,
Як це почули,
Із Вифлеєму аж до Єгипту         |
З Христом утекли.                | (2)

А цар Ірод зі своїм військом
За ними ся гнав,
Стрітив він хлопа, хлопа-холопа, |
Що пшеничку жав.                 | (2)

Ой, ти хлопе, хлопе-холопе,
Пшеничку жжащий,
Чи ти не бачив якусь невісту     |
З дитям біжачи?                  | (2)

Зійшла із неба Божая сила
Та й їх затьмила,
Так їх затьмила, затуманила      |
Та й завернула.                  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1150000_l1','pisniua_1150000','YouTube','https://www.youtube.com/watch?v=fW0DxXDD0jA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1158127';
DELETE FROM song_versions WHERE song_id = 'pisniua_1158127';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1158127';
DELETE FROM songs WHERE id = 'pisniua_1158127';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1158127','Маківка. Ніч перед боєм','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'похідний співаник "Маківка" - Івано-Франківськ, 2005 р.',NULL,'Вже скоро світанок, пантрують дозори,
Окопи і шанці туман поглина.
Навколо мовчазні, задумані гори,
І зовсім не віриш, що всюди війна.

Що нас тут аж двісті, а вранці зі свистом
Від скелі осколком відколе картеч
І пекло на плечі нам, браття, натисне,
І голови горді покотяться з плеч.

Бо в клекоті тої смертельної жатви
Найпершими жертвами будемо ми,
Такі молодії добровольці - солдати
З роздертої війнами Галичини.

І біля верхівки цієї Маківки
В перину з ожини, в перину із трав
Приляже поспати, приляже навіки
Багато із нас, хто так палко кохав.

Хто ладен віддати життя за Вітчизну,
Для кого синівство - найвищий наказ,
Він вип''є до дна ту жорстоку трутизну
Отут, на Маківці, отут серед нас.

Зосталось недовго... Жевріє світанок,
А друзі, а друзі, а друзі ще сплять,
Їх сон бережу я та й прощатись ще рано,
Когось же ці кулі іще пощадять.

Коли ж уцілілих по світі, як попіл,
Життя розкидає по довгій війні,
Зостануться шрами - ті давні окопи,
Хрести і калина, і наші пісні!','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1158127'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1158127','Маківка. Ніч перед боєм','Вже скоро світанок, пантрують дозори,
Окопи і шанці туман поглина.
Навколо мовчазні, задумані гори,
І зовсім не віриш, що всюди війна.

Що нас тут аж двісті, а вранці зі свистом
Від скелі осколком відколе картеч
І пекло на плечі нам, браття, натисне,
І голови горді покотяться з плеч.

Бо в клекоті тої смертельної жатви
Найпершими жертвами будемо ми,
Такі молодії добровольці - солдати
З роздертої війнами Галичини.

І біля верхівки цієї Маківки
В перину з ожини, в перину із трав
Приляже поспати, приляже навіки
Багато із нас, хто так палко кохав.

Хто ладен віддати життя за Вітчизну,
Для кого синівство - найвищий наказ,
Він вип''є до дна ту жорстоку трутизну
Отут, на Маківці, отут серед нас.

Зосталось недовго... Жевріє світанок,
А друзі, а друзі, а друзі ще сплять,
Їх сон бережу я та й прощатись ще рано,
Когось же ці кулі іще пощадять.

Коли ж уцілілих по світі, як попіл,
Життя розкидає по довгій війні,
Зостануться шрами - ті давні окопи,
Хрести і калина, і наші пісні!');
DELETE FROM song_links WHERE song_id = 'pisniua_1153622';
DELETE FROM song_versions WHERE song_id = 'pisniua_1153622';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1153622';
DELETE FROM songs WHERE id = 'pisniua_1153622';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1153622','Даю тобі, швагре, та й грошей копицю','Слова: народні','uk','ukraine_before_1917',NULL,NULL,'записано в с. Біла (Тернопільська область), упорядники: Петро Медведик, Олег Смоляк',NULL,'Даю тобі, швагре,
Та й грошей копицю,
Люби мою сестру -
Гарну молодицю.

Люби, моя сестро,
Чоловіка свого,
Ба ти на цім світі
Не знайдеш кращого.

Дякую музикам,
Що ви файно грали,
Дякую від тата,
Дякую від мами.

Плачу вам, музики,
Дорого від себе,
Щоби ви ще грали
На весіллі в мене.

Заграйте, музики,
До строю, до строю,
Ми ся поцілуєм
З моєю сестрою.

Дарую тя, сестро,
Правою рукою,
Щоб ти щастя плило,
Як вода рікою.

Дарую тя, сестро,
На злотій тарели,
Щоб вам, молодятам,
Добре діти велись.

Щоб ви любилися,
Як голубів пара,
Щоби межи вами
Не йшла чорна хмара.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1153622'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1153622','Даю тобі, швагре, та й грошей копицю','Даю тобі, швагре,
Та й грошей копицю,
Люби мою сестру -
Гарну молодицю.

Люби, моя сестро,
Чоловіка свого,
Ба ти на цім світі
Не знайдеш кращого.

Дякую музикам,
Що ви файно грали,
Дякую від тата,
Дякую від мами.

Плачу вам, музики,
Дорого від себе,
Щоби ви ще грали
На весіллі в мене.

Заграйте, музики,
До строю, до строю,
Ми ся поцілуєм
З моєю сестрою.

Дарую тя, сестро,
Правою рукою,
Щоб ти щастя плило,
Як вода рікою.

Дарую тя, сестро,
На злотій тарели,
Щоб вам, молодятам,
Добре діти велись.

Щоб ви любилися,
Як голубів пара,
Щоби межи вами
Не йшла чорна хмара.');
DELETE FROM song_links WHERE song_id = 'pisniua_115024';
DELETE FROM song_versions WHERE song_id = 'pisniua_115024';
DELETE FROM songs_fts WHERE song_id = 'pisniua_115024';
DELETE FROM songs WHERE id = 'pisniua_115024';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_115024','Печеноє порося','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Гориня',NULL,'Печеноє порося
Настовбурчилося,
Не чіпайте його -
Воно батька мого.

Не чіпайте його -
Воно батька мого.
Хоч воно і мале,
Зате вельми дороге.

Хоч воно і мале,
Зате вельми дороге.
Хвостика не чіпай,
А легенько стрибай.','[''pisni.org.ua'', ''cat:poliski'', ''Пісні з Полісся'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_115024'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_115024','Печеноє порося','Печеноє порося
Настовбурчилося,
Не чіпайте його -
Воно батька мого.

Не чіпайте його -
Воно батька мого.
Хоч воно і мале,
Зате вельми дороге.

Хоч воно і мале,
Зате вельми дороге.
Хвостика не чіпай,
А легенько стрибай.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_115024_l1','pisniua_115024','YouTube','https://www.youtube.com/watch?v=F13h7AgFPno','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_115921';
DELETE FROM song_versions WHERE song_id = 'pisniua_115921';
DELETE FROM songs_fts WHERE song_id = 'pisniua_115921';
DELETE FROM songs WHERE id = 'pisniua_115921';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_115921','Стояла Сосна серед Дунаю','Українська народна пісня. Виконує: Етнографічний хор Гомін','uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Колядка стародавня: Українське Різдво Світа. Астральні Заручини — Українське містичне Весілля: Різдво Світа / Купала. Тогди не було Неба ні Землі. На тій Сосноньці Сив Сокіл сидів. (1) Яра Пшениця для Коровайця — Провіщення Астрального і Земного Весілля. (2) Зелена Трава для Худобоньки — Це, мабуть, не зрозуміли до кінця і в 2001 році після спалень в Західній Європі сотень тисяч безвинних тварин. Уряди найпередовіших країн світу почали видавати накази гідні пера Оруела: "Віднині худоба їстиме тільки траву" – малося на увазі не м''ясо. Колядки застерігають про те, що має їсти худоба ще від Початку Світа:-) РОЗСПІВ: Сто-я-ла- Сос-на- се-ред- Ду-на-ю- Дай- Бо-же- Сто-я-ла- Сос-на- се-ред- Ду-на-ю- Дай- Бо-же Присутність Господа на Святій Вечері. Святий Вечір є по думці народу містичною добою Різдва Світа, коли-то і людина народилась. Та велика частина містерій Свят-Вечера, а також багато Колядок вказує, що ідея Найвищого Єства, хоч нераз спливається з ідеєю Дідуха-Прадіда, має над нею виразну перевагу. Думка про присутність Господа на Святій Вечері горує понад усіми іншими. Розуміється, що ідея християнська про народження Спасителя світа скріплює оцю давню віру Українців у Бога Творця, що він навідається до своїх людей, принесе їм благословенство і охоронить від злого. І без сумніву відома була й Староукраїнцям загально-світова, а особливо полудневого Сходу думка про неминучий прихід Спасителя з Неба: сліди цієї старої ідеї можна доглянути виразно в старинних Колядках і Щедрівках. Все те витворює незвичайно поважний реліґійний настрій і віру в Бога без застережень. Весь настрій Святого Вечера зосереджується в одній зворушливій думці, що Господь прийде в гостину і буде на Вечері. Колядки, що змістом їх перенята вся думка народу, хоч їх не співають у самій святочній хвилі, але аж опісля, по Вечері, — накликують Господаря, щоб готовився, опрятував подвір''я й свою хату, приготовляв столи, стелив льняні обруси та ставляв настільні жертви. "Господонькови" кладуть три колачі та три свічі, вино в киліху, — ідеально: так співають Колядки, — або три киліхи з трояким напитком, наколи є сподівані з Господом два товариші, Місяць та Сонце, або в їх місці християнські святі Петро й Никола. Чекають на Господа, наче на когось найближчого собі, найріднішого й найлюбішого та найбільше шанованого з рідні. Думаю, що навіть християнська ідея Ісуса Христа як Богочоловіка і Спасителя уступає тут перед первісним народним поняттям Бога. Тим більше уступає у другу площину мітична постать Дідуха. Постать Господа є тут типовою приявою Бога природних народів: з особистими неозначеними обрисами, але все як уявлення Найвищого Єства і Господа Світа, що людям сприяє і людьми не гордить. Що Господь має бути учасником Святої Вечері, споживати її, заживати Святовечірні напитки, — хочби був духовим Єством, — це одно другому не протирічить у думках народу, коли пригадаємо собі, що на Свят-Вечір і душі померших приходять та поживають останки Святої Вечері. На Свят-Вечір родив''ємся! "На Свят-Вечір родив''ємся, на Свят-Вечір хрестив''ємся! Пречиста Діва на золотім крижмі мя держала, у Змиєвім Озері мя купала". По сім відклику до свого містичного народження у Святий Вечер, в почутті святости своєї ролі духовника в таке велике Свято, певний себе за спасенність хвилі, яку переживає, звертається Господар, — в уяві, — до всіх неприязних людей, що орудують злою силою, до шкідливих диких звірів та до могутніх і небезпечних сил природи — і кличе їх на Вечерю. Чи се маґіка? — Мабуть ні, а якесь дивне, глибоке почуття своєї праведности, докір за свою кривду і пересвідчення, що зла та кривди не повинно бути, бо їх не було в Почині Світа. У Святовечірнюю годину, коли усе повинно бути під символом любови і з''єднання, як було з Первовіку, Господар в імені своєї ближчої й дальшої рідні простягає злим елементам руку до згоди, — не про свою наївність або боязкість, а з великого благородства душі і з почуття Правди. (За працею: о. Ксенофонт Сосенко. "Культурно-історична постать Староукраїнськиx свят Різдва і Щедрого Вечора". Львів, 1928. - СІНТО, Київ 1994. 343с.) Листки з приводу цієї Пісні: Українське Свято Воведення 4.12 - Передріздвяний Святочний час. Українські релігійні роздуми про Бога. Весілля — Свята Неділя: Святий Коровай. Про Свято Івана Купала Стежки до листків про Українські традиції.','Стояла Сосна серед Дунаю. Дай, Боже!
Кожна стрічка повторюється за зразком:
Стояла Сосна серед Дунаю. Дай, Бо..!

На тій Сосноньці Сив Сокіл сидів. Дай, Боже!
Крильцями стріпав в Дунаєць упав. Дай, Боже!
Вийшов Він від Там Третього Року. Дай, Боже!
Виніс Він від Там Троє Насіння. Дай, Боже!
Перше Насіння Чорна Землиця! Дай, Боже!
Друге Насіння Яра Пшениця! Дай, Боже!
Третє Насіння Зелена Трава! Дай, Боже!
Чорна Землиця Світ ізродиться! Дай, Боже!
Яра Пшениця для Коровайця! Дай, Боже!
Зелена Трава для Худобоньки! Дай, Боже!','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_115921'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_115921','Стояла Сосна серед Дунаю','Стояла Сосна серед Дунаю. Дай, Боже!
Кожна стрічка повторюється за зразком:
Стояла Сосна серед Дунаю. Дай, Бо..!

На тій Сосноньці Сив Сокіл сидів. Дай, Боже!
Крильцями стріпав в Дунаєць упав. Дай, Боже!
Вийшов Він від Там Третього Року. Дай, Боже!
Виніс Він від Там Троє Насіння. Дай, Боже!
Перше Насіння Чорна Землиця! Дай, Боже!
Друге Насіння Яра Пшениця! Дай, Боже!
Третє Насіння Зелена Трава! Дай, Боже!
Чорна Землиця Світ ізродиться! Дай, Боже!
Яра Пшениця для Коровайця! Дай, Боже!
Зелена Трава для Худобоньки! Дай, Боже!');
DELETE FROM song_links WHERE song_id = 'pisniua_1154220';
DELETE FROM song_versions WHERE song_id = 'pisniua_1154220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1154220';
DELETE FROM songs WHERE id = 'pisniua_1154220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1154220','Вже зближається година',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'1. Вже зближається година,
Сонце ясне вже заходить,
Чорна зрада і зміна,
Кроком Юди пильно бродить.

2. До вечері всі сідають,
Хоч ся в грудях серце крає,
Дари Божі споживають,
А Христос так промовляє.

3. "Вже не довго буду з вами,
Злоба людська раду радить,
Кажу тими ось словами,
Що один з вас мене зрадить"

4. А по тому тихий, смирний,
Став всім ноги умивати,
Опираєсь Петро вірний,
А Христос почав навчати.

5. Поміж вами хто голосить,
Що любові має много,
А на других ся виносить,
Той від духа не є мого.

6. Ви смиренні на всі части,
Світа в мирі ідіть радо,
А в годині лютой страсти,
Не лякайся Боже стадо.

7. Я Отця з небес вмовляю,
Він у поміч вам поспіє,
Я хотя й вас оставляю,
Та не тратьте ви надії.

8. Хліб святий бере у руки:
"Це моє єсть тіло", - каже,
Тіло, що посеред муки,
В гробі задля многих ляже".

9. І з вином піднявши чашу:
"Кров моя", - то повідає,
Що за вічну долю вашу,
На хресті ся проливає.

10. А святий Йоан на груди,
Спаса голову впирає,
А вже зрада в серці Юди,
Міру повну прибирає.

11. І хильцем уже відходить,
В серцю криє злобу вражу,
І з жидами вже ся годить,
Я його вам днесь покажу.

12. Спасе милий, світа Пане,
Ти ж нас хочеш полишити,
Що ж ся з нами всіми стане,
Хто ж буде нас боронити?

13. О, прости нам всякі зради,
Що сповняєм їх гріхами,
А твоєї страсти ради,
О, Ісусе все будь з нами','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christ'', ''cat:christian'', ''cat:strasni'', ''Церковні пісні'', ''Пісні до Ісуса Христа'', ''Пісні на християнську тематику'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1154220'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1154220','Вже зближається година','1. Вже зближається година,
Сонце ясне вже заходить,
Чорна зрада і зміна,
Кроком Юди пильно бродить.

2. До вечері всі сідають,
Хоч ся в грудях серце крає,
Дари Божі споживають,
А Христос так промовляє.

3. "Вже не довго буду з вами,
Злоба людська раду радить,
Кажу тими ось словами,
Що один з вас мене зрадить"

4. А по тому тихий, смирний,
Став всім ноги умивати,
Опираєсь Петро вірний,
А Христос почав навчати.

5. Поміж вами хто голосить,
Що любові має много,
А на других ся виносить,
Той від духа не є мого.

6. Ви смиренні на всі части,
Світа в мирі ідіть радо,
А в годині лютой страсти,
Не лякайся Боже стадо.

7. Я Отця з небес вмовляю,
Він у поміч вам поспіє,
Я хотя й вас оставляю,
Та не тратьте ви надії.

8. Хліб святий бере у руки:
"Це моє єсть тіло", - каже,
Тіло, що посеред муки,
В гробі задля многих ляже".

9. І з вином піднявши чашу:
"Кров моя", - то повідає,
Що за вічну долю вашу,
На хресті ся проливає.

10. А святий Йоан на груди,
Спаса голову впирає,
А вже зрада в серці Юди,
Міру повну прибирає.

11. І хильцем уже відходить,
В серцю криє злобу вражу,
І з жидами вже ся годить,
Я його вам днесь покажу.

12. Спасе милий, світа Пане,
Ти ж нас хочеш полишити,
Що ж ся з нами всіми стане,
Хто ж буде нас боронити?

13. О, прости нам всякі зради,
Що сповняєм їх гріхами,
А твоєї страсти ради,
О, Ісусе все будь з нами');
DELETE FROM song_links WHERE song_id = 'pisniua_11529';
DELETE FROM song_versions WHERE song_id = 'pisniua_11529';
DELETE FROM songs_fts WHERE song_id = 'pisniua_11529';
DELETE FROM songs WHERE id = 'pisniua_11529';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_11529','Ми кривого танцю йдемо','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1991','А вже весна скресла. Збірник гаївок. Львів, 2003.','Перед тим, як почати водити «Кривий танець», на землі через кожних п’ять-шість кроків кладуть три камені (чи втикають зелені галузки) у вигляді трикутника. «Провідниця» (перша дівчина) веде дівчат, минаючи ті знаки, різними викрутасами. (Джерело: Свято гаївок: великодні, весняні пісні та ігри.– Дрогобич: Бескид, 1991.– 52 c.)','Ми кривого танцю йдемо,     (2)
Ми в нім кінця не знайдемо. (2)

Ані кінця, ані ладу.        (2)
Не спізнати, котра ззаду.   (2)

Ти, сивая зозуленько,      (2)
Закуй же нам веселенько.   (2)

Ти тоді нам закувала,    (2)
Як панщина дякувала.     (2)

Тепер нам ягілка мила,    (2)
Бо панщина ся скінчила.   (2)

Вже пани ті повмирали,     (2)
Що на панщину нас гнали.   (2)

Пішли тії пасти кози,    (2)
Що носили на нас лози.   (2)

Хлопи ходять, люльку курять,   (2)
Пани ходять та й ся журять.    (2)

Як би хлопа зачіпити,  (2)
Щоби гроші заробити.   (2)

Наші батьки чорні були,   (2)
За нас панщину відбули.   (2)

А ми тепер, як день білі:   (2)
Ми панщини не виділи.       (2)
Основна мелодія','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_11529'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_11529','Ми кривого танцю йдемо','Ми кривого танцю йдемо,     (2)
Ми в нім кінця не знайдемо. (2)

Ані кінця, ані ладу.        (2)
Не спізнати, котра ззаду.   (2)

Ти, сивая зозуленько,      (2)
Закуй же нам веселенько.   (2)

Ти тоді нам закувала,    (2)
Як панщина дякувала.     (2)

Тепер нам ягілка мила,    (2)
Бо панщина ся скінчила.   (2)

Вже пани ті повмирали,     (2)
Що на панщину нас гнали.   (2)

Пішли тії пасти кози,    (2)
Що носили на нас лози.   (2)

Хлопи ходять, люльку курять,   (2)
Пани ходять та й ся журять.    (2)

Як би хлопа зачіпити,  (2)
Щоби гроші заробити.   (2)

Наші батьки чорні були,   (2)
За нас панщину відбули.   (2)

А ми тепер, як день білі:   (2)
Ми панщини не виділи.       (2)
Основна мелодія');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_11529_l1','pisniua_11529','YouTube','https://www.youtube.com/watch?v=xO5YF3PXNzE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1154529';
DELETE FROM song_versions WHERE song_id = 'pisniua_1154529';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1154529';
DELETE FROM songs WHERE id = 'pisniua_1154529';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1154529','Янчик','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Kulik A., Pleśniak P. Dla Oli na słowiańską nutę. Wybrane pieśni łemkowskie, bojkowskie, słowackie, polskie i inne. - Mińsk Mazowiecki, 2001. – 16 p.',NULL,'Янчик, Янчик, що би-с зробив,
Гея-гоя,
Якби мене другий любив?     |
Чу-гая.                     | (2)

Зробив бим-ся сивим пташком,
Гея-гоя,
Співав бим ти під облачком. |
Чу-гая.                     | (2)

Боже, Боже, шо ся робит,
Гея-гоя,
Милий до ня не приходит,    |
Чу-гая.                     | (2)

Чи го вода примулила,
Гея-гоя,
Гей, чи го інша прихвалила? |
Чу-гая.                     | (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1154529'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1154529','Янчик','Янчик, Янчик, що би-с зробив,
Гея-гоя,
Якби мене другий любив?     |
Чу-гая.                     | (2)

Зробив бим-ся сивим пташком,
Гея-гоя,
Співав бим ти під облачком. |
Чу-гая.                     | (2)

Боже, Боже, шо ся робит,
Гея-гоя,
Милий до ня не приходит,    |
Чу-гая.                     | (2)

Чи го вода примулила,
Гея-гоя,
Гей, чи го інша прихвалила? |
Чу-гая.                     | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_115303';
DELETE FROM song_versions WHERE song_id = 'pisniua_115303';
DELETE FROM songs_fts WHERE song_id = 'pisniua_115303';
DELETE FROM songs WHERE id = 'pisniua_115303';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_115303','Рушив поїзд в далеку дорогу','(Коли поїзд удаль загуркоче). Слова: Володимир Сосюра','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Рушив поїзд в далеку дорогу,
Сколихнувся вагон і поплив.
І останній я раз подивлюся
На все те,що так щиро любив.

Ти сумна на пероні стояла,
Вітер коси твої колихав,
На очах в тебе сльози блищали,
Ти ридала, я важко зітхав.

Коли поїзд в гаю загуркоче,
Пригадаються знову мені
Звук гітари у місячні ночі,
Поцілунки гарячі твої.

Вже минув давно рік з того часу,
Як смереки шуміли в гаю,
Ти схилилась до мене на груди
І тихенько шептала: "Люблю".    Фонограма-мінус (mp3, 192 kbps). весільний вальс  (','[''pisni.org.ua'', ''cat:dances'', ''cat:waltzes'', ''Пісні до танцю'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_115303'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_115303','Рушив поїзд в далеку дорогу','Рушив поїзд в далеку дорогу,
Сколихнувся вагон і поплив.
І останній я раз подивлюся
На все те,що так щиро любив.

Ти сумна на пероні стояла,
Вітер коси твої колихав,
На очах в тебе сльози блищали,
Ти ридала, я важко зітхав.

Коли поїзд в гаю загуркоче,
Пригадаються знову мені
Звук гітари у місячні ночі,
Поцілунки гарячі твої.

Вже минув давно рік з того часу,
Як смереки шуміли в гаю,
Ти схилилась до мене на груди
І тихенько шептала: "Люблю".    Фонограма-мінус (mp3, 192 kbps). весільний вальс  (');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_115303_l1','pisniua_115303','YouTube','https://www.youtube.com/watch?v=WRnHU2qkC_8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_115303_l2','pisniua_115303','YouTube','https://www.youtube.com/watch?v=ol0CaJ01fOk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_115303_l3','pisniua_115303','YouTube','https://www.youtube.com/watch?v=er0gFRr4DRI','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_115303_l4','pisniua_115303','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_1154202';
DELETE FROM song_versions WHERE song_id = 'pisniua_1154202';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1154202';
DELETE FROM songs WHERE id = 'pisniua_1154202';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1154202','Христос розп’ятий',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Христос розп''ятий на Голготі,
За гріхи світу біль терпить,
В безмірних муках і скорботі,
По тілі Кров свята біжить,
За гріхи світу так терпить.

Вінцем зранені святі скроні,
Прибиті руки до хреста,
Тяжкі болючі кругом рани,
Пливе з пробитого ребра
Кров Пресвятая, дорога.

Не стало сили в людськім тілі,
Звершилась чаша мук, терпінь.
На уста Божі наболілі
Упало слово ще: Амінь,
І смерть життя забрала в плін.

Душе моя! За твою злобу
І за провини, за гріхи,
Христос прийшов на смерть до гробу,
Тому в час грішної жажди
Ти хоч хвилину з Ним терпи.    комп''ютерне відтворення (128 kbps)  (','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christ'', ''cat:christian'', ''cat:strasni'', ''Церковні пісні'', ''Пісні до Ісуса Христа'', ''Пісні на християнську тематику'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1154202'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1154202','Христос розп’ятий','Христос розп''ятий на Голготі,
За гріхи світу біль терпить,
В безмірних муках і скорботі,
По тілі Кров свята біжить,
За гріхи світу так терпить.

Вінцем зранені святі скроні,
Прибиті руки до хреста,
Тяжкі болючі кругом рани,
Пливе з пробитого ребра
Кров Пресвятая, дорога.

Не стало сили в людськім тілі,
Звершилась чаша мук, терпінь.
На уста Божі наболілі
Упало слово ще: Амінь,
І смерть життя забрала в плін.

Душе моя! За твою злобу
І за провини, за гріхи,
Христос прийшов на смерть до гробу,
Тому в час грішної жажди
Ти хоч хвилину з Ним терпи.    комп''ютерне відтворення (128 kbps)  (');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1154202_l1','pisniua_1154202','YouTube','https://www.youtube.com/watch?v=xyxOm_2WaAE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_116220';
DELETE FROM song_versions WHERE song_id = 'pisniua_116220';
DELETE FROM songs_fts WHERE song_id = 'pisniua_116220';
DELETE FROM songs WHERE id = 'pisniua_116220';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_116220','Свята ніч','Музика: Franz X. Gruber Слова: Fr. Joseph Mohr. Виконує: Петро Довгошия','uk','ukraine_before_1917',NULL,'1816','Коляди, або пісні з нотами на Різдво Христове.- Жовква: Печатня ОО. Василіян, 1925; Колядки.- Львів: Каменяр, 1990.- 64 с.','Інформація про авторство оригіналу пісні "Stille Nacht" ("Silent Night") була взята із сайту http://members.fortunecity.com/silentnight/: - слова: Fr. Joseph Mohr (Mariapfarr, Austria - 1816); - мелодія: Franz X. Gruber (Mariapfarr, Austria - 1816); - вперше виконано: Oberndorf, Austria - 1818. Автор укранського тексту - невідомий.','Свята ніч, тиха ніч!
Ясність б''є від зірниць,
Дитинонька Пресвята,   |
Така ясна, мов зоря,   | (2)
Спочиває в тихім сні.  |

Cвята ніч, тиха ніч!
Ой, утри сльози з віч:
Бо Син Божий йде до нас,   |
Цілий світ любов''ю спас,   | (2)
Витай нам святе Дитя!      |

Свята ніч настає,
Ясний блиск з неба б''є,
В людськім тілі Божий Син  |
Прийшо нині в Вифлеєм,     | (2)
Щоб спасти цілий світ.     |','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''Пісні на християнську тематику'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_116220'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_116220','Свята ніч','Свята ніч, тиха ніч!
Ясність б''є від зірниць,
Дитинонька Пресвята,   |
Така ясна, мов зоря,   | (2)
Спочиває в тихім сні.  |

Cвята ніч, тиха ніч!
Ой, утри сльози з віч:
Бо Син Божий йде до нас,   |
Цілий світ любов''ю спас,   | (2)
Витай нам святе Дитя!      |

Свята ніч настає,
Ясний блиск з неба б''є,
В людськім тілі Божий Син  |
Прийшо нині в Вифлеєм,     | (2)
Щоб спасти цілий світ.     |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_116220_l1','pisniua_116220','YouTube','https://www.youtube.com/watch?v=uopqocK7a0o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_116220_l2','pisniua_116220','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_1159622';
DELETE FROM song_versions WHERE song_id = 'pisniua_1159622';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1159622';
DELETE FROM songs WHERE id = 'pisniua_1159622';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1159622','Ой ніхто так не літає','Українська народна пісня. Виконує: Фольклорний ансамбль села Межирич','uk','ukraine_before_1917',NULL,NULL,'Фольклорний архів ансамблю "Божичі". Запис в с.Межирич (Маврино) Павлоградського р-ну Дніпропетровської обл. 22.04.1992 Касета 5',NULL,'Ой, ніхто ж так не літає
Високо як той орел,
Ой, ніхто ж так не витає,
Як мати своїх дітей.

Уже й літечко минає,
Починається зима,
Десь синок мій пропадає,
Що і вісточки нема.

Казав син, що повернуся,
Як закінчиться війна,
Повернуся, одружуся
І не будеш ти одна.

Будеш внуків колисати
І співати їм пісень,
Виглядає сина мати
Дні і ночі по цей день','[''pisni.org.ua'', ''cat:arkhiv-bozhychi'', ''Фольклорний архів анс. "Божичі"'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1159622'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1159622','Ой ніхто так не літає','Ой, ніхто ж так не літає
Високо як той орел,
Ой, ніхто ж так не витає,
Як мати своїх дітей.

Уже й літечко минає,
Починається зима,
Десь синок мій пропадає,
Що і вісточки нема.

Казав син, що повернуся,
Як закінчиться війна,
Повернуся, одружуся
І не будеш ти одна.

Будеш внуків колисати
І співати їм пісень,
Виглядає сина мати
Дні і ночі по цей день');
DELETE FROM song_links WHERE song_id = 'pisniua_1159606';
DELETE FROM song_versions WHERE song_id = 'pisniua_1159606';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1159606';
DELETE FROM songs WHERE id = 'pisniua_1159606';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1159606','Кури, мої кури','Українська народна пісня. Виконує: Фольклорний ансамбль села Межирич','uk','ukraine_before_1917',NULL,NULL,'Фольклорний архів ансамблю "Божичі". Запис в с.Межирич (Маврино) Павлоградського р-ну Дніпропетровської обл. 22.04.1992 Касета 5',NULL,'Кури мої, кури,
Помілнасті кури,
Якби мені чоловік
Своєї натури.

Щоб горілку він не пив,
Тютюну не нюхав,
Чужих жінок не любив,
Одну мене слухав.

Ой, лягайте, дітки спати,
Я вас повкриваю,
Сама піду до куми,
Батька пошукаю.

Приходжу я до куми,
Глянула в віконце,
Сидить же мій чоловік,
Як яснеє сонце.

Вона йому чарку,
А він їй улибку,
А я того не стерпіла
Та й розбила шибку.

Прибігаю до дому,
Звісно захворіла,
Намочила рушничок,
Голову накрила.

Як приходе чоловік
Увесь у болоті,
Я питаю: Де ж ти був?
Каже: На роботі.

Хоть би швидше ніч пройшла
Та й утро настало,
Пішла б я до куми,
Новості узнала б.

Приходжу я до куми,
А кума сердита,
Чого в тебе, кумоньку,
Шибочка розбита?

Єсть у мене курка,
Курка полохлива,
Вона ж мені, кумонько,
Шибочку розбила.

Якщо будеш, кумонько,
Кума напувати,
Буде тобі курочка
Шибку розбивати','[''pisni.org.ua'', ''cat:arkhiv-bozhychi'', ''Фольклорний архів анс. "Божичі"'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1159606'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1159606','Кури, мої кури','Кури мої, кури,
Помілнасті кури,
Якби мені чоловік
Своєї натури.

Щоб горілку він не пив,
Тютюну не нюхав,
Чужих жінок не любив,
Одну мене слухав.

Ой, лягайте, дітки спати,
Я вас повкриваю,
Сама піду до куми,
Батька пошукаю.

Приходжу я до куми,
Глянула в віконце,
Сидить же мій чоловік,
Як яснеє сонце.

Вона йому чарку,
А він їй улибку,
А я того не стерпіла
Та й розбила шибку.

Прибігаю до дому,
Звісно захворіла,
Намочила рушничок,
Голову накрила.

Як приходе чоловік
Увесь у болоті,
Я питаю: Де ж ти був?
Каже: На роботі.

Хоть би швидше ніч пройшла
Та й утро настало,
Пішла б я до куми,
Новості узнала б.

Приходжу я до куми,
А кума сердита,
Чого в тебе, кумоньку,
Шибочка розбита?

Єсть у мене курка,
Курка полохлива,
Вона ж мені, кумонько,
Шибочку розбила.

Якщо будеш, кумонько,
Кума напувати,
Буде тобі курочка
Шибку розбивати');
DELETE FROM song_links WHERE song_id = 'pisniua_1169505';
DELETE FROM song_versions WHERE song_id = 'pisniua_1169505';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1169505';
DELETE FROM songs WHERE id = 'pisniua_1169505';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1169505','Ой ну, люлі, люлі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986','Сита, ситиця - мед, розведений водою, або медовий відвар (до куті).','Ой ну, люлі, люлі,
Налинули гулі.
Сіли на воротях
В червоних чоботях.
Сіли на колисці
В червонім намисті.
Стали думать і гадать,
Чим дитину годувать:
Чи вареничком
Із вареннячком,
Чи кутицею
Із ситицею,
Чи кашкою, чи борщем,
Чи по спині деркачем?','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1169505'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1169505','Ой ну, люлі, люлі','Ой ну, люлі, люлі,
Налинули гулі.
Сіли на воротях
В червоних чоботях.
Сіли на колисці
В червонім намисті.
Стали думать і гадать,
Чим дитину годувать:
Чи вареничком
Із вареннячком,
Чи кутицею
Із ситицею,
Чи кашкою, чи борщем,
Чи по спині деркачем?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1169505_l1','pisniua_1169505','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_115909';
DELETE FROM song_versions WHERE song_id = 'pisniua_115909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_115909';
DELETE FROM songs WHERE id = 'pisniua_115909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_115909','Помаранчева перемога','Музика: Оксана Вархола Слова: Оксана Вархола. Виконує: Оксана Вархола','uk','ukraine_1991',NULL,NULL,'автор','Ахтунг! mp3 є тут: http://www.shtab911.com.ua/index.php?pageid=15','Нам казали наша хата скраю,
І нічого ми не знаєм,
Нам казали всім спокійно,
Україна буде вільна.

Приспів:
Цей гарячий мирний колір помаранчі
Він не знає ні брехні, не знає й фальшу
Схід і захід ідемо на допомогу
Разом сила ми, бо з нами перемога.

Нам казали що брехня, це правда
І не буде більше кривди
Нам казали тільки б не війна,
А для чого нам вона?

Приспів:
Цей гарячий мирний колір помаранчі
Він не знає ні брехні, не знає й фальшу
Схід і захід ідемо на допомогу
Разом сила ми, бо з нами перемога.

Українці ми єдині,
Націє, ми люди вільні,
Всі ми разом Захід, Схід,
Разом будем сотні літ.

Приспів:
Цей гарячий мирний колір помаранчі
Він не знає ні брехні, не знає й фальшу
Схід і захід ідемо на допомогу
Разом сила ми, бо з нами перемога.

Ми йдемо, ми йдемо, ми йдемо, йдемо, ми переможемо','[''pisni.org.ua'', ''cat:halycki'', ''cat:himny-marshi'', ''cat:istorychni'', ''Пісні з Галичини'', ''Гимни та марші'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_115909'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_115909','Помаранчева перемога','Нам казали наша хата скраю,
І нічого ми не знаєм,
Нам казали всім спокійно,
Україна буде вільна.

Приспів:
Цей гарячий мирний колір помаранчі
Він не знає ні брехні, не знає й фальшу
Схід і захід ідемо на допомогу
Разом сила ми, бо з нами перемога.

Нам казали що брехня, це правда
І не буде більше кривди
Нам казали тільки б не війна,
А для чого нам вона?

Приспів:
Цей гарячий мирний колір помаранчі
Він не знає ні брехні, не знає й фальшу
Схід і захід ідемо на допомогу
Разом сила ми, бо з нами перемога.

Українці ми єдині,
Націє, ми люди вільні,
Всі ми разом Захід, Схід,
Разом будем сотні літ.

Приспів:
Цей гарячий мирний колір помаранчі
Він не знає ні брехні, не знає й фальшу
Схід і захід ідемо на допомогу
Разом сила ми, бо з нами перемога.

Ми йдемо, ми йдемо, ми йдемо, йдемо, ми переможемо');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_115909_l1','pisniua_115909','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1163529';
DELETE FROM song_versions WHERE song_id = 'pisniua_1163529';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1163529';
DELETE FROM songs WHERE id = 'pisniua_1163529';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1163529','Дяка','Музика: Віктор Пашник Слова: Віктор Пашник. Виконує: Віктор Пашник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ти мене продовжиш на землі -
Якось вранці сказав мені тато.
У дитинстві, як були малі,
Він добро посіяв, щоб було багато.
Ти - то я - шептала мені мама,
Приїжджай до дому, зрідка, та приїдь,
Вишила сорочку і до сонця браму
Привідкрила рано до зорі на схід.

Приспів:
Дякую, тату, за очі! Дякую, мамо, за все!
Дякую зорям за ночі, а тобі за себе!
Дякую, тату, за очі! Дякую, мамо, за все!
Дякую зорям за ночі, а тобі за себе!

Я вдивлявся в небо, йшов на схід до тебе,
І чекав, що зорі вкажуть знак.
Дорога, дорога - це безмежність Бога,
Та знайду тебе і буде так.
Я тебе кохаю, ти одна у світі,
Довго я шукав і чекала ти,
Моя рідна, мила в неповторну мить
Посміхнись - і зразу оживуть світи!

Приспів.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:pro-batkiv'', ''Бардівські пісні'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1163529'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1163529','Дяка','Ти мене продовжиш на землі -
Якось вранці сказав мені тато.
У дитинстві, як були малі,
Він добро посіяв, щоб було багато.
Ти - то я - шептала мені мама,
Приїжджай до дому, зрідка, та приїдь,
Вишила сорочку і до сонця браму
Привідкрила рано до зорі на схід.

Приспів:
Дякую, тату, за очі! Дякую, мамо, за все!
Дякую зорям за ночі, а тобі за себе!
Дякую, тату, за очі! Дякую, мамо, за все!
Дякую зорям за ночі, а тобі за себе!

Я вдивлявся в небо, йшов на схід до тебе,
І чекав, що зорі вкажуть знак.
Дорога, дорога - це безмежність Бога,
Та знайду тебе і буде так.
Я тебе кохаю, ти одна у світі,
Довго я шукав і чекала ти,
Моя рідна, мила в неповторну мить
Посміхнись - і зразу оживуть світи!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1163529_l1','pisniua_1163529','YouTube','https://www.youtube.com/watch?v=4SHhsXiVqk0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1162000';
DELETE FROM song_versions WHERE song_id = 'pisniua_1162000';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1162000';
DELETE FROM songs WHERE id = 'pisniua_1162000';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1162000','Бодай тоті Бережани вода замулила...','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. http://zhnyborody.te.ua/ 2. "Музична Україна". (1973). Записав М. Шашкевич.',NULL,'Бодай тоті Бережани вода замулила...
Не одна то мати плаче: — Нема мого сина!
Не одна то мати плаче і не одна тужить,
Не одної мати синок цісареві служить.

Не одна то мати плаче, не одна голосить:
— Нема мого сина Гриця, — вже карабін носить.
... А я гадав, же ся висплю та й піду косити, —
Зав''язали назад руки — карабін носити.

Карабіне, карабіне, клену я ти душу,
Же я, хлопець молоденький, носити тя мушу!','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1162000'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1162000','Бодай тоті Бережани вода замулила...','Бодай тоті Бережани вода замулила...
Не одна то мати плаче: — Нема мого сина!
Не одна то мати плаче і не одна тужить,
Не одної мати синок цісареві служить.

Не одна то мати плаче, не одна голосить:
— Нема мого сина Гриця, — вже карабін носить.
... А я гадав, же ся висплю та й піду косити, —
Зав''язали назад руки — карабін носити.

Карабіне, карабіне, клену я ти душу,
Же я, хлопець молоденький, носити тя мушу!');
DELETE FROM song_links WHERE song_id = 'pisniua_1170404';
DELETE FROM song_versions WHERE song_id = 'pisniua_1170404';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1170404';
DELETE FROM songs WHERE id = 'pisniua_1170404';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1170404','З нами Бог','Слова: о. І. Дуцько','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'З нами Бог - розумійте люди,
З нами Бог був і є, і буде.
Все на Нього уповайте    |
І нічогось не лякайте.   |
З нами Бог! З нами Бог!  | (2)

З нами Бог - слухайте, всі люди,
З нами Бог в кожний час і всюди.
Той над нами все чуває,  |
Той в житті нам помагає, |
З нами Бог! З нами Бог!  | (2)

З нами Бог - сильні, покоріться,
З нами Бог - можні не хваліться.
Ваша сила, хоч могутня,  |
Щезне скоро так як туча. |
З нами Бог! З нами Бог!  | (2)

З нами Бог - силою не мірте,
З нами Бог - поки час, увірте.
Що як зможетеся всилу,   |
Скоро впадете в могилу.  |
З нами Бог! З нами Бог!  | (2)    комп''ютерне відтворення  (','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1170404'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1170404','З нами Бог','З нами Бог - розумійте люди,
З нами Бог був і є, і буде.
Все на Нього уповайте    |
І нічогось не лякайте.   |
З нами Бог! З нами Бог!  | (2)

З нами Бог - слухайте, всі люди,
З нами Бог в кожний час і всюди.
Той над нами все чуває,  |
Той в житті нам помагає, |
З нами Бог! З нами Бог!  | (2)

З нами Бог - сильні, покоріться,
З нами Бог - можні не хваліться.
Ваша сила, хоч могутня,  |
Щезне скоро так як туча. |
З нами Бог! З нами Бог!  | (2)

З нами Бог - силою не мірте,
З нами Бог - поки час, увірте.
Що як зможетеся всилу,   |
Скоро впадете в могилу.  |
З нами Бог! З нами Бог!  | (2)    комп''ютерне відтворення  (');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1170404_l1','pisniua_1170404','YouTube','https://www.youtube.com/watch?v=4pVCKV6Zzqc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1164404';
DELETE FROM song_versions WHERE song_id = 'pisniua_1164404';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1164404';
DELETE FROM songs WHERE id = 'pisniua_1164404';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1164404','Маєва нічка','Музика: Лев Лепкий Слова: Лев Лепкий. Виконує: Рушничок, Марта Шпак','uk','ukraine_before_1917',NULL,NULL,NULL,'Колискова пісня Знаками питання позначені нерозбірливі місця У тексті - дулі - груші.','Маєва нічка леготом дише,
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
DELETE FROM song_links WHERE song_id = 'pisniua_1161404';
DELETE FROM song_versions WHERE song_id = 'pisniua_1161404';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1161404';
DELETE FROM songs WHERE id = 'pisniua_1161404';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1161404','Нічкою темною','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май, дует "Василечки"','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Нічкою темною зорі купалися
В хвилях прозорих Дніпра.
Нічкою темною зорі купалися
Пісня всміхалася, по небосхилу пливла.

Приспів:
Нічкою темною, нічкою темною
Зірка засяяла над Україною.
Нічкою темною, нічкою темною
Зірка засяяла над Україною.

Нічкою темною сльози непрошені,
Стали у карих очах.
Нічкою темною коні стриножені
Волю шукали в степах.

Приспів:
Нічкою темною, нічкою темною
Зірка засяяла над Україною.
Нічкою темною, нічкою темною
Зірка засяяла над Україною.

Нічкою темною рута червоная
В тихім саду розцвіла.
Нічкою темною Матінка Божая
Волю Україні дала.

Приспів:
Нічкою темною, нічкою темною
Зірка засяяла над Україною.
Нічкою темною, нічкою темною
Зірка засяяла над Україною.

Нічкою темною зорі купалися
В хвилях прозорих Дніпра.
Нічкою темною пісня всміхалася,
По небосхилу пливла.

Приспів:
Нічкою темною, нічкою темною
Зірка засяяла над Україною.
Нічкою темною, нічкою темною
Матінка Божая над Україною','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1161404'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1161404','Нічкою темною','Нічкою темною зорі купалися
В хвилях прозорих Дніпра.
Нічкою темною зорі купалися
Пісня всміхалася, по небосхилу пливла.

Приспів:
Нічкою темною, нічкою темною
Зірка засяяла над Україною.
Нічкою темною, нічкою темною
Зірка засяяла над Україною.

Нічкою темною сльози непрошені,
Стали у карих очах.
Нічкою темною коні стриножені
Волю шукали в степах.

Приспів:
Нічкою темною, нічкою темною
Зірка засяяла над Україною.
Нічкою темною, нічкою темною
Зірка засяяла над Україною.

Нічкою темною рута червоная
В тихім саду розцвіла.
Нічкою темною Матінка Божая
Волю Україні дала.

Приспів:
Нічкою темною, нічкою темною
Зірка засяяла над Україною.
Нічкою темною, нічкою темною
Зірка засяяла над Україною.

Нічкою темною зорі купалися
В хвилях прозорих Дніпра.
Нічкою темною пісня всміхалася,
По небосхилу пливла.

Приспів:
Нічкою темною, нічкою темною
Зірка засяяла над Україною.
Нічкою темною, нічкою темною
Матінка Божая над Україною');
DELETE FROM song_links WHERE song_id = 'pisniua_116202';
DELETE FROM song_versions WHERE song_id = 'pisniua_116202';
DELETE FROM songs_fts WHERE song_id = 'pisniua_116202';
DELETE FROM songs WHERE id = 'pisniua_116202';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_116202','Добрий вечір тобі, пане господарю','Українська народна пісня. Виконує: Людмила Ясінська','uk','ukraine_before_1917',NULL,NULL,'Колядки.- Львів: Каменяр, 1990.- 64 с.','Літературна обробка стародавньої Колядки. Замість акорда A можна брати A7. Акорди для тональності Am: Am G C G G E Am G C G E Am G C E Am Тут замість E можна E7. Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда) ― Святий Збір (Трійця) ― Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло. Підбір акордів: bohdanko','Добрий вечір тобі, пане господарю: ра- дуйся!
Ой радуйся, земле, Син Божий народився!

Застеляйте столи, та все килимами: радуйся!
Ой радуйся, земле, Син Божий народився!

Та кладіть калачі з ярої пшениці: радуйся!
Ой радуйся, земле, Син Божий народився!

Бо прийдуть до тебе три празники в гості: радуйся!
Ой радуйся, земле, Син Божий народився!

А що перший вже празник - Святеє Рождество: радуйся!
Ой радуйся, земле, Син Божий народився!

А другий вже празник - Святого Василя: радуйся!
Ой радуйся, земле, Син Божий народився!

А третій вже празник - Святі Водохрещі: радуйся!
Ой радуйся, земле, Син Божий народився!

А що перший празник зішле тобі втіху: радуйся!
Ой радуйся, земле, Син Божий народився!

А що другий празник зішле тобі щастя: радуйся!
Ой радуйся, земле, Син Божий народився!

А що третій празник зішле всім нам долю: радуйся!
Ой радуйся, земле, Син Божий народився!

Зішле всім нам долю, Україні волю: радуйся!
Ой радуйся, земле, Син Божий народився!','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:narodni'', ''Колядки'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_116202'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_116202','Добрий вечір тобі, пане господарю','Добрий вечір тобі, пане господарю: ра- дуйся!
Ой радуйся, земле, Син Божий народився!

Застеляйте столи, та все килимами: радуйся!
Ой радуйся, земле, Син Божий народився!

Та кладіть калачі з ярої пшениці: радуйся!
Ой радуйся, земле, Син Божий народився!

Бо прийдуть до тебе три празники в гості: радуйся!
Ой радуйся, земле, Син Божий народився!

А що перший вже празник - Святеє Рождество: радуйся!
Ой радуйся, земле, Син Божий народився!

А другий вже празник - Святого Василя: радуйся!
Ой радуйся, земле, Син Божий народився!

А третій вже празник - Святі Водохрещі: радуйся!
Ой радуйся, земле, Син Божий народився!

А що перший празник зішле тобі втіху: радуйся!
Ой радуйся, земле, Син Божий народився!

А що другий празник зішле тобі щастя: радуйся!
Ой радуйся, земле, Син Божий народився!

А що третій празник зішле всім нам долю: радуйся!
Ой радуйся, земле, Син Божий народився!

Зішле всім нам долю, Україні волю: радуйся!
Ой радуйся, земле, Син Божий народився!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_116202_l1','pisniua_116202','YouTube','https://www.youtube.com/watch?v=4932RnyP2Lg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_116202_l2','pisniua_116202','YouTube','https://www.youtube.com/watch?v=MyLzJIsbH2A','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_116202_l3','pisniua_116202','YouTube','https://www.youtube.com/watch?v=LHwyTaK5f0Y','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_116202_l4','pisniua_116202','YouTube','https://www.youtube.com/watch?v=AlgRbJl06pY','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_116202_l5','pisniua_116202','YouTube','https://www.youtube.com/watch?v=Bh-h8g1Bedc','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_116202_l6','pisniua_116202','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_1159921';
DELETE FROM song_versions WHERE song_id = 'pisniua_1159921';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1159921';
DELETE FROM songs WHERE id = 'pisniua_1159921';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1159921','Гуцульська балада','Українська народна пісня. Виконує: Остап Кіндрачук','uk','ukraine_before_1917',NULL,NULL,'Остап Кіндрачук','Цю пісню Остап Кіндрачук перейняв у свого вчителя - кобзаря О.Ф.Нирка.','Ой у Криму на риночку, гей море бре,
Купив турок гуцулочку, серце моє.    | (2)

Привів її додомоньку, гей море бре,
Зварив він їй вечероньку, серце моє.
Постелив їй постілоньку, серце моє.

Вона стала заплакала, гей море бре,
Рідні гори ізгадала, серце моє.      | (2)

- Скажи ж мені, моя мила, гей море бре,
А скількох ти братів мала? Серце моє.    | (2)

- Один згинув в Мадярщині, гей море бре,
Другий пропав в Татарщині, серце моє.    | (2)

Третій та й на кобзі грає, гей море бре,
З козаками п''є-гуляє, серце моє.    | (2)

- Дєкую ж ти, моя мила, гей море бре,
Що ти мені оповіла, серце моє.      | (2)

Бо ти ж моя сестра рідна, гей море бре,
Сестра рідна — жінка вірна, серце моє.    | (2)

Ой у Криму на риночку, гей море бре,
Купив турок гуцулочку, серце моє.   | (2)','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1159921'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1159921','Гуцульська балада','Ой у Криму на риночку, гей море бре,
Купив турок гуцулочку, серце моє.    | (2)

Привів її додомоньку, гей море бре,
Зварив він їй вечероньку, серце моє.
Постелив їй постілоньку, серце моє.

Вона стала заплакала, гей море бре,
Рідні гори ізгадала, серце моє.      | (2)

- Скажи ж мені, моя мила, гей море бре,
А скількох ти братів мала? Серце моє.    | (2)

- Один згинув в Мадярщині, гей море бре,
Другий пропав в Татарщині, серце моє.    | (2)

Третій та й на кобзі грає, гей море бре,
З козаками п''є-гуляє, серце моє.    | (2)

- Дєкую ж ти, моя мила, гей море бре,
Що ти мені оповіла, серце моє.      | (2)

Бо ти ж моя сестра рідна, гей море бре,
Сестра рідна — жінка вірна, серце моє.    | (2)

Ой у Криму на риночку, гей море бре,
Купив турок гуцулочку, серце моє.   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_1170127';
DELETE FROM song_versions WHERE song_id = 'pisniua_1170127';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1170127';
DELETE FROM songs WHERE id = 'pisniua_1170127';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1170127','Пізня осінь','Музика: Василь Дунець Слова: Наталія Папроцька. Виконує: Василь Дунець','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Глибока осінь у садку кружляє листя у танку,
Від вітру дужого сльозливі завивання.
І пригадалися мені                     |
Мого кохання давні дні                 |
І мить коротка нашого прощання.        | (2)

В ту осінь давню повернусь,
"Коханий, я не забарюсь!" -
Сказала ти і відпустила мою руку.
Якби ж знатя, якби знатя,              |
Що не на мить, а на життя,             |
На все життя розтягнеться розлука.     | (2)

Холодні дні, холодні дні,
Ви не дошкулите мені,
Бо у душі і так тепла вже не зосталось.
Багряним дистом замело і все найгірше, |
Що могло в моєму трапитись житті,      |
Давно вже сталось.                     | (2)

Для мене осінь від тих пір,
Як лютий ворог, хижий звір,
В осиротілім серці будить давню муку.
В німому докорі літа,                  |
Мабуть, все б сталося не так,          |
Якби тоді не відпустив я твою руку...  | (2)

Глибока осінь у садку кружляє листя у танку,
Від вітру дужого сльозливі завивання.
І пригадалися мені                     |
Мого кохання давні дні                 |
І мить коротка нашого прощання.        | (2)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1170127'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1170127','Пізня осінь','Глибока осінь у садку кружляє листя у танку,
Від вітру дужого сльозливі завивання.
І пригадалися мені                     |
Мого кохання давні дні                 |
І мить коротка нашого прощання.        | (2)

В ту осінь давню повернусь,
"Коханий, я не забарюсь!" -
Сказала ти і відпустила мою руку.
Якби ж знатя, якби знатя,              |
Що не на мить, а на життя,             |
На все життя розтягнеться розлука.     | (2)

Холодні дні, холодні дні,
Ви не дошкулите мені,
Бо у душі і так тепла вже не зосталось.
Багряним дистом замело і все найгірше, |
Що могло в моєму трапитись житті,      |
Давно вже сталось.                     | (2)

Для мене осінь від тих пір,
Як лютий ворог, хижий звір,
В осиротілім серці будить давню муку.
В німому докорі літа,                  |
Мабуть, все б сталося не так,          |
Якби тоді не відпустив я твою руку...  | (2)

Глибока осінь у садку кружляє листя у танку,
Від вітру дужого сльозливі завивання.
І пригадалися мені                     |
Мого кохання давні дні                 |
І мить коротка нашого прощання.        | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1170127_l1','pisniua_1170127','YouTube','https://www.youtube.com/watch?v=cq9MvyU9g9E','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1170725';
DELETE FROM song_versions WHERE song_id = 'pisniua_1170725';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1170725';
DELETE FROM songs WHERE id = 'pisniua_1170725';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1170725','Господи, помилуй',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Господи, помилуй, Господи, прости,
Допоможи, Боже, хрест мій донести.
Так я ж сам пройшов Ти дорогу Хреста, |
Мужньо, терпеливо - це моя мета!      | (2)

Ти за нас розп''ятий стільки все терпів
І болів, молився Ти за ворогів,
Та замість любови щирої за те,        |
Я гріхами важко образив Тебе.         | (2)

Я — великий грішник на оцій землі,
Господи, благаю, Ти прости мені!
Поможи, о Боже, дай багато сил,       |
Щоб свої я в серці пристрасті згасив. | (2)

Хочу за покуту понести хрест Твій,
В нім верни мені Ти радість і спокій,
В нім життя навчуся чесно провести.   |
Господи, помилуй! Господи, прости!    | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:strasni'', ''Церковні пісні'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1170725'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1170725','Господи, помилуй','Господи, помилуй, Господи, прости,
Допоможи, Боже, хрест мій донести.
Так я ж сам пройшов Ти дорогу Хреста, |
Мужньо, терпеливо - це моя мета!      | (2)

Ти за нас розп''ятий стільки все терпів
І болів, молився Ти за ворогів,
Та замість любови щирої за те,        |
Я гріхами важко образив Тебе.         | (2)

Я — великий грішник на оцій землі,
Господи, благаю, Ти прости мені!
Поможи, о Боже, дай багато сил,       |
Щоб свої я в серці пристрасті згасив. | (2)

Хочу за покуту понести хрест Твій,
В нім верни мені Ти радість і спокій,
В нім життя навчуся чесно провести.   |
Господи, помилуй! Господи, прости!    | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_116505';
DELETE FROM song_versions WHERE song_id = 'pisniua_116505';
DELETE FROM songs_fts WHERE song_id = 'pisniua_116505';
DELETE FROM songs WHERE id = 'pisniua_116505';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_116505','Нова радість стала ***','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'народ','Пісня співається на популярну мелодію колядки "Нова радість стала"','Нова радість стала,
яка не бувала,
цього року в Україні  | (2)
Революція настала.    |

Тисячі народу
в Київ приїжджають,
щоби правду доказати,   | (2)
Кучми банду розігнати.  |

Кучма й Янукович
нарід обдурили,
все багатство в Україні  | (2)
між собою розділили.     |

Медведчук керує,
Суркіс помагає,
Кучма разом з своїм зятем   | (2)
Україну обдирає.            |

Віли збудували,
землі розікрали,
всі заводи викупили     | (2)
і весь нарід обдурили.  |

Але нас багато,
нас не подолати,
і немає тої сили,           | (2)
щоб у рабство нас загнати.  |

І ми просим Бога
нам допомагати,
щоби Ющенка вже скоро   | (2)
Президентом називати.   |','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_116505'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_116505','Нова радість стала ***','Нова радість стала,
яка не бувала,
цього року в Україні  | (2)
Революція настала.    |

Тисячі народу
в Київ приїжджають,
щоби правду доказати,   | (2)
Кучми банду розігнати.  |

Кучма й Янукович
нарід обдурили,
все багатство в Україні  | (2)
між собою розділили.     |

Медведчук керує,
Суркіс помагає,
Кучма разом з своїм зятем   | (2)
Україну обдирає.            |

Віли збудували,
землі розікрали,
всі заводи викупили     | (2)
і весь нарід обдурили.  |

Але нас багато,
нас не подолати,
і немає тої сили,           | (2)
щоб у рабство нас загнати.  |

І ми просим Бога
нам допомагати,
щоби Ющенка вже скоро   | (2)
Президентом називати.   |');
DELETE FROM song_links WHERE song_id = 'pisniua_1171000';
DELETE FROM song_versions WHERE song_id = 'pisniua_1171000';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1171000';
DELETE FROM songs WHERE id = 'pisniua_1171000';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1171000','Христос воскрес!','Музика: А. Гнатишин Слова: о. В. Б. Мендрунь','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Христос воскрес!
Воскрес Спаситель з гробу,
Покинув Він землі утробу.
Адаме, зведись, Христу поклонись!
Діти, заспівайте! Єво, веселись!
Гуслі взяв Давид, відчинився скит, -
Душі з заду йдуть, в небо вільна путь.
Будь же славен, Боже Вседержителю!

Христос воскрес!
Воскрес Спаситель з гробу,
Покинув Він землі утробу.
Адаме, зведись, Христу поклонись!
Діти, заспівайте! Єво, веселись!
Миро — лиш мерцям, Воскресіння — нам!
Стогне фарисей, очі звів Мойсей:
Будь же славен, Боже Вседержителю!

Христос воскрес!
Воскрес Спаситель з гробу,
Покинув Він землі утробу.
Адаме, зведись, Христу поклонись!
Діти, заспівайте! Єво, веселись!
Хай же пісня ця лине до Творця.
До кінця віків — України спів:
Будь же славен, Боже Вседержителю!','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:voskresni'', ''Церковні пісні'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1171000'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1171000','Христос воскрес!','Христос воскрес!
Воскрес Спаситель з гробу,
Покинув Він землі утробу.
Адаме, зведись, Христу поклонись!
Діти, заспівайте! Єво, веселись!
Гуслі взяв Давид, відчинився скит, -
Душі з заду йдуть, в небо вільна путь.
Будь же славен, Боже Вседержителю!

Христос воскрес!
Воскрес Спаситель з гробу,
Покинув Він землі утробу.
Адаме, зведись, Христу поклонись!
Діти, заспівайте! Єво, веселись!
Миро — лиш мерцям, Воскресіння — нам!
Стогне фарисей, очі звів Мойсей:
Будь же славен, Боже Вседержителю!

Христос воскрес!
Воскрес Спаситель з гробу,
Покинув Він землі утробу.
Адаме, зведись, Христу поклонись!
Діти, заспівайте! Єво, веселись!
Хай же пісня ця лине до Творця.
До кінця віків — України спів:
Будь же славен, Боже Вседержителю!');
DELETE FROM song_links WHERE song_id = 'pisniua_1171024';
DELETE FROM song_versions WHERE song_id = 'pisniua_1171024';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1171024';
DELETE FROM songs WHERE id = 'pisniua_1171024';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1171024','Христос воскрес, велично дзвін',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Христос воскрес, велично дзвін
Воскресний залунав,
А Тому честь, Тому поклін,      |
Хто смерті власть стоптав!      | (2)

Христос воскрес і правда з Ним
Свята воскресла вмить,
А щезла вся пітьма, як дим,     |
Що з вітром в світ летить.      | (2)

Христос воскрес, бо вмерли ті,
Що в них царем ярмо,
Бо зникли враз, як віск в огні, |
Що тає на нічо.                 | (2)

Христос воскрес, радіє враз
Неволений народ,
Бо то йому прийшов з Ним час    |
Воскресення свобод.             | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:voskresni'', ''Церковні пісні'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1171024'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1171024','Христос воскрес, велично дзвін','Христос воскрес, велично дзвін
Воскресний залунав,
А Тому честь, Тому поклін,      |
Хто смерті власть стоптав!      | (2)

Христос воскрес і правда з Ним
Свята воскресла вмить,
А щезла вся пітьма, як дим,     |
Що з вітром в світ летить.      | (2)

Христос воскрес, бо вмерли ті,
Що в них царем ярмо,
Бо зникли враз, як віск в огні, |
Що тає на нічо.                 | (2)

Христос воскрес, радіє враз
Неволений народ,
Бо то йому прийшов з Ним час    |
Воскресення свобод.             | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1171024_l1','pisniua_1171024','YouTube','https://www.youtube.com/watch?v=j9vgdU7ZrQI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1171303';
DELETE FROM song_versions WHERE song_id = 'pisniua_1171303';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1171303';
DELETE FROM songs WHERE id = 'pisniua_1171303';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1171303','Під Твій покров святий',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Під Твій покров святий, Діво Свята,
Прийми дітей своїх, о, Всеблага.
Маріє, наш покров,  |
На поміч все готов! |
Маріє, наша любов!  | (2)

Пречиста Діво, Господній храме,
Просим Тя, молим, змилуйсь над нами.
Маріє, наш покров,  |
На поміч все готов! |
Маріє, наша любов!  | (2)

Родшая Світло, нетлінний цвіте,
Зглянься, о, зглянься на Твої діти.
Маріє, наш покров,  |
На поміч все готов! |
Маріє, наша любов!  | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''cat:do-bohorodyci'', ''Церковні пісні'', ''Пісні на християнську тематику'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1171303'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1171303','Під Твій покров святий','Під Твій покров святий, Діво Свята,
Прийми дітей своїх, о, Всеблага.
Маріє, наш покров,  |
На поміч все готов! |
Маріє, наша любов!  | (2)

Пречиста Діво, Господній храме,
Просим Тя, молим, змилуйсь над нами.
Маріє, наш покров,  |
На поміч все готов! |
Маріє, наша любов!  | (2)

Родшая Світло, нетлінний цвіте,
Зглянься, о, зглянься на Твої діти.
Маріє, наш покров,  |
На поміч все готов! |
Маріє, наша любов!  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_1171303_l1','pisniua_1171303','YouTube','https://www.youtube.com/watch?v=5Xrmmbq5-vY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_1170707';
DELETE FROM song_versions WHERE song_id = 'pisniua_1170707';
DELETE FROM songs_fts WHERE song_id = 'pisniua_1170707';
DELETE FROM songs WHERE id = 'pisniua_1170707';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_1170707','Вже з христа Тебе здіймають',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Вже з христа Тебе здіймають,
В плащаницю обвивають,
В плащаницю обвивають.

Мати Божа припадає,
Мертве тіло обіймає,
Мертве тіло обіймає:

"Люди, що ви, що вчинили? —
3а що мого Сина вбили?
3а що мого Сина вбили?

Я ж казала із сльозами:
Ви вб''єте Його гріхами,
Ви вб''єте Його гріхами.

Чи хто може більш страдати,
Як я нині, Його мати?
Як я нині, Його мати?

В темнім гробі вже спочило
Найсвятіше Спаса тіло,
Найсвятіше Спаса тіло.

Хто з нас каятись не стане,
Як на гріб Ісуса гляне?
Як на гріб Ісуса гляне?

Плиньте, сльози, упливайте,
3 гріхів душу обмивайте,
3 гріхів душу обмивайте.

Щоб колись в гріховній злобі
Не спочили в вічнім гробі,
Не спочили в вічнім гробі!"','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:strasni'', ''Церковні пісні'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_1170707'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_1170707','Вже з христа Тебе здіймають','Вже з христа Тебе здіймають,
В плащаницю обвивають,
В плащаницю обвивають.

Мати Божа припадає,
Мертве тіло обіймає,
Мертве тіло обіймає:

"Люди, що ви, що вчинили? —
3а що мого Сина вбили?
3а що мого Сина вбили?

Я ж казала із сльозами:
Ви вб''єте Його гріхами,
Ви вб''єте Його гріхами.

Чи хто може більш страдати,
Як я нині, Його мати?
Як я нині, Його мати?

В темнім гробі вже спочило
Найсвятіше Спаса тіло,
Найсвятіше Спаса тіло.

Хто з нас каятись не стане,
Як на гріб Ісуса гляне?
Як на гріб Ісуса гляне?

Плиньте, сльози, упливайте,
3 гріхів душу обмивайте,
3 гріхів душу обмивайте.

Щоб колись в гріховній злобі
Не спочили в вічнім гробі,
Не спочили в вічнім гробі!"');
