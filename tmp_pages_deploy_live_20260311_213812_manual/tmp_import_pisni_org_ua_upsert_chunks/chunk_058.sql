DELETE FROM song_links WHERE song_id = 'pisniua_6462454';
DELETE FROM song_versions WHERE song_id = 'pisniua_6462454';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6462454';
DELETE FROM songs WHERE id = 'pisniua_6462454';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6462454','Nasze Domy','Музика: Ivan Klymenko, Anton Chilibi Слова: Oleh Psiuk, Mateusz Szpakowski. Виконує: Kalush Orchestra, Szpaku','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Refren:
Nasze domy,              |
Boże nіe pomіń іch       |
I choć sіę boję,         |
Nіe pozwól przepaść mі!  |
Nasze domy,              |
Nіech tu nіe kapіe krew, |
Będę sіę bronіł          |
Pókі nіe wyrwą serc!     | (2)

Do dzіecka buzі nіe fіtuje smutek
Tak jak tych murów nіe malują chórem.
Złoto nіe sztuka,
Sztuką jest zachować dobro,
Gdy śwіat sіę już runіe,
Młody Matі czuje bardzіej życіe,
Przez to te tabletkі jadłem tutaj jak słodycze.
Dawaj, młody, pogadamy chwіlę.,
Cі opowіem jak tu jest tu nosіć w sercu sztylet
Że parę razy zachowałem sіę jak dureń
I że cofnąłbym czas ale nіe umіem.
Czasem ludzіe mają ludzі za zabawkę,
To nіe Toy Story, ale chcemy żyć w bajce.

Refren.

Де би не водила доля мене,
Буду сидіти під домом, вироню
Я з руки ожину, обіймаю маму,
В Калуші немає авеню!.
Якби хто питали, я кажу: Ми м''якше спали
В себе на землі, хоч під спиною і скали!
Я в собі чую джерело, вітер за берегом
Біг куди, біг-біг-біг, бувши малюком.
Серед цих руїн краса живе тут-тут,
Я не риболов, але веду тата!
Хочу знову вересень на березі на річці,
Цвінь-цвірінь-цвірінь, птиці тута не ці!
Макарони не змінить мені паста!
Хліб із салом свіжий, і це не тости!
Я чекаю у хатах наших тоста:
Слава Україні! З перемогою, рідні!

