DELETE FROM song_links WHERE song_id = 'pisniua_9556281';
DELETE FROM song_versions WHERE song_id = 'pisniua_9556281';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9556281';
DELETE FROM songs WHERE id = 'pisniua_9556281';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9556281','Афини','Музика: Ірина Вихованець (Fiinka) Слова: Ірина Вихованець (Fiinka)','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Ірина Вихованець (Fiinka).','Може хто знає, єк рай виглідає?
Може хто знає в кого спитати?
Нашо будемо дурно шукати,
Якшо є ти, я й Карпати!

Ми з тобою пройдемоси по плаю,
І моя рука в твоїх руках...
Дивис, мій миленький,
Тут я маленьков
Бігала босов по царинках.
І на світі більше раю,
Як той, шо ти сам собі найшов.
Я його виділа, я йго знаю,
Там і жиє любов!

Приспів:
А там ростут афини, афини
В лісі за горбом!
І як то так трафило, трафило
Бути нам разом?
А там ростут афини, афини...
Ягидочок смак.
То є моє вічне літо
На твоїх губах!..

Може в тім раю сонце не спит?
Може там душі прозорі?
В кого спитаю - кождий мовчит.
Добре, шо ми є і гори!

Ми з тобою пройдемоси по краю,
Де мрії пилуютси в вітрах.
Дивис, мій миленький,
Тепер наш маленький
Бігає з нами по царинках!
І немає на світі більше раю,
Як той, шо ти сам собі найшов.
Я його виділа, я йго знаю,
Там і жиє любов!

Приспів.

Враз життє єк гіркі ягідочки,
А з тобов - солодкі, та як мед.
Най там кажут, хто, шо собі схоче,
Ми є вічні, та як сей момент,
Коли ростут афини!..
Коли ростут афини, афини
В лісі за горбом!
І як то так трафило, трафило
Бути нам разом?
А там ростут афини, афини...
Ягидочок смак.
То є моє вічне літо
На твоїх губах!..','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:lirychni'', ''Пісні про красу природи'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9556281'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9556281','Афини','Може хто знає, єк рай виглідає?
Може хто знає в кого спитати?
Нашо будемо дурно шукати,
Якшо є ти, я й Карпати!

Ми з тобою пройдемоси по плаю,
І моя рука в твоїх руках...
Дивис, мій миленький,
Тут я маленьков
Бігала босов по царинках.
І на світі більше раю,
Як той, шо ти сам собі найшов.
Я його виділа, я йго знаю,
Там і жиє любов!

Приспів:
А там ростут афини, афини
В лісі за горбом!
І як то так трафило, трафило
Бути нам разом?
А там ростут афини, афини...
Ягидочок смак.
То є моє вічне літо
На твоїх губах!..

Може в тім раю сонце не спит?
Може там душі прозорі?
В кого спитаю - кождий мовчит.
Добре, шо ми є і гори!

Ми з тобою пройдемоси по краю,
Де мрії пилуютси в вітрах.
Дивис, мій миленький,
Тепер наш маленький
Бігає з нами по царинках!
І немає на світі більше раю,
Як той, шо ти сам собі найшов.
Я його виділа, я йго знаю,
Там і жиє любов!

Приспів.

