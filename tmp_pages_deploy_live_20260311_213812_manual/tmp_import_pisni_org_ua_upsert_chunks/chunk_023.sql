DELETE FROM song_links WHERE song_id = 'pisniua_246498';
DELETE FROM song_versions WHERE song_id = 'pisniua_246498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_246498';
DELETE FROM songs WHERE id = 'pisniua_246498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_246498','Верба','(Біля млина калина). Музика: Едуард Ханок Слова: Юрій Рибчинський. Виконує: Світозари, ВІА Світязь','uk','ukr_ssr_1919_1991',NULL,'1975','Перепис слів','Пісня "Верба" стала справжнім міжнародним проектом. Музику до неї написав білоруський композитор Едуард Ханок, вірші – чудовий поет Юрій Рибчинський, а вперше виконав у 1975 р. російський ансамбль "Самоцвіти", яким керував Юрій Маліков. Композитор Едуард Ханок розповідав (http://www.ivasyuk.org.ua/names.php? l=uk&p=hanok): "Верба" була написана під впливом "Червоної рути". Я тоді ще не був знайомий з Володимиром Івасюком, вже згодом ми відносно здружилися, але всі на той час в Союзі хотіли писати українською мовою.','Біля млина калина,
Біля ставу верба.
Біля тину дівчина,
Біля серця журба.
Та калина чарівна
І вночі не заснеш.
Та дівчина царівна,
Що чекає тебе.

Приспів:
А верба понад водою,
Наша пісня, наша доля.
Хай завжди мене верба  |
Та й додому поверта.   |(2)

Розквітає калина,
Зеленіє верба.
Твоя пісня прилине
І зникає журба.
Знов калина чарує
Мої сонячні дні.
Знов дівчина дарує
Своє серце тобі.

Приспів:
А верба понад водою,
Молодіє наче доля.
Хай завжди мене верба  |
Та й додому поверта.   |(2)

Знов калина чарує
Мої сонячні дні.
Знов дівчина дарує
Своє серце тобі.

Приспів:
А верба понад водою,
Молодіє наче доля.
Хай завжди мене верба  |
Та й додому поверта.   |(n)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_246498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_246498','Верба','Біля млина калина,
Біля ставу верба.
Біля тину дівчина,
Біля серця журба.
Та калина чарівна
І вночі не заснеш.
Та дівчина царівна,
Що чекає тебе.

Приспів:
А верба понад водою,
Наша пісня, наша доля.
Хай завжди мене верба  |
Та й додому поверта.   |(2)

Розквітає калина,
Зеленіє верба.
Твоя пісня прилине
І зникає журба.
Знов калина чарує
Мої сонячні дні.
Знов дівчина дарує
Своє серце тобі.

Приспів:
А верба понад водою,
Молодіє наче доля.
Хай завжди мене верба  |
Та й додому поверта.   |(2)

Знов калина чарує
Мої сонячні дні.
Знов дівчина дарує
Своє серце тобі.

Приспів:
А верба понад водою,
Молодіє наче доля.
Хай завжди мене верба  |
Та й додому поверта.   |(n)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_246498_l1','pisniua_246498','YouTube','https://www.youtube.com/watch?v=PsGj3VqB5fg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_246498_l2','pisniua_246498','YouTube','https://www.youtube.com/watch?v=PyeDFO5OAuU','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_246498_l3','pisniua_246498','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2465614';
DELETE FROM song_versions WHERE song_id = 'pisniua_2465614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2465614';
DELETE FROM songs WHERE id = 'pisniua_2465614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2465614','Плакала калина','Музика: Сергій Нехаєвський Слова: Соломія Українець. Виконує: Сергій Нехаєвський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Плакала калина, з вітром говорила:
- Розпитай по світу, чия тут могила?
Молодий хлопчина, мав він очі сині.
Чи Роман із Львова, чи Тарас з Волині?
Він упав раненько, тільки день зайнявся,
Чула, як тихенько з ненькою прощався.
Хрестик у долоні, на устах молитва,
Смерті слід на скроні залишила битва.
Я йому гілками очі закривала,
За невинну душу Господа благала:
- Отче Наш небесний, дай спасіння сину,
Що в бою загинув, та за Україну.
Пригорнися,  вітре,  до чиєїсь хати,
Де біля ікони на колінах мати.
Ненька, як голубка, рано посивіла,
Без хреста забута у степу могила...
Стеляться тумани, небо зажурилось,
До землі святої гіллям похилилась.
Не роса ранкова - сльози на калині:
- Чи Роман із Львова, чи Тарас з Волині?
Він упав раненько, тільки день зайнявся,
Чула, як тихенько з ненькою прощався.
Хрестик у долоні, на устах молитва,
Смерті слід на скроні залишила битва.
CODA :Em                        Am         H7          Em
Чи Роман... із Львова... чи Тарас... з Волині?','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2465614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2465614','Плакала калина','Плакала калина, з вітром говорила:
- Розпитай по світу, чия тут могила?
Молодий хлопчина, мав він очі сині.
Чи Роман із Львова, чи Тарас з Волині?
Він упав раненько, тільки день зайнявся,
Чула, як тихенько з ненькою прощався.
Хрестик у долоні, на устах молитва,
Смерті слід на скроні залишила битва.
Я йому гілками очі закривала,
За невинну душу Господа благала:
- Отче Наш небесний, дай спасіння сину,
Що в бою загинув, та за Україну.
Пригорнися,  вітре,  до чиєїсь хати,
Де біля ікони на колінах мати.
Ненька, як голубка, рано посивіла,
Без хреста забута у степу могила...
Стеляться тумани, небо зажурилось,
До землі святої гіллям похилилась.
Не роса ранкова - сльози на калині:
- Чи Роман із Львова, чи Тарас з Волині?
Він упав раненько, тільки день зайнявся,
Чула, як тихенько з ненькою прощався.
Хрестик у долоні, на устах молитва,
Смерті слід на скроні залишила битва.
CODA :Em                        Am         H7          Em
Чи Роман... із Львова... чи Тарас... з Волині?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2465614_l1','pisniua_2465614','YouTube','https://www.youtube.com/watch?v=1HyGG3W8Ex8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2465614_l2','pisniua_2465614','YouTube','https://www.youtube.com/watch?v=nr5af1AcveI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2463961';
DELETE FROM song_versions WHERE song_id = 'pisniua_2463961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2463961';
DELETE FROM songs WHERE id = 'pisniua_2463961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2463961','Залишаюсь тут!','Музика: Назар Хассан (ХАС), OMUT Слова: Назар Хассан (ХАС), OMUT','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Автомагістралі розкидали нас по світу,
Не питай, що далі, питай ким стануть діти!
Заковані у клітках! Ілюзія польоту...
Та найсвятіші квіти виростають на болоті!
Не титани ми, і нема неба,
Будуть інші, мабуть, та не ми...
Їм більше треба, та канони розтанули,
І от халепа,
Тільки тепер ти здатен доперти!
Бути відвертим, чи бути стертим!
Вперто йди!
Доля підкоряється впертим!
Спрага покидає там, де висота!
Там, де на дивані експерти,
Живем до ста, бо покидаєм міста!
Та там, де сонце заходить,
До тепла не звикай!
Щоночі тіні зникають,
Уникай!.. Утікай!..
Де би ти не була,
Я надіюсь, не прощаюсь!
Знаєш, де шукати ту хату!

Я залишаюсь тут!.. Тут!.. Тут!..
Де безкрайні поля!
Я залишаюсь тут!.. Тут!.. Тут!..
То ж моя земля!
Залишаюсь!.. Залишаюсь!..
Де безкрайні поля!
Залишаюсь!.. Залишаюсь!..
То є моя земля!..

Дві голови в птаха - це аномалія,
Тризуб - то воля, ми тут до останнього!
Воїни б''ються за кожного мирного,
Бо у серцях їх палає вічний вогонь!
Дух підіймається, а ворог падає,
І засинає дитина під "Градами"!
Рани загояться, пізно чи рано
Знову засяє світанок!

Я залишаюсь тут!..
Залишаюсь тут!..
Я залишаюсь тут!..
Де безкрайні поля!..
Я залишаюсь!..
Де безкрайні поля!..
Я залишаюсь ту-у-ут
То є моя земля!..','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2463961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2463961','Залишаюсь тут!','Автомагістралі розкидали нас по світу,
Не питай, що далі, питай ким стануть діти!
Заковані у клітках! Ілюзія польоту...
Та найсвятіші квіти виростають на болоті!
Не титани ми, і нема неба,
Будуть інші, мабуть, та не ми...
Їм більше треба, та канони розтанули,
І от халепа,
Тільки тепер ти здатен доперти!
Бути відвертим, чи бути стертим!
Вперто йди!
Доля підкоряється впертим!
Спрага покидає там, де висота!
Там, де на дивані експерти,
Живем до ста, бо покидаєм міста!
Та там, де сонце заходить,
До тепла не звикай!
Щоночі тіні зникають,
Уникай!.. Утікай!..
Де би ти не була,
Я надіюсь, не прощаюсь!
Знаєш, де шукати ту хату!

Я залишаюсь тут!.. Тут!.. Тут!..
Де безкрайні поля!
Я залишаюсь тут!.. Тут!.. Тут!..
То ж моя земля!
Залишаюсь!.. Залишаюсь!..
Де безкрайні поля!
Залишаюсь!.. Залишаюсь!..
То є моя земля!..

Дві голови в птаха - це аномалія,
Тризуб - то воля, ми тут до останнього!
Воїни б''ються за кожного мирного,
Бо у серцях їх палає вічний вогонь!
Дух підіймається, а ворог падає,
І засинає дитина під "Градами"!
Рани загояться, пізно чи рано
Знову засяє світанок!

Я залишаюсь тут!..
Залишаюсь тут!..
Я залишаюсь тут!..
Де безкрайні поля!..
Я залишаюсь!..
Де безкрайні поля!..
Я залишаюсь ту-у-ут
То є моя земля!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2463961_l1','pisniua_2463961','YouTube','https://www.youtube.com/watch?v=B8CQUyYORhA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2463961_l2','pisniua_2463961','YouTube','https://www.youtube.com/watch?v=p4Gl-Izg5IM','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2463961_l3','pisniua_2463961','YouTube','https://www.youtube.com/watch?v=aBxv3JDLKp0','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_246550';
DELETE FROM song_versions WHERE song_id = 'pisniua_246550';
DELETE FROM songs_fts WHERE song_id = 'pisniua_246550';
DELETE FROM songs WHERE id = 'pisniua_246550';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_246550','Я сой Циган','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Лемківські співанки. Зібрав і упорядкував М. Соболевський. — К.: Музична Україна, 1967. — 320 с.','Пісня з добірки М.Соболевського: Лемківські співанки Діалектизми: вандрую - мандрую; гадам - говорю, розмовляю; горі - догори; граме - граємо; гушелькы - скрипочка; иду - іду, йду; нич - нічого; ньом - нею; сой - собі; тоту - ту, оту; што - що.','Я сой Циган я нич не мам
Тілько Тоту Циганочку
Што з Ньом гадам

Я сой Циган што вандрую
А як иду горі Селом
Подскакую

Я сой Циган чорний з Лиця
Любит мене Циганочка
Красавиця

Циганочка Моя Мила
Она мене Она вірно
Полюбила

Віз заскрипів Пес забрехав
А до Моєй Циганочки
Сват приїхав

Бо Цигане Добри Люде
Виховали Циганочку
Моя буде

Ми Цигане нич не маме
Лем Гушелькы Смерековы
Тай все граме

Поїдем в світ ген з Вітрами
Будем жыти і вмирати
Циганами','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:vesilni'', ''Лемківські пісні'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_246550'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_246550','Я сой Циган','Я сой Циган я нич не мам
Тілько Тоту Циганочку
Што з Ньом гадам

Я сой Циган што вандрую
А як иду горі Селом
Подскакую

Я сой Циган чорний з Лиця
Любит мене Циганочка
Красавиця

Циганочка Моя Мила
Она мене Она вірно
Полюбила

Віз заскрипів Пес забрехав
А до Моєй Циганочки
Сват приїхав

Бо Цигане Добри Люде
Виховали Циганочку
Моя буде

Ми Цигане нич не маме
Лем Гушелькы Смерековы
Тай все граме

Поїдем в світ ген з Вітрами
Будем жыти і вмирати
Циганами');
DELETE FROM song_links WHERE song_id = 'pisniua_2465379';
DELETE FROM song_versions WHERE song_id = 'pisniua_2465379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2465379';
DELETE FROM songs WHERE id = 'pisniua_2465379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2465379','Кульбаби','Музика: Іван Клименко Слова: Іван Клименко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ми знову все на потім,
На потім, потім,
І поруч пройшов потяг,
А в ньому не ми...
Сховати пустоту
Не допоможе нам одяг,
А може ми забули, як то
Бути людьми... Тож

Приспів:
Цілуй мене і ваби,
Падай зі мною в кульбаби!
Цілого життя нам мало,
Було би два - віддала би!..
Цілуй мене і ваби,
Падай зі мною в кульбаби!
Цілого життя нам мало,
Було би два - віддала би тобі!..

Тікаєм від буденості
Кожен в свої берлоги,
А почуття провини
Ми топимо у вині...
І де наші відверті
Щирі діалоги,
Що нагають нам,
Як то бути людьми?..
А я біля себе посаджу тебе,
Дивитимемось в небо,
Поки не впадем,
А ти давай!

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2465379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2465379','Кульбаби','Ми знову все на потім,
На потім, потім,
І поруч пройшов потяг,
А в ньому не ми...
Сховати пустоту
Не допоможе нам одяг,
А може ми забули, як то
Бути людьми... Тож

Приспів:
Цілуй мене і ваби,
Падай зі мною в кульбаби!
Цілого життя нам мало,
Було би два - віддала би!..
Цілуй мене і ваби,
Падай зі мною в кульбаби!
Цілого життя нам мало,
Було би два - віддала би тобі!..

Тікаєм від буденості
Кожен в свої берлоги,
А почуття провини
Ми топимо у вині...
І де наші відверті
Щирі діалоги,
Що нагають нам,
Як то бути людьми?..
А я біля себе посаджу тебе,
Дивитимемось в небо,
Поки не впадем,
А ти давай!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2465379_l1','pisniua_2465379','YouTube','https://www.youtube.com/watch?v=tOpsGhNHY58','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2465379_l2','pisniua_2465379','YouTube','https://www.youtube.com/watch?v=B6Hg_gEy7iw','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2465890';
DELETE FROM song_versions WHERE song_id = 'pisniua_2465890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2465890';
DELETE FROM songs WHERE id = 'pisniua_2465890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2465890','Жовті мальви','Музика: Сергій Ранов, Андрій Подкалюк Слова: Євген Тріплов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Знаєш, ти знову мене покохаєш,
Як тоді, коли ми жили і не рахували дні.
Зараз нам всім точно не до жартів,
Під звуки арти коло хати
Нас буде довго колихати,
І ніби це не час любити і співати,
І спокій не дарує чай із м''яти,
Та гори аркушів зім''ятих,
Пісень непочутих, відео незнятих.
В той час коли у них кивали п''яти,
А ми продовжуєм стояти!

Приспів:
І розквітали жовті мальви
Під блакитним небом
Серед зими... Серед зими...
Я бачив в тому всі ознаки,
Що у нашім краї зійдемося ми!..
Зійдемось ми!..

Мальви взимку не цвітуть, хай говорять,
І не ввійти в одну річку двічі,
Ми були колись, знову будем поряд,
Тобі не личить печаль на обличчі!..
Мелодії - ліки не тільки, щось більше,
Я тебе листав, як ту книгу Нітцше,
Вона не проста, але ти глибше,
Мені з тобою ліпше!.. Мені з тобою ліпше!..
Ще раз розпочну з чистої сторінки,
І знову розквітуть жовті мальви взимку!
Знову розквітуть жовті мальви взимку!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2465890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2465890','Жовті мальви','Знаєш, ти знову мене покохаєш,
Як тоді, коли ми жили і не рахували дні.
Зараз нам всім точно не до жартів,
Під звуки арти коло хати
Нас буде довго колихати,
І ніби це не час любити і співати,
І спокій не дарує чай із м''яти,
Та гори аркушів зім''ятих,
Пісень непочутих, відео незнятих.
В той час коли у них кивали п''яти,
А ми продовжуєм стояти!

Приспів:
І розквітали жовті мальви
Під блакитним небом
Серед зими... Серед зими...
Я бачив в тому всі ознаки,
Що у нашім краї зійдемося ми!..
Зійдемось ми!..

Мальви взимку не цвітуть, хай говорять,
І не ввійти в одну річку двічі,
Ми були колись, знову будем поряд,
Тобі не личить печаль на обличчі!..
Мелодії - ліки не тільки, щось більше,
Я тебе листав, як ту книгу Нітцше,
Вона не проста, але ти глибше,
Мені з тобою ліпше!.. Мені з тобою ліпше!..
Ще раз розпочну з чистої сторінки,
І знову розквітуть жовті мальви взимку!
Знову розквітуть жовті мальви взимку!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2465890_l1','pisniua_2465890','YouTube','https://www.youtube.com/watch?v=_LZQkDS28aU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2465890_l2','pisniua_2465890','YouTube','https://www.youtube.com/watch?v=osb8QXubZD0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2466717';
DELETE FROM song_versions WHERE song_id = 'pisniua_2466717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2466717';
DELETE FROM songs WHERE id = 'pisniua_2466717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2466717','Сину','Музика: Артем Лоік Слова: Артем Лоік','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Речитатив:
Синок, привіт. Це папа.
Війна скоро закінчиться
І ми побачимось, тільки вір в це!
А поки послухай цю пісню,
Яку я написав. Вона для тебе!
І не забувай слухати маму!
Зрозумів? Все! До зв''язку!

Сину, ти за кордоном, а я зараз тут...
Знаю, тобі боляче, та рани заростуть,
А поки, друже, тримайся і рук не опускай,
Зайди в іншу кімнату, в цій глючить Скайп...
І камеру включи, о, тепер я тебе бачу,
Ну, розповідай, що нового, бусурманчик?
Чому мовчиш? Чому ховаєшся за маму?
Час розриває невидиму ниточку між нами...
Та не порве, чуєш, сину, не порве ніколи!
І ти повернешся додому, де ми знову разом
Замовимо картоплю фрі і "нап''ємся" коли,
Наперекір усім нудним дорослим наказам!
Дістанемо усіх твоїх супергероїв,
Увесь цей час вони стояли за твій дім горою!..
Я розкажу всю правду, бо, сину, брехати - гріх,
Тут були зомбі та не ті, що у тебе в грі...

Приспів:
Ніч несе до твоїх пліч
Два вигнутих крила,
Заточених, як ніж...
Лети до мене!
Ріж ці кілометри, між
Якими пролягла
Наша нескінчена ніч
Від тебе і до мене...

Сину, а що у тебе в школі? Множення?
Ну в цьому, як завжди, лиш мама допоможе нам!
Ти там дивись за нею, захищай і заступайся,
Пробивай прямий тому, хто буде розпускати пальці!
А що там "по дівчатам"? Чого замовк?
Дівчата то ще не найбільші проблеми, синок...
У мене все нормально... Тільки за вами сумую...
І це холодне літо як-небудь перезимую...
Човен правиш ти за мене поки там,
Пам''ятаєш, той, хто більше робить, той і капітан
Справжній... А тому, не бійся праці!..
Щоб путіну було гірше — частіше посміхайся!
Ти вже достатньо знаєш, бо ця війна без "спросу"
Зробила тебе за один день дорослим...
І ти не віриш більше у мої казки,
Що я тобі перед сном читаю щодня...

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2466717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2466717','Сину','Речитатив:
Синок, привіт. Це папа.
Війна скоро закінчиться
І ми побачимось, тільки вір в це!
А поки послухай цю пісню,
Яку я написав. Вона для тебе!
І не забувай слухати маму!
Зрозумів? Все! До зв''язку!

Сину, ти за кордоном, а я зараз тут...
Знаю, тобі боляче, та рани заростуть,
А поки, друже, тримайся і рук не опускай,
Зайди в іншу кімнату, в цій глючить Скайп...
І камеру включи, о, тепер я тебе бачу,
Ну, розповідай, що нового, бусурманчик?
Чому мовчиш? Чому ховаєшся за маму?
Час розриває невидиму ниточку між нами...
Та не порве, чуєш, сину, не порве ніколи!
І ти повернешся додому, де ми знову разом
Замовимо картоплю фрі і "нап''ємся" коли,
Наперекір усім нудним дорослим наказам!
Дістанемо усіх твоїх супергероїв,
Увесь цей час вони стояли за твій дім горою!..
Я розкажу всю правду, бо, сину, брехати - гріх,
Тут були зомбі та не ті, що у тебе в грі...

Приспів:
Ніч несе до твоїх пліч
Два вигнутих крила,
Заточених, як ніж...
Лети до мене!
Ріж ці кілометри, між
Якими пролягла
Наша нескінчена ніч
Від тебе і до мене...

Сину, а що у тебе в школі? Множення?
Ну в цьому, як завжди, лиш мама допоможе нам!
Ти там дивись за нею, захищай і заступайся,
Пробивай прямий тому, хто буде розпускати пальці!
А що там "по дівчатам"? Чого замовк?
Дівчата то ще не найбільші проблеми, синок...
У мене все нормально... Тільки за вами сумую...
І це холодне літо як-небудь перезимую...
Човен правиш ти за мене поки там,
Пам''ятаєш, той, хто більше робить, той і капітан
Справжній... А тому, не бійся праці!..
Щоб путіну було гірше — частіше посміхайся!
Ти вже достатньо знаєш, бо ця війна без "спросу"
Зробила тебе за один день дорослим...
І ти не віриш більше у мої казки,
Що я тобі перед сном читаю щодня...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2466717_l1','pisniua_2466717','YouTube','https://www.youtube.com/watch?v=L2psPlZs5Z8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2466414';
DELETE FROM song_versions WHERE song_id = 'pisniua_2466414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2466414';
DELETE FROM songs WHERE id = 'pisniua_2466414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2466414','Мова Солов''їв','Виконує: Гурт Lastivkava','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Холодним туманом
І прокльонним плачем
Пам''ятаю той лютий світанок,
Що небо розрізав вогнем...
А снились тюльпани
Біля хати навесні,
Але в чорта змінилися плани,
Ми прокинулись на війні...

Приспів:
Стань зі мною в чистім полі
Посеред весни!
Помолись зі мною в горі,
Доки йдуть бої!
І лети на верх, мій сину,
Вище всіх гаїв!
Пам''ятай, що в небі синім
Мова солов''їв!

Земле рідна, ти є тільки моя!
Я не можу знайти собі місця,
Коли в тебе болить душа...
Моя люба, ти на світі така одна,
Я тобі триматиму вірність!
Я з тобою до кінця!

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2466414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2466414','Мова Солов''їв','Холодним туманом
І прокльонним плачем
Пам''ятаю той лютий світанок,
Що небо розрізав вогнем...
А снились тюльпани
Біля хати навесні,
Але в чорта змінилися плани,
Ми прокинулись на війні...

Приспів:
Стань зі мною в чистім полі
Посеред весни!
Помолись зі мною в горі,
Доки йдуть бої!
І лети на верх, мій сину,
Вище всіх гаїв!
Пам''ятай, що в небі синім
Мова солов''їв!

Земле рідна, ти є тільки моя!
Я не можу знайти собі місця,
Коли в тебе болить душа...
Моя люба, ти на світі така одна,
Я тобі триматиму вірність!
Я з тобою до кінця!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2466414_l1','pisniua_2466414','YouTube','https://www.youtube.com/watch?v=35SCn0ilLDw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2466216';
DELETE FROM song_versions WHERE song_id = 'pisniua_2466216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2466216';
DELETE FROM songs WHERE id = 'pisniua_2466216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2466216','Чекає вдома','Музика: А. Вдовиченко, Я. Карпук, К. Медведєва, В. Самолюк Слова: А. Вдовиченко, Я. Карпук, К. Медведєва, В. Самолюк','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Приспів:
Я дожену останнього вагона,     |
Коли вона мене чекає вдома!..   |
Я дотягнусь останнього балкона, |
Коли вона мене чекає вдома!..   | (2)

Дякую, що чекаєш!
Дякую, що ти ждеш!
Подумки обіймаєш
І під подушку кладеш!
Дякую, що ти терпиш!
Дякую, що тремтиш!
Коли не телефоную
Ти плачеш або мовчиш...
Тепліше немає ковдри,
Ніж твої руки...
За кілометр впізнаю
Всі твої рухи!..
Рідніше немає нічого,
Ніж твій погляд!..
Ти дочекайся,
А я уже поряд!..

Приспів.

А я по стінам,
Коли без тебе постійно...
А я по стелі,
Коли без тебе в постелі...
Ми без зупину думаємо
Про обійми, тому біжим
На біле світло у тунелі...
Ми стомлені відстанню,
Шукаємо пристані,
Біжимо розхристанні
На зустріч один одному,
Бо не можем чекать!..

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2466216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2466216','Чекає вдома','Приспів:
Я дожену останнього вагона,     |
Коли вона мене чекає вдома!..   |
Я дотягнусь останнього балкона, |
Коли вона мене чекає вдома!..   | (2)

Дякую, що чекаєш!
Дякую, що ти ждеш!
Подумки обіймаєш
І під подушку кладеш!
Дякую, що ти терпиш!
Дякую, що тремтиш!
Коли не телефоную
Ти плачеш або мовчиш...
Тепліше немає ковдри,
Ніж твої руки...
За кілометр впізнаю
Всі твої рухи!..
Рідніше немає нічого,
Ніж твій погляд!..
Ти дочекайся,
А я уже поряд!..

Приспів.

А я по стінам,
Коли без тебе постійно...
А я по стелі,
Коли без тебе в постелі...
Ми без зупину думаємо
Про обійми, тому біжим
На біле світло у тунелі...
Ми стомлені відстанню,
Шукаємо пристані,
Біжимо розхристанні
На зустріч один одному,
Бо не можем чекать!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2466216_l1','pisniua_2466216','YouTube','https://www.youtube.com/watch?v=ed0aLnuNw_U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2465990';
DELETE FROM song_versions WHERE song_id = 'pisniua_2465990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2465990';
DELETE FROM songs WHERE id = 'pisniua_2465990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2465990','Ностальгія','Музика: Cape Cod Слова: Cape Cod','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Світ стих, квіти на стіл,
Місто пливе,
Сніг сам нас сховав,
Лишив по кімнатах...
Все, що я написав,
Знає зима навіщо нові
І теплі слова...

Якщо вітер свище
За вікном мелодії
Полум''яні і тендітні,
Мов магнолії,
Спинивши час, малює нас
Хвилинами холодних назв
І пише на віях: Ностальгія...

Приспів.

Світ стих, квіти на стіл,
Місто пливе...

Приспів.

Все, що я написав,
Знає зима навіщо нові
І теплі слова...','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2465990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2465990','Ностальгія','Приспів:
Світ стих, квіти на стіл,
Місто пливе,
Сніг сам нас сховав,
Лишив по кімнатах...
Все, що я написав,
Знає зима навіщо нові
І теплі слова...

Якщо вітер свище
За вікном мелодії
Полум''яні і тендітні,
Мов магнолії,
Спинивши час, малює нас
Хвилинами холодних назв
І пише на віях: Ностальгія...

Приспів.

Світ стих, квіти на стіл,
Місто пливе...

Приспів.

Все, що я написав,
Знає зима навіщо нові
І теплі слова...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2465990_l1','pisniua_2465990','YouTube','https://www.youtube.com/watch?v=NrUKNj_jjL8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_24665';
DELETE FROM song_versions WHERE song_id = 'pisniua_24665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_24665';
DELETE FROM songs WHERE id = 'pisniua_24665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_24665','Тиха ніч, свята ніч!','Музика: Franz X. Gruber Слова: Fr. Joseph Mohr','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Тиха ніч, свята ніч!
Ясність б''є від зірниць.
Дитинонька Пресвята,
Така ясна, мов зоря,
Спочиває в тихім сні.

Тиха ніч, свята ніч!
Ой, зітри сльози з віч,
Бо Син Божий йде до нас,
Цілий світ любов''ю спас,
Вітай нам, святе Дитя!

Свята ніч настає,
Ясний блиск з неба б''є,
В людськім тілі Божий Син
Прийшо нині в Вифлеєм
Щоб спасти цілий світ.

Тиха ніч, свята ніч!
Зірка сяє ясна,
Потішає серця,
Величає Христа.
Дитя святе, як зоря,
Нам світи, зоря ясна!    мелодія для хору (чотириголосся)','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''Пісні на християнську тематику'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_24665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_24665','Тиха ніч, свята ніч!','Тиха ніч, свята ніч!
Ясність б''є від зірниць.
Дитинонька Пресвята,
Така ясна, мов зоря,
Спочиває в тихім сні.

Тиха ніч, свята ніч!
Ой, зітри сльози з віч,
Бо Син Божий йде до нас,
Цілий світ любов''ю спас,
Вітай нам, святе Дитя!

Свята ніч настає,
Ясний блиск з неба б''є,
В людськім тілі Божий Син
Прийшо нині в Вифлеєм
Щоб спасти цілий світ.

Тиха ніч, свята ніч!
Зірка сяє ясна,
Потішає серця,
Величає Христа.
Дитя святе, як зоря,
Нам світи, зоря ясна!    мелодія для хору (чотириголосся)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24665_l1','pisniua_24665','YouTube','https://www.youtube.com/watch?v=uopqocK7a0o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24665_l2','pisniua_24665','YouTube','https://www.youtube.com/watch?v=G5E9vC1lhno','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24665_l3','pisniua_24665','YouTube','https://www.youtube.com/watch?v=TOfzeFEVzto','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24665_l4','pisniua_24665','YouTube','https://www.youtube.com/watch?v=I_taBkNvS2k','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24665_l5','pisniua_24665','YouTube','https://www.youtube.com/watch?v=E7UfgVY6p10','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24665_l6','pisniua_24665','YouTube','https://www.youtube.com/watch?v=DCTJrlrwOKE','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24665_l7','pisniua_24665','YouTube','https://www.youtube.com/watch?v=cAb5LDdxnoU','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24665_l8','pisniua_24665','YouTube','https://www.youtube.com/watch?v=oZSpNXLJs6c','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24665_l9','pisniua_24665','YouTube','https://www.youtube.com/watch?v=dHFwjPSWb3Q','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24665_l10','pisniua_24665','YouTube','https://www.youtube.com/watch?v=H9f3WXbDqeg','video',NULL,10);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24665_l11','pisniua_24665','YouTube','https://www.youtube.com/watch?v=tFjw6WTcvvE','video',NULL,11);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24665_l12','pisniua_24665','YouTube','https://www.youtube.com/watch?v=qLPUh7JY_YI','video',NULL,12);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24665_l13','pisniua_24665','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,13);
DELETE FROM song_links WHERE song_id = 'pisniua_2466797';
DELETE FROM song_versions WHERE song_id = 'pisniua_2466797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2466797';
DELETE FROM songs WHERE id = 'pisniua_2466797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2466797','У печері','Музика: Василь Лисенко Слова: Галина Лисенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У печері лагідно свічечка горить,
На руках у матінки там дитятко спить,
Тихо сяють зірочки в синіх небесах,
Спить дитятко Божеє в мами на руках...

Пастухи з ягнятками до печери йдуть,
Мудреці дитяткові всі дари несуть,
Янголи з''явилися - радість в небесах,
Колихає матінка Сина на руках...

