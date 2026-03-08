DELETE FROM song_links WHERE song_id = 'pisniua_2391899';
DELETE FROM song_versions WHERE song_id = 'pisniua_2391899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2391899';
DELETE FROM songs WHERE id = 'pisniua_2391899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2391899','На Різдво!','Музика: Ольга Андрощук Слова: Ольга Андрощук','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Лариса Кайдрис.','На Різдво забудь свої печалі,
Cум залиш і розпачу біль.
Божа ласка людство обіймає -
День настав святий!
Переповняють радості почуття -
Народилося Дитя,
Народилося святе Дитя!

Приспів:
День святковий нині - Різдво прийшло!
У це свято Бог дав Сина свойого,
В день різдвяний серце своє приготуй,
Божу милість, Божу ласку відчуй!
Божу милість, Божу ласку відчуй!

На Різдво збираються довкола
I радіють вістці новій,
Веселяться люди, бо це знову
День настав святий!
Переповняють радості почуття -
Народилося Дитя,
Народилось святе Дитя!

Приспів.

Для тебе й для мене
Христос на землю зійшов,
Залишивши небо,
Він на хрест пішов,
Та, смерть подолавши,
Піднявся вище небес,
Він той, хто був і є,
Бо він воскрес!

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2391899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2391899','На Різдво!','На Різдво забудь свої печалі,
Cум залиш і розпачу біль.
Божа ласка людство обіймає -
День настав святий!
Переповняють радості почуття -
Народилося Дитя,
Народилося святе Дитя!

Приспів:
День святковий нині - Різдво прийшло!
У це свято Бог дав Сина свойого,
В день різдвяний серце своє приготуй,
Божу милість, Божу ласку відчуй!
Божу милість, Божу ласку відчуй!

На Різдво збираються довкола
I радіють вістці новій,
Веселяться люди, бо це знову
День настав святий!
Переповняють радості почуття -
Народилося Дитя,
Народилось святе Дитя!

Приспів.

Для тебе й для мене
Христос на землю зійшов,
Залишивши небо,
Він на хрест пішов,
Та, смерть подолавши,
Піднявся вище небес,
Він той, хто був і є,
Бо він воскрес!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2391899_l1','pisniua_2391899','YouTube','https://www.youtube.com/watch?v=MsVkRKCKqFA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_238993';
DELETE FROM song_versions WHERE song_id = 'pisniua_238993';
DELETE FROM songs_fts WHERE song_id = 'pisniua_238993';
DELETE FROM songs WHERE id = 'pisniua_238993';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_238993','Вже Петрівочка минаєцця','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004. 2. Купальські пісні. Українські народні пісні. Пісенник. Упорядник О. Ю Чебанюк. - К.: Музична Україна, 1989. - 196 с.','Пара - любощі: Гуляння. Астральні Заручини — Українське містичне Весілля: Різдво Світа / Купала. Закликання Купала. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... – Мед і Ябка... Рай розвився Господь звеселився. Івана Купала тай в Воду упала. Ідіте Хлопці погуляйте. Були Світилки Яснії Зірки. Листки з приводу цієї Пісні: Українські релігійні роздуми про Бога. Українська Астрально-мітольоґічна реліґійна концепція. Про Свято Івана Купала Стежки до листків про Українські традиції.','Вже Петрівочка минаєцця
Хлопцям Гуляння вертаєцця:-)

Ідіте Хлопці погуляйте
Дівчат на Вісень підмовляйте

Вже ми ходили-походили
Дівчат на Вісень намовили','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_238993'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_238993','Вже Петрівочка минаєцця','Вже Петрівочка минаєцця
Хлопцям Гуляння вертаєцця:-)

Ідіте Хлопці погуляйте
Дівчат на Вісень підмовляйте

Вже ми ходили-походили
Дівчат на Вісень намовили');
DELETE FROM song_links WHERE song_id = 'pisniua_239212';
DELETE FROM song_versions WHERE song_id = 'pisniua_239212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_239212';
DELETE FROM songs WHERE id = 'pisniua_239212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_239212','Прощай прощай Галочко Сестра Наша','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Прощай-прощай Галочко Сестра Наша
Теперечки ми не Твої Ти не Наша
Оставайся Галочко між Бабами
А ми підемо з Боярами','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_239212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_239212','Прощай прощай Галочко Сестра Наша','Прощай-прощай Галочко Сестра Наша
Теперечки ми не Твої Ти не Наша
Оставайся Галочко між Бабами
А ми підемо з Боярами');
DELETE FROM song_links WHERE song_id = 'pisniua_23952';
DELETE FROM song_versions WHERE song_id = 'pisniua_23952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_23952';
DELETE FROM songs WHERE id = 'pisniua_23952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_23952','Мамай','Музика: Кому Вниз Слова: Андрій Середа. Виконує: Кому Вниз','uk','ukraine_1991',NULL,NULL,'текст: http://komuvnyz.gothic.com.ua/ - Мамай (акустика)','Підбір акордів: bohdanko','Біг небом крилатий пес,
Біг манівцями небес.
Крилами бив, що хотів те й робив
Em*       D        Em
Пес із блакитних небес.

По-під небом стояв зі списів древній ліс,
Ліс зі списів був нівроку,
Зі списів козаків, що не ступиш і кроку,
Під небом стояв древній ліс.

Ріс той ліс, та невдовзі проріс
Дрібним буденним вівсом,
Виріс овес до саменьких небес,
Виріс овес до небес.

Ріс той ліс, а чи був взагалі отой ліс
Може був, та нема того лісу
Був той спис та заріс, і нема того списа
І овес до саменьких небес

Приспів:
А десь там ген, росте кривий дуб
На тім дубі повісився дід
Em D    G       C*         Em
Надто дивний світ остогид йому вкрай
C       G       Dsus2   Em
Та й повісився дід на ймення Мамай

І срав пес на той овес
Срав і не шкодило псові **
Нехай шкоди не буде й тому вівсові
На який насрав отой пес

Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_23952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_23952','Мамай','Біг небом крилатий пес,
Біг манівцями небес.
Крилами бив, що хотів те й робив
Em*       D        Em
Пес із блакитних небес.

По-під небом стояв зі списів древній ліс,
Ліс зі списів був нівроку,
Зі списів козаків, що не ступиш і кроку,
Під небом стояв древній ліс.

Ріс той ліс, та невдовзі проріс
Дрібним буденним вівсом,
Виріс овес до саменьких небес,
Виріс овес до небес.

Ріс той ліс, а чи був взагалі отой ліс
Може був, та нема того лісу
Був той спис та заріс, і нема того списа
І овес до саменьких небес

Приспів:
А десь там ген, росте кривий дуб
На тім дубі повісився дід
Em D    G       C*         Em
Надто дивний світ остогид йому вкрай
C       G       Dsus2   Em
Та й повісився дід на ймення Мамай

І срав пес на той овес
Срав і не шкодило псові **
Нехай шкоди не буде й тому вівсові
На який насрав отой пес

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_23952_l1','pisniua_23952','YouTube','https://www.youtube.com/watch?v=wod_eWQYmsc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_23952_l2','pisniua_23952','YouTube','https://www.youtube.com/watch?v=O6uLKwyKc9I','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_23952_l3','pisniua_23952','YouTube','https://www.youtube.com/watch?v=2VYnO3yXEG4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_23952_l4','pisniua_23952','YouTube','https://www.youtube.com/watch?v=YskclH4mMkU','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_23952_l5','pisniua_23952','YouTube','https://www.youtube.com/watch?v=fnOjtS3zXZY','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_23952_l6','pisniua_23952','YouTube','https://www.youtube.com/watch?v=QriC_vUkwks','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_23952_l7','pisniua_23952','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_2396354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2396354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2396354';
DELETE FROM songs WHERE id = 'pisniua_2396354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2396354','Христос воскрес','Музика: Петро Карпук Слова: Катерина Перелісна. Виконує: Петро Карпук','uk','ukraine_1991',NULL,NULL,NULL,'виправлено і добавлено з оригіналу.','Співає жайворон з небес:
"Христос воскрес! Христос воскрес!"
У небо дзвін гуде з села:
"Христос воскрес! Йому хвала!"

В проміннях сонячна блакить:
"Христос воскрес! Його хваліть!"
Журчить струмок — весняний дзвін:
"Воскрес Христос — Господній Син!"

Радіють діти у вінках:
"Христос воскрес на небесах!
І вся земля, мов той вінок,
З чудесних трав, дітей, квіток...

І в серці радість через край:
Воскресли поле, річка, гай,
І лине пісня до небес:
"Христос воскрес! Христос воскрес!"
© Катерина Перелісна','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2396354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2396354','Христос воскрес','Співає жайворон з небес:
"Христос воскрес! Христос воскрес!"
У небо дзвін гуде з села:
"Христос воскрес! Йому хвала!"

В проміннях сонячна блакить:
"Христос воскрес! Його хваліть!"
Журчить струмок — весняний дзвін:
"Воскрес Христос — Господній Син!"

Радіють діти у вінках:
"Христос воскрес на небесах!
І вся земля, мов той вінок,
З чудесних трав, дітей, квіток...

І в серці радість через край:
Воскресли поле, річка, гай,
І лине пісня до небес:
"Христос воскрес! Христос воскрес!"
© Катерина Перелісна');
DELETE FROM song_links WHERE song_id = 'pisniua_2395563';
DELETE FROM song_versions WHERE song_id = 'pisniua_2395563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2395563';
DELETE FROM songs WHERE id = 'pisniua_2395563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2395563','Птаха','Музика: АнтитілА Слова: Тарас Тополя. Виконує: АнтитілА','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Біла небесная птаха
Явилась мені уві сні,
Казала зламав її вітер,
Казала прийшли її дні...
Світила зорею в пітьмі,
Кувала чарівні пісні
І крила лишила мені
Та й очі стулила свої...

Приспів:
Я маю незламнії крила,
На них прилечу,
Тебе я знайду!..
Укрию тебе від біди,
Сховаю в години грози!..
Я маю незламнії крила,
На них прилечу,
Тебе я знайду!..
Я - ангел для тебе навік,
Я поруч, я тут, я не зник!..

Немало хотів їй сказати,
Але головного не встиг,
Мене не навчила літати
На крилах її золотих...
Я місця не знайду собі,
Шукаю свій дім угорі
Та тягнуть мене до землі
Незламнії крила її...

Приспів.

Холодно в світі без мрії,
Де воно місце надії?..
Там, де діти цілують мам,
Де очі горять життям!
Холодно, крига вхопила,
Хоч замело, нам було не все одно,
Коли землю гладив дим,
А в небо йшли молоді...

Коли землю гладив дим,
А в небо йшли молоді...','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2395563'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2395563','Птаха','Біла небесная птаха
Явилась мені уві сні,
Казала зламав її вітер,
Казала прийшли її дні...
Світила зорею в пітьмі,
Кувала чарівні пісні
І крила лишила мені
Та й очі стулила свої...

Приспів:
Я маю незламнії крила,
На них прилечу,
Тебе я знайду!..
Укрию тебе від біди,
Сховаю в години грози!..
Я маю незламнії крила,
На них прилечу,
Тебе я знайду!..
Я - ангел для тебе навік,
Я поруч, я тут, я не зник!..

Немало хотів їй сказати,
Але головного не встиг,
Мене не навчила літати
На крилах її золотих...
Я місця не знайду собі,
Шукаю свій дім угорі
Та тягнуть мене до землі
Незламнії крила її...

Приспів.

Холодно в світі без мрії,
Де воно місце надії?..
Там, де діти цілують мам,
Де очі горять життям!
Холодно, крига вхопила,
Хоч замело, нам було не все одно,
Коли землю гладив дим,
А в небо йшли молоді...

Коли землю гладив дим,
А в небо йшли молоді...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2395563_l1','pisniua_2395563','YouTube','https://www.youtube.com/watch?v=xcNBCgHdJSk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_239522';
DELETE FROM song_versions WHERE song_id = 'pisniua_239522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_239522';
DELETE FROM songs WHERE id = 'pisniua_239522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_239522','Свашко, свате, зайдіть до хати',NULL,'uk','ukraine_before_1917',NULL,NULL,'http://www.midi.ru/home/137554/',NULL,'Цвіли вишні білим цвітом,
Цвіли та й опали,
Побралися наші діти,
Ми сватами стали.

Приспів:
Свашко, свате, зайдіть до хати,
Просимо вас гостинно,
Чи у будні, а чи у свято,
Стрінемо вас родинно.

Програш

Гарні вишні та й плодами,
Що красно поспіли,
А ми з вами - онуками,
Та й розбагатіли.

Приспів:

Програш. (2)

Дай же боже, щоб ягідки,
Червоно родили,
В мирі жили наші дітки,
І в гості ходили.

Приспів:

Програш.

Цвіли вишні білим цвітом,
Цвіли та й опали,
Побралися наші діти,
Ми сватами стали.

