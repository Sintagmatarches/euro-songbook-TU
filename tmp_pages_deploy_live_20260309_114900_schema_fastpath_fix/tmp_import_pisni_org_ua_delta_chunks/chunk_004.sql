DELETE FROM song_links WHERE song_id = 'pisniua_4636';
DELETE FROM song_versions WHERE song_id = 'pisniua_4636';
DELETE FROM songs_fts WHERE song_id = 'pisniua_4636';
DELETE FROM songs WHERE id = 'pisniua_4636';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_4636','Голодні студенти','(Пісенька голодного студента). Музика: Тризубий Стас Слова: Тризубий Стас','uk','ukraine_1991',NULL,NULL,'Збірник пісень Студентського братства Львівської політехніки.- Львів, 2000.','Варіант, взятий із середовища Студентського братства Львівської політехніки','Am
Кожна худобинка крихітна
E
Хоче поїсти зрання.
E
Дуже корисно і вигідно
Am
Їжу приймати щодня.
Тут не існують якісь вихідні,
Людоньки, їжте, не будьте дурні.
Йой, Божечку милий, як хочеться їсти мені.

В мозок голодний ображений
Лізе усяка фігня.
Індик там ходить підсмажений,
Бродить печена свиня.
Тягнуться руки до тої свині,
І я засинаю в кошмарному сні.
О Божечку милий, як хочеться їсти мені.

Приспів:
Прийдуть часи —
І буде у мене кільце ковбаси.
Ковбаска не шкодить знанням.
Ам, мням, мням, мням, мням, мням, мням.

Я написав президентові,
Хай він мені відповість,
Як можна жити студентові,
Котрий вже місяць не їсть.
Я таких бачив лишень у кіні,
А він мене бачив у капцях в труні.
О Божечку милий, як хочеться їсти мені.

Я у кафе під серветкою
Сирник надкушений вкрав.
Він пахнув старою шкарпеткою,
Я його тиждень жував.
Потім я згадував його три дні
І аж захлинався у власній слині.
О Божечко милий, як хочеться їсти мені.

Приспів.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:suspilno-politychni'', ''cat:zhartivlyvi'', ''Бардівські пісні'', ''Суспільно-політичні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_4636'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_4636','Голодні студенти','Am
Кожна худобинка крихітна
E
Хоче поїсти зрання.
E
Дуже корисно і вигідно
Am
Їжу приймати щодня.
Тут не існують якісь вихідні,
Людоньки, їжте, не будьте дурні.
Йой, Божечку милий, як хочеться їсти мені.

В мозок голодний ображений
Лізе усяка фігня.
Індик там ходить підсмажений,
Бродить печена свиня.
Тягнуться руки до тої свині,
І я засинаю в кошмарному сні.
О Божечку милий, як хочеться їсти мені.

Приспів:
Прийдуть часи —
І буде у мене кільце ковбаси.
Ковбаска не шкодить знанням.
Ам, мням, мням, мням, мням, мням, мням.

Я написав президентові,
Хай він мені відповість,
Як можна жити студентові,
Котрий вже місяць не їсть.
Я таких бачив лишень у кіні,
А він мене бачив у капцях в труні.
О Божечку милий, як хочеться їсти мені.

Я у кафе під серветкою
Сирник надкушений вкрав.
Він пахнув старою шкарпеткою,
Я його тиждень жував.
Потім я згадував його три дні
І аж захлинався у власній слині.
О Божечко милий, як хочеться їсти мені.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4636_l1','pisniua_4636','YouTube','https://www.youtube.com/watch?v=FfnvoEX4vrc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_4636_l2','pisniua_4636','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_465236';
DELETE FROM song_versions WHERE song_id = 'pisniua_465236';
DELETE FROM songs_fts WHERE song_id = 'pisniua_465236';
DELETE FROM songs WHERE id = 'pisniua_465236';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_465236','Через поле широкеє','Музика: народна Слова: кант. Виконує: Бандурна Розмова, Григорій Гребініченко','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує хорова група Заслуженого народного ансамблю пісні і танцю України "Дарничанка". Художній керівник і диригент - Заслужений працівник культури України, професор КНУКіМ П. Андрійчук. Солісти: Заслужений працівник культури України - Григорій Гребініченко, В. Набок.','Через поле широкеє,
Та через море глибокеє,
Туди йшла пречистая,
Та пречистая, Божа мати.

Де Христа взяли,
На хрест розпняли,
Розтягли руки -
Прибивали.

Славімо Тебе,
Сине Божий,
А Твоя ласка |
Нам поможе.  | (2)','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_465236'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_465236','Через поле широкеє','Через поле широкеє,
Та через море глибокеє,
Туди йшла пречистая,
Та пречистая, Божа мати.

Де Христа взяли,
На хрест розпняли,
Розтягли руки -
Прибивали.

Славімо Тебе,
Сине Божий,
А Твоя ласка |
Нам поможе.  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_465236_l1','pisniua_465236','YouTube','https://www.youtube.com/watch?v=co4v1ngu0SY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_465236_l2','pisniua_465236','YouTube','https://www.youtube.com/watch?v=jTvq3LIR5BI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_465236_l3','pisniua_465236','YouTube','https://www.youtube.com/watch?v=GSDOEJeCqfg','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_465236_l4','pisniua_465236','YouTube','https://www.youtube.com/watch?v=EN5GRCsoa8A','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_471532';
DELETE FROM song_versions WHERE song_id = 'pisniua_471532';
DELETE FROM songs_fts WHERE song_id = 'pisniua_471532';
DELETE FROM songs WHERE id = 'pisniua_471532';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_471532','Наркотик','Музика: Ті що падають вгору Слова: Ольга Чіркова. Виконує: Ті що падають вгору','uk','ukraine_1991',NULL,NULL,'http://tpvg.org.ua/',NULL,'На забутих помилках
Ти шукаєш інший шлях,
Це не твій крок до зірок,
Це отруєний ковток.
І мить летить, як вічність
І ти вже сам не свій,
А потім біль і відчай:
"Чому я це зробив?"
Немає слів і сили
Залишити це все,
Але...

Приспів:
Скажи за раз собі -
"Наркотик" - це слово -
Скажи назавжди "ні".
Наркотик - хвороба -
Сильнішим стань в собі:
"Наркотик? Навіщо це мені?"

Запустити білу смерть
І чекати гарних снів,
Помирати кожну ніч,
І шукати довгих днів.
А мить летить, як вічність,
І ти зовсім не свій,
Твоє життя, як пісня,
В якій немає слів.
Чи цього ти хотів так?
Та знаєш сам, що ні,
Але...

Приспів.

А мить летить, як вічність,
І ти зовсім не свій,
Твоє життя, як пісня,
В якій немає слів.
Чи цього ти хотів так?
Та знаєш сам, що ні,
Але...

Приспів.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_471532'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_471532','Наркотик','На забутих помилках
Ти шукаєш інший шлях,
Це не твій крок до зірок,
Це отруєний ковток.
І мить летить, як вічність
І ти вже сам не свій,
А потім біль і відчай:
"Чому я це зробив?"
Немає слів і сили
Залишити це все,
Але...

Приспів:
Скажи за раз собі -
"Наркотик" - це слово -
Скажи назавжди "ні".
Наркотик - хвороба -
Сильнішим стань в собі:
"Наркотик? Навіщо це мені?"

Запустити білу смерть
І чекати гарних снів,
Помирати кожну ніч,
І шукати довгих днів.
А мить летить, як вічність,
І ти зовсім не свій,
Твоє життя, як пісня,
В якій немає слів.
Чи цього ти хотів так?
Та знаєш сам, що ні,
Але...

Приспів.

А мить летить, як вічність,
І ти зовсім не свій,
Твоє життя, як пісня,
В якій немає слів.
Чи цього ти хотів так?
Та знаєш сам, що ні,
Але...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_469889';
DELETE FROM song_versions WHERE song_id = 'pisniua_469889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_469889';
DELETE FROM songs WHERE id = 'pisniua_469889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_469889','Колискова','Музика: Лілія Остапенко Слова: Лілія Остапенко. Виконує: Лілія Остапенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Спи, моя кохана,
Спи, моя безсонна,
Моя зірка рання,
Моя люба доня.

Спи, красуня мила,
Ластівка крилата.
Знай, що твої крила -
Тато твій і мати.

Спи, ласкава крихітка,
Спи, веснянка лагідна,
Спи, яскрава вигадка,
Спи, солодка ягідка.

Вже дощами вулиця
Добре наніч вмилася.
Спи, нехай все збудеться,
Що тобі наснилося.

У твоє віконечко
Загляда калинонька.
Спи, маленьке сонечко,
Спи, моя дитинонька.

Хай тобі насниться
Білий цвіт акації,
Увісні ти принца
Стрінеш у палаці.

Спи, ласкава крихітка,
Спи, веснянка лагідна,
Спи, яскрава вигадка,
Спи, солодка ягідка.

Вже дощами вулиця
Добре наніч вмилася.
Спи, нехай все збудеться,
Що тобі наснилося.

Спи, ласкава крихітка,
Спи, веснянка лагідна,
Спи, яскрава вигадка,
Спи, солодка ягідка.

Вже дощами вулиця
Добре наніч вмилася.
Спи, нехай все збудеться,
Що тобі наснилося.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_469889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_469889','Колискова','Спи, моя кохана,
Спи, моя безсонна,
Моя зірка рання,
Моя люба доня.

Спи, красуня мила,
Ластівка крилата.
Знай, що твої крила -
Тато твій і мати.

Спи, ласкава крихітка,
Спи, веснянка лагідна,
Спи, яскрава вигадка,
Спи, солодка ягідка.

Вже дощами вулиця
Добре наніч вмилася.
Спи, нехай все збудеться,
Що тобі наснилося.

У твоє віконечко
Загляда калинонька.
Спи, маленьке сонечко,
Спи, моя дитинонька.

Хай тобі насниться
Білий цвіт акації,
Увісні ти принца
Стрінеш у палаці.

Спи, ласкава крихітка,
Спи, веснянка лагідна,
Спи, яскрава вигадка,
Спи, солодка ягідка.

Вже дощами вулиця
Добре наніч вмилася.
Спи, нехай все збудеться,
Що тобі наснилося.

Спи, ласкава крихітка,
Спи, веснянка лагідна,
Спи, яскрава вигадка,
Спи, солодка ягідка.

Вже дощами вулиця
Добре наніч вмилася.
Спи, нехай все збудеться,
Що тобі наснилося.');
DELETE FROM song_links WHERE song_id = 'pisniua_475287';
DELETE FROM song_versions WHERE song_id = 'pisniua_475287';
DELETE FROM songs_fts WHERE song_id = 'pisniua_475287';
DELETE FROM songs WHERE id = 'pisniua_475287';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_475287','Ой, баю, мій баю','Виконує: Росава','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ой, баю мій, баю,
Котка заспіваю...

Щоб дитятко спало,
Горенька не знало...

Щоб дитятко спало,
Здоровим зростало...

Щоб дитятко спало,
Щасливим зростало...

Ой, баю мій, баю,
Котка заспіваю...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_475287'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_475287','Ой, баю, мій баю','Ой, баю мій, баю,
Котка заспіваю...

Щоб дитятко спало,
Горенька не знало...

Щоб дитятко спало,
Здоровим зростало...

Щоб дитятко спало,
Щасливим зростало...

Ой, баю мій, баю,
Котка заспіваю...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_475287_l1','pisniua_475287','YouTube','https://www.youtube.com/watch?v=VpbUcbzwCQA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_475287_l2','pisniua_475287','YouTube','https://www.youtube.com/watch?v=_JUaWDOuPhI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_483931';
DELETE FROM song_versions WHERE song_id = 'pisniua_483931';
DELETE FROM songs_fts WHERE song_id = 'pisniua_483931';
DELETE FROM songs WHERE id = 'pisniua_483931';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_483931','Бистра вода','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Український народний співаник, Мюнхен, 1946 р.',NULL,'Бистра вода, бистра вода
Беріженьки зносить,
Молодий козак, молодий козак
Отамана просить.

Пусти ж мене, отамане,
Із поля до дому,
Бо заплакала, бо затужила
Дівчина за мною.

Пущу тебе, пущу тебе,
Але не самого,
Скажу осідлати, скажу осідлати
Коня вороного.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_483931'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_483931','Бистра вода','Бистра вода, бистра вода
Беріженьки зносить,
Молодий козак, молодий козак
Отамана просить.

Пусти ж мене, отамане,
Із поля до дому,
Бо заплакала, бо затужила
Дівчина за мною.

Пущу тебе, пущу тебе,
Але не самого,
Скажу осідлати, скажу осідлати
Коня вороного.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_483931_l1','pisniua_483931','YouTube','https://www.youtube.com/watch?v=qnPW7JzCN9s','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_483931_l2','pisniua_483931','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_488137';
DELETE FROM song_versions WHERE song_id = 'pisniua_488137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_488137';
DELETE FROM songs WHERE id = 'pisniua_488137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_488137','Бігла Дівонька рано по Воду','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Колядки і щедрівки. - К.: Музична Україна. - 1991. - 240 с.','Колядка Дівчині. Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','Бігла дівонька рано по воду.

Приспів: На Дунай!
На Дунай, Дівонько,
Рано по Воду вибігай!*

З оріховими коновочками.
А з золотими накривочками.
Десь ся зірвали буйнії вітри.
Звійнули єї з рясами вінець.
Побігла она до рибарчиків:
- Три рибарчики, три молодчики!
Ой закиньте ви шовковий невід,
Злапайте мені з рясами вінець.
Єдному буде золотий перстінь,
Другому буде з рясами вінець,
Третьому буду сама, молода,
Сама, молода, зарученая.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_488137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_488137','Бігла Дівонька рано по Воду','Бігла дівонька рано по воду.

Приспів: На Дунай!
На Дунай, Дівонько,
Рано по Воду вибігай!*

З оріховими коновочками.
А з золотими накривочками.
Десь ся зірвали буйнії вітри.
Звійнули єї з рясами вінець.
Побігла она до рибарчиків:
- Три рибарчики, три молодчики!
Ой закиньте ви шовковий невід,
Злапайте мені з рясами вінець.
Єдному буде золотий перстінь,
Другому буде з рясами вінець,
Третьому буду сама, молода,
Сама, молода, зарученая.');
DELETE FROM song_links WHERE song_id = 'pisniua_489931';
DELETE FROM song_versions WHERE song_id = 'pisniua_489931';
DELETE FROM songs_fts WHERE song_id = 'pisniua_489931';
DELETE FROM songs WHERE id = 'pisniua_489931';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_489931','На чужинi тяжко жити','Українська народна пісня. Виконує: Народний хор Україна','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'На чужині тяжко жити,
Мов той камінь підіймати,
Каминь здійму, відпочину,  | (2)
На чужини марно згину.     | (2)

Бо чужина - не родина
Плаче сердце, мов дитина,
Плаче воно-знає чого       | (2)
Нема правди, нi від кого.  | (2)

На родині сонце гріє,
На чужині вітер виє,
Вітер віє, траву хилить,   | (2)
За родину сердце болить.   | (2)

Ой чужино, ти чужино
Чого в тобі так студено,
Хоть ні вітри, ні морози,  | (2)
А все в очах гіркі сльози. | (2)','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_489931'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_489931','На чужинi тяжко жити','На чужині тяжко жити,
Мов той камінь підіймати,
Каминь здійму, відпочину,  | (2)
На чужини марно згину.     | (2)

Бо чужина - не родина
Плаче сердце, мов дитина,
Плаче воно-знає чого       | (2)
Нема правди, нi від кого.  | (2)

На родині сонце гріє,
На чужині вітер виє,
Вітер віє, траву хилить,   | (2)
За родину сердце болить.   | (2)

Ой чужино, ти чужино
Чого в тобі так студено,
Хоть ні вітри, ні морози,  | (2)
А все в очах гіркі сльози. | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_488930';
DELETE FROM song_versions WHERE song_id = 'pisniua_488930';
DELETE FROM songs_fts WHERE song_id = 'pisniua_488930';
DELETE FROM songs WHERE id = 'pisniua_488930';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_488930','Старий рік минає','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: ― Святі Водорщі) ―: Дівич-Вечір...... Зелені Свята () ― Царинні Містерії...... Астральні Жнива... Рокове Коло.','Старий рік минає,
Новий наступає.
Старий рік минає,   |
Новий наступає,     |
Новий наступає.     | (2)

Прощай, старий роче,
Ми тебе не хочем.
Старий рік минає,   |
Новий наступає,     |
Новий наступає.     | (2)

Ми хочем нового -
Спаса Рожденного.
Старий рік минає,   |
Новий наступає,     |
Новий наступає.     | (2)

А він буде кращим,
Принесе нам щастя.
Старий рік минає,   |
Новий наступає,     |
Новий наступає.     | (2)

І миру на світі,
Здоров''я всім дітям.
Старий рік минає,   |
Новий наступає,     |
Новий наступає.     | (2)','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_488930'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_488930','Старий рік минає','Старий рік минає,
Новий наступає.
Старий рік минає,   |
Новий наступає,     |
Новий наступає.     | (2)

Прощай, старий роче,
Ми тебе не хочем.
Старий рік минає,   |
Новий наступає,     |
Новий наступає.     | (2)

Ми хочем нового -
Спаса Рожденного.
Старий рік минає,   |
Новий наступає,     |
Новий наступає.     | (2)

А він буде кращим,
Принесе нам щастя.
Старий рік минає,   |
Новий наступає,     |
Новий наступає.     | (2)

І миру на світі,
Здоров''я всім дітям.
Старий рік минає,   |
Новий наступає,     |
Новий наступає.     | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_490889';
DELETE FROM song_versions WHERE song_id = 'pisniua_490889';
DELETE FROM songs_fts WHERE song_id = 'pisniua_490889';
DELETE FROM songs WHERE id = 'pisniua_490889';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_490889','Чумак вози обертає','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Чумак вози обертає,
Чумак вози обертає,
Сиві воли запрягає.

Сиві воли запрягає,
Сиві воли запрягає
Та в дорогу поганяє.

Та в дорогу поганяє,
Та в дорогу поганяє,
Жінку вдома покидає.

Ой, ти, мила, будь здорова,
Ой, ти, мила, будь здорова,
Рубай дрова до порога.

Соломою в печі палю,
Соломою в печі палю,
А горщиком воду ношу.

А горщиком воду ношу,
А горщиком воду ношу,
У сусіда солі прошу.

Сусідочки - голубочки,
Сусідочки - голубочки,
Дайте солі два дробочки.

Дайте солі два дробочки,
Дайте солі два дробочки,
Научайте свої дочки.

Щоб по ночах не ходили,
Щоб по ночах не ходили,
Щоб чумака не любили.

За чумаком добре жити,
За чумаком добре жити -
Він ні жати, ні косити.

