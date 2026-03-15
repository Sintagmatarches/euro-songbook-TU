DELETE FROM song_links WHERE song_id = 'pisniua_310020';
DELETE FROM song_versions WHERE song_id = 'pisniua_310020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_310020';
DELETE FROM songs WHERE id = 'pisniua_310020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_310020','Несе Галя воду','Українська народна пісня. Виконує: Тріо Мареничів, Таїсія Повалій','uk','ukraine_before_1917',NULL,NULL,'"Жемчужины Украины", М.,2002;Изд."Современная музыка"',NULL,'Несе Галя воду,
Коромисло гнеться,
За нею Іванко,         |
Як барвінок, в''ється.  |

- Галю ж моя Галю,
Дай води напиться,
Ти така хороша -       |
Дай хоч подивиться!    | (2)

- Вода у криниці,
Піди тай напийся,
Як буду в садочку -    |
Прийди подивися.       | (2)

- Прийшов у садочок,
Зозуля кувала,
А ти ж  мене, Галю,    |
Та й не шанувала.      | (2)

- Стелися, барвінку,-
Буду поливати,
Вернися, Іванку,-      |
Буду шанувати.         | (2)

- Скільки не стелився,
Ти не поливала,
Скільки не вертався,   |
Ти не шанувала.        | (2)','[''pisni.org.ua'', ''cat:lirychni'', ''cat:narodni'', ''Пісні про кохання, ліричні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_310020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_310020','Несе Галя воду','Несе Галя воду,
Коромисло гнеться,
За нею Іванко,         |
Як барвінок, в''ється.  |

- Галю ж моя Галю,
Дай води напиться,
Ти така хороша -       |
Дай хоч подивиться!    | (2)

- Вода у криниці,
Піди тай напийся,
Як буду в садочку -    |
Прийди подивися.       | (2)

- Прийшов у садочок,
Зозуля кувала,
А ти ж  мене, Галю,    |
Та й не шанувала.      | (2)

- Стелися, барвінку,-
Буду поливати,
Вернися, Іванку,-      |
Буду шанувати.         | (2)

- Скільки не стелився,
Ти не поливала,
Скільки не вертався,   |
Ти не шанувала.        | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310020_l1','pisniua_310020','YouTube','https://www.youtube.com/watch?v=lP7XmvN353s','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310020_l2','pisniua_310020','YouTube','https://www.youtube.com/watch?v=1bkgAiBWSj0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310020_l3','pisniua_310020','YouTube','https://www.youtube.com/watch?v=jxb6BNYiWSE','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310020_l4','pisniua_310020','YouTube','https://www.youtube.com/watch?v=WOZ0bmeqErE','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310020_l5','pisniua_310020','YouTube','https://www.youtube.com/watch?v=xL3ENbtOdAk','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310020_l6','pisniua_310020','YouTube','https://www.youtube.com/watch?v=ZRoXf-zn2fg','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310020_l7','pisniua_310020','YouTube','https://www.youtube.com/watch?v=dhlH3KEDCAE','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310020_l8','pisniua_310020','YouTube','https://www.youtube.com/watch?v=jlEgAHajitM','video',NULL,8);
DELETE FROM song_links WHERE song_id = 'pisniua_3103929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3103929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3103929';
DELETE FROM songs WHERE id = 'pisniua_3103929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3103929','Збирайтеся всі ягодоньки з бору','Українська народна пісня. Виконує: Берви','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Збирайтеся всі ягодоньки з бору,
Ми підемо з раннячка до дому.

Збирайтеся чорні й зеленькі,
Ми підемо до дому молоденькі.

Як я була в свого батька дівкою,
Вмивалася щоденька горілкой.

Як пушла од свого до чужого,
Вмивалася щоденька сльозойкой.

Ти, дівчино, ти чужа за волокой,
Не стели постели широкой.

Но постели постелейку вузейко,
Пригорнися, моє любе сердейко.','[''pisni.org.ua'', ''cat:poliski'', ''Пісні з Полісся'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3103929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3103929','Збирайтеся всі ягодоньки з бору','Збирайтеся всі ягодоньки з бору,
Ми підемо з раннячка до дому.

Збирайтеся чорні й зеленькі,
Ми підемо до дому молоденькі.

Як я була в свого батька дівкою,
Вмивалася щоденька горілкой.

Як пушла од свого до чужого,
Вмивалася щоденька сльозойкой.

Ти, дівчино, ти чужа за волокой,
Не стели постели широкой.

Но постели постелейку вузейко,
Пригорнися, моє любе сердейко.');
DELETE FROM song_links WHERE song_id = 'pisniua_3103168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3103168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3103168';
DELETE FROM songs WHERE id = 'pisniua_3103168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3103168','Хваліть ім''я Господнє','Музика: Кирило Стеценко Слова: народні. Виконує: Хор імені Григорія Верьовки','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Хваліть ім''я Господнє,
Хваліть раби Господні,
Раби Господні!
Алилуя! Алилуя!
Алилуя...

Благословенний Господній
Світ Сіону,
Що живе в Єрусалимі,
В Єрусалимі!
Алилуя! Алилуя!
Алилуя...

Прославляйте Господа,
Бо Він милосердний,
Бо велика ласка Його,
Ласка Його!
Алилуя! Алилуя!
Алилуя...

Прославляйте Бога Небесного,
Бо велика ласка Його,
Ласка Його!
Алилуя! Алилуя!
Алилуя...','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3103168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3103168','Хваліть ім''я Господнє','Хваліть ім''я Господнє,
Хваліть раби Господні,
Раби Господні!
Алилуя! Алилуя!
Алилуя...

Благословенний Господній
Світ Сіону,
Що живе в Єрусалимі,
В Єрусалимі!
Алилуя! Алилуя!
Алилуя...

Прославляйте Господа,
Бо Він милосердний,
Бо велика ласка Його,
Ласка Його!
Алилуя! Алилуя!
Алилуя...

Прославляйте Бога Небесного,
Бо велика ласка Його,
Ласка Його!
Алилуя! Алилуя!
Алилуя...');
DELETE FROM song_links WHERE song_id = 'pisniua_3104364';
DELETE FROM song_versions WHERE song_id = 'pisniua_3104364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3104364';
DELETE FROM songs WHERE id = 'pisniua_3104364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3104364','Ой, у полі плужок оре','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, у полі плужок оре,
Щедрий вечір, Добрий вечір,
Добрим людям на здоров''я!

Там Василько з плужком ходить,
Щедрий вечір, Добрий вечір,
Добрим людям на здоров''я!

Йому мати їсти носить,
Щедрий вечір, Добрий вечір,
Добрим людям на здоров''я!

Ори, синку, тую нивку,
Щедрий вечір, Добрий вечір,
Добрим людям на здоров''я!

Та й посієм пшениченьку,
Щедрий вечір, Добрий вечір,
Добрим людям на здоров''я!','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3104364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3104364','Ой, у полі плужок оре','Ой, у полі плужок оре,
Щедрий вечір, Добрий вечір,
Добрим людям на здоров''я!

Там Василько з плужком ходить,
Щедрий вечір, Добрий вечір,
Добрим людям на здоров''я!

Йому мати їсти носить,
Щедрий вечір, Добрий вечір,
Добрим людям на здоров''я!

Ори, синку, тую нивку,
Щедрий вечір, Добрий вечір,
Добрим людям на здоров''я!

Та й посієм пшениченьку,
Щедрий вечір, Добрий вечір,
Добрим людям на здоров''я!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3104364_l1','pisniua_3104364','YouTube','https://www.youtube.com/watch?v=I9ICljStqvA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_299767';
DELETE FROM song_versions WHERE song_id = 'pisniua_299767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_299767';
DELETE FROM songs WHERE id = 'pisniua_299767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_299767','Колискова','(Ти іще в колисці, дівчинонько-квітко...). Українська народна пісня. Виконує: Ігор Богдан','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ти іще в колисці, дівчинонько-квітко,
Ти зовсім недавно в білий світ прийшла.
Я тобі співаю батьківську науку, |
Слухай добре і рости красна.     | (2)

Над тобою, доню, небо синє-синє,
Під тобою, люба, стиглі пшениці.
Знай, то образ вічний нашого народу
І його не стерти із лиця землі.
Знай, то образ вічний нашого народу
І його не стерти із землі.

Хай в твойому, доню, серденьку малому
Зріє віра в Бога, святиться весна.
Пам''ятай, що наша доля - Україна
І вона єдина, виростай щасна.
Пам''ятай, що наша доля - Україна
І вона єдина, і щасна.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_299767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_299767','Колискова','Ти іще в колисці, дівчинонько-квітко,
Ти зовсім недавно в білий світ прийшла.
Я тобі співаю батьківську науку, |
Слухай добре і рости красна.     | (2)

Над тобою, доню, небо синє-синє,
Під тобою, люба, стиглі пшениці.
Знай, то образ вічний нашого народу
І його не стерти із лиця землі.
Знай, то образ вічний нашого народу
І його не стерти із землі.

Хай в твойому, доню, серденьку малому
Зріє віра в Бога, святиться весна.
Пам''ятай, що наша доля - Україна
І вона єдина, виростай щасна.
Пам''ятай, що наша доля - Україна
І вона єдина, і щасна.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_299767_l1','pisniua_299767','YouTube','https://www.youtube.com/watch?v=ymZ7pDVOeM8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3103626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3103626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3103626';
DELETE FROM songs WHERE id = 'pisniua_3103626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3103626','Бувайте здорові!','Українська народна пісня. Виконує: Вогневир','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Бувайте здорові!
Ми вже ідемо,
Вам за коляду
Дякуємо.

Дай, Бог,
Діждати року Нового,
Ми іще прийдемо
До дому цього!

Дай, Бог,
Діждати року Нового,
Ми іще прийдемо
До дому цього!

Христос ся Рождає!','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''Пісні на християнську тематику'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3103626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3103626','Бувайте здорові!','Бувайте здорові!
Ми вже ідемо,
Вам за коляду
Дякуємо.

Дай, Бог,
Діждати року Нового,
Ми іще прийдемо
До дому цього!

Дай, Бог,
Діждати року Нового,
Ми іще прийдемо
До дому цього!

Христос ся Рождає!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3103626_l1','pisniua_3103626','YouTube','https://www.youtube.com/watch?v=Xa0rfOqTO5M','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3106020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3106020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3106020';
DELETE FROM songs WHERE id = 'pisniua_3106020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3106020','Розмарія','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://www.pisennyk.kgb.pl/',NULL,'Гандзю не дрімай двері отверай,
Пусти н''я на заградку.

Приспів:
Розмарія і лелія на біло розцвітала ,
Наша Ганічка лем за Янічка,
Би ся видавала.

Ой в лісі, в лісі, в лісі на дубі,
Зозуля кувала.
Так мі повідала, так мі повідала
Моєй фраіркі мати:
Же вона мі не дасть, же вона мі не дасть
Гандзі за жену взяти.

Приспів.

Як вона мі не хце, як вона мі не хце
Гандзю за жену дати,
Буду я Ганічку, буду я Ганічку,
З корчмичкі виганять.

Приспів.

Як ім ся сповідав, як ім ся сповідав
Так мі ксіондз повідав:
Як не маш фраіркі, як не маш фраіркі
Щоб си її пригадать?','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3106020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3106020','Розмарія','Гандзю не дрімай двері отверай,
Пусти н''я на заградку.

Приспів:
Розмарія і лелія на біло розцвітала ,
Наша Ганічка лем за Янічка,
Би ся видавала.

Ой в лісі, в лісі, в лісі на дубі,
Зозуля кувала.
Так мі повідала, так мі повідала
Моєй фраіркі мати:
Же вона мі не дасть, же вона мі не дасть
Гандзі за жену взяти.

Приспів.

Як вона мі не хце, як вона мі не хце
Гандзю за жену дати,
Буду я Ганічку, буду я Ганічку,
З корчмичкі виганять.

Приспів.

Як ім ся сповідав, як ім ся сповідав
Так мі ксіондз повідав:
Як не маш фраіркі, як не маш фраіркі
Щоб си її пригадать?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3106020_l1','pisniua_3106020','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3104065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3104065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3104065';
DELETE FROM songs WHERE id = 'pisniua_3104065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3104065','Ой важив я на дівчину','Українська народна пісня. Виконує: Софія Практика','uk','ukraine_before_1917',NULL,NULL,'Практика Софія Михайлівна; село Деревні, Жовківський район, Львівська область.','Транскрипція тексту: Катерина Практика Весілля у селі Деревні Жовківського району Львівської області Це переспівки, жартівливі пісні, що виконуються під час рогатки (викупу молодої молодим)','Ой важив я на дівчину, як на тую рибку.
Мати хату засувала, а я вибив шибку.

Не засувай мати хати ще й переді мною,
Бо я тобі вікна виб''ю за дівчину свою,

Засунь си комору,
Бо я тобі вікна виб''ю за дівчину свою','[''pisni.org.ua'', ''cat:halycki'', ''Пісні з Галичини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3104065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3104065','Ой важив я на дівчину','Ой важив я на дівчину, як на тую рибку.
Мати хату засувала, а я вибив шибку.

Не засувай мати хати ще й переді мною,
Бо я тобі вікна виб''ю за дівчину свою,

Засунь си комору,
Бо я тобі вікна виб''ю за дівчину свою');
DELETE FROM song_links WHERE song_id = 'pisniua_310467';
DELETE FROM song_versions WHERE song_id = 'pisniua_310467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_310467';
DELETE FROM songs WHERE id = 'pisniua_310467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_310467','Вода','Музика: Танок на майдані Конго Слова: Танок на майдані Конго. Виконує: Танок на майдані Конго','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: Євген Шульга','У цього моря такий колір,
Em
як твого будинку номер
Я би приїхав, але мій ровер
Ще не вигадали, не зібрали,
не побудували шлях
Цей цвях тримає дах невдах

У цього моря таких подих,
як до очей долоні дотик
А море темне зовсім як твій поверх
Але сьогодні не тоді, зараз я не я
Ще одна з маленьких трагедій ще одного дня.

Приспів:

Все тече я гадав, що ти лише вода,
Все тече згори вниз все мине колись
Все тече я гадав, що ти лише вода,
Все тече згори вниз все мине колись

Сиджу на березі
Живий-здоровий, справи шито-крито
Ніяк не здогадатись, що мого туза побито
Що днями якось я,
я  Піду горами ляжу знаком оклику слідами напишу теж саме
жив, був, був, жив, не притягався, не служив
злітав одного разу але сам розібрав той пазл
розірвав малюнок, розібрав будинок підняв якоря
Одна з маленьких трагедій ще одного дня.

Все тече, я гадав, що ти лише вода,
Все тече згори вниз, все мине колись
Все тече, я гадав, що ти лише вода,
Все тече згори вниз, все мине колись

І як у кожній казці
все закінчується добре
всі герої
живуть до смерті на сніданок хлоп''я на вечерю мило
чужі трагедії він вона вони все просто як аз букі вєді
а я тоді пішов від моря
живий здоровий шито-крито
отримало давно минуле своє мито
не вигадавши ровера нікому не побудувати шлях
цей цвях тримає дах

Все тече, я гадав, що ти лише вода,
Все тече згори вниз, все мине колись
Все тече, а я гадав, що ти лише вода,
Все тече згори вниз, все мине колись

Все тече,
а я гадав, що ти вода, | (7)','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_310467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_310467','Вода','У цього моря такий колір,
Em
як твого будинку номер
Я би приїхав, але мій ровер
Ще не вигадали, не зібрали,
не побудували шлях
Цей цвях тримає дах невдах

У цього моря таких подих,
як до очей долоні дотик
А море темне зовсім як твій поверх
Але сьогодні не тоді, зараз я не я
Ще одна з маленьких трагедій ще одного дня.

Приспів:

Все тече я гадав, що ти лише вода,
Все тече згори вниз все мине колись
Все тече я гадав, що ти лише вода,
Все тече згори вниз все мине колись

Сиджу на березі
Живий-здоровий, справи шито-крито
Ніяк не здогадатись, що мого туза побито
Що днями якось я,
я  Піду горами ляжу знаком оклику слідами напишу теж саме
жив, був, був, жив, не притягався, не служив
злітав одного разу але сам розібрав той пазл
розірвав малюнок, розібрав будинок підняв якоря
Одна з маленьких трагедій ще одного дня.

Все тече, я гадав, що ти лише вода,
Все тече згори вниз, все мине колись
Все тече, я гадав, що ти лише вода,
Все тече згори вниз, все мине колись

І як у кожній казці
все закінчується добре
всі герої
живуть до смерті на сніданок хлоп''я на вечерю мило
чужі трагедії він вона вони все просто як аз букі вєді
а я тоді пішов від моря
живий здоровий шито-крито
отримало давно минуле своє мито
не вигадавши ровера нікому не побудувати шлях
цей цвях тримає дах

Все тече, я гадав, що ти лише вода,
Все тече згори вниз, все мине колись
Все тече, а я гадав, що ти лише вода,
Все тече згори вниз, все мине колись

Все тече,
а я гадав, що ти вода, | (7)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310467_l1','pisniua_310467','YouTube','https://www.youtube.com/watch?v=eSdecdYKLlw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3109929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3109929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3109929';
DELETE FROM songs WHERE id = 'pisniua_3109929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3109929','Неподільна булава','Музика: Анатолій Сердюк Слова: Анатолій Рекубрацький. Виконує: Анатолій Сердюк','uk','ukraine_before_1917',NULL,NULL,'http://serduk.com.ua',NULL,'На великій Раді, котрій ми й не раді,
Старшина козача бралась за чуби:
Чи то наш отаман гетьманові зрадив,
Чи було, можливо, все там навпаки.
Ну, а ми - голота, ну, а ми - босота,
Нам немає діла до старшинських чвар.
Наливай, шинкарю, ще у борг нам чару!
Ну, а ти, кобзарю, гопака ушкварь!

Приспів:
Булави не можна поділити, хлопці,
Україну також не дамо ділить!
Доки буде жити дух наш запорозький,
Доти Україна буде в світі жить!

Це ж воно одвіку нам робилось в пику:
Старшина ізверху, збоку - вороги.
Запорожці й досі ходять голі й босі,
Але ми умієм віддавать борги.
Віддавали турку, віддавали ляху,
Коли було треба, то й Стамбул взяли.
Нас вели на палю, нас вели на плаху,
Але козарлюги знову ожили!

Приспів. (2)','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3109929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3109929','Неподільна булава','На великій Раді, котрій ми й не раді,
Старшина козача бралась за чуби:
Чи то наш отаман гетьманові зрадив,
Чи було, можливо, все там навпаки.
Ну, а ми - голота, ну, а ми - босота,
Нам немає діла до старшинських чвар.
Наливай, шинкарю, ще у борг нам чару!
Ну, а ти, кобзарю, гопака ушкварь!

Приспів:
Булави не можна поділити, хлопці,
Україну також не дамо ділить!
Доки буде жити дух наш запорозький,
Доти Україна буде в світі жить!

Це ж воно одвіку нам робилось в пику:
Старшина ізверху, збоку - вороги.
Запорожці й досі ходять голі й босі,
Але ми умієм віддавать борги.
Віддавали турку, віддавали ляху,
Коли було треба, то й Стамбул взяли.
Нас вели на палю, нас вели на плаху,
Але козарлюги знову ожили!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3109929_l1','pisniua_3109929','YouTube','https://www.youtube.com/watch?v=uM0K2f4e0CE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_310929';
DELETE FROM song_versions WHERE song_id = 'pisniua_310929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_310929';
DELETE FROM songs WHERE id = 'pisniua_310929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_310929','Відправила message','Музика: Сергій Підкаура Слова: Сергій Підкаура. Виконує: Наталя Могилевська, Віталій Козловський','uk','ukraine_before_1917',NULL,NULL,'http://www.navsi100.com/','Виконують: Наталка Могилевська та Віталій Козловський (в дуеті) Anrzej: У первісному поданні автором музики була вказана Олена Корнєєва; після грунтовної перевірки в інтернеті автором музики і слів вказано Сергія Підкауру. Підбір акордів: bohdanko (pisni.org.ua)','Вступ: Cm Fm A# Gm

Cm    Fm              A# ...
Любов - це велика сила
Хтось істину відкрив
Ти так його хотіла,
Коли він говорив
Він брав її руками
Гарячу і смішну
Як дві зорі тілами
Зливалися в одну

Приспів:
Cm
Відправила message
Fm
Як море на весь екран
A#
Відправила message
Gm
Що все не правда і обман

Відправила message
Розбитого серця знак
Відправила message
Що я не хочу жити так

Коли він рано вийшов
Щоб більше не прийти
Її зустріла тиша
Очима сироти
Яку ніхто не хоче
Яка завжди одна
Які дві різні ночі
Щаслива і страшна

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_310929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_310929','Відправила message','Вступ: Cm Fm A# Gm

Cm    Fm              A# ...
Любов - це велика сила
Хтось істину відкрив
Ти так його хотіла,
Коли він говорив
Він брав її руками
Гарячу і смішну
Як дві зорі тілами
Зливалися в одну

Приспів:
Cm
Відправила message
Fm
Як море на весь екран
A#
Відправила message
Gm
Що все не правда і обман

Відправила message
Розбитого серця знак
Відправила message
Що я не хочу жити так

Коли він рано вийшов
Щоб більше не прийти
Її зустріла тиша
Очима сироти
Яку ніхто не хоче
Яка завжди одна
Які дві різні ночі
Щаслива і страшна

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310929_l1','pisniua_310929','YouTube','https://www.youtube.com/watch?v=tbTZxiyPXUI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310929_l2','pisniua_310929','YouTube','https://www.youtube.com/watch?v=P0OfBC-Wydc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310929_l3','pisniua_310929','YouTube','https://www.youtube.com/watch?v=OIURxcy6Las','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3103766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3103766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3103766';
DELETE FROM songs WHERE id = 'pisniua_3103766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3103766','Хрест на плечі накладають','Українська народна пісня. Виконує: Теотокос','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Хрест на плечі накладають,
Б''ють, катують, побивають.
Серед поту, серед крові      |
Спас іде вже на Голготу.     | (2)

Упадає раз і другий,
Бачуть те вже жидів слуги,
Киринейчик приступає         |
І Хрест нести помагає.       | (2)

Плачуть люди, гірко плачуть,
Бо тяженьку муку бачуть.
Ой, не плачте наді Мною,     |
А заплачте над собою.        | (2)

От, і вже гора Голгота,
Приступає войнів рота,
Розпинає, прибиває,          |
Хрест високо піднімає.       | (2)

Людський роде окаянний,
Повний блуду, злоби повний,
Бачиш страсті Бога Сина,     |
Впадь же щиро на коліна!     | (2)

Бийся в груди, бийсь сльозами:
Боже, змилуйся над нами,
О, не дай нам в пекло впасти |
Ради твого сина страсти.     | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''cat:strasni'', ''Церковні пісні'', ''Пісні на християнську тематику'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3103766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3103766','Хрест на плечі накладають','Хрест на плечі накладають,
Б''ють, катують, побивають.
Серед поту, серед крові      |
Спас іде вже на Голготу.     | (2)

Упадає раз і другий,
Бачуть те вже жидів слуги,
Киринейчик приступає         |
І Хрест нести помагає.       | (2)

Плачуть люди, гірко плачуть,
Бо тяженьку муку бачуть.
Ой, не плачте наді Мною,     |
А заплачте над собою.        | (2)

От, і вже гора Голгота,
Приступає войнів рота,
Розпинає, прибиває,          |
Хрест високо піднімає.       | (2)

Людський роде окаянний,
Повний блуду, злоби повний,
Бачиш страсті Бога Сина,     |
Впадь же щиро на коліна!     | (2)

Бийся в груди, бийсь сльозами:
Боже, змилуйся над нами,
О, не дай нам в пекло впасти |
Ради твого сина страсти.     | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3103766_l1','pisniua_3103766','YouTube','https://www.youtube.com/watch?v=VQLs01UkQYk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_310626';
DELETE FROM song_versions WHERE song_id = 'pisniua_310626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_310626';
DELETE FROM songs WHERE id = 'pisniua_310626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_310626','Господь Бог предвічний',NULL,'uk','ukraine_before_1917',NULL,NULL,'Отці Василіани',NULL,'Господь Бог предвічний
Нині нам явився,
З непорочной Діви
В яслах народився.
Хори ангельські співають,
Нарожденного вітають:
"Слава, слава, салава
Во вишніх Богу!"

Пастирям у полі
Ангел ся являє,
Там їх до вертепу
Мило запрошає;
Щоб Дитятку честь віддали
І весело заспівали:
"Слава во вишніх Богу!"

Із небесним хором
Всі десь веселімся
І Христу-Дитятку
Низько поклонімося!
В Нім надію покладаймо:
І весело заспіваймо:
"Слава во вишніх Богу!"','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_310626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_310626','Господь Бог предвічний','Господь Бог предвічний
Нині нам явився,
З непорочной Діви
В яслах народився.
Хори ангельські співають,
Нарожденного вітають:
"Слава, слава, салава
Во вишніх Богу!"

Пастирям у полі
Ангел ся являє,
Там їх до вертепу
Мило запрошає;
Щоб Дитятку честь віддали
І весело заспівали:
"Слава во вишніх Богу!"

Із небесним хором
Всі десь веселімся
І Христу-Дитятку
Низько поклонімося!
В Нім надію покладаймо:
І весело заспіваймо:
"Слава во вишніх Богу!"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_310626_l1','pisniua_310626','YouTube','https://www.youtube.com/watch?v=_EUYn7nIBKA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3112626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3112626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3112626';
DELETE FROM songs WHERE id = 'pisniua_3112626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3112626','У моєму дворі','Українська народна пісня. Виконує: Берегиня','uk','ukraine_before_1917',NULL,NULL,'http://www.franko.lviv.ua/',NULL,'У моєму дворі три дерева росло.*

Приспів:
Рай розвився, рай розвився,
Господь звесилився,
Син божий народився.

Три дерева росли, три брати рубали.
Три брати рубали, церкву будували.
Церкву будували з трьома куполами.
З трьома куполами, з трьома хрестами.
А що перший купол, то Різдво Христове.
А що другий купол - Святого Василя.
А що третій купол - Святого Водохреща.','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3112626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3112626','У моєму дворі','У моєму дворі три дерева росло.*

Приспів:
Рай розвився, рай розвився,
Господь звесилився,
Син божий народився.

Три дерева росли, три брати рубали.
Три брати рубали, церкву будували.
Церкву будували з трьома куполами.
З трьома куполами, з трьома хрестами.
А що перший купол, то Різдво Христове.
А що другий купол - Святого Василя.
А що третій купол - Святого Водохреща.');
DELETE FROM song_links WHERE song_id = 'pisniua_3113065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3113065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3113065';
DELETE FROM songs WHERE id = 'pisniua_3113065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3113065','На городі бурячок','Українська народна пісня. Виконує: Берегиня','uk','ukraine_before_1917',NULL,NULL,'http://www.franko.lviv.ua/',NULL,'На городі бурячок,
Зеленая гичка,
Сватав мене мужичок,
А я невеличка.

Сватав мене мужичок,
Хотів мене взяти,
А я йому відповіла -
Я не вмію жати.

А я йому відповіла -
Я не вмію жати,
Буде наша пшениченька
В полю зимувати.

Буде наша пшениченька
В полю зимувати,
Будуть наші сусідоньки
З мене ся сміяти.

Будуть наші сусідоньки
З мене ся сміяти,
Що я така молоденька
Та й не вмію жати.

Ой, візьму я новий серп,
Кину назад себе,
Не жала я в своїй мами
Та й не буду в тебе.

Не жала я в своїй мами
Та й в тебе не буду,
Купи мені парасольку,
Панувати буду.

Як ти хтіла, моя мила,
Парасольку мати,
Було собі, моя мила,
Панича шукати.

А ти знав, нащо брав
Міщаночку з міста,
Я не їла і не буду
Гречаного тіста.

А ти знав, нащо брав
Мене, невеличку,
Мене мати годувала,
Як перепеличку.

Мене мати годувала,
В папір завивала,
За багача лагодила,
За бідного дала.

Як би дала за багача
Та й за молодого,
А то взяла та й віддала
За діда старого.

А я діда шанувала,
Шанувати мушу,
Ой, господи милосердний,
Випри з діда душу.

Ой, господи милосердний,
Святий Миколаю,
Випри, випри з діда душу,
Ще рік погуляю.

Ой, господи, милосердний,
Святий понеділку,
Випри, випри з діда душу,
Я стану на дівку!','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3113065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3113065','На городі бурячок','На городі бурячок,
Зеленая гичка,
Сватав мене мужичок,
А я невеличка.

Сватав мене мужичок,
Хотів мене взяти,
А я йому відповіла -
Я не вмію жати.

А я йому відповіла -
Я не вмію жати,
Буде наша пшениченька
В полю зимувати.

Буде наша пшениченька
В полю зимувати,
Будуть наші сусідоньки
З мене ся сміяти.

Будуть наші сусідоньки
З мене ся сміяти,
Що я така молоденька
Та й не вмію жати.

Ой, візьму я новий серп,
Кину назад себе,
Не жала я в своїй мами
Та й не буду в тебе.

Не жала я в своїй мами
Та й в тебе не буду,
Купи мені парасольку,
Панувати буду.

Як ти хтіла, моя мила,
Парасольку мати,
Було собі, моя мила,
Панича шукати.

А ти знав, нащо брав
Міщаночку з міста,
Я не їла і не буду
Гречаного тіста.

А ти знав, нащо брав
Мене, невеличку,
Мене мати годувала,
Як перепеличку.

Мене мати годувала,
В папір завивала,
За багача лагодила,
За бідного дала.

Як би дала за багача
Та й за молодого,
А то взяла та й віддала
За діда старого.

А я діда шанувала,
Шанувати мушу,
Ой, господи милосердний,
Випри з діда душу.

Ой, господи милосердний,
Святий Миколаю,
Випри, випри з діда душу,
Ще рік погуляю.

Ой, господи, милосердний,
Святий понеділку,
Випри, випри з діда душу,
Я стану на дівку!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3113065_l1','pisniua_3113065','YouTube','https://www.youtube.com/watch?v=ZSTX2cgzUls','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3105261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3105261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3105261';
DELETE FROM songs WHERE id = 'pisniua_3105261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3105261','Заспіваєм ще хоч раз','Музика: Піккардійська Терція Слова: Северин Краєвський. Виконує: Піккардійська Терція','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Неприспаний у серці жаль,
Наші дні летять нестримно в синю даль,
Без провини світ причинний
Знову кличе в мандри нас.
Йдучи шляхом, битим шляхом
Заспіваєм ще хоч раз!

Непізнаний у серці щем,
Бо за теплим днем зненацька сніг з дощем,
Без провини світ причинний
Знову кличе в мандри нас.
Йдучи шляхом, битим шляхом
Заспіваєм ще хоч раз!

До себе кличе неба край,
Бо за синім небокраєм інший край,
У серці плаче туги блюз,
За піковим чорним тузом другий туз!

Неумолимий в серці Бог,
Бо в яких молитвах сплатим йому борг,
Без провини світ причинний
Знову кличе в мандри нас.
Йдучи шляхом, битим шляхом
Заспіваєм ще хоч раз!

Без нас шумить, вирує бал,
За одним дев''ятим валом другий вал,
У серці плаче туги блюз,
За піковим чорним тузом другий туз!

Чи нас кохати було варт?
Може, варто, але час зіграв злий жарт,
Без провини світ причинний
Знову кличе в мандри нас.
Йдучи шляхом, битим шляхом
Заспіваєм ще хоч раз!','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3105261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3105261','Заспіваєм ще хоч раз','Неприспаний у серці жаль,
Наші дні летять нестримно в синю даль,
Без провини світ причинний
Знову кличе в мандри нас.
Йдучи шляхом, битим шляхом
Заспіваєм ще хоч раз!

Непізнаний у серці щем,
Бо за теплим днем зненацька сніг з дощем,
Без провини світ причинний
Знову кличе в мандри нас.
Йдучи шляхом, битим шляхом
Заспіваєм ще хоч раз!

До себе кличе неба край,
Бо за синім небокраєм інший край,
У серці плаче туги блюз,
За піковим чорним тузом другий туз!

Неумолимий в серці Бог,
Бо в яких молитвах сплатим йому борг,
Без провини світ причинний
Знову кличе в мандри нас.
Йдучи шляхом, битим шляхом
Заспіваєм ще хоч раз!

Без нас шумить, вирує бал,
За одним дев''ятим валом другий вал,
У серці плаче туги блюз,
За піковим чорним тузом другий туз!

Чи нас кохати було варт?
Може, варто, але час зіграв злий жарт,
Без провини світ причинний
Знову кличе в мандри нас.
Йдучи шляхом, битим шляхом
Заспіваєм ще хоч раз!');
DELETE FROM song_links WHERE song_id = 'pisniua_3113962';
DELETE FROM song_versions WHERE song_id = 'pisniua_3113962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3113962';
DELETE FROM songs WHERE id = 'pisniua_3113962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3113962','Ой, у полі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Ой, у полі, ой, у полі та туман, димно,
За туманом нічого не видно.
Тільки видно, тільки видно та криниченьку
Холодную та і водиченьку.

Ой, там дівка, ой, там дівка, та й воду брала,
Улан коня та і напуває.
Дівка коню, дівка коню води підливає,
Улан дівку та і повідомляє.

Ой, поїдьмо, ой, поїдьмо та й дівонько з нами,
З молодими та уланами.
Пройшли поле, пройшли поле, пройшли вони друге,
На третьому стали спочивати.

На третьому, на третьому стали спочивати,
Стала дівка плакати й ридати.
Ой, боже ж мій, ой, боже ж мій, що я наробила,
Батенька й неньку та й розсердила.

Ой, улане, ой, улане, ой, ви молодії,
А де ж ваші доми кам''янії,
А де ж ваші, а де ж ваші сади зеленії,
А деж ваші трави шовковії?

Годі, дівко, годі, дівко, про трави питати,
Батька й матір треба забувати.','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3113962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3113962','Ой, у полі','Ой, у полі, ой, у полі та туман, димно,
За туманом нічого не видно.
Тільки видно, тільки видно та криниченьку
Холодную та і водиченьку.

Ой, там дівка, ой, там дівка, та й воду брала,
Улан коня та і напуває.
Дівка коню, дівка коню води підливає,
Улан дівку та і повідомляє.

Ой, поїдьмо, ой, поїдьмо та й дівонько з нами,
З молодими та уланами.
Пройшли поле, пройшли поле, пройшли вони друге,
На третьому стали спочивати.

На третьому, на третьому стали спочивати,
Стала дівка плакати й ридати.
Ой, боже ж мій, ой, боже ж мій, що я наробила,
Батенька й неньку та й розсердила.

Ой, улане, ой, улане, ой, ви молодії,
А де ж ваші доми кам''янії,
А де ж ваші, а де ж ваші сади зеленії,
А деж ваші трави шовковії?

Годі, дівко, годі, дівко, про трави питати,
Батька й матір треба забувати.');
DELETE FROM song_links WHERE song_id = 'pisniua_311065';
DELETE FROM song_versions WHERE song_id = 'pisniua_311065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_311065';
DELETE FROM songs WHERE id = 'pisniua_311065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_311065','Соколята','(Крутилось пір''я на вітру...). Музика: В''ячеслав Хурсенко Слова: В''ячеслав Хурсенко. Виконує: В''ячеслав Хурсенко, Соколята','uk','ukraine_before_1917',NULL,NULL,NULL,'Пісня присвячена дітям Василя Зінкевича. Підбір акордів tenore91.','Am
Крутилось пір''я на вітру,
A7
І я згадав негоду ту,
В яку мене моя любов
Покинула.
Виймали жала із грудей
Очата двох моїх дітей
Dm
І вся моя любов на них
E7
Рікою хлинула.
Приспів:
Зростають у гніздечку соколята,
О, Боже, ти за все мене прости!
О, як я їх не хочу відпускати,
У простори юнацької мети.
В роках моїх така велика сила,
Та долю не затримати нічим, —
Сини мої візьміть мої вітрила,
Та й батька не забудьте поміж тим.
Я спав роками у вогні,
Біда сивіла на мені,
І тільки мати у селі,
В сльозах журилася.
А я синочків обіймав,
І сам у себе запитав,
О де ж ти наша доле
Забарилася!
Приспів:
Зростають у гніздечку соколята,
О Боже, ти за все мене прости!
О як я їх не хочу відпускати,
У простори юнацької мети.
В роках моїх така велика сила,
Та долю не затримати нічим, —
Сини мої візьміть мої вітрила,
Та й батька не забудьте поміж тим.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:lirychni'', ''cat:nostalgia'', ''cat:philosophic'', ''Бардівські пісні'', ''Пісні про кохання, ліричні'', ''Пісні з ностальгічними мотивами'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_311065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_311065','Соколята','Am
Крутилось пір''я на вітру,
A7
І я згадав негоду ту,
В яку мене моя любов
Покинула.
Виймали жала із грудей
Очата двох моїх дітей
Dm
І вся моя любов на них
E7
Рікою хлинула.
Приспів:
Зростають у гніздечку соколята,
О, Боже, ти за все мене прости!
О, як я їх не хочу відпускати,
У простори юнацької мети.
В роках моїх така велика сила,
Та долю не затримати нічим, —
Сини мої візьміть мої вітрила,
Та й батька не забудьте поміж тим.
Я спав роками у вогні,
Біда сивіла на мені,
І тільки мати у селі,
В сльозах журилася.
А я синочків обіймав,
І сам у себе запитав,
О де ж ти наша доле
Забарилася!
Приспів:
Зростають у гніздечку соколята,
О Боже, ти за все мене прости!
О як я їх не хочу відпускати,
У простори юнацької мети.
В роках моїх така велика сила,
Та долю не затримати нічим, —
Сини мої візьміть мої вітрила,
Та й батька не забудьте поміж тим.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_311065_l1','pisniua_311065','YouTube','https://www.youtube.com/watch?v=PvOscf8aiqY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_311065_l2','pisniua_311065','YouTube','https://www.youtube.com/watch?v=MzKL07NQIEk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_311065_l3','pisniua_311065','YouTube','https://www.youtube.com/watch?v=hADOlWPCBW4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_311065_l4','pisniua_311065','YouTube','https://www.youtube.com/watch?v=hEC5qF1PDC0','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_3117727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3117727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3117727';
DELETE FROM songs WHERE id = 'pisniua_3117727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3117727','Ой весно, веснице','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісні Шевченкового краю. Записи, впорядкування і примітки Олекси Ошуркевича. Луцьк: Волинська обласна друкарня, 2006. - 484 с.',NULL,'Ой весно, веснице,
Що тобі, Маріє, присниться? | (2)

- Приснилось мені долото,
Що той же й Іван золото.    | (2)

Приснилось мені свердельце,
Що той же й Іван, як серце. | (2)','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3117727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3117727','Ой весно, веснице','Ой весно, веснице,
Що тобі, Маріє, присниться? | (2)

- Приснилось мені долото,
Що той же й Іван золото.    | (2)

Приснилось мені свердельце,
Що той же й Іван, як серце. | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3115929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3115929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3115929';
DELETE FROM songs WHERE id = 'pisniua_3115929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3115929','Зійшов, зійшов ясний місяць','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Зійшов, зійшов ясний місяць, в нові ворота.
Кланяється до Петруня бідний сирота.

Ой, кому ж ти, та Петруню та вклоняєш,
Що рідного батька ти не маєш.

Ой, є в мене, ой, є в мене рідний дядько,
Нехай мене благословить так, як батько.

Ой, є в мене, ой, є в мене, ой, є в мене рідна тітка,
Нехай мене благословить, як матінка.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3115929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3115929','Зійшов, зійшов ясний місяць','Зійшов, зійшов ясний місяць, в нові ворота.
Кланяється до Петруня бідний сирота.

Ой, кому ж ти, та Петруню та вклоняєш,
Що рідного батька ти не маєш.

Ой, є в мене, ой, є в мене рідний дядько,
Нехай мене благословить так, як батько.

Ой, є в мене, ой, є в мене, ой, є в мене рідна тітка,
Нехай мене благословить, як матінка.');
DELETE FROM song_links WHERE song_id = 'pisniua_3115626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3115626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3115626';
DELETE FROM songs WHERE id = 'pisniua_3115626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3115626','Ой, вербо, вербо','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Ой, вербо, вербо, кудрявая,
Хто ж тобі, вербо, сі кудря дав.

А кудря дала темна нічка,
А коріннячко бистра річка.

А коріннячко бистра вода,
А я молода, як ягода.

А я молода, як ягода,
Не піду заміж за рік, за два.

А піду заміж аж п''ятого,
За того п''яницю проклятого.

Ой, кажуть люде, що він не п''є,
А він щоранку рубля проп''є.

А він щораня, щораночку
Пропив коника й нагайочку.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3115626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3115626','Ой, вербо, вербо','Ой, вербо, вербо, кудрявая,
Хто ж тобі, вербо, сі кудря дав.

А кудря дала темна нічка,
А коріннячко бистра річка.

А коріннячко бистра вода,
А я молода, як ягода.

А я молода, як ягода,
Не піду заміж за рік, за два.

А піду заміж аж п''ятого,
За того п''яницю проклятого.

Ой, кажуть люде, що він не п''є,
А він щоранку рубля проп''є.

А він щораня, щораночку
Пропив коника й нагайочку.');
DELETE FROM song_links WHERE song_id = 'pisniua_3116663';
DELETE FROM song_versions WHERE song_id = 'pisniua_3116663';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3116663';
DELETE FROM songs WHERE id = 'pisniua_3116663';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3116663','Ой, кринула лебедонька','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Ой, кринула лебедонька,
Із-за хвилі виринаючи,
Заспівали козаченьки,
З-за лиману виступаючи:

"Чи ж нам, браття, на Січ іти,
Ой, чи тут зімоватися:
Навчилися батьки наші
Та і без нас пробуватися."

Іде козак дорогою,
Копією утирається,
За ним іде дівчинонька,
Слізоньками умивається.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3116663'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3116663','Ой, кринула лебедонька','Ой, кринула лебедонька,
Із-за хвилі виринаючи,
Заспівали козаченьки,
З-за лиману виступаючи:

"Чи ж нам, браття, на Січ іти,
Ой, чи тут зімоватися:
Навчилися батьки наші
Та і без нас пробуватися."

Іде козак дорогою,
Копією утирається,
За ним іде дівчинонька,
Слізоньками умивається.');
DELETE FROM song_links WHERE song_id = 'pisniua_311663';
DELETE FROM song_versions WHERE song_id = 'pisniua_311663';
DELETE FROM songs_fts WHERE song_id = 'pisniua_311663';
DELETE FROM songs WHERE id = 'pisniua_311663';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_311663','Коли я стану президентом','Музика: Павло Зібров Слова: Юрій Рибчинський. Виконує: Павло Зібров','uk','ukraine_1991',NULL,NULL,'http://www.zibrov.com.ua/',NULL,'Коли я стану президентом,
Тоді я, мабуть кину пить,
І буду дітям аліменти
Усім, без винятку платить
Бабусям я зроблю презенти
Магнітофони JVC

Коли я стану президентом,
Мене кохатимуть усі

Приспів:
Голосуй, голосуй
Будь, активним, не пасуй
Будь, активним, не пасуй
Голосуй,
Голосуй, голосуй
Бюлетені в урни суй
Бюлетені в урни суй
Голосуй.

Коли я стану президентом,
Мені простять усі борги
Казати будуть компліменти
Мої закляті вороги
Призначу жінку референтом
В питаннях сексу на селі
І кримінальні елементі
Мені подарять "Жигулі"

Приспів.','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_311663'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_311663','Коли я стану президентом','Коли я стану президентом,
Тоді я, мабуть кину пить,
І буду дітям аліменти
Усім, без винятку платить
Бабусям я зроблю презенти
Магнітофони JVC

Коли я стану президентом,
Мене кохатимуть усі

Приспів:
Голосуй, голосуй
Будь, активним, не пасуй
Будь, активним, не пасуй
Голосуй,
Голосуй, голосуй
Бюлетені в урни суй
Бюлетені в урни суй
Голосуй.

Коли я стану президентом,
Мені простять усі борги
Казати будуть компліменти
Мої закляті вороги
Призначу жінку референтом
В питаннях сексу на селі
І кримінальні елементі
Мені подарять "Жигулі"

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3118467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3118467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3118467';
DELETE FROM songs WHERE id = 'pisniua_3118467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3118467','Світить місяць','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'Співаник УПА. Борці за волю України. упор. О.Бобикевич, Ю.Лаврівський, О.Плешкевич та ін. Львів: Меморіал. 1992. - 190 с.',NULL,'Світить місяць, світить ясний,
Молодий ліс зтиха шумить,
А ви літа молодії -
Як важко нам тут вас прожить.

Довкола б''ються - війна велика.
Усі совєтську комуну б''ють,
А наші хлопці молодії
Самі охочо до УПА йдуть.

Гей, дівчата молодії,
Як важко з вами розійтись,
Просіть в Бога перемоги —
Ми ще зустрінемось колись.

Ми вірим свято в перемогу,
З вірою радо у бій ідем,
Залитій кров''ю Україні
На руках волю й славу несем!','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3118467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3118467','Світить місяць','Світить місяць, світить ясний,
Молодий ліс зтиха шумить,
А ви літа молодії -
Як важко нам тут вас прожить.

Довкола б''ються - війна велика.
Усі совєтську комуну б''ють,
А наші хлопці молодії
Самі охочо до УПА йдуть.

Гей, дівчата молодії,
Як важко з вами розійтись,
Просіть в Бога перемоги —
Ми ще зустрінемось колись.

Ми вірим свято в перемогу,
З вірою радо у бій ідем,
Залитій кров''ю Україні
На руках волю й славу несем!');
DELETE FROM song_links WHERE song_id = 'pisniua_3118766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3118766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3118766';
DELETE FROM songs WHERE id = 'pisniua_3118766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3118766','Поклоняюся, мій Христе',NULL,'uk','ukraine_1991',NULL,NULL,'http://www.bazylianie.pl/mlolytownyk/pisni.htm',NULL,'Поклоняюся, мій Христе,
Хресній рані пресвятій,
Животворній і пречистій
На руці Твоїй правій.
Боже мій, поклін прийми, |
По правій мене возьми!   | (2)

Поклоняюся, мій Христе,
Хресній рані пресвятій,
Животворній і пречистій
На руці Твоїй лівій.
Боже мій, поклін прийми, |
Від лівої м''я храни!     | (2)

Поклоняюся мій Христе,
Хресній рані пресвятій,
Животворній і пречистій
На нозі Твоїй правій.
Боже мій, поклін прийми, |
Путем правди м''я веди!   | (2)

Поклоняюся, мій Христе,
Хресній рані пресвятій,
Животворній і пречистій,
На нозі Твоїй лівій.
Боже мій, поклін прийми, |
Від гріха м''я заверни!   | (2)

Поклоняюся, мій Христе,
Хресній рані пресвятій,
Животворній і пречистій,
В серці і Твоїм ребрі.
Боже мій, поклін прийми, |
I на віки м''я люби!      | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christ'', ''cat:strasni'', ''Церковні пісні'', ''Пісні до Ісуса Христа'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3118766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3118766','Поклоняюся, мій Христе','Поклоняюся, мій Христе,
Хресній рані пресвятій,
Животворній і пречистій
На руці Твоїй правій.
Боже мій, поклін прийми, |
По правій мене возьми!   | (2)

Поклоняюся, мій Христе,
Хресній рані пресвятій,
Животворній і пречистій
На руці Твоїй лівій.
Боже мій, поклін прийми, |
Від лівої м''я храни!     | (2)

Поклоняюся мій Христе,
Хресній рані пресвятій,
Животворній і пречистій
На нозі Твоїй правій.
Боже мій, поклін прийми, |
Путем правди м''я веди!   | (2)

Поклоняюся, мій Христе,
Хресній рані пресвятій,
Животворній і пречистій,
На нозі Твоїй лівій.
Боже мій, поклін прийми, |
Від гріха м''я заверни!   | (2)

Поклоняюся, мій Христе,
Хресній рані пресвятій,
Животворній і пречистій,
В серці і Твоїм ребрі.
Боже мій, поклін прийми, |
I на віки м''я люби!      | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3118168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3118168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3118168';
DELETE FROM songs WHERE id = 'pisniua_3118168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3118168','Гей, повстанці українські','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'Співаник УПА. Борці за волю України. упор. О.Бобикевич, Ю.Лаврівський, О.Плешкевич та ін. Львів: Меморіал. 1992. - 190 с.',NULL,'Гей, повстанці українські,
Як це вам здається,
Прийшов москвин в вашу хату,
Та й ще з вас сміється.

Нападає на всі села,
Б''є, мордує діти,
Палить села і хутори,
Мусять всі терпіти.

Разом з нами в святім бою
Стануть всі народи,
Бо усім їм Московщина
Не дає свободи.

Вже повстанці України
Взяли кріси в руки,
Здобувають Україну
Козаків правнуки.','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3118168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3118168','Гей, повстанці українські','Гей, повстанці українські,
Як це вам здається,
Прийшов москвин в вашу хату,
Та й ще з вас сміється.

Нападає на всі села,
Б''є, мордує діти,
Палить села і хутори,
Мусять всі терпіти.

Разом з нами в святім бою
Стануть всі народи,
Бо усім їм Московщина
Не дає свободи.

Вже повстанці України
Взяли кріси в руки,
Здобувають Україну
Козаків правнуки.');
DELETE FROM song_links WHERE song_id = 'pisniua_3114121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3114121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3114121';
DELETE FROM songs WHERE id = 'pisniua_3114121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3114121','Ой, з-за гори з-за крутої','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські пісні з нотами. Збірник перший / упорядник П.Ф. Бунт, В. Шаравський. Київ. Видавниче товариство "Час", 1929.',NULL,'Ой, з-за гори з-за крутої
Орел воду носить.
Ой, там мати свого сина
Вечеряти просить. (2)

"Ой, вечеряй, моя мати,
Коли наварила,
А я піду на Україну,
Де дівчина мила. (2)

Ой, дівчино моя мила,
Що ти наробила, -
Кличе мати вечеряти, -
Вечеря не мила. (2)

Чи ти дала в хлібі з''їсти,
Чи в горільці спити,
Що узявся я так тебе
Вірненько любити." (2)','[''pisni.org.ua'', ''cat:rekrutski'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3114121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3114121','Ой, з-за гори з-за крутої','Ой, з-за гори з-за крутої
Орел воду носить.
Ой, там мати свого сина
Вечеряти просить. (2)

"Ой, вечеряй, моя мати,
Коли наварила,
А я піду на Україну,
Де дівчина мила. (2)

Ой, дівчино моя мила,
Що ти наробила, -
Кличе мати вечеряти, -
Вечеря не мила. (2)

Чи ти дала в хлібі з''їсти,
Чи в горільці спити,
Що узявся я так тебе
Вірненько любити." (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3118323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3118323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3118323';
DELETE FROM songs WHERE id = 'pisniua_3118323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3118323','Пісня куреня "Гайдамаків"','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'Співаник УПА. Борці за волю України. упор. О.Бобикевич, Ю.Лаврівський, О.Плешкевич та ін. Львів: Меморіал. 1992. - 190 с.',NULL,'Там в горах, у Карпатах, у ярах,
Там зродився перший курінь,
Курінь "Гайдамак".

Приспів:
Гей, раз-два, в ряд ставай,
Дівчино, ти прощай,
Кличе сурма. Милий твій,
За Вкраїну в бій,
Йде у бій!

А курінний Хмель накази видає,
А бунчужний наш від праці
Рук не чує вже.

Приспів.

А на поляні рух великий став,
Там сотенні з чотовими
Вчать військових вправ.

Приспів.

В нас кухар то персона є важна,
Як насипле пів їдунки,
Раз - і вже нема.

Приспів.

А по науці вийдем всі з лісів,
Боронити рідний нарід,
Бити москалів.

Приспів.','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3118323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3118323','Пісня куреня "Гайдамаків"','Там в горах, у Карпатах, у ярах,
Там зродився перший курінь,
Курінь "Гайдамак".

Приспів:
Гей, раз-два, в ряд ставай,
Дівчино, ти прощай,
Кличе сурма. Милий твій,
За Вкраїну в бій,
Йде у бій!

А курінний Хмель накази видає,
А бунчужний наш від праці
Рук не чує вже.

Приспів.

А на поляні рух великий став,
Там сотенні з чотовими
Вчать військових вправ.

Приспів.

В нас кухар то персона є важна,
Як насипле пів їдунки,
Раз - і вже нема.

Приспів.

А по науці вийдем всі з лісів,
Боронити рідний нарід,
Бити москалів.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3120727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3120727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3120727';
DELETE FROM songs WHERE id = 'pisniua_3120727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3120727','Ти і я - одна сім''я','Музика: Платон Майборода Слова: Михайло Ткач. Виконує: Кобза','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Там, де біла хата на любов багата
Скупані в любистку ми росли,
Пахне рута-м''ята, вітром не прим''ята,
Там, де ми закохані були з тобою!
В тихі вечори над колисками
Нам пісень співали матері,
Пролітають роки за роками,
Стеляться тумани на зорі.

Приспів:
А за туманами нові світи,
Ми їх відкриємо, і я, і ти,
А ми з тобою Землю обійдем,
Ми все здолаєм, все знайдем,
Для того ми одна сім''я - ти і я.

Там, де світ зоріє, кликали нас мрії,
Вабили, як хвилі на воді.
В небі соколята вчилися літати,
Брали нас на крила молоді з тобою
Долю соколину доганяти,
Мчали ми на конях вороних,
Нас батьки просили пам''ятати:
Звідки ми, з якої сторони!

Приспів.

Зійдемося друзі та й на отчім крузі
Молодість покличемо свою,
Буде запах м''яти, буде що згадати
У благословенному краю з тобою,
А, якщо у когось на тривогу
Серце защемить у сивій млі -
Припадем до отчого порогу,
Сили наберемось від землі.

Приспів.

Ти і я!..','[''pisni.org.ua'', ''cat:pro-batkiv'', ''cat:zahalni-cinnosti'', ''Пісні про любов до батьків'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3120727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3120727','Ти і я - одна сім''я','Там, де біла хата на любов багата
Скупані в любистку ми росли,
Пахне рута-м''ята, вітром не прим''ята,
Там, де ми закохані були з тобою!
В тихі вечори над колисками
Нам пісень співали матері,
Пролітають роки за роками,
Стеляться тумани на зорі.

Приспів:
А за туманами нові світи,
Ми їх відкриємо, і я, і ти,
А ми з тобою Землю обійдем,
Ми все здолаєм, все знайдем,
Для того ми одна сім''я - ти і я.

Там, де світ зоріє, кликали нас мрії,
Вабили, як хвилі на воді.
В небі соколята вчилися літати,
Брали нас на крила молоді з тобою
Долю соколину доганяти,
Мчали ми на конях вороних,
Нас батьки просили пам''ятати:
Звідки ми, з якої сторони!

Приспів.

Зійдемося друзі та й на отчім крузі
Молодість покличемо свою,
Буде запах м''яти, буде що згадати
У благословенному краю з тобою,
А, якщо у когось на тривогу
Серце защемить у сивій млі -
Припадем до отчого порогу,
Сили наберемось від землі.

Приспів.

Ти і я!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3120727_l1','pisniua_3120727','YouTube','https://www.youtube.com/watch?v=xBOTNiJ07ok','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3120727_l2','pisniua_3120727','YouTube','https://www.youtube.com/watch?v=xoFNNANeJ_A','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3120727_l3','pisniua_3120727','YouTube','https://www.youtube.com/watch?v=AmH5xaFn3sM','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3120560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3120560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3120560';
DELETE FROM songs WHERE id = 'pisniua_3120560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3120560','На Івана Купала','Українська народна пісня. Виконує: Кобза','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'На Івана Купала
На калину роса впала,
В нас на вулиці Купала,
Купала на Івана.

На Івана Купала
Вийшли дівки край села,
На Івана Купала,
На Івана Купала.

На Івана Купала
Чути пісню край села,
На Івана Купала,
На Івана Купала.

Ішли дівки по ягідки,
Ішли дівки по ягідки,
Молодиці по суниці,
Молодиці по суниці.

Усі дівки назбирали,
А Маринка не набрала,
Бо зустріла на Купала
Чорнобривого Івана,
Заглянула в карі очі
Та й згубила в лісі кошик.

На Івана Купала
Щастя дівчина знайшла,
На Івана Купала
Щастя дівчина знайшла,
Купала...','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3120560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3120560','На Івана Купала','На Івана Купала
На калину роса впала,
В нас на вулиці Купала,
Купала на Івана.

На Івана Купала
Вийшли дівки край села,
На Івана Купала,
На Івана Купала.

На Івана Купала
Чути пісню край села,
На Івана Купала,
На Івана Купала.

Ішли дівки по ягідки,
Ішли дівки по ягідки,
Молодиці по суниці,
Молодиці по суниці.

Усі дівки назбирали,
А Маринка не набрала,
Бо зустріла на Купала
Чорнобривого Івана,
Заглянула в карі очі
Та й згубила в лісі кошик.

На Івана Купала
Щастя дівчина знайшла,
На Івана Купала
Щастя дівчина знайшла,
Купала...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3120560_l1','pisniua_3120560','YouTube','https://www.youtube.com/watch?v=KX_ef8gcr7A','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3120560_l2','pisniua_3120560','YouTube','https://www.youtube.com/watch?v=reRaFEZCaqc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3118626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3118626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3118626';
DELETE FROM songs WHERE id = 'pisniua_3118626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3118626','Коли втомлений','Музика: о.Й.Кишакевич Слова: о.Й.Кишакевич','uk','ukraine_1991',NULL,NULL,'http://www.bazylianie.pl/mlolytownyk/pisni.htm',NULL,'Коли втомлений життя борбою,
Безсильний стану вже загибати,
Кріпи, рятуй м''я, не дай пропасти, |
О, Божа Мати.                      | (2)

Коли в безмежній тузі марнію,
Вмісто в простор неба ся рвати,
О, піддвигни м''я, дай душі силу,   |
Божая Мати!                        | (2)

А коли б в страшній спокус годині
На бездоріжжя схотів звертатись,
Згадай ми муки Твойого Сина,       |
О, Божа Мати!                      | (2)

В долі й недолі, щастю чи горю,
Не перестану Тебе благати,
З своєй опіки не випускай м''я,     |
О, моя Мати!                       | (2)    комп''ютерне відтворення','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:do-bohorodyci'', ''Церковні пісні'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3118626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3118626','Коли втомлений','Коли втомлений життя борбою,
Безсильний стану вже загибати,
Кріпи, рятуй м''я, не дай пропасти, |
О, Божа Мати.                      | (2)

Коли в безмежній тузі марнію,
Вмісто в простор неба ся рвати,
О, піддвигни м''я, дай душі силу,   |
Божая Мати!                        | (2)

А коли б в страшній спокус годині
На бездоріжжя схотів звертатись,
Згадай ми муки Твойого Сина,       |
О, Божа Мати!                      | (2)

В долі й недолі, щастю чи горю,
Не перестану Тебе благати,
З своєй опіки не випускай м''я,     |
О, моя Мати!                       | (2)    комп''ютерне відтворення');
DELETE FROM song_links WHERE song_id = 'pisniua_311962';
DELETE FROM song_versions WHERE song_id = 'pisniua_311962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_311962';
DELETE FROM songs WHERE id = 'pisniua_311962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_311962','Лебеді кохання','Музика: Ярослав Борута Слова: Вадим Крищенко. Виконує: Лебеді кохання','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Прилетіли лебеді,
Сіли на воді,
Звеселили ласкою
Очі молоді.
Ой, то не лебедики
Впали на крило,
То моє коханнячко |
Весну привело.    | (2)

Приспів:
Лебеді, лебеді, лебеді,
Лебеді кохання
Прилітають тільки раз -
Вперше і востаннє.
Лебеді, лебеді, лебеді, -
З радістю й журбою
Прилетіли лебеді   |
І до нас з тобою.  | (2)

Прилетіли лебеді -
Білі, наче цвіт,
Трепетною ніжністю
Затулили світ,
Заховали полечко
Й небо голубе,
Щоб я тільки бачила |
Одного тебе.        | (2)

Приспів.

Прилетіли лебеді -
Обтрусили пух.
Разом нас покликали
На квітковий луг.
Впало біле пір''ячко
На зелену віть.
Прилетіли лебеді - |
Ой, не відлетіть.  | (2)

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_311962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_311962','Лебеді кохання','Прилетіли лебеді,
Сіли на воді,
Звеселили ласкою
Очі молоді.
Ой, то не лебедики
Впали на крило,
То моє коханнячко |
Весну привело.    | (2)

Приспів:
Лебеді, лебеді, лебеді,
Лебеді кохання
Прилітають тільки раз -
Вперше і востаннє.
Лебеді, лебеді, лебеді, -
З радістю й журбою
Прилетіли лебеді   |
І до нас з тобою.  | (2)

Прилетіли лебеді -
Білі, наче цвіт,
Трепетною ніжністю
Затулили світ,
Заховали полечко
Й небо голубе,
Щоб я тільки бачила |
Одного тебе.        | (2)

Приспів.

Прилетіли лебеді -
Обтрусили пух.
Разом нас покликали
На квітковий луг.
Впало біле пір''ячко
На зелену віть.
Прилетіли лебеді - |
Ой, не відлетіть.  | (2)

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_311962_l1','pisniua_311962','YouTube','https://www.youtube.com/watch?v=jdLK9kyzpgE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_311962_l2','pisniua_311962','YouTube','https://www.youtube.com/watch?v=W8Mop39vhd4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_312560';
DELETE FROM song_versions WHERE song_id = 'pisniua_312560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_312560';
DELETE FROM songs WHERE id = 'pisniua_312560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_312560','Колискова Тиша. Вечір на дворі','Музика: Ігор Білик Слова: Богдан Сливчук','uk','ukraine_before_1917',NULL,NULL,'Від автора',NULL,'Тиша. Вечір на дворі,
Сонечко сховалося.
Цілу днину дітворі
Hіжно посміхалося.
Приспів:
Gm
Заснули зайчики,
Заснули білочки,
І ти, наш котику,
Засни, засни.
Gm
Заснули квіточки,
Заснули діточки,
І ти, малесенький,
Засни
Тиша. Вечір надворі,
Зіроньки з''явилися.
Спать лягайте, всі малі,
Вже за день стомилися.
Тиша. Вечір надворі
Ходить попід вікнами.
Вийшов місяць угорі,
Наче з срібла витканий.
Тиша. Вечір надворі
Ледь у вікна стукає.
Вже час спати дітворі,
Казку діти слухають.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_312560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_312560','Колискова Тиша. Вечір на дворі','Тиша. Вечір на дворі,
Сонечко сховалося.
Цілу днину дітворі
Hіжно посміхалося.
Приспів:
Gm
Заснули зайчики,
Заснули білочки,
І ти, наш котику,
Засни, засни.
Gm
Заснули квіточки,
Заснули діточки,
І ти, малесенький,
Засни
Тиша. Вечір надворі,
Зіроньки з''явилися.
Спать лягайте, всі малі,
Вже за день стомилися.
Тиша. Вечір надворі
Ходить попід вікнами.
Вийшов місяць угорі,
Наче з срібла витканий.
Тиша. Вечір надворі
Ледь у вікна стукає.
Вже час спати дітворі,
Казку діти слухають.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_312560_l1','pisniua_312560','YouTube','https://www.youtube.com/watch?v=xO5YF3PXNzE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_312560_l2','pisniua_312560','YouTube','https://www.youtube.com/watch?v=PZ4wid-B0-0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_312560_l3','pisniua_312560','YouTube','https://www.youtube.com/watch?v=TZ0cPnOilHs','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3121';
DELETE FROM songs WHERE id = 'pisniua_3121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3121','Марш "Україна"','(Чорними хмарами). Музика: Григорій Китастий Слова: Іван Багряний. Виконує: Вогневир, Хорея Козацька, Капела бандуристів імені Тараса Шевченка','uk','ukraine_1991',NULL,NULL,'1. Літопис УПА. том 25 2. Taras Hryvul','Варіант 2 надав Taras Hryvul; тут акорди перевірено - якісні. У варіанті 1 акорди не перевірено, їх джерело невідоме.','Чорними хмарами вкрита руїна,
Вітер на згарищах грізно гуде.
Мов дика пустеля, лежить Україна,
F#m
Плаче дівчина і месника жде.
Приспів:
Раз-два, до бою, не шкодуй собою,
Меч піднеси і на відліт бий.
Бий до останньої кулі набою,
Бий за Вітчизну й поляж головою,
За Україну вперед, вперед!
Hm
Бий, бий, бий!
Грізно реве невблаганна стихія,
Вже нас до ями на смерть привели.
Тільки не знали напасники злії,
Як умираючи б''ються орли.
Приспів.
З нами пройшли через муки й тортури,
Як приклад великий, як жертви за нас
Великі звитяжці Мазепа й Петлюра,
Петро Дорошенко, Богдан і Тарас.
Приспів.
За матерів і за глум та руїни,
За немовлят і румовища хат
Вставай, Україно, могутня й єдина
Від синього Дону до сивих Карпат.
Приспів.
Варіант 2:
Чорними хмарами вкрита руїна,
Вітер на згарищах грізно гуде.
Мов дика пустеля, лежить Україна,
F#m
Плаче дівчина і месника жде.
Приспів:
Раз-два, до бою, не шкодуй собою,
Меч піднеси і на відліт бий.
Бий до останньої кулі набою,
Бий за Вітчизну й поляж головою,
За Україну вперед, вперед!
Hm
Бий, бий, бий!
За нас пройшли через муки й тортури,
Як приклад великий, як жертви для нас
Великі звитяжці Мазепа й Петлюра,
Петро Дорошенко, Богдан і Тарас.
(або: Павло Полуботок, Степан і Тарас.)
Приспів.
За матерів і за глум, за руїни,
За немовлят і румовища хат,
Вставай, Україно, могутня і сильна,
Від синього Дону до сивих Карпат!
Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:patriotic'', ''Гимни та марші'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3121','Марш "Україна"','Чорними хмарами вкрита руїна,
Вітер на згарищах грізно гуде.
Мов дика пустеля, лежить Україна,
F#m
Плаче дівчина і месника жде.
Приспів:
Раз-два, до бою, не шкодуй собою,
Меч піднеси і на відліт бий.
Бий до останньої кулі набою,
Бий за Вітчизну й поляж головою,
За Україну вперед, вперед!
Hm
Бий, бий, бий!
Грізно реве невблаганна стихія,
Вже нас до ями на смерть привели.
Тільки не знали напасники злії,
Як умираючи б''ються орли.
Приспів.
З нами пройшли через муки й тортури,
Як приклад великий, як жертви за нас
Великі звитяжці Мазепа й Петлюра,
Петро Дорошенко, Богдан і Тарас.
Приспів.
За матерів і за глум та руїни,
За немовлят і румовища хат
Вставай, Україно, могутня й єдина
Від синього Дону до сивих Карпат.
Приспів.
Варіант 2:
Чорними хмарами вкрита руїна,
Вітер на згарищах грізно гуде.
Мов дика пустеля, лежить Україна,
F#m
Плаче дівчина і месника жде.
Приспів:
Раз-два, до бою, не шкодуй собою,
Меч піднеси і на відліт бий.
Бий до останньої кулі набою,
Бий за Вітчизну й поляж головою,
За Україну вперед, вперед!
Hm
Бий, бий, бий!
За нас пройшли через муки й тортури,
Як приклад великий, як жертви для нас
Великі звитяжці Мазепа й Петлюра,
Петро Дорошенко, Богдан і Тарас.
(або: Павло Полуботок, Степан і Тарас.)
Приспів.
За матерів і за глум, за руїни,
За немовлят і румовища хат,
Вставай, Україно, могутня і сильна,
Від синього Дону до сивих Карпат!
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3121_l1','pisniua_3121','YouTube','https://www.youtube.com/watch?v=3xlift8bMU4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3121_l2','pisniua_3121','YouTube','https://www.youtube.com/watch?v=Zql5J6KBfws','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3121_l3','pisniua_3121','YouTube','https://www.youtube.com/watch?v=iLwQ1uvhtZo','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3121_l4','pisniua_3121','YouTube','https://www.youtube.com/watch?v=6LDlY0fELzs','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3121_l5','pisniua_3121','YouTube','https://www.youtube.com/watch?v=kv1RtFkvsJE','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3121_l6','pisniua_3121','https://kobzari.org.ua/?page=noty','https://kobzari.org.ua/?page=noty','external',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3121_l7','pisniua_3121','http://www.library.dudaryk.ua/ua/compositions/~Kytastyy_Marsh_Ukrayina','http://www.library.dudaryk.ua/ua/compositions/~Kytastyy_Marsh_Ukrayina','external',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_3125222';
DELETE FROM song_versions WHERE song_id = 'pisniua_3125222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3125222';
DELETE FROM songs WHERE id = 'pisniua_3125222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3125222','Залізяка','(Да ішов мужик край дороги). Українська народна пісня. Виконує: Контрабас','uk','ukraine_before_1917',NULL,NULL,'зі слуху з платівки "Контрабас" гурту "Контрабас". На високу достовірність тексту не претендую..','платівка "Контрабас" гурту "Контрабас".','1. Да ішов мужик край дороги  | (2)
Край дороги мужик ішов!

2. Та й знайшов мужик залізяку | (2)
Залізяку мужик знайшов на дорозі!

3. Та й поніс її во кузняку | (2)
Во кузняку мужик поніс залізяку,
що знайшов на дорозі!

4. Та й зробив собі сокиряку | (2)
Сокиряку мужик зробив з залізяки,
що знайшов на дорозі!

5. Та й пішов мужик во лісяку | (2)
Во лісяку мужик пішов з сокирякой,
що зробив во кузняки,
що знайшов на дорозі залізяку!

6. Та й зробив мужик дубеняку | (2)
Дубеняку мужик зробив з сокиряки,
що зробив во кузняки,
що знайшов на дорозі залізяку!

7. Та й убив нею ведмедяку | (2)
Ведмедяку мужик убив дубенякой,
що зробив з сокиряки,
що зробив во кузняки,
що знайшов на дорозі залізяку!

8. Та й зідрав з нього шкуру м''яку | (2)
Шкуру м''яку мужик зідрав з ведмедяки,
що убив дубенякой,
що зробив з сокиряки,
що зробив во кузняки,
що знайшов на дорозі залізяку!

9. Та й продав її за рубляку | (2)
За рубляку мужик продав шкуру м''яку,
що зідрав з ведмедяки,
що убив дубенякой,
що зробив з сокиряки,
що зробив во кузняки,
що знайшов на дорозі залізяку!

10. Та й купив собі коров''яку | (2)
(О-це так!!!)
Коров''яку мужик купив за рубляку,
що вторгував за шкуру м''яку,
що зідрав з ведмедяки,
що убив дубенякой,
що зробив з сокиряки,
що зробив во кузняки,
що знайшов на дорозі залізяку!
І дала вона йому молочка.
Оце мужику по-вез-ло!','[''pisni.org.ua'', ''cat:all-ukraine'', ''Загальноукраїнські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3125222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3125222','Залізяка','1. Да ішов мужик край дороги  | (2)
Край дороги мужик ішов!

2. Та й знайшов мужик залізяку | (2)
Залізяку мужик знайшов на дорозі!

3. Та й поніс її во кузняку | (2)
Во кузняку мужик поніс залізяку,
що знайшов на дорозі!

4. Та й зробив собі сокиряку | (2)
Сокиряку мужик зробив з залізяки,
що знайшов на дорозі!

5. Та й пішов мужик во лісяку | (2)
Во лісяку мужик пішов з сокирякой,
що зробив во кузняки,
що знайшов на дорозі залізяку!

6. Та й зробив мужик дубеняку | (2)
Дубеняку мужик зробив з сокиряки,
що зробив во кузняки,
що знайшов на дорозі залізяку!

7. Та й убив нею ведмедяку | (2)
Ведмедяку мужик убив дубенякой,
що зробив з сокиряки,
що зробив во кузняки,
що знайшов на дорозі залізяку!

8. Та й зідрав з нього шкуру м''яку | (2)
Шкуру м''яку мужик зідрав з ведмедяки,
що убив дубенякой,
що зробив з сокиряки,
що зробив во кузняки,
що знайшов на дорозі залізяку!

9. Та й продав її за рубляку | (2)
За рубляку мужик продав шкуру м''яку,
що зідрав з ведмедяки,
що убив дубенякой,
що зробив з сокиряки,
що зробив во кузняки,
що знайшов на дорозі залізяку!

10. Та й купив собі коров''яку | (2)
(О-це так!!!)
Коров''яку мужик купив за рубляку,
що вторгував за шкуру м''яку,
що зідрав з ведмедяки,
що убив дубенякой,
що зробив з сокиряки,
що зробив во кузняки,
що знайшов на дорозі залізяку!
І дала вона йому молочка.
Оце мужику по-вез-ло!');
DELETE FROM song_links WHERE song_id = 'pisniua_3126261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3126261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3126261';
DELETE FROM songs WHERE id = 'pisniua_3126261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3126261','Бобринець','Музика: Євген Манженко Слова: Євген Манженко. Виконує: Веселі Біоритми','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой, який я молодець, шо поїхав в Бобринець!
Олів''є їв, холодець, з мармішеллю голубець.
Тєлєсами рухали, караоке слухали.
Погуляв красиво, видно. Спомнить тіки стидно.

Приспів:
Наливай іше, отець, за весілля, за Бобринець!
Закусю грибочком за твою за дочку.
Хай все буде на столі, лагода і мир в сім''ї!
Омине нехай капець славне місто Бобринець!

Ой, який я молодець, шо поїхав в Бобринець!
З молодим пив, з дідом, з кумами і сусідом!
Приїхав я заряджений, костюм надів наглажений.
Виглядав солідно. Спомнить тіки стидно.

Приспів.

Ой, який я молодець, шо поїхав в Бобринець!
Танцював із дружкою, говорив на вушко їй.
Шось мутив з кумою, спортив їм обої.
Погуляв солідно, видно. Спомнить тіки стидно.

Приспів.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3126261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3126261','Бобринець','Ой, який я молодець, шо поїхав в Бобринець!
Олів''є їв, холодець, з мармішеллю голубець.
Тєлєсами рухали, караоке слухали.
Погуляв красиво, видно. Спомнить тіки стидно.

Приспів:
Наливай іше, отець, за весілля, за Бобринець!
Закусю грибочком за твою за дочку.
Хай все буде на столі, лагода і мир в сім''ї!
Омине нехай капець славне місто Бобринець!

Ой, який я молодець, шо поїхав в Бобринець!
З молодим пив, з дідом, з кумами і сусідом!
Приїхав я заряджений, костюм надів наглажений.
Виглядав солідно. Спомнить тіки стидно.

Приспів.

Ой, який я молодець, шо поїхав в Бобринець!
Танцював із дружкою, говорив на вушко їй.
Шось мутив з кумою, спортив їм обої.
Погуляв солідно, видно. Спомнить тіки стидно.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3126261_l1','pisniua_3126261','YouTube','https://www.youtube.com/watch?v=SKlxPyJzLkQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3121168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3121168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3121168';
DELETE FROM songs WHERE id = 'pisniua_3121168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3121168','Ой, одверни, Боже, хмару','Українська народна пісня. Виконує: Древо','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Йой, одверни, Боже, й хмару ж
Да й на чужую сторону ж.

Йой, там дід бородатий,
Йой, дівки, череватий ж.

Да й не має ж калюжоньки,
Щоб випрати пелюшочки.','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3121168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3121168','Ой, одверни, Боже, хмару','Йой, одверни, Боже, й хмару ж
Да й на чужую сторону ж.

Йой, там дід бородатий,
Йой, дівки, череватий ж.

Да й не має ж калюжоньки,
Щоб випрати пелюшочки.');
DELETE FROM song_links WHERE song_id = 'pisniua_3128222';
DELETE FROM song_versions WHERE song_id = 'pisniua_3128222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3128222';
DELETE FROM songs WHERE id = 'pisniua_3128222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3128222','Перша нота, нота до...','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Перша нота - нота до, ми тверезі от і до
Гей дана, гей дана, гей

Друга нота - нота ре, алкоголь нас не бере
Гей дана, гей дана, гей

Третя нота - нота мі, наливаємо самі
Гей дана, гей дана, гей

Чверта нота - нота фа, заболіла голова
Гей дана, гей дана, гей

П''ята нота - нота соль, не бере нас алкоголь
Гей дана, гей дана, гей

Шоста нота - нота ля, закрутилася земля
Гей дана, гей дана, гей

Сьома нота - нота сі, викликаємо таксі
Гей дана, гей дана, гей

Восьма нота - нота до, ми тверезі все одно
Гей дана, гей дана, гей    Фонограма мінус (midi)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3128222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3128222','Перша нота, нота до...','Перша нота - нота до, ми тверезі от і до
Гей дана, гей дана, гей

Друга нота - нота ре, алкоголь нас не бере
Гей дана, гей дана, гей

Третя нота - нота мі, наливаємо самі
Гей дана, гей дана, гей

Чверта нота - нота фа, заболіла голова
Гей дана, гей дана, гей

П''ята нота - нота соль, не бере нас алкоголь
Гей дана, гей дана, гей

Шоста нота - нота ля, закрутилася земля
Гей дана, гей дана, гей

Сьома нота - нота сі, викликаємо таксі
Гей дана, гей дана, гей

Восьма нота - нота до, ми тверезі все одно
Гей дана, гей дана, гей    Фонограма мінус (midi)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3128222_l1','pisniua_3128222','YouTube','https://www.youtube.com/watch?v=B6jxQB6aHCc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3128222_l2','pisniua_3128222','YouTube','https://www.youtube.com/watch?v=RL_F9eqU_Nw','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3128222_l3','pisniua_3128222','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3128222_l4','pisniua_3128222','http://www.minus.lviv.ua','http://www.minus.lviv.ua','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_3128663';
DELETE FROM song_versions WHERE song_id = 'pisniua_3128663';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3128663';
DELETE FROM songs WHERE id = 'pisniua_3128663';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3128663','Ти бережи синів моїх','(Ти пам''ятай, Афганістане!). Музика: Микола Балема Слова: Мирослав Воньо. Виконує: Ірина Фуштей, ансамбль "Козаки Поділля"','uk','ukraine_1991',NULL,'2008','Диск "Волошка. Мирослав Воньо.Срібні пісні", студія "ГроЛіс",м.Тернопіль. 2008 р.','Виконавець: засл.артистка України Ірина Фуштей та ансамбль пісні та танцю "Козаки Поділля", диск "Волошка. Мирослав Воньо. Срібні пісні", студія "ГроЛіс", м.Тернопіль,2008 р.','Чекала дівчина солдата,
Писала за листом листа.
Його послали воювати
В болючий край Афганістан.
І той солдат сестрі-школярці
В медалях снився вже не раз.
Він на армійській фотокартці
Йшов з нею в школу в перший клас.

Приспів-1:     Приспів-2:

Ти бережи, щаслива доле,   Ти пам''ятай,Афганістане,
Моїх синів, молю тебе,   Усіх твоїх захисників!
Хай не затьмариться ніколи  Хай будуть прокляті душмани
Над ними небо голубе!   За горе наших матерів!

Бабуся ждала на онука,
Молилась Богу день при дні,
Щоб не вернувся він безруким,
Щоб не пропав на тій війні.
Чекали сина батько й мати,
Свою надію і любов.
Яке це буде вдома свято,
Як він вернеться жив-здоров!

Приспів.

А він в неділю вранці-рано
У рідний край, у рідний дім
Вернувся із Афганістану
В одежі цинковій, страшній.
Прощалось все село з солдатом,
Усі батьки і матері.
Повік його весна двадцята
Над ним завмерла угорі.

Приспів','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3128663'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3128663','Ти бережи синів моїх','Чекала дівчина солдата,
Писала за листом листа.
Його послали воювати
В болючий край Афганістан.
І той солдат сестрі-школярці
В медалях снився вже не раз.
Він на армійській фотокартці
Йшов з нею в школу в перший клас.

Приспів-1:     Приспів-2:

Ти бережи, щаслива доле,   Ти пам''ятай,Афганістане,
Моїх синів, молю тебе,   Усіх твоїх захисників!
Хай не затьмариться ніколи  Хай будуть прокляті душмани
Над ними небо голубе!   За горе наших матерів!

Бабуся ждала на онука,
Молилась Богу день при дні,
Щоб не вернувся він безруким,
Щоб не пропав на тій війні.
Чекали сина батько й мати,
Свою надію і любов.
Яке це буде вдома свято,
Як він вернеться жив-здоров!

Приспів.

А він в неділю вранці-рано
У рідний край, у рідний дім
Вернувся із Афганістану
В одежі цинковій, страшній.
Прощалось все село з солдатом,
Усі батьки і матері.
Повік його весна двадцята
Над ним завмерла угорі.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_3127323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3127323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3127323';
DELETE FROM songs WHERE id = 'pisniua_3127323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3127323','Украдене сонце','Музика: Володимир Скоробський Слова: Василь Стус. Виконує: Журборіз','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Украдене сонце зизить
Схарапудженим оком,
Мов кінь навіжений
Що чує під серцем ножа.

За хмарами хмари,
За димом пожарищ високо
Зоріє на пустку
Давно збайдужілі божа.

Стенаються в герці
Скажені сини України,
Той з ордами бродить,
А той накликає Москву.

Затялися очі пророчі,
Пророчі з руїни,
Вже мати не встане,
Розкинула руки в рову.

Найшли, налетіли,
Зам''яли, спалили,
Побрали з собою в неволю
Весь тонкоголосий ясир.

Бодай ви пропали, синочки,
Бодай ви пропали,
Бо так не карав нас ні лях,
Бусурмен-бузувір.

І Тясмину тісно од трупу
Козацького й крові,
І Буг почорнілий
Загачено трупом людським.

Бодай ви пропали, синочки,
Були б ви здорові,
У пеклі запеклім,
У райському раї страшнім.

Паси з вас наріжуть,
Натягнуть на гузна вам палі,
І крові наточать,
Упийтесь скаженим вином.

А де ж Україна?..
Все далі, все далі, все далі...
Наш дуб предковічний
Укрився сухим порохном.

Украдене сонце зизить
Схарапудженим оком,
Мов кінь навіжений
Що чує під серцем метал.

Куріє руїна,
Кривавим збігає потоком,
А сонце татарське
Стожальне разить наповал...

А де ж Україна?..
Все далі, все далі, все далі...
Шляхи заростають
Дрімучим терпким полином...

А де ж Україна?..
Все далі, все далі, все далі...
Шляхи заростають
Дрімучим терпким полином...','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3127323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3127323','Украдене сонце','Украдене сонце зизить
Схарапудженим оком,
Мов кінь навіжений
Що чує під серцем ножа.

За хмарами хмари,
За димом пожарищ високо
Зоріє на пустку
Давно збайдужілі божа.

Стенаються в герці
Скажені сини України,
Той з ордами бродить,
А той накликає Москву.

Затялися очі пророчі,
Пророчі з руїни,
Вже мати не встане,
Розкинула руки в рову.

Найшли, налетіли,
Зам''яли, спалили,
Побрали з собою в неволю
Весь тонкоголосий ясир.

Бодай ви пропали, синочки,
Бодай ви пропали,
Бо так не карав нас ні лях,
Бусурмен-бузувір.

І Тясмину тісно од трупу
Козацького й крові,
І Буг почорнілий
Загачено трупом людським.

Бодай ви пропали, синочки,
Були б ви здорові,
У пеклі запеклім,
У райському раї страшнім.

Паси з вас наріжуть,
Натягнуть на гузна вам палі,
І крові наточать,
Упийтесь скаженим вином.

А де ж Україна?..
Все далі, все далі, все далі...
Наш дуб предковічний
Укрився сухим порохном.

Украдене сонце зизить
Схарапудженим оком,
Мов кінь навіжений
Що чує під серцем метал.

Куріє руїна,
Кривавим збігає потоком,
А сонце татарське
Стожальне разить наповал...

А де ж Україна?..
Все далі, все далі, все далі...
Шляхи заростають
Дрімучим терпким полином...

А де ж Україна?..
Все далі, все далі, все далі...
Шляхи заростають
Дрімучим терпким полином...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3127323_l1','pisniua_3127323','YouTube','https://www.youtube.com/watch?v=NnJLV9UcZbo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3130168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3130168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3130168';
DELETE FROM songs WHERE id = 'pisniua_3130168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3130168','Озвись','Музика: Мар''ян Гаденко Слова: Микола Сингаївський. Виконує: Ніна Шестакова, Алла Кобилянська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Про тебе думаю щоднини,
А дні летять, а дні летять
І щастя зоряні хвилини
У серці щемно стукотять.

Приспів:
З тобою кожна мить, як пісня,
А в кожній пісні два крила.
Ти з неї щедрості напийся,
Немов з дзвінкого джерела.
Озвись, мов птаха вдалині,
Стань весною цвітом,
Чи, на мить, прощанням.
Не стань лише розлукою мені,
Де кожна наша зустріч,
Мов остання.

Ти мов життя мені, жаданий,
Живи і серцем пам''ятай,
Що ти омріяний, коханий,
Як чисте небо, отчий край.

Приспів. (2)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3130168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3130168','Озвись','Про тебе думаю щоднини,
А дні летять, а дні летять
І щастя зоряні хвилини
У серці щемно стукотять.

Приспів:
З тобою кожна мить, як пісня,
А в кожній пісні два крила.
Ти з неї щедрості напийся,
Немов з дзвінкого джерела.
Озвись, мов птаха вдалині,
Стань весною цвітом,
Чи, на мить, прощанням.
Не стань лише розлукою мені,
Де кожна наша зустріч,
Мов остання.

Ти мов життя мені, жаданий,
Живи і серцем пам''ятай,
Що ти омріяний, коханий,
Як чисте небо, отчий край.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3129869';
DELETE FROM song_versions WHERE song_id = 'pisniua_3129869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3129869';
DELETE FROM songs WHERE id = 'pisniua_3129869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3129869','Купала','Музика: Олександр Шевченко Слова: Олександр Шевченко. Виконує: Олександр Шевченко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'В ніч на Івана в чарівнім серпанку
Підемо разом на зустріч світанку,
Шепіт гарячий вночі, голоси молоді,
В шепоті тому серця завмирають,
В річку дівчата віночки пускають,
І тихо пливуть ті віночки по темній воді.

Приспів:
Зачаровані обоє зоряним небом
Віч на віч,
Обіймає нас з тобою ніч,
Купальська ніч.
Ніч, купальська ніч.

В ніч на Івана вогні загорілися,
Руки гарячі у танці зустрілися,
Я розшукаю, де папороть в лісі цвіте.
Пахне повітря травою прим''ятою,
Пахне чар-зіллям і рутою, м''ятою,
В ніч на Іване буяє життя молоде.

Приспів. (2)

Ніч, купальська ніч...','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3129869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3129869','Купала','В ніч на Івана в чарівнім серпанку
Підемо разом на зустріч світанку,
Шепіт гарячий вночі, голоси молоді,
В шепоті тому серця завмирають,
В річку дівчата віночки пускають,
І тихо пливуть ті віночки по темній воді.

Приспів:
Зачаровані обоє зоряним небом
Віч на віч,
Обіймає нас з тобою ніч,
Купальська ніч.
Ніч, купальська ніч.

В ніч на Івана вогні загорілися,
Руки гарячі у танці зустрілися,
Я розшукаю, де папороть в лісі цвіте.
Пахне повітря травою прим''ятою,
Пахне чар-зіллям і рутою, м''ятою,
В ніч на Іване буяє життя молоде.

Приспів. (2)

Ніч, купальська ніч...');
DELETE FROM song_links WHERE song_id = 'pisniua_3129560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3129560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3129560';
DELETE FROM songs WHERE id = 'pisniua_3129560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3129560','Гуси-лебеді','Музика: Богдан-Юрій Янівський Слова: Богдан Стельмах. Виконує: Дарка і Славко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Їхав, обіцяв повернутись,
Прийти ти,
Ой, не зміг прийти,
Ніч свою знайти встиг.

Гуси-лебеді в синій вересень,
Ладо з Ладою за розлукою,
Гуси-лебеді, біле пір''ячко,
Ладо з Ладою, жаль.
Гуси-лебеді в синій вересень,
Ладо з Ладою за розлукою,
Гуси-лебеді, Ладо з Ладою, жаль.

Мине білий лебідь, мене мине,
Жаль Ладо з Ладою, жаль,
Жаль, білий лебідь мене мине,
Жаль Ладо з Ладою, жаль.

Білий лебідь,
Злети скоріш в височинь, злинь,
Бо життя пройде,
А любов не прийде.

Приспів.

Їхав, обіцяв повернутись,
Прийти ти,
Ой, не міг прийти,
Ніч свою знайти в сни.

Гуси-лебеді в синій вересень,
Ладо з Ладою за розлукою.
Гуси-лебеді, біле пір''ячко,
Ладо з Ладою, жаль.
Гуси-лебеді в синій вересень,
Ладо з Ладою за розлукою.
Гуси-лебеді, Ладо з Ладою, жаль.

Мине білий лебідь, мене мине, |
Жаль Ладо з Ладою, жаль,      |
Жаль, білий лебідь мене мине, |
Жаль Ладо з Ладою, жаль.      | (2)

Жаль Ладо з Ладою, жаль.      | (2)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3129560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3129560','Гуси-лебеді','Їхав, обіцяв повернутись,
Прийти ти,
Ой, не зміг прийти,
Ніч свою знайти встиг.

Гуси-лебеді в синій вересень,
Ладо з Ладою за розлукою,
Гуси-лебеді, біле пір''ячко,
Ладо з Ладою, жаль.
Гуси-лебеді в синій вересень,
Ладо з Ладою за розлукою,
Гуси-лебеді, Ладо з Ладою, жаль.

Мине білий лебідь, мене мине,
Жаль Ладо з Ладою, жаль,
Жаль, білий лебідь мене мине,
Жаль Ладо з Ладою, жаль.

Білий лебідь,
Злети скоріш в височинь, злинь,
Бо життя пройде,
А любов не прийде.

Приспів.

Їхав, обіцяв повернутись,
Прийти ти,
Ой, не міг прийти,
Ніч свою знайти в сни.

Гуси-лебеді в синій вересень,
Ладо з Ладою за розлукою.
Гуси-лебеді, біле пір''ячко,
Ладо з Ладою, жаль.
Гуси-лебеді в синій вересень,
Ладо з Ладою за розлукою.
Гуси-лебеді, Ладо з Ладою, жаль.

Мине білий лебідь, мене мине, |
Жаль Ладо з Ладою, жаль,      |
Жаль, білий лебідь мене мине, |
Жаль Ладо з Ладою, жаль.      | (2)

Жаль Ладо з Ладою, жаль.      | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3125828';
DELETE FROM song_versions WHERE song_id = 'pisniua_3125828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3125828';
DELETE FROM songs WHERE id = 'pisniua_3125828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3125828','Це мій рідний край (Вдалині за річкою....)','Музика: Володимир Куртяк Слова: Вадим Крищенко. Виконує: Світлана Весна','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вдалині за річкою срібний зорепад
І вином порічковим всіх частує сад,
Літньою долиною йду не поспіша
Вишнею й калиною втішена душа.

Приспів:
Це край, де я родилась і живу,
Де все для мене рідне — не байдуже,
Де зірка з неба впала у траву,
Щоб ти мене побачив милий друже.
Це край моєї втіхи і сльози,
Із рідним словом, з рідними піснями
Тулюся до вкраїнської краси,
Бо це взяла від батька і від мами.

Пахнуть луки травами, пахнуть до знемог
Грішне разом з праведним в силуетах двох,
Музика над тишею, хоч на струнах грай
І душа утішена — це мій рідний край!

Приспів','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3125828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3125828','Це мій рідний край (Вдалині за річкою....)','Вдалині за річкою срібний зорепад
І вином порічковим всіх частує сад,
Літньою долиною йду не поспіша
Вишнею й калиною втішена душа.

Приспів:
Це край, де я родилась і живу,
Де все для мене рідне — не байдуже,
Де зірка з неба впала у траву,
Щоб ти мене побачив милий друже.
Це край моєї втіхи і сльози,
Із рідним словом, з рідними піснями
Тулюся до вкраїнської краси,
Бо це взяла від батька і від мами.

Пахнуть луки травами, пахнуть до знемог
Грішне разом з праведним в силуетах двох,
Музика над тишею, хоч на струнах грай
І душа утішена — це мій рідний край!

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3125828_l1','pisniua_3125828','YouTube','https://www.youtube.com/watch?v=VouDm1IiZPE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_313020';
DELETE FROM song_versions WHERE song_id = 'pisniua_313020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_313020';
DELETE FROM songs WHERE id = 'pisniua_313020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_313020','Ой зацвіла черемха','Музика: Роман Купчинський Слова: Роман Купчинський. Виконує: Не журись!','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,NULL,NULL,'Ой зацвіла черемха, зацвіла
Ярим цвітом.
Там прощався та й стрілець січовий
З білим світом.

Там прощався та й стрілець січовий
З квітоньками,
Що немає кому прокопати
Йому ями.

Нема кому труни тисової
Оповити.
Буде тіло чорне гайвороння
Розносити.

А черемха тую скаргу тиху
Зрозуміла,
Чисту душу стрільця січового
Пожаліла.

Спи спокійно, стрільчику січовий,
Спи, мій сину.
Бо я тебе чесно поховаю,
Як дитину.

Рано-вранці прийшли за ним друзі
Обрядити.
А за нічку стрільця січового
Вкрили квіти','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_313020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_313020','Ой зацвіла черемха','Ой зацвіла черемха, зацвіла
Ярим цвітом.
Там прощався та й стрілець січовий
З білим світом.

Там прощався та й стрілець січовий
З квітоньками,
Що немає кому прокопати
Йому ями.

Нема кому труни тисової
Оповити.
Буде тіло чорне гайвороння
Розносити.

А черемха тую скаргу тиху
Зрозуміла,
Чисту душу стрільця січового
Пожаліла.

Спи спокійно, стрільчику січовий,
Спи, мій сину.
Бо я тебе чесно поховаю,
Як дитину.

Рано-вранці прийшли за ним друзі
Обрядити.
А за нічку стрільця січового
Вкрили квіти');
DELETE FROM song_links WHERE song_id = 'pisniua_313467';
DELETE FROM song_versions WHERE song_id = 'pisniua_313467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_313467';
DELETE FROM songs WHERE id = 'pisniua_313467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_313467','На камені ноги мию','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,'* Ці в''язки (куплети) додав "Anrzej". Тональність мелодії (D minor), поданої у midi-файлі, відміннна від тональності, у якій подані акорди у тексті пісні.','На ка___мені но_ги   ми_ю,
На камені стою,
Кругом мене чари сиплять,   |
А я   ся й не бою.          | (2)

Навкруг мене чари сиплять -
А я не боюся,
Коби скорше до осені,       |
Бо я віддаюся.              | (2)

Коби скорше до осені -
Віддамся, віддамся,
Але свому миленькому,       |
Зрадити не дамся.           | (2)

Кругом мене чари сиплять, *
А я не боюся,
Коби швидше до вечора -     |
Піду притулюся.             | (2)

Коби швидше до вечора, *
До темної нічки,
Коби швидше зазирнути       |
Миленькому в вічки.         | (2)

Сама овес я сіяла -
Сама його й скошу,
Сам мій милий нагнівався -  |
Сам ся перепрошуй.          | (2)

Чого вікна побіліли? -
Бо вітер з морозом.
Розгнівався мій миленький - |
Дурний в нього розум.       | (2)

Розгнівався мій миленький
У самий вівторок,
Здається ми, моя мамко,     |
Що вже неділь сорок.        | (2)

- Ой не сорок, моя доню,
Не сорок, не сорок:
Учора був понеділок -       |
Сьогодні вівторок.          | (2)

Нема мого миленького, *
Нема мої чічки (квітки),
Пішла б його виглядати,     |
Та не знаю звідки.          | (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_313467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_313467','На камені ноги мию','На ка___мені но_ги   ми_ю,
На камені стою,
Кругом мене чари сиплять,   |
А я   ся й не бою.          | (2)

Навкруг мене чари сиплять -
А я не боюся,
Коби скорше до осені,       |
Бо я віддаюся.              | (2)

Коби скорше до осені -
Віддамся, віддамся,
Але свому миленькому,       |
Зрадити не дамся.           | (2)

Кругом мене чари сиплять, *
А я не боюся,
Коби швидше до вечора -     |
Піду притулюся.             | (2)

Коби швидше до вечора, *
До темної нічки,
Коби швидше зазирнути       |
Миленькому в вічки.         | (2)

Сама овес я сіяла -
Сама його й скошу,
Сам мій милий нагнівався -  |
Сам ся перепрошуй.          | (2)

Чого вікна побіліли? -
Бо вітер з морозом.
Розгнівався мій миленький - |
Дурний в нього розум.       | (2)

Розгнівався мій миленький
У самий вівторок,
Здається ми, моя мамко,     |
Що вже неділь сорок.        | (2)

- Ой не сорок, моя доню,
Не сорок, не сорок:
Учора був понеділок -       |
Сьогодні вівторок.          | (2)

Нема мого миленького, *
Нема мої чічки (квітки),
Пішла б його виглядати,     |
Та не знаю звідки.          | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_313467_l1','pisniua_313467','YouTube','https://www.youtube.com/watch?v=9rsv2uVJ_Ps','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_313467_l2','pisniua_313467','YouTube','https://www.youtube.com/watch?v=QNtFJGUQUv4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_313626';
DELETE FROM song_versions WHERE song_id = 'pisniua_313626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_313626';
DELETE FROM songs WHERE id = 'pisniua_313626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_313626','Люляй, люляй, мій синочку','(Колискова). Музика: Віктор Морозов Слова: Андрій Панчишин. Виконує: Оксана Білозір, Віктор Морозов, Man Sound, Оксана Білозір, Анжеліка Рудницька, Поль Манондіз','uk','ukraine_1991',NULL,'1992','http://www.mo-productions.com/ukr/zironkatapelyrics.html','Пісня з альбому "ЧЕРЕЗ ЗІРОНЬКУ ЯСНУ (1992) (Українські колискові пісні) (книжка й музична касета) Аудіо (фрагмент, real audio): http://www.mo-productions.com/clips/metaliuliay.ram','Люляй, люляй, мій синочку,
Тато зробить забавочку,
Зробить шабельку кленову
Та ще й коника гнідого,
Мама вишиє сорочку,
Люляй, люляй, мій синочку.

Приспів:
А-а, котки два, шурі-бурі обидва!.. | (2)

Люляй, люляй, мій Іванку,
Завтра вбереш вишиванку,
Припнеш шабельку до боку,
Та й поїдеш в світ широкий.
А в воротях кінь спіткнеться,
Син додому не вернеться...

Приспів.

У неділю вранці-рано,
Кінь вернувся осідланий,
Вийшла з хати стара мати,
Стала коня напувати,
Як напоїть, то й заплаче:
Люляй, люляй, мій козаче...

Приспів.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:kolyskovi'', ''Бардівські пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_313626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_313626','Люляй, люляй, мій синочку','Люляй, люляй, мій синочку,
Тато зробить забавочку,
Зробить шабельку кленову
Та ще й коника гнідого,
Мама вишиє сорочку,
Люляй, люляй, мій синочку.

Приспів:
А-а, котки два, шурі-бурі обидва!.. | (2)

Люляй, люляй, мій Іванку,
Завтра вбереш вишиванку,
Припнеш шабельку до боку,
Та й поїдеш в світ широкий.
А в воротях кінь спіткнеться,
Син додому не вернеться...

Приспів.

У неділю вранці-рано,
Кінь вернувся осідланий,
Вийшла з хати стара мати,
Стала коня напувати,
Як напоїть, то й заплаче:
Люляй, люляй, мій козаче...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_313626_l1','pisniua_313626','YouTube','https://www.youtube.com/watch?v=jb30zBdsbCc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_313626_l2','pisniua_313626','YouTube','https://www.youtube.com/watch?v=pkuKu3Y9gFs','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_313626_l3','pisniua_313626','YouTube','https://www.youtube.com/watch?v=3VPv31MdoIw','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3136766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3136766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3136766';
DELETE FROM songs WHERE id = 'pisniua_3136766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3136766','Виберіть мене','Музика: Олександр Положинський Слова: Олександр Положинський. Виконує: Олександр Положинський','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вирішив власне життя привести до ладу -
Буду балотуватися в президентську владу.
А чом би й ні? Кожному дорога відкрита
До, так би мовити, державного корита.
Мої руки нічого не крали, тіло моє не сиділо,
А якщо і сиділо, то яке кому діло?
Назбираю грошей, куплю індульгенцію -
І запишуся до еліти, богеми чи інтелігенції.
Вивчу гарну промову, відрепетирую міміку,
У власну риторику вплету критику та лірику.
Говоритиму про народ, про владу, про Україну-неньку,
Тим часом підберу собі костюмчик гарненький.
Народу все одно - кандидати порожні чи повні,
Важливо не те, що всередині, а те, що зовні.
Очі мої - чисті й невинні, обличчя - просте,
От тільки шкода, що коса не росте...

Громадяни України, користуйтесь моментом -
Виберіть мене своїм Президентом!
А щоб уберегтися від верховної зради,
Дозвольте мені узурпувати владу...

Для початку знайду собі олігарха -
Нехай профінансує майбутнього монарха.
Найму консультатном якогось закордонного вар''ята
І почну боротьбу за прихильність електорату.
Бідним пообіцяю, що зроблю всіх багатими,
Багатим поклянусь, що їх не чіпатиму.
І під прапором поморанчево-червоно-біло-синім
Відправлюся у тривале турне по країні.
На Сході розповідатиму, що западенці - фашисти,
Захід переконаю, що всі східняки - комуністи.
А коли Схід та Захід зіштовхну лобами,
Зганяю на поклон до бараку Обами.
Зовнішня політика нескладна, по суті,
Тому зганяю на поклон ще й до Мєдвєдєва і Путіна.
Коротше, ні ідеї, ні ідеології,
А бруд і брехню назву політтехнологіями...

Громадяни України, користуйтесь моментом -
Виберіть мене своїм Президентом!
А щоб уберегтися від верховної зради,
Дозвольте мені узурпувати владу...

Передвиборчу кампанію проведу максимально серйозно
За мене проголосують майже одноголосно!
Служитиму народу вірою і правдою,
А відповідальність ділитиму між Кабміном та Радою.
Все накра... зароблене запишу на маму,
А маму, про всяк випадок, відправлю в Панаму.
Всю рідню забезпечу, всім друзям віддячу,
Ну й собі зароблю - на пенсію і дачу...

Громадяни України, користуйтесь моментом -
Виберіть мене своїм Президентом!
А щоб уберегтися від верховної зради,
Дозвольте мені узурпувати владу...','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3136766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3136766','Виберіть мене','Вирішив власне життя привести до ладу -
Буду балотуватися в президентську владу.
А чом би й ні? Кожному дорога відкрита
До, так би мовити, державного корита.
Мої руки нічого не крали, тіло моє не сиділо,
А якщо і сиділо, то яке кому діло?
Назбираю грошей, куплю індульгенцію -
І запишуся до еліти, богеми чи інтелігенції.
Вивчу гарну промову, відрепетирую міміку,
У власну риторику вплету критику та лірику.
Говоритиму про народ, про владу, про Україну-неньку,
Тим часом підберу собі костюмчик гарненький.
Народу все одно - кандидати порожні чи повні,
Важливо не те, що всередині, а те, що зовні.
Очі мої - чисті й невинні, обличчя - просте,
От тільки шкода, що коса не росте...

Громадяни України, користуйтесь моментом -
Виберіть мене своїм Президентом!
А щоб уберегтися від верховної зради,
Дозвольте мені узурпувати владу...

Для початку знайду собі олігарха -
Нехай профінансує майбутнього монарха.
Найму консультатном якогось закордонного вар''ята
І почну боротьбу за прихильність електорату.
Бідним пообіцяю, що зроблю всіх багатими,
Багатим поклянусь, що їх не чіпатиму.
І під прапором поморанчево-червоно-біло-синім
Відправлюся у тривале турне по країні.
На Сході розповідатиму, що западенці - фашисти,
Захід переконаю, що всі східняки - комуністи.
А коли Схід та Захід зіштовхну лобами,
Зганяю на поклон до бараку Обами.
Зовнішня політика нескладна, по суті,
Тому зганяю на поклон ще й до Мєдвєдєва і Путіна.
Коротше, ні ідеї, ні ідеології,
А бруд і брехню назву політтехнологіями...

Громадяни України, користуйтесь моментом -
Виберіть мене своїм Президентом!
А щоб уберегтися від верховної зради,
Дозвольте мені узурпувати владу...

Передвиборчу кампанію проведу максимально серйозно
За мене проголосують майже одноголосно!
Служитиму народу вірою і правдою,
А відповідальність ділитиму між Кабміном та Радою.
Все накра... зароблене запишу на маму,
А маму, про всяк випадок, відправлю в Панаму.
Всю рідню забезпечу, всім друзям віддячу,
Ну й собі зароблю - на пенсію і дачу...

Громадяни України, користуйтесь моментом -
Виберіть мене своїм Президентом!
А щоб уберегтися від верховної зради,
Дозвольте мені узурпувати владу...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3136766_l1','pisniua_3136766','YouTube','https://www.youtube.com/watch?v=AdyzgiLCzLI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3130323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3130323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3130323';
DELETE FROM songs WHERE id = 'pisniua_3130323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3130323','Чужина','Музика: Василь Дунець Слова: Василь Дунець. Виконує: Василь Дунець','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Знову Гамбург зустів нас дощем,
Плачуть голі дерева у сні,
Закриваюсь од вітру плащем
Та незатишно зовсім мені.
Мої думи гіркі невеселі
Точать серце у цій далині,
Десь дружина в холодній постелі,
Я ж тиняюся по чужині.

Чужина, чужина, чужина,     |
Не зігрієш ти душу мою,     |
Бо мій дім і родина моя     |
Залишись у ріднім краю.     | (2)

Де б не був у Нью-Йорку, Берліні,
Чи в туманному Лондоні теж,
Земляків моїх очі журливі
Серед тисяч чужих пізнаєш.
В них і смуток, і біль невимовні,
За майбутнє дітей своїх страх,
Ой, як часто слізьми вони повні,
Все читаєш у рідних очах.

Чужина, чужина, чужина,     |
Не зігрієш ти душу мою,     |
Бо мій дім і родина моя     |
Залишись у ріднім краю.     | (2)

Чужина... Чужина...

На полях, на будовах, в борделях
Можна мову почути свою.
Земляки розпрощавшись з ріднею,
Там за безцінь себе продають.
Українці, козацька родино,
Доки будем рабами в раю?
Повертайтесь назад в Україну
І державу будуйте свою!

Бо як б не була чужина,     |
Все одно ви чужинці на ній. |
Не замінить вам матір вона, |
Щастя жити в своїй стороні. | (2)','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3130323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3130323','Чужина','Знову Гамбург зустів нас дощем,
Плачуть голі дерева у сні,
Закриваюсь од вітру плащем
Та незатишно зовсім мені.
Мої думи гіркі невеселі
Точать серце у цій далині,
Десь дружина в холодній постелі,
Я ж тиняюся по чужині.

Чужина, чужина, чужина,     |
Не зігрієш ти душу мою,     |
Бо мій дім і родина моя     |
Залишись у ріднім краю.     | (2)

Де б не був у Нью-Йорку, Берліні,
Чи в туманному Лондоні теж,
Земляків моїх очі журливі
Серед тисяч чужих пізнаєш.
В них і смуток, і біль невимовні,
За майбутнє дітей своїх страх,
Ой, як часто слізьми вони повні,
Все читаєш у рідних очах.

Чужина, чужина, чужина,     |
Не зігрієш ти душу мою,     |
Бо мій дім і родина моя     |
Залишись у ріднім краю.     | (2)

Чужина... Чужина...

На полях, на будовах, в борделях
Можна мову почути свою.
Земляки розпрощавшись з ріднею,
Там за безцінь себе продають.
Українці, козацька родино,
Доки будем рабами в раю?
Повертайтесь назад в Україну
І державу будуйте свою!

Бо як б не була чужина,     |
Все одно ви чужинці на ній. |
Не замінить вам матір вона, |
Щастя жити в своїй стороні. | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3130323_l1','pisniua_3130323','YouTube','https://www.youtube.com/watch?v=maX8uFHIH98','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3130626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3130626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3130626';
DELETE FROM songs WHERE id = 'pisniua_3130626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3130626','Різдво Богородиці',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Що то за диво, що за причина?
На небі яснім зоря заясніла.
Місяць у повені, в сонячнім сяйві,
Веселка по небу від краю до краю.

Приспів:
Ликує небо, земля звеселилась,
Діва Марія на світ народилась,
Радіє Анна і Йоаким.
Марія, Марія, свята Марія -
Радість і мир,
Світло і мир - Марія.

Спить собі тихо святая дитина,
Непорочно зачата - світу перлина.
Любов і надія світанку світлого,
Майбутнього Мати, Мати Всевишнього.

Приспів.','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3130626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3130626','Різдво Богородиці','Що то за диво, що за причина?
На небі яснім зоря заясніла.
Місяць у повені, в сонячнім сяйві,
Веселка по небу від краю до краю.

Приспів:
Ликує небо, земля звеселилась,
Діва Марія на світ народилась,
Радіє Анна і Йоаким.
Марія, Марія, свята Марія -
Радість і мир,
Світло і мир - Марія.

Спить собі тихо святая дитина,
Непорочно зачата - світу перлина.
Любов і надія світанку світлого,
Майбутнього Мати, Мати Всевишнього.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3137663';
DELETE FROM song_versions WHERE song_id = 'pisniua_3137663';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3137663';
DELETE FROM songs WHERE id = 'pisniua_3137663';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3137663','Як президента обирали','Музика: Тризубий Стас Слова: Тризубий Стас. Виконує: Тризубий Стас','uk','ukraine_1991',NULL,NULL,'http://uamusiclib.com',NULL,'Я сідав вечерю їсти, передали телевісті,
Що нема вже комуністів: хто застрілився, хто втік.
Сімдесят очей із гаком ми смоктали дулю з маком,
А тепер створився вакуум, замість дулі навіть пшик.

Але в нашій спільній хаті є багато інших партій,
Є зелені, є строкаті, жовті в квіточку, рябі,
От і я собі на свята взяв швагра, дружину, брата,
І утворив партапарата невеличкого собі.

Розпочали перші збори, літру витягли з комори,
На тарілу помідори, у президії швагро,
За драбину троха взяли, "Ще не вмерла!" заспівали,
Генерального обрали і ЦК Політбюро.

Дід Петро з порядком денним ознайомив наш той пленум
І усім партійним членам по кілішку націдив,
І до рану наш парламент в майбуття заклав фундамент,
Кум поїхав у регламент, чимсь недобрим закусив.

Тесть підвівся з помідором і сказав, що то є сором,
Рятувати треба кворум, поки спати не лягли,
Всі ми були одностайні за негайні міри крайні,
Кума віднесли до стайні і навіз не перейшли.

Жінка в різному подала: пиво, голубці та сало,
А, як горілки вже не стало, я в сусіда попросив.
Починало вже світати, але далі йшли дебати,
Бо сусід до нас до хати ще й свою партію привів.

Ми сували претендента на посаду Президента,
Вже допились до моменту обговорення програм,
Свекор висунув свекруху, тещу всунули від Руху,
А, як кум прийшом до духу, із стайні висунувся сам.

Загалом у нашій хаті назбиралось кандидатів
Із обох сусідських партій двадцять вісім без Грицька,
Бо Грицько пішов до вітру і схопив з стола півлітру,
І ми його, тварюку хитру, не включили до списка.

Цілий день голосували - Президента обирали,
А біленьку тут же ж гнали - шланг пустили на стола,
Так робота йшла сесійна, а комісія постійна
Розробила двохпартійну Конституцію села.

Секретар ЦК Микола записав до протокола,
Що ми не проти Чорновола та такий на нині стан,
Що на кожного Івана в нас в селі по два гетьмана,
А ще на кожного гетьмана додатковий отаман.

Але в тім біди немає - в нас громада справу знає!
Президентів вистачає, хоч в союз, а хоч в ООН,
І як на те є воля Божа, ми ще й республікам поможем,
Аби лиш сила нам ворожа не перекрила самогон!','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3137663'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3137663','Як президента обирали','Я сідав вечерю їсти, передали телевісті,
Що нема вже комуністів: хто застрілився, хто втік.
Сімдесят очей із гаком ми смоктали дулю з маком,
А тепер створився вакуум, замість дулі навіть пшик.

Але в нашій спільній хаті є багато інших партій,
Є зелені, є строкаті, жовті в квіточку, рябі,
От і я собі на свята взяв швагра, дружину, брата,
І утворив партапарата невеличкого собі.

Розпочали перші збори, літру витягли з комори,
На тарілу помідори, у президії швагро,
За драбину троха взяли, "Ще не вмерла!" заспівали,
Генерального обрали і ЦК Політбюро.

Дід Петро з порядком денним ознайомив наш той пленум
І усім партійним членам по кілішку націдив,
І до рану наш парламент в майбуття заклав фундамент,
Кум поїхав у регламент, чимсь недобрим закусив.

Тесть підвівся з помідором і сказав, що то є сором,
Рятувати треба кворум, поки спати не лягли,
Всі ми були одностайні за негайні міри крайні,
Кума віднесли до стайні і навіз не перейшли.

Жінка в різному подала: пиво, голубці та сало,
А, як горілки вже не стало, я в сусіда попросив.
Починало вже світати, але далі йшли дебати,
Бо сусід до нас до хати ще й свою партію привів.

Ми сували претендента на посаду Президента,
Вже допились до моменту обговорення програм,
Свекор висунув свекруху, тещу всунули від Руху,
А, як кум прийшом до духу, із стайні висунувся сам.

Загалом у нашій хаті назбиралось кандидатів
Із обох сусідських партій двадцять вісім без Грицька,
Бо Грицько пішов до вітру і схопив з стола півлітру,
І ми його, тварюку хитру, не включили до списка.

Цілий день голосували - Президента обирали,
А біленьку тут же ж гнали - шланг пустили на стола,
Так робота йшла сесійна, а комісія постійна
Розробила двохпартійну Конституцію села.

Секретар ЦК Микола записав до протокола,
Що ми не проти Чорновола та такий на нині стан,
Що на кожного Івана в нас в селі по два гетьмана,
А ще на кожного гетьмана додатковий отаман.

Але в тім біди немає - в нас громада справу знає!
Президентів вистачає, хоч в союз, а хоч в ООН,
І як на те є воля Божа, ми ще й республікам поможем,
Аби лиш сила нам ворожа не перекрила самогон!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3137663_l1','pisniua_3137663','YouTube','https://www.youtube.com/watch?v=Kch2utAdan0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_313323';
DELETE FROM song_versions WHERE song_id = 'pisniua_313323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_313323';
DELETE FROM songs WHERE id = 'pisniua_313323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_313323','Веселковий твіст *','Музика: Олег Скрипка Слова: Олег Скрипка. Виконує: Воплі Відоплясова','uk','ukraine_1991',NULL,NULL,'http://vv.cn.ua/chordes/chordes.htm','Підбір акордів: Vit Zubok (vit@visti.net),Kyiv','E7
Агати блищуть, наче райдуга,
Am
Що зігнула горба за дорогу.
E7
А на дорозі - два мандрівника,
Am
Вони щасливі, повні радощів.
Dm
А любі губи - барви заходу.
Am
Аба-ба-ба, на небі - перша зірка.
E7
Агати блищуть, наче райдуга,
Їх запалює ус- міш- ка  тво- я.

Хайла-ла-ла, хайла-ла-ла.
E
Весе-веселкова,
D
різнокольорова
ус- міш- ка  тво- я.

* Виправив Олег Скрипка','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_313323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_313323','Веселковий твіст *','E7
Агати блищуть, наче райдуга,
Am
Що зігнула горба за дорогу.
E7
А на дорозі - два мандрівника,
Am
Вони щасливі, повні радощів.
Dm
А любі губи - барви заходу.
Am
Аба-ба-ба, на небі - перша зірка.
E7
Агати блищуть, наче райдуга,
Їх запалює ус- міш- ка  тво- я.

Хайла-ла-ла, хайла-ла-ла.
E
Весе-веселкова,
D
різнокольорова
ус- міш- ка  тво- я.

* Виправив Олег Скрипка');
DELETE FROM song_links WHERE song_id = 'pisniua_3139766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3139766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3139766';
DELETE FROM songs WHERE id = 'pisniua_3139766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3139766','Романс для Вас','Музика: Леся Соболевська Слова: Леся Соболевська. Виконує: Леся Соболевська','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Am    Hdim     E7           Am  F
Минає день і з ним у спогад лине
Моя печаль, заручена з дощем.
І що змінилось у душі віднині?
Що значить цей незрозумілий щем?
На Вас дивлюсь, не сміючи питати,
Чому так швидко з Вами плине час.
Я так боюсь сама собі признатись,
Що я постійно думаю про Вас.

Hdim  E7          Am   F
Хто Ви для мене, згуба чи спаситель?
І де я буду, в пеклі чи в раю?
Дарунок Ваш, букет весняних квітів,
Лиш крадькома із сумом пригублю.
Я не для Вас! Впориві нерозумнім
Це відкриття отямлює просте.
Та тільки розум мій картає сумнів
Чи Ви колись задумались про те.

Hdim E7        Am F
Кого питати і кого просити
Такої ради? Хто її збагне?
І тільки сни ласкаві, наче діти,
До Вас щоночі принесуть мене,
Де Ви живете у буденнім раї
Земних законів і житейських тем.
І цей романс для Вас я заспіваю,
Коли вночі Ви, втомлені, спите...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3139766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3139766','Романс для Вас','Am    Hdim     E7           Am  F
Минає день і з ним у спогад лине
Моя печаль, заручена з дощем.
І що змінилось у душі віднині?
Що значить цей незрозумілий щем?
На Вас дивлюсь, не сміючи питати,
Чому так швидко з Вами плине час.
Я так боюсь сама собі признатись,
Що я постійно думаю про Вас.

Hdim  E7          Am   F
Хто Ви для мене, згуба чи спаситель?
І де я буду, в пеклі чи в раю?
Дарунок Ваш, букет весняних квітів,
Лиш крадькома із сумом пригублю.
Я не для Вас! Впориві нерозумнім
Це відкриття отямлює просте.
Та тільки розум мій картає сумнів
Чи Ви колись задумались про те.

Hdim E7        Am F
Кого питати і кого просити
Такої ради? Хто її збагне?
І тільки сни ласкаві, наче діти,
До Вас щоночі принесуть мене,
Де Ви живете у буденнім раї
Земних законів і житейських тем.
І цей романс для Вас я заспіваю,
Коли вночі Ви, втомлені, спите...');
DELETE FROM song_links WHERE song_id = 'pisniua_313929';
DELETE FROM song_versions WHERE song_id = 'pisniua_313929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_313929';
DELETE FROM songs WHERE id = 'pisniua_313929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_313929','Чорнобривці','Музика: Володимир Верменич Слова: Микола Сингаївський. Виконує: Костянтин Огнєвий, Віктор Павлік, Ірина Сказіна, Дмитро Гнатюк, Тамара Міансарова, Ірина Зінковська, Богдан Кірєєв, В''ячеслав Хурсенко','uk','ukraine_1991',NULL,NULL,'Українські пісні/ уклад. О.В.Зав''язкін. - Донецьк:"Бао", 2003. - 512 с.','Мабуть, пісню незручно грати у поданій тональності. Як не йде, то транспонуйте!:) наприклад, на півтона в Em. Акорди подано відповідно до джерела. Пісню на українській "естраді" востаннє "юзав" В.Козловський у "Шансі".','Чорнобривців насіяла мати
У моїм світанковім краю,
Та й навчила веснянки співати
Про квітучу надію cвою.
Приспів:
Як на ті чорнобривці погляну,
Бачу матір стареньку,
Бачу руки твої моя мамо,
Твою ласку я чую рідненька.
Мамо, рідна ненько моя.
Я розлуки і зустрічі знаю,
Бачив я у чужій стороні
Чорнобривці із рідного краю,
Що насіяла ти навесні.
Приспів.
Прилітають до нашого поля
Із далеких країв журавлі,
Розцвітають і квіти, і доля
На моїй українській землі.
Приспів.','[''pisni.org.ua'', ''cat:patriotic'', ''cat:pro-batkiv'', ''Патріотичні пісні'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_313929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_313929','Чорнобривці','Чорнобривців насіяла мати
У моїм світанковім краю,
Та й навчила веснянки співати
Про квітучу надію cвою.
Приспів:
Як на ті чорнобривці погляну,
Бачу матір стареньку,
Бачу руки твої моя мамо,
Твою ласку я чую рідненька.
Мамо, рідна ненько моя.
Я розлуки і зустрічі знаю,
Бачив я у чужій стороні
Чорнобривці із рідного краю,
Що насіяла ти навесні.
Приспів.
Прилітають до нашого поля
Із далеких країв журавлі,
Розцвітають і квіти, і доля
На моїй українській землі.
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_313929_l1','pisniua_313929','YouTube','https://www.youtube.com/watch?v=Yn6jWLUE15o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_313929_l2','pisniua_313929','YouTube','https://www.youtube.com/watch?v=mF0f-TroU1I','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_313929_l3','pisniua_313929','YouTube','https://www.youtube.com/watch?v=c2UAljulm_U','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_313929_l4','pisniua_313929','YouTube','https://www.youtube.com/watch?v=mBxQHwWZZy8','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_313929_l5','pisniua_313929','YouTube','https://www.youtube.com/watch?v=VsPxH3B4rsI','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_313929_l6','pisniua_313929','YouTube','https://www.youtube.com/watch?v=MBV2xZUZlco','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_313929_l7','pisniua_313929','YouTube','https://www.youtube.com/watch?v=PUboby435fI','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_313929_l8','pisniua_313929','YouTube','https://www.youtube.com/watch?v=ImeZZnLGToo','video',NULL,8);
DELETE FROM song_links WHERE song_id = 'pisniua_3131828';
DELETE FROM song_versions WHERE song_id = 'pisniua_3131828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3131828';
DELETE FROM songs WHERE id = 'pisniua_3131828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3131828','Листопад і ти','Музика: Ліля Кобільник Слова: Л. Лазурко. Виконує: Ліля Кобільник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Так тихо, тільки листопад і ти
Заходять у мою пожовклу душу,
Як перший сніг нечутно й незворушно,
Так тихо, тільки листопад і ти...

Приспів:
І тільки листопад, і ти
В моїй душі, як два світи,
В моїй душі, як два світи,
Мовчазні листопад і ти.
І передчасний перший сніг
Легкий і тихий ніби сміх,
Легкий і тихий перший сніг
Схиляє небо нам до ніг.

Так можуть тільки листопад і ти
Мені мовчати аж до німоти,
Під чай медовий, світло свіч
Мовчати так, мовчати ніч.

Приспів.

Так тихо, тільки листопад і ти
Заходять у мою пожовклу душу,
Як перший сніг нечутно й незворушно,
Так тихо, тільки листопад і ти...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3131828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3131828','Листопад і ти','Так тихо, тільки листопад і ти
Заходять у мою пожовклу душу,
Як перший сніг нечутно й незворушно,
Так тихо, тільки листопад і ти...

Приспів:
І тільки листопад, і ти
В моїй душі, як два світи,
В моїй душі, як два світи,
Мовчазні листопад і ти.
І передчасний перший сніг
Легкий і тихий ніби сміх,
Легкий і тихий перший сніг
Схиляє небо нам до ніг.

Так можуть тільки листопад і ти
Мені мовчати аж до німоти,
Під чай медовий, світло свіч
Мовчати так, мовчати ніч.

Приспів.

Так тихо, тільки листопад і ти
Заходять у мою пожовклу душу,
Як перший сніг нечутно й незворушно,
Так тихо, тільки листопад і ти...');
DELETE FROM song_links WHERE song_id = 'pisniua_3136626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3136626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3136626';
DELETE FROM songs WHERE id = 'pisniua_3136626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3136626','В сузір''ї братерства','Музика: Олександр Осадчий Слова: Микола Сингаївський. Виконує: Людмила Артеменко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'З дитинства для нас відкриває земля
Блакитні озера,пшенічні поля.
Я серце гаряче і вдачу свою
Тобі,рідний краю,
Тобі рідний краю,
Тобі я усе віддаю.

Приспів:
Пісня і мета -
У мої літа світання,
Наче зорецвіт -
Веселковий світ кохання.
В кожного одне
Серцем осяйна вершина -
Квітуча моя Батьківщина.

Вмістилася в серці ти, земле моя,
Як материн голос,як спів солов''я.
Я разом з тобою щаслива щодня.
Як поруч зі мною,
Як поруч зі мною,
Як поруч мій друг і рідня.

Зоря до зорі - дві краплини роси.
То нашої дружби живі голоси.
Душею відкрита - в сузір''ї стою
І долю,  мов пісню,
І долю мов пісню,
І долю свою пізнаю','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3136626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3136626','В сузір''ї братерства','З дитинства для нас відкриває земля
Блакитні озера,пшенічні поля.
Я серце гаряче і вдачу свою
Тобі,рідний краю,
Тобі рідний краю,
Тобі я усе віддаю.

Приспів:
Пісня і мета -
У мої літа світання,
Наче зорецвіт -
Веселковий світ кохання.
В кожного одне
Серцем осяйна вершина -
Квітуча моя Батьківщина.

Вмістилася в серці ти, земле моя,
Як материн голос,як спів солов''я.
Я разом з тобою щаслива щодня.
Як поруч зі мною,
Як поруч зі мною,
Як поруч мій друг і рідня.

Зоря до зорі - дві краплини роси.
То нашої дружби живі голоси.
Душею відкрита - в сузір''ї стою
І долю,  мов пісню,
І долю мов пісню,
І долю свою пізнаю');
DELETE FROM song_links WHERE song_id = 'pisniua_3128828';
DELETE FROM song_versions WHERE song_id = 'pisniua_3128828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3128828';
DELETE FROM songs WHERE id = 'pisniua_3128828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3128828','В Закарпатті радість стала (версія 2)','Слова: народні','uk','ukraine_1991',NULL,'2009','ХХ ст. Пісня про Закарпатську Україну часу А. Волошина','Записано на вечері-реквіумі на Красному полі 24 серпня 2009 р. ініційованому "ДКЗ" та підтриманому учасниками Сьомої річниці явлення Богородиці у Джублику (Закарпаття)','В Закарпатті радість стала, радість стала та гей!
Україна вже повстала, вже повстала та гей!

Приспів:
Приказ. Раз два струнко!
Глянь направо,
Там скачуть карі коні
Там грають барабани
Б''ють шаблями.
Вправо вліво, щоб серце не боліло
Да гей.

А мадяри наступали, наступали да гей!
Україну забирали, забирали да гей!

А польща їм помагала, помагала да гей!
Диверсантів засилала, засилала да гей!

Ми Вкраїну повернемо, повернемо да Гей!
І державу збудуємо, збудуємо да  Гей!','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3128828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3128828','В Закарпатті радість стала (версія 2)','В Закарпатті радість стала, радість стала та гей!
Україна вже повстала, вже повстала та гей!

Приспів:
Приказ. Раз два струнко!
Глянь направо,
Там скачуть карі коні
Там грають барабани
Б''ють шаблями.
Вправо вліво, щоб серце не боліло
Да гей.

А мадяри наступали, наступали да гей!
Україну забирали, забирали да гей!

А польща їм помагала, помагала да гей!
Диверсантів засилала, засилала да гей!

Ми Вкраїну повернемо, повернемо да Гей!
І державу збудуємо, збудуємо да  Гей!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3128828_l1','pisniua_3128828','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_314364';
DELETE FROM song_versions WHERE song_id = 'pisniua_314364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_314364';
DELETE FROM songs WHERE id = 'pisniua_314364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_314364','Схрещені стріли','(Ой, Дніпро-ріка). Музика: Ярослав Юрчишин Слова: Ярослав Юрчишин. Виконує: Ярослав Юрчишин, Тарас Гривул','uk','ukraine_1991',NULL,'2000','Записано зі слів автора','Пісня написана в 2000 році у Львові в честь патрона куреня "Орден Залізної Остроги" (Паст НСОУ). Акорди виправив і доповнив Ярослав Юрчишин.','Мотив 1:
Ой, Дніпро-ріка,   круті береги,
Сила силу міряє.
Ой, Руська земле,   далеко єси,
В святість твого ймення віруєм.

Програш:  C Am Em

Попереду враг і позаду враг,
Аж земля горить під комонними;
Та у Святослава вої вибрані,
Не злякаєш  їх перепонами.

Мотив 2:
Мусим, як один,
Ми до бою стати,
Бо чекає   жона мужа,
А сестра — брата.

Мотив 1:
Виступає князь, кінь копитом б''є
Дивиться на гридні та каже:
"Клянусь Перуном, хоч нас мало є,
Та, на що ми здатні, покажем!

Програш.

Хто у бою впав, сорому не йме —
Вдячністю нащадки згадають;
То ж, хто заслабий, — хай зараз іде.
Підійміть хоругви — рушаєм!"

Мотив 2:
Коні зірвались,
У бій понеслись
Знову стала руська слава,
Стала, як колись!

Мотив 1:
Вдарила стріла у щит кований,
Друга враз при ній хрестом стала;
Тим щитом юнак князя заступив,
Наказ на віки було дано.

Мотив 2:
Хрест з стріл збережи,
У серце вложи, —
Не розітнуть тоді твого серця
Зневіри ножі.

У буремний час
Згадай князя глас!
Перемогу або смерть вітаймо —
Інше не для нас!','[''pisni.org.ua'', ''cat:bardivski'', ''cat:istorychni'', ''Бардівські пісні'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_314364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_314364','Схрещені стріли','Мотив 1:
Ой, Дніпро-ріка,   круті береги,
Сила силу міряє.
Ой, Руська земле,   далеко єси,
В святість твого ймення віруєм.

Програш:  C Am Em

Попереду враг і позаду враг,
Аж земля горить під комонними;
Та у Святослава вої вибрані,
Не злякаєш  їх перепонами.

Мотив 2:
Мусим, як один,
Ми до бою стати,
Бо чекає   жона мужа,
А сестра — брата.

Мотив 1:
Виступає князь, кінь копитом б''є
Дивиться на гридні та каже:
"Клянусь Перуном, хоч нас мало є,
Та, на що ми здатні, покажем!

Програш.

Хто у бою впав, сорому не йме —
Вдячністю нащадки згадають;
То ж, хто заслабий, — хай зараз іде.
Підійміть хоругви — рушаєм!"

Мотив 2:
Коні зірвались,
У бій понеслись
Знову стала руська слава,
Стала, як колись!

Мотив 1:
Вдарила стріла у щит кований,
Друга враз при ній хрестом стала;
Тим щитом юнак князя заступив,
Наказ на віки було дано.

Мотив 2:
Хрест з стріл збережи,
У серце вложи, —
Не розітнуть тоді твого серця
Зневіри ножі.

У буремний час
Згадай князя глас!
Перемогу або смерть вітаймо —
Інше не для нас!');
DELETE FROM song_links WHERE song_id = 'pisniua_3150727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3150727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3150727';
DELETE FROM songs WHERE id = 'pisniua_3150727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3150727','Вифлеєм','Музика: Кость Москалець Слова: Кость Москалець. Виконує: Тарас Чубай','uk','ukraine_before_1917',NULL,NULL,'http://moskalets.blogspot.com/2009/02/blog-post.html',NULL,'Вступ та програші: C Dmadd9 E

На шляху до Вифлеєму
Сніг засипав землю темну,
І на всю пустелю білу
Dmadd9      E
Зірка перша мерехтіла.

Цілу ніч вона вела,
Де стаєнка є мала.
Там Пречиста Діва сина
Повивала, люляла.

Пастухів сопілки грають
Сина Божого вітають.
Над вертепом, понад степом
Білі ангели кружляють.

Три царі зі Сходу йдуть
І дари свої несуть.
Поміж темряви густої
Бога-Світло віднайдуть.

Забере неситий Ірод
Ладан, золото і миро.
Але кожен по своєму,
Ми дійдем до Вифлеєму.

Під ногами сніг рипить,
Наша зірка мерехтить,
І безмежної любові
Може серце не вмістить...

На шляху до Вифлеєму...(4)

Dmadd9   [003230]
Am/C     [032210]','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:philosophic'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Пісні на християнську тематику'', ''Колядки'', ''Філософські пісні'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3150727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3150727','Вифлеєм','Вступ та програші: C Dmadd9 E

На шляху до Вифлеєму
Сніг засипав землю темну,
І на всю пустелю білу
Dmadd9      E
Зірка перша мерехтіла.

Цілу ніч вона вела,
Де стаєнка є мала.
Там Пречиста Діва сина
Повивала, люляла.

Пастухів сопілки грають
Сина Божого вітають.
Над вертепом, понад степом
Білі ангели кружляють.

Три царі зі Сходу йдуть
І дари свої несуть.
Поміж темряви густої
Бога-Світло віднайдуть.

Забере неситий Ірод
Ладан, золото і миро.
Але кожен по своєму,
Ми дійдем до Вифлеєму.

Під ногами сніг рипить,
Наша зірка мерехтить,
І безмежної любові
Може серце не вмістить...

На шляху до Вифлеєму...(4)

Dmadd9   [003230]
Am/C     [032210]');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3150727_l1','pisniua_3150727','YouTube','https://www.youtube.com/watch?v=j3YWSxolo9Q','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3150727_l2','pisniua_3150727','YouTube','https://www.youtube.com/watch?v=zdPvTkURGMY','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3150727_l3','pisniua_3150727','YouTube','https://www.youtube.com/watch?v=3GiHb-qNxms','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_314525';
DELETE FROM song_versions WHERE song_id = 'pisniua_314525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_314525';
DELETE FROM songs WHERE id = 'pisniua_314525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_314525','Пісня про Львів','Музика: Наталя Криничанка Слова: Наталя Криничанка. Виконує: Наталя Криничанка','uk','ukraine_1991',NULL,NULL,'текст і акорди - Пісневир: Молодіжний співаник.- Львів, 2001; аудіо - Наталка Криничанка. "Я кохаю цього чоловіка". 1997','Ця пісня увійшла в аудіо-альбом (CD) "Я кохаю цього чоловіка". З питаннями щодо придбання альбому та з пропозиціями щодо музичної співпраці звертайтесь за адресою etra@ukr.net або залишайте повідомлення на сторінці "Українські пісні: Наталя Криничанка".','Em
Маленький Лондон, крихітний Париж,
Покритий млою, ти тихенько спиш.
Не підберу для тебе кращих слів,  |
Ти мій єдиний, найдорожчий Львів. |

Вже північ відбиває срібний бій,
А ти отут, мов місяць, мерзни й стій.
Трамвай десь там далеко заблукав,    | (2)
Чомусь на мене він не зачекав.       |

І знову станеться історія така,
Мене не пустиш ти до літака.
Залишу все і знов сюди вернусь,      | (2)
Собі на зло і на біду комусь.        |

Ой що ти робиш, любий, дорогий?
Який б не був, та все одно ти мій.
Чому ти плачеш і чому дощиш?         | (2)
Який там Лондон і який Париж?        |','[''pisni.org.ua'', ''cat:bardivski'', ''cat:lviv'', ''Бардівські пісні'', ''Пісні про Львів'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_314525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_314525','Пісня про Львів','Em
Маленький Лондон, крихітний Париж,
Покритий млою, ти тихенько спиш.
Не підберу для тебе кращих слів,  |
Ти мій єдиний, найдорожчий Львів. |

Вже північ відбиває срібний бій,
А ти отут, мов місяць, мерзни й стій.
Трамвай десь там далеко заблукав,    | (2)
Чомусь на мене він не зачекав.       |

І знову станеться історія така,
Мене не пустиш ти до літака.
Залишу все і знов сюди вернусь,      | (2)
Собі на зло і на біду комусь.        |

Ой що ти робиш, любий, дорогий?
Який б не був, та все одно ти мій.
Чому ти плачеш і чому дощиш?         | (2)
Який там Лондон і який Париж?        |');
DELETE FROM song_links WHERE song_id = 'pisniua_3141560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3141560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3141560';
DELETE FROM songs WHERE id = 'pisniua_3141560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3141560','У честі на посту','(гімн ДАЇ). Виконує: Віктор Шпортько','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Пробач, кохана, ти мені,
Зітри сльозу з обличчя,
У чорну й небезпечну ніч
Обов''язок знов кличе.
Не виглядай в ранкове скло,
Зустрінемось з тобою
Та є іще на світі зло,   |
І ми із ним в двобої.    | (2)

Приспів:
У правди на посту,
У честі на посту
Ми у дощі та стужу,
Бо маєм нелегку,
Бо маєм непросту
І небезпечну службу.
Про втому ти забудь,
Забудь жалі свої
І потайні тривоги,
Країну бережем
Ми воїни ДАЇ,
Ми вартові дороги!

Чи є провина, чи вина -
Сказати так непросто,
І нас, буває, не вмина
Бандитський хижий постріл.
Вкраїно рідна, довіряєш ти
Стояти на сторожі.
Ідем твій спокій берегти, |
По іншому не можем.       | (2)

Приспів.

Про втому ти забудь,      |
Забудь жалі свої          |
І потайні тривоги,        |
Країну бережем            |
Ми воїни ДАЇ,             |
Ми вартові дороги!        | (2)

Приспів.

Країну бережем
Ми воїни ДАЇ,
Ми вартові дороги!
Воїни ДАЇ!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3141560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3141560','У честі на посту','Пробач, кохана, ти мені,
Зітри сльозу з обличчя,
У чорну й небезпечну ніч
Обов''язок знов кличе.
Не виглядай в ранкове скло,
Зустрінемось з тобою
Та є іще на світі зло,   |
І ми із ним в двобої.    | (2)

Приспів:
У правди на посту,
У честі на посту
Ми у дощі та стужу,
Бо маєм нелегку,
Бо маєм непросту
І небезпечну службу.
Про втому ти забудь,
Забудь жалі свої
І потайні тривоги,
Країну бережем
Ми воїни ДАЇ,
Ми вартові дороги!

Чи є провина, чи вина -
Сказати так непросто,
І нас, буває, не вмина
Бандитський хижий постріл.
Вкраїно рідна, довіряєш ти
Стояти на сторожі.
Ідем твій спокій берегти, |
По іншому не можем.       | (2)

Приспів.

Про втому ти забудь,      |
Забудь жалі свої          |
І потайні тривоги,        |
Країну бережем            |
Ми воїни ДАЇ,             |
Ми вартові дороги!        | (2)

Приспів.

Країну бережем
Ми воїни ДАЇ,
Ми вартові дороги!
Воїни ДАЇ!');
DELETE FROM song_links WHERE song_id = 'pisniua_3145323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3145323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3145323';
DELETE FROM songs WHERE id = 'pisniua_3145323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3145323','Мелодія для сина','Музика: Павло Дворський Слова: Галина Калюжна. Виконує: Павло Дворський','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Передам тобі, мій сину,
Я мелодію єдину,
Хай бринить завжди в тобі, луна.
Як поїдеш, як покинеш
Рідну хату і родину,
Нагада про все вона одна.

Приспів:
Про вершини смерекові,
Про світанки празникові,
Про безмежну батьківську любов...
І поможе, і розрадить,
І додому їхать знадить
До свої корінь, своїх основ.

Як далеко дуже будеш,
Все одно нас не забудеш,-
Прозвучить мелодія в тобі:
Час додому вирушати -
Зачекалась сина мати,
Батько затужив, залебедів.

Приспів:
І вершини смерекові,
І світанки празникові,
Ніч - у зорях, сонечко - при дні.
Що устиг малим пізнати,
Все зове тебе до хати
У простій мелодії отій.

Не одна крута дорога
Принесе тобі тривогу,
Принесе тобі, можливо, й біль.
Не журись - себе послухай,
Упізнай у пісні друга, -
І полегша, сину мій, тобі.

Приспів:
Про вершини смерекові,
Про світанки празникові,
Про безмежну батьківську любов...
І поможе, і розрадить,
І додому їхать знадить
До своїх корінь, своїх основ.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3145323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3145323','Мелодія для сина','Передам тобі, мій сину,
Я мелодію єдину,
Хай бринить завжди в тобі, луна.
Як поїдеш, як покинеш
Рідну хату і родину,
Нагада про все вона одна.

Приспів:
Про вершини смерекові,
Про світанки празникові,
Про безмежну батьківську любов...
І поможе, і розрадить,
І додому їхать знадить
До свої корінь, своїх основ.

Як далеко дуже будеш,
Все одно нас не забудеш,-
Прозвучить мелодія в тобі:
Час додому вирушати -
Зачекалась сина мати,
Батько затужив, залебедів.

Приспів:
І вершини смерекові,
І світанки празникові,
Ніч - у зорях, сонечко - при дні.
Що устиг малим пізнати,
Все зове тебе до хати
У простій мелодії отій.

Не одна крута дорога
Принесе тобі тривогу,
Принесе тобі, можливо, й біль.
Не журись - себе послухай,
Упізнай у пісні друга, -
І полегша, сину мій, тобі.

Приспів:
Про вершини смерекові,
Про світанки празникові,
Про безмежну батьківську любов...
І поможе, і розрадить,
І додому їхать знадить
До своїх корінь, своїх основ.');
DELETE FROM song_links WHERE song_id = 'pisniua_314828';
DELETE FROM song_versions WHERE song_id = 'pisniua_314828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_314828';
DELETE FROM songs WHERE id = 'pisniua_314828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_314828','Гей Січ іде Красний Мак цвіте','Музика: народна Слова: Іван Франко','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,NULL,NULL,'Гей Січ іде Красний Мак цвіте
Кому прикре Наше Слово нам воно святе - 2
Тра-та-та тра-та-та
(та-та)-3

Гей Січ іде наче рій гуде
Разом серця разом руки тай гаразд буде - 2
Ті-драм-ті-драм-ті-драм
(ті-драм)-3

Гей Січ іде підківками брязь
В своїй Хаті своя й Воля а всім зайдам зась - 2
Тра-та-та тра-та-та
(та-та)-3

Гей Січ іде шабельками брень
Кому люба чорна пітьма а нам ясен день - 2
Ті-драм-ті-драм-ті-драм
(ті-драм)-3

На слова Івана Франка

Висловлювання - Народна мудрість:
Нам годиться теє спом''ятати,
за которими молитвами стали ми хліба-соли поживати.
(Дума про Олексія Поповича)','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:strilecki'', ''Гимни та марші'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_314828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_314828','Гей Січ іде Красний Мак цвіте','Гей Січ іде Красний Мак цвіте
Кому прикре Наше Слово нам воно святе - 2
Тра-та-та тра-та-та
(та-та)-3

Гей Січ іде наче рій гуде
Разом серця разом руки тай гаразд буде - 2
Ті-драм-ті-драм-ті-драм
(ті-драм)-3

Гей Січ іде підківками брязь
В своїй Хаті своя й Воля а всім зайдам зась - 2
Тра-та-та тра-та-та
(та-та)-3

Гей Січ іде шабельками брень
Кому люба чорна пітьма а нам ясен день - 2
Ті-драм-ті-драм-ті-драм
(ті-драм)-3

На слова Івана Франка

Висловлювання - Народна мудрість:
Нам годиться теє спом''ятати,
за которими молитвами стали ми хліба-соли поживати.
(Дума про Олексія Поповича)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_314828_l1','pisniua_314828','YouTube','https://www.youtube.com/watch?v=KCFdbw_PO04','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_314828_l2','pisniua_314828','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3147727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3147727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3147727';
DELETE FROM songs WHERE id = 'pisniua_3147727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3147727','Новий рік','Музика: Nirvana Слова: Олександр Положинський. Виконує: Тартак','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Забули всіх, забули всім
Сказати, що прийшла зима
Впав білий сніг та Новий Рік
У двері стукає дарма.
Дарма, дарма, нікого нема,
Дарма, дарма, нікого нема,
Дарма, дарма, дарма...

Приспів:
Всі на святі, на гулянці,
На вечірці та на п''янці.
Хтось танцює, хтось співає,
Хтось вже рига, хтось блукає.
Тільки ми вас новим роком
Всіх вітаєм з Новим Роком!

Приходить п''яний Дід Мороз
І на горбі несе мішок
У нього явний передоз,
Йому це кайф, а дітям - шок.
Тікай, тікай, дітей не лякай,
Тікай, тікай, дітей не лякай,
Тікай, тікай, тікай!

Приспів.

І знов, і знов, без зайвих розмов,
І знов, і знов, без зайвих розмов,
І знов, і знов, без зайвих розмов,
І знов, і знов, і знов.

Приспів.

З новим Роком! З новим Роком!
З новим Роком! З новим Роком!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3147727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3147727','Новий рік','Забули всіх, забули всім
Сказати, що прийшла зима
Впав білий сніг та Новий Рік
У двері стукає дарма.
Дарма, дарма, нікого нема,
Дарма, дарма, нікого нема,
Дарма, дарма, дарма...

Приспів:
Всі на святі, на гулянці,
На вечірці та на п''янці.
Хтось танцює, хтось співає,
Хтось вже рига, хтось блукає.
Тільки ми вас новим роком
Всіх вітаєм з Новим Роком!

Приходить п''яний Дід Мороз
І на горбі несе мішок
У нього явний передоз,
Йому це кайф, а дітям - шок.
Тікай, тікай, дітей не лякай,
Тікай, тікай, дітей не лякай,
Тікай, тікай, тікай!

Приспів.

І знов, і знов, без зайвих розмов,
І знов, і знов, без зайвих розмов,
І знов, і знов, без зайвих розмов,
І знов, і знов, і знов.

Приспів.

З новим Роком! З новим Роком!
З новим Роком! З новим Роком!');
DELETE FROM song_links WHERE song_id = 'pisniua_3149828';
DELETE FROM song_versions WHERE song_id = 'pisniua_3149828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3149828';
DELETE FROM songs WHERE id = 'pisniua_3149828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3149828','Осінь, осінь, осінь...','Музика: Микола Дремлюга Слова: Григорій Коваль','uk','ukraine_1991',NULL,NULL,'Бандура, Київ, "Музична Україна", 1988, с. 82','Бандура, Учбовий репертуар дитячих музичних шкіл, видання друге, перероблене, Київ, "Музична Україна", 1988, с. 82','Осінь, осінь, осінь...
Медом пахнуть роси.
Журавлі курличуть в небі
Та вітри голосять.
Не дзвенять в садочку |
Птахів голосочки,     |
Сняться зораному полю |
Квіти й колосочки.    | (2)

В лузі при долині
Гнеться тополина,
Загорілась над рікою
Червона калина.
Тьмяно сонце світить, |
А на голих вітах      |
В''яже осінь рукавички |
З бабиного літа.      |  (2)

Не дзвенять в садочку
Птахів голосочки,
Сняться зораному полю
Квіти й колосочки.
Тьмяно сонце світить, |
А на голих вітах      |
В''яже осінь рукавички |
З бабиного літа.      |  (2)    Фонограма-мінус (midi)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3149828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3149828','Осінь, осінь, осінь...','Осінь, осінь, осінь...
Медом пахнуть роси.
Журавлі курличуть в небі
Та вітри голосять.
Не дзвенять в садочку |
Птахів голосочки,     |
Сняться зораному полю |
Квіти й колосочки.    | (2)

В лузі при долині
Гнеться тополина,
Загорілась над рікою
Червона калина.
Тьмяно сонце світить, |
А на голих вітах      |
В''яже осінь рукавички |
З бабиного літа.      |  (2)

Не дзвенять в садочку
Птахів голосочки,
Сняться зораному полю
Квіти й колосочки.
Тьмяно сонце світить, |
А на голих вітах      |
В''яже осінь рукавички |
З бабиного літа.      |  (2)    Фонограма-мінус (midi)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3149828_l1','pisniua_3149828','YouTube','https://www.youtube.com/watch?v=zxAM3s8dF6g','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3149828_l2','pisniua_3149828','YouTube','https://www.youtube.com/watch?v=hmjZVX2MI_M','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3149828_l3','pisniua_3149828','YouTube','https://www.youtube.com/watch?v=8uJ0MUXPiSQ','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3150261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3150261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3150261';
DELETE FROM songs WHERE id = 'pisniua_3150261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3150261','Учітеся, брати мої','Музика: Микола Лисенко Слова: Тарас Шевченко. Виконує: Борис Гмиря, Рушничок','uk','ukraine_1991',NULL,NULL,'аудіозапис','Гурт Рушничо к виконує лише два перші куплети: http://chomikuj.pl/WDR/Muzyka+Ukrai*c5*84ska/Narodowa+-+Folk+-+Regionalna/Rushnychok','Учітеся, брати мої,
Учітесь, читайте,
І чужому научайтесь,
Свого не цурайтесь!

Бо хто матір забуває,
Того Бог карає,
Того діти цураються,
В хату не пускають.

Чужії люди проганяють
І немає злому
На всій землі безконечній
Веселого дому.

Обніміть-те ж, брати мої,
Найменшого брата,
Нехай мати усміхнеться,
Заплакана мати!

Благословіть дітей своїх
Твердими руками
І діточок поцілуйте
Вольними устами!

І забудеться срамотна
Давняя година,
І оживе добра слава,
Слава України!

І світ ясний невечерній
Тихо засіяє.
Обніміться ж, брати мої,
Молю вас, благаю!

Обніміться ж, брати мої,
Молю вас, благаю!','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3150261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3150261','Учітеся, брати мої','Учітеся, брати мої,
Учітесь, читайте,
І чужому научайтесь,
Свого не цурайтесь!

Бо хто матір забуває,
Того Бог карає,
Того діти цураються,
В хату не пускають.

Чужії люди проганяють
І немає злому
На всій землі безконечній
Веселого дому.

Обніміть-те ж, брати мої,
Найменшого брата,
Нехай мати усміхнеться,
Заплакана мати!

Благословіть дітей своїх
Твердими руками
І діточок поцілуйте
Вольними устами!

І забудеться срамотна
Давняя година,
І оживе добра слава,
Слава України!

І світ ясний невечерній
Тихо засіяє.
Обніміться ж, брати мої,
Молю вас, благаю!

Обніміться ж, брати мої,
Молю вас, благаю!');
DELETE FROM song_links WHERE song_id = 'pisniua_315121';
DELETE FROM song_versions WHERE song_id = 'pisniua_315121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_315121';
DELETE FROM songs WHERE id = 'pisniua_315121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_315121','Я - твоє крило','Музика: Володимир Івасюк Слова: Роман Кудлик. Виконує: Смерічка, Назарій Яремчук, Надія Пащенко, Софія Ротару, Марян Шуневич, Рената Бабак','uk','ukraine_1991',NULL,NULL,NULL,'C9 [x 3 2 0 3 3]','Зірки на снігу, зірки на снігу,
Веселі зірки новорічного свята.
Зірки на снігу, зірки на снігу,
І ми у Карпатах, у синіх Карпатах.

Приспів:
Я — твоє крило, Ти — моє крило, —
Щастя більшого не треба.
Полетімо в ніч, в неповторну ніч,
І крильми торкнемось неба, не-ба

Зірки на вінках, вінки на воді,
Вінки на воді в синю ніч на Купала.
Зірки на вінках, зірки на воді,
І ще одна впала, на щастя нам впала.

Приспів.

Зірки відгорять, погаснуть зірки,
Та в серці не згасне їх полум''я вічне.
Бо з нами та ніч, бо з нами та ніч,
Та ніч на Купала і ніч новорічна.

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_315121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_315121','Я - твоє крило','Зірки на снігу, зірки на снігу,
Веселі зірки новорічного свята.
Зірки на снігу, зірки на снігу,
І ми у Карпатах, у синіх Карпатах.

Приспів:
Я — твоє крило, Ти — моє крило, —
Щастя більшого не треба.
Полетімо в ніч, в неповторну ніч,
І крильми торкнемось неба, не-ба

Зірки на вінках, вінки на воді,
Вінки на воді в синю ніч на Купала.
Зірки на вінках, зірки на воді,
І ще одна впала, на щастя нам впала.

Приспів.

Зірки відгорять, погаснуть зірки,
Та в серці не згасне їх полум''я вічне.
Бо з нами та ніч, бо з нами та ніч,
Та ніч на Купала і ніч новорічна.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_315121_l1','pisniua_315121','YouTube','https://www.youtube.com/watch?v=yYzvc4-6AW8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_315121_l2','pisniua_315121','YouTube','https://www.youtube.com/watch?v=bkQsAOZX-4k','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_315121_l3','pisniua_315121','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3159121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3159121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3159121';
DELETE FROM songs WHERE id = 'pisniua_3159121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3159121','Ой, журавко','Українська народна пісня. Виконує: Фольклорний ансамбль села Межирич','uk','ukraine_before_1917',NULL,NULL,'Фольклорний архів ансамблю "Божичі". Запис в с.Межирич (Маврино) Павлоградського р-ну Дніпропетровської обл. 12.08.1993 Касета 3',NULL,'Ой, журавко-журавко,
Чого крячеш так жалко?
Да, гей, чого крячеш так жалко?

Того крячу так жалко,
Що від роду далеко,
Да, гей, що від роду далеко.

Відбилася від роду,
Як той камінь у воду,
Да, гей, як той камінь у воду.

Ходить батько по двору,
Кличе діток до дому,
Да, гей, кличе діток до дому.

Ідіть, дітки, до дому,
Горе жити самому,
Да, гей, горе жити самому.

Тепер, тату, живи сам,
Коли жінку таку взяв,
Да, гей, коли жінку таку взяв.

Одне каже: я втоплюся,
Друге каже: я наймусь,
Да, гей, друге каже: я наймусь.

Третий каже: піду в ліс,
Нехай мене звір із''їсть,
Да, гей, нехай мене звір із''їсть.

А звірина не дурна,
Сиротину не взяла,
Да, гей, сиротину не взяла','[''pisni.org.ua'', ''cat:arkhiv-bozhychi'', ''Фольклорний архів анс. "Божичі"'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3159121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3159121','Ой, журавко','Ой, журавко-журавко,
Чого крячеш так жалко?
Да, гей, чого крячеш так жалко?

Того крячу так жалко,
Що від роду далеко,
Да, гей, що від роду далеко.

Відбилася від роду,
Як той камінь у воду,
Да, гей, як той камінь у воду.

Ходить батько по двору,
Кличе діток до дому,
Да, гей, кличе діток до дому.

Ідіть, дітки, до дому,
Горе жити самому,
Да, гей, горе жити самому.

Тепер, тату, живи сам,
Коли жінку таку взяв,
Да, гей, коли жінку таку взяв.

Одне каже: я втоплюся,
Друге каже: я наймусь,
Да, гей, друге каже: я наймусь.

Третий каже: піду в ліс,
Нехай мене звір із''їсть,
Да, гей, нехай мене звір із''їсть.

А звірина не дурна,
Сиротину не взяла,
Да, гей, сиротину не взяла');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3159121_l1','pisniua_3159121','YouTube','https://www.youtube.com/watch?v=zEgKFcJqstA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3141727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3141727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3141727';
DELETE FROM songs WHERE id = 'pisniua_3141727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3141727','Без Вас мені так холодно','Музика: невідомий Слова: Анатолій Горчинський. Виконує: Віктор Шпортько','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На мене діють, як іскристі вина,
Думки, що Ви живете в цьому місті.
Моя любов пречиста і невинна,
Як немовля в калиновій колисці.

Приспів:
Без Вас мені так холодно і прикро,
Без Вас життя втрачає барви й зміст.
У Вас, напевне, замість серця скрипка,
А Ви про це не знаєте й самі.

Мені доволі часом Вас побачить,
Чи просто голос Ваш колись почути.
Я не прошу тепер у Вас пробачень
За те, що листопад сьогодні лютий.

Приспів.

Та мчить мене від дому поїзд скорий
І затремтить осінній лист зустрічний,
До Вас я не прийду уже ніколи,
Ви - горизонт далекий мій і вічний.

Приспів. (2)

А Ви про це не знаєте й самі...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3141727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3141727','Без Вас мені так холодно','На мене діють, як іскристі вина,
Думки, що Ви живете в цьому місті.
Моя любов пречиста і невинна,
Як немовля в калиновій колисці.

Приспів:
Без Вас мені так холодно і прикро,
Без Вас життя втрачає барви й зміст.
У Вас, напевне, замість серця скрипка,
А Ви про це не знаєте й самі.

Мені доволі часом Вас побачить,
Чи просто голос Ваш колись почути.
Я не прошу тепер у Вас пробачень
За те, що листопад сьогодні лютий.

Приспів.

Та мчить мене від дому поїзд скорий
І затремтить осінній лист зустрічний,
До Вас я не прийду уже ніколи,
Ви - горизонт далекий мій і вічний.

Приспів. (2)

А Ви про це не знаєте й самі...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3141727_l1','pisniua_3141727','YouTube','https://www.youtube.com/watch?v=XWs19hTGPhc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3141727_l2','pisniua_3141727','YouTube','https://www.youtube.com/watch?v=UG2agaPzRew','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_315261';
DELETE FROM song_versions WHERE song_id = 'pisniua_315261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_315261';
DELETE FROM songs WHERE id = 'pisniua_315261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_315261','Я ще не вмер, в очах ще промінь сяє','Музика: народна Слова: А.Листопад. Виконує: Микола Будник','uk','ukr_ssr_1919_1991',NULL,'1932',NULL,'У листопаді Україна і світ вшановують пам''ять багатьох мільйонів жертв проти-українського Голодомору-Геноциду 1932-1933 років. Скільки їх, несправедливо замучених невинних людей? 10 мільйонів чи більше? І скільки з них складають діти? Третину? Як порахувати, щоб нікого не забути? А скільки українських дітей не народилося із-за Голодомору? Люди добрі, задумайтеся, що сталося! Катастрофа, трагедія, біда і горе всеземного розміру. Масове винищення українців, носіїв традиційних і загальнолюдських духовних цінностей. Це спільна пам''ять і біль усіх людей. Біль, який можна притамувати, забути, але він не минеться ніколи.','Я ще не вмер, в очах ще промінь сяє.
В четвер мені пішов десятий рік.
Хіба в такому віці умирають?
Ви тільки поверніть мене на бік

До вишеньки в колиску ясночолу,
Я чую запах квітів я не вмер,
А небо стрімко падає додолу,
Тримайте хтось хіба за коси верб!

Куди ж ви, гей, ви, людоньки, куди ж ви?
Окраєць ласки де ж мені знайти?
А мамина рука іще гаряча,
А житечко моє таке густе!

Не чує світ — усі проходять мимо!
І чи згадає хтось колись про це?
А я вже більш нічого не побачу,
Ой, скільки в тілі зайвої води!

Я ще не вмер, в очах ще промінь сяє.
В четвер мені пішов десятий рік.
Хіба в такому віці умирають?
Ви тільки поверніть мене на бік

До вишеньки в колиску ясночолу,
Я чую запах квітів я не вмер,
А небо стрімко падає додолу,
Тримайте хтось хіба за коси верб!','[''pisni.org.ua'', ''cat:holodomor'', ''Пісні про голодомор'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_315261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_315261','Я ще не вмер, в очах ще промінь сяє','Я ще не вмер, в очах ще промінь сяє.
В четвер мені пішов десятий рік.
Хіба в такому віці умирають?
Ви тільки поверніть мене на бік

До вишеньки в колиску ясночолу,
Я чую запах квітів я не вмер,
А небо стрімко падає додолу,
Тримайте хтось хіба за коси верб!

Куди ж ви, гей, ви, людоньки, куди ж ви?
Окраєць ласки де ж мені знайти?
А мамина рука іще гаряча,
А житечко моє таке густе!

Не чує світ — усі проходять мимо!
І чи згадає хтось колись про це?
А я вже більш нічого не побачу,
Ой, скільки в тілі зайвої води!

Я ще не вмер, в очах ще промінь сяє.
В четвер мені пішов десятий рік.
Хіба в такому віці умирають?
Ви тільки поверніть мене на бік

До вишеньки в колиску ясночолу,
Я чую запах квітів я не вмер,
А небо стрімко падає додолу,
Тримайте хтось хіба за коси верб!');
DELETE FROM song_links WHERE song_id = 'pisniua_3152525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3152525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3152525';
DELETE FROM songs WHERE id = 'pisniua_3152525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3152525','Марія','Музика: Ірина Федишин Слова: Ірина Федишин. Виконує: Ірина Федишин, Квінтет "Алилуя"','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Коли на волю проситься сльоза,
Зника останній промінець надії,
Коли душа від болю сирота,       |
Ти притулись до серденька Марії. | (2)

Згадай, якого болю завдава їй
Пригнічена гріхом черства людина,
Стікають сльози з безсилених очей,
Бо через нас розп''яли її сина.
Стікають сльози з безсилених очей,
Бо я і ти розп''яли її сина.

Як прокрадеться сором, мучитиме страх,
Наважся хоч би поглядом зустрітись.
Ти не побачиш докору в очах,     |
Лиш мама може так тебе любити.   | (2)

Відтоді як повстав гріх на любов
Людина прагне в світі панувати,
Якщо ти хочеш бути так, як Бог - |
Навчися так любити і прощати.    | (2)

Навчися так любити і прощати...','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3152525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3152525','Марія','Коли на волю проситься сльоза,
Зника останній промінець надії,
Коли душа від болю сирота,       |
Ти притулись до серденька Марії. | (2)

Згадай, якого болю завдава їй
Пригнічена гріхом черства людина,
Стікають сльози з безсилених очей,
Бо через нас розп''яли її сина.
Стікають сльози з безсилених очей,
Бо я і ти розп''яли її сина.

Як прокрадеться сором, мучитиме страх,
Наважся хоч би поглядом зустрітись.
Ти не побачиш докору в очах,     |
Лиш мама може так тебе любити.   | (2)

Відтоді як повстав гріх на любов
Людина прагне в світі панувати,
Якщо ти хочеш бути так, як Бог - |
Навчися так любити і прощати.    | (2)

Навчися так любити і прощати...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3152525_l1','pisniua_3152525','YouTube','https://www.youtube.com/watch?v=oFT-WiIoYsI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3152525_l2','pisniua_3152525','YouTube','https://www.youtube.com/watch?v=ZsmVIdVKrwQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3152525_l3','pisniua_3152525','YouTube','https://www.youtube.com/watch?v=32Ht0XwC3-4','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3152525_l4','pisniua_3152525','YouTube','https://www.youtube.com/watch?v=2OC4F7UXqQk','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_3154626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3154626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3154626';
DELETE FROM songs WHERE id = 'pisniua_3154626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3154626','Ой у полі могила з вітром говорила','Українська народна пісня','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,NULL,NULL,'1. Ой у полі могила з вітром говорила:
- Повій, вітре буйнесенький, щоб я не змарніла.    2

2. Щоб я не змарніла, щоб я не зчорніла,
Щоб на мені трава росла - росла, зеленіла.         2

3. Ой у полі могила із землі сирої,
В тій могилі спочивають Стрільці січовії.          2

4. Ой спіть, орлята, ой спіть, соколята,
Хрест весною заквітчають вкраїнські дівчата.       2

5. Вкраїнські дівчата, українські діти,
Будуть з вами розмовляти, пісні гомоніти.          2

6. Ой у полі могила з вітром говорила:
- Повій, вітре буйнесенький, щоб я не змарніла.    2    18_2007seniszcz_seans7_Ой у полі могила з вітром говорила','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3154626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3154626','Ой у полі могила з вітром говорила','1. Ой у полі могила з вітром говорила:
- Повій, вітре буйнесенький, щоб я не змарніла.    2

2. Щоб я не змарніла, щоб я не зчорніла,
Щоб на мені трава росла - росла, зеленіла.         2

3. Ой у полі могила із землі сирої,
В тій могилі спочивають Стрільці січовії.          2

4. Ой спіть, орлята, ой спіть, соколята,
Хрест весною заквітчають вкраїнські дівчата.       2

5. Вкраїнські дівчата, українські діти,
Будуть з вами розмовляти, пісні гомоніти.          2

6. Ой у полі могила з вітром говорила:
- Повій, вітре буйнесенький, щоб я не змарніла.    2    18_2007seniszcz_seans7_Ой у полі могила з вітром говорила');
DELETE FROM song_links WHERE song_id = 'pisniua_316020';
DELETE FROM song_versions WHERE song_id = 'pisniua_316020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_316020';
DELETE FROM songs WHERE id = 'pisniua_316020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_316020','Добрий Вечір Тобі Гречная Родино','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Колядка стародавня: Українське Різдво Світа. (1) Ой радуйся Земле Ясен Світ засвітився — Відміна: Ой радуйтесь люде. (2) Як перейду Яром Польом Господарьом — Господарь: Господь Бог. Дощик як постава Господня. РОЗСПІВ: Доб-рий- Ве-чір- То-о-бі- Греч-на-я- Ро-ди-и-и-но- Ра-ду-уй-ся- Ой- ра-дуй-ся- Зе-е-ем-ле- Я-се-ен- Світ- за-сві-ти-вся- Ой там виxодило та Три Товариші. Свята Вечеря — Тайна Вечеря. Нарід заздалегідь приготовляється до Різдва; духовними і обрядовими звичаями присвоює собі наперед ідеольоґію свого Великого свята та старається настроїти для нього свою душу й свої почування. Та з особливою побожністю приготовляється нарід до найбільш містичної й найдивнішої з святочних дій Різдва — Святої, "Тайної", Вечері. Вона сама собою має характер Свята, глибоко реліґійного і всю суспільність зворушуючого, — зарівно ідеали народні, реліґійні, як і суспільні та господарські займаючого. Є оця Тайна Вечеря найбільшою реліґійною дією Староукраїнського Різдва. На тій Вечері мусить бути вся найближча і найширша рідня; у ній бере участь кожна родина в народі і увесь нарід посполу; під острахом будучого нещастя, позбавлення Божого благословенства й утрати на будуче родинного зв''язку, старається кожний Українець бути на Святій Вечері — і вся рідня про те дбає, щоб нікого з поміж неї на тім Святі не забракло. Цей Святовечірній обов''язковий збір приявлює одну з найповажніших народних традицій — це ідея великородинного і усеплемінного збору, що була давно заповітом і переказана зістала од рода в рід як народний імператив. Це імператив усіх первісних племен, викликаний потребою об''єднування племени для самозбереження, для скріплення племінних традицій і зв''язків. Освячений авторитетом реліґійних мотивів і обрядів ставав законом і так перетривав тисячоліття та стався вродженою племінною потребою. З перегляду готовлених Святовечірніх страв видно, що це самі первісні і як найпростіше, найпервісніше, зготовлені середники поживи. На перший погляд впадає в очі, що це господарські здобутки такі, які людина збирала колись у пракультурній добі свого життя, беручи те, що самосівно родила земля, а чоловік надибав, збирав і пожиткував. Первісне зготовлення Святовечірніх страв показує первісне зготовлювання народом земноплодів на прожиток. Все, що далі діється перед Святою Вечерою, є непереривним, суцільним, родинно-племінним реліґійним обрядом. У нім долю духовника сповняє рівнорядно Жінка-Господиня з своїм Мужом-Господарем. Це вказує на пракультурність традиції, що походить очевидно з доби рівноправности мужа і жінки в родині. Самосівний мак, первісне господарське добро, предмет настільної жертви (в Куті, в окремих поданнях як страва і в печиві) — а заразом символ великої розродчости. Сівке насіння є символом розсівности й розродчости родинної й господарської — ідеалу первісних родів і племен тай Українського народу. I сьогодня ідеалізує Український нарід родинне й господарське розмноження; свідчать про це повищі обряди та співають про це всі Колядки й Щедрівки. В кожнім разі дасться запримітити, що реліґійний і молитвенний настрій горує в Святовечірніх містеріях і є первісним та чисто Українським мотивом святочним, а маґічні та ворожбитські поведінки, — наколи їх такими вважати, — це пізніші святочні додатки, мабуть переняті від племен Сходу і Полудня, з якими Український нарід був у зношеннях. Такі додатки... не схожі з основною ідеольоґією Свята. Осередком, який всіх притягає в тій святочній хвилі, є думка про Тайну Вечерю. Доокола Святовечірнього стола збирається не тільки все, що найближче серцю й душі Господаря та Господині, але вона є сама собою тою світляною серцевиною, доокола котрої горнеться все, що живе. Ніхто не є відтручений від цього Свята: воно має усіх з''єднати, відродити і поправити. Це не є свято померших, або для померших, але Свято життя, містерія життєвого відродження, — чи відсвіження, передовсім духового, етичного, — а в даних умовах і фізичного відродження, що обнимає і звіринний світ. Про все те, краще і докладніше, чим описані обряди, розкажуть Колядки і Щедрівки. Оце виявлюється... найбільше культурна суспільна прикмета Українського народу: цей старовіцький альтруїзм, розвинений до саможертви, що каже Господареві й Господині та всім присутнім забувати в найсвятішу хвилю Вечері про себе, а згадати наперед про свою худібку та свої пчоли і перші куски Вечері відступити душам померших. Є звичай в Українського народу, — як на Свят-Вечір, так і при інших анальоґійних нагодах, — перехиляти повну чарку перед випиттям, щоби напитку трохи сплинуло. Є це, як буде стверджено анальоґіями подібних звичаїв у інших народів, рід пріміціяльного пожертвовання. Такі пожертвовання бували у старинних народів і досі є у первісних народів природи, як раз у тім, що зливаючи напиток перед питтям на землю, жертвують оцю першу струйку Найвищому Єству. Так само жертвують Йому перші частки страв і аж опісля заживає їх нарід сам. Та не в цім річ, що Українці п''ють на Святий Вечер обов''язково напитки, а у цім, що зливають перші краплі напитку в честь Найвищого Єства; бо так роблять первісні народи природи. Після Вечері забирають бідні люди, що були на ній, потрохи з кожної оставшої на столі страви до кобелі, собі до дому; а коли їх не було в гостях на Свят-Вечір, то домашні розносять кобелі з хлібом, пшеницею й іншими святовечірніми останками по сусідах, родині, приятелях та убожині в селі, — діти своїм бабкам-повитухам. Усе те на символ приязни, щирости й милосердя. Відношення вечер є взаємне, так що Свят-Вечір стається особлившою годиною підйому альтруїстичних почувань і сповнювання дій любови. Це відношення вечер є звичаєм досі всюди на Україні; воно буває більше або менше задержане, але загально вважається Українським народом за дію етичну, поручену старовіцькою традицією і давнім законом взаємної любови. Пригадкою цього закона кінчаться найкращі Колядки й Щедрівки. Він чудово сходиться з християнським законом любови ближнього і є одним з мотивів, чому Староукраїнські Різдвяні свята бувають святковані й цінені народом на рівні з християнськими. На однім кінці стола, близько постелі, лишає Господиня два хліби, колач на них і топку соли. Там вони зіставляються аж до свята Нового Року. Вони є символами Трьох Астральних світил, головних чинників містичної доби Різдва, та символами самого Господа. На цю тему буде окремий розділ. (За працею: о. Ксенофонт Сосенко. "Культурно-історична постать Староукраїнськиx свят Різдва і Щедрого Вечора". Львів, 1928. - СІНТО, Київ 1994. 343с.) Читати листки з приводу цієї Пісні: Св. Микола 19.12 – Народний речник перед Богом і Прадід. Бог, Різдво Світа, Дідух і Лицарі. Ой у Нашого Господарентя Стежки до інших листків про Українські традиції.','Добрий Вечір Тобі Гречная Родино
Приспів:  Радуйся!
Ой радуйся Земле Ясен Світ засвітився!

Вимітайте Двори Новими Мітлами
Печіть Паляниці з Ярої Пшениці
Застеляйте Столи та все Килимами
Xай посядуть звані довгождані Гості

А що Першим гостем то Краснеє Сонце
А що Другим гостем то Ясненький Місяць
А що Третім гостем то Дрібненький Дощик

А що Сонце мовить Людей благословить
То ізрадується й Дитятко маленьке

А що Місяць мовить Звіра благословить
То заворушицця й Звірятко дрібненьке

А що Дощик мовить Поля благословить
Як перейду Яром Польом Господарьом
То заколосицця Жито і Пшениця
Жито і Пшениця й усяка Пашниця    Мелодія для 1 і 2 голосу','[''pisni.org.ua'', ''cat:druzhba'', ''cat:kolyadky'', ''cat:pro-batkiv'', ''cat:shchedrivky'', ''Пісні про дружбу'', ''Колядки'', ''Пісні про любов до батьків'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_316020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_316020','Добрий Вечір Тобі Гречная Родино','Добрий Вечір Тобі Гречная Родино
Приспів:  Радуйся!
Ой радуйся Земле Ясен Світ засвітився!

Вимітайте Двори Новими Мітлами
Печіть Паляниці з Ярої Пшениці
Застеляйте Столи та все Килимами
Xай посядуть звані довгождані Гості

А що Першим гостем то Краснеє Сонце
А що Другим гостем то Ясненький Місяць
А що Третім гостем то Дрібненький Дощик

А що Сонце мовить Людей благословить
То ізрадується й Дитятко маленьке

А що Місяць мовить Звіра благословить
То заворушицця й Звірятко дрібненьке

А що Дощик мовить Поля благословить
Як перейду Яром Польом Господарьом
То заколосицця Жито і Пшениця
Жито і Пшениця й усяка Пашниця    Мелодія для 1 і 2 голосу');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_316020_l1','pisniua_316020','http://lemko.org/midi/tomasz.html','http://lemko.org/midi/tomasz.html','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3154168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3154168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3154168';
DELETE FROM songs WHERE id = 'pisniua_3154168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3154168','Гефсиманський сад',NULL,'uk','ukraine_1991',NULL,NULL,'Страсні пісні',NULL,'Гефсиманський сад цвітами зацвів
Де Христос молитись з учнями ходив.
Перед Отцем своїм лляв сльози свої
І склонився низько, лицем до землі.

Скорбна і сумненька ця хвиля була
Як кровавий піт капав із чола
Так Христос молився до свого Отця
Нехай буде Отче в цім воля Твоя.

А учні вже спали не чули цих слів
Як Христос молився аж в молитві вмлів
Місяць і зіроньки свідками були
Як Христос молився вони все чули.

Місяць з зіроньками ясно засвітив
Як Христос молився у Отця просив.
Як Ісус Син Божий у Отця просив
Щоб Отець Небесний вам гріхи простив.

А Отець Небесний Синові сказав
Щоб гріхи прощати Я Тебе післав
Я Тя милий Сину на муки віддав
Щоб Ти в своїх муках всім гріхи прощав.

Били катували на хрест розп''яли
На святу голову терня натягли
Терня покололо голову святу
Потекла свята кров з ран аж до низу

Потекла свята кров з ранів по хресті
Змила всему світу всі гріхи людські
Так Ісус Син Божий муки притерпів,
Примирив нас з Богом, небо й рай відкрив','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:strasni'', ''Церковні пісні'', ''Страсні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3154168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3154168','Гефсиманський сад','Гефсиманський сад цвітами зацвів
Де Христос молитись з учнями ходив.
Перед Отцем своїм лляв сльози свої
І склонився низько, лицем до землі.

Скорбна і сумненька ця хвиля була
Як кровавий піт капав із чола
Так Христос молився до свого Отця
Нехай буде Отче в цім воля Твоя.

А учні вже спали не чули цих слів
Як Христос молився аж в молитві вмлів
Місяць і зіроньки свідками були
Як Христос молився вони все чули.

Місяць з зіроньками ясно засвітив
Як Христос молився у Отця просив.
Як Ісус Син Божий у Отця просив
Щоб Отець Небесний вам гріхи простив.

А Отець Небесний Синові сказав
Щоб гріхи прощати Я Тебе післав
Я Тя милий Сину на муки віддав
Щоб Ти в своїх муках всім гріхи прощав.

Били катували на хрест розп''яли
На святу голову терня натягли
Терня покололо голову святу
Потекла свята кров з ран аж до низу

Потекла свята кров з ранів по хресті
Змила всему світу всі гріхи людські
Так Ісус Син Божий муки притерпів,
Примирив нас з Богом, небо й рай відкрив');
DELETE FROM song_links WHERE song_id = 'pisniua_3161364';
DELETE FROM song_versions WHERE song_id = 'pisniua_3161364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3161364';
DELETE FROM songs WHERE id = 'pisniua_3161364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3161364','Чом ти дитино не спиш?','Музика: Володимир Мотошин Слова: Світлана Кушнірук. Виконує: Володимир Мотошин','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'І
Зіроньки в небі, нічка настала
Чом ти, дитино, не спиш?
Спатоньки треба, - нічка сказала, -
Сил набираться, рости

Приспів:
Білка пухнаста давно вже заснула,
Бачить казковії сни.
А ведмежатка, кумедні звірятка,
Спатимуть аж до Весни.

ІІ
Спи, моя радість, сонечко мамине,
Доню кохана моя.
Он у лісочку десь під пиньочком
Спить вже мале зайченя.

Приспів.

ІІІ
Сніг за вікном і морози потріскують,
Дятел сховався в дупло.
Вкрився він пір''ячком, пахучим зіллячком
Сон пахне літнім теплом...

Приспів 2:
Сплять вже малята - дівчатка й хлоп''ятка,
Спи, моя доню, засни...
Очки заплющ, і нехай тобі сняться Найдивовижніші сни','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3161364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3161364','Чом ти дитино не спиш?','І
Зіроньки в небі, нічка настала
Чом ти, дитино, не спиш?
Спатоньки треба, - нічка сказала, -
Сил набираться, рости

Приспів:
Білка пухнаста давно вже заснула,
Бачить казковії сни.
А ведмежатка, кумедні звірятка,
Спатимуть аж до Весни.

ІІ
Спи, моя радість, сонечко мамине,
Доню кохана моя.
Он у лісочку десь під пиньочком
Спить вже мале зайченя.

Приспів.

ІІІ
Сніг за вікном і морози потріскують,
Дятел сховався в дупло.
Вкрився він пір''ячком, пахучим зіллячком
Сон пахне літнім теплом...

Приспів 2:
Сплять вже малята - дівчатка й хлоп''ятка,
Спи, моя доню, засни...
Очки заплющ, і нехай тобі сняться Найдивовижніші сни');
DELETE FROM song_links WHERE song_id = 'pisniua_3158065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3158065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3158065';
DELETE FROM songs WHERE id = 'pisniua_3158065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3158065','Ніхто мене не любить','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'пісенник ОУМ "Спадщина"',NULL,'Ніхто мене не любить,
Ніхто не приголубить,
Піду я у садочок,
Наїмся хробачків.

Вони такі чудові,
Всі різнокольорові,
Червоні і зелені,
Пухкенькі і смачні.

А я візьму шуфельку
І розгребу земельку,
А хроби так ласкаво
Всміхаються мені.

А Місько був роззява,
Відкрив своє халяво,
А хроби не чекали
І в землю повтікали.

А я візьму шуфельку,
І вдарю Міська в пельку.
А Місько впав на землю,
І більше не вставав.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3158065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3158065','Ніхто мене не любить','Ніхто мене не любить,
Ніхто не приголубить,
Піду я у садочок,
Наїмся хробачків.

Вони такі чудові,
Всі різнокольорові,
Червоні і зелені,
Пухкенькі і смачні.

А я візьму шуфельку
І розгребу земельку,
А хроби так ласкаво
Всміхаються мені.

А Місько був роззява,
Відкрив своє халяво,
А хроби не чекали
І в землю повтікали.

А я візьму шуфельку,
І вдарю Міська в пельку.
А Місько впав на землю,
І більше не вставав.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3158065_l1','pisniua_3158065','YouTube','https://www.youtube.com/watch?v=PZ4Qo8nOPZ8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3158065_l2','pisniua_3158065','YouTube','https://www.youtube.com/watch?v=jo7fcv13atk','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3160168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3160168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3160168';
DELETE FROM songs WHERE id = 'pisniua_3160168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3160168','Рідне поле','Українська народна пісня. Виконує: Фольклорний ансамбль села Межирич','uk','ukraine_before_1917',NULL,NULL,'З архіву ансамблю "Божичі"',NULL,'Там, де полягли герої,
Хиляться тополі,
Мак червоний під горою,
Серце моє в полі.

Милі серцю тихі зорі
Й грози василькові,
Наче море неозоре,
Хвилі колоскові.

Рідне поле - наша сила,
Сила миру в світі,
Тільки б нива нам родина,
Ми за те в отвіті.

Рідне поле - наша доля,
Свіжий вітер віє,
Переорем рідне поле,
Знов добром засієм.

Там, де полягли герої,
Хиляться тополі,
Мак червоний під горою,
Серце моє в полі.','[''pisni.org.ua'', ''cat:arkhiv-bozhychi'', ''Фольклорний архів анс. "Божичі"'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3160168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3160168','Рідне поле','Там, де полягли герої,
Хиляться тополі,
Мак червоний під горою,
Серце моє в полі.

Милі серцю тихі зорі
Й грози василькові,
Наче море неозоре,
Хвилі колоскові.

Рідне поле - наша сила,
Сила миру в світі,
Тільки б нива нам родина,
Ми за те в отвіті.

Рідне поле - наша доля,
Свіжий вітер віє,
Переорем рідне поле,
Знов добром засієм.

Там, де полягли герої,
Хиляться тополі,
Мак червоний під горою,
Серце моє в полі.');
DELETE FROM song_links WHERE song_id = 'pisniua_3154323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3154323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3154323';
DELETE FROM songs WHERE id = 'pisniua_3154323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3154323','Висилала мене мати','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Kulik A., Pleśniak P. Dla Oli na słowiańską nutę. Wybrane pieśni łemkowskie, bojkowskie, słowackie, polskie i inne. - Mińsk Mazowiecki, 2001. – 16 p.',NULL,'Висилала мене мати | (3)
Зеленоє жито жати,
А я там лежала,
Борознок би не знала.

Надійшли чужинці:
Чого лежиш, полежнице?
А я з тої охоти
Та й нажала штири снопи.

Штири снопи нажала,
Полічити я не знала,
Треба людей попросити
Та і снопи полічити.','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3154323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3154323','Висилала мене мати','Висилала мене мати | (3)
Зеленоє жито жати,
А я там лежала,
Борознок би не знала.

Надійшли чужинці:
Чого лежиш, полежнице?
А я з тої охоти
Та й нажала штири снопи.

Штири снопи нажала,
Полічити я не знала,
Треба людей попросити
Та і снопи полічити.');
DELETE FROM song_links WHERE song_id = 'pisniua_3164525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3164525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3164525';
DELETE FROM songs WHERE id = 'pisniua_3164525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3164525','Офіцерська родина','Музика: Олександр Злотник Слова: Василь Іваницький. Виконує: Наталія Бучинська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сину, завтра дома свято -
Буде разом з нами тато!
Знаєш, любий, він на службі, як завжди!
Офіцер безпеки, сину,
Нашу береже країну,
Щоб не сталося ні горя, ні біди!
Тато вірить, тато знає,
Що сім''я його чекає
І ця віра йому сили надає!
На стола накрию, сину,
Я найкращу скатертину,
Щастя, коли поруч з нами тато є!

Приспів:
За сім''ю, і за родину,
І за рідну Україну
Келихи піднімемо вина!
Хай легкою буде служба,
Хай живе любов і дружба!
І за кращу долю вип''ємо до дна!

На сімейне наше свято
Одягне мундира тато
І побачить нагороди вся сім''я.
Знаєш, сину, тато вчора
З капітана став майором,
Ми на службі разом з ним - ти і я!

Приспів. (2)

І за кращу долю вип''ємо до дна!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3164525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3164525','Офіцерська родина','Сину, завтра дома свято -
Буде разом з нами тато!
Знаєш, любий, він на службі, як завжди!
Офіцер безпеки, сину,
Нашу береже країну,
Щоб не сталося ні горя, ні біди!
Тато вірить, тато знає,
Що сім''я його чекає
І ця віра йому сили надає!
На стола накрию, сину,
Я найкращу скатертину,
Щастя, коли поруч з нами тато є!

Приспів:
За сім''ю, і за родину,
І за рідну Україну
Келихи піднімемо вина!
Хай легкою буде служба,
Хай живе любов і дружба!
І за кращу долю вип''ємо до дна!

На сімейне наше свято
Одягне мундира тато
І побачить нагороди вся сім''я.
Знаєш, сину, тато вчора
З капітана став майором,
Ми на службі разом з ним - ти і я!

Приспів. (2)

І за кращу долю вип''ємо до дна!');
DELETE FROM song_links WHERE song_id = 'pisniua_31626';
DELETE FROM song_versions WHERE song_id = 'pisniua_31626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_31626';
DELETE FROM songs WHERE id = 'pisniua_31626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_31626','По садочку я ходила','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'А вже весна скресла. Збірник гаївок. Львів, 2003.','* Приспів повторюється після кожного рядка. Ця пісня співається двічі. Вдруге — "милий" змінюється на "нелюб".','По садочку я ходила...

Приспів:
Си вось так, си вось так. *

Щоб милого вибирати...
Щоб милому постелити...
Щоб милого посадити...
Щоб милого голубити...
Щоб милого обіймати...
Щоб милого цілувати...
Щоб милого підіймати...
Щоб милого проводжати...','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_31626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_31626','По садочку я ходила','По садочку я ходила...

Приспів:
Си вось так, си вось так. *

Щоб милого вибирати...
Щоб милому постелити...
Щоб милого посадити...
Щоб милого голубити...
Щоб милого обіймати...
Щоб милого цілувати...
Щоб милого підіймати...
Щоб милого проводжати...');
DELETE FROM song_links WHERE song_id = 'pisniua_3165560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3165560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3165560';
DELETE FROM songs WHERE id = 'pisniua_3165560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3165560','До початку','Музика: Ірина Білик Слова: Ірина Білик. Виконує: Ірина Білик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сипле білим павутинням сніг,
Сипле сяйвом срібла нам до ніг,
Ніжним співом неземних чудес
Ллється музика небес!

Ллється з неба кришталевий дзвін,
Сіє віру над землею він,
Щоб воскресли в кожнім серці знов |
І Надія, і Любов!                 | (2)

Ллється музика Добра!
Ллється музика Добра!

Сяють вогники різдв''яних свіч,
Тихим світлом віє від обличь,
Це прийшов по всій планеті час,   |
Що веде до Щастя нас!             | (2)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3165560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3165560','До початку','Сипле білим павутинням сніг,
Сипле сяйвом срібла нам до ніг,
Ніжним співом неземних чудес
Ллється музика небес!

Ллється з неба кришталевий дзвін,
Сіє віру над землею він,
Щоб воскресли в кожнім серці знов |
І Надія, і Любов!                 | (2)

Ллється музика Добра!
Ллється музика Добра!

Сяють вогники різдв''яних свіч,
Тихим світлом віє від обличь,
Це прийшов по всій планеті час,   |
Що веде до Щастя нас!             | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3165560_l1','pisniua_3165560','YouTube','https://www.youtube.com/watch?v=NgNb96xvQqQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_316168';
DELETE FROM song_versions WHERE song_id = 'pisniua_316168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_316168';
DELETE FROM songs WHERE id = 'pisniua_316168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_316168','Ой під Вербою під Зеленою Святий Вечір','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Ой під Вербою під Зеленою Святий Вечір --> Колядка стародавня: Українське Різдво Світа. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаївки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... Хто Дудочку зробив Пісеньку навчив. Гляди Сопілоньку щоб гарненько грала. За Сінечками за Дверечками Ой вийду я на Вулицю Куделицю прясти Ой Ти Зелена Дубровонько Прийшла Весна з Квітками Буде Тобі Три Дорозі. У Скрипочку грає хороше співає. Кругом Нього зелененько всередині веселенько. Читати листки з приводу цієї Пісні: Українська Астрально-мітольоґічна реліґійна концепція. Еротичні містерії, Катерини 7.12 — Передріздвяний Святочний час. Еротичні містерії, Калета 13.12 — Передріздвяний Святочний час. Їхав Козак з України (2) Стежки до інших листків про Українські пісні.','Ой під Вербою під Зеленою Святий Вечір      |(2)
Ой там Василько Коника пасе Святий Вечір    |(2)
Коника пасе Пісню співає Святий Вечір
Пісню співає в Дудочку грає Святий Вечір

Прийшов до його Батенько його Святий Вечір  |(2)
Сину Василю хто Коня купив Святий Вечір
Хто Коня купив Дудочку зробив Святий Вечір
Дудочку зробив Пісеньку навчив Святий Вечір |(2)

Любило мене аж Три Дівочки Святий Вечір     |(2)
Перша любила Коня купила Святий Вечір       |(2)
Друга любила Пісню навчила Святий Вечір     |(2)
Третя любила Дудочку зробила Святий Вечір   |(2)

Сину Василю яку ж ти візьмеш Святий Вечір   |(2)

Я тую візьму що й з Сонцем сходить Святий Вечір       |(2)
Що й з Сонцем сходить з Місяцем заходить Святий Вечір |(2)

Сину Василю не твоя рівня Святий Вечір
А твоя рівня стара царівня Святий Вечір

А за цим Словом бувай здоровий Святий Вечір  |(2)
Бувай здоровий Красний Паничу Святий Вечір   |(2)
А ції Святка святкуй здоровий Святий Вечір   |(2)
Не сам з собою з Отцем-з-Маткою Святий Вечір |(2)
З Отцем-з-Маткою ще й з Родиною Святий Вечір |(2)

Добрий Вечір!','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_316168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_316168','Ой під Вербою під Зеленою Святий Вечір','Ой під Вербою під Зеленою Святий Вечір      |(2)
Ой там Василько Коника пасе Святий Вечір    |(2)
Коника пасе Пісню співає Святий Вечір
Пісню співає в Дудочку грає Святий Вечір

Прийшов до його Батенько його Святий Вечір  |(2)
Сину Василю хто Коня купив Святий Вечір
Хто Коня купив Дудочку зробив Святий Вечір
Дудочку зробив Пісеньку навчив Святий Вечір |(2)

Любило мене аж Три Дівочки Святий Вечір     |(2)
Перша любила Коня купила Святий Вечір       |(2)
Друга любила Пісню навчила Святий Вечір     |(2)
Третя любила Дудочку зробила Святий Вечір   |(2)

Сину Василю яку ж ти візьмеш Святий Вечір   |(2)

Я тую візьму що й з Сонцем сходить Святий Вечір       |(2)
Що й з Сонцем сходить з Місяцем заходить Святий Вечір |(2)

Сину Василю не твоя рівня Святий Вечір
А твоя рівня стара царівня Святий Вечір

А за цим Словом бувай здоровий Святий Вечір  |(2)
Бувай здоровий Красний Паничу Святий Вечір   |(2)
А ції Святка святкуй здоровий Святий Вечір   |(2)
Не сам з собою з Отцем-з-Маткою Святий Вечір |(2)
З Отцем-з-Маткою ще й з Родиною Святий Вечір |(2)

Добрий Вечір!');
DELETE FROM song_links WHERE song_id = 'pisniua_3168261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3168261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3168261';
DELETE FROM songs WHERE id = 'pisniua_3168261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3168261','Як давно','Музика: Богдан-Юрій Янівський Слова: О.Підсуха. Виконує: Рушничок','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Як давно, як давно
У розлуці минають години.
Чужина, чужина,
Не заміниш мені України.

Не розвіять жалю,
Не розрадити тугу безкраю.
Я ловлю, я ловлю
Кожну вістку з далекого краю.

Освіти, освіти
Мою душу повиту журбою.
Ти прости, ти прости
За розлуку, мій краю, з тобою.

Як давно, як давно
У розлуці минають години.
Чужина, чужина.
Не заміниш мені України','[''pisni.org.ua'', ''cat:43'', ''cat:emigration'', ''Еміґрантські пісні'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3168261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3168261','Як давно','Як давно, як давно
У розлуці минають години.
Чужина, чужина,
Не заміниш мені України.

Не розвіять жалю,
Не розрадити тугу безкраю.
Я ловлю, я ловлю
Кожну вістку з далекого краю.

Освіти, освіти
Мою душу повиту журбою.
Ти прости, ти прости
За розлуку, мій краю, з тобою.

Як давно, як давно
У розлуці минають години.
Чужина, чужина.
Не заміниш мені України');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3168261_l1','pisniua_3168261','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3163929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3163929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3163929';
DELETE FROM songs WHERE id = 'pisniua_3163929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3163929','Дорога','Музика: Микола Свидюк Слова: Вадим Крищенко. Виконує: Микола Свидюк','uk','ukraine_1991',NULL,NULL,'Книга: Крищенко В. Д. Усі ми прагнемо любові: Пісні.-Київ:ВіРА ІНСАЙТ-2003',NULL,'У дорогу треба хліба,
Для дороги треба друга.
Буде краще, буде легше
Цю дорогу подолать.
Не підкосить ніг утома,
Не зачепить душу туга.
І горби тоді здадуться
Непомітні, ніби гладь.

Приспів:
Дорога, дорога - не скажеш нічого,
Лише оглянусь, мов наївне дитя.
Дорога, дорога - відрада й знемога
З годинником долі - як вимір життя.

Ой біжить моя дорога-
То підйоми, то глибини.
І не знаєш, де праворуч,
Де ліворуч поверне.
Зачерствіла, розкришилась
У руках моїх хлібина,
А товариш, ніби вірний,-
Вже давно забув мене.

Приспів.','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3163929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3163929','Дорога','У дорогу треба хліба,
Для дороги треба друга.
Буде краще, буде легше
Цю дорогу подолать.
Не підкосить ніг утома,
Не зачепить душу туга.
І горби тоді здадуться
Непомітні, ніби гладь.

Приспів:
Дорога, дорога - не скажеш нічого,
Лише оглянусь, мов наївне дитя.
Дорога, дорога - відрада й знемога
З годинником долі - як вимір життя.

Ой біжить моя дорога-
То підйоми, то глибини.
І не знаєш, де праворуч,
Де ліворуч поверне.
Зачерствіла, розкришилась
У руках моїх хлібина,
А товариш, ніби вірний,-
Вже давно забув мене.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3165727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3165727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3165727';
DELETE FROM songs WHERE id = 'pisniua_3165727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3165727','Емігрант','Музика: Геннадій Татарченко Слова: Вадим Крищенко. Виконує: Віктор Шпортько','uk','ukraine_1991',NULL,NULL,'Книга: Крищенко В. Д. Усі ми прагнемо любові: Пісні.-Київ:ВіРА ІНСАЙТ-2003',NULL,'Ти уже емігрант... В тебе інша заморська адреса,
Є на стіл що подать, не бракує, здається, добра.
Тільки знов пишеш ти: сняться все мені канівські плеса,
Знов приходить у сни батька-матері хата стара.

Приспів:
Емігрант, емігрант - незнайомі обличчя,
І минуле - неначе погасла свіча.
Емігрант, емігрант - тільки знов тебе кличе
Несхолола любов, калинова печаль.

В закордонне життя заплітав ти рожеву надію,
Говорив: заживем, бо там є все для серця і рук.
Ні, чогось там нема...Бо рве душу всякчас ностальгія -
Не хвороба, але найболючіша мука із мук.

Приспів.

Я тобі не суддя... Ти не перший і ти не єдиний...
Може, час пролетить, і зігріють принади чужі.
Тільки хочу, щоб знав - залишається все ж Україна
Для молитвенних слів, для останнього зблиску душі.

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3165727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3165727','Емігрант','Ти уже емігрант... В тебе інша заморська адреса,
Є на стіл що подать, не бракує, здається, добра.
Тільки знов пишеш ти: сняться все мені канівські плеса,
Знов приходить у сни батька-матері хата стара.

Приспів:
Емігрант, емігрант - незнайомі обличчя,
І минуле - неначе погасла свіча.
Емігрант, емігрант - тільки знов тебе кличе
Несхолола любов, калинова печаль.

В закордонне життя заплітав ти рожеву надію,
Говорив: заживем, бо там є все для серця і рук.
Ні, чогось там нема...Бо рве душу всякчас ностальгія -
Не хвороба, але найболючіша мука із мук.

Приспів.

Я тобі не суддя... Ти не перший і ти не єдиний...
Може, час пролетить, і зігріють принади чужі.
Тільки хочу, щоб знав - залишається все ж Україна
Для молитвенних слів, для останнього зблиску душі.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3154467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3154467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3154467';
DELETE FROM songs WHERE id = 'pisniua_3154467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3154467','Грона акації','Музика: В. Баснер Слова: М. Матусовський. Виконує: Світлана Мирвода','uk','ukraine_1991',NULL,NULL,'http://www.forum.poshtovh.org.ua/','Пісня додана з дозволу виконавця Виконує: Мирвода Світлана Альбом Колискова зореліта (Kolyskowa_zorelita)','Am         A7        Edіm            Dm
Нам цілу ніч соловейко наспівував
Ночі здавалось не буде кінця
Am              Edіm  Gdіm   Dm
Грона духмяні акації білої
Нам до світанку п''янили серця.

Сад був умитий весняними зливами
Доли стояли у темній воді
Боже, наївні були ми щасливими
Юні до болю були ми тоді.

Роки промчали зробивши нас сивими
Де чистота пелюсток тих живих?
Тільки зима заметілями білими
Знов, як колись промовляє про них.

В час, коли вітер лютує завією,
Знов, як колись зачаровуюсь я
Грона духмяні акації білої,
Ви неповторні, як юність моя.','[''pisni.org.ua'', ''cat:romansy'', ''cat:translations'', ''Романси'', ''Переклади іноземних пісень'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3154467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3154467','Грона акації','Am         A7        Edіm            Dm
Нам цілу ніч соловейко наспівував
Ночі здавалось не буде кінця
Am              Edіm  Gdіm   Dm
Грона духмяні акації білої
Нам до світанку п''янили серця.

Сад був умитий весняними зливами
Доли стояли у темній воді
Боже, наївні були ми щасливими
Юні до болю були ми тоді.

Роки промчали зробивши нас сивими
Де чистота пелюсток тих живих?
Тільки зима заметілями білими
Знов, як колись промовляє про них.

В час, коли вітер лютує завією,
Знов, як колись зачаровуюсь я
Грона духмяні акації білої,
Ви неповторні, як юність моя.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3154467_l1','pisniua_3154467','YouTube','https://www.youtube.com/watch?v=5jXWTvaGcmE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3154467_l2','pisniua_3154467','YouTube','https://www.youtube.com/watch?v=T_FgOLVx8Wo','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3169766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3169766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3169766';
DELETE FROM songs WHERE id = 'pisniua_3169766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3169766','Добрий вечір!','Музика: Леся Горова Слова: Леся Горова. Виконує: Леся Горова','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Добрий вечір, люди,
Вашій теплій хаті!
Щоб були ви завжди
Щедрі і багаті!
Хай Різдво Христове
Вас благословляє,
Бог ся рождає!

Всім колядникам
Ви відчиняйте двері
І просіть до столу,
До своєй вечері.
Хай у вашій хаті
Нині все співає,
Бог ся рождає!

Гарно колядуйте
І святкуйте нині,
Ми бажаєм щастя
Вашій всій родині!
Весь наш рід великий |
Нині освятився,      |
Бог народився!       | (2)','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Пісні на християнську тематику'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3169766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3169766','Добрий вечір!','Добрий вечір, люди,
Вашій теплій хаті!
Щоб були ви завжди
Щедрі і багаті!
Хай Різдво Христове
Вас благословляє,
Бог ся рождає!

Всім колядникам
Ви відчиняйте двері
І просіть до столу,
До своєй вечері.
Хай у вашій хаті
Нині все співає,
Бог ся рождає!

Гарно колядуйте
І святкуйте нині,
Ми бажаєм щастя
Вашій всій родині!
Весь наш рід великий |
Нині освятився,      |
Бог народився!       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3169766_l1','pisniua_3169766','YouTube','https://www.youtube.com/watch?v=48qj4KgCtkk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_316766';
DELETE FROM song_versions WHERE song_id = 'pisniua_316766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_316766';
DELETE FROM songs WHERE id = 'pisniua_316766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_316766','Балада про Крути','Музика: Павло Дворський Слова: Микола Бакай. Виконує: Павло Дворський','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'Аудіо-CD: Павло Дворський. "Будуймо храм". 2000 (http://www.umka.com.ua/ukr/catalogue/226/)','Присвячено Подвигу Героїв Крут: "Вони - студенти, курсанти, школярі... без вагань віддали молоде життя в ім''я волі свого народу... Це - символ нескореного духу нашої нації. Це - пересторога тим, хто і нині сподівається поставити націю на коліна..." Детальніше >> mp3 Текст записано на слух з аудіо. Акорди до пісні подано спрощено. Тут H можна замінити на H7. В оригіналі (від Павла Дворського) пісня виконана у тональності Em. * Тут подано варіант акордів, адаптований для низького голосу. Підбір акордів: bohdanko','1. (Мотив 1)
То не чорне гайвороння над степом кружляє -
дика орда Муравйова грізно наступає.
Щоб ворога зупинити,   на станцію Крути
відправились добровольці - молоді рекрути.

Приспів 1:
Славних хлопців-добровольців зібралося триста,
а дорога, наче доля, коротка терниста.
Ой ви, Крути, ой ви, Крути,   заступіть собою,
бо проллється кров юнача   цілою рікою.

2. (Мотив 2)
Зима снігом замітає, січуть скоростріли.
Щоб ворога зупинити - не вистачить сили.
Вже набої закінчились, а навколо - поле.
Піднялися - і в атаку кинулись соколи.

Приспів 2:
Славних хлопців-добровольців підвелося триста,
А дорога, наче доля, коротка терниста.
Ой ви, Крути, ой ви, Крути, заступіть собою...
Пролилася кров юнача цілою рікою.

3. (Мотив 2)
Не вернуться вже ніколи до рідної хати;
не зустріне, не пригорне заплакана мати.
Постріляні, порубані - але незборимі
зосталися тут лежати сини України.

Приспів 3:
Славних хлопців-добровольців загинуло триста,
бо така вже їхня доля - коротка терниста.
Ой ви, Крути, ой ви, Крути, біль мого народу...
Віддали життя герої за нашу свободу.

Приспів 4:
Славних хлопців-добровольців загинуло триста,
бо така вже їхня доля - коротка терниста.
Ой ви, Крути, ой ви, Крути, біль мого народу...
Віддали життя герої   за нашу свободу.

* У тональності Hm:

1. (Мотив 1)
То не чорне гайвороння над степом кружляє -
дика орда Муравйова грізно наступає.
Щоб ворога зупинити,   на станцію Крути
відправились добровольці - молоді рекрути.

Приспів 1:
Славних хлопців-добровольців зібралося триста,
а дорога, наче доля, коротка терниста.
Ой ви, Крути, ой ви, Крути,   заступіть собою,
бо проллється кров юнача   цілою рікою.

2. (Мотив 2)
Піднялися - і в атаку кинулись соколи.

Приспів 4:
Віддали життя герої   за нашу свободу.','[''pisni.org.ua'', ''cat:istorychni'', ''cat:kruty'', ''cat:patriotic'', ''Історичні пісні'', "Пісні пам''яті Героїв бою під Крутами", ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_316766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_316766','Балада про Крути','1. (Мотив 1)
То не чорне гайвороння над степом кружляє -
дика орда Муравйова грізно наступає.
Щоб ворога зупинити,   на станцію Крути
відправились добровольці - молоді рекрути.

Приспів 1:
Славних хлопців-добровольців зібралося триста,
а дорога, наче доля, коротка терниста.
Ой ви, Крути, ой ви, Крути,   заступіть собою,
бо проллється кров юнача   цілою рікою.

2. (Мотив 2)
Зима снігом замітає, січуть скоростріли.
Щоб ворога зупинити - не вистачить сили.
Вже набої закінчились, а навколо - поле.
Піднялися - і в атаку кинулись соколи.

Приспів 2:
Славних хлопців-добровольців підвелося триста,
А дорога, наче доля, коротка терниста.
Ой ви, Крути, ой ви, Крути, заступіть собою...
Пролилася кров юнача цілою рікою.

3. (Мотив 2)
Не вернуться вже ніколи до рідної хати;
не зустріне, не пригорне заплакана мати.
Постріляні, порубані - але незборимі
зосталися тут лежати сини України.

Приспів 3:
Славних хлопців-добровольців загинуло триста,
бо така вже їхня доля - коротка терниста.
Ой ви, Крути, ой ви, Крути, біль мого народу...
Віддали життя герої за нашу свободу.

Приспів 4:
Славних хлопців-добровольців загинуло триста,
бо така вже їхня доля - коротка терниста.
Ой ви, Крути, ой ви, Крути, біль мого народу...
Віддали життя герої   за нашу свободу.

* У тональності Hm:

1. (Мотив 1)
То не чорне гайвороння над степом кружляє -
дика орда Муравйова грізно наступає.
Щоб ворога зупинити,   на станцію Крути
відправились добровольці - молоді рекрути.

Приспів 1:
Славних хлопців-добровольців зібралося триста,
а дорога, наче доля, коротка терниста.
Ой ви, Крути, ой ви, Крути,   заступіть собою,
бо проллється кров юнача   цілою рікою.

2. (Мотив 2)
Піднялися - і в атаку кинулись соколи.

Приспів 4:
Віддали життя герої   за нашу свободу.');
DELETE FROM song_links WHERE song_id = 'pisniua_317065';
DELETE FROM song_versions WHERE song_id = 'pisniua_317065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_317065';
DELETE FROM songs WHERE id = 'pisniua_317065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_317065','Я просто хочу бути там, де Ти',NULL,'uk','ukraine_1991',NULL,NULL,'Співаник пісні під гітару by PWR','Підбір акордів: PWR','Я просто хочу бути там, де Ти.
Мандрувати за Тобою.
Молитви не з відстані нести:
Візьми мене туди, де Ти.

Хочу бути там, де Ти є,
Навіки з Тобою поруч.
Візьми мене туди, де Ти є,
Я просто хочу жити там.

[D]         Em   A            D
Я хочу бути поруч, навіки з Тобою,
За столом сидіти в сяйві Твоєї слави, -
Біля Тебе, Я хочу завжди бути там,

Хочу бути там, хочу бути там, де Ти.','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_317065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_317065','Я просто хочу бути там, де Ти','Я просто хочу бути там, де Ти.
Мандрувати за Тобою.
Молитви не з відстані нести:
Візьми мене туди, де Ти.

Хочу бути там, де Ти є,
Навіки з Тобою поруч.
Візьми мене туди, де Ти є,
Я просто хочу жити там.

[D]         Em   A            D
Я хочу бути поруч, навіки з Тобою,
За столом сидіти в сяйві Твоєї слави, -
Біля Тебе, Я хочу завжди бути там,

Хочу бути там, хочу бути там, де Ти.');
DELETE FROM song_links WHERE song_id = 'pisniua_3167828';
DELETE FROM song_versions WHERE song_id = 'pisniua_3167828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3167828';
DELETE FROM songs WHERE id = 'pisniua_3167828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3167828','Доня хоче спати','Слова: Платон Воронько','uk','ukraine_before_1917',NULL,NULL,'http://www.malecha.org.ua/',NULL,'У моєї доні
Оченята сонні,
Рученьки,
Мов з вати,
Доня
Хоче спати...

Ніч прийшла
Тихенька,
Спи,
Моя маленька...','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3167828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3167828','Доня хоче спати','У моєї доні
Оченята сонні,
Рученьки,
Мов з вати,
Доня
Хоче спати...

Ніч прийшла
Тихенька,
Спи,
Моя маленька...');
DELETE FROM song_links WHERE song_id = 'pisniua_3172766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3172766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3172766';
DELETE FROM songs WHERE id = 'pisniua_3172766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3172766','Я ніколи до вас не прийду','Музика: Анатолій Горчинський Слова: І.Зьола. Виконує: Анжела Вербицька','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я ніколи до вас не прийду,
Не побачуся з вами ніколи
Ви пробачте мою простоту,
Щось мене серце голкою колить.
Я ніколи до вас не прийду (2)

Я ніколи до вас не прийду
і не буде у нас вже побачень
І що люди коханням зовуть
вже не буде у нас цього щастя
Я ніколи....(2)

Я ніколи до вас не прийду
Позахмарних я слів не шукаю
Що згубила-уже не знайду,
Я не плачу,та серце ридає
Я ніколи','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3172766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3172766','Я ніколи до вас не прийду','Я ніколи до вас не прийду,
Не побачуся з вами ніколи
Ви пробачте мою простоту,
Щось мене серце голкою колить.
Я ніколи до вас не прийду (2)

Я ніколи до вас не прийду
і не буде у нас вже побачень
І що люди коханням зовуть
вже не буде у нас цього щастя
Я ніколи....(2)

Я ніколи до вас не прийду
Позахмарних я слів не шукаю
Що згубила-уже не знайду,
Я не плачу,та серце ридає
Я ніколи');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3172766_l1','pisniua_3172766','YouTube','https://www.youtube.com/watch?v=gQG6sRlvcis','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3169020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3169020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3169020';
DELETE FROM songs WHERE id = 'pisniua_3169020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3169020','Реве та стогне люд голодний','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1962','http://www.a-pesni.golosa.info/kazaki/kuban/zazukr.htm','Записана в Ейске в сентябре 1962 от казака Василия Петровича Мещерякова. По словам исполнителя, песня эта создана по следам событий 1905 года. Мещеряков впервые услышал ее от старых большевиков в Ейске еще до Великой Октябрьской революции. И. Ф. Варавва. Песни казаков Кубани. Краснодар, 1966, № 323.','Реве та стогне люд голодний,
Собі свободу добува.
Воює з нами цар негодний,
Всю землю кров''ю залива.

Попам, чортам довговолосим,
Велять людей так научать:
На світи жить голодним, босим,
Закони царські почитать.

А люди трохи поумніли,
Уже не слухають попів,
Кричать, що мають вони сили...
- Долой царя, долой панів!

Не треба нам царя Миколи,
Його з престолу мы звергнем,
Напишем новії закони,
Нові порядки заведем.

А цар Микола, він, гайдуче,
Сидить в віконце вигляда.
Кровавий труд жандармськой пулі
Вином та медом залива. (2)','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3169020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3169020','Реве та стогне люд голодний','Реве та стогне люд голодний,
Собі свободу добува.
Воює з нами цар негодний,
Всю землю кров''ю залива.

Попам, чортам довговолосим,
Велять людей так научать:
На світи жить голодним, босим,
Закони царські почитать.

А люди трохи поумніли,
Уже не слухають попів,
Кричать, що мають вони сили...
- Долой царя, долой панів!

Не треба нам царя Миколи,
Його з престолу мы звергнем,
Напишем новії закони,
Нові порядки заведем.

А цар Микола, він, гайдуче,
Сидить в віконце вигляда.
Кровавий труд жандармськой пулі
Вином та медом залива. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3170962';
DELETE FROM song_versions WHERE song_id = 'pisniua_3170962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3170962';
DELETE FROM songs WHERE id = 'pisniua_3170962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3170962','Грай, Єрусалиме новий','Слова: Зореслав','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Грай, Єрусалиме новий,
Пісню заспівай Христові!
Ти, Сіоне, одягнися,
Чиста Діво, веселися!
Ангели і Серафими
З богоносними святими
Заспівайте без тривоги
Грімку пісню перемоги.
Величайте, заспівайте:
Христос воскрес!

Камінь гробу відвалився,
В славі бо Христос з''явився.
Сонцем ясним став Син Божий,
Перемігши гріх ворожий.
Сонце ясне, сонце красне,
Що повіки не погасне.
Будьмо для Христа готові
З серця дати дар любові.
Величайте, заспівайте:
Христос воскрес!','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3170962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3170962','Грай, Єрусалиме новий','Грай, Єрусалиме новий,
Пісню заспівай Христові!
Ти, Сіоне, одягнися,
Чиста Діво, веселися!
Ангели і Серафими
З богоносними святими
Заспівайте без тривоги
Грімку пісню перемоги.
Величайте, заспівайте:
Христос воскрес!

Камінь гробу відвалився,
В славі бо Христос з''явився.
Сонцем ясним став Син Божий,
Перемігши гріх ворожий.
Сонце ясне, сонце красне,
Що повіки не погасне.
Будьмо для Христа готові
З серця дати дар любові.
Величайте, заспівайте:
Христос воскрес!');
DELETE FROM song_links WHERE song_id = 'pisniua_3171261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3171261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3171261';
DELETE FROM songs WHERE id = 'pisniua_3171261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3171261','Хрест - це Трон твій','Слова: о. М. Л.','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Хрест - це Трон твій, о, мій Боже,
Мій Спасителю благий,
На хресті Ти прославився,  |
На хресті спас всіх людей. | (2)

Спас від згуби нас упавших,
Диявола побідив,
Оснував могутнє царство    |
І хрестом його скріпив.    | (2)

О, прийдіть всі, християни,
Хрест Ісуса обійміть
І на пам''ять Воздвиження   |
Йому славно так зовіть.    | (2)

Хресту Твоєму, Владико,
Покланяємося всі днесь,
Хрест Господен — це дорога |
Нас ведуча до небес.       | (2)

О, веди ж нас, чесний хресте,
На небесний вічний трон,
Научи нас в світі жити,    |
Як велить Божий закон.     | (2)

Хрест — це трон Твій, о Ісусе,
О, мій Спасе преблагий,
Всі ангели Тебе славлять,  |
Славить Тебе світ цілий.   | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christ'', ''Церковні пісні'', ''Пісні до Ісуса Христа'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3171261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3171261','Хрест - це Трон твій','Хрест - це Трон твій, о, мій Боже,
Мій Спасителю благий,
На хресті Ти прославився,  |
На хресті спас всіх людей. | (2)

Спас від згуби нас упавших,
Диявола побідив,
Оснував могутнє царство    |
І хрестом його скріпив.    | (2)

О, прийдіть всі, християни,
Хрест Ісуса обійміть
І на пам''ять Воздвиження   |
Йому славно так зовіть.    | (2)

Хресту Твоєму, Владико,
Покланяємося всі днесь,
Хрест Господен — це дорога |
Нас ведуча до небес.       | (2)

О, веди ж нас, чесний хресте,
На небесний вічний трон,
Научи нас в світі жити,    |
Як велить Божий закон.     | (2)

Хрест — це трон Твій, о Ісусе,
О, мій Спасе преблагий,
Всі ангели Тебе славлять,  |
Славить Тебе світ цілий.   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3172168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3172168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3172168';
DELETE FROM songs WHERE id = 'pisniua_3172168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3172168','О Преславна і Пречудна','Музика: о.М.Л. Слова: о.М.Л.','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня. Збірник релігійних пісень. Упор. Т.Ференц, І.Мельник, О.Костецька. Львів: "Свічадо", 2005.',NULL,'О Преславна і Пречудна ангелів царице,
Ти всеможна Мати Божа, пресвітла зірнице! (2)

Ти у Львові в Онуфрійській церкві все сіяєш
І своїх ласк всім просячим щедро уділяєш. (2)

Перед Твою днесь Ікону просьби засилаєм,
В Тебе помочі, потіхи і ради шукаєм. (2)

Споглянь на всіх, чиста Діво, як ласкава Мати,
Не дай вірним своїм дітям в горю загибати. (2)

Прийми ж, прийми надгі мольби, просим Тя благаєм,
Ми на Тебе всю надію свою покладаєм. (2)','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3172168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3172168','О Преславна і Пречудна','О Преславна і Пречудна ангелів царице,
Ти всеможна Мати Божа, пресвітла зірнице! (2)

Ти у Львові в Онуфрійській церкві все сіяєш
І своїх ласк всім просячим щедро уділяєш. (2)

Перед Твою днесь Ікону просьби засилаєм,
В Тебе помочі, потіхи і ради шукаєм. (2)

Споглянь на всіх, чиста Діво, як ласкава Мати,
Не дай вірним своїм дітям в горю загибати. (2)

Прийми ж, прийми надгі мольби, просим Тя благаєм,
Ми на Тебе всю надію свою покладаєм. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3170364';
DELETE FROM song_versions WHERE song_id = 'pisniua_3170364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3170364';
DELETE FROM songs WHERE id = 'pisniua_3170364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3170364','В сильній надії','Музика: Остап Нижанківський','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'В сильній надії, Отче всесвіту,
Що сльозам нашим пільгу даєш,
Із грудей наших молитву щиру
Прийми, благаєм, Отче наш!          | (2)

Всещедрий Боже, Творче Сіону,
Ти, що царюєш на небесах,
Ти - щастя наше, Ти - охорона
Ти - наша поміч, Ти - все для нас!  | (2)

То ж де лиш сонце з неба сіяє,
Де лише серце хоч одне б''є,
Звідти молитва в небо злітає:
Нехай святиться ім''я Твоє!          | (2)

На кожнім кроці, де лише може
Глянути око Твоє святе,
Всі нехай кличуть: всещедрий Боже,
Для нас хай прийде царство Твоє!    | (2)

І споконвіку в кожну годину
Для всіх незмінна, для всіх одна
На землі, в пеклі, в небес країні
Свята хай буде воля Твоя!           | (2)

Уся тварина зір свій підносить,
Тиху молитву шепче весь світ,
В кожну хвилину світ увесь просить:
Хліб наш насущний подай нам, Днесь! | (2)

Забудь провини, щиро благаєм
І довги наші нам оставляй,
Довжникам нашим як ми прощаєм,
Так у час суду Ти нам прощай!       | (2)

Не дай ширитись пеклу між нами
І у спокусу нас не веди,
Духа кріпи на бій з ворогами,
Ворожий наступ сам відверни!         | (2)

І вибавляй нас, Боже, від злого,
Віддаляй всяку нещастя тінь,
Збери всіх разом до трону свого,
Прийми молитву нашу - Амінь!         | (2)    комп''ютерне відтворення (128 kbps)  (','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3170364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3170364','В сильній надії','В сильній надії, Отче всесвіту,
Що сльозам нашим пільгу даєш,
Із грудей наших молитву щиру
Прийми, благаєм, Отче наш!          | (2)

Всещедрий Боже, Творче Сіону,
Ти, що царюєш на небесах,
Ти - щастя наше, Ти - охорона
Ти - наша поміч, Ти - все для нас!  | (2)

То ж де лиш сонце з неба сіяє,
Де лише серце хоч одне б''є,
Звідти молитва в небо злітає:
Нехай святиться ім''я Твоє!          | (2)

На кожнім кроці, де лише може
Глянути око Твоє святе,
Всі нехай кличуть: всещедрий Боже,
Для нас хай прийде царство Твоє!    | (2)

І споконвіку в кожну годину
Для всіх незмінна, для всіх одна
На землі, в пеклі, в небес країні
Свята хай буде воля Твоя!           | (2)

Уся тварина зір свій підносить,
Тиху молитву шепче весь світ,
В кожну хвилину світ увесь просить:
Хліб наш насущний подай нам, Днесь! | (2)

Забудь провини, щиро благаєм
І довги наші нам оставляй,
Довжникам нашим як ми прощаєм,
Так у час суду Ти нам прощай!       | (2)

Не дай ширитись пеклу між нами
І у спокусу нас не веди,
Духа кріпи на бій з ворогами,
Ворожий наступ сам відверни!         | (2)

І вибавляй нас, Боже, від злого,
Віддаляй всяку нещастя тінь,
Збери всіх разом до трону свого,
Прийми молитву нашу - Амінь!         | (2)    комп''ютерне відтворення (128 kbps)  (');
DELETE FROM song_links WHERE song_id = 'pisniua_3173525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3173525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3173525';
DELETE FROM songs WHERE id = 'pisniua_3173525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3173525','Пісня про маму','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Роки пролітають, наче хмари голубі,
І життя нам біди посилає,
Мамо, мамо, хочу я подякувать Тобі,
Мамо, ти у мене лиш одна є!

Приспів:
Мамо, моя рідненька,
Ти, наче сонце, одна єдина!
Мамо, як у дитинстві
Я знов і знову до Тебе лину!

Ти одна пробачиш, зрозумієш все, як є,
Мамо, ти одна у мене віриш,
Теплим поглядом розрадиш серденько моє,
Рани всі загоїти зумієш.

Приспів.

Скільки пережито, скільки пройдено доріг,
Доля то голубить, то лютує.
Та коли мені не милий цілий білий світ,
Лиш Твоя любов мене рятує!

Приспів.

Речитатив:
Мамочко моя, рідненька,
Моя кам''яна стіна,
Найрідніша,
Найдорожча людина в світі,
Дякую Тобі за все!

Приспів','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3173525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3173525','Пісня про маму','Роки пролітають, наче хмари голубі,
І життя нам біди посилає,
Мамо, мамо, хочу я подякувать Тобі,
Мамо, ти у мене лиш одна є!

Приспів:
Мамо, моя рідненька,
Ти, наче сонце, одна єдина!
Мамо, як у дитинстві
Я знов і знову до Тебе лину!

Ти одна пробачиш, зрозумієш все, як є,
Мамо, ти одна у мене віриш,
Теплим поглядом розрадиш серденько моє,
Рани всі загоїти зумієш.

Приспів.

Скільки пережито, скільки пройдено доріг,
Доля то голубить, то лютує.
Та коли мені не милий цілий білий світ,
Лиш Твоя любов мене рятує!

Приспів.

Речитатив:
Мамочко моя, рідненька,
Моя кам''яна стіна,
Найрідніша,
Найдорожча людина в світі,
Дякую Тобі за все!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_3170525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3170525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3170525';
DELETE FROM songs WHERE id = 'pisniua_3170525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3170525','О, Ісусе наш небесний','Слова: о. І. Дуцько','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'О, Ісусе наш небесний,
На престолі Тя витаєм,
З вірою Твій хліб тілесний
Найсвятіший споживаєм.
Боже, Твій народ живи, |
Нас спаси, благослови! | (2)

Христе, пісню Ти похвальну
Чисті Ангели співають -
Тіло Боже непристанно
В небі видіти желають.
Боже, Твій народ живи, |
Нас спаси, благослови! | (2)

Сине Боже пречудесний!
Ти нам чудо все ділаєш:
Хліб насушний - в хліб небесний
Найсвятіший преміняєш.
Боже, Твій народ живи, |
Нас спаси, благослови! | (2)

О, Спасителю розпятий!
Ти нас в кожний час спасаєш -
Світом, небом необнятий
В хлібі нам Себе лишаєш.
Боже, Твій народ живи, |
Нас спаси, благослови! | (2)

Боже, щедрий в благодати,
Дай щасливо вік прожити,
В Тобі жити, умирати,
В небесах Тебе хвалити!
Боже, Твій народ живи, |
Нас спаси, благослови! | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christ'', ''cat:christian'', ''Церковні пісні'', ''Пісні до Ісуса Христа'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3170525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3170525','О, Ісусе наш небесний','О, Ісусе наш небесний,
На престолі Тя витаєм,
З вірою Твій хліб тілесний
Найсвятіший споживаєм.
Боже, Твій народ живи, |
Нас спаси, благослови! | (2)

Христе, пісню Ти похвальну
Чисті Ангели співають -
Тіло Боже непристанно
В небі видіти желають.
Боже, Твій народ живи, |
Нас спаси, благослови! | (2)

Сине Боже пречудесний!
Ти нам чудо все ділаєш:
Хліб насушний - в хліб небесний
Найсвятіший преміняєш.
Боже, Твій народ живи, |
Нас спаси, благослови! | (2)

О, Спасителю розпятий!
Ти нас в кожний час спасаєш -
Світом, небом необнятий
В хлібі нам Себе лишаєш.
Боже, Твій народ живи, |
Нас спаси, благослови! | (2)

Боже, щедрий в благодати,
Дай щасливо вік прожити,
В Тобі жити, умирати,
В небесах Тебе хвалити!
Боже, Твій народ живи, |
Нас спаси, благослови! | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_317364';
DELETE FROM song_versions WHERE song_id = 'pisniua_317364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_317364';
DELETE FROM songs WHERE id = 'pisniua_317364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_317364','Водограй *','Музика: Володимир Івасюк Слова: Володимир Івасюк','uk','ukraine_1991',NULL,NULL,NULL,'Підбір акордів: IhorKo','Тече вода, тече бистра,
А куди — не зна- ю,
Поміж гори в світ широкий
Тече, не вертає.

Ми зустрінемось з тобою
Біля водограю,
І попросим його щиро,
Хай він нам заграє.

Приспів:
Ой, водо-водограй, грай для нас, грай...
Танок свій жвавий ти не зупиняй,
За красну пісню на всі голоси,
Що хочеш, водограю, попроси.
Струни дає тобі кожна весна,
Дзвінкість дарує їм осінь ясна,
А ми заграєм на струнах отих,
Хай розіллють вони радісний сміх.

Подивись, як в сіру скелю
Б’є вода іскриста,
Ти зроби мені з тих крапель
Зоряне намисто.
Краще я зберу джерела,
Зроблю з них цимбали,
Щоб тобі, дівчино мила,
Вони красно грали.

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_317364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_317364','Водограй *','Тече вода, тече бистра,
А куди — не зна- ю,
Поміж гори в світ широкий
Тече, не вертає.

Ми зустрінемось з тобою
Біля водограю,
І попросим його щиро,
Хай він нам заграє.

Приспів:
Ой, водо-водограй, грай для нас, грай...
Танок свій жвавий ти не зупиняй,
За красну пісню на всі голоси,
Що хочеш, водограю, попроси.
Струни дає тобі кожна весна,
Дзвінкість дарує їм осінь ясна,
А ми заграєм на струнах отих,
Хай розіллють вони радісний сміх.

Подивись, як в сіру скелю
Б’є вода іскриста,
Ти зроби мені з тих крапель
Зоряне намисто.
Краще я зберу джерела,
Зроблю з них цимбали,
Щоб тобі, дівчино мила,
Вони красно грали.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_317364_l1','pisniua_317364','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3172323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3172323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3172323';
DELETE FROM songs WHERE id = 'pisniua_3172323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3172323','Що то за Пані?',NULL,'uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Що то за Пані
Ген за облаками,
Що до свого Сина
Мольби шле за нами?
Чи то не Марія,   |
Чи не Божа Мати   |
В блакитних ризах |
Повна благодати?  | (2)

Що то за Пані
Стоїть з ангелами?
Місяць і зорі
В Неї під ногами.
Чи то не Марія,   |
Чи не Божа Мати   |
В блакитних ризах |
Повна благодати?  | (2)

Чи то не та Пані,
Та Матір небесна,
Що на Голготу
Хрест за Сином несла?
Чи то не Марія,   |
Чи не Божа Мати   |
В блакитних ризах |
Повна благодати?  | (2)

Чи то не та Пані
На горі стояла,
Чи то не та Пані
В Крехові сіяла?
Чи то не Марія,   |
Чи не Божа Мати   |
В блакитних ризах |
Повна благодати?  | (2)

Чи то не та Пані,
Та ясна зірниця,
То Діва Марія
І небес Цариця.
Чи то не Марія,   |
Чи не Божа Мати   |
В блакитних ризах |
Повна благодати?  | (2)

Ах, то Марія,
Ах, то Божа Мати
В блакитних ризах
Повна благодати.
Чи то не Марія,   |
Чи не Божа Мати   |
В блакитних ризах |
Повна благодати?  | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:do-bohorodyci'', ''Церковні пісні'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3172323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3172323','Що то за Пані?','Що то за Пані
Ген за облаками,
Що до свого Сина
Мольби шле за нами?
Чи то не Марія,   |
Чи не Божа Мати   |
В блакитних ризах |
Повна благодати?  | (2)

Що то за Пані
Стоїть з ангелами?
Місяць і зорі
В Неї під ногами.
Чи то не Марія,   |
Чи не Божа Мати   |
В блакитних ризах |
Повна благодати?  | (2)

Чи то не та Пані,
Та Матір небесна,
Що на Голготу
Хрест за Сином несла?
Чи то не Марія,   |
Чи не Божа Мати   |
В блакитних ризах |
Повна благодати?  | (2)

Чи то не та Пані
На горі стояла,
Чи то не та Пані
В Крехові сіяла?
Чи то не Марія,   |
Чи не Божа Мати   |
В блакитних ризах |
Повна благодати?  | (2)

Чи то не та Пані,
Та ясна зірниця,
То Діва Марія
І небес Цариця.
Чи то не Марія,   |
Чи не Божа Мати   |
В блакитних ризах |
Повна благодати?  | (2)

Ах, то Марія,
Ах, то Божа Мати
В блакитних ризах
Повна благодати.
Чи то не Марія,   |
Чи не Божа Мати   |
В блакитних ризах |
Повна благодати?  | (2)');
