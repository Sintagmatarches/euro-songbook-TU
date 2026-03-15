DELETE FROM song_links WHERE song_id = 'pisniua_2195292';
DELETE FROM song_versions WHERE song_id = 'pisniua_2195292';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2195292';
DELETE FROM songs WHERE id = 'pisniua_2195292';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2195292','Ой хто п’є - тому наливайте','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Чи це мені Господь дав,
чи свята Варвара.
коло мого столу гості,
які я бажала.

Ой чи мені Господь дав,
чи свята неділя.
Коло мого столу гості,
які я хотіла.

Приспів:
Ой хто п''є - тому наливайте,
хто не п''є - тому не давайте,
хто покаже в чарці дно,
тому щастя і добро. (2)

Ой дядько Панас,
ставте хату коло нас.
Будем пити та гуляти,
то у тебе то у нас.

Налеті лебіді,
сіли на пості.
Як такий хазяїн,
то не вип''ють гості.

Приспів:

Пий до дна, пий до дна,
то будеш пяненька.
Спи до дня, спи до дня,
будеш здоровенька.

Чогось ручечка трясеться,
і горілочка не п''ється.
Десь у денці дірка,
витекла горілка.

Приспів:

На здоровячко тому,
а хто в цьому домі.
На погибель ворогам,
що завидують нам.

Ну давай,давай,
помаленько наливай.
Ну давай,давай,
помаленько наливай.