Слава, Слава, Боже наш! Мир по всій землі!
Славте, славте Бога дорослі і малі!
Божий Син родився, щоб спасіння дать,
Щоб в серцях вселилися мир і благодать!..
Щоб в серцях вселилися мир і благодать!..','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2466797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2466797','У печері','У печері лагідно свічечка горить,
На руках у матінки там дитятко спить,
Тихо сяють зірочки в синіх небесах,
Спить дитятко Божеє в мами на руках...

Пастухи з ягнятками до печери йдуть,
Мудреці дитяткові всі дари несуть,
Янголи з''явилися - радість в небесах,
Колихає матінка Сина на руках...

Слава, Слава, Боже наш! Мир по всій землі!
Славте, славте Бога дорослі і малі!
Божий Син родився, щоб спасіння дать,
Щоб в серцях вселилися мир і благодать!..
Щоб в серцях вселилися мир і благодать!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2466797_l1','pisniua_2466797','YouTube','https://www.youtube.com/watch?v=7gm_KGY2iHM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2466899';
DELETE FROM song_versions WHERE song_id = 'pisniua_2466899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2466899';
DELETE FROM songs WHERE id = 'pisniua_2466899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2466899','Бахмут','Музика: Дмитро Осичнюк Слова: Дмитро Осичнюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Dm
Бах, бах! Голосно в Бахмуті!
Am
Мій страх - ніщо проти духу тих,
Хто на рубежі у камуфляжі!..
Голосно, так голосно,
Так давно не було тиші...
Думаєш собі: А чи буває гірше?
Повітря із пороху - ріж ножем,
Ножі у повітрі - не втечеш...
А кулі горизонтальним дощем,
Від куль не ховаються під плащем.
Запеклих вогонь не пече!
Спирайся на моє плече!
Скільки було неспокійних ночей,
Та ця не остання - будуть іще.
За наше тепло - темрява, холод...
За сите життя - іноді голод...
За те, щоби знову ніколи,
Зламати замкнене коло!
Приспів. (2)
В добру путь!
Далі нулів не пошлють.
У добрий час
Ніхто крім нас! Ніхто крім нас!
Колись розсіються тумани
І сонечко над нами залікує рани,
Сховає під засмагу шрами,
Ноги мокрі, а серце гаряче,
І насипали сьогодні добряче,
Світанок настане!
Бахмут тримають титани!
Приспів. (2)','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2466899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2466899','Бахмут','Приспів:
Dm
Бах, бах! Голосно в Бахмуті!
Am
Мій страх - ніщо проти духу тих,
Хто на рубежі у камуфляжі!..
Голосно, так голосно,
Так давно не було тиші...
Думаєш собі: А чи буває гірше?
Повітря із пороху - ріж ножем,
Ножі у повітрі - не втечеш...
А кулі горизонтальним дощем,
Від куль не ховаються під плащем.
Запеклих вогонь не пече!
Спирайся на моє плече!
Скільки було неспокійних ночей,
Та ця не остання - будуть іще.
За наше тепло - темрява, холод...
За сите життя - іноді голод...
За те, щоби знову ніколи,
Зламати замкнене коло!
Приспів. (2)
В добру путь!
Далі нулів не пошлють.
У добрий час
Ніхто крім нас! Ніхто крім нас!
Колись розсіються тумани
І сонечко над нами залікує рани,
Сховає під засмагу шрами,
Ноги мокрі, а серце гаряче,
І насипали сьогодні добряче,
Світанок настане!
Бахмут тримають титани!
Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2466899_l1','pisniua_2466899','YouTube','https://www.youtube.com/watch?v=7AYy77bxaB0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2466550';
DELETE FROM song_versions WHERE song_id = 'pisniua_2466550';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2466550';
DELETE FROM songs WHERE id = 'pisniua_2466550';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2466550','Там во Бахмуті','Музика: Олег Вітвіцький Слова: Олег Вітвіцький','uk','ukraine_1991',NULL,NULL,'аудіозапис','Співають: Отець Олексій Філюк, родини Гребеняків, Парносових та "Великодні зернятка", Юля і Святослав Стасишини, Олег та Настя Вітвіцькі','Там во Бахмуті,
Де стріли чути,
Де стільки цвіту
Вже полягло...
Враз тихо стало     |
І залунало:         |
Христос Родився!    |
Славімо Його!       | (2)

Донецька нічка,
Окопна свічка,
І ворогам всім
Лютим на зло, -
Стали солдати       |
Колядувати:         |
Христос Родився!    |
Славімо Його!       | (2)

Під Гуляй Полем
Кутя на столі,
Звіздою небо
Там зацвіло,
Вітер у степу       |
Водить вертепи:     |
Христос Родився!    |
Славімо Його!       | (2)

В місті Марії
Промінь надії
Десь над Азовом
В небо звело,
Там нас чекають,    |
Тихо співають:      |
Христос Родився!    |
Славімо Його!       | (2)

Під замком львівським,
На Личаківськім,
Лицарів військо
Спокій знайшло...
Ми ж до Героїв      |
Із колядою:         |
Христос Родився!    |
Славімо Його!       | (2)

В древньому Римі
Петрик із Криму
Разом зі світом
Славить Різдво!
Юля з Луганська,    |
Настя з Бердянська: |
Христос Родився!    |
Славімо Його!       | (2)

А в Тернополі
Маленька Оля
З фронту чекає
Татка свого.
Ручки складає,      |
Слізки втирає:      |
Христос Родився!    |
Славімо Його!       | (2)