Враз життє єк гіркі ягідочки,
А з тобов - солодкі, та як мед.
Най там кажут, хто, шо собі схоче,
Ми є вічні, та як сей момент,
Коли ростут афини!..
Коли ростут афини, афини
В лісі за горбом!
І як то так трафило, трафило
Бути нам разом?
А там ростут афини, афини...
Ягидочок смак.
То є моє вічне літо
На твоїх губах!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9556281_l1','pisniua_9556281','YouTube','https://www.youtube.com/watch?v=C-NR51vxvjo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_95786';
DELETE FROM song_versions WHERE song_id = 'pisniua_95786';
DELETE FROM songs_fts WHERE song_id = 'pisniua_95786';
DELETE FROM songs WHERE id = 'pisniua_95786';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_95786','Минає день, минає ніч','Музика: Микола Мозговий Слова: Юрій Рибчинський. Виконує: Софія Ротару, Ольга Макаренко, Микола Мозговий, Олександр Пономарьов, Петро Довгошия, Надія Шестак','uk','ukraine_1991',NULL,NULL,'Пісенник "Червона Рута", Київ "Музична Україна" 1993','Акорди від piwtorachok.','Минає день, минає ніч.
Хвилини котяться, як хвилі голубі.
Не в тому річ, не в тому річ,
Що я сказав "люблю" лише одній тобі.
A
Не в тім печаль, не в тім печаль,
Dm
Що цілий всесвіт був тоді в твоїх очах.
Безмежний всесвіт був тоді в твоїх очах,
Але не в тім моя печаль.
Приспів:
Біда не в тім, що свище вітер лютий,   |
Що січень на вікні малює мертві квіти. |
Біда не в тім, що ти мене не любиш,    |
Біда, що я тебе не можу розлюбити.     | (2)
Минає день, минає ніч,
Не зупинити нам з тобою часу плин.
Не в тому річ, не в тому річ,
Що після зустрічі розлука б''є у дзвін.
Акорди:
A
Не в тім печаль, не в тім печаль,
Dm
Що, наче постріл, пролунало те "прощай".
Як зради постріл, пролунало те "прощай",
Але не в тім моя печаль.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_95786'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_95786','Минає день, минає ніч','Минає день, минає ніч.
Хвилини котяться, як хвилі голубі.
Не в тому річ, не в тому річ,
Що я сказав "люблю" лише одній тобі.
A
Не в тім печаль, не в тім печаль,
Dm
Що цілий всесвіт був тоді в твоїх очах.
Безмежний всесвіт був тоді в твоїх очах,
Але не в тім моя печаль.
Приспів:
Біда не в тім, що свище вітер лютий,   |
Що січень на вікні малює мертві квіти. |
Біда не в тім, що ти мене не любиш,    |
Біда, що я тебе не можу розлюбити.     | (2)
Минає день, минає ніч,
Не зупинити нам з тобою часу плин.
Не в тому річ, не в тому річ,
Що після зустрічі розлука б''є у дзвін.
Акорди:
A
Не в тім печаль, не в тім печаль,
Dm
Що, наче постріл, пролунало те "прощай".
Як зради постріл, пролунало те "прощай",
Але не в тім моя печаль.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_95786_l1','pisniua_95786','YouTube','https://www.youtube.com/watch?v=eqdwi5I9U_c','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_95786_l2','pisniua_95786','YouTube','https://www.youtube.com/watch?v=hjj52Z282fo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_95786_l3','pisniua_95786','YouTube','https://www.youtube.com/watch?v=0qsLC8vtFfs','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_95786_l4','pisniua_95786','YouTube','https://www.youtube.com/watch?v=57jC5impnug','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_95786_l5','pisniua_95786','YouTube','https://www.youtube.com/watch?v=QQ4K7-uRaw4','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_95786_l6','pisniua_95786','YouTube','https://www.youtube.com/watch?v=RB-AZE9743Y','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_97889';
DELETE FROM song_versions WHERE song_id = 'pisniua_97889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_97889';
DELETE FROM songs WHERE id = 'pisniua_97889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_97889','Колискова','Музика: Богдан Весоловський Слова: Богдан Весоловський','uk','ukraine_1991',NULL,NULL,'Богдан Весоловський "Прийде ще час..." Львів "Галицька видавнича спілка" 2001',NULL,'Тиха ніч за вікном манить
І чарує зірками.
Спи, дитино моя, хай пісні солов''я
Розцвітають про батька казками.

Він тобі по квітки пішов
Крізь лани-океани...
Люлі, люлі, засни, сині очка замкни,
Моє серце при тобі, як ангел.

Місяць став, занімів в вікні,
Батько вернеться з квітом...
Спи, дитино моя, рідна ненька твоя
Над тобою, як сонце над світом.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_97889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_97889','Колискова','Тиха ніч за вікном манить
І чарує зірками.
Спи, дитино моя, хай пісні солов''я
Розцвітають про батька казками.

Він тобі по квітки пішов
Крізь лани-океани...
Люлі, люлі, засни, сині очка замкни,
Моє серце при тобі, як ангел.

Місяць став, занімів в вікні,
Батько вернеться з квітом...
Спи, дитино моя, рідна ненька твоя
Над тобою, як сонце над світом.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_97889_l1','pisniua_97889','YouTube','https://www.youtube.com/watch?v=hpwjq3MtE9s','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_981384';
DELETE FROM song_versions WHERE song_id = 'pisniua_981384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_981384';
DELETE FROM songs WHERE id = 'pisniua_981384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_981384','П''яниця','Слова: Степан Руданський','uk','ukraine_1991',NULL,NULL,'"Вибрані твори", Державне видавництво художньої літератури, Київ - 1949','написано 16.08.1860р.','Не кидай мене,
Моя чарочко!
Не жени мене
Ти, шинкарочко!
Не жени мене,
Дай упитися.
В тебе, бридкую,
Улюбитися!