Приспів:','[''pisni.org.ua'', ''cat:narodni'', ''cat:zhartivlyvi'', ''Народні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2195292'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2195292','Ой хто п’є - тому наливайте','Чи це мені Господь дав,
чи свята Варвара.
коло мого столу гості,
які я бажала.

Ой чи мені Господь дав,
чи свята неділя.
Коло мого столу гості,
які я хотіла.

Приспів:
Ой хто п''є - тому наливайте,
хто не п''є - тому не давайте,
хто покаже в чарці дно,
тому щастя і добро. (2)

Ой дядько Панас,
ставте хату коло нас.
Будем пити та гуляти,
то у тебе то у нас.

Налеті лебіді,
сіли на пості.
Як такий хазяїн,
то не вип''ють гості.

Приспів:

Пий до дна, пий до дна,
то будеш пяненька.
Спи до дня, спи до дня,
будеш здоровенька.

Чогось ручечка трясеться,
і горілочка не п''ється.
Десь у денці дірка,
витекла горілка.

Приспів:

На здоровячко тому,
а хто в цьому домі.
На погибель ворогам,
що завидують нам.

Ну давай,давай,
помаленько наливай.
Ну давай,давай,
помаленько наливай.

Приспів:');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2195292_l1','pisniua_2195292','YouTube','https://www.youtube.com/watch?v=Oo_hzsGdF78','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2195292_l2','pisniua_2195292','YouTube','https://www.youtube.com/watch?v=L7I5WS9yNEc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2194716';
DELETE FROM song_versions WHERE song_id = 'pisniua_2194716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2194716';
DELETE FROM songs WHERE id = 'pisniua_2194716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2194716','Садочок','Українська народна пісня. Виконує: Наталія Май, Світлана Весна','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Научала мене мати
Русу косу заплітать,
Не пускала мене мати
У садочок погулять,
Не пускала мене мати
У садочок погулять.

Приспів:
А я у садочок          |
Чорнобрива наведу,     |
А я кого хочеш         |
З ума, з розуму зведу! | (2)

Научала мене мати:
Бійся хлопців молодих,
Говорила мені мати:
У садочок не ходи!
Говорила мені мати:
У садочок не ходи!

Приспів.

Научала мене мати
Ранком хату замітать,
Говорила мені мати,
Щоби хлопцям не моргать,
Говорила мені мати,
Щоби хлопцям не моргать!

Приспів.

Научала мене мати
Собі хлопців не манить,
Говорила мені мати:
Як не слухать - буде бить!
Говорила мені мати:
Як не слухать - буде бить!

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2194716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2194716','Садочок','Научала мене мати
Русу косу заплітать,
Не пускала мене мати
У садочок погулять,
Не пускала мене мати
У садочок погулять.

Приспів:
А я у садочок          |
Чорнобрива наведу,     |
А я кого хочеш         |
З ума, з розуму зведу! | (2)

Научала мене мати:
Бійся хлопців молодих,
Говорила мені мати:
У садочок не ходи!
Говорила мені мати:
У садочок не ходи!

Приспів.

Научала мене мати
Ранком хату замітать,
Говорила мені мати,
Щоби хлопцям не моргать,
Говорила мені мати,
Щоби хлопцям не моргать!

Приспів.

Научала мене мати
Собі хлопців не манить,
Говорила мені мати:
Як не слухать - буде бить!
Говорила мені мати:
Як не слухать - буде бить!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2196498';
DELETE FROM song_versions WHERE song_id = 'pisniua_2196498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2196498';
DELETE FROM songs WHERE id = 'pisniua_2196498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2196498','Засівна','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Сію, сію, посіваю,
З Новим роком вас вітаю!
Щоб родило на землі,
Щоб був хліб на столі,
Щоб водилися пернаті -
І без чубка і чубаті.
Щоб не знали всі біди,
Нехай прийдуть гаразди.
Щоб капуста головчата,
А петрушка — корінчата,
Часник - як бик.
Цибуля — як зозуля,
Пшениця - як рукавиця.
Щоб була з дітей утіха,
А грошей - півтора міха.
Щоб ви міряли гроші мискою,
А дітей — колискою.
Щоб у кожній кутині
Було по дитині.
Хай дасть нивка по сто кіп,
По сто тисяч один сніп.
Віншую вас з Новим роком,
Новим роком, довгим віком,
Щоб ви дочекали відтепер за рік
До ста літ!','[''pisni.org.ua'', ''cat:narodni'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2196498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2196498','Засівна','Сію, сію, посіваю,
З Новим роком вас вітаю!
Щоб родило на землі,
Щоб був хліб на столі,
Щоб водилися пернаті -
І без чубка і чубаті.
Щоб не знали всі біди,
Нехай прийдуть гаразди.
Щоб капуста головчата,
А петрушка — корінчата,
Часник - як бик.
Цибуля — як зозуля,
Пшениця - як рукавиця.
Щоб була з дітей утіха,
А грошей - півтора міха.
Щоб ви міряли гроші мискою,
А дітей — колискою.
Щоб у кожній кутині
Було по дитині.
Хай дасть нивка по сто кіп,
По сто тисяч один сніп.
Віншую вас з Новим роком,
Новим роком, довгим віком,
Щоб ви дочекали відтепер за рік
До ста літ!');
DELETE FROM song_links WHERE song_id = 'pisniua_2197114';
DELETE FROM song_versions WHERE song_id = 'pisniua_2197114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2197114';
DELETE FROM songs WHERE id = 'pisniua_2197114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2197114','Висить ябко *','Українська народна пісня. Виконує: Ольга Кашул, Дмитро Хома','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Висить ябко,висить,
Але впасти мусить.
Котра дівка файна | (2)
Вийти заміж мусить.

Весілля,весілля,
На весіллі люди,
Якби мені знати | (2)
Коли ж моє буде.

Дівчино горянко,
Що несеш у збанку.
Дай мені напитись | (2)
Буду тя любити.

Іванку,Іванку,
Я би тя любила,
Якби мене мати | (2)
За тебе не била.

Ксеню моя Ксеню,
Бери за рученьку,
Цілуй маму в ручку | (2)
А мене в личенько','[''pisni.org.ua'', ''cat:dances'', ''cat:polky'', ''cat:zhartivlyvi'', ''Пісні до танцю'', ''Польки'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2197114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2197114','Висить ябко *','Висить ябко,висить,
Але впасти мусить.
Котра дівка файна | (2)
Вийти заміж мусить.

Весілля,весілля,
На весіллі люди,
Якби мені знати | (2)
Коли ж моє буде.

Дівчино горянко,
Що несеш у збанку.
Дай мені напитись | (2)
Буду тя любити.

Іванку,Іванку,
Я би тя любила,
Якби мене мати | (2)
За тебе не била.

Ксеню моя Ксеню,
Бери за рученьку,
Цілуй маму в ручку | (2)
А мене в личенько');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2197114_l1','pisniua_2197114','YouTube','https://www.youtube.com/watch?v=07X77WMsURA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2197114_l2','pisniua_2197114','YouTube','https://www.youtube.com/watch?v=n7712rjsZnQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2197114_l3','pisniua_2197114','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_219550';
DELETE FROM song_versions WHERE song_id = 'pisniua_219550';
DELETE FROM songs_fts WHERE song_id = 'pisniua_219550';
DELETE FROM songs WHERE id = 'pisniua_219550';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_219550','Кущ калини','Українська народна пісня. Виконує: Інеса Братущик, Орест Хома','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'При долині  кущ калини,   похилився до води.
"Ти скажи,   скажи, калино,  як попала ти сюди?"

"Якось ранньою весною бравий козак прискакав,
Милувався довго мною, а тоді з собою взяв.

Він хотів мене - калину, посадить в своїм саду,
Не довіз, а в полі кинув, думав, що я пропаду.

Я за землю ухопилась, стала на ноги свої
І навіки оселилась де вода і солов''ї.

Ти не дуй на мене вітре - я тепер не пропаду,
Надімною сонце світить і я за літа цвіту".','[''pisni.org.ua'', ''cat:kozacki'', ''cat:krasa-pryrody'', ''cat:narodni'', ''Козацькі пісні'', ''Пісні про красу природи'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_219550'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_219550','Кущ калини','При долині  кущ калини,   похилився до води.
"Ти скажи,   скажи, калино,  як попала ти сюди?"

"Якось ранньою весною бравий козак прискакав,
Милувався довго мною, а тоді з собою взяв.

Він хотів мене - калину, посадить в своїм саду,
Не довіз, а в полі кинув, думав, що я пропаду.

Я за землю ухопилась, стала на ноги свої
І навіки оселилась де вода і солов''ї.

Ти не дуй на мене вітре - я тепер не пропаду,
Надімною сонце світить і я за літа цвіту".');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_219550_l1','pisniua_219550','YouTube','https://www.youtube.com/watch?v=MPO2m8GTxZU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_219550_l2','pisniua_219550','YouTube','https://www.youtube.com/watch?v=OYtyw7OODnc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_219550_l3','pisniua_219550','YouTube','https://www.youtube.com/watch?v=qYU00mfOQy4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_219550_l4','pisniua_219550','YouTube','https://www.youtube.com/watch?v=FW0c6fImaqY','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_219550_l5','pisniua_219550','YouTube','https://www.youtube.com/watch?v=EHDM6IXV6vk','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_219550_l6','pisniua_219550','YouTube','https://www.youtube.com/watch?v=dBS8rI1i7Us','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_219550_l7','pisniua_219550','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_219717';
DELETE FROM song_versions WHERE song_id = 'pisniua_219717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_219717';
DELETE FROM songs WHERE id = 'pisniua_219717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_219717','Кожне літо','Музика: Тартак. Виконує: Тартак','uk','ukraine_1991',NULL,NULL,NULL,NULL,'На старому тартаку давно роботи немає,
Але музика сюди зараз людей поназбирає!
Приходять хлопці, приходять дівчата,
Приходять тільки ті, хто любить танцювати.
Їздець на дисках накрутив патефон,
Майстер церемоній верещить у мікрофон.
Блимнуло світло і басова діжка
Гупнула гучно - затремтіли ніжки!

На вході працює контроль обличчя,
Бо дженджиків та жужиків сюди ніхто не кличе.
Як маєш літунця - спрямуй сміливо ногу
Або у позахолод, або на танцпідлогу.
Аж ось почалася битва Бі-хлопців,
Бі-хлопці із себе вдають незнайомців.
Такі вже викрутаси виробляють, поганці!
І тепер кожне тіло танцює ламані танці!

Покладіть свої руки в повітря!
Ляпайте свої руки!
Покажіть мені свої очі!
Дайте мені свій голос!

Розлітаються кінцівки на всі сторони світу,
Але що куди летіло - неможливо зрозуміти.
Крутиться, вертиться, хоче упасти,
Але ніхто нікого чомусь не хоче вкрасти!
Не хоче - бо зараз усім не до цього!
Адже потрібно, як слід, понатирати підлогу
Своїми штанцями, кофтинами, капцями.
Натер - значить можеш займатися танцями!

Та я не танцюю, хоч музика грає,
Бо так танцювати в мене вміння немає.
Я рота роззявлю та витріщу очі -
Стою та дивлюся, як танцюють охочі.
Бі-хлопці стрибають, бі-хлопці кружляють
І знов викрутаси свої виробляють.
А ті, що стоять, - ті, пробачте, засланці!
Бо тепер кожне тіло танцює ламані танці!

Покладіть свої руки в повітря!
Ляпайте свої руки!
Покажіть мені свої очі!
Дайте мені свій голос!

Кожне тіло - every body
Їздець на дисках - DJ
Майстер церемоній - MC
Басова діжка - бас-бочка
Контроль обличчя - face control
Літунець - flyer
Позахолод - chіll out
Танцпідлога - dance floor
Бі-хлопці - b-boys
Покладіть свої руки в повітря - put your hands at the aіr
Ляпайте свої руки - clap your hands
Покажіть мені свої очі - show me your eyes
Дайте мені свій голос - gіve me your voіce','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_219717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_219717','Кожне літо','На старому тартаку давно роботи немає,
Але музика сюди зараз людей поназбирає!
Приходять хлопці, приходять дівчата,
Приходять тільки ті, хто любить танцювати.
Їздець на дисках накрутив патефон,
Майстер церемоній верещить у мікрофон.
Блимнуло світло і басова діжка
Гупнула гучно - затремтіли ніжки!

На вході працює контроль обличчя,
Бо дженджиків та жужиків сюди ніхто не кличе.
Як маєш літунця - спрямуй сміливо ногу
Або у позахолод, або на танцпідлогу.
Аж ось почалася битва Бі-хлопців,
Бі-хлопці із себе вдають незнайомців.
Такі вже викрутаси виробляють, поганці!
І тепер кожне тіло танцює ламані танці!

Покладіть свої руки в повітря!
Ляпайте свої руки!
Покажіть мені свої очі!
Дайте мені свій голос!

Розлітаються кінцівки на всі сторони світу,
Але що куди летіло - неможливо зрозуміти.
Крутиться, вертиться, хоче упасти,
Але ніхто нікого чомусь не хоче вкрасти!
Не хоче - бо зараз усім не до цього!
Адже потрібно, як слід, понатирати підлогу
Своїми штанцями, кофтинами, капцями.
Натер - значить можеш займатися танцями!

Та я не танцюю, хоч музика грає,
Бо так танцювати в мене вміння немає.
Я рота роззявлю та витріщу очі -
Стою та дивлюся, як танцюють охочі.
Бі-хлопці стрибають, бі-хлопці кружляють
І знов викрутаси свої виробляють.
А ті, що стоять, - ті, пробачте, засланці!
Бо тепер кожне тіло танцює ламані танці!

Покладіть свої руки в повітря!
Ляпайте свої руки!
Покажіть мені свої очі!
Дайте мені свій голос!

Кожне тіло - every body
Їздець на дисках - DJ
Майстер церемоній - MC
Басова діжка - бас-бочка
Контроль обличчя - face control
Літунець - flyer
Позахолод - chіll out
Танцпідлога - dance floor
Бі-хлопці - b-boys
Покладіть свої руки в повітря - put your hands at the aіr
Ляпайте свої руки - clap your hands
Покажіть мені свої очі - show me your eyes
Дайте мені свій голос - gіve me your voіce');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_219717_l1','pisniua_219717','YouTube','https://www.youtube.com/watch?v=WJaNGu5PCNY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2197694';
DELETE FROM song_versions WHERE song_id = 'pisniua_2197694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2197694';
DELETE FROM songs WHERE id = 'pisniua_2197694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2197694','Ой, дороги, доріженьки!','Слова: Микола Джумак','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Встану до схід сонця
Визирну в віконце!
Через край ступну порогу,
Вийду на свою дорогу!

Приспів:
Ой дороги,доріженьки!
Не пошліть мя воріженьків!
Поведіть до поріженьків-
Де живе моя любенька!
Не ведіть мене далеко,
А ведіть, де є смереки!
Обведіть круг бід і горя,
Приведіть - де серця доля!

Стану на  дорогу
Від свого порогу!
Крізь вогонь пройду і воду-
Віднайду красу і вроду!

Не знаю де - знайду,
І вірю - все пройду!
Серед усіх моїх доріг -
Мене хранить мій оберіг!','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2197694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2197694','Ой, дороги, доріженьки!','Встану до схід сонця
Визирну в віконце!
Через край ступну порогу,
Вийду на свою дорогу!

Приспів:
Ой дороги,доріженьки!
Не пошліть мя воріженьків!
Поведіть до поріженьків-
Де живе моя любенька!
Не ведіть мене далеко,
А ведіть, де є смереки!
Обведіть круг бід і горя,
Приведіть - де серця доля!

Стану на  дорогу
Від свого порогу!
Крізь вогонь пройду і воду-
Віднайду красу і вроду!

Не знаю де - знайду,
І вірю - все пройду!
Серед усіх моїх доріг -
Мене хранить мій оберіг!');
DELETE FROM song_links WHERE song_id = 'pisniua_2197798';
DELETE FROM song_versions WHERE song_id = 'pisniua_2197798';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2197798';
DELETE FROM songs WHERE id = 'pisniua_2197798';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2197798','До єдиної мами на світі','Музика: В. Шаінский Слова: Д. Непомняща. Виконує: Діана Глухова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'По синьому морю до зеленої землі
Пливу я на білім своїм кораблі,
На білім своїм кораблі,
На білім своїм кораблі...
Мене не злякають ні хвилі, ні вітер,
Пливу до єдиної мами на світі.
Пливу я крізь хвилі та вітер |
До єдиної мами на світі!     | (2)

Скоріш до землі я добратись хочу,
Я тут! Я приїхав, я їй закричу -
Я мамі своїй закричу,
Я мамі своїй закричу!
Хай мама почує, хай мама прийде,
Хай мама мене неодмінно знайде.
Не має ж так бути на світі,  |
Щоб були загублені діти.     | (2)

Хай мама почує, хай мама прийде,
Хай мама мене неодмінно знайде.
Не може так бути на світі,   |
Щоб були загублені діти...   | (2)','[''pisni.org.ua'', ''cat:pro-batkiv'', ''cat:translations'', ''Пісні про любов до батьків'', ''Переклади іноземних пісень'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2197798'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2197798','До єдиної мами на світі','По синьому морю до зеленої землі
Пливу я на білім своїм кораблі,
На білім своїм кораблі,
На білім своїм кораблі...
Мене не злякають ні хвилі, ні вітер,
Пливу до єдиної мами на світі.
Пливу я крізь хвилі та вітер |
До єдиної мами на світі!     | (2)

Скоріш до землі я добратись хочу,
Я тут! Я приїхав, я їй закричу -
Я мамі своїй закричу,
Я мамі своїй закричу!
Хай мама почує, хай мама прийде,
Хай мама мене неодмінно знайде.
Не має ж так бути на світі,  |
Щоб були загублені діти.     | (2)

Хай мама почує, хай мама прийде,
Хай мама мене неодмінно знайде.
Не може так бути на світі,   |
Щоб були загублені діти...   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2198012';
DELETE FROM song_versions WHERE song_id = 'pisniua_2198012';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2198012';
DELETE FROM songs WHERE id = 'pisniua_2198012';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2198012','Мамина усмішка','Музика: Ольга Янушкевич Слова: Людмила Маслова','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Тетяна Бондар.','Зірка зірвалась у тишу,
Місяць застиг у вікні,
Простір мімозу колише,
Мати всміхнулась у сні.
Сниться щасливій матусі
Юності давня пора,
Жовта кульбаба у лузі,
Чиста джерельна вода.

Приспів:
Мамина усмішка,
Мамина усмішка - диво!
Мамина усмішка
Ніжна, така несмілива!
Мамина усмішка
Плине у просторі ночі,
Тихо гойдається
В спогадах щастя дівоче!

Десь у блакиті небесній,
Може, на краю землі
Квітнуть ще мамині весни,
Зваблюють в снах солов''ї,
І на хрещатій  маніжці
Батькова дужа рука -
Тихо хлюпоче в усмішці
Спогадів повінь-ріка.

Приспів.

Ніч вистеляє доріжку
У незабутні роки
І заплітає усмішку,
Теплі буянить щемлі.
Спогад присяде на ліжко,
Легко зачепить за сміх,
Знову засяє усмішка
В маминій сивині!

Мамина усмішка,
Мамина усмішка - диво!
Мамина усмішка
Ніжна, така несмілива!
Мамина усмішка
Плине у просторі ночі,
З юністю мама
До ранку прощатись не хоче,
Не хоче, не хоче...','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2198012'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2198012','Мамина усмішка','Зірка зірвалась у тишу,
Місяць застиг у вікні,
Простір мімозу колише,
Мати всміхнулась у сні.
Сниться щасливій матусі
Юності давня пора,
Жовта кульбаба у лузі,
Чиста джерельна вода.

Приспів:
Мамина усмішка,
Мамина усмішка - диво!
Мамина усмішка
Ніжна, така несмілива!
Мамина усмішка
Плине у просторі ночі,
Тихо гойдається
В спогадах щастя дівоче!

Десь у блакиті небесній,
Може, на краю землі
Квітнуть ще мамині весни,
Зваблюють в снах солов''ї,
І на хрещатій  маніжці
Батькова дужа рука -
Тихо хлюпоче в усмішці
Спогадів повінь-ріка.

Приспів.

Ніч вистеляє доріжку
У незабутні роки
І заплітає усмішку,
Теплі буянить щемлі.
Спогад присяде на ліжко,
Легко зачепить за сміх,
Знову засяє усмішка
В маминій сивині!

Мамина усмішка,
Мамина усмішка - диво!
Мамина усмішка
Ніжна, така несмілива!
Мамина усмішка
Плине у просторі ночі,
З юністю мама
До ранку прощатись не хоче,
Не хоче, не хоче...');
DELETE FROM song_links WHERE song_id = 'pisniua_2197267';
DELETE FROM song_versions WHERE song_id = 'pisniua_2197267';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2197267';
DELETE FROM songs WHERE id = 'pisniua_2197267';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2197267','Гілочка калини','Музика: Оксана Лиховид Слова: Оксана Лиховид. Виконує: Вероніка Канінська','uk','ukraine_1991',NULL,'2001','авторський диск Оксани Лиховид','Пісня присвячена пам''яті про трагедію в Нью-Йорку 11 вересня 2001 року','1.Гілочка калини, гілочка калини,
гілочка калини у моїх руках...
Доля журавлина, доля журавлина
всіх нас рознесла вітрами по світах.
Хату материнську, батьківські пороги
бачу лиш у мріях і в солодкім сні.
І хоч нам судились нелегкі дороги -
зігрівають душу нам пісні.

Приспів: (вокаліз)
2.Жде матуся доню, жде матуся сина,
жде бабуся внуків до свого гнізда,
мати-Україна, ненька-Україна
із країв далеких діток вигляда...
В згарищах Мангеттен, в смутку і тривогах,
дим затьмарив сонця промені ясні...
Світові судились нелегкі дороги,
і замовкли радісні пісні...

3.Ще горять руїни, ще дими чорніють,
грозами-сльозами їх не погасить,
та палає в серці віра і надія,
що планета наша буде в мирі жить.
Не журися, друже, не журися, світе,
Дай нам, Боже, вистоять на чужині.
Хай у чистім небі ясне сонце світить,
і дарують силу нам пісні.

Приспів:(вокаліз)

3','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2197267'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2197267','Гілочка калини','1.Гілочка калини, гілочка калини,
гілочка калини у моїх руках...
Доля журавлина, доля журавлина
всіх нас рознесла вітрами по світах.
Хату материнську, батьківські пороги
бачу лиш у мріях і в солодкім сні.
І хоч нам судились нелегкі дороги -
зігрівають душу нам пісні.

Приспів: (вокаліз)
2.Жде матуся доню, жде матуся сина,
жде бабуся внуків до свого гнізда,
мати-Україна, ненька-Україна
із країв далеких діток вигляда...
В згарищах Мангеттен, в смутку і тривогах,
дим затьмарив сонця промені ясні...
Світові судились нелегкі дороги,
і замовкли радісні пісні...

3.Ще горять руїни, ще дими чорніють,
грозами-сльозами їх не погасить,
та палає в серці віра і надія,
що планета наша буде в мирі жить.
Не журися, друже, не журися, світе,
Дай нам, Боже, вистоять на чужині.
Хай у чистім небі ясне сонце світить,
і дарують силу нам пісні.

Приспів:(вокаліз)

3');
DELETE FROM song_links WHERE song_id = 'pisniua_2198697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2198697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2198697';
DELETE FROM songs WHERE id = 'pisniua_2198697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2198697','За Голгофу, за кров',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'D     А        Hm
За Голгофу, за кров.
Я подяку віддаю,
D        А       Hm
За воскресіння Твоє,
G     D/A    А D-А
За перемогу Твою.

D      А      Hm
Дякуємо Тобі, Ісус,
G       D    С    А
Дякуємо Тобі, Ісус,
D      А      Hm
Дякуємо Тобі, Ісус,
Дякуємо ми Тобі,
Дякуємо ми Тобі.','[''pisni.org.ua'', ''cat:strasni'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2198697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2198697','За Голгофу, за кров','D     А        Hm
За Голгофу, за кров.
Я подяку віддаю,
D        А       Hm
За воскресіння Твоє,
G     D/A    А D-А
За перемогу Твою.

D      А      Hm
Дякуємо Тобі, Ісус,
G       D    С    А
Дякуємо Тобі, Ісус,
D      А      Hm
Дякуємо Тобі, Ісус,
Дякуємо ми Тобі,
Дякуємо ми Тобі.');
DELETE FROM song_links WHERE song_id = 'pisniua_2198767';
DELETE FROM song_versions WHERE song_id = 'pisniua_2198767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2198767';
DELETE FROM songs WHERE id = 'pisniua_2198767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2198767','Шкільний дзвінок','Музика: Ірина Тарнавська Слова: Т. Демчук. Виконує: Діана Бородіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Коли осінь чарівниця
Золотом прикрасить все,
Із шкільного двору вітер
Дзвін веселий донесе.
Кличе малюків до школи
Він у цей чудовий час,
Вчитель їх веде за руку
В перший раз у перший клас!

Приспів:
Дон-дін-дон,
Дзвенить шкільний дзвінок,
Кожен впізнає цей голосок!
Дон-дін-дон,
Це пісенька луна,
В світлий клас запрошує вона!

Легко може вгамувати
Дітвору шкільний дзвінок,
Він покличе всіх за парти
На захопливий урок,
Але пройде трішки часу,
Знову творить він дива -
За його дзвінким наказом
Наша школа ожива!

Приспів.

В ніжних променях весняних
Засумуємо на мить
І для когось вже востаннє
Шкільний дзвоник прозвучить.
Діти, наче пташенята,
Розлетяться хто куди,
Але пісеньку дзвіночка
Пам''ятатимуть завжди!

Приспів. (2)

Дон-дін-дон!','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2198767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2198767','Шкільний дзвінок','Коли осінь чарівниця
Золотом прикрасить все,
Із шкільного двору вітер
Дзвін веселий донесе.
Кличе малюків до школи
Він у цей чудовий час,
Вчитель їх веде за руку
В перший раз у перший клас!

Приспів:
Дон-дін-дон,
Дзвенить шкільний дзвінок,
Кожен впізнає цей голосок!
Дон-дін-дон,
Це пісенька луна,
В світлий клас запрошує вона!

Легко може вгамувати
Дітвору шкільний дзвінок,
Він покличе всіх за парти
На захопливий урок,
Але пройде трішки часу,
Знову творить він дива -
За його дзвінким наказом
Наша школа ожива!

Приспів.

В ніжних променях весняних
Засумуємо на мить
І для когось вже востаннє
Шкільний дзвоник прозвучить.
Діти, наче пташенята,
Розлетяться хто куди,
Але пісеньку дзвіночка
Пам''ятатимуть завжди!

Приспів. (2)

Дон-дін-дон!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2198767_l1','pisniua_2198767','YouTube','https://www.youtube.com/watch?v=QZD5rsHPAF8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2198767_l2','pisniua_2198767','YouTube','https://www.youtube.com/watch?v=F7dCSdTYV9c','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2198522';
DELETE FROM song_versions WHERE song_id = 'pisniua_2198522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2198522';
DELETE FROM songs WHERE id = 'pisniua_2198522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2198522','Вірний Спасителю мій',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вірний Спасителю мій,
Ти є найкращий мій Друг.
Я все Тобі віддаю (даю):
Серце, любов і красу.

В світі далеко я був,
Грішний, неправдою жив,
Ти ж мене, Боже, любив (любив),
Кров''ю гріхи всі обмив.

Пісню про ласку Твою
В серце моє Ти всели!
Дай сили хрест свій нести (нести),
Вірним Тобі будь завжди!','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2198522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2198522','Вірний Спасителю мій','Вірний Спасителю мій,
Ти є найкращий мій Друг.
Я все Тобі віддаю (даю):
Серце, любов і красу.

В світі далеко я був,
Грішний, неправдою жив,
Ти ж мене, Боже, любив (любив),
Кров''ю гріхи всі обмив.

Пісню про ласку Твою
В серце моє Ти всели!
Дай сили хрест свій нести (нести),
Вірним Тобі будь завжди!');
DELETE FROM song_links WHERE song_id = 'pisniua_2198055';
DELETE FROM song_versions WHERE song_id = 'pisniua_2198055';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2198055';
DELETE FROM songs WHERE id = 'pisniua_2198055';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2198055','Тільки мама одна','Музика: Василь Лисенко Слова: Галина Лисенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Хто найкраще в світі вміє
Нас любити, нас цінити,
Хто дарує ніжність й ласку,
Радість, втіху і тепло?..

Приспів:
Тільки мама, мама одна
Лагідна, лагідна,як весна!
Тільки руки, руки її
Нас захистять,
Захистять від біди!

Хто нас так пригорне ніжно
До самого свого серця,
Хто навчить нас так любити
Правду світлу і добро?..

Приспів. (2)

Нас захистять,
Захистять від біди!','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:pro-batkiv'', ''Дитячі пісні'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2198055'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2198055','Тільки мама одна','Хто найкраще в світі вміє
Нас любити, нас цінити,
Хто дарує ніжність й ласку,
Радість, втіху і тепло?..

Приспів:
Тільки мама, мама одна
Лагідна, лагідна,як весна!
Тільки руки, руки її
Нас захистять,
Захистять від біди!

Хто нас так пригорне ніжно
До самого свого серця,
Хто навчить нас так любити
Правду світлу і добро?..

Приспів. (2)

Нас захистять,
Захистять від біди!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2198055_l1','pisniua_2198055','YouTube','https://www.youtube.com/watch?v=2FQjCJhqNos','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2198055_l2','pisniua_2198055','YouTube','https://www.youtube.com/watch?v=Sh0SBCYJ4Rg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2198614';
DELETE FROM song_versions WHERE song_id = 'pisniua_2198614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2198614';
DELETE FROM songs WHERE id = 'pisniua_2198614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2198614','Господь Пастир мій',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Господь Пастир мій, я  не буду просити,
По зеленому лузі поведе.
Господь Пастир мій, Він дає мені силу,
До води Він підводить мене.

Якщо навіть спотикнуся, Ти підтримаєш мене,
Горе й смуток, як заглянуть, на руки візьмеш мене.
Гріх спокуси не здолають і хвороба промине,
Навіть смерті дух відступить, бо Господь мій Пастир є!

Господь Пастир мій, стіл накритий для мене,
Намастить миром голову мою.
Господь Пастир мій, добротою огорне,
В домі божім я буду всі дні!','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2198614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2198614','Господь Пастир мій','Господь Пастир мій, я  не буду просити,
По зеленому лузі поведе.
Господь Пастир мій, Він дає мені силу,
До води Він підводить мене.

Якщо навіть спотикнуся, Ти підтримаєш мене,
Горе й смуток, як заглянуть, на руки візьмеш мене.
Гріх спокуси не здолають і хвороба промине,
Навіть смерті дух відступить, бо Господь мій Пастир є!

Господь Пастир мій, стіл накритий для мене,
Намастить миром голову мою.
Господь Пастир мій, добротою огорне,
В домі божім я буду всі дні!');
DELETE FROM song_links WHERE song_id = 'pisniua_2199512';
DELETE FROM song_versions WHERE song_id = 'pisniua_2199512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2199512';
DELETE FROM songs WHERE id = 'pisniua_2199512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2199512','Приснив ми ся сон дивненький','Українська народна пісня. Виконує: Фольктеатр Остапа Стахіва','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,NULL,'Приснив ми ся сон дивненький
Що я вдома ночував,
Пробудився - а я в лісі |
Тай гіренько заплакав   | (2)

Україно, Україно
В тебе доленька сумна
Виганяє москаль з хати  |
Молодого юнака          | (2)

Україно, Україно,
Ти купаєшся в крові
А ми мучимося в лісі    |
Усі хлопці молоді       | (2)

Приснив ми ся сон дивненький
Що я вдома ночував.
Пробудився - а я в лісі |
Тай гіренько заплакав   | (2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2199512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2199512','Приснив ми ся сон дивненький','Приснив ми ся сон дивненький
Що я вдома ночував,
Пробудився - а я в лісі |
Тай гіренько заплакав   | (2)

Україно, Україно
В тебе доленька сумна
Виганяє москаль з хати  |
Молодого юнака          | (2)

Україно, Україно,
Ти купаєшся в крові
А ми мучимося в лісі    |
Усі хлопці молоді       | (2)

Приснив ми ся сон дивненький
Що я вдома ночував.
Пробудився - а я в лісі |
Тай гіренько заплакав   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2199369';
DELETE FROM song_versions WHERE song_id = 'pisniua_2199369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2199369';
DELETE FROM songs WHERE id = 'pisniua_2199369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2199369','Квітка сповнення бажань','Музика: Н. Антоник Слова: Н. Антоник. Виконує: Д. Мацьків, Х. Марків, Ш. Сальо','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Кожен з нас шукає щастя,
Далі йде за горизонт,
Хтось роки, а хтось хвилини,
Поодинці чи разом.
Щастя поряд завжди з нами,
Ти лише його розглянь,
Саме взимку розцвітає
Квітка сповнення бажань!

Приспів:
Хай дзвенить дитячій сміх,
Хай іде сріблястий сніг,
Хай журба, печаль і горе
Відступають!
Диво-квітка розцвіте,
Кожен щастя в ній знайде,
Хай усі своє дитинство
Пригадають!

Щастя - це морозна свіжість,
Всюди тиша аж дзвенить,
Щастя - це сніжинок ніжність,
Що в долонях тануть вмить.
Дзвін бурульок кришталевих,
Сміх дітей, що з гірки мчать,
Блиск ялиночок зелених
І тепло Різдвяних свят!

Приспів. (2)

Диво-квітка розцвіте,
Кожен щастя в ній знайде,
Хай усі своє дитинство
Пригадають!

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2199369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2199369','Квітка сповнення бажань','Кожен з нас шукає щастя,
Далі йде за горизонт,
Хтось роки, а хтось хвилини,
Поодинці чи разом.
Щастя поряд завжди з нами,
Ти лише його розглянь,
Саме взимку розцвітає
Квітка сповнення бажань!

Приспів:
Хай дзвенить дитячій сміх,
Хай іде сріблястий сніг,
Хай журба, печаль і горе
Відступають!
Диво-квітка розцвіте,
Кожен щастя в ній знайде,
Хай усі своє дитинство
Пригадають!

Щастя - це морозна свіжість,
Всюди тиша аж дзвенить,
Щастя - це сніжинок ніжність,
Що в долонях тануть вмить.
Дзвін бурульок кришталевих,
Сміх дітей, що з гірки мчать,
Блиск ялиночок зелених
І тепло Різдвяних свят!

Приспів. (2)

Диво-квітка розцвіте,
Кожен щастя в ній знайде,
Хай усі своє дитинство
Пригадають!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2199369_l1','pisniua_2199369','YouTube','https://www.youtube.com/watch?v=7fxEAFVBWuY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_220114';
DELETE FROM song_versions WHERE song_id = 'pisniua_220114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_220114';
DELETE FROM songs WHERE id = 'pisniua_220114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_220114','А-ба-бап','Музика: Олег Скрипка Слова: Олег Скрипка. Виконує: Воплі Відоплясова','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Хай січе, січе повітря
Веломашина.
Швидко набираю швидкість,
Тисну педалі.
А-ба-бап, є-є.
А-ба-бап, є-є.

Біля будівлі пронесуся,
Де моя краля - Галя.
Я звернусь до цієї дами:
"Ось моя рама, рама".
А-ба-бап, є-є.
А-ба-бап, є-є.

Буде вітер, вітер різать
Наші обличчя.
Будемо жити за законом
Вічного руху.
А-ба-бап, є-є.
А-ба-бап, є-є.','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_220114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_220114','А-ба-бап','Хай січе, січе повітря
Веломашина.
Швидко набираю швидкість,
Тисну педалі.
А-ба-бап, є-є.
А-ба-бап, є-є.

Біля будівлі пронесуся,
Де моя краля - Галя.
Я звернусь до цієї дами:
"Ось моя рама, рама".
А-ба-бап, є-є.
А-ба-бап, є-є.

Буде вітер, вітер різать
Наші обличчя.
Будемо жити за законом
Вічного руху.
А-ба-бап, є-є.
А-ба-бап, є-є.');
DELETE FROM song_links WHERE song_id = 'pisniua_2198212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2198212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2198212';
DELETE FROM songs WHERE id = 'pisniua_2198212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2198212','Пісня про Україну','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Засміється небо сонячним розмаєм
І нап''ється сонця у саду калина,
І духмяні трави росами заграють,
Заспіває серце пісню про Вкраїну!

Хай воно розкаже світу
Про ранковую зорю,
Про волошки синьоокі у гаю,
Про сорочку-вишиванку,
Що неначе оберіг,
Соловейка, що до ранку
Наспіватися не міг!

І нехай не згасне зіронька ранкова,
Хай твоєї долі вдача не покине,
Будь благословенна, земле калинова,
Найдорожча в світі, рідна Україна!

Ти одна розкажеш світу
Про ранковую зорю,
Про волошки синьоокі у гаю,
Про сорочку-вишиванку,
Що неначе оберіг,
Соловейка, що до ранку
Наспіватися не міг!','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2198212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2198212','Пісня про Україну','Засміється небо сонячним розмаєм
І нап''ється сонця у саду калина,
І духмяні трави росами заграють,
Заспіває серце пісню про Вкраїну!

Хай воно розкаже світу
Про ранковую зорю,
Про волошки синьоокі у гаю,
Про сорочку-вишиванку,
Що неначе оберіг,
Соловейка, що до ранку
Наспіватися не міг!

І нехай не згасне зіронька ранкова,
Хай твоєї долі вдача не покине,
Будь благословенна, земле калинова,
Найдорожча в світі, рідна Україна!

Ти одна розкажеш світу
Про ранковую зорю,
Про волошки синьоокі у гаю,
Про сорочку-вишиванку,
Що неначе оберіг,
Соловейка, що до ранку
Наспіватися не міг!');
DELETE FROM song_links WHERE song_id = 'pisniua_2199859';
DELETE FROM song_versions WHERE song_id = 'pisniua_2199859';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2199859';
DELETE FROM songs WHERE id = 'pisniua_2199859';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2199859','Там у Пеньках, на хуторі, під лісом','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,NULL,'Там у Пеньках, на хуторі, під лісом
Відділ спочивати став,
А кат червоний точно вже розвідав
І окружать довкола став.

Там у Пеньках, на хуторі, під лісом
Юрко на стійці стояв.
Запримітивши, він вбігає в хату
І всім цю вістку подав.

Перший Гнатко - був смілий проводир,
А командир - славний Жук,
Мов орли Юрко й кучерявий Гомін,
Та славний наш Богун.

І крикнув Жук: "Гей хлопці, до зброї!",
А сам подався вперід.
Вдарила ката гостра куля -
Його у грудь ранить.

Витяг пістоль дрожачою рукою,
Голову тяжко ранить...
І крик чув: "Хлопці, боріться завзято,
Щоб рабами не вмирать!"

І ще не скоро смерть його приходить -
Кат живим його у руки взяв,
Виколов очі, розпікав залізо,
На ордени колки вбивав!

А друзі його боролися завзято,
Кат до них листи писав:
"Бандери, здайтесь, волос вам не впаде".
Гнатко їм відповідь дав:

"Ми - українські революціонери,
Червоному кату не здамось!
Знає кожний з нас, за що він б''ється,
Щоб рабами жить не довелось!"

Лиш друг Сівач один вернувся з бою,
В рідний терен перейшов...
Та не минула смерть його геройська -
І там його кат знайшов.','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2199859'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2199859','Там у Пеньках, на хуторі, під лісом','Там у Пеньках, на хуторі, під лісом
Відділ спочивати став,
А кат червоний точно вже розвідав
І окружать довкола став.

Там у Пеньках, на хуторі, під лісом
Юрко на стійці стояв.
Запримітивши, він вбігає в хату
І всім цю вістку подав.

Перший Гнатко - був смілий проводир,
А командир - славний Жук,
Мов орли Юрко й кучерявий Гомін,
Та славний наш Богун.

І крикнув Жук: "Гей хлопці, до зброї!",
А сам подався вперід.
Вдарила ката гостра куля -
Його у грудь ранить.

Витяг пістоль дрожачою рукою,
Голову тяжко ранить...
І крик чув: "Хлопці, боріться завзято,
Щоб рабами не вмирать!"

І ще не скоро смерть його приходить -
Кат живим його у руки взяв,
Виколов очі, розпікав залізо,
На ордени колки вбивав!

А друзі його боролися завзято,
Кат до них листи писав:
"Бандери, здайтесь, волос вам не впаде".
Гнатко їм відповідь дав:

"Ми - українські революціонери,
Червоному кату не здамось!
Знає кожний з нас, за що він б''ється,
Щоб рабами жить не довелось!"

Лиш друг Сівач один вернувся з бою,
В рідний терен перейшов...
Та не минула смерть його геройська -
І там його кат знайшов.');
DELETE FROM song_links WHERE song_id = 'pisniua_2199420';
DELETE FROM song_versions WHERE song_id = 'pisniua_2199420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2199420';
DELETE FROM songs WHERE id = 'pisniua_2199420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2199420','Ой біда біда','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'1. Стара ба, стара баба, як холера, а ще хо, а ще хоче ковалера,
Старий дід, старий дід, а як пеньок, а ще хо. а ще хоче до дівок.

Приспів:
Ой біда, ой біда, біда, біда, а я ба, а я баба молода.

2. Ожени, оженився старий дід, узяв ба, узяв бабу 40 літ,
Поляга, полягали вони спать, став куме, став кумедію шукать.

3. Чи ти ба, чи ти баба іздуріла де куме, де ж кумедію поділа,
Чи ти дід, чи ти дід із дуба впав ти жне там, ти ж не там її шукав.

4. Шукав-шу, шукав, шукав не знайшов, узяв плю, узяв плюнув тай пішов,
Він шукав, він шукав її всю ніч, плюнув та й, плюнув та й поліз на піч.

5. Лізла ба, лізла баба на драбину, показа, показала половину,
Лізла ба, лізла баба на ступеньку показа, показала свою пеньку.

6. Ой у лі, ой у лісі та й за гаєм вовки бабу розірвали,
Остали, осталися без язик і тепле, і тепленьке для музик.','[''pisni.org.ua'', ''cat:narodni'', ''cat:zhartivlyvi'', ''Народні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2199420'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2199420','Ой біда біда','1. Стара ба, стара баба, як холера, а ще хо, а ще хоче ковалера,
Старий дід, старий дід, а як пеньок, а ще хо. а ще хоче до дівок.

Приспів:
Ой біда, ой біда, біда, біда, а я ба, а я баба молода.

2. Ожени, оженився старий дід, узяв ба, узяв бабу 40 літ,
Поляга, полягали вони спать, став куме, став кумедію шукать.

3. Чи ти ба, чи ти баба іздуріла де куме, де ж кумедію поділа,
Чи ти дід, чи ти дід із дуба впав ти жне там, ти ж не там її шукав.

4. Шукав-шу, шукав, шукав не знайшов, узяв плю, узяв плюнув тай пішов,
Він шукав, він шукав її всю ніч, плюнув та й, плюнув та й поліз на піч.

5. Лізла ба, лізла баба на драбину, показа, показала половину,
Лізла ба, лізла баба на ступеньку показа, показала свою пеньку.

6. Ой у лі, ой у лісі та й за гаєм вовки бабу розірвали,
Остали, осталися без язик і тепле, і тепленьке для музик.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2199420_l1','pisniua_2199420','YouTube','https://www.youtube.com/watch?v=ag2K5HPBXC8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2199420_l2','pisniua_2199420','YouTube','https://www.youtube.com/watch?v=EUSO88GVqIc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2199420_l3','pisniua_2199420','YouTube','https://www.youtube.com/watch?v=KMwY53OMLWA','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2199420_l4','pisniua_2199420','YouTube','https://www.youtube.com/watch?v=zWn1BDNz7X4','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_220022';
DELETE FROM song_versions WHERE song_id = 'pisniua_220022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_220022';
DELETE FROM songs WHERE id = 'pisniua_220022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_220022','Лента за лентою','Українська народна пісня. Виконує: Pomylka Rezydenta','uk','ukr_ssr_1919_1991',NULL,NULL,'http://www.upa-song.narod.ru/','Якщо не ми, тоді хто?!','лента за лентою набої подавай...
український повстанче... в бою не відступай...

лента за лентою набої подавай...
український повстанче... в бою не відступай...
лента за лентою набої подавай...
український повстанче... в бою не відступай...

вже вечір вечоріє... повстанське серце б''є...
а лента набої поспішно подає...

лента за лентою набої подавай...
український повстанче... в бою не відступай...
лента за лентою набої подавай...
український повстанче... в бою не відступай...

пройшло багато років... приходять нові дні...
і замість автомату... гітара на ремні...

лента за лентою набої подавай...
український повстанче... позицій не здавай...
лента за лентою набої подавай...
український повстанче... позицій не здавай...','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:istorychni'', ''cat:povstanski'', ''cat:suspilno-politychni'', ''Гимни та марші'', ''Історичні пісні'', ''Повстанські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_220022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_220022','Лента за лентою','лента за лентою набої подавай...
український повстанче... в бою не відступай...

лента за лентою набої подавай...
український повстанче... в бою не відступай...
лента за лентою набої подавай...
український повстанче... в бою не відступай...

вже вечір вечоріє... повстанське серце б''є...
а лента набої поспішно подає...

лента за лентою набої подавай...
український повстанче... в бою не відступай...
лента за лентою набої подавай...
український повстанче... в бою не відступай...

пройшло багато років... приходять нові дні...
і замість автомату... гітара на ремні...

лента за лентою набої подавай...
український повстанче... позицій не здавай...
лента за лентою набої подавай...
український повстанче... позицій не здавай...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_220022_l1','pisniua_220022','YouTube','https://www.youtube.com/watch?v=OOYFWiIXVb0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_220022_l2','pisniua_220022','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2200716';
DELETE FROM song_versions WHERE song_id = 'pisniua_2200716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2200716';
DELETE FROM songs WHERE id = 'pisniua_2200716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2200716','Хтіла мене мати','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Хтіла мене мати
Та й за першого дати | (2)
А той перший - хлопець кривоверший
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
Та й за другого дати | (2)
А той другий - хлопець кривогубий.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
Та й за третого дати | (2)
А той третий - на горілку впертий.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
За четвертого дати   | (2)
А той четвертий - босий та впертий.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
Та й за п''ятого дати | (2)
А той п''ятий - хлопець кривоп''ятий.
Ой не дай мене мати,
Не дозвол мене взяти.

Хтіла мене мати
Та й за шестого дати | (2)
А той шестий - має вуса з шерсти.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
Та й за семого дати  | (2)
А той семий - сумний, невеселий.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
Та й за восьмого дати | (2)
А той восьмий - куций, недорослий.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
За дев''ятого дати    | (2)
А той дев''ятий недоставив хати.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
За десятого дати     | (2)
А той десятий - хороший вусатий,
Ой дай мене мати,
Дозволь мене взяти.','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2200716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2200716','Хтіла мене мати','Хтіла мене мати
Та й за першого дати | (2)
А той перший - хлопець кривоверший
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
Та й за другого дати | (2)
А той другий - хлопець кривогубий.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
Та й за третого дати | (2)
А той третий - на горілку впертий.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
За четвертого дати   | (2)
А той четвертий - босий та впертий.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
Та й за п''ятого дати | (2)
А той п''ятий - хлопець кривоп''ятий.
Ой не дай мене мати,
Не дозвол мене взяти.

Хтіла мене мати
Та й за шестого дати | (2)
А той шестий - має вуса з шерсти.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
Та й за семого дати  | (2)
А той семий - сумний, невеселий.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
Та й за восьмого дати | (2)
А той восьмий - куций, недорослий.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
За дев''ятого дати    | (2)
А той дев''ятий недоставив хати.
Ой не дай мене мати,
Не дозволь мене взяти.

Хтіла мене мати
За десятого дати     | (2)
А той десятий - хороший вусатий,
Ой дай мене мати,
Дозволь мене взяти.');
DELETE FROM song_links WHERE song_id = 'pisniua_2201890';
DELETE FROM song_versions WHERE song_id = 'pisniua_2201890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2201890';
DELETE FROM songs WHERE id = 'pisniua_2201890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2201890','Христос є скеля',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Христос є скеля, фонтан з якої б''ється
Dm
Води цілющої, що дасть життя нове.
Христос є скеля, вода з якої ллється
Вода жива, що дасть тобі життя нове.

Коли хто прагне, хай приходить з неї п''є,
Освіжить душу і все єство своє.
Христос є скеля, вода з якої ллється
Вода жива, що дасть тобі життя нове.

Христос - лілея на ланах квітучих,
Троянда свіжа, біла із саду Сарон.
Христос - життя й любов понад любов''ю,
Він той, що нам своє спасіння подає.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2201890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2201890','Христос є скеля','Христос є скеля, фонтан з якої б''ється
Dm
Води цілющої, що дасть життя нове.
Христос є скеля, вода з якої ллється
Вода жива, що дасть тобі життя нове.

Коли хто прагне, хай приходить з неї п''є,
Освіжить душу і все єство своє.
Христос є скеля, вода з якої ллється
Вода жива, що дасть тобі життя нове.

Христос - лілея на ланах квітучих,
Троянда свіжа, біла із саду Сарон.
Христос - життя й любов понад любов''ю,
Він той, що нам своє спасіння подає.');
DELETE FROM song_links WHERE song_id = 'pisniua_2200798';
DELETE FROM song_versions WHERE song_id = 'pisniua_2200798';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2200798';
DELETE FROM songs WHERE id = 'pisniua_2200798';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2200798','Дума','Музика: Микола Лисенко Слова: Тарас Шевченко. Виконує: Павло Кармалюк','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'У неділю вранці-рано
Синє море грало,
Товариство кошового
На раді прохало:
"Благослови, отамане,
Байдаки спускати,
Та за Тендер погуляти,
Турка пошукати".

Чайки, байдаки спускали,
Гарматами риштовали,
З Дніпрового гирла широкого
Випливали, серед ночі темної,
На морі синьому
За островом Тендером
Потопали, пропадали...

Отамана курінного,
Сироту Степана молодого,
Синє море не втопило,
А в турецьку землю агарянську
Без корми прибило...
Тоді сироту Степана,
Отамана молодого,
Турки-яничари ловили,
В кайдани кували...

Ой, Спасе наш Межигорський,
Чудотворний Спасе,
Не допусти мене впасти
В тяжкую неволю!
Там кайдани по три пуда,
Отаманам - по чотири,
І світу божого не бачать,
Не знають, без сповіді вмирають,
Як собаки, здихають...

І згадав сирота Степан в неволі
Свою далеку Україну,
Нерідного батька старого,
І коника вороного,
І нерідну сестру Ярину...
Плаче-ридає,
До бога руки здіймає,
Кайдани ламає,
Утікає на вольную волю...

Турки-яничари його догнали,
До стовпа в''язали, очі виймали,
Гарячим залізом випікали,
В кайдани кували,
В тюрму посадили та й замурували','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2200798'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2200798','Дума','У неділю вранці-рано
Синє море грало,
Товариство кошового
На раді прохало:
"Благослови, отамане,
Байдаки спускати,
Та за Тендер погуляти,
Турка пошукати".

Чайки, байдаки спускали,
Гарматами риштовали,
З Дніпрового гирла широкого
Випливали, серед ночі темної,
На морі синьому
За островом Тендером
Потопали, пропадали...

Отамана курінного,
Сироту Степана молодого,
Синє море не втопило,
А в турецьку землю агарянську
Без корми прибило...
Тоді сироту Степана,
Отамана молодого,
Турки-яничари ловили,
В кайдани кували...

Ой, Спасе наш Межигорський,
Чудотворний Спасе,
Не допусти мене впасти
В тяжкую неволю!
Там кайдани по три пуда,
Отаманам - по чотири,
І світу божого не бачать,
Не знають, без сповіді вмирають,
Як собаки, здихають...

І згадав сирота Степан в неволі
Свою далеку Україну,
Нерідного батька старого,
І коника вороного,
І нерідну сестру Ярину...
Плаче-ридає,
До бога руки здіймає,
Кайдани ламає,
Утікає на вольную волю...

Турки-яничари його догнали,
До стовпа в''язали, очі виймали,
Гарячим залізом випікали,
В кайдани кували,
В тюрму посадили та й замурували');
DELETE FROM song_links WHERE song_id = 'pisniua_2201212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2201212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2201212';
DELETE FROM songs WHERE id = 'pisniua_2201212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2201212','Ой, у Вифлеємі радісна новина',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ой, у Вифлеємі радісна новина, радуйся!
Ой, радуйся, земле, - Божий Син народився!

Там Діва Марія народила Сина, радуйся!
Ой, радуйся, земле, - Божий Син народився!

І Отцівське Слово зодяглося в тіло, радуйся!
Ой, радуйся, земле, - Божий Син народився!

В мороці земному сонце засвітило, радуйся!
Ой, радуйся, земле, - Божий Син народився!

Ангели співають Господу Своєму, радуйся!
Ой, радуйся, земле, - Божий Син народився!

Славу й честь складають Новорожденому, радуйся!
Ой, радуйся, земле, - Божий Син народився!

І ми Рожденого Христа прославляймо, радуйся!
Ой, радуйся, земле, - Божий Син народився!

Господеві Спасу всі поклін віддаймо, радуйся!
Ой, радуйся, земле, - Божий Син народився!','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2201212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2201212','Ой, у Вифлеємі радісна новина','Ой, у Вифлеємі радісна новина, радуйся!
Ой, радуйся, земле, - Божий Син народився!

Там Діва Марія народила Сина, радуйся!
Ой, радуйся, земле, - Божий Син народився!

І Отцівське Слово зодяглося в тіло, радуйся!
Ой, радуйся, земле, - Божий Син народився!

В мороці земному сонце засвітило, радуйся!
Ой, радуйся, земле, - Божий Син народився!

Ангели співають Господу Своєму, радуйся!
Ой, радуйся, земле, - Божий Син народився!

Славу й честь складають Новорожденому, радуйся!
Ой, радуйся, земле, - Божий Син народився!

І ми Рожденого Христа прославляймо, радуйся!
Ой, радуйся, земле, - Божий Син народився!

Господеві Спасу всі поклін віддаймо, радуйся!
Ой, радуйся, земле, - Божий Син народився!');
DELETE FROM song_links WHERE song_id = 'pisniua_220096';
DELETE FROM song_versions WHERE song_id = 'pisniua_220096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_220096';
DELETE FROM songs WHERE id = 'pisniua_220096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_220096','Колискова','Музика: Олег Скрипка Слова: Олег Скрипка. Виконує: Воплі Відоплясова','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Висить місяць,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2202797';
DELETE FROM song_versions WHERE song_id = 'pisniua_2202797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2202797';
DELETE FROM songs WHERE id = 'pisniua_2202797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2202797','Ковила та маки','Слова: Анатолій Безус','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Їхав козак-батько в поле воювати,
Пускав коня в дальній путь,
Брав з собою в шапку ковилу та маки,
Щоб синів й дружину не забуть.

Приспів:
Маки, маки, ковила та маки,
Що по всіх курганах так пишно цвітуть -
То на тих курганах сплять батьки козаки,
А на інших - рідні їх додому ждуть.

Їздив козак довго, бився козак славно,
Та загинув в лютому бою,
За синів й дружину, за неньку Україну
Поклав козак голову свою.

Приспів.

Поховали друзі козака в могилі,
Поклонились низько та й пустились в путь,
А на тій могилі в степу неосяжнім
Ковила та маки цвітуть.

Не губіть же, люди, ковилу та маки,
Що по всіх курганах так пишно цвітуть,
То на тих курганах сплять батьки-козаки,
А на інших - рідні їх додому ждуть...','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2202797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2202797','Ковила та маки','Їхав козак-батько в поле воювати,
Пускав коня в дальній путь,
Брав з собою в шапку ковилу та маки,
Щоб синів й дружину не забуть.

Приспів:
Маки, маки, ковила та маки,
Що по всіх курганах так пишно цвітуть -
То на тих курганах сплять батьки козаки,
А на інших - рідні їх додому ждуть.

Їздив козак довго, бився козак славно,
Та загинув в лютому бою,
За синів й дружину, за неньку Україну
Поклав козак голову свою.

Приспів.

Поховали друзі козака в могилі,
Поклонились низько та й пустились в путь,
А на тій могилі в степу неосяжнім
Ковила та маки цвітуть.

Не губіть же, люди, ковилу та маки,
Що по всіх курганах так пишно цвітуть,
То на тих курганах сплять батьки-козаки,
А на інших - рідні їх додому ждуть...');
DELETE FROM song_links WHERE song_id = 'pisniua_2202293';
DELETE FROM song_versions WHERE song_id = 'pisniua_2202293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2202293';
DELETE FROM songs WHERE id = 'pisniua_2202293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2202293','Мій Львове!','Музика: Анатолій Говорадло Слова: Анатолій Говорадло. Виконує: Ріка життя','uk','ukraine_1991',NULL,NULL,'slavko',NULL,'У світі місто є, тут все життя моє
Сюди дитинства журавлі нас кличуть знову
Я тут живу я тут люблю,
Про тебе пісня ця мій старовинний Львове.
І де б я не бував, тебе не забував
Мене дороги знов до дому повертають
Бо тут живу, бо тут люблю
І знаю я, що тут завжди мене чекають.

Приспів:
Мій Львове нас доля поєднала
Кохане місто, ти для мене рідним стало
Мій Львове любов цю не згасити,
Бо підростають діти, і ми повинні жити,
І ми повинні жити мій Львове!

У рідній стороні, так затишно мені
Тут серед вуличок стареньких заблукаю
Вже сім віків, мій древній Львів
Високий замок від біди оберігає.
Шляхетний гомінкий ти серцю дорогий
Для мене в світі міста кращого немає
Бо тут живу, бо тут люблю
І знаю я, що тут завжди мене чекають

Приспів','[''pisni.org.ua'', ''cat:lviv'', ''Пісні про Львів'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2202293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2202293','Мій Львове!','У світі місто є, тут все життя моє
Сюди дитинства журавлі нас кличуть знову
Я тут живу я тут люблю,
Про тебе пісня ця мій старовинний Львове.
І де б я не бував, тебе не забував
Мене дороги знов до дому повертають
Бо тут живу, бо тут люблю
І знаю я, що тут завжди мене чекають.

Приспів:
Мій Львове нас доля поєднала
Кохане місто, ти для мене рідним стало
Мій Львове любов цю не згасити,
Бо підростають діти, і ми повинні жити,
І ми повинні жити мій Львове!

У рідній стороні, так затишно мені
Тут серед вуличок стареньких заблукаю
Вже сім віків, мій древній Львів
Високий замок від біди оберігає.
Шляхетний гомінкий ти серцю дорогий
Для мене в світі міста кращого немає
Бо тут живу, бо тут люблю
І знаю я, що тут завжди мене чекають

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2202293_l1','pisniua_2202293','YouTube','https://www.youtube.com/watch?v=GxQuAvlWmKs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2202879';
DELETE FROM song_versions WHERE song_id = 'pisniua_2202879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2202879';
DELETE FROM songs WHERE id = 'pisniua_2202879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2202879','Тече річка','Українська народна пісня. Виконує: Гурт "Експрес"','uk','ukraine_before_1917',NULL,NULL,'minus.lviv.ua',NULL,'Червоніють маки в жовтім полі,
Поплелися вінцями
І в одну з''єдналися дві долі |
Золотими кільцями.           | (2)

Приспів:
Тече річка, прозора водичка,
Пролітає літечко,
А у твоїх косах біла стрічка,
Колоситься житечко!

А сьогодні сватів зазиваю
На твоє подвір''ячко,
І для наречених на доріжку   |
Вистеляють зіллячко.         | (2)

Приспів.

Вже ідуть до шлюбу молодята
І музики виграють,
Гості молодих усі вітають,   |
Подарунки дарують.           | (2)

Приспів.

Ви, батьки, за ними не сумуйте,
Хоч і на очах росли,
І тепер до їхнього гніздечка |
Завжди будете іти.           | (2)

Приспів. (2)','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2202879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2202879','Тече річка','Червоніють маки в жовтім полі,
Поплелися вінцями
І в одну з''єдналися дві долі |
Золотими кільцями.           | (2)

Приспів:
Тече річка, прозора водичка,
Пролітає літечко,
А у твоїх косах біла стрічка,
Колоситься житечко!

А сьогодні сватів зазиваю
На твоє подвір''ячко,
І для наречених на доріжку   |
Вистеляють зіллячко.         | (2)

Приспів.

Вже ідуть до шлюбу молодята
І музики виграють,
Гості молодих усі вітають,   |
Подарунки дарують.           | (2)

Приспів.

Ви, батьки, за ними не сумуйте,
Хоч і на очах росли,
І тепер до їхнього гніздечка |
Завжди будете іти.           | (2)

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2202879_l1','pisniua_2202879','YouTube','https://www.youtube.com/watch?v=SNFY4gBZZVs','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_22022';
DELETE FROM song_versions WHERE song_id = 'pisniua_22022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_22022';
DELETE FROM songs WHERE id = 'pisniua_22022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_22022','Ніби вчора','Музика: Ігор Білозір Слова: Петро Запотічний. Виконує: Василь Зінкевич, Павло Мрежук, Ватра','uk','ukraine_1991',NULL,NULL,'Касета',NULL,'Ніби вчора, моя мамо,
Ти будила мене рано,
Говорила мені: "Сину, час настав".
Час від рідного порогу,
Кличе даль тебе в дорогу,
Щедрий ранок сонцем вже тобі заграв.

Вже тобі дарує сонце новий день,
Джерело неспіваних іще пісень.
Щедроти черпни у нього, доброти,
А у ранків золотистих чистоти.
Диво-сили набирайся у землі,
Пам''ятай щодень слова мої.

Ніби вчора, моя мамо,
Ти будила мене рано,
Промінь сонця усміхавсь в устах твоїх.
Твоя усмішка привітна
Випромінювала світло,
Твоє слово зігрівало завжди всіх.

Вже мені дарує сонце новий день,
Джерело неспіваних іще пісень.
Щедроти черпну у нього, доброти
А у ранків золотистих чистоти.
Диво-сили набираюсь у землі,
Пам''ятаю я слова твої.

Ніби вчора, моя мамо,
Ти будила мене рано,
З тих часів світанків стільки відійшло.
Літа з сумом відлітають,
Твої внуки підростають,
І даю їм твою ласку і тепло

Вже моїм синам дарує сонце день,   |
Джерело неспіваних іще пісень.     |
Щедроти черпнуть у нього, доброти, |
А у ранків золотистих чистоти.     | (2)
Диво-сили набирайтесь у землі,     |
Ой сини, соколики мої.             |','[''pisni.org.ua'', ''cat:patriotic'', ''cat:pro-batkiv'', ''Патріотичні пісні'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_22022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_22022','Ніби вчора','Ніби вчора, моя мамо,
Ти будила мене рано,
Говорила мені: "Сину, час настав".
Час від рідного порогу,
Кличе даль тебе в дорогу,
Щедрий ранок сонцем вже тобі заграв.

Вже тобі дарує сонце новий день,
Джерело неспіваних іще пісень.
Щедроти черпни у нього, доброти,
А у ранків золотистих чистоти.
Диво-сили набирайся у землі,
Пам''ятай щодень слова мої.

Ніби вчора, моя мамо,
Ти будила мене рано,
Промінь сонця усміхавсь в устах твоїх.
Твоя усмішка привітна
Випромінювала світло,
Твоє слово зігрівало завжди всіх.

Вже мені дарує сонце новий день,
Джерело неспіваних іще пісень.
Щедроти черпну у нього, доброти
А у ранків золотистих чистоти.
Диво-сили набираюсь у землі,
Пам''ятаю я слова твої.

Ніби вчора, моя мамо,
Ти будила мене рано,
З тих часів світанків стільки відійшло.
Літа з сумом відлітають,
Твої внуки підростають,
І даю їм твою ласку і тепло

Вже моїм синам дарує сонце день,   |
Джерело неспіваних іще пісень.     |
Щедроти черпнуть у нього, доброти, |
А у ранків золотистих чистоти.     | (2)
Диво-сили набирайтесь у землі,     |
Ой сини, соколики мої.             |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22022_l1','pisniua_22022','YouTube','https://www.youtube.com/watch?v=JcZLIDciV8w','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22022_l2','pisniua_22022','YouTube','https://www.youtube.com/watch?v=bWPFDJZvF3o','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22022_l3','pisniua_22022','YouTube','https://www.youtube.com/watch?v=H5Lmfe06JPE','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22022_l4','pisniua_22022','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_220267';
DELETE FROM song_versions WHERE song_id = 'pisniua_220267';
DELETE FROM songs_fts WHERE song_id = 'pisniua_220267';
DELETE FROM songs WHERE id = 'pisniua_220267';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_220267','Три хвилини','Музика: Валерій Харчишин, С. Біліченко Слова: Валерій Харчишин. Виконує: Друга ріка','uk','ukraine_1991',NULL,'2005','Аудіо-альбом "Друга ріка. "Рекорди" (2005)','Текст взято з обкладинки аудіо-CD "Друга ріка. "Рекорди" (2005). * Тут на обкладинці аудіо-CD: "... від не дах". Акорди підібрано на слух за аудіо. Оригінальна тональність: D#m (каподастр на I ладі). Використані акорди: Dm [x x 0 2 3 1] D/A# [x 1 0 2 3 x] C [x 3 5 5 5 3] C/A [5 x x 5 5 3] Якщо замінити С [x 3 5 5 5 3] на С [x 3 2 0 1 0], тоді варто замінити C/A [5 x x 5 5 3] на Am [5 x x 5 5 5]. Підбір акордів: bohdanko (pisni.org.ua)','вступ: Dm D/A# C C/A (x2)

мотив 1:
Dm            D/A#     C          C/A         Dm ...
за три хвилини загубився і влюбився та пропав
за три хвилини закохався і набрався твоїх чар
о скільки тепла в твоїх очах а віє холод він не дах *
cкільки скажи я маю о скільки скажи тримаю я

мотив 2:
D/A#     C        C/A      Dm ...
це все що маю я   це все що маю я
це все що маю я   тебе тримаю маю я
тебе тримаю маю я

мотив 1:
приходиш сядеш і мовчиш мене заводиш та біжиш
приносиш сльози сир і яд мені це треба
о cкільки тепла в твоїх руках а віє холод він не дах *
скільки скажи я маю о скільки скажи тримаю я

мотив 2:
це все що маю я
це все що маю я
це все що маю я
тебе тримаю маю я
тебе тримаю маю я

мотив 3:
C/A     Dm   D/A#       C ...
я не хотів просто не встиг
я не хотів просто не зміг
тепер це все що маю я   все що маю я
це все що маю я   це все що маю я
C/A    Dm D/A# C C/A Dm D/A# C ...
тебе тримаю маю я
тебе тримаю маю я
C/A
тебе тримаю

Табулатура основної теми гітари: Програш. Мотив 1. Мотив 2.
Підібрав: "bohdanko" (pіsnі.org.ua).

вступ:
E||------|--------------------------------|---------------------------------|
H||------|--------------------------------|--2-----2-----2---2--------------|
G||----1-|--3----3-----3---3-----1--------|----1-----1---------1---4----3---|
D||--4---|-----1---4-1---1---4-1---1--4---|------3-----3---3-----3---3----3-|
A||------|-----------------2------------4-|------------------1--------------|
E||------|--------------------------------|---------------------------------|

---------------------------------|--2-----2-----2---2------|
--3-----3-----3---3-----1--------|----1-----1--------------|
----4-1---4-1---1---4-1---1--4---|------3-----3---3--------|
------------------2------------4-|------------------1------|

мотив 1:                                                                      3x
------|-----------------------------------|--2-----2-----2---2-----2-----2----||
----1-|*--3-----3-----3---3-----3-----3---|----1-----1---------1-----1-------*||
--4---|*----4-1---4-1---1---4-1---4-1---1-|------3-----3---3-----3-----3---3-*||
------|-------------------2---------------|--4---------------1----------------||

мотив 2:
----------------------------------|--------------------------4---6--|
--------4---------------4---------|--------4---------------6--------|
------3---3---3-------3---3---3---|--6---6---6---6---6---------1----|
--1-4-------4---4---4-------4---4-|----6-------6---6---6-8----------|
------------------2---------------|------------------1--------------|

--------4---------------4---------|--------4---------------6------|
------3---3---3-------3---3---3---|--6---6---6---6---6-------1----|
--1-4-------4---4---4-------4---4-|----6-------6---6---6-8--------|
------------------2---------------|------------------1------------|

---------------------------------|--2-----2-----2---2--------------|
--3-----3-----3---3-----1--------|----1-----1---------1---4----3---|
----4-1---4-1---1---4-1---1--4---|------3-----3---3-----3---3----3-|
------------------2------------4-|------------------1--------------|

---------------------------------|--2-----2-----2---2------||
--3-----3-----3---3-----1--------|----1-----1--------------||
----4-1---4-1---1---4-1---1--4---|------3-----3---3--------||
------------------2------------4-|------------------1------||

Далі - мотив 1 і т.д.

Версія цієї табулатури для Guіtar Pro3 (gp3) - у додатку.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_220267'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_220267','Три хвилини','вступ: Dm D/A# C C/A (x2)

мотив 1:
Dm            D/A#     C          C/A         Dm ...
за три хвилини загубився і влюбився та пропав
за три хвилини закохався і набрався твоїх чар
о скільки тепла в твоїх очах а віє холод він не дах *
cкільки скажи я маю о скільки скажи тримаю я

мотив 2:
D/A#     C        C/A      Dm ...
це все що маю я   це все що маю я
це все що маю я   тебе тримаю маю я
тебе тримаю маю я

мотив 1:
приходиш сядеш і мовчиш мене заводиш та біжиш
приносиш сльози сир і яд мені це треба
о cкільки тепла в твоїх руках а віє холод він не дах *
скільки скажи я маю о скільки скажи тримаю я

мотив 2:
це все що маю я
це все що маю я
це все що маю я
тебе тримаю маю я
тебе тримаю маю я

мотив 3:
C/A     Dm   D/A#       C ...
я не хотів просто не встиг
я не хотів просто не зміг
тепер це все що маю я   все що маю я
це все що маю я   це все що маю я
C/A    Dm D/A# C C/A Dm D/A# C ...
тебе тримаю маю я
тебе тримаю маю я
C/A
тебе тримаю

Табулатура основної теми гітари: Програш. Мотив 1. Мотив 2.
Підібрав: "bohdanko" (pіsnі.org.ua).

вступ:
E||------|--------------------------------|---------------------------------|
H||------|--------------------------------|--2-----2-----2---2--------------|
G||----1-|--3----3-----3---3-----1--------|----1-----1---------1---4----3---|
D||--4---|-----1---4-1---1---4-1---1--4---|------3-----3---3-----3---3----3-|
A||------|-----------------2------------4-|------------------1--------------|
E||------|--------------------------------|---------------------------------|

---------------------------------|--2-----2-----2---2------|
--3-----3-----3---3-----1--------|----1-----1--------------|
----4-1---4-1---1---4-1---1--4---|------3-----3---3--------|
------------------2------------4-|------------------1------|

мотив 1:                                                                      3x
------|-----------------------------------|--2-----2-----2---2-----2-----2----||
----1-|*--3-----3-----3---3-----3-----3---|----1-----1---------1-----1-------*||
--4---|*----4-1---4-1---1---4-1---4-1---1-|------3-----3---3-----3-----3---3-*||
------|-------------------2---------------|--4---------------1----------------||

мотив 2:
----------------------------------|--------------------------4---6--|
--------4---------------4---------|--------4---------------6--------|
------3---3---3-------3---3---3---|--6---6---6---6---6---------1----|
--1-4-------4---4---4-------4---4-|----6-------6---6---6-8----------|
------------------2---------------|------------------1--------------|

--------4---------------4---------|--------4---------------6------|
------3---3---3-------3---3---3---|--6---6---6---6---6-------1----|
--1-4-------4---4---4-------4---4-|----6-------6---6---6-8--------|
------------------2---------------|------------------1------------|

---------------------------------|--2-----2-----2---2--------------|
--3-----3-----3---3-----1--------|----1-----1---------1---4----3---|
----4-1---4-1---1---4-1---1--4---|------3-----3---3-----3---3----3-|
------------------2------------4-|------------------1--------------|

---------------------------------|--2-----2-----2---2------||
--3-----3-----3---3-----1--------|----1-----1--------------||
----4-1---4-1---1---4-1---1--4---|------3-----3---3--------||
------------------2------------4-|------------------1------||

Далі - мотив 1 і т.д.

Версія цієї табулатури для Guіtar Pro3 (gp3) - у додатку.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_220267_l1','pisniua_220267','YouTube','https://www.youtube.com/watch?v=ok7KOkjZmHA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_220267_l2','pisniua_220267','YouTube','https://www.youtube.com/watch?v=XoGUquspB90','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_220267_l3','pisniua_220267','YouTube','https://www.youtube.com/watch?v=yzxcrma9Icw','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_220267_l4','pisniua_220267','YouTube','https://www.youtube.com/watch?v=BkSEfyV14pk','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_2202369';
DELETE FROM song_versions WHERE song_id = 'pisniua_2202369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2202369';
DELETE FROM songs WHERE id = 'pisniua_2202369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2202369','Мамин оберіг',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Як була я маленька
При свічах урочисто
Подала мені ненька
Свій дарунок намисто
Тільки вийду за поріг
Сяє мамин оберіг
І чумацький шлях цвіте
Мов намисто золоте
Коли сієш ти зірки
З материнської руки
Обіймає сто доріг
Материнський оберіг

Приспів:
Мамо горлице рання
Захисти від страждання
Бо прекрасний світ
В ньому руки материнські ніжні
Вік його пригадаю
І рятує задалю
Мамин заповіт
Оберіг і Небесне ім''я
Мама моя

Мама рідна єдина
Згадка в долі не стерта
Золота намистина
Відпадає з конверта
А намисто виграва
Наче світяться слова
Рідне слово не чуже
Оберіг обереже
Я живу при світі дня
Там де жде мене рідня
Обіймає сто доріг
Материнський оберіг

Приспів.

Вік його пригадаю
І рятує задалю
Мамин заповіт
Оберіг і Небесне ім''я
Оберіг і Небесне ім''я
Мама моя','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2202369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2202369','Мамин оберіг','Як була я маленька
При свічах урочисто
Подала мені ненька
Свій дарунок намисто
Тільки вийду за поріг
Сяє мамин оберіг
І чумацький шлях цвіте
Мов намисто золоте
Коли сієш ти зірки
З материнської руки
Обіймає сто доріг
Материнський оберіг

Приспів:
Мамо горлице рання
Захисти від страждання
Бо прекрасний світ
В ньому руки материнські ніжні
Вік його пригадаю
І рятує задалю
Мамин заповіт
Оберіг і Небесне ім''я
Мама моя

Мама рідна єдина
Згадка в долі не стерта
Золота намистина
Відпадає з конверта
А намисто виграва
Наче світяться слова
Рідне слово не чуже
Оберіг обереже
Я живу при світі дня
Там де жде мене рідня
Обіймає сто доріг
Материнський оберіг

Приспів.

Вік його пригадаю
І рятує задалю
Мамин заповіт
Оберіг і Небесне ім''я
Оберіг і Небесне ім''я
Мама моя');
DELETE FROM song_links WHERE song_id = 'pisniua_2204318';
DELETE FROM song_versions WHERE song_id = 'pisniua_2204318';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2204318';
DELETE FROM songs WHERE id = 'pisniua_2204318';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2204318','Служи, сину','Музика: Олег Харитонов Слова: Валерія Сєрова. Виконує: Таїсія Повалій','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У кого є син, той мене зрозуміє,
Для матері син - це майбутні надії!
Сини обирають собі шлях-дорогу,
А в серці у мами постійна тривога.

Приспів:
Служи, мій сину, служи,
За тебе долю благаю.
Пиши, мій сину пиши,
Твоїх листів я чекаю.
Господь тебе бережи,
Тобі нелегко, я знаю.
Нехай ти далеко та кожну хвилину
Я серцем тебе відчуваю.

Чекаю дзвінка, щоб твій голос почути,
А думка одна, щоб тебе пригорнути
До серця свого, як тоді у дитинстві,
Коли цілувала розбиті колінця.

Приспів.

Дорослі сини розлетілись по світу,
Дорослі сини, а для матері - діти.
Для всіх матерів є молитва єдина,
Хай Бог береже всіх синів України.

Приспів.

Нехай ти далеко та кожну хвилину
Я серцем тебе відчуваю...','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2204318'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2204318','Служи, сину','У кого є син, той мене зрозуміє,
Для матері син - це майбутні надії!
Сини обирають собі шлях-дорогу,
А в серці у мами постійна тривога.

Приспів:
Служи, мій сину, служи,
За тебе долю благаю.
Пиши, мій сину пиши,
Твоїх листів я чекаю.
Господь тебе бережи,
Тобі нелегко, я знаю.
Нехай ти далеко та кожну хвилину
Я серцем тебе відчуваю.

Чекаю дзвінка, щоб твій голос почути,
А думка одна, щоб тебе пригорнути
До серця свого, як тоді у дитинстві,
Коли цілувала розбиті колінця.

Приспів.

Дорослі сини розлетілись по світу,
Дорослі сини, а для матері - діти.
Для всіх матерів є молитва єдина,
Хай Бог береже всіх синів України.

Приспів.

Нехай ти далеко та кожну хвилину
Я серцем тебе відчуваю...');
DELETE FROM song_links WHERE song_id = 'pisniua_2205216';
DELETE FROM song_versions WHERE song_id = 'pisniua_2205216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2205216';
DELETE FROM songs WHERE id = 'pisniua_2205216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2205216','Марш бережанських гімназистів','Музика: Іван Миськів Слова: Василь Савчук','uk','ukraine_1991',NULL,NULL,'http://zhnyborody.te.ua',NULL,'Для нас гімназія, як мати,
Відкрила книгу в ясен світ,
І кращих ми не будем знати
Юначих літ, щасливих літ.

Приспів:
Стань у ряд, стань у ряд,
Гімназисте,
Хай тобою милується край,
І знання, і чуття променисті
Для добра України плекай!

Ми клянемося чесно жити,
З людьми творити світ новий
І Україну так любити,
Як Орлик, Стяг і Горновий!

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2205216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2205216','Марш бережанських гімназистів','Для нас гімназія, як мати,
Відкрила книгу в ясен світ,
І кращих ми не будем знати
Юначих літ, щасливих літ.

Приспів:
Стань у ряд, стань у ряд,
Гімназисте,
Хай тобою милується край,
І знання, і чуття променисті
Для добра України плекай!

Ми клянемося чесно жити,
З людьми творити світ новий
І Україну так любити,
Як Орлик, Стяг і Горновий!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2203716';
DELETE FROM song_versions WHERE song_id = 'pisniua_2203716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2203716';
DELETE FROM songs WHERE id = 'pisniua_2203716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2203716','Ой, гості мої','Українська народна пісня. Виконує: Гурт Сусіди','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Гуляло весілля, гуляло в селі
Усі танцювали старі і малі,
Горілка пилася неначе вода,
Ходив з мікрофоном столичний тамада.

Приспів:
Ой, гості мої, ходіть всі до столу,
Вип''ємо за Галю, вип''єм за Миколу.
Нехай наші діти щастя долю мають,
Мирно живуть, діток доглядають.

Музика грала, гриміло село,
Тиждень на фермі світла не було,
Собака сусідський із дому утік,
Кіт десь забився на колгоспний тік.

Приспів.

Наварив горілки хазяїн Павло,
Кабана зарізав, поставив, що було.
Їжте, гості, пийте все, що Бог послав,
У столицю їздив, місяць діставав.

Приспів.

Ой, дає добряче веселий тамада,
Послухайте ви, гості, послухайте сюда:
Наші тато й мама зичать молодим:
Щастя і здоров''я, ще й машину й дім.

Приспів.

Стала теща з тестем, чарку налили,
Любі наші гості, погляньте ви сюди:
Ось, цей конвертик даруємо ми вам
Та ще й телевізор системи Пал-Секам.

Приспів.

Ось уже і гості добряче напились,
Кум до куми близенько нахиливсь,
Щось їй шепоче, ніжно пригорта
Та на чоловіка скоса погляда.

Приспів. (2)','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2203716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2203716','Ой, гості мої','Гуляло весілля, гуляло в селі
Усі танцювали старі і малі,
Горілка пилася неначе вода,
Ходив з мікрофоном столичний тамада.

Приспів:
Ой, гості мої, ходіть всі до столу,
Вип''ємо за Галю, вип''єм за Миколу.
Нехай наші діти щастя долю мають,
Мирно живуть, діток доглядають.

Музика грала, гриміло село,
Тиждень на фермі світла не було,
Собака сусідський із дому утік,
Кіт десь забився на колгоспний тік.

Приспів.

Наварив горілки хазяїн Павло,
Кабана зарізав, поставив, що було.
Їжте, гості, пийте все, що Бог послав,
У столицю їздив, місяць діставав.

Приспів.

Ой, дає добряче веселий тамада,
Послухайте ви, гості, послухайте сюда:
Наші тато й мама зичать молодим:
Щастя і здоров''я, ще й машину й дім.

Приспів.

Стала теща з тестем, чарку налили,
Любі наші гості, погляньте ви сюди:
Ось, цей конвертик даруємо ми вам
Та ще й телевізор системи Пал-Секам.

Приспів.

Ось уже і гості добряче напились,
Кум до куми близенько нахиливсь,
Щось їй шепоче, ніжно пригорта
Та на чоловіка скоса погляда.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2202717';
DELETE FROM song_versions WHERE song_id = 'pisniua_2202717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2202717';
DELETE FROM songs WHERE id = 'pisniua_2202717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2202717','А роки летять','Музика: Василь Дунець Слова: Надія Козак. Виконує: Василь Дунець','uk','ukraine_1991',NULL,NULL,'Авторське подання, СD "Грона Любові"','Аранжування - Сергій Родько Запис - Олександр Третяк Бек-вокал - Руслана Буковська Виконує: Василь Дунець {1662} Альбом: Грона любові','Знов рояться думки,
Не дають мені спати:
У весну запашну,
Мов на крилах, несуть.
Де малому мені
Кожен день був як свято
І не знав я тоді,
що роки не вернуть.

Приспів:
А вони, мов сполохані коні,
В синю даль все летять і летять:
Загубіть хоч "на щастя" підкову,
Як уже не судилось назад...
Загубіть хоч "на щастя" підкову,
Як уже не судилось назад...

Рідне миле село,
Ти у серці до нині,
Хоч давно на цім світі
Без тебе живу.
Споришем заросли
Ті дитинства стежини
Безтурботні літа
Відійшли за межу.

Приспів:
А роки, мов сполохані коні,
В синю даль все летять і летять:
Загубіть хоч "на щастя" підкову,
Як уже не судилось назад...
Загубіть хоч "на щастя" підкову,
Як уже не судилось назад...

Чом весна відцвіла -
В кого ж маю спитати?..-
Вже й у літа мого
Не такі кольори.
Чом рояться думки,
Не дають мені спати
На дорогах крутих,
На шляхах чужини?!

Приспів:
А роки, мов сполохані коні,
В синю даль все летять і летять:
Загубіть хоч "на щастя" підкову,
Як уже не судилось назад...
А роки, мов сполохані коні,
В синю даль все летять і летять:
Загубіть хоч "на щастя" підкову,
Як уже не судилось назад','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2202717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2202717','А роки летять','Знов рояться думки,
Не дають мені спати:
У весну запашну,
Мов на крилах, несуть.
Де малому мені
Кожен день був як свято
І не знав я тоді,
що роки не вернуть.

Приспів:
А вони, мов сполохані коні,
В синю даль все летять і летять:
Загубіть хоч "на щастя" підкову,
Як уже не судилось назад...
Загубіть хоч "на щастя" підкову,
Як уже не судилось назад...

Рідне миле село,
Ти у серці до нині,
Хоч давно на цім світі
Без тебе живу.
Споришем заросли
Ті дитинства стежини
Безтурботні літа
Відійшли за межу.

Приспів:
А роки, мов сполохані коні,
В синю даль все летять і летять:
Загубіть хоч "на щастя" підкову,
Як уже не судилось назад...
Загубіть хоч "на щастя" підкову,
Як уже не судилось назад...

Чом весна відцвіла -
В кого ж маю спитати?..-
Вже й у літа мого
Не такі кольори.
Чом рояться думки,
Не дають мені спати
На дорогах крутих,
На шляхах чужини?!

Приспів:
А роки, мов сполохані коні,
В синю даль все летять і летять:
Загубіть хоч "на щастя" підкову,
Як уже не судилось назад...
А роки, мов сполохані коні,
В синю даль все летять і летять:
Загубіть хоч "на щастя" підкову,
Як уже не судилось назад');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2202717_l1','pisniua_2202717','YouTube','https://www.youtube.com/watch?v=FSdR6PNqnSI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2202717_l2','pisniua_2202717','YouTube','https://www.youtube.com/watch?v=rOy3FxfOFic','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_220694';
DELETE FROM song_versions WHERE song_id = 'pisniua_220694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_220694';
DELETE FROM songs WHERE id = 'pisniua_220694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_220694','Зроби мені хіп хоп','Музика: Танок на майдані Конго Слова: Танок на майдані Конго. Виконує: Танок на майдані Конго','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Я кохаю Гриця (Гриця!), кохаю лише Гриця
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
DELETE FROM song_links WHERE song_id = 'pisniua_220395';
DELETE FROM song_versions WHERE song_id = 'pisniua_220395';
DELETE FROM songs_fts WHERE song_id = 'pisniua_220395';
DELETE FROM songs WHERE id = 'pisniua_220395';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_220395','Ой ясно, ясно сонечко сходить','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://www.knyha.com/ukr/catalog/508/',NULL,'Ой ясно, ясно сонечко сходить,
Та хмарненько заходить.
Смутен, смутен чумацький отаман
Та й по табору ходить.
Ой він ходить, білі руки ломить
Та словесно говорить:
— Ой ви, хлопці, всі добрі молодці,
Та вставайте, вози мажте!
Хлопці встали, вози помазали,
Сірі воли позапрягали.
Шляхом ідуть — нові вози риплять,
Сірі воли ремиґають.
А попереду чумацький отаман
На воронім коні грає.
Ой він грає, виграває,
До табора привертає.
Ой він грає, виграває,
До табора привертає:
— Ой ви, хлопці, всі добрі молодці,
Де будемо ночувати?
Ой недалеко до зеленого гаю
Стали вони ночувати.
А із-за ліса, з зелена байрака,
Розбійники виглядали.
— Ой здорові, всі хлопці, ночували!
Скажіть, скажіть, вражії сини,
Ой та скажіть, превражії сини,
Хто між вами найстаріший?
— Наш отаман онде сидить між возами,
Умивається сльозами.
— Ой ви, хлопці, всі добрі молодці,
Та беріте друки в%руки.
Гей ви, хлопці, всі добрі молодці,
Та беріте друки в руки:
Бийте, бийте, бийте та в''яжіте,
На нові вози кладіте.
Ой та бийте, бийте та в''яжіте,
На нові вози кладіте.
Та повеземо у город у Полтаву,
Та зробимо собі славу.
Розбійничків сорок і чотири
Нас десяти не побили.
І ви, хлопці, всі добрі молодці,
Собі славу наробили!','[''pisni.org.ua'', ''cat:chumacki'', ''Чумацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_220395'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_220395','Ой ясно, ясно сонечко сходить','Ой ясно, ясно сонечко сходить,
Та хмарненько заходить.
Смутен, смутен чумацький отаман
Та й по табору ходить.
Ой він ходить, білі руки ломить
Та словесно говорить:
— Ой ви, хлопці, всі добрі молодці,
Та вставайте, вози мажте!
Хлопці встали, вози помазали,
Сірі воли позапрягали.
Шляхом ідуть — нові вози риплять,
Сірі воли ремиґають.
А попереду чумацький отаман
На воронім коні грає.
Ой він грає, виграває,
До табора привертає.
Ой він грає, виграває,
До табора привертає:
— Ой ви, хлопці, всі добрі молодці,
Де будемо ночувати?
Ой недалеко до зеленого гаю
Стали вони ночувати.
А із-за ліса, з зелена байрака,
Розбійники виглядали.
— Ой здорові, всі хлопці, ночували!
Скажіть, скажіть, вражії сини,
Ой та скажіть, превражії сини,
Хто між вами найстаріший?
— Наш отаман онде сидить між возами,
Умивається сльозами.
— Ой ви, хлопці, всі добрі молодці,
Та беріте друки в%руки.
Гей ви, хлопці, всі добрі молодці,
Та беріте друки в руки:
Бийте, бийте, бийте та в''яжіте,
На нові вози кладіте.
Ой та бийте, бийте та в''яжіте,
На нові вози кладіте.
Та повеземо у город у Полтаву,
Та зробимо собі славу.
Розбійничків сорок і чотири
Нас десяти не побили.
І ви, хлопці, всі добрі молодці,
Собі славу наробили!');
DELETE FROM song_links WHERE song_id = 'pisniua_2205369';
DELETE FROM song_versions WHERE song_id = 'pisniua_2205369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2205369';
DELETE FROM songs WHERE id = 'pisniua_2205369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2205369','Наша славна Україна','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Наша славна Україна,
Прабатьківська земле наша,
Ми за тебе без упину
Мем боротись, кілько сили.

Дорога нам твоя слава,
В серцю нашім ти єдина,
Мила там, де степ широкий,
Мила там, де верховина.

Наша славна Україна,
В нас для тебе серце б''ється,
Повітаєм долі днину,
Свобода тобі всміхнеться.

Як ту землю не любити:
Та ж за нею серце гине,
Ах для неї тільки жити,
Для вільної України.

Хоч гетьмани у могилі,
Ми для тебе ще живемо,
Ворог вбить тебе не в силі,
Геть гонить його будемо.

Ми тобі здобудем долю,
Краю рідний та коханий,
І прогонимо неволю,
І розломимо кайдани.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2205369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2205369','Наша славна Україна','Наша славна Україна,
Прабатьківська земле наша,
Ми за тебе без упину
Мем боротись, кілько сили.

Дорога нам твоя слава,
В серцю нашім ти єдина,
Мила там, де степ широкий,
Мила там, де верховина.

Наша славна Україна,
В нас для тебе серце б''ється,
Повітаєм долі днину,
Свобода тобі всміхнеться.

Як ту землю не любити:
Та ж за нею серце гине,
Ах для неї тільки жити,
Для вільної України.

Хоч гетьмани у могилі,
Ми для тебе ще живемо,
Ворог вбить тебе не в силі,
Геть гонить його будемо.

Ми тобі здобудем долю,
Краю рідний та коханий,
І прогонимо неволю,
І розломимо кайдани.');
DELETE FROM song_links WHERE song_id = 'pisniua_2203919';
DELETE FROM song_versions WHERE song_id = 'pisniua_2203919';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2203919';
DELETE FROM songs WHERE id = 'pisniua_2203919';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2203919','Найкраща в світі жінка - ти','Музика: Богдан Кучер Слова: Богдан Кучер. Виконує: Богдан Кучер','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Прислухаюсь до серця - защемить,
Печаль обійду стороною,
Життя то справжнє, що болить,
Що пережили ми з тобою.
Усе в тобі боготворю,
В житті буває і тривога,
Та в слові вічному "люблю"
Моє спасіння й перемога!

Приспів:
Найкраща в світі жінка - ти,
Найкраща аж до млості!
Найкраща в світі жінка - ти,
Найкраща, найдорожча!

Життєва вічна крутизна,
Ці пересуди і обмови,
Але любов лиш справжня та,
Що серце мовчки заговорить.
І хай мовчать святі уста,
І слів високих вже не треба,
Найкраща в світі жінка та,
Що була завжди біля тебе.

Приспів. (4)','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2203919'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2203919','Найкраща в світі жінка - ти','Прислухаюсь до серця - защемить,
Печаль обійду стороною,
Життя то справжнє, що болить,
Що пережили ми з тобою.
Усе в тобі боготворю,
В житті буває і тривога,
Та в слові вічному "люблю"
Моє спасіння й перемога!

Приспів:
Найкраща в світі жінка - ти,
Найкраща аж до млості!
Найкраща в світі жінка - ти,
Найкраща, найдорожча!

Життєва вічна крутизна,
Ці пересуди і обмови,
Але любов лиш справжня та,
Що серце мовчки заговорить.
І хай мовчать святі уста,
І слів високих вже не треба,
Найкраща в світі жінка та,
Що була завжди біля тебе.

Приспів. (4)');
DELETE FROM song_links WHERE song_id = 'pisniua_2206563';
DELETE FROM song_versions WHERE song_id = 'pisniua_2206563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2206563';
DELETE FROM songs WHERE id = 'pisniua_2206563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2206563','У цьому полі, синьому, як льон','Музика: Сергій Василюк Слова: Василь Стус. Виконує: Тінь сонця, Сергій Василюк','uk','ukraine_1991',NULL,NULL,NULL,'мій підбір акордів пісні','Вступ:

|------4---------|------4---------|
|--4-54-4544-----|--4-54-4544-----|
|-5-5-------55-5-|-5-5-------55-5-|
|7------------7-7|7------------7-7|

Bm
У цьому полі, синьому, як льон,
Bm
Де тільки ти і ні душі навколо,
G
Уздрів і скляк: блукало в тому полі
Сто тіней, В полі синьому, як льон.
Bm
А в цілому полі синьому, як льон,
Bm
Судилося тобі самому бути,
G
Аби спізнати долі, як покути,
У цьому полі синьому, як льон.
Em
Сто чорних тіней довжаться, ростуть
F#m
І вже, як ліс соснової малечі,
G
Устріч рушають. Вдатися до втечі?
F#m
Стежину власну, наче дріт, згорнуть?
Bm
Ні. Вистояти. Вистояти. Ні —
Bm
Стояти. Тільки тут. У цьому полі,
Що наче льон. І власної неволі
F#m
Спізнати тут, на рідній чужині.
Bm
У цьому полі, синьому, як льон,
Bm
Супроти тебе — сто тебе супроти.
G
І кожен супротивник — у скорботі,
F#m
І кожен супротивник, заборон
Не знаючи, вергатиме прокльон,
F#m
Твоєю самотою обгорілий.
G
Здичавів дух і не впізнає тіла
У цьому полі синьому, як льон.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2206563'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2206563','У цьому полі, синьому, як льон','Вступ:

|------4---------|------4---------|
|--4-54-4544-----|--4-54-4544-----|
|-5-5-------55-5-|-5-5-------55-5-|
|7------------7-7|7------------7-7|

Bm
У цьому полі, синьому, як льон,
Bm
Де тільки ти і ні душі навколо,
G
Уздрів і скляк: блукало в тому полі
Сто тіней, В полі синьому, як льон.
Bm
А в цілому полі синьому, як льон,
Bm
Судилося тобі самому бути,
G
Аби спізнати долі, як покути,
У цьому полі синьому, як льон.
Em
Сто чорних тіней довжаться, ростуть
F#m
І вже, як ліс соснової малечі,
G
Устріч рушають. Вдатися до втечі?
F#m
Стежину власну, наче дріт, згорнуть?
Bm
Ні. Вистояти. Вистояти. Ні —
Bm
Стояти. Тільки тут. У цьому полі,
Що наче льон. І власної неволі
F#m
Спізнати тут, на рідній чужині.
Bm
У цьому полі, синьому, як льон,
Bm
Супроти тебе — сто тебе супроти.
G
І кожен супротивник — у скорботі,
F#m
І кожен супротивник, заборон
Не знаючи, вергатиме прокльон,
F#m
Твоєю самотою обгорілий.
G
Здичавів дух і не впізнає тіла
У цьому полі синьому, як льон.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2206563_l1','pisniua_2206563','YouTube','https://www.youtube.com/watch?v=Ypq4jerqrsM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2206563_l2','pisniua_2206563','YouTube','https://www.youtube.com/watch?v=Ztq7IRtq4cg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2206563_l3','pisniua_2206563','YouTube','https://www.youtube.com/watch?v=UlGs0tHqTcY','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2206563_l4','pisniua_2206563','YouTube','https://www.youtube.com/watch?v=vViISoHDEc4','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2206563_l5','pisniua_2206563','YouTube','https://www.youtube.com/watch?v=8jDk4-RLFiw','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_2206328';
DELETE FROM song_versions WHERE song_id = 'pisniua_2206328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2206328';
DELETE FROM songs WHERE id = 'pisniua_2206328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2206328','Дорошенко','Музика: Леся Тельнюк Слова: Станіслав Тельнюк. Виконує: Сестри Тельнюк','uk','ukraine_1991',NULL,NULL,'http://www.telnyuk.info/',NULL,'Ой, гуляє в полі чистім
Вітер-буревій,
Їде, їде Дорошенко
По землі чужій,
А навколо, ой ти ненько,
Тільки степ та козаченьки,
Тільки сотня з Дорошенком
На землі чужій.

А кругом степи горілі
Та рудий бур''ян,
Та стирчить у небі місяць
Наче ятаган,
Та кругом чужая доля,
Та за поясом пістоля,
А з чужого віє поля
Вітер-ураган.

Зазоріє десь на сході
Скоро неба край,
Гей, говорить Дорошенко, -
Хлопці, почекай.
- Ще нас кулі не скосили,
У вороних дістанем сили,
То ж махнемо по ясир ми
У Бахчисарай.

Не зупинить нас негода,
Не зляка гроза,
Не здолає силу нашу
Кантемір Мурза.
Задзвенить у битві криця,
Не за злото будем биться,
Побратима із темниці
Визволить козак!

Гей, гуляє в полі чистім
Вітер-буревій,
Мчить із хлопцями Михайло
На останній бій.
Тільки вітер віє з поля,
Тільки шабля та пістоля,
Та чека незнана доля
На землі чужій...','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2206328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2206328','Дорошенко','Ой, гуляє в полі чистім
Вітер-буревій,
Їде, їде Дорошенко
По землі чужій,
А навколо, ой ти ненько,
Тільки степ та козаченьки,
Тільки сотня з Дорошенком
На землі чужій.

А кругом степи горілі
Та рудий бур''ян,
Та стирчить у небі місяць
Наче ятаган,
Та кругом чужая доля,
Та за поясом пістоля,
А з чужого віє поля
Вітер-ураган.

Зазоріє десь на сході
Скоро неба край,
Гей, говорить Дорошенко, -
Хлопці, почекай.
- Ще нас кулі не скосили,
У вороних дістанем сили,
То ж махнемо по ясир ми
У Бахчисарай.

Не зупинить нас негода,
Не зляка гроза,
Не здолає силу нашу
Кантемір Мурза.
Задзвенить у битві криця,
Не за злото будем биться,
Побратима із темниці
Визволить козак!

Гей, гуляє в полі чистім
Вітер-буревій,
Мчить із хлопцями Михайло
На останній бій.
Тільки вітер віє з поля,
Тільки шабля та пістоля,
Та чека незнана доля
На землі чужій...');
DELETE FROM song_links WHERE song_id = 'pisniua_220192';
DELETE FROM song_versions WHERE song_id = 'pisniua_220192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_220192';
DELETE FROM songs WHERE id = 'pisniua_220192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_220192','Хорунжий Дзюба','Музика: Олег Скрипка Слова: Олег Скрипка. Виконує: Воплі Відоплясова','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Дай міцно обійму,
Моя Катерино,
Зараз виїжджаю
У похід.
Та й не треба сльоз.
Коли Божа воля -
Швиденько повернуся
Я живий.
А, мати, не журіться
Ви за свого сина,
Тату, не дивіться
З-під бровей.
Гей! Однополчани!
Хильнем по повній чарці,
Хорунжий Дзюба,
Виводи коней!

Зійде зоря - настане воля!','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_220192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_220192','Хорунжий Дзюба','Дай міцно обійму,
Моя Катерино,
Зараз виїжджаю
У похід.
Та й не треба сльоз.
Коли Божа воля -
Швиденько повернуся
Я живий.
А, мати, не журіться
Ви за свого сина,
Тату, не дивіться
З-під бровей.
Гей! Однополчани!
Хильнем по повній чарці,
Хорунжий Дзюба,
Виводи коней!

Зійде зоря - настане воля!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_220192_l1','pisniua_220192','YouTube','https://www.youtube.com/watch?v=YNBkzVI9670','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2205797';
DELETE FROM song_versions WHERE song_id = 'pisniua_2205797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2205797';
DELETE FROM songs WHERE id = 'pisniua_2205797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2205797','У гарячих степах Казахстану','(Кенґірський марш). Музика: Михайло Сорока Слова: Михайло Сорока. Виконує: Відгомін','uk','ukr_ssr_1919_1991',NULL,NULL,'Записав Юрчишин А. 20.02.2011 р. від учасників хору "Відгомін" під час концерту, м. Львів.',NULL,'У гарячих степах Казахстану
Сколихнулися спецлагера,
Розігнулись потомлені спини,
Бо стогнати тепер не пора.

У святому пориві
Розірвались нариви.
Ми не будем, не будем рабами
І не будем носити ярма.

Впали мури, що нас розділяли,
І зустрілися брат і сестра,
Дочка з батьком, дружина із мужем,
А дівчина стріча юнака.

Перший подих свободи
Об''єднав всі народи.
Ми не будем, не будем рабами,
І не будем носити ярма.

Воєдино всі мови злилися,
Одна віра колише серця,
У тривогах і на барикадах
Дівча разом з плечем юнака.

Наше гасло - свобода
Для усього народа.
Ми не будем, не будем рабами
І не будем носити ярма.

Братня кров Воркути і Норильська,
Колими, Рудника, Кенґіра
Переповнила чашу насильства
І з''єднала усі лагера.

Тим, що впали за волю,
Ми клянемось сьогодні,
Що не будем, не будем рабами, -
Боротьбу доведем до кінця!
Що не будем, не будем рабами, -
Боротьбу доведем до кінця!','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:istorychni'', ''cat:povstanski'', ''cat:suspilno-politychni'', ''Гимни та марші'', ''Історичні пісні'', ''Повстанські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2205797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2205797','У гарячих степах Казахстану','У гарячих степах Казахстану
Сколихнулися спецлагера,
Розігнулись потомлені спини,
Бо стогнати тепер не пора.

У святому пориві
Розірвались нариви.
Ми не будем, не будем рабами
І не будем носити ярма.

Впали мури, що нас розділяли,
І зустрілися брат і сестра,
Дочка з батьком, дружина із мужем,
А дівчина стріча юнака.

Перший подих свободи
Об''єднав всі народи.
Ми не будем, не будем рабами,
І не будем носити ярма.

Воєдино всі мови злилися,
Одна віра колише серця,
У тривогах і на барикадах
Дівча разом з плечем юнака.

Наше гасло - свобода
Для усього народа.
Ми не будем, не будем рабами
І не будем носити ярма.

Братня кров Воркути і Норильська,
Колими, Рудника, Кенґіра
Переповнила чашу насильства
І з''єднала усі лагера.

Тим, що впали за волю,
Ми клянемось сьогодні,
Що не будем, не будем рабами, -
Боротьбу доведем до кінця!
Що не будем, не будем рабами, -
Боротьбу доведем до кінця!');
DELETE FROM song_links WHERE song_id = 'pisniua_2206616';
DELETE FROM song_versions WHERE song_id = 'pisniua_2206616';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2206616';
DELETE FROM songs WHERE id = 'pisniua_2206616';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2206616','Гей же до зброї','Українська народна пісня. Виконує: Відгомін','uk','ukr_ssr_1919_1991',NULL,NULL,'Записав Юрчишин А. 20.02.2011 р. від учасників хору "Відгомін" під час концерту, м. Львів.',NULL,'Гей же до зброї, браття за волю,
З ворогом лютим час робити лад.
Вже ревуть гармати, схаменися, кате,
Віддай, віддай Україну назад.
Ти зруйнував її, ти сплюндрував її.
Де були школи, збудував тюрми
Нашими батьками, нашими кістками.
Невже, невже не люди ми?
Em
Де наша слава, слава кривава,
Де ж наші гетьмани, Січ і козаки?
Все кати забрали, все поруйнували,
А ми - народ, народ - не жебраки.
Хочемо волі, доброї долі,
Хочемо зробити на Вкраїні лад.
Хочемо просвіти, хочемо летіти
У світ, у світ, у світ, як вільний птах.
Хочемо просвіти, хочемо летіти
У світ, у світ, у світ, як вільний птах.','[''pisni.org.ua'', ''cat:istorychni'', ''cat:povstanski'', ''cat:suspilno-politychni'', ''Історичні пісні'', ''Повстанські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2206616'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2206616','Гей же до зброї','Гей же до зброї, браття за волю,
З ворогом лютим час робити лад.
Вже ревуть гармати, схаменися, кате,
Віддай, віддай Україну назад.
Ти зруйнував її, ти сплюндрував її.
Де були школи, збудував тюрми
Нашими батьками, нашими кістками.
Невже, невже не люди ми?
Em
Де наша слава, слава кривава,
Де ж наші гетьмани, Січ і козаки?
Все кати забрали, все поруйнували,
А ми - народ, народ - не жебраки.
Хочемо волі, доброї долі,
Хочемо зробити на Вкраїні лад.
Хочемо просвіти, хочемо летіти
У світ, у світ, у світ, як вільний птах.
Хочемо просвіти, хочемо летіти
У світ, у світ, у світ, як вільний птах.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2206616_l1','pisniua_2206616','YouTube','https://www.youtube.com/watch?v=Wkfi12wIjaY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2206616_l2','pisniua_2206616','YouTube','https://www.youtube.com/watch?v=dEJBjMcRfXI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2205512';
DELETE FROM song_versions WHERE song_id = 'pisniua_2205512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2205512';
DELETE FROM songs WHERE id = 'pisniua_2205512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2205512','Гарний танець гопачок','Музика: Аркадій Філіпенко Слова: Лариса Коломієць','uk','ukraine_1991',NULL,NULL,'http://www.sadochok.org',NULL,'Я навприсядки скачу,
Чобітками тупочу.
Тупу-тупу-тупочу -
Наче пташка я лечу.

Гоп! Гоп!
Тупочу!
Наче пташка я лечу!

Тілі-тіль, веде смичок
Гарний танець - гопачок,
А бандура -
Брень-брень-брень -
Танцював би цілий день!

Гоп! Гоп!
Брень-брень-брень!
Танцював би цілий день!','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2205512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2205512','Гарний танець гопачок','Я навприсядки скачу,
Чобітками тупочу.
Тупу-тупу-тупочу -
Наче пташка я лечу.

Гоп! Гоп!
Тупочу!
Наче пташка я лечу!

Тілі-тіль, веде смичок
Гарний танець - гопачок,
А бандура -
Брень-брень-брень -
Танцював би цілий день!

Гоп! Гоп!
Брень-брень-брень!
Танцював би цілий день!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2205512_l1','pisniua_2205512','YouTube','https://www.youtube.com/watch?v=jLtChwYCHHo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2204515';
DELETE FROM song_versions WHERE song_id = 'pisniua_2204515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2204515';
DELETE FROM songs WHERE id = 'pisniua_2204515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2204515','Брату емігранту','Музика: Василь Волощук Слова: невідомий. Виконує: Василь Волощук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я в думках лечу за хмари,
Я в думках лечу за обрій,
За моря, за океани
До чужої сторони.
Хочу там я запитати
Свого брата-українця:
Що скажи мені, мій брате,
Ти знайшов на чужині?
Може там тепліше сонце?
Може там тепліше море?
Може там ясніше небо
І родючіша земля?
Та не буде там ніколи
Того тихого садочку,
Де колись твоя матуся
Колисала немовля.

Приспів:
Летіть, мої думки, за небокрай далекий,
Туди, де від зими сховалися лелеки.
Та їм перекажіть, що вже пора додому,
Де тиша є на рідній стороні!
Летіть, мої думки, за гори і долини,
Та повертайтеся назад до України,
І вірю я, повернуться із вами разом
Колись додому всі мої брати!

Час минає непомітно,
Час минає незворотньо,
Дні летять собі за днями,
За роками йдуть роки,
Поміркуй собі, мій брате,
Може, час вже повертатись,
Бо не має в світі місця
Краще рідної землі!

Приспів. (2)','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2204515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2204515','Брату емігранту','Я в думках лечу за хмари,
Я в думках лечу за обрій,
За моря, за океани
До чужої сторони.
Хочу там я запитати
Свого брата-українця:
Що скажи мені, мій брате,
Ти знайшов на чужині?
Може там тепліше сонце?
Може там тепліше море?
Може там ясніше небо
І родючіша земля?
Та не буде там ніколи
Того тихого садочку,
Де колись твоя матуся
Колисала немовля.

Приспів:
Летіть, мої думки, за небокрай далекий,
Туди, де від зими сховалися лелеки.
Та їм перекажіть, що вже пора додому,
Де тиша є на рідній стороні!
Летіть, мої думки, за гори і долини,
Та повертайтеся назад до України,
І вірю я, повернуться із вами разом
Колись додому всі мої брати!

Час минає непомітно,
Час минає незворотньо,
Дні летять собі за днями,
За роками йдуть роки,
Поміркуй собі, мій брате,
Може, час вже повертатись,
Бо не має в світі місця
Краще рідної землі!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2204515_l1','pisniua_2204515','YouTube','https://www.youtube.com/watch?v=jUbifcdfxrw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2206798';
DELETE FROM song_versions WHERE song_id = 'pisniua_2206798';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2206798';
DELETE FROM songs WHERE id = 'pisniua_2206798';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2206798','Писанка','Музика: Марія Бурмака Слова: Катерина Перелісна. Виконує: Марія Бурмака','uk','ukraine_1991',NULL,NULL,'http://blog.meta.ua/~maria_burmaka/posts/i982985/',NULL,'Гарна писанка у мене,
Мабуть, кращої нема.
Мама тільки помагала,
Малювала ж я сама.
Змалювала дрібно квіти,
Вісім хрестиків малих,
І дрібнюсіньку ялинку,
Й поясочок поміж них.

Приспів:
На Великдень писанку
Розмалюю!
Маму з татом, бабу з дідом
Поцілую!

Хоч не зразу змалювала, -
Зіпсувала п''ять яєць, -
А, як шосте закінчила,
Тато мовив: "Молодець!"
Я ту писанку для себе,
Для зразочка залишу,
А для мами і для тата
Я ще кращі напишу!

Приспів. (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:voskresni'', ''Церковні пісні'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2206798'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2206798','Писанка','Гарна писанка у мене,
Мабуть, кращої нема.
Мама тільки помагала,
Малювала ж я сама.
Змалювала дрібно квіти,
Вісім хрестиків малих,
І дрібнюсіньку ялинку,
Й поясочок поміж них.

Приспів:
На Великдень писанку
Розмалюю!
Маму з татом, бабу з дідом
Поцілую!

Хоч не зразу змалювала, -
Зіпсувала п''ять яєць, -
А, як шосте закінчила,
Тато мовив: "Молодець!"
Я ту писанку для себе,
Для зразочка залишу,
А для мами і для тата
Я ще кращі напишу!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2206798_l1','pisniua_2206798','YouTube','https://www.youtube.com/watch?v=8U7cGBm4hxk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2206798_l2','pisniua_2206798','http://burmaka.com.ua/music.htm','http://burmaka.com.ua/music.htm','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2206624';
DELETE FROM song_versions WHERE song_id = 'pisniua_2206624';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2206624';
DELETE FROM songs WHERE id = 'pisniua_2206624';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2206624','Пісня про Гафійку','Українська народна пісня. Виконує: Нескорені','uk','ukr_ssr_1919_1991',NULL,NULL,'Записала Семенко С. від учасників хору "Нескорені", м. Львів.',NULL,'Послухай, дівчино, послухай, єдина,
Лебедину пісню мою, мою.
Ця пісня про тую дівчину,             |
Що впала за волю твою.                |(2)

Із трьома друзями перед ворогами
Втікала Гафійка з села.
За ними в погоню полями               |
Летіла червона орда.                  |(2)

Нараз, Боже милий, Гафійка упала,
Бо куля пробила їй грудь.
Гафійка у крові лежала,               |
Подруго, цього не забудь!             |(2)

"Прощайте, подруги і друзі, прощайте,
Прощай, Україно моя!
В соборній про мене згадайте..."      |
Це були останні слова.                |(2)

Хай пісня про неї по світу лунає,
Хай слава несеться у світ.
І думи народ хай складає,             |
Що сповнивсь її заповіт.              |(2)','[''pisni.org.ua'', ''cat:halycki'', ''cat:istorychni'', ''cat:povstanski'', ''Пісні з Галичини'', ''Історичні пісні'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2206624'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2206624','Пісня про Гафійку','Послухай, дівчино, послухай, єдина,
Лебедину пісню мою, мою.
Ця пісня про тую дівчину,             |
Що впала за волю твою.                |(2)

Із трьома друзями перед ворогами
Втікала Гафійка з села.
За ними в погоню полями               |
Летіла червона орда.                  |(2)

Нараз, Боже милий, Гафійка упала,
Бо куля пробила їй грудь.
Гафійка у крові лежала,               |
Подруго, цього не забудь!             |(2)

"Прощайте, подруги і друзі, прощайте,
Прощай, Україно моя!
В соборній про мене згадайте..."      |
Це були останні слова.                |(2)

Хай пісня про неї по світу лунає,
Хай слава несеться у світ.
І думи народ хай складає,             |
Що сповнивсь її заповіт.              |(2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2207212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2207212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2207212';
DELETE FROM songs WHERE id = 'pisniua_2207212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2207212','Закрило сонце','Українська народна пісня. Виконує: Тріо Глорія','uk','ukraine_before_1917',NULL,NULL,'Збірка Страсних пісень',NULL,'Закрило сонце з жалю жовті очі,
Зітхнуло тихо небо голубе,
А теплий вітер раз у раз шепоче:
Скажи, за віщо розп''яли Тебе?
Чи Ти завдав комусь хоч трішки болю?
Чи Ти бажав комусь хоч крихти зла?
Ні, Ти хотів, щоби повсюди воля     |
Твого Отця Небесного була!          | (2)

І вітер полетів кудись за обрій,
Усе застигло в мовчанці німій,
Поглянь з хреста, о, Спасе мій предобрий,
На світ цілий, народ зболілий Твій.
Любов Твоя свята не знає міри,
Вона палає в серці, наче жар.
Спали наш гнів, спали нашу невіру,  |
А нас прийми собі у жертву, в дар!  | (2)

Ми хочемо в сліди Твої ступати,
Які до щастя вічного ведуть,
Дай світла сили душі рятувати,
Що по дорозі темряви ідуть.
Ти є життя і правда, і дорога,
Твоє святе Ім''я здолає страх.
Із нами будь! Де Ти - там перемога! |
Любов у серці, усміх на устах!      | (2)','[''pisni.org.ua'', ''cat:christian'', ''cat:strasni'', ''Пісні на християнську тематику'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2207212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2207212','Закрило сонце','Закрило сонце з жалю жовті очі,
Зітхнуло тихо небо голубе,
А теплий вітер раз у раз шепоче:
Скажи, за віщо розп''яли Тебе?
Чи Ти завдав комусь хоч трішки болю?
Чи Ти бажав комусь хоч крихти зла?
Ні, Ти хотів, щоби повсюди воля     |
Твого Отця Небесного була!          | (2)

І вітер полетів кудись за обрій,
Усе застигло в мовчанці німій,
Поглянь з хреста, о, Спасе мій предобрий,
На світ цілий, народ зболілий Твій.
Любов Твоя свята не знає міри,
Вона палає в серці, наче жар.
Спали наш гнів, спали нашу невіру,  |
А нас прийми собі у жертву, в дар!  | (2)

Ми хочемо в сліди Твої ступати,
Які до щастя вічного ведуть,
Дай світла сили душі рятувати,
Що по дорозі темряви ідуть.
Ти є життя і правда, і дорога,
Твоє святе Ім''я здолає страх.
Із нами будь! Де Ти - там перемога! |
Любов у серці, усміх на устах!      | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2203777';
DELETE FROM song_versions WHERE song_id = 'pisniua_2203777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2203777';
DELETE FROM songs WHERE id = 'pisniua_2203777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2203777','Грішна і земна','Музика: Геннадій Крупник. Виконує: Віктор Павлік','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Самотньо сьогодні,
Знов без тебе звикаю,
Безодня - моя любов,
Так що ж я чекаю?..
Порадиш обманом ти
І це не в останнє,
Та, як зупинить
Навіки ту мить,
Де ми у коханні?..

Приспів:
Хай ти грішна і земна,
А хто така вона,
Щоб віддавати їй
Безумство наших мрій?
Проходить поміж нас
Звичайна перехожа,
Нехай на тебе так не схожа,
Але мені чужа вона...

У смуток закутий я,
Немов у кайдани,
Зі мною любов моя,
Що ангелом дана,
Я бачу, як плаче ніч,
То сльози несправжні,
А є тільки мить
І є тільки ми -
Кохання і правда!

Приспів. (2)','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2203777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2203777','Грішна і земна','Самотньо сьогодні,
Знов без тебе звикаю,
Безодня - моя любов,
Так що ж я чекаю?..
Порадиш обманом ти
І це не в останнє,
Та, як зупинить
Навіки ту мить,
Де ми у коханні?..

Приспів:
Хай ти грішна і земна,
А хто така вона,
Щоб віддавати їй
Безумство наших мрій?
Проходить поміж нас
Звичайна перехожа,
Нехай на тебе так не схожа,
Але мені чужа вона...

У смуток закутий я,
Немов у кайдани,
Зі мною любов моя,
Що ангелом дана,
Я бачу, як плаче ніч,
То сльози несправжні,
А є тільки мить
І є тільки ми -
Кохання і правда!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2203777_l1','pisniua_2203777','YouTube','https://www.youtube.com/watch?v=qC7tKOAMQhU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2207091';
DELETE FROM song_versions WHERE song_id = 'pisniua_2207091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2207091';
DELETE FROM songs WHERE id = 'pisniua_2207091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2207091','Тож сьогодні, друзі, ми вітаєм вас','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Тож сьогодні, друзі, ми вітаєм вас
І для вас співаємо пісні,
Бо сьогодні в цей чудовий час
Ваші стежечки зійшлись!
Тож сьогодні в цей день радісний
Перед Богом згоду ви дали,
Щоб завжди в коханні й вірності
Разом по дорозі життя йти!

Приспів:
Тож завжди живіть в згоді та любові,
Прославляйте Господа Христа!
І тоді Він вас сам благословить |
Щоб життя щасливо вам прожить!  | (2)

Тож нехай завжди в житті у вас
Будуть щастям сповнені серця,
Щоб сьогодні, в цей нелегкий час,
В вас любов горіла без кінця!
Хай Ісус Христос наповнить вас
Повнотою Божої любові,
Щоб обом вам через все життя
До небес щасливо вам дійти!

Приспів. (2)','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2207091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2207091','Тож сьогодні, друзі, ми вітаєм вас','Тож сьогодні, друзі, ми вітаєм вас
І для вас співаємо пісні,
Бо сьогодні в цей чудовий час
Ваші стежечки зійшлись!
Тож сьогодні в цей день радісний
Перед Богом згоду ви дали,
Щоб завжди в коханні й вірності
Разом по дорозі життя йти!

Приспів:
Тож завжди живіть в згоді та любові,
Прославляйте Господа Христа!
І тоді Він вас сам благословить |
Щоб життя щасливо вам прожить!  | (2)

Тож нехай завжди в житті у вас
Будуть щастям сповнені серця,
Щоб сьогодні, в цей нелегкий час,
В вас любов горіла без кінця!
Хай Ісус Христос наповнить вас
Повнотою Божої любові,
Щоб обом вам через все життя
До небес щасливо вам дійти!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2207318';
DELETE FROM song_versions WHERE song_id = 'pisniua_2207318';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2207318';
DELETE FROM songs WHERE id = 'pisniua_2207318';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2207318','Коли з хреста здіймали тіло','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'збірка релігійних, церковних пісень',NULL,'За тридцять срібняків продали
Царя, що всесвіт зве своїм,
Потім Його закатували,
А що Він заподіяв їм?

Приспів:
Коли з хреста здіймали Тіло, |
До гробу клали похапцем,     |
Від жаху сонце потемніло,    |
Закрила темрява Лице.        | (2)

І завершилася достоту
Найбільша із космічних драм,
По всі часи Господь Голгофу
Поклав основою під храм.

Приспів.

По всі часи все добре й гарне
Родити буде з болю й мук,
По всі часи ніщо намарне,
Не вийде з чистих, творчих рук.

Приспів','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:strasni'', ''Церковні пісні'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2207318'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2207318','Коли з хреста здіймали тіло','За тридцять срібняків продали
Царя, що всесвіт зве своїм,
Потім Його закатували,
А що Він заподіяв їм?

Приспів:
Коли з хреста здіймали Тіло, |
До гробу клали похапцем,     |
Від жаху сонце потемніло,    |
Закрила темрява Лице.        | (2)

І завершилася достоту
Найбільша із космічних драм,
По всі часи Господь Голгофу
Поклав основою під храм.

Приспів.

По всі часи все добре й гарне
Родити буде з болю й мук,
По всі часи ніщо намарне,
Не вийде з чистих, творчих рук.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2207318_l1','pisniua_2207318','YouTube','https://www.youtube.com/watch?v=B4JuF1QaRxg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2207073';
DELETE FROM song_versions WHERE song_id = 'pisniua_2207073';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2207073';
DELETE FROM songs WHERE id = 'pisniua_2207073';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2207073','Геноцид','Музика: Rizups Слова: Rizups. Виконує: Rizups','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Боже, вийди з-поміж сірих хмар,
Ми змушені нести наших предків тягар.
Благослови усі душі мертвих,
Із пам''яті стри рік тридцять третій.

Я нагадаю про смерть і роль малої людини,
Авторитарний геноцид - клеймо для України.
Мільйони смертей, голодних українців,
Голі поля і закриті границі.
Наш рідний народ мучили ні за що,
А люди їли скажене м''ясо.
Нас мучили давно, а все сьогодні сплило,
Бо наш народний дух на кіл посадили.
Затихла пісня, замовкло слово,
А туди було заселено народу нового.
Не знаючи нічого твердять неможливе:
Що голод придуманий, а страждання фальшиві.
Я проклинаю комуністів гадських,
І сущий союз республік радянських.
Змусила страждати сімдесят років
Придумана влада в якій багато мороки.
Нереальна теорія соціалізму,
Результат - геноцид, як вид канібалізму.
Хтось послухав ці слова і в серці защеміло,
А кому було вигідно ті не зрозуміли.
Хоча знайте, правду розказав вам я!
А усім загиблим - вічная пам''ять!

Боже, вийди          |
З-поміж сірих хмар,  |
Ми змушені нести     |
Наших предків тягар. |
Благослови           |
Усі душі мертвих,    |
Із пам''яті стри      |
Рік тридцять третій. | (2)

Це твоя земля, яку наволоч мучила,
Тридцять третій рік - влада за смертю скучила.
Голодна смерть людей, нашого народу,
Голодна смерть мільйонів через радянську морду.
Жахлива картина, коли мати їсть сина,
Бо мріє жити, бо боїться, що загине.
Вони хотіли вбити Україну при корені,
Гнилий з середини, гарно обшитий з зовні,
Тоталітарний чобіт - наш геноцид,
Для них українці, як вимираючий вид.
За планом Кагановича нас чекала провалина.
І хай буде проклята душа Сталіна,
Нехай горять у пеклі комуністичні душі,
Які більше ніколи нас вмерти не примусять.
Я скажу вам, люди, чого кат хотів:
Щоб ми були закопані в один рів,
Щоб ми здихали з голоду. Це винищення нації -
Свідома смерть людей без реінкарнації.
Безжальні тварини, фарисеї, аферисти,
Як можна допустити до влади комуніста?
Не вірили пророцтвам, плювали на пророків,
Але згадуєм все через десятки років.
Вони кажуть: "Це брехня, це пусті плітки",
А ми тримаємо в руках похоронні вінки.
І тепер затямте: наш народ повстає.
Ви хотіли вкрасти дух, але він у нас є!
Народе український, повстань із ярма,
Сильний дух від Бога нам даний не дарма!

Боже, вийди          |
З-поміж сірих хмар,  |
Ми змушені нести     |
Наших предків тягар. |
Благослови           |
Усі душі мертвих,    |
Не дай нам забути    |
Рік тридцять третій! | (2)','[''pisni.org.ua'', ''cat:istorychni'', ''cat:suspilno-politychni'', ''Історичні пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2207073'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2207073','Геноцид','Боже, вийди з-поміж сірих хмар,
Ми змушені нести наших предків тягар.
Благослови усі душі мертвих,
Із пам''яті стри рік тридцять третій.

Я нагадаю про смерть і роль малої людини,
Авторитарний геноцид - клеймо для України.
Мільйони смертей, голодних українців,
Голі поля і закриті границі.
Наш рідний народ мучили ні за що,
А люди їли скажене м''ясо.
Нас мучили давно, а все сьогодні сплило,
Бо наш народний дух на кіл посадили.
Затихла пісня, замовкло слово,
А туди було заселено народу нового.
Не знаючи нічого твердять неможливе:
Що голод придуманий, а страждання фальшиві.
Я проклинаю комуністів гадських,
І сущий союз республік радянських.
Змусила страждати сімдесят років
Придумана влада в якій багато мороки.
Нереальна теорія соціалізму,
Результат - геноцид, як вид канібалізму.
Хтось послухав ці слова і в серці защеміло,
А кому було вигідно ті не зрозуміли.
Хоча знайте, правду розказав вам я!
А усім загиблим - вічная пам''ять!

Боже, вийди          |
З-поміж сірих хмар,  |
Ми змушені нести     |
Наших предків тягар. |
Благослови           |
Усі душі мертвих,    |
Із пам''яті стри      |
Рік тридцять третій. | (2)

Це твоя земля, яку наволоч мучила,
Тридцять третій рік - влада за смертю скучила.
Голодна смерть людей, нашого народу,
Голодна смерть мільйонів через радянську морду.
Жахлива картина, коли мати їсть сина,
Бо мріє жити, бо боїться, що загине.
Вони хотіли вбити Україну при корені,
Гнилий з середини, гарно обшитий з зовні,
Тоталітарний чобіт - наш геноцид,
Для них українці, як вимираючий вид.
За планом Кагановича нас чекала провалина.
І хай буде проклята душа Сталіна,
Нехай горять у пеклі комуністичні душі,
Які більше ніколи нас вмерти не примусять.
Я скажу вам, люди, чого кат хотів:
Щоб ми були закопані в один рів,
Щоб ми здихали з голоду. Це винищення нації -
Свідома смерть людей без реінкарнації.
Безжальні тварини, фарисеї, аферисти,
Як можна допустити до влади комуніста?
Не вірили пророцтвам, плювали на пророків,
Але згадуєм все через десятки років.
Вони кажуть: "Це брехня, це пусті плітки",
А ми тримаємо в руках похоронні вінки.
І тепер затямте: наш народ повстає.
Ви хотіли вкрасти дух, але він у нас є!
Народе український, повстань із ярма,
Сильний дух від Бога нам даний не дарма!

Боже, вийди          |
З-поміж сірих хмар,  |
Ми змушені нести     |
Наших предків тягар. |
Благослови           |
Усі душі мертвих,    |
Не дай нам забути    |
Рік тридцять третій! | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2207461';
DELETE FROM song_versions WHERE song_id = 'pisniua_2207461';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2207461';
DELETE FROM songs WHERE id = 'pisniua_2207461';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2207461','Пісня про "Тараса Чупринку"','Слова: Іван Муха','uk','ukr_ssr_1919_1991',NULL,NULL,'1. Дем’ян Г. Українські повстанські пісні 1940-2000 років (історико-фольклористичне дослідження) – Львів: Галицька видавнича спілка, 2003. – С. 283.',NULL,'Хоч я малий вкраїнець,
Хоя мала вкраїнка,
Та добре, добре знаєм,
Хто був "Тарас Чупринка".

Це був славний, відважний
Повстанський генерал,
Що землю нашу рідну
Від зайів визволяв.

Командував він вправно
Повстанцями в бою
І вчив їх захищати
Україну свою.

"Щоб землю нашу рідну
Кат жодний не топтав!" -
Повстанцям настанови
Такі завжди давав.

Хоч я малий вкраїнець,
Хоя мала вкраїнка,
Та дуже добре знаєм,
Хто був "Тарас Чупринка".','[''pisni.org.ua'', ''cat:halycki'', ''cat:istorychni'', ''cat:povstanski'', ''cat:suspilno-politychni'', ''Пісні з Галичини'', ''Історичні пісні'', ''Повстанські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2207461'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2207461','Пісня про "Тараса Чупринку"','Хоч я малий вкраїнець,
Хоя мала вкраїнка,
Та добре, добре знаєм,
Хто був "Тарас Чупринка".

Це був славний, відважний
Повстанський генерал,
Що землю нашу рідну
Від зайів визволяв.

Командував він вправно
Повстанцями в бою
І вчив їх захищати
Україну свою.

"Щоб землю нашу рідну
Кат жодний не топтав!" -
Повстанцям настанови
Такі завжди давав.

Хоч я малий вкраїнець,
Хоя мала вкраїнка,
Та дуже добре знаєм,
Хто був "Тарас Чупринка".');
DELETE FROM song_links WHERE song_id = 'pisniua_2207910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2207910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2207910';
DELETE FROM songs WHERE id = 'pisniua_2207910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2207910','Весілля, весілля, весілля','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://mxbest.ru',NULL,'Весілля, весілля, весілля,
Весіллю ми раді завжди,
Танцюйте, танцюйте, танцюйте,
Староста, дружби і дружки!

Ми радісно вас привітаєм
І вип''ємо келих вина
За щастя, за радість, за долю,
За щастя до самого дна!

Музики, музики, музики,
Маленьке прохання до вас,
Музики заграйте ми вальса,
Бо хочу ще раз танцювать!

Співаймо, співаймо, співаймо,
До ранку ще будем співать,
Та тільки для горла моєго
Горілки прошу підливать!

А пиво, горілка і дівка
У хлопців завжди на умі,
Гуляйте, співайте, танцюйте,
Шановні ви гості мої!','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2207910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2207910','Весілля, весілля, весілля','Весілля, весілля, весілля,
Весіллю ми раді завжди,
Танцюйте, танцюйте, танцюйте,
Староста, дружби і дружки!

Ми радісно вас привітаєм
І вип''ємо келих вина
За щастя, за радість, за долю,
За щастя до самого дна!

Музики, музики, музики,
Маленьке прохання до вас,
Музики заграйте ми вальса,
Бо хочу ще раз танцювать!

Співаймо, співаймо, співаймо,
До ранку ще будем співать,
Та тільки для горла моєго
Горілки прошу підливать!

А пиво, горілка і дівка
У хлопців завжди на умі,
Гуляйте, співайте, танцюйте,
Шановні ви гості мої!');
DELETE FROM song_links WHERE song_id = 'pisniua_220756';
DELETE FROM song_versions WHERE song_id = 'pisniua_220756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_220756';
DELETE FROM songs WHERE id = 'pisniua_220756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_220756','Мамонти',NULL,'uk','ukraine_1991',NULL,NULL,'Київські Толкіністи','P.S. "Мамонти, мамонти рвуться напролом" кричиться дурним голосом Підбір акордів: Кук','Біла хуртовина замела тайгу,
Сніг пухнастий стелится, вся тайга в снігу.
По тайзі засніженій через бурелом...
Мамонти, мамонти рвуться напролом!

Сірі, величезні, наче валуни.
Сірі, волохаті древні ці слони.
По тайзі засніженій через бурелом...
Мамонти, мамонти рвуться напролом!','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_220756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_220756','Мамонти','Біла хуртовина замела тайгу,
Сніг пухнастий стелится, вся тайга в снігу.
По тайзі засніженій через бурелом...
Мамонти, мамонти рвуться напролом!

Сірі, величезні, наче валуни.
Сірі, волохаті древні ці слони.
По тайзі засніженій через бурелом...
Мамонти, мамонти рвуться напролом!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_220756_l1','pisniua_220756','YouTube','https://www.youtube.com/watch?v=bq97rPkBGvU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2207971';
DELETE FROM song_versions WHERE song_id = 'pisniua_2207971';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2207971';
DELETE FROM songs WHERE id = 'pisniua_2207971';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2207971','Разом співаймо, друзі мої','Музика: Володимир Будейчук Слова: невідомий. Виконує: Михайло Грицкан','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я чекаю вас, друзі мої,
Зустріч з вами для мене - це свято!
Ми разом до самої зорі
Зможем кращі роки пригадати,
Я гітару в руки візьму,
Оживуть запорошені струни,
Заспіваю вам пісню свою,
Пригадаймо життя наше юне!

Приспів:
Разом співаймо, друзі мої,
Згадаймо з вами юності дні
Вип''ємо п''янкого вина,        |
Між нами дружба щира й міцна! | (2)

Я радію, що ви в мене є,
Вами, друзі, я справді багатий,
З вами серце зігріте моє
Тим, що разом зумів вас зібрати!

Приспів. (2)

Вип''ємо п''янкого вина,        |
Між нами дружба щира й міцна! | (2)','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2207971'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2207971','Разом співаймо, друзі мої','Я чекаю вас, друзі мої,
Зустріч з вами для мене - це свято!
Ми разом до самої зорі
Зможем кращі роки пригадати,
Я гітару в руки візьму,
Оживуть запорошені струни,
Заспіваю вам пісню свою,
Пригадаймо життя наше юне!

Приспів:
Разом співаймо, друзі мої,
Згадаймо з вами юності дні
Вип''ємо п''янкого вина,        |
Між нами дружба щира й міцна! | (2)

Я радію, що ви в мене є,
Вами, друзі, я справді багатий,
З вами серце зігріте моє
Тим, що разом зумів вас зібрати!

Приспів. (2)

Вип''ємо п''янкого вина,        |
Між нами дружба щира й міцна! | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2207394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2207394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2207394';
DELETE FROM songs WHERE id = 'pisniua_2207394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2207394','Ми партизани','Музика: Мілько Халупа Слова: "Ролянд Різак"','uk','ukr_ssr_1919_1991',NULL,NULL,'1. Пісні УПА / Зібр. і ред. Лавришин З. – Торонто – Львів, 1996-1997. – С. 38.',NULL,'Ми партизани, лицарі Вкраїни,
З ворогом лютим в бій кривавий йдем.
Ми свято вірим в нашу перемогу,
Що Україні волю принесем.

Хоч нас тисяч впаде за її свободу,
Ті, що остануть, будуть продовжать
Боротьбу за волю, за нашу державу
Від Сяну до Дону, Тиси по Кавказ.

Нас ворог боїться, каже, що бандити,
Хоче відірвати від братів, сестер -
Але, лютий кате, знають батько й мати,
Що ми лиш тобі криваву смерть несем.

Хоч тепер нас ворог нищить і руйнує,
Каже відкрито: "України нєт!",
Але ми докажем ворогові збройно,
Що Вкраїна була і ще буде жить!

Наш народ великий гордо відізвався -
Показав він світу, що він ще живе.
Нас Степан Бандера у бою провадить,
А УГВР політику веде.

Степану Бандері зложимо подяку
За його труди й визволення -
Хай живе Бандера, провідник народу,
А з ним Україна - вільна і свята!','[''pisni.org.ua'', ''cat:istorychni'', ''cat:povstanski'', ''cat:suspilno-politychni'', ''Історичні пісні'', ''Повстанські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2207394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2207394','Ми партизани','Ми партизани, лицарі Вкраїни,
З ворогом лютим в бій кривавий йдем.
Ми свято вірим в нашу перемогу,
Що Україні волю принесем.

Хоч нас тисяч впаде за її свободу,
Ті, що остануть, будуть продовжать
Боротьбу за волю, за нашу державу
Від Сяну до Дону, Тиси по Кавказ.

Нас ворог боїться, каже, що бандити,
Хоче відірвати від братів, сестер -
Але, лютий кате, знають батько й мати,
Що ми лиш тобі криваву смерть несем.

Хоч тепер нас ворог нищить і руйнує,
Каже відкрито: "України нєт!",
Але ми докажем ворогові збройно,
Що Вкраїна була і ще буде жить!

Наш народ великий гордо відізвався -
Показав він світу, що він ще живе.
Нас Степан Бандера у бою провадить,
А УГВР політику веде.

Степану Бандері зложимо подяку
За його труди й визволення -
Хай живе Бандера, провідник народу,
А з ним Україна - вільна і свята!');
DELETE FROM song_links WHERE song_id = 'pisniua_2207522';
DELETE FROM song_versions WHERE song_id = 'pisniua_2207522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2207522';
DELETE FROM songs WHERE id = 'pisniua_2207522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2207522','Замріяний в карії очі','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'1. Записав А. Юрчишин 11.02.11 р. в м. Львові від Ольги Годяк, колишньої учасниці хору "Відгомін".',NULL,'Замріяний в карії очі,
Задивлений в дальнюю путь,
Як битим шляхом до півночі
Повстанці в Карпати ідуть.

Дівчина голівку склонила
Буйну кучеряву на грудь:
- Бувайте здорові, повстанці,
Щаслива юнацька вам путь.

У тихую ніч опівночі
Прибилось два хлопці малі,
Приносять вони скоростріла: -
Прийміть, партизани, друзі.

Нам батька убили германці,
А маму забрали вже рік.
А ми тут удвох осталися -
Жертвуєм Вкраїні свій вік.

Старий сотник поглянув на дітей,
З очей покотилась слеза,
Цілує в чоло одчайдухів,
Дарує на двох нагана.','[''pisni.org.ua'', ''cat:istorychni'', ''cat:povstanski'', ''Історичні пісні'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2207522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2207522','Замріяний в карії очі','Замріяний в карії очі,
Задивлений в дальнюю путь,
Як битим шляхом до півночі
Повстанці в Карпати ідуть.

Дівчина голівку склонила
Буйну кучеряву на грудь:
- Бувайте здорові, повстанці,
Щаслива юнацька вам путь.

У тихую ніч опівночі
Прибилось два хлопці малі,
Приносять вони скоростріла: -
Прийміть, партизани, друзі.

Нам батька убили германці,
А маму забрали вже рік.
А ми тут удвох осталися -
Жертвуєм Вкраїні свій вік.

Старий сотник поглянув на дітей,
З очей покотилась слеза,
Цілує в чоло одчайдухів,
Дарує на двох нагана.');
DELETE FROM song_links WHERE song_id = 'pisniua_2209010';
DELETE FROM song_versions WHERE song_id = 'pisniua_2209010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2209010';
DELETE FROM songs WHERE id = 'pisniua_2209010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2209010','Я помру від застуди','Музика: Мертвий півень Слова: Сергій Жадан. Виконує: Мертвий півень','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я помру від застуди. Наш лазарет
Перебазують кудись на південь
І фронт котитиметься вперед,
І саме почнеться квітень.

І розсипатиметься пустота
Між свіжого шрифту воєнних звісток,
Мов цукор, спакований на свята
Руками київських гімназисток.

У флягах чорнітиме домашнє вино,
І тільки сестра із темного мороку
Подивиться холодно за вікно,
Знайшовши під подушкою рештки морфію.

І повернувшись їй услід,
Я скажу: "Знаєш, сестричко,
Все одно нікому крім нас не болить
Від наших з тобою шкідливих звичок.

Бо все, сестричко, що є між нас,
І чого між нами, сестричко, не має,
Немає імен і не має назв,
Взагалі нічого не має.

Просто збиваючись у цьому диму,
Серце, з яким я живу роками,
Не зупинилось лише тому,
Що по ньому били весь час кулаками".

Аж якось, улітку, вганяючи в стрес
Душі, зіпсовані марафетом,
До палати зайде червоний хрест
На чолі з моїм президентом.

І лікар, сховавши папери в стіл,
Про щось говоритиме не до речі,
І густо лежатиме окопний пил
На сірому президентському френчі.

Коли ж, виходячи, ніби зі сну,
Й дивлячись в небо - тепле й зелене,
Перш ніж знову піти на свою війну,
Він повернеться раптом до мене.

І забувши нараз, що іти пора -
"Невже той самий?" - спитає в конвою.
І лікар розгубиться, а сестра
Ствердно кивне головою!','[''pisni.org.ua'', ''cat:philosophic'', ''cat:viyskovi'', ''Філософські пісні'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2209010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2209010','Я помру від застуди','Я помру від застуди. Наш лазарет
Перебазують кудись на південь
І фронт котитиметься вперед,
І саме почнеться квітень.

І розсипатиметься пустота
Між свіжого шрифту воєнних звісток,
Мов цукор, спакований на свята
Руками київських гімназисток.

У флягах чорнітиме домашнє вино,
І тільки сестра із темного мороку
Подивиться холодно за вікно,
Знайшовши під подушкою рештки морфію.

І повернувшись їй услід,
Я скажу: "Знаєш, сестричко,
Все одно нікому крім нас не болить
Від наших з тобою шкідливих звичок.

Бо все, сестричко, що є між нас,
І чого між нами, сестричко, не має,
Немає імен і не має назв,
Взагалі нічого не має.

Просто збиваючись у цьому диму,
Серце, з яким я живу роками,
Не зупинилось лише тому,
Що по ньому били весь час кулаками".

Аж якось, улітку, вганяючи в стрес
Душі, зіпсовані марафетом,
До палати зайде червоний хрест
На чолі з моїм президентом.

І лікар, сховавши папери в стіл,
Про щось говоритиме не до речі,
І густо лежатиме окопний пил
На сірому президентському френчі.

Коли ж, виходячи, ніби зі сну,
Й дивлячись в небо - тепле й зелене,
Перш ніж знову піти на свою війну,
Він повернеться раптом до мене.

І забувши нараз, що іти пора -
"Невже той самий?" - спитає в конвою.
І лікар розгубиться, а сестра
Ствердно кивне головою!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2209010_l1','pisniua_2209010','YouTube','https://www.youtube.com/watch?v=_ajSjnX8Asw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2207697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2207697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2207697';
DELETE FROM songs WHERE id = 'pisniua_2207697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2207697','Четвертий світ','Музика: Андрій Селезньов Слова: Андрій Селезньов. Виконує: Андрій Селезньов','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Багато зір навколо нас,
Але не всі з них світять
І чийсь вогонь давно погас,
А чийсь пішов по світу.
А, як на мене, одного
Усім нам недостатньо
Кудись прибрати це-два-о
І кисень десь дістати.

Приспів:
Ми - енергія сонця,
Ми - енергія вітру,
Газ і нафта в сторонці
У четвертому світі.

Чадного диму полотно
Заволокло подвір''я,
Та хай там як, а все одно,
Ми завжди будем вірить,
Що вітер сонця по воді
Розвіє чорний попіл
І допоможе назавжди
Забути про Чорнобиль.

Приспів.','[''pisni.org.ua'', ''cat:chornobyl'', ''Чорнобильська катастрофа: пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2207697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2207697','Четвертий світ','Багато зір навколо нас,
Але не всі з них світять
І чийсь вогонь давно погас,
А чийсь пішов по світу.
А, як на мене, одного
Усім нам недостатньо
Кудись прибрати це-два-о
І кисень десь дістати.

Приспів:
Ми - енергія сонця,
Ми - енергія вітру,
Газ і нафта в сторонці
У четвертому світі.

Чадного диму полотно
Заволокло подвір''я,
Та хай там як, а все одно,
Ми завжди будем вірить,
Що вітер сонця по воді
Розвіє чорний попіл
І допоможе назавжди
Забути про Чорнобиль.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2212114';
DELETE FROM song_versions WHERE song_id = 'pisniua_2212114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2212114';
DELETE FROM songs WHERE id = 'pisniua_2212114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2212114','Пісня про Аскольда','Музика: Ірина Батюк Слова: Нестор Нартинець. Виконує: Оксана Сливка','uk','ukraine_1991',NULL,NULL,'VІ фестиваль - конкурс духовної пісні Аскольдів Глас',NULL,'Віки прошуміли, мов вітром, грозою
По древній, могутній Русі.
І рід український гордиться тобою
І славу співає тобі!

Приспів:
Аскольде, Аскольде, могутній вояче,
На бій ти за край рідний став!
Не раз за тобою земля ще заплаче,
Яку ти колись захищав!

Ти вірним був сином своєї держави,
Примножував славу її.
На смерть проти війська чужого стояли,
Щоб мир був на рідній землі!

Приспів.

Хоч час той не можна й на мить повернути,
Вперед він рікою пливе,
Але ми не зможем про тебе забути,
Бо пам''ять про тебе живе!

Приспів.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2212114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2212114','Пісня про Аскольда','Віки прошуміли, мов вітром, грозою
По древній, могутній Русі.
І рід український гордиться тобою
І славу співає тобі!

Приспів:
Аскольде, Аскольде, могутній вояче,
На бій ти за край рідний став!
Не раз за тобою земля ще заплаче,
Яку ти колись захищав!

Ти вірним був сином своєї держави,
Примножував славу її.
На смерть проти війська чужого стояли,
Щоб мир був на рідній землі!

Приспів.

Хоч час той не можна й на мить повернути,
Вперед він рікою пливе,
Але ми не зможем про тебе забути,
Бо пам''ять про тебе живе!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_22114';
DELETE FROM song_versions WHERE song_id = 'pisniua_22114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_22114';
DELETE FROM songs WHERE id = 'pisniua_22114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_22114','Гуцулка Ксеня','Музика: Ярослав Барнич Слова: Ярослав Барнич. Виконує: Василь Зінкевич, Гурт Friends in Kharkiv','uk','ukraine_before_1917',NULL,'1904','Співаник для таборів Марійської Дружини','В радянський час авторство популярної пісні "Гуцулка Ксеня" приписували учителю історії зі Стрийщини Роману Савицькому (1904-1974) (однофамілець видатного українського піаніста проф.Романа Савицького (1907-1960)). Про історію "Гуцулки Ксені" останнім часом написано багато, зокрема: Л.Філоненко. "Пісня "Гуцулка Ксеня" з''явилася завдяки дівчині з Небилова" – www.prospect.if.ua С.Стельмащук. "Гуцулка Ксеня", газ. "За вільну Україну", 27.01 і 17.02.2008 – http://www.zvukraine.lviv.mobi Обговорення на форумі: "Хто автор "Гуцулки Ксені" і "Червоних маків"?".','Темна нічка гори вкрила
Dm
Полонину всю залила,
А в ній постать сніжно-біла
Гуцул Ксеню в ній впізнав.
Він дивився в очі сині,
Тихо спершись на соснині,
І слова ніжні любовні
Він до неї промовляв:
Гуцулко Ксеню,
Я тобі на трембіті
Лиш одній в цілім світі
Розкажу про любов.
Вже пройшло гаряче літо,
Гуцул іншу любить скрито,
А гуцулку синьооку
Він в останню ніч прощав.
Черемошу грали хвилі
Сумували очі сині
тільки вітер на соснині
Сумно пісню вигравав.
Душа страждає,
Звук трембіти лунає,
А що серце кохає,
Бо гаряче, мов жар.','[''pisni.org.ua'', ''cat:dances'', ''cat:lirychni'', ''cat:tango'', ''Пісні до танцю'', ''Пісні про кохання, ліричні'', ''Танґо'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_22114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_22114','Гуцулка Ксеня','Темна нічка гори вкрила
Dm
Полонину всю залила,
А в ній постать сніжно-біла
Гуцул Ксеню в ній впізнав.
Він дивився в очі сині,
Тихо спершись на соснині,
І слова ніжні любовні
Він до неї промовляв:
Гуцулко Ксеню,
Я тобі на трембіті
Лиш одній в цілім світі
Розкажу про любов.
Вже пройшло гаряче літо,
Гуцул іншу любить скрито,
А гуцулку синьооку
Він в останню ніч прощав.
Черемошу грали хвилі
Сумували очі сині
тільки вітер на соснині
Сумно пісню вигравав.
Душа страждає,
Звук трембіти лунає,
А що серце кохає,
Бо гаряче, мов жар.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22114_l1','pisniua_22114','YouTube','https://www.youtube.com/watch?v=x8cC2zqwSDs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22114_l2','pisniua_22114','YouTube','https://www.youtube.com/watch?v=tJNOmjeZD4g','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22114_l3','pisniua_22114','YouTube','https://www.youtube.com/watch?v=rmG2ei5jg84','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22114_l4','pisniua_22114','YouTube','https://www.youtube.com/watch?v=X5jTUsitOoM','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22114_l5','pisniua_22114','YouTube','https://www.youtube.com/watch?v=VxA4-MvRN9w','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22114_l6','pisniua_22114','YouTube','https://www.youtube.com/watch?v=iKf0FpVt0eA','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_22114_l7','pisniua_22114','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_2207653';
DELETE FROM song_versions WHERE song_id = 'pisniua_2207653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2207653';
DELETE FROM songs WHERE id = 'pisniua_2207653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2207653','Воскреслі вогні','Музика: В. Кочержук Слова: В. Шурат','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Злинуть воскресні пісні,
Сядуть на наші поля.
Вже у весняному сні
Чує їх рідна земля.

Приспів
Чуєте, браття, вже дзвін,
Дзвін Великодніх пісень
В гурт один кличе нас він,
День Воскресіння - наш день!

З гір їх несе вже струмок,
Шум їх витає в гаях...
Дай їм крильцят ластівок,
Весно, дай сонячний шлях!

Приспів.

Буде Великдень у нас,
Свято без горя і сльоз.
Руку простягне нам Спас,
Долю подасть нам Христос!

Приспів.','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2207653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2207653','Воскреслі вогні','Злинуть воскресні пісні,
Сядуть на наші поля.
Вже у весняному сні
Чує їх рідна земля.

Приспів
Чуєте, браття, вже дзвін,
Дзвін Великодніх пісень
В гурт один кличе нас він,
День Воскресіння - наш день!

З гір їх несе вже струмок,
Шум їх витає в гаях...
Дай їм крильцят ластівок,
Весно, дай сонячний шлях!

Приспів.

Буде Великдень у нас,
Свято без горя і сльоз.
Руку простягне нам Спас,
Долю подасть нам Христос!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2210890';
DELETE FROM song_versions WHERE song_id = 'pisniua_2210890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2210890';
DELETE FROM songs WHERE id = 'pisniua_2210890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2210890','Як їхали із Пиляви Козаки додому','Музика: Іван Пустовий Слова: Михайло Войнаренко. Виконує: Олександр Полянський, Микола Довгальов','uk','ukraine_before_1917',NULL,NULL,'автрорська','Підбір акордів: UMW','Вступ: F C C7 Dm Dm7 E7 Am
Am
Як їхали із Пиляви
Козаки додому,
Захотіли розвіяти
Войовничу втому.
Зупинились, поклонились,
Та й зайшли до хати:
Будем в тебе, господине,
Ми козакувати.
Приспів:
F
Гей-но, гей-но, козаки,
Славні козаченьки,
Ми ще міцні, як дубки,
Цупкі, як обценьки.
Козаченьки, козаки,
Запрадавня мрія,
Ми для неньки України -
Остання надія
Остання надія.
Ой, як сіли за столами
Хлопці пишні й горді,
Упорались з казанами
У щедрій господі.
Ой, красуню-господине,
Не край наше серце,
А ще трохи принеси нам
Горілочки з перцем.
Приспів.
Іван каже: "Наливай-но!"
Василь каже: "Мало!"
Петро каже: "Ой, неси ще,
Господине, сало!"
Будем їсти, будем пити
Ще й козакувати,
Щоб нікому не кортіло
В нас порядкувати.
Приспів.
Остап каже: "Заспіваймо
Козацькую пісню!"
Тарас каже: "Гуртуймося,
Щоб не було пізно!"
Дмитро каже: "Ще воскресне
Козацькая слава!"
А Микола протестує:
"Вона й не вмирала!"
Приспів.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2210890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2210890','Як їхали із Пиляви Козаки додому','Вступ: F C C7 Dm Dm7 E7 Am
Am
Як їхали із Пиляви
Козаки додому,
Захотіли розвіяти
Войовничу втому.
Зупинились, поклонились,
Та й зайшли до хати:
Будем в тебе, господине,
Ми козакувати.
Приспів:
F
Гей-но, гей-но, козаки,
Славні козаченьки,
Ми ще міцні, як дубки,
Цупкі, як обценьки.
Козаченьки, козаки,
Запрадавня мрія,
Ми для неньки України -
Остання надія
Остання надія.
Ой, як сіли за столами
Хлопці пишні й горді,
Упорались з казанами
У щедрій господі.
Ой, красуню-господине,
Не край наше серце,
А ще трохи принеси нам
Горілочки з перцем.
Приспів.
Іван каже: "Наливай-но!"
Василь каже: "Мало!"
Петро каже: "Ой, неси ще,
Господине, сало!"
Будем їсти, будем пити
Ще й козакувати,
Щоб нікому не кортіло
В нас порядкувати.
Приспів.
Остап каже: "Заспіваймо
Козацькую пісню!"
Тарас каже: "Гуртуймося,
Щоб не було пізно!"
Дмитро каже: "Ще воскресне
Козацькая слава!"
А Микола протестує:
"Вона й не вмирала!"
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2210890_l1','pisniua_2210890','YouTube','https://www.youtube.com/watch?v=jYmSW9zDYtg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2208111';
DELETE FROM song_versions WHERE song_id = 'pisniua_2208111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2208111';
DELETE FROM songs WHERE id = 'pisniua_2208111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2208111','Колискова','(Тихо ніч спадає на поля). Музика: Руслан Грех Слова: Руслан Грех. Виконує: Руслан Грех','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Тихо ніч спадає на поля,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2209114';
DELETE FROM song_versions WHERE song_id = 'pisniua_2209114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2209114';
DELETE FROM songs WHERE id = 'pisniua_2209114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2209114','Кохана теща','Музика: Володимир Іжицький Слова: Олександр Коломієць. Виконує: Гурт "Експрес", Володимир Іжицький','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я на баяні навчуся грати
І файну пісню буду співати
Про мою долю і моє щастя,
Про те, як теща шанує зятя!

Приспів:
Кохана теща, моя єдина,
А ми з тобою - одна родина!
Кохана теща, ти - просто диво,
Завжди приносиш ти зятю пиво!

Коли приходжу бува пізненько,
Вона стрічає, як рідна ненька,
Мене від жінки охороняє
І бити зятя забороняє!

Приспів.

Раненько встане, тихенько ходить,
Поспи, мій зятю, то не зашкодить.
Наварить їсти з самого ранку,
Зять сяде їсти - налиє чарку!

Приспів.

А вчора теща сказала палко:
Мені для зятя нічо не жалко!
Пообіцяла купить квартиру
Та ще до того нову машину!

Приспів.

Кохана теща, моя ти мила,
Я - твій синочок, твоя кровина,
Любити буду, глядіти буду,
Твої старання я не забуду!

Приспів. (2)','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2209114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2209114','Кохана теща','Я на баяні навчуся грати
І файну пісню буду співати
Про мою долю і моє щастя,
Про те, як теща шанує зятя!

Приспів:
Кохана теща, моя єдина,
А ми з тобою - одна родина!
Кохана теща, ти - просто диво,
Завжди приносиш ти зятю пиво!

Коли приходжу бува пізненько,
Вона стрічає, як рідна ненька,
Мене від жінки охороняє
І бити зятя забороняє!

Приспів.

Раненько встане, тихенько ходить,
Поспи, мій зятю, то не зашкодить.
Наварить їсти з самого ранку,
Зять сяде їсти - налиє чарку!

Приспів.

А вчора теща сказала палко:
Мені для зятя нічо не жалко!
Пообіцяла купить квартиру
Та ще до того нову машину!

Приспів.

Кохана теща, моя ти мила,
Я - твій синочок, твоя кровина,
Любити буду, глядіти буду,
Твої старання я не забуду!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2211420';
DELETE FROM song_versions WHERE song_id = 'pisniua_2211420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2211420';
DELETE FROM songs WHERE id = 'pisniua_2211420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2211420','Києве мій','Музика: Тарас Ященко Слова: Тарас Ященко','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Блукав я світами,
Співав вечорами
Тобі лише, Києве мій.

Серце моє, моє кохання,
Хвилі Дніпра, хвилі надій.
Свята земля Русь-Україна
Милість Господня, Києве мій!

Святий Володимир
Хрестом благословляє
Людей твоїх, Києве мій.

Серце моє, моє кохання,      |
Хвилі Дніпра, хвилі надій.   |
Свята земля Русь-Україна     |
Милість Господня, Києве мій! | (2)','[''pisni.org.ua'', ''cat:kyyiv'', ''Пісні про Київ'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2211420'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2211420','Києве мій','Блукав я світами,
Співав вечорами
Тобі лише, Києве мій.

Серце моє, моє кохання,
Хвилі Дніпра, хвилі надій.
Свята земля Русь-Україна
Милість Господня, Києве мій!

Святий Володимир
Хрестом благословляє
Людей твоїх, Києве мій.

Серце моє, моє кохання,      |
Хвилі Дніпра, хвилі надій.   |
Свята земля Русь-Україна     |
Милість Господня, Києве мій! | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2211420_l1','pisniua_2211420','YouTube','https://www.youtube.com/watch?v=0ZlROVSnSVE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2208859';
DELETE FROM song_versions WHERE song_id = 'pisniua_2208859';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2208859';
DELETE FROM songs WHERE id = 'pisniua_2208859';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2208859','Ой, летіли журавлі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой, летіли журавлі
То великі, то малі,
Сіли вони край ріллі,        |
Заспівали трай люлі!         | (2)

А у нашому колгоспі,
Там творяться чудеса,
Посадили кукурудзу,          |
А вродила ковбаса!           | (2)

А я знаю паню Ганю,
Та велику господиню,
Вона дає тої кави,           |
Що кидає попід лави.         | (2)

Січку різав, сіно микав,
До стодоли Ганю кликав.
Ходи, Ганю, до стодоли,      |
Зароби си пачку соли.        | (2)

А наш тато добре мав,
Що корову ту продав,
Я не буду січки різав        |
І не буду годував.           | (2)

Я до лісу не поїду,
Нехай їде тато сам,
Тато з мамов спить на ліжку, |
Я на лавці лежу сам.         | (2)

Не дивуйтесь, люди добрі,
Що малий такий я виріс,
Мене мати годувала,          |
Що я з хати ледве виліз.     | (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2208859'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2208859','Ой, летіли журавлі','Ой, летіли журавлі
То великі, то малі,
Сіли вони край ріллі,        |
Заспівали трай люлі!         | (2)

А у нашому колгоспі,
Там творяться чудеса,
Посадили кукурудзу,          |
А вродила ковбаса!           | (2)

А я знаю паню Ганю,
Та велику господиню,
Вона дає тої кави,           |
Що кидає попід лави.         | (2)

Січку різав, сіно микав,
До стодоли Ганю кликав.
Ходи, Ганю, до стодоли,      |
Зароби си пачку соли.        | (2)

А наш тато добре мав,
Що корову ту продав,
Я не буду січки різав        |
І не буду годував.           | (2)

Я до лісу не поїду,
Нехай їде тато сам,
Тато з мамов спить на ліжку, |
Я на лавці лежу сам.         | (2)

Не дивуйтесь, люди добрі,
Що малий такий я виріс,
Мене мати годувала,          |
Що я з хати ледве виліз.     | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2208859_l1','pisniua_2208859','YouTube','https://www.youtube.com/watch?v=Cmfy8s_K4KA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2208859_l2','pisniua_2208859','YouTube','https://www.youtube.com/watch?v=1D9vSJMsQOg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2208199';
DELETE FROM song_versions WHERE song_id = 'pisniua_2208199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2208199';
DELETE FROM songs WHERE id = 'pisniua_2208199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2208199','Оля, чом же ми не двоє?','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Як я тебе полюбив, як я до тебе ходив,
Як я тебе обнімав, дійсно тебе цілував,
Олю моя дорога, більше ти вже не моя,
Я залишаю тобі пісню своєї журби...

Приспів:
Оля, Оля, Оля,     |
Чом же ми не двоє? |
Чуєш, Оля,         |
Чом нема любові?.. |
Чуєш, Оля,         |
Чом її нема?..     | (2)

Ти пригадаєш собі ті щасливі дні,
Течія у небі тім, щастя моє при нім,
Олю моя дорога, більше ти вже не моя,
Я залишаю тобі пісню своєї журби...

Приспів.','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2208199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2208199','Оля, чом же ми не двоє?','Як я тебе полюбив, як я до тебе ходив,
Як я тебе обнімав, дійсно тебе цілував,
Олю моя дорога, більше ти вже не моя,
Я залишаю тобі пісню своєї журби...

Приспів:
Оля, Оля, Оля,     |
Чом же ми не двоє? |
Чуєш, Оля,         |
Чом нема любові?.. |
Чуєш, Оля,         |
Чом її нема?..     | (2)

Ти пригадаєш собі ті щасливі дні,
Течія у небі тім, щастя моє при нім,
Олю моя дорога, більше ти вже не моя,
Я залишаю тобі пісню своєї журби...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2210394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2210394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2210394';
DELETE FROM songs WHERE id = 'pisniua_2210394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2210394','Рідна школо','Музика: Іван Пустовий Слова: Наталя Будзінська, Іван Пустовий','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Рідна школо, дитинства колиско,
Рік за роком спливають роки...
Чи далеко я буду, чи близько,
Завжди схочу до тебе прийти.
Ще здалека тебе упізнаю
І, тамуючи подих на мить,
Шкільні роки ясні пригадаю,
Хай під серцем тривожно щемить...

Рідна школо, вклоняюся низько
За усе, що зробила для нас!
Біля тебе сумують берізки,
Не вернути вже юності час...
Перша вчителько, ви наша мамо,
Снігу в коси вам сиплять літа...
Хай минають літа за літами,
Ви для нас незабутня й свята.

Вчителі, вчителі наші рідні,
Вам доземний пошани уклін
За серця, щиро віддані дітям
І за правду на рідній землі!
Вчителі, вчителі наші рідні,
Вам доземний пошани уклін!','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2210394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2210394','Рідна школо','Рідна школо, дитинства колиско,
Рік за роком спливають роки...
Чи далеко я буду, чи близько,
Завжди схочу до тебе прийти.
Ще здалека тебе упізнаю
І, тамуючи подих на мить,
Шкільні роки ясні пригадаю,
Хай під серцем тривожно щемить...

Рідна школо, вклоняюся низько
За усе, що зробила для нас!
Біля тебе сумують берізки,
Не вернути вже юності час...
Перша вчителько, ви наша мамо,
Снігу в коси вам сиплять літа...
Хай минають літа за літами,
Ви для нас незабутня й свята.

Вчителі, вчителі наші рідні,
Вам доземний пошани уклін
За серця, щиро віддані дітям
І за правду на рідній землі!
Вчителі, вчителі наші рідні,
Вам доземний пошани уклін!');
DELETE FROM song_links WHERE song_id = 'pisniua_2211369';
DELETE FROM song_versions WHERE song_id = 'pisniua_2211369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2211369';
DELETE FROM songs WHERE id = 'pisniua_2211369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2211369','Я тя кохам','Музика: Михайло Хома, Олег Турко Слова: Михайло Хома, Олег Турко. Виконує: DZIDZIO, Вова зі Львова','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ти подзвонила, що розлюбила
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
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2209495','Шкідлива звичка','Музика: Kofei.IN Слова: Олександр Тарасенко. Виконує: Kofei.IN','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Я позбавився шкідливих звичок,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2211414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2211414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2211414';
DELETE FROM songs WHERE id = 'pisniua_2211414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2211414','Купальська ніч','Музика: Юрій Ящук Слова: Юрій Ящук','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Крізь розлуки печалі і плачі
Ти мене за собою поклич,
Щоб знайти дивну квітку удачі
В таємничу омріяну ніч!

Приспів:
Ой, купала, ой, купала,          |
Щось верба понад водою гомонить! |
Ніч настала, ніч настала,        |
Дивоцвітними багаттями горить!   | (2)

Пропливають барвисті віночки,
Де ж ти, мавко моя лісова?..
Ніч купальська зеленим листочком
Вишиває чарівні слова.

Приспів.

Ніч таку не забутим ніколи,
Казка мрій ще насниться у снах
І шукати чар-зілля любові
Полетить в далечінь білий птах.

Приспів.

Ой, купала, ой, купала!..
Ніч настала, ніч настала...

Приспів.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2211414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2211414','Купальська ніч','Крізь розлуки печалі і плачі
Ти мене за собою поклич,
Щоб знайти дивну квітку удачі
В таємничу омріяну ніч!

Приспів:
Ой, купала, ой, купала,          |
Щось верба понад водою гомонить! |
Ніч настала, ніч настала,        |
Дивоцвітними багаттями горить!   | (2)

Пропливають барвисті віночки,
Де ж ти, мавко моя лісова?..
Ніч купальська зеленим листочком
Вишиває чарівні слова.

Приспів.

Ніч таку не забутим ніколи,
Казка мрій ще насниться у снах
І шукати чар-зілля любові
Полетить в далечінь білий птах.

Приспів.

Ой, купала, ой, купала!..
Ніч настала, ніч настала...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2207515';
DELETE FROM song_versions WHERE song_id = 'pisniua_2207515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2207515';
DELETE FROM songs WHERE id = 'pisniua_2207515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2207515','Цвила, цвила калинонька','Музика: народна Слова: Дмитро Маївський','uk','ukr_ssr_1919_1991',NULL,'1945','1. Пісні УПА / Зібр. і ред. Лавришин З. – Торонто – Львів, 1996-1997. – С. 204.','Автор пісні, провідник "Тарас" (Дмитро Маївський) навчав її членів Надрайонового проводу ОУН, з якими мав однотижневі наради осінню 1945 р.','Цвила, цвила калинонька,
Тай в''янути стала,
Ой чого ж ти, дівчинонько,
Прясти перестала?

"Пішов, пішов мій миленький
В повстанські загони..."
Не журись, моє серденько,
Він наш край боронить.

Не хилися калинонько
Вітами додолу,
Повернеться незабаром
Твій милий додому.

Хай не плаче стара мати
Дрібними сльозами,
Буде, буде перемога,
Тай за повстанцями.','[''pisni.org.ua'', ''cat:istorychni'', ''cat:povstanski'', ''Історичні пісні'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2207515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2207515','Цвила, цвила калинонька','Цвила, цвила калинонька,
Тай в''янути стала,
Ой чого ж ти, дівчинонько,
Прясти перестала?

"Пішов, пішов мій миленький
В повстанські загони..."
Не журись, моє серденько,
Він наш край боронить.

Не хилися калинонько
Вітами додолу,
Повернеться незабаром
Твій милий додому.

Хай не плаче стара мати
Дрібними сльозами,
Буде, буде перемога,
Тай за повстанцями.');
DELETE FROM song_links WHERE song_id = 'pisniua_221165';
DELETE FROM song_versions WHERE song_id = 'pisniua_221165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_221165';
DELETE FROM songs WHERE id = 'pisniua_221165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_221165','Ой ти, коте рябку','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой ти, коте рябку,
Та вимети хатку,
А ти, коте сірий,
Та вимети сіни,
А ти, котку рудю,
Та вимети грубу.

А ти, кішко, не ворчи,
Піди сміття одімчи.
А ти, волохатий,
Біжи кругом хати.
Тільки, котку, не мурчи,
Дитиночки не збуди.

А ти, коте муругий,
Прийди до нас удруге,
До нашої хати
Дитя колихати.
А ти, коте чорний,
Та сідай у човен,

Та й поїдеш на лужок,
Наламаєш квіточок
Забавляти діточок.
Поїдеш в долину
По червону калину
Забавляти дитину.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_221165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_221165','Ой ти, коте рябку','Ой ти, коте рябку,
Та вимети хатку,
А ти, коте сірий,
Та вимети сіни,
А ти, котку рудю,
Та вимети грубу.

А ти, кішко, не ворчи,
Піди сміття одімчи.
А ти, волохатий,
Біжи кругом хати.
Тільки, котку, не мурчи,
Дитиночки не збуди.

А ти, коте муругий,
Прийди до нас удруге,
До нашої хати
Дитя колихати.
А ти, коте чорний,
Та сідай у човен,

Та й поїдеш на лужок,
Наламаєш квіточок
Забавляти діточок.
Поїдеш в долину
По червону калину
Забавляти дитину.');
DELETE FROM song_links WHERE song_id = 'pisniua_2212624';
DELETE FROM song_versions WHERE song_id = 'pisniua_2212624';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2212624';
DELETE FROM songs WHERE id = 'pisniua_2212624';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2212624','По садочку ходжу','Українська народна пісня. Виконує: Володимир Самайда, Надія Боянівська','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'По садочку ходжу,
Кониченька воджу,
Через свою неньку    |
Нежонатий ходжу.     | (2)

Через свою неньку,
Через рідні сестри
Не можу кохану       |
До дому привести.    | (2)

Доле ж моя, доле,
Що маю діяти?
Тільки тебе одну     |
Буду вік кохати.     | (2)

Вийшов місяченько
З двома зірочками,
Вийшла дівчинонька   |
З двома дружечками.  | (2)

Прийшла дівчинонька,
Стала у куточку, -
Прийміть мене, мамо, |
Та й за невісточку.  | (2)

На тобі, дівчино,
Коня вороного,
Тільки відступися    |
Ти од сина мого.     | (2)

Я на Вашім коню
Ніґди не поїду,
А я з Вашим сином    |
Де схочу, та й піду. | (2)','[''pisni.org.ua'', ''cat:all-ukraine'', ''cat:romansy'', ''cat:socialno-pobutovi'', ''Загальноукраїнські пісні'', ''Романси'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2212624'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2212624','По садочку ходжу','По садочку ходжу,
Кониченька воджу,
Через свою неньку    |
Нежонатий ходжу.     | (2)

Через свою неньку,
Через рідні сестри
Не можу кохану       |
До дому привести.    | (2)

Доле ж моя, доле,
Що маю діяти?
Тільки тебе одну     |
Буду вік кохати.     | (2)

Вийшов місяченько
З двома зірочками,
Вийшла дівчинонька   |
З двома дружечками.  | (2)

Прийшла дівчинонька,
Стала у куточку, -
Прийміть мене, мамо, |
Та й за невісточку.  | (2)

На тобі, дівчино,
Коня вороного,
Тільки відступися    |
Ти од сина мого.     | (2)

Я на Вашім коню
Ніґди не поїду,
А я з Вашим сином    |
Де схочу, та й піду. | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2212624_l1','pisniua_2212624','YouTube','https://www.youtube.com/watch?v=BuiuF5QZngQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2212624_l2','pisniua_2212624','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2212920';
DELETE FROM song_versions WHERE song_id = 'pisniua_2212920';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2212920';
DELETE FROM songs WHERE id = 'pisniua_2212920';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2212920','Мати доню колихала','Українська народна пісня. Виконує: Радуниця, хор','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Мати доню колихала,
Колихаючи, співала:
"Ніч надходить, треба спати,
Коло тебе рідна мати..."

Я тебе нагодувала,
І сповила, і приспала...
Я не сплю, тобі співаю:
"Баю, баю, баю, баю..."

Геть від тебе всяке лихо,
Хай круг тебе буде тихо...
Я не сплю, тобі співаю:
"Спи, дитино, баю, баю..."','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2212920'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2212920','Мати доню колихала','Мати доню колихала,
Колихаючи, співала:
"Ніч надходить, треба спати,
Коло тебе рідна мати..."

Я тебе нагодувала,
І сповила, і приспала...
Я не сплю, тобі співаю:
"Баю, баю, баю, баю..."

Геть від тебе всяке лихо,
Хай круг тебе буде тихо...
Я не сплю, тобі співаю:
"Спи, дитино, баю, баю..."');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2212920_l1','pisniua_2212920','YouTube','https://www.youtube.com/watch?v=4HEnYHbFGkI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2212920_l2','pisniua_2212920','YouTube','https://www.youtube.com/watch?v=SZgrG2-douI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_221379';
DELETE FROM song_versions WHERE song_id = 'pisniua_221379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_221379';
DELETE FROM songs WHERE id = 'pisniua_221379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_221379','Купала на Йвана','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Ой на Івана та й на Купайла...- Львів: Студентське братство ЛНУ ім.І.Франка, 2002',NULL,'Купала на Йвана. (2)
На Купала нічка мала,
на калину роса впала
Купала на Йвана. (2)

Купала на Йвана. (2)
Ішли дівки по ягідки,
молодиці по суниці
Купала на Йвана. (2)

Купала на Йвана. (2)
Усі дівки назбирали,
молода Маринка заблукала
Купала на Йвана. (2)

Купала на Йвана. (2)
Гайда, дівки, до лісочку,
чи не знайдем Мариночку
Купала на Йвана. (2)    Основна мелодія','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_221379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_221379','Купала на Йвана','Купала на Йвана. (2)
На Купала нічка мала,
на калину роса впала
Купала на Йвана. (2)

Купала на Йвана. (2)
Ішли дівки по ягідки,
молодиці по суниці
Купала на Йвана. (2)

Купала на Йвана. (2)
Усі дівки назбирали,
молода Маринка заблукала
Купала на Йвана. (2)

Купала на Йвана. (2)
Гайда, дівки, до лісочку,
чи не знайдем Мариночку
Купала на Йвана. (2)    Основна мелодія');
DELETE FROM song_links WHERE song_id = 'pisniua_2213091';
DELETE FROM song_versions WHERE song_id = 'pisniua_2213091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2213091';
DELETE FROM songs WHERE id = 'pisniua_2213091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2213091','Киця-кицюня','Музика: Ігор Білик Слова: Ігор Білик. Виконує: Єва Рацин','uk','ukraine_1991',NULL,NULL,NULL,NULL,'У маленькій, у хатині
На тепленькій кожушині
Хтось дрімає, хтось муркоче,
Спозаранку спатки хоче.
Увесь вечір, цілу нічку
Не зімкнула вона вічки,
Все шукала хитру мишку,
Натрудилась вона трішки.

Приспів:
Киць-киць-киць-киця, киця-кицюня,
Мур-мур-мур-мурка, мурка-манюня,
Киць-киць-киць-киця, киця-кицюня,
Мур-мур-мур-мурка, мурка-манюня.

До обіду, до смачного
Вона є завжди готова,
Ніжно лапка личко миє
Ще й зарядку зробить шия,
Киця любить, киця мріє,
Що матуся їй налиє
Білу-білу і густеньку
Сметаночку смачненьку.

Приспів.

День проходить, день минає,
Киця хвостиком махає
Вона знов чекає нічку,
Щоб спіймати хитру мишку.

Приспів','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2213091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2213091','Киця-кицюня','У маленькій, у хатині
На тепленькій кожушині
Хтось дрімає, хтось муркоче,
Спозаранку спатки хоче.
Увесь вечір, цілу нічку
Не зімкнула вона вічки,
Все шукала хитру мишку,
Натрудилась вона трішки.

Приспів:
Киць-киць-киць-киця, киця-кицюня,
Мур-мур-мур-мурка, мурка-манюня,
Киць-киць-киць-киця, киця-кицюня,
Мур-мур-мур-мурка, мурка-манюня.

До обіду, до смачного
Вона є завжди готова,
Ніжно лапка личко миє
Ще й зарядку зробить шия,
Киця любить, киця мріє,
Що матуся їй налиє
Білу-білу і густеньку
Сметаночку смачненьку.

Приспів.

День проходить, день минає,
Киця хвостиком махає
Вона знов чекає нічку,
Щоб спіймати хитру мишку.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2213091_l1','pisniua_2213091','YouTube','https://www.youtube.com/watch?v=D94_MFShzYs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2213091_l2','pisniua_2213091','YouTube','https://www.youtube.com/watch?v=iu0yfBV0fpk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2213091_l3','pisniua_2213091','YouTube','https://www.youtube.com/watch?v=znLHOOpiEwE','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2213091_l4','pisniua_2213091','YouTube','https://www.youtube.com/watch?v=bV2vIKWAS0c','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2213091_l5','pisniua_2213091','YouTube','https://www.youtube.com/watch?v=IZfqmowJCHE','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2213091_l6','pisniua_2213091','YouTube','https://www.youtube.com/watch?v=uq453-TDVWI','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_2214665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2214665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2214665';
DELETE FROM songs WHERE id = 'pisniua_2214665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2214665','Наша мама','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://www.uaua.info',NULL,'Колисанку вечорами
Нам співали наші мами,
А тепер пора і нам
Заспівать для наших мам!

Як зростем великі,
Мамі станем зміною.
Гордимося мамою,
Мамою єдиною!

Десь далеко за віконцем
Знову спати ляже сонце,
Ти вже спиш цю ніч ясну,
Тільки мамі не до сну.

Як зростемо самі ми,
Станем турбуватися про маму,
Ми співаєм про них,
Мама єдиних дорогих!','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2214665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2214665','Наша мама','Колисанку вечорами
Нам співали наші мами,
А тепер пора і нам
Заспівать для наших мам!

Як зростем великі,
Мамі станем зміною.
Гордимося мамою,
Мамою єдиною!

Десь далеко за віконцем
Знову спати ляже сонце,
Ти вже спиш цю ніч ясну,
Тільки мамі не до сну.

Як зростемо самі ми,
Станем турбуватися про маму,
Ми співаєм про них,
Мама єдиних дорогих!');
DELETE FROM song_links WHERE song_id = 'pisniua_221394';
DELETE FROM song_versions WHERE song_id = 'pisniua_221394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_221394';
DELETE FROM songs WHERE id = 'pisniua_221394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_221394','Ой на Івана, на Купайла','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Ой на Івана та й на Купайла...- Львів: Студентське братство ЛНУ ім.І.Франка, 2002',NULL,'Ой на Івана, на Купайла
вийшла Лада так, як панна.

На ню парубки заглядаються,
єї займати стидаються.

Ой нема чому дивувати,
не старалася на ню мати.

Єї Нестерко постарався,
єї сватати обіцявся.    Основна мелодія','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_221394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_221394','Ой на Івана, на Купайла','Ой на Івана, на Купайла
вийшла Лада так, як панна.

На ню парубки заглядаються,
єї займати стидаються.

Ой нема чому дивувати,
не старалася на ню мати.

Єї Нестерко постарався,
єї сватати обіцявся.    Основна мелодія');
DELETE FROM song_links WHERE song_id = 'pisniua_221591';
DELETE FROM song_versions WHERE song_id = 'pisniua_221591';
DELETE FROM songs_fts WHERE song_id = 'pisniua_221591';
DELETE FROM songs WHERE id = 'pisniua_221591';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_221591','Їжачок','Музика: Фліт Слова: Фліт. Виконує: Фліт','uk','ukraine_before_1917',NULL,NULL,'http://www.flit.com.ua',NULL,'Наша розповідь про їжачка
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
DELETE FROM song_links WHERE song_id = 'pisniua_2213697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2213697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2213697';
DELETE FROM songs WHERE id = 'pisniua_2213697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2213697','Пісенька про Бабусю','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'В нас сім''я маленька, дружня, веселенька,
Бо керує нами справжня голова.
Хто про всіх нас дбає, всіх оберігає
І для всіх знаходить теплії слова!

Приспів:
Бабця, бабуся, ти, моя рідненька,
Бабця, бабуся, моя дорога,
Бабця, бабуся, ти для всіх нас - ненька,
Зігріва серденько доброта твоя!

Варенички з сиром дідові готує,
Найгарнішу блузку мамі вишиває,
Наукову працю татові друкує,
А мені гарненьку пісеньку співає.

Приспів.

І такі бабусі є у кожнім домі,
То ж давайте їх до купочки зберем,
І влаштуєм бабцям найгарніше свято,
Бо без них, повірте, всі ми пропадем!

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2213697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2213697','Пісенька про Бабусю','В нас сім''я маленька, дружня, веселенька,
Бо керує нами справжня голова.
Хто про всіх нас дбає, всіх оберігає
І для всіх знаходить теплії слова!

Приспів:
Бабця, бабуся, ти, моя рідненька,
Бабця, бабуся, моя дорога,
Бабця, бабуся, ти для всіх нас - ненька,
Зігріва серденько доброта твоя!

Варенички з сиром дідові готує,
Найгарнішу блузку мамі вишиває,
Наукову працю татові друкує,
А мені гарненьку пісеньку співає.

Приспів.

І такі бабусі є у кожнім домі,
То ж давайте їх до купочки зберем,
І влаштуєм бабцям найгарніше свято,
Бо без них, повірте, всі ми пропадем!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2213697_l1','pisniua_2213697','YouTube','https://www.youtube.com/watch?v=MyY6h0xIBPM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2213394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2213394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2213394';
DELETE FROM songs WHERE id = 'pisniua_2213394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2213394','Марш Червоної Калини','Музика: Screamers Слова: Screamers. Виконує: Screamers','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'По континентах
Простеливсь наш шлях,
Гойдали нас
І ріки й океани,
Ми гордо йшли        |
По чужини полях,     |
Бо нас манило світло |
Крізь тумани!        | (2)

Приспів:
Від Кордельєрів
До ясних Карпат
Бадьоро наша пісня
З вітром лине,
А помах рук          |
Та усмішки дівчат -  |
Для лицарів          |
"Червоної калини"!   | (2)

Ми йшли на захід,
Щоб вернуть на схід,
Хай доля кида
Труднощі й негоди,
Золотоверхим         |
Продудить наш хід    |
І заблищить святий   |
Вогонь свободи!      | (2)

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:plastovi'', ''Гимни та марші'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2213394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2213394','Марш Червоної Калини','По континентах
Простеливсь наш шлях,
Гойдали нас
І ріки й океани,
Ми гордо йшли        |
По чужини полях,     |
Бо нас манило світло |
Крізь тумани!        | (2)

Приспів:
Від Кордельєрів
До ясних Карпат
Бадьоро наша пісня
З вітром лине,
А помах рук          |
Та усмішки дівчат -  |
Для лицарів          |
"Червоної калини"!   | (2)

Ми йшли на захід,
Щоб вернуть на схід,
Хай доля кида
Труднощі й негоди,
Золотоверхим         |
Продудить наш хід    |
І заблищить святий   |
Вогонь свободи!      | (2)

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2215158';
DELETE FROM song_versions WHERE song_id = 'pisniua_2215158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2215158';
DELETE FROM songs WHERE id = 'pisniua_2215158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2215158','Сексуальна','Музика: Вова зі Львова Слова: Вова зі Львова, Mirami. Виконує: Вова зі Львова, Mirami','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'О-у, сексуальна настільки,
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
DELETE FROM song_links WHERE song_id = 'pisniua_2217859';
DELETE FROM song_versions WHERE song_id = 'pisniua_2217859';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2217859';
DELETE FROM songs WHERE id = 'pisniua_2217859';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2217859','Однокласники','Музика: Василь Григорук Слова: Нестор Мартинець. Виконує: Юрій Яремчук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В рідну школу навідались знову,
Де було все знайоме до болю,
Про минуле ведемо розмову,
Наше спільне і кожного долю.
Про роки, коли разом навчались,
Перші зустрічі, перше кохання,
Однією сім''єю в ній стали,
Відчували тут радість, страждання!

Приспів:
Однокласники, ви, однокласники, |
Ви немов є брати мої й сестри!  |
Миті зустрічей наших прекрасних |
Повертають у юності весни!      | (2)

Ми роз''їдемось знову вже завтра
До дітей і до рідної хати,
Але думаю все таки варто
На наступну нам зустріч чекати!
Приїжджаймо до рідної школи,
Вона буде чекати, як мати,
Не зустрінемось так вже ніколи,
Нас все менше буде приїжджати.

Приспів. (2)

В рідну школу навідались знову,
Де було все знайоме до болю,
Про минуле ведемо розмову,
Наше спільне і кожного долю,
Бо роки, як ріка, пропливають,
Їх не можна й на мить зупинити,
Вони нас назавжди забирають,
Зустрічаймось, поки будем жити!

Приспів','[''pisni.org.ua'', ''cat:druzhba'', ''cat:nostalgia'', ''cat:shkilni'', ''Пісні про дружбу'', ''Пісні з ностальгічними мотивами'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2217859'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2217859','Однокласники','В рідну школу навідались знову,
Де було все знайоме до болю,
Про минуле ведемо розмову,
Наше спільне і кожного долю.
Про роки, коли разом навчались,
Перші зустрічі, перше кохання,
Однією сім''єю в ній стали,
Відчували тут радість, страждання!

Приспів:
Однокласники, ви, однокласники, |
Ви немов є брати мої й сестри!  |
Миті зустрічей наших прекрасних |
Повертають у юності весни!      | (2)

Ми роз''їдемось знову вже завтра
До дітей і до рідної хати,
Але думаю все таки варто
На наступну нам зустріч чекати!
Приїжджаймо до рідної школи,
Вона буде чекати, як мати,
Не зустрінемось так вже ніколи,
Нас все менше буде приїжджати.

Приспів. (2)

В рідну школу навідались знову,
Де було все знайоме до болю,
Про минуле ведемо розмову,
Наше спільне і кожного долю,
Бо роки, як ріка, пропливають,
Їх не можна й на мить зупинити,
Вони нас назавжди забирають,
Зустрічаймось, поки будем жити!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2219653';
DELETE FROM song_versions WHERE song_id = 'pisniua_2219653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2219653';
DELETE FROM songs WHERE id = 'pisniua_2219653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2219653','А роки летять','Музика: Микола Янченко Слова: Микола Янченко. Виконує: Микола Янченко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вже за обрій сонце сідає,
Відпливає у минуле день,
При долині жде мене чекає
Чисте джерело моїх пісень.
Пригадався знов вишневий сад,
Рідна хата, близька і далека,
Де мене багато літ назад
Залишив моїм батькам лелека.

Приспів:
А роки летять,наче коні воронії,
А роки біжать і нема зупину їм.
Їх уже назад повернути не зумію,
І дитинства сад,
І весну батькам своїм...

Пригорнутися до маминого серця,
Щоб не знати у житті біди
З рідних рук напитися, як з відерця,
Чистої криничної води.
Поверніться ,юні літа,
Залічіть в душі болючі рани,
Понесіть в квітучії жита
До мого дитинства, до мами!

А роки летять,наче коні воронії,
А роки біжать і нема зупину їм.
Їх уже назад повернути не зумію
І дитинства сад,
І весну...

Приспів.','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:pro-batkiv'', ''Пісні з ностальгічними мотивами'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2219653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2219653','А роки летять','Вже за обрій сонце сідає,
Відпливає у минуле день,
При долині жде мене чекає
Чисте джерело моїх пісень.
Пригадався знов вишневий сад,
Рідна хата, близька і далека,
Де мене багато літ назад
Залишив моїм батькам лелека.

Приспів:
А роки летять,наче коні воронії,
А роки біжать і нема зупину їм.
Їх уже назад повернути не зумію,
І дитинства сад,
І весну батькам своїм...

Пригорнутися до маминого серця,
Щоб не знати у житті біди
З рідних рук напитися, як з відерця,
Чистої криничної води.
Поверніться ,юні літа,
Залічіть в душі болючі рани,
Понесіть в квітучії жита
До мого дитинства, до мами!

А роки летять,наче коні воронії,
А роки біжать і нема зупину їм.
Їх уже назад повернути не зумію
І дитинства сад,
І весну...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2219653_l1','pisniua_2219653','YouTube','https://www.youtube.com/watch?v=C8yTL4PkTPg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2218495';
DELETE FROM song_versions WHERE song_id = 'pisniua_2218495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2218495';
DELETE FROM songs WHERE id = 'pisniua_2218495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2218495','І в Вас, і в нас хай буде гаразд!','Музика: Григорій Верьовка Слова: Валентин Лагода','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Скільки б не співали,
А кінчати час,
Кращі побажання
Ви прийміть від нас.

Приспів:
І в Вас, і в нас |
Хай буде гаразд! |
Що б Ви, і ми    |
Щасливі були!    | (2)

Хай у всіх Вас буде -
В місті і в селі -
Радісно на серці,
Повно на столі!

Приспів.

Хай біда і горе
Обмина ваш дім,
Доброго здоров''я
Зичим Вам усім!

Приспів.

Хай про Вас почуєм
Ми хороші вісті:
Що у Вас аж троє
Діточок в колисці!

Приспів.

А ще вам бажаєм -
Вічно молодіть,
До сторіччя жовтня
З внуками дожить!

Приспів.

Прощавайте, друзі,
Вам низький поклін,
Щастя Вам бажаєм
Всі ми, як один!

Приспів.    Фонограма-мінус (mp3, 128 kbps)','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2218495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2218495','І в Вас, і в нас хай буде гаразд!','Скільки б не співали,
А кінчати час,
Кращі побажання
Ви прийміть від нас.

Приспів:
І в Вас, і в нас |
Хай буде гаразд! |
Що б Ви, і ми    |
Щасливі були!    | (2)

Хай у всіх Вас буде -
В місті і в селі -
Радісно на серці,
Повно на столі!

Приспів.

Хай біда і горе
Обмина ваш дім,
Доброго здоров''я
Зичим Вам усім!

Приспів.

Хай про Вас почуєм
Ми хороші вісті:
Що у Вас аж троє
Діточок в колисці!

Приспів.

А ще вам бажаєм -
Вічно молодіть,
До сторіччя жовтня
З внуками дожить!

Приспів.

Прощавайте, друзі,
Вам низький поклін,
Щастя Вам бажаєм
Всі ми, як один!

Приспів.    Фонограма-мінус (mp3, 128 kbps)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2218495_l1','pisniua_2218495','YouTube','https://www.youtube.com/watch?v=VeBxcoNDRsQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2218495_l2','pisniua_2218495','YouTube','https://www.youtube.com/watch?v=xjscErA87mw','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2218495_l3','pisniua_2218495','YouTube','https://www.youtube.com/watch?v=b3o4fMuM_HU','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2218495_l4','pisniua_2218495','https://music.dzherela.com.ua','https://music.dzherela.com.ua','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_2216818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2216818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2216818';
DELETE FROM songs WHERE id = 'pisniua_2216818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2216818','Над Бугом рікою','Музика: Олександр Клименко Слова: Олександр Клименко. Виконує: Олександр Клименко','uk','ukraine_1991',NULL,NULL,'http://ocheretniy.blogspot.com/2011/04/klimenko.html',NULL,'Тече бистра річка - прозора водичка,
Де зілля шумить з осокою,
Над тою рікою, мов брат із сестрою,
На світ ми родились з тобою.
Над тою рікою
На світ ми родились з тобою...

Над тою рікою росли ми з тобою,
Над нею стрічали світанки
І темної ночі в гаю воркотали,
Мов два голубочки до ранку,
І темної ночі,
Мов два голубочки до ранку...

Від раннього ранку до темної ночі
Шукав я червону калину.
Любив карі очі і чорнії брови,
Кохав молодую дівчину,
Любив карі очі,
Кохав молодую дівчину...

Кохав я дівчину, а потім покинув,
Поїхав в далеку чужину,
За синіє море, за чорнії гори,
Залишив свою Україну,
За синіє море,
Залишив свою Україну...

Пливи, пливи, човен, пливи за рікою,
Неси аж до синього моря,
Вертайся, козаче, до свої дівчини,
Бо висохнуть очі від горя,
Вертайся, козаче,
Бо висохнуть очі від горя...

Над Бугом рікою росли ми з тобою,
Над Бугом будем помирати,
Бо милая ненька - цвітуча Вкраїна,
То наша є рідная мати!','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2216818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2216818','Над Бугом рікою','Тече бистра річка - прозора водичка,
Де зілля шумить з осокою,
Над тою рікою, мов брат із сестрою,
На світ ми родились з тобою.
Над тою рікою
На світ ми родились з тобою...

Над тою рікою росли ми з тобою,
Над нею стрічали світанки
І темної ночі в гаю воркотали,
Мов два голубочки до ранку,
І темної ночі,
Мов два голубочки до ранку...

Від раннього ранку до темної ночі
Шукав я червону калину.
Любив карі очі і чорнії брови,
Кохав молодую дівчину,
Любив карі очі,
Кохав молодую дівчину...

Кохав я дівчину, а потім покинув,
Поїхав в далеку чужину,
За синіє море, за чорнії гори,
Залишив свою Україну,
За синіє море,
Залишив свою Україну...

Пливи, пливи, човен, пливи за рікою,
Неси аж до синього моря,
Вертайся, козаче, до свої дівчини,
Бо висохнуть очі від горя,
Вертайся, козаче,
Бо висохнуть очі від горя...

Над Бугом рікою росли ми з тобою,
Над Бугом будем помирати,
Бо милая ненька - цвітуча Вкраїна,
То наша є рідная мати!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2216818_l1','pisniua_2216818','YouTube','https://www.youtube.com/watch?v=jBBwKZwU-SQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2216818_l2','pisniua_2216818','YouTube','https://www.youtube.com/watch?v=lRXxROAegxs','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2215192';
DELETE FROM song_versions WHERE song_id = 'pisniua_2215192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2215192';
DELETE FROM songs WHERE id = 'pisniua_2215192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2215192','Тож прости мені, мій брате!','Музика: Євген Заставний Слова: Т. Василько','uk','ukraine_1991',NULL,NULL,'Авторське подання: Т. Василько, Є. Заставний. Танцює дощ. Львів: Ліга-Прес, 2008. - 56 с.',NULL,'Біль - затаєний в тобі
Чорною смолою,
Біль - затаєний в мені
Раною живою.

Приспів:
Тож прости мені, мій брате,
Я усе тобі прощаю,
Полюби лиш Україну
Так, як я її кохаю!
Так, як я її кохаю!

Ти стріляв і я стріляв -
Кулі не на вітер,
В сибіри мене ти гнав,
Я втікав ізвідти.

Приспів.

Не змивають кров дощі,
З тим нам треба жити,
Але світло у душі
Мусим засвітити!

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2215192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2215192','Тож прости мені, мій брате!','Біль - затаєний в тобі
Чорною смолою,
Біль - затаєний в мені
Раною живою.

Приспів:
Тож прости мені, мій брате,
Я усе тобі прощаю,
Полюби лиш Україну
Так, як я її кохаю!
Так, як я її кохаю!

Ти стріляв і я стріляв -
Кулі не на вітер,
В сибіри мене ти гнав,
Я втікав ізвідти.

Приспів.

Не змивають кров дощі,
З тим нам треба жити,
Але світло у душі
Мусим засвітити!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_221910';
DELETE FROM song_versions WHERE song_id = 'pisniua_221910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_221910';
DELETE FROM songs WHERE id = 'pisniua_221910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_221910','Новий день над Україною','(Це моя Україна день новий зустрічає). Музика: Богдан Кучер Слова: Степан Галябарда. Виконує: Василь Зінкевич','uk','ukraine_1991',NULL,NULL,'аудіо-альбом "Яворина. Пісні Степана Галябарди"','Текст записано на слух за аудіо-джерелом. * Тут у 1-му куплеті є послідовність акордів "G E7", а у всіх інших натомість - "G Am". Підбір акордів: bohdanko@epost.com.ua','Мотив 1.
Знову сонце ласкаве промінь свій посилає
і степам, і долинам, і потокам гірським.
Це моя Україна   день новий зустрічає -
E                 Am G E7 (G Am)*
моя лагідна мати усміхаєтмся всім.

Мотив 2.
Там, де Січ Запорізька   духом вольності віє
і козацькії чайки в   Чорне море пливуть.
А на київських кручах сяє злото Софії,
і на гору Чернечу нас дороги ведуть.

Мотив 1.
Світлу сонця радіє Буковина й Поділля.
І над краєм Донецьким в небі жайвір співа.
А з карпатського літа лине голос трембіти.
Все то є Україна - наша пісня жива.

Мотив 2.
Це моя Україна день новий зустрічає!
Величава княгиня усміхається всім.
Слобожини вітають запашним короваєм.
Закарпаття частує хмелем чистих медів.

Мотив 1.
А у древньому Львові пані всі гонорові.
Полтавчанок, киянок як побачиш - умреш!
Синьоокі красуні - молоді волинянки...
так подивляться в душу - очі не відведеш.

Мотив 1.
А як засвіту встануть молоді козаченьки -
вміть честь боронити і любити дівчат.
І покличе Полісся на купальське весіля...
І принесут лелеки молодих козачат...

Мотив 3.
Бо козацькому роду   та й нема переводу.
І у вічному небі   наші зорі горять.

Програш:  E7 Am (x2)

Мотив 2.
Це моя Україна день новий зустрічає!
Величава княгиня - погляд ясних очей.
І гостинно, і радо, щиро вас привітає...  | (x2)
І запросить до хати, як поважних гостей.  |','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_221910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_221910','Новий день над Україною','Мотив 1.
Знову сонце ласкаве промінь свій посилає
і степам, і долинам, і потокам гірським.
Це моя Україна   день новий зустрічає -
E                 Am G E7 (G Am)*
моя лагідна мати усміхаєтмся всім.

Мотив 2.
Там, де Січ Запорізька   духом вольності віє
і козацькії чайки в   Чорне море пливуть.
А на київських кручах сяє злото Софії,
і на гору Чернечу нас дороги ведуть.

Мотив 1.
Світлу сонця радіє Буковина й Поділля.
І над краєм Донецьким в небі жайвір співа.
А з карпатського літа лине голос трембіти.
Все то є Україна - наша пісня жива.

Мотив 2.
Це моя Україна день новий зустрічає!
Величава княгиня усміхається всім.
Слобожини вітають запашним короваєм.
Закарпаття частує хмелем чистих медів.

Мотив 1.
А у древньому Львові пані всі гонорові.
Полтавчанок, киянок як побачиш - умреш!
Синьоокі красуні - молоді волинянки...
так подивляться в душу - очі не відведеш.

Мотив 1.
А як засвіту встануть молоді козаченьки -
вміть честь боронити і любити дівчат.
І покличе Полісся на купальське весіля...
І принесут лелеки молодих козачат...

Мотив 3.
Бо козацькому роду   та й нема переводу.
І у вічному небі   наші зорі горять.

Програш:  E7 Am (x2)

Мотив 2.
Це моя Україна день новий зустрічає!
Величава княгиня - погляд ясних очей.
І гостинно, і радо, щиро вас привітає...  | (x2)
І запросить до хати, як поважних гостей.  |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_221910_l1','pisniua_221910','YouTube','https://www.youtube.com/watch?v=6y2L2g_crYs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_221910_l2','pisniua_221910','YouTube','https://www.youtube.com/watch?v=nvlVg6jQp9E','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2219212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2219212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2219212';
DELETE FROM songs WHERE id = 'pisniua_2219212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2219212','Наливай, кума!','Музика: Микола Янченко Слова: Микола Янченко. Виконує: Микола Янченко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Куме, знов нечиста сила
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
DELETE FROM song_links WHERE song_id = 'pisniua_2219910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2219910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2219910';
DELETE FROM songs WHERE id = 'pisniua_2219910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2219910','Шлягерочок','Музика: Мар''ян Гаденко Слова: Зоя Кучерява','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Буває так, на жаль, але буває,
Одна невдача другу доганяє,
І ти не знаєш, що ж тепер робити,
Буває так, що тяжко в світі жити.
Та після бурі сонечко засяє,
І ти не вір, що виходу немає,
Як чорна смуга - значить біла далі,
Мов клавіші в концертному роялі.

Приспів:
Крапає дощик, трава зелена,     |
Тобі печально, приходь до мене! |
Розмова щира, чашечка чаю,      |
А де то щастя? - Ніхто не знає. | (2)

На самоті і пташка не співає,
І тільки в зграї весело літає,
То ж не сиди у горі самотою,
Бо хто ж тобі той біль тоді загоїть?..
Як вірні друзі поруч із тобою,
Сміливо йди боротися з журбою,
Всі негаразди дружно переможем,
І нам цей шлягерочок допоможе.

Приспів. (2)','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2219910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2219910','Шлягерочок','Буває так, на жаль, але буває,
Одна невдача другу доганяє,
І ти не знаєш, що ж тепер робити,
Буває так, що тяжко в світі жити.
Та після бурі сонечко засяє,
І ти не вір, що виходу немає,
Як чорна смуга - значить біла далі,
Мов клавіші в концертному роялі.

Приспів:
Крапає дощик, трава зелена,     |
Тобі печально, приходь до мене! |
Розмова щира, чашечка чаю,      |
А де то щастя? - Ніхто не знає. | (2)

На самоті і пташка не співає,
І тільки в зграї весело літає,
То ж не сиди у горі самотою,
Бо хто ж тобі той біль тоді загоїть?..
Як вірні друзі поруч із тобою,
Сміливо йди боротися з журбою,
Всі негаразди дружно переможем,
І нам цей шлягерочок допоможе.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_221952';
DELETE FROM song_versions WHERE song_id = 'pisniua_221952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_221952';
DELETE FROM songs WHERE id = 'pisniua_221952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_221952','8-ий колір *','Музика: Мотор''ролла Слова: Мотор''ролла. Виконує: Мотор''ролла','uk','ukraine_before_1917',NULL,NULL,NULL,'Підбір акордів: Чорновіл С. О.','я йшов по воді і назад озирався
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
DELETE FROM song_links WHERE song_id = 'pisniua_2214369';
DELETE FROM song_versions WHERE song_id = 'pisniua_2214369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2214369';
DELETE FROM songs WHERE id = 'pisniua_2214369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2214369','Літо, прощай!','Музика: Зоя Красуляк Слова: Зоя Красуляк. Виконує: Віка Свиридюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Скоро дощ заплаче гірко-гірко,
Засумує осінь туманами
По духмяних запашних покосах,
Прийшло літо попрощатись з нами...

Приспів:
А на дворі вітер, вітер, вітер    |
Обриває листя, лине через гай.    |
А на дворі вітер розсипає квіти,  |
Будь здорове, літо, літо, прощай! | (2)

Щось сміються понад вечір зорі,
Соловейко пісню ще співає
Та сумують вже хмарки прозорі,
Бо у вирій літо відлітає...

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2214369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2214369','Літо, прощай!','Скоро дощ заплаче гірко-гірко,
Засумує осінь туманами
По духмяних запашних покосах,
Прийшло літо попрощатись з нами...

Приспів:
А на дворі вітер, вітер, вітер    |
Обриває листя, лине через гай.    |
А на дворі вітер розсипає квіти,  |
Будь здорове, літо, літо, прощай! | (2)

Щось сміються понад вечір зорі,
Соловейко пісню ще співає
Та сумують вже хмарки прозорі,
Бо у вирій літо відлітає...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2214369_l1','pisniua_2214369','YouTube','https://www.youtube.com/watch?v=SKvBbhV1-bI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2218919';
DELETE FROM song_versions WHERE song_id = 'pisniua_2218919';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2218919';
DELETE FROM songs WHERE id = 'pisniua_2218919';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2218919','Як швидко лине невблаганний час','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Як швидко лине невблаганний час
І сумно, що розлуки час прийшов,
Господня милість поєднала нас
І хочеться зустрітись з вами знов.

Приспів:
Господь ще подарує зустріч нам     |
Якщо не на землі, то в небесах     |
Зустрінемося біля ніг Христа,      |
Де спокій, мир і радість у серцях! | (2)

Подяка до небес нехай летить
За зустріч цю, що Бог нам дарував,
За те, що Він був з нами кожну мить
І кожного із нас оберігав!

Приспів.

Як добре бути, друзі, нам разом,
Молитися і славити Отця,
За час оцей, проведений з Христом,
Подяка переповнює серця.

Приспів.

Нехай Господь в житті вас проведе,
Від зла й неправди в світі захистить,
І в небо, в Отчий дім, нехай введе,
Де будемо з Ісусом вічно жить!

Приспів.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2218919'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2218919','Як швидко лине невблаганний час','Як швидко лине невблаганний час
І сумно, що розлуки час прийшов,
Господня милість поєднала нас
І хочеться зустрітись з вами знов.

Приспів:
Господь ще подарує зустріч нам     |
Якщо не на землі, то в небесах     |
Зустрінемося біля ніг Христа,      |
Де спокій, мир і радість у серцях! | (2)

Подяка до небес нехай летить
За зустріч цю, що Бог нам дарував,
За те, що Він був з нами кожну мить
І кожного із нас оберігав!

Приспів.

Як добре бути, друзі, нам разом,
Молитися і славити Отця,
За час оцей, проведений з Христом,
Подяка переповнює серця.

Приспів.

Нехай Господь в житті вас проведе,
Від зла й неправди в світі захистить,
І в небо, в Отчий дім, нехай введе,
Де будемо з Ісусом вічно жить!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2220717';
DELETE FROM song_versions WHERE song_id = 'pisniua_2220717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2220717';
DELETE FROM songs WHERE id = 'pisniua_2220717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2220717','Любисток','Музика: Анатолій Пашкевич Слова: Дмитро Луценко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Край вікна любисток пророста весною,
Тягнеться до сонця молоде стебло,
Зароста стежина рутою-травою,
Де моє кохання вперше розцвіло.

Приспів:
І чого журитись, і чого зітхати,
Молодість не верне чорнобриву знов.
Ожива любисток в зорях коло хати,
Та не оживає втрачена любов...

Край вікна любисток проростає в росах,
Світиться кришталем, як мої літа.
Все, про що гадалось, так і не забулось,
Дорога стежина в серці зароста...

Приспів.    мінус','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2220717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2220717','Любисток','Край вікна любисток пророста весною,
Тягнеться до сонця молоде стебло,
Зароста стежина рутою-травою,
Де моє кохання вперше розцвіло.

Приспів:
І чого журитись, і чого зітхати,
Молодість не верне чорнобриву знов.
Ожива любисток в зорях коло хати,
Та не оживає втрачена любов...

Край вікна любисток проростає в росах,
Світиться кришталем, як мої літа.
Все, про що гадалось, так і не забулось,
Дорога стежина в серці зароста...

Приспів.    мінус');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2220717_l1','pisniua_2220717','YouTube','https://www.youtube.com/watch?v=bttqUrJx_qM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2220717_l2','pisniua_2220717','YouTube','https://www.youtube.com/watch?v=mdQf2Nkl0X0','video',NULL,2);
