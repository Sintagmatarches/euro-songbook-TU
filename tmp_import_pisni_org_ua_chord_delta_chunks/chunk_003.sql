DELETE FROM song_links WHERE song_id = 'pisniua_8283013';
DELETE FROM song_versions WHERE song_id = 'pisniua_8283013';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8283013';
DELETE FROM songs WHERE id = 'pisniua_8283013';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8283013','Голубе сивий','Музика: Олег Винник Слова: Олег Винник. Виконує: Олег Винник','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: FadeToBlack','Голубе сивий,
Чом крила ламаєш?
Чому топчеш землю?
A
Чому не літаєш?
Чому губиш пір''я?
Чому не воркуєш?
Чому під дощем
Змок до нитки - не чуєш?
Приспів:
Біла голубка всьому є виною,
Кликала в небо мене за собою,
Вабила, бавила - та не любила,
Чорного ворона погляд ловила.
Голубе сивий,
Чом душу виймаєш?
Чому замість хліба
Ти сльози ковтаєш?
Чому схилив голову
І досі сумуєш?
Чом доброю звісткою
Світ не білуєш?
Приспів. (2)','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8283013'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8283013','Голубе сивий','Голубе сивий,
Чом крила ламаєш?
Чому топчеш землю?
A
Чому не літаєш?
Чому губиш пір''я?
Чому не воркуєш?
Чому під дощем
Змок до нитки - не чуєш?
Приспів:
Біла голубка всьому є виною,
Кликала в небо мене за собою,
Вабила, бавила - та не любила,
Чорного ворона погляд ловила.
Голубе сивий,
Чом душу виймаєш?
Чому замість хліба
Ти сльози ковтаєш?
Чому схилив голову
І досі сумуєш?
Чом доброю звісткою
Світ не білуєш?
Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8283013_l1','pisniua_8283013','YouTube','https://www.youtube.com/watch?v=n67j5EOqlKE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_828450';
DELETE FROM song_versions WHERE song_id = 'pisniua_828450';
DELETE FROM songs_fts WHERE song_id = 'pisniua_828450';
DELETE FROM songs WHERE id = 'pisniua_828450';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_828450','А ты, дівча','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Самвидавний туристський пісенник: Там на Лемковині помедже горами. - Літо 1981.','Вказаний у джерелі пісенник створений українцем з Польщі Лехом Ляхом. Ймовірно, що обробка тексту й мелодії, підбір акордів здійснені ним. Варіант цієї пісні з відмінною останньою в''язкою є тут: http://www.lemko.org/lemko/spivanky.html Діалектизми: ґамця - устонька (від ґамба - уста, рот); же-с - що ти; лем - тільки, але; мюд - мед; спозерати - поглядати.','Hm                         |
А ты, дівча, як ся маш,    |
Ци солодку ґам_цю маш?     |
Мам солодку, мам солодку,  |
Як бы мюд, як бы мюд,      |
Мам солодку, як бы мюд,    |
Аж ся хлопці на ній бют.*  |

А ты, дівча, не мудруй,
Як зачало-с, то любуй,
Бо на моє, бо на моє
Сумлінє, сумлінє,
Бо на моє сумлінє
Иншу возму, тебе нє.

А ты, дівча шалене,
Не спозерай на мене,
Лем спозерай, лем спозерай
На того, на того,
Лем спозерай на того,
Што ты підеш за нього.

А ты, дівча, красото,
Я тя люблю за тото,
Же-с червена, же-с червена
На лици, на лици,
Же-с червена на лици
И шырока в гузици.**
*Всі в''язки (куплети) співайте за взірцем першої

**Варіант в''язки (куплета):

А ты, дівча, красото,
Я тя люблю за тото,
Же-с парадна, же-с парадна
И зграбна, и зграбна,
Же-с парадна и зграбна,
И на лици червена.','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_828450'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_828450','А ты, дівча','Hm                         |
А ты, дівча, як ся маш,    |
Ци солодку ґам_цю маш?     |
Мам солодку, мам солодку,  |
Як бы мюд, як бы мюд,      |
Мам солодку, як бы мюд,    |
Аж ся хлопці на ній бют.*  |

А ты, дівча, не мудруй,
Як зачало-с, то любуй,
Бо на моє, бо на моє
Сумлінє, сумлінє,
Бо на моє сумлінє
Иншу возму, тебе нє.

А ты, дівча шалене,
Не спозерай на мене,
Лем спозерай, лем спозерай
На того, на того,
Лем спозерай на того,
Што ты підеш за нього.

А ты, дівча, красото,
Я тя люблю за тото,
Же-с червена, же-с червена
На лици, на лици,
Же-с червена на лици
И шырока в гузици.**
*Всі в''язки (куплети) співайте за взірцем першої

**Варіант в''язки (куплета):

