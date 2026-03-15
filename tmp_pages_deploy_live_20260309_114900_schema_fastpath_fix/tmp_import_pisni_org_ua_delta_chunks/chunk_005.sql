DELETE FROM song_links WHERE song_id = 'pisniua_6386440';
DELETE FROM song_versions WHERE song_id = 'pisniua_6386440';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6386440';
DELETE FROM songs WHERE id = 'pisniua_6386440';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6386440','Місяць зіроньки збирає','Музика: Василь Лисенко Слова: Галина Лисенко','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Леся Лисенко.','Доки день був на землі,
Спали зіроньки малі,
А як ніченька прийшла -
Прокидатися пора!

Місяць зіроньки скликає,     |
За собою всіх збирає.        |
Прокидатися вже час,         |
Ніченька прийшла до нас...   | (2)

Ходить нічка по землі,
Світять зіроньки малі,
А як ранок завітав -
Місяць зіроньки зібрав!

Місяць зіроньки скликає,     |
За собою всіх збирає.        |
Спатоньки лягати час,        |
Новий день прийшов до нас... | (4)','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6386440'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6386440','Місяць зіроньки збирає','Доки день був на землі,
Спали зіроньки малі,
А як ніченька прийшла -
Прокидатися пора!

Місяць зіроньки скликає,     |
За собою всіх збирає.        |
Прокидатися вже час,         |
Ніченька прийшла до нас...   | (2)

Ходить нічка по землі,
Світять зіроньки малі,
А як ранок завітав -
Місяць зіроньки зібрав!

Місяць зіроньки скликає,     |
За собою всіх збирає.        |
Спатоньки лягати час,        |
Новий день прийшов до нас... | (4)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6386440_l1','pisniua_6386440','YouTube','https://www.youtube.com/watch?v=5gtadmzWhLs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_639644';
DELETE FROM song_versions WHERE song_id = 'pisniua_639644';
DELETE FROM songs_fts WHERE song_id = 'pisniua_639644';
DELETE FROM songs WHERE id = 'pisniua_639644';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_639644','Колискова','Виконує: Фліт','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: SOAD','Спи моє миле дитятко
Я тобі розповім мялятко
Проте, як лоскотно мені від дотику ніжних трав,
Проте, як печально мені, що рученьку ти зламав.
Хай не сниться тобі потвора,
Не лякає тебе до плачу,
Ось така моя колискова,
Це тому, що тебе я люблю.
Ти ліхтарику мій,
В небо глянь у пітьмі,
Сяє посмішка твоя.
Загорнись в свої сни,
Відвернись до стіни,
Хай не сліпить тебе зоря.
Спи моє миле дитятико,
Не грай в дурні зі мною малятико,
Пташки заснули в ставку,
Рибки заснули в садку,
Але ти оленятко не спиш,
І до болю в вухах ти кричиш.
Ти ліхтарику мій,
В небо глянь у пітьмі,
Сяє посмішка твоя.
Загорнись в свої сни,
Відвернись до стіни,
Хай не сліпить тебе зоря.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_639644'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_639644','Колискова','Спи моє миле дитятко
Я тобі розповім мялятко
Проте, як лоскотно мені від дотику ніжних трав,
Проте, як печально мені, що рученьку ти зламав.
Хай не сниться тобі потвора,
Не лякає тебе до плачу,
Ось така моя колискова,
Це тому, що тебе я люблю.
Ти ліхтарику мій,
В небо глянь у пітьмі,
Сяє посмішка твоя.
Загорнись в свої сни,
Відвернись до стіни,
Хай не сліпить тебе зоря.
Спи моє миле дитятико,
Не грай в дурні зі мною малятико,
Пташки заснули в ставку,
Рибки заснули в садку,
Але ти оленятко не спиш,
І до болю в вухах ти кричиш.
Ти ліхтарику мій,
В небо глянь у пітьмі,
Сяє посмішка твоя.
Загорнись в свої сни,
Відвернись до стіни,
Хай не сліпить тебе зоря.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_639644_l1','pisniua_639644','YouTube','https://www.youtube.com/watch?v=OgNEtPd1_aE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_639644_l2','pisniua_639644','YouTube','https://www.youtube.com/watch?v=e86V86F0Ig4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_639644_l3','pisniua_639644','YouTube','https://www.youtube.com/watch?v=kkzq54JdwD8','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_639644_l4','pisniua_639644','http://www.gtp-tabs.ru/tabs/4298-flit.html','http://www.gtp-tabs.ru/tabs/4298-flit.html','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_6403959';
DELETE FROM song_versions WHERE song_id = 'pisniua_6403959';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6403959';
DELETE FROM songs WHERE id = 'pisniua_6403959';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6403959','Наша дієта','Музика: Наталія Фаліон Слова: Наталія Фаліон. Виконує: Лісапетний батальйон','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Жінки бувають різні - блондинки і руді,
Розумні і красиві, старі і молоді.
Та в усіх на світі є одна біда -
Кожна жінка хоче зробитися худа!

Приспів:
А моя дієта - ковбаса, котлети,
Паштети, вінегрети, плювать на целюліт!
Ми любим булки, плюшки, з часником пампушки,
І нам не заважають сідниці і живіт!

Весь світ шукає спосіб позбутися ваги,
Платять шалені гроші, залазять у борги,
Всі хочуть похудати на пару кілограм,
Щоб мужики любили, навіть без "сто грам"!

Приспів.

Знає вся Європа, Бердичів і Марсель,
Що худа корова не схожа на газель.
Так що ви, дівчата, журитесь дарма,
Бо тільки на гадюках сала та й нема!

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6403959'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6403959','Наша дієта','Жінки бувають різні - блондинки і руді,
Розумні і красиві, старі і молоді.
Та в усіх на світі є одна біда -
Кожна жінка хоче зробитися худа!

Приспів:
А моя дієта - ковбаса, котлети,
Паштети, вінегрети, плювать на целюліт!
Ми любим булки, плюшки, з часником пампушки,
І нам не заважають сідниці і живіт!

Весь світ шукає спосіб позбутися ваги,
Платять шалені гроші, залазять у борги,
Всі хочуть похудати на пару кілограм,
Щоб мужики любили, навіть без "сто грам"!

Приспів.

