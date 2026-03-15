DELETE FROM song_links WHERE song_id = 'pisniua_419436';
DELETE FROM song_versions WHERE song_id = 'pisniua_419436';
DELETE FROM songs_fts WHERE song_id = 'pisniua_419436';
DELETE FROM songs WHERE id = 'pisniua_419436';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_419436','Ой на Івана на Купала','Виконує: Назар Новосад','uk','ukr_ssr_1919_1991',NULL,'1989','Записав із виконання Назара Новосада 1989 року.',NULL,'Ой на Івана, на Купала
Зілля-зіллячко збирала,
За тобою, моє серце,
Свої очі заплакала.

Ой на Івана, на Купала
З зілля віночок сплітала,
Як на річку опускала,
Серцем з милим розмовляла -

Чи ти любиш, чи смієшся?
Моє серце розриваєш!
Хай віночок несе повідь,
Де мій милий коня поїть.-

Заколише вітер зілля,
Зашепочуть верби гілля,
Може з ранньою весною
Милий кликне за собою.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_419436'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_419436','Ой на Івана на Купала','Ой на Івана, на Купала
Зілля-зіллячко збирала,
За тобою, моє серце,
Свої очі заплакала.

Ой на Івана, на Купала
З зілля віночок сплітала,
Як на річку опускала,
Серцем з милим розмовляла -

Чи ти любиш, чи смієшся?
Моє серце розриваєш!
Хай віночок несе повідь,
Де мій милий коня поїть.-

Заколише вітер зілля,
Зашепочуть верби гілля,
Може з ранньою весною
Милий кликне за собою.');
DELETE FROM song_links WHERE song_id = 'pisniua_4198636';
DELETE FROM song_versions WHERE song_id = 'pisniua_4198636';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4198636';
DELETE FROM songs WHERE id = 'pisniua_4198636';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4198636','День уже минає',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'День уже минає, наступає ніч,
Пітьма прикриває кожну земну річ.
Вже на небі Твоїм миготять зірки,
Тихим сном заснули пташки і квітки.

І людей стомлених переміг вже сон,
Хай Господній Ангел стане в їх вікон.
Хай з''явиться світлий нашим діточкам,
Сторожем хай буде всім мандрівникам.

Всяку біль у цю ніч, Боже, усмири
І до злого вчинку нас не допусти!
Ангел наглядає над народом всім,
Мир святий і спокій Ти пішли в наш дім!

Завтра нас уранці, Боже, пробуди
І тільки до добрих вчинків нас веди.
Щоб могли ми завтра день почати свій,
Слава, Боже Тобі, в Трійці Пресвятій!','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4198636'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4198636','День уже минає','День уже минає, наступає ніч,
Пітьма прикриває кожну земну річ.
Вже на небі Твоїм миготять зірки,
Тихим сном заснули пташки і квітки.

І людей стомлених переміг вже сон,
Хай Господній Ангел стане в їх вікон.
Хай з''явиться світлий нашим діточкам,
Сторожем хай буде всім мандрівникам.

Всяку біль у цю ніч, Боже, усмири
І до злого вчинку нас не допусти!
Ангел наглядає над народом всім,
Мир святий і спокій Ти пішли в наш дім!

Завтра нас уранці, Боже, пробуди
І тільки до добрих вчинків нас веди.
Щоб могли ми завтра день почати свій,
Слава, Боже Тобі, в Трійці Пресвятій!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4198636_l1','pisniua_4198636','YouTube','https://www.youtube.com/watch?v=uwHzh8SMarw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4196185';
DELETE FROM song_versions WHERE song_id = 'pisniua_4196185';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4196185';
DELETE FROM songs WHERE id = 'pisniua_4196185';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4196185','Материнська колисанка','Музика: Валерій Подвала Слова: Платон Воронько. Виконує: Алла Шутько','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Материнська колисанка,
Доню моя мила, -
Се надія і благанка -
Дати щастю крила!

На літа твої й світанки,
Долі подорожні,
Материнські колисанки
Любі і тривожні...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4196185'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4196185','Материнська колисанка','Материнська колисанка,
Доню моя мила, -
Се надія і благанка -
Дати щастю крила!

На літа твої й світанки,
Долі подорожні,
Материнські колисанки
Любі і тривожні...');
DELETE FROM song_links WHERE song_id = 'pisniua_419481';
DELETE FROM song_versions WHERE song_id = 'pisniua_419481';
DELETE FROM songs_fts WHERE song_id = 'pisniua_419481';
DELETE FROM songs WHERE id = 'pisniua_419481';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_419481','Бити кицю, бити','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1971','"Народні пісні в записах Лесі Українки та з її співу". 1971 рік "Музична Україна"',NULL,'Бити кицю, бити —
Не хоче робити,
Бити кицю по лапках,
Хай не ходить по лавках.
А-а-а-а! А-а-а-а!','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_419481'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_419481','Бити кицю, бити','Бити кицю, бити —
Не хоче робити,
Бити кицю по лапках,
Хай не ходить по лавках.
А-а-а-а! А-а-а-а!');
DELETE FROM song_links WHERE song_id = 'pisniua_4194685';
DELETE FROM song_versions WHERE song_id = 'pisniua_4194685';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4194685';
DELETE FROM songs WHERE id = 'pisniua_4194685';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4194685','Донечка','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сонечко, сонечко золотом сія,
Дощиком, дощиком умивається.
Я ж твоя донечка і до тебе я
Лагідно, лагідно посміхаюся.
Я ж твоя донечка і до тебе я
Лагідно, лагідно посміхаюся.

Зірочка, зірочка сяє голуба,
Сріблом небаченим розсипаться,
Я ж твоя донечка і до тебе я
Лагідно, лагідно посміхаюся.
Я ж твоя донечка і до тебе я
Лагідно, лагідно посміхаюся.

Пісеньку, пісеньку, пісеньку свою
Подарувати тобі намагаюся.
Рідна матусенько, я тебе люблю,
І до тебе лагідно пригортаюся.
Рідна матусенько, я тебе люблю,
І до тебе лагідно пригортаюся.','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4194685'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4194685','Донечка','Сонечко, сонечко золотом сія,
Дощиком, дощиком умивається.
Я ж твоя донечка і до тебе я
Лагідно, лагідно посміхаюся.
Я ж твоя донечка і до тебе я
Лагідно, лагідно посміхаюся.

Зірочка, зірочка сяє голуба,
Сріблом небаченим розсипаться,
Я ж твоя донечка і до тебе я
Лагідно, лагідно посміхаюся.
Я ж твоя донечка і до тебе я
Лагідно, лагідно посміхаюся.

Пісеньку, пісеньку, пісеньку свою
Подарувати тобі намагаюся.
Рідна матусенько, я тебе люблю,
І до тебе лагідно пригортаюся.
Рідна матусенько, я тебе люблю,
І до тебе лагідно пригортаюся.');
DELETE FROM song_links WHERE song_id = 'pisniua_419930';
DELETE FROM song_versions WHERE song_id = 'pisniua_419930';
DELETE FROM songs_fts WHERE song_id = 'pisniua_419930';
DELETE FROM songs WHERE id = 'pisniua_419930';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_419930','Вулиця','(Може все не так). Музика: Святослав Вакарчук Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Gm
Вулиця зачала нас
Cm
В дони голубих ночей
A
Димом над водою,
Жовтою рiкою, хей...

В дони голубих ночей
Вулиця любила нас.
Поки ми хотiли,
Поки ви лiпили з нас.

Десь там, де живе свiтло дискотек,
Gm
Може бiблiотек,
Cm
Може вiльних iдей.
Десь там, де живе свiтло дискотек,
Gm
Може бiблiотек,
Cm
Може вiльних iдей,
Gm
Може все не так...

А коли настане день -
Вулиця забуде нас.
Ми таки посмiли,
Ми таки змогли без вас.

Вулиця ховала нас
В дони голубих ночей
Димом над водою,
Жовтою рiкою, хей...

Десь там, де живе свiтло дискотек,
Може бiблiотек,
Може вiльних iдей.
Десь там, де живе свiтло дискотек,
Може бiблiотек,
Може вiльних iдей,
Може все не так...','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_419930'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_419930','Вулиця','Gm
Вулиця зачала нас
Cm
В дони голубих ночей
A
Димом над водою,
Жовтою рiкою, хей...

В дони голубих ночей
Вулиця любила нас.
Поки ми хотiли,
Поки ви лiпили з нас.

Десь там, де живе свiтло дискотек,
Gm
Може бiблiотек,
Cm
Може вiльних iдей.
Десь там, де живе свiтло дискотек,
Gm
Може бiблiотек,
Cm
Може вiльних iдей,
Gm
Може все не так...

А коли настане день -
Вулиця забуде нас.
Ми таки посмiли,
Ми таки змогли без вас.

Вулиця ховала нас
В дони голубих ночей
Димом над водою,
Жовтою рiкою, хей...

Десь там, де живе свiтло дискотек,
Може бiблiотек,
Може вiльних iдей.
Десь там, де живе свiтло дискотек,
Може бiблiотек,
Може вiльних iдей,
Може все не так...');
DELETE FROM song_links WHERE song_id = 'pisniua_4197981';
DELETE FROM song_versions WHERE song_id = 'pisniua_4197981';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4197981';
DELETE FROM songs WHERE id = 'pisniua_4197981';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4197981','Матроси','Слова: Вікторія Петрик. Виконує: Вікторія Петрик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Нам грайливо плескає океан,
За кермом усміхнений капітан,
Наші вітрила розкинуть крила!
Повний вперед!

Приспів:
На палубі матроси,
Танцюють матроси.
Повторюй разом з нами
Ці рухи прості!
А в небі альбатроси,
Летять альбатроси,
Тебе пригоди кличуть,
На місці не стій!

Всі скарби і чудеса на землі
Ми зберем на нашому кораблі,
Нам сонце сяє, друзів вітає!
Повний вперед!

Приспів.

Якщо дощик накрапає -
Парасольку відкривай,
Темно стане - включим фари,
В спеку вдягнем окуляри.
Диво команда! Ми всі супер!
Всім нам браво!
Не лякають нас негоди,
Подолаєм перешкоди!

Приспів. (2)','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4197981'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4197981','Матроси','Нам грайливо плескає океан,
За кермом усміхнений капітан,
Наші вітрила розкинуть крила!
Повний вперед!

Приспів:
На палубі матроси,
Танцюють матроси.
Повторюй разом з нами
Ці рухи прості!
А в небі альбатроси,
Летять альбатроси,
Тебе пригоди кличуть,
На місці не стій!

Всі скарби і чудеса на землі
Ми зберем на нашому кораблі,
Нам сонце сяє, друзів вітає!
Повний вперед!

Приспів.

Якщо дощик накрапає -
Парасольку відкривай,
Темно стане - включим фари,
В спеку вдягнем окуляри.
Диво команда! Ми всі супер!
Всім нам браво!
Не лякають нас негоди,
Подолаєм перешкоди!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_419634';
DELETE FROM song_versions WHERE song_id = 'pisniua_419634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_419634';
DELETE FROM songs WHERE id = 'pisniua_419634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_419634','У ритмі серця','Музика: Руслана Слова: Олександр Положинський. Виконує: Руслана','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я хочу, щоб моє дерево було зеленим,
Щоб зла сокира його ніколи не торкалася!
Щоб колискова бабусина знов прийшла до мене,
І щоб зі мною назавжди зосталася!
Я хочу, щоб мій будинок був високим і гарним,
Щоб поруч зі мною жили привітні люди!
Щоб кожне добре діло не лишалось марним,
І щоб було так завжди та усюди!
А я хочу, щоб моя річка була чистою.
Бо я влітку дуже люблю в ній купатися!
А ще хочу, щоб сонце посмішкою променистою
Не забувало кожного ранку зі мною вітатися!
А я просто люблю збирати квіти,
Дихати їхніми п''янкими ароматами!
Я кожному новому другу по-справжньому радітиму,
"Дай-да-на-да" з ним весело співатиму!

Приспів:
Є у кожного з нас
В серці мрія своя!
Знаю я, знаєш ти —
Це не сон!
То прийшов новий час —
Знаєш ти, знаю я —
Досягнути мети
Можна тільки разом!

А я хочу, щоб мої друзі ніколи не плакали,
І щоб кожен пишався великою родиною!
Ми всі вчимося жити, і мені не однаково,
Ким я стану, коли виросту.
Та головне — щоб був людиною!
А до мене прилетіла ластівка,
І гніздо лаштує під моєю стріхою!
Моє серце розривається від щастя,
І я готовий (-ва) поділитися своєю втіхою!
Над своєю землею пропливу разом
з хмарами...
Пролечу над нею разом з лелеками...
Чи можуть бути гори чужі такими гарними?
Чи можуть бути степи такими далекими?
Всі ми діти землі казково-чарівної!
Кожен з нас став її малою частиною!
Всі ми діти країни єдиної!
Всі ми є сім''єю єдиною!

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''cat:krasa-pryrody'', ''Пісні про дружбу'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_419634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_419634','У ритмі серця','Я хочу, щоб моє дерево було зеленим,
Щоб зла сокира його ніколи не торкалася!
Щоб колискова бабусина знов прийшла до мене,
І щоб зі мною назавжди зосталася!
Я хочу, щоб мій будинок був високим і гарним,
Щоб поруч зі мною жили привітні люди!
Щоб кожне добре діло не лишалось марним,
І щоб було так завжди та усюди!
А я хочу, щоб моя річка була чистою.
Бо я влітку дуже люблю в ній купатися!
А ще хочу, щоб сонце посмішкою променистою
Не забувало кожного ранку зі мною вітатися!
А я просто люблю збирати квіти,
Дихати їхніми п''янкими ароматами!
Я кожному новому другу по-справжньому радітиму,
"Дай-да-на-да" з ним весело співатиму!

Приспів:
Є у кожного з нас
В серці мрія своя!
Знаю я, знаєш ти —
Це не сон!
То прийшов новий час —
Знаєш ти, знаю я —
Досягнути мети
Можна тільки разом!

А я хочу, щоб мої друзі ніколи не плакали,
І щоб кожен пишався великою родиною!
Ми всі вчимося жити, і мені не однаково,
Ким я стану, коли виросту.
Та головне — щоб був людиною!
А до мене прилетіла ластівка,
І гніздо лаштує під моєю стріхою!
Моє серце розривається від щастя,
І я готовий (-ва) поділитися своєю втіхою!
Над своєю землею пропливу разом
з хмарами...
Пролечу над нею разом з лелеками...
Чи можуть бути гори чужі такими гарними?
Чи можуть бути степи такими далекими?
Всі ми діти землі казково-чарівної!
Кожен з нас став її малою частиною!
Всі ми діти країни єдиної!
Всі ми є сім''єю єдиною!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4200931';
DELETE FROM song_versions WHERE song_id = 'pisniua_4200931';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4200931';
DELETE FROM songs WHERE id = 'pisniua_4200931';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4200931','Лине пісня про Ісуса',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Лине пісня про Ісуса,
Про діла Його святі.
Я до нього пригорнуся
Щирим серцем у житті.

Все віддам я для Ісуса:
Серце, душу і життя.
І навіки з Ним зіллюся
В царстві вічного буття.

Про любов Його без міри
Лине пісня серед нас.
Буду я для Нього вірним
Всякий день і всякий час.

Нехай світ, як море, грізно
Клекотить, реве, шумить,
В небесах моя вітчизна
Непохитною стоїть

З Ним не страшні смерть й могила,
Серед горя і тривог
Ти зростив для мене крила,
Мій Спаситель і мій Бог.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4200931'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4200931','Лине пісня про Ісуса','Лине пісня про Ісуса,
Про діла Його святі.
Я до нього пригорнуся
Щирим серцем у житті.

Все віддам я для Ісуса:
Серце, душу і життя.
І навіки з Ним зіллюся
В царстві вічного буття.

Про любов Його без міри
Лине пісня серед нас.
Буду я для Нього вірним
Всякий день і всякий час.

Нехай світ, як море, грізно
Клекотить, реве, шумить,
В небесах моя вітчизна
Непохитною стоїть

З Ним не страшні смерть й могила,
Серед горя і тривог
Ти зростив для мене крила,
Мій Спаситель і мій Бог.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4200931_l1','pisniua_4200931','YouTube','https://www.youtube.com/watch?v=aThIOWW5s_Q','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4200931_l2','pisniua_4200931','YouTube','https://www.youtube.com/watch?v=jTzoezr0ELY','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4195838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4195838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4195838';
DELETE FROM songs WHERE id = 'pisniua_4195838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4195838','Котику сіренький','Українська народна пісня. Виконує: Вікторія Лук''янець','uk','ukraine_before_1917',NULL,NULL,NULL,'Українські народні пісні. Обробка Левка Колдуба','Котику сіренький,
Котику біленький,
Котку волохатий,
Не ходи по хаті,
Не ходи по хаті,
Не буди дитяти.
Дитя буде спати,
Котик — воркотати.

Ану, коте, котино,
Засни, мала дитино,
а ти , коте, не гуди,
спить дитина - не буди!
Ану, люлі-люлі,
налетіли гулі,
налетіли гулі
та й сіли на люлі.
Стали думать та гадать,
чим дитину дарувать:
золотії бильця -
колихать чорнобривця.

Ану, ну,ну,коти два,
та й ще сірі обидва.
Ану, коти, не гудіть,
спить дитина - не будіть!

Ой на кота - воркота,
на дитину - дрімота!','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4195838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4195838','Котику сіренький','Котику сіренький,
Котику біленький,
Котку волохатий,
Не ходи по хаті,
Не ходи по хаті,
Не буди дитяти.
Дитя буде спати,
Котик — воркотати.

Ану, коте, котино,
Засни, мала дитино,
а ти , коте, не гуди,
спить дитина - не буди!
Ану, люлі-люлі,
налетіли гулі,
налетіли гулі
та й сіли на люлі.
Стали думать та гадать,
чим дитину дарувать:
золотії бильця -
колихать чорнобривця.

Ану, ну,ну,коти два,
та й ще сірі обидва.
Ану, коти, не гудіть,
спить дитина - не будіть!

Ой на кота - воркота,
на дитину - дрімота!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4195838_l1','pisniua_4195838','YouTube','https://www.youtube.com/watch?v=yphMJTUyRH8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4199634';
DELETE FROM song_versions WHERE song_id = 'pisniua_4199634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4199634';
DELETE FROM songs WHERE id = 'pisniua_4199634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4199634','Гімн ДНЗ № 51','(Гімн "Козачата"). Музика: Микола Ведмедеря Слова: О. Яворська','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ми - маленькі козачата,
Станем справжніми людьми.
Ми кохаєм рідну пісню,
Україну любим ми!

Приспів:
Україна - наша мати,
І про неї вільний спів.
Ми - веселі козачата,
Ми - нащадки козаків!

Ми шануєм рідне слово,
В ньому вірність і краса.
Ми - маленькі козачата,
Наша пісня не згаса!

Приспів.

Україна - наша мати,
І про неї вільний спів.
Ми - веселі козачата,
Ми - нащадки козаків!
Ми - веселі козачата,
Ми - нащадки...
Ми - нащадки козаків!    Фонограма-мінус. Караоке','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4199634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4199634','Гімн ДНЗ № 51','Ми - маленькі козачата,
Станем справжніми людьми.
Ми кохаєм рідну пісню,
Україну любим ми!

Приспів:
Україна - наша мати,
І про неї вільний спів.
Ми - веселі козачата,
Ми - нащадки козаків!

Ми шануєм рідне слово,
В ньому вірність і краса.
Ми - маленькі козачата,
Наша пісня не згаса!

Приспів.

Україна - наша мати,
І про неї вільний спів.
Ми - веселі козачата,
Ми - нащадки козаків!
Ми - веселі козачата,
Ми - нащадки...
Ми - нащадки козаків!    Фонограма-мінус. Караоке');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4199634_l1','pisniua_4199634','YouTube','https://www.youtube.com/watch?v=_6pZonjvC9A','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4199535';
DELETE FROM song_versions WHERE song_id = 'pisniua_4199535';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4199535';
DELETE FROM songs WHERE id = 'pisniua_4199535';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4199535','Нащо мене породила','Українська народна пісня. Виконує: Фольктеатр Остапа Стахіва','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,NULL,'Нащо мене породила, ти старенькая мати
Що такий світ гарнесенький, я мушу вмирати (2)

Не один я тут вмираю, нас вмирає трьох братів
Що боролись за Вкраїну, проти ворогів (2)

Їх там били й катували, ще й палили їх вогнем
Заплакала Україна болючим плачем (2)