А ты, дівча, красото,
Я тя люблю за тото,
Же-с парадна, же-с парадна
И зграбна, и зграбна,
Же-с парадна и зграбна,
И на лици червена.');
DELETE FROM song_links WHERE song_id = 'pisniua_8296373';
DELETE FROM song_versions WHERE song_id = 'pisniua_8296373';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8296373';
DELETE FROM songs WHERE id = 'pisniua_8296373';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8296373','Україна - це ти','Музика: Тіна Кароль Слова: Тіна Кароль, Микола Бровченко. Виконує: Тіна Кароль','uk','ukraine_1991',NULL,NULL,'аудіозапис;',NULL,'Моє ім''я - Батьківщина,
Лелеки легке крило.
Моє ім''я - Україна
І сонечка тепло.
Моє ім''я - Вишиванка,
Я - хрестик на полотні.
Моє ім''я - синє небо,
Я - сонях малий під ним.
Приспів:
Татові слова:
Україна - це я!
Мамині пісні,
Україна - це ти!
Моє ім''я - Степ широкий,
Моє ім''я - Хліба смак,
Останній шкільний дзвіночок,
Над сивим Дніпром туман.
Моє ім''я - то Надія,
Моє ім''я - то Любов,
Моє ім''я - чиста мрія,
І віра, що з нами Бог!
Приспів. (2)
Моє ім''я - колискова...
Моє ім''я - то є Воля...
Моє ім''я - то Родина...
Моє ім''я - добре Слово,
Що збереже цей світ!
Приспів.
Україна - це ти!..
Акорди, без модуляції:
Моє ім''я - Батьківщина,
Лелеки легке крило.
Fmaj7
Моє ім''я - Україна
І сонечка тепло.
Моє ім''я - Вишиванка,
Я - хрестик на полотні.
Fmaj7
Моє ім''я - синє небо,
Я - сонях малий під ним.
Приспів:
C   G     Am Fmaj7
Татові слова:
C   G        Am Fmaj7
Україна - це я!
Мамині пісні,
Україна - це ти!','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8296373'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8296373','Україна - це ти','Моє ім''я - Батьківщина,
Лелеки легке крило.
Моє ім''я - Україна
І сонечка тепло.
Моє ім''я - Вишиванка,
Я - хрестик на полотні.
Моє ім''я - синє небо,
Я - сонях малий під ним.
Приспів:
Татові слова:
Україна - це я!
Мамині пісні,
Україна - це ти!
Моє ім''я - Степ широкий,
Моє ім''я - Хліба смак,
Останній шкільний дзвіночок,
Над сивим Дніпром туман.
Моє ім''я - то Надія,
Моє ім''я - то Любов,
Моє ім''я - чиста мрія,
І віра, що з нами Бог!
Приспів. (2)
Моє ім''я - колискова...
Моє ім''я - то є Воля...
Моє ім''я - то Родина...
Моє ім''я - добре Слово,
Що збереже цей світ!
Приспів.
Україна - це ти!..
Акорди, без модуляції:
Моє ім''я - Батьківщина,
Лелеки легке крило.
Fmaj7
Моє ім''я - Україна
І сонечка тепло.
Моє ім''я - Вишиванка,
Я - хрестик на полотні.
Fmaj7
Моє ім''я - синє небо,
Я - сонях малий під ним.
Приспів:
C   G     Am Fmaj7
Татові слова:
C   G        Am Fmaj7
Україна - це я!
Мамині пісні,
Україна - це ти!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8296373_l1','pisniua_8296373','YouTube','https://www.youtube.com/watch?v=HBLzV2P2y_s','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8296373_l2','pisniua_8296373','YouTube','https://www.youtube.com/watch?v=076EyPEVWuU','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8296373_l3','pisniua_8296373','YouTube','https://www.youtube.com/watch?v=RmewOzNe_Sw','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8296373_l4','pisniua_8296373','YouTube','https://www.youtube.com/watch?v=MunzYgNPERg','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8296373_l5','pisniua_8296373','YouTube','https://www.youtube.com/watch?v=vizHymFie8k','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8296373_l6','pisniua_8296373','YouTube','https://www.youtube.com/watch?v=_rDlAWQkIJA','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8296373_l7','pisniua_8296373','YouTube','https://www.youtube.com/watch?v=5yM1Lw8cV1U','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8296373_l8','pisniua_8296373','YouTube','https://www.youtube.com/watch?v=jnNnJSh9dLk','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8296373_l9','pisniua_8296373','YouTube','https://www.youtube.com/watch?v=sQTBq0nB7FI','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8296373_l10','pisniua_8296373','YouTube','https://www.youtube.com/watch?v=YAcU0odIOaw','video',NULL,10);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8296373_l11','pisniua_8296373','YouTube','https://www.youtube.com/watch?v=a9pnDX0vqZA','video',NULL,11);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8296373_l12','pisniua_8296373','YouTube','https://www.youtube.com/watch?v=lU8u-4TFORM','video',NULL,12);
DELETE FROM song_links WHERE song_id = 'pisniua_8339409';
DELETE FROM song_versions WHERE song_id = 'pisniua_8339409';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8339409';
DELETE FROM songs WHERE id = 'pisniua_8339409';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8339409','Тихо прийшов, тихо пішов','Виконує: Riffmaster','uk','ukraine_1991',NULL,NULL,'авторське подання','Em - G - Am - C - H Останній куплет: Fm# - A - Hm# - D - C# Підбір акордів: DNko_кізюк','Ще коли на траві роса,
G
Ще коли воду коні п''ють,
Вже нащадки старих характерників
Укладають свій парашут.
В небо цілить гелікоптер
G
І лунає наказ "На зліт"
І бійці спеціального значення
Вирушають у свій похід.
Приспів:
Тихо прийшов, тихо пішов,      |
G                              |
Ворога знищено, як був наказ,  |
Am                             |
Сонце сідає, ніч наступає,     | (2)
Домів повертається Спецназ.    |
Нас не видно, але ми тут,
Нас не чути, але ми є,
Так буває, що твого серця стук
Наче молотом в тиші б''є,
Ми для ворога - вічний жах
І для зрадників - сатана,
А над нами так велично майорить
Прапор з образом кажана!
Приспів.
Закодовані в нас імена
І обличчя ховає "тінь".
Ми таємно кладем за Країну життя
Не вагаючись, без сумління.
І загиблих наших Братів
Командирів, солдат рядових
Тих, хто землю свою захистили в боях
Ми в серцях закарбуєм своїх.
Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8339409'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8339409','Тихо прийшов, тихо пішов','Ще коли на траві роса,
G
Ще коли воду коні п''ють,
Вже нащадки старих характерників
Укладають свій парашут.
В небо цілить гелікоптер
G
І лунає наказ "На зліт"
І бійці спеціального значення
Вирушають у свій похід.
Приспів:
Тихо прийшов, тихо пішов,      |
G                              |
Ворога знищено, як був наказ,  |
Am                             |
Сонце сідає, ніч наступає,     | (2)
Домів повертається Спецназ.    |
Нас не видно, але ми тут,
Нас не чути, але ми є,
Так буває, що твого серця стук
Наче молотом в тиші б''є,
Ми для ворога - вічний жах
І для зрадників - сатана,
А над нами так велично майорить
Прапор з образом кажана!
Приспів.
Закодовані в нас імена
І обличчя ховає "тінь".
Ми таємно кладем за Країну життя
Не вагаючись, без сумління.
І загиблих наших Братів
Командирів, солдат рядових
Тих, хто землю свою захистили в боях
Ми в серцях закарбуєм своїх.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8339409_l1','pisniua_8339409','YouTube','https://www.youtube.com/watch?v=IpVTAJ-kfd4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_834909';
DELETE FROM song_versions WHERE song_id = 'pisniua_834909';
DELETE FROM songs_fts WHERE song_id = 'pisniua_834909';
DELETE FROM songs WHERE id = 'pisniua_834909';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_834909','В кінці греблі шумлять верби','Українська народна пісня. Виконує: Раїса Кириченко, Марія Заньковецька, Оксана Петрусенко, Тріо Мареничів, Тріо бандуристок Українського Радіо, Черкаський народний хор, Каріна Шнир','uk','ukraine_before_1917',NULL,NULL,'1. Гомін: http://gomin.uazone.net/song.php?song=239 2. Туристський пісенник "Де гори Карпати, де Писаний Камінь". - Літо, 1982 3. http://poetry.uazone.net/fate03.html 4. http://pisennyk.kgb.pl/','Класичний варіант пісні (в''язки 1-5, джерело 1) приписують Марусі Чурай: http://www.ridnaukraina.com/view.aspx?type=news&lang=1&nid=210&id=96 Пісня була у репертуарах Марії Заньковецької, Оксани Петрусенко, Раїси Кириченко. Варіанти: У джерелі 1 можна прослухати midi-награш для двох голосів. У джерелах 3 і 4 після четвертої йдуть в''язки 4а і 4б, які дещо змінюють зміст пісні. У джерелі 2 після п''ятої йде в''язка 6; звідти ж взяті акорди і ноти. В''язки 2а і 2б співають після другої, 4в - після четвертої; записані з пам''яті (Anrzej).','1. В кінці греблі шумлять верби,
Що я насадила...
Нема того козаченька,
Що я полюбила.
2. Ой немає козаченька -
Поїхав за Десну;
Рости, рости, дівчинонько,
На другую весну!
3. Росла, росла дівчинонька
Та й на порі стала;
Ждала, ждала козаченька
Та й плакати стала.
4. Ой не плачте, карі очі, -
Така ваша доля:
Полюбила козаченька,
При місяці стоя!
5. Зелененькі огірочки,
Жовтенькі цвіточки...
Нема мого миленького,
Плачуть карі очки!
Варіанти:
2а.Нема мого миленького,
Вже й рочок минає,
Пішла б його виглядати -
Дороги не знаю.
2б.Зашуміла дібровонька
Листом зелененьким,
Як поїхав мій миленький
Конем вороненьким.
4а.Не я його полюбила -
Полюбила мати.
Заставила мене мати
Рушнички в''язати.
4б.Один сплела, другий сплела,
На третьому стала.
Ждала, ждала козаченька
Та й плакати стала.
4в.Плачуть, плачуть мої очі,
Серце защеміло,
Не бачу я миленького -
І життя не миле.
6. Нещаслива та билина,
Що росте у полі,
Нещаслива та дівчина,
Що немає долі...
Акорди:
В кінці греблі шумлять верби,
Що я насадила...
Нема того козаченька,         |(2)
Що я  полюбила.               |','[''pisni.org.ua'', ''cat:kozacki'', ''cat:lirychni'', ''cat:narodni'', ''Козацькі пісні'', ''Пісні про кохання, ліричні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_834909'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_834909','В кінці греблі шумлять верби','1. В кінці греблі шумлять верби,
Що я насадила...
Нема того козаченька,
Що я полюбила.
2. Ой немає козаченька -
Поїхав за Десну;
Рости, рости, дівчинонько,
На другую весну!
3. Росла, росла дівчинонька
Та й на порі стала;
Ждала, ждала козаченька
Та й плакати стала.
4. Ой не плачте, карі очі, -
Така ваша доля:
Полюбила козаченька,
При місяці стоя!
5. Зелененькі огірочки,
Жовтенькі цвіточки...
Нема мого миленького,
Плачуть карі очки!
Варіанти:
2а.Нема мого миленького,
Вже й рочок минає,
Пішла б його виглядати -
Дороги не знаю.
2б.Зашуміла дібровонька
Листом зелененьким,
Як поїхав мій миленький
Конем вороненьким.
4а.Не я його полюбила -
Полюбила мати.
Заставила мене мати
Рушнички в''язати.
4б.Один сплела, другий сплела,
На третьому стала.
Ждала, ждала козаченька
Та й плакати стала.
4в.Плачуть, плачуть мої очі,
Серце защеміло,
Не бачу я миленького -
І життя не миле.
6. Нещаслива та билина,
Що росте у полі,
Нещаслива та дівчина,
Що немає долі...
Акорди:
В кінці греблі шумлять верби,
Що я насадила...
Нема того козаченька,         |(2)
Що я  полюбила.               |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_834909_l1','pisniua_834909','YouTube','https://www.youtube.com/watch?v=pGDs9n3YonY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_834909_l2','pisniua_834909','YouTube','https://www.youtube.com/watch?v=dN3gcqeDgeY','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_834909_l3','pisniua_834909','YouTube','https://www.youtube.com/watch?v=wKaf-ouVB90','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_834909_l4','pisniua_834909','YouTube','https://www.youtube.com/watch?v=5YCb0oo4TXM','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_834909_l5','pisniua_834909','YouTube','https://www.youtube.com/watch?v=4GW67aIfjVI','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_834909_l6','pisniua_834909','YouTube','https://www.youtube.com/watch?v=fxBWlmAG1pM','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_834909_l7','pisniua_834909','YouTube','https://www.youtube.com/watch?v=7qp41M3JnUw','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_834909_l8','pisniua_834909','YouTube','https://www.youtube.com/watch?v=EwoESJX-OBA','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_834909_l9','pisniua_834909','YouTube','https://www.youtube.com/watch?v=F7jcDJPafkg','video',NULL,9);
DELETE FROM song_links WHERE song_id = 'pisniua_835501';
DELETE FROM song_versions WHERE song_id = 'pisniua_835501';
DELETE FROM songs_fts WHERE song_id = 'pisniua_835501';
DELETE FROM songs WHERE id = 'pisniua_835501';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_835501','Чом ти не прийшов, як місяць зійшов','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'із покоління у покоління','Останні 2 рядки кожного куплету можна виконувати двічі, причому на переході ще вставити акорд А. Підбір акордів: Я','Чом ти не прийшов, як місяць зійшов?
Я тебе чекала
Чи коня не мав, чи стежки не знав,
Мати не пускала?

І коня я мав, і стежку я знав
І мати пускала.
Молодша сестра (бодай не зросла!)
Сідельце сховала.

А старша сестра сідельце знайшла
Коня осідлала
- Поїдь, братику, до дівчиноньки,
Що тебе чекала.

Тече річенька невеличенька
Схочу - перескочу
- Віддай ти мене, моя матінко
За кого я схочу','[''pisni.org.ua'', ''cat:halycki'', ''cat:narodni'', ''Пісні з Галичини'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_835501'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_835501','Чом ти не прийшов, як місяць зійшов','Чом ти не прийшов, як місяць зійшов?
Я тебе чекала
Чи коня не мав, чи стежки не знав,
Мати не пускала?

І коня я мав, і стежку я знав
І мати пускала.
Молодша сестра (бодай не зросла!)
Сідельце сховала.

А старша сестра сідельце знайшла
Коня осідлала
- Поїдь, братику, до дівчиноньки,
Що тебе чекала.

Тече річенька невеличенька
Схочу - перескочу
- Віддай ти мене, моя матінко
За кого я схочу');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_835501_l1','pisniua_835501','YouTube','https://www.youtube.com/watch?v=eWwFz84nq0M','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_835501_l2','pisniua_835501','YouTube','https://www.youtube.com/watch?v=GQet0Vk7-ec','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_835501_l3','pisniua_835501','YouTube','https://www.youtube.com/watch?v=Q39lS6seKv8','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_835501_l4','pisniua_835501','YouTube','https://www.youtube.com/watch?v=eKJPUQdFoaU','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_835501_l5','pisniua_835501','YouTube','https://www.youtube.com/watch?v=HH6mxL30Xrs','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_835501_l6','pisniua_835501','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_84307';
DELETE FROM song_versions WHERE song_id = 'pisniua_84307';
DELETE FROM songs_fts WHERE song_id = 'pisniua_84307';
DELETE FROM songs WHERE id = 'pisniua_84307';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_84307','Весна','Музика: Воплi Вiдоплясова Слова: Олег Скрипка. Виконує: Воплі Відоплясова','uk','ukraine_1991',NULL,NULL,'текст- http://vopli.com; таб.- Accords.Ru, shpilevoy@stel.sebastopol.ua',NULL,'TAB:
1)  - - - - - - - - - - 0 - - -
2)  - 0 1 3 1 0 - - - 3 - 3 1 0
3)  2 - - - - - 2 - - - - - - -
4)  - - - - - - - 2 3 - - - - -
5)  - - - - - - - - - - - - - -
6)  - - - - - - - - - - - - - -
(джерело: shpіlevoy@stel.sebastopol.ua)

Я піду до річеньки
Стрічати зірочки,

Зазирать як падають,
Ловити їх жменями.
Наберу у пазуху
Оцих бризок-вогників
Затанцюю радісний,
Зрадію до смерті.

Поженусь за райдугой,
Злечу по-під хмарами,
Передам по радіо:
"Прощай, рідна Батьківщино".

Весна, весна, весна прийде,
Весна, весна, весна вгамує.
Весна, весна, весна прийде,
Весна, весна, весна, весна.

Я біду не вижену,
Сама з мене вискочить,
Побіжим, покотимся,
Заведемо бесіду.
Наберусь хороброщів,
Спитаю у горя:
"Чи мене не викине
Упасти у море?"

Забіжу до Зіночки,
Хильнемо по чарочці,
Поведуся лагідно,
Поділюся жалощами.

Всесвіту пронизливий,
Відкрий правди трішечки:
"Чи мене не вистачить
Загинути по весні?"

Весна, весна, весна - на дворі красна.
Весна, весна, весна - гуй.
Весна, весна, весна - на дворі красна.
Весна, весна, весна, весна.

Бу-бу-буй, бу-бу-бу-бу-бу-буй.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_84307'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_84307','Весна','TAB:
1)  - - - - - - - - - - 0 - - -
2)  - 0 1 3 1 0 - - - 3 - 3 1 0
3)  2 - - - - - 2 - - - - - - -
4)  - - - - - - - 2 3 - - - - -
5)  - - - - - - - - - - - - - -
6)  - - - - - - - - - - - - - -
(джерело: shpіlevoy@stel.sebastopol.ua)

Я піду до річеньки
Стрічати зірочки,

Зазирать як падають,
Ловити їх жменями.
Наберу у пазуху
Оцих бризок-вогників
Затанцюю радісний,
Зрадію до смерті.

