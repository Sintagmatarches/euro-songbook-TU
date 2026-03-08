DELETE FROM song_links WHERE song_id = 'pisniua_8177878';
DELETE FROM song_versions WHERE song_id = 'pisniua_8177878';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8177878';
DELETE FROM songs WHERE id = 'pisniua_8177878';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8177878','Шкільний вальс','Музика: Надія Красоткіна Слова: Надія Красоткіна','uk','ukraine_1991',NULL,NULL,'http://krasotkina.com',NULL,'Ти нас, як рідних, школо, стрічаєш,
Нам відчиняєш клас.
І поступово світ відкриваєш,
В казку заводиш нас.

Добрий учитель дружбі навчає
З книгою, з м''ячиком.
В школі дитинство пролітає
Сонячним зайчиком.

Труднощі перші в школі долаєм,
З класу у клас ростем.
Крила відчувши, вперше кохаєм,
В серці любов несем.

Щастя і радість, наші тривоги —
Ми пам''ятаєм все!
Ось і весна, нас до порогу
Бал випускний несе.

Казка дитинства, мудрості світоч,
Нас терпеливо вчиш.
Ти нам, як сонце, грієш і кличеш,
В наших серцях зориш.

Ти найдорожча в цілому світі
Навіть на схилі літ.
Ми промінці, твої ми діти,
Що розлетілись в світ!','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8177878'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8177878','Шкільний вальс','Ти нас, як рідних, школо, стрічаєш,
Нам відчиняєш клас.
І поступово світ відкриваєш,
В казку заводиш нас.

Добрий учитель дружбі навчає
З книгою, з м''ячиком.
В школі дитинство пролітає
Сонячним зайчиком.

Труднощі перші в школі долаєм,
З класу у клас ростем.
Крила відчувши, вперше кохаєм,
В серці любов несем.

Щастя і радість, наші тривоги —
Ми пам''ятаєм все!
Ось і весна, нас до порогу
Бал випускний несе.

Казка дитинства, мудрості світоч,
Нас терпеливо вчиш.
Ти нам, як сонце, грієш і кличеш,
В наших серцях зориш.

Ти найдорожча в цілому світі
Навіть на схилі літ.
Ми промінці, твої ми діти,
Що розлетілись в світ!');
DELETE FROM song_links WHERE song_id = 'pisniua_8186409';
DELETE FROM song_versions WHERE song_id = 'pisniua_8186409';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8186409';
DELETE FROM songs WHERE id = 'pisniua_8186409';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8186409','Ой, спи, дитя','Українська народна пісня. Виконує: Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, спи, дитя, |
Колишу тя.     | (2)

Як ти заснеш,
То лишу тя.

Покину тя      |
Над водою.     | (2)

Накрию тя
Лободою.

Тебе лишу,     |
Будеш спати.   | (2)

А я піду в поле
Жати.

А я піду       |
На роботу.     | (2)

А прийду аж
У суботу.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8186409'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8186409','Ой, спи, дитя','Ой, спи, дитя, |
Колишу тя.     | (2)

Як ти заснеш,
То лишу тя.

Покину тя      |
Над водою.     | (2)

Накрию тя
Лободою.

Тебе лишу,     |
Будеш спати.   | (2)

А я піду в поле
Жати.

А я піду       |
На роботу.     | (2)

А прийду аж
У суботу.');
DELETE FROM song_links WHERE song_id = 'pisniua_8183705';
DELETE FROM song_versions WHERE song_id = 'pisniua_8183705';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8183705';
DELETE FROM songs WHERE id = 'pisniua_8183705';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8183705','А вже весна, а вже красна','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно-літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256 с.',NULL,'А вже весна, а вже красна
Та й три вітри нам принесла,
Та й три вітри нам принесла!

Один з дощем, другий з зелом,
А третій з сонцем і теплом!
А третій з сонцем і теплом!

Що сонечко пригріває,
А зимоньки убуває!
А зимоньки убуває!

Що зимоньки убуває,
А весноньки прибуває!
А весноньки прибуває!','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8183705'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8183705','А вже весна, а вже красна','А вже весна, а вже красна
Та й три вітри нам принесла,
Та й три вітри нам принесла!

Один з дощем, другий з зелом,
А третій з сонцем і теплом!
А третій з сонцем і теплом!

Що сонечко пригріває,
А зимоньки убуває!
А зимоньки убуває!

Що зимоньки убуває,
А весноньки прибуває!
А весноньки прибуває!');
DELETE FROM song_links WHERE song_id = 'pisniua_8184474';
DELETE FROM song_versions WHERE song_id = 'pisniua_8184474';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8184474';
DELETE FROM songs WHERE id = 'pisniua_8184474';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8184474','Красна панна','(В хороводі ми були). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256 с.','Опис гри: Діти ходять по колу, взявшись за руки, і співають. Всередині кола у протилежному напрямку ходить Красна Панна, обертається, пританцьовує і наприкінці обирає когось замість себе.','В хороводі ми були,     | (2)
Ми були, ми були.       | (2)

Красну панну виділи.    | (2)
Виділи, виділи.         | (2)

Красна панно, обернись, | (2)
Обернись, обернись.     | (2)

Красна панно, затанцюй. | (2)
Затанцюй, затанцюй.     | (2)

Кого любиш - поцілуй.   | (2)
Поцілуй, поцілуй.       | (2)','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8184474'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8184474','Красна панна','В хороводі ми були,     | (2)
Ми були, ми були.       | (2)

Красну панну виділи.    | (2)
Виділи, виділи.         | (2)

Красна панно, обернись, | (2)
Обернись, обернись.     | (2)

Красна панно, затанцюй. | (2)
Затанцюй, затанцюй.     | (2)

Кого любиш - поцілуй.   | (2)
Поцілуй, поцілуй.       | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_818116';
DELETE FROM song_versions WHERE song_id = 'pisniua_818116';
DELETE FROM songs_fts WHERE song_id = 'pisniua_818116';
DELETE FROM songs WHERE id = 'pisniua_818116';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_818116','Зеленеє жито зелене','(Ой зелене жито, зелене). Українська народна пісня. Виконує: Оксана Білозір, Ватра','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Зеленеє жито, зелене,
Хорошії гості у мене.
Зеленеє жито женці жнуть,
Хорошії гості в хату йдуть.

Зеленеє жито, зелене,
Хорошії гості у мене.
Зеленеє жито за селом,
Хорошії гості за столом.

Зеленеє жито, зелене,
Хорошії гості у мене.
Зеленеє жито при межі -
Хорошії гості до душі.

Зеленеє жито, зелене,
Хорошії гості у мене.
Зеленеє жито ще й овес, -
Тут зібрався рід наш увесь','[''pisni.org.ua'', ''cat:narodni'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_818116'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_818116','Зеленеє жито зелене','Зеленеє жито, зелене,
Хорошії гості у мене.
Зеленеє жито женці жнуть,
Хорошії гості в хату йдуть.

Зеленеє жито, зелене,
Хорошії гості у мене.
Зеленеє жито за селом,
Хорошії гості за столом.

Зеленеє жито, зелене,
Хорошії гості у мене.
Зеленеє жито при межі -
Хорошії гості до душі.

Зеленеє жито, зелене,
Хорошії гості у мене.
Зеленеє жито ще й овес, -
Тут зібрався рід наш увесь');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_818116_l1','pisniua_818116','YouTube','https://www.youtube.com/watch?v=Ah5BVydyjcg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_818116_l2','pisniua_818116','YouTube','https://www.youtube.com/watch?v=UIEPjAV4Xik','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_818116_l3','pisniua_818116','YouTube','https://www.youtube.com/watch?v=tBOmFjFSnWU','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_818116_l4','pisniua_818116','YouTube','https://www.youtube.com/watch?v=dzsHT7Y4Zx4','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_818116_l5','pisniua_818116','YouTube','https://www.youtube.com/watch?v=4k5bDZrxHIc','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_818116_l6','pisniua_818116','YouTube','https://www.youtube.com/watch?v=5JcsF1gzBOg','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_818116_l7','pisniua_818116','YouTube','https://www.youtube.com/watch?v=M2GlpX-49do','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_818116_l8','pisniua_818116','YouTube','https://www.youtube.com/watch?v=Y3jPUGrmSeg','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_818116_l9','pisniua_818116','YouTube','https://www.youtube.com/watch?v=uP7WQuxam1o','video',NULL,9);
DELETE FROM song_links WHERE song_id = 'pisniua_8189116';
DELETE FROM song_versions WHERE song_id = 'pisniua_8189116';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8189116';
DELETE FROM songs WHERE id = 'pisniua_8189116';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8189116','Ісус - Спаситель Світу','Виконує: Берники','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ісус - Спаситель Світу,
Слава Тобі на віки!
Слава завжди ллється
З наших сердець Тобі!

Приспів:
Як легко з Богом жить,
Лиш Йому служить
В цьому світі марноти і зла.
Всім людям розкажу
Про любов Твою
І про всі Твої діла!

Хочу з Тобою жити
І лиш Тобі служити,
Славу Тобі складати
За ласку і любов!

Приспів.

Боже Благий, Єдиний,
В Дусі Святім ми нині
Славу Тобі складаєм,
Алілуя!

Приспів.

Всім людям розкажу
Про любов Твою
І про всі Твої діла!','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8189116'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8189116','Ісус - Спаситель Світу','Ісус - Спаситель Світу,
Слава Тобі на віки!
Слава завжди ллється
З наших сердець Тобі!

Приспів:
Як легко з Богом жить,
Лиш Йому служить
В цьому світі марноти і зла.
Всім людям розкажу
Про любов Твою
І про всі Твої діла!

Хочу з Тобою жити
І лиш Тобі служити,
Славу Тобі складати
За ласку і любов!

Приспів.

Боже Благий, Єдиний,
В Дусі Святім ми нині
Славу Тобі складаєм,
Алілуя!

Приспів.

Всім людям розкажу
Про любов Твою
І про всі Твої діла!');
DELETE FROM song_links WHERE song_id = 'pisniua_8188070';
DELETE FROM song_versions WHERE song_id = 'pisniua_8188070';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8188070';
DELETE FROM songs WHERE id = 'pisniua_8188070';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8188070','Фото','Музика: MLLM Слова: Олексій Іжик. Виконує: MLLM','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Про нас згадають ще не раз
Всі ці, хто нас любили,
Хто були з нами всі роки.
Не цінували ми той час
І без гадань рішили,
Все робили навпаки.

Приспів:
На фото погляну,
Згадаю друзів я!
Сьогодні не з вами,
Лети, душа моя!
Батькам я вклонюся
За те, що бачу світ!
Кожен день молюсь
За вас, за всіх!

Як посміхались ми разом,
Дивились в очі щиро,
Всі перешкоди подолав.
Як розуміли нас вони
І кожен з них в нас вірив,
І лиш надію дарував!

Приспів.

Хай це змінить час!
Повернемось ми
Знов до всіх, до вас!
Холодної зими сильно,
Як любов, знов зігрієм кров,
Але все мовчи,
Нам дальше - скаже - треба йти.

На фото погляну,
Згадаю друзів я!
Сьогодні ми з вами...','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8188070'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8188070','Фото','Про нас згадають ще не раз
Всі ці, хто нас любили,
Хто були з нами всі роки.
Не цінували ми той час
І без гадань рішили,
Все робили навпаки.

Приспів:
На фото погляну,
Згадаю друзів я!
Сьогодні не з вами,
Лети, душа моя!
Батькам я вклонюся
За те, що бачу світ!
Кожен день молюсь
За вас, за всіх!

Як посміхались ми разом,
Дивились в очі щиро,
Всі перешкоди подолав.
Як розуміли нас вони
І кожен з них в нас вірив,
І лиш надію дарував!

Приспів.

Хай це змінить час!
Повернемось ми
Знов до всіх, до вас!
Холодної зими сильно,
Як любов, знов зігрієм кров,
Але все мовчи,
Нам дальше - скаже - треба йти.

На фото погляну,
Згадаю друзів я!
Сьогодні ми з вами...');
DELETE FROM song_links WHERE song_id = 'pisniua_8185205';
DELETE FROM song_versions WHERE song_id = 'pisniua_8185205';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8185205';
DELETE FROM songs WHERE id = 'pisniua_8185205';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8185205','Наше Купайло будякове','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256',NULL,'Наше Купайло будякове,
Погнали дівки бички в поле.

Ходімо, хлопці, дивитися,
Як будуть дівки казитися.

Як будуть дівки казитися,
На сухі верби хилитися.

А сухі верби тріщатимуть,
А наші дівки пищатимуть.
* * *
Наше Купайло з верби, з верби,
Ти, дівчинонько, прийди, прийди.

А вже Купайло заквітчане,
Прийшло дівчатко засмучене.
* * *
Ой, на городі лопух, лопух,
А нашим дівкам живіт попух.

Ой, нехай пухне, нехай знають,
Нехай до ночі не гуляють!','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8185205'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8185205','Наше Купайло будякове','Наше Купайло будякове,
Погнали дівки бички в поле.

Ходімо, хлопці, дивитися,
Як будуть дівки казитися.

Як будуть дівки казитися,
На сухі верби хилитися.

А сухі верби тріщатимуть,
А наші дівки пищатимуть.
* * *
Наше Купайло з верби, з верби,
Ти, дівчинонько, прийди, прийди.

А вже Купайло заквітчане,
Прийшло дівчатко засмучене.
* * *
Ой, на городі лопух, лопух,
А нашим дівкам живіт попух.

Ой, нехай пухне, нехай знають,
Нехай до ночі не гуляють!');
DELETE FROM song_links WHERE song_id = 'pisniua_8186116';
DELETE FROM song_versions WHERE song_id = 'pisniua_8186116';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8186116';
DELETE FROM songs WHERE id = 'pisniua_8186116';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8186116','Ой, кажуть люди','Українська народна пісня. Виконує: Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, кажуть люди:
Мій муж не п''є.
Ой, не п''є, не п''є, |
З корчми не йде.    | (2)

Пропив коника вороного,
Пропив коника вороного,
Іде до стайні по другого.

Ой, мила моя, викуп коня,
Ой, мила моя, викуп коня,
Як не викупиш, будеш бита!

Ой, не раз, не два викупляла,
Ой, не раз, не два викупляла,
Проз оконечко утікала,
В вишневім саду ночувала,
В вишневім саду ночувала,
Ранніх пташечок вислухала.

А соловейко "тьох-тьох", "тьох-тьох",
А соловейко "тьох-тьох", "тьох-тьох",
Котяться сльози, як той горох.
А зозуленька "ку-ку", "ку-ку",
А зозуленька "ку-ку", "ку-ку",
А я молода терплю муку,
А я молода терплю муку...','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8186116'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8186116','Ой, кажуть люди','Ой, кажуть люди:
Мій муж не п''є.
Ой, не п''є, не п''є, |
З корчми не йде.    | (2)

Пропив коника вороного,
Пропив коника вороного,
Іде до стайні по другого.

Ой, мила моя, викуп коня,
Ой, мила моя, викуп коня,
Як не викупиш, будеш бита!

Ой, не раз, не два викупляла,
Ой, не раз, не два викупляла,
Проз оконечко утікала,
В вишневім саду ночувала,
В вишневім саду ночувала,
Ранніх пташечок вислухала.

А соловейко "тьох-тьох", "тьох-тьох",
А соловейко "тьох-тьох", "тьох-тьох",
Котяться сльози, як той горох.
А зозуленька "ку-ку", "ку-ку",
А зозуленька "ку-ку", "ку-ку",
А я молода терплю муку,
А я молода терплю муку...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8186116_l1','pisniua_8186116','YouTube','https://www.youtube.com/watch?v=UmDqqsegN_g','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8189256';
DELETE FROM song_versions WHERE song_id = 'pisniua_8189256';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8189256';
DELETE FROM songs WHERE id = 'pisniua_8189256';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8189256','Юність для Христа','Виконує: Берники','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Перед нами пролягла
Дивна ця життя дорога,
І відкрилась нам вона
Цвітом лагідним чудовим.
Посилає нам свої
Радощі але й тривоги,
Напрямки два у житті -
З Богом жити чи без Бога.

Приспів:
Молодість, юність -
Прекрасні роки
Хай будуть тільки
Для Бога вони!
Щоб не прожити
Даремно життя -
Ти присвяти всі роки
Для Христа!
Молодість, юність
Для Бога віддай,
З ним по дорозі
Сміливо ступай,
З ним буде завжди
Радіти душа,
Як присвятиш всі роки
Для Христа!

Швидко так життя летить
І таке воно дочасне,
Свічечка життя горить,
Час прийде - вона погасне.
Залишити добрий слід -
Це завдання всім від Бога,
Святість пронести - не гріх
По життєвій цій дорозі!