Наша родина -
Вся Україна,
І Збройні сили,
І ТРО,
Під Божим стягом    |
Йдем до звитяги!    |
Христос Родився!    |
Славімо Його!       | (2)','[''pisni.org.ua'', ''cat:ato'', ''cat:christian'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні на християнську тематику'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2466550'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2466550','Там во Бахмуті','Там во Бахмуті,
Де стріли чути,
Де стільки цвіту
Вже полягло...
Враз тихо стало     |
І залунало:         |
Христос Родився!    |
Славімо Його!       | (2)

Донецька нічка,
Окопна свічка,
І ворогам всім
Лютим на зло, -
Стали солдати       |
Колядувати:         |
Христос Родився!    |
Славімо Його!       | (2)

Під Гуляй Полем
Кутя на столі,
Звіздою небо
Там зацвіло,
Вітер у степу       |
Водить вертепи:     |
Христос Родився!    |
Славімо Його!       | (2)

В місті Марії
Промінь надії
Десь над Азовом
В небо звело,
Там нас чекають,    |
Тихо співають:      |
Христос Родився!    |
Славімо Його!       | (2)

Під замком львівським,
На Личаківськім,
Лицарів військо
Спокій знайшло...
Ми ж до Героїв      |
Із колядою:         |
Христос Родився!    |
Славімо Його!       | (2)

В древньому Римі
Петрик із Криму
Разом зі світом
Славить Різдво!
Юля з Луганська,    |
Настя з Бердянська: |
Христос Родився!    |
Славімо Його!       | (2)

А в Тернополі
Маленька Оля
З фронту чекає
Татка свого.
Ручки складає,      |
Слізки втирає:      |
Христос Родився!    |
Славімо Його!       | (2)

Наша родина -
Вся Україна,
І Збройні сили,
І ТРО,
Під Божим стягом    |
Йдем до звитяги!    |
Христос Родився!    |
Славімо Його!       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2466550_l1','pisniua_2466550','YouTube','https://www.youtube.com/watch?v=xfH_A83HxI8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2466550_l2','pisniua_2466550','YouTube','https://www.youtube.com/watch?v=Noo6tfr2KL4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2466550_l3','pisniua_2466550','YouTube','https://www.youtube.com/watch?v=85z_QJ-93QU','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2466550_l4','pisniua_2466550','YouTube','https://www.youtube.com/watch?v=QUno9Z2YuvM','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_2467096';
DELETE FROM song_versions WHERE song_id = 'pisniua_2467096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2467096';
DELETE FROM songs WHERE id = 'pisniua_2467096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2467096','Мої пацани','Музика: Не Ждали Слова: Не Ждали','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Одна на двох
Цигарка скурена й не раз,
Один на всіх
Ми тут виконуєм наказ!
Міцне плече,
Котре підтримає завжди,
І навзаєм,
Куди б не довелося йти...

Приспів:
Мої пацани
Братами стали вже вони!
Мої пацани,
Пліч-о-пліч, спина до спини!
Мої пацани,
Що поруч б''ються за життя!
Мої пацани,
Мої ви - браття!

Як на броні
Мотору в серці відбиття,
Ми знаєм, це
Не просто дружба, це життя!
І кава теж
З одної кружки і чайок.
Кровать - окоп,
І каски замість подушок...

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2467096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2467096','Мої пацани','Одна на двох
Цигарка скурена й не раз,
Один на всіх
Ми тут виконуєм наказ!
Міцне плече,
Котре підтримає завжди,
І навзаєм,
Куди б не довелося йти...

Приспів:
Мої пацани
Братами стали вже вони!
Мої пацани,
Пліч-о-пліч, спина до спини!
Мої пацани,
Що поруч б''ються за життя!
Мої пацани,
Мої ви - браття!

Як на броні
Мотору в серці відбиття,
Ми знаєм, це
Не просто дружба, це життя!
І кава теж
З одної кружки і чайок.
Кровать - окоп,
І каски замість подушок...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2467096_l1','pisniua_2467096','YouTube','https://www.youtube.com/watch?v=9JbQkNNFazo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2467756';
DELETE FROM song_versions WHERE song_id = 'pisniua_2467756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2467756';
DELETE FROM songs WHERE id = 'pisniua_2467756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2467756','Доні','Музика: MBreeze, TrueStory Слова: MBreeze, TrueStory','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Доню, ти, спи, спи солодко,
Скажеш потім, як у своїм сні
Бачила дім, там, як завжди
Рідні були всі!
А за вікном грім втече і знов
Розквітне вся наша земля!

Тату, тату, мені страшно!
Почалась війна?..
Ні, мала, не бійся!
То гримить гроза.
Мама бабушці сказала,
Що понам летить.
Знаєш нашу маму,
Вона завжди тремтить.
Пішли додому, я замерзла,
Це погана гра.
Донь, заплющи очі,
Тобі спать пора.
Я не можу спати,
Поки грім гримить.
Зараз все затихне,
Ще чекаєм мить...
Тату, я закрила очі,
Де вже мій сюрприз?..
Ні, моя мала красуне,
Подивись ще вниз.
Тату, я не хочу їхать!
Де будеш ти?
Ми з твоїм хрещеним батьком
Повинні помогти!
Мама нам сьогодні каже,
Що на фронті ти.
Як завжди вона жартує,
Чи не бачиш ти?..
Мені вчора і сьогодні
Снились страшні сни...
Мила, скоро повернуся,
Обійму вночі!..

Спи, спи солодко,
Скажеш потім, як у своїм сні
Бачила дім, там, як завжди
Рідні були всі!
А за вікном грім втече і знов
Розквітне вся наша земля!
Доню, ти, спи, спи солодко,
Скажеш потім, як у своїм сні
Бачила дім, там, як завжди
Рідні були всі!
А за вікном грім втече і знов
Розквітне вся наша земля!','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:pro-ditey'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні про любов до дітей'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2467756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2467756','Доні','Доню, ти, спи, спи солодко,
Скажеш потім, як у своїм сні
Бачила дім, там, як завжди
Рідні були всі!
А за вікном грім втече і знов
Розквітне вся наша земля!

Тату, тату, мені страшно!
Почалась війна?..
Ні, мала, не бійся!
То гримить гроза.
Мама бабушці сказала,
Що понам летить.
Знаєш нашу маму,
Вона завжди тремтить.
Пішли додому, я замерзла,
Це погана гра.
Донь, заплющи очі,
Тобі спать пора.
Я не можу спати,
Поки грім гримить.
Зараз все затихне,
Ще чекаєм мить...
Тату, я закрила очі,
Де вже мій сюрприз?..
Ні, моя мала красуне,
Подивись ще вниз.
Тату, я не хочу їхать!
Де будеш ти?
Ми з твоїм хрещеним батьком
Повинні помогти!
Мама нам сьогодні каже,
Що на фронті ти.
Як завжди вона жартує,
Чи не бачиш ти?..
Мені вчора і сьогодні
Снились страшні сни...
Мила, скоро повернуся,
Обійму вночі!..

Спи, спи солодко,
Скажеш потім, як у своїм сні
Бачила дім, там, як завжди
Рідні були всі!
А за вікном грім втече і знов
Розквітне вся наша земля!
Доню, ти, спи, спи солодко,
Скажеш потім, як у своїм сні
Бачила дім, там, як завжди
Рідні були всі!
А за вікном грім втече і знов
Розквітне вся наша земля!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2467756_l1','pisniua_2467756','YouTube','https://www.youtube.com/watch?v=W377a_F2o7Y','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2467114';
DELETE FROM song_versions WHERE song_id = 'pisniua_2467114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2467114';
DELETE FROM songs WHERE id = 'pisniua_2467114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2467114','Волонтер','Музика: Не Ждали Слова: Не Ждали','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Робота, як робота, ніби що ж тут такого?..
Крім того що у неї немає вихідного,
Нема ні дня, ні ночі, ні вечора, ні ранку,
І каву на ходу попити замість сніданку...
Телефон не замовкає зовсім і відверто,
Не важлива відстань - кілька сот кілометрів,
Коли потрібна допомога будь-якій людині,
Вивезуть під пострілами на своїй машині!
Кажуть мудрі люди: З миру голка й нитка -
Бідному сорочка ще і маскувальна сітка!
І їжаків наварять протитанкових, як треба,
Блок-пост організують на дорозі просто неба!
Розгрузки, балаклави строчать швейні машини,
Печуть, колотять, варять, жарять по всій Україні!
Усе вони дістануть і гроші знайдуть,
Тому що там чекають, там їх ждуть!

Приспів:
І хто б ти не був, юрист, водій чи інженер,
Вчитель чи програміст, ти - український волонтер!
Хто ти по життю, спортсмен чи пенсіонер,
Домохазяйка чи блогер, ти - український волонтер!
Ти - український волонтер!

І забезпечать ліками майже ціле місто,
Це просто активісти, а не діти замміністрів.
І сітки маскувальні в''яжуть саме справжні леді,
І їжу для стареньких везуть на велосипеді.
Броніки  дістануть і каски віднайдуть,
Хлопцям на блок пост борщику привезуть!
І люди це прості, звичайні тьоті і дяді,
А пиріжки для ЗСУ пече баба Надя!
Розгрузки, балаклави строчать швейні машини,
Печуть, колотять, варять, жарять по всій Україні!
То ж, воїн на передовій, зустрічай гостинець,
Бо зараз волонтером став кожний українець!

Приспів.

Розгрузки, балаклави строчать швейні машини,
Печуть, колотять, варять, жарять по всій Україні!
То ж, воїн на передовій, зустрічай гостинець,
Бо зараз волонтером став кожний українець!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2467114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2467114','Волонтер','Робота, як робота, ніби що ж тут такого?..
Крім того що у неї немає вихідного,
Нема ні дня, ні ночі, ні вечора, ні ранку,
І каву на ходу попити замість сніданку...
Телефон не замовкає зовсім і відверто,
Не важлива відстань - кілька сот кілометрів,
Коли потрібна допомога будь-якій людині,
Вивезуть під пострілами на своїй машині!
Кажуть мудрі люди: З миру голка й нитка -
Бідному сорочка ще і маскувальна сітка!
І їжаків наварять протитанкових, як треба,
Блок-пост організують на дорозі просто неба!
Розгрузки, балаклави строчать швейні машини,
Печуть, колотять, варять, жарять по всій Україні!
Усе вони дістануть і гроші знайдуть,
Тому що там чекають, там їх ждуть!

Приспів:
І хто б ти не був, юрист, водій чи інженер,
Вчитель чи програміст, ти - український волонтер!
Хто ти по життю, спортсмен чи пенсіонер,
Домохазяйка чи блогер, ти - український волонтер!
Ти - український волонтер!

І забезпечать ліками майже ціле місто,
Це просто активісти, а не діти замміністрів.
І сітки маскувальні в''яжуть саме справжні леді,
І їжу для стареньких везуть на велосипеді.
Броніки  дістануть і каски віднайдуть,
Хлопцям на блок пост борщику привезуть!
І люди це прості, звичайні тьоті і дяді,
А пиріжки для ЗСУ пече баба Надя!
Розгрузки, балаклави строчать швейні машини,
Печуть, колотять, варять, жарять по всій Україні!
То ж, воїн на передовій, зустрічай гостинець,
Бо зараз волонтером став кожний українець!

Приспів.

Розгрузки, балаклави строчать швейні машини,
Печуть, колотять, варять, жарять по всій Україні!
То ж, воїн на передовій, зустрічай гостинець,
Бо зараз волонтером став кожний українець!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2467114_l1','pisniua_2467114','YouTube','https://www.youtube.com/watch?v=7icsKSAbrHI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2467694';
DELETE FROM song_versions WHERE song_id = 'pisniua_2467694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2467694';
DELETE FROM songs WHERE id = 'pisniua_2467694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2467694','Встань же, милий друже','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис',NULL,'Встань же, милий друже,
Стало вже світати!
Підем до Вифлеєма,      |
Ісуса витати!           | (2)

Ісуса витати
І Його благати,
Щоб ізволив Україні     |
Кращу долю дати!        | (2)

Кращу долю дати,
Щоб всміхнулась мати,
Щоб зраділа вся землиця |
І Київ столиця!         | (2)

Нехай волі дзвони
Софії заграють,
І разом з нами люди     |
Всі Христа витають!     | (2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2467694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2467694','Встань же, милий друже','Встань же, милий друже,
Стало вже світати!
Підем до Вифлеєма,      |
Ісуса витати!           | (2)

Ісуса витати
І Його благати,
Щоб ізволив Україні     |
Кращу долю дати!        | (2)

Кращу долю дати,
Щоб всміхнулась мати,
Щоб зраділа вся землиця |
І Київ столиця!         | (2)

Нехай волі дзвони
Софії заграють,
І разом з нами люди     |
Всі Христа витають!     | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2467694_l1','pisniua_2467694','YouTube','https://www.youtube.com/watch?v=jINE59SESuQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2467869';
DELETE FROM song_versions WHERE song_id = 'pisniua_2467869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2467869';
DELETE FROM songs WHERE id = 'pisniua_2467869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2467869','Last Christmas','Музика: George Michael Слова: George Michael, Юрій Николайчук. Виконує: Любомир Тарнавський, Юрій Николайчук','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Сніг навколо і веселий сміх,
Нагадали нам, що прийшов Новий рік,
Щастя увірветься в наш дім,
В Новорічний вечір - буде весело всім.
Радість всіх зігріє теплом,
І у кожній душі буде щастя й добро,
Свято - вже прийшов Новий рік,
Хай кохання завжди буде з вами навік!

Приспів:
Last Chrіstmas, I gave you my heart,
But the very next day, you gave іt away,
Thіs year, to save me from tears,
I ll gіve іt to someone specіal.

Пісня об''єднає всіх нас,
У цей радісний вечір, в Новорічний час,
Кульки і ялинка й вогні,
Ми зібрались всі разом, ми співаєм пісні.
Друзі, подарунки для всіх,
І лунає в цей день всюди радісний сміх,
Щастя хай прилине до вас,
В цю чарівну ніч, в Новорічний час!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2467869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2467869','Last Christmas','Сніг навколо і веселий сміх,
Нагадали нам, що прийшов Новий рік,
Щастя увірветься в наш дім,
В Новорічний вечір - буде весело всім.
Радість всіх зігріє теплом,
І у кожній душі буде щастя й добро,
Свято - вже прийшов Новий рік,
Хай кохання завжди буде з вами навік!

Приспів:
Last Chrіstmas, I gave you my heart,
But the very next day, you gave іt away,
Thіs year, to save me from tears,
I ll gіve іt to someone specіal.

Пісня об''єднає всіх нас,
У цей радісний вечір, в Новорічний час,
Кульки і ялинка й вогні,
Ми зібрались всі разом, ми співаєм пісні.
Друзі, подарунки для всіх,
І лунає в цей день всюди радісний сміх,
Щастя хай прилине до вас,
В цю чарівну ніч, в Новорічний час!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_246859';
DELETE FROM song_versions WHERE song_id = 'pisniua_246859';
DELETE FROM songs_fts WHERE song_id = 'pisniua_246859';
DELETE FROM songs WHERE id = 'pisniua_246859';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_246859','І як тепер','Музика: Ольга Богомолець Слова: Ліна Костенко. Виконує: Ольга Богомолець','uk','ukraine_1991',NULL,NULL,NULL,NULL,'І як тепер тебе забути?
Душа до краю добрела.
Такої дивної отрути
Я ще ніколи не пила

Такої чистої печалі,
Такої спраглої жаги,
Такого зойку у мовчанні,
Такого сяйва навкруги.

Такої зоряної тиші.
Такого безміру в добі!..
Це, може, навіть і не пісня,
А квіти, кинуті тобі,
А квіти, кинуті тобі...

І як тепер тебе забути?
Душа до краю добрела.
Такої дивної отрути
Я ще ніколи не пила,
Я ще ніколи не пила...','[''pisni.org.ua'', ''cat:bardivski'', ''cat:romansy'', ''Бардівські пісні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_246859'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_246859','І як тепер','І як тепер тебе забути?
Душа до краю добрела.
Такої дивної отрути
Я ще ніколи не пила

Такої чистої печалі,
Такої спраглої жаги,
Такого зойку у мовчанні,
Такого сяйва навкруги.

Такої зоряної тиші.
Такого безміру в добі!..
Це, може, навіть і не пісня,
А квіти, кинуті тобі,
А квіти, кинуті тобі...

І як тепер тебе забути?
Душа до краю добрела.
Такої дивної отрути
Я ще ніколи не пила,
Я ще ніколи не пила...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_246859_l1','pisniua_246859','YouTube','https://www.youtube.com/watch?v=XbeZCg07OnE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_246859_l2','pisniua_246859','YouTube','https://www.youtube.com/watch?v=2Urm0JJkIHc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_246859_l3','pisniua_246859','YouTube','https://www.youtube.com/watch?v=-zMu4tULAwY','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_246717';
DELETE FROM song_versions WHERE song_id = 'pisniua_246717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_246717';
DELETE FROM songs WHERE id = 'pisniua_246717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_246717','А музики грають від душі!','Музика: Євген Шантир Слова: Євген Шантир','uk','ukraine_before_1917',NULL,NULL,NULL,'Збірка пісень "КОРАБЛИК"','Ось і вечір в місті й на селі,
Хлопці зустрічаються й дівчата,
І бажають всі, щоб у житті,
Доля посміхалася крилата.
Приспів:
А музики грають від душі,
Про кохання весело співають,
І танцюють хлопці молоді
І дівчата з ними розцвітають.
Стеляться дороги молодим
І поважно парубки гуляють,
Їм дівчата поглядом стрімким
На любов палку відповідають.
Приспів.
Над Землею небеса одні,
Хай усім щаслива зірка сяє,
Цілуватись з хлопцем, чи ще ні,
Дівчина, кохаючи, гадає.
Приспів.
Хлопці і дівчата, як весна,
Почуття в серцях ваших знялися,
Буде знати все лише Луна,
Коли ви по парам розійшлися.
Приспів.','[''pisni.org.ua'', ''cat:all-ukraine'', ''cat:bardivski'', ''cat:romansy'', ''cat:socialno-pobutovi'', ''cat:vesilni'', ''cat:zahalni-cinnosti'', ''Загальноукраїнські пісні'', ''Бардівські пісні'', ''Романси'', ''Соціально-побутові пісні'', ''Весільні пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_246717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_246717','А музики грають від душі!','Ось і вечір в місті й на селі,
Хлопці зустрічаються й дівчата,
І бажають всі, щоб у житті,
Доля посміхалася крилата.
Приспів:
А музики грають від душі,
Про кохання весело співають,
І танцюють хлопці молоді
І дівчата з ними розцвітають.
Стеляться дороги молодим
І поважно парубки гуляють,
Їм дівчата поглядом стрімким
На любов палку відповідають.
Приспів.
Над Землею небеса одні,
Хай усім щаслива зірка сяє,
Цілуватись з хлопцем, чи ще ні,
Дівчина, кохаючи, гадає.
Приспів.
Хлопці і дівчата, як весна,
Почуття в серцях ваших знялися,
Буде знати все лише Луна,
Коли ви по парам розійшлися.
Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2467328';
DELETE FROM song_versions WHERE song_id = 'pisniua_2467328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2467328';
DELETE FROM songs WHERE id = 'pisniua_2467328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2467328','Маніфест','(Жовто-блакитне серце). Музика: Артем Пивоваров Слова: Артем Пивоваров','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'I am Ukraіne! I am Ukraіne!

Вірність гідності,
Вірність стійкості,
Від незламності
І до ніжності.
Це сміливості, наші якості,
Особливості нашої нації!
Мудрість пращурів,
Чуйність матерів,
Від нащадків всіх
І до наших днів.
Розквітай мій дім,
Розквітай мій рід.
Лети! Лети! По світу лети!..

Жовто-блакитне серце
І плаче, і сміється!
Жовто-блакитне серце
Ніколи не здається!
В кожній новій надії
Там є моя надія,
Допоки серце б''ється,
Моя країна б''ється!

I am Ukraіne! I am Ukraіne! | (6)','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2467328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2467328','Маніфест','I am Ukraіne! I am Ukraіne!

Вірність гідності,
Вірність стійкості,
Від незламності
І до ніжності.
Це сміливості, наші якості,
Особливості нашої нації!
Мудрість пращурів,
Чуйність матерів,
Від нащадків всіх
І до наших днів.
Розквітай мій дім,
Розквітай мій рід.
Лети! Лети! По світу лети!..

Жовто-блакитне серце
І плаче, і сміється!
Жовто-блакитне серце
Ніколи не здається!
В кожній новій надії
Там є моя надія,
Допоки серце б''ється,
Моя країна б''ється!

I am Ukraіne! I am Ukraіne! | (6)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2467328_l1','pisniua_2467328','YouTube','https://www.youtube.com/watch?v=lgjiBeFqlsQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2467328_l2','pisniua_2467328','YouTube','https://www.youtube.com/watch?v=EVzt3mDgCxo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2467328_l3','pisniua_2467328','YouTube','https://www.youtube.com/watch?v=O2D5Uc-iNP0','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2468890';
DELETE FROM song_versions WHERE song_id = 'pisniua_2468890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2468890';
DELETE FROM songs WHERE id = 'pisniua_2468890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2468890','Молитва солдата','Музика: BURLA Слова: BURLA','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Обов''язково повернусь! Мамо, я клянусь!         |
Обійму ніжно й посміхнусь, я ж за тебе б''юсь!   |
Доки з Каспійського моря летить двухсотий груз, |
Я буду битись за своє, як бився дідусь!..       | (2)

Знаю, де горе іде і де горить горище,
Я вірю в краще і в цій вірі є сили повище!
І вже, на жаль, Шевченко про це не напише...
Візьму на себе фланг і знову
Загудуть хрущі над вишнями...
Віра в Всевишнього, коли прийде біда,
Бандура ніжно шепче і плаче струна...
В підтримку воїнів від імені кіборгів
Полинуть сильні слова від тих, кого слухав, знав...
В перші дні, як ми приїхали, відчув злість,
Душили, рвали їх, із ста залишили шість...
Розлучивши нас із сім''ями, вбивши дітей,
Лупи із стугни, брат, не рахуй за людей!..
Сиджу в окопі і читаю всі думки братів,
Хто за сім''ю, хто за кохану, а хто що не вспів...
Бажання тільки знову побачить дітей,
Але я вистою за них, за наших людей!..

Приспів.

Секунда, свист, лежу, піддавлює в голові,
Долоні в крові і іще наче живий...
Турнікет, турнікет і під обстріл ракет,
Втрачаю брата на очах і тяну в кювет...
Віриш-не-віриш, тільки там просиш підтримку в Бога,
Ми всі там будем, але в кожного різна дорога...
І в тих полях я залишив частину душі,
Залишив себе, Бурла, так і пиши...
Повернувшись, не міг звикнути, як ходять люди,
Так невзначай кофейок, мальовані губи,
Для них війна - слова, але я розумію,
Війна - це діло тих, хто вмів і вміло уміє!..
Цю розповідь заримував для вас, відчуйте, люди!
І ці слова від тих, хто був там і вижили чудом!..
Війна - це шрам і він в душі, і він не зажив...
Словами важко пояснити тим, хто не пережив...','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2468890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2468890','Молитва солдата','Приспів:
Обов''язково повернусь! Мамо, я клянусь!         |
Обійму ніжно й посміхнусь, я ж за тебе б''юсь!   |
Доки з Каспійського моря летить двухсотий груз, |
Я буду битись за своє, як бився дідусь!..       | (2)

Знаю, де горе іде і де горить горище,
Я вірю в краще і в цій вірі є сили повище!
І вже, на жаль, Шевченко про це не напише...
Візьму на себе фланг і знову
Загудуть хрущі над вишнями...
Віра в Всевишнього, коли прийде біда,
Бандура ніжно шепче і плаче струна...
В підтримку воїнів від імені кіборгів
Полинуть сильні слова від тих, кого слухав, знав...
В перші дні, як ми приїхали, відчув злість,
Душили, рвали їх, із ста залишили шість...
Розлучивши нас із сім''ями, вбивши дітей,
Лупи із стугни, брат, не рахуй за людей!..
Сиджу в окопі і читаю всі думки братів,
Хто за сім''ю, хто за кохану, а хто що не вспів...
Бажання тільки знову побачить дітей,
Але я вистою за них, за наших людей!..

Приспів.

Секунда, свист, лежу, піддавлює в голові,
Долоні в крові і іще наче живий...
Турнікет, турнікет і під обстріл ракет,
Втрачаю брата на очах і тяну в кювет...
Віриш-не-віриш, тільки там просиш підтримку в Бога,
Ми всі там будем, але в кожного різна дорога...
І в тих полях я залишив частину душі,
Залишив себе, Бурла, так і пиши...
Повернувшись, не міг звикнути, як ходять люди,
Так невзначай кофейок, мальовані губи,
Для них війна - слова, але я розумію,
Війна - це діло тих, хто вмів і вміло уміє!..
Цю розповідь заримував для вас, відчуйте, люди!
І ці слова від тих, хто був там і вижили чудом!..
Війна - це шрам і він в душі, і він не зажив...
Словами важко пояснити тим, хто не пережив...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468890_l1','pisniua_2468890','YouTube','https://www.youtube.com/watch?v=ppQsVcs3ThU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2467471';
DELETE FROM song_versions WHERE song_id = 'pisniua_2467471';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2467471';
DELETE FROM songs WHERE id = 'pisniua_2467471';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2467471','Святкує Вкраїна, хоч в серці тривога','Слова: о. Петро Половко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Святкує Вкраїна, хоч в серці тривога,
Різдво в Вифлеємі, Різдво в Вифлеємі     |
Предвічного Бога.                        | (2)

Ослятко зігріло Його рученята,
В дітей українських, в дітей українських |
Сумні оченята...                         | (2)

Втікає родина в Єгипет-чужину,
Лишають родини, лишають родини           |
Свою Україну...                          | (2)

Співають колядки в далекому краю,
Ісусе маленький, Ісусе маленький,        |
Тебе всі благають:                       | (2)

Дай сили здолати нам Ірода нині,
Дай нам перемогу, дай нам перемогу       |
І мир в Україні!..                       | (2)

Хай дзвони Софії увесь світ почує,
Вкраїна не впала, Вкраїна не впала,      |
Вона колядує!..                          | (2)

Речитатив:
Коляда дзвіночком, хоч війна вирує,
Б''ється Україна, але колядує,
Всі ми зачекались перемоги днини,
Щоби повернулись рідні із чужини.
Україна каже: Діти, мої діти,
У серцях будемо всі разом радіти!
Бог нам подарує мир, любов, добро!
Христос ся рождає! Славімо Його!','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:patriotic'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''cat:viyskovi'', ''Пісні на християнську тематику'', ''Колядки'', ''Патріотичні пісні'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2467471'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2467471','Святкує Вкраїна, хоч в серці тривога','Святкує Вкраїна, хоч в серці тривога,
Різдво в Вифлеємі, Різдво в Вифлеємі     |
Предвічного Бога.                        | (2)

Ослятко зігріло Його рученята,
В дітей українських, в дітей українських |
Сумні оченята...                         | (2)

Втікає родина в Єгипет-чужину,
Лишають родини, лишають родини           |
Свою Україну...                          | (2)

Співають колядки в далекому краю,
Ісусе маленький, Ісусе маленький,        |
Тебе всі благають:                       | (2)

Дай сили здолати нам Ірода нині,
Дай нам перемогу, дай нам перемогу       |
І мир в Україні!..                       | (2)

Хай дзвони Софії увесь світ почує,
Вкраїна не впала, Вкраїна не впала,      |
Вона колядує!..                          | (2)

Речитатив:
Коляда дзвіночком, хоч війна вирує,
Б''ється Україна, але колядує,
Всі ми зачекались перемоги днини,
Щоби повернулись рідні із чужини.
Україна каже: Діти, мої діти,
У серцях будемо всі разом радіти!
Бог нам подарує мир, любов, добро!
Христос ся рождає! Славімо Його!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2467471_l1','pisniua_2467471','YouTube','https://www.youtube.com/watch?v=2wNjwVTRcAc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2468828';
DELETE FROM song_versions WHERE song_id = 'pisniua_2468828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2468828';
DELETE FROM songs WHERE id = 'pisniua_2468828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2468828','Повернись живим','Музика: Сергій Танчинець Слова: Сергій Танчинець. Виконує: Without Limits (Без Обмежень)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ви клялись тоді,
Точно вижити,
Потім тихо плакати
За Братів своїх,
За Сестер своїх,
Їх не стерти вже...
Їх з сердець не вибити!..
Їх не здути вітрами!..
Їх не здути вітрами!..
Їх не здути вітрами!..
Їх не стерти вже:
Ні вогнем, ні снігом!..

Приспів:
Повернись живим!..
Повернись живим!..
Повернись живим!..
Живим!..

Ті, кому клялись -
Віри сповнені,
Тільки повернись,
До дітей своїх,
До Батьків своїх!..
Їх сердець вогонь
Гріє тихим полум''ям,
І за вас молитвами,
І за вас молитвами,
І за вас молитвами,
Богу мерехтить!..

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2468828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2468828','Повернись живим','Ви клялись тоді,
Точно вижити,
Потім тихо плакати
За Братів своїх,
За Сестер своїх,
Їх не стерти вже...
Їх з сердець не вибити!..
Їх не здути вітрами!..
Їх не здути вітрами!..
Їх не здути вітрами!..
Їх не стерти вже:
Ні вогнем, ні снігом!..

Приспів:
Повернись живим!..
Повернись живим!..
Повернись живим!..
Живим!..

Ті, кому клялись -
Віри сповнені,
Тільки повернись,
До дітей своїх,
До Батьків своїх!..
Їх сердець вогонь
Гріє тихим полум''ям,
І за вас молитвами,
І за вас молитвами,
І за вас молитвами,
Богу мерехтить!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468828_l1','pisniua_2468828','YouTube','https://www.youtube.com/watch?v=YCg9i4I6Qf8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2468165';
DELETE FROM song_versions WHERE song_id = 'pisniua_2468165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2468165';
DELETE FROM songs WHERE id = 'pisniua_2468165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2468165','Кров червона, земля чорна','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Зайшло сонце за горою,
Темна ніч настала...
Підійнялись козаченьки |
З ворогами в тан...    | (2)

В степу, в чистім полі
Земля почорніла,
Де кров кацапоська -
Зілля зеленіє...
В степу, в чистім полі
Трава проростає,
Нехай наша слава
Повік не вмирає!

Приспів:
Кров червона,
Кров червона, земля чорна,
Сила духу непоборна!
Над полями,
Над полями ворон кряче,
Серце козака гаряче!

Гомонять степи віками
Про нашу Вкраїну,
Що катують рідну неньку,
Рідну Україну...
Літає орел, літає сизий
Попід небесами,
Немає в світі кращих хлопців,
Вічно будуть з нами!..

Приспів. (2)','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2468165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2468165','Кров червона, земля чорна','Зайшло сонце за горою,
Темна ніч настала...
Підійнялись козаченьки |
З ворогами в тан...    | (2)

В степу, в чистім полі
Земля почорніла,
Де кров кацапоська -
Зілля зеленіє...
В степу, в чистім полі
Трава проростає,
Нехай наша слава
Повік не вмирає!

Приспів:
Кров червона,
Кров червона, земля чорна,
Сила духу непоборна!
Над полями,
Над полями ворон кряче,
Серце козака гаряче!

Гомонять степи віками
Про нашу Вкраїну,
Що катують рідну неньку,
Рідну Україну...
Літає орел, літає сизий
Попід небесами,
Немає в світі кращих хлопців,
Вічно будуть з нами!..

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468165_l1','pisniua_2468165','YouTube','https://www.youtube.com/watch?v=4EbAAq_6hO0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468165_l2','pisniua_2468165','YouTube','https://www.youtube.com/watch?v=hq1AEBr_lbw','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2468461';
DELETE FROM song_versions WHERE song_id = 'pisniua_2468461';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2468461';
DELETE FROM songs WHERE id = 'pisniua_2468461';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2468461','Плакали','Музика: Ірина Вихованець (Fiinka) Слова: Ірина Вихованець (Fiinka)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Кажут люди - правда іде за бідою,
Кажут всюди - миру вам над головою.
В свої хаті, де рідні стіни й пороги,
Ми спокійні, навіть, під звуки тривоги.
Лиш не годні ми нієк забути
То, шо з нами було, й то, шо є.
Нам життє прийшлось перевернути,
А сонце єк вставало, так й встає...

Приспів:
Плакали, втиралиси,
Тілько не здавалиси!..
Кілько нам шє треба перебути?..
Плакати, втиратиси,
Тілько не здаватиси!..
Лиш би скорше з цего сну проснути!..

Кажут люди - нам вже нема шо боятис,
Ми направду вмієм крізь сльози смітис.
В свої хаті там, де всі люди свої,
Ми пірвемо за свій кавальчик земли!..
А, коли калину підоймемо
Так, шоб вже ніхто не похилив,
Ми си так подивимо на небо,
Єк ніхто шє в світі не дивив!..

Приспів.

Співаночки мої милі,
Де я вас подію?
Хіба я вас, співаночки,
Горами посію...
Ви будете, співаночки,
Горами гуляти,
Я си буду молоденька,
Слізами вмивати...','[''pisni.org.ua'', ''cat:ato'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2468461'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2468461','Плакали','Кажут люди - правда іде за бідою,
Кажут всюди - миру вам над головою.
В свої хаті, де рідні стіни й пороги,
Ми спокійні, навіть, під звуки тривоги.
Лиш не годні ми нієк забути
То, шо з нами було, й то, шо є.
Нам життє прийшлось перевернути,
А сонце єк вставало, так й встає...

Приспів:
Плакали, втиралиси,
Тілько не здавалиси!..
Кілько нам шє треба перебути?..
Плакати, втиратиси,
Тілько не здаватиси!..
Лиш би скорше з цего сну проснути!..

Кажут люди - нам вже нема шо боятис,
Ми направду вмієм крізь сльози смітис.
В свої хаті там, де всі люди свої,
Ми пірвемо за свій кавальчик земли!..
А, коли калину підоймемо
Так, шоб вже ніхто не похилив,
Ми си так подивимо на небо,
Єк ніхто шє в світі не дивив!..

Приспів.

Співаночки мої милі,
Де я вас подію?
Хіба я вас, співаночки,
Горами посію...
Ви будете, співаночки,
Горами гуляти,
Я си буду молоденька,
Слізами вмивати...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468461_l1','pisniua_2468461','YouTube','https://www.youtube.com/watch?v=x9FxAPDIUlQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468461_l2','pisniua_2468461','YouTube','https://www.youtube.com/watch?v=M8vNAMPG0Lc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_246879';
DELETE FROM song_versions WHERE song_id = 'pisniua_246879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_246879';
DELETE FROM songs WHERE id = 'pisniua_246879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_246879','І не минає','Музика: Ольга Богомолець Слова: Ліна Костенко. Виконує: Ольга Богомолець','uk','ukraine_1991',NULL,NULL,NULL,NULL,'І не минає, не минає, і вже, напевно, не мине
Тривога душу розтинає: а що, як любиш не мене?

А по-латині: аморе, амо! Невже від цього рятунку немає?
Аморе, мамо! Аморе, мамо, теж не минає.

Аморе, мамо, аморе амо, аморе амо ти єдин
Я обламаю хвилинам пальці щоб не вплітались в печаль годин.

Розпались хмари на міліграми, і все в колодязь каламаря
Куди забігти аморе амо, на карті місяця теж моря

А по-латині: аморе, амо! Невже від цього рятунку немає?
Аморе, мамо! Аморе, мамо, теж не минає.

Чманіє сад од квітучої рясності, іду, збиваю росу хвощів
Море кризисів, море ясності, море дощів...

А по-латині: аморе, амо! Невже від цього рятунку немає?
Аморе, мамо! Аморе, мамо, теж не минає','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_246879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_246879','І не минає','І не минає, не минає, і вже, напевно, не мине
Тривога душу розтинає: а що, як любиш не мене?

А по-латині: аморе, амо! Невже від цього рятунку немає?
Аморе, мамо! Аморе, мамо, теж не минає.

Аморе, мамо, аморе амо, аморе амо ти єдин
Я обламаю хвилинам пальці щоб не вплітались в печаль годин.

Розпались хмари на міліграми, і все в колодязь каламаря
Куди забігти аморе амо, на карті місяця теж моря

А по-латині: аморе, амо! Невже від цього рятунку немає?
Аморе, мамо! Аморе, мамо, теж не минає.

Чманіє сад од квітучої рясності, іду, збиваю росу хвощів
Море кризисів, море ясності, море дощів...

А по-латині: аморе, амо! Невже від цього рятунку немає?
Аморе, мамо! Аморе, мамо, теж не минає');
DELETE FROM song_links WHERE song_id = 'pisniua_247096';
DELETE FROM song_versions WHERE song_id = 'pisniua_247096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_247096';
DELETE FROM songs WHERE id = 'pisniua_247096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_247096','А сьогодні день субота','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1942','1. Народні пісні в записах Григорія Верьовки. Упоряд. Е. Верьовка-Скрипчинська, А. Гуменюк, В. Юдіна. Вступна стаття А. Гуменюка. - К.: Музична Україна, 1974. - 176 с.','Записана 1942 р. в м. Уфі від Н. Тонашевич, яка перейняла пісню від Т. Лісенкової (с. Стражгород Теплицького р-ну Вінницької обл.).','А сьогодні день субота,
А завтра неділя,
Чом на тобі, козаченьку,
Сорочка не біла?

Ой як вона буде біла,
Вже третя неділя,
Ненька стара, сестра мала,
Невістка не хтіла.

Переплину бистру річку,
Стану на пісочку,
Буду прати-малювати
Козацьку сорочку','[''pisni.org.ua'', ''cat:podilski'', ''cat:socialno-pobutovi'', ''cat:vesilni'', ''Пісні з Поділля'', ''Соціально-побутові пісні'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_247096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_247096','А сьогодні день субота','А сьогодні день субота,
А завтра неділя,
Чом на тобі, козаченьку,
Сорочка не біла?

Ой як вона буде біла,
Вже третя неділя,
Ненька стара, сестра мала,
Невістка не хтіла.

Переплину бистру річку,
Стану на пісочку,
Буду прати-малювати
Козацьку сорочку');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_247096_l1','pisniua_247096','YouTube','https://www.youtube.com/watch?v=CEA7wg9kPNg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2468522';
DELETE FROM song_versions WHERE song_id = 'pisniua_2468522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2468522';
DELETE FROM songs WHERE id = 'pisniua_2468522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2468522','Відьма','Музика: Vsivdoma Слова: Vsivdoma','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Відьма...
Бо ти є відьма!..
Чуєш?..
Я буду твоїм світлом!..
Я буду твоїм небом!..
Я буду лиш тобою
Насолоджуватись уві сні!..
Ти - моя Попелюшка!..
Ти - моя королева!..
І ніщо не завадить мені
З тобою прожити всі дні!..

Приспів:
Бо ти є відьма!..         |
Ти зламала мені крила...  |
Ти мене приворожила...    |
Ти взяла й не відпустила, |
Відьма!..                 | (4)

Ти буваєш колюча,
Часом просто нестерпна,
Як зустрівся з тобою,
Так хочу забути я!..
Ти зламала мій захист,
Увійшла в мою душу,
І без тебе вночі
Не можу заснути я!..

Приспів.

Ти іди, навертайся!
Викинь ключ і сховайся!
Забери усі спогади
Із моєї ти голови!..
Більш любові немає!..
Вітер пісень не співає!..
Закрий за собою двері
І просто йди!..
Бо ти є відьма!..

Приспів.','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2468522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2468522','Відьма','Відьма...
Бо ти є відьма!..
Чуєш?..
Я буду твоїм світлом!..
Я буду твоїм небом!..
Я буду лиш тобою
Насолоджуватись уві сні!..
Ти - моя Попелюшка!..
Ти - моя королева!..
І ніщо не завадить мені
З тобою прожити всі дні!..

Приспів:
Бо ти є відьма!..         |
Ти зламала мені крила...  |
Ти мене приворожила...    |
Ти взяла й не відпустила, |
Відьма!..                 | (4)

Ти буваєш колюча,
Часом просто нестерпна,
Як зустрівся з тобою,
Так хочу забути я!..
Ти зламала мій захист,
Увійшла в мою душу,
І без тебе вночі
Не можу заснути я!..

Приспів.

Ти іди, навертайся!
Викинь ключ і сховайся!
Забери усі спогади
Із моєї ти голови!..
Більш любові немає!..
Вітер пісень не співає!..
Закрий за собою двері
І просто йди!..
Бо ти є відьма!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468522_l1','pisniua_2468522','YouTube','https://www.youtube.com/watch?v=PyVSfWyEdNs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468522_l2','pisniua_2468522','YouTube','https://www.youtube.com/watch?v=h_k9V4q_AVE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468522_l3','pisniua_2468522','YouTube','https://www.youtube.com/watch?v=V9eLlfPIfH8','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468522_l4','pisniua_2468522','YouTube','https://www.youtube.com/watch?v=OiDs08QCBUo','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_2468990';
DELETE FROM song_versions WHERE song_id = 'pisniua_2468990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2468990';
DELETE FROM songs WHERE id = 'pisniua_2468990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2468990','Повільно','Музика: ADAM Слова: ADAM','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Сьогодні, мила, день буде прекрасним,
І на морозі розцвітуть сади,
І сонце нам світити буде ясно!
Все буде так, як того схочем ми!..

Приспів:
Танцюй зі мною повільно!..
Хай зачекає світ божевільний...
Танцюй зі мною повільно!..
Бути щасливі ми повинні!..

Сьогодні, мила, день буде, як треба
І в темнім небі зорі спалахнуть,
А потім нам з тобою, якщо треба,
Вони із неба в руки упадуть!..

Приспів.','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2468990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2468990','Повільно','Сьогодні, мила, день буде прекрасним,
І на морозі розцвітуть сади,
І сонце нам світити буде ясно!
Все буде так, як того схочем ми!..

Приспів:
Танцюй зі мною повільно!..
Хай зачекає світ божевільний...
Танцюй зі мною повільно!..
Бути щасливі ми повинні!..

Сьогодні, мила, день буде, як треба
І в темнім небі зорі спалахнуть,
А потім нам з тобою, якщо треба,
Вони із неба в руки упадуть!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468990_l1','pisniua_2468990','YouTube','https://www.youtube.com/watch?v=rdZcvBvIzMU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468990_l2','pisniua_2468990','YouTube','https://www.youtube.com/watch?v=FtYiKqJwpTw','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468990_l3','pisniua_2468990','YouTube','https://www.youtube.com/watch?v=yQkKn0qy5F8','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468990_l4','pisniua_2468990','YouTube','https://www.youtube.com/watch?v=Zu6HK5ESeaU','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2468990_l5','pisniua_2468990','YouTube','https://www.youtube.com/watch?v=fLevAcA1IA8','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_2470114';
DELETE FROM song_versions WHERE song_id = 'pisniua_2470114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2470114';
DELETE FROM songs WHERE id = 'pisniua_2470114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2470114','Україна','Слова: Аля Михайленко','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Україна, Україна...
Золоті слова свободи!
Вільно б''ється кожне серце
Славного народу.
Кожна мрія, кожна думка,
Погляд, вчинок, діло -
Наша віра, наша Вічність,
Наша справжня сила!

Україна, Україна -
Джерело тепла і світла!
З часом стало все на місце,
Все в тобі розквітло!
Кожна мрія, кожна думка,
Погляд, вчинок, діло -
Наша віра, наша Вічність,
Наша справжня сила!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2470114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2470114','Україна','Україна, Україна...
Золоті слова свободи!
Вільно б''ється кожне серце
Славного народу.
Кожна мрія, кожна думка,
Погляд, вчинок, діло -
Наша віра, наша Вічність,
Наша справжня сила!

Україна, Україна -
Джерело тепла і світла!
З часом стало все на місце,
Все в тобі розквітло!
Кожна мрія, кожна думка,
Погляд, вчинок, діло -
Наша віра, наша Вічність,
Наша справжня сила!');
DELETE FROM song_links WHERE song_id = 'pisniua_246797';
DELETE FROM song_versions WHERE song_id = 'pisniua_246797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_246797';
DELETE FROM songs WHERE id = 'pisniua_246797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_246797','Мій сон','Музика: гурт "LOWE" Слова: Іван Ловинський. Виконує: Pomylka Rezydenta','uk','ukraine_1991',NULL,NULL,'Від автора.','Пісня шведського гурту LOWE в обробці pomylka rezydenta.','знаєш ці слова?
знаєш ці пісні?
розумієш чи ні?
чи сприймаєш ти?
чи впізнаєш ти?
до кого вони?

ці слова... пісень,
що у тиші кожен день...
в самоті ночей
і обманності речей

це мій сон...

напишу слова
заспіваю їх
зрозумієш тоді
в телебаченні
у снобаченні?
я співаю тобі

серед гри подій
сірі струни моїх мрій
світла мить уві сні
я співаю ці пісні

це мій сон...','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_246797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_246797','Мій сон','знаєш ці слова?
знаєш ці пісні?
розумієш чи ні?
чи сприймаєш ти?
чи впізнаєш ти?
до кого вони?

ці слова... пісень,
що у тиші кожен день...
в самоті ночей
і обманності речей

це мій сон...

напишу слова
заспіваю їх
зрозумієш тоді
в телебаченні
у снобаченні?
я співаю тобі

серед гри подій
сірі струни моїх мрій
світла мить уві сні
я співаю ці пісні

це мій сон...');
DELETE FROM song_links WHERE song_id = 'pisniua_247114';
DELETE FROM song_versions WHERE song_id = 'pisniua_247114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_247114';
DELETE FROM songs WHERE id = 'pisniua_247114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_247114','Іванцьо сіно косить','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Б. Д. Гринченко. Этнографические материалы, собранные в Черниговской и соседних с ней губерниях. т. III. — Чернигов, 1899. — с. 384.',NULL,'Іванцьо сіно косить,
А Параска бога просить:
"Бодай сіно вогнем сіло!
Іванцьо, вражий сину,
Хорошую дочку маєш,
На гуляння не пускаєш;
Коли хочеш зятя мати,
Пусти її погуляти;
Справ їй сукню і спідницю,
Пусти її на вулицю".','[''pisni.org.ua'', ''cat:podilski'', ''Пісні з Поділля'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_247114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_247114','Іванцьо сіно косить','Іванцьо сіно косить,
А Параска бога просить:
"Бодай сіно вогнем сіло!
Іванцьо, вражий сину,
Хорошую дочку маєш,
На гуляння не пускаєш;
Коли хочеш зятя мати,
Пусти її погуляти;
Справ їй сукню і спідницю,
Пусти її на вулицю".');
DELETE FROM song_links WHERE song_id = 'pisniua_246961';
DELETE FROM song_versions WHERE song_id = 'pisniua_246961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_246961';
DELETE FROM songs WHERE id = 'pisniua_246961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_246961','На улиці скрипка грає','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. М. Лисенко. Збірник українських народних пісень, вип. I-VII. К., (1868-1911), VII, с. 30.',NULL,'На улиці скрипка грає,
Дівча матір упрошає:
Пусти ж мене, моя мати,
На улицю погуляти.

Не бороню, моя доню,
Лиш зарання йди додому:
Буде сонечко сідати,
Ти приходи вечеряти.

Що ж то в мене за гуляння,
Йти додому ще й зарання?
Не буду я й вечеряти:
Позволь нічку погуляти.','[''pisni.org.ua'', ''cat:kupalski'', ''cat:vesnyanky-hayivky'', ''cat:zeleni-svyata'', ''Купальські пісні'', ''Веснянки та гаївки'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_246961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_246961','На улиці скрипка грає','На улиці скрипка грає,
Дівча матір упрошає:
Пусти ж мене, моя мати,
На улицю погуляти.

Не бороню, моя доню,
Лиш зарання йди додому:
Буде сонечко сідати,
Ти приходи вечеряти.

Що ж то в мене за гуляння,
Йти додому ще й зарання?
Не буду я й вечеряти:
Позволь нічку погуляти.');
DELETE FROM song_links WHERE song_id = 'pisniua_2471515';
DELETE FROM song_versions WHERE song_id = 'pisniua_2471515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2471515';
DELETE FROM songs WHERE id = 'pisniua_2471515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2471515','Жоржини','Музика: Володимир Будейчук Слова: Катерина Костюк. Виконує: Наталія Бучинська','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'В солодкому сні приходиш мені,
Затримують відлік хвилини...
У мріях одні закохані дні,
Нас двоє і квітнуть жоржини!..
Кохання зійшло, як сонце зайшло
За теплий і зоряний вечір...

Приспів:
Забери мене, бери до свого серця  |
І нехай любов рікою розіллється!  |
Зачаруй мене, даруй мені жоржини, |
Називай лише мене "Моя дружина!"  | (2)

А очі твої - тумани мутні,
Як вперше, я в них заблукала...
Багряна любов розквітла в мені
І спокій навіки забрала...
Хай все перейде, хай сонце зійде,
Де цвітом так ваблять жоржини!..

Приспів.

Зачаруй мене, даруй мені жоржини,
Називай лише мене "Моя дружина!"','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2471515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2471515','Жоржини','В солодкому сні приходиш мені,
Затримують відлік хвилини...
У мріях одні закохані дні,
Нас двоє і квітнуть жоржини!..
Кохання зійшло, як сонце зайшло
За теплий і зоряний вечір...

Приспів:
Забери мене, бери до свого серця  |
І нехай любов рікою розіллється!  |
Зачаруй мене, даруй мені жоржини, |
Називай лише мене "Моя дружина!"  | (2)

А очі твої - тумани мутні,
Як вперше, я в них заблукала...
Багряна любов розквітла в мені
І спокій навіки забрала...
Хай все перейде, хай сонце зійде,
Де цвітом так ваблять жоржини!..

Приспів.

Зачаруй мене, даруй мені жоржини,
Називай лише мене "Моя дружина!"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2471515_l1','pisniua_2471515','YouTube','https://www.youtube.com/watch?v=LPEsij-LvfA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2471515_l2','pisniua_2471515','YouTube','https://www.youtube.com/watch?v=ftvsisTdAEE','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2471591';
DELETE FROM song_versions WHERE song_id = 'pisniua_2471591';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2471591';
DELETE FROM songs WHERE id = 'pisniua_2471591';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2471591','Шлях до перемоги','Музика: Оля Полякова, Анна Трінчер, POSITIFF Слова: Оля Полякова, Анна Трінчер, POSITIFF','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Чорні світлини,
З фронту новини
Всі в обороні,
Сирени у скронях,
Але ми незкорені!
Сум не дозволено! Ні!
Мета наша світла!
Віримо в Світло,
Хоч і без світла!
Ми разом все можемо,
Поруч тут кожний,
І ми переможемо!
За те, що все ближче
Стає Перемога,
Подякуєм ЗСУ!
Подякуєм Богу!

Приспів:
На нас чекає шлях, шлях,
Шлях до Перемоги!
До ворогів на страх,
Страх, страх ведуть дороги
Під тривоги!..
Thіs іs the way, way, way,
Way to Vіctory!
Now we can stay, stay, stay
Stay In Hіstory!
Vіctory for Ukraіne!

Перемелемо наших ворогів,
Перервемо страху ланцюги,
Перетворимо помсту у набої,
Перелічимо наших героїв:
В нас Привид Києва,
Конотоп Відьма,
Супер Шевченка сталеві обійми,
Лісова Мавка, Сковорода
Непереможний Франко - команда,
Наче вогонь та вода потужна!
Дух велетенський вселяють
Великий Бандера, Безсмертні Азова,
Залужний, Зеленський!
Стіною ми встанемо знову!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:patriotic'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Патріотичні пісні'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2471591'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2471591','Шлях до перемоги','Чорні світлини,
З фронту новини
Всі в обороні,
Сирени у скронях,
Але ми незкорені!
Сум не дозволено! Ні!
Мета наша світла!
Віримо в Світло,
Хоч і без світла!
Ми разом все можемо,
Поруч тут кожний,
І ми переможемо!
За те, що все ближче
Стає Перемога,
Подякуєм ЗСУ!
Подякуєм Богу!

Приспів:
На нас чекає шлях, шлях,
Шлях до Перемоги!
До ворогів на страх,
Страх, страх ведуть дороги
Під тривоги!..
Thіs іs the way, way, way,
Way to Vіctory!
Now we can stay, stay, stay
Stay In Hіstory!
Vіctory for Ukraіne!

Перемелемо наших ворогів,
Перервемо страху ланцюги,
Перетворимо помсту у набої,
Перелічимо наших героїв:
В нас Привид Києва,
Конотоп Відьма,
Супер Шевченка сталеві обійми,
Лісова Мавка, Сковорода
Непереможний Франко - команда,
Наче вогонь та вода потужна!
Дух велетенський вселяють
Великий Бандера, Безсмертні Азова,
Залужний, Зеленський!
Стіною ми встанемо знову!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2471591_l1','pisniua_2471591','YouTube','https://www.youtube.com/watch?v=g_LPXOTli-k','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2470328';
DELETE FROM song_versions WHERE song_id = 'pisniua_2470328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2470328';
DELETE FROM songs WHERE id = 'pisniua_2470328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2470328','Новорічні дива','Музика: Віталій Лобач, Денис Супруненко Слова: Юрій Шмегельський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Новий рік нам дарує надії
На любов і на мир в Україні!
І нехай сніжно-біла зима
Нас святковим теплом обійма!
Хай здійсняються всі наші мрії
І кохання нам серце зігріє!
Хай на дворі метіль завива,
Йдуть до нас новорічні дива!

З Новим роком привітання
Линуть звідусіль,
За вікном казковий вечір,
Віє заметіль...
І так гарно сніг кружляє
В цей святковий час,
Хай здійсняться всі бажання
В кожного із нас!

Приспів.

Хай усіх нас в Новім році
Лихо обмина!
Ми за це п''ємо шампанське
Від душі до дна!
Подарунки хай приносить
Цей святковий час
І хай збудуться бажання
В кожного із нас!

Приспів.

Хай на дворі метіль завива,
Йдуть до нас новорічні дива!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2470328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2470328','Новорічні дива','Приспів:
Новий рік нам дарує надії
На любов і на мир в Україні!
І нехай сніжно-біла зима
Нас святковим теплом обійма!
Хай здійсняються всі наші мрії
І кохання нам серце зігріє!
Хай на дворі метіль завива,
Йдуть до нас новорічні дива!

З Новим роком привітання
Линуть звідусіль,
За вікном казковий вечір,
Віє заметіль...
І так гарно сніг кружляє
В цей святковий час,
Хай здійсняться всі бажання
В кожного із нас!

Приспів.

Хай усіх нас в Новім році
Лихо обмина!
Ми за це п''ємо шампанське
Від душі до дна!
Подарунки хай приносить
Цей святковий час
І хай збудуться бажання
В кожного із нас!

Приспів.

Хай на дворі метіль завива,
Йдуть до нас новорічні дива!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2470328_l1','pisniua_2470328','YouTube','https://www.youtube.com/watch?v=nrIckySX9_Y','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2471675';
DELETE FROM song_versions WHERE song_id = 'pisniua_2471675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2471675';
DELETE FROM songs WHERE id = 'pisniua_2471675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2471675','Тату','Музика: Василь Мицик Слова: Василь Мицик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вже лелеки з гніздечок
Далеко у вирій злетіли,
А матуся сумна знов
Засиділась біля вікна...
Пам''ятаю той день,
Коли Ви, тату, форму оділи,
Обіцяли прийти, як розквітне
В садочу весна!..
Тату, тату, татусю,
Як хочу я вас обійняти!
Задрімати в обіймах,
Забути тривогу і страх!
По підвалах з сестричкою
Вже надоїло ховатись...
Нехай Вас і все Військо
Боронить Господь в небесах!

Вчора мама мене одягнула
В нову вишиванку,
Розцвіла вишиванками знов
Уся школа моя,
А по ваших позиціях
Ворог б''є без перестанку,
Знаю точно, що ви стоїте,
Бо за вами є я!..
Тату, тату, татусю,
Як хочу я вас обійняти!
Задрімати в обіймах,
Забути тривогу і страх!
З вами вся Україна і світ,
Тому Вас не зламати
Нехай Вас і все військо
Боронить Господь в небесах!

Вже лелеки з гніздечок
Далеко у вирій подались,
Перемога за нами,
Країна як дружна сім''я!
Ми у жовто-блакитний вінок
Увесь світ об''єднали!
Розцвіте, заживе, запанує
Країна моя!
Тату, тату, татусю,         |
Як хочу я вас обійняти!     |
Задрімати в обіймах,        |
Забути тривогу і страх!     |
З вами вся Україна і світ,  |
Тому Вас не зламати         |
Нехай Вас і все військо     |
Боронить Господь в небесах! | (2)','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:patriotic'', ''cat:pro-batkiv'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Патріотичні пісні'', ''Пісні про любов до батьків'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2471675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2471675','Тату','Вже лелеки з гніздечок
Далеко у вирій злетіли,
А матуся сумна знов
Засиділась біля вікна...
Пам''ятаю той день,
Коли Ви, тату, форму оділи,
Обіцяли прийти, як розквітне
В садочу весна!..
Тату, тату, татусю,
Як хочу я вас обійняти!
Задрімати в обіймах,
Забути тривогу і страх!
По підвалах з сестричкою
Вже надоїло ховатись...
Нехай Вас і все Військо
Боронить Господь в небесах!

Вчора мама мене одягнула
В нову вишиванку,
Розцвіла вишиванками знов
Уся школа моя,
А по ваших позиціях
Ворог б''є без перестанку,
Знаю точно, що ви стоїте,
Бо за вами є я!..
Тату, тату, татусю,
Як хочу я вас обійняти!
Задрімати в обіймах,
Забути тривогу і страх!
З вами вся Україна і світ,
Тому Вас не зламати
Нехай Вас і все військо
Боронить Господь в небесах!

Вже лелеки з гніздечок
Далеко у вирій подались,
Перемога за нами,
Країна як дружна сім''я!
Ми у жовто-блакитний вінок
Увесь світ об''єднали!
Розцвіте, заживе, запанує
Країна моя!
Тату, тату, татусю,         |
Як хочу я вас обійняти!     |
Задрімати в обіймах,        |
Забути тривогу і страх!     |
З вами вся Україна і світ,  |
Тому Вас не зламати         |
Нехай Вас і все військо     |
Боронить Господь в небесах! | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2471675_l1','pisniua_2471675','YouTube','https://www.youtube.com/watch?v=V_C-z8mh8aw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_24717';
DELETE FROM song_versions WHERE song_id = 'pisniua_24717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_24717';
DELETE FROM songs WHERE id = 'pisniua_24717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_24717','Ще не вмерла Україна','Музика: Михайло Вербицький Слова: Павло Чубинський, С. Данилович. Виконує: Не журись!','uk','ukrainian_peoples_republic_1917_1921',NULL,'1917','Пісневир. Молодіжний співаник. Львів 2001; http://www.kmu.gov.ua/','Ауідо у форматі mp3 (500 КВ): http://www.kmu.gov.ua/document/34541/ukraine.mp3 Акорди (частково) і табулатура (частково) взято з http://www.shulga.kiev.ua/ * "Державним Гімном України є національний гімн на музику М. Вербицького із словами першого куплету та приспіву твору П. Чубинського в такій редакції... (Закон України "Про Державний Гімн України") ** "...як Державний гімн Національний гімн на музику Михайла Вербицького зі словами тільки першого куплета і приспіву пісні Павла Чубинського "Ще не вмерла Україна". У той же час перша строфа гімну, згідно з пропозицією президента, звучатиме "Ще не вмерла України і слава, і воля"." (http://www.kmu.gov.ua/control/uk/publish/article?art_id=34056cat_id=31295) "Створення українсько гімну бере початок з осені 1862 року. Український етнограф, фольклорист, поет Павло Платонович Чубинський пише вірш "Ще не вмерла Україна", якому у майбутньому судилося стати національним, а згодом і державним гімном українського народу. Поширення цього вірша серед українофільських гуртків, щойно об''єднаних у Громаду сталося миттєво. Проте, вже 20 жовтня того ж року шеф жандармів князь Долгоруков дає розпорядження вислати Чубинського "за вредное влияние на умы простолюдинов" на проживання в Архангельську губернію під нагляд поліції. Перша публікація вірша П.Чубинського у львівському журналі "Мета", 1863, № 4. Отримавши поширення на Західній Україні патріотичний вірш не пройшов повз увагу й релігійних діячів того часу. Один з них, отець Михайло (Вербицький), ще й знаний композитор свого часу, захоплений віршем Павла Чубинського пише музику до нього. Вперше надрукований у 1863, а з нотами – 1865 вперше почав використовуватись як державний гімн у 1917 році. У 1917-1920 "Ще не вмерла Україна" як єдиний державний гімн законодавче не був затверджений, використовувалися й інші гімни. 15 січня 1992 музична редакція Державного гімну була затверджена Верховною Радою України, що знайшло своє відображання у Конституції України. Проте, тільки 6 березня 2003 року Верховна Рада України ухвалила Закон "Про Державний гімн України", запропонований президентом Леонідом Кучмою. Законопроектом пропонувалося затвердити як Державний гімн Національний гімн на музику Михайла Вербицького зі словами тільки першого куплета і приспіву пісні Павла Чубинського "Ще не вмерла Україна". У той же час перша строфа гімну, згідно з пропозицією президента, звучатиме "Ще не вмерла України і слава, і воля". Цей закон підтримали 334 народних депутати, проти висловилися 46 з 433, що зареєструвалися для голосування. Не брали участі в голосуванні фракції Соцпартії і Компартії. З прийняттям цього закону Стаття 20 Конституції України набула завершеного вигляду. Національний гімн на музику М.Вербицького отримав слова, віднині затверджені законом." (Джерело: Посольство України в Австралії: "Державний Гімн України"). Матеріал для читання: "Про генерала, якого вбив український славень".','Національний Гімн України (повна версія):

Ще не вмерла Україна, і слава, і воля,
Ще нам, браття молодії, усміхнеться доля.
Згинуть наші вороженьки, як роса на сонці,
Запануєм і ми, браття, у своїй сторонці.

Приспів:
Душу, тіло ми положим за нашу свободу.
І покажем, що ми, браття, козацького роду.

Станем, браття, в бій кровавий від Сяну до Дону
В ріднім краю панувати не дамо нікому;
Чорне море ще всміхнеться, дід Дніпро зрадіє,
Ще у нашій Україні доленька наспіє.

Приспів.

А завзяття, праця щира свого ще докаже,
Ще ся волі в Україні піснь гучна розляже,
За Карпати відоб''ється, згомонить степами,
України слава стане поміж народами.

Приспів.

* Державний Гімн України (офіційна версія):

"Ще не вмерла України** і слава, і воля,
Ще нам, браття молодії, усміхнеться доля.
Згинуть наші воріженьки, як роса на сонці.
Запануєм і ми, браття, у своїй сторонці.

Приспів:
Душу й тіло ми положим за нашу свободу,
І покажем, що ми, браття, козацького роду".

Акорди:

Ще не вмерла Україна, і слава, і во-  ля,
Ще нам, браття молодії, усміхнеться доля.
Згинуть наші вороженьки, як роса на сонці,
Запануєм і ми, браття, у своїй сторонці.

Приспів:
Душу, тіло ми положим за нашу свободу.
І покажем, що ми, браття, козацького роду.

Табулатура:

-0-0-0---0-1-3-1-0------0---0-------------
-1-----3----(3)----3--1---0---------0-1-3-
-0-----------0--------2---1---2-1-2-------
-2-----------0----------------------------
(3)---------(2)-------0---2---0---------0-
------------(3)---------------------------

-0-0-0---0-1-3-1-0--------0---------------
-1-----3----(3)----3--1-------------------
-0-----------0----------0---1--2--2-------
-2-----------0----------------------------
(3)---------(2)-------0---2----0--0-------
------------(3)---------------------------

-----0-----------------------3-3-1-0-0----
-0-0---3-1-0-1-0-1---0-0-1-1-3-----1-1----
-1-----------2-----2-1---2---0-----0-0----
-2-----------2-------2---2---0-----2-2----
-2-----------0-------2---0---2-----3-3----
-----------------------------3------------

-----0---------------------0-0-0---------
-0-0---3-1-0-1-0-1---0-0-1---0---1-1-----
-1-----------2-----2-1---2---1---2-2-----
-2-----------2-------2---2---2---2-2-----
-2-----------0-------2---0---2---0-0-----

Приспів:
-3-----2-3-0-3---3-1-0---------3-1-0-------0-1-
-1---1-------3-3-------3-1-1-3-----1-3-1-3-----
-0-0---------------------2---------------------
-3-----------------------0-0-------3-----------
-------------3-3-------------3-----------------

-3-----2-3-0-3---3-1-0-----0---0---5---5-------
-1---1-------3-3-------3-1---0-----5---5-------
-0-0---------------------2---------5---5-------
-----------------------------------7---7-------
-3-----------------------0---2-----7---7-------
-------------3-3-----------0-------5---5-------','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:patriotic'', ''Гимни та марші'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_24717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_24717','Ще не вмерла Україна','Національний Гімн України (повна версія):

Ще не вмерла Україна, і слава, і воля,
Ще нам, браття молодії, усміхнеться доля.
Згинуть наші вороженьки, як роса на сонці,
Запануєм і ми, браття, у своїй сторонці.

Приспів:
Душу, тіло ми положим за нашу свободу.
І покажем, що ми, браття, козацького роду.

Станем, браття, в бій кровавий від Сяну до Дону
В ріднім краю панувати не дамо нікому;
Чорне море ще всміхнеться, дід Дніпро зрадіє,
Ще у нашій Україні доленька наспіє.

Приспів.

А завзяття, праця щира свого ще докаже,
Ще ся волі в Україні піснь гучна розляже,
За Карпати відоб''ється, згомонить степами,
України слава стане поміж народами.

Приспів.

* Державний Гімн України (офіційна версія):

"Ще не вмерла України** і слава, і воля,
Ще нам, браття молодії, усміхнеться доля.
Згинуть наші воріженьки, як роса на сонці.
Запануєм і ми, браття, у своїй сторонці.

Приспів:
Душу й тіло ми положим за нашу свободу,
І покажем, що ми, браття, козацького роду".

Акорди:

Ще не вмерла Україна, і слава, і во-  ля,
Ще нам, браття молодії, усміхнеться доля.
Згинуть наші вороженьки, як роса на сонці,
Запануєм і ми, браття, у своїй сторонці.

Приспів:
Душу, тіло ми положим за нашу свободу.
І покажем, що ми, браття, козацького роду.

Табулатура:

-0-0-0---0-1-3-1-0------0---0-------------
-1-----3----(3)----3--1---0---------0-1-3-
-0-----------0--------2---1---2-1-2-------
-2-----------0----------------------------
(3)---------(2)-------0---2---0---------0-
------------(3)---------------------------

-0-0-0---0-1-3-1-0--------0---------------
-1-----3----(3)----3--1-------------------
-0-----------0----------0---1--2--2-------
-2-----------0----------------------------
(3)---------(2)-------0---2----0--0-------
------------(3)---------------------------

-----0-----------------------3-3-1-0-0----
-0-0---3-1-0-1-0-1---0-0-1-1-3-----1-1----
-1-----------2-----2-1---2---0-----0-0----
-2-----------2-------2---2---0-----2-2----
-2-----------0-------2---0---2-----3-3----
-----------------------------3------------

-----0---------------------0-0-0---------
-0-0---3-1-0-1-0-1---0-0-1---0---1-1-----
-1-----------2-----2-1---2---1---2-2-----
-2-----------2-------2---2---2---2-2-----
-2-----------0-------2---0---2---0-0-----

Приспів:
-3-----2-3-0-3---3-1-0---------3-1-0-------0-1-
-1---1-------3-3-------3-1-1-3-----1-3-1-3-----
-0-0---------------------2---------------------
-3-----------------------0-0-------3-----------
-------------3-3-------------3-----------------

-3-----2-3-0-3---3-1-0-----0---0---5---5-------
-1---1-------3-3-------3-1---0-----5---5-------
-0-0---------------------2---------5---5-------
-----------------------------------7---7-------
-3-----------------------0---2-----7---7-------
-------------3-3-----------0-------5---5-------');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24717_l1','pisniua_24717','YouTube','https://www.youtube.com/watch?v=EdH1d1UMKPE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24717_l2','pisniua_24717','YouTube','https://www.youtube.com/watch?v=41hbV2p7mr0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24717_l3','pisniua_24717','YouTube','https://www.youtube.com/watch?v=IS2dhMIlpm8','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24717_l4','pisniua_24717','YouTube','https://www.youtube.com/watch?v=H9DEOvd1plQ','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24717_l5','pisniua_24717','YouTube','https://www.youtube.com/watch?v=wRV9vdYi6vE','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24717_l6','pisniua_24717','YouTube','https://www.youtube.com/watch?v=1oihitdR3_M','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24717_l7','pisniua_24717','YouTube','https://www.youtube.com/watch?v=Dnnwdb7S3NE','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24717_l8','pisniua_24717','YouTube','https://www.youtube.com/watch?v=ip33p03l1Pw','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24717_l9','pisniua_24717','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24717_l10','pisniua_24717','http://www.plast.ca/upy/Muzyka/spivanchoice.html','http://www.plast.ca/upy/Muzyka/spivanchoice.html','external',NULL,10);
DELETE FROM song_links WHERE song_id = 'pisniua_2471952';
DELETE FROM song_versions WHERE song_id = 'pisniua_2471952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2471952';
DELETE FROM songs WHERE id = 'pisniua_2471952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2471952','Берегиня','Музика: Freeda Shenk Слова: Freeda Shenk','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Один лиш погляд - і ти в полоні,
Вона красива, як ікона.
Не закохатись неможливо,
Кожен мріє про таку дружину!
Вона пройде скрізь вогонь і воду,
Та не згубить своєї вроди!
Наче колискова лине,
Її мова солов''ї на!..

Приспів:
Найкрасивіша у світі жінка,
Це ти - українка!
Вірна і вільна, ніжна і сильна,
Кожна із нас - Берегиня!
Найкрасивіша у світі жінка,
То є українка!
За нашими плечима Ольга Княгиня,
Як і кожна із нас Берегиня!

Кожна жінка України
Вміє ворожити так, що ворог згине.
Кароока, чорноброва
З розуму зведе не сказав ні слова.
В коси заплітає червону стрічку,
Пісню заспіває про темну нічку,
До неї ходять хлопці, хлопці табунами
Та повертаються назад із гарбузами!..

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2471952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2471952','Берегиня','Один лиш погляд - і ти в полоні,
Вона красива, як ікона.
Не закохатись неможливо,
Кожен мріє про таку дружину!
Вона пройде скрізь вогонь і воду,
Та не згубить своєї вроди!
Наче колискова лине,
Її мова солов''ї на!..

Приспів:
Найкрасивіша у світі жінка,
Це ти - українка!
Вірна і вільна, ніжна і сильна,
Кожна із нас - Берегиня!
Найкрасивіша у світі жінка,
То є українка!
За нашими плечима Ольга Княгиня,
Як і кожна із нас Берегиня!

Кожна жінка України
Вміє ворожити так, що ворог згине.
Кароока, чорноброва
З розуму зведе не сказав ні слова.
В коси заплітає червону стрічку,
Пісню заспіває про темну нічку,
До неї ходять хлопці, хлопці табунами
Та повертаються назад із гарбузами!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2471952_l1','pisniua_2471952','YouTube','https://www.youtube.com/watch?v=J3EWdUB0CW4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2476175';
DELETE FROM song_versions WHERE song_id = 'pisniua_2476175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2476175';
DELETE FROM songs WHERE id = 'pisniua_2476175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2476175','На небі ні зорі','Музика: Jerry Heil Слова: Jerry Heil. Виконує: Jerry Heil','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Якось воно повелося вже так:
У місті тебе знає кожна собака.
Встанеш о п''ятій - і на заправку:
Тьоть Юль, налийте до повного баку!
В машині тече дах, а ти й геть без даху —
Взяла лиш зарядку, якісь теплі лахи...
Не місце й не час піддаватися страху —
Ти їдеш до нього, безстрашного, в Бахмут!

Приспів:
А на небі ні зорі,           |
І ліхтар останній догорів... |
Ти везеш любов               |
Шляхом без доріг,            |
Щоб він не захворів!..       | (2)

Ти з тих жінок, що й коня на горбі,
Повний багажник речей — не собі:
Ліки і одяг, продукти і кава —
Він вдома варити у турці любив.
А він на лінії бою з кінцем
Гріє серденько за комірцем,
І ти за хвилину до вашої зустрічі
Пишеш: Побачимось! Просто вір в це!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2476175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2476175','На небі ні зорі','Якось воно повелося вже так:
У місті тебе знає кожна собака.
Встанеш о п''ятій - і на заправку:
Тьоть Юль, налийте до повного баку!
В машині тече дах, а ти й геть без даху —
Взяла лиш зарядку, якісь теплі лахи...
Не місце й не час піддаватися страху —
Ти їдеш до нього, безстрашного, в Бахмут!

Приспів:
А на небі ні зорі,           |
І ліхтар останній догорів... |
Ти везеш любов               |
Шляхом без доріг,            |
Щоб він не захворів!..       | (2)

Ти з тих жінок, що й коня на горбі,
Повний багажник речей — не собі:
Ліки і одяг, продукти і кава —
Він вдома варити у турці любив.
А він на лінії бою з кінцем
Гріє серденько за комірцем,
І ти за хвилину до вашої зустрічі
Пишеш: Побачимось! Просто вір в це!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2476175_l1','pisniua_2476175','YouTube','https://www.youtube.com/watch?v=mMZpjGMisZY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2473328';
DELETE FROM song_versions WHERE song_id = 'pisniua_2473328';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2473328';
DELETE FROM songs WHERE id = 'pisniua_2473328';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2473328','Contra spem spero!','(Без надії сподіваюсь!). Слова: Леся Українка','uk','ukraine_1991',NULL,NULL,'аудіозапис','Шкільна програма для 10 класу.','Гетьте, думи, ви хмари осінні!
То ж тепера весна золота!
Чи то так у жалю, в голосінні
Проминуть молодії літа?

Ні, я хочу крізь сльози сміятись,
Серед лиха співати пісні,
Без надії таки сподіватись,
Жити хочу! Геть, думи сумні!

Я на вбогім сумнім перелозі
Буду сіять барвисті квітки,
Буду сіять квітки на морозі,
Буду лить на них сльози гіркі.

І від сліз тих гарячих розтане
Та кора льодовая, міцна,
Може, квіти зійдуть — і настане
Ще й для мене весела весна.

Я на гору круту крем''яную
Буду камінь важкий підіймать
І, несучи вагу ту страшную,
Буду пісню веселу співать.

В довгу, темную нічку невидну
Не стулю ні на хвильку очей —
Все шукатиму зірку провідну,
Ясну владарку темних ночей.

Так! я буду крізь сльози сміятись,
Серед лиха співати пісні,
Без надії таки сподіватись,
Буду жити! Геть, думи сумні!','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2473328'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2473328','Contra spem spero!','Гетьте, думи, ви хмари осінні!
То ж тепера весна золота!
Чи то так у жалю, в голосінні
Проминуть молодії літа?

Ні, я хочу крізь сльози сміятись,
Серед лиха співати пісні,
Без надії таки сподіватись,
Жити хочу! Геть, думи сумні!

Я на вбогім сумнім перелозі
Буду сіять барвисті квітки,
Буду сіять квітки на морозі,
Буду лить на них сльози гіркі.

І від сліз тих гарячих розтане
Та кора льодовая, міцна,
Може, квіти зійдуть — і настане
Ще й для мене весела весна.

Я на гору круту крем''яную
Буду камінь важкий підіймать
І, несучи вагу ту страшную,
Буду пісню веселу співать.

В довгу, темную нічку невидну
Не стулю ні на хвильку очей —
Все шукатиму зірку провідну,
Ясну владарку темних ночей.

Так! я буду крізь сльози сміятись,
Серед лиха співати пісні,
Без надії таки сподіватись,
Буду жити! Геть, думи сумні!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2473328_l1','pisniua_2473328','YouTube','https://www.youtube.com/watch?v=s7_xvxSAW2Q','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2473328_l2','pisniua_2473328','YouTube','https://www.youtube.com/watch?v=gVToNc6PVO0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2473328_l3','pisniua_2473328','YouTube','https://www.youtube.com/watch?v=7LZss9Ao-ak','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2473328_l4','pisniua_2473328','YouTube','https://www.youtube.com/watch?v=jkJoKp4jZyo','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2473328_l5','pisniua_2473328','YouTube','https://www.youtube.com/watch?v=I3srKr0w1Nk','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_2476313';
DELETE FROM song_versions WHERE song_id = 'pisniua_2476313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2476313';
DELETE FROM songs WHERE id = 'pisniua_2476313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2476313','Бузина','Музика: Memories Avenue, Артем Лоік Слова: Memories Avenue, Артем Лоік','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Десь там, де лелеки літають по небу, |
Де діти не бачили кляту ракету,      |
Десь там Україна від батька до сина, |
Розквітне навесні блакитна бузина!   | (2)

Коли болить, болить моє небо рване,
Лети молитвами пісня над ланами,
Над диким полем і хатою моєю,
Де ми заспіваємо ще разом із нею!
Десь там нема вибухів в небі,
Нехай ти мені співай солов''їною!
Мене колихай! Пливе туман
Над тополями під небом і зорями,
Тут люди зі зброєю з очима прозорими!

Приспів.

Напишу тобі не треба навіть думати о котрій,
Я знаходжу час на тебе, навіть сидячи в окопі.
Домалюю смс-ку і, манюня, понесеться,
Їм не влучити у мене, бо у тебе моє серце!
Так багато українок за кордоном пишуть повість,
Та ти не залишила країну, наче її совість.
Ми не встигли одружитись, обвінчатися у храмі,
Та любов наша відкрита, наче моя рана!..
Ти одна у мене вірила немислимо безмежно,
Принесу до твоїх ніг не троянди, а Незалежність!
І десь там за снарядами, кулями, наче долю, я
Тримаю твою руку в українській Євпаторії!
Скільки мріяли з тобою мирними ночами,
У маленькій квартирі були такими багачами,
Та багатство наше - не дешеве золото рабів,
А любов, за яку я вигризав учора бій!

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2476313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2476313','Бузина','Приспів:
Десь там, де лелеки літають по небу, |
Де діти не бачили кляту ракету,      |
Десь там Україна від батька до сина, |
Розквітне навесні блакитна бузина!   | (2)

Коли болить, болить моє небо рване,
Лети молитвами пісня над ланами,
Над диким полем і хатою моєю,
Де ми заспіваємо ще разом із нею!
Десь там нема вибухів в небі,
Нехай ти мені співай солов''їною!
Мене колихай! Пливе туман
Над тополями під небом і зорями,
Тут люди зі зброєю з очима прозорими!

Приспів.

Напишу тобі не треба навіть думати о котрій,
Я знаходжу час на тебе, навіть сидячи в окопі.
Домалюю смс-ку і, манюня, понесеться,
Їм не влучити у мене, бо у тебе моє серце!
Так багато українок за кордоном пишуть повість,
Та ти не залишила країну, наче її совість.
Ми не встигли одружитись, обвінчатися у храмі,
Та любов наша відкрита, наче моя рана!..
Ти одна у мене вірила немислимо безмежно,
Принесу до твоїх ніг не троянди, а Незалежність!
І десь там за снарядами, кулями, наче долю, я
Тримаю твою руку в українській Євпаторії!
Скільки мріяли з тобою мирними ночами,
У маленькій квартирі були такими багачами,
Та багатство наше - не дешеве золото рабів,
А любов, за яку я вигризав учора бій!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2476313_l1','pisniua_2476313','YouTube','https://www.youtube.com/watch?v=63e5Z34HHyY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_24726';
DELETE FROM song_versions WHERE song_id = 'pisniua_24726';
DELETE FROM songs_fts WHERE song_id = 'pisniua_24726';
DELETE FROM songs WHERE id = 'pisniua_24726';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_24726','Балада про дві скрипки','Музика: Володимир Івасюк Слова: Василь Марсюк. Виконує: Софія Ротару, Ватра, Руслана Калина','uk','ukraine_1991',NULL,NULL,'http://ivasyuk.domivka.net/','Виконавці: Софія Ротару, ВІА Ватра','Ой зробив хлопчина та й дві красні скрипки —
Поділив надвоє снів своїх красу.
Що перша скрипка — біла лебідка,
А дуга скрипка — вечірній сум.

Закохались в нього дві сестри весною —
Одна — як та нічка, друга — мов той день.
Перша просила грати сумної,
Друга хотіла веселих пісень.

Приспів:
Одна сміялась,
Плакала друга.
Гей, поєднались
Радість і туга.
Гей, поєднались
В очах дівчини,
Як у двох скрипках,
Ночі і днини.

А як розійшлися ті пісні луною,
Він замовклі скрипки сестрам двом віддав.
Кожна дівчина стала вербою,
Легінь між ними явором став.

Приспів:

Залишив на світі дві самотні скрипки,
Залишив на світі снів своїх красу.
Що перша скрипка — біла лебідка,
А дуга скрипка — вечірній сум.

Там, де став явір понад плаями,
Знову я чую відлуння пісень:
Одна верба співає ночами,
Друга верба співає удень.

Приспів:
Одна сміється,
І плаче друга,
Гей, поєднались
Радість і туга,
Гей, поєднались
В очах дівчини,
Як у двох скрипках
Ночі і днини.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_24726'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_24726','Балада про дві скрипки','Ой зробив хлопчина та й дві красні скрипки —
Поділив надвоє снів своїх красу.
Що перша скрипка — біла лебідка,
А дуга скрипка — вечірній сум.

Закохались в нього дві сестри весною —
Одна — як та нічка, друга — мов той день.
Перша просила грати сумної,
Друга хотіла веселих пісень.

Приспів:
Одна сміялась,
Плакала друга.
Гей, поєднались
Радість і туга.
Гей, поєднались
В очах дівчини,
Як у двох скрипках,
Ночі і днини.

А як розійшлися ті пісні луною,
Він замовклі скрипки сестрам двом віддав.
Кожна дівчина стала вербою,
Легінь між ними явором став.

Приспів:

Залишив на світі дві самотні скрипки,
Залишив на світі снів своїх красу.
Що перша скрипка — біла лебідка,
А дуга скрипка — вечірній сум.

Там, де став явір понад плаями,
Знову я чую відлуння пісень:
Одна верба співає ночами,
Друга верба співає удень.

Приспів:
Одна сміється,
І плаче друга,
Гей, поєднались
Радість і туга,
Гей, поєднались
В очах дівчини,
Як у двох скрипках
Ночі і днини.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24726_l1','pisniua_24726','YouTube','https://www.youtube.com/watch?v=l9xPG02MoCU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24726_l2','pisniua_24726','YouTube','https://www.youtube.com/watch?v=pz-ibNMaKHk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24726_l3','pisniua_24726','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_2475797';
DELETE FROM song_versions WHERE song_id = 'pisniua_2475797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2475797';
DELETE FROM songs WHERE id = 'pisniua_2475797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2475797','Пташка','Музика: Дмитро Саратський Слова: Анна Завальська','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісня "Пташка" присвячена медикині Оксані Баландіній, що втратила кінцівки під час обстрілу, та її чоловіку.','Тримай її в обіймах,
Сховай її від зла...
Пробач їй цю зневіру,
Бо крізь вогонь
Вона пройшла...
Візьми її на руки,
Неси, немов дитя...
Ці рани не зцілити,
Вони тепер на все життя...

Приспів:
І хай лине до небес
Крик її душі!..
У печалі мить...
Та знов пташкою вона
Після зливи сліз
Спробує злетіть!..
Нехай... Вона... Летить...

Врятуй її терпінням,
За двох тепер іди!..
Війна лягла на плечі
Хрестом, який усім нести...

Приспів. (2)','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2475797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2475797','Пташка','Тримай її в обіймах,
Сховай її від зла...
Пробач їй цю зневіру,
Бо крізь вогонь
Вона пройшла...
Візьми її на руки,
Неси, немов дитя...
Ці рани не зцілити,
Вони тепер на все життя...

Приспів:
І хай лине до небес
Крик її душі!..
У печалі мить...
Та знов пташкою вона
Після зливи сліз
Спробує злетіть!..
Нехай... Вона... Летить...

Врятуй її терпінням,
За двох тепер іди!..
Війна лягла на плечі
Хрестом, який усім нести...

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2475797_l1','pisniua_2475797','YouTube','https://www.youtube.com/watch?v=V49LKda5gpE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2475797_l2','pisniua_2475797','YouTube','https://www.youtube.com/watch?v=tZfqXE31vuc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_247993';
DELETE FROM song_versions WHERE song_id = 'pisniua_247993';
DELETE FROM songs_fts WHERE song_id = 'pisniua_247993';
DELETE FROM songs WHERE id = 'pisniua_247993';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_247993','Розцвіла черешня','Музика: Євген Шантир Слова: Євген Шантир. Виконує: Євген Шантир','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'РОЗЦВІЛА ЧЕРЕШНЯ

Розцвіла черешня ось і знову,
Як кохання перше у житті
І її чудово прикрашають
Сонячні проміння золоті.
Розцвіла черешня біля хати,
Розцвіла черешня у саду,
Розцвіла черешня, щоб сказати:
Я вам віддаю свою красу!

Розцвіла черешня ось і знову,
Розцвіла, як дівчина струнка
І до себе, зовсім ненароком,
Привертає погляди вона.
Розцвіла черешня не назавжди,
Розцвіла на мить лише одну,
Розцвіла черешня, щоб вітати
Згодом біля себе дітвору.

Розцвіла черешня ось і знову
Білосніжним маревом квіток
І відкрила у безмежні далі
Почуттям дорогу до зірок.
Розцвіла черешня на просторі,
Розцвіла черешня у раю,
Розцвіла черешня, щоб на дворі
Просто дарувати нам весну!','[''pisni.org.ua'', ''cat:bardivski'', ''cat:romansy'', ''cat:socialno-pobutovi'', ''cat:vesnyanky-hayivky'', ''Бардівські пісні'', ''Романси'', ''Соціально-побутові пісні'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_247993'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_247993','Розцвіла черешня','РОЗЦВІЛА ЧЕРЕШНЯ

Розцвіла черешня ось і знову,
Як кохання перше у житті
І її чудово прикрашають
Сонячні проміння золоті.
Розцвіла черешня біля хати,
Розцвіла черешня у саду,
Розцвіла черешня, щоб сказати:
Я вам віддаю свою красу!

Розцвіла черешня ось і знову,
Розцвіла, як дівчина струнка
І до себе, зовсім ненароком,
Привертає погляди вона.
Розцвіла черешня не назавжди,
Розцвіла на мить лише одну,
Розцвіла черешня, щоб вітати
Згодом біля себе дітвору.

Розцвіла черешня ось і знову
Білосніжним маревом квіток
І відкрила у безмежні далі
Почуттям дорогу до зірок.
Розцвіла черешня на просторі,
Розцвіла черешня у раю,
Розцвіла черешня, щоб на дворі
Просто дарувати нам весну!');
DELETE FROM song_links WHERE song_id = 'pisniua_2478859';
DELETE FROM song_versions WHERE song_id = 'pisniua_2478859';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2478859';
DELETE FROM songs WHERE id = 'pisniua_2478859';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2478859','Брат','Музика: Ірина Батюк, Сергій Лазановський, Роман Калин Слова: Ірина Батюк, Сергій Лазановський, Роман Калин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Іноді здається, ми знайомі вже давно,
Пролітає час, неначе кадри із кіно...
Я не в силі, брате, ти сьогодні за кермом,
Їдемо додому, щоб відкрити наш альбом...
А давай з тобою сядем і поринем в спогади,
Як малими біля хати на подвір''ї грались ми.
І ховалися від мами у сусідньому саду, -
Смак тих яблук не забуду і ніколи не знайду!

Приспів:
Мій брат, ми з тобою такі різні!    |
Мій брат, але ми душею рідні!       |
Мій брат, і хоча між нами відстань, |
Як добре, що в мене є ти!           | (2)

Розкидали кілометри нас хто-куди,
Твою підтримку відчуваю, як не крути!
Якщо важко на душі, ти просто дзвони,
Пам''ятай, що ти - мій брат і це назавжди!
А давай з тобою сядем і згадаєм те життя,
Де під мирним синім небом виростали ти і я.
За нас вирішила доля і разом несем свій хрест,
Пліч-о-пліч іти з тобою, брате, - це для мене честь!

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''cat:philosophic'', ''cat:zahalni-cinnosti'', ''Пісні про дружбу'', ''Філософські пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2478859'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2478859','Брат','Іноді здається, ми знайомі вже давно,
Пролітає час, неначе кадри із кіно...
Я не в силі, брате, ти сьогодні за кермом,
Їдемо додому, щоб відкрити наш альбом...
А давай з тобою сядем і поринем в спогади,
Як малими біля хати на подвір''ї грались ми.
І ховалися від мами у сусідньому саду, -
Смак тих яблук не забуду і ніколи не знайду!

Приспів:
Мій брат, ми з тобою такі різні!    |
Мій брат, але ми душею рідні!       |
Мій брат, і хоча між нами відстань, |
Як добре, що в мене є ти!           | (2)

Розкидали кілометри нас хто-куди,
Твою підтримку відчуваю, як не крути!
Якщо важко на душі, ти просто дзвони,
Пам''ятай, що ти - мій брат і це назавжди!
А давай з тобою сядем і згадаєм те життя,
Де під мирним синім небом виростали ти і я.
За нас вирішила доля і разом несем свій хрест,
Пліч-о-пліч іти з тобою, брате, - це для мене честь!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2478859_l1','pisniua_2478859','YouTube','https://www.youtube.com/watch?v=8aW_Gq0g0X8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_247777';
DELETE FROM song_versions WHERE song_id = 'pisniua_247777';
DELETE FROM songs_fts WHERE song_id = 'pisniua_247777';
DELETE FROM songs WHERE id = 'pisniua_247777';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_247777','Ірчик','(Мирославу Ірчанові). Слова: Роман Купчинський','uk','ukraine_before_1917',NULL,'1872','1. Стрілецька Голгофа. Спроба антології. Упорядник, автор вступної статті і приміток Т. Ю. Салига. - Львів: Каменяр, 1992. - 400 с.','"У Пістині... цікавою і неординарною особою був о. Авгус­тин Арсенич (1872-1939 pp.). Дочка Августина Ірина була нареченою січового стрільця Андрія Баб''юка, який називав її Ірчик і, правдоподібно, від її імені взяв свій літературний псевдонім Мирослав Ірчан. На запрошення її брата Романа в гостинному домі о. Арсенича перебували українські січові стрільці — відомі ком­позитори Г. Купчинський, М. Гайворонський, Л. Лепкий, які скомпонували пісню "Ірчик" про красиву дівчину з личком як папірчик. Згодом Ірина вийшла заміж за інженера лісів з Шешор Д. Бурачинського і переїхала на проживання до чоловіка. В гості до інженера державних лісів приїжджали відомі композитори Ярослав Барнич та І. Сімович. У домі Бурачинських і була створена пісня "Гуцулка Ксеня", прис­вячена дочці Ірини, — Ксенії Бурачинській." За матеріалами: http://www.refine.org.ua/pageid-2424-2.html','Чи є в світі краща зірка, як кохана моя Ірка,
Чи є в світі де царівна, щоб була така чарівна.
Приспів:
Гей, гей, Ірчик, Ірчик, личко в тебе як папірчик.
Чи є в горах краща квітка, як Ірчанова сусідка?
Чи є в раю де дзвіночок, як сусідки голосочок?
Приспів.
Поцілує, як ангелик, затанцює, як метелик,
Приголубить, як голубка, але тільки свого любка.
Приспів.
В неї коси золотисті, як на сонці води чисті,
В неї устонька — коралі, ітак далі, і так далі.
Приспів','[''pisni.org.ua'', ''cat:strilecki'', ''cat:zhartivlyvi'', ''Стрілецькі пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_247777'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_247777','Ірчик','Чи є в світі краща зірка, як кохана моя Ірка,
Чи є в світі де царівна, щоб була така чарівна.
Приспів:
Гей, гей, Ірчик, Ірчик, личко в тебе як папірчик.
Чи є в горах краща квітка, як Ірчанова сусідка?
Чи є в раю де дзвіночок, як сусідки голосочок?
Приспів.
Поцілує, як ангелик, затанцює, як метелик,
Приголубить, як голубка, але тільки свого любка.
Приспів.
В неї коси золотисті, як на сонці води чисті,
В неї устонька — коралі, ітак далі, і так далі.
Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_2481369';
DELETE FROM song_versions WHERE song_id = 'pisniua_2481369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2481369';
DELETE FROM songs WHERE id = 'pisniua_2481369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2481369','Синові','Музика: Олена Білоконь Слова: Зоя Журавка','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Колихала мати сина до зорі,
За вікном співали пісню солов''ї.
Ти зростай, синочку, в мирі і добрі
І черпай здоров''я й силу від землі!..
Купель заварила сину з сон-трави,
Щоб, дитино, бачив ти солодкі сни,
Вітерець гойдає люльку із верби,
Любий мій синочку, спи, маленький, спи!..

У піснях сповитий, підростає син,
Мати просить дуба мудрості і сил.
Віковічний дубе, ти ростеш роки:
Глибоко коріння, високо гілки,
Свою міць незламну синові віддай,
Бо колись він буде боронити край,
Щоб була у нього сила козака,
Стежечка барвиста, доленька легка!..

Виріс син, як сокіл, у життя злетів,
А за нього мати просить вищих сил.
В молитвах до Бога рученьки склада,
В материнськім серці сила не згаса.
А її молитва янголом летить,
У тяжку хвилину сина захистить!
Просить Матір Божу за своє дитя,
У словах тих віра сильна і свята!

У думках до нього небо прихиля,
Хай щаслива доля сина окриля,
Щоб свою голубку у житті зустрів
І коханням вірним серденько зігрів!..
Щоб і хліб до столу і добро було,
Щоб родило в полі і в садах цвіло,
Щоб у щасті жив ти, сину, до ста літ,
І міцнів з роками наш козацький рід!..','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2481369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2481369','Синові','Колихала мати сина до зорі,
За вікном співали пісню солов''ї.
Ти зростай, синочку, в мирі і добрі
І черпай здоров''я й силу від землі!..
Купель заварила сину з сон-трави,
Щоб, дитино, бачив ти солодкі сни,
Вітерець гойдає люльку із верби,
Любий мій синочку, спи, маленький, спи!..

У піснях сповитий, підростає син,
Мати просить дуба мудрості і сил.
Віковічний дубе, ти ростеш роки:
Глибоко коріння, високо гілки,
Свою міць незламну синові віддай,
Бо колись він буде боронити край,
Щоб була у нього сила козака,
Стежечка барвиста, доленька легка!..

Виріс син, як сокіл, у життя злетів,
А за нього мати просить вищих сил.
В молитвах до Бога рученьки склада,
В материнськім серці сила не згаса.
А її молитва янголом летить,
У тяжку хвилину сина захистить!
Просить Матір Божу за своє дитя,
У словах тих віра сильна і свята!

У думках до нього небо прихиля,
Хай щаслива доля сина окриля,
Щоб свою голубку у житті зустрів
І коханням вірним серденько зігрів!..
Щоб і хліб до столу і добро було,
Щоб родило в полі і в садах цвіло,
Щоб у щасті жив ти, сину, до ста літ,
І міцнів з роками наш козацький рід!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2481369_l1','pisniua_2481369','YouTube','https://www.youtube.com/watch?v=QUNrhHF4zxk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2479798';
DELETE FROM song_versions WHERE song_id = 'pisniua_2479798';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2479798';
DELETE FROM songs WHERE id = 'pisniua_2479798';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2479798','Мене війна сильнішою зробила','Слова: Ольга Фещенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мене війна сильнішою зробила,
Навчила жити й цінувати час,
До творчості зміцнила крила,
Подарувала шанс зустріти Вас!

Ви з різних континентів і держав,
Але Ви так прониклись нашим горем,
Що руку допомоги простягнули нам
І огорнули нас турботи морем.

Ми такі різні, з різних ми держав,
Спілкуємось на різних мовах,
Та розуміємо, що час настав
Боротись разом - спільний у нас ворог!

Ви нас приймаєте в своїх державах,
Як рідних селите в домівки і даєте шанс,
Допомагаєте нам у військових справах.
Усім, чим можете, підтримуєте нас!..

Ми дуже вдячні вам за допомогу!
І прикладаємо всю свою силу й міць!
Ми разом відсвяткуєм Перемогу!
Хай буде Мир і щастя без границь!','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2479798'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2479798','Мене війна сильнішою зробила','Мене війна сильнішою зробила,
Навчила жити й цінувати час,
До творчості зміцнила крила,
Подарувала шанс зустріти Вас!

Ви з різних континентів і держав,
Але Ви так прониклись нашим горем,
Що руку допомоги простягнули нам
І огорнули нас турботи морем.

Ми такі різні, з різних ми держав,
Спілкуємось на різних мовах,
Та розуміємо, що час настав
Боротись разом - спільний у нас ворог!

Ви нас приймаєте в своїх державах,
Як рідних селите в домівки і даєте шанс,
Допомагаєте нам у військових справах.
Усім, чим можете, підтримуєте нас!..

Ми дуже вдячні вам за допомогу!
І прикладаємо всю свою силу й міць!
Ми разом відсвяткуєм Перемогу!
Хай буде Мир і щастя без границь!');
DELETE FROM song_links WHERE song_id = 'pisniua_248012';
DELETE FROM song_versions WHERE song_id = 'pisniua_248012';
DELETE FROM songs_fts WHERE song_id = 'pisniua_248012';
DELETE FROM songs WHERE id = 'pisniua_248012';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_248012','Бем-ба ла бем-ба','(Зелене слоненя). Музика: Ірина Кириліна Слова: Олександр Вратарьов. Виконує: Едуард Романюта','uk','ukraine_1991',NULL,NULL,'http://kidsmusic.net.ru/audio_5_ru.htm','http://www.romanyuta.com/?mod=about','Бем-ба ла бем-ба

1. На острові Лабемба,
В затоці Балабемба,
Жили собі звичайні
Співаючі слони.

Жили собі та й годі,
Співали при народі,
А вранці при нагоді
Розказували сни.

Приспів:
Бем-ба ла бем-ба
Бем-ба ла бем-ба
Бем-ба ла бем-ба ба.

2. Прийшла зима на острів,
А там зима - це дощик,
Холодний довгий дощик,
Небесний водограй.

Але слонові сухо,
Бо два слонячі вуха -
Великі парасольки:
Накрийся і співай!

Приспів.

3. Набридло зимувати,
Під вухами співати,
Одна єдина думка
У кожного слона:

Коли ж це сонце вийде,
Коли ж нарешті прийде,
Зелена і весела
Танцююча весна.

Приспів.

4. І сонечко заграло,
Веселка запалала,
Й на чисте поле вийшло
Зелене слоненя.

Чому ж це ти зелене?
Навіщо ти зелене?
Для чого ти зелене?
Тому що я - весна!!!

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_248012'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_248012','Бем-ба ла бем-ба','Бем-ба ла бем-ба

1. На острові Лабемба,
В затоці Балабемба,
Жили собі звичайні
Співаючі слони.

Жили собі та й годі,
Співали при народі,
А вранці при нагоді
Розказували сни.

Приспів:
Бем-ба ла бем-ба
Бем-ба ла бем-ба
Бем-ба ла бем-ба ба.

2. Прийшла зима на острів,
А там зима - це дощик,
Холодний довгий дощик,
Небесний водограй.

Але слонові сухо,
Бо два слонячі вуха -
Великі парасольки:
Накрийся і співай!

Приспів.

3. Набридло зимувати,
Під вухами співати,
Одна єдина думка
У кожного слона:

Коли ж це сонце вийде,
Коли ж нарешті прийде,
Зелена і весела
Танцююча весна.

Приспів.

4. І сонечко заграло,
Веселка запалала,
Й на чисте поле вийшло
Зелене слоненя.

Чому ж це ти зелене?
Навіщо ти зелене?
Для чого ти зелене?
Тому що я - весна!!!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_24818';
DELETE FROM song_versions WHERE song_id = 'pisniua_24818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_24818';
DELETE FROM songs WHERE id = 'pisniua_24818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_24818','Я люблю твої кроки','Музика: Марія Бурмака Слова: Оксана Пахльовська. Виконує: Марія Бурмака','uk','ukraine_1991',NULL,NULL,'http://burmaka.kiev.ua/al_live.htm','* варіант: І неторканий смуток один в них великий Підбір акордів: hrystusia','Я люблю твої кроки у тихих садах
Де троянди густі, мов туман біля вікон
Молодесенький місяць і срібний наш дах
Неторканий смуток родинних реліквій *

Може все це приснилось комусь і колись
Тих садів нереальний причаєний подих,
Ти забутий навіки, ти рідний наскрізь,
Я люблю твої кроки у тиші по сходах

Ті троянди чекають давно не тебе
Хто там знає, що їм може й сто навіть років
Я люблю твої кроки ніколи й ніде
Я люблю твої кроки, люблю твої кроки.

Я люблю твої кроки нізвідки вночі
В тих садах, де немає ні саду, ні дому,
Але є ще ті сходи і є ті ключі,
Лиш дверей не відчинить ніхто і ніколи.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_24818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_24818','Я люблю твої кроки','Я люблю твої кроки у тихих садах
Де троянди густі, мов туман біля вікон
Молодесенький місяць і срібний наш дах
Неторканий смуток родинних реліквій *

Може все це приснилось комусь і колись
Тих садів нереальний причаєний подих,
Ти забутий навіки, ти рідний наскрізь,
Я люблю твої кроки у тиші по сходах

Ті троянди чекають давно не тебе
Хто там знає, що їм може й сто навіть років
Я люблю твої кроки ніколи й ніде
Я люблю твої кроки, люблю твої кроки.

Я люблю твої кроки нізвідки вночі
В тих садах, де немає ні саду, ні дому,
Але є ще ті сходи і є ті ключі,
Лиш дверей не відчинить ніхто і ніколи.');
DELETE FROM song_links WHERE song_id = 'pisniua_2479694';
DELETE FROM song_versions WHERE song_id = 'pisniua_2479694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2479694';
DELETE FROM songs WHERE id = 'pisniua_2479694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2479694','Налийте шампанського','Музика: Ніколо Петраш Слова: Юрій Рибчинський. Виконує: Наталія Бучинська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'На весіллі квіти, сміх,
Радість на очах у всіх,
І лише в моїх очах
Туга і печаль... -
Це тому що тут і там,
Як в театрі мелодрам,
Знов кричать гості:
"Гірко!" та не нам...

Приспів:
Налийте шампанського! Я вип''ю до дна
За те, що всі танці я танцюю одна!
Я вип''ю за страчені кохання зірки,
За мрії, що втрачені, за вас, юнаки!..
За вас, хто нас віршами приваблювать звик,
А потім із іншою стає на рушник...
За те, що кохаєте ви завжди не ту,
Якій надягаєте фатальну фату!..

Як ми мріяли колись,
Щоб всі наші сни збулись,
Але нам наврочив хтось:
Щастя не збулось...
Мені сумно та, чомусь,
Я не плачу, я сміюсь,
І боюсь, що сьогодні я нап''юсь!

Приспів. (2)

Налийте шампанського!','[''pisni.org.ua'', ''cat:devoted'', ''cat:nostalgia'', ''cat:philosophic'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні з ностальгічними мотивами'', ''Філософські пісні'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2479694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2479694','Налийте шампанського','На весіллі квіти, сміх,
Радість на очах у всіх,
І лише в моїх очах
Туга і печаль... -
Це тому що тут і там,
Як в театрі мелодрам,
Знов кричать гості:
"Гірко!" та не нам...

Приспів:
Налийте шампанського! Я вип''ю до дна
За те, що всі танці я танцюю одна!
Я вип''ю за страчені кохання зірки,
За мрії, що втрачені, за вас, юнаки!..
За вас, хто нас віршами приваблювать звик,
А потім із іншою стає на рушник...
За те, що кохаєте ви завжди не ту,
Якій надягаєте фатальну фату!..

Як ми мріяли колись,
Щоб всі наші сни збулись,
Але нам наврочив хтось:
Щастя не збулось...
Мені сумно та, чомусь,
Я не плачу, я сміюсь,
І боюсь, що сьогодні я нап''юсь!

Приспів. (2)

Налийте шампанського!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2479694_l1','pisniua_2479694','YouTube','https://www.youtube.com/watch?v=NpfNfj10vsY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2479624';
DELETE FROM song_versions WHERE song_id = 'pisniua_2479624';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2479624';
DELETE FROM songs WHERE id = 'pisniua_2479624';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2479624','Рани зацвітають','Музика: Mariia Dovgauk Слова: Mariia Dovgauk','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Все минало, тільки не любов...
Бракувало всіх на світі мов...
Рвались квіти, тільки не любов...
Тупотіли стежками розмов...

Приспів:
Рани зацвітають      |
Пізно, чи то рано... |
Та ти мене не ранив, |
Ранив той ранок...   |
Обіцяй, як сонце     |
Перестане гріти,     |
Повернеш мене,       |
Повернеш до літа!..  | (2)

Ой, у мене так серце
Ой, у мене так рветься...
За тобою несеться!..
За тобою несеться!..
Ой, у мене так серце
Ой, у мене так рветься!..
Плететься в думці
Крайній день весни,
Мені цю пісню
Віддав і залишив...

Приспів.

Обіцяй, як сонце
Перестане гріти,
Повернеш мене,
Повернеш до літа!
До літа!..','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2479624'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2479624','Рани зацвітають','Все минало, тільки не любов...
Бракувало всіх на світі мов...
Рвались квіти, тільки не любов...
Тупотіли стежками розмов...

Приспів:
Рани зацвітають      |
Пізно, чи то рано... |
Та ти мене не ранив, |
Ранив той ранок...   |
Обіцяй, як сонце     |
Перестане гріти,     |
Повернеш мене,       |
Повернеш до літа!..  | (2)

Ой, у мене так серце
Ой, у мене так рветься...
За тобою несеться!..
За тобою несеться!..
Ой, у мене так серце
Ой, у мене так рветься!..
Плететься в думці
Крайній день весни,
Мені цю пісню
Віддав і залишив...

Приспів.

Обіцяй, як сонце
Перестане гріти,
Повернеш мене,
Повернеш до літа!
До літа!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2479624_l1','pisniua_2479624','YouTube','https://www.youtube.com/watch?v=hib3e87JHYY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2479624_l2','pisniua_2479624','YouTube','https://www.youtube.com/watch?v=edpEpL9RIsI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2482716';
DELETE FROM song_versions WHERE song_id = 'pisniua_2482716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2482716';
DELETE FROM songs WHERE id = 'pisniua_2482716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2482716','Першоклашки','Музика: Світлана Ткачук','uk','ukraine_1991',NULL,NULL,'http://www.tinytunes.pp.ua/2023/06/blog-post_68.html','Пісню виконує Ніночка Козій (альбом: Співаночки від Ніночки).','Ранок до нас сонцем всміхається,
Швидко взяли ми свої рюкзачки,
Нове життя в нас починається:
Ми - першокласники, не малюки!
Всі дивіться ви на нас,
Ми ідемо в перший клас!
Перший - значить вищий клас!
Зустрічайте нас!

Приспів:
Першоклашки, всюди першоклашки,
І на сходах школи метушня,
Нам за ручку з мамами не страшно,
Не зустріти б чорного кота!

Ля-ля-ля-ля, ля-ля-ля-ля-ля-ля,
Ля-ля-ля-ля, ля-ля-ля-ля-ля,
Нам за ручку з мамами не страшно,
Не зустріти б чорного кота!

Скоро дзвінок, стихне на вулицях
Шум голосів і почнеться урок.
В клас нам пора, тільки хвилюємось:
Котик чорненький стрибнув на вікно.
Головні ми тут в цей час,
Нас ведуть в перший клас!
Перший - значить вищий клас!
Зустрічайте нас!

Приспів. (2)

Ля-ля-ля-ля, ля-ля-ля-ля-ля-ля,
Ля-ля-ля-ля, ля-ля-ля-ля-ля,
Нам за ручку з мамами не страшно,
Не зустріти б чорного кота!
Не зустріти б чорного кота!','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2482716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2482716','Першоклашки','Ранок до нас сонцем всміхається,
Швидко взяли ми свої рюкзачки,
Нове життя в нас починається:
Ми - першокласники, не малюки!
Всі дивіться ви на нас,
Ми ідемо в перший клас!
Перший - значить вищий клас!
Зустрічайте нас!

Приспів:
Першоклашки, всюди першоклашки,
І на сходах школи метушня,
Нам за ручку з мамами не страшно,
Не зустріти б чорного кота!

Ля-ля-ля-ля, ля-ля-ля-ля-ля-ля,
Ля-ля-ля-ля, ля-ля-ля-ля-ля,
Нам за ручку з мамами не страшно,
Не зустріти б чорного кота!

Скоро дзвінок, стихне на вулицях
Шум голосів і почнеться урок.
В клас нам пора, тільки хвилюємось:
Котик чорненький стрибнув на вікно.
Головні ми тут в цей час,
Нас ведуть в перший клас!
Перший - значить вищий клас!
Зустрічайте нас!

Приспів. (2)

Ля-ля-ля-ля, ля-ля-ля-ля-ля-ля,
Ля-ля-ля-ля, ля-ля-ля-ля-ля,
Нам за ручку з мамами не страшно,
Не зустріти б чорного кота!
Не зустріти б чорного кота!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2482716_l1','pisniua_2482716','YouTube','https://www.youtube.com/watch?v=p8wKn8Y-svo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2480354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2480354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2480354';
DELETE FROM songs WHERE id = 'pisniua_2480354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2480354','Завтра','Музика: ТМП Слова: ТМП','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує ТМП.','І я з місяцем тихо говорю,
Що наболіло, а що кипить.
Втома змішалася з головою,
І вже нутро моє знову кричить.
Кричить немов його ріже рутина,
Замкнене коло сталевих сліз.
Чому всередині я ще дитина?
А очі стверджують, що вже підріс.
А місяць шепче десь через хмари,
Хіба за це ти моливсь життю,
Щоб прикувати себе на нарах,
Служити тим, хто служить буттю?
Я не знаю, що тут робити,
Можливо ти підкажеш мені,
Навчиш мене правильно жити,
Навчиш тому, чому навчитись не зміг.
Чому навчитись не зміг?..

Приспів:
І весь світ мені дорожчий
За правила нудних людей.
Цінувати я не хочу
Склад безсенсових речей.
Я не знаю і не буду,
Що таке втрачати час.
Невже не кожен вартий того,
Щоб второпати хоч раз?

І я з місяцем тихо говорю,
Він сказав, що у мене дар.
Подружитись самим з собою,
Адже не кожен здатен так.
Правда скільки б він з головою,
Серце стверділо немов янтар.
Я тільки зараз дізнався то,
що можна було зробити так:

Приспів.

Завтра може й не настати,   |
Завтра може й не прийти.    |
Дихання навіки стати,       |
І душа до неба йти.         |
А що згадаєш, що забудеш,   |
Коли життя твоє пусте?      |
Невже не кожен вартий того, |
Щоб второпати просте?       | (2)','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2480354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2480354','Завтра','І я з місяцем тихо говорю,
Що наболіло, а що кипить.
Втома змішалася з головою,
І вже нутро моє знову кричить.
Кричить немов його ріже рутина,
Замкнене коло сталевих сліз.
Чому всередині я ще дитина?
А очі стверджують, що вже підріс.
А місяць шепче десь через хмари,
Хіба за це ти моливсь життю,
Щоб прикувати себе на нарах,
Служити тим, хто служить буттю?
Я не знаю, що тут робити,
Можливо ти підкажеш мені,
Навчиш мене правильно жити,
Навчиш тому, чому навчитись не зміг.
Чому навчитись не зміг?..

Приспів:
І весь світ мені дорожчий
За правила нудних людей.
Цінувати я не хочу
Склад безсенсових речей.
Я не знаю і не буду,
Що таке втрачати час.
Невже не кожен вартий того,
Щоб второпати хоч раз?

І я з місяцем тихо говорю,
Він сказав, що у мене дар.
Подружитись самим з собою,
Адже не кожен здатен так.
Правда скільки б він з головою,
Серце стверділо немов янтар.
Я тільки зараз дізнався то,
що можна було зробити так:

Приспів.

Завтра може й не настати,   |
Завтра може й не прийти.    |
Дихання навіки стати,       |
І душа до неба йти.         |
А що згадаєш, що забудеш,   |
Коли життя твоє пусте?      |
Невже не кожен вартий того, |
Щоб второпати просте?       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2480354_l1','pisniua_2480354','YouTube','https://www.youtube.com/watch?v=QwT7LL9PvyY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2481797';
DELETE FROM song_versions WHERE song_id = 'pisniua_2481797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2481797';
DELETE FROM songs WHERE id = 'pisniua_2481797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2481797','Справжні жінки','Музика: Anastasia Markiv Слова: Anastasia Markiv','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Справжні жінки дивляться прямо в очі,
Що би ти з ними не робив...
Справжні жінки знають, що вони хочуть,
Навіть коли немає сил...
Справжні жінки одягають корону на ранок,
Проплакавши всю ніч!..
З справжньою жінкою сядеш на троні,
Але владу всю віддасиш їй!..

Приспів:
Я все дещо хочу, і звір не спить по ночах,
Один із нас програє, так і знай!
Я все беру, що хочу і я проскочу,
Проскочу на вершину всіх бажань!
Наш день не за горою, вечір поруч зі мною,
Сталевий поєдинок, не тремтить рука!
Я бачу, що ти хочеш,
Твій постріл буде точний,
Якщо не буде ціль у нас одна!

Справжні жінки спершу перемагають,
А потім плачуть усю ніч...
Справжні жінки, коли від болю вмирають,
Зі смертю ходять пліч-о-пліч...
Справжні жінки одягають корони
І носять серце без душі...
Справжні жінки аби сісти на троні,
Пекло підняли з-під землі...

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2481797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2481797','Справжні жінки','Справжні жінки дивляться прямо в очі,
Що би ти з ними не робив...
Справжні жінки знають, що вони хочуть,
Навіть коли немає сил...
Справжні жінки одягають корону на ранок,
Проплакавши всю ніч!..
З справжньою жінкою сядеш на троні,
Але владу всю віддасиш їй!..

Приспів:
Я все дещо хочу, і звір не спить по ночах,
Один із нас програє, так і знай!
Я все беру, що хочу і я проскочу,
Проскочу на вершину всіх бажань!
Наш день не за горою, вечір поруч зі мною,
Сталевий поєдинок, не тремтить рука!
Я бачу, що ти хочеш,
Твій постріл буде точний,
Якщо не буде ціль у нас одна!

Справжні жінки спершу перемагають,
А потім плачуть усю ніч...
Справжні жінки, коли від болю вмирають,
Зі смертю ходять пліч-о-пліч...
Справжні жінки одягають корони
І носять серце без душі...
Справжні жінки аби сісти на троні,
Пекло підняли з-під землі...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2481797_l1','pisniua_2481797','YouTube','https://www.youtube.com/watch?v=ay-fS_I9znQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2481797_l2','pisniua_2481797','YouTube','https://www.youtube.com/watch?v=2Zn6wd28C5s','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2478498';
DELETE FROM song_versions WHERE song_id = 'pisniua_2478498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2478498';
DELETE FROM songs WHERE id = 'pisniua_2478498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2478498','Погані сусіди','Музика: Володимир Самолюк (Skofka) Слова: Володимир Самолюк (Skofka)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Я знаю, дід мій             |
Воював із твоїм дідом.      |
Я знаю, бачить він,         |
Яким ти став сусідом!       |
Без сумніву він за кораблем |
Послав би слідом вас всіх!  |
Я знаю, дід мій             |
Воював із твоїм дідом.      | (2)

Ми вас викурим звідси і випалим!
Віником виметем з хати і викинем!
Ми вас перемолотим і пику наб''єм!
Потім пережуємо і виплюнем!
Ми вас виблюєм, виженем, висмієм!
Ми посадим вас, а потім висієм!
Ми вас витруїм, витремо, витримаєм!
Ми вас переживем, перевиховаєм!
Бо погані сусіди ви нам,
Не спецоперація це, а війна!
Тобі кажуть, це наша вина,
Але вибухи видно і з мого вікна!
Тобі кажуть, це ваша земля,
Але дитиною по ній не гуляв ти!
Тобі кажуть, це ваші поля,
Але добре подумай, хто їх обробляв!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2478498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2478498','Погані сусіди','Приспів:
Я знаю, дід мій             |
Воював із твоїм дідом.      |
Я знаю, бачить він,         |
Яким ти став сусідом!       |
Без сумніву він за кораблем |
Послав би слідом вас всіх!  |
Я знаю, дід мій             |
Воював із твоїм дідом.      | (2)

Ми вас викурим звідси і випалим!
Віником виметем з хати і викинем!
Ми вас перемолотим і пику наб''єм!
Потім пережуємо і виплюнем!
Ми вас виблюєм, виженем, висмієм!
Ми посадим вас, а потім висієм!
Ми вас витруїм, витремо, витримаєм!
Ми вас переживем, перевиховаєм!
Бо погані сусіди ви нам,
Не спецоперація це, а війна!
Тобі кажуть, це наша вина,
Але вибухи видно і з мого вікна!
Тобі кажуть, це ваша земля,
Але дитиною по ній не гуляв ти!
Тобі кажуть, це ваші поля,
Але добре подумай, хто їх обробляв!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2478498_l1','pisniua_2478498','YouTube','https://www.youtube.com/watch?v=D5dZ8YyY-T4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_248091';
DELETE FROM song_versions WHERE song_id = 'pisniua_248091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_248091';
DELETE FROM songs WHERE id = 'pisniua_248091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_248091','Прийшла карта до двора','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1966','1. Наша дума, наша пісня. — К.: Радянcька школа, 1966. — С. 142-143',NULL,'Прийшла карта до двора, до двора,
Що рекрутів брать пора.
Прийшов соцький, прийшов війт, прийшов війт, -
Я із хати та й на тік,
Там сховався в житній стіг.
А в стогові та й найшли, та й найшли,
Назад руки зв''язали
Та в присутствіє повели;
Та в присутствіє повели,
Та під міру підвели,
Та під міру підвели.
Хлоп до міри не дістав, не дістав,
Панок грішми підсипав, підсипав,
Панок грішми підсипав, підсипав,
- Хлоп навіки та й пропав.
Літ за двадцять я вернувсь, я вернувсь,
Ні до кого пригорнуться:
Жінка з журби померла, померла,
Дочку взяли до двора, до двора.
Мого Гриця та й били, та й били
Та навіки забили.','[''pisni.org.ua'', ''cat:rekrutski'', ''cat:socialno-pobutovi'', ''Рекрутські пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_248091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_248091','Прийшла карта до двора','Прийшла карта до двора, до двора,
Що рекрутів брать пора.
Прийшов соцький, прийшов війт, прийшов війт, -
Я із хати та й на тік,
Там сховався в житній стіг.
А в стогові та й найшли, та й найшли,
Назад руки зв''язали
Та в присутствіє повели;
Та в присутствіє повели,
Та під міру підвели,
Та під міру підвели.
Хлоп до міри не дістав, не дістав,
Панок грішми підсипав, підсипав,
Панок грішми підсипав, підсипав,
- Хлоп навіки та й пропав.
Літ за двадцять я вернувсь, я вернувсь,
Ні до кого пригорнуться:
Жінка з журби померла, померла,
Дочку взяли до двора, до двора.
Мого Гриця та й били, та й били
Та навіки забили.');
DELETE FROM song_links WHERE song_id = 'pisniua_248354';
DELETE FROM song_versions WHERE song_id = 'pisniua_248354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_248354';
DELETE FROM songs WHERE id = 'pisniua_248354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_248354','Крик Чорнобиля','Музика: Юрій Васильківський Слова: Борис Олійник. Виконує: Віктор Кавун','uk','ukraine_1991',NULL,NULL,NULL,NULL,'В цих лісах безборонно гасають вовки, наче рейнджери.
Заблоковану зону обходить здаля навіть дощ.
Лиш тутешні зозулі, що звуться "лічильники Гейгера",
Не роки обіцяють, а числа рокованих доз.

І шаманської ночі безоокого чорного місяця,
Коли землю, як в саван, загорне вологий туман.
На задалених цвинтарях в небо обвуглене світяться
Сизо цинковим одцвітом горбики чорнобилян.

Приспів:
Бо ніщо не забудеться: ані імення, ні дати.
Ми - не тіні, Ми - душі віднині вовік молоді.
І коли небеса возвістують годину відплати,
Ми посвідчимо вашу байдужість на Страшнім Суді!

Так оглухло і тоскно, і так одиноко-пустельно.
Тільки раптом із ночі дитям заголосить сова.
Тільки Діва Пречиста із профілем Ліни Костенко
У простуженій церкві собою маля зігріва.

Тільки тіні шістьох, спопелілих за всіх у четвертім,
Припадають до вікон волають устами біди.
- Та озвітеся ж, люди! Як що  ви забули про мертвих,
То живим пострадальцям подайте хоч кухоль води!

Приспів','[''pisni.org.ua'', ''cat:chornobyl'', ''cat:suspilno-politychni'', ''Чорнобильська катастрофа: пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_248354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_248354','Крик Чорнобиля','В цих лісах безборонно гасають вовки, наче рейнджери.
Заблоковану зону обходить здаля навіть дощ.
Лиш тутешні зозулі, що звуться "лічильники Гейгера",
Не роки обіцяють, а числа рокованих доз.

І шаманської ночі безоокого чорного місяця,
Коли землю, як в саван, загорне вологий туман.
На задалених цвинтарях в небо обвуглене світяться
Сизо цинковим одцвітом горбики чорнобилян.

Приспів:
Бо ніщо не забудеться: ані імення, ні дати.
Ми - не тіні, Ми - душі віднині вовік молоді.
І коли небеса возвістують годину відплати,
Ми посвідчимо вашу байдужість на Страшнім Суді!

Так оглухло і тоскно, і так одиноко-пустельно.
Тільки раптом із ночі дитям заголосить сова.
Тільки Діва Пречиста із профілем Ліни Костенко
У простуженій церкві собою маля зігріва.

Тільки тіні шістьох, спопелілих за всіх у четвертім,
Припадають до вікон волають устами біди.
- Та озвітеся ж, люди! Як що  ви забули про мертвих,
То живим пострадальцям подайте хоч кухоль води!

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_248354_l1','pisniua_248354','YouTube','https://www.youtube.com/watch?v=UCZtowmHQ-Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2483354';
DELETE FROM song_versions WHERE song_id = 'pisniua_2483354';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2483354';
DELETE FROM songs WHERE id = 'pisniua_2483354';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2483354','Там, де ти','Музика: Марта Липчей Слова: Марта Липчей','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я напишу про тебе сто пісень
І розкажу, як кожен божий день,
Як кожну, ніч хоч знаю і сама
Питаю в неба: Де ти?..
І молюсь біля вікна...

Приспів:
Там, де ти... Там, де ти
Не співають птахи...
Там, де ти, попіл в небі літає...
Там, де ти... Там, де ти,
Забери мене туди...
Там, де ти, все навколо палає...
Там, де ти... Там, де ти...

Я напишу про тебе сто книжок,
Де будеш ти героєм із казок!..
Та знову ніч, хоч знаю і сама,
Питаю в неба: Де ти?..
І молюсь біля вікна...

Приспів.

Я напишу про тебе сто пісень...','[''pisni.org.ua'', ''cat:ato'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2483354'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2483354','Там, де ти','Я напишу про тебе сто пісень
І розкажу, як кожен божий день,
Як кожну, ніч хоч знаю і сама
Питаю в неба: Де ти?..
І молюсь біля вікна...

Приспів:
Там, де ти... Там, де ти
Не співають птахи...
Там, де ти, попіл в небі літає...
Там, де ти... Там, де ти,
Забери мене туди...
Там, де ти, все навколо палає...
Там, де ти... Там, де ти...

Я напишу про тебе сто книжок,
Де будеш ти героєм із казок!..
Та знову ніч, хоч знаю і сама,
Питаю в неба: Де ти?..
І молюсь біля вікна...

Приспів.

Я напишу про тебе сто пісень...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2483354_l1','pisniua_2483354','YouTube','https://www.youtube.com/watch?v=kIuA4nkvDpg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2484111';
DELETE FROM song_versions WHERE song_id = 'pisniua_2484111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2484111';
DELETE FROM songs WHERE id = 'pisniua_2484111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2484111','Чорні лелеки','Музика: Сергій Нехаєвський Слова: Соломія Українець. Виконує: Сергій Нехаєвський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Не вертаються з бою сини. В небеса відлітають далекі.
Em                           G       Н7      Em
А весною обіймуть крильми, рідну землю ті чорні лелеки.
І кружлятимуть біля вікна, де матуся в молитві щоночі.
І побачить душею вона, що в лелек непташинії очі...
В тих лелек непташинії очі...
Спомин болем додасть сивини, мати небо обійме руками.
Не приносять онуків сини, що додому вертають птахами.
То не вітер, не дощ - неньки плач: - Виглядала живим тебе, сину!
Він озветься: - Матусю, пробач, мене рідна за чорну хустину...
Пробач мене за чорну хустину...
Не вертаються з бою сини.В небеса відлітають далекі.
А весною обіймуть крильми, рідну землю ті чорні лелеки.
Ці лелеки, рвуть серце, кричать, тягнуть хмарами долю пташину.
То Герої з безсмертя летять, боронити крильми Україну!..
Боронити крильми Україну!..','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2484111'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2484111','Чорні лелеки','Не вертаються з бою сини. В небеса відлітають далекі.
Em                           G       Н7      Em
А весною обіймуть крильми, рідну землю ті чорні лелеки.
І кружлятимуть біля вікна, де матуся в молитві щоночі.
І побачить душею вона, що в лелек непташинії очі...
В тих лелек непташинії очі...
Спомин болем додасть сивини, мати небо обійме руками.
Не приносять онуків сини, що додому вертають птахами.
То не вітер, не дощ - неньки плач: - Виглядала живим тебе, сину!
Він озветься: - Матусю, пробач, мене рідна за чорну хустину...
Пробач мене за чорну хустину...
Не вертаються з бою сини.В небеса відлітають далекі.
А весною обіймуть крильми, рідну землю ті чорні лелеки.
Ці лелеки, рвуть серце, кричать, тягнуть хмарами долю пташину.
То Герої з безсмертя летять, боронити крильми Україну!..
Боронити крильми Україну!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2484111_l1','pisniua_2484111','YouTube','https://www.youtube.com/watch?v=e5pNt1qOFZw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2484111_l2','pisniua_2484111','YouTube','https://www.youtube.com/watch?v=6MXBxn088LQ','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2483653';
DELETE FROM song_versions WHERE song_id = 'pisniua_2483653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2483653';
DELETE FROM songs WHERE id = 'pisniua_2483653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2483653','Бабуся моя','Музика: Назарій Комінко (NIZARIY) Слова: Назарій Комінко (NIZARIY)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Бабусю моя мила,
Ти - сама найкраща в світі!
Не дала зустрітись війна,
Забрала нам радість і літо...

Приспів:
Україно, я сумую так без тебе
І прийде день, закінчиться війна!..
Чекатиму на зустріч я з тобою,
Бабусю рідна, мила ти моя!..
Ти моя!..

Достатньо моря тут і сонця,
І різних розваг для дітей,
Я хочу дивитись з віконця
На гори Карпати ночей...

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2483653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2483653','Бабуся моя','Бабусю моя мила,
Ти - сама найкраща в світі!
Не дала зустрітись війна,
Забрала нам радість і літо...

Приспів:
Україно, я сумую так без тебе
І прийде день, закінчиться війна!..
Чекатиму на зустріч я з тобою,
Бабусю рідна, мила ти моя!..
Ти моя!..

Достатньо моря тут і сонця,
І різних розваг для дітей,
Я хочу дивитись з віконця
На гори Карпати ночей...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2483653_l1','pisniua_2483653','YouTube','https://www.youtube.com/watch?v=ILWIclYasg0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_248461';
DELETE FROM song_versions WHERE song_id = 'pisniua_248461';
DELETE FROM songs_fts WHERE song_id = 'pisniua_248461';
DELETE FROM songs WHERE id = 'pisniua_248461';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_248461','Чорнобильські хати','Музика: Юрій Васильківський Слова: М.Грабовський. Виконує: Юрій Васильківський','uk','ukraine_1991',NULL,NULL,'Авторське подання',NULL,'Порожні хати, всохлі вишні
Закляк колодязь у дворі -
За що карає нас Всевишній
Промінням чорної зорі.

Повзе прокляття по оселях,
І нищить землю навкруги.
Радіаційна його челядь
Збирає по хатах борги.

Приспів:
Чорнобильські хати,чорнобильські хати,
Вдивляється в небо, заплакана мати.
Чорнобильські хати,чорнобильські хати,
Вам випала доля, пустими стояти.

Хто винен стронцію сліпому?
Чим завинили ми, кому
Тому реакторові злому
Чи може Богу Самому.

О, збав, Господь, від кари тої,
Страшенне вогнище згаси.
Та зерна істини святої
До нас, до грішних донеси.

Приспів:
І день, і ніч - двадцяте літо
Усе кружля пекельний птах.
Мовчазно горбляться могили
В старих, покинутих хрестах','[''pisni.org.ua'', ''cat:chornobyl'', ''Чорнобильська катастрофа: пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_248461'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_248461','Чорнобильські хати','Порожні хати, всохлі вишні
Закляк колодязь у дворі -
За що карає нас Всевишній
Промінням чорної зорі.

Повзе прокляття по оселях,
І нищить землю навкруги.
Радіаційна його челядь
Збирає по хатах борги.

Приспів:
Чорнобильські хати,чорнобильські хати,
Вдивляється в небо, заплакана мати.
Чорнобильські хати,чорнобильські хати,
Вам випала доля, пустими стояти.

Хто винен стронцію сліпому?
Чим завинили ми, кому
Тому реакторові злому
Чи може Богу Самому.

О, збав, Господь, від кари тої,
Страшенне вогнище згаси.
Та зерна істини святої
До нас, до грішних донеси.

Приспів:
І день, і ніч - двадцяте літо
Усе кружля пекельний птах.
Мовчазно горбляться могили
В старих, покинутих хрестах');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_248461_l1','pisniua_248461','YouTube','https://www.youtube.com/watch?v=lWOR99BN5Eg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2484063';
DELETE FROM song_versions WHERE song_id = 'pisniua_2484063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2484063';
DELETE FROM songs WHERE id = 'pisniua_2484063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2484063','Щоб не зійти з розуму','Музика: VIP Тернопіль Слова: VIP Тернопіль','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Було нам дуже боляче,
Закривали обличчя долонями,
Прикривали вікна шторами,
Шукали на вулиці мітки ми.
Трохи стали барменами,
Бандеро смузі робили ми,
Все, щоб не зійти із розуму!
Щоб не зійти із розуму!

Щоб не зійти із розуму,
Слухали Арестовича,
Прямі ефіри із Фейгіним,
Вірили в два-три тижні ми,
А вони - свистуни...

Родичі зійшли із розуму,
"Ви самі сєбя бомбітє" -
Казала нам тьотка з Пітєра,
Мама її переконувала,
А їх тре пі*дити!..

Щоб не зійти із розуму,
Збір на приціл зробили ми,
Гарний такий з тепловізором,
Хлопцям туди відправили!
Тепер у траві наш снайпер там
Лупить між очі ворогам,
Лежить окупант, дира в башці,
Український вітер в його голові!..
Тихенько...

Щоб не зійти із розуму,
Збирали на Байрактари ми,
Купили навіть супутника,
Зібрали дрони для помсти ми!
Скільки грошей би не мали ми,
Стараємось їх не тратити,
Просто чекаєм зарплати ми,
На що ж будем далі донатити?..

Речитатив:
Пані та панове, цей день настав!
Ми придумали, як збільшити
Допомогу армії вдвічі!
Тому розпочинаємо новий збір
На ще одного Сергія Притулу!
В нас вже є домовленості з клінікою
По клонуванню і це означає,
Що коштів буде вдвічі більше,
І вдвічі більше бавовни!
Ну і як завжди будемо збирати
На одного Притулу
І розраховуємо зібрати на півтори.
І турки подарують безкоштовно ще три,
А це означає, що ми з вами зустрінемось
Не тільки на волонтерстві, а й на Хто зверху?
Слава Україні!

Щоб не зійти із розуму,
Країна об''єдналася,
Щоби Москва якось вночі
Так само прокидалася від звуку!..

Ми знову скоро зустрінемось,
В сценічну форму одінемось,
А поки разом тримаємо стрій
Всі, хто в тилу і на передовій!
І скоро, нехай допоможе нам Бог,
Зітремо додаток "Карта тривог"!
Ми точно разом переможемо
Сусідів, зійшовших з розуму!

В Луганську, Донбасі і Криму
Слава Україні! - Я скажу!
Полетять слова над Альпами,
Прогримлять над містами залпами!
Хвилі підніме океан,
В рази сильніше за ураган,
Серця міліонів розтопить, як лава,
Відповідь нам: Героям слава!','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2484063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2484063','Щоб не зійти з розуму','Було нам дуже боляче,
Закривали обличчя долонями,
Прикривали вікна шторами,
Шукали на вулиці мітки ми.
Трохи стали барменами,
Бандеро смузі робили ми,
Все, щоб не зійти із розуму!
Щоб не зійти із розуму!

Щоб не зійти із розуму,
Слухали Арестовича,
Прямі ефіри із Фейгіним,
Вірили в два-три тижні ми,
А вони - свистуни...

Родичі зійшли із розуму,
"Ви самі сєбя бомбітє" -
Казала нам тьотка з Пітєра,
Мама її переконувала,
А їх тре пі*дити!..

Щоб не зійти із розуму,
Збір на приціл зробили ми,
Гарний такий з тепловізором,
Хлопцям туди відправили!
Тепер у траві наш снайпер там
Лупить між очі ворогам,
Лежить окупант, дира в башці,
Український вітер в його голові!..
Тихенько...

Щоб не зійти із розуму,
Збирали на Байрактари ми,
Купили навіть супутника,
Зібрали дрони для помсти ми!
Скільки грошей би не мали ми,
Стараємось їх не тратити,
Просто чекаєм зарплати ми,
На що ж будем далі донатити?..

Речитатив:
Пані та панове, цей день настав!
Ми придумали, як збільшити
Допомогу армії вдвічі!
Тому розпочинаємо новий збір
На ще одного Сергія Притулу!
В нас вже є домовленості з клінікою
По клонуванню і це означає,
Що коштів буде вдвічі більше,
І вдвічі більше бавовни!
Ну і як завжди будемо збирати
На одного Притулу
І розраховуємо зібрати на півтори.
І турки подарують безкоштовно ще три,
А це означає, що ми з вами зустрінемось
Не тільки на волонтерстві, а й на Хто зверху?
Слава Україні!

Щоб не зійти із розуму,
Країна об''єдналася,
Щоби Москва якось вночі
Так само прокидалася від звуку!..

Ми знову скоро зустрінемось,
В сценічну форму одінемось,
А поки разом тримаємо стрій
Всі, хто в тилу і на передовій!
І скоро, нехай допоможе нам Бог,
Зітремо додаток "Карта тривог"!
Ми точно разом переможемо
Сусідів, зійшовших з розуму!

В Луганську, Донбасі і Криму
Слава Україні! - Я скажу!
Полетять слова над Альпами,
Прогримлять над містами залпами!
Хвилі підніме океан,
В рази сильніше за ураган,
Серця міліонів розтопить, як лава,
Відповідь нам: Героям слава!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2484063_l1','pisniua_2484063','YouTube','https://www.youtube.com/watch?v=i4Wf6eDWc2Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2485175';
DELETE FROM song_versions WHERE song_id = 'pisniua_2485175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2485175';
DELETE FROM songs WHERE id = 'pisniua_2485175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2485175','Просто друзі','Музика: VSIVDOMA Слова: VSIVDOMA','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Стою на сцені, читаю вірші.
Ми - просто друзі, а ти хочеш більше.
Давно знайомі - тісний контакт.
Сім років дружби пішли не так.
Стою на сцені, ти кличеш в гості,
Та не цікавить вже мене та постіль.
Нам жити краще без тих напруг.
Ти - просто подруга, я - просто друг.

Приспів:
Мені - спрайт, тобі - колу,
Мені - джину, тобі - рому,
Тобі - каву, мені - чай!..
Вибачай мене!.. Вибачай!..
Я спрайт, а ти колу,
Мені - джину, тобі - рому,
Тобі - каву, мені - чай!..
Вибачай!..

Ти так хотіла нас разом звести,
Себе шукала у моїх текстах.
В моїх очах ти шукала знак,
Але усе тут вже в моїх руках.
Часто писала ти мені ночами,
І спілкувалися і наші мами.
Тебе без слів впізнає слух.
Ти - просто подруга, я - просто друг.

Приспів','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2485175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2485175','Просто друзі','Стою на сцені, читаю вірші.
Ми - просто друзі, а ти хочеш більше.
Давно знайомі - тісний контакт.
Сім років дружби пішли не так.
Стою на сцені, ти кличеш в гості,
Та не цікавить вже мене та постіль.
Нам жити краще без тих напруг.
Ти - просто подруга, я - просто друг.

Приспів:
Мені - спрайт, тобі - колу,
Мені - джину, тобі - рому,
Тобі - каву, мені - чай!..
Вибачай мене!.. Вибачай!..
Я спрайт, а ти колу,
Мені - джину, тобі - рому,
Тобі - каву, мені - чай!..
Вибачай!..

Ти так хотіла нас разом звести,
Себе шукала у моїх текстах.
В моїх очах ти шукала знак,
Але усе тут вже в моїх руках.
Часто писала ти мені ночами,
І спілкувалися і наші мами.
Тебе без слів впізнає слух.
Ти - просто подруга, я - просто друг.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2485175_l1','pisniua_2485175','YouTube','https://www.youtube.com/watch?v=zIk-iwgP4TY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2482694';
DELETE FROM song_versions WHERE song_id = 'pisniua_2482694';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2482694';
DELETE FROM songs WHERE id = 'pisniua_2482694';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2482694','Шкільне життя','Слова: А. Логащук. Виконує: Ніночка Козій','uk','ukraine_1991',NULL,NULL,'http://www.tinytunes.pp.ua/2023/06/blog-post_17.html','Пісню виконує Ніночка Козій (альбом: Співаночки від Ніночки).','Стелиш стежку у світ знань, школо моя,
Відкриваєш учням шлях у світле майбуття!
Наповняються добром дитячі серця,
Радо стрічає тебе школа твоя!
Подарує щиру усмішку галаслива дітвора,
Гріє душу мудре слово твого вчителя,
Зазирне у класну кімнату осінь золота,
І незабутні стануть дні шкільного життя!

Приспів:
Шкільне життя! Шкільне життя
Назавжди в серці
Залишає мелодію дзвінка!..
Шкільне життя! Шкільне життя,
О, скільки радості, любові,
Спогадів сповна!.. Сповна!..

Всі ми будем пам''ятати кожен урок,
Наших учнів перший і невпевнений крок.
І так сумно нам стає, коли вони покидає
Родинне коло шкільного життя...

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2482694'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2482694','Шкільне життя','Стелиш стежку у світ знань, школо моя,
Відкриваєш учням шлях у світле майбуття!
Наповняються добром дитячі серця,
Радо стрічає тебе школа твоя!
Подарує щиру усмішку галаслива дітвора,
Гріє душу мудре слово твого вчителя,
Зазирне у класну кімнату осінь золота,
І незабутні стануть дні шкільного життя!

Приспів:
Шкільне життя! Шкільне життя
Назавжди в серці
Залишає мелодію дзвінка!..
Шкільне життя! Шкільне життя,
О, скільки радості, любові,
Спогадів сповна!.. Сповна!..

Всі ми будем пам''ятати кожен урок,
Наших учнів перший і невпевнений крок.
І так сумно нам стає, коли вони покидає
Родинне коло шкільного життя...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2484498';
DELETE FROM song_versions WHERE song_id = 'pisniua_2484498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2484498';
DELETE FROM songs WHERE id = 'pisniua_2484498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2484498','Ukraine','Слова: Аля Михайленко','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Доля моя славна,
Her name...
Іs Ukraіne...
Доля моя славна,
Ukraіne, I love you!

Вени мої, вени!
Стогне та реве в них -
Сила силенна...
Схилилася й до мене судьба!
Пожалітись нічим,
Та час до чогось кличе,
Коли ніщо не вічне,
Все - боротьба!

Доля моя славна,
Her name''s Ukraіne...
Доля моя славна,
Ukraіne, I love you!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2484498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2484498','Ukraine','Доля моя славна,
Her name...
Іs Ukraіne...
Доля моя славна,
Ukraіne, I love you!

Вени мої, вени!
Стогне та реве в них -
Сила силенна...
Схилилася й до мене судьба!
Пожалітись нічим,
Та час до чогось кличе,
Коли ніщо не вічне,
Все - боротьба!

Доля моя славна,
Her name''s Ukraіne...
Доля моя славна,
Ukraіne, I love you!');
DELETE FROM song_links WHERE song_id = 'pisniua_2486226';
DELETE FROM song_versions WHERE song_id = 'pisniua_2486226';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2486226';
DELETE FROM songs WHERE id = 'pisniua_2486226';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2486226','Мамо','Музика: KINDRAT Слова: KINDRAT','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Мамо, я живий!        |
Я ще повернусь!       |
І до твоїх ніжних рук |
Щоками притулюсь!     | (4)

Ранок у степу,
Докурив бичок,
Близько вже Луганськ,
А значить - палець на гачок!
Тремор у руках?
Ні! Це не про нас!
Кожен розуміє чий тут
Крим і чий Донбас!
Ти тримайся, мам,
Бо я тут не сам!
Кажеш, передали нам
Уже отой насамс?
Добре, ти держись!
Я тебе люблю!
Чую мама каже:
Сину, головне вернись!

Приспів.

Ти знаєш, що добра
Точно нема на передку,
Та все хороше, що лишилось,
Нищать чвари у тилу.
На війні, як на війні,
Крики, друзі у крові...
Краще так, ніж жити далі
У кремлівському ярмі!..
Тяжко рахувати втрати,
Ти тримайся, рідний брате!
Вірю, міць твою і силу
Їм ніколи не зламати!
Відбудуємо ми скоро
Усі села і міста,
А ви підете на дно
Слідами кримського моста!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:pro-batkiv'', ''cat:pro-ditey'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні про любов до батьків'', ''Пісні про любов до дітей'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2486226'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2486226','Мамо','Приспів:
Мамо, я живий!        |
Я ще повернусь!       |
І до твоїх ніжних рук |
Щоками притулюсь!     | (4)

Ранок у степу,
Докурив бичок,
Близько вже Луганськ,
А значить - палець на гачок!
Тремор у руках?
Ні! Це не про нас!
Кожен розуміє чий тут
Крим і чий Донбас!
Ти тримайся, мам,
Бо я тут не сам!
Кажеш, передали нам
Уже отой насамс?
Добре, ти держись!
Я тебе люблю!
Чую мама каже:
Сину, головне вернись!

Приспів.

Ти знаєш, що добра
Точно нема на передку,
Та все хороше, що лишилось,
Нищать чвари у тилу.
На війні, як на війні,
Крики, друзі у крові...
Краще так, ніж жити далі
У кремлівському ярмі!..
Тяжко рахувати втрати,
Ти тримайся, рідний брате!
Вірю, міць твою і силу
Їм ніколи не зламати!
Відбудуємо ми скоро
Усі села і міста,
А ви підете на дно
Слідами кримського моста!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2486226_l1','pisniua_2486226','YouTube','https://www.youtube.com/watch?v=ZJrDHDXGei4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2486990';
DELETE FROM song_versions WHERE song_id = 'pisniua_2486990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2486990';
DELETE FROM songs WHERE id = 'pisniua_2486990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2486990','Вірте, люди, у дива!','Музика: VLADA K, KOLA Слова: VLADA K, KOLA','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Маленька я
Сказала б собі дорослій:
Не припиняй вірити у дива
Ні коли літо, ні коли осінь!
Доросла я
Сказала б собі маленькій:
В світі багато-багато зла,
Не втрать своє світло руденьке!
На повторі знову ті ж самі слова,
Й коли я доросла й коли були мала,
Най йдуть літа,
Не припиню вірити у дива!
Най думки формують ці дивні слова,
Й коли я маленька і коли зросла,
Я б не змогла без віри
Знайти ту стежку, що мене вела!..

Приспів:
Вірте, люди, у дива!    |
Най душа пісні співа,   |
Бо темрява дуже слабка, |
Коли віра жива!..       | (2)

Тихесенько
Десь під ковдрою свої думки
Маленька я
Записала собі дорослій в голові...
Що вірити-вірити не припиняй!
Я й не знала що допоможе це,
Відкрити моє серце,
Що впало в море хоч і озерце...
Ти - моя віра, ти - моя сила,
Ти - моя дитина!
Я завжди для тебе буду наївна,
Ти - немов мої сліди!
Ти - моя віра, ти - моя правда,
Ти - те, що я хотіла бачити
Колись у дитинстві, коли була малою.
Тепер я пишаюсь тобою!..

Приспів.

Вірте! Вірте! Вірте у дива!.. | (4)','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2486990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2486990','Вірте, люди, у дива!','Маленька я
Сказала б собі дорослій:
Не припиняй вірити у дива
Ні коли літо, ні коли осінь!
Доросла я
Сказала б собі маленькій:
В світі багато-багато зла,
Не втрать своє світло руденьке!
На повторі знову ті ж самі слова,
Й коли я доросла й коли були мала,
Най йдуть літа,
Не припиню вірити у дива!
Най думки формують ці дивні слова,
Й коли я маленька і коли зросла,
Я б не змогла без віри
Знайти ту стежку, що мене вела!..

Приспів:
Вірте, люди, у дива!    |
Най душа пісні співа,   |
Бо темрява дуже слабка, |
Коли віра жива!..       | (2)

Тихесенько
Десь під ковдрою свої думки
Маленька я
Записала собі дорослій в голові...
Що вірити-вірити не припиняй!
Я й не знала що допоможе це,
Відкрити моє серце,
Що впало в море хоч і озерце...
Ти - моя віра, ти - моя сила,
Ти - моя дитина!
Я завжди для тебе буду наївна,
Ти - немов мої сліди!
Ти - моя віра, ти - моя правда,
Ти - те, що я хотіла бачити
Колись у дитинстві, коли була малою.
Тепер я пишаюсь тобою!..

Приспів.

Вірте! Вірте! Вірте у дива!.. | (4)');
DELETE FROM song_links WHERE song_id = 'pisniua_24879';
DELETE FROM song_versions WHERE song_id = 'pisniua_24879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_24879';
DELETE FROM songs WHERE id = 'pisniua_24879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_24879','Марш легіонерів','Музика: Олександр Веремчук Слова: Олександр Веремчук. Виконує: Кость Єрофєєв','uk','ukraine_1991',NULL,NULL,'Аудіоальбом "Кость Єрофєєв. Легіонер. Дорогами війни і кохання". 2001 Темпора','Коментар до пісні від автора: "Власне текст пісні був саркастичною відповіддю на спроби воєнкомів забрити мене до лав Радянської армії. Так що в пісні одні нерви і емоції... Критики до речі зауважували: "Мов ось про Рим. І раптом - грецькі гетери. А на додачу ще і кафетерії, яких ні в Римі, ні в Греції не було." А я ж не про Рим і не про Грецію, я ж про... воєнкомів та Радянську армію." (Джерело: Олександр Веремчук) Підбір акордів: muz-taras','Вступ:  Am G Am  (x4)

Am
Колони вирушають в дальній шлях.
F
Над кожною когортою свій стяг,
G
У кожного загону власна путь,
Для кожного накреслено маршрут.

Приспів:
Шикуйся в когорту, легіонер.
Може, хтось знов зазіхне на імперію.
Am
У тебе є право
F
Померти за герб.
За світле майбутнє гетер в кафетерії

Сталеві м''язи з міцністю лещат,
Щелепи випинаються, блищать.
Правофлангові зростом з Колізей,
Колючий погляд крицевих очей.

Приспів.

Програш:  Am F G Am

Наказ: убити і перемогти,
Життя - не перепона для мети.
Мечі стинають голови підряд,
Чи ти живий, про те не зна Сенат.

Приспів. (x2)','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_24879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_24879','Марш легіонерів','Вступ:  Am G Am  (x4)

Am
Колони вирушають в дальній шлях.
F
Над кожною когортою свій стяг,
G
У кожного загону власна путь,
Для кожного накреслено маршрут.

Приспів:
Шикуйся в когорту, легіонер.
Може, хтось знов зазіхне на імперію.
Am
У тебе є право
F
Померти за герб.
За світле майбутнє гетер в кафетерії

Сталеві м''язи з міцністю лещат,
Щелепи випинаються, блищать.
Правофлангові зростом з Колізей,
Колючий погляд крицевих очей.

Приспів.

Програш:  Am F G Am

Наказ: убити і перемогти,
Життя - не перепона для мети.
Мечі стинають голови підряд,
Чи ти живий, про те не зна Сенат.

Приспів. (x2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24879_l1','pisniua_24879','YouTube','https://www.youtube.com/watch?v=MafmGjxo3fE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_24879_l2','pisniua_24879','YouTube','https://www.youtube.com/watch?v=0h1yVD2JiZo','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2483828';
DELETE FROM song_versions WHERE song_id = 'pisniua_2483828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2483828';
DELETE FROM songs WHERE id = 'pisniua_2483828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2483828','Не буває чужих дітей','Музика: Андрій Князь Слова: Андрій Князь','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Не буває чужих дітей!     |
Не буває чужої долі!      |
Ми на світі один за всіх! |
Ми єдині! Це наша воля!   | (2)

Прокидаюсь разом з сонцем
І кажу тобі: Привіт!
І подивлюся у очі,
Там побачу цілий світ,
Світ безмежної любові
І час щасливих всіх людей!
Світ без фальші і без болю
Незагублених дітей!

Приспів.

Зробим добру справу кожен
І знайдем в майбутнє шлях,
Візьмемо усіх за руки,
Поведем в сни по казках.
І заглянемо в обличчя,
І їх ангельські серця,
І від щастя, і від болю
По щоці сльоза...

Приспів.

Війна усе змінила:
І дітей, і матерів,
Роз''єднала їхні долі,
На шматки розпався світ...
Зацвіте іще калина,
Заспівають солов''ї!
Обіймуть і доньку й сина
Не всі батьки на цій землі...

Приспів.

Не буває чужих дітей!
Не буває чужої долі!
Ми на світі один за всіх! |
І любов врятує світ!      | (2)','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2483828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2483828','Не буває чужих дітей','Приспів:
Не буває чужих дітей!     |
Не буває чужої долі!      |
Ми на світі один за всіх! |
Ми єдині! Це наша воля!   | (2)

Прокидаюсь разом з сонцем
І кажу тобі: Привіт!
І подивлюся у очі,
Там побачу цілий світ,
Світ безмежної любові
І час щасливих всіх людей!
Світ без фальші і без болю
Незагублених дітей!

Приспів.

Зробим добру справу кожен
І знайдем в майбутнє шлях,
Візьмемо усіх за руки,
Поведем в сни по казках.
І заглянемо в обличчя,
І їх ангельські серця,
І від щастя, і від болю
По щоці сльоза...

Приспів.

Війна усе змінила:
І дітей, і матерів,
Роз''єднала їхні долі,
На шматки розпався світ...
Зацвіте іще калина,
Заспівають солов''ї!
Обіймуть і доньку й сина
Не всі батьки на цій землі...

Приспів.

Не буває чужих дітей!
Не буває чужої долі!
Ми на світі один за всіх! |
І любов врятує світ!      | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2483828_l1','pisniua_2483828','YouTube','https://www.youtube.com/watch?v=SnEqYtPcaq4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_248591';
DELETE FROM song_versions WHERE song_id = 'pisniua_248591';
DELETE FROM songs_fts WHERE song_id = 'pisniua_248591';
DELETE FROM songs WHERE id = 'pisniua_248591';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_248591','Горілочку п''ю, п''ю','Українська народна пісня. Виконує: Буття','uk','ukraine_before_1917',NULL,NULL,'1. http://www.buttia.kiev.ua/reper_2001.html',NULL,'Горілочку п''ю, п''ю, бо я її люблю,
А хто ж буде її пити ой як же ж я й умру!     |(2)

Ой як же ж я й умру - поховайте в лісі,
Наді мною молодим горілку повісьте!           |(2)

Як я пробужуся - горілки нап''юся,
Та я в своїй домовині та й розвеселюся!       |(2)

На здоров''я того, що горілка його!
Не за того, що купив, а за того, що віпив!    |(2)

А в тій чарці на денці завелися цвіркунці,
Треба віпіть до денця щоб вігнати цвіркунця!  |(2)

Горілочка добра, ой їй богу добра!
Як би мене попросили, я би віпив до дна!      |(2)

Я би випив вихилив би, сам би себе похвалив би,
Що я панського роду, п''ю горілочку як воду,   |(2)

Що я такий розум маю, що по повній віпіваю!
Ром, ром, ром, перегорни чарочку догори дном! |(2)','[''pisni.org.ua'', ''cat:poliski'', ''cat:socialno-pobutovi'', ''Пісні з Полісся'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_248591'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_248591','Горілочку п''ю, п''ю','Горілочку п''ю, п''ю, бо я її люблю,
А хто ж буде її пити ой як же ж я й умру!     |(2)

Ой як же ж я й умру - поховайте в лісі,
Наді мною молодим горілку повісьте!           |(2)

Як я пробужуся - горілки нап''юся,
Та я в своїй домовині та й розвеселюся!       |(2)

На здоров''я того, що горілка його!
Не за того, що купив, а за того, що віпив!    |(2)

А в тій чарці на денці завелися цвіркунці,
Треба віпіть до денця щоб вігнати цвіркунця!  |(2)

Горілочка добра, ой їй богу добра!
Як би мене попросили, я би віпив до дна!      |(2)

Я би випив вихилив би, сам би себе похвалив би,
Що я панського роду, п''ю горілочку як воду,   |(2)

Що я такий розум маю, що по повній віпіваю!
Ром, ром, ром, перегорни чарочку догори дном! |(2)');
DELETE FROM song_links WHERE song_id = 'pisniua_248614';
DELETE FROM song_versions WHERE song_id = 'pisniua_248614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_248614';
DELETE FROM songs WHERE id = 'pisniua_248614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_248614','Ой да понад Дунай глибокий','Українська народна пісня. Виконує: Буття','uk','ukraine_before_1917',NULL,NULL,'1. http://www.buttia.kiev.ua/reper_2001.html','Варіант пісні у виконанні гурту "Буття"','Ой да понад Дунай глибокий росте терень вісокий.
Гей, гей, ой да люлі! Росте терень вісокий.

Ой да із под того тереня вішла вдова молода.
Гей, гей, ой да люлі! Вішла вдова молода.

Ой да вішла вдова молода, да й вінесла два сина.
Гей, гей, ой да люлі! Да й вінесла два сина.

Ох вона вінесла два сина: Іванюшу й Василя.
Гей, гей, ой да люлі! Іванюшу й Василя.

Ой да Іванюшу й Василя в чорний китай сповіла.
Гей, гей, ой да люлі! В чорний китай сповіла.

Ой да в чорний китай сповіла, да й на Дунай пустіла!
Гей, гей, ой да люлі! Да й на Дунай пустіла!

Ой да ти тихесенькой Дунай, моїх дєток колихай!
Гей, гей, ой да люлі! Моїх дєток коликай!

Ой да ти жовтенький пісочок, годуй моїх діточок!
Гей, гей, ой да люлі! Годуй моїх діточок!

Ой да ти, сухенька осочка, давай дєткам молочка!
Гей, гей, ой да люлі! Давай дєткам молочка!

Ой да ти тихенький очерет, вари дєткам вечерять
Гей, гей, ой да люлі! Вари дєткам вечерять!

Ой да на двадцат первом году вішла вдова по воду.
Гей, гей, ой да люлі! Вішла вдова по воду.

Ой да стала вдова воду брать, став кораблік пудпливать.
Гей, гей, ой да люлі! Став кораблік пудпливать.

Ой да і на тому кораблі сидять хлопці-молодці.
Гей, гей, ой да люлі! Сидять хлопці-молодці.

Ой да йеден книжку чітає, другий вдови пітає:
Гей, гей, ой да люлі! Другий вдови пітає:

Ой да ти, удово, удова, чи пайдьош ти за мєня?
Гей, гей, ой да люлі! Чи пайдьош ти за мєня?

Ой да я за тебе сама йду, за другого дочку шлю!
Гей, гей, ой да люлі! За другого дочку шлю!

Ой да ти удова, удова, дурна в тебе голова!
Гей, гей, ой да люлі! Дурна в тебе голова!

Ой да ти за сина сама йдеш, а за брата дочку шлеш!
Гей, гей, ой да люлі! А за брата дочку шлеш!

Ой да який тепер світ настав, що брат сестру заміж взяв!
Гей, гей, ой да люлі! Що брат сестру заміж взяв!

Ой да яка тепер годіна, що йде мати за сина!
Гей, гей, ой да люлі! Що йде мати за сина!','[''pisni.org.ua'', ''cat:poliski'', ''cat:socialno-pobutovi'', ''Пісні з Полісся'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_248614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_248614','Ой да понад Дунай глибокий','Ой да понад Дунай глибокий росте терень вісокий.
Гей, гей, ой да люлі! Росте терень вісокий.

Ой да із под того тереня вішла вдова молода.
Гей, гей, ой да люлі! Вішла вдова молода.

Ой да вішла вдова молода, да й вінесла два сина.
Гей, гей, ой да люлі! Да й вінесла два сина.

Ох вона вінесла два сина: Іванюшу й Василя.
Гей, гей, ой да люлі! Іванюшу й Василя.

Ой да Іванюшу й Василя в чорний китай сповіла.
Гей, гей, ой да люлі! В чорний китай сповіла.

Ой да в чорний китай сповіла, да й на Дунай пустіла!
Гей, гей, ой да люлі! Да й на Дунай пустіла!

Ой да ти тихесенькой Дунай, моїх дєток колихай!
Гей, гей, ой да люлі! Моїх дєток коликай!

Ой да ти жовтенький пісочок, годуй моїх діточок!
Гей, гей, ой да люлі! Годуй моїх діточок!

Ой да ти, сухенька осочка, давай дєткам молочка!
Гей, гей, ой да люлі! Давай дєткам молочка!

Ой да ти тихенький очерет, вари дєткам вечерять
Гей, гей, ой да люлі! Вари дєткам вечерять!

Ой да на двадцат первом году вішла вдова по воду.
Гей, гей, ой да люлі! Вішла вдова по воду.

Ой да стала вдова воду брать, став кораблік пудпливать.
Гей, гей, ой да люлі! Став кораблік пудпливать.

Ой да і на тому кораблі сидять хлопці-молодці.
Гей, гей, ой да люлі! Сидять хлопці-молодці.

Ой да йеден книжку чітає, другий вдови пітає:
Гей, гей, ой да люлі! Другий вдови пітає:

Ой да ти, удово, удова, чи пайдьош ти за мєня?
Гей, гей, ой да люлі! Чи пайдьош ти за мєня?

Ой да я за тебе сама йду, за другого дочку шлю!
Гей, гей, ой да люлі! За другого дочку шлю!

Ой да ти удова, удова, дурна в тебе голова!
Гей, гей, ой да люлі! Дурна в тебе голова!

Ой да ти за сина сама йдеш, а за брата дочку шлеш!
Гей, гей, ой да люлі! А за брата дочку шлеш!

Ой да який тепер світ настав, що брат сестру заміж взяв!
Гей, гей, ой да люлі! Що брат сестру заміж взяв!

Ой да яка тепер годіна, що йде мати за сина!
Гей, гей, ой да люлі! Що йде мати за сина!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_248614_l1','pisniua_248614','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2485495';
DELETE FROM song_versions WHERE song_id = 'pisniua_2485495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2485495';
DELETE FROM songs WHERE id = 'pisniua_2485495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2485495','Янголи','Музика: Юлія Фурдуй Слова: Юлія Фурдуй','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В твоїх очах я бачу світло і любов,
В твоїх очах я бачу щирі мрії...
За що ти, друже, проливаєш свою кров
В часи жахливі?.. Ці часи жахливі...

Приспів:
Янголи летять до неба!.. Янголи!..
І повернути неможливо їх!..
Життя, як нитка, обірвалось...
Втратили!.. Ми пам''ятаєм всіх!..
Ми пам''ятаєм всіх!..
Янголи летять до неба!.. Янголи!..
І повернути неможливо їх!..
Життя, як нитка, обірвалось...
Втратили!.. Ми пам''ятаєм всіх!..
Ми будем пам''ятати всіх!..

Я пам''ятаю поруч твій останній крок...
Я пам''ятаю посмішку та щирість...
Навіщо забирати тебе не в свій строк?..
Скажи на милість!.. Ну, скажи на милість!..

Приспів.

Янголи летять до неба!.. Янголи!..
І повернути неможливо їх!..
Життя, як нитка, обірвалось...
Втратили!.. Ми пам''ятаєм всіх!..
Ми пам''ятаєм всіх!..
Янголи летять до неба!.. Янголи!..
І повернути неможливо їх!..
Життя, як нитка, обірвалось...
Втратили!.. Ми пам''ятаєм всіх!..','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2485495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2485495','Янголи','В твоїх очах я бачу світло і любов,
В твоїх очах я бачу щирі мрії...
За що ти, друже, проливаєш свою кров
В часи жахливі?.. Ці часи жахливі...

Приспів:
Янголи летять до неба!.. Янголи!..
І повернути неможливо їх!..
Життя, як нитка, обірвалось...
Втратили!.. Ми пам''ятаєм всіх!..
Ми пам''ятаєм всіх!..
Янголи летять до неба!.. Янголи!..
І повернути неможливо їх!..
Життя, як нитка, обірвалось...
Втратили!.. Ми пам''ятаєм всіх!..
Ми будем пам''ятати всіх!..

Я пам''ятаю поруч твій останній крок...
Я пам''ятаю посмішку та щирість...
Навіщо забирати тебе не в свій строк?..
Скажи на милість!.. Ну, скажи на милість!..

Приспів.

Янголи летять до неба!.. Янголи!..
І повернути неможливо їх!..
Життя, як нитка, обірвалось...
Втратили!.. Ми пам''ятаєм всіх!..
Ми пам''ятаєм всіх!..
Янголи летять до неба!.. Янголи!..
І повернути неможливо їх!..
Життя, як нитка, обірвалось...
Втратили!.. Ми пам''ятаєм всіх!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2485495_l1','pisniua_2485495','YouTube','https://www.youtube.com/watch?v=cKUBXnPHnHA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2486522';
DELETE FROM song_versions WHERE song_id = 'pisniua_2486522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2486522';
DELETE FROM songs WHERE id = 'pisniua_2486522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2486522','Спи, котику милий','Музика: Олег Берестовий Слова: Олег Берестовий','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Приспів:
Спи, котику милий,      |
Працюють Збройні Сили!  |
У пікселі люди - герої, |
Вони щохвилини з тобою! | (2)

Сонечко сідає, ніч наступає,
Сон солодкий тебе ніжно обіймає,
Хай тобі насняться всі наші мрії,
Стануть реальними всі наші надії:
Світанок в Криму із яскравими зорями,
Троянди Донецьку з його териконами,
Харківські вулиці з цілими вікнами,
Проспекти Херсону, водою незмитими!
Як стиглу черешню їмо в Мелітополі,
І вже триколорів нема в Севастополі.
Все буде так, а поки ти спи,
Спи, котику, спи!..

Приспів.

Уяви: на Азовсталі запущені домени,
Знову концерт під Новою Каховкою,
Дивимось матч Десни у Чернігові,
Бачу всі пляжі Одеси відкритими!
Чиста вода знову є в Миколаєві,
Бориспіль відкрито, всі рейси за графіком,
Буча, Бахмут, Лисичанськ відбудовано!
Все буде так, а поки ти спи!..

Приспів.

Спи, котику милий,
Працюють Збройні Сили!
Не Marvel, Dіce та ковбої,
А в пікселі супергерої!','[''pisni.org.ua'', ''cat:devoted'', ''cat:kolyskovi'', ''cat:pro-ditey'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Колискові'', ''Пісні про любов до дітей'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2486522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2486522','Спи, котику милий','Приспів:
Спи, котику милий,      |
Працюють Збройні Сили!  |
У пікселі люди - герої, |
Вони щохвилини з тобою! | (2)

Сонечко сідає, ніч наступає,
Сон солодкий тебе ніжно обіймає,
Хай тобі насняться всі наші мрії,
Стануть реальними всі наші надії:
Світанок в Криму із яскравими зорями,
Троянди Донецьку з його териконами,
Харківські вулиці з цілими вікнами,
Проспекти Херсону, водою незмитими!
Як стиглу черешню їмо в Мелітополі,
І вже триколорів нема в Севастополі.
Все буде так, а поки ти спи,
Спи, котику, спи!..

Приспів.

Уяви: на Азовсталі запущені домени,
Знову концерт під Новою Каховкою,
Дивимось матч Десни у Чернігові,
Бачу всі пляжі Одеси відкритими!
Чиста вода знову є в Миколаєві,
Бориспіль відкрито, всі рейси за графіком,
Буча, Бахмут, Лисичанськ відбудовано!
Все буде так, а поки ти спи!..

Приспів.

Спи, котику милий,
Працюють Збройні Сили!
Не Marvel, Dіce та ковбої,
А в пікселі супергерої!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2486522_l1','pisniua_2486522','YouTube','https://www.youtube.com/watch?v=HFRFXfkStXg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2487293';
DELETE FROM song_versions WHERE song_id = 'pisniua_2487293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2487293';
DELETE FROM songs WHERE id = 'pisniua_2487293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2487293','Коли ми разом','Музика: Ростислав Радзишевський Слова: Ростислав Радзишевський. Виконує: Оксана Білозір','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У світі пустка, як тебе немає,
І світ німіє, коли ти мовчиш...
Лише тоді душа моя співає,
Як ти зі мною до зірок летиш!..
Відчути щастя в піднебесній тиші
Тоді вдається, коли разом ми!
Тоді в гармонії серця і душі
Тримають світ чарівними крильми!

Приспів:
Коли ми разом, настає весна!       |
Коли ми разом, зацвітають квіти!   |
Коли ми разом, спів сердець лунає! |
Коли ми разом, нас не розлучить!   | (2)

Одна лиш думка, що ми будем разом,
І віддалі долає ця розлука...
А твої очі - то дороговкази
І магічна сила ніжних твоїх рук!..
Життя дорога повна суєтою,
У даль біжать, біжать кудись літа...
Мені ж так завжди солодко з тобою,
Коли вогонь любові огорта!..

Приспів.

Нас не розлучить!..','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2487293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2487293','Коли ми разом','У світі пустка, як тебе немає,
І світ німіє, коли ти мовчиш...
Лише тоді душа моя співає,
Як ти зі мною до зірок летиш!..
Відчути щастя в піднебесній тиші
Тоді вдається, коли разом ми!
Тоді в гармонії серця і душі
Тримають світ чарівними крильми!

Приспів:
Коли ми разом, настає весна!       |
Коли ми разом, зацвітають квіти!   |
Коли ми разом, спів сердець лунає! |
Коли ми разом, нас не розлучить!   | (2)

Одна лиш думка, що ми будем разом,
І віддалі долає ця розлука...
А твої очі - то дороговкази
І магічна сила ніжних твоїх рук!..
Життя дорога повна суєтою,
У даль біжать, біжать кудись літа...
Мені ж так завжди солодко з тобою,
Коли вогонь любові огорта!..

Приспів.

Нас не розлучить!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2487293_l1','pisniua_2487293','YouTube','https://www.youtube.com/watch?v=mcAE0y0DDNI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2489828';
DELETE FROM song_versions WHERE song_id = 'pisniua_2489828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2489828';
DELETE FROM songs WHERE id = 'pisniua_2489828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2489828','Рушничок','Музика: Оксана Пічугіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вишивала мені мама рушничок,
Шовком квіточки на ньому гаптувала.
Збережи його для своїх діточок,
То є доню, оберіг, мені казала.

Приспів:
Простелю свій рушничок,
Немов стежиноньку,
Ніби доленьку щасливу в майбуття!
Мама вишила і пташку, і калиноньку, |
І мережкою - доріжку у життя!       | (2)

Вишивала мені мама рушничок,
Посміхалася і пісеньку співала.
Простягнула вранці диво з квіточок,
І у щічку ніжно так поцілувала!

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2489828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2489828','Рушничок','Вишивала мені мама рушничок,
Шовком квіточки на ньому гаптувала.
Збережи його для своїх діточок,
То є доню, оберіг, мені казала.

Приспів:
Простелю свій рушничок,
Немов стежиноньку,
Ніби доленьку щасливу в майбуття!
Мама вишила і пташку, і калиноньку, |
І мережкою - доріжку у життя!       | (2)

Вишивала мені мама рушничок,
Посміхалася і пісеньку співала.
Простягнула вранці диво з квіточок,
І у щічку ніжно так поцілувала!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2489828_l1','pisniua_2489828','YouTube','https://www.youtube.com/watch?v=B5dRM56JpXI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2488716';
DELETE FROM song_versions WHERE song_id = 'pisniua_2488716';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2488716';
DELETE FROM songs WHERE id = 'pisniua_2488716';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2488716','Подружки','(Дві половинки). Музика: Олександр Єрмолов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ти завжди зі мною!
Я ділюсь секретами з тобою!
А іще скажу тобі на вушко,
Що моя найкраща - ти - подружка!
Ми в чотири ніжки
Подолаємо усі доріжки,
І завжди готові ми до бою:
Кігтиків аж двадцять в нас з тобою!

Приспів:
Ми - наче дві половинки
Одного пазла, однієї картинки!
Ми - дві смішинки, дві зорі,
Дві сніжинки, що на долоньки нам сіда.
Разом даємо ми здачі,
Разом долаємо життєві невдачі!
І нам в дорогу світить сонячний зайчик,
Що із-за хмарки вигляда...

Нас лиш забавляє,
Що хлоп''ята нас не розрізняють.
Їм важка задача не по силі -
Ми ж такі розумні і красиві!
Вам ми скажем чесно:
Схожі ми завжди, неначе сестри.
Якщо закохаєтесь, то знайте,
Заміж ви обох нас забирайте!

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2488716'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2488716','Подружки','Ти завжди зі мною!
Я ділюсь секретами з тобою!
А іще скажу тобі на вушко,
Що моя найкраща - ти - подружка!
Ми в чотири ніжки
Подолаємо усі доріжки,
І завжди готові ми до бою:
Кігтиків аж двадцять в нас з тобою!

Приспів:
Ми - наче дві половинки
Одного пазла, однієї картинки!
Ми - дві смішинки, дві зорі,
Дві сніжинки, що на долоньки нам сіда.
Разом даємо ми здачі,
Разом долаємо життєві невдачі!
І нам в дорогу світить сонячний зайчик,
Що із-за хмарки вигляда...

Нас лиш забавляє,
Що хлоп''ята нас не розрізняють.
Їм важка задача не по силі -
Ми ж такі розумні і красиві!
Вам ми скажем чесно:
Схожі ми завжди, неначе сестри.
Якщо закохаєтесь, то знайте,
Заміж ви обох нас забирайте!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2488716_l1','pisniua_2488716','YouTube','https://www.youtube.com/watch?v=hJrtudITwYk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2488716_l2','pisniua_2488716','YouTube','https://www.youtube.com/watch?v=HHn8v9NmNaI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2493251';
DELETE FROM song_versions WHERE song_id = 'pisniua_2493251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2493251';
DELETE FROM songs WHERE id = 'pisniua_2493251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2493251','На старій лавці','Музика: Олександр Андрєєв, Володимир Качулло Слова: Володимир Качулло','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сам тепер чекаю на дощі...
Зараз на дзвінок навіть немає шансів...
Все це тримаю у собі...
Мій дитинства друг, як мені тебе знайти?
Пам''ятаєш, світ ми хотіли підкорити?
Давай, як раніше, разом вийдемо у двір...
Знаю, мабуть, ти вже не згадуєш свій дім,
Та між нами прірва, яку важко обійти...
Наші номери - це лише гудки,
Спогади підкажуть, де нас можна віднайти...

Все мабуть не з нами було,
Разом ми грали в футбол,
Гроші останні на їжу,
Що візьмемо на ставок...
Погляд дитячий і щирий,
Ребра одні та і шкіра.
Шкода, світ має годинник,
Знаєш, тепер тут один я...

Приспів:
На старій лавці
Сам тепер чекаю на дощі...
З вікон той самий запах борщів,
Що тобі варила мати,
Мабуть, вже не пам''ятаєш, як її звати...
На старій лавці...
Років скільки нам - не рахують пальці,
Крики до вікна долітали вранці,
Зараз на дзвінок навіть немає шансів...

Хто є поруч? Друзі танули...
Коли боляче - інші справи є...
Йдуть роки - мабуть зрадили,
Обіцянки всі не є правилом...
Ображалися на дрібниці ми,
Та дорослий світ досі є сліпим,
Ми ще разом всі, коли бачу сни...
Там на вас чекав, ви на мене - ні...
Була підтримка,
Коли ми разом ковтали горілку,
Страшна є сила, море в коліна
Хвилями б''є в незалізну печінку...
Дорослі люди - це лише діти
З купою комплексів. Нащо освіта,
Коли душа наша майже вбита?..
Світ, я прошу мене розбудити!
Відведи мене туди, коли був я молодим,
Де усі ми з вами мали крила...
Було легко догори, тепер тут сиджу один,
Та не відчуваю в собі сили...

Приспів.

Сам тепер чекаю на дощі...
З вікон той самий запах борщів,
Що тобі варила мати,
Мабуть, вже не пам''ятаєш, як її звати...','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2493251'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2493251','На старій лавці','Сам тепер чекаю на дощі...
Зараз на дзвінок навіть немає шансів...
Все це тримаю у собі...
Мій дитинства друг, як мені тебе знайти?
Пам''ятаєш, світ ми хотіли підкорити?
Давай, як раніше, разом вийдемо у двір...
Знаю, мабуть, ти вже не згадуєш свій дім,
Та між нами прірва, яку важко обійти...
Наші номери - це лише гудки,
Спогади підкажуть, де нас можна віднайти...

Все мабуть не з нами було,
Разом ми грали в футбол,
Гроші останні на їжу,
Що візьмемо на ставок...
Погляд дитячий і щирий,
Ребра одні та і шкіра.
Шкода, світ має годинник,
Знаєш, тепер тут один я...

Приспів:
На старій лавці
Сам тепер чекаю на дощі...
З вікон той самий запах борщів,
Що тобі варила мати,
Мабуть, вже не пам''ятаєш, як її звати...
На старій лавці...
Років скільки нам - не рахують пальці,
Крики до вікна долітали вранці,
Зараз на дзвінок навіть немає шансів...

Хто є поруч? Друзі танули...
Коли боляче - інші справи є...
Йдуть роки - мабуть зрадили,
Обіцянки всі не є правилом...
Ображалися на дрібниці ми,
Та дорослий світ досі є сліпим,
Ми ще разом всі, коли бачу сни...
Там на вас чекав, ви на мене - ні...
Була підтримка,
Коли ми разом ковтали горілку,
Страшна є сила, море в коліна
Хвилями б''є в незалізну печінку...
Дорослі люди - це лише діти
З купою комплексів. Нащо освіта,
Коли душа наша майже вбита?..
Світ, я прошу мене розбудити!
Відведи мене туди, коли був я молодим,
Де усі ми з вами мали крила...
Було легко догори, тепер тут сиджу один,
Та не відчуваю в собі сили...

Приспів.

Сам тепер чекаю на дощі...
З вікон той самий запах борщів,
Що тобі варила мати,
Мабуть, вже не пам''ятаєш, як її звати...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2493251_l1','pisniua_2493251','YouTube','https://www.youtube.com/watch?v=KT9yLw1iQGM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2490797';
DELETE FROM song_versions WHERE song_id = 'pisniua_2490797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2490797';
DELETE FROM songs WHERE id = 'pisniua_2490797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2490797','Рогань','Музика: Євген Турчинов Слова: Сергій Жадан','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Святі не мали сумнівів і жодних вагань:
З того боку світу починається Рогань.
Там, де межа, де горить окружна,
Така тривожна, дивовижна, затяжна...
Там сонце сходить над ранковим кварталом,
Там віра верховодить над баблом і капіталом,
Дорога праведника - довга і терниста,
Мають хоругви над брамами міста.

Приспів:
Ми всі - місцеві, ми всі з Рогані,
А ми тут, на Рогані, не хороші, й не погані!
Не те, щоб ми - понтові, і не те, щоби прохані,
Наші квартали - не місце для погані!

Рогань!..

Місто оточене мурами, ровами,
Сяють архангели над нашими церквами,
Над мечетями, костьолами й палацами мурмонів
Віра виростає із любові та гормонів.
Місто тримають комерсанти і закони,
Шаряться над містом біси і дракони.
Славлять життя людожери і вегани,
Хами-обригани і футбольні хулігани.

Приспів. (2)

Рогань!..

Біп-біп, зоря - всім подорожнім:
Сумління не повинне бути зайвим
І порожнім!
Твориться добро міцними кулаками,
З нашими дітьми і нашими жінками!

Приспів.','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2490797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2490797','Рогань','Святі не мали сумнівів і жодних вагань:
З того боку світу починається Рогань.
Там, де межа, де горить окружна,
Така тривожна, дивовижна, затяжна...
Там сонце сходить над ранковим кварталом,
Там віра верховодить над баблом і капіталом,
Дорога праведника - довга і терниста,
Мають хоругви над брамами міста.

Приспів:
Ми всі - місцеві, ми всі з Рогані,
А ми тут, на Рогані, не хороші, й не погані!
Не те, щоб ми - понтові, і не те, щоби прохані,
Наші квартали - не місце для погані!

Рогань!..

Місто оточене мурами, ровами,
Сяють архангели над нашими церквами,
Над мечетями, костьолами й палацами мурмонів
Віра виростає із любові та гормонів.
Місто тримають комерсанти і закони,
Шаряться над містом біси і дракони.
Славлять життя людожери і вегани,
Хами-обригани і футбольні хулігани.

Приспів. (2)

Рогань!..

Біп-біп, зоря - всім подорожнім:
Сумління не повинне бути зайвим
І порожнім!
Твориться добро міцними кулаками,
З нашими дітьми і нашими жінками!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2490797_l1','pisniua_2490797','YouTube','https://www.youtube.com/watch?v=HXNO7Z9D5n0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_249199';
DELETE FROM song_versions WHERE song_id = 'pisniua_249199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_249199';
DELETE FROM songs WHERE id = 'pisniua_249199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_249199','Біля парадного входу','Музика: Тризубий Стас Слова: Тризубий Стас. Виконує: Тризубий Стас','uk','ukraine_1991',NULL,NULL,'http://community.livejournal.com/kobzari/',NULL,'Небо над Києом вкрилося хмарами,
вітер під ковнір з дощем забивається,
натовп стотисячний трійками-парами
під парасолями гуртом ховається.
Нас звідусіль оточили омонівці,
ми стоїмо під верховною радою.
Може, покажуть мене в телехроніці
із кулеметом і кума з гарматою

Давай, Микола, чарку наливай.
За Україну вип''ємо давай.
За наш тризуб. За наші прапори.
Давай здіймемо вище келих догори.

Вип''єм, Миколо, за них, недоторканих,
ми ж із тобою свідомо їх вибрали.
Хай вони знають, що ми неприборкані,
отже, вони там нічого не виграли.
Чути з динаміків мову російськую,
з нашого Ющенка знову знущаються,
а доповідач аж слиною бризкає
і репетує, дармено старається!

Давай, Миколо, ще один
і за Палац і за Кабмін,
за податкову, Білий Дім,
щоб було добре їм усім.
Вони також там п''ють за нас,
уболівають кожен час
за те, що мокнем під дощем
і далі й кроку не підем.

Чи то монархія, чи олігархія?
Що за держава в нас, де опинилися?
Вже під москвою вся наша єпархія.
Може, католики мало молилися?
Влада говорить: нема опозиції,
лиш хулігани й порядку порушники.
Це проти них тут загони міліції,
"Беркут" з "Титаном", а ще й СБУшники

Давай, Микола, чарку наливай.
За Україну вип''ємо давай.
За наш тризуб. За наші прапори.
Давай здіймемо вище келих догори.

Ми не для того усі тут зібралися,
щоб по асфальті постукати каскою.
Вже у політику досить награлися.
Ми це припиним з Божою ласкою.
Небо над Києвом вкрилося хмарами
вітер під ковнір з дощем забивається,
натовп стотисячний трійками-парами
під парасолями...','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_249199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_249199','Біля парадного входу','Небо над Києом вкрилося хмарами,
вітер під ковнір з дощем забивається,
натовп стотисячний трійками-парами
під парасолями гуртом ховається.
Нас звідусіль оточили омонівці,
ми стоїмо під верховною радою.
Може, покажуть мене в телехроніці
із кулеметом і кума з гарматою

Давай, Микола, чарку наливай.
За Україну вип''ємо давай.
За наш тризуб. За наші прапори.
Давай здіймемо вище келих догори.

Вип''єм, Миколо, за них, недоторканих,
ми ж із тобою свідомо їх вибрали.
Хай вони знають, що ми неприборкані,
отже, вони там нічого не виграли.
Чути з динаміків мову російськую,
з нашого Ющенка знову знущаються,
а доповідач аж слиною бризкає
і репетує, дармено старається!

Давай, Миколо, ще один
і за Палац і за Кабмін,
за податкову, Білий Дім,
щоб було добре їм усім.
Вони також там п''ють за нас,
уболівають кожен час
за те, що мокнем під дощем
і далі й кроку не підем.

Чи то монархія, чи олігархія?
Що за держава в нас, де опинилися?
Вже під москвою вся наша єпархія.
Може, католики мало молилися?
Влада говорить: нема опозиції,
лиш хулігани й порядку порушники.
Це проти них тут загони міліції,
"Беркут" з "Титаном", а ще й СБУшники

Давай, Микола, чарку наливай.
За Україну вип''ємо давай.
За наш тризуб. За наші прапори.
Давай здіймемо вище келих догори.

Ми не для того усі тут зібралися,
щоб по асфальті постукати каскою.
Вже у політику досить награлися.
Ми це припиним з Божою ласкою.
Небо над Києвом вкрилося хмарами
вітер під ковнір з дощем забивається,
натовп стотисячний трійками-парами
під парасолями...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_249199_l1','pisniua_249199','YouTube','https://www.youtube.com/watch?v=DwKqPgt7oDY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2492073';
DELETE FROM song_versions WHERE song_id = 'pisniua_2492073';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2492073';
DELETE FROM songs WHERE id = 'pisniua_2492073';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2492073','Синам УПА','Музика: Тарас Житинський Слова: Тарас Житинський','uk','ukraine_1991',NULL,'2023','Літопис авторської пісні України №57 (821) 2023 рік.',NULL,'Під буйним дубом при дорозі,
В глибоких думах дід сидів,
Сльозу ковтнув згадавши славу,
Пішовших до УПА синів.

Найменший син 15 років,
Просився з батьком на війну,
Старий сказав, ідучи з дому:
Малий ще, сину, не візьму!

Та все ж таки пішов із батьком,
В УПА найменший його син,
А мати Господа благала,
Щоб повернувся хоч один!..','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2492073'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2492073','Синам УПА','Під буйним дубом при дорозі,
В глибоких думах дід сидів,
Сльозу ковтнув згадавши славу,
Пішовших до УПА синів.

Найменший син 15 років,
Просився з батьком на війну,
Старий сказав, ідучи з дому:
Малий ще, сину, не візьму!

Та все ж таки пішов із батьком,
В УПА найменший його син,
А мати Господа благала,
Щоб повернувся хоч один!..');
DELETE FROM song_links WHERE song_id = 'pisniua_2489515';
DELETE FROM song_versions WHERE song_id = 'pisniua_2489515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2489515';
DELETE FROM songs WHERE id = 'pisniua_2489515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2489515','Миколай поспішає','Музика: Микола Ведмедеря Слова: Юлія Хандожинська','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Темна нічка за вікном,
Сніг мете, мороз щипає,
Миколай-дідусь з мішком
До малечі поспішає!

У його великій торбі
Подарунків не злічить!
Будем, будем, будем, будем
З дідусем усі дружить!

Він, тихесенько добравшись,
Всі гостинці покладе,
Ще й ялиночку для втіхи
В кожній хаті прибере!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2489515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2489515','Миколай поспішає','Темна нічка за вікном,
Сніг мете, мороз щипає,
Миколай-дідусь з мішком
До малечі поспішає!

У його великій торбі
Подарунків не злічить!
Будем, будем, будем, будем
З дідусем усі дружить!

Він, тихесенько добравшись,
Всі гостинці покладе,
Ще й ялиночку для втіхи
В кожній хаті прибере!');
DELETE FROM song_links WHERE song_id = 'pisniua_2493961';
DELETE FROM song_versions WHERE song_id = 'pisniua_2493961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2493961';
DELETE FROM songs WHERE id = 'pisniua_2493961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2493961','Біла зима','Музика: Ірина Доля Слова: Ірина Доля','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Білим по білому сипле
Біла-пребіла зима!
Більше ніколи не треба
Нам сумувати дарма!
Білого-білого снігу
Вітром з небес нанесло,
Тільки тепер нам здається,
Ніби так завжди було!

Приспів:
Зима! Зима!             |
Від Різдва до Різдва! - |
Так швидко минає час!   |
Зима! Зима!             |
Від Різдва до Різдва! - |
Все буде добре у нас!   | (2)

Білі-пребілі дороги,
Білі-пребілі міста, -
Вже підійшли на пороги
Білі-пребілі свята!
Білі несуть заметілі
Рій новорічних казок,
Десь Миколай собі мостить
Білий-пребілий візок!

Приспів.

Речитатив:
Хто? Хто це такий сумний на різдвяні свята?
Нумо, веселитися, хлопці і дівчата!
Усі довкола стаємо в коло,
Сумувать не будемо ми більше ніколи!
Одному злому карлику щось в голову зайшло,
Хотів він в нас поцупити він свята і Різдво.
Йому Різдва не бачити, як своїх власних вух,
Бо є у нас ялиночка і на столі дідух!
Спів! Сміх! Крик! Давай з нами!
Вітаєм всіх зі святами!
З усіх усюд лунає коляда!
Най-най-на-на! Нарешті зима!

Приспів.','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:krasa-pryrody'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Колядки'', ''Пісні про красу природи'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2493961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2493961','Біла зима','Білим по білому сипле
Біла-пребіла зима!
Більше ніколи не треба
Нам сумувати дарма!
Білого-білого снігу
Вітром з небес нанесло,
Тільки тепер нам здається,
Ніби так завжди було!

Приспів:
Зима! Зима!             |
Від Різдва до Різдва! - |
Так швидко минає час!   |
Зима! Зима!             |
Від Різдва до Різдва! - |
Все буде добре у нас!   | (2)

Білі-пребілі дороги,
Білі-пребілі міста, -
Вже підійшли на пороги
Білі-пребілі свята!
Білі несуть заметілі
Рій новорічних казок,
Десь Миколай собі мостить
Білий-пребілий візок!

Приспів.

Речитатив:
Хто? Хто це такий сумний на різдвяні свята?
Нумо, веселитися, хлопці і дівчата!
Усі довкола стаємо в коло,
Сумувать не будемо ми більше ніколи!
Одному злому карлику щось в голову зайшло,
Хотів він в нас поцупити він свята і Різдво.
Йому Різдва не бачити, як своїх власних вух,
Бо є у нас ялиночка і на столі дідух!
Спів! Сміх! Крик! Давай з нами!
Вітаєм всіх зі святами!
З усіх усюд лунає коляда!
Най-най-на-на! Нарешті зима!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2493961_l1','pisniua_2493961','YouTube','https://www.youtube.com/watch?v=0-fQSDKJKTE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2493665';
DELETE FROM song_versions WHERE song_id = 'pisniua_2493665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2493665';
DELETE FROM songs WHERE id = 'pisniua_2493665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2493665','Чекаємо святого Миколая','Музика: Галина Заботіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Поле і гай
Вже сніжок вкриває,
І Миколай
В гості поспішає!

Приспів:
Тим, хто добре
Робить все,
Слуха тата й неньку,
Подарунки принесе
Уночі тихенько!

Зірочка, сяй,
У святкову днину!
Хай Миколай
Прийде в Україну!

Приспів.

Хай в кожен дім
За молитву щиру,
Дасть нам усім
Радості і миру!

Приспів.

Подарунки принесе
Уночі тихенько!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2493665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2493665','Чекаємо святого Миколая','Поле і гай
Вже сніжок вкриває,
І Миколай
В гості поспішає!

Приспів:
Тим, хто добре
Робить все,
Слуха тата й неньку,
Подарунки принесе
Уночі тихенько!

Зірочка, сяй,
У святкову днину!
Хай Миколай
Прийде в Україну!

Приспів.

Хай в кожен дім
За молитву щиру,
Дасть нам усім
Радості і миру!

Приспів.

Подарунки принесе
Уночі тихенько!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2493665_l1','pisniua_2493665','YouTube','https://www.youtube.com/watch?v=YrttAacFcjk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2493665_l2','pisniua_2493665','YouTube','https://www.youtube.com/watch?v=UvNe9NBR8sw','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2492461';
DELETE FROM song_versions WHERE song_id = 'pisniua_2492461';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2492461';
DELETE FROM songs WHERE id = 'pisniua_2492461';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2492461','Вистоїмо','Музика: Anton Chilibi Слова: Anton Chilibi, Козак Залізняк, Козак Сіромаха','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Щоб не було - вистоїмо,
Історію перевернемо!
Боже, врятуй, покажи шлях!
Існувати дай на своїх полях!..
Щоб не було - вистоїмо,
Історію перевернемо!
Боже, врятуй, покажи шлях!
Існувати дай на Твоїх полях!..

Кобза грає, серце не болить,
Кобза знає, як людей зцілить,
Кобза плаче за своїх людей,
Ще, козаче прийде світлий день!

Приспів.

Не падай духом, брате,
Бо волю не забрати!
Вона в нас по судинах
Тече із середини!
Не падай духом, сестро,
Отець наший небесний
Все чує і все бачить,
Ми вистоїм одначе!
Нас розкидало хто де,  |
Але ми об''єднані,      |
Всередині відповідь є! |
Нумо, пізнаймо себе!   | (2)

Приспів.

Щоб не було!.. Щоб не було!..','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2492461'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2492461','Вистоїмо','Приспів:
Щоб не було - вистоїмо,
Історію перевернемо!
Боже, врятуй, покажи шлях!
Існувати дай на своїх полях!..
Щоб не було - вистоїмо,
Історію перевернемо!
Боже, врятуй, покажи шлях!
Існувати дай на Твоїх полях!..

Кобза грає, серце не болить,
Кобза знає, як людей зцілить,
Кобза плаче за своїх людей,
Ще, козаче прийде світлий день!

Приспів.

Не падай духом, брате,
Бо волю не забрати!
Вона в нас по судинах
Тече із середини!
Не падай духом, сестро,
Отець наший небесний
Все чує і все бачить,
Ми вистоїм одначе!
Нас розкидало хто де,  |
Але ми об''єднані,      |
Всередині відповідь є! |
Нумо, пізнаймо себе!   | (2)

Приспів.

Щоб не було!.. Щоб не було!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2492461_l1','pisniua_2492461','YouTube','https://www.youtube.com/watch?v=SiPawQz5SJA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2490596';
DELETE FROM song_versions WHERE song_id = 'pisniua_2490596';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2490596';
DELETE FROM songs WHERE id = 'pisniua_2490596';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2490596','Танчик Степанчик','Музика: Олена Мачайло Слова: Зоряна Лісевич','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Український Танчик
На ім''я Степанчик
Їде-їде між полів,
Проганяє ворогів!

Приспів:
Та-та-та-та-танчик!  |
Танчик Степанчик!    |
Прапор на вершині!   |
Слава Україні!       | (2)

Танчик наш, Степанчик -
Па-па-партизанчик,
Він у засідку засів
І лякає ворогів!

Приспів.

Слава Україні!
Героям слава!
Слава Збройним
Силам України!

Вороги тікають,
П''ятками кивають,
І зникають на бігу! -
Слава нашим ЗСУ!
Та-та-та-та-танчик!  |
Танчик Степанчик     |
Служить Батьківщині! |
Слава Україні!       | (4)','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2490596'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2490596','Танчик Степанчик','Український Танчик
На ім''я Степанчик
Їде-їде між полів,
Проганяє ворогів!

Приспів:
Та-та-та-та-танчик!  |
Танчик Степанчик!    |
Прапор на вершині!   |
Слава Україні!       | (2)

Танчик наш, Степанчик -
Па-па-партизанчик,
Він у засідку засів
І лякає ворогів!

Приспів.

Слава Україні!
Героям слава!
Слава Збройним
Силам України!

Вороги тікають,
П''ятками кивають,
І зникають на бігу! -
Слава нашим ЗСУ!
Та-та-та-та-танчик!  |
Танчик Степанчик     |
Служить Батьківщині! |
Слава Україні!       | (4)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2490596_l1','pisniua_2490596','YouTube','https://www.youtube.com/watch?v=ncI0MaJqgxM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2494993';
DELETE FROM song_versions WHERE song_id = 'pisniua_2494993';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2494993';
DELETE FROM songs WHERE id = 'pisniua_2494993';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2494993','Щасливе дитинство','Музика: Ольга Маєвська Слова: РОЯ','uk','ukraine_1991',NULL,NULL,'авторське подання','Пісню виконує Ольга Маєвська (альбом: Пісні для дітей).','Щасливе дитинство - це тепла хатина,
В якій у любові зростає дитина,
Це мамина пісня, бабусина казка,       |
Любов усіх рідних, Господняя ласка!..  | (2)

Щасливе дитинство - це друзів багато,
З якими і будні минають, як свято!
Це щедрі сюрпризи і здійснені мрії,    |
Казкові бажання і щирі надії!..        | (2)

Щасливе дитинство - в щасливій родині,
Яка все найкраще плекає в дитині!
Благаєм, дорослі, зробіть все можливе, |
Щоб квітло у світі дитинство щасливе!  | (2)','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2494993'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2494993','Щасливе дитинство','Щасливе дитинство - це тепла хатина,
В якій у любові зростає дитина,
Це мамина пісня, бабусина казка,       |
Любов усіх рідних, Господняя ласка!..  | (2)

Щасливе дитинство - це друзів багато,
З якими і будні минають, як свято!
Це щедрі сюрпризи і здійснені мрії,    |
Казкові бажання і щирі надії!..        | (2)

Щасливе дитинство - в щасливій родині,
Яка все найкраще плекає в дитині!
Благаєм, дорослі, зробіть все можливе, |
Щоб квітло у світі дитинство щасливе!  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2494993_l1','pisniua_2494993','YouTube','https://www.youtube.com/watch?v=DxHWZcfmWMA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2494616';
DELETE FROM song_versions WHERE song_id = 'pisniua_2494616';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2494616';
DELETE FROM songs WHERE id = 'pisniua_2494616';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2494616','Гімн педагога','Музика: Ольга Маєвська Слова: Яна Яковенко','uk','ukraine_1991',NULL,NULL,'авторське подання','Пісню виконує Ольга Маєвська (альбом: Пісні для педагогів).','По саму душу
Рукава закотимо,
Бо наша ціль одна -
Садить і поливать.
І горнеться рілля       |
Ось цими жовторотими    |
Надіями і мріями        |
У тисячі малят!         | (2)

Минуть, злетять роки
І вродить наша нива -
І тисячі сердець
Розсіються по світу!
І з гордістю напишемо   |
В своїм останнім звіті: |
О, Боже, як життя       |
Ми прожили красиво!     | (2)','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2494616'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2494616','Гімн педагога','По саму душу
Рукава закотимо,
Бо наша ціль одна -
Садить і поливать.
І горнеться рілля       |
Ось цими жовторотими    |
Надіями і мріями        |
У тисячі малят!         | (2)

Минуть, злетять роки
І вродить наша нива -
І тисячі сердець
Розсіються по світу!
І з гордістю напишемо   |
В своїм останнім звіті: |
О, Боже, як життя       |
Ми прожили красиво!     | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2494616_l1','pisniua_2494616','YouTube','https://www.youtube.com/watch?v=GYs81arwBa4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2494022';
DELETE FROM song_versions WHERE song_id = 'pisniua_2494022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2494022';
DELETE FROM songs WHERE id = 'pisniua_2494022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2494022','Веселий Новий рік','Музика: Ольга Маєвська Слова: Валентина Малишко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Новий рік! Новий рік
Вже ступає на поріг!
Бути танцям круг ялинки,
Бути пісні, бути грі!
Новий рік! Новий рік,
Ти з яких прийшов доріг?
Розкажи нам, що ти бачив
Що у пам''яті зберіг?

Я - веселий Новий рік,
З дальніх я прийшов доріг!
А тепер в гостях у вас
В гарний день, у добрий час!
Новий рік! Новий рік,
Подаруй нам білий сніг!
На ялиночці ясні
Запали свої вогні!
Новий рік! Новий рік,
Ти, пройшовши сто доріг,
Подаруй дитячий сміх,
Миру, радості на всіх!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2494022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2494022','Веселий Новий рік','Новий рік! Новий рік
Вже ступає на поріг!
Бути танцям круг ялинки,
Бути пісні, бути грі!
Новий рік! Новий рік,
Ти з яких прийшов доріг?
Розкажи нам, що ти бачив
Що у пам''яті зберіг?

Я - веселий Новий рік,
З дальніх я прийшов доріг!
А тепер в гостях у вас
В гарний день, у добрий час!
Новий рік! Новий рік,
Подаруй нам білий сніг!
На ялиночці ясні
Запали свої вогні!
Новий рік! Новий рік,
Ти, пройшовши сто доріг,
Подаруй дитячий сміх,
Миру, радості на всіх!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2494022_l1','pisniua_2494022','YouTube','https://www.youtube.com/watch?v=gH8it9T8z8E','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2495515';
DELETE FROM song_versions WHERE song_id = 'pisniua_2495515';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2495515';
DELETE FROM songs WHERE id = 'pisniua_2495515';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2495515','Ти пішов','Слова: Василь Чопей','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'На гітарі ти грав, разом з нами
Співав, веселився, поступав
Справедливо і чесно весь час.
Але час твій прийшов, ти пішов
І десь там в небесах поселився
І можливо з небес ти тепер
Поглядаєш на нас... Ну, а, час,
Він іде і ніколи назад не вертає,
Бо на грішній землі вже немає святих...
І чомусь самих кращих Господь забирає,
А комусь тут так важко буває без них...

Приспів:
На могилу твою ми підемо
І, щоб там не було, запалимо
Свічку і, поки вона догорить,
Пригадаємо все, що в минуле,
Мов сон промайнуло, і гітари
Твоєї струна, як дзвенить...

І так жаль, що з тобою вже нам
Не дружити, бо тебе поміж нас
Вже сьогодні нема, але пам''ять -
Вона у серцях назавжди буде жити
І дзвеніти гітари твоєї струна!..
Тільки ти не прийдеш, не розкажеш
Чи є ти щасливим, чи панує добро
На тім світі, чи зло?.. Лиш можливо
Колись журавлем в небі сивим
Закружляєш тихенько над нашим селом...

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2495515'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2495515','Ти пішов','На гітарі ти грав, разом з нами
Співав, веселився, поступав
Справедливо і чесно весь час.
Але час твій прийшов, ти пішов
І десь там в небесах поселився
І можливо з небес ти тепер
Поглядаєш на нас... Ну, а, час,
Він іде і ніколи назад не вертає,
Бо на грішній землі вже немає святих...
І чомусь самих кращих Господь забирає,
А комусь тут так важко буває без них...

Приспів:
На могилу твою ми підемо
І, щоб там не було, запалимо
Свічку і, поки вона догорить,
Пригадаємо все, що в минуле,
Мов сон промайнуло, і гітари
Твоєї струна, як дзвенить...

І так жаль, що з тобою вже нам
Не дружити, бо тебе поміж нас
Вже сьогодні нема, але пам''ять -
Вона у серцях назавжди буде жити
І дзвеніти гітари твоєї струна!..
Тільки ти не прийдеш, не розкажеш
Чи є ти щасливим, чи панує добро
На тім світі, чи зло?.. Лиш можливо
Колись журавлем в небі сивим
Закружляєш тихенько над нашим селом...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_2495091';
DELETE FROM song_versions WHERE song_id = 'pisniua_2495091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2495091';
DELETE FROM songs WHERE id = 'pisniua_2495091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2495091','Христос Воскрес','Музика: Ольга Маєвська Слова: Невідомий','uk','ukraine_1991',NULL,NULL,'авторське подання','Пісню виконує Ольга Маєвська (альбом: Пісні для дітей).','Чудовий ранок, сонце світить!
Лунає пісня до небес!
Pадіють вcі: дорослі й діти,
Xристос воскрес! Xристос воскрес!

Який це pанок уpочистий,
Не cтало cмутку, cмуток щез!
I cкрізь летить та cлавна вістка:
Xристос воскрес! Xристос воскрес!

Нехай ця вістка cкрізь лунає,
Заснулий cвіт зворушивсь весь!
Xай людям вcім pозповідає:
Xристос воскрес! Xристос воскрес!

За cмерть Xристову, за cпасіння,
Те, що Він зійшов з небес!
Нехай в це cвято Воскресіння
Cпівають вcі: Xристос воскрес!
Xристос воскрес! Xристос воскрес!
Воїстино воскрес!','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2495091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2495091','Христос Воскрес','Чудовий ранок, сонце світить!
Лунає пісня до небес!
Pадіють вcі: дорослі й діти,
Xристос воскрес! Xристос воскрес!

Який це pанок уpочистий,
Не cтало cмутку, cмуток щез!
I cкрізь летить та cлавна вістка:
Xристос воскрес! Xристос воскрес!

Нехай ця вістка cкрізь лунає,
Заснулий cвіт зворушивсь весь!
Xай людям вcім pозповідає:
Xристос воскрес! Xристос воскрес!

За cмерть Xристову, за cпасіння,
Те, що Він зійшов з небес!
Нехай в це cвято Воскресіння
Cпівають вcі: Xристос воскрес!
Xристос воскрес! Xристос воскрес!
Воїстино воскрес!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2495091_l1','pisniua_2495091','YouTube','https://www.youtube.com/watch?v=NtKqydQMtSQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2496512';
DELETE FROM song_versions WHERE song_id = 'pisniua_2496512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2496512';
DELETE FROM songs WHERE id = 'pisniua_2496512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2496512','Прийшла зима',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Навкруги все стало білим,
І прийшла до нас зима,
Розстелила білий килим,
Білим снігом замела!..
Розстелила білий килим,
Білим снігом замела!..

Скоро, скоро вже у гості
Миколай до нас прийде!
Всім дівчаткам і хлоп''яткам
Подарунки принесе!..
Всім дівчаткам і хлоп''яткам
Подарунки принесе!..','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2496512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2496512','Прийшла зима','Навкруги все стало білим,
І прийшла до нас зима,
Розстелила білий килим,
Білим снігом замела!..
Розстелила білий килим,
Білим снігом замела!..

Скоро, скоро вже у гості
Миколай до нас прийде!
Всім дівчаткам і хлоп''яткам
Подарунки принесе!..
Всім дівчаткам і хлоп''яткам
Подарунки принесе!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2496512_l1','pisniua_2496512','YouTube','https://www.youtube.com/watch?v=UAbjpq135QY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2494395';
DELETE FROM song_versions WHERE song_id = 'pisniua_2494395';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2494395';
DELETE FROM songs WHERE id = 'pisniua_2494395';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2494395','Казочка Різдва','Музика: Галина Заботіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Знають і дорослі, і малята,
В ніч Різдвяну казка ожива,
І співають в небі янголята,
В день святий Господнього Різдва!

Приспів:
Казочка Різдвяна, в гості завітай,
Світлом хай наповниться земля!
Казочка Різдвяна, нам розповідай
Про добро і зло, і про Ісуса-немовля!
Казочка Різдвяна, нам розповідай
Про Ісуса-немовля!

Кришталеві дзвоники заграють,
І, змахнувши білими крильми,
Янголи в таночку закружляють,
Під чарівну музику зими!

Приспів.

Запалає вогник в кожній хаті,
В ніч таку відбудуться дива!
Не важливо: бідні чи багаті -
Всі чекають казочку Різдва!

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2494395'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2494395','Казочка Різдва','Знають і дорослі, і малята,
В ніч Різдвяну казка ожива,
І співають в небі янголята,
В день святий Господнього Різдва!

Приспів:
Казочка Різдвяна, в гості завітай,
Світлом хай наповниться земля!
Казочка Різдвяна, нам розповідай
Про добро і зло, і про Ісуса-немовля!
Казочка Різдвяна, нам розповідай
Про Ісуса-немовля!

Кришталеві дзвоники заграють,
І, змахнувши білими крильми,
Янголи в таночку закружляють,
Під чарівну музику зими!

Приспів.

Запалає вогник в кожній хаті,
В ніч таку відбудуться дива!
Не важливо: бідні чи багаті -
Всі чекають казочку Різдва!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2494395_l1','pisniua_2494395','YouTube','https://www.youtube.com/watch?v=HeYs5jU2q-o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2494395_l2','pisniua_2494395','YouTube','https://www.youtube.com/watch?v=H8ta2PATymI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_249512';
DELETE FROM song_versions WHERE song_id = 'pisniua_249512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_249512';
DELETE FROM songs WHERE id = 'pisniua_249512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_249512','Моя мила шудре-дудре (3-4)','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Антологія лемківської пісні. Упорядник М. Байко. — Львів: Афіша, 2005. — 496 с.','Відміна 1: Виконує Мирослава Цуприк, с. Одрехова. Відміна 2: Виконує Ольга Мурайко, с. Одрехова. Діалектизми: гмру - помру; же - що; лавка - місце для спання в хаті; пожалуєш - пошкодуєш; почкай - зачекай; юж - вже.','Моя мила шудре-дудре, же я п''ю. (2)
Почкай, мила, бо ты пожалуєш, як я гмру! (2)

Як я буду на лавонці лежати, (2)
То ты будеш, моя наймиленьша, плакати! (2)

Стань же, милий, чорнобривий, стань, серце, (2)
Нап''ємося тої горілочки, як перше! (2)

Нап''ємося горілочки ще й меду. (2)
Юж я своїх карих очей не зведу. (2)    Відміна 1','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:socialno-pobutovi'', ''Лемківські пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_249512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_249512','Моя мила шудре-дудре (3-4)','Моя мила шудре-дудре, же я п''ю. (2)
Почкай, мила, бо ты пожалуєш, як я гмру! (2)

Як я буду на лавонці лежати, (2)
То ты будеш, моя наймиленьша, плакати! (2)

Стань же, милий, чорнобривий, стань, серце, (2)
Нап''ємося тої горілочки, як перше! (2)

Нап''ємося горілочки ще й меду. (2)
Юж я своїх карих очей не зведу. (2)    Відміна 1');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_249512_l1','pisniua_249512','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_249251';
DELETE FROM song_versions WHERE song_id = 'pisniua_249251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_249251';
DELETE FROM songs WHERE id = 'pisniua_249251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_249251','Цвіт калини','Музика: Михайло Дубецький Слова: Григорій Печенівський. Виконує: Михайло Дубецький, Валерій Маренич','uk','ukraine_1991',NULL,NULL,'1. Авторське подання',NULL,'Знаю, добре знаю,
Де цвіте калина, —
Плаєм попід гаєм
Я до неї лину.
Зіронько вечірня,
Зірко моя рання,
Зустрічі короткі —
Довгі розставання.

Не журіться, мамо,
Не сваріться, тату,
Що ходжу ночами
По чебрець і м''яту,
Не втоплюсь у річці,
В лісі не загину,
Мушу берегти я
Білий цвіт калини.

І нехай регоче,
Хай лопоче злива,
Сяють вірні очі,
Серцем я щасливий.
Та калина в лузі
Нам шепоче радо
Справжнє те кохання,
Що не знало зради.

Китиці калини,
Чебрецеве зілля
Побажайте нині
Нам лише весілля
Зіронько вечірня,
Зірко моя рання,
Коли ми вже стрілись
Не для розставання','[''pisni.org.ua'', ''cat:bardivski'', ''cat:romansy'', ''Бардівські пісні'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_249251'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_249251','Цвіт калини','Знаю, добре знаю,
Де цвіте калина, —
Плаєм попід гаєм
Я до неї лину.
Зіронько вечірня,
Зірко моя рання,
Зустрічі короткі —
Довгі розставання.

Не журіться, мамо,
Не сваріться, тату,
Що ходжу ночами
По чебрець і м''яту,
Не втоплюсь у річці,
В лісі не загину,
Мушу берегти я
Білий цвіт калини.

І нехай регоче,
Хай лопоче злива,
Сяють вірні очі,
Серцем я щасливий.
Та калина в лузі
Нам шепоче радо
Справжнє те кохання,
Що не знало зради.

Китиці калини,
Чебрецеве зілля
Побажайте нині
Нам лише весілля
Зіронько вечірня,
Зірко моя рання,
Коли ми вже стрілись
Не для розставання');
DELETE FROM song_links WHERE song_id = 'pisniua_2495073';
DELETE FROM song_versions WHERE song_id = 'pisniua_2495073';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2495073';
DELETE FROM songs WHERE id = 'pisniua_2495073';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2495073','Вже свято недалечко','Музика: Ольга Маєвська Слова: Володимир Верховень','uk','ukraine_1991',NULL,NULL,'авторське подання','Пісню виконує Ольга Маєвська (альбом: Пісні для дітей).','Вже свято недалечко,
До церкви йде сім''я.
Мальоване яєчко,
Як сонечко, сія!
І дзвони великодні
Лунають до небес!
Радіймо всі сьогодні:
Христос Воскрес!

На рушникові паска,
Мов церковка мала.
В серцях - любов і ласка,
Ані краплини зла.
І дзвони великодні
Лунають до небес.
Радіймо всі сьогодні:
Христос Воскрес!','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2495073'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2495073','Вже свято недалечко','Вже свято недалечко,
До церкви йде сім''я.
Мальоване яєчко,
Як сонечко, сія!
І дзвони великодні
Лунають до небес!
Радіймо всі сьогодні:
Христос Воскрес!

На рушникові паска,
Мов церковка мала.
В серцях - любов і ласка,
Ані краплини зла.
І дзвони великодні
Лунають до небес.
Радіймо всі сьогодні:
Христос Воскрес!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_2495073_l1','pisniua_2495073','YouTube','https://www.youtube.com/watch?v=DJINhKAIxuc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2497114';
DELETE FROM song_versions WHERE song_id = 'pisniua_2497114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2497114';
DELETE FROM songs WHERE id = 'pisniua_2497114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2497114','Сумна мелодія','Слова: Василь Чопей','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'По залі ресторану дим гуляє,
Мов той, що там далеко вкрив поля.
А скрипка чарівна так сумно грає
В прудких руках старого скрипаля...

За столом зажурений військовий,
Сидить і курить, п''є хмільне вино,
Його суворий погляд загадковий,
Мов каже: Я не був тут так давно...

Бо воював на Сході та на Півдні,
І важко був поранений в бою,
Через вогонь, через поля повз мінні
За Україну доленьку свою!..

Я бачив смерть, як поряд проходила,
Як помирали хлопці молоді.
І тільки та Велика Божа Сила
Мене і врятувала там тоді!..

І я живий, і білий світ цей бачу,
Додому повернувся в рідний край.
Та п''ю вино, а інколи так плачу
За тими, що пішли собі у рай...

І на душі важкий тягар від жалю,
Я втратив побратимів в тім бою...
Так не стихай ти, грай, старий скрипалю,
Сумну-сумну мелодію свою!..','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2497114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2497114','Сумна мелодія','По залі ресторану дим гуляє,
Мов той, що там далеко вкрив поля.
А скрипка чарівна так сумно грає
В прудких руках старого скрипаля...

За столом зажурений військовий,
Сидить і курить, п''є хмільне вино,
Його суворий погляд загадковий,
Мов каже: Я не був тут так давно...

Бо воював на Сході та на Півдні,
І важко був поранений в бою,
Через вогонь, через поля повз мінні
За Україну доленьку свою!..

Я бачив смерть, як поряд проходила,
Як помирали хлопці молоді.
І тільки та Велика Божа Сила
Мене і врятувала там тоді!..

І я живий, і білий світ цей бачу,
Додому повернувся в рідний край.
Та п''ю вино, а інколи так плачу
За тими, що пішли собі у рай...

І на душі важкий тягар від жалю,
Я втратив побратимів в тім бою...
Так не стихай ти, грай, старий скрипалю,
Сумну-сумну мелодію свою!..');
