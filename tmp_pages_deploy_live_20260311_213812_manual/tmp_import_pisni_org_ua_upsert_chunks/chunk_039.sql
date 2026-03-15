DELETE FROM song_links WHERE song_id = 'pisniua_4353131';
DELETE FROM song_versions WHERE song_id = 'pisniua_4353131';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4353131';
DELETE FROM songs WHERE id = 'pisniua_4353131';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4353131','Новорічна пісня','Музика: Toloka Слова: Toloka. Виконує: Toloka','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Все на дворі замело,
Наче біле полотно.
Вкриті села і міста,
Всі дерева і поля.
Прикрасилася хатинка,
Бо стоїть в неї ялинка,
Вся гірляндами засяє,
Нам про свято нагадає!

Приспів:
Новий Рік по світу ходить,  |
В кожну хату він приходить! |
Всім дарує радість, сміх,   |
З Новим Роком Вас усіх!     | (2)

В Новий Рік куранти б''ють!
Люди всі шампанське п''ють,
Один одного вітають,
Всі бажання загадають,
Щоб був мир в нас на землі,
Всім здоров''я у сім''ї,
Щоб були усі щасливі,
Всі багаті і вродливі!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4353131'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4353131','Новорічна пісня','Все на дворі замело,
Наче біле полотно.
Вкриті села і міста,
Всі дерева і поля.
Прикрасилася хатинка,
Бо стоїть в неї ялинка,
Вся гірляндами засяє,
Нам про свято нагадає!

Приспів:
Новий Рік по світу ходить,  |
В кожну хату він приходить! |
Всім дарує радість, сміх,   |
З Новим Роком Вас усіх!     | (2)

В Новий Рік куранти б''ють!
Люди всі шампанське п''ють,
Один одного вітають,
Всі бажання загадають,
Щоб був мир в нас на землі,
Всім здоров''я у сім''ї,
Щоб були усі щасливі,
Всі багаті і вродливі!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4353131_l1','pisniua_4353131','YouTube','https://www.youtube.com/watch?v=RIHaM_-1ADw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4355481';
DELETE FROM song_versions WHERE song_id = 'pisniua_4355481';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4355481';
DELETE FROM songs WHERE id = 'pisniua_4355481';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4355481','Буде все гаразд','Музика: Дмитро Сидоров Слова: Діана Гольде. Виконує: Marietta Ways','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Нехай хвилини тануть
І радість нам дарують,
А свято прилітає
На крилах снігових,
Нехай розтане лід образ,
І стане враз
Краще кращого у нас.

Приспів:
Хай настане рік,
Світлий і новий,
Як світанок настає!
Хай приносить рік
Щастя в рукаві,
Щастя кожному своє!
Знаю, що у всіх у нас
Завжди буде все гаразд!

Хай посмішки яскраві,
Як зорі ніжно сяють,
Від краю і до краю,
Аж до самих небес.
І в кожнім домі
Хай завжди буде любов
І ніякої біди!

Приспів.

Сьогодні ніч особлива,
Казкова і чарівна,
І дивно в кожній хвилині
Для кожного із нас
Підхопить вітер бажання,
Почує янгол слова!
Усім добра і кохання,
З Новим роком Вас!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4355481'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4355481','Буде все гаразд','Нехай хвилини тануть
І радість нам дарують,
А свято прилітає
На крилах снігових,
Нехай розтане лід образ,
І стане враз
Краще кращого у нас.

Приспів:
Хай настане рік,
Світлий і новий,
Як світанок настає!
Хай приносить рік
Щастя в рукаві,
Щастя кожному своє!
Знаю, що у всіх у нас
Завжди буде все гаразд!

Хай посмішки яскраві,
Як зорі ніжно сяють,
Від краю і до краю,
Аж до самих небес.
І в кожнім домі
Хай завжди буде любов
І ніякої біди!

Приспів.

Сьогодні ніч особлива,
Казкова і чарівна,
І дивно в кожній хвилині
Для кожного із нас
Підхопить вітер бажання,
Почує янгол слова!
Усім добра і кохання,
З Новим роком Вас!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4355481_l1','pisniua_4355481','YouTube','https://www.youtube.com/watch?v=-g1GbAz19ZE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4352436';
DELETE FROM song_versions WHERE song_id = 'pisniua_4352436';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4352436';
DELETE FROM songs WHERE id = 'pisniua_4352436';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4352436','Коли замерзла річка','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Коли замерзла річка
І став біленьким гай,
Прийшов у темну нічку
На землю Миколай.

Прийшов, прийшов           |
На землю Миколай!          | (2)

Від хати і до хати
Снігами через лід,
Спішить, спішить завзято
Старенький, сивий дід!
Спішить, спішить           |
Старенький, сивий дід!     | (2)

Він завжди до нас спішить! | (3)

Старенький сивий дід!

Він в шапці-невидимці
І в теплім кожушку,
Приніс усім гостинці
В чарівному мішку.
Приніс, приніс             |
В чарівному мішку.         | (2)

Подарунки нам приніс       | (3)
В чарівному мішку!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4352436'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4352436','Коли замерзла річка','Коли замерзла річка
І став біленьким гай,
Прийшов у темну нічку
На землю Миколай.

Прийшов, прийшов           |
На землю Миколай!          | (2)

Від хати і до хати
Снігами через лід,
Спішить, спішить завзято
Старенький, сивий дід!
Спішить, спішить           |
Старенький, сивий дід!     | (2)

Він завжди до нас спішить! | (3)

Старенький сивий дід!

Він в шапці-невидимці
І в теплім кожушку,
Приніс усім гостинці
В чарівному мішку.
Приніс, приніс             |
В чарівному мішку.         | (2)

Подарунки нам приніс       | (3)
В чарівному мішку!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4352436_l1','pisniua_4352436','YouTube','https://www.youtube.com/watch?v=ZHKqf12GCH8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_435532';
DELETE FROM song_versions WHERE song_id = 'pisniua_435532';
DELETE FROM songs_fts WHERE song_id = 'pisniua_435532';
DELETE FROM songs WHERE id = 'pisniua_435532';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_435532','Йшли бійці до бою та й через поля','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1957','1. Пісні з Львівщини. - К.: Музична Україна, 1988. - С. 128.','Записана 1957 року в м. Дрогобичі Львівської області від Л. С. Борисюк. Із джерела не зовсім зрозуміло як співати в''язки 2-7, оскільки вони відрізняються будовою другого рядка від першої в''язки. Один з варіантів виконання поданий у нотному додатку.','Йшли бійці до бою та й через поля,
Всі вони кричали: "Прощай Україна!"    |(2)

Йшли бійці до бою через долину,
Не один покинув вірну дівчину.         |(2)

Ой там старий батько окопи копав,
Він здалека бачив як боєць упав.       |(2)

Сам собі не вірив, ні своїм очам,
Як надійшов ближче, - сина упізнав.    |(2)

- Чи ти, сину, ранен, чи вбитий лежиш?
Відкрий, рідний, очі, на світ подивись!|(2)

- Я,батьку, не ранен, а вбитий лежу,
Візьми штири дошки, збий мені труну.   |(2)