Приспів. (2)','[''pisni.org.ua'', ''cat:christian'', ''cat:zahalni-cinnosti'', ''Пісні на християнську тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8189256'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8189256','Юність для Христа','Перед нами пролягла
Дивна ця життя дорога,
І відкрилась нам вона
Цвітом лагідним чудовим.
Посилає нам свої
Радощі але й тривоги,
Напрямки два у житті -
З Богом жити чи без Бога.

Приспів:
Молодість, юність -
Прекрасні роки
Хай будуть тільки
Для Бога вони!
Щоб не прожити
Даремно життя -
Ти присвяти всі роки
Для Христа!
Молодість, юність
Для Бога віддай,
З ним по дорозі
Сміливо ступай,
З ним буде завжди
Радіти душа,
Як присвятиш всі роки
Для Христа!

Швидко так життя летить
І таке воно дочасне,
Свічечка життя горить,
Час прийде - вона погасне.
Залишити добрий слід -
Це завдання всім від Бога,
Святість пронести - не гріх
По життєвій цій дорозі!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_8185817';
DELETE FROM song_versions WHERE song_id = 'pisniua_8185817';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8185817';
DELETE FROM songs WHERE id = 'pisniua_8185817';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8185817','Спи, моя радість, засни','Слова: невідомий','uk','ukraine_before_1917',NULL,NULL,'http://lesyakosmovska.at.ua/news/2009-08-06-287',NULL,'Спи, моя радість, засни
Вогники згасли ясні
Бджілки заснули в садку,
Рибки поснули в ставку
Місяць на небі встає,
Світить в віконце твоє
Мовчки скоріш позіхни
Спи, моя радість, засни.
Засни, засни.

Спокій прийшов у наш дім,
Тихо і тепло у нім.
Вітер дверми не рипить,
Мишка за пічкою спить,
Важко зітхнув хтось разок,
Що нам до того синок ?
Мовчки скоріш позіхни
Спи, моя радість, засни.
Засни, засни (2 р.)','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8185817'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8185817','Спи, моя радість, засни','Спи, моя радість, засни
Вогники згасли ясні
Бджілки заснули в садку,
Рибки поснули в ставку
Місяць на небі встає,
Світить в віконце твоє
Мовчки скоріш позіхни
Спи, моя радість, засни.
Засни, засни.

Спокій прийшов у наш дім,
Тихо і тепло у нім.
Вітер дверми не рипить,
Мишка за пічкою спить,
Важко зітхнув хтось разок,
Що нам до того синок ?
Мовчки скоріш позіхни
Спи, моя радість, засни.
Засни, засни (2 р.)');
DELETE FROM song_links WHERE song_id = 'pisniua_8184756';
DELETE FROM song_versions WHERE song_id = 'pisniua_8184756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8184756';
DELETE FROM songs WHERE id = 'pisniua_8184756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8184756','Вчителі',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Школа, рідна школа,
Знов заходжу в клас,
Тут нам все знайоме,
Тут чекають нас.

Приспів (2):
Вчителі, вчителі,
В школі все життя минає
Вчителі - журавлі
На високім небокраї,
Вчителі, вчителі,
Наші вчителі!..

Чую крок за кроком
З Вами по землі,
Плакали й сміялись
Наші вчителі.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8184756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8184756','Вчителі','Школа, рідна школа,
Знов заходжу в клас,
Тут нам все знайоме,
Тут чекають нас.

Приспів (2):
Вчителі, вчителі,
В школі все життя минає
Вчителі - журавлі
На високім небокраї,
Вчителі, вчителі,
Наші вчителі!..

Чую крок за кроком
З Вами по землі,
Плакали й сміялись
Наші вчителі.');
DELETE FROM song_links WHERE song_id = 'pisniua_8189705';
DELETE FROM song_versions WHERE song_id = 'pisniua_8189705';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8189705';
DELETE FROM songs WHERE id = 'pisniua_8189705';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8189705','Іди, іди, дощику','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'В. Верховинець. Весняночка. Ігри з піснями для дітей дошкільного віку та молодших школярів. Видання четверте, перероблене і доповнене. - Київ: Музична Україна, 1979. - 339 с.',NULL,'Іди, іди, дощику,
Зварим тобі борщику,
Поставимо в кутику
На терновім прутику.
Хлюп-хлюп, хлюп-хлюп!
Хлюп-хлюп, хлюп-хлюп!

Іди, іди, дощику,
Відром, цебром, дійницею,
Холодною водицею
Над нашою пашницею.
Хлюп-хлюп, хлюп-хлюп!
Хлюп-хлюп, хлюп-хлюп!

Іди, іди, дощику,
Зварим тобі борщику,
Собі зварим кашки,
Стрибати гопашки.
Го-па, го-па, гопашечки,
Наїлися вже кашечки!','[''pisni.org.ua'', ''cat:narodni'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8189705'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8189705','Іди, іди, дощику','Іди, іди, дощику,
Зварим тобі борщику,
Поставимо в кутику
На терновім прутику.
Хлюп-хлюп, хлюп-хлюп!
Хлюп-хлюп, хлюп-хлюп!

Іди, іди, дощику,
Відром, цебром, дійницею,
Холодною водицею
Над нашою пашницею.
Хлюп-хлюп, хлюп-хлюп!
Хлюп-хлюп, хлюп-хлюп!

Іди, іди, дощику,
Зварим тобі борщику,
Собі зварим кашки,
Стрибати гопашки.
Го-па, го-па, гопашечки,
Наїлися вже кашечки!');
DELETE FROM song_links WHERE song_id = 'pisniua_8191219';
DELETE FROM song_versions WHERE song_id = 'pisniua_8191219';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8191219';
DELETE FROM songs WHERE id = 'pisniua_8191219';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8191219','Чумацька душа','Музика: Сергій Цушко Слова: Сергій Цушко. Виконує: Сергій Цушко','uk','ukraine_before_1917',NULL,NULL,'Збірка поезій Сергія Цушка "Слово"',NULL,'Іще чумак на порозі,
а душа уже в дорозі, гей!
Ще родину обнімає,
душа ж валку доганяє.
Гей, гей!

Іде чумак, озирнеться,
то заплаче, то сміється, гей!
Де не ступить - там чужина
і все далі Україна.
Гей, гей!

Лети, душе, в Україну,
перевідай там родину, гей!
Родиноньці поклонися
і голубкою вернися.
Гей, гей!

Пішов чумак мандрувати,
щастя-долю добувати, гей!
А душа все не вертає,
ворон кряче - серце крає.
Гей, гей!

В''ється в небі шлях із солі.
Б''ється пісня - сестра долі, гей!
Лежить чумак на чужині,
а душа на Україні, гей!
Гей, гей, гей!..','[''pisni.org.ua'', ''cat:bardivski'', ''cat:chumacki'', ''Бардівські пісні'', ''Чумацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8191219'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8191219','Чумацька душа','Іще чумак на порозі,
а душа уже в дорозі, гей!
Ще родину обнімає,
душа ж валку доганяє.
Гей, гей!

Іде чумак, озирнеться,
то заплаче, то сміється, гей!
Де не ступить - там чужина
і все далі Україна.
Гей, гей!

Лети, душе, в Україну,
перевідай там родину, гей!
Родиноньці поклонися
і голубкою вернися.
Гей, гей!

Пішов чумак мандрувати,
щастя-долю добувати, гей!
А душа все не вертає,
ворон кряче - серце крає.
Гей, гей!

В''ється в небі шлях із солі.
Б''ється пісня - сестра долі, гей!
Лежить чумак на чужині,
а душа на Україні, гей!
Гей, гей, гей!..');
DELETE FROM song_links WHERE song_id = 'pisniua_8185070';
DELETE FROM song_versions WHERE song_id = 'pisniua_8185070';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8185070';
DELETE FROM songs WHERE id = 'pisniua_8185070';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8185070','Ой по горі, по долині','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256',NULL,'Ой по горі, по долині,
По широкій луговині,
По густій траві,
Та й по густій траві.

Там дівчата квіти рвали
Та в пучечки завивали,
Віночки плели,
Та й віночки плели.

Та й пускали із місточка,
Ще й з крутого бережечка
По бистрій воді,
Та й по бистрій воді.

Всі віночки поспливали,
Як дівчата загадали,
Лиш один потонув,
Лиш один потонув...

Ой, там на Івана
Та й на Купала,
Зірка із неба впала, гей,
Гей, та й покотилась
За тихий Дунай! | (3)

Ой, дівчата-голубоньки,
Не втирайте мої слізоньки -
Мій вінок потонув!
Мій вінок потонув!
Мене милий обманув!
Обманув...

Ой, там на Івана
Та й на Купала!
Гей, гей...','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8185070'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8185070','Ой по горі, по долині','Ой по горі, по долині,
По широкій луговині,
По густій траві,
Та й по густій траві.

Там дівчата квіти рвали
Та в пучечки завивали,
Віночки плели,
Та й віночки плели.

Та й пускали із місточка,
Ще й з крутого бережечка
По бистрій воді,
Та й по бистрій воді.

Всі віночки поспливали,
Як дівчата загадали,
Лиш один потонув,
Лиш один потонув...

Ой, там на Івана
Та й на Купала,
Зірка із неба впала, гей,
Гей, та й покотилась
За тихий Дунай! | (3)

Ой, дівчата-голубоньки,
Не втирайте мої слізоньки -
Мій вінок потонув!
Мій вінок потонув!
Мене милий обманув!
Обманув...

Ой, там на Івана
Та й на Купала!
Гей, гей...');
DELETE FROM song_links WHERE song_id = 'pisniua_8190307';
DELETE FROM song_versions WHERE song_id = 'pisniua_8190307';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8190307';
DELETE FROM songs WHERE id = 'pisniua_8190307';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8190307','Зимонько-снігуронько','Музика: Василь Верховинець (Костів) Слова: Леонід Глібов','uk','ukraine_1991',NULL,NULL,'В. Верховинець. Весняночка. Ігри з піснями для дітей дошкільного віку та молодших школярів. Видання четверте, перероблене і доповнене. - Київ: Музична Україна, 1979. - 339 с.',NULL,'Зимонько-снігуронько,
Наша білогрудонько,
Не верти хвостом.

А труси тихесенько,
Рівненько, гладесенько
Срібненьким сніжком.

Ми повибігаємо,
Снігу накачаємо
Купу за садком.

Бабу здоровенную,
Уночі страшенную,
Зліпимо гуртом.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:krasa-pryrody'', ''Дитячі пісні'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8190307'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8190307','Зимонько-снігуронько','Зимонько-снігуронько,
Наша білогрудонько,
Не верти хвостом.

А труси тихесенько,
Рівненько, гладесенько
Срібненьким сніжком.

Ми повибігаємо,
Снігу накачаємо
Купу за садком.

Бабу здоровенную,
Уночі страшенную,
Зліпимо гуртом.');
DELETE FROM song_links WHERE song_id = 'pisniua_8186858';
DELETE FROM song_versions WHERE song_id = 'pisniua_8186858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8186858';
DELETE FROM songs WHERE id = 'pisniua_8186858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8186858','А в полі, полі, близько дороги','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Кисіль В.В., Чугуй О.П. Український новорічний обрядовий театр: Навчально-методичні матеріали для студентів філологічного факультету (спеціальність – українська мова та література). – Харків, 2009. – 21 с.',NULL,'А в полі, полі, близько дороги,
Щедрий вечір!

Там стоїть наміт з білого шовку.
Щедрий вечір!

Під тим наметом дорогий стільчик,
Щедрий вечір!

На тім стільчику ґречная панна,
Щедрий вечір!

Ґречная панна на ім''я Анна.
Щедрий вечір!

Ой, сидить собі, в косточки грає,
Щедрий вечір!

В косточки грає, гарно співає.
Щедрий вечір!

Ой, бував туди здавна гостинець,
Щедрий вечір!

Над''їхав туди ґречний молодець:
Щедрий вечір!

Що ж там такого так красно грає?
Щедрий вечір!

Та повертає ід наметові,
Щедрий вечір!

Ой, рече слівце, ід ґречній панні:
Щедрий вечір!

Біг помагай, ґречная панна!
Щедрий вечір!

Хто ж тебе навчив, так красно грати?
Щедрий вечір!

Навчила мене моя ненечка,
Щедрий вечір!

І ніч від ночі не досипляла,
Щедрий вечір!

На білих ручках похитувала,
Щедрий вечір!

Золотим яблучком покачувала,
Щедрий вечір!','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8186858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8186858','А в полі, полі, близько дороги','А в полі, полі, близько дороги,
Щедрий вечір!

Там стоїть наміт з білого шовку.
Щедрий вечір!

Під тим наметом дорогий стільчик,
Щедрий вечір!

На тім стільчику ґречная панна,
Щедрий вечір!

Ґречная панна на ім''я Анна.
Щедрий вечір!

Ой, сидить собі, в косточки грає,
Щедрий вечір!

В косточки грає, гарно співає.
Щедрий вечір!

Ой, бував туди здавна гостинець,
Щедрий вечір!

Над''їхав туди ґречний молодець:
Щедрий вечір!

Що ж там такого так красно грає?
Щедрий вечір!

Та повертає ід наметові,
Щедрий вечір!

Ой, рече слівце, ід ґречній панні:
Щедрий вечір!

Біг помагай, ґречная панна!
Щедрий вечір!

Хто ж тебе навчив, так красно грати?
Щедрий вечір!

Навчила мене моя ненечка,
Щедрий вечір!

І ніч від ночі не досипляла,
Щедрий вечір!

На білих ручках похитувала,
Щедрий вечір!

Золотим яблучком покачувала,
Щедрий вечір!');
DELETE FROM song_links WHERE song_id = 'pisniua_8187154';
DELETE FROM song_versions WHERE song_id = 'pisniua_8187154';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8187154';
DELETE FROM songs WHERE id = 'pisniua_8187154';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8187154','Мати милосердна','Слова: Дмитро Туптало. Виконує: Ніна Матвієнко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мати милосерда!
Ти єси ограда,
От лютого врага злаго         |
Храниши мя всегда.            | (2)

На всякій час зову,
В немощи воззову,
Воплем кріпким, Мати, тебе,   |
Чиста Діво, молю.             | (2)

Прошу тя, прещедру,
Матер милосерду,
Глас услиши мой, плачь внуши, |
Молю тя, всещедру.            | (2)

Руці да воздіну
Ко твоєму Сину,
Мати, Мати преблагая,         |
Ходатайствуй к нему.          | (2)

Тебе, Діво, молю,
Воплем кріпким зову,
Душу й серце в воздиханню —   |
Преклоняя главу.              | (2)

Мати милосерда!
Ти єси ограда,
От лютого врага злаго         |
Храниши мя всегда.            | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:do-bohorodyci'', ''Церковні пісні'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8187154'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8187154','Мати милосердна','Мати милосерда!
Ти єси ограда,
От лютого врага злаго         |
Храниши мя всегда.            | (2)

На всякій час зову,
В немощи воззову,
Воплем кріпким, Мати, тебе,   |
Чиста Діво, молю.             | (2)

Прошу тя, прещедру,
Матер милосерду,
Глас услиши мой, плачь внуши, |
Молю тя, всещедру.            | (2)

Руці да воздіну
Ко твоєму Сину,
Мати, Мати преблагая,         |
Ходатайствуй к нему.          | (2)

Тебе, Діво, молю,
Воплем кріпким зову,
Душу й серце в воздиханню —   |
Преклоняя главу.              | (2)

Мати милосерда!
Ти єси ограда,
От лютого врага злаго         |
Храниши мя всегда.            | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8187154_l1','pisniua_8187154','YouTube','https://www.youtube.com/watch?v=XTFxzt5zjS8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8187154_l2','pisniua_8187154','http://www.parafia.org.ua/piece/maty-myloserda/#medialinks-9624-mp3','http://www.parafia.org.ua/piece/maty-myloserda/#medialinks-9624-mp3','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8185219';
DELETE FROM song_versions WHERE song_id = 'pisniua_8185219';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8185219';
DELETE FROM songs WHERE id = 'pisniua_8185219';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8185219','Купалочка з Купала йде','Українська народна пісня. Виконує: Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256',NULL,'Купалочка з Купала
Йде.
Купала на Йвана!
Купала на Йвана!

Купалочка три війська
Веде.
Купала на Йвана!
Купала на Йвана!

Перше військо -
Хлоп''яточка.
Купала на Йвана!
Купала на Йвана!

Друге військо -
Дівчаточка.
Купала на Йвана!
Купала на Йвана!

Треті військо -
Молодиці.
Купала на Йвана!
Купала на Йвана!

А хлопці ідуть,
Іграючи.
Купала на Йвана!
Купала на Йвана!

Дівчата йдуть,
Співаючи.
Купала на Йвана!
Купала на Йвана!

Молодиці йдуть,
Плачучи.
Купала на Йвана!
Купала на Йвана!','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8185219'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8185219','Купалочка з Купала йде','Купалочка з Купала
Йде.
Купала на Йвана!
Купала на Йвана!

Купалочка три війська
Веде.
Купала на Йвана!
Купала на Йвана!

Перше військо -
Хлоп''яточка.
Купала на Йвана!
Купала на Йвана!

Друге військо -
Дівчаточка.
Купала на Йвана!
Купала на Йвана!

Треті військо -
Молодиці.
Купала на Йвана!
Купала на Йвана!

А хлопці ідуть,
Іграючи.
Купала на Йвана!
Купала на Йвана!

Дівчата йдуть,
Співаючи.
Купала на Йвана!
Купала на Йвана!

Молодиці йдуть,
Плачучи.
Купала на Йвана!
Купала на Йвана!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8185219_l1','pisniua_8185219','YouTube','https://www.youtube.com/watch?v=KBwNix_Kj7M','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_818858';
DELETE FROM song_versions WHERE song_id = 'pisniua_818858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_818858';
DELETE FROM songs WHERE id = 'pisniua_818858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_818858','Дарма я наївся цибулі','Музика: Ot Vinta Слова: Ot Vinta. Виконує: Ot Vinta','uk','ukraine_1991',NULL,'1994','1. http://www.ot-vinta.com/fcms.php?p=4&pt=1&lim=12 2. підбір акордів з аудіозапису','Ще влітку 1993р. Юрію Журавлю хотілось створити свій гурт і грати щось запальне та божевільне. Перший публічний концерт гурту "OT VINTA" (назва подобалась ще не всім членам команди) відбувся 1994 рокуі 12 квітня в Палаці дітей та молоді. 22 квітня "OT VINTA" разом з театром-студією "Від ліхтаря" та гуртом "Ретроскоп" відкривають перший і єдиний на той час в місті рок-клуб "Перехрестя" де збиралися прихильники живої музики 50-х. На відкритті клубу "OT VINTA" грали без саксофоніста і з цього моменту вони грали втрьох. В майбутньому Юркові доведеться, крім художнього оформлення клубу, взяти на себе кермо управління. У 1996 році в січні Юрко запрошує зовсім недосвідченого але запального Андрія Остaша. 5 місяців потужних репетицій і 21 квітня "OT VINTA" на фестивалі "Перлини сезону" в місті Луцьку беруть вищий бал. 22 квітня відбувся перший повний концерт гурту "OT VINTA" в Палаці дітей та молоді. 24 листопада "OT VINTA" стають дипломантами заключного туру фестивалю "Перлини сезону" в місті Києві. Пропустивши вперед гурти "Стоп-степ", "Океан Ельзи" і "Імперію страху". У грудні відбувся перший запис на студії "INGALVOX" в місті Львові. За підсумками місцевих мас-медіа "OT VINTA" стають кращим рок-гуртом 2004 рік був багатий на концерти та гастролі. Після чергової зимово-весняної подорожі Росією, ми зібралися в тур по Польщі, що був організований лейблом "Koka-Records", який закарбувався у нашій пам''яті і не тільки. Зламаний ніс Журавля, биті ноги Віті, аварійні екстримальні прекидання водія Валентина, Володі та Сашка, різка зміна форми тарілки "Ride"на"China", і ще купа усіляких пригод, під час польського туру, зробили вінтів переможцями номінації "Екстрим року". Після героїчної подорожі Польщею, запрошення посипались як із рогу достатку. "Лемківська ватра", "Свято полку Уланів", "Івана Купала", "Зустрічі на Мазурах" та інші. Міжнародний фестиваль "Muzicorama-2004" (м. Гіжицько) довів, що нашу музику може сприймати уся Європа. Час від часу, ми повертаємось на Україну для участі у фестивалях "Рок понад хмарами" (м. Харків), "Нівроку – 2004" (м. Тернопіль), для виступів у турі "Чернігівського пива", концерту з легендарною Сестричкою Вікою (м. Львів) та інші. Повернувшись із Росії, 15 листопада, було вирішено розпочати запис альбому "Дарма я наївся цибулі" на студії "Династія" (м. Київ). Але спокійно сидіти в місті, де назрівала "Памаранчева революція", було неможливо. OT VINTA стають активними учасниками тих подій. Однак, демократію України доводиться захищати знову ж таки в Польщі на телемості-концерті "Київ – Варшава – спільна справа!" та на фестивалі "Люблін – Україна". З 14 по 24 грудня гурт бере участь в автопробігу "Потяг Дружби", їздять Україною, дають концерти та знаходять нових друзів. Виступ на Майдані Незалежності у Києві був яскравим завершенням автопробігу та року що минув.','Вступ(2 рази):
E||------------3/1----------------1-----3----------3/1-----------|
B||----------3----3-------------3---1-------3----------2---------|
G||--------2--------2---------2-------2---4------2---------------|
D||-----0-------------3-0---0------------------0-----------------|
A||-0-3-------------------3--------------------------------------|
E||-------------------------------1-----3------------------------|

Dm
Як буяє усе, як у серці пече
Ще не було такої весни.
Dm
Гострий погляд твоїх незрівняних очей,
Наче цвяхом прибив до стіни.
Ти сама підійшла, дивина серед див,
Досить близько, щоб я зрозумів:

Дарма я наївся цибулі!   | (2)
Дарма-а-а-а-а!           | (2)

Dm
Я не можу говорити, навіть дихати боюсь.
Дарма я наївся цибулі, ху-ху!
Dm
Був козаком, а тепер боягуз.
Дарма я наївся цибулі, ху-ху!
І льодяників, жувачок півкіло - недопомогло.

Дарма я наївся цибулі, ху-ху! | (2)
Дарма-а-а-а-а!                | (2)

От, як би то, передбачити оказію таку.
Дарма я наївся цибулі, ху-ху!
Голодоморив би цілу добу.
Дарма я наївся цибулі, ху-ху!
Де ж ти раніше була-а, вчора я їв мармелад.

Дарма я наївся цибулі, ху-ху! | (2)
Дарма-а-а-а-а!                | (2)

Де ж ти раніше була-а, вчора я їв мармелад.

Дарма я наївся цибулі, ху-ху! | (2)
Дарма-а-а-а-а!                | (2)

(як у вступі)
Як буяло усе так і досі буя,
А мені б хоч на крок до мети.
О-го-го, як всміхнулася доля моя:
Перше слово промовила ти.
І відчув я себе не єдиним биком,
Бо від тебе смердить ЧАСНИКОМ!

(2р)
Дарма я наївся цибулі, ху-ху! | (2)
Дарма-а-а-а-а!                | (2)
Дарма я наївся цибулі, ху-ху!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_818858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_818858','Дарма я наївся цибулі','Вступ(2 рази):
E||------------3/1----------------1-----3----------3/1-----------|
B||----------3----3-------------3---1-------3----------2---------|
G||--------2--------2---------2-------2---4------2---------------|
D||-----0-------------3-0---0------------------0-----------------|
A||-0-3-------------------3--------------------------------------|
E||-------------------------------1-----3------------------------|

Dm
Як буяє усе, як у серці пече
Ще не було такої весни.
Dm
Гострий погляд твоїх незрівняних очей,
Наче цвяхом прибив до стіни.
Ти сама підійшла, дивина серед див,
Досить близько, щоб я зрозумів:

Дарма я наївся цибулі!   | (2)
Дарма-а-а-а-а!           | (2)

Dm
Я не можу говорити, навіть дихати боюсь.
Дарма я наївся цибулі, ху-ху!
Dm
Був козаком, а тепер боягуз.
Дарма я наївся цибулі, ху-ху!
І льодяників, жувачок півкіло - недопомогло.

Дарма я наївся цибулі, ху-ху! | (2)
Дарма-а-а-а-а!                | (2)

От, як би то, передбачити оказію таку.
Дарма я наївся цибулі, ху-ху!
Голодоморив би цілу добу.
Дарма я наївся цибулі, ху-ху!
Де ж ти раніше була-а, вчора я їв мармелад.

Дарма я наївся цибулі, ху-ху! | (2)
Дарма-а-а-а-а!                | (2)

Де ж ти раніше була-а, вчора я їв мармелад.

Дарма я наївся цибулі, ху-ху! | (2)
Дарма-а-а-а-а!                | (2)

(як у вступі)
Як буяло усе так і досі буя,
А мені б хоч на крок до мети.
О-го-го, як всміхнулася доля моя:
Перше слово промовила ти.
І відчув я себе не єдиним биком,
Бо від тебе смердить ЧАСНИКОМ!

(2р)
Дарма я наївся цибулі, ху-ху! | (2)
Дарма-а-а-а-а!                | (2)
Дарма я наївся цибулі, ху-ху!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_818858_l1','pisniua_818858','YouTube','https://www.youtube.com/watch?v=ShIHwZIMiAk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_819001';
DELETE FROM song_versions WHERE song_id = 'pisniua_819001';
DELETE FROM songs_fts WHERE song_id = 'pisniua_819001';
DELETE FROM songs WHERE id = 'pisniua_819001';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_819001','В полі','Музика: Володимир Скоробський Слова: Володимир Скоробський. Виконує: Володимир Скоробський, Журборіз','uk','ukraine_1991',NULL,NULL,'Аудіо-CD: Дует "Журборіз". Збірка Воїна.- 2004','Записано зі слуху, звиняйте, коли що не так. Імовірно, тут автор сам для себе запровадив чергування "о/е" - "червоно/червоне":) Також в останньому стовпчику я вперто чую "небесні шата", але оскільки це слово мені ну зовсім незрозуміле, то я написав "небесні шатра" - якщо неправий, виправте. Bohdanko: Акорди підібрав на слух. Також вніс незначні корективи у текст. Сподіваюсь, автор пісні ще додасть свої корективи. Підбір акордів: bohdanko@epost.com.ua','Вступ:  Em Am Em  (x2)

1. (Мотив 1)
Em
В полі, тільки в чистім полі
Здобувають волю, в дусі і в борні.
Em
Не буває волі без пролиття крови.
Кропляться в червоне битії шляхи.

2. (Мотив 1)
Вітер грає в полі, на чистім роздоллі,
Не гуляє вітер в болотній імлі:
Гниль в болоті й кості - вітру треба простір.
Славу здобувають в дусі і в борні!

3. (Мотив 2)
Доки будем спати - гайда погуляти, ту-ду-ду,
На поля, де грають   вольнії вітри!
Волі не діждати, треба волю брати
Там, де царство духа, (гей!) де клечуть орли.

4. (Мотив 1)
Раб не хоче знати, де вітри гуляють,
Де орли кружлять, де гнівиться Бог.
Для раба - лиш хата, діти, юшка, баба,
Для орла - лиш вітер, Сонце, небо, лет.

5. (Мотив 1)
Не дає Бог волі, хто в затишку й долі,
Здобувать не прагне силою в борні.
Хто не молить Бога вирвати з острога
Рабства гріха й духу - на вольні вітри.

6. (Мотив 2)
Годі, годі спати - гайда погуляти, ту-ду-ду,
На поля, де грають вольнії вітри!
Волі не діждати, треба волю брати
У царині духа, (гей-гей!) де клечуть орли.

Програш (Мотив вступу).

7. (Мотив 1)
Простір, тільки неба простір
Кличе дух до злости від гріхів рабів.
Не буває волі без жертви і крови,
Небо здобувають в дусі і в борні.

8. (Мотив 1)
Раб не може знати, де небесні шатра,
Де оселя Слави, де царює Бог.
Для раба - лиш хата, діти, юшка, баба;
Для орла - лиш вітер, Сонце, небо, лет.

9. (Мотив 3)
Годі, годі спати - гайда погуляти, ту-ду-ду,
На поля, де грають   вольнії вітри!
Волі не діждати, треба волю брати,
Скроплювать в червоне    битії шляхи.
Скроплювать в червоне (гей-гей!) битії шляхи.

Програш (Мотив вступу).','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_819001'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_819001','В полі','Вступ:  Em Am Em  (x2)

1. (Мотив 1)
Em
В полі, тільки в чистім полі
Здобувають волю, в дусі і в борні.
Em
Не буває волі без пролиття крови.
Кропляться в червоне битії шляхи.

2. (Мотив 1)
Вітер грає в полі, на чистім роздоллі,
Не гуляє вітер в болотній імлі:
Гниль в болоті й кості - вітру треба простір.
Славу здобувають в дусі і в борні!

3. (Мотив 2)
Доки будем спати - гайда погуляти, ту-ду-ду,
На поля, де грають   вольнії вітри!
Волі не діждати, треба волю брати
Там, де царство духа, (гей!) де клечуть орли.

4. (Мотив 1)
Раб не хоче знати, де вітри гуляють,
Де орли кружлять, де гнівиться Бог.
Для раба - лиш хата, діти, юшка, баба,
Для орла - лиш вітер, Сонце, небо, лет.

5. (Мотив 1)
Не дає Бог волі, хто в затишку й долі,
Здобувать не прагне силою в борні.
Хто не молить Бога вирвати з острога
Рабства гріха й духу - на вольні вітри.

6. (Мотив 2)
Годі, годі спати - гайда погуляти, ту-ду-ду,
На поля, де грають вольнії вітри!
Волі не діждати, треба волю брати
У царині духа, (гей-гей!) де клечуть орли.

Програш (Мотив вступу).

7. (Мотив 1)
Простір, тільки неба простір
Кличе дух до злости від гріхів рабів.
Не буває волі без жертви і крови,
Небо здобувають в дусі і в борні.

8. (Мотив 1)
Раб не може знати, де небесні шатра,
Де оселя Слави, де царює Бог.
Для раба - лиш хата, діти, юшка, баба;
Для орла - лиш вітер, Сонце, небо, лет.

9. (Мотив 3)
Годі, годі спати - гайда погуляти, ту-ду-ду,
На поля, де грають   вольнії вітри!
Волі не діждати, треба волю брати,
Скроплювать в червоне    битії шляхи.
Скроплювать в червоне (гей-гей!) битії шляхи.

Програш (Мотив вступу).');
DELETE FROM song_links WHERE song_id = 'pisniua_8194518';
DELETE FROM song_versions WHERE song_id = 'pisniua_8194518';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8194518';
DELETE FROM songs WHERE id = 'pisniua_8194518';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8194518','Пролітають роки','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Знов весна красуня, наче молода,
Білими садами розцвіта.
І зліта у небо яблуневий цвіт,
Серце хоче вірить і любить.

Приспів:
Пролітають роки,
Відцвітають садки,
Підростають мої янголята.
Кожен час, кожну мить
За них серце болить
І дарує любов їм крилату.

Зоряної ночі сняться дивні сни,
І завжди збуваються вони.
Колискова пісня діток присипля,
Засинає серед зір земля.

Приспів.

Кожен час, кожну мить
За них серце болить
І дарує любов їм крилату.
Кожен час, кожну мить
За них серце болить
І дарує любов крилату.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8194518'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8194518','Пролітають роки','Знов весна красуня, наче молода,
Білими садами розцвіта.
І зліта у небо яблуневий цвіт,
Серце хоче вірить і любить.

Приспів:
Пролітають роки,
Відцвітають садки,
Підростають мої янголята.
Кожен час, кожну мить
За них серце болить
І дарує любов їм крилату.

Зоряної ночі сняться дивні сни,
І завжди збуваються вони.
Колискова пісня діток присипля,
Засинає серед зір земля.

Приспів.

Кожен час, кожну мить
За них серце болить
І дарує любов їм крилату.
Кожен час, кожну мить
За них серце болить
І дарує любов крилату.');
DELETE FROM song_links WHERE song_id = 'pisniua_8194501';
DELETE FROM song_versions WHERE song_id = 'pisniua_8194501';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8194501';
DELETE FROM songs WHERE id = 'pisniua_8194501';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8194501','На нашій Україні','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На нашій Україні і небо голубіше,
На нашій Україні і сонце на тепло,
На нашій Україні дівчата наймиліші,
На нашій Україні і пісня на добро.

Приспів:
У саду калина, на ставку верба,
Пісня журавлина - радість і журба,
Сонячна долина, стежка в споришах,
І співа пташина, як моя душа!
І співа пташина, як моя душа!

На нашій Україні і зорі найрясніші
І хата біла-біла, неначе у вінку.
На нашій Україні молитва найсвятіша
І пісня солов''їна в вишневому садку.

Приспів. (2)','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8194501'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8194501','На нашій Україні','На нашій Україні і небо голубіше,
На нашій Україні і сонце на тепло,
На нашій Україні дівчата наймиліші,
На нашій Україні і пісня на добро.

Приспів:
У саду калина, на ставку верба,
Пісня журавлина - радість і журба,
Сонячна долина, стежка в споришах,
І співа пташина, як моя душа!
І співа пташина, як моя душа!

На нашій Україні і зорі найрясніші
І хата біла-біла, неначе у вінку.
На нашій Україні молитва найсвятіша
І пісня солов''їна в вишневому садку.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8194501_l1','pisniua_8194501','YouTube','https://www.youtube.com/watch?v=aLFRsJ515pw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8193611';
DELETE FROM song_versions WHERE song_id = 'pisniua_8193611';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8193611';
DELETE FROM songs WHERE id = 'pisniua_8193611';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8193611','Славен єси!','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Запис від Макаренка Сидора Івановича, с Землянки, Кегичівського району Харківської області',NULL,'А у Вифлеємі,
Та й у Божім домі.
Славен єси! Славен єси!
Славен, Христе-Царю, на небеси!

Там Діва Марія
Сина породила.
Славен єси! Славен єси!
Славен, Христе-Царю, на небеси!

Сина породила,
В ясла положила.
Славен єси! Славен єси!
Славен, Христе-Царю, на небеси!

В ясла положила,
Сіном притрусила.
Славен єси! Славен єси!
Славен, Христе-Царю, на небеси!

Сіном притрусила:
"Спи, Божа Дитино!"
Славен єси! Славен єси!
Славен, Христе-Царю, на небеси!

"Спи, мій Сину-Царю,
Небесний Владарю!"
Славен єси! Славен єси!
Славен, Христе-Царю, на небеси!','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8193611'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8193611','Славен єси!','А у Вифлеємі,
Та й у Божім домі.
Славен єси! Славен єси!
Славен, Христе-Царю, на небеси!

Там Діва Марія
Сина породила.
Славен єси! Славен єси!
Славен, Христе-Царю, на небеси!

Сина породила,
В ясла положила.
Славен єси! Славен єси!
Славен, Христе-Царю, на небеси!

В ясла положила,
Сіном притрусила.
Славен єси! Славен єси!
Славен, Христе-Царю, на небеси!

Сіном притрусила:
"Спи, Божа Дитино!"
Славен єси! Славен єси!
Славен, Христе-Царю, на небеси!

"Спи, мій Сину-Царю,
Небесний Владарю!"
Славен єси! Славен єси!
Славен, Христе-Царю, на небеси!');
DELETE FROM song_links WHERE song_id = 'pisniua_8192256';
DELETE FROM song_versions WHERE song_id = 'pisniua_8192256';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8192256';
DELETE FROM songs WHERE id = 'pisniua_8192256';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8192256','Мамина хустка','Музика: Зоя Красуляк Слова: Зоя Красуляк. Виконує: Зоя Красуляк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Все минає з часом і з роками
Змінюється мода і пісні,
А в матусі хустка з тороками
Схована у скрині десь на дні.

Приспів:
Біла пелюстка, червона пелюстка -
В''ється мереживо без кінця.
Мамина хустка,мамина хустка,
Як вона доні моїй до лиця!

Сплетені віночком ніжні квіти
Квітнуть, наче долі оберіг,
А бабусі теплий літній вітер
Спомини приносить на поріг.

Приспів.

Ніжні, добрі і ласкаві руки
Білу хустку, мов вінок, зав''ють,
Дивиться бабуся на онуку -
Пригадає молодість свою.

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8192256'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8192256','Мамина хустка','Все минає з часом і з роками
Змінюється мода і пісні,
А в матусі хустка з тороками
Схована у скрині десь на дні.

Приспів:
Біла пелюстка, червона пелюстка -
В''ється мереживо без кінця.
Мамина хустка,мамина хустка,
Як вона доні моїй до лиця!

Сплетені віночком ніжні квіти
Квітнуть, наче долі оберіг,
А бабусі теплий літній вітер
Спомини приносить на поріг.

Приспів.

Ніжні, добрі і ласкаві руки
Білу хустку, мов вінок, зав''ють,
Дивиться бабуся на онуку -
Пригадає молодість свою.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_8194654';
DELETE FROM song_versions WHERE song_id = 'pisniua_8194654';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8194654';
DELETE FROM songs WHERE id = 'pisniua_8194654';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8194654','Василечки','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Василечки, василечки
Розквітають за вікном,
Василечки, василечки
Синьоокі як весна.
Василечки, василечки
Ніжно листям дріботять.
Тупу-тупу, по стежинці
Мої ніжки тупотять.
Тупу-тупу, по стежинці
Ніжки тупотять.

Приспів:
В мене сині оченята,
Сині, як у тата,
Я на усмішку багата
І дарую вам тепло.
В мене сині оченята,
Сині, як у тата,
Буде пісенька лунати
Гарним людям на добро.

Василечки, василечки -
Сині квіти запашні,
Соловейко лишив квітку
І підспівує мені.
Закує в саду зозуля,
Накує мені сто літ,
По стежинці я крокую
І радіє цілий світ,
По стежинці я крокує
І радіє світ.

Приспів. (2)','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8194654'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8194654','Василечки','Василечки, василечки
Розквітають за вікном,
Василечки, василечки
Синьоокі як весна.
Василечки, василечки
Ніжно листям дріботять.
Тупу-тупу, по стежинці
Мої ніжки тупотять.
Тупу-тупу, по стежинці
Ніжки тупотять.

Приспів:
В мене сині оченята,
Сині, як у тата,
Я на усмішку багата
І дарую вам тепло.
В мене сині оченята,
Сині, як у тата,
Буде пісенька лунати
Гарним людям на добро.

Василечки, василечки -
Сині квіти запашні,
Соловейко лишив квітку
І підспівує мені.
Закує в саду зозуля,
Накує мені сто літ,
По стежинці я крокую
І радіє цілий світ,
По стежинці я крокує
І радіє світ.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8194654_l1','pisniua_8194654','YouTube','https://www.youtube.com/watch?v=mFPGh_XOIVE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8192409';
DELETE FROM song_versions WHERE song_id = 'pisniua_8192409';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8192409';
DELETE FROM songs WHERE id = 'pisniua_8192409';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8192409','На Свят Вечір','Українська народна пісня. Виконує: Аксіос','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'На Свят Вечір, Щедрий Вечір
Ясна зірка з неба сяє,
І молитву шепчуть бори
Днесь ангельський спів лунає.

В цю таємну ясну нічку    |
Нам Спаситель народився!  |
У бідненькому вертепі     |
Із Марії воплотився!      | (2)

Пастушки, що в полі стали,
Несуть йому свої дари,
А зі Сходу за звіздою,
Поспішають тріє царі.

І ми разом з пастушками   |
Поклонімося дитині,       |
Та благаймо, щоб Ісус дав |
Кращу долю Україні!       | (2)','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8192409'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8192409','На Свят Вечір','На Свят Вечір, Щедрий Вечір
Ясна зірка з неба сяє,
І молитву шепчуть бори
Днесь ангельський спів лунає.

В цю таємну ясну нічку    |
Нам Спаситель народився!  |
У бідненькому вертепі     |
Із Марії воплотився!      | (2)

Пастушки, що в полі стали,
Несуть йому свої дари,
А зі Сходу за звіздою,
Поспішають тріє царі.

І ми разом з пастушками   |
Поклонімося дитині,       |
Та благаймо, щоб Ісус дав |
Кращу долю Україні!       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8192409_l1','pisniua_8192409','YouTube','https://www.youtube.com/watch?v=MaxvkjID-fs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8192409_l2','pisniua_8192409','YouTube','https://www.youtube.com/watch?v=STwlEVVwFTo','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8193001';
DELETE FROM song_versions WHERE song_id = 'pisniua_8193001';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8193001';
DELETE FROM songs WHERE id = 'pisniua_8193001';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8193001','Для мами','Музика: Т.І.К. (Тік) Слова: Т.І.К. (Тік). Виконує: Т.І.К. (Тік)','uk','ukraine_1991',NULL,NULL,NULL,'Можна грати звичайним перебором Б-3231323 Або Б-32123 Б Підібрав акорди Григорій Олійник, відредагував я, Орест','Заховається стомлене сонце за чорнії гори
Вийде місяць і зорі розсипить з своєї комори
Засинають ліси і гаї, і виспівують десь солов''ї
Засинає натруджений день, сон прийде на поріг

У блаженному спокої тихо пливе надвечір''я
Вийшов місяць, і ніч ступа на подвір''я
Поміж зустрічами й розлуками
Ти вже тішишся онуками
І так само чомусь по-дитячому віриш у сни

Пробач мені комусь присвячені пісні
Я їх співаю знову й знову
Пробач мені, що я прихожу лиш у сні
Dm                     Е7
А ти співаєш тиху колискову

Між тривогами в пошуках щастя летіли години
День за днем пролітали літа, час рікою пробіг
Але як би життя не склалося, і ми завжди поверталися
На святий і гостинний батьківський поріг

Пробач мені комусь присвячені пісні
Я їх співаю знову й знову
Пробач мені, що я прихожу лиш у сні
А ти співаєш тиху колискову
Пробач одну цю пісню трішечки сумну
Літа невпинно пролетіли
Пробач одну оту найпершу сивину
Що голову твою покрила','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:pro-batkiv'', ''Пісні з ностальгічними мотивами'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8193001'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8193001','Для мами','Заховається стомлене сонце за чорнії гори
Вийде місяць і зорі розсипить з своєї комори
Засинають ліси і гаї, і виспівують десь солов''ї
Засинає натруджений день, сон прийде на поріг

У блаженному спокої тихо пливе надвечір''я
Вийшов місяць, і ніч ступа на подвір''я
Поміж зустрічами й розлуками
Ти вже тішишся онуками
І так само чомусь по-дитячому віриш у сни

Пробач мені комусь присвячені пісні
Я їх співаю знову й знову
Пробач мені, що я прихожу лиш у сні
Dm                     Е7
А ти співаєш тиху колискову

Між тривогами в пошуках щастя летіли години
День за днем пролітали літа, час рікою пробіг
Але як би життя не склалося, і ми завжди поверталися
На святий і гостинний батьківський поріг

Пробач мені комусь присвячені пісні
Я їх співаю знову й знову
Пробач мені, що я прихожу лиш у сні
А ти співаєш тиху колискову
Пробач одну цю пісню трішечки сумну
Літа невпинно пролетіли
Пробач одну оту найпершу сивину
Що голову твою покрила');
DELETE FROM song_links WHERE song_id = 'pisniua_8193756';
DELETE FROM song_versions WHERE song_id = 'pisniua_8193756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8193756';
DELETE FROM songs WHERE id = 'pisniua_8193756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8193756','Зірка Сходу','Українська народна пісня. Виконує: Брати-монахи ЧСВВ','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Далеко так і близько водночас
Звістила зірка диво -
Христос родивсь! Сповнився час,
Прийшло життя правдиве!

Христос родивсь! Сповнився час,
Прийшло життя правдиве!
Христос родивсь! Сповнився час,
Прийшло життя правдиве!

Давно чекали цей прихід,
Царя хотіли чи Месію,
Ворота раю відчиняє Схід,
Дає усім нову надію!

Ворота раю відчиняє Схід,
Дає усім нову надію!
Ворота раю відчиняє Схід,
Дає усім нову надію!

Христос родивсь! Славім Його,
Вітаймо всіх, даруймо втіху!
Робім добро, бо бачить Бог -
Зішле нам щастя і багато сміху!

Робім добро, бо бачить Бог -
Зішле нам щастя і багато сміху!
Робім добро, бо бачить Бог -
Зішле нам щастя і багато сміху!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8193756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8193756','Зірка Сходу','Далеко так і близько водночас
Звістила зірка диво -
Христос родивсь! Сповнився час,
Прийшло життя правдиве!

Христос родивсь! Сповнився час,
Прийшло життя правдиве!
Христос родивсь! Сповнився час,
Прийшло життя правдиве!

Давно чекали цей прихід,
Царя хотіли чи Месію,
Ворота раю відчиняє Схід,
Дає усім нову надію!

Ворота раю відчиняє Схід,
Дає усім нову надію!
Ворота раю відчиняє Схід,
Дає усім нову надію!

Христос родивсь! Славім Його,
Вітаймо всіх, даруймо втіху!
Робім добро, бо бачить Бог -
Зішле нам щастя і багато сміху!

Робім добро, бо бачить Бог -
Зішле нам щастя і багато сміху!
Робім добро, бо бачить Бог -
Зішле нам щастя і багато сміху!');
DELETE FROM song_links WHERE song_id = 'pisniua_8196154';
DELETE FROM song_versions WHERE song_id = 'pisniua_8196154';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8196154';
DELETE FROM songs WHERE id = 'pisniua_8196154';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8196154','З Новим роком!','Виконує: MJ Kuvaldin','uk','ukraine_1991',NULL,'2006','аудіозапис','Проект "Зимова казка на М1", 2006 рік','З Новим роком! З Новим роком! |
З Новим роком! З Новим роком! | (3)

Перед новим роком клацнув на тіві,
Раптом перемкнуло щось у голові,
О-о-о! В голові щось раптом перемкнуло.
Бачу, що не в хаті я, а на льоду,
Де я опинився і куди іду?
О-о-о! І добряче мерзну на ходу!

Краще на Багами візьміть мене,
В морі там і снігу нема,
А мене у спину зима жене,
Несамовита зима!

З Новим роком! З Новим роком! |
З Новим роком! З Новим роком! | (3)

Я хотів ввімкнути з ходу М1,
Але опинився в лісі між ялин,
А-у-у! Всіх вовків я кличу з Новим роком!

Краще на Багами візьміть мене,
В морі там і снігу нема,
А мене у спину зима жене,
Несамовита зима!
Перед новим роком клацнув на тіві,
Раптом перемкнуло щось у голові,
О-о-о! В голові щось раптом перемкнуло.

З Новим роком! З Новим роком! |
З Новим роком! З Новим роком! | (3)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8196154'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8196154','З Новим роком!','З Новим роком! З Новим роком! |
З Новим роком! З Новим роком! | (3)

Перед новим роком клацнув на тіві,
Раптом перемкнуло щось у голові,
О-о-о! В голові щось раптом перемкнуло.
Бачу, що не в хаті я, а на льоду,
Де я опинився і куди іду?
О-о-о! І добряче мерзну на ходу!

Краще на Багами візьміть мене,
В морі там і снігу нема,
А мене у спину зима жене,
Несамовита зима!

З Новим роком! З Новим роком! |
З Новим роком! З Новим роком! | (3)

Я хотів ввімкнути з ходу М1,
Але опинився в лісі між ялин,
А-у-у! Всіх вовків я кличу з Новим роком!

Краще на Багами візьміть мене,
В морі там і снігу нема,
А мене у спину зима жене,
Несамовита зима!
Перед новим роком клацнув на тіві,
Раптом перемкнуло щось у голові,
О-о-о! В голові щось раптом перемкнуло.

З Новим роком! З Новим роком! |
З Новим роком! З Новим роком! | (3)');
DELETE FROM song_links WHERE song_id = 'pisniua_8192415';
DELETE FROM song_versions WHERE song_id = 'pisniua_8192415';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8192415';
DELETE FROM songs WHERE id = 'pisniua_8192415';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8192415','Коляда','Українська народна пісня. Виконує: Ірина Ярина','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Пізній вечір, небо в хмарах,
Сніг стежини заміта,
А від хати і до хати
Лине лунко коляда!        | (2)

Станьте люди, бо на землю
Завітав небесний гість,
Станьте люди, срібні дзвони
Нам голосять добру вість! | (3)

Вітер хмари розпорошив,
Зорі звислись над селом,
Пастушки і міхоноша
Колядують під вікном!     | (2)

Станьте люди, Бог родився,
Привітати Бога йдіть!
В дар маленькому дитяті
Свою віру принесіть!      | (3)

Пізня ніч, мороз міцніє,
Манить неба глибина,
А від краю і до краю
В даль колядками луна!    | (2)

Станьте люди, в Вифлеємі
Народився Божий син!
Світ радіє й колядує,
Колядуймо разом з ним!    | (3)

Станьте люди, в Вифлеємі
Народився Божий син!
Світ радіє й колядує,
Колядуймо разом з ним!    | (3)','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8192415'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8192415','Коляда','Пізній вечір, небо в хмарах,
Сніг стежини заміта,
А від хати і до хати
Лине лунко коляда!        | (2)

Станьте люди, бо на землю
Завітав небесний гість,
Станьте люди, срібні дзвони
Нам голосять добру вість! | (3)

Вітер хмари розпорошив,
Зорі звислись над селом,
Пастушки і міхоноша
Колядують під вікном!     | (2)

Станьте люди, Бог родився,
Привітати Бога йдіть!
В дар маленькому дитяті
Свою віру принесіть!      | (3)

Пізня ніч, мороз міцніє,
Манить неба глибина,
А від краю і до краю
В даль колядками луна!    | (2)

Станьте люди, в Вифлеємі
Народився Божий син!
Світ радіє й колядує,
Колядуймо разом з ним!    | (3)

Станьте люди, в Вифлеємі
Народився Божий син!
Світ радіє й колядує,
Колядуймо разом з ним!    | (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8192415_l1','pisniua_8192415','YouTube','https://www.youtube.com/watch?v=QtYQZaodoVU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8192415_l2','pisniua_8192415','YouTube','https://www.youtube.com/watch?v=dnPGee3B5CU','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8196603';
DELETE FROM song_versions WHERE song_id = 'pisniua_8196603';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8196603';
DELETE FROM songs WHERE id = 'pisniua_8196603';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8196603','Наркомани','Музика: Андрій Миколайчук Слова: Андрій Миколайчук. Виконує: Андрій Миколайчук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Речитатив:
Я вчора бачив наркомана -
Він йшов по вулиці кудись.
Сьогодні я таке побачив -
Вони його кудись вели.

Нечутно крались під парканом,
А біля восьмої зайшли
В підвал самотні наркомани,
Підлітки серед них були.
А рівно вісім двері впали,
По одному на верх вели,
Мовчали, погляди ховали,
Наркотики у них зайшли.

Приспів:
Це вони - наркомани,
Холодіє душа.
У широких кишенях
Схована анаша.
Вони тата і маму
Слухати не хотять!
По таємних підвалах
З наркоманками сплять!

Вони на все підуть заради
Того, щоби підняти кайф,
Бо вірять сволочі й зарази
В один-єдиний наркорай.
Ми весь бур''ян повикорчуєм
На тілі рідної землі,
Ми наш, ми новий світ збудуєм,
Збудуємо, а, може, й ні...

Приспів. (3)','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8196603'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8196603','Наркомани','Речитатив:
Я вчора бачив наркомана -
Він йшов по вулиці кудись.
Сьогодні я таке побачив -
Вони його кудись вели.

Нечутно крались під парканом,
А біля восьмої зайшли
В підвал самотні наркомани,
Підлітки серед них були.
А рівно вісім двері впали,
По одному на верх вели,
Мовчали, погляди ховали,
Наркотики у них зайшли.

Приспів:
Це вони - наркомани,
Холодіє душа.
У широких кишенях
Схована анаша.
Вони тата і маму
Слухати не хотять!
По таємних підвалах
З наркоманками сплять!

Вони на все підуть заради
Того, щоби підняти кайф,
Бо вірять сволочі й зарази
В один-єдиний наркорай.
Ми весь бур''ян повикорчуєм
На тілі рідної землі,
Ми наш, ми новий світ збудуєм,
Збудуємо, а, може, й ні...

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8196603_l1','pisniua_8196603','YouTube','https://www.youtube.com/watch?v=Xzk4p_mlhcM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8196603_l2','pisniua_8196603','YouTube','https://www.youtube.com/watch?v=6sZGPqfeS4g','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8192552';
DELETE FROM song_versions WHERE song_id = 'pisniua_8192552';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8192552';
DELETE FROM songs WHERE id = 'pisniua_8192552';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8192552','Сійся - родися','Музика: Зоя Красуляк Слова: Зоя Красуляк. Виконує: М. Березутський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сійся - родися, зерно золоте,
До нас у хату Новий Рік іде!
До нас у хату, до нас у хату,       |
До нас у хату Новий Рік іде!        | (2)

Щастя і радість людям землі
Ангел небесний несе на крилі!
Щастя і радість, щастя і радість    |
Ангел небесний несе на крилі!       | (2)

До нас у хату Новий Рік іде,
Білі паляниці в рушниках несе,
Білі паляниці, білі паляниці
До нас у хату в рушниках несе!
До нас у хату, до нас у хату
Білі паляниці в рушниках несе!

Білі паляниці, щедрий коровай,
Щастям і любов''ю землю засівай!
Щастям і любов''ю, щастям і любов''ю, |
Щастям і любов''ю землю засівай!     | (2)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8192552'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8192552','Сійся - родися','Сійся - родися, зерно золоте,
До нас у хату Новий Рік іде!
До нас у хату, до нас у хату,       |
До нас у хату Новий Рік іде!        | (2)

Щастя і радість людям землі
Ангел небесний несе на крилі!
Щастя і радість, щастя і радість    |
Ангел небесний несе на крилі!       | (2)

До нас у хату Новий Рік іде,
Білі паляниці в рушниках несе,
Білі паляниці, білі паляниці
До нас у хату в рушниках несе!
До нас у хату, до нас у хату
Білі паляниці в рушниках несе!

Білі паляниці, щедрий коровай,
Щастям і любов''ю землю засівай!
Щастям і любов''ю, щастям і любов''ю, |
Щастям і любов''ю землю засівай!     | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_8194676';
DELETE FROM song_versions WHERE song_id = 'pisniua_8194676';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8194676';
DELETE FROM songs WHERE id = 'pisniua_8194676';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8194676','Колискова','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Десь колисочка гойдалась,
Місяць сяяв у вікні,
Там дитину присипляли
З неба зорі осяйні.

Приспів:
І співала пісню мати,      |
Голос рвався і бринів,     |
Про любов, про рідну хату, |
Про далеких журавлів.      | (2)

Десь далеко дощик тихий
Буде землю умивать,
А тобі, моя утіхо,
Треба швидше засинать.

Приспів.

Розцвітає рута-м''ята
Хилить голову мою,
Ніч на дворі, треба спати,
Люлі-люлі-люлі-лі...

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8194676'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8194676','Колискова','Десь колисочка гойдалась,
Місяць сяяв у вікні,
Там дитину присипляли
З неба зорі осяйні.

Приспів:
І співала пісню мати,      |
Голос рвався і бринів,     |
Про любов, про рідну хату, |
Про далеких журавлів.      | (2)

Десь далеко дощик тихий
Буде землю умивать,
А тобі, моя утіхо,
Треба швидше засинать.

Приспів.

Розцвітає рута-м''ята
Хилить голову мою,
Ніч на дворі, треба спати,
Люлі-люлі-люлі-лі...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_819603';
DELETE FROM song_versions WHERE song_id = 'pisniua_819603';
DELETE FROM songs_fts WHERE song_id = 'pisniua_819603';
DELETE FROM songs WHERE id = 'pisniua_819603';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_819603','Ой, мала я чоловіка','(Ворона). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Етнографічна лабораторія','невідомий колектив однієї з сільських міцевостей Слобожанщини','Ой, мала я чоловіка,
Чоловіка мала,
Посадила на пеньочку, |
Та й ворона вкрала.   | (2)

Ой, не чула я такого,
Та й не виділа,
Щоб ворона            |
Чоловіками обідала    | (2)

Ой ворона, ти,ворона,
Сіла на пеньочку,
Коли з''їла чоловіка,  |
Віддай хоч сорочку    | (2)

Ой, вороно, ти вороно,
Ти, вороно кара,
Віддай мені чоловіка, |
Бо то ж моя кара.     | (2)','[''pisni.org.ua'', ''cat:slobozhanski'', ''Пісні з слобожанщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_819603'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_819603','Ой, мала я чоловіка','Ой, мала я чоловіка,
Чоловіка мала,
Посадила на пеньочку, |
Та й ворона вкрала.   | (2)

Ой, не чула я такого,
Та й не виділа,
Щоб ворона            |
Чоловіками обідала    | (2)

Ой ворона, ти,ворона,
Сіла на пеньочку,
Коли з''їла чоловіка,  |
Віддай хоч сорочку    | (2)

Ой, вороно, ти вороно,
Ти, вороно кара,
Віддай мені чоловіка, |
Бо то ж моя кара.     | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_8196777';
DELETE FROM song_versions WHERE song_id = 'pisniua_8196777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8196777';
DELETE FROM songs WHERE id = 'pisniua_8196777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8196777','Ой над Вифлеємом зірка сіяла','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой над Вифлеємом зірка сіяла,
Там Діва Марія сина родила,
В пеленах сповила, в ясла положила,
Це на світ родився Спаситель миру.

Він на світ родився чоловіком,
Був перше вітаний ангельським ликом,
Ангели співають, пастушки вітають,
А три царі із Персії у вертеп спішать.

З''явилась над ними Божа скинія,
А в яслах на сіні Маленьке Дитя,
Йосип і Марія над ним вже стояли,
Ручки простягає Маленьке Дитя.

Йосипові Ангел у сні з''явився,
Щоб з малим Дитятком він удалився,
Узяв Йосип Сина і Матір Його,
Утікав в Єгипет від царя злого.

А Ірод, цар злобний, дуже розлютивсь,
Що Ісус, Син Божий, на світ народивсь,
Військо розсилає у тую країну,
Сказав погубити Малу Дитину.

Сказав Ірод війську шукати Христа,
До двох літ рубати маленьких дитят,
Кільканадцять сотень маленьких дитят
Було в Вифлеємі вбито у той час.

Глянь, о Божий Сину, на дітей своїх,
Ти Спаситель миру, Цар неба й землі,
Зішли нам із неба дар святий, великий,
Будем Тебе славить на вічні віки!','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:narodni'', ''Пісні на християнську тематику'', ''Колядки'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8196777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8196777','Ой над Вифлеємом зірка сіяла','Ой над Вифлеємом зірка сіяла,
Там Діва Марія сина родила,
В пеленах сповила, в ясла положила,
Це на світ родився Спаситель миру.

Він на світ родився чоловіком,
Був перше вітаний ангельським ликом,
Ангели співають, пастушки вітають,
А три царі із Персії у вертеп спішать.

З''явилась над ними Божа скинія,
А в яслах на сіні Маленьке Дитя,
Йосип і Марія над ним вже стояли,
Ручки простягає Маленьке Дитя.

Йосипові Ангел у сні з''явився,
Щоб з малим Дитятком він удалився,
Узяв Йосип Сина і Матір Його,
Утікав в Єгипет від царя злого.

А Ірод, цар злобний, дуже розлютивсь,
Що Ісус, Син Божий, на світ народивсь,
Військо розсилає у тую країну,
Сказав погубити Малу Дитину.

Сказав Ірод війську шукати Христа,
До двох літ рубати маленьких дитят,
Кільканадцять сотень маленьких дитят
Було в Вифлеємі вбито у той час.

Глянь, о Божий Сину, на дітей своїх,
Ти Спаситель миру, Цар неба й землі,
Зішли нам із неба дар святий, великий,
Будем Тебе славить на вічні віки!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8196777_l1','pisniua_8196777','YouTube','https://www.youtube.com/watch?v=B7eseaWstcs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8193777';
DELETE FROM song_versions WHERE song_id = 'pisniua_8193777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8193777';
DELETE FROM songs WHERE id = 'pisniua_8193777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8193777','З Новим Роком!','Музика: Ліля Ваврін, Павло Табаков Слова: Ліля Ваврін, Павло Табаков. Виконує: Ліля Ваврін, Павло Табаков','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Світлий день
І лагідно тебе торкає сонце,
Яка казкова мить - як вві сні.
Подивись,
Як біле щастя лине у віконце
І тут щасливі ми!
Як добре нам вдох,
Ми в дорозі до зірок,
До свята тільки крок!

Приспів:
З Новим Роком! З Новим Роком!
Ти подивись у мої очі
І загадай усе, що хочеш!
З Новим Роком! З Новим Роком!
Нехай любові дивна казка
Твоє життя наповнить щастям
У новорічну ніч!

Світлий час,
І я тобі дарую своє серце,
Яка чудова мить - як вві сні.
Посміхнись,
Моя любов в твоїй душі озветься,
Які щасливі ми!
Як добре нам вдох,
Ми в дорозі до зірок,
До свята тільки крок!

Приспів.

У новорічну ніч!

Приспів.

Подивись у мої очі
І загадай усе, що хочеш!
Нехай любові дивна казка
Твоє життя наповнить щастям
У новорічну ніч!
У новорічну ніч!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8193777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8193777','З Новим Роком!','Світлий день
І лагідно тебе торкає сонце,
Яка казкова мить - як вві сні.
Подивись,
Як біле щастя лине у віконце
І тут щасливі ми!
Як добре нам вдох,
Ми в дорозі до зірок,
До свята тільки крок!

Приспів:
З Новим Роком! З Новим Роком!
Ти подивись у мої очі
І загадай усе, що хочеш!
З Новим Роком! З Новим Роком!
Нехай любові дивна казка
Твоє життя наповнить щастям
У новорічну ніч!

Світлий час,
І я тобі дарую своє серце,
Яка чудова мить - як вві сні.
Посміхнись,
Моя любов в твоїй душі озветься,
Які щасливі ми!
Як добре нам вдох,
Ми в дорозі до зірок,
До свята тільки крок!

Приспів.

У новорічну ніч!

Приспів.

Подивись у мої очі
І загадай усе, що хочеш!
Нехай любові дивна казка
Твоє життя наповнить щастям
У новорічну ніч!
У новорічну ніч!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8193777_l1','pisniua_8193777','YouTube','https://www.youtube.com/watch?v=McmcB_KoJx0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8195272';
DELETE FROM song_versions WHERE song_id = 'pisniua_8195272';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8195272';
DELETE FROM songs WHERE id = 'pisniua_8195272';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8195272','Колискова для коханої','Музика: Ярослав Борута Слова: Анатолій Фіглюк. Виконує: Ярослав Борута','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'На небі зоряне намисто,
Останній в парк пішов трамвай,
І засинає тихе місто,       |
І ти, кохана, засинай...    | (2)

Приспів:
Хай тобі міцно спиться,     |
Тривоги жени сумні,         |
Хай тобі знову сниться      |
Дивний сон цілу ніч.        | (2)

За день втомилось ясне сонце,
Пішло спочить за небокрай,
Ніч стука у твоє віконце    |
І ти, кохана, засинай...    | (2)

Приспів.

Сховався вітер в зелен вітті,
Шепоче ніжно: баю, баю...
Заснуло все на білім світі, |
І ти, кохана, засинай...    | (2)

Приспів','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8195272'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8195272','Колискова для коханої','На небі зоряне намисто,
Останній в парк пішов трамвай,
І засинає тихе місто,       |
І ти, кохана, засинай...    | (2)

Приспів:
Хай тобі міцно спиться,     |
Тривоги жени сумні,         |
Хай тобі знову сниться      |
Дивний сон цілу ніч.        | (2)

За день втомилось ясне сонце,
Пішло спочить за небокрай,
Ніч стука у твоє віконце    |
І ти, кохана, засинай...    | (2)

Приспів.

Сховався вітер в зелен вітті,
Шепоче ніжно: баю, баю...
Заснуло все на білім світі, |
І ти, кохана, засинай...    | (2)

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_8194950';
DELETE FROM song_versions WHERE song_id = 'pisniua_8194950';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8194950';
DELETE FROM songs WHERE id = 'pisniua_8194950';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8194950','Даруй добро','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Коли з''являється дитина -
Господь запалює зорю,
І тихо, наче у раю,
По небосхилу пісня лине.
І скільки тій зорі світить -
Не зна ніхто на цілім світі,
То ж треба вірити й любити
І кожен день добро творить.

Приспів:
Даруй добро на цілий світ!
Даруй добро! Віддай, що маєш!
Даруй добро багато літ!
Нехай зоря твоя палає!

Хто за минулим не жаліє,
Той віри в себе не згубив.
Той, хто хоч раз в житті любив,
Свою зорю тобі відкриє.
І скільки тій зорі світить -
Не зна ніхто на цілім світі,
То ж треба вірити й любити
І кожен день добро творить.

Приспів. (3)','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8194950'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8194950','Даруй добро','Коли з''являється дитина -
Господь запалює зорю,
І тихо, наче у раю,
По небосхилу пісня лине.
І скільки тій зорі світить -
Не зна ніхто на цілім світі,
То ж треба вірити й любити
І кожен день добро творить.

Приспів:
Даруй добро на цілий світ!
Даруй добро! Віддай, що маєш!
Даруй добро багато літ!
Нехай зоря твоя палає!

Хто за минулим не жаліє,
Той віри в себе не згубив.
Той, хто хоч раз в житті любив,
Свою зорю тобі відкриє.
І скільки тій зорі світить -
Не зна ніхто на цілім світі,
То ж треба вірити й любити
І кожен день добро творить.

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8194950_l1','pisniua_8194950','YouTube','https://www.youtube.com/watch?v=KhJqgmklOm8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_819909';
DELETE FROM song_versions WHERE song_id = 'pisniua_819909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_819909';
DELETE FROM songs WHERE id = 'pisniua_819909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_819909','Тадж-Махал *','Музика: Гурт "Океан Ельзи" Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Мене питають, коли поїду,
Всi питають, куди поїду
Лiтом я.
Усi знайомi i незнайомi,
Усi сусiди в моєму домi,
Вся сiм`я.
А я не знаю, та я не знаю -
Навiть часу не вистачає
На вiкенд.
I знов, i знов собi уявляю,
Як у iндiю я лiтаю -
В дивний Ленд...

Приспів:

Тадж-Махал, Тадж-Махал -
Ти iндiйский п`єдестал,
Схiдна стеля i пiдвал,
[Бiлий камінь і метал]
A
О`є, Тадж-Махал!

Вiн там, де джунглi лiтають всюди,
Ходять пiшки до нього люди
На поклон.
Його побачити хочуть дуже,
Всiм показує шлях туди
Iндiйський слон.
Коли я буду у мiстi Делi,
[Субенюсь я у гатели]
Або нi...
Поїду я все одно до тебе,
Знай, читати знаки
На стiнi.

Приспів.','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_819909'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_819909','Тадж-Махал *','Мене питають, коли поїду,
Всi питають, куди поїду
Лiтом я.
Усi знайомi i незнайомi,
Усi сусiди в моєму домi,
Вся сiм`я.
А я не знаю, та я не знаю -
Навiть часу не вистачає
На вiкенд.
I знов, i знов собi уявляю,
Як у iндiю я лiтаю -
В дивний Ленд...

Приспів:

Тадж-Махал, Тадж-Махал -
Ти iндiйский п`єдестал,
Схiдна стеля i пiдвал,
[Бiлий камінь і метал]
A
О`є, Тадж-Махал!

Вiн там, де джунглi лiтають всюди,
Ходять пiшки до нього люди
На поклон.
Його побачити хочуть дуже,
Всiм показує шлях туди
Iндiйський слон.
Коли я буду у мiстi Делi,
[Субенюсь я у гатели]
Або нi...
Поїду я все одно до тебе,
Знай, читати знаки
На стiнi.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_819474';
DELETE FROM song_versions WHERE song_id = 'pisniua_819474';
DELETE FROM songs_fts WHERE song_id = 'pisniua_819474';
DELETE FROM songs WHERE id = 'pisniua_819474';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_819474','А-а, коточок','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1971','"Народні пісні в записах Лесі Українки та з її співу". 1971 рік "Музична Україна"',NULL,'А-а, коточок,
Заховався у куточок,
Піймав собі мишку
Та й зїв у затишку.
А-а-а-а! А-а-а-а!','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_819474'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_819474','А-а, коточок','А-а, коточок,
Заховався у куточок,
Піймав собі мишку
Та й зїв у затишку.
А-а-а-а! А-а-а-а!');
DELETE FROM song_links WHERE song_id = 'pisniua_8199756';
DELETE FROM song_versions WHERE song_id = 'pisniua_8199756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8199756';
DELETE FROM songs WHERE id = 'pisniua_8199756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8199756','Сиділа під грушков','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Сиділа під грушкой - ага
Сіяла петрушку - ну да
Виглядала хлопця -ой траля траля-ля     |
В чорнім капелюшку - опа.               | (2)

В чорнім капелюшку -ага
В червоних чоботях - ну да
Високий чорненький - ой траля траля-ля. |
Ой ти мій милеенький.                   | (2)

Горівочку пив би - ага
А люльку курив би - ну да
Дівчину гарненьку - ой траля траля-ля. |
До серця тулив би - уха.               | (2)

Як би мені зранку, ага
горілочки шклянку, таде.
Тютюнець та люльку ой траляля.  |
Дівчину моргульку опа.          | (2)

Сиділа під грушкой - ага
Сіяла петрушку - ну да
Виглядала хлопця -ой траля траля-ля. |
В чорнім капелюшку - опа.            | (2)

Виглядала хлопця -ой траля траля-ля  |
В чорнім капелюшку - опа.            | (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8199756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8199756','Сиділа під грушков','Сиділа під грушкой - ага
Сіяла петрушку - ну да
Виглядала хлопця -ой траля траля-ля     |
В чорнім капелюшку - опа.               | (2)

В чорнім капелюшку -ага
В червоних чоботях - ну да
Високий чорненький - ой траля траля-ля. |
Ой ти мій милеенький.                   | (2)

Горівочку пив би - ага
А люльку курив би - ну да
Дівчину гарненьку - ой траля траля-ля. |
До серця тулив би - уха.               | (2)

Як би мені зранку, ага
горілочки шклянку, таде.
Тютюнець та люльку ой траляля.  |
Дівчину моргульку опа.          | (2)

Сиділа під грушкой - ага
Сіяла петрушку - ну да
Виглядала хлопця -ой траля траля-ля. |
В чорнім капелюшку - опа.            | (2)

Виглядала хлопця -ой траля траля-ля  |
В чорнім капелюшку - опа.            | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_8201714';
DELETE FROM song_versions WHERE song_id = 'pisniua_8201714';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8201714';
DELETE FROM songs WHERE id = 'pisniua_8201714';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8201714','Ти є скала мойого спасіння',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ти є скала мойого спасіння,
Ти сила мого життя,
Моя надія, моє натхнення,
Боже! Тебе кличу я.

В Тебе вірю я, вірю я,
Бо в Тобі є вічне життя,
Ти любов моя, допомога моя,
На Тебе надіюся я.

Коли журба моє тисне серце,
Ти є потіха моя,
Ти - моя радість, моє Ти щастя,
В Тобі втішаюся я!

Тобі, Господь, я хвалу складаю,
Тобі подяка моя,
Тобі молюсь і Тобі співаюсь,
Слава Тобі і хвала!','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8201714'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8201714','Ти є скала мойого спасіння','Ти є скала мойого спасіння,
Ти сила мого життя,
Моя надія, моє натхнення,
Боже! Тебе кличу я.

В Тебе вірю я, вірю я,
Бо в Тобі є вічне життя,
Ти любов моя, допомога моя,
На Тебе надіюся я.

Коли журба моє тисне серце,
Ти є потіха моя,
Ти - моя радість, моє Ти щастя,
В Тобі втішаюся я!

Тобі, Господь, я хвалу складаю,
Тобі подяка моя,
Тобі молюсь і Тобі співаюсь,
Слава Тобі і хвала!');
DELETE FROM song_links WHERE song_id = 'pisniua_8198103';
DELETE FROM song_versions WHERE song_id = 'pisniua_8198103';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8198103';
DELETE FROM songs WHERE id = 'pisniua_8198103';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8198103','Стежина добра','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Місяць, як яблуко, в синьому небі засяє,
Кожного доля у Бога в долонях - я знаю,
В доброму серці мелодія сонцем сповита,
Добрій людині терниста стежинка до світла.

Приспів:
Кожен дорогу для себе єдину шукає,
Хтось забирає, а хтось віддає все, що має.
Тільки не слід забувати і завтра й сьогодні
В горі і в радості всі ми в долонях Господніх.
Проклади дорогу у широкий світ,
Щоби на землі добра лишити слід!

В добрих очах буде світло любові горіти,
Витрати час, щоби серце байдуже зігріти,
Щоб зрозуміти, для чого життя нам дається,
Ти для добра і любові відкрий своє серце!

Приспів.

Проклади дорогу у широкий світ,
Щоби на землі добра лишити слід!','[''pisni.org.ua'', ''cat:christian'', ''cat:philosophic'', ''Пісні на християнську тематику'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8198103'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8198103','Стежина добра','Місяць, як яблуко, в синьому небі засяє,
Кожного доля у Бога в долонях - я знаю,
В доброму серці мелодія сонцем сповита,
Добрій людині терниста стежинка до світла.

Приспів:
Кожен дорогу для себе єдину шукає,
Хтось забирає, а хтось віддає все, що має.
Тільки не слід забувати і завтра й сьогодні
В горі і в радості всі ми в долонях Господніх.
Проклади дорогу у широкий світ,
Щоби на землі добра лишити слід!

В добрих очах буде світло любові горіти,
Витрати час, щоби серце байдуже зігріти,
Щоб зрозуміти, для чого життя нам дається,
Ти для добра і любові відкрий своє серце!

Приспів.

Проклади дорогу у широкий світ,
Щоби на землі добра лишити слід!');
DELETE FROM song_links WHERE song_id = 'pisniua_8196013';
DELETE FROM song_versions WHERE song_id = 'pisniua_8196013';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8196013';
DELETE FROM songs WHERE id = 'pisniua_8196013';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8196013','З Новим Роком','Виконує: Таліта Кум','uk','ukraine_1991',NULL,'2006','аудіозапис','Проект "Зимова казка на М1", 2006 рік','День новорічний засипав білий сніг,
Я йду до тебе по вулицях дзвінких,
Сьогодні разом ми,
А з нами свято снігу, свято зими!
Яскраві мрії і блиск казкових завіс
Нам рік минулий в долоні щедрі приніс,
Він добрим був до нас,
І хай чудовим буде рік Новий!

Приспів:
Це Новий рік! Новий рік!
Новий рік! Новий-Новий рік!
Білим снігом знову землю замело,
Місто біле, ніби завжди таким було,
Світла радість з неба на землю летить,
"З Новим роком!"
Скажу тобі я вже за мить.

Старий годинник
Вже б''є дванадцять нуль-нуль,
Летять вітання з усіх планетних півкуль,
До столу гості йдуть
І подарунки новорічні несуть!

Приспів. (2)

Я вже за мить...
З Новим роком! З Новим роком!
З Новим Роком!

Приспів. (2)

Це Новий рік! Новий рік!
Новий рік! Новий-Новий рік!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8196013'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8196013','З Новим Роком','День новорічний засипав білий сніг,
Я йду до тебе по вулицях дзвінких,
Сьогодні разом ми,
А з нами свято снігу, свято зими!
Яскраві мрії і блиск казкових завіс
Нам рік минулий в долоні щедрі приніс,
Він добрим був до нас,
І хай чудовим буде рік Новий!

Приспів:
Це Новий рік! Новий рік!
Новий рік! Новий-Новий рік!
Білим снігом знову землю замело,
Місто біле, ніби завжди таким було,
Світла радість з неба на землю летить,
"З Новим роком!"
Скажу тобі я вже за мить.

Старий годинник
Вже б''є дванадцять нуль-нуль,
Летять вітання з усіх планетних півкуль,
До столу гості йдуть
І подарунки новорічні несуть!

Приспів. (2)

Я вже за мить...
З Новим роком! З Новим роком!
З Новим Роком!

Приспів. (2)

Це Новий рік! Новий рік!
Новий рік! Новий-Новий рік!');
DELETE FROM song_links WHERE song_id = 'pisniua_8204575';
DELETE FROM song_versions WHERE song_id = 'pisniua_8204575';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8204575';
DELETE FROM songs WHERE id = 'pisniua_8204575';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8204575','Друзям','Музика: Василь Волощук Слова: невідомий. Виконує: Василь Волощук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Щодня біжу немов по злітній смузі,
Біжу і зупиняюсь на ходу,
До вас гукаю: Де ж ви, де ви, друзі?
Як треба буде вам, то я прийду!
Моє життя у чорно білій смузі
Втомилося самотньої ходи,
Давно душа позбулася ілюзій,
До них ти - каже - більше не ходи...

Приспів:
Минають дні і тижні у напрузі,
З роками важче бігти у літах.
Все меншає і недругів, і друзів,
І я до друзів лину наче птах.

Піднявся і стою на виднокрузі
З гори моєї стелиться туман7,
До вас гукаю: Де ж ви, де ви, друзі?
І дякую вам щиро за обман.
Душа моя втомилася ілюзій,
Не в гору, а з гори я вже іду,
До вас гукаю: Де ж ви, де ви, друзі?
Як треба буде вам, то я прийду!

Приспів. (2)','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8204575'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8204575','Друзям','Щодня біжу немов по злітній смузі,
Біжу і зупиняюсь на ходу,
До вас гукаю: Де ж ви, де ви, друзі?
Як треба буде вам, то я прийду!
Моє життя у чорно білій смузі
Втомилося самотньої ходи,
Давно душа позбулася ілюзій,
До них ти - каже - більше не ходи...

Приспів:
Минають дні і тижні у напрузі,
З роками важче бігти у літах.
Все меншає і недругів, і друзів,
І я до друзів лину наче птах.

Піднявся і стою на виднокрузі
З гори моєї стелиться туман7,
До вас гукаю: Де ж ви, де ви, друзі?
І дякую вам щиро за обман.
Душа моя втомилася ілюзій,
Не в гору, а з гори я вже іду,
До вас гукаю: Де ж ви, де ви, друзі?
Як треба буде вам, то я прийду!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_8203817';
DELETE FROM song_versions WHERE song_id = 'pisniua_8203817';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8203817';
DELETE FROM songs WHERE id = 'pisniua_8203817';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8203817','Дай Бог','Музика: Богдан Кучер Слова: Богдан Кучер. Виконує: Богдан Кучер','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'День і ніч зігріємо теплом,
Щиро вас вітаємо усіх,
Щоб душа світилася добром,
Бо ж з далеких стрілися доріг.

Приспів:
Дай Бог вам, друзі і родино,
Щоб ви сто років в щасті жили
І до останньої хвилини
Любили ви і вас любили!

А, якщо на серці, раптом, сніг,
Нас не подолає суєта,
Кожен з нас в собі святе зберіг
І причин для суму вже нема.

Приспів.

І життя даремно не мине,
Є про що нам мріяти, згадати,
Б''ється в пісні серце молоде,
Варто нині разом заспівали!

Приспів. (2)

І до останньої хвилини
Любили ви і вас любили!

Приспів.

І до останньої хвилини
Любили ви і вас любили!','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8203817'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8203817','Дай Бог','День і ніч зігріємо теплом,
Щиро вас вітаємо усіх,
Щоб душа світилася добром,
Бо ж з далеких стрілися доріг.

Приспів:
Дай Бог вам, друзі і родино,
Щоб ви сто років в щасті жили
І до останньої хвилини
Любили ви і вас любили!

А, якщо на серці, раптом, сніг,
Нас не подолає суєта,
Кожен з нас в собі святе зберіг
І причин для суму вже нема.

Приспів.

І життя даремно не мине,
Є про що нам мріяти, згадати,
Б''ється в пісні серце молоде,
Варто нині разом заспівали!

Приспів. (2)

І до останньої хвилини
Любили ви і вас любили!

Приспів.

І до останньої хвилини
Любили ви і вас любили!');
DELETE FROM song_links WHERE song_id = 'pisniua_820373';
DELETE FROM song_versions WHERE song_id = 'pisniua_820373';
DELETE FROM songs_fts WHERE song_id = 'pisniua_820373';
DELETE FROM songs WHERE id = 'pisniua_820373';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_820373','Золотий левик','Музика: Володимир Некрасов Слова: Володимир Некрасов. Виконує: Володимир Некрасов, Богдан Лялька','uk','ukraine_1991',NULL,NULL,'Володимир Некрасов','Коментар автора пісні: "Це - стрілецька (стрілецько-дивізійна) пісня".','Там у долині, при білім Сонці
Вітер гуляє в зеленій траві.
Там вийшли маршем молоді хлопці |
З "золотим левиком" на рукаві.  | (2)
Прости кохана, що тя покинув.
Може повернусь, а може ні.
Йду воювати за Україну          |
З "золотим левиком" на рукаві.  | (2)
Насуне хмара, стримать не сила
Червону смерть у москальськім вбранні.
Заплаче мати, згадавши сина     |
З "золотим левиком" на рукаві.  | (2)
Небо розріжуть смертельні кулі,
Стрільнами зорано землю в крові.
- По що вмираєш, молодий хлопче |
З "золотим левиком" на рукаві?  | (2)
- Я не вмираю, лиш тільки гину.
Маковим цвітом зросту у траві,
Бо не забуде стрільця Україна   |
З "золотим левиком" на рукаві.  | (2)','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_820373'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_820373','Золотий левик','Там у долині, при білім Сонці
Вітер гуляє в зеленій траві.
Там вийшли маршем молоді хлопці |
З "золотим левиком" на рукаві.  | (2)
Прости кохана, що тя покинув.
Може повернусь, а може ні.
Йду воювати за Україну          |
З "золотим левиком" на рукаві.  | (2)
Насуне хмара, стримать не сила
Червону смерть у москальськім вбранні.
Заплаче мати, згадавши сина     |
З "золотим левиком" на рукаві.  | (2)
Небо розріжуть смертельні кулі,
Стрільнами зорано землю в крові.
- По що вмираєш, молодий хлопче |
З "золотим левиком" на рукаві?  | (2)
- Я не вмираю, лиш тільки гину.
Маковим цвітом зросту у траві,
Бо не забуде стрільця Україна   |
З "золотим левиком" на рукаві.  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_820373_l1','pisniua_820373','YouTube','https://www.youtube.com/watch?v=7Fk6yidA1mo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_820373_l2','pisniua_820373','YouTube','https://www.youtube.com/watch?v=3PbN3W3niF0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8199312';
DELETE FROM song_versions WHERE song_id = 'pisniua_8199312';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8199312';
DELETE FROM songs WHERE id = 'pisniua_8199312';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8199312','Дві пісеньки','Музика: Леся Горова Слова: Леся Горова. Виконує: Анастасія Кравченко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Зустріла я дві пісеньки
Та й стала їх питати:
Яку із них послухати,
Яку із них співати?
Одна була веселою,
А друга сумувала:
Напевно, зла чаклунка
Її зачарувала.

Одна - усе сміялася,
А друга - все журилась,
Сумними оченятами
Услід мені дивилась.
Якби чарівну паличку
В руках своїх я мала,
Моя сумная пісенька   |
Веселою би стала!     | (2)

А я не мала палички,
Не вміла чаклувати,
Узяла я дві пісеньки
Та й стала їх співати.
Одна була веселою,    |
А друга сумувала      |
І я неначе в дзеркалі |
Себе у ній впізнала!  | (2)','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8199312'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8199312','Дві пісеньки','Зустріла я дві пісеньки
Та й стала їх питати:
Яку із них послухати,
Яку із них співати?
Одна була веселою,
А друга сумувала:
Напевно, зла чаклунка
Її зачарувала.

Одна - усе сміялася,
А друга - все журилась,
Сумними оченятами
Услід мені дивилась.
Якби чарівну паличку
В руках своїх я мала,
Моя сумная пісенька   |
Веселою би стала!     | (2)

А я не мала палички,
Не вміла чаклувати,
Узяла я дві пісеньки
Та й стала їх співати.
Одна була веселою,    |
А друга сумувала      |
І я неначе в дзеркалі |
Себе у ній впізнала!  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8199312_l1','pisniua_8199312','YouTube','https://www.youtube.com/watch?v=8VuIuSQ_lnM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8198575';
DELETE FROM song_versions WHERE song_id = 'pisniua_8198575';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8198575';
DELETE FROM songs WHERE id = 'pisniua_8198575';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8198575','Вся земля так довго на цей день чекала','Виконує: Валерий Короп','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вся земля так довго на цей день чекала.
Коли лине з неба чистий сильний дощ.
Коли сонце правди порозгонить хмари,
Коли пісню щастя заспіває хтось.

І цей день наршті до нас увірвався -
Він приніс нам віру в світле майбуття.
Через свого Сина Всемогутній Батько
Нам дарує ріки вічного життя.

Ісусу слава, Ісусу слава:
Лунає пісня над схилами Дніпра.
Ісусу слава, Ісусу слава:
Співає вільна Україна.

Люди України! Підіймайте руки,
Прославляйте Сина - Він єдиний Бог.
Він своєю кров''ю розірвав кайдани.
Він достоїш слави - Ісус Христос.

Ісусу слава, навіки, навіки.
Ісусу слава, навіки, навіки.
Ісусу слава, навіки, навіки. (3)','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8198575'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8198575','Вся земля так довго на цей день чекала','Вся земля так довго на цей день чекала.
Коли лине з неба чистий сильний дощ.
Коли сонце правди порозгонить хмари,
Коли пісню щастя заспіває хтось.

І цей день наршті до нас увірвався -
Він приніс нам віру в світле майбуття.
Через свого Сина Всемогутній Батько
Нам дарує ріки вічного життя.

Ісусу слава, Ісусу слава:
Лунає пісня над схилами Дніпра.
Ісусу слава, Ісусу слава:
Співає вільна Україна.

Люди України! Підіймайте руки,
Прославляйте Сина - Він єдиний Бог.
Він своєю кров''ю розірвав кайдани.
Він достоїш слави - Ісус Христос.

Ісусу слава, навіки, навіки.
Ісусу слава, навіки, навіки.
Ісусу слава, навіки, навіки. (3)');
DELETE FROM song_links WHERE song_id = 'pisniua_8202001';
DELETE FROM song_versions WHERE song_id = 'pisniua_8202001';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8202001';
DELETE FROM songs WHERE id = 'pisniua_8202001';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8202001','Як олень прагне',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'С    G          Am   Am/G
Як олень прагне до потоків,
Так душа моя прагне Тебе,
Я бажаю Тобі сказати,
Що я так люблю Тебе.

Ти один моє серце знаєш,
І в нього Ти любов вливаєш,
Я бажаю Тобі сказати,
Що я так люблю Тебе.

Простягнув Ти пробиті руки
І від смерті мене врятував,
Щоб мене захистить від муки
На хресті Ти кров пролляв.

Не зрівняти з Тобою злато,
Тільки Ти щастя нам даєш
І в недолі допомогаєш,
І сіяння нам несеш.

Щирим серцем Тебе я кохаю,
Бо життя дарував Ти мені.
За Твою доброту і ласку
Дуже вдячний я тобі.

Ти - мій Друг, Ти - мій Брат надійний,
Хоч Ти є і моїм Царем.
Люблю Тебе, як нікого більше,
І піснями славлю Тебе.

Як лелека моря долає
Чує здалеку шелест гнізда,
Так душа моя спрагла знає,
Де для неї жива вода.

Ти - мій приятель, брат мій любий,
Справедливий цар є Ти.
Ти - моя любов єдина,
Я з Тобою хочу йти.

Ти єдиний даруєш радість,
Ти для мене є усе,
Ти - єдина моя надія,
Найдорожчий понад все.

За багатства земні дорожчий
Той, Хто спокій мені дарував.
Радість маю в Тобі, мій Боже,
Лиш в Тобі життя вповні.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8202001'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8202001','Як олень прагне','С    G          Am   Am/G
Як олень прагне до потоків,
Так душа моя прагне Тебе,
Я бажаю Тобі сказати,
Що я так люблю Тебе.

Ти один моє серце знаєш,
І в нього Ти любов вливаєш,
Я бажаю Тобі сказати,
Що я так люблю Тебе.

Простягнув Ти пробиті руки
І від смерті мене врятував,
Щоб мене захистить від муки
На хресті Ти кров пролляв.

Не зрівняти з Тобою злато,
Тільки Ти щастя нам даєш
І в недолі допомогаєш,
І сіяння нам несеш.

Щирим серцем Тебе я кохаю,
Бо життя дарував Ти мені.
За Твою доброту і ласку
Дуже вдячний я тобі.

Ти - мій Друг, Ти - мій Брат надійний,
Хоч Ти є і моїм Царем.
Люблю Тебе, як нікого більше,
І піснями славлю Тебе.

Як лелека моря долає
Чує здалеку шелест гнізда,
Так душа моя спрагла знає,
Де для неї жива вода.

Ти - мій приятель, брат мій любий,
Справедливий цар є Ти.
Ти - моя любов єдина,
Я з Тобою хочу йти.

Ти єдиний даруєш радість,
Ти для мене є усе,
Ти - єдина моя надія,
Найдорожчий понад все.

За багатства земні дорожчий
Той, Хто спокій мені дарував.
Радість маю в Тобі, мій Боже,
Лиш в Тобі життя вповні.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8202001_l1','pisniua_8202001','YouTube','https://www.youtube.com/watch?v=tiK0aABVZ6g','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_820654';
DELETE FROM song_versions WHERE song_id = 'pisniua_820654';
DELETE FROM songs_fts WHERE song_id = 'pisniua_820654';
DELETE FROM songs WHERE id = 'pisniua_820654';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_820654','Арешт','Музика: Танок на майдані Конго Слова: Танок на майдані Конго. Виконує: Танок на майдані Конго','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: Вадим Слабковський','2x                              Nх
e--------------\-------------------------------\\----
b-----1------3-\-----1------3----------1-----3-\\----
g-------0------\-------0------0----------0-----\\----
d---2-----2s4--\---2-----2s4----0----2-----0---\\--- і так далі
а-0------------\-0-----------------3-----------\\-0--
e--------------\-------------------------------\\----

Ти уяви собі - падає Боінг
Людей кида сила ваги
Як погані бі-бої вони падають вниз
Найпоганіша криза із усіх криз.
Я у салоні і саме в цей час
Хтось на небі надав мені шанс
І я зустрів її врешті- решт
Але все це змінив мій арешт

Приспів:
Я бачу сни. Я бачу сни
Ти до мене не ходи, не дзвони
Коли я бачу сни, коли я бачу сни

Поки наш літак падав униз
Я пригадав, що читав десь колись
Що у кожній тварі має буть хтось
В собаки - собака, в Юнони - Авось
У моря - річка, у дома - тин,
У Петра Марічка, все з двох половин
Ми - два береги, Буда та Пешт
Все було б добре, якби не арешт

Приспів.

Що було потім, розповім в двох словах
Вирішив я припинити цей жах
Її взяв на руки, крила розкрив
Я покинув літак і на землю злетів
Сяяло сонце, я сів на траву
В її очі я зазирнув
І зрозумів, що нема в світі меж
Але все зіпсував мій арешт

Приспів.

Ось любов, так любов, я долоні простер
Але поруч з''явився гелікоптер
Суворі люди, пси, автомати
Сказали, що право я маю мовчати
Оце так ламбада, засада така
Але я був винен, я пілот літака
Вона не встагла сказати - "І я тебе теж", -
Ось так і відбувся мій арешт

Приспів.

P.S.
Вийде сонце, виведе з омани
Але ранок не лікує рани
Спи не спи, журися не журися
Не зустрілися, то хоча б наснися

Приспів.

P.P.S.
Коли сон минає, ви часу не гайте
Прокидайтесь, але пам''ятайте
Що, все може бути. На цьому бувайте
Я все це вигадав. Вибачайте','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_820654'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_820654','Арешт','2x                              Nх
e--------------\-------------------------------\\----
b-----1------3-\-----1------3----------1-----3-\\----
g-------0------\-------0------0----------0-----\\----
d---2-----2s4--\---2-----2s4----0----2-----0---\\--- і так далі
а-0------------\-0-----------------3-----------\\-0--
e--------------\-------------------------------\\----

Ти уяви собі - падає Боінг
Людей кида сила ваги
Як погані бі-бої вони падають вниз
Найпоганіша криза із усіх криз.
Я у салоні і саме в цей час
Хтось на небі надав мені шанс
І я зустрів її врешті- решт
Але все це змінив мій арешт

Приспів:
Я бачу сни. Я бачу сни
Ти до мене не ходи, не дзвони
Коли я бачу сни, коли я бачу сни

Поки наш літак падав униз
Я пригадав, що читав десь колись
Що у кожній тварі має буть хтось
В собаки - собака, в Юнони - Авось
У моря - річка, у дома - тин,
У Петра Марічка, все з двох половин
Ми - два береги, Буда та Пешт
Все було б добре, якби не арешт

Приспів.

Що було потім, розповім в двох словах
Вирішив я припинити цей жах
Її взяв на руки, крила розкрив
Я покинув літак і на землю злетів
Сяяло сонце, я сів на траву
В її очі я зазирнув
І зрозумів, що нема в світі меж
Але все зіпсував мій арешт

Приспів.

Ось любов, так любов, я долоні простер
Але поруч з''явився гелікоптер
Суворі люди, пси, автомати
Сказали, що право я маю мовчати
Оце так ламбада, засада така
Але я був винен, я пілот літака
Вона не встагла сказати - "І я тебе теж", -
Ось так і відбувся мій арешт

Приспів.

P.S.
Вийде сонце, виведе з омани
Але ранок не лікує рани
Спи не спи, журися не журися
Не зустрілися, то хоча б наснися

Приспів.

P.P.S.
Коли сон минає, ви часу не гайте
Прокидайтесь, але пам''ятайте
Що, все може бути. На цьому бувайте
Я все це вигадав. Вибачайте');
DELETE FROM song_links WHERE song_id = 'pisniua_8196910';
DELETE FROM song_versions WHERE song_id = 'pisniua_8196910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8196910';
DELETE FROM songs WHERE id = 'pisniua_8196910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8196910','Заспівай мені мамо','Музика: Дмитро Хома Слова: Дмитро Хома. Виконує: Ольга Кашул, Дмитро Хома','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Нехай летять за днями дні,
До тебе птахою прилину.
Мрію про зустріч навесні,
Беру тепло в холодну зиму.
Ти найдорожча на землі
Нічого більшого не треба.
Тобі одній,тобі одній
Вклоняюсь від землі до неба!

Приспів:
Заспівай мені мамо,заспівай колискову,
Як в дитинстві співала ти своєму дитя.
Подаруй мені мамо ту хвилину казкову,
Ту стежину єдину,що веде у життя.

Коли тривога на душі,
Ти все могла мені пробачить,
За все,що маю у житті
Не в змозі я тобі віддячить.
На серці радість,чи болить,
Вона радіє,тужить з нами.
Не так мелодія звучит,
Коли немає поруч мами!','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8196910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8196910','Заспівай мені мамо','Нехай летять за днями дні,
До тебе птахою прилину.
Мрію про зустріч навесні,
Беру тепло в холодну зиму.
Ти найдорожча на землі
Нічого більшого не треба.
Тобі одній,тобі одній
Вклоняюсь від землі до неба!

Приспів:
Заспівай мені мамо,заспівай колискову,
Як в дитинстві співала ти своєму дитя.
Подаруй мені мамо ту хвилину казкову,
Ту стежину єдину,що веде у життя.

Коли тривога на душі,
Ти все могла мені пробачить,
За все,що маю у житті
Не в змозі я тобі віддячить.
На серці радість,чи болить,
Вона радіє,тужить з нами.
Не так мелодія звучит,
Коли немає поруч мами!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8196910_l1','pisniua_8196910','YouTube','https://www.youtube.com/watch?v=XL2yTqHq8dM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8205611';
DELETE FROM song_versions WHERE song_id = 'pisniua_8205611';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8205611';
DELETE FROM songs WHERE id = 'pisniua_8205611';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8205611','Карнавал','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Збірка дитячих пісень',NULL,'Новорічне свято кличе нас,
Казка розпочнеться у цей час.
Завітали гості у наш зал
На веселий дружній карнавал!

Приспів:
Тож запрошуєм, запрошуєм
Усіх на карнавал!
Ми запрошуєм, запрошуєм
На святковий карнавал!

Всі костюми гарні у малят,
Не впізнати хлопчиків, дівчат.
І здається, що до нас прийшли
Із казок герої чарівні!

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8205611'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8205611','Карнавал','Новорічне свято кличе нас,
Казка розпочнеться у цей час.
Завітали гості у наш зал
На веселий дружній карнавал!

Приспів:
Тож запрошуєм, запрошуєм
Усіх на карнавал!
Ми запрошуєм, запрошуєм
На святковий карнавал!

Всі костюми гарні у малят,
Не впізнати хлопчиків, дівчат.
І здається, що до нас прийшли
Із казок герої чарівні!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8205611_l1','pisniua_8205611','YouTube','https://www.youtube.com/watch?v=3D0922QeNqM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8205611_l2','pisniua_8205611','YouTube','https://www.youtube.com/watch?v=_Ojumrx0Nn0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8198116';
DELETE FROM song_versions WHERE song_id = 'pisniua_8198116';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8198116';
DELETE FROM songs WHERE id = 'pisniua_8198116';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8198116','Мамочко моя','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У моєї мами очі, наче зорі,
У моєї мами руки золоті.
Ніжно поцілую, квіти подарую,
Бо вона - найкраща у житті!

Приспів:
Мамо, мамочко моя,       |
Не сумуй і не журись,    |
Обертається земля,       |
Я з тобою - посміхнись!  | (2)

У моєї мами серце лебедине,
У моєї мами руки - два крила,
Ніжно поцілую, квіти подарую,
І слова любові, вдячності, тепла!

Приспів. (2)

Мамо, мамочко моя,       |
Не сумуй і не журись,    |
Обертається земля,       |
Ми з тобою - посміхнись! | (2)','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8198116'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8198116','Мамочко моя','У моєї мами очі, наче зорі,
У моєї мами руки золоті.
Ніжно поцілую, квіти подарую,
Бо вона - найкраща у житті!

Приспів:
Мамо, мамочко моя,       |
Не сумуй і не журись,    |
Обертається земля,       |
Я з тобою - посміхнись!  | (2)

У моєї мами серце лебедине,
У моєї мами руки - два крила,
Ніжно поцілую, квіти подарую,
І слова любові, вдячності, тепла!

Приспів. (2)

Мамо, мамочко моя,       |
Не сумуй і не журись,    |
Обертається земля,       |
Ми з тобою - посміхнись! | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8198116_l1','pisniua_8198116','YouTube','https://www.youtube.com/watch?v=X6H4DjIxkI8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8198116_l2','pisniua_8198116','YouTube','https://www.youtube.com/watch?v=whxHsJEPCPo','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8207256';
DELETE FROM song_versions WHERE song_id = 'pisniua_8207256';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8207256';
DELETE FROM songs WHERE id = 'pisniua_8207256';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8207256','Веди нас, Маріє, веди','Музика: Зеновія Яропуд Слова: церковний піснеспів','uk','ukraine_1991',NULL,NULL,'збірка церковних пісень',NULL,'Прославимо Маму,
Що кличе до Храму:
Ходи, мій народе, ходи!
До вічного Бога
Одна лиш дорога,
Веди нас, Маріє, веди!    | (2)

Стрічаємо сина -
Врочиста хвилина,
Зачерпнемо в Нього води.
Ми прагнемо Бога,
Бо з Ним - перемога,
Веди нас, Маріє, веди!    | (2)

Де Мати єдина -
Щаслива родина,
Зростають любові плоди.
Ми знаєм: без Бога
Людина убога,
Веди нас, Маріє, веди!    | (2)

Де Мати-Цариця -
Жита і пшениця,
Лиш віру у серці збуди.
Крім Господа Бога,
Нема в нас нікого,
Веди нас, Маріє, веди!    | (2)

Ми будем стояти При Тобі,
О, Мати,
Хай множаться наші ряди.
Без нашого Бога -
Ні крок до порога.
Ти з нами, Маріє, завжди! | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''Церковні пісні'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8207256'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8207256','Веди нас, Маріє, веди','Прославимо Маму,
Що кличе до Храму:
Ходи, мій народе, ходи!
До вічного Бога
Одна лиш дорога,
Веди нас, Маріє, веди!    | (2)

Стрічаємо сина -
Врочиста хвилина,
Зачерпнемо в Нього води.
Ми прагнемо Бога,
Бо з Ним - перемога,
Веди нас, Маріє, веди!    | (2)

Де Мати єдина -
Щаслива родина,
Зростають любові плоди.
Ми знаєм: без Бога
Людина убога,
Веди нас, Маріє, веди!    | (2)

Де Мати-Цариця -
Жита і пшениця,
Лиш віру у серці збуди.
Крім Господа Бога,
Нема в нас нікого,
Веди нас, Маріє, веди!    | (2)

Ми будем стояти При Тобі,
О, Мати,
Хай множаться наші ряди.
Без нашого Бога -
Ні крок до порога.
Ти з нами, Маріє, завжди! | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8207256_l1','pisniua_8207256','YouTube','https://www.youtube.com/watch?v=_cwhC68yDYE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_820676';
DELETE FROM song_versions WHERE song_id = 'pisniua_820676';
DELETE FROM songs_fts WHERE song_id = 'pisniua_820676';
DELETE FROM songs WHERE id = 'pisniua_820676';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_820676','Мав я раз дівчиноньку','Музика: Роман Купчинський Слова: Роман Купчинський. Виконує: Акорд, Дмитро Гнатюк, Русичі, Подільські музики','uk','ukrainian_peoples_republic_1917_1921',NULL,'1918','1. заспіваймо собі. Пісенник.Видавництво "Закарпаття". Ужгород-2001, ст. 121 2. Стрілецькі пісні Романа Купчинського "Як з бережан да кадри", упор В.Подуфалий, Тернопіль. 1990 р.','написано у Грузькім на Херсонщині в 1918 році у вишколі УСС','Мав я раз дівчиноньку, чепурненьку,
Любу щебетушечку, рум''яненьку,
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Посилав я старостів у неділю,
Думав, погуляємо на весіллю.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Мaли повернутися з рушниками,
Але повернулися з гарбузами.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Всьому супротився батько рідний,
Бо вона багатая, а я бідний.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Думав я втопитися з тої злості,
Та вода холодная, ломить кості.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Думав я застрілитись із рушниці,
Порох був замочений в порошниці.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Щоби врятуватися від спокуси,
Пішов записався я в усусуси.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Вже про галичаночку не думаю,
Бо на Надніпрянщині десять маю.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.','[''pisni.org.ua'', ''cat:dances'', ''cat:polky'', ''cat:strilecki'', ''cat:zhartivlyvi'', ''Пісні до танцю'', ''Польки'', ''Стрілецькі пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_820676'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_820676','Мав я раз дівчиноньку','Мав я раз дівчиноньку, чепурненьку,
Любу щебетушечку, рум''яненьку,
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Посилав я старостів у неділю,
Думав, погуляємо на весіллю.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Мaли повернутися з рушниками,
Але повернулися з гарбузами.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Всьому супротився батько рідний,
Бо вона багатая, а я бідний.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Думав я втопитися з тої злості,
Та вода холодная, ломить кості.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Думав я застрілитись із рушниці,
Порох був замочений в порошниці.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Щоби врятуватися від спокуси,
Пішов записався я в усусуси.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.

Вже про галичаночку не думаю,
Бо на Надніпрянщині десять маю.
Гей! Гей! Га! Уха-ха!
Дівчино, рибчино, молода.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_820676_l1','pisniua_820676','YouTube','https://www.youtube.com/watch?v=M1PmdVLpxH4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8205450';
DELETE FROM song_versions WHERE song_id = 'pisniua_8205450';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8205450';
DELETE FROM songs WHERE id = 'pisniua_8205450';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8205450','Тінь Сонця','Музика: Іван Лузан Слова: Іван Лузан. Виконує: Тінь сонця','uk','ukraine_1991',NULL,NULL,'http://jooov.net/text/2471218/tn_sontsya-tn_sontsya_najivopraym2010.htmls',NULL,'Вниз, усе тікає вниз,
Світ куряву здійняв
І Сонце заховав
Пил.

Спис, я маю гострий спис,
Ти маєш древній спис,
Ми рушимо з останніх
Сил.

Час, він грає проти нас,
Ковтає дні і роки,
Прямують його кроки
В кров.

Нас обличчям у багно
Збивали вже не раз
І все ж ми встали
Знов!

Міць в руці,
На лиці - тінь Сонця,
Вирушаємо здобути те,
Що наше!

Зліва голосно лунає
Танець Серця,
Злива землю поливає,
День вернеться!','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8205450'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8205450','Тінь Сонця','Вниз, усе тікає вниз,
Світ куряву здійняв
І Сонце заховав
Пил.

Спис, я маю гострий спис,
Ти маєш древній спис,
Ми рушимо з останніх
Сил.

Час, він грає проти нас,
Ковтає дні і роки,
Прямують його кроки
В кров.

Нас обличчям у багно
Збивали вже не раз
І все ж ми встали
Знов!

Міць в руці,
На лиці - тінь Сонця,
Вирушаємо здобути те,
Що наше!

Зліва голосно лунає
Танець Серця,
Злива землю поливає,
День вернеться!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8205450_l1','pisniua_8205450','YouTube','https://www.youtube.com/watch?v=2l2OtPEU_aM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_82070';
DELETE FROM song_versions WHERE song_id = 'pisniua_82070';
DELETE FROM songs_fts WHERE song_id = 'pisniua_82070';
DELETE FROM songs WHERE id = 'pisniua_82070';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_82070','Ой чорна я си чорна','Українська народна пісня. Виконує: Ольга Кашул, Дмитро Хома, Василь Зінкевич, Ауріка Ротару','uk','ukraine_before_1917',NULL,NULL,'Співаник для таборів Марійської Дружини',NULL,'Ой чорна я си чорна,
Чорнява як циганка.
B
Чом си полюбила,
F
Чом си полюбила,
Чорнявого Іванка.
Іванка та й Іванка,
Іванка та не дурня.
Якби м го не збудила,   | (2)
То спав би до полудня.
Іванка та й Іванка,
Сорочка вишиванка,
Високий та стрункий,    | (2)
Ще й на бороді ямка.
Марусю ти Марусю,
Люблю я твою вроду.
Люблю дивитися,         | (2)
Як ти ідеш по воду.
Як ти ідеш по воду,
Вертаєшся з водою,
Люблю дивитися,         | (2)
Марусю за тобою.
У лісі два дубочки,
Обидва зелененькі.
Ми такі паровані,       | (2)
Обоє чорнявенькі.
Поїхав та й поїхав,
Маруся заридала.
Іванкові призналась,    | (2)
Що вона його кохала','[''pisni.org.ua'', ''cat:dances'', ''cat:polky'', ''Пісні до танцю'', ''Польки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_82070'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_82070','Ой чорна я си чорна','Ой чорна я си чорна,
Чорнява як циганка.
B
Чом си полюбила,
F
Чом си полюбила,
Чорнявого Іванка.
Іванка та й Іванка,
Іванка та не дурня.
Якби м го не збудила,   | (2)
То спав би до полудня.
Іванка та й Іванка,
Сорочка вишиванка,
Високий та стрункий,    | (2)
Ще й на бороді ямка.
Марусю ти Марусю,
Люблю я твою вроду.
Люблю дивитися,         | (2)
Як ти ідеш по воду.
Як ти ідеш по воду,
Вертаєшся з водою,
Люблю дивитися,         | (2)
Марусю за тобою.
У лісі два дубочки,
Обидва зелененькі.
Ми такі паровані,       | (2)
Обоє чорнявенькі.
Поїхав та й поїхав,
Маруся заридала.
Іванкові призналась,    | (2)
Що вона його кохала');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_82070_l1','pisniua_82070','YouTube','https://www.youtube.com/watch?v=2Lj6ezZjono','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_82070_l2','pisniua_82070','YouTube','https://www.youtube.com/watch?v=49YKv6YTx1k','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_82070_l3','pisniua_82070','YouTube','https://www.youtube.com/watch?v=oi8qQ4D8T7o','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_82070_l4','pisniua_82070','YouTube','https://www.youtube.com/watch?v=JCUIHvBhz8k','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_82070_l5','pisniua_82070','YouTube','https://www.youtube.com/watch?v=pPl_NObCO6A','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_82070_l6','pisniua_82070','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_8209817';
DELETE FROM song_versions WHERE song_id = 'pisniua_8209817';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8209817';
DELETE FROM songs WHERE id = 'pisniua_8209817';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8209817','Балада про війноньку','Музика: Андрій Мочурад, Богдан Курило Слова: Андрій Мочурад','uk','ukraine_before_1917',NULL,NULL,'відеозапис',NULL,'За рікою, попід гаєм, гаєм зелененьким,
Там орала дівчинонька воликом чорненьким.
Ой, орала, виорала та й чорнеє зілля,
А козак десь орлів кормить своїм білим тілом.

Заплакала дівчинонька, вмилася сльозами -
Як поїхав на війноньку, то й досі не має...
Притомився козаченько, приліг серед степу,
Сіроманці колом ходять, чекають бенкету.

Ой, на ту війну-війноньку, за чужого пана,
Пішов в землю цвіт козацький, не було гетьмана.
Хоруговки землю вкрили, кров почервонила -
Розтягли та на четверо тебе, ненько мила.

Одні тепер латиняни, інші - православні,
Хто не втік на Запоріжжя - взяли басурмани.
Ой, збирались воювати, здобувати волю...
Ворон кряче, поле герцю поросло травою.

Оце ж тобі м''яка постіль посеред болота,
Сорочина мережина кровію та потом.
Стоїть над ним кістлявая мовчки із косою
Та шепоче: козаченьку, ходи ізо мною...

Ходи, ходи, молоденький та побенкетуєм,
Ти тепер мій, голубочку, дай-но поцілую.
Там у полі край дороги розквітла калина -
Кровавая аж налита... - Щедрі були жнива...','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8209817'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8209817','Балада про війноньку','За рікою, попід гаєм, гаєм зелененьким,
Там орала дівчинонька воликом чорненьким.
Ой, орала, виорала та й чорнеє зілля,
А козак десь орлів кормить своїм білим тілом.

Заплакала дівчинонька, вмилася сльозами -
Як поїхав на війноньку, то й досі не має...
Притомився козаченько, приліг серед степу,
Сіроманці колом ходять, чекають бенкету.

Ой, на ту війну-війноньку, за чужого пана,
Пішов в землю цвіт козацький, не було гетьмана.
Хоруговки землю вкрили, кров почервонила -
Розтягли та на четверо тебе, ненько мила.

Одні тепер латиняни, інші - православні,
Хто не втік на Запоріжжя - взяли басурмани.
Ой, збирались воювати, здобувати волю...
Ворон кряче, поле герцю поросло травою.

Оце ж тобі м''яка постіль посеред болота,
Сорочина мережина кровію та потом.
Стоїть над ним кістлявая мовчки із косою
Та шепоче: козаченьку, ходи ізо мною...

Ходи, ходи, молоденький та побенкетуєм,
Ти тепер мій, голубочку, дай-но поцілую.
Там у полі край дороги розквітла калина -
Кровавая аж налита... - Щедрі були жнива...');
DELETE FROM song_links WHERE song_id = 'pisniua_8206373';
DELETE FROM song_versions WHERE song_id = 'pisniua_8206373';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8206373';
DELETE FROM songs WHERE id = 'pisniua_8206373';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8206373','Друзі','Музика: Леся Тельнюк Слова: Станіслав Тельнюк. Виконує: Сестри Тельнюк','uk','ukraine_1991',NULL,NULL,'http://www.telnyuk.info/',NULL,'Згадуймо про тих, що друзями були,
Думаймо, чому ми розійшлися нині.
І нехай серця щемлють від болю
Вже не повернутися у вчора,
Нам не повернутися у вчора...

А, якби можливо це було,
Ми б ніколи не втрачали друзів!
А, якби можливо це було,
Ми б навіки з ними не прощались!

Згадуймо про них, щоб біль не залишав,
Думаймо, щоб в серці не згасала мука.
Хай сонця кричать, про те, що ти мовчав
В той останній, останній час далекої розлуки,
В той останній, останній час далекої розлуки...

А, якби можливо це було,
Ми б ніколи не втрачали друзів!
А,якби можливо це було,
Ми б ніколи їх не хоронили!

Згадуймо про них, що друзями були,
Плачмо, що у вчора не вернутись...','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8206373'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8206373','Друзі','Згадуймо про тих, що друзями були,
Думаймо, чому ми розійшлися нині.
І нехай серця щемлють від болю
Вже не повернутися у вчора,
Нам не повернутися у вчора...

А, якби можливо це було,
Ми б ніколи не втрачали друзів!
А, якби можливо це було,
Ми б навіки з ними не прощались!

Згадуймо про них, щоб біль не залишав,
Думаймо, щоб в серці не згасала мука.
Хай сонця кричать, про те, що ти мовчав
В той останній, останній час далекої розлуки,
В той останній, останній час далекої розлуки...

А, якби можливо це було,
Ми б ніколи не втрачали друзів!
А,якби можливо це було,
Ми б ніколи їх не хоронили!

Згадуймо про них, що друзями були,
Плачмо, що у вчора не вернутись...');
DELETE FROM song_links WHERE song_id = 'pisniua_8212654';
DELETE FROM song_versions WHERE song_id = 'pisniua_8212654';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8212654';
DELETE FROM songs WHERE id = 'pisniua_8212654';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8212654','Бервінкова','Українська народна пісня. Виконує: Печеніжинський колектив','uk','ukraine_before_1917',NULL,NULL,'інтернет',NULL,'Де лежить бервин,
Бервинковіє,
То не папороть цвіте,
То не папороть цвіте,
Матінка вінок кладе,
Білими рученьками,
Дрібними сльозоньками,
Дрібними сльозоньками.

Слава Богу найвищому,
Шом цего діждала,
Шо я свої дитиночці
Віночок поклала,
Віночок поклала.

Ой, кувала зазуличка,
Та й на заріночку,
Подивисі, моя мамко,
Як файно в віночку,
Як файно в віночку.

Яка ж тота трава файна,
Шо ї косарь коси,
Яка ж тото дівка файна,
Шо віночок носить!

Треба коси гостренької
Травичку косити,
Треба дівки розумної
Віночок носити!','[''pisni.org.ua'', ''cat:huculski'', ''cat:vesilni'', ''Гуцульські пісні'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8212654'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8212654','Бервінкова','Де лежить бервин,
Бервинковіє,
То не папороть цвіте,
То не папороть цвіте,
Матінка вінок кладе,
Білими рученьками,
Дрібними сльозоньками,
Дрібними сльозоньками.

Слава Богу найвищому,
Шом цего діждала,
Шо я свої дитиночці
Віночок поклала,
Віночок поклала.

Ой, кувала зазуличка,
Та й на заріночку,
Подивисі, моя мамко,
Як файно в віночку,
Як файно в віночку.

Яка ж тота трава файна,
Шо ї косарь коси,
Яка ж тото дівка файна,
Шо віночок носить!

Треба коси гостренької
Травичку косити,
Треба дівки розумної
Віночок носити!');
DELETE FROM song_links WHERE song_id = 'pisniua_8205307';
DELETE FROM song_versions WHERE song_id = 'pisniua_8205307';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8205307';
DELETE FROM songs WHERE id = 'pisniua_8205307';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8205307','Бажаємо щастя всім','Музика: Валентина Кащеєва Слова: Т. Цегельнюк','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Коли над білим світом
Знов сонечко встає
І знову день нас радує усіх,
Хай збудеться бажання
І ваше, і моє,
Панує над землею мир та сміх!

Приспів:
Хай свято дитинства
Довік не скінчиться,
Бажаємо щастя всім!
Хай радістю світяться
Очі та лиця,
Бажаємо щастя всім!

За довгою зимою
Завжди прийде весна,
Прокинуться найкращі почуття.
Надію та кохання
Приносить нам вона,
Назустріч їй відкриємо серця!

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8205307'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8205307','Бажаємо щастя всім','Коли над білим світом
Знов сонечко встає
І знову день нас радує усіх,
Хай збудеться бажання
І ваше, і моє,
Панує над землею мир та сміх!

Приспів:
Хай свято дитинства
Довік не скінчиться,
Бажаємо щастя всім!
Хай радістю світяться
Очі та лиця,
Бажаємо щастя всім!

За довгою зимою
Завжди прийде весна,
Прокинуться найкращі почуття.
Надію та кохання
Приносить нам вона,
Назустріч їй відкриємо серця!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8205307_l1','pisniua_8205307','YouTube','https://www.youtube.com/watch?v=eZXqREVcQY0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8213103';
DELETE FROM song_versions WHERE song_id = 'pisniua_8213103';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8213103';
DELETE FROM songs WHERE id = 'pisniua_8213103';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8213103','Черепаха - аха-аха...','Музика: Ганна Чубач Слова: Ганна Чубач. Виконує: Зернятко','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'A
Черепаха - аха-аха
E
У воді сиділа-діла,
Черепаха - аха-аха
Свої ніжки мила-ила.
Крокодили-дили-дили
Пропливали-али-али,
Черепаху-аху
Налякали-али-али.
Черепаха - аха-аха
На піску сиділа-діла,
Черепаха - аха
Свою спинку гріла-іла.
Два удави-ави-ави
Проповзали-али-али,
Черепаху - аху
Налякали-али-али.
Черепаха - аха-аха
У траві сиділа-діла,
Черепаха - аха
Конюшинку їла-їла.
Понад нею гуси-уси
Пролітали-али-али,
Черепаху - аху
Налякали-али али.
Черепаха - аха-аха
На камінчик сіла-іла,
Черепаха - аха
Перелякано тремтіла.
Ну, а потім-отім-отім
Піднялась на крила-ила
І за хмари-ари-ари
Полетіла-іла-іла.
І маленькі діти знають:
Черепахи не літають.
А коли багато страху,
То злетить і черепаха!
Аха-аха-аха...
Грати так: Басова струна (5), 3 нижні разом, четверта.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:zhartivlyvi'', ''Дитячі пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8213103'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8213103','Черепаха - аха-аха...','A
Черепаха - аха-аха
E
У воді сиділа-діла,
Черепаха - аха-аха
Свої ніжки мила-ила.
Крокодили-дили-дили
Пропливали-али-али,
Черепаху-аху
Налякали-али-али.
Черепаха - аха-аха
На піску сиділа-діла,
Черепаха - аха
Свою спинку гріла-іла.
Два удави-ави-ави
Проповзали-али-али,
Черепаху - аху
Налякали-али-али.
Черепаха - аха-аха
У траві сиділа-діла,
Черепаха - аха
Конюшинку їла-їла.
Понад нею гуси-уси
Пролітали-али-али,
Черепаху - аху
Налякали-али али.
Черепаха - аха-аха
На камінчик сіла-іла,
Черепаха - аха
Перелякано тремтіла.
Ну, а потім-отім-отім
Піднялась на крила-ила
І за хмари-ари-ари
Полетіла-іла-іла.
І маленькі діти знають:
Черепахи не літають.
А коли багато страху,
То злетить і черепаха!
Аха-аха-аха...
Грати так: Басова струна (5), 3 нижні разом, четверта.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8213103_l1','pisniua_8213103','YouTube','https://www.youtube.com/watch?v=ILUtCaKLtdk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8213103_l2','pisniua_8213103','YouTube','https://www.youtube.com/watch?v=akPuy2pqtWo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8213103_l3','pisniua_8213103','YouTube','https://www.youtube.com/watch?v=_9-cZ9FQFQ8','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8213103_l4','pisniua_8213103','YouTube','https://www.youtube.com/watch?v=S_8BJKC0g6s','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8213103_l5','pisniua_8213103','YouTube','https://www.youtube.com/watch?v=NOn-QGHi-Cg','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8213103_l6','pisniua_8213103','http://mp3prima.com/','http://mp3prima.com/','external',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_820950';
DELETE FROM song_versions WHERE song_id = 'pisniua_820950';
DELETE FROM songs_fts WHERE song_id = 'pisniua_820950';
DELETE FROM songs WHERE id = 'pisniua_820950';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_820950','До церковці ішла, як ружа червена','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'До церковці ішла, як ружа червена,
А з церковці ішла, як трава зелена.

До церковці ішла, підковка ї хляпла,
Аж ї од серденька червена кров цяпла.

До церковці єдно, а в церковці двоє,
Радуйся, мамичко, твої обидвое.

Вийд гу нам, мамичко, з хлібом і калачом,
Бо ми ті ведемо дівку і зо зятьом.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_820950'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_820950','До церковці ішла, як ружа червена','До церковці ішла, як ружа червена,
А з церковці ішла, як трава зелена.

До церковці ішла, підковка ї хляпла,
Аж ї од серденька червена кров цяпла.

До церковці єдно, а в церковці двоє,
Радуйся, мамичко, твої обидвое.

Вийд гу нам, мамичко, з хлібом і калачом,
Бо ми ті ведемо дівку і зо зятьом.');
DELETE FROM song_links WHERE song_id = 'pisniua_8208756';
DELETE FROM song_versions WHERE song_id = 'pisniua_8208756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8208756';
DELETE FROM songs WHERE id = 'pisniua_8208756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8208756','Ой, на Івана, ой, на Купала','Музика: Людмила Лазаренко-Пасічник, Іван Пустовий Слова: Людмила Лазаренко-Пасічник. Виконує: Наталя Каськова','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, на Івана,
Ой, на Купала,
Ой, на Купала,
Там дівчинонька
Квітоньки збирала,
Квіти збирала,
У вінок сплітала,
Ой, на Івана,
Ой, на Купала.

Приспів:
Ти пливи, віночку,
Та й до берега того,
Та й до берега того,
До миленького мого,
А, якщо, мій віночку,
Не миленькому мому,
Не дістанься, віночку,
Тоді більше ніколи.

Ой, на Івана,
Ой, на Купала,
Ой, на Купала,
Там дівчинонька
Квітоньки збирала,
Квіти збирала,
У вінок сплела,
На воду кидала,
Ой, на Івана,
Ой, на Купала.

Приспів.

Речитатив:
В ніч на Івана на Купала
Дівчина цвіт папороті шукала,
В ніч на Івана на Івана Купала,
В ніч на Івана на Купала,
В ніч на Івана на Івана Купала...

Приспів.

Ой, на Івана,
Ой, на Купала,
Ой, на Купала...
Ой, на Івана,
Ой, на Купала','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8208756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8208756','Ой, на Івана, ой, на Купала','Ой, на Івана,
Ой, на Купала,
Ой, на Купала,
Там дівчинонька
Квітоньки збирала,
Квіти збирала,
У вінок сплітала,
Ой, на Івана,
Ой, на Купала.

Приспів:
Ти пливи, віночку,
Та й до берега того,
Та й до берега того,
До миленького мого,
А, якщо, мій віночку,
Не миленькому мому,
Не дістанься, віночку,
Тоді більше ніколи.

Ой, на Івана,
Ой, на Купала,
Ой, на Купала,
Там дівчинонька
Квітоньки збирала,
Квіти збирала,
У вінок сплела,
На воду кидала,
Ой, на Івана,
Ой, на Купала.

Приспів.

Речитатив:
В ніч на Івана на Купала
Дівчина цвіт папороті шукала,
В ніч на Івана на Івана Купала,
В ніч на Івана на Купала,
В ніч на Івана на Івана Купала...

Приспів.

Ой, на Івана,
Ой, на Купала,
Ой, на Купала...
Ой, на Івана,
Ой, на Купала');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8208756_l1','pisniua_8208756','YouTube','https://www.youtube.com/watch?v=DmeGyJJwekM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8205312';
DELETE FROM song_versions WHERE song_id = 'pisniua_8205312';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8205312';
DELETE FROM songs WHERE id = 'pisniua_8205312';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8205312','Прапоре Наш','Музика: Юрій Пясецький Слова: Андрій Пясецький','uk','ukr_ssr_1919_1991',NULL,'1929',NULL,'Пісня "Лісових Чортів". Постала з нагоди посвячення прапору 3. Куріня УСП "Лісові Чорти" у Львові 1929 р.','Прапоре наш, замай нам в гордій славі
І золотом та сріблом заблести,
Шляхи нові, могутні, величаві
Бурхливим полетом нам вказуй ти -

Прапоре наш, зорій нам у неволі
Вогняним сяєвом воскресних днів,
Не дай зламатись нам в тяжкій недолі
І в грудях розпали завзятті й гнів.

Прапоре наш, веди нас в бій побідний
Крізь блеск мечів, і дим, і смерть, і кров,
Аж як воскресне нарід наш свобідний,
Нехай прийме тебе під свій покров.

Прапоре наш! Багато впаде в бою,
Багато згине в тюрмах, засланнях...
Усім їм, перед смертю їх страшною
Явися ти в останніх тихих снах.

Прапоре наш! Колючий звій терновий
Сплетемо ми терпінням цим страшним...
Він зміниться тобі в вінок лавровий
Під сонцем волі світло-осяйним!','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:plastovi'', ''Гимни та марші'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8205312'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8205312','Прапоре Наш','Прапоре наш, замай нам в гордій славі
І золотом та сріблом заблести,
Шляхи нові, могутні, величаві
Бурхливим полетом нам вказуй ти -

Прапоре наш, зорій нам у неволі
Вогняним сяєвом воскресних днів,
Не дай зламатись нам в тяжкій недолі
І в грудях розпали завзятті й гнів.

Прапоре наш, веди нас в бій побідний
Крізь блеск мечів, і дим, і смерть, і кров,
Аж як воскресне нарід наш свобідний,
Нехай прийме тебе під свій покров.

Прапоре наш! Багато впаде в бою,
Багато згине в тюрмах, засланнях...
Усім їм, перед смертю їх страшною
Явися ти в останніх тихих снах.

Прапоре наш! Колючий звій терновий
Сплетемо ми терпінням цим страшним...
Він зміниться тобі в вінок лавровий
Під сонцем волі світло-осяйним!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8205312_l1','pisniua_8205312','YouTube','https://www.youtube.com/watch?v=n5UgYAJDyTE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8214312';
DELETE FROM song_versions WHERE song_id = 'pisniua_8214312';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8214312';
DELETE FROM songs WHERE id = 'pisniua_8214312';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8214312','Офіцери','Українська народна пісня. Виконує: Олександр Пономарьов','uk','ukraine_before_1917',NULL,NULL,'проект "Зірки в армії"',NULL,'П''ять кінців у зірок,
Гордо сяють вони
На нових офіцерських погонах,
І від сяйва того сліпло сонце, коли
Ми вставали в парадні колони.
І по плацу пройшли ми, карбуючи крок,
Почуттями торкаючись неба,
Твердо знаючи шлях, ми дійшли до зірок
І нам іншої долі не треба!..

Приспів:
Ми живемо в піснях, ми ідемо у бій
За вітчизну, не ради кар''єри!
І за це нагород не чекають собі
Офіцери, бойові офіцери!
І за це нагород не чекають собі
Офіцери, бойові офіцери!

Хай зірками на скроні впаде сивина,
Офіцерській не зрадимо дружбі,
Традиційно осушимо першу до дна
Ми за тих, хто сьогодні на службі!
А якщо ти до дому зі служби прийшов
І з теплом тебе в серці стрічають,
Значить другу підняти не гріх за любов,
За жінок, що завжди нас чекають!

Приспів.

Третій тост, як завжди, ми піднімим за тих,
Хто ніколи вже нам не всміхнеться,
Як сльоза забринить, наша пам''ять про них
В наших душах повік не зітреться!..

Приспів.

Офіцери, бойові офіцери!

Приспів.

Офіцери, бойові офіцери!','[''pisni.org.ua'', ''cat:viyskovi'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8214312'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8214312','Офіцери','П''ять кінців у зірок,
Гордо сяють вони
На нових офіцерських погонах,
І від сяйва того сліпло сонце, коли
Ми вставали в парадні колони.
І по плацу пройшли ми, карбуючи крок,
Почуттями торкаючись неба,
Твердо знаючи шлях, ми дійшли до зірок
І нам іншої долі не треба!..

Приспів:
Ми живемо в піснях, ми ідемо у бій
За вітчизну, не ради кар''єри!
І за це нагород не чекають собі
Офіцери, бойові офіцери!
І за це нагород не чекають собі
Офіцери, бойові офіцери!

Хай зірками на скроні впаде сивина,
Офіцерській не зрадимо дружбі,
Традиційно осушимо першу до дна
Ми за тих, хто сьогодні на службі!
А якщо ти до дому зі служби прийшов
І з теплом тебе в серці стрічають,
Значить другу підняти не гріх за любов,
За жінок, що завжди нас чекають!

Приспів.

Третій тост, як завжди, ми піднімим за тих,
Хто ніколи вже нам не всміхнеться,
Як сльоза забринить, наша пам''ять про них
В наших душах повік не зітреться!..

Приспів.

Офіцери, бойові офіцери!

Приспів.

Офіцери, бойові офіцери!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8214312_l1','pisniua_8214312','YouTube','https://www.youtube.com/watch?v=Yakycy1sYoE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8215052';
DELETE FROM song_versions WHERE song_id = 'pisniua_8215052';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8215052';
DELETE FROM songs WHERE id = 'pisniua_8215052';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8215052','Магія чисел','Музика: Семен Карпа Слова: Т. Василько','uk','ukraine_1991',NULL,NULL,'Авторське подання: Т. Василько, Семен Карпа. Достиглі яблук. Львів: Плай, 2007. - 56 с.',NULL,'Магія чисел і спрага до знань
Нас об''єднали в єдину родину,
Сповнені вірою, ми без вагань
Істин високих долаєм вершину!

Приспів:
Коледже наш! Ми ростемо
Так стрімко, гордо, тополино.
Запал сердець ми віддамо
Тобі єдиній, Батьківщино!

Формули і теореми складні
Ми осягаємо розумом світлим,
Щоб не затьмарить невіглаством дні,
Що для людини сіяють над світом!

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8215052'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8215052','Магія чисел','Магія чисел і спрага до знань
Нас об''єднали в єдину родину,
Сповнені вірою, ми без вагань
Істин високих долаєм вершину!

Приспів:
Коледже наш! Ми ростемо
Так стрімко, гордо, тополино.
Запал сердець ми віддамо
Тобі єдиній, Батьківщино!

Формули і теореми складні
Ми осягаємо розумом світлим,
Щоб не затьмарить невіглаством дні,
Що для людини сіяють над світом!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_8212373';
DELETE FROM song_versions WHERE song_id = 'pisniua_8212373';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8212373';
DELETE FROM songs WHERE id = 'pisniua_8212373';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8212373','Учнівські частівки','Музика: Семен Карпа Слова: Т. Василько','uk','ukraine_before_1917',NULL,NULL,'Авторське подання. Т. Василько, Семен Карпа. Достиглі яблука. Львів: Плай, 2007. - 56 с.',NULL,'На уроках співів
Співали частівок -
Вчителі їх як почули,
Про уроки геть забули. Гей!

Приспів:
Гей, гоп-клас!
Два уроки у нас,
Третій - фізкультура,
Щоб була фігура!

Що весною знали,
Восени забули -
Бузьки в ірій відлітали
І туди знання забрали. Гей!

Приспів.

Як прийшли до класу,
Дві Європи зразу
Ми побачили на мапі,
Мапували яку мавпи. Гей!

Приспів.

Ми вивчали глобус -
Синій, як автобус,
Як про нього все узнали,
Очі глобусами стали. Гей!

Приспів.

Історичні дати,
Звісно, треба знати,
А ми вчителя не чуєм -
Досі з німцями воюєм. Гей!

Приспів.

Нам диктант читали,
Голови чесали,
Завелася в них солома -
Ми ручки забули вдома. Гей!

Приспів.

Фізику вивчаєм,
Всі закони знаєм -
Перевірили Ньютона -
Лікар каже: "Гематома". Гей!

Приспів.

А одного разу
Рахували "КРАЗи",
Як уміли рахували,
А одного таки вкрали. Гей!

Приспів.

Нам ще на додачу
Задали задачу,
Що робити, ми не знали -
Ту задачу зав''язали. Гей!

Приспів.

Як дійде до квітня,
То розквітнуть квіти -
Цього, звісно, ми не знали,
Нам біологи сказали. Гей!

Приспів.

На уроці праці
Влаштували танці -
Ми ногами працювали так,
Що туфлі всі порвали. Гей!

Приспів.

Хемію ми вчили,
Щось таке долили -
Кабінету вже немає -
Хемік плитку викладає. Гей!

Приспів.

А на малюванні
Сидимо у ванні,
Аби виконати норму
І не випачкати форму. Гей!

Приспів.

Репетитор каже,
Що усе розкаже -
Бо то конче треба знати,
В  школі як репетувати. Гей!

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8212373'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8212373','Учнівські частівки','На уроках співів
Співали частівок -
Вчителі їх як почули,
Про уроки геть забули. Гей!

Приспів:
Гей, гоп-клас!
Два уроки у нас,
Третій - фізкультура,
Щоб була фігура!

Що весною знали,
Восени забули -
Бузьки в ірій відлітали
І туди знання забрали. Гей!

Приспів.

Як прийшли до класу,
Дві Європи зразу
Ми побачили на мапі,
Мапували яку мавпи. Гей!

Приспів.

Ми вивчали глобус -
Синій, як автобус,
Як про нього все узнали,
Очі глобусами стали. Гей!

Приспів.

Історичні дати,
Звісно, треба знати,
А ми вчителя не чуєм -
Досі з німцями воюєм. Гей!

Приспів.

Нам диктант читали,
Голови чесали,
Завелася в них солома -
Ми ручки забули вдома. Гей!

Приспів.

Фізику вивчаєм,
Всі закони знаєм -
Перевірили Ньютона -
Лікар каже: "Гематома". Гей!

Приспів.

А одного разу
Рахували "КРАЗи",
Як уміли рахували,
А одного таки вкрали. Гей!

Приспів.

Нам ще на додачу
Задали задачу,
Що робити, ми не знали -
Ту задачу зав''язали. Гей!

Приспів.

Як дійде до квітня,
То розквітнуть квіти -
Цього, звісно, ми не знали,
Нам біологи сказали. Гей!

Приспів.

На уроці праці
Влаштували танці -
Ми ногами працювали так,
Що туфлі всі порвали. Гей!

Приспів.

Хемію ми вчили,
Щось таке долили -
Кабінету вже немає -
Хемік плитку викладає. Гей!

Приспів.

А на малюванні
Сидимо у ванні,
Аби виконати норму
І не випачкати форму. Гей!

Приспів.

Репетитор каже,
Що усе розкаже -
Бо то конче треба знати,
В  школі як репетувати. Гей!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_8205603';
DELETE FROM song_versions WHERE song_id = 'pisniua_8205603';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8205603';
DELETE FROM songs WHERE id = 'pisniua_8205603';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8205603','Новий Рік!','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Збірка дитячих пісень',NULL,'Прощавай, наш друже, Старий рік!
Вже майбутнє кличе нас усіх.
Час іде, неначе мандрівник,            |
Зустрічаймо, друзі, Новий рік!         | (2)

Приспів:
Новий рік, Новий рік
Зустрічаймо Новий рік!
Хай лунає пісня миру і добра!
Новий рік, Новий рік,
Хай приносить Новий рік                |
В кожне серце вогник ніжності й тепла! | (2)

В кожен дім приносить Новий рік
Світло, мрію у життя нове,
Де лиш є надія і любов,                |
Що зігріє серденько твоє!              | (2)

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8205603'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8205603','Новий Рік!','Прощавай, наш друже, Старий рік!
Вже майбутнє кличе нас усіх.
Час іде, неначе мандрівник,            |
Зустрічаймо, друзі, Новий рік!         | (2)

Приспів:
Новий рік, Новий рік
Зустрічаймо Новий рік!
Хай лунає пісня миру і добра!
Новий рік, Новий рік,
Хай приносить Новий рік                |
В кожне серце вогник ніжності й тепла! | (2)

В кожен дім приносить Новий рік
Світло, мрію у життя нове,
Де лиш є надія і любов,                |
Що зігріє серденько твоє!              | (2)

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_8211909';
DELETE FROM song_versions WHERE song_id = 'pisniua_8211909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8211909';
DELETE FROM songs WHERE id = 'pisniua_8211909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8211909','Весільний рушник','Українська народна пісня. Виконує: Ярослав Борута, Галина Борута','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Нам рушник весільний мати простелила,
На подружнє щастя нас благословила.
Польові ромашки друзі дарували,     |
Музика весела цілу ніч лунала.      | (2)

І рушник весільний - білі голуби -
Дякую, матусю, я за них тобі.
За безсонні ночі, за тепло душі     |
Я вклонитись хочу, рідна, до землі! | (2)

Той рушник на щастя мати відшивала,
Голуб''ята білі на нім танцювали.
Хай він наші долі навік поєднає     |
І дорогу світлу радістю квітчає!    | (2)

Нам рушник весільний мати простелила,
На подружнє щастя нас благословила!
Голуб і голубка ніжно воркотали,    |
Берегти кохання наше обіцяли!       | (3)','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8211909'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8211909','Весільний рушник','Нам рушник весільний мати простелила,
На подружнє щастя нас благословила.
Польові ромашки друзі дарували,     |
Музика весела цілу ніч лунала.      | (2)

І рушник весільний - білі голуби -
Дякую, матусю, я за них тобі.
За безсонні ночі, за тепло душі     |
Я вклонитись хочу, рідна, до землі! | (2)

Той рушник на щастя мати відшивала,
Голуб''ята білі на нім танцювали.
Хай він наші долі навік поєднає     |
І дорогу світлу радістю квітчає!    | (2)

Нам рушник весільний мати простелила,
На подружнє щастя нас благословила!
Голуб і голубка ніжно воркотали,    |
Берегти кохання наше обіцяли!       | (3)');
DELETE FROM song_links WHERE song_id = 'pisniua_8217171';
DELETE FROM song_versions WHERE song_id = 'pisniua_8217171';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8217171';
DELETE FROM songs WHERE id = 'pisniua_8217171';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8217171','Гей, по синьому морю','Українська народна пісня. Виконує: Андрій Бобир','uk','ukraine_before_1917',NULL,NULL,'http://uk.wikisource.org/wiki/%D0%93%D0%B5%D0%B9,_%D0%BF%D0%BE_%D1%81%D0%B8%D0%BD%D1%8C%D0%BE%D0%BC%',NULL,'Гей, по синьому морю
Хвиля грає,
Там турецький корабельчик |
Розбиває.                 | (2)

Там турецький корабельник
Розбиває,
Сорок тисяч козаченьків   |
Визволяє.                 | (2)

Сорок тисяч і чотири
З України,
Вертаються з неволеньки   |
До родини.                | (2)

Посідали вони собі
Край могили,
Люльки собі закурили      |
Та й поплили.             | (2)','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8217171'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8217171','Гей, по синьому морю','Гей, по синьому морю
Хвиля грає,
Там турецький корабельчик |
Розбиває.                 | (2)

Там турецький корабельник
Розбиває,
Сорок тисяч козаченьків   |
Визволяє.                 | (2)

Сорок тисяч і чотири
З України,
Вертаються з неволеньки   |
До родини.                | (2)

Посідали вони собі
Край могили,
Люльки собі закурили      |
Та й поплили.             | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8217171_l1','pisniua_8217171','YouTube','https://www.youtube.com/watch?v=aRPdGvo7epA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8217171_l2','pisniua_8217171','YouTube','https://www.youtube.com/watch?v=qQPseFqEKzM','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8217171_l3','pisniua_8217171','YouTube','https://www.youtube.com/watch?v=oDAN6k7Vhag','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8217171_l4','pisniua_8217171','YouTube','https://www.youtube.com/watch?v=rEUWUNy1v-A','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8217171_l5','pisniua_8217171','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_8210116';
DELETE FROM song_versions WHERE song_id = 'pisniua_8210116';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8210116';
DELETE FROM songs WHERE id = 'pisniua_8210116';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8210116','Де ж тая слава?','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,NULL,'Де ж тая слава, слава кривава,
Де ж тії стрільці, славні козаки?
Все ляхи забрали, все поруйнували,
А ми, народ - нужденні жебраки.

Які ж погані польські улани:
Били по селах невинних селян,
Копали ногами, били нагаями -
Колись, колись підете ви за Сян.

Ти зруйнував нас, ти сплюндрував нас,
Де були школи, там заклав тюрми,
Нашими кістками гатив греблі та ми
Невже, невже, невже не люди ми?..

Хочемо волі, кращої долі,
Хочемо вільно розвивати світ!
Хочемо просвіти, хочемо летіти,
Як птах, як птах, як птах в далекий світ!

Гей, же, до бою, до бою, браття, за волю!
З ворогом лютим час робити лад!
Вже ревуть гармати! Схаменися, кате,
Віддай, віддай, віддай Вкраїну нам назад!','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8210116'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8210116','Де ж тая слава?','Де ж тая слава, слава кривава,
Де ж тії стрільці, славні козаки?
Все ляхи забрали, все поруйнували,
А ми, народ - нужденні жебраки.

Які ж погані польські улани:
Били по селах невинних селян,
Копали ногами, били нагаями -
Колись, колись підете ви за Сян.

Ти зруйнував нас, ти сплюндрував нас,
Де були школи, там заклав тюрми,
Нашими кістками гатив греблі та ми
Невже, невже, невже не люди ми?..

Хочемо волі, кращої долі,
Хочемо вільно розвивати світ!
Хочемо просвіти, хочемо летіти,
Як птах, як птах, як птах в далекий світ!

Гей, же, до бою, до бою, браття, за волю!
З ворогом лютим час робити лад!
Вже ревуть гармати! Схаменися, кате,
Віддай, віддай, віддай Вкраїну нам назад!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8210116_l1','pisniua_8210116','YouTube','https://www.youtube.com/watch?v=c9Q3QU4XPm4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8210103';
DELETE FROM song_versions WHERE song_id = 'pisniua_8210103';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8210103';
DELETE FROM songs WHERE id = 'pisniua_8210103';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8210103','Два крила','Музика: Галина Якимчук Слова: Галина Якимчук. Виконує: Тетяна Шпак, Ірина Наюк','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Злітали ми вгору на татових дужих руках,
А мамині очі дивилися ніжно і мило
І серденько билось, мов зляканий птах,
І ручки тягнулись до сонця сміливо!

Приспів:
Ви, любі, у мене немов два крила,
Що птаха тримають в небесній блакиті.
Мені ви потрібні, як небо й земля,
Дорожчих немає за вас в цілім світі!

Ви, мамо - краплинка моєї святої душі,
Ви, тато - частиночка серденька мого!
Ви вчили мене крок за кроком ступать,
Пустили мене на життєву дорогу.

Приспів. (2)','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8210103'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8210103','Два крила','Злітали ми вгору на татових дужих руках,
А мамині очі дивилися ніжно і мило
І серденько билось, мов зляканий птах,
І ручки тягнулись до сонця сміливо!

Приспів:
Ви, любі, у мене немов два крила,
Що птаха тримають в небесній блакиті.
Мені ви потрібні, як небо й земля,
Дорожчих немає за вас в цілім світі!

Ви, мамо - краплинка моєї святої душі,
Ви, тато - частиночка серденька мого!
Ви вчили мене крок за кроком ступать,
Пустили мене на життєву дорогу.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8210103_l1','pisniua_8210103','YouTube','https://www.youtube.com/watch?v=J3TGnFIfDPk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8218358';
DELETE FROM song_versions WHERE song_id = 'pisniua_8218358';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8218358';
DELETE FROM songs WHERE id = 'pisniua_8218358';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8218358','Народивсь Христос','Музика: Євген Заставний Слова: Т. Василько','uk','ukraine_1991',NULL,NULL,'Авторське подання: Т. Василько, Є. Заставний. Клавішами весен. Львів: Ініціатива, 2011. - 56 с.',NULL,'За Дніпром, Дунаєм,
Та й за Чорним морем
Зірка ясна, величава -
Христос Народився!
Українська мати
Ніченьку не спала,
Видивляла Сина Бога,
Христа видивляла!

Приспів:
Народивсь Христос - утішаймось!
Народивсь Христос - величаймо!
Народивсь Христос, Народивсь Христос -
Прославляймо!

Пронеслися бурі
І шторми жорстокі,
Брату брат вклонився гоже -
Христос Народився!
Над землею дзвони,
Коляда весела;
Славлять Сина - Сина Бога
У містах і селах!

Приспів.','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8218358'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8218358','Народивсь Христос','За Дніпром, Дунаєм,
Та й за Чорним морем
Зірка ясна, величава -
Христос Народився!
Українська мати
Ніченьку не спала,
Видивляла Сина Бога,
Христа видивляла!

Приспів:
Народивсь Христос - утішаймось!
Народивсь Христос - величаймо!
Народивсь Христос, Народивсь Христос -
Прославляймо!

Пронеслися бурі
І шторми жорстокі,
Брату брат вклонився гоже -
Христос Народився!
Над землею дзвони,
Коляда весела;
Славлять Сина - Сина Бога
У містах і селах!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_8211171';
DELETE FROM song_versions WHERE song_id = 'pisniua_8211171';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8211171';
DELETE FROM songs WHERE id = 'pisniua_8211171';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8211171','Кружляє біла заметіль','Музика: Іван Пустовий Слова: Іван Пустовий. Виконує: Сергій Гутовський','uk','ukraine_1991',NULL,NULL,'авторська пісня',NULL,'Кружляє біла заметіль,
Кружляє біла заметіль,
Сердита віхола гуде...
Погляньте, в кожному вікні
Ялинок світяться вогні,
До нас веселе свято йде!
До нас веселе свято йде!

Приспів:
Новий рік, Новий рік,
Ти прийди на поріг
І здійсни заповітні мрії!
Новий рік, Новий рік,
Кращим будь, ніж торік,
Ти зроби нас щасливими всіх!
Новий рік!

Годинник вже дванадцять б''є,
То ж повні келихи наллєм,
Піднімемо за Новий рік!
Щоби загадане збулось,
Щоби нам весело жилось
Сьогодні, завтра і весь вік!
Сьогодні, завтра і весь вік!

Приспів','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8211171'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8211171','Кружляє біла заметіль','Кружляє біла заметіль,
Кружляє біла заметіль,
Сердита віхола гуде...
Погляньте, в кожному вікні
Ялинок світяться вогні,
До нас веселе свято йде!
До нас веселе свято йде!

Приспів:
Новий рік, Новий рік,
Ти прийди на поріг
І здійсни заповітні мрії!
Новий рік, Новий рік,
Кращим будь, ніж торік,
Ти зроби нас щасливими всіх!
Новий рік!

Годинник вже дванадцять б''є,
То ж повні келихи наллєм,
Піднімемо за Новий рік!
Щоби загадане збулось,
Щоби нам весело жилось
Сьогодні, завтра і весь вік!
Сьогодні, завтра і весь вік!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_821409';
DELETE FROM song_versions WHERE song_id = 'pisniua_821409';
DELETE FROM songs_fts WHERE song_id = 'pisniua_821409';
DELETE FROM songs WHERE id = 'pisniua_821409';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_821409','Через наше село','(Через наше село та й летіло помело). Українська народна пісня. Виконує: Вогневир','uk','ukraine_before_1917',NULL,NULL,'Ой на Івана та й на Купайла...- Львів: Студентське братство ЛНУ ім.І.Франка, 2002',NULL,'Через наше село
та й летіло помело.
Стовпом дим, стовпом дим!

Сіло спочивати
на Івана хаті.
Стовпом дим, стовпом дим!

Іванова голова
зайнялася була,
та й горить, та й горить!

А Марена з радощами
носить воду пригорщами,
та й гасить, та й гасить.

Що залиє, то й займеться,
то Марена засміється.
Стовпом дим, стовпом дим!','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_821409'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_821409','Через наше село','Через наше село
та й летіло помело.
Стовпом дим, стовпом дим!

Сіло спочивати
на Івана хаті.
Стовпом дим, стовпом дим!

Іванова голова
зайнялася була,
та й горить, та й горить!

А Марена з радощами
носить воду пригорщами,
та й гасить, та й гасить.

Що залиє, то й займеться,
то Марена засміється.
Стовпом дим, стовпом дим!');
DELETE FROM song_links WHERE song_id = 'pisniua_8217603';
DELETE FROM song_versions WHERE song_id = 'pisniua_8217603';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8217603';
DELETE FROM songs WHERE id = 'pisniua_8217603';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8217603','Дзвінок перший, дзвінок останній','Музика: Василь Григорук Слова: Нестор Мартинець. Виконує: Юрій Яремчук','uk','ukraine_1991',NULL,NULL,'Василь Григорук',NULL,'Дзвінок перший, дзвінок останній,
А між ними життя частина,
Проводжаєм в дорогу дальню,
А хто донечку, а хто сина,
Проводжаєм у час бурхливий,
Де Вкраїна встає на ноги,
Будьте, діти, усі щасливі,
Будьте завжди у серці з Богом!

Приспів:
Пам''ятайте свою хатину
І село, що у квіти вбралось,
Про матусю свою єдину,
Що сльозами не раз вмивалась.
Пам''ятайте й про рідную школу,
Перша вчителька в ній, як мати,
Що навчила вас колискову,
Всіх любити і всім прощати!

Пам''ятайте ви про вчителів,
А вони всі звичайно різні,
Бо без них ви, як вірш без слів,
А без слів не напишеш пісні,
Ви ідете у світ широкий,
Де чуже все для вас до болю,
Хай вам Бог дасть щасливі роки
І в майбутнім прекрасну долю.

Приспів.

Не жалійте себе для справи,
Де за честь Батьківщини йдеться,
Для людей живіть, не для слави,
Знайте: слава колись минеться,
А от пам''ять людська не згине,
Бо вона, як народна пісня,
Що по світу усьому лине,
Що співають віками й після.

Приспів','[''pisni.org.ua'', ''cat:devoted'', ''cat:krasa-pryrody'', ''cat:pro-batkiv'', ''cat:pro-ditey'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні про красу природи'', ''Пісні про любов до батьків'', ''Пісні про любов до дітей'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8217603'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8217603','Дзвінок перший, дзвінок останній','Дзвінок перший, дзвінок останній,
А між ними життя частина,
Проводжаєм в дорогу дальню,
А хто донечку, а хто сина,
Проводжаєм у час бурхливий,
Де Вкраїна встає на ноги,
Будьте, діти, усі щасливі,
Будьте завжди у серці з Богом!

Приспів:
Пам''ятайте свою хатину
І село, що у квіти вбралось,
Про матусю свою єдину,
Що сльозами не раз вмивалась.
Пам''ятайте й про рідную школу,
Перша вчителька в ній, як мати,
Що навчила вас колискову,
Всіх любити і всім прощати!

Пам''ятайте ви про вчителів,
А вони всі звичайно різні,
Бо без них ви, як вірш без слів,
А без слів не напишеш пісні,
Ви ідете у світ широкий,
Де чуже все для вас до болю,
Хай вам Бог дасть щасливі роки
І в майбутнім прекрасну долю.

Приспів.

Не жалійте себе для справи,
Де за честь Батьківщини йдеться,
Для людей живіть, не для слави,
Знайте: слава колись минеться,
А от пам''ять людська не згине,
Бо вона, як народна пісня,
Що по світу усьому лине,
Що співають віками й після.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_8219878';
DELETE FROM song_versions WHERE song_id = 'pisniua_8219878';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8219878';
DELETE FROM songs WHERE id = 'pisniua_8219878';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8219878','Другові','Музика: Володимир Гамера Слова: Вадим Ковтун. Виконує: Микола Свидюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Коли настане листопад,
Останнє листя зронить сад,
І вітер у безсонну ніч
Навіє тугу,
Неначе з глибини ріки
Спливуть із пам''яті роки,
Я пригадаю залюбки
Старого друга.

Приспів:
Друг - моя розрада,
Друг - моя опора,
Ділим з другом навпіл ми
Втіху й горе.
Вірний друг не зрадить -
Я це добре знаю,
У годину нелегку виручає!

Повіє трепетним теплом,
Коли зберемось за столом
І кануть в келиху вина
Усі турботи.
Згадаємо учителів,
Шкільних своїх товаришів,
Гортаючи без зайвих слів
Пожовклі фото.

Приспів.

Нема для дружби перепон,
Прохання друга - то закон,
Не роз''єднає доля нас
На перехресті.
За друга тихо молюсь,
Останнім хлібом поділюсь,
Підставить другові плече -
То справа честі!

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8219878'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8219878','Другові','Коли настане листопад,
Останнє листя зронить сад,
І вітер у безсонну ніч
Навіє тугу,
Неначе з глибини ріки
Спливуть із пам''яті роки,
Я пригадаю залюбки
Старого друга.

Приспів:
Друг - моя розрада,
Друг - моя опора,
Ділим з другом навпіл ми
Втіху й горе.
Вірний друг не зрадить -
Я це добре знаю,
У годину нелегку виручає!

Повіє трепетним теплом,
Коли зберемось за столом
І кануть в келиху вина
Усі турботи.
Згадаємо учителів,
Шкільних своїх товаришів,
Гортаючи без зайвих слів
Пожовклі фото.

Приспів.

Нема для дружби перепон,
Прохання друга - то закон,
Не роз''єднає доля нас
На перехресті.
За друга тихо молюсь,
Останнім хлібом поділюсь,
Підставить другові плече -
То справа честі!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8219878_l1','pisniua_8219878','YouTube','https://www.youtube.com/watch?v=Xgy_UNkGeyM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8218950';
DELETE FROM song_versions WHERE song_id = 'pisniua_8218950';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8218950';
DELETE FROM songs WHERE id = 'pisniua_8218950';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8218950','Батьку мій, лебедю білий','Музика: Олександра Стадник Слова: Володимир Грибенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сиві лежать заметілі
Снігом в волоссі твоїм,
Батьку мій, лебедю білий,
Сум не пускай на поріг,
Батьку,
Батьку мій, лебедю білий,
Сум, сум не пускай на поріг.

Весни давно відшуміли.
Скільки на серці лягло?
Скроні твої посивіли,
Мов лебедине крило.
Батьку,
Скроні твої посивіли,
Мов лебедине крило.

Батьку мій, лебедю білий,
Ось вона - вічності суть,
Десь лебедята на крилах
Знов твою юність несуть.
Батьку,
Десь лебедята на крилах
Знов твою юність несуть!','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8218950'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8218950','Батьку мій, лебедю білий','Сиві лежать заметілі
Снігом в волоссі твоїм,
Батьку мій, лебедю білий,
Сум не пускай на поріг,
Батьку,
Батьку мій, лебедю білий,
Сум, сум не пускай на поріг.

Весни давно відшуміли.
Скільки на серці лягло?
Скроні твої посивіли,
Мов лебедине крило.
Батьку,
Скроні твої посивіли,
Мов лебедине крило.

Батьку мій, лебедю білий,
Ось вона - вічності суть,
Десь лебедята на крилах
Знов твою юність несуть.
Батьку,
Десь лебедята на крилах
Знов твою юність несуть!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8218950_l1','pisniua_8218950','YouTube','https://www.youtube.com/watch?v=Uf_Ib-fK52M','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8221654';
DELETE FROM song_versions WHERE song_id = 'pisniua_8221654';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8221654';
DELETE FROM songs WHERE id = 'pisniua_8221654';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8221654','Осінь золота','Українська народна пісня. Виконує: Микола Гнатюк','uk','ukraine_before_1917',NULL,NULL,'Аудіозапис',NULL,'Осінній ліс стоїть, сумує,
Десь загубилася весна,
І літо щойно промайнуло,
Вже наближається зима.
Іде вона, зима морозна,
А серцю хочеться тепла,
Та гріє душу хвилька кожна,
І гріє осінь золота.

Приспів:
Втрачає ліс барвисте листя,
Лягає осінь на літа,
Та поруч ти, єдина в світі,
І з нами осінь золота.

А я стою на верховітті
Наперекір усім вітрам,
А в небі хмари вже осінні
Пливуть назустріч журавлям.
Осінній ліс стоїть, сумує,
Що загубилась десь весна,
І я до осені прямую,
І наша осінь золота.

Приспів. (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8221654'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8221654','Осінь золота','Осінній ліс стоїть, сумує,
Десь загубилася весна,
І літо щойно промайнуло,
Вже наближається зима.
Іде вона, зима морозна,
А серцю хочеться тепла,
Та гріє душу хвилька кожна,
І гріє осінь золота.

Приспів:
Втрачає ліс барвисте листя,
Лягає осінь на літа,
Та поруч ти, єдина в світі,
І з нами осінь золота.

А я стою на верховітті
Наперекір усім вітрам,
А в небі хмари вже осінні
Пливуть назустріч журавлям.
Осінній ліс стоїть, сумує,
Що загубилась десь весна,
І я до осені прямую,
І наша осінь золота.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_8217910';
DELETE FROM song_versions WHERE song_id = 'pisniua_8217910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8217910';
DELETE FROM songs WHERE id = 'pisniua_8217910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8217910','Рідна школа','Музика: Василь Григорук Слова: Нестор Мартинець. Виконує: Юрій Яремчук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Не забудеться час той ніколи,
Як до тебе уперше прийшли,
Найдорожча для нас, рідна школо,
Тут ми скарб і знання ми знайшли.
Тут навчились читати й писати,
Батьківщину любити свою,
Героїчний свій край шанувати
Й тих, що впали за нього в бою!

Приспів:
Школа рідна моя - мого серця частина,
Що до щастя свій шлях прокладає.
Вірим, буде міцна наша ненька Вкраїна - |
Це сьогодні ми щиро бажаєм!             | (2)

Пройдуть роки як нинішня днина
Та залишаться в пам''яті дні,
Як навчились любить Україну,
Рідну школу, батьків, вчителів.
А коли вже хтось доньку чи сина
Виряджатиме в дальні краї,
Хай залишиться в серці країна,
Рідна школа, батьки, вчителі!

Приспів. (2)

Школа рідна моя','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8217910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8217910','Рідна школа','Не забудеться час той ніколи,
Як до тебе уперше прийшли,
Найдорожча для нас, рідна школо,
Тут ми скарб і знання ми знайшли.
Тут навчились читати й писати,
Батьківщину любити свою,
Героїчний свій край шанувати
Й тих, що впали за нього в бою!

Приспів:
Школа рідна моя - мого серця частина,
Що до щастя свій шлях прокладає.
Вірим, буде міцна наша ненька Вкраїна - |
Це сьогодні ми щиро бажаєм!             | (2)

Пройдуть роки як нинішня днина
Та залишаться в пам''яті дні,
Як навчились любить Україну,
Рідну школу, батьків, вчителів.
А коли вже хтось доньку чи сина
Виряджатиме в дальні краї,
Хай залишиться в серці країна,
Рідна школа, батьки, вчителі!

Приспів. (2)

Школа рідна моя');
DELETE FROM song_links WHERE song_id = 'pisniua_8215979';
DELETE FROM song_versions WHERE song_id = 'pisniua_8215979';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8215979';
DELETE FROM songs WHERE id = 'pisniua_8215979';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8215979','Вчила мене мати як мужа любити','Музика: невідомий Слова: Богдан Саламаха. Виконує: Анна Саламаха','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Як я була юна, вчила мене мати,
Як любити мужа, як його кохати,
Як йому всміхатись, як йому годити,
Щоб щасливо в шлюбі сто років прожити.

Приспів
А я мужа люблю,
Я - розумна жінка.
І ми не розлучні,
Як дві половинки!
Вже багато років
Живемо щасливо
І собі на радість,
І усім на диво!

Не можна ніколи на мужа кричати,
Не треба сваритись, або дорікати.
Муж, казала мати, як мала дитина.
Ми, жінки, насправді, - сильна половина.

Приспів.

Якщо муж з роботи додому спізнився,
Значить по дорозі з друзями зустрівся.
Я йому всміхнуся, лагідно зустріну
І на стіл накрию ще й наллю чарчину.

Приспів

Там де жінка в домі, мов дурна овечка,
Чоловік в такої точно скаче в гречку.
А якщо кохатись до самого ранку,
То такому мужу не треба коханки.

Приспів

А як прийде нічка, полягаєм спати,
Буду свого мужа ніжно обіймати,
Цілувати буду, скільки сили стане.
Він на іншу жінку, навіть і не гляне.

Приспів.

То ж любіть, дівчата, і кохані будьте,
Та науку мої мами не забудьте.
Бо розумна жінка добре розуміє:
Голова - мужчина, зате жінка - шия!

Приспів.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8215979'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8215979','Вчила мене мати як мужа любити','Як я була юна, вчила мене мати,
Як любити мужа, як його кохати,
Як йому всміхатись, як йому годити,
Щоб щасливо в шлюбі сто років прожити.

Приспів
А я мужа люблю,
Я - розумна жінка.
І ми не розлучні,
Як дві половинки!
Вже багато років
Живемо щасливо
І собі на радість,
І усім на диво!

Не можна ніколи на мужа кричати,
Не треба сваритись, або дорікати.
Муж, казала мати, як мала дитина.
Ми, жінки, насправді, - сильна половина.

Приспів.

Якщо муж з роботи додому спізнився,
Значить по дорозі з друзями зустрівся.
Я йому всміхнуся, лагідно зустріну
І на стіл накрию ще й наллю чарчину.

Приспів

Там де жінка в домі, мов дурна овечка,
Чоловік в такої точно скаче в гречку.
А якщо кохатись до самого ранку,
То такому мужу не треба коханки.

Приспів

А як прийде нічка, полягаєм спати,
Буду свого мужа ніжно обіймати,
Цілувати буду, скільки сили стане.
Він на іншу жінку, навіть і не гляне.

Приспів.

То ж любіть, дівчата, і кохані будьте,
Та науку мої мами не забудьте.
Бо розумна жінка добре розуміє:
Голова - мужчина, зате жінка - шия!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_8216705';
DELETE FROM song_versions WHERE song_id = 'pisniua_8216705';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8216705';
DELETE FROM songs WHERE id = 'pisniua_8216705';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8216705','В парі линуть голуби','(Запрошення на весілля). Музика: Іван Карабиць Слова: Микола Сом. Виконує: Олександр Зуєв, Тріо "Золоті Ключі", Лідія Михайленко','uk','ukraine_before_1917',NULL,NULL,'Аудіозапис','Пісня відома у двох варіантах. Перший виконує Лідія Михайленко, другий (з дещо зміненим текстом) - тріо "Золоті ключі" (Ніна Матвієнко, Марія Миколайчук, Валентина Ковальська) разом з Олександром Зуєвим. Подано текст варіанту Лідії Михайленко.','Любов справляє весілля,
Любов дарує людям крила.
Весільна матінка земля
Людську любов благословила.

Приспів:
Перед нами, перед нами
Клен схилився до верби.
Під ясними небесами
В парі линуть голуби.

Весілля - наче водограй,
Танцюють з нами щедрі квіти.
Весільний пишний коровай
Мов радість, будемо ділити.

Приспів.

Дороги дзвоном загули,
Лягли під ноги килимами.
Весільні тесані столи
Накрила мати рушниками.

Приспів','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8216705'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8216705','В парі линуть голуби','Любов справляє весілля,
Любов дарує людям крила.
Весільна матінка земля
Людську любов благословила.

Приспів:
Перед нами, перед нами
Клен схилився до верби.
Під ясними небесами
В парі линуть голуби.

Весілля - наче водограй,
Танцюють з нами щедрі квіти.
Весільний пишний коровай
Мов радість, будемо ділити.

Приспів.

Дороги дзвоном загули,
Лягли під ноги килимами.
Весільні тесані столи
Накрила мати рушниками.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_8221358';
DELETE FROM song_versions WHERE song_id = 'pisniua_8221358';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8221358';
DELETE FROM songs WHERE id = 'pisniua_8221358';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8221358','Загадай','Музика: Надія Гураль Слова: Надія Гураль. Виконує: Надія Гураль','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У Новий Рік - святкові дні,
Лунають радісні пісні,
І світ запалює вогні
Навколо!
І ти даремно не чекай,
Своє бажання загадай!
Воно здійсниться, так і знай,
Обов''язково!

Приспів:
Загадай, загадай,
Не сумуй, не гадай,
Де кохання знайти
Ненароком.
Загадай і згадай,
Серед сотні впізнай,
І мене привітай
З Новим Роком!

Лунає спів, лунає сміх,
Бо Новий Рік єднає всіх,
Він переступить наш поріг
Вже скоро!
І ти у цю казкову ніч
Мене до себе лиш поклич
І будем разом віч-на-віч,
Будемо двоє!

Приспів. (2)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8221358'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8221358','Загадай','У Новий Рік - святкові дні,
Лунають радісні пісні,
І світ запалює вогні
Навколо!
І ти даремно не чекай,
Своє бажання загадай!
Воно здійсниться, так і знай,
Обов''язково!

Приспів:
Загадай, загадай,
Не сумуй, не гадай,
Де кохання знайти
Ненароком.
Загадай і згадай,
Серед сотні впізнай,
І мене привітай
З Новим Роком!

Лунає спів, лунає сміх,
Бо Новий Рік єднає всіх,
Він переступить наш поріг
Вже скоро!
І ти у цю казкову ніч
Мене до себе лиш поклич
І будем разом віч-на-віч,
Будемо двоє!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8221358_l1','pisniua_8221358','YouTube','https://www.youtube.com/watch?v=7MtsjL1S_iY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8221205';
DELETE FROM song_versions WHERE song_id = 'pisniua_8221205';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8221205';
DELETE FROM songs WHERE id = 'pisniua_8221205';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8221205','Сама сама','Музика: Михайло Хома, Олег Турко Слова: Михайло Хома, Олег Турко. Виконує: DZIDZIO','uk','ukraine_before_1917',NULL,NULL,NULL,'Табулатуру надіслав: bambetel','E|----------------------------------|------------------------|---3--6-6---5--3-3h1--------------|
B|---3-3-3-4--4h6--4-3-3--1---------|---4--6h8-6-4-4--3--1h4-|-4-------------------6-4-3-3h1--1-|
G|--------------------------3---3h6-|------------------------|----------------------------------|
D|----------------------------------|------------------------|----------------------------------|
A|----------------------------------|------------------------|----------------------------------|
E|----------------------------------|------------------------|----------------------------------|
Так багато дівчат,
Але я вибрав тебе.
Я не вірив в любов,
Та цепануло мене.
Я люблю, коли сплю,
Я від тебе дурію,
Я до всього ревную,
Я від тебе балдію!
Приспів:
Йой! Тебе не любе моя мама!
Йой! А ти для мене сама-сама!
Йой! Тебе не любе моя мама!
Йой! А ти для мене сама-сама!
Сама-сама!
Я не спав цілу ніч,
Думав тільки про тебе,
Щось від антилюбві
Срочно випити треба.
Ти будила мене
Неземною красою,
Мені кришу зриває -
Хочу бути з тобою!
Приспів.
Є проблемка мала,
Мєжду нами різниця:
Ми з тобою, як ті
Журавель і синиця.
Я готовий тобі
Зірку з неба дістати,
Тільки дещо вночі
Не дає мені спати!
Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:zhartivlyvi'', ''Пісні про кохання, ліричні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8221205'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8221205','Сама сама','E|----------------------------------|------------------------|---3--6-6---5--3-3h1--------------|
B|---3-3-3-4--4h6--4-3-3--1---------|---4--6h8-6-4-4--3--1h4-|-4-------------------6-4-3-3h1--1-|
G|--------------------------3---3h6-|------------------------|----------------------------------|
D|----------------------------------|------------------------|----------------------------------|
A|----------------------------------|------------------------|----------------------------------|
E|----------------------------------|------------------------|----------------------------------|
Так багато дівчат,
Але я вибрав тебе.
Я не вірив в любов,
Та цепануло мене.
Я люблю, коли сплю,
Я від тебе дурію,
Я до всього ревную,
Я від тебе балдію!
Приспів:
Йой! Тебе не любе моя мама!
Йой! А ти для мене сама-сама!
Йой! Тебе не любе моя мама!
Йой! А ти для мене сама-сама!
Сама-сама!
Я не спав цілу ніч,
Думав тільки про тебе,
Щось від антилюбві
Срочно випити треба.
Ти будила мене
Неземною красою,
Мені кришу зриває -
Хочу бути з тобою!
Приспів.
Є проблемка мала,
Мєжду нами різниця:
Ми з тобою, як ті
Журавель і синиця.
Я готовий тобі
Зірку з неба дістати,
Тільки дещо вночі
Не дає мені спати!
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8221205_l1','pisniua_8221205','YouTube','https://www.youtube.com/watch?v=JzUeywdmnPU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8221205_l2','pisniua_8221205','YouTube','https://www.youtube.com/watch?v=Ly5O_cwHkVk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8221205_l3','pisniua_8221205','YouTube','https://www.youtube.com/watch?v=f1dHb07FdFQ','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_8224676';
DELETE FROM song_versions WHERE song_id = 'pisniua_8224676';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8224676';
DELETE FROM songs WHERE id = 'pisniua_8224676';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8224676','Пісня про козака','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Горіхове сіделечко
І кінь вороненький,
Ой, поїхав з цього села
Козак молоденький.

Ой, поїхав з цього села
На кровавий танець,
Бо вже наступає
Татарин-поганець.

А як їхав з цього села -
Низенько вклонився:
Прощавай, вся родинонько,
Буду за вас бився!

Не жаль мені кров пролити,
Щоб вас боронити,
Не жаль мені життя дати,
Щоб вам добре жити!

Прощавайте, отець-мати,
Не тужіть за мною,
Ласка в Бога - перемога
Вславить нашу зброю!

Промивайте доріженьку,
Щоб не курилася,
Розважайте рідну неньку,
Щоб не журилася!

Горіхове сіделечко,
В коня біля грива,
Ой, поїхав козаченько,
Дорога щаслива!','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8224676'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8224676','Пісня про козака','Горіхове сіделечко
І кінь вороненький,
Ой, поїхав з цього села
Козак молоденький.

Ой, поїхав з цього села
На кровавий танець,
Бо вже наступає
Татарин-поганець.

А як їхав з цього села -
Низенько вклонився:
Прощавай, вся родинонько,
Буду за вас бився!

Не жаль мені кров пролити,
Щоб вас боронити,
Не жаль мені життя дати,
Щоб вам добре жити!

Прощавайте, отець-мати,
Не тужіть за мною,
Ласка в Бога - перемога
Вславить нашу зброю!

Промивайте доріженьку,
Щоб не курилася,
Розважайте рідну неньку,
Щоб не журилася!

Горіхове сіделечко,
В коня біля грива,
Ой, поїхав козаченько,
Дорога щаслива!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8224676_l1','pisniua_8224676','YouTube','https://www.youtube.com/watch?v=N6r858ORTW4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8218501';
DELETE FROM song_versions WHERE song_id = 'pisniua_8218501';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8218501';
DELETE FROM songs WHERE id = 'pisniua_8218501';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8218501','Новий рік свято','Музика: Євген Заставний Слова: Т. Василько. Виконує: Христина Рачкевич','uk','ukraine_1991',NULL,NULL,'Авторське подання: Т. Василько. Гомін Підгір''я (альманах) № 7, 2008. - С 78 - 87.','Альбом: Веселий сонцеворот','Ягідка-зіронька в небі горить,
Біля ялиноньки зайчик сидить,
Снігом вмивається, не дочекається,
Коли прийде Новий рік.

Приспів:
Новий рік - свято, дарунків багато,
Вистачить зайчикам всім:
Зайчикам білим, зайчикам сірим,
Будуть дарунки усім!
Будуть дарунки усім!

Місяць рогатий за хмарку сховавсь,
Зайчик злякався... і заспівав:
"Мелено-сіяно, снігу навіяно,
Бо йде до нас Новий рік!"

Приспів.

Зайчика пісню - пісню зими
Чують звірята і чуємо ми,
Хором співаємо, дружньо гукаємо:
Рік Новий, Рік, йди до нас!

Приспів','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8218501'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8218501','Новий рік свято','Ягідка-зіронька в небі горить,
Біля ялиноньки зайчик сидить,
Снігом вмивається, не дочекається,
Коли прийде Новий рік.

Приспів:
Новий рік - свято, дарунків багато,
Вистачить зайчикам всім:
Зайчикам білим, зайчикам сірим,
Будуть дарунки усім!
Будуть дарунки усім!

Місяць рогатий за хмарку сховавсь,
Зайчик злякався... і заспівав:
"Мелено-сіяно, снігу навіяно,
Бо йде до нас Новий рік!"

Приспів.

Зайчика пісню - пісню зими
Чують звірята і чуємо ми,
Хором співаємо, дружньо гукаємо:
Рік Новий, Рік, йди до нас!

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8218501_l1','pisniua_8218501','YouTube','https://www.youtube.com/watch?v=9i9QnBBUUeQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_822603';
DELETE FROM song_versions WHERE song_id = 'pisniua_822603';
DELETE FROM songs_fts WHERE song_id = 'pisniua_822603';
DELETE FROM songs WHERE id = 'pisniua_822603';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_822603','Ой верше, мій верше','Українська народна пісня. Виконує: Юлія Дошна','uk','ukraine_before_1917',NULL,NULL,'Аудіо-альбом "Юлія Дошна. "Там на Лемковині"','Текст подано за джерелом (взято з обкладинки аудіо-CD) зі збереженням оригінального правопису.','Ой верше мій верше
Мій дзелений верше
Уж мі так не буде  (2) |
Як мі было перше       | (2)

Бо перше мі было
Барз мі добри было
Од свойой мамичкы  (2) |
Не ходити было         | (2)

Не ходити было
Горами лісами
Не любити было     (2) |
З чорними очами        | (2)

Не ходити было
Кадим я ходила
Не любити было     (2) |
Кого я любила          | (2)

Бо когом любыла
І рада виділа
Уж я того рочку    (2) |
Забытим мусіла         | (2)

Не рубати было
Зеленого дуба
Не брати ня было   (2) |
Колим ти не люба       | (2)

Не рубати было
Зеленого ліщыну
Не брати ня было   (2) |
Молоду дівчыну         | (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_822603'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_822603','Ой верше, мій верше','Ой верше мій верше
Мій дзелений верше
Уж мі так не буде  (2) |
Як мі было перше       | (2)

Бо перше мі было
Барз мі добри было
Од свойой мамичкы  (2) |
Не ходити было         | (2)

Не ходити было
Горами лісами
Не любити было     (2) |
З чорними очами        | (2)

Не ходити было
Кадим я ходила
Не любити было     (2) |
Кого я любила          | (2)

Бо когом любыла
І рада виділа
Уж я того рочку    (2) |
Забытим мусіла         | (2)

Не рубати было
Зеленого дуба
Не брати ня было   (2) |
Колим ти не люба       | (2)

Не рубати было
Зеленого ліщыну
Не брати ня было   (2) |
Молоду дівчыну         | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_822603_l1','pisniua_822603','YouTube','https://www.youtube.com/watch?v=wqFuzOUcC5U','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_822603_l2','pisniua_822603','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8218518';
DELETE FROM song_versions WHERE song_id = 'pisniua_8218518';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8218518';
DELETE FROM songs WHERE id = 'pisniua_8218518';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8218518','Новорічна ніч чудес','Музика: Євген Заставний Слова: Т. Василько. Виконує: Олександра Присташ','uk','ukraine_1991',NULL,NULL,'Авторське подання: Т. Василько. Гомін Підгір''я (альманах) № 7, 2008. - С 78 - 87.',NULL,'Новий рік... Новий рік -
Новорічний випав сніг,
Прилетіло ластівчатко
І біленьке солов''ятко,
Щоб із нами щебетати:
Новий рік...
Новий, Новий рік!

Новорічна ніч чудес:
В небі Місяць срібний скрес,
Хмарки сиві - бистрі коні
І сніжинки на долоні,
Щоб радів весь білий світ:
Новий рік...
Новий, Новий рік!

Засіяла зірка нова -
Народивсь Христос зі Слова,
Щоб були усі багаті
І щасливі в рідній хаті,
Щоб усім на довгий вік -
Новий рік...
Новий, Новий рік!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8218518'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8218518','Новорічна ніч чудес','Новий рік... Новий рік -
Новорічний випав сніг,
Прилетіло ластівчатко
І біленьке солов''ятко,
Щоб із нами щебетати:
Новий рік...
Новий, Новий рік!

Новорічна ніч чудес:
В небі Місяць срібний скрес,
Хмарки сиві - бистрі коні
І сніжинки на долоні,
Щоб радів весь білий світ:
Новий рік...
Новий, Новий рік!

Засіяла зірка нова -
Народивсь Христос зі Слова,
Щоб були усі багаті
І щасливі в рідній хаті,
Щоб усім на довгий вік -
Новий рік...
Новий, Новий рік!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8218518_l1','pisniua_8218518','YouTube','https://www.youtube.com/watch?v=5lXsnBwONLM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8218518_l2','pisniua_8218518','http://muzofon.com/search/Новорічна%20ніч%20чудес','http://muzofon.com/search/Новорічна%20ніч%20чудес','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8219409';
DELETE FROM song_versions WHERE song_id = 'pisniua_8219409';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8219409';
DELETE FROM songs WHERE id = 'pisniua_8219409';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8219409','Давно так було','Музика: Микола Янченко Слова: Микола Янченко. Виконує: Микола Янченко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Довго всі чекали цього дня,
Не могли вночі спокійно спати,
З Києва приїхала рідня,
Щоб родину привітати.
Біле плаття в Жмеринці знайшли,
Шалаша привезли аж з Ожинівки,
Прошені й непрошені прийшли,
Бо для них нагнали чан горілки!

Приспів:
Давно так було, гуляє село,
І дружки такі, як треба!
Давно так було, гуляй, село,
І пилюка аж до неба!

Під вікном черешня розцвіла,
Польки і марші музики грали,
А коли позвали до стола,
З голодухи, наче оси, впали.
Потім всі кричали молодим: "Гірко!"
Свідкам теж легесенькі засоси,
Молодьож співала "Бєлий дим",
А старі - про чорнії коси.

Приспів.

Відцвіла черешня під вікном,
Гості всі давно по-від''їжджали,
Залишився спогад, ніби сон,
Вже давно такого не було.
Дні за днями хмарами пливуть,
Знов батьки вночі не можуть спати,
Молоді давно вже не живуть,
А борги ж потрібно віддавати!

Приспів. (2)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''cat:vesilni'', ''Соціально-побутові пісні'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8219409'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8219409','Давно так було','Довго всі чекали цього дня,
Не могли вночі спокійно спати,
З Києва приїхала рідня,
Щоб родину привітати.
Біле плаття в Жмеринці знайшли,
Шалаша привезли аж з Ожинівки,
Прошені й непрошені прийшли,
Бо для них нагнали чан горілки!

Приспів:
Давно так було, гуляє село,
І дружки такі, як треба!
Давно так було, гуляй, село,
І пилюка аж до неба!

Під вікном черешня розцвіла,
Польки і марші музики грали,
А коли позвали до стола,
З голодухи, наче оси, впали.
Потім всі кричали молодим: "Гірко!"
Свідкам теж легесенькі засоси,
Молодьож співала "Бєлий дим",
А старі - про чорнії коси.

Приспів.

Відцвіла черешня під вікном,
Гості всі давно по-від''їжджали,
Залишився спогад, ніби сон,
Вже давно такого не було.
Дні за днями хмарами пливуть,
Знов батьки вночі не можуть спати,
Молоді давно вже не живуть,
А борги ж потрібно віддавати!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_822611';
DELETE FROM song_versions WHERE song_id = 'pisniua_822611';
DELETE FROM songs_fts WHERE song_id = 'pisniua_822611';
DELETE FROM songs WHERE id = 'pisniua_822611';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_822611','Зорі','Слова: The Вйо. Виконує: The Вйо','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: Євген Шульга','Зорі, срібні в чорнім морі
G
Пропливали кролем на схід -
Хай чекає Захід

Хвилі, подолавши милі,
Ноги наші мили, а ми
Співали нестримано

Приспів:
Кожен з нас щось може ганджа допоможе
Проросте посмішкою Джа
Всі колись висіли вуса помочили
В молоці веселого Джа

Тіло, тихо шелестіло
Все кудись летіло і я
Себе почував молодим космонавтом

Далі, натискав педалі,
Ми уже в астралі не треба
За стежкою стежить

Приспів.

Літо, нам дарило квіти
Чоколаду плити і ганджа
Це все, що тримало

Танки, танці, ввечорі і вранці
Знають все малайці - скажіть нам
Що гірше, що краще.

Приспів.','[''pisni.org.ua'', ''cat:christian'', ''cat:suspilno-politychni'', ''Пісні на християнську тематику'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_822611'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_822611','Зорі','Зорі, срібні в чорнім морі
G
Пропливали кролем на схід -
Хай чекає Захід

Хвилі, подолавши милі,
Ноги наші мили, а ми
Співали нестримано

Приспів:
Кожен з нас щось може ганджа допоможе
Проросте посмішкою Джа
Всі колись висіли вуса помочили
В молоці веселого Джа

Тіло, тихо шелестіло
Все кудись летіло і я
Себе почував молодим космонавтом

Далі, натискав педалі,
Ми уже в астралі не треба
За стежкою стежить

Приспів.

Літо, нам дарило квіти
Чоколаду плити і ганджа
Це все, що тримало

Танки, танці, ввечорі і вранці
Знають все малайці - скажіть нам
Що гірше, що краще.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_8221219';
DELETE FROM song_versions WHERE song_id = 'pisniua_8221219';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8221219';
DELETE FROM songs WHERE id = 'pisniua_8221219';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8221219','Ми лісові - студенти','Слова: Р. Завадович','uk','ukraine_1991',NULL,NULL,'співаник Лісової Школи',NULL,'Це Школа, Школа Лісова,
А ми в ній - лісові студенти,
Вона всім школам голова
На всі краї і континенти!

Приспів:
Юнак чи старший, друже, ти
Біжи до нас, біжи мерщій,
Учись і добивайсь мети
У славній Школі Лісовій!

Це Школа, Школа Лісова,
Усякої учать там штуки,
Скажи, що варта булава
Не нюхавши її науки?

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:plastovi'', ''Гимни та марші'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8221219'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8221219','Ми лісові - студенти','Це Школа, Школа Лісова,
А ми в ній - лісові студенти,
Вона всім школам голова
На всі краї і континенти!

Приспів:
Юнак чи старший, друже, ти
Біжи до нас, біжи мерщій,
Учись і добивайсь мети
У славній Школі Лісовій!

Це Школа, Школа Лісова,
Усякої учать там штуки,
Скажи, що варта булава
Не нюхавши її науки?

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_8222878';
DELETE FROM song_versions WHERE song_id = 'pisniua_8222878';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8222878';
DELETE FROM songs WHERE id = 'pisniua_8222878';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8222878','Благання','Музика: Станіслав Городинський Слова: В. Буга. Виконує: Станіслав Городинський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я вже дуже зістарілась, сину,
Стала срібною чорна коса,
Ти ж дивись, не спізнись на обжинки,
Поки слід мій не змила роса...
Вже немає твоєї калини,
Лиш барвінок ще в''ється в саду,
Я тебе виглядаю з чужини,
І з надій нашу правду плету.

Приспів:
Рано-вранці стою біля тину,
Чи не дасть листоноша листа,
Перехожим вдивляюсь у спину -
Може, син мій до дому верта?..
Рано-вранці стою біля тину,
Чи не дасть листоноша листа,
Перехожим вдивляюсь у спину -
Може, гість мій до дому верта?..

Та нечасто трапляються вісті,
Видно в тебе немає часу.
Заблукав ти з турботами в місті,
Та і цю я вгамую сльозу...
Я вже дуже зістарілась, синку,
Закінчились мої вже жнива,
Тож дивись, не спізнись на обжинки,
Поки мати твоя ще жива!

Приспів.

Рано-вранці стою біля тину,      |
Чи не дасть листоноша листа,     |
Перехожим вдивляюсь у спину -    |
Може, гість мій до дому верта?.. | (2)','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8222878'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8222878','Благання','Я вже дуже зістарілась, сину,
Стала срібною чорна коса,
Ти ж дивись, не спізнись на обжинки,
Поки слід мій не змила роса...
Вже немає твоєї калини,
Лиш барвінок ще в''ється в саду,
Я тебе виглядаю з чужини,
І з надій нашу правду плету.

Приспів:
Рано-вранці стою біля тину,
Чи не дасть листоноша листа,
Перехожим вдивляюсь у спину -
Може, син мій до дому верта?..
Рано-вранці стою біля тину,
Чи не дасть листоноша листа,
Перехожим вдивляюсь у спину -
Може, гість мій до дому верта?..

Та нечасто трапляються вісті,
Видно в тебе немає часу.
Заблукав ти з турботами в місті,
Та і цю я вгамую сльозу...
Я вже дуже зістарілась, синку,
Закінчились мої вже жнива,
Тож дивись, не спізнись на обжинки,
Поки мати твоя ще жива!

Приспів.

Рано-вранці стою біля тину,      |
Чи не дасть листоноша листа,     |
Перехожим вдивляюсь у спину -    |
Може, гість мій до дому верта?.. | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8222878_l1','pisniua_8222878','YouTube','https://www.youtube.com/watch?v=i07Acy8Ehug','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_8219415';
DELETE FROM song_versions WHERE song_id = 'pisniua_8219415';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8219415';
DELETE FROM songs WHERE id = 'pisniua_8219415';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8219415','Ой, не бийте в губи','Музика: Микола Янченко Слова: Микола Янченко. Виконує: Микола Янченко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Вже сідало сонце понад гаєм,
Ми весілля грали,
Танцювали дружба з караваєм
І дружки скакали,
Але тут найшлися два катюги,
Стали наїжджати,
Загинати руки мої в дуги,
В кісточках ламати.

Приспів:
Ой, не бийте, хлопці, мене в губи,
Я ж на барабані граю.
Краще бийте тих, що дують в труби,
Хай вони для вас зіграють!

Кажуть, ніби кози - не худоба,
І що ми - не люди,
Краще я б сидів в неділю вдома,
Чи шофером був би.
То не били б, як старе відерце,
Мене на весіллі,
Може, в мене ненадьожне серце,
Ми ж в Вапнярці, а не в Чилі.

Приспів.

Щоб тим хлопцям ручки повсихали,
Як в жнива пшеничка,
Щоб вони вже їх не простягали
Більше до музички.
Вже сідало сонце понад гаєм,
Ми весілля грали,
Танцювали дружба з караваєм
І дружки скакали

Приспів.

Ой, не бийте, хлопці, його в губи,
Він на барабані грає.
Краще бийте тих, що дують в труби,
Хай вони для вас зіграють!','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8219415'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8219415','Ой, не бийте в губи','Вже сідало сонце понад гаєм,
Ми весілля грали,
Танцювали дружба з караваєм
І дружки скакали,
Але тут найшлися два катюги,
Стали наїжджати,
Загинати руки мої в дуги,
В кісточках ламати.

Приспів:
Ой, не бийте, хлопці, мене в губи,
Я ж на барабані граю.
Краще бийте тих, що дують в труби,
Хай вони для вас зіграють!

Кажуть, ніби кози - не худоба,
І що ми - не люди,
Краще я б сидів в неділю вдома,
Чи шофером був би.
То не били б, як старе відерце,
Мене на весіллі,
Може, в мене ненадьожне серце,
Ми ж в Вапнярці, а не в Чилі.

Приспів.

Щоб тим хлопцям ручки повсихали,
Як в жнива пшеничка,
Щоб вони вже їх не простягали
Більше до музички.
Вже сідало сонце понад гаєм,
Ми весілля грали,
Танцювали дружба з караваєм
І дружки скакали

Приспів.

Ой, не бийте, хлопці, його в губи,
Він на барабані грає.
Краще бийте тих, що дують в труби,
Хай вони для вас зіграють!');
DELETE FROM song_links WHERE song_id = 'pisniua_8224950';
DELETE FROM song_versions WHERE song_id = 'pisniua_8224950';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8224950';
DELETE FROM songs WHERE id = 'pisniua_8224950';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8224950','Каштани падають на брук','Музика: Олександр Білаш Слова: Михайло Ткач. Виконує: Лариса Остапенко, Юлія Пашковська','uk','ukraine_1991',NULL,NULL,'http://smoz.ru/',NULL,'Каштани падають на брук:
Тук-тук, тук—тук, тук—тук, тук-тук.
Каштани, як в тебе очі, карі,
Каштани, з тобою ночі в парі.
Тук-тук, ми в світі вдвох, здається,
І серце серцю віддається -
Тук-тук, тук-тук...
Каштани падають на брук.

Та раптом з хмари глянув на світанні
Лукавий місяць, як тужавий лук,
І голос твій розтанув десь в тумані,
Немов струни обірваної звук.

Каштани падають на брук:
Тук-тук, тук—тук, тук—тук, тук-тук.
Каштани, як в тебе очі, карі,
Каштани, з тобою ночі в парі.
Тук-тук, розходяться дороги
І серце повниться тривоги — тук—тук, тук—тук...
Каштани падають на брук.

Як два крилечка, впаде сон на весла,
Розбився човен в березі розлук,
Тепер йому вже тільки сняться весни,
Як і мені твої обійми рук.

Каштани падають на брук:
Тук-тук, тук—тук, тук—тук, тук-тук.
Каштани, як в тебе очі, карі,
Каштани, з тобою ночі в парі.
Тук-тук — гуляє хтось весілля,
А в мене серце, як з похмілля - тук-тук, тук—тук...
Каштани падають на брук.

Каштани - тук-тук, тук-тук-тук','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8224950'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8224950','Каштани падають на брук','Каштани падають на брук:
Тук-тук, тук—тук, тук—тук, тук-тук.
Каштани, як в тебе очі, карі,
Каштани, з тобою ночі в парі.
Тук-тук, ми в світі вдвох, здається,
І серце серцю віддається -
Тук-тук, тук-тук...
Каштани падають на брук.

Та раптом з хмари глянув на світанні
Лукавий місяць, як тужавий лук,
І голос твій розтанув десь в тумані,
Немов струни обірваної звук.

Каштани падають на брук:
Тук-тук, тук—тук, тук—тук, тук-тук.
Каштани, як в тебе очі, карі,
Каштани, з тобою ночі в парі.
Тук-тук, розходяться дороги
І серце повниться тривоги — тук—тук, тук—тук...
Каштани падають на брук.

Як два крилечка, впаде сон на весла,
Розбився човен в березі розлук,
Тепер йому вже тільки сняться весни,
Як і мені твої обійми рук.

Каштани падають на брук:
Тук-тук, тук—тук, тук—тук, тук-тук.
Каштани, як в тебе очі, карі,
Каштани, з тобою ночі в парі.
Тук-тук — гуляє хтось весілля,
А в мене серце, як з похмілля - тук-тук, тук—тук...
Каштани падають на брук.

Каштани - тук-тук, тук-тук-тук');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8224950_l1','pisniua_8224950','YouTube','https://www.youtube.com/watch?v=ZUcqSlw7NFw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8224950_l2','pisniua_8224950','YouTube','https://www.youtube.com/watch?v=18qHh-NmqD8','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_8225409';
DELETE FROM song_versions WHERE song_id = 'pisniua_8225409';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8225409';
DELETE FROM songs WHERE id = 'pisniua_8225409';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8225409','Возбранной Воєводі','Виконує: Наталя Половинка','uk','ukraine_1991',NULL,NULL,'Аудіозапис',NULL,'Возбранной Воєводі
Побідительная,

Яко ізбальшеся от злих
Благодарственная

Восписуєм Ти раби твої,
Богородице,

Но яко імуще державу
Непобідимую,

От всяких нас бід свободи,
Да зовем Ти:
Радуйся Невісто
Неневісная.

Алилуя, Алилуя,
Алилуя!','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8225409'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8225409','Возбранной Воєводі','Возбранной Воєводі
Побідительная,

Яко ізбальшеся от злих
Благодарственная

Восписуєм Ти раби твої,
Богородице,

Но яко імуще державу
Непобідимую,

От всяких нас бід свободи,
Да зовем Ти:
Радуйся Невісто
Неневісная.

Алилуя, Алилуя,
Алилуя!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8225409_l1','pisniua_8225409','YouTube','https://www.youtube.com/watch?v=s8V__sUjw3I','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8225409_l2','pisniua_8225409','YouTube','https://www.youtube.com/watch?v=BhLHbmdF_ws','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8225409_l3','pisniua_8225409','YouTube','https://www.youtube.com/watch?v=9qSr_Rppoa0','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_8229154';
DELETE FROM song_versions WHERE song_id = 'pisniua_8229154';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8229154';
DELETE FROM songs WHERE id = 'pisniua_8229154';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8229154','Найкласніший клас','Слова: Т. Василько','uk','ukraine_1991',NULL,NULL,'Авторське подання: Т. Василько. Гомін Підгір''я (альманах) № 8, 2009. – С. 116 - 135.',NULL,'Класні парти, класна дошка,
Класна стеля і підлога,
Ну і, звісно, класні ми!

Приспів:
Клас! Клас! Це наш клас -
Найкласніший в школі клас!
Найкласніший - це наш клас!
Клас! Клас!
Найкласніший - Це наш клас!

Класні стіни, класні двері,
Класні вікна і гардини,
Ну і, звісно, вчителі!

Приспів.

Класні тумби, класні шафи,
Класні стенди і вазони,
А директор - супер клас!

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8229154'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8229154','Найкласніший клас','Класні парти, класна дошка,
Класна стеля і підлога,
Ну і, звісно, класні ми!

Приспів:
Клас! Клас! Це наш клас -
Найкласніший в школі клас!
Найкласніший - це наш клас!
Клас! Клас!
Найкласніший - Це наш клас!

Класні стіни, класні двері,
Класні вікна і гардини,
Ну і, звісно, вчителі!

Приспів.

Класні тумби, класні шафи,
Класні стенди і вазони,
А директор - супер клас!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_8223450';
DELETE FROM song_versions WHERE song_id = 'pisniua_8223450';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8223450';
DELETE FROM songs WHERE id = 'pisniua_8223450';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8223450','Їхав козак з гори та в байрак','Українська народна пісня. Виконує: Черкаський народний хор','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Їхав козак з гори та в байрак
До коника прихилився.
Гей! А за ним, за ним його матінка: |
Ой, синку, вернися!                 | (2)

Ой, не вернуся, не оглянуся
Та й поїду на Вкраїну!
Гей! Кінь мій вороний?              |
Сам я молодий, ой, не загину!       | (2)

Ой, неси ж мене, коню вороний,
Та й під гору Чигиринську!
Гей! Знадобилися ми козацькому,     |
Ой, славному війську!               | (2)','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8223450'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8223450','Їхав козак з гори та в байрак','Їхав козак з гори та в байрак
До коника прихилився.
Гей! А за ним, за ним його матінка: |
Ой, синку, вернися!                 | (2)

Ой, не вернуся, не оглянуся
Та й поїду на Вкраїну!
Гей! Кінь мій вороний?              |
Сам я молодий, ой, не загину!       | (2)

Ой, неси ж мене, коню вороний,
Та й під гору Чигиринську!
Гей! Знадобилися ми козацькому,     |
Ой, славному війську!               | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8223450_l1','pisniua_8223450','YouTube','https://www.youtube.com/watch?v=wiZ9O8QNVhA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8223450_l2','pisniua_8223450','YouTube','https://www.youtube.com/watch?v=aQFrH8Gy00I','video',NULL,2);