Refren.','[''pisni.org.ua'', ''cat:ato'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6462454'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6462454','Nasze Domy','Refren:
Nasze domy,              |
Boże nіe pomіń іch       |
I choć sіę boję,         |
Nіe pozwól przepaść mі!  |
Nasze domy,              |
Nіech tu nіe kapіe krew, |
Będę sіę bronіł          |
Pókі nіe wyrwą serc!     | (2)

Do dzіecka buzі nіe fіtuje smutek
Tak jak tych murów nіe malują chórem.
Złoto nіe sztuka,
Sztuką jest zachować dobro,
Gdy śwіat sіę już runіe,
Młody Matі czuje bardzіej życіe,
Przez to te tabletkі jadłem tutaj jak słodycze.
Dawaj, młody, pogadamy chwіlę.,
Cі opowіem jak tu jest tu nosіć w sercu sztylet
Że parę razy zachowałem sіę jak dureń
I że cofnąłbym czas ale nіe umіem.
Czasem ludzіe mają ludzі za zabawkę,
To nіe Toy Story, ale chcemy żyć w bajce.

Refren.

Де би не водила доля мене,
Буду сидіти під домом, вироню
Я з руки ожину, обіймаю маму,
В Калуші немає авеню!.
Якби хто питали, я кажу: Ми м''якше спали
В себе на землі, хоч під спиною і скали!
Я в собі чую джерело, вітер за берегом
Біг куди, біг-біг-біг, бувши малюком.
Серед цих руїн краса живе тут-тут,
Я не риболов, але веду тата!
Хочу знову вересень на березі на річці,
Цвінь-цвірінь-цвірінь, птиці тута не ці!
Макарони не змінить мені паста!
Хліб із салом свіжий, і це не тости!
Я чекаю у хатах наших тоста:
Слава Україні! З перемогою, рідні!

Refren.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6462454_l1','pisniua_6462454','YouTube','https://www.youtube.com/watch?v=vkB-fujq5ag','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_645797';
DELETE FROM song_versions WHERE song_id = 'pisniua_645797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_645797';
DELETE FROM songs WHERE id = 'pisniua_645797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_645797','Перлина Монмартра','Музика: Михайло Зарічний Слова: Юрій Косач. Виконує: ПереBANDя, Михайло Зарічний','uk','ukraine_1991',NULL,NULL,'1. Надав М. Зарічний','Підбір акордів: М. Зарічний','Перлина Монмартра закинена в хащі готелів
Моя Рекам''є ти нещадна мов кат
Ти над томом сльозливим ридала в готелі
І вставала дивитись крізь шибу тремка

Мов сувора любов залишалась самою надовго
Без пісень трубадурів у мжичці що слалася в даль
Що потоком пливла тротуаром брудним невимовно
Як маріння терпке як залізна жіноча печаль

Як зітхання жоржин знічев''я в завулках
Ти вставала в імлі залишала німовно любов
Ненаситну захланну. Так гулко
На світанні несли через місто вино

А ножі гільйотини як посміх маркізи
Взято холодом уст що казали мені
Либонь всім говорили бентежно і ніжно
Не весна не любов і не так і не ні

Перлина Монмартра закинена в хащі готелів
Моя Рекам''є ти нещадна мов кат
Ти над томом сльозливим ридала в готелі
І вставала дивитись крізь шибу тремка','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_645797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_645797','Перлина Монмартра','Перлина Монмартра закинена в хащі готелів
Моя Рекам''є ти нещадна мов кат
Ти над томом сльозливим ридала в готелі
І вставала дивитись крізь шибу тремка

Мов сувора любов залишалась самою надовго
Без пісень трубадурів у мжичці що слалася в даль
Що потоком пливла тротуаром брудним невимовно
Як маріння терпке як залізна жіноча печаль

Як зітхання жоржин знічев''я в завулках
Ти вставала в імлі залишала німовно любов
Ненаситну захланну. Так гулко
На світанні несли через місто вино

А ножі гільйотини як посміх маркізи
Взято холодом уст що казали мені
Либонь всім говорили бентежно і ніжно
Не весна не любов і не так і не ні

Перлина Монмартра закинена в хащі готелів
Моя Рекам''є ти нещадна мов кат
Ти над томом сльозливим ридала в готелі
І вставала дивитись крізь шибу тремка');
DELETE FROM song_links WHERE song_id = 'pisniua_6462491';
DELETE FROM song_versions WHERE song_id = 'pisniua_6462491';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6462491';
DELETE FROM songs WHERE id = 'pisniua_6462491';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6462491','Козацькому роду нема переводу','Музика: Jerry Heil Слова: Jerry Heil. Виконує: Jerry Heil','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Козацькому роду      |
Нема переводу!       |
Нема рівні козакам,  |
Що йдуть за свободу! | (2)

Хто не знає броду,
Не ідіть по воду,
Повертайтеся в болото,
Бо тут ота-ота,
Ота-отаман Залужний,
Воєвода трушний,
Україні Богом даний!
Пеклом раші суджений!
Ота-отаман
Залужний Валерій -
Це ім''я кінця
Рашистської імперїї!

Приспів.

Засвіт встали козаченьки,
Справдилось повір''я.
Освітило шлях за неньку
Чумацьке сузір''я.
Дзвонить у дзвони Іуда,
На міді окалина.
Б''є себе у пусті груди,
А його міст спалено!
А наш рід був, є і буде
І вчора, і завтра!
Нам на небі характерник
Запалює ватру.

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6462491'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6462491','Козацькому роду нема переводу','Приспів:
Козацькому роду      |
Нема переводу!       |
Нема рівні козакам,  |
Що йдуть за свободу! | (2)

Хто не знає броду,
Не ідіть по воду,
Повертайтеся в болото,
Бо тут ота-ота,
Ота-отаман Залужний,
Воєвода трушний,
Україні Богом даний!
Пеклом раші суджений!
Ота-отаман
Залужний Валерій -
Це ім''я кінця
Рашистської імперїї!

Приспів.

Засвіт встали козаченьки,
Справдилось повір''я.
Освітило шлях за неньку
Чумацьке сузір''я.
Дзвонить у дзвони Іуда,
На міді окалина.
Б''є себе у пусті груди,
А його міст спалено!
А наш рід був, є і буде
І вчора, і завтра!
Нам на небі характерник
Запалює ватру.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6462491_l1','pisniua_6462491','YouTube','https://www.youtube.com/watch?v=RUOLUTGQiHM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6462491_l2','pisniua_6462491','YouTube','https://www.youtube.com/watch?v=OhKEUfSuRws','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6454542';
DELETE FROM song_versions WHERE song_id = 'pisniua_6454542';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6454542';
DELETE FROM songs WHERE id = 'pisniua_6454542';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6454542','Не забуду','Музика: Вася Демчук, Олексій Костильов Слова: Вася Демчук, Олексій Костильов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Я ніколи не забуду той день,          |
Коли все почалося,                    |
Коли рятував лише запах її волосся... |
До кінця не покидала людей            |
Надія, що здалося, це просто кошмар   |
І ми скоро прокинемося...             | (2)

Мені трохи за двадцять,
Ніколи не міг уявити,
Що може траплятись таке з нами лихо,
Ми маємо щастя, коли в небі тихо!..
Може не завтра,
Та всі добре знаємо, хто чого вартий!..
Після холодних ночей настають
Неймовірно красиві світанки!..

Приспів.

Я не забуду ті дні, коли в небі
Чорний дим, мрії зникнули...
Щосекунди ми чекали відповідь,
Що з рідними?..
Нам здавалося, так зупинилося все,
І ми не співали веселих пісень,
В новинах вона кожен день,
І в думках лиш вона кожен день!..
Навіки в пам''яті ті дні, в пам''яті жах...
Сльози застигли в дитячих очах...
Ми будемо сильними заради того, хто живий!
І якщо хочеться - плач, мам, сліз не тримай!
Серце війна на шматки розриває...
Але сонце зійде - і розквітне весна вже скоро,
Я знаю!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6454542'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6454542','Не забуду','Приспів:
Я ніколи не забуду той день,          |
Коли все почалося,                    |
Коли рятував лише запах її волосся... |
До кінця не покидала людей            |
Надія, що здалося, це просто кошмар   |
І ми скоро прокинемося...             | (2)

Мені трохи за двадцять,
Ніколи не міг уявити,
Що може траплятись таке з нами лихо,
Ми маємо щастя, коли в небі тихо!..
Може не завтра,
Та всі добре знаємо, хто чого вартий!..
Після холодних ночей настають
Неймовірно красиві світанки!..

Приспів.

Я не забуду ті дні, коли в небі
Чорний дим, мрії зникнули...
Щосекунди ми чекали відповідь,
Що з рідними?..
Нам здавалося, так зупинилося все,
І ми не співали веселих пісень,
В новинах вона кожен день,
І в думках лиш вона кожен день!..
Навіки в пам''яті ті дні, в пам''яті жах...
Сльози застигли в дитячих очах...
Ми будемо сильними заради того, хто живий!
І якщо хочеться - плач, мам, сліз не тримай!
Серце війна на шматки розриває...
Але сонце зійде - і розквітне весна вже скоро,
Я знаю!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6454542_l1','pisniua_6454542','YouTube','https://www.youtube.com/watch?v=paOrC0lPwDw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6463075';
DELETE FROM song_versions WHERE song_id = 'pisniua_6463075';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6463075';
DELETE FROM songs WHERE id = 'pisniua_6463075';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6463075','Зай','Музика: Nikita Kiselov, Alisa Rzhavska Слова: Nikita Kiselov, Alisa Rzhavska. Виконує: Анна Трінчер','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Алло, тебе не чути давно..
По колу ти там, а я далеко-далеко...
По колу крутиться веретено...
Прилетіли додому перелітні лелеки...
В великому місті тепер тісно...
Замість гудків телефону чую вистріли...
В одну мить складними стали прості істини,
Щоб кохати міцно, неважливі відстані!..

Приспів:
Зай, я хочу повернутись з-за кордону
І знову проїжджати міст Патону!
І попри біль і втому я їду додому!
Зай, я хочу прогулятися по місту,
Не чути вий сирен, ракети свисту!
До тебе повернутись з-за кордону додому!

Зай, я знаю, що ти ще живий,
Хоча вже декілька днів
У вас горить навіть небо...
Питає частіше про тата наш син,
Він сильно підріс і так схожий на тебе!
В великому місті нема мені місця,
Неначе спокійно все, але не спиться...
В одну мить складними стали прості істини,
Щоб кохати міцно, неважливі відстані!..

Приспів.

Додому, додому!.. | (4)

Додому!..
Додому, додому!.. | (4)

Додому!..

Приспів.

Додому! Додому!
Зай, я хочу повернутись додому!..','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:emigration'', ''cat:nostalgia'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні про еміґрацію'', ''Пісні з ностальгічними мотивами'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6463075'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6463075','Зай','Алло, тебе не чути давно..
По колу ти там, а я далеко-далеко...
По колу крутиться веретено...
Прилетіли додому перелітні лелеки...
В великому місті тепер тісно...
Замість гудків телефону чую вистріли...
В одну мить складними стали прості істини,
Щоб кохати міцно, неважливі відстані!..

Приспів:
Зай, я хочу повернутись з-за кордону
І знову проїжджати міст Патону!
І попри біль і втому я їду додому!
Зай, я хочу прогулятися по місту,
Не чути вий сирен, ракети свисту!
До тебе повернутись з-за кордону додому!

Зай, я знаю, що ти ще живий,
Хоча вже декілька днів
У вас горить навіть небо...
Питає частіше про тата наш син,
Він сильно підріс і так схожий на тебе!
В великому місті нема мені місця,
Неначе спокійно все, але не спиться...
В одну мить складними стали прості істини,
Щоб кохати міцно, неважливі відстані!..

Приспів.

Додому, додому!.. | (4)

Додому!..
Додому, додому!.. | (4)

Додому!..

Приспів.

Додому! Додому!
Зай, я хочу повернутись додому!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6463075_l1','pisniua_6463075','YouTube','https://www.youtube.com/watch?v=ZzvbP0dYSAI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6463075_l2','pisniua_6463075','YouTube','https://www.youtube.com/watch?v=e-jIn17iTIg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_646353';
DELETE FROM song_versions WHERE song_id = 'pisniua_646353';
DELETE FROM songs_fts WHERE song_id = 'pisniua_646353';
DELETE FROM songs WHERE id = 'pisniua_646353';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_646353','Там, десь далеко на Волині','(Гей, на півночі, на Волині). Українська народна пісня. Виконує: Соколи, Іван Мацялко','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Там, десь далеко на Волині,
Створилась армія УПА,
Щоби воскресла Україна       |
І завітала слобода.          |(2)

Горіли села і містечка,
Бійці боролись ніч і день.
В перших рядах бійців-героїв
Згинув Івахів наш Василь.

Прощай, герою України,
Прощай, наш друже дорогий.
Твої діла нам незабутні,      |
А твій наказ для нас святий.  |(2)

Сестра в селі рідненька плаче,
Щодня виходить за село:
Чи не приїхав брат до дому?
Чи не побачить ще його?

Не плач, сестричко, не журися,
Поглянь у синю далечинь.
Твій брат помер, та жити буде  |
В піснях майбутніх поколінь.   |(2)

Ми вище прапор піднімемо,
Тризуб повернем до чола
І крикнем "Слава! Слава! Слава Україні!"  |
Так, щоб здригнулася земля!               |(2)','[''pisni.org.ua'', ''cat:narodni'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_646353'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_646353','Там, десь далеко на Волині','Там, десь далеко на Волині,
Створилась армія УПА,
Щоби воскресла Україна       |
І завітала слобода.          |(2)

Горіли села і містечка,
Бійці боролись ніч і день.
В перших рядах бійців-героїв
Згинув Івахів наш Василь.

Прощай, герою України,
Прощай, наш друже дорогий.
Твої діла нам незабутні,      |
А твій наказ для нас святий.  |(2)

Сестра в селі рідненька плаче,
Щодня виходить за село:
Чи не приїхав брат до дому?
Чи не побачить ще його?

Не плач, сестричко, не журися,
Поглянь у синю далечинь.
Твій брат помер, та жити буде  |
В піснях майбутніх поколінь.   |(2)

Ми вище прапор піднімемо,
Тризуб повернем до чола
І крикнем "Слава! Слава! Слава Україні!"  |
Так, щоб здригнулася земля!               |(2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_646353_l1','pisniua_646353','YouTube','https://www.youtube.com/watch?v=Nq5Sf8ak0m4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6464144';
DELETE FROM song_versions WHERE song_id = 'pisniua_6464144';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6464144';
DELETE FROM songs WHERE id = 'pisniua_6464144';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6464144','Гаррi','Музика: Сергій Міхалок Слова: Сергій Міхалок','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Був хлопець із качалки,
Звали його Гаррі,
Кричав свої кричалки,
Узявши пива в барі.
Але прийшли собаки.
Вітчизна лиш одна є.
Пішов солдатом Гаррі.
Повернеться? Не знає...

Приспів:
Зробиш три підходи - |
Четвертий за Гаррі!  |
Гаррі у поході,      |
Воює і далі!         | (2)

Була у Гаррі Меггі.
Народила сина.
Не прийшли б собаки -
Росла б собі дитина.
Не прийшли б собаки -
Тягався б містом Гаррі,
Горлав, як всі друзяки
Веселу пісню в барі!

Приспів.

Гаррі! Гаррі! Гаррі!
Гаррі! Гаррі! Гаррі!','[''pisni.org.ua'', ''cat:ato'', ''cat:philosophic'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Філософські пісні'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6464144'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6464144','Гаррi','Був хлопець із качалки,
Звали його Гаррі,
Кричав свої кричалки,
Узявши пива в барі.
Але прийшли собаки.
Вітчизна лиш одна є.
Пішов солдатом Гаррі.
Повернеться? Не знає...

Приспів:
Зробиш три підходи - |
Четвертий за Гаррі!  |
Гаррі у поході,      |
Воює і далі!         | (2)

Була у Гаррі Меггі.
Народила сина.
Не прийшли б собаки -
Росла б собі дитина.
Не прийшли б собаки -
Тягався б містом Гаррі,
Горлав, як всі друзяки
Веселу пісню в барі!

Приспів.

Гаррі! Гаррі! Гаррі!
Гаррі! Гаррі! Гаррі!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6464144_l1','pisniua_6464144','YouTube','https://www.youtube.com/watch?v=aY_of4RrUlY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_646246';
DELETE FROM song_versions WHERE song_id = 'pisniua_646246';
DELETE FROM songs_fts WHERE song_id = 'pisniua_646246';
DELETE FROM songs WHERE id = 'pisniua_646246';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_646246','Лісом-лісом при Долині','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Gorom dolinom: lemkowskie spiewanie. - Bielsko-Biala, 2003. - C. 10 2. Самвидавний туристський пісенник "Там на Лемковині помедже горами". - Літо, 1981. 3. Piosenki lemkowskie i ukrainskie. - Warszawa: Akademicki Klub Turystyczny "Maluch", 2001.','*1 Приспів повторюється після кожної в''язки; *2 Так у джерелах 2 і 3; *3 Так у джерелі 2; *4 Так у джерелі 2; Діалектизми: бы-зме - ми були би, ми б; кукат - кує (про зозулю); лем - тільки; любованя - кохання; пасия - пасія, пристрасть, страждання; подме - ходімо, підемо;','Лісом-лісом при Долині
Зозуленька кукат нині

Приспів: *1
Гей-я-гой Лелия Любованя то Велика Пасия! |(2)

Мы Зозулі не слухали
Лем бы-зме ся любовали *2

Лісом-лісом за Горами *3
Подме Мила за Грибами

А мы Грибів не збирали
Лем бы-зме ся любовали

Лісом-лісом коло Річки *4
Подме Милий на Орішкы

Мы Орішків не збирали
Лем бы-зме ся любовали
*2 Відміна:
Лем мы-зме ся любовали

*3 Відміна:
Лісом-лісом Долинами
Подме Мила за Грибами

*4 Відміна
Там на Горі узкі Стіжкы
Подме Мила на Орішкы','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_646246'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_646246','Лісом-лісом при Долині','Лісом-лісом при Долині
Зозуленька кукат нині

Приспів: *1
Гей-я-гой Лелия Любованя то Велика Пасия! |(2)

Мы Зозулі не слухали
Лем бы-зме ся любовали *2

Лісом-лісом за Горами *3
Подме Мила за Грибами

А мы Грибів не збирали
Лем бы-зме ся любовали

Лісом-лісом коло Річки *4
Подме Милий на Орішкы

Мы Орішків не збирали
Лем бы-зме ся любовали
*2 Відміна:
Лем мы-зме ся любовали

*3 Відміна:
Лісом-лісом Долинами
Подме Мила за Грибами

*4 Відміна
Там на Горі узкі Стіжкы
Подме Мила на Орішкы');
DELETE FROM song_links WHERE song_id = 'pisniua_6462477';
DELETE FROM song_versions WHERE song_id = 'pisniua_6462477';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6462477';
DELETE FROM songs WHERE id = 'pisniua_6462477';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6462477','Коли закінчиться війна','Слова: Юлія Думанська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'День, коли закінчиться війна,
Я обведу в календарі!
Тоді ця пісня голосна
Буде у кожному дворі.
Я напишу усім-усім,
Навіть, колишнім: Гей, привіт!
Ну, як ви там чи всі живі?
День, коли закінчиться війна,
Коли звучатимуть з книжок
А зараз він, як новина,
Яку чекає навіть Бог.
Я розкажу йому про все,
Бо, мабуть, він кудись ходив,
Коли закінчиться війна і ти...

Приспів:
Я буду руки цілувати
І міцно буду я тебе
З любов''ю обіймати!
Дай нам, Бог, усе забути! -
Душа моя так просить.
Я буду руки, руки, руки,
Руки цілувати,
Буду! Буду! Буду!
Буду - моя згуба.
Дай нам, Бог, усе забути,
Все, що ти там бачив, бачив,
Скільки всього в перемозі...

День, коли закінчиться війна,
Я зацілую всім єством,
І зникне хмара вогняна
І засіяє Божеством,
Я свою долю обійму,
Скажу: Спокійно, все гаразд!
Коли закінчиться війна,
В той час...

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6462477'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6462477','Коли закінчиться війна','День, коли закінчиться війна,
Я обведу в календарі!
Тоді ця пісня голосна
Буде у кожному дворі.
Я напишу усім-усім,
Навіть, колишнім: Гей, привіт!
Ну, як ви там чи всі живі?
День, коли закінчиться війна,
Коли звучатимуть з книжок
А зараз він, як новина,
Яку чекає навіть Бог.
Я розкажу йому про все,
Бо, мабуть, він кудись ходив,
Коли закінчиться війна і ти...

Приспів:
Я буду руки цілувати
І міцно буду я тебе
З любов''ю обіймати!
Дай нам, Бог, усе забути! -
Душа моя так просить.
Я буду руки, руки, руки,
Руки цілувати,
Буду! Буду! Буду!
Буду - моя згуба.
Дай нам, Бог, усе забути,
Все, що ти там бачив, бачив,
Скільки всього в перемозі...

День, коли закінчиться війна,
Я зацілую всім єством,
І зникне хмара вогняна
І засіяє Божеством,
Я свою долю обійму,
Скажу: Спокійно, все гаразд!
Коли закінчиться війна,
В той час...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6462477_l1','pisniua_6462477','YouTube','https://www.youtube.com/watch?v=Azczo0PXv88','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6458440';
DELETE FROM song_versions WHERE song_id = 'pisniua_6458440';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6458440';
DELETE FROM songs WHERE id = 'pisniua_6458440';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6458440','Контрнаступ','Музика: Дмитро Осичнюк Слова: Дмитро Осичнюк','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Не кажи гоп,
Поки не перескочеш!
Та, якби не було,
А серце втіхи хоче!
Радіти звісно рано,
Далека ще дорога,
Але все непогано
Йдемо до перемоги!
З фронту добрі вісті:
Ми не стоїмо на місці!

Приспів:
У нас тут контрнаступ
І кожна новина -
Маленьке щастя!.. Щастя!..
У нас тут контрнаступ -
Лікуємо країну від напасті!
Це щастя!..
Контрнаступ!
Годі з ними! Баста!

Коли звільняють місто
Від горе-терористів,
Радіють наші люди,
І радість їхня чиста!
Як прапор підіймають,
Бійці доповідають:
Чергове місто вільне!
Країна наша сильна!
З фронту добрі вісті:
Гонимо рашистів!

Приспів. (2)','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6458440'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6458440','Контрнаступ','Не кажи гоп,
Поки не перескочеш!
Та, якби не було,
А серце втіхи хоче!
Радіти звісно рано,
Далека ще дорога,
Але все непогано
Йдемо до перемоги!
З фронту добрі вісті:
Ми не стоїмо на місці!

Приспів:
У нас тут контрнаступ
І кожна новина -
Маленьке щастя!.. Щастя!..
У нас тут контрнаступ -
Лікуємо країну від напасті!
Це щастя!..
Контрнаступ!
Годі з ними! Баста!

Коли звільняють місто
Від горе-терористів,
Радіють наші люди,
І радість їхня чиста!
Як прапор підіймають,
Бійці доповідають:
Чергове місто вільне!
Країна наша сильна!
З фронту добрі вісті:
Гонимо рашистів!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6458440_l1','pisniua_6458440','YouTube','https://www.youtube.com/watch?v=j2Yz5GUf3Fg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6464555';
DELETE FROM song_versions WHERE song_id = 'pisniua_6464555';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6464555';
DELETE FROM songs WHERE id = 'pisniua_6464555';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6464555','Дякую тобі!','Музика: Ірина Федишин Слова: Петро Половко, Ірина Федишин. Виконує: Ірина Федишин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Хлопці, хлопці, сині, карі очі,
Ви пішли із дому лютневої ночі
Україну рідну захищати,
Сміло смерті в очі заглядати!
Хлопці, хлопці з полум''я і сталі
Сильні, мужні, витривалі!
Ворогам свободу вашу не зламати!
Силу духу темряві не залякати!
Знай, на тебе мама й тато чекають,
Дівчата у вікні виглядають!

Приспів:
Дякую тобі, воїну-друже,  |
Що Україну любиш дуже!    |
І я за тебе у молитві!    |
Ми переможем в цій битві! | (2)

Знаю, важко зараз і пече,
І за побратимом сльоза тече...
І руїни, смерть перед очима,
Та з тобою білі крила за плечима!
Намалюю квіти і поля,
Де радієм перемозі ти і я!
Буде мирне небо, зацвіте калина,
І розквітне наша рідна Україна!
Знай, на тебе мама й тато чекають,
Дівчата у вікні виглядають!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:patriotic'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Патріотичні пісні'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6464555'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6464555','Дякую тобі!','Хлопці, хлопці, сині, карі очі,
Ви пішли із дому лютневої ночі
Україну рідну захищати,
Сміло смерті в очі заглядати!
Хлопці, хлопці з полум''я і сталі
Сильні, мужні, витривалі!
Ворогам свободу вашу не зламати!
Силу духу темряві не залякати!
Знай, на тебе мама й тато чекають,
Дівчата у вікні виглядають!

Приспів:
Дякую тобі, воїну-друже,  |
Що Україну любиш дуже!    |
І я за тебе у молитві!    |
Ми переможем в цій битві! | (2)

Знаю, важко зараз і пече,
І за побратимом сльоза тече...
І руїни, смерть перед очима,
Та з тобою білі крила за плечима!
Намалюю квіти і поля,
Де радієм перемозі ти і я!
Буде мирне небо, зацвіте калина,
І розквітне наша рідна Україна!
Знай, на тебе мама й тато чекають,
Дівчата у вікні виглядають!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6464555_l1','pisniua_6464555','YouTube','https://www.youtube.com/watch?v=tOBQ9Ub30SQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6467858';
DELETE FROM song_versions WHERE song_id = 'pisniua_6467858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6467858';
DELETE FROM songs WHERE id = 'pisniua_6467858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6467858','Різдво у Львові','Музика: Любомир Тарнавський Слова: Любомир Тарнавський. Виконує: Любомир Тарнавський','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Засвітились в небі зорі
Кольорові і прозорі
В ніч Різдва,
Казка тихо загадкова
Всіх на свято запросила,
І щаслива ти і я!

Приспів:
Різдво у Львові
Малює нові кольори!
Різдво у Львові -
Надії нові на світло й мир!
Різдво у Львові -
Вже народилося Дитя!
Його славімо, возвеселімо
В щасливу мить Різдва!

Сніг лапатий вже кружляє,
Вифлеємська зірка сяє
В ніч Різдва,
І у Львові всі родини
Йдуть вертепом до Дитини -
Народивсь Ісус Маля!

Приспів.

Всі Ісуса прославляють
Ясні зорі в небі сяють
В ніч Різдва,
Хай народжена Дитина
Принесе тепло в хатини,
Щоб раділа вся Земля!

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6467858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6467858','Різдво у Львові','Засвітились в небі зорі
Кольорові і прозорі
В ніч Різдва,
Казка тихо загадкова
Всіх на свято запросила,
І щаслива ти і я!

Приспів:
Різдво у Львові
Малює нові кольори!
Різдво у Львові -
Надії нові на світло й мир!
Різдво у Львові -
Вже народилося Дитя!
Його славімо, возвеселімо
В щасливу мить Різдва!

Сніг лапатий вже кружляє,
Вифлеємська зірка сяє
В ніч Різдва,
І у Львові всі родини
Йдуть вертепом до Дитини -
Народивсь Ісус Маля!

Приспів.

Всі Ісуса прославляють
Ясні зорі в небі сяють
В ніч Різдва,
Хай народжена Дитина
Принесе тепло в хатини,
Щоб раділа вся Земля!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6467858_l1','pisniua_6467858','YouTube','https://www.youtube.com/watch?v=RSXs-LTM1Po','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6467858_l2','pisniua_6467858','YouTube','https://www.youtube.com/watch?v=IjQQQxMJ5zU','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6463656';
DELETE FROM song_versions WHERE song_id = 'pisniua_6463656';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6463656';
DELETE FROM songs WHERE id = 'pisniua_6463656';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6463656','Ой тумане, тумане','Музика: Анатолій Кос-Анатольський Слова: Тарас Шевченко','uk','ukraine_1991',NULL,NULL,'Кос-Анатольський А. Ой тумане, тумане: Романс для голосу з фортепіано / Слова Т. Шевченка [ноти]. - Київ: Советский композитор, 1961 р.','Текст пісні є уривок з твору Тараса Шевченка "Наймичка". Послухати мелодію та переглянути/завантажити ноти можна тут: https://musescore.com/user/56304587/scores/22729654','Ой, тумане, тумане,
Мій латаний талане!
Чому мене не сховаєш
Отут серед лану?

Чому мене не задавиш,
У землю не вдавиш?
Чому мені злої долі,
Чом віку не збавиш?

Ні, не дави, туманочку!
Сховай тільки в полі,
Щоб ніхто не знав, не бачив
Моєї недолі!..','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6463656'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6463656','Ой тумане, тумане','Ой, тумане, тумане,
Мій латаний талане!
Чому мене не сховаєш
Отут серед лану?

Чому мене не задавиш,
У землю не вдавиш?
Чому мені злої долі,
Чом віку не збавиш?

Ні, не дави, туманочку!
Сховай тільки в полі,
Щоб ніхто не знав, не бачив
Моєї недолі!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6463656_l1','pisniua_6463656','YouTube','https://www.youtube.com/watch?v=YIEsN9Dxqvk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6463656_l2','pisniua_6463656','YouTube','https://www.youtube.com/watch?v=ta4tOSOXdZQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6463656_l3','pisniua_6463656','YouTube','https://www.youtube.com/watch?v=fic9tRjg9sA','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_64656';
DELETE FROM song_versions WHERE song_id = 'pisniua_64656';
DELETE FROM songs_fts WHERE song_id = 'pisniua_64656';
DELETE FROM songs WHERE id = 'pisniua_64656';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_64656','Вставай, вставай, господарю','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Вставай, вставай, господарю,
Та в віконце спогляди.
Звізда сіяє, Христа вітає
Серед народу на землі.

Вона спустилась над Вифлеємом
Сяйвом ясним до Христа.
Діва Марія Сина повила -
Для нас всіх радість принесла.

І по невинному ягнятку
Подарок взяли пастирі.
Аби Христу до рук оддати,
І щоб вклонитись до землі.

Діва Марія повиває,
А Йосиф гріє пелени.
І херувими піснь співають
Свому Творцеви на землі.

А пастирі поклонились
І обняли мале Дитя.
Воно простерло рученята -
Благословляє пастиря.

А в цей час далеко із Сходу
Повстали три царі.
Лукавий Ірод теж проснувся -
Його збудили вартові.

"Вставай, царю, та збирайся,
В гості до тебе царі прийшли.
Тільки ти ними не утішайся -
Погану звістку принесли.

Кажуть, що десь-то народився
Цар царів і Бог Богів".
Заздривий Ірод від цього слова
Зашпротався і зомлів.

А потім Ірод спам''ятався,
І ласкаво мовив царям:
"Як знайдете, то знов зайдете
І я йому  поклон оддам".

І ягнятко і козлятко,
Три царі і пастирі,
І херувими і серафими
Схилились низько до землі.

Слава, слава, що народився
Одкупитель наших гріхів.
Слава, слава, що з''явився
Господь слави од віків.

Слава, слава, навіки слава,
Слава Богу і Творцю.
Народженому у вертепі
Слава Ісусові Христу.

Здоровим всіх з Різдвом Христовим.
Бажаєм щастя і добра.
Многая літа, благая літа,
Многая благая літа.','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:narodni'', ''cat:zakarpatski'', ''Пісні на християнську тематику'', ''Колядки'', ''Народні пісні'', ''Закарпатські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_64656'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_64656','Вставай, вставай, господарю','Вставай, вставай, господарю,
Та в віконце спогляди.
Звізда сіяє, Христа вітає
Серед народу на землі.

Вона спустилась над Вифлеємом
Сяйвом ясним до Христа.
Діва Марія Сина повила -
Для нас всіх радість принесла.

І по невинному ягнятку
Подарок взяли пастирі.
Аби Христу до рук оддати,
І щоб вклонитись до землі.

Діва Марія повиває,
А Йосиф гріє пелени.
І херувими піснь співають
Свому Творцеви на землі.

А пастирі поклонились
І обняли мале Дитя.
Воно простерло рученята -
Благословляє пастиря.

А в цей час далеко із Сходу
Повстали три царі.
Лукавий Ірод теж проснувся -
Його збудили вартові.

"Вставай, царю, та збирайся,
В гості до тебе царі прийшли.
Тільки ти ними не утішайся -
Погану звістку принесли.

Кажуть, що десь-то народився
Цар царів і Бог Богів".
Заздривий Ірод від цього слова
Зашпротався і зомлів.

А потім Ірод спам''ятався,
І ласкаво мовив царям:
"Як знайдете, то знов зайдете
І я йому  поклон оддам".

І ягнятко і козлятко,
Три царі і пастирі,
І херувими і серафими
Схилились низько до землі.

Слава, слава, що народився
Одкупитель наших гріхів.
Слава, слава, що з''явився
Господь слави од віків.

Слава, слава, навіки слава,
Слава Богу і Творцю.
Народженому у вертепі
Слава Ісусові Христу.

Здоровим всіх з Різдвом Христовим.
Бажаєм щастя і добра.
Многая літа, благая літа,
Многая благая літа.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64656_l1','pisniua_64656','YouTube','https://www.youtube.com/watch?v=rufcBP04xUM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6465151';
DELETE FROM song_versions WHERE song_id = 'pisniua_6465151';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6465151';
DELETE FROM songs WHERE id = 'pisniua_6465151';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6465151','Осанна Богу','Музика: IXTIS_BAND Слова: Людмила Стависька','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'В Вифлиємі сталась новина,
Засіяла в небі зоря,
Там Пречиста Діва Марія
Сина Божого сповила!

Приспів:
Осанна Богу
За Сина, що родився нам!
Осанна! О, слава!
Для Нього віддаєм свої серця!

Хори ангелів прославляють
Бога в вишині, мир на землі!
Разом з ними я заспіваю,
Бог послав спасіння мені!

Приспів.

З пастухами я прийду до ясел
І схилюся низько перед тим,
Хто звільнив мене від зла й темряви,
Хто моє життя знов засвітив!

Приспів. (2)

Для Нього віддаєм свої серця! | (3)','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6465151'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6465151','Осанна Богу','В Вифлиємі сталась новина,
Засіяла в небі зоря,
Там Пречиста Діва Марія
Сина Божого сповила!

Приспів:
Осанна Богу
За Сина, що родився нам!
Осанна! О, слава!
Для Нього віддаєм свої серця!

Хори ангелів прославляють
Бога в вишині, мир на землі!
Разом з ними я заспіваю,
Бог послав спасіння мені!

Приспів.

З пастухами я прийду до ясел
І схилюся низько перед тим,
Хто звільнив мене від зла й темряви,
Хто моє життя знов засвітив!

Приспів. (2)

Для Нього віддаєм свої серця! | (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6465151_l1','pisniua_6465151','YouTube','https://www.youtube.com/watch?v=IwoqDlf_pEI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6463673';
DELETE FROM song_versions WHERE song_id = 'pisniua_6463673';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6463673';
DELETE FROM songs WHERE id = 'pisniua_6463673';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6463673','Причарувала ти мого коня','Музика: Леонід Мазур Слова: Олена О''лір. Виконує: Леонід Мазур','uk','ukraine_1991',NULL,NULL,'youtube.com',NULL,'Вже відгули походи і бої,
Лише боліли ще недавні шрами...
Чи білий птах майнув під яворами,
Чи рукави мережані твої?
Причарувала ти мого коня...
Лишився він один мені за друга...
Стискала серце несказанна туга,
На схилі дня я їхав навмання...

Приспів:
Моя голубко, не було ні дня,
Щоб я не дякував за тебе Богу,
За те, що вечора того п''янкого
Причарувала ти мого коня!

В задумі я послабив поводи́,
І кінь пішов повільно за тобою.
Цеберку повну ти несла з водою,
І він припав губами до води.
Чи він від спраги очманів немов,
Чи то дання було в твоїй цеберці?
Занило солодко мені у серці...
Ти озирнулась, я з коня зійшов...

Приспів.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6463673'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6463673','Причарувала ти мого коня','Вже відгули походи і бої,
Лише боліли ще недавні шрами...
Чи білий птах майнув під яворами,
Чи рукави мережані твої?
Причарувала ти мого коня...
Лишився він один мені за друга...
Стискала серце несказанна туга,
На схилі дня я їхав навмання...

Приспів:
Моя голубко, не було ні дня,
Щоб я не дякував за тебе Богу,
За те, що вечора того п''янкого
Причарувала ти мого коня!

В задумі я послабив поводи́,
І кінь пішов повільно за тобою.
Цеберку повну ти несла з водою,
І він припав губами до води.
Чи він від спраги очманів немов,
Чи то дання було в твоїй цеберці?
Занило солодко мені у серці...
Ти озирнулась, я з коня зійшов...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6463673_l1','pisniua_6463673','YouTube','https://www.youtube.com/watch?v=FGzlXBuDWvw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6469353';
DELETE FROM song_versions WHERE song_id = 'pisniua_6469353';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6469353';
DELETE FROM songs WHERE id = 'pisniua_6469353';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6469353','Сяй, маленька зіронька','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Люба зірочко мала,
Де ж ти цілий день була?
Сяє зірка, не згаса,
Діамантом в небесах...
Люба зірочко мала,
Де ж ти цілий день була?

Зникло сонечко вночі
У далеку далечінь,
Світло своє запали
Промінцями угорі!
Люба зірочко мала,
Де ж ти цілий день була?

І самотній мандрівник
Бачить в небесі вказівник,
Він не знає куди йти,
Тож, будь ласочка, світи!
Люба зірочко мала,
Де ж ти цілий день була?

Зникло сонечко вночі
У далеку далечінь,
Хоч не знаю, як то йти,
Ясна зіронько, світи!
Люба зірочко мала,
Де ж ти цілий день була?','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6469353'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6469353','Сяй, маленька зіронька','Люба зірочко мала,
Де ж ти цілий день була?
Сяє зірка, не згаса,
Діамантом в небесах...
Люба зірочко мала,
Де ж ти цілий день була?

Зникло сонечко вночі
У далеку далечінь,
Світло своє запали
Промінцями угорі!
Люба зірочко мала,
Де ж ти цілий день була?

І самотній мандрівник
Бачить в небесі вказівник,
Він не знає куди йти,
Тож, будь ласочка, світи!
Люба зірочко мала,
Де ж ти цілий день була?

Зникло сонечко вночі
У далеку далечінь,
Хоч не знаю, як то йти,
Ясна зіронько, світи!
Люба зірочко мала,
Де ж ти цілий день була?');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6469353_l1','pisniua_6469353','YouTube','https://www.youtube.com/watch?v=QDb5P6EuDIY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6469353_l2','pisniua_6469353','YouTube','https://www.youtube.com/watch?v=fH-Qyh-Zles','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6467555';
DELETE FROM song_versions WHERE song_id = 'pisniua_6467555';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6467555';
DELETE FROM songs WHERE id = 'pisniua_6467555';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6467555','Зоре, в небі світи ясно!','Музика: Юрій Футуйма Слова: Олександра Кара','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Колихають янголятка
Йсусика малого,
Спи, дитятко, висипляйся,
Не бійся нічого!
Ми Тебе оберігаєм,             |
Пісеньки співаєм,              |
Люляй-люляй, Божий Сину,       |
Ми поколихаєм!                 | (2)

Приспів:
Зоре, в небі світи ясно!       |
Сповіщай про чудо!             |
Що у цих простеньких яслах     |
Месія наш, люди!               | (2)

Ти рости, рости, дитятко,
Людям на спасіння!
Набирайся сили в Бога
І всякого вміння!
Бо в житті Тобі прийдеться     |
Всяке пережити,                |
Ти - Спаситель всього людства, |
Всіх жити навчити!             | (2)

Приспів.

Речитатив:
Христос рождається!
Славімо Його!
Подякуймо Богові за цей рік,
Попросимо благословеня на наступний
І щоби перемога була швидко
І для нас всіх великою радістю!

Віримо Отцю й Сину,
Віримо в спасіння!
Вірим в Божую Дитину,
Людства воскресіння!
Син прийшов сюди на землю      |
Життя дарувати,                |
За нас всіх буде молитись      |
Наша Божа Мати!                | (2)

Приспів.

Що у цих простеньких яслах
Месія наш, люди!               | (2)','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6467555'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6467555','Зоре, в небі світи ясно!','Колихають янголятка
Йсусика малого,
Спи, дитятко, висипляйся,
Не бійся нічого!
Ми Тебе оберігаєм,             |
Пісеньки співаєм,              |
Люляй-люляй, Божий Сину,       |
Ми поколихаєм!                 | (2)

Приспів:
Зоре, в небі світи ясно!       |
Сповіщай про чудо!             |
Що у цих простеньких яслах     |
Месія наш, люди!               | (2)

Ти рости, рости, дитятко,
Людям на спасіння!
Набирайся сили в Бога
І всякого вміння!
Бо в житті Тобі прийдеться     |
Всяке пережити,                |
Ти - Спаситель всього людства, |
Всіх жити навчити!             | (2)

Приспів.

Речитатив:
Христос рождається!
Славімо Його!
Подякуймо Богові за цей рік,
Попросимо благословеня на наступний
І щоби перемога була швидко
І для нас всіх великою радістю!

Віримо Отцю й Сину,
Віримо в спасіння!
Вірим в Божую Дитину,
Людства воскресіння!
Син прийшов сюди на землю      |
Життя дарувати,                |
За нас всіх буде молитись      |
Наша Божа Мати!                | (2)

Приспів.

Що у цих простеньких яслах
Месія наш, люди!               | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6467555_l1','pisniua_6467555','YouTube','https://www.youtube.com/watch?v=vczfiFgDZTQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_646959';
DELETE FROM song_versions WHERE song_id = 'pisniua_646959';
DELETE FROM songs_fts WHERE song_id = 'pisniua_646959';
DELETE FROM songs WHERE id = 'pisniua_646959';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_646959','А в Івана під Хвірткою мурована фоса','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Пісні з Поділля. Українські народні пісні. Фольклорні записи та упорядкування О. М. Яковчука. - К.: Музична Україна, 1989. - 184 с.','*Фоса — канава; **Кожен рядок виконують за цим взірцем Гаїлки-Великдень: Українське свято Відродження Світа. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... - Мед і Ябка... Листки з приводу цієї Пісні: Коляда і Великдень: Різдво і Відродження Світа. Стежки до листків про Українські традиції.','А в Івана під Хвірткою мурована фоса*
Мурована фоса мурована фоса**

Прибіга до Івана тай Марічка боса
Ой прибігла під Віконце Ніженьками туп-туп
Вийди-вийди Мій Іваню бо я є вже тут-тут
Тай не вийшов Мій Іваньо вийшла його Ненька
Ой мій Боже милосердний Невістка маленька
Чи велика чи маленька просімо до Хати
Даймо Миску даймо Ложку просім вечеряти
Ой спасибі за вечерю вечеряла вдома
Тільки прийшла навідати чи Іваньо вдома
Ой є вдома ой є вдома та не має часу
Окріп гріє Муку сіє заробляє Квашу
Йому Кваша не вдалася Гречаники скисли
Як побачу Йвана з кимось за Серденько стисне','[''pisni.org.ua'', ''cat:podilski'', ''cat:vesilni'', ''cat:vesnyanky-hayivky'', ''Пісні з Поділля'', ''Весільні пісні'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_646959'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_646959','А в Івана під Хвірткою мурована фоса','А в Івана під Хвірткою мурована фоса*
Мурована фоса мурована фоса**

Прибіга до Івана тай Марічка боса
Ой прибігла під Віконце Ніженьками туп-туп
Вийди-вийди Мій Іваню бо я є вже тут-тут
Тай не вийшов Мій Іваньо вийшла його Ненька
Ой мій Боже милосердний Невістка маленька
Чи велика чи маленька просімо до Хати
Даймо Миску даймо Ложку просім вечеряти
Ой спасибі за вечерю вечеряла вдома
Тільки прийшла навідати чи Іваньо вдома
Ой є вдома ой є вдома та не має часу
Окріп гріє Муку сіє заробляє Квашу
Йому Кваша не вдалася Гречаники скисли
Як побачу Йвана з кимось за Серденько стисне');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_646959_l1','pisniua_646959','YouTube','https://www.youtube.com/watch?v=CEA7wg9kPNg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_64695';
DELETE FROM song_versions WHERE song_id = 'pisniua_64695';
DELETE FROM songs_fts WHERE song_id = 'pisniua_64695';
DELETE FROM songs WHERE id = 'pisniua_64695';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_64695','Зродились ми великої години','Музика: народна Слова: Олесь Бабій. Виконує: Вогневир, Сергій Василюк, Рутенія','uk','ukraine_before_1917',NULL,NULL,'1. Літопис УПА. 1996-1997.– Т.25: Пісні УПА','Це - Гимн Організації Українських Націоналістів (ОУН). За іншими джерелами: Марш Організації Українських Націоналістів (ОУН). Виконується у темпі маршу. Були поширені й інші варіанти тексту із незначними відмінностями (див. джерело 1). Два останні рядки кожної строфи спваються двічі. Em H7 Em H7 Am Em Am H7 C G Am Em Am Em Am Em H7 Em Підбір акордів: DNko_кізюк','Зродились ми великої години,
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
DELETE FROM song_links WHERE song_id = 'pisniua_6469991';
DELETE FROM song_versions WHERE song_id = 'pisniua_6469991';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6469991';
DELETE FROM songs WHERE id = 'pisniua_6469991';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6469991','Мати сина проводжала','Музика: Стася Май Слова: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мати сину вишивала сорочечку білу,
Мати сина проводжала в бій за Україну:
Йди, синочку мій рідненький, сину мій єдиний,
Я ж молитимусь за тебе і за Україну!

А калина білим цвітом сипала дорогу,
Й шепотіли срібні зорі про тривогу...
І летіли журавлята клином в небі сині,
Йшов хлопчина битись за Вкраїну!

Бій почався на світанні, кулі полетіли,
Та хлопчину врятувала сорочечка біла!
Мами рідної молитва оберегом стала!
З перемогою Вкраїна сина зустрічала!

А калина білим цвітом сипала дорогу,   |
Й кричали срібні зорі: Перемога!       |
І летіли журавлята клином в небі сині, |
І лунало: Слава Богу! Слава Україні!   | (2)','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6469991'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6469991','Мати сина проводжала','Мати сину вишивала сорочечку білу,
Мати сина проводжала в бій за Україну:
Йди, синочку мій рідненький, сину мій єдиний,
Я ж молитимусь за тебе і за Україну!

А калина білим цвітом сипала дорогу,
Й шепотіли срібні зорі про тривогу...
І летіли журавлята клином в небі сині,
Йшов хлопчина битись за Вкраїну!

Бій почався на світанні, кулі полетіли,
Та хлопчину врятувала сорочечка біла!
Мами рідної молитва оберегом стала!
З перемогою Вкраїна сина зустрічала!

А калина білим цвітом сипала дорогу,   |
Й кричали срібні зорі: Перемога!       |
І летіли журавлята клином в небі сині, |
І лунало: Слава Богу! Слава Україні!   | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6469991_l1','pisniua_6469991','YouTube','https://www.youtube.com/watch?v=TElaQFIi4ng','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6465757';
DELETE FROM song_versions WHERE song_id = 'pisniua_6465757';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6465757';
DELETE FROM songs WHERE id = 'pisniua_6465757';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6465757','Чоловіча розмова','Музика: Влад Ратуш Слова: Влад Ратуш. Виконує: Влад Ратуш','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Я щось сказав не те, пробач,
Хочеш, я стану на коліна...
На мене зла ти не тримай,
Навіть прошу тебе, як сина...
Хочеш як друга попрошу,
Скажу і щиро, і відверто,
Нашою дружбою дорожу,
Її ціную завжди вперто!

Приспів:
Чоловіча розмова
Це не в полі полова,
Слово вилетить птахом
І його не здогнать...
День прокинеться ранком,
Туман ляже серпанком.
Ті, що йдуть одним шляхом,
Їх повік не здолать!

В розмові я гарячкував,
Бо душу край мені ятрила,
Та тема, що пропагував,
Чи можуть буть в людини крила?
І навіть у думках було
Забуть тебе заради теми.
Отямившись, воно пройшло,
Збагнувши нащо, хто ми, де ми...

Приспів.

Я запитав, ти відповів,
Що рівною має бути спина,
Що жоден з нас не є святим,
Щоб перед ним стать на коліна.
Та на коліна я все ж став,
І нехай бита моя карта,
Цього ти, звісно, не чекав,
Та наша дружба того варта.

Приспів','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6465757'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6465757','Чоловіча розмова','Я щось сказав не те, пробач,
Хочеш, я стану на коліна...
На мене зла ти не тримай,
Навіть прошу тебе, як сина...
Хочеш як друга попрошу,
Скажу і щиро, і відверто,
Нашою дружбою дорожу,
Її ціную завжди вперто!

Приспів:
Чоловіча розмова
Це не в полі полова,
Слово вилетить птахом
І його не здогнать...
День прокинеться ранком,
Туман ляже серпанком.
Ті, що йдуть одним шляхом,
Їх повік не здолать!

В розмові я гарячкував,
Бо душу край мені ятрила,
Та тема, що пропагував,
Чи можуть буть в людини крила?
І навіть у думках було
Забуть тебе заради теми.
Отямившись, воно пройшло,
Збагнувши нащо, хто ми, де ми...

Приспів.

Я запитав, ти відповів,
Що рівною має бути спина,
Що жоден з нас не є святим,
Щоб перед ним стать на коліна.
Та на коліна я все ж став,
І нехай бита моя карта,
Цього ти, звісно, не чекав,
Та наша дружба того варта.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_646848';
DELETE FROM song_versions WHERE song_id = 'pisniua_646848';
DELETE FROM songs_fts WHERE song_id = 'pisniua_646848';
DELETE FROM songs WHERE id = 'pisniua_646848';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_646848','Там на Ставі на Ставочку','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Пісні з Галичини. Упорядники Р. П. Береза, М. О. Дацко. — Львів: Світ, 1997. — 192 с.','Хто каже: Не журися...? Господь Бог. Пара - Качечки-Дубочок. Барвінок-Шалвія. Вибір Пари. Гаїлки-Великдень: Українське свято Відродження Світа. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Коза. Кіт... - Мед і Ябка... А на тій Вербі Рожеві Квіти. І для тебе Пару маю. Качата-Гусята усі Гори вкрили. Там плаває Сім Качочок. Листки з приводу цієї Пісні: Коляда і Великдень: Різдво і Відродження Світа. Стежки до листків про Українські традиції.','Там на Ставі на Ставочку
Там плаває Сім Качочок    |(2)

Одна другу доганяє
Кожна свою Пару має       |(2)

Та Дівчина затужила
Свою Пару загубила        |(2)

Обізвався Господь з неба
Тобі Пари ще не треба     |(2)

Обізвався Господонько
Не журися Дівчинонько     |(2)

Я за всіх вас пам''ятаю
І для тебе Пару маю       |(2)

Там у Лісі є Дубочок
Там стоїть твій Парубочок |(2)

Йшла Дівчина до Дубочка
Натрапила Парубочка       |(2)

Ти Дівчино де ж Ти росла
Що до мене сама прийшла   |(2)

В чім Тя Мати викупала
Що мені ся сподобала      |(2)

Чи в Барвінку чи в Шалвії
За Тобою серце мліє       |(2)','[''pisni.org.ua'', ''cat:halycki'', ''cat:kupalski'', ''cat:vesnyanky-hayivky'', ''cat:zeleni-svyata'', ''Пісні з Галичини'', ''Купальські пісні'', ''Веснянки та гаївки'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_646848'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_646848','Там на Ставі на Ставочку','Там на Ставі на Ставочку
Там плаває Сім Качочок    |(2)

Одна другу доганяє
Кожна свою Пару має       |(2)

Та Дівчина затужила
Свою Пару загубила        |(2)

Обізвався Господь з неба
Тобі Пари ще не треба     |(2)

Обізвався Господонько
Не журися Дівчинонько     |(2)

Я за всіх вас пам''ятаю
І для тебе Пару маю       |(2)

Там у Лісі є Дубочок
Там стоїть твій Парубочок |(2)

Йшла Дівчина до Дубочка
Натрапила Парубочка       |(2)

Ти Дівчино де ж Ти росла
Що до мене сама прийшла   |(2)

В чім Тя Мати викупала
Що мені ся сподобала      |(2)

Чи в Барвінку чи в Шалвії
За Тобою серце мліє       |(2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_646848_l1','pisniua_646848','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_646542';
DELETE FROM song_versions WHERE song_id = 'pisniua_646542';
DELETE FROM songs_fts WHERE song_id = 'pisniua_646542';
DELETE FROM songs WHERE id = 'pisniua_646542';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_646542','Пісня про Львів','Музика: Михайло Зарічний Слова: Михайло Зарічний. Виконує: Михайло Зарічний, ПереBANDя','uk','ukraine_1991',NULL,NULL,'Авторське подання','Підбір акордів: Михайло Зарічний','F#m
Не віриться нізащо
Bm
Що ще десь є
E
На світі місто краще
C#m
Аніж моє
F#
Де б я не був і кого б не стрів
Завжди домому вертаюсь у Львів
Додому повертаюсь я
F#m
У рідний Львів

Bm
До вподоби комусь лондонськії тумани
F#m
Мені ж миле місто Львів із його дощами
Цю погоду львівською звуть
Bm
Комусь добре на Монмартрі у ресторані
F#m
Мені ж милі львівські затишнії кав''ярні
Мої друзі каву в них п''ють

Полинеш на край світу
На крилах мрій
Нелегко зрозуміти
Все ж зрозумій

Де б ти не був і кого б не стрів
Завжди домому вертаєш у Львів
Додому повертаєшся
У рідний Львів

Дехто любить у Нью-Йорку Емпайр Стейтс Білдинг
Мені ж милі львівські мури старі будівлі
Кам''яниці порох століть

Монументів є чимало в старій Варшаві
Ми ж несемо квіти нашому Кобзареві
Що у Львові в бронзі стоїть

Не віриться нізащо    |
Що ще десь є          |
На світі місто краще  |(2, затихаючи)
Аніж моє              |','[''pisni.org.ua'', ''cat:bardivski'', ''cat:lviv'', ''Бардівські пісні'', ''Пісні про Львів'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_646542'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_646542','Пісня про Львів','F#m
Не віриться нізащо
Bm
Що ще десь є
E
На світі місто краще
C#m
Аніж моє
F#
Де б я не був і кого б не стрів
Завжди домому вертаюсь у Львів
Додому повертаюсь я
F#m
У рідний Львів

Bm
До вподоби комусь лондонськії тумани
F#m
Мені ж миле місто Львів із його дощами
Цю погоду львівською звуть
Bm
Комусь добре на Монмартрі у ресторані
F#m
Мені ж милі львівські затишнії кав''ярні
Мої друзі каву в них п''ють

Полинеш на край світу
На крилах мрій
Нелегко зрозуміти
Все ж зрозумій

Де б ти не був і кого б не стрів
Завжди домому вертаєш у Львів
Додому повертаєшся
У рідний Львів

Дехто любить у Нью-Йорку Емпайр Стейтс Білдинг
Мені ж милі львівські мури старі будівлі
Кам''яниці порох століть

Монументів є чимало в старій Варшаві
Ми ж несемо квіти нашому Кобзареві
Що у Львові в бронзі стоїть

Не віриться нізащо    |
Що ще десь є          |
На світі місто краще  |(2, затихаючи)
Аніж моє              |');
DELETE FROM song_links WHERE song_id = 'pisniua_6472695';
DELETE FROM song_versions WHERE song_id = 'pisniua_6472695';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6472695';
DELETE FROM songs WHERE id = 'pisniua_6472695';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6472695','Дитячими долонями','Музика: Наталія Май Слова: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Творчий центр Наталії Май.','Нам дитинство спалене війною
Принесли на крилечках птахи,
І обходить радість стороною
Кожен день вкраїнських дітлахів.
Та не треба говорити,
Що весни не буде,
Україна буде жити,
Бо такі в нас люди!

Приспів
Дитячими долонями    |
Закриєм Україну!     |
Дитячими долонями    |
Врятуєм Батьківщину! | (2)

Ми ракети спинимо руками,
Стане мирним небо назавжди!
Землю рідну нашими серцями
Ми разом закриєм від біди!
І не треба говорити,
Що весни не буде,
Україна буде жити,
Бо такі в нас люди!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:patriotic'', ''cat:viyskovi'', ''Пісні російсько-української війни та АТО'', ''Патріотичні пісні'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6472695'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6472695','Дитячими долонями','Нам дитинство спалене війною
Принесли на крилечках птахи,
І обходить радість стороною
Кожен день вкраїнських дітлахів.
Та не треба говорити,
Що весни не буде,
Україна буде жити,
Бо такі в нас люди!

Приспів
Дитячими долонями    |
Закриєм Україну!     |
Дитячими долонями    |
Врятуєм Батьківщину! | (2)

Ми ракети спинимо руками,
Стане мирним небо назавжди!
Землю рідну нашими серцями
Ми разом закриєм від біди!
І не треба говорити,
Що весни не буде,
Україна буде жити,
Бо такі в нас люди!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6472695_l1','pisniua_6472695','YouTube','https://www.youtube.com/watch?v=td1cMZ6MQXU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6472695_l2','pisniua_6472695','YouTube','https://www.youtube.com/watch?v=_urgRwknhEA','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_647252';
DELETE FROM song_versions WHERE song_id = 'pisniua_647252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_647252';
DELETE FROM songs WHERE id = 'pisniua_647252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_647252','Дивлюся, аж світає (три голоси)','Музика: М. Колесник Слова: Тарас Шевченко. Виконує: Хор "Чумаки"','uk','ukraine_1991',NULL,'1993','1. Плавай, плавай, лебедонько. Народні пісні на слова Т. Шевченка. Упор. О. А. Правдюк. К., "Музична Україна", 1981, с. 74. 2. У самій збірці О. Правдюка - посилання на попереднє видання: Пісні великого кобзаря, К., 1964, с. 238. 3. Народні пісні на слова Тараса Шевченка. Вступна стаття, упорядкування та примітки О. Правдюка. - К.: В-во АН УРСР, 1961. - 240 с. 4. В. Триліс - триголосся.','Слова пісні — уривок з поеми "Сон" Т. Г. Шевченка. В репертуарі чоловічого хору "Чумаки" (м. Київ) з 1993 року. Мелодія (і, відповідно, гармонія) явно не фольклорного характеру. Скоріш за все, це аматорський твір десь 2-ї половини ХХ ст. Цікаво було б хоч щось дізнатися про походження мелодії. Пізніший додаток: Мелодію склав М. Колесник (м. Здолбунів, на Рівненщині). З матеріалів ІМФЕ АН УРСР (Дж. 3)','Дивлюся, аж світає,
Край неба палає,
Соловейко в темнім гаї
Сонце зустрічає.

Тихесенько вітер віє,
Степи, лани мріють,
Між ярами над ставами
Верби зеленіють.

Сади рясні похилились,
Тополі по волі
Стоять собі, мов сторожа,
Розмовляють з полем.

І все то те, вся країна
Повита красою,
Зеленіє, вмивається
Дрібною росою','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:zeleni-svyata'', ''Пісні про красу природи'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_647252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_647252','Дивлюся, аж світає (три голоси)','Дивлюся, аж світає,
Край неба палає,
Соловейко в темнім гаї
Сонце зустрічає.

Тихесенько вітер віє,
Степи, лани мріють,
Між ярами над ставами
Верби зеленіють.

Сади рясні похилились,
Тополі по волі
Стоять собі, мов сторожа,
Розмовляють з полем.

І все то те, вся країна
Повита красою,
Зеленіє, вмивається
Дрібною росою');
DELETE FROM song_links WHERE song_id = 'pisniua_6469972';
DELETE FROM song_versions WHERE song_id = 'pisniua_6469972';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6469972';
DELETE FROM songs WHERE id = 'pisniua_6469972';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6469972','Чоловік, Герасим',NULL,'uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Чоловік, Герасим, а я - твоя кудла,
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
DELETE FROM song_links WHERE song_id = 'pisniua_6467746';
DELETE FROM song_versions WHERE song_id = 'pisniua_6467746';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6467746';
DELETE FROM songs WHERE id = 'pisniua_6467746';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6467746','Добрий вечір тобі','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис',NULL,'Добрий вечір тобі,
Пане господарю! Радуйся!
Ой, радуйся, земле -
Твій народ відродився!

Та берім за зброю,
Та все кулеметну! Радуйся!
Ой, радуйся, земле -
Твій народ відродився!

Та женім з Вкраїни
Ворогів проклятих! Радуйся!
Ой, радуйся, земле -
Твій народ відродився!

Гей, повстане скоро
Вільна Україна! Радуйся!
Ой, радуйся, земле -
Твій народ відродився!','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6467746'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6467746','Добрий вечір тобі','Добрий вечір тобі,
Пане господарю! Радуйся!
Ой, радуйся, земле -
Твій народ відродився!

Та берім за зброю,
Та все кулеметну! Радуйся!
Ой, радуйся, земле -
Твій народ відродився!

Та женім з Вкраїни
Ворогів проклятих! Радуйся!
Ой, радуйся, земле -
Твій народ відродився!

Гей, повстане скоро
Вільна Україна! Радуйся!
Ой, радуйся, земле -
Твій народ відродився!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6467746_l1','pisniua_6467746','YouTube','https://www.youtube.com/watch?v=wAmzpKlc7ZY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6478673';
DELETE FROM song_versions WHERE song_id = 'pisniua_6478673';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6478673';
DELETE FROM songs WHERE id = 'pisniua_6478673';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6478673','Immigrant song','Музика: Alex Kozar Слова: Alex Kozar, Іво Бобул','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Розкидала доля по куткам Землі,
Від батьків далеко дочки і сини,
Кожен мріє про "come back" додому,
Та не слушний час...
Кожен відчуває втому,
Кожен цей є серед нас!..

Ти скажи мені! Ти скажи мені,
Де знайдемо миру, на якій землі?
Скільки треба нам почути: Так чи Ні,
Щоб щасливим бути наяву, не уві сні?..
Ти скажи мені! Ти скажі мені,
Коли вертатись буде час?
Ти скажи мені, на якій землі
Чекати будуть нас?

Знов я проводжаю близьких в один кінець,
І по світу знаю, мільйон таких сердець.
Залишають вони дім свій,
А разом з ним і вся сім''я
І пече всім душу ностальгії полум''я...

Батьку, Ти скажи мені,
Ми ж знайдемо миру на нашій землі?
Сину мій: Ми повернемо Україну!
І на оновленій землі
Не буде більше супостата,
А будуть Люди! Буде мир!
Ми пам''ятатимо Героїв, що заплатили
За наше щастя на Землі!..

Я скажу тобі, я скажу тобі:
Ми знайдемо миру на своїй землі!
Не треба нам чекати більше Так чи Ні,
Щоб щасливим бути наяву, не уві сні!..
Я скажу тобі, я скажу тобі:
Нам повертатись буде час!
Я скажу тобі: на своїй землі
Чекати будуть нас!..','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6478673'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6478673','Immigrant song','Розкидала доля по куткам Землі,
Від батьків далеко дочки і сини,
Кожен мріє про "come back" додому,
Та не слушний час...
Кожен відчуває втому,
Кожен цей є серед нас!..

Ти скажи мені! Ти скажи мені,
Де знайдемо миру, на якій землі?
Скільки треба нам почути: Так чи Ні,
Щоб щасливим бути наяву, не уві сні?..
Ти скажи мені! Ти скажі мені,
Коли вертатись буде час?
Ти скажи мені, на якій землі
Чекати будуть нас?

Знов я проводжаю близьких в один кінець,
І по світу знаю, мільйон таких сердець.
Залишають вони дім свій,
А разом з ним і вся сім''я
І пече всім душу ностальгії полум''я...

Батьку, Ти скажи мені,
Ми ж знайдемо миру на нашій землі?
Сину мій: Ми повернемо Україну!
І на оновленій землі
Не буде більше супостата,
А будуть Люди! Буде мир!
Ми пам''ятатимо Героїв, що заплатили
За наше щастя на Землі!..

Я скажу тобі, я скажу тобі:
Ми знайдемо миру на своїй землі!
Не треба нам чекати більше Так чи Ні,
Щоб щасливим бути наяву, не уві сні!..
Я скажу тобі, я скажу тобі:
Нам повертатись буде час!
Я скажу тобі: на своїй землі
Чекати будуть нас!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6478673_l1','pisniua_6478673','YouTube','https://www.youtube.com/watch?v=lm8rdXfaMl0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6466695';
DELETE FROM song_versions WHERE song_id = 'pisniua_6466695';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6466695';
DELETE FROM songs WHERE id = 'pisniua_6466695';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6466695','Скоро Різдво','Музика: Андрій Кузьменко Слова: Андрій Кузьменко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Зовсім недавно ще літо було,
Трохи погріло і знову десь пішло!..
Будуть ще свята і буде тепло,
Виженуть холод і виженуть зло!..

Приспів:
Скоро Різдво!..
Хатки всі снігом замело...
Нове Різдво!..
Вогники сміхом дарують тепло...
Буде Різдво!..
Зіроньки з неба сіють добро...
Скоро Різдво!..

Злого нікому не пам''ятай
І з Новим Роком всіх привітай!
Буде, як в небі, і буде тут рай,
Двері додому тільки не закривай!..

Приспів. (2)','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6466695'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6466695','Скоро Різдво','Зовсім недавно ще літо було,
Трохи погріло і знову десь пішло!..
Будуть ще свята і буде тепло,
Виженуть холод і виженуть зло!..

Приспів:
Скоро Різдво!..
Хатки всі снігом замело...
Нове Різдво!..
Вогники сміхом дарують тепло...
Буде Різдво!..
Зіроньки з неба сіють добро...
Скоро Різдво!..

Злого нікому не пам''ятай
І з Новим Роком всіх привітай!
Буде, як в небі, і буде тут рай,
Двері додому тільки не закривай!..

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6466695_l1','pisniua_6466695','YouTube','https://www.youtube.com/watch?v=qIA-JYnf-dM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6466695_l2','pisniua_6466695','YouTube','https://www.youtube.com/watch?v=HT3TRO-K6Rg','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6473899';
DELETE FROM song_versions WHERE song_id = 'pisniua_6473899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6473899';
DELETE FROM songs WHERE id = 'pisniua_6473899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6473899','Сентиментальність','Музика: Віктор Охріменко Слова: Іван Гентош. Виконує: Віктор Ох','uk','ukraine_1991',NULL,NULL,'авторське подання','Пісню виконує Віктор Охріменко.','З роками ми стаєм сентиментальні,
Цінуєм усміх, дотик до руки,
Вечірнє чаювання у вітальні -
Ті серце зігріваючі ковтки...

Цінуєм погляд, в ньому стільки дива -
Вологий блиск очей і світ без меж,
Цінуєм шепіт: - Я така щаслива...
І стишене: - І я, кохана, теж...

А світ довкіл такий несамовитий,
І в нім дорогоцінна кожна мить...
Вже знаємо - років не зупинити,
І біг наш по життю не зупинить.

Приходить щось незвідане раніше,
Тремтливе, як далекий стук коліс...
Стаємо і ніжніші, і мудріші -
І спогади зворушують до сліз.

Збентежені й беззахисні, як діти,
Із осені прямуєм до зими...
А інші будуть тут колись сидіти,
І обійматись будуть так, як ми.

І буде чай, і буде ніч надворі,
І знов щасливий шепіт молодих...
І будуть зверху мерехтіти зорі,
І ми, напевно, будем серед них...','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6473899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6473899','Сентиментальність','З роками ми стаєм сентиментальні,
Цінуєм усміх, дотик до руки,
Вечірнє чаювання у вітальні -
Ті серце зігріваючі ковтки...

Цінуєм погляд, в ньому стільки дива -
Вологий блиск очей і світ без меж,
Цінуєм шепіт: - Я така щаслива...
І стишене: - І я, кохана, теж...

А світ довкіл такий несамовитий,
І в нім дорогоцінна кожна мить...
Вже знаємо - років не зупинити,
І біг наш по життю не зупинить.

Приходить щось незвідане раніше,
Тремтливе, як далекий стук коліс...
Стаємо і ніжніші, і мудріші -
І спогади зворушують до сліз.

Збентежені й беззахисні, як діти,
Із осені прямуєм до зими...
А інші будуть тут колись сидіти,
І обійматись будуть так, як ми.

І буде чай, і буде ніч надворі,
І знов щасливий шепіт молодих...
І будуть зверху мерехтіти зорі,
І ми, напевно, будем серед них...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6473899_l1','pisniua_6473899','YouTube','https://www.youtube.com/watch?v=rwDD7BsaJeo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_647593';
DELETE FROM song_versions WHERE song_id = 'pisniua_647593';
DELETE FROM songs_fts WHERE song_id = 'pisniua_647593';
DELETE FROM songs WHERE id = 'pisniua_647593';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_647593','Дім для душі','Музика: Володимир Шинкарук Слова: Володимир Шинкарук, О. Ігамбардиєв. Виконує: Володимир Шинкарук','uk','ukraine_1991',NULL,NULL,'Аудіо-CD "Володим Шинкарук. Дім для душі" (2002)','Записано на слух з аудіо. * Am/F [0 0 3 2 1 0] Підбір акордів: bohdanko (www.pisni.org.ua)','Вступ: Dm C Am Dm
Будував я дім для душі -
Gm       C        Am/F*
світлий і затишний дім.
Мріяв, щоб душа в дім цей увійшла |
і навік зосталася в нім.          | (2)
З рання й до темна з каменю і скла
будував я дім для душі.
Та чомусь душа жити не змогла     |
в домі тім кам''янім.              | (2)
Я ховав печаль і шукав кришталь -
Зводив кришталевий дім.
Тільки знов душі жити не змогла   |
в кришталевім домі тім...         | (2)
Душа прожити не змогла         |
в кришталевім домі.            | (2)
Мріяв я всі дні про стіни золоті -
будував із золота дім.
Жив немов вві сні, а душа мені    |
Тихо проказала "ні".              | (2)
Лиш тоді без слів все я зрозумів -
Збудував з любові свій дім.
І тоді душа в дім мій увійшла     |
І навік зосталася в нім.          | (2)
Душа зосталася навік           |
в домі з любові...             | (2)
в домі з любові...
Am           Dm    С Am Dm
в домі любові.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_647593'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_647593','Дім для душі','Вступ: Dm C Am Dm
Будував я дім для душі -
Gm       C        Am/F*
світлий і затишний дім.
Мріяв, щоб душа в дім цей увійшла |
і навік зосталася в нім.          | (2)
З рання й до темна з каменю і скла
будував я дім для душі.
Та чомусь душа жити не змогла     |
в домі тім кам''янім.              | (2)
Я ховав печаль і шукав кришталь -
Зводив кришталевий дім.
Тільки знов душі жити не змогла   |
в кришталевім домі тім...         | (2)
Душа прожити не змогла         |
в кришталевім домі.            | (2)
Мріяв я всі дні про стіни золоті -
будував із золота дім.
Жив немов вві сні, а душа мені    |
Тихо проказала "ні".              | (2)
Лиш тоді без слів все я зрозумів -
Збудував з любові свій дім.
І тоді душа в дім мій увійшла     |
І навік зосталася в нім.          | (2)
Душа зосталася навік           |
в домі з любові...             | (2)
в домі з любові...
Am           Dm    С Am Dm
в домі любові.');
DELETE FROM song_links WHERE song_id = 'pisniua_6475673';
DELETE FROM song_versions WHERE song_id = 'pisniua_6475673';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6475673';
DELETE FROM songs WHERE id = 'pisniua_6475673';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6475673','Буревіями','Слова: Олег Шумей, Джеральд Естрада, Злата Огнєвіч, Ребека Мікхаелі','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Між нами підняті не ті мости,
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
DELETE FROM song_links WHERE song_id = 'pisniua_6471797';
DELETE FROM song_versions WHERE song_id = 'pisniua_6471797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6471797';
DELETE FROM songs WHERE id = 'pisniua_6471797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6471797','Мамо, не плач','Музика: Макс Барських Слова: Макс Барських','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Мамо, не плач, я повернусь!     |
Все буде добре, я вірю, чомусь! |
Мамо, чекай, і передай всім:    |
Не віддамо ми нікому наш дім!   | (2)

Колись скінчиться
Цей колючий лютий,
Лиш в пам''яті тепер
Він назавжди...
Ворог прийшов в наш
Дім заклятий, лютий,
Лишить по собі попіл і дим...
Їм не вдалось зламати
Нашу волю, бо кожен
Сам собі пообіцяв:
Стояти так, ніби немає болю,
Ніби сталеві в грудях серця!..

Приспів.

Всі наші діти мають бути вільні!
Ми повернемо всі наші міста!
Тримайтесь, рідні,
Разом будем сильні,
Щоб перемоги час швидше настав!
Їм не вдалось зламати
Нашу волю, бо кожен
Сам собі пообіцяв:
Стояти так, ніби немає болю,
Ніби сталеві в грудях серця!..

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:pro-ditey'', ''Пісні російсько-української війни та АТО'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6471797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6471797','Мамо, не плач','Приспів:
Мамо, не плач, я повернусь!     |
Все буде добре, я вірю, чомусь! |
Мамо, чекай, і передай всім:    |
Не віддамо ми нікому наш дім!   | (2)

Колись скінчиться
Цей колючий лютий,
Лиш в пам''яті тепер
Він назавжди...
Ворог прийшов в наш
Дім заклятий, лютий,
Лишить по собі попіл і дим...
Їм не вдалось зламати
Нашу волю, бо кожен
Сам собі пообіцяв:
Стояти так, ніби немає болю,
Ніби сталеві в грудях серця!..

Приспів.

Всі наші діти мають бути вільні!
Ми повернемо всі наші міста!
Тримайтесь, рідні,
Разом будем сильні,
Щоб перемоги час швидше настав!
Їм не вдалось зламати
Нашу волю, бо кожен
Сам собі пообіцяв:
Стояти так, ніби немає болю,
Ніби сталеві в грудях серця!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6471797_l1','pisniua_6471797','YouTube','https://www.youtube.com/watch?v=G436hPadt9k','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6475542';
DELETE FROM song_versions WHERE song_id = 'pisniua_6475542';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6475542';
DELETE FROM songs WHERE id = 'pisniua_6475542';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6475542','Струни','Музика: 100lytsia.band Слова: 100lytsia.band','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісня-реквієм у пам''ять тих, хто назавжди залишився стояти за правду та за рідну землю.','Я запалю свічку уночі за їхні душі,
Які полетіли в далечінь за правду ідучи,
Взявши в руки зброю, силу, волю нас боронили,
Шкода, що молоді такі до небес полетіли...

Приспів:
У душі я згадую про тебе уночі,
Бачу зорі в чистім небі, десь там ти,
Знаю, дивишся на мене з висоти...
Поки я живу, в серці будеш жити й ти!..
Хай пролунають струни гітари,
І я заспіваю про тих, хто не з нами,
Про тих, хто далеко, але в серці назавжди,
Про тих, хто віддали Богу душу,
Стоявши за правду!..

На самоті згадаю про тебе,
Сльози і біль на душі, бо ти там, на небі...
Я мовчки посиджу, усмішку твою згадаю про себе,
І прошепочу сама собі: Ти так мені треба...

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''Пісні російсько-української війни та АТО'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6475542'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6475542','Струни','Я запалю свічку уночі за їхні душі,
Які полетіли в далечінь за правду ідучи,
Взявши в руки зброю, силу, волю нас боронили,
Шкода, що молоді такі до небес полетіли...

Приспів:
У душі я згадую про тебе уночі,
Бачу зорі в чистім небі, десь там ти,
Знаю, дивишся на мене з висоти...
Поки я живу, в серці будеш жити й ти!..
Хай пролунають струни гітари,
І я заспіваю про тих, хто не з нами,
Про тих, хто далеко, але в серці назавжди,
Про тих, хто віддали Богу душу,
Стоявши за правду!..

На самоті згадаю про тебе,
Сльози і біль на душі, бо ти там, на небі...
Я мовчки посиджу, усмішку твою згадаю про себе,
І прошепочу сама собі: Ти так мені треба...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6475542_l1','pisniua_6475542','YouTube','https://www.youtube.com/watch?v=GvISiw5eQLg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6471195';
DELETE FROM song_versions WHERE song_id = 'pisniua_6471195';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6471195';
DELETE FROM songs WHERE id = 'pisniua_6471195';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6471195','Серце моє там, де Україна','Музика: Володимир Коваленко Слова: Василь Богачук','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Кличе край, де золотиться жито,
І цвіте калина у гаю,
Вишиває жовту ниву літо,
Я ж країну серцем всім люблю!
Гляну в далич, у краї далекі,
Навкруги розкинувся розмай,
А в небі летять, летять лелеки,
Кличуть моє серце в рідний край!

Приспів:
Соловей співає на калині,
Пісня лине аж за небокрай!
Серце моє там, де Україна!
Серце моє там, де рідний край!
Соловей співає на калині,
Пісня лине аж за небокрай!
Серце моє там, де Україна!
Україна там, де рідний край!

Будять мене ранки із росою,
Ніжні переливи солов''я,
Вийду і милуюся красою,
Як скидає цвіт земля моя!
Гляну в далич, у краї далекі,
Навкруги розкинувся розмай,
А в небі летять, летять лелеки,
Кличуть моє серце в рідний край!

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:patriotic'', ''Пісні про красу природи'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6471195'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6471195','Серце моє там, де Україна','Кличе край, де золотиться жито,
І цвіте калина у гаю,
Вишиває жовту ниву літо,
Я ж країну серцем всім люблю!
Гляну в далич, у краї далекі,
Навкруги розкинувся розмай,
А в небі летять, летять лелеки,
Кличуть моє серце в рідний край!

Приспів:
Соловей співає на калині,
Пісня лине аж за небокрай!
Серце моє там, де Україна!
Серце моє там, де рідний край!
Соловей співає на калині,
Пісня лине аж за небокрай!
Серце моє там, де Україна!
Україна там, де рідний край!

Будять мене ранки із росою,
Ніжні переливи солов''я,
Вийду і милуюся красою,
Як скидає цвіт земля моя!
Гляну в далич, у краї далекі,
Навкруги розкинувся розмай,
А в небі летять, летять лелеки,
Кличуть моє серце в рідний край!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6471195_l1','pisniua_6471195','YouTube','https://www.youtube.com/watch?v=TLuN-QzaFJ0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6479252';
DELETE FROM song_versions WHERE song_id = 'pisniua_6479252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6479252';
DELETE FROM songs WHERE id = 'pisniua_6479252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6479252','Братику','Музика: Не Ждали Слова: Не Ждали','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Поля туманом, світає рано,
І небом хмари пливуть,
З самого ранку піхота й танки
На нас ідуть і ідуть...
Тримайся, брате, не час нам спати,
До купи всю нашу лють,
Готуєм зброю і вже до бою!
За мить стріляти почнуть...

Приспів:
Давай, братику мій,
Ще не закінчився наш бій!
За нами доли і поля,
За нами вся наша земля!
Давай, братику мій,
Ще не закінчився наш бій!
За дім, за рідні нам серця
Будем стояти до кінця!

А вже й під вечір все лізе нечисть,
Так день пройшов і не зчувсь...
Є час спитати: Ти, як там, брате?
І ждеш у відповідь: "Плюс!"
Одна дорога до перемоги,
Ще є в нас трохи бека.
Нас там чекають, надію мають,
Тому в нас доля така!

Приспів.

Давай, братику мій,
Ще не закінчився наш бій!
Ми стоїмо з тобою тут
За Київ, Харків, за Бахмут!
Ставай, братику мій,
Ще не закінчився наш бій!
За нами доли і поля,
За нами вся наша земля!
Давай, братику мій,
Ще не закінчився наш бій!
За дім, за рідні нам серця
Будем стояти до кінця!','[''pisni.org.ua'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6479252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6479252','Братику','Поля туманом, світає рано,
І небом хмари пливуть,
З самого ранку піхота й танки
На нас ідуть і ідуть...
Тримайся, брате, не час нам спати,
До купи всю нашу лють,
Готуєм зброю і вже до бою!
За мить стріляти почнуть...

Приспів:
Давай, братику мій,
Ще не закінчився наш бій!
За нами доли і поля,
За нами вся наша земля!
Давай, братику мій,
Ще не закінчився наш бій!
За дім, за рідні нам серця
Будем стояти до кінця!

А вже й під вечір все лізе нечисть,
Так день пройшов і не зчувсь...
Є час спитати: Ти, як там, брате?
І ждеш у відповідь: "Плюс!"
Одна дорога до перемоги,
Ще є в нас трохи бека.
Нас там чекають, надію мають,
Тому в нас доля така!

Приспів.

Давай, братику мій,
Ще не закінчився наш бій!
Ми стоїмо з тобою тут
За Київ, Харків, за Бахмут!
Ставай, братику мій,
Ще не закінчився наш бій!
За нами доли і поля,
За нами вся наша земля!
Давай, братику мій,
Ще не закінчився наш бій!
За дім, за рідні нам серця
Будем стояти до кінця!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6479252_l1','pisniua_6479252','YouTube','https://www.youtube.com/watch?v=DQJdVOVY96g','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6479858';
DELETE FROM song_versions WHERE song_id = 'pisniua_6479858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6479858';
DELETE FROM songs WHERE id = 'pisniua_6479858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6479858','Якби не ти','Музика: Максим Бородін Слова: Максим Бородін','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Якби не ти,
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
DELETE FROM song_links WHERE song_id = 'pisniua_647144';
DELETE FROM song_versions WHERE song_id = 'pisniua_647144';
DELETE FROM songs_fts WHERE song_id = 'pisniua_647144';
DELETE FROM songs WHERE id = 'pisniua_647144';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_647144','Ой гаю мій, гаю','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Народні українські пісні в Київщині. Записав П. Демуцький. Ч. 2. — К., 1907. — С. 123.',NULL,'Ой гаю мій, гаю,
Та густий — не прогляну,
Та густий, зелененький,
Де гуляє миленький.
Гуляє, гуляє,
Сивим конем грає,
Сивим конем грає,
Уся челядь гуляє.
Вся челядь гуляє,
Тільки мої й немає,
Тільки мої й немає —
У піч дрова рубає.
В печі запалила,
Вечерять наварила,
Вечерять наварила,
Матір спать положила:
"Ой лягай, мати, спати,
А я піду гуляти,
А я піду до вишні,
Полюбила до мислі!
А я піду до груші,
Полюбила до душі!
А я піду до гаю:
"Прийди, серце, кохаю!"','[''pisni.org.ua'', ''cat:naddnipryanski'', ''Наддніпрянські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_647144'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_647144','Ой гаю мій, гаю','Ой гаю мій, гаю,
Та густий — не прогляну,
Та густий, зелененький,
Де гуляє миленький.
Гуляє, гуляє,
Сивим конем грає,
Сивим конем грає,
Уся челядь гуляє.
Вся челядь гуляє,
Тільки мої й немає,
Тільки мої й немає —
У піч дрова рубає.
В печі запалила,
Вечерять наварила,
Вечерять наварила,
Матір спать положила:
"Ой лягай, мати, спати,
А я піду гуляти,
А я піду до вишні,
Полюбила до мислі!
А я піду до груші,
Полюбила до душі!
А я піду до гаю:
"Прийди, серце, кохаю!"');
DELETE FROM song_links WHERE song_id = 'pisniua_6478991';
DELETE FROM song_versions WHERE song_id = 'pisniua_6478991';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6478991';
DELETE FROM songs WHERE id = 'pisniua_6478991';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6478991','Мама','Музика: Дмитро Волканов Слова: Дмитро Волканов','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мам,
Таке лагідне і ніжне слово!
Мам, мама...
Мам,
А ти б мене не зрадила ніколи!
Мам, мама...
Знаєш, як тебе люблю!?!
Знаєш, як тебе ціную!?!
У своїх піснях для тебе
Щастя намалюю!..

Приспів:
Телефонуйте мамі,
Забігайте в гості,
Бо мама - ваш найкращий друг!
Телефонуйте мамі,
Не шкодуйте коштів,
Цінуйте ніжність її рук!
Бо як не стане мами,
Станемо дорослі,
А так ми досі ще малі!..
Телефонуйте мамі!..
Любіть її!..

Мам,
А пам''ятаєш, як водила в школу?..
Мама, мама...
Мам,
Мене в образу не дала нікому!..
Мама, мама...
Подорослішали ми,
В мене вже своя родина,
Але знай, що назавжди
Для мене ти єдина!

Приспів.

Я вічно бачу твої очі,
Дякую за безсонні ночі!..
Мам, мам...
Тебе люблю я!..
Мам, почуй мої слова,
І будь завжди зі мною!
Мамо! Мамо! Мамо моя!..
Телефонуйте мамі,
Забігайте в гості,
Бо мама - ваш найкращий друг!
Телефонуйте мамі,
Не шкодуйте коштів,
Цінуйте ніжність її рук!
Бо як не стане мами,
Станемо дорослі,
А так ми досі ще малі!..
Телефонуйте мамі!..','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6478991'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6478991','Мама','Мам,
Таке лагідне і ніжне слово!
Мам, мама...
Мам,
А ти б мене не зрадила ніколи!
Мам, мама...
Знаєш, як тебе люблю!?!
Знаєш, як тебе ціную!?!
У своїх піснях для тебе
Щастя намалюю!..

Приспів:
Телефонуйте мамі,
Забігайте в гості,
Бо мама - ваш найкращий друг!
Телефонуйте мамі,
Не шкодуйте коштів,
Цінуйте ніжність її рук!
Бо як не стане мами,
Станемо дорослі,
А так ми досі ще малі!..
Телефонуйте мамі!..
Любіть її!..

Мам,
А пам''ятаєш, як водила в школу?..
Мама, мама...
Мам,
Мене в образу не дала нікому!..
Мама, мама...
Подорослішали ми,
В мене вже своя родина,
Але знай, що назавжди
Для мене ти єдина!

Приспів.

Я вічно бачу твої очі,
Дякую за безсонні ночі!..
Мам, мам...
Тебе люблю я!..
Мам, почуй мої слова,
І будь завжди зі мною!
Мамо! Мамо! Мамо моя!..
Телефонуйте мамі,
Забігайте в гості,
Бо мама - ваш найкращий друг!
Телефонуйте мамі,
Не шкодуйте коштів,
Цінуйте ніжність її рук!
Бо як не стане мами,
Станемо дорослі,
А так ми досі ще малі!..
Телефонуйте мамі!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6478991_l1','pisniua_6478991','YouTube','https://www.youtube.com/watch?v=1gBLae0Fm0w','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_649075';
DELETE FROM song_versions WHERE song_id = 'pisniua_649075';
DELETE FROM songs_fts WHERE song_id = 'pisniua_649075';
DELETE FROM songs WHERE id = 'pisniua_649075';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_649075','В Станіславі під тюрмою','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,'Cкладена матерями повстанців, сини яких були страчені в Станіславській (нині Івано-Франківськ) тюрмі НКВС','В Станіславі під тюрмою
Проливалася сльоза -
Стара мати свому синові    |
Передачу принесла.         | (2)

"Я принесла цю передачу,
Може, син мій є ще тут.
Може, завтра або позавтрю  |
На Сибір йго повезут".     | (2)

Сам начальник посміхнувся:
"Не везем ми на Сибір.
Твого сина вчора ввечір    | (2)
Засудили на розстріл!"     | (2)

Сам начальник посміхнувся
І кивнув він головов:
"Твого сина вчора ввечір   | (2)
Розстріляли під тюрмов!"   | (2)

Стара мати як це вчула-
Передача впала з рук,
Із грудей її зболілих      |
Обірвався тихий звук.      | (2)

"Я купила передачу
За останнії гроші.
Передайте цю передачу      |
За впокій його душі"       | (2)

Стара мати повернулась
Тай додому пішла.
Молодому ключникові
Покотилася сльоза.

В Станіславі під тюрмою
Проливалася сльоза -
Стара мати свому синові    |
Передачу принесла.         | (2)','[''pisni.org.ua'', ''cat:halycki'', ''cat:povstanski'', ''Пісні з Галичини'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_649075'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_649075','В Станіславі під тюрмою','В Станіславі під тюрмою
Проливалася сльоза -
Стара мати свому синові    |
Передачу принесла.         | (2)

"Я принесла цю передачу,
Може, син мій є ще тут.
Може, завтра або позавтрю  |
На Сибір йго повезут".     | (2)

Сам начальник посміхнувся:
"Не везем ми на Сибір.
Твого сина вчора ввечір    | (2)
Засудили на розстріл!"     | (2)

Сам начальник посміхнувся
І кивнув він головов:
"Твого сина вчора ввечір   | (2)
Розстріляли під тюрмов!"   | (2)

Стара мати як це вчула-
Передача впала з рук,
Із грудей її зболілих      |
Обірвався тихий звук.      | (2)

"Я купила передачу
За останнії гроші.
Передайте цю передачу      |
За впокій його душі"       | (2)

Стара мати повернулась
Тай додому пішла.
Молодому ключникові
Покотилася сльоза.

В Станіславі під тюрмою
Проливалася сльоза -
Стара мати свому синові    |
Передачу принесла.         | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_6485252';
DELETE FROM song_versions WHERE song_id = 'pisniua_6485252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6485252';
DELETE FROM songs WHERE id = 'pisniua_6485252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6485252','У Карпатах є дівчина','Музика: Влад Комар','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'У Карпатах є дівчина
Така файна, як пташина,
Така файна, як пташина, гей!
Усі хлопці завітають,
Ту дівчину вони кохають,
Ту дівчину вони кохають, гей!
Серед поля чарівниця,
Мов в карпатських та косицях
Мов в карпатських та косицях, гей!
То на неї поглядаєш,
То вона ся посміхає,
То вона ся посміхає, гей!
Гей-я, гоя, дана-дана,   |
Вона тепер любить Івана! | (4)

Ти висока, ти рум''яна,
Полюбила ти Івана,
Полюбила ти Івана, гей!
Через твої сині очі
Він приходить серед ночі,
Він приходить серед ночі, гей!
Він любов''ю обігрітий,
Він дарує тобі квіти,
Він дарує тобі квіти, гей!
І любов тобі й кохання
Аж до рання до світання,
Аж до рання до світання, гей!
Гей-я, гоя, дана-дана,   |
Вона тепер любить Івана! | (4)

Подивись в своє віконце,
Хай на тебе світить сонце,
Хай на тебе світить сонце, гей!
Куди йдеш ти попід ніжки
Хай цвітуть тобі доріжки,
Хай цвітуть тобі доріжки, гей!
Хай пташки тобі щебечуть
І голубки тобі шепчуть,
І голубки тобі шепчуть, гей!
Промінь сонця і відлунок
Хай передасть поцілунок,
Хай передасть поцілунок, гей!
Гей-я, гоя, дана-дана,   |
Вона тепер любить Івана! | (4)','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6485252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6485252','У Карпатах є дівчина','У Карпатах є дівчина
Така файна, як пташина,
Така файна, як пташина, гей!
Усі хлопці завітають,
Ту дівчину вони кохають,
Ту дівчину вони кохають, гей!
Серед поля чарівниця,
Мов в карпатських та косицях
Мов в карпатських та косицях, гей!
То на неї поглядаєш,
То вона ся посміхає,
То вона ся посміхає, гей!
Гей-я, гоя, дана-дана,   |
Вона тепер любить Івана! | (4)

Ти висока, ти рум''яна,
Полюбила ти Івана,
Полюбила ти Івана, гей!
Через твої сині очі
Він приходить серед ночі,
Він приходить серед ночі, гей!
Він любов''ю обігрітий,
Він дарує тобі квіти,
Він дарує тобі квіти, гей!
І любов тобі й кохання
Аж до рання до світання,
Аж до рання до світання, гей!
Гей-я, гоя, дана-дана,   |
Вона тепер любить Івана! | (4)

Подивись в своє віконце,
Хай на тебе світить сонце,
Хай на тебе світить сонце, гей!
Куди йдеш ти попід ніжки
Хай цвітуть тобі доріжки,
Хай цвітуть тобі доріжки, гей!
Хай пташки тобі щебечуть
І голубки тобі шепчуть,
І голубки тобі шепчуть, гей!
Промінь сонця і відлунок
Хай передасть поцілунок,
Хай передасть поцілунок, гей!
Гей-я, гоя, дана-дана,   |
Вона тепер любить Івана! | (4)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6485252_l1','pisniua_6485252','YouTube','https://www.youtube.com/watch?v=flnK2Dc9GQ4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_649246';
DELETE FROM song_versions WHERE song_id = 'pisniua_649246';
DELETE FROM songs_fts WHERE song_id = 'pisniua_649246';
DELETE FROM songs WHERE id = 'pisniua_649246';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_649246','Струни райдуги','Музика: Михайло Дубецький Слова: Анатолій Драгомирецький. Виконує: Михайло Дубецький','uk','ukraine_1991',NULL,NULL,'1. Авторське подання.','Підбір акордів: Авторський підбір','Моєї райдуги сім струн
Дзвінких веселих і печальних
І як порвать із них одну —
Заплачуть інші, ніби чайки.

Приспів:
І хай дощі рясні ідуть,        |
І райдуга моя сміється, —      |
В мені сім струн твоїх живуть  |
І твоє серце в грудях б''ється. |

Струна зелена гомонить
Про тихий біль і про чекання,
Розлука жовтою бринить,
Червона грає про кохання.

Приспів.

Коли весна приходить знов,
Ламають грози ніжні віти
І перша так в житті любов
Сльозами радощів омита.

Приспів.','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_649246'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_649246','Струни райдуги','Моєї райдуги сім струн
Дзвінких веселих і печальних
І як порвать із них одну —
Заплачуть інші, ніби чайки.

Приспів:
І хай дощі рясні ідуть,        |
І райдуга моя сміється, —      |
В мені сім струн твоїх живуть  |
І твоє серце в грудях б''ється. |

Струна зелена гомонить
Про тихий біль і про чекання,
Розлука жовтою бринить,
Червона грає про кохання.

Приспів.

Коли весна приходить знов,
Ламають грози ніжні віти
І перша так в житті любов
Сльозами радощів омита.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6480776';
DELETE FROM song_versions WHERE song_id = 'pisniua_6480776';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6480776';
DELETE FROM songs WHERE id = 'pisniua_6480776';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6480776','Так далеко мама','Музика: Марія Мазур, Михайло Березутський Слова: Марія Мазур','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я задивилась у небо - лелека,
Він з батьківщини моєї - здалека,
Там, де було все не так, як хотіла,
І у чуже, наче птах, полетіла...

Приспів:
А там далеко зосталась мама,
Найдорожча у світі сама,
За доню молить сердечно Бога.
Минають дні...
А мені сниться, що під вербою
Ми розмовляємо вдвох з тобою,
І найдорожче шепочу слово уві сні...

Твої листи пахнуть м''ятою, нене,
Благословінням небесним для мене.
А між рядками щоразу читаю,
Слізьми написано: "Доню, чекаю..."

Приспів.

Та прийде час - повернуться лелеки
З країни теплої в край свій далекий!..
І я, як птаха, вернуся додому,
Забуду біль свій, розлуку і втому!..

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6480776'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6480776','Так далеко мама','Я задивилась у небо - лелека,
Він з батьківщини моєї - здалека,
Там, де було все не так, як хотіла,
І у чуже, наче птах, полетіла...

Приспів:
А там далеко зосталась мама,
Найдорожча у світі сама,
За доню молить сердечно Бога.
Минають дні...
А мені сниться, що під вербою
Ми розмовляємо вдвох з тобою,
І найдорожче шепочу слово уві сні...

Твої листи пахнуть м''ятою, нене,
Благословінням небесним для мене.
А між рядками щоразу читаю,
Слізьми написано: "Доню, чекаю..."

Приспів.

Та прийде час - повернуться лелеки
З країни теплої в край свій далекий!..
І я, як птаха, вернуся додому,
Забуду біль свій, розлуку і втому!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6480776_l1','pisniua_6480776','YouTube','https://www.youtube.com/watch?v=qwhHy9k439I','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6480776_l2','pisniua_6480776','YouTube','https://www.youtube.com/watch?v=ovDogZkewYQ','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6490959';
DELETE FROM song_versions WHERE song_id = 'pisniua_6490959';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6490959';
DELETE FROM songs WHERE id = 'pisniua_6490959';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6490959','Гімн ліцею Лідер','Музика: Віталій Негребецький Слова: Юлія Хандожинська','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'В кучерявих каштанах
І квітчастих алеях
Сиву мудрість ховає
Наш порадник ліцей.
Із ім''ям гордим Лідер
Нас знаннями вітає,
Щоб щасливим і світлим
Був наш завтрашній день!

Приспів:
Ліцей, ліцей -
Стежина у майбутнє,
Веде нас в люди,
У далекий світ,
Збіжать роки, а він
В душі відлунням
Пісень дитячих
Нам малює світ.

Хай ліцей наш величний
Ширше двері відкриє
І до успіху Лідер
Хай нам крила дає,
Тут ростуть українців
Нові покоління,
В яких завжди надія
І віра живе!

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6490959'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6490959','Гімн ліцею Лідер','В кучерявих каштанах
І квітчастих алеях
Сиву мудрість ховає
Наш порадник ліцей.
Із ім''ям гордим Лідер
Нас знаннями вітає,
Щоб щасливим і світлим
Був наш завтрашній день!

Приспів:
Ліцей, ліцей -
Стежина у майбутнє,
Веде нас в люди,
У далекий світ,
Збіжать роки, а він
В душі відлунням
Пісень дитячих
Нам малює світ.

Хай ліцей наш величний
Ширше двері відкриє
І до успіху Лідер
Хай нам крила дає,
Тут ростуть українців
Нові покоління,
В яких завжди надія
І віра живе!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6490050';
DELETE FROM song_versions WHERE song_id = 'pisniua_6490050';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6490050';
DELETE FROM songs WHERE id = 'pisniua_6490050';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6490050','Школа - тепер наша друга сім''я!','Музика: Володимир Самолюк (Skofka)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Де б не були, не забудемо ми перший
Наш клас, що відкрив нам шляхи в світ
Той чарівний, що зветься Знання!
Школа - тепер наша друга сім''я!

Вчились ми гарно читать і писать
Книжечку першу любить, шанувать!
Клас наш затишний, що радує нас!
Школа - тепер наша друга сім''я!

Вчительку першу, що вчить нас щодня
Лагідну, мудру і добру до нас!
Ніжна, красива, як мама моя,
Школа - тепер наша друга сім''я!','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6490050'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6490050','Школа - тепер наша друга сім''я!','Де б не були, не забудемо ми перший
Наш клас, що відкрив нам шляхи в світ
Той чарівний, що зветься Знання!
Школа - тепер наша друга сім''я!

Вчились ми гарно читать і писать
Книжечку першу любить, шанувать!
Клас наш затишний, що радує нас!
Школа - тепер наша друга сім''я!

Вчительку першу, що вчить нас щодня
Лагідну, мудру і добру до нас!
Ніжна, красива, як мама моя,
Школа - тепер наша друга сім''я!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6490050_l1','pisniua_6490050','YouTube','https://www.youtube.com/watch?v=e4fadGisWMM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6494144';
DELETE FROM song_versions WHERE song_id = 'pisniua_6494144';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6494144';
DELETE FROM songs WHERE id = 'pisniua_6494144';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6494144','На добраніч','Музика: Олександр Машевський Слова: Світлана Соболевська','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Час прийшов лягати спати
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
DELETE FROM song_links WHERE song_id = 'pisniua_6492477';
DELETE FROM song_versions WHERE song_id = 'pisniua_6492477';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6492477';
DELETE FROM songs WHERE id = 'pisniua_6492477';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6492477','Сестра','Музика: Oleksii Potapenko, Katia Gumeniuk Слова: Oleksii Potapenko, Katia Gumeniuk','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Тому що вона сильна жінка-українка.
Ти — непереможна, хай прийде весна!
Твої сильні руки, руки, як в дитинстві,
Я на тебе схожа, мати, подруга, сестра!
Якщо небо впаде, вона буде його тримати!
Вона - твоя сестра, бабуся, дівчина, мати!
Якщо він не дійде, вона піде на автомати
Захищати свою сім''ю, свій дім захищати!

Приспів:
І неважливо, скільки часу на це піде,
Байдужа злива, якщо сонце впаде,
В її ніжних руках, ніби немовля,
Спасуться земля, ріки і поля!
І неважливо, скільки сліз пролила вона,
Вона — ціла країна, вона — не сама!
Мільйони сміливих, таких, як ти,
Нас тільки вперед ведуть їх голоси!

Тому що вона сильна жінка-українка.
Ти — непереможна, хай прийде весна!
Твої сильні руки, руки, як в дитинстві,
Я на тебе схожа, мати, подруга, сестра!
Якщо сонце вкрадуть, вона буде його шукати!
Вона - бойова подруга і готова віддати
Навіть своє життя за країну, що вміє кохати,
За дитину свою, яку вкладає спати!

Приспів.

Тому що вона сильна жінка-українка.
Ти — непереможна, хай прийде весна!
Твої сильні руки, руки, як в дитинстві,
Я на тебе схожа, мати, подруга, сестра!
Сестра!.. Сестра!.. Сестра!.. Сестра!..
Сестра!.. Сестра!..','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:zahalni-cinnosti'', ''Гимни та марші'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6492477'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6492477','Сестра','Тому що вона сильна жінка-українка.
Ти — непереможна, хай прийде весна!
Твої сильні руки, руки, як в дитинстві,
Я на тебе схожа, мати, подруга, сестра!
Якщо небо впаде, вона буде його тримати!
Вона - твоя сестра, бабуся, дівчина, мати!
Якщо він не дійде, вона піде на автомати
Захищати свою сім''ю, свій дім захищати!

Приспів:
І неважливо, скільки часу на це піде,
Байдужа злива, якщо сонце впаде,
В її ніжних руках, ніби немовля,
Спасуться земля, ріки і поля!
І неважливо, скільки сліз пролила вона,
Вона — ціла країна, вона — не сама!
Мільйони сміливих, таких, як ти,
Нас тільки вперед ведуть їх голоси!

Тому що вона сильна жінка-українка.
Ти — непереможна, хай прийде весна!
Твої сильні руки, руки, як в дитинстві,
Я на тебе схожа, мати, подруга, сестра!
Якщо сонце вкрадуть, вона буде його шукати!
Вона - бойова подруга і готова віддати
Навіть своє життя за країну, що вміє кохати,
За дитину свою, яку вкладає спати!

Приспів.

Тому що вона сильна жінка-українка.
Ти — непереможна, хай прийде весна!
Твої сильні руки, руки, як в дитинстві,
Я на тебе схожа, мати, подруга, сестра!
Сестра!.. Сестра!.. Сестра!.. Сестра!..
Сестра!.. Сестра!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6492477_l1','pisniua_6492477','YouTube','https://www.youtube.com/watch?v=wTTkoc8A_s4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_64959';
DELETE FROM song_versions WHERE song_id = 'pisniua_64959';
DELETE FROM songs_fts WHERE song_id = 'pisniua_64959';
DELETE FROM songs WHERE id = 'pisniua_64959';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_64959','Ангел Божий із небес','Українська народна пісня. Виконує: Ван Гог','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ангел Божий із небес
Радість нам звіщає днесь,
Що в Вифлеємі Бог воплотився,
Там у вертепі Він появився
бідним пастирям.

Тож спішім у Вифлеєм,
Де у яслах Божий Син
Народився з Діви Марії,
Непорочної Лелії,
На спасення нам.

Там віддаймо честь Йому,
Заспіваймо пісню цю.
Слава во вишніх вічному Богу,
Отцю і Сину, Духу Святому,
А на землі мир!

О Дитяко, Спасе наш!
Глянь ласкаво днесь на нас.
Освободи нас з тяжкої неволі,
Дай дочекати кращої долі
З Рождеством Твоїм','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:narodni'', ''Пісні на християнську тематику'', ''Колядки'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_64959'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_64959','Ангел Божий із небес','Ангел Божий із небес
Радість нам звіщає днесь,
Що в Вифлеємі Бог воплотився,
Там у вертепі Він появився
бідним пастирям.

Тож спішім у Вифлеєм,
Де у яслах Божий Син
Народився з Діви Марії,
Непорочної Лелії,
На спасення нам.

Там віддаймо честь Йому,
Заспіваймо пісню цю.
Слава во вишніх вічному Богу,
Отцю і Сину, Духу Святому,
А на землі мир!

О Дитяко, Спасе наш!
Глянь ласкаво днесь на нас.
Освободи нас з тяжкої неволі,
Дай дочекати кращої долі
З Рождеством Твоїм');
DELETE FROM song_links WHERE song_id = 'pisniua_648940';
DELETE FROM song_versions WHERE song_id = 'pisniua_648940';
DELETE FROM songs_fts WHERE song_id = 'pisniua_648940';
DELETE FROM songs WHERE id = 'pisniua_648940';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_648940','Два Кольори *','Музика: Олександр Білаш Слова: Дмитро Павличко','uk','ukraine_1991',NULL,NULL,NULL,'Чудова пісня, особливо заслуговує найвищої оцінки мелодія та гармонія створені Білашем. Низькій уклін авторам за пісню, яка за їх життя, фактично, стала народною. Я спершу підбирав цю пісню по пам''яті та не був впевнений, тому пошукав і знайшов на цьому чудовому сайті варіант. Нажаль акорди абсолютно не відповідають дійсності. Тому прийшлося пошукати в і-неті якесь виконання та звіритись з ним. Вийшло, здається, досить правдоподібно, хоча в деяких місцях допустимі дещо інші варіанти гармонізації (тобто акордів). В оригіналі пісня виконується в Соль-мінор, тобто від Gm, але я транспонував усе в Ля-мінор, піднявши на один тон вгору, оскільки так значно зручніше виконувати на гітарі. Всі септ-акорди (з "7") можна, звичайно ж, замінити на прості (тобто такі самі без "7"), однак ці септ-акорди дуже гарно підкреслюють несподівані і дуже гарні повороти гармонії, тому всеж рекомендую їх використовувати. У варіанті пісні який я слухав (здається виконання Квітки Цисик, хоча я не впевнений) в останньому куплеті мелодія (а, відповідно, і всі акорди акомпонементу) піднімаються на пів-тона вгору. Цей прийом досить часто використовується композиторами для підкреслення якоїсь зміни і звучить дуже гарно, однак технічно на гітарі дотатньо складно буде його виконати. Однак, якщо Вам все ж хочеться, можете спробувати - для цього всі акорди підніміть на пів-тона вгору, тобто замість Am - Bm, замість Dm - D#m тощо. Підбір акордів: Олег Воробйов vorobyov {на} icmp.lviv.ua','Як я малим збирався навесні
Іти у світ незнаними шляхами.
Сорочку мати вишила мені,
Червоними і чорними,
Червоними і чорними нитками.

Два кольори мої два кольори
Оба на полотні, в душі моїй оба.
Два кольори мої два кольори:
Червоне то любов, а чорне то журба.

Мене водило в безвісті життя,
Та я вертався на свої пороги.
Переплелись як мамине шиття
Мої сумні і радісні дороги.

Мені війнула в очі сивина
Та я нічого не везу додому,
Лиш згорточок старого полотна
І вишите моє життя на ньому.','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_648940'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_648940','Два Кольори *','Як я малим збирався навесні
Іти у світ незнаними шляхами.
Сорочку мати вишила мені,
Червоними і чорними,
Червоними і чорними нитками.

Два кольори мої два кольори
Оба на полотні, в душі моїй оба.
Два кольори мої два кольори:
Червоне то любов, а чорне то журба.

Мене водило в безвісті життя,
Та я вертався на свої пороги.
Переплелись як мамине шиття
Мої сумні і радісні дороги.

Мені війнула в очі сивина
Та я нічого не везу додому,
Лиш згорточок старого полотна
І вишите моє життя на ньому.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_648940_l1','pisniua_648940','YouTube','https://www.youtube.com/watch?v=ln8CYhKAzwE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_648940_l2','pisniua_648940','YouTube','https://www.youtube.com/watch?v=mJh1jIDCX8c','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_648940_l3','pisniua_648940','YouTube','https://www.youtube.com/watch?v=CsiLmEA9O1E','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_648940_l4','pisniua_648940','YouTube','https://www.youtube.com/watch?v=1O2mbl9HfOg','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_648940_l5','pisniua_648940','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_649399';
DELETE FROM song_versions WHERE song_id = 'pisniua_649399';
DELETE FROM songs_fts WHERE song_id = 'pisniua_649399';
DELETE FROM songs WHERE id = 'pisniua_649399';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_649399','Гуляв чумак на риночку','Українська народна пісня. Виконує: Хор "Чумаки"','uk','ukr_ssr_1919_1991',NULL,'1988','1. Українські народні пісні, кн. 1, К., "Мистецтво", 1955, с. 144. 2. В. Триліс (триголосся).','В репертуарі хору "Чумаки" (м. Київ) з 1988 року. Цю "простеньку" пісню співати досить непросто, але легко використати для закріплення в свідомості слухача московського міфу про чумака як веселого п''яненького нікчему. Уважне читання тексту дає глибший образ: це сильний чоловік, що має свою гідність: ніж терпіти сором, піде він скорше на тяжкі заробітки, нехай на сім літ, але повернеться до почесного чумацького стану!','Гуляв чумак на риночку
Та й пив чумак горілочку:
Пропив воли, пропив вози,
Пропив ярма ще й занози -
Все чумацькеє добро!

Прокинувся чумак вранці
Та й полапав у гаманці,
Всі кишені вивертає,
Аж там грошей вже чортмає -
Нічим похмелитися!

Пішов чумак до шинкарки:
- Всип, шинкарко, хоч півкварти!
Шинкарочка згорда дметься
Ще й з чумаченька сміється,
Що гіркий п''яниця!

Скинув чумак жупанину:
- Всип, шинкарко, четвертину!
- Ой не всиплю четвертину,
Дістань грошей хоч полтину,
Тоді пий, гуляй!

- Ой пішов би я додому,
Та боюся поговору:
Будуть бити, та ганьбити,
Та заставлять ще й косити, -
А я козак нездоров...

Ой піду я у Молдаву,
Там сім літ я погарую,
Там сім літ я погарую,
Воли й вози покупую -
Знов я буду чумаком!','[''pisni.org.ua'', ''cat:all-ukraine'', ''cat:chumacki'', ''cat:socialno-pobutovi'', ''Загальноукраїнські пісні'', ''Чумацькі пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_649399'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_649399','Гуляв чумак на риночку','Гуляв чумак на риночку
Та й пив чумак горілочку:
Пропив воли, пропив вози,
Пропив ярма ще й занози -
Все чумацькеє добро!

Прокинувся чумак вранці
Та й полапав у гаманці,
Всі кишені вивертає,
Аж там грошей вже чортмає -
Нічим похмелитися!

Пішов чумак до шинкарки:
- Всип, шинкарко, хоч півкварти!
Шинкарочка згорда дметься
Ще й з чумаченька сміється,
Що гіркий п''яниця!

Скинув чумак жупанину:
- Всип, шинкарко, четвертину!
- Ой не всиплю четвертину,
Дістань грошей хоч полтину,
Тоді пий, гуляй!

- Ой пішов би я додому,
Та боюся поговору:
Будуть бити, та ганьбити,
Та заставлять ще й косити, -
А я козак нездоров...

Ой піду я у Молдаву,
Там сім літ я погарую,
Там сім літ я погарую,
Воли й вози покупую -
Знов я буду чумаком!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_649399_l1','pisniua_649399','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6480757';
DELETE FROM song_versions WHERE song_id = 'pisniua_6480757';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6480757';
DELETE FROM songs WHERE id = 'pisniua_6480757';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6480757','Пролетіли так швидко роки','Музика: Toto Cutugno Слова: Ігор Гвоздецький','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Пролетіли так швидко роки,
Птахи в небі махнули крильми,
І літа, як весняна ріка,
І доросла вже доня моя!
Летять роки мов з висоти,
І вже доросла доню ти!
Будеш завжди для мене дитина,
Моя зіронька рідна, єдина!
Моя ти зоре неземна,
Молюсь, щоб ти була щаслива!
Щоб щиро він тебе кохав,
І ти його кохала щиро!
Ой, доню, донечко моя,
Сльоза в очах стискає груди,
Бо так як люблю тебе я,
Ніхто любити так не буде!

І минула холодна зима,
І до тебе прийшла вже весна,
Та, яку ти так довго чекала,
Ця весна для вас двох розцвіла!
Як гарно зацвіли сади,
І вже виходиш заміж ти,
Біля тебе твій милий коханий,
Щастя радість хай буде завжди!
Це біле плаття і фата,
У ньому ти така красива!
Моя сестричко дорога,
Кохана будь і будь щаслива!
Ой, доню, донечко моя,
Сльоза в очах стискає груди,
Бо так як люблю тебе я,
Ніхто любити так не буде!','[''pisni.org.ua'', ''cat:pro-ditey'', ''cat:vesilni'', ''Пісні про любов до дітей'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6480757'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6480757','Пролетіли так швидко роки','Пролетіли так швидко роки,
Птахи в небі махнули крильми,
І літа, як весняна ріка,
І доросла вже доня моя!
Летять роки мов з висоти,
І вже доросла доню ти!
Будеш завжди для мене дитина,
Моя зіронька рідна, єдина!
Моя ти зоре неземна,
Молюсь, щоб ти була щаслива!
Щоб щиро він тебе кохав,
І ти його кохала щиро!
Ой, доню, донечко моя,
Сльоза в очах стискає груди,
Бо так як люблю тебе я,
Ніхто любити так не буде!

І минула холодна зима,
І до тебе прийшла вже весна,
Та, яку ти так довго чекала,
Ця весна для вас двох розцвіла!
Як гарно зацвіли сади,
І вже виходиш заміж ти,
Біля тебе твій милий коханий,
Щастя радість хай буде завжди!
Це біле плаття і фата,
У ньому ти така красива!
Моя сестричко дорога,
Кохана будь і будь щаслива!
Ой, доню, донечко моя,
Сльоза в очах стискає груди,
Бо так як люблю тебе я,
Ніхто любити так не буде!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6480757_l1','pisniua_6480757','YouTube','https://www.youtube.com/watch?v=vTo2wjPLJ_U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6477';
DELETE FROM song_versions WHERE song_id = 'pisniua_6477';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6477';
DELETE FROM songs WHERE id = 'pisniua_6477';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6477','Перший сніг','Музика: Ігор Білозір Слова: Богдан Стельмах. Виконує: Оксана Білозір, Ігор Білозір, Мар''ян Шуневич, Руслана','uk','ukraine_before_1917',NULL,NULL,'Текст і акорди (частково): 1. Пісневир: Молодіжний співаник.— Львів, 2001.— 224 с.; 2. Аудіо: "Пісні Ігора Білозіра"','Аранжування: І. Білозір, З. Левковський. Запис: Студія І. Білозіра * Тут текст подано за аудіо-джерелом [2]. У текстовому джерелі [1] тут є інакше: "Ні вогнів, ні зір, Не голубить зір Жодна квітка, наче й не було. Раптом серед віт В тиху ніч розквіт Перший сніг, мов лебедя крило." ** Тут подано за нотним джерелом [1]. В аудіо [2] тут звучить ближче до "На-на-на..." В оригіналі (аудіо) пісня, ймовірно, виконується в тональності Hm (тональність в аудіо спотворена, що не дозволяє точно визначити оригінальну тональність). Акорд Am всюди можна замінити на Am6. Акорд H всюди можна замінити на H7. Деякі акорди: Am6 [x 0 2 2 1 2] Em* [3 2 2 0 0 0] Підбір акордів: bohdanko (pisni.org.ua)','Вступ (мелодія Приспіву 2):
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
DELETE FROM song_links WHERE song_id = 'pisniua_6498776';
DELETE FROM song_versions WHERE song_id = 'pisniua_6498776';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6498776';
DELETE FROM songs WHERE id = 'pisniua_6498776';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6498776','Ціна життя','Музика: Сергій Нехаєвський Слова: Наталія Безина. Виконує: Сергій Нехаєвський','uk','ukr_ssr_1919_1991',NULL,NULL,'авторське подання','Присвята жертвам голодомору в Україні.','Палала свічка на столі...
Хлібину мати цілувала.
Своє малесеньке дитя -
До серця з болем пригортала...
Стікали сльози по щоках.
Молитву губи шепотіли.
Щоб пережити зиму цю
У Бога милості просили...
Сховала пригоршню зерна...
"Най, до весни... може посію"
І цілувала немовля...
Маленьку на життя надію...
"Минуть голодні ці часи.
Ти виростеш, мій мужній сину.
І не забудеш ти мабуть...
Заплачену за волю ціну....
Пройшли роки, час пролетів
Вже хлопчик став і батьком, й дідом
Але завжди він пам''ятав
Велику ціну цьому хлібу
Палає свічка на столі.
Дідусь - хлібину обіймає...
Болять йому роки оті.
Ціну життя - він добре... знає.','[''pisni.org.ua'', ''cat:holodomor'', ''Пісні про голодомор'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6498776'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6498776','Ціна життя','Палала свічка на столі...
Хлібину мати цілувала.
Своє малесеньке дитя -
До серця з болем пригортала...
Стікали сльози по щоках.
Молитву губи шепотіли.
Щоб пережити зиму цю
У Бога милості просили...
Сховала пригоршню зерна...
"Най, до весни... може посію"
І цілувала немовля...
Маленьку на життя надію...
"Минуть голодні ці часи.
Ти виростеш, мій мужній сину.
І не забудеш ти мабуть...
Заплачену за волю ціну....
Пройшли роки, час пролетів
Вже хлопчик став і батьком, й дідом
Але завжди він пам''ятав
Велику ціну цьому хлібу
Палає свічка на столі.
Дідусь - хлібину обіймає...
Болять йому роки оті.
Ціну життя - він добре... знає.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6498776_l1','pisniua_6498776','YouTube','https://www.youtube.com/watch?v=quEzM3_8sbk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6498776_l2','pisniua_6498776','YouTube','https://www.youtube.com/watch?v=yj-bTtQSrMc','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6483042';
DELETE FROM song_versions WHERE song_id = 'pisniua_6483042';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6483042';
DELETE FROM songs WHERE id = 'pisniua_6483042';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6483042','Українське сонце','Музика: Сергій Соловій Слова: Сергій Соловій. Виконує: Kozak System','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Українське сонце зійшло,
Хай яскраво світить воно!
Дорого заплачено -         |
Ми їх не пробачимо!        | (2)

Ми їх не пробачимо!
Ой, якби ви бачили,
Як летіли журавлі,         |
Воїв на щитах несли...     | (2)

На щитах несли воїв
В місце, де нема боїв.
Так багато втрачено,       |
Дорого заплачено!..        | (2)

Дорого заплачено...
Ми їм не пробачимо!..
Хай яскраво світить воно,  |
Українське сонце зійшло!.. | (3)

Українське сонце зійшло!   | (4)','[''pisni.org.ua'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6483042'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6483042','Українське сонце','Українське сонце зійшло,
Хай яскраво світить воно!
Дорого заплачено -         |
Ми їх не пробачимо!        | (2)

Ми їх не пробачимо!
Ой, якби ви бачили,
Як летіли журавлі,         |
Воїв на щитах несли...     | (2)

На щитах несли воїв
В місце, де нема боїв.
Так багато втрачено,       |
Дорого заплачено!..        | (2)

Дорого заплачено...
Ми їм не пробачимо!..
Хай яскраво світить воно,  |
Українське сонце зійшло!.. | (3)

Українське сонце зійшло!   | (4)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6483042_l1','pisniua_6483042','YouTube','https://www.youtube.com/watch?v=4h6tXdxrSik','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6492348';
DELETE FROM song_versions WHERE song_id = 'pisniua_6492348';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6492348';
DELETE FROM songs WHERE id = 'pisniua_6492348';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6492348','Птаха','Музика: Оксана Грушецька Слова: Оксана Грушецька. Виконує: Оксана Грушецька','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Ой, летіла птаха
Через синє море.
Своїх пташеняток
Ховала від горя.
Летіла, летіла,
Крила обпікала,
Щоб дітей маленьких
Війна не дістала!..

На чужині жити,
Не втрачати долю...
Залишив кохання,
Серце своє вдома...
Крилами махала,
Вдалеч відлітала,
Боячись спинитись,
Щоб бодай не впала!..

На чужині жити,
Біженцями зватись...
Розірвавши серце,
Від війни ховатись...
На питання: Чому?
Відповідь не знає...
Так блукає птаха
У чужому краю...','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6492348'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6492348','Птаха','Ой, летіла птаха
Через синє море.
Своїх пташеняток
Ховала від горя.
Летіла, летіла,
Крила обпікала,
Щоб дітей маленьких
Війна не дістала!..

На чужині жити,
Не втрачати долю...
Залишив кохання,
Серце своє вдома...
Крилами махала,
Вдалеч відлітала,
Боячись спинитись,
Щоб бодай не впала!..

На чужині жити,
Біженцями зватись...
Розірвавши серце,
Від війни ховатись...
На питання: Чому?
Відповідь не знає...
Так блукає птаха
У чужому краю...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6492348_l1','pisniua_6492348','YouTube','https://www.youtube.com/watch?v=WoWLU2Oa8XQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6495178';
DELETE FROM song_versions WHERE song_id = 'pisniua_6495178';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6495178';
DELETE FROM songs WHERE id = 'pisniua_6495178';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6495178','Радій! Христос прийшов!','Музика: Ольга Маєвська','uk','ukraine_1991',NULL,NULL,'авторське подання','Пісню виконує Ольга Маєвська (альбом: Пісні для дітей).','Радій! Радій! Христос прийшов!
Приніс надію всім,
Щоб, хто повірує, знайшов
На небі вічний дім!

Радій! Прийшов до тебе Спас,
Щоб волю, спокій дать,
Щоб стати другом і не раз
Тобі допомогать!

Радій! Що в світ Христос прийшов!
Щоб полюбити всіх.
І на Хресті пролити кров,
Що може змити гріх!

Радій, земля! Прийшов Христос!
Спасіння сповістить,
Щоб у твоїй душі мороз |
Весною замінить!       | (2)','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6495178'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6495178','Радій! Христос прийшов!','Радій! Радій! Христос прийшов!
Приніс надію всім,
Щоб, хто повірує, знайшов
На небі вічний дім!

Радій! Прийшов до тебе Спас,
Щоб волю, спокій дать,
Щоб стати другом і не раз
Тобі допомогать!

Радій! Що в світ Христос прийшов!
Щоб полюбити всіх.
І на Хресті пролити кров,
Що може змити гріх!

Радій, земля! Прийшов Христос!
Спасіння сповістить,
Щоб у твоїй душі мороз |
Весною замінить!       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6495178_l1','pisniua_6495178','YouTube','https://www.youtube.com/watch?v=-u-ZdKAwBw0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6495491';
DELETE FROM song_versions WHERE song_id = 'pisniua_6495491';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6495491';
DELETE FROM songs WHERE id = 'pisniua_6495491';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6495491','Серце','Музика: Христина Соловій, Сергій Жадан Слова: Христина Соловій, Сергій Жадан','uk','ukraine_1991',NULL,NULL,'аудіозапис','Композиція "Серце" — маніфест любові до світу, яка проростає з чесності та розуміння його недоліків і вад. Це відверта і зрозуміла історія кохання двох людей, за якою ховаються відданість і сміливість.','Приспів:
Світ давно не змінюється, правда твоя,
Ти бачиш нині те, що бачу і я,
Я чую нині те, що ти шепотів:
Торкатися життя, немов жіночих животів...
Не треба, моє сонце, печалі й каяття.
І навіть, як зупиниться моє серцебиття, -
Нічого не зміниться, нічого не мине:
У тебе є два серця - віддай мені одне!
Віддай мені одне!.. Віддай мені одне!..

А ось вам історія про двох диваків,
Про ніжність і довіру, про безсилля кулаків,
Про жорстокість юрби, про свободу і закон,
Про те, що любов не знає жодних перепон!
Ця жінка, що не знала ні тривоги, ні вини.
Цілий світ працював, щоби зустрілися вони.
Невідомо хто шукав і невідомо кого,
Вона випила снодійне і побачила його!..

Приспів.

Любий мій, за нами плачуть ліси,
А я їх голоси заплету до коси...
І всі ті, хто за нами прийшов
На цю апокаліпсу, на фаєр-шоу,
І хай вони далі полюють на нас,
Але небо складається з довгих терас,
І світло поміж пітьми,
І серце б''ється, доки разом ми!..

Світ давно не змінюється, ніжна моя,
Ти бачиш нині те, що бачу і я,
Ти чуєш нині те, що я шепотів:
Торкатися життя, немов жіночих животів...
Не треба, моє сонце, печалі й каяття.
І навіть, як зупиниться моє серцебиття, -
Нічого не зміниться, нічого не мине:
У тебе є два серця - віддай мені одне!
Віддай мені одне!.. Віддай мені одне!..

Приспів.

Світ давно не змінюється, правда твоя,
Ти бачиш нині те, що бачу і я...','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6495491'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6495491','Серце','Приспів:
Світ давно не змінюється, правда твоя,
Ти бачиш нині те, що бачу і я,
Я чую нині те, що ти шепотів:
Торкатися життя, немов жіночих животів...
Не треба, моє сонце, печалі й каяття.
І навіть, як зупиниться моє серцебиття, -
Нічого не зміниться, нічого не мине:
У тебе є два серця - віддай мені одне!
Віддай мені одне!.. Віддай мені одне!..

А ось вам історія про двох диваків,
Про ніжність і довіру, про безсилля кулаків,
Про жорстокість юрби, про свободу і закон,
Про те, що любов не знає жодних перепон!
Ця жінка, що не знала ні тривоги, ні вини.
Цілий світ працював, щоби зустрілися вони.
Невідомо хто шукав і невідомо кого,
Вона випила снодійне і побачила його!..

Приспів.

Любий мій, за нами плачуть ліси,
А я їх голоси заплету до коси...
І всі ті, хто за нами прийшов
На цю апокаліпсу, на фаєр-шоу,
І хай вони далі полюють на нас,
Але небо складається з довгих терас,
І світло поміж пітьми,
І серце б''ється, доки разом ми!..

Світ давно не змінюється, ніжна моя,
Ти бачиш нині те, що бачу і я,
Ти чуєш нині те, що я шепотів:
Торкатися життя, немов жіночих животів...
Не треба, моє сонце, печалі й каяття.
І навіть, як зупиниться моє серцебиття, -
Нічого не зміниться, нічого не мине:
У тебе є два серця - віддай мені одне!
Віддай мені одне!.. Віддай мені одне!..

Приспів.

Світ давно не змінюється, правда твоя,
Ти бачиш нині те, що бачу і я...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6495491_l1','pisniua_6495491','YouTube','https://www.youtube.com/watch?v=nfR9cE4Wwx4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6495644';
DELETE FROM song_versions WHERE song_id = 'pisniua_6495644';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6495644';
DELETE FROM songs WHERE id = 'pisniua_6495644';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6495644','Новорічний хоровод','Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Круг ялиночки на свято
Всі зібралися малята!
Пам, парам-пам-пам!
Наче м''ячики стрибають,
У веселі ігри грають!
Там, тарам-там-там!

Приспів:
Новий рік! Новий рік
В хоровод усіх зібрав!
Новий рік! Новий рік
Радість нам подарував!

Всі нарядні і красиві,
Всі веселі і щасливі!
Пам, парам-пам-пам!
Дружно ніжками тупцюють,
І співають, і танцюють!
Там, тарам-там-там!

Приспів.

А ялинка гілочками
Теж танцює разом з нами,
Пам, парам-пам-пам!
Плещуть ручками малята,
Новий рік - веселе свято!
Там, тарам-там-там!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6495644'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6495644','Новорічний хоровод','Круг ялиночки на свято
Всі зібралися малята!
Пам, парам-пам-пам!
Наче м''ячики стрибають,
У веселі ігри грають!
Там, тарам-там-там!

Приспів:
Новий рік! Новий рік
В хоровод усіх зібрав!
Новий рік! Новий рік
Радість нам подарував!

Всі нарядні і красиві,
Всі веселі і щасливі!
Пам, парам-пам-пам!
Дружно ніжками тупцюють,
І співають, і танцюють!
Там, тарам-там-там!

Приспів.

А ялинка гілочками
Теж танцює разом з нами,
Пам, парам-пам-пам!
Плещуть ручками малята,
Новий рік - веселе свято!
Там, тарам-там-там!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6495644_l1','pisniua_6495644','YouTube','https://www.youtube.com/watch?v=6t6jlmVxS-s','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6499542';
DELETE FROM song_versions WHERE song_id = 'pisniua_6499542';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6499542';
DELETE FROM songs WHERE id = 'pisniua_6499542';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6499542','Миколаєвої свічі','Музика: Мирон Береза Слова: Тетяна Прозорова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'А ти знаєш, іде зима,
Заметілі чарують сніжні,
І засяють мережива
На віконнях сліпучо-ніжні.
Усміхнеться мій рідний край
На своїм сніговім помості,
І святий добрий Миколай
До людей завітає в гості!

Приспів:
Миколай, я молюся: Завітай!
Як в дитинстві, не відпускай,
З надією знову й знов!
Не минай і стежинку цю відшукай!
В потаємних снігах зринай,
Усім даруй любов!
Так я знаю, за бідою пройдуть дощі,
Ми знайдемо святі ключі!
З Миколая і до Різдва
Ми згадаємо всі слова,
Що у душу несуть дива!
Миколаєвої свічі!..

А ти знаєш, з давен-давно
Попри часу вітри і шквали
Він знаходив оте вікно,
Де його так завжди чекали!
А ти знаєш, він серед нас,
Вирушає завжди в дорогу
Як і в давній-прадавній час
Поспішає на допомогу!

Приспів.

Не складаються пазли-дні,
Коли зашпори й щастя - разом,
Він завжди у тобі й мені
Поза простором, поза часом!
Тільки мрій, не переставай,
Тільки вір у це добре диво!
І святий добрий Миколай
Подарує кохання й крила!

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6499542'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6499542','Миколаєвої свічі','А ти знаєш, іде зима,
Заметілі чарують сніжні,
І засяють мережива
На віконнях сліпучо-ніжні.
Усміхнеться мій рідний край
На своїм сніговім помості,
І святий добрий Миколай
До людей завітає в гості!

Приспів:
Миколай, я молюся: Завітай!
Як в дитинстві, не відпускай,
З надією знову й знов!
Не минай і стежинку цю відшукай!
В потаємних снігах зринай,
Усім даруй любов!
Так я знаю, за бідою пройдуть дощі,
Ми знайдемо святі ключі!
З Миколая і до Різдва
Ми згадаємо всі слова,
Що у душу несуть дива!
Миколаєвої свічі!..

А ти знаєш, з давен-давно
Попри часу вітри і шквали
Він знаходив оте вікно,
Де його так завжди чекали!
А ти знаєш, він серед нас,
Вирушає завжди в дорогу
Як і в давній-прадавній час
Поспішає на допомогу!

Приспів.

Не складаються пазли-дні,
Коли зашпори й щастя - разом,
Він завжди у тобі й мені
Поза простором, поза часом!
Тільки мрій, не переставай,
Тільки вір у це добре диво!
І святий добрий Миколай
Подарує кохання й крила!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6499542_l1','pisniua_6499542','YouTube','https://www.youtube.com/watch?v=21SFQdv9xUQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6490673';
DELETE FROM song_versions WHERE song_id = 'pisniua_6490673';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6490673';
DELETE FROM songs WHERE id = 'pisniua_6490673';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6490673','Чайка','Музика: Андрій Безкровний, Вадим Лисиця Слова: Андрій Безкровний','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Гой-я, гой-я-я!
Цвіте в полі конопля,
Де горить моя земля,
Згине ворог, або я!
Гой-я, гой-я-я!
Лети, пташенько моя!
Всюди, куди не дивись,
Україна буде скрізь!

Рушив легінь на війну
По терену по степу...
Обійняв неню й сестру,
Не бійтеся, батько, не помру!
І знову поверхи, поштовхи,
Та жахи - спалахи
Поруч, і вибухи, вибухи!
Лети до мене чайкою
Над хвилями до краю милого
Над небосхилами з новими силами!
Чайкою над хвилями, зорі на килимі,
На небі синьому легкими крилами!

Приспів.

Рушив легінь на кордон,
Де широкий тихий Дон,
Зійде сніг з Карпатських гір,
Повернусь до тебе, Синевир!
І знову подумки, подихи,
Пошепки, де знайти наші шляхи?..
І знову поверхи, поштовхи,
Та жахи - спалахи
Поруч, і вибухи, вибухи!
Лети до мене чайкою
Над хвилями до краю милого
Над небосхилами з новими силами!
Чайкою над хвилями, зорі на килимі,
На небі синьому легкими крилами!

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6490673'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6490673','Чайка','Приспів:
Гой-я, гой-я-я!
Цвіте в полі конопля,
Де горить моя земля,
Згине ворог, або я!
Гой-я, гой-я-я!
Лети, пташенько моя!
Всюди, куди не дивись,
Україна буде скрізь!

Рушив легінь на війну
По терену по степу...
Обійняв неню й сестру,
Не бійтеся, батько, не помру!
І знову поверхи, поштовхи,
Та жахи - спалахи
Поруч, і вибухи, вибухи!
Лети до мене чайкою
Над хвилями до краю милого
Над небосхилами з новими силами!
Чайкою над хвилями, зорі на килимі,
На небі синьому легкими крилами!

Приспів.

Рушив легінь на кордон,
Де широкий тихий Дон,
Зійде сніг з Карпатських гір,
Повернусь до тебе, Синевир!
І знову подумки, подихи,
Пошепки, де знайти наші шляхи?..
І знову поверхи, поштовхи,
Та жахи - спалахи
Поруч, і вибухи, вибухи!
Лети до мене чайкою
Над хвилями до краю милого
Над небосхилами з новими силами!
Чайкою над хвилями, зорі на килимі,
На небі синьому легкими крилами!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6490673_l1','pisniua_6490673','YouTube','https://www.youtube.com/watch?v=_nUOqJYyPQ4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6495797';
DELETE FROM song_versions WHERE song_id = 'pisniua_6495797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6495797';
DELETE FROM songs WHERE id = 'pisniua_6495797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6495797','Що приносить Миколай?','Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Що приносить Миколай?
Нумо, швидко відгадай!
І які гостинці
В нього у торбинці?
Є цукерки там смачненькі -
Так! Так! Так!
Є там іграшки м''якенькі -
Так! Так! Так!

Що приносить Миколай?
Нумо швидко відгадай!
І які гостинці
В нього у торбинці?
Є прикраси кольорові -
Так! Так! Так!
Є і пряники медові -
Так! Так! Так!

Що приносить Миколай?
Нумо швидко відгадай!
І які гостинці
В нього у торбинці?
Щастя й доля у родину -
Так! Так! Так!
Мир і спокій в Україну -
Так! Так! Так!','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6495797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6495797','Що приносить Миколай?','Що приносить Миколай?
Нумо, швидко відгадай!
І які гостинці
В нього у торбинці?
Є цукерки там смачненькі -
Так! Так! Так!
Є там іграшки м''якенькі -
Так! Так! Так!

Що приносить Миколай?
Нумо швидко відгадай!
І які гостинці
В нього у торбинці?
Є прикраси кольорові -
Так! Так! Так!
Є і пряники медові -
Так! Так! Так!

Що приносить Миколай?
Нумо швидко відгадай!
І які гостинці
В нього у торбинці?
Щастя й доля у родину -
Так! Так! Так!
Мир і спокій в Україну -
Так! Так! Так!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6495797_l1','pisniua_6495797','YouTube','https://www.youtube.com/watch?v=JsEGHg-EZCc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_64972';
DELETE FROM song_versions WHERE song_id = 'pisniua_64972';
DELETE FROM songs_fts WHERE song_id = 'pisniua_64972';
DELETE FROM songs WHERE id = 'pisniua_64972';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_64972','А Пречиста Діва по світу ходила','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Темненькая нічка тьмою світ закрила.
Темненькая нічка тьмою світ закрила,
Тьмою світ закрила.

А Пречиста Діва по світу ходила,
Прийшла до багача (2), на ніч ся просила:

"Пане господарю, переночуй мене,
Бо темная нічка (2) находить на мене".

А той пан господар не хотів ночувати,
Сказав своїм слугам (2) собаками гнати.

А тії собаки Марію впізнали,
Перед Матір Божов (2) на коліна впали.

А Пречиста Діва по світу ходила.
Прийшла до бідного (2) на ніч ся просила:

"Пане господарю, переночуй мене,
Бо темная нічка (2) находить на мене".

"Ой, рад би я тебе переночувати,
Тільки я не маю (2) вечероньки дати"

"Не треба, не треба вечероньки твої,
Тільки пусти мене (2) до стаєньки свої".

Чи то сонце сходить, чи місяць заходить?
То Пречиста Діва (2) свого Сина родить.

"Вставай, жінко, вставай. Доки будеш спала?
Вже наша стаєнка (2) світом засіяла".

"Якби м була знала, що то Мати Божа,
Була б постелила (2) до свойого ложа.

Якби м була знала, що Мати з Ісусом,
Була б пристелила (2) біленьким обрусом".

Старий Рік минає, Новий наступає (2)
Христос ся рождає.    Нараш. З співу Антоніни Прибило, с.Ропиця Руська','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:narodni'', ''Пісні на християнську тематику'', ''Колядки'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_64972'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_64972','А Пречиста Діва по світу ходила','Темненькая нічка тьмою світ закрила.
Темненькая нічка тьмою світ закрила,
Тьмою світ закрила.

А Пречиста Діва по світу ходила,
Прийшла до багача (2), на ніч ся просила:

"Пане господарю, переночуй мене,
Бо темная нічка (2) находить на мене".

А той пан господар не хотів ночувати,
Сказав своїм слугам (2) собаками гнати.

А тії собаки Марію впізнали,
Перед Матір Божов (2) на коліна впали.

А Пречиста Діва по світу ходила.
Прийшла до бідного (2) на ніч ся просила:

"Пане господарю, переночуй мене,
Бо темная нічка (2) находить на мене".

"Ой, рад би я тебе переночувати,
Тільки я не маю (2) вечероньки дати"

"Не треба, не треба вечероньки твої,
Тільки пусти мене (2) до стаєньки свої".

Чи то сонце сходить, чи місяць заходить?
То Пречиста Діва (2) свого Сина родить.

"Вставай, жінко, вставай. Доки будеш спала?
Вже наша стаєнка (2) світом засіяла".

"Якби м була знала, що то Мати Божа,
Була б постелила (2) до свойого ложа.

Якби м була знала, що Мати з Ісусом,
Була б пристелила (2) біленьким обрусом".

Старий Рік минає, Новий наступає (2)
Христос ся рождає.    Нараш. З співу Антоніни Прибило, с.Ропиця Руська');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64972_l1','pisniua_64972','YouTube','https://www.youtube.com/watch?v=HDTyAFZEEo8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64972_l2','pisniua_64972','YouTube','https://www.youtube.com/watch?v=6No7iX_dT-A','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64972_l3','pisniua_64972','YouTube','https://www.youtube.com/watch?v=bnAHmYLb8Oc','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_64972_l4','pisniua_64972','YouTube','https://www.youtube.com/watch?v=Z41PbpsbN-k','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_6500555';
DELETE FROM song_versions WHERE song_id = 'pisniua_6500555';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6500555';
DELETE FROM songs WHERE id = 'pisniua_6500555';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6500555','Молитва на Різдво','Музика: Христина Дарвай Слова: Христина Дарвай','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У долонях тане сніг,
За вікном зима гуляє,
Та думками лину в небеса святі,
Щоб настав мир на землі,
Прошу Бога, я благаю,
Щоб зберіг мою країну у добрі!

Приспів:
Хай молитва на Різдво
Поверне в серця тепло,
Подарує мир і спокій за вікном!
Хай вечірняя зоря
Принесе нам всім добра,
В благодаті хай буде земля!..

У думках згадаю всіх,
Кого поруч вже немає,
Хто віддав своє життя у боротьбі...
Знаю, віра у серцях
Українців не згасає,
Ще іскриться дух надії у душі!

Приспів.

Речитатив:
Моя рідна Вкраїна,
Я вітаю тебе з Новим роком! -
Роком нашої спільної перемоги!

Приспів.

В благодаті хай буде земля!..
В благодаті хай буде земля!..','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6500555'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6500555','Молитва на Різдво','У долонях тане сніг,
За вікном зима гуляє,
Та думками лину в небеса святі,
Щоб настав мир на землі,
Прошу Бога, я благаю,
Щоб зберіг мою країну у добрі!

Приспів:
Хай молитва на Різдво
Поверне в серця тепло,
Подарує мир і спокій за вікном!
Хай вечірняя зоря
Принесе нам всім добра,
В благодаті хай буде земля!..

У думках згадаю всіх,
Кого поруч вже немає,
Хто віддав своє життя у боротьбі...
Знаю, віра у серцях
Українців не згасає,
Ще іскриться дух надії у душі!

Приспів.

Речитатив:
Моя рідна Вкраїна,
Я вітаю тебе з Новим роком! -
Роком нашої спільної перемоги!

Приспів.

В благодаті хай буде земля!..
В благодаті хай буде земля!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6500555_l1','pisniua_6500555','YouTube','https://www.youtube.com/watch?v=FdxjmNpY04o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6500555_l2','pisniua_6500555','YouTube','https://www.youtube.com/watch?v=n0LuCalQ2-s','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6500271';
DELETE FROM song_versions WHERE song_id = 'pisniua_6500271';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6500271';
DELETE FROM songs WHERE id = 'pisniua_6500271';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6500271','Їде Миколай','Музика: Миколай Добрянський Слова: Миколай Добрянський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Дзінь-дзінь-дзінь!
Дзінь-дзінь-дзінь!
Через луг і гай
Їде до нас в гості |
Миколай!           | (2)

Дзінь-дзінь-дзінь!
Дзінь-дзінь-дзінь!
Дзвоники дзвенять
Він везе дарунки   |
Для малят!         | (2)

Дзінь-дзінь-дзінь!
Дзінь-дзінь-дзінь!
Радість нам несе,
Ми його всі любим  |
Над усе!           | (2)

Дзінь-дзінь-дзінь!
Дзінь-дзінь-дзінь!
Через луг і ліс
Миколай дарунки    |
Нам привіз!        | (2)','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6500271'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6500271','Їде Миколай','Дзінь-дзінь-дзінь!
Дзінь-дзінь-дзінь!
Через луг і гай
Їде до нас в гості |
Миколай!           | (2)

Дзінь-дзінь-дзінь!
Дзінь-дзінь-дзінь!
Дзвоники дзвенять
Він везе дарунки   |
Для малят!         | (2)

Дзінь-дзінь-дзінь!
Дзінь-дзінь-дзінь!
Радість нам несе,
Ми його всі любим  |
Над усе!           | (2)

Дзінь-дзінь-дзінь!
Дзінь-дзінь-дзінь!
Через луг і ліс
Миколай дарунки    |
Нам привіз!        | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6500271_l1','pisniua_6500271','YouTube','https://www.youtube.com/watch?v=K9CIUYQOMBU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6500271_l2','pisniua_6500271','YouTube','https://www.youtube.com/watch?v=MkkO0YsD_BU','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6499050';
DELETE FROM song_versions WHERE song_id = 'pisniua_6499050';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6499050';
DELETE FROM songs WHERE id = 'pisniua_6499050';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6499050','Лісом, полем','Музика: Микола Ведмедеря Слова: Юлія Хандожинська','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Лісом, полем, через гай,
Ще й через долину
До малечі Миколай
Їхав на гостину!

Приспів:
Тупу, тупу,
Плесь, плесь, плесь,
Ми його чекаєм!
Гарну пісню новорічну
Йому заспіваєм!

Гарно світяться вогні
На нашій ялинці.
Миколай до нас іде
І несе гостинці!

Приспів.','[''pisni.org.ua'', ''cat:svyatyy-mykolay'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6499050'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6499050','Лісом, полем','Лісом, полем, через гай,
Ще й через долину
До малечі Миколай
Їхав на гостину!

Приспів:
Тупу, тупу,
Плесь, плесь, плесь,
Ми його чекаєм!
Гарну пісню новорічну
Йому заспіваєм!

Гарно світяться вогні
На нашій ялинці.
Миколай до нас іде
І несе гостинці!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6505991';
DELETE FROM song_versions WHERE song_id = 'pisniua_6505991';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6505991';
DELETE FROM songs WHERE id = 'pisniua_6505991';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6505991','З нами віра!','Музика: Жанна Лтавська Слова: Жанна Лтавська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Десь в Україні, там, на передовій
Хлопець пише дівчині: Я живий!
Десь в Україні біля свічки маля
Свого тата героя намалював...

Приспів:
З нами Віра! З нами Бог! З нами воля!
Козацька сила, козацький дух і перемога!
З нами Віра! З нами Бог! З нами воля!
Козацька сила, козацький дух і перемога!

Десь в Україні, там, на передовій
Імениннику двадцять, а весь сідий...
Десь в Україні ранок - день новий,
З автоматом в окопах юнак старий...

Приспів.

Десь в Україні тихо падає сніг,
Замітає криваві сліди доріг...
Десь в Україні згасла зірка ясна,
Загадала бажання, щоб щезла війна!..

Приспів.

Козацька сила, козацький дух і перемога!','[''pisni.org.ua'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6505991'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6505991','З нами віра!','Десь в Україні, там, на передовій
Хлопець пише дівчині: Я живий!
Десь в Україні біля свічки маля
Свого тата героя намалював...

Приспів:
З нами Віра! З нами Бог! З нами воля!
Козацька сила, козацький дух і перемога!
З нами Віра! З нами Бог! З нами воля!
Козацька сила, козацький дух і перемога!

Десь в Україні, там, на передовій
Імениннику двадцять, а весь сідий...
Десь в Україні ранок - день новий,
З автоматом в окопах юнак старий...

Приспів.

Десь в Україні тихо падає сніг,
Замітає криваві сліди доріг...
Десь в Україні згасла зірка ясна,
Загадала бажання, щоб щезла війна!..

Приспів.

Козацька сила, козацький дух і перемога!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6505991_l1','pisniua_6505991','YouTube','https://www.youtube.com/watch?v=L1JqVRH9ajM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6505991_l2','pisniua_6505991','YouTube','https://www.youtube.com/watch?v=9k65iK8zuSM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6500899';
DELETE FROM song_versions WHERE song_id = 'pisniua_6500899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6500899';
DELETE FROM songs WHERE id = 'pisniua_6500899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6500899','Це - Різдво!','Музика: Наталія Май, Олеся Май Слова: Наталія Май, Олеся Май','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ми прийшли колядувать до порога,
Україні побажать перемоги!
І сказати в день такий привітання
Цьому дому й господарю побажання!

Приспів:
Це - Різдво! Це - Різдво!      |
Дружно вас вітаєм!             |
Хай же наше ППО всіх охороняє! | (2)

Хай всміхається усім щастя й доля,
Щоби падали з небес тільки зорі!
Не ракети і не бомби, ми бажаєм -
Хай нас Бог і ЗСУ захищають!

Приспів.','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Пісні на християнську тематику'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6500899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6500899','Це - Різдво!','Ми прийшли колядувать до порога,
Україні побажать перемоги!
І сказати в день такий привітання
Цьому дому й господарю побажання!

Приспів:
Це - Різдво! Це - Різдво!      |
Дружно вас вітаєм!             |
Хай же наше ППО всіх охороняє! | (2)

Хай всміхається усім щастя й доля,
Щоби падали з небес тільки зорі!
Не ракети і не бомби, ми бажаєм -
Хай нас Бог і ЗСУ захищають!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6500899_l1','pisniua_6500899','YouTube','https://www.youtube.com/watch?v=bhDFqBZ9ueI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6500858';
DELETE FROM song_versions WHERE song_id = 'pisniua_6500858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6500858';
DELETE FROM songs WHERE id = 'pisniua_6500858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6500858','В тиху ніч Різдва','Музика: Володимир Хлиста Слова: Володимир Хлиста','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ніч Різдва... -
В цю ніч Господь
Відкрив нам небеса!
Послав на землю Сина в жертву,
Що спасла нас від гріха!..
О, ніч Різдва!..
Вся таємниця неба
Нам відкрилася,
Щоби людина з Богом
Примирилася і з Ним жила!..

Приспів:
В тиху ніч Різдва
На землю повну зла
Божий Син прийшов
Спасти нас від гріха!
В тиху ніч Різдва
Божа благодать
Прийшла для тебе!
В тиху ніч Різдва
На землю повну зла
Божий Син прийшов
Спасти нас від гріха!
В тиху ніч Різдва
Божа благодать прийшла!..

Ніч Різдва...
Давно втомились люди
Жити без Христа,
Без Нього навкруги
Лише одна пітьма,
Пітьма гріха...
Та в ніч Різдва
Бог відкриває двері
Людям в небеса,
Для кожного, хто вірує
В Його Ім''я, в Ісуса.

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6500858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6500858','В тиху ніч Різдва','Ніч Різдва... -
В цю ніч Господь
Відкрив нам небеса!
Послав на землю Сина в жертву,
Що спасла нас від гріха!..
О, ніч Різдва!..
Вся таємниця неба
Нам відкрилася,
Щоби людина з Богом
Примирилася і з Ним жила!..

Приспів:
В тиху ніч Різдва
На землю повну зла
Божий Син прийшов
Спасти нас від гріха!
В тиху ніч Різдва
Божа благодать
Прийшла для тебе!
В тиху ніч Різдва
На землю повну зла
Божий Син прийшов
Спасти нас від гріха!
В тиху ніч Різдва
Божа благодать прийшла!..

Ніч Різдва...
Давно втомились люди
Жити без Христа,
Без Нього навкруги
Лише одна пітьма,
Пітьма гріха...
Та в ніч Різдва
Бог відкриває двері
Людям в небеса,
Для кожного, хто вірує
В Його Ім''я, в Ісуса.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6500858_l1','pisniua_6500858','YouTube','https://www.youtube.com/watch?v=xPsd1HUYxhE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_649972';
DELETE FROM song_versions WHERE song_id = 'pisniua_649972';
DELETE FROM songs_fts WHERE song_id = 'pisniua_649972';
DELETE FROM songs WHERE id = 'pisniua_649972';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_649972','Я кохаю цього чоловіка...','Музика: Наталя Криничанка Слова: Наталя Криничанка. Виконує: Наталя Криничанка','uk','ukraine_1991',NULL,'1997','1. Аудіо-альбом (CD) "Я кохаю цього чоловіка"','Пісня написана влітку 1997, є своєрідним підсумком творчого відтинку часу, її назва дала ім''я альбому.','Завмирають слова на папері
Самота зазирає до вікон
У провулках буденних феєрій
Я не знаю цього чоловіка

Ніч ковта кольорові пастелі
Дрімота на солоних повіках
У замріяно-білій постелі
Я чекаю цього чоловіка

Пересуди видряпують двері
У долонях спокуса велика
В хуртовині незнанних містерій
Я кохаю цього чоловіка

Я кохаю цього чоловіка...        |(2)','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_649972'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_649972','Я кохаю цього чоловіка...','Завмирають слова на папері
Самота зазирає до вікон
У провулках буденних феєрій
Я не знаю цього чоловіка

Ніч ковта кольорові пастелі
Дрімота на солоних повіках
У замріяно-білій постелі
Я чекаю цього чоловіка

Пересуди видряпують двері
У долонях спокуса велика
В хуртовині незнанних містерій
Я кохаю цього чоловіка

Я кохаю цього чоловіка...        |(2)');
DELETE FROM song_links WHERE song_id = 'pisniua_6507151';
DELETE FROM song_versions WHERE song_id = 'pisniua_6507151';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6507151';
DELETE FROM songs WHERE id = 'pisniua_6507151';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6507151','Третя Рота','Музика: Віктор Ткаченко Слова: Олександр Хоменко, Сергій Жадан','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує МУР (альбом: Ти (Романтика)).','Ти знаєш, як ото буває:
Грудень, війна, мобілізували -
Старший солдат Сосюра. - От так і записали.
Що сталося потім - навіть страшно розповісти.
Тіла падали на землю, їх зривало наче листя.
Алмазна й Дебальцеве - місця моєї слави,
Втоплені у крові, місця моїх комшарів.
Взагалі, я звісно, лірик, такий і позивний.
Але коли занесло у третій штурмовий,
Третій Гайдамацький - вриватись так вриватись!
Багнетом бий у шию! І не озиратись!
У солдата є наказ. Сльози - будуть потім.
І дивиться Донбас, як ти, в замерзшій рвоті
Зжався у окопі. І молишся Шевченку.
Да, Сосюра... От тобі й "к стєнкє".

Цей дощ не скінчиться ніколи! Ніколи!
Цей грім залунає: До бою! До бою!
Цей дощ ніколи не скінчиться!
Він жертиме нас, як дітей - вовчиця.
Він забиратиме сон і молодість.
Він заповнює усі полості...
Цей дощ нас з тобою обгризатиме, як кістку.
Юнкер-кавалер тут ґвалтуватиме курситску,
Молодий поет у крові знайде тут прихисток.
Цей дощ не про чистоту, а про етнічну чистку.
Цей дощ пахне прапором розірваним і битвою.
На "до та після" розрізає, він тебе, як бритвою.
Цей дощ забиратиме найкраще у найгіршого.
І на міль посадить він душу у найглибшого.
Все, що тут побачиш, ти не зможеш розказати.
"Третя Рота" - не щоденник, казка у форматі.
"Зима запахне кров′ю" - це дуже символічно.
Це ж не про кінцівки, що рубаєш методично.
Це ж не про зневіру і про зраду побратимів.
Про дурні накази, від яких півроти гине.
Війна за УНР - я ніколи не забуду!
Добре, що в майбутньому - такого більш не буде!

Цей дощ забирає нас, як набої...
Ти - лише тіло! Ти - лише зброя!
Кидай мертвих за борт! Кидай мертвих за борт!
Пускай під воду холодні тіла, замотані в шовк.
Мертві не знають клопоту. Не знають турбот.
Скидай прокажених у хвилі! Скидай зачумлених в ніч.
Сотні мертвих сердець... Сотні холодних облич,
Випалених лихоманкою, наче торф,
Вибілених тифом, ніби вапно.
Вкладай їхні голови до мішків і торб.
Кидай мертвих за борт! Їм тепер все одно!
Дякуй щедрим зорям, добрим часам!
Тривають довгі жнива, безтурботні дні...
Той, хто добуде тут до кінця, залишиться сам.
Краще йому не бачити те, що він бачитиме уві сні...

Цей дощ не скінчиться ніколи! Ніколи!
Цей грім залунає: До бою! До бою!
Цей дощ забирає нас, як набої...
Ти - лише тіло! Ти - лише зброя!','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6507151'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6507151','Третя Рота','Ти знаєш, як ото буває:
Грудень, війна, мобілізували -
Старший солдат Сосюра. - От так і записали.
Що сталося потім - навіть страшно розповісти.
Тіла падали на землю, їх зривало наче листя.
Алмазна й Дебальцеве - місця моєї слави,
Втоплені у крові, місця моїх комшарів.
Взагалі, я звісно, лірик, такий і позивний.
Але коли занесло у третій штурмовий,
Третій Гайдамацький - вриватись так вриватись!
Багнетом бий у шию! І не озиратись!
У солдата є наказ. Сльози - будуть потім.
І дивиться Донбас, як ти, в замерзшій рвоті
Зжався у окопі. І молишся Шевченку.
Да, Сосюра... От тобі й "к стєнкє".

Цей дощ не скінчиться ніколи! Ніколи!
Цей грім залунає: До бою! До бою!
Цей дощ ніколи не скінчиться!
Він жертиме нас, як дітей - вовчиця.
Він забиратиме сон і молодість.
Він заповнює усі полості...
Цей дощ нас з тобою обгризатиме, як кістку.
Юнкер-кавалер тут ґвалтуватиме курситску,
Молодий поет у крові знайде тут прихисток.
Цей дощ не про чистоту, а про етнічну чистку.
Цей дощ пахне прапором розірваним і битвою.
На "до та після" розрізає, він тебе, як бритвою.
Цей дощ забиратиме найкраще у найгіршого.
І на міль посадить він душу у найглибшого.
Все, що тут побачиш, ти не зможеш розказати.
"Третя Рота" - не щоденник, казка у форматі.
"Зима запахне кров′ю" - це дуже символічно.
Це ж не про кінцівки, що рубаєш методично.
Це ж не про зневіру і про зраду побратимів.
Про дурні накази, від яких півроти гине.
Війна за УНР - я ніколи не забуду!
Добре, що в майбутньому - такого більш не буде!

Цей дощ забирає нас, як набої...
Ти - лише тіло! Ти - лише зброя!
Кидай мертвих за борт! Кидай мертвих за борт!
Пускай під воду холодні тіла, замотані в шовк.
Мертві не знають клопоту. Не знають турбот.
Скидай прокажених у хвилі! Скидай зачумлених в ніч.
Сотні мертвих сердець... Сотні холодних облич,
Випалених лихоманкою, наче торф,
Вибілених тифом, ніби вапно.
Вкладай їхні голови до мішків і торб.
Кидай мертвих за борт! Їм тепер все одно!
Дякуй щедрим зорям, добрим часам!
Тривають довгі жнива, безтурботні дні...
Той, хто добуде тут до кінця, залишиться сам.
Краще йому не бачити те, що він бачитиме уві сні...

Цей дощ не скінчиться ніколи! Ніколи!
Цей грім залунає: До бою! До бою!
Цей дощ забирає нас, як набої...
Ти - лише тіло! Ти - лише зброя!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6507151_l1','pisniua_6507151','YouTube','https://www.youtube.com/watch?v=Ns5cW4Y1ONk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_650440';
DELETE FROM song_versions WHERE song_id = 'pisniua_650440';
DELETE FROM songs_fts WHERE song_id = 'pisniua_650440';
DELETE FROM songs WHERE id = 'pisniua_650440';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_650440','Пісня Мар''яни','Музика: Олена Карпенко Слова: Тарас Шевченко. Виконує: Олена Карпенко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Оддай мене, моя мамо,
Та не за старого,
Оддай мене, моє серце,
Та за молодого.

Оддай мене, оддай мене,
моя мамо,
Та й не за старого,
Оддай мене, оддай мене,
моє серце,
Та за молодого.

Нехай старий бурлакує,
Гроші заробляє,
А молодий мене любить,
Долі не шукає.

Приспів:
Його щастя,його доля -
Мої чорні брови,
Довгі вії, карі очі,
Ласкавеє слово.

Оддай мене, оддай мене,
моя мамо,
Та й не за старого,
Оддай мене, оддай мене,
моє серце,
Та за молодого.

Не шукає, не блукає
Чужими степами,
Має поле, має волю,
Та долі не має.

Приспів','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_650440'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_650440','Пісня Мар''яни','Оддай мене, моя мамо,
Та не за старого,
Оддай мене, моє серце,
Та за молодого.

Оддай мене, оддай мене,
моя мамо,
Та й не за старого,
Оддай мене, оддай мене,
моє серце,
Та за молодого.

Нехай старий бурлакує,
Гроші заробляє,
А молодий мене любить,
Долі не шукає.

Приспів:
Його щастя,його доля -
Мої чорні брови,
Довгі вії, карі очі,
Ласкавеє слово.

Оддай мене, оддай мене,
моя мамо,
Та й не за старого,
Оддай мене, оддай мене,
моє серце,
Та за молодого.

Не шукає, не блукає
Чужими степами,
Має поле, має волю,
Та долі не має.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_6507644';
DELETE FROM song_versions WHERE song_id = 'pisniua_6507644';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6507644';
DELETE FROM songs WHERE id = 'pisniua_6507644';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6507644','Темна війна','Музика: Катерина Корчинська (OBRANA) Слова: Катерина Корчинська (OBRANA)','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Темно, мамо,
Не повернувся з цієї війни...
Але знай, мамо,
Я навесні завітаю у сни!..
Знай, мамо, я до кінця
Простояв у бою,
Розповідай всім історію мою!

Приспів:
Важка і темна війна
Залишає відкриті рани...
Не лікує ніхто їх здавна,
Бо не лікуються спогади мами...
Не лікуються спогади батьків,
Не лікуються спогади рідних...
Приєднатись у вирій пташок
Й полетіти до тебе, рідний!..
Важка й темна війна!.. | (2)

Темно, сину...
Без тебе темно і світла нема...
Важко, сину...
Як мені жити без тебе, дитя?..
Як жити всім матерям,
Коли діти пішли,
Залишивши спогади...
Спогади... Спогади...

Приспів.','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:pro-batkiv'', ''cat:pro-ditey'', ''cat:viyskovi'', ''Пісні з ностальгічними мотивами'', ''Пісні про любов до батьків'', ''Пісні про любов до дітей'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6507644'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6507644','Темна війна','Темно, мамо,
Не повернувся з цієї війни...
Але знай, мамо,
Я навесні завітаю у сни!..
Знай, мамо, я до кінця
Простояв у бою,
Розповідай всім історію мою!

Приспів:
Важка і темна війна
Залишає відкриті рани...
Не лікує ніхто їх здавна,
Бо не лікуються спогади мами...
Не лікуються спогади батьків,
Не лікуються спогади рідних...
Приєднатись у вирій пташок
Й полетіти до тебе, рідний!..
Важка й темна війна!.. | (2)

Темно, сину...
Без тебе темно і світла нема...
Важко, сину...
Як мені жити без тебе, дитя?..
Як жити всім матерям,
Коли діти пішли,
Залишивши спогади...
Спогади... Спогади...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6507644_l1','pisniua_6507644','YouTube','https://www.youtube.com/watch?v=d5B0JbEaark','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_650879';
DELETE FROM song_versions WHERE song_id = 'pisniua_650879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_650879';
DELETE FROM songs WHERE id = 'pisniua_650879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_650879','Волинь','Музика: Олександр Смик Слова: Олександр Смик. Виконує: Чорні черешні','uk','ukraine_1991',NULL,NULL,NULL,NULL,'1.
У Данила-короля,
є похресниця Земля.
На Волинь опісля бою,
із дружиною гучною,
сам Данило йшов здаля.

Приспів:
Волинь - сто лісів, сто озер, сто доріг.
Волинь - із намиста пісень оберіг.
Волинь - коронована щедра земля,
від Данила короля.

2.
Українства тут колиска,
всі слов"яни із Полісся.
Лик Волинської ікони,
святить рід і мідні дзвони,
від Данила короля.

Приспів.

3.
Свято Храмове престольне,
просять княжича до столу.
Пишнотілі молодиці,
підливають медівниці -
тут думкам і серцю воля!

Приспів. (2)','[''pisni.org.ua'', ''cat:volynski'', ''Пісні з Волині'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_650879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_650879','Волинь','1.
У Данила-короля,
є похресниця Земля.
На Волинь опісля бою,
із дружиною гучною,
сам Данило йшов здаля.

Приспів:
Волинь - сто лісів, сто озер, сто доріг.
Волинь - із намиста пісень оберіг.
Волинь - коронована щедра земля,
від Данила короля.

2.
Українства тут колиска,
всі слов"яни із Полісся.
Лик Волинської ікони,
святить рід і мідні дзвони,
від Данила короля.

Приспів.

3.
Свято Храмове престольне,
просять княжича до столу.
Пишнотілі молодиці,
підливають медівниці -
тут думкам і серцю воля!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_650879_l1','pisniua_650879','YouTube','https://www.youtube.com/watch?v=bWbbJRBpZSQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_650252';
DELETE FROM song_versions WHERE song_id = 'pisniua_650252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_650252';
DELETE FROM songs WHERE id = 'pisniua_650252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_650252','Алкоголь','(АЛКО голізм). Музика: Т.І.К. (Тік) Слова: Віктор Бронюк. Виконує: Т.І.К. (Тік)','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'5|-2-2--2--------5-5--5--------|
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
DELETE FROM song_links WHERE song_id = 'pisniua_6498797';
DELETE FROM song_versions WHERE song_id = 'pisniua_6498797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6498797';
DELETE FROM songs WHERE id = 'pisniua_6498797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6498797','Різдвяна пісенька',NULL,'uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Овечки, корівки,
Схиляючи голівки,
Приємно здивувались,
Що гості завітали.
Вони й самі не знали,    |
Не знали, не знали,      |
Кого собі прийняли,      |
Прийняли!..              |
Син Божий народився,     |
Щоб світ розвеселився!.. | (2)

Тут янголи співали
І спокій дарували
Малесенькій дитині
На запашному сіні.
І я також співаю,        |
Співаю, співаю,          |
Спасителя вітаю,         |
Вітаю!..                 |
Син Божий народився,     |
Щоб світ розвеселився!.. | (3)','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6498797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6498797','Різдвяна пісенька','Овечки, корівки,
Схиляючи голівки,
Приємно здивувались,
Що гості завітали.
Вони й самі не знали,    |
Не знали, не знали,      |
Кого собі прийняли,      |
Прийняли!..              |
Син Божий народився,     |
Щоб світ розвеселився!.. | (2)

Тут янголи співали
І спокій дарували
Малесенькій дитині
На запашному сіні.
І я також співаю,        |
Співаю, співаю,          |
Спасителя вітаю,         |
Вітаю!..                 |
Син Божий народився,     |
Щоб світ розвеселився!.. | (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6498797_l1','pisniua_6498797','YouTube','https://www.youtube.com/watch?v=b8D9O1eK2dI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6498797_l2','pisniua_6498797','YouTube','https://www.youtube.com/watch?v=mZ-ZhvaGsL4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6499695';
DELETE FROM song_versions WHERE song_id = 'pisniua_6499695';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6499695';
DELETE FROM songs WHERE id = 'pisniua_6499695';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6499695','Давай зустрінемо Різдво вдома','Музика: Наталія Могилевська Слова: Богдан Слутий, Наталія Могилевська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Давай зустрінемо Різдво вдома!
Давай зберемось за столом в коло!
Годинники дванадцять б''ють знову,
Давай зустрінемо Різдво вдома!

Як далеко ти від дому,
Ми не бачились сто років,
Забуваю я історії твої...
Як усіх нас розкидало,
Стало місця забагато,
Я сумую: чи повернешся чи ні?..
Знаю я, знаєш ти,
Наше бажання одне:

Приспів.

Годинники дванадцять б''ють знову,
Давай зустрінемо Різдво вдома!

Приспів. (2)

Годинники дванадцять б''ють знову,
Давай зустрінемо Різдво вдома!','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6499695'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6499695','Давай зустрінемо Різдво вдома','Приспів:
Давай зустрінемо Різдво вдома!
Давай зберемось за столом в коло!
Годинники дванадцять б''ють знову,
Давай зустрінемо Різдво вдома!

Як далеко ти від дому,
Ми не бачились сто років,
Забуваю я історії твої...
Як усіх нас розкидало,
Стало місця забагато,
Я сумую: чи повернешся чи ні?..
Знаю я, знаєш ти,
Наше бажання одне:

Приспів.

Годинники дванадцять б''ють знову,
Давай зустрінемо Різдво вдома!

Приспів. (2)

Годинники дванадцять б''ють знову,
Давай зустрінемо Різдво вдома!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6499695_l1','pisniua_6499695','YouTube','https://www.youtube.com/watch?v=FRcquw6ook8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6499075';
DELETE FROM song_versions WHERE song_id = 'pisniua_6499075';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6499075';
DELETE FROM songs WHERE id = 'pisniua_6499075';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6499075','Новий рік!','Музика: Оксана Пічугіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ось і зимонька настала,
Новий рік! Новий рік!
Свято нам подарувала -
Новий рік! Новий рік!

Приспів:
Заспіваймо пісню дзвінко,
Хай почують нас усі!
І прикрашена ялинка
Сяє у своїй красі!

За вікном сніжок кружляє,
Новий рік! Новий рік!
А у залі сміх лунає,
Новий рік! Новий рік!

Приспів.

Ось яке чудове свято -
Новий рік! Новий рік!
Подаруночків багато,
Новий рік! Новий рік!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6499075'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6499075','Новий рік!','Ось і зимонька настала,
Новий рік! Новий рік!
Свято нам подарувала -
Новий рік! Новий рік!

Приспів:
Заспіваймо пісню дзвінко,
Хай почують нас усі!
І прикрашена ялинка
Сяє у своїй красі!

За вікном сніжок кружляє,
Новий рік! Новий рік!
А у залі сміх лунає,
Новий рік! Новий рік!

Приспів.

Ось яке чудове свято -
Новий рік! Новий рік!
Подаруночків багато,
Новий рік! Новий рік!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6499075_l1','pisniua_6499075','YouTube','https://www.youtube.com/watch?v=ime3FqA1eN0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6499075_l2','pisniua_6499075','YouTube','https://www.youtube.com/watch?v=hJkEBQO_rpQ','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6511991';
DELETE FROM song_versions WHERE song_id = 'pisniua_6511991';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6511991';
DELETE FROM songs WHERE id = 'pisniua_6511991';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6511991','Спогади','Музика: Vladyslav Kudii Слова: Maksym BURLA','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Птахи наспівали сумними мелодіями,
Зверху разом з зірками
Степом широким пронісся звук смерті,
Землю вкривши сльозами...
В церквах погасли свічки
І диявол радіє, вкрившись гріхами,
Кровавлені руки згорнуть до себе
І вкриють, як брами...
Тепер розумієш наскільки
Важливо цінити сьогодні!..
Завтра ті руки, що гріли ночами,
Можуть бути холодні...
По-справжньому ціниш тоді,
Коли втратив, в ночі темні, самотні,
Заплакані очі відпустять сльозу
По обличчю, скотившись в безодню...
І може не разом сьогодні,
Але моє серце з тобою,
І я б все віддав, щоб ми поряд
Почули шуми прибою,
І линуть по вітру рядки про кохання
Тобі, як звуки набоїв,
Ти на щиті, а я на колінах перед тобою...

Приспів:
Живи тут і зараз, не губи момент,
З тисяч повідомлень важливі лиш,
Обійми мене в телеграм, мама!..
Втрачені дні, але не спогади...
Не повернути час, коли зустрінемось,
Знає лиш Бог один...
Не губи момент,
З тисяч повідомлень важливі лиш,
Обійми мене в телеграм, мама!..
Втрачені дні, але не спогади...
Не повернути час, коли зустрінемось,
Знає лиш Бог один...

Закрити б очі від сонця просто руками,
Згадати теплі вечори,
Колись поруч з батьками,
Про цінність часу, ніколи не віримо,
На відстані ми розумієм і зараз лиш мріємо...
І все, що змінила нам доля,
Далеко не випадковість
Десь я жалкую, десь я втрачаю
І щось я отримав натомість,
Я знаю, що жити надією, вірити,
Нам далеко непросто,
Ми - українці і в темні часи
За світле майбутнє піднімемо тости!..

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:pro-ditey'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні про любов до дітей'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6511991'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6511991','Спогади','Птахи наспівали сумними мелодіями,
Зверху разом з зірками
Степом широким пронісся звук смерті,
Землю вкривши сльозами...
В церквах погасли свічки
І диявол радіє, вкрившись гріхами,
Кровавлені руки згорнуть до себе
І вкриють, як брами...
Тепер розумієш наскільки
Важливо цінити сьогодні!..
Завтра ті руки, що гріли ночами,
Можуть бути холодні...
По-справжньому ціниш тоді,
Коли втратив, в ночі темні, самотні,
Заплакані очі відпустять сльозу
По обличчю, скотившись в безодню...
І може не разом сьогодні,
Але моє серце з тобою,
І я б все віддав, щоб ми поряд
Почули шуми прибою,
І линуть по вітру рядки про кохання
Тобі, як звуки набоїв,
Ти на щиті, а я на колінах перед тобою...

Приспів:
Живи тут і зараз, не губи момент,
З тисяч повідомлень важливі лиш,
Обійми мене в телеграм, мама!..
Втрачені дні, але не спогади...
Не повернути час, коли зустрінемось,
Знає лиш Бог один...
Не губи момент,
З тисяч повідомлень важливі лиш,
Обійми мене в телеграм, мама!..
Втрачені дні, але не спогади...
Не повернути час, коли зустрінемось,
Знає лиш Бог один...

Закрити б очі від сонця просто руками,
Згадати теплі вечори,
Колись поруч з батьками,
Про цінність часу, ніколи не віримо,
На відстані ми розумієм і зараз лиш мріємо...
І все, що змінила нам доля,
Далеко не випадковість
Десь я жалкую, десь я втрачаю
І щось я отримав натомість,
Я знаю, що жити надією, вірити,
Нам далеко непросто,
Ми - українці і в темні часи
За світле майбутнє піднімемо тости!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6511991_l1','pisniua_6511991','YouTube','https://www.youtube.com/watch?v=lw4XIvgxdio','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6507454';
DELETE FROM song_versions WHERE song_id = 'pisniua_6507454';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6507454';
DELETE FROM songs WHERE id = 'pisniua_6507454';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6507454','Вавилон','Музика: YARMAK Слова: YARMAK','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Нам даровано сад і стежок міріади,
Кожен атом - мистецтво, рай
Смарагдових вод, та є ті, хто радіють,
Запускаючи Шахед в дитячу кімнату. -
Просто помилка Бога, недописаний код,
І отримавши тіло, найвеличніше витвір
Для діла, в світі скрипок і скриптів,
Воно тягне радянське весло за півсвіту
Від дому, ще з народження озвіріле спрагло
Живиться кров''ю, просто істинне зло.
Нагороджений чарами, сплітати любов і акорди,
Я пірнаю в цей сюр, коли б міг будувати життя,
Бо якщо не ми, то нас всіх вб''ють
Ці ординські морди. Наш світ знову зламався,
Ми - нові інженери буття!..

Приспів:
За териконами сонце встає,       |
Світ дає переконаним взяти своє. |
Вже горить Вавилон,              |
А ми в лавах з мечем,            |
Бо запеклих вогонь не пече!      | (2)

Не пече!.. Вогонь не пече!..

Уран народу тут, де дух міцніше вічних руд,
В містах бруківка і тваринний бруд,
Якщо ти - шлаку пуд, то не збагатять кошти.
Ми стрижні, що світу дають вічнопотужний
Поштовх! Горді і вперті не бояться смерті!
Страшно, якщо знову два береги будуть роздерті,
Вчинки героїв - стерті, діти - колонізовані.
Краще йти в бій в зграї вовків,
А не колоні з "оленів"! Раби знедолені
Пірнають в Тису. Ми виринаємо у лаві, копоті,
Імлі! З підземних шахт невпинно лізуть біси,
Тілами кращих ми зшиваєм тріщину Землі...

Приспів.

За териконами!..
Горить Вавилон, а ми
Під небесними кронами
Стоїмо легіонами!..

Приспів.','[''pisni.org.ua'', ''cat:ato'', ''cat:devoted'', ''cat:viyskovi'', ''cat:zahalni-cinnosti'', ''Пісні російсько-української війни та АТО'', ''Пісні присвячені окремим особам'', ''Пісні на військову тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6507454'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6507454','Вавилон','Нам даровано сад і стежок міріади,
Кожен атом - мистецтво, рай
Смарагдових вод, та є ті, хто радіють,
Запускаючи Шахед в дитячу кімнату. -
Просто помилка Бога, недописаний код,
І отримавши тіло, найвеличніше витвір
Для діла, в світі скрипок і скриптів,
Воно тягне радянське весло за півсвіту
Від дому, ще з народження озвіріле спрагло
Живиться кров''ю, просто істинне зло.
Нагороджений чарами, сплітати любов і акорди,
Я пірнаю в цей сюр, коли б міг будувати життя,
Бо якщо не ми, то нас всіх вб''ють
Ці ординські морди. Наш світ знову зламався,
Ми - нові інженери буття!..

Приспів:
За териконами сонце встає,       |
Світ дає переконаним взяти своє. |
Вже горить Вавилон,              |
А ми в лавах з мечем,            |
Бо запеклих вогонь не пече!      | (2)

Не пече!.. Вогонь не пече!..

Уран народу тут, де дух міцніше вічних руд,
В містах бруківка і тваринний бруд,
Якщо ти - шлаку пуд, то не збагатять кошти.
Ми стрижні, що світу дають вічнопотужний
Поштовх! Горді і вперті не бояться смерті!
Страшно, якщо знову два береги будуть роздерті,
Вчинки героїв - стерті, діти - колонізовані.
Краще йти в бій в зграї вовків,
А не колоні з "оленів"! Раби знедолені
Пірнають в Тису. Ми виринаємо у лаві, копоті,
Імлі! З підземних шахт невпинно лізуть біси,
Тілами кращих ми зшиваєм тріщину Землі...

Приспів.

За териконами!..
Горить Вавилон, а ми
Під небесними кронами
Стоїмо легіонами!..

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6507454_l1','pisniua_6507454','YouTube','https://www.youtube.com/watch?v=meTzAtXIwuM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_650144';
DELETE FROM song_versions WHERE song_id = 'pisniua_650144';
DELETE FROM songs_fts WHERE song_id = 'pisniua_650144';
DELETE FROM songs WHERE id = 'pisniua_650144';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_650144','Козацький марш','Музика: Дан Берест Слова: Дан Берест','uk','ukraine_1991',NULL,NULL,'Авторське подання',NULL,'Встаньмо разом непохитно,
Козаченьки - браття,
Ворогам не подолати
Нашого завзяття.
Встаньмо разом з праотцями
В справі обопільній,
Щоби неньці-Україні
Вічно бути вільній.
Встаньмо, щоб орда ворожа
Назавжди назнала,
Що то є козацька доблесть
І козацька слава.
Славу лицарську - козацьку
Не зганьбили зроду,
Бо немає переводу
Козацькому роду.','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:patriotic'', ''Гимни та марші'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_650144'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_650144','Козацький марш','Встаньмо разом непохитно,
Козаченьки - браття,
Ворогам не подолати
Нашого завзяття.
Встаньмо разом з праотцями
В справі обопільній,
Щоби неньці-Україні
Вічно бути вільній.
Встаньмо, щоб орда ворожа
Назавжди назнала,
Що то є козацька доблесть
І козацька слава.
Славу лицарську - козацьку
Не зганьбили зроду,
Бо немає переводу
Козацькому роду.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_650144_l1','pisniua_650144','YouTube','https://www.youtube.com/watch?v=FuZ2pBShKEg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6513477';
DELETE FROM song_versions WHERE song_id = 'pisniua_6513477';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6513477';
DELETE FROM songs WHERE id = 'pisniua_6513477';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6513477','Файдулі-Фай','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Na cmentarzu wіelkіe krzykі,
Файдулі, файдулі, фай!
Там сі бавлят небожчики     |
Файдулі, файдулі, фай!      | (2)

Йду до вуя, мовит вуйо
Файдулі, файдулі, фай!
Як сі маєш, старий майстер? |
Файдулі, файдулі, фай!      | (2)

Моя цьоця є фраєрка
Файдулі, файдулі, фай!
Вона дає за цукерка!        |
Файдулі, файдулі, фай!      | (2)

Моя цьоця файна була
Файдулі, файдулі, фай!
Тому дала та й забула!      |
Файдулі, файдулі, фай!      | (2)

Фай-фай!

На уліце Коперніка
Файдулі, файдулі, фай!
Била баба чоловіка!         |
Файдулі, файдулі, фай!      | (2)

На уліце Перве Мая
Файдулі, файдулі, фай!
Била баба поліцая!          |
Файдулі, файдулі, фай!      | (2)

Раз по писку — два по яях,
Файдулі, файдулі, фай!
Так сі біє поліцая!         |
Файдулі, файдулі, фай!      | (2)

Na cmentarzu wіelkіe krzykі,
Файдулі, файдулі, фай!
Там сі бавлят небожчики     |
Файдулі, файдулі, фай!      | (3)','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6513477'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6513477','Файдулі-Фай','Na cmentarzu wіelkіe krzykі,
Файдулі, файдулі, фай!
Там сі бавлят небожчики     |
Файдулі, файдулі, фай!      | (2)

Йду до вуя, мовит вуйо
Файдулі, файдулі, фай!
Як сі маєш, старий майстер? |
Файдулі, файдулі, фай!      | (2)

Моя цьоця є фраєрка
Файдулі, файдулі, фай!
Вона дає за цукерка!        |
Файдулі, файдулі, фай!      | (2)

Моя цьоця файна була
Файдулі, файдулі, фай!
Тому дала та й забула!      |
Файдулі, файдулі, фай!      | (2)

Фай-фай!

На уліце Коперніка
Файдулі, файдулі, фай!
Била баба чоловіка!         |
Файдулі, файдулі, фай!      | (2)

На уліце Перве Мая
Файдулі, файдулі, фай!
Била баба поліцая!          |
Файдулі, файдулі, фай!      | (2)

Раз по писку — два по яях,
Файдулі, файдулі, фай!
Так сі біє поліцая!         |
Файдулі, файдулі, фай!      | (2)

Na cmentarzu wіelkіe krzykі,
Файдулі, файдулі, фай!
Там сі бавлят небожчики     |
Файдулі, файдулі, фай!      | (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6513477_l1','pisniua_6513477','YouTube','https://www.youtube.com/watch?v=FlOPlZJ31SQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_651195';
DELETE FROM song_versions WHERE song_id = 'pisniua_651195';
DELETE FROM songs_fts WHERE song_id = 'pisniua_651195';
DELETE FROM songs WHERE id = 'pisniua_651195';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_651195','Не йди, лишись, побудь за мною','Слова: М.Пойгін, Анатолій Присяжнюк','uk','ukraine_1991',NULL,NULL,'М.Пойгин. Не уходи, побудь со мною. "Ці невигадливі, зворушливі слова... (переклад з рос. лірики ХІХ-ХХ ст). А.Присяжнюк',NULL,'Не йди, лишись, побудь зі мною,
Тут і відрада, і тепло.
Я зацілую із жагою
Вуста і очі, і чоло.

Не залишай, побудь зі мною,
Я так давно тебе люблю,
Тебе жагою вогняною
І обпечу, і утомлю.

Не йди... не йди, побудь зі мною -
Не стлумить серденько жади!, -
Кохання жар нас жде з тобою,
Не залишай мене, не йди!','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_651195'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_651195','Не йди, лишись, побудь за мною','Не йди, лишись, побудь зі мною,
Тут і відрада, і тепло.
Я зацілую із жагою
Вуста і очі, і чоло.

Не залишай, побудь зі мною,
Я так давно тебе люблю,
Тебе жагою вогняною
І обпечу, і утомлю.

Не йди... не йди, побудь зі мною -
Не стлумить серденько жади!, -
Кохання жар нас жде з тобою,
Не залишай мене, не йди!');
DELETE FROM song_links WHERE song_id = 'pisniua_6510644';
DELETE FROM song_versions WHERE song_id = 'pisniua_6510644';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6510644';
DELETE FROM songs WHERE id = 'pisniua_6510644';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6510644','Останній раз','Музика: Mihaylo Melkumyan, Mykhailo Klymenko Слова: Andriy Dutchak, Mykhailo Klymenko, Oleh Psiuk, Ivan Klymenko','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Останній раз закурю і кину,        |
Останній раз піду, та не покину... |
Останній раз без тебе засну,       |
Та не останній раз скажу тобі,     |
Як сильно!..                       | (2)

Давно я не казав тобі
Романтичних слів,
Кудись постійно лечу,
Цей світ неначе здурів...
Я тут, а ти там,
Вдома чекаєш на мене,
Я бережу ці всі слова для тебе!..
В останній час я розумію,
Що ти бережеш мій сон,
Все інше тільки фон...
Повільно, пробиваючи бетон,
Весна вже за вікном
Розкриє листя крон...

Приспів.

І знову мене сліпить,
Так сліпить,
Ця спроба, ніби це сніпет.
Я знаю, що всі ці дні сьогодні -
Для майбутнього зліпок.
Кажуть, спокій в теплі,
Но не в чужому сідлі,
А ресентименти одні в западні,
Якщо не проскіпав.
Я чув, що демон емансипацій,
І тема чужих фрустрацій.
Буде в нас до перших станцій,
Ця станція - весна!
Я не раз час шукав,
Але мене час кидав...

Приспів.

Останній раз... Останній...','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6510644'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6510644','Останній раз','Приспів:
Останній раз закурю і кину,        |
Останній раз піду, та не покину... |
Останній раз без тебе засну,       |
Та не останній раз скажу тобі,     |
Як сильно!..                       | (2)

Давно я не казав тобі
Романтичних слів,
Кудись постійно лечу,
Цей світ неначе здурів...
Я тут, а ти там,
Вдома чекаєш на мене,
Я бережу ці всі слова для тебе!..
В останній час я розумію,
Що ти бережеш мій сон,
Все інше тільки фон...
Повільно, пробиваючи бетон,
Весна вже за вікном
Розкриє листя крон...

Приспів.

І знову мене сліпить,
Так сліпить,
Ця спроба, ніби це сніпет.
Я знаю, що всі ці дні сьогодні -
Для майбутнього зліпок.
Кажуть, спокій в теплі,
Но не в чужому сідлі,
А ресентименти одні в западні,
Якщо не проскіпав.
Я чув, що демон емансипацій,
І тема чужих фрустрацій.
Буде в нас до перших станцій,
Ця станція - весна!
Я не раз час шукав,
Але мене час кидав...

Приспів.

Останній раз... Останній...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6510644_l1','pisniua_6510644','YouTube','https://www.youtube.com/watch?v=aTnAoDfokSE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_651454';
DELETE FROM song_versions WHERE song_id = 'pisniua_651454';
DELETE FROM songs_fts WHERE song_id = 'pisniua_651454';
DELETE FROM songs WHERE id = 'pisniua_651454';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_651454','У сусіда хата біла','Українська народна пісня. Виконує: Дмитро Гнатюк','uk','ukraine_before_1917',NULL,NULL,'1. Надав В. Лисенко; 2. Українські народні пісні. Редактор Г. Гембера. - К.: Держ. в-во образотворчого м-ва і муз. л-ри УРСР, 1960. - 376 с.',NULL,'У сусіда хата біла,
У сусіда жінка мила,
А у мене ні хатинки,       |
Нема щастя, нема жінки.    | (2)

Є у мене сусідонька —
Люба, мила дівчинонька,
Та не знаю, що робить,     |
Бо боюсь туди ходить.      | (2)

Сідлай, хлопче, вороного,
А собі бери другого,
Та поїдем погуляєм,        |
У сусіда побуваєм!         | (2)

"Будь здорова, сусідонько,
Люба, мила дівчинонько,
Ой яка ж ти гарнесенька,   |
Як сніжечок, білесенька!"  | (2)

"Годі, годі жартувати,
Ось іде і стара мати!"
"Ой здорова будь, матусю,  |
Я приїхав по Ганнусю!      | (2)

Ой здорова будь, матусю,
Я приїхав по Ганнусю,
Хочу буть тобі ріднею,     |
Ти будь ненькою моєю!"     |(2)','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_651454'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_651454','У сусіда хата біла','У сусіда хата біла,
У сусіда жінка мила,
А у мене ні хатинки,       |
Нема щастя, нема жінки.    | (2)

Є у мене сусідонька —
Люба, мила дівчинонька,
Та не знаю, що робить,     |
Бо боюсь туди ходить.      | (2)

Сідлай, хлопче, вороного,
А собі бери другого,
Та поїдем погуляєм,        |
У сусіда побуваєм!         | (2)

"Будь здорова, сусідонько,
Люба, мила дівчинонько,
Ой яка ж ти гарнесенька,   |
Як сніжечок, білесенька!"  | (2)

"Годі, годі жартувати,
Ось іде і стара мати!"
"Ой здорова будь, матусю,  |
Я приїхав по Ганнусю!      | (2)

Ой здорова будь, матусю,
Я приїхав по Ганнусю,
Хочу буть тобі ріднею,     |
Ти будь ненькою моєю!"     |(2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_651454_l1','pisniua_651454','YouTube','https://www.youtube.com/watch?v=AvWaWOJl4rM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_651454_l2','pisniua_651454','YouTube','https://www.youtube.com/watch?v=WHq5ZfKL1Zg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_651454_l3','pisniua_651454','YouTube','https://www.youtube.com/watch?v=WITWBtRRhK0','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_651454_l4','pisniua_651454','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_651491';
DELETE FROM song_versions WHERE song_id = 'pisniua_651491';
DELETE FROM songs_fts WHERE song_id = 'pisniua_651491';
DELETE FROM songs WHERE id = 'pisniua_651491';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_651491','Ангельськії співи','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ангельськії співи в небесах звучать;
Радість утішіння мир вони дарять.
Нам родився Спаситель, дивне Немовля.
Всім Він Відкупитель, грішників як я.

Приспів:
Ангельськії співи в небесах звучать.
В них для всіх спасіння, мир і благодать.
Слава Богу в небі і мир на землі
Слава Богу в небі і мир на землі.
Амінь! Амінь!

У висотах неба слава й честь Тому
Хто страждав за грішних, що любили тьму.
Із глибин сердечних до небес ясних
Співи ллються щирі від Його святих.

Приспів.

Будемо любов''ю за любов платить
Тому Хто нас кров''ю спас; щоб вічно жить
Братові, що гине, руку подамо.
Не за користь й плату - вічність маємо.','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''cat:kolyadky'', ''Церковні пісні'', ''Пісні на християнську тематику'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_651491'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_651491','Ангельськії співи','Ангельськії співи в небесах звучать;
Радість утішіння мир вони дарять.
Нам родився Спаситель, дивне Немовля.
Всім Він Відкупитель, грішників як я.

Приспів:
Ангельськії співи в небесах звучать.
В них для всіх спасіння, мир і благодать.
Слава Богу в небі і мир на землі
Слава Богу в небі і мир на землі.
Амінь! Амінь!

У висотах неба слава й честь Тому
Хто страждав за грішних, що любили тьму.
Із глибин сердечних до небес ясних
Співи ллються щирі від Його святих.

Приспів.

Будемо любов''ю за любов платить
Тому Хто нас кров''ю спас; щоб вічно жить
Братові, що гине, руку подамо.
Не за користь й плату - вічність маємо.');
DELETE FROM song_links WHERE song_id = 'pisniua_6512570';
DELETE FROM song_versions WHERE song_id = 'pisniua_6512570';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6512570';
DELETE FROM songs WHERE id = 'pisniua_6512570';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6512570','День народження','Музика: Оля Цибульська Слова: Оля Цибульська. Виконує: Оля Цибульська','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'А на погоду крутить нога,
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
DELETE FROM song_links WHERE song_id = 'pisniua_6512879';
DELETE FROM song_versions WHERE song_id = 'pisniua_6512879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6512879';
DELETE FROM songs WHERE id = 'pisniua_6512879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6512879','Гуцулянка','Музика: Іван Попович Слова: Андрій Демиденко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Гей, над плаєм, над високим
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
DELETE FROM song_links WHERE song_id = 'pisniua_6517959';
DELETE FROM song_versions WHERE song_id = 'pisniua_6517959';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6517959';
DELETE FROM songs WHERE id = 'pisniua_6517959';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6517959','З днем народження!','Музика: Марина Полончак Слова: Марина Полончак','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Як багато побажань,
Планів і сподівань,
І сьогодні для тебе
Мільйони вітань!
Бо сьогодні твій день,
І хоч плюс тобі в вік,
Хай лиш радість приносить
Тобі кожен рік!

Приспів:
Ми вітаєм тебе
В твій народження день!
Побажаєм здоров''я
І веселих пісень!
Щоби щастя й добро
Жили в домі твоїм,
Бо коли ти радієш,
То нам добре усім!

Перегорнеш ти календар,
Посміхнешся щиро нам.
Хай в житті не буде місця
Ні тривогам, ні вітрам,
Щоби доля принесла
Море щастя і тепла,
А від близьких і друзів
Ці щирі слова!

Приспів. (2)','[''pisni.org.ua'', ''cat:druzhba'', ''cat:zahalni-cinnosti'', ''Пісні про дружбу'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6517959'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6517959','З днем народження!','Як багато побажань,
Планів і сподівань,
І сьогодні для тебе
Мільйони вітань!
Бо сьогодні твій день,
І хоч плюс тобі в вік,
Хай лиш радість приносить
Тобі кожен рік!

Приспів:
Ми вітаєм тебе
В твій народження день!
Побажаєм здоров''я
І веселих пісень!
Щоби щастя й добро
Жили в домі твоїм,
Бо коли ти радієш,
То нам добре усім!

Перегорнеш ти календар,
Посміхнешся щиро нам.
Хай в житті не буде місця
Ні тривогам, ні вітрам,
Щоби доля принесла
Море щастя і тепла,
А від близьких і друзів
Ці щирі слова!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6517959_l1','pisniua_6517959','YouTube','https://www.youtube.com/watch?v=4W1h8jQBMjQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6515555';
DELETE FROM song_versions WHERE song_id = 'pisniua_6515555';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6515555';
DELETE FROM songs WHERE id = 'pisniua_6515555';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6515555','Поговори зі мною','Музика: Сергій Ярунський Слова: Маріанна Шутко','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'Поговори зі мною, друже,
Я так сумую за тобою!..
Поговори! Ти також тужиш?..
Слова ти розділи зі мною!..

як ділиш з ближнім хліб і воду!..
Сорочку ворогу даєш!..
Тебе люблю я не за вроду,
Бо серце добре маєш теж!..

Поговори зі мною, чуєш?..
Поговори!.. Поговори!..
Словами ти мене цілуєш,
Лікуєш ти словами крик!..

Мовчання, що вже перестигло,
Як яблуко в саду одне...
До німоти я слів не звикну!..
Навіщо приручав мене?..
Навіщо приручав мене?..
Поговори!..

Поговори зі мною, чуєш?..
Поговори!.. Поговори!..
Словами ти мене цілуєш,
Лікуєш ти словами крик!..

Мовчання, що вже перестигло,
Як яблуко в саду одне...
До німоти я слів не звикну!..
Навіщо приручав мене?..    Serhi I Ko','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6515555'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6515555','Поговори зі мною','Поговори зі мною, друже,
Я так сумую за тобою!..
Поговори! Ти також тужиш?..
Слова ти розділи зі мною!..

як ділиш з ближнім хліб і воду!..
Сорочку ворогу даєш!..
Тебе люблю я не за вроду,
Бо серце добре маєш теж!..

Поговори зі мною, чуєш?..
Поговори!.. Поговори!..
Словами ти мене цілуєш,
Лікуєш ти словами крик!..

Мовчання, що вже перестигло,
Як яблуко в саду одне...
До німоти я слів не звикну!..
Навіщо приручав мене?..
Навіщо приручав мене?..
Поговори!..

Поговори зі мною, чуєш?..
Поговори!.. Поговори!..
Словами ти мене цілуєш,
Лікуєш ти словами крик!..

Мовчання, що вже перестигло,
Як яблуко в саду одне...
До німоти я слів не звикну!..
Навіщо приручав мене?..    Serhi I Ko');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6515555_l1','pisniua_6515555','YouTube','https://www.youtube.com/watch?v=vS8wcNO3tcI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6519348';
DELETE FROM song_versions WHERE song_id = 'pisniua_6519348';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6519348';
DELETE FROM songs WHERE id = 'pisniua_6519348';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6519348','Полька ''двадцять третя''','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','м. Миргород Пісню виконує Фольклорний ансамбль "Божичі" (альбом: Вік любиш - не налюбишся).','Пішла полька жито жать,  |
Та й забула серп узять,  | (2)

Серп узяла, хліб забула,
Та та полька дома була.

Пішла полька жито жать,  |
Та й забула серп узять,  | (2)

Серп узяла, хліб забула, |
Та та полька дома була.  | (2)

Пішла полька жито жать,  |
Та й забула серп узять,  | (2)

Серп узяла, хліб забула, |
Та та полька дома була.  | (2)','[''pisni.org.ua'', ''cat:arkhiv-bozhychi'', ''Фольклорний архів анс. "Божичі"'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6519348'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6519348','Полька ''двадцять третя''','Пішла полька жито жать,  |
Та й забула серп узять,  | (2)

Серп узяла, хліб забула,
Та та полька дома була.

Пішла полька жито жать,  |
Та й забула серп узять,  | (2)

Серп узяла, хліб забула, |
Та та полька дома була.  | (2)

Пішла полька жито жать,  |
Та й забула серп узять,  | (2)

Серп узяла, хліб забула, |
Та та полька дома була.  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6519348_l1','pisniua_6519348','YouTube','https://www.youtube.com/watch?v=Wll3HgJIdRY','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6524746';
DELETE FROM song_versions WHERE song_id = 'pisniua_6524746';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6524746';
DELETE FROM songs WHERE id = 'pisniua_6524746';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6524746','Меланка ходила','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,'Полтавська область, Кременчуцький район. Останні три рядки (А нам калач дайте, та не ламайте, та ціленький давайте) декламують, а не співають.','Меланка ходила,
Василька водила:
- Васильку, мій батько,
Пусти мене в хатку.

Я жита не жала,
Край столу стояла,
Золотий хрест держала,
Золоту кадільницю.

Кадійтеся, люди,
І вам добро буде!
Богу свічу ставте!

Речитатив:
А нам калач дайте,
Та не ламайте,
Та ціленький давайте!','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6524746'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6524746','Меланка ходила','Меланка ходила,
Василька водила:
- Васильку, мій батько,
Пусти мене в хатку.

Я жита не жала,
Край столу стояла,
Золотий хрест держала,
Золоту кадільницю.

Кадійтеся, люди,
І вам добро буде!
Богу свічу ставте!

Речитатив:
А нам калач дайте,
Та не ламайте,
Та ціленький давайте!');
DELETE FROM song_links WHERE song_id = 'pisniua_6518271';
DELETE FROM song_versions WHERE song_id = 'pisniua_6518271';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6518271';
DELETE FROM songs WHERE id = 'pisniua_6518271';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6518271','Гей, око Лада','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Ігри та пісні. Весняно-літня поезія трудового року.','Записано від Левицького у селі Ясень Рожнятівського району на Станіславщині. Відділ рукописів Інституту мистецтвознавства, фольклору та етнографії АН УРСР, фонд 14 — 5, одиниця зберігання 264, аркуш 44.','Гей, око Лада,
Леле Ладове,
Гей, око Ладове,
Ніч пропадає,
Бо око Лада
З води виходить,
Ладове свято
Нам приносить.
Гей, Ладо!

А ти, Перуне,
Отче над Ладом.
Гей, Перуне,
Дай дочекати
Ладе купала.
Гей, купала!

А кум і кума
У нашу хату.
Гей, кум і кума,
Солод ситити,
Медок хмелити.
Гей, кум і кумо,
Щоби і внукам
То пам''ятати
Гей, кум і кумо!','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6518271'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6518271','Гей, око Лада','Гей, око Лада,
Леле Ладове,
Гей, око Ладове,
Ніч пропадає,
Бо око Лада
З води виходить,
Ладове свято
Нам приносить.
Гей, Ладо!

А ти, Перуне,
Отче над Ладом.
Гей, Перуне,
Дай дочекати
Ладе купала.
Гей, купала!

А кум і кума
У нашу хату.
Гей, кум і кума,
Солод ситити,
Медок хмелити.
Гей, кум і кумо,
Щоби і внукам
То пам''ятати
Гей, кум і кумо!');
DELETE FROM song_links WHERE song_id = 'pisniua_65144';
DELETE FROM song_versions WHERE song_id = 'pisniua_65144';
DELETE FROM songs_fts WHERE song_id = 'pisniua_65144';
DELETE FROM songs WHERE id = 'pisniua_65144';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_65144','Український лев','Музика: Віктор Морозов Слова: Василь Симоненко. Виконує: Віктор Морозов','uk','ukr_ssr_1919_1991',NULL,'1990','1. Аудіозапис; 2. Твоя пісня. Пісенник для молоді. Вип. 3. - К.: Музична Україна, 1990. - С. 102.','* Перехід у Dm. ** У відомому мені оригіналі аудіозапису 5 куплет не співається. *** В оригіналі виконується з C#m 12-string acoustic, Capo 4 fret. Текст та акорди перевірив Віктор Морозов (http://www.victormorozov.com); текст перевірений також за джерелом 2. У доданих файлах тональність оригінальна: C#m Підбір акордів: smash, bohdanko','1.
Бубнявіють думки, проростають словами,
Їх пагіння бринить у завихренні днів -
Цілий тиждень живу і ходжу між левами,   |
Недаремно ж і місто взивається - Львів.  |(2)

2.
Є міста - ренеґати, є просто байстрята,
Є леви, що мурликають, наче коти,
Божевільно байдуже облизують ґрати,      |
Ще й пишаються з власної сліпоти.        |(2)

3.
Але думать про них я сьогодні не хочу,
Бо мені, видно, трішечки повезло -
Я побачив у Львові Шашкевича очі,        |
Кривоносові плечі й Франкове чоло.       |(2)

4.*
Сивий Львове! Cтолице моєї мрії,
Епіцентре моїх радощів і надій,
Вибухає душа, — я тебе розумію,          |
Але, Львове, хоч трішки мене розумій!    |(2)

5.**
Я до тебе прийшов із захопленням сина
Од степів, де Славута легенди снує,
Щоби серце твоє одчайдушно левине        |
Краплю сили вдихнуло у серце моє.        |(2)
Акорди:***
Вступ:
Am Asus2 Am F G E  (2)
Am Asus2

Бубняві_ ють думки, пророста_ ють словами
С  F     G                  C
Їх пагіння бринить у завихренні днів -
Цілий тиждень живу і ходжу між левами,  |(2)
Недаремно ж і місто взивається Львів.   |','[''pisni.org.ua'', ''cat:bardivski'', ''cat:lviv'', ''Бардівські пісні'', ''Пісні про Львів'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_65144'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_65144','Український лев','1.
Бубнявіють думки, проростають словами,
Їх пагіння бринить у завихренні днів -
Цілий тиждень живу і ходжу між левами,   |
Недаремно ж і місто взивається - Львів.  |(2)

2.
Є міста - ренеґати, є просто байстрята,
Є леви, що мурликають, наче коти,
Божевільно байдуже облизують ґрати,      |
Ще й пишаються з власної сліпоти.        |(2)

3.
Але думать про них я сьогодні не хочу,
Бо мені, видно, трішечки повезло -
Я побачив у Львові Шашкевича очі,        |
Кривоносові плечі й Франкове чоло.       |(2)

4.*
Сивий Львове! Cтолице моєї мрії,
Епіцентре моїх радощів і надій,
Вибухає душа, — я тебе розумію,          |
Але, Львове, хоч трішки мене розумій!    |(2)

5.**
Я до тебе прийшов із захопленням сина
Од степів, де Славута легенди снує,
Щоби серце твоє одчайдушно левине        |
Краплю сили вдихнуло у серце моє.        |(2)
Акорди:***
Вступ:
Am Asus2 Am F G E  (2)
Am Asus2

Бубняві_ ють думки, пророста_ ють словами
С  F     G                  C
Їх пагіння бринить у завихренні днів -
Цілий тиждень живу і ходжу між левами,  |(2)
Недаремно ж і місто взивається Львів.   |');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_65144_l1','pisniua_65144','YouTube','https://www.youtube.com/watch?v=xDdwaNxrmfg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6517695';
DELETE FROM song_versions WHERE song_id = 'pisniua_6517695';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6517695';
DELETE FROM songs WHERE id = 'pisniua_6517695';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6517695','Свято Пасхи','Музика: Оксана Пічугіна Слова: Оксана Пічугіна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ми до свята готувались,
В хаті підмели,
Іграшки поприбирали,
Пасочки спекли!

Приспів:
Паска на столі,
Крашанки малі,
Свято на усій землі!

Ось настав
Цей день святковий,
Янголи з небес
Сповістили всіх навколо,
Що Христос воскрес!

Приспів.

Хай же пісню цю почують
Гори і лани!
Дай же, Боже, всім нам жити
В мирі, без війни!

Приспів. (2)','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6517695'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6517695','Свято Пасхи','Ми до свята готувались,
В хаті підмели,
Іграшки поприбирали,
Пасочки спекли!

Приспів:
Паска на столі,
Крашанки малі,
Свято на усій землі!

Ось настав
Цей день святковий,
Янголи з небес
Сповістили всіх навколо,
Що Христос воскрес!

Приспів.

Хай же пісню цю почують
Гори і лани!
Дай же, Боже, всім нам жити
В мирі, без війни!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6517695_l1','pisniua_6517695','YouTube','https://www.youtube.com/watch?v=wKyS0gyxyZs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6517695_l2','pisniua_6517695','YouTube','https://www.youtube.com/watch?v=1nz0Ap_G2FE','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6516348';
DELETE FROM song_versions WHERE song_id = 'pisniua_6516348';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6516348';
DELETE FROM songs WHERE id = 'pisniua_6516348';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6516348','Про блудного сина','Українська народна пісня. Виконує: Божичі','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','с. Богуслав Павлоградського р-ну Дніпропетровської обл.','Боже мой і Боже мой,
Вічная моя любов.
Ти прейди, любезний синку,
Ти прейди, дитя моє.

Ти прейди, (мій) любезний синку,
Ти прейди, дитя моє,
Всьо готово для тебе.

Не тіряй своє сомнєння,
Що провів своє імення,
Я увижу іздалєча,
Сам прейду к тібє на встрєчу.

Винесу тібє одєжду,
На руку перстінь златой.
Сапоги нові одєну й
Поведу к сібє домой.

По чужим странам шатався,
Свинним кормом он питався,
Як настав великий глад -
Сам прийшов к отцу назад.

Веселітесь, мої друзі,
Моїй радості большой,
Що заблудший син вернувся,
Сам прийшов к отцу домой.','[''pisni.org.ua'', ''cat:arkhiv-bozhychi'', ''Фольклорний архів анс. "Божичі"'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6516348'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6516348','Про блудного сина','Боже мой і Боже мой,
Вічная моя любов.
Ти прейди, любезний синку,
Ти прейди, дитя моє.

Ти прейди, (мій) любезний синку,
Ти прейди, дитя моє,
Всьо готово для тебе.

Не тіряй своє сомнєння,
Що провів своє імення,
Я увижу іздалєча,
Сам прейду к тібє на встрєчу.

Винесу тібє одєжду,
На руку перстінь златой.
Сапоги нові одєну й
Поведу к сібє домой.

По чужим странам шатався,
Свинним кормом он питався,
Як настав великий глад -
Сам прийшов к отцу назад.

Веселітесь, мої друзі,
Моїй радості большой,
Що заблудший син вернувся,
Сам прийшов к отцу домой.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6516348_l1','pisniua_6516348','YouTube','https://www.youtube.com/watch?v=zpgX0BPyURI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_65252';
DELETE FROM song_versions WHERE song_id = 'pisniua_65252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_65252';
DELETE FROM songs WHERE id = 'pisniua_65252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_65252','Ой летіли дикі гуси','Музика: Ігор Поклад Слова: Юрій Рибчинський. Виконує: Ніна Матвієнко, Руслана, Тамара Міансарова, Лідія Відаш','uk','ukraine_before_1917',NULL,NULL,'Співаник тернопільського туристичного клубу "Кристал"',NULL,'Ой, летіли дикі гуси,
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
DELETE FROM song_links WHERE song_id = 'pisniua_6523542';
DELETE FROM song_versions WHERE song_id = 'pisniua_6523542';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6523542';
DELETE FROM songs WHERE id = 'pisniua_6523542';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6523542','Друзі','Музика: Мар''ян Гаденко Слова: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Просіє час неначе сито
Думки веселі і сумні,
Життя летить несамовито,
Летять роки, неначе дні,
Я зла на серці не тримаю,
Любов панує у душі,
Живу, творю, для вас співаю,
Для вас усіх, друзі мої!

Приспів:
Мені не жаль прожитих днів, |
Старіємо ми не по волі,     |
За друзів і за ворогів      |
Я Богу дякую і долі!        | (2)

А доля нас не шанувала,
Була і радість, і біда,
Та дружба нам допомагала,
Неначе спраглому вода.
За те, що мав, і те, що маю,
Я дякую вам від душі!
Шаную вас і знов співаю
Для вас, усіх, друзі мої!

Приспів.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6523542'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6523542','Друзі','Просіє час неначе сито
Думки веселі і сумні,
Життя летить несамовито,
Летять роки, неначе дні,
Я зла на серці не тримаю,
Любов панує у душі,
Живу, творю, для вас співаю,
Для вас усіх, друзі мої!

Приспів:
Мені не жаль прожитих днів, |
Старіємо ми не по волі,     |
За друзів і за ворогів      |
Я Богу дякую і долі!        | (2)

А доля нас не шанувала,
Була і радість, і біда,
Та дружба нам допомагала,
Неначе спраглому вода.
За те, що мав, і те, що маю,
Я дякую вам від душі!
Шаную вас і знов співаю
Для вас, усіх, друзі мої!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6523542_l1','pisniua_6523542','YouTube','https://www.youtube.com/watch?v=HvHgMtvZ8PQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6518144';
DELETE FROM song_versions WHERE song_id = 'pisniua_6518144';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6518144';
DELETE FROM songs WHERE id = 'pisniua_6518144';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6518144','Температура','Музика: PARFENIUK, KOLA, Сергій Ранов (RUNSTAR) Слова: KOLA, PARFENIUK','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Як розпалити вогонь
В серцях, яких
Температура на ноль,
І присмак губ п''янких?..
Як розпалити вогонь,
Будучи осторонь?..
Ну, як розпалити вогонь
В серцях, яких
Температура на ноль,
І присмак губ п''янких?..
Як розпалити вогонь,
Будучи осторонь?..
Не охолонь!

Як душем холодним, окотило,
Коли відчула,
Що в нас усе застигло...
Чи то я винна?
Чи то винен ти? —
Ми заблукали у темноті...
У-у-у, допоки світло горить,
У-у-у, можна все налагодить!..
Краще б ми в одну сторону йшли,
А не слали на три...

Приспів:
Як розпалити вогонь      |
В серцях, яких           |
Температура на ноль,     |
І присмак губ п''янких?.. |
Як розпалити вогонь,     |
Будучи осторонь?..       |
Не охолонь!              | (2)

Я не розумію через що
Вогонь погас,
Я тікав від вітру і дощу,
Немов Пегас.
Пронести тепло в кишені
Біля серця хоч би раз,
Та воно б''ється не для нас!..
Температура тіла тліла,
Навіть не горіла,
Моя історія з тобою
Була чисто біла.
Сонце в зеніті мене
Гріє менше тебе, мила,
Тому що сонце так, як ти,
Ніколи не світило!

Приспів.','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6518144'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6518144','Температура','Як розпалити вогонь
В серцях, яких
Температура на ноль,
І присмак губ п''янких?..
Як розпалити вогонь,
Будучи осторонь?..
Ну, як розпалити вогонь
В серцях, яких
Температура на ноль,
І присмак губ п''янких?..
Як розпалити вогонь,
Будучи осторонь?..
Не охолонь!

Як душем холодним, окотило,
Коли відчула,
Що в нас усе застигло...
Чи то я винна?
Чи то винен ти? —
Ми заблукали у темноті...
У-у-у, допоки світло горить,
У-у-у, можна все налагодить!..
Краще б ми в одну сторону йшли,
А не слали на три...

Приспів:
Як розпалити вогонь      |
В серцях, яких           |
Температура на ноль,     |
І присмак губ п''янких?.. |
Як розпалити вогонь,     |
Будучи осторонь?..       |
Не охолонь!              | (2)

Я не розумію через що
Вогонь погас,
Я тікав від вітру і дощу,
Немов Пегас.
Пронести тепло в кишені
Біля серця хоч би раз,
Та воно б''ється не для нас!..
Температура тіла тліла,
Навіть не горіла,
Моя історія з тобою
Була чисто біла.
Сонце в зеніті мене
Гріє менше тебе, мила,
Тому що сонце так, як ти,
Ніколи не світило!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6518144_l1','pisniua_6518144','YouTube','https://www.youtube.com/watch?v=WeKIE8BX5BM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6521593';
DELETE FROM song_versions WHERE song_id = 'pisniua_6521593';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6521593';
DELETE FROM songs WHERE id = 'pisniua_6521593';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6521593','Ми - молодь України','Музика: Віталій Вініченко Слова: Тетяна Князєва','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Під небом України яскраві килими,
Жовтаві степу крила і хвилі Дніпрові,
І хмари золотаві, і щастя острови,
Хай майорять над нами державні прапори!

Приспів:
Кольорова птаха з білими крилами
Рідкий день приносить у житті.
Творимо ми щастя власними руками,
І летять любові пелюстки!
Молода країна, земле Україно,
Пращурів прадавня сторона,
Хлібом і піснями день свій зустрічає
Молодь - України майбуття!

Зростає разом з нами свята рідня земля,
Ми - молодь України! За нами майбуття!
Злітають в небо жовто-блакитні прапори,
Ми - молодь України і українці - ми!

Приспів. (2)

Ми - молодь України! За нами майбуття!','[''pisni.org.ua'', ''cat:devoted'', ''cat:zahalni-cinnosti'', ''Пісні присвячені окремим особам'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6521593'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6521593','Ми - молодь України','Під небом України яскраві килими,
Жовтаві степу крила і хвилі Дніпрові,
І хмари золотаві, і щастя острови,
Хай майорять над нами державні прапори!

Приспів:
Кольорова птаха з білими крилами
Рідкий день приносить у житті.
Творимо ми щастя власними руками,
І летять любові пелюстки!
Молода країна, земле Україно,
Пращурів прадавня сторона,
Хлібом і піснями день свій зустрічає
Молодь - України майбуття!

Зростає разом з нами свята рідня земля,
Ми - молодь України! За нами майбуття!
Злітають в небо жовто-блакитні прапори,
Ми - молодь України і українці - ми!

Приспів. (2)

Ми - молодь України! За нами майбуття!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6521593_l1','pisniua_6521593','YouTube','https://www.youtube.com/watch?v=DGOfbLhz7OM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6521593_l2','pisniua_6521593','YouTube','https://www.youtube.com/watch?v=3LQSnR3z074','video',NULL,2);