Приспів. (2)','[''pisni.org.ua'', ''cat:druzhba'', ''cat:vesilni'', ''Пісні про дружбу'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_239522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_239522','Свашко, свате, зайдіть до хати','Цвіли вишні білим цвітом,
Цвіли та й опали,
Побралися наші діти,
Ми сватами стали.

Приспів:
Свашко, свате, зайдіть до хати,
Просимо вас гостинно,
Чи у будні, а чи у свято,
Стрінемо вас родинно.

Програш

Гарні вишні та й плодами,
Що красно поспіли,
А ми з вами - онуками,
Та й розбагатіли.

Приспів:

Програш. (2)

Дай же боже, щоб ягідки,
Червоно родили,
В мирі жили наші дітки,
І в гості ходили.

Приспів:

Програш.

Цвіли вишні білим цвітом,
Цвіли та й опали,
Побралися наші діти,
Ми сватами стали.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2390226';
DELETE FROM song_versions WHERE song_id = 'pisniua_2390226';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2390226';
DELETE FROM songs WHERE id = 'pisniua_2390226';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2390226','Іде звізда сіяючи','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Колядка гуцульська зі Закарпаття. Колядку виконує гурт Мрія.','Іде звізда краєм світа,
Засвітила на пів світа,
Іде звізда сіяючи,
Йсуса Христа шукаючи.

Устрітила Петра й Павла:
Ци-с не видів Йсуса Христа?
Ми виділи в Четвер Вечір,
В четвер вечір при вечері.

Він вечеряв, хліба ламав,
Хліба ламав та й нам давав:
Їжте, пийте, споживайте,
Бо вже більше не будете.

Бо вже більше не будете,
Бо вже Христа втрачаєте,
За рожевим, за потоком
Вздріли жиди Христа оком.

Як уздріли - так спіймали,
До Пилата знати дали,
Пилат ни знав ци судити,
Та дав Христа жидам бити.

Жиди били, катували,
На хрест ручки розпинали,
На хрест ручки розпинали,
Святу Кровцю відпускали.

Свята Кровця вийтікає,
Чорний ворон залітає,
Чорний ворон залітає,
Святу Кровцю випиває.

Іде Матка та й плакає,
Від сліз земля промакає.
Не стій Петре. Чому стоїш?
Чому Мамку не розмови?

Розмов Петре мою Мамку,
Та дістанеш від ня ласку.
Іде звізда краєм світа,
Засвітила на пів світа,
Іде звізда сіяючи,
Йсуса Христа шукаючи.','[''pisni.org.ua'', ''cat:huculski'', ''cat:zakarpatski'', ''Гуцульські пісні'', ''Закарпатські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2390226'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2390226','Іде звізда сіяючи','Іде звізда краєм світа,
Засвітила на пів світа,
Іде звізда сіяючи,
Йсуса Христа шукаючи.

Устрітила Петра й Павла:
Ци-с не видів Йсуса Христа?
Ми виділи в Четвер Вечір,
В четвер вечір при вечері.

Він вечеряв, хліба ламав,
Хліба ламав та й нам давав:
Їжте, пийте, споживайте,
Бо вже більше не будете.

Бо вже більше не будете,
Бо вже Христа втрачаєте,
За рожевим, за потоком
Вздріли жиди Христа оком.

Як уздріли - так спіймали,
До Пилата знати дали,
Пилат ни знав ци судити,
Та дав Христа жидам бити.

Жиди били, катували,
На хрест ручки розпинали,
На хрест ручки розпинали,
Святу Кровцю відпускали.

Свята Кровця вийтікає,
Чорний ворон залітає,
Чорний ворон залітає,
Святу Кровцю випиває.

Іде Матка та й плакає,
Від сліз земля промакає.
Не стій Петре. Чому стоїш?
Чому Мамку не розмови?

Розмов Петре мою Мамку,
Та дістанеш від ня ласку.
Іде звізда краєм світа,
Засвітила на пів світа,
Іде звізда сіяючи,
Йсуса Христа шукаючи.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2390226_l1','pisniua_2390226','YouTube','https://www.youtube.com/watch?v=9Pxlb39SaAE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2396379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2396379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2396379';
DELETE FROM songs WHERE id = 'pisniua_2396379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2396379','Мамо','Музика: Олександр Кварта Слова: Артем Герасимчук. Виконує: Олександр Кварта','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Перше слово твоє на землі, що дає
Нам життя, як омріяну казку:
Мамо, мамо моя, я - кровинка твоя,
Твоя радість, твій біль, твоя ласка!..
Діти, мов журавлі, від гнізда, від землі,
Відлітають від рідної хати,
Лиш хустинкою витреш ти сльози свої,
І залишишся вірно чекати...

Приспів:
Мамо, я до тебе лину
Клином журавлиним, співом солов''я!..
Мамо, на землі єдина,
Ніжна, добра й вірна лиш любов твоя!..

Бачу в мріях своїх як онук на зорі
Діду вуса прокурені смика,
І безмовний твій крик серед мрій твоїх зник,
Схожий до лебединого крику...
Ви шануйте батьків, бережіть матерів,
Бо життя лиш від них і від Бога!..
В світі безліч доріг та коротша за всіх
До батьківської хати дорога...

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2396379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2396379','Мамо','Перше слово твоє на землі, що дає
Нам життя, як омріяну казку:
Мамо, мамо моя, я - кровинка твоя,
Твоя радість, твій біль, твоя ласка!..
Діти, мов журавлі, від гнізда, від землі,
Відлітають від рідної хати,
Лиш хустинкою витреш ти сльози свої,
І залишишся вірно чекати...

Приспів:
Мамо, я до тебе лину
Клином журавлиним, співом солов''я!..
Мамо, на землі єдина,
Ніжна, добра й вірна лиш любов твоя!..

Бачу в мріях своїх як онук на зорі
Діду вуса прокурені смика,
І безмовний твій крик серед мрій твоїх зник,
Схожий до лебединого крику...
Ви шануйте батьків, бережіть матерів,
Бо життя лиш від них і від Бога!..
В світі безліч доріг та коротша за всіх
До батьківської хати дорога...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2396379_l1','pisniua_2396379','YouTube','https://www.youtube.com/watch?v=TeNnlg8tf74','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_239515';
DELETE FROM song_versions WHERE song_id = 'pisniua_239515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_239515';
DELETE FROM songs WHERE id = 'pisniua_239515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_239515','Батькам',NULL,'uk','ukraine_1991',NULL,NULL,'http://www.midi.ru/home/137554/',NULL,'Тане, тане білий сніг,
Течуть річки,
Я спішу на Ваш поріг,
Мої батьки.

Приспів:
В серці різні почуття,
І жалю, і каяття,
Я спішу, спішу до Вас,
Через життя.

Як живете тут одні,
Здоров''я як,
Ви пробачте все мені,
Вертаюсь я.

Приспів.

програш

Так багато помилок,
Зробив в житті,
Повернувся я до Вас,
А Ви - не ті.

Приспів.

Тане, тане білий сніг,
Течуть річки,
Я спішу на Ваш поріг,
Мої батьки.

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_239515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_239515','Батькам','Тане, тане білий сніг,
Течуть річки,
Я спішу на Ваш поріг,
Мої батьки.

Приспів:
В серці різні почуття,
І жалю, і каяття,
Я спішу, спішу до Вас,
Через життя.

Як живете тут одні,
Здоров''я як,
Ви пробачте все мені,
Вертаюсь я.

Приспів.

програш

Так багато помилок,
Зробив в житті,
Повернувся я до Вас,
А Ви - не ті.

Приспів.

Тане, тане білий сніг,
Течуть річки,
Я спішу на Ваш поріг,
Мої батьки.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2396910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2396910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2396910';
DELETE FROM songs WHERE id = 'pisniua_2396910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2396910','Царице моя Преблагая','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'https://parafia.org.ua/biblioteka/molytvy/molytvy-do-presvyatoyi-bogorodyci/','Царице моя Преблагая є першою (з двох) молитов Богородиці перед її іконою "Нерушима Стіна" (Софійська Оранта), яка знаходиться в головному вівтарі Київського Софійського Собору (величний мозаїчний образ Богоматері). Пісню виконує Калуське православне братство.','Царице моя Преблагая,
Надіє моя Богородице!
Заступнице сиріт
І подорожніх Пристановище!
Скорботних Радосте,
Ображених Покровительнице.
Бачачи мою біду,
Бачачи мою скорботу.
Поможи мені як немічному,
Покермуй мною як подорожнім.
Образу мою знаючи,
Розріши її, як бажаєш.
Бо не маю іншої помочі окрім Тебе,
Ані іншої Заступниці,
Ані благої Утішительниці,
Лише Тебе, о, Богомати,
Що збереже й покриє мене,
По віки віків. Амінь.
Алилуя! Алилуя! Алилуя!','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2396910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2396910','Царице моя Преблагая','Царице моя Преблагая,
Надіє моя Богородице!
Заступнице сиріт
І подорожніх Пристановище!
Скорботних Радосте,
Ображених Покровительнице.
Бачачи мою біду,
Бачачи мою скорботу.
Поможи мені як немічному,
Покермуй мною як подорожнім.
Образу мою знаючи,
Розріши її, як бажаєш.
Бо не маю іншої помочі окрім Тебе,
Ані іншої Заступниці,
Ані благої Утішительниці,
Лише Тебе, о, Богомати,
Що збереже й покриє мене,
По віки віків. Амінь.
Алилуя! Алилуя! Алилуя!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2396910_l1','pisniua_2396910','YouTube','https://www.youtube.com/watch?v=bVvGcBpm4Bk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_239767';
DELETE FROM song_versions WHERE song_id = 'pisniua_239767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_239767';
DELETE FROM songs WHERE id = 'pisniua_239767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_239767','Страждальна мати',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Страждальна мати під хрестом стояла,
Стала ридати, в сльозах промовляти;
- Ой сину, сину за яку провину      |
Переносиш нині тяженьку годину     |
На хресті?                         | (2)

Я тебе купала гіркими сльозами
Як малим ховала перед ворогами.
А нині плачу, бо тебе вже трачу,     |
Вже тя, милий Сину більше не побачу, |
Сину мій!                            | (2)

Ти жертвувався всіх людей спасти,
За то діждався невинно вмирати:
За світ лукавай, злобний і неправий,   |
Що сповнив на Тобі свій засуд кривавий |
На хресті.                             | (2)

Ти моя підпоро, мій свійте ясний!
Гаснеш за скоро, в''янеш безчасний.
А що ж зі мною станесь сиротою,        |
Я сама на світі, як билина, стою       |
Під хрестом.                           | (2)

Мій Боже милий! Усердно Тя молю:
Додай мені сили в нещаснім болю.
Тебе благаю, як сама лиш знаю,         |
І Тобі десь Сина мого поручаю          |
На хресті.                             | (2)    мелодія','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_239767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_239767','Страждальна мати','Страждальна мати під хрестом стояла,
Стала ридати, в сльозах промовляти;
- Ой сину, сину за яку провину      |
Переносиш нині тяженьку годину     |
На хресті?                         | (2)

Я тебе купала гіркими сльозами
Як малим ховала перед ворогами.
А нині плачу, бо тебе вже трачу,     |
Вже тя, милий Сину більше не побачу, |
Сину мій!                            | (2)

Ти жертвувався всіх людей спасти,
За то діждався невинно вмирати:
За світ лукавай, злобний і неправий,   |
Що сповнив на Тобі свій засуд кривавий |
На хресті.                             | (2)

Ти моя підпоро, мій свійте ясний!
Гаснеш за скоро, в''янеш безчасний.
А що ж зі мною станесь сиротою,        |
Я сама на світі, як билина, стою       |
Під хрестом.                           | (2)

Мій Боже милий! Усердно Тя молю:
Додай мені сили в нещаснім болю.
Тебе благаю, як сама лиш знаю,         |
І Тобі десь Сина мого поручаю          |
На хресті.                             | (2)    мелодія');
DELETE FROM song_links WHERE song_id = 'pisniua_2395993';
DELETE FROM song_versions WHERE song_id = 'pisniua_2395993';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2395993';
DELETE FROM songs WHERE id = 'pisniua_2395993';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2395993','Січовик','Музика: Геннадій Володько Слова: Яр Славутич. Виконує: Олександр Василенко','uk','ukr_ssr_1919_1991',NULL,'1940','з аудіокасети "Співає Олександр Василенко" (1994 р.)','Вірш "Січовик" написав Яр Славутич у 1940 році.','Добуте списа, лука, чи домаху,
Чи самопала — і втікає страх.
Шугає степом, як югастий птах, —
Його ніхто не сприйме за невдаху.
Гей, гей гей,
Не сприйме за невдаху!

Смакує рибу, варить саламаху,
Під небом спить на росяних степах,
Іде на битву з гнівом на устах
І смерть приймає, мов у спеку брагу.
Гей, гей гей,
Мов у спеку брагу!

Козак, боронячи в бою бунчук,
Готов зазнати стільки смертних мук,
Що будуть браття вічно поминати.
Гей, гей гей,
Вічно поминать!

Добуте списа, лука, чи домаху,
Чи самопала — і втікає страх.
Шугає степом, як югастий птах, —
Його ніхто не сприйме за невдаху.
Гей, гей гей,
Не сприйме за невдаху!
Гей, гей гей,
Не сприйме за невдаху!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2395993'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2395993','Січовик','Добуте списа, лука, чи домаху,
Чи самопала — і втікає страх.
Шугає степом, як югастий птах, —
Його ніхто не сприйме за невдаху.
Гей, гей гей,
Не сприйме за невдаху!

Смакує рибу, варить саламаху,
Під небом спить на росяних степах,
Іде на битву з гнівом на устах
І смерть приймає, мов у спеку брагу.
Гей, гей гей,
Мов у спеку брагу!

Козак, боронячи в бою бунчук,
Готов зазнати стільки смертних мук,
Що будуть браття вічно поминати.
Гей, гей гей,
Вічно поминать!

Добуте списа, лука, чи домаху,
Чи самопала — і втікає страх.
Шугає степом, як югастий птах, —
Його ніхто не сприйме за невдаху.
Гей, гей гей,
Не сприйме за невдаху!
Гей, гей гей,
Не сприйме за невдаху!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2395993_l1','pisniua_2395993','YouTube','https://www.youtube.com/watch?v=5FRE7uEvIAY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2397818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2397818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2397818';
DELETE FROM songs WHERE id = 'pisniua_2397818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2397818','Возрадуйся, Зірко моя',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Возрадуйся, Зірко моя,
Божа Матір наша,
Бо Ти завжди Діва,
Небесна брама.

Найвищим й величним "Аве"
Гавриїл привітав Тебе.
Укріпи нас у мирі,
Єві ім''я зміни.

Від пут усіляких звільни,
Світло незрячим принеси,
Відкинь геть наше зло,
Кожне приклич добро.

Яви своє материнство,
Словом доторкнись лагідно
Того, хто родився для нас.
Твій Син є світу Спас.

Свята Діво, Ти єдина
Більш за всіх лагідніша,
Наших вин розв''язання пут,
Дай тихим й чистим буть.

Нам чисте вділи буття,
Готуй новий шлях життя,
Щоб уздрівши Ісуса
Завжди втішалися.

Тож слава Богу Отцю,
Честь Христу найвища
І Духові Святому
Єдина хвала.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2397818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2397818','Возрадуйся, Зірко моя','Возрадуйся, Зірко моя,
Божа Матір наша,
Бо Ти завжди Діва,
Небесна брама.

Найвищим й величним "Аве"
Гавриїл привітав Тебе.
Укріпи нас у мирі,
Єві ім''я зміни.

Від пут усіляких звільни,
Світло незрячим принеси,
Відкинь геть наше зло,
Кожне приклич добро.

Яви своє материнство,
Словом доторкнись лагідно
Того, хто родився для нас.
Твій Син є світу Спас.

Свята Діво, Ти єдина
Більш за всіх лагідніша,
Наших вин розв''язання пут,
Дай тихим й чистим буть.

Нам чисте вділи буття,
Готуй новий шлях життя,
Щоб уздрівши Ісуса
Завжди втішалися.

Тож слава Богу Отцю,
Честь Христу найвища
І Духові Святому
Єдина хвала.');
DELETE FROM song_links WHERE song_id = 'pisniua_2397726';
DELETE FROM song_versions WHERE song_id = 'pisniua_2397726';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2397726';
DELETE FROM songs WHERE id = 'pisniua_2397726';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2397726','Вже щаслива Україна',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вже щаслива Україна,
Бо в ній Матінка Єдина.
І від сходу до заходу
Всіх плащем Вона окрила.

Приспів:
Мати Божа, Пані Подільська,
Царице наша Летичівська!

В Летичеві трон обрала,
Чудо-образ дарувала.
Прагнеш Ти всіх нас любити
І разом з нами терпіти.

Приспів.

Та Цариця так кохана
Нам за Матір Богом дана.
Завжди прийде і потішить,
Завжди на рятунок спішить.

Приспів.

Коли біль душу терзає,
Вона під хрест Сина стає.
Молить, щоб кари не знали,
Щоби ми з гріха повстали.

Приспів.

Зіркою світи в житті нам,
Понад сонце яскравіша,
Зірко щастя, Ти на небі
Понад ангели чистіша.

Приспів.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2397726'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2397726','Вже щаслива Україна','Вже щаслива Україна,
Бо в ній Матінка Єдина.
І від сходу до заходу
Всіх плащем Вона окрила.

Приспів:
Мати Божа, Пані Подільська,
Царице наша Летичівська!

В Летичеві трон обрала,
Чудо-образ дарувала.
Прагнеш Ти всіх нас любити
І разом з нами терпіти.

Приспів.

Та Цариця так кохана
Нам за Матір Богом дана.
Завжди прийде і потішить,
Завжди на рятунок спішить.

Приспів.

Коли біль душу терзає,
Вона під хрест Сина стає.
Молить, щоб кари не знали,
Щоби ми з гріха повстали.

Приспів.

Зіркою світи в житті нам,
Понад сонце яскравіша,
Зірко щастя, Ти на небі
Понад ангели чистіша.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_239675';
DELETE FROM song_versions WHERE song_id = 'pisniua_239675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_239675';
DELETE FROM songs WHERE id = 'pisniua_239675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_239675','Ой в Полі в Полі Вишня стояла','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Пісенний вінок. Українські народні пісні. - К.: Криниця, 2005. - 288 с.','Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда) і Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) *Кожен наступний рядок повторюється за цим взірцем. Музичний архів Кафедри фольклору Національної музичної академії України. (Проблемна науково-дослідна лабораторія музичної етнографії.) Три Гискри впало Три Морі стало. Да й став читати Що Людям дати. Листки з приводу цієї Пісні: Українські релігійні роздуми про Бога. Колядки про Почин Світа. Первовічне Дерево і ідеал духового Творця Світа. Передріздвяний Святочний час: Упереджуючі знаки, Михайла 21.11. Українське Свято Воведення 4.12 - Передріздвяний Святочний час. Еротичні містерії, Катерини 7.12 — Передріздвяний Святочний час. Стежки до листків про Українські традиції.','Ой в Полі в Полі Вишня стояла
Приспів: Рождество Твоє Вишня стояла*

А на Той Вишні Свіча палала
А з Тої Свічі Іскринка впала
А з Той Іскринки Озерце стало
А в Тім Озерці Сам Бог купався
Сам Бог купався в Золото вбрався
Да й сів на Крісла розложив Листа
Да й став читати Що Людям дати
Копу Пшениці на Паляниці
А Копу Гречки на Варенички
Копу Ячменю ще й Грошей Жменю
А Копу Вівса да й Коляда вся    Голос 1','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_239675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_239675','Ой в Полі в Полі Вишня стояла','Ой в Полі в Полі Вишня стояла
Приспів: Рождество Твоє Вишня стояла*

А на Той Вишні Свіча палала
А з Тої Свічі Іскринка впала
А з Той Іскринки Озерце стало
А в Тім Озерці Сам Бог купався
Сам Бог купався в Золото вбрався
Да й сів на Крісла розложив Листа
Да й став читати Що Людям дати
Копу Пшениці на Паляниці
А Копу Гречки на Варенички
Копу Ячменю ще й Грошей Жменю
А Копу Вівса да й Коляда вся    Голос 1');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_239675_l1','pisniua_239675','YouTube','https://www.youtube.com/watch?v=h-K1CDgemRA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_239614';
DELETE FROM song_versions WHERE song_id = 'pisniua_239614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_239614';
DELETE FROM songs WHERE id = 'pisniua_239614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_239614','Ходить котик по дворі','Слова: Микола Сингаївський','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ходить котик по горі,
носить сон у рукаві.
Усім дітям продає,
а Марічці так дає.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_239614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_239614','Ходить котик по дворі','Ходить котик по горі,
носить сон у рукаві.
Усім дітям продає,
а Марічці так дає.');
DELETE FROM song_links WHERE song_id = 'pisniua_2397717';
DELETE FROM song_versions WHERE song_id = 'pisniua_2397717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2397717';
DELETE FROM songs WHERE id = 'pisniua_2397717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2397717','Вже світло денне угасає',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вже світло денне угасає,
Поволі спада тиха ніч.
Коли б, як день цей від світання,
Могла спокійно минуть ніч.

Приспів:
До Твоїх ніг кладу прохання,
Неси їх перед Бога трон.
Мадонно, хай Тебе вітає
Моїх молитв побожний тон.
Aвe, Марія!.. Aвe, Марія!..

Мадонно, хай довіра завжди
Живе в мені і променить,
Псалтир мій бережи і арфу,
Моє спасіння й світло - Ти.

Приспів.

Нараз життя блиск морок вкриє,
І все обійме смерті ніч.
Душа від розставання мліє, -
Йти має в невблаганну ніч.
Твоїм рукам, Мадонно, ввірю,
Моїх благань тривожний шал:
проси, щоб помер в святій вірі,
І потім з мертвих щоб повстав.
Aвe, Марія!.. Aвe, Марія!..','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2397717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2397717','Вже світло денне угасає','Вже світло денне угасає,
Поволі спада тиха ніч.
Коли б, як день цей від світання,
Могла спокійно минуть ніч.

Приспів:
До Твоїх ніг кладу прохання,
Неси їх перед Бога трон.
Мадонно, хай Тебе вітає
Моїх молитв побожний тон.
Aвe, Марія!.. Aвe, Марія!..

Мадонно, хай довіра завжди
Живе в мені і променить,
Псалтир мій бережи і арфу,
Моє спасіння й світло - Ти.

Приспів.

Нараз життя блиск морок вкриє,
І все обійме смерті ніч.
Душа від розставання мліє, -
Йти має в невблаганну ніч.
Твоїм рукам, Мадонно, ввірю,
Моїх благань тривожний шал:
проси, щоб помер в святій вірі,
І потім з мертвих щоб повстав.
Aвe, Марія!.. Aвe, Марія!..');
DELETE FROM song_links WHERE song_id = 'pisniua_2397797';
DELETE FROM song_versions WHERE song_id = 'pisniua_2397797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2397797';
DELETE FROM songs WHERE id = 'pisniua_2397797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2397797','Вітай, Діво!',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вітай, Діво свята, чиста,
Найкрасніша із всіх дів,
Тобі на честь ми співаєм
Урочисто такий спів.

Ти єдина Непорочна
Зіронька зійшла на світ,
І з Тобою виповнився,
Ще в Раю даний Завіт.

Ти зломила змія силу,
Сокрушила кайдани,
Що так тяжко в них скував нас,
Неприязний ангел тьми.

Переможниця Преславна,
Ти створила знов нам Рай,
На Твою честь ми співаєм,
Вітай Маріє, вітай!','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2397797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2397797','Вітай, Діво!','Вітай, Діво свята, чиста,
Найкрасніша із всіх дів,
Тобі на честь ми співаєм
Урочисто такий спів.

Ти єдина Непорочна
Зіронька зійшла на світ,
І з Тобою виповнився,
Ще в Раю даний Завіт.

Ти зломила змія силу,
Сокрушила кайдани,
Що так тяжко в них скував нас,
Неприязний ангел тьми.

Переможниця Преславна,
Ти створила знов нам Рай,
На Твою честь ми співаєм,
Вітай Маріє, вітай!');
DELETE FROM song_links WHERE song_id = 'pisniua_2396990';
DELETE FROM song_versions WHERE song_id = 'pisniua_2396990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2396990';
DELETE FROM songs WHERE id = 'pisniua_2396990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2396990','Я йду на гору','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Пісню виконує хор Церкви с. Терло (Львівщина). Пісню виконують Любов та Богдан Стефанишини.','Я йду на гору із останніх сил,​
По гострих камнях босими ногами,
А Хрест мій, наче виточений з брил,  |
На мене давить вашими гріхами.       | (2)

Кругом юрба кричить: Розпни! Розпни!
І грізно простягає свої руки.
І той сліпець, якого я зцілив,       |
В лице мені кидає каменюку.          | (2)

Стікає по землі невинна кров,
Вінок терновий ріже мої скроні,
А кат немилосердно знов і знов,      |
Вдаряє цвяхи у мої долоні.           | (2)

Ганебну смерть зустріну на Хресті,
Не вимовлю від болю ані звуку.
О, Господи, помилуй і прости,        |
Подай мені з Хреста помічну руку.    | (2)

Тих твоїх блудних дочок і синів,
Котрі попали сатані у сіті,
І справедливо засуд возведи,         |
Вони - ж бо всі твої нещасні діти... | (2)','[''pisni.org.ua'', ''cat:strasni'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2396990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2396990','Я йду на гору','Я йду на гору із останніх сил,​
По гострих камнях босими ногами,
А Хрест мій, наче виточений з брил,  |
На мене давить вашими гріхами.       | (2)

Кругом юрба кричить: Розпни! Розпни!
І грізно простягає свої руки.
І той сліпець, якого я зцілив,       |
В лице мені кидає каменюку.          | (2)

Стікає по землі невинна кров,
Вінок терновий ріже мої скроні,
А кат немилосердно знов і знов,      |
Вдаряє цвяхи у мої долоні.           | (2)

Ганебну смерть зустріну на Хресті,
Не вимовлю від болю ані звуку.
О, Господи, помилуй і прости,        |
Подай мені з Хреста помічну руку.    | (2)

Тих твоїх блудних дочок і синів,
Котрі попали сатані у сіті,
І справедливо засуд возведи,         |
Вони - ж бо всі твої нещасні діти... | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2396990_l1','pisniua_2396990','YouTube','https://www.youtube.com/watch?v=CoCDA8tIOrA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_239697';
DELETE FROM song_versions WHERE song_id = 'pisniua_239697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_239697';
DELETE FROM songs WHERE id = 'pisniua_239697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_239697','Пісня про Чугайстра','Виконує: Тінь сонця','uk','ukraine_1991',NULL,NULL,NULL,'Текст набрано "на слух", тому прошу виправити якщо щось не так... На разі маємо те що маємо... А хто візьметься написати міді або ноти мелодії тому особисто надішлю одну цукерку...:-) Доповнення від bohdanko: Пісня присвячена жертвам Чорнобильської катастрофи. Ця пісня (у варіанті білоруською мовою) увійшла до білоруської музичної збірки "Чарнобыльскі вецер", виданої до 20-річчя від вибуху на ЧАЕС. Підбір акордів: bohdanko (pisni.org.ua)','Вступ:  Cm A#* (x8)

У предвічних хащах, де не тліє цвіт болота.
Де лягла Батия чорно-золота кіннота.
Часом в білій свиті зачарований гуляє
Лісовик-Чугайстер і стиха промовляє:

Приспів:
Якщо мо- жеш завітай до мене ти.
Якщо хочеш спий моєї води.
Якщо віриш розкажи мені
Про що ти мрієш коли живеш на самоті.

Проргаш (як вступ).

Брами павутиння від сосни і до берези,
Вартові чекання - долі зламані терези.
Полум''яна рута життєдайно розквітає,
Та ніхто не бачить, ніхто того не знає.

Приспів.

Стогне хижим плачем трясовина на Поліссі,
Попелом укрите листя у древлянськім лісі.
Без надії квола похилилася тополя,
Дме тривожний вітер з отруєного поля.

Приспів.

Все, що наснилось, більше не вернется.
Казкові мрії в небутті.
Занадто рано зупинолось серце.
Ми вмерли надто молоді.

І голос з неба чорний крук принесе,
Стече по Прип''яті вінок.
Чекайте вістки під похмурим сонцем
У сяйві жалібних зірок.','[''pisni.org.ua'', ''cat:chornobyl'', ''Чорнобильська катастрофа: пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_239697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_239697','Пісня про Чугайстра','Вступ:  Cm A#* (x8)

У предвічних хащах, де не тліє цвіт болота.
Де лягла Батия чорно-золота кіннота.
Часом в білій свиті зачарований гуляє
Лісовик-Чугайстер і стиха промовляє:

Приспів:
Якщо мо- жеш завітай до мене ти.
Якщо хочеш спий моєї води.
Якщо віриш розкажи мені
Про що ти мрієш коли живеш на самоті.

Проргаш (як вступ).

Брами павутиння від сосни і до берези,
Вартові чекання - долі зламані терези.
Полум''яна рута життєдайно розквітає,
Та ніхто не бачить, ніхто того не знає.

Приспів.

Стогне хижим плачем трясовина на Поліссі,
Попелом укрите листя у древлянськім лісі.
Без надії квола похилилася тополя,
Дме тривожний вітер з отруєного поля.

Приспів.

Все, що наснилось, більше не вернется.
Казкові мрії в небутті.
Занадто рано зупинолось серце.
Ми вмерли надто молоді.

І голос з неба чорний крук принесе,
Стече по Прип''яті вінок.
Чекайте вістки під похмурим сонцем
У сяйві жалібних зірок.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_239697_l1','pisniua_239697','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2398010';
DELETE FROM song_versions WHERE song_id = 'pisniua_2398010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2398010';
DELETE FROM songs WHERE id = 'pisniua_2398010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2398010','Мати Божа Пресвята',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мати Божа Пресвята,
У Тобі наш захист є.
Ми до Тебе прибігаєм,
О, Маріє, Маріє!

Чуємо ми голос Твій
В своїм серці повсякчас:
О, прийдіть до Мене, діти,
Обігрію Я всіх вас!

Ніжним співом соловей
Тобі шану віддає,
І травинка, і пташинка
Тебе славлять, Маріє!

І ми також всі разом
Поклонімся Матері,
Чисте серце подаруймо
Непорочній Марії.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2398010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2398010','Мати Божа Пресвята','Мати Божа Пресвята,
У Тобі наш захист є.
Ми до Тебе прибігаєм,
О, Маріє, Маріє!

Чуємо ми голос Твій
В своїм серці повсякчас:
О, прийдіть до Мене, діти,
Обігрію Я всіх вас!

Ніжним співом соловей
Тобі шану віддає,
І травинка, і пташинка
Тебе славлять, Маріє!

І ми також всі разом
Поклонімся Матері,
Чисте серце подаруймо
Непорочній Марії.');
DELETE FROM song_links WHERE song_id = 'pisniua_2397899';
DELETE FROM song_versions WHERE song_id = 'pisniua_2397899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2397899';
DELETE FROM songs WHERE id = 'pisniua_2397899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2397899','Зоре ранкова найяскравіша',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Зоре ранкова найяскравіша,
Пречиста Діво, серцю наймиліша,
Ти народила світу Месію.
Молись за нами, Діво Маріє!
Молись за нами, Діво Маріє!

Зоре досвітня, дай світла Твого,
І бережи нас від спокуси злого.
Світи нам, Зоре, в житті яскраво!
Молись за нами, Діво ласкава!

Зоре небесна, дай захист бідним,
Дай милосердя всім Тобі покірним.
Тебе ми будем вічно славити.
Молись за нами, Царице світу!','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2397899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2397899','Зоре ранкова найяскравіша','Зоре ранкова найяскравіша,
Пречиста Діво, серцю наймиліша,
Ти народила світу Месію.
Молись за нами, Діво Маріє!
Молись за нами, Діво Маріє!

Зоре досвітня, дай світла Твого,
І бережи нас від спокуси злого.
Світи нам, Зоре, в житті яскраво!
Молись за нами, Діво ласкава!

Зоре небесна, дай захист бідним,
Дай милосердя всім Тобі покірним.
Тебе ми будем вічно славити.
Молись за нами, Царице світу!');
DELETE FROM song_links WHERE song_id = 'pisniua_2398022';
DELETE FROM song_versions WHERE song_id = 'pisniua_2398022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2398022';
DELETE FROM songs WHERE id = 'pisniua_2398022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2398022','Любима школо!','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'https://youtu.be/QdP43FkvgQ0','Пісню виконує Рената Штіфель.','Пролунав наш останній дзвінок,
Пролетіли дитячі роки
І в доросле життя робим крок,
А в душі залишились дітьми.
Дні безтурботні шкільні,
Спогади, радісні миті -
Перегорнем цю сторінку життя,
Очі сльозами налиті...

Приспів:
Любима школо, ми не забудем тебе!
Майбутнє наше таке не просте,
Але в серці кожного ти є!
Любима школо, ми в спогади поринаєм
І тебе, рідна, згадаєм, ми ж тебе кохаєм!

Вчителі стали рідними нам
І до віку вдячні ми вам,
Стоїмо на лінійці востаннє,
Залишилося тільки прощання...
Долі птах нас в майбутнє веде
І ми знаєм - воно не просте
Та на труднощі ми не зважаєм,
Цікаву подорож ми починаєм.

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2398022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2398022','Любима школо!','Пролунав наш останній дзвінок,
Пролетіли дитячі роки
І в доросле життя робим крок,
А в душі залишились дітьми.
Дні безтурботні шкільні,
Спогади, радісні миті -
Перегорнем цю сторінку життя,
Очі сльозами налиті...

Приспів:
Любима школо, ми не забудем тебе!
Майбутнє наше таке не просте,
Але в серці кожного ти є!
Любима школо, ми в спогади поринаєм
І тебе, рідна, згадаєм, ми ж тебе кохаєм!

Вчителі стали рідними нам
І до віку вдячні ми вам,
Стоїмо на лінійці востаннє,
Залишилося тільки прощання...
Долі птах нас в майбутнє веде
І ми знаєм - воно не просте
Та на труднощі ми не зважаєм,
Цікаву подорож ми починаєм.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2398022_l1','pisniua_2398022','YouTube','https://www.youtube.com/watch?v=MaNHNExtcJc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2397961';
DELETE FROM song_versions WHERE song_id = 'pisniua_2397961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2397961';
DELETE FROM songs WHERE id = 'pisniua_2397961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2397961','Маріє, Матінко всіх сиріт',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Маріє, Матінко всіх сиріт,
Маріє, Ти - Мати повсякчас,
Маріє, ми просимо тебе:
Маріє, молись за нас!

Приспів:
Ти - Цариця світу,
Ти - пісня моя,
Мати моя, моє життя!
Ти - Цариця світу,
Дай світу мир -
Молить Тебе Твоє дитя.

Маріє, Діво над дівами,
Маріє, Ти - Мати повсякчас,
Маріє - Ти Мати чистая,
Маріє, молись за нас!

Приспів.

Маріє, візьми під свій покров,
Маріє, душу мою,
Маріє, пролий свою любов,
Маріє, в мою сім''ю!

Приспів.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2397961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2397961','Маріє, Матінко всіх сиріт','Маріє, Матінко всіх сиріт,
Маріє, Ти - Мати повсякчас,
Маріє, ми просимо тебе:
Маріє, молись за нас!

Приспів:
Ти - Цариця світу,
Ти - пісня моя,
Мати моя, моє життя!
Ти - Цариця світу,
Дай світу мир -
Молить Тебе Твоє дитя.

Маріє, Діво над дівами,
Маріє, Ти - Мати повсякчас,
Маріє - Ти Мати чистая,
Маріє, молись за нас!

Приспів.

Маріє, візьми під свій покров,
Маріє, душу мою,
Маріє, пролий свою любов,
Маріє, в мою сім''ю!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2398158';
DELETE FROM song_versions WHERE song_id = 'pisniua_2398158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2398158';
DELETE FROM songs WHERE id = 'pisniua_2398158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2398158','Хрест Святий',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Хрест Святий, Ти нам дорожче
Всіх дерев дорогоцінних.
На Тобі страждав Син Божий,
Агнець жертвенний, священний.

Ти явився нам залогом,
Вічним знаменом спасіння,
Окроплений кров''ю Бога,
Дивним даром іскуплення.

Христе, ще як був Дитятком
В Вифлеємських яслах тісних
Передбачив час останній,
Смутку час та болей хресних.

О, Спаситель в цьому світі,
Врятував нас через хрест свій,
Дай нам стати людьми миру,
Заспокоїти біль Твій.','[''pisni.org.ua'', ''cat:strasni'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2398158'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2398158','Хрест Святий','Хрест Святий, Ти нам дорожче
Всіх дерев дорогоцінних.
На Тобі страждав Син Божий,
Агнець жертвенний, священний.

Ти явився нам залогом,
Вічним знаменом спасіння,
Окроплений кров''ю Бога,
Дивним даром іскуплення.

Христе, ще як був Дитятком
В Вифлеємських яслах тісних
Передбачив час останній,
Смутку час та болей хресних.

О, Спаситель в цьому світі,
Врятував нас через хрест свій,
Дай нам стати людьми миру,
Заспокоїти біль Твій.');
DELETE FROM song_links WHERE song_id = 'pisniua_2398457';
DELETE FROM song_versions WHERE song_id = 'pisniua_2398457';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2398457';
DELETE FROM songs WHERE id = 'pisniua_2398457';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2398457','Нині ми вітали Тебе, Маріє',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Нині ми вітали Тебе, Маріє,
З Ангелами разом шану складаєм,
Хвалу вічну Тобі співаєм.

Ти нам народила Месію-Бога,
Королево неба й світу цілого,
Ти є гідна, Маріє, цього.

Б''ють Тобі поклони ангельські хори
І Тебе вітають Духи в покорі,
Тебе просять люди на землі.

Ми Тебе, Маріє, кличем повсякчас:
Випроси у Бога спасіння для нас,
Тобі, Діво, вічная слава!','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2398457'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2398457','Нині ми вітали Тебе, Маріє','Нині ми вітали Тебе, Маріє,
З Ангелами разом шану складаєм,
Хвалу вічну Тобі співаєм.

Ти нам народила Месію-Бога,
Королево неба й світу цілого,
Ти є гідна, Маріє, цього.

Б''ють Тобі поклони ангельські хори
І Тебе вітають Духи в покорі,
Тебе просять люди на землі.

Ми Тебе, Маріє, кличем повсякчас:
Випроси у Бога спасіння для нас,
Тобі, Діво, вічная слава!');
DELETE FROM song_links WHERE song_id = 'pisniua_2398192';
DELETE FROM song_versions WHERE song_id = 'pisniua_2398192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2398192';
DELETE FROM songs WHERE id = 'pisniua_2398192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2398192','О, наш Христе, Боже милий!',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'О, наш Христе, Боже милий!
О, наш Спасе терпеливий!
Боже, Боже, Ти за нас страждаєш,
В муках, в муках на хресті вмираєш.

З уст зійшло останнє слово,
Звисла голова безсило.
Мати Божа поруч тут стояла,
Сльози, сльози з жалю проливала.

Земля з горя застогнала,
Чорна хмара сонце вкрила.
Сину Божий, Ти уже вмираєш,
Кров''ю, кров''ю гріх наш обмиваєш.','[''pisni.org.ua'', ''cat:strasni'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2398192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2398192','О, наш Христе, Боже милий!','О, наш Христе, Боже милий!
О, наш Спасе терпеливий!
Боже, Боже, Ти за нас страждаєш,
В муках, в муках на хресті вмираєш.

З уст зійшло останнє слово,
Звисла голова безсило.
Мати Божа поруч тут стояла,
Сльози, сльози з жалю проливала.

Земля з горя застогнала,
Чорна хмара сонце вкрила.
Сину Божий, Ти уже вмираєш,
Кров''ю, кров''ю гріх наш обмиваєш.');
DELETE FROM song_links WHERE song_id = 'pisniua_2398175';
DELETE FROM song_versions WHERE song_id = 'pisniua_2398175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2398175';
DELETE FROM songs WHERE id = 'pisniua_2398175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2398175','Хрест Ісуса хвалимо',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Хрест Ісуса хвалимо,
Вклоняючись,
На вічні часи перед ним
Смиряючись.

Де Бог - Цар світу цілого
Пожертвував Сина Свого.

Приспів.

У ньому Христос Кров пролляв,
Щоб кожний життя вічне мав.

Приспів.

В ньому є біль і міць Христа,
На воскресіння нам надія.

Приспів.','[''pisni.org.ua'', ''cat:strasni'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2398175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2398175','Хрест Ісуса хвалимо','Приспів:
Хрест Ісуса хвалимо,
Вклоняючись,
На вічні часи перед ним
Смиряючись.

Де Бог - Цар світу цілого
Пожертвував Сина Свого.

Приспів.

У ньому Христос Кров пролляв,
Щоб кожний життя вічне мав.

Приспів.

В ньому є біль і міць Христа,
На воскресіння нам надія.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2397859';
DELETE FROM song_versions WHERE song_id = 'pisniua_2397859';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2397859';
DELETE FROM songs WHERE id = 'pisniua_2397859';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2397859','До Тебе руки наші простягаєм',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'До Тебе руки наші простягаєм,
І про молитву просить кожен з нас.
О, Матір Бога, знов Тебе благаєм:
За нас Ти заступайся повсякчас!

Приспів:
Аве, Марія! Аве! Аве, Марія!
Ми величаємо Тебе, Царице світу!
Аве, Марія! Аве! Аве, Марія!
Хай доброта Твоя
В серцях любов засвітить!

Ми хочем бути завжди вірні Богу,
Хоч часто розчаровує нас світ.
Та Ти говориш все почати знову,
І в серці розквітає віри цвіт.

Приспів.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2397859'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2397859','До Тебе руки наші простягаєм','До Тебе руки наші простягаєм,
І про молитву просить кожен з нас.
О, Матір Бога, знов Тебе благаєм:
За нас Ти заступайся повсякчас!

Приспів:
Аве, Марія! Аве! Аве, Марія!
Ми величаємо Тебе, Царице світу!
Аве, Марія! Аве! Аве, Марія!
Хай доброта Твоя
В серцях любов засвітить!

Ми хочем бути завжди вірні Богу,
Хоч часто розчаровує нас світ.
Та Ти говориш все почати знову,
І в серці розквітає віри цвіт.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2398114';
DELETE FROM song_versions WHERE song_id = 'pisniua_2398114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2398114';
DELETE FROM songs WHERE id = 'pisniua_2398114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2398114','Мати Христова, Діво Небесна',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мати Христова, Діво Небесна,
Яка опіка Твоя чудесна!
Ти нас у Церкві усіх єднаєш,      |
І в кожне серце любов вселяєш.    | (2)

Грій нас промінням Серденька Твого,
Проси смиренно Господа Бога:
Хай від пригод злих нас захищає,  |
Бо його воля границь не знає.     | (2)

Люд всього світу, що Тобі вірний,
Просить, Маріє, Тебе покірно:
За нас молися, щоб Бог Предвічний |
Дав нам у небі спасіння вічне.    | (2)

Злучи нас в небі в одну родину,
В вічній святині Божого Сина,
Щоби вклонились ми Тобі в ноги    |
Там біля трону Господа Бога.      | (2)','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2398114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2398114','Мати Христова, Діво Небесна','Мати Христова, Діво Небесна,
Яка опіка Твоя чудесна!
Ти нас у Церкві усіх єднаєш,      |
І в кожне серце любов вселяєш.    | (2)

Грій нас промінням Серденька Твого,
Проси смиренно Господа Бога:
Хай від пригод злих нас захищає,  |
Бо його воля границь не знає.     | (2)

Люд всього світу, що Тобі вірний,
Просить, Маріє, Тебе покірно:
За нас молися, щоб Бог Предвічний |
Дав нам у небі спасіння вічне.    | (2)

Злучи нас в небі в одну родину,
В вічній святині Божого Сина,
Щоби вклонились ми Тобі в ноги    |
Там біля трону Господа Бога.      | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2398313';
DELETE FROM song_versions WHERE song_id = 'pisniua_2398313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2398313';
DELETE FROM songs WHERE id = 'pisniua_2398313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2398313','Дозвольте вбогому мені','Музика: Олег Сартаков Слова: Ігнатій Антіохійський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Дозвольте вбогому мені
Сказати слово:
Не знаю радості окрім мого хреста!
Дозвольте тільки стати жертвою
В зубах нещадно злого.
Нехай зітре в муку на хліб Христа! | (2)

Насправді, як чудова річ зійти зо світу,
Щоби постати знову з мертвих до життя!
Моєю силою хай буде тайна від очей укрита
Є Бог в мені і не лякаюсь я!       | (2)

І тільки зараз все для мене оживає,
І лиш тепер я сильний силою Творця;
Тепер я вільний і покірний,
Бо для мене смерть вмирає
Й я цілий світ вважаю за сміття!   | (2)

Ніщо є небо і земля, і підземелля,
Всі царства світу, окрім того де любов.
Вітайте грішника, що входить
На таке гучне Весілля,
Де споживають Тіло і п''ють Кров!   | (2)

Дозвольте вбогому напитись з чаші Бога,
В розквіті сил не бачу іншого кінця,
Пульсує серце і не так
Страшною є оця дорога,
Коли за пару кроків небеса!        | (2)','[''pisni.org.ua'', ''cat:strasni'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2398313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2398313','Дозвольте вбогому мені','Дозвольте вбогому мені
Сказати слово:
Не знаю радості окрім мого хреста!
Дозвольте тільки стати жертвою
В зубах нещадно злого.
Нехай зітре в муку на хліб Христа! | (2)

Насправді, як чудова річ зійти зо світу,
Щоби постати знову з мертвих до життя!
Моєю силою хай буде тайна від очей укрита
Є Бог в мені і не лякаюсь я!       | (2)

І тільки зараз все для мене оживає,
І лиш тепер я сильний силою Творця;
Тепер я вільний і покірний,
Бо для мене смерть вмирає
Й я цілий світ вважаю за сміття!   | (2)

Ніщо є небо і земля, і підземелля,
Всі царства світу, окрім того де любов.
Вітайте грішника, що входить
На таке гучне Весілля,
Де споживають Тіло і п''ють Кров!   | (2)

Дозвольте вбогому напитись з чаші Бога,
В розквіті сил не бачу іншого кінця,
Пульсує серце і не так
Страшною є оця дорога,
Коли за пару кроків небеса!        | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_239990';
DELETE FROM song_versions WHERE song_id = 'pisniua_239990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_239990';
DELETE FROM songs WHERE id = 'pisniua_239990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_239990','Артанія','Музика: Василь Лютий Слова: Василь Лютий. Виконує: Василь Лютий','uk','ukraine_1991',NULL,NULL,'1. Компакт-диск "Щит Перуна" (Збірка сучасних пісень-славнів Межимира Миколаїва та Живосила Лютого) http://www.vasyl.com.ua/ 2. http://www.vasyl.com.ua/texts/artania.htm','Основий текст подано за джерелом 1. Акорди підібрано на слух за джерелом 1. * Черекиси (першозвучання слова "черкаси") - косаки-мечоносці. (Цю інформацію надав: jivosil@mail.ru) ** У дужках подано варіант тексту із джерела 2. Один із використаних акордів: A* [0 0 2 2 x 0]. Підбір акордів: bohdanko (pisni.org.ua)','Вступ:  A*

Вже луги одцвіли    і померзли ліси,
Чисте дзеркало рік не блищить, як колись-бо...
... Сонця й степу сини    йшли на захист Русі,
Не давали свою зруйнувати колиску.

Приспів:
Артанія - рідний край, де зродився і ріс,
Артанія, я не бачив твоїх гірких сліз,
С               Hm       F      G       A*
Але бачив на заході сонця силуети твоїх черекис.*

(Приспів:
Артанія - рідний край, де зродився і жив,
Артанія, відчував я твій біль і твій гнів,
І побачив на заході сонця
світлі образи давніх часів.)**

Скільки літ відбуло, скільки вітрів гуло,
Скільки злив заливало священну цю землю.
Падав тут печеніг до порогів твоїх,
Падав турок, татарин, і скошений стих.
(Падав турок, хозарин на зхресті доріг.)**

Приспів.

Волелюбливий край! Ти і зараз згадай,
Як тікали з твоїх берегів посіпаки.
(Перемогою вкриті долини і шляхи.)**
Край арійських вождів і русинських князів,
Славний край козаків, край гайдамаків.
(Рідний край козаків, край гайдамаків.)**

Приспів.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_239990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_239990','Артанія','Вступ:  A*

Вже луги одцвіли    і померзли ліси,
Чисте дзеркало рік не блищить, як колись-бо...
... Сонця й степу сини    йшли на захист Русі,
Не давали свою зруйнувати колиску.

Приспів:
Артанія - рідний край, де зродився і ріс,
Артанія, я не бачив твоїх гірких сліз,
С               Hm       F      G       A*
Але бачив на заході сонця силуети твоїх черекис.*

(Приспів:
Артанія - рідний край, де зродився і жив,
Артанія, відчував я твій біль і твій гнів,
І побачив на заході сонця
світлі образи давніх часів.)**

Скільки літ відбуло, скільки вітрів гуло,
Скільки злив заливало священну цю землю.
Падав тут печеніг до порогів твоїх,
Падав турок, татарин, і скошений стих.
(Падав турок, хозарин на зхресті доріг.)**

Приспів.

Волелюбливий край! Ти і зараз згадай,
Як тікали з твоїх берегів посіпаки.
(Перемогою вкриті долини і шляхи.)**
Край арійських вождів і русинських князів,
Славний край козаків, край гайдамаків.
(Рідний край козаків, край гайдамаків.)**

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_239990_l1','pisniua_239990','http://www.vasyl.com.ua/','http://www.vasyl.com.ua/','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2399394';
DELETE FROM song_versions WHERE song_id = 'pisniua_2399394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2399394';
DELETE FROM songs WHERE id = 'pisniua_2399394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2399394','Спи солодко, маля','Музика: Йоганнес Брамс Слова: невідомий','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Спи солодко, маля,
До наступного дня.
Сон злітає із долонь,
Спи до сходу ранніх зір.

Мама пісню співа
Для свого немовля...
Мама пісню співа
Для свого немовля...

Всі тваринки вже сплять,
Лиш дерева шумлять...
Сон злітає із долонь,
Спи до сходу ранніх зір.

Ранок знов в ранній час
Збудить ніжно всіх нас...
Ранок знов в ранній час
Збудить ніжно всіх нас...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2399394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2399394','Спи солодко, маля','Спи солодко, маля,
До наступного дня.
Сон злітає із долонь,
Спи до сходу ранніх зір.

Мама пісню співа
Для свого немовля...
Мама пісню співа
Для свого немовля...

Всі тваринки вже сплять,
Лиш дерева шумлять...
Сон злітає із долонь,
Спи до сходу ранніх зір.

Ранок знов в ранній час
Збудить ніжно всіх нас...
Ранок знов в ранній час
Збудить ніжно всіх нас...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2399394_l1','pisniua_2399394','YouTube','https://www.youtube.com/watch?v=LAGypBeaM2U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2398471';
DELETE FROM song_versions WHERE song_id = 'pisniua_2398471';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2398471';
DELETE FROM songs WHERE id = 'pisniua_2398471';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2398471','О, Мати Божа, до серця Твого',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'О, Мати Божа, до серця Твого,
Мечами болю пораненого,
Кличемо, бідні, з плачем, сльозами,
Розрадо грішних, молись за нами!

Коли людська злість Христа убила,
В болю смертельнім Ти нас зродила:
Будь милостива, Мати, над нами.
Розрадо грішних, молись за нами!

Ми, Твої діти, Тебе благаєм,
В нужді, в потребі кличем, взиваєм:
Рятуй нас Серця Твого ласками,
Розрадо грішних, молись за нами!

О, Мати наша, Мати потіхи
Нас не лишай своєї опіки:
Ми такі бідні, як Ти не з нами.
Розрадо грішних, молись за нами!

Коли ж останній наш час надлине,
Нашії очі тої години,
Ти нам своїми примкни руками,
Розрадо грішних, молись за нами!','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2398471'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2398471','О, Мати Божа, до серця Твого','О, Мати Божа, до серця Твого,
Мечами болю пораненого,
Кличемо, бідні, з плачем, сльозами,
Розрадо грішних, молись за нами!

Коли людська злість Христа убила,
В болю смертельнім Ти нас зродила:
Будь милостива, Мати, над нами.
Розрадо грішних, молись за нами!

Ми, Твої діти, Тебе благаєм,
В нужді, в потребі кличем, взиваєм:
Рятуй нас Серця Твого ласками,
Розрадо грішних, молись за нами!

О, Мати наша, Мати потіхи
Нас не лишай своєї опіки:
Ми такі бідні, як Ти не з нами.
Розрадо грішних, молись за нами!

Коли ж останній наш час надлине,
Нашії очі тої години,
Ти нам своїми примкни руками,
Розрадо грішних, молись за нами!');
DELETE FROM song_links WHERE song_id = 'pisniua_2399653';
DELETE FROM song_versions WHERE song_id = 'pisniua_2399653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2399653';
DELETE FROM songs WHERE id = 'pisniua_2399653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2399653','О, Маріє, Діво-Мати',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'О, Маріє, Діво-Мати,
Глянь з небес на свої діти.
Серце чисте і сумління
Ми Тобі даруєм нині.
Хай любов Твоя пречиста
Нам сіяє променисто!

Ми за Матір Тебе маєм
І смиренно всі благаєм:
Мати Божа Непорочна,
Шлях вкажи у життя вічне,
Дай любові ласку щиру
І зміцни Ти нашу віру!

Поможи в гріховнім світі
Розірвать пекельні сіті,
Руку дай, Діво Маріє,
І всели в серця надію.
Вдячні ми Тобі довіку,
Що береш нас під опіку!','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2399653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2399653','О, Маріє, Діво-Мати','О, Маріє, Діво-Мати,
Глянь з небес на свої діти.
Серце чисте і сумління
Ми Тобі даруєм нині.
Хай любов Твоя пречиста
Нам сіяє променисто!

Ми за Матір Тебе маєм
І смиренно всі благаєм:
Мати Божа Непорочна,
Шлях вкажи у життя вічне,
Дай любові ласку щиру
І зміцни Ти нашу віру!

Поможи в гріховнім світі
Розірвать пекельні сіті,
Руку дай, Діво Маріє,
І всели в серця надію.
Вдячні ми Тобі довіку,
Що береш нас під опіку!');
DELETE FROM song_links WHERE song_id = 'pisniua_2398395';
DELETE FROM song_versions WHERE song_id = 'pisniua_2398395';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2398395';
DELETE FROM songs WHERE id = 'pisniua_2398395';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2398395','Маємо','Музика: Vanek Klimenko, MamaRika, Sergii Sidorenko Слова: Vanek Klimenko, Ennyday, MamaRika. Виконує: MamaRika','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Припустимо, тебе не буде,
Почну шукати всюди
Пустими вулицями,
Наче божевільна буду...
Якщо тебе не стане,
То ким без тебе стану?..
З пустим візком
В сльозах блукатиму, ніби сама...
Я мабуть з''їду з глузду,
Все не матиме сенсу,
Вже не пускаю друзів в гості,
Зачинене серце...
Буду дивитись фото,
Сльозами все залито...
Згадаю ті хвилини,
Коли ми несамовиті...
Але ти є!.. Але ти є
Зараз тут і поруч!..
До чого ці думки?.. -
Якби їх сказала в голос,
Ти б спитав: Ти хвора?

Приспів:
Ми не завжди цінуємо,           |
Те, що маємо, не тримаємо...    |
І не завжди цілуємо тих,        |
Кого ми насправді кохаємо!..    | (2)

Якщо тебе не буде,
То всі навколо люди
Для мене просто зникнуть,
Попадуть в мої Бермуди...
Якщо тебе не стане,
Прокинусь дуже рано,
Піду шукати тебе небесами
І зникну в тумані...
Скромність цінніша за розкіш,   |
Щирість сильніша за гроші,      |
В твоєму сонці мій розквіт,     |
Записуй в мене, я - твій зошит! | (2)

Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2398395'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2398395','Маємо','Припустимо, тебе не буде,
Почну шукати всюди
Пустими вулицями,
Наче божевільна буду...
Якщо тебе не стане,
То ким без тебе стану?..
З пустим візком
В сльозах блукатиму, ніби сама...
Я мабуть з''їду з глузду,
Все не матиме сенсу,
Вже не пускаю друзів в гості,
Зачинене серце...
Буду дивитись фото,
Сльозами все залито...
Згадаю ті хвилини,
Коли ми несамовиті...
Але ти є!.. Але ти є
Зараз тут і поруч!..
До чого ці думки?.. -
Якби їх сказала в голос,
Ти б спитав: Ти хвора?

Приспів:
Ми не завжди цінуємо,           |
Те, що маємо, не тримаємо...    |
І не завжди цілуємо тих,        |
Кого ми насправді кохаємо!..    | (2)

Якщо тебе не буде,
То всі навколо люди
Для мене просто зникнуть,
Попадуть в мої Бермуди...
Якщо тебе не стане,
Прокинусь дуже рано,
Піду шукати тебе небесами
І зникну в тумані...
Скромність цінніша за розкіш,   |
Щирість сильніша за гроші,      |
В твоєму сонці мій розквіт,     |
Записуй в мене, я - твій зошит! | (2)

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2398395_l1','pisniua_2398395','YouTube','https://www.youtube.com/watch?v=I4ohMm6Odf0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2398624';
DELETE FROM song_versions WHERE song_id = 'pisniua_2398624';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2398624';
DELETE FROM songs WHERE id = 'pisniua_2398624';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2398624','Жальменіна','Українська народна пісня. Виконує: Go-A','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, на горі жита много,
Половина зеленого.
Пішли його дівки жати
Та й забули серпи взяти.
Посилала мене мати
Зеленого жита жати,
А я серпи закину
Та й до хлопців полину!

Приспів:
Жаль мені на козака,  |
Жаль мені на його,    |
Розтоптала черевички, |
Ходячи до його!       | (2)

Прийди, прийди, прехороший,
Скинь чоботи - прийди босий,
Щоб підківки не бряжчали,
Щоб собаки не брехали!
Прийшов, прийшов нехороший,
Приніс мені торбу грошей,
А я грошей не схотіла,
За хорошим полетіла!

Приспів.

Тепер мені погулять,
Поки ноги не болять,
А як будуть боліти,
Буду дома сидіти!
Ой, танцюю ще й хочеться,
Вже й устілка волочеться,
Я й устілку підв''яжу
Та й до хлопців побіжу!

Приспів.

Розтоптала черевички, |
Ходячи до його!       | (2)','[''pisni.org.ua'', ''cat:philosophic'', ''cat:viyskovi'', ''cat:zhartivlyvi'', ''Філософські пісні'', ''Пісні на військову тематику'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2398624'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2398624','Жальменіна','Ой, на горі жита много,
Половина зеленого.
Пішли його дівки жати
Та й забули серпи взяти.
Посилала мене мати
Зеленого жита жати,
А я серпи закину
Та й до хлопців полину!

Приспів:
Жаль мені на козака,  |
Жаль мені на його,    |
Розтоптала черевички, |
Ходячи до його!       | (2)

Прийди, прийди, прехороший,
Скинь чоботи - прийди босий,
Щоб підківки не бряжчали,
Щоб собаки не брехали!
Прийшов, прийшов нехороший,
Приніс мені торбу грошей,
А я грошей не схотіла,
За хорошим полетіла!

Приспів.

Тепер мені погулять,
Поки ноги не болять,
А як будуть боліти,
Буду дома сидіти!
Ой, танцюю ще й хочеться,
Вже й устілка волочеться,
Я й устілку підв''яжу
Та й до хлопців побіжу!

Приспів.

Розтоптала черевички, |
Ходячи до його!       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2398624_l1','pisniua_2398624','YouTube','https://www.youtube.com/watch?v=1iCcwtoU8o0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2399675';
DELETE FROM song_versions WHERE song_id = 'pisniua_2399675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2399675';
DELETE FROM songs WHERE id = 'pisniua_2399675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2399675','О, милосердна, Пресвята Маріє',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'О, милосердна, Пресвята Маріє,
Як Твоя ласка рятувати вміє!
Тож хай осушить сльози сиротині,
А в горі поміч дасть кожній людині.

Хто нас пригорне, хто нас обігріє?
Лиш Ти єдина, Пресвята Маріє,
Бо Твоє Серце кожному відкрите,
Знайдуть притулок тут всі Твої діти.

Дай нам, Діво, віру і надію,
За нас помолися, Пресвята Маріє,
Щоб в небесах ми з Богом проживали,
Осанну вічну там Йому співали.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2399675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2399675','О, милосердна, Пресвята Маріє','О, милосердна, Пресвята Маріє,
Як Твоя ласка рятувати вміє!
Тож хай осушить сльози сиротині,
А в горі поміч дасть кожній людині.

Хто нас пригорне, хто нас обігріє?
Лиш Ти єдина, Пресвята Маріє,
Бо Твоє Серце кожному відкрите,
Знайдуть притулок тут всі Твої діти.

Дай нам, Діво, віру і надію,
За нас помолися, Пресвята Маріє,
Щоб в небесах ми з Богом проживали,
Осанну вічну там Йому співали.');
DELETE FROM song_links WHERE song_id = 'pisniua_2399697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2399697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2399697';
DELETE FROM songs WHERE id = 'pisniua_2399697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2399697','Плащем опіки',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Плащем опіки, Мати Пречиста,
Ти огорни нам Церкву святую.
Нехай лунає пісня велична
Твоєму Сину на віки вічні.

Хай Твоє Серце Отця Святого
У небезпеках оберігає,
Для нього сили випроси в Бога
Нехай він паству веде до Раю.

Нашу державу, наші народи
Тобі, Маріє, ми повіряєм:
Нехай спасе нас Серце Господнє,
Ми милосердя в Нього благаєм!','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2399697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2399697','Плащем опіки','Плащем опіки, Мати Пречиста,
Ти огорни нам Церкву святую.
Нехай лунає пісня велична
Твоєму Сину на віки вічні.

Хай Твоє Серце Отця Святого
У небезпеках оберігає,
Для нього сили випроси в Бога
Нехай він паству веде до Раю.

Нашу державу, наші народи
Тобі, Маріє, ми повіряєм:
Нехай спасе нас Серце Господнє,
Ми милосердя в Нього благаєм!');
DELETE FROM song_links WHERE song_id = 'pisniua_2399971';
DELETE FROM song_versions WHERE song_id = 'pisniua_2399971';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2399971';
DELETE FROM songs WHERE id = 'pisniua_2399971';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2399971','Чудова Мати',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Чудова Мати - так Тебе звуть,
Помочі в біді від Тебе ждуть,
Бо Ти, бо Ти, бо Ти допомагаєш нам,
І Твій, Маріє, погляд на нас є
Потіхою у кожний час.
Бо Ти, бо Ти, бо Ти надія нам!

Приспів:
Стільки літ Ти нас любиш,
Любиш безустанно,
Відкриваєш серце для всіх поіменно,
Ти є нам правди дорога до Сина.
За всі турботи і Твої старання
Віддаємо серця Тобі без вагання,
Дякуєм щиро, що Ти нам Мати!

До Тебе, Мати, ми прибуваєм,
Про заступництво Тебе благаєм,
Бо Ти, бо Ти, бо Ти - опіка нам,
Ти подаєш нам свою допомогу,
З сердець відкидаєш гріхів тривогу,
Бо Ти, бо Ти, бо Ти - рятунок нам!

Приспів.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2399971'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2399971','Чудова Мати','Чудова Мати - так Тебе звуть,
Помочі в біді від Тебе ждуть,
Бо Ти, бо Ти, бо Ти допомагаєш нам,
І Твій, Маріє, погляд на нас є
Потіхою у кожний час.
Бо Ти, бо Ти, бо Ти надія нам!

Приспів:
Стільки літ Ти нас любиш,
Любиш безустанно,
Відкриваєш серце для всіх поіменно,
Ти є нам правди дорога до Сина.
За всі турботи і Твої старання
Віддаємо серця Тобі без вагання,
Дякуєм щиро, що Ти нам Мати!

До Тебе, Мати, ми прибуваєм,
Про заступництво Тебе благаєм,
Бо Ти, бо Ти, бо Ти - опіка нам,
Ти подаєш нам свою допомогу,
З сердець відкидаєш гріхів тривогу,
Бо Ти, бо Ти, бо Ти - рятунок нам!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_239890';
DELETE FROM song_versions WHERE song_id = 'pisniua_239890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_239890';
DELETE FROM songs WHERE id = 'pisniua_239890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_239890','Дніпропетровськ','Музика: Євген Шантир Слова: Євген Шантир. Виконує: Євген Шантир','uk','ukraine_before_1917',NULL,NULL,NULL,'Збірка пісень "КОРАБЛИК"','Там, де Дніпро несе широкі води
І береги славетні пролягли,
Дніпропетровськ на пагорбах свободи
Підняв своєї долі прапори.
Приспів:
Дніпропетровськ - мій рідний край,
Живи в віках і процвітай,
І  Україну, Україну  прославляй!
Дніпропетровськ - тобі мої вітання,
Хай сяє сонце й линуть журавлі,
Дніпропетровськ - даруєш ти кохання,
Що зостається в квітах на Землі.
Приспів.
Ростуть твої масиви  і все вище
Злітають мрії у своїй меті,
Дніпропетровськ, я знаю ти найкраще,
Моє найкраще місто у житті!
Приспів.
На світ увесь відомі і величні,
Дніпропетровськ, горять твої Зірки,
Твої проспекти й площі - історичні,
Летять над ними білі голубки.
Приспів.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:himny-marshi'', ''cat:krasa-pryrody'', ''cat:socialno-pobutovi'', ''cat:suspilno-politychni'', ''cat:zahalni-cinnosti'', ''Бардівські пісні'', ''Гимни та марші'', ''Пісні про красу природи'', ''Соціально-побутові пісні'', ''Суспільно-політичні пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_239890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_239890','Дніпропетровськ','Там, де Дніпро несе широкі води
І береги славетні пролягли,
Дніпропетровськ на пагорбах свободи
Підняв своєї долі прапори.
Приспів:
Дніпропетровськ - мій рідний край,
Живи в віках і процвітай,
І  Україну, Україну  прославляй!
Дніпропетровськ - тобі мої вітання,
Хай сяє сонце й линуть журавлі,
Дніпропетровськ - даруєш ти кохання,
Що зостається в квітах на Землі.
Приспів.
Ростуть твої масиви  і все вище
Злітають мрії у своїй меті,
Дніпропетровськ, я знаю ти найкраще,
Моє найкраще місто у житті!
Приспів.
На світ увесь відомі і величні,
Дніпропетровськ, горять твої Зірки,
Твої проспекти й площі - історичні,
Летять над ними білі голубки.
Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2399952';
DELETE FROM song_versions WHERE song_id = 'pisniua_2399952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2399952';
DELETE FROM songs WHERE id = 'pisniua_2399952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2399952','Цариці Небесній співаймо',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Цариці Небесній співаймо,
Квітчаймо святий Її трон.
Серця Їй у власність віддаймо,
І сльози, і всю любов.
О, Маріє, радуйся на небі,      |
Нас до серця пригортай!         | (2)

У руки Твої, Божа Мати,
Складає дари нам Господь.
Довіку Тебе прославляти -
Найвища із нагород.
Небесний Цвіт, зоряна Царівно - |
Усміх Твій віщує Рай!           | (2)','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2399952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2399952','Цариці Небесній співаймо','Цариці Небесній співаймо,
Квітчаймо святий Її трон.
Серця Їй у власність віддаймо,
І сльози, і всю любов.
О, Маріє, радуйся на небі,      |
Нас до серця пригортай!         | (2)

У руки Твої, Божа Мати,
Складає дари нам Господь.
Довіку Тебе прославляти -
Найвища із нагород.
Небесний Цвіт, зоряна Царівно - |
Усміх Твій віщує Рай!           | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2399818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2399818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2399818';
DELETE FROM songs WHERE id = 'pisniua_2399818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2399818','В чистім безмежному полі','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'За волю України. Антологія пісень національно-визвольних змагань. Упорядник Євген Гіщинський. — Луцьк: Видавництво "Волинська обласна друкарня", 2002. — 316 с.','Пісню виконує Святослав Силенко.','В чистім безмежному полі
Стрілець ранений лежав,
Прийшов до нього вороний    |
І так жалібно заржав.       | (2)

Стрілець, розплющивши очі,
Глянув на свого коня:
"Прощай, мій коню вороний,  |
Я вже кінчаю життя.         | (2)

Не жаль ми тих темних ночей,
Що я в підпіллю гуляв,
Лиш жаль ми тих карих очей, |
Що я так вірно кохав".      | (2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2399818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2399818','В чистім безмежному полі','В чистім безмежному полі
Стрілець ранений лежав,
Прийшов до нього вороний    |
І так жалібно заржав.       | (2)

Стрілець, розплющивши очі,
Глянув на свого коня:
"Прощай, мій коню вороний,  |
Я вже кінчаю життя.         | (2)

Не жаль ми тих темних ночей,
Що я в підпіллю гуляв,
Лиш жаль ми тих карих очей, |
Що я так вірно кохав".      | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2400420';
DELETE FROM song_versions WHERE song_id = 'pisniua_2400420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2400420';
DELETE FROM songs WHERE id = 'pisniua_2400420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2400420','Ось вони – молоді агнці',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Ось вони - молоді агнці,
Ось вони, що заспівали "Алілуя!"
Прийшли до струменя світла,
З джерела Бога напились.

Алілуя, Алілуя!
На бенкеті Агнця Бога,
Одягнувшись в білі шати
На кривавих водах моря
Хочем піснь Христу співати!

Приспів.

Як дар своєї любові,
Наші вини нам прощає.
Своїм Тілом нас годує
Кров''ю Він нас обмиває!

Приспів.

Двері кров''ю помазані
Ангел смерті обминає,
Ворогів Червоне море
В своїх водах поглинає.

Приспів.

Ти є Пасхою, о, Христе!
За нас жертвою спасіння!
Ти є білим прісним хлібом,
Для людей - благовоління!

Приспів.

Ти - свята небесна жертва,
Сили зла перемагаєш,
Розриваєш пута смерті
До життя нас закликаєш!

Приспів.

Слава і Отцю, і Сину,
Що із мертвих воскресає!
Слава теж Святому Духу,
Хай по всі віки лунає!

Приспів.','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2400420'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2400420','Ось вони – молоді агнці','Приспів:
Ось вони - молоді агнці,
Ось вони, що заспівали "Алілуя!"
Прийшли до струменя світла,
З джерела Бога напились.

Алілуя, Алілуя!
На бенкеті Агнця Бога,
Одягнувшись в білі шати
На кривавих водах моря
Хочем піснь Христу співати!

Приспів.

Як дар своєї любові,
Наші вини нам прощає.
Своїм Тілом нас годує
Кров''ю Він нас обмиває!

Приспів.

Двері кров''ю помазані
Ангел смерті обминає,
Ворогів Червоне море
В своїх водах поглинає.

Приспів.

Ти є Пасхою, о, Христе!
За нас жертвою спасіння!
Ти є білим прісним хлібом,
Для людей - благовоління!

Приспів.

Ти - свята небесна жертва,
Сили зла перемагаєш,
Розриваєш пута смерті
До життя нас закликаєш!

Приспів.

Слава і Отцю, і Сину,
Що із мертвих воскресає!
Слава теж Святому Духу,
Хай по всі віки лунає!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2399990';
DELETE FROM song_versions WHERE song_id = 'pisniua_2399990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2399990';
DELETE FROM songs WHERE id = 'pisniua_2399990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2399990','Як зернятка розарію',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ми також маємо свої благовіщення,
Ми також чекаємо Твоїх відвідин,
Ми також Ісуса шукаємо
З тремтінням серця,
В таємницях радісних молися з нами!

Приспів:
Як зернятка розарію
Пересуваються в руках,
Так наші радості і смутки.
А Ти Богу їх занеси
З''єднані в розарій,
Богородице, повна благодаті.

Ти також терпіла і мала тривоги,
Пізнала, як ніхто, наші дороги.
Коли оточить морок нас, ми не самі,
В таємницях скорботних молися з нами.

Приспів.

Ми також маємо Батьківщину в небі
Там, в яскравім сяйві, побачимо Тебе.
У великій радості всі зустрінемося,
В таємницях славних молися за нами.

Приспів.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2399990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2399990','Як зернятка розарію','Ми також маємо свої благовіщення,
Ми також чекаємо Твоїх відвідин,
Ми також Ісуса шукаємо
З тремтінням серця,
В таємницях радісних молися з нами!

Приспів:
Як зернятка розарію
Пересуваються в руках,
Так наші радості і смутки.
А Ти Богу їх занеси
З''єднані в розарій,
Богородице, повна благодаті.

Ти також терпіла і мала тривоги,
Пізнала, як ніхто, наші дороги.
Коли оточить морок нас, ми не самі,
В таємницях скорботних молися з нами.

Приспів.

Ми також маємо Батьківщину в небі
Там, в яскравім сяйві, побачимо Тебе.
У великій радості всі зустрінемося,
В таємницях славних молися за нами.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2399910';
DELETE FROM song_versions WHERE song_id = 'pisniua_2399910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2399910';
DELETE FROM songs WHERE id = 'pisniua_2399910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2399910','Три лілеї',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ой, як любить, милі діти,
Богородиця ті квіти,
Що несе мала дитина до Її стіп,
Бо та квіточка біленька є
Прообразом серденька тих дітей,
Що пам''ятають про Творця.

Приспів:
Подаруйте, любі діти
Для Марії
Три лілеї запашні,
А з букетиком, малеча,
Так хутенько,
Ще й серденько молоде!

Мати Божа все чекає
Та з Ісусом виглядає
Тих дітей, що ще блукають
Без Христа.
Бо лише той, хто знає Бога,
Знає також неньку Того,
Хто за матір дав нам
Діву у житті!

Приспів.

Щастя - дар, запам''ятайте,
Та й квапливо зодягайте
Ваші душі в пишний одяг
Добрих діл.
А Марія допоможе
Відшукати Царство Боже
І навіки загостити у Раю!

Приспів.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2399910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2399910','Три лілеї','Ой, як любить, милі діти,
Богородиця ті квіти,
Що несе мала дитина до Її стіп,
Бо та квіточка біленька є
Прообразом серденька тих дітей,
Що пам''ятають про Творця.

Приспів:
Подаруйте, любі діти
Для Марії
Три лілеї запашні,
А з букетиком, малеча,
Так хутенько,
Ще й серденько молоде!

Мати Божа все чекає
Та з Ісусом виглядає
Тих дітей, що ще блукають
Без Христа.
Бо лише той, хто знає Бога,
Знає також неньку Того,
Хто за матір дав нам
Діву у житті!

Приспів.

Щастя - дар, запам''ятайте,
Та й квапливо зодягайте
Ваші душі в пишний одяг
Добрих діл.
А Марія допоможе
Відшукати Царство Боже
І навіки загостити у Раю!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2400498';
DELETE FROM song_versions WHERE song_id = 'pisniua_2400498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2400498';
DELETE FROM songs WHERE id = 'pisniua_2400498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2400498','Веселіться, християни',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Веселіться, християни,
Бо Христос сьогодні з нами!
Після мук, страждань тілесних
Браму нам відкрив небесну!
Алілуя!

Богу честь і шану даймо,
Його велич вихваляймо!.
З волі Батька сам Син Божий
За нас цю офіру зложить!
Алілуя!

Господу хвалу співаймо,
Святу Трійцю прославляймо!
Нехай Ім''я Боже всюди
На землі цій славлять люди!
Алілуя!','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2400498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2400498','Веселіться, християни','Веселіться, християни,
Бо Христос сьогодні з нами!
Після мук, страждань тілесних
Браму нам відкрив небесну!
Алілуя!

Богу честь і шану даймо,
Його велич вихваляймо!.
З волі Батька сам Син Божий
За нас цю офіру зложить!
Алілуя!

Господу хвалу співаймо,
Святу Трійцю прославляймо!
Нехай Ім''я Боже всюди
На землі цій славлять люди!
Алілуя!');
DELETE FROM song_links WHERE song_id = 'pisniua_2400063';
DELETE FROM song_versions WHERE song_id = 'pisniua_2400063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2400063';
DELETE FROM songs WHERE id = 'pisniua_2400063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2400063','Радуйся, мудра Діво',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Радуйся, мудра Діво,
Бога дім священний,
Що сімома стовпами
Красно оздоблений.

Від всього бруду світу
Захищена вповні,
Ти вже була святою
В материнськім лоні.

Ти - Мати всіх живущих,
Якова зірниця,
Святих небесна брама,
Ангельська Цариця.

Дияволу погубо,
Ти обман стоптала,
Опорою й спасінням
Християнам стала.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2400063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2400063','Радуйся, мудра Діво','Радуйся, мудра Діво,
Бога дім священний,
Що сімома стовпами
Красно оздоблений.

Від всього бруду світу
Захищена вповні,
Ти вже була святою
В материнськім лоні.

Ти - Мати всіх живущих,
Якова зірниця,
Святих небесна брама,
Ангельська Цариця.

Дияволу погубо,
Ти обман стоптала,
Опорою й спасінням
Християнам стала.');
DELETE FROM song_links WHERE song_id = 'pisniua_2400369';
DELETE FROM song_versions WHERE song_id = 'pisniua_2400369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2400369';
DELETE FROM songs WHERE id = 'pisniua_2400369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2400369','Радуйся, Місто втечі',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Радуйся, Місто втечі,
О, вежо укріплена,
Давидова, що муром
Й зброєю зміцнена.

Любов''ю при зачатті
Святою палала,
Дракона Ти ворожу
Силу потоптала.

Юдито непереможна,
Жінко безбоязна,
Як Авішаг прекрасна,
Давиду приязна.

Спасіння від Єгипту
Рахиль народила,
Спасителя же світу
Марія сповила.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2400369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2400369','Радуйся, Місто втечі','Радуйся, Місто втечі,
О, вежо укріплена,
Давидова, що муром
Й зброєю зміцнена.

Любов''ю при зачатті
Святою палала,
Дракона Ти ворожу
Силу потоптала.

Юдито непереможна,
Жінко безбоязна,
Як Авішаг прекрасна,
Давиду приязна.

Спасіння від Єгипту
Рахиль народила,
Спасителя же світу
Марія сповила.');
DELETE FROM song_links WHERE song_id = 'pisniua_2400573';
DELETE FROM song_versions WHERE song_id = 'pisniua_2400573';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2400573';
DELETE FROM songs WHERE id = 'pisniua_2400573';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2400573','Благослови, Сину Божий',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Благослови, Сину Божий, тих,
Хто Серце Твоє любить.
Нехай кожен скарб цей цінний |
Осягає і не згубить!         | (2)

Віддаємо Тобі, Спасе, всі серця,
Щоб обмив кров''ю,
Дав життя безгрішне, нове    |
І наповнене любов''ю.         | (2)

Найсвятіше Серце Боже,
Тебе Мати вихваляє,
Твою велич неосяжну земля    |
Й небо прославляє!           | (2)

Ти прости нам, Царю світу,
Відпусти наші провини.
Благослови Тобі вірних,      |
Наш Спасителю єдиний!        | (2)

Залишайся, Христе, з нами,
Люд з''єднай в святій любові,
Щоби Серця Твого промінь     |
Зігрівав нас в Божім Слові!  | (2)','[''pisni.org.ua'', ''cat:christ'', ''Пісні до Ісуса Христа'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2400573'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2400573','Благослови, Сину Божий','Благослови, Сину Божий, тих,
Хто Серце Твоє любить.
Нехай кожен скарб цей цінний |
Осягає і не згубить!         | (2)

Віддаємо Тобі, Спасе, всі серця,
Щоб обмив кров''ю,
Дав життя безгрішне, нове    |
І наповнене любов''ю.         | (2)

Найсвятіше Серце Боже,
Тебе Мати вихваляє,
Твою велич неосяжну земля    |
Й небо прославляє!           | (2)

Ти прости нам, Царю світу,
Відпусти наші провини.
Благослови Тобі вірних,      |
Наш Спасителю єдиний!        | (2)

Залишайся, Христе, з нами,
Люд з''єднай в святій любові,
Щоби Серця Твого промінь     |
Зігрівав нас в Божім Слові!  | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2400550';
DELETE FROM song_versions WHERE song_id = 'pisniua_2400550';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2400550';
DELETE FROM songs WHERE id = 'pisniua_2400550';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2400550','Божий Син воскрес',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Божий Син воскрес! Він з нами!
Алілуя!
Веселімось з ангелами!
Алілуя!
Тріумфує Божий Син!
Алілуя!
Неба спів підхоплюй, земле!
Алілуя!

Він любов''ю, що спасає,
Алілуя!
Мур ворожий розбиває!
Алілуя!
Поборов навіки смерть!
Алілуя!
До небес відкрив нам двері,
Алілуя!

Він живе і править нами!
Алілуя!
Підемо Його слідами!
Алілуя!
І воскреснем разом з Ним
Алілуя!
З хреста, гробу і темряви!
Алілуя!

Христе, воскресіння Царю,
Алілуя!
Неба й землі Володарю,
Алілуя!
В день тріумфу Твого честь
Алілуя!
Отцю, Сину й Духові!
Алілуя!

Церква Божа мир приносить,
Алілуя!
Воскресіння нам голосить,
Алілуя!
Лине пісня із небес,
Алілуя!
Божим світлом Він воскрес!
Алілуя!','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2400550'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2400550','Божий Син воскрес','Божий Син воскрес! Він з нами!
Алілуя!
Веселімось з ангелами!
Алілуя!
Тріумфує Божий Син!
Алілуя!
Неба спів підхоплюй, земле!
Алілуя!

Він любов''ю, що спасає,
Алілуя!
Мур ворожий розбиває!
Алілуя!
Поборов навіки смерть!
Алілуя!
До небес відкрив нам двері,
Алілуя!

Він живе і править нами!
Алілуя!
Підемо Його слідами!
Алілуя!
І воскреснем разом з Ним
Алілуя!
З хреста, гробу і темряви!
Алілуя!

Христе, воскресіння Царю,
Алілуя!
Неба й землі Володарю,
Алілуя!
В день тріумфу Твого честь
Алілуя!
Отцю, Сину й Духові!
Алілуя!

Церква Божа мир приносить,
Алілуя!
Воскресіння нам голосить,
Алілуя!
Лине пісня із небес,
Алілуя!
Божим світлом Він воскрес!
Алілуя!');
DELETE FROM song_links WHERE song_id = 'pisniua_2400665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2400665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2400665';
DELETE FROM songs WHERE id = 'pisniua_2400665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2400665','Тобі, наш Спасе, поклони щирі',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Тобі, наш Спасе, поклони щирі,
Що укріпляєш постійно в вірі.
Тебе спізнали народи світу
Через святеє Слово Завіту!

Ми - прах мізерний перед Тобою,
Веди нас, Христе, всіх за собою!
Ти - наш Спаситель, Бог наш Предвічний,
Слава про Тебе лунає вічна!

В Таїнстві нині Ти є укритий,
Щоб міг всіх вірних благословити!
Хай Твоя милість, Всевишній Боже,
Все зло на світі враз переможе!

Щиру пошану Тобі складаєм,
Благословіння Твого благаєм!
Коли розлука з тілом настане,
Хочемо бути з Тобою, Пане!','[''pisni.org.ua'', ''cat:christ'', ''Пісні до Ісуса Христа'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2400665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2400665','Тобі, наш Спасе, поклони щирі','Тобі, наш Спасе, поклони щирі,
Що укріпляєш постійно в вірі.
Тебе спізнали народи світу
Через святеє Слово Завіту!

Ми - прах мізерний перед Тобою,
Веди нас, Христе, всіх за собою!
Ти - наш Спаситель, Бог наш Предвічний,
Слава про Тебе лунає вічна!

В Таїнстві нині Ти є укритий,
Щоб міг всіх вірних благословити!
Хай Твоя милість, Всевишній Боже,
Все зло на світі враз переможе!

Щиру пошану Тобі складаєм,
Благословіння Твого благаєм!
Коли розлука з тілом настане,
Хочемо бути з Тобою, Пане!');
DELETE FROM song_links WHERE song_id = 'pisniua_2400414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2400414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2400414';
DELETE FROM songs WHERE id = 'pisniua_2400414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2400414','Ось день настав',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Ось день настав, що нам дав Господь,
Линуть пісні і радіємо всі:
Алілуя, Алілуя!

Ти, що живеш у вогняній хмарі,
Ти, що сидиш на троні з сапфірів
Істот таємних оточений хором
Боже вельми славний!

Приспів.

З хмар чиниш слухняні каравани,
Ти, що тримаєш всесвіт весь в долонях,
Як своїм послом, Ти керуєш вітром.
Боже Сотворителю!

Приспів.

Ти, що промовляв з палаючого куща,
Отче народу Старого Завіту,
Свій люд провів через червоні води.
Боже Спасіння!

Приспів.

Господи священиків, царів і пророків,
Золота святиня була Твоїм житлом
Ти однак вибрав Свій дім в нашому серці.
Боже Милосердя!

Приспів.

Щоб поєднати грішний люд з Собою,
Ти дав нам Сина, що став чоловіком,
Показавши в Нім велич Своєї Любові.
Боже Відкуплення!

Приспів.

Прийняв Він страждання, смерть і погребіння,
Пурпуром Своєї Любові повернув життя нам,
Третього дня повстав з темряви гробу.
Боже Воскресіння!

Приспів

Тобі, Найвищий величі повний,
Разом із Сином та полум''яним Духом,
Нехай буде слава, честь і подяка.
Боже завжди вірний!

Приспів.','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2400414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2400414','Ось день настав','Приспів:
Ось день настав, що нам дав Господь,
Линуть пісні і радіємо всі:
Алілуя, Алілуя!

Ти, що живеш у вогняній хмарі,
Ти, що сидиш на троні з сапфірів
Істот таємних оточений хором
Боже вельми славний!

Приспів.

З хмар чиниш слухняні каравани,
Ти, що тримаєш всесвіт весь в долонях,
Як своїм послом, Ти керуєш вітром.
Боже Сотворителю!

Приспів.

Ти, що промовляв з палаючого куща,
Отче народу Старого Завіту,
Свій люд провів через червоні води.
Боже Спасіння!

Приспів.

Господи священиків, царів і пророків,
Золота святиня була Твоїм житлом
Ти однак вибрав Свій дім в нашому серці.
Боже Милосердя!

Приспів.

Щоб поєднати грішний люд з Собою,
Ти дав нам Сина, що став чоловіком,
Показавши в Нім велич Своєї Любові.
Боже Відкуплення!

Приспів.

Прийняв Він страждання, смерть і погребіння,
Пурпуром Своєї Любові повернув життя нам,
Третього дня повстав з темряви гробу.
Боже Воскресіння!

Приспів

Тобі, Найвищий величі повний,
Разом із Сином та полум''яним Духом,
Нехай буде слава, честь і подяка.
Боже завжди вірний!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2400512';
DELETE FROM song_versions WHERE song_id = 'pisniua_2400512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2400512';
DELETE FROM songs WHERE id = 'pisniua_2400512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2400512','Радуйся, Маріє Пресвята!',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Радуйся, Маріє Пресвята,
Бо вже у гробі немає Христа!
Світлий прийшов воскресіння час.
Молися, Маріє, Ти за нас!
Алілуя! Алілуя!

Радуйся, Маріє Пресвята,
Проси за нас Ти у Сина-Христа,
Щоб ми у небі із ним жили
І Його вічно там славили!
Алілуя! Алілуя!','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2400512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2400512','Радуйся, Маріє Пресвята!','Радуйся, Маріє Пресвята,
Бо вже у гробі немає Христа!
Світлий прийшов воскресіння час.
Молися, Маріє, Ти за нас!
Алілуя! Алілуя!

Радуйся, Маріє Пресвята,
Проси за нас Ти у Сина-Христа,
Щоб ми у небі із ним жили
І Його вічно там славили!
Алілуя! Алілуя!');
DELETE FROM song_links WHERE song_id = 'pisniua_240124';
DELETE FROM song_versions WHERE song_id = 'pisniua_240124';
DELETE FROM songs_fts WHERE song_id = 'pisniua_240124';
DELETE FROM songs WHERE id = 'pisniua_240124';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_240124','Перший танець','Слова: Василь Бук','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Розступіться, панове, бо йде
В перший танець подружжя миле.
Як поважно, як гордо веде
Він кохану - лебідку білу.
І полинуть вони серед зали
І повік не забудеться днина
Коли сяяли очі, а губи шептали:
"Ти прекрасна моя половина".

Хай весілля гуля і співа
І гукає щомиті "Гірко!"
А для них тільки ці слова -
Мов єдина на небі зірка.
Цеї миті вони так чекали
І прийшла довгожданна хвилина
І два серця разом - як одне - прозвучали:
"Ти кохана моя половина".

Пролетять швидкоплинні літа,
Принесуть вам дітей і внуків.
Дай вам, Боже, разом до ста
Йти у парі, узявшись за руки
Щоб у цілому світі всі знали
Що у легку, щасливу хвилину
Одне одному щиро, навік ви сказали:
"Ти єдина моя половина".','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_240124'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_240124','Перший танець','Розступіться, панове, бо йде
В перший танець подружжя миле.
Як поважно, як гордо веде
Він кохану - лебідку білу.
І полинуть вони серед зали
І повік не забудеться днина
Коли сяяли очі, а губи шептали:
"Ти прекрасна моя половина".

Хай весілля гуля і співа
І гукає щомиті "Гірко!"
А для них тільки ці слова -
Мов єдина на небі зірка.
Цеї миті вони так чекали
І прийшла довгожданна хвилина
І два серця разом - як одне - прозвучали:
"Ти кохана моя половина".

Пролетять швидкоплинні літа,
Принесуть вам дітей і внуків.
Дай вам, Боже, разом до ста
Йти у парі, узявшись за руки
Щоб у цілому світі всі знали
Що у легку, щасливу хвилину
Одне одному щиро, навік ви сказали:
"Ти єдина моя половина".');
DELETE FROM song_links WHERE song_id = 'pisniua_2403512';
DELETE FROM song_versions WHERE song_id = 'pisniua_2403512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2403512';
DELETE FROM songs WHERE id = 'pisniua_2403512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2403512','Рушник','Музика: Олена Білоконь Слова: Зоя Журавка. Виконує: Олена Білоконь','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вишивала мати рушники для доні,
Вишивала маки пелюстки червоні,
Вишивала сонце, золоте колосся,
Щоб коханій доні все життя вдалося!

Приспів:
Долю, долю вишивала мати, |
Вишивала доні             |
Щастя на рушник стати!    | (2)

Вишивала мальви білі та рожеві,
Щоб стежки-доріжки всі були веселі,
Щоб коханій доні горя й бід не знати,
Голуба й голубку вишивала мати!

Приспів.

Вишила калину, вишила червону,
Стежечку барвінком до рідного додому,
Щоб з доріг далеких завжди поверталась,
Оберіг на щастя доні вишивала!

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2403512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2403512','Рушник','Вишивала мати рушники для доні,
Вишивала маки пелюстки червоні,
Вишивала сонце, золоте колосся,
Щоб коханій доні все життя вдалося!

Приспів:
Долю, долю вишивала мати, |
Вишивала доні             |
Щастя на рушник стати!    | (2)

Вишивала мальви білі та рожеві,
Щоб стежки-доріжки всі були веселі,
Щоб коханій доні горя й бід не знати,
Голуба й голубку вишивала мати!

Приспів.

Вишила калину, вишила червону,
Стежечку барвінком до рідного додому,
Щоб з доріг далеких завжди поверталась,
Оберіг на щастя доні вишивала!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2403512_l1','pisniua_2403512','YouTube','https://www.youtube.com/watch?v=0I-0_RLeq18','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2400596';
DELETE FROM song_versions WHERE song_id = 'pisniua_2400596';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2400596';
DELETE FROM songs WHERE id = 'pisniua_2400596';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2400596','Твоє Серце ми вітаєм',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Твоє Серце ми вітаєм,
Христе-Спасе наш єдиний,
Шану ми Тобі складаєм,
Найсвятіший Божий Сину!

Приспів:
Твоєму Серцю завжди і всюди
Вічную славу співають люди!

Твоє Серце всім відкрите,
Христе-Спасе наш єдиний,
На хресті було пробите,
Найсвятіший Божий Сину!

Приспів.

Як біда нас притискає,
Христе-Спасе наш єдиний,
Захисту в Тобі шукаєм,
Найсвятіший Божий Сину!

Приспів.

Дай притулок нам у себе,
Христе-Спасе наш єдиний,
На землі тут і на небі,
Найсвятіший Божий Сину!

Приспів.

Хай сьогодні серце кожне,
Христе-Спасе наш єдиний,
Прославляє Ім''я Боже,
Найсвятіший Божий Сину!

Приспів.','[''pisni.org.ua'', ''cat:christ'', ''Пісні до Ісуса Христа'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2400596'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2400596','Твоє Серце ми вітаєм','Твоє Серце ми вітаєм,
Христе-Спасе наш єдиний,
Шану ми Тобі складаєм,
Найсвятіший Божий Сину!

Приспів:
Твоєму Серцю завжди і всюди
Вічную славу співають люди!

Твоє Серце всім відкрите,
Христе-Спасе наш єдиний,
На хресті було пробите,
Найсвятіший Божий Сину!

Приспів.

Як біда нас притискає,
Христе-Спасе наш єдиний,
Захисту в Тобі шукаєм,
Найсвятіший Божий Сину!

Приспів.

Дай притулок нам у себе,
Христе-Спасе наш єдиний,
На землі тут і на небі,
Найсвятіший Божий Сину!

Приспів.

Хай сьогодні серце кожне,
Христе-Спасе наш єдиний,
Прославляє Ім''я Боже,
Найсвятіший Божий Сину!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2403369';
DELETE FROM song_versions WHERE song_id = 'pisniua_2403369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2403369';
DELETE FROM songs WHERE id = 'pisniua_2403369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2403369','Сини мої','Музика: Олена Білоконь Слова: Зоя Журавка. Виконує: Олена Білоконь','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сини мої - два лебеді крилаті,
Я горда, що вони - мої сини!
І є в них сила, бо вони - два брати,
Немов би материнські дві руки!
Дала синам своїм блакитні очі,
Як два озерця чистої води,
Щоб не було між ними ворожнечі,
У злагоді і дружбі, щоб жили!

Приспів:
Сини мої, мої синочки -
Два рідних серця, дві душі,
Одне коріння і листочки,
Благословіння вам, сини!

Сини мої - моєї долі крила -
Несіть родинний вогник в майбуття,
Коли ви разом, то велика сила,
Плече надійне поряд все життя!
Хай оберегом мамина молитва
Веде з добром, синочки, по житті!
Щоб ваша совість завжди була світла,
Ви - слід, що я лишаю на землі!

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2403369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2403369','Сини мої','Сини мої - два лебеді крилаті,
Я горда, що вони - мої сини!
І є в них сила, бо вони - два брати,
Немов би материнські дві руки!
Дала синам своїм блакитні очі,
Як два озерця чистої води,
Щоб не було між ними ворожнечі,
У злагоді і дружбі, щоб жили!

Приспів:
Сини мої, мої синочки -
Два рідних серця, дві душі,
Одне коріння і листочки,
Благословіння вам, сини!

Сини мої - моєї долі крила -
Несіть родинний вогник в майбуття,
Коли ви разом, то велика сила,
Плече надійне поряд все життя!
Хай оберегом мамина молитва
Веде з добром, синочки, по житті!
Щоб ваша совість завжди була світла,
Ви - слід, що я лишаю на землі!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2403369_l1','pisniua_2403369','YouTube','https://www.youtube.com/watch?v=jBd-Nmo3hM0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2403665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2403665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2403665';
DELETE FROM songs WHERE id = 'pisniua_2403665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2403665','Моя сорочка-вишиванка','Музика: Сергій Родько Слова: Алла Бінцаровська. Виконує: Гурт Струни Серця, Устим Легедза','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Устим Легедза.','Моя вишивана сорочка,
Неначе долі оберіг,
В молитві вишиті рядочки
За щастя всіх моїх доріг.
Її носити насолода
І в будень, і в святковий час,
Любов до неї то не мода,
Вона у серці по всяк час!

Приспів:
Моя сорочка-вишиванка,     |
Хіба ще є така краса?..    |
Моя сорочка-вишиванка,     |
В ній дух народу воскреса! | (2)

Землі моєї чисту вроду
Те увібрало вишиття,
У нім легенди мого роду,
У нім традицій майбуття!
Прості орнаменти барвисті,
Читаю їх, немов книжки,
Узорів мова промениста
На всі прийдешнії віки!

Приспів.

Моя сорочка вишиванка
В ній дух народу воскреса!','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2403665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2403665','Моя сорочка-вишиванка','Моя вишивана сорочка,
Неначе долі оберіг,
В молитві вишиті рядочки
За щастя всіх моїх доріг.
Її носити насолода
І в будень, і в святковий час,
Любов до неї то не мода,
Вона у серці по всяк час!

Приспів:
Моя сорочка-вишиванка,     |
Хіба ще є така краса?..    |
Моя сорочка-вишиванка,     |
В ній дух народу воскреса! | (2)

Землі моєї чисту вроду
Те увібрало вишиття,
У нім легенди мого роду,
У нім традицій майбуття!
Прості орнаменти барвисті,
Читаю їх, немов книжки,
Узорів мова промениста
На всі прийдешнії віки!

Приспів.

Моя сорочка вишиванка
В ній дух народу воскреса!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2403665_l1','pisniua_2403665','YouTube','https://www.youtube.com/watch?v=j9Rur-K8e_A','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_240251';
DELETE FROM song_versions WHERE song_id = 'pisniua_240251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_240251';
DELETE FROM songs WHERE id = 'pisniua_240251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_240251','Йоханий Бабай','(Бабай, Йоханий). Музика: Костянтин Павляк Слова: Костянтин Павляк. Виконує: Костянтин Павляк','uk','ukraine_1991',NULL,NULL,'авторське подання','Написав цю пісню у період, коли був менеджером, смпонсором, фотографом і т.п. рок-гурту THE VELVET, дав їм для виконання. С початку виник російськомовний варіант пісні, так як в українській міфології немає такого поняття, як Бабай Йоханий. Згодом я переклав цей текст українською мовою, але він ніде не прозвучав. Є російськомовний варіант запису.','Мені вчора  знов наставила роги жона,
Телевізор сказав, що в Іраці війна,
Що в сусідів дитина на голці сидить,
А до нового потопу залишається мить!
Я замислився: хто ж винен в цьому усім?
Мабуть це все китайці, побив би їх грім????!!!!

Ні, ні, ні, це все Йоханий Бабай!

На Тайвані укотре вчинився дефолт,
А мій найфайніший колєга  на мене забив чомусь болт!
З року в рік по зарплаті зростає мій борг,
А в профкомі дають лиш путівки у морг !

Я гадав, що це, мабуть, вина москалів,
Або падло Хусейн нам пімститись хотів!

Всі  скупляють  знов мило, цигарки і сіль,
У всіх сім футів під кілем, а в мене зламався мій кіль!
Мого пса  вчора насмерть забив "Мерседес",
Скоро я буду з ним через кляті АЕС!

Маю я геморой, а, можливо, і СНІД!
Лікар каже, що, може, це все - Леонід!

Та ні, ні, ні, це все Йоханий Бабай!
Пам-парам-пам-па-па-паа,
Ні, ні, ні!  -
Це все Йоханий Бабай !','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_240251'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_240251','Йоханий Бабай','Мені вчора  знов наставила роги жона,
Телевізор сказав, що в Іраці війна,
Що в сусідів дитина на голці сидить,
А до нового потопу залишається мить!
Я замислився: хто ж винен в цьому усім?
Мабуть це все китайці, побив би їх грім????!!!!

Ні, ні, ні, це все Йоханий Бабай!

На Тайвані укотре вчинився дефолт,
А мій найфайніший колєга  на мене забив чомусь болт!
З року в рік по зарплаті зростає мій борг,
А в профкомі дають лиш путівки у морг !

Я гадав, що це, мабуть, вина москалів,
Або падло Хусейн нам пімститись хотів!

Всі  скупляють  знов мило, цигарки і сіль,
У всіх сім футів під кілем, а в мене зламався мій кіль!
Мого пса  вчора насмерть забив "Мерседес",
Скоро я буду з ним через кляті АЕС!

Маю я геморой, а, можливо, і СНІД!
Лікар каже, що, може, це все - Леонід!

Та ні, ні, ні, це все Йоханий Бабай!
Пам-парам-пам-па-па-паа,
Ні, ні, ні!  -
Це все Йоханий Бабай !');
DELETE FROM song_links WHERE song_id = 'pisniua_2404410';
DELETE FROM song_versions WHERE song_id = 'pisniua_2404410';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2404410';
DELETE FROM songs WHERE id = 'pisniua_2404410';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2404410','Я - ялиночка!','Музика: Гайтана Слова: Гайтана','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ти, ялиночка, як перлинка сяєш, |
Ти, ялиночка, співати надихаєш! | (6)

Вже до нас іде зима,
Білий, білий сніг.
Вже до нас іде зима,
Скоро Новий рік!
Вся моя родина знає:
Свято без ялинки не буває,
Свято без ялинки не буває!

Приспів:
Я, ялиночка, як перлинка сяю,   |
Я, ялиночка співати надихаю!    | (2)

З нами вже зима,
Всі пісні готують.
З нами вже зима,
Всіх зима дивує!
Вся моя родина знає:
Свято без ялинки не буває,
Свято без ялинки не буває!

Приспів. (2)

З нами вже зима,
Ми побачим перший сніг.
З нами вже зима,
Скоро Новий рік!
Вся моя родина знає:
Свято без ялинки не буває,
Свято без ялинки не буває!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2404410'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2404410','Я - ялиночка!','Ти, ялиночка, як перлинка сяєш, |
Ти, ялиночка, співати надихаєш! | (6)

Вже до нас іде зима,
Білий, білий сніг.
Вже до нас іде зима,
Скоро Новий рік!
Вся моя родина знає:
Свято без ялинки не буває,
Свято без ялинки не буває!

Приспів:
Я, ялиночка, як перлинка сяю,   |
Я, ялиночка співати надихаю!    | (2)

З нами вже зима,
Всі пісні готують.
З нами вже зима,
Всіх зима дивує!
Вся моя родина знає:
Свято без ялинки не буває,
Свято без ялинки не буває!

Приспів. (2)

З нами вже зима,
Ми побачим перший сніг.
З нами вже зима,
Скоро Новий рік!
Вся моя родина знає:
Свято без ялинки не буває,
Свято без ялинки не буває!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2404410_l1','pisniua_2404410','YouTube','https://www.youtube.com/watch?v=9A4uOLuQXxg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2406216';
DELETE FROM song_versions WHERE song_id = 'pisniua_2406216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2406216';
DELETE FROM songs WHERE id = 'pisniua_2406216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2406216','Я з Різдвом вітаю Україну','Музика: Ірина Тарнавська Слова: Ірина Тарнавська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Зірка в небі ясна засвітила
На Святвечір, на Святе Різдво,
І усім вона нам сповістила,
Що з небес спустився сам Христос.

Приспів:
На Різдво хай всі співають, |
На Різдво з вертепом йдуть, |
Янголи нам сповіщають:      |
Народився сам Ісус!         | (2)

Я з Різдвом вітаю Україну,
Щастя всім дорослим і малим,
Хай добро й кохання в дім ваш лине,
Хай любов вас зігріває всіх!

Приспів.

На Різдво!.. На Різдво!..
На Різдво!.. На Різдво!..

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2406216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2406216','Я з Різдвом вітаю Україну','Зірка в небі ясна засвітила
На Святвечір, на Святе Різдво,
І усім вона нам сповістила,
Що з небес спустився сам Христос.

Приспів:
На Різдво хай всі співають, |
На Різдво з вертепом йдуть, |
Янголи нам сповіщають:      |
Народився сам Ісус!         | (2)

Я з Різдвом вітаю Україну,
Щастя всім дорослим і малим,
Хай добро й кохання в дім ваш лине,
Хай любов вас зігріває всіх!

Приспів.

На Різдво!.. На Різдво!..
На Різдво!.. На Різдво!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2406216_l1','pisniua_2406216','YouTube','https://www.youtube.com/watch?v=EjxvGTsBqUI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_240512';
DELETE FROM song_versions WHERE song_id = 'pisniua_240512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_240512';
DELETE FROM songs WHERE id = 'pisniua_240512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_240512','Не говори печальними очима','Музика: Зоя Слободян Слова: Ліна Костенко. Виконує: Зоя Слободян','uk','ukraine_1991',NULL,NULL,'Аудіо-CD "Зоя Слободян. Давай помовчимо (Cпівана поезія)" (2000)','Текст зібрано частинами з кількох інтернет-джерел, уточнено з аудіо.','Передмова:
І неповторність кожної хвилини
шукає шлях від болю до перлини...

Не говори печальними очима
те, що не можуть вимовить слова.
Так виникає ніжність самочинна.
Так виникає тиша грозова.

Приспів:
Чи ти мій сон, чи ти моя уява,
чи просто чорна магія чола...
Яка між нами райдуга стояла!
Яка між нами прірва пролягла!

Я не скажу і в пам''яті - коханий.
І все-таки, згадай мене колись.
Ішли дві долі різними шляхами.
На роздоріжжі долі обнялись.

Приспів','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_240512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_240512','Не говори печальними очима','Передмова:
І неповторність кожної хвилини
шукає шлях від болю до перлини...

Не говори печальними очима
те, що не можуть вимовить слова.
Так виникає ніжність самочинна.
Так виникає тиша грозова.

Приспів:
Чи ти мій сон, чи ти моя уява,
чи просто чорна магія чола...
Яка між нами райдуга стояла!
Яка між нами прірва пролягла!

Я не скажу і в пам''яті - коханий.
І все-таки, згадай мене колись.
Ішли дві долі різними шляхами.
На роздоріжжі долі обнялись.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_240596';
DELETE FROM song_versions WHERE song_id = 'pisniua_240596';
DELETE FROM songs_fts WHERE song_id = 'pisniua_240596';
DELETE FROM songs WHERE id = 'pisniua_240596';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_240596','Гей мам я Косу','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Лемківські співанки. Зібрав і упорядкував М. Соболевський. — К.: Музична Україна, 1967. — 320 с.','Пісня з добірки М.Соболевського: Лемківські співанки Діалектизми: бы-м - би я; возме - візьме; горі - догори; доли - додолу; мам - маю; мі - мені; ньом - нею. Відміна пісні: Гей, мам я косу','Гей мам я Косу але ньом не кошу |(2)
Горі Селом доли Селом           |(2)
Під пазухом ношу                |

Гей мам я Косу але не клепана   |(2)
Так бы-м косив так бы-м косив   |(2)
До самого рана                  |

Гей мам я Косу зо самих оцелий  |(2)
Як притисну то мі возме         |(2)
Попри самій земли               |','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:obzhynkovi'', ''Лемківські пісні'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_240596'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_240596','Гей мам я Косу','Гей мам я Косу але ньом не кошу |(2)
Горі Селом доли Селом           |(2)
Під пазухом ношу                |

Гей мам я Косу але не клепана   |(2)
Так бы-м косив так бы-м косив   |(2)
До самого рана                  |

Гей мам я Косу зо самих оцелий  |(2)
Як притисну то мі возме         |(2)
Попри самій земли               |');
DELETE FROM song_links WHERE song_id = 'pisniua_240573';
DELETE FROM song_versions WHERE song_id = 'pisniua_240573';
DELETE FROM songs_fts WHERE song_id = 'pisniua_240573';
DELETE FROM songs WHERE id = 'pisniua_240573';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_240573','В нашій Керти Ягоды-малины','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Лемківські співанки. Зібрав і упорядкував М. Соболевський. — К.: Музична Україна, 1967. — 320 с.','Пісня з добірки М.Соболевського: Лемківські співанки Діалектизми: де-с - де ти; діват ся - дівається; кед - коли, як; керт - сад, садок; мам - маю; мі - мені; мойом - моєю; позберат - позбирає; роскіш - розкіш; точили ся - пускалися; тут: росли собі; фраїр - парубок, з яким ходить дівчина, коханий;','В нашій Керти Ягоды-малины
Точили ся з гори до долини

А хто ж мі їх позберат-позберат
Кед я не мам Яничка-фраїра

Ой Боже мій Боже мій Боже мій !
Де ся діват Роскіш мій Роскіш мій !

Ой дуй Вітре Горошок-горошок
Та й за мойом Роскошом-роскошом

Роскошенько гей моя гей моя
А де-с мі ся поділа-поділа !

По високій гей Горі гей Горі
Гей з Вітром полетіла-полетіла','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_240573'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_240573','В нашій Керти Ягоды-малины','В нашій Керти Ягоды-малины
Точили ся з гори до долини

А хто ж мі їх позберат-позберат
Кед я не мам Яничка-фраїра

Ой Боже мій Боже мій Боже мій !
Де ся діват Роскіш мій Роскіш мій !

Ой дуй Вітре Горошок-горошок
Та й за мойом Роскошом-роскошом

Роскошенько гей моя гей моя
А де-с мі ся поділа-поділа !

По високій гей Горі гей Горі
Гей з Вітром полетіла-полетіла');
DELETE FROM song_links WHERE song_id = 'pisniua_2404869';
DELETE FROM song_versions WHERE song_id = 'pisniua_2404869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2404869';
DELETE FROM songs WHERE id = 'pisniua_2404869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2404869','Білий Янгол','Музика: Анничка Гнатишак Слова: Анничка Гнатишак. Виконує: Микола Яцків','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сяє зірка різдвяна в просторі,
Білі Янголи з неба злітають,
Херувими в хвалебному хорі
Про народження Бога-Христа звіщають!

Приспів:
Білий Янгол, білий Янгол
Над землею зліта!
Білий Янгол, білий Янгол,
У долонях зірка золота!
Білий Янгол, білий Янгол
Шле надію в серця!
Білий Янгол, білий Янгол
Сповіщає про Різдво Творця!

Вже Різдво на твоєму порозі,
З колядою спішать пастушата,
Білий Янгол по білій дорозі
Поспішає з Різдвом людей вітати!

Приспів.

Різдво! Різдво! -
Сяйво кольорових зір!
Різдво! Різдво
З колядою йде у двір!','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2404869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2404869','Білий Янгол','Сяє зірка різдвяна в просторі,
Білі Янголи з неба злітають,
Херувими в хвалебному хорі
Про народження Бога-Христа звіщають!

Приспів:
Білий Янгол, білий Янгол
Над землею зліта!
Білий Янгол, білий Янгол,
У долонях зірка золота!
Білий Янгол, білий Янгол
Шле надію в серця!
Білий Янгол, білий Янгол
Сповіщає про Різдво Творця!

Вже Різдво на твоєму порозі,
З колядою спішать пастушата,
Білий Янгол по білій дорозі
Поспішає з Різдвом людей вітати!

Приспів.

Різдво! Різдво! -
Сяйво кольорових зір!
Різдво! Різдво
З колядою йде у двір!');
DELETE FROM song_links WHERE song_id = 'pisniua_2406293';
DELETE FROM song_versions WHERE song_id = 'pisniua_2406293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2406293';
DELETE FROM songs WHERE id = 'pisniua_2406293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2406293','Хай щастить!','Музика: Ірина Тарнавська Слова: Ірина Тарнавська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вже метелиця мете дорогу
І зоря засяє в добрий час,
Хай до вашого прийде порогу
Щастя й радість в новорічний час!

Приспів:
Хай щастить вам у Новому році! |
Хай збуваються мрії усі!       |
Новий рік ось уже на порозі,   |
Ти до себе його запроси!       | (2)

Зимне свято хай дзвенить піснями
І вкриває землю білий сніг,
Вірні друзі будуть поруч з вами
І лунає скрізь щасливий сміх!

Приспів.

Хай щастить! Хай щастить!
Хай щастить! Хай щастить!','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:new-year'', ''Дитячі пісні'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2406293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2406293','Хай щастить!','Вже метелиця мете дорогу
І зоря засяє в добрий час,
Хай до вашого прийде порогу
Щастя й радість в новорічний час!

Приспів:
Хай щастить вам у Новому році! |
Хай збуваються мрії усі!       |
Новий рік ось уже на порозі,   |
Ти до себе його запроси!       | (2)

Зимне свято хай дзвенить піснями
І вкриває землю білий сніг,
Вірні друзі будуть поруч з вами
І лунає скрізь щасливий сміх!

Приспів.

Хай щастить! Хай щастить!
Хай щастить! Хай щастить!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2406293_l1','pisniua_2406293','YouTube','https://www.youtube.com/watch?v=EF4KRrYiljk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_240717';
DELETE FROM song_versions WHERE song_id = 'pisniua_240717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_240717';
DELETE FROM songs WHERE id = 'pisniua_240717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_240717','Гей Яничку ожен ся','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Лемківські співанки. Зібрав і упорядкував М. Соболевський. — К.: Музична Україна, 1967. — 320 с.','* У джерелі не вказано початок репризи, це один з можливих варіантів, так подано і в доданих файлах. Задля визначеності у доданих файлах темп заданий точним значенням на відміну від джерела. Пісня з добірки М.Соболевського: Лемківські співанки Діалектизми: вандрівний - мандрівний; вандрувати - мандрувати; вшитки - всі; днес - сьогодні; же - що; жена - жінка, дружина; женений - одружений; заграда - сад, город; ищы - іще, ще; лем - тільки; лес - ліс; Мадяр - Угорщина; мам - маю; міняйме ся - міняймося; млада - молода; мя - мене; ожен ся - оженися; потреса - потрясає; ти - тобі; ты - ти; ту - тут; фраїрка - дівчина, з якою ходить парубок; чуга, чуганька - чоловіча верхня накидка з домотканої шерсті; шалений - швидкий, меткий; шварна - гарна, вродлива. Відміна пісні: Ой, Янічку, оженься','Гей Яничку гей Яничку ожен ся
За чужими фраїрками не жен ся
Ищы Овес при Токаю зелений
Не буду я того Рочку женений

Як я піду на Мадяр на Мадяр
Кому ж я там Перко дам Перко дам !
Кому тому за Дукат за Дукат            |(2)*
А Милому все лем так все лем так       |

Гей Ты Коню гей Ты Коню добре йдеш
Дам я Тебе подковати ищы днес ищы днес
Дам Ти Овса дам Ти овса и Сена
Завези мя де є Шварна Дівчина

Ой не вір ми не вір ми не вір ми
Бо я Хлопец Вандрівний-вандрівний
Я вандрую ту и там ту и там            |(2)
Де поверну Дівча мам Дівча мам         |

Гей Ты Циган гей Ты Циган Шалений
Міняйме ся міняйме ся на Жени
Дам ти стару дам ти стару за младу
И Капусти и Капусти Заграду

Ишов Циган до Леса до Леса
Лем ся на нім Чуганька потреса
Вшитки Дівки на нього на нього         |(2)
Же Чуганька не його не його            |','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_240717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_240717','Гей Яничку ожен ся','Гей Яничку гей Яничку ожен ся
За чужими фраїрками не жен ся
Ищы Овес при Токаю зелений
Не буду я того Рочку женений

Як я піду на Мадяр на Мадяр
Кому ж я там Перко дам Перко дам !
Кому тому за Дукат за Дукат            |(2)*
А Милому все лем так все лем так       |

Гей Ты Коню гей Ты Коню добре йдеш
Дам я Тебе подковати ищы днес ищы днес
Дам Ти Овса дам Ти овса и Сена
Завези мя де є Шварна Дівчина

Ой не вір ми не вір ми не вір ми
Бо я Хлопец Вандрівний-вандрівний
Я вандрую ту и там ту и там            |(2)
Де поверну Дівча мам Дівча мам         |

Гей Ты Циган гей Ты Циган Шалений
Міняйме ся міняйме ся на Жени
Дам ти стару дам ти стару за младу
И Капусти и Капусти Заграду

Ишов Циган до Леса до Леса
Лем ся на нім Чуганька потреса
Вшитки Дівки на нього на нього         |(2)
Же Чуганька не його не його            |');
DELETE FROM song_links WHERE song_id = 'pisniua_2406251';
DELETE FROM song_versions WHERE song_id = 'pisniua_2406251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2406251';
DELETE FROM songs WHERE id = 'pisniua_2406251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2406251','Зимонька-зима','Музика: Ірина Тарнавська Слова: Володимир Килимник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На людних вулицях, де тисячі вогнів
Горять яскраво і нагадують про свято,
Нас Старий рік усіх до купи звів,
Щоб рік Новий могли ми зустрічати!

Приспів:
Зимонька-зима, мете хурделиця,      |
На доріжки сніг яскравий стелиться, |
У святковім одязі ялинонька         |
Спалахне ось-ось, іще хвилинонька!  | (2)

Казковий одяг і дорослих, і дітей
Вмить перевтілив на улюблених героїв,
Ось запалив красуню Прометей,
І посміхнувся місяць над горою!

Приспів.

Довкола гамір чується і крик,
Ніч новорічна в розпалі, мов літо,
Звідкись з''явився білий сніговик,
А поруч весело кружляють діти!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2406251'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2406251','Зимонька-зима','На людних вулицях, де тисячі вогнів
Горять яскраво і нагадують про свято,
Нас Старий рік усіх до купи звів,
Щоб рік Новий могли ми зустрічати!

Приспів:
Зимонька-зима, мете хурделиця,      |
На доріжки сніг яскравий стелиться, |
У святковім одязі ялинонька         |
Спалахне ось-ось, іще хвилинонька!  | (2)

Казковий одяг і дорослих, і дітей
Вмить перевтілив на улюблених героїв,
Ось запалив красуню Прометей,
І посміхнувся місяць над горою!

Приспів.

Довкола гамір чується і крик,
Ніч новорічна в розпалі, мов літо,
Звідкись з''явився білий сніговик,
А поруч весело кружляють діти!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2406251_l1','pisniua_2406251','YouTube','https://www.youtube.com/watch?v=qlYsWe2DRGk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2407192';
DELETE FROM song_versions WHERE song_id = 'pisniua_2407192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2407192';
DELETE FROM songs WHERE id = 'pisniua_2407192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2407192','Ой, заграйте, дударики','Музика: Аркадій Філіпенко Слова: Володимир Панченко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ой, заграйте, дударики,
Молоді гуцули.
Так, щоб танець-увиванець
Полонини чули!

Ой, заграйте, дударики,
На дудках кленових,
Бо приємно танцювати
В кептариках нових!

Ой, заграйте, дударики,
А я заспіваю.
Хай злітає наша пісня
Над Карпатським краєм!','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2407192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2407192','Ой, заграйте, дударики','Ой, заграйте, дударики,
Молоді гуцули.
Так, щоб танець-увиванець
Полонини чули!

Ой, заграйте, дударики,
На дудках кленових,
Бо приємно танцювати
В кептариках нових!

Ой, заграйте, дударики,
А я заспіваю.
Хай злітає наша пісня
Над Карпатським краєм!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2407192_l1','pisniua_2407192','YouTube','https://www.youtube.com/watch?v=CK-Gt7R9WYA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2407192_l2','pisniua_2407192','YouTube','https://www.youtube.com/watch?v=03sdygxWz68','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2407192_l3','pisniua_2407192','YouTube','https://www.youtube.com/watch?v=-5_3WXJuIDE','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2407694';
DELETE FROM song_versions WHERE song_id = 'pisniua_2407694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2407694';
DELETE FROM songs WHERE id = 'pisniua_2407694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2407694','Героям','Музика: Сергій Танчинець Слова: Сергій Танчинець. Виконує: С.К.А.Й., Without Limits (Без Обмежень), Kozak System','uk','ukraine_1991',NULL,NULL,'аудіозапис','Підтримка для українських Воїнів, а також для всіх людей, що протестують зараз у Білорусі.','Брате, скажи, як тебе звати?
Брате, згадай, чи ми ще солдати?
Чи наша земля ще є під ногами?
Чи бачиш у снах ще посмішку мами?
Мушу просити тебе, побратиме,
Бийся за двох, якщо я загину!
Перші віднесуть Богові душі,
Останніх не буде,
Бо всіх не подушать!

Нам готують прем''єри
Зовсім чужих вистав.
Ніщо не зупинить ідею,
Час якої настав!
Герої серцями палають яскраво,
Навіть напів накалу,
Ти на коліна не стала,
Героям Твоїм Слава!

Страху няма, наперад, брати!
Мо, не упадзем у траву я і ти!
Яшче не для нас дзьвери раю, павер!
Да зброі, за волю! Ми - тут і цяпер!

Нам рихтуюць премеру
Цалкам чужога шоу.
Нічога ня спиніць ідею,
Час якое прийшоу!
Героі серци паляць яскрава
І полымя у рукі бяруць.
Сьвятая ня спиніцца справа,
А значиць Живе Беларусь!','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2407694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2407694','Героям','Брате, скажи, як тебе звати?
Брате, згадай, чи ми ще солдати?
Чи наша земля ще є під ногами?
Чи бачиш у снах ще посмішку мами?
Мушу просити тебе, побратиме,
Бийся за двох, якщо я загину!
Перші віднесуть Богові душі,
Останніх не буде,
Бо всіх не подушать!

Нам готують прем''єри
Зовсім чужих вистав.
Ніщо не зупинить ідею,
Час якої настав!
Герої серцями палають яскраво,
Навіть напів накалу,
Ти на коліна не стала,
Героям Твоїм Слава!

Страху няма, наперад, брати!
Мо, не упадзем у траву я і ти!
Яшче не для нас дзьвери раю, павер!
Да зброі, за волю! Ми - тут і цяпер!

Нам рихтуюць премеру
Цалкам чужога шоу.
Нічога ня спиніць ідею,
Час якое прийшоу!
Героі серци паляць яскрава
І полымя у рукі бяруць.
Сьвятая ня спиніцца справа,
А значиць Живе Беларусь!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2407694_l1','pisniua_2407694','YouTube','https://www.youtube.com/watch?v=wc6wpEck3DE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2407624';
DELETE FROM song_versions WHERE song_id = 'pisniua_2407624';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2407624';
DELETE FROM songs WHERE id = 'pisniua_2407624';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2407624','Однокласники','Музика: Юрій Васильківський Слова: Юрій Васильківський. Виконує: Юрій Васильківський','uk','ukraine_1991',NULL,'2020','авторське подання','Аранжування - Юрій Васильківський, запис - Master Vox Records, 2020 р.','Ще учора був дзвінок,
І звучав він, як навчальний.
А сьогодні перший раз,
Він звучить вже, як прощальний.
Це на старті новий час,
Нові друзі і робота,
Буде в кожного свій життєвий шлях,
І своя буде турбота...

Приспів:
Однокласники -
Завжди поруч буду я!
Однокласники -
Рідна школо ти моя!

Скільки років промайне,
Буде щастя і негода,
А останній дзвоник той,
Буде в серці - насолода!..
Пам''ятаю я усіх,
Вдячний вчителям завжди я,
І чекаю зустріч кожен рік,
Бо для мене це подія!

Приспів','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2407624'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2407624','Однокласники','Ще учора був дзвінок,
І звучав він, як навчальний.
А сьогодні перший раз,
Він звучить вже, як прощальний.
Це на старті новий час,
Нові друзі і робота,
Буде в кожного свій життєвий шлях,
І своя буде турбота...

Приспів:
Однокласники -
Завжди поруч буду я!
Однокласники -
Рідна школо ти моя!

Скільки років промайне,
Буде щастя і негода,
А останній дзвоник той,
Буде в серці - насолода!..
Пам''ятаю я усіх,
Вдячний вчителям завжди я,
І чекаю зустріч кожен рік,
Бо для мене це подія!

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2407624_l1','pisniua_2407624','YouTube','https://www.youtube.com/watch?v=mow0F8cy0UM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2406369';
DELETE FROM song_versions WHERE song_id = 'pisniua_2406369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2406369';
DELETE FROM songs WHERE id = 'pisniua_2406369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2406369','Весна прийшла','Музика: Сергій Ігнатенко Слова: Сергій Ігнатенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вже сніг розтанув на очах
І вже співає пісню птах,
І все пробуджується скрізь,
Так гарно всюди! - Подивись!

Приспів:
Весна прийшла у рідний край, |
Зі мною пісню заспівай!      |
До мене в гості завітай,     |
Мене не забувай!             | (2)

Зігріє нас теплом весна,
Розквітне вже земля свята,
І забринить в гаю струмок,
Зелений вкриє килимок!

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2406369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2406369','Весна прийшла','Вже сніг розтанув на очах
І вже співає пісню птах,
І все пробуджується скрізь,
Так гарно всюди! - Подивись!

Приспів:
Весна прийшла у рідний край, |
Зі мною пісню заспівай!      |
До мене в гості завітай,     |
Мене не забувай!             | (2)

Зігріє нас теплом весна,
Розквітне вже земля свята,
І забринить в гаю струмок,
Зелений вкриє килимок!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2406369_l1','pisniua_2406369','YouTube','https://www.youtube.com/watch?v=Q3B7lBmYSj4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2409293';
DELETE FROM song_versions WHERE song_id = 'pisniua_2409293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2409293';
DELETE FROM songs WHERE id = 'pisniua_2409293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2409293','Пречиста Діво, радуйся, Маріє!','Музика: Анатолій Шепель Слова: Василь Хомик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Тебе благаєм в ранішню годину,
Коли наколо все цвіте і зріє.
Храни нам рідну неньку Україну,     |
Пречиста Діво, радуйся, Маріє!      | (2)

Тобі приносим радощі і болі,
Всі сподівання і рожеві мрії.
Дай нам щасливо жити в ріднім домі, |
Пречиста Діво, радуйся, Маріє!      | (2)

Встає Вкраїна в величі і славі,
Народ під рідним стягом молодіє,
Храни нас мати у своїй державі,     |
Пречиста Діво, радуйся, Маріє!      | (2)','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2409293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2409293','Пречиста Діво, радуйся, Маріє!','Тебе благаєм в ранішню годину,
Коли наколо все цвіте і зріє.
Храни нам рідну неньку Україну,     |
Пречиста Діво, радуйся, Маріє!      | (2)

Тобі приносим радощі і болі,
Всі сподівання і рожеві мрії.
Дай нам щасливо жити в ріднім домі, |
Пречиста Діво, радуйся, Маріє!      | (2)

Встає Вкраїна в величі і славі,
Народ під рідним стягом молодіє,
Храни нас мати у своїй державі,     |
Пречиста Діво, радуйся, Маріє!      | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_2409665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2409665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2409665';
DELETE FROM songs WHERE id = 'pisniua_2409665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2409665','Христос розп''ятий на Голгофі',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Христос розп''ятий на Голгофі,
Безсмертям стала кожна мить.
Вмирає Бог у людській плоті,
За мене кару Він терпить.

Вп''ялась тернина в Божі скроні,
Душа прибита до хреста.
Роздерті цвяхами долоні,
Прощають серце і вуста.

Душе моя! За твою злобу
І за провини, за гріхи.
Христос пішов на смерть до гробу,
Тому в час грішної жажди,
Ти хоч хвилинку з Ним терпи.

Він бачив святість і руїну,
Він бачив світ і вічний час.
З Хреста Він бачив Україну,
З Хреста молився Він за нас!..','[''pisni.org.ua'', ''cat:strasni'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2409665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2409665','Христос розп''ятий на Голгофі','Христос розп''ятий на Голгофі,
Безсмертям стала кожна мить.
Вмирає Бог у людській плоті,
За мене кару Він терпить.

Вп''ялась тернина в Божі скроні,
Душа прибита до хреста.
Роздерті цвяхами долоні,
Прощають серце і вуста.

Душе моя! За твою злобу
І за провини, за гріхи.
Христос пішов на смерть до гробу,
Тому в час грішної жажди,
Ти хоч хвилинку з Ним терпи.

Він бачив святість і руїну,
Він бачив світ і вічний час.
З Хреста Він бачив Україну,
З Хреста молився Він за нас!..');
DELETE FROM song_links WHERE song_id = 'pisniua_2407313';
DELETE FROM song_versions WHERE song_id = 'pisniua_2407313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2407313';
DELETE FROM songs WHERE id = 'pisniua_2407313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2407313','Я піду за Христом','Музика: Християнин Слова: Християнин','uk','ukraine_1991',NULL,NULL,'із пісенника о. Тадея Виксюка.','Пісню виконує Християни (альбом - Християнські пісні).','Я піду за Христом, моя мамо,
H7
По вузькій кам''янистій стежині,
Через терня до Божого храму,
Хочу жити в монашій родині.
Приспів:
Мамо моя, рідна мамо,
Не жaлій для Христа свого сина,
Щоб служив у Господньому храмі
Цілопально, як Божа дитина!
Я піду за Христом, моя мамо
Стану світлом для темного світу.
Щоб відкрили для Господа брами
Свого серця заблукані діти.
Приспів.
Він їх вистраждав, рідна матусю,
Заплатив за них дорого кров''ю.
З ними я до Христа пригорнуся,
Щоб зігрітись святою Любов''ю!
Приспів.
Я їх звільню, моя рідна ненько,
Від кайданів диявола злого,
Щоб були біля Бога близенько
Вічній радості Пана Живого.
Приспів.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2407313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2407313','Я піду за Христом','Я піду за Христом, моя мамо,
H7
По вузькій кам''янистій стежині,
Через терня до Божого храму,
Хочу жити в монашій родині.
Приспів:
Мамо моя, рідна мамо,
Не жaлій для Христа свого сина,
Щоб служив у Господньому храмі
Цілопально, як Божа дитина!
Я піду за Христом, моя мамо
Стану світлом для темного світу.
Щоб відкрили для Господа брами
Свого серця заблукані діти.
Приспів.
Він їх вистраждав, рідна матусю,
Заплатив за них дорого кров''ю.
З ними я до Христа пригорнуся,
Щоб зігрітись святою Любов''ю!
Приспів.
Я їх звільню, моя рідна ненько,
Від кайданів диявола злого,
Щоб були біля Бога близенько
Вічній радості Пана Живого.
Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2412124';
DELETE FROM song_versions WHERE song_id = 'pisniua_2412124';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2412124';
DELETE FROM songs WHERE id = 'pisniua_2412124';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2412124','Знову','Музика: Святослав Вакарчук Слова: Святослав Вакарчук. Виконує: Святослав Вакарчук, Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'аудіозапис','Акорди підібрав Feeriel.','Змий тіні і туш, і озирнись -
Ти досить надивилась на людей
Через рентген, через бокал...
Вбий в собі вину і зупинись,
Не варто проливати зайву кров
Заради мрій про п''єдестал!..
Dm
Знову в тебе нова дорога,
C
Синій вагон, зелений чай,
Але заради Бога не говори:
Прощай!..
Dm
В тебе нові бажання,
C
Перед тобою цілий світ,
G
Але заради Бога
Передавай привіт!
Злий, не залишай вечір на дні,
Для мене особливий твій Париж,
Навіть, коли просто мовчиш...
Зміст не в куполах і не в вині,
А в тому з ким ти є, коли ти спиш,
Кого несеш, кому болиш...
Dm
Знову в тебе нова дорога,
C
Синій вагон, зелений чай,
Але заради Бога не говори:
Прощай!..
Dm
В тебе нові бажання,
C
Перед тобою цілий світ,
G
Але, як буде змога,
Передавай привіт!
Стань сильною знов, поки твоя,
Розтерзана від гордості, любов
Не закровить і не запече!..
На відстані губ там буду я,
Тихенько стерегтиму від дощу -
Раптом наскрізь біль протече...
Dm
Знову в тебе нова дорога,
C
Синій вагон, зелений чай,
Але заради Бога не говори:
Прощай!..
Dm
В тебе нові бажання,
C
Перед тобою цілий світ,
G
Але, як буде змога,
Передавай привіт!
Привіт!.. Привіт!..
Передавай привіт!..
Привіт!.. Привіт!..
Передавай привіт!..','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2412124'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2412124','Знову','Змий тіні і туш, і озирнись -
Ти досить надивилась на людей
Через рентген, через бокал...
Вбий в собі вину і зупинись,
Не варто проливати зайву кров
Заради мрій про п''єдестал!..
Dm
Знову в тебе нова дорога,
C
Синій вагон, зелений чай,
Але заради Бога не говори:
Прощай!..
Dm
В тебе нові бажання,
C
Перед тобою цілий світ,
G
Але заради Бога
Передавай привіт!
Злий, не залишай вечір на дні,
Для мене особливий твій Париж,
Навіть, коли просто мовчиш...
Зміст не в куполах і не в вині,
А в тому з ким ти є, коли ти спиш,
Кого несеш, кому болиш...
Dm
Знову в тебе нова дорога,
C
Синій вагон, зелений чай,
Але заради Бога не говори:
Прощай!..
Dm
В тебе нові бажання,
C
Перед тобою цілий світ,
G
Але, як буде змога,
Передавай привіт!
Стань сильною знов, поки твоя,
Розтерзана від гордості, любов
Не закровить і не запече!..
На відстані губ там буду я,
Тихенько стерегтиму від дощу -
Раптом наскрізь біль протече...
Dm
Знову в тебе нова дорога,
C
Синій вагон, зелений чай,
Але заради Бога не говори:
Прощай!..
Dm
В тебе нові бажання,
C
Перед тобою цілий світ,
G
Але, як буде змога,
Передавай привіт!
Привіт!.. Привіт!..
Передавай привіт!..
Привіт!.. Привіт!..
Передавай привіт!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2412124_l1','pisniua_2412124','YouTube','https://www.youtube.com/watch?v=pbyjMLUn6go','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2412124_l2','pisniua_2412124','YouTube','https://www.youtube.com/watch?v=wIEmHSx-P28','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2410395';
DELETE FROM song_versions WHERE song_id = 'pisniua_2410395';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2410395';
DELETE FROM songs WHERE id = 'pisniua_2410395';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2410395','Коломийки про вишиванки',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Нема краю веселого,
Як та Україна.
Вишиванку вишиває
Найменша дитина!

Нема таких вишиванок
На всім білім світі,
Вони душу звеселяють
І дорослим, й дітям!

Ой, вишию вишиванку,
Та ще буду шити,
Щоб заздрісно було тому,
Хто не вміє шити!

Нема краю веселого,
Як вкраїнські села.
Куди зайдеш, скрізь побачиш
Вишиванок силу!

Вишиванко наша славна,
Ти наша єдина.
В тобі гордість, в тобі слава,
І краса, і сила!

Та я собі молоденька
Рушник вишивала,
Аби я тим рушниченьком
Хату прикрашала.

Ой, сиджу я біля столу,
Хрестом вишиваю,
Та я своїй матусеньці
Гарно помагаю.

Ой, дівонько-голубонько,
Хочу поклонитись.
То дай мені свій рушник,
Аби подивитись.

Ой, у лісі на горісі
Сорока скрекоче.
Мамка мусить вишивати,
Бо доня не хоче!

Ой, солодкі дівчатонька,
Пустіть нас до хати.
Ми вам будем помагати
Рушник вишивати.

Вишивали українки
За чотири ночі,
Та не змогли вишивати,
Бо боліли очі.

Мамка мусить вишивати
І двір замітати,
Бо у доні є робота -
Їстоньки чекати.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2410395'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2410395','Коломийки про вишиванки','Нема краю веселого,
Як та Україна.
Вишиванку вишиває
Найменша дитина!

Нема таких вишиванок
На всім білім світі,
Вони душу звеселяють
І дорослим, й дітям!

Ой, вишию вишиванку,
Та ще буду шити,
Щоб заздрісно було тому,
Хто не вміє шити!

Нема краю веселого,
Як вкраїнські села.
Куди зайдеш, скрізь побачиш
Вишиванок силу!

Вишиванко наша славна,
Ти наша єдина.
В тобі гордість, в тобі слава,
І краса, і сила!

Та я собі молоденька
Рушник вишивала,
Аби я тим рушниченьком
Хату прикрашала.

Ой, сиджу я біля столу,
Хрестом вишиваю,
Та я своїй матусеньці
Гарно помагаю.

Ой, дівонько-голубонько,
Хочу поклонитись.
То дай мені свій рушник,
Аби подивитись.

Ой, у лісі на горісі
Сорока скрекоче.
Мамка мусить вишивати,
Бо доня не хоче!

Ой, солодкі дівчатонька,
Пустіть нас до хати.
Ми вам будем помагати
Рушник вишивати.

Вишивали українки
За чотири ночі,
Та не змогли вишивати,
Бо боліли очі.

Мамка мусить вишивати
І двір замітати,
Бо у доні є робота -
Їстоньки чекати.');
DELETE FROM song_links WHERE song_id = 'pisniua_24111';
DELETE FROM song_versions WHERE song_id = 'pisniua_24111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_24111';
DELETE FROM songs WHERE id = 'pisniua_24111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_24111','Мені ворожка ворожила','Українська народна пісня. Виконує: Тріо Мареничів, Рок-гурт Natalika','uk','ukraine_before_1917',NULL,NULL,NULL,'Текст доповнив і додав акорди: Anrzej Рок-версія гурту Natalika. Аранжування, рок-гітара та вокал - Наталія Горщар. Продакшн студія "Natalika".','Мені ворожка ворожила -
Щоб не любила хлопців я.
Бо хлопець любить, та й покине,
А ти, дівчино жий сама.
Покине карі оченята,
Покине личко цілувать,
Покине дівчину любити,
Ще й миленькою називать.
Нехай багачка тебе любить,
Нехай багачка за тебе йде.
Вона любить так не зуміє,
Як я любила колись тебе.
Як я любила пригортала,
А ясен місяць виходив,
Я все тобі напоминала,
Щоб завтра скорше приходив.
Що ти мав скорше приходити,
То ти зовсім не приходив -
Знайшов си іншу та й цілуєш,
А моє серце загубив.
Піду до лісу - загублюся,
Нехай шукає він мене.
Піду до моря - утоплюся,
Нехай не бачить він мене.
Дівча до моря зближається,
А чорна хвиля з моря б''є.
Дівча з миленьким прощається
Правой рученькой махає.
У цю хвилину, в цю годину
Am
Дівча до моря кинулось
Ще й де-не-де між хвилями
Правою ручкою махнуло.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:narodni'', ''Пісні про кохання, ліричні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_24111'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_24111','Мені ворожка ворожила','Мені ворожка ворожила -
Щоб не любила хлопців я.
Бо хлопець любить, та й покине,
А ти, дівчино жий сама.
Покине карі оченята,
Покине личко цілувать,
Покине дівчину любити,
Ще й миленькою називать.
Нехай багачка тебе любить,
Нехай багачка за тебе йде.
Вона любить так не зуміє,
Як я любила колись тебе.
Як я любила пригортала,
А ясен місяць виходив,
Я все тобі напоминала,
Щоб завтра скорше приходив.
Що ти мав скорше приходити,
То ти зовсім не приходив -
Знайшов си іншу та й цілуєш,
А моє серце загубив.
Піду до лісу - загублюся,
Нехай шукає він мене.
Піду до моря - утоплюся,
Нехай не бачить він мене.
Дівча до моря зближається,
А чорна хвиля з моря б''є.
Дівча з миленьким прощається
Правой рученькой махає.
У цю хвилину, в цю годину
Am
Дівча до моря кинулось
Ще й де-не-де між хвилями
Правою ручкою махнуло.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24111_l1','pisniua_24111','YouTube','https://www.youtube.com/watch?v=BLaDtQps_vU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24111_l2','pisniua_24111','YouTube','https://www.youtube.com/watch?v=CyntJ01HzLg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24111_l3','pisniua_24111','YouTube','https://www.youtube.com/watch?v=BJolKsBGmJw','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24111_l4','pisniua_24111','YouTube','https://www.youtube.com/watch?v=qfbiBl2goj8','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24111_l5','pisniua_24111','YouTube','https://www.youtube.com/watch?v=LKDizHUpj6U','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24111_l6','pisniua_24111','YouTube','https://www.youtube.com/watch?v=w3QZ3XVYOVo','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_2411818';
DELETE FROM song_versions WHERE song_id = 'pisniua_2411818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2411818';
DELETE FROM songs WHERE id = 'pisniua_2411818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2411818','Ти - солдат!','Музика: Позивний Алькор Слова: Позивний Алькор. Виконує: Позивний Алькор','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ти упав, ти підвівся, ти встав,
Перед небезпекою ти не спасував,
Як твій дід і прадід поклонився у крові
В синьо-жовтий стяг на рукаві!
В спеку хочеться води ковток,
Та ти йдеш, у тебе марш кидок.
Мужність предків ти в собі несеш,
Ти в строю, ти не підведеш!

Приспів:
Ти тримайся, тримайся, брат,
Пам''ятай: ти - солдат!
Страх накриє наших ворогів,
Ти - нащадок козаків!
Ти тримайся, тримайся, брат,
Пам''ятай, що ти - солдат!
Душу - Богові, мужність - нам!
Слава нації! Смерть ворогам!

Мати - одна, Батьківщина - одна!
За полеглих побратимів вип''ю я до дна!
Подивлюся на Схід, мовчки закурю,
І згадаю всіх, хто залишився у бою...
Синьо-жовтий стяг на рукаві,
Як твій дід і прадід помолися у крові.
Символ роду ти в собі несеш,
Ти в строю, ти не підведеш!

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2411818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2411818','Ти - солдат!','Ти упав, ти підвівся, ти встав,
Перед небезпекою ти не спасував,
Як твій дід і прадід поклонився у крові
В синьо-жовтий стяг на рукаві!
В спеку хочеться води ковток,
Та ти йдеш, у тебе марш кидок.
Мужність предків ти в собі несеш,
Ти в строю, ти не підведеш!

Приспів:
Ти тримайся, тримайся, брат,
Пам''ятай: ти - солдат!
Страх накриє наших ворогів,
Ти - нащадок козаків!
Ти тримайся, тримайся, брат,
Пам''ятай, що ти - солдат!
Душу - Богові, мужність - нам!
Слава нації! Смерть ворогам!

Мати - одна, Батьківщина - одна!
За полеглих побратимів вип''ю я до дна!
Подивлюся на Схід, мовчки закурю,
І згадаю всіх, хто залишився у бою...
Синьо-жовтий стяг на рукаві,
Як твій дід і прадід помолися у крові.
Символ роду ти в собі несеш,
Ти в строю, ти не підведеш!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2411818_l1','pisniua_2411818','YouTube','https://www.youtube.com/watch?v=JZOzLHGo8xk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2407777';
DELETE FROM song_versions WHERE song_id = 'pisniua_2407777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2407777';
DELETE FROM songs WHERE id = 'pisniua_2407777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2407777','Пісня буде поміж нас','Музика: Володимир Івасюк Слова: Володимир Івасюк. Виконує: Володимир Івасюк','uk','ukr_ssr_1919_1991',NULL,'1975','https://www.youtube.com/watch?v=X6fY-ne_e2M&list=RDX6fY-ne_e2M&t=83','Текст у виконанні самого Володимира Івасюка відрізняється від тексту, що використовували інші сучасники (наприклад Софія Ротару у 1975 р. у к/ф "Пісня завжди з нами" чи ВІА ВАТРА на платівці 1974 р. "Вам даруємо". В Івасюка є речення "Квіткою наснишся синьоокою", якого немає ні у кого більше.','Пролягла дорога від твоїх воріт
До моїх воріт, як струна.
То чому згубився твій самотній слід -
Знаєш ти одна, ти одна...
Але осінь отой слід листям ще не вкрила,
Бо до тебе навесні я повернусь, мила...
Твої руки я візьму знову в свої руки,
Не розквітне поміж нас жовтий квіт розлуки!..

Приспів:
Не ховай очей блакитний промінь,
Заспівай мені в останній раз.
Пісню ту візьму собі на спомин,
Пісня буде поміж нас!
Бо твій голос, бо твій голос - щедра повінь,
Я мов колос, зелен-колос нею повен.
Жовтий лист спаде і виросте зелений,
А ти в пісні будеш завжди біля мене.

Як зійдуть сніги із гір потоками,
Ой, глибокими, навесні.
Квіткою наснишся синьоокою,
Вдалині мені, вдалині...
Але осінь отой слід листям не вкрила,
Бо до тебе навесні я повернусь, мила...
Твої руки я візьму знову в свої руки,
Не розквітне поміж нас жовтий квіт розлуки!..

Приспів.

Бо твій голос, бо твій голос - щедра повінь,
Я мов колос, зелен-колос нею повен!..
Спаде жовтий лист і виросте зелений,   |
А ти в пісні будеш завжди біля мене!.. | (3)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2407777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2407777','Пісня буде поміж нас','Пролягла дорога від твоїх воріт
До моїх воріт, як струна.
То чому згубився твій самотній слід -
Знаєш ти одна, ти одна...
Але осінь отой слід листям ще не вкрила,
Бо до тебе навесні я повернусь, мила...
Твої руки я візьму знову в свої руки,
Не розквітне поміж нас жовтий квіт розлуки!..

Приспів:
Не ховай очей блакитний промінь,
Заспівай мені в останній раз.
Пісню ту візьму собі на спомин,
Пісня буде поміж нас!
Бо твій голос, бо твій голос - щедра повінь,
Я мов колос, зелен-колос нею повен.
Жовтий лист спаде і виросте зелений,
А ти в пісні будеш завжди біля мене.

Як зійдуть сніги із гір потоками,
Ой, глибокими, навесні.
Квіткою наснишся синьоокою,
Вдалині мені, вдалині...
Але осінь отой слід листям не вкрила,
Бо до тебе навесні я повернусь, мила...
Твої руки я візьму знову в свої руки,
Не розквітне поміж нас жовтий квіт розлуки!..

Приспів.

Бо твій голос, бо твій голос - щедра повінь,
Я мов колос, зелен-колос нею повен!..
Спаде жовтий лист і виросте зелений,   |
А ти в пісні будеш завжди біля мене!.. | (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2407777_l1','pisniua_2407777','YouTube','https://www.youtube.com/watch?v=X6fY-ne_e2M','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2407777_l2','pisniua_2407777','YouTube','https://www.youtube.com/watch?v=O8COWSH9tvI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2407777_l3','pisniua_2407777','YouTube','https://www.youtube.com/watch?v=tfBlymlSo78','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2407777_l4','pisniua_2407777','YouTube','https://www.youtube.com/watch?v=gFOQFgVqPl4','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2407777_l5','pisniua_2407777','YouTube','https://www.youtube.com/watch?v=3FcsOgyFce4','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_2410267';
DELETE FROM song_versions WHERE song_id = 'pisniua_2410267';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2410267';
DELETE FROM songs WHERE id = 'pisniua_2410267';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2410267','Пасхальний день','Музика: Ігор Бойчук Слова: Ігор Бойчук','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Діана Бернат.','Великий день настав,
Прийшли ми до Христа,
Який відкрив нам Царство Боже,
Із мертвих Він повстав,
Дав віру у життя,
Щоб праведна у нас була дорога.

Приспів:
Пасхальний день - великий і святий,
До храму кличуть великодні дзвони,
Христос Воскрес! Воістино живий! -
Голосять всім воскресні антифони. (2)

Ми славимо Христа,
Який прийшов з небес,
Хай не вмирає наша віра в Нього,
Із мертвих Він повстав,
Із мертвих Він воскрес,
З любов''ю в серці ми ідем до Бога!

Приспів.','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2410267'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2410267','Пасхальний день','Великий день настав,
Прийшли ми до Христа,
Який відкрив нам Царство Боже,
Із мертвих Він повстав,
Дав віру у життя,
Щоб праведна у нас була дорога.

Приспів:
Пасхальний день - великий і святий,
До храму кличуть великодні дзвони,
Христос Воскрес! Воістино живий! -
Голосять всім воскресні антифони. (2)

Ми славимо Христа,
Який прийшов з небес,
Хай не вмирає наша віра в Нього,
Із мертвих Він повстав,
Із мертвих Він воскрес,
З любов''ю в серці ми ідем до Бога!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2407616';
DELETE FROM song_versions WHERE song_id = 'pisniua_2407616';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2407616';
DELETE FROM songs WHERE id = 'pisniua_2407616';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2407616','Брат','Музика: Юрій Васильківський Слова: Юрій Васильківський','uk','ukraine_1991',NULL,NULL,'авторське подання','Аранжування - Юрій Васильківський, запис - Master Vox Records. Пісню виконує Юрій Васильківський та Анатолій Гнатюк.','Я завжди буваю щирим по відношенні до своїх,
І допомагаю радо, якщо хтось з них накоїв,
А бува, проблема різна, це життя, що там казати,
Не забудь про щиру дружбу - говорила мені мати.
Я цю істину засвоїв, крізь життя несу дбайливо,
Хочу, щоб всі мої друзі жили довго і щасливо,
Щоб не було більше горя, щоби мир був в кожнім домі,
Щоб були усі щасливі, і щоб дякували долі!

Приспів:
Брат - це той, хто поруч біля тебе завжди!
Брат - це той, хто завжди боронить від біди!
Брат, я так пишаюсь, що у мене ти є!
Ми один одному завжди допоможем і все ми зможем!
Брат - це той, хто поруч біля тебе завжди!
Брат - це той, хто завжди боронить від біди!
Брат, я знаю точно, ти бажаєш добра мені, моїй сім''ї,
Країні! За тебе підіймаю келих до дна!

А якщо комусь із друзів треба вірна допомога,
Допоможу, це Святе, і точно знаю, це від Бога.
Я ніколи не вагався, друзів всіх назвав би братом,
Знаю я, що це не просто, їх буває небагато!
Коли друзі - вірні, щирі - то спокійніше живеться,
І ніхто тебе не зрадить, а як зрадить - то вернеться,
Говорив мені ще батько - що гуртом - так легше жити,
Коли друзі завжди поруч - можна жити - не тужити!

Приспів.    Юрій Васильківський та Анатолій Гнатюк','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2407616'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2407616','Брат','Я завжди буваю щирим по відношенні до своїх,
І допомагаю радо, якщо хтось з них накоїв,
А бува, проблема різна, це життя, що там казати,
Не забудь про щиру дружбу - говорила мені мати.
Я цю істину засвоїв, крізь життя несу дбайливо,
Хочу, щоб всі мої друзі жили довго і щасливо,
Щоб не було більше горя, щоби мир був в кожнім домі,
Щоб були усі щасливі, і щоб дякували долі!

Приспів:
Брат - це той, хто поруч біля тебе завжди!
Брат - це той, хто завжди боронить від біди!
Брат, я так пишаюсь, що у мене ти є!
Ми один одному завжди допоможем і все ми зможем!
Брат - це той, хто поруч біля тебе завжди!
Брат - це той, хто завжди боронить від біди!
Брат, я знаю точно, ти бажаєш добра мені, моїй сім''ї,
Країні! За тебе підіймаю келих до дна!

А якщо комусь із друзів треба вірна допомога,
Допоможу, це Святе, і точно знаю, це від Бога.
Я ніколи не вагався, друзів всіх назвав би братом,
Знаю я, що це не просто, їх буває небагато!
Коли друзі - вірні, щирі - то спокійніше живеться,
І ніхто тебе не зрадить, а як зрадить - то вернеться,
Говорив мені ще батько - що гуртом - так легше жити,
Коли друзі завжди поруч - можна жити - не тужити!

Приспів.    Юрій Васильківський та Анатолій Гнатюк');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2407616_l1','pisniua_2407616','YouTube','https://www.youtube.com/watch?v=8oO0oVDvjj0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2412717';
DELETE FROM song_versions WHERE song_id = 'pisniua_2412717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2412717';
DELETE FROM songs WHERE id = 'pisniua_2412717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2412717','Миколай','(Засинай). Музика: Захар Слова: Захар. Виконує: Захар','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мамо! Я перевірю це вікно,
Чи привідкритим є воно,
Щоб він зайшов! Щоб він зайшов!
Тату! Не зачиняй, будь ласка, хату,
Ти ж знаєш, я чекаю свята,
Щоб він прийшов! Щоб він прийшов!

Приспів.
Засинай... Засинай...
Оченята закривай...
Перешкоди на шляху
Миколая забирай,
Щоб вночі святий добряк
Не зашпортався, не впав,
Подарунки не розбив,
Собі ногу не зламав!
Ти засинай... Засинай...
Оченята закривай...
Перешкоди на шляху
Миколая забирай,
Бо вночі цей добряк
Добряче може впасти,
Іграшки свої склади -
Не став Миколі пастки!

Мамо! Моя ти люба, рідна ненько,
Ти розбуди мене раненько,
Щоб не проспав і вчасно встав!
Тату! Я так чекаю цього свята
І подарунків повну хату,
Я ж чемним був! Я чемним був!

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2412717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2412717','Миколай','Мамо! Я перевірю це вікно,
Чи привідкритим є воно,
Щоб він зайшов! Щоб він зайшов!
Тату! Не зачиняй, будь ласка, хату,
Ти ж знаєш, я чекаю свята,
Щоб він прийшов! Щоб він прийшов!

Приспів.
Засинай... Засинай...
Оченята закривай...
Перешкоди на шляху
Миколая забирай,
Щоб вночі святий добряк
Не зашпортався, не впав,
Подарунки не розбив,
Собі ногу не зламав!
Ти засинай... Засинай...
Оченята закривай...
Перешкоди на шляху
Миколая забирай,
Бо вночі цей добряк
Добряче може впасти,
Іграшки свої склади -
Не став Миколі пастки!

Мамо! Моя ти люба, рідна ненько,
Ти розбуди мене раненько,
Щоб не проспав і вчасно встав!
Тату! Я так чекаю цього свята
І подарунків повну хату,
Я ж чемним був! Я чемним був!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2412717_l1','pisniua_2412717','YouTube','https://www.youtube.com/watch?v=tSgkdHgHL6E','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2409512';
DELETE FROM song_versions WHERE song_id = 'pisniua_2409512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2409512';
DELETE FROM songs WHERE id = 'pisniua_2409512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2409512','Новий рік!','Музика: Андрій Пряжніков Слова: Андрій Пряжніков','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Завірюха всіяла місто все,
По дорозі віхолу нам несе,
Їй мороз сподобався дуже так,
Та рум''янець глянеться на щоках.
Аж ніяк від зимоньки не втекти,
Одягнем ялиноньку я і ти!
Апельсини, яблука, ананас
Тихо ми сховаємо на запас!

Приспів:
Новий рік! Новий рік! -
Іграшки, ялинка, маски!
Новий рік! Новий рік! -
Хороводів добрий знак!
Новий рік! Новий рік! -
Це дарунки світа казки!
Відпускать Новий рік
Ми не хочемо ніяк!

Хитро посміхається темний ліс,
Що приніс нам Дід Мороз, то сюрприз!
Загадай бажання ти, міцно спи,
Та чекай новенького PSP!

Приспів.

На санчатах з гірочки полетів,
Та сніжком поцілити захотів,
Друзі ж бо не сердяться, не ревуть,
До весілля всі синці заживуть!

Приспів.

Відпускать Новий рік
Ми не хочемо ніяк!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2409512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2409512','Новий рік!','Завірюха всіяла місто все,
По дорозі віхолу нам несе,
Їй мороз сподобався дуже так,
Та рум''янець глянеться на щоках.
Аж ніяк від зимоньки не втекти,
Одягнем ялиноньку я і ти!
Апельсини, яблука, ананас
Тихо ми сховаємо на запас!

Приспів:
Новий рік! Новий рік! -
Іграшки, ялинка, маски!
Новий рік! Новий рік! -
Хороводів добрий знак!
Новий рік! Новий рік! -
Це дарунки світа казки!
Відпускать Новий рік
Ми не хочемо ніяк!

Хитро посміхається темний ліс,
Що приніс нам Дід Мороз, то сюрприз!
Загадай бажання ти, міцно спи,
Та чекай новенького PSP!

Приспів.

На санчатах з гірочки полетів,
Та сніжком поцілити захотів,
Друзі ж бо не сердяться, не ревуть,
До весілля всі синці заживуть!

Приспів.

Відпускать Новий рік
Ми не хочемо ніяк!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2409512_l1','pisniua_2409512','YouTube','https://www.youtube.com/watch?v=y8Y3gw3Nq3Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2411952';
DELETE FROM song_versions WHERE song_id = 'pisniua_2411952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2411952';
DELETE FROM songs WHERE id = 'pisniua_2411952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2411952','Нерозлучна двійка','Музика: Микола Ведмедеря Слова: Юлія Хандожинська','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Ми - найкращі друзі -
Марта і Надійка!
Нас ще називають
Нерозлучна двійка!
Тільки сонце вранці
Скине промінець,
Ми, немов метелики,
Побігли навпростець!

Приспів:
Нерозлучна двійка -
Марта і Надійка! -
Називають нас
Вже багато раз.
Нерозлучна двійка -
Марта і Надійка!
Ті-лі-лі-лі-лі,
Подруги малі!

Разом ми усюди:
В цирк ідем і в парк,
Разом на трамваї
Їдем в зоопарк,
Любимо цукерки,
Любимо торти.
Кращих друзів в світі
Просто не знайти!

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2411952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2411952','Нерозлучна двійка','Ми - найкращі друзі -
Марта і Надійка!
Нас ще називають
Нерозлучна двійка!
Тільки сонце вранці
Скине промінець,
Ми, немов метелики,
Побігли навпростець!

Приспів:
Нерозлучна двійка -
Марта і Надійка! -
Називають нас
Вже багато раз.
Нерозлучна двійка -
Марта і Надійка!
Ті-лі-лі-лі-лі,
Подруги малі!

Разом ми усюди:
В цирк ідем і в парк,
Разом на трамваї
Їдем в зоопарк,
Любимо цукерки,
Любимо торти.
Кращих друзів в світі
Просто не знайти!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2408828';
DELETE FROM song_versions WHERE song_id = 'pisniua_2408828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2408828';
DELETE FROM songs WHERE id = 'pisniua_2408828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2408828','Учителі','Музика: Юрій Васильківський Слова: Галина Захарченко','uk','ukraine_1991',NULL,NULL,'авторське подання','Аранжування - Юрій Васильківський, запис - Master Vox Records. Пісню виконують Юрій Васильківський та Галина Захарченко.','Є на світі професій багато
Та від Бога одна на землі,
Той, хто вміє учити й навчати,
Гордо звуться від так, вчителі
Шлях нелегкий і дуже тернистий
І невдячним буває завжди,
Хоч важкий, але все ж променистий,
Бо знання залишає сліди!

Приспів:
Учителі! Порадники і друзі!
Обрали ви дорогу непросту.
Ми Вам сьогодні дякуємо дуже
За Вашу працю вчительську святу!

Ваші душі всі мудрістю вкриті
В них відлуння дитячих сердець
Щирим поглядом завжди зігріті
Бо для людства учитель — взірець!
Я вклоняюсь учительській долі
За одвічну любов до життя,
За той вогник дарований в школі,
Що запалює наші серця!

Приспів.    Юрій Васильківський та Галина Захарченко','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2408828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2408828','Учителі','Є на світі професій багато
Та від Бога одна на землі,
Той, хто вміє учити й навчати,
Гордо звуться від так, вчителі
Шлях нелегкий і дуже тернистий
І невдячним буває завжди,
Хоч важкий, але все ж променистий,
Бо знання залишає сліди!

Приспів:
Учителі! Порадники і друзі!
Обрали ви дорогу непросту.
Ми Вам сьогодні дякуємо дуже
За Вашу працю вчительську святу!

Ваші душі всі мудрістю вкриті
В них відлуння дитячих сердець
Щирим поглядом завжди зігріті
Бо для людства учитель — взірець!
Я вклоняюсь учительській долі
За одвічну любов до життя,
За той вогник дарований в школі,
Що запалює наші серця!

Приспів.    Юрій Васильківський та Галина Захарченко');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2408828_l1','pisniua_2408828','YouTube','https://www.youtube.com/watch?v=IiYvXzFOuo8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2412199';
DELETE FROM song_versions WHERE song_id = 'pisniua_2412199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2412199';
DELETE FROM songs WHERE id = 'pisniua_2412199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2412199','Подруга','Музика: Олексій Потапенко Слова: Олексій Потапенко','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконують Лідія Каменських та Алла Кудлай.','Щось напала на мене печаль,
Я її прожену, прожену!
І жаліти себе вже край,
Подругу я під руку візьму!
Я прийду, тільки ти поклич,
Розірву твій дівочий сум,
Я у сумку вкладу пару тищ,
Я гуляю сьогодні й живу!

Приспів:
А в мене подруга така сучасна
І приїжджа до мене вона часто!
Завжди спасе мене від мого жалю,
Тому що так вона життя кохає!
А моя подруга така сучасна,
У неї очі, ніби сонце ясне!
Вона як вийде на танцпол, як вжарить,
Вона завжди мене підзаряджає!

Я без тебе не можу і все!
Тільки ти розганяєш мій жаль!
Хай кружляє, у танці несе,
І дзвенить із шампанським кришталь.
Хай позаочі заздрять нам всі,
І шепочуть, що так не бува.
Дружба наша вище Землі
І бурхлива вона, як вулкан!

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2412199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2412199','Подруга','Щось напала на мене печаль,
Я її прожену, прожену!
І жаліти себе вже край,
Подругу я під руку візьму!
Я прийду, тільки ти поклич,
Розірву твій дівочий сум,
Я у сумку вкладу пару тищ,
Я гуляю сьогодні й живу!

Приспів:
А в мене подруга така сучасна
І приїжджа до мене вона часто!
Завжди спасе мене від мого жалю,
Тому що так вона життя кохає!
А моя подруга така сучасна,
У неї очі, ніби сонце ясне!
Вона як вийде на танцпол, як вжарить,
Вона завжди мене підзаряджає!

Я без тебе не можу і все!
Тільки ти розганяєш мій жаль!
Хай кружляє, у танці несе,
І дзвенить із шампанським кришталь.
Хай позаочі заздрять нам всі,
І шепочуть, що так не бува.
Дружба наша вище Землі
І бурхлива вона, як вулкан!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2412199_l1','pisniua_2412199','YouTube','https://www.youtube.com/watch?v=Lx1yxhoZF-0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2410457';
DELETE FROM song_versions WHERE song_id = 'pisniua_2410457';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2410457';
DELETE FROM songs WHERE id = 'pisniua_2410457';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2410457','О, Маріє','Музика: Михайло Золотуха Слова: Михайло Золотуха','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Не остудим сердець,
Де світанок надії зоріє,
Твоє ім''я в вінець,
Мрій і долі вплітай, Маріє!
Нами не погорди!
У хвилини терпінь
Будь із нами,
Тихі наші мольби,
Тихі наші мольби,
Линуть в серце твоє
Пелюстками, о, Маріє!

Як святковий орган
Уввіди у душевні світлиці,
Притулися до ран
Сіяючим жестом правиці,
Золотистим дощем
Краплі втіхи зрони празникові,
Серця болісний щем,
Серця болісний щем
Угамуй оксамитом любові,
О, Маріє!

Берегине добра,
Покровителько наша, Леліє,
В струнах ночі і дня
Світить ім''я Твоє, о, Маріє!
І розмай хоругв
Розквітає, мов квіти пахучі,
Ллється з серця любов,
Ллється з серця любов,
Торжеством наповняючи душі,
О, Маріє!','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2410457'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2410457','О, Маріє','Не остудим сердець,
Де світанок надії зоріє,
Твоє ім''я в вінець,
Мрій і долі вплітай, Маріє!
Нами не погорди!
У хвилини терпінь
Будь із нами,
Тихі наші мольби,
Тихі наші мольби,
Линуть в серце твоє
Пелюстками, о, Маріє!

Як святковий орган
Уввіди у душевні світлиці,
Притулися до ран
Сіяючим жестом правиці,
Золотистим дощем
Краплі втіхи зрони празникові,
Серця болісний щем,
Серця болісний щем
Угамуй оксамитом любові,
О, Маріє!

Берегине добра,
Покровителько наша, Леліє,
В струнах ночі і дня
Світить ім''я Твоє, о, Маріє!
І розмай хоругв
Розквітає, мов квіти пахучі,
Ллється з серця любов,
Ллється з серця любов,
Торжеством наповняючи душі,
О, Маріє!');
DELETE FROM song_links WHERE song_id = 'pisniua_2412512';
DELETE FROM song_versions WHERE song_id = 'pisniua_2412512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2412512';
DELETE FROM songs WHERE id = 'pisniua_2412512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2412512','Миколай, Миколай','Музика: Михайло Назарець Слова: Юлія Хандожинська','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Кожен рік до нас приходить Миколай,
Відкривай йому хатину і чекай,
Він виконує бажання дітвори,
Залюбки до всіх заходить у двори!

Приспів:
Миколай, Миколай!
Подаруночки й гостинці
Нам несе, нам несе
В чарівні своїй торбинці!
Миколай, Миколай -
Чарівник із диво-казки, -
Завітай, завітай,
Завітай до нас, будь ласка!

Всі даруночки твої, ой, смачні,
Радісні в нас будуть новорічні дні!
Ой, спасибі, ой, спасибі, Миколай,
На наступний рік до нас завітай!

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2412512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2412512','Миколай, Миколай','Кожен рік до нас приходить Миколай,
Відкривай йому хатину і чекай,
Він виконує бажання дітвори,
Залюбки до всіх заходить у двори!

Приспів:
Миколай, Миколай!
Подаруночки й гостинці
Нам несе, нам несе
В чарівні своїй торбинці!
Миколай, Миколай -
Чарівник із диво-казки, -
Завітай, завітай,
Завітай до нас, будь ласка!

Всі даруночки твої, ой, смачні,
Радісні в нас будуть новорічні дні!
Ой, спасибі, ой, спасибі, Миколай,
На наступний рік до нас завітай!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2412512_l1','pisniua_2412512','YouTube','https://www.youtube.com/watch?v=nRsclFnb2zw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2412512_l2','pisniua_2412512','YouTube','https://www.youtube.com/watch?v=rGqvWd3w8uc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2412414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2412414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2412414';
DELETE FROM songs WHERE id = 'pisniua_2412414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2412414','Зимова казка','Музика: Михайло Хома Слова: Михайло Хома. Виконує: DZIDZIO','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Найбільше в світі люблю я,
Коли ще осінню зима
Лапатим снігом перший раз
Легенько посипає нас!
Від білосніжної краси
Стає казково навкруги,
Всі разом кричимо: Ура!
Ура! До нас прийшла зима!

Приспів:
Сніжинки крутяться веселі, |
Щасливий Новий рік іде!    |
Нам подарунки під ялинку   |
Зимова Казка принесе!      | (2)

А ще найбільше люблю я,
Коли весела дітвора
Катається на ковзанах,
На лижах, санках, на кульках!
З високої гори летять,
Радіють, тішуться, пищать!
Всі разом кричимо: Ура!
Ура! До нас прийшла зима!

Приспів.

Скажи мені, чи любиш ти,
Коли, коли канікули?
Коли святкові вихідні?
Коли дарують шось тобі?
Ану, ану, скажи мені:
Чи віриш в казку ти, чи ні?
Йде Новий рік, йде коляда -
Всі разом кричимо: Ура!

Приспів.

Сніжинки крутяться веселі,
Щасливий Новий рік іде!
Найкращі в світі подарунки
Бувають тільки в АТБ!','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:new-year'', ''Пісні про красу природи'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2412414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2412414','Зимова казка','Найбільше в світі люблю я,
Коли ще осінню зима
Лапатим снігом перший раз
Легенько посипає нас!
Від білосніжної краси
Стає казково навкруги,
Всі разом кричимо: Ура!
Ура! До нас прийшла зима!

Приспів:
Сніжинки крутяться веселі, |
Щасливий Новий рік іде!    |
Нам подарунки під ялинку   |
Зимова Казка принесе!      | (2)

А ще найбільше люблю я,
Коли весела дітвора
Катається на ковзанах,
На лижах, санках, на кульках!
З високої гори летять,
Радіють, тішуться, пищать!
Всі разом кричимо: Ура!
Ура! До нас прийшла зима!

Приспів.

Скажи мені, чи любиш ти,
Коли, коли канікули?
Коли святкові вихідні?
Коли дарують шось тобі?
Ану, ану, скажи мені:
Чи віриш в казку ти, чи ні?
Йде Новий рік, йде коляда -
Всі разом кричимо: Ура!

Приспів.

Сніжинки крутяться веселі,
Щасливий Новий рік іде!
Найкращі в світі подарунки
Бувають тільки в АТБ!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2412414_l1','pisniua_2412414','YouTube','https://www.youtube.com/watch?v=vDf9bgQMx3Y','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2412216';
DELETE FROM song_versions WHERE song_id = 'pisniua_2412216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2412216';
DELETE FROM songs WHERE id = 'pisniua_2412216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2412216','Друзі','Музика: Анна Петраш Слова: Анна Петраш','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я маю декілька слів,
Простих і щирих рядків
Про тих, хто завжди є в нас,
Попри характер і час!
Це ті, хто руку дають,
Радіють серцем, живуть,
І ви на хвилі одній!

Приспів:
Це друзі!
Поруч навіть у біді!
Це друзі!
Пробачають помилки!
Це друзі!
Просто справжні, як і ти!
Це друзі!
З тобою, зі мною горою!
Це друзі!..

З ким наша пісня летить,
А всі проблеми за мить
Зникають, наче в пісок...
Я знаю, все буде ок!
Бажання дуже просте:
Почути перше за все
Питання хочеш, приходь!

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2412216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2412216','Друзі','Я маю декілька слів,
Простих і щирих рядків
Про тих, хто завжди є в нас,
Попри характер і час!
Це ті, хто руку дають,
Радіють серцем, живуть,
І ви на хвилі одній!

Приспів:
Це друзі!
Поруч навіть у біді!
Це друзі!
Пробачають помилки!
Це друзі!
Просто справжні, як і ти!
Це друзі!
З тобою, зі мною горою!
Це друзі!..

З ким наша пісня летить,
А всі проблеми за мить
Зникають, наче в пісок...
Я знаю, все буде ок!
Бажання дуже просте:
Почути перше за все
Питання хочеш, приходь!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2412216_l1','pisniua_2412216','YouTube','https://www.youtube.com/watch?v=-kD0xIxGnZ4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2414226';
DELETE FROM song_versions WHERE song_id = 'pisniua_2414226';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2414226';
DELETE FROM songs WHERE id = 'pisniua_2414226';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2414226','Христос Рождається!','Музика: Ірина Федишин Слова: Ірина Федишин. Виконує: Ірина Федишин','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Христос ся Рождає!
Тож Славім, Славім, Славім Його!

Звістку цю першу пастирі учули
І до вертепу спішно всі прибули,
Дитятко в яслах щиро привітали,
Бо в нім Месію своєго пізнали,
Пізнали!

Приспів:
Бо то дитя Боже, рідненьке і гоже,
Що воно лиш може цілий світ спасти!
Тож Славім, Славім, Славім Його!
Христос ся Рождає!
Тож Славім, Славім Його!

Три славні царі зі Сходу приходять,
Ладан і миро, золото приносять,
Цареві світу низько поклонились
І серця їхні возвеселились!

Приспів.

Радійте, люди, Ісус народився,
Різдву Його всі низько поклонімся,
Тож веселімся нині і співаймо,
Різдво Ісуса разом прославляймо!

Приспів.','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2414226'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2414226','Христос Рождається!','Христос ся Рождає!
Тож Славім, Славім, Славім Його!

Звістку цю першу пастирі учули
І до вертепу спішно всі прибули,
Дитятко в яслах щиро привітали,
Бо в нім Месію своєго пізнали,
Пізнали!

Приспів:
Бо то дитя Боже, рідненьке і гоже,
Що воно лиш може цілий світ спасти!
Тож Славім, Славім, Славім Його!
Христос ся Рождає!
Тож Славім, Славім Його!

Три славні царі зі Сходу приходять,
Ладан і миро, золото приносять,
Цареві світу низько поклонились
І серця їхні возвеселились!

Приспів.

Радійте, люди, Ісус народився,
Різдву Його всі низько поклонімся,
Тож веселімся нині і співаймо,
Різдво Ісуса разом прославляймо!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2414226_l1','pisniua_2414226','YouTube','https://www.youtube.com/watch?v=VXs2TUg5gk4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2412726';
DELETE FROM song_versions WHERE song_id = 'pisniua_2412726';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2412726';
DELETE FROM songs WHERE id = 'pisniua_2412726';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2412726','Сонечко','Музика: Світлана Тарабарова Слова: Світлана Тарабарова. Виконує: Світлана Тарабарова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Сонечко, сонечко ти моє,
Дякую, сонечко, що ти в мене є!
Мрія у кожного - бути щасливим,
Коли посміхаєшся - все це можливо!

Маленькі ручки, теплі обійми,
Я знаю виростеш, здійсняться твої мрії,
Рожеві щічки, в очах надії,
Мама без слів тебе чудово розуміє!

Приспів.

Мрія у кожного - бути щасливим,    |
Коли посміхаєшся - все це можливо! | (2)

Мама зігріє і поцілує
І, навіть, кашею смачною нагодує.
Мама з тобою на цій світлині,
І найцінніше, що в нас є, - наша родина!

Приспів.

Мрія у кожного - бути щасливим,    |
Коли посміхаєшся - все це можливо! | (2)

Приспів.

Мрія у кожного - бути щасливим,
Все це можливо! Все це можливо!

Приспів.

Мрія у кожного - бути щасливим,    |
Коли посміхаєшся - все це можливо! | (2)','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2412726'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2412726','Сонечко','Приспів:
Сонечко, сонечко ти моє,
Дякую, сонечко, що ти в мене є!
Мрія у кожного - бути щасливим,
Коли посміхаєшся - все це можливо!

Маленькі ручки, теплі обійми,
Я знаю виростеш, здійсняться твої мрії,
Рожеві щічки, в очах надії,
Мама без слів тебе чудово розуміє!

Приспів.

Мрія у кожного - бути щасливим,    |
Коли посміхаєшся - все це можливо! | (2)

Мама зігріє і поцілує
І, навіть, кашею смачною нагодує.
Мама з тобою на цій світлині,
І найцінніше, що в нас є, - наша родина!

Приспів.

Мрія у кожного - бути щасливим,    |
Коли посміхаєшся - все це можливо! | (2)

Приспів.

Мрія у кожного - бути щасливим,
Все це можливо! Все це можливо!

Приспів.

Мрія у кожного - бути щасливим,    |
Коли посміхаєшся - все це можливо! | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2412726_l1','pisniua_2412726','YouTube','https://www.youtube.com/watch?v=OBmO8Fvrp9I','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_241328';
DELETE FROM song_versions WHERE song_id = 'pisniua_241328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_241328';
DELETE FROM songs WHERE id = 'pisniua_241328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_241328','Юним','Музика: Володимир Скоробський Слова: Володимир Скоробський. Виконує: Володимир Скоробський, Журборіз','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'Аудіо-CD "Журборіз. Збірка Воїна" (2004)','Присвячено Подвигу Героїв Крут: "Вони - студенти, курсанти, школярі... без вагань віддали молоде життя в ім''я волі свого народу... Це - символ нескореного духу нашої нації. Це - пересторога тим, хто і нині сподівається поставити націю на коліна..." Детальніше >> акорди підібрано на слух','Мелодія 1
Історія - книга народів,
І кожен записаний в ній,
І ті, що жертовно, у згоді
Покрили під Крутами сніг.

Безвусії юні герої
Вступили в нерівний двобій.
Мов триста спартанців, собою
Закрили крутянський прохід.

Мелодія 2
А в Києві дзвони в тривозі
І київські лики святі
За тих, хто в січневі морози
Вступили під Крутами в бій.

Мелодія 1

Юначе, гартуйся до бою,
І дух своїх предків заклич.
Згадай, як Виговський з ордою
Втопили в крові москалів.

Богданову славу, й Мазепи,
Відвагу Сірка і князів
Вклади в своє серце як треба
І смерть подолати зумій.

Мелодія 2

А в Києві дзвони в тривозі,
І київські старці сумні
За тих, хто в січневі морози
Скропили крутянські сніги.

Мелодія 1

Ніхто з них не втік з поля бою,
Полягли усі як один,
А все ж перемогу собою
Лишили нащадкам в примір.

Відваги, завзяття і жертви,
Незламної волі зачин,
Життям поборолись до смерти
І смерть побороли із тим.

Мелодія 2

А в Києві в січні морози
І дзвони замовкли сумні
За тих, хто зробили, що в змозі,
Скропили крутянські сніги.

Мелодія 1

Юначе, гартуй свою волю,
Як прийде година й тобі,
Коли Бог покличе й Вкраїна
Закрити крутянський рубіж.

Мелодія 2

А в небі ангельськії хори,
І київські лики святих
Приймають безвусих героїв
Й ведуть до Творця на поклін.

Виспівують "Слава Героям!"
І Богу складають поклін.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:kruty'', ''Бардівські пісні'', "Пісні пам''яті Героїв бою під Крутами"]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_241328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_241328','Юним','Мелодія 1
Історія - книга народів,
І кожен записаний в ній,
І ті, що жертовно, у згоді
Покрили під Крутами сніг.

Безвусії юні герої
Вступили в нерівний двобій.
Мов триста спартанців, собою
Закрили крутянський прохід.

Мелодія 2
А в Києві дзвони в тривозі
І київські лики святі
За тих, хто в січневі морози
Вступили під Крутами в бій.

Мелодія 1

Юначе, гартуйся до бою,
І дух своїх предків заклич.
Згадай, як Виговський з ордою
Втопили в крові москалів.

Богданову славу, й Мазепи,
Відвагу Сірка і князів
Вклади в своє серце як треба
І смерть подолати зумій.

Мелодія 2

А в Києві дзвони в тривозі,
І київські старці сумні
За тих, хто в січневі морози
Скропили крутянські сніги.

Мелодія 1

Ніхто з них не втік з поля бою,
Полягли усі як один,
А все ж перемогу собою
Лишили нащадкам в примір.

Відваги, завзяття і жертви,
Незламної волі зачин,
Життям поборолись до смерти
І смерть побороли із тим.

Мелодія 2

А в Києві в січні морози
І дзвони замовкли сумні
За тих, хто зробили, що в змозі,
Скропили крутянські сніги.

Мелодія 1

Юначе, гартуй свою волю,
Як прийде година й тобі,
Коли Бог покличе й Вкраїна
Закрити крутянський рубіж.

Мелодія 2

А в небі ангельськії хори,
І київські лики святих
Приймають безвусих героїв
Й ведуть до Творця на поклін.

Виспівують "Слава Героям!"
І Богу складають поклін.');
DELETE FROM song_links WHERE song_id = 'pisniua_2413563';
DELETE FROM song_versions WHERE song_id = 'pisniua_2413563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2413563';
DELETE FROM songs WHERE id = 'pisniua_2413563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2413563','На Різдво','Музика: Віктор Курандо, Kamaliya Слова: Віктор Курандо. Виконує: KAMALIYA','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На Різдво дива іноді бува,
Але можна в диво і не вірити.
Першу зіроньку просто почекай -
Свято почалось, йой, не втримати!

Приспів:
Тільки обережним будь
У виборі різдвяних бажань!
І ніколи не жалкуй
Теплих, найщиріших вітань!
На Різдво збувається все,
Що забажається -
Я тебе вітаю з Різдвом!
На Різдво збувається все
Й дива трапляються -
Я тебе вітаю з Різдвом!

На Різдво дива іноді бува,
Коли поруч тебе рідні люди!
Старий рік пішов - добре пригадай,
Й починай новий - далі буде!

Приспів. (2)','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2413563'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2413563','На Різдво','На Різдво дива іноді бува,
Але можна в диво і не вірити.
Першу зіроньку просто почекай -
Свято почалось, йой, не втримати!

Приспів:
Тільки обережним будь
У виборі різдвяних бажань!
І ніколи не жалкуй
Теплих, найщиріших вітань!
На Різдво збувається все,
Що забажається -
Я тебе вітаю з Різдвом!
На Різдво збувається все
Й дива трапляються -
Я тебе вітаю з Різдвом!

На Різдво дива іноді бува,
Коли поруч тебе рідні люди!
Старий рік пішов - добре пригадай,
Й починай новий - далі буде!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2413563_l1','pisniua_2413563','YouTube','https://www.youtube.com/watch?v=gloQJikVhdg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2414212';
DELETE FROM song_versions WHERE song_id = 'pisniua_2414212';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2414212';
DELETE FROM songs WHERE id = 'pisniua_2414212';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2414212','Зійшла зоря над Вифлеємом','Музика: Ірина Федишин Слова: Ірина Федишин. Виконує: Ірина Федишин','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Зійшла зоря над Вифлеємом,
Зоря надії і добра,
І трьох царів з країв далеких |
В малу яскиню привела.        | (2)

В дарах кадило, злото й миро
Царі Дитятку принесли,
Цареві світу поклонились,     |
Серця до Бога вознесли!       | (2)

Серця до Бога вознесли!..

Прийми, о, Боже, нашу дяку,
Що нам Спасителя зіслав,
Що наші вислухав молитви,     |
Надію й спокій серцю дав.     | (2)

Сія зоря над Вифлеємом,
Христу вклонитись люди йдуть,
А три царі в краї далекі      |
Веселу вістку принесуть.      | (2)

Радійте, люди, Бог родився,
Славіть Його святе Ім''я.
Нехай колядками вітає         |
Божого Сина вся земля!        | (2)','[''pisni.org.ua'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2414212'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2414212','Зійшла зоря над Вифлеємом','Зійшла зоря над Вифлеємом,
Зоря надії і добра,
І трьох царів з країв далеких |
В малу яскиню привела.        | (2)

В дарах кадило, злото й миро
Царі Дитятку принесли,
Цареві світу поклонились,     |
Серця до Бога вознесли!       | (2)

Серця до Бога вознесли!..

Прийми, о, Боже, нашу дяку,
Що нам Спасителя зіслав,
Що наші вислухав молитви,     |
Надію й спокій серцю дав.     | (2)

Сія зоря над Вифлеємом,
Христу вклонитись люди йдуть,
А три царі в краї далекі      |
Веселу вістку принесуть.      | (2)

Радійте, люди, Бог родився,
Славіть Його святе Ім''я.
Нехай колядками вітає         |
Божого Сина вся земля!        | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2414212_l1','pisniua_2414212','YouTube','https://www.youtube.com/watch?v=B2L_SW2EUR8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_241563';
DELETE FROM song_versions WHERE song_id = 'pisniua_241563';
DELETE FROM songs_fts WHERE song_id = 'pisniua_241563';
DELETE FROM songs WHERE id = 'pisniua_241563';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_241563','Жалую баную','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Лемківські співанки. Зібрав і упорядкував М. Соболевський. — К.: Музична Україна, 1967. — 320 с.','Пісня з добірки М.Соболевського: Лемківські співанки Діалектизми: банувати - тужити, сумувати; глава - голова; го - його; жалую - шкодую; мі - мені; нихто - ніхто; розгваряти - розраджувати; то-сте - то ви; тот - той; шалений розум - дурний розум.','Жалую-баную і буду навіки
Про шалений розум гей і людски язики

Про шалений розум же я го не мала
Про людски язики гей же я їх слухала

Жалі мої жалі то-сте мі на главі
Як Студена Роса гей на Зеленій Траві

Як Вітрец подує то Росицю зварит
Мої тяжкы жалі гей нихто не розгварит

Што я виплакала тот рочок слезочок
То бы ся обернув гей млинский каменочок','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_241563'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_241563','Жалую баную','Жалую-баную і буду навіки
Про шалений розум гей і людски язики

Про шалений розум же я го не мала
Про людски язики гей же я їх слухала

Жалі мої жалі то-сте мі на главі
Як Студена Роса гей на Зеленій Траві

Як Вітрец подує то Росицю зварит
Мої тяжкы жалі гей нихто не розгварит

Што я виплакала тот рочок слезочок
То бы ся обернув гей млинский каменочок');
DELETE FROM song_links WHERE song_id = 'pisniua_2413920';
DELETE FROM song_versions WHERE song_id = 'pisniua_2413920';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2413920';
DELETE FROM songs WHERE id = 'pisniua_2413920';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2413920','Вірю в тебе','Музика: Джамала, Дарина Федорова, Андрій Чмут Слова: Джамала, Дарина Федорова, Андрій Чмут. Виконує: Джамала','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У світі, де все було не так,
Лише одна деталь: З тобою поряд я!
Ти мій! Ти мій! Та без вагань
Своє життя і все і все, ким я була,
Віддала б я! Віддала б я! Віддала б я,
Щоб ти посміхнувся мені!

Приспів:
Одна за одною хвилі пройдуть,
Як сонце над морем
Освітлю твій путь!
Ти станеш дорослим, але пам''ятай:
Я поряд навічно! У серці шукай!
Одна за одною хвилі пройдуть,
Настане і твій час
Відправитись в путь!
Знаю, ти зможеш змінити цей світ,
Лише добротою моя віра летить!..

Понад усе чекала я тебе і світ ожива,
Я рахувала дні. Ти мій! Ти мій! Мрія моя!
Ти став усім і ніжністю своєю
Надав значення! Дав значення! Дав значення
Життю, що так швидко лине!..

Приспів.

Хвилі пройдуть!.. Хвилі!.. Хвилі!..
Хвилі пройдуть!.. Освітлю твій путь!..
Я освітлю, освітлю твій путь!..
Вірю!.. Вірю!.. Змінити цей світ!..
Вірю!.. Вірю!.. Моя віра летить!..

Приспів.

Тільки не плач!..
Одна за одною хвилі пройдуть!..
Тільки не плач!..
Настане і твій час
Відправитись в путь!..
Тільки не плач!..
Знаю, ти зможеш змінити цей світ!..
Змінити цей світ!..
Лише добротою моя віра летить!..
Дав значення!.. Ти дав значення
Життю, що так швидко лине!..','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2413920'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2413920','Вірю в тебе','У світі, де все було не так,
Лише одна деталь: З тобою поряд я!
Ти мій! Ти мій! Та без вагань
Своє життя і все і все, ким я була,
Віддала б я! Віддала б я! Віддала б я,
Щоб ти посміхнувся мені!

Приспів:
Одна за одною хвилі пройдуть,
Як сонце над морем
Освітлю твій путь!
Ти станеш дорослим, але пам''ятай:
Я поряд навічно! У серці шукай!
Одна за одною хвилі пройдуть,
Настане і твій час
Відправитись в путь!
Знаю, ти зможеш змінити цей світ,
Лише добротою моя віра летить!..

Понад усе чекала я тебе і світ ожива,
Я рахувала дні. Ти мій! Ти мій! Мрія моя!
Ти став усім і ніжністю своєю
Надав значення! Дав значення! Дав значення
Життю, що так швидко лине!..

Приспів.

Хвилі пройдуть!.. Хвилі!.. Хвилі!..
Хвилі пройдуть!.. Освітлю твій путь!..
Я освітлю, освітлю твій путь!..
Вірю!.. Вірю!.. Змінити цей світ!..
Вірю!.. Вірю!.. Моя віра летить!..

Приспів.

Тільки не плач!..
Одна за одною хвилі пройдуть!..
Тільки не плач!..
Настане і твій час
Відправитись в путь!..
Тільки не плач!..
Знаю, ти зможеш змінити цей світ!..
Змінити цей світ!..
Лише добротою моя віра летить!..
Дав значення!.. Ти дав значення
Життю, що так швидко лине!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2413920_l1','pisniua_2413920','YouTube','https://www.youtube.com/watch?v=N1vIl1g4M4c','video',NULL,1);