Не без жінки я,
Не без хати я,
Все у мене є,
Відьмо клятая!
Хліба досита
Маю в засіку,
Маю волика,
Маю й пасіку.
Моя хаточку —
Повна чашечка;
Моя жіночка —
Мов та пташечка;
Та тяжкі мої
Болі більнії,
Бо не маю я
Волі вільної!..

Запряжу воли —
Потом миюся;
Розпряжу воли —
Набік хилюся;
Повалюсь на бік —
Не здрімаюся;
Знов на панщину
Підіймаюся.
Відроблю чуже:
"Жінко-душечко!
Приголуб мене,
Щебетушечко!"
А вона у плач,
Розголоситься,
На своє жене,
Бо й не проситься...
Робиш — сил нема,
Спина кривиться,
А вона на те
Та й не дивиться.
Робиш — сил нема,
Похиляєшся,
А вона у плач:
"Запиваєшся!"

О, я п''ю тепер,
Жінко любая,
Не кидай мене,
Чарко грубая!
Не кидай мене,
Моя чарочко;
Не жени мене
Ти, шинкарочко!
Не жени мене —
Дай упитися,
В тебе, бридкую,
Улюбитися!','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_981384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_981384','П''яниця','Не кидай мене,
Моя чарочко!
Не жени мене
Ти, шинкарочко!
Не жени мене,
Дай упитися.
В тебе, бридкую,
Улюбитися!

Не без жінки я,
Не без хати я,
Все у мене є,
Відьмо клятая!
Хліба досита
Маю в засіку,
Маю волика,
Маю й пасіку.
Моя хаточку —
Повна чашечка;
Моя жіночка —
Мов та пташечка;
Та тяжкі мої
Болі більнії,
Бо не маю я
Волі вільної!..

Запряжу воли —
Потом миюся;
Розпряжу воли —
Набік хилюся;
Повалюсь на бік —
Не здрімаюся;
Знов на панщину
Підіймаюся.
Відроблю чуже:
"Жінко-душечко!
Приголуб мене,
Щебетушечко!"
А вона у плач,
Розголоситься,
На своє жене,
Бо й не проситься...
Робиш — сил нема,
Спина кривиться,
А вона на те
Та й не дивиться.
Робиш — сил нема,
Похиляєшся,
А вона у плач:
"Запиваєшся!"

О, я п''ю тепер,
Жінко любая,
Не кидай мене,
Чарко грубая!
Не кидай мене,
Моя чарочко;
Не жени мене
Ти, шинкарочко!
Не жени мене —
Дай упитися,
В тебе, бридкую,
Улюбитися!');
DELETE FROM song_links WHERE song_id = 'pisniua_983888';
DELETE FROM song_versions WHERE song_id = 'pisniua_983888';
DELETE FROM songs_fts WHERE song_id = 'pisniua_983888';
DELETE FROM songs WHERE id = 'pisniua_983888';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_983888','Ой, і негаразд','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Український народний співаник, Мюнхен, 1946 р.',NULL,'Ой, і негаразд Запорожці,
Негаразд вчинили,
Степ широкий, край веселий,
Та й занапастили.

Наступає чорна хмара,
І дощик із неба,
Зруйнували Запорожжя,
Буде колись треба!

Ой, і хоч не гаразд, хоч не гаразд,
Нічого робити,
Буде добре Запорожцям
І під турком жити','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_983888'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_983888','Ой, і негаразд','Ой, і негаразд Запорожці,
Негаразд вчинили,
Степ широкий, край веселий,
Та й занапастили.

Наступає чорна хмара,
І дощик із неба,
Зруйнували Запорожжя,
Буде колись треба!

Ой, і хоч не гаразд, хоч не гаразд,
Нічого робити,
Буде добре Запорожцям
І під турком жити');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_983888_l1','pisniua_983888','YouTube','https://www.youtube.com/watch?v=wGU2vBCgNek','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_988383';
DELETE FROM song_versions WHERE song_id = 'pisniua_988383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_988383';
DELETE FROM songs WHERE id = 'pisniua_988383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_988383','Колискова','Музика: Гурт "Океан Ельзи" Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ти так світло мовчиш,
Дивишся в очі.
Твій чай там, на столі
Так, як ти хочеш.

Приспів:
Місяць на небі
Здається впізнав нас.
Дивись, він так низько.
Все залишилось
Таким, як і було колись -
Ти так близько.

Так ніхто твоїх ніг
Ділить на двоє,
Стук стих,
Чай вже застиг,
Тепло з тобою.

Приспів.

Ти так світло мовчиш...
Тепло з тобою...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_988383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_988383','Колискова','Ти так світло мовчиш,
Дивишся в очі.
Твій чай там, на столі
Так, як ти хочеш.