Висипайте їм могилу, висипайте їм всім трьом
Спочивайте вірні друзі, земля вам пером! (2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4199535'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4199535','Нащо мене породила','Нащо мене породила, ти старенькая мати
Що такий світ гарнесенький, я мушу вмирати (2)

Не один я тут вмираю, нас вмирає трьох братів
Що боролись за Вкраїну, проти ворогів (2)

Їх там били й катували, ще й палили їх вогнем
Заплакала Україна болючим плачем (2)

Висипайте їм могилу, висипайте їм всім трьом
Спочивайте вірні друзі, земля вам пером! (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_420083';
DELETE FROM song_versions WHERE song_id = 'pisniua_420083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_420083';
DELETE FROM songs WHERE id = 'pisniua_420083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_420083','Гей! Любо!','Слова: Олег Скрипка. Виконує: Воплі Відоплясова','uk','ukraine_1991',NULL,NULL,NULL,'bohdanko (модератор): З метою приведення пісні у відповідність із Правилами проекту "Українські пісні" із пісні вилучено лайливі слова - їх замінено на позначення (...).','Глядь на води бугор,
Гори - на воду, гладь.
Доню, веди мене,
Де вони, білі, сплять.

Сплять, голови сухі,
Ворони - вороги.
Згинем, де той бугор,
Згорнемо батоги!

Я батька не запитав,
Що буде далі, що?
Біля діда могили -
Ворожий монах.

Я б на гору ліг,
Де скелі голі, гладь.
Пісні до тих утіх
Будемо ми не мать!

Гей! Любо!
Гей! Гей!
Гей! Любо!
Гей! Гей!

(...), поганий гній,
(...) вороги,
Сучії пацюки!
Сокира його бери!

Гей! Не гони коней!
Хай! Пізно буде, хай!
Ти не буди мене,
Ти, мертвий, біля лягай!

Гей! Любо!
Гей! Гей!
Гей! Любо!','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_420083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_420083','Гей! Любо!','Глядь на води бугор,
Гори - на воду, гладь.
Доню, веди мене,
Де вони, білі, сплять.

Сплять, голови сухі,
Ворони - вороги.
Згинем, де той бугор,
Згорнемо батоги!

Я батька не запитав,
Що буде далі, що?
Біля діда могили -
Ворожий монах.

Я б на гору ліг,
Де скелі голі, гладь.
Пісні до тих утіх
Будемо ми не мать!

Гей! Любо!
Гей! Гей!
Гей! Любо!
Гей! Гей!

(...), поганий гній,
(...) вороги,
Сучії пацюки!
Сокира його бери!

Гей! Не гони коней!
Хай! Пізно буде, хай!
Ти не буди мене,
Ти, мертвий, біля лягай!

Гей! Любо!
Гей! Гей!
Гей! Любо!');
DELETE FROM song_links WHERE song_id = 'pisniua_4198134';
DELETE FROM song_versions WHERE song_id = 'pisniua_4198134';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4198134';
DELETE FROM songs WHERE id = 'pisniua_4198134';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4198134','Мамина порада','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ой, як буде важко, сину, у дорозі,
Ой, як горе здійме голову свою,
Пригадай, що я за тебе у тривозі,
Я тебе чекаю і люблю!

Приспів:
Нехай стежиночка хрещата
Веде до мами на поріг,
Бо найтепліша в мами хата
І найсмачніший в мами хліб!

Ой, як буде важко, доню, на стежині,
Бо життя пройти - не поле перейти,
Пригадай, дитино, мамину хатину
І якого роду, доню, ти!

Приспів.

Ой, як буде важко, донечко кохана,
Ти надію й віру забери у путь
І лети, дитино, у світи незнані,
Тільки рідну землю не забудь!

Приспів. (3)

І найсмачніший в мами хліб!','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4198134'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4198134','Мамина порада','Ой, як буде важко, сину, у дорозі,
Ой, як горе здійме голову свою,
Пригадай, що я за тебе у тривозі,
Я тебе чекаю і люблю!

Приспів:
Нехай стежиночка хрещата
Веде до мами на поріг,
Бо найтепліша в мами хата
І найсмачніший в мами хліб!

Ой, як буде важко, доню, на стежині,
Бо життя пройти - не поле перейти,
Пригадай, дитино, мамину хатину
І якого роду, доню, ти!

Приспів.

Ой, як буде важко, донечко кохана,
Ти надію й віру забери у путь
І лети, дитино, у світи незнані,
Тільки рідну землю не забудь!

Приспів. (3)

І найсмачніший в мами хліб!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4198134_l1','pisniua_4198134','YouTube','https://www.youtube.com/watch?v=ihb-Qc_TSz8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4205535';
DELETE FROM song_versions WHERE song_id = 'pisniua_4205535';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4205535';
DELETE FROM songs WHERE id = 'pisniua_4205535';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4205535','Овочі','Музика: Галина Лисенко Слова: Галина Лисенко','uk','ukraine_1991',NULL,NULL,'Збірка дитячих пісень до свята осені',NULL,'Завітала на город
Осінь-господиня -
Там лежала жовтая,     |
Наче сонце, диня.      | (2)

А зеленая капуста
Листя розпустила
І з квасолею разом     |
Хоровод водила!        | (2)

Розпашілися від танцю
Стиглі помідори,
Ой, скоріше вже несіть |
Всіх нас до комори!    | (2)

Огірочки, як солдати,
Гарно маршували.
Усі овочі разом        |
Осінь привітали!       | (2)    Фонограма-мінус (mp3, 128kbps)','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4205535'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4205535','Овочі','Завітала на город
Осінь-господиня -
Там лежала жовтая,     |
Наче сонце, диня.      | (2)

А зеленая капуста
Листя розпустила
І з квасолею разом     |
Хоровод водила!        | (2)

Розпашілися від танцю
Стиглі помідори,
Ой, скоріше вже несіть |
Всіх нас до комори!    | (2)

Огірочки, як солдати,
Гарно маршували.
Усі овочі разом        |
Осінь привітали!       | (2)    Фонограма-мінус (mp3, 128kbps)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4205535_l1','pisniua_4205535','YouTube','https://www.youtube.com/watch?v=QEj1tHA13Yg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4205535_l2','pisniua_4205535','YouTube','https://www.youtube.com/watch?v=1m-ylegFYR8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4205535_l3','pisniua_4205535','http://muzofun.net/','http://muzofun.net/','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_4203131';
DELETE FROM song_versions WHERE song_id = 'pisniua_4203131';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4203131';
DELETE FROM songs WHERE id = 'pisniua_4203131';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4203131','Я люблю Україну','Українська народна пісня. Виконує: Гайтана','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Де б не була, де б не мандрувала,
Багато в світі місць цікавих різних,
Всім завжди кажу з гордістю, що я
З квітучої, величної країни!

Приспів:
Я люблю мою країну - Україну,
За гостинність і красу твоїх земель,
Я люблю мою країну Україну,
За тепло і за любов в серцях людей!
Я люблю мою країну - Україну,
За мелодії і за твої пісні!
Я люблю мою країну - Україну
І до тебе завжди хочеться мені!

Я дякую тобі моя країно,
За спокій і за щирі відчуття,
Добра, любові, свята,
А в тебе їх багато,
Тому я так люблю своє життя,

Приспів','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4203131'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4203131','Я люблю Україну','Де б не була, де б не мандрувала,
Багато в світі місць цікавих різних,
Всім завжди кажу з гордістю, що я
З квітучої, величної країни!

Приспів:
Я люблю мою країну - Україну,
За гостинність і красу твоїх земель,
Я люблю мою країну Україну,
За тепло і за любов в серцях людей!
Я люблю мою країну - Україну,
За мелодії і за твої пісні!
Я люблю мою країну - Україну
І до тебе завжди хочеться мені!

Я дякую тобі моя країно,
За спокій і за щирі відчуття,
Добра, любові, свята,
А в тебе їх багато,
Тому я так люблю своє життя,

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_4205838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4205838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4205838';
DELETE FROM songs WHERE id = 'pisniua_4205838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4205838','Гімн Малої академії літератури і журналістики','Музика: Ярослав Боднар Слова: Володимир Ковалик','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Мала Академія з сяйвом Просвіти,
З''явилась на лоні стрімких полонин.
Прекрасне село верховинське - Рекіти.
Міжгірське об''єднання гір і долин.

Приспів:
Вперед Академіє! Юнь вже чекає...
Мов хвиля бентежна, вдаль котиться час,
День, наче веснянка цвіте, розцвітає,
Жде юнь в твоїх стінах успіх і прикрас!

Зове - накликає до справ України,
Піднятись наукою ген до заграв,
Прославити мудрістю розум людини,
Щоб жити, не питати у нікого прав.

Мов в бій поведе молоде покоління.
В нім сила народу, з любов''ю життя,
Щоб край осяло яскраве проміння
І були палкі для радінь почуття.

Приспів.

Хай поклик до вічних пізнань не стихає,
Не сохне криниця джерельних думок.
Нехай резонансно щодень накликає
Успіх, щоб до щастя зробити свій крок!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4205838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4205838','Гімн Малої академії літератури і журналістики','Мала Академія з сяйвом Просвіти,
З''явилась на лоні стрімких полонин.
Прекрасне село верховинське - Рекіти.
Міжгірське об''єднання гір і долин.

Приспів:
Вперед Академіє! Юнь вже чекає...
Мов хвиля бентежна, вдаль котиться час,
День, наче веснянка цвіте, розцвітає,
Жде юнь в твоїх стінах успіх і прикрас!

Зове - накликає до справ України,
Піднятись наукою ген до заграв,
Прославити мудрістю розум людини,
Щоб жити, не питати у нікого прав.

Мов в бій поведе молоде покоління.
В нім сила народу, з любов''ю життя,
Щоб край осяло яскраве проміння
І були палкі для радінь почуття.

Приспів.

Хай поклик до вічних пізнань не стихає,
Не сохне криниця джерельних думок.
Нехай резонансно щодень накликає
Успіх, щоб до щастя зробити свій крок!');
DELETE FROM song_links WHERE song_id = 'pisniua_4209083';
DELETE FROM song_versions WHERE song_id = 'pisniua_4209083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4209083';
DELETE FROM songs WHERE id = 'pisniua_4209083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4209083','Колись було літо','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Колись було літо, літо, а тепер зима,
Колись були файні хлопці, а тепер нема.
Колись були файні хлопці, самі паничі,      |
А тепер ся полишали самі смаркачі.          | (2)

Колись було літо, літо, а тепер зима,
Колись були файні дівки, а тепер нема.
Колись були файні дівки, всі як пампушки,   |
А тепер ся полишали шкіра та кістки.        | (2)

Колись було літо, літо, а тепер зима,
Колись були чоловіки, а тепер нема.
Колись були чоловіки, самі козаки,          |
А тепер ся полишали самі пияки.             | (2)

Колись було літо, літо, а тепер зима,
Колись були файні жінки, а тепер нема.
Колись були файні жінки, всі господарки,    |
А тепер ся полишали самі льодарки.          | (2)

Колись було літо, літо, а тепер зима,
Колись були файні діти, а тепер нема.
Колись були файні діти, хоч бери у рай,     |
А тепер чорнило глушать, ходять в ресторан. | (2)

Колись було літо, літо, а тепер зима,
Колись були файні тещі, а тепер нема.
Колись тещі дарували землю і коня,          |
А тепер не хочуть дати навіть "Жигуля".     | (2)

Колись було літо, літо, а тепер зима,
Колись були музиканти, а тепер нема.
Колись були музиканти, грали у дудки,       |
А тепер усе пропили, дують у фляшки.        | (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4209083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4209083','Колись було літо','Колись було літо, літо, а тепер зима,
Колись були файні хлопці, а тепер нема.
Колись були файні хлопці, самі паничі,      |
А тепер ся полишали самі смаркачі.          | (2)

Колись було літо, літо, а тепер зима,
Колись були файні дівки, а тепер нема.
Колись були файні дівки, всі як пампушки,   |
А тепер ся полишали шкіра та кістки.        | (2)

Колись було літо, літо, а тепер зима,
Колись були чоловіки, а тепер нема.
Колись були чоловіки, самі козаки,          |
А тепер ся полишали самі пияки.             | (2)

Колись було літо, літо, а тепер зима,
Колись були файні жінки, а тепер нема.
Колись були файні жінки, всі господарки,    |
А тепер ся полишали самі льодарки.          | (2)

Колись було літо, літо, а тепер зима,
Колись були файні діти, а тепер нема.
Колись були файні діти, хоч бери у рай,     |
А тепер чорнило глушать, ходять в ресторан. | (2)

Колись було літо, літо, а тепер зима,
Колись були файні тещі, а тепер нема.
Колись тещі дарували землю і коня,          |
А тепер не хочуть дати навіть "Жигуля".     | (2)

Колись було літо, літо, а тепер зима,
Колись були музиканти, а тепер нема.
Колись були музиканти, грали у дудки,       |
А тепер усе пропили, дують у фляшки.        | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4209083_l1','pisniua_4209083','YouTube','https://www.youtube.com/watch?v=aHtfcFkr6ss','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4209083_l2','pisniua_4209083','YouTube','https://www.youtube.com/watch?v=8m2p02i5GxM','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4209083_l3','pisniua_4209083','YouTube','https://www.youtube.com/watch?v=NvZRoN80xyg','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_420685';
DELETE FROM song_versions WHERE song_id = 'pisniua_420685';
DELETE FROM songs_fts WHERE song_id = 'pisniua_420685';
DELETE FROM songs WHERE id = 'pisniua_420685';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_420685','Горілка','Українська народна пісня. Виконує: Гудаки','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Гей, горілко, біла-біла,
Гей, горілко, біла-біла,
Гей, горілко, біла-біла,
Я б тебе лижкою їла!

Я за тебе срібло, злото,
Я за тебе срібло, злото,
Я за тебе срібло, злото,
А ти мене бух в болото!

Я за тебе срібняки,
Я за тебе срiбняки,
Я за тебе срібняки,
А ти мене в будяки!

Гей, горілко з буряка,
Гей, горілко з буряка,
Гей, горілко з буряка,
Робиш з мене дурака!

Я за тобов аж до Львова,
Я за тобов аж до Львова,
Я за тобов аж до Львова,
А ти мене бух до рова!

Я за тобов до Варшави,
Я за тобов до Варшави,
Я за тобов до Варшави,
А ти мене бух до трави!','[''pisni.org.ua'', ''cat:narodni'', ''cat:zhartivlyvi'', ''Народні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_420685'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_420685','Горілка','Гей, горілко, біла-біла,
Гей, горілко, біла-біла,
Гей, горілко, біла-біла,
Я б тебе лижкою їла!

Я за тебе срібло, злото,
Я за тебе срібло, злото,
Я за тебе срібло, злото,
А ти мене бух в болото!

Я за тебе срібняки,
Я за тебе срiбняки,
Я за тебе срібняки,
А ти мене в будяки!

Гей, горілко з буряка,
Гей, горілко з буряка,
Гей, горілко з буряка,
Робиш з мене дурака!

Я за тобов аж до Львова,
Я за тобов аж до Львова,
Я за тобов аж до Львова,
А ти мене бух до рова!

Я за тобов до Варшави,
Я за тобов до Варшави,
Я за тобов до Варшави,
А ти мене бух до трави!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_420685_l1','pisniua_420685','YouTube','https://www.youtube.com/watch?v=_vm3pkr5JRk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_420685_l2','pisniua_420685','YouTube','https://www.youtube.com/watch?v=zuxAutWwNsI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_420685_l3','pisniua_420685','YouTube','https://www.youtube.com/watch?v=lo7J719tiaQ','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_420685_l4','pisniua_420685','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_4203632';
DELETE FROM song_versions WHERE song_id = 'pisniua_4203632';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4203632';
DELETE FROM songs WHERE id = 'pisniua_4203632';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4203632','Віддавала мати доньку','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Віддавала мати доньку
На чужую сторононьку,
А, як віддавала            |
Та й наказувала -          |
Не йди, доню, до домоньку! | (2)

Але ж доня не стерпіла,
Та й у рочок прилетіла.
Перекинулася
Сивой зозуленькой,
В сад вишневий вона сіла.

Сіла вона собі, сіла
Та й стала вона кувати:
Вийди, моя ненько,         |
Як я вже близенько,        |
Вийди, моя рідна мати.     | (2)

А, як вийшла рідна мати,
На порозі вона стала,
Та як нагадала,            |
Що доньку віддала -        |
Гірко-гірко заплакала.     | (2)

Віддавала мати доньку
На чужую сторононьку,
А, як віддавала            |
Та й наказувала -          |
Не йди, доню, до домоньку! | (2)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4203632'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4203632','Віддавала мати доньку','Віддавала мати доньку
На чужую сторононьку,
А, як віддавала            |
Та й наказувала -          |
Не йди, доню, до домоньку! | (2)

Але ж доня не стерпіла,
Та й у рочок прилетіла.
Перекинулася
Сивой зозуленькой,
В сад вишневий вона сіла.

Сіла вона собі, сіла
Та й стала вона кувати:
Вийди, моя ненько,         |
Як я вже близенько,        |
Вийди, моя рідна мати.     | (2)

А, як вийшла рідна мати,
На порозі вона стала,
Та як нагадала,            |
Що доньку віддала -        |
Гірко-гірко заплакала.     | (2)

Віддавала мати доньку
На чужую сторононьку,
А, як віддавала            |
Та й наказувала -          |
Не йди, доню, до домоньку! | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4207889';
DELETE FROM song_versions WHERE song_id = 'pisniua_4207889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4207889';
DELETE FROM songs WHERE id = 'pisniua_4207889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4207889','Пісня про кухарку','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://mxbest.ru',NULL,'На весіллі добре гуляли,
Гарні там столи накривали,
Тож давайте ми заспіваєм,
Про кухарку ми заспіваєм!

Приспів:
Кухарка темну нічку недоспала,
Кухарка на весілля готувала,
Щоби аж столи вгинались |
Вмілі руки постарались! | (2)

Не буває літа без сонця,
Не буває діда з віконця,
Гарнеє застілля - без чашки
А весілля - та й без кухарки!

Приспів.

Кухарці здоров''я бажаєм,
За її талант поважаєм.
Зичимо їй вік готувати
І добрих людей частувати!

Приспів.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4207889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4207889','Пісня про кухарку','На весіллі добре гуляли,
Гарні там столи накривали,
Тож давайте ми заспіваєм,
Про кухарку ми заспіваєм!

Приспів:
Кухарка темну нічку недоспала,
Кухарка на весілля готувала,
Щоби аж столи вгинались |
Вмілі руки постарались! | (2)

Не буває літа без сонця,
Не буває діда з віконця,
Гарнеє застілля - без чашки
А весілля - та й без кухарки!

Приспів.

Кухарці здоров''я бажаєм,
За її талант поважаєм.
Зичимо їй вік готувати
І добрих людей частувати!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_421030';
DELETE FROM song_versions WHERE song_id = 'pisniua_421030';
DELETE FROM songs_fts WHERE song_id = 'pisniua_421030';
DELETE FROM songs WHERE id = 'pisniua_421030';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_421030','Дай же вам, Боже, щастя, здоров''я','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір з колядов прийшли.
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір Христос родився.
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір звізда засяла.
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір прийшли д'' нас царі,
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір Ірод вгнівився.
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір дітям помстився.
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір ангел з''явився.
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір славу співають.
Дай, Боже.','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_421030'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_421030','Дай же вам, Боже, щастя, здоров''я','Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір з колядов прийшли.
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір Христос родився.
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір звізда засяла.
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір прийшли д'' нас царі,
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір Ірод вгнівився.
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір дітям помстився.
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір ангел з''явився.
Дай, Боже.

Дай же вам, Боже, щастя, здоров''я.
В той Святий вечір славу співають.
Дай, Боже.');
DELETE FROM song_links WHERE song_id = 'pisniua_4209034';
DELETE FROM song_versions WHERE song_id = 'pisniua_4209034';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4209034';
DELETE FROM songs WHERE id = 'pisniua_4209034';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4209034','Молитва за Чорнобиль','Музика: Вячеслав Кукоба Слова: Вячеслав Кукоба. Виконує: Антоніна Овчаренко','uk','ukraine_1991',NULL,NULL,NULL,'пісню присвячено 25-річчю Чорнобильської трагедії','Боже, Ти любов і надія,
Ти єдиний, хто не зрадить нас,
Боже, віра серце зігріє,
Як прийде сповідування час!
Боже, Ти не дай нам згоріти,
За гріхи в Чорнобильськім вогні,
Боже, ми - Твої любі діти,
Про спасіння молимось Тобі!

Святий Боже, Святий Кріпкий,
Святий Безсмертний,
Помилуй нас!

Боже, Ти - життя воскресіння,
Збав, Господь від болю і гріхів,
Боже, Ти воскрес во спасіння,
Щоб із Богом в серці кожен жив!
Боже, захисти і помилуй,
І страшенне вогнище згаси,
Боже, відроди в душах силу,
Нашу віру, Боже, укріпи!

Святий Боже, Святий Кріпкий,
Святий Безсмертний,
Помилуй нас!','[''pisni.org.ua'', ''cat:chornobyl'', ''Чорнобильська катастрофа: пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4209034'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4209034','Молитва за Чорнобиль','Боже, Ти любов і надія,
Ти єдиний, хто не зрадить нас,
Боже, віра серце зігріє,
Як прийде сповідування час!
Боже, Ти не дай нам згоріти,
За гріхи в Чорнобильськім вогні,
Боже, ми - Твої любі діти,
Про спасіння молимось Тобі!

Святий Боже, Святий Кріпкий,
Святий Безсмертний,
Помилуй нас!

Боже, Ти - життя воскресіння,
Збав, Господь від болю і гріхів,
Боже, Ти воскрес во спасіння,
Щоб із Богом в серці кожен жив!
Боже, захисти і помилуй,
І страшенне вогнище згаси,
Боже, відроди в душах силу,
Нашу віру, Боже, укріпи!

Святий Боже, Святий Кріпкий,
Святий Безсмертний,
Помилуй нас!');
DELETE FROM song_links WHERE song_id = 'pisniua_4207287';
DELETE FROM song_versions WHERE song_id = 'pisniua_4207287';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4207287';
DELETE FROM songs WHERE id = 'pisniua_4207287';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4207287','Прости мене, Боже','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'збірка релігійних, церковних пісень',NULL,'Прости мене, Боже, прости я молю,
Прости, що так пізно до тебе я йду,
Прости, що раніше тебе не пізнав,      |
Що іншого друга собі я обрав.          | (2)

Прости, що мій розум тебе відкидав,
Прости, що тебе я страждать заставляв,
Прости, що я рани тобі причиняв,       |
Що, знов, на хресті я Тебе розпинав.   | (2)

Но Ти до життя пробудив, знов, мене
І серце любов''ю зігрів Ти моє,
І очі відкрив Ти на пройдений шлях,    |
Не дав мені впасти в жорстоких гріхах. | (2)

І ось я сьогодні в молитвах стою,
Веди мене, Боже, за руку свою,
Життя я присвячую нині тобі,           |
Ти тільки не дай мені впасти в біді.   | (2)

А я обіцяю Тебе прославлять,
І словом, і ділом Тебе величать,
Щоб бачили люди, як спас Ти мене,      |
Щоб так, як і я, всі прийняли Тебе.    | (2)

Прости мене, Боже, прости я молю....','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4207287'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4207287','Прости мене, Боже','Прости мене, Боже, прости я молю,
Прости, що так пізно до тебе я йду,
Прости, що раніше тебе не пізнав,      |
Що іншого друга собі я обрав.          | (2)

Прости, що мій розум тебе відкидав,
Прости, що тебе я страждать заставляв,
Прости, що я рани тобі причиняв,       |
Що, знов, на хресті я Тебе розпинав.   | (2)

Но Ти до життя пробудив, знов, мене
І серце любов''ю зігрів Ти моє,
І очі відкрив Ти на пройдений шлях,    |
Не дав мені впасти в жорстоких гріхах. | (2)

І ось я сьогодні в молитвах стою,
Веди мене, Боже, за руку свою,
Життя я присвячую нині тобі,           |
Ти тільки не дай мені впасти в біді.   | (2)

А я обіцяю Тебе прославлять,
І словом, і ділом Тебе величать,
Щоб бачили люди, як спас Ти мене,      |
Щоб так, як і я, всі прийняли Тебе.    | (2)

Прости мене, Боже, прости я молю....');
DELETE FROM song_links WHERE song_id = 'pisniua_4206632';
DELETE FROM song_versions WHERE song_id = 'pisniua_4206632';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4206632';
DELETE FROM songs WHERE id = 'pisniua_4206632';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4206632','Христос родився у Вифлеємі','Українська народна пісня. Виконує: Нескорені','uk','ukr_ssr_1919_1991',NULL,NULL,'Записала Семенко С. 07.02.2011 р. від учасників хору "Нескорені", м. Львів.',NULL,'Христос родився у Вифлеємі
В стаєнці.     |(2)
Ним утішають всі українці
На землі.      |(2)

Ми Тебе просим і Тя благаєм,
Хоч в ярмі,    |(2)
За тих, що плачуть, плачуть і ридають
в Сибірі.      |(2)

Степан Бандера хоч у тюрмі,
Він верне,     |(2)
Відіб''є нам Київ, розіб''є комуну
Раз на все.    |(2)

Затрублять труби, задзвонять дзвони,
В слушний час. |(2)
Ми йдемо до бою, Ісусе рожденний
Рятуй нас.     |(2)','[''pisni.org.ua'', ''cat:istorychni'', ''cat:povstanski'', ''cat:suspilno-politychni'', ''Історичні пісні'', ''Повстанські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4206632'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4206632','Христос родився у Вифлеємі','Христос родився у Вифлеємі
В стаєнці.     |(2)
Ним утішають всі українці
На землі.      |(2)

Ми Тебе просим і Тя благаєм,
Хоч в ярмі,    |(2)
За тих, що плачуть, плачуть і ридають
в Сибірі.      |(2)

Степан Бандера хоч у тюрмі,
Він верне,     |(2)
Відіб''є нам Київ, розіб''є комуну
Раз на все.    |(2)

Затрублять труби, задзвонять дзвони,
В слушний час. |(2)
Ми йдемо до бою, Ісусе рожденний
Рятуй нас.     |(2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4206632_l1','pisniua_4206632','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4212034';
DELETE FROM song_versions WHERE song_id = 'pisniua_4212034';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4212034';
DELETE FROM songs WHERE id = 'pisniua_4212034';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4212034','Приїдь, товаришу','Музика: Віктор Ліфанчук Слова: Микола Кучеренко. Виконує: Віктор Ліфанчук','uk','ukraine_1991',NULL,NULL,'Віктор Ліфанчук',NULL,'Приїдь, товаришу, приїдь,
Забудь всі термінові справи,
Щоб вчасно будь на переправі,
Де не міняють вже коней.

Приїдь, товаришу, приїдь,
Бо вже повиростали діти,
А ми ще вміємо радіти,
Коли стрічаємо гостей.

Приїдь, товаришу, приїдь,
Ми так давно не зустрічались.
В думках ми часто обіймались,
Але не бачили очей.

Приїдь, товаришу, приїдь,
Нам є про що погомоніти,
Адже ми вмієм чесно жити -
Нам не ховатись від людей.

Приїдь, товаришу, приїдь,
Бо підростають вже онуки
І недалеко час розлуки...
Приїдь, товаришу, приїдь!','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4212034'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4212034','Приїдь, товаришу','Приїдь, товаришу, приїдь,
Забудь всі термінові справи,
Щоб вчасно будь на переправі,
Де не міняють вже коней.

Приїдь, товаришу, приїдь,
Бо вже повиростали діти,
А ми ще вміємо радіти,
Коли стрічаємо гостей.

Приїдь, товаришу, приїдь,
Ми так давно не зустрічались.
В думках ми часто обіймались,
Але не бачили очей.

Приїдь, товаришу, приїдь,
Нам є про що погомоніти,
Адже ми вмієм чесно жити -
Нам не ховатись від людей.

Приїдь, товаришу, приїдь,
Бо підростають вже онуки
І недалеко час розлуки...
Приїдь, товаришу, приїдь!');
DELETE FROM song_links WHERE song_id = 'pisniua_4207230';
DELETE FROM song_versions WHERE song_id = 'pisniua_4207230';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4207230';
DELETE FROM songs WHERE id = 'pisniua_4207230';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4207230','Слава Богу за все',NULL,'uk','ukraine_1991',NULL,NULL,'збірка церковних пісень',NULL,'Десь колись вже давно на високій горі
Жив премудрий досвідчений старець.
Часто він повторяв і завжди поучав -
Слава Богу за смуток і радість!
Слава Богу за все, слава Богу за все,
Слава Богу за смуток і радість!

Може, часом тобі хтось погане сказав,
Чи з тобою недобре повівся.
Знай про це, дорогий, що це Бог допустив,
З неприятелем швидко мирися.
Слава Богу за все, слава Богу за все,
Слава Богу за смуток і радість!

Якщо ти захворів і знеміг в боротьбі,
І не можеш з постелі піднятись,
Є місця на добро, це за гріх нам дано,
Нарікати не треба й боятись.
Слава Богу за все, слава Богу за все,
Слава Богу за смуток і радість!

Коли ближній тебе очорнив, засудив,
Не піддайся журбі і печалі.
Знай, Господь для спасіння це все призначив,
Щоб прощали й були досконалі.
Слава Богу за все, слава Богу за все,
Слава Богу за смуток і радість!

Як спокуса прийде, що твій хрест заважкий,
І нести його ти вже не в силі,
Знай, коли б ти не зміг, то Господь би й не дав,
Тож приймай все в любові і мирі.
Слава Богу за все, слава Богу за все,
Слава Богу за смуток і радість!','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''Церковні пісні'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4207230'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4207230','Слава Богу за все','Десь колись вже давно на високій горі
Жив премудрий досвідчений старець.
Часто він повторяв і завжди поучав -
Слава Богу за смуток і радість!
Слава Богу за все, слава Богу за все,
Слава Богу за смуток і радість!

Може, часом тобі хтось погане сказав,
Чи з тобою недобре повівся.
Знай про це, дорогий, що це Бог допустив,
З неприятелем швидко мирися.
Слава Богу за все, слава Богу за все,
Слава Богу за смуток і радість!

Якщо ти захворів і знеміг в боротьбі,
І не можеш з постелі піднятись,
Є місця на добро, це за гріх нам дано,
Нарікати не треба й боятись.
Слава Богу за все, слава Богу за все,
Слава Богу за смуток і радість!

Коли ближній тебе очорнив, засудив,
Не піддайся журбі і печалі.
Знай, Господь для спасіння це все призначив,
Щоб прощали й були досконалі.
Слава Богу за все, слава Богу за все,
Слава Богу за смуток і радість!

Як спокуса прийде, що твій хрест заважкий,
І нести його ти вже не в силі,
Знай, коли б ти не зміг, то Господь би й не дав,
Тож приймай все в любові і мирі.
Слава Богу за все, слава Богу за все,
Слава Богу за смуток і радість!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4207230_l1','pisniua_4207230','YouTube','https://www.youtube.com/watch?v=b9Mu9VAf7bg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4207134';
DELETE FROM song_versions WHERE song_id = 'pisniua_4207134';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4207134';
DELETE FROM songs WHERE id = 'pisniua_4207134';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4207134','Спасибі, солдати','Музика: Іван Карабиць Слова: Борис Олійник','uk','ukraine_1991',NULL,NULL,NULL,NULL,'От і знову щебече весна
Коло нашої хати,
До травневого столу
Зійшлись посивілі солдати.
А при тихім вікні
Стала пам''ять війни,
Вічна пам''ять війни...
Обнялися по-братськи,
Неначе побачились вперше,
Пожурилися трохи,
Що стало з літами їх менше.
Посміхнулись весні,
Що зростають сини,
Виростають сини,
Як надія і пам''ять!

Приспів:
Спасибі, солдати, за подвиг століть,
Якому нема і не буде ціни,
За право і щастя родитись, і жить,
І сіяти жито на мирні лани!
А роки летять, як сніг сивини,
І юність не вернеш з війни.
А ваша зоря безсмертно сія,
Як в битвах врятований світ!

Ми вклоняємось вам
По-синівськи доземно, солдати,
Пам''ятаємо ваші
Святі перемоги і втрати,
Тільки ж ви не спішіть
У останній похід
Тільки ж вічно живіть!
Ми вам рясту у ноги
Постелем від хати до хати,
Надаруєм онуків,
Немов ластів''яток, до свята.
Тільки в бронзу й граніт
Не спішіть:
Ми живим вам даруєм
Нев''янучу пам''ять!

Приспів. (2)','[''pisni.org.ua'', ''cat:viyskovi'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4207134'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4207134','Спасибі, солдати','От і знову щебече весна
Коло нашої хати,
До травневого столу
Зійшлись посивілі солдати.
А при тихім вікні
Стала пам''ять війни,
Вічна пам''ять війни...
Обнялися по-братськи,
Неначе побачились вперше,
Пожурилися трохи,
Що стало з літами їх менше.
Посміхнулись весні,
Що зростають сини,
Виростають сини,
Як надія і пам''ять!

Приспів:
Спасибі, солдати, за подвиг століть,
Якому нема і не буде ціни,
За право і щастя родитись, і жить,
І сіяти жито на мирні лани!
А роки летять, як сніг сивини,
І юність не вернеш з війни.
А ваша зоря безсмертно сія,
Як в битвах врятований світ!

Ми вклоняємось вам
По-синівськи доземно, солдати,
Пам''ятаємо ваші
Святі перемоги і втрати,
Тільки ж ви не спішіть
У останній похід
Тільки ж вічно живіть!
Ми вам рясту у ноги
Постелем від хати до хати,
Надаруєм онуків,
Немов ластів''яток, до свята.
Тільки в бронзу й граніт
Не спішіть:
Ми живим вам даруєм
Нев''янучу пам''ять!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4211338';
DELETE FROM song_versions WHERE song_id = 'pisniua_4211338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4211338';
DELETE FROM songs WHERE id = 'pisniua_4211338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4211338','Весела пісня','Музика: Віктор Бронюк Слова: Віктор Бронюк. Виконує: Т.І.К. (Тік)','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Гупає в грудях малий барабан,
Труби трублять, грає баян,
Радісно пісня весела лунає,
"ТІК" звучить, для вас Вітька співає!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!

Мені пропонують піти в депутати,
А я хочу разом із вами співати!
Вся моя влада і весь мій закон -
Пісня, баян, і я кричу в мікрофон:
Що буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!

Гупає в грудях малий барабан,
Труби трублять, грає баян,
Радісно пісня весела лунає,
"ТІК" звучить, для вас Вітька співає,
Що буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4211338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4211338','Весела пісня','Гупає в грудях малий барабан,
Труби трублять, грає баян,
Радісно пісня весела лунає,
"ТІК" звучить, для вас Вітька співає!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!

Мені пропонують піти в депутати,
А я хочу разом із вами співати!
Вся моя влада і весь мій закон -
Пісня, баян, і я кричу в мікрофон:
Що буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!

Гупає в грудях малий барабан,
Труби трублять, грає баян,
Радісно пісня весела лунає,
"ТІК" звучить, для вас Вітька співає,
Що буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!
Буде щастя! Гуляй, веселись,
Сьодня Вітька при власті!');
DELETE FROM song_links WHERE song_id = 'pisniua_421333';
DELETE FROM song_versions WHERE song_id = 'pisniua_421333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_421333';
DELETE FROM songs WHERE id = 'pisniua_421333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_421333','Не сумуй, дівчино мила','(На Івана, на Купала). Музика: Ярослав Виджак Слова: Олександр Гринько','uk','ukraine_before_1917',NULL,NULL,'Ой на Івана та й на Купайла...- Львів: Студентське братство ЛНУ ім.І.Франка, 2002',NULL,'Не сумуй, дівчино мила,  не страждай,
та вінки у бистру воду   не кидай.
Це нічого, що кохання   не іде -
подивись у бистру воду   на свою чудову вроду:
Прийде час - воно тебе знайде.

Приспів:
На Івана, на Купала   дівча нічку чарувало
і віночки   дарувало   течії.
А скрипочка тихо плаче, тужить серденько гаряче:
Де ти, де, палкий юначе? - Приходи!

Не потрібно жалювати в самоті -
прийде ще до тебе щастя у житті.
Краще, дівчинонько мила, посміхнись -
чарівна весни природа і твоя казкова врода
ніби у вінок переплелись.

Приспів.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_421333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_421333','Не сумуй, дівчино мила','Не сумуй, дівчино мила,  не страждай,
та вінки у бистру воду   не кидай.
Це нічого, що кохання   не іде -
подивись у бистру воду   на свою чудову вроду:
Прийде час - воно тебе знайде.

Приспів:
На Івана, на Купала   дівча нічку чарувало
і віночки   дарувало   течії.
А скрипочка тихо плаче, тужить серденько гаряче:
Де ти, де, палкий юначе? - Приходи!

Не потрібно жалювати в самоті -
прийде ще до тебе щастя у житті.
Краще, дівчинонько мила, посміхнись -
чарівна весни природа і твоя казкова врода
ніби у вінок переплелись.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4211930';
DELETE FROM song_versions WHERE song_id = 'pisniua_4211930';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4211930';
DELETE FROM songs WHERE id = 'pisniua_4211930';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4211930','Аскольдів глас','Музика: Дмитро Гречин Слова: Люба Кок. Виконує: Любов Кокоєва','uk','ukraine_1991',NULL,NULL,'VІ фестиваль - конкурс духовної пісні Аскольдів Глас',NULL,'Княгиня Ольга, князь Влодимир -
Великі руськії князі,
Котрі боролись за Вкраїну,
Котрих боялись вороги.
Та був у них великий попередник
Аскольдом - князем звався у миру,
Господня заповідь - єдиний радник,
Тому здолати міг він будь-яку біду.

Приспів:
Аскольдів глас - велика Божа воля,
Що послана з тобою нам з небес,
У неї вірить буду прославлять -
Це наша світла доля!

Нас споконвіку били - убивали,
Рубали нашу віру на корню,
В тіла і душі цвяхи нам вбивали,
Та відстояли віру ми свою.
Пройшли віки, змінились покоління,
А віра наша тверда та міцна
Залишиться в серцях вона назавжди,
Як мудрий князь Аскольд заповідав.

Приспів.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4211930'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4211930','Аскольдів глас','Княгиня Ольга, князь Влодимир -
Великі руськії князі,
Котрі боролись за Вкраїну,
Котрих боялись вороги.
Та був у них великий попередник
Аскольдом - князем звався у миру,
Господня заповідь - єдиний радник,
Тому здолати міг він будь-яку біду.

Приспів:
Аскольдів глас - велика Божа воля,
Що послана з тобою нам з небес,
У неї вірить буду прославлять -
Це наша світла доля!

Нас споконвіку били - убивали,
Рубали нашу віру на корню,
В тіла і душі цвяхи нам вбивали,
Та відстояли віру ми свою.
Пройшли віки, змінились покоління,
А віра наша тверда та міцна
Залишиться в серцях вона назавжди,
Як мудрий князь Аскольд заповідав.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4212632';
DELETE FROM song_versions WHERE song_id = 'pisniua_4212632';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4212632';
DELETE FROM songs WHERE id = 'pisniua_4212632';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4212632','Пісня емігранта','Музика: Ярослава Садовська Слова: Ярослава Садовська. Виконує: Надзбручани','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Візьму я в руки свою гітару,
В ній я знайду тужливу струну
І заспіваю про неньку стару,
І Україну - свою сторону.

Приспів:
Сумний той час розлуки,
Сумна розлуки мить...
Візьму гітару в руки,
Хай душу звеселить.
Мені ти - друг і пара,
У нас нема розлук,
Моя любов - гітара,
Ти - мій надійний друг!

Грає гітара журливим тоном,
Вона, як сестра у домі чужім,
Бо я далеко тут, за кордоном,
Все тут чуже, мов в світі глухім.

Приспів.

Нема тут вини моєї у тому,
Що я покинув свій рідний край,
Що я працюю в світі чужому,
Душа моя рветься додому, мов в рай.

Приспів.

Рахую дні, рахую я ночі,
Дивлюсь я у слід журавлинним ключам,
Сняться мені ті мамині очі,
Нема кінця тут дням і ночам...

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4212632'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4212632','Пісня емігранта','Візьму я в руки свою гітару,
В ній я знайду тужливу струну
І заспіваю про неньку стару,
І Україну - свою сторону.

Приспів:
Сумний той час розлуки,
Сумна розлуки мить...
Візьму гітару в руки,
Хай душу звеселить.
Мені ти - друг і пара,
У нас нема розлук,
Моя любов - гітара,
Ти - мій надійний друг!

Грає гітара журливим тоном,
Вона, як сестра у домі чужім,
Бо я далеко тут, за кордоном,
Все тут чуже, мов в світі глухім.

Приспів.

Нема тут вини моєї у тому,
Що я покинув свій рідний край,
Що я працюю в світі чужому,
Душа моя рветься додому, мов в рай.

Приспів.

Рахую дні, рахую я ночі,
Дивлюсь я у слід журавлинним ключам,
Сняться мені ті мамині очі,
Нема кінця тут дням і ночам...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4212333';
DELETE FROM song_versions WHERE song_id = 'pisniua_4212333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4212333';
DELETE FROM songs WHERE id = 'pisniua_4212333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4212333','Журавка','Музика: Семен Карпа Слова: Т. Василько','uk','ukraine_1991',NULL,NULL,'Авторське подання. Т. Василько. Моя пісня. Львів: Сполом, 120 с.',NULL,'Журавиться журо-журавка
Не в рідній - чужій чужині,
Як тая вербиченька-мавка
Згорає у думі-іржі...

Приспів:
Не пташка, не ягода згіркла, -
То жінка-журавка-жура -
Калини обламана гілка
В чужині чужій догора...

Не сходить так довго те сонце,
Що вже на Вкраїну зійшло,
І ніч - достигаючий сонях -
Коробить зболіле чоло.

Приспів.

Зозулі дитинства, ой, рідні,
Кому куєте ви літа?!? -
Калина цвіте в Україні,
А цвіт її в''яне в світах...

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4212333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4212333','Журавка','Журавиться журо-журавка
Не в рідній - чужій чужині,
Як тая вербиченька-мавка
Згорає у думі-іржі...

Приспів:
Не пташка, не ягода згіркла, -
То жінка-журавка-жура -
Калини обламана гілка
В чужині чужій догора...

Не сходить так довго те сонце,
Що вже на Вкраїну зійшло,
І ніч - достигаючий сонях -
Коробить зболіле чоло.

Приспів.

Зозулі дитинства, ой, рідні,
Кому куєте ви літа?!? -
Калина цвіте в Україні,
А цвіт її в''яне в світах...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_42131';
DELETE FROM song_versions WHERE song_id = 'pisniua_42131';
DELETE FROM songs_fts WHERE song_id = 'pisniua_42131';
DELETE FROM songs WHERE id = 'pisniua_42131';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_42131','Сильний вітер',NULL,'uk','ukraine_1991',NULL,NULL,'Співаник для таборів Марійської Дружини',NULL,'Ой у полі сильний вітер, сильний вітер
Поламав він ніжні трави, білі квіти.
І чому це, і чому це все так сталось,
Що моє кохання з милим розірвалось.

Припів:
Сильний вітер, сильний вітер, сильний вітер,
Не ламай ти в чистім полі білі квіти
Рознеси моє страждання, поверни серцю кохання
Em
Сильний вітер, сильний вітер, сильний вітер

Ой за гаєм ясний місяць засвітився,
Ой у полі дві стежини розійшлися.
А твоя стежина круто повернула,
А моя в глибоких травах потонула.

Приспів.

І тепер ти, милий мій, мені признайся,
І в полон ти, сильний вітре мені здайся.
І скажіть мені обоє, як це сталось,
Що моє кохання з милим розірвалось?

Приспів.','[''pisni.org.ua'', ''cat:dances'', ''cat:waltzes'', ''Пісні до танцю'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_42131'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_42131','Сильний вітер','Ой у полі сильний вітер, сильний вітер
Поламав він ніжні трави, білі квіти.
І чому це, і чому це все так сталось,
Що моє кохання з милим розірвалось.

Припів:
Сильний вітер, сильний вітер, сильний вітер,
Не ламай ти в чистім полі білі квіти
Рознеси моє страждання, поверни серцю кохання
Em
Сильний вітер, сильний вітер, сильний вітер

Ой за гаєм ясний місяць засвітився,
Ой у полі дві стежини розійшлися.
А твоя стежина круто повернула,
А моя в глибоких травах потонула.

Приспів.

І тепер ти, милий мій, мені признайся,
І в полон ти, сильний вітре мені здайся.
І скажіть мені обоє, як це сталось,
Що моє кохання з милим розірвалось?

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_42131_l1','pisniua_42131','YouTube','https://www.youtube.com/watch?v=dnG6UbEmVHg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_42131_l2','pisniua_42131','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4213838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4213838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4213838';
DELETE FROM songs WHERE id = 'pisniua_4213838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4213838','А в горах синіх','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'А в горах синіх десь серед трав,
Там соснам пісню вітер співав,
Там стояв гуцул, гірко ридав,
Своїй дівчині він так сказав:
"Чому не хочеш мене любити,
Чому не хочеш зі мною жити?
Тобі клянусь я, що не покину,
І буду вірний аж до загину!"

А його мрії вітер розвіяв,
Що бідний гуцул вірив і мріяв.
Він чує голос - "Забудь про мене,
Лиши в спокою, я не для тебе..."
А в горах синіх десь серед трав,
Там стояв гуцул, гірко ридав,
Будьте прокляті ті карі очі,
Ті карі очі, серце дівоче...','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4213838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4213838','А в горах синіх','А в горах синіх десь серед трав,
Там соснам пісню вітер співав,
Там стояв гуцул, гірко ридав,
Своїй дівчині він так сказав:
"Чому не хочеш мене любити,
Чому не хочеш зі мною жити?
Тобі клянусь я, що не покину,
І буду вірний аж до загину!"

А його мрії вітер розвіяв,
Що бідний гуцул вірив і мріяв.
Він чує голос - "Забудь про мене,
Лиши в спокою, я не для тебе..."
А в горах синіх десь серед трав,
Там стояв гуцул, гірко ридав,
Будьте прокляті ті карі очі,
Ті карі очі, серце дівоче...');
DELETE FROM song_links WHERE song_id = 'pisniua_4211838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4211838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4211838';
DELETE FROM songs WHERE id = 'pisniua_4211838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4211838','Жоржини','Музика: Мар''ян Гаденко Слова: Валентина Полинок. Виконує: Оксана Голуб','uk','ukraine_1991',NULL,NULL,NULL,NULL,'З пухнастих засніжених хусток
Поглянуть на мене жоржини,
І звільниться серце від втоми,
До шастя звикати не йшлося.
До шастя звикати не йшлося,
Миритися з лихом не смію...
В тривалу захмарену осінь
Вишневого цвіту навію...

Приспів:
Мереживна повінь пелюсток
Підбілить сади та стежини,
З пухнастих засніжених хусток
Поглянуть на мене жоржини.

І звільниться серце від втоми...
Ліс тонко запахне сосною.
Від снігу, від нашого дому
У зимку повіє весною.

Приспів','[''pisni.org.ua'', ''cat:all-ukraine'', ''Загальноукраїнські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4211838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4211838','Жоржини','З пухнастих засніжених хусток
Поглянуть на мене жоржини,
І звільниться серце від втоми,
До шастя звикати не йшлося.
До шастя звикати не йшлося,
Миритися з лихом не смію...
В тривалу захмарену осінь
Вишневого цвіту навію...

Приспів:
Мереживна повінь пелюсток
Підбілить сади та стежини,
З пухнастих засніжених хусток
Поглянуть на мене жоржини.

І звільниться серце від втоми...
Ліс тонко запахне сосною.
Від снігу, від нашого дому
У зимку повіє весною.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4211838_l1','pisniua_4211838','YouTube','https://www.youtube.com/watch?v=ZLVIBLQVdJQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4211838_l2','pisniua_4211838','YouTube','https://www.youtube.com/watch?v=rt0Ht0qPd58','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4211838_l3','pisniua_4211838','YouTube','https://www.youtube.com/watch?v=FZJ4g184IpE','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4211838_l4','pisniua_4211838','YouTube','https://www.youtube.com/watch?v=RCMqF6f3bGo','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4211838_l5','pisniua_4211838','YouTube','https://www.youtube.com/watch?v=7kntFvpKhrA','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4211838_l6','pisniua_4211838','YouTube','https://www.youtube.com/watch?v=tGfgKBb-7pc','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4211838_l7','pisniua_4211838','YouTube','https://www.youtube.com/watch?v=cz5dAvSXooI','video',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_421430';
DELETE FROM song_versions WHERE song_id = 'pisniua_421430';
DELETE FROM songs_fts WHERE song_id = 'pisniua_421430';
DELETE FROM songs WHERE id = 'pisniua_421430';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_421430','Спадок залишили нам діди наші славні','Виконує: Білий шквал','uk','ukraine_1991',NULL,NULL,'mp3 "Білий шквал"','Пісню записав з mp3. Хто має більш правильний текст і акорди - додавайте. Підбір акордів: muz-taras','Спадок залишили нам діди наші славні:
Мову, віру невмирущу, давній звичай.
То ж не зганьби їх - і до нас приставай,
Разом з нами до походу ти вирушай!

Спадок залишили нам батьки наші славні:
Дух завзятя, перемоги лицарський зов.
То ж не зганьби їх - бо очікують знов
Сині гори наших стягів і хоругов!

Приспів:
Ми перможемо, хоч гори крутії,
Бо нас єднає всіх одвічна мета.
Ми перможемо, хоч пута міцнії.
Вперед, в похід, як вій лети,
Бо боротьба свята!

Нас веде крізь небезпеки і буревії
Те, що наших прадідів до бою вело.
Нас багато, ми міцнії. Вдарим в чари золотії,
Щоби наше товариство вічне було.

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_421430'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_421430','Спадок залишили нам діди наші славні','Спадок залишили нам діди наші славні:
Мову, віру невмирущу, давній звичай.
То ж не зганьби їх - і до нас приставай,
Разом з нами до походу ти вирушай!

Спадок залишили нам батьки наші славні:
Дух завзятя, перемоги лицарський зов.
То ж не зганьби їх - бо очікують знов
Сині гори наших стягів і хоругов!

Приспів:
Ми перможемо, хоч гори крутії,
Бо нас єднає всіх одвічна мета.
Ми перможемо, хоч пута міцнії.
Вперед, в похід, як вій лети,
Бо боротьба свята!

Нас веде крізь небезпеки і буревії
Те, що наших прадідів до бою вело.
Нас багато, ми міцнії. Вдарим в чари золотії,
Щоби наше товариство вічне було.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4209389';
DELETE FROM song_versions WHERE song_id = 'pisniua_4209389';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4209389';
DELETE FROM songs WHERE id = 'pisniua_4209389';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4209389','Рідний доме, школо, до побачення','Музика: невідомий Слова: Антоніна Заїка. Виконує: Діана Мельник','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Білі птахи з чорною відзнакою
Креслять коло над шкільним гніздом.
Рідний доме, школо, до побачення!
Прощавай, тополе, за вікном!

Приспів:
Буде новий день і сонце зрання
Вирушить у вічну путь,
Нових друзів стрінеш і кохання,
Тільки школу рідну не забудь!

Тут прийшли до мене непомітно
Перша книга й радість пізнання,
Сонячна учительська усмішка,
Дружба, творча праця і знання!

Приспів.

Кличе дзвоник в школу малиново
На урок останній доброти,
Не згуби учительського слова
На шляху своєму до мети!

Приспів. (2)','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4209389'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4209389','Рідний доме, школо, до побачення','Білі птахи з чорною відзнакою
Креслять коло над шкільним гніздом.
Рідний доме, школо, до побачення!
Прощавай, тополе, за вікном!

Приспів:
Буде новий день і сонце зрання
Вирушить у вічну путь,
Нових друзів стрінеш і кохання,
Тільки школу рідну не забудь!

Тут прийшли до мене непомітно
Перша книга й радість пізнання,
Сонячна учительська усмішка,
Дружба, творча праця і знання!

Приспів.

Кличе дзвоник в школу малиново
На урок останній доброти,
Не згуби учительського слова
На шляху своєму до мети!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4212838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4212838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4212838';
DELETE FROM songs WHERE id = 'pisniua_4212838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4212838','Ти — найкраща з людей','Музика: Darwin Слова: Darwin. Виконує: Darwin, Alyosha','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Рекомендовано грати на барре.','Я нікому не розкажу
Тільки тобі,
Як, здавалося, востаннє
Рута цвіте,
Як у небі неосяжнім
Гасли зорі,
Якби я міг згадати все,
Згадати все!..

Приспів:
Hm
Хайнорілей,
G
Ти — найкраща з людей!
A
Норілей-норілай,
F#
Я тобі винен сонце й
F#
Небо і більше...
Hm
Хайнорілей,
G
Серед сотень очей,
A
Норілей-норілай,
F#
Я лише твоїм
Hm
Відкриваю свій відчай,
G
Свій відчай,
Свій відчай...

Я нікому не відкрию
Тільки тобі
Досі нездійсненну мрію
Із моїх снів,
Наче всі дороги світу
Стали твої
А я навік - обрій для них,
Обрій для них!..

Приспів.

Хайнорілей,
Ти — найкраща з людей!
Норілей-норілай,
Я тобі винен сонце й
Небо і більше...
Хайнорілей...','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4212838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4212838','Ти — найкраща з людей','Я нікому не розкажу
Тільки тобі,
Як, здавалося, востаннє
Рута цвіте,
Як у небі неосяжнім
Гасли зорі,
Якби я міг згадати все,
Згадати все!..

Приспів:
Hm
Хайнорілей,
G
Ти — найкраща з людей!
A
Норілей-норілай,
F#
Я тобі винен сонце й
F#
Небо і більше...
Hm
Хайнорілей,
G
Серед сотень очей,
A
Норілей-норілай,
F#
Я лише твоїм
Hm
Відкриваю свій відчай,
G
Свій відчай,
Свій відчай...

Я нікому не відкрию
Тільки тобі
Досі нездійсненну мрію
Із моїх снів,
Наче всі дороги світу
Стали твої
А я навік - обрій для них,
Обрій для них!..

Приспів.

Хайнорілей,
Ти — найкраща з людей!
Норілей-норілай,
Я тобі винен сонце й
Небо і більше...
Хайнорілей...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4212838_l1','pisniua_4212838','YouTube','https://www.youtube.com/watch?v=XF8sP7DaPk4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4212838_l2','pisniua_4212838','YouTube','https://www.youtube.com/watch?v=7J5r9Hb2COg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_421583';
DELETE FROM song_versions WHERE song_id = 'pisniua_421583';
DELETE FROM songs_fts WHERE song_id = 'pisniua_421583';
DELETE FROM songs WHERE id = 'pisniua_421583';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_421583','Старі фотографії','Музика: Андрій Кузьменко Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: Ihor','Здається, шо то було так давно,
Коли в руках тримаю цей альбом,
Нам було абсолютно все одно
Немаючи нічого мати всьо,
За гроші не купити тільки час,
Він всіх нас методично поділив,
Когось він опустив, когось підняв,
А є на кого взагалі забив.

Приспів:
Старі фотографії на стіл розклади,
Дитячі історії смішні розкажи
І справжнім друзям не забудь, подзвони
Бо добре чи зле, з тобою завжди вони

Дешеве пиво і сухе вино,
Робили нас щасливими людьми,
І ніби чудо польське радіо,
Нам відкривало той незнаний світ
Ми жили всі так ніби, то був сон
І можна бути вічно молодим,
А залишився тільки цей альбом,
А мрії розлетілися, як дим.

Приспів.

Ми грали примітивну музику,
Так чесно, що пробила би до сліз
Чекали, що прийде такий момент
Коли під ноги впаде цілий світ
Годинник вперто роки рахував,
І кожен так як міг так і зробив
І тільки у альбомі всі підряд
Ми будемо такими, як тоді

Приспів. (2)','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_421583'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_421583','Старі фотографії','Здається, шо то було так давно,
Коли в руках тримаю цей альбом,
Нам було абсолютно все одно
Немаючи нічого мати всьо,
За гроші не купити тільки час,
Він всіх нас методично поділив,
Когось він опустив, когось підняв,
А є на кого взагалі забив.

Приспів:
Старі фотографії на стіл розклади,
Дитячі історії смішні розкажи
І справжнім друзям не забудь, подзвони
Бо добре чи зле, з тобою завжди вони

Дешеве пиво і сухе вино,
Робили нас щасливими людьми,
І ніби чудо польське радіо,
Нам відкривало той незнаний світ
Ми жили всі так ніби, то був сон
І можна бути вічно молодим,
А залишився тільки цей альбом,
А мрії розлетілися, як дим.

Приспів.

Ми грали примітивну музику,
Так чесно, що пробила би до сліз
Чекали, що прийде такий момент
Коли під ноги впаде цілий світ
Годинник вперто роки рахував,
І кожен так як міг так і зробив
І тільки у альбомі всі підряд
Ми будемо такими, як тоді

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_421583_l1','pisniua_421583','YouTube','https://www.youtube.com/watch?v=hCKbr86Vjck','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_421583_l2','pisniua_421583','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4216636';
DELETE FROM song_versions WHERE song_id = 'pisniua_4216636';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4216636';
DELETE FROM songs WHERE id = 'pisniua_4216636';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4216636','Зимова ніч','Музика: Борис Пастернак Слова: Борис Пастернак','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Мело, мело по всій землі,
Мело, сніжило.
Свіча горіла на столі,
Свіча горіла.

Злітався сніг і вирував
Перед шибками,
Так влітку на вогонь мошва
Летить роями.

Ліпила віхола на склі
Кружки і стріли.
Свіча горіла на столі,
Свіча горіла.

І протяг тіні хилитав,
І мимоволі
Схрестились руки і уста,
Схрестились долі.

І черевички з ніг самі
Упали м''яко.
І віск із нічника слізьми
На плаття капав.

Все поглинала на землі
Хуртеча біла.
Свіча горіла на столі,
Свіча горіла.

І доки хуґа по землі
Мела, сніжила,
Свіча горіла на столі,
Свіча горіла.','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4216636'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4216636','Зимова ніч','Мело, мело по всій землі,
Мело, сніжило.
Свіча горіла на столі,
Свіча горіла.

Злітався сніг і вирував
Перед шибками,
Так влітку на вогонь мошва
Летить роями.

Ліпила віхола на склі
Кружки і стріли.
Свіча горіла на столі,
Свіча горіла.

І протяг тіні хилитав,
І мимоволі
Схрестились руки і уста,
Схрестились долі.

І черевички з ніг самі
Упали м''яко.
І віск із нічника слізьми
На плаття капав.

Все поглинала на землі
Хуртеча біла.
Свіча горіла на столі,
Свіча горіла.

І доки хуґа по землі
Мела, сніжила,
Свіча горіла на столі,
Свіча горіла.');
DELETE FROM song_links WHERE song_id = 'pisniua_4215389';
DELETE FROM song_versions WHERE song_id = 'pisniua_4215389';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4215389';
DELETE FROM songs WHERE id = 'pisniua_4215389';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4215389','Білий вельон','Музика: Тетяна Кисленко Слова: Т. Василько','uk','ukraine_before_1917',NULL,NULL,'Авторське подання: Т. Василько. Моя пісня. Львів: Сполом, 2004. 120 с.',NULL,'Чорні коси, білий вельон,
Щастя блискавки в очах,
Задзвеніли дзвони весен,
Заспівав у небі птах.

Приспів:
Біло-білокрилий птах
В синіх, синіх небесах,
Білий, білий вельон-цвіт
На весь білий, білий світ!

Квітне вінець цвітом вишні,
Калиновіють вуста,
Як тополя сквітло-пишна,
Вийшла мила - молода.

Приспів.

Стрепенулись зелен-віти -
Вигравайте, скрипалі!
Білий вельон, білий вінець -
Най позаздрять королі!

Приспів','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4215389'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4215389','Білий вельон','Чорні коси, білий вельон,
Щастя блискавки в очах,
Задзвеніли дзвони весен,
Заспівав у небі птах.

Приспів:
Біло-білокрилий птах
В синіх, синіх небесах,
Білий, білий вельон-цвіт
На весь білий, білий світ!

Квітне вінець цвітом вишні,
Калиновіють вуста,
Як тополя сквітло-пишна,
Вийшла мила - молода.

Приспів.

Стрепенулись зелен-віти -
Вигравайте, скрипалі!
Білий вельон, білий вінець -
Най позаздрять королі!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_4214032';
DELETE FROM song_versions WHERE song_id = 'pisniua_4214032';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4214032';
DELETE FROM songs WHERE id = 'pisniua_4214032';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4214032','Повішу я колисоньку','Українська народна пісня. Виконує: Радуниця','uk','ukraine_before_1917',NULL,NULL,'Власне',NULL,'Повішу я колисоньку
Та й на калиночку,
Буде вітер колисати
Мою дитиночку.

Буде вітер колисати,
Пташечки - співати,
Буде моя дитиночка
В колисочці спати.

Повішу я колисочку
На вербу, на вербу, -
Ой, чи вітер поколише,
Поки я ся верну?','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4214032'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4214032','Повішу я колисоньку','Повішу я колисоньку
Та й на калиночку,
Буде вітер колисати
Мою дитиночку.

Буде вітер колисати,
Пташечки - співати,
Буде моя дитиночка
В колисочці спати.

Повішу я колисочку
На вербу, на вербу, -
Ой, чи вітер поколише,
Поки я ся верну?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4214032_l1','pisniua_4214032','YouTube','https://www.youtube.com/watch?v=MHqD4MtcBvg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4214032_l2','pisniua_4214032','YouTube','https://www.youtube.com/watch?v=b0RTGruoKD8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4214032_l3','pisniua_4214032','YouTube','https://www.youtube.com/watch?v=jH8DBR2cRXc','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_421539';
DELETE FROM song_versions WHERE song_id = 'pisniua_421539';
DELETE FROM songs_fts WHERE song_id = 'pisniua_421539';
DELETE FROM songs WHERE id = 'pisniua_421539';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_421539','Борисфен','Музика: Вадим Крищенко Слова: Вадим Крищенко','uk','ukraine_1991',NULL,NULL,NULL,'Запис у форматі MP3 http://www.fcborisfen.kiev.ua/FC_Borisfen_march.mp3','Смугастим м’ячем котить сонце само,
I день натиска на педалi,
Бо ми спiшимо, спiшимо, спiшимо
На сцену футбольних баталiй.
Все мiсто гуде у мажорну трубу.
А спека чи дощ - не завада.
Виходить на поле пiд звуки трибун
Улюблена наша команда

Приспiв:
Борисфен, Борисфен, Борисфен -
Покажи свою силу гарячу.
Борисфен, Борисфен, Борисфен,
Щоб суперник вiдчув твою вдачу.
Хай утома не лiзе пiд ноги,
Борисфен, Борисфен, Борисфен,
Ще удар - й крапку став перемоги.
Ми скандуєм найкраще з iмен
Борисфен, Борисфен, Борисфен

Надiємось, хлопцi, сьогоднi на вас,
На вмiння й характер завзятий.
Усiм покажiте, не гаючи час,
Як вмiють бориспольцi грати.
Удар праворуч i лiворуч удар
I зломленi всi перепони.
Хай руки розводить чужий воротар,
А нам треба йти в чемпiони

Приспiв.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_421539'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_421539','Борисфен','Смугастим м’ячем котить сонце само,
I день натиска на педалi,
Бо ми спiшимо, спiшимо, спiшимо
На сцену футбольних баталiй.
Все мiсто гуде у мажорну трубу.
А спека чи дощ - не завада.
Виходить на поле пiд звуки трибун
Улюблена наша команда

Приспiв:
Борисфен, Борисфен, Борисфен -
Покажи свою силу гарячу.
Борисфен, Борисфен, Борисфен,
Щоб суперник вiдчув твою вдачу.
Хай утома не лiзе пiд ноги,
Борисфен, Борисфен, Борисфен,
Ще удар - й крапку став перемоги.
Ми скандуєм найкраще з iмен
Борисфен, Борисфен, Борисфен

Надiємось, хлопцi, сьогоднi на вас,
На вмiння й характер завзятий.
Усiм покажiте, не гаючи час,
Як вмiють бориспольцi грати.
Удар праворуч i лiворуч удар
I зломленi всi перепони.
Хай руки розводить чужий воротар,
А нам треба йти в чемпiони

Приспiв.');
DELETE FROM song_links WHERE song_id = 'pisniua_4219287';
DELETE FROM song_versions WHERE song_id = 'pisniua_4219287';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4219287';
DELETE FROM songs WHERE id = 'pisniua_4219287';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4219287','Дай Бог','Музика: Микола Янченко Слова: Микола Янченко. Виконує: Ірма','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Темна ніч чаклує за вікном,
Раді вас вітати тут усіх,
Хай солодким буде нам вино,
Бо ж далеких стрілися доріг.

Приспів:
Дай Бог вам, друзі і родина,
Щоб ви сто років в щасті жили
І до останньої хвилини
Любили ви і вас любили!

Вже давно розтанув білий сніг,
Відступила холодом зима,
Низько вам вклоняюся до ніг,
Бо без вас в душі тепла нема.

Приспів.

Нам за цим святковим столом
Є про що сказати і згадати,
Хай солодким буде нам вино,
Ми будем до ранку співати!

Приспів. (2)','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4219287'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4219287','Дай Бог','Темна ніч чаклує за вікном,
Раді вас вітати тут усіх,
Хай солодким буде нам вино,
Бо ж далеких стрілися доріг.

Приспів:
Дай Бог вам, друзі і родина,
Щоб ви сто років в щасті жили
І до останньої хвилини
Любили ви і вас любили!

Вже давно розтанув білий сніг,
Відступила холодом зима,
Низько вам вклоняюся до ніг,
Бо без вас в душі тепла нема.

Приспів.

Нам за цим святковим столом
Є про що сказати і згадати,
Хай солодким буде нам вино,
Ми будем до ранку співати!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4215532';
DELETE FROM song_versions WHERE song_id = 'pisniua_4215532';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4215532';
DELETE FROM songs WHERE id = 'pisniua_4215532';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4215532','Новорічна','Музика: Віталій Кічак Слова: Оксана Кічак. Виконує: Називний Відмінок (НазВід)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Прозора вода замерзла в калюжах
І ти на три місяці знову застуджений.
Ти на три місяці знову застуджений -
Це зима! Це зима!
Вогні мерехтять,
Дітвора сніжки бавляться,
А ми від морозу з тобою ховаємось.
Ми від морозу з тобою ховаємось!
Це зима! Це зима!

Приспів:
О-о-о! Іде Новий Рік!      |
Спішить Новий Рік!         |
Він буде кращим, як торік, |
Як торік!                  | (2)

Тепленькі шкарпетки, рукавички, муфточки,
А ще добре мати пухову курточку.
А ще добре мати пухову курточку.
Це зима! Це зима!
Сніжинки летять, хурделиця крутиться,
В Новому Році ми знаєм: все збудеться!
В Новому Році ми вірим: все збудеться!
Це зима! Це зима!

Приспів.

Морозець, морозець пощипай нам щічки,
Теплі валянки у нас, шубки й рукавички!
Морозець, морозець, плещемо в долоні,
У дівчаток і хлоп''яток носики червоні!

Приспів.

Він буде кращим Новий Рік!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4215532'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4215532','Новорічна','Прозора вода замерзла в калюжах
І ти на три місяці знову застуджений.
Ти на три місяці знову застуджений -
Це зима! Це зима!
Вогні мерехтять,
Дітвора сніжки бавляться,
А ми від морозу з тобою ховаємось.
Ми від морозу з тобою ховаємось!
Це зима! Це зима!

Приспів:
О-о-о! Іде Новий Рік!      |
Спішить Новий Рік!         |
Він буде кращим, як торік, |
Як торік!                  | (2)

Тепленькі шкарпетки, рукавички, муфточки,
А ще добре мати пухову курточку.
А ще добре мати пухову курточку.
Це зима! Це зима!
Сніжинки летять, хурделиця крутиться,
В Новому Році ми знаєм: все збудеться!
В Новому Році ми вірим: все збудеться!
Це зима! Це зима!

Приспів.

Морозець, морозець пощипай нам щічки,
Теплі валянки у нас, шубки й рукавички!
Морозець, морозець, плещемо в долоні,
У дівчаток і хлоп''яток носики червоні!

Приспів.

Він буде кращим Новий Рік!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4215532_l1','pisniua_4215532','YouTube','https://www.youtube.com/watch?v=RDnNvBaLPpQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4215532_l2','pisniua_4215532','YouTube','https://www.youtube.com/watch?v=wTqJ-1kMD5c','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4216134';
DELETE FROM song_versions WHERE song_id = 'pisniua_4216134';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4216134';
DELETE FROM songs WHERE id = 'pisniua_4216134';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4216134','Село моє','Музика: Надія Гураль Слова: Надія Гураль. Виконує: Надія Гураль','uk','ukraine_1991',NULL,NULL,'http://nadiagural.com/',NULL,'Летять лелеки із країв далеких,
Лелечий клекіт лине вдаль,
І я іду-лечу додому
У свій чарівний рідний край!
Той край, де все таке для мене рідне,
Де щастя й долі оберіг,
Туди, де знов душа розквітне,
Туди, де батьківський поріг!

Приспів:
Село моє в пахучім цвіті
Мені всміхається здаля!
Для мене ти - одне на світі,
Бо тут мій край, моя земля!

Ходжу змалечку росянистим полем,
Топчу стежину край ріллі
І пахне хлібом моя доля,
Коли я в рідному селі!

Приспів. (2)','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4216134'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4216134','Село моє','Летять лелеки із країв далеких,
Лелечий клекіт лине вдаль,
І я іду-лечу додому
У свій чарівний рідний край!
Той край, де все таке для мене рідне,
Де щастя й долі оберіг,
Туди, де знов душа розквітне,
Туди, де батьківський поріг!

Приспів:
Село моє в пахучім цвіті
Мені всміхається здаля!
Для мене ти - одне на світі,
Бо тут мій край, моя земля!

Ходжу змалечку росянистим полем,
Топчу стежину край ріллі
І пахне хлібом моя доля,
Коли я в рідному селі!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4216134_l1','pisniua_4216134','YouTube','https://www.youtube.com/watch?v=XZwax_S__eQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4216134_l2','pisniua_4216134','YouTube','https://www.youtube.com/watch?v=OgB6DEeQqqw','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4216134_l3','pisniua_4216134','YouTube','https://www.youtube.com/watch?v=xOryvaKpk-Y','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_421838';
DELETE FROM song_versions WHERE song_id = 'pisniua_421838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_421838';
DELETE FROM songs WHERE id = 'pisniua_421838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_421838','Святкова','(А зі мною був красивий). Музика: Олександр Злотник Слова: О. Піка. Виконує: Оксана Білозір','uk','ukraine_before_1917',NULL,NULL,'Аудіо-альбом "Оксана Білозір. "Горобина ніч"','Текст записано на слух з аудіо.','Все було святково,
все було казково.
Заховав нас вечір
за широкі плечі...

Щоб ніхто не бачив,
чи сміюсь, чи плачу...
Щоб ніхто не чув,
Хто зі мною був.

Приспів: (2)
А зі мною був красивий...
А зі мною був щасливий...
Був зі мною мій миленький -
І забрав моє серденько.

Заховав нас вечір
за широкі плечі
і повів охоче
у покої ночі.

А у тих покоях
ми були лиш двоє.
І ніхто не знає,
кого я кохаю.

Приспів. (2)

І ніхто не знає,
кого я чекаю,
кого я цілую
і за ким сумую.

І ніхто не бачив,
чи сміюсь чи плачу.
І ніхто не чув,
хто зі мною був.

Приспів. (2)

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_421838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_421838','Святкова','Все було святково,
все було казково.
Заховав нас вечір
за широкі плечі...

Щоб ніхто не бачив,
чи сміюсь, чи плачу...
Щоб ніхто не чув,
Хто зі мною був.

Приспів: (2)
А зі мною був красивий...
А зі мною був щасливий...
Був зі мною мій миленький -
І забрав моє серденько.

Заховав нас вечір
за широкі плечі
і повів охоче
у покої ночі.

А у тих покоях
ми були лиш двоє.
І ніхто не знає,
кого я кохаю.

Приспів. (2)

І ніхто не знає,
кого я чекаю,
кого я цілую
і за ким сумую.

І ніхто не бачив,
чи сміюсь чи плачу.
І ніхто не чув,
хто зі мною був.

Приспів. (2)

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4229338';
DELETE FROM song_versions WHERE song_id = 'pisniua_4229338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4229338';
DELETE FROM songs WHERE id = 'pisniua_4229338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4229338','А сонечко котиться...','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'збірник "Закувала зозуленька".','Жниварська пісня.','А сонечко котиться, котиться,
Нам додому хочеться, хочеться.
Хазяїне наш, нам додому час!

Вже сонечко під липкою, під липкою,
Труси, пане, калиткою, калиткою.
Хазяїне наш, нам додому час!

Вже сонечко на ріллі, на ріллі,
Нас кусають комарі, комарі,
Хазяїне наш, нам додому час!

Вже сонечко за кущем, за кущем,
Подавися ти борщем, ти борщем,
Хазяїне наш, нам додому час!

Зайщов місяць і зоря, і зоря.
Хазяїне наш, нам додому час!','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4229338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4229338','А сонечко котиться...','А сонечко котиться, котиться,
Нам додому хочеться, хочеться.
Хазяїне наш, нам додому час!

Вже сонечко під липкою, під липкою,
Труси, пане, калиткою, калиткою.
Хазяїне наш, нам додому час!

Вже сонечко на ріллі, на ріллі,
Нас кусають комарі, комарі,
Хазяїне наш, нам додому час!

Вже сонечко за кущем, за кущем,
Подавися ти борщем, ти борщем,
Хазяїне наш, нам додому час!

Зайщов місяць і зоря, і зоря.
Хазяїне наш, нам додому час!');
DELETE FROM song_links WHERE song_id = 'pisniua_422032';
DELETE FROM song_versions WHERE song_id = 'pisniua_422032';
DELETE FROM songs_fts WHERE song_id = 'pisniua_422032';
DELETE FROM songs WHERE id = 'pisniua_422032';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_422032','Останній бандерівець','Музика: Олег Сухарєв Слова: Олег Сухарєв. Виконує: Самі свої, Олег Сухарєв','uk','ukraine_1991',NULL,NULL,'1. Олег Сухарєв. Акустичний концерт "Лірика і бунт". 2. http://www.osuharev.narod.ru','Текст записано на слух за аудіо-джерелом. Акорди подано спрощено. Тональність ориґінальна. Підібрано на слух за аудіо-джерелом. Деякі акорди: E7* [x x 2 4 3 0] Em7 [0 2 2 0 3 0] Eadd11+ [0 2 2 3 0 0] D* [x 0 0 2 3 5] Dsus4 [x 0 0 2 3 3] Asus4* [x 0 0 2 3 0] * Тут і далі послідовність "(bass: H\Hb G)*" можна зіграти на 6-й струні так: H(VII)\Hb(VI) G(III). Тут знак "\" означає "слайд". Текст записано на слух за аудіо-джерелом [1]. Виправлено то доповнено за текстовим джерелом [2]. * Тут за аудіо-джерелом [1]: "По "павлівкам" та по "лук''янівкам" - очевидно, русизм; виправлено. У джерелі [2] текст неповний. (Зміни і доповнення: Bohdanko) Підбір акордів: bohdanko@epost.com.ua','Вступ:  Em C  (x2)
H7
Em
Em C  (x2)

Закричали ворони
По степу широкому
На всі чотири сторони
Em           E7*
Та по моїй душі.

Заплескали крилами.
Зустрічали ворога
Під трьома вітрилами
D        D* Dsus4   (bass: H\Hb G)*
Хлібом та сіллю.

Продали правду,   продали віру,
Em          C   Em          C Em  (bass: H\Hb G)
Продали душу   чорному звіру.
В тім твоя доля,   в тім Божа воля,
В тім твоє щастя,   що згинув вчасно.

D
Немає чого тут боятись:
Шлях до любові лежить тільки крізь муки.
D
Тут можна тільки сміятись,
Сміятись над тим, що немає кому дати руку.

D
На моїх долонях кожного дня
З’являються криваві хрести,
D
І м’язи в ногах тріщать від того,
Тріщать від того, що так важко іти.

Приспів:
Земля тобі пухом, останній бандерівець!      (x3)
D
Земля тобі пухом!..

Програш 1:  Em Em7 Em Em7     |
D Dsus4 Asus4* D* | (x3)

D
Що то за правда, якщо її можна
Нагодувати, зігріти, а потім у постіль?..
D
Скажи мені, що то за правда,
Якщо її не чути навіть крізь постріл?

D
Де всі ті мої брати,
З якими я міг би навколо ватри пуститись у танок?
D
Де всі ті мої брати,
З якими я міг би у радості стріти світанок?

Приспів.

Програш 1.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_422032'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_422032','Останній бандерівець','Вступ:  Em C  (x2)
H7
Em
Em C  (x2)

Закричали ворони
По степу широкому
На всі чотири сторони
Em           E7*
Та по моїй душі.

Заплескали крилами.
Зустрічали ворога
Під трьома вітрилами
D        D* Dsus4   (bass: H\Hb G)*
Хлібом та сіллю.

Продали правду,   продали віру,
Em          C   Em          C Em  (bass: H\Hb G)
Продали душу   чорному звіру.
В тім твоя доля,   в тім Божа воля,
В тім твоє щастя,   що згинув вчасно.

D
Немає чого тут боятись:
Шлях до любові лежить тільки крізь муки.
D
Тут можна тільки сміятись,
Сміятись над тим, що немає кому дати руку.

D
На моїх долонях кожного дня
З’являються криваві хрести,
D
І м’язи в ногах тріщать від того,
Тріщать від того, що так важко іти.

Приспів:
Земля тобі пухом, останній бандерівець!      (x3)
D
Земля тобі пухом!..

Програш 1:  Em Em7 Em Em7     |
D Dsus4 Asus4* D* | (x3)

D
Що то за правда, якщо її можна
Нагодувати, зігріти, а потім у постіль?..
D
Скажи мені, що то за правда,
Якщо її не чути навіть крізь постріл?

D
Де всі ті мої брати,
З якими я міг би навколо ватри пуститись у танок?
D
Де всі ті мої брати,
З якими я міг би у радості стріти світанок?

Приспів.

Програш 1.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_422032_l1','pisniua_422032','YouTube','https://www.youtube.com/watch?v=0NBZ7KHEL8k','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4226535';
DELETE FROM song_versions WHERE song_id = 'pisniua_4226535';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4226535';
DELETE FROM songs WHERE id = 'pisniua_4226535';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4226535','Огірочки зелененькі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісні Городенківщини/Упорядник - Марія Сорока. Снятин: Прут-Принт, 2006.',NULL,'Огірочки зелененькі,
Завивайтеви сі,
Завивайтеви сі.

Ви молоді молодчики
Женихайтеви сі,
Женихайтеви сі.

Прийшла м до вас, кумко,
Бочки
Наквасити огірочки,
Завивайтеви сі,
Завивайтеви сі.

А я бочки не зичаю,
Бо я свої огірочки маю,
Розвивайтеви сі,
Розвивайтеви сі.

Огірочки зелененькі
Най сі в''ють, най сі в''ють,
А молоді-молодчики
Мед-вино п''ють, мед-вино п''ють.','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4226535'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4226535','Огірочки зелененькі','Огірочки зелененькі,
Завивайтеви сі,
Завивайтеви сі.

Ви молоді молодчики
Женихайтеви сі,
Женихайтеви сі.

Прийшла м до вас, кумко,
Бочки
Наквасити огірочки,
Завивайтеви сі,
Завивайтеви сі.

А я бочки не зичаю,
Бо я свої огірочки маю,
Розвивайтеви сі,
Розвивайтеви сі.

Огірочки зелененькі
Най сі в''ють, най сі в''ють,
А молоді-молодчики
Мед-вино п''ють, мед-вино п''ють.');
DELETE FROM song_links WHERE song_id = 'pisniua_4223232';
DELETE FROM song_versions WHERE song_id = 'pisniua_4223232';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4223232';
DELETE FROM songs WHERE id = 'pisniua_4223232';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4223232','Пісня про школу','Музика: Д. Кабалевський Слова: В. Вікторов','uk','ukraine_1991',NULL,NULL,'інтернет',NULL,'В вересневий світлий день
Ми прийшли до школи,
Школа радо стріла нас,
Нам дала просторий клас.
Ми співаєм повсякчас
Про свій клас, про свій клас!
Ми співаєм повсякчас
Про свій клас, про свій клас!

Вірні друзі є у нас —
Букви, цифри, ноти.
Ось учитель входить в клас,
Він навчить усього нас.
Хай про нього спів луна,
Спів луна, спів луна!
Хай про нього спів луна,
Спів луна, спів луна!

І перерва, і дзвінок —
Знову на уроки.
Справ цікавих не злічить,
Ну і пісня все звучить.
В ній про все! Нехай звучить,
Хай звучить, хай звучить!
З нею веселіше жить,
Хай звучить, хай звучить!','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4223232'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4223232','Пісня про школу','В вересневий світлий день
Ми прийшли до школи,
Школа радо стріла нас,
Нам дала просторий клас.
Ми співаєм повсякчас
Про свій клас, про свій клас!
Ми співаєм повсякчас
Про свій клас, про свій клас!

Вірні друзі є у нас —
Букви, цифри, ноти.
Ось учитель входить в клас,
Він навчить усього нас.
Хай про нього спів луна,
Спів луна, спів луна!
Хай про нього спів луна,
Спів луна, спів луна!

І перерва, і дзвінок —
Знову на уроки.
Справ цікавих не злічить,
Ну і пісня все звучить.
В ній про все! Нехай звучить,
Хай звучить, хай звучить!
З нею веселіше жить,
Хай звучить, хай звучить!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4223232_l1','pisniua_4223232','YouTube','https://www.youtube.com/watch?v=g1oVbp9sEG0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_422838';
DELETE FROM song_versions WHERE song_id = 'pisniua_422838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_422838';
DELETE FROM songs WHERE id = 'pisniua_422838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_422838','Попрощався стрілець','Українська народна пісня','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'Акорди: пісенник ОУМ "Спадщина"','Москалі співали на її мотив "Там вдалі, за рєкой"','Попрощався стрілець зі своєю ріднею,
Вирушав він в далеку дорогу.
За свій рідний край, за стрілецький звичай
Ми йдемо за свою перемогу.

А вітер колише шовкову траву,
Молодий дуб додолу схилився,
Листям шелестить... Вбитий стрілець лежить,
Над ним коник його зажурився.

"Ой коню, мій коню, не стій наді мною,
Я тимчасом полежу прикритий.
Лети, коню мій, скажи неньці рідній,
Що я лежу у степу забитий.

Най батько, і мати, і ріднії сестри,
Нехай вони за мною не плачуть.
Я в степу лежу, за ріднею тужу,
Чорний крук наді мною вже кряче".

Багато козаків лягло за Вкраїну,
І ніхто з них вже більше не встане.
А Вкраїна була, а Вкраїна жива
І за волю свою вже повстала.','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_422838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_422838','Попрощався стрілець','Попрощався стрілець зі своєю ріднею,
Вирушав він в далеку дорогу.
За свій рідний край, за стрілецький звичай
Ми йдемо за свою перемогу.

А вітер колише шовкову траву,
Молодий дуб додолу схилився,
Листям шелестить... Вбитий стрілець лежить,
Над ним коник його зажурився.

"Ой коню, мій коню, не стій наді мною,
Я тимчасом полежу прикритий.
Лети, коню мій, скажи неньці рідній,
Що я лежу у степу забитий.

Най батько, і мати, і ріднії сестри,
Нехай вони за мною не плачуть.
Я в степу лежу, за ріднею тужу,
Чорний крук наді мною вже кряче".

Багато козаків лягло за Вкраїну,
І ніхто з них вже більше не встане.
А Вкраїна була, а Вкраїна жива
І за волю свою вже повстала.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_422838_l1','pisniua_422838','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4217185';
DELETE FROM song_versions WHERE song_id = 'pisniua_4217185';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4217185';
DELETE FROM songs WHERE id = 'pisniua_4217185';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4217185','Колискова','Українська народна пісня. Виконує: Віктор Павлік','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Час настав відпочивати
Тож лягай, дитинко, спати,
Ангел хай оберігає сон твій уночі.
І наспівує тихенько:               |
"Люлі-люлі, спи серденько,         |
Очі закривай, маленький, засинай". | (2)

Приспів:
Люлі-люлі, баю,
Я тебе кохаю...
Обійму легесенько,
Пригорну ніжнесенько,
Пісню заспіваю,
Люлі-люлі, баю...
Люлі-люлі, баю...

Сплять вночі не тільки діти -
Звіри в лісі, в полі квіти,
Засинають всі комашки, а також птахи.
Сонце спати теж лягає,             |
Промінь за моря ховає,             |
Щоб могли поспати мирно дітлахи.   | (2)

Приспів. (2)','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4217185'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4217185','Колискова','Час настав відпочивати
Тож лягай, дитинко, спати,
Ангел хай оберігає сон твій уночі.
І наспівує тихенько:               |
"Люлі-люлі, спи серденько,         |
Очі закривай, маленький, засинай". | (2)

Приспів:
Люлі-люлі, баю,
Я тебе кохаю...
Обійму легесенько,
Пригорну ніжнесенько,
Пісню заспіваю,
Люлі-люлі, баю...
Люлі-люлі, баю...

Сплять вночі не тільки діти -
Звіри в лісі, в полі квіти,
Засинають всі комашки, а також птахи.
Сонце спати теж лягає,             |
Промінь за моря ховає,             |
Щоб могли поспати мирно дітлахи.   | (2)

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4217185_l1','pisniua_4217185','YouTube','https://www.youtube.com/watch?v=pPvDNmQ9FjA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4217185_l2','pisniua_4217185','YouTube','https://www.youtube.com/watch?v=aftJlh9vC6Y','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4224532';
DELETE FROM song_versions WHERE song_id = 'pisniua_4224532';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4224532';
DELETE FROM songs WHERE id = 'pisniua_4224532';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4224532','Козацька','Музика: ВІктор Охріменко Слова: Ігор Федчишин','uk','ukraine_before_1917',NULL,NULL,'http://poezia.org/ua/id/30728/',NULL,'Як ішов я у похід -
Спекла жінка свіжий хліб,
То - каже - тобі, мій милий,
Щоби вдосталь було сили,
Щоби завше рушив ситим
Вороженьків бити!
Ех, лихо - не біда,
Вороженьків бити!

Тільки виїхав у яр -
Стрітив надцять яничар,
Наче мухи на обід,
Злетілись на жінчин хліб,
Пов''язав поганців вправно,
Привів отаману!
Ех, лихо - не біда,
Привів отаману!

Хвалив мене отаман,
Ковтав слину бусурман,
А я помеж побратимів
розділив свою хлібину:
- Стережися, враже клятий,
Будемо карати!
Ех, лихо - не біда,
Будемо карати!    Фонограма мінус (mp3, 192kbps)','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4224532'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4224532','Козацька','Як ішов я у похід -
Спекла жінка свіжий хліб,
То - каже - тобі, мій милий,
Щоби вдосталь було сили,
Щоби завше рушив ситим
Вороженьків бити!
Ех, лихо - не біда,
Вороженьків бити!

Тільки виїхав у яр -
Стрітив надцять яничар,
Наче мухи на обід,
Злетілись на жінчин хліб,
Пов''язав поганців вправно,
Привів отаману!
Ех, лихо - не біда,
Привів отаману!

Хвалив мене отаман,
Ковтав слину бусурман,
А я помеж побратимів
розділив свою хлібину:
- Стережися, враже клятий,
Будемо карати!
Ех, лихо - не біда,
Будемо карати!    Фонограма мінус (mp3, 192kbps)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4224532_l1','pisniua_4224532','YouTube','https://www.youtube.com/watch?v=mUpkLap57Ow','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4225430';
DELETE FROM song_versions WHERE song_id = 'pisniua_4225430';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4225430';
DELETE FROM songs WHERE id = 'pisniua_4225430';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4225430','Жертвам голодомору','Музика: Валентин Філонік Слова: Валентин Філонік. Виконує: Валентин Філонік','uk','ukraine_1991',NULL,NULL,'авторське подання','Присвячую батькам і братику моєї мами і всім померлим від голоду... Слова приспіву взяті із надпису на пам''ятнику жертвам голодомору в далекій Канаді, встановленому на кошти наших земляків-емігрантів.','На цвинтарі забутому сільському
Похилені від старості хрести...
Тут почесті не віддають військові
І мало хто приходить вже сюди...
Десь тут лежать поховані батьки моєї мами,
Її маленький братик вічним сном тут спить..
А скільки їх,ще змучених, від голоду померлих,
По всій країні у землі лежить...
Приспів:
Коли вони вмирали, їм дзвони не дзвонили,
Бо вже були спаплюжені церкви..
Лише земля стогнала, коли дітей ховали
І зорі тут вмивалися слізьми!
Холодний і голодний тридцять третій
Пройшов над Україною мов смерч...
За більшовицьких тих страшних совєтів
Розмахувала тут косою смерть.
Вмирали люди з голоду, а десь зерно гноїли,
Вказівки із Кремля такі дані були:
Чим менше українців залишаться живими,
Тим легше буде волю їх зломить.
Приспів.
Коли з трибун я слухаю промови,
Як хороше було в союзі жить,
Про те, що нам потрібні дві державні мови,
За всіх, за нас, душа моя болить.
Ні, їм не повернути часів отих проклятих,
Я вірю, над країною ще сонечко зійде...
І заживемо всі ми привільно і багато,
І Україна моя розцвіте!
Приспів.','[''pisni.org.ua'', ''cat:istorychni'', ''cat:suspilno-politychni'', ''Історичні пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4225430'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4225430','Жертвам голодомору','На цвинтарі забутому сільському
Похилені від старості хрести...
Тут почесті не віддають військові
І мало хто приходить вже сюди...
Десь тут лежать поховані батьки моєї мами,
Її маленький братик вічним сном тут спить..
А скільки їх,ще змучених, від голоду померлих,
По всій країні у землі лежить...
Приспів:
Коли вони вмирали, їм дзвони не дзвонили,
Бо вже були спаплюжені церкви..
Лише земля стогнала, коли дітей ховали
І зорі тут вмивалися слізьми!
Холодний і голодний тридцять третій
Пройшов над Україною мов смерч...
За більшовицьких тих страшних совєтів
Розмахувала тут косою смерть.
Вмирали люди з голоду, а десь зерно гноїли,
Вказівки із Кремля такі дані були:
Чим менше українців залишаться живими,
Тим легше буде волю їх зломить.
Приспів.
Коли з трибун я слухаю промови,
Як хороше було в союзі жить,
Про те, що нам потрібні дві державні мови,
За всіх, за нас, душа моя болить.
Ні, їм не повернути часів отих проклятих,
Я вірю, над країною ще сонечко зійде...
І заживемо всі ми привільно і багато,
І Україна моя розцвіте!
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4225430_l1','pisniua_4225430','YouTube','https://www.youtube.com/watch?v=QlBMpAHAuH4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_422634';
DELETE FROM song_versions WHERE song_id = 'pisniua_422634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_422634';
DELETE FROM songs WHERE id = 'pisniua_422634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_422634','Ой верше, мій верше','Українська народна пісня. Виконує: Кичера','uk','ukraine_before_1917',NULL,NULL,'Аудіо-альбом "Кичера. "Цне мі ся за Тобом... (Пісні лемків)"','Записано на слух з аудіо-джерела.','Ой верше, мій верше,
Мій дзелений верше,
Юж мі так не буде,  (2)  |
Як мі било перше.        | (2)

А перше мі било
Світа уживати.
Тераз неборачок  (2)  |
Мушу бідувати.        | (2)

А перше мі било,
Бардз мі добре било.
Од свойой мамічки  (2)  |
Не ходити било.         | (2)

Не ходити било
Горами, лісами,
Не любити било  (2)  |
З чорнима очками.    | (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_422634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_422634','Ой верше, мій верше','Ой верше, мій верше,
Мій дзелений верше,
Юж мі так не буде,  (2)  |
Як мі било перше.        | (2)

А перше мі било
Світа уживати.
Тераз неборачок  (2)  |
Мушу бідувати.        | (2)

А перше мі било,
Бардз мі добре било.
Од свойой мамічки  (2)  |
Не ходити било.         | (2)

Не ходити било
Горами, лісами,
Не любити било  (2)  |
З чорнима очками.    | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_422634_l1','pisniua_422634','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4221236';
DELETE FROM song_versions WHERE song_id = 'pisniua_4221236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4221236';
DELETE FROM songs WHERE id = 'pisniua_4221236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4221236','У горах Карпатах','Музика: на мелодію середньовічної рицарської балади Слова: гурток №2 ім. М.Дужого','uk','ukraine_1991',NULL,NULL,'співаник Лісової Школи',NULL,'У горах Карпатах, де Довбуша дух
Витає на крилах орлів,
Де честь і свобода є злотом життя,
Де меркне і власть королів.

Приспів:
Там сила і велич, краса пластова,
Там Школа живе Лісова,
До цілі прокладено сотні дорог,
Єдна їх Вкраїна і Бог!

Шумить і вирує юнацька душа,
Готова до чину завжди,
Знайти перемогу на вістрі меча,
Здолати пекельні труди.

Приспів.

А вітру неспокій здіймає вогонь,
Клекоче в юнацьких серцях,
Бо жити для себе замало для них,
Життя для ідеї- їх стяг.

Приспів.

У горах Карпатах, де Довбуша дух
Запалює пісні слова,
Там мужність й братерство єднають тіла
І слава Пласту ожива.

Приспів.','[''pisni.org.ua'', ''cat:plastovi'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4221236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4221236','У горах Карпатах','У горах Карпатах, де Довбуша дух
Витає на крилах орлів,
Де честь і свобода є злотом життя,
Де меркне і власть королів.

Приспів:
Там сила і велич, краса пластова,
Там Школа живе Лісова,
До цілі прокладено сотні дорог,
Єдна їх Вкраїна і Бог!

Шумить і вирує юнацька душа,
Готова до чину завжди,
Знайти перемогу на вістрі меча,
Здолати пекельні труди.

Приспів.

А вітру неспокій здіймає вогонь,
Клекоче в юнацьких серцях,
Бо жити для себе замало для них,
Життя для ідеї- їх стяг.

Приспів.

У горах Карпатах, де Довбуша дух
Запалює пісні слова,
Там мужність й братерство єднають тіла
І слава Пласту ожива.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4226481';
DELETE FROM song_versions WHERE song_id = 'pisniua_4226481';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4226481';
DELETE FROM songs WHERE id = 'pisniua_4226481';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4226481','Весілля','Музика: Леся Соболевська Слова: Нестор Мартинець. Виконує: Ярослав Бурлачук','uk','ukraine_before_1917',NULL,NULL,NULL,'У пісні використано весільні народні поспівки та награші Гуцульщини.','Ой, як то добре, як тебе люблять
Від всього серця, а не від зілля,
Ой, як то добре, як на подвір''ї
Музика грає, бо тут весілля.

Приспів:
Музика грає, душа співає,
Господар кличе до свого дому.
Віддаймо шану і зичимо щастя
Ми молодій і молодому.
Музика грає, земля радіє,
Господар кличе до свого дому.
Хай молодятам найкращі мрії
Збудуться завше в житті земному.

Ой, як то добре, як головонька
Болить від щастя, не від похмілля.
Ой, як то добре, як всі зійшлися,
Сусіди, рідні й гуде весілля.

Приспів.

Далі на мелодію приспіву:
Музика грає, душа співає,
Господар кличе до свого дому.
Віддаймо шану і зичимо щастя
Ми молодій і молодому.
Ой, як то добре, що ми вкраїнці,
А українці всім щастя зичать.
Якщо будете ви, гості, чемні,
То вас у куми іще покличуть.

Ой, як то добре, як тебе люблять
Від всього серця, а не від зілля.
Ой, як то добре, як на подвір''ї
Музика грає, гуде весілля,
Гуде весілля, гуде весілля!','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4226481'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4226481','Весілля','Ой, як то добре, як тебе люблять
Від всього серця, а не від зілля,
Ой, як то добре, як на подвір''ї
Музика грає, бо тут весілля.

Приспів:
Музика грає, душа співає,
Господар кличе до свого дому.
Віддаймо шану і зичимо щастя
Ми молодій і молодому.
Музика грає, земля радіє,
Господар кличе до свого дому.
Хай молодятам найкращі мрії
Збудуться завше в житті земному.

Ой, як то добре, як головонька
Болить від щастя, не від похмілля.
Ой, як то добре, як всі зійшлися,
Сусіди, рідні й гуде весілля.

Приспів.

Далі на мелодію приспіву:
Музика грає, душа співає,
Господар кличе до свого дому.
Віддаймо шану і зичимо щастя
Ми молодій і молодому.
Ой, як то добре, що ми вкраїнці,
А українці всім щастя зичать.
Якщо будете ви, гості, чемні,
То вас у куми іще покличуть.

Ой, як то добре, як тебе люблять
Від всього серця, а не від зілля.
Ой, як то добре, як на подвір''ї
Музика грає, гуде весілля,
Гуде весілля, гуде весілля!');
DELETE FROM song_links WHERE song_id = 'pisniua_422338';
DELETE FROM song_versions WHERE song_id = 'pisniua_422338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_422338';
DELETE FROM songs WHERE id = 'pisniua_422338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_422338','Чи я ж тобі, моя мамко','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Чи я ж тобі, моя мамко,
Не робила,
Що ти мене протиу ночі
Вирядила.

Протиу ночі, протиу ночі
Темненької
До свекрухи - до мамочки
Лихої.

Бо свекруха, бо мамочка
Не збудить,
Лишень піде до сусіди,
Та й обсудить.

Утворяй же, моя мамко,
Нову браму -
Веземо ти невісточку
Файно вбрану.

Утворяй же, моя мамко,
Кватирьку -
Веземо ти невісточку -
Богатирьку.

Утворяй же, моя мамко,
Віконце -
Веземо ти невісточку,
Як сонце.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_422338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_422338','Чи я ж тобі, моя мамко','Чи я ж тобі, моя мамко,
Не робила,
Що ти мене протиу ночі
Вирядила.

Протиу ночі, протиу ночі
Темненької
До свекрухи - до мамочки
Лихої.

Бо свекруха, бо мамочка
Не збудить,
Лишень піде до сусіди,
Та й обсудить.

Утворяй же, моя мамко,
Нову браму -
Веземо ти невісточку
Файно вбрану.

Утворяй же, моя мамко,
Кватирьку -
Веземо ти невісточку -
Богатирьку.

Утворяй же, моя мамко,
Віконце -
Веземо ти невісточку,
Як сонце.');
DELETE FROM song_links WHERE song_id = 'pisniua_4229787';
DELETE FROM song_versions WHERE song_id = 'pisniua_4229787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4229787';
DELETE FROM songs WHERE id = 'pisniua_4229787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4229787','А де же твій, Марусенько, старший брат?','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1975','"Пісні Тернопільщини". Пісенник. - Вип.1. - Київ: Муз. Україна, 1989.','Джерело: П. Медведик. 1975. Жабиня Зборівського р-ну. Від Насті Прокопів (1897, 3 кл). Мелодію розшифрував В. Подуфалий. 158. Пісні Тернопільщини: Календарно-обрядова та родинно-побутова лірика: Пісенник. Вип. 1. / Упоряд.: С.І. Стельмащук, П.К. Медведик. Вступ. ст. П. Медведика. — К.: Муз. Україна, 1989.','А де же твій, Марусенько,
Старший брат,
Що він твою косоньку
Розплітав?
Де він тії попліточки
Подівав?
Ой, чи він їх та на Дунай
Попускав?

Ой, чи він їх у кишеню
Заховав?
Чи він їх молодшим сестрам
Подавав?
Ані він їх на Дунай
Не пускав,
Ані він їх в кишеню
Не сховав,
Тільки їх молодшим сестрам
Подавав!','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4229787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4229787','А де же твій, Марусенько, старший брат?','А де же твій, Марусенько,
Старший брат,
Що він твою косоньку
Розплітав?
Де він тії попліточки
Подівав?
Ой, чи він їх та на Дунай
Попускав?

Ой, чи він їх у кишеню
Заховав?
Чи він їх молодшим сестрам
Подавав?
Ані він їх на Дунай
Не пускав,
Ані він їх в кишеню
Не сховав,
Тільки їх молодшим сестрам
Подавав!');
DELETE FROM song_links WHERE song_id = 'pisniua_4229634';
DELETE FROM song_versions WHERE song_id = 'pisniua_4229634';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4229634';
DELETE FROM songs WHERE id = 'pisniua_4229634';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4229634','Наш коровай хороший','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1969','"Пісні Тернопільщини". Пісенник. - Вип.1. - Київ: Муз. Україна, 1989.','М. Прокопчук. 1969. Обич Шумського р-ну. Від Марії Остапюк (1933, 3 кл). Мелодія з архіву П. Стельмащука. 144. Джерело: Пісні Тернопільщини: Календарно-обрядова та родинно-побутова лірика: Пісенник. Вип.1. / Упоряд.: С.І. Стельмащук, П.К. Медведик. Вступ. ст. П. Медведика. — К.: Муз. Україна, 1989.','Наш коровай хороший:
У печі високий.
На столі широкий,
Бо наш рід великий,
Щоб було чим ділити!

Наш коровай хороший:
У печі високий.
На столі широкий,
Бо наш рід великий,
Щоб було чим ділити!

Наш коровай хороший:
У печі високий.
На столі широкий,
Бо наш рід великий,
Щоб було чим ділити!','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4229634'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4229634','Наш коровай хороший','Наш коровай хороший:
У печі високий.
На столі широкий,
Бо наш рід великий,
Щоб було чим ділити!

Наш коровай хороший:
У печі високий.
На столі широкий,
Бо наш рід великий,
Щоб було чим ділити!

Наш коровай хороший:
У печі високий.
На столі широкий,
Бо наш рід великий,
Щоб було чим ділити!');
DELETE FROM song_links WHERE song_id = 'pisniua_4232535';
DELETE FROM song_versions WHERE song_id = 'pisniua_4232535';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4232535';
DELETE FROM songs WHERE id = 'pisniua_4232535';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4232535','Бажання загадай','Музика: Дмитро Хома Слова: Дмитро Хома. Виконує: Дмитро Хома','uk','ukraine_1991',NULL,NULL,'авторська пісня',NULL,'Пахне стіл вечерею в материнській хаті,
І ніхто не зайвий - тут на цьому святі,
Ген гуляє віхола містом і селом,
Знову вся родина за одним столом.

Приспів:
Новий рік - це на усе життя,
Новий рік - колядки і кутя,
В новий рік чекаємо гостей,
Хай лунає сміх дорослих і дітей!
Новий рік - запалює вогні,
Новий рік - вітання голосні,
Щиру дружбу, злагоду навік,
Хай у кожен дім приносить Новий рік!

Принесе хурделиця привітань багато,
У віконце стукає новорічне свято,
Іскри під копитами і легка хода,
Голосними дзвонами їде коляда.

Приспів.

Бажання загадай - приходить час,
Хай рік новий добром зустріне вас.
Усім родинам, сестрам і братам
Хай рік новий приносить щастя вам.

Приспів','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4232535'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4232535','Бажання загадай','Пахне стіл вечерею в материнській хаті,
І ніхто не зайвий - тут на цьому святі,
Ген гуляє віхола містом і селом,
Знову вся родина за одним столом.

Приспів:
Новий рік - це на усе життя,
Новий рік - колядки і кутя,
В новий рік чекаємо гостей,
Хай лунає сміх дорослих і дітей!
Новий рік - запалює вогні,
Новий рік - вітання голосні,
Щиру дружбу, злагоду навік,
Хай у кожен дім приносить Новий рік!

Принесе хурделиця привітань багато,
У віконце стукає новорічне свято,
Іскри під копитами і легка хода,
Голосними дзвонами їде коляда.

Приспів.

Бажання загадай - приходить час,
Хай рік новий добром зустріне вас.
Усім родинам, сестрам і братам
Хай рік новий приносить щастя вам.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4232535_l1','pisniua_4232535','YouTube','https://www.youtube.com/watch?v=YpgI5CNJwhU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4232535_l2','pisniua_4232535','YouTube','https://www.youtube.com/watch?v=L57AM5HuP7k','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4229232';
DELETE FROM song_versions WHERE song_id = 'pisniua_4229232';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4229232';
DELETE FROM songs WHERE id = 'pisniua_4229232';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4229232','Дорога до дому','Музика: Андрій Остапенко Слова: Олександр Овсянніков. Виконує: Нексі','uk','ukraine_1991',NULL,NULL,'відеозапис',NULL,'Як ідеш - повертайся додому,
Бо не можна на світі так жить.
Ти забудь про розлуку і втому,
Бо без тебе так серце щемить!
Я чекаю щодня і щоночі,
Повертайся з далеких шляхів,
Щоб твої не забула я очі,
Щоби твій не забула я сміх!

Приспів:
Цей вогонь спалить мене,   |
Доки темна ніч мине,       |
Доки зливи та дощі         |
Зберуть хмари в пригорщ... | (2)

Чому в світі такії дороги?..
Чому в світі такії шляхи?..
Помолися Всевишньому Богу,
Щоби він відпустив нам гріхи.
Щоб забув ти розлуку і втому,
Бо не можна на світі так жить.
Щоби ти повернулась додому,
Бо без тебе так серце щемить!

Приспів. (3)','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4229232'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4229232','Дорога до дому','Як ідеш - повертайся додому,
Бо не можна на світі так жить.
Ти забудь про розлуку і втому,
Бо без тебе так серце щемить!
Я чекаю щодня і щоночі,
Повертайся з далеких шляхів,
Щоб твої не забула я очі,
Щоби твій не забула я сміх!

Приспів:
Цей вогонь спалить мене,   |
Доки темна ніч мине,       |
Доки зливи та дощі         |
Зберуть хмари в пригорщ... | (2)

Чому в світі такії дороги?..
Чому в світі такії шляхи?..
Помолися Всевишньому Богу,
Щоби він відпустив нам гріхи.
Щоб забув ти розлуку і втому,
Бо не можна на світі так жить.
Щоби ти повернулась додому,
Бо без тебе так серце щемить!

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4229232_l1','pisniua_4229232','YouTube','https://www.youtube.com/watch?v=rUqQHQGBgbU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_423083';
DELETE FROM song_versions WHERE song_id = 'pisniua_423083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_423083';
DELETE FROM songs WHERE id = 'pisniua_423083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_423083','Плаче захмарене небо','Музика: Ярослав Вишиваний Слова: Олександр Демиденко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Плаче захмарене небо,
В роздумах клени сумні...
"Нам зустрічатись не треба" -
Стиха ти мовив мені.

Приспів:
Словом мене не пораниш,
Вірність свою збережу;
Хоч ти мене покидаєш -
Знай, що тебе я люблю.

Справжнє то щастя кохати,
Як його доля дає.
Як ти посмів розтоптати
Перше кохання моє.

Приспів.

Падають сльози, як роси,
Зрада пече без вогню.
Серце моє не попросить
В тебе ні крихти жалю.

Приспів.

Хай на полях громовиця,
Я не скорюся журбі;
Часто мені будуть снитись
Очі твої голубі.

Приспів.

Більше побачень не буде -
Різні в нас ляжуть путі;
Серце моє не полюбить
Більше нікого в житті.

Приспів.    Мелодія пісні (midi)','[''pisni.org.ua'', ''cat:dances'', ''cat:halycki'', ''cat:waltzes'', ''Пісні до танцю'', ''Пісні з Галичини'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_423083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_423083','Плаче захмарене небо','Плаче захмарене небо,
В роздумах клени сумні...
"Нам зустрічатись не треба" -
Стиха ти мовив мені.

Приспів:
Словом мене не пораниш,
Вірність свою збережу;
Хоч ти мене покидаєш -
Знай, що тебе я люблю.

Справжнє то щастя кохати,
Як його доля дає.
Як ти посмів розтоптати
Перше кохання моє.

Приспів.

Падають сльози, як роси,
Зрада пече без вогню.
Серце моє не попросить
В тебе ні крихти жалю.

Приспів.

Хай на полях громовиця,
Я не скорюся журбі;
Часто мені будуть снитись
Очі твої голубі.

Приспів.

Більше побачень не буде -
Різні в нас ляжуть путі;
Серце моє не полюбить
Більше нікого в житті.

Приспів.    Мелодія пісні (midi)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_423083_l1','pisniua_423083','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4230236';
DELETE FROM song_versions WHERE song_id = 'pisniua_4230236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4230236';
DELETE FROM songs WHERE id = 'pisniua_4230236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4230236','Чекає мати','Музика: Юрій Бірковий Слова: Ганна Черінь. Виконує: Юрій Бірковий','uk','ukraine_1991',NULL,NULL,'www.yuriy-birkovyy.do.am',NULL,'З відкритої печі ще жевріє жар...
На вишитий хмелем рушник
Поставила мати кутю і узвар, -
Грушевий узвар запашний.

Приспів:
Невже на Свят-вечір ізнов не прийде
Єдиний улюблений син?.. -
І тулить сорочечку знов до грудей,
Яку він маленьким носив.

Вслухається мати, не їсть і не спить,
У плач заметілі тужний:
Чи клямка де брязне, чи сніг не рипить,
Чи син не іде з чужини...

Приспів.

Одставила в мисці для сина куті,
А серце штовхнуло - іди.
Пішла виглядати, стоїть на путі,
А сніг замітає сліди...

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4230236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4230236','Чекає мати','З відкритої печі ще жевріє жар...
На вишитий хмелем рушник
Поставила мати кутю і узвар, -
Грушевий узвар запашний.

Приспів:
Невже на Свят-вечір ізнов не прийде
Єдиний улюблений син?.. -
І тулить сорочечку знов до грудей,
Яку він маленьким носив.

Вслухається мати, не їсть і не спить,
У плач заметілі тужний:
Чи клямка де брязне, чи сніг не рипить,
Чи син не іде з чужини...

Приспів.

Одставила в мисці для сина куті,
А серце штовхнуло - іди.
Пішла виглядати, стоїть на путі,
А сніг замітає сліди...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4233236';
DELETE FROM song_versions WHERE song_id = 'pisniua_4233236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4233236';
DELETE FROM songs WHERE id = 'pisniua_4233236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4233236','Вітаємо з Різдвом','Українська народна пісня. Виконує: Діана Глухова','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'В одну морозну тиху ніч
Як падав сніг лапатий,
Зійшлись звірятка лісові, |
З Різдвом усіх вітати!    | (2)

Приспів:
Дзінь-дзінь, бом-бом,
Дзінь-дзінь, бом-бом,
Колядка лине небом!
Дзінь-дзінь, бом-бом,
Дзінь-дзінь, бом-бом,
Вітаємо з Різдвом!

Тремтить вогонь воскових свіч,
Радіють ведмежата,
І зайчик, білка, і сова,  |
І всі навкруг звірята!    | (2)

Приспів.

І блідий місяць засвітивсь,
Ясна зоря настала,
Ісус у яслах народивсь -  |
І нова радість стала!     | (2)

Приспів. (2)','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4233236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4233236','Вітаємо з Різдвом','В одну морозну тиху ніч
Як падав сніг лапатий,
Зійшлись звірятка лісові, |
З Різдвом усіх вітати!    | (2)

Приспів:
Дзінь-дзінь, бом-бом,
Дзінь-дзінь, бом-бом,
Колядка лине небом!
Дзінь-дзінь, бом-бом,
Дзінь-дзінь, бом-бом,
Вітаємо з Різдвом!

Тремтить вогонь воскових свіч,
Радіють ведмежата,
І зайчик, білка, і сова,  |
І всі навкруг звірята!    | (2)

Приспів.

І блідий місяць засвітивсь,
Ясна зоря настала,
Ісус у яслах народивсь -  |
І нова радість стала!     | (2)

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4233236_l1','pisniua_4233236','YouTube','https://www.youtube.com/watch?v=8sCvGTsRfh0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_423632';
DELETE FROM song_versions WHERE song_id = 'pisniua_423632';
DELETE FROM songs_fts WHERE song_id = 'pisniua_423632';
DELETE FROM songs WHERE id = 'pisniua_423632';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_423632','Іду я росами','Музика: Володимир Верменич Слова: Олександр Богачук. Виконує: Костянтин Огнєвий','uk','ukraine_1991',NULL,NULL,'1. Надіслав Ярослав Богачук 2. Пісні про кохання. Пісенник. Випуск 1. Упорядник Р. П. Сабадаш. - К.: Музична Україна, 1972. - 96 с.',NULL,'Іду я росами ногами босими,
Жену попереду туманів череду.
А чайка крилами майнула білими
І доторкнулася далеких мрій.
Кого, кого, кого, кого
Шукаєш вранці на зорі?
Кого, кого, кого, кого
Гукає чайка угорі?
І зупинився я, і задивився я,*
Як перші промені несли тепло мені.
А мрії зграйкою пливли за чайкою,
І незабудками цвіла блакить...
Кого, кого, кого, кого
Чекаєш ти у тиху мить?
Чого, чого, чого, чого
Занило серце — і болить?
*Відміна:
Я зупинилася і задивилася','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_423632'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_423632','Іду я росами','Іду я росами ногами босими,
Жену попереду туманів череду.
А чайка крилами майнула білими
І доторкнулася далеких мрій.
Кого, кого, кого, кого
Шукаєш вранці на зорі?
Кого, кого, кого, кого
Гукає чайка угорі?
І зупинився я, і задивився я,*
Як перші промені несли тепло мені.
А мрії зграйкою пливли за чайкою,
І незабудками цвіла блакить...
Кого, кого, кого, кого
Чекаєш ти у тиху мить?
Чого, чого, чого, чого
Занило серце — і болить?
*Відміна:
Я зупинилася і задивилася');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_423632_l1','pisniua_423632','YouTube','https://www.youtube.com/watch?v=hZWeyisokYI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_423632_l2','pisniua_423632','YouTube','https://www.youtube.com/watch?v=GOMvlMwDp-Q','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4232787';
DELETE FROM song_versions WHERE song_id = 'pisniua_4232787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4232787';
DELETE FROM songs WHERE id = 'pisniua_4232787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4232787','Думкою лину','Слова: Леся Карпінська','uk','ukraine_1991',NULL,NULL,'Леся Карпінська',NULL,'Неначе білий сон, той ранок у маю:
Мовчазно похапцем зібрався,
Пішов у світ, немов у гості - без жалю,
А доля вибрала — назавжди.
Зашелестіли липи навздогін,
Зоря замерехтіла рання,
Свята молитва, як невдач заслін,
І сльози замість слів прощання:
"О, сину, сину мій!.."

Приспів:
Птахом із вирію,
Думкою лину я...
Вклонюсь низесенько
Землі батьків.
Пахне вона мені
Мами хустиною,
Медом і полином
Дитячих мрій.

Шляхами перехресними блудив,
Безвістям душу ніч вражала —
Хоч вишню мамину на чужині зростив,
Та у житті чогось не вистачало.
Сміється день в вікні калиною -
Хай благодать небесна не минає!
На висоті польоту лебединого
З України пісня долинає:
"О, сину, сину мій!.."

Приспів.','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4232787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4232787','Думкою лину','Неначе білий сон, той ранок у маю:
Мовчазно похапцем зібрався,
Пішов у світ, немов у гості - без жалю,
А доля вибрала — назавжди.
Зашелестіли липи навздогін,
Зоря замерехтіла рання,
Свята молитва, як невдач заслін,
І сльози замість слів прощання:
"О, сину, сину мій!.."

Приспів:
Птахом із вирію,
Думкою лину я...
Вклонюсь низесенько
Землі батьків.
Пахне вона мені
Мами хустиною,
Медом і полином
Дитячих мрій.

Шляхами перехресними блудив,
Безвістям душу ніч вражала —
Хоч вишню мамину на чужині зростив,
Та у житті чогось не вистачало.
Сміється день в вікні калиною -
Хай благодать небесна не минає!
На висоті польоту лебединого
З України пісня долинає:
"О, сину, сину мій!.."

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_424030';
DELETE FROM song_versions WHERE song_id = 'pisniua_424030';
DELETE FROM songs_fts WHERE song_id = 'pisniua_424030';
DELETE FROM songs WHERE id = 'pisniua_424030';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_424030','Клітка з Пантерою','Музика: Плач Єремії Слова: Віктор Неборак. Виконує: Плач Єремії','uk','ukraine_1991',NULL,NULL,'http://vitaly.rivne.com/plach_jeremii/cry_doors.htm##klitka',NULL,'Ти любиш розглядати шкіру
Яка формує тіло панни
Ти цю пантеру взяв на віру
Встромляєш в неї спис тюльпанний

Її навчили говорити
Хоча начхати їй на квіти
Ця усмішка бажає м''яса
В кров на арену неофіти

Злягання Риму рев пантери
Ар оргії судомні струми
У мозгах сплетені парфуми
Поети золотої ери

Налито в голови по вінця
Із місяця вино прозоре
Наповнить морем ваші пори
І кров смолиста і дивіться

Засмага смуга і печера
Вона богиня звірчи прірва
Вона гумова лялька шкіра
Чи морем створена Венера

Гітара в пальцях ловеласа
На звуки вишукані ласа','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_424030'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_424030','Клітка з Пантерою','Ти любиш розглядати шкіру
Яка формує тіло панни
Ти цю пантеру взяв на віру
Встромляєш в неї спис тюльпанний

Її навчили говорити
Хоча начхати їй на квіти
Ця усмішка бажає м''яса
В кров на арену неофіти

Злягання Риму рев пантери
Ар оргії судомні струми
У мозгах сплетені парфуми
Поети золотої ери

Налито в голови по вінця
Із місяця вино прозоре
Наповнить морем ваші пори
І кров смолиста і дивіться

Засмага смуга і печера
Вона богиня звірчи прірва
Вона гумова лялька шкіра
Чи морем створена Венера

Гітара в пальцях ловеласа
На звуки вишукані ласа');
DELETE FROM song_links WHERE song_id = 'pisniua_4234134';
DELETE FROM song_versions WHERE song_id = 'pisniua_4234134';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4234134';
DELETE FROM songs WHERE id = 'pisniua_4234134';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4234134','Ой, гиля, гиля, сірі гуси','Українська народна пісня. Виконує: Черкаський народний хор','uk','ukraine_before_1917',NULL,NULL,'Аудіозапис','Жартівлива пісня про невістку та свекруху. Пісні з Черкащини. Пісенна спадщина Наддніпрянської України. Хорова пісня. Традиційне та оригінальне українське хорове виконання.','Ой, гиля, гиля, сірі гуси,
Ой, гиля, гиля до води!
Як ти мене вірно любиш,
То й до свекрухи не веди!

Як ти мене вірно любиш,
То й до свекрухи не веди!
Ой, бо секруха - лепетуха,
Ой, як у полі лобода.

Вона ж мене заклопоче,
А я - дівчина молода!
Ой, якби була та я знала,
Ой, не йшла б заміж та гуляла!

Там то горе, там то біда,
Ой, голівонька моя бідна!
Там то горе, там то біда,
Ой, голівонька моя бідна!

Ой, тепер треба теє знати,
Ой, пізно лягти - рано встати,
Рано встати, піч топити,
Ой, щоб свекрусі догодити!

Ой, гиля, гиля, сірі гуси,
Ой, гиля, гиля, на Дунай!

Зав''язала голівоньку,
Ой, тепер сиди та й думай!
Зав''язала голівоньку,
Ой, тепер сиди та й думай!

Ой, гиля, гиля, сірі гуси,
Ой, гиля, гиля, до води!
Як ти мене вірно любиш,
То й до свекрухи не веди!

Як ти мене вірно любиш,
То й до свекрухи не веди!
Ой, до свекрухи не веди!','[''pisni.org.ua'', ''cat:naddnipryanski'', ''Наддніпрянські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4234134'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4234134','Ой, гиля, гиля, сірі гуси','Ой, гиля, гиля, сірі гуси,
Ой, гиля, гиля до води!
Як ти мене вірно любиш,
То й до свекрухи не веди!

Як ти мене вірно любиш,
То й до свекрухи не веди!
Ой, бо секруха - лепетуха,
Ой, як у полі лобода.

Вона ж мене заклопоче,
А я - дівчина молода!
Ой, якби була та я знала,
Ой, не йшла б заміж та гуляла!

Там то горе, там то біда,
Ой, голівонька моя бідна!
Там то горе, там то біда,
Ой, голівонька моя бідна!

Ой, тепер треба теє знати,
Ой, пізно лягти - рано встати,
Рано встати, піч топити,
Ой, щоб свекрусі догодити!

Ой, гиля, гиля, сірі гуси,
Ой, гиля, гиля, на Дунай!

Зав''язала голівоньку,
Ой, тепер сиди та й думай!
Зав''язала голівоньку,
Ой, тепер сиди та й думай!

Ой, гиля, гиля, сірі гуси,
Ой, гиля, гиля, до води!
Як ти мене вірно любиш,
То й до свекрухи не веди!

Як ти мене вірно любиш,
То й до свекрухи не веди!
Ой, до свекрухи не веди!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4234134_l1','pisniua_4234134','YouTube','https://www.youtube.com/watch?v=e-qZTNx8I8o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4234134_l2','pisniua_4234134','YouTube','https://www.youtube.com/watch?v=ayNPXnS5yi4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4234134_l3','pisniua_4234134','YouTube','https://www.youtube.com/watch?v=5SX0vwUUbfQ','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4234134_l4','pisniua_4234134','YouTube','https://www.youtube.com/watch?v=JmPaTfmQI1s','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4234134_l5','pisniua_4234134','YouTube','https://www.youtube.com/watch?v=1Q6ufeJpKxQ','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4234134_l6','pisniua_4234134','YouTube','https://www.youtube.com/watch?v=9dyx0EDFw8U','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_4238735';
DELETE FROM song_versions WHERE song_id = 'pisniua_4238735';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4238735';
DELETE FROM songs WHERE id = 'pisniua_4238735';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4238735','Відшуміли криваві жнива','Музика: Анатолій Сердюк Слова: Григорій Лютий. Виконує: Анатолій Сердюк','uk','ukraine_1991',NULL,NULL,'http://smoz.ru/',NULL,'Відшуміли криваві жнива,
За ніч встала прим''ята трава.
А в хлібах непокірний хлопчак,
Не хотів помирати ніяк.
Весь порубаний - світить душа,
Він баривсь на той світ вирушать,
Не приймав із небес благодать,
Все просив відпустить погулять.

Буду я недалечко ходить,
Як захочеш, покличеш за мить.
Я нічого собі не візьму,
Крім любов''ю роз''ятрених мук.
Обіцяв я прийти — відпусти!
За оті веселкові мости.
Поцілую очима її
І хай судять мене солов''ї.

Дай іще поблукать по траві,
Посміхнутись у води живі,
Дарувати стежину степам,
А тоді повернусь я і сам.
Я нікуди, повір не втечу,
Затулю лиш од вітру свічу.
Наче матінку рідну просив,
А в очах вже зірки хтось гасив.

Відшуміли криваві жнива,
За ніч встала прим''ята трава.
Коник попід в росі волочів,
Все іржав, не давав одпочить.
І травинкою степ не забув,
Ті зізнання, що кінь тільки чув.
І упало як зірка між трав
Те, що шабельці лиш довіряв.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4238735'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4238735','Відшуміли криваві жнива','Відшуміли криваві жнива,
За ніч встала прим''ята трава.
А в хлібах непокірний хлопчак,
Не хотів помирати ніяк.
Весь порубаний - світить душа,
Він баривсь на той світ вирушать,
Не приймав із небес благодать,
Все просив відпустить погулять.

Буду я недалечко ходить,
Як захочеш, покличеш за мить.
Я нічого собі не візьму,
Крім любов''ю роз''ятрених мук.
Обіцяв я прийти — відпусти!
За оті веселкові мости.
Поцілую очима її
І хай судять мене солов''ї.

Дай іще поблукать по траві,
Посміхнутись у води живі,
Дарувати стежину степам,
А тоді повернусь я і сам.
Я нікуди, повір не втечу,
Затулю лиш од вітру свічу.
Наче матінку рідну просив,
А в очах вже зірки хтось гасив.

Відшуміли криваві жнива,
За ніч встала прим''ята трава.
Коник попід в росі волочів,
Все іржав, не давав одпочить.
І травинкою степ не забув,
Ті зізнання, що кінь тільки чув.
І упало як зірка між трав
Те, що шабельці лиш довіряв.');
DELETE FROM song_links WHERE song_id = 'pisniua_4233632';
DELETE FROM song_versions WHERE song_id = 'pisniua_4233632';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4233632';
DELETE FROM songs WHERE id = 'pisniua_4233632';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4233632','На городі сурма грає','Музика: Микола Садовський Слова: народні. Виконує: Січова оркестра Сурма','uk','ukraine_before_1917',NULL,NULL,'Платівка грамвидавництва "Columbia" 27122-F',NULL,'На городі сурма грає,
На городі сурма грає,
Гей, то Січ        |
В похід виступає.  | (2)

Пусти мене, моя мати,
Пусти мене, моя мати,
Гей, там зі Січев  |
Погуляти.          | (2)

Буду тобі день орати,
Буду тобі день орати,
Гей, три дні ціпом |
Молотити.          | (2)','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4233632'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4233632','На городі сурма грає','На городі сурма грає,
На городі сурма грає,
Гей, то Січ        |
В похід виступає.  | (2)

Пусти мене, моя мати,
Пусти мене, моя мати,
Гей, там зі Січев  |
Погуляти.          | (2)

Буду тобі день орати,
Буду тобі день орати,
Гей, три дні ціпом |
Молотити.          | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4233632_l1','pisniua_4233632','YouTube','https://www.youtube.com/watch?v=S_qtPNFGN34','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4242083';
DELETE FROM song_versions WHERE song_id = 'pisniua_4242083';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4242083';
DELETE FROM songs WHERE id = 'pisniua_4242083';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4242083','Якби я мала крила орлині','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Якби я мала крила орлині,
Якби я вміла літати,
Я б полетіла на Україну
Свого милого шукати.

Лечу я милю, лечу я другу,
Свого милого не бачу.
Ой, сяду, сяду в вишневім саду
І так гіренько заплачу...

Не плач, дівчино, немає з чого,
Не має з чого плакати.
Є того цвіту по цілім світу,
Маєш в чім перебирати.

Ой, вийшла з хати старенька мати
Та й стала сина питати:
"Що то за пташка, що за пташина
У нашім саду співає?"

"Ой, то не пташка і не пташина
У нашім саду співає,
А то дівчина чорнобривая
Свого милого шукає..."','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4242083'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4242083','Якби я мала крила орлині','Якби я мала крила орлині,
Якби я вміла літати,
Я б полетіла на Україну
Свого милого шукати.

Лечу я милю, лечу я другу,
Свого милого не бачу.
Ой, сяду, сяду в вишневім саду
І так гіренько заплачу...

Не плач, дівчино, немає з чого,
Не має з чого плакати.
Є того цвіту по цілім світу,
Маєш в чім перебирати.

Ой, вийшла з хати старенька мати
Та й стала сина питати:
"Що то за пташка, що за пташина
У нашім саду співає?"

"Ой, то не пташка і не пташина
У нашім саду співає,
А то дівчина чорнобривая
Свого милого шукає..."');
DELETE FROM song_links WHERE song_id = 'pisniua_4243134';
DELETE FROM song_versions WHERE song_id = 'pisniua_4243134';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4243134';
DELETE FROM songs WHERE id = 'pisniua_4243134';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4243134','Гітара','Музика: Ірина Федишин Слова: Ірина Федишин. Виконує: Ірина Федишин','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Сонце за горою сховається
І на землю тихо ніч впаде,
А моя душа розривається,
Бо не знаю - милий чи прийде.
"На-на" - десь мелодія заграла
"На-на" - моє серце надірвала
"На-на" - я на тебе так чекала,
Чекала...

Приспів:
Твоя гітара, "на-на-на-на-на",
Давно не грала, "на-на-на-на-на",
Як буде сумно, "на-на-на-на-на",
На ній заграй, на ній заграй.
Своїй дівчині, "на-на-на-на-на",
Одній, єдиній, "на-на-на-на-на",
Веселу пісню, "на-на-на-на-на",
На ній заграй!..

А в моїй душі лиш одна струна
Залишилася від тої гри,
І не знаю я, але знаєш ти,
Як по ній акордами іти.
"На-на" - десь мелодія заграла
"На-на" - моє серце надірвала
"На-на" - я на тебе так чекала,
Чекала...

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4243134'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4243134','Гітара','Сонце за горою сховається
І на землю тихо ніч впаде,
А моя душа розривається,
Бо не знаю - милий чи прийде.
"На-на" - десь мелодія заграла
"На-на" - моє серце надірвала
"На-на" - я на тебе так чекала,
Чекала...

Приспів:
Твоя гітара, "на-на-на-на-на",
Давно не грала, "на-на-на-на-на",
Як буде сумно, "на-на-на-на-на",
На ній заграй, на ній заграй.
Своїй дівчині, "на-на-на-на-на",
Одній, єдиній, "на-на-на-на-на",
Веселу пісню, "на-на-на-на-на",
На ній заграй!..

А в моїй душі лиш одна струна
Залишилася від тої гри,
І не знаю я, але знаєш ти,
Як по ній акордами іти.
"На-на" - десь мелодія заграла
"На-на" - моє серце надірвала
"На-на" - я на тебе так чекала,
Чекала...

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4243134_l1','pisniua_4243134','YouTube','https://www.youtube.com/watch?v=XGc-C7dYOh4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4243539';
DELETE FROM song_versions WHERE song_id = 'pisniua_4243539';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4243539';
DELETE FROM songs WHERE id = 'pisniua_4243539';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4243539','Галя молода','Музика: Gallina Слова: Gallina. Виконує: Gallina','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Я шукала, мама, правду,
Я ж з дитинства хрещена,
Та немає тої правди
У очах розбещених.
Ви ж йому були не теща,
Сином називаючи,
А він тільки їсть та бреше
Легко, мов співаючи.

Приспів:
Шуба-шуба-шуба-да,
Шуба-шуба-шуба да,
А я Галя молода!
Шуба-шуба-шуба-да,
Шуба-шуба-шуба да,
А я Галя молода!

Ви ж самі співали, мамо,
Ви ж були моторною,
Але раптом з''їхав трактор
На ту смугу чорную.
Полюбила козаченька,
Йому квіти кидала,
А ви взяли мене, ненько,
Ще й за нього видали.

Приспів.

Та не треба сльози, мамо,
Проливати річками,
В мене ж мамо повна хата -
Півники з індичками.
Хай же квітне Україна,
А я з нею славлюся,
А із рідним чоловіком
Я вже якось справлюся!

Приспів. (3)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4243539'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4243539','Галя молода','Я шукала, мама, правду,
Я ж з дитинства хрещена,
Та немає тої правди
У очах розбещених.
Ви ж йому були не теща,
Сином називаючи,
А він тільки їсть та бреше
Легко, мов співаючи.

Приспів:
Шуба-шуба-шуба-да,
Шуба-шуба-шуба да,
А я Галя молода!
Шуба-шуба-шуба-да,
Шуба-шуба-шуба да,
А я Галя молода!

Ви ж самі співали, мамо,
Ви ж були моторною,
Але раптом з''їхав трактор
На ту смугу чорную.
Полюбила козаченька,
Йому квіти кидала,
А ви взяли мене, ненько,
Ще й за нього видали.

Приспів.

Та не треба сльози, мамо,
Проливати річками,
В мене ж мамо повна хата -
Півники з індичками.
Хай же квітне Україна,
А я з нею славлюся,
А із рідним чоловіком
Я вже якось справлюся!

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4243539_l1','pisniua_4243539','YouTube','https://www.youtube.com/watch?v=zSX57WDxpU0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4239981';
DELETE FROM song_versions WHERE song_id = 'pisniua_4239981';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4239981';
DELETE FROM songs WHERE id = 'pisniua_4239981';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4239981','Будь іскрою','Музика: Соломія Мричко Слова: Соломія Мричко. Виконує: Соломія Мричко','uk','ukr_ssr_1919_1991',NULL,'1990','Власний запис моєї пісні','Життєпис автора, пластунки Соломії Мричко: "Я народилася у Львові 1990 року і перших 9 років свого життя я провела саме там, після чого переїхала до Києва, де і вступила до Пласту, в курінь ч. 46 ім. Марусі Богуславки. Цьому сприяв мій тато, за що йому велике дякую! Я з дитинства займаюсь музикою і пластовий гурток у мене теж був доволі музичним, що тільки сприяло музичному розвитку. Моя мама теж професійний музикант і постійно мене підтримує в моїй діяльності, за що я їй дуже вдячна. У мене було чудове, цікаве юнацтво. З гуртком ми не лише збирались на сходинах чи таборах, але й разом їздили на музичний фестиваль Зоряний вітер. А на 95-ліття Пласту частина нашого гуртка (я та Вірця Гнатюк), разом з виховницею Ромою Зубенко, та Зв''язковою нашого куреня Даною Санькою виступали на фестивалі Золота гітара. Рік тому я перейшла в старше пластунство, але і досі підтримую спілкування із членами свого гуртка, нашою виховницею, та іншими людьми, які стали для мене не просто пластунами, а великою родиною.','Пліч-о-пліч століт ми гартуєм тіло й дух,
Крокуєм завзято, тут кожен твій друг.
У серці надія і віра свята,
У діях ми певні, в нас воля тверда!

Приспів:
Будь іскрою - і запали собою життя!   |
Будь іскрою - освічуй людям шлях!     |
Будь іскрою любові та завзяття!       |
Будь іскрою, як мрієш бачити багаття! | (2)

Будь іскрою!

Разом на світанні присягу ми склали
І честю своєю її ми берегли,
Щоб гордо зі співом нам по шляху іти
І пластову лелею понести крізь віки!

Приспів.

Будь іскрою!                          | (4)','[''pisni.org.ua'', ''cat:plastovi'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4239981'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4239981','Будь іскрою','Пліч-о-пліч століт ми гартуєм тіло й дух,
Крокуєм завзято, тут кожен твій друг.
У серці надія і віра свята,
У діях ми певні, в нас воля тверда!

Приспів:
Будь іскрою - і запали собою життя!   |
Будь іскрою - освічуй людям шлях!     |
Будь іскрою любові та завзяття!       |
Будь іскрою, як мрієш бачити багаття! | (2)

Будь іскрою!

Разом на світанні присягу ми склали
І честю своєю її ми берегли,
Щоб гордо зі співом нам по шляху іти
І пластову лелею понести крізь віки!

Приспів.

Будь іскрою!                          | (4)');
DELETE FROM song_links WHERE song_id = 'pisniua_42434';
DELETE FROM song_versions WHERE song_id = 'pisniua_42434';
DELETE FROM songs_fts WHERE song_id = 'pisniua_42434';
DELETE FROM songs WHERE id = 'pisniua_42434';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_42434','Верше','(Ой верше, мій верше). Українська народна пісня. Виконує: Ансамбль Львівського Університету "Черемош", Illaria','uk','ukraine_before_1917',NULL,NULL,'Книга "Пісні "Черемоша"','Підібрав Ігор Ковальчук.','Cm
------------------3-------------------------3-----
------4-----3-------------------4-----3-----------
----5---5-----5-----5---------5---5-----5-----5---
--5-------5-----5-----5-----5-------5-----5-----5-
3-------------------------3-----------------------

Cm
Ой верше, мій верше,
Мій зелений верше...
D#     Fm(VIII)
Юж мі так не буде,   |
G
Юж мі так не буде,   |
Як мі било перше.    | (2)

А перше мі било,
Бардз мі добре било.
Од своєй мамічки,    |
Од своєй мамічки     |
Не ходити било.      | (2)

Не ходити било
Горами, лісами,
Не любити хлопця,    |
Не любити хлопця     |
З чорними очами.     | (2)

Бо ті чарне очі
Сяють опівночі.
А мої за нима,       |
А мої за нима        |
Здали би ся з нима.  | (2)

Ой верше, мій верше,
Мій зелений верше...
Юж мі так не буде,   |
Юж мі так не буде,   |
Як мі било перше.    | (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_42434'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_42434','Верше','Cm
------------------3-------------------------3-----
------4-----3-------------------4-----3-----------
----5---5-----5-----5---------5---5-----5-----5---
--5-------5-----5-----5-----5-------5-----5-----5-
3-------------------------3-----------------------

Cm
Ой верше, мій верше,
Мій зелений верше...
D#     Fm(VIII)
Юж мі так не буде,   |
G
Юж мі так не буде,   |
Як мі било перше.    | (2)

А перше мі било,
Бардз мі добре било.
Од своєй мамічки,    |
Од своєй мамічки     |
Не ходити било.      | (2)

Не ходити било
Горами, лісами,
Не любити хлопця,    |
Не любити хлопця     |
З чорними очами.     | (2)

Бо ті чарне очі
Сяють опівночі.
А мої за нима,       |
А мої за нима        |
Здали би ся з нима.  | (2)

Ой верше, мій верше,
Мій зелений верше...
Юж мі так не буде,   |
Юж мі так не буде,   |
Як мі било перше.    | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_42434_l1','pisniua_42434','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4241787';
DELETE FROM song_versions WHERE song_id = 'pisniua_4241787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4241787';
DELETE FROM songs WHERE id = 'pisniua_4241787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4241787','Останній дзвоник','Музика: Михайло Герц Слова: М. Шушкевич','uk','ukraine_1991',NULL,NULL,'авторське подання','на днях виставлю плюсовку','Травневий день, звучать фанфари,
У квітах сонце блискотить.
Випускників святкові пари
Зібрались у святкову мить.
Останній дзвоник йде по колу
В серцях і радість й тихий щем.
Спасибі, рідна, любо школо,
Тобі вітання щирі шлем.

Приспів:
Останній дзвоник мелодійний,
Дзвени, дзвени в блакитну рань.
Ти другом був для нас надійним,
Провісником глибоких знань.
Дзвени, дзвени срібноголосо,
Відлунюй пам''яттю в серцях.
Трояндами у чистих росах
Майбутнього вистелюй шлях.

Роки немов гірські потоки
Зливались в зрілості ріку.
Ставали впевненими кроки
З дитинства в юність гомінку.
На школі рідному порозі
Вирують наші почуття.
Ми по незвіданій дорозі
Ідемо пізнавать життя.

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4241787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4241787','Останній дзвоник','Травневий день, звучать фанфари,
У квітах сонце блискотить.
Випускників святкові пари
Зібрались у святкову мить.
Останній дзвоник йде по колу
В серцях і радість й тихий щем.
Спасибі, рідна, любо школо,
Тобі вітання щирі шлем.

Приспів:
Останній дзвоник мелодійний,
Дзвени, дзвени в блакитну рань.
Ти другом був для нас надійним,
Провісником глибоких знань.
Дзвени, дзвени срібноголосо,
Відлунюй пам''яттю в серцях.
Трояндами у чистих росах
Майбутнього вистелюй шлях.

Роки немов гірські потоки
Зливались в зрілості ріку.
Ставали впевненими кроки
З дитинства в юність гомінку.
На школі рідному порозі
Вирують наші почуття.
Ми по незвіданій дорозі
Ідемо пізнавать життя.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_4234230';
DELETE FROM song_versions WHERE song_id = 'pisniua_4234230';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4234230';
DELETE FROM songs WHERE id = 'pisniua_4234230';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4234230','Колядин, Колядин','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'В.І. Галій — Українські народні пісні / © Видавництво: "Фоліо", Харків, 2001. (Серія "Домашня б-ка").','Українська народна творчість, українська пісенність, художній світ.','Колядин, колядин,
Я у батька один.
Мені не дивуйте,
Ковбасу лаштуйте.

Колядин-дин,
Я, бабусю, один.
Винеси мені пиріжечок
Та положи у мішечок,
З руками, з ногами,
Щоб бігав за нами.

Колядин, колядин,
Я у батька один.
По коліна кожушок,
Дайте, дядьку, пирожок.

Колядин, колядин,
А я в батька один,
В порватім кожушку,
Винесіть пампушку.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyadky'', ''cat:narodni'', ''Дитячі пісні'', ''Колядки'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4234230'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4234230','Колядин, Колядин','Колядин, колядин,
Я у батька один.
Мені не дивуйте,
Ковбасу лаштуйте.

Колядин-дин,
Я, бабусю, один.
Винеси мені пиріжечок
Та положи у мішечок,
З руками, з ногами,
Щоб бігав за нами.

Колядин, колядин,
Я у батька один.
По коліна кожушок,
Дайте, дядьку, пирожок.

Колядин, колядин,
А я в батька один,
В порватім кожушку,
Винесіть пампушку.');
DELETE FROM song_links WHERE song_id = 'pisniua_4237287';
DELETE FROM song_versions WHERE song_id = 'pisniua_4237287';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4237287';
DELETE FROM songs WHERE id = 'pisniua_4237287';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4237287','Шуміла сосна і явір','Українська народна пісня. Виконує: Ансамбль Льонок','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Солісти: Л. Кондратюк, В. Світко, Л. Павленко.','Шуміла сосна і явір,
Шуміла сосна і явір,
Сподобав ми ся кавалір,
Сподобав ми ся кавалір.

Шуміла сосна і явір,
Сподобав ми ся кавалір,
Сподобав ми ся кавалір.

Ой, під сосною стояла,
Ой, під сосною стояла,
Русую косу чесала,
Русую косу чесала.

Ой, під сосною стояла,
Русую косу чесала,
Русую косу чесала.

Ой, коси коси, ви мої,
Ой, коси коси, ви мої,
Довго служили ви мені,
Довго служили ви мені.

Більше служить не будете,
Більше служить не будете,
Під білий вельон підете,
Під білий вельон підете.

Шуміла сосна і явір,
Шуміла сосна і явір,
Сподобав ми ся кавалір,
Сподобав ми ся кавалір.

Шуміла сосна і явір,
Сподобав ми ся кавалір,
Сподобав ми ся кавалір.','[''pisni.org.ua'', ''cat:poliski'', ''cat:vesilni'', ''cat:volynski'', ''Пісні з Полісся'', ''Весільні пісні'', ''Пісні з Волині'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4237287'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4237287','Шуміла сосна і явір','Шуміла сосна і явір,
Шуміла сосна і явір,
Сподобав ми ся кавалір,
Сподобав ми ся кавалір.

Шуміла сосна і явір,
Сподобав ми ся кавалір,
Сподобав ми ся кавалір.

Ой, під сосною стояла,
Ой, під сосною стояла,
Русую косу чесала,
Русую косу чесала.

Ой, під сосною стояла,
Русую косу чесала,
Русую косу чесала.

Ой, коси коси, ви мої,
Ой, коси коси, ви мої,
Довго служили ви мені,
Довго служили ви мені.

Більше служить не будете,
Більше служить не будете,
Під білий вельон підете,
Під білий вельон підете.

Шуміла сосна і явір,
Шуміла сосна і явір,
Сподобав ми ся кавалір,
Сподобав ми ся кавалір.

Шуміла сосна і явір,
Сподобав ми ся кавалір,
Сподобав ми ся кавалір.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4237287_l1','pisniua_4237287','YouTube','https://www.youtube.com/watch?v=miW9D6H9itM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4237287_l2','pisniua_4237287','YouTube','https://www.youtube.com/watch?v=ZDQPRVrksRU','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4236236';
DELETE FROM song_versions WHERE song_id = 'pisniua_4236236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4236236';
DELETE FROM songs WHERE id = 'pisniua_4236236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4236236','Новий Рік','Музика: Anno Domini Слова: Ігор Дідук. Виконує: Lil` Duk feat. Ulusius','uk','ukraine_1991',NULL,NULL,'http://www.realmusic.ru/songs/981727/',NULL,'Приспів:
Новий Рік, що? Новий Рік, що? |
Уже іде до нас! Опа!          |
Щастя й радість нам дарує     |
У цей святковий час.          | (2)

За вікном сніжку багато,
Рік Новий іде до нас,
І ялинку запашисту
Прикрашати час.
Ось подивіться на красуню,
В неї одяг не простий -
Зверху донизу по гілках
Ллється дощ золотий.
Тут і кульки, горіхи
І ліхтарики для втіхи,
Щоб раділи завжди ви
І разом з вами діточки.
Ой, чепурна яка ялинка,
Наче чарівна картинка,
Завжди настрій піднімає,
Негатив забирає.
Щоб могли ви святкувати
І бажання загадати,
Бо ця нічка Новорічна,
Найчудовіша узимку.
Запалює зірки,
Дає святкові думки,
Та убиває всяке зло,
Щоб цілий рік нам везло.
Тож наших рідних і коханих
Ми вітаєм не останніх,
Всім бажаємо здоров''я
І удачі з любов''ю.
А о дванадцятій годині
Похитнеться стрілка - клік,
І ми всі за мить єдину
Підростем на цілий рік!

Приспів.

Чого ти, друже, бажаєш?
Кого нестримно чекаєш?
Ти з нетерпінням відчуваєш
Настрій світу святковий.
І цей рік Новий
Тобі дарує море сміху,
Кучу щастя, кохання
І заповітні бажання.
Вже у кожній оселі
Стоять ялинки веселі,
Ми хороводи поводимо
Навіть в холодну погоду.
Походу буде що згадати
Після бурного свята,
Та якщо не згадаєш,
То значить добрих друзів маєш.
Нехай залишаться проблеми всі
У старому році,
Дивися, зірка з неба падає -
Це знак хороший.
Зробити крок на зустріч щастю -
Це ти завжди зможеш,
Та загадай своє бажання,
Попроси чого хочеш.
Нехай різдвяний дух
Оселиться в твоїй душі,
Нехай у ніч святкову
З тобою будуть тільки ті,
Оті хороші й вірні люди,
Тільки щастя і сміх,
Посміхнися, любий друже,
Бо це Новий рік!

Приспів.

Новий Рік, що? Новий Рік, що?
Уже іде до нас, Опа!
Святкувати нам вже час,
З Новим Роком, друзі, вас!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4236236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4236236','Новий Рік','Приспів:
Новий Рік, що? Новий Рік, що? |
Уже іде до нас! Опа!          |
Щастя й радість нам дарує     |
У цей святковий час.          | (2)

За вікном сніжку багато,
Рік Новий іде до нас,
І ялинку запашисту
Прикрашати час.
Ось подивіться на красуню,
В неї одяг не простий -
Зверху донизу по гілках
Ллється дощ золотий.
Тут і кульки, горіхи
І ліхтарики для втіхи,
Щоб раділи завжди ви
І разом з вами діточки.
Ой, чепурна яка ялинка,
Наче чарівна картинка,
Завжди настрій піднімає,
Негатив забирає.
Щоб могли ви святкувати
І бажання загадати,
Бо ця нічка Новорічна,
Найчудовіша узимку.
Запалює зірки,
Дає святкові думки,
Та убиває всяке зло,
Щоб цілий рік нам везло.
Тож наших рідних і коханих
Ми вітаєм не останніх,
Всім бажаємо здоров''я
І удачі з любов''ю.
А о дванадцятій годині
Похитнеться стрілка - клік,
І ми всі за мить єдину
Підростем на цілий рік!

Приспів.

Чого ти, друже, бажаєш?
Кого нестримно чекаєш?
Ти з нетерпінням відчуваєш
Настрій світу святковий.
І цей рік Новий
Тобі дарує море сміху,
Кучу щастя, кохання
І заповітні бажання.
Вже у кожній оселі
Стоять ялинки веселі,
Ми хороводи поводимо
Навіть в холодну погоду.
Походу буде що згадати
Після бурного свята,
Та якщо не згадаєш,
То значить добрих друзів маєш.
Нехай залишаться проблеми всі
У старому році,
Дивися, зірка з неба падає -
Це знак хороший.
Зробити крок на зустріч щастю -
Це ти завжди зможеш,
Та загадай своє бажання,
Попроси чого хочеш.
Нехай різдвяний дух
Оселиться в твоїй душі,
Нехай у ніч святкову
З тобою будуть тільки ті,
Оті хороші й вірні люди,
Тільки щастя і сміх,
Посміхнися, любий друже,
Бо це Новий рік!

Приспів.

Новий Рік, що? Новий Рік, що?
Уже іде до нас, Опа!
Святкувати нам вже час,
З Новим Роком, друзі, вас!');
DELETE FROM song_links WHERE song_id = 'pisniua_4240539';
DELETE FROM song_versions WHERE song_id = 'pisniua_4240539';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4240539';
DELETE FROM songs WHERE id = 'pisniua_4240539';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4240539','Дума про Байду','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Znaczenie i wewnętrzne życie Zaporoza podług Skalkowskiego, von Michał Gliszczyński,Apollon Aleksan',NULL,'В славному містечку, в рідному Черкасі
Козак Байда мед вино спиває;
Мед, вино спиває
На турецькі землі грозно поглядає.

На турецького султана вельми похватає,
Ой, п''є Байда, та на своїх кличе:
Ану теж но скоро коліно музиче!
Мед та вино випивайте,
Пляшки спорожняйте,
Коник-но сідлайте,
Збройцю наряжайте,

Та підем в Туреччину,
Покарає лихую годину.
Бо вже ми ж ми давно рідненької Січі,
Та не бачили в вежи.

Пішов Байда з Козаками,
Турки к нему ідут з дарами;
Що їх султан присилає,
Байду к собі підмовляє:

Ой! Ти, Байдо славнесенький!
Будь ти міні вірнесенький,
Вузми мою султановну дівчину,
І будь паном на всю Україну.

Твоя, султане, віра проклятая;
Твоя, султане, дочка поганая;
А я без твоєї султанивни дівчини,
Буду паном на всю України.

Ой, ти, Байдо! В що ти дбаєш?
Чи ти війська тільки маєш,
Щобись мене, султана, звоював,
Та в країні Козаком панував?
В мене війська, як в морі піску,
Або влізе в одну маківочку.

Мені, Байді, се байдуже;
Шо ти війська маєш много дуже,
Пісок в морі вода змиє,
Мак у полі вітер віє.
Но я своїх Козаченьків дбаю:
Шо я з ними в двору твоїм погуляю:

Ой, крикнув султан на свої гайдуки: -
Возміте-но Байда добре в руки,
Ой, возьміте Байду тай зв''яжіте,
На гак ребром почепіти. -

Висить Байда не день, не два,
Не дві нічки, ні годинки,
Висит Байда, Хреста, прославляє,
І до свого чури, чури молодого словом промовляє:
Ой, чуро мій, чуро молоденький!
Будь ти мені ще трохи вірненький,
За те тобі Бог заплатить много,
А я тобі дарю коня вороного:
Утікай з ним на родину,
Завези од мене поклон в Україну.

Оно міні отдай лучок,
І з сайдака стрілок пучок,
Нех ше хоч раз в моїм житті,
Пущу стрілу по білому світі.
Ой, бачу я три голубечки,
Може їх уб''ю для султанскої дочки,
Нехай же я ій уб''ю на вечерю.
Ой, як встрілив...

Було тобі знати, як Байду карати.
Не на гак чипати, а голову зняти,
Вороним конем їздити,
Мого чуру, чуру молодого, собі зголубити.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4240539'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4240539','Дума про Байду','В славному містечку, в рідному Черкасі
Козак Байда мед вино спиває;
Мед, вино спиває
На турецькі землі грозно поглядає.

На турецького султана вельми похватає,
Ой, п''є Байда, та на своїх кличе:
Ану теж но скоро коліно музиче!
Мед та вино випивайте,
Пляшки спорожняйте,
Коник-но сідлайте,
Збройцю наряжайте,

Та підем в Туреччину,
Покарає лихую годину.
Бо вже ми ж ми давно рідненької Січі,
Та не бачили в вежи.

Пішов Байда з Козаками,
Турки к нему ідут з дарами;
Що їх султан присилає,
Байду к собі підмовляє:

Ой! Ти, Байдо славнесенький!
Будь ти міні вірнесенький,
Вузми мою султановну дівчину,
І будь паном на всю Україну.

Твоя, султане, віра проклятая;
Твоя, султане, дочка поганая;
А я без твоєї султанивни дівчини,
Буду паном на всю України.

Ой, ти, Байдо! В що ти дбаєш?
Чи ти війська тільки маєш,
Щобись мене, султана, звоював,
Та в країні Козаком панував?
В мене війська, як в морі піску,
Або влізе в одну маківочку.

Мені, Байді, се байдуже;
Шо ти війська маєш много дуже,
Пісок в морі вода змиє,
Мак у полі вітер віє.
Но я своїх Козаченьків дбаю:
Шо я з ними в двору твоїм погуляю:

Ой, крикнув султан на свої гайдуки: -
Возміте-но Байда добре в руки,
Ой, возьміте Байду тай зв''яжіте,
На гак ребром почепіти. -

Висить Байда не день, не два,
Не дві нічки, ні годинки,
Висит Байда, Хреста, прославляє,
І до свого чури, чури молодого словом промовляє:
Ой, чуро мій, чуро молоденький!
Будь ти мені ще трохи вірненький,
За те тобі Бог заплатить много,
А я тобі дарю коня вороного:
Утікай з ним на родину,
Завези од мене поклон в Україну.

Оно міні отдай лучок,
І з сайдака стрілок пучок,
Нех ше хоч раз в моїм житті,
Пущу стрілу по білому світі.
Ой, бачу я три голубечки,
Може їх уб''ю для султанскої дочки,
Нехай же я ій уб''ю на вечерю.
Ой, як встрілив...

Було тобі знати, як Байду карати.
Не на гак чипати, а голову зняти,
Вороним конем їздити,
Мого чуру, чуру молодого, собі зголубити.');
DELETE FROM song_links WHERE song_id = 'pisniua_4244232';
DELETE FROM song_versions WHERE song_id = 'pisniua_4244232';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4244232';
DELETE FROM songs WHERE id = 'pisniua_4244232';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4244232','Щедрик','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'збірка хорових творів в обр. М. Леонтовича',NULL,'Щедрик, щедрик, щедрівочка,
Прилетіла ластівочка,
Стала собі щебетати,
Господаря викликати.
Вийди, вийди, господарю,
Подивися на кошару.
Там овечки покотились,
А ягнички народились.
В тебе товар весь хороший,
Будеш мати мірку грошей.
В тебе жінка чорноброва.
Хоч не гроші, то полова,
В тебе жінка чорноброва.

Щедрик, щедрик, щедрівочка,
Прилетіла ластівочка...','[''pisni.org.ua'', ''cat:narodni'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4244232'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4244232','Щедрик','Щедрик, щедрик, щедрівочка,
Прилетіла ластівочка,
Стала собі щебетати,
Господаря викликати.
Вийди, вийди, господарю,
Подивися на кошару.
Там овечки покотились,
А ягнички народились.
В тебе товар весь хороший,
Будеш мати мірку грошей.
В тебе жінка чорноброва.
Хоч не гроші, то полова,
В тебе жінка чорноброва.

Щедрик, щедрик, щедрівочка,
Прилетіла ластівочка...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4244232_l1','pisniua_4244232','YouTube','https://www.youtube.com/watch?v=ggzg4dYsw5w','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4244232_l2','pisniua_4244232','YouTube','https://www.youtube.com/watch?v=K1HJtx0IEGs','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_4242236';
DELETE FROM song_versions WHERE song_id = 'pisniua_4242236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4242236';
DELETE FROM songs WHERE id = 'pisniua_4242236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4242236','Ой, не світи, місяченьку','Українська народна пісня. Виконує: Черкаський народний хор','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой, не світи, місяченьку,  |
Та й на той перелаз,       | (2)
Прийди, прийди, мій миленький,
До мене ще хоч раз!

Я до тебе більш не прийду, |
Нехай хтось інший йде,     | (2)
Є у мене люба дівчина,
Вона на мене жде.

Був я, був я, дівчинонько, |
У твоєму саду,             | (2)
Чув я, чув, як ти присягалась
Іншому козаку.

Ой, якби я крила мала      |
Ще й солов''я очі,          | (2)
Я б до тебе прилетіла
Серед опівночі.

Я б до тебе прилетіла,     |
Коло тебе сіла,            | (2)
Я би тобі, мій миленький,
Правду говорила.

Як ми з тобою любилися,    |
Сухі дуби цвіли,           | (2)
А як з тобою розлучилися -
Зелені й пов''яли.

Щоб ті трави повсихали,    |
що рано так цвіли,         | (2)
Щоб ті люди щастя не знали,
Що нас розлучили','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4242236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4242236','Ой, не світи, місяченьку','Ой, не світи, місяченьку,  |
Та й на той перелаз,       | (2)
Прийди, прийди, мій миленький,
До мене ще хоч раз!

Я до тебе більш не прийду, |
Нехай хтось інший йде,     | (2)
Є у мене люба дівчина,
Вона на мене жде.

Був я, був я, дівчинонько, |
У твоєму саду,             | (2)
Чув я, чув, як ти присягалась
Іншому козаку.

Ой, якби я крила мала      |
Ще й солов''я очі,          | (2)
Я б до тебе прилетіла
Серед опівночі.

Я б до тебе прилетіла,     |
Коло тебе сіла,            | (2)
Я би тобі, мій миленький,
Правду говорила.

Як ми з тобою любилися,    |
Сухі дуби цвіли,           | (2)
А як з тобою розлучилися -
Зелені й пов''яли.

Щоб ті трави повсихали,    |
що рано так цвіли,         | (2)
Щоб ті люди щастя не знали,
Що нас розлучили');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4242236_l1','pisniua_4242236','YouTube','https://www.youtube.com/watch?v=JfWqOYAxrB8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4242236_l2','pisniua_4242236','YouTube','https://www.youtube.com/watch?v=0IIBQA-8ACk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4242236_l3','pisniua_4242236','YouTube','https://www.youtube.com/watch?v=dOWzx78dFHk','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4242236_l4','pisniua_4242236','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_4245236';
DELETE FROM song_versions WHERE song_id = 'pisniua_4245236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4245236';
DELETE FROM songs WHERE id = 'pisniua_4245236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4245236','Тут і тепер','Музика: С.К.А.Й., Budka Suflera Слова: С.К.А.Й., Budka Suflera. Виконує: С.К.А.Й., Budka Suflera','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Над Чорним морем
Під звук Карпат
Вся Україна
Скандує в такт,
Osіągnąć nowych zwycіęstw -
Dumnіe tak odpowіedź dać.
Повір у себе
І otwarte śwіąt!

Na brzegakh Wіsły
І ja і ty,
My tu і teraz
Spełnіamy sny,
Перемога стане другом,
А невдачі зникне слід!
Йди do marzyć!
Не чекай!
Зроби перший крок!

Тільки тут і тепер!
Tylko teraz і tut!
Іść до зірок!
Bude Tobіe!
Вперед до перемог!

Тільки тут і тепер!
Вперед до перемог!
Перемог!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4245236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4245236','Тут і тепер','Над Чорним морем
Під звук Карпат
Вся Україна
Скандує в такт,
Osіągnąć nowych zwycіęstw -
Dumnіe tak odpowіedź dać.
Повір у себе
І otwarte śwіąt!

Na brzegakh Wіsły
І ja і ty,
My tu і teraz
Spełnіamy sny,
Перемога стане другом,
А невдачі зникне слід!
Йди do marzyć!
Не чекай!
Зроби перший крок!

Тільки тут і тепер!
Tylko teraz і tut!
Іść до зірок!
Bude Tobіe!
Вперед до перемог!

Тільки тут і тепер!
Вперед до перемог!
Перемог!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4245236_l1','pisniua_4245236','YouTube','https://www.youtube.com/watch?v=L9yBUfXlJ4A','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4244338';
DELETE FROM song_versions WHERE song_id = 'pisniua_4244338';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4244338';
DELETE FROM songs WHERE id = 'pisniua_4244338';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4244338','Понад Хустом','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Понад Хустом ворон кряче,
Понад Хустом ворон кряче,
На чужині мати плаче.

Не плач, мати, та й не тужи,
Не плач, мати, та й не тужи,
Я ранений та й не дуже.

Голівонька у четверо,
Голівонька у четверо,
А серденько у шестеро.

Найми, мати, столярика,
Найми, мати, столярка
Ще й файного малярика.

Най ми хатку побудує,
Най ми хатку побудує,
Чорним цвітом помалює.    Фонограма-мінус (mp3, 192 kbps)','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4244338'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4244338','Понад Хустом','Понад Хустом ворон кряче,
Понад Хустом ворон кряче,
На чужині мати плаче.

Не плач, мати, та й не тужи,
Не плач, мати, та й не тужи,
Я ранений та й не дуже.

Голівонька у четверо,
Голівонька у четверо,
А серденько у шестеро.

Найми, мати, столярика,
Найми, мати, столярка
Ще й файного малярика.

Най ми хатку побудує,
Най ми хатку побудує,
Чорним цвітом помалює.    Фонограма-мінус (mp3, 192 kbps)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4244338_l1','pisniua_4244338','YouTube','https://www.youtube.com/watch?v=CL7_aUeZ93s','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4244338_l2','pisniua_4244338','YouTube','https://www.youtube.com/watch?v=eNPrZKiDW5c','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4244338_l3','pisniua_4244338','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_4245333';
DELETE FROM song_versions WHERE song_id = 'pisniua_4245333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4245333';
DELETE FROM songs WHERE id = 'pisniua_4245333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4245333','На Кейптаун','Музика: Теорія Ґвалту Слова: Теорія Ґвалту. Виконує: Теорія Ґвалту','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сідай, коли прийшов,
А як вже сів - то слухай
Про те, як мені друг
За жінку дав у вухо!

З хлопакою отим
З дитинства ми дружили,
Коли ганяли м''яч -
В одні ворота били!
Зростали, як брати,
Через будинок жили,
Хороше і лихе
Завжди на двох ділили.
Списати на контрольній,
Комусь вибити щелепу -
Завжди він був готовий
Допомогти в халепі!

Приспів:
Зі зламаним пальцем
Кулак непевно б''є,
Без боцмана човен
Далеко не пливе,
Слабкий той вояка,
Якщо один у полі,
Без грошей зможу,
Без друзів - ніколи!

Ми мали спільну мрію:
До Африки, на плоті!
Мис доброї Надії,
Тоді назад в Європу.
Та друг якогось літа
На кралі оженився,
А що не мав де жити -
То в мене оселився!
Зібрав я свої речі,
Що щастю заважати?
Дістанусь сам в Кейптаун,
Лишу на друга хату!
Та не щастить - в дорозі
Обчистили до нитки,
Мій закордонний паспорт -
То всі тепер пожитки.

Приспів.

Щоб якось заробити
На хліб і на дорогу,
Я мусив посуд мити
І кланятися в ноги.
Та ось на Батьківщині,
Вже на порозі дому,
Стрічає друга жінка:
- А ми хіба знайомі?
Не стерпів я образу,
Гукнув у двері: - Друже!
То на ось цю заразу
Зміняв ти свою душу?
У відповідь отримав
Із мотлохом валізу,
Ще й кулаком у вухо:
Не ображай "маркізу"!

Приспів.

Минуло кілька років,
Я звівся сам на ноги.
Розпочинаю вдруге
До Африки дорогу:
Спускаю пліт на воду,
Готові провіанти,
Залишилось вітрилу
Щоглі прилаштувати.
Та ось знайома постать:
Худий, на штанях латка,
Вдвох краще, ніж одному,
Я теж тепер безхатько!

Приспів.

Без друзів - ніколи! | (10)','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4245333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4245333','На Кейптаун','Сідай, коли прийшов,
А як вже сів - то слухай
Про те, як мені друг
За жінку дав у вухо!

З хлопакою отим
З дитинства ми дружили,
Коли ганяли м''яч -
В одні ворота били!
Зростали, як брати,
Через будинок жили,
Хороше і лихе
Завжди на двох ділили.
Списати на контрольній,
Комусь вибити щелепу -
Завжди він був готовий
Допомогти в халепі!

Приспів:
Зі зламаним пальцем
Кулак непевно б''є,
Без боцмана човен
Далеко не пливе,
Слабкий той вояка,
Якщо один у полі,
Без грошей зможу,
Без друзів - ніколи!

Ми мали спільну мрію:
До Африки, на плоті!
Мис доброї Надії,
Тоді назад в Європу.
Та друг якогось літа
На кралі оженився,
А що не мав де жити -
То в мене оселився!
Зібрав я свої речі,
Що щастю заважати?
Дістанусь сам в Кейптаун,
Лишу на друга хату!
Та не щастить - в дорозі
Обчистили до нитки,
Мій закордонний паспорт -
То всі тепер пожитки.

Приспів.

Щоб якось заробити
На хліб і на дорогу,
Я мусив посуд мити
І кланятися в ноги.
Та ось на Батьківщині,
Вже на порозі дому,
Стрічає друга жінка:
- А ми хіба знайомі?
Не стерпів я образу,
Гукнув у двері: - Друже!
То на ось цю заразу
Зміняв ти свою душу?
У відповідь отримав
Із мотлохом валізу,
Ще й кулаком у вухо:
Не ображай "маркізу"!

Приспів.

Минуло кілька років,
Я звівся сам на ноги.
Розпочинаю вдруге
До Африки дорогу:
Спускаю пліт на воду,
Готові провіанти,
Залишилось вітрилу
Щоглі прилаштувати.
Та ось знайома постать:
Худий, на штанях латка,
Вдвох краще, ніж одному,
Я теж тепер безхатько!

Приспів.

Без друзів - ніколи! | (10)');
DELETE FROM song_links WHERE song_id = 'pisniua_4247137';
DELETE FROM song_versions WHERE song_id = 'pisniua_4247137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4247137';
DELETE FROM songs WHERE id = 'pisniua_4247137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4247137','У цей Новий Рік','Виконує: С.К.А.Й.','uk','ukraine_1991',NULL,NULL,'Мій підбір','Якась бонусна пісня, наче внеальбомна.','(v - удар вниз, ^ - удар вгору, х - холостий прохід)

Падай сніг, падай.
Все, що було, згадуй.
Я був такий смішний, а ти
Була вітром, що дме з вершин

У цей Новий Рік...
У цей Новий Рік.

Як швидко біжить час, швидко.
Зробити б одну зупинку.
Тримати твою руку у своїй руці.
Прошу, не відмовляй мені

У цей Новий Рік...
У цей Новий Рік.

І летить, і летить, і кружляє.
І усе, що не добре, зникає.
Забув я де небо і де земля,
Нам не потрібні слова...

У цей Новий Рік...
У цей Новий Рік.

У цей Новий Рі - і - ік.

У цей Новий Рік...
У цей Новий Рік.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4247137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4247137','У цей Новий Рік','(v - удар вниз, ^ - удар вгору, х - холостий прохід)

Падай сніг, падай.
Все, що було, згадуй.
Я був такий смішний, а ти
Була вітром, що дме з вершин

У цей Новий Рік...
У цей Новий Рік.

Як швидко біжить час, швидко.
Зробити б одну зупинку.
Тримати твою руку у своїй руці.
Прошу, не відмовляй мені

У цей Новий Рік...
У цей Новий Рік.

І летить, і летить, і кружляє.
І усе, що не добре, зникає.
Забув я де небо і де земля,
Нам не потрібні слова...

У цей Новий Рік...
У цей Новий Рік.

У цей Новий Рі - і - ік.

У цей Новий Рік...
У цей Новий Рік.');
DELETE FROM song_links WHERE song_id = 'pisniua_4244930';
DELETE FROM song_versions WHERE song_id = 'pisniua_4244930';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4244930';
DELETE FROM songs WHERE id = 'pisniua_4244930';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4244930','Купала, на Йвана','Музика: Іван Пустовий Слова: Іван Пустовий. Виконує: Тетяна Віркун','uk','ukraine_before_1917',NULL,NULL,'авторське подання',NULL,'Купала, на Йвана, на Івана Купала...
Купала, на Йвана, на Івана Купала!
Купала, на Йвана, на Івана Купала...
Купала, на Йвана, на Івана Купала!

На Івана Купала
Дівка вінок сплітала,
На Івана Купала
На воду пускала...
На Івана Купала
Дівка нічку не спала,
На Івана Купала
Кохання шукала.

Купала, на Йвана, суха верба палала...
Купала, на Йвана, диво-квітка зацвіла!
Купала, на Йвана, на Івана Купала...
Купала, на Йвана, на Івана Купала!

На Івана купала
Суха верба палала,
Суха верба палала,
Вогонь розсипала!
На Івана Купала
Дівчинонька плакала,
Темним лісом блукала,
Щастя виглядала,
На Івана Купала
Дівка вінок сплітала,
На Івана Купала
На воду пускала...
На Івана Купала
Дівка нічку не спала,
На Івана Купала
Кохання шукала.

Речитатив:
Була на Купала, без вогонь скакала,
Не піду додому, боюся сорому!
Сором за порогом, женихи за столом,
Піду я до хати женихів вітати','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4244930'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4244930','Купала, на Йвана','Купала, на Йвана, на Івана Купала...
Купала, на Йвана, на Івана Купала!
Купала, на Йвана, на Івана Купала...
Купала, на Йвана, на Івана Купала!

На Івана Купала
Дівка вінок сплітала,
На Івана Купала
На воду пускала...
На Івана Купала
Дівка нічку не спала,
На Івана Купала
Кохання шукала.

Купала, на Йвана, суха верба палала...
Купала, на Йвана, диво-квітка зацвіла!
Купала, на Йвана, на Івана Купала...
Купала, на Йвана, на Івана Купала!

На Івана купала
Суха верба палала,
Суха верба палала,
Вогонь розсипала!
На Івана Купала
Дівчинонька плакала,
Темним лісом блукала,
Щастя виглядала,
На Івана Купала
Дівка вінок сплітала,
На Івана Купала
На воду пускала...
На Івана Купала
Дівка нічку не спала,
На Івана Купала
Кохання шукала.

Речитатив:
Була на Купала, без вогонь скакала,
Не піду додому, боюся сорому!
Сором за порогом, женихи за столом,
Піду я до хати женихів вітати');
DELETE FROM song_links WHERE song_id = 'pisniua_4247930';
DELETE FROM song_versions WHERE song_id = 'pisniua_4247930';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4247930';
DELETE FROM songs WHERE id = 'pisniua_4247930';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4247930','Маю мажі, маю воли','Українська народна пісня. Виконує: Йорий Клоц','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Маю мажі, маю воли,
Маю батіг черемховий,
Від негоди - кожух старий,
Ще й шаровари,

Гей, гей, я з вами,
Чумаками - бурлаками,
Гей, гей, я з вами
Чумаками - бурлаками...

Випив чарку, випив другу,
Випив третю й не жуюся,
На багату подивлюся,
А на бідній оженюся...

Гей, гей, я з вами
Чумаками - бурлаками,
Гей, гей, я з вами
Чумаками - бурлаками...

Бідна жінка спати ляже,
Ївши сухар, пивши воду,
А багата тобі скаже -
Іще грошей, ще й вигоди...

Гей, гей, я з вами
Чумаками - бурлаками,
Гей, гей, я з вами
Чумаками - бурлаками...

Пропив мажі, пропив віз,
Пропив все те, що привіз:
Від негоди кожух старий,
Ще й шаровари...

Гей, гей, я з вами
Чумаками - бурлаками,
Гей, гей, я з вами
Чумаками - бурлаками...','[''pisni.org.ua'', ''cat:chumacki'', ''cat:kozacki'', ''Чумацькі пісні'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4247930'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4247930','Маю мажі, маю воли','Маю мажі, маю воли,
Маю батіг черемховий,
Від негоди - кожух старий,
Ще й шаровари,

Гей, гей, я з вами,
Чумаками - бурлаками,
Гей, гей, я з вами
Чумаками - бурлаками...

Випив чарку, випив другу,
Випив третю й не жуюся,
На багату подивлюся,
А на бідній оженюся...

Гей, гей, я з вами
Чумаками - бурлаками,
Гей, гей, я з вами
Чумаками - бурлаками...

Бідна жінка спати ляже,
Ївши сухар, пивши воду,
А багата тобі скаже -
Іще грошей, ще й вигоди...

Гей, гей, я з вами
Чумаками - бурлаками,
Гей, гей, я з вами
Чумаками - бурлаками...

Пропив мажі, пропив віз,
Пропив все те, що привіз:
Від негоди кожух старий,
Ще й шаровари...

Гей, гей, я з вами
Чумаками - бурлаками,
Гей, гей, я з вами
Чумаками - бурлаками...');
DELETE FROM song_links WHERE song_id = 'pisniua_424636';
DELETE FROM song_versions WHERE song_id = 'pisniua_424636';
DELETE FROM songs_fts WHERE song_id = 'pisniua_424636';
DELETE FROM songs WHERE id = 'pisniua_424636';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_424636','Тиха вода','Українська народна пісня. Виконує: Ансамбль Львівського Університету "Черемош", Раїса Кириченко','uk','ukraine_before_1917',NULL,NULL,'Книга "Пісні "Черемоша"','Одна з найпопулярніших весільних пісень.','Тиха вода, тиха вода,
Гей, лем на Бескиді.
Давно, давно я не була
З милим на бесіді.
Рада би я, рада би я
Ту водицю пити,
Рада би я, рада би я
З милим говорити.

Казав милий, казав милий,
Що мене попросить,
Як на горі, на високій
Пшеницю покосить.
Він покосив, він поносив -
Вже й осінь минає -
Він ся женить, бере другу,
А мене лишає.

"Сім раз би тя, мій миленький,
В боці закололо,
Що так швидко твоє серце
Мене позабуло".
"Не забув я, не забув.
Лем собі думаю,
Чи з тобою, чи з другою
Говорити маю".

"Не рви, милий, не рви, милий,
Солодкі малини.
Ой не люби, ой не люби
На раз дві дівчини".
Дві дівчини, дві дівчини -
То велика зрада;
Одна плаче, гірко плаче,
Дуга тому рада.

Ой журився мій миленький,
Як мене любити,
А тепер вже він ся журить,
Як мене лишити.
Є у мене коло хати
Зелена отава.
Не журися, мій миленький,
Я тя лишу сама','[''pisni.org.ua'', ''cat:lirychni'', ''cat:narodni'', ''cat:zakarpatski'', ''Пісні про кохання, ліричні'', ''Народні пісні'', ''Закарпатські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_424636'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_424636','Тиха вода','Тиха вода, тиха вода,
Гей, лем на Бескиді.
Давно, давно я не була
З милим на бесіді.
Рада би я, рада би я
Ту водицю пити,
Рада би я, рада би я
З милим говорити.

Казав милий, казав милий,
Що мене попросить,
Як на горі, на високій
Пшеницю покосить.
Він покосив, він поносив -
Вже й осінь минає -
Він ся женить, бере другу,
А мене лишає.

"Сім раз би тя, мій миленький,
В боці закололо,
Що так швидко твоє серце
Мене позабуло".
"Не забув я, не забув.
Лем собі думаю,
Чи з тобою, чи з другою
Говорити маю".

"Не рви, милий, не рви, милий,
Солодкі малини.
Ой не люби, ой не люби
На раз дві дівчини".
Дві дівчини, дві дівчини -
То велика зрада;
Одна плаче, гірко плаче,
Дуга тому рада.

Ой журився мій миленький,
Як мене любити,
А тепер вже він ся журить,
Як мене лишити.
Є у мене коло хати
Зелена отава.
Не журися, мій миленький,
Я тя лишу сама');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_424636_l1','pisniua_424636','YouTube','https://www.youtube.com/watch?v=Yw2woHFUyX4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_424636_l2','pisniua_424636','YouTube','https://www.youtube.com/watch?v=b5Wb8Y2Yrt4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_424636_l3','pisniua_424636','YouTube','https://www.youtube.com/watch?v=0utj0HxeKec','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_424636_l4','pisniua_424636','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_424838';
DELETE FROM song_versions WHERE song_id = 'pisniua_424838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_424838';
DELETE FROM songs WHERE id = 'pisniua_424838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_424838','Ой, вийшов місяць із-за хмари','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой, вийшов місяць із-за хмари
І всю долину освітив.
Як освітив він всю долину,
То знов за хмари заходив.

А в цій долині є хатина,
А в тій хатині два вікна.
Там мати доню научала,
Доня заплакана була.

"Ой, доню ж моя, люба доню,
Ти в мене ягідка одна,
Не жди козаченька з походу -
Його на світі вже нема.

Багато хлопців повернулось,
Багато вже кого нема,
Багато дівчат вийшло заміж,
А ти осталася сама”','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_424838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_424838','Ой, вийшов місяць із-за хмари','Ой, вийшов місяць із-за хмари
І всю долину освітив.
Як освітив він всю долину,
То знов за хмари заходив.

А в цій долині є хатина,
А в тій хатині два вікна.
Там мати доню научала,
Доня заплакана була.

"Ой, доню ж моя, люба доню,
Ти в мене ягідка одна,
Не жди козаченька з походу -
Його на світі вже нема.

Багато хлопців повернулось,
Багато вже кого нема,
Багато дівчат вийшло заміж,
А ти осталася сама”');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_424838_l1','pisniua_424838','YouTube','https://www.youtube.com/watch?v=8CUNvLaa5aM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_424838_l2','pisniua_424838','YouTube','https://www.youtube.com/watch?v=3faLulHaB90','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_424838_l3','pisniua_424838','YouTube','https://www.youtube.com/watch?v=c0D1X23jZq0','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_424430';
DELETE FROM song_versions WHERE song_id = 'pisniua_424430';
DELETE FROM songs_fts WHERE song_id = 'pisniua_424430';
DELETE FROM songs WHERE id = 'pisniua_424430';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_424430','Львів','(На вулицях Львова). Виконує: Монте Крісто','uk','ukraine_1991',NULL,NULL,'аудіо','Файна пісенька. Мені сподобалося. bohdanko (модератор): Текст виправлено і доповено з аудіо. Акорди записано на слух з аудіо, спрощено. Тональність оригінальна. Підбір акордів: bohdanko (pisni.org.ua)','Вступ: Am H7 Em C (x2)

Новий день, він у темних окулярах
тихо вийшов надвір, іде по вулицях старих.
Всі люди зайняті, є справи, розмови.
І знову дощ на вулицях Львова.

Під парасолями ховають свої гриви
сильні кам''яні леви, такі сумні і ліниві.
Їх теплий погляд не скаже ні слова,
і знову дощ на вулицях Львова.

Приспів:
По двох паралелях летить мій трамвай, |
мій трамвай везе мене знову,          |
Am               H7               | (x2)
Вертаюсь до тебе, мене зустрічай,     |
зустрічай на вулицях Львова.          |

А по бруківці стирають свої шини
і туди-сюди тікають божевільні машини.
Театри, площі, вітрини чудові,
і знову дощ, знову дощ сьогодні у Львові.

Приспів.

Як піде день, ляже вечір на плечі,
він пригорне, обійме як малечу.
Театри, площі, вітрини чудові,
і знову дощ сьогодні у Львові.

По двох паралелях летить мій трамвай...

Приспів.

Закінчення: Am H7','[''pisni.org.ua'', ''cat:lviv'', ''Пісні про Львів'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_424430'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_424430','Львів','Вступ: Am H7 Em C (x2)

Новий день, він у темних окулярах
тихо вийшов надвір, іде по вулицях старих.
Всі люди зайняті, є справи, розмови.
І знову дощ на вулицях Львова.

Під парасолями ховають свої гриви
сильні кам''яні леви, такі сумні і ліниві.
Їх теплий погляд не скаже ні слова,
і знову дощ на вулицях Львова.

Приспів:
По двох паралелях летить мій трамвай, |
мій трамвай везе мене знову,          |
Am               H7               | (x2)
Вертаюсь до тебе, мене зустрічай,     |
зустрічай на вулицях Львова.          |

А по бруківці стирають свої шини
і туди-сюди тікають божевільні машини.
Театри, площі, вітрини чудові,
і знову дощ, знову дощ сьогодні у Львові.

Приспів.

Як піде день, ляже вечір на плечі,
він пригорне, обійме як малечу.
Театри, площі, вітрини чудові,
і знову дощ сьогодні у Львові.

По двох паралелях летить мій трамвай...

Приспів.

Закінчення: Am H7');
DELETE FROM song_links WHERE song_id = 'pisniua_4249539';
DELETE FROM song_versions WHERE song_id = 'pisniua_4249539';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4249539';
DELETE FROM songs WHERE id = 'pisniua_4249539';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4249539','Їхали чумаки з України','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські народні пісні з нотами. Засвічу свічку восковую. - Харків: Фоліо, 2002. - 289 с.',NULL,'Їхали чумаки з України,
Викресали вогню з кременини.     | (2)

Викресали вогню з кременини
Та й пустили пожар по долині.    | (2)

Запалили пожар по долині,
Запалили гніздечко солов''їне.    | (2)

Сива зозуленько, сестро ж моя,
Ой, пропав я тепер б діти мої!   | (2)

Чи я не казала, ти ж мій брате:
Не мости гніздечка край лужечка. | (2)

А мости гніздечко у лужечку,
На високім древі, на вільшині.   | (2)

Ніхто ж того древа не зрубає,
Ніхто ж твоїх діток не спіймає.  | (2)

Ой, молодий козак розгулявся,
Під козаком коник розігрався.    | (2)

Та й на синє море увігнався,
На синьому морі обломався.       | (2)

Бийся, коню, вибивайся
До тій, що любив, ще й кохався.  | (2)

До тій вдовоньки молодої,
А до тих діток-сиріточок.        | (2)

А до тих же діток-сиріточок,
Що ходять по вулиці без сорочок. | (2)','[''pisni.org.ua'', ''cat:chumacki'', ''Чумацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4249539'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4249539','Їхали чумаки з України','Їхали чумаки з України,
Викресали вогню з кременини.     | (2)

Викресали вогню з кременини
Та й пустили пожар по долині.    | (2)

Запалили пожар по долині,
Запалили гніздечко солов''їне.    | (2)

Сива зозуленько, сестро ж моя,
Ой, пропав я тепер б діти мої!   | (2)

Чи я не казала, ти ж мій брате:
Не мости гніздечка край лужечка. | (2)

А мости гніздечко у лужечку,
На високім древі, на вільшині.   | (2)

Ніхто ж того древа не зрубає,
Ніхто ж твоїх діток не спіймає.  | (2)

Ой, молодий козак розгулявся,
Під козаком коник розігрався.    | (2)

Та й на синє море увігнався,
На синьому морі обломався.       | (2)

Бийся, коню, вибивайся
До тій, що любив, ще й кохався.  | (2)

До тій вдовоньки молодої,
А до тих діток-сиріточок.        | (2)

А до тих же діток-сиріточок,
Що ходять по вулиці без сорочок. | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_4247735';
DELETE FROM song_versions WHERE song_id = 'pisniua_4247735';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4247735';
DELETE FROM songs WHERE id = 'pisniua_4247735';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4247735','На краєчку літа','Слова: Т. Василько','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'На краєчку літа
Відлітали журавлі,
З піднебесся нагадали:
На порозі школи
Нас чекають вчителі.

Здрастуй, школо, друзі, клас!
Здрастуй, вчителю наш любий,
Знову ми прийшли до Вас,
Щоб вели Ви нас у Люди!

Золотить вже осінь
Біля школи кленів лист,
Підросли ми і змужніли,
І до тебе знову,
Рідна школо, ми прийшли.

Усмішкою вікон
Зустрічає школа нас,
Дзвоник щиро і привітно
Кличе нас за парти,
У Країну світлу Знань.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4247735'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4247735','На краєчку літа','На краєчку літа
Відлітали журавлі,
З піднебесся нагадали:
На порозі школи
Нас чекають вчителі.

Здрастуй, школо, друзі, клас!
Здрастуй, вчителю наш любий,
Знову ми прийшли до Вас,
Щоб вели Ви нас у Люди!

Золотить вже осінь
Біля школи кленів лист,
Підросли ми і змужніли,
І до тебе знову,
Рідна школо, ми прийшли.

Усмішкою вікон
Зустрічає школа нас,
Дзвоник щиро і привітно
Кличе нас за парти,
У Країну світлу Знань.');
DELETE FROM song_links WHERE song_id = 'pisniua_4249230';
DELETE FROM song_versions WHERE song_id = 'pisniua_4249230';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4249230';
DELETE FROM songs WHERE id = 'pisniua_4249230';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4249230','Кучерява Катерина','Українська народна пісня. Виконує: Роксоланія','uk','ukraine_before_1917',NULL,NULL,'Аудіозапис','Виконує фольклорний ансамбль "Роксоланія". Веселі пісні. Жартівливі пісні. Ліричні пісні. Пісні Наддніпрянщини, Київщини, Полтавщини.','Кучерява Катерина
Вчепилася за Мартина,
Гей-гей, уха-ха -      |
Вчепилася за Мартина.  | (2)

Ти, Мартине, добродію,
Сватай мене у неділю!
Гей-гей, уха-ха -      |
Сватай мене у неділю!  | (2)

Як я сватитсь не хтіла -
Мене рідна мати била,
Гей-гей, уха-ха -      |
Мене рідна мати била.  | (2)

Тонко пряду -
Нитка рветься,
Грубо пряду -
Мати б''ється.
Гей-гей, уха-ха -      |
Грубо пряду -          |
Мати б''ється.          | (2)

По садочку походжала -
Черевичка потоптала,
Гей-гей, уха-ха -      |
Черевички потоптала.   | (2)

Черевички погубила -
Собі хлопців наманила,
Гей-гей, уха-ха -      |
Собі хлопців наманила. | (2)','[''pisni.org.ua'', ''cat:naddnipryanski'', ''Наддніпрянські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4249230'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4249230','Кучерява Катерина','Кучерява Катерина
Вчепилася за Мартина,
Гей-гей, уха-ха -      |
Вчепилася за Мартина.  | (2)

Ти, Мартине, добродію,
Сватай мене у неділю!
Гей-гей, уха-ха -      |
Сватай мене у неділю!  | (2)

Як я сватитсь не хтіла -
Мене рідна мати била,
Гей-гей, уха-ха -      |
Мене рідна мати била.  | (2)

Тонко пряду -
Нитка рветься,
Грубо пряду -
Мати б''ється.
Гей-гей, уха-ха -      |
Грубо пряду -          |
Мати б''ється.          | (2)

По садочку походжала -
Черевичка потоптала,
Гей-гей, уха-ха -      |
Черевички потоптала.   | (2)

Черевички погубила -
Собі хлопців наманила,
Гей-гей, уха-ха -      |
Собі хлопців наманила. | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4249230_l1','pisniua_4249230','YouTube','https://www.youtube.com/watch?v=Qb42hFee_4Y','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_4245838';
DELETE FROM song_versions WHERE song_id = 'pisniua_4245838';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4245838';
DELETE FROM songs WHERE id = 'pisniua_4245838';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4245838','Два веселі гусі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Жили у бабусі два веселих гусі:
Один - сірий, другий - білий,
Два веселих гусі!
Один - сірий, другий - білий,
Два веселих гусі!

Мили гусі лапки десь біля канавки,
Один - сірий, другий - білий,
Десь біля канавки!
Один - сірий, другий - білий,
Десь біля канавки!

Ой, кричить бабуся: "Ой, пропали гусі!"
Один - сірий, другий - білий,
Гусі мої, гусі!
Один - сірий, другий - білий,
Гусі мої, гусі!

Вийшли, вийшли гусі - кланялись бабусі!
Один - сірий, другий - білий,
Кланялись бабусі!
Один - сірий, другий - білий,
Кланялись бабусі!

Тішиться бабуся, що знайшлися гусі,
Один - сірий, другий - білий,
Гусі її гусі!
Один - сірий, другий - білий,
Гусі її гусі!','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:narodni'', ''Дитячі пісні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4245838'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4245838','Два веселі гусі','Жили у бабусі два веселих гусі:
Один - сірий, другий - білий,
Два веселих гусі!
Один - сірий, другий - білий,
Два веселих гусі!

Мили гусі лапки десь біля канавки,
Один - сірий, другий - білий,
Десь біля канавки!
Один - сірий, другий - білий,
Десь біля канавки!

Ой, кричить бабуся: "Ой, пропали гусі!"
Один - сірий, другий - білий,
Гусі мої, гусі!
Один - сірий, другий - білий,
Гусі мої, гусі!

Вийшли, вийшли гусі - кланялись бабусі!
Один - сірий, другий - білий,
Кланялись бабусі!
Один - сірий, другий - білий,
Кланялись бабусі!

Тішиться бабуся, що знайшлися гусі,
Один - сірий, другий - білий,
Гусі її гусі!
Один - сірий, другий - білий,
Гусі її гусі!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4245838_l1','pisniua_4245838','YouTube','https://www.youtube.com/watch?v=gWDqY8PdtAs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4245838_l2','pisniua_4245838','YouTube','https://www.youtube.com/watch?v=XwdPhmHleSY','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4245838_l3','pisniua_4245838','YouTube','https://www.youtube.com/watch?v=WPMqbqHdbEY','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4245838_l4','pisniua_4245838','YouTube','https://www.youtube.com/watch?v=lQ3vQ8xAnIk','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_4248737';
DELETE FROM song_versions WHERE song_id = 'pisniua_4248737';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4248737';
DELETE FROM songs WHERE id = 'pisniua_4248737';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4248737','З Днем народження, моя мамо','Музика: Віктор Музичук Слова: Віктор Музичук. Виконує: Віктор Музичук','uk','ukraine_1991',NULL,NULL,'Віктор Музичук','Пісня присвячується моїй мамі.','За вікном щедре літо, а на скронях зима,
Та не варто тужити, бо причини нема.
Адже день цей святковий гідний Твого життя,
Бо добро буде жити, інше йде в небуття.

Приспів:
З Днем народження, моя мамо,
Я несу ніжні квіти Тобі.
Головне: ми разом всі так само
І не місце й не час тут журбі.
Будуть весни іще, будуть зими,
Буде небо у нас голубе.
Ми вітаєм всі Тебе щиро
З Днем народження, мамо, Тебе,
З Днем народження, рідна, Тебе!

Літній день догорає, пламенить небосхил,
Всі тобі ми бажаєм довгих літ й нових сил.

Приспів','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4248737'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4248737','З Днем народження, моя мамо','За вікном щедре літо, а на скронях зима,
Та не варто тужити, бо причини нема.
Адже день цей святковий гідний Твого життя,
Бо добро буде жити, інше йде в небуття.

Приспів:
З Днем народження, моя мамо,
Я несу ніжні квіти Тобі.
Головне: ми разом всі так само
І не місце й не час тут журбі.
Будуть весни іще, будуть зими,
Буде небо у нас голубе.
Ми вітаєм всі Тебе щиро
З Днем народження, мамо, Тебе,
З Днем народження, рідна, Тебе!

Літній день догорає, пламенить небосхил,
Всі тобі ми бажаєм довгих літ й нових сил.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_424889';
DELETE FROM song_versions WHERE song_id = 'pisniua_424889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_424889';
DELETE FROM songs WHERE id = 'pisniua_424889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_424889','Ой літає соколонько','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Колесса Ф. Шкільний співаник. З педагогічної спадщини композитора.- Київ: Музична Україна, 1991.- 224 с. 2. Календарно-обрядові пісні.- Київ: Дніпро, 1987.- 392 с.','Першоджерело [1]: Народні мелодії з голосу Лесі Українки / Записав і упорядив Климент Квітка. Ч. I, К., 1917.- с. 47 * Тут у джерелі [2] є інакше: "Не боліла голівонька, ще й спина." ** Строфи 4 і 5 - додано за джерелом [2].','1. Ой літає соколонько по полю
Та збирає челядоньку додому:

2. - Іди, іди, челядонько, додому,
Вигуляла все літечко по полю.

3. Вигуляла все літечко, ще й жнива,
Заболіла голівонька, ще й спина. *

4. Не боліла головонька ні спина, **
Широкая нивонька - втомилась.

5. А вже ж мені вечеронька не мила, **
Далекая доріженька - спізнилась.    Мелодія для 1 голосу','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_424889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_424889','Ой літає соколонько','1. Ой літає соколонько по полю
Та збирає челядоньку додому:

2. - Іди, іди, челядонько, додому,
Вигуляла все літечко по полю.

3. Вигуляла все літечко, ще й жнива,
Заболіла голівонька, ще й спина. *

4. Не боліла головонька ні спина, **
Широкая нивонька - втомилась.

5. А вже ж мені вечеронька не мила, **
Далекая доріженька - спізнилась.    Мелодія для 1 голосу');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_424889_l1','pisniua_424889','YouTube','https://www.youtube.com/watch?v=_35QzX6GtW0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_424889_l2','pisniua_424889','YouTube','https://www.youtube.com/watch?v=vP0ivNiN9R4','video',NULL,2);