Знає вся Європа, Бердичів і Марсель,
Що худа корова не схожа на газель.
Так що ви, дівчата, журитесь дарма,
Бо тільки на гадюках сала та й нема!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6403959_l1','pisniua_6403959','YouTube','https://www.youtube.com/watch?v=BtnopZ1I9WU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_640399';
DELETE FROM song_versions WHERE song_id = 'pisniua_640399';
DELETE FROM songs_fts WHERE song_id = 'pisniua_640399';
DELETE FROM songs WHERE id = 'pisniua_640399';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_640399','Чорна Гора','Музика: Василь Гонтарський Слова: Василь Гонтарський. Виконує: Вася Club','uk','ukraine_1991',NULL,NULL,'Аудіо-CD "Вася Club. Хіпан"','Текст і акорди записано на слух з аудіо. Тональність оригінальна. Підбір акордів: bohdanko (pisni.org.ua)','Чорне море, Чорне море, гей...
Гарне море, гарне море, гей, гей...
Чорне море - гарне море, а все єдно Чорна Гора,
Am       E           Am   E   Am (bass: E F# G# A)
Неня моя Чорна Гора, гей, гей-гей.

Ніхто не зна, ніхто не зна, гей, гей,
Де сховався месяц, не зна, гей-гей.
Гей, стріляй моя рушниця, щоб почула моя киця,
Неня моя Чорна Гора, гей, гей-гей.
Гей, стріляй моя рушниця, щоб почула молодиця,
Неня моя Чорна Гора, гей, гей-гей.

Чекай куме, чекай куме, гей, гей,
Курнєм куме, курнєм куме, гей, гей,
Тіто-мріто маргаріто, ми із кумом два бандита, |
Знає неня Чорна Гора, гей, гей-гей.            |(2)

Чуєш Іване мій синє, гей, гей,
З полонини пісня лине, гей, гей.
Я ніколи і нікому не віддам рідного дому,
Знає неня Чорна Гора, гей, гей-гей.
Я нікому і ніколи не віддам ці гори, доли,
Знає неня Чорна Гора...','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:zhartivlyvi'', ''Пісні про красу природи'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_640399'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_640399','Чорна Гора','Чорне море, Чорне море, гей...
Гарне море, гарне море, гей, гей...
Чорне море - гарне море, а все єдно Чорна Гора,
Am       E           Am   E   Am (bass: E F# G# A)
Неня моя Чорна Гора, гей, гей-гей.

Ніхто не зна, ніхто не зна, гей, гей,
Де сховався месяц, не зна, гей-гей.
Гей, стріляй моя рушниця, щоб почула моя киця,
Неня моя Чорна Гора, гей, гей-гей.
Гей, стріляй моя рушниця, щоб почула молодиця,
Неня моя Чорна Гора, гей, гей-гей.

Чекай куме, чекай куме, гей, гей,
Курнєм куме, курнєм куме, гей, гей,
Тіто-мріто маргаріто, ми із кумом два бандита, |
Знає неня Чорна Гора, гей, гей-гей.            |(2)

Чуєш Іване мій синє, гей, гей,
З полонини пісня лине, гей, гей.
Я ніколи і нікому не віддам рідного дому,
Знає неня Чорна Гора, гей, гей-гей.
Я нікому і ніколи не віддам ці гори, доли,
Знає неня Чорна Гора...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_640399_l1','pisniua_640399','YouTube','https://www.youtube.com/watch?v=0mGRnjj_iWo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_640399_l2','pisniua_640399','YouTube','https://www.youtube.com/watch?v=blO2FGN3vRA','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_640399_l3','pisniua_640399','YouTube','https://www.youtube.com/watch?v=Q2Wj0Ub4GTA','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_6407297';
DELETE FROM song_versions WHERE song_id = 'pisniua_6407297';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6407297';
DELETE FROM songs WHERE id = 'pisniua_6407297';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6407297','У неділю рано','(Ой, слава, ой, слава!). Музика: Зеник зі Стрия Слова: народні','uk','ukraine_1991',NULL,NULL,'інтернет','Один з варіантів пісні. Підбір акордів з ютуба з виступу Зеника зі Стрия. Пісню виконує Зеник зі Стрия (альбом Повстанські пісні).','У неділю рано сонце ще не сходить,
Українське військо із лісу виходить.
У неділю рано сонце сяйвом грає -
Українське військо окопи копає.
Приспів:
Ой, слава, ой, слава! Україні слава!
Слава Україні! Всім героям слава!
Ой, слава, ой, слава! Україні слава!
Хай живе Бандера і його держава!
Чи ви хлопці спали, чи ви в карти грали,
Що ви Україну москалям віддали?!
Ані ми не спали, ані в карти грали,
А ми молодії командири мали.
Приспів.
Тернопіль здобули, а Львів обложили,
А під Перемишлем - голови зложили.
Ой, там під горою, біля міста Броди
Полягло там цвіту нашого народу.
Приспів.
Хоч давно то було - сотня літ минає,
А москаль і нині спокою немає.
Десь там на Донбасі йде орда зі сходу,
Щоб забрати волю в нашого народу...
Не забрати волю в нашого народу!
Приспів.
Ворогів країни, били ми цих катів!
Власних яничарів просим до гілляки!
Приспів.','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6407297'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6407297','У неділю рано','У неділю рано сонце ще не сходить,
Українське військо із лісу виходить.
У неділю рано сонце сяйвом грає -
Українське військо окопи копає.
Приспів:
Ой, слава, ой, слава! Україні слава!
Слава Україні! Всім героям слава!
Ой, слава, ой, слава! Україні слава!
Хай живе Бандера і його держава!
Чи ви хлопці спали, чи ви в карти грали,
Що ви Україну москалям віддали?!
Ані ми не спали, ані в карти грали,
А ми молодії командири мали.
Приспів.
Тернопіль здобули, а Львів обложили,
А під Перемишлем - голови зложили.
Ой, там під горою, біля міста Броди
Полягло там цвіту нашого народу.
Приспів.
Хоч давно то було - сотня літ минає,
А москаль і нині спокою немає.
Десь там на Донбасі йде орда зі сходу,
Щоб забрати волю в нашого народу...
Не забрати волю в нашого народу!
Приспів.
Ворогів країни, били ми цих катів!
Власних яничарів просим до гілляки!
Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6429454';
DELETE FROM song_versions WHERE song_id = 'pisniua_6429454';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6429454';
DELETE FROM songs WHERE id = 'pisniua_6429454';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6429454','Колискова для котика','Музика: Ігор Білик Слова: Лариса Бегун','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Темна нічка землю вкрила,
Ясні зорі запалила...
Чорний котик мій муркоче,
Він напевно спати хоче...

Приспів:
Баю-бай, бай-бай,
Оченятка закривай...
Баю-бай, бай-бай,
Спи, мій котик, засинай...

Завтра сонечко проснеться,
Знову день новий почнеться!
А сьогодні він минає,
Все довкола затихає...

Приспів.

Дітки спати теж лягають,
Їх вже ліжечка чекають...
Чорний котик мій муркоче,
Спатки він-бо дуже хоче...

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6429454'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6429454','Колискова для котика','Темна нічка землю вкрила,
Ясні зорі запалила...
Чорний котик мій муркоче,
Він напевно спати хоче...

Приспів:
Баю-бай, бай-бай,
Оченятка закривай...
Баю-бай, бай-бай,
Спи, мій котик, засинай...

Завтра сонечко проснеться,
Знову день новий почнеться!
А сьогодні він минає,
Все довкола затихає...

Приспів.

Дітки спати теж лягають,
Їх вже ліжечка чекають...
Чорний котик мій муркоче,
Спатки він-бо дуже хоче...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6429454_l1','pisniua_6429454','YouTube','https://www.youtube.com/watch?v=ACrnSnZtgP0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6447178';
DELETE FROM song_versions WHERE song_id = 'pisniua_6447178';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6447178';
DELETE FROM songs WHERE id = 'pisniua_6447178';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6447178','Колискова мелодія України','Музика: Мирослав Скорик Слова: Оля Полякова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Прокидайся, донечко,
Ясне моє сонечко,
Чуєш? Грім буркоче.
З неба не гроза, громовиця,
Люта і страшна розбійниця
Впала серед ночі...

Моя золота донечка,
Дай мені свої долонечки,
Тихо заспіваю -
І сновида зла,
Страшна примара
У пітьмі тебе не налякає
І не відшукає...

А маленькі діточки -
Кольорові квіточки
І пливе в цікавих оченятах
Добрий білий світ.
Колискова берегиня
Намалює сни - сни спокійні!..
Ти цвіти, цвіти країна,
Ненька - Україна!

Добрий ранок сонячний,
Буслики та горлиці
Заклекочуть знову!..
Вишня вітами гойдає,
Мирний ранок нас вітає
Край рідного дому!..

Воїни вертаються
У боях прославлені,
І наш тато з нами!
І злоби ту злу страшну примару
Моя Україна подолала!
Всім Героям - Слава!
Засинай, моя донечко...','[''pisni.org.ua'', ''cat:devoted'', ''cat:kolyskovi'', ''cat:patriotic'', ''cat:pro-ditey'', ''cat:viyskovi'', ''Пісні присвячені окремим особам'', ''Колискові'', ''Патріотичні пісні'', ''Пісні про любов до дітей'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6447178'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6447178','Колискова мелодія України','Прокидайся, донечко,
Ясне моє сонечко,
Чуєш? Грім буркоче.
З неба не гроза, громовиця,
Люта і страшна розбійниця
Впала серед ночі...

Моя золота донечка,
Дай мені свої долонечки,
Тихо заспіваю -
І сновида зла,
Страшна примара
У пітьмі тебе не налякає
І не відшукає...

А маленькі діточки -
Кольорові квіточки
І пливе в цікавих оченятах
Добрий білий світ.
Колискова берегиня
Намалює сни - сни спокійні!..
Ти цвіти, цвіти країна,
Ненька - Україна!

Добрий ранок сонячний,
Буслики та горлиці
Заклекочуть знову!..
Вишня вітами гойдає,
Мирний ранок нас вітає
Край рідного дому!..

Воїни вертаються
У боях прославлені,
І наш тато з нами!
І злоби ту злу страшну примару
Моя Україна подолала!
Всім Героям - Слава!
Засинай, моя донечко...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6447178_l1','pisniua_6447178','YouTube','https://www.youtube.com/watch?v=_EfrCnlIhZ8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6450644';
DELETE FROM song_versions WHERE song_id = 'pisniua_6450644';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6450644';
DELETE FROM songs WHERE id = 'pisniua_6450644';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6450644','В саду осіннім айстри білі','Слова: народні','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В саду осіннім айстри білі
Схилили голови в журбі...
В моєму серці гаснуть сили:   |
Чужою стала я тобі...        | (2)
Мені сімнадцятий минало
Весною, як сади цвіли,
Я про кохання ще й не знала,  |
Ми тихо з сестрами жили...    | (2)
Як я садила айстри білі,
То ти поміг мені полить...
З тих пір я мрію про кохання, |
З тих пір душа моя болить...  | (2)
Як ти проходив мимо двору,
Я задивилась на твій стан,
Стояла довго під вербою,      |
Поки вечірній спав туман...   | (2)
Коли умру я від кохання,
То поховайте серед трав,
А ти, зірвавши айстру білу,   |
Згадаєш, хто тебе кохав...    | (2)','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6450644'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6450644','В саду осіннім айстри білі','В саду осіннім айстри білі
Схилили голови в журбі...
В моєму серці гаснуть сили:   |
Чужою стала я тобі...        | (2)
Мені сімнадцятий минало
Весною, як сади цвіли,
Я про кохання ще й не знала,  |
Ми тихо з сестрами жили...    | (2)
Як я садила айстри білі,
То ти поміг мені полить...
З тих пір я мрію про кохання, |
З тих пір душа моя болить...  | (2)
Як ти проходив мимо двору,
Я задивилась на твій стан,
Стояла довго під вербою,      |
Поки вечірній спав туман...   | (2)
Коли умру я від кохання,
То поховайте серед трав,
А ти, зірвавши айстру білу,   |
Згадаєш, хто тебе кохав...    | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_64695';
DELETE FROM song_versions WHERE song_id = 'pisniua_64695';
DELETE FROM songs_fts WHERE song_id = 'pisniua_64695';
DELETE FROM songs WHERE id = 'pisniua_64695';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_64695','Зродились ми великої години','Музика: народна Слова: Олесь Бабій. Виконує: Вогневир, Сергій Василюк, Рутенія','uk','ukraine_1991',NULL,NULL,'1. Літопис УПА. 1996-1997.– Т.25: Пісні УПА','Це - Гимн Організації Українських Націоналістів (ОУН). За іншими джерелами: Марш Організації Українських Націоналістів (ОУН). Виконується у темпі маршу. Були поширені й інші варіанти тексту із незначними відмінностями (див. джерело 1). Два останні рядки кожної строфи спваються двічі. Em H7 Em H7 Am Em Am H7 C G Am Em Am Em Am Em H7 Em Підбір акордів: DNko_кізюк','Зродились ми великої години,
З пожеж війни і з полум''я вогнів -
Плекав нас біль по втраті України,
Кормив нас гніт і гнів на ворогів.
І ось ідемо в бою життєвому,
Тверді, міцні, незламні мов ґраніт -
Бо плач не дав свободи ще нікому,
А хто борець - той здобуває світ.
Не хочемо ні слави ні заплати -
Заплатою нам розкіш боротьби:
Солодше нам у бою умирати
Як жити в путах, мов німі раби.
Доволі нам руїни і незгоди -
Не сміє брат на брата йти у бій.
Під синьо-жовтим прапором свободи
З''єднаєм весь великий нарід свій.
Велику правду для усіх єдину
Наш гордий клич народові несе:
"Батьківщині будь вірний до загину -
Нам Україна вище понад все!"
Веде нас в бій борців упавших слава -
Для нас закон найвищий та наказ:
Соборна Українськая Держава -
Вільна, міцна, від Тиси по Кавказ.','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:patriotic'', ''Гимни та марші'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_64695'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_64695','Зродились ми великої години','Зродились ми великої години,
З пожеж війни і з полум''я вогнів -
Плекав нас біль по втраті України,
Кормив нас гніт і гнів на ворогів.
І ось ідемо в бою життєвому,
Тверді, міцні, незламні мов ґраніт -
Бо плач не дав свободи ще нікому,
А хто борець - той здобуває світ.
Не хочемо ні слави ні заплати -
Заплатою нам розкіш боротьби:
Солодше нам у бою умирати
Як жити в путах, мов німі раби.
Доволі нам руїни і незгоди -
Не сміє брат на брата йти у бій.
Під синьо-жовтим прапором свободи
З''єднаєм весь великий нарід свій.
Велику правду для усіх єдину
Наш гордий клич народові несе:
"Батьківщині будь вірний до загину -
Нам Україна вище понад все!"
Веде нас в бій борців упавших слава -
Для нас закон найвищий та наказ:
Соборна Українськая Держава -
Вільна, міцна, від Тиси по Кавказ.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64695_l1','pisniua_64695','YouTube','https://www.youtube.com/watch?v=tu1WlvS5SOQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64695_l2','pisniua_64695','YouTube','https://www.youtube.com/watch?v=S6DJynlQ5w8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64695_l3','pisniua_64695','YouTube','https://www.youtube.com/watch?v=VtxcMBHCQWY','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64695_l4','pisniua_64695','YouTube','https://www.youtube.com/watch?v=6kVLoafd46w','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64695_l5','pisniua_64695','YouTube','https://www.youtube.com/watch?v=RgdANpB9PnY','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64695_l6','pisniua_64695','YouTube','https://www.youtube.com/watch?v=s_vEhKlSFoo','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64695_l7','pisniua_64695','YouTube','https://www.youtube.com/watch?v=pXZIzgbydtg','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64695_l8','pisniua_64695','YouTube','https://www.youtube.com/watch?v=zBHV_AkxJQU','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64695_l9','pisniua_64695','YouTube','https://www.youtube.com/watch?v=_Ho0MYu95ms','video',NULL,9);
DELETE FROM song_links WHERE song_id = 'pisniua_6469972';
DELETE FROM song_versions WHERE song_id = 'pisniua_6469972';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6469972';
DELETE FROM songs WHERE id = 'pisniua_6469972';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6469972','Чоловік, Герасим',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Чоловік, Герасим, а я - твоя кудла,
Через твої конопельки я трошечки схудла.    | (2)

Чоловік, Герасим, ой, дай мені раду,
Через твої конопельки навіки пропаду.       | (2)

Чоловік, Герасим, ой, дав мені раду ‒
Розорвана сорочина спереду і ззаду.         | (2)

За що б''єш, за що б''єш, за якиї вчинки?
Чи я тобі не напряла за год три починки?    | (2)

Один пряла до Роздва, другий ‒ до Миколи,
Третій лежить розпочатий до Святой Покрови. | (2)

Да й напряла полотна од порога до вікна,
Да й послала на воді - нехай білять лебеді. | (2)

Да й послала на воді - нехай білять лебеді.
Краща в мене сорочина, чим у тої попаді.    | (2)

Як пойду я на лужок полотно стірати,
Сама сяду на кладочку, буду розміряти.      | (2)

На все є, на все є, на підточку не стає,
Як пойду я до куми, нехай кума оддає.       | (2)

Ти, кумушка-голубушка, позич мені полотна,
Позич мені полотна, бо й на підточку нема.  | (2)

Кума до куми ходила позичать мотовила.
На базар не ходила, матовила не купила.     | (2)

Гоп, кума, не журись, -
Шо напряла, шо наткала, у те саме уберись.  | (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6469972'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6469972','Чоловік, Герасим','Чоловік, Герасим, а я - твоя кудла,
Через твої конопельки я трошечки схудла.    | (2)

Чоловік, Герасим, ой, дай мені раду,
Через твої конопельки навіки пропаду.       | (2)

Чоловік, Герасим, ой, дав мені раду ‒
Розорвана сорочина спереду і ззаду.         | (2)

За що б''єш, за що б''єш, за якиї вчинки?
Чи я тобі не напряла за год три починки?    | (2)

Один пряла до Роздва, другий ‒ до Миколи,
Третій лежить розпочатий до Святой Покрови. | (2)

Да й напряла полотна од порога до вікна,
Да й послала на воді - нехай білять лебеді. | (2)

Да й послала на воді - нехай білять лебеді.
Краща в мене сорочина, чим у тої попаді.    | (2)

Як пойду я на лужок полотно стірати,
Сама сяду на кладочку, буду розміряти.      | (2)

На все є, на все є, на підточку не стає,
Як пойду я до куми, нехай кума оддає.       | (2)

Ти, кумушка-голубушка, позич мені полотна,
Позич мені полотна, бо й на підточку нема.  | (2)

Кума до куми ходила позичать мотовила.
На базар не ходила, матовила не купила.     | (2)

Гоп, кума, не журись, -
Шо напряла, шо наткала, у те саме уберись.  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6469972_l1','pisniua_6469972','YouTube','https://www.youtube.com/watch?v=KN4vNC4bkHQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6469972_l2','pisniua_6469972','YouTube','https://www.youtube.com/watch?v=JQHzc8V7DyQ','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6477';
DELETE FROM song_versions WHERE song_id = 'pisniua_6477';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6477';
DELETE FROM songs WHERE id = 'pisniua_6477';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6477','Перший сніг','Музика: Ігор Білозір Слова: Богдан Стельмах. Виконує: Оксана Білозір, Ігор Білозір, Мар''ян Шуневич, Руслана','uk','ukraine_1991',NULL,NULL,'Текст і акорди (частково): 1. Пісневир: Молодіжний співаник.— Львів, 2001.— 224 с.; 2. Аудіо: "Пісні Ігора Білозіра"','Аранжування: І. Білозір, З. Левковський. Запис: Студія І. Білозіра * Тут текст подано за аудіо-джерелом [2]. У текстовому джерелі [1] тут є інакше: "Ні вогнів, ні зір, Не голубить зір Жодна квітка, наче й не було. Раптом серед віт В тиху ніч розквіт Перший сніг, мов лебедя крило." ** Тут подано за нотним джерелом [1]. В аудіо [2] тут звучить ближче до "На-на-на..." В оригіналі (аудіо) пісня, ймовірно, виконується в тональності Hm (тональність в аудіо спотворена, що не дозволяє точно визначити оригінальну тональність). Акорд Am всюди можна замінити на Am6. Акорд H всюди можна замінити на H7. Деякі акорди: Am6 [x 0 2 2 1 2] Em* [3 2 2 0 0 0] Підбір акордів: bohdanko (pisni.org.ua)','Вступ (мелодія Приспіву 2):
1.
Ні снігів, ні зір,  *
Не голубить взір
Жодна квітка, мовби й не було.
Раптом серед віт
В тиху ніч розквіт
Перший сніг, як лебедя крило.
Приспів 1:
Це не яблуні цвіт, не   май,
Це не пізній бузок, це - знай -
В нашу зиму приблудив
Білий лебідь моло-  дий.
Em        Em*   Am
Ла-ла-ла, ла-ла-ла, ла-  ла,  **
Ла-ла-ла, ла-ла-ла, ла-  ла.
В нашу зиму приблудив
Білий лебідь моло-  дий.
2.
Скільки довгих днів
Він без нас білів
В небі синім з-поза давніх літ!..
І нарешті ось
Стріти довелось -
Знову нам біліє поміж віт.
Приспів 1.
Програш (на тему мелодії куплету).
Приспів 2:
Це не яблуні цвіт, не май,
Це не пізній бузок, це - знай -
В нашу зиму приблудив
Білий лебідь молодий.
Інша тональність:
Вступ (мелодія Приспіву 2):
1.
Ні снігів, ні зір,  *
Не голубить взір
Жодна квітка, мовби й не було.
Раптом серед віт
В тиху ніч розквіт
Перший сніг, як лебедя крило.
Приспів 1:
Це не яблуні цвіт, не   май,
Це не пізній бузок, це - знай -
В нашу зиму приблудив
Білий лебідь моло-  дий.
Am        Am*   Dm
Ла-ла-ла, ла-ла-ла, ла-  ла,  **
Ла-ла-ла, ла-ла-ла, ла-  ла.
В нашу зиму приблудив
Білий лебідь моло-  дий.
2.
Скільки довгих днів
Він без нас білів
В небі синім з-поза давніх літ!..
І нарешті ось
Стріти довелось -
Знову нам біліє поміж віт.
Приспів 1.
Програш (на тему мелодії куплету).
Приспів 2:
Це не яблуні цвіт, не май,
Це не пізній бузок, це - знай -
В нашу зиму приблудив
Білий лебідь молодий.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6477'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6477','Перший сніг','Вступ (мелодія Приспіву 2):
1.
Ні снігів, ні зір,  *
Не голубить взір
Жодна квітка, мовби й не було.
Раптом серед віт
В тиху ніч розквіт
Перший сніг, як лебедя крило.
Приспів 1:
Це не яблуні цвіт, не   май,
Це не пізній бузок, це - знай -
В нашу зиму приблудив
Білий лебідь моло-  дий.
Em        Em*   Am
Ла-ла-ла, ла-ла-ла, ла-  ла,  **
Ла-ла-ла, ла-ла-ла, ла-  ла.
В нашу зиму приблудив
Білий лебідь моло-  дий.
2.
Скільки довгих днів
Він без нас білів
В небі синім з-поза давніх літ!..
І нарешті ось
Стріти довелось -
Знову нам біліє поміж віт.
Приспів 1.
Програш (на тему мелодії куплету).
Приспів 2:
Це не яблуні цвіт, не май,
Це не пізній бузок, це - знай -
В нашу зиму приблудив
Білий лебідь молодий.
Інша тональність:
Вступ (мелодія Приспіву 2):
1.
Ні снігів, ні зір,  *
Не голубить взір
Жодна квітка, мовби й не було.
Раптом серед віт
В тиху ніч розквіт
Перший сніг, як лебедя крило.
Приспів 1:
Це не яблуні цвіт, не   май,
Це не пізній бузок, це - знай -
В нашу зиму приблудив
Білий лебідь моло-  дий.
Am        Am*   Dm
Ла-ла-ла, ла-ла-ла, ла-  ла,  **
Ла-ла-ла, ла-ла-ла, ла-  ла.
В нашу зиму приблудив
Білий лебідь моло-  дий.
2.
Скільки довгих днів
Він без нас білів
В небі синім з-поза давніх літ!..
І нарешті ось
Стріти довелось -
Знову нам біліє поміж віт.
Приспів 1.
Програш (на тему мелодії куплету).
Приспів 2:
Це не яблуні цвіт, не май,
Це не пізній бузок, це - знай -
В нашу зиму приблудив
Білий лебідь молодий.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6477_l1','pisniua_6477','YouTube','https://www.youtube.com/watch?v=gEh7qrAyOME','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6477_l2','pisniua_6477','YouTube','https://www.youtube.com/watch?v=vm3qedUk-KM','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6477_l3','pisniua_6477','YouTube','https://www.youtube.com/watch?v=g-FNcRDpGoI','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6477_l4','pisniua_6477','YouTube','https://www.youtube.com/watch?v=B4Czqf-9x5Q','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_6475673';
DELETE FROM song_versions WHERE song_id = 'pisniua_6475673';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6475673';
DELETE FROM songs WHERE id = 'pisniua_6475673';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6475673','Буревіями','Слова: Олег Шумей, Джеральд Естрада, Злата Огнєвіч, Ребека Мікхаелі','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Між нами підняті не ті мости,
Якщо зламаєш їх, чи вийдуть нові?
І всупереч собі згадаєш ти
Слова, які колись були законні...
І я танцюю під віскі, не під пісні,
Свої зламані ноти залишила мені!..
Я бачу твої кроки, тебе нема...
Тиша знає, хто ти, лише не я!
Ти знов сидиш на тому ж місці,
Тебе несуть пусті слова...
Нам все, що ми ділити вірші,
Картина домальована...

Приспів:
Нам буревіями у спальні
Ділити, хто піде, хто ні...
Тобі гуляти в літні пори,
Мені шукати зимні дні...
Нам буревіями у спальні
Чекати, хто знайде своє...
Мені потрібен час, щоб знати,
Чи вірити тобі, чи ні?

Між нами зведені не ті мости,
Що збудували разом - зруйнували...
Тепер не знаєм, куди далі йти,
І не помітили, коли чужими стали...
Пробач, я зовсім не я, але ж ти хотів,
Щоби мої троянди геть не мали шипів...
Давай у темряві танго, як в останній раз,
Забери, що хочеш, спогад залиши про нас!..

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:nostalgia'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6475673'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6475673','Буревіями','Між нами підняті не ті мости,
Якщо зламаєш їх, чи вийдуть нові?
І всупереч собі згадаєш ти
Слова, які колись були законні...
І я танцюю під віскі, не під пісні,
Свої зламані ноти залишила мені!..
Я бачу твої кроки, тебе нема...
Тиша знає, хто ти, лише не я!
Ти знов сидиш на тому ж місці,
Тебе несуть пусті слова...
Нам все, що ми ділити вірші,
Картина домальована...

Приспів:
Нам буревіями у спальні
Ділити, хто піде, хто ні...
Тобі гуляти в літні пори,
Мені шукати зимні дні...
Нам буревіями у спальні
Чекати, хто знайде своє...
Мені потрібен час, щоб знати,
Чи вірити тобі, чи ні?

Між нами зведені не ті мости,
Що збудували разом - зруйнували...
Тепер не знаєм, куди далі йти,
І не помітили, коли чужими стали...
Пробач, я зовсім не я, але ж ти хотів,
Щоби мої троянди геть не мали шипів...
Давай у темряві танго, як в останній раз,
Забери, що хочеш, спогад залиши про нас!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6475673_l1','pisniua_6475673','YouTube','https://www.youtube.com/watch?v=UU5ZSrR8FV4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6479858';
DELETE FROM song_versions WHERE song_id = 'pisniua_6479858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6479858';
DELETE FROM songs WHERE id = 'pisniua_6479858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6479858','Якби не ти','Музика: Максим Бородін Слова: Максим Бородін','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Якби не ти,
Я б не вірив в любов.
Якби не ти,
Я б не знав в чому сенс
У простого земного життя...
Життя...

А наша story-story
Просто почалась,
Я тихо жив собі і ти собі жила,
Я говорив, що для людей -
Любов - лиш звук,
Вона - мігрант людських сердець
І наших рук...
Ти обпікалася не раз і я горів,
І я вважав,
Що світ хронічно захворів,
Та дві дороги заплелися у одну,
І я піднявся на поверхню,
А до того йшов по дну...

Приспів:
Якби не ти,
Я б не вірив в любов.
Якби не ти,
Я б не знав в чому сенс
У простого земного життя...
Життя...
Нехай не раз ще впаду,
Встану знов!
Ти мені сили даєш,
Ніби крила птахам,
І вони в небо летять!..
Летять!..

Де крила є,
Обов''язково є вогонь,
Комусь пустий перон,
А хтось сіда у вагон...
Хтось вириває з м''ясом
Серце із грудей,
Шукає хтось любов
У безлічі людей...
Десь в павутинах вулиць
Вона йде, вони не розминулись,
Він її знайде!..
Бо якщо - ні, навіщо
Ця планета танець свій веде?..

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''cat:philosophic'', ''Пісні про кохання, ліричні'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6479858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6479858','Якби не ти','Якби не ти,
Я б не вірив в любов.
Якби не ти,
Я б не знав в чому сенс
У простого земного життя...
Життя...

А наша story-story
Просто почалась,
Я тихо жив собі і ти собі жила,
Я говорив, що для людей -
Любов - лиш звук,
Вона - мігрант людських сердець
І наших рук...
Ти обпікалася не раз і я горів,
І я вважав,
Що світ хронічно захворів,
Та дві дороги заплелися у одну,
І я піднявся на поверхню,
А до того йшов по дну...

Приспів:
Якби не ти,
Я б не вірив в любов.
Якби не ти,
Я б не знав в чому сенс
У простого земного життя...
Життя...
Нехай не раз ще впаду,
Встану знов!
Ти мені сили даєш,
Ніби крила птахам,
І вони в небо летять!..
Летять!..

Де крила є,
Обов''язково є вогонь,
Комусь пустий перон,
А хтось сіда у вагон...
Хтось вириває з м''ясом
Серце із грудей,
Шукає хтось любов
У безлічі людей...
Десь в павутинах вулиць
Вона йде, вони не розминулись,
Він її знайде!..
Бо якщо - ні, навіщо
Ця планета танець свій веде?..

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6479858_l1','pisniua_6479858','YouTube','https://www.youtube.com/watch?v=9C-Rfp47ayk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6479858_l2','pisniua_6479858','YouTube','https://www.youtube.com/watch?v=SXZ0vP-FK_E','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6479858_l3','pisniua_6479858','YouTube','https://www.youtube.com/watch?v=2KaBlls2oLw','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_6494144';
DELETE FROM song_versions WHERE song_id = 'pisniua_6494144';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6494144';
DELETE FROM songs WHERE id = 'pisniua_6494144';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6494144','На добраніч','Музика: Олександр Машевський Слова: Світлана Соболевська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Час прийшов лягати спати
Всім дорослим і малятам.
Місяць зіроньки гойдає,
Річка рибок колихає...       | (2)

У садочку сплять всі квіти,
В ліжечках - слухняні діти,
Навіть книжечка з казками
Буде спати разом з нами...   | (2)

Засинай... Засинай...
Засинай, моє дитятко...
Засинай...

Всі ми іграшки прибрали,
Всіх звіряток спати вклали,
Хай машинки засинають,
Всі солодких снів чекають... | (2)

Лялька Катя вже у ліжку,
Почитаємо їй книжку,
А маленьке ведмежатко
Разом з нами ляже спатки...  | (2)

Засинай... Засинай...        |
Засинай, моє дитятко...      |
Засинай...                   | (2)','[''pisni.org.ua'', ''cat:kolyskovi'', ''cat:pro-ditey'', ''Колискові'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6494144'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6494144','На добраніч','Час прийшов лягати спати
Всім дорослим і малятам.
Місяць зіроньки гойдає,
Річка рибок колихає...       | (2)

У садочку сплять всі квіти,
В ліжечках - слухняні діти,
Навіть книжечка з казками
Буде спати разом з нами...   | (2)

Засинай... Засинай...
Засинай, моє дитятко...
Засинай...

Всі ми іграшки прибрали,
Всіх звіряток спати вклали,
Хай машинки засинають,
Всі солодких снів чекають... | (2)

Лялька Катя вже у ліжку,
Почитаємо їй книжку,
А маленьке ведмежатко
Разом з нами ляже спатки...  | (2)

Засинай... Засинай...        |
Засинай, моє дитятко...      |
Засинай...                   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_650252';
DELETE FROM song_versions WHERE song_id = 'pisniua_650252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_650252';
DELETE FROM songs WHERE id = 'pisniua_650252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_650252','Алкоголь','(АЛКО голізм). Музика: Т.І.К. (Тік) Слова: Віктор Бронюк. Виконує: Т.І.К. (Тік)','uk','ukraine_1991',NULL,NULL,NULL,NULL,'5|-2-2--2--------5-5--5--------|
6|--------3-3--3--------5-5--5-|

Краще звучить, якщо усі акорди грати з баре

Бажання пити..., буває не завжди,
зранку охота напитись води.
Запах із рота, в желудку штіль,
а в голові шеберхає вчорашній хміль.

В думці лиш одне, - "Навіщо я бухав?"
І не пам''ятаю, навіть, з ким переспав.
Важко заспокоїти душевний боль,
коли печінку роз''їдає дешевий алкоголь.

Приспів:
Хтось скаже: "А де ж тут гуманізм?"
А люди хворіють на алкоголізм.
Стакан за стаканом в руки беруть
і п''ють, п''ють, п''ють, п''ють, п''ють...

Немає логіки в діяннях алкоголіка,
горілка і пиво, тихо, робить своє диво.
Пити так безбожно, більше не можна,
але хочеться жити, значить, треба пити...

Приспів.

Не знаю хто тут виграв, і не знаю хто програв.
Якщо не випив зранку, значить день пропав.
"Совєти" не построїли комунізм.
Бо в них не було сексу, - А був алкоголізм.

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_650252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_650252','Алкоголь','5|-2-2--2--------5-5--5--------|
6|--------3-3--3--------5-5--5-|

Краще звучить, якщо усі акорди грати з баре

Бажання пити..., буває не завжди,
зранку охота напитись води.
Запах із рота, в желудку штіль,
а в голові шеберхає вчорашній хміль.

В думці лиш одне, - "Навіщо я бухав?"
І не пам''ятаю, навіть, з ким переспав.
Важко заспокоїти душевний боль,
коли печінку роз''їдає дешевий алкоголь.

Приспів:
Хтось скаже: "А де ж тут гуманізм?"
А люди хворіють на алкоголізм.
Стакан за стаканом в руки беруть
і п''ють, п''ють, п''ють, п''ють, п''ють...

Немає логіки в діяннях алкоголіка,
горілка і пиво, тихо, робить своє диво.
Пити так безбожно, більше не можна,
але хочеться жити, значить, треба пити...

Приспів.

Не знаю хто тут виграв, і не знаю хто програв.
Якщо не випив зранку, значить день пропав.
"Совєти" не построїли комунізм.
Бо в них не було сексу, - А був алкоголізм.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_650252_l1','pisniua_650252','http://music.vkmonline.com/minusovki/minusfile/16449/%D0%A2%D0%98%D0%9A_%D0%A2%D0%86%D0%9A_%D0%90%D0%BB%D0%BA%D0%BE%D0%B3%D0%BE%D0%BB%D1%96%D0%B7%D0%BC','http://music.vkmonline.com/minusovki/minusfile/16449/%D0%A2%D0%98%D0%9A_%D0%A2%D0%86%D0%9A_%D0%90%D0%BB%D0%BA%D0%BE%D0%B3%D0%BE%D0%BB%D1%96%D0%B7%D0%BC','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6512879';
DELETE FROM song_versions WHERE song_id = 'pisniua_6512879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6512879';
DELETE FROM songs WHERE id = 'pisniua_6512879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6512879','Гуцулянка','Музика: Іван Попович Слова: Андрій Демиденко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Гей, над плаєм, над високим
Розсипались зорі,
А під ними ген Карпати,
Смерекові гори!
Тут, на синіх полонинах
Квіти, мов корали,
Тут, у горах, моя любко,
Нам музики грали!
А я маю про що розказати,
Як не скажу, відтак не засну.
Я росла у зелених Карпатах
І я виділа справжню весну!
І вже навіть, єк сонце сідає,
То на серцю страшенно теплінь!
Бо я - твоя, гуцулянка,
А ти - мій леґінь!

Приспів:
Ой, гуцулко, гуцулянко,
Чічко прехороша,
Подарую тобі скрипку
Із струн Черемоша!
Ой, гуцулко, гуцулянко,
Будеш ти любити,
Я зроблю з відлунь Карпатських
Золоті трембіти!

Ой, зелені ви, гори, зелені,
Ще й високі до самих небес,
Всі горби у любов застелені,
І між вами спинєєси чєс...
А над дзворами ген вітер
У сопілку свище,
Ой, високая Говерла,
А кохання - вище!

Приспів. (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:lirychni'', ''Пісні про красу природи'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6512879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6512879','Гуцулянка','Гей, над плаєм, над високим
Розсипались зорі,
А під ними ген Карпати,
Смерекові гори!
Тут, на синіх полонинах
Квіти, мов корали,
Тут, у горах, моя любко,
Нам музики грали!
А я маю про що розказати,
Як не скажу, відтак не засну.
Я росла у зелених Карпатах
І я виділа справжню весну!
І вже навіть, єк сонце сідає,
То на серцю страшенно теплінь!
Бо я - твоя, гуцулянка,
А ти - мій леґінь!

Приспів:
Ой, гуцулко, гуцулянко,
Чічко прехороша,
Подарую тобі скрипку
Із струн Черемоша!
Ой, гуцулко, гуцулянко,
Будеш ти любити,
Я зроблю з відлунь Карпатських
Золоті трембіти!

Ой, зелені ви, гори, зелені,
Ще й високі до самих небес,
Всі горби у любов застелені,
І між вами спинєєси чєс...
А над дзворами ген вітер
У сопілку свище,
Ой, високая Говерла,
А кохання - вище!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6512879_l1','pisniua_6512879','YouTube','https://www.youtube.com/watch?v=U9HxNS_jFbs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6512570';
DELETE FROM song_versions WHERE song_id = 'pisniua_6512570';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6512570';
DELETE FROM songs WHERE id = 'pisniua_6512570';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6512570','День народження','Музика: Оля Цибульська Слова: Оля Цибульська. Виконує: Оля Цибульська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'А на погоду крутить нога,
Уже не персик, але ще не курага...

Я прокинулася зранку —
Ніби щось змінилось!
Що за день такий чудовий?
Йой! Я народилась!
Люблю свої гарні очі,
І личко красиве!
Дякую вам, мама й тато!
Цьом вам,
Збройні Сили!

Приспів:
Ла-ла-ла!
Плюс один я дожила!
Ла-ла-ла!
Вже доросла, не мала!
Ла-ла-ла!
Поруч друзі і сім''я!
Ла-ла-ла!
Старіють інші, але не я!

Я вберуся в файну сукню,
Взую черевики.
З кожним роком тільки ліпша,
Хай звучать музики!
Люблю свої гарні очі!
І личко красиве.
Дякую вам, мама з татом!
Цьом Вам,
Збройні Сили!

Приспів. (2)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6512570'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6512570','День народження','А на погоду крутить нога,
Уже не персик, але ще не курага...

Я прокинулася зранку —
Ніби щось змінилось!
Що за день такий чудовий?
Йой! Я народилась!
Люблю свої гарні очі,
І личко красиве!
Дякую вам, мама й тато!
Цьом вам,
Збройні Сили!

Приспів:
Ла-ла-ла!
Плюс один я дожила!
Ла-ла-ла!
Вже доросла, не мала!
Ла-ла-ла!
Поруч друзі і сім''я!
Ла-ла-ла!
Старіють інші, але не я!

Я вберуся в файну сукню,
Взую черевики.
З кожним роком тільки ліпша,
Хай звучать музики!
Люблю свої гарні очі!
І личко красиве.
Дякую вам, мама з татом!
Цьом Вам,
Збройні Сили!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6512570_l1','pisniua_6512570','YouTube','https://www.youtube.com/watch?v=uziYtYocwn8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_65252';
DELETE FROM song_versions WHERE song_id = 'pisniua_65252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_65252';
DELETE FROM songs WHERE id = 'pisniua_65252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_65252','Ой летіли дикі гуси','Музика: Ігор Поклад Слова: Юрій Рибчинський. Виконує: Ніна Матвієнко, Руслана, Тамара Міансарова, Лідія Відаш','uk','ukraine_1991',NULL,NULL,'Співаник тернопільського туристичного клубу "Кристал"',NULL,'Ой, летіли дикі гуси,
Ой летіли у неділю дощову.
Впало пір''я на подвір''я,
Закотилось, як повір''я, у траву.

Ой, летіли дикі гуси,
Ой, летіли дикі гуси через ліс.
Не кажи своїй подрузі,
Хто тобі корали зоряні приніс.

Як постука нічка темна
У віконце знов,
Не питай мене даремно
Про мою любов.

Ой, летіли в день осінній
Дикі гуси до самотньої верби,
Там, де двоє, там - весілля,
А, де троє - перші ягоди журби.

Ой, летіли до світання
Дикі гуси через марево ночей,
Бережи своє кохання
Ти, дівчино, від корисливих очей.

Ой, летіли понад вечір
Дикі гуси через ліс і зелен гай,
Ти відкрий подрузі двері,
Але серце їй своє не відкривай','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_65252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_65252','Ой летіли дикі гуси','Ой, летіли дикі гуси,
Ой летіли у неділю дощову.
Впало пір''я на подвір''я,
Закотилось, як повір''я, у траву.

Ой, летіли дикі гуси,
Ой, летіли дикі гуси через ліс.
Не кажи своїй подрузі,
Хто тобі корали зоряні приніс.

Як постука нічка темна
У віконце знов,
Не питай мене даремно
Про мою любов.

Ой, летіли в день осінній
Дикі гуси до самотньої верби,
Там, де двоє, там - весілля,
А, де троє - перші ягоди журби.

Ой, летіли до світання
Дикі гуси через марево ночей,
Бережи своє кохання
Ти, дівчино, від корисливих очей.

Ой, летіли понад вечір
Дикі гуси через ліс і зелен гай,
Ти відкрий подрузі двері,
Але серце їй своє не відкривай');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_65252_l1','pisniua_65252','YouTube','https://www.youtube.com/watch?v=RyMlG5p2KqE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_65252_l2','pisniua_65252','YouTube','https://www.youtube.com/watch?v=KnboyzBnIzc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_65252_l3','pisniua_65252','YouTube','https://www.youtube.com/watch?v=MiMycHixFFg','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_65252_l4','pisniua_65252','YouTube','https://www.youtube.com/watch?v=MdLgkcM2WQg','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_65252_l5','pisniua_65252','YouTube','https://www.youtube.com/watch?v=W7TNhys2xRk','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_65252_l6','pisniua_65252','YouTube','https://www.youtube.com/watch?v=55g84lhCaC8','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_6535399';
DELETE FROM song_versions WHERE song_id = 'pisniua_6535399';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6535399';
DELETE FROM songs WHERE id = 'pisniua_6535399';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6535399','Ще не вмерла Україна','Музика: народна Слова: Павло Чубинський, Тарас Шевченко. Виконує: Хорея Козацька','uk','ukraine_1991',NULL,NULL,'записи виконання Хореї Козацької',NULL,'Ще не вмерла Україна,
Ні сла-, ні слава, ні воля,
Ще й нам, браття молоденькі, |
Й усміхнеться доля!          | (2)

Згинуть наші воріженьки,
Як ро, як роса на сонці,
Запануємо й ми, браття,      |
У своїй сторонці!            | (2)

Було колись на Вкраїні:
Гримі-, гриміли гармати,
Було колись: запорожці       |
Вміли панувати!              | (2)

Панували, добували
І сла-, і слави і волі -
Тепер тільки осталися        |
Могили на полі!              | (2)

Наливайко і Павлюк,
Ще й Та, ще й Тарас Трясило,
Із могили кличуть нас        |
На святеє діло!              | (2)

Душу й тіло ми положим
За сво-, за свою свободу,
Ще й докажем, що ми, браття, |
Козацького роду!             | (2)','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6535399'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6535399','Ще не вмерла Україна','Ще не вмерла Україна,
Ні сла-, ні слава, ні воля,
Ще й нам, браття молоденькі, |
Й усміхнеться доля!          | (2)

Згинуть наші воріженьки,
Як ро, як роса на сонці,
Запануємо й ми, браття,      |
У своїй сторонці!            | (2)

Було колись на Вкраїні:
Гримі-, гриміли гармати,
Було колись: запорожці       |
Вміли панувати!              | (2)

Панували, добували
І сла-, і слави і волі -
Тепер тільки осталися        |
Могили на полі!              | (2)

Наливайко і Павлюк,
Ще й Та, ще й Тарас Трясило,
Із могили кличуть нас        |
На святеє діло!              | (2)

Душу й тіло ми положим
За сво-, за свою свободу,
Ще й докажем, що ми, браття, |
Козацького роду!             | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6535399_l1','pisniua_6535399','YouTube','https://www.youtube.com/watch?v=EfymoS9CFBA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6549178';
DELETE FROM song_versions WHERE song_id = 'pisniua_6549178';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6549178';
DELETE FROM songs WHERE id = 'pisniua_6549178';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6549178','Холодна гора','Музика: Собаки, Курган, Agregat Слова: Сергій Жадан','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Теплі хрущовки, темні двори,
Пацан спускається з холодної гори,
Щоденний хіп-хоп, щоденний рок-н-рол,
В кишені бовтається парацетамол.
Місто аптек, місто блокпостів
Довго спускається в сторону мостів,
Котяться на захід ранкові поїзди,
Виросту, вивчусь — дам усім пи*ди!

У ранньому дитинстві ти тримаєшся своїх,
Брат легкоатлет ще до війни кудись заліг,
Вітчим щоранку підіймався на завод,
Світ складався із приходів та пригод.
Мама — надія, кожен ранок, як подія,
Демони метро передають тобі привіт.
Будеш бити, але хочеться любити,
Хочеться спалити цей дорослий світ!

Приспів.

Сірий: знову те саме, давай щось мінять
Та без питань

Сиджу з серйозним жалом,
З предметом в кармані можу ужалить,
Спортивки пальоні, Армані,
Вчора їздив на барік,
Ранковий бадун жити мішає,
Але вечером водку з пивом мішаю.
Бо, пива без водки, як паспорт без фотки,
Я вийду раніше, хай плате хтось інший.
Тут вуличні звуки це гальма маршрутки,
А вулиці голос це харківський Металіст!

Приспів.

Виросту, вивчусь — дам усім пи*ди!
Виросту, вивчусь — дам усім пи*ди!

Приспів.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''cat:zahalni-cinnosti'', ''Соціально-побутові пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6549178'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6549178','Холодна гора','Приспів:
Теплі хрущовки, темні двори,
Пацан спускається з холодної гори,
Щоденний хіп-хоп, щоденний рок-н-рол,
В кишені бовтається парацетамол.
Місто аптек, місто блокпостів
Довго спускається в сторону мостів,
Котяться на захід ранкові поїзди,
Виросту, вивчусь — дам усім пи*ди!

У ранньому дитинстві ти тримаєшся своїх,
Брат легкоатлет ще до війни кудись заліг,
Вітчим щоранку підіймався на завод,
Світ складався із приходів та пригод.
Мама — надія, кожен ранок, як подія,
Демони метро передають тобі привіт.
Будеш бити, але хочеться любити,
Хочеться спалити цей дорослий світ!

Приспів.

Сірий: знову те саме, давай щось мінять
Та без питань

Сиджу з серйозним жалом,
З предметом в кармані можу ужалить,
Спортивки пальоні, Армані,
Вчора їздив на барік,
Ранковий бадун жити мішає,
Але вечером водку з пивом мішаю.
Бо, пива без водки, як паспорт без фотки,
Я вийду раніше, хай плате хтось інший.
Тут вуличні звуки це гальма маршрутки,
А вулиці голос це харківський Металіст!

Приспів.

Виросту, вивчусь — дам усім пи*ди!
Виросту, вивчусь — дам усім пи*ди!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6549178_l1','pisniua_6549178','YouTube','https://www.youtube.com/watch?v=4lsfD50chao','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6565991';
DELETE FROM song_versions WHERE song_id = 'pisniua_6565991';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6565991';
DELETE FROM songs WHERE id = 'pisniua_6565991';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6565991','Заведу кота','Музика: Ivan Klymenko, BangBlazeMusic, Олег Шкарпета (Шугар) Слова: Ivan Klymenko, Олег Шкарпета (Шугар), Владислава Кіцелюк','uk','ukraine_1991',NULL,NULL,'аудіозапис','"Заведу кота" — це пісня про свободу бути собою. За легкою іронією у тексті ховається глибокий сенс: як часто ми намагаємось підлаштуватися під чужі стандарти, як виглядати, як поводитися, що казати, але справжня свобода у прийнятті себе. Головні герої втомилися від оцінок і ролей, які нав''язує суспільство і їх вибір символічний і простий: вони заводять кота, бо кіт не питає, "чому ти така", не засуджує, не вимагає.','Приспів:
І якщо усім не та я
І тобі не та, то я
Заведу кота! Заведу кота!
Раз я не свята і для кота
Буду саме та!
Він не запитає, де я там?..
Заведу кота! Заведу кота!
І для кота буду саме та,
Раз комусь не та!...

Ти можеш бути ким захочеш
І не слухать тих людей,
Які не ті!..
Не ті, не ті, не ті!..
Бо, на відміну від кота,
У тебе лиш одне,
А не дев''ять життів!
Дев''ять життів...
Нікого не слухай, мила,
Просто будь собою!
Як комусь гірка,
То хай собі зап''ють водою!
Думай! Думай! Думай,
Як для себе стати тою,
Хто через роки буде
Пишатися собою!

Приспів.

Я не так виглядаю,
Як би комусь хотілось,
Я не так одяглась,
Не так встала, не так присіла.
Навіщо це все терпіла?..
Моє тіло - моє діло!
Я люблю тільки кота,
І це так мило!

Приспів.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6565991'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6565991','Заведу кота','Приспів:
І якщо усім не та я
І тобі не та, то я
Заведу кота! Заведу кота!
Раз я не свята і для кота
Буду саме та!
Він не запитає, де я там?..
Заведу кота! Заведу кота!
І для кота буду саме та,
Раз комусь не та!...

Ти можеш бути ким захочеш
І не слухать тих людей,
Які не ті!..
Не ті, не ті, не ті!..
Бо, на відміну від кота,
У тебе лиш одне,
А не дев''ять життів!
Дев''ять життів...
Нікого не слухай, мила,
Просто будь собою!
Як комусь гірка,
То хай собі зап''ють водою!
Думай! Думай! Думай,
Як для себе стати тою,
Хто через роки буде
Пишатися собою!

Приспів.

Я не так виглядаю,
Як би комусь хотілось,
Я не так одяглась,
Не так встала, не так присіла.
Навіщо це все терпіла?..
Моє тіло - моє діло!
Я люблю тільки кота,
І це так мило!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6565991_l1','pisniua_6565991','YouTube','https://www.youtube.com/watch?v=6pDXEZsLkIo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6569252';
DELETE FROM song_versions WHERE song_id = 'pisniua_6569252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6569252';
DELETE FROM songs WHERE id = 'pisniua_6569252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6569252','Колискова','Музика: Віталія Грицак, Жоржини Слова: Володимир Вакуленко','uk','ukraine_1991',NULL,NULL,'авторське подання','Пісню виконують Віталія Грицак та Жоржини.','А-аа-а-а... А-аа-а-а...

Осінь надворі добра
З золота свого листя
Шиє звіряткам ковдри,
Хмари блакитно чисті
Для місяця осінь спушить,
В небі його колисанка:
Спи, мій маленький друже,
Ніч на віконних фіранках...

А-аа-а-а... А-аа-а-а...

Космосу пісню шепоче
Про галактичні квіти,
Спи, мій маленький хлопче...
На павутинці вітер
Гойдає нічку спати,
Щоб народилася тиша,
Спи-засинай біля тата,
Сонечно вранці потішиш...

А-аа-а-а... А-аа-а-а...

Осінь надворі добра
З золота свого листя
Шиє звіряткам ковдри,
Хмари блакитно чисті
Для місяця осінь спушить,
В небі його колисанка:
Спи, мій маленький друже,
Ніч на віконних фіранках...

А-аа-а-а... А-аа-а-а...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6569252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6569252','Колискова','А-аа-а-а... А-аа-а-а...

Осінь надворі добра
З золота свого листя
Шиє звіряткам ковдри,
Хмари блакитно чисті
Для місяця осінь спушить,
В небі його колисанка:
Спи, мій маленький друже,
Ніч на віконних фіранках...

А-аа-а-а... А-аа-а-а...

Космосу пісню шепоче
Про галактичні квіти,
Спи, мій маленький хлопче...
На павутинці вітер
Гойдає нічку спати,
Щоб народилася тиша,
Спи-засинай біля тата,
Сонечно вранці потішиш...

А-аа-а-а... А-аа-а-а...

Осінь надворі добра
З золота свого листя
Шиє звіряткам ковдри,
Хмари блакитно чисті
Для місяця осінь спушить,
В небі його колисанка:
Спи, мій маленький друже,
Ніч на віконних фіранках...

А-аа-а-а... А-аа-а-а...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6569252_l1','pisniua_6569252','YouTube','https://www.youtube.com/watch?v=TBpdDJDVZcE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_65593';
DELETE FROM song_versions WHERE song_id = 'pisniua_65593';
DELETE FROM songs_fts WHERE song_id = 'pisniua_65593';
DELETE FROM songs WHERE id = 'pisniua_65593';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_65593','Цілісіньку нічку','Виконує: Ексампей, Не журись!','uk','ukraine_1991',NULL,NULL,'аудіозапис','Ймовірно, "Не журись!" не виконували цієї пісні (Інформацію надав Віктор Морозов, http://www.mo-productions.com). Потрібне уточнення!','Куплет 1:
Цілісіньку нічку
Колиса нам свічку.
Колиса нам свічку.
H7
Гей!
З вечора до рана
Ятрилася рана.
Ятрилася рана.
Гей!
Куплет 2:
Цілісіньку нічку
Колиса нам свічку.
Колиса нам свічку.
A7
Гей!
Ми тепер без тата -
Впав у руки ката.
Впав у руки ката.
Гей!
Куплет 3 (акорди з Куплету 1):
Цілісіньку нічку
Колиса нам свічку.  (2)
Гей!
Вогнику восковий,
Згасив тя войсковий.  (2)
Гей!
Куплет 4 (акорди з Куплету 2):
Цілісіньку нічку
Колиса нам свічку.  (2)
Гей!
Політай, синочку,
В крилатім візочку.  (2)
Гей!','[''pisni.org.ua'', ''cat:bardivski'', ''cat:kolyskovi'', ''Бардівські пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_65593'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_65593','Цілісіньку нічку','Куплет 1:
Цілісіньку нічку
Колиса нам свічку.
Колиса нам свічку.
H7
Гей!
З вечора до рана
Ятрилася рана.
Ятрилася рана.
Гей!
Куплет 2:
Цілісіньку нічку
Колиса нам свічку.
Колиса нам свічку.
A7
Гей!
Ми тепер без тата -
Впав у руки ката.
Впав у руки ката.
Гей!
Куплет 3 (акорди з Куплету 1):
Цілісіньку нічку
Колиса нам свічку.  (2)
Гей!
Вогнику восковий,
Згасив тя войсковий.  (2)
Гей!
Куплет 4 (акорди з Куплету 2):
Цілісіньку нічку
Колиса нам свічку.  (2)
Гей!
Політай, синочку,
В крилатім візочку.  (2)
Гей!');
DELETE FROM song_links WHERE song_id = 'pisniua_65858';
DELETE FROM song_versions WHERE song_id = 'pisniua_65858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_65858';
DELETE FROM songs WHERE id = 'pisniua_65858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_65858','Піду втоплюся','Музика: Андрій Миколайчук Слова: Андрій Миколайчук. Виконує: Андрій Миколайчук','uk','ukraine_1991',NULL,NULL,'Аудіо-альбом "Андрій Миколайчук. "Піду втоплюся"','Текст уточнено, виправлено й доповнено за аудіо-записом. Акорди записано на слух з аудіо-запису. Тональність оригінальна. * Тут акорд G звучить тільки за першим разом. ** Тут за другим разом у програші є перехід на 2 півтони вгору, і тоді пісня до кінця виконується у тональності "Hm". Підбір акордів: bohdanko (www.pisni.org.ua)','Передмова:
Ти, розлюбила мене, мила...
Навіки я тебе люблю.
Як нам прийшла пора прощатись,
Піду на річку - і втоплюсь.

Вступ:  Am C G Am (x2)

Скінчилось кохання, скінчилося все,
Заглядає сонце у вікна осель.
Там люди щасливі, та сумно мені -
Піду утоплюся, спочину на дні.

Приспів:
Піду втоплюся у річці глибокій,       |
Шукати стануть - не скоро знайдуть.   |
Ти будеш плакать - спливатимуть роки, |
E         E7      Am   (G)* |
Мене до смерті не зможеш забуть.      |

Програш (як Вступ).

Життя, як той камінь, на груди лягло.
Зроблю, що надумав Марічці на зло.
Прощай, мамо люба, і тато, прощай,
Учителька, друзі, прощай, милий край!

Приспів.

Програш (як Вступ). **

А річка страшною, мов відьма, була.
Відходи заводу у море несла.
Я річку чистеньку шукати піду -
Шукатиму доти, поки не знайду.

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:zhartivlyvi'', ''Пісні про кохання, ліричні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_65858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_65858','Піду втоплюся','Передмова:
Ти, розлюбила мене, мила...
Навіки я тебе люблю.
Як нам прийшла пора прощатись,
Піду на річку - і втоплюсь.

Вступ:  Am C G Am (x2)

Скінчилось кохання, скінчилося все,
Заглядає сонце у вікна осель.
Там люди щасливі, та сумно мені -
Піду утоплюся, спочину на дні.

Приспів:
Піду втоплюся у річці глибокій,       |
Шукати стануть - не скоро знайдуть.   |
Ти будеш плакать - спливатимуть роки, |
E         E7      Am   (G)* |
Мене до смерті не зможеш забуть.      |

Програш (як Вступ).

Життя, як той камінь, на груди лягло.
Зроблю, що надумав Марічці на зло.
Прощай, мамо люба, і тато, прощай,
Учителька, друзі, прощай, милий край!

Приспів.

Програш (як Вступ). **

А річка страшною, мов відьма, була.
Відходи заводу у море несла.
Я річку чистеньку шукати піду -
Шукатиму доти, поки не знайду.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_65858_l1','pisniua_65858','YouTube','https://www.youtube.com/watch?v=2S6zJ_GxQqE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_65858_l2','pisniua_65858','YouTube','https://www.youtube.com/watch?v=qksTXwSWtoI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_65858_l3','pisniua_65858','YouTube','https://www.youtube.com/watch?v=sdGJUnr2iUA','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_65858_l4','pisniua_65858','YouTube','https://www.youtube.com/watch?v=uaPDMl8t8jA','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_65858_l5','pisniua_65858','YouTube','https://www.youtube.com/watch?v=meH94nwGUzo','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_664353';
DELETE FROM song_versions WHERE song_id = 'pisniua_664353';
DELETE FROM songs_fts WHERE song_id = 'pisniua_664353';
DELETE FROM songs WHERE id = 'pisniua_664353';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_664353','Колиска яворова','Музика: Богдан Кучер Слова: Богдан Кучер. Виконує: Соколи, Іван Мацялко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Чужої мови я не знаю,
А чи на світі є чужа?
Та лиш тією заспіваю,
Котрою мати нарекла.
Як не зречешся ти тієї,
Що у колисонці чував,
Душа засвітиться зорею.
Зорю, щоб людям ти віддав.

Приспів:
Колиско моя яворова,
На денці лона твого,
Дитино, колишиться слово,
Начувайся сину його.

Леліймо слово колискове,
Нехай пра-правнукам буде.
Нехай і їх щодень додому
Колиска мамина зове.
Бо там краплина милосердя,
Там доброта гойдає світ
І не остудиться там серце,
Душа прийдешня, маків цвіт.

Приспів. (2)

Від діда прадіда твого,
Зорею буде повік
Священне вкраїнськеє слово,
На тому стоятиме рід.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_664353'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_664353','Колиска яворова','Чужої мови я не знаю,
А чи на світі є чужа?
Та лиш тією заспіваю,
Котрою мати нарекла.
Як не зречешся ти тієї,
Що у колисонці чував,
Душа засвітиться зорею.
Зорю, щоб людям ти віддав.

Приспів:
Колиско моя яворова,
На денці лона твого,
Дитино, колишиться слово,
Начувайся сину його.

Леліймо слово колискове,
Нехай пра-правнукам буде.
Нехай і їх щодень додому
Колиска мамина зове.
Бо там краплина милосердя,
Там доброта гойдає світ
І не остудиться там серце,
Душа прийдешня, маків цвіт.

Приспів. (2)

Від діда прадіда твого,
Зорею буде повік
Священне вкраїнськеє слово,
На тому стоятиме рід.');
DELETE FROM song_links WHERE song_id = 'pisniua_665252';
DELETE FROM song_versions WHERE song_id = 'pisniua_665252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_665252';
DELETE FROM songs WHERE id = 'pisniua_665252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_665252','Загублені діти','Музика: Андрій Кузьменко Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,'альбом "Про любов"',NULL,'Як обірване листя,
Як поламані вітром квіти,
Бродять недобрим світом
Некохані, загублені діти.
Просто їх не хотіли,
Ніби мама і ніби тато,
Просто їх загубили,
І не хоче їх підібрати
Ніхто, ніхто...

Приспів:
Мама, знайди мене - я тут! |
Мама, ще трохи - я помру!  | (2)

Як нічиї собаки,
Лишні люди у нашій схемі,
Плід дурної любові,
Кінець фільму - закрита тема.
З розіп''ятим сердечком
Носить їх по землі бідою.
Люди, бійтеся Бога,
Розберіться самі з собою!

Приспів. (2)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_665252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_665252','Загублені діти','Як обірване листя,
Як поламані вітром квіти,
Бродять недобрим світом
Некохані, загублені діти.
Просто їх не хотіли,
Ніби мама і ніби тато,
Просто їх загубили,
І не хоче їх підібрати
Ніхто, ніхто...

Приспів:
Мама, знайди мене - я тут! |
Мама, ще трохи - я помру!  | (2)

Як нічиї собаки,
Лишні люди у нашій схемі,
Плід дурної любові,
Кінець фільму - закрита тема.
З розіп''ятим сердечком
Носить їх по землі бідою.
Люди, бійтеся Бога,
Розберіться самі з собою!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_665252_l1','pisniua_665252','YouTube','https://www.youtube.com/watch?v=J1eEZJq9Y9E','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_664093';
DELETE FROM song_versions WHERE song_id = 'pisniua_664093';
DELETE FROM songs_fts WHERE song_id = 'pisniua_664093';
DELETE FROM songs WHERE id = 'pisniua_664093';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_664093','Три янголи','Музика: народна','uk','ukraine_1991',NULL,NULL,'http://torban.org',NULL,'Ой, шли-пройшли та три янголи,
ой задивили душу грішную.

Ой, щож ти, душa, мимо раю пройшла?
Ой, чим ти душа провинилася?

Чи за скупощі? Чи за глупощі?
Чи душу погубив? Чи в''янець порушив?

Біля райських воріт стоїть Дерево,
Стоїть Дерево, купоросовоє.

А на тому древу птиці райськиї.
Голосочки у них серафімськиї.

Голосочки у них серафімськиї,
Поють пісні вони херувімськиї.

Ой у нашому раю жити весело,
Жити весело- та нема кому.....','[''pisni.org.ua'', ''cat:poliski'', ''Пісні з Полісся'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_664093'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_664093','Три янголи','Ой, шли-пройшли та три янголи,
ой задивили душу грішную.

Ой, щож ти, душa, мимо раю пройшла?
Ой, чим ти душа провинилася?

Чи за скупощі? Чи за глупощі?
Чи душу погубив? Чи в''янець порушив?

Біля райських воріт стоїть Дерево,
Стоїть Дерево, купоросовоє.

А на тому древу птиці райськиї.
Голосочки у них серафімськиї.

Голосочки у них серафімськиї,
Поють пісні вони херувімськиї.

Ой у нашому раю жити весело,
Жити весело- та нема кому.....');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_664093_l1','pisniua_664093','YouTube','https://www.youtube.com/watch?v=qYjf5aYkdz8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_664093_l2','pisniua_664093','YouTube','https://www.youtube.com/watch?v=qEFO5CT-sFQ','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_669042';
DELETE FROM song_versions WHERE song_id = 'pisniua_669042';
DELETE FROM songs_fts WHERE song_id = 'pisniua_669042';
DELETE FROM songs WHERE id = 'pisniua_669042';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_669042','Колискова','Музика: Ігор Поклад. Виконує: Віталій Білоножко','uk','ukraine_1991',NULL,NULL,'аудіозапис','альбом "Давайте разом заспіваєм, браття!"','Тепле сонечко сідає,
Синій вечір на поріг,
Наче човник пропливає
Срібний місяць угорі.

Тихі сутінки кружляють,
Мрії, сни прийшли до нас.
Колискової співають:
"На добраніч, спати час".

Капітанам море сниться,
А пілотам - висота,
Машиністам - залізниця,
Будівельникам - міста.

До нових планет рушають
Комнонавти в мріях, снах,
Щедрий урожай збирають
Хлібороби на ланах.

Хоч усюди ніч кружляє -
Прикордонник наш не спить,
Мирні сни охороняє
Й неба чистого блакить.

Вітерець нічний зітхає,
Зорі вкрили небеса.
Завтра день новий засяє,
Всі здійсняться чудеса.

Всі здійсняться чудеса...    Фонограма-мінус (mid)','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_669042'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_669042','Колискова','Тепле сонечко сідає,
Синій вечір на поріг,
Наче човник пропливає
Срібний місяць угорі.

Тихі сутінки кружляють,
Мрії, сни прийшли до нас.
Колискової співають:
"На добраніч, спати час".

Капітанам море сниться,
А пілотам - висота,
Машиністам - залізниця,
Будівельникам - міста.

До нових планет рушають
Комнонавти в мріях, снах,
Щедрий урожай збирають
Хлібороби на ланах.

Хоч усюди ніч кружляє -
Прикордонник наш не спить,
Мирні сни охороняє
Й неба чистого блакить.

Вітерець нічний зітхає,
Зорі вкрили небеса.
Завтра день новий засяє,
Всі здійсняться чудеса.

Всі здійсняться чудеса...    Фонограма-мінус (mid)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_669042_l1','pisniua_669042','YouTube','https://www.youtube.com/watch?v=yWMwQFrZbIY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_669477';
DELETE FROM song_versions WHERE song_id = 'pisniua_669477';
DELETE FROM songs_fts WHERE song_id = 'pisniua_669477';
DELETE FROM songs WHERE id = 'pisniua_669477';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_669477','Калина','Музика: Трансформер Слова: Тарас Шевченко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Em
Зацвіла в долині
C
Червона калина
G
Ніби засміялась
D
Дівчина дитина
Любо любо стало
Пташечка зраділа
І защебетала

Почула дівчина,
І в білій свитині
З біленької хати
Вийшла погуляти
У гай на долину.
І вийшов до неї
З зеленого гаю
Козак молоденький;
Цілує, вітає,
І йдуть по долині
І йдучи співають.
Як діточок двоє,
Під тую калину
Прийшли, посідали
І поціловались.

Якого ж ми раю
У Бога благаєм?
Рай у серце лізе,
А ми в церкву лізем,
Заплющивши очі, —
Такого не хочем.
Сказав би я правду,
Та що з неї буде?
Самому завадить,
А попам та людям
Однаково буде.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_669477'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_669477','Калина','Em
Зацвіла в долині
C
Червона калина
G
Ніби засміялась
D
Дівчина дитина
Любо любо стало
Пташечка зраділа
І защебетала

Почула дівчина,
І в білій свитині
З біленької хати
Вийшла погуляти
У гай на долину.
І вийшов до неї
З зеленого гаю
Козак молоденький;
Цілує, вітає,
І йдуть по долині
І йдучи співають.
Як діточок двоє,
Під тую калину
Прийшли, посідали
І поціловались.

Якого ж ми раю
У Бога благаєм?
Рай у серце лізе,
А ми в церкву лізем,
Заплющивши очі, —
Такого не хочем.
Сказав би я правду,
Та що з неї буде?
Самому завадить,
А попам та людям
Однаково буде.');
DELETE FROM song_links WHERE song_id = 'pisniua_681042';
DELETE FROM song_versions WHERE song_id = 'pisniua_681042';
DELETE FROM songs_fts WHERE song_id = 'pisniua_681042';
DELETE FROM songs WHERE id = 'pisniua_681042';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_681042','Любов останньою ніколи не буває','Музика: Микола Мозговий Слова: Микола Кликовка. Виконує: Ольга Макаренко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Тебе нема, нема тепла,
І день за два в журбі минає,
Коли тебе у снах нема
Я, прокидаючись, згораю...
Мовчить у промені струна,
Душа не споминах не грає...
Я, залишаючись одна,
Без тебе долю не признаю...

Приспів:
Пробач за сльози, що пекучими були,
Коли за чварами нас доля обіймала,
Пробач за весни, що для тебе не цвіли,
І не карай за те, що боляче кохала...
Веди мене через життя, як через храм,
Де пам''ять молодість закоханим вертає.
Не знаю хто, але так праведно сказав:
Любов останньою ніколи не буває!..

Як серце в роздумах болить
Ніхто за мене не відчує,
І тільки мить, щаслива мить,
Недолі рану залікує.
Мовчить у промені струна,
Душа не споминах не грає...
Я, залишаючись одна,
Без тебе долю не признаю...

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_681042'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_681042','Любов останньою ніколи не буває','Тебе нема, нема тепла,
І день за два в журбі минає,
Коли тебе у снах нема
Я, прокидаючись, згораю...
Мовчить у промені струна,
Душа не споминах не грає...
Я, залишаючись одна,
Без тебе долю не признаю...

Приспів:
Пробач за сльози, що пекучими були,
Коли за чварами нас доля обіймала,
Пробач за весни, що для тебе не цвіли,
І не карай за те, що боляче кохала...
Веди мене через життя, як через храм,
Де пам''ять молодість закоханим вертає.
Не знаю хто, але так праведно сказав:
Любов останньою ніколи не буває!..

Як серце в роздумах болить
Ніхто за мене не відчує,
І тільки мить, щаслива мить,
Недолі рану залікує.
Мовчить у промені струна,
Душа не споминах не грає...
Я, залишаючись одна,
Без тебе долю не признаю...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_681042_l1','pisniua_681042','YouTube','https://www.youtube.com/watch?v=fTWuKmJnAXQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_681042_l2','pisniua_681042','YouTube','https://www.youtube.com/watch?v=6o-af8BPPd0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_681042_l3','pisniua_681042','YouTube','https://www.youtube.com/watch?v=fsRIqPrwn3k','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_681042_l4','pisniua_681042','YouTube','https://www.youtube.com/watch?v=0vm2ILNnthQ','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_681042_l5','pisniua_681042','YouTube','https://www.youtube.com/watch?v=qlhKZaqAJ3c','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_681042_l6','pisniua_681042','YouTube','https://www.youtube.com/watch?v=BqOFwYeAMHQ','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_68297';
DELETE FROM song_versions WHERE song_id = 'pisniua_68297';
DELETE FROM songs_fts WHERE song_id = 'pisniua_68297';
DELETE FROM songs WHERE id = 'pisniua_68297';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_68297','Запроси мене у сни','Музика: Володимир Івасюк Слова: Богдан Стельмах. Виконує: Назарій Яремчук, Софія Ротару, Нічлава Блюз','uk','ukraine_1991',NULL,NULL,'1. http://ivasyuk.domivka.net/ 2. Аідіо-CD "Тарас Чубай та друзі. Наш Івасюк" (2002)','Акорди записано на слух за джерелом 2, подано спрощено. Тональність оригінальна. * Тут у джерелі 2: 1 строфа співається двічі. Підбір акордів: bohdanko (pisni.org.ua)','Йдуть літа — то не біда,
Тільки іноді шкода,
Що в мереживі доріг
Я знайти тебе не зміг. *
Приспів:
Запроси мене у сни свої,
В ті, що досі не збулись.
Запроси мене у сни свої,
F
В ті, що збудуться колись.
В ті, що збудуться колись.
Запроси мене у сни свої,
Хоч на мить, та запроси...
Запроси мене у сни свої,
Тугу в серці погаси.
Тугу в серці погаси.
Тугу в серці погаси.
Сніг на скронях — не печаль,
Та не раз проймає жаль,
Що я в плині днів не зміг
Розтопить в душі той сніг.
Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_68297'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_68297','Запроси мене у сни','Йдуть літа — то не біда,
Тільки іноді шкода,
Що в мереживі доріг
Я знайти тебе не зміг. *
Приспів:
Запроси мене у сни свої,
В ті, що досі не збулись.
Запроси мене у сни свої,
F
В ті, що збудуться колись.
В ті, що збудуться колись.
Запроси мене у сни свої,
Хоч на мить, та запроси...
Запроси мене у сни свої,
Тугу в серці погаси.
Тугу в серці погаси.
Тугу в серці погаси.
Сніг на скронях — не печаль,
Та не раз проймає жаль,
Що я в плині днів не зміг
Розтопить в душі той сніг.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_68297_l1','pisniua_68297','YouTube','https://www.youtube.com/watch?v=Nu4LQkWQtc4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_68297_l2','pisniua_68297','YouTube','https://www.youtube.com/watch?v=ItCVpb19_fA','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_68297_l3','pisniua_68297','YouTube','https://www.youtube.com/watch?v=YYl-cGIxd3U','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_68297_l4','pisniua_68297','YouTube','https://www.youtube.com/watch?v=fJNEPujgWH0','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_68297_l5','pisniua_68297','YouTube','https://www.youtube.com/watch?v=SEbjZgCOvKI','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_684477';
DELETE FROM song_versions WHERE song_id = 'pisniua_684477';
DELETE FROM songs_fts WHERE song_id = 'pisniua_684477';
DELETE FROM songs WHERE id = 'pisniua_684477';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_684477','Ой, зза гори чорна хмара встала','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Український народний співаник, Мюнхен, 1946 р.',NULL,'Ой, зза гори чорна хмара встала,
Тож не хмара, - молоді гусари.

Тож не хмара, - молоді гусари...
Попереду їдуть генерали.

Попереду їдуть генерали,
А за ними б''ють у барабани.

А за ними б''ють у барабани:
"Не журіться, молоді гусари!"

"Ой, як же нам, братці, не журитися, -
Посилає за Дунай цариця!

За Дунаєм тяжко-важко жити:
Там не дають ні їсти, ні пити.

Там не дають ні їсти, ні пити,
Заставляють роботу робити.

Заставляють роботу робити -
Тесаками сиру землю бити.

Шабельками канави копати...
Ой, тут же нам, братці, помирати!..

Ой, тут же нам, братці, помирати, -
Не знатиме ні батько, ні мати!"','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_684477'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_684477','Ой, зза гори чорна хмара встала','Ой, зза гори чорна хмара встала,
Тож не хмара, - молоді гусари.

Тож не хмара, - молоді гусари...
Попереду їдуть генерали.

Попереду їдуть генерали,
А за ними б''ють у барабани.

А за ними б''ють у барабани:
"Не журіться, молоді гусари!"

"Ой, як же нам, братці, не журитися, -
Посилає за Дунай цариця!

За Дунаєм тяжко-важко жити:
Там не дають ні їсти, ні пити.

Там не дають ні їсти, ні пити,
Заставляють роботу робити.

Заставляють роботу робити -
Тесаками сиру землю бити.

Шабельками канави копати...
Ой, тут же нам, братці, помирати!..

Ой, тут же нам, братці, помирати, -
Не знатиме ні батько, ні мати!"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_684477_l1','pisniua_684477','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_684757';
DELETE FROM song_versions WHERE song_id = 'pisniua_684757';
DELETE FROM songs_fts WHERE song_id = 'pisniua_684757';
DELETE FROM songs WHERE id = 'pisniua_684757';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_684757','Ой на Івана, та й на Купала','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой на Івана, та й на Купала
Там дівчинонька квіти збирала.

Квіти збирала, в пучечки клала,
До річки несла, в воду пускала

"Ой світи, сонце, світи та й не грій,
Щоб мій віночок та й не згорів.

Щоб мій віночок живим зостався
Та й миленькому в руки дістався".

Пливи, віночку, по синій хвилі
До тої хати, де жиє милий.

Поплив віночок та й за водою,
Серце дівоче забрав з собою.','[''pisni.org.ua'', ''cat:kupalski'', ''cat:narodni'', ''Купальські пісні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_684757'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_684757','Ой на Івана, та й на Купала','Ой на Івана, та й на Купала
Там дівчинонька квіти збирала.

Квіти збирала, в пучечки клала,
До річки несла, в воду пускала

"Ой світи, сонце, світи та й не грій,
Щоб мій віночок та й не згорів.

Щоб мій віночок живим зостався
Та й миленькому в руки дістався".

Пливи, віночку, по синій хвилі
До тої хати, де жиє милий.

Поплив віночок та й за водою,
Серце дівоче забрав з собою.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_684757_l1','pisniua_684757','YouTube','https://www.youtube.com/watch?v=gP79hN4EOwc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_684757_l2','pisniua_684757','YouTube','https://www.youtube.com/watch?v=8kckTz-q3DE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_684757_l3','pisniua_684757','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_684776';
DELETE FROM song_versions WHERE song_id = 'pisniua_684776';
DELETE FROM songs_fts WHERE song_id = 'pisniua_684776';
DELETE FROM songs WHERE id = 'pisniua_684776';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_684776','Якби в лісі гриби не родили','Українська народна пісня. Виконує: Театр пісні Джерела','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Якби в лісі гриби не родили,
Якби дівки по них не ходили.
А я чорнява, гарна, кучерява,        |
Грибів не збирала, з козаком стояла. | (2)

Якби в лісі не цвіла калина,
Якби в батька не росла дівчина.
А я чорнява, гарна, кучерява,
Росла, виростала, хлопців чарувала.

Якби дівки вечорами шили,
На вулицю гулять не ходили.
А я чорнява, гарна, кучерява,        |
Шили, вишивала, парубкам моргала.    | (2)

Ой ви хлопці не робіть мороки,
Є у мене хлопець синьоокий.
А я чорнява, гарна, кучерява,        |
Його цілувала, рушником в''язала.     | (3)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_684776'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_684776','Якби в лісі гриби не родили','Якби в лісі гриби не родили,
Якби дівки по них не ходили.
А я чорнява, гарна, кучерява,        |
Грибів не збирала, з козаком стояла. | (2)

Якби в лісі не цвіла калина,
Якби в батька не росла дівчина.
А я чорнява, гарна, кучерява,
Росла, виростала, хлопців чарувала.

Якби дівки вечорами шили,
На вулицю гулять не ходили.
А я чорнява, гарна, кучерява,        |
Шили, вишивала, парубкам моргала.    | (2)

Ой ви хлопці не робіть мороки,
Є у мене хлопець синьоокий.
А я чорнява, гарна, кучерява,        |
Його цілувала, рушником в''язала.     | (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_684776_l1','pisniua_684776','YouTube','https://www.youtube.com/watch?v=cDADDR1Bw7g','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_684776_l2','pisniua_684776','YouTube','https://www.youtube.com/watch?v=hDJdJQhQsjg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_684776_l3','pisniua_684776','YouTube','https://www.youtube.com/watch?v=cE-5GY9L1nQ','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_684776_l4','pisniua_684776','YouTube','https://www.youtube.com/watch?v=cZPH2k668lE','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_685848';
DELETE FROM song_versions WHERE song_id = 'pisniua_685848';
DELETE FROM songs_fts WHERE song_id = 'pisniua_685848';
DELETE FROM songs WHERE id = 'pisniua_685848';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_685848','Коли прийде рокувати','Українська народна пісня. Виконує: Чорні черешні','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Коли прийде рокувати
Стануть ми ся сльози лляти
Чорні брива, карі очі,     |
Кучеряві мої ночі,         |
Кучеряві мої ночі.         | (2)

Кучеряві гори й доли,
Кучерява, моя доле,
Чи то нічка, чи то днинка? |
Любка моя молоденька,      |
Любко-рибко солоденька.    | (2)

Я тя буду споминати,
Тому буду ся втішати,
Бо як прийду, одрокую,     |
Біле личко поцілую,        |
Біле личко поцілую.        | (2)

Машинонька заки лише,
Серця моє ту ся лише,
Наші серця, наші душі,     |
Най ся нігде не порушать,  |
Най ся нігде не порушать.  | (2)

Ой вийдеме на дорогу
Та помолимося Богу:
"Господичку наш ласкавий,  |
Одведи нас від лукавих,    |
Одведи нас від лукавих."   | (2)','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_685848'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_685848','Коли прийде рокувати','Коли прийде рокувати
Стануть ми ся сльози лляти
Чорні брива, карі очі,     |
Кучеряві мої ночі,         |
Кучеряві мої ночі.         | (2)

Кучеряві гори й доли,
Кучерява, моя доле,
Чи то нічка, чи то днинка? |
Любка моя молоденька,      |
Любко-рибко солоденька.    | (2)

Я тя буду споминати,
Тому буду ся втішати,
Бо як прийду, одрокую,     |
Біле личко поцілую,        |
Біле личко поцілую.        | (2)

Машинонька заки лише,
Серця моє ту ся лише,
Наші серця, наші душі,     |
Най ся нігде не порушать,  |
Най ся нігде не порушать.  | (2)

Ой вийдеме на дорогу
Та помолимося Богу:
"Господичку наш ласкавий,  |
Одведи нас від лукавих,    |
Одведи нас від лукавих."   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_686271';
DELETE FROM song_versions WHERE song_id = 'pisniua_686271';
DELETE FROM songs_fts WHERE song_id = 'pisniua_686271';
DELETE FROM songs WHERE id = 'pisniua_686271';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_686271','Свєта','Музика: Т.І.К. (Тік) Слова: Т.І.К. (Тік). Виконує: Т.І.К. (Тік)','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ти підійшла до мене нагло і красіво
Бажання стримати не було сили
Ми познакомились,сиділи щось болтали
А я запомнив тебе Свєта звали

Приспів
Свєта,а надворі було лєто
І як солодкі канхвєти
Твої поцілунки,Свєта
Лєто нам малювало портрети
Еротіки силуети
В кімнаті біля буфєта

А рано-вранці ти від мене утікла
Сказала:"Чао,мов у мене єсть діла"
Світило сонечко і море щось шептало
А я згадав,що тебе Свєта звали

Приспів
Свєта,а надворі було лєто
І як солодкі канхвєти
Твої поцілунки,Свєта
Свєта,а я купляв сігарєти
І побачив газєти
З моїми фотками,Свєта

Ти працювала у місцевій жовтій пресі
Про всіх подробності писала без жалю
Ти розказала всім який я сексі
І навіть то,шо я вночі хроплю

Приспів
Свєта,ну нафіга всьо ето
Ну причом тут канхвєти
І поцілунки,Свєта
Свєта,а я курив сігарєти
Я порвав всі газєти
Ну шо ти робиш,Свєта','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_686271'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_686271','Свєта','Ти підійшла до мене нагло і красіво
Бажання стримати не було сили
Ми познакомились,сиділи щось болтали
А я запомнив тебе Свєта звали

Приспів
Свєта,а надворі було лєто
І як солодкі канхвєти
Твої поцілунки,Свєта
Лєто нам малювало портрети
Еротіки силуети
В кімнаті біля буфєта

А рано-вранці ти від мене утікла
Сказала:"Чао,мов у мене єсть діла"
Світило сонечко і море щось шептало
А я згадав,що тебе Свєта звали

Приспів
Свєта,а надворі було лєто
І як солодкі канхвєти
Твої поцілунки,Свєта
Свєта,а я купляв сігарєти
І побачив газєти
З моїми фотками,Свєта

Ти працювала у місцевій жовтій пресі
Про всіх подробності писала без жалю
Ти розказала всім який я сексі
І навіть то,шо я вночі хроплю

Приспів
Свєта,ну нафіга всьо ето
Ну причом тут канхвєти
І поцілунки,Свєта
Свєта,а я курив сігарєти
Я порвав всі газєти
Ну шо ти робиш,Свєта');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_686271_l1','pisniua_686271','YouTube','https://www.youtube.com/watch?v=O6wdW1JWncg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_693151';
DELETE FROM song_versions WHERE song_id = 'pisniua_693151';
DELETE FROM songs_fts WHERE song_id = 'pisniua_693151';
DELETE FROM songs WHERE id = 'pisniua_693151';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_693151','Ой, дай, Боже','Українська народна пісня. Виконує: Дударик','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Речитатив:
Морозе, Морозе, йди до нас кутю їсти,
Морозе, Морозе, йди до нас на вечерю,
Як не йдеш, то не йди на жито-пшеницю,
Усяку пашницю.
Йди краще на моря, на ліси та на круті гори,
А нам шкоди не роби.
Чорні бурі та злії вітри, приходьте до нас
На Святу вечерю, та коли тепер не прийдете
На дари Божі, на страви ситі, на горілки палені,
На все велике добро, на яке ми вас просимо,
То не приходьте до нас у літі та не робіть нам
Шкоди на ярині і житі.

Ой, встало рано, рано,
Нам на зустріч з трону
Ой, дай, Боже! Ой, дай, Боже!
В корзно багряне вбране
Й в золоту корону
Ой, дай, Боже! Ой, дай, Боже!
Гей, сонце, гей!
Ой, дай, Боже, лад дай, Боже!
Ой, дай, Боже, лад дай, Боже!

Ой, в короні зі злота,
В червоних чоботях
Ой, дай, Боже! Ой, дай, Боже!
Ой, місяць із доньками,
Срібними зірками.
Ой, дай, Боже! Ой, дай, Боже!
Гей, славенно
Ой, дай, Боже, лад дай, Боже!
Ой, дай, Боже, лад дай, Боже!

Ой, ґаздо і ґаздине,
І дрібонькі діти
Ой, дай, Боже! Ой, дай, Боже!
Ой віншуємо нині
Ґаразду і літа.
Ой, дай, Боже! Ой, дай, Боже!
Гей, многая.
Ой, дай, Боже, лад дай, Боже!
Ой, дай, Боже, лад дай, Боже!','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_693151'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_693151','Ой, дай, Боже','Речитатив:
Морозе, Морозе, йди до нас кутю їсти,
Морозе, Морозе, йди до нас на вечерю,
Як не йдеш, то не йди на жито-пшеницю,
Усяку пашницю.
Йди краще на моря, на ліси та на круті гори,
А нам шкоди не роби.
Чорні бурі та злії вітри, приходьте до нас
На Святу вечерю, та коли тепер не прийдете
На дари Божі, на страви ситі, на горілки палені,
На все велике добро, на яке ми вас просимо,
То не приходьте до нас у літі та не робіть нам
Шкоди на ярині і житі.

Ой, встало рано, рано,
Нам на зустріч з трону
Ой, дай, Боже! Ой, дай, Боже!
В корзно багряне вбране
Й в золоту корону
Ой, дай, Боже! Ой, дай, Боже!
Гей, сонце, гей!
Ой, дай, Боже, лад дай, Боже!
Ой, дай, Боже, лад дай, Боже!

Ой, в короні зі злота,
В червоних чоботях
Ой, дай, Боже! Ой, дай, Боже!
Ой, місяць із доньками,
Срібними зірками.
Ой, дай, Боже! Ой, дай, Боже!
Гей, славенно
Ой, дай, Боже, лад дай, Боже!
Ой, дай, Боже, лад дай, Боже!

Ой, ґаздо і ґаздине,
І дрібонькі діти
Ой, дай, Боже! Ой, дай, Боже!
Ой віншуємо нині
Ґаразду і літа.
Ой, дай, Боже! Ой, дай, Боже!
Гей, многая.
Ой, дай, Боже, лад дай, Боже!
Ой, дай, Боже, лад дай, Боже!');
DELETE FROM song_links WHERE song_id = 'pisniua_693776';
DELETE FROM song_versions WHERE song_id = 'pisniua_693776';
DELETE FROM songs_fts WHERE song_id = 'pisniua_693776';
DELETE FROM songs WHERE id = 'pisniua_693776';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_693776','Колискова для матері','Музика: Богдан-Юрій Янівський Слова: Богдан Стельмах. Виконує: Богдан Косопуд','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Шуміло десять яворів
Літаками в піднебесся.
Ішли сини від матерів,
А від нашої, нашої десять,
А від нашої сивої, сивої,
Ой щоднини по синові, синові...
Десять довгих, тривожних прощань
Пригортали її до плеча...

"Люлі, синку, люлі!
Промінь сонця згас.
Хай ворожі кулі
Оминають вас".

Явори поснулі мріють просто неба
Та при битій дорозі,
Та при битій дорозі...
Ішло дивізій і полків
За життя Батьківщини.
Упало дев''ять юнаків і десятий,
Десятий загинув.
По одному і парами, парами
Хлопці падали, падали, падали...
Не на шлях під осіннім дощем -
Впали мамі своїй на плече...

"Люлі, мамо, люлі!
Промінь сонця згас.
Ой ворожі кулі
Не минули нас".

Явори поснулі мріють просто неба
Та при битій дорозі,
Та при битій дорозі...
Шумлять дерева в білий світ
До небес, до розстань...
Виходить мати до воріт,
А сини, а сини не вертають.
Лиш дощами і холодом, холодом
Попід вікнами ходимо, ходимо,
А як ніч, а як ніч настає,
Біля матері разом стаєм...

"Люлі, мамо, люлі!
Промінь сонця згас.
Ой, ворожі кулі
Не минули нас".

Явори поснулі мріють просто неба
Та при битій дорозі,
Та при битій дорозі...
Закують зозулі!
Іншим жити треба.
Ранок став на порозі!
Ранок став на порозі!','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_693776'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_693776','Колискова для матері','Шуміло десять яворів
Літаками в піднебесся.
Ішли сини від матерів,
А від нашої, нашої десять,
А від нашої сивої, сивої,
Ой щоднини по синові, синові...
Десять довгих, тривожних прощань
Пригортали її до плеча...

"Люлі, синку, люлі!
Промінь сонця згас.
Хай ворожі кулі
Оминають вас".

Явори поснулі мріють просто неба
Та при битій дорозі,
Та при битій дорозі...
Ішло дивізій і полків
За життя Батьківщини.
Упало дев''ять юнаків і десятий,
Десятий загинув.
По одному і парами, парами
Хлопці падали, падали, падали...
Не на шлях під осіннім дощем -
Впали мамі своїй на плече...

"Люлі, мамо, люлі!
Промінь сонця згас.
Ой ворожі кулі
Не минули нас".

Явори поснулі мріють просто неба
Та при битій дорозі,
Та при битій дорозі...
Шумлять дерева в білий світ
До небес, до розстань...
Виходить мати до воріт,
А сини, а сини не вертають.
Лиш дощами і холодом, холодом
Попід вікнами ходимо, ходимо,
А як ніч, а як ніч настає,
Біля матері разом стаєм...

"Люлі, мамо, люлі!
Промінь сонця згас.
Ой, ворожі кулі
Не минули нас".

Явори поснулі мріють просто неба
Та при битій дорозі,
Та при битій дорозі...
Закують зозулі!
Іншим жити треба.
Ранок став на порозі!
Ранок став на порозі!');
DELETE FROM song_links WHERE song_id = 'pisniua_694246';
DELETE FROM song_versions WHERE song_id = 'pisniua_694246';
DELETE FROM songs_fts WHERE song_id = 'pisniua_694246';
DELETE FROM songs WHERE id = 'pisniua_694246';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_694246','Сам пан у злоті','Українська народна пісня. Виконує: Бурдон','uk','ukraine_before_1917',NULL,NULL,'http://burdon.lviv.ua','давня гуцульська коляда з польових записів Остапа Костюка','Сам пан, у злоті єго челядочка,
Гордий і пишний гречний леґіню,
У злоті
Гарно же собі ти починаєш,
Конями граєш, мечем махаєш
Та й на Київ вже виступаєш.

Та й у неділю та всі міщани
Зачєли ж они в бубні бубніти,
В бубні бубніти, дзвони дзвонити.
Та й зачели раду робити -
Єкі же дари сему пану дати.
Видали ж йему коника в сідлі,
Коника в сідлі, стремена срібні.

Ой він на тото тай не дививсі
Тай ще гірше він розлютивсі,
Конями грає, мечем махає
Та й до Києва вже приступає.

Як тото вчули усі міщани,
Зачєли ж они в бубни бубніти,
В бубни бубніти, в дзвони дзвонити
Та й зачели знов сі сходити.

Радочку радити, думку гадати -
Єкі же дари й сему пану дати.
Видали ж йему й коника в сідлі,
Коника в сідлі, стремена срібні.

Тай ще до цего дівчину в вінци.
Ой він на тото тай подививсі
Та й до дівчинки він прихиливсі,
Дівчинку любу повів до шлюбу.

Горох ізїли тай зелененьке,
Кому весіллє та й веселеньке,
Вам колідочка, нам пива бочка,
Бочка і бочка, хоч коновочка.

Та й сего смішку хоч по келішку,
Вінчуємо ж ті щасті-здоров''є,
Щасті-здоров''я та й з родичами,
Зо всіма твоїми приятелями
У злоті.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_694246'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_694246','Сам пан у злоті','Сам пан, у злоті єго челядочка,
Гордий і пишний гречний леґіню,
У злоті
Гарно же собі ти починаєш,
Конями граєш, мечем махаєш
Та й на Київ вже виступаєш.

Та й у неділю та всі міщани
Зачєли ж они в бубні бубніти,
В бубні бубніти, дзвони дзвонити.
Та й зачели раду робити -
Єкі же дари сему пану дати.
Видали ж йему коника в сідлі,
Коника в сідлі, стремена срібні.

Ой він на тото тай не дививсі
Тай ще гірше він розлютивсі,
Конями грає, мечем махає
Та й до Києва вже приступає.

Як тото вчули усі міщани,
Зачєли ж они в бубни бубніти,
В бубни бубніти, в дзвони дзвонити
Та й зачели знов сі сходити.

Радочку радити, думку гадати -
Єкі же дари й сему пану дати.
Видали ж йему й коника в сідлі,
Коника в сідлі, стремена срібні.

Тай ще до цего дівчину в вінци.
Ой він на тото тай подививсі
Та й до дівчинки він прихиливсі,
Дівчинку любу повів до шлюбу.

Горох ізїли тай зелененьке,
Кому весіллє та й веселеньке,
Вам колідочка, нам пива бочка,
Бочка і бочка, хоч коновочка.

Та й сего смішку хоч по келішку,
Вінчуємо ж ті щасті-здоров''є,
Щасті-здоров''я та й з родичами,
Зо всіма твоїми приятелями
У злоті.');
DELETE FROM song_links WHERE song_id = 'pisniua_698297';
DELETE FROM song_versions WHERE song_id = 'pisniua_698297';
DELETE FROM songs_fts WHERE song_id = 'pisniua_698297';
DELETE FROM songs WHERE id = 'pisniua_698297';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_698297','Ой гула, гула крутая гора','Українська народна пісня. Виконує: Марія Бурмака','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой гула, гула крутая гора
Щедрий вечір!
Ой гула, гула крутая гора
Добрий вечір!

Що й не зродила шовкова трава
Щедрий вечір!
Що й не зродила шовкова трава
Добрий вечір!

А й уродило та й гірке вино
Щедрий вечір!
А й уродило та й гірке вино
Добрий вечір!

Чия то дочка вино стерегла?
Щедрий вечір!
Нам, колядникам, вино принесла.
Добрий вечір!

Вино принесла красна панночка.
Щедрий вечір!
Красна панночка дівка Манічка.
Добрий вечір!

Пан-господарю, гостей зустрічай,
Щедрий вечір!
Гостей зустрічай, столи застеляй.
Добрий вечір!

І у гаразді ти бувай здоров!
Щедрий вечір!
А на другий рік прийдемо ми знов!
Добрий вечір!','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_698297'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_698297','Ой гула, гула крутая гора','Ой гула, гула крутая гора
Щедрий вечір!
Ой гула, гула крутая гора
Добрий вечір!

Що й не зродила шовкова трава
Щедрий вечір!
Що й не зродила шовкова трава
Добрий вечір!

А й уродило та й гірке вино
Щедрий вечір!
А й уродило та й гірке вино
Добрий вечір!

Чия то дочка вино стерегла?
Щедрий вечір!
Нам, колядникам, вино принесла.
Добрий вечір!

Вино принесла красна панночка.
Щедрий вечір!
Красна панночка дівка Манічка.
Добрий вечір!

Пан-господарю, гостей зустрічай,
Щедрий вечір!
Гостей зустрічай, столи застеляй.
Добрий вечір!

І у гаразді ти бувай здоров!
Щедрий вечір!
А на другий рік прийдемо ми знов!
Добрий вечір!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_698297_l1','pisniua_698297','YouTube','https://www.youtube.com/watch?v=BBFuolERDdk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_69757';
DELETE FROM song_versions WHERE song_id = 'pisniua_69757';
DELETE FROM songs_fts WHERE song_id = 'pisniua_69757';
DELETE FROM songs WHERE id = 'pisniua_69757';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_69757','Мила моя','Музика: Володимир Івасюк Слова: Володимир Івасюк. Виконує: Василь Зінкевич, Володимир Івасюк, Карпати','uk','ukraine_1991',NULL,NULL,'http://ivasyuk.domivka.net/',NULL,'Я піду в далекі гори
У вечірнюю годину
І попрошу вітра зворів,
Щоб не спав, не спав до днини.

Щоб летів на вільних крилах
У широкі полонини
І приніс до ранку квіти,
Що так люблять очі сині.

Приспів:
Мила моя, люба моя,
Квіте ясен цвіт,
Я несу в очах до тебе
Весь блакитний світ.
Я несу в устах цілунки,
Радісні пісні,
А в руках несу я ласку
Й квіти весняні.

Якщо ж вітер полетіти
В полонини не захоче,
Все одно знайду я квіти,
Що так люблять сині очі.

Перейду я бистрі ріки
І піднімусь аж за хмари,
І шляхи мені покажуть
Твоя врода, твої чари.

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_69757'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_69757','Мила моя','Я піду в далекі гори
У вечірнюю годину
І попрошу вітра зворів,
Щоб не спав, не спав до днини.

Щоб летів на вільних крилах
У широкі полонини
І приніс до ранку квіти,
Що так люблять очі сині.

Приспів:
Мила моя, люба моя,
Квіте ясен цвіт,
Я несу в очах до тебе
Весь блакитний світ.
Я несу в устах цілунки,
Радісні пісні,
А в руках несу я ласку
Й квіти весняні.

Якщо ж вітер полетіти
В полонини не захоче,
Все одно знайду я квіти,
Що так люблять сині очі.

Перейду я бистрі ріки
І піднімусь аж за хмари,
І шляхи мені покажуть
Твоя врода, твої чари.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_69757_l1','pisniua_69757','YouTube','https://www.youtube.com/watch?v=V3i7Pr9S1G0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_69757_l2','pisniua_69757','YouTube','https://www.youtube.com/watch?v=XolO5uz8e34','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_69757_l3','pisniua_69757','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_6940';
DELETE FROM song_versions WHERE song_id = 'pisniua_6940';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6940';
DELETE FROM songs WHERE id = 'pisniua_6940';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6940','Гей, браття опришки','Музика: народна Слова: Микола Устиянович. Виконує: Ансамбль Львівського Університету "Черемош", Журборіз, Василь Лютий','uk','ukraine_1991',NULL,NULL,'1. Пісневир: Молодіжний співаник.— Львів, 2001 2. Книга "Пісні "Черемоша"','Текст взято з джерела 1, суттєво виправлено й доповнено за джерелом 2. * Тут у джерелі 1 було інакше: До ватри доверште ще дров. Акорди підібрано на слух за нотами. Оригінальна тональність: Em. Підбір акордів: bohdanko (pisni.org.ua)','Гей, браття опришки, налийте горілки,
До ватри довержте ще дров. *
Настрійте ми горло голосом сопілки,
А я вам співати готов.
Гуляймо ми, браття, в угорській границі.
Годі нас дігнати конем.
Одіж ми дістанем в жидівській крамниці,
А жида до дверей приб''єм.
Де гори та бори, яруги скалисті,
Там є наша воля і власть.
Маємо що пити, маємо що їсти,
Любощів гуцулка нам дасть.
Гуляймо ми, браття, де трави зелені,
Де росов вкривається лист.
По корчах сплетених, де сосна звалена,
Не знайде нас, певно, і біс.
Гуляймо ми, браття, бо більше не будем,
Не будем гуляти ми тут.
Як сніги упадуть - голови складемо,
Не дадуть співати нам тут.
Гуляймо ми, браття, поки ще весело
І поки ще яснії дні.
Краще раз злетіти соколом у небо,
Аніж вічно жити в ярмі.
Акорди (у тональності Em):
Гей, браття опришки, налийте горілки,
До ватри довержте ще дров.
Настрійте ми горло голосом сопілки,  |
А я вам співати готов.               | (2)
Акорди (у тональності Hm):
Гей, браття опришки, налийте горілки,
До ватри довержте ще дров.
Настрійте ми горло голосом сопілки,  |
А я вам співати готов.               | (2)','[''pisni.org.ua'', ''cat:huculski'', ''cat:suspilno-politychni'', ''Гуцульські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6940'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6940','Гей, браття опришки','Гей, браття опришки, налийте горілки,
До ватри довержте ще дров. *
Настрійте ми горло голосом сопілки,
А я вам співати готов.
Гуляймо ми, браття, в угорській границі.
Годі нас дігнати конем.
Одіж ми дістанем в жидівській крамниці,
А жида до дверей приб''єм.
Де гори та бори, яруги скалисті,
Там є наша воля і власть.
Маємо що пити, маємо що їсти,
Любощів гуцулка нам дасть.
Гуляймо ми, браття, де трави зелені,
Де росов вкривається лист.
По корчах сплетених, де сосна звалена,
Не знайде нас, певно, і біс.
Гуляймо ми, браття, бо більше не будем,
Не будем гуляти ми тут.
Як сніги упадуть - голови складемо,
Не дадуть співати нам тут.
Гуляймо ми, браття, поки ще весело
І поки ще яснії дні.
Краще раз злетіти соколом у небо,
Аніж вічно жити в ярмі.
Акорди (у тональності Em):
Гей, браття опришки, налийте горілки,
До ватри довержте ще дров.
Настрійте ми горло голосом сопілки,  |
А я вам співати готов.               | (2)
Акорди (у тональності Hm):
Гей, браття опришки, налийте горілки,
До ватри довержте ще дров.
Настрійте ми горло голосом сопілки,  |
А я вам співати готов.               | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6940_l1','pisniua_6940','YouTube','https://www.youtube.com/watch?v=pH_CEqUKiuU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6940_l2','pisniua_6940','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_698252';
DELETE FROM song_versions WHERE song_id = 'pisniua_698252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_698252';
DELETE FROM songs WHERE id = 'pisniua_698252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_698252','Ой у полі при дорозі','Українська народна пісня. Виконує: Марія Бурмака','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Добрий вечір, щедрий вечір,
Добрий вечір, щедрий вечір.

Ой у полі при дорозі.
Щедрий вечір, добрий вечір!

Там Василько сіно косить.
Щедрий вечір, добрий вечір!

Сіно косить, коню носить.
Щедрий вечір, добрий вечір!

Коню носить, коня просить.
Щедрий вечір, добрий вечір!

Коню носить, коня просить.
Щедрий вечір, добрий вечір!
Буде йому три дорозі.
Щедрий вечір, добрий вечір!

А що перша - до батечка.
Щедрий вечір, добрий вечір!

А другая - до матінки.
Щедрий вечір, добрий вечір!

А що третя - до дівчини.
Щедрий вечір, добрий вечір!

До дівчини по хусточку.
Щедрий вечір, добрий вечір!

До матінки по шапочку.
Щедрий вечір, добрий вечір!

До батечка по сорочку.
Щедрий вечір, добрий вечір!

Ой у полі при дорозі.
Щедрий вечір, добрий вечір!

Там Василько сіно косить.
Щедрий вечір, добрий вечір!

Коню носить, коня просить.
Щедрий вечір, добрий вечір!

Буде йому три дорозі.
Щедрий вечір, добрий вечір!

Добрий вечір, щедрий вечір,
Добрий вечір, щедрий вечір.','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_698252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_698252','Ой у полі при дорозі','Добрий вечір, щедрий вечір,
Добрий вечір, щедрий вечір.

Ой у полі при дорозі.
Щедрий вечір, добрий вечір!

Там Василько сіно косить.
Щедрий вечір, добрий вечір!

Сіно косить, коню носить.
Щедрий вечір, добрий вечір!

Коню носить, коня просить.
Щедрий вечір, добрий вечір!

Коню носить, коня просить.
Щедрий вечір, добрий вечір!
Буде йому три дорозі.
Щедрий вечір, добрий вечір!

А що перша - до батечка.
Щедрий вечір, добрий вечір!

А другая - до матінки.
Щедрий вечір, добрий вечір!

А що третя - до дівчини.
Щедрий вечір, добрий вечір!

До дівчини по хусточку.
Щедрий вечір, добрий вечір!

До матінки по шапочку.
Щедрий вечір, добрий вечір!

До батечка по сорочку.
Щедрий вечір, добрий вечір!

Ой у полі при дорозі.
Щедрий вечір, добрий вечір!

Там Василько сіно косить.
Щедрий вечір, добрий вечір!

Коню носить, коня просить.
Щедрий вечір, добрий вечір!

Буде йому три дорозі.
Щедрий вечір, добрий вечір!

Добрий вечір, щедрий вечір,
Добрий вечір, щедрий вечір.');
DELETE FROM song_links WHERE song_id = 'pisniua_69940';
DELETE FROM song_versions WHERE song_id = 'pisniua_69940';
DELETE FROM songs_fts WHERE song_id = 'pisniua_69940';
DELETE FROM songs WHERE id = 'pisniua_69940';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_69940','У долі своя весна','Музика: Володимир Івасюк Слова: Юрій Рибчинський. Виконує: Софія Ротару, Лілія Сандулеса, Ані Лорак, Наталка Карпа','uk','ukraine_1991',NULL,NULL,'http://ivasyuk.domivka.net/',NULL,'Ти вернешся колись в той перший день,
Ти вернешся і все згадаєш знов.
Я хочу, щоб збулись слова пісень,
Я хочу, щоб збулась любов.

Приспів:
У тебе любов — одна.
У мене любов — одна.
Крізь роки веде вона
У той найперший день.
У щастя — своя струна,
У долі — своя весна.
Хай буде завжди вона
В полоні у пісень.

Сім кроків до весни — та знову сніг,
Той ніжний білий сніг вінчає нас.
Я хочу, щоб збулись зимові сни,
Я хочу, щоб любов збулась.

Приспів.

Нехай іще зима — та все одно
Я двері відчиню своїй весні.
І щастя прилетить в моє вікно
І сонце принесе мені.

Приспів','[''pisni.org.ua'', ''cat:lirychni'', ''cat:nostalgia'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_69940'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_69940','У долі своя весна','Ти вернешся колись в той перший день,
Ти вернешся і все згадаєш знов.
Я хочу, щоб збулись слова пісень,
Я хочу, щоб збулась любов.

Приспів:
У тебе любов — одна.
У мене любов — одна.
Крізь роки веде вона
У той найперший день.
У щастя — своя струна,
У долі — своя весна.
Хай буде завжди вона
В полоні у пісень.

Сім кроків до весни — та знову сніг,
Той ніжний білий сніг вінчає нас.
Я хочу, щоб збулись зимові сни,
Я хочу, щоб любов збулась.

Приспів.

Нехай іще зима — та все одно
Я двері відчиню своїй весні.
І щастя прилетить в моє вікно
І сонце принесе мені.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_69940_l1','pisniua_69940','YouTube','https://www.youtube.com/watch?v=kHmoqUtBlao','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_69940_l2','pisniua_69940','YouTube','https://www.youtube.com/watch?v=1hcka1mRMmM','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_69940_l3','pisniua_69940','YouTube','https://www.youtube.com/watch?v=8Ui78gsb4XA','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_69940_l4','pisniua_69940','YouTube','https://www.youtube.com/watch?v=MTnOpGSUtuk','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_698555';
DELETE FROM song_versions WHERE song_id = 'pisniua_698555';
DELETE FROM songs_fts WHERE song_id = 'pisniua_698555';
DELETE FROM songs WHERE id = 'pisniua_698555';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_698555','Колискова','(Спала природа під ковдрою білою...). Музика: Марія Бурмака Слова: Олександр Олесь. Виконує: Марія Бурмака','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Спала природа
Під ковдрою білою,
Снилось їй море
Наскрізь прозоре,
Дно його ясно-зелене,
Хвилі чи хмари над ним.

Снились їй ночі
В серпанках сріблястих,
Зір тихосяйні лампади,
Крики пташечі, зітхання,
Шелест шовкових степів.

Ось вони стеляться,
Стеляться, стеляться.
Спала природа,
А з неба Мірошник,
Руки простягши над нею,
Сіяв із хмари муку','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_698555'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_698555','Колискова','Спала природа
Під ковдрою білою,
Снилось їй море
Наскрізь прозоре,
Дно його ясно-зелене,
Хвилі чи хмари над ним.

Снились їй ночі
В серпанках сріблястих,
Зір тихосяйні лампади,
Крики пташечі, зітхання,
Шелест шовкових степів.

Ось вони стеляться,
Стеляться, стеляться.
Спала природа,
А з неба Мірошник,
Руки простягши над нею,
Сіяв із хмари муку');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_698555_l1','pisniua_698555','http://burmaka.com.ua/al_vesno.htm','http://burmaka.com.ua/al_vesno.htm','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7103565';
DELETE FROM song_versions WHERE song_id = 'pisniua_7103565';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7103565';
DELETE FROM songs WHERE id = 'pisniua_7103565';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7103565','Богородице, до Тебе прибігаємо','Музика: Дмитро Бортнянський Слова: народні. Виконує: Хор імені Григорія Верьовки','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Богородице,
До Тебе нині прибігаєм ми грішнії
І на коліна припадаємо,
Спасіння благаючи.

Владичице, поможи,
Змилосердившись над нами.

Рятуй, бо загибаєм!
Рятуй, бо загибаєм!
Рятуй нас, погибаємо!

Від множества наших провин,
Від множества наших провин,
Від множества наших провин.

Не відпусти дітей своїх,
На тебе єдину надію маємо.

Пресвятая Богодице, спаси нас!
Пресвятая Богодице, спаси нас!
Пресвятая Богодице, спаси нас!','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7103565'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7103565','Богородице, до Тебе прибігаємо','Богородице,
До Тебе нині прибігаєм ми грішнії
І на коліна припадаємо,
Спасіння благаючи.

Владичице, поможи,
Змилосердившись над нами.

Рятуй, бо загибаєм!
Рятуй, бо загибаєм!
Рятуй нас, погибаємо!

Від множества наших провин,
Від множества наших провин,
Від множества наших провин.

Не відпусти дітей своїх,
На тебе єдину надію маємо.

Пресвятая Богодице, спаси нас!
Пресвятая Богодице, спаси нас!
Пресвятая Богодице, спаси нас!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7103565_l1','pisniua_7103565','YouTube','https://www.youtube.com/watch?v=CxDe1nGzzfc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7119464';
DELETE FROM song_versions WHERE song_id = 'pisniua_7119464';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7119464';
DELETE FROM songs WHERE id = 'pisniua_7119464';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7119464','Очерет мені був за колиску','Музика: Д. Фальківський, народна Слова: Д. Фальківський. Виконує: Валерій Маренич','uk','ukraine_1991',NULL,NULL,'Аудіоальбом: Валерій Маренич, Пісні волинських авторів (2005)','Частину куплетів цієї пісні, я знав ще з дитинства. Мій батько співав її ще за Польщі. був дещо інший варіант тексту. Під цю мелодію танцювали, а називали ще її "Поліський фокстрот". Згодом протягом багатьох років я намагався знайти її у збірниках, народних піснях, та дарма. Лише рік тому купив цей альбом на Хрещатику у виконанні Валерія Маренича. Згодом надішлю вам і музичний додаток.','Очерет мені був за колиску,
в болотах я родився і зріс,
я люблю свою хату поліську,
я люблю свій зажурений ліс.

Що там тропіки, пишні Пампаси,
загляніть но у душу до нас,
я оддав би за неї одразу
і Тібет, і Урал, і Кавказ.

А поліські похмурні болота
пів-Полісся вода зайняла,
тільки де-не-де хутір самотній,
тільки де-не-де клапоть села.

І не дивно, що любимо змалку
буйні води і буйні пісні,
наше серце - то серце рибалки,
а життя наше - книга борні.

Хоч у злиднях живемо, у бруді,
та привілля яке по весні,
коли виставиш вітрові груди
і летиш, і летиш на човні.

А вода і хлюпоче, і плаче,
захлинається в лютій злобі,
ну скажіть, в кого серце гаряче,
як весну, по весні не любить.

І укриють безкраї простори
білокурі чайки і човни,
тільки слухай, як води говорять
в буйнім заспіві свята весни.

Тільки слухай, як хвилі хлюпочуть,
як нестримано повінь гуде,
зайвий рух - і на обрій заскочиш,
зайвий рух - і навік пропадеш.

А коли зарегоче негода,
отоді не кепкуй із води,
як для неї чортяки не вгодиш,
ох, зазнаєш ти брате біди.

Так гартує природа до бою
нас із самих малесеньких літ,
ми зрослись, побратались з водою
і живемо, як вміємо жить','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7119464'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7119464','Очерет мені був за колиску','Очерет мені був за колиску,
в болотах я родився і зріс,
я люблю свою хату поліську,
я люблю свій зажурений ліс.

Що там тропіки, пишні Пампаси,
загляніть но у душу до нас,
я оддав би за неї одразу
і Тібет, і Урал, і Кавказ.

А поліські похмурні болота
пів-Полісся вода зайняла,
тільки де-не-де хутір самотній,
тільки де-не-де клапоть села.

І не дивно, що любимо змалку
буйні води і буйні пісні,
наше серце - то серце рибалки,
а життя наше - книга борні.

Хоч у злиднях живемо, у бруді,
та привілля яке по весні,
коли виставиш вітрові груди
і летиш, і летиш на човні.

А вода і хлюпоче, і плаче,
захлинається в лютій злобі,
ну скажіть, в кого серце гаряче,
як весну, по весні не любить.

І укриють безкраї простори
білокурі чайки і човни,
тільки слухай, як води говорять
в буйнім заспіві свята весни.

Тільки слухай, як хвилі хлюпочуть,
як нестримано повінь гуде,
зайвий рух - і на обрій заскочиш,
зайвий рух - і навік пропадеш.

А коли зарегоче негода,
отоді не кепкуй із води,
як для неї чортяки не вгодиш,
ох, зазнаєш ти брате біди.

Так гартує природа до бою
нас із самих малесеньких літ,
ми зрослись, побратались з водою
і живемо, як вміємо жить');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7119464_l1','pisniua_7119464','YouTube','https://www.youtube.com/watch?v=iH6n0E9vC7s','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7119464_l2','pisniua_7119464','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_712060';
DELETE FROM song_versions WHERE song_id = 'pisniua_712060';
DELETE FROM songs_fts WHERE song_id = 'pisniua_712060';
DELETE FROM songs WHERE id = 'pisniua_712060';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_712060','Коли заснули сині гори','Музика: Анатолій Кос-Анатольський Слова: Анатолій Кос-Анатольський. Виконує: Назарій Яремчук, Жанна Боднарук','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ніч над Карпатами темно-крилатими
Шовками тихо зліта.
Серце залюблене, в мріях загублене,
Жде чогось, кличе й пита:

Приспів:
Чому, коли заснули сині гори,
Якось не до сну мені?
Чому, коли на небі срібні зорі,
Мрію в тишині нічній?
А між синіх гір в сяйві срібних зір
Бродить любов моя.
Тому, коли заснули сині гори,
Не заснем ні ти, ні я.

Нічка кінчається, зірка ховається,
Будиться шелест в гаю.
Тільки залюбленим, в мріях загубленим,
Мариться слово "люблю".

Приспів:
Чому, коли заснули сині гори,
Якось не до сну мені?
Чому, коли на небі срібні зорі,
Мрію в тишині нічній?
Кличу поміж гір в сяйві срібних зір:
Де ти, любов моя?
Тому, коли заснули сині гори,
Не заснем ні ти, ні я','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_712060'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_712060','Коли заснули сині гори','Ніч над Карпатами темно-крилатими
Шовками тихо зліта.
Серце залюблене, в мріях загублене,
Жде чогось, кличе й пита:

Приспів:
Чому, коли заснули сині гори,
Якось не до сну мені?
Чому, коли на небі срібні зорі,
Мрію в тишині нічній?
А між синіх гір в сяйві срібних зір
Бродить любов моя.
Тому, коли заснули сині гори,
Не заснем ні ти, ні я.

Нічка кінчається, зірка ховається,
Будиться шелест в гаю.
Тільки залюбленим, в мріях загубленим,
Мариться слово "люблю".

Приспів:
Чому, коли заснули сині гори,
Якось не до сну мені?
Чому, коли на небі срібні зорі,
Мрію в тишині нічній?
Кличу поміж гір в сяйві срібних зір:
Де ти, любов моя?
Тому, коли заснули сині гори,
Не заснем ні ти, ні я');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_712060_l1','pisniua_712060','YouTube','https://www.youtube.com/watch?v=SJ46JC-GQ8g','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_712060_l2','pisniua_712060','YouTube','https://www.youtube.com/watch?v=DGxWRPpqMlM','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_712060_l3','pisniua_712060','YouTube','https://www.youtube.com/watch?v=tlZl5zOzBLA','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_712060_l4','pisniua_712060','YouTube','https://www.youtube.com/watch?v=6gWwdnWwxak','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_712060_l5','pisniua_712060','YouTube','https://www.youtube.com/watch?v=z7yeMVVBMwU','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_712060_l6','pisniua_712060','YouTube','https://www.youtube.com/watch?v=PLPMCIVtM5k','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_712060_l7','pisniua_712060','YouTube','https://www.youtube.com/watch?v=mnUzMMPh2Yg','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_712060_l8','pisniua_712060','YouTube','https://www.youtube.com/watch?v=Pe8QGp3d7rI','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_712060_l9','pisniua_712060','YouTube','https://www.youtube.com/watch?v=vVf2s52goDQ','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_712060_l10','pisniua_712060','YouTube','https://www.youtube.com/watch?v=sKsBdcwKYgg','video',NULL,10);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_712060_l11','pisniua_712060','http://forums.vkmonline.com/showthread.php?t=36369','http://forums.vkmonline.com/showthread.php?t=36369','external',NULL,11);
DELETE FROM song_links WHERE song_id = 'pisniua_7124262';
DELETE FROM song_versions WHERE song_id = 'pisniua_7124262';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7124262';
DELETE FROM songs WHERE id = 'pisniua_7124262';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7124262','Ой не коси, мій татойко, сіна','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісні з Волині, Музична Україна, Київ - 1970','Косарська пісня, записана в с. Буцин Старовижівського району від Д. В. Троцевич і Г. М. Созонник','Ой не коси, мій татойко, сіна,
Бо заросися по коліна.

Нехай тії косарики косять,
Которії набік шапойку носять.

Косарики косять, а вітьор повіває,
Зелена трава од коси вилягає.','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7124262'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7124262','Ой не коси, мій татойко, сіна','Ой не коси, мій татойко, сіна,
Бо заросися по коліна.

Нехай тії косарики косять,
Которії набік шапойку носять.

Косарики косять, а вітьор повіває,
Зелена трава од коси вилягає.');
DELETE FROM song_links WHERE song_id = 'pisniua_713941';
DELETE FROM song_versions WHERE song_id = 'pisniua_713941';
DELETE FROM songs_fts WHERE song_id = 'pisniua_713941';
DELETE FROM songs WHERE id = 'pisniua_713941';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_713941','Гай, зелений гай','Музика: Олександр Злотник Слова: Юрій Рибчинський. Виконує: Назарій Яремчук, Смерічка, Таїсія Повалій, Василь Зінкевич, Зоряна Юдін','uk','ukraine_1991',NULL,NULL,'Українські пісні/ уклад. О.В.Зав''язкін. - Донецьк:"Бао", 2003. - 512 с.','Am7/5- [x 0 1 0 1 3]','Gm
Там, де зустрів тебе, там шумить і нині
D7
Гай, зелений гай
Там полюбив, як я, твої очі сині
Гай, зелений гай
Gm
Там полюбив, як я, твій веселий голос
D7
Гай, зелений гай
Cm
Там ти спитала: "що буде з нами, любий,
Як мине розмай?"
Приспів:
Gm
Ти щаслива будеш,    (3)
Cm7
Грай, музико, грай!
Am7/5-
А мене забудеш,
А мене забудеш,
D7
А мене забудеш
Gm
Грай, музико, грай!
Gm
Можеш все забути     (3)
Cm7
Тільки пам''ятай
Am7/5-
Зоряну дорогу,
Зоряну дорогу,
Зоряну дорогу
В гай, зелений гай.
Як я тебе кохав -
Пам''ятати буде гай, зелений гай,
Що я тобі казав -
Не розкаже людям гай, зелений гай.
А як прийдуть осінні, холодні хмари
В гай, зелений гай
Хай на твоїм весіллі
Лунає пісня, ллється через край.
Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_713941'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_713941','Гай, зелений гай','Gm
Там, де зустрів тебе, там шумить і нині
D7
Гай, зелений гай
Там полюбив, як я, твої очі сині
Гай, зелений гай
Gm
Там полюбив, як я, твій веселий голос
D7
Гай, зелений гай
Cm
Там ти спитала: "що буде з нами, любий,
Як мине розмай?"
Приспів:
Gm
Ти щаслива будеш,    (3)
Cm7
Грай, музико, грай!
Am7/5-
А мене забудеш,
А мене забудеш,
D7
А мене забудеш
Gm
Грай, музико, грай!
Gm
Можеш все забути     (3)
Cm7
Тільки пам''ятай
Am7/5-
Зоряну дорогу,
Зоряну дорогу,
Зоряну дорогу
В гай, зелений гай.
Як я тебе кохав -
Пам''ятати буде гай, зелений гай,
Що я тобі казав -
Не розкаже людям гай, зелений гай.
А як прийдуть осінні, холодні хмари
В гай, зелений гай
Хай на твоїм весіллі
Лунає пісня, ллється через край.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_713941_l1','pisniua_713941','YouTube','https://www.youtube.com/watch?v=-MKseW6tYU4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_713941_l2','pisniua_713941','YouTube','https://www.youtube.com/watch?v=FOf9VSM1DPk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_713941_l3','pisniua_713941','YouTube','https://www.youtube.com/watch?v=CMVIPUOWtR0','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_713941_l4','pisniua_713941','YouTube','https://www.youtube.com/watch?v=IpnPoI290UQ','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_714549';
DELETE FROM song_versions WHERE song_id = 'pisniua_714549';
DELETE FROM songs_fts WHERE song_id = 'pisniua_714549';
DELETE FROM songs WHERE id = 'pisniua_714549';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_714549','Дівчино кохана, йди сядь коло мене *','(Дівчино кохана). Музика: Андрій Хавунка Слова: народні. Виконує: Андрій Хавунка','uk','ukraine_1991',NULL,NULL,'Збірник пісень Студентського братства Львівської політехніки.- Львів, 2000',NULL,'Дівчино кохана, йди сядь коло мене,
Розлуки настав уже час.

Йди сядь, посумуєм, обнявшись з тобою,
І я поцілую ще раз.
Йди сядь, посумуєм, обнявшись з тобою,
І я поцілую ще раз.

Бо завтра я їду в далеку чужину,
Не знаю, повернусь чи ні.
А може, дівчино, без тебе загину        | (2)
В далекій чужій стороні.                |

А може, дівчино, полюбиш другого,
Захочеш багатою буть.
За золото щастя, голубко, не купиш,     | (2)
І ласки твої всі помруть.               |

Ти вийдеш і станеш отам коло хати,
Згадаєш про ласки мої.
Згадаєш про край той, куди я поїхав,    | (2)
І очі заплачуть твої.                   |

Дівчино кохана, йди сядь коло мене,
Розлуки настав уже час.
Йди сядь, посумуєм, обнявшись з тобою,  | (2)
І я поцілую ще раз.                     |','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_714549'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_714549','Дівчино кохана, йди сядь коло мене *','Дівчино кохана, йди сядь коло мене,
Розлуки настав уже час.

Йди сядь, посумуєм, обнявшись з тобою,
І я поцілую ще раз.
Йди сядь, посумуєм, обнявшись з тобою,
І я поцілую ще раз.

Бо завтра я їду в далеку чужину,
Не знаю, повернусь чи ні.
А може, дівчино, без тебе загину        | (2)
В далекій чужій стороні.                |

А може, дівчино, полюбиш другого,
Захочеш багатою буть.
За золото щастя, голубко, не купиш,     | (2)
І ласки твої всі помруть.               |

Ти вийдеш і станеш отам коло хати,
Згадаєш про ласки мої.
Згадаєш про край той, куди я поїхав,    | (2)
І очі заплачуть твої.                   |

Дівчино кохана, йди сядь коло мене,
Розлуки настав уже час.
Йди сядь, посумуєм, обнявшись з тобою,  | (2)
І я поцілую ще раз.                     |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_714549_l1','pisniua_714549','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7167767';
DELETE FROM song_versions WHERE song_id = 'pisniua_7167767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7167767';
DELETE FROM songs WHERE id = 'pisniua_7167767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7167767','В шибку дивиться пітьма','Слова: Платон Воронько','uk','ukraine_1991',NULL,NULL,'http://www.malecha.org.ua/',NULL,'В шибку дивиться пітьма,
Ніч приходить крадькома,
Хоче вкрасти з хати сина,
Понести туди, де зимно.

Ми сховаєм сина в ліжко,
Вкриєм ручки, вкриєм ніжки -
Аж до ранку, до світанку,
Поки ніч не піде з ганку.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7167767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7167767','В шибку дивиться пітьма','В шибку дивиться пітьма,
Ніч приходить крадькома,
Хоче вкрасти з хати сина,
Понести туди, де зимно.

Ми сховаєм сина в ліжко,
Вкриєм ручки, вкриєм ніжки -
Аж до ранку, до світанку,
Поки ніч не піде з ганку.');
DELETE FROM song_links WHERE song_id = 'pisniua_7184262';
DELETE FROM song_versions WHERE song_id = 'pisniua_7184262';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7184262';
DELETE FROM songs WHERE id = 'pisniua_7184262';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7184262','Ой, вербице!','Музика: Леопольд Ященко Слова: народні','uk','ukraine_1991',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256 с.',NULL,'Ой, вербице!
Пора тобі та, вербице,
Розвиться!

Та й розвиться...
Пора тобі, та Васильку,
Ожениться!

Та, ой, не час, не пора,
Та ще ж моя дівчина молода,
Та нехай до літечка, до Петра!

Та й до Петра...
Та, щоб моя дівчинонька
Та й хліб пекла!','[''pisni.org.ua'', ''cat:slobozhanski'', ''Пісні з слобожанщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7184262'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7184262','Ой, вербице!','Ой, вербице!
Пора тобі та, вербице,
Розвиться!

Та й розвиться...
Пора тобі, та Васильку,
Ожениться!

Та, ой, не час, не пора,
Та ще ж моя дівчина молода,
Та нехай до літечка, до Петра!

Та й до Петра...
Та, щоб моя дівчинонька
Та й хліб пекла!');
DELETE FROM song_links WHERE song_id = 'pisniua_7186363';
DELETE FROM song_versions WHERE song_id = 'pisniua_7186363';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7186363';
DELETE FROM songs WHERE id = 'pisniua_7186363';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7186363','Колискова зорі','Музика: Ірина Кириліна Слова: Микола Сингаївський. Виконує: Ніна Матвієнко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Прислухаюсь, як спить мій син,
Щось до світу шепоче він,
Прислухаюсь, прислухаюсь...

Чую сонне зітхання його,
А в дитячому серці вогонь,
Прислухаюсь, прислухаюсь...

Мов до сонця, що в травах стоїть,
Мов до птиці, що лине в блакить,
Прислухаюсь, прислухаюсь...

Як росте непосида малий,
Мов до власних бажань і надій
Прислухаюсь, прислухаюсь...
Прислухаюсь...

Чуєш, сину, пісня ця для тебе
Від землі, від сонця та від неба!
Сину мій, сину, рідна земля
Сон береже твій зблизька й здалля.

Мов до спраги своєї землі,
До зерна, що не спить у ріллі
Прислухаюсь...

Чую всесвіт і материн цвіт,
Чую сина і сонний політ!

Прислухаюсь, як спить мій син...
Прислухаюсь, як спить мій син...
Мій син...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7186363'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7186363','Колискова зорі','Прислухаюсь, як спить мій син,
Щось до світу шепоче він,
Прислухаюсь, прислухаюсь...

Чую сонне зітхання його,
А в дитячому серці вогонь,
Прислухаюсь, прислухаюсь...

Мов до сонця, що в травах стоїть,
Мов до птиці, що лине в блакить,
Прислухаюсь, прислухаюсь...

Як росте непосида малий,
Мов до власних бажань і надій
Прислухаюсь, прислухаюсь...
Прислухаюсь...

Чуєш, сину, пісня ця для тебе
Від землі, від сонця та від неба!
Сину мій, сину, рідна земля
Сон береже твій зблизька й здалля.

Мов до спраги своєї землі,
До зерна, що не спить у ріллі
Прислухаюсь...

Чую всесвіт і материн цвіт,
Чую сина і сонний політ!

Прислухаюсь, як спить мій син...
Прислухаюсь, як спить мій син...
Мій син...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7186363_l1','pisniua_7186363','YouTube','https://www.youtube.com/watch?v=jVqKF121ZV0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7187565';
DELETE FROM song_versions WHERE song_id = 'pisniua_7187565';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7187565';
DELETE FROM songs WHERE id = 'pisniua_7187565';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7187565','Колискова','(Крихітко моя маленька...). Слова: Світлана Ільніцька. Виконує: Світлана Ільніцька','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Крихітко моя маленька,
Притулися до серденька.
Слухай колисаночку,
Спи аж до світаночку.

А-аааа баю бай, А-аааа баю бай.

Ручки з лялечкою грали,
Ніжки з м''ячиком стрибали.
І стомилися вони
Бо вже вечір на дворі.

А-аааа баю бай, А-аааа баю бай.

Тихий вечір гладить квіти,
Треба й квітам відпочити,
Сонце котиться за гай,
Спи дитинко засинай.

А-аааа баю бай, А-аааа засинай','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7187565'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7187565','Колискова','Крихітко моя маленька,
Притулися до серденька.
Слухай колисаночку,
Спи аж до світаночку.

А-аааа баю бай, А-аааа баю бай.

Ручки з лялечкою грали,
Ніжки з м''ячиком стрибали.
І стомилися вони
Бо вже вечір на дворі.

А-аааа баю бай, А-аааа баю бай.

Тихий вечір гладить квіти,
Треба й квітам відпочити,
Сонце котиться за гай,
Спи дитинко засинай.

А-аааа баю бай, А-аааа засинай');
DELETE FROM song_links WHERE song_id = 'pisniua_7189969';
DELETE FROM song_versions WHERE song_id = 'pisniua_7189969';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7189969';
DELETE FROM songs WHERE id = 'pisniua_7189969';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7189969','Весна-красна','Музика: Василь Верховинець (Костів) Слова: народні','uk','ukraine_1991',NULL,NULL,'В. Верховинець. Весняночка. Ігри з піснями для дітей дошкільного віку та молодших школярів. Видання четверте, перероблене і доповнене. - Київ: Музична Україна, 1979. - 339 с.',NULL,'Весна-красна, весняночка
Устала з постелі,
З-під білого покривала
Глянула на села.

Всміхнулася і лащиться
Теплими деньками,
Водицею бігучою,
Милими квітками.

Пролісками-первістками,
Рястом кучерявим,
Що горнеться до проліска,
Мов хлоп''я слухняне.

До ненечки... А під небо
Підбивсь, тільки мріє
Малесенький жайворонок,
Співає, радіє.

Трепещеться, поглядає,
Як хороше, любо
Весну-красну, весняночку
Зустрічають люди!','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7189969'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7189969','Весна-красна','Весна-красна, весняночка
Устала з постелі,
З-під білого покривала
Глянула на села.

Всміхнулася і лащиться
Теплими деньками,
Водицею бігучою,
Милими квітками.

Пролісками-первістками,
Рястом кучерявим,
Що горнеться до проліска,
Мов хлоп''я слухняне.

До ненечки... А під небо
Підбивсь, тільки мріє
Малесенький жайворонок,
Співає, радіє.

Трепещеться, поглядає,
Як хороше, любо
Весну-красну, весняночку
Зустрічають люди!');
DELETE FROM song_links WHERE song_id = 'pisniua_719565';
DELETE FROM song_versions WHERE song_id = 'pisniua_719565';
DELETE FROM songs_fts WHERE song_id = 'pisniua_719565';
DELETE FROM songs WHERE id = 'pisniua_719565';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_719565','Явір і яворина','Музика: Олександр Білаш Слова: Дмитро Павличко. Виконує: Квартет Явір, Юрій Герасименко, Раїса Кириченко, Анатолій Мокренко','uk','ukraine_1991',NULL,NULL,'http://poetyka.uazone.net/','Підбір акордів: Vano Verhun','Я стужився мила, за тобою,
З туги обернувся мимохіть
В явора, що, палений журбою,
Сам один між буками стоїть.
Приспів:
Грає листя на веснянім сонці,
А в душі - печаль, як небеса.
Він росте й співає явороньці,
І згорає від сльози роса.
Сніг летить колючий, ніби трина *,
Йде зима й бескидами гуде.
Яворові сниться яворина
Та її кохання молоде.
Приспів:
Він не знає, що надійдуть люди,
Зміряють його на поруби,
Розітнуть йому печальні груди,
Скрипку зроблять із його журби.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:nostalgia'', ''cat:romansy'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_719565'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_719565','Явір і яворина','Я стужився мила, за тобою,
З туги обернувся мимохіть
В явора, що, палений журбою,
Сам один між буками стоїть.
Приспів:
Грає листя на веснянім сонці,
А в душі - печаль, як небеса.
Він росте й співає явороньці,
І згорає від сльози роса.
Сніг летить колючий, ніби трина *,
Йде зима й бескидами гуде.
Яворові сниться яворина
Та її кохання молоде.
Приспів:
Він не знає, що надійдуть люди,
Зміряють його на поруби,
Розітнуть йому печальні груди,
Скрипку зроблять із його журби.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_719565_l1','pisniua_719565','YouTube','https://www.youtube.com/watch?v=2hcMKU3KBtE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_719565_l2','pisniua_719565','YouTube','https://www.youtube.com/watch?v=bFyYY1AOkRo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_719565_l3','pisniua_719565','YouTube','https://www.youtube.com/watch?v=Ph99yb0__u0','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_719565_l4','pisniua_719565','YouTube','https://www.youtube.com/watch?v=-J9GFF7V2ic','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_719565_l5','pisniua_719565','YouTube','https://www.youtube.com/watch?v=gadahTy8brI','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_719565_l6','pisniua_719565','YouTube','https://www.youtube.com/watch?v=FkGiWA_lN0s','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_7202868';
DELETE FROM song_versions WHERE song_id = 'pisniua_7202868';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7202868';
DELETE FROM songs WHERE id = 'pisniua_7202868';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7202868','Смажений кабанчик','Музика: Степ Слова: Степ. Виконує: Степ','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Моя ти люба, Baby, не можу я без тебе,
Не можу я без тебе, чуєш, що кажу?
Чекають нас гулянки до самого світанку,
До самого світанку тебе викраду.
А завтра зранку ідем до мамки,
Нехай пов''яже,
На небі сонце, на морі хвилі,
А на весіллі!

Приспів:
Смажений кабанчик, курка з майонезом, |
Овочі, салати - сядем біля хати,      |
Вип''ємо по чарці, заспіваєм пісню,    |
Ти не пожалкуєш, що за мене вийшла!   | (2)

А завтра зранку ідем до мамки,
Нехай пов''яже,
На небі сонце, на морі хвилі,
А на весіллі!

Приспів.

А завтра зранку ідем до мамки,
Нехай пов''яже,
На небі сонце, на морі хвилі,
А на весіллі!

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7202868'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7202868','Смажений кабанчик','Моя ти люба, Baby, не можу я без тебе,
Не можу я без тебе, чуєш, що кажу?
Чекають нас гулянки до самого світанку,
До самого світанку тебе викраду.
А завтра зранку ідем до мамки,
Нехай пов''яже,
На небі сонце, на морі хвилі,
А на весіллі!

Приспів:
Смажений кабанчик, курка з майонезом, |
Овочі, салати - сядем біля хати,      |
Вип''ємо по чарці, заспіваєм пісню,    |
Ти не пожалкуєш, що за мене вийшла!   | (2)

А завтра зранку ідем до мамки,
Нехай пов''яже,
На небі сонце, на морі хвилі,
А на весіллі!

Приспів.

А завтра зранку ідем до мамки,
Нехай пов''яже,
На небі сонце, на морі хвилі,
А на весіллі!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7202868_l1','pisniua_7202868','YouTube','https://www.youtube.com/watch?v=lzHjGfOzBk0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7202868_l2','pisniua_7202868','YouTube','https://www.youtube.com/watch?v=QzHt3ZhOCwQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7202868_l3','pisniua_7202868','YouTube','https://www.youtube.com/watch?v=8UIVWlsFyNg','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_7244044';
DELETE FROM song_versions WHERE song_id = 'pisniua_7244044';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7244044';
DELETE FROM songs WHERE id = 'pisniua_7244044';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7244044','Без тебе','Музика: O. Torvald Слова: O. Torvald. Виконує: O. Torvald','uk','ukraine_1991',NULL,NULL,NULL,'Cm(х35543) G#(466544) D#(х68886) Gm(355333) Підбирав сам, диився на те, як грали це O.Torvald і помітив, що там все грають на один лад вище, але звучить так само, як і те, що я підібрав. Згодом перевірив: група грає цю не на стандартному строї, а на опущеному на пів тону. Якщо грати тими ж аккордами, що і O.Torvald, але на стандартному строї, можливо буде легше грати. Також можна урізноманітнити пісню, якщо грати приспів цими аккордами, що я написав, а куплети: Cm(х355хх)або(х3554х) G#(466ххх) D#(х688хх) Gm(355ххх)','Cm,G#,D#,Gm /х2

Cm
Без тебе наче сніг в пустелі,
G#
Без тебе світ втрачає сенс.
D#
Без тебе замкнені всі двері,
Gm
Без тебе стерті смс.

Cm
Без тебе не сміюсь, не плачу,
G#
Без тебе крізь стіни ходжу.
D#
Без тебе відпускаю вдачу,
Gm
Без тебе не лежу і не сиджу.

Cm
Без тебе змушений ховатись,
G#
Без тебе час немов пісок.
D#
Без тебе смак не відчувати,
Gm
Без тебе кулі у вісок.

Cm
Без тебе холодно і в спеку,
G#
Без тебе одяг не ношу.
D#
Без тебе нехтую безпеку,
Gm
Без тебе пусто, я прошу.

Приспів:
Відпусти,
Я для тебе,так треба.
Далі йти,вже без тебе,без тебе.

Коли тебе нема, вживаю,
Коли тебе нема, лиш тінь.
Коли тебе нема, зникаю,
Знаходитись одному лінь.

Коли тебе нема, так темно,
Коли тебе нема, себе душу.
Коли тебе нема, даремно,
Так голосно себе прошу.

Відпусти,
Я для тебе, так треба...
Далі йти вже без тебе, без тебе...','[''pisni.org.ua'', ''cat:lirychni'', ''cat:nostalgia'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7244044'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7244044','Без тебе','Cm,G#,D#,Gm /х2

Cm
Без тебе наче сніг в пустелі,
G#
Без тебе світ втрачає сенс.
D#
Без тебе замкнені всі двері,
Gm
Без тебе стерті смс.

Cm
Без тебе не сміюсь, не плачу,
G#
Без тебе крізь стіни ходжу.
D#
Без тебе відпускаю вдачу,
Gm
Без тебе не лежу і не сиджу.

Cm
Без тебе змушений ховатись,
G#
Без тебе час немов пісок.
D#
Без тебе смак не відчувати,
Gm
Без тебе кулі у вісок.

Cm
Без тебе холодно і в спеку,
G#
Без тебе одяг не ношу.
D#
Без тебе нехтую безпеку,
Gm
Без тебе пусто, я прошу.

Приспів:
Відпусти,
Я для тебе,так треба.
Далі йти,вже без тебе,без тебе.

Коли тебе нема, вживаю,
Коли тебе нема, лиш тінь.
Коли тебе нема, зникаю,
Знаходитись одному лінь.

Коли тебе нема, так темно,
Коли тебе нема, себе душу.
Коли тебе нема, даремно,
Так голосно себе прошу.

Відпусти,
Я для тебе, так треба...
Далі йти вже без тебе, без тебе...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7244044_l1','pisniua_7244044','YouTube','https://www.youtube.com/watch?v=lVnhKCT5YNY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_724745';
DELETE FROM song_versions WHERE song_id = 'pisniua_724745';
DELETE FROM songs_fts WHERE song_id = 'pisniua_724745';
DELETE FROM songs WHERE id = 'pisniua_724745';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_724745','Бай-бай, мила','(Emigrant song). Музика: Брати Гадюкіни Слова: Брати Гадюкіни. Виконує: Брати Гадюкіни','uk','ukraine_1991',NULL,NULL,'Аудіо-альбом "Брати Гадюкiни. "Щасливої дороги" (1999)','Текст і акорди записано на слух з аудіо. Акорди подано спрощено. Тональність оригінальна. * Тут G* можна пропускати; замість G** можна брати A. Підбір акордів: bohdanko@pisni.org.ua','Вступ:  D G A   (x2)
G A D  (x2)
G A D Hm  (x2)
D Em G D  (x2)
A  (або бас на 5-й струні: -0-2-4-)

Приспів:
D        G*    A   D
Бай-бай, мила, бай-бай!
Бай-бай, мила, прощай!
Автобусом до Льондону,
Літаком до Вашінгтону.
D        Em      G**    D
Бай-бай, мила, мене забувай!

Ну, холєра, всьо - нарешті їду;
За спинов лишився Родіни кордон.
Первим дєлом я у Англію до цьоці заїду,
А потім на літакови полечу в Вашінгтон.

Приспів.

Дякую тобі, мамо,
Шо в поля водила край села,
Шо ночей не досипала,
І в дорогу проводжала,
І рушник вишиваний ти на щастя дала.

Приспів.

Дякую, мої сестри,  (Хор: Дякую, рідні сестри...)
Бо Господь ми дав вас цілих дві:
Як єдна сідло сховає,
То втора ''го відшукає -
І я їду до дівчини, шо ся нравит мені.

Приспів.

Програш:

Приспів.','[''pisni.org.ua'', ''cat:manrivni'', ''cat:zhartivlyvi'', ''Пісні на мандрівну тематику'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_724745'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_724745','Бай-бай, мила','Вступ:  D G A   (x2)
G A D  (x2)
G A D Hm  (x2)
D Em G D  (x2)
A  (або бас на 5-й струні: -0-2-4-)

Приспів:
D        G*    A   D
Бай-бай, мила, бай-бай!
Бай-бай, мила, прощай!
Автобусом до Льондону,
Літаком до Вашінгтону.
D        Em      G**    D
Бай-бай, мила, мене забувай!

Ну, холєра, всьо - нарешті їду;
За спинов лишився Родіни кордон.
Первим дєлом я у Англію до цьоці заїду,
А потім на літакови полечу в Вашінгтон.

Приспів.

Дякую тобі, мамо,
Шо в поля водила край села,
Шо ночей не досипала,
І в дорогу проводжала,
І рушник вишиваний ти на щастя дала.

Приспів.

Дякую, мої сестри,  (Хор: Дякую, рідні сестри...)
Бо Господь ми дав вас цілих дві:
Як єдна сідло сховає,
То втора ''го відшукає -
І я їду до дівчини, шо ся нравит мені.

Приспів.

Програш:

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_724745_l1','pisniua_724745','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7268565';
DELETE FROM song_versions WHERE song_id = 'pisniua_7268565';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7268565';
DELETE FROM songs WHERE id = 'pisniua_7268565';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7268565','Колискова для звірят','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Мур, мур, мур, муркоче Киця
До маленьких кошеняток,
Мур, мур, мур, так не годиться
Треба спати, треба спати!

Приспів:
Кожна мама для маляти
Колискову заспіває,
Прийде вечір - треба спати,
Це усі на світі знають!

Гав, гав, гав, я чую знову,
То маленькі цуценята,
Розбишаки невгамовні,
І ніяк не хочуть спати!

Приспів.

Ко, ко, ко, воркоче квочка,
Наголошує курчатам,
Сіло сонце у гайочку,
Треба спати, треба спати.

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7268565'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7268565','Колискова для звірят','Мур, мур, мур, муркоче Киця
До маленьких кошеняток,
Мур, мур, мур, так не годиться
Треба спати, треба спати!

Приспів:
Кожна мама для маляти
Колискову заспіває,
Прийде вечір - треба спати,
Це усі на світі знають!

Гав, гав, гав, я чую знову,
То маленькі цуценята,
Розбишаки невгамовні,
І ніяк не хочуть спати!

Приспів.

Ко, ко, ко, воркоче квочка,
Наголошує курчатам,
Сіло сонце у гайочку,
Треба спати, треба спати.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7268565_l1','pisniua_7268565','YouTube','https://www.youtube.com/watch?v=8M1PNStfxhU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7260464';
DELETE FROM song_versions WHERE song_id = 'pisniua_7260464';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7260464';
DELETE FROM songs WHERE id = 'pisniua_7260464';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7260464','Таді шугай таді','Музика: Гурт Фолькнери Слова: народні. Виконує: Фолькнери','uk','ukraine_1991',NULL,NULL,'народ','Записана в с. Ярок, Ужгородського району.','Таді шугай таді понад наше саді,
Таді шугай таді понад наше саді,
Ей гой, бо тя не віділи,
Бо тя не віділи тоті старі баби.
Ей гой, бо тя не віділи,
Бо тя не віділи тоті старі баби.

Таді шугай таді попуд наше слівки,
Таді шугай таді попуд наше слівки,
Ей гой, бо тя не віділи,
Бо тя не віділи яродськії дівки.
Ей гой, бо тя не віділи,
Бо тя не віділи яродськії дівки.

Бо як тя увидять, матері повидять,
Бо як тя увидять, матері повидять,
Ей гой, а мати сердита,
А мати сердита та я буду бита.
Ей гой, а мати сердита,
А мати сердита та я буду бита.','[''pisni.org.ua'', ''cat:zakarpatski'', ''Закарпатські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7260464'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7260464','Таді шугай таді','Таді шугай таді понад наше саді,
Таді шугай таді понад наше саді,
Ей гой, бо тя не віділи,
Бо тя не віділи тоті старі баби.
Ей гой, бо тя не віділи,
Бо тя не віділи тоті старі баби.

Таді шугай таді попуд наше слівки,
Таді шугай таді попуд наше слівки,
Ей гой, бо тя не віділи,
Бо тя не віділи яродськії дівки.
Ей гой, бо тя не віділи,
Бо тя не віділи яродськії дівки.

Бо як тя увидять, матері повидять,
Бо як тя увидять, матері повидять,
Ей гой, а мати сердита,
А мати сердита та я буду бита.
Ей гой, а мати сердита,
А мати сердита та я буду бита.');
DELETE FROM song_links WHERE song_id = 'pisniua_7276745';
DELETE FROM song_versions WHERE song_id = 'pisniua_7276745';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7276745';
DELETE FROM songs WHERE id = 'pisniua_7276745';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7276745','Дівчина з Самбора','Музика: Ілля Найда Слова: Ілля Найда. Виконує: Ілля Найда','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ми з хлопцями давно рішили,
Що я ся женю в Самборі.
Ми на базарі пиво пили
І тут побачив я її.

Приспів:
Дівчину в Новому Самборі знайду,
Вона в новому Жигулі,
А - я музика молодий.
Дівчина така весела й лагідна,
Вона з Нового Самбора,
А я - музика молодий!

Вона стоїть та й споглядає,
А я си дзиґар закурю,
Вона ся трохи завстидає,
А я до неї підморгну.

Приспів.

А та кубіта на машині,
А я пішкарусом домів,
Вона купує всьо в бутіках,
Я на базарі в Самборі.

Приспів.

Як я на то всьо подивився,
Та й потягнуло на любов,
Приїду в Самбір оженюся,
Чекай, дівчино, в гості знов!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7276745'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7276745','Дівчина з Самбора','Ми з хлопцями давно рішили,
Що я ся женю в Самборі.
Ми на базарі пиво пили
І тут побачив я її.

Приспів:
Дівчину в Новому Самборі знайду,
Вона в новому Жигулі,
А - я музика молодий.
Дівчина така весела й лагідна,
Вона з Нового Самбора,
А я - музика молодий!

Вона стоїть та й споглядає,
А я си дзиґар закурю,
Вона ся трохи завстидає,
А я до неї підморгну.

Приспів.

А та кубіта на машині,
А я пішкарусом домів,
Вона купує всьо в бутіках,
Я на базарі в Самборі.

Приспів.

Як я на то всьо подивився,
Та й потягнуло на любов,
Приїду в Самбір оженюся,
Чекай, дівчино, в гості знов!');
DELETE FROM song_links WHERE song_id = 'pisniua_7280343';
DELETE FROM song_versions WHERE song_id = 'pisniua_7280343';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7280343';
DELETE FROM songs WHERE id = 'pisniua_7280343';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7280343','Прожиті роки','Слова: народні','uk','ukraine_1991',NULL,NULL,'смт. Клевань РІвненська обл. Віра Леонтіївна.',NULL,'Життя пережити - не ліс перейти,
Є тяжкі дороги, є радісні дні.
Летить рік за роком, неначе птахи,    |
Ніколи не вернеш прожиті роки.        | (2)

Коли розцвітає ромашка в саду,
Подумки я в юність іду,
А роки летять, а роки летять,         |
Їх навіть на крилах не можна догнать. | (2)

Усе, що хотілось, все те не збулось,
А роки проходять - іще не жилось,
А роки летять, а роки летять,         |
Їх навіть на крилах не можна догнать. | (2)

Недоспані ночі, натруджені дні,
Щасливії люди бувають лиш в сні,
Щоденні турботи за дочок й синів -    |
Легким не буває життя у батьків.      | (2)

Усе, що найкраще забрали літа,
Мені залишилась одна сивина,
А роки летять, а роки летять,         |
Їх навіть на крилах не можна догнать. | (2)

Бажаю вам щастя, бажаю добра,
Бажаю вам сонця, бажаю тепла!
Хай доля всміхнеться від нині і вам,  |
Всій нашій родині і вашим діткам!     | (2)

Хай буде легкою дорога життя,
Від щастя співає душа молода
Живуть хай довічно батьки на землі,   |
Уклін посилають вам дочки й сини!     | (2)','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7280343'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7280343','Прожиті роки','Життя пережити - не ліс перейти,
Є тяжкі дороги, є радісні дні.
Летить рік за роком, неначе птахи,    |
Ніколи не вернеш прожиті роки.        | (2)

Коли розцвітає ромашка в саду,
Подумки я в юність іду,
А роки летять, а роки летять,         |
Їх навіть на крилах не можна догнать. | (2)

Усе, що хотілось, все те не збулось,
А роки проходять - іще не жилось,
А роки летять, а роки летять,         |
Їх навіть на крилах не можна догнать. | (2)

Недоспані ночі, натруджені дні,
Щасливії люди бувають лиш в сні,
Щоденні турботи за дочок й синів -    |
Легким не буває життя у батьків.      | (2)

Усе, що найкраще забрали літа,
Мені залишилась одна сивина,
А роки летять, а роки летять,         |
Їх навіть на крилах не можна догнать. | (2)

Бажаю вам щастя, бажаю добра,
Бажаю вам сонця, бажаю тепла!
Хай доля всміхнеться від нині і вам,  |
Всій нашій родині і вашим діткам!     | (2)

Хай буде легкою дорога життя,
Від щастя співає душа молода
Живуть хай довічно батьки на землі,   |
Уклін посилають вам дочки й сини!     | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7280343_l1','pisniua_7280343','YouTube','https://www.youtube.com/watch?v=NoslNVA22PA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7280343_l2','pisniua_7280343','YouTube','https://www.youtube.com/watch?v=lNW_Y8T-CHY','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_7303969';
DELETE FROM song_versions WHERE song_id = 'pisniua_7303969';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7303969';
DELETE FROM songs WHERE id = 'pisniua_7303969';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7303969','Снилось мені ясне сонце','Слова: Марійка Підгірянка','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Снилось мені ясне сонце,
Що в хаті світило, -
А то лиш так моя мама
Дивилася мило.

Приснивсь мені легкий вітецерь,
Що пестив колосся, -
А то мені моя мама
Гладила волосся.

Снилась мені ягідочка,
Як мед солоденька,
А то мене цілувала
Мама дорогенька.

Снилося мені, що на крилах
Я вгору несуся, -
А то мене із постелі
Піднесла матуся.

Снились мені ангелики,
Що в рай мене несли,
А то мами ніжні ручки,
До серця притисли.

Снилось мені ясне сонце,
Що в хаті світило, -
А то лиш так моя мама
Дивилася мило.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7303969'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7303969','Снилось мені ясне сонце','Снилось мені ясне сонце,
Що в хаті світило, -
А то лиш так моя мама
Дивилася мило.

Приснивсь мені легкий вітецерь,
Що пестив колосся, -
А то мені моя мама
Гладила волосся.

Снилась мені ягідочка,
Як мед солоденька,
А то мене цілувала
Мама дорогенька.

Снилося мені, що на крилах
Я вгору несуся, -
А то мене із постелі
Піднесла матуся.

Снились мені ангелики,
Що в рай мене несли,
А то мами ніжні ручки,
До серця притисли.

Снилось мені ясне сонце,
Що в хаті світило, -
А то лиш так моя мама
Дивилася мило.');
DELETE FROM song_links WHERE song_id = 'pisniua_731868';
DELETE FROM song_versions WHERE song_id = 'pisniua_731868';
DELETE FROM songs_fts WHERE song_id = 'pisniua_731868';
DELETE FROM songs WHERE id = 'pisniua_731868';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_731868','Ой, місяцю, місяченьку','Музика: народна Слова: Марійка Підгірянка','uk','ukraine_1991',NULL,NULL,'Самвидавний туристський пісенник "Де гори Карпати, де Писаний Камінь". - Літо, 1982.',NULL,'Ой, місяцю, місяченьку,
Срібнолиций стороженьку,
Що сторожеш ти?
Я сторожу цілу нічку     |
Гай і поле, ліс і річку, |(2)
І сільські ха_ти.        |

Ой, місяцю, місяченьку,
Срібнолиций стороженьку,
Хто є в тих хатах?
Там сплять діти в постілочках, |
Сон цілує їх по очках,         |(2)
Мріють мрії в снах...          |

Ой, місяцю, місяченьку,
Срібнолиций стороженьку,
Про що мрії ті?
Про край рідний, край єдиний,  |
Про майбутність України        |(2)
Снять діти мої.                |

Ой, місяцю, місяченьку,
Срібнолиций стороженьку,
Чи здійсняться сни?
Стануть діти підростати,       |
Україні помагати -             |(2)
І здійсняться сни!             |','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''cat:patriotic'', ''Дитячі пісні'', ''Колискові'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_731868'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_731868','Ой, місяцю, місяченьку','Ой, місяцю, місяченьку,
Срібнолиций стороженьку,
Що сторожеш ти?
Я сторожу цілу нічку     |
Гай і поле, ліс і річку, |(2)
І сільські ха_ти.        |

Ой, місяцю, місяченьку,
Срібнолиций стороженьку,
Хто є в тих хатах?
Там сплять діти в постілочках, |
Сон цілує їх по очках,         |(2)
Мріють мрії в снах...          |

Ой, місяцю, місяченьку,
Срібнолиций стороженьку,
Про що мрії ті?
Про край рідний, край єдиний,  |
Про майбутність України        |(2)
Снять діти мої.                |

Ой, місяцю, місяченьку,
Срібнолиций стороженьку,
Чи здійсняться сни?
Стануть діти підростати,       |
Україні помагати -             |(2)
І здійсняться сни!             |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_731868_l1','pisniua_731868','YouTube','https://www.youtube.com/watch?v=d_h9vVZpQMU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_731868_l2','pisniua_731868','YouTube','https://www.youtube.com/watch?v=RAmlXZ-FVtI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_731868_l3','pisniua_731868','YouTube','https://www.youtube.com/watch?v=UYYlyiBUzV0','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_7332848';
DELETE FROM song_versions WHERE song_id = 'pisniua_7332848';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7332848';
DELETE FROM songs WHERE id = 'pisniua_7332848';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7332848','Чисті зуби не хворіють','Музика: Олена Заблоцька Слова: Олена Заблоцька','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконують Олена Заблоцька та Діана Вязовченко.','Кожен ранок як встаю -
В ванну я мерщій біжу,
Бо казали мама з татом:
Треба зубки доглядати!
Бо казали мама з татом:          |
Треба зубки, зубки доглядати!    | (2)

Приспів:
Щоби легко йти нам до мети,      |
Посміхатися нам треба!           |
Білі зубчики у нас завжди,       |
В цьому є для всіх потреба!      |  (2)

Чистіть зубки двічі в день
Під нашу пісню дві хвилини
День у день!
І про карієс забудуть всі -      |
Білосніжна усмішка у всій красі! | (2)

Приспів. (2)

Білі зубчики у нас завжди,
В цьому є для всіх потреба!','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7332848'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7332848','Чисті зуби не хворіють','Кожен ранок як встаю -
В ванну я мерщій біжу,
Бо казали мама з татом:
Треба зубки доглядати!
Бо казали мама з татом:          |
Треба зубки, зубки доглядати!    | (2)

Приспів:
Щоби легко йти нам до мети,      |
Посміхатися нам треба!           |
Білі зубчики у нас завжди,       |
В цьому є для всіх потреба!      |  (2)

Чистіть зубки двічі в день
Під нашу пісню дві хвилини
День у день!
І про карієс забудуть всі -      |
Білосніжна усмішка у всій красі! | (2)

Приспів. (2)

Білі зубчики у нас завжди,
В цьому є для всіх потреба!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7332848_l1','pisniua_7332848','YouTube','https://www.youtube.com/watch?v=vrPH9h3Ilq4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7339060';
DELETE FROM song_versions WHERE song_id = 'pisniua_7339060';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7339060';
DELETE FROM songs WHERE id = 'pisniua_7339060';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7339060','Не забирай любов свою','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Не відкидай мою щирую любов,
А відкрий до серця свого двері.
І посміхнись до мене ти знов,
Нехай стануть дні мої веселі.

Приспів:
Подаруй мені щасливую мить,
Подаруй мені щастя  краплинку,
Послухай, як серденько горить,
Зупинись і пригорни на хвилинку!

Нехай нам в небі веселка засія,
А душа моя трояндою розквітне,
Твоєю навіки, твоєю стану я
І любов моя ніколи не згіркне.

Приспів.

Не закривай душу ти свою,
А прийди і мені щиро відкрийся.
Я тобі на світі все-усе прощу,
Тільки ти мило так посміхнися.

Приспів.

Я любую біль в душі перетерплю,
І в серці своїм далеко заховаю.
Тобі я, милий, щастя принесу,
Бо ніхто тебе так щиро не кохає.

Приспів.

Рано підсніжник цвіте навесні
І лютий мороз його не здолє,
За холодним приходить ясний день,
Дарує нам щастя і надію вселяє.

Приспів.','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7339060'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7339060','Не забирай любов свою','Не відкидай мою щирую любов,
А відкрий до серця свого двері.
І посміхнись до мене ти знов,
Нехай стануть дні мої веселі.

Приспів:
Подаруй мені щасливую мить,
Подаруй мені щастя  краплинку,
Послухай, як серденько горить,
Зупинись і пригорни на хвилинку!

Нехай нам в небі веселка засія,
А душа моя трояндою розквітне,
Твоєю навіки, твоєю стану я
І любов моя ніколи не згіркне.

Приспів.

Не закривай душу ти свою,
А прийди і мені щиро відкрийся.
Я тобі на світі все-усе прощу,
Тільки ти мило так посміхнися.

Приспів.

Я любую біль в душі перетерплю,
І в серці своїм далеко заховаю.
Тобі я, милий, щастя принесу,
Бо ніхто тебе так щиро не кохає.

Приспів.

Рано підсніжник цвіте навесні
І лютий мороз його не здолє,
За холодним приходить ясний день,
Дарує нам щастя і надію вселяє.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_7338549';
DELETE FROM song_versions WHERE song_id = 'pisniua_7338549';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7338549';
DELETE FROM songs WHERE id = 'pisniua_7338549';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7338549','Білі хризантеми','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання','Слова пісні написано автором під музику "Фокстрот" (гурт Три села).','Хризантеми сніжно-білі,
Посадив колись у саду
І в день нашого весілля
Букет їх тобі я дарю.

Приспів:
Хризантеми білі чарівні
І пелюстки їхні в пилку,
Які ми сьогодні щасливі
На весільнім оцім рушнику.

А хризантеми білі, білі,
Як ніжний тополиний пух,
Радіємо разом ми з ними,
Що доля звела нас обох!

Приспів.

Радіємо щиро ми нині
І радіє наша рідня,
Що доля, та доленька наша,
Поєднала наші серця!

Приспів.

Пийте, гості, щоб були п''яні,
А ми дякуєм тату, дякуєм мамі.
Дякуєм тату та дякуєм мамі,
Будете у нас завжди в пошані!

Приспів.

Дяуємо дорогій ми родині,
Що на весілля прийшли нині,
Щасливого життя нам побажали
І на прожиття грошей дали!

Приспів.

Кожний дякує рідній мамі,
Що в хату пускала на світанні,
В своїм серці секрети тримали
І татам про нас не сказали.

Приспів.

Ці квіти сніжно-білі чарівні,
Доглядатимемо разом в саду,
І на золоте наше весілля,
Букет хризантем знов подарю.

Приспів.','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7338549'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7338549','Білі хризантеми','Хризантеми сніжно-білі,
Посадив колись у саду
І в день нашого весілля
Букет їх тобі я дарю.

Приспів:
Хризантеми білі чарівні
І пелюстки їхні в пилку,
Які ми сьогодні щасливі
На весільнім оцім рушнику.

А хризантеми білі, білі,
Як ніжний тополиний пух,
Радіємо разом ми з ними,
Що доля звела нас обох!

Приспів.

Радіємо щиро ми нині
І радіє наша рідня,
Що доля, та доленька наша,
Поєднала наші серця!

Приспів.

Пийте, гості, щоб були п''яні,
А ми дякуєм тату, дякуєм мамі.
Дякуєм тату та дякуєм мамі,
Будете у нас завжди в пошані!

Приспів.

Дяуємо дорогій ми родині,
Що на весілля прийшли нині,
Щасливого життя нам побажали
І на прожиття грошей дали!

Приспів.

Кожний дякує рідній мамі,
Що в хату пускала на світанні,
В своїм серці секрети тримали
І татам про нас не сказали.

Приспів.

Ці квіти сніжно-білі чарівні,
Доглядатимемо разом в саду,
І на золоте наше весілля,
Букет хризантем знов подарю.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_7360147';
DELETE FROM song_versions WHERE song_id = 'pisniua_7360147';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7360147';
DELETE FROM songs WHERE id = 'pisniua_7360147';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7360147','Зайчик і Мишка','Слова: Зоряна Лісевич','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Тетяна Саницька (колектив "ДИВО", церква Вознесіння Господнього, керівник - Тетяна Годій).','Зайчику й Мишко,
Куди тишком-нишком
Із дому бігом біжите?
Пограймо, звірятка,
В картинки спочатку.
А Зайчик і Мишка на те:
Вибач, та нині
Йдемо на гостину
В палац із рожевого скла.
Нас лялька Каміла
На чай запросила
І тістечка з кремом спекла!

Зайчику й Мишко,
Куди тишком-нишком
Із дому бігом біжите?
Побавтесь обоє
В принцеси зі мою.
А Зайчик і Мишка на те:
Раді б, та, схоже,
Сьогодні не зможем.
Пробач, але відповідь: "Ні",
Бо ми поспішаєм
Послухати в гаї
Вечірній концерт цвіркунів.

Зайчику й Мишко,
Куди тишком-нишком
Із дому бігом біжите?
Вертайтесь, будь-ласка,
Послухати казку,
А Зайчик і Мишка на те:
Люба дитино,
Вже пізня година,
Вкладатися в ліжко пора!..
Вже місяць на небі -
І спатоньки треба,
Добраніч... Добраніч...
Добра...','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7360147'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7360147','Зайчик і Мишка','Зайчику й Мишко,
Куди тишком-нишком
Із дому бігом біжите?
Пограймо, звірятка,
В картинки спочатку.
А Зайчик і Мишка на те:
Вибач, та нині
Йдемо на гостину
В палац із рожевого скла.
Нас лялька Каміла
На чай запросила
І тістечка з кремом спекла!

Зайчику й Мишко,
Куди тишком-нишком
Із дому бігом біжите?
Побавтесь обоє
В принцеси зі мою.
А Зайчик і Мишка на те:
Раді б, та, схоже,
Сьогодні не зможем.
Пробач, але відповідь: "Ні",
Бо ми поспішаєм
Послухати в гаї
Вечірній концерт цвіркунів.

Зайчику й Мишко,
Куди тишком-нишком
Із дому бігом біжите?
Вертайтесь, будь-ласка,
Послухати казку,
А Зайчик і Мишка на те:
Люба дитино,
Вже пізня година,
Вкладатися в ліжко пора!..
Вже місяць на небі -
І спатоньки треба,
Добраніч... Добраніч...
Добра...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7360147_l1','pisniua_7360147','YouTube','https://www.youtube.com/watch?v=SIWGAEgwMY4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7350848';
DELETE FROM song_versions WHERE song_id = 'pisniua_7350848';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7350848';
DELETE FROM songs WHERE id = 'pisniua_7350848';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7350848','Не дала','Музика: Роман Микульський Слова: Борислава Білоцерківська. Виконує: Андріана','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'НЕ сиділось мені вдома,
Понесло мене в кіно,
Захотілося кохання
І зустріла там його!

Приспів:
Я не дала, а він так намагався!
Я не дала цукерочку свою!
Я не дала, хоч як він не старався!
Я не дала, сама я з''їла всю!

Віддала я своє серце,
Тільки він не зацінив,
Я була йому байдужа,
Бо цукерки він любив.

Приспів. (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7350848'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7350848','Не дала','НЕ сиділось мені вдома,
Понесло мене в кіно,
Захотілося кохання
І зустріла там його!

Приспів:
Я не дала, а він так намагався!
Я не дала цукерочку свою!
Я не дала, хоч як він не старався!
Я не дала, сама я з''їла всю!

Віддала я своє серце,
Тільки він не зацінив,
Я була йому байдужа,
Бо цукерки він любив.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7350848_l1','pisniua_7350848','YouTube','https://www.youtube.com/watch?v=sEuULHMLxdc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7363';
DELETE FROM song_versions WHERE song_id = 'pisniua_7363';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7363';
DELETE FROM songs WHERE id = 'pisniua_7363';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7363','Колискова','(Спи, маленький козачок). Музика: Анатолій Сухий Слова: Анатолій Сухий. Виконує: Рутенія, Віктор Морозов, Росава','uk','ukraine_1991',NULL,NULL,'Аудіо-CD "Рутенія. 10 років по тому..." (2001)','Текст і акорди записано на слух з аудіо. Тональність не оригінальна. Підбір акордів: bohdanko (pisni.org.ua)','Спи, маленький козачо_ ок,
Повернися на бочо_ ок.
Спи, синочку, мама засина_а_є_е.    |
Спи, козаче, кінь твій зачека_а_є.  |

Люлі-люлі, баю-бай.
Прийде завтра Миколай,
Принесе тобі в дарунок   |
Золотих пісень пакунок.  | (2)

Приспів:
А в зимову тиху ніч ми поїдемо на Січ. *
Кошовий нам дасть різдвяний пря_аник.
А в різдвяну тиху ніч ми поїдемо на Cіч.
Кошовий нам дасть різдвяний пряник.

Спи, козаче, в бій ще рано,
Ще малі твої гетьмани.
Я як підеш в бій свій перший -    |
Мало нас, а вас ще менше.         | (2)

Спи, маленький, треба спати.
Зайчик спить і вовчик-братик.
Грає синій водограй,              |
Казка ллється через край.         | (2)
Люляй-люляй, баю-бай.             |

Приспів.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:dytyachi'', ''cat:kolyskovi'', ''cat:patriotic'', ''cat:svyatyy-mykolay'', ''Бардівські пісні'', ''Дитячі пісні'', ''Колискові'', ''Патріотичні пісні'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7363'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7363','Колискова','Спи, маленький козачо_ ок,
Повернися на бочо_ ок.
Спи, синочку, мама засина_а_є_е.    |
Спи, козаче, кінь твій зачека_а_є.  |

Люлі-люлі, баю-бай.
Прийде завтра Миколай,
Принесе тобі в дарунок   |
Золотих пісень пакунок.  | (2)

Приспів:
А в зимову тиху ніч ми поїдемо на Січ. *
Кошовий нам дасть різдвяний пря_аник.
А в різдвяну тиху ніч ми поїдемо на Cіч.
Кошовий нам дасть різдвяний пряник.

Спи, козаче, в бій ще рано,
Ще малі твої гетьмани.
Я як підеш в бій свій перший -    |
Мало нас, а вас ще менше.         | (2)

Спи, маленький, треба спати.
Зайчик спить і вовчик-братик.
Грає синій водограй,              |
Казка ллється через край.         | (2)
Люляй-люляй, баю-бай.             |

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7363_l1','pisniua_7363','YouTube','https://www.youtube.com/watch?v=xSiatmf6FM4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7363_l2','pisniua_7363','YouTube','https://www.youtube.com/watch?v=sNeHwsLDWX4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7363_l3','pisniua_7363','YouTube','https://www.youtube.com/watch?v=peLseRvW5eE','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7363_l4','pisniua_7363','YouTube','https://www.youtube.com/watch?v=4FUNslrWba8','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7363_l5','pisniua_7363','YouTube','https://www.youtube.com/watch?v=hwPwUy08wIE','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7363_l6','pisniua_7363','YouTube','https://www.youtube.com/watch?v=b6ElMJFsVec','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7363_l7','pisniua_7363','YouTube','https://www.youtube.com/watch?v=XMCQi6taWOE','video',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_736147';
DELETE FROM song_versions WHERE song_id = 'pisniua_736147';
DELETE FROM songs_fts WHERE song_id = 'pisniua_736147';
DELETE FROM songs WHERE id = 'pisniua_736147';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_736147','Супєр-пупєр','Виконує: Бумбокс','uk','ukraine_1991',NULL,NULL,'Знайдено в мережі... http://forum.tartak.com.ua/index.php?showtopic=185&st=220',NULL,'Свист художній

Свій захисний екран
Ти вмикаєш коли я проходжу поруч,
Або пропав, або пан
Не дізнаюсь не в колі твого я взору

Там - тільки мачо,
Там - модні тачки,
Там - свіжий подих твоєї жвачки.

Все супер-пупер,
Смайли по асі -
І ми спілкуємося в пласмасі.

Реггі, фанкі, лайт джез,
смак сигари і постери Че Гевари.

Час а інет вже щез,
Та чомусь так ламає іти на пари.

Там - всі заучки,
В спирту гадючки,
Пісні Сердючки
Аж до відключки.

А тут все супер-пупер,
Смайли по асі -
Далі спілкуємося в пласмасі

Падаба...
Далі спілкуємося в пласмасі ми - (2)

Ну не підламуй так -
Дісконєкт у мережі, в містах пожежі.
Ти написала "так",
І ми йдем на "Володар кілець - Дві вежі".

Блін - я ж не мачо,
Блін - де модні тачки,
Де свіжий подих моєї жвачки

Все супер-пупер,
Смайли по асі-
Далі спілкуємося в пласмасі.

Я не мачо
Модні тачки
Свіжий подих твоєї жвачки

Смайли(3).
Далі спілкуємося в пласмасі

Супер-пупер, модні тачкии
Супер пупер... є

Замість роботи в пласмасі
Замість навчання в пласмасі
Замість кохання в пласмасі

Замість усього в пласмасі

Супер пупер
Модні тачки
свіжий подих твоєї й моєї жвачки

Сма--йли
І ми спілкуємося в пласмасі','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_736147'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_736147','Супєр-пупєр','Свист художній

Свій захисний екран
Ти вмикаєш коли я проходжу поруч,
Або пропав, або пан
Не дізнаюсь не в колі твого я взору

Там - тільки мачо,
Там - модні тачки,
Там - свіжий подих твоєї жвачки.

Все супер-пупер,
Смайли по асі -
І ми спілкуємося в пласмасі.

Реггі, фанкі, лайт джез,
смак сигари і постери Че Гевари.

Час а інет вже щез,
Та чомусь так ламає іти на пари.

Там - всі заучки,
В спирту гадючки,
Пісні Сердючки
Аж до відключки.

А тут все супер-пупер,
Смайли по асі -
Далі спілкуємося в пласмасі

Падаба...
Далі спілкуємося в пласмасі ми - (2)

Ну не підламуй так -
Дісконєкт у мережі, в містах пожежі.
Ти написала "так",
І ми йдем на "Володар кілець - Дві вежі".

Блін - я ж не мачо,
Блін - де модні тачки,
Де свіжий подих моєї жвачки

Все супер-пупер,
Смайли по асі-
Далі спілкуємося в пласмасі.

Я не мачо
Модні тачки
Свіжий подих твоєї жвачки

Смайли(3).
Далі спілкуємося в пласмасі

Супер-пупер, модні тачкии
Супер пупер... є

Замість роботи в пласмасі
Замість навчання в пласмасі
Замість кохання в пласмасі

Замість усього в пласмасі

Супер пупер
Модні тачки
свіжий подих твоєї й моєї жвачки

Сма--йли
І ми спілкуємося в пласмасі');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_736147_l1','pisniua_736147','YouTube','https://www.youtube.com/watch?v=-XJhghP7q7E','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7369446';
DELETE FROM song_versions WHERE song_id = 'pisniua_7369446';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7369446';
DELETE FROM songs WHERE id = 'pisniua_7369446';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7369446','Лариска','Музика: Назар Савко Слова: Назар Савко. Виконує: Назар Савко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Жила собі Лариска -
Хитренькая лиска.
Цілий день гуляла,
Співала, танцювала.
З вовчиком-братиком
За столом сиділа,
Всі сосиски з''їла.

Приспів:
Лариска, Лариска,
А де моя сосиска?
Чому порожня миска?
Ану кажи, Лариска!
Лариска, Лариска,
А де моя сосиска?
Чому порожня миска?
Куди втікаєш, лиска?

Жила собі Лариска -
Хитренькая лиска.
Цілий день гуляла,
Співала, танцювала.
З ведмедиком-мемедиком
За столом сиділа,
Всі сосиски з''їла.

Приспів.

Жила собі Лариска -
Хитренькая лиска.
Цілий день гуляла,
Співала, танцювала.
З зайчиком-стрибайчиком
За столом сиділа,
Всі сосиски з''їла.

Приспів.

Нарешті Лариска
Вину зрозуміла
І звіряток тих
На обід запросила.
Для гостей всіх мастей
Столика накрила -
І сама все з''їла!..
Ну, Лариска!
Ох, Лариска!
Ой, Лариска!
А, де Лариска?
Ой, де сосиски?

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:zhartivlyvi'', ''Дитячі пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7369446'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7369446','Лариска','Жила собі Лариска -
Хитренькая лиска.
Цілий день гуляла,
Співала, танцювала.
З вовчиком-братиком
За столом сиділа,
Всі сосиски з''їла.

Приспів:
Лариска, Лариска,
А де моя сосиска?
Чому порожня миска?
Ану кажи, Лариска!
Лариска, Лариска,
А де моя сосиска?
Чому порожня миска?
Куди втікаєш, лиска?

Жила собі Лариска -
Хитренькая лиска.
Цілий день гуляла,
Співала, танцювала.
З ведмедиком-мемедиком
За столом сиділа,
Всі сосиски з''їла.

Приспів.

Жила собі Лариска -
Хитренькая лиска.
Цілий день гуляла,
Співала, танцювала.
З зайчиком-стрибайчиком
За столом сиділа,
Всі сосиски з''їла.

Приспів.

Нарешті Лариска
Вину зрозуміла
І звіряток тих
На обід запросила.
Для гостей всіх мастей
Столика накрила -
І сама все з''їла!..
Ну, Лариска!
Ох, Лариска!
Ой, Лариска!
А, де Лариска?
Ой, де сосиски?

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7369446_l1','pisniua_7369446','YouTube','https://www.youtube.com/watch?v=tiYUGC8jOvw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7377549';
DELETE FROM song_versions WHERE song_id = 'pisniua_7377549';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7377549';
DELETE FROM songs WHERE id = 'pisniua_7377549';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7377549','Спи, маленький козачок','Музика: Анатолій Сухий Слова: Анатолій Сухий. Виконує: Етнографічний хор Гомін','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Спи, маленький козачок,
Повернися на бочок.
Спи, синочку, мама засинає,
Спи, козаче, кінь твій зачекає.
Люлі-люлі, баю-бай,
Завтра прийде Миколай,
Принесе тобі в дарунок
Золотих пісень пакунок.

Приспів:
А в січневу тиху ніч |
Ми поїдемо на Січ,   |
Кошовий подасть      |
Різдвяний пряник.    | (2)

Спи, маленький отамане,
Підростуть твої гетьмани,
Підросте твій коник вірний,
Ще й заграє на подвір''ї!

Приспів.

Люлі-люлі, треба спати,
Зайчик спить і вовчик-братик,
Грає синій водограй,
Казка ллється через край -
Люлі-люлі, баю-бай...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7377549'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7377549','Спи, маленький козачок','Спи, маленький козачок,
Повернися на бочок.
Спи, синочку, мама засинає,
Спи, козаче, кінь твій зачекає.
Люлі-люлі, баю-бай,
Завтра прийде Миколай,
Принесе тобі в дарунок
Золотих пісень пакунок.

Приспів:
А в січневу тиху ніч |
Ми поїдемо на Січ,   |
Кошовий подасть      |
Різдвяний пряник.    | (2)

Спи, маленький отамане,
Підростуть твої гетьмани,
Підросте твій коник вірний,
Ще й заграє на подвір''ї!

Приспів.

Люлі-люлі, треба спати,
Зайчик спить і вовчик-братик,
Грає синій водограй,
Казка ллється через край -
Люлі-люлі, баю-бай...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7377549_l1','pisniua_7377549','YouTube','https://www.youtube.com/watch?v=Vt9wOAzg4HU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7386464';
DELETE FROM song_versions WHERE song_id = 'pisniua_7386464';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7386464';
DELETE FROM songs WHERE id = 'pisniua_7386464';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7386464','Я - міліонер!','Музика: Михайло Хома Слова: Михайло Хома. Виконує: DZIDZIO','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Опа-оп, гуляють всі,
Йолки-палки, бо мені
Заканало-повезло -
Виграв міліон в лото!

Приспів:
Реально - це не сон,
Я виграв міліон,
Від радості кричу-пищу:
Ура!
Скачу, тішуся, як слон, |
Бо я виграв міліон!     |
Ой, супер-пупер я тепер |
Мілі-міліонер!          | (2)

Я собі за міліона
Куплю модний телефона
І пошлю всім smsа:
Я купляю мерседеса.

Приспів.

Ой, ха-ха, хі-хі-хі-хі,
Всі завидують мені!
Жаба давить всіх, бо я
Виграв бабок до фіга!

Приспів. (2)

Я - міліонер! Yes!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7386464'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7386464','Я - міліонер!','Опа-оп, гуляють всі,
Йолки-палки, бо мені
Заканало-повезло -
Виграв міліон в лото!

Приспів:
Реально - це не сон,
Я виграв міліон,
Від радості кричу-пищу:
Ура!
Скачу, тішуся, як слон, |
Бо я виграв міліон!     |
Ой, супер-пупер я тепер |
Мілі-міліонер!          | (2)

Я собі за міліона
Куплю модний телефона
І пошлю всім smsа:
Я купляю мерседеса.

Приспів.

Ой, ха-ха, хі-хі-хі-хі,
Всі завидують мені!
Жаба давить всіх, бо я
Виграв бабок до фіга!

Приспів. (2)

Я - міліонер! Yes!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7386464_l1','pisniua_7386464','YouTube','https://www.youtube.com/watch?v=cb-Y8AWYc64','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7430044';
DELETE FROM song_versions WHERE song_id = 'pisniua_7430044';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7430044';
DELETE FROM songs WHERE id = 'pisniua_7430044';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7430044','Місто весни','Музика: Святослав Вакарчук Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи", Один в каное','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Чому мені сниться, як знову і знову
Гуляєм з тобою по рідному Львову?..
Там пахне весною і сонце сідає
На березі річки, якої немає...
І дивляться леви на тебе ласкаво,
І варять бажання із запахом кави,
І вільно на розі між пеклом і раєм
У Львові так просто своє не вмирає...
Е-е-е-е-е! Дихає місто весни моє...
Е-е-е-е-е! Місто весни моє...

Бентежне століття загоює рани,
Ще до повноліття тут всі - ветерани...
Наповнене світлом, минуле прощає,
Чомусь тут ніколи не хочеться чаю,
Не хочеться снігу, не хочеться слави,
Нехай дістається церквам з хоругвами!..
Ми просто з тобою удвох погуляєм
На березі річки, якої немає...
Е-е-е-е-е! Дихає місто весни моє...
Е-е-е-е-е! Місто весни моє...

Чому ми не можем забути про зливи?..
Мабуть, для героїв ми надто вразливі...
Стіни і леви нам не дозволяють
Розвіяти попіл, в якому ніяк не згасають
Ті сни, у яких я і знову, і знову
Гуляю з тобою по рідному Львову...
Там пахне весною і сонце сідає
На березі річки, якої давно вже немає...
Е-е-е-е-е! Дихає місто весни моє...
Е-е-е-е-е! Місто весни моє...','[''pisni.org.ua'', ''cat:lirychni'', ''cat:nostalgia'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7430044'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7430044','Місто весни','Чому мені сниться, як знову і знову
Гуляєм з тобою по рідному Львову?..
Там пахне весною і сонце сідає
На березі річки, якої немає...
І дивляться леви на тебе ласкаво,
І варять бажання із запахом кави,
І вільно на розі між пеклом і раєм
У Львові так просто своє не вмирає...
Е-е-е-е-е! Дихає місто весни моє...
Е-е-е-е-е! Місто весни моє...

Бентежне століття загоює рани,
Ще до повноліття тут всі - ветерани...
Наповнене світлом, минуле прощає,
Чомусь тут ніколи не хочеться чаю,
Не хочеться снігу, не хочеться слави,
Нехай дістається церквам з хоругвами!..
Ми просто з тобою удвох погуляєм
На березі річки, якої немає...
Е-е-е-е-е! Дихає місто весни моє...
Е-е-е-е-е! Місто весни моє...

Чому ми не можем забути про зливи?..
Мабуть, для героїв ми надто вразливі...
Стіни і леви нам не дозволяють
Розвіяти попіл, в якому ніяк не згасають
Ті сни, у яких я і знову, і знову
Гуляю з тобою по рідному Львову...
Там пахне весною і сонце сідає
На березі річки, якої давно вже немає...
Е-е-е-е-е! Дихає місто весни моє...
Е-е-е-е-е! Місто весни моє...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7430044_l1','pisniua_7430044','YouTube','https://www.youtube.com/watch?v=pmoYP_QvGsM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_743044';
DELETE FROM song_versions WHERE song_id = 'pisniua_743044';
DELETE FROM songs_fts WHERE song_id = 'pisniua_743044';
DELETE FROM songs WHERE id = 'pisniua_743044';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_743044','Квіти в волоссі','Музика: Андрій Хливнюк Слова: Андрій Хливнюк. Виконує: Бумбокс','uk','ukraine_1991',NULL,NULL,'http://bloggy.ru/Temna (текст)','Акорди подано спрощено. Детальніше – у табулатурі.','Вступ:  Hm/H Hm/A# Hm/A Hm/G (x2)

Hm/H
Вона носила квіти в волоссі
Hm/A#
І ними грався він і ще вітер
Hm/A
Здавалося давно вже дорослі
Hm/G
Але кохали щиро мов діти

Відчинені серця щирі очі
Таких не так багато є в світі
Лилися сльози щастя щоночі
Обіцянки назавжди любити

Будиночок на розі двох вулиць
Паркан плющем осіннім завитий
Здавалося дощі схаменулись
Здавалося завжди буде літо

Лише один дзвінок телефону
І варто тільки їм захотіти
Повіяло теплом з-за кордону
А отже неодмінно летіти

Приспів:
Не обіцяй назавжди
Hm/G#     Hm/G  Hm/F# ...
Не обіцяй навічно
Де твоє моє завтра
У скронях вітер свище
Не обіцяй навіщо
Не обіцяй не треба
Залежить час найближчий
Та не завжди від тебе

І раптом все змінилось навколо
Проблеми ціни сни сподівання
Роз''їхалися як діти в школу
Що першим було стало останнім

Їй у Варшавські спальні райони
Йому Москву бетоном залити
Але кохання у таксофонах
Приречене не довго прожити

Куди ведуть строкаті дороги
Чому ви заблукали у світі
Вас сотні тисячі вас мільйони
В Ізраїлі Канаді на Кріті

Є спогади про те як було все
Надії є на те як все буде
Нас доля стрімко течією несе
Бо ми є не титани ми люди

Приспів.

Вона носила квіти в волоссі
І ними грався він і ще вітер
Здавалося давно вже дорослі
Але кохали щиро мов діти

Табулатура основної теми,
адаптована для однієї 6-струнної гітари
Автор: bohdanko (pisni.org.ua)
Доповнив: shandor (pisni.org.ua)

E||-------------------------|------------------------|
H||-------------------------|----------------7-------|
G||*------------------------|-------------------7----|
D||*-----4-----0-------4----|-----4-----0------------|
A||---2-----2-------2-------|--1-----1---------------|
E||-------------------------|------------------------|

------------------------|----------------12--------|
------------------------|--------------------12----|
-----4-----0-------4----|-----4-----0--------------|
--0-----0-------0-------|--------------------------|
------------------------|--3-----3-----------------|

------------------------|----------------------7--|
------------------------|----------------7--------|
------------------------|-------------------7-----|
-----4-----0-------4----|-----4-----0-------------|
--2-----2-------2-------|--1-----1----------------|

2x
------------------------|----------------12---------||
------------------------|--------------------12-----||
-----4-----0-------4----|-----4-----0--------------*||
--0-----0-------0-------|---------------------------||
------------------------|--3-----3------------------||

---------2h3------2h3------|--------2--------------3--|
*-----4---------------4----|-----4-----4-----4--------|
---2-----------0-----------|--------------------------|
---------------------------|--4-----------3-----2-----|

--------2h3------2h3-5-----|--------3--------3-----2---||
-----4------------------4--|-----4-----4--------------*||
--2-----------0------------|---------------------------||
---------------------------|--4-----------3-----2------||','[''pisni.org.ua'', ''cat:emigration'', ''cat:lirychni'', ''Пісні про еміґрацію'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_743044'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_743044','Квіти в волоссі','Вступ:  Hm/H Hm/A# Hm/A Hm/G (x2)

Hm/H
Вона носила квіти в волоссі
Hm/A#
І ними грався він і ще вітер
Hm/A
Здавалося давно вже дорослі
Hm/G
Але кохали щиро мов діти

Відчинені серця щирі очі
Таких не так багато є в світі
Лилися сльози щастя щоночі
Обіцянки назавжди любити

Будиночок на розі двох вулиць
Паркан плющем осіннім завитий
Здавалося дощі схаменулись
Здавалося завжди буде літо

Лише один дзвінок телефону
І варто тільки їм захотіти
Повіяло теплом з-за кордону
А отже неодмінно летіти

Приспів:
Не обіцяй назавжди
Hm/G#     Hm/G  Hm/F# ...
Не обіцяй навічно
Де твоє моє завтра
У скронях вітер свище
Не обіцяй навіщо
Не обіцяй не треба
Залежить час найближчий
Та не завжди від тебе

І раптом все змінилось навколо
Проблеми ціни сни сподівання
Роз''їхалися як діти в школу
Що першим було стало останнім

Їй у Варшавські спальні райони
Йому Москву бетоном залити
Але кохання у таксофонах
Приречене не довго прожити

Куди ведуть строкаті дороги
Чому ви заблукали у світі
Вас сотні тисячі вас мільйони
В Ізраїлі Канаді на Кріті

Є спогади про те як було все
Надії є на те як все буде
Нас доля стрімко течією несе
Бо ми є не титани ми люди

Приспів.

Вона носила квіти в волоссі
І ними грався він і ще вітер
Здавалося давно вже дорослі
Але кохали щиро мов діти

Табулатура основної теми,
адаптована для однієї 6-струнної гітари
Автор: bohdanko (pisni.org.ua)
Доповнив: shandor (pisni.org.ua)

E||-------------------------|------------------------|
H||-------------------------|----------------7-------|
G||*------------------------|-------------------7----|
D||*-----4-----0-------4----|-----4-----0------------|
A||---2-----2-------2-------|--1-----1---------------|
E||-------------------------|------------------------|

------------------------|----------------12--------|
------------------------|--------------------12----|
-----4-----0-------4----|-----4-----0--------------|
--0-----0-------0-------|--------------------------|
------------------------|--3-----3-----------------|

------------------------|----------------------7--|
------------------------|----------------7--------|
------------------------|-------------------7-----|
-----4-----0-------4----|-----4-----0-------------|
--2-----2-------2-------|--1-----1----------------|

2x
------------------------|----------------12---------||
------------------------|--------------------12-----||
-----4-----0-------4----|-----4-----0--------------*||
--0-----0-------0-------|---------------------------||
------------------------|--3-----3------------------||

---------2h3------2h3------|--------2--------------3--|
*-----4---------------4----|-----4-----4-----4--------|
---2-----------0-----------|--------------------------|
---------------------------|--4-----------3-----2-----|

--------2h3------2h3-5-----|--------3--------3-----2---||
-----4------------------4--|-----4-----4--------------*||
--2-----------0------------|---------------------------||
---------------------------|--4-----------3-----2------||');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_743044_l1','pisniua_743044','YouTube','https://www.youtube.com/watch?v=I5LPHb1mu_M','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_743044_l2','pisniua_743044','YouTube','https://www.youtube.com/watch?v=qKNRNTx01sE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_743044_l3','pisniua_743044','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_7447147';
DELETE FROM song_versions WHERE song_id = 'pisniua_7447147';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7447147';
DELETE FROM songs WHERE id = 'pisniua_7447147';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7447147','Не залишай','Музика: Назар Савчук, Владислав Ступак Слова: Назар Савчук, Владислав Ступак. Виконує: Анна Трінчер','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Так холодно,
А навкруги вогонь...
Так болісно -
Сльозами витру кров...
Ти з автоматом там,
Мій воїн, мій герой
Стоїш за нас,
Щоб наші діти
Посміхались знов!..
За Україну, за волю
Безстрашно пішов в бій!
Я вірю, настане
Мир на землі моїй!
Я просто чекаю,
Щоб ти прийшов живий!
Я дуже кохаю тебе,
Герою мій!

Приспів:
Не залишай мене одну!
Я поміж куль до тебе йду!
Нас роз''єднали в ніч одну,
І це не сон, це наяву...
Я буду молитися за тебе,
І щоб настало мирне небо!
Не залишай мене одну!
Знай, переживемо цю війну!

Так жадібно
Я обійму тебе!
Безжалісно
Нас ворог знову б''є,
Ти вистоїш!
Хай Бог нас береже!
Весна прийде -
І знов калина зацвіте!
За Україну, за волю
Безстрашно пішов в бій!
Я вірю, настане
Мир на землі моїй!
Я просто чекаю,
Щоб ти прийшов живий!
Я дуже кохаю тебе,
Герою мій!

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:viyskovi'', ''Пісні про кохання, ліричні'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7447147'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7447147','Не залишай','Так холодно,
А навкруги вогонь...
Так болісно -
Сльозами витру кров...
Ти з автоматом там,
Мій воїн, мій герой
Стоїш за нас,
Щоб наші діти
Посміхались знов!..
За Україну, за волю
Безстрашно пішов в бій!
Я вірю, настане
Мир на землі моїй!
Я просто чекаю,
Щоб ти прийшов живий!
Я дуже кохаю тебе,
Герою мій!

Приспів:
Не залишай мене одну!
Я поміж куль до тебе йду!
Нас роз''єднали в ніч одну,
І це не сон, це наяву...
Я буду молитися за тебе,
І щоб настало мирне небо!
Не залишай мене одну!
Знай, переживемо цю війну!

Так жадібно
Я обійму тебе!
Безжалісно
Нас ворог знову б''є,
Ти вистоїш!
Хай Бог нас береже!
Весна прийде -
І знов калина зацвіте!
За Україну, за волю
Безстрашно пішов в бій!
Я вірю, настане
Мир на землі моїй!
Я просто чекаю,
Щоб ти прийшов живий!
Я дуже кохаю тебе,
Герою мій!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7447147_l1','pisniua_7447147','YouTube','https://www.youtube.com/watch?v=MxuS3V16QLs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7447147_l2','pisniua_7447147','YouTube','https://www.youtube.com/watch?v=_kGN2OJ7BHA','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_744767';
DELETE FROM song_versions WHERE song_id = 'pisniua_744767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_744767';
DELETE FROM songs WHERE id = 'pisniua_744767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_744767','Лемковина','(Неідейний верш). Музика: Михайло Зарічний Слова: Петро Мурянка','uk','ukraine_1991',NULL,NULL,'1. Надав М.Зарічний','Підбір акордів: М. Зарічний','C7+  Fm69 C7+
Ци пора пора
C7+   Fm69  C7+
ци то смерт смерт
C7+     Fm69 C7+
ци стоп нерушымий

ци Боже хрань
Bb7+    Am
ци Боже хра-а-а-ань

C7+  Fm69 C7+
Єще дашто
C7+    Fm69      C7+
як Циганови на весілю
C7+      Fm69
кажут ти сыну співати
C7+
співай

Dm7
Тото лем сынку знай
F7+
што правд є
C7+
тьма тем
Dm7
Тото лем сынку знай
Eb7-5
што правд є
тьма тем
Тото лем сынку знай
Fm6
што правд є
C
тьма тем
Am
Лем
Лемковина
Bb
Єдна
Am
Лем','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_744767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_744767','Лемковина','C7+  Fm69 C7+
Ци пора пора
C7+   Fm69  C7+
ци то смерт смерт
C7+     Fm69 C7+
ци стоп нерушымий

ци Боже хрань
Bb7+    Am
ци Боже хра-а-а-ань

C7+  Fm69 C7+
Єще дашто
C7+    Fm69      C7+
як Циганови на весілю
C7+      Fm69
кажут ти сыну співати
C7+
співай

Dm7
Тото лем сынку знай
F7+
што правд є
C7+
тьма тем
Dm7
Тото лем сынку знай
Eb7-5
што правд є
тьма тем
Тото лем сынку знай
Fm6
што правд є
C
тьма тем
Am
Лем
Лемковина
Bb
Єдна
Am
Лем');
DELETE FROM song_links WHERE song_id = 'pisniua_7446';
DELETE FROM song_versions WHERE song_id = 'pisniua_7446';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7446';
DELETE FROM songs WHERE id = 'pisniua_7446';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7446','Верховино, світку ти наш!','(Верховино). Музика: народна Слова: Микола Устиянович. Виконує: Квітка Цісик','uk','ukraine_1991',NULL,NULL,'Акорди: пісенник ОУМ "Спадщина"',NULL,'Верховино, світку ти наш,
Гей як у тебе тут мило!
Як ігри вод, плине тут час
Свобідно, шумно, весело.

Am
Ой нема то краю краю            |
Над ту Верховину.               |
Am                           |
Там би мені погуляти            | (3)
Хоч одну годину                 |

З верха на верх, а з бору в бір,
З легкою в серці думкою.
В чересі кріс, в руках топір,
Гуляє легінь собою.

Черемоше, Черемоше,             |
Бистра твоя вода.               |
Дівчинонько з Верховини,        | (3)
Файна твоя врода                |

Що то є нам Поділля край?
Нам Верховина Поділля.
А бори - степ, ялиця - май,
А звіра голос - весіллє

Є у мене топір, топір           |
Щей кована бляшка.              |
Не боюся ані німця              | (3)
Ані того ляшка                  |','[''pisni.org.ua'', ''cat:huculski'', ''Гуцульські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7446'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7446','Верховино, світку ти наш!','Верховино, світку ти наш,
Гей як у тебе тут мило!
Як ігри вод, плине тут час
Свобідно, шумно, весело.

Am
Ой нема то краю краю            |
Над ту Верховину.               |
Am                           |
Там би мені погуляти            | (3)
Хоч одну годину                 |

З верха на верх, а з бору в бір,
З легкою в серці думкою.
В чересі кріс, в руках топір,
Гуляє легінь собою.

Черемоше, Черемоше,             |
Бистра твоя вода.               |
Дівчинонько з Верховини,        | (3)
Файна твоя врода                |

Що то є нам Поділля край?
Нам Верховина Поділля.
А бори - степ, ялиця - май,
А звіра голос - весіллє

Є у мене топір, топір           |
Щей кована бляшка.              |
Не боюся ані німця              | (3)
Ані того ляшка                  |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7446_l1','pisniua_7446','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7459446';
DELETE FROM song_versions WHERE song_id = 'pisniua_7459446';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7459446';
DELETE FROM songs WHERE id = 'pisniua_7459446';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7459446','Ой, чиє ж то жито','Музика: Тьома Паучек Слова: народні, Тьома Паучек','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ой, чиє ж то жито, чиї ж то покоси,
Чия то дівчина розпустила коси?
Проводжала мати сина у солдати,
Молоду невістку - в поле жито жати.
Жала вона, жала, жала — не дожала,
І до сходу сонця тополею стала...

Приспів:
Ой, чиє ж то жито, чиї ж то покоси,
Чия то дівчина розпустила коси?
Коси розпустила, гулять не ходила,
Молодого хлопця навік полюбила...

Ой, чиє ж то жито?       |
Українського народу!     |
Скільки ще прожити,      |
Аби дав москаль свободу? | (2)

Прийшов син до хати: — Здрастуй, рідна мати!
Де ж моя дружина, що не йде стрічати? —
Не питайся, сину, про свою дружину,
Бери топір в руки — рубай тополину.
Як ударив вперше — вона й похилилась,
Як ударив вдруге — вона й попросилась:
— Не рубай, коханий, бо я — твоя мила,
На моєму листі спить твоя дитина...

Приспів. (2)

Ой, чиє ж то жито?       |
Українського народу!     |
Скільки ще прожити,      |
Аби дав москаль свободу? | (2)','[''pisni.org.ua'', ''cat:viyskovi'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7459446'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7459446','Ой, чиє ж то жито','Ой, чиє ж то жито, чиї ж то покоси,
Чия то дівчина розпустила коси?
Проводжала мати сина у солдати,
Молоду невістку - в поле жито жати.
Жала вона, жала, жала — не дожала,
І до сходу сонця тополею стала...

Приспів:
Ой, чиє ж то жито, чиї ж то покоси,
Чия то дівчина розпустила коси?
Коси розпустила, гулять не ходила,
Молодого хлопця навік полюбила...

Ой, чиє ж то жито?       |
Українського народу!     |
Скільки ще прожити,      |
Аби дав москаль свободу? | (2)

Прийшов син до хати: — Здрастуй, рідна мати!
Де ж моя дружина, що не йде стрічати? —
Не питайся, сину, про свою дружину,
Бери топір в руки — рубай тополину.
Як ударив вперше — вона й похилилась,
Як ударив вдруге — вона й попросилась:
— Не рубай, коханий, бо я — твоя мила,
На моєму листі спить твоя дитина...

Приспів. (2)

Ой, чиє ж то жито?       |
Українського народу!     |
Скільки ще прожити,      |
Аби дав москаль свободу? | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7459446_l1','pisniua_7459446','YouTube','https://www.youtube.com/watch?v=ukrq0H16pjg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7488848';
DELETE FROM song_versions WHERE song_id = 'pisniua_7488848';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7488848';
DELETE FROM songs WHERE id = 'pisniua_7488848';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7488848','Ніченька',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Просто так неочікуваний зорепад
І ласкава ніченька
Припливла із того берега.
Що не так і чому так хочу я втекти?..
І, ласкава ніченька, ти пливи-пливи
Вітру на згадку...

Приспів:
Я хотів би втекти, щоб далеко,
Тільки я, тільки ти!..
І за руку тебе в мої сни
Заберу назавжди!..
Ти залишила слід,
По якому попри дощ, попри сніг
Я за руку тебе в мої сни
Заберу назавжди!..

Дізнатись як,
Що на серці у коханої?..
Казкою наші дні
Пролетіли, немов тихий ранок...
Цілував, обіймав під зорями тебе,
Обіцяв лиш моя, що не розлий вода
Вітру на згадку...

Приспів.

Озирнись на небо і згадай,
Що кохання це почуттів розмай!..
Не проси когось нагадати,
Що кохання - то вміння літати!

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7488848'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7488848','Ніченька','Просто так неочікуваний зорепад
І ласкава ніченька
Припливла із того берега.
Що не так і чому так хочу я втекти?..
І, ласкава ніченька, ти пливи-пливи
Вітру на згадку...

Приспів:
Я хотів би втекти, щоб далеко,
Тільки я, тільки ти!..
І за руку тебе в мої сни
Заберу назавжди!..
Ти залишила слід,
По якому попри дощ, попри сніг
Я за руку тебе в мої сни
Заберу назавжди!..

Дізнатись як,
Що на серці у коханої?..
Казкою наші дні
Пролетіли, немов тихий ранок...
Цілував, обіймав під зорями тебе,
Обіцяв лиш моя, що не розлий вода
Вітру на згадку...

Приспів.

Озирнись на небо і згадай,
Що кохання це почуттів розмай!..
Не проси когось нагадати,
Що кохання - то вміння літати!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7488848_l1','pisniua_7488848','YouTube','https://www.youtube.com/watch?v=yaOSGGvtXV4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_7575161';
DELETE FROM song_versions WHERE song_id = 'pisniua_7575161';
DELETE FROM songs_fts WHERE song_id = 'pisniua_7575161';
DELETE FROM songs WHERE id = 'pisniua_7575161';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_7575161','Ти - мій біль','Музика: Dj NACZALNIK Boss Слова: Dj NACZALNIK Boss','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ніч лягла на місто, мов туман на гори.
Тихо плаче дощ за моїм вікном,
Я шукав тебе між чужими речами,
Та знаходив лиш порожнечу і сон...
Кожен крок, як сповідь без каяття,
Кожне слово мов ніж у тиші...
Я живу між "було" і "якби ж то".
Та серце ще досі дише...

Приспів:
А ти - мій гріх і моя молитва,
Мій біль, що не вміє пройти,
Без тебе світ це холодна битва,
Де я не навчився жити й піти...
А ти - моя тінь у кожному кроці,
Мій хрест, мій вогонь, мій шлях!..
Я клявся забути тебе щоночі,
Та знову гублюся в твоїх очах!..

Скільки разів я палив свої мости,
Думав, все тепер назавжди,
Та твоє ім''я на моїх вустах,
Як вирок звучить у тиші пітьми...
Я вчився мовчати, ховаючи крик
У склянці гіркої самоти,
Та навіть, коли я зламався навік.
Я все ще шукаю сліди...

Приспів.

Якби можна було повернути час,
Я б мовчки обрав тебе знов,
Навіть, якщо цей шлях без прикрас,
Навіть, якщо це біль, а не любов!..
А ти - мій гріх і моя молитва,
Останній ковток тепла!..
Я знав, що ця правда мене доб''є,
Та серце - без тебе зола...','[''pisni.org.ua'', ''cat:devoted'', ''cat:lirychni'', ''cat:nostalgia'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_7575161'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_7575161','Ти - мій біль','Ніч лягла на місто, мов туман на гори.
Тихо плаче дощ за моїм вікном,
Я шукав тебе між чужими речами,
Та знаходив лиш порожнечу і сон...
Кожен крок, як сповідь без каяття,
Кожне слово мов ніж у тиші...
Я живу між "було" і "якби ж то".
Та серце ще досі дише...

Приспів:
А ти - мій гріх і моя молитва,
Мій біль, що не вміє пройти,
Без тебе світ це холодна битва,
Де я не навчився жити й піти...
А ти - моя тінь у кожному кроці,
Мій хрест, мій вогонь, мій шлях!..
Я клявся забути тебе щоночі,
Та знову гублюся в твоїх очах!..

Скільки разів я палив свої мости,
Думав, все тепер назавжди,
Та твоє ім''я на моїх вустах,
Як вирок звучить у тиші пітьми...
Я вчився мовчати, ховаючи крик
У склянці гіркої самоти,
Та навіть, коли я зламався навік.
Я все ще шукаю сліди...

Приспів.

Якби можна було повернути час,
Я б мовчки обрав тебе знов,
Навіть, якщо цей шлях без прикрас,
Навіть, якщо це біль, а не любов!..
А ти - мій гріх і моя молитва,
Останній ковток тепла!..
Я знав, що ця правда мене доб''є,
Та серце - без тебе зола...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_7575161_l1','pisniua_7575161','YouTube','https://www.youtube.com/watch?v=QAfYFl92Egs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_762161';
DELETE FROM song_versions WHERE song_id = 'pisniua_762161';
DELETE FROM songs_fts WHERE song_id = 'pisniua_762161';
DELETE FROM songs WHERE id = 'pisniua_762161';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_762161','А ти просто кохай','Слова: Олександр Пономарьов. Виконує: Олександр Пономарьов','uk','ukraine_1991',NULL,NULL,'мп3: http://music.grustee.net/mp3/readlicensemusic_102.html',NULL,'Мрією стань блакитною, ніжною
У морі любові невпинно, невпинно пливи,
Для мене святою ти будеш і грішною
У нашім коханні з тобою ми будем,
Ми будем на ви...

Приспів:
А ти просто кохай і будь коханою,
Любов пий до дна, від любові будь п''яною,
Просто кохай, кохай до нестями,
Ти просто кохай, кохай, кохай.

Вогонь назавжди залишиться в серці,
Ти тільки ніколи, ніколи його не жени,
Очі твої- любові озерця,
І я їх люблю, люблю через мрії і сни...

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_762161'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_762161','А ти просто кохай','Мрією стань блакитною, ніжною
У морі любові невпинно, невпинно пливи,
Для мене святою ти будеш і грішною
У нашім коханні з тобою ми будем,
Ми будем на ви...

Приспів:
А ти просто кохай і будь коханою,
Любов пий до дна, від любові будь п''яною,
Просто кохай, кохай до нестями,
Ти просто кохай, кохай, кохай.

Вогонь назавжди залишиться в серці,
Ти тільки ніколи, ніколи його не жени,
Очі твої- любові озерця,
І я їх люблю, люблю через мрії і сни...

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_762161_l1','pisniua_762161','YouTube','https://www.youtube.com/watch?v=X9YIGjmW1gY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_762161_l2','pisniua_762161','YouTube','https://www.youtube.com/watch?v=V2By8xbyw6w','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_762161_l3','pisniua_762161','YouTube','https://www.youtube.com/watch?v=oNxvw97WxUw','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_784060';
DELETE FROM song_versions WHERE song_id = 'pisniua_784060';
DELETE FROM songs_fts WHERE song_id = 'pisniua_784060';
DELETE FROM songs WHERE id = 'pisniua_784060';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_784060','Ой, пила, пила','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Український народний співаник, Мюнхен, 1946 р.',NULL,'Ой, пила, пила,
Чепця згубила,
Прийшла до дому,
Прийшла до дому,
Ще мужа била.

"Ой, іди, мужу,
Хата від хати,
Хата від хати,
Хата від хати
Чепця шукати!"

Ой, пішов милий
Хата від хати,
Не знайшов чепця,
Не знайшов чепця,
Не йде до хати.

Ой, пішов же він
Та й у корчомку:
"День добрий, люди,
День добрий, люди,
Дайте помочі!

На мир вам буде
Кварта горілки,
Чи не знайшли,
Чи не знайшли
Чепчика жінки?"','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_784060'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_784060','Ой, пила, пила','Ой, пила, пила,
Чепця згубила,
Прийшла до дому,
Прийшла до дому,
Ще мужа била.

"Ой, іди, мужу,
Хата від хати,
Хата від хати,
Хата від хати
Чепця шукати!"

Ой, пішов милий
Хата від хати,
Не знайшов чепця,
Не знайшов чепця,
Не йде до хати.

Ой, пішов же він
Та й у корчомку:
"День добрий, люди,
День добрий, люди,
Дайте помочі!

На мир вам буде
Кварта горілки,
Чи не знайшли,
Чи не знайшли
Чепчика жінки?"');
DELETE FROM song_links WHERE song_id = 'pisniua_779262';
DELETE FROM song_versions WHERE song_id = 'pisniua_779262';
DELETE FROM songs_fts WHERE song_id = 'pisniua_779262';
DELETE FROM songs WHERE id = 'pisniua_779262';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_779262','Колискова','Музика: Василь Лютий Слова: Василь Лютий. Виконує: Василь Лютий','uk','ukraine_1991',NULL,NULL,'1. http://vasyl.org.ua/',NULL,'Перед іскристою нічкою довгою
Тихо я підійду, схилюсь над ковдрою.
Теплом зігріючи ніжно чоло твоє,
Заколишу тебе я колисковою.

Приспів:
Спи, моя мила, хай тобі сниться
Щастя й любові світла зірниця.
Ніжний пестунок, мій поцілунок,
В уста солодкі, яро-червоні.

Я пригорнуся до милого личенька,
Що осяває місяцем ніченька.
Тихо шептатиму, тихо співатиму,
Милою бути завжди бажатиму.

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_779262'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_779262','Колискова','Перед іскристою нічкою довгою
Тихо я підійду, схилюсь над ковдрою.
Теплом зігріючи ніжно чоло твоє,
Заколишу тебе я колисковою.

Приспів:
Спи, моя мила, хай тобі сниться
Щастя й любові світла зірниця.
Ніжний пестунок, мій поцілунок,
В уста солодкі, яро-червоні.

Я пригорнуся до милого личенька,
Що осяває місяцем ніченька.
Тихо шептатиму, тихо співатиму,
Милою бути завжди бажатиму.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_787147';
DELETE FROM song_versions WHERE song_id = 'pisniua_787147';
DELETE FROM songs_fts WHERE song_id = 'pisniua_787147';
DELETE FROM songs WHERE id = 'pisniua_787147';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_787147','Пісня про Залізняка','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'В степу під Херсоном високії трави,
В степу під Херсоном курган.
Лежить одинокий в могилі високій
Максим Залізняк, партизан.

Ішов він на Київ, дійшов до Херсону,
Не знає, чи верне назад.
Москалі наліво, мадяри направо,
Осталось лиш десять гранат.

І мовив він слово своїм партизанам,
Останнєє слово своє:
"У місто під мури гранатами вдарим,
Гранати врятують усе!"

І хлопці гукнули: "Гранатами вдарим!
Гранати врятують, ще й як!"
І в темную пору пробилися скоро,
Оставсь лиш один Залізняк.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_787147'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_787147','Пісня про Залізняка','В степу під Херсоном високії трави,
В степу під Херсоном курган.
Лежить одинокий в могилі високій
Максим Залізняк, партизан.

Ішов він на Київ, дійшов до Херсону,
Не знає, чи верне назад.
Москалі наліво, мадяри направо,
Осталось лиш десять гранат.

І мовив він слово своїм партизанам,
Останнєє слово своє:
"У місто під мури гранатами вдарим,
Гранати врятують усе!"

І хлопці гукнули: "Гранатами вдарим!
Гранати врятують, ще й як!"
І в темную пору пробилися скоро,
Оставсь лиш один Залізняк.');
DELETE FROM song_links WHERE song_id = 'pisniua_791642';
DELETE FROM song_versions WHERE song_id = 'pisniua_791642';
DELETE FROM songs_fts WHERE song_id = 'pisniua_791642';
DELETE FROM songs WHERE id = 'pisniua_791642';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_791642','Смерека','(На краю села хатина...). Музика: Любомир Яким Слова: Любомир Яким','uk','ukraine_1991',NULL,NULL,NULL,NULL,'На краю села хатина,
Загляда в вікно смерека,
В тій хатині є дівчина,
Та до неї так далеко!

Приспів:
Ой, смереко
Чарівна моя смереко,
Чарівна моя смереко,
Чом ростеш ти так далеко.

Вийди мила до потічка,
Бачити тебе я мушу,
Кароока чарівничко,
Ти запала мені в душу.

Приспів.

Кароока чарівничка,
У потічку воду брала,
Усміхнулася до мене,
Тихим голосом сказала:

Приспів.

Нічка гори знову вкрила
Полонину всю залила,
Кароока чарівничко,
Чим ти мене полонила.

Приспів','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_791642'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_791642','Смерека','На краю села хатина,
Загляда в вікно смерека,
В тій хатині є дівчина,
Та до неї так далеко!

Приспів:
Ой, смереко
Чарівна моя смереко,
Чарівна моя смереко,
Чом ростеш ти так далеко.

Вийди мила до потічка,
Бачити тебе я мушу,
Кароока чарівничко,
Ти запала мені в душу.

Приспів.

Кароока чарівничка,
У потічку воду брала,
Усміхнулася до мене,
Тихим голосом сказала:

Приспів.

Нічка гори знову вкрила
Полонину всю залила,
Кароока чарівничко,
Чим ти мене полонила.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_791642_l1','pisniua_791642','YouTube','https://www.youtube.com/watch?v=uXBEkq4FaCU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_791642_l2','pisniua_791642','YouTube','https://www.youtube.com/watch?v=eLZ5t3VmEUE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_791642_l3','pisniua_791642','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_799745';
DELETE FROM song_versions WHERE song_id = 'pisniua_799745';
DELETE FROM songs_fts WHERE song_id = 'pisniua_799745';
DELETE FROM songs WHERE id = 'pisniua_799745';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_799745','Ой там у Львові','Українська народна пісня. Виконує: Ігор Богдан, Галичани','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой там у Львові, на Старім Замку,
Там сизий голуб пролітав,
Молодий жовняр стояв на варті, |
Сперся на кріса та й думав.    | (2)

Ой ти, голубе, маєш терпіння,
Лети в рідную сторону,
Занеси вістку до миленької,    |
Принеси мені новину.           | (2)

Ой летів голуб, ой летів сизий,
Летів в рідную сторону,
Шукав дівчину чорнобривую -    |
Знайшов у полі калину.         | (2)

В полі калина, в полі червона
Додолу листя схилила:
Тутай, жовніре, тутай, соколю, |
Твоя надія схована.            | (2)

Ой там у Львові, на Старім Замку,
Там сизий голуб пролітав,
Молодий жовняр стояв на варті, |
Сперся на кріса тай думав.     | (3)','[''pisni.org.ua'', ''cat:halycki'', ''cat:rekrutski'', ''Пісні з Галичини'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_799745'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_799745','Ой там у Львові','Ой там у Львові, на Старім Замку,
Там сизий голуб пролітав,
Молодий жовняр стояв на варті, |
Сперся на кріса та й думав.    | (2)

Ой ти, голубе, маєш терпіння,
Лети в рідную сторону,
Занеси вістку до миленької,    |
Принеси мені новину.           | (2)

Ой летів голуб, ой летів сизий,
Летів в рідную сторону,
Шукав дівчину чорнобривую -    |
Знайшов у полі калину.         | (2)

В полі калина, в полі червона
Додолу листя схилила:
Тутай, жовніре, тутай, соколю, |
Твоя надія схована.            | (2)

Ой там у Львові, на Старім Замку,
Там сизий голуб пролітав,
Молодий жовняр стояв на варті, |
Сперся на кріса тай думав.     | (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_799745_l1','pisniua_799745','YouTube','https://www.youtube.com/watch?v=3Mwuo7IZZe8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_799745_l2','pisniua_799745','YouTube','https://www.youtube.com/watch?v=zfe6SxHlWm4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_799745_l3','pisniua_799745','YouTube','https://www.youtube.com/watch?v=dduiRy5w4y8','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_8104518';
DELETE FROM song_versions WHERE song_id = 'pisniua_8104518';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8104518';
DELETE FROM songs WHERE id = 'pisniua_8104518';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8104518','Колиханка','Музика: Ніагара Слова: Віра-Вікторія Папа. Виконує: Ніагара','uk','ukraine_1991',NULL,NULL,'http://www.niagara.com.ua',NULL,'Розступилися дві доріженьки,
Затомилися мої ніженьки.
Дві доріженьки розступилися,
Почуття на два поділилися.
Піду в першу даль, принесу печаль,
Залишу собі біль і відчай,
Спогад снів моїх, пристрасть довгих літ.
Піду в першу даль, заколишу вкрай!

Приспів
Засинай,              |
Свої кроки не спиняй! | (2)

Друга даль зове, там коханий жде,
Манить співом ум, колихає сум.
Розстелилися дві доріженьки,
Я втираю лиш свої слізоньки.
Дві доріженьки розступилися,
Колихаюсь я, я втомилася...

Розступилися дві доріженьки,
Затомилися мої ніженьки.

Приспів.

Засинай, засинай,       |
Свої кроки не спиняй... | (4)

Приспів. (2)','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8104518'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8104518','Колиханка','Розступилися дві доріженьки,
Затомилися мої ніженьки.
Дві доріженьки розступилися,
Почуття на два поділилися.
Піду в першу даль, принесу печаль,
Залишу собі біль і відчай,
Спогад снів моїх, пристрасть довгих літ.
Піду в першу даль, заколишу вкрай!

Приспів
Засинай,              |
Свої кроки не спиняй! | (2)

Друга даль зове, там коханий жде,
Манить співом ум, колихає сум.
Розстелилися дві доріженьки,
Я втираю лиш свої слізоньки.
Дві доріженьки розступилися,
Колихаюсь я, я втомилася...

Розступилися дві доріженьки,
Затомилися мої ніженьки.

Приспів.

Засинай, засинай,       |
Свої кроки не спиняй... | (4)

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_810756';
DELETE FROM song_versions WHERE song_id = 'pisniua_810756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_810756';
DELETE FROM songs WHERE id = 'pisniua_810756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_810756','За пiчкою','(калибєльная)','uk','ukraine_1991',NULL,NULL,NULL,NULL,'За пічкою цвіркун сюрчить
Синочок мій іще не спить
Там за вікном морозяно
Сяє там небо зоряно

Коли нема ні крихтоньки
Глянь-но на місяць зіроньки
Ясно на небі сяють
В човнику пропливають

Ти спи. Я - нашепчу Тобі
Як добре ... там ... На небі
Як сірий вовк між хмар летить
В санках на місяць він нас мчить

Ну, відпочинь, хоч крапельку -
Дам золотую шабельку...
Очка скоріш заплющ, синок!
Чуєш, цвіркун на призьбі змовк....','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_810756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_810756','За пiчкою','За пічкою цвіркун сюрчить
Синочок мій іще не спить
Там за вікном морозяно
Сяє там небо зоряно

Коли нема ні крихтоньки
Глянь-но на місяць зіроньки
Ясно на небі сяють
В човнику пропливають

Ти спи. Я - нашепчу Тобі
Як добре ... там ... На небі
Як сірий вовк між хмар летить
В санках на місяць він нас мчить

Ну, відпочинь, хоч крапельку -
Дам золотую шабельку...
Очка скоріш заплющ, синок!
Чуєш, цвіркун на призьбі змовк....');
DELETE FROM song_links WHERE song_id = 'pisniua_811219';
DELETE FROM song_versions WHERE song_id = 'pisniua_811219';
DELETE FROM songs_fts WHERE song_id = 'pisniua_811219';
DELETE FROM songs WHERE id = 'pisniua_811219';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_811219','Вона','(Завтра прийде до кімнати). Музика: Кость Москалець Слова: Кость Москалець. Виконує: Плач Єремії','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Плач Єремії :: Вона (corrected)

Corrected by: Mishanya

Каподастp на пеpший лад.

(1)Вступ. Двiчi.
----------------------------------0-----------------------0------ 1стр.
---1--------0---------1-------0---1-1-------0---------------0---- 2
-----2--------2-----2---2---2---2-2---2-------2---------------2-- 3
-------2--------2-----------------2-----2-------2-----2---------3 4
-0----------------0---------------0-----------------2---2-------- 5
----------1---------------1---------------1-------0-------------- 6

(2)"Завтpа пpийде..."
----------------------------------------------------------0------
-----1--------0-------1-------0-------1-------0-------------3----
---2---2----2---2---2---2---2---2---2---2---2---2-------------2--
------------------------------------------------------2---------3
-0----------------0---------------0-----------------2---2--------
----------1---------------1---------------1-------0--------------

(3)"Хтось пpинесе..."
------------------------------------------------------0----------
---1----------0-------1-------0-------1-------0-----------3------
-----2------2---2---2---2---2---2---2---2---2---2-----------1----
-------2------------------------------------------------2--------
-0----------------0---------------0-----------------2---------0-2
----------1---------------1---------------1-------0--------------

(4)"А вона..."
"Буде пити..."
------0-------3-------3-------0---
--------1-------0-------0-------1-
---2--------2-------4-------2-----
-3------------------------3-------
----------3-------3---------------

(5)"Я спiватиму..."
-----0-------0---0---------------
-----1-------0---3-3---------1---
-------2-------1-1---1-----2---2-
---2-------2-----2-----2---------
-0---------------2-------0-------
---------0-----------------------

(6)"Та хiба..."
-----0-------0---0-------|
-----1-------0---3-3-----|
-------2-------1-1---1---|
---2-------2-----2-----2-|
-0---------------2-------|
---------0---------------|

(1)(1)

(2)
Завтpа пpийде до кімнати
Твоїх дpузів небагато
Вип''єте  холодного вина
(3)
Хтось пpинесе білі айстpи
Скаже хтось: "Життя пpекpасне"
Так, життя пpекpасне. А вона

(4)
А вона, а вона, сидітиме сумна
(4)
Буде пити, не п''яніти від дешевого вина
(5)
Я співатиму для неї, аж бpинітиме кpишталь
(6)
Та хіба зуміє голос подолати цю печаль

(1)

(2)
Так у світі повелося, я люблю її волосся,
Я люблю її тонкі вуста
(3)
Та невдовзі пpийде осінь, ми усі pозбіжимося,
По pусифікованих містах

(4)
Лиш вона, лиш вона сидітиме сумна
(4)
Буде пити, не п''яніти від дешевого вина
(5)
Моя дівчинко печальна, моя доле золота
(6)
Я пpодовжую кpичати, ніч безмежна і пуста

(1)[тут іде соло, яке я затабовувати не буду]

(2)
Так у світі повелося, я люблю її волосся,
Я люблю її тонкі вуста
(3)
Та невдовзі пpийде осінь, ми усі pозбіжимося,
По pусифікованих містах

(4)
Лиш вона, лиш вона сидітиме сумна
(4)
Буде пити, не п''яніти від дешевого вина
(5)
Моя дівчинко печальна, моя доле золота
(6)
Я пpодовжую кpичати, ніч безмежна і пуста
(4)
Я пpодовжую кpичати, ніч безмежна і пуста
(6)
Я пpодовжую кpичати, ніч безмежна і пуста

(1)
А-а-а.... (Двічі).','[''pisni.org.ua'', ''cat:lirychni'', ''cat:nostalgia'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_811219'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_811219','Вона','Плач Єремії :: Вона (corrected)

Corrected by: Mishanya

Каподастp на пеpший лад.

(1)Вступ. Двiчi.
----------------------------------0-----------------------0------ 1стр.
---1--------0---------1-------0---1-1-------0---------------0---- 2
-----2--------2-----2---2---2---2-2---2-------2---------------2-- 3
-------2--------2-----------------2-----2-------2-----2---------3 4
-0----------------0---------------0-----------------2---2-------- 5
----------1---------------1---------------1-------0-------------- 6

(2)"Завтpа пpийде..."
----------------------------------------------------------0------
-----1--------0-------1-------0-------1-------0-------------3----
---2---2----2---2---2---2---2---2---2---2---2---2-------------2--
------------------------------------------------------2---------3
-0----------------0---------------0-----------------2---2--------
----------1---------------1---------------1-------0--------------

(3)"Хтось пpинесе..."
------------------------------------------------------0----------
---1----------0-------1-------0-------1-------0-----------3------
-----2------2---2---2---2---2---2---2---2---2---2-----------1----
-------2------------------------------------------------2--------
-0----------------0---------------0-----------------2---------0-2
----------1---------------1---------------1-------0--------------

(4)"А вона..."
"Буде пити..."
------0-------3-------3-------0---
--------1-------0-------0-------1-
---2--------2-------4-------2-----
-3------------------------3-------
----------3-------3---------------

(5)"Я спiватиму..."
-----0-------0---0---------------
-----1-------0---3-3---------1---
-------2-------1-1---1-----2---2-
---2-------2-----2-----2---------
-0---------------2-------0-------
---------0-----------------------

(6)"Та хiба..."
-----0-------0---0-------|
-----1-------0---3-3-----|
-------2-------1-1---1---|
---2-------2-----2-----2-|
-0---------------2-------|
---------0---------------|

(1)(1)

(2)
Завтpа пpийде до кімнати
Твоїх дpузів небагато
Вип''єте  холодного вина
(3)
Хтось пpинесе білі айстpи
Скаже хтось: "Життя пpекpасне"
Так, життя пpекpасне. А вона

(4)
А вона, а вона, сидітиме сумна
(4)
Буде пити, не п''яніти від дешевого вина
(5)
Я співатиму для неї, аж бpинітиме кpишталь
(6)
Та хіба зуміє голос подолати цю печаль

(1)

(2)
Так у світі повелося, я люблю її волосся,
Я люблю її тонкі вуста
(3)
Та невдовзі пpийде осінь, ми усі pозбіжимося,
По pусифікованих містах

(4)
Лиш вона, лиш вона сидітиме сумна
(4)
Буде пити, не п''яніти від дешевого вина
(5)
Моя дівчинко печальна, моя доле золота
(6)
Я пpодовжую кpичати, ніч безмежна і пуста

(1)[тут іде соло, яке я затабовувати не буду]

(2)
Так у світі повелося, я люблю її волосся,
Я люблю її тонкі вуста
(3)
Та невдовзі пpийде осінь, ми усі pозбіжимося,
По pусифікованих містах

(4)
Лиш вона, лиш вона сидітиме сумна
(4)
Буде пити, не п''яніти від дешевого вина
(5)
Моя дівчинко печальна, моя доле золота
(6)
Я пpодовжую кpичати, ніч безмежна і пуста
(4)
Я пpодовжую кpичати, ніч безмежна і пуста
(6)
Я пpодовжую кpичати, ніч безмежна і пуста

(1)
А-а-а.... (Двічі).');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_811219_l1','pisniua_811219','YouTube','https://www.youtube.com/watch?v=qHnAJMmwzto','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_811219_l2','pisniua_811219','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_811654';
DELETE FROM song_versions WHERE song_id = 'pisniua_811654';
DELETE FROM songs_fts WHERE song_id = 'pisniua_811654';
DELETE FROM songs WHERE id = 'pisniua_811654';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_811654','Мертві бджоли не гудуть','Музика: Павло Зібров Слова: Юрій Рибчинський. Виконує: Павло Зібров','uk','ukraine_1991',NULL,NULL,'http://www.zibrov.com.ua/',NULL,'3 того світу вороття не бува ніколи
І тому я п''ю життя, мов росу ранкову.
П''ю невдачи гіркоту і солодкий успіх,
Суєту і самоту, щастя і біду.

Приспів:
На цім світі пий, соколе,
На тім світі не дадуть.
Мертві бджоли, мертві бджоли,
Мертві бджоли не гудуть.
На цім світі пий, соколе,
На тім світі не дадуть.
Мертві бджоли, мертві бджоли,
Мертві бджоли не гудуть,
Мертві бджоли, мертві бджоли,
Мертві бджоли не гудуть!

П''ю в тумані на зорі дикий мед кохання,
Бо живу я на землі вперше і востаннє.
П''ю до дна, до дна, до дна муки і страждання
І хмілію без вина, бо в душі - весна!

Приспів.

Вічний дурень, хто не п''є радощі і тугу,
Бо Всевишній не нальє і святому вдруге.
Після того, як доп''''ю все життя до краплі,
Пісню чутиму свою в пеклі і в раю!

Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''cat:zhartivlyvi'', ''Філософські пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_811654'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_811654','Мертві бджоли не гудуть','3 того світу вороття не бува ніколи
І тому я п''ю життя, мов росу ранкову.
П''ю невдачи гіркоту і солодкий успіх,
Суєту і самоту, щастя і біду.

Приспів:
На цім світі пий, соколе,
На тім світі не дадуть.
Мертві бджоли, мертві бджоли,
Мертві бджоли не гудуть.
На цім світі пий, соколе,
На тім світі не дадуть.
Мертві бджоли, мертві бджоли,
Мертві бджоли не гудуть,
Мертві бджоли, мертві бджоли,
Мертві бджоли не гудуть!

П''ю в тумані на зорі дикий мед кохання,
Бо живу я на землі вперше і востаннє.
П''ю до дна, до дна, до дна муки і страждання
І хмілію без вина, бо в душі - весна!

Приспів.

Вічний дурень, хто не п''є радощі і тугу,
Бо Всевишній не нальє і святому вдруге.
Після того, як доп''''ю все життя до краплі,
Пісню чутиму свою в пеклі і в раю!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_811654_l1','pisniua_811654','YouTube','https://www.youtube.com/watch?v=e4PxdZsbNt8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_811654_l2','pisniua_811654','YouTube','https://www.youtube.com/watch?v=GGUaHzgf_o0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8122052';
DELETE FROM song_versions WHERE song_id = 'pisniua_8122052';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8122052';
DELETE FROM songs WHERE id = 'pisniua_8122052';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8122052','Ой щіт-щіт!','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'З пам''яті','Жартівлива, танцювальна.','Ой, щіт-щіт, ой, щіт-щіт!
Щітка маленька
Та на камінечку сиділа-сиділа.
Не пищіт, не пищіт,
Бо почує ненька!
Та дрібний мачок
Дзьобала-дзьобала.

Ой, дзьоб-дзобуночок,
Зелененький горбочок,
Волошковий віночок,
Пішла дівчина в таночок.
На горбочку сяду,
На сорочку спряду,
Рукавці та комірці,
Горобейкові штанці.
Гей-гей!    Фонограма-мінус (mp3)','[''pisni.org.ua'', ''cat:dances'', ''Пісні до танцю'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8122052'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8122052','Ой щіт-щіт!','Ой, щіт-щіт, ой, щіт-щіт!
Щітка маленька
Та на камінечку сиділа-сиділа.
Не пищіт, не пищіт,
Бо почує ненька!
Та дрібний мачок
Дзьобала-дзьобала.

Ой, дзьоб-дзобуночок,
Зелененький горбочок,
Волошковий віночок,
Пішла дівчина в таночок.
На горбочку сяду,
На сорочку спряду,
Рукавці та комірці,
Горобейкові штанці.
Гей-гей!    Фонограма-мінус (mp3)');
DELETE FROM song_links WHERE song_id = 'pisniua_8122979';
DELETE FROM song_versions WHERE song_id = 'pisniua_8122979';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8122979';
DELETE FROM songs WHERE id = 'pisniua_8122979';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8122979','Hey you','Слова: Валерій Харчишин. Виконує: Dazzle dreams, Друга ріка, Lama','uk','ukraine_1991',NULL,NULL,'аудіозапис','Підбір акордів: maestro202','Вступ: Dm C B
Заблукала доля моя,
Зачекався сон на порозі,
Затужила твоя сім''я.
Повернись - шепоче сон,
Ти озирнись - шепочуть сльози!

Приспів:
Hey you, hey you,
B
Я благаю, молю
Hey you, hey you,
B
Повертайся в сім''ю!
Hey you, hey you,
B
Витри сльози з вій,
Не стирай свої сліди,
Є надія, що прийдеш ти!

Кожна свічка у вікні,
Кожна річка тане у морі.
Та під ранок сняться мені:
На порозі твоя тінь,
Що душа поверне скоро.

Приспів.

Hey you, hey you! | (4)

Приспів.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8122979'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8122979','Hey you','Вступ: Dm C B
Заблукала доля моя,
Зачекався сон на порозі,
Затужила твоя сім''я.
Повернись - шепоче сон,
Ти озирнись - шепочуть сльози!

Приспів:
Hey you, hey you,
B
Я благаю, молю
Hey you, hey you,
B
Повертайся в сім''ю!
Hey you, hey you,
B
Витри сльози з вій,
Не стирай свої сліди,
Є надія, що прийдеш ти!

Кожна свічка у вікні,
Кожна річка тане у морі.
Та під ранок сняться мені:
На порозі твоя тінь,
Що душа поверне скоро.

Приспів.

Hey you, hey you! | (4)

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8122979_l1','pisniua_8122979','YouTube','https://www.youtube.com/watch?v=1hqNIRefxdM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_812256';
DELETE FROM song_versions WHERE song_id = 'pisniua_812256';
DELETE FROM songs_fts WHERE song_id = 'pisniua_812256';
DELETE FROM songs WHERE id = 'pisniua_812256';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_812256','Каліфорнія','Музика: The Eagles Слова: Олег Скрипка. Виконує: Олег Скрипка','uk','ukraine_1991',NULL,NULL,'текст- аудіо; акк.- http://pesenki.ru/?p=i2band=eaglesid=685','* Тут подано текст, записаний на слух.??? - рядки, які викликають сумнів (у дужках - можливий інший варіант тексту). Хто знає точний текст (або просто має кращий слух до тектстів) - пишіть! (bohdanko@epost.com.ua) "…нащо нам всім тепер Каліфорнія…" Це були ті незабутні часи "совку", коли закордонні хіти, проникаючи через важкі радянські заслони, передавались... "з рук в руки чи з вуст у вуста",...перекладались на рідну мову і, звичайно, співались патлатою молоддю під гітару по всіх дворах та у всіх турпоходах, біля вогнищ та просто неба під зірками... Це трапилось і з хітом американської групи "Іглз" "Каліфорнія". За словами Олега Скрипки, вперше він почув її в обробленому варіанті в гуртожитку №5 Київського Політехнічного Інституту у виконанні свого однокурсника Рудьо Сашка. Олег добре запам''ятав перший куплет, приспів та манеру виконання пісні. І лише нещодавно керманич "V.V." додумав ще один куплет та приспів, аранжував та записав цю композицію як реліктовий спомин тих далеких 80-х. (Прес-служба "V.V.") http://talk.uasound.com/archive/index.php/t-320.html','Вступ:   F# G       (4)

Вирішив поїхать я з рідного села,
Бо у нас у клубі развлєчєнієв нема.
Я надів кухвайку, чоботи напер,
Чмокнув в морду Гальку і у Київ я попер.

Поробив з півроку на об''єднанні "Азот".
Став я хлопець городський. Я тепер-тепер не тот.
Ну а раз в Сайгоні з хлопцями набравсь - * ???
(Ну а раз та й годі з хлопцями набравсь -)*
У відділення попався - ну і там робить оставсь.

Приспів:
Всі мене бояться, як у формі я.
Я страшний тепер, я страшний тепер міліціонер.
Нащо мені тепер Каліфорнія?
В мене свій готель, де дають постель за один рубель.

Програш:   F# G  (4)

Якось на бенкеті, а були з кумом "під шафе",
Там естрада файна грала, караоке заводне.
Я вскочив на стола, в когось вирвав мікрофон
Та й почав собі волати, немов поранений гібон.

Але там були крутії, та й почався кавардак.
А влучив хтось мені по пиці, кум єму дістав п’ятак. * ???
(А влучив хтось мені по пиці, кум їму, дістав я так.) *
Потім я хотів - той плаче: "Я є відомий продюсер.
Хоч? - зроблю тебе артистом!" - От і співаю я тепер.

Приспів:
Всі мене кохають, бо відомий я.
Ценний баритон ллється із вікон... Радіо Шансон.
Нащо нам тепер Каліфорнія?!
В нас є свій музон, закликає й он до любимих зон.

Програш...

* В оригіналі Олега Скрипки
пісня виконується з Cm  (Capo I fret).','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_812256'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_812256','Каліфорнія','Вступ:   F# G       (4)

Вирішив поїхать я з рідного села,
Бо у нас у клубі развлєчєнієв нема.
Я надів кухвайку, чоботи напер,
Чмокнув в морду Гальку і у Київ я попер.

Поробив з півроку на об''єднанні "Азот".
Став я хлопець городський. Я тепер-тепер не тот.
Ну а раз в Сайгоні з хлопцями набравсь - * ???
(Ну а раз та й годі з хлопцями набравсь -)*
У відділення попався - ну і там робить оставсь.

Приспів:
Всі мене бояться, як у формі я.
Я страшний тепер, я страшний тепер міліціонер.
Нащо мені тепер Каліфорнія?
В мене свій готель, де дають постель за один рубель.

Програш:   F# G  (4)

Якось на бенкеті, а були з кумом "під шафе",
Там естрада файна грала, караоке заводне.
Я вскочив на стола, в когось вирвав мікрофон
Та й почав собі волати, немов поранений гібон.

Але там були крутії, та й почався кавардак.
А влучив хтось мені по пиці, кум єму дістав п’ятак. * ???
(А влучив хтось мені по пиці, кум їму, дістав я так.) *
Потім я хотів - той плаче: "Я є відомий продюсер.
Хоч? - зроблю тебе артистом!" - От і співаю я тепер.

Приспів:
Всі мене кохають, бо відомий я.
Ценний баритон ллється із вікон... Радіо Шансон.
Нащо нам тепер Каліфорнія?!
В нас є свій музон, закликає й он до любимих зон.

Програш...

* В оригіналі Олега Скрипки
пісня виконується з Cm  (Capo I fret).');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_812256_l1','pisniua_812256','YouTube','https://www.youtube.com/watch?v=970-3GCM89s','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8126575';
DELETE FROM song_versions WHERE song_id = 'pisniua_8126575';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8126575';
DELETE FROM songs WHERE id = 'pisniua_8126575';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8126575','Раз я сиділа біля віконця',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Раз я сиділа біля віконця,
Біля відкритого вікна
До мене циганка,
Циганка молодая
Аж під віконце підійшла

Дай ми дівчино свою рученьку
Хай я тобі поворожу
Хоч я циганка, хоч я молодая
Всю щиру правду розкажу

Ти маєш хлопця, хлопця молодого
Він п''є горівку, мед вино
Він грає в карти в карти виграває
Про тебе вже забув давно.

Ой як він може про мене забути
Коли портрет той на стіні
Ой як він може про мене забути
Коли дитина на руці.

Портрет той викінь через віконце
Дитину в дітсадок віддай
А сама іди, іди між дівчата
Іншого милого шукай','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8126575'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8126575','Раз я сиділа біля віконця','Раз я сиділа біля віконця,
Біля відкритого вікна
До мене циганка,
Циганка молодая
Аж під віконце підійшла

Дай ми дівчино свою рученьку
Хай я тобі поворожу
Хоч я циганка, хоч я молодая
Всю щиру правду розкажу

Ти маєш хлопця, хлопця молодого
Він п''є горівку, мед вино
Він грає в карти в карти виграває
Про тебе вже забув давно.

Ой як він може про мене забути
Коли портрет той на стіні
Ой як він може про мене забути
Коли дитина на руці.

Портрет той викінь через віконце
Дитину в дітсадок віддай
А сама іди, іди між дівчата
Іншого милого шукай');
DELETE FROM song_links WHERE song_id = 'pisniua_8131070';
DELETE FROM song_versions WHERE song_id = 'pisniua_8131070';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8131070';
DELETE FROM songs WHERE id = 'pisniua_8131070';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8131070','Гноблення України та повстання 1648 року','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,'***Город Полонний – сьогодні село Полонне, Володимирецького району, Рівненської області. Дума відома в декількох варіантах і була записана ще впершій половині 19 ст., але не потрапила до сучасних збірок думового епосу. Дума була складена кобзарями на самому початку повстання Хмельницького. Наведені події стались через бажання старост та панів-дідичів збільшити свої доходи. Вони назвали євреїв, та всі, без винятку, доходи, віддали їм в аренду: торги, шляхи, мости, ріки, навіть церкви. Всі, хто бажав вінчатись або охрестити дитину, мали сплатити єврею-арендарю мито. "Якщо якийсь козак укурить вина або зварить пива або меду, не сказавши єврею, або з євреєм почне говорити не знявши шапки, то євреї їх грабували та разоряли, життя їх лишали, а дружину та дітей в роботу забирали" – свідчив сучасник тих подій. Особливих утисків українці зазнали після повстання Остряниці 1638 року, коли були заарендовані навіть ріки та угіддя запорожців. Конкретність і історичність цього епічного твору не залишає доводів, всякого роду, "моралістам" і "захисникам". Після прочитання цієї думи, можна зробити єдиний висновок – євреї теж мають взяти на себе частину відповідальності за гоніння на них. Спочатку треба питати з тих, хто вимагав гроші за ключі від церкви, а вже потім, з Хмельницького...','"Гноблення України жидами-арендарями та повстання 1648 року"

Як од Кумівщини да до Хмельниччини,
Як од Хмельниччини да до Брянщини,
Як од Брянщини да й до сего ж то дня,
Як у землі кралевській да добра не було:
Як жиди-рандарі
Всі шляхи козацькі заорандовали,
Що на одній милі
Да по три шинки становили.
Становили шинки по долинах,
Зводили щогли по високих могилах.
Іще ж то жиди-рандарі
У тому не перестали:
На славній Україні всі козацьки торги заорандовали,
Да брали мимо-промито:
Од возового
По пів-золотого,
Од пішого пішениці по три денежки мита брали,
Од неборака старця
Брали кури да яйця,
Да іщє питає:"Ци нема, котик, сце цого?"
Іще ж то жиди-рандарі
Утому не перестали:
На славній Україні всі козацьки церкви заорандовали.
Которому б то козаку, альбо мужику дав Бог дитину появити,
То не йди до попа благословиться,
Да пійди до жида-рандара да полож шостак, щоб позволив церкву одчинити,
Тую дитину охрестити.
Іще ж то которому б то козаку, альбо мужику дав Бог дитину одружити,
То не йди до попа благословиться,
Да пойди до жида-рандара да полож битий тарель, щоб позволив церкву одчинити,
Тую дитину одружити.
Іще-ж-то жиди-рандарі
У тому не перестали:
На славній Україні всі козацьки ріки заорандовали:
Перва на Самарі,
Друга на Саксані,
Трейтя на Гнилій,
Четверта на Пробойній,
П''ята на річці Кудесці.
Котрий би то козак, альбо мужик ісхотів риби ловити,
Жінку свою з дітьми покормити,
То не йди до попа благословиться
Да пійди до жида-рандара да поступи йому часть оддать,
Щоб позволив на річці риби вловити,
Жінку свою з дітьми покормити.
Тогді-ж то один козак мимо кабака іде,
За плечима мушкет несе,
Хоче на річці утя вбити,
Жінку свою з дітьми покормити.
То жид-рандар у кватирку поглядає,
На жидівку свою стиха словами промовляє:
"Ей жидівочво ж моя Рася!
Що сей козак думає, що він у кабак не вступить,
За денежку горілки не купить,
Мене, жида-рандара, не перепросить,
Щоб позволив єму на річці утя вбити,
Жінку свою з дітьми покормити.
Тогді-то жид-рандар стиха підхождає,
Козава за патли хватає.
То козак на жида-рандара скоса, як ведмідь, поглядає,
Іще жида-рандара мостивим паном узиває:
"Ей жиду, каже, жиду-рандаре,
Мостивий пане!,
Позволь мині на річці утя вбити,
Жінку свою з дітьми покормити."
Тогді жид-рандар у кабак вхождає,
На жидівку свою стиха словами промовляє:
"Ей жидівочко ж моя Рася!
Буть мині тепер у Білій Церкві наставним равом:
Назвав мене козак мостивим паном."
Тогді-то у святий божественний день у четверток,
Як жиди-рандарі у Білу Церкву на сейм збирались,
Один до одного стиха словами промовляли:
"Ей жиди ж ви, жиди-рандарі!
Що тепер у вас на славній Україні слишно?"
"Слишен", говорить, "тепер у нас гетьман Хмелницький:
Як од Білої Церкви да до славного Запорожа
Не така стоіть жидівська сторожа"!
Тогді обозветься один жид Оврам:
"Ей жиди ж ви, жиди-рандарі!
Як із Низу тихий вітер повіне,
Вся ваша жидівська сторожа погине".
Тогді ж то як у святий день божественний у во вторник
Гетьман Хмелницький козаків до сходу сонця у поход виправляв
I стиха словами промовляв:
."Ей козаки ви, діти друзі!
Прошу вас добре дбайте,
Од сна вставайте,
Руський Очинаш читайте.
На славну Україну прибувайте,
Жидів-рандарів у пень рубайте,
Кров їх жидівську у полі з жовтим піском мішайте,
Віри своєї Християнсько у поругу не подайте,
Жидівському шабашу не польгуйте".
Отогді-то всі жиди-рандарі догадливі бували,
Усі до города Полонного повтікали.
Тогді-то Хмелницький на славну Україну прибував,
Hi одного жида-рандара не заставав.
Тогді-то пан Хмелницький, житель Чигиринськнй,
Козак лейстровий, писарь військовий,
Не пишний бував,
До Полонного города прибував,
Та старими жидами орав,
A жидівкаии боронував,
A которії бували малі діти,
То він і кіньми порозбивав.
Як узяли з Полонного-города втікати,
Як узяли свого Рабина Мошку проклинати:
"Бодай ти, Мошку, щастя й долі не мав,
Як ти по багато на Вкраїні откупу брав!
А як би ти був, Мошку,
Та брав на Вкраїні откупу потрошку,
То б ми на Вкраїні проживали,
То нас би козаки українські вельможними панами називали!"
.А як то був жид Янкель,
То він коло школи похожає, .
Та по школі плаче-ридає:
"Школо наша, богомільнице!
Вже нам у тобі не бувати,
I тебе не продавати-
За тебе грошей не брати,
I в карман не ховати:
Треба тебе на Вкраїні покидати,
Та ще в тебе будуть нескребені свині заганяти!"
Як стали од Полонного-города до Случі-річки прибувати, -
То пан Хмельницький, житель Чигиринськнй,
То він ночі не досипляє-
Коло Случі-річки ляхів і жидів доганяє.
Скоро догнав у вечері пізно-
I там стало повернутися тісно...
І там до них прибуває," -
"Ще на козаків гукав, словами промовляв:
"Друзі, панове молодці! До Случі-річки прибувайте,
Жидів та ляхів у пень рубайте,
I до їx по козацькій словами промовляйте:
Жиди та Ляхи, примічайте:
"От буде по той бік Случі ваше,
А по сей бік буде пана Хмельницького і наше!"
Як почали жиди та ляхи с паном Хмелницьким споляться,
Щоб пополам пива наварити:
То вже ж то бували лядськії дрова,
А Хмельницького вода, -
То був жидівський ячмінь,
А Хмельницького хміль...
То як пива наварили,
Тоді Хмельницькому славу на віки сотворили!
Та хотя ж то був пан Хмельницький, житель Чигиринський,
Козак лейстровий, писарь військовий, -
Лицарь добрий, та помер,
A тільки його слава козацька-молодецька
Не вмре, не поляже:
Та буде вона славна міжду друзями-молодцями
Од нині й до віку!
Даруй, Боже, всьому миру живому і нам на здоров''я,
Та на многії літа
Од нині й до віка!','[''pisni.org.ua'', ''cat:dumy'', ''cat:istorychni'', ''Думи'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8131070'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8131070','Гноблення України та повстання 1648 року','"Гноблення України жидами-арендарями та повстання 1648 року"

Як од Кумівщини да до Хмельниччини,
Як од Хмельниччини да до Брянщини,
Як од Брянщини да й до сего ж то дня,
Як у землі кралевській да добра не було:
Як жиди-рандарі
Всі шляхи козацькі заорандовали,
Що на одній милі
Да по три шинки становили.
Становили шинки по долинах,
Зводили щогли по високих могилах.
Іще ж то жиди-рандарі
У тому не перестали:
На славній Україні всі козацьки торги заорандовали,
Да брали мимо-промито:
Од возового
По пів-золотого,
Од пішого пішениці по три денежки мита брали,
Од неборака старця
Брали кури да яйця,
Да іщє питає:"Ци нема, котик, сце цого?"
Іще ж то жиди-рандарі
Утому не перестали:
На славній Україні всі козацьки церкви заорандовали.
Которому б то козаку, альбо мужику дав Бог дитину появити,
То не йди до попа благословиться,
Да пійди до жида-рандара да полож шостак, щоб позволив церкву одчинити,
Тую дитину охрестити.
Іще ж то которому б то козаку, альбо мужику дав Бог дитину одружити,
То не йди до попа благословиться,
Да пойди до жида-рандара да полож битий тарель, щоб позволив церкву одчинити,
Тую дитину одружити.
Іще-ж-то жиди-рандарі
У тому не перестали:
На славній Україні всі козацьки ріки заорандовали:
Перва на Самарі,
Друга на Саксані,
Трейтя на Гнилій,
Четверта на Пробойній,
П''ята на річці Кудесці.
Котрий би то козак, альбо мужик ісхотів риби ловити,
Жінку свою з дітьми покормити,
То не йди до попа благословиться
Да пійди до жида-рандара да поступи йому часть оддать,
Щоб позволив на річці риби вловити,
Жінку свою з дітьми покормити.
Тогді-ж то один козак мимо кабака іде,
За плечима мушкет несе,
Хоче на річці утя вбити,
Жінку свою з дітьми покормити.
То жид-рандар у кватирку поглядає,
На жидівку свою стиха словами промовляє:
"Ей жидівочво ж моя Рася!
Що сей козак думає, що він у кабак не вступить,
За денежку горілки не купить,
Мене, жида-рандара, не перепросить,
Щоб позволив єму на річці утя вбити,
Жінку свою з дітьми покормити.
Тогді-то жид-рандар стиха підхождає,
Козава за патли хватає.
То козак на жида-рандара скоса, як ведмідь, поглядає,
Іще жида-рандара мостивим паном узиває:
"Ей жиду, каже, жиду-рандаре,
Мостивий пане!,
Позволь мині на річці утя вбити,
Жінку свою з дітьми покормити."
Тогді жид-рандар у кабак вхождає,
На жидівку свою стиха словами промовляє:
"Ей жидівочко ж моя Рася!
Буть мині тепер у Білій Церкві наставним равом:
Назвав мене козак мостивим паном."
Тогді-то у святий божественний день у четверток,
Як жиди-рандарі у Білу Церкву на сейм збирались,
Один до одного стиха словами промовляли:
"Ей жиди ж ви, жиди-рандарі!
Що тепер у вас на славній Україні слишно?"
"Слишен", говорить, "тепер у нас гетьман Хмелницький:
Як од Білої Церкви да до славного Запорожа
Не така стоіть жидівська сторожа"!
Тогді обозветься один жид Оврам:
"Ей жиди ж ви, жиди-рандарі!
Як із Низу тихий вітер повіне,
Вся ваша жидівська сторожа погине".
Тогді ж то як у святий день божественний у во вторник
Гетьман Хмелницький козаків до сходу сонця у поход виправляв
I стиха словами промовляв:
."Ей козаки ви, діти друзі!
Прошу вас добре дбайте,
Од сна вставайте,
Руський Очинаш читайте.
На славну Україну прибувайте,
Жидів-рандарів у пень рубайте,
Кров їх жидівську у полі з жовтим піском мішайте,
Віри своєї Християнсько у поругу не подайте,
Жидівському шабашу не польгуйте".
Отогді-то всі жиди-рандарі догадливі бували,
Усі до города Полонного повтікали.
Тогді-то Хмелницький на славну Україну прибував,
Hi одного жида-рандара не заставав.
Тогді-то пан Хмелницький, житель Чигиринськнй,
Козак лейстровий, писарь військовий,
Не пишний бував,
До Полонного города прибував,
Та старими жидами орав,
A жидівкаии боронував,
A которії бували малі діти,
То він і кіньми порозбивав.
Як узяли з Полонного-города втікати,
Як узяли свого Рабина Мошку проклинати:
"Бодай ти, Мошку, щастя й долі не мав,
Як ти по багато на Вкраїні откупу брав!
А як би ти був, Мошку,
Та брав на Вкраїні откупу потрошку,
То б ми на Вкраїні проживали,
То нас би козаки українські вельможними панами називали!"
.А як то був жид Янкель,
То він коло школи похожає, .
Та по школі плаче-ридає:
"Школо наша, богомільнице!
Вже нам у тобі не бувати,
I тебе не продавати-
За тебе грошей не брати,
I в карман не ховати:
Треба тебе на Вкраїні покидати,
Та ще в тебе будуть нескребені свині заганяти!"
Як стали од Полонного-города до Случі-річки прибувати, -
То пан Хмельницький, житель Чигиринськнй,
То він ночі не досипляє-
Коло Случі-річки ляхів і жидів доганяє.
Скоро догнав у вечері пізно-
I там стало повернутися тісно...
І там до них прибуває," -
"Ще на козаків гукав, словами промовляв:
"Друзі, панове молодці! До Случі-річки прибувайте,
Жидів та ляхів у пень рубайте,
I до їx по козацькій словами промовляйте:
Жиди та Ляхи, примічайте:
"От буде по той бік Случі ваше,
А по сей бік буде пана Хмельницького і наше!"
Як почали жиди та ляхи с паном Хмелницьким споляться,
Щоб пополам пива наварити:
То вже ж то бували лядськії дрова,
А Хмельницького вода, -
То був жидівський ячмінь,
А Хмельницького хміль...
То як пива наварили,
Тоді Хмельницькому славу на віки сотворили!
Та хотя ж то був пан Хмельницький, житель Чигиринський,
Козак лейстровий, писарь військовий, -
Лицарь добрий, та помер,
A тільки його слава козацька-молодецька
Не вмре, не поляже:
Та буде вона славна міжду друзями-молодцями
Од нині й до віку!
Даруй, Боже, всьому миру живому і нам на здоров''я,
Та на многії літа
Од нині й до віка!');
DELETE FROM song_links WHERE song_id = 'pisniua_8141415';
DELETE FROM song_versions WHERE song_id = 'pisniua_8141415';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8141415';
DELETE FROM songs WHERE id = 'pisniua_8141415';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8141415','Іванове зілля','Українська народна пісня. Виконує: Крайня Хата','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Іванове зілля цвіте у Карпатах
У темному лісі, як місяць зійде.
Хто цвіт його зірве, в долоні положить,  |
Той щастя і долю навіки знайде.          | (2)

Іванове зілля, Іванове зілля,
Іванове зілля цвіте один раз.
І так, як весна раз приходить у травах   |
Один раз кохання приходить до нас.       | (2)

Іванове зілля, Іванове зілля,
Іванове зілля цвіте один раз.
Хто цвіт його зірве, в долоні положить,  |
Той щастя і долю навіки знайде.          | (2)','[''pisni.org.ua'', ''cat:all-ukraine'', ''cat:kupalski'', ''cat:mifichni'', ''cat:romansy'', ''Загальноукраїнські пісні'', ''Купальські пісні'', ''Пісня з міфічними, світотворчими мотивами'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8141415'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8141415','Іванове зілля','Іванове зілля цвіте у Карпатах
У темному лісі, як місяць зійде.
Хто цвіт його зірве, в долоні положить,  |
Той щастя і долю навіки знайде.          | (2)

Іванове зілля, Іванове зілля,
Іванове зілля цвіте один раз.
І так, як весна раз приходить у травах   |
Один раз кохання приходить до нас.       | (2)

Іванове зілля, Іванове зілля,
Іванове зілля цвіте один раз.
Хто цвіт його зірве, в долоні положить,  |
Той щастя і долю навіки знайде.          | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8141415_l1','pisniua_8141415','YouTube','https://www.youtube.com/watch?v=HfY1NFxKwOg','video',NULL,1);