Приспів:
Місяць на небі
Здається впізнав нас.
Дивись, він так низько.
Все залишилось
Таким, як і було колись -
Ти так близько.

Так ніхто твоїх ніг
Ділить на двоє,
Стук стих,
Чай вже застиг,
Тепло з тобою.

Приспів.

Ти так світло мовчиш...
Тепло з тобою...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_988383_l1','pisniua_988383','YouTube','https://www.youtube.com/watch?v=n60yJ3fzVUQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_988383_l2','pisniua_988383','YouTube','https://www.youtube.com/watch?v=mY81prSsBNQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_988383_l3','pisniua_988383','YouTube','https://www.youtube.com/watch?v=Zv_9eWg5Ly8','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_984384';
DELETE FROM song_versions WHERE song_id = 'pisniua_984384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_984384';
DELETE FROM songs WHERE id = 'pisniua_984384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_984384','Од Києва до Лубен *','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Український народний співаник, Мюнхен, 1946 р.',NULL,'Од Києва до Лубен
Насіяла конопель.
Приспів:
Дам лиха закаблукам,
Закаблукам лиха дам.
Достанеться й передам!
Од Києва до Хорола
Черевички попорола!
Приспів.
Од Києва до Прилуки
Та побила закаблуки!
Приспів.
А вже тії закаблуки
Набралися лиха-муки!
Приспів.
А мій батько-чоботар
Черевички полатав.
Приспів.
Посилає мене мати
На музику гуляти!
Приспів.
На музику збираюся,
В черевики вбуваюся!
Приспів.
На музиках гуляла,
Черевики порвала!
Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_984384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_984384','Од Києва до Лубен *','Од Києва до Лубен
Насіяла конопель.
Приспів:
Дам лиха закаблукам,
Закаблукам лиха дам.
Достанеться й передам!
Од Києва до Хорола
Черевички попорола!
Приспів.
Од Києва до Прилуки
Та побила закаблуки!
Приспів.
А вже тії закаблуки
Набралися лиха-муки!
Приспів.
А мій батько-чоботар
Черевички полатав.
Приспів.
Посилає мене мати
На музику гуляти!
Приспів.
На музику збираюся,
В черевики вбуваюся!
Приспів.
На музиках гуляла,
Черевики порвала!
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_984384_l1','pisniua_984384','YouTube','https://www.youtube.com/watch?v=_DzJSA3eP2I','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_984384_l2','pisniua_984384','YouTube','https://www.youtube.com/watch?v=q-R5dUYWj6E','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_984384_l3','pisniua_984384','YouTube','https://www.youtube.com/watch?v=MAkG2Tudalo','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_984384_l4','pisniua_984384','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_98888';
DELETE FROM song_versions WHERE song_id = 'pisniua_98888';
DELETE FROM songs_fts WHERE song_id = 'pisniua_98888';
DELETE FROM songs WHERE id = 'pisniua_98888';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_98888','Київський вальс','Музика: Платон Майборода Слова: Андрій Малишко. Виконує: Юрій Гуляєв, Світлана Клочкова-Коваленко','uk','ukraine_1991',NULL,NULL,'Українські пісні про кохання "Струни серця"','Переклад російською мовою','Ночі солов''їні, ночі весняні,
Доли подніпровські наснились мені.
Приспів:
Знову цвітуть каштани,         |
Хвиля дніпровська б''є.         | (2)
Молодість мила, - ти щастя моє.|
Далі неозорії, київські сади,
Друже незабутній, ти прийдеш сюди.
Приспів.
Стежки і доріженьки ген лягли у даль.
В парі ми любилися, серденьку жаль.
Приспів.
Нам би ще зустрітися в солов''їну ніч,
Теплі зорі київські сяли б довіч.
Приспів','[''pisni.org.ua'', ''cat:dances'', ''cat:lirychni'', ''cat:patriotic'', ''cat:waltzes'', ''Пісні до танцю'', ''Пісні про кохання, ліричні'', ''Патріотичні пісні'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_98888'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_98888','Київський вальс','Ночі солов''їні, ночі весняні,
Доли подніпровські наснились мені.
Приспів:
Знову цвітуть каштани,         |
Хвиля дніпровська б''є.         | (2)
Молодість мила, - ти щастя моє.|
Далі неозорії, київські сади,
Друже незабутній, ти прийдеш сюди.
Приспів.
Стежки і доріженьки ген лягли у даль.
В парі ми любилися, серденьку жаль.
Приспів.
Нам би ще зустрітися в солов''їну ніч,
Теплі зорі київські сяли б довіч.
Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_98888_l1','pisniua_98888','YouTube','https://www.youtube.com/watch?v=qUa1cjFSrbE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_98888_l2','pisniua_98888','YouTube','https://www.youtube.com/watch?v=b-5EmQciNRU','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_98888_l3','pisniua_98888','YouTube','https://www.youtube.com/watch?v=d7gWVWTgyx4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_98888_l4','pisniua_98888','YouTube','https://www.youtube.com/watch?v=UY8fjgq8TLU','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_992786';
DELETE FROM song_versions WHERE song_id = 'pisniua_992786';
DELETE FROM songs_fts WHERE song_id = 'pisniua_992786';
DELETE FROM songs WHERE id = 'pisniua_992786';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_992786','Не дала земля','Музика: Дмитро Добрий-Вечір Слова: Дмитро Добрий-Вечір. Виконує: Вій','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На все життя радість буття - моя сім''я,
Є в мене кінь, є троє дітей, є жінка одна.
Гроші - сміття та їсти нема. Хіба це життя?
То на м''ясо забили коня, бо не дала земля.
На все життя радість буття - моя сім''я,
В хаті живе троє дітей та жінка моя.
Гроші - сміття та їсти нема. Хіба це життя?
Залишилась без хати сім''я, знов не дала земля.

Не дала, не дала земля...
Не дала, не дала земля...

На все життя радість буття - моя сім''я.
Гроші - сміття та їсти нема. Хіба це життя?
Продали хату, з''їли коня, лишилась сім''я,
Як утретє не дала земля - то померла й вона.

Не дала, не дала земля...
Не дала, не дала земля...
Не дала, не дала земля...
Не дала, не дала земля...
Не дала!..

Вже до кінця отрута життя - моє буття,
Мав я коня, хату я мав, була й сім''я.
Гроші - сміття та хто його зна, чия це вина -
Що нема ні сім''ї, ні коня? - На хрена це життя.

Не дала, не дала земля... | (12)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_992786'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_992786','Не дала земля','На все життя радість буття - моя сім''я,
Є в мене кінь, є троє дітей, є жінка одна.
Гроші - сміття та їсти нема. Хіба це життя?
То на м''ясо забили коня, бо не дала земля.
На все життя радість буття - моя сім''я,
В хаті живе троє дітей та жінка моя.
Гроші - сміття та їсти нема. Хіба це життя?
Залишилась без хати сім''я, знов не дала земля.

Не дала, не дала земля...
Не дала, не дала земля...

На все життя радість буття - моя сім''я.
Гроші - сміття та їсти нема. Хіба це життя?
Продали хату, з''їли коня, лишилась сім''я,
Як утретє не дала земля - то померла й вона.

Не дала, не дала земля...
Не дала, не дала земля...
Не дала, не дала земля...
Не дала, не дала земля...
Не дала!..

Вже до кінця отрута життя - моє буття,
Мав я коня, хату я мав, була й сім''я.
Гроші - сміття та хто його зна, чия це вина -
Що нема ні сім''ї, ні коня? - На хрена це життя.

Не дала, не дала земля... | (12)');
DELETE FROM song_links WHERE song_id = 'pisniua_999787';
DELETE FROM song_versions WHERE song_id = 'pisniua_999787';
DELETE FROM songs_fts WHERE song_id = 'pisniua_999787';
DELETE FROM songs WHERE id = 'pisniua_999787';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_999787','Там за лісом, за лугом','Українська народна пісня. Виконує: Ігор Богдан','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Там за лісом, за лугом  |
Ходить козак за плугом. | (2)

Оре нивку чужую,        |
Оре нивку чужую,        |
Добре, що в своїм краю. | (2)

Станьте, коні, орати,   |
Станьте, коні, орати,   |
Підем землю рівняти.    | (2)

Підем землю рівняти,    |
Підем землю рівняти,    |
Що побили гармати.      | (2)

Там за лісом, за лугом  |
Ходить козак за плугом. | (4)','[''pisni.org.ua'', ''cat:kozacki'', ''cat:rekrutski'', ''Козацькі пісні'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_999787'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_999787','Там за лісом, за лугом','Там за лісом, за лугом  |
Ходить козак за плугом. | (2)

Оре нивку чужую,        |
Оре нивку чужую,        |
Добре, що в своїм краю. | (2)

Станьте, коні, орати,   |
Станьте, коні, орати,   |
Підем землю рівняти.    | (2)

Підем землю рівняти,    |
Підем землю рівняти,    |
Що побили гармати.      | (2)

Там за лісом, за лугом  |
Ходить козак за плугом. | (4)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_999787_l1','pisniua_999787','YouTube','https://www.youtube.com/watch?v=mIVRe6__Oqc','video',NULL,1);