Поженусь за райдугой,
Злечу по-під хмарами,
Передам по радіо:
"Прощай, рідна Батьківщино".

Весна, весна, весна прийде,
Весна, весна, весна вгамує.
Весна, весна, весна прийде,
Весна, весна, весна, весна.

Я біду не вижену,
Сама з мене вискочить,
Побіжим, покотимся,
Заведемо бесіду.
Наберусь хороброщів,
Спитаю у горя:
"Чи мене не викине
Упасти у море?"

Забіжу до Зіночки,
Хильнемо по чарочці,
Поведуся лагідно,
Поділюся жалощами.

Всесвіту пронизливий,
Відкрий правди трішечки:
"Чи мене не вистачить
Загинути по весні?"

Весна, весна, весна - на дворі красна.
Весна, весна, весна - гуй.
Весна, весна, весна - на дворі красна.
Весна, весна, весна, весна.

Бу-бу-буй, бу-бу-бу-бу-бу-буй.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_84307_l1','pisniua_84307','YouTube','https://www.youtube.com/watch?v=jc3HmcQcN4c','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_84307_l2','pisniua_84307','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_844070';
DELETE FROM song_versions WHERE song_id = 'pisniua_844070';
DELETE FROM songs_fts WHERE song_id = 'pisniua_844070';
DELETE FROM songs WHERE id = 'pisniua_844070';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_844070','Ой не ріж Косу','Музика: Олександр Білаш Слова: Михайло Ткач. Виконує: Світозари','uk','ukraine_1991',NULL,NULL,'1. Пісня в запису. 2. Пісні про кохання. Пісенник. Випуск 1. Упорядник Р. П. Сабадаш. - К.: Музична Україна, 1972. - 96 с.','*Відміна тексту подана за записом у виконанні "Світозарів". Основний авторський текст пісні і додані файли подані за джерелом 2.','Ой не ріж косу,
Бо хорошая,
Не погань красу,
Дуже прошу я.

Приспів:

Я люблю таку тебе,  |
В косах небо голубе |
Виграє веселкою,    |(2)
Стрічкою веселою.   |

Про чужу красу
І не марю я,
Тож не ріж косу -
Будеш парою.

Приспів.

Не журись, що я
Не ходитиму.
Ти ж любов моя -
І любитиму.

Приспів.
Відміна:*

Ой не ріж косу,
C
Бо хорошая.
Не погань красу,
Дуже прошу я.
Не журись, що я
C
Не ходитиму.
І любов моя -
І любитиму!

Приспів:
Я люблю тебе таку
В косах стрічку голубу
Коси пахнуть росами
Ласками дівочими

Про чужу красу
І не марю я.
То ж не ріж косу -
Будеш парою.
Покохав тебе
Закосичену.
Бо краса твоя
Не позичена.

Приспів.  | (4)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_844070'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_844070','Ой не ріж Косу','Ой не ріж косу,
Бо хорошая,
Не погань красу,
Дуже прошу я.

Приспів:

Я люблю таку тебе,  |
В косах небо голубе |
Виграє веселкою,    |(2)
Стрічкою веселою.   |

Про чужу красу
І не марю я,
Тож не ріж косу -
Будеш парою.

Приспів.

Не журись, що я
Не ходитиму.
Ти ж любов моя -
І любитиму.

Приспів.
Відміна:*

Ой не ріж косу,
C
Бо хорошая.
Не погань красу,
Дуже прошу я.
Не журись, що я
C
Не ходитиму.
І любов моя -
І любитиму!

Приспів:
Я люблю тебе таку
В косах стрічку голубу
Коси пахнуть росами
Ласками дівочими

Про чужу красу
І не марю я.
То ж не ріж косу -
Будеш парою.
Покохав тебе
Закосичену.
Бо краса твоя
Не позичена.