Він ні жати, ні косити,
Він ні жати, ні косити,
Нічим борщу посолити.','[''pisni.org.ua'', ''cat:chumacki'', ''cat:socialno-pobutovi'', ''Чумацькі пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_490889'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_490889','Чумак вози обертає','Чумак вози обертає,
Чумак вози обертає,
Сиві воли запрягає.

Сиві воли запрягає,
Сиві воли запрягає
Та в дорогу поганяє.

Та в дорогу поганяє,
Та в дорогу поганяє,
Жінку вдома покидає.

Ой, ти, мила, будь здорова,
Ой, ти, мила, будь здорова,
Рубай дрова до порога.

Соломою в печі палю,
Соломою в печі палю,
А горщиком воду ношу.

А горщиком воду ношу,
А горщиком воду ношу,
У сусіда солі прошу.

Сусідочки - голубочки,
Сусідочки - голубочки,
Дайте солі два дробочки.

Дайте солі два дробочки,
Дайте солі два дробочки,
Научайте свої дочки.

Щоб по ночах не ходили,
Щоб по ночах не ходили,
Щоб чумака не любили.

За чумаком добре жити,
За чумаком добре жити -
Він ні жати, ні косити.

Він ні жати, ні косити,
Він ні жати, ні косити,
Нічим борщу посолити.');
DELETE FROM song_links WHERE song_id = 'pisniua_490939';
DELETE FROM song_versions WHERE song_id = 'pisniua_490939';
DELETE FROM songs_fts WHERE song_id = 'pisniua_490939';
DELETE FROM songs WHERE id = 'pisniua_490939';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_490939','Ой, наорали та насіяли','Українська народна пісня. Виконує: Народний хор Україна','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой, наорали та насіяли -
Нікому збирати.
Ой, поїхали та чумаченьки
В Молдову гуляти.

Ой, скриплять вози та бряжчать ярма,
Воли ремигають,
А попереду та чумаченьки
На скрипочку грають.

Ой, болять ручки та болять ніжки,
Пшениченьку жнучи,
Ой, як же ж мені та наскучило,
Миленького ждучи.

Ой, нема мого та миленького,
Нема моєй душки:
О, нема кому та постелити
Білої подушки.

Ой, нема мого та миленького,
Нема мого пана:
Ой, а вже ж моя та біла постіль
Порохом припала.','[''pisni.org.ua'', ''cat:chumacki'', ''cat:socialno-pobutovi'', ''Чумацькі пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_490939'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_490939','Ой, наорали та насіяли','Ой, наорали та насіяли -
Нікому збирати.
Ой, поїхали та чумаченьки
В Молдову гуляти.

Ой, скриплять вози та бряжчать ярма,
Воли ремигають,
А попереду та чумаченьки
На скрипочку грають.

Ой, болять ручки та болять ніжки,
Пшениченьку жнучи,
Ой, як же ж мені та наскучило,
Миленького ждучи.

Ой, нема мого та миленького,
Нема моєй душки:
О, нема кому та постелити
Білої подушки.

Ой, нема мого та миленького,
Нема мого пана:
Ой, а вже ж моя та біла постіль
Порохом припала.');
DELETE FROM song_links WHERE song_id = 'pisniua_494137';
DELETE FROM song_versions WHERE song_id = 'pisniua_494137';
DELETE FROM songs_fts WHERE song_id = 'pisniua_494137';
DELETE FROM songs WHERE id = 'pisniua_494137';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_494137','Тихая ніч','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Тихая ніч, дивная ніч,
Все дріма, лиш не спить
Благоговіє подружжя святе.
Дивного Сина послав Бог Отець,
Радістю серце горить!
Радістю серце горить!

Тихая ніч, дивная ніч,
Голос з неба звістив:
Тіштеся, нині Христос народивсь,
Мир і спасіння для всіх Він приніс,
Світло святе нам явив!
Світло святе нам явив!

Тихая ніч, дивная ніч,
В небо нас Бог позвав,
Хай же відкриються наші серця
І хай прославлять Його всі уста.
Він нам Спасителя дав!
Він нам Спасителя дав!','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_494137'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_494137','Тихая ніч','Тихая ніч, дивная ніч,
Все дріма, лиш не спить
Благоговіє подружжя святе.
Дивного Сина послав Бог Отець,
Радістю серце горить!
Радістю серце горить!

Тихая ніч, дивная ніч,
Голос з неба звістив:
Тіштеся, нині Христос народивсь,
Мир і спасіння для всіх Він приніс,
Світло святе нам явив!
Світло святе нам явив!

Тихая ніч, дивная ніч,
В небо нас Бог позвав,
Хай же відкриються наші серця
І хай прославлять Його всі уста.
Він нам Спасителя дав!
Він нам Спасителя дав!');
DELETE FROM song_links WHERE song_id = 'pisniua_493287';
DELETE FROM song_versions WHERE song_id = 'pisniua_493287';
DELETE FROM songs_fts WHERE song_id = 'pisniua_493287';
DELETE FROM songs WHERE id = 'pisniua_493287';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_493287','Сороміцькі коломийки','Українська народна пісня. Виконує: Віка Врадій','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Прийду прийду мій миленький,
Я скраю лягаю,
Коло дошки дам ті трошки,
Бо ті добре знаю.

Ой нікому не давали,
Но тому німому,
Бо німому добре дати -
Не скаже нікому.

Ані тата не вблагати,
Купив хоч би яни,
Та, як прийшов до домочку
Та й виліз на маму.

Ой, дівчино-дівчинонько,
Дівчино-зозулько,
Була бися не віддала,
Якби не мій вуйко.

Коломия не помия,
Коломия - місто,
Якби пуцька зуб не мала,
То би з''їла тісто.

Кажуть люди, кажуть люди,
Що тато не годен,
Тато мамі закладає
На дванайці годен.

Ой ніхто так не бідує,
Як жовняр юідує,
Веде коня за повода,
А тимво гальмує.

А в мазура в пєцу дзюра,
А на пєцу котки,
Мазур просе мазуриху,
Би му дала масла.

Ой, дівчєта-дівчатонька,
Давайтеся грати,
Бо холєра не гранені
Будемо вмирати.','[''pisni.org.ua'', ''cat:kolomyyky'', ''cat:zhartivlyvi'', ''Коломийки'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_493287'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_493287','Сороміцькі коломийки','Прийду прийду мій миленький,
Я скраю лягаю,
Коло дошки дам ті трошки,
Бо ті добре знаю.

Ой нікому не давали,
Но тому німому,
Бо німому добре дати -
Не скаже нікому.

Ані тата не вблагати,
Купив хоч би яни,
Та, як прийшов до домочку
Та й виліз на маму.

Ой, дівчино-дівчинонько,
Дівчино-зозулько,
Була бися не віддала,
Якби не мій вуйко.

Коломия не помия,
Коломия - місто,
Якби пуцька зуб не мала,
То би з''їла тісто.

Кажуть люди, кажуть люди,
Що тато не годен,
Тато мамі закладає
На дванайці годен.

Ой ніхто так не бідує,
Як жовняр юідує,
Веде коня за повода,
А тимво гальмує.

А в мазура в пєцу дзюра,
А на пєцу котки,
Мазур просе мазуриху,
Би му дала масла.

Ой, дівчєта-дівчатонька,
Давайтеся грати,
Бо холєра не гранені
Будемо вмирати.');
DELETE FROM song_links WHERE song_id = 'pisniua_492034';
DELETE FROM song_versions WHERE song_id = 'pisniua_492034';
DELETE FROM songs_fts WHERE song_id = 'pisniua_492034';
DELETE FROM songs WHERE id = 'pisniua_492034';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_492034','Вишенька-черешенька','Музика: Володимир Домшинський Слова: Вадим Крищенко. Виконує: Квартет "Гетьман", Василь Білоцерківський','uk','ukraine_1991',NULL,NULL,NULL,'Альбом Український бум -7','Де сміється лагідно і не мружить брів
Дівчину як ягідку раптом я зустрів,
Звабами достойними тішиться дівча,
Як мені устояти, з чого розпочать.

Приспів
Вишенька-черешенька, ягідка смачна,
Видно не тутешня ти, що ідеш одна,
Вишенька-черешенька в ранньому саду
Хоч і обережно я поруч теж піду.

Грає переливами день в ясній красі
Буть в житті щасливими хочемо ми всі,
Тож куди ти квапишся вишенько моя ?
Може більш не трапиться отакий як я.

Приспів','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_492034'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_492034','Вишенька-черешенька','Де сміється лагідно і не мружить брів
Дівчину як ягідку раптом я зустрів,
Звабами достойними тішиться дівча,
Як мені устояти, з чого розпочать.

Приспів
Вишенька-черешенька, ягідка смачна,
Видно не тутешня ти, що ідеш одна,
Вишенька-черешенька в ранньому саду
Хоч і обережно я поруч теж піду.

Грає переливами день в ясній красі
Буть в житті щасливими хочемо ми всі,
Тож куди ти квапишся вишенько моя ?
Може більш не трапиться отакий як я.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_492034_l1','pisniua_492034','YouTube','https://www.youtube.com/watch?v=DjkHRd4_bhA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_492034_l2','pisniua_492034','YouTube','https://www.youtube.com/watch?v=x_L83xMtp0Y','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_493134';
DELETE FROM song_versions WHERE song_id = 'pisniua_493134';
DELETE FROM songs_fts WHERE song_id = 'pisniua_493134';
DELETE FROM songs WHERE id = 'pisniua_493134';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_493134','Дивная новина','Українська народна пісня. Виконує: Дударик','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Дивная новина -
Нині Діва Сина
Породила в Вифлеємі,
Марія єдина.
Породила в Вифлеємі,
Марія єдина.

Не в царських палатах,
А поміж бидляти.
У пустині в вечір нині -
Це всім треба знати.
У пустині в вечір нині -
Це всім треба знати.

На руках тримає,
І йому співає.
Люлі, сину, спи, дитино,
Мати колихає.
Люлі, сину, спи, дитино,
Мати колихає','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_493134'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_493134','Дивная новина','Дивная новина -
Нині Діва Сина
Породила в Вифлеємі,
Марія єдина.
Породила в Вифлеємі,
Марія єдина.

Не в царських палатах,
А поміж бидляти.
У пустині в вечір нині -
Це всім треба знати.
У пустині в вечір нині -
Це всім треба знати.

На руках тримає,
І йому співає.
Люлі, сину, спи, дитино,
Мати колихає.
Люлі, сину, спи, дитино,
Мати колихає');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_493134_l1','pisniua_493134','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_495333';
DELETE FROM song_versions WHERE song_id = 'pisniua_495333';
DELETE FROM songs_fts WHERE song_id = 'pisniua_495333';
DELETE FROM songs WHERE id = 'pisniua_495333';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_495333','Колискова','Слова: Василь Гонтарський. Виконує: Вася Club','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ніч надворі, спи моє серденько.
Чуєш, дощик тупотить дрібненько?
Ти мій любий, ти моє бамбіно!
Колискову цю для свого сина
Кожну ніч я, кожну ніч я співав...
Кожну ніч я, кожну ніч я співав...

Сни далекі, різнокольорові,
Сни про мандри, про шляхи-дороги,
Янголятко з неба прилітає,
Губки пухлі посмішка торкає.
Кожну ніч я, кожну ніч видів то...
Кожну ніч я, кожну ніч видів то...

Ніч надворі, спи моє серденько.
Чуєш, дощик тупотить дрібненько?
Ти мій клаптик, кузочка маленька,
Моя бджілка, як і твоя ненька.
Бджілка люба, бджілка люба моя!
Бджілка люба, бджілка люба моя!','[''pisni.org.ua'', ''cat:kolyskovi'', ''cat:pro-ditey'', ''Колискові'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_495333'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_495333','Колискова','Ніч надворі, спи моє серденько.
Чуєш, дощик тупотить дрібненько?
Ти мій любий, ти моє бамбіно!
Колискову цю для свого сина
Кожну ніч я, кожну ніч я співав...
Кожну ніч я, кожну ніч я співав...

Сни далекі, різнокольорові,
Сни про мандри, про шляхи-дороги,
Янголятко з неба прилітає,
Губки пухлі посмішка торкає.
Кожну ніч я, кожну ніч видів то...
Кожну ніч я, кожну ніч видів то...

Ніч надворі, спи моє серденько.
Чуєш, дощик тупотить дрібненько?
Ти мій клаптик, кузочка маленька,
Моя бджілка, як і твоя ненька.
Бджілка люба, бджілка люба моя!
Бджілка люба, бджілка люба моя!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_495333_l1','pisniua_495333','YouTube','https://www.youtube.com/watch?v=9WuSxqf_JWM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_496636';
DELETE FROM song_versions WHERE song_id = 'pisniua_496636';
DELETE FROM songs_fts WHERE song_id = 'pisniua_496636';
DELETE FROM songs WHERE id = 'pisniua_496636';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_496636','Серед диких степів','Українська народна пісня. Виконує: Софія Федина','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис',NULL,'Серед диких степів, де простори ланів,
Там де вітер по полі гуляє,
Там в чужій стороні, без рідні, без сім''ї
Молодий партизан умирає.

Рідний край він любив і дівчину лишив,
І пішов з ворогом воювати,
Бо той ворог лихий рідний край, дорогий
Став вогнем і мечем руйнувати.

В потемнілих очах відбивається жаль,
Що умре молодим на чужині,
Що вітри і сніги заметуть його сліди,
І не буде його на Вкраїні.

Він не плакав за тим, що умре молодим,
Бо лиш вічне є небо над нами,
Йому жаль одного: що могилу його
Замете на чужині снігами.

Серед диких степів, де простори ланів,
Заросте лиш трава там бур''яна...
А хто міг би прийти і цвіток принести,
На могилу оту партизана.','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_496636'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_496636','Серед диких степів','Серед диких степів, де простори ланів,
Там де вітер по полі гуляє,
Там в чужій стороні, без рідні, без сім''ї
Молодий партизан умирає.

Рідний край він любив і дівчину лишив,
І пішов з ворогом воювати,
Бо той ворог лихий рідний край, дорогий
Став вогнем і мечем руйнувати.

В потемнілих очах відбивається жаль,
Що умре молодим на чужині,
Що вітри і сніги заметуть його сліди,
І не буде його на Вкраїні.

Він не плакав за тим, що умре молодим,
Бо лиш вічне є небо над нами,
Йому жаль одного: що могилу його
Замете на чужині снігами.

Серед диких степів, де простори ланів,
Заросте лиш трава там бур''яна...
А хто міг би прийти і цвіток принести,
На могилу оту партизана.');
DELETE FROM song_links WHERE song_id = 'pisniua_496583';
DELETE FROM song_versions WHERE song_id = 'pisniua_496583';
DELETE FROM songs_fts WHERE song_id = 'pisniua_496583';
DELETE FROM songs WHERE id = 'pisniua_496583';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_496583','Як я си заспівам','Українська народна пісня. Виконує: Софія Федина','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Як я си заспівам трьома голосами,
Як я си заспівам трьома голосами,
Єден піде верхом, єден піде верхом,
А два долинами.

Як я си заспівам, далеко мя чути,
Як я си заспівам, далеко мя чути,
Ходи ж, мій миленький,
Ходи ж, мій миленький, мам щось ти повісти.

Повіла бим тобі файну новиноньку,
Повіла бим тобі файну новиноньку,
Жеби си поглядав, жеби си поглядав
Іншу дівчиноньку.

Жеби си поглядав, бо я си вже знайшла,
Більше тя не буду оченькам пасла,
Шукай си іншої, шукай си іншої,
Коль я ти не мила.

Як я си заспівам трьома голосами,
Як я си заспівам трьома голосами,
Єден піде верхом, єден піде верхом,
А два долинами','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_496583'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_496583','Як я си заспівам','Як я си заспівам трьома голосами,
Як я си заспівам трьома голосами,
Єден піде верхом, єден піде верхом,
А два долинами.

Як я си заспівам, далеко мя чути,
Як я си заспівам, далеко мя чути,
Ходи ж, мій миленький,
Ходи ж, мій миленький, мам щось ти повісти.

Повіла бим тобі файну новиноньку,
Повіла бим тобі файну новиноньку,
Жеби си поглядав, жеби си поглядав
Іншу дівчиноньку.

Жеби си поглядав, бо я си вже знайшла,
Більше тя не буду оченькам пасла,
Шукай си іншої, шукай си іншої,
Коль я ти не мила.

Як я си заспівам трьома голосами,
Як я си заспівам трьома голосами,
Єден піде верхом, єден піде верхом,
А два долинами');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_496583_l1','pisniua_496583','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_498034';
DELETE FROM song_versions WHERE song_id = 'pisniua_498034';
DELETE FROM songs_fts WHERE song_id = 'pisniua_498034';
DELETE FROM songs WHERE id = 'pisniua_498034';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_498034','Ой у лузі березовім','Українська народна пісня. Виконує: Акорд','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис',NULL,'Ой у лузі березовім страшна битва,
Не одная стара мати сина ся позбула. | (2)

Як вмирав за рідну землю вояк молоденький,
Крикнув: "Слава Україні! Будь здорова, ненько!"

"Будь здорова, дівчинонько, і ти, рідна нене,
А ти, славна Україно, не забудь за мене!"

Устань, сину ріднесенький, із тої могили.
Ой рад би я звідси стати та й не маю сили.

Ой у лузі березовім страшна битва,
Не одная стара мати сина ся позбула...','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_498034'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_498034','Ой у лузі березовім','Ой у лузі березовім страшна битва,
Не одная стара мати сина ся позбула. | (2)

Як вмирав за рідну землю вояк молоденький,
Крикнув: "Слава Україні! Будь здорова, ненько!"

"Будь здорова, дівчинонько, і ти, рідна нене,
А ти, славна Україно, не забудь за мене!"

Устань, сину ріднесенький, із тої могили.
Ой рад би я звідси стати та й не маю сили.

Ой у лузі березовім страшна битва,
Не одная стара мати сина ся позбула...');
DELETE FROM song_links WHERE song_id = 'pisniua_496736';
DELETE FROM song_versions WHERE song_id = 'pisniua_496736';
DELETE FROM songs_fts WHERE song_id = 'pisniua_496736';
DELETE FROM songs WHERE id = 'pisniua_496736';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_496736','Посилала мене мати','Українська народна пісня. Виконує: Народний хор Україна','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Посилала мене мати,
Іди доню килим ткати,
Як пішла я ткати килим,      |
Та й зустрілася я з милим,   | (2)
Та й зустрілася я з милим.   |

Зупинилась на хвилинку,
Постояла вже годину,
Покохатись я не вспіла,      |
Як година пролетіла,         | (2)
Як година пролетіла.         |

Ой матусю, моя нене,
Не хватило ниток в мене,
А щоб гарний килим мати,     |
Я ще завтра піду ткати,      | (2)
Я ще завтра піду ткати.      |','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_496736'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_496736','Посилала мене мати','Посилала мене мати,
Іди доню килим ткати,
Як пішла я ткати килим,      |
Та й зустрілася я з милим,   | (2)
Та й зустрілася я з милим.   |

Зупинилась на хвилинку,
Постояла вже годину,
Покохатись я не вспіла,      |
Як година пролетіла,         | (2)
Як година пролетіла.         |

Ой матусю, моя нене,
Не хватило ниток в мене,
А щоб гарний килим мати,     |
Я ще завтра піду ткати,      | (2)
Я ще завтра піду ткати.      |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_496736_l1','pisniua_496736','YouTube','https://www.youtube.com/watch?v=jjaa9gPQdRk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_496736_l2','pisniua_496736','YouTube','https://www.youtube.com/watch?v=sdB5aSq3Ox8','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_5119343';
DELETE FROM song_versions WHERE song_id = 'pisniua_5119343';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5119343';
DELETE FROM songs WHERE id = 'pisniua_5119343';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5119343','Комп''ютери','Музика: Павло Гудімов Слова: Павло Гудімов. Виконує: Павло Гудімов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ми комп''ютери,
Ми комп''ютери...

Довго спати не лягаю,
В павутині все блукаю,
Ніч тремтить, всі USB зайняті.
Пальці тиснуть теплі кнопки.
Комп''ютери, гіга, мега, кілобайти,
Ба-ба-байти.

Приспів:
Туру-туру, туру-туру, туру-туру,
Ми комп''ютери.
Туру-туру, туру-туру, туру-туру,
Ми комп''ютери.

Ранок, вечір, день чи ніч, -
Час відносний, в тому річ,
Чуєш, нас не тягне на вулицю,
Ходять там звичайні люди,
Лю-лю-люди.

Приспів. (5)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5119343'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5119343','Комп''ютери','Ми комп''ютери,
Ми комп''ютери...

Довго спати не лягаю,
В павутині все блукаю,
Ніч тремтить, всі USB зайняті.
Пальці тиснуть теплі кнопки.
Комп''ютери, гіга, мега, кілобайти,
Ба-ба-байти.

Приспів:
Туру-туру, туру-туру, туру-туру,
Ми комп''ютери.
Туру-туру, туру-туру, туру-туру,
Ми комп''ютери.

Ранок, вечір, день чи ніч, -
Час відносний, в тому річ,
Чуєш, нас не тягне на вулицю,
Ходять там звичайні люди,
Лю-лю-люди.

Приспів. (5)');
DELETE FROM song_links WHERE song_id = 'pisniua_5124405';
DELETE FROM song_versions WHERE song_id = 'pisniua_5124405';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5124405';
DELETE FROM songs WHERE id = 'pisniua_5124405';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5124405','Ішли чумаки цілих три роки','Українська народна пісня','uk','ukraine_before_1917',NULL,'1904','Пісні з Волині, Музична Україна, Київ-1970','Чумацька рісня В примітці до книги сказано: Записав П. О. Козицький у с. Будераж Дубнівського пов., 1904-1905. "Золоті ключі", стор. 117','Ішли чумаки цілих три роки,
Та не знали чумаченьки жодної біди.

Заболіла чумакові вельми голова,
Ой допіро чумак знає, що то за біда.

Прийшов до його товариш його,
Узяв його за рученьку, жалує його.

"Товаришу-брате, не жалуй мене,
Візьми гроші із кишені та рятуй мене.

Як мало грошей, то бери воли,
Рятуй мене молодого в чужій стороні".

А тії воли розумні були:
Через бори, через гори додому прийшли.

Прийшли додому, стали на дворі:
Помер, помер наш хазяїн в чужій стороні.','[''pisni.org.ua'', ''cat:chumacki'', ''cat:socialno-pobutovi'', ''Чумацькі пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5124405'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5124405','Ішли чумаки цілих три роки','Ішли чумаки цілих три роки,
Та не знали чумаченьки жодної біди.

Заболіла чумакові вельми голова,
Ой допіро чумак знає, що то за біда.

Прийшов до його товариш його,
Узяв його за рученьку, жалує його.

"Товаришу-брате, не жалуй мене,
Візьми гроші із кишені та рятуй мене.

Як мало грошей, то бери воли,
Рятуй мене молодого в чужій стороні".

А тії воли розумні були:
Через бори, через гори додому прийшли.

Прийшли додому, стали на дворі:
Помер, помер наш хазяїн в чужій стороні.');
DELETE FROM song_links WHERE song_id = 'pisniua_515209';
DELETE FROM song_versions WHERE song_id = 'pisniua_515209';
DELETE FROM songs_fts WHERE song_id = 'pisniua_515209';
DELETE FROM songs WHERE id = 'pisniua_515209';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_515209','Дівчина-весна','Музика: Ніколо Слова: Юрій Рибчинський. Виконує: Наталія Бучинська','uk','ukraine_1991',NULL,NULL,'аудіо-CD - Наталія Бучинська. "Дівчина-весна". 2004','записано на слух з аудіо','Ой палає зірками нічка
і лунає спів,              | (2)
березневий спів.
А уранці грайлива річка
вийшла з берегів.          | (3)
Їй, нестримній, не до вподоби
музика сумна.              | (3)
Не шукайте в річці броду,
бо прийшла весна,          | (2)
дівчина-весна.

Приспів:
Дівчина, дівчина,
юна весна...
Звідки приходить -
ніхто не зна.
Звідки приходить -
ніхто не зна...
Дівчина, дівчина,
юна весна...

В небі місяць, неначе човен,
човен без весла.           | (3)
А на землю приходить знову
ніжна, чарівна             | (2)
дівчина-весна.
І танцює вона до ранку,
спокою не зна.             | (3)
І співає свою веснянку,
ніжна, чарівна             | (2)
дівчина-весна.

Приспів.

Ой палає веселка в небі,
і дзвенить струна.         | (3)
І кохає лебідку лебідь,
бо прийшла весна,          | (2)
дівчина-весна.

Приспів. (...)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:lirychni'', ''Пісні про красу природи'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_515209'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_515209','Дівчина-весна','Ой палає зірками нічка
і лунає спів,              | (2)
березневий спів.
А уранці грайлива річка
вийшла з берегів.          | (3)
Їй, нестримній, не до вподоби
музика сумна.              | (3)
Не шукайте в річці броду,
бо прийшла весна,          | (2)
дівчина-весна.

Приспів:
Дівчина, дівчина,
юна весна...
Звідки приходить -
ніхто не зна.
Звідки приходить -
ніхто не зна...
Дівчина, дівчина,
юна весна...

В небі місяць, неначе човен,
човен без весла.           | (3)
А на землю приходить знову
ніжна, чарівна             | (2)
дівчина-весна.
І танцює вона до ранку,
спокою не зна.             | (3)
І співає свою веснянку,
ніжна, чарівна             | (2)
дівчина-весна.

Приспів.

Ой палає веселка в небі,
і дзвенить струна.         | (3)
І кохає лебідку лебідь,
бо прийшла весна,          | (2)
дівчина-весна.

Приспів. (...)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_515209_l1','pisniua_515209','YouTube','https://www.youtube.com/watch?v=Y_5GaE1Xaqo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_515209_l2','pisniua_515209','YouTube','https://www.youtube.com/watch?v=r2hLu71QRW4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_517343';
DELETE FROM song_versions WHERE song_id = 'pisniua_517343';
DELETE FROM songs_fts WHERE song_id = 'pisniua_517343';
DELETE FROM songs WHERE id = 'pisniua_517343';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_517343','Було не любити','Музика: Брати Гадюкіни Слова: Брати Гадюкіни. Виконує: Брати Гадюкіни','uk','ukraine_1991',NULL,NULL,NULL,'Брати Гадюкіни','Я не видів більшого світла,
Як палали очі твої.
Я не відав більшого жару,
Та як уста твої наливні.
Я не бачив такого розмєру,
Та як перса твої молоді.
Ми зустрілись з тобою у парку,
А розстались з тобов навесні.

Приспів:
Було не любити -
А я полюбив,
Було не хотіти -
А я дуже хтів.
Було не робити
Тілесних гріхів
Я маю надію,
Ти ся вернеш домів

Наше ліжко стоїт неприбраним,
Цілу ніч я ся кручу у нім.
На білизні просвічуют плями,
З туги плачут жельози мої.
Цілий день я стою перед брамов,
І дивлюся далеко на шлях.
Ти прийдеш і улибку джоконди
Я побачу на твоїх устах.

Приспів. (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_517343'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_517343','Було не любити','Я не видів більшого світла,
Як палали очі твої.
Я не відав більшого жару,
Та як уста твої наливні.
Я не бачив такого розмєру,
Та як перса твої молоді.
Ми зустрілись з тобою у парку,
А розстались з тобов навесні.

Приспів:
Було не любити -
А я полюбив,
Було не хотіти -
А я дуже хтів.
Було не робити
Тілесних гріхів
Я маю надію,
Ти ся вернеш домів

Наше ліжко стоїт неприбраним,
Цілу ніч я ся кручу у нім.
На білизні просвічуют плями,
З туги плачут жельози мої.
Цілий день я стою перед брамов,
І дивлюся далеко на шлях.
Ти прийдеш і улибку джоконди
Я побачу на твоїх устах.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_517343_l1','pisniua_517343','YouTube','https://www.youtube.com/watch?v=6BxI93onXNM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_51747';
DELETE FROM song_versions WHERE song_id = 'pisniua_51747';
DELETE FROM songs_fts WHERE song_id = 'pisniua_51747';
DELETE FROM songs WHERE id = 'pisniua_51747';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_51747','Черемшина','Музика: Василь Михайлюк Слова: Микола Юрійчук. Виконує: Дмитро Гнатюк, Софія Ротару, Квітка Цісик, Таїсія Повалій, Жанна Боднарук, Ірина Сказіна, Зоряна Юдін, Ауріка Ротару','uk','ukraine_1991',NULL,NULL,'1. Пісні про кохання. Пісенник. Випуск 2. Упорядник Р. П. Сабадаш. - К.: Музична Україна, 1972. - 96 с.','Гарна та мелодійна українська пісня. Чудово звучить під гітару у вечірній час під спалахи вогню. Акордів до цієї пісні ніде не було і я вирішив підібрати. На мою думку вийшло досить непогано! Чудова пісня. Слава Україні та її культурі.','Вступ:
1)-10-10-------------10-10-----6--5--3--6--5----------3---1---0---5----
2)---------11---------------8----------------------------------------3-
3)--------------12-
Знов зозулі голос чути в лісі,
Ластівки гніздечко звили в стрісі.
А вівчар жене отару плаєм,
Тьохнув пісню соловей за гаєм
Приспів:
Всюди буйно квітне черемшина
Мов до шлюбу вбралася калина.
Dm
Вівчара в садочку,
Am
В тихому куточку,
Жде дівчина, жде.
Йшла вона в садок повз осокори,
Задивилась на високі гори,
Де з беріз спадають чисті роси,
Цвіт калини приколола в коси.
Приспів.
Вже за обрій сонечко сідає.
З полонини їй вівчар співає:
— Я прийду до тебе, як отару
З водопою зажену в кошару.
Приспів.
Ось і вечір, вівці біля броду
З Черемоша п''ють холодну воду,
У садочку вівчара стрічає
Дівчинонька, що його кохає.
Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:lirychni'', ''cat:romansy'', ''Пісні про красу природи'', ''Пісні про кохання, ліричні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_51747'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_51747','Черемшина','Вступ:
1)-10-10-------------10-10-----6--5--3--6--5----------3---1---0---5----
2)---------11---------------8----------------------------------------3-
3)--------------12-
Знов зозулі голос чути в лісі,
Ластівки гніздечко звили в стрісі.
А вівчар жене отару плаєм,
Тьохнув пісню соловей за гаєм
Приспів:
Всюди буйно квітне черемшина
Мов до шлюбу вбралася калина.
Dm
Вівчара в садочку,
Am
В тихому куточку,
Жде дівчина, жде.
Йшла вона в садок повз осокори,
Задивилась на високі гори,
Де з беріз спадають чисті роси,
Цвіт калини приколола в коси.
Приспів.
Вже за обрій сонечко сідає.
З полонини їй вівчар співає:
— Я прийду до тебе, як отару
З водопою зажену в кошару.
Приспів.
Ось і вечір, вівці біля броду
З Черемоша п''ють холодну воду,
У садочку вівчара стрічає
Дівчинонька, що його кохає.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_51747_l1','pisniua_51747','YouTube','https://www.youtube.com/watch?v=Uy9EPaIAE60','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_51747_l2','pisniua_51747','YouTube','https://www.youtube.com/watch?v=p1YngYjFHpM','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_51747_l3','pisniua_51747','YouTube','https://www.youtube.com/watch?v=EKmVV_YcqBU','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_51747_l4','pisniua_51747','YouTube','https://www.youtube.com/watch?v=-OyXIsWnPT4','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_51747_l5','pisniua_51747','YouTube','https://www.youtube.com/watch?v=016Wr7ZMhR4','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_51747_l6','pisniua_51747','YouTube','https://www.youtube.com/watch?v=wFkcGTCvD6Q','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_51747_l7','pisniua_51747','YouTube','https://www.youtube.com/watch?v=zVLMfmqXr00','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_51747_l8','pisniua_51747','YouTube','https://www.youtube.com/watch?v=6IpvwM3BGH8','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_51747_l9','pisniua_51747','YouTube','https://www.youtube.com/watch?v=XFsoWEA1dGQ','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_51747_l10','pisniua_51747','YouTube','https://www.youtube.com/watch?v=U-b3MbdzDAg','video',NULL,10);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_51747_l11','pisniua_51747','YouTube','https://www.youtube.com/watch?v=mcRMs40q6-8','video',NULL,11);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_51747_l12','pisniua_51747','YouTube','https://www.youtube.com/watch?v=MkK1AYqUn8M','video',NULL,12);
DELETE FROM song_links WHERE song_id = 'pisniua_5173900';
DELETE FROM song_versions WHERE song_id = 'pisniua_5173900';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5173900';
DELETE FROM songs WHERE id = 'pisniua_5173900';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5173900','Думи мої, думи мої','Музика: народна Слова: Євген Дук-Антоній. Виконує: Остап Кіндрачук','uk','ukraine_1991',NULL,NULL,'Остап Кіндрачук','Ще одна пісня в репертуарі Остапа Кіндрачука з "помаранчевого" циклу. Слова- вірш кримчанина Євгена Дук-Антонія "Та все ж буде наша правда!", опублікований у газеті "Дзвін Севастополя". Мелодія - та ж, що і до знаменитих "Дум" Тараса Шевченка.','Думи мої, думи мої,
Лихо ж мені з вами —
Не даєте, думи, спати
Темними ночами.

По підтинню сиротами
Як колись блукали,
Ніби є своя держава —
Радості немає.

Серед інших країн світу
Плентаємось ззаду,
Бо обрали не парламент,
А Верховну зраду.

Можновладці-казнокради,
"Злодії в законі"
Возять крадені мільярди
В банки закордонні.

Правлять в нашій Україні
Кіллери-бандити,
А гарант наш не спроможний
Людей захистити.

Скільки слів про незалежність,
Про добро держави,
За кулісами всі дбають
Лиш про власні справи.

Ще і кляті перевертні
Їм допомагають:
Обкрадають Україну,
Совісті не мають.

Ні совісті, ані честі
Відцурались роду,
Своїх прадідів великих,
Рідного народу.

Патріоти все чубляться
За керівні крісла
І не бачать, що імперська
Лавина нависла.

Простір наш інформаційний
Віддали чужинцям,
Телебачення єврейсько-
Московське по вінця.

Про яку там незалежність
Може іти мова,
Коли душать в Україні
Українське слово.

І нема цьому рятунку
Ні з боку держави,
Ні від власного народу —
Такі наші справи.

Заступися, святий Боже,
За нас українців,
Захисти від власть імущих
Гірших від ординців.

Бо ми, бач, самі не вмієм
Кращих вибирати,
Та й не хочем, бо вже звикли
В ярмі працювати.

Де ж ви новії Шевченки,
Петлюри, Бандери?
Хто поведе Україну
До нової ери?

Де козацька наша доблесть
Загуляла нині?
Де блукає наша слава,
Слава Україні?

Думи мої, думи мої,
Лихо ж мені з вами —
Не даєте, думи, спати
Темними ночами.','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5173900'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5173900','Думи мої, думи мої','Думи мої, думи мої,
Лихо ж мені з вами —
Не даєте, думи, спати
Темними ночами.

По підтинню сиротами
Як колись блукали,
Ніби є своя держава —
Радості немає.

Серед інших країн світу
Плентаємось ззаду,
Бо обрали не парламент,
А Верховну зраду.

Можновладці-казнокради,
"Злодії в законі"
Возять крадені мільярди
В банки закордонні.

Правлять в нашій Україні
Кіллери-бандити,
А гарант наш не спроможний
Людей захистити.

Скільки слів про незалежність,
Про добро держави,
За кулісами всі дбають
Лиш про власні справи.

Ще і кляті перевертні
Їм допомагають:
Обкрадають Україну,
Совісті не мають.

Ні совісті, ані честі
Відцурались роду,
Своїх прадідів великих,
Рідного народу.

Патріоти все чубляться
За керівні крісла
І не бачать, що імперська
Лавина нависла.

Простір наш інформаційний
Віддали чужинцям,
Телебачення єврейсько-
Московське по вінця.

Про яку там незалежність
Може іти мова,
Коли душать в Україні
Українське слово.

І нема цьому рятунку
Ні з боку держави,
Ні від власного народу —
Такі наші справи.

Заступися, святий Боже,
За нас українців,
Захисти від власть імущих
Гірших від ординців.

Бо ми, бач, самі не вмієм
Кращих вибирати,
Та й не хочем, бо вже звикли
В ярмі працювати.

Де ж ви новії Шевченки,
Петлюри, Бандери?
Хто поведе Україну
До нової ери?

Де козацька наша доблесть
Загуляла нині?
Де блукає наша слава,
Слава Україні?

Думи мої, думи мої,
Лихо ж мені з вами —
Не даєте, думи, спати
Темними ночами.');
DELETE FROM song_links WHERE song_id = 'pisniua_518242';
DELETE FROM song_versions WHERE song_id = 'pisniua_518242';
DELETE FROM songs_fts WHERE song_id = 'pisniua_518242';
DELETE FROM songs WHERE id = 'pisniua_518242';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_518242','Друг','(Друг 1, Друг **). Музика: Святослав Вакарчук Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'"Модель"','Підбір акордів: Ксьонз','Якби колись сказала ти мені стати твоїм човном,
Якби колись, то взяв би я тебе і на волю поплив.
Якби колись сказала ти мені стати тінню в ночі,
Якби колись сказала, я б не спав, за тобою ходив,
Тайною жив би я...

Приспів:

Буду завжди, ти так і знай, другом твоїм... Ну і нехай
Буду завжди, ти так і знай, другом твоїм...

II.
Якби колись сказала ти мені стати твоїм човном,
Якби колись, то взяв би я тебе і на волю поплив.
Якби тоді сказала ти мені стати тінню в ночі,
Якби тоді сказала, я б не спав, за тобою ходив,
Тайною жив би я...

Приспів.