Візьми штири дошки, збий домовину,
Посади на гробі красну калину.         |(2)','[''pisni.org.ua'', ''cat:halycki'', ''cat:rekrutski'', ''Пісні з Галичини'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_435532'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_435532','Йшли бійці до бою та й через поля','Йшли бійці до бою та й через поля,
Всі вони кричали: "Прощай Україна!"    |(2)

Йшли бійці до бою через долину,
Не один покинув вірну дівчину.         |(2)

Ой там старий батько окопи копав,
Він здалека бачив як боєць упав.       |(2)

Сам собі не вірив, ні своїм очам,
Як надійшов ближче, - сина упізнав.    |(2)

- Чи ти, сину, ранен, чи вбитий лежиш?
Відкрий, рідний, очі, на світ подивись!|(2)

- Я,батьку, не ранен, а вбитий лежу,
Візьми штири дошки, збий мені труну.   |(2)

Візьми штири дошки, збий домовину,
Посади на гробі красну калину.         |(2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4354134';
DELETE FROM song_versions WHERE song_id = 'pisniua_4354134';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4354134';
DELETE FROM songs WHERE id = 'pisniua_4354134';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4354134','Дружині','Музика: Михайло Гандзола Слова: Михайло Гандзола. Виконує: Павло Доскоч','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В твоїх очах десь на самому дні
Моє кохання спокій відшукало,
Вже скільки літ не віриться мені,
Що разом ми, але цього замало...
Свій кожен день присвячую тобі
І з радістю до серця пригортаю,
А вдосвіт сонця хочеться мені
Шепнути сонній: Я тебе кохаю!..

Приспів:
Усе тому, що ти - моє кохання! |
Усе тому, що ти - моя єдина!   |
Усе тому, що діти є у нас!     |
Усе тому, що ти - моя дружина! | (2)

В твоїх очах з''явилася сльоза,
Яку від щастя витерти забула,
Коли на світ з''явилось немовля
І перший крик його тоді почула.
Для тебе я у долі повсякчас
Прошу лише щасливі світлі днини!
І знай, що промовляю кожен раз
Слова кохання тільки для дружини!

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4354134'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4354134','Дружині','В твоїх очах десь на самому дні
Моє кохання спокій відшукало,
Вже скільки літ не віриться мені,
Що разом ми, але цього замало...
Свій кожен день присвячую тобі
І з радістю до серця пригортаю,
А вдосвіт сонця хочеться мені
Шепнути сонній: Я тебе кохаю!..

Приспів:
Усе тому, що ти - моє кохання! |
Усе тому, що ти - моя єдина!   |
Усе тому, що діти є у нас!     |
Усе тому, що ти - моя дружина! | (2)

В твоїх очах з''явилася сльоза,
Яку від щастя витерти забула,
Коли на світ з''явилось немовля
І перший крик його тоді почула.
Для тебе я у долі повсякчас
Прошу лише щасливі світлі днини!
І знай, що промовляю кожен раз
Слова кохання тільки для дружини!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4354134_l1','pisniua_4354134','YouTube','https://www.youtube.com/watch?v=1a8bfcS09pU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_435434';
DELETE FROM song_versions WHERE song_id = 'pisniua_435434';
DELETE FROM songs_fts WHERE song_id = 'pisniua_435434';
DELETE FROM songs WHERE id = 'pisniua_435434';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_435434','Ой летіла Горлиця через Сад','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Співаймо Світові-Дитині © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Пара — любощі: Курочка/Перо. Гаїлки-Великдень: Українське Різдво та Відродження Світа. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаївки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... Десь узялася Молода Дівчина. Йшла Дівчина на Гаївку Пір''ячко збирала. Любімося Серденько в один лад. Листки з приводу цієї Пісні: Коляда і Великдень: Різдво і Відродження Світа. Вербний Тиждень і Шутка. Гаїлки-Великдень: Українське Свято Відродження Світа. (Вибір Пісень) Про Українські назви місяців Марець і Май. Еротичні містерії, тиждень від Катерини 7.12 до Калети. Еротичні містерії, Калета 13.12 - Передріздвяний Святочний час. Стежки до інших листків про Українські пісні.','Ой летіла Горлиця через Сад через Сад гей!
Розпустила Пір''ячко на весь Сад гей на весь Сад!

Ой хто ж теє Пір''ячко ізбере-ізбере гей!
Отой мене Молодую забере гей забере!

На Курочці Пір''ячко Рябеє-Рябеє гей!
Любімося Серденько обоє гей обоє!

На Курочці Пір''ячко в один ряд в один ряд гей!
Любімося Серденько в один лад гей в один лад!','[''pisni.org.ua'', ''cat:vesilni'', ''cat:vesnyanky-hayivky'', ''cat:zeleni-svyata'', ''Весільні пісні'', ''Веснянки та гаївки'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_435434'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_435434','Ой летіла Горлиця через Сад','Ой летіла Горлиця через Сад через Сад гей!
Розпустила Пір''ячко на весь Сад гей на весь Сад!

Ой хто ж теє Пір''ячко ізбере-ізбере гей!
Отой мене Молодую забере гей забере!

На Курочці Пір''ячко Рябеє-Рябеє гей!
Любімося Серденько обоє гей обоє!

На Курочці Пір''ячко в один ряд в один ряд гей!
Любімося Серденько в один лад гей в один лад!');
DELETE FROM song_links WHERE song_id = 'pisniua_4355137';
DELETE FROM song_versions WHERE song_id = 'pisniua_4355137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4355137';
DELETE FROM songs WHERE id = 'pisniua_4355137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4355137','Сиджу я в лісі',NULL,'uk','ukr_ssr_1919_1991',NULL,NULL,NULL,NULL,'Сиджу я в лісі під кущами,
Бачу своє рідне село,
В ріднім селі чути співають,
А в мене серденько звело...

В криївці - нічка холодная...
Лягаю спати на полу...
Чи прийде мила, чи не скаже:
"Вставай, миленький, постелю!.."

В криївці - нічка холодная:
Лягаю спати на часок.
Чи прийде мила, чи не скаже:
"Вставай, миленький, пий чайок".

Давно за північ, та не спиться,
Снуються думи в голові:
"Чи доживу я, чи побачу
Вкраїну вільну, не в ярмі?"

Стою край лісу під кущами:
Усе заснуло, все мовчить,
Лиш зорі так привітно сяють
Та в мене серденько болить...','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4355137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4355137','Сиджу я в лісі','Сиджу я в лісі під кущами,
Бачу своє рідне село,
В ріднім селі чути співають,
А в мене серденько звело...

В криївці - нічка холодная...
Лягаю спати на полу...
Чи прийде мила, чи не скаже:
"Вставай, миленький, постелю!.."

В криївці - нічка холодная:
Лягаю спати на часок.
Чи прийде мила, чи не скаже:
"Вставай, миленький, пий чайок".

Давно за північ, та не спиться,
Снуються думи в голові:
"Чи доживу я, чи побачу
Вкраїну вільну, не в ярмі?"

Стою край лісу під кущами:
Усе заснуло, все мовчить,
Лиш зорі так привітно сяють
Та в мене серденько болить...');
DELETE FROM song_links WHERE song_id = 'pisniua_43583';
DELETE FROM song_versions WHERE song_id = 'pisniua_43583';
DELETE FROM songs_fts WHERE song_id = 'pisniua_43583';
DELETE FROM songs WHERE id = 'pisniua_43583';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_43583','По всьому світу сталась новина','Українська народна пісня. Виконує: Хор Оболонь','uk','ukraine_before_1917',NULL,NULL,'народна коляда',NULL,'По всьому світу сталась новина:
Діва Марія Сина зродила,
Сіном притрусила,
В яслах положила
Господнього Сина.         | (2)

Діва Марія Бога просила:
"В що ж би я Сина свого повила?"
Ти, небесний Царю,
Зішли свої дари
Цього дому господарю.     | (2)

Зійшли анголи з неба до землі,
Принесли дари Діві Марії:
Три свічі воскові,
Ще й ризи шовкові
Ісусові Христові.         | (2)

Прийшли три царі зі східної землі,
Принесли дари Діві Марії:
Покірно складають
І поклін віддають
Ісусові Христові.         | (2)

Ой, засіяла звізда на небі,
Прийшли ангели к Діві Марії,
Співають Їй пісні
Господній Невісті,
І радість приносять.      | (2)','[''pisni.org.ua'', ''cat:christian'', ''cat:halycki'', ''cat:kolyadky'', ''cat:narodni'', ''Пісні на християнську тематику'', ''Пісні з Галичини'', ''Колядки'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_43583'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_43583','По всьому світу сталась новина','По всьому світу сталась новина:
Діва Марія Сина зродила,
Сіном притрусила,
В яслах положила
Господнього Сина.         | (2)

Діва Марія Бога просила:
"В що ж би я Сина свого повила?"
Ти, небесний Царю,
Зішли свої дари
Цього дому господарю.     | (2)

Зійшли анголи з неба до землі,
Принесли дари Діві Марії:
Три свічі воскові,
Ще й ризи шовкові
Ісусові Христові.         | (2)

Прийшли три царі зі східної землі,
Принесли дари Діві Марії:
Покірно складають
І поклін віддають
Ісусові Христові.         | (2)

Ой, засіяла звізда на небі,
Прийшли ангели к Діві Марії,
Співають Їй пісні
Господній Невісті,
І радість приносять.      | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_43583_l1','pisniua_43583','YouTube','https://www.youtube.com/watch?v=PeK2VssqyZY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_43583_l2','pisniua_43583','YouTube','https://www.youtube.com/watch?v=NMXkmHRpDsg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_435931';
DELETE FROM song_versions WHERE song_id = 'pisniua_435931';
DELETE FROM songs_fts WHERE song_id = 'pisniua_435931';
DELETE FROM songs WHERE id = 'pisniua_435931';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_435931','Жовтень 90','(Києве, стань-но! Січ, пробудись!). Музика: Олег Покальчук Слова: Олег Покальчук. Виконує: Калєкція','uk','ukraine_1991',NULL,NULL,NULL,'Пісню написав пл. сен. Олег Покальчук, ЧК. Підбір акордів: Гуру','Влада не хоче слухати слів,
Страйк — наша зброя, страйк — наше право.
Станьмо на площі, часу посли,
Серцем до серця, лава до лави.

Приспів:
Києве, стань-но! Січ, пробудись!
Львове, не дай заснути!
Ми вже не ті, що були колись,
Площа — це наші Крути.

Нам остогидло чути: "Заждіть!
Нехай-но старші скелю лупають!"
Годі! Сьогодні, як і завжди,
Курінь студентський не відступає!

Приспів.

Можна ужити палки і газ,
Долі зламати і знести шатра.
Але займеться врешті від нас
Всеукраїнська визвольна ватра.

Приспів.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:suspilno-politychni'', ''Бардівські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_435931'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_435931','Жовтень 90','Влада не хоче слухати слів,
Страйк — наша зброя, страйк — наше право.
Станьмо на площі, часу посли,
Серцем до серця, лава до лави.

Приспів:
Києве, стань-но! Січ, пробудись!
Львове, не дай заснути!
Ми вже не ті, що були колись,
Площа — це наші Крути.

Нам остогидло чути: "Заждіть!
Нехай-но старші скелю лупають!"
Годі! Сьогодні, як і завжди,
Курінь студентський не відступає!

Приспів.

Можна ужити палки і газ,
Долі зламати і знести шатра.
Але займеться врешті від нас
Всеукраїнська визвольна ватра.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_435931_l1','pisniua_435931','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_435685';
DELETE FROM song_versions WHERE song_id = 'pisniua_435685';
DELETE FROM songs_fts WHERE song_id = 'pisniua_435685';
DELETE FROM songs WHERE id = 'pisniua_435685';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_435685','Зродилися теркы','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. О. Гижа. Українські народні пісні з Лемківщини. - К.: Музична Україна, 1972. С 106. 2. Маковицькі нути. Збірник народних пісень з окружних конкурсів "Маковицька струна". - Братислава, 1997.','*1-*6 Відміни подані за джерелом 2. У тексті відновлена літера "ы", притаманна лемківській говірці. Ноти у джерелі 1 ідентичні нотам із джерела 2 (відрізняються лише третьою нотою першого такту, можливо, це помилка). Аналіз варіантів пісні читайте тут: Зродили ся теркы.','Зродили ся теркы за горами,
Підеме мы на ні з кошыками,*1
Будеме торгати, будеме ламати,          |
З конарями, з конарями.                 |(2)

Пришов бы я до вас каждий вечір,*2
Жебы-сте мі дали, што бы я хтів:
Тото дівча шварне, што ма очка чорні,*3 |
То бы я хтів, то бы я хтів.             |(2)

Пришов бы я до вас каждий вечір,*2
Жебы-сте мі дали, што бы я хтів:
На мисочку лену и шварну Олену,*4       |
То бы я хтів, то бы я хтів.             |(2)

Пришов бы я до вас каждий вечір,*2
Пред вашими дверми велька мочар,
Прелож, мила, дручкы, прейду помалючкы  |
Каждий вечер, каждий вечер.             |(2)

Пришла бы я до вас, кед бы-м сміла,*5
Жебы-сте мі дали, што бы-м хтіла:
Того шугаїчка, што ма чорні очка,*6     |
То бы-м хтіла, то бы-м хтіла.           |(2)
*1 Підеме мы на них з кошыками;

*2 Пришов бы я до вас каждий вечур;

*3 Тото дівча шварне, што мать очка чорні;

*4 На мисочку лену и шварну Гелену;

*5 Пришла бы я до вас, кедь бы-м сміла;

*6 Того шугаїчка, што мать чорні очка','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_435685'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_435685','Зродилися теркы','Зродили ся теркы за горами,
Підеме мы на ні з кошыками,*1
Будеме торгати, будеме ламати,          |
З конарями, з конарями.                 |(2)

Пришов бы я до вас каждий вечір,*2
Жебы-сте мі дали, што бы я хтів:
Тото дівча шварне, што ма очка чорні,*3 |
То бы я хтів, то бы я хтів.             |(2)

Пришов бы я до вас каждий вечір,*2
Жебы-сте мі дали, што бы я хтів:
На мисочку лену и шварну Олену,*4       |
То бы я хтів, то бы я хтів.             |(2)

Пришов бы я до вас каждий вечір,*2
Пред вашими дверми велька мочар,
Прелож, мила, дручкы, прейду помалючкы  |
Каждий вечер, каждий вечер.             |(2)

Пришла бы я до вас, кед бы-м сміла,*5
Жебы-сте мі дали, што бы-м хтіла:
Того шугаїчка, што ма чорні очка,*6     |
То бы-м хтіла, то бы-м хтіла.           |(2)
*1 Підеме мы на них з кошыками;

*2 Пришов бы я до вас каждий вечур;

*3 Тото дівча шварне, што мать очка чорні;

*4 На мисочку лену и шварну Гелену;

*5 Пришла бы я до вас, кедь бы-м сміла;

*6 Того шугаїчка, што мать чорні очка');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_435685_l1','pisniua_435685','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_435632';
DELETE FROM song_versions WHERE song_id = 'pisniua_435632';
DELETE FROM songs_fts WHERE song_id = 'pisniua_435632';
DELETE FROM songs WHERE id = 'pisniua_435632';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_435632','Комарик','(Ой, що ж то за шум учинився). Українська народна пісня. Виконує: Журборіз','uk','ukraine_before_1917',NULL,NULL,'http://plast-scouting.org/music/',NULL,'Ой, що ж то за шум учинився,
Що Комарик до повстанців зголосився!  (2)

Зголосився Комар до повстанців,
Щоб кусати москалів-голодранців.  (2)

Щоб кусати москалів, ще й німоту,
Щоб прогнать з України ту голоту.  (2)

Примістився Комар на дубочку,
Закріпив скоростріл на листочку.  (2)

Та зірвалася на раз шура-буря,
Вона того Комарика з дуба здула.  (2)

І упав наш Комар на помості,
Поламав москалям ребра й кості.  (2)','[''pisni.org.ua'', ''cat:patriotic'', ''cat:zhartivlyvi'', ''Патріотичні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_435632'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_435632','Комарик','Ой, що ж то за шум учинився,
Що Комарик до повстанців зголосився!  (2)

Зголосився Комар до повстанців,
Щоб кусати москалів-голодранців.  (2)

Щоб кусати москалів, ще й німоту,
Щоб прогнать з України ту голоту.  (2)

Примістився Комар на дубочку,
Закріпив скоростріл на листочку.  (2)

Та зірвалася на раз шура-буря,
Вона того Комарика з дуба здула.  (2)

І упав наш Комар на помості,
Поламав москалям ребра й кості.  (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_435632_l1','pisniua_435632','YouTube','https://www.youtube.com/watch?v=OIpZoAGUIGU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_435632_l2','pisniua_435632','YouTube','https://www.youtube.com/watch?v=juqYb8_q2_A','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_435632_l3','pisniua_435632','YouTube','https://www.youtube.com/watch?v=laifD2Tm948','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_435632_l4','pisniua_435632','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_4365685';
DELETE FROM song_versions WHERE song_id = 'pisniua_4365685';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4365685';
DELETE FROM songs WHERE id = 'pisniua_4365685';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4365685','Я малюю','Музика: Зоя Красуляк Слова: Зоя Красуляк','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконують Максим Маринчук та Яна Грачова.','Я малюю синє небо, річку і вербу,
Я малюю рідну землю, на якій живу!
Намалюю рідне місто, села і поля,
Щоб такою Україна завжди в нас була!

Приспів:
Будеш ти веселою, вродливою,
Виткана із сонця і тепла!
Намалюю я тебе щасливою,
Щоб завжди такою ти була!

Намалюю теж весняну стежку, рідний дім,
Намалюю світлий ранок, де так добре всім!
Посміхнеться щиро сонце в небі золотім,
Заспіває Україна дітям всім своїм!

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:patriotic'', ''Пісні про красу природи'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4365685'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4365685','Я малюю','Я малюю синє небо, річку і вербу,
Я малюю рідну землю, на якій живу!
Намалюю рідне місто, села і поля,
Щоб такою Україна завжди в нас була!

Приспів:
Будеш ти веселою, вродливою,
Виткана із сонця і тепла!
Намалюю я тебе щасливою,
Щоб завжди такою ти була!

Намалюю теж весняну стежку, рідний дім,
Намалюю світлий ранок, де так добре всім!
Посміхнеться щиро сонце в небі золотім,
Заспіває Україна дітям всім своїм!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_436230';
DELETE FROM song_versions WHERE song_id = 'pisniua_436230';
DELETE FROM songs_fts WHERE song_id = 'pisniua_436230';
DELETE FROM songs WHERE id = 'pisniua_436230';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_436230','Моя стежина','Музика: Платон Майборода Слова: Андрій Малишко. Виконує: Олександр Таранець, Дмитро Гнатюк','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Чому, сказати, сам не знаю,
Живе у серці стільки літ
Ота стежина в нашім краї,
Одним одна біля воріт.
Ота стежина у нашім краї
Одним одна біля воріт.
Де ти, моя стежино,
Де ти, моя стежино?
Ота стежина в нашім краї
Одним одна, одним одна
Біля воріт.

Дощами мита, перемита,
Снігами знесена у даль,
Між круглих соняхів із літа
Мій ревний біль і ревний жаль.
Між круглих соняхів із літа
Мій ревний біль, мій ревний біль
І ревний жаль.
Де ти, моя стежино,
Де ти, моя стежино?
Між круглих соняхів із літа
Мій ревний біль, мій ревний біль
І ревний жаль.

Моя надієчко, я знаю,
Мій крик життя на цілий світ,
Ота стежина в ріднім краї
Одним одна біля воріт.
Ота стежина в ріднім краї
Одним одна, одним одна
Біля воріт.
Де ти, моя стежино,
Де ти, моя стежино?
Ота стежина в ріднім краї
Одним одна, одним одна
Біля воріт','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:patriotic'', ''Пісні з ностальгічними мотивами'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_436230'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_436230','Моя стежина','Чому, сказати, сам не знаю,
Живе у серці стільки літ
Ота стежина в нашім краї,
Одним одна біля воріт.
Ота стежина у нашім краї
Одним одна біля воріт.
Де ти, моя стежино,
Де ти, моя стежино?
Ота стежина в нашім краї
Одним одна, одним одна
Біля воріт.

Дощами мита, перемита,
Снігами знесена у даль,
Між круглих соняхів із літа
Мій ревний біль і ревний жаль.
Між круглих соняхів із літа
Мій ревний біль, мій ревний біль
І ревний жаль.
Де ти, моя стежино,
Де ти, моя стежино?
Між круглих соняхів із літа
Мій ревний біль, мій ревний біль
І ревний жаль.

Моя надієчко, я знаю,
Мій крик життя на цілий світ,
Ота стежина в ріднім краї
Одним одна біля воріт.
Ота стежина в ріднім краї
Одним одна, одним одна
Біля воріт.
Де ти, моя стежино,
Де ти, моя стежино?
Ота стежина в ріднім краї
Одним одна, одним одна
Біля воріт');
DELETE FROM song_links WHERE song_id = 'pisniua_436333';
DELETE FROM song_versions WHERE song_id = 'pisniua_436333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_436333';
DELETE FROM songs WHERE id = 'pisniua_436333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_436333','Гей, шуми, Великий луже!','Музика: Є. Пасічник Слова: П. Ребро','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Гей, шуми, Великий луже,
Мати Хортиця, співай,
Щоб воскресла наша слава,
Наша пісня і душа,

Запорожців плем''я дуже
Повернулось в рідний край.
Земляки, вставайте в лави
Запорізького коша.

Приспів:
Наша мова солов''їна
Піде з нами у віки.
Доти буде Україна,
Поки будуть козаки.

То не вітер лине з поля
В придніпровській стороні,
То летить козацька воля
На буланому коні.

Приспів.

Сходить сонце, золотиться,
Мов козацька булава.
Ще не висохла криниця -
Запорізька Січ жива.

Приспів.    Фонограма-мінус (mp3, 64 kbps)','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_436333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_436333','Гей, шуми, Великий луже!','Гей, шуми, Великий луже,
Мати Хортиця, співай,
Щоб воскресла наша слава,
Наша пісня і душа,

Запорожців плем''я дуже
Повернулось в рідний край.
Земляки, вставайте в лави
Запорізького коша.

Приспів:
Наша мова солов''їна
Піде з нами у віки.
Доти буде Україна,
Поки будуть козаки.

То не вітер лине з поля
В придніпровській стороні,
То летить козацька воля
На буланому коні.

Приспів.

Сходить сонце, золотиться,
Мов козацька булава.
Ще не висохла криниця -
Запорізька Січ жива.

Приспів.    Фонограма-мінус (mp3, 64 kbps)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_436333_l1','pisniua_436333','http://minus.lviv.ua','http://minus.lviv.ua','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4358436';
DELETE FROM song_versions WHERE song_id = 'pisniua_4358436';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4358436';
DELETE FROM songs WHERE id = 'pisniua_4358436';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4358436','Батькам','Музика: Монатік Слова: Монатік','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ніколи не думали та не гадали ми,
Що станемо дорослими, як наші батьки.
Їм завдячую всім, що у мене є:
Листи, мої мрії, моє майбутнє!..
Сотні згадок від сотні пісень,
Новий ранок - і я вірю в наступний день!
Зриваючи з дороги бур''яни такі,
Всміхаються нам,
Пишаються нами наші батьки!..

Приспів:
Вони перечитали нам казки,
Усі казки!
Вони переспівали нам пісні,
Усі пісні!
Вони подарували нам любов,
Любов весни!
Вони завжди там, де ми!

І якби не ви не було б цього мене,
І бігло б моє життя без сцени...
Проблеми, на яких вчусь,
Які вчите подолати -
Я хочу жити! Я не хочу мовчати!
Мої слова, мої очі, моя любов,
За мої сльози, моря шум
Вам завдячую знов!
В нас є міліарди людей на Землі
І завдяки Вам ми залишимось малі!

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4358436'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4358436','Батькам','Ніколи не думали та не гадали ми,
Що станемо дорослими, як наші батьки.
Їм завдячую всім, що у мене є:
Листи, мої мрії, моє майбутнє!..
Сотні згадок від сотні пісень,
Новий ранок - і я вірю в наступний день!
Зриваючи з дороги бур''яни такі,
Всміхаються нам,
Пишаються нами наші батьки!..

Приспів:
Вони перечитали нам казки,
Усі казки!
Вони переспівали нам пісні,
Усі пісні!
Вони подарували нам любов,
Любов весни!
Вони завжди там, де ми!

І якби не ви не було б цього мене,
І бігло б моє життя без сцени...
Проблеми, на яких вчусь,
Які вчите подолати -
Я хочу жити! Я не хочу мовчати!
Мої слова, мої очі, моя любов,
За мої сльози, моря шум
Вам завдячую знов!
В нас є міліарди людей на Землі
І завдяки Вам ми залишимось малі!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4358436_l1','pisniua_4358436','YouTube','https://www.youtube.com/watch?v=LaVWJayAjPY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_436430';
DELETE FROM song_versions WHERE song_id = 'pisniua_436430';
DELETE FROM songs_fts WHERE song_id = 'pisniua_436430';
DELETE FROM songs WHERE id = 'pisniua_436430';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_436430','Вінку ружовий *','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Народні співи Галичини. Гаївки. Зібрав та упорядкував М. Мишанич. Львів, «Гердан», 1991','Хлопці і дівчата утворюють коло, співають; в середині кола один з учасників гри ("ружовий вінок") під кінець співу вибирає собі пару. Тепер той (та), кого вибрали, залишається в середині кола, гра повторюється спочатку – і так довільне число разів. Запис із с. Гринів Пустомитівського р-ну Львівської обл.','"Вінку ружовий,
Де-сь був?" - "Ві Львові".
"Що за тебе давали?"
"Сто злотих, червоних".
"Ти, ружовий вінку,
Вибирай си дівку,
Котру хоч, то підскоч".','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_436430'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_436430','Вінку ружовий *','"Вінку ружовий,
Де-сь був?" - "Ві Львові".
"Що за тебе давали?"
"Сто злотих, червоних".
"Ти, ружовий вінку,
Вибирай си дівку,
Котру хоч, то підскоч".');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_436430_l1','pisniua_436430','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_436287';
DELETE FROM song_versions WHERE song_id = 'pisniua_436287';
DELETE FROM songs_fts WHERE song_id = 'pisniua_436287';
DELETE FROM songs WHERE id = 'pisniua_436287';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_436287','Козак од’їжджає, дівчинонька плаче','Українська народна пісня. Виконує: Буття','uk','ukraine_before_1917',NULL,NULL,'1. "Струни серця" (українські народні пісні)-видавництво "Дніпро",1973-223с. 2. Гурт "Буття", "Мелодії душ" 2004р. (запис №13 - "Козак від''їжджає")',NULL,'Козак від''їзджає, а дівчина плаче:
"Куди їдеш, козаче?
Козаче, соболю, візьми мене із собою      |
Буду вкупі з тобою."                      | (2)

"Дівчинонько мила, узяти не сила,
Бо я їду далеко."
"Тебе я покину а сам я полину             |
На козачу країну."                        | (2)

"Козаче, козаче, ти ж бачиш, я плачу
Що тебе не побачу.
Козаче, соболю, візьми мене із собою      |
Хочу вкупці з тобою."                     | (2)

"Дівчинонько мила, що ж будеш робила
На Вкраїні далекій?"
"Буду хустя прати, зеленого жита жати     |
На Вкраїні далекій."                      | (2)

"Дівчинонько віста, що ж ми будем їсти
На Вкраїні далекій?"
"Сухарі з водою, аби серце із тобою       |
На Вкраїні далекій."                      | (2)

"Дівчинонько мати, де ж ми будем спати
На Вкраїні далекій?"
"В степу під вербою, аби серце із тобою   |
На Вкраїні далекій."                      | (2)

"Дівчинонько мати, що ж ти будеш слати
На Вкраїні далекій?"
"Білеє реберце під козацькеє серце        |
На Вкраїні далекій."                      | (2)','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_436287'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_436287','Козак од’їжджає, дівчинонька плаче','Козак від''їзджає, а дівчина плаче:
"Куди їдеш, козаче?
Козаче, соболю, візьми мене із собою      |
Буду вкупі з тобою."                      | (2)

"Дівчинонько мила, узяти не сила,
Бо я їду далеко."
"Тебе я покину а сам я полину             |
На козачу країну."                        | (2)

"Козаче, козаче, ти ж бачиш, я плачу
Що тебе не побачу.
Козаче, соболю, візьми мене із собою      |
Хочу вкупці з тобою."                     | (2)

"Дівчинонько мила, що ж будеш робила
На Вкраїні далекій?"
"Буду хустя прати, зеленого жита жати     |
На Вкраїні далекій."                      | (2)

"Дівчинонько віста, що ж ми будем їсти
На Вкраїні далекій?"
"Сухарі з водою, аби серце із тобою       |
На Вкраїні далекій."                      | (2)

"Дівчинонько мати, де ж ми будем спати
На Вкраїні далекій?"
"В степу під вербою, аби серце із тобою   |
На Вкраїні далекій."                      | (2)

"Дівчинонько мати, що ж ти будеш слати
На Вкраїні далекій?"
"Білеє реберце під козацькеє серце        |
На Вкраїні далекій."                      | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_436287_l1','pisniua_436287','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_436583';
DELETE FROM song_versions WHERE song_id = 'pisniua_436583';
DELETE FROM songs_fts WHERE song_id = 'pisniua_436583';
DELETE FROM songs WHERE id = 'pisniua_436583';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_436583','Крила *','Музика: Сергій Фоменко Слова: Сергій Фоменко. Виконує: Мандри','uk','ukraine_1991',NULL,NULL,'Текст: від автора.',NULL,'Чорнії крила, шалені вітрила!
Білая крига йде в сонячний край.
Рідная, милая доля щасливая,
як заблукаю мене відшукай!

Чотири вітри у моїй свиті,
сушена риба й хліб у мішку...
Чиста водиця у моїй криниці,
та мертвії голови в сірім сніжку.

Птаха-невдаха, душа бідолаха
в чорнії скелі не бийся крилом.
В плакучих вербах, у сонячнім серпні,
в синьому небі над тихим ставком літай...','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_436583'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_436583','Крила *','Чорнії крила, шалені вітрила!
Білая крига йде в сонячний край.
Рідная, милая доля щасливая,
як заблукаю мене відшукай!

Чотири вітри у моїй свиті,
сушена риба й хліб у мішку...
Чиста водиця у моїй криниці,
та мертвії голови в сірім сніжку.

Птаха-невдаха, душа бідолаха
в чорнії скелі не бийся крилом.
В плакучих вербах, у сонячнім серпні,
в синьому небі над тихим ставком літай...');
DELETE FROM song_links WHERE song_id = 'pisniua_4359333';
DELETE FROM song_versions WHERE song_id = 'pisniua_4359333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4359333';
DELETE FROM songs WHERE id = 'pisniua_4359333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4359333','В Новому році!','Музика: Тетяна Ціхоцька Слова: Віктор Фінкоський','uk','ukraine_1991',NULL,NULL,'http://www.poetryclub.com.ua/getpoem.php?id=312852','Пісню виконує ДФС Жайворонки (альбом: Новорічна дитяча пісня).','Вже на дворі стало зимно,
Ми чекаєм справжню зиму...
Разом з снігом нам незримо
Січень принесе свята!
І до кожної оселі,
Щоб були усі веселі,
По містах та ще й по селах
Хай це пісенька луна!

Приспів:
В Новому році
Ми бажаємо щастя!
Хай задумане вдасться,
А душа хай співа!..
Хай вас вітають,
Щастя-миру бажають,
А вертеп з колядою
Принесе Вам добра!

Йдуть до нас морозні свята,
А в серцях вогню багато...
Рік Новий будем стрічати -
Ми зігріємо усіх!
Час оцей завжди казковий,
Повен радості й любові...
Ще й бажання загадкові
Дід Мороз збира у міх!..

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4359333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4359333','В Новому році!','Вже на дворі стало зимно,
Ми чекаєм справжню зиму...
Разом з снігом нам незримо
Січень принесе свята!
І до кожної оселі,
Щоб були усі веселі,
По містах та ще й по селах
Хай це пісенька луна!

Приспів:
В Новому році
Ми бажаємо щастя!
Хай задумане вдасться,
А душа хай співа!..
Хай вас вітають,
Щастя-миру бажають,
А вертеп з колядою
Принесе Вам добра!

Йдуть до нас морозні свята,
А в серцях вогню багато...
Рік Новий будем стрічати -
Ми зігріємо усіх!
Час оцей завжди казковий,
Повен радості й любові...
Ще й бажання загадкові
Дід Мороз збира у міх!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4359333_l1','pisniua_4359333','YouTube','https://www.youtube.com/watch?v=JI4yU-TiN6k','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_436736';
DELETE FROM song_versions WHERE song_id = 'pisniua_436736';
DELETE FROM songs_fts WHERE song_id = 'pisniua_436736';
DELETE FROM songs WHERE id = 'pisniua_436736';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_436736','Весняночка Паняночка де Ти зимувала (2)','Українська народна пісня. Виконує: Слобожани','uk','ukraine_before_1917',NULL,NULL,'Потаємні пісні любощів і кохання © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2002','Гаїлки-Великдень: Українське свято Відродження Світа. Еротика, жарти, забави. Вже Весна воскресла. У Садочку на Дубочку пряла на Сорочку.','Весняночко Паняночко де Ти зимувала
У Садочку на Дубочку пряла на Сорочку
Що Сорока осноє а Ворона виш''є
А тієї Лебеді тай вибі(є)лять на Воді
Сонечко блисне Сорочечка ви..
А Сонечко у Вікні Сорочечка на мені','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_436736'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_436736','Весняночка Паняночка де Ти зимувала (2)','Весняночко Паняночко де Ти зимувала
У Садочку на Дубочку пряла на Сорочку
Що Сорока осноє а Ворона виш''є
А тієї Лебеді тай вибі(є)лять на Воді
Сонечко блисне Сорочечка ви..
А Сонечко у Вікні Сорочечка на мені');
DELETE FROM song_links WHERE song_id = 'pisniua_4366838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4366838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4366838';
DELETE FROM songs WHERE id = 'pisniua_4366838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4366838','Гімн регбі-клубу "Сокіл"','Музика: Олександр Шевченко Слова: Олександр Шевченко. Виконує: Олександр Шевченко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'То не буря десь у горах,
То не шторм у синім морі,
То не грім гримить високий, -
Атакує львівський "Сокіл!"

Приспів:
Гей, гей, гей, соколи,
В бій ідемо на зелене поле!
Хай усі шляхи-дороги
Нас ведуть до перемоги!
Гей, гей, гей, соколи,
Не здаємося ніде, ніколи!
Хай лунає на трибунах:
Гей, Соколи, уперед!

Як ідем на стінку стінка
У крутому поєдинку,
Кров козацька оживає,
В жилах наших закипає!

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4366838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4366838','Гімн регбі-клубу "Сокіл"','То не буря десь у горах,
То не шторм у синім морі,
То не грім гримить високий, -
Атакує львівський "Сокіл!"

Приспів:
Гей, гей, гей, соколи,
В бій ідемо на зелене поле!
Хай усі шляхи-дороги
Нас ведуть до перемоги!
Гей, гей, гей, соколи,
Не здаємося ніде, ніколи!
Хай лунає на трибунах:
Гей, Соколи, уперед!

Як ідем на стінку стінка
У крутому поєдинку,
Кров козацька оживає,
В жилах наших закипає!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4366333';
DELETE FROM song_versions WHERE song_id = 'pisniua_4366333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4366333';
DELETE FROM songs WHERE id = 'pisniua_4366333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4366333','О, мамо Маріє!','Слова: Стефанія Лепех','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує тріо священників "Новий Час".','Коли мені сумно і серце болить,
А очі в тумані не бачать дороги,
Спішу до матусі, вона в одну мить
Розвіє мій біль печаль і тривоги.
Коли тобі тяжко, непевність в душі,
А очі і розум не бачать дороги,
До Матінки Божої завжди спіши -
Розвіє Вона біль тривоги...

Приспів:
О, мамо Маріє, на поміч прийди,
Пречиста і чиста, як мрія.
Ти - вічна надія й покров молодим, |
О, мамо Маріє!.. О, мамо Маріє!..  | (2)

Стою в самоті серед поля спокус,
А їх так багато, не перелічити.
Що вибрати маю, куди притулюсь,
Щоб стежку свою не загубити?
Покаже дорогу нам Мати свята,
Котра у спокусах гріха не зазнала,
І цілому світу - сама Чистота -
Спасителя подарувала!

Приспів.

Віддаймо себе під Святий той Покров,
Довірмо майбутнє Надії і Мрії,
У тій, що сягнула Господню любов,
Лиш Діві Пречистій Марії!

Приспів.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4366333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4366333','О, мамо Маріє!','Коли мені сумно і серце болить,
А очі в тумані не бачать дороги,
Спішу до матусі, вона в одну мить
Розвіє мій біль печаль і тривоги.
Коли тобі тяжко, непевність в душі,
А очі і розум не бачать дороги,
До Матінки Божої завжди спіши -
Розвіє Вона біль тривоги...

Приспів:
О, мамо Маріє, на поміч прийди,
Пречиста і чиста, як мрія.
Ти - вічна надія й покров молодим, |
О, мамо Маріє!.. О, мамо Маріє!..  | (2)

Стою в самоті серед поля спокус,
А їх так багато, не перелічити.
Що вибрати маю, куди притулюсь,
Щоб стежку свою не загубити?
Покаже дорогу нам Мати свята,
Котра у спокусах гріха не зазнала,
І цілому світу - сама Чистота -
Спасителя подарувала!

Приспів.

Віддаймо себе під Святий той Покров,
Довірмо майбутнє Надії і Мрії,
У тій, що сягнула Господню любов,
Лиш Діві Пречистій Марії!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_436636';
DELETE FROM song_versions WHERE song_id = 'pisniua_436636';
DELETE FROM songs_fts WHERE song_id = 'pisniua_436636';
DELETE FROM songs WHERE id = 'pisniua_436636';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_436636','Ворота новії, стовпи золотії','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Українські народні пісні / Зібрав та упорядкував О.Стеблянко. - К., 1965. С. 13. 2. Засвіти свічу восковую. Українські народні пісні з нотами. - Харків: Фоліо, 2003. - С. 270.',NULL,'Ворота новії, стовпи золотії.
Радуйся!
Ой радуйся, хазяїне, веселися, хазяїне,
В своєму дому.

Весь двір на помості, в його щодня гості.
Радуйся!
Ой радуйся, хазяїне, веселися, хазяїне,
В своєму дому.    Голос 1','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_436636'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_436636','Ворота новії, стовпи золотії','Ворота новії, стовпи золотії.
Радуйся!
Ой радуйся, хазяїне, веселися, хазяїне,
В своєму дому.

Весь двір на помості, в його щодня гості.
Радуйся!
Ой радуйся, хазяїне, веселися, хазяїне,
В своєму дому.    Голос 1');
DELETE FROM song_links WHERE song_id = 'pisniua_434032';
DELETE FROM song_versions WHERE song_id = 'pisniua_434032';
DELETE FROM songs_fts WHERE song_id = 'pisniua_434032';
DELETE FROM songs WHERE id = 'pisniua_434032';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_434032','Ой учора із Вечора пасла Маланка Два Качура','Українська народна пісня. Виконує: Ватра, Гайдамаки, Марія Бурмака','uk','ukraine_before_1917',NULL,NULL,'Співаймо Світові-Дитині © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Еротика, жарти, забави: Катерини – Калета – Андрія... Зелені Свята... Гаївки-Великдень... Весілля... – Щедровечірнє й Новорічне: Маланка й Василь. Коза. Кіт... Пасла Маланка Два Качура Маланочка Ластівочка на Кошарі щебетала Маланки ходили Василька просили Наша Маланка Дністрованка Ой в Петрівочку Нічка Маленька Ой зза Гори зза Крутої зійшов Місяць ще й з Зорою Ой учора а звечора пасла Маланка бай Качура Ой учора із Вечора пасла Маланка Два Качура Щедрик Щедрик Щедрівочка (4) Щодрий Вечор Добрий Вечор Василє Щодрий Вечор Добрий Вечор Символіка Щедрого Вечера і Василя. Щедрий Вечер зачинається властиво під Новий Рік, 13-14 січня (7 днів наперед Богоявління — символ Місячний!), т. є. в вечер перед св. Василя. Це особливо улюблене Українське свято: мітичного Василя і Маланки, — є найщирішим шануванням Місяця з його женихальними мотивами (ними переповнені Щедрівки). Тоді мітичну постать Василя мішають часто з мітольоґійно-Місячною постаттю Іллї — Ілії, який є в Українського народу покровителем урожаїв збіжжя, особливо жита (сніп жита, дід Ілля, — в часі жнив, — це постава Місяця). Містерії світотворення, еротичні та весільні. Еротичні містерії: Піч. У цю Ніч відбуваються містерії, подібні до містерій Катерини-Калети та Святоріздвяних. В них беруть участь і Господарі і Молодь. Згідно записів на Гуцульщині Новорічна Ніч — свято Печі. "Ціли рік Вона робить Службу, а на Василя іде в Танець, Вона ся віддає". Тому Її гарно вимащують на Маланки, аби не кляла, що не мащена. Ніхто не спить на Ній тої Ночі, ані сідає, "бо тяжко Їй танцювати". Відміни: "Нехай Ніч спочине". Або: "Василь із Маланкою приходять танцювати, аби Їм не перешкоджати". На Піч кладуть Овес "на Коровай, так, як і у нас на Весіллі, і Їй дає ся Вівса, як ся віддає". Відміни: "Аби мала чим Коня годувати, бо Вона їде у Місто, на Герць". Стежки до інших листків про Українські традиції.','Ой учора із Вечора
Пасла Маланка Два Качура   | (2)

Ой пасучи загубила
Шукаючи заблудила          | (2)

Приблудилася  в Чистеє Поле
А там Василько Плужком оре | (2)

Оре-оре Жито сіє
За ним Жито зеленіє        | (2)

Оре-оре поганяє
Догори личком спочиває     | (2)

Оре-оре сам Плуг заносить
Йому Маланка їсти виносить | (2)

Ой Черчику-Васильчику
Посію Тебе в Городчику     | (2)

Буду ж Тебе шанувати
По тричі на день поливати  | (2)

Щосуботоньки проривати
За русу косу затикати      | (2)

До Церковоньки виряжати
Василечком величати        | (2)

Ой Черчику-Васильчику
Не гони Кури по Xлівчику   | (2)

Бо мої Кури Дорогії
По Чотири Золотії          | (2)

Ой Черчику-Васильчику
Не сідай скраю на Припічку | (2)

Або ж мені Горшка збавиш
Або ж собі Жупан спалиш    | (2)

А сядь собі на Лавочці
Коло своєї Маланочки       | (2)

Наша Маланка в Дністрі була
Дністрову Воду-воду пила   | (2)

На Камені ноги мила
Срібний  Перстень упустила | (2)

Срібний  Перстень достягала
Тонкий Хвартуx замочала    | (2)

Повій Вітре Буйнесенький
Висуши Хвартуx Тонесенький | (2)

Повій Вітре сюди-туди
Висуши Хвартуx межи Люде   | (2)

Повій Вітре сяк-так сяк-так
Висуши Хвартуx як Мак як Мак | (2)

Повій Вітре зо всіx Сторон
Щоби Маланці не був сором  | (2)

Щоби Матінка не пізнала
Щоби від Xати не прогнала  | (2)

Наша Маланка Малесенька
Як Конопелька Тонесенька   | (2)

Наша Маланка Неробоча
На Ній Сорочка Парубоча    | (2)

Наша Маланка не сама xодить
Нашу Маланку Парубки водять | (2)

Наша Маланка Током-током
За нею Xлопці скоком-скоком | (2)

Наша Маланка украдена
В Далекі Краї заведена     | (2)

Ні Стежечки ні Доріжечки
Пішов би я до Воріжечки    | (2)

Най Ворожка відгадає
Де Маланка пропадає        | (2)

А Вороженька заxорувала
Мені Правди не сказала     | (2)

Ой Господарю-Господаречку
Пусти в Xату Маланочку     | (2)

Неxай Вона погуляє
Як Рибочка по Дунаю        | (2)

Як Щука-Риба з Окуньцями
Наша Маланка з Молодцями   | (2)','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyadky'', ''cat:lirychni'', ''cat:narodni'', ''cat:shchedrivky'', ''Дитячі пісні'', ''Колядки'', ''Пісні про кохання, ліричні'', ''Народні пісні'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_434032'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_434032','Ой учора із Вечора пасла Маланка Два Качура','Ой учора із Вечора
Пасла Маланка Два Качура   | (2)

Ой пасучи загубила
Шукаючи заблудила          | (2)

Приблудилася  в Чистеє Поле
А там Василько Плужком оре | (2)

Оре-оре Жито сіє
За ним Жито зеленіє        | (2)

Оре-оре поганяє
Догори личком спочиває     | (2)

Оре-оре сам Плуг заносить
Йому Маланка їсти виносить | (2)

Ой Черчику-Васильчику
Посію Тебе в Городчику     | (2)

Буду ж Тебе шанувати
По тричі на день поливати  | (2)

Щосуботоньки проривати
За русу косу затикати      | (2)

До Церковоньки виряжати
Василечком величати        | (2)

Ой Черчику-Васильчику
Не гони Кури по Xлівчику   | (2)

Бо мої Кури Дорогії
По Чотири Золотії          | (2)

Ой Черчику-Васильчику
Не сідай скраю на Припічку | (2)

Або ж мені Горшка збавиш
Або ж собі Жупан спалиш    | (2)

А сядь собі на Лавочці
Коло своєї Маланочки       | (2)

Наша Маланка в Дністрі була
Дністрову Воду-воду пила   | (2)

На Камені ноги мила
Срібний  Перстень упустила | (2)

Срібний  Перстень достягала
Тонкий Хвартуx замочала    | (2)

Повій Вітре Буйнесенький
Висуши Хвартуx Тонесенький | (2)

Повій Вітре сюди-туди
Висуши Хвартуx межи Люде   | (2)

Повій Вітре сяк-так сяк-так
Висуши Хвартуx як Мак як Мак | (2)

Повій Вітре зо всіx Сторон
Щоби Маланці не був сором  | (2)

Щоби Матінка не пізнала
Щоби від Xати не прогнала  | (2)

Наша Маланка Малесенька
Як Конопелька Тонесенька   | (2)

Наша Маланка Неробоча
На Ній Сорочка Парубоча    | (2)

Наша Маланка не сама xодить
Нашу Маланку Парубки водять | (2)

Наша Маланка Током-током
За нею Xлопці скоком-скоком | (2)

Наша Маланка украдена
В Далекі Краї заведена     | (2)

Ні Стежечки ні Доріжечки
Пішов би я до Воріжечки    | (2)

Най Ворожка відгадає
Де Маланка пропадає        | (2)

А Вороженька заxорувала
Мені Правди не сказала     | (2)

Ой Господарю-Господаречку
Пусти в Xату Маланочку     | (2)

Неxай Вона погуляє
Як Рибочка по Дунаю        | (2)

Як Щука-Риба з Окуньцями
Наша Маланка з Молодцями   | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_434032_l1','pisniua_434032','YouTube','https://www.youtube.com/watch?v=CRi2aBnykBY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_434032_l2','pisniua_434032','YouTube','https://www.youtube.com/watch?v=PmUP3DWmtHo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_434032_l3','pisniua_434032','YouTube','https://www.youtube.com/watch?v=nFe9ToC28d0','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_4368083';
DELETE FROM song_versions WHERE song_id = 'pisniua_4368083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4368083';
DELETE FROM songs WHERE id = 'pisniua_4368083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4368083','Весела пісенька','Музика: Ігор Танчак Слова: Ігор Танчак','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Якщо сумно тобі у дорозі,
Поруч друзів з тобою нема,
Ти згадай нашу пісню веселу
І повторюй знайомі слова:

Приспів:
Хай пісенька весела
На Захід і на Схід
Летить в міста і села
Несе, несе привіт!
Нехай її співають
Дорослі і малі,
Усі, хто любить пісню
На землі!

Може ти десь далеко від дому
І тебе перестріла біда,
Ти згадай нашу пісню веселу
І повторюй знайомі слова!

Приспів.

У мандрівку подався ти, друже,
Щоб побачити світу дива,
Ти згадай нашу пісню веселу
І повторюй знайомі слова!

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4368083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4368083','Весела пісенька','Якщо сумно тобі у дорозі,
Поруч друзів з тобою нема,
Ти згадай нашу пісню веселу
І повторюй знайомі слова:

Приспів:
Хай пісенька весела
На Захід і на Схід
Летить в міста і села
Несе, несе привіт!
Нехай її співають
Дорослі і малі,
Усі, хто любить пісню
На землі!

Може ти десь далеко від дому
І тебе перестріла біда,
Ти згадай нашу пісню веселу
І повторюй знайомі слова!

Приспів.

У мандрівку подався ти, друже,
Щоб побачити світу дива,
Ти згадай нашу пісню веселу
І повторюй знайомі слова!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_436889';
DELETE FROM song_versions WHERE song_id = 'pisniua_436889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_436889';
DELETE FROM songs WHERE id = 'pisniua_436889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_436889','Те, що тобі так треба','Музика: С.К.А.Й. Слова: С.К.А.Й.. Виконує: С.К.А.Й.','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: Avenger49','Я розмовляю з мікрофоном.
Я заслужив недобрі фрази.
Я п''яту добу не вихожу з дому.
Я особистість на півставки.

Gm   Cadd9           Dm Dsus2 Dm
Приспів: Це те, що тобі так треба. (4)

Програш: Gm\C\Dm Dsus2\Dm Dsus2 \
Gm\C\Dm Dsus2\Dm Dsus2 \
І ні в якому разі не дивися на завтра,
Dsus2      Dm       Gm
Його може не бути, його може не стати.

Програш: Gm Cadd9 Dm Dsus2 Dm Dsus2
Головою об стіну, кажуть, так буде краще.
Dsus2        Dm          Gm
Як ця дурість прекрасна, коли нас тільки троє.
Cadd9        Dm   Dsus2
Я сивію від щастя...
Приспів: За те, що тобі так треба. (далі програш і так 4р.)
Dm   Dsus2 Dm    Dsus2 Dm Dsus2
Магнітна мрія літає, літає,
Dm Dsus2  Dm Dsus2               Gm
Нестримна, підступна, у прірву кидає мене...(далі знов програш і так 4р.)
Gm   Cadd9               Dm Dsus2 Dm
Приспів: Це те, що тобі так треба.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_436889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_436889','Те, що тобі так треба','Я розмовляю з мікрофоном.
Я заслужив недобрі фрази.
Я п''яту добу не вихожу з дому.
Я особистість на півставки.

Gm   Cadd9           Dm Dsus2 Dm
Приспів: Це те, що тобі так треба. (4)

Програш: Gm\C\Dm Dsus2\Dm Dsus2 \
Gm\C\Dm Dsus2\Dm Dsus2 \
І ні в якому разі не дивися на завтра,
Dsus2      Dm       Gm
Його може не бути, його може не стати.

Програш: Gm Cadd9 Dm Dsus2 Dm Dsus2
Головою об стіну, кажуть, так буде краще.
Dsus2        Dm          Gm
Як ця дурість прекрасна, коли нас тільки троє.
Cadd9        Dm   Dsus2
Я сивію від щастя...
Приспів: За те, що тобі так треба. (далі програш і так 4р.)
Dm   Dsus2 Dm    Dsus2 Dm Dsus2
Магнітна мрія літає, літає,
Dm Dsus2  Dm Dsus2               Gm
Нестримна, підступна, у прірву кидає мене...(далі знов програш і так 4р.)
Gm   Cadd9               Dm Dsus2 Dm
Приспів: Це те, що тобі так треба.');
DELETE FROM song_links WHERE song_id = 'pisniua_4366583';
DELETE FROM song_versions WHERE song_id = 'pisniua_4366583';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4366583';
DELETE FROM songs WHERE id = 'pisniua_4366583';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4366583','Вишиванка',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує тріо священників "Новий Час".','Вишивала сорочку мати,
Край вікна на стільці сиділа,
Та виносила часто з хати,
Щоб сорочка як сніг біліла.

До схід-сонця ішла полями,
Набирала ниток в долоні.
Їй клубок поміж трав стежками
Явір гіллям котив червоним.

Брала мати нитки-проміння,
Полоскала їх в росах чистих
Та, поклавши їх на коліна,
Заспівала про шлях тернистий.

Довгі звуки в нитки вростали,
Проростали в квітки й листочки,
Розквітать на манижці стали,
Коли кінчила шить сорочку.

Вишивала її весною
Голубими струмками неба,
Чистим серцем і добротою,
Бо дитині в дорогу треба!

Гей, сорочку я цю одіну,
Поміж люди у ній пройдуся -
Пелюстки з весняної піни,
Квіточки з доброти матусі.

Ясна вишивка - даль і луки,
Солов''їні пісні співучі,
Сльози радості і розлуки,
Ночі зоряні невсипущі.

Незрадлива любов до сина,
Ніжна ласка у нитці кожній.
Зачарована Україна
У шляхи голубі несходжені.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4366583'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4366583','Вишиванка','Вишивала сорочку мати,
Край вікна на стільці сиділа,
Та виносила часто з хати,
Щоб сорочка як сніг біліла.

До схід-сонця ішла полями,
Набирала ниток в долоні.
Їй клубок поміж трав стежками
Явір гіллям котив червоним.

Брала мати нитки-проміння,
Полоскала їх в росах чистих
Та, поклавши їх на коліна,
Заспівала про шлях тернистий.

Довгі звуки в нитки вростали,
Проростали в квітки й листочки,
Розквітать на манижці стали,
Коли кінчила шить сорочку.

Вишивала її весною
Голубими струмками неба,
Чистим серцем і добротою,
Бо дитині в дорогу треба!

Гей, сорочку я цю одіну,
Поміж люди у ній пройдуся -
Пелюстки з весняної піни,
Квіточки з доброти матусі.

Ясна вишивка - даль і луки,
Солов''їні пісні співучі,
Сльози радості і розлуки,
Ночі зоряні невсипущі.

Незрадлива любов до сина,
Ніжна ласка у нитці кожній.
Зачарована Україна
У шляхи голубі несходжені.');
DELETE FROM song_links WHERE song_id = 'pisniua_4368981';
DELETE FROM song_versions WHERE song_id = 'pisniua_4368981';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4368981';
DELETE FROM songs WHERE id = 'pisniua_4368981';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4368981','Доля козака','Музика: Анатолій Лаврінчук Слова: Вадим Крищенко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Пісню виконує гурт "Червоні маки".','Йшли з походу козаки,
Грілась шабля від руки,
А дорога впала їм додолу
Через поле, через ліс
Переможний поклик ніс -
Повертались хлопці вже додому!

Приспів:
Отака вона, така
Дивна доля козака:
То у бій вона зове,
То з походу!
А дівчина при вікні
Жде на нього ночі й дні,
Рушничками стелить
Ніжну вроду!

Відсурмилася сурма -
Ворогів уже нема,
Материнським словом пахне гречка.
Їхать треба день чи п''ять?
Коні дзвінко тупотять -
Рідна хата зовсім недалечко!
Славні хлопці-козаки
Показали міць таки,
Не схилили голову в знемозі!
Завиднілося село -
Прояснилося чоло -
Зустрічайте, мамо, на порозі!

Приспів.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4368981'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4368981','Доля козака','Йшли з походу козаки,
Грілась шабля від руки,
А дорога впала їм додолу
Через поле, через ліс
Переможний поклик ніс -
Повертались хлопці вже додому!

Приспів:
Отака вона, така
Дивна доля козака:
То у бій вона зове,
То з походу!
А дівчина при вікні
Жде на нього ночі й дні,
Рушничками стелить
Ніжну вроду!

Відсурмилася сурма -
Ворогів уже нема,
Материнським словом пахне гречка.
Їхать треба день чи п''ять?
Коні дзвінко тупотять -
Рідна хата зовсім недалечко!
Славні хлопці-козаки
Показали міць таки,
Не схилили голову в знемозі!
Завиднілося село -
Прояснилося чоло -
Зустрічайте, мамо, на порозі!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4368981_l1','pisniua_4368981','YouTube','https://www.youtube.com/watch?v=y9JM3rCCQ9Y','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_436838';
DELETE FROM song_versions WHERE song_id = 'pisniua_436838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_436838';
DELETE FROM songs WHERE id = 'pisniua_436838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_436838','Володар Володар й одчиняй Ворота','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Потаємні пісні любощів і кохання © Видавництво „Павутинонька“, Нью Йорк – Львів – Київ – Харків – Москва, 2002','Про містичні Різдво і Ворота (Світа) на космічному подвір''ї Творця і Господа Світа співають Колядки. Весняне: "Володар-Володар одчиняй Ворота!" — можна розуміти як прохання до Бога, заклик і провіщення грядучого Відродження та Весни Світа. Гаїлки-Великдень: Українське свято Відродження Світа. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... А в Нашого Хазяїна тай Ворота Нові. Ворота Новії Стовпи Золотії Господарський Двір на Семи Стовпах Ой ходили та блудили Три Коляднички Ой чи Ви спите Господареньку Шо у Нашого Пан-Оца Широкії Ворота Володар Володар й одчиняй Ворота. Воротай Воротайчику відтвори Воротонька Воротар Ворітнику розтвори Воротонька Воротар Воротар Воротарчику Воротаре Воротаре вітвори Воротонька Ой вийду я за Ворітечка - Грушечка Ой вийду я за Ворота - Грушка Ой Ти Зелена Дубровонько Ой Весна Весна тай Весняночка Сидить Милий за ворітьми ніким наказати Я Ворота запираю Вже би-м була їхала За новими ворітьми Продай милий сиві бички Вже Весна воскресла. Народна віра в Бога і почуття близькости Бога. З господарських свят первісних народів виходить, що їх мотивом є також бажання народу усвідомлення собі того Найвищого Єства в природі, що дає їм спроможність життя, даючи їм земні плоди й худобу. І в слід за тим стає мотивом Свята реліґія вдяки для Найвищого Єства.... Святочні обряди, пісні та пляси народів природи зроджують у них ідею Бога. Вони є тими середниками, що викликують у народу почуття близькости Бога, яка є неодолимим бажанням народу і його потребою. А ми в Кривого Танцю йдем Танцю йдем Володар Володар й одчиняй Ворота Іва на Купала тай в Воду упала Святий Вечер є Святом природи й її Творця, зродженим на старовіцьких Українських традиціях про Почин Світа. Традиції ці мусять бути дуже давні, бо як реліґійні, так і господарські явища, які в них виступають, годяться в самі первісні, пракультурні часи. Переважаючою між реліґійними явищами Святої Вечері є віра в Бога. Під ідеєю Бога, котрого, як в часі обрядів, так і в Колядках, називають майже виключно Господом, розуміє нарід Найвище духове єство; а коли навіть згадує про Ісуса, Христа, особливо в старовіцьких схристиянізованих Колядках, то має Його за Господа світа і Добродія народу, коли не змішує його з мітольоґічною постаттю Прадіда. Взагалі думає нарід на Різдво про справи реліґійні катеґоріями старинними і показує свої реліґійні почування по старому. Це видно по Святовечірніх обрядах і так висловлюються усі старовіцькі Колядки і Щедрівки. Доказом того є цілий перебіг Святої Вечері. Є це високореліґійна пракультурна дія, якою показує нарід свою віру в Бога як Найвище Єство, себе вважає залежним від нього і жертвує йому первенці плодів земних, щоби його ухвалити і ублагати. Отсі жертви, особливо їх предмет, спосіб пожертвовання та їх служивці характеризують без всякого сумніву культурний степень реліґії, яка на Святий Вечер показується. Служивцями культово-реліґійних актів Святої Вечері є майже рівнорядно Господар і Господиня; а щонайменше, є Господиня при тих діях духовною помічницею з службовим характером. Бере в них ділову участь часом і дехто з рідні і це дає доказ, що до участі в шануванні є покликана уся рідня. Це є типові образці пракультурні, на причуд вірно збережені народною традицією. Це не лиш історична пам''ятка, але це глибоко прочута народом душевна спадщина, що увійшла атавістично в його життя і мусить мати явний і суспільний вислів; і має його оце в родиннім вогнищі. Поглиблення ідеї Бога та Його звеличання. Астральна реліґія в Українського народу поглиблює ідею Бога і змірює до Його звеличання; але рівночасно розбиває вона реліґійні поняття народу на окремі образці, які поодиноко притягають його увагу так, що він через них забуває деколи про головну ідею Бога. Віра в Найвище Єство і Астральна символіка. Астрально-мітольоґічна реліґійна символіка, задля своєї первісности, дуже мало суперечить ідеї Бога; вона радше цю ідею поширює й поглиблює та додає своєю поезією народній вірі в Бога духового підйому й сили; це врешті доказує непохитне береження народом цієї реліґійної традиції, бо він видить у ній заспокоєння своїх реліґійних почувань, а він їх дуже виразно показує в Різдвяне свято для свого Творця і Господа. Астральні явища, — Місяць, Сонце і Зоря та атмосферичні прояви як дощик, росиця, — називаються поіменно і виступають природно; майже ніякої персоніфікації (уособлення) в оцій мітольоґії нема, ніякої ідололятрії цих небесних сил та ніяких хоробливих збочень думки і уяви. Це чиста ідеольоґія пракультурної доби. А на дальший розвиток реліґійних ідей та взаємин культурно-реліґійних наверствовань ріжних діб вказують Колядки. Сі культурні наверствовання бувають у Колядках неначе відмежені від себе; поодинокі ідеольоґічні образці є з особливим уподобанням відзначувані. А все-таки лучить їх усіх одна ідея провідна — віра в Найвище Єство, котре усе назване Господом. Бог і Господь. Нарід робить ріжницю між іменами Господь і Бог. Господь — це Господар Світа, його Творець і Володар. Бог, це загальна ідея духового Найвищого Єства. Володар Володар й одчиняй Ворота Спаситель в Астральній славі. Українська ідея Христа як Господа і Небесного Чоловіка. Богойко Наш Любий Попойко. Чому це слово Бог? Велика таїна проявляється помалу. Пісенне зменшувальне — Богойко. Бог, бо цілить — душу-тіло? Починат ся Гостина Починат ся Гостина Від Бога Господина Тай а почав Ї Богойко Тай Наш Любий Попойко Колядки пояснюють, що Церква — то весь світ, і в цій Церкві-Всесвіті за "попа", священика, — сам Господь Біг. Він, або Божа Матір, служить службу божу людям. Люди беруть участь у цій службі як послушники і як родина. Кожен тішиться і веселиться своєю інакшістю та різноманітністю світу. Всіх людей об''єднує Бог одним Світом, в одній Церкві, в одній духовній родині. Він є товаришем і Астральних Світил і людей. Така Староукраїнська засада " Світу-Церкви " та ідеальне поняття реліґії як зв''язку з Богом у вселюдській родині є прикладом правдивого універсалізму та екуменізму, коли люди об''єднуються в різноманітності, коли не просто терплять, не тільки визнають одне одного, а й радіють інакшості іншого. Інший — це рідний, а не чужий. До якої б церковної ієрархії не залічували себе люди, всі вони належать до тієї самої Божої Церкви - Всесвіту, до одного, але багатовимірного духовного світу. Колядки підносять ідею любови рідні. Вона є суттю тої " Давної Правдоньки Старих Людей ", за котрою Колядки тужать. Тому вони ідеалізують сім''ю, — Господаря й Господиню враз з Діточками, — малюючи майже в кожній Колядці чудові образці сімейного щастя. Кожну Колядку кінчать Колядники, — "Божі Служеньки", — побажанням ідеальних сімейних взаємин. Рідня в гармонії й любові — це Святість, це Боже улюблене місце, це символ загальнолюдського щастя, тому на збірну Святу Вечерю прибувають Небесні Гості — сам Господь посеред Небесного блиску, Місяць і Сонце й усе Небо Йому товаришать, або прикрашують Його стать. Наша Дума — Наша Пісня не вмре не загине От де люде Наша Слава-слава України Без золота без каменю без хитрої мови А Голосна та Правдива як Господа Слово — Тарас Шевченко А за сим Словом були здорови. — Колядки Листки з приводу цієї Пісні: Коляда і Великдень: Різдво і Відродження Світа. Гаїлки-Великдень: Українське Свято Відродження Світа. (Вибір Пісень) Стежки до листків про Українські традиції.','Володар-Володар    |(2)
Й одчиняй Ворота   |(2)
Їде Пан Сирота     |(2)
Ще й Малеє Дитя    |(2)

По Красок на Винок |(2)
Ой нащо вам Вінки  |(2)
Ой на Cладки Дивки |(2)

На Мурави на Турави
Дощ покропив       |(2)

А маленьких діточок
Бог сиротив        |(2)

Йди Зима до Бучина
Вже ти нам надокучила
Йди Зима до Кракова
Ти там будеш однакова
Йди Зима до Століна
Ти нам уже настоїла    Заспів (mp3)','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_436838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_436838','Володар Володар й одчиняй Ворота','Володар-Володар    |(2)
Й одчиняй Ворота   |(2)
Їде Пан Сирота     |(2)
Ще й Малеє Дитя    |(2)

По Красок на Винок |(2)
Ой нащо вам Вінки  |(2)
Ой на Cладки Дивки |(2)

На Мурави на Турави
Дощ покропив       |(2)

А маленьких діточок
Бог сиротив        |(2)

Йди Зима до Бучина
Вже ти нам надокучила
Йди Зима до Кракова
Ти там будеш однакова
Йди Зима до Століна
Ти нам уже настоїла    Заспів (mp3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_436838_l1','pisniua_436838','YouTube','https://www.youtube.com/watch?v=eFut5jkhfFw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4371931';
DELETE FROM song_versions WHERE song_id = 'pisniua_4371931';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4371931';
DELETE FROM songs WHERE id = 'pisniua_4371931';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4371931','Колискова','Українська народна пісня. Виконує: Тетяна Горобець','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Мала Катерина
Два маленьких сина.
Разом породила
Гриця та Данила.
Сім літ доглядала,
Любистком вмивала,
Долі їм благала,
Колисаночки співала:
Люлі-люлі-люлечки,
Шовковії вірвечки.
Мальовані бильця
Для Данилка і Гриця.

Хмари йшли за обрій,
Йшли часи недобрі
Й недобрії вісті:
Не стало що їсти.
Свої, не чужії,
Вороженьки лишити
Могли козачаті...
Все до крихти -
Геть із хати.
Ляжте, діти, спати,
Бо нема чим годувати.
Ой, люлі-люлі,
Налетіли гулі.
Стали думать і гадать,
Чим синочків годувать.
Чи яблучком, чи медком,
Чи солодким пиріжком.

...Мов ворожа сила,
Півсела скосила.
Сусідська родина
В одній домовині...
Кругом людське горе
Розлилось, як море,
Не минуло, кляте,
Катриної хати.
Бо ще й не світало,
Як Гриця не стало...
Одкувало в хаті -
Не ходи по хаті.
Ой, котику, не гуди -
Спить дитина, не буди.

...З останньої сили
Води наносила.
Води наносила,
В печі натопила.
Кликала Данильця:
Вставай, сину,
Їсти Гриця!..
Не озвавсь Данилко,
Вже й не озоветься.
Впала Катерина,
Вже не підведеться...
...Люлі-люлі-люлечки,
Шовковії вірвечки.
Мальовані бильця
Для Данилка і Гриця...','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4371931'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4371931','Колискова','Мала Катерина
Два маленьких сина.
Разом породила
Гриця та Данила.
Сім літ доглядала,
Любистком вмивала,
Долі їм благала,
Колисаночки співала:
Люлі-люлі-люлечки,
Шовковії вірвечки.
Мальовані бильця
Для Данилка і Гриця.

Хмари йшли за обрій,
Йшли часи недобрі
Й недобрії вісті:
Не стало що їсти.
Свої, не чужії,
Вороженьки лишити
Могли козачаті...
Все до крихти -
Геть із хати.
Ляжте, діти, спати,
Бо нема чим годувати.
Ой, люлі-люлі,
Налетіли гулі.
Стали думать і гадать,
Чим синочків годувать.
Чи яблучком, чи медком,
Чи солодким пиріжком.

...Мов ворожа сила,
Півсела скосила.
Сусідська родина
В одній домовині...
Кругом людське горе
Розлилось, як море,
Не минуло, кляте,
Катриної хати.
Бо ще й не світало,
Як Гриця не стало...
Одкувало в хаті -
Не ходи по хаті.
Ой, котику, не гуди -
Спить дитина, не буди.

...З останньої сили
Води наносила.
Води наносила,
В печі натопила.
Кликала Данильця:
Вставай, сину,
Їсти Гриця!..
Не озвавсь Данилко,
Вже й не озоветься.
Впала Катерина,
Вже не підведеться...
...Люлі-люлі-люлечки,
Шовковії вірвечки.
Мальовані бильця
Для Данилка і Гриця...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4371931_l1','pisniua_4371931','YouTube','https://www.youtube.com/watch?v=cvgbiXgcqIA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4370137';
DELETE FROM song_versions WHERE song_id = 'pisniua_4370137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4370137';
DELETE FROM songs WHERE id = 'pisniua_4370137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4370137','Мама','Музика: Єлизавета Кравчук Слова: Єлизавета Кравчук','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує дитячий ансамбль "Нотки".','Речитатив:
Я знаю: вона не така, як усі!
Я теж для неї особлива!
Мамо! Я так хочу, щоби ти
Завжди-завжди була щаслива!
Коли ти поруч - квітне все,
Але коли тебе немає...
Ні! Не хочу думати про це!
Без тебе світ не уявляю!
Слово "Мама" пахне небом,
На дотик дуже тепле, ніжне,
На смак - воно солодше меду,
Звучить як нотка найтончіша...
Хто ти для мене? - Всесвіт!
Хліб, колискова чи повітря?
Ось, що скажу для тебе:
Ти надзвичайно мені потрібна!

Дякую, рідна, за твої молитви!
Дякую, рідна, за любов з колиски!
Дякую за добро, за ласку!
дякую за життя, мов казку!

Приспів:
Мамо! Моя рідна мамо,
Хоч, як всі так само,
Але я скажу:
Найрідніша мамо!
Не вмістить словами,
Я в житті ділами
Докажу, що так люблю!

Хто ще нас так приголубить?
Хто у всякий час так любить?
Відповідь дам сама:
Мамо, ти - одна така!
Я без тебе, як безкрила,
Ти мені даруєш віру!
Знаєш, це твоя любов
Познайомила з Христом!

Приспів. (2)

Мамо!','[''pisni.org.ua'', ''cat:christian'', ''cat:pro-batkiv'', ''Пісні на християнську тематику'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4370137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4370137','Мама','Речитатив:
Я знаю: вона не така, як усі!
Я теж для неї особлива!
Мамо! Я так хочу, щоби ти
Завжди-завжди була щаслива!
Коли ти поруч - квітне все,
Але коли тебе немає...
Ні! Не хочу думати про це!
Без тебе світ не уявляю!
Слово "Мама" пахне небом,
На дотик дуже тепле, ніжне,
На смак - воно солодше меду,
Звучить як нотка найтончіша...
Хто ти для мене? - Всесвіт!
Хліб, колискова чи повітря?
Ось, що скажу для тебе:
Ти надзвичайно мені потрібна!

Дякую, рідна, за твої молитви!
Дякую, рідна, за любов з колиски!
Дякую за добро, за ласку!
дякую за життя, мов казку!

Приспів:
Мамо! Моя рідна мамо,
Хоч, як всі так само,
Але я скажу:
Найрідніша мамо!
Не вмістить словами,
Я в житті ділами
Докажу, що так люблю!

Хто ще нас так приголубить?
Хто у всякий час так любить?
Відповідь дам сама:
Мамо, ти - одна така!
Я без тебе, як безкрила,
Ти мені даруєш віру!
Знаєш, це твоя любов
Познайомила з Христом!

Приспів. (2)

Мамо!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4370137_l1','pisniua_4370137','YouTube','https://www.youtube.com/watch?v=VHzDw3rmuEQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4369430';
DELETE FROM song_versions WHERE song_id = 'pisniua_4369430';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4369430';
DELETE FROM songs WHERE id = 'pisniua_4369430';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4369430','З тобою, зі мною, і годі','Музика: MELOVIN Слова: MELOVIN','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує MELOVIN.','До нас прийшла осінь,
А ти сидиш один лиш сам
У темній кімнаті,
В своїх обіймах сам на сам...
Тримайся! - Ми поруч!
Думки навиворіт тримай
І знай, що навколо
Все блідо-чорне, як зазвичай...

Приспів:
Колись побачимо світ ми навколо   |
Кольоровий, знайомий до болі,     |
І не хвилюйся, ми всі тут знайомі |
З тобою, зі мною, і годі!         | (2)

З тобою, зі мною, і годі!         | (3)

До нас прийшла осінь,
І темний світ тебе знайшов...
Ми думали разом,
Щоб я від тебе не пішов...
Тримайся! - Ми поруч!
Думки навиворіт тримай
І знай, що навколо
Все блідо-чорне, як зазвичай...

Приспів.

З тобою, зі мною, і годі!         | (3)','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4369430'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4369430','З тобою, зі мною, і годі','До нас прийшла осінь,
А ти сидиш один лиш сам
У темній кімнаті,
В своїх обіймах сам на сам...
Тримайся! - Ми поруч!
Думки навиворіт тримай
І знай, що навколо
Все блідо-чорне, як зазвичай...

Приспів:
Колись побачимо світ ми навколо   |
Кольоровий, знайомий до болі,     |
І не хвилюйся, ми всі тут знайомі |
З тобою, зі мною, і годі!         | (2)

З тобою, зі мною, і годі!         | (3)

До нас прийшла осінь,
І темний світ тебе знайшов...
Ми думали разом,
Щоб я від тебе не пішов...
Тримайся! - Ми поруч!
Думки навиворіт тримай
І знай, що навколо
Все блідо-чорне, як зазвичай...

Приспів.

З тобою, зі мною, і годі!         | (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4369430_l1','pisniua_4369430','YouTube','https://www.youtube.com/watch?v=JrDsdFtRbqw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_437338';
DELETE FROM song_versions WHERE song_id = 'pisniua_437338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_437338';
DELETE FROM songs WHERE id = 'pisniua_437338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_437338','Нема в світі Правди не зіскати (5)','Українська народна пісня. Виконує: Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,'Українські релігійні роздуми про Спасіння © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003','Отець-Рідна-Мати — У Піснях символ Господа Бога і звертання до Нього. Також символ Сім''ї як Святости та присутности Бога (Давня Правдонька Старих Людей). Можлива гра слів: Отець-Рідня-Мати. Спасительна: світ не по Правді. Українські релігійні роздуми про Воскресіння, Неволю і Спасіння. Ой Ми зіслані на признаванє. Нема в світі Правди не зіскати. Тільки в світі Правди як Отець-Рідна-Мати. Листки з приводу цієї Пісні: Еротичні містерії, тиждень від Катерини 7.12 до Калети. Доля. Св. Микола 19.12 – Народний речник перед Богом і Прадід. Стежки до листків про Українські традиції.','Нема в світі Правди Правди не зіскати
Що вже тая Правда стала неправдою жити |(2)

Нема в світі Правди Правди не зіскати
Що вже тая Правда стала неправдою жити |(2)

Тепер уже Правда у панів під ногами
А щира неправда сидить між панами |(2)

Тепер уже правду ногами стоптають
А щиру неправду медом-вином напувають |(2)

Нема в світі Правди правди не зіскати
Тільки в світі Правди як Отець-Рідна-Мати  |(2)','[''pisni.org.ua'', ''cat:dumy'', ''cat:suspilno-politychni'', ''Думи'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_437338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_437338','Нема в світі Правди не зіскати (5)','Нема в світі Правди Правди не зіскати
Що вже тая Правда стала неправдою жити |(2)

Нема в світі Правди Правди не зіскати
Що вже тая Правда стала неправдою жити |(2)

Тепер уже Правда у панів під ногами
А щира неправда сидить між панами |(2)

Тепер уже правду ногами стоптають
А щиру неправду медом-вином напувають |(2)

Нема в світі Правди правди не зіскати
Тільки в світі Правди як Отець-Рідна-Мати  |(2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4370338';
DELETE FROM song_versions WHERE song_id = 'pisniua_4370338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4370338';
DELETE FROM songs WHERE id = 'pisniua_4370338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4370338','Якби я...','Музика: Єлизавета Кравчук Слова: Єлизавета Кравчук','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Пісню виконує Каріна Кантерук.','Якби я з''явилась у цей світ,
Не жаліла б ніколи про це ти,
Я б найкращою донечкою стала,
За що, скажи, мене вбиваєш, мамо?..

Приспів:
Не почуєш ти моїх пісень     |
І не побачиш                 |
Колір моїх карих очей!..     |
Не відчуєш дотик моїх рук!.. |
Чому ти зупинила серця стук, |
Серця мого стук?..           | (2)

Чекала, що світ мене прийме,
Що мама зігріє, обійме!
Тільки поясни, у чому гріх-провина?
За що зі мною, рідна, так вчинила?

Приспів.

Не почуєш ти моїх пісень
І не побачиш
Колір моїх карих очей!..
Не відчуєш дотик моїх рук!..
Та знай, я все одно тебе люблю!
Так тебе люблю!

Та знай, я все одно тебе люблю!
Так тебе люблю!..','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4370338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4370338','Якби я...','Якби я з''явилась у цей світ,
Не жаліла б ніколи про це ти,
Я б найкращою донечкою стала,
За що, скажи, мене вбиваєш, мамо?..

Приспів:
Не почуєш ти моїх пісень     |
І не побачиш                 |
Колір моїх карих очей!..     |
Не відчуєш дотик моїх рук!.. |
Чому ти зупинила серця стук, |
Серця мого стук?..           | (2)

Чекала, що світ мене прийме,
Що мама зігріє, обійме!
Тільки поясни, у чому гріх-провина?
За що зі мною, рідна, так вчинила?

Приспів.

Не почуєш ти моїх пісень
І не побачиш
Колір моїх карих очей!..
Не відчуєш дотик моїх рук!..
Та знай, я все одно тебе люблю!
Так тебе люблю!

Та знай, я все одно тебе люблю!
Так тебе люблю!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4370338_l1','pisniua_4370338','YouTube','https://www.youtube.com/watch?v=aWjBEvz8VTE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4374034';
DELETE FROM song_versions WHERE song_id = 'pisniua_4374034';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4374034';
DELETE FROM songs WHERE id = 'pisniua_4374034';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4374034','У лісі, у темному серед пахучих трав','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1937','аудіозапис','Місце побутування: с. Лімна, Лімнянська сільрада, Турківський район, Львівська область. Респонденти: Кіра Катерина Василівна, 1937 р.н., Васильків Настя Миколаївна, 1929 р.н., Понейко Феня Миколаївна, 1931 р.н. Збирачі: Артем''як Мар''яна, Папіш Марія, Довгань Оксана.','У лісі, у темному
Серед пахучих трав,
Там лежит козаченько,     |
Неначе він заспав.        | (2)

А кров єго ташує,
Вірні єго друзі,
Ліки му прикладают,       |
А він неначе в сні.       | (2)

А у ниділю рано,
Як почало свитат,
Біжить якась дівчина      |
І подалась назад.         | (2)

Біжить якась дівчина
І стала говорить:
Ой, милий, мій миленький, |
А що ж тебе болит?..      | (2)

Мине болит рученька
І правая нога,
Бо мене поранила          |
Куля ворожая.             | (2)

Дівчино, дівчино,
Не стій біля мене,
Візьми си хустину,        |
Повитирай кров з мене.    | (2)','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4374034'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4374034','У лісі, у темному серед пахучих трав','У лісі, у темному
Серед пахучих трав,
Там лежит козаченько,     |
Неначе він заспав.        | (2)

А кров єго ташує,
Вірні єго друзі,
Ліки му прикладают,       |
А він неначе в сні.       | (2)

А у ниділю рано,
Як почало свитат,
Біжить якась дівчина      |
І подалась назад.         | (2)

Біжить якась дівчина
І стала говорить:
Ой, милий, мій миленький, |
А що ж тебе болит?..      | (2)

Мине болит рученька
І правая нога,
Бо мене поранила          |
Куля ворожая.             | (2)

Дівчино, дівчино,
Не стій біля мене,
Візьми си хустину,        |
Повитирай кров з мене.    | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_437185';
DELETE FROM song_versions WHERE song_id = 'pisniua_437185';
DELETE FROM songs_fts WHERE song_id = 'pisniua_437185';
DELETE FROM songs WHERE id = 'pisniua_437185';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_437185','Не стій Вербо над Водою','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Перлини української пісні. Пісенник. Упорядник Гордійчук М. М. - К.: Музична Україна, 1991','Хто каже: Не журися...? Господь Бог? Гаїлки-Великдень: Українське свято Відродження Світа. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. А на тій Вербі Рожеві Квіти. Буде тобі Квітка Красна. Листки з приводу цієї Пісні: Коляда і Великдень: Різдво і Відродження Світа. Вербний Тиждень і Шутка. Стежки до листків про Українські традиції.','Не стій Вербо над Водою рано-рано,
Не стій Вербо над Водою та ранесенько.

Розвий Вербо Сім Сот Квіток рано-рано,
Розвий Вербо Сім Сот Квіток та ранесенько.

Що всім Хлопцям по Квітоньці рано-рано,
Що всім Хлопцям по Квітоньці та ранесенько.

Тільки Грицеві нема Квітки рано-рано,
Тільки Грицеві нема Квітки та ранесенько.

"Не журися Милий Грицю рано-рано,
Не журися Милий Грицю та ранесенько.

Буде тобі Квітка Красна рано-рано,
Буде тобі Квітка Красна та ранесенько.

Буде тобі Красна Ганна рано-рано,
Буде тобі Ганнусенька та ранесенько."','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_437185'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_437185','Не стій Вербо над Водою','Не стій Вербо над Водою рано-рано,
Не стій Вербо над Водою та ранесенько.

Розвий Вербо Сім Сот Квіток рано-рано,
Розвий Вербо Сім Сот Квіток та ранесенько.

Що всім Хлопцям по Квітоньці рано-рано,
Що всім Хлопцям по Квітоньці та ранесенько.

Тільки Грицеві нема Квітки рано-рано,
Тільки Грицеві нема Квітки та ранесенько.

"Не журися Милий Грицю рано-рано,
Не журися Милий Грицю та ранесенько.

Буде тобі Квітка Красна рано-рано,
Буде тобі Квітка Красна та ранесенько.

Буде тобі Красна Ганна рано-рано,
Буде тобі Ганнусенька та ранесенько."');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437185_l1','pisniua_437185','YouTube','https://www.youtube.com/watch?v=sqn76ICvuIM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4368034';
DELETE FROM song_versions WHERE song_id = 'pisniua_4368034';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4368034';
DELETE FROM songs WHERE id = 'pisniua_4368034';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4368034','Під небом синім','Музика: Діана Пташинська Слова: Діана Пташинська. Виконує: Діана Пташинська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Україно моя, Україно квітуча,
Золотаві лани і небесна блакить,
Мов джерельна вода, лине мова співуча,
Що, як музика, в серці моєму бринить!

Приспів:
Під небом синім на Україні
Шумлять жита!..
Співайте з нами усі країни,
Усі міста!..
Понад землею полине пісня,
Неначе птах,
Про край, де квітнуть волошки сині
В рясних житах!..

Україно моя, росяна Україно,
Яблуневі сади, колосисті поля,
Лине пісня дзвінка в небеса соколині
І радіє під сонцем квітуча земля!

Приспів.

Україно моя, чарівна Україно,
Поміж сотень шляхів і життєвих доріг,
Рідну мову свою і пісні солов''їні
Я навік збережу, мов святий оберіг!

Приспів.','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4368034'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4368034','Під небом синім','Україно моя, Україно квітуча,
Золотаві лани і небесна блакить,
Мов джерельна вода, лине мова співуча,
Що, як музика, в серці моєму бринить!

Приспів:
Під небом синім на Україні
Шумлять жита!..
Співайте з нами усі країни,
Усі міста!..
Понад землею полине пісня,
Неначе птах,
Про край, де квітнуть волошки сині
В рясних житах!..

Україно моя, росяна Україно,
Яблуневі сади, колосисті поля,
Лине пісня дзвінка в небеса соколині
І радіє під сонцем квітуча земля!

Приспів.

Україно моя, чарівна Україно,
Поміж сотень шляхів і життєвих доріг,
Рідну мову свою і пісні солов''їні
Я навік збережу, мов святий оберіг!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4368034_l1','pisniua_4368034','YouTube','https://www.youtube.com/watch?v=qCwNKRcWBB4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4368034_l2','pisniua_4368034','YouTube','https://www.youtube.com/watch?v=0AY4gaRBXSw','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4369736';
DELETE FROM song_versions WHERE song_id = 'pisniua_4369736';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4369736';
DELETE FROM songs WHERE id = 'pisniua_4369736';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4369736','Справжній друг','Музика: Борис Савельєв Слова: Михайло Пляцковський. Виконує: Марта Якушенко','uk','ukraine_1991',NULL,NULL,NULL,'Пісню виконує Марта Якушенко.','Дружба віддана не зламається,
Не розклеїться від дощу й негод!
Друг в біді не лишить,
Щирим словом втішить!
Отакий від незрадливий,
Справжній друг!

Ми посваримось і помиримось,
"Нерозлийвода", - кажуть всі навкруг.
В день чи ніч негожу
Друг мені поможе!
Отакий він незрадливий,
Справжній друг!

Друг завжди мене прийде виручить,
Він не жде подяк,
І не жде послуг!
Буть комусь в пригоді
В будь-якій погоді! -
Ось що значить незрадливий,
Справжній друг!','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4369736'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4369736','Справжній друг','Дружба віддана не зламається,
Не розклеїться від дощу й негод!
Друг в біді не лишить,
Щирим словом втішить!
Отакий від незрадливий,
Справжній друг!

Ми посваримось і помиримось,
"Нерозлийвода", - кажуть всі навкруг.
В день чи ніч негожу
Друг мені поможе!
Отакий він незрадливий,
Справжній друг!

Друг завжди мене прийде виручить,
Він не жде подяк,
І не жде послуг!
Буть комусь в пригоді
В будь-якій погоді! -
Ось що значить незрадливий,
Справжній друг!');
DELETE FROM song_links WHERE song_id = 'pisniua_437436';
DELETE FROM song_versions WHERE song_id = 'pisniua_437436';
DELETE FROM songs_fts WHERE song_id = 'pisniua_437436';
DELETE FROM songs WHERE id = 'pisniua_437436';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_437436','Там на Кубані єсть Брюховецька','Українська народна пісня. Виконує: Ніна Матвієнко, Тріо "Золоті Ключі", Кубанський Козачий Хор','uk','ukraine_before_1917',NULL,NULL,'Українські релігійні роздуми про Спасіння © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003','Спасительна: світ не по Правді. Українські релігійні роздуми про Воскресіння, Неволю і Спасіння. Ой Ми зіслані на признаванє. Нема в світі Правди не зіскати. Байді Молодому Мед-горілку пити. У Чистому Степу собі Живности доставати. Но ми докажем своїм Клинком. Там тече Річка в Чистий Лиман. Приїдь Синочок напийсь Води. Було колись в Україні ревіли гармати В Полі Доля стояла Всі покою щиро прагнуть Гей не дивуйте Добрії Люди Йде Січове Військо Нам не страшний червоний гніт Наш Отаман Гамалія Отаман завзятий Ой на Горі на Могилі Там на Кубані єсть Брюховецька Чуєш мій друже славний Юначе Наливаймо Браття Кришталеві Чари. Гей Гук Мати Гук де Козаки п''ють Гей Гук Мати Гук де Козаки п''ють Гей Гук Мати Гук там де Козаки п''ють Наливаймо Браття Кришталеві Чари Наливаймо Браття Кришталеві Чаші Ой наступає та Чорна Хмара Ой наступала та Чорна Хмара Ой наступала та Чорна Хмара Листки з приводу цієї Пісні: Коляда і Великдень: Різдво і Відродження Світа. Гаїлковий Білоданчик і Первісний Молодець-Стрілець Українські реліґійні роздуми про Неволю та Спасіння Еротичні містерії, тиждень від Катерини 7.12 до Калети. Доля. Св. Микола 19.12 – Народний речник перед Богом і Прадід. Стежки до листків про Українські традиції. Рокове Коло. Історична довідка. Про долю Кубанських українців у 1930-х роках (Великий Голодомор 1932-33): станиці Брюховецька, Полтавська, Лабинська, Старокорсунська та інші. Один військовий розповідає про своє прибуття до станиці Брюховецької в Армавирському окрузі, яка перед тим мала 20 тисяч населення. Як і в інших місцях, кілька місяців тому придушили спробу повстання й усіх уцілілих — чоловіків і жінок, дітей та інвалідів — депортували, за винятком якоїсь старої пари. На вулиці виріс бур''ян висотою з дерево, а зруйновані та покинуті хати ледь було видно. Він увійшов у дім: "За півхвилини, що я провів там, я побачив два людських трупи. Стара жінка сиділа на підлозі, і голова з сивим нечесаним волоссям упала їй на груди. Вона похилилася на ліжко, широко розставивши ноги. Її мертві руки схрещувалися на грудях. Вона вмерла саме так, віддавши Богові душу, і як хрестилася, так і застигла навіки. Чиясь жовта рука простяглася з ліжка і лежала на голові жінки. На ліжку виднілося тіло старого чоловіка в домотканій сорочці та штанях. Старі підошви ніг стирчали над краєм ліжка, і видно було, що ці ноги багато ходили по землі. Я не міг бачити обличчя чоловіка, воно було обернуте до стіни. З соромом мушу признатися, мені було справді страшно. Чомусь та рука, що лежала на голові старої, особливо потрясла мене. Можливо, в останньому зусиллі старий опустив руку на голову своєї мертвої жінки, і так вони обоє й померли. Коли це сталося — тиждень тому чи два?" Але все ж таки там була одна жива душа. Голий чоловік із довгим волоссям і бородою воював зі зграєю кішок під акацією за володіння мертвим голубом. Він збожеволів, але оповідач зміг поєднати в одне ціле його історію. Той був комуніст і голова місцевої сільради, але з початку колективізації розірвав свій партквиток і приєднався до повстанців. Їх у більшості розстріляли, але йому вдалося заховатися в малярійних болотах поблизу річки Кубані. Його жінка та діти були серед депортованих. Чоловікові якось удалося пережити зиму, а тоді він повернувся до свого старого дому — останній мешканець того, що колись було великим і заможним селищем... Як і в Україні, національна культура зазнала у цьому регіоні сильних утисків, але тут вони були ще жорстокіші. У 1926 р. на Північному Кавказі проживало 3 107 000 українців, із них 1 412 276 — лише на Кубані. Існувало багато українських шкіл, які перебували під юрисдикцією Скрипника як тодішнього наркома освіти. У Краснодарі працював український педагогічний інститут, у станиці Полтавській — педагогічний технікум. У грудні 1929 р., під час загальної культурної чистки в Україні, заарештували деяких науковців кубанського походження. У 1932 — 1933 рр. місцева преса (зокрема газета "Молот") вже рясніла звинуваченнями багатьох визначних осіб у "місцевому націоналізмі". На початку 1933р. було арештовано чимало партійно-державних та культурних діячів, у тому числі майже всіх професорів українських навчальних закладів. Російська мова стала витіснювати українську як мова навчання. А між 1933 та 1937 роками всі 746 українських початкових шкіл на Кубані перетворили на російські. Роздавлена, знелюднена депортуваннями, повністю денаціоналізована Кубань потерпіла, мабуть, більше, ніж інші регіони. Можна стверджувати, що влада досягла тут повної перемоги над місцевим населенням. Серед тих, кого не депортували, розпочався голод. Методи його штучного створення нічим не відрізнялися від описуваних нами раніше. Ось нотатки деяких свідків пережитого. "Тут, на Кубані, — писав один із них, — такий голод, що мертвих уже ніде ховати". "Діти, — писав інший, — сидять, забившися у кут, і тремтять від голоду і холоду". Листи повідомляють таке: "Ми з моїм дорогим чоловіком і дітьми працювали дуже тяжко минулого літа. Ми мали хліба на цілий рік... вони залишили нас безпомічними і без статків"; "У грудні ми мали здати все наше зерно та інші продукти, навіть городину, державі"; "У степу чи в полі, куди не піди, цілі родини лежать" і т. ін. Двох селян на сьомому десятку життя засудили на 10-річне ув''язнення за те, що знайшли в них два кілограми сирого кукурудзяного лушпиння. Інший випадок: у вантажній машині, що відвозила на цвинтар мертвих дітей, двоє виявилися живими; лікаря, котрий був причетний до цього, розстріляли. Інженер, що працював на Північно-Кавказькій залізниці, подає такий опис подій: "На початку 1933 р. від залізничної станції Кавказька кожного ранку в певний час перед світанком відходили два таємничих потяги в напрямі Мінеральних Вод та Ростова. Потяги були порожні, і кожен складався з 5-10 вантажних вагонів. Приблизно за дві-чотири години потяги поверталися, зупинялися на якийсь час на маленькій бічній станції, а тоді йшли далі запасною колією, що була тупиком і вела до колишньої каменярні. Поки потяги зупинялися на Кавказькій або на бічній колії, всі вагони були замкнені, але виглядали навантаженими і пильно охоронялися ДПУ. Спочатку ніхто не звертав уваги на таємничі потяги, включно зі мною. Я працював там тимчасово, оскільки був ще студентом Московського інституту транспорту. Але одного разу кондуктор Х., член партії, тихо покликав мене і повів до поїздів, сказавши: "Я хочу тобі показати, що є у вагонах". Він трохи відчинив двері одного з них, я зазирнув і майже знепритомнів через те, що там побачив. У вагоні було повно трупів, накиданих будь-як. Кондуктор пізніше розповів мені таку історію: "Начальник станції отримав таємний наказ від свого начальства виконати прохання місцевого та залізничного відділів ДПУ і мати напоготові кожного світанку два потяги з порожніми вантажними вагонами. Бригаду залізничників, що обслуговувала потяги, охороняли співробітники ДПУ. Потяги виходили, щоб зібрати трупи селян, яких доставляли до залізничних станцій із ближніх сіл. Трупи ховали на віддаленій ділянці за каменярнею. Всю зону охороняло ДПУ, і нікого зі сторонніх осіб близько не підпускали". Як ми вже говорили раніше, навіть у великих станицях, населення яких не депортували в масовому масштабі, втрати від голоду були величезні — 14 тис. з 24-х залишилося у станиці Лабинській тощо. У станиці Старокорсунській кавалерійську частину військ ДПУ, яку відрядили туди в 1930 р., завжди тримали у бойовій готовності.... (Роберт Конквест. Жнива скорботи. К., "Либідь", 1993, с. 306-313. http://zhnyva33.narod.ru)','Там на Кубані єсть Брюховецька
Там тече Річка в Чистий Лиман   |(2)

Там тече Річка в Чистий Лиман
Ой там стояла Мати Моя          |(2)

Ой там стояла Мати Моя
Тай дожидала Сина свого         |(2)

Приїдь Синочок напийсь Води
Щоб не узнали наші враги        |(2)

Ой я б приїхав напивсь Води
Так не пускають наші враги      |(2)

Так не пускають наші враги
Б''ють нас і ріжуть острим мечом |(2)

Б''ють нас і ріжуть острим мечом
Но ми докажем своїм клинком !   |(2)','[''pisni.org.ua'', ''cat:dumy'', ''cat:kozacki'', ''cat:suspilno-politychni'', ''Думи'', ''Козацькі пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_437436'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_437436','Там на Кубані єсть Брюховецька','Там на Кубані єсть Брюховецька
Там тече Річка в Чистий Лиман   |(2)

Там тече Річка в Чистий Лиман
Ой там стояла Мати Моя          |(2)

Ой там стояла Мати Моя
Тай дожидала Сина свого         |(2)

Приїдь Синочок напийсь Води
Щоб не узнали наші враги        |(2)

Ой я б приїхав напивсь Води
Так не пускають наші враги      |(2)

Так не пускають наші враги
Б''ють нас і ріжуть острим мечом |(2)

Б''ють нас і ріжуть острим мечом
Но ми докажем своїм клинком !   |(2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4341083';
DELETE FROM song_versions WHERE song_id = 'pisniua_4341083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4341083';
DELETE FROM songs WHERE id = 'pisniua_4341083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4341083','Серце мами','Музика: Наталія Май Слова: Наталія Май. Виконує: Віолетта Шинкаренко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Серце мами, рідне і гаряче,
За тобою слідує в путі,
І коли душа твоя заплаче -
Серце від образи захистить.
Прошепоче лагідно: "Синок..."
І закриє від біди собою.
Серце мами, сповнене тривог,
Серце мами завжди із тобою!

Приспів:
Завжди з нами серце мами,
Материнське серце золоте!
Завжди з нами серце мами,
Серце мами рідне і святе!

Знаю, мамо, ти мене чекала,
Тільки я барився у путі.
Від біди мене оберігала,
Я прийшла сказать тобі:
"Прости за безсонні ночі, довгі дні,
За усе, що довелось пізнати..."
Мабуть, так судилося мені,
Шлях тернистий по землі топтати...

Приспів.

Речитатив:
Пам''ятайте, люди:
Мама, як сонечко ясне, одна на світі,
Вона завжди пробачить і зрозуміє!..
Люди, бережіть своїх матерів!..

Приспів. (2)','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4341083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4341083','Серце мами','Серце мами, рідне і гаряче,
За тобою слідує в путі,
І коли душа твоя заплаче -
Серце від образи захистить.
Прошепоче лагідно: "Синок..."
І закриє від біди собою.
Серце мами, сповнене тривог,
Серце мами завжди із тобою!

Приспів:
Завжди з нами серце мами,
Материнське серце золоте!
Завжди з нами серце мами,
Серце мами рідне і святе!

Знаю, мамо, ти мене чекала,
Тільки я барився у путі.
Від біди мене оберігала,
Я прийшла сказать тобі:
"Прости за безсонні ночі, довгі дні,
За усе, що довелось пізнати..."
Мабуть, так судилося мені,
Шлях тернистий по землі топтати...

Приспів.

Речитатив:
Пам''ятайте, люди:
Мама, як сонечко ясне, одна на світі,
Вона завжди пробачить і зрозуміє!..
Люди, бережіть своїх матерів!..

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4341083_l1','pisniua_4341083','YouTube','https://www.youtube.com/watch?v=E-Vtow6XI6U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_437137';
DELETE FROM song_versions WHERE song_id = 'pisniua_437137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_437137';
DELETE FROM songs WHERE id = 'pisniua_437137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_437137','Ой Дан Дан Білодан ой повідай Правду','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Потаємні пісні любощів і кохання © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2002','Пісня-Гра. Забави з Паруванням-Цілуванням. Гаїлки-Великдень: Українське свято Відродження Світа. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... Ой Данчику Білоданчику поплинь. Пошукай си Посестриченьки. Як Гаївку Дівки водять. Ой Дан Дан Білодан ой повідай Правду Ой Данчику Білобрамчику поплинь Ой Данчику Білоданчику поплинь Ой Мій Милий Білодарчику поплинь То в Рожу то в Калину. Ой Дан Дан Білодан ой повідай Правду Скакали Дикі Кози А ми Йому Кінця не знайдем. Десь узялася Молода Дівчина. Вибирай си кого любиш. Вже Весна воскресла. А я жала Пшениченьку лиш по Колоскови. Ой дай Дана межи Туденьками Первісний Молодець-Стрілець і Білодарчик. Особливістю Українських Колядкових переказів про Почин людського роду є отсе, що побіч переказів про Прадівчину на космічнім Морі та Дівчину під Прадеревом чи то Райським Деревом, є ще й мітольоґійні образці про Первісного Молодця-Стрільця, що пливе Дунаєм та пускає з Водою Стрілки, щоби плинули до його вимріяної Дівчини. Ця Дівчина не є означеною що до особи і що до місця свого перебування, а приявлює лишень предмет побажань і мрію Молодця. Щедрівки на цю тему згадують не самого, одинокого, Молодця, але і його найблизшу рідню, — Матінку, Сестричку і Братіка, або Батенька, Матінку та ін., що разом з Молодцем приявлюють мабуть Першу людську рідню, так, як це з''ображують інші Колядки, що співають про Прарідню. Женихання Молодця, отся туга за Дівчиною і мрія про неї — це як раз подібність до цього поступу психічного чи життяного, що зображений в Колядці про "Грішну Панну", яка "задивилася на Мале Пахоля". Плаває Човник по Дунаєчку Приспів: Калино Калино Моя 3 під Тебе Вода леліє! А в тім Човнику Красний Молодець Струже-струже Мальовані Стрілки Що виструже Стрілку на Дунай пустить Пливітеж Мої Стрілки до Моєї Дівки Нехай Дівонька приготуєцця Для Моєї Матусі Тонкий Рубочок Для Моєї Сестриці Рутяний Віночок Для Мого Братика Шабелька до бока Пускання стрілок на воду молодим хлопцем, з бажанням, щоб вода знесла їх до дівчини, — це подібність до грецько-латинського Ероса-Купідона-Амора з луком і стрілами супроти Психе. Але Українське уявлення здається давнішим, через те, що посередником між хлопцем і дівчиною є живлова вода. Звертання до Калини (приспів) має особливе символічне значіння, бо Калина є символом великої розродчости. Вода, що зпід Калини леліє, — це також символ творчости й родючости. Плаває по Воді Золотий Човник А в тім Човнику Красний Молодець Струже Стрілоньки Малиновії Струже-малює на Дунай пускає Пливіте Стрілоньки до Моєї Дівоньки Нехай готує Тонкі Подарки Моєму Батеньку Тонку Кошулю А Моєй Матері Тонкий Рубочок Сестриці з Рути Віночок А Братікови Шовкову Хустку А мені Молодому Сама Молодая Скриня Повная а Постіль Білая Хоча в цих Щедрівках образці дарунків взяті з побутового життя пізнішої культурної доби, то однак все інше в Щедрівках указує на дуже велику культурну старину; для того можна вважати ці образці за пізнішу вставку в Щедрівках. Обі Щедрівки мають визначну Місячну символіку. Відгомоном цих Щедрівок є Гаїлки про Білодарчика, що пливе по Дунайчику, а Гаїлкові Дівчата залицяються до нього та співають до Нього: Ой Мій Милий Білодарчику поплинь Ой Мій Милий Білодарчику Поплинь-поплинь по Дунайчику Розчеши си Росу-Косу Умий же си Біле Личенько Пошукай си Посестриченьки! Постать Білоданчика в Гаїлці (також званого Білодарчиком) є без сумніву Місячна. І цікаве при тім отсе, що на Нових Гебридах Найвищим Єством Місячної мітольоґії є Tangaro, якому приписують великий вплив на приспорення родючости й плодючости Землі і надприродну життєву силу "мана". Пошанування Tangara зв''язують там з пошануванням Каменя, так, що великі купи каменя звуть tangara. Пригадується також, що Уралалтайське Найвище Єство, Білий Князь, зветься Ai-Tangeri. А у Піґмеїв Місячним божеством є Billik Taria. Мабуть бачення Місячного божества під подібнозвучним іменем було колись поширено на просторах Сходу і Полудня. Листки з приводу цієї Пісні: Коляда і Великдень: Різдво і Відродження Світа. Вербний Тиждень і Шутка. Гаїлки-Великдень: Українське Свято Відродження Світа. (Вибір Пісень) Про Українські назви місяців Марець і Май. Стежки до листків про Українські традиції.','Всі :
Ой Дан-Дан-Білодан
Ой повідай Правду нам
Як Гаївку Баби водять

Одна :
Ой Дан Дан Білодан
Ой не водять шкандибають
Тай Невісток проклинають

Всі :
Ой Дан-Дан-Білодан
Ой повідай Правду нам
Як Гаївку Діди водять

Одна :
Ой Дан-Дан-Білодан
Ой не водять дим пускають
Вишнівочку попивають

Всі :
Ой Дан-Дан-Білодан
Ой повідай Правду нам
Як Гаївку Дівки водять

Одна :
Ой Дан-Дан-Білодан
Ходять наче вишивають
Веселенької співають

Всі :
Ой Дан-Дан-Білодан
Ой повідай Правду нам
Як Гаївку Хлопці водять

Одна :
Ой Дан-Дан-Білодан
Ой то в Гору то в Долину
Ой то в Лісок то в Калину','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_437137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_437137','Ой Дан Дан Білодан ой повідай Правду','Всі :
Ой Дан-Дан-Білодан
Ой повідай Правду нам
Як Гаївку Баби водять

Одна :
Ой Дан Дан Білодан
Ой не водять шкандибають
Тай Невісток проклинають

Всі :
Ой Дан-Дан-Білодан
Ой повідай Правду нам
Як Гаївку Діди водять

Одна :
Ой Дан-Дан-Білодан
Ой не водять дим пускають
Вишнівочку попивають

Всі :
Ой Дан-Дан-Білодан
Ой повідай Правду нам
Як Гаївку Дівки водять

Одна :
Ой Дан-Дан-Білодан
Ходять наче вишивають
Веселенької співають

Всі :
Ой Дан-Дан-Білодан
Ой повідай Правду нам
Як Гаївку Хлопці водять

Одна :
Ой Дан-Дан-Білодан
Ой то в Гору то в Долину
Ой то в Лісок то в Калину');
DELETE FROM song_links WHERE song_id = 'pisniua_437232';
DELETE FROM song_versions WHERE song_id = 'pisniua_437232';
DELETE FROM songs_fts WHERE song_id = 'pisniua_437232';
DELETE FROM songs WHERE id = 'pisniua_437232';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_437232','Ой у Перепілки та Голівка болить','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Потаємні пісні любощів і кохання © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2002','Пісня-Гра. Забави з Паруванням-Цілуванням. Гаїлки-Великдень: Українське свято Відродження Світа. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... – Мед і Ябка... А у Перепілки Молодий Мужичок. Ой у Перепілки та Голівка болить Вибирай си кого любиш. Вже Весна воскресла. Листки з приводу цієї Пісні: Коляда і Великдень: Різдво і Відродження Світа. Про Українські назви місяців Марець і Май. Стежки до листків про Українські традиції.','Дівчата стають в Коло, Одна — в середині,
ходять і співають:

Ой у Перепілки та Голівка болить

Приспів: Тут була тут Перепілочка
Тут була тут Сизокрилая

Ой у Перепілки та Плечиці болять
Ой у Перепілки та Рученьки болять
Ой у Перепілки та Колінця болять
Ой у Перепілки та Спинонька болить

Щоразу на слові "болить" Перепілка (та Дівчина, що всередині)
хапається за голову, плечі, руки, хитає головою, вдаючи з себе хвору.
Далі всі співають:

Ой у Перепілки та Старий Мужичок
Із Комори йде і Нагайку несе
Він Нагайку несе бородою трясе

Перепілка закриває руками очі, ніби сльози втирає.
Всі співають:

А у Перепілки Молодий Мужичок
Із Базару іде Черевички несе

Перепілка підстрибує, б''є в долоні,
рознімає руки Дівчатам, щоб вибігти з Кола.
Котра Дівчина пустить руку, та йде в середину.
Гра починається спочатку.    Голос 1','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_437232'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_437232','Ой у Перепілки та Голівка болить','Дівчата стають в Коло, Одна — в середині,
ходять і співають:

Ой у Перепілки та Голівка болить

Приспів: Тут була тут Перепілочка
Тут була тут Сизокрилая

Ой у Перепілки та Плечиці болять
Ой у Перепілки та Рученьки болять
Ой у Перепілки та Колінця болять
Ой у Перепілки та Спинонька болить

Щоразу на слові "болить" Перепілка (та Дівчина, що всередині)
хапається за голову, плечі, руки, хитає головою, вдаючи з себе хвору.
Далі всі співають:

Ой у Перепілки та Старий Мужичок
Із Комори йде і Нагайку несе
Він Нагайку несе бородою трясе

Перепілка закриває руками очі, ніби сльози втирає.
Всі співають:

А у Перепілки Молодий Мужичок
Із Базару іде Черевички несе

Перепілка підстрибує, б''є в долоні,
рознімає руки Дівчатам, щоб вибігти з Кола.
Котра Дівчина пустить руку, та йде в середину.
Гра починається спочатку.    Голос 1');
DELETE FROM song_links WHERE song_id = 'pisniua_4375230';
DELETE FROM song_versions WHERE song_id = 'pisniua_4375230';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4375230';
DELETE FROM songs WHERE id = 'pisniua_4375230';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4375230','Слава й честь вам, поклін',NULL,'uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис','Місце побутування: смт Запитів, Кам''янка-Бузький район, Львівська область. Респондент: Максимишин Марія Олексіївна. Збирачі: Вовчак Андрій, Мартиник Соломія.','Слава й честь вам, поклін,
Борці за волю і долю України!
Ви жертвою в бою нерівнім лягли
З любові до свого народу,
За нього віддали усе, що змогли:
Життя свої, честь і свободу.
Надійде ще час і повстане народ
У силі своїй і свободі,
І знищить усе, що гнітило його,
І радість настане в народі!

За вами борців свіжий полк вже іде,
На смерть і загладу готовий,
Прощайте, прощайте, ви чесно пройшли
Велику дорогу любові.
Надійде ще час і повстане народ
У силі своїй і свободі,
І знищить усе, що гнітило його,
І радість настане в народі!','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4375230'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4375230','Слава й честь вам, поклін','Слава й честь вам, поклін,
Борці за волю і долю України!
Ви жертвою в бою нерівнім лягли
З любові до свого народу,
За нього віддали усе, що змогли:
Життя свої, честь і свободу.
Надійде ще час і повстане народ
У силі своїй і свободі,
І знищить усе, що гнітило його,
І радість настане в народі!

За вами борців свіжий полк вже іде,
На смерть і загладу готовий,
Прощайте, прощайте, ви чесно пройшли
Велику дорогу любові.
Надійде ще час і повстане народ
У силі своїй і свободі,
І знищить усе, що гнітило його,
І радість настане в народі!');
DELETE FROM song_links WHERE song_id = 'pisniua_437535';
DELETE FROM song_versions WHERE song_id = 'pisniua_437535';
DELETE FROM songs_fts WHERE song_id = 'pisniua_437535';
DELETE FROM songs WHERE id = 'pisniua_437535';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_437535','Зажурились Галичанки тай на тую зміну','Музика: Роман Купчинський Слова: Роман Купчинський. Виконує: Не журись!','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'1. Стрілецька Голгофа. Упорядник Т.Салига. - Львів: Каменяр, 1992 2. Пісні Українських Січових Стрільців. - 1990 (Самвидав) 3. З пам''яті (Anrzej)','*Два останні рядки кожної в''язки повторювати за цим взірцем **Текст поданий за джерелом 1 Акорди підібрано на слух за джерелом 2, спрощено. Тональність ориґінальна. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... – Мед і Ябка... Правой ручкою обняла ще й поцілувала. Ой не годен пан Каньовський мене цілувати. Що в Батька Грицька тай Син Василько Хто ж нас поцілує в уста малинові. Гей-гу гей-га таке то в нас життя Зажурились Галичанки тай на тую зміну Ой чого ж ти зажурився Стрільче Молодий Човен хитається серед Води Як Сурми заграють Висловлювання: Ци держи Віру старовіцкую? Доброї години треба в старших людей питати Добре діло треба починати із малого кроку Старшим людям "Добрий День" казати Шапочку знімати з празником поздоровляти – Дума про Олексія Поповича. Листки з приводу цієї Пісні: Еротичні містерії, тиждень від Катерини 7.12 до Калети. Еротичні містерії, Калета 13.12 - Передріздвяний Святочний час. Українські релігійні роздуми про Воскресіння, Неволю і Спасіння. Пісні про світ не по Правді. Стежки до листків про Українські пісні. Підбір акордів: bohdanko (pisni.org.ua)','Зажурились Галичанки тай на тую зміну
Ой відходять Наші Стрільці десь на Україну
Хто ж нас поцілує в уста малинові
Карі оченята чорненькії брови
Хто ж нас поцілує в уста малинові
Карі оченята чорні брови *

Не журіться Галичанки є ще і Військові
Вони краще обіймають ніж Стрільці Січові
Ті вас поцілують в уста малинові
Карі оченята чорненькії брови

Ой не будуть більш Військові з нами приставати
І не будуть нас Військові за стан обіймати
Ні не поцілують в уста малинові
Карі оченята чорненькії брови

Аж як ви із України вернетеся знову
І як перше знов підете з нами на розмову
Тоді вже цілуйте в уста малинові
Карі оченята чорненькії брови **
Народний варіант:

Зажурились Галичанки та й на тую зміну,
Ой відходять УСуСуси десь на Україну
Хто ж нас поцілує в уста малинові
Карі оченята чорненькії брови

Не журіться Галичанки є ще і Військові
Вони краще обіймають ніж Стрільці Січові
Ті вас поцілують в уста малинові
Карі оченята чорненькії брови

Ой не будуть більш Військові з нами приставати
І не будуть нас Військові за стан обіймати
Ні не поцілують в уста малинові
Карі оченята чорненькії брови

Не журіться Галичанки остались Поляки
Вони краще обіймають як ті Гайдамаки
Ті вас поцілують в уста малинові
Карі оченята чорненькії брови

Ой не будуть вражі Ляхи з нами приставати
І не будуть вражі Ляхи за стан обіймати
Ні не поцілують в уста малинові
Карі оченята чорненькії брови

Не журіться Галичанки бо ще є Угорці
Вони краще обіймають як Вкраїнські Хлопці
Ті вас поцілують в уста малинові
Карі оченята чорненькії брови

Ой не будуть ті Угорці з нами приставати
І не будуть ті Угорці за стан обіймати
Ні не поцілують в уста малинові
Карі оченята чорненькії брови

Не журіться Галичанки бо ще прийдуть Німці
Вони краще обіймають як ті Українці
Ті вас поцілують в уста малинові
Карі оченята чорненькії брови

Ой не будуть вражі німці з нами приставати
І не будуть вражі німці за стан обіймати
Ні не поцілують в уста малинові
Карі оченята чорненькії брови

Аж як ви із України вернетеся знову
І як перше знов підете з нами на розмову
Тоді вже цілуйте в уста малинові
Карі оченята чорненькії брови

Акорди:

Зажурились Галичанки та й на тую зміну,
Ой відходять УСуСуси десь на Україну
Хто ж нас поцілує в уста малинові
Карі оченята чорненькії брови
Хто ж нас поцілує в уста малинові
Карі оченята чорні брови','[''pisni.org.ua'', ''cat:istorychni'', ''cat:strilecki'', ''cat:zhartivlyvi'', ''Історичні пісні'', ''Стрілецькі пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_437535'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_437535','Зажурились Галичанки тай на тую зміну','Зажурились Галичанки тай на тую зміну
Ой відходять Наші Стрільці десь на Україну
Хто ж нас поцілує в уста малинові
Карі оченята чорненькії брови
Хто ж нас поцілує в уста малинові
Карі оченята чорні брови *

Не журіться Галичанки є ще і Військові
Вони краще обіймають ніж Стрільці Січові
Ті вас поцілують в уста малинові
Карі оченята чорненькії брови

Ой не будуть більш Військові з нами приставати
І не будуть нас Військові за стан обіймати
Ні не поцілують в уста малинові
Карі оченята чорненькії брови

Аж як ви із України вернетеся знову
І як перше знов підете з нами на розмову
Тоді вже цілуйте в уста малинові
Карі оченята чорненькії брови **
Народний варіант:

Зажурились Галичанки та й на тую зміну,
Ой відходять УСуСуси десь на Україну
Хто ж нас поцілує в уста малинові
Карі оченята чорненькії брови

Не журіться Галичанки є ще і Військові
Вони краще обіймають ніж Стрільці Січові
Ті вас поцілують в уста малинові
Карі оченята чорненькії брови

Ой не будуть більш Військові з нами приставати
І не будуть нас Військові за стан обіймати
Ні не поцілують в уста малинові
Карі оченята чорненькії брови

Не журіться Галичанки остались Поляки
Вони краще обіймають як ті Гайдамаки
Ті вас поцілують в уста малинові
Карі оченята чорненькії брови

Ой не будуть вражі Ляхи з нами приставати
І не будуть вражі Ляхи за стан обіймати
Ні не поцілують в уста малинові
Карі оченята чорненькії брови

Не журіться Галичанки бо ще є Угорці
Вони краще обіймають як Вкраїнські Хлопці
Ті вас поцілують в уста малинові
Карі оченята чорненькії брови

Ой не будуть ті Угорці з нами приставати
І не будуть ті Угорці за стан обіймати
Ні не поцілують в уста малинові
Карі оченята чорненькії брови

Не журіться Галичанки бо ще прийдуть Німці
Вони краще обіймають як ті Українці
Ті вас поцілують в уста малинові
Карі оченята чорненькії брови

Ой не будуть вражі німці з нами приставати
І не будуть вражі німці за стан обіймати
Ні не поцілують в уста малинові
Карі оченята чорненькії брови

Аж як ви із України вернетеся знову
І як перше знов підете з нами на розмову
Тоді вже цілуйте в уста малинові
Карі оченята чорненькії брови

Акорди:

Зажурились Галичанки та й на тую зміну,
Ой відходять УСуСуси десь на Україну
Хто ж нас поцілує в уста малинові
Карі оченята чорненькії брови
Хто ж нас поцілує в уста малинові
Карі оченята чорні брови');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437535_l1','pisniua_437535','YouTube','https://www.youtube.com/watch?v=g1ZYKfawLQ0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4375287';
DELETE FROM song_versions WHERE song_id = 'pisniua_4375287';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4375287';
DELETE FROM songs WHERE id = 'pisniua_4375287';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4375287','То не грім загримів','Виконує: Тарас Компаніченко','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис','Місце побутування: смт Запитів, Кам''янка-Бузький район, Львівська область. Респондент: Максимишин Марія Олексіївна. Збирачі: Вовчак Андрій, Мартиник Соломія.','То не грім загримів,
То не бір зашумів,
Не столітні дуби затріщали -
То лихі вороги
На наш край дорогий,
Мов голодні вовки,
Нападали.

І на нашій землі
Свої хвилі брудні
Ураганом важким покотив,
І в годину грізну
Дорогу Вітчизну
У пожарі, в крові
Затопили.

Де ж ті вірні сини?
Де поділись вони?
Де ж ті лицарі гріжні,
Завзяті?
Чом вони не встають,
Як один чом не йдуть
Батьківщину свою визволяти?..

Ти, злодюго, трясись,
Утікай, бережись,
Бо господар додому вертає!
А ти, темная ніч,
Проходи чим скоріш -
На Вкраїні хай сонце засяє!','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4375287'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4375287','То не грім загримів','То не грім загримів,
То не бір зашумів,
Не столітні дуби затріщали -
То лихі вороги
На наш край дорогий,
Мов голодні вовки,
Нападали.

І на нашій землі
Свої хвилі брудні
Ураганом важким покотив,
І в годину грізну
Дорогу Вітчизну
У пожарі, в крові
Затопили.

Де ж ті вірні сини?
Де поділись вони?
Де ж ті лицарі гріжні,
Завзяті?
Чом вони не встають,
Як один чом не йдуть
Батьківщину свою визволяти?..

Ти, злодюго, трясись,
Утікай, бережись,
Бо господар додому вертає!
А ти, темная ніч,
Проходи чим скоріш -
На Вкраїні хай сонце засяє!');
DELETE FROM song_links WHERE song_id = 'pisniua_437481';
DELETE FROM song_versions WHERE song_id = 'pisniua_437481';
DELETE FROM songs_fts WHERE song_id = 'pisniua_437481';
DELETE FROM songs WHERE id = 'pisniua_437481';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_437481','У Містечку Богуславку капелія грала','Українська народна пісня. Виконує: Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,'Українські релігійні роздуми про Спасіння © Видавництво „Павутинонька“, Нью Йорк – Львів – Київ – Харків – Москва, 2003','Пара Байді — Бондарівна:-) Воскресна: світ не по Правді. Українські релігійні роздуми про Воскресіння, Неволю і Спасіння. Там гуляла Бондарівна як Пишная Пава. Куди несли Бондарівну скрізь кривави річки. Листки з приводу цієї Пісні: Коляда і Великдень: Різдво і Відродження Світа. Українські реліґійні роздуми про Неволю та Спасіння Еротичні містерії, тиждень від Катерини 7.12 до Калети. Доля. Стежки до листків про Українські традиції.','У Містечку Богуславку капелія грала
Молодая Бондарівна цілу ніч гуляла |(2)

Ой хоч ходжу хоч гуляю по своїй охоті
Такиж бо я не втеряю Дівоцької цноти |(2)

Був в ту пору пан Каньовський в місті на охоті
Довідавсь о Бондарівні і о її цноті

Ой як крикнув пан Каньовський подати сідельце
Там гуляє Бондарівна кипить моє серце

Ой звелів же пан Каньовський музиці заграти
Обійняв він Бондарівну тай смів цілувати

Ой не годен пан Каньовський мене цілувати
Тільки годен пан Каньовський мене роззувати

Ой шепнули добрі люди Бондарівні тихо
Тікай-тікай Бондарівно буде тобі лихо

Ой тікала Бондарівна по межі до мами
А за нею два жовніри з гострими шаблями

Ой тікала Бондарівна з високого мосту
Сама ж вона хорошая хорошого зросту

Ой тікала Бондарівна помежі крамниці
Прицілився пан Каньовський з срібної рушниці

Ой чи волиш Бондарівно ізо мною жити
Ой чи волиш Бондарівно в сирій землі гнити

Ой волю я пан Каньовський в сирій землі гнити
Ніж з тобою по неволі на цім світі жити

Ой як тільки Бондарівна це словце сказала
Як вистрелив пан Каньовський Бондарівна впала

А на тій же Бондарівні шовковії стрічки
Куди несли  Бондарівну скрізь кривави річки

Ой посунув пан Каньовський по столу таляри
Оцеж тобі старий Батьку за личко рум''яне

Ой посунув пан Каньовський таляриків бочку
Оцеж тобі старий Бондар за хорошу Дочку |(2)','[''pisni.org.ua'', ''cat:dumy'', ''cat:kozacki'', ''Думи'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_437481'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_437481','У Містечку Богуславку капелія грала','У Містечку Богуславку капелія грала
Молодая Бондарівна цілу ніч гуляла |(2)

Ой хоч ходжу хоч гуляю по своїй охоті
Такиж бо я не втеряю Дівоцької цноти |(2)

Був в ту пору пан Каньовський в місті на охоті
Довідавсь о Бондарівні і о її цноті

Ой як крикнув пан Каньовський подати сідельце
Там гуляє Бондарівна кипить моє серце

Ой звелів же пан Каньовський музиці заграти
Обійняв він Бондарівну тай смів цілувати

Ой не годен пан Каньовський мене цілувати
Тільки годен пан Каньовський мене роззувати

Ой шепнули добрі люди Бондарівні тихо
Тікай-тікай Бондарівно буде тобі лихо

Ой тікала Бондарівна по межі до мами
А за нею два жовніри з гострими шаблями

Ой тікала Бондарівна з високого мосту
Сама ж вона хорошая хорошого зросту

Ой тікала Бондарівна помежі крамниці
Прицілився пан Каньовський з срібної рушниці

Ой чи волиш Бондарівно ізо мною жити
Ой чи волиш Бондарівно в сирій землі гнити

Ой волю я пан Каньовський в сирій землі гнити
Ніж з тобою по неволі на цім світі жити

Ой як тільки Бондарівна це словце сказала
Як вистрелив пан Каньовський Бондарівна впала

А на тій же Бондарівні шовковії стрічки
Куди несли  Бондарівну скрізь кривави річки

Ой посунув пан Каньовський по столу таляри
Оцеж тобі старий Батьку за личко рум''яне

Ой посунув пан Каньовський таляриків бочку
Оцеж тобі старий Бондар за хорошу Дочку |(2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437481_l1','pisniua_437481','YouTube','https://www.youtube.com/watch?v=MP8Aj1QP1cc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437481_l2','pisniua_437481','YouTube','https://www.youtube.com/watch?v=goQmnc3bdvE','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4375736';
DELETE FROM song_versions WHERE song_id = 'pisniua_4375736';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4375736';
DELETE FROM songs WHERE id = 'pisniua_4375736';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4375736','Заміські вечори','Музика: Василь Соловйов-Сєдой Слова: Михайло Матусовський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'У садку ні звуку, ні шелесту,
Спить він до світання пори.
Срібло місячне в річці стелиться,
Заміські люблю вечори...

Річка плине й наче спинилася,
Нахилися й срібло збери.
Пісня чується - й десь поділася,
Незбагненні ці вечори...

Що ж, кохана, ти призамислилась?
Не мовчімо, поговорім...
Годі висловить і не висловить,
Що на серці тепер моїм...

А вже скоро зовсім розвидниться,
Прокидаються кольори.
Не забудь же ти, мила, літні ці
Заміські наші вечори...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4375736'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4375736','Заміські вечори','У садку ні звуку, ні шелесту,
Спить він до світання пори.
Срібло місячне в річці стелиться,
Заміські люблю вечори...

Річка плине й наче спинилася,
Нахилися й срібло збери.
Пісня чується - й десь поділася,
Незбагненні ці вечори...

Що ж, кохана, ти призамислилась?
Не мовчімо, поговорім...
Годі висловить і не висловить,
Що на серці тепер моїм...

А вже скоро зовсім розвидниться,
Прокидаються кольори.
Не забудь же ти, мила, літні ці
Заміські наші вечори...');
DELETE FROM song_links WHERE song_id = 'pisniua_4376436';
DELETE FROM song_versions WHERE song_id = 'pisniua_4376436';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4376436';
DELETE FROM songs WHERE id = 'pisniua_4376436';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4376436','У чужині','Слова: Василь Чопей','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Так судилось мені,
Що живу я тепер у чужині
І сумую, і плачу, бо я тут один...
А всі друзі мої і рідня - в Україні,
Яку я так люблю, наче син!..

Приспів:
Та колись край чужий назавжди я покину
І повернуся знову на землю святу!
І побачу свою Україну, соборну, єдину,
Мов дівчину щасливу, веселу в цвіту!

Тут і листя, мабуть, не таке,
Як у нас там, зелене,
І не пахнуть так квіти і трави в полях,
А пісні там далеко, далеко без мене
Соловейко співає в гаях...

Приспів.

І по іншому все тут здається, неначе
Не так світить сонце і в темряві дні,
Гармошку не чути і скрипка не плаче,
І тому тут так сумно мені...

Приспів.

І думками своїми, мов птах,
В Україну я лину,
Бо любов я до неї назавжди зберіг!
А її лиш тому, лиш тому я покинув,
Що неправди терпіти не міг...

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4376436'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4376436','У чужині','Так судилось мені,
Що живу я тепер у чужині
І сумую, і плачу, бо я тут один...
А всі друзі мої і рідня - в Україні,
Яку я так люблю, наче син!..

Приспів:
Та колись край чужий назавжди я покину
І повернуся знову на землю святу!
І побачу свою Україну, соборну, єдину,
Мов дівчину щасливу, веселу в цвіту!

Тут і листя, мабуть, не таке,
Як у нас там, зелене,
І не пахнуть так квіти і трави в полях,
А пісні там далеко, далеко без мене
Соловейко співає в гаях...

Приспів.

І по іншому все тут здається, неначе
Не так світить сонце і в темряві дні,
Гармошку не чути і скрипка не плаче,
І тому тут так сумно мені...

Приспів.

І думками своїми, мов птах,
В Україну я лину,
Бо любов я до неї назавжди зберіг!
А її лиш тому, лиш тому я покинув,
Що неправди терпіти не міг...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4377236';
DELETE FROM song_versions WHERE song_id = 'pisniua_4377236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4377236';
DELETE FROM songs WHERE id = 'pisniua_4377236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4377236','Мамо ж моя, мамо','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Мамо ж моя, мамо, я - ж ваша дитина,
Дана, дана, дана, дана, гей!
Мені ся належить подушка й перина.
Дана, дана, дана, дана, гей!
Подушка й перина, корова з телятком,
Дана, дана, дана, дана, гей!
Щоб я не ходила по селу з горнятком.
Дана, дана, дана, дана, гей!

Тату ж ви мій, тату, я - ж ваша дитина,
Дана, дана, дана, дана, гей!
Мені ся належить легкова машина.
Дана, дана, дана, дана, гей!
Легкова машина, ще й цегляна хата,
Дана, дана, дана, дана, гей!
Щоб я пам''ятала, що я маю тата!
Дана, дана, дана, дана, гей!

Бабцю ж моя, бабцю, я - ж ваша онучка,
Дана, дана, дана, дана, гей!
Мені ся належить золота обручка.
Дана, дана, дана, дана, гей!
Золота обручка, тисяча додатку,
Дана, дана, дана, дана, гей!
Щоб я пам''ятала, що я маю бабку!
Дана, дана, дана, дана, гей!

Ой, діду ж мій, діду, я - ж ваша онучка,
Дана, дана, дана, дана, гей!
Мені ся належить місячна получка.
Дана, дана, дана, дана, гей!
Бувайте здорові, бо я уже їду,
Дана, дана, дана, дана, гей!
Як не дасте грошей, більше не приїду!
Дана, дана, дана, дана, гей!','[''pisni.org.ua'', ''cat:podilski'', ''cat:vesilni'', ''Пісні з Поділля'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4377236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4377236','Мамо ж моя, мамо','Мамо ж моя, мамо, я - ж ваша дитина,
Дана, дана, дана, дана, гей!
Мені ся належить подушка й перина.
Дана, дана, дана, дана, гей!
Подушка й перина, корова з телятком,
Дана, дана, дана, дана, гей!
Щоб я не ходила по селу з горнятком.
Дана, дана, дана, дана, гей!

Тату ж ви мій, тату, я - ж ваша дитина,
Дана, дана, дана, дана, гей!
Мені ся належить легкова машина.
Дана, дана, дана, дана, гей!
Легкова машина, ще й цегляна хата,
Дана, дана, дана, дана, гей!
Щоб я пам''ятала, що я маю тата!
Дана, дана, дана, дана, гей!

Бабцю ж моя, бабцю, я - ж ваша онучка,
Дана, дана, дана, дана, гей!
Мені ся належить золота обручка.
Дана, дана, дана, дана, гей!
Золота обручка, тисяча додатку,
Дана, дана, дана, дана, гей!
Щоб я пам''ятала, що я маю бабку!
Дана, дана, дана, дана, гей!

Ой, діду ж мій, діду, я - ж ваша онучка,
Дана, дана, дана, дана, гей!
Мені ся належить місячна получка.
Дана, дана, дана, дана, гей!
Бувайте здорові, бо я уже їду,
Дана, дана, дана, дана, гей!
Як не дасте грошей, більше не приїду!
Дана, дана, дана, дана, гей!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4377236_l1','pisniua_4377236','YouTube','https://www.youtube.com/watch?v=v-Z2V1GRCJI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4377931';
DELETE FROM song_versions WHERE song_id = 'pisniua_4377931';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4377931';
DELETE FROM songs WHERE id = 'pisniua_4377931';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4377931','Чекання','Музика: Геннадій Желуденко Слова: Геннадій Желуденко. Виконує: Геннадій Желуденко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вже зоря вечірня встала,
Вже на трави роси впали,
Заридала ніч неспинним
Божевіллям солов''їним...

І знову тривожне чекання
Зринає у грудях зітханням,
Бринить у очах сподіванням -
То щемом солодким кохання
У серці...
Тамую п''янке хвилювання -
Чекання хвилина остання!..

Твої очі - слів не треба!..
Та палає вже край неба -
То розлуки час, кохана,
Вже віщує нам світання...

І знову настане чекання,
Чекання, налите стражданням,
І житиму я сподіванням -
Бо щемом солодким кохання
У серці!..
Ми разом - та вже розставання
Між нами лягло невблаганно...

Вже зоря ранкова встала...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4377931'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4377931','Чекання','Вже зоря вечірня встала,
Вже на трави роси впали,
Заридала ніч неспинним
Божевіллям солов''їним...

І знову тривожне чекання
Зринає у грудях зітханням,
Бринить у очах сподіванням -
То щемом солодким кохання
У серці...
Тамую п''янке хвилювання -
Чекання хвилина остання!..

Твої очі - слів не треба!..
Та палає вже край неба -
То розлуки час, кохана,
Вже віщує нам світання...

І знову настане чекання,
Чекання, налите стражданням,
І житиму я сподіванням -
Бо щемом солодким кохання
У серці!..
Ми разом - та вже розставання
Між нами лягло невблаганно...

Вже зоря ранкова встала...');
DELETE FROM song_links WHERE song_id = 'pisniua_4375333';
DELETE FROM song_versions WHERE song_id = 'pisniua_4375333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4375333';
DELETE FROM songs WHERE id = 'pisniua_4375333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4375333','Цього року сумні свята',NULL,'uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис','Місце побутування: смт Запитів, Кам''янка-Бузький район, Львівська область. Респондент: Максимишин Марія. Збирачі: Вовчак Андрій, Мартиник Соломія.','Цього року сумні свята -
Коновальця кров проллята.

Вбили, вбили Коновальця -
Він навіки розпрощався.

Прийшла вістка з Роттердраму -
Вивісили чорну фану.

Ви, дівчата, ви, хороші,
Вишивайте хлопцям ноші.

Хлопцям ноші і тризуби -
Україна вільна буде!

Встань, Хмельницький,
Встань, Богдане,
Повставайте всі гетьмани!

Встань, Тарасе, пробудися,
На свій нарід подивись:

Як твій нарід тут бідує,
Україна голодує.

Ходить босий і обдертий,
Сам для себе просить смерті...','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4375333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4375333','Цього року сумні свята','Цього року сумні свята -
Коновальця кров проллята.

Вбили, вбили Коновальця -
Він навіки розпрощався.

Прийшла вістка з Роттердраму -
Вивісили чорну фану.

Ви, дівчата, ви, хороші,
Вишивайте хлопцям ноші.

Хлопцям ноші і тризуби -
Україна вільна буде!

Встань, Хмельницький,
Встань, Богдане,
Повставайте всі гетьмани!

Встань, Тарасе, пробудися,
На свій нарід подивись:

Як твій нарід тут бідує,
Україна голодує.

Ходить босий і обдертий,
Сам для себе просить смерті...');
DELETE FROM song_links WHERE song_id = 'pisniua_437838';
DELETE FROM song_versions WHERE song_id = 'pisniua_437838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_437838';
DELETE FROM songs WHERE id = 'pisniua_437838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_437838','Ой сів Пугач на Могилі','Українська народна пісня. Виконує: Василь Жданкін','uk','ukraine_before_1917',NULL,NULL,'1. Українські релігійні роздуми про Спасіння © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003 2. перлини Української народної пісні. - К.: Музична україна, 1989','Спасительна: світ не по Правді. Українські релігійні роздуми про Воскресіння, Неволю і Спасіння. Ой Ми зіслані на признаванє. Нема в світі Правди не зіскати. Ой устань же Козаченьку. Того Щастя тої Слави повік не забудем. Листки з приводу цієї Пісні: Українські реліґійні роздуми про Неволю та Спасіння Коляда і Великдень: Різдво і Відродження Світа. Еротичні містерії, тиждень від Катерини 7.12 до Калети. Доля. Св. Микола 19.12 – Народний речник перед Богом і Прадід. Стежки до листків про Українські традиції.','Ой сів Пугач на Могилі тай крикнув Він Пугу
Чи не дасть Бог Запорожцям хоч на Рік Потугу |(2)

Наші Шаблі затупились Мушкети без курків
Наше Серце Козацькеє не боїцця Турків        |(2)

Ой колись ми панували а тепер не будем
Того Щастя тої Слави повік не забудем        |(2)','[''pisni.org.ua'', ''cat:kozacki'', ''cat:suspilno-politychni'', ''Козацькі пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_437838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_437838','Ой сів Пугач на Могилі','Ой сів Пугач на Могилі тай крикнув Він Пугу
Чи не дасть Бог Запорожцям хоч на Рік Потугу |(2)

Наші Шаблі затупились Мушкети без курків
Наше Серце Козацькеє не боїцця Турків        |(2)

Ой колись ми панували а тепер не будем
Того Щастя тої Слави повік не забудем        |(2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437838_l1','pisniua_437838','YouTube','https://www.youtube.com/watch?v=d6KMvuYnpl0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437838_l2','pisniua_437838','YouTube','https://www.youtube.com/watch?v=dx_0ECn6DNQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437838_l3','pisniua_437838','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_4379634';
DELETE FROM song_versions WHERE song_id = 'pisniua_4379634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4379634';
DELETE FROM songs WHERE id = 'pisniua_4379634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4379634','Букварик','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'З столу посміхається Буквар,
Я йому всміхнусь, бо я - школяр.
Він навчив мене читати,
Дав бажання більше знати,
Мій найкращий вірний друг - Буквар!

Приспів:
Люба книжечко моя, |
Дуже люблю тебе я, |
Шлях до знань ти   |
Відкриваєш дітям!  | (2)

Нині в нас прощання з Букварем,
І сьогодні ми передаєм
Книжечку оцю чудову,
Щоб вона навчала знову
Інших малюків і без проблем!

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4379634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4379634','Букварик','З столу посміхається Буквар,
Я йому всміхнусь, бо я - школяр.
Він навчив мене читати,
Дав бажання більше знати,
Мій найкращий вірний друг - Буквар!

Приспів:
Люба книжечко моя, |
Дуже люблю тебе я, |
Шлях до знань ти   |
Відкриваєш дітям!  | (2)

Нині в нас прощання з Букварем,
І сьогодні ми передаєм
Книжечку оцю чудову,
Щоб вона навчала знову
Інших малюків і без проблем!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4379634_l1','pisniua_4379634','YouTube','https://www.youtube.com/watch?v=apUs96TXvEI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_437735';
DELETE FROM song_versions WHERE song_id = 'pisniua_437735';
DELETE FROM songs_fts WHERE song_id = 'pisniua_437735';
DELETE FROM songs WHERE id = 'pisniua_437735';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_437735','Тече Річка Невеличка з Вишневого Саду','Українська народна пісня. Виконує: Діана Петриненко','uk','ukraine_before_1917',NULL,NULL,'Українські релігійні роздуми про Спасіння © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003','Пара-Непара. Українські релігійні роздуми про Воскресіння, Неволю і Спасіння. Нема в світі Правди не зіскати. Чого Старий не женишся. Козак старий все в поxодаx. Листки з приводу цієї Пісні: Українські реліґійні роздуми про Неволю та Спасіння Традиції самогуртування: Cвятий Збір. Вістуни великого Свята, аскети, люди ідеї. Стежки до листків про Українські традиції.','Тече Річка Невеличка з Вишневого Саду
Кличе Козак Дівчиноньку к собі на пораду
Гей-гей гей-гей гей-гей гей-гей
Кличе Козак Дівчиноньку к собі на пораду

Порадь мені Дівчинонько як Рідная Мати
А чи мені женитися а чи Тебе ждати
Гей-гей гей-гей гей-гей гей-гей
А чи мені женитися а чи Тебе ждати

Ой я Тобі Козаченьку і раджу й не раджу
Я з Тобою вечір стою на іншого важу
Гей-гей гей-гей гей-гей гей-гей
Я з Тобою вечір стою на іншого важу

Бодай тебе Дівчинонько з Твоєю радою
Я до Тебе з щирим серцем а ти з неправдою
Гай-гай гай-гай гай-гай гай-гай
Я до Тебе з щирим серцем а ти з неправдою

Бодай же Ти Дівчинонько тоді заміж вийшла
Як у млині на камені пшениченька зійшла
Гей-гей гей-гей гей-гей гей-гей
Як у млині на камені пшениченька зійшла

Бодай же Ти Козаченько тоді одружився
Як у лісі при дорозі суxий дуб розвився
Гей-гей гей-гей гей-гей гей-гей
Як у лісі при дорозі суxий дуб розвився

Ой у млині на камені пшениченька зійшла
Ще молода Дівчинонька а вже заміж вийшла
Гей-гей гей-гей гей-гей гей-гей
Ще молода Дівчинонька а вже заміж вийшла

Ой у лісі при дорозі суxий дуб розвився
Козак старий все в поxодаx так і не женився
Гай-гай гай-гай гай-гай гай-гай
Козак старий все в поxодаx так і не женився','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_437735'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_437735','Тече Річка Невеличка з Вишневого Саду','Тече Річка Невеличка з Вишневого Саду
Кличе Козак Дівчиноньку к собі на пораду
Гей-гей гей-гей гей-гей гей-гей
Кличе Козак Дівчиноньку к собі на пораду

Порадь мені Дівчинонько як Рідная Мати
А чи мені женитися а чи Тебе ждати
Гей-гей гей-гей гей-гей гей-гей
А чи мені женитися а чи Тебе ждати

Ой я Тобі Козаченьку і раджу й не раджу
Я з Тобою вечір стою на іншого важу
Гей-гей гей-гей гей-гей гей-гей
Я з Тобою вечір стою на іншого важу

Бодай тебе Дівчинонько з Твоєю радою
Я до Тебе з щирим серцем а ти з неправдою
Гай-гай гай-гай гай-гай гай-гай
Я до Тебе з щирим серцем а ти з неправдою

Бодай же Ти Дівчинонько тоді заміж вийшла
Як у млині на камені пшениченька зійшла
Гей-гей гей-гей гей-гей гей-гей
Як у млині на камені пшениченька зійшла

Бодай же Ти Козаченько тоді одружився
Як у лісі при дорозі суxий дуб розвився
Гей-гей гей-гей гей-гей гей-гей
Як у лісі при дорозі суxий дуб розвився

Ой у млині на камені пшениченька зійшла
Ще молода Дівчинонька а вже заміж вийшла
Гей-гей гей-гей гей-гей гей-гей
Ще молода Дівчинонька а вже заміж вийшла

Ой у лісі при дорозі суxий дуб розвився
Козак старий все в поxодаx так і не женився
Гай-гай гай-гай гай-гай гай-гай
Козак старий все в поxодаx так і не женився');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437735_l1','pisniua_437735','YouTube','https://www.youtube.com/watch?v=YrTTctSPG44','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437735_l2','pisniua_437735','YouTube','https://www.youtube.com/watch?v=regx_lZ4Afc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4379137';
DELETE FROM song_versions WHERE song_id = 'pisniua_4379137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4379137';
DELETE FROM songs WHERE id = 'pisniua_4379137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4379137','Школа','Музика: Дмитро Сисоєв Слова: Дмитро Сисоєв','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Останні хвилини і кожен піде
У свій загадковий шлях,
Де мрії збуваються...
Ще вчора дитина ти,
А завтра твій день,
Вже так по-дорослому
Той день починається!..
Згадати що є кожному своє,
Але є що так нас всіх об''єднує:
Коридори школи, спогади, приколи,
І перше кохання, і трабли навколо...
Але ті часи такі незабутні,
І ми востаннє в тому залі присутні,
А завтра кожен піде до своєї мети...

Приспів:
Я буду сумувати за тобою...
Школа...
Це не повернеться вже ніколи!
Іду в життя доросле за метою...
Школа...
Все, що дала ти, я візьму з собою!..

В твоїй голові стільки різних думок,
Але лиш одна визначає ким станеш ти:
Це думка про те, як зробити цей крок,
Щоб не зупинитись за мить до своєї мети!..
Згадати що є кожному своє,
Але є що так нас всіх об''єднує:
Коридори школи, спогади, приколи,
І перше кохання, і трабли навколо...
Але ті часи такі незабутні,
І ми востаннє в тому залі присутні,
А завтра кожен піде до своєї мети...

Приспів. (2)','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4379137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4379137','Школа','Останні хвилини і кожен піде
У свій загадковий шлях,
Де мрії збуваються...
Ще вчора дитина ти,
А завтра твій день,
Вже так по-дорослому
Той день починається!..
Згадати що є кожному своє,
Але є що так нас всіх об''єднує:
Коридори школи, спогади, приколи,
І перше кохання, і трабли навколо...
Але ті часи такі незабутні,
І ми востаннє в тому залі присутні,
А завтра кожен піде до своєї мети...

Приспів:
Я буду сумувати за тобою...
Школа...
Це не повернеться вже ніколи!
Іду в життя доросле за метою...
Школа...
Все, що дала ти, я візьму з собою!..

В твоїй голові стільки різних думок,
Але лиш одна визначає ким станеш ти:
Це думка про те, як зробити цей крок,
Щоб не зупинитись за мить до своєї мети!..
Згадати що є кожному своє,
Але є що так нас всіх об''єднує:
Коридори школи, спогади, приколи,
І перше кохання, і трабли навколо...
Але ті часи такі незабутні,
І ми востаннє в тому залі присутні,
А завтра кожен піде до своєї мети...

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4379137_l1','pisniua_4379137','YouTube','https://www.youtube.com/watch?v=dCyUFO7cyT4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4376930';
DELETE FROM song_versions WHERE song_id = 'pisniua_4376930';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4376930';
DELETE FROM songs WHERE id = 'pisniua_4376930';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4376930','Закотилося сонце за хмари','Музика: Леопольд Ященко Слова: Леопольд Ященко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Закотилося сонце за хмари,
На порозі холодна зима...
Не судилось нам бути у парі,
І поради на те вже нема.
Ти лишаєш свою Батьківщину,
Від''їжджаєш у дальні світи,
Я ж довіку її не покину,
Бо там щастя мені не знайти...

Приспів:
В далекий край, за синє море
Хмільні вітри тебе несуть...
Ну що ж, прощай... Не забувай!..
Прийшла година - вирушай у путь!..

Може там, на задвірку чужому
Ти притулок собі віднайдеш...
Може, знову приб''єшся додому -
Та минулого вже не вернеш...
Ми ж прийдемо до рідної хати,
Що чекає в забутім селі,
Щоб наш рід зберегти, об''єднати
На своїй, Богом даній, землі!..

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4376930'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4376930','Закотилося сонце за хмари','Закотилося сонце за хмари,
На порозі холодна зима...
Не судилось нам бути у парі,
І поради на те вже нема.
Ти лишаєш свою Батьківщину,
Від''їжджаєш у дальні світи,
Я ж довіку її не покину,
Бо там щастя мені не знайти...

Приспів:
В далекий край, за синє море
Хмільні вітри тебе несуть...
Ну що ж, прощай... Не забувай!..
Прийшла година - вирушай у путь!..

Може там, на задвірку чужому
Ти притулок собі віднайдеш...
Може, знову приб''єшся додому -
Та минулого вже не вернеш...
Ми ж прийдемо до рідної хати,
Що чекає в забутім селі,
Щоб наш рід зберегти, об''єднати
На своїй, Богом даній, землі!..

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_438083';
DELETE FROM song_versions WHERE song_id = 'pisniua_438083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_438083';
DELETE FROM songs WHERE id = 'pisniua_438083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_438083','Не йди','Слова: С.К.А.Й., Гайтана. Виконує: Гайтана, С.К.А.Й.','uk','ukraine_before_1917',NULL,NULL,'http://www.skay.com.ua','Підібрано на слух з аудіо, спрощено. Деякі із акордів: Dsus2, Dsus2/D [x x 0 2 3 0] Dsus2/C# [x 4 x 2 3 0] Dsus2/H [x 2 x 2 3 0] Dsus2/A [x 0 x 2 3 0] * Тут і далі у приспіві можуть бути й інші акорди. Доповнення: TOHA: "... В приспіві використовується така послідовність акордів: Dsus2/D-Dsus2/H-G-A, а от після другого приспіву (співає Олег), коли Гайтана співає без слів, гітарист грає такі акорди:перший раз Dsus2/D-Dsus2/H-Dsus2/A#-G-A другий раз Dsus2/D-Dsus2/H-Dsus2/A#-G-(пауза)Dsus2/D-куплет. Штрих для правої руки у куплеті і, частково, у приспіві (коли гітарист грає пальцями): Q E E Q E E E E E E Q E E E||-------------0----------|--------------0----------| B||-------3----------3-----|--------3----------3-----| G||----------2----------2--|-----2-----2----------2--| D||--0---------------------|-------------------------| A||------------------------|--4----------------------| E||------------------------|-------------------------| Q - quarter (1/4) E - 8th (1/8) Підбір-Ovovka (Tarasvm.90@mail.ru): e|-0--5-7-7/9-----0--0-------0-----0------0----------0-0--------0-0---- h|-3--------------3-3--3-3--3-3---3-3---3---3----0---3-0----2---2-2/3- g|-2--------------2-----2--2---2-2---2-2-----2--2-2--2-2---2-2--2-2/4- D|-0--4-5-5/7/0---0----------------------------0---0------2---2-------- A|-0--------------0-------4-----2-----0--0---------------0-----0-0----- E|--------------------------------------------3-----3-3----------------- e|-----0-------0-----0-------0---------0----------------- h|----3--3---3--3---3--3---3--3----0-----0----3p2------- g|---2----2-2----2-2----2-2----2--2-2----2---2---2---2-- D|--0----------------------------0---0------2-----2-2---- A|---------4--4---2------0--0--------------0-------0--0-- E|------------------------------3-----3-3-3--------------- e|-----0-------0-----0-------0---------0-------------------- h|----3--3---3--3---3--3------3----0---3-0-----3p2-----2--- g|---2----2-2----2-2----2-2-------2-2--2--2---2---2--2-2-2- D|--0----------------------------0---0-----0-2-----2-2---2-- A|---------4--4---2------0------------------0-------0-0-0--- E|------------------------------3-----3-3-------------------- e|----0-------0---0-------0------------------------ h|------3---3--3----3---3--3---3------0----2-3-2-- g|---2---2-2-----2---2-2----2---2---2--2---2-2-2-- D|--0-----0--0----------------0--0-0----0-2-------- A|--------------2-----2--2---------------0--0-0-0-- E|---------------------------3----3--3------------- e|----0-------0----0-------0----------------------- h|------3---3--3-----3---3--3-----0-----2-3p2--2-- g|---2---2-2----2-2---2-2----2--2---2---2-2-----2- D|--0-----0--0-----------------0----0--2-----2---- A|---------------2-----2--2-----------0--0----0--- E|----------------------------3--3-3-3------------ e|----0-----0-----0-------0-------------------------- h|------3-----3-----3---3--3-------0----0---2-2--3--- g|---2---2-2---2-2---2-2----2----2---2---2--2--2--4-- D|--0---------------------------0-----0----2----2--5- A|--------4-----2-----0--0----------------0--0------- E|-----------------------------3--3----3------------- e|----0-----0-----0-------0--------0-------------- h|------3-----3-----3---3--3-----0---0-----2-3-2-- g|---2---2-2---2-2---2-2----2----2----2----2-2-2-- D|--0---------------------------0------0--2------- A|--------4-----2-----0--0---------------0--0-0-0- E|-----------------------------3--3-3---3--------- e|--0---|-0---|-3---|-0---|-0-|-0-|-0-| h|--3---|-3---|-3---|-0---|-2-|-3-|-5-| g|--2-2-|-2-2-|-0---|-2---|-2-|-4-|-6-| D|--0---|-0---|-0-0-|-2---|-2-|-5-|-7-| A|--0---|-2---|-2---|-0---|-0-|-5-|-7-| E|------|-----|-3---|-----|---|---|---| e|--0---|-0---|-3---|-0---|-0-| h|--3---|-3---|-3---|-0---|-3-| g|--2-2-|-2-2-|-0---|-2---|-4-| D|--0---|-0---|-0-0-|-2-2-|-5-| A|--0---|-2---|-2---|-0---|-5-| E|------|-----|-3---|-----|---| e|--0---|-0---|-0---|-3---|-0-| h|--3---|-3---|-3---|-3---|-1-| g|--2-2-|-2-2-|-2-2-|-0---|-0-| D|--0---|-0---|-0---|-0-0-|-2-| A|--0---|-2---|-1---|-2---|-3-| E|------|-----|-----|-3---|---| e|--0---|-0---|-0---|-3----|-0-| h|--3---|-3---|-3---|-3----|-3-| g|--2-2-|-2-2-|-2-2-|-0--2-|-2-| D|--0---|-0---|-0---|-0-0--|-0-| A|--0---|-2---|-1---|-2----|-0-| E|------|-----|-----|-3----|---| e|----0------0-------0-------0-----------0-------------------- h|------3------3-------3-------3-----0-----0-----2---3p2---2-- g|---2---2--2---2---2---2---2---2---2-2-----2---2-2-----2--2-- D|--0-----0------------------------0---0-----0-----2-----2---- A|---------4-----4-2-----2-0-----0-------------0----0-----0-0- E|--------------------------------3-----3-3---3--------------- e|----0------0-------0-------0---------------------------------- h|------3------3-------3-------3-----0---0-0-----2---3p2--3p2--- g|---2---2--2---2---2---2---2---2-----2--2--2-----2--2----2----- D|--0-----0------------------------0---0-----0--2--2----2----2-- A|---------4-----4-2-----2-0-------------------0----0----0----0- E|--------------------------------3-----3-3---3----------------- e|--2---|-0---|-3---|-0---|-0-|-0-| h|--3---|-3---|-3---|-2---|-3-|-5-| g|--2-2-|-2-2-|-0---|-2---|-4-|-6-| D|--0---|-0---|-0-0-|-2-2-|-5-|-7-| A|--0---|-2---|-2---|-0---|-5-|-7-| E|------|-----|-3---|-----|---|---| e|--2---|-0---|-3---|-0---| h|--3---|-3---|-3---|-2---| g|--2-2-|-2-2-|-4---|-2---| D|--0---|-0---|-5---|-2-2-| A|--0---|-2---|-5-5-|-0---| E|------|-----|-3---|-----| e|--2---|-0---|-3---|-0---|-0-|-0-|-0-| h|--3---|-3---|-3---|-0---|-2-|-3-|-5-| g|--2-2-|-2-2-|-0---|-2---|-2-|-4-|-6-| D|--0---|-0---|-0-0-|-2---|-2-|-5-|-7-| A|--0---|-2---|-2---|-0---|-0-|-5-|-7-| E|------|-----|-3---|-----|---|---|---| e|--2---|-0---|-3---|-0---|-0-|-0-|-0---0-| h|--3---|-3---|-3---|-0---|-2-|-3-|-5/0-3-| g|--2-2-|-2-2-|-0---|-2---|-2-|-4-|-6---2-| D|--0---|-0---|-0-0-|-2---|-2-|-5-|-7---0-| A|--0---|-2---|-2---|-0---|-0-|-5-|-7---0-| E|------|-----|-3---|-----|---|---|-------| Підбір акордів: bohdanko (pisni.org.ua)','Dsus2/D     /C#        /H /A
Як холодно без тебе, сумно як -
G              Dsus2  A
Заплаканії вікна.
З тобою бути мій таємний знак,
що жити без тебе ніяк не звикну.

Так холодно коли тебе нема -
без сонця не воскресну.
Бо в серці залишилася зима,
а над тобою теплі весни.

Dsus2/D     /H      G   A *
Не йди!     Не йди! Не йди!..

Як холодно без тебе - все біда
Сльоза біжить по скроні.
Життя моє лилось немов вода
крізь наші дві розведені долоні

Не йди! Не йди! Не йди...
Не йди! не йди! не йди!..

Як холодно без, тебе сумно як
Заплаканії вікна
З тобою бути мій таємний знак,
що жити без тебе ніяк не звикну

Не йди! Не йди! Не йди від мене!..
Не йди! Не йди! Не йди!..
Не йди! Не йди! Не йди!..
Не йди! Не йди! Не йди!..
Не йди...','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_438083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_438083','Не йди','Dsus2/D     /C#        /H /A
Як холодно без тебе, сумно як -
G              Dsus2  A
Заплаканії вікна.
З тобою бути мій таємний знак,
що жити без тебе ніяк не звикну.

Так холодно коли тебе нема -
без сонця не воскресну.
Бо в серці залишилася зима,
а над тобою теплі весни.

Dsus2/D     /H      G   A *
Не йди!     Не йди! Не йди!..

Як холодно без тебе - все біда
Сльоза біжить по скроні.
Життя моє лилось немов вода
крізь наші дві розведені долоні

Не йди! Не йди! Не йди...
Не йди! не йди! не йди!..

Як холодно без, тебе сумно як
Заплаканії вікна
З тобою бути мій таємний знак,
що жити без тебе ніяк не звикну

Не йди! Не йди! Не йди від мене!..
Не йди! Не йди! Не йди!..
Не йди! Не йди! Не йди!..
Не йди! Не йди! Не йди!..
Не йди...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_438083_l1','pisniua_438083','YouTube','https://www.youtube.com/watch?v=CNPxNKNgxNU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4379787';
DELETE FROM song_versions WHERE song_id = 'pisniua_4379787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4379787';
DELETE FROM songs WHERE id = 'pisniua_4379787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4379787','Танок-пісня Голосних','Музика: Микола Ведмедеря Слова: Н. Грицюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В абетці букв багато
І в усіх сьогодні свято!
Станемо і ми в рядочок
Й затанцюємо таночок!
А! О! У! И!           |
Потанцюєм залюбки!    |
Ну а як же букви всі? |
Потанцюємо усі!       | (2)

Дружать букви у абетці,
Й знають діти в цілім світі,
Найдзвінкіший голос маєм
І для вас ми заспіваєм:
А! О! У! І!           |
У нас співи голосні!  |
Ну а як же букви всі? |
Заспіваємо усі!       | (2)

Гарне свято нині маєм,
Затанцюєм, заспіваєм!
В коло станемо гурточком,
Зачаруємо таночком!
А! О! У! И!           |
Потанцюєм залюбки!    |
Ну а як же букви всі? |
Потанцюємо усі!       | (2)','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4379787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4379787','Танок-пісня Голосних','В абетці букв багато
І в усіх сьогодні свято!
Станемо і ми в рядочок
Й затанцюємо таночок!
А! О! У! И!           |
Потанцюєм залюбки!    |
Ну а як же букви всі? |
Потанцюємо усі!       | (2)

Дружать букви у абетці,
Й знають діти в цілім світі,
Найдзвінкіший голос маєм
І для вас ми заспіваєм:
А! О! У! І!           |
У нас співи голосні!  |
Ну а як же букви всі? |
Заспіваємо усі!       | (2)

Гарне свято нині маєм,
Затанцюєм, заспіваєм!
В коло станемо гурточком,
Зачаруємо таночком!
А! О! У! И!           |
Потанцюєм залюбки!    |
Ну а як же букви всі? |
Потанцюємо усі!       | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_437787';
DELETE FROM song_versions WHERE song_id = 'pisniua_437787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_437787';
DELETE FROM songs WHERE id = 'pisniua_437787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_437787','Нам не страшний червоний гніт','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'1. Українські Воскресні, Спасительні Пісні © Видавництво „Павутинонька“, Нью Йорк – Львів – Київ – Харків – Москва, 2004. 2. Намалюй Мені Пісню © Видавництво „Павутинонька“, Нью Йорк – Львів – Київ – Харків – Москва, 2005','Від Івана Степановича Мазепи див. Всі Покою щиро прагнуть. Спасительна: світ не по Правді. Українські релігійні роздуми про Воскресіння, Неволю і Спасіння. Ой Ми зіслані на признаванє. Нема в світі Правди не зіскати. Но ми докажем своїм Клинком. І нас на Бій благословить священний дух Мазепи. Листки з приводу цієї Пісні: Коляда і Великдень: Різдво і Відродження Світа. Українські реліґійні роздуми про Неволю та Спасіння Еротичні містерії, тиждень від Катерини 7.12 до Калети. Доля. Св. Микола 19.12 – Народний речник перед Богом і Прадід. Стежки до листків про Українські традиції. Висловлювання: Ци держи Віру старовіцкую? Так си минула Стара Правдочка Стара Правдочка тай Старих Людей – Колядки','Нам не страшний червоний гніт
І дикі орди cходу,
Ми йдем у Бій за Нарід свій,
За Волю для Народу!

Приспів двічі:
Ми йдем у Бій, Земля гуде,
Радіють Гори й Степи,
І нас на Бій благословить
Священний дух Мазепи!

Хай грім гримить, хай дощ паде,
Хай котяцця лавини,
Ми йдем у Бій за Нарід свій,
За Волю України!

Приспів двічі:
Ми йдем у Бій, Земля гуде,
Радіють Гори й Степи,
І нас на Бій благословить
Священний дух Мазепи!

Нам не страшний червоний гніт
І дикі орди cходу,
Ми йдем у Бій за Нарід свій,
За Волю для Народу!

Приспів двічі:
Ми йдем у Бій, Земля гуде,
Радіють Гори й Степи,
І нас на Бій благословить
Священний дух Мазепи!    Заспів (mp3)','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:povstanski'', ''cat:suspilno-politychni'', ''Гимни та марші'', ''Повстанські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_437787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_437787','Нам не страшний червоний гніт','Нам не страшний червоний гніт
І дикі орди cходу,
Ми йдем у Бій за Нарід свій,
За Волю для Народу!

Приспів двічі:
Ми йдем у Бій, Земля гуде,
Радіють Гори й Степи,
І нас на Бій благословить
Священний дух Мазепи!

Хай грім гримить, хай дощ паде,
Хай котяцця лавини,
Ми йдем у Бій за Нарід свій,
За Волю України!

Приспів двічі:
Ми йдем у Бій, Земля гуде,
Радіють Гори й Степи,
І нас на Бій благословить
Священний дух Мазепи!

Нам не страшний червоний гніт
І дикі орди cходу,
Ми йдем у Бій за Нарід свій,
За Волю для Народу!

Приспів двічі:
Ми йдем у Бій, Земля гуде,
Радіють Гори й Степи,
І нас на Бій благословить
Священний дух Мазепи!    Заспів (mp3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437787_l1','pisniua_437787','YouTube','https://www.youtube.com/watch?v=O2FIJHBBDXQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4380838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4380838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4380838';
DELETE FROM songs WHERE id = 'pisniua_4380838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4380838','Колисала мати сина','Слова: Марія Чайківчанка','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'В кленовій колисці
Колисала мати сина,
У Бога просила долі,
Щастя, калина,
Щоб зростав, як дубочок,
Здоровий красивий
І любив рідну землю
Козак чорнобривий!

Нехай тобі, дитино,
Сняться солодкі сни!
А я ясною зорею
Осяю у дорогу стежки!..
Люлі, люлі, спи,
Моя дитинко, засинай!
У красеня, легеня,
Сокола виростай!

І нехай мріями
Квітнуть зоряні ночі,
А у житах пломеніють
Скарби найдорожчі.
Рожеві світанки малюють
Казковий рай
Іди назустріч долі
У літо, в зелен гай!..

Виростай, мій синочку,
Мій місяцю ясний!
У вишневім саду квітне
Час прекрасний!
Нехай рушниками
Стелиться тобі весна...
І сонечком усміхається
Тобі кохана твоя!..','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4380838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4380838','Колисала мати сина','В кленовій колисці
Колисала мати сина,
У Бога просила долі,
Щастя, калина,
Щоб зростав, як дубочок,
Здоровий красивий
І любив рідну землю
Козак чорнобривий!

Нехай тобі, дитино,
Сняться солодкі сни!
А я ясною зорею
Осяю у дорогу стежки!..
Люлі, люлі, спи,
Моя дитинко, засинай!
У красеня, легеня,
Сокола виростай!

І нехай мріями
Квітнуть зоряні ночі,
А у житах пломеніють
Скарби найдорожчі.
Рожеві світанки малюють
Казковий рай
Іди назустріч долі
У літо, в зелен гай!..

Виростай, мій синочку,
Мій місяцю ясний!
У вишневім саду квітне
Час прекрасний!
Нехай рушниками
Стелиться тобі весна...
І сонечком усміхається
Тобі кохана твоя!..');
DELETE FROM song_links WHERE song_id = 'pisniua_4380434';
DELETE FROM song_versions WHERE song_id = 'pisniua_4380434';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4380434';
DELETE FROM songs WHERE id = 'pisniua_4380434';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4380434','Ой, люлі-люлі, налетіли гулі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой люлі-люлі,
Налетіли гулі,
Та й сіли на люлі...

Стали думати,
Думать і гадать,
Чим дитину годувать...

Чи сливок, чи грушок,
Чи вишневих ягідок...

А чи кашки з молочком,
Чи бублика з медочком...
Ой, люлі-люлі,
Ай, люлі-ле-ле-ле-лі...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4380434'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4380434','Ой, люлі-люлі, налетіли гулі','Ой люлі-люлі,
Налетіли гулі,
Та й сіли на люлі...

Стали думати,
Думать і гадать,
Чим дитину годувать...

Чи сливок, чи грушок,
Чи вишневих ягідок...

А чи кашки з молочком,
Чи бублика з медочком...
Ой, люлі-люлі,
Ай, люлі-ле-ле-ле-лі...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4380434_l1','pisniua_4380434','YouTube','https://www.youtube.com/watch?v=JOGSsbpDf-o','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4381583';
DELETE FROM song_versions WHERE song_id = 'pisniua_4381583';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4381583';
DELETE FROM songs WHERE id = 'pisniua_4381583';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4381583','Вчителі','Слова: Олександра Кравченко','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Олександра Кравченко.','День за днем із року в рік
Здається, що ви нас
Вчите цілий вік.
Дуже швидко минають хвилини,
Один рік, наче пів години.
Разом з вами ми вже як родина -
Розуміє це кожна дитина.
Вчителі нам усе пробачають,
Наші витівки не помічають.
Не знають вони, що таке відпочинок,
Додому тягнуть багато торбинок,
Не можуть вчасно з роботи піти,
Бо сидять перевіряють зошити!..

Добрі, веселі, милі,
Іноді, мабуть, суворі,
Але завжди з нами справедливі!
Світлі, прості і щирі,
Прикладом ви є для нас,
І ця пісня лунає тільки для вас,
Вчителі! Наші вчителі!..
Вчителі! Вчителі! Наші вчителі!..
Любі вчителі!.. Вчителі! Вчителі!

Кожного ранку вони посміхаються,
Але вночі, мабуть, не висипаються.
Не вимагають багато,
Лише треба їх шанувати.
Вчителі всьому дітей навчають,
Разом з нами труднощі усі долають,
Багато дорослих випускників
Все ще вітають своїх наставників!
На ваших очах дорослішають діти,
Але вчителів неможливо розлюбити,
Тому я сьогодні співаю для вас,
Щоб настрій піднявся до позначки "клас!"

З днем Вчителя ми вас усіх вітаєм
І здоров''я вам міцного побажаєм!
Щастя, радості багато,
Щоб кожен день був неначе свято!
Хай гучніше музика звучить!
Хай дізнаються всі, що саме в цю мить
Вчителів вітають діти
І кажуть, що ви - найкращі у світі!','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4381583'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4381583','Вчителі','День за днем із року в рік
Здається, що ви нас
Вчите цілий вік.
Дуже швидко минають хвилини,
Один рік, наче пів години.
Разом з вами ми вже як родина -
Розуміє це кожна дитина.
Вчителі нам усе пробачають,
Наші витівки не помічають.
Не знають вони, що таке відпочинок,
Додому тягнуть багато торбинок,
Не можуть вчасно з роботи піти,
Бо сидять перевіряють зошити!..

Добрі, веселі, милі,
Іноді, мабуть, суворі,
Але завжди з нами справедливі!
Світлі, прості і щирі,
Прикладом ви є для нас,
І ця пісня лунає тільки для вас,
Вчителі! Наші вчителі!..
Вчителі! Вчителі! Наші вчителі!..
Любі вчителі!.. Вчителі! Вчителі!

Кожного ранку вони посміхаються,
Але вночі, мабуть, не висипаються.
Не вимагають багато,
Лише треба їх шанувати.
Вчителі всьому дітей навчають,
Разом з нами труднощі усі долають,
Багато дорослих випускників
Все ще вітають своїх наставників!
На ваших очах дорослішають діти,
Але вчителів неможливо розлюбити,
Тому я сьогодні співаю для вас,
Щоб настрій піднявся до позначки "клас!"

З днем Вчителя ми вас усіх вітаєм
І здоров''я вам міцного побажаєм!
Щастя, радості багато,
Щоб кожен день був неначе свято!
Хай гучніше музика звучить!
Хай дізнаються всі, що саме в цю мить
Вчителів вітають діти
І кажуть, що ви - найкращі у світі!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4381583_l1','pisniua_4381583','YouTube','https://www.youtube.com/watch?v=203lkJIbCSE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4382185';
DELETE FROM song_versions WHERE song_id = 'pisniua_4382185';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4382185';
DELETE FROM songs WHERE id = 'pisniua_4382185';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4382185','Кухарка ся замастила','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Кухарка ся замастила,
Староста напився,
Шкода пана господаря,
Що тілько трудився.

У нас така молода,
Як цвіток калини,
А в вас такий молодий,
Якби зліпив з глини.

У нас така молода,
Файнюська, як лялька,
А в вас такий молодий,
Як стара куфайка.

Ой, казала старостику
Молодийка свашка:
Ходи зі мнов до стодоли,
Покажу ти пташка.

Ой, ішов я горі селом
Та й видів кухарку,
Що сиділа із старостов
У курячім царку.

Ой, чи тото весіллячко,
Чи тото гостина,
Витягайте кота з печи,
Най троха простине.

Ой, староста впав із моста,
Штани ся подерли,
А свашки ся так сміяли,
Шо мало не вмерли.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4382185'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4382185','Кухарка ся замастила','Кухарка ся замастила,
Староста напився,
Шкода пана господаря,
Що тілько трудився.

У нас така молода,
Як цвіток калини,
А в вас такий молодий,
Якби зліпив з глини.

У нас така молода,
Файнюська, як лялька,
А в вас такий молодий,
Як стара куфайка.

Ой, казала старостику
Молодийка свашка:
Ходи зі мнов до стодоли,
Покажу ти пташка.

Ой, ішов я горі селом
Та й видів кухарку,
Що сиділа із старостов
У курячім царку.

Ой, чи тото весіллячко,
Чи тото гостина,
Витягайте кота з печи,
Най троха простине.

Ой, староста впав із моста,
Штани ся подерли,
А свашки ся так сміяли,
Шо мало не вмерли.');
DELETE FROM song_links WHERE song_id = 'pisniua_4381030';
DELETE FROM song_versions WHERE song_id = 'pisniua_4381030';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4381030';
DELETE FROM songs WHERE id = 'pisniua_4381030';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4381030','Зійшло сонце із-за гори','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Зійшло сонце із-за гори
Та й на полонину,
Освітило, обігріло
Цілу Україну!

Ой як піду в Буковину,
Нігди не загину,
Буковина зелененька
Як літо, так зиму.

Гори мої високії,
Мушу вас лишити,
Волів би-м був у вас гнити,
Як в чужині жити.

Попід тоті сині гори
Ладно люди ходять,
Чорненькими волічками
Ноженьки обводять.

Ой, нема то, ой, нема то,
Як на Буковині,
Там-то вінок зелененький
На кожній дівчині.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4381030'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4381030','Зійшло сонце із-за гори','Зійшло сонце із-за гори
Та й на полонину,
Освітило, обігріло
Цілу Україну!

Ой як піду в Буковину,
Нігди не загину,
Буковина зелененька
Як літо, так зиму.

Гори мої високії,
Мушу вас лишити,
Волів би-м був у вас гнити,
Як в чужині жити.

Попід тоті сині гори
Ладно люди ходять,
Чорненькими волічками
Ноженьки обводять.

Ой, нема то, ой, нема то,
Як на Буковині,
Там-то вінок зелененький
На кожній дівчині.');
DELETE FROM song_links WHERE song_id = 'pisniua_4382137';
DELETE FROM song_versions WHERE song_id = 'pisniua_4382137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4382137';
DELETE FROM songs WHERE id = 'pisniua_4382137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4382137','Ой, ти вийди, дівчинонько','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, ти вийди, дівчинонько,
Як ісь виходила,
Подивися, чи той хлопець,
Котрого сь любила.

Ой, ти вийди, дівчинонько,
Відчини ворота,
Щоби ми ся не зломила
Косиця золота.

Ой, дивися, дівчинонько,
За кого ти іти,
Бись потому не плакала,
Як тя буде бити.

Ой, летіла зозуленька,
Та й сіла на ліску,
Відкривайте, мамо, хату,
Веду вам невістку.

Ой, у мене в городчику
Зацвіла капуста,
Молодий ся дуже тішить,
Що молода тлуста.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4382137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4382137','Ой, ти вийди, дівчинонько','Ой, ти вийди, дівчинонько,
Як ісь виходила,
Подивися, чи той хлопець,
Котрого сь любила.

Ой, ти вийди, дівчинонько,
Відчини ворота,
Щоби ми ся не зломила
Косиця золота.

Ой, дивися, дівчинонько,
За кого ти іти,
Бись потому не плакала,
Як тя буде бити.

Ой, летіла зозуленька,
Та й сіла на ліску,
Відкривайте, мамо, хату,
Веду вам невістку.

Ой, у мене в городчику
Зацвіла капуста,
Молодий ся дуже тішить,
Що молода тлуста.');
DELETE FROM song_links WHERE song_id = 'pisniua_4356131';
DELETE FROM song_versions WHERE song_id = 'pisniua_4356131';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4356131';
DELETE FROM songs WHERE id = 'pisniua_4356131';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4356131','Про Святого Миколая',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує дитячий фольклорний ансамбль Яворина.','Коли настає вже зима на землі,
Приходить до нас із небес чарівник!

Приспів:
Святий Миколай, Святий Миколай
Запрошує в гості, Святий Миколай!
Святий Миколай, Святий Миколай
Запрошує в гості, Святий Миколай!

Приносить дарунки він дітям малим,
Бажає здоров''я і щастя усім!

Приспів.

Усіх він дорослих й малят захистить,
Біду одведе й посміхнеться усім!

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4356131'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4356131','Про Святого Миколая','Коли настає вже зима на землі,
Приходить до нас із небес чарівник!

Приспів:
Святий Миколай, Святий Миколай
Запрошує в гості, Святий Миколай!
Святий Миколай, Святий Миколай
Запрошує в гості, Святий Миколай!

Приносить дарунки він дітям малим,
Бажає здоров''я і щастя усім!

Приспів.

Усіх він дорослих й малят захистить,
Біду одведе й посміхнеться усім!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4381736';
DELETE FROM song_versions WHERE song_id = 'pisniua_4381736';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4381736';
DELETE FROM songs WHERE id = 'pisniua_4381736';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4381736','Ми — президенти своєї країни!','Музика: Jerry Heil Слова: Jerry Heil. Виконує: Jerry Heil','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ми — нове покоління!
Чисті руки, чисте сумління!
Ми — українці, нам є чим пишатись!
Те, що посіємо, будемо жати!

На полотні, що предками виткане,
Вишиймо долю новими нитками!
Ліс зеленіє на місці руїни,
Ми — президенти своєї країни!

Мамо Україна! Свята Україна!
Я на цій землі лиш проста людина,
Але ти - моя родина, свята Україна!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4381736'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4381736','Ми — президенти своєї країни!','Ми — нове покоління!
Чисті руки, чисте сумління!
Ми — українці, нам є чим пишатись!
Те, що посіємо, будемо жати!

На полотні, що предками виткане,
Вишиймо долю новими нитками!
Ліс зеленіє на місці руїни,
Ми — президенти своєї країни!

Мамо Україна! Свята Україна!
Я на цій землі лиш проста людина,
Але ти - моя родина, свята Україна!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4381736_l1','pisniua_4381736','YouTube','https://www.youtube.com/watch?v=4xHyEMe6Mjo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4381736_l2','pisniua_4381736','YouTube','https://www.youtube.com/watch?v=fRiEPTelyMg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4382735';
DELETE FROM song_versions WHERE song_id = 'pisniua_4382735';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4382735';
DELETE FROM songs WHERE id = 'pisniua_4382735';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4382735','Та піду я в полонину','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Та піду я в полонину та в полониночку,
Вирубаю яворика та й на колисочку.
Та завішу колисочку я на яворочку,
Та буду в ній колисати малу дитиночку.
Розвивайся, не згинайся, зелененький дубе,
Бо із тебе колисочка дитиноньці буде.

Ой, повішу колисочку на дуба, на дуба,
Та буду в ній колисати малого голуба.
А я буду колисати, а вітер гойдати,
Аби моїй дитиночці добре було спати.

Ой, діти мої, діти, де би вас подіти?
Та покладу у коробку, мете шкроботіти.
Колишу тя, мій синочку, на руках тя ношу,
Та я тобі, мій синочку, щастя й долі прошу.

Ой, летіла зозуленька через садовину
Та й пустила біле перце — збудила дитину.
Аби тобі, зозуленько, друге перце впало,
Збудила мні дитиночку, була би ще спала.

Нема цвіту білішого, як цвіт на калині,
Нема в світі ріднішого, як мати дитині.
Не буду я журитися, краще заспіваю,
В мене дітей повна хата, а я гаразд маю!','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4382735'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4382735','Та піду я в полонину','Та піду я в полонину та в полониночку,
Вирубаю яворика та й на колисочку.
Та завішу колисочку я на яворочку,
Та буду в ній колисати малу дитиночку.
Розвивайся, не згинайся, зелененький дубе,
Бо із тебе колисочка дитиноньці буде.

Ой, повішу колисочку на дуба, на дуба,
Та буду в ній колисати малого голуба.
А я буду колисати, а вітер гойдати,
Аби моїй дитиночці добре було спати.

Ой, діти мої, діти, де би вас подіти?
Та покладу у коробку, мете шкроботіти.
Колишу тя, мій синочку, на руках тя ношу,
Та я тобі, мій синочку, щастя й долі прошу.

Ой, летіла зозуленька через садовину
Та й пустила біле перце — збудила дитину.
Аби тобі, зозуленько, друге перце впало,
Збудила мні дитиночку, була би ще спала.

Нема цвіту білішого, як цвіт на калині,
Нема в світі ріднішого, як мати дитині.
Не буду я журитися, краще заспіваю,
В мене дітей повна хата, а я гаразд маю!');
DELETE FROM song_links WHERE song_id = 'pisniua_4382634';
DELETE FROM song_versions WHERE song_id = 'pisniua_4382634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4382634';
DELETE FROM songs WHERE id = 'pisniua_4382634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4382634','Била мене моя мати','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Била мене моя мати,
Ой, била, ой, била,
Щоби я сі миленькому
В очі не дивила.

Била мене моя ненька,
Ой, била та й била,
Та й щоби я до сусіди
Вогню не ходила.

Та як мені до сусіди
Вогню не ходити,
А в сусіди файний хлопець,
Лиш би го любити.

Била мене матусенька
Березовим прутом,
Аби-с, дівче, не стояло
З молодим рекрутом.

А я вийду на вулицю,
Хусточкою втруся,
Таки свому рекрутові
В очі подивлюся.

Била мене моя ненька
В вечер по вечері,
Щоби я сі не дивила
В очі паничеві.

Ой, бий же мя, моя ненцю,
Ой, бий же ми, убий,
Ой, вийду я на вулицю,
Паничу мій любий.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4382634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4382634','Била мене моя мати','Била мене моя мати,
Ой, била, ой, била,
Щоби я сі миленькому
В очі не дивила.

Била мене моя ненька,
Ой, била та й била,
Та й щоби я до сусіди
Вогню не ходила.

Та як мені до сусіди
Вогню не ходити,
А в сусіди файний хлопець,
Лиш би го любити.

Била мене матусенька
Березовим прутом,
Аби-с, дівче, не стояло
З молодим рекрутом.

А я вийду на вулицю,
Хусточкою втруся,
Таки свому рекрутові
В очі подивлюся.

Била мене моя ненька
В вечер по вечері,
Щоби я сі не дивила
В очі паничеві.

Ой, бий же мя, моя ненцю,
Ой, бий же ми, убий,
Ой, вийду я на вулицю,
Паничу мій любий.');
DELETE FROM song_links WHERE song_id = 'pisniua_4383083';
DELETE FROM song_versions WHERE song_id = 'pisniua_4383083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4383083';
DELETE FROM songs WHERE id = 'pisniua_4383083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4383083','Батьківська любов','(Сину, мій сину). Музика: Леонід Нечипорук Слова: Наталка Коломієць','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконуює Леонід Сандуленко','Хто вигадав недобру казку
І віру спопелив до тла?
Що ніби в батька менше ласки,
Бракує ніжності й тепла...
Що він не вміє колисати,
Важкий характер і рука...
Любити може тільки мати,
Лише її любов палка!..

Приспів:
Сину, мій сину,
В тобі моя сила,
У тебе по жилах
Тече моя кров!
Сину, мій сину,
Розправ сої крила,
Ти - батькова віра,
Надія й любов!

Не вірте злому наговору,
Любов батьківська без прикрас.
Вона без краю, наче море,
Сувора й ніжна водночас!..
Любов батьківська це повага,
Розмова тільки нарівні.
В дітей завжди до неї спрага,
А особливо у синів.

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4383083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4383083','Батьківська любов','Хто вигадав недобру казку
І віру спопелив до тла?
Що ніби в батька менше ласки,
Бракує ніжності й тепла...
Що він не вміє колисати,
Важкий характер і рука...
Любити може тільки мати,
Лише її любов палка!..

Приспів:
Сину, мій сину,
В тобі моя сила,
У тебе по жилах
Тече моя кров!
Сину, мій сину,
Розправ сої крила,
Ти - батькова віра,
Надія й любов!

Не вірте злому наговору,
Любов батьківська без прикрас.
Вона без краю, наче море,
Сувора й ніжна водночас!..
Любов батьківська це повага,
Розмова тільки нарівні.
В дітей завжди до неї спрага,
А особливо у синів.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_438389';
DELETE FROM song_versions WHERE song_id = 'pisniua_438389';
DELETE FROM songs_fts WHERE song_id = 'pisniua_438389';
DELETE FROM songs WHERE id = 'pisniua_438389';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_438389','Послухай нині','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Послухай нині о тій новині,
Що Ангели приносять,
Над вертепом голосять.     |(2)

Це мила радість вірним у сладість:
Христа Спаса Рождество,
Всьому миру торжество.     |(2)

Дивна новина, що Діва Сина
У вертепі зродила,
На сіні Го зложила.        |(2)

Без жодної змази - гріховної скази
Чеснішая Херувим,
Славнійшая Серафим.        |(2)

Діва Марія, чудна Лелія,
Пригортає до серця
Маленького Первенця.       |(2)

"О мій маленький, Сину любенький!
Великий небес Творче,
Всьої природи Отче!"       |(2)

Аж незабаром царі со даром
Із востока приходять
Тай Дитятку приносять:     |(2)

"Царю рожденний! Прийми дар земний:
ливан, миро і злато
нас благослови за то!"     |(2)

А Мати чиста мовить до Христа:
"О мій Сину єдиний,
Прийми дар Тобі даний".    |(2)

З яселок своїх благослови їх
І дай прийти до неба,
Більше нічого не треба!"   |(2)

Старенький Йосип на руках носить
Маленьке пароля,
Небесного Короля.          |(2)

Усі співали і любо грали
На сопілках прекрасно
Із голосом согласно.       |(2)

І ми співаймо, поклін віддаймо
Христу Богу в яселках,
Повитому в пеленках.       |(2)','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_438389'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_438389','Послухай нині','Послухай нині о тій новині,
Що Ангели приносять,
Над вертепом голосять.     |(2)

Це мила радість вірним у сладість:
Христа Спаса Рождество,
Всьому миру торжество.     |(2)

Дивна новина, що Діва Сина
У вертепі зродила,
На сіні Го зложила.        |(2)

Без жодної змази - гріховної скази
Чеснішая Херувим,
Славнійшая Серафим.        |(2)

Діва Марія, чудна Лелія,
Пригортає до серця
Маленького Первенця.       |(2)

"О мій маленький, Сину любенький!
Великий небес Творче,
Всьої природи Отче!"       |(2)

Аж незабаром царі со даром
Із востока приходять
Тай Дитятку приносять:     |(2)

"Царю рожденний! Прийми дар земний:
ливан, миро і злато
нас благослови за то!"     |(2)

А Мати чиста мовить до Христа:
"О мій Сину єдиний,
Прийми дар Тобі даний".    |(2)

З яселок своїх благослови їх
І дай прийти до неба,
Більше нічого не треба!"   |(2)

Старенький Йосип на руках носить
Маленьке пароля,
Небесного Короля.          |(2)

Усі співали і любо грали
На сопілках прекрасно
Із голосом согласно.       |(2)

І ми співаймо, поклін віддаймо
Христу Богу в яселках,
Повитому в пеленках.       |(2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4382232';
DELETE FROM song_versions WHERE song_id = 'pisniua_4382232';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4382232';
DELETE FROM songs WHERE id = 'pisniua_4382232';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4382232','Ой, наш дружба','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, наш дружба молодийкий
Іде дарувати,
Бо він хоче молоду
Ще поцілувати.

А він бідний зажурився
Та й не сподівався,
Молода поцілувала,
Він лиш облизався.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4382232'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4382232','Ой, наш дружба','Ой, наш дружба молодийкий
Іде дарувати,
Бо він хоче молоду
Ще поцілувати.

А він бідний зажурився
Та й не сподівався,
Молода поцілувала,
Він лиш облизався.');
DELETE FROM song_links WHERE song_id = 'pisniua_438434';
DELETE FROM song_versions WHERE song_id = 'pisniua_438434';
DELETE FROM songs_fts WHERE song_id = 'pisniua_438434';
DELETE FROM songs WHERE id = 'pisniua_438434';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_438434','Меч Арея','Музика: Василь Лютий Слова: Василь Лютий. Виконує: Василь Лютий','uk','ukraine_1991',NULL,NULL,'Компакт-диск "Щит Перуна" (Збірка сучасних пісень-славнів Межимира Миколаїва та Живосила Лютого) http://www.vasyl.com.ua/','Текст і акорди записано на слух з аудіо. Тональність оригінальна. Один із використаних акордів: E5 [0 2 2 x 0 0]. Аудіо (mp3): http://www.vasyl.com.ua/schit.htm - акустична версія; http://www.vasyl.com.ua/za_ukrainu.htm - електрична (рок) версія. Підбір акордів: bohdanko (pisni.org.ua)','Вступ:  Am E5 Dm Am (x4)

Гуркоче грім в ковальні Бога.
Стоять вої з кісьми до плеч.
Рука зсивілого Сварога
Кує Арею моцний меч.

І ось знаряддя вже готове,
Відблиснув меч в люстрах небес.
Меча окропила Покрова,
А Рід нарік його Чаркес.

Приспів:
На позір Перунова Полка
Dm         Am ...
Піднімає меч Ареєва рука -
На могутній дух, на захист нам,
На погибель злим підступним ворогам.
Гримне Небо - і тремтить Земля,
Меч Арея Русь з неволі визволя.
На Вкраїні хай пощезне враг,
Меч Арея поверне нам рідний стяг.

Програш:  Am E5 C Hm (x2)

Чаркес - чарівний меч Арея -
Тримали Тур і Святослав.
Не раз Аратту і Борею,
І Русь він щиро захищав.

Тримав Гатило - Богом даний,
Тримали витязі-князі,
Тримали лицарі-гетьмани,
А зараз він в твоїй руці.

Приспів.
Програш:  Am E5 C Hm (x2)
Приспів.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:patriotic'', ''Бардівські пісні'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_438434'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_438434','Меч Арея','Вступ:  Am E5 Dm Am (x4)

Гуркоче грім в ковальні Бога.
Стоять вої з кісьми до плеч.
Рука зсивілого Сварога
Кує Арею моцний меч.

І ось знаряддя вже готове,
Відблиснув меч в люстрах небес.
Меча окропила Покрова,
А Рід нарік його Чаркес.

Приспів:
На позір Перунова Полка
Dm         Am ...
Піднімає меч Ареєва рука -
На могутній дух, на захист нам,
На погибель злим підступним ворогам.
Гримне Небо - і тремтить Земля,
Меч Арея Русь з неволі визволя.
На Вкраїні хай пощезне враг,
Меч Арея поверне нам рідний стяг.

Програш:  Am E5 C Hm (x2)

Чаркес - чарівний меч Арея -
Тримали Тур і Святослав.
Не раз Аратту і Борею,
І Русь він щиро захищав.

Тримав Гатило - Богом даний,
Тримали витязі-князі,
Тримали лицарі-гетьмани,
А зараз він в твоїй руці.

Приспів.
Програш:  Am E5 C Hm (x2)
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_438434_l1','pisniua_438434','YouTube','https://www.youtube.com/watch?v=WHZuc4XwqoM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_438434_l2','pisniua_438434','YouTube','https://www.youtube.com/watch?v=82GezqmnIUU','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_438434_l3','pisniua_438434','YouTube','https://www.youtube.com/watch?v=PuMJUehzYi4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_438434_l4','pisniua_438434','http://www.vasyl.com.ua/schit.htm','http://www.vasyl.com.ua/schit.htm','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_4382338';
DELETE FROM song_versions WHERE song_id = 'pisniua_4382338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4382338';
DELETE FROM songs WHERE id = 'pisniua_4382338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4382338','Ой, в зелені полонині','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, в зелені полонині
Сорока скрегоче,
На весіллі всі співають,
Хто якої хоче.

Ой, веселе весіллєчко,
Як музика грає.
Яка, сину, твоя доля,
Хіба пан Біг знає.

Ой, бідочко моя тяжка,
Що ми наробили,
Ще не було весіллечка,
А ми вже хрестили.

Було, дівко, не давати
Хлопцям личко своє,
То ми були не топтали
Подвір''ячко твоє.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4382338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4382338','Ой, в зелені полонині','Ой, в зелені полонині
Сорока скрегоче,
На весіллі всі співають,
Хто якої хоче.

Ой, веселе весіллєчко,
Як музика грає.
Яка, сину, твоя доля,
Хіба пан Біг знає.

Ой, бідочко моя тяжка,
Що ми наробили,
Ще не було весіллечка,
А ми вже хрестили.

Було, дівко, не давати
Хлопцям личко своє,
То ми були не топтали
Подвір''ячко твоє.');
DELETE FROM song_links WHERE song_id = 'pisniua_4382535';
DELETE FROM song_versions WHERE song_id = 'pisniua_4382535';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4382535';
DELETE FROM songs WHERE id = 'pisniua_4382535';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4382535','Мати моя старенькая','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Мати моя старенькая,
Що зо мнов гадаєш?
Чому мені, молодому,
Пари не шукаєш?

А як тобі, мій синочку,
Та пари шукати,
Як ти прийдеш додомоньку —
Вже має світати.

Веліла ми моя мати
Багачки глядати.
Як не візьмеш із багатством,
Вижену тя з хати.

Сам я ти, моя мамко,
З хати ся уступлю,
Візьму тоту дівчинойку,
Що ї вірно люблю!','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4382535'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4382535','Мати моя старенькая','Мати моя старенькая,
Що зо мнов гадаєш?
Чому мені, молодому,
Пари не шукаєш?

А як тобі, мій синочку,
Та пари шукати,
Як ти прийдеш додомоньку —
Вже має світати.

Веліла ми моя мати
Багачки глядати.
Як не візьмеш із багатством,
Вижену тя з хати.

Сам я ти, моя мамко,
З хати ся уступлю,
Візьму тоту дівчинойку,
Що ї вірно люблю!');
DELETE FROM song_links WHERE song_id = 'pisniua_438685';
DELETE FROM song_versions WHERE song_id = 'pisniua_438685';
DELETE FROM songs_fts WHERE song_id = 'pisniua_438685';
DELETE FROM songs WHERE id = 'pisniua_438685';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_438685','Колядка українських діточок','Слова: невідомий','uk','ukraine_before_1917',NULL,NULL,'"Христу Рожденному поклонімся" Видавництво "Лелека" 2001',NULL,'Ой у Вифлеємі сталася новина,
Там повила Мати Божа та Божого Сина      | (2)

В пелени повила, в сіні положила,
Люлі, люлі, любий сину, Ти, дитино мила! | (2)

Українські діти Ісуса вітають,
Веселими пісеньками Його звеселяють.     | (2)','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''Пісні на християнську тематику'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_438685'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_438685','Колядка українських діточок','Ой у Вифлеємі сталася новина,
Там повила Мати Божа та Божого Сина      | (2)

В пелени повила, в сіні положила,
Люлі, люлі, любий сину, Ти, дитино мила! | (2)

Українські діти Ісуса вітають,
Веселими пісеньками Його звеселяють.     | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_438632';
DELETE FROM song_versions WHERE song_id = 'pisniua_438632';
DELETE FROM songs_fts WHERE song_id = 'pisniua_438632';
DELETE FROM songs WHERE id = 'pisniua_438632';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_438632','Доле ж моя нещаслива - Коструб','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004 2. Купальські пісні. Українські народні пісні. Пісенник. Упорядник О. Ю Чебанюк. - К.: Музична Україна, 1989. - 196 с.','Пісня-Гра. Пара - любощі: Коструб. Астральні Заручини — Українське містичне Весілля: Різдво Світа / Купала. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... – Мед і Ябка... Рай розвився Господь звеселився. Івана Купала тай в Воду упала. Стану з Тобою до Шлюбоньку. Листки з приводу цієї Пісні: Коляда і Великдень: Різдво і Відродження Світа. Щедрий Вечер, 13-14 січня. Маланки-Василь. Коза. Українські релігійні роздуми про Бога. Про Свято Івана Купала Стежки до листків про Українські традиції.','Одна Дівчина входить у середину Кола і вітаєцця.
Інша відповідає:

— Чи не бачили ви Мого Коструба?
— Пішов в Старости.

Спів:

Доле ж моя нещаслива
Що я собі наробила
Що я собі наробила
Кострубонька незлюбила

Вийди-вийди Кострубоньку
Стану з Тобою до Шлюбоньку
А в Неділю пораненьку
На тім Білім Каміноньку

— Чи не бачили ви мого Коструба?
— Поїхав по Квітку.

Спів.

— Чи не бачили ви мого Коструба?
— Поїхав по Напії.

Спів.

— Чи не бачили ви мого Коструба?
— Слабий.

Спів.    Голос 1','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_438632'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_438632','Доле ж моя нещаслива - Коструб','Одна Дівчина входить у середину Кола і вітаєцця.
Інша відповідає:

— Чи не бачили ви Мого Коструба?
— Пішов в Старости.

Спів:

Доле ж моя нещаслива
Що я собі наробила
Що я собі наробила
Кострубонька незлюбила

Вийди-вийди Кострубоньку
Стану з Тобою до Шлюбоньку
А в Неділю пораненьку
На тім Білім Каміноньку

— Чи не бачили ви мого Коструба?
— Поїхав по Квітку.

Спів.

— Чи не бачили ви мого Коструба?
— Поїхав по Напії.

Спів.

— Чи не бачили ви мого Коструба?
— Слабий.

Спів.    Голос 1');
DELETE FROM song_links WHERE song_id = 'pisniua_4385137';
DELETE FROM song_versions WHERE song_id = 'pisniua_4385137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4385137';
DELETE FROM songs WHERE id = 'pisniua_4385137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4385137','Шкільний корабель','Музика: Георгій Струве Слова: Костянтин Ібряєв','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'І тоді, як сніг довкола,
І коли сади цвітуть,
Ти нагадуєш нам, школа,
Корабель, що лине в путь...

Приспів:
Ми вахту несемо у класі роки,
Тож, значить, хоч трошки
Ми всі - моряки!
Жага відкриттів нам знайома,
Дороги у нас неблизькі!..

Кожен рік ми входим, звісно,
В клас новий, як в новий порт.
Наші мрії, нашу пісню,
Як завжди, берем на борт!

Приспів.

По слідах героїв Гріна,
По книжках, що любиш ти,
Під невидимим вітрилом
Нам із друзями пливти!

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4385137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4385137','Шкільний корабель','І тоді, як сніг довкола,
І коли сади цвітуть,
Ти нагадуєш нам, школа,
Корабель, що лине в путь...

Приспів:
Ми вахту несемо у класі роки,
Тож, значить, хоч трошки
Ми всі - моряки!
Жага відкриттів нам знайома,
Дороги у нас неблизькі!..

Кожен рік ми входим, звісно,
В клас новий, як в новий порт.
Наші мрії, нашу пісню,
Як завжди, берем на борт!

Приспів.

По слідах героїв Гріна,
По книжках, що любиш ти,
Під невидимим вітрилом
Нам із друзями пливти!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_438838';
DELETE FROM song_versions WHERE song_id = 'pisniua_438838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_438838';
DELETE FROM songs WHERE id = 'pisniua_438838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_438838','Ой Лісом Лісом Доріжкою їхав Микола Теліжкою','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004 2. Купальські пісні. Українські народні пісні. Пісенник. Упорядник О. Ю Чебанюк. - К.: Музична Україна, 1989. - 196 с.','Пара - любощі: Теліжка-Доріжка. Вітер-Петрушка. Вибір Пари. Астральні Заручини — Українське містичне Весілля: Різдво Світа / Купала. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... – Мед і Ябка... Рай розвився Господь звеселився. Івана Купала тай в Воду упала. Йому Теліжка поламалась. Були Світилки Яснії Зірки. Підеш за мене Молодого. Листки з приводу цієї Пісні: Українська Астрально-мітольоґічна реліґійна концепція. Українські релігійні роздуми про Бога. Про Свято Івана Купала Стежки до листків про Українські традиції.','Ой Лісом-лісом Доріжкою
Їхав Микола Теліжкою

Йому Теліжка поламалась
Йому Ганнуся сподобалась

Вітер Петрушку підвіває
Микола Ганнусю підмовляє

Не йди Ганнусю ні за кого
Підеш за мене Молодого','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_438838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_438838','Ой Лісом Лісом Доріжкою їхав Микола Теліжкою','Ой Лісом-лісом Доріжкою
Їхав Микола Теліжкою

Йому Теліжка поламалась
Йому Ганнуся сподобалась

Вітер Петрушку підвіває
Микола Ганнусю підмовляє

Не йди Ганнусю ні за кого
Підеш за мене Молодого');
DELETE FROM song_links WHERE song_id = 'pisniua_4385032';
DELETE FROM song_versions WHERE song_id = 'pisniua_4385032';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4385032';
DELETE FROM songs WHERE id = 'pisniua_4385032';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4385032','Мамин день','Музика: Віктор Николишин Слова: Віталіна Николишин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'День весняний, не морозний,
День веселий та мімозний!

Приспів:
Це є мамин, це є мамин,
Це є мамин день!
Це є мамин, це є мамин,
Це є мамин день!

День безхмарний і чудовий,
День схвильований, святковий!

Приспів.

День сюрпризів і вітання,
День дарунків і кохання!

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4385032'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4385032','Мамин день','День весняний, не морозний,
День веселий та мімозний!

Приспів:
Це є мамин, це є мамин,
Це є мамин день!
Це є мамин, це є мамин,
Це є мамин день!

День безхмарний і чудовий,
День схвильований, святковий!

Приспів.

День сюрпризів і вітання,
День дарунків і кохання!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4385032_l1','pisniua_4385032','YouTube','https://www.youtube.com/watch?v=K8KQtYdXlmY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_438737';
DELETE FROM song_versions WHERE song_id = 'pisniua_438737';
DELETE FROM songs_fts WHERE song_id = 'pisniua_438737';
DELETE FROM songs WHERE id = 'pisniua_438737';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_438737','Чий же то Голос Лугом іде','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004 2. Купальські пісні. Українські народні пісні. Пісенник. Упорядник О. Ю Чебанюк. - К.: Музична Україна, 1989. - 196 с.','Пара - любощі: Вінок. Посвячення. Неділя. Астральні Заручини — Українське містичне Весілля: Різдво Світа / Купала. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... – Мед і Ябка... Рай розвився Господь звеселився. Івана Купала тай в Воду упала. Не рубай мене у Суботоньку. Були Світилки Яснії Зірки. Не гинь Миленький дам Ти Радоньку. Листки з приводу цієї Пісні: Українська Астрально-мітольоґічна реліґійна концепція. Українські релігійні роздуми про Бога. Про Свято Івана Купала Стежки до листків про Українські традиції.','Чий же то Голос  |(2)
Лугом іде
Іване-Івашечку

То ж Брат Сестру |(2)
Зарубать веде
Іване-Івашечку

Сестра у Брата   |(2)
Просилася
Іване-Івашечку

Мій Братику      |(2)
Мій Голубчику
Іване-Івашечку

Не рубай мене    |(2)
У Суботоньку
Іване-Івашечку

Зарубай мене     |(2)
У Неділеньку
Іване-Івашечку

У Неділеньку     |(2)
Всі Віночки в''ють
Іване-Івашечку

Да вони мені     |(2)
Молодій зав''ють
Іване-Івашечку

І мені зав''ють   |(2)
І мене приберуть
Іване-Івашечку

І мене приберуть |(2)
До Церкви понесуть
Іване-Івашечку','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_438737'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_438737','Чий же то Голос Лугом іде','Чий же то Голос  |(2)
Лугом іде
Іване-Івашечку

То ж Брат Сестру |(2)
Зарубать веде
Іване-Івашечку

Сестра у Брата   |(2)
Просилася
Іване-Івашечку

Мій Братику      |(2)
Мій Голубчику
Іване-Івашечку

Не рубай мене    |(2)
У Суботоньку
Іване-Івашечку

Зарубай мене     |(2)
У Неділеньку
Іване-Івашечку

У Неділеньку     |(2)
Всі Віночки в''ють
Іване-Івашечку

Да вони мені     |(2)
Молодій зав''ють
Іване-Івашечку

І мені зав''ють   |(2)
І мене приберуть
Іване-Івашечку

І мене приберуть |(2)
До Церкви понесуть
Іване-Івашечку');
DELETE FROM song_links WHERE song_id = 'pisniua_439030';
DELETE FROM song_versions WHERE song_id = 'pisniua_439030';
DELETE FROM songs_fts WHERE song_id = 'pisniua_439030';
DELETE FROM songs WHERE id = 'pisniua_439030';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_439030','Ой дай Мати Гребінку','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,'Весільні — Свята Неділя: Розплітання Коси. Астральні Заручини — Українське містичне Весілля: Різдво Світа / Купала. Еротика, жарти, забави, загадки: Катерини – Калета – Андрія... Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... Мед і Ябка... Рай розвився Господь звеселився. Ой дай Мати Гребінку. Розчисати Русу Косу у Дівки. Ой Брат Сестрицю розпліта Ой дай Мати Гребінку А жаль же мені Русої Коси і Панянської Краси. Івана Купала тай в Воду упала. Під Калиною Дівчина там Косу Русу чесала. Листки з приводу цієї Пісні: Весілля — Свята Неділя: Дари. Пов''язування. Коса. Про Свято Івана Купала Стежки до листків про Українські традиції.','Ой дай Мати Гребінку
Розчисати Русу Косу у Дівки
Гребінця Матінко Гребінця
Розчисати Русу Косу спід Вінця','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_439030'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_439030','Ой дай Мати Гребінку','Ой дай Мати Гребінку
Розчисати Русу Косу у Дівки
Гребінця Матінко Гребінця
Розчисати Русу Косу спід Вінця');
DELETE FROM song_links WHERE song_id = 'pisniua_4389737';
DELETE FROM song_versions WHERE song_id = 'pisniua_4389737';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4389737';
DELETE FROM songs WHERE id = 'pisniua_4389737';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4389737','Хрест мій у трояндах','Слова: Паша Мандзюк','uk','ukraine_1991',NULL,NULL,'https://www.facebook.com/pashka1999',NULL,'Хрест мій у трояндах,
Я його несу.
Він - моє багатство, |
Я його люблю!        | (2)

Хрест мій у трояндах
Треба донести,
Бо уста шепочуть:    |
Боже, поможи!..      | (2)

Хрест мій у трояндах,
Стежечка моя,
Я по тій стежині     |
Зайду до Христа!..   | (2)

Хрест мій у трояндах -
Радість і життя,
Він - моє спасіння   |
Там на небесах!..    | (2)','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4389737'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4389737','Хрест мій у трояндах','Хрест мій у трояндах,
Я його несу.
Він - моє багатство, |
Я його люблю!        | (2)

Хрест мій у трояндах
Треба донести,
Бо уста шепочуть:    |
Боже, поможи!..      | (2)

Хрест мій у трояндах,
Стежечка моя,
Я по тій стежині     |
Зайду до Христа!..   | (2)

Хрест мій у трояндах -
Радість і життя,
Він - моє спасіння   |
Там на небесах!..    | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4389737_l1','pisniua_4389737','YouTube','https://www.youtube.com/watch?v=zBlMBCwIIeI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4389083';
DELETE FROM song_versions WHERE song_id = 'pisniua_4389083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4389083';
DELETE FROM songs WHERE id = 'pisniua_4389083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4389083','Ой, летіли гусоньки низько понад стріхи','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, летіли гусоньки
Низько понад стріхи,
Та не єден парубок
Робить з мене сміхи.
Не за то сміється,
Щ-м не файна дівка,
Але за то ''го морить,
Що ''му не фраїрка!

Ой, паробче, паробче,
Курка тя затопче,
Та не єдна дівчина
В селі тя не схоче!
І я тя не хочу −
Нігди-м не хотіла,
Я такими дурними
Плоти городила!

Тоді я за тя піду,
Коли риба свисне,
Коли вогінь та воду
До себе притисне!
Тоді ся ожениш,
Як заєць закряче,
І тота за тя піде,
Що в болоті скаче!','[''pisni.org.ua'', ''cat:zakarpatski'', ''Закарпатські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4389083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4389083','Ой, летіли гусоньки низько понад стріхи','Ой, летіли гусоньки
Низько понад стріхи,
Та не єден парубок
Робить з мене сміхи.
Не за то сміється,
Щ-м не файна дівка,
Але за то ''го морить,
Що ''му не фраїрка!

Ой, паробче, паробче,
Курка тя затопче,
Та не єдна дівчина
В селі тя не схоче!
І я тя не хочу −
Нігди-м не хотіла,
Я такими дурними
Плоти городила!

Тоді я за тя піду,
Коли риба свисне,
Коли вогінь та воду
До себе притисне!
Тоді ся ожениш,
Як заєць закряче,
І тота за тя піде,
Що в болоті скаче!');
DELETE FROM song_links WHERE song_id = 'pisniua_438931';
DELETE FROM song_versions WHERE song_id = 'pisniua_438931';
DELETE FROM songs_fts WHERE song_id = 'pisniua_438931';
DELETE FROM songs WHERE id = 'pisniua_438931';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_438931','Ой на Городі Шафран Шафран','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004. 2. Купальські пісні. Українські народні пісні. Пісенник. Упорядник О. Ю Чебанюк. - К.: Музична Україна, 1989. - 196 с.','Пара - любощі: Город. Шафран-Шафраночка. Вибір Пари. Астральні Заручини — Українське містичне Весілля: Різдво Світа / Купала. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... – Мед і Ябка... Рай розвився Господь звеселився. Івана Купала тай в Воду упала. На Нюю Хлопці зглядаюцця. Взяв за рученьку тай звітався. Ой на Городі Шафран Шафран Ходить Маруся понад Водою Були Світилки Яснії Зірки. Листки з приводу цієї Пісні: Українська Астрально-мітольоґічна реліґійна концепція. Українські релігійні роздуми про Бога. Про Свято Івана Купала Стежки до листків про Українські традиції.','Ой на Городі Шафран-шафран
Стоїть Володя як Пан як Пан

А коло нього Шафраночка
Стоїть Галюня як Панночка

На нюю Хлопці зглядаюцця
Та привітатися встидаюцця

Їден Володя не встидався
Взяв за рученьку тай звітався','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_438931'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_438931','Ой на Городі Шафран Шафран','Ой на Городі Шафран-шафран
Стоїть Володя як Пан як Пан

А коло нього Шафраночка
Стоїть Галюня як Панночка

На нюю Хлопці зглядаюцця
Та привітатися встидаюцця

Їден Володя не встидався
Взяв за рученьку тай звітався');
DELETE FROM song_links WHERE song_id = 'pisniua_439134';
DELETE FROM song_versions WHERE song_id = 'pisniua_439134';
DELETE FROM songs_fts WHERE song_id = 'pisniua_439134';
DELETE FROM songs WHERE id = 'pisniua_439134';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_439134','Ой не стій Дубе над Водою','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Купальські пісні. Українські народні пісні. Пісенник. Упорядник О. Ю Чебанюк. - К.: Музична Україна, 1989. - 196 с.',NULL,'Ой не стій Дубе над Водою
Там Тобі Дубе горе буде

Там Тобі Дубе горе буде
Як тій Невістці у Свекрухи

Що цілий тиждень у роботі
Прийде Неділя у клопоті

Що цілий тиждень товче-меле
Прийде Неділя крупи дере

Стань собі Дубе у Садочку
У Хрещатому Барвіночку

Там Тобі Дубе добре буде
Як тій Дівчині у Матінки

Що цілий тиждень у Биндочці
Прийде Неділя на Гулоньці

Що цілий тиждень у Віночку
Прийде Неділя у Таночку','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_439134'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_439134','Ой не стій Дубе над Водою','Ой не стій Дубе над Водою
Там Тобі Дубе горе буде

Там Тобі Дубе горе буде
Як тій Невістці у Свекрухи

Що цілий тиждень у роботі
Прийде Неділя у клопоті

Що цілий тиждень товче-меле
Прийде Неділя крупи дере

Стань собі Дубе у Садочку
У Хрещатому Барвіночку

Там Тобі Дубе добре буде
Як тій Дівчині у Матінки

Що цілий тиждень у Биндочці
Прийде Неділя на Гулоньці

Що цілий тиждень у Віночку
Прийде Неділя у Таночку');
DELETE FROM song_links WHERE song_id = 'pisniua_4390539';
DELETE FROM song_versions WHERE song_id = 'pisniua_4390539';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4390539';
DELETE FROM songs WHERE id = 'pisniua_4390539';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4390539','Нічка та радісна','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Нічка та радісна (ясная)
Зорями світила,
У Вифлеємі
Пречиста Діва Сина народила        |
В яслах на сіні                    | (2)

Приспів:
Слава Богу, слава на висоті
На землі мир, спокій!
Слава вгорі, мир на землі,
В людях добра воля!

В сяйві великому пастухам у полі
Ангел з''явився.
Він сповістив, що в вертепі убогім |
Спас народився!                    | (2)

Приспів.

Сповнені радістю до хліва побігли,
До ясел впали,
Славу Святому Новородженому        |
Богу віддали!                      | (2)

Приспів.

Ми також серцем до ясел припадімо,
Христа вітаймо!
Йому Одному, Божому Святому,       |
Славу віддаймо!                    | (2)

Приспів. (2)','[''pisni.org.ua'', ''cat:narodni'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4390539'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4390539','Нічка та радісна','Нічка та радісна (ясная)
Зорями світила,
У Вифлеємі
Пречиста Діва Сина народила        |
В яслах на сіні                    | (2)

Приспів:
Слава Богу, слава на висоті
На землі мир, спокій!
Слава вгорі, мир на землі,
В людях добра воля!

В сяйві великому пастухам у полі
Ангел з''явився.
Він сповістив, що в вертепі убогім |
Спас народився!                    | (2)

Приспів.

Сповнені радістю до хліва побігли,
До ясел впали,
Славу Святому Новородженому        |
Богу віддали!                      | (2)

Приспів.

Ми також серцем до ясел припадімо,
Христа вітаймо!
Йому Одному, Божому Святому,       |
Славу віддаймо!                    | (2)

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4390539_l1','pisniua_4390539','YouTube','https://www.youtube.com/watch?v=KDGwJ31eeJw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4390539_l2','pisniua_4390539','YouTube','https://www.youtube.com/watch?v=FBRCIyVO2TI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4390539_l3','pisniua_4390539','YouTube','https://www.youtube.com/watch?v=JVjTJ36XAOs','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4390539_l4','pisniua_4390539','YouTube','https://www.youtube.com/watch?v=15CTcAFwz7k','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4390539_l5','pisniua_4390539','YouTube','https://www.youtube.com/watch?v=u5W6pwayK3s','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4390539_l6','pisniua_4390539','YouTube','https://www.youtube.com/watch?v=Q2gwV8A2TzA','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_4388436';
DELETE FROM song_versions WHERE song_id = 'pisniua_4388436';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4388436';
DELETE FROM songs WHERE id = 'pisniua_4388436';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4388436','Пісня про літо','Музика: Ігор Білик Слова: Богдан Сливчук','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Катя Сухарюк.','Знов посміхається  літо,
Ранок дзвенить під вікном,
Кожну травинку зігріто
Ніжним, як мама, теплом!
Поле широке у квітах,
Білий метелик тремтить,
Є найтепліша на світі
Літечка радісна мить!

Приспів:
Малюю дощик і веселку,   |
І сонця теплі промінці,  |
Співаю пісеньку веселу - |
Усмішка на моїм лиці!    | (2)

Знов посміхається літо
Мамі, тобі і мені!
Співу багато і цвіту,
Наче в солодкому сні!
Сяє веселка, омита
Теплим коротким дощем,
Прошу я в літечка-літа
Довго сміятись нам ще!

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4388436'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4388436','Пісня про літо','Знов посміхається  літо,
Ранок дзвенить під вікном,
Кожну травинку зігріто
Ніжним, як мама, теплом!
Поле широке у квітах,
Білий метелик тремтить,
Є найтепліша на світі
Літечка радісна мить!

Приспів:
Малюю дощик і веселку,   |
І сонця теплі промінці,  |
Співаю пісеньку веселу - |
Усмішка на моїм лиці!    | (2)

Знов посміхається літо
Мамі, тобі і мені!
Співу багато і цвіту,
Наче в солодкому сні!
Сяє веселка, омита
Теплим коротким дощем,
Прошу я в літечка-літа
Довго сміятись нам ще!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4388436_l1','pisniua_4388436','YouTube','https://www.youtube.com/watch?v=_VjBLOzz7T8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4373735';
DELETE FROM song_versions WHERE song_id = 'pisniua_4373735';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4373735';
DELETE FROM songs WHERE id = 'pisniua_4373735';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4373735','Бережи себе','Музика: Сергій Мартинюк, Роман Андрухів Слова: Сергій Мартинюк. Виконує: ФІОЛЕТ','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сльози Андріївським губиш узвозом,
Коріння будинків старих
Скрипить на грудневих морозах
І пара старих черевик
В прихожій пропахлій вітрами,
З далеких, як літо, доріг,
Про все тобі враз нагадає,
Привіт, Новий рік!..

Приспів:
Бачиш, як вгорі зорі
Мерехтять нам радо?..
Завтра я прийду
З першим снігопадом!
І, щоб не обіцяли нам
Прогнози...

Як вперше між хвої живе
Тридцять перше,
Іскрить помаранчевий дух,
У вікнах чужих завжди легше
І ти мені більше, ніж друг!..
В кав''ярні у серці Подолу,
На вулиці сиплеться пух,
Зима не така й несходима,
Коли зустрічаються дві пари рук!..

Приспів.

Бережи себе!.. Бережи себе!.. | (2)

Сльози - Андріївським губиш узвозом,
І я все віддав би за них!
Мчать в наші широти морози...
Привіт, Новий рік!..

Приспів.

Бережи себе!.. Бережи себе!.. | (5)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4373735'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4373735','Бережи себе','Сльози Андріївським губиш узвозом,
Коріння будинків старих
Скрипить на грудневих морозах
І пара старих черевик
В прихожій пропахлій вітрами,
З далеких, як літо, доріг,
Про все тобі враз нагадає,
Привіт, Новий рік!..

Приспів:
Бачиш, як вгорі зорі
Мерехтять нам радо?..
Завтра я прийду
З першим снігопадом!
І, щоб не обіцяли нам
Прогнози...

Як вперше між хвої живе
Тридцять перше,
Іскрить помаранчевий дух,
У вікнах чужих завжди легше
І ти мені більше, ніж друг!..
В кав''ярні у серці Подолу,
На вулиці сиплеться пух,
Зима не така й несходима,
Коли зустрічаються дві пари рук!..

Приспів.

Бережи себе!.. Бережи себе!.. | (2)

Сльози - Андріївським губиш узвозом,
І я все віддав би за них!
Мчать в наші широти морози...
Привіт, Новий рік!..

Приспів.

Бережи себе!.. Бережи себе!.. | (5)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4373735_l1','pisniua_4373735','YouTube','https://www.youtube.com/watch?v=w6WIOVsE5gc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4392034';
DELETE FROM song_versions WHERE song_id = 'pisniua_4392034';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4392034';
DELETE FROM songs WHERE id = 'pisniua_4392034';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4392034','Якщо хочеш Новий рік!','Музика: Дмитро Шуров Слова: Дмитро Шуров. Виконує: Pianoбой','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Минає рік старий,
Закінчується повість,
Новий сюжет чекає знов...
Під небом із сумних
І радісних історій
Так ніщо не гріє,
Як твоя любов...

Якщо хочеш Новий рік -
Обійми свою людину,
І сварливого сусіда
Теж візьми і обійми!
Подаруй на Новий рік
Всьому світу свої крила,
Без твоїх обійм не прийде |
Новий Рік!                | (2)

Новий рік! Новий рік!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4392034'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4392034','Якщо хочеш Новий рік!','Минає рік старий,
Закінчується повість,
Новий сюжет чекає знов...
Під небом із сумних
І радісних історій
Так ніщо не гріє,
Як твоя любов...

Якщо хочеш Новий рік -
Обійми свою людину,
І сварливого сусіда
Теж візьми і обійми!
Подаруй на Новий рік
Всьому світу свої крила,
Без твоїх обійм не прийде |
Новий Рік!                | (2)

Новий рік! Новий рік!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4392034_l1','pisniua_4392034','YouTube','https://www.youtube.com/watch?v=E4NQp2c3IJA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_438981';
DELETE FROM song_versions WHERE song_id = 'pisniua_438981';
DELETE FROM songs_fts WHERE song_id = 'pisniua_438981';
DELETE FROM songs WHERE id = 'pisniua_438981';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_438981','Бабло','Музика: Борщ Слова: Олександр Піпа. Виконує: Борщ','uk','ukraine_1991',NULL,NULL,NULL,NULL,'В декого майже все є,
А в декого усе вже було
Світом керує У.Є.,
Світом рулить бабло

Дехто ночує, де п''є,
А в декого є єврожитло
Світом керує У.Є.,
Світом рулить бабло

В декого смаку нема,
Слухає усяке фуфло
На нього чекає тюрма
Бо він цупить бабло

Світом рулить бабло
Світом рулить бабло
Світом рулить бабло
Світом рулить бабло','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_438981'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_438981','Бабло','В декого майже все є,
А в декого усе вже було
Світом керує У.Є.,
Світом рулить бабло

Дехто ночує, де п''є,
А в декого є єврожитло
Світом керує У.Є.,
Світом рулить бабло

В декого смаку нема,
Слухає усяке фуфло
На нього чекає тюрма
Бо він цупить бабло

Світом рулить бабло
Світом рулить бабло
Світом рулить бабло
Світом рулить бабло');
DELETE FROM song_links WHERE song_id = 'pisniua_4360333';
DELETE FROM song_versions WHERE song_id = 'pisniua_4360333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4360333';
DELETE FROM songs WHERE id = 'pisniua_4360333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4360333','Стежечка до школи','Музика: Микола Ведмедеря Слова: Юлія Хандожинська','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Мама каже: Доню, ти вже підросла
І до школи, доню, вже тобі пора!
Барвінкова стежечка поведе до школи,
Не забудеш стежечку, донечко, ніколи!

Приспів:
Стежечка до школи, стежечка, стежина,
Рушничком барвистим, ніби скатертина,
Поведе в країну нових знань і мрій,
З радістю стежину ти пройти зумій!

В школі є багато друзів і книжок,
В школі дзвінок кличе вчасно на урок!
А із школи стежечка поведе до хати,
Барвінкову стежечку будеш пам''ятати!

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4360333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4360333','Стежечка до школи','Мама каже: Доню, ти вже підросла
І до школи, доню, вже тобі пора!
Барвінкова стежечка поведе до школи,
Не забудеш стежечку, донечко, ніколи!

Приспів:
Стежечка до школи, стежечка, стежина,
Рушничком барвистим, ніби скатертина,
Поведе в країну нових знань і мрій,
З радістю стежину ти пройти зумій!

В школі є багато друзів і книжок,
В школі дзвінок кличе вчасно на урок!
А із школи стежечка поведе до хати,
Барвінкову стежечку будеш пам''ятати!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4360333_l1','pisniua_4360333','YouTube','https://www.youtube.com/watch?v=l5rB4k7vN9g','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_437634';
DELETE FROM song_versions WHERE song_id = 'pisniua_437634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_437634';
DELETE FROM songs WHERE id = 'pisniua_437634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_437634','Гей на Чорному Морі да на Камені Біленькому','Українська народна пісня. Виконує: Микола Будник, Федір Жарко','uk','ukraine_before_1917',NULL,NULL,'Українські релігійні роздуми про Спасіння © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003','"Дівка-бранка Маруся-попівна Богуславка прибувала" — Маруся Богуславка: рідкісний жіночий образ Спасителя. "Вже мені... яко Роксолані колись Турецькії дикії норови зм''ягчати..." — Мова про покликання Українців у світі. Українські реліґійні роздуми про Воскресіння, Неволю і Спасіння. Пісні Великодні — Спасительні: світ не по Правді. Пісні-плачі Сокола-Прадіда. Ой Ми зіслані на признаванє. Нема в світі Правди не зіскати. Господа Милосердного прохали та благали. І усіх вас Невольників із Темниці випускати. Турецькії дикії норови зм''ягчати. А завтра ж буде Святий День Велик-День. Гей на Чорному Морі да на Камені Біленькому Гей що на Чорному Морі та на Тому Білому Камені Що на Чорному Морі на Камені Біленькому І самого ж мене у Чорнеє Море іспустіть. У Чистому Степу собі Живности доставати. Листки з приводу цієї Пісні: Українські реліґійні пісні-роздуми про Неволю та Спасіння. Плач Сокола. Традиції Батька. Коляда і Великдень: Різдво і Відродження Світа. Еротичні містерії, тиждень від Катерини 7.12 до Калети. Доля. Св. Микола 19.12 – Народний речник перед Богом і Прадід. Стежки до листків про Українські традиції. Рокове Коло. Висловлювання: Од Бога і Голос той і ті Слова. Ну що б здавалося слова... Слова та голос більш нічого. А серце б''ється ожива, Як їх почує!.. Знать — од Бога І Голос той і ті Слова Ідуть між люди! — Тарас Шевченко','Гей на Чорному Морі
Да на Камені Біленькому
Там стояла Темниця Кам''яная
А в Тій Темниці Сімсот Козаків Бідних Невольників пробувало
Та ні Божого Світу ні Сонечка
Праведного в очі ніколи на забачали

А до Тієї Темниці Дівка-бранка Маруся-попівна Богуславка прибувала
Да через Залізнії Ворота
До Козаків Бідних Невольників гукала

Гей Козаки Біднії Невольники
Угадайте який сьогодні день у нашій землі християнській

А Козаки
Біднії Невольники
Теє зачували
Та Дівку-бранку Марусю-попівну Богуславку по Голосу впізнавали
Та до неї словами промовляли

Гей Дівко-бранко
Марусе-попівно Богуславко
Та відки ми можемо знати
Який сьогодні день у нашій землі християнській
Як ми вже Тридцять Три роки
Як у цій Темниці пробуваємо
Та ні Божого Світу ні Сонечка праведного
(В) очі ніколи не забачаємо Гей

А Дівка-бранка Маруся-попівна Богуславка теє зачувала
Та до Козаків Бідних Невольників Словами промовляла

Гей Козаки
Біднії Невольники
У нашій землі християнській сьогодні Великодня Субота
А завтра ж буде Святий День Велик-День

Ох як тількиж Козаки
Біднії Невольники такую Новину зачували
Білим лицем до Сирої Землі припадали
Дівку-бранку Марусю-попівну Богуславку кляли-проклинали

Гей Дівко-бранко
Марусе-попівно Богуславко
Бодай ти щастя-долі не знала
Як ти нам о такій порі про Святий День про Велик-День нагадала

А Дівка-бранка Маруся-попівна Богуславка теє зачувала
Та до Козаків Бідних Невольників Словами промовляла

Гей Козаки
Брати Мої Сердешнії
Не лайте ж ви мене да не проклинайте
Бо я на теє вам про Святий День про Велик-День нагадала
Що як буде завтра наш пан Турецький до Мечеті од''їжджати
То буде мені
Дівці-бранці Марусі-попівні Богуславці Ключі од Темниці доручати

А я ж буду до вас прибувати
І усіх вас Невольників
Із Темниці випускати

Як став паша Турецький до Мечеті од''їжджати
То став Дівці-бранці Марусі-попівні Богуславці Ключі од Темниці доручати

А Дівка-бранка
Маруся-попівна Богуславка Добре дбала
До Козацької Темниці прибувала
Да Залізниї Ворота одмікала

І усіх Козаків Бідних Невольників із Темниці випускала
Та до них Словами промовляла
Сльозами ридала

Гей Козаки Брати Мої Сердешнії
Ой швидше ви
Через Чорнеє Море перепливайте
Да на нашу Святую Україноньку зіходжайте

Ой тільки прошу ж я вас усенижающе
Перше як будете
Мимо Святих наших храмів прохождати
Ой чи не були би такії ласкавії
Зі своєї голівоньки шапки іскидайте
На себе хреснеє знамення іскладайте

А ще
Брати мої сердешнії
Як десь у Полі будете забачати
Жіночок
Жниць наших сердешних
Чи Дівчаточок уквітчаних
То по християнському звичаєві
Добрий День вітайте
І Слава Ісусові Христу вітайте
Низенько уклоняйтесь

Оце буде вам
Од Дівки-бранки Марусі-попівни Богуславки
Слово Заповіту
Щоб християнськії звичаї
Дотримувати

А ще
Брати мої сердешнії
Бувшиї Тридцять Три роки у Неволеньці
Ще
Як будете
Мимо мого рідного Богуслава пробувати
Або
Яким Чином
Господні шляхи ваші проляжуть через Богуслав
До моїх рідненьких Отця-матусі завітайте

Поклон їм передайте
Та од мене їм знати давайте
Що нехай вони статків-маєтків не збувають
Великих скарбів не збірають
І мене з неволі Турецької не викупляють

Ой бо щож я тут...
Потуреччилася та побусурменилася...
Ради Розкоші Турецької
Ради Лакомства Нещасного...

Ой що я...
Буду тут...
У Турецьких землях перебувати...
А то і як би могла я...
Перед очі Вітця-неньки стати...
І з Сином
Своїм маленьким ге-е-е-е-ей...

Вже мені
Панове Козаки отут
Яко Роксолані колись
Турецькії дикії норови зм''ягчати

Хай Господь вам Милосердний помагає в ваших Дорогах до Воленьки
До Святої України дойти
Слави-честі відстояти

Дай же Боже
Миру царському / народові християнському
І вам / усім головам слухавшим
Од сьогодні всім на здравіє
Щасливії літа
До кінця віку','[''pisni.org.ua'', ''cat:dumy'', ''cat:kozacki'', ''cat:socialno-pobutovi'', ''cat:suspilno-politychni'', ''Думи'', ''Козацькі пісні'', ''Соціально-побутові пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_437634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_437634','Гей на Чорному Морі да на Камені Біленькому','Гей на Чорному Морі
Да на Камені Біленькому
Там стояла Темниця Кам''яная
А в Тій Темниці Сімсот Козаків Бідних Невольників пробувало
Та ні Божого Світу ні Сонечка
Праведного в очі ніколи на забачали

А до Тієї Темниці Дівка-бранка Маруся-попівна Богуславка прибувала
Да через Залізнії Ворота
До Козаків Бідних Невольників гукала

Гей Козаки Біднії Невольники
Угадайте який сьогодні день у нашій землі християнській

А Козаки
Біднії Невольники
Теє зачували
Та Дівку-бранку Марусю-попівну Богуславку по Голосу впізнавали
Та до неї словами промовляли

Гей Дівко-бранко
Марусе-попівно Богуславко
Та відки ми можемо знати
Який сьогодні день у нашій землі християнській
Як ми вже Тридцять Три роки
Як у цій Темниці пробуваємо
Та ні Божого Світу ні Сонечка праведного
(В) очі ніколи не забачаємо Гей

А Дівка-бранка Маруся-попівна Богуславка теє зачувала
Та до Козаків Бідних Невольників Словами промовляла

Гей Козаки
Біднії Невольники
У нашій землі християнській сьогодні Великодня Субота
А завтра ж буде Святий День Велик-День

Ох як тількиж Козаки
Біднії Невольники такую Новину зачували
Білим лицем до Сирої Землі припадали
Дівку-бранку Марусю-попівну Богуславку кляли-проклинали

Гей Дівко-бранко
Марусе-попівно Богуславко
Бодай ти щастя-долі не знала
Як ти нам о такій порі про Святий День про Велик-День нагадала

А Дівка-бранка Маруся-попівна Богуславка теє зачувала
Та до Козаків Бідних Невольників Словами промовляла

Гей Козаки
Брати Мої Сердешнії
Не лайте ж ви мене да не проклинайте
Бо я на теє вам про Святий День про Велик-День нагадала
Що як буде завтра наш пан Турецький до Мечеті од''їжджати
То буде мені
Дівці-бранці Марусі-попівні Богуславці Ключі од Темниці доручати

А я ж буду до вас прибувати
І усіх вас Невольників
Із Темниці випускати

Як став паша Турецький до Мечеті од''їжджати
То став Дівці-бранці Марусі-попівні Богуславці Ключі од Темниці доручати

А Дівка-бранка
Маруся-попівна Богуславка Добре дбала
До Козацької Темниці прибувала
Да Залізниї Ворота одмікала

І усіх Козаків Бідних Невольників із Темниці випускала
Та до них Словами промовляла
Сльозами ридала

Гей Козаки Брати Мої Сердешнії
Ой швидше ви
Через Чорнеє Море перепливайте
Да на нашу Святую Україноньку зіходжайте

Ой тільки прошу ж я вас усенижающе
Перше як будете
Мимо Святих наших храмів прохождати
Ой чи не були би такії ласкавії
Зі своєї голівоньки шапки іскидайте
На себе хреснеє знамення іскладайте

А ще
Брати мої сердешнії
Як десь у Полі будете забачати
Жіночок
Жниць наших сердешних
Чи Дівчаточок уквітчаних
То по християнському звичаєві
Добрий День вітайте
І Слава Ісусові Христу вітайте
Низенько уклоняйтесь

Оце буде вам
Од Дівки-бранки Марусі-попівни Богуславки
Слово Заповіту
Щоб християнськії звичаї
Дотримувати

А ще
Брати мої сердешнії
Бувшиї Тридцять Три роки у Неволеньці
Ще
Як будете
Мимо мого рідного Богуслава пробувати
Або
Яким Чином
Господні шляхи ваші проляжуть через Богуслав
До моїх рідненьких Отця-матусі завітайте

Поклон їм передайте
Та од мене їм знати давайте
Що нехай вони статків-маєтків не збувають
Великих скарбів не збірають
І мене з неволі Турецької не викупляють

Ой бо щож я тут...
Потуреччилася та побусурменилася...
Ради Розкоші Турецької
Ради Лакомства Нещасного...

Ой що я...
Буду тут...
У Турецьких землях перебувати...
А то і як би могла я...
Перед очі Вітця-неньки стати...
І з Сином
Своїм маленьким ге-е-е-е-ей...

Вже мені
Панове Козаки отут
Яко Роксолані колись
Турецькії дикії норови зм''ягчати

Хай Господь вам Милосердний помагає в ваших Дорогах до Воленьки
До Святої України дойти
Слави-честі відстояти

Дай же Боже
Миру царському / народові християнському
І вам / усім головам слухавшим
Од сьогодні всім на здравіє
Щасливії літа
До кінця віку');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437634_l1','pisniua_437634','YouTube','https://www.youtube.com/watch?v=ahOwb2JNh7c','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437634_l2','pisniua_437634','YouTube','https://www.youtube.com/watch?v=OJoYWwXrBV0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437634_l3','pisniua_437634','YouTube','https://www.youtube.com/watch?v=_21ATmmciLE','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_437634_l4','pisniua_437634','YouTube','https://www.youtube.com/watch?v=klFqWpafEnE','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_4391838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4391838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4391838';
DELETE FROM songs WHERE id = 'pisniua_4391838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4391838','Новорічна ніч','Музика: Норбі Форгач Слова: Марина Йовбак','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує гурт Made in Ukraine.','А сніг нам сипле щастя у долоні,
Твої долоні, мої долоні.
Зима вже знає, що давно в твоїм полоні,
Я у полоні, твоїм полоні!..
Я закриваю очі - і земля з-під ніг іде,
А білий сніг паде, хай знову сніг паде!
Ти загадай бажання, вже дванадцять настає,
У Новорічну ніч збувається усе!

Приспів:
Ти люби мене, люби!
В новорічну ніч веди,
Де яскраве конфеті!
Ти цілуй мене, цілуй,
Добру казку намалюй,
Хай горять ясні вогні!
Ти кружляй мене, кружляй,
В сяйві ночі забавляй,
Де святкова мішура!
Ти чаруй мене, чаруй,
Світ кохання подаруй,
Хай збуваються дива!

Ця новорічна ніч відкриє всі секрети,
Тобі секрети, мені секрети...
І на вікні мороз малює нам сюжети,
Палкі сюжети, п''янкі сюжети...
Ти закриваєш очі - і земля з-під ніг іде,
А білий сніг паде, хай знову сніг паде!
Ти загадай бажання, вже дванадцять настає,
У Новорічну ніч збувається усе!

Приспів.

Танцює срібна заметіль і пісня грає,
Душа радіє, душа співає...
У світі кращого за тебе не буває,
А серце знає, а серце знає...
Ми закриваєм очі - і земля з-під ніг іде,
А білий сніг паде, хай знову сніг паде!
Ти загадай бажання, вже дванадцять настає,
У Новорічну ніч збувається усе!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4391838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4391838','Новорічна ніч','А сніг нам сипле щастя у долоні,
Твої долоні, мої долоні.
Зима вже знає, що давно в твоїм полоні,
Я у полоні, твоїм полоні!..
Я закриваю очі - і земля з-під ніг іде,
А білий сніг паде, хай знову сніг паде!
Ти загадай бажання, вже дванадцять настає,
У Новорічну ніч збувається усе!

Приспів:
Ти люби мене, люби!
В новорічну ніч веди,
Де яскраве конфеті!
Ти цілуй мене, цілуй,
Добру казку намалюй,
Хай горять ясні вогні!
Ти кружляй мене, кружляй,
В сяйві ночі забавляй,
Де святкова мішура!
Ти чаруй мене, чаруй,
Світ кохання подаруй,
Хай збуваються дива!

Ця новорічна ніч відкриє всі секрети,
Тобі секрети, мені секрети...
І на вікні мороз малює нам сюжети,
Палкі сюжети, п''янкі сюжети...
Ти закриваєш очі - і земля з-під ніг іде,
А білий сніг паде, хай знову сніг паде!
Ти загадай бажання, вже дванадцять настає,
У Новорічну ніч збувається усе!

Приспів.

Танцює срібна заметіль і пісня грає,
Душа радіє, душа співає...
У світі кращого за тебе не буває,
А серце знає, а серце знає...
Ми закриваєм очі - і земля з-під ніг іде,
А білий сніг паде, хай знову сніг паде!
Ти загадай бажання, вже дванадцять настає,
У Новорічну ніч збувається усе!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4391838_l1','pisniua_4391838','YouTube','https://www.youtube.com/watch?v=GvmP7RN6ths','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4391838_l2','pisniua_4391838','YouTube','https://www.youtube.com/watch?v=k5cW7Cjt4i8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4391838_l3','pisniua_4391838','YouTube','https://www.youtube.com/watch?v=IfMe2t7yqHA','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_4392236';
DELETE FROM song_versions WHERE song_id = 'pisniua_4392236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4392236';
DELETE FROM songs WHERE id = 'pisniua_4392236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4392236','Новорічна пісня','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Пісню виконує гурт Отава.','Засяяло місто в святкових вогнях,
Радіють всі люди у селах, містах.
Радійте і ви, свято прийде у ваш дім!
Ми радості й щастя бажаєм усім!

Приспів:
Новий рік не за горами!       |
Щастя й сміх знов поміж нами! |
Новий рік - радіти час!       |
Новий рік іде вже до нас!     | (2)

Хай радісно світять святкові вогні,
Ялинка хай сяє яскраво усім,
Дарунки і посмішки сьогодні для вас!
Спішить Новий рік, несе щастя в цей час!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4392236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4392236','Новорічна пісня','Засяяло місто в святкових вогнях,
Радіють всі люди у селах, містах.
Радійте і ви, свято прийде у ваш дім!
Ми радості й щастя бажаєм усім!

Приспів:
Новий рік не за горами!       |
Щастя й сміх знов поміж нами! |
Новий рік - радіти час!       |
Новий рік іде вже до нас!     | (2)

Хай радісно світять святкові вогні,
Ялинка хай сяє яскраво усім,
Дарунки і посмішки сьогодні для вас!
Спішить Новий рік, несе щастя в цей час!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4392236_l1','pisniua_4392236','YouTube','https://www.youtube.com/watch?v=2GTpJ5jVbdk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4374632';
DELETE FROM song_versions WHERE song_id = 'pisniua_4374632';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4374632';
DELETE FROM songs WHERE id = 'pisniua_4374632';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4374632','Колись в містечку Вифлеєм',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Колись в містечку Вифлеєм -
Каже Біблія свята -
Марія Діва Сина там
Сповила в день Різдва!
Зоря та дивна, неземна
Зі Сходу вела мудреців,
Вони несли дари Христу,
Низький уклін Царю царів!

Приспів:
Слава в вишніх, мир землі!
Вам народився Цар!
Для вас Бог дав Спасителя!
Хор ангельський співав!

Хай радіють всі люди землі,
Хай дзвенять всі дзвони
В цей день Різдвяний!
І хай буде мир на землі,
І в серцях лине Богу хвала!
О, Господь, Ти дав нам Свого Сина! |
О, Господь, слава Тобі хай лине!   |
О, Господь, через Христа Ісуса     |
Шлях в небо нам відкрив!           | (3)

Приспів.

Слава в вишніх, мир землі!
Вам народився Цар!
Радій, співай, Ісуса слав,
Бо день Різдва настав!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4374632'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4374632','Колись в містечку Вифлеєм','Колись в містечку Вифлеєм -
Каже Біблія свята -
Марія Діва Сина там
Сповила в день Різдва!
Зоря та дивна, неземна
Зі Сходу вела мудреців,
Вони несли дари Христу,
Низький уклін Царю царів!

Приспів:
Слава в вишніх, мир землі!
Вам народився Цар!
Для вас Бог дав Спасителя!
Хор ангельський співав!

Хай радіють всі люди землі,
Хай дзвенять всі дзвони
В цей день Різдвяний!
І хай буде мир на землі,
І в серцях лине Богу хвала!
О, Господь, Ти дав нам Свого Сина! |
О, Господь, слава Тобі хай лине!   |
О, Господь, через Христа Ісуса     |
Шлях в небо нам відкрив!           | (3)

Приспів.

Слава в вишніх, мир землі!
Вам народився Цар!
Радій, співай, Ісуса слав,
Бо день Різдва настав!');
DELETE FROM song_links WHERE song_id = 'pisniua_4392931';
DELETE FROM song_versions WHERE song_id = 'pisniua_4392931';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4392931';
DELETE FROM songs WHERE id = 'pisniua_4392931';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4392931','Суперсила','Музика: Юлія Хащевська Слова: Юлія Хащевська','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Пісню виконує гурт FRANKO band.','Я - тобі стебло,
Ти - мені коріння,
Зопалу я розбиваю чоло,
Ти ж зберігаєш терпіння...
Ти - мені вогонь,
Я тобі, як злива,
Передчуваю від серця й до скронь:
Ми — це щось надважливе!..
Здатні на неможливе!..

Приспів:
Чи на землі, чи високо у небі,
О, хай там що, я завжди біля тебе!
Твоя рука у моїй — то моя суперсила!
Ми ті, кого хвиля накрила,
Ті, що тепер мають крила!..

Я - тобі любов,
Ти - мені довіру,
Море тепла від душевних розмов
Й трохи мурашок під шкіру...
Серце не знає міри!..

Приспів.

Я, ти — сім''я,
Ми — єдине ціле!
Я промовлятиму твоє ім''я,
Щоб воно душу гріло!..

Чи на землі, чи високо у небі,
О, хай там що, я завжди біля тебе!
Твоя рука у моїй — то моя суперсила!
Ми ті, кого хвиля накрила,
І мені більше нічого не треба,
Лиш би весь світ прихилити до тебе!..
Ти - моя радість, надія, моя суперсила!
Ми ті, кого хвиля накрила,
Разом навіки щасливі!..','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4392931'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4392931','Суперсила','Я - тобі стебло,
Ти - мені коріння,
Зопалу я розбиваю чоло,
Ти ж зберігаєш терпіння...
Ти - мені вогонь,
Я тобі, як злива,
Передчуваю від серця й до скронь:
Ми — це щось надважливе!..
Здатні на неможливе!..

Приспів:
Чи на землі, чи високо у небі,
О, хай там що, я завжди біля тебе!
Твоя рука у моїй — то моя суперсила!
Ми ті, кого хвиля накрила,
Ті, що тепер мають крила!..

Я - тобі любов,
Ти - мені довіру,
Море тепла від душевних розмов
Й трохи мурашок під шкіру...
Серце не знає міри!..

Приспів.

Я, ти — сім''я,
Ми — єдине ціле!
Я промовлятиму твоє ім''я,
Щоб воно душу гріло!..

Чи на землі, чи високо у небі,
О, хай там що, я завжди біля тебе!
Твоя рука у моїй — то моя суперсила!
Ми ті, кого хвиля накрила,
І мені більше нічого не треба,
Лиш би весь світ прихилити до тебе!..
Ти - моя радість, надія, моя суперсила!
Ми ті, кого хвиля накрила,
Разом навіки щасливі!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4392931_l1','pisniua_4392931','YouTube','https://www.youtube.com/watch?v=F2kXQWSi3GU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4393030';
DELETE FROM song_versions WHERE song_id = 'pisniua_4393030';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4393030';
DELETE FROM songs WHERE id = 'pisniua_4393030';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4393030','Ніч Різдва','Музика: Наталія Шемчишина Слова: Григорій Авраменко','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Тетяна Навроцька (Tanya Navrotski).','Пастухи в полях дрімали,
Наступила ніч Різдва,
Всі печалі розігнала
Урочиста новина.
Хори ангелів співали,
Звістку з неба люд прийняв,
І наповнив всі простори
Спів, що радісно звучав!
Наступила ніч Різдва!..

Мудреці спішать з терпінням,
Їх веде зоря кудись,
Нам Христос приніс спасіння,
Друже, нині веселись!
До печери поспішаймо,
Ладан серця принесем,
Вірою, що всіх спасає,
Дар безсмертя ми візьмем!
Наступила ніч Різдва!..

Не забудь ти, друже, цього -
Мир приніс Христос усім.
Тож спіши скоріш до Нього,
Милосердний, добрий Він!
Хай течуть благання сльози,
З неба Цар Царів зійшов,
Щоб блаженство мав ти в Бозі,
Щоби спокій ти знайшов!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4393030'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4393030','Ніч Різдва','Пастухи в полях дрімали,
Наступила ніч Різдва,
Всі печалі розігнала
Урочиста новина.
Хори ангелів співали,
Звістку з неба люд прийняв,
І наповнив всі простори
Спів, що радісно звучав!
Наступила ніч Різдва!..

Мудреці спішать з терпінням,
Їх веде зоря кудись,
Нам Христос приніс спасіння,
Друже, нині веселись!
До печери поспішаймо,
Ладан серця принесем,
Вірою, що всіх спасає,
Дар безсмертя ми візьмем!
Наступила ніч Різдва!..

Не забудь ти, друже, цього -
Мир приніс Христос усім.
Тож спіши скоріш до Нього,
Милосердний, добрий Він!
Хай течуть благання сльози,
З неба Цар Царів зійшов,
Щоб блаженство мав ти в Бозі,
Щоби спокій ти знайшов!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4393030_l1','pisniua_4393030','YouTube','https://www.youtube.com/watch?v=LPneyzi7ZGk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_439539';
DELETE FROM song_versions WHERE song_id = 'pisniua_439539';
DELETE FROM songs_fts WHERE song_id = 'pisniua_439539';
DELETE FROM songs WHERE id = 'pisniua_439539';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_439539','Сват до свахи залицявся','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://karaoke.kerma-nn.ru/Midi/midim_1002.htm',NULL,'Сват до свахи залицявся
і моргав і в боки брався
чарку пив сміявся в вуса
ох до тебе доберуся.

Приспів.
Ой гарну сваху маю
як зустріну обнімаю
п''ю горілочку з розмаху
за твоє здоров''я свахо. | (2)

Ой ти свашко не біда
що така ти молода
гарна сваха і проворна
не сумна ти не оманна

Приспів.

Сваха свасі як сестриця
просто любо подивиця
зустрілися обнімались
так то сильно породались.

Приспів.

Ой від нині любі свахи
не менайте мої хати
двері радісно відкрию
поцілую стіл накрию.

Приспів.

Очі в свахи як зірниці
гарна сваха молодиця
хоч і світ увесь зійшовби
а такої не знайшовби

Приспів.

Сват до свахи залицявся
і моргав і в боки брався
чарку пив сміявся в вуса
ох до тебе доберуся.

Приспів.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_439539'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_439539','Сват до свахи залицявся','Сват до свахи залицявся
і моргав і в боки брався
чарку пив сміявся в вуса
ох до тебе доберуся.

Приспів.
Ой гарну сваху маю
як зустріну обнімаю
п''ю горілочку з розмаху
за твоє здоров''я свахо. | (2)

Ой ти свашко не біда
що така ти молода
гарна сваха і проворна
не сумна ти не оманна

Приспів.

Сваха свасі як сестриця
просто любо подивиця
зустрілися обнімались
так то сильно породались.

Приспів.

Ой від нині любі свахи
не менайте мої хати
двері радісно відкрию
поцілую стіл накрию.

Приспів.

Очі в свахи як зірниці
гарна сваха молодиця
хоч і світ увесь зійшовби
а такої не знайшовби

Приспів.

Сват до свахи залицявся
і моргав і в боки брався
чарку пив сміявся в вуса
ох до тебе доберуся.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_439539_l1','pisniua_439539','YouTube','https://www.youtube.com/watch?v=eaCnFf4b7UU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_439230';
DELETE FROM song_versions WHERE song_id = 'pisniua_439230';
DELETE FROM songs_fts WHERE song_id = 'pisniua_439230';
DELETE FROM songs WHERE id = 'pisniua_439230';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_439230','Ой Синєє Море грає Ім’я Молодої потопає','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Весільні: Вихід з Дівочого Гурту. Астральні Заручини — Українське містичне Весілля: Різдво Світа / Купала. Еротика, жарти, забави, загадки: Катерини – Калета – Андрія... Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... Мед і Ябка... Були Світилки Яснії Зірки. Не гинь Миленький дам Ти Радоньку. Івана Купала тай в Воду упала. Ой Синєє Море грає Ім''я Молодої потопає. Ім''я Молодої потопає на Ім''я Молодого гукає. Ой загули Два Голуби за Стіною Ой Синєє Море грає Ім''я Молодої потопає Прощай прощай Подруженько бо ми вже йдемо Прощай прощай Галочко Сестра Наша Листки з приводу цієї Пісні: Українська Астрально-мітольоґічна реліґійна концепція. Жертви для Бога як реліґійний ідеал. Традиції самогуртування: Cвятий Збір. Статеві, вікові та станові гурти. Весілля — Свята Неділя: Вихід з Дівочої громади. Еротичні містерії, тиждень від Катерини 7.12 до Калети. Етнографічні подробиці про Дівочі та Парубочі громади. Про Свято Івана Купала Стежки до листків про Українські традиції.','Ой Синєє Море грає (Ім''я Молодої) потопає
(Ім''я Молодої) потопає на Батенька гукає
Батеньку Твоя воля рятуй же мене з Моря
Батько:
Не моя Донечко воля рятувати Тебе з Моря
Молодиці:
Ой Синєє Море грає (Ім''я Молодої) потопає
(Ім''я Молодої) потопає на Матінку гукає
Матінко Твоя воля рятуй мене з Моря
Мати:
Не моя Донечко воля рятувати Тебе з Моря
Молодиці:
Ой Синєє Море грає (Ім''я Молодої) потопає
(Ім''я Молодої) потопає на Братіка гукає
Братіку Твоя воля рятуй мене з Моря
Брат:
Не моя Сестрице воля рятувати Тебе з Моря
Молодиці:
Ой Синєє Море грає (Ім''я Молодої) потопає
(Ім''я Молодої) потопає на Сестрицю гукає
Сестрице Твоя воля рятувать мене з Моря
Сестра:
Не моя Сестрице воля рятувати Тебе з Моря
Молодиці:
Ой Синєє Море грає (Ім''я Молодої) потопає
(Ім''я Молодої) потопає на (Ім''я Молодого) гукає
(Ім''я Молодого) Твоя воля рятуй же мене з Моря
Моя (Ім''я Молодої) Воля вирятую Тебе з Моря','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_439230'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_439230','Ой Синєє Море грає Ім’я Молодої потопає','Ой Синєє Море грає (Ім''я Молодої) потопає
(Ім''я Молодої) потопає на Батенька гукає
Батеньку Твоя воля рятуй же мене з Моря
Батько:
Не моя Донечко воля рятувати Тебе з Моря
Молодиці:
Ой Синєє Море грає (Ім''я Молодої) потопає
(Ім''я Молодої) потопає на Матінку гукає
Матінко Твоя воля рятуй мене з Моря
Мати:
Не моя Донечко воля рятувати Тебе з Моря
Молодиці:
Ой Синєє Море грає (Ім''я Молодої) потопає
(Ім''я Молодої) потопає на Братіка гукає
Братіку Твоя воля рятуй мене з Моря
Брат:
Не моя Сестрице воля рятувати Тебе з Моря
Молодиці:
Ой Синєє Море грає (Ім''я Молодої) потопає
(Ім''я Молодої) потопає на Сестрицю гукає
Сестрице Твоя воля рятувать мене з Моря
Сестра:
Не моя Сестрице воля рятувати Тебе з Моря
Молодиці:
Ой Синєє Море грає (Ім''я Молодої) потопає
(Ім''я Молодої) потопає на (Ім''я Молодого) гукає
(Ім''я Молодого) Твоя воля рятуй же мене з Моря
Моя (Ім''я Молодої) Воля вирятую Тебе з Моря');