Приспів.  | (4)');
DELETE FROM song_links WHERE song_id = 'pisniua_8452373';
DELETE FROM song_versions WHERE song_id = 'pisniua_8452373';
DELETE FROM songs_fts WHERE song_id = 'pisniua_8452373';
DELETE FROM songs WHERE id = 'pisniua_8452373';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_8452373','У мирному Києві','Музика: IKSIY, SESTRA, BITZ Слова: IKSIY, Микола Бакай','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню також виконує Zse2 (альбом: Yutfh).','Приспів:
Я обійму тебе так сильно,   |
Як це було у мирному Києві, |
Впаде з очей моїх роса,     |
Наше кохання не згаса!..    | (2)
Одна Батьківщина і двох не буває!
Місця, де родилися, - завжди святі!
Хто рідну оселю свою забуває,
Той долі не знайде в житті!..
Чи можна забути ту пісню, що мати
Співала малому вночі?..
Чи можна забути ту стежку до хати,
Як ми були малі?..
У рідної краї і серце співає,
Лелека здалека нам літо несе,
Хто рідну оселю свою забуває,
Навіки забуде й себе!..
Дитинство моє швидко так пролетіло,
Діти дорослі й онуки уже,
А ми все гуляєм по рідному місту,
Хай нас Бог усіх береже!
Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_8452373'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_8452373','У мирному Києві','Приспів:
Я обійму тебе так сильно,   |
Як це було у мирному Києві, |
Впаде з очей моїх роса,     |
Наше кохання не згаса!..    | (2)
Одна Батьківщина і двох не буває!
Місця, де родилися, - завжди святі!
Хто рідну оселю свою забуває,
Той долі не знайде в житті!..
Чи можна забути ту пісню, що мати
Співала малому вночі?..
Чи можна забути ту стежку до хати,
Як ми були малі?..
У рідної краї і серце співає,
Лелека здалека нам літо несе,
Хто рідну оселю свою забуває,
Навіки забуде й себе!..
Дитинство моє швидко так пролетіло,
Діти дорослі й онуки уже,
А ми все гуляєм по рідному місту,
Хай нас Бог усіх береже!
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_8452373_l1','pisniua_8452373','YouTube','https://www.youtube.com/watch?v=CTz262n_f2I','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_84777';
DELETE FROM song_versions WHERE song_id = 'pisniua_84777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_84777';
DELETE FROM songs WHERE id = 'pisniua_84777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_84777','Дощ','Музика: Марія Бурмака Слова: Анатолій Кичинський. Виконує: Марія Бурмака','uk','ukraine_1991',NULL,NULL,'текст- http://burmaka.kiev.ua; аудіо- Марія Бурмака. "Лишається надія". 1994','Підбір акордів: bohdanko:)','Вступ:  (2)
Накинь на плечі плащ,
Em*  Em   Am
Надворі дощ іде,
Am*  Am(V)    Em/C
Прощаю- чись не плач
C#m D*   Em
Ніколи і ніде.
Замолено гріхи,
Замовлено таксі,
F7M         Em/C*
Розходяться шляхи,
Прощайся, як усі.
Програш:  (2)
Болить - переболить,
Пора іти - іди,
Прощайся не на мить,
Прощайся назавжди.
Йдучи дверей не муч, **
Ступивши на поріг,
Сховай подалі ключ,
Щоб він знайтись не міг,
Програш. (2)
В сирий пісок зарий
I не шкодуй за ним.
Все одно замок старий
Заміниться новим.
Iржа той ключ знайде,
Не кайсь і не карайсь.
Iди, як дощ іде,
Як дощ, не озирайсь.
Програш. (...)
Фінал (на тему Вступу).
Деякі використані тут акорди:
Em*     [0 2 2 0 0 3]
Am*     [5 7 7 5 5 8]
Em/C    [x 3 2 0 0 3]
Em/C*   [x 3 2 0 0 0]
C#m     [x 4 x x 2 0]
D*      [x x 0 x 3 2]  або  [x 5 4 x 3 0]
F7M     [1 0 3 2 1 0]
Emadd9  [0 2 2 0 0 2]
G6      [0 2 2 0 3 0]
C6      [0 0 2 2 1 3]
На http://burmaka.kіev.ua тут:
"Вночі дверей не муч".
На аудіо: "Йдучи дверей не муч".','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_84777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_84777','Дощ','Вступ:  (2)
Накинь на плечі плащ,
Em*  Em   Am
Надворі дощ іде,
Am*  Am(V)    Em/C
Прощаю- чись не плач
C#m D*   Em
Ніколи і ніде.
Замолено гріхи,
Замовлено таксі,
F7M         Em/C*
Розходяться шляхи,
Прощайся, як усі.
Програш:  (2)
Болить - переболить,
Пора іти - іди,
Прощайся не на мить,
Прощайся назавжди.
Йдучи дверей не муч, **
Ступивши на поріг,
Сховай подалі ключ,
Щоб він знайтись не міг,
Програш. (2)
В сирий пісок зарий
I не шкодуй за ним.
Все одно замок старий
Заміниться новим.
Iржа той ключ знайде,
Не кайсь і не карайсь.
Iди, як дощ іде,
Як дощ, не озирайсь.
Програш. (...)
Фінал (на тему Вступу).
Деякі використані тут акорди:
Em*     [0 2 2 0 0 3]
Am*     [5 7 7 5 5 8]
Em/C    [x 3 2 0 0 3]
Em/C*   [x 3 2 0 0 0]
C#m     [x 4 x x 2 0]
D*      [x x 0 x 3 2]  або  [x 5 4 x 3 0]
F7M     [1 0 3 2 1 0]
Emadd9  [0 2 2 0 0 2]
G6      [0 2 2 0 3 0]
C6      [0 0 2 2 1 3]
На http://burmaka.kіev.ua тут:
"Вночі дверей не муч".
На аудіо: "Йдучи дверей не муч".');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_84777_l1','pisniua_84777','YouTube','https://www.youtube.com/watch?v=g6O53e39hLk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_887705';
DELETE FROM song_versions WHERE song_id = 'pisniua_887705';
DELETE FROM songs_fts WHERE song_id = 'pisniua_887705';
DELETE FROM songs WHERE id = 'pisniua_887705';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_887705','А вже осінь','Музика: Володимир Домшинський Слова: Вадим Крищенко. Виконує: Іво Бобул','uk','ukraine_1991',NULL,NULL,'аудіозапис','романс','А вже осінь прийшла у мій сад,
Забагрянила пишний наряд,
Затуманила вись голубу
І ронила у серці журбу.
Затуманила вись голубу
І ронила у серці журбу.
А вже осінь прийшла у мій сад,    |
Я ж не кликав її - "Йди назад,    |
Не обтрушуй зелені гаї            |
І не стукай у вікна мої."         | (2)
А вже осінь прийшла у мій сад,
Цвіт кохання замів листопад,
Хоч багато барвистих одеж,        |
А того, що було не вернеш.        | (2)
А вже осінь прийшла у мій сад,    |
І так швидко, і так невпопад,     |
Все притихло змінилось скрізь,    |
Я ще літом п''янким не зігрівсь.   | (2)
Не прошу я дарунків твоїх,
Не шукаю осінніх утіх.
А вже осінь прийшла у мій сад.    |
"Я ж не кликав тебе, йди назад!"  | (2)
А вже осінь прийшла у мій сад.
"Я ж не кликав тебе, йди назад!
Не обтрушуй зелені гаї
І не стукай у вікна мої!"
А вже осінь прийшла у мій сад,
І так швидко, і так невпопад,
Все притихло змінилось скрізь,    |
Я ще літом п''янким не зігрівсь... | (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:nostalgia'', ''cat:romansy'', ''Пісні про красу природи'', ''Пісні з ностальгічними мотивами'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_887705'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_887705','А вже осінь','А вже осінь прийшла у мій сад,
Забагрянила пишний наряд,
Затуманила вись голубу
І ронила у серці журбу.
Затуманила вись голубу
І ронила у серці журбу.
А вже осінь прийшла у мій сад,    |
Я ж не кликав її - "Йди назад,    |
Не обтрушуй зелені гаї            |
І не стукай у вікна мої."         | (2)
А вже осінь прийшла у мій сад,
Цвіт кохання замів листопад,
Хоч багато барвистих одеж,        |
А того, що було не вернеш.        | (2)
А вже осінь прийшла у мій сад,    |
І так швидко, і так невпопад,     |
Все притихло змінилось скрізь,    |
Я ще літом п''янким не зігрівсь.   | (2)
Не прошу я дарунків твоїх,
Не шукаю осінніх утіх.
А вже осінь прийшла у мій сад.    |
"Я ж не кликав тебе, йди назад!"  | (2)
А вже осінь прийшла у мій сад.
"Я ж не кликав тебе, йди назад!
Не обтрушуй зелені гаї
І не стукай у вікна мої!"
А вже осінь прийшла у мій сад,
І так швидко, і так невпопад,
Все притихло змінилось скрізь,    |
Я ще літом п''янким не зігрівсь... | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_887705_l1','pisniua_887705','YouTube','https://www.youtube.com/watch?v=TnafKmvjE9o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_887705_l2','pisniua_887705','YouTube','https://www.youtube.com/watch?v=9jJYK9mlrIg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_887705_l3','pisniua_887705','YouTube','https://www.youtube.com/watch?v=dsEP-SzOyso','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_887705_l4','pisniua_887705','YouTube','https://www.youtube.com/watch?v=jZqXU-wMfRI','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_887705_l5','pisniua_887705','YouTube','https://www.youtube.com/watch?v=J-MAi-vJQEk','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_888312';
DELETE FROM song_versions WHERE song_id = 'pisniua_888312';
DELETE FROM songs_fts WHERE song_id = 'pisniua_888312';
DELETE FROM songs WHERE id = 'pisniua_888312';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_888312','Червона калина','(Хай живе вільна Україна). Музика: П. Процько, Юрій Марштупа Слова: Микола Шапошник. Виконує: Гопак','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Як у Цареграді, славних козаченьків,
Вражі бусурмани, вішали на гак.
Глянувши востаннє на цей світ біленький,
У смертну годину козак мовив так:
Приспів:
Хай живе, живе вільна Україна.
Хай живуть, живуть вічно козаки.
Хай цвіте, хай цвіте червона калина.
Нехай згинуть воріженьки на вічні віки. | (2)
Як вороги кляті нас на кіл сажали,
Як живцем палили, у смолі пекли,
Козаки у ката життя не благали
Про долю країни думи їх були.
Приспів.
Хто живе на світі і хто жити буде,
Хто шляхи козацькі буде ще топтать,
Щоб буяла воля, щоб раділи люди, -
Дай їм, Бог, востаннє ці слова сказать.
Приспів.
Речитатив:
Хай ніколи не побачить сонця той,
Хто зрадив Батьківщину,
Як Каїну, першому вбивці на землі,
Ніколи не було, нема і не буде прощення.
Хай так і не буде прощення тим,
Хто заради лаковства проклятого,
Вбив у серці своїм
Волелюбний дух народу нашого,
Відцурався віри християнської!
Приспів.
Нехай згинуть воріженьки на вічні віки!
Гей-гей!','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_888312'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_888312','Червона калина','Як у Цареграді, славних козаченьків,
Вражі бусурмани, вішали на гак.
Глянувши востаннє на цей світ біленький,
У смертну годину козак мовив так:
Приспів:
Хай живе, живе вільна Україна.
Хай живуть, живуть вічно козаки.
Хай цвіте, хай цвіте червона калина.
Нехай згинуть воріженьки на вічні віки. | (2)
Як вороги кляті нас на кіл сажали,
Як живцем палили, у смолі пекли,
Козаки у ката життя не благали
Про долю країни думи їх були.
Приспів.
Хто живе на світі і хто жити буде,
Хто шляхи козацькі буде ще топтать,
Щоб буяла воля, щоб раділи люди, -
Дай їм, Бог, востаннє ці слова сказать.
Приспів.
Речитатив:
Хай ніколи не побачить сонця той,
Хто зрадив Батьківщину,
Як Каїну, першому вбивці на землі,
Ніколи не було, нема і не буде прощення.
Хай так і не буде прощення тим,
Хто заради лаковства проклятого,
Вбив у серці своїм
Волелюбний дух народу нашого,
Відцурався віри християнської!
Приспів.
Нехай згинуть воріженьки на вічні віки!
Гей-гей!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l1','pisniua_888312','YouTube','https://www.youtube.com/watch?v=I6QLrMRQwpA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l2','pisniua_888312','YouTube','https://www.youtube.com/watch?v=0CR19oYHe6w','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l3','pisniua_888312','YouTube','https://www.youtube.com/watch?v=50-2Di9c8jc','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l4','pisniua_888312','YouTube','https://www.youtube.com/watch?v=aPAM7ZjVlAU','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l5','pisniua_888312','YouTube','https://www.youtube.com/watch?v=HpFvbc4HNXg','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l6','pisniua_888312','YouTube','https://www.youtube.com/watch?v=I764h6fG7Kg','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l7','pisniua_888312','YouTube','https://www.youtube.com/watch?v=kOCbaJuTwaY','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l8','pisniua_888312','YouTube','https://www.youtube.com/watch?v=qHspKQNk21I','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l9','pisniua_888312','YouTube','https://www.youtube.com/watch?v=MyvLAHSxwpY','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_888312_l10','pisniua_888312','YouTube','https://www.youtube.com/watch?v=PgA4MH-Tskw','video',NULL,10);
DELETE FROM song_links WHERE song_id = 'pisniua_894001';
DELETE FROM song_versions WHERE song_id = 'pisniua_894001';
DELETE FROM songs_fts WHERE song_id = 'pisniua_894001';
DELETE FROM songs WHERE id = 'pisniua_894001';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_894001','Мама','Музика: Юлія Рай Слова: Юлія Рай. Виконує: Юлія Рай','uk','ukraine_1991',NULL,NULL,NULL,NULL,'1|-------------------------------------------
2|-3-------3---5---6-----5---1--0---1--0-----
3|-----2-------------------------------------

Комусь я посміхнусь зранку,
А в комусь я помилюсь аж до рани.
Мама, ти чуєш, йому прикро,
G
Він каже йому сумно.
А я до нього звикла.

Dm A(А7) E
Кажуть люди: "гірше не буде"
Та не тане мій біль
Ну як же я без нього.
Скажи, чому він не мій?

Приспів:
І кричали йому весни в слід,
А для нього було мало слів,
А для нього був весь світ німий.
Скажи, чому він не мій?
І котилась я, мов камінь, вниз,
А для нього було мало сліз,
А для нього був весь світ німий.
Скажи, чому він не мій?

Колись я розірву кляте коло,
А може я не зумію ніколи.
Мама, і буде справді прикро
і неможливо сумно.
Я так до нього звикла.

Кажуть люди: "гірше не буде"
Та не тане мій біль
Ну як же я без нього.
Скажи, чому він не мій?

Приспів. (2)

Він не мій.
ла ла ла ла
ла ла ла ла ла
Мама, чому він не мій?','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_894001'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_894001','Мама','1|-------------------------------------------
2|-3-------3---5---6-----5---1--0---1--0-----
3|-----2-------------------------------------

Комусь я посміхнусь зранку,
А в комусь я помилюсь аж до рани.
Мама, ти чуєш, йому прикро,
G
Він каже йому сумно.
А я до нього звикла.

Dm A(А7) E
Кажуть люди: "гірше не буде"
Та не тане мій біль
Ну як же я без нього.
Скажи, чому він не мій?

Приспів:
І кричали йому весни в слід,
А для нього було мало слів,
А для нього був весь світ німий.
Скажи, чому він не мій?
І котилась я, мов камінь, вниз,
А для нього було мало сліз,
А для нього був весь світ німий.
Скажи, чому він не мій?

Колись я розірву кляте коло,
А може я не зумію ніколи.
Мама, і буде справді прикро
і неможливо сумно.
Я так до нього звикла.

Кажуть люди: "гірше не буде"
Та не тане мій біль
Ну як же я без нього.
Скажи, чому він не мій?

Приспів. (2)

Він не мій.
ла ла ла ла
ла ла ла ла ла
Мама, чому він не мій?');
DELETE FROM song_links WHERE song_id = 'pisniua_913383';
DELETE FROM song_versions WHERE song_id = 'pisniua_913383';
DELETE FROM songs_fts WHERE song_id = 'pisniua_913383';
DELETE FROM songs WHERE id = 'pisniua_913383';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_913383','Ой у гаю, при Дунаю','Українська народна пісня. Виконує: Тріо Мареничів, Рушничок, Оксана Роспоп, Ольга Роспоп','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой у гаю, при Дунаю
Соловей щебече.
Він свою всю пташину
До гніздечка кличе.
Ой тьох-тьох і тьох-тьох-тьох  |
Соловей щебече.                |
Cm                             |
Він свою всю пташину           | (2)
До гніздечка кличе.            |
Ой у гаю, при Дунаю
Там музика грає.
Бас гуде, скрипка плаче,
Милий мій гуляє.
Ой тьох-тьох і тьох-тьох-тьох  |
Там музика грає.               |
Бас гуде, скрипка плаче,       | (2)
Милий мий гуляє.               |
Ой у гаю, при Дунаю
Стою самотою.
Плачу, тужу, ще й ридаю
Милий за тобою.
Ой тьох-тьох і тьох-тьох-тьох  |
Соловей щебече.                |
Він свою всю пташину           | (2)
До гніздечка кличе.            |','[''pisni.org.ua'', ''cat:lirychni'', ''cat:narodni'', ''Пісні про кохання, ліричні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_913383'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_913383','Ой у гаю, при Дунаю','Ой у гаю, при Дунаю
Соловей щебече.
Він свою всю пташину
До гніздечка кличе.
Ой тьох-тьох і тьох-тьох-тьох  |
Соловей щебече.                |
Cm                             |
Він свою всю пташину           | (2)
До гніздечка кличе.            |
Ой у гаю, при Дунаю
Там музика грає.
Бас гуде, скрипка плаче,
Милий мій гуляє.
Ой тьох-тьох і тьох-тьох-тьох  |
Там музика грає.               |
Бас гуде, скрипка плаче,       | (2)
Милий мий гуляє.               |
Ой у гаю, при Дунаю
Стою самотою.
Плачу, тужу, ще й ридаю
Милий за тобою.
Ой тьох-тьох і тьох-тьох-тьох  |
Соловей щебече.                |
Він свою всю пташину           | (2)
До гніздечка кличе.            |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l1','pisniua_913383','YouTube','https://www.youtube.com/watch?v=3uBwhFYCWkM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l2','pisniua_913383','YouTube','https://www.youtube.com/watch?v=M-Gln6yNvtc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l3','pisniua_913383','YouTube','https://www.youtube.com/watch?v=ES5Tvg5VcZs','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l4','pisniua_913383','YouTube','https://www.youtube.com/watch?v=7P2ODQp0e2s','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l5','pisniua_913383','YouTube','https://www.youtube.com/watch?v=tsbO5f9Ztd0','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l6','pisniua_913383','YouTube','https://www.youtube.com/watch?v=ljbOkh6_muA','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l7','pisniua_913383','YouTube','https://www.youtube.com/watch?v=J0Jp5zYKZMk','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_913383_l8','pisniua_913383','YouTube','https://www.youtube.com/watch?v=KmH7VLEwo1k','video',NULL,8);
DELETE FROM song_links WHERE song_id = 'pisniua_914282';
DELETE FROM song_versions WHERE song_id = 'pisniua_914282';
DELETE FROM songs_fts WHERE song_id = 'pisniua_914282';
DELETE FROM songs WHERE id = 'pisniua_914282';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_914282','Не забудь','Музика: Богдан-Юрій Янівський Слова: Богдан Стельмах. Виконує: Валерій Дусанюк, Любов Аргатюк, Мар''ян Шуневич, Ольга Щербакова, Микола Олексишин','uk','ukraine_1991',NULL,NULL,'текст - Стельмах Б. Пшеничне перевесло.- К.: Музична Україна, 1988; акорди - Збірник пісень Студентського братства Львівської політехніки.- Львів, 2000','https://www.numberonemusic.com/lubamykoladuos/song/670039-Ne-Zabud?no_nag=1','Не забудь, яка стрімка
Людської пам''яті ріка...
Не забудь, яка гірка
G
Любов між нами -
C
В самоті блука,
В далині зника
E
Поміж берегами.
Не забудь моїх очей
В тужливій темряві ночей.
Не мовчи, о, не мовчи -
Моє ім''я ти
Вічно шепочи,
Вічно шепочи,
Щоб не забувати.
Не забудь — сніги впадуть,
Літа з водою одпливуть...
Хоч в думках зі мною будь.
Не забудь, не забудь.
Вирує пам''ять, як ріка поміж дібров, -
Пливе, не тоне в тій ріці моя любов.
Одізвись мені колись,
Луною в серці одізвись,
Чи приснись, бодай приснись
Дощем травневим,
Зіркою в очах,
Птахом в небесах,
Цвітом яблуневим.
Пам''ятай, що з летом днів
Виходить пам''ять з берегів,
Залива усе довкіл
Вогнем любові,
Греблі часу рве,
Як життя живе,
Як весняна повінь.
Не забудь — сніги впадуть,
Літа з водою одпливуть...
Хоч в думках зі мною будь -
Не забудь, не забудь.
Вирує пам''ять, як ріка поміж дібров, -
Пливе, не тоне в тій ріці моя любов.
Не забудь, яка стрімка
Людської пам''яті ріка. -
Там любов моя гірка
Не зника, не зника.','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:romansy'', ''Пісні з ностальгічними мотивами'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_914282'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_914282','Не забудь','Не забудь, яка стрімка
Людської пам''яті ріка...
Не забудь, яка гірка
G
Любов між нами -
C
В самоті блука,
В далині зника
E
Поміж берегами.
Не забудь моїх очей
В тужливій темряві ночей.
Не мовчи, о, не мовчи -
Моє ім''я ти
Вічно шепочи,
Вічно шепочи,
Щоб не забувати.
Не забудь — сніги впадуть,
Літа з водою одпливуть...
Хоч в думках зі мною будь.
Не забудь, не забудь.
Вирує пам''ять, як ріка поміж дібров, -
Пливе, не тоне в тій ріці моя любов.
Одізвись мені колись,
Луною в серці одізвись,
Чи приснись, бодай приснись
Дощем травневим,
Зіркою в очах,
Птахом в небесах,
Цвітом яблуневим.
Пам''ятай, що з летом днів
Виходить пам''ять з берегів,
Залива усе довкіл
Вогнем любові,
Греблі часу рве,
Як життя живе,
Як весняна повінь.
Не забудь — сніги впадуть,
Літа з водою одпливуть...
Хоч в думках зі мною будь -
Не забудь, не забудь.
Вирує пам''ять, як ріка поміж дібров, -
Пливе, не тоне в тій ріці моя любов.
Не забудь, яка стрімка
Людської пам''яті ріка. -
Там любов моя гірка
Не зника, не зника.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_914282_l1','pisniua_914282','YouTube','https://www.youtube.com/watch?v=wsT3PBrYNa8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_914282_l2','pisniua_914282','YouTube','https://www.youtube.com/watch?v=tKgxschA2T4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_914282_l3','pisniua_914282','YouTube','https://www.youtube.com/watch?v=xESczLjMTOs','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_914282_l4','pisniua_914282','YouTube','https://www.youtube.com/watch?v=7szHz4g1lys','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_914282_l5','pisniua_914282','YouTube','https://www.youtube.com/watch?v=wRSsGIGbG2k','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_914786';
DELETE FROM song_versions WHERE song_id = 'pisniua_914786';
DELETE FROM songs_fts WHERE song_id = 'pisniua_914786';
DELETE FROM songs WHERE id = 'pisniua_914786';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_914786','Дидактична вистава в Театрі Богуславського','Музика: Мертвий півень Слова: Юрій Андрухович. Виконує: Мертвий півень','uk','ukraine_1991',NULL,NULL,'записано на слух з аудіо - Мертвий Півень. "Ето". 1993','Підбір акордів: Гуру, bohdanko','Вступ:

E||----------------------|----------------------|
H||----------------------|----------------------|
G||----------------------|----------------------|
D||--------0--4----------|--------0--2----------|
A||-----4----------------|-----4----------------|
E||--2-------------------|--2-------------------|

Дидактична               вистава

-----------0----------|--------||
--------0-------------|--------||
-----4----------------|--9--7--||
--2-------------------|--------||

в Театрі   Богу-
славського. Велике вражіння у Львові
зробило те, як один із акторів відкрив до...
мовини з людськими кістяками.
При перебудові костела на театр забуто усунути з під...
земелля давніх покійників.
(І.Крип''якевич. Історичні проходи по Львові.)

Мотив 1:
Панове публіка, для трепету і млості,
Для гостроти і свіжості в серцях
Репрезентуєм підземельні кості.
Панове, всі ми ходим по мерцях

Мотив 2:
Як по мостах. Вони лежать між нами,
Тверді, мов підмурівки у домах, -
Ростуть униз невидними вогнями.
Пройміться світлом ницих костомах...

Програш:  Hm A G F#  (2)

Мотив 3:
Розкішно вам у ложі, мов на лоні
На галереях - тупіт і аншлаг,
Ви так бурхливо плещете в долоні,
Немовби винні в смерті бідолах...

Мотив 1:
Панове, цить! (Стікає воском люстра...)
Мерці - мерцями, їм не в голові.
А ми - мов лишаї на тілі людства -
Голодні, ґеніальні та живі.

Мотив 4:
То ж порятуйте нас і лорнетуйте
Худу й безкровну шкіру ґалатей.
Подайте хліба, рани побинтуйте -
Панове, всі ми схожі на людей.

Мотив 5:
Зігравши королів і принців крові,
У вицвілих плащах, мов у мішках,
Підем у тьму - в мансарди вечорові -
І спати полягаєм на дошках.

Вступ (як і на початку):
Дидактична вистава в Театрі
Богуславського.

Мотив 1:
Панове публіка, для трепету і млості,
Для гостроти і свіжості в серцях
Репрезентуєм підземельні кості.
Панове, всі ми ходим по мерцях...

Програш:  Hm A G F#  (2)','[''pisni.org.ua'', ''cat:lviv'', ''Пісні про Львів'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_914786'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_914786','Дидактична вистава в Театрі Богуславського','Вступ:

E||----------------------|----------------------|
H||----------------------|----------------------|
G||----------------------|----------------------|
D||--------0--4----------|--------0--2----------|
A||-----4----------------|-----4----------------|
E||--2-------------------|--2-------------------|

Дидактична               вистава

-----------0----------|--------||
--------0-------------|--------||
-----4----------------|--9--7--||
--2-------------------|--------||

в Театрі   Богу-
славського. Велике вражіння у Львові
зробило те, як один із акторів відкрив до...
мовини з людськими кістяками.
При перебудові костела на театр забуто усунути з під...
земелля давніх покійників.
(І.Крип''якевич. Історичні проходи по Львові.)

Мотив 1:
Панове публіка, для трепету і млості,
Для гостроти і свіжості в серцях
Репрезентуєм підземельні кості.
Панове, всі ми ходим по мерцях

Мотив 2:
Як по мостах. Вони лежать між нами,
Тверді, мов підмурівки у домах, -
Ростуть униз невидними вогнями.
Пройміться світлом ницих костомах...

Програш:  Hm A G F#  (2)

Мотив 3:
Розкішно вам у ложі, мов на лоні
На галереях - тупіт і аншлаг,
Ви так бурхливо плещете в долоні,
Немовби винні в смерті бідолах...

Мотив 1:
Панове, цить! (Стікає воском люстра...)
Мерці - мерцями, їм не в голові.
А ми - мов лишаї на тілі людства -
Голодні, ґеніальні та живі.

Мотив 4:
То ж порятуйте нас і лорнетуйте
Худу й безкровну шкіру ґалатей.
Подайте хліба, рани побинтуйте -
Панове, всі ми схожі на людей.

Мотив 5:
Зігравши королів і принців крові,
У вицвілих плащах, мов у мішках,
Підем у тьму - в мансарди вечорові -
І спати полягаєм на дошках.

Вступ (як і на початку):
Дидактична вистава в Театрі
Богуславського.

Мотив 1:
Панове публіка, для трепету і млості,
Для гостроти і свіжості в серцях
Репрезентуєм підземельні кості.
Панове, всі ми ходим по мерцях...

Програш:  Hm A G F#  (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_9150384';
DELETE FROM song_versions WHERE song_id = 'pisniua_9150384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9150384';
DELETE FROM songs WHERE id = 'pisniua_9150384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9150384','Коломиєчка','Українська народна пісня. Виконує: Майя Негребецька','uk','ukraine_before_1917',NULL,NULL,'Опрацювання кількох коломийок, записаних на Коломийщині','Обробка мелодії, слів та оркестрове аранжування Лесі Соболевської','1.
Куди піду по світкові,
Чую співаночки,
Та не чую файнішої
Від коломийочки.
Заспіваю співаночку,
Голосом постелю,
Та не одне засмучене
Серце розвеселю.

Приспів:
А я собі заспіваю,
F
Бо вмію співати.
F
І ви собі заспівайте,
Буду помагати.
Мотаються співаночки,
F
Як нитка з клубочка,
F
Бо багата співанками
Моя головочка.
Гой, шіді-ріді-дай!
Грай, моя сопілочко,
Грай, грай, грай!

2.
Цвірінькають горобчики
У мене на хатці.
Кожен собі то співає,
Що йому на гадці.
Співаночки мої милі,
Кілько я вас маю,
То я в кожну співаночку
Серденько вкладаю.

Приспів.

3.(зміна мелодії)
Коломийка, коломийка,
Весела співанка,
Над колискою співала
Її моя мамця.
А я нині заспіваю,
Сопілка повторить.
Співаночок стільки маю,
Як смерек у горах.

Приспів.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9150384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9150384','Коломиєчка','1.
Куди піду по світкові,
Чую співаночки,
Та не чую файнішої
Від коломийочки.
Заспіваю співаночку,
Голосом постелю,
Та не одне засмучене
Серце розвеселю.

Приспів:
А я собі заспіваю,
F
Бо вмію співати.
F
І ви собі заспівайте,
Буду помагати.
Мотаються співаночки,
F
Як нитка з клубочка,
F
Бо багата співанками
Моя головочка.
Гой, шіді-ріді-дай!
Грай, моя сопілочко,
Грай, грай, грай!

2.
Цвірінькають горобчики
У мене на хатці.
Кожен собі то співає,
Що йому на гадці.
Співаночки мої милі,
Кілько я вас маю,
То я в кожну співаночку
Серденько вкладаю.

Приспів.

3.(зміна мелодії)
Коломийка, коломийка,
Весела співанка,
Над колискою співала
Її моя мамця.
А я нині заспіваю,
Сопілка повторить.
Співаночок стільки маю,
Як смерек у горах.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_9198683';
DELETE FROM song_versions WHERE song_id = 'pisniua_9198683';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9198683';
DELETE FROM songs WHERE id = 'pisniua_9198683';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9198683','За все Тобі я дякую',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'За все Тобі я дякую
Спасителю Ти мій,
За Духа, що з ознакою
Ти дав душі моїй

Я дякую за все, за те, що спас мене,
За те, що життя дав, духа злоби прогнав.
Мене Духом хрестив і в серці поселив,
Щоб Він мною всяк час в житті руководив.

За все Тобі я дякую,
За Твій Голгофський хрест,
За Тебе та розп''ятого,
За те, що чуєш нас.

За все Тобі я дякую,
Надіє, Ти моя,
Тебе я хочу славити,
Тобі честь і хвала!','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9198683'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9198683','За все Тобі я дякую','За все Тобі я дякую
Спасителю Ти мій,
За Духа, що з ознакою
Ти дав душі моїй

Я дякую за все, за те, що спас мене,
За те, що життя дав, духа злоби прогнав.
Мене Духом хрестив і в серці поселив,
Щоб Він мною всяк час в житті руководив.

За все Тобі я дякую,
За Твій Голгофський хрест,
За Тебе та розп''ятого,
За те, що чуєш нас.

За все Тобі я дякую,
Надіє, Ти моя,
Тебе я хочу славити,
Тобі честь і хвала!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9198683_l1','pisniua_9198683','YouTube','https://www.youtube.com/watch?v=vlPnjgK4Uf0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_921484';
DELETE FROM song_versions WHERE song_id = 'pisniua_921484';
DELETE FROM songs_fts WHERE song_id = 'pisniua_921484';
DELETE FROM songs WHERE id = 'pisniua_921484';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_921484','Варто чи ні','(Я люблю тільки тебе). Музика: Олександр Пономарьов Слова: Олександр Пономарьов. Виконує: Олександр Пономарьов, Владислав Лєлюшкін','uk','ukraine_1991',NULL,NULL,'Аудіозапис','Пісню найкраще грати перебором. Акорди подано спрощено. Ориґінальна тональність: Cm (каподастр на III ладі). Підібрано на слух за аудіо-джерелом. * Тут в аудіо-оригіналі: "З подиха в біль..." ** Тут в аудіо-оригіналі за другим разом у приспіві є перехід на два півтони вгору. Деякі акорди: F7M [1 x 3 2 1 0] E/G# [4 2 2 1 0 0] або [4 x 2 1 0 0] Em/G [3 2 2 0 0 0] Esus4 [0 2 2 2 0 0] Am/G [3 0 2 2 1 0] Am/C [0 3 2 2 1 0] F/5- [1 2 3 1 0 1] Ноти (ф-но + вокал): http://nephele.kulichki.net/forum/viewtopic.php?t=2220 Підбір акордів: bohdanko@epost.com.ua','Вступ:

М- м-  м-   м...
М- м-  м...

1.
Варто чи ні
жити без те-    бе?
Я б полетів
з тобою в не-    бо.
Я повернув би час назад
C        Dm     Esus4 E
і сказав би так:

Приспів:
Я   люблю тільки тебе,
D
Богом дану мені.
Dm          Esus4 E
Моє серце пала-    є
у вогні,   що ти дала мені,
D
Богом дана одна,
Dm           Esus4 E
моя лебідко коха-   на.

2.
Варто чи ні
жити лиш згадками?
Спомини в сні,
З холоду в жар,
З подиху в біль...*
Я повернув би час назад
і повторив би так:

Приспів 2:
Я люблю тільки тебе,
Богом дану мені.
Моє серце палає
у вогні, що ти дала мені,
Богом дана одна -
моя лебідка кохана.

Я люблю тебе.

Програш:
Dm Am/C F/5- Esus4 E

Приспів 2. (x2)**

Я люблю тебе.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_921484'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_921484','Варто чи ні','Вступ:

М- м-  м-   м...
М- м-  м...

1.
Варто чи ні
жити без те-    бе?
Я б полетів
з тобою в не-    бо.
Я повернув би час назад
C        Dm     Esus4 E
і сказав би так:

Приспів:
Я   люблю тільки тебе,
D
Богом дану мені.
Dm          Esus4 E
Моє серце пала-    є
у вогні,   що ти дала мені,
D
Богом дана одна,
Dm           Esus4 E
моя лебідко коха-   на.

2.
Варто чи ні
жити лиш згадками?
Спомини в сні,
З холоду в жар,
З подиху в біль...*
Я повернув би час назад
і повторив би так:

Приспів 2:
Я люблю тільки тебе,
Богом дану мені.
Моє серце палає
у вогні, що ти дала мені,
Богом дана одна -
моя лебідка кохана.

Я люблю тебе.

Програш:
Dm Am/C F/5- Esus4 E

Приспів 2. (x2)**

Я люблю тебе.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_921484_l1','pisniua_921484','YouTube','https://www.youtube.com/watch?v=qslaL3adk9o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_921484_l2','pisniua_921484','YouTube','https://www.youtube.com/watch?v=VdS7Njhvc-A','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_921484_l3','pisniua_921484','YouTube','https://www.youtube.com/watch?v=xsF-SX9U5-o','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_921484_l4','pisniua_921484','http://nephele.kulichki.net/forum/viewtopic.php?t=2220','http://nephele.kulichki.net/forum/viewtopic.php?t=2220','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_926786';
DELETE FROM song_versions WHERE song_id = 'pisniua_926786';
DELETE FROM songs_fts WHERE song_id = 'pisniua_926786';
DELETE FROM songs WHERE id = 'pisniua_926786';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_926786','Єсть на світі доля','Музика: САД Слова: Тарас Шевченко. Виконує: САД','uk','ukraine_before_1917',NULL,'1838','1. http://kobzar.info/kobzar/works/poetry/2002/09/23/60.html; 2. Аудіо-альбом "Сад. Єсть на світі доля!"','Текст пісні - це фрагмент твору "Катерина" Тараса Шевченка (1838, С.-Петербург). Текст взято з джерела [1], доповнено за аудіо-джерелом [2]. Акорди підібрано на слух, подано спрощено. Тональність оригінальна. У вступі замість акорда D краще звучить G7Madd13 [x 5 4 0 3 0]. Також часто акорд G7Madd13 краще звучить і замість акорда G протягом пісні. * Тут програш починається на останній склад рядка тексту "А хто її має?", але для спрощення виконання тут це не показано. Підбір акордів: bohdanko (www.pisni.org.ua)','Вступ:  C G Am (x12)
Am C D (x2)

Мотив 1:
Am   C           G Am ...
Єсть   на світі доля,
А хто її знає?
Єсть на світі воля,
А хто її має?

Єсть люде на світі —
Сріблом-злотом сяють,
Здається, панують,
А долі не знають,—

Мотив 2:
Ні долі, ні волі!
З нудьгою та з горем
Жупан надівають,
А плакати — сором.

Мотив 3:
Ні долі, ні волі!
З нудьгою та з горем
Жупан надівають,
А плакати — сором.

Програш:
А плакати — сором.

Мотив 2:
Возьміть срібло-злото
Та будьте багаті,
А я візьму сльози —
Лихо виливати;

Затоплю недолю
Дрібними сльозами,
Затопчу неволю
Босими ногами!

Тоді я веселий,
Тоді я багатий,
Як буде серденько
По волі гуляти!

Мотив 3:
Тоді я веселий,
Тоді я багатий,
Як буде серденько
По волі гуляти!

Програш (як Вступ).

Мотив 2:
Єсть на світі доля,
А хто її знає?
Єсть на світі воля,
А хто її має?

Мотив 4:
Єсть на світі доля,
А хто її знає?
Єсть на світі воля,
G
А хто її має? *

Програш (як Вступ).

А хто її має?..
C G Am (x3)
А хто її має?..
C G Am (x3)
Єсть на світі доля...','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_926786'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_926786','Єсть на світі доля','Вступ:  C G Am (x12)
Am C D (x2)

Мотив 1:
Am   C           G Am ...
Єсть   на світі доля,
А хто її знає?
Єсть на світі воля,
А хто її має?

Єсть люде на світі —
Сріблом-злотом сяють,
Здається, панують,
А долі не знають,—

Мотив 2:
Ні долі, ні волі!
З нудьгою та з горем
Жупан надівають,
А плакати — сором.

Мотив 3:
Ні долі, ні волі!
З нудьгою та з горем
Жупан надівають,
А плакати — сором.

Програш:
А плакати — сором.

Мотив 2:
Возьміть срібло-злото
Та будьте багаті,
А я візьму сльози —
Лихо виливати;

Затоплю недолю
Дрібними сльозами,
Затопчу неволю
Босими ногами!

Тоді я веселий,
Тоді я багатий,
Як буде серденько
По волі гуляти!

Мотив 3:
Тоді я веселий,
Тоді я багатий,
Як буде серденько
По волі гуляти!

Програш (як Вступ).

Мотив 2:
Єсть на світі доля,
А хто її знає?
Єсть на світі воля,
А хто її має?

Мотив 4:
Єсть на світі доля,
А хто її знає?
Єсть на світі воля,
G
А хто її має? *

Програш (як Вступ).

А хто її має?..
C G Am (x3)
А хто її має?..
C G Am (x3)
Єсть на світі доля...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_926786_l1','pisniua_926786','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_9266282';
DELETE FROM song_versions WHERE song_id = 'pisniua_9266282';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9266282';
DELETE FROM songs WHERE id = 'pisniua_9266282';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9266282','Єрусалим, що сходить з неба','Українська народна пісня. Виконує: Джордж Давидюк','uk','ukraine_before_1917',NULL,NULL,'http://skinia.org.ua/sbornik-hristianskih-pesen/erusalim',NULL,'Єрусалим, що сходить з неба
В проміннях ясних свого Царя.
Там світла сонця більш не потрібно:
В нім Агнець Божий - рання зоря.

Приспів:
Оце оселя свята Бога з людьми,
Де будем жити із Богом ми.
Там усі сльози Ісус з очей зітре,
Смерті не буде, біль промине.

Єрусалим - нове це місто,
Перлові брами відкриті в нім.
Хто прагне пити - нехай приходить,
Джерельні води течуть у нім.

Приспів.

Єрусалим, тебе кохаю,
В тобі панує вічна любов.
Усі народи в тобі зійдуться,
Прославлять Спаса за Його кров.

Приспів. (2)','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9266282'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9266282','Єрусалим, що сходить з неба','Єрусалим, що сходить з неба
В проміннях ясних свого Царя.
Там світла сонця більш не потрібно:
В нім Агнець Божий - рання зоря.

Приспів:
Оце оселя свята Бога з людьми,
Де будем жити із Богом ми.
Там усі сльози Ісус з очей зітре,
Смерті не буде, біль промине.

Єрусалим - нове це місто,
Перлові брами відкриті в нім.
Хто прагне пити - нехай приходить,
Джерельні води течуть у нім.

Приспів.

Єрусалим, тебе кохаю,
В тобі панує вічна любов.
Усі народи в тобі зійдуться,
Прославлять Спаса за Його кров.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9266282_l1','pisniua_9266282','YouTube','https://www.youtube.com/watch?v=WOZjhT2PHaU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9266282_l2','pisniua_9266282','YouTube','https://www.youtube.com/watch?v=rZhuImJzmQE','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_93085';
DELETE FROM song_versions WHERE song_id = 'pisniua_93085';
DELETE FROM songs_fts WHERE song_id = 'pisniua_93085';
DELETE FROM songs WHERE id = 'pisniua_93085';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_93085','Розпрощався стрілець','Українська народна пісня. Виконує: Буття, Етнографічний хор Гомін','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,NULL,'Текст доповнив: Anrzej Михайло (гість): на касеті ансамблю "Фавор" дещо інший варіант (наводжу на слух і по пам''яті). Перші 2 куплети такі ж, далі: Ой, коню мій, коню, не стій ти даремно, І землі не розтопуй копитом, Біжи ж, коню мій, скажи неньці моїй, Що я лежу у лісі убитий. Нехай батько, і мати, і ріднії сестри, Нехай вони за мною не плачуть -- Я вбитий лежу, за ріднею тужу, Чорний крук наді мною лиш кряче. Ряди ж за рядами ідуть партизани, до походу гармати їм грають, За народну честь, за знущання і смерть вони ката усюди карають','Розпрощався стрілець із своєю ріднею,
Сам поїхав в далеку дорогу.
За рідний свій край, за стрілецький звичай,
Впав в бою за свою перемогу.

А вітер колише зелену траву,
Молодий дуб додолу схилився,
Листя шелестить. Вбитий стрілець лежить -
Hад ним коник його зажурився.

Ой, коню, мій коню, не плач наді мною,
Я тим часом полежу в степу...
Біжи, коню мій, скажи мамі моїй,
Що я в степу лежу вже убитий.

Hехай брати і сестри та рідная мати,
Hехай вони за мною не плачуть.
Я в степу лежу за Вкраїну свою.
Чорний крук наді мною вже кряче.

Стрілецькая слава не вмре, не загине,
Будуть про неї внуки співати,
Що були козаки, та й за волю лягли,
Тепер можемо тільки згадати','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_93085'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_93085','Розпрощався стрілець','Розпрощався стрілець із своєю ріднею,
Сам поїхав в далеку дорогу.
За рідний свій край, за стрілецький звичай,
Впав в бою за свою перемогу.

А вітер колише зелену траву,
Молодий дуб додолу схилився,
Листя шелестить. Вбитий стрілець лежить -
Hад ним коник його зажурився.

Ой, коню, мій коню, не плач наді мною,
Я тим часом полежу в степу...
Біжи, коню мій, скажи мамі моїй,
Що я в степу лежу вже убитий.

Hехай брати і сестри та рідная мати,
Hехай вони за мною не плачуть.
Я в степу лежу за Вкраїну свою.
Чорний крук наді мною вже кряче.

Стрілецькая слава не вмре, не загине,
Будуть про неї внуки співати,
Що були козаки, та й за волю лягли,
Тепер можемо тільки згадати');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_93085_l1','pisniua_93085','YouTube','https://www.youtube.com/watch?v=Cbsx5hR7Ot0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_93085_l2','pisniua_93085','YouTube','https://www.youtube.com/watch?v=nf4PyVAXZFk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_93085_l3','pisniua_93085','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_930982';
DELETE FROM song_versions WHERE song_id = 'pisniua_930982';
DELETE FROM songs_fts WHERE song_id = 'pisniua_930982';
DELETE FROM songs WHERE id = 'pisniua_930982';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_930982','Напучування сільського вчителя','Музика: Віктор Морозов Слова: Іван Малкович. Виконує: Віктор Морозов','uk','ukr_ssr_1919_1991',NULL,'1985','1. http://poetry.uazone.net/malkovych/kluch40.html. 2. Аудіо-альбом "Не журись!" (1989)','Вірш датовано: 11-18 грудня 1985 [1]. Текст доповнено за джерелом 2. Акорди записано на слух за джерелом 2, подано спрощено. Тональність оригінальна. Підбір акордів: bohdanko (pisni.org.ua)','Вступ: (x2)
Em(VII) Am(V) Hm(II) D(V) Em
Em Am(V) Hm(II) Em

Основна тема:
Em(VII) Am(V) Hm(II) D(V) Em
Em Am(V) Hm(II) Em

Хай це, можливо, і не найсуттєвіше,
але ти, дитино,
покликана захищати своїми долоньками
крихітну свічечку букви "ї",
а також,
витягнувшись на пальчиках,
оберігати місячний серпик
букви "є",
що зрізаний з неба
разом із ниточкою.

Приспів:  (x2)
Бо кажуть, дитино,
що мова наша - солов''їна.
Бо кажуть, дитино,
що мова наша - солов''їна.

Правильно кажуть.
Але затям собі,
що колись
можуть настати і такі часи,
коли нашої мови
не буде пам''ятати
навіть найменший соловейко.
...найменший соловейко.

Приспів:  (x2)
Тому не можна покладатися
тільки на солов''їв, дитино.
Тому не можна покладатися
тільки на солов''їв, дитино.

...Тому не можна покладатися
тільки   на солов''їв, дитино.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:pisni-pro-movy'', ''cat:suspilno-politychni'', ''Бардівські пісні'', ''Пісні про рідну мову'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_930982'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_930982','Напучування сільського вчителя','Вступ: (x2)
Em(VII) Am(V) Hm(II) D(V) Em
Em Am(V) Hm(II) Em

Основна тема:
Em(VII) Am(V) Hm(II) D(V) Em
Em Am(V) Hm(II) Em

Хай це, можливо, і не найсуттєвіше,
але ти, дитино,
покликана захищати своїми долоньками
крихітну свічечку букви "ї",
а також,
витягнувшись на пальчиках,
оберігати місячний серпик
букви "є",
що зрізаний з неба
разом із ниточкою.

Приспів:  (x2)
Бо кажуть, дитино,
що мова наша - солов''їна.
Бо кажуть, дитино,
що мова наша - солов''їна.

Правильно кажуть.
Але затям собі,
що колись
можуть настати і такі часи,
коли нашої мови
не буде пам''ятати
навіть найменший соловейко.
...найменший соловейко.

Приспів:  (x2)
Тому не можна покладатися
тільки на солов''їв, дитино.
Тому не можна покладатися
тільки на солов''їв, дитино.

...Тому не можна покладатися
тільки   на солов''їв, дитино.');
DELETE FROM song_links WHERE song_id = 'pisniua_939683';
DELETE FROM song_versions WHERE song_id = 'pisniua_939683';
DELETE FROM songs_fts WHERE song_id = 'pisniua_939683';
DELETE FROM songs WHERE id = 'pisniua_939683';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_939683','Там, на Лемківщині','(Лемківщина). Музика: Костянтин Павляк Слова: Костянтин Павляк. Виконує: Богдан Лялька','uk','ukr_ssr_1919_1991',NULL,'1989','1. Пісня "Лемківщина" Пісня "Украдені гори (Лемківщина)" (варіант з 1989 року) 2. Пісня "Лемківщина" (Братський варіант)','Цей адаптований варіант – це поєднання оригінального варіанту тексту (з 1989 року) і популярного братського варіанту мелодії.','Авторський (оригінал) текст пісні:
1.
Як часто я бачу вві сні украдені гори,
Котрі стережуть від мене прикордонні дозори.
Я там ніколи не був, і хтозна, чи потраплю коли,
Хоч ще півстоліття тому мої там батьки жили.
Приспів 1:
Там, на Лемківщині, наші місця святі.
Там, на Лемківщині, ще стоять наші хати.
Як ти, Лемківщино, живеш без нас в самоті?
Чи не зогнили, не зоржавіли хрести
На могилах дідів?
2.
І я ночами не сплю, мов сновида який.
Я знаю - мій шлях туди не буде легкий.
Бо там, де рівняють кордони, там щастя нема.
У нас різні закони, та однакова тюрма.
Приспів 2:
Але там, на Лемківщині, наші місця святі.
Але там, на Лемківщині, ще стоять наші хати.
Як ти, Лемківщино, живеш без нас в самоті?
Чи не зогнили, не зоржавіли хрести
На могилах дідів?
3.
Ми по світу розкидані, неначе жиди.
Хто дав вам право вершить нашу долю,
наші "старші брати"?
Сповиті гори туманом - хто ж нам їх верне?
Я знаю - десь там, понад Сяном
є ті, що чекають мене...
Приспів 3:
Десь там, на Лемківщині, де стоять наші хати.
Десь там, на Лемківщині, де наші місця святі.
Як ти, Лемківщино, живеш без нас в самоті?
Чи не зогнили, не зоржавіли хрести
На могилах дідів?
Акорди:
1.
Як часто я бачу вві сні украдені гори,
Котрі стережуть від мене прикордонні дозори.
Я там ніколи не був, і хтозна, чи потраплю коли,
Хоч ще півстоліття тому мої там батьки жили.
Приспів 1:
Там, на Лемківщині, наші місця святі.
Там, на Лемківщині, ще стоять наші хати.
Як ти, Лемківщино, живеш без нас в самоті?
Чи не зогнили, не зоржавіли хрести
На могилах дідів?
2.
І я ночами не сплю, мов сновида який.
Я знаю - мій шлях туди не буде легкий.
Бо там, де рівняють кордони, там щастя нема.
У нас різні закони, та однакова тюрма.
Приспів 2:
Але там, на Лемківщині, наші місця святі.
Але там, на Лемківщині, ще стоять наші хати.
Як ти, Лемківщино, живеш без нас в самоті?
Чи не зогнили, не зоржавіли хрести
На могилах дідів?
3.
Ми по світу розкидані, неначе жиди.
Хто дав вам право вершить нашу долю,
наші "старші брати"?
Сповиті гори туманом - хто ж нам їх верне?
Я знаю - десь там, понад Сяном
є ті, що чекають мене...
Приспів 3:
Десь там, на Лемківщині, де стоять наші хати.
Десь там, на Лемківщині, де наші місця святі.
Як ти, Лемківщино, живеш без нас в самоті?
Чи не зогнили, не зоржавіли хрести
На могилах дідів?','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_939683'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_939683','Там, на Лемківщині','Авторський (оригінал) текст пісні:
1.
Як часто я бачу вві сні украдені гори,
Котрі стережуть від мене прикордонні дозори.
Я там ніколи не був, і хтозна, чи потраплю коли,
Хоч ще півстоліття тому мої там батьки жили.
Приспів 1:
Там, на Лемківщині, наші місця святі.
Там, на Лемківщині, ще стоять наші хати.
Як ти, Лемківщино, живеш без нас в самоті?
Чи не зогнили, не зоржавіли хрести
На могилах дідів?
2.
І я ночами не сплю, мов сновида який.
Я знаю - мій шлях туди не буде легкий.
Бо там, де рівняють кордони, там щастя нема.
У нас різні закони, та однакова тюрма.
Приспів 2:
Але там, на Лемківщині, наші місця святі.
Але там, на Лемківщині, ще стоять наші хати.
Як ти, Лемківщино, живеш без нас в самоті?
Чи не зогнили, не зоржавіли хрести
На могилах дідів?
3.
Ми по світу розкидані, неначе жиди.
Хто дав вам право вершить нашу долю,
наші "старші брати"?
Сповиті гори туманом - хто ж нам їх верне?
Я знаю - десь там, понад Сяном
є ті, що чекають мене...
Приспів 3:
Десь там, на Лемківщині, де стоять наші хати.
Десь там, на Лемківщині, де наші місця святі.
Як ти, Лемківщино, живеш без нас в самоті?
Чи не зогнили, не зоржавіли хрести
На могилах дідів?
Акорди:
1.
Як часто я бачу вві сні украдені гори,
Котрі стережуть від мене прикордонні дозори.
Я там ніколи не був, і хтозна, чи потраплю коли,
Хоч ще півстоліття тому мої там батьки жили.
Приспів 1:
Там, на Лемківщині, наші місця святі.
Там, на Лемківщині, ще стоять наші хати.
Як ти, Лемківщино, живеш без нас в самоті?
Чи не зогнили, не зоржавіли хрести
На могилах дідів?
2.
І я ночами не сплю, мов сновида який.
Я знаю - мій шлях туди не буде легкий.
Бо там, де рівняють кордони, там щастя нема.
У нас різні закони, та однакова тюрма.
Приспів 2:
Але там, на Лемківщині, наші місця святі.
Але там, на Лемківщині, ще стоять наші хати.
Як ти, Лемківщино, живеш без нас в самоті?
Чи не зогнили, не зоржавіли хрести
На могилах дідів?
3.
Ми по світу розкидані, неначе жиди.
Хто дав вам право вершить нашу долю,
наші "старші брати"?
Сповиті гори туманом - хто ж нам їх верне?
Я знаю - десь там, понад Сяном
є ті, що чекають мене...
Приспів 3:
Десь там, на Лемківщині, де стоять наші хати.
Десь там, на Лемківщині, де наші місця святі.
Як ти, Лемківщино, живеш без нас в самоті?
Чи не зогнили, не зоржавіли хрести
На могилах дідів?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_939683_l1','pisniua_939683','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_944282';
DELETE FROM song_versions WHERE song_id = 'pisniua_944282';
DELETE FROM songs_fts WHERE song_id = 'pisniua_944282';
DELETE FROM songs WHERE id = 'pisniua_944282';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_944282','Прощальний романс','Музика: Михайло Зарічний Слова: Олександр Ірванець. Виконує: ПереBANDя, Михайло Зарічний','uk','ukraine_1991',NULL,NULL,'1. Надав М. Зарічний','Підбір акордів: М. Зарічний','А я тебе кидаю
В світі такому холодному.
Всі клятви й обіцянки
F#7              Bm7+
Раптом упали в ціні.
І тільки два слова,
Два слова сумління колотимуть:
Пробачиш мені?
C                F#9+
Моя мила, пробачиш мені?

Пробач мені, мила,
Яви свою милість, пробач мені.
Звільни мою душу
Від того, що так їй пече.
Тому ми й прощання
Назвали останнім побаченням,
Щоб мати надію -
А раптом побачимось ще.

Але ти мовчиш.
Головою печально похитуєш
І стук твоїх кроків
Відлунює в скроні мої:
"Навіщо ти кидаєш милу,
На-ві-що ти ки-да-єш?
Це ж, може, остання любов,
Тож не кидай її!..."

Останні вагання
Змиває і злизує злива.
Останніх благань
Благенькі блакитні вогні.
А я тебе кидаю,
Я тебе кидаю, мила,
Мов круг рятувальний,
Якого хтось кинув мені.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_944282'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_944282','Прощальний романс','А я тебе кидаю
В світі такому холодному.
Всі клятви й обіцянки
F#7              Bm7+
Раптом упали в ціні.
І тільки два слова,
Два слова сумління колотимуть:
Пробачиш мені?
C                F#9+
Моя мила, пробачиш мені?

Пробач мені, мила,
Яви свою милість, пробач мені.
Звільни мою душу
Від того, що так їй пече.
Тому ми й прощання
Назвали останнім побаченням,
Щоб мати надію -
А раптом побачимось ще.

Але ти мовчиш.
Головою печально похитуєш
І стук твоїх кроків
Відлунює в скроні мої:
"Навіщо ти кидаєш милу,
На-ві-що ти ки-да-єш?
Це ж, може, остання любов,
Тож не кидай її!..."

Останні вагання
Змиває і злизує злива.
Останніх благань
Благенькі блакитні вогні.
А я тебе кидаю,
Я тебе кидаю, мила,
Мов круг рятувальний,
Якого хтось кинув мені.');
DELETE FROM song_links WHERE song_id = 'pisniua_9480384';
DELETE FROM song_versions WHERE song_id = 'pisniua_9480384';
DELETE FROM songs_fts WHERE song_id = 'pisniua_9480384';
DELETE FROM songs WHERE id = 'pisniua_9480384';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_9480384','Діти війни','Музика: Сергій Нехаєвський Слова: Оля Киця','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Стоїть малюк, закривши оченята,
На личку рана, куртка вся брудна,
До ротика підносить рученята,
А у кремлі радіє сатана!
Де дівся дім? Де іграшки поділись?
Де ліжечко, в якому тихо спав?
Де теплий плед, під ним із татом грілись,
Коли мороз за носика щипав.
Am\H7\Em\C\Am\H7\Em\
М-М-М-М-М-М-М-М  -....
Де книжечка із добрими казками?
Машинки, ними грався з дідусем?
А, де усе, що так любила мама?
Куди, скажіть, поділося усе?
Стоїть малюк, не може зрозуміти,
Що він зробив поганого комусь.
Чому сидять заплаканії діти,
І стогне чийсь згорьований татусь?..
Am\H7\Em\C\Am\H7\Em\
А-А-А-А-А-А-А  -....
Бабуся в крик і падає на землю,
Благає всіх: "Рятуйте, поможіть!"
Бо десь отам, у цій руїні темній
Її донька з онуками лежить.
Це будуть перші згадки із дитинства:
Руїни, сльози, страх і крик людей.
Навіки закарбується це звірство
У душах всіх скалічених дітей,
Війною покалічених дітей...
Am\H7\Em\C\Am\H7\Em\
М-М-М-М-М-М-М-М  -....','[''pisni.org.ua'', ''cat:ato'', ''cat:pro-ditey'', ''Пісні російсько-української війни та АТО'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_9480384'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_9480384','Діти війни','Стоїть малюк, закривши оченята,
На личку рана, куртка вся брудна,
До ротика підносить рученята,
А у кремлі радіє сатана!
Де дівся дім? Де іграшки поділись?
Де ліжечко, в якому тихо спав?
Де теплий плед, під ним із татом грілись,
Коли мороз за носика щипав.
Am\H7\Em\C\Am\H7\Em\
М-М-М-М-М-М-М-М  -....
Де книжечка із добрими казками?
Машинки, ними грався з дідусем?
А, де усе, що так любила мама?
Куди, скажіть, поділося усе?
Стоїть малюк, не може зрозуміти,
Що він зробив поганого комусь.
Чому сидять заплаканії діти,
І стогне чийсь згорьований татусь?..
Am\H7\Em\C\Am\H7\Em\
А-А-А-А-А-А-А  -....
Бабуся в крик і падає на землю,
Благає всіх: "Рятуйте, поможіть!"
Бо десь отам, у цій руїні темній
Її донька з онуками лежить.
Це будуть перші згадки із дитинства:
Руїни, сльози, страх і крик людей.
Навіки закарбується це звірство
У душах всіх скалічених дітей,
Війною покалічених дітей...
Am\H7\Em\C\Am\H7\Em\
М-М-М-М-М-М-М-М  -....');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9480384_l1','pisniua_9480384','YouTube','https://www.youtube.com/watch?v=Tc9Wc7YzF2o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_9480384_l2','pisniua_9480384','YouTube','https://www.youtube.com/watch?v=B8lVHfcgGLc','video',NULL,2);
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
Що, наче постріл, пролунало те "прощай".
Як зради постріл, пролунало те "прощай",
Але не в тім моя печаль.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_95786'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_95786','Минає день, минає ніч','Минає день, минає ніч.
Хвилини котяться, як хвилі голубі.
Не в тому річ, не в тому річ,
Що я сказав "люблю" лише одній тобі.
A
Не в тім печаль, не в тім печаль,
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
Що, наче постріл, пролунало те "прощай".
Як зради постріл, пролунало те "прощай",
Але не в тім моя печаль.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_95786_l1','pisniua_95786','YouTube','https://www.youtube.com/watch?v=eqdwi5I9U_c','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_95786_l2','pisniua_95786','YouTube','https://www.youtube.com/watch?v=hjj52Z282fo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_95786_l3','pisniua_95786','YouTube','https://www.youtube.com/watch?v=0qsLC8vtFfs','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_95786_l4','pisniua_95786','YouTube','https://www.youtube.com/watch?v=57jC5impnug','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_95786_l5','pisniua_95786','YouTube','https://www.youtube.com/watch?v=QQ4K7-uRaw4','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_95786_l6','pisniua_95786','YouTube','https://www.youtube.com/watch?v=RB-AZE9743Y','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_99181';
DELETE FROM song_versions WHERE song_id = 'pisniua_99181';
DELETE FROM songs_fts WHERE song_id = 'pisniua_99181';
DELETE FROM songs WHERE id = 'pisniua_99181';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_99181','Oh my dear Ukraine *','Музика: Кость Москалець Слова: Кость Москалець. Виконує: Віктор Морозов, Четвертий кут','uk','ukraine_1991',NULL,NULL,'http://www.shulga.kiev.ua/','* - Всюди замiсть Dm/F можна ставити F7','Dm        Dm/F*      Gm       A
Цей твiй сон не скiнчиться нiколи
Ти будеш одна-a
Твiй портрет завбiльшки з долоню
Розтане мiж хма-aр
Мiж дивних людей
О-о

Oh my dear Ukraine
Oh my dear Ukrai-aine
Oh my dear Ukrai-aine
My love

Ти не будеш сумна чи весела
Мiж весняних дощiв
Погляд твiй i розплетенi коси
Розтануть як дим
Мiж дивних людей
О-о

Oh my dear Ukraine
Oh my dear Ukraine
Oh my dear Ukraine
My love

А коли вже не буде нiкого
На бiлiй землi
Лиш тодi ти вiдчуєш тривогу
I навiть любов
До дивних людей
О-о

Oh my dear Ukraine
Oh my dear Ukraine
Oh my dear Ukraine
My love.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_99181'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_99181','Oh my dear Ukraine *','Dm        Dm/F*      Gm       A
Цей твiй сон не скiнчиться нiколи
Ти будеш одна-a
Твiй портрет завбiльшки з долоню
Розтане мiж хма-aр
Мiж дивних людей
О-о

Oh my dear Ukraine
Oh my dear Ukrai-aine
Oh my dear Ukrai-aine
My love

Ти не будеш сумна чи весела
Мiж весняних дощiв
Погляд твiй i розплетенi коси
Розтануть як дим
Мiж дивних людей
О-о

Oh my dear Ukraine
Oh my dear Ukraine
Oh my dear Ukraine
My love

А коли вже не буде нiкого
На бiлiй землi
Лиш тодi ти вiдчуєш тривогу
I навiть любов
До дивних людей
О-о

Oh my dear Ukraine
Oh my dear Ukraine
Oh my dear Ukraine
My love.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_99181_l1','pisniua_99181','YouTube','https://www.youtube.com/watch?v=G_kpCmtARVU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_99181_l2','pisniua_99181','YouTube','https://www.youtube.com/watch?v=H-A1oZnPA-M','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_99181_l3','pisniua_99181','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