III.
Якби колись дозволила мені стати твоїм вином
Якби колись дозволила мені стати тілом твоїм
Якби хоч раз сказала ти мені стати твоїм вином
Якби дозволила мені я б твою до країв душу споїв собою

Приспів.

Хочу тебе, ти так і знай, хоч би на мить... Ну і нехай','[''pisni.org.ua'', ''cat:druzhba'', ''cat:lirychni'', ''cat:nostalgia'', ''Пісні про дружбу'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_518242'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_518242','Друг','Якби колись сказала ти мені стати твоїм човном,
Якби колись, то взяв би я тебе і на волю поплив.
Якби колись сказала ти мені стати тінню в ночі,
Якби колись сказала, я б не спав, за тобою ходив,
Тайною жив би я...

Приспів:

Буду завжди, ти так і знай, другом твоїм... Ну і нехай
Буду завжди, ти так і знай, другом твоїм...

II.
Якби колись сказала ти мені стати твоїм човном,
Якби колись, то взяв би я тебе і на волю поплив.
Якби тоді сказала ти мені стати тінню в ночі,
Якби тоді сказала, я б не спав, за тобою ходив,
Тайною жив би я...

Приспів.

III.
Якби колись дозволила мені стати твоїм вином
Якби колись дозволила мені стати тілом твоїм
Якби хоч раз сказала ти мені стати твоїм вином
Якби дозволила мені я б твою до країв душу споїв собою

Приспів.

Хочу тебе, ти так і знай, хоч би на мить... Ну і нехай');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_518242_l1','pisniua_518242','YouTube','https://www.youtube.com/watch?v=Bb7eWnikF6g','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_518242_l2','pisniua_518242','YouTube','https://www.youtube.com/watch?v=Ct-wXcM83rE','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_5200601';
DELETE FROM song_versions WHERE song_id = 'pisniua_5200601';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5200601';
DELETE FROM songs WHERE id = 'pisniua_5200601';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5200601','Колискова','Виконує: ДахаБраха','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ай, баю кота, колибєлька золота,
А у дітятки мало і получше того...

Ай, баю кота і постелюшка мягка,
А у дітятки мало і помягче того...

Ай, баю кота і постелюшка бела,
А у дітятки мало і белее того...

The sіlver moons up іn the sky,
In the sky...
So close and so far, іt''s too hіgh.
The tіme to love and the tіme to cry,
Tіme to cry...
The tіme to lіve and the tіme to dіe,
Tіme to dіe...

Ой, баю же, баю, за роботу заплачу,
Дам корові молока, окраюшку пирога...

Let''s the lіght shіne іn the dark
Let''s the lіght shіne...

Ой, ти, котику, ти наш,
Чи вмієш ти Отче наш,
А я в попів й учився -
Отче наш навчився...

Ой, баю же, баю, за роботу заплачу,
Дам корові молока, окраюшку пирога...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5200601'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5200601','Колискова','Ай, баю кота, колибєлька золота,
А у дітятки мало і получше того...

Ай, баю кота і постелюшка мягка,
А у дітятки мало і помягче того...

Ай, баю кота і постелюшка бела,
А у дітятки мало і белее того...

The sіlver moons up іn the sky,
In the sky...
So close and so far, іt''s too hіgh.
The tіme to love and the tіme to cry,
Tіme to cry...
The tіme to lіve and the tіme to dіe,
Tіme to dіe...

Ой, баю же, баю, за роботу заплачу,
Дам корові молока, окраюшку пирога...

Let''s the lіght shіne іn the dark
Let''s the lіght shіne...

Ой, ти, котику, ти наш,
Чи вмієш ти Отче наш,
А я в попів й учився -
Отче наш навчився...

Ой, баю же, баю, за роботу заплачу,
Дам корові молока, окраюшку пирога...');
DELETE FROM song_links WHERE song_id = 'pisniua_5218900';
DELETE FROM song_versions WHERE song_id = 'pisniua_5218900';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5218900';
DELETE FROM songs WHERE id = 'pisniua_5218900';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5218900','Кобіта','Музика: Михайло Хома, Олег Турко Слова: Віктор Баранов. Виконує: DZIDZIO','uk','ukraine_1991',NULL,NULL,NULL,'Акорди підібрав: Drakor Підбір акордів: Drakor','Весна прийшла, всьо розцвітає,
Всьо набухає і встає,
А в мене радости не має
Мені кобіта не дає!
Ех зараза!..
Приспів:
Ех, кобіта, кобіта, кобіта
Am
Не дає!
Ех, кобіта, кобіта, кобіта
Am
Не дає!
Весна пройшла, настало літо,
Я загорів, як Фантомас,
Тепер мені люба кобіта,
Скільки захочу - стільки дасть!
Приспів.
Зима прийшла, сніг валит з неба,
І я від того забалдів,
Кобіти вже мені не треба,
Бо я вже всьо перехотів!
Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5218900'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5218900','Кобіта','Весна прийшла, всьо розцвітає,
Всьо набухає і встає,
А в мене радости не має
Мені кобіта не дає!
Ех зараза!..
Приспів:
Ех, кобіта, кобіта, кобіта
Am
Не дає!
Ех, кобіта, кобіта, кобіта
Am
Не дає!
Весна пройшла, настало літо,
Я загорів, як Фантомас,
Тепер мені люба кобіта,
Скільки захочу - стільки дасть!
Приспів.
Зима прийшла, сніг валит з неба,
І я від того забалдів,
Кобіти вже мені не треба,
Бо я вже всьо перехотів!
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_5218900_l1','pisniua_5218900','YouTube','https://www.youtube.com/watch?v=Jzj5h46l7pU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_5218900_l2','pisniua_5218900','YouTube','https://www.youtube.com/watch?v=OztpPbKSsGM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_5224040';
DELETE FROM song_versions WHERE song_id = 'pisniua_5224040';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5224040';
DELETE FROM songs WHERE id = 'pisniua_5224040';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5224040','Всі сплять','Музика: Оркестр Янки Козир Слова: Олександр Литовка. Виконує: Оркестр Янки Козир','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Місто заснуло, місто продуло
Вітрами щастя і надій,
Добра вітрами і дитячих мрій,
Всі сплять...
І зірок тисячі сердець
Співають нам молитву ночі!
Закривши очі, всі сплять...
Місто спить, все мовчить,
Лише вітри шляхи шукають
І в ніч зникають. Всі сплять...

Закохані й убогі,
Заплутані у павутиння снів,
Волаючи до неба і до Бога
Герої наших і минулих днів,
Всі сплять... Всі сплять...
Всі сплять...

Янголи і всі, хто має крила,
Старі, малі,
Красиві, злі і милі,
Всі сплять...
Берези,
Розпустивши коси,
Чекають роси
І ясного світанку,
Бо з вітрами підуть до танку.
Всі сплять...

Тільки я не сплю,
Бо розплутую павутиння,
Сплетене з моїх
Дитячих мрій,
Пройдено шляхи, і снів...
Всі сплять...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5224040'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5224040','Всі сплять','Місто заснуло, місто продуло
Вітрами щастя і надій,
Добра вітрами і дитячих мрій,
Всі сплять...
І зірок тисячі сердець
Співають нам молитву ночі!
Закривши очі, всі сплять...
Місто спить, все мовчить,
Лише вітри шляхи шукають
І в ніч зникають. Всі сплять...

Закохані й убогі,
Заплутані у павутиння снів,
Волаючи до неба і до Бога
Герої наших і минулих днів,
Всі сплять... Всі сплять...
Всі сплять...

Янголи і всі, хто має крила,
Старі, малі,
Красиві, злі і милі,
Всі сплять...
Берези,
Розпустивши коси,
Чекають роси
І ясного світанку,
Бо з вітрами підуть до танку.
Всі сплять...

Тільки я не сплю,
Бо розплутую павутиння,
Сплетене з моїх
Дитячих мрій,
Пройдено шляхи, і снів...
Всі сплять...');
DELETE FROM song_links WHERE song_id = 'pisniua_5235444';
DELETE FROM song_versions WHERE song_id = 'pisniua_5235444';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5235444';
DELETE FROM songs WHERE id = 'pisniua_5235444';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5235444','Чому так часто наречена плаче?','Музика: Михайло Березутський Слова: Віталій Войтко','uk','ukraine_1991',NULL,NULL,'Віталій Войтко',NULL,'Чому так часто наречена плаче?
Може на радість, може на біду.
Кленовий лист тремтить в вікні і бачить,
Твою вітром розплетену косу.

А завтра свято, музика і танці,
Сховає сльози білая фата.
Ти встанеш як ніколи рано - вранці,
Щоб ненька в косу вельон заплела.

Приспів:(2р.)
І ти найкраща в світі наречена,
Ніжна наче вранішня роса.
У вірності кохання заручена,
Що дали в подарунок небеса.

Не полишає серденько тривога,
У дзеркало так довго не дивись.
Закидана трояндами підлога,
Ти милому в коханні поклянись.

Обручкою з''єдналися дві долі,
Тепер у вас на двох одне життя.
Весь вечір танцюватимуть у колі,
Дві іскорки щасливого буття.

Приспів.(2р.)','[''pisni.org.ua'', ''cat:podilski'', ''Пісні з Поділля'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5235444'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5235444','Чому так часто наречена плаче?','Чому так часто наречена плаче?
Може на радість, може на біду.
Кленовий лист тремтить в вікні і бачить,
Твою вітром розплетену косу.

А завтра свято, музика і танці,
Сховає сльози білая фата.
Ти встанеш як ніколи рано - вранці,
Щоб ненька в косу вельон заплела.

Приспів:(2р.)
І ти найкраща в світі наречена,
Ніжна наче вранішня роса.
У вірності кохання заручена,
Що дали в подарунок небеса.

Не полишає серденько тривога,
У дзеркало так довго не дивись.
Закидана трояндами підлога,
Ти милому в коханні поклянись.

Обручкою з''єдналися дві долі,
Тепер у вас на двох одне життя.
Весь вечір танцюватимуть у колі,
Дві іскорки щасливого буття.

Приспів.(2р.)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_5235444_l1','pisniua_5235444','YouTube','https://www.youtube.com/watch?v=JPqdamE5RSo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_526003';
DELETE FROM song_versions WHERE song_id = 'pisniua_526003';
DELETE FROM songs_fts WHERE song_id = 'pisniua_526003';
DELETE FROM songs WHERE id = 'pisniua_526003';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_526003','Звйоздочка моя','Музика: Сергій Кузьминський Слова: Сергій Кузьминський. Виконує: Брати Гадюкіни','uk','ukraine_1991',NULL,NULL,'1. Аудіозапис фонограми 1989 року ("Рождєствєнскіє встрєчі" з А.Пугачовою) 2. Акорди: http://akkordi.ru/singer-46-0.html',NULL,'Ти почєму така довєрчіва,
Тебе я зовсім не пойму,
Ти поступила опромєтчіво,
Же так довєрілась йому.

Тебе просив по чєловєчєскі
Спитай мене, як  шось той-во,
Я від початку органічєскі
Не переварював його.

Приспів:
A
Звйоздочка моя,    |
G         |
Тілько для тєбя    |(2)
D            |
Заспіваю пісню цю  |
Задушевную...      |

D
Ой ріді-ріді-дай,
A
Ріді-ріді-дана,
D
Файна дівка була,
Як цвіток зав''яла.

Я думав же безосноватєльно
Було тебя подозрєвать,
Але була ти любознатєльна,
Хотіла всьо на світі знать.

Ти познавала емпірічєскі
Разлічні сторони життя,
На диво дуже прозаїческі
Закінчилась любов твоя.

Приспів.

Звйоздочка моя,
Тілько для тєбя
Заспіваю пісню цю
Задушевную...

В фіналі жуткої трагедії
Прийшла до мене вся в сльозах,
Я растєрявся на мгновєніє,
Але тримав себе в руках.

Сказав тобі я, моя дєвочка,
Чекав же ти сі повернеш,
Любов за гроші не купується, -
Я знав же скоро то поймеш.

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_526003'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_526003','Звйоздочка моя','Ти почєму така довєрчіва,
Тебе я зовсім не пойму,
Ти поступила опромєтчіво,
Же так довєрілась йому.

Тебе просив по чєловєчєскі
Спитай мене, як  шось той-во,
Я від початку органічєскі
Не переварював його.

Приспів:
A
Звйоздочка моя,    |
G         |
Тілько для тєбя    |(2)
D            |
Заспіваю пісню цю  |
Задушевную...      |

D
Ой ріді-ріді-дай,
A
Ріді-ріді-дана,
D
Файна дівка була,
Як цвіток зав''яла.

Я думав же безосноватєльно
Було тебя подозрєвать,
Але була ти любознатєльна,
Хотіла всьо на світі знать.

Ти познавала емпірічєскі
Разлічні сторони життя,
На диво дуже прозаїческі
Закінчилась любов твоя.

Приспів.

Звйоздочка моя,
Тілько для тєбя
Заспіваю пісню цю
Задушевную...

В фіналі жуткої трагедії
Прийшла до мене вся в сльозах,
Я растєрявся на мгновєніє,
Але тримав себе в руках.

Сказав тобі я, моя дєвочка,
Чекав же ти сі повернеш,
Любов за гроші не купується, -
Я знав же скоро то поймеш.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_526003_l1','pisniua_526003','YouTube','https://www.youtube.com/watch?v=3yuHtoMK7dE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_52601';
DELETE FROM song_versions WHERE song_id = 'pisniua_52601';
DELETE FROM songs_fts WHERE song_id = 'pisniua_52601';
DELETE FROM songs WHERE id = 'pisniua_52601';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_52601','Соколи','Виконує: Акорд','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Гей десь там де чорні води,
Сів на коня козак молодий.
Плаче молода дівчина,
Їде козак з України.

Приспів:
Гей, гей, гей, соколи,             |
Оминайте гори, ліси, доли.         |
Дзвінь, дзвінь, дзвінь, дзвіночку, | (2)
Степовий жайвороночку.             |

Жаль, жаль, за милою,
За рідною стороною.
Жаль, жаль, серце плаче,
Більше її не побачу.

Приспів.

Плаче, плаче, дівчинонька,
Люба моя ластівонька.
А я у чужому краю,
Серце спокою не має.

Приспів.

Меду ви нам наливайте,
Як загину - поховайте.
На далекій Україні,
Коло милої дівчини.

Гей, гей, гей, соколи,                |
Оминайте гори, ліси, доли.            |
Дзвінь, дзвінь, дзвінь, дзвіночку,    | (2)
Степовий жайвороночку.                |
(Мій степовий дзвінь, дзвінь, дзвінь) |

Гей, гей, гей, соколи,                |
Оминайте гори, ліси, доли.            |
Дзвінь, дзвінь, дзвінь, дзвіночку,    | (2)
Степовий жайвороночку.                |
(Мій степовий дзвінь, дзвінь, дзвінь) |','[''pisni.org.ua'', ''cat:lirychni'', ''cat:patriotic'', ''Пісні про кохання, ліричні'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_52601'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_52601','Соколи','Гей десь там де чорні води,
Сів на коня козак молодий.
Плаче молода дівчина,
Їде козак з України.

Приспів:
Гей, гей, гей, соколи,             |
Оминайте гори, ліси, доли.         |
Дзвінь, дзвінь, дзвінь, дзвіночку, | (2)
Степовий жайвороночку.             |

Жаль, жаль, за милою,
За рідною стороною.
Жаль, жаль, серце плаче,
Більше її не побачу.

Приспів.

Плаче, плаче, дівчинонька,
Люба моя ластівонька.
А я у чужому краю,
Серце спокою не має.

Приспів.

Меду ви нам наливайте,
Як загину - поховайте.
На далекій Україні,
Коло милої дівчини.

Гей, гей, гей, соколи,                |
Оминайте гори, ліси, доли.            |
Дзвінь, дзвінь, дзвінь, дзвіночку,    | (2)
Степовий жайвороночку.                |
(Мій степовий дзвінь, дзвінь, дзвінь) |

Гей, гей, гей, соколи,                |
Оминайте гори, ліси, доли.            |
Дзвінь, дзвінь, дзвінь, дзвіночку,    | (2)
Степовий жайвороночку.                |
(Мій степовий дзвінь, дзвінь, дзвінь) |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_52601_l1','pisniua_52601','YouTube','https://www.youtube.com/watch?v=iKBmj8vDpIA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_52601_l2','pisniua_52601','YouTube','https://www.youtube.com/watch?v=ml1ao_QHiMQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_52601_l3','pisniua_52601','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_52949';
DELETE FROM song_versions WHERE song_id = 'pisniua_52949';
DELETE FROM songs_fts WHERE song_id = 'pisniua_52949';
DELETE FROM songs WHERE id = 'pisniua_52949';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_52949','Пироги','Виконує: Віктор Пашник','uk','ukraine_1991',NULL,NULL,'Полум''я (часопис тернопільських пластунів). Співаник.',NULL,'Служив козак при війську,
Мав років 23,
Любив він дівчиноньку
І з сиром пироги.

Чи з сиром, чи без сиру,
Чи з житньої муки,
Чи теплі чи холодні,
А лиш би пироги.

Ішов він раз по стежі
Ранкової пори
І стрінув дівчиноньку,
Що несла пироги.

Дівча моє хороше,
Чи знаєш мої сни,
Що я тебе кохаю
І з сиром пироги.

Дівчина як почула,
Козацькі мрії-сни -
Відразу запросила
На свіжі пироги.

І як вони діждались
Щасливої пори -
Вона його цілує
А він їсть пироги.

Та раптом із-за лісу
Взялися вороги,
Козак із переляку
Сховався в бур''яни.

А то були мисливці -
Ніякі вороги,
Взяли собі дівчину
І з сиром пироги.

Козак гірко заплакав,
- О, люті вороги,
Візьміть собі дівчину -
Віддайте пироги.

Ой, чули, чули люди,
Ой, чули, чули ви,
Ніколи не міняйте
Любов на пироги.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_52949'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_52949','Пироги','Служив козак при війську,
Мав років 23,
Любив він дівчиноньку
І з сиром пироги.

Чи з сиром, чи без сиру,
Чи з житньої муки,
Чи теплі чи холодні,
А лиш би пироги.

Ішов він раз по стежі
Ранкової пори
І стрінув дівчиноньку,
Що несла пироги.

Дівча моє хороше,
Чи знаєш мої сни,
Що я тебе кохаю
І з сиром пироги.

Дівчина як почула,
Козацькі мрії-сни -
Відразу запросила
На свіжі пироги.

І як вони діждались
Щасливої пори -
Вона його цілує
А він їсть пироги.

Та раптом із-за лісу
Взялися вороги,
Козак із переляку
Сховався в бур''яни.

А то були мисливці -
Ніякі вороги,
Взяли собі дівчину
І з сиром пироги.

Козак гірко заплакав,
- О, люті вороги,
Візьміть собі дівчину -
Віддайте пироги.

Ой, чули, чули люди,
Ой, чули, чули ви,
Ніколи не міняйте
Любов на пироги.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_52949_l1','pisniua_52949','YouTube','https://www.youtube.com/watch?v=I6G_4ztm1gs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_52949_l2','pisniua_52949','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_5298747';
DELETE FROM song_versions WHERE song_id = 'pisniua_5298747';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5298747';
DELETE FROM songs WHERE id = 'pisniua_5298747';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5298747','Фаза-ноль','Музика: Ілля Найда Слова: Ілля Найда. Виконує: Ілля Найда','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Як всьо сі клято поміняло -
Холєра ясна світ здурів.
Яка ти була файна дівка,
Любив кавалір, ті хотів.
Стояла в річці ногами,
Ловила рибу руками,
А трилітровий слойчик
Тримала межи ногами.

Приспів:
До мене ти холодна,
До грошей ти голодна,
Робити ти не годна,
А я здурів, що я ся в тебе закохав.
Я в ліжку як електрик -
Не боюся розетки,
Знайду якусь конфетку, і фаза-ноль.

Я кажу йдем складати сіно,
Казало радіо гроза.
Я візьму вили, а ти граблі,
І не кажи, що вже слаба.
Від раня я накосився,
Соломи навозився,
А як прийду до хати, кажеш -
"Скотино, вже напився".

Приспів','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5298747'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5298747','Фаза-ноль','Як всьо сі клято поміняло -
Холєра ясна світ здурів.
Яка ти була файна дівка,
Любив кавалір, ті хотів.
Стояла в річці ногами,
Ловила рибу руками,
А трилітровий слойчик
Тримала межи ногами.

Приспів:
До мене ти холодна,
До грошей ти голодна,
Робити ти не годна,
А я здурів, що я ся в тебе закохав.
Я в ліжку як електрик -
Не боюся розетки,
Знайду якусь конфетку, і фаза-ноль.

Я кажу йдем складати сіно,
Казало радіо гроза.
Я візьму вили, а ти граблі,
І не кажи, що вже слаба.
Від раня я накосився,
Соломи навозився,
А як прийду до хати, кажеш -
"Скотино, вже напився".

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_5342807';
DELETE FROM song_versions WHERE song_id = 'pisniua_5342807';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5342807';
DELETE FROM songs WHERE id = 'pisniua_5342807';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5342807','У перетику ходила','Музика: Петро Процько Слова: Тарас Шевченко. Виконує: Олена Білоконь','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У перетику ходила по оріхи,
Мірошника полюбила для потіхи.
Мельник меле, шеретує,            |
Обернеться, поцілує для потіхи,   |
Ох, для потіхи!                   | (2)

У перетику ходила по опеньки,
Лимаренка полюбила молоденька.
Лимар кирку зашиває,              |
Мене горне, обнімає молоденьку,   |
Ох, молоденьку!                   | (2)

У перетику ходила я по дрова,
Та бондаря полюбила чорноброва.
Бондар відра набиває,             |
Мене горне, пригортає чорноброву, |
Ох, чорноброву!                   | (2)

Чи ти хочеш добре знати, моя мати,
Кого будеш попереду зятем звати?..
Усіх, усіх, моя мамо,             |
У неділеньку зятями будеш звати,  |
Ох, будеш звати!                  | (2)

Будеш звати, ох, будеш звати!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5342807'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5342807','У перетику ходила','У перетику ходила по оріхи,
Мірошника полюбила для потіхи.
Мельник меле, шеретує,            |
Обернеться, поцілує для потіхи,   |
Ох, для потіхи!                   | (2)

У перетику ходила по опеньки,
Лимаренка полюбила молоденька.
Лимар кирку зашиває,              |
Мене горне, обнімає молоденьку,   |
Ох, молоденьку!                   | (2)

У перетику ходила я по дрова,
Та бондаря полюбила чорноброва.
Бондар відра набиває,             |
Мене горне, пригортає чорноброву, |
Ох, чорноброву!                   | (2)

Чи ти хочеш добре знати, моя мати,
Кого будеш попереду зятем звати?..
Усіх, усіх, моя мамо,             |
У неділеньку зятями будеш звати,  |
Ох, будеш звати!                  | (2)

Будеш звати, ох, будеш звати!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_5342807_l1','pisniua_5342807','YouTube','https://www.youtube.com/watch?v=GsaeYJBbjyw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_5346444';
DELETE FROM song_versions WHERE song_id = 'pisniua_5346444';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5346444';
DELETE FROM songs WHERE id = 'pisniua_5346444';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5346444','Шеф','Виконує: Владислав Левицький, DZIDZIO','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я собі запланував,
Вихідні усі розписав по нотах.
Де ж ти?.. Де ж ти?.. Де ж ти, де?..
Ну, де ж ти?.. Де ж ти?.. Де ж ти, де?..
Я на них дуже чекав,
На ім''я своє бронював я столик,
Де ж ти?.. Де ж ти?.. Де ж ти, де?..
Ну, де ж ти?.. Де ж ти?.. Де ж ти, де,
Де моя зарплата?..

Приспів:
Шеф, не затримуй зарплату,         |
Шеф, не затримуй зарплату,         |
Нема, чим платити за хату          |
І дарувати квітки своїй коханій!.. | (2)

Вчора мав бути той день,
Коли ми співаєм пісень, гуляєм,
Де ж ти?.. Де ж ти?.. Де ж ти, де?..
Де ж ти?.. Де ж ти?.. Де ж ти, де?..
Плани всі шеф наламав,
Вихідні пройшли, а я так чекаю:
Де ж ти?.. Де ж ти?.. Де ж ти, де?..
Ну, де ж ти?.. Де ж ти?.. Де ж ти, де,
Де моя зарплата?..

Приспів. (2)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5346444'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5346444','Шеф','Я собі запланував,
Вихідні усі розписав по нотах.
Де ж ти?.. Де ж ти?.. Де ж ти, де?..
Ну, де ж ти?.. Де ж ти?.. Де ж ти, де?..
Я на них дуже чекав,
На ім''я своє бронював я столик,
Де ж ти?.. Де ж ти?.. Де ж ти, де?..
Ну, де ж ти?.. Де ж ти?.. Де ж ти, де,
Де моя зарплата?..

Приспів:
Шеф, не затримуй зарплату,         |
Шеф, не затримуй зарплату,         |
Нема, чим платити за хату          |
І дарувати квітки своїй коханій!.. | (2)

Вчора мав бути той день,
Коли ми співаєм пісень, гуляєм,
Де ж ти?.. Де ж ти?.. Де ж ти, де?..
Де ж ти?.. Де ж ти?.. Де ж ти, де?..
Плани всі шеф наламав,
Вихідні пройшли, а я так чекаю:
Де ж ти?.. Де ж ти?.. Де ж ти, де?..
Ну, де ж ти?.. Де ж ти?.. Де ж ти, де,
Де моя зарплата?..

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_5346444_l1','pisniua_5346444','YouTube','https://www.youtube.com/watch?v=uDgQJgEBDzc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_5361106';
DELETE FROM song_versions WHERE song_id = 'pisniua_5361106';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5361106';
DELETE FROM songs WHERE id = 'pisniua_5361106';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5361106','Будь зі мною','Музика: Павло Ротар Слова: Павло Ротар. Виконує: Grohotsky','uk','ukraine_1991',NULL,NULL,'аудіозапис','Підбір акордів: Іван2001 Підбір акордів: Іван2001','Am
Я люблю холодні пори року,
C
Коли лежиш біля мене збоку
Em
Поряд із розплетеною косою,
G
На дворі холодно, а нас є двоє...
Я обожнюю темні ночі,
Коли в твоєму теплі сховатись хочу,
Де не видно наші болі...
Будеш іти! - Забери мене з собою!
Приспів:
Будь зі мною тихою струною!.. |
Розкажи як плавала одна       |
І у шторм, як не була собою   |
І про зраду розкажи,          |
Після терпкого вина...        | (2)
Я люблю холодні води
У підніжжях чистих гір
І коли вся природа
Знає сенс цих почуттів...
Я люблю бистрі ріки,
Що несуть життя!..
Ти зі мною будь на віки,
Моє забуття...
Приспів. (2)
Будь зі мною!.. Будь зі мною!..
Будь зі мною!.. Будь зі мною!..
Am
1|----------------------------------
2|---------1---------------3--------
3|-----2-------2-------2-------2----
4|---2---2---2---2---2---2---2---2--
5|-0---------------0----------------
6|----------------------------------
C
1|----------------------------------
2|---------1---------------3--------
3|-----0-------0-------0-------0----
4|---2---2---2---2---2---2---2---2--
5|-3---------------3----------------
6|----------------------------------
Em
1|----------------------------------
2|---------0---------------3--------
3|-----0-------0-------0-------0----
4|---2---2---2---2---2---2---2---2--
5|----------------------------------
6|-0---------------0----------------
G
1|----------------------------------
2|---------3---------------3--------
3|-----0-------0-------0-------0----
4|---0---0---0---0---0---0---0---0--
5|----------------------------------
6|-3---------------3----------------
Чотири ноти перед приспівом:
1|---0------
2|-3---3-1--
3|----------
4|----------
5|----------
6|----------','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5361106'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5361106','Будь зі мною','Am
Я люблю холодні пори року,
C
Коли лежиш біля мене збоку
Em
Поряд із розплетеною косою,
G
На дворі холодно, а нас є двоє...
Я обожнюю темні ночі,
Коли в твоєму теплі сховатись хочу,
Де не видно наші болі...
Будеш іти! - Забери мене з собою!
Приспів:
Будь зі мною тихою струною!.. |
Розкажи як плавала одна       |
І у шторм, як не була собою   |
І про зраду розкажи,          |
Після терпкого вина...        | (2)
Я люблю холодні води
У підніжжях чистих гір
І коли вся природа
Знає сенс цих почуттів...
Я люблю бистрі ріки,
Що несуть життя!..
Ти зі мною будь на віки,
Моє забуття...
Приспів. (2)
Будь зі мною!.. Будь зі мною!..
Будь зі мною!.. Будь зі мною!..
Am
1|----------------------------------
2|---------1---------------3--------
3|-----2-------2-------2-------2----
4|---2---2---2---2---2---2---2---2--
5|-0---------------0----------------
6|----------------------------------
C
1|----------------------------------
2|---------1---------------3--------
3|-----0-------0-------0-------0----
4|---2---2---2---2---2---2---2---2--
5|-3---------------3----------------
6|----------------------------------
Em
1|----------------------------------
2|---------0---------------3--------
3|-----0-------0-------0-------0----
4|---2---2---2---2---2---2---2---2--
5|----------------------------------
6|-0---------------0----------------
G
1|----------------------------------
2|---------3---------------3--------
3|-----0-------0-------0-------0----
4|---0---0---0---0---0---0---0---0--
5|----------------------------------
6|-3---------------3----------------
Чотири ноти перед приспівом:
1|---0------
2|-3---3-1--
3|----------
4|----------
5|----------
6|----------');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_5361106_l1','pisniua_5361106','YouTube','https://www.youtube.com/watch?v=ukqYb74jzYk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_5366508';
DELETE FROM song_versions WHERE song_id = 'pisniua_5366508';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5366508';
DELETE FROM songs WHERE id = 'pisniua_5366508';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5366508','Синя смужка','Музика: ВІА Кіп''яток Слова: ВІА Кіп''яток. Виконує: ВІА Кіп''яток','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ти рішила туфлю собі зав''язати -
Я уперше в життю її зблизька побачив.
Посміхнулась мені, настрій підняла,
І не тільки його, шоби ти собі знала!

Приспів:
Синя смужка трусів на твоїй поясниці,
Жовта, чорна чи біла - всьоравно тобі личить!
Я за неї заб''ю, я її абажаю,
Як без неї я жив? Досі не знаю!
Синя смужка!..

Смайлик посеред літа, знак богині на спині,
Шось печерно-тваринне ожива в середині.
Чайка понад штанами, наші рідні Карпати,
Бачиш скільки всього про неї можна сказати?..

Приспів.

Ти у мене не перша і, мабуть, не остання,
І не знати з ким завтра прокинуся зрання.
Я забуду твої губи, груди і очі,
Та забути її я не зможу й не схочу!

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5366508'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5366508','Синя смужка','Ти рішила туфлю собі зав''язати -
Я уперше в життю її зблизька побачив.
Посміхнулась мені, настрій підняла,
І не тільки його, шоби ти собі знала!

Приспів:
Синя смужка трусів на твоїй поясниці,
Жовта, чорна чи біла - всьоравно тобі личить!
Я за неї заб''ю, я її абажаю,
Як без неї я жив? Досі не знаю!
Синя смужка!..

Смайлик посеред літа, знак богині на спині,
Шось печерно-тваринне ожива в середині.
Чайка понад штанами, наші рідні Карпати,
Бачиш скільки всього про неї можна сказати?..

Приспів.

Ти у мене не перша і, мабуть, не остання,
І не знати з ким завтра прокинуся зрання.
Я забуду твої губи, груди і очі,
Та забути її я не зможу й не схочу!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_5366508_l1','pisniua_5366508','YouTube','https://www.youtube.com/watch?v=GT74WlNDsg0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_5391106';
DELETE FROM song_versions WHERE song_id = 'pisniua_5391106';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5391106';
DELETE FROM songs WHERE id = 'pisniua_5391106';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5391106','Вітрила','Виконує: Анастасія Нестеренко, MELOVIN','uk','ukraine_1991',NULL,NULL,'аудіозапис','Підбір акордів: bohdanko (pisni.org.ua)','Вступ: Am
Am
Коли від всіх тікаю,
Турботи забуваю,
Навколо очі самоти.
Am
Тобі я прошепочу,
Що знов відчути хочу,
Як разом із тобою ми.
Приспів:
Am
Ти - мої вітрила,
F
Музика моя.
Dm
Невагомі крила
E
Підіймають в небо.
Am
Дві частини серця,
F
Разом ти і я.
Dm
І мене не буде,
E
І нема без тебе.
Am
Не знаю, але вірю.
Душа плекає мрію,
Що шлях до тебе приведе.
Am
Земля летить все швидше,
За мить твоє обличчя
Мій погляд в натовпі знайде.
Приспів.
Програш: Am F Dm E x2
Модуляція: F#
Приспів:
Hm
Ти - мої вітрила,
G
Музика моя.
Em
Невагомі крила
F#
Підіймають в небо.
Hm
Дві частини серця,
G
Разом ти і я.
Em
І мене не буде,
F#
І нема без тебе.
Фінал: Hm G Em F# Hm','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5391106'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5391106','Вітрила','Вступ: Am
Am
Коли від всіх тікаю,
Турботи забуваю,
Навколо очі самоти.
Am
Тобі я прошепочу,
Що знов відчути хочу,
Як разом із тобою ми.
Приспів:
Am
Ти - мої вітрила,
F
Музика моя.
Dm
Невагомі крила
E
Підіймають в небо.
Am
Дві частини серця,
F
Разом ти і я.
Dm
І мене не буде,
E
І нема без тебе.
Am
Не знаю, але вірю.
Душа плекає мрію,
Що шлях до тебе приведе.
Am
Земля летить все швидше,
За мить твоє обличчя
Мій погляд в натовпі знайде.
Приспів.
Програш: Am F Dm E x2
Модуляція: F#
Приспів:
Hm
Ти - мої вітрила,
G
Музика моя.
Em
Невагомі крила
F#
Підіймають в небо.
Hm
Дві частини серця,
G
Разом ти і я.
Em
І мене не буде,
F#
І нема без тебе.
Фінал: Hm G Em F# Hm');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_5391106_l1','pisniua_5391106','YouTube','https://www.youtube.com/watch?v=9aAEhgr_MFw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_5391106_l2','pisniua_5391106','YouTube','https://www.youtube.com/watch?v=AZGP7pRbFC4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_539545';
DELETE FROM song_versions WHERE song_id = 'pisniua_539545';
DELETE FROM songs_fts WHERE song_id = 'pisniua_539545';
DELETE FROM songs WHERE id = 'pisniua_539545';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_539545','Ой люлі, налетіли гулі','Слова: Микола Сингаївський','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ой люлі, ой люлі, налетіли гулі.
Сіли на воротяг в червоних чоботях.
Сіли та й раденькі,
що спить мій маленький,
що спить і не чує,
де гуля ночує.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_539545'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_539545','Ой люлі, налетіли гулі','Ой люлі, ой люлі, налетіли гулі.
Сіли на воротяг в червоних чоботях.
Сіли та й раденькі,
що спить мій маленький,
що спить і не чує,
де гуля ночує.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_539545_l1','pisniua_539545','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_540141';
DELETE FROM song_versions WHERE song_id = 'pisniua_540141';
DELETE FROM songs_fts WHERE song_id = 'pisniua_540141';
DELETE FROM songs WHERE id = 'pisniua_540141';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_540141','Мамина колискова','Слова: Олена Мацьків','uk','ukraine_1991',NULL,NULL,'журнал "Зернятко", 2005',NULL,'На небі місяць-паляничка,
В колисці спить мала сестричка.
Її гойдає тихо ненька,
Співає: "Люляй, спи, серденько".
Про роси чисті та прозорі,
Про долю гарну і веселу,
Про теплу батьківську оселю,
Про рідний край про Батьківщину,
Про милу серцю Україну.

Тихенько матінка співає,
Слова простенькі промовляє.
Прості слова, що світ тримають,
Із материнських уст лунають.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_540141'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_540141','Мамина колискова','На небі місяць-паляничка,
В колисці спить мала сестричка.
Її гойдає тихо ненька,
Співає: "Люляй, спи, серденько".
Про роси чисті та прозорі,
Про долю гарну і веселу,
Про теплу батьківську оселю,
Про рідний край про Батьківщину,
Про милу серцю Україну.

Тихенько матінка співає,
Слова простенькі промовляє.
Прості слова, що світ тримають,
Із материнських уст лунають.');
DELETE FROM song_links WHERE song_id = 'pisniua_5416040';
DELETE FROM song_versions WHERE song_id = 'pisniua_5416040';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5416040';
DELETE FROM songs WHERE id = 'pisniua_5416040';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5416040','Темна ніченька прийшла','Музика: народна Слова: Зоряна Лісевич','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Люлі-люлі, а-а-а,
Темна ніченька прийшла,
Принесла із далини
Кольорові гарні сни.
А-а-а-а-а-а-а-а-а-а...

Тихо блимають в імлі
З неба зіроньки малі.
Киця вклалася клубком
І дрімає під вікном.
А-а-а-а-а-а-а-а-а-а...

За порогом  світлячки
Світять срібні свічечки,
А на комині цвіркун
Скрипку взяв, торкнувся струн...
А-а-а-а-а-а-а-а-а-а...

Лиш не спить стара сова -
Снів казкових вартова.
Стереже солодкі сни,
Щоб наснилися вони...
А-а-а-а-а-а-а-а-а-а...

Люлі-люлі, а-а-а-а,
Гойда, гойда, гойда-да.
Колисаночка скрипить,
А дитятко міцно спить...
А-а-а-а-а-а-а-а-а-а...

Темна ніченька прийшла.
Люлі-люлі, а-а-а...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5416040'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5416040','Темна ніченька прийшла','Люлі-люлі, а-а-а,
Темна ніченька прийшла,
Принесла із далини
Кольорові гарні сни.
А-а-а-а-а-а-а-а-а-а...

Тихо блимають в імлі
З неба зіроньки малі.
Киця вклалася клубком
І дрімає під вікном.
А-а-а-а-а-а-а-а-а-а...

За порогом  світлячки
Світять срібні свічечки,
А на комині цвіркун
Скрипку взяв, торкнувся струн...
А-а-а-а-а-а-а-а-а-а...

Лиш не спить стара сова -
Снів казкових вартова.
Стереже солодкі сни,
Щоб наснилися вони...
А-а-а-а-а-а-а-а-а-а...

Люлі-люлі, а-а-а-а,
Гойда, гойда, гойда-да.
Колисаночка скрипить,
А дитятко міцно спить...
А-а-а-а-а-а-а-а-а-а...

Темна ніченька прийшла.
Люлі-люлі, а-а-а...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_5416040_l1','pisniua_5416040','YouTube','https://www.youtube.com/watch?v=6jqCC5fvUgo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_544003';
DELETE FROM song_versions WHERE song_id = 'pisniua_544003';
DELETE FROM songs_fts WHERE song_id = 'pisniua_544003';
DELETE FROM songs WHERE id = 'pisniua_544003';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_544003','Олені','Музика: Т.І.К. (Тік) Слова: Віктор Бронюк. Виконує: Т.І.К. (Тік)','uk','ukraine_1991',NULL,NULL,'http://tikmusic.com.ua/','Підбір акордів: Данило','Програш: Am  Dm  F E (2 рази)

Am
Я хочу втікти в дрімучі ліси,
Я втомився від міської, асфальтної краси.
Мене задовбали трамваї і колії.
Кондуктори , дебіли і профілакторії.
В мене на канапі лежали дівчата,
Вони хотіли кохання у мене забрати.
А на столі лежить старенький килимок,
Я проглядаю його крізь сигаретний димок.

Перехід
4: -2-0------
5: -----3-2-

Приспів.
Am
А там олені, олені не бриті і не голені
Дивні створіння в них з мозгів стирчать коріння.
Олені, олені не бриті і не голені, - олені .....

Перехід

Програш. (2)

Я вчора розмовляв з директором  Чукотки,
Він просив , а я налив йому в стаканчик водки.
Ми дивились в мікроскоп строєніє генів
Я дивився на дівчат, а думав про оленів.

Там дівчата, де олені красиві не голені
Дивні створіння без мозгів і без коріння.
Олені, олені не бриті і не голені, - олені','[''pisni.org.ua'', ''cat:lirychni'', ''cat:philosophic'', ''cat:zhartivlyvi'', ''Пісні про кохання, ліричні'', ''Філософські пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_544003'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_544003','Олені','Програш: Am  Dm  F E (2 рази)

Am
Я хочу втікти в дрімучі ліси,
Я втомився від міської, асфальтної краси.
Мене задовбали трамваї і колії.
Кондуктори , дебіли і профілакторії.
В мене на канапі лежали дівчата,
Вони хотіли кохання у мене забрати.
А на столі лежить старенький килимок,
Я проглядаю його крізь сигаретний димок.

Перехід
4: -2-0------
5: -----3-2-

Приспів.
Am
А там олені, олені не бриті і не голені
Дивні створіння в них з мозгів стирчать коріння.
Олені, олені не бриті і не голені, - олені .....

Перехід

Програш. (2)

Я вчора розмовляв з директором  Чукотки,
Він просив , а я налив йому в стаканчик водки.
Ми дивились в мікроскоп строєніє генів
Я дивився на дівчат, а думав про оленів.

Там дівчата, де олені красиві не голені
Дивні створіння без мозгів і без коріння.
Олені, олені не бриті і не голені, - олені');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_544003_l1','pisniua_544003','YouTube','https://www.youtube.com/watch?v=YYvAnNJTOzw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_544003_l2','pisniua_544003','YouTube','https://www.youtube.com/watch?v=qrO4oWwrzWk','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_54405';
DELETE FROM song_versions WHERE song_id = 'pisniua_54405';
DELETE FROM songs_fts WHERE song_id = 'pisniua_54405';
DELETE FROM songs WHERE id = 'pisniua_54405';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_54405','Чорнії брови, карії очі','(До карих очей). Слова: Костянтин Думитрашко. Виконує: Анатолій Солов''яненко, Іван Козловський','uk','ukraine_1991',NULL,NULL,NULL,'Відео: http://video.yandex.ru/users/mihalichasm/view/58/?cauthor=mihalichasm&cid=6','Чорнії брови, карії очі,
Темні як нічка, ясні як день,
Карії очі - чарі дівочі!
Де ви навчились зводить людей.

Чорнії брови, карії очі,
Страшно дивитись на вас під час.
Не будеш спати іноді ночі,
Все будеш думать, очі про вас.

Вас і немає, а ви мов тута.
Світите в душу, як дві зорі.
Чи в вас улита яка отрута,
Чи, може, й самі ви знахарі.

Чорнії брови - стрічки шовкові!
Все б тільки вами я любувавсь!
Карі очиці - очі тернові!
Все б я дивився тільки на вас.

Карії очі. Ви поробили,
Наворожили ви щось мені.
Та од пристріту, оченьки милі,
Тільки й поможете ви одні.    Фонограма-мінус (mp3)','[''pisni.org.ua'', ''cat:lirychni'', ''cat:romansy'', ''Пісні про кохання, ліричні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_54405'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_54405','Чорнії брови, карії очі','Чорнії брови, карії очі,
Темні як нічка, ясні як день,
Карії очі - чарі дівочі!
Де ви навчились зводить людей.

Чорнії брови, карії очі,
Страшно дивитись на вас під час.
Не будеш спати іноді ночі,
Все будеш думать, очі про вас.

Вас і немає, а ви мов тута.
Світите в душу, як дві зорі.
Чи в вас улита яка отрута,
Чи, може, й самі ви знахарі.

Чорнії брови - стрічки шовкові!
Все б тільки вами я любувавсь!
Карі очиці - очі тернові!
Все б я дивився тільки на вас.

Карії очі. Ви поробили,
Наворожили ви щось мені.
Та од пристріту, оченьки милі,
Тільки й поможете ви одні.    Фонограма-мінус (mp3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_54405_l1','pisniua_54405','YouTube','https://www.youtube.com/watch?v=5kZAJOrdRyQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_54405_l2','pisniua_54405','YouTube','https://www.youtube.com/watch?v=eZFSvV3UTXE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_54405_l3','pisniua_54405','YouTube','https://www.youtube.com/watch?v=xTDlY3Th-Y4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_54405_l4','pisniua_54405','YouTube','https://www.youtube.com/watch?v=3rOcpBMmM8Y','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_54405_l5','pisniua_54405','YouTube','https://www.youtube.com/watch?v=zBccJ6YacZo','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_54405_l6','pisniua_54405','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_5430106';
DELETE FROM song_versions WHERE song_id = 'pisniua_5430106';
DELETE FROM songs_fts WHERE song_id = 'pisniua_5430106';
DELETE FROM songs WHERE id = 'pisniua_5430106';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_5430106','Остання','Музика: Друга ріка Слова: Валерій Харчишин. Виконує: Друга ріка','uk','ukraine_1991',NULL,NULL,'аудіозапис','Валерій Харчишин: "Пісня про минуле, про першу гітару, про перший вірш, про перші фальшиві ноти, перше дихання у такт, вперше зіграну пісню..."','Пам''ятаєш, як ми купили собі гітару,
Хоч грати на ній ніхто ані ноти не вмів?..
Але всю ніч пили, раділи, кричали,
І по зорі я додому дійти не зміг...

Приспів:
А ти, як ніч, з очима неба,
Слухала нас, мені було треба
Дихати в такт, піймавши твої ковтки...
О, моя ніч, з очима неба,
Тиха мала, мені було треба
Чути, як ти ковтаєш мої думки...

І, що тепер? Де ті багряні вітрила?
Де мій перший вірш,
Що кричали ми хто як міг?..
Ох, як же тоді фальшиво, криво та щиро
Проскиглив тобі, вперше довів до сліз...

Приспів.

Остання!.. Остання!.. Остання!..
О, моя ніч, з очима неба,
Тиха мала, мені було треба
Чути, як ти ковтаєш мої думки...
Остання!.. Остання!.. Остання!..
О, моя ніч, з очима неба,
Тиха мала, мені було треба
Чути, як ти ковтаєш мої думки...','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_5430106'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_5430106','Остання','Пам''ятаєш, як ми купили собі гітару,
Хоч грати на ній ніхто ані ноти не вмів?..
Але всю ніч пили, раділи, кричали,
І по зорі я додому дійти не зміг...

Приспів:
А ти, як ніч, з очима неба,
Слухала нас, мені було треба
Дихати в такт, піймавши твої ковтки...
О, моя ніч, з очима неба,
Тиха мала, мені було треба
Чути, як ти ковтаєш мої думки...

І, що тепер? Де ті багряні вітрила?
Де мій перший вірш,
Що кричали ми хто як міг?..
Ох, як же тоді фальшиво, криво та щиро
Проскиглив тобі, вперше довів до сліз...

Приспів.

Остання!.. Остання!.. Остання!..
О, моя ніч, з очима неба,
Тиха мала, мені було треба
Чути, як ти ковтаєш мої думки...
Остання!.. Остання!.. Остання!..
О, моя ніч, з очима неба,
Тиха мала, мені було треба
Чути, як ти ковтаєш мої думки...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_5430106_l1','pisniua_5430106','YouTube','https://www.youtube.com/watch?v=Kc9AURZWv_s','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_550040';
DELETE FROM song_versions WHERE song_id = 'pisniua_550040';
DELETE FROM songs_fts WHERE song_id = 'pisniua_550040';
DELETE FROM songs WHERE id = 'pisniua_550040';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_550040','Їхали повстанці','(Про Тилю). Музика: народна Слова: Роман Туровський-Савчук','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Їхали повстанці
З лиману до дому
Підманули Тилю -
Забрали з собою.
Ой ти, Тильо,
Тильо молодая!
Підманули Тилю -
Забрали з собою.

Годі ж тобі, Тильо,
лапсердаки шити.
Краще, дівча, з нами
старий світ палити.
Ой ти, Тильо,
Тильо молодая!
Краще, дівча, з нами
старий світ палити.

Скаче в полі Тиля,
в шкіряній тужурці
рілля під копитом,
Маузер в кобурці.
Ой ти, Тильо,
Тильо молодая!
рілля під копитом,
Маузер в кобурці.

Віє чорний вітер
Темрява застила.
У тачанці Тиля
сина народила.
Ой ти, Тильо,
Тильо молодая!
У тачанці Тиля
сина народила.

Сина народила
Нестором назвала.
Пригорнув до себе
далі поскакала.
Ой ти, Тильо,
Тильо молодая!
Пригорнув до себе
за Прут поскакала...    Мелодія','[''pisni.org.ua'', ''cat:pivden'', ''Пісні з півдня України'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_550040'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_550040','Їхали повстанці','Їхали повстанці
З лиману до дому
Підманули Тилю -
Забрали з собою.
Ой ти, Тильо,
Тильо молодая!
Підманули Тилю -
Забрали з собою.

Годі ж тобі, Тильо,
лапсердаки шити.
Краще, дівча, з нами
старий світ палити.
Ой ти, Тильо,
Тильо молодая!
Краще, дівча, з нами
старий світ палити.

Скаче в полі Тиля,
в шкіряній тужурці
рілля під копитом,
Маузер в кобурці.
Ой ти, Тильо,
Тильо молодая!
рілля під копитом,
Маузер в кобурці.

Віє чорний вітер
Темрява застила.
У тачанці Тиля
сина народила.
Ой ти, Тильо,
Тильо молодая!
У тачанці Тиля
сина народила.

Сина народила
Нестором назвала.
Пригорнув до себе
далі поскакала.
Ой ти, Тильо,
Тильо молодая!
Пригорнув до себе
за Прут поскакала...    Мелодія');
DELETE FROM song_links WHERE song_id = 'pisniua_55302';
DELETE FROM song_versions WHERE song_id = 'pisniua_55302';
DELETE FROM songs_fts WHERE song_id = 'pisniua_55302';
DELETE FROM songs WHERE id = 'pisniua_55302';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_55302','Жовті стрічки','Виконує: Брати Гадюкіни','uk','ukraine_1991',NULL,NULL,'Співаник тернопільського туристичного клубу "Кристал"',NULL,'Жовте листя падає на землю,
І летять у вирій журавлі,
Серце жме від туги і печалі,
Важко сльози втримати мені.

Я ніколи мила не забуду,
Як з тобов стрічались біля річки
Ти казала: "Я любити буду".
І дала на пам''ять жовті стрічки.

Приспів:
С                                 Am
Жовті стрічки - символ розлуки і печалі,
Жовті стрічки - більше надії не маю,
Жовті стрічки - бачу тебе уві сні,
Жовті стрічки - ночі зігрійте мої.

Я поїхав у краї далекі,
Та стрічки з собою забирав,
В ясний день ховав їх в чемодані,
А вночі з собою в ліжко брав.

І тепер мені не треба мила
Тіла твого жадного до любови,
Хоч ти мене зовсім не любила,
Та стрічки тепер завжди зі мною.

Приспів. (2)

Осінь.
Пустий пляж.
Я йду вздовж кромки прибою
І шукаю на піску сліди твоїх босих ніг.
Та марно.
Вони давно змиті хвилями.
Замість них я бачу
Різні сухі морські рослини,
Напіврозложені трупи риб
І панцері крабів.
Це все символи нашого мертвого кохання.
Щось солене на моїх губах...
Що то?
Бризки прибою?
Ні.
Це мої сльози.
Мої гіркі і солені сльози.
Вони мішають говорить.
Все минає.
Все минає.
Не минає тільки любов...','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_55302'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_55302','Жовті стрічки','Жовте листя падає на землю,
І летять у вирій журавлі,
Серце жме від туги і печалі,
Важко сльози втримати мені.

Я ніколи мила не забуду,
Як з тобов стрічались біля річки
Ти казала: "Я любити буду".
І дала на пам''ять жовті стрічки.

Приспів:
С                                 Am
Жовті стрічки - символ розлуки і печалі,
Жовті стрічки - більше надії не маю,
Жовті стрічки - бачу тебе уві сні,
Жовті стрічки - ночі зігрійте мої.

Я поїхав у краї далекі,
Та стрічки з собою забирав,
В ясний день ховав їх в чемодані,
А вночі з собою в ліжко брав.

І тепер мені не треба мила
Тіла твого жадного до любови,
Хоч ти мене зовсім не любила,
Та стрічки тепер завжди зі мною.

Приспів. (2)

Осінь.
Пустий пляж.
Я йду вздовж кромки прибою
І шукаю на піску сліди твоїх босих ніг.
Та марно.
Вони давно змиті хвилями.
Замість них я бачу
Різні сухі морські рослини,
Напіврозложені трупи риб
І панцері крабів.
Це все символи нашого мертвого кохання.
Щось солене на моїх губах...
Що то?
Бризки прибою?
Ні.
Це мої сльози.
Мої гіркі і солені сльози.
Вони мішають говорить.
Все минає.
Все минає.
Не минає тільки любов...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_55302_l1','pisniua_55302','YouTube','https://www.youtube.com/watch?v=wL7wiuUrOOw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_55302_l2','pisniua_55302','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_588106';
DELETE FROM song_versions WHERE song_id = 'pisniua_588106';
DELETE FROM songs_fts WHERE song_id = 'pisniua_588106';
DELETE FROM songs WHERE id = 'pisniua_588106';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_588106','Ой у Саду Саду Саду Винограду','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Колядки і щедрівки. - К.: Музична Україна. - 1991. - 240 с.','Колядка Парубкові. Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','Ой у саду, саду, саду-винограду.

Приспів: Радуйся!
Радуйся, земле,
Син Божий народився!*

А у тому саду сивий коник грає.
А до того коня ніхто не приступить.
А тільки приступить молодий Іванко.
Іванко приступив, сіделечко наклав.
Сіделечко наклав, сам сів та й поїхав.
Сам сів та й поїхав аж до королівни.
Сидить королівна, дрібні листи пише.
Дрібні листи пише, важким духом дише.
- Ой здорова, дівко, дівко-королівно!
Ой чи будеш мені вірною жоною,
Вірною жоною, матінці слугою?','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:philosophic'', ''cat:vesilni'', ''Колядки'', ''Філософські пісні'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_588106'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_588106','Ой у Саду Саду Саду Винограду','Ой у саду, саду, саду-винограду.

Приспів: Радуйся!
Радуйся, земле,
Син Божий народився!*

А у тому саду сивий коник грає.
А до того коня ніхто не приступить.
А тільки приступить молодий Іванко.
Іванко приступив, сіделечко наклав.
Сіделечко наклав, сам сів та й поїхав.
Сам сів та й поїхав аж до королівни.
Сидить королівна, дрібні листи пише.
Дрібні листи пише, важким духом дише.
- Ой здорова, дівко, дівко-королівно!
Ой чи будеш мені вірною жоною,
Вірною жоною, матінці слугою?');
DELETE FROM song_links WHERE song_id = 'pisniua_588141';
DELETE FROM song_versions WHERE song_id = 'pisniua_588141';
DELETE FROM songs_fts WHERE song_id = 'pisniua_588141';
DELETE FROM songs WHERE id = 'pisniua_588141';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_588141','Жала Ганнуся Шовкову Траву','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Колядки і щедрівки. - К.: Музична Україна. - 1991. - 240 с. 2. Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Колядка Дівчині. Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда) ― Святий Збір (Трійця) ― Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло.','Жала Ганнуся Шовкову Траву

Приспів:
По Зорі
Гей по Зорі
По Місяцеві Ясному

Тай загубила Золотий Перстень
Кликала вона свого Батенька
Батенько прийшов Перстня не знайшов

Жала Ганнуся Шовкову Траву
Тай загубила Золотий Перстень
Кликала вона свою Матінку
Матінка прийшла Перстня не знайшла

Жала Ганнуся Шовкову Траву
Тай загубила Золотий Перстень
Кликала вона свого Милого
Шукай Миленький шукай Перстеня
Миленький прийшов Перстеня знайшов','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_588141'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_588141','Жала Ганнуся Шовкову Траву','Жала Ганнуся Шовкову Траву

Приспів:
По Зорі
Гей по Зорі
По Місяцеві Ясному

Тай загубила Золотий Перстень
Кликала вона свого Батенька
Батенько прийшов Перстня не знайшов

Жала Ганнуся Шовкову Траву
Тай загубила Золотий Перстень
Кликала вона свою Матінку
Матінка прийшла Перстня не знайшла

Жала Ганнуся Шовкову Траву
Тай загубила Золотий Перстень
Кликала вона свого Милого
Шукай Миленький шукай Перстеня
Миленький прийшов Перстеня знайшов');
DELETE FROM song_links WHERE song_id = 'pisniua_592949';
DELETE FROM song_versions WHERE song_id = 'pisniua_592949';
DELETE FROM songs_fts WHERE song_id = 'pisniua_592949';
DELETE FROM songs WHERE id = 'pisniua_592949';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_592949','Що то за предиво','Українська народна пісня. Виконує: Оксана Білозір','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Шо то за предиво? Шо за новина? -
То Діва Марія сина родила.
А, як вона породила,          |
Тоді його увиділа,            |
Пречиста Діва.                | (2)

А Йосип старушо над яслами стоїть,
Йсусові Христові оксамит стелить.
А Марія ще й співає,
До серденька пригортає
І Йсуса цілує.

Ой, ішли три царі з подарочками,
А за ними звізда з оболочками.
Вийшов Ірод та й питає
І до себе запрашає:
"Куди ви йдете?"

А царі минули Ірода лихого,
Хтіли поспішати, Бога повитати.
Царя Бога повитали             |
І з ним поклін дали у вертепі. | (2)

У вертепі, у вертепі','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''Церковні пісні'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_592949'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_592949','Що то за предиво','Шо то за предиво? Шо за новина? -
То Діва Марія сина родила.
А, як вона породила,          |
Тоді його увиділа,            |
Пречиста Діва.                | (2)

А Йосип старушо над яслами стоїть,
Йсусові Христові оксамит стелить.
А Марія ще й співає,
До серденька пригортає
І Йсуса цілує.

Ой, ішли три царі з подарочками,
А за ними звізда з оболочками.
Вийшов Ірод та й питає
І до себе запрашає:
"Куди ви йдете?"

А царі минули Ірода лихого,
Хтіли поспішати, Бога повитати.
Царя Бога повитали             |
І з ним поклін дали у вертепі. | (2)

У вертепі, у вертепі');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_592949_l1','pisniua_592949','YouTube','https://www.youtube.com/watch?v=6SSzKW7npR4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_592949_l2','pisniua_592949','YouTube','https://www.youtube.com/watch?v=CLl21So8zB0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_592949_l3','pisniua_592949','YouTube','https://www.youtube.com/watch?v=uZ1gTNW7Hc8','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_599508';
DELETE FROM song_versions WHERE song_id = 'pisniua_599508';
DELETE FROM songs_fts WHERE song_id = 'pisniua_599508';
DELETE FROM songs WHERE id = 'pisniua_599508';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_599508','Ой, на горі жита много','Українська народна пісня. Виконує: Народний хор Україна','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой на горі жита много
Йой, йой, йой, йой, йой!
Половина зеленого,
Гой-я, гой, гой-я,
Гой, гой-я, гой!

Ішли дівки його жати,
Йой, йой, йой, йой, йой!
Та забули серпи взяти,
Гой-я, гой, гой-я,
Гой, гой-я, гой!

Серпи взяли, хліб забули,
Йой, йой, йой, йой, йой!
Такі тій женці були,
Гой-я, гой, гой-я,
Гой, гой-я, гой!

Коли б його хлопці жали
Йой, йой, йой, йой, йой!
Вони б йому ради дали,
Гой-я, гой, гой-я,
Гой, гой-я, гой!','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_599508'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_599508','Ой, на горі жита много','Ой на горі жита много
Йой, йой, йой, йой, йой!
Половина зеленого,
Гой-я, гой, гой-я,
Гой, гой-я, гой!

Ішли дівки його жати,
Йой, йой, йой, йой, йой!
Та забули серпи взяти,
Гой-я, гой, гой-я,
Гой, гой-я, гой!

Серпи взяли, хліб забули,
Йой, йой, йой, йой, йой!
Такі тій женці були,
Гой-я, гой, гой-я,
Гой, гой-я, гой!

Коли б його хлопці жали
Йой, йой, йой, йой, йой!
Вони б йому ради дали,
Гой-я, гой, гой-я,
Гой, гой-я, гой!');
DELETE FROM song_links WHERE song_id = 'pisniua_610050';
DELETE FROM song_versions WHERE song_id = 'pisniua_610050';
DELETE FROM songs_fts WHERE song_id = 'pisniua_610050';
DELETE FROM songs WHERE id = 'pisniua_610050';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_610050','Ніч яка Господи, місячна, зоряна','(Ніч яка місячна). Музика: народна Слова: Михайло Старицький. Виконує: Анатолій Солов''яненко, Квітка Цісик, Борис Гмиря, Гурт Талісман, Григорій Гребініченко','uk','ukraine_1991',NULL,NULL,'1. "Жемчужины Украины", М.,2002;Изд."Современная музыка"; 2. Українські народні романси. Упорядкування передмова та примітки Л. Ященка. - К.: В-во АН УРСР, 1961. - 412 с. 3. Сто улюблених пісень. Упорядкування, вступна стаття І. І. Осташа. - К.: Музична Україна, 1992. - 240 с.','У народному варіанті пісні дві останні в''язки поезії М. Старицького не співають.','Ніч яка Господи, місячна зоряна,*
Am
Видно, хоч голки збирай,
Dm
Вийди, коханая, працею зморена,        |
Хоч на хвилиноньку в гай!              |
Сядем укупочці тут під калиною,
І над панами я пан!
Глянь, моя рибонько, - срібною хвилею  |
Стелиться в полі туман.                | (2)
Гай чарівний, ніби променем всипаний,
Чи загадався, чи спить:
Ген на стрункій та високій осичині     |
Листя пестливо тремтить.               | (2)
Небо глибоке засіяне зорями, —
Що то за Божа краса!
Перлами ясними попід тополями          |
Грає краплиста роса.                   | (2)
Ти не лякайся, що ніженьки босії**
Вмочиш в холодну росу:
Я тебе, вірная, аж до хатиноньки       |
Сам на руках однесу.                   | (2)
Ти не лякайся, що змерзнеш, лебедонько,
Тепло - ні вітру, ні хмар...
Я пригорну тебе до свого серденька,    |
А воно палке, як жар.                  | (2)
Ти не лякайся, що можуть підслухати
Тиху розмову твою,
Нічка поклала всіх, соном окутала,     |
Ані шелесне в гаю.                     | (2)
Сплять вороги твої знуджені працею,
Нас не сполоха їх сміх.
Чи ж нам обкраденим долею нашею        |
Й хвиля кохання за гріх?               | (2)
Відміни (народний варіант):
*  Ніч яка місячна, ясная, зоряна
** Ти не лякайся, що ніженьки білії','[''pisni.org.ua'', ''cat:dances'', ''cat:krasa-pryrody'', ''cat:lirychni'', ''cat:waltzes'', ''Пісні до танцю'', ''Пісні про красу природи'', ''Пісні про кохання, ліричні'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_610050'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_610050','Ніч яка Господи, місячна, зоряна','Ніч яка Господи, місячна зоряна,*
Am
Видно, хоч голки збирай,
Dm
Вийди, коханая, працею зморена,        |
Хоч на хвилиноньку в гай!              |
Сядем укупочці тут під калиною,
І над панами я пан!
Глянь, моя рибонько, - срібною хвилею  |
Стелиться в полі туман.                | (2)
Гай чарівний, ніби променем всипаний,
Чи загадався, чи спить:
Ген на стрункій та високій осичині     |
Листя пестливо тремтить.               | (2)
Небо глибоке засіяне зорями, —
Що то за Божа краса!
Перлами ясними попід тополями          |
Грає краплиста роса.                   | (2)
Ти не лякайся, що ніженьки босії**
Вмочиш в холодну росу:
Я тебе, вірная, аж до хатиноньки       |
Сам на руках однесу.                   | (2)
Ти не лякайся, що змерзнеш, лебедонько,
Тепло - ні вітру, ні хмар...
Я пригорну тебе до свого серденька,    |
А воно палке, як жар.                  | (2)
Ти не лякайся, що можуть підслухати
Тиху розмову твою,
Нічка поклала всіх, соном окутала,     |
Ані шелесне в гаю.                     | (2)
Сплять вороги твої знуджені працею,
Нас не сполоха їх сміх.
Чи ж нам обкраденим долею нашею        |
Й хвиля кохання за гріх?               | (2)
Відміни (народний варіант):
*  Ніч яка місячна, ясная, зоряна
** Ти не лякайся, що ніженьки білії');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l1','pisniua_610050','YouTube','https://www.youtube.com/watch?v=W7a73dytoow','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l2','pisniua_610050','YouTube','https://www.youtube.com/watch?v=J1vo6cw55Uk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l3','pisniua_610050','YouTube','https://www.youtube.com/watch?v=bp3d6339Qus','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l4','pisniua_610050','YouTube','https://www.youtube.com/watch?v=lAYqEty8Gtk','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l5','pisniua_610050','YouTube','https://www.youtube.com/watch?v=eKkQOd-K-0k','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l6','pisniua_610050','YouTube','https://www.youtube.com/watch?v=nkDFrS0FHoM','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l7','pisniua_610050','YouTube','https://www.youtube.com/watch?v=Sh33oLZLXcc','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l8','pisniua_610050','YouTube','https://www.youtube.com/watch?v=FnT2cVd38po','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l9','pisniua_610050','YouTube','https://www.youtube.com/watch?v=vBm2Z8OWs7o','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l10','pisniua_610050','YouTube','https://www.youtube.com/watch?v=vOBoJ3zjmOc','video',NULL,10);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l11','pisniua_610050','YouTube','https://www.youtube.com/watch?v=6GWoGRtuOiw','video',NULL,11);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l12','pisniua_610050','YouTube','https://www.youtube.com/watch?v=7KEVDfab1MA','video',NULL,12);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l13','pisniua_610050','YouTube','https://www.youtube.com/watch?v=ih4BmVEroHM','video',NULL,13);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l14','pisniua_610050','YouTube','https://www.youtube.com/watch?v=po78Z3i1lq0','video',NULL,14);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l15','pisniua_610050','YouTube','https://www.youtube.com/watch?v=kQFs7YAGH_Q','video',NULL,15);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l16','pisniua_610050','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,16);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_610050_l17','pisniua_610050','http://guitarshilin.ru/index53b.htm','http://guitarshilin.ru/index53b.htm','external',NULL,17);
DELETE FROM song_links WHERE song_id = 'pisniua_6103050';
DELETE FROM song_versions WHERE song_id = 'pisniua_6103050';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6103050';
DELETE FROM songs WHERE id = 'pisniua_6103050';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6103050','Варенички','Музика: Олексій Семенов Слова: Вадим Крищенко. Виконує: Раїса Кириченко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вареники, ліпеники ніби річка хитра,
Посміхається лукаво на столі макітра,
А вареничків чимало з вишнями і сиром-
Їжте мамо, їжте тату набирайтесь сили.

Приспів:
Ой варенички кручені, страва незвичайна,
Для обіду, для вечері і для чарування.

Вареники, варенички, тай ще варениці,
Як побачать усміхнуться вірно у світлиці,
Чом ти милий — чорнобривий заглядаєш в очі?
Сама бачу вареничків, вареничків хочеш.

Приспів.

Мовить милий із порогу запал у коханні -
Дай вареничків голубко у густій сметані,
Не по три , не по чотири йому подавала,
Вареничками у світлиці його чарувала.

Приспів.

У кінці:
Ой варенички полтавські страва незвичайна,
Для обіду для вечері і для чарування.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6103050'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6103050','Варенички','Вареники, ліпеники ніби річка хитра,
Посміхається лукаво на столі макітра,
А вареничків чимало з вишнями і сиром-
Їжте мамо, їжте тату набирайтесь сили.

Приспів:
Ой варенички кручені, страва незвичайна,
Для обіду, для вечері і для чарування.

Вареники, варенички, тай ще варениці,
Як побачать усміхнуться вірно у світлиці,
Чом ти милий — чорнобривий заглядаєш в очі?
Сама бачу вареничків, вареничків хочеш.

Приспів.

Мовить милий із порогу запал у коханні -
Дай вареничків голубко у густій сметані,
Не по три , не по чотири йому подавала,
Вареничками у світлиці його чарувала.

Приспів.

У кінці:
Ой варенички полтавські страва незвичайна,
Для обіду для вечері і для чарування.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6103050_l1','pisniua_6103050','YouTube','https://www.youtube.com/watch?v=2wVXXkYUdbY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6106848';
DELETE FROM song_versions WHERE song_id = 'pisniua_6106848';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6106848';
DELETE FROM songs WHERE id = 'pisniua_6106848';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6106848','КітПес',NULL,'uk','ukraine_1991',NULL,NULL,'http://www.tereveni.org.ua',NULL,'Одного разу, невідомо коли
На світі з''явився цей малий.
Схожий він був на кота і на пса,
Усі дивувались, усі посміхались.

Приспів:
КітПес, КітПес!
Єдиний на світі є такий КітПес!

З того разу сум та журба
З міста тікали, а з ними нудьга.
Все місто КітПес підняв догори,
Усі дивувались, усі посміхались.

Приспів. (2)','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:zhartivlyvi'', ''Дитячі пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6106848'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6106848','КітПес','Одного разу, невідомо коли
На світі з''явився цей малий.
Схожий він був на кота і на пса,
Усі дивувались, усі посміхались.

Приспів:
КітПес, КітПес!
Єдиний на світі є такий КітПес!

З того разу сум та журба
З міста тікали, а з ними нудьга.
Все місто КітПес підняв догори,
Усі дивувались, усі посміхались.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_6118972';
DELETE FROM song_versions WHERE song_id = 'pisniua_6118972';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6118972';
DELETE FROM songs WHERE id = 'pisniua_6118972';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6118972','Блакитне весілля','Музика: Левко Дурко Слова: Левко Дурко. Виконує: Левко Дурко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Тато й мамо, рихтуйте весілля,
Ріжте кури й гуси, кроликів, теля,
Кличте цьоцю й вуйка, сестрів і братів,
Бо я невідкладно женитися схотів.

Приспів:
Ой, да-да, ой, да-да,
Гарна в мене молода,
Ой, ду-ду, ой, ду-ду,
Я женитися буду.

Це було місяць тому, до лазні я пішов,
І наречену свою негадано знайшов,
І хлюпала водичка на ніжний його стан,
Як звати тебе милий? - шепоче він - Степан.

Приспів.

Ми тиждень зустрічались, блакитні були дні, -
Тебе я покохала - признався він мені,
Привів я наречену, оглядини зробив,
Побачив Стьопу тато і мало мі не вбив.
Нема благословення, весілля теж нема,
Розстались ми з Степаном, історія сумна,
А вчора знову в лазні пізнав Валєру я,
Будем просити тата, хай зробить весілля.

Приспів. (4)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6118972'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6118972','Блакитне весілля','Тато й мамо, рихтуйте весілля,
Ріжте кури й гуси, кроликів, теля,
Кличте цьоцю й вуйка, сестрів і братів,
Бо я невідкладно женитися схотів.

Приспів:
Ой, да-да, ой, да-да,
Гарна в мене молода,
Ой, ду-ду, ой, ду-ду,
Я женитися буду.

Це було місяць тому, до лазні я пішов,
І наречену свою негадано знайшов,
І хлюпала водичка на ніжний його стан,
Як звати тебе милий? - шепоче він - Степан.

Приспів.

Ми тиждень зустрічались, блакитні були дні, -
Тебе я покохала - признався він мені,
Привів я наречену, оглядини зробив,
Побачив Стьопу тато і мало мі не вбив.
Нема благословення, весілля теж нема,
Розстались ми з Степаном, історія сумна,
А вчора знову в лазні пізнав Валєру я,
Будем просити тата, хай зробить весілля.

Приспів. (4)');
DELETE FROM song_links WHERE song_id = 'pisniua_612151';
DELETE FROM song_versions WHERE song_id = 'pisniua_612151';
DELETE FROM songs_fts WHERE song_id = 'pisniua_612151';
DELETE FROM songs WHERE id = 'pisniua_612151';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_612151','Місяць','(Доля моя). Музика: Наталя Могилевська Слова: Наталя Могилевська. Виконує: Наталя Могилевська','uk','ukraine_1991',NULL,NULL,'http://www.is.svitonline.com/pisnya/',NULL,'Місяць по небу ходить,
Пісню свою заводить,
Зорі за ним співають голосні.
Місяць мене питає,
Знаю я чи не знаю,
Як ти мене кохаєш уві сні!..
Приспів:
Я кажу "ні",
Я-а-а не знаю я, не знаю..
Доля моя-а-а-а,
Кохаю я, кохаю!
Місяць по небу ходить,
Пісню свою заводить,
Зорі за ним співають, співаю я,
Як я тебе чекала,
Тихо в ночі страждала,
Чом ти пішов не знала, не знала...
Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_612151'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_612151','Місяць','Місяць по небу ходить,
Пісню свою заводить,
Зорі за ним співають голосні.
Місяць мене питає,
Знаю я чи не знаю,
Як ти мене кохаєш уві сні!..
Приспів:
Я кажу "ні",
Я-а-а не знаю я, не знаю..
Доля моя-а-а-а,
Кохаю я, кохаю!
Місяць по небу ходить,
Пісню свою заводить,
Зорі за ним співають, співаю я,
Як я тебе чекала,
Тихо в ночі страждала,
Чом ти пішов не знала, не знала...
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_612151_l1','pisniua_612151','YouTube','https://www.youtube.com/watch?v=X7tFfSq0py8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_612151_l2','pisniua_612151','YouTube','https://www.youtube.com/watch?v=a9d_5mumRkY','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6124246';
DELETE FROM song_versions WHERE song_id = 'pisniua_6124246';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6124246';
DELETE FROM songs WHERE id = 'pisniua_6124246';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6124246','Маяло житечко, маяло','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1957','Пісні з Волині, Музична Україна, Київ - 1970','Жниварська пісня, записана в с. Штунь Любомльського р-ну від М. О. Урбан і А. Л. Полизнюк, 1957','Маяло житечко, маяло,
Поки на ниві стояло.
А тепер не буде маяти,
буде в копойках стояти.
"До краю , женчики, до краю,
Вам пиріжечків я накраю".
"Нам вечеройка не мила,
Широка нива втомила.
Ой не так нива, як снопи,
Що доносили до копи".','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6124246'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6124246','Маяло житечко, маяло','Маяло житечко, маяло,
Поки на ниві стояло.
А тепер не буде маяти,
буде в копойках стояти.
"До краю , женчики, до краю,
Вам пиріжечків я накраю".
"Нам вечеройка не мила,
Широка нива втомила.
Ой не так нива, як снопи,
Що доносили до копи".');
DELETE FROM song_links WHERE song_id = 'pisniua_6124972';
DELETE FROM song_versions WHERE song_id = 'pisniua_6124972';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6124972';
DELETE FROM songs WHERE id = 'pisniua_6124972';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6124972','Лисичка','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'"Домра с азов", Санкт-Петербург, изд-во "Композитор", с.46',NULL,'Я лисичка, я сестричка
Не сиджу без діла,
Я гусятка пасла,        | (2)
Полювать ходила

А сьогодні у неділю
Треба відпочити,
Свою хатку гарнесенько  | (2)
Треба прикрасити

А щоб краще, а щоб краще
Була моя хата,
Піти треба у гайочок,   | (2)
Квіточок нарвати.    Демо (mp3, 32 kbps)','[''pisni.org.ua'', ''cat:dances'', ''cat:dytyachi'', ''cat:zhartivlyvi'', ''Пісні до танцю'', ''Дитячі пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6124972'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6124972','Лисичка','Я лисичка, я сестричка
Не сиджу без діла,
Я гусятка пасла,        | (2)
Полювать ходила

А сьогодні у неділю
Треба відпочити,
Свою хатку гарнесенько  | (2)
Треба прикрасити

А щоб краще, а щоб краще
Була моя хата,
Піти треба у гайочок,   | (2)
Квіточок нарвати.    Демо (mp3, 32 kbps)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6124972_l1','pisniua_6124972','YouTube','https://www.youtube.com/watch?v=I4tNoWNZtgU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6124972_l2','pisniua_6124972','YouTube','https://www.youtube.com/watch?v=AoYQaZaA10s','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6124972_l3','pisniua_6124972','YouTube','https://www.youtube.com/watch?v=MAedtmDvvyM','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6124972_l4','pisniua_6124972','YouTube','https://www.youtube.com/watch?v=5Fa15eOxcjI','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6124972_l5','pisniua_6124972','http://musiclist.org.ua/song/363651.html','http://musiclist.org.ua/song/363651.html','external',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_612477';
DELETE FROM song_versions WHERE song_id = 'pisniua_612477';
DELETE FROM songs_fts WHERE song_id = 'pisniua_612477';
DELETE FROM songs WHERE id = 'pisniua_612477';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_612477','Колискова','Музика: Павло Зібров Слова: Степан Галябарда. Виконує: Павло Зібров','uk','ukraine_1991',NULL,NULL,'http://www.zibrov.com.ua/',NULL,'Спи, моя донечко, спи, моє сонечко,
Нічка прийшла і привела за руку сон.
Спи, моя лялечко, хай тобі змалечку
Щастя й красу в дім принесуть твої ангели.

Приспів:
Я так люблю тебе, я так люблю тебе,
Ти щастя, що у мене є.
Я прихилю тобі світи, щоб у добрі зростала ти,
Доню - сонечко моє.

Личко з рум''янчиком, губоньки бантиком.
Швидше рости і будеш ти коханою.
І щоб здійснилося все що наснилося
Мамі й мені радісні дні ти подаруєш.

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_612477'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_612477','Колискова','Спи, моя донечко, спи, моє сонечко,
Нічка прийшла і привела за руку сон.
Спи, моя лялечко, хай тобі змалечку
Щастя й красу в дім принесуть твої ангели.

Приспів:
Я так люблю тебе, я так люблю тебе,
Ти щастя, що у мене є.
Я прихилю тобі світи, щоб у добрі зростала ти,
Доню - сонечко моє.

Личко з рум''янчиком, губоньки бантиком.
Швидше рости і будеш ти коханою.
І щоб здійснилося все що наснилося
Мамі й мені радісні дні ти подаруєш.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6140570';
DELETE FROM song_versions WHERE song_id = 'pisniua_6140570';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6140570';
DELETE FROM songs WHERE id = 'pisniua_6140570';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6140570','Лєночка','(Олена, не плач!). Музика: Bob Marley. Виконує: Сонцекльош','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Стоїть гора, гора, гора високая,
Що, а на тій горі чотири соколи.
Чотири соколи, листя берьозові,
Стояла Лєночка у кофті розовій.
У кофті розовій з двома листочками,
Котилися сльози двома рядочками.

Олена, не плач! Олена, не плач!
Олена, не плач! Олена, не плач!

Двома рядочками ще й двома рядами,
Поїхfв милий мій та й не сказав куди.
Поїхав милий мій автомашиною,
А я осталася з малой дитиною.
З малой дитиною ще й опозорена,
Од батька й матері та й оддальоная.

Олена, не плач! Олена, не плач!
Олена, не плач! Олена, не плач!

Стоїть гора, гора, гора високая,
Що, а на тій горі чотири соколи.
Чотири соколи, листя берьозові,
Стояла Лєночка у кофті розовій.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6140570'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6140570','Лєночка','Стоїть гора, гора, гора високая,
Що, а на тій горі чотири соколи.
Чотири соколи, листя берьозові,
Стояла Лєночка у кофті розовій.
У кофті розовій з двома листочками,
Котилися сльози двома рядочками.

Олена, не плач! Олена, не плач!
Олена, не плач! Олена, не плач!

Двома рядочками ще й двома рядами,
Поїхfв милий мій та й не сказав куди.
Поїхав милий мій автомашиною,
А я осталася з малой дитиною.
З малой дитиною ще й опозорена,
Од батька й матері та й оддальоная.

Олена, не плач! Олена, не плач!
Олена, не плач! Олена, не плач!

Стоїть гора, гора, гора високая,
Що, а на тій горі чотири соколи.
Чотири соколи, листя берьозові,
Стояла Лєночка у кофті розовій.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6140570_l1','pisniua_6140570','YouTube','https://www.youtube.com/watch?v=lnwnttVeHmw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6141797';
DELETE FROM song_versions WHERE song_id = 'pisniua_6141797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6141797';
DELETE FROM songs WHERE id = 'pisniua_6141797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6141797','Я так хочу','Музика: Святослав Вакарчук Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Bm
Я так млію за тобою,
Як ніколи ніхто не млів,
Так все дивлюсь за тобою,
Що й не мушу казати слів.
А-а-а-а-а-ая-ая-ая-я.
Bm
Так сумую за тобою,
Як за волею в клітці птах,
І чекаю, і не знаю,
Чи ж то правда в твоїх очах.
А-а-а-а-а-ая-ая-ая-я.

Приспів:
Я так хочу до тебе,
Як до матері немовля.
Я так хочу до тебе,
Як до неба ота земля.
Всі на світі бажання,
Все, що маю, віддам я,
Лиш би кожного ранку
Називати твоє ім''я.
Bm
Я так хочу до тебе...

Як то можна так хотіти,
Щоб усю ніч чекати знак,
Поки свічка буде горіти,
Поки мила не скаже "так"?
А-а-а-а-а-ая-ая-ая-я.
Я так млію за тобою,
Як ніколи ніхто не млів,
Так сі дивлю за тобою,
Що й не мушу казати слів.
А-а-а-а-а-ая-ая-ая-я.

Приспів. (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6141797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6141797','Я так хочу','Bm
Я так млію за тобою,
Як ніколи ніхто не млів,
Так все дивлюсь за тобою,
Що й не мушу казати слів.
А-а-а-а-а-ая-ая-ая-я.
Bm
Так сумую за тобою,
Як за волею в клітці птах,
І чекаю, і не знаю,
Чи ж то правда в твоїх очах.
А-а-а-а-а-ая-ая-ая-я.

Приспів:
Я так хочу до тебе,
Як до матері немовля.
Я так хочу до тебе,
Як до неба ота земля.
Всі на світі бажання,
Все, що маю, віддам я,
Лиш би кожного ранку
Називати твоє ім''я.
Bm
Я так хочу до тебе...

Як то можна так хотіти,
Щоб усю ніч чекати знак,
Поки свічка буде горіти,
Поки мила не скаже "так"?
А-а-а-а-а-ая-ая-ая-я.
Я так млію за тобою,
Як ніколи ніхто не млів,
Так сі дивлю за тобою,
Що й не мушу казати слів.
А-а-а-а-а-ая-ая-ая-я.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6141797_l1','pisniua_6141797','YouTube','https://www.youtube.com/watch?v=ll4fBm1apsA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6141797_l2','pisniua_6141797','YouTube','https://www.youtube.com/watch?v=dc19ResYAjA','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6149746';
DELETE FROM song_versions WHERE song_id = 'pisniua_6149746';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6149746';
DELETE FROM songs WHERE id = 'pisniua_6149746';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6149746','Веснянка','(Ой минула вже зима...). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Бандура, Київ, "Музична Україна", 1988, с.84','Обробка В.Войта. Надруковано: Бандура, Учбовий репертуар дитячих музичних шкіл, видання друге, перенроблене, Київ, "Музична Україна", 1988, с.84','Ой минула вже зима,
Снігу, льоду вже нема.
Ой нема, ой нема,
Снігу, льоду вже нема. (2)

Прилетіли журавлі,
І великі, і малі.
Журавлі, журавлі,
І великі, і малі. (2)

Ми цю пісеньку співаєм
І весноньку викликаєм.
Ой весна, ой красна,
Ти прийшла до нас, весна. (2)    Фонограма-мінус (midi)','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6149746'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6149746','Веснянка','Ой минула вже зима,
Снігу, льоду вже нема.
Ой нема, ой нема,
Снігу, льоду вже нема. (2)

Прилетіли журавлі,
І великі, і малі.
Журавлі, журавлі,
І великі, і малі. (2)

Ми цю пісеньку співаєм
І весноньку викликаєм.
Ой весна, ой красна,
Ти прийшла до нас, весна. (2)    Фонограма-мінус (midi)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6149746_l1','pisniua_6149746','YouTube','https://www.youtube.com/watch?v=lPnknM-XcnA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6151';
DELETE FROM song_versions WHERE song_id = 'pisniua_6151';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6151';
DELETE FROM songs WHERE id = 'pisniua_6151';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6151','Колискова для сонця','Музика: Андрій Гуцал Слова: Андрій Гуцал. Виконує: Очеретяний кварк, Таліта Кум','uk','ukraine_1991',NULL,NULL,'Пісневир','Підбір акордів: hrystusia','Шумить вітерець і колише полин,
Сиджу на траві і дивлюсь в далечінь,
Як сонце поволі збирається спати лягати.
Йому колискову співає ріка,
Парує з хмаринок перина м''яка,
Я хочу добраніч йому побажати.
Приспів:
Добраніч, сонце, добраніч!
С             Am
Бажаю тобі кольорових снів,
З подихом хвойного лісу і шумом гірської ріки
Сил набирайся,
С             Am
Щоб зустріти ранок напровесні
Dm               G            F        С7
Лагідним дотиком ніжної сонячної руки.
Як швидко в минуле роки пронеслись,
І мрії дитинства з туманом злились.
Як шкода, що їх вже назад не повернеш ніколи.
Та сонце встає, як вставало колись,
І я разом з вітром втікаю у вись,
Щоб знову для нього співати колискову.
Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''cat:krasa-pryrody'', ''Колискові'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6151'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6151','Колискова для сонця','Шумить вітерець і колише полин,
Сиджу на траві і дивлюсь в далечінь,
Як сонце поволі збирається спати лягати.
Йому колискову співає ріка,
Парує з хмаринок перина м''яка,
Я хочу добраніч йому побажати.
Приспів:
Добраніч, сонце, добраніч!
С             Am
Бажаю тобі кольорових снів,
З подихом хвойного лісу і шумом гірської ріки
Сил набирайся,
С             Am
Щоб зустріти ранок напровесні
Dm               G            F        С7
Лагідним дотиком ніжної сонячної руки.
Як швидко в минуле роки пронеслись,
І мрії дитинства з туманом злились.
Як шкода, що їх вже назад не повернеш ніколи.
Та сонце встає, як вставало колись,
І я разом з вітром втікаю у вись,
Щоб знову для нього співати колискову.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6151_l1','pisniua_6151','YouTube','https://www.youtube.com/watch?v=IPsNoQU11T8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6139673';
DELETE FROM song_versions WHERE song_id = 'pisniua_6139673';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6139673';
DELETE FROM songs WHERE id = 'pisniua_6139673';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6139673','Колискова','Музика: Олександр Осадчий Слова: Наталія Кулик','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вечір сонечко в долоні
Взяв на обрії червонім.
Вже й садок росою вмився
Та й у нічку задивився....
Час, моя дитино,спать!
-Я ще хочу погулять!

По подвір''ю ходить тиша,
Місяць зіроньки колише.
Колискова пісня лине:
Засинай, мала дитино,
Посміхнися уві сні...
-Ой не спиться щось мені!

Не дадють дитині спати
Недрімливі оченята.
Вже й незнаю, що робити,
Чи гарненько насварити?..
Хтось тут, наче, позіхнув?
- Не скажу!
- То ж чому?
- Не скажу. Я вже заснув...

В чистім полі спить калина,
На узліссі - горобина
По подвір''ю ходить тиша,
Місяць зіроньки колише,
Посміхається до нас:
- На добраніч, спати час,
На добраніч, спати час,
На добраніч...    Фонограма-мінус (mp3, 192 kbps) (інструменти + основна мелодія)','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6139673'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6139673','Колискова','Вечір сонечко в долоні
Взяв на обрії червонім.
Вже й садок росою вмився
Та й у нічку задивився....
Час, моя дитино,спать!
-Я ще хочу погулять!

По подвір''ю ходить тиша,
Місяць зіроньки колише.
Колискова пісня лине:
Засинай, мала дитино,
Посміхнися уві сні...
-Ой не спиться щось мені!

Не дадють дитині спати
Недрімливі оченята.
Вже й незнаю, що робити,
Чи гарненько насварити?..
Хтось тут, наче, позіхнув?
- Не скажу!
- То ж чому?
- Не скажу. Я вже заснув...

В чистім полі спить калина,
На узліссі - горобина
По подвір''ю ходить тиша,
Місяць зіроньки колише,
Посміхається до нас:
- На добраніч, спати час,
На добраніч, спати час,
На добраніч...    Фонограма-мінус (mp3, 192 kbps) (інструменти + основна мелодія)');
DELETE FROM song_links WHERE song_id = 'pisniua_6165348';
DELETE FROM song_versions WHERE song_id = 'pisniua_6165348';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6165348';
DELETE FROM songs WHERE id = 'pisniua_6165348';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6165348','Баю-бай','Музика: Ігор Іванців Слова: Володимир Наконечний','uk','ukraine_1991',NULL,NULL,'http://ivantsiv.at.ua',NULL,'Лю-лі, лю-лі, треба спати,
Йде вже ніченька до хати,
Світить зіронька в віконце,
Спи, маленьке наше сонце.

Приспів:
Баю, баю, бай, бай, бай,
Спи, дитино, засинай,
Спи, малесеньке дитятко,
Вже втомились оченятка.
Баю, баю, бай, бай, бай,
Спи, дитино, засинай,
Баю, бай - засинай.

Лю-лі, лю-лі, треба спати,
Вже поснули пташеня,
Їм матуся у садочку
Теж співала співаночку.

Приспів.

Навіть непосида котик
Смачно спить спіймавши хвостик.
Спи і ти, мій голубочку,
Мій малесенький синочку.

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6165348'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6165348','Баю-бай','Лю-лі, лю-лі, треба спати,
Йде вже ніченька до хати,
Світить зіронька в віконце,
Спи, маленьке наше сонце.

Приспів:
Баю, баю, бай, бай, бай,
Спи, дитино, засинай,
Спи, малесеньке дитятко,
Вже втомились оченятка.
Баю, баю, бай, бай, бай,
Спи, дитино, засинай,
Баю, бай - засинай.

Лю-лі, лю-лі, треба спати,
Вже поснули пташеня,
Їм матуся у садочку
Теж співала співаночку.

Приспів.

Навіть непосида котик
Смачно спить спіймавши хвостик.
Спи і ти, мій голубочку,
Мій малесенький синочку.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6167593';
DELETE FROM song_versions WHERE song_id = 'pisniua_6167593';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6167593';
DELETE FROM songs WHERE id = 'pisniua_6167593';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6167593','Колискова для доні','Слова: Yusmal Smal','uk','ukraine_1991',NULL,NULL,'http://www.malecha.org.ua',NULL,'Спи, Оленко, спи, моя доню,
Спи, маленька, спи, засинай.
Спи, Оленко, спи, моя доню,
Спи, моя доню, очки стуляй.

Приспів:
Спи, спи, спи, Оленко,
Спи, маленька, спи, засинай,
Спи, спи, спи, моя доню,
Спи, дитино, очки стуляй...

Спить твій братик, спить твій тато,
Спить садочок, зелен гай,
Спить твій братик, спить твій тато,
Спи, маленька, очки стуляй.

Приспів.

Хай тобі насниться казка,
Веселковий дивокрай,
Хай тобі насниться казка,
Спи, дитино, очки стуляй.

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6167593'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6167593','Колискова для доні','Спи, Оленко, спи, моя доню,
Спи, маленька, спи, засинай.
Спи, Оленко, спи, моя доню,
Спи, моя доню, очки стуляй.

Приспів:
Спи, спи, спи, Оленко,
Спи, маленька, спи, засинай,
Спи, спи, спи, моя доню,
Спи, дитино, очки стуляй...

Спить твій братик, спить твій тато,
Спить садочок, зелен гай,
Спить твій братик, спить твій тато,
Спи, маленька, очки стуляй.

Приспів.

Хай тобі насниться казка,
Веселковий дивокрай,
Хай тобі насниться казка,
Спи, дитино, очки стуляй.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6167858';
DELETE FROM song_versions WHERE song_id = 'pisniua_6167858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6167858';
DELETE FROM songs WHERE id = 'pisniua_6167858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6167858','Колискова',NULL,'uk','ukraine_1991',NULL,NULL,'http://www.malecha.org.ua/',NULL,'Засинай, дитятко-сонце,
Нічка стука у віконце,
Зіроньки у небі сяють,
Люлечки тобі співають.

Хай весна тобі присниться,
Як до нас вертають птиці,
Розтає зі снігу ковдра,
Пишно все цвіте навколо.

Хай тобі присниться літо,
Чебрецю духмяні квіти,
Вишні, яблука, суниці,
Сіно складене в копиці.

Хай тобі присниться осінь:
У дерев жовтіють коси,
Дощ і хмари, і тумани -
Трохи сумно, дуже гарно.

Хай зима в сни завітає,
Білим світ позагортає.
І ялинка, і дарунки,
І сніжинок візерунки.

Хай тобі присниться ранок,
Встанемо стрічать світанок;
День прийде - підемо гратись,
Бігати, стрибать, сміятись.

Вечір зазирне до хати -
Утомившись, ляжем спати.
Все довкола вже поснуло,
На добраніч, люлі-люлі.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6167858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6167858','Колискова','Засинай, дитятко-сонце,
Нічка стука у віконце,
Зіроньки у небі сяють,
Люлечки тобі співають.

Хай весна тобі присниться,
Як до нас вертають птиці,
Розтає зі снігу ковдра,
Пишно все цвіте навколо.

Хай тобі присниться літо,
Чебрецю духмяні квіти,
Вишні, яблука, суниці,
Сіно складене в копиці.

Хай тобі присниться осінь:
У дерев жовтіють коси,
Дощ і хмари, і тумани -
Трохи сумно, дуже гарно.

Хай зима в сни завітає,
Білим світ позагортає.
І ялинка, і дарунки,
І сніжинок візерунки.

Хай тобі присниться ранок,
Встанемо стрічать світанок;
День прийде - підемо гратись,
Бігати, стрибать, сміятись.

Вечір зазирне до хати -
Утомившись, ляжем спати.
Все довкола вже поснуло,
На добраніч, люлі-люлі.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6167858_l1','pisniua_6167858','YouTube','https://www.youtube.com/watch?v=lBc2NbclVMo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_617746';
DELETE FROM song_versions WHERE song_id = 'pisniua_617746';
DELETE FROM songs_fts WHERE song_id = 'pisniua_617746';
DELETE FROM songs WHERE id = 'pisniua_617746';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_617746','Міську вважай','Музика: Сергій Кузьминський Слова: Сергій Кузьминський. Виконує: Брати Гадюкіни','uk','ukraine_1991',NULL,NULL,'http://vik75.h1.ru/muz1.shtml?id=98',NULL,'Кожного дня хожу по місті я туда сюда,
Вижу просто на очах великі перем''єни.
Більше не буду їсти, не буду спати,
Тіко би той во всьо случайно не пройшло повз мене.

Приспів:
Міську, вважай,
Мєчта прекрасная.
Міську, вважай,
Як сонце ясноє.
Міську, вважай,
Холера ясная,
Мєчта зовьот мєня вперьод.

Перше травня, Пасха, Зелені свята.
Hімці, жиди, поляки, цось ми сі покренціло.
Вперед поволи граєм собі вар''ята,
Бачимо третім воком же ніц сі не змінило.

Приспів.

Кажуть розумні люди один раз живемо,
Раю нема не небі, всьому кінець могила.
Мені то на шо - маю гноївки фіру.
Мене кохає дівчина чорнобрива.

Приспів.

Сонце зійшло на сході, на захід впало.
Радість прийшла на землю, якої не бувало.
Очі позатуляли руками з мозолями.
Може, на вертепі шось знову засіяло.

Приспів. (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_617746'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_617746','Міську вважай','Кожного дня хожу по місті я туда сюда,
Вижу просто на очах великі перем''єни.
Більше не буду їсти, не буду спати,
Тіко би той во всьо случайно не пройшло повз мене.

Приспів:
Міську, вважай,
Мєчта прекрасная.
Міську, вважай,
Як сонце ясноє.
Міську, вважай,
Холера ясная,
Мєчта зовьот мєня вперьод.

Перше травня, Пасха, Зелені свята.
Hімці, жиди, поляки, цось ми сі покренціло.
Вперед поволи граєм собі вар''ята,
Бачимо третім воком же ніц сі не змінило.

Приспів.

Кажуть розумні люди один раз живемо,
Раю нема не небі, всьому кінець могила.
Мені то на шо - маю гноївки фіру.
Мене кохає дівчина чорнобрива.

Приспів.

Сонце зійшло на сході, на захід впало.
Радість прийшла на землю, якої не бувало.
Очі позатуляли руками з мозолями.
Може, на вертепі шось знову засіяло.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_617746_l1','pisniua_617746','YouTube','https://www.youtube.com/watch?v=xO5YF3PXNzE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6183454';
DELETE FROM song_versions WHERE song_id = 'pisniua_6183454';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6183454';
DELETE FROM songs WHERE id = 'pisniua_6183454';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6183454','Веселі чобітки','Музика: А. Філіпенко Слова: Т. Волгіна','uk','ukraine_1991',NULL,NULL,'Єфросинія Душна, Андрій Душний. Бандуро, дзвени, не стихай! /Збірка творів для учнів початкових мистецьких навчальних закладів. – Львів: ТеРус, 2005. – 44 с.',NULL,'Чобітки веселі в мене,
Як піду гуляти,
Чобіточки тупотять,
Хочуть танцювати.

Я бабусі помагала,
Тарілочки мила,
У таночок як пішла,
Глечика розбила.

Гопака я у неділю
Танцювати вчилась,
Перекинула відро -
Мама розгнівилась!

Ви не смійтеся, малята,
Чи ж я винувата,
Що веселі отакі
Маю чоботята.    Фонограма мінус (mp3)','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:zhartivlyvi'', ''Дитячі пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6183454'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6183454','Веселі чобітки','Чобітки веселі в мене,
Як піду гуляти,
Чобіточки тупотять,
Хочуть танцювати.

Я бабусі помагала,
Тарілочки мила,
У таночок як пішла,
Глечика розбила.

Гопака я у неділю
Танцювати вчилась,
Перекинула відро -
Мама розгнівилась!

Ви не смійтеся, малята,
Чи ж я винувата,
Що веселі отакі
Маю чоботята.    Фонограма мінус (mp3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6183454_l1','pisniua_6183454','YouTube','https://www.youtube.com/watch?v=9ayB1plfI-E','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6182252';
DELETE FROM song_versions WHERE song_id = 'pisniua_6182252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6182252';
DELETE FROM songs WHERE id = 'pisniua_6182252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6182252','Коломийки','Музика: Володимир Шинкарук Слова: Володимир Шинкарук. Виконує: Володимир Шинкарук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Хтось у двері мені стукав, вибив аж три дошки,
Думав я, то Дід Мороз, а то - відморозки.

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

А чого Верховну Раду "Радою" назвали?
Бо радіють депутати, що туди попали.

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Теща мені, наче мати - може все дістати!
Ой, якби ж то вона знала, як мене дістала!

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Зустрічаються два кума у полі за гаєм:
- Ви корову вже доїли?
- Ні, ще доїдаєм...

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Той, хто продає пальне, -  не оре й не сіє,
Лиш компанія "Лукоіл" - цибуля й олія!

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Хто візьме горілку "Пісня" й стане її пити,
Буде ввечері співати, вранці - буде вити!

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Я уже в такому віці, що не випадково
Більш лякає згода жінки, ніж її відмова.

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Виїхав з села Поплавський - не залишив сліду,
А село із нього й досі ну ніяк не їде.

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Ходять наші футболісти по полю, мов тіні,
В Англії футбол родився, а вмер в Україні.

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Українські водії закричали ґвалтом -
На дорогах зійшов сніг разом із асфальтом...

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

У коханні - третій зайвий, будемо відверті -
Чоловік "застукав" жінку...  молотком до смерті.

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Я жінок усіх вітаю, і скажу, без жарту:
Краще бути "первой Майєй", ніж "восьмою Мартой"!

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!
Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!','[''pisni.org.ua'', ''cat:kolomyyky'', ''cat:zhartivlyvi'', ''Коломийки'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6182252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6182252','Коломийки','Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Хтось у двері мені стукав, вибив аж три дошки,
Думав я, то Дід Мороз, а то - відморозки.

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

А чого Верховну Раду "Радою" назвали?
Бо радіють депутати, що туди попали.

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Теща мені, наче мати - може все дістати!
Ой, якби ж то вона знала, як мене дістала!

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Зустрічаються два кума у полі за гаєм:
- Ви корову вже доїли?
- Ні, ще доїдаєм...

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Той, хто продає пальне, -  не оре й не сіє,
Лиш компанія "Лукоіл" - цибуля й олія!

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Хто візьме горілку "Пісня" й стане її пити,
Буде ввечері співати, вранці - буде вити!

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Я уже в такому віці, що не випадково
Більш лякає згода жінки, ніж її відмова.

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Виїхав з села Поплавський - не залишив сліду,
А село із нього й досі ну ніяк не їде.

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Ходять наші футболісти по полю, мов тіні,
В Англії футбол родився, а вмер в Україні.

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Українські водії закричали ґвалтом -
На дорогах зійшов сніг разом із асфальтом...

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

У коханні - третій зайвий, будемо відверті -
Чоловік "застукав" жінку...  молотком до смерті.

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!

Я жінок усіх вітаю, і скажу, без жарту:
Краще бути "первой Майєй", ніж "восьмою Мартой"!

Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!
Гей, шіді-ріді-дам, шіді-ріді-дана-дана,
Гей, шіді-ріді-дам, шіді-ріді-дана!');
DELETE FROM song_links WHERE song_id = 'pisniua_6189644';
DELETE FROM song_versions WHERE song_id = 'pisniua_6189644';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6189644';
DELETE FROM songs WHERE id = 'pisniua_6189644';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6189644','Баю, бай','Музика: Василь Верховинець (Костів) Слова: Яків Щоголів','uk','ukraine_1991',NULL,NULL,'В. Верховинець. Весняночка. Ігри з піснями для дітей дошкільного віку та молодших школярів. Видання четверте, перероблене і доповнене. - Київ: Музична Україна, 1979. - 339 с.',NULL,'Мати сина колихала,
Колихаючи співала: —
Ніч приходить, треба спати,
Коло тебе рідна мати,
Я тебе нагодувала,
І сповила, і приспала,
Колишу тебе й співаю:
Спи, дитино, баю, баю.

Геть від нас усяке лихо,
Хай круг тебе буде тихо,
Над тобою я співаю:
Спи, дитино, баю, баю.
Спи ж, дитино, я з тобою,
Ніч покрила землю млою,
Я не сплю, тобі співаю:
Спи, дитино, баю, баю...','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6189644'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6189644','Баю, бай','Мати сина колихала,
Колихаючи співала: —
Ніч приходить, треба спати,
Коло тебе рідна мати,
Я тебе нагодувала,
І сповила, і приспала,
Колишу тебе й співаю:
Спи, дитино, баю, баю.

Геть від нас усяке лихо,
Хай круг тебе буде тихо,
Над тобою я співаю:
Спи, дитино, баю, баю.
Спи ж, дитино, я з тобою,
Ніч покрила землю млою,
Я не сплю, тобі співаю:
Спи, дитино, баю, баю...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6189644_l1','pisniua_6189644','YouTube','https://www.youtube.com/watch?v=d1kATgAMODA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_619374';
DELETE FROM song_versions WHERE song_id = 'pisniua_619374';
DELETE FROM songs_fts WHERE song_id = 'pisniua_619374';
DELETE FROM songs WHERE id = 'pisniua_619374';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_619374','Так мало тут тебе','Слова: Валерій Харчишин. Виконує: Друга ріка','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я, міг бути твоїм клоуном
Могла б і ти...
Я, міг бути твоїм клоном
Бо такий, як ти...
А дай, тобою все відчути,
Чути назавжди.
Я беру тебе з собою
Бо не плаче дощ, не гріє небо!

Приспів:
Так мало тут тебе,
Так мало тут тебе,
Мені так мало тут тебе.
Так мало тут тебе,
Так мало тут тебе,
Так мало тут тебе..
Мені так мало тут тебе.

З ким, без тебе можу
Бути тільки я, і як ?
День, без тебе може бути,
Ніч без тебе- жах.
Ото тобою все відчути,
Як в останній раз...
Я, візьму тебе з собою
Бо не сходять з неба
Ні сонце, ні зорі.

Приспів/ (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_619374'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_619374','Так мало тут тебе','Я, міг бути твоїм клоуном
Могла б і ти...
Я, міг бути твоїм клоном
Бо такий, як ти...
А дай, тобою все відчути,
Чути назавжди.
Я беру тебе з собою
Бо не плаче дощ, не гріє небо!

Приспів:
Так мало тут тебе,
Так мало тут тебе,
Мені так мало тут тебе.
Так мало тут тебе,
Так мало тут тебе,
Так мало тут тебе..
Мені так мало тут тебе.

З ким, без тебе можу
Бути тільки я, і як ?
День, без тебе може бути,
Ніч без тебе- жах.
Ото тобою все відчути,
Як в останній раз...
Я, візьму тебе з собою
Бо не сходять з неба
Ні сонце, ні зорі.

Приспів/ (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_6192151';
DELETE FROM song_versions WHERE song_id = 'pisniua_6192151';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6192151';
DELETE FROM songs WHERE id = 'pisniua_6192151';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6192151','Тане вечір, ніч близенько','Музика: Алла Мігай Слова: Алла Мігай. Виконує: Алла Мігай','uk','ukraine_1991',NULL,NULL,'http://need-help.com.ua/kolyibelnyie/koliskova-vechirnya-kazka.html',NULL,'Тане вечір, ніч близенько.
Щось шепоче тихо ненька.
Чи то спів неголосний,
Чи то спів неголосний,
Чи то сни?

Кошенятко свій клубочок
Закотило у куточок.
І у кошику воно,
І у кошику воно
Спить давно...

На траву лісовичок
Постелив носовичок.
Так маленький лісовик,
Спати звик.

Спить хмаринка над сосною,
Спить хатинка за Десною.
І до пристані пристав
Пароплав.

Ось тюльпан, зелена ніжка,
В нім будиночок і ліжко.
В ньому фея чарівна,
В ньому фея чарівна
Засина.

Зірочки на небі в співі,
Місяць човник, мов на хвилі,
Ніжно дивляться на нас,
Ніжно дивляться на нас.
Спати час...

Сонце зайшло давно,
Стукає сон у вікно.
Ну, пустіть мене, вже час,
Годі чекати,
До малої дитини,
До теплої хати','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6192151'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6192151','Тане вечір, ніч близенько','Тане вечір, ніч близенько.
Щось шепоче тихо ненька.
Чи то спів неголосний,
Чи то спів неголосний,
Чи то сни?

Кошенятко свій клубочок
Закотило у куточок.
І у кошику воно,
І у кошику воно
Спить давно...

На траву лісовичок
Постелив носовичок.
Так маленький лісовик,
Спати звик.

Спить хмаринка над сосною,
Спить хатинка за Десною.
І до пристані пристав
Пароплав.

Ось тюльпан, зелена ніжка,
В нім будиночок і ліжко.
В ньому фея чарівна,
В ньому фея чарівна
Засина.

Зірочки на небі в співі,
Місяць човник, мов на хвилі,
Ніжно дивляться на нас,
Ніжно дивляться на нас.
Спати час...

Сонце зайшло давно,
Стукає сон у вікно.
Ну, пустіть мене, вже час,
Годі чекати,
До малої дитини,
До теплої хати');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6192151_l1','pisniua_6192151','YouTube','https://www.youtube.com/watch?v=ytdE1FvtgKE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6192151_l2','pisniua_6192151','YouTube','https://www.youtube.com/watch?v=4M1iaCTtJnc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6205374';
DELETE FROM song_versions WHERE song_id = 'pisniua_6205374';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6205374';
DELETE FROM songs WHERE id = 'pisniua_6205374';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6205374','А пам''ятаєш?','(Місця щасливих людей). Музика: Скрябін Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'D#
Можливо, треба було жити, як всі,
Bbm
А я хотів інакшим бути завжди -
Так скучно плисти по течії з ними...
D#
Можливо, я не дав тобі теплоту
Bbm
І ти не знаєш погляд через фату. -
Логічно. Як можна було з тим жити?
D#
А пам''ятаєш
Bbm
Метро нічного Берліна
G#
І наші тіні на стінах -
Cm
Місця щасливих людей!..
D#
А пам''ятаєш
Bbm
Балкон під небом Мадріда
G#
І на трибунах Коріди
Cm
Місця щасливих людей!..
Тягуча павутина зйомних квартир
І дві душі пробиті сотнями дір,
Так страшно, коли не знаєш, що завтра...
Тепер я оглядаюсь на ті часи
І знаю ціну світлої полоси -
Не варто шукати винних крім себе...
А пам''ятаєш
Страшенний шторм на Мальдівах,
На фотках ніс обгорілий,
Місця щасливих людей!..
А пам''ятаєш
Старий кабак на Бродвеї,
Цибуля, сир і печеня,
Місця щасливих людей!..
Я наперед ніколи не вивчаю маршрут,
Мені не важливо, тільки б ти була тут,
Всерівно куди нас понесе вітер...
В житті не важливий сигнал GPS,
Якщо не один ти рюкзак свій несеш,
То знайдеш для себе десь таке місце!
А пам''ятаєш
Велосипеди в Парижі,
І в Закопаному лижі,
Місця щасливих людей!..
А пам''ятаєш
Наш Новий Рік в електричці
І Лондон, як на відкритці,
Місця щасливих людей!..
А пам''ятаєш
Холодне пиво Стокгольма
І знову ми було двоє,
Місця щасливих людей!..
А пам''ятаєш,
Як я втікав з інститута,
Щоби з тобою побути
І до сих пір я тут є!..
А пам''ятаєш?..','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6205374'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6205374','А пам''ятаєш?','D#
Можливо, треба було жити, як всі,
Bbm
А я хотів інакшим бути завжди -
Так скучно плисти по течії з ними...
D#
Можливо, я не дав тобі теплоту
Bbm
І ти не знаєш погляд через фату. -
Логічно. Як можна було з тим жити?
D#
А пам''ятаєш
Bbm
Метро нічного Берліна
G#
І наші тіні на стінах -
Cm
Місця щасливих людей!..
D#
А пам''ятаєш
Bbm
Балкон під небом Мадріда
G#
І на трибунах Коріди
Cm
Місця щасливих людей!..
Тягуча павутина зйомних квартир
І дві душі пробиті сотнями дір,
Так страшно, коли не знаєш, що завтра...
Тепер я оглядаюсь на ті часи
І знаю ціну світлої полоси -
Не варто шукати винних крім себе...
А пам''ятаєш
Страшенний шторм на Мальдівах,
На фотках ніс обгорілий,
Місця щасливих людей!..
А пам''ятаєш
Старий кабак на Бродвеї,
Цибуля, сир і печеня,
Місця щасливих людей!..
Я наперед ніколи не вивчаю маршрут,
Мені не важливо, тільки б ти була тут,
Всерівно куди нас понесе вітер...
В житті не важливий сигнал GPS,
Якщо не один ти рюкзак свій несеш,
То знайдеш для себе десь таке місце!
А пам''ятаєш
Велосипеди в Парижі,
І в Закопаному лижі,
Місця щасливих людей!..
А пам''ятаєш
Наш Новий Рік в електричці
І Лондон, як на відкритці,
Місця щасливих людей!..
А пам''ятаєш
Холодне пиво Стокгольма
І знову ми було двоє,
Місця щасливих людей!..
А пам''ятаєш,
Як я втікав з інститута,
Щоби з тобою побути
І до сих пір я тут є!..
А пам''ятаєш?..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6205374_l1','pisniua_6205374','YouTube','https://www.youtube.com/watch?v=yWJkYL-0ZeY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_620570';
DELETE FROM song_versions WHERE song_id = 'pisniua_620570';
DELETE FROM songs_fts WHERE song_id = 'pisniua_620570';
DELETE FROM songs WHERE id = 'pisniua_620570';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_620570','Квітка ***','Музика: Святослав Вакарчук Слова: Гурт "Океан Ельзи". Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вступ : Am(V) Em(VII) Dm(V)Em(VII) x 2

Am(V) Em(VII)   Dm(V)  Em(VII)
Холодна, голодна й невчасна
Am(V)         Em(VII)      Dm(V)   Em(VII)
То світла, то темна й неясна
Am(V)         Em(VII)     Dm(V)   Em(VII)
До крові, до болі й до ночі
Am(V)        Em(VII)       Dm(V)    Em(VII)
Я знаю, я буду , я хочу, я хочу-у

Приcпів:

Шукай в телефоні мій слід
Цілуй в вікно мої губи
Am        Em           Dm      Em(VII)
Як знак на моєму плечі ти квітка, ти квітка-а
Шукай в телефоні мій слід
Цілуй в вікно мої губи
Так швидко в моєму житті , так швидко ти квітка

Програш.

С тобою по колу прощались
По колу с тобою літали
Без болі, без права надії
Так швидко, так сильно, так мало , ой як мало...

Приспів.

Програш x2   Am(V)  Em(VII) Dm(V)  Em(VII)','[''pisni.org.ua'', ''cat:lirychni'', ''cat:philosophic'', ''Пісні про кохання, ліричні'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_620570'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_620570','Квітка ***','Вступ : Am(V) Em(VII) Dm(V)Em(VII) x 2

Am(V) Em(VII)   Dm(V)  Em(VII)
Холодна, голодна й невчасна
Am(V)         Em(VII)      Dm(V)   Em(VII)
То світла, то темна й неясна
Am(V)         Em(VII)     Dm(V)   Em(VII)
До крові, до болі й до ночі
Am(V)        Em(VII)       Dm(V)    Em(VII)
Я знаю, я буду , я хочу, я хочу-у

Приcпів:

Шукай в телефоні мій слід
Цілуй в вікно мої губи
Am        Em           Dm      Em(VII)
Як знак на моєму плечі ти квітка, ти квітка-а
Шукай в телефоні мій слід
Цілуй в вікно мої губи
Так швидко в моєму житті , так швидко ти квітка

Програш.

С тобою по колу прощались
По колу с тобою літали
Без болі, без права надії
Так швидко, так сильно, так мало , ой як мало...

Приспів.

Програш x2   Am(V)  Em(VII) Dm(V)  Em(VII)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_620570_l1','pisniua_620570','YouTube','https://www.youtube.com/watch?v=jo1tw33DtVE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_620570_l2','pisniua_620570','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_621348';
DELETE FROM song_versions WHERE song_id = 'pisniua_621348';
DELETE FROM songs_fts WHERE song_id = 'pisniua_621348';
DELETE FROM songs WHERE id = 'pisniua_621348';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_621348','Без бою','Музика: Святослав Вакарчук Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_1991',NULL,NULL,'записано на слух',NULL,'A Dm x 4

Шо ж це я, шо ж це я не зумів
Зупинитися вчасно, все ясно
Gm
Зі мною тепер і назавжди.
Пізно не йди, не йди від мене...

F
Рау-рау-пабадиба-думдай...
Я налию собі, я налию тобі вина,
A
А хочеш із медом.

Приспів:
Хто ти є? Ти взяла моє життя,
A
І не віддала,
Хто ти є? Ти випила мою кров,
A
І п''яною впала,
Твої очі кличуть, хочуть мене,
A
Ведуть за собою...
Хто ти є, ким би не була ти -
Я не здамся без бою!
Я не здамся без бою!

Шо ж це я, шо ж це я не зумів,
Зупинити себе - тебе, сьогодні,
Gm
Сьогодні так дує, без тебе сумую,
Сумую без тебе... Накинь шось на себе

F
Рау-рау-пабадиба-думдай
Я налию собі, я налию тобі вина,
A
А хочеш із медом.

Приспів:
Хто ти є? Ти взяла моє життя,
A
І не віддала,
Хто ти є? Ти випила мою кров,
A
І п''яною впала,
Твої очі кличуть, хочуть мене,
A
Ведуть за собою...
Хто ти є, ким би не була ти -
Я не здамся без бою!
Я не здамся без бою!

Присвист:

Я налию собі, я налию тобі вина,
A
А хочеш із медом ?

Приспів:
Хто ти є? Ти взяла моє життя,
A
І не віддала,
Хто ти є? Ти випила мою кров,
A
І п''яною впала,
Твої очі кличуть, хочуть мене,
A
Ведуть за собою...
Хто ти є, ким би не була ти -
Я не здамся без бою!
Я не здамся без бою!
Я не здамся без бою!','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_621348'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_621348','Без бою','A Dm x 4

Шо ж це я, шо ж це я не зумів
Зупинитися вчасно, все ясно
Gm
Зі мною тепер і назавжди.
Пізно не йди, не йди від мене...

F
Рау-рау-пабадиба-думдай...
Я налию собі, я налию тобі вина,
A
А хочеш із медом.

Приспів:
Хто ти є? Ти взяла моє життя,
A
І не віддала,
Хто ти є? Ти випила мою кров,
A
І п''яною впала,
Твої очі кличуть, хочуть мене,
A
Ведуть за собою...
Хто ти є, ким би не була ти -
Я не здамся без бою!
Я не здамся без бою!

Шо ж це я, шо ж це я не зумів,
Зупинити себе - тебе, сьогодні,
Gm
Сьогодні так дує, без тебе сумую,
Сумую без тебе... Накинь шось на себе

F
Рау-рау-пабадиба-думдай
Я налию собі, я налию тобі вина,
A
А хочеш із медом.

Приспів:
Хто ти є? Ти взяла моє життя,
A
І не віддала,
Хто ти є? Ти випила мою кров,
A
І п''яною впала,
Твої очі кличуть, хочуть мене,
A
Ведуть за собою...
Хто ти є, ким би не була ти -
Я не здамся без бою!
Я не здамся без бою!

Присвист:

Я налию собі, я налию тобі вина,
A
А хочеш із медом ?

Приспів:
Хто ти є? Ти взяла моє життя,
A
І не віддала,
Хто ти є? Ти випила мою кров,
A
І п''яною впала,
Твої очі кличуть, хочуть мене,
A
Ведуть за собою...
Хто ти є, ким би не була ти -
Я не здамся без бою!
Я не здамся без бою!
Я не здамся без бою!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_621348_l1','pisniua_621348','YouTube','https://www.youtube.com/watch?v=aMmUlc9TPZY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_621348_l2','pisniua_621348','YouTube','https://www.youtube.com/watch?v=S-FD0hcN3C0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6218899';
DELETE FROM song_versions WHERE song_id = 'pisniua_6218899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6218899';
DELETE FROM songs WHERE id = 'pisniua_6218899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6218899','Бузьку, принеси Гануську','Музика: Михайло Хома, Олег Турко Слова: Михайло Хома, Олег Турко. Виконує: DZIDZIO','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Запитала внучка: де беруться діти?
Я почервонів, не знав ся де подіти,
Закурив си дзигар, став розповідати,
Навесні летіли бузьки коло хати,
Тато злапав бузька і приніс додому,
Заховав під ліжком, не сказав нікому,
Вечір тато з мамов полягали спати,
І на ліжку бузька стали намовляти.

Приспів:
Бузьку, принеси Гануську!
Бузьку, принеси Гануську!
Бузьку, принеси Гануську!
Бузьку, принеси Гануську!

Місяці минають, всі весни чекають,
З вирію вернулись, над селом літають,
Сіли на капусті, стали клекотати,
Відгадайте хто то? - Бузьки!
Мама бігла перша і в капусту впала,
Збоку в кукурудзі зозуля кувала,
Накувала мамі ще одну дитину,
І понесли бузька в ліжко під перину.

Приспів. (2)

Далі місяць пили, бузьків прихвалили,
Діти, як курчата, по селі ходили.
Пів села Ганусьок, пів села Марусьок,
Отакий кавалєр - довгодзьобий бузьок!

Приспів. (3)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6218899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6218899','Бузьку, принеси Гануську','Запитала внучка: де беруться діти?
Я почервонів, не знав ся де подіти,
Закурив си дзигар, став розповідати,
Навесні летіли бузьки коло хати,
Тато злапав бузька і приніс додому,
Заховав під ліжком, не сказав нікому,
Вечір тато з мамов полягали спати,
І на ліжку бузька стали намовляти.

Приспів:
Бузьку, принеси Гануську!
Бузьку, принеси Гануську!
Бузьку, принеси Гануську!
Бузьку, принеси Гануську!

Місяці минають, всі весни чекають,
З вирію вернулись, над селом літають,
Сіли на капусті, стали клекотати,
Відгадайте хто то? - Бузьки!
Мама бігла перша і в капусту впала,
Збоку в кукурудзі зозуля кувала,
Накувала мамі ще одну дитину,
І понесли бузька в ліжко під перину.

Приспів. (2)

Далі місяць пили, бузьків прихвалили,
Діти, як курчата, по селі ходили.
Пів села Ганусьок, пів села Марусьок,
Отакий кавалєр - довгодзьобий бузьок!

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6218899_l1','pisniua_6218899','YouTube','https://www.youtube.com/watch?v=P-tJCLECJrE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6218899_l2','pisniua_6218899','YouTube','https://www.youtube.com/watch?v=IXNA8uL7Cro','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6220246';
DELETE FROM song_versions WHERE song_id = 'pisniua_6220246';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6220246';
DELETE FROM songs WHERE id = 'pisniua_6220246';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6220246','Дві лебідки','Музика: Тетяна Кисленко Слова: Т. Василько','uk','ukraine_1991',NULL,NULL,'Авторське подання: Т. Василько. Моя пісня. – Львів:Сполом, 2004. – 120 с.',NULL,'Дві лебідки, дві лебідки,
Поміж ними лебідь,
Дві сусідки, дві сусідки,
А між ними леѓінь.
Дві лебідки, дві лебідки
Плавають край броду,
Дві сусідки, дві сусідки
Каламутять воду.

Приспів:
Леґінь, леґінь все веслує,
Леґінь рибку ловить
Та й лебідоньку чарує,
З нею мову мовить:
"От, як вижнеться пшениця,
Та й пожовкне зілля,
Як в людей усе годиться,
Буде в нас весілля!"

Лебідь, лебідь, білий-білий,
Всі його питають:
Нащо йому дві лебідки -
Най щось люди мають!

Приспів.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6220246'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6220246','Дві лебідки','Дві лебідки, дві лебідки,
Поміж ними лебідь,
Дві сусідки, дві сусідки,
А між ними леѓінь.
Дві лебідки, дві лебідки
Плавають край броду,
Дві сусідки, дві сусідки
Каламутять воду.

Приспів:
Леґінь, леґінь все веслує,
Леґінь рибку ловить
Та й лебідоньку чарує,
З нею мову мовить:
"От, як вижнеться пшениця,
Та й пожовкне зілля,
Як в людей усе годиться,
Буде в нас весілля!"

Лебідь, лебідь, білий-білий,
Всі його питають:
Нащо йому дві лебідки -
Най щось люди мають!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_62252';
DELETE FROM song_versions WHERE song_id = 'pisniua_62252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_62252';
DELETE FROM songs WHERE id = 'pisniua_62252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_62252','Пригадай оці волошки',NULL,'uk','ukraine_1991',NULL,NULL,'Співаник для таборів Марійської Дружини',NULL,'Пригадай оці волошки, сині квіти
Як волосся тобі ніжно пестив вітер,
Як за обрій п''яну ніч тверезить ранок,
Все минуло, промайнуло, мов в тумані.
Все минуло, промайнуло і розлука,
З того часу, як сплелися наші руки,
Що сподобав собі іншу я не проти
То ж навіщо на весілля мене просиш?
Я прийду, мов не болить мене нітрошки
І врочисто принесу тобі волошки.
Дрібний цвіт твоїх очей і чисті сльози,
Вже між нами заметілі і морози.
Йдеш заплакана до шлюбу, віє вітер,
Він за мене ніжно сльози тобі витер.
А як будуть синьоокі в тебе діти -
Пригадай оці волошки, сині квіти.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_62252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_62252','Пригадай оці волошки','Пригадай оці волошки, сині квіти
Як волосся тобі ніжно пестив вітер,
Як за обрій п''яну ніч тверезить ранок,
Все минуло, промайнуло, мов в тумані.
Все минуло, промайнуло і розлука,
З того часу, як сплелися наші руки,
Що сподобав собі іншу я не проти
То ж навіщо на весілля мене просиш?
Я прийду, мов не болить мене нітрошки
І врочисто принесу тобі волошки.
Дрібний цвіт твоїх очей і чисті сльози,
Вже між нами заметілі і морози.
Йдеш заплакана до шлюбу, віє вітер,
Він за мене ніжно сльози тобі витер.
А як будуть синьоокі в тебе діти -
Пригадай оці волошки, сині квіти.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_62252_l1','pisniua_62252','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_623858';
DELETE FROM song_versions WHERE song_id = 'pisniua_623858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_623858';
DELETE FROM songs WHERE id = 'pisniua_623858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_623858','Колискова','Музика: Анатолій Андрухов Слова: Олександр Богачук','uk','ukraine_1991',NULL,NULL,'надіслав Ярослав Богачук',NULL,'В ніч найсвітлішу, в ніч найгустішу
Бачу, як висне колиска...
Тишу гойдає, розгойдує тишу
Ніжна рука материнська.

Явір шепоче і шепче ліщина,
Рідна ліщина поліська...
В кожної птахи є мила пташина —
Ніжна любов материнська.

Хмарка у сні обнялася з туманом,
Спить над дібровою низько...
Хмарка не хоче, щоб хмарилась рано
Ніжна краса материнська.

Бачу приплющені втомлені очі.
Чую здалека і зблизька:
Тишу колише, гойдає щоночі —
Ніжна рука материнська.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_623858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_623858','Колискова','В ніч найсвітлішу, в ніч найгустішу
Бачу, як висне колиска...
Тишу гойдає, розгойдує тишу
Ніжна рука материнська.

Явір шепоче і шепче ліщина,
Рідна ліщина поліська...
В кожної птахи є мила пташина —
Ніжна любов материнська.

Хмарка у сні обнялася з туманом,
Спить над дібровою низько...
Хмарка не хоче, щоб хмарилась рано
Ніжна краса материнська.

Бачу приплющені втомлені очі.
Чую здалека і зблизька:
Тишу колише, гойдає щоночі —
Ніжна рука материнська.');
DELETE FROM song_links WHERE song_id = 'pisniua_6244673';
DELETE FROM song_versions WHERE song_id = 'pisniua_6244673';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6244673';
DELETE FROM songs WHERE id = 'pisniua_6244673';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6244673','Ха-ха-ха','Музика: Михайло Хома, Олег Турко Слова: Михайло Хома. Виконує: DZIDZIO','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Заходжу в магазин на пиво розливне,
Без лівчика мала його там продає.
Просвітчується всьо, так чотко бачу їх,
От іменно за то, я люблю всіх чувіх.
Приспів:
Ха-ха-ха без лівчика мала,
У неї через майку чьотко видно
Два круга.
Ха-ха-ха, а кльова та мала,
С
В якої через майку, через майку
D
Чотко видно два круга,
Am
Ха-ха!
На вулиці жара, по носі піт тече,
Під музику мала пивко мені несе,
Просвічується всьо, так чотко бачу їх,
От іменно за то, я люблю всіх чувіх!
Приспів. | (2)
Від пива з раками еротика пішла,
Вона відро води на себе вилила.
Просвічується всьо, так чотко бачу їх,
От іменно за то, я люблю всіх чувіх!
Я люблю всіх чувіх!
Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6244673'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6244673','Ха-ха-ха','Заходжу в магазин на пиво розливне,
Без лівчика мала його там продає.
Просвітчується всьо, так чотко бачу їх,
От іменно за то, я люблю всіх чувіх.
Приспів:
Ха-ха-ха без лівчика мала,
У неї через майку чьотко видно
Два круга.
Ха-ха-ха, а кльова та мала,
С
В якої через майку, через майку
D
Чотко видно два круга,
Am
Ха-ха!
На вулиці жара, по носі піт тече,
Під музику мала пивко мені несе,
Просвічується всьо, так чотко бачу їх,
От іменно за то, я люблю всіх чувіх!
Приспів. | (2)
Від пива з раками еротика пішла,
Вона відро води на себе вилила.
Просвічується всьо, так чотко бачу їх,
От іменно за то, я люблю всіх чувіх!
Я люблю всіх чувіх!
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6244673_l1','pisniua_6244673','YouTube','https://www.youtube.com/watch?v=fCMvWoAq9Io','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6244673_l2','pisniua_6244673','YouTube','https://www.youtube.com/watch?v=vDQlRbwHFOo','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6241695';
DELETE FROM song_versions WHERE song_id = 'pisniua_6241695';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6241695';
DELETE FROM songs WHERE id = 'pisniua_6241695';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6241695','Я поклав своє кохання на вівтар','Музика: Степан Гіга Слова: Анатолій Фіглюк. Виконує: Степан Гіга','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Осінь залистопадила,
У душі задощило,
Ти кохання не зрадила,
Ти його загубила...
Те, що серцем я вимріяв,   |
Зберегти не змогла ти,     |
Журавлиному вирію          |
Віддала на крилята.        | (2)

Приспів:
А я поклав своє кохання    |
На вівтар                  |
І його благословив         |
Небесний цар,              |
А ти любов мою розбила,    |
Мов кришталь,              |
І за тим тобі, що сталося, |
Не жаль...                 | (2)

Були ночі вінчальними,
Птаха щастя кружляла,
Та з гіркими печалями
Нас журба повінчала...
Нас любов повінчала,
Не Всевишнього волею,      |
А твоїм небажанням         |
Не зустрілися з долею,     |
Розминулись з коханням...  | (2)

Приспів.

Не Всевишнього волею,      |
А твоїм небажанням         |
Не зустрілися з долею,     |
Розминулись з коханням...  | (2)

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''cat:nostalgia'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6241695'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6241695','Я поклав своє кохання на вівтар','Осінь залистопадила,
У душі задощило,
Ти кохання не зрадила,
Ти його загубила...
Те, що серцем я вимріяв,   |
Зберегти не змогла ти,     |
Журавлиному вирію          |
Віддала на крилята.        | (2)

Приспів:
А я поклав своє кохання    |
На вівтар                  |
І його благословив         |
Небесний цар,              |
А ти любов мою розбила,    |
Мов кришталь,              |
І за тим тобі, що сталося, |
Не жаль...                 | (2)

Були ночі вінчальними,
Птаха щастя кружляла,
Та з гіркими печалями
Нас журба повінчала...
Нас любов повінчала,
Не Всевишнього волею,      |
А твоїм небажанням         |
Не зустрілися з долею,     |
Розминулись з коханням...  | (2)

Приспів.

Не Всевишнього волею,      |
А твоїм небажанням         |
Не зустрілися з долею,     |
Розминулись з коханням...  | (2)

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6241695_l1','pisniua_6241695','YouTube','https://www.youtube.com/watch?v=2SF0aVzkQiM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6241695_l2','pisniua_6241695','YouTube','https://www.youtube.com/watch?v=eZ8ownmj_Ik','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6238246';
DELETE FROM song_versions WHERE song_id = 'pisniua_6238246';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6238246';
DELETE FROM songs WHERE id = 'pisniua_6238246';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6238246','Колисанка ночі','Музика: Ірина Музика Слова: Наталя Гуркіна. Виконує: Ірина Музика','uk','ukraine_1991',NULL,NULL,NULL,'Аранжування - Сергій Степанів.','Заснули котенята,
Бачать сни качата,
Сонечко на небі теж спить.
Нічка усе вкрила,
Коси розпустила,
Колискова пісня летить.   | (2)

Сплять у стайні коні,
В зоопарку - поні,
Квіточка в садочку теж спить.
І дерева й трави
Бачать сни дубраві,
Зіронька на небі блищить. | (2)

Сплять маленькі діти,
Казками сповиті,
Пісенька любові дзвенить.
Щоб приколисати,
Сни подарувати,
Ніжно обіймати в цю мить.
Щоб заколихати,
Спокій дарувати,
Колисанка ночі летить...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6238246'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6238246','Колисанка ночі','Заснули котенята,
Бачать сни качата,
Сонечко на небі теж спить.
Нічка усе вкрила,
Коси розпустила,
Колискова пісня летить.   | (2)

Сплять у стайні коні,
В зоопарку - поні,
Квіточка в садочку теж спить.
І дерева й трави
Бачать сни дубраві,
Зіронька на небі блищить. | (2)

Сплять маленькі діти,
Казками сповиті,
Пісенька любові дзвенить.
Щоб приколисати,
Сни подарувати,
Ніжно обіймати в цю мить.
Щоб заколихати,
Спокій дарувати,
Колисанка ночі летить...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6238246_l1','pisniua_6238246','YouTube','https://www.youtube.com/watch?v=z7QgG9ZJ1Mo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6252940';
DELETE FROM song_versions WHERE song_id = 'pisniua_6252940';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6252940';
DELETE FROM songs WHERE id = 'pisniua_6252940';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6252940','Заспівай, матусю, колискову','Музика: Тетяна Димань Слова: Тетяна Петровська. Виконує: Антоніна Осипчук','uk','ukraine_1991',NULL,NULL,'Авторський примірник','Русина (Руслана Лоцман). Учні школи мистецтв №8 м. Києва.','Заспівай, матусю, колискову.
Може, я в дитинство увійду.
Колосків послухаю розмову,
Нескінченну дзигу заведу.
Заспівай, матусю, хай відчую,
Що є серце більше, ніж моє.
Хай теплом промінчик поцілує
І гніздечко ластівка зів''є.

А... А...

Заспіваай! Так хочеться співати.
Та сама не знаю я всіх слів.
Їх згадати може тільки мати,
Що чекає дочок і синів.
Колискову мати заспівала,
І у двері стукали літа,
Бо вона її не забувала,
Бо проста мелодія свята.

А... А... А','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6252940'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6252940','Заспівай, матусю, колискову','Заспівай, матусю, колискову.
Може, я в дитинство увійду.
Колосків послухаю розмову,
Нескінченну дзигу заведу.
Заспівай, матусю, хай відчую,
Що є серце більше, ніж моє.
Хай теплом промінчик поцілує
І гніздечко ластівка зів''є.

А... А...

Заспіваай! Так хочеться співати.
Та сама не знаю я всіх слів.
Їх згадати може тільки мати,
Що чекає дочок і синів.
Колискову мати заспівала,
І у двері стукали літа,
Бо вона її не забувала,
Бо проста мелодія свята.

А... А... А');
DELETE FROM song_links WHERE song_id = 'pisniua_6259374';
DELETE FROM song_versions WHERE song_id = 'pisniua_6259374';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6259374';
DELETE FROM songs WHERE id = 'pisniua_6259374';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6259374','Спи моє дитятко','Слова: Віталій Войтко','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Оченята сонні,
Ротик позіхає,
Це в моїх долонях
Доня засинає.
Ніжно притулюся
Серцем до серденька,
Щоб спокійно спала
Донечка маленька.

Приспів:
Спи, дитино, тихо-тихо,
Очки закривай.
Хай тебе минає лихо,
Баю, баю, бай.

Спи, моя маленька,
У долоньках в тата.
Я тебе легенько
Буду колихати.
Хай тобі всю нічку
Сон спокійний сниться
Прилетить у гості
Чарівна жар-птиця.

Приспів.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6259374'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6259374','Спи моє дитятко','Оченята сонні,
Ротик позіхає,
Це в моїх долонях
Доня засинає.
Ніжно притулюся
Серцем до серденька,
Щоб спокійно спала
Донечка маленька.

Приспів:
Спи, дитино, тихо-тихо,
Очки закривай.
Хай тебе минає лихо,
Баю, баю, бай.

Спи, моя маленька,
У долоньках в тата.
Я тебе легенько
Буду колихати.
Хай тобі всю нічку
Сон спокійний сниться
Прилетить у гості
Чарівна жар-птиця.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6274991';
DELETE FROM song_versions WHERE song_id = 'pisniua_6274991';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6274991';
DELETE FROM songs WHERE id = 'pisniua_6274991';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6274991','Різдвяна','Музика: Т.І.К. (Тік) Слова: народні. Виконує: Т.І.К. (Тік)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У лісі, лісі темному,
Де ходить хитрий лис,
Росла собі ялиночка
І зайчик з нею ріс.
Ой, снігу, снігу білого
Насипала зима.
Прийшов сховатись заїнько -
Ялиноньки нема!

Приспів:
А снігу білого насипала зима
Різдво і Новий рік принесла нам вона.
У новорічні свята трапляються дива -
Ми щиро всім бажаємо щасливого Різдва!

Ішов тим лісом Дід Мороз,
Червоний в нього ніс,
Він зайчика-стрибайчика
У торбі нам приніс.
Маленький сірий заїнько,
Іди, іди до нас!
Дивись, твоя ялиночка
Горить на весь палац!

Приспів. (2)

Щасливого Різдва!
Щасливого Різдва!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6274991'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6274991','Різдвяна','У лісі, лісі темному,
Де ходить хитрий лис,
Росла собі ялиночка
І зайчик з нею ріс.
Ой, снігу, снігу білого
Насипала зима.
Прийшов сховатись заїнько -
Ялиноньки нема!

Приспів:
А снігу білого насипала зима
Різдво і Новий рік принесла нам вона.
У новорічні свята трапляються дива -
Ми щиро всім бажаємо щасливого Різдва!

Ішов тим лісом Дід Мороз,
Червоний в нього ніс,
Він зайчика-стрибайчика
У торбі нам приніс.
Маленький сірий заїнько,
Іди, іди до нас!
Дивись, твоя ялиночка
Горить на весь палац!

Приспів. (2)

Щасливого Різдва!
Щасливого Різдва!');
DELETE FROM song_links WHERE song_id = 'pisniua_6284899';
DELETE FROM song_versions WHERE song_id = 'pisniua_6284899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6284899';
DELETE FROM songs WHERE id = 'pisniua_6284899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6284899','Спи, дитинко, спи','Музика: В. Бабій Слова: народні','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Спи, дитинко, спи,
Очка зажмури.
Будеш ти тихенько спати,
Над тобою твоя мати
Шепче молитви.
Спи, дитинко, спи...

Спи, дитинко, спи,
Очка зажмури.
Будеш ти тихенько спати,
Над тобою твоя мати
Шепче молитви.
Спи, дитинко, спи...

Спи, дитинко, спи,
Очка зажмури.
Будеш ти тихенько спати,
Над тобою твоя мати
Шепче молитви.
Спи, дитинко, спи...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6284899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6284899','Спи, дитинко, спи','Спи, дитинко, спи,
Очка зажмури.
Будеш ти тихенько спати,
Над тобою твоя мати
Шепче молитви.
Спи, дитинко, спи...

Спи, дитинко, спи,
Очка зажмури.
Будеш ти тихенько спати,
Над тобою твоя мати
Шепче молитви.
Спи, дитинко, спи...

Спи, дитинко, спи,
Очка зажмури.
Будеш ти тихенько спати,
Над тобою твоя мати
Шепче молитви.
Спи, дитинко, спи...');
DELETE FROM song_links WHERE song_id = 'pisniua_629252';
DELETE FROM song_versions WHERE song_id = 'pisniua_629252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_629252';
DELETE FROM songs WHERE id = 'pisniua_629252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_629252','Котики вербові','Музика: В. Рановський Слова: Н. Бідик','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Люлі, люлі, люлі... Вітер сповиває.
Люлі, люлі, люлі... Котиків гойдає.
Приспів:
Вітерець співає - котики муркочуть,
Шорсткою м''якою носики лоскочуть.
Котики вербові, тихі та пухнасті,
Уквітчали віття кущиків гіллястих.
Приспів.
Легіт колисає в гойдалці вербовій,
Котикам сіреньким надихає спокій.
Приспів.
Люлі, люлі, люлї... Вітерець гойдає,
Котиків сіреньких любо присипає.
Приспів.
Сплять собі, принишкли й вушка поскладали.
Добре в верболозі їх заколисали.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_629252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_629252','Котики вербові','Люлі, люлі, люлі... Вітер сповиває.
Люлі, люлі, люлі... Котиків гойдає.
Приспів:
Вітерець співає - котики муркочуть,
Шорсткою м''якою носики лоскочуть.
Котики вербові, тихі та пухнасті,
Уквітчали віття кущиків гіллястих.
Приспів.
Легіт колисає в гойдалці вербовій,
Котикам сіреньким надихає спокій.
Приспів.
Люлі, люлі, люлї... Вітерець гойдає,
Котиків сіреньких любо присипає.
Приспів.
Сплять собі, принишкли й вушка поскладали.
Добре в верболозі їх заколисали.');
DELETE FROM song_links WHERE song_id = 'pisniua_6327757';
DELETE FROM song_versions WHERE song_id = 'pisniua_6327757';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6327757';
DELETE FROM songs WHERE id = 'pisniua_6327757';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6327757','Твої гріхи','Музика: Тіна Кароль Слова: Дмитро Тубольцев. Виконує: Тіна Кароль','uk','ukraine_1991',NULL,NULL,'https://www.youtube.com/watch?v=S7wX6WM1EXI "Відео, кліпи"',NULL,'Ти, попри біль і втому,
Моє серце руками прикрив.
Вітер, що йде за тобою,
То є гріх, що собі не простив.
Повернись, я приймаю біль
Твоїх очей, так глибоко самотніх,
Самотньо-глибоких очей...

Приспів:
Де двоє нас, лише одна тінь,
Твої гріхи зав''язали очі мої.
Де двоє нас, лише одна тінь,
Повернись,
Не залишу тебе в самоті...

Я, попри біль і втому,
Твоє серце руками прикрила.
Разом ми, але річ не в тому,
Я не можу розправити крила...
Повернись, я приймаю біль
Твоїх очей, так глибоко самотніх,
Самотньо-глибоких очей...

Приспів.

Я, розчиняюсь у твоїх очах,
Ти - моє божевілля
І кохання водночас.
Якщо не зможем ми іти
Одним шляхом удвох,
Землі залишим одну тінь
На крилах чотирьох...

Приспів.

Ти, попри біль і втому,
Моє серце руками прикрив...','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6327757'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6327757','Твої гріхи','Ти, попри біль і втому,
Моє серце руками прикрив.
Вітер, що йде за тобою,
То є гріх, що собі не простив.
Повернись, я приймаю біль
Твоїх очей, так глибоко самотніх,
Самотньо-глибоких очей...

Приспів:
Де двоє нас, лише одна тінь,
Твої гріхи зав''язали очі мої.
Де двоє нас, лише одна тінь,
Повернись,
Не залишу тебе в самоті...

Я, попри біль і втому,
Твоє серце руками прикрила.
Разом ми, але річ не в тому,
Я не можу розправити крила...
Повернись, я приймаю біль
Твоїх очей, так глибоко самотніх,
Самотньо-глибоких очей...

Приспів.

Я, розчиняюсь у твоїх очах,
Ти - моє божевілля
І кохання водночас.
Якщо не зможем ми іти
Одним шляхом удвох,
Землі залишим одну тінь
На крилах чотирьох...

Приспів.

Ти, попри біль і втому,
Моє серце руками прикрив...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6327757_l1','pisniua_6327757','YouTube','https://www.youtube.com/watch?v=S7wX6WM1EXI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6327757_l2','pisniua_6327757','YouTube','https://www.youtube.com/watch?v=WCNF0swDFaY','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6327757_l3','pisniua_6327757','YouTube','https://www.youtube.com/watch?v=QhWHaOciINM','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_6337959';
DELETE FROM song_versions WHERE song_id = 'pisniua_6337959';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6337959';
DELETE FROM songs WHERE id = 'pisniua_6337959';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6337959','Батьківська старенька хата','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Рідна хатино моя, батьківський поріг,
Де біля стайні ще стоїть оборіг,
Де влітку, коли починало світати,
Батько вставав свою косу клепати.

Приспів:
Батьківська хатино, мій оберіг,
Сюди приїжджаю з далеких доріг,
Туди, де білий бузок пишно цвіте,
Туди, де червона калина росте!...

Рідна хатино, ровеснице моя,
І в тебе, і в мене доля одна.
По життю в ногу разом ми йдемо,
Радість і тягар його несемо.

Приспів.

До старої хатини тихо зайду,
Перед образом на коліна стану:
За батька, маму своїх помолюсь,
Що давно їх нема уже з нами...

Приспів.','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6337959'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6337959','Батьківська старенька хата','Рідна хатино моя, батьківський поріг,
Де біля стайні ще стоїть оборіг,
Де влітку, коли починало світати,
Батько вставав свою косу клепати.

Приспів:
Батьківська хатино, мій оберіг,
Сюди приїжджаю з далеких доріг,
Туди, де білий бузок пишно цвіте,
Туди, де червона калина росте!...

Рідна хатино, ровеснице моя,
І в тебе, і в мене доля одна.
По життю в ногу разом ми йдемо,
Радість і тягар його несемо.

Приспів.

До старої хатини тихо зайду,
Перед образом на коліна стану:
За батька, маму своїх помолюсь,
Що давно їх нема уже з нами...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6337656';
DELETE FROM song_versions WHERE song_id = 'pisniua_6337656';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6337656';
DELETE FROM songs WHERE id = 'pisniua_6337656';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6337656','Коню мій вороненький','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Пливе по долині сизий туман,
На гори та й ліси він осідає
Спішить додому молоденький козак ,
Коник його копита собі оббиває.

Приспів:
Ой коню мій ти вороненький,
До рідного дому спіши, поспіши!
Коню товаришу мій ти вірненький,
До дівчини дорогу швидко долай!

Копитами коник вороний цокоче,
По дорозі дуже швидко  біжить.
Його дівчина заміж виходить
Тому козаченько додому спішить.

Приспів:

Дівчина його заміж виходить,
Яка його щиро і вірно кохала.
Бо що давно він в бою загинув,
Подружка лукава таке їй набрехала

Приспів:','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6337656'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6337656','Коню мій вороненький','Пливе по долині сизий туман,
На гори та й ліси він осідає
Спішить додому молоденький козак ,
Коник його копита собі оббиває.

Приспів:
Ой коню мій ти вороненький,
До рідного дому спіши, поспіши!
Коню товаришу мій ти вірненький,
До дівчини дорогу швидко долай!

Копитами коник вороний цокоче,
По дорозі дуже швидко  біжить.
Його дівчина заміж виходить
Тому козаченько додому спішить.

Приспів:

Дівчина його заміж виходить,
Яка його щиро і вірно кохала.
Бо що давно він в бою загинув,
Подружка лукава таке їй набрехала

Приспів:');
DELETE FROM song_links WHERE song_id = 'pisniua_6339454';
DELETE FROM song_versions WHERE song_id = 'pisniua_6339454';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6339454';
DELETE FROM songs WHERE id = 'pisniua_6339454';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6339454','Ніч така гарна','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Ніч така гарная, зоряна, ясная,
І зіроньки в небі яскраво горять.
Вставай, мила, вставай, моя рибко,  |
Підемо в широкеє поле гулять...     | (2)

Ой, не встану і гуляти не вийду,
І на вулицю з тобою я не піду.
Рано, ранесенько так собі ляжу,     |
Та й аж до ранку спати буду.        | (2)

Вставай, мила, вставай, моя пташко,
Бо ясен місяць на небі зійшов,
Вставай, коханая дівчинонько,       |
Бо я під віконце прийшов.           | (2)

Не встану, милий мій чорнобривий,
І розмови з тобою вести не буду,
Хоч хлопчина ти є і вродливий,      |
Та накличеш ще на мене біду.        | (2)

Не встану і до розмови не стану,
Бо мати на тебе дуже лиха,
Каже хлопчина ти є непевний,        |
То ще доведеш мене до гріха.        | (2)

Не слухай матусю свою, дівчинонько,
А ходімо разом в поле гулять,
Там в широкому та чистому полі      |
Квіточки з тобою будем збирать.     | (2)

Дуриш, дуриш  мене ти  козаче,
Де побачиш в ночі ці квіточки.
Заманиш мене в те гарнеє поле,      |
Та й будуть про мене тоді пліточки. | (2)

Не бійся мене, дівчинонько,
Не лихії, а чесні думи мої,
Лежатимемо ми на копиці             |
І співатимуть нам вночі солов''ї.    | (2)

Бо ж дуриш, дуриш мене, козаче,
Тільки дурень того не знає,
Що соловейко міцно спить вночі      |
І тільки вдень пісні співає.        | (2)

Темною нічкою, добре я знаю,
Тільки жаби в озері квачуть.
А ті дівчата, що хлопцям повірять,  |
Потім гірко гіркесенько плачуть.    | (2)

Не переживай, моя дівчинонько,
Чого тобі так та й переживати,
Переділимось ми з тобою газетою,    |
Та й цілу нічку так будем лежати.   | (2)','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6339454'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6339454','Ніч така гарна','Ніч така гарная, зоряна, ясная,
І зіроньки в небі яскраво горять.
Вставай, мила, вставай, моя рибко,  |
Підемо в широкеє поле гулять...     | (2)

Ой, не встану і гуляти не вийду,
І на вулицю з тобою я не піду.
Рано, ранесенько так собі ляжу,     |
Та й аж до ранку спати буду.        | (2)

Вставай, мила, вставай, моя пташко,
Бо ясен місяць на небі зійшов,
Вставай, коханая дівчинонько,       |
Бо я під віконце прийшов.           | (2)

Не встану, милий мій чорнобривий,
І розмови з тобою вести не буду,
Хоч хлопчина ти є і вродливий,      |
Та накличеш ще на мене біду.        | (2)

Не встану і до розмови не стану,
Бо мати на тебе дуже лиха,
Каже хлопчина ти є непевний,        |
То ще доведеш мене до гріха.        | (2)

Не слухай матусю свою, дівчинонько,
А ходімо разом в поле гулять,
Там в широкому та чистому полі      |
Квіточки з тобою будем збирать.     | (2)

Дуриш, дуриш  мене ти  козаче,
Де побачиш в ночі ці квіточки.
Заманиш мене в те гарнеє поле,      |
Та й будуть про мене тоді пліточки. | (2)

Не бійся мене, дівчинонько,
Не лихії, а чесні думи мої,
Лежатимемо ми на копиці             |
І співатимуть нам вночі солов''ї.    | (2)

Бо ж дуриш, дуриш мене, козаче,
Тільки дурень того не знає,
Що соловейко міцно спить вночі      |
І тільки вдень пісні співає.        | (2)

Темною нічкою, добре я знаю,
Тільки жаби в озері квачуть.
А ті дівчата, що хлопцям повірять,  |
Потім гірко гіркесенько плачуть.    | (2)

Не переживай, моя дівчинонько,
Чого тобі так та й переживати,
Переділимось ми з тобою газетою,    |
Та й цілу нічку так будем лежати.   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_6338899';
DELETE FROM song_versions WHERE song_id = 'pisniua_6338899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6338899';
DELETE FROM songs WHERE id = 'pisniua_6338899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6338899','Смереки','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Піду в гори Карпати зелені,
Тут стежина життя пролягла,
Де смереки стоять кучеряві
І бурштином іскриться смола.

Приспів:
Смереки, чарівні ви смереки,
Люблю хвоїнки я ваші в росі.
Такі серцю близькі та милі,
Ви красуні сріблясті мої.

Із далеких країв повернувся,
І зайшов  в смерекові ліси,
Тут барвінок мені усміхнувся,
З Іван-чаю напився роси.

Приспів.

У тих світах, де колись побував,
В ліси смерекові  пішов,
Та миліших за наші смерічки,
Там дерев я не знайшов...

Приспів.

Я зайду в густі смерекові ліси,
Смереку найвищу тут  віднайду,
Вимащу руки в ароматній смолі,
Та й щасливий ніжно її обніму.

Приспів:','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6338899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6338899','Смереки','Піду в гори Карпати зелені,
Тут стежина життя пролягла,
Де смереки стоять кучеряві
І бурштином іскриться смола.

Приспів:
Смереки, чарівні ви смереки,
Люблю хвоїнки я ваші в росі.
Такі серцю близькі та милі,
Ви красуні сріблясті мої.

Із далеких країв повернувся,
І зайшов  в смерекові ліси,
Тут барвінок мені усміхнувся,
З Іван-чаю напився роси.

Приспів.

У тих світах, де колись побував,
В ліси смерекові  пішов,
Та миліших за наші смерічки,
Там дерев я не знайшов...

Приспів.

Я зайду в густі смерекові ліси,
Смереку найвищу тут  віднайду,
Вимащу руки в ароматній смолі,
Та й щасливий ніжно її обніму.

Приспів:');
DELETE FROM song_links WHERE song_id = 'pisniua_6339644';
DELETE FROM song_versions WHERE song_id = 'pisniua_6339644';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6339644';
DELETE FROM songs WHERE id = 'pisniua_6339644';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6339644','Де ти, козаче, ходиш?','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Де ти, козаче, ходиш?
Чому ночами не спиш?
Голову дівчині морочиш,
Потім до другої біжиш.

Голову ти їй морочиш,
До другої потім ідеш,
А серце дівоче не камінь,
Вважай, бо його розіб''єш.

Серце дівоче - не камінь,
А сльози її - не чиста вода.
Кохай дівчину ти щиро,
Поки вона ще молода.

З роками дівчина розквітає
І милішає в наших очах,
А коли ще й щиро кохає,
То милого бачить у снах.

Де ж ти, козаче, ходиш?
Чому ж ночами не спиш?
Голову дівчині морочиш,
А під вінець не ведеш?..','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6339644'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6339644','Де ти, козаче, ходиш?','Де ти, козаче, ходиш?
Чому ночами не спиш?
Голову дівчині морочиш,
Потім до другої біжиш.

Голову ти їй морочиш,
До другої потім ідеш,
А серце дівоче не камінь,
Вважай, бо його розіб''єш.

Серце дівоче - не камінь,
А сльози її - не чиста вода.
Кохай дівчину ти щиро,
Поки вона ще молода.

З роками дівчина розквітає
І милішає в наших очах,
А коли ще й щиро кохає,
То милого бачить у снах.

Де ж ти, козаче, ходиш?
Чому ж ночами не спиш?
Голову дівчині морочиш,
А під вінець не ведеш?..');
DELETE FROM song_links WHERE song_id = 'pisniua_6340542';
DELETE FROM song_versions WHERE song_id = 'pisniua_6340542';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6340542';
DELETE FROM songs WHERE id = 'pisniua_6340542';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6340542','Наречена','Слова: Володимир Дашавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Наречена сьогодні ти  наречена,
Золотим перстнем уже обручена,
У вальсі так весело кружляєш,
Білою лебідкою тепер виглядаєш.

Приспів:
Весело гуляє  у нас весілля,
Радіють друзі, веселиться рідня,
Бо дві половинки сердечок знайшлись,
І навіки в єдино вони тут злились.

Весільна музика  весело грає,
Голосно бубон їй в такт виграє,
То Роман Іру дуже щиро кохає
І за дружину собі її він бере!

Приспів.

Коломийка лунає так дзвінко,
Що луна аж понад горами іде.
Молодятам  ми крикнемо "Гірко!",
Поцілунком скріпіть ви щастя своє.

Приспів.

Веселиться,гуляє в селі весілля,
Та горілка тая гірка як смола,
І щоб легко було нам її пити,
Попросим дружбів  її солодити:
Гірко! Гірко! Гірко! Гірко!','[''pisni.org.ua'', ''cat:boykivski'', ''Пісні з Бойківщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6340542'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6340542','Наречена','Наречена сьогодні ти  наречена,
Золотим перстнем уже обручена,
У вальсі так весело кружляєш,
Білою лебідкою тепер виглядаєш.

Приспів:
Весело гуляє  у нас весілля,
Радіють друзі, веселиться рідня,
Бо дві половинки сердечок знайшлись,
І навіки в єдино вони тут злились.

Весільна музика  весело грає,
Голосно бубон їй в такт виграє,
То Роман Іру дуже щиро кохає
І за дружину собі її він бере!

Приспів.

Коломийка лунає так дзвінко,
Що луна аж понад горами іде.
Молодятам  ми крикнемо "Гірко!",
Поцілунком скріпіть ви щастя своє.

Приспів.

Веселиться,гуляє в селі весілля,
Та горілка тая гірка як смола,
І щоб легко було нам її пити,
Попросим дружбів  її солодити:
Гірко! Гірко! Гірко! Гірко!');
DELETE FROM song_links WHERE song_id = 'pisniua_635271';
DELETE FROM song_versions WHERE song_id = 'pisniua_635271';
DELETE FROM songs_fts WHERE song_id = 'pisniua_635271';
DELETE FROM songs WHERE id = 'pisniua_635271';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_635271','Та Нема Гірш Нікому','Музика: народна, Тартак Слова: народні, Тартак. Виконує: Тартак, Гуляйгород','uk','ukraine_1991',NULL,NULL,'http://www.tartak.com.ua',NULL,'Буду, буду, буду, буду битися -
Нема чого на мене так дивитися!
Все життя без тата, все життя без мами,
Дорогу пробиваю сам - кулаками!
Весь світ проти мене, я весь проти світу.
Я дам собі ради - не вчіть мене жити!
Це хто там кричить: "Заспокойся, малий!"?
Не лізьте до мене, тому що я злий!

Та нема гірш нікому ой як тій сиротині,
Ой ніхто не пригорне при лихій годині.

І знову я починаю махатися -
Не варто було до мене чіплятися!
Якби я пробачив найменшу образу,
То б самоповагу втратив одразу.
Хто мені казатиме, що так не можна,
Хай краще дасть грошей - і тим допоможе!
А воду холодну на мене не лий -
Я не охолону, тому що я - злий!

Та не пригорне батько, та не пригорне мати,
А тілько той пригорне, що думає брати.

І кожного разу, коли хтось лізе в душу,
Стаю за себе муром, бо так ставати мушу.
Так бійка за бійкою, немов крок за кроком.
Та, часом, моя злість вилазить мені боком...

Ой налетіли гуси ой з далекого краю,
Ой сколотили воду в тихому Дунаї.

Ой бодай же ви, гуси, ой з пір''ячком пропали,
Ой як ми любилися, тепер перестали.
Ой як ми любилися, ой як зерно в горісі,
А тепер розійшлися, як туман по лісі.
Ой як ми любилися, ой як голубів пара,
А тепер розійшлися, як чорная хмара.
Ой як ми любилися, ой риба з водою,
А тепер розійшлися, як брат із сестрою.','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_635271'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_635271','Та Нема Гірш Нікому','Буду, буду, буду, буду битися -
Нема чого на мене так дивитися!
Все життя без тата, все життя без мами,
Дорогу пробиваю сам - кулаками!
Весь світ проти мене, я весь проти світу.
Я дам собі ради - не вчіть мене жити!
Це хто там кричить: "Заспокойся, малий!"?
Не лізьте до мене, тому що я злий!

Та нема гірш нікому ой як тій сиротині,
Ой ніхто не пригорне при лихій годині.

І знову я починаю махатися -
Не варто було до мене чіплятися!
Якби я пробачив найменшу образу,
То б самоповагу втратив одразу.
Хто мені казатиме, що так не можна,
Хай краще дасть грошей - і тим допоможе!
А воду холодну на мене не лий -
Я не охолону, тому що я - злий!

Та не пригорне батько, та не пригорне мати,
А тілько той пригорне, що думає брати.

І кожного разу, коли хтось лізе в душу,
Стаю за себе муром, бо так ставати мушу.
Так бійка за бійкою, немов крок за кроком.
Та, часом, моя злість вилазить мені боком...

Ой налетіли гуси ой з далекого краю,
Ой сколотили воду в тихому Дунаї.

Ой бодай же ви, гуси, ой з пір''ячком пропали,
Ой як ми любилися, тепер перестали.
Ой як ми любилися, ой як зерно в горісі,
А тепер розійшлися, як туман по лісі.
Ой як ми любилися, ой як голубів пара,
А тепер розійшлися, як чорная хмара.
Ой як ми любилися, ой риба з водою,
А тепер розійшлися, як брат із сестрою.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_635271_l1','pisniua_635271','YouTube','https://www.youtube.com/watch?v=gP5271LPXGM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_635252';
DELETE FROM song_versions WHERE song_id = 'pisniua_635252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_635252';
DELETE FROM songs WHERE id = 'pisniua_635252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_635252','Ой Нема Того','Музика: народна, Тартак Слова: народні, Тартак. Виконує: Тартак, Гуляйгород','uk','ukraine_1991',NULL,NULL,'http://www.tartak.com.ua',NULL,'Розбуди мене тихою піснею,
Поцілуй вустами гарячими.
А то сльози мої стали прісними,
Та зіниці стали незрячими.
Моє сонце сховалось за хмарами,
Моє небо фарбується мрякою.
Серце б''ється глухими ударами,
Наче хтось по землі - гіллякою.
Ми колись були світлою силою,
Воювали з темінню хворою.
Тільки сила нам стала немилою -
Замінили силу покорою.
Рідну землю сповили туманами,
Окрутили підступними чарами.
Старші вічно живуть оманами,
А молодші ростуть яничарами.

Ой нема того на селі,
Що у Галочки на столі,
Ой є що їсти, ой є що пити,
Є й кому припросити.

Хто вони - ті, що вчора браталися?
Ті, що вчора горіли, - де вони?
Куди зникли? Що з ними сталося?
Та які їх скрутили демони?
Кожен марить ефектом відсутності,
Уникаючи відповідальності,
І, питаючи правди в підступності,
Вибирає престижні спеціальності.
Відділяє себе від кореня,
Відриває себе від рідного.
Прапор свій пофарбує кольором,
У який фарбувати вигідно.
Кров не точиться свіжими ранами,
Дух потух за мурами-гратами.
Поставали усі ветеранами,
Хоч не встигли побути солдатами.

В неї ненечка старенька,
Як голубочка сивенька,
По хаті ходе, мисочки носе,
Нас до обіду просе.

Залишилися знов, наче сироти,
При дорозі, якою не ходжено.
Хіба можна в своє не вірити?
Хіба ж нас такими народжено?
Заплітаємо слова у речення
Так, що змісту шукати даремно.
Від матеріального забезпечення
У душі стало зимно і темно...

В неї батенька немає,
Дядько за батька вправляє,
По хаті ходе, пляшечки носе,
Нас до горілки просе','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_635252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_635252','Ой Нема Того','Розбуди мене тихою піснею,
Поцілуй вустами гарячими.
А то сльози мої стали прісними,
Та зіниці стали незрячими.
Моє сонце сховалось за хмарами,
Моє небо фарбується мрякою.
Серце б''ється глухими ударами,
Наче хтось по землі - гіллякою.
Ми колись були світлою силою,
Воювали з темінню хворою.
Тільки сила нам стала немилою -
Замінили силу покорою.
Рідну землю сповили туманами,
Окрутили підступними чарами.
Старші вічно живуть оманами,
А молодші ростуть яничарами.

Ой нема того на селі,
Що у Галочки на столі,
Ой є що їсти, ой є що пити,
Є й кому припросити.

Хто вони - ті, що вчора браталися?
Ті, що вчора горіли, - де вони?
Куди зникли? Що з ними сталося?
Та які їх скрутили демони?
Кожен марить ефектом відсутності,
Уникаючи відповідальності,
І, питаючи правди в підступності,
Вибирає престижні спеціальності.
Відділяє себе від кореня,
Відриває себе від рідного.
Прапор свій пофарбує кольором,
У який фарбувати вигідно.
Кров не точиться свіжими ранами,
Дух потух за мурами-гратами.
Поставали усі ветеранами,
Хоч не встигли побути солдатами.

В неї ненечка старенька,
Як голубочка сивенька,
По хаті ходе, мисочки носе,
Нас до обіду просе.

Залишилися знов, наче сироти,
При дорозі, якою не ходжено.
Хіба можна в своє не вірити?
Хіба ж нас такими народжено?
Заплітаємо слова у речення
Так, що змісту шукати даремно.
Від матеріального забезпечення
У душі стало зимно і темно...

В неї батенька немає,
Дядько за батька вправляє,
По хаті ходе, пляшечки носе,
Нас до горілки просе');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_635252_l1','pisniua_635252','YouTube','https://www.youtube.com/watch?v=fpc6qEbsS70','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6359879';
DELETE FROM song_versions WHERE song_id = 'pisniua_6359879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6359879';
DELETE FROM songs WHERE id = 'pisniua_6359879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6359879','Кум - зараза','Музика: Наталія Фаліон Слова: Наталія Фаліон. Виконує: Лісапетний батальйон','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Позичила я куму
Одну кругленьку суму,
Щоб він собі нарешті
Баян новий купив.
А він - така падлюка,
Лиш гроші взяв у руки,
Поїхав до району
І геть усе пропив!

А кум - зараза,    |
Все пропив одразу! |
За що - не знаю,   |
Все йому прощаю!   | (2)

Кум на баяні грає,
На тракторі ганяє,
Костюм спортивний носить
Від фірми "Адідас",
В руках модна барсєтка,
Димиться сигаретка -
І серце завмирає
У кожної із нас!

А кум - зараза     |
Цілує зразу.       |
За що - не знаю,   |
Все йому прощаю!   | (2)

Його стала просити
В садочку покосити,
В городі покопати,
Парканчик підлатати.
А він - така зараза,
Косу зламав одразу,
Город не став копати,
Ліг під парканом спати.

А кум - зараза,    |
Заснув одразу!     |
За що - не знаю,   |
Все йому прощаю!   | (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6359879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6359879','Кум - зараза','Позичила я куму
Одну кругленьку суму,
Щоб він собі нарешті
Баян новий купив.
А він - така падлюка,
Лиш гроші взяв у руки,
Поїхав до району
І геть усе пропив!

А кум - зараза,    |
Все пропив одразу! |
За що - не знаю,   |
Все йому прощаю!   | (2)

Кум на баяні грає,
На тракторі ганяє,
Костюм спортивний носить
Від фірми "Адідас",
В руках модна барсєтка,
Димиться сигаретка -
І серце завмирає
У кожної із нас!

А кум - зараза     |
Цілує зразу.       |
За що - не знаю,   |
Все йому прощаю!   | (2)

Його стала просити
В садочку покосити,
В городі покопати,
Парканчик підлатати.
А він - така зараза,
Косу зламав одразу,
Город не став копати,
Ліг під парканом спати.

А кум - зараза,    |
Заснув одразу!     |
За що - не знаю,   |
Все йому прощаю!   | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6359879_l1','pisniua_6359879','YouTube','https://www.youtube.com/watch?v=ExUalx4u9Bo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_635440';
DELETE FROM song_versions WHERE song_id = 'pisniua_635440';
DELETE FROM songs_fts WHERE song_id = 'pisniua_635440';
DELETE FROM songs WHERE id = 'pisniua_635440';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_635440','Дівчина з Коломиї','Музика: Брати Гадюкіни Слова: Брати Гадюкіни. Виконує: Брати Гадюкіни','uk','ukraine_1991',NULL,NULL,'записано на слух','Підбирання: Євген Шульга В альбомі пісня грається у тональності H (на півтона нижче)','C
Дівчина з Коломиї, гарна та пишна,
Ти з трамваю шестьорки неожидано вийшла.
Ти вийшла як сонце з-за хмари, як із нирки виходить камінь,
Ти зиму перетворила на квітень чи може травень. Дівчина з Коломиї.

И-ї-ї, дівчина з Коломиї,
И-ї-ї, дівчина з Коломиї,
F     G           С
Ко-ло-ми-ї, з Кольомиї.

Дівчина з Коломиї - висока причьоска,
Хоч і не зовсім худая та струнка як берьозка.
Руки як в бусіла крила, очі як два озера,
Щоки румяні, червоні - як галстук у піонера. Дівчина з Коломиї.

Приспів.

Дівчина з Коломиї - я від тебе дурію,
Ти як Вероніка Кастро, ти як Просто Марія,
Дівчино з Коломиї, дай поцілунок жаркий,
Ти моє серце розбила на маленькі такі кавалки. Дівчина з Коломиї.

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_635440'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_635440','Дівчина з Коломиї','C
Дівчина з Коломиї, гарна та пишна,
Ти з трамваю шестьорки неожидано вийшла.
Ти вийшла як сонце з-за хмари, як із нирки виходить камінь,
Ти зиму перетворила на квітень чи може травень. Дівчина з Коломиї.

И-ї-ї, дівчина з Коломиї,
И-ї-ї, дівчина з Коломиї,
F     G           С
Ко-ло-ми-ї, з Кольомиї.

Дівчина з Коломиї - висока причьоска,
Хоч і не зовсім худая та струнка як берьозка.
Руки як в бусіла крила, очі як два озера,
Щоки румяні, червоні - як галстук у піонера. Дівчина з Коломиї.

Приспів.

Дівчина з Коломиї - я від тебе дурію,
Ти як Вероніка Кастро, ти як Просто Марія,
Дівчино з Коломиї, дай поцілунок жаркий,
Ти моє серце розбила на маленькі такі кавалки. Дівчина з Коломиї.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_635440_l1','pisniua_635440','YouTube','https://www.youtube.com/watch?v=8NGYtPI4S0w','video',NULL,1);
