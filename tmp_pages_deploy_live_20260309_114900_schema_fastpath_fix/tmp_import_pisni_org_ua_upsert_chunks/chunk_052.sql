DELETE FROM song_links WHERE song_id = 'pisniua_6184673';
DELETE FROM song_versions WHERE song_id = 'pisniua_6184673';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6184673';
DELETE FROM songs WHERE id = 'pisniua_6184673';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6184673','Берегом, берегом, бережиною!','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256 с.',NULL,'Берегом, берегом, бережиною!
Берегом, берегом, бережиною!

А хто ж там іде дорожиною?
Берегом, берегом, бережиною!

Ой, іде, іде, коником грає.
Берегом, берегом, бережиною!

Та й на подвір''ячко все поглядає.
Берегом, берегом, бережиною!

Ой, де ж ти, Галю, моє серденько?
Моє серденько!

Чом не виходиш на вуличеньку?
На вуличеньку!

Чи, може, мачуха та й не пускала?
Чи, може, забула, кому присягала?
Кому присягала, гей, гей!

Ой, знаю, знаю, кого кохаю.
Кого кохаю!
Кому хустинку все вишиваю.
Все вишиваю!

Вже ж та хустиночка шовком обшита.
Берегом, берегом, бережиною!
Вийду, козаченьку, хоч буду бита!
Берегом, берегом, бережиною! Гей!','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6184673'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6184673','Берегом, берегом, бережиною!','Берегом, берегом, бережиною!
Берегом, берегом, бережиною!

А хто ж там іде дорожиною?
Берегом, берегом, бережиною!

Ой, іде, іде, коником грає.
Берегом, берегом, бережиною!

Та й на подвір''ячко все поглядає.
Берегом, берегом, бережиною!

Ой, де ж ти, Галю, моє серденько?
Моє серденько!

Чом не виходиш на вуличеньку?
На вуличеньку!

Чи, може, мачуха та й не пускала?
Чи, може, забула, кому присягала?
Кому присягала, гей, гей!

Ой, знаю, знаю, кого кохаю.
Кого кохаю!
Кому хустинку все вишиваю.
Все вишиваю!

Вже ж та хустиночка шовком обшита.
Берегом, берегом, бережиною!
Вийду, козаченьку, хоч буду бита!
Берегом, берегом, бережиною! Гей!');
DELETE FROM song_links WHERE song_id = 'pisniua_617746';
DELETE FROM song_versions WHERE song_id = 'pisniua_617746';
DELETE FROM songs_fts WHERE song_id = 'pisniua_617746';
DELETE FROM songs WHERE id = 'pisniua_617746';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_617746','Міську вважай','Музика: Сергій Кузьминський Слова: Сергій Кузьминський. Виконує: Брати Гадюкіни','uk','ukraine_before_1917',NULL,NULL,'http://vik75.h1.ru/muz1.shtml?id=98',NULL,'Кожного дня хожу по місті я туда сюда,
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
DELETE FROM song_links WHERE song_id = 'pisniua_6184972';
DELETE FROM song_versions WHERE song_id = 'pisniua_6184972';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6184972';
DELETE FROM songs WHERE id = 'pisniua_6184972';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6184972','На гряній неділі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256 с.',NULL,'На гряній неділі русалки сиділи,
Ой, рано, рано, русалки сиді(ли).

Сиділа русалка та й питала літа,
Ой, рано, рано, та й питала лі(та).

Чи бувало літо, чи ще й не бувало,
Ой, рано, рано, чи ще й не бува(ло)?

А я, молодая, літа не вгадала,
Ой, рано, рано, літа не вгада(ла).

Мене, молодую, горечко приспіло,
Ой, рано, рано, горечко приспі(ло).

Горечко приспіло, гулять не пустило,
Ой, рано, рано, гулять не пусти(ло)!','[''pisni.org.ua'', ''cat:zeleni-svyata'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6184972'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6184972','На гряній неділі','На гряній неділі русалки сиділи,
Ой, рано, рано, русалки сиді(ли).

Сиділа русалка та й питала літа,
Ой, рано, рано, та й питала лі(та).

Чи бувало літо, чи ще й не бувало,
Ой, рано, рано, чи ще й не бува(ло)?

А я, молодая, літа не вгадала,
Ой, рано, рано, літа не вгада(ла).

Мене, молодую, горечко приспіло,
Ой, рано, рано, горечко приспі(ло).

Горечко приспіло, гулять не пустило,
Ой, рано, рано, гулять не пусти(ло)!');
DELETE FROM song_links WHERE song_id = 'pisniua_6184656';
DELETE FROM song_versions WHERE song_id = 'pisniua_6184656';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6184656';
DELETE FROM songs WHERE id = 'pisniua_6184656';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6184656','В осичині да в березині','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256 с.','з репертуару гурту "Кралиця", м. Київ','В осичині да в березині        | (2)
Там Іванко да й травку косить.

Там Іванко да й травку косить, | (2)
Та й своєму конику виносить.

Ой, їж, коню, шовковую травку, | (2)
Ой, пий, коню, холодную воду.

Ой, пий, коню, холодную воду,  | (2)
Ой, грай, коню, стиха підо мною.

Щоб чужина да й похвалила,     | (2)
Щоб Галочка да й полюбила.','[''pisni.org.ua'', ''cat:poliski'', ''Пісні з Полісся'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6184656'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6184656','В осичині да в березині','В осичині да в березині        | (2)
Там Іванко да й травку косить.

Там Іванко да й травку косить, | (2)
Та й своєму конику виносить.

Ой, їж, коню, шовковую травку, | (2)
Ой, пий, коню, холодную воду.

Ой, пий, коню, холодную воду,  | (2)
Ой, грай, коню, стиха підо мною.

Щоб чужина да й похвалила,     | (2)
Щоб Галочка да й полюбила.');
DELETE FROM song_links WHERE song_id = 'pisniua_6185271';
DELETE FROM song_versions WHERE song_id = 'pisniua_6185271';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6185271';
DELETE FROM songs WHERE id = 'pisniua_6185271';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6185271','Ми-то, женчики','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256',NULL,'Ми-то, женчики,
Ми-то,
Ми-то, женчики,
Ми-то,
Пожали усе жито.

А сусіди
Ліниві,
А сусіди
Ліниві,
Стоїть жито
На ниві.','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6185271'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6185271','Ми-то, женчики','Ми-то, женчики,
Ми-то,
Ми-то, женчики,
Ми-то,
Пожали усе жито.

А сусіди
Ліниві,
А сусіди
Ліниві,
Стоїть жито
На ниві.');
DELETE FROM song_links WHERE song_id = 'pisniua_618348';
DELETE FROM song_versions WHERE song_id = 'pisniua_618348';
DELETE FROM songs_fts WHERE song_id = 'pisniua_618348';
DELETE FROM songs WHERE id = 'pisniua_618348';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_618348','Хата скраю села','Музика: Дмитро Добрий-Вечір Слова: Дмитро Добрий-Вечір. Виконує: Вій','uk','ukraine_1991',NULL,NULL,'1. http://www.viyfrom.kiev.ua/txt/016.php 2. Аудіо-CD "Вій. Хата скраю села" (2003)','Текст виправлено і доповнено за джерелом 2. * Лєта (Лета) - річка забуття. За джерелом 1 тут інакше: ** Щоб таки не стікти у Лету *** Забери нас із цього клозету Акорди підібрано на слух за аудіо, спрощено. Оригінальна тональність: Gm (каподастр на III ладі). Акорди у тональності Em: - Вступ: | Em C A C | (x4) - Фрагмент 1: | Em A | C A | Em A | C Em | - Фрагмент 2: | Em C | A C | Em C | A C Em C A C | Підбір акордів: bohdanko (pisni.org.ua)','Вступ: Gm D# C D# (x4)

Боже, ти нам казав:
"Буде день та буде їжа."
Ти, напевно, збрехав,
Чи не чув про Україну.

Де ти, а де вона -
Доїдає сало на купі лайна,
Твоя ж хата скраю села...
Cела... Села... Cела... Cела...

Боже, якщо ти є.
Та не дай стікти у Лету*. **
Боже, якщо Ти Бог,
Забери із цього клозету.***

Хліб є і сало є,
Ми п''ємо вино, хоч із сечі воно,
Та все то є суцільне лайно...
Лайно... (x4)

Боже, там угорі
Ти поважно ходиш небом,
Різні "ЮНІ ОРЛИ" навпростець летять до тебе.

Ти там, а ми от тут,
Сидимо на дупі серед лайна,
Твоя ж хата скраю села...
Села... (x4)','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_618348'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_618348','Хата скраю села','Вступ: Gm D# C D# (x4)

Боже, ти нам казав:
"Буде день та буде їжа."
Ти, напевно, збрехав,
Чи не чув про Україну.

Де ти, а де вона -
Доїдає сало на купі лайна,
Твоя ж хата скраю села...
Cела... Села... Cела... Cела...

Боже, якщо ти є.
Та не дай стікти у Лету*. **
Боже, якщо Ти Бог,
Забери із цього клозету.***

Хліб є і сало є,
Ми п''ємо вино, хоч із сечі воно,
Та все то є суцільне лайно...
Лайно... (x4)

Боже, там угорі
Ти поважно ходиш небом,
Різні "ЮНІ ОРЛИ" навпростець летять до тебе.

Ти там, а ми от тут,
Сидимо на дупі серед лайна,
Твоя ж хата скраю села...
Села... (x4)');
DELETE FROM song_links WHERE song_id = 'pisniua_6176144';
DELETE FROM song_versions WHERE song_id = 'pisniua_6176144';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6176144';
DELETE FROM songs WHERE id = 'pisniua_6176144';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6176144','Кажуть, все мине','Музика: Артем Іванов Слова: Артем Іванов','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я не знаю хто
Грішник чи святий
Любов мою украв
Мав би золото -
Щедро б заплатив
Щоб він ії віддав

Кажуть "Все мине"
Але то - слова
Ти навчи мене
Як щастя наше врятувать
Кажуть "Все мине"
Але ти не плач
Пам''ятай мене
А нашу доленьку пробач

Ти моя любовь
Принесла біду
Як грім з ясних небес
Світом правит Бог
Я його знайду
І він віддасть тебе

Кажуть "Все мине"
Але то - слова
Ти навчи мене
Як щастя наше врятувать
Кажуть "Все мине"
Але ти не плач
Пам''ятай мене
А нашу доленьку проба','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6176144'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6176144','Кажуть, все мине','Я не знаю хто
Грішник чи святий
Любов мою украв
Мав би золото -
Щедро б заплатив
Щоб він ії віддав

Кажуть "Все мине"
Але то - слова
Ти навчи мене
Як щастя наше врятувать
Кажуть "Все мине"
Але ти не плач
Пам''ятай мене
А нашу доленьку пробач

Ти моя любовь
Принесла біду
Як грім з ясних небес
Світом правит Бог
Я його знайду
І він віддасть тебе

Кажуть "Все мине"
Але то - слова
Ти навчи мене
Як щастя наше врятувать
Кажуть "Все мине"
Але ти не плач
Пам''ятай мене
А нашу доленьку проба');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6176144_l1','pisniua_6176144','YouTube','https://www.youtube.com/watch?v=1fu7bZz_1YI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6176144_l2','pisniua_6176144','YouTube','https://www.youtube.com/watch?v=m2Nz2yhRflA','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6186042';
DELETE FROM song_versions WHERE song_id = 'pisniua_6186042';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6186042';
DELETE FROM songs WHERE id = 'pisniua_6186042';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6186042','Країно моя','Музика: Ніколо Петраш Слова: В. Іваницький. Виконує: Елеонора Скиданова, Любов Камінська','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Серед хлібів волошки сині,
Зачарували нам серця,
Мабуть тому, що Україні
Ці кольори так до лиця.
Серед хлібів волошки сині,
Добра і миру кольори,
Тільки у нас на Україн,і
Такі чудові прапори.

Приспів:
За сонце, за небо, за спів солов''я,
Ця пісня про тебе, країно моя,
Хай нас обминають печалі й жалі,
Хай квіти буяють на рідній землі.

Два кольори дві половини,
І у Дніпра два береги,
Та не розділять Украіну
На Схід і Захід вороги.
Одна сім''я одна родина,
Карпати, Південь і Донбас.
Одна єдина Україна,
Назавжди об''єднала нас.

Приспів. (2)

Програш.

Приспів. (2)','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6186042'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6186042','Країно моя','Серед хлібів волошки сині,
Зачарували нам серця,
Мабуть тому, що Україні
Ці кольори так до лиця.
Серед хлібів волошки сині,
Добра і миру кольори,
Тільки у нас на Україн,і
Такі чудові прапори.

Приспів:
За сонце, за небо, за спів солов''я,
Ця пісня про тебе, країно моя,
Хай нас обминають печалі й жалі,
Хай квіти буяють на рідній землі.

Два кольори дві половини,
І у Дніпра два береги,
Та не розділять Украіну
На Схід і Захід вороги.
Одна сім''я одна родина,
Карпати, Південь і Донбас.
Одна єдина Україна,
Назавжди об''єднала нас.

Приспів. (2)

Програш.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6186042_l1','pisniua_6186042','YouTube','https://www.youtube.com/watch?v=YLtu-TI8DTE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6186042_l2','pisniua_6186042','YouTube','https://www.youtube.com/watch?v=eboWaqeeB-w','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6186042_l3','pisniua_6186042','www.fono.at.ua','https://www.fono.at.ua','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_6176440';
DELETE FROM song_versions WHERE song_id = 'pisniua_6176440';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6176440';
DELETE FROM songs WHERE id = 'pisniua_6176440';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6176440','Львівське пиво','Музика: Віктор Морозов Слова: Юрій Винничук. Виконує: Віктор Морозов','uk','ukraine_1991',NULL,NULL,'http://www.mo-productions.com/',NULL,'Львівське пиво - то є кляса,
Робить з хлопа супераса.
Вип''єш гальбу - і вже фраєр, хо-хо!
А музичка грає штаєр.

На Погулянці у Львові колись
Три файних хлопа на пиві зійшлись.
Що з цього вийшло, лишень подивись -
Хлопці створили театр "Не журись!"

Бо львівське пиво...

Навіть преславний Данило король
Пінку здував і робив "голь-голь-голь..."
Рано і ввечір пиво він пив,
Німців, як щурів, лупив,

Бо львівське пиво...

Як би я хтів, щоби Полтва гнила
Пінистим пивом по Львову текла.
Може б вона не смерділа тоді,
Й раки у пиві жили б, як в воді,

Бо львівське пиво - то є кляса,
Робить з хлопа супераса.
Вип''єш гальбу - і вже фраєр, хо-хо!
А музичка грає штаєр','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6176440'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6176440','Львівське пиво','Львівське пиво - то є кляса,
Робить з хлопа супераса.
Вип''єш гальбу - і вже фраєр, хо-хо!
А музичка грає штаєр.

На Погулянці у Львові колись
Три файних хлопа на пиві зійшлись.
Що з цього вийшло, лишень подивись -
Хлопці створили театр "Не журись!"

Бо львівське пиво...

Навіть преславний Данило король
Пінку здував і робив "голь-голь-голь..."
Рано і ввечір пиво він пив,
Німців, як щурів, лупив,

Бо львівське пиво...

Як би я хтів, щоби Полтва гнила
Пінистим пивом по Львову текла.
Може б вона не смерділа тоді,
Й раки у пиві жили б, як в воді,

Бо львівське пиво - то є кляса,
Робить з хлопа супераса.
Вип''єш гальбу - і вже фраєр, хо-хо!
А музичка грає штаєр');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6176440_l1','pisniua_6176440','YouTube','https://www.youtube.com/watch?v=c774BjsMGDM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6184353';
DELETE FROM song_versions WHERE song_id = 'pisniua_6184353';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6184353';
DELETE FROM songs WHERE id = 'pisniua_6184353';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6184353','Скіфи','(Дивнеє плем''я). Музика: Олександр Аргат Слова: Олександр Аргат. Виконує: Олександр Аргат','uk','ukraine_1991',NULL,NULL,'із записок київських пластунів',NULL,'Дивнеє плем''я на березі Понту
Не зрозуміти його нам до сконту.
Люди-легенди, варвари з міфів,
Дивнеє плем''я, котре зветься скіфи.

Воїни наші таке повідають
Сотнями скіфів у битвах вбивають.
Топлячи села у варварській крові,
А із степів ідуть тисячі нові.

Дужі і сильні мов тури погани,
Але раби із них дуже погані.
Смерть вибирають, гублять таланти
Дивнеє плем''я, котре зветься анти.

Віру дідів на грошву не міняють,
Храми богів від чужинців ховають,
Так повелося від батька й до сина
В дивнім народі, що зветься русини.

Ворог трима на воді їх і хлібі,
Вони ж юродиві ще кажуть "спасіба".
В шинку свої мідяки пропивають,
П''яні чужинської пісні горлають.
Можна орать ними наче волами
Ницеє плем''я, що зветься хохлами.

Але радіти ми ще не будем
Вісті лихі носять наші іуди,
Що завелися між ними чужинці,
Дивні якісь на ім''я українці.','[''pisni.org.ua'', ''cat:bardivski'', ''cat:philosophic'', ''cat:suspilno-politychni'', ''Бардівські пісні'', ''Філософські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6184353'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6184353','Скіфи','Дивнеє плем''я на березі Понту
Не зрозуміти його нам до сконту.
Люди-легенди, варвари з міфів,
Дивнеє плем''я, котре зветься скіфи.

Воїни наші таке повідають
Сотнями скіфів у битвах вбивають.
Топлячи села у варварській крові,
А із степів ідуть тисячі нові.

Дужі і сильні мов тури погани,
Але раби із них дуже погані.
Смерть вибирають, гублять таланти
Дивнеє плем''я, котре зветься анти.

Віру дідів на грошву не міняють,
Храми богів від чужинців ховають,
Так повелося від батька й до сина
В дивнім народі, що зветься русини.

Ворог трима на воді їх і хлібі,
Вони ж юродиві ще кажуть "спасіба".
В шинку свої мідяки пропивають,
П''яні чужинської пісні горлають.
Можна орать ними наче волами
Ницеє плем''я, що зветься хохлами.

Але радіти ми ще не будем
Вісті лихі носять наші іуди,
Що завелися між ними чужинці,
Дивні якісь на ім''я українці.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6184353_l1','pisniua_6184353','YouTube','https://www.youtube.com/watch?v=_zp0CXRhf1s','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6184353_l2','pisniua_6184353','YouTube','https://www.youtube.com/watch?v=2rjNRYnlaxM','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6184353_l3','pisniua_6184353','YouTube','https://www.youtube.com/watch?v=eTsnO1ZF2ME','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6184353_l4','pisniua_6184353','YouTube','https://www.youtube.com/watch?v=p41QOrif_Ak','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6184353_l5','pisniua_6184353','YouTube','https://www.youtube.com/watch?v=Xe5ilJ-lkVQ','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6184353_l6','pisniua_6184353','YouTube','https://www.youtube.com/watch?v=B7ecOsLwmKk','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6184353_l7','pisniua_6184353','YouTube','https://www.youtube.com/watch?v=LLjLgoShAj0','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6184353_l8','pisniua_6184353','YouTube','https://www.youtube.com/watch?v=eyE2K5ivYpE','video',NULL,8);
DELETE FROM song_links WHERE song_id = 'pisniua_6184399';
DELETE FROM song_versions WHERE song_id = 'pisniua_6184399';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6184399';
DELETE FROM songs WHERE id = 'pisniua_6184399';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6184399','Ми кривого танцю йдемо','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256 с.',NULL,'Ми кривого танцю йдемо,
Кінця йому не знайдемо.

Ані кінця, ані ладу -
Не пізнаєш, котра ззаду.

Треба його та й виводити,
Кінець йому та й знаходити.
* * *
Ой, вінку мій, вінку,
Та й хрещатий барвінку.
Що я тебе сплела
Та й учора ізвечора.

Та й учора ізвечора,
Та й темненької ночі.
Та й темненької ночі,
Ще й при ясній свічі.

Повісила на кілочку,
На шовковім шнурочку.
А моя мати взнала
Та й миленькому дала.

Ой, коли б я була знала,
Була б його краще вбрала!
А моя мати взнала
Та й нелюбові дала.
(Ой, коли б я була знала,
Була б його розірвала!)
* * *
Ой, скакали дикі кози
Та й попід зелені лози.
То в гору, то в долину,
То в рожу, то в калину.

А за ними козенята -
Поламали ноженята.
Якби кізка не скакала,
То б ніженьки не зламала.
* * *
А ви, хлопці, стидайтеся,
Гаївочки не бавтеся.
Ви до того та й не зросли,
Лиш до ціпа та до коси.

Лиш косити, молотити
Та сліпі діди водити.
То в гору, то в долину,
То в рожу, то в калину!','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6184399'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6184399','Ми кривого танцю йдемо','Ми кривого танцю йдемо,
Кінця йому не знайдемо.

Ані кінця, ані ладу -
Не пізнаєш, котра ззаду.

Треба його та й виводити,
Кінець йому та й знаходити.
* * *
Ой, вінку мій, вінку,
Та й хрещатий барвінку.
Що я тебе сплела
Та й учора ізвечора.

Та й учора ізвечора,
Та й темненької ночі.
Та й темненької ночі,
Ще й при ясній свічі.

Повісила на кілочку,
На шовковім шнурочку.
А моя мати взнала
Та й миленькому дала.

Ой, коли б я була знала,
Була б його краще вбрала!
А моя мати взнала
Та й нелюбові дала.
(Ой, коли б я була знала,
Була б його розірвала!)
* * *
Ой, скакали дикі кози
Та й попід зелені лози.
То в гору, то в долину,
То в рожу, то в калину.

А за ними козенята -
Поламали ноженята.
Якби кізка не скакала,
То б ніженьки не зламала.
* * *
А ви, хлопці, стидайтеся,
Гаївочки не бавтеся.
Ви до того та й не зросли,
Лиш до ціпа та до коси.

Лиш косити, молотити
Та сліпі діди водити.
То в гору, то в долину,
То в рожу, то в калину!');
DELETE FROM song_links WHERE song_id = 'pisniua_6186644';
DELETE FROM song_versions WHERE song_id = 'pisniua_6186644';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6186644';
DELETE FROM songs WHERE id = 'pisniua_6186644';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6186644','Ой, ходить сон','Українська народна пісня. Виконує: Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, ходить сон коло вікон,
А дрімота - коло плота.

Питається сон дрімоти:
Де будемо ночувати?

Де дитинка малесенька,
Хатиночка теплесенька.

Ой, коло сон по долині,
Мати кличе до дитини:

Ой, соночку-соколоньку,
Прийди до нас в колисоньку,
Да приспи нам дитиноньку.','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6186644'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6186644','Ой, ходить сон','Ой, ходить сон коло вікон,
А дрімота - коло плота.

Питається сон дрімоти:
Де будемо ночувати?

Де дитинка малесенька,
Хатиночка теплесенька.

Ой, коло сон по долині,
Мати кличе до дитини:

Ой, соночку-соколоньку,
Прийди до нас в колисоньку,
Да приспи нам дитиноньку.');
DELETE FROM song_links WHERE song_id = 'pisniua_6184991';
DELETE FROM song_versions WHERE song_id = 'pisniua_6184991';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6184991';
DELETE FROM songs WHERE id = 'pisniua_6184991';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6184991','Ой була в мене мати-мачоха','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256 с.',NULL,'Ой була в мене
Мати-мачоха.      | (2)

Послала ж мене
З ситом по воду.  | (2)

Що я й наберу -
Вода виллється.   | (2)

Мати-мачоха
Усе сердиться.    | (2)

Брала я воду
Аж до ночейки.    | (2)

Прийшли до мене
Штири вовчики.    | (2)

Узяли ж мене
Та й під бочейки. | (2)

Понесли ж мене
В темні корчики.  | (2)

Почали мною
Та й ділитися.    | (2)

Прилетів сокіл,
Став дивитися.    | (2)

Ой соколику,
Ти ж мій братіку! | (2)

Умочи крильце
У моєй кровце.    | (2)

Полети ж бо ти
Аж додомойку.     | (2)

Розкажи про все
Мому батейку.     | (2)

А мій батейко
Постольці плете.  | (2)

За слізойками
Та й не доплете.  | (2)

Мати-мачоха
Полотно ткала.    | (2)

За радощами
Нитки порвала.    | (2)','[''pisni.org.ua'', ''cat:zeleni-svyata'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6184991'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6184991','Ой була в мене мати-мачоха','Ой була в мене
Мати-мачоха.      | (2)

Послала ж мене
З ситом по воду.  | (2)

Що я й наберу -
Вода виллється.   | (2)

Мати-мачоха
Усе сердиться.    | (2)

Брала я воду
Аж до ночейки.    | (2)

Прийшли до мене
Штири вовчики.    | (2)

Узяли ж мене
Та й під бочейки. | (2)

Понесли ж мене
В темні корчики.  | (2)

Почали мною
Та й ділитися.    | (2)

Прилетів сокіл,
Став дивитися.    | (2)

Ой соколику,
Ти ж мій братіку! | (2)

Умочи крильце
У моєй кровце.    | (2)

Полети ж бо ти
Аж додомойку.     | (2)

Розкажи про все
Мому батейку.     | (2)

А мій батейко
Постольці плете.  | (2)

За слізойками
Та й не доплете.  | (2)

Мати-мачоха
Полотно ткала.    | (2)

За радощами
Нитки порвала.    | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_6189644';
DELETE FROM song_versions WHERE song_id = 'pisniua_6189644';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6189644';
DELETE FROM songs WHERE id = 'pisniua_6189644';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6189644','Баю, бай','Музика: Василь Верховинець (Костів) Слова: Яків Щоголів','uk','ukraine_before_1917',NULL,NULL,'В. Верховинець. Весняночка. Ігри з піснями для дітей дошкільного віку та молодших школярів. Видання четверте, перероблене і доповнене. - Київ: Музична Україна, 1979. - 339 с.',NULL,'Мати сина колихала,
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
DELETE FROM song_links WHERE song_id = 'pisniua_6185252';
DELETE FROM song_versions WHERE song_id = 'pisniua_6185252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6185252';
DELETE FROM songs WHERE id = 'pisniua_6185252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6185252','А вже сонце котиться','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256',NULL,'А вже сонце котиться,
Нам додому хочеться.
Господарю наш,
Нам додому час! Гу!

А вже сонце низько,
Додому неблизько.
Господарю наш,
Нам додому час! Гу!

А вже сонце на зорі,
Кусаються комарі.
Господарю наш,
Нам додому час! Гу!

А вже сонця трошки,
Кусаються мошки.
Господарю наш,
Нам додому час! Гу!

А вже сонце над дубком,
Нам додому холодком.
Господарю наш,
Нам додому час! Гу!

А вже сонце кружком,
Нам додому лужком.
Господарю наш,
Нам додому час! Гу!

Лужком-бережком,
Жовтеньким піском!
Господарю наш,
Нам додому час! Гу!','[''pisni.org.ua'', ''cat:obzhynkovi'', ''Обжинкові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6185252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6185252','А вже сонце котиться','А вже сонце котиться,
Нам додому хочеться.
Господарю наш,
Нам додому час! Гу!

А вже сонце низько,
Додому неблизько.
Господарю наш,
Нам додому час! Гу!

А вже сонце на зорі,
Кусаються комарі.
Господарю наш,
Нам додому час! Гу!

А вже сонця трошки,
Кусаються мошки.
Господарю наш,
Нам додому час! Гу!

А вже сонце над дубком,
Нам додому холодком.
Господарю наш,
Нам додому час! Гу!

А вже сонце кружком,
Нам додому лужком.
Господарю наш,
Нам додому час! Гу!

Лужком-бережком,
Жовтеньким піском!
Господарю наш,
Нам додому час! Гу!');
DELETE FROM song_links WHERE song_id = 'pisniua_6189042';
DELETE FROM song_versions WHERE song_id = 'pisniua_6189042';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6189042';
DELETE FROM songs WHERE id = 'pisniua_6189042';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6189042','Батьківська хата','Виконує: Берники','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Батьківська хата дітьми багата була...
Повиростали, мужніми стали сповна,
І розійшлися, і розлетілись усі
По неосяжній далекій землі.

Приспів:
З рідної хати
Батько і мати
Своїх проводжають дітей
В далеку дорогу
На щастя на долю
Гніздо будувати своє!

Батьківська хата хоче сказати мені,
Як було добре жити в отцівській сім''ї,
Де відчували ласку, любов і тепло,
Та все минуло і все відійшло...

Приспів.

Батьківська хата буде чекати завжди,
Щоб навіщали дочки її і сини,
Щоб повертали в ту неповторну весну,
Де залишили спокій і красу.

Приспів.

Батьківська хата дітьми багата була...','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6189042'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6189042','Батьківська хата','Батьківська хата дітьми багата була...
Повиростали, мужніми стали сповна,
І розійшлися, і розлетілись усі
По неосяжній далекій землі.

Приспів:
З рідної хати
Батько і мати
Своїх проводжають дітей
В далеку дорогу
На щастя на долю
Гніздо будувати своє!

Батьківська хата хоче сказати мені,
Як було добре жити в отцівській сім''ї,
Де відчували ласку, любов і тепло,
Та все минуло і все відійшло...

Приспів.

Батьківська хата буде чекати завжди,
Щоб навіщали дочки її і сини,
Щоб повертали в ту неповторну весну,
Де залишили спокій і красу.

Приспів.

Батьківська хата дітьми багата була...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6189042_l1','pisniua_6189042','YouTube','https://www.youtube.com/watch?v=-RhFGrSgB3U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6192797';
DELETE FROM song_versions WHERE song_id = 'pisniua_6192797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6192797';
DELETE FROM songs WHERE id = 'pisniua_6192797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6192797','Вже весна воскресла, трави зеленяли...','Українська народна пісня','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,NULL,NULL,'1. Вже весна воскресла, трави зеленяли,
Вже на Закарпаттю могили зчорняли.       2

2. Вже на Закарпаттю могили зчорняли,
Там лежат герої, що за волю впали!          2

3. Там лежат герої, що за волю впали,
Не оден заплакав гіркими сльозами!          2

4. Били вни ся, били, поки силу мали,
Поки Закарпаття мадяри ни взяли!            2

5. Били вни ся, били, не було ріжниці:
Жінки брали коси, мужчини рушниці.          2

6. Вкраїнські дівчата рани завивали,
Тих січових стрільців в шпиталь відсилали!  2

7. В шпиталь відсилали, в шпиталю лічили,
Тих січових стрільців, що за волю вбили!    2    12_2008lilia_seans04_Вже весна воскресла, трави зеленяли.mp3','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6192797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6192797','Вже весна воскресла, трави зеленяли...','1. Вже весна воскресла, трави зеленяли,
Вже на Закарпаттю могили зчорняли.       2

2. Вже на Закарпаттю могили зчорняли,
Там лежат герої, що за волю впали!          2

3. Там лежат герої, що за волю впали,
Не оден заплакав гіркими сльозами!          2

4. Били вни ся, били, поки силу мали,
Поки Закарпаття мадяри ни взяли!            2

5. Били вни ся, били, не було ріжниці:
Жінки брали коси, мужчини рушниці.          2

6. Вкраїнські дівчата рани завивали,
Тих січових стрільців в шпиталь відсилали!  2

7. В шпиталь відсилали, в шпиталю лічили,
Тих січових стрільців, що за волю вбили!    2    12_2008lilia_seans04_Вже весна воскресла, трави зеленяли.mp3');
DELETE FROM song_links WHERE song_id = 'pisniua_6192151';
DELETE FROM song_versions WHERE song_id = 'pisniua_6192151';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6192151';
DELETE FROM songs WHERE id = 'pisniua_6192151';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6192151','Тане вечір, ніч близенько','Музика: Алла Мігай Слова: Алла Мігай. Виконує: Алла Мігай','uk','ukraine_before_1917',NULL,NULL,'http://need-help.com.ua/kolyibelnyie/koliskova-vechirnya-kazka.html',NULL,'Тане вечір, ніч близенько.
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
DELETE FROM song_links WHERE song_id = 'pisniua_6188271';
DELETE FROM song_versions WHERE song_id = 'pisniua_6188271';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6188271';
DELETE FROM songs WHERE id = 'pisniua_6188271';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6188271','Про дружбу і друзів','Музика: Геннадій Желуденко Слова: Геннадій Желуденко. Виконує: Геннадій Желуденко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Коли у душі із собою незлагода,
І серце болить, і в житті не щастить -
До друзів іду за підтримкою-радою,
Щоб з ними знегоди свої розділить...
А друзі назустріч самі йдуть, не гаючись,
Одразу ж, не різнячи днів від ночей,
Приходять на поміч, запрошень і просьб не чекаючи,
Своє підставляють надійне плече!..
І вже відступають печалі і відчаї,
І вже мені доля всміхається знов!
Тому-то я дружбу сильніше любові звеличую,
Що дружба вірніша в стократ за любов!..

Коли у душі мир панує і злагода,
На серці спокійно, в душі благодать -
До друзів іду, щоб їх також порадувать,
Про успіхи й злети свої розказать!
І друзі радіють, сердечно, без зависті,
Неначе це їм так везе і щастить!
І радість на стільки помножиться з ними й добавиться,
Скількох справжніх друзів про неї звістить!..
Брехня, ніби друзі взнаються у бідах лиш,
Або ж застаріло прислів"я оте...
Вони ще взнаються і в тім, чи до дна й незавидливо
Зі мною за мене їм радісно теж!..

Свої шлях і доля, звичайно, у кожного,
І хрест також свій кожен має нести...
Та друзі даються нам волею Божою
Полегшить шляхи ті, і долі, й хрести...
І, певно, багато у нас є несхожого,
І різні характери, звички, смаки,
Та в дружбі усе те забуть і відкинуть ми можемо -
Тому й пронесли ми її крізь роки!
За те, що вас доля мені напророчила,
Я їй, мої друзі, "спасибі" кажу!
А ще вас прошу я, благаю, молю, якщо хочете -
Заждіте іти за останню межу!..

Коли у житті моїм благо і злагода,
Або ж чорна смуга і не таланить -
До друзів іду я, про друзів хороших я згадую,
Щоб щастя - помножить, біду - розділить,
Щоб все, що я маю, із ними розділить...','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6188271'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6188271','Про дружбу і друзів','Коли у душі із собою незлагода,
І серце болить, і в житті не щастить -
До друзів іду за підтримкою-радою,
Щоб з ними знегоди свої розділить...
А друзі назустріч самі йдуть, не гаючись,
Одразу ж, не різнячи днів від ночей,
Приходять на поміч, запрошень і просьб не чекаючи,
Своє підставляють надійне плече!..
І вже відступають печалі і відчаї,
І вже мені доля всміхається знов!
Тому-то я дружбу сильніше любові звеличую,
Що дружба вірніша в стократ за любов!..

Коли у душі мир панує і злагода,
На серці спокійно, в душі благодать -
До друзів іду, щоб їх також порадувать,
Про успіхи й злети свої розказать!
І друзі радіють, сердечно, без зависті,
Неначе це їм так везе і щастить!
І радість на стільки помножиться з ними й добавиться,
Скількох справжніх друзів про неї звістить!..
Брехня, ніби друзі взнаються у бідах лиш,
Або ж застаріло прислів"я оте...
Вони ще взнаються і в тім, чи до дна й незавидливо
Зі мною за мене їм радісно теж!..

Свої шлях і доля, звичайно, у кожного,
І хрест також свій кожен має нести...
Та друзі даються нам волею Божою
Полегшить шляхи ті, і долі, й хрести...
І, певно, багато у нас є несхожого,
І різні характери, звички, смаки,
Та в дружбі усе те забуть і відкинуть ми можемо -
Тому й пронесли ми її крізь роки!
За те, що вас доля мені напророчила,
Я їй, мої друзі, "спасибі" кажу!
А ще вас прошу я, благаю, молю, якщо хочете -
Заждіте іти за останню межу!..

Коли у житті моїм благо і злагода,
Або ж чорна смуга і не таланить -
До друзів іду я, про друзів хороших я згадую,
Щоб щастя - помножить, біду - розділить,
Щоб все, що я маю, із ними розділить...');
DELETE FROM song_links WHERE song_id = 'pisniua_619050';
DELETE FROM song_versions WHERE song_id = 'pisniua_619050';
DELETE FROM songs_fts WHERE song_id = 'pisniua_619050';
DELETE FROM songs WHERE id = 'pisniua_619050';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_619050','Кобзар *','Музика: В''ячеслав Орел Слова: В''ячеслав Орел','uk','ukraine_before_1917',NULL,NULL,'Від автора','Перший виконавець - Герман Орел. Усі права захищено. Звертатися до автора.','Співа кобзар своїх пісень, а люди мимо йдуть,
У клопоті своїм його не помічають.
І котиться скупа сльоза з невидячих очей -
Він згадує про те, про що вони не дбають.

Приспів:
Співа кобзар своїх пісень
Про віру та любов, які до серця линуть,
І вільний вітер ген несе
Відлуння сивих мрій по неньці-Україні.

Хтось свій відкриє гаманець - надвечір буде хліб,
Хтось пройде, наче кобзаря і не існує,
А хтось і посміхнеться над старим, і скривдить його спів,
Історії тяжкої долі не вшанує...

Приспів:
А він співа своїх пісень
Про віру та любов, які до серця линуть,
І вільний вітер ген несе
Відлуння сивих мрій по неньці-Україні.

І лиш один хлопчина в стороні стоїть і слуха все,
про що дідусь безпомічний співає,
І бачить хлопець січові шатри і ватри полонин,
Підходить до старця і в запалі гукає:

Приспів:
- Співай, кобзар, своїх пісень
Про віру та любов, які до серця линуть,
Хай вільний вітер рознесе
Відлуння сивих мрій по неньці-Україні!','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_619050'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_619050','Кобзар *','Співа кобзар своїх пісень, а люди мимо йдуть,
У клопоті своїм його не помічають.
І котиться скупа сльоза з невидячих очей -
Він згадує про те, про що вони не дбають.

Приспів:
Співа кобзар своїх пісень
Про віру та любов, які до серця линуть,
І вільний вітер ген несе
Відлуння сивих мрій по неньці-Україні.

Хтось свій відкриє гаманець - надвечір буде хліб,
Хтось пройде, наче кобзаря і не існує,
А хтось і посміхнеться над старим, і скривдить його спів,
Історії тяжкої долі не вшанує...

Приспів:
А він співа своїх пісень
Про віру та любов, які до серця линуть,
І вільний вітер ген несе
Відлуння сивих мрій по неньці-Україні.

І лиш один хлопчина в стороні стоїть і слуха все,
про що дідусь безпомічний співає,
І бачить хлопець січові шатри і ватри полонин,
Підходить до старця і в запалі гукає:

Приспів:
- Співай, кобзар, своїх пісень
Про віру та любов, які до серця линуть,
Хай вільний вітер рознесе
Відлуння сивих мрій по неньці-Україні!');
DELETE FROM song_links WHERE song_id = 'pisniua_6193075';
DELETE FROM song_versions WHERE song_id = 'pisniua_6193075';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6193075';
DELETE FROM songs WHERE id = 'pisniua_6193075';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6193075','Новий рік','Музика: Валентин Манякін Слова: Світлана Богдан. Виконує: Любов Фогель','uk','ukraine_1991',NULL,NULL,'http://library.ukrcom.kherson.ua/activities/winter/winter_luba.htm',NULL,'І.
Крокує містом Новий рік,
Тихо вступає на поріг
Чаклунка-казка знов.
У новорічну дивну ніч,
Там, де зустрілись віч-на віч
Надія та любов.

Приспів:
Новий рік, Новий рік!
Коханню двері відчиняй.
Новий рік, Новий рік,
Серця ти наші поєднай.
Повірте, люди, вам щастя буде
Коли настане Новий рік.

ІІ.
Сховай, шановний рік старий,
Мішок дарів порожній свій,
І тугу, і печаль.
Ми зустрічаєм Новий рік,
В цю мить лунає сміх
Дзвінкий, немов кришталь.

Приспів. (2)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6193075'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6193075','Новий рік','І.
Крокує містом Новий рік,
Тихо вступає на поріг
Чаклунка-казка знов.
У новорічну дивну ніч,
Там, де зустрілись віч-на віч
Надія та любов.

Приспів:
Новий рік, Новий рік!
Коханню двері відчиняй.
Новий рік, Новий рік,
Серця ти наші поєднай.
Повірте, люди, вам щастя буде
Коли настане Новий рік.

ІІ.
Сховай, шановний рік старий,
Мішок дарів порожній свій,
І тугу, і печаль.
Ми зустрічаєм Новий рік,
В цю мить лунає сміх
Дзвінкий, немов кришталь.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_619374';
DELETE FROM song_versions WHERE song_id = 'pisniua_619374';
DELETE FROM songs_fts WHERE song_id = 'pisniua_619374';
DELETE FROM songs WHERE id = 'pisniua_619374';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_619374','Так мало тут тебе','Слова: Валерій Харчишин. Виконує: Друга ріка','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Я, міг бути твоїм клоуном
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
DELETE FROM song_links WHERE song_id = 'pisniua_6192491';
DELETE FROM song_versions WHERE song_id = 'pisniua_6192491';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6192491';
DELETE FROM songs WHERE id = 'pisniua_6192491';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6192491','Ой мамцю моя','Українська народна пісня. Виконує: Волинський народний хор','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой мамцю моя, чоловік мене бив.
Прив''язав билинкою, побив соломинкою, мене чуть не вбив.

2. А я з того жалю, не вечеряла
Устала раненько, умилась біленько, та й поснідала.

3. Із''їла вола, та ще й пів барана
Горщечок кашечки, ще й чотири качечки, бо голодна була.

4. Та ще й цебер борщу, а я їсти хочу
Сімсот поросят, дев''яносто п''ять гусят, довольна була.

5. Тай гуляти пішла, коника вела
За гриву держала, на хлопців моргала, щей підморгувала','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6192491'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6192491','Ой мамцю моя','Ой мамцю моя, чоловік мене бив.
Прив''язав билинкою, побив соломинкою, мене чуть не вбив.

2. А я з того жалю, не вечеряла
Устала раненько, умилась біленько, та й поснідала.

3. Із''їла вола, та ще й пів барана
Горщечок кашечки, ще й чотири качечки, бо голодна була.

4. Та ще й цебер борщу, а я їсти хочу
Сімсот поросят, дев''яносто п''ять гусят, довольна була.

5. Тай гуляти пішла, коника вела
За гриву держала, на хлопців моргала, щей підморгувала');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6192491_l1','pisniua_6192491','YouTube','https://www.youtube.com/watch?v=x5xcFyX-IeI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_618454';
DELETE FROM song_versions WHERE song_id = 'pisniua_618454';
DELETE FROM songs_fts WHERE song_id = 'pisniua_618454';
DELETE FROM songs WHERE id = 'pisniua_618454';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_618454','Та була в Бабусі Курочка Рябенька','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,'Примітки: (1) Гаїлка-Великдень: Староукраїнське свято Відродження Світа (Бабуся - Курочка Ряба - Яєчка - Сало) (2) Порівняти - про сало з жартівливої колядки: "Надворі чорна хмара" Висловлювання: Святість Землі, Різдво та Відродження Світа. Від Воведення до Благовіщення не можна копати землі-глини: се очевидна пошана для грядучого Свята сотворення Землі як частини Сотворення Світа. Спрямування до Благовіщення, лучення грядучого Різдва з святом Благовіщення, яке припадає на день 25 березня н. с., має без сумніву основу в традиції полудневого Сходу, — поширюваній колишніми єгипетськими астрольоґами, — про майбутню і все сподівану віднову Світа внаслідок величавих астрономічних сузір''їв у часі березневого зрівняння дня і ночи (23/ІІІ). Оце спрямування є одним з доповняючих доказів на те, що провідною святочною ідеєю Різдва є народження Світа, бо обі ідеї Різдва і Відродження дуже собі близькі. Ідею Відродження Світа містить у собі і Староукраїнське свято Гаїлки, і Великдень, що припадає на провесні після березневого рівностояння; а Різдво, Богоявління (Щедрий Вечер) і Великдень — це Свята, які Український нарід все лучить ідеольоґічно і на їх взаємний зв''язок покликується часто в Колядках. Хто жиє з Українцями в близьких взаєминах, той знає, що по Українських селах стрічаються досі уперті християнські недовірки, звичайно старі люди, які ходять до Церкви лише два рази до року: на Різдво і на Йордан, або: на Різдво і на Великдень. Кожний з цих святочних християнських днів був передхристиянським святом Полудня: Різдво було святом народження Світа, а Йордан (Епіфанія) колись тотожним святом, а опісля — святом обнови року; а Великдень був колись єгипетським святочним днем майбутнього відродження Світа. (Ксенофонт Сосенко. Культурно-історична постать Староукраїнськиx свят Різдва і Щедрого Вечора. Львів, 1928. – Київ, СІНТО, 1994)','Та була в Бабусі Курочка Рябенька (1)
Приспів за зразком: Гей (голо-лоло) Курочка Рябенька

Ой то Вона знесла Сорок Пар Яєчок
Та прийшло до неї Сорок Пар Волочівничок
Усім подавала єдному й не стало
Їдному не стало давай Бабо сало (2)
Подставляй драбинку лізь по соломинку    Мелодія для 1 голосу','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_618454'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_618454','Та була в Бабусі Курочка Рябенька','Та була в Бабусі Курочка Рябенька (1)
Приспів за зразком: Гей (голо-лоло) Курочка Рябенька

Ой то Вона знесла Сорок Пар Яєчок
Та прийшло до неї Сорок Пар Волочівничок
Усім подавала єдному й не стало
Їдному не стало давай Бабо сало (2)
Подставляй драбинку лізь по соломинку    Мелодія для 1 голосу');
DELETE FROM song_links WHERE song_id = 'pisniua_6186757';
DELETE FROM song_versions WHERE song_id = 'pisniua_6186757';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6186757';
DELETE FROM songs WHERE id = 'pisniua_6186757';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6186757','Стольний град Київ','Музика: Віктор Захарченко, Євген Пухлянко Слова: Володимир Матвієнко. Виконує: Кубанський Козачий Хор, Василь Волощук','uk','ukraine_1991',NULL,NULL,'http://www.obriy.pib.com.ua',NULL,'Місто величне - стольний град Київ,
Сяє в обличчя сонце надії.
Києве рідний, саде квітучий,
Здалеку видно Київські кручі.

Приспів:
Золото сонця сяє в блакиті,
Пісня про Київ, наче молитва.
Краще на світі - київське небо -
Де б не бував я - лину до тебе!

Друзів стрічає з повною честю,
Любий Хрещатик, храми Печерська,
Слово Тараса, дзвони Софії,
Ви є окраса гордої мрії.

Приспів.

Ти променистий в будні і свята,
Лине над містом пісня крилата.
Ти - за свободу, Ти - за родину.
Гордість народу, честь України.

Приспів.','[''pisni.org.ua'', ''cat:kyyiv'', ''Пісні про Київ'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6186757'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6186757','Стольний град Київ','Місто величне - стольний град Київ,
Сяє в обличчя сонце надії.
Києве рідний, саде квітучий,
Здалеку видно Київські кручі.

Приспів:
Золото сонця сяє в блакиті,
Пісня про Київ, наче молитва.
Краще на світі - київське небо -
Де б не бував я - лину до тебе!

Друзів стрічає з повною честю,
Любий Хрещатик, храми Печерська,
Слово Тараса, дзвони Софії,
Ви є окраса гордої мрії.

Приспів.

Ти променистий в будні і свята,
Лине над містом пісня крилата.
Ти - за свободу, Ти - за родину.
Гордість народу, честь України.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6191144';
DELETE FROM song_versions WHERE song_id = 'pisniua_6191144';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6191144';
DELETE FROM songs WHERE id = 'pisniua_6191144';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6191144','Веселкова пісня','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'У серцях дитячих пісня народилась
Всім подарувала крила молоді
Дощ несе водою, пісня заіскрилась
Золотистим світлом дивним на весні.

І взлетіла пісня, високо над світом
Вітер свою силу дав їй у політ
І покрила землю веселковим світлом
Щоб почав співати з нами цілий світ.

Веселкова пісня, пісня веселкова
У серцях лунає, л''ється через край
Щоб усе раділо, весело довкола
З нами нашу пісню щиро заспівай!

Веселкова пісня, пісня веселкова
У серцях лунає, л''ється через край
Щоб усе раділо, весело довкола
З нами нашу пісню щиро заспівай!','[''pisni.org.ua'', ''cat:zahalni-cinnosti'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6191144'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6191144','Веселкова пісня','У серцях дитячих пісня народилась
Всім подарувала крила молоді
Дощ несе водою, пісня заіскрилась
Золотистим світлом дивним на весні.

І взлетіла пісня, високо над світом
Вітер свою силу дав їй у політ
І покрила землю веселковим світлом
Щоб почав співати з нами цілий світ.

Веселкова пісня, пісня веселкова
У серцях лунає, л''ється через край
Щоб усе раділо, весело довкола
З нами нашу пісню щиро заспівай!

Веселкова пісня, пісня веселкова
У серцях лунає, л''ється через край
Щоб усе раділо, весело довкола
З нами нашу пісню щиро заспівай!');
DELETE FROM song_links WHERE song_id = 'pisniua_619093';
DELETE FROM song_versions WHERE song_id = 'pisniua_619093';
DELETE FROM songs_fts WHERE song_id = 'pisniua_619093';
DELETE FROM songs WHERE id = 'pisniua_619093';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_619093','Ой ти, соловейку','Українська народна пісня. Виконує: Вогневир','uk','ukraine_before_1917',NULL,NULL,'Гурт "Вогневир"',NULL,'Ой ти, соловейку,
Ти ранній пташку,
Ой чого ти так рано
Із вир’їчка вийшов?

"Не сам же я вийшов,
Дажбог мене вислав
З правої ручейки,
І ключики видав.

З правої ручейки
Літо відмикати,
З лівої ручейки
Зиму замикати."','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_619093'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_619093','Ой ти, соловейку','Ой ти, соловейку,
Ти ранній пташку,
Ой чого ти так рано
Із вир’їчка вийшов?

"Не сам же я вийшов,
Дажбог мене вислав
З правої ручейки,
І ключики видав.

З правої ручейки
Літо відмикати,
З лівої ручейки
Зиму замикати."');
DELETE FROM song_links WHERE song_id = 'pisniua_6197271';
DELETE FROM song_versions WHERE song_id = 'pisniua_6197271';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6197271';
DELETE FROM songs WHERE id = 'pisniua_6197271';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6197271','Колиха калина свої віти','Музика: Оксана Лиховид Слова: Люба Дмитришин-Часто','uk','ukraine_1991',NULL,NULL,'авторський диск Оксани Лиховид','Люба Дмиришин-Часто -українська поетеса і журналістка,авторка кількох поетичних збірок, жила і працювала в Закарпатті, більш як 20 років живе і працює у США разом з чоловіком Петром Часто - відомим письменником і журналістом.','1. Колиха калина свої віти,
а на них духмяні білі квіти.
У пучок збира вкраїнську долю,
що згубилась на чужому полі.

Приспів:
Калино, калино, моя незрадливая пісне,
до мене здалека промов тихе слово провісне,
промов, наче мати кохана, єдина -
бо мамине серце і мамина доля
навіки, навіки в червоній калині.

2.Колиха калина мою мрію,
що її одвіку я лелію -
стати на поріг своєї хати,
тата й маму з поля виглядати.

Приспів:
Калино, калино, моя незрадливая пісне,
до мене здалека промов тихе слово провісне,
промов, наче мати кохана, єдина,
бо мамина врода і мамина ніжність
навіки, навіки в червоній калині.

3.Колиха калина терпкі сльози,
що не стигнуть навіть на морозі.
Я прийду до тебе, моя нене,
коли стане полечко зелене.

Приспів:
Калино, калино, моя незрадливая пісне,
до мене здалека промов тихе слово провісне,
промов наче мати кохана, єдина,
бо мамина сила і мамина пісня
навіки, навіки в червоній калині','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6197271'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6197271','Колиха калина свої віти','1. Колиха калина свої віти,
а на них духмяні білі квіти.
У пучок збира вкраїнську долю,
що згубилась на чужому полі.

Приспів:
Калино, калино, моя незрадливая пісне,
до мене здалека промов тихе слово провісне,
промов, наче мати кохана, єдина -
бо мамине серце і мамина доля
навіки, навіки в червоній калині.

2.Колиха калина мою мрію,
що її одвіку я лелію -
стати на поріг своєї хати,
тата й маму з поля виглядати.

Приспів:
Калино, калино, моя незрадливая пісне,
до мене здалека промов тихе слово провісне,
промов, наче мати кохана, єдина,
бо мамина врода і мамина ніжність
навіки, навіки в червоній калині.

3.Колиха калина терпкі сльози,
що не стигнуть навіть на морозі.
Я прийду до тебе, моя нене,
коли стане полечко зелене.

Приспів:
Калино, калино, моя незрадливая пісне,
до мене здалека промов тихе слово провісне,
промов наче мати кохана, єдина,
бо мамина сила і мамина пісня
навіки, навіки в червоній калині');
DELETE FROM song_links WHERE song_id = 'pisniua_6194899';
DELETE FROM song_versions WHERE song_id = 'pisniua_6194899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6194899';
DELETE FROM songs WHERE id = 'pisniua_6194899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6194899','Білі янголи','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Здригнувся світ і знову тиша,
А мати десь маля колише,
Співає пісню колискову
Про те, яка земля чудова.
А за вікном летять лелеки
І крила спалені несуть,
Бо десь далеко, так далеко
Вже без вини відбувся суд.

Приспів:
Гинуть діти у Росії,      |
Гинуть діти у Чечні,      |
Як це можна пережити? -   |
Ви скажіть, скажіть мені! |
У Америці далекій,        |
На іракській стороні,     |
Наче спалені лелеки,      |
Муки терплять без вини... | (2)

А за вікном буяють квіти
Та гірко на душі мені,
Бо десь далеко гинуть діти -
Маленькі янголи земні.
І доки ж будуть сльози литься -
Нам Бог такого не простить.
Я заклинаю, люди, схаменіться,
Своїх дітей від лиха захистіть!

Приспів.

То встанемо всім людом,
Щоб більше не стріляли!
То встанемо всім миром,
Щоб більше не вбивали!
Бо сонцем в небі синім
Для всіх на світі світить.
Давайте жити в мирі
Заради наших діток!','[''pisni.org.ua'', ''cat:philosophic'', ''cat:suspilno-politychni'', ''Філософські пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6194899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6194899','Білі янголи','Здригнувся світ і знову тиша,
А мати десь маля колише,
Співає пісню колискову
Про те, яка земля чудова.
А за вікном летять лелеки
І крила спалені несуть,
Бо десь далеко, так далеко
Вже без вини відбувся суд.

Приспів:
Гинуть діти у Росії,      |
Гинуть діти у Чечні,      |
Як це можна пережити? -   |
Ви скажіть, скажіть мені! |
У Америці далекій,        |
На іракській стороні,     |
Наче спалені лелеки,      |
Муки терплять без вини... | (2)

А за вікном буяють квіти
Та гірко на душі мені,
Бо десь далеко гинуть діти -
Маленькі янголи земні.
І доки ж будуть сльози литься -
Нам Бог такого не простить.
Я заклинаю, люди, схаменіться,
Своїх дітей від лиха захистіть!

Приспів.

То встанемо всім людом,
Щоб більше не стріляли!
То встанемо всім миром,
Щоб більше не вбивали!
Бо сонцем в небі синім
Для всіх на світі світить.
Давайте жити в мирі
Заради наших діток!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6194899_l1','pisniua_6194899','YouTube','https://www.youtube.com/watch?v=adXB0Pv6av0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6194858';
DELETE FROM song_versions WHERE song_id = 'pisniua_6194858';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6194858';
DELETE FROM songs WHERE id = 'pisniua_6194858';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6194858','Щедрівка','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'- Дозвольте щедрувати!
- Дозволяємо!

В щедрий вечір, в Новий рік
Ми вітаємо усіх!
Діти хай у Вашім домі
Будуть вік увесь здорові,
Господиня хай радіє,
А господар має втіху:
В новий рік добро, надіє,
Хай приспить щедрівка лихо.
В Щедрий вечір щедрівонька,
Прилетіла ластівка.
Гарну пісню заспівала,
Всій землі защедрувала.

Ми почули голос птиці,
Пісню з нею заспівали.
Приготуйте нам гостинці,
Щоби Вам защедрували.

В щедрий вечір, в Новий рік
Ми вітаємо усіх!
Будьте щедрі та багаті,
Пісня хай дзвенить у хаті.
Господиня, наче квітка,
А господар, ніби сокіл,
І такі ж хороші дітки!
З Новим Щастям! З Новим Роком!
Я щедрівочку свою
Добрим людям роздаю,
Ви її усім співайте,
Всюди радість засівайте.

В щедрий вечір, в Новий рік
Ми вітаємо усіх!
Будьте здорові, щасливі й багаті!
Хай пісня чудова лунає на святі!','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6194858'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6194858','Щедрівка','- Дозвольте щедрувати!
- Дозволяємо!

В щедрий вечір, в Новий рік
Ми вітаємо усіх!
Діти хай у Вашім домі
Будуть вік увесь здорові,
Господиня хай радіє,
А господар має втіху:
В новий рік добро, надіє,
Хай приспить щедрівка лихо.
В Щедрий вечір щедрівонька,
Прилетіла ластівка.
Гарну пісню заспівала,
Всій землі защедрувала.

Ми почули голос птиці,
Пісню з нею заспівали.
Приготуйте нам гостинці,
Щоби Вам защедрували.

В щедрий вечір, в Новий рік
Ми вітаємо усіх!
Будьте щедрі та багаті,
Пісня хай дзвенить у хаті.
Господиня, наче квітка,
А господар, ніби сокіл,
І такі ж хороші дітки!
З Новим Щастям! З Новим Роком!
Я щедрівочку свою
Добрим людям роздаю,
Ви її усім співайте,
Всюди радість засівайте.

В щедрий вечір, в Новий рік
Ми вітаємо усіх!
Будьте здорові, щасливі й багаті!
Хай пісня чудова лунає на святі!');
DELETE FROM song_links WHERE song_id = 'pisniua_6198195';
DELETE FROM song_versions WHERE song_id = 'pisniua_6198195';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6198195';
DELETE FROM songs WHERE id = 'pisniua_6198195';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6198195','Роса','Музика: Олександр Злотник. Виконує: Василь Лазаревич','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Смарагди - росинки гойдає трава,
Вгамовує спрагу життя.
Трава ця живе, ці росинки - слова
Складаються в серцебиття.
А, може, то вірш солов''їний
Стучить в мої груди здаля?
Чи квіти ці винні, чи небо це синє?
Чи вся це ранкова земля?

Приспів:
Я бажаю Вам сонця і миру!
Я цю мить не забуду нізащо!
Не кажіть, де у світі є краще,
Не повірю! Не вірю! Не вірю!
Я бажаю Вам сонця і миру!
Я цю мить не забуду нізащо!
Бо росою умився допіру,
Нащо ж інша роса мені, нащо?

Спасибі Вам, мамо за ранню росу,
Якою мене повели.
Живу цю красу я до Вас принесу,
Щоб вічно здорові були,
Щоб завжди лишались земною,
О, мамо, мадонно моя!
Хай ходить за мною, хай буде зі мною
Молитвою Ваше ім''я!

Приспів.

Чи буде для мене ця рідна земля,
Де вперше я "мамо" сказав?..
З роси звідсіля ген за обрій мій шлях,
Росинка, росинка, сльоза...
О, земле моя, о, мадонно!
Віддам я багатства усі!
Віддам навіть долю за щастя до дому
Прийти по ранковій росі!

Приспів. (2)

Нащо ж інша роса мені, нащо?..','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6198195'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6198195','Роса','Смарагди - росинки гойдає трава,
Вгамовує спрагу життя.
Трава ця живе, ці росинки - слова
Складаються в серцебиття.
А, може, то вірш солов''їний
Стучить в мої груди здаля?
Чи квіти ці винні, чи небо це синє?
Чи вся це ранкова земля?

Приспів:
Я бажаю Вам сонця і миру!
Я цю мить не забуду нізащо!
Не кажіть, де у світі є краще,
Не повірю! Не вірю! Не вірю!
Я бажаю Вам сонця і миру!
Я цю мить не забуду нізащо!
Бо росою умився допіру,
Нащо ж інша роса мені, нащо?

Спасибі Вам, мамо за ранню росу,
Якою мене повели.
Живу цю красу я до Вас принесу,
Щоб вічно здорові були,
Щоб завжди лишались земною,
О, мамо, мадонно моя!
Хай ходить за мною, хай буде зі мною
Молитвою Ваше ім''я!

Приспів.

Чи буде для мене ця рідна земля,
Де вперше я "мамо" сказав?..
З роси звідсіля ген за обрій мій шлях,
Росинка, росинка, сльоза...
О, земле моя, о, мадонно!
Віддам я багатства усі!
Віддам навіть долю за щастя до дому
Прийти по ранковій росі!

Приспів. (2)

Нащо ж інша роса мені, нащо?..');
DELETE FROM song_links WHERE song_id = 'pisniua_6191746';
DELETE FROM song_versions WHERE song_id = 'pisniua_6191746';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6191746';
DELETE FROM songs WHERE id = 'pisniua_6191746';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6191746','Свято Миколая','Музика: Ольга Маєвська Слова: Михайло Роговенко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Є на світі свят багато
Урочистих, визначних,
Але Миколая свято -
Найприємніше із них!
Миколай Святий - не казка,
Це не дід мороз, о, ні!
Миколайчику, будь ласка,
Ти приходь до мене в сні!

Під подушку я загляну,
Рано-вранці посміхнусь.
Подаруночки дістану,
Миколаю поклонюсь!
Подаруночки - це свято,
Та я молю не про те,
Бережи матусю й тата,
І хай рідний край цвіте!

Люблять діти Миколая,
Шану кожен віддає.
Хто в мольбах його благає,
Всім він поміч подає.
Через нього Божа ласка   |
З неба сходить до людей. |
Миколайчику, будь ласка, |
Завітай до всіх дітей!   | (2)','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:svyatyy-mykolay'', ''Дитячі пісні'', ''Пісні про Святого Миколая'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6191746'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6191746','Свято Миколая','Є на світі свят багато
Урочистих, визначних,
Але Миколая свято -
Найприємніше із них!
Миколай Святий - не казка,
Це не дід мороз, о, ні!
Миколайчику, будь ласка,
Ти приходь до мене в сні!

Під подушку я загляну,
Рано-вранці посміхнусь.
Подаруночки дістану,
Миколаю поклонюсь!
Подаруночки - це свято,
Та я молю не про те,
Бережи матусю й тата,
І хай рідний край цвіте!

Люблять діти Миколая,
Шану кожен віддає.
Хто в мольбах його благає,
Всім він поміч подає.
Через нього Божа ласка   |
З неба сходить до людей. |
Миколайчику, будь ласка, |
Завітай до всіх дітей!   | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6191746_l1','pisniua_6191746','YouTube','https://www.youtube.com/watch?v=B_NQnCC6Y88','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6198477';
DELETE FROM song_versions WHERE song_id = 'pisniua_6198477';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6198477';
DELETE FROM songs WHERE id = 'pisniua_6198477';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6198477','Великий Бог, коли на світ погляну',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Великий Бог, коли на світ погляну,
І бачу все, що Ти створив в красі,
Як кожен квіт Тобі складає шану,
І як обняв любов''ю Ти усіх.

Тоді, Господь, мій дух співа Тобі:
Великий Ти, великий Ти!

Коли беру я Книгу заповітів
І в ній читаю про Твої діла,
Як полюбив Ти нас, людей, на світі
І Свого Сина з неба нам послав.

Коли Господь мене сам закликає,
І світить промінь сяєва Його,
Тоді мій дух в покорі замовкає,
Признавши велич Господа свого.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6198477'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6198477','Великий Бог, коли на світ погляну','Великий Бог, коли на світ погляну,
І бачу все, що Ти створив в красі,
Як кожен квіт Тобі складає шану,
І як обняв любов''ю Ти усіх.

Тоді, Господь, мій дух співа Тобі:
Великий Ти, великий Ти!

Коли беру я Книгу заповітів
І в ній читаю про Твої діла,
Як полюбив Ти нас, людей, на світі
І Свого Сина з неба нам послав.

Коли Господь мене сам закликає,
І світить промінь сяєва Його,
Тоді мій дух в покорі замовкає,
Признавши велич Господа свого.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6198477_l1','pisniua_6198477','YouTube','https://www.youtube.com/watch?v=o2HXJl2EI_M','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6188297';
DELETE FROM song_versions WHERE song_id = 'pisniua_6188297';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6188297';
DELETE FROM songs WHERE id = 'pisniua_6188297';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6188297','Чомучки','Музика: Ольга Янушкевич Слова: Марія Ясакова. Виконує: Мрія','uk','ukraine_1991',NULL,NULL,'http://ditky.at.ua/load/muzika/ditjachi_pisni/ditinstva_svit/13-1-0-130',NULL,'У всіх я і про все запитую щоранку
І звуть мене Чомучкою дорослі повсякчас.
Я прошу зрозуміти допитливість мою,
Бо невідомий мені світ ще тільки пізнаю!

Приспів:
Чомучки, чомучки, ми - дітки веселі!
Зростають чомучки у кожній оселі.
Чому? Куди? і Як? - ми дуже хочем знати.
"У вас знайдеться час? - Дозвольте запитати!"

Чому сова лякливо у темряві кричить?
А де зимує літечко і сонце спить вночі?
Про що струмок співає, куди пташки летять?
А ще я хочу знати як зірочкою стать!

Приспів.

Чому встає веселка, а звідки пада сніг?
А як, скажіть, будь ласка, складаються пісні?
То ж просим допомоги, дорослі, ми у вас -
Пояснюйте усе нам, знайдіть для діток час!

Приспів','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6188297'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6188297','Чомучки','У всіх я і про все запитую щоранку
І звуть мене Чомучкою дорослі повсякчас.
Я прошу зрозуміти допитливість мою,
Бо невідомий мені світ ще тільки пізнаю!

Приспів:
Чомучки, чомучки, ми - дітки веселі!
Зростають чомучки у кожній оселі.
Чому? Куди? і Як? - ми дуже хочем знати.
"У вас знайдеться час? - Дозвольте запитати!"

Чому сова лякливо у темряві кричить?
А де зимує літечко і сонце спить вночі?
Про що струмок співає, куди пташки летять?
А ще я хочу знати як зірочкою стать!

Приспів.

Чому встає веселка, а звідки пада сніг?
А як, скажіть, будь ласка, складаються пісні?
То ж просим допомоги, дорослі, ми у вас -
Пояснюйте усе нам, знайдіть для діток час!

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_6195151';
DELETE FROM song_versions WHERE song_id = 'pisniua_6195151';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6195151';
DELETE FROM songs WHERE id = 'pisniua_6195151';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6195151','Днесь іде Ісус на ріку Йордан',NULL,'uk','ukraine_1991',NULL,NULL,'http://kant.org.ua/?p=1036',NULL,'Днесь іде Ісус на ріку Йордан,
Де хрестив людей Предтеча Йоан,
Щоби там ся охрестити, людям воду освятити,
Для спасенія людей.

Предтеча Йоан до Христа каже:
"Христи Ти мене, Ісусе блажен,
A я стану пред Тобою, охрещу тя лиш водою,
A Ти Духом Cвятим".

A як Cин Божий з води виходив,
Дух Cвятий з небес на землю сходив,
Тілесний вид голуба, третя Божая особа,
Людям ся являє.

І голос Отця із неба кличе,
Щоб видів і чув,- вір чоловіче:
"То є Cин Мій возлюблений, у Йордані хрещений,
О нім же благоволім".

І ми нині всі, на ріку спішім,
Cвященну воду з неї почерпнім,
Щоби нею гріхи змити і з Богом ся примирити,
В Тройці Єдиному.','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6195151'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6195151','Днесь іде Ісус на ріку Йордан','Днесь іде Ісус на ріку Йордан,
Де хрестив людей Предтеча Йоан,
Щоби там ся охрестити, людям воду освятити,
Для спасенія людей.

Предтеча Йоан до Христа каже:
"Христи Ти мене, Ісусе блажен,
A я стану пред Тобою, охрещу тя лиш водою,
A Ти Духом Cвятим".

A як Cин Божий з води виходив,
Дух Cвятий з небес на землю сходив,
Тілесний вид голуба, третя Божая особа,
Людям ся являє.

І голос Отця із неба кличе,
Щоб видів і чув,- вір чоловіче:
"То є Cин Мій возлюблений, у Йордані хрещений,
О нім же благоволім".

І ми нині всі, на ріку спішім,
Cвященну воду з неї почерпнім,
Щоби нею гріхи змити і з Богом ся примирити,
В Тройці Єдиному.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6195151_l1','pisniua_6195151','YouTube','https://www.youtube.com/watch?v=mGJaluEbgGI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6199374';
DELETE FROM song_versions WHERE song_id = 'pisniua_6199374';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6199374';
DELETE FROM songs WHERE id = 'pisniua_6199374';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6199374','Дитинства світ','Музика: Ольга Янушкевич Слова: Н. Погребняк. Виконує: Мрія','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Нас дитинства світ казковий
Знов у гості кличе всіх
По доріжці веселковій,
Де лунає дружно сміх,
Де на кульках кольорових
Лине в небо дітвора,
Бо країна ця чудова -  |
Світ любові і добра!   | (2)

Приспів:
Дитинства світ, чарівний світ,
Це світ рожевих, добрих мрій!
Це до зірок швидкий політ,
Віночок сонячних надій!
Це світ добра,         |
Це літній луг,         |
Це я, це ти,           |
Мій найдорожчий друг!  | (2)

Тут і гноми, і чаклунки
У країні цій живуть,
І різдвяні подарунки
Під ялинками нас ждуть,
Тут навкруг лунає дзвінко
Дивних птахів ніжний спів,
Біля кожного будинку   |
Є крамниця добрих див! | (2)

Приспів.

Це світ добра,         |
Це літній луг,         |
Це я, це ти,           |
Мій найдорожчий друг!  | (2)','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6199374'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6199374','Дитинства світ','Нас дитинства світ казковий
Знов у гості кличе всіх
По доріжці веселковій,
Де лунає дружно сміх,
Де на кульках кольорових
Лине в небо дітвора,
Бо країна ця чудова -  |
Світ любові і добра!   | (2)

Приспів:
Дитинства світ, чарівний світ,
Це світ рожевих, добрих мрій!
Це до зірок швидкий політ,
Віночок сонячних надій!
Це світ добра,         |
Це літній луг,         |
Це я, це ти,           |
Мій найдорожчий друг!  | (2)

Тут і гноми, і чаклунки
У країні цій живуть,
І різдвяні подарунки
Під ялинками нас ждуть,
Тут навкруг лунає дзвінко
Дивних птахів ніжний спів,
Біля кожного будинку   |
Є крамниця добрих див! | (2)

Приспів.

Це світ добра,         |
Це літній луг,         |
Це я, це ти,           |
Мій найдорожчий друг!  | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6199374_l1','pisniua_6199374','YouTube','https://www.youtube.com/watch?v=vFcOGC7pqFw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6198042';
DELETE FROM song_versions WHERE song_id = 'pisniua_6198042';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6198042';
DELETE FROM songs WHERE id = 'pisniua_6198042';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6198042','Ангел','Музика: Василь Лисенко Слова: Василь Лисенко','uk','ukraine_1991',NULL,NULL,'аудіозапис','Пісню виконує Галина Лисенко.','Тихий вітерець
Вітоньки гойда,
Місяць чарівник
Зорі розсипа...
Із далеких снів
Ангел прилетів,
З білими крильми
Біля мене сів.

Приспів:
Дуже я прошу тебе,
Ангел дорогий,
Щастя з неба принеси
Матінці моїй
І від горя захисти
Матінку мою,
Ангелочок дорогий,
Маму я люблю!

Лагідний туман
Землю огорнув,
Тихий вітерець
У гаю заснув,
Із далеких снів
Ангел прилетів,
З білими крильми
Біля мене сів.

Приспів. (2)','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:pro-batkiv'', ''Дитячі пісні'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6198042'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6198042','Ангел','Тихий вітерець
Вітоньки гойда,
Місяць чарівник
Зорі розсипа...
Із далеких снів
Ангел прилетів,
З білими крильми
Біля мене сів.

Приспів:
Дуже я прошу тебе,
Ангел дорогий,
Щастя з неба принеси
Матінці моїй
І від горя захисти
Матінку мою,
Ангелочок дорогий,
Маму я люблю!

Лагідний туман
Землю огорнув,
Тихий вітерець
У гаю заснув,
Із далеких снів
Ангел прилетів,
З білими крильми
Біля мене сів.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6198042_l1','pisniua_6198042','YouTube','https://www.youtube.com/watch?v=TOx4LkFESvk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6194297';
DELETE FROM song_versions WHERE song_id = 'pisniua_6194297';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6194297';
DELETE FROM songs WHERE id = 'pisniua_6194297';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6194297','Червона калина','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Матуся навчила нас пісню співати,
У полі ранкову стрічати зорю.
Матуся навчила людей шанувати |
І вірно любити Вкраїну свою!  | (2)

Приспів:
Там червона калина,
Мов святий оберіг,
Споришева стежина
Приведе на поріг.
Там матуся співала
Колискові пісні,
На добро дарувала
Вишиванку мені.

Матуся навчила добро пам''ятати,
Стежину топтати у ріднім краю.
Матуся навчила утоми не знати |
І вірно любити Вкраїну свою!  | (2)

Приспів. (2)','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6194297'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6194297','Червона калина','Матуся навчила нас пісню співати,
У полі ранкову стрічати зорю.
Матуся навчила людей шанувати |
І вірно любити Вкраїну свою!  | (2)

Приспів:
Там червона калина,
Мов святий оберіг,
Споришева стежина
Приведе на поріг.
Там матуся співала
Колискові пісні,
На добро дарувала
Вишиванку мені.

Матуся навчила добро пам''ятати,
Стежину топтати у ріднім краю.
Матуся навчила утоми не знати |
І вірно любити Вкраїну свою!  | (2)

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_6199353';
DELETE FROM song_versions WHERE song_id = 'pisniua_6199353';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6199353';
DELETE FROM songs WHERE id = 'pisniua_6199353';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6199353','Під Новий Рік','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Під Новий Рік, під Новий Рік
Летять сніжинки на поріг,
Немов вертаються назад
До дому із чужих доріг.
І з побажаннями до нас
Приходить добрий Дід Мороз,
Бажає щастя і добра, всього,
Що й досі не збулось.

Приспів:
Я бажання загадаю,        |
Хай ніхто його не знає,   |
Тільки я і тільки ви!     |
Хай на світі зла не буде, |
Стануть всі добріші люди  |
На землі, усій землі!     | (2)

Під Новий Рік, під Новий Рік
Лунає скрізь веселий сміх,
І, наче у казковім сні,
Кружляє новорічний сніг.
І з побажаннями до нас
Приходить добрий Дід Мороз,
Бажає щастя і добра, всього,
Що й досі не збулось.

Приспів. (2)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6199353'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6199353','Під Новий Рік','Під Новий Рік, під Новий Рік
Летять сніжинки на поріг,
Немов вертаються назад
До дому із чужих доріг.
І з побажаннями до нас
Приходить добрий Дід Мороз,
Бажає щастя і добра, всього,
Що й досі не збулось.

Приспів:
Я бажання загадаю,        |
Хай ніхто його не знає,   |
Тільки я і тільки ви!     |
Хай на світі зла не буде, |
Стануть всі добріші люди  |
На землі, усій землі!     | (2)

Під Новий Рік, під Новий Рік
Лунає скрізь веселий сміх,
І, наче у казковім сні,
Кружляє новорічний сніг.
І з побажаннями до нас
Приходить добрий Дід Мороз,
Бажає щастя і добра, всього,
Що й досі не збулось.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6199353_l1','pisniua_6199353','http://www.minus.lviv.ua/minus/artist/Май%20Наталія/rec/25475/','http://www.minus.lviv.ua/minus/artist/Май%20Наталія/rec/25475/','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_619695';
DELETE FROM song_versions WHERE song_id = 'pisniua_619695';
DELETE FROM songs_fts WHERE song_id = 'pisniua_619695';
DELETE FROM songs WHERE id = 'pisniua_619695';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_619695','Наше літо','Музика: Тартак Слова: Олександр Положинський. Виконує: Тартак','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Від Різдва майже півроку прожито...
І десь за містом вже колоситься жито,
Тим житом весь простір вкрито -
Це нашеліто.
Над жовтим житом нависає блакитно
Небо прозоре - всміхається привітно.
Це небо пухнастими хмарами забито,
Бо це нашеліто.
І я раптово щось у грудях відчуваю,
Полізу вгору - на все горло заспіваю!

Сон Ц П Ч,
Річ К Т Ч,
Влітку на вулиці так гаряче!
Бо сон Ц П Ч,
Річ К Т Ч,
Влітку на вулиці так гаряче!...

А потім раптом дощ піде несамовито -
Рясний, немов з відра, дрібний, як через сито.
І гримне грім - потужно, лунко, сердито -
Таке вже нашеліто...
Та випадково дощ подружиться із вітром,
І підуть разом, і блукатимуть світом.
А нам залишиться гарячим привітом
Тільки нашеліто.
І знову в грудях щось приємне відчуваю,
І знову лізу вгору, знову заспіваю!

Сон Ц П Ч,
Річ К Т Ч,
Влітку на вулиці так гаряче!
Бо сон Ц П Ч,
Річ К Т Ч,
Влітку на вулиці так гаряче!...','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_619695'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_619695','Наше літо','Від Різдва майже півроку прожито...
І десь за містом вже колоситься жито,
Тим житом весь простір вкрито -
Це нашеліто.
Над жовтим житом нависає блакитно
Небо прозоре - всміхається привітно.
Це небо пухнастими хмарами забито,
Бо це нашеліто.
І я раптово щось у грудях відчуваю,
Полізу вгору - на все горло заспіваю!

Сон Ц П Ч,
Річ К Т Ч,
Влітку на вулиці так гаряче!
Бо сон Ц П Ч,
Річ К Т Ч,
Влітку на вулиці так гаряче!...

А потім раптом дощ піде несамовито -
Рясний, немов з відра, дрібний, як через сито.
І гримне грім - потужно, лунко, сердито -
Таке вже нашеліто...
Та випадково дощ подружиться із вітром,
І підуть разом, і блукатимуть світом.
А нам залишиться гарячим привітом
Тільки нашеліто.
І знову в грудях щось приємне відчуваю,
І знову лізу вгору, знову заспіваю!

Сон Ц П Ч,
Річ К Т Ч,
Влітку на вулиці так гаряче!
Бо сон Ц П Ч,
Річ К Т Ч,
Влітку на вулиці так гаряче!...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_619695_l1','pisniua_619695','YouTube','https://www.youtube.com/watch?v=Kq9zwoDgMIw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6194144';
DELETE FROM song_versions WHERE song_id = 'pisniua_6194144';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6194144';
DELETE FROM songs WHERE id = 'pisniua_6194144';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6194144','Новий рік на двох','Музика: Андріана Слова: Андріана. Виконує: Андріана','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Світ неначе з білих мрій,
За вікном так сніжно,
Я тебе, солодкий мій,
Поцілую ніжно.
Тепло тобі віддам і начарую,
Хай рік новий всім нам
Знов любов дарує!

Приспів:
Білий сніг, білий сніг |
В небесах кружляє,     |
Новий рік, Новий рік   |
Знову наступає!        |
Білий сніг, білий сніг |
Землю засипає,         |
Новий рік, Новий рік   |
Силу набирає!          | (2)

Хай збирає щастя сніг
І дарує крила,
І бажання наші сніг
Хай малює білим.
І хай фортуна йде
На нашім боці
Та буде все "окей"
У Новому році!

Приспів.

Новий рік! Новий рік!

Речитатив:
А я бажаю усім вам,
Щоб кожен з вас
У Новорічну ніч під ялинкою
Знайшов чарівну скриньку,
Яка виконає
Усі ваші мрії та бажання!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6194144'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6194144','Новий рік на двох','Світ неначе з білих мрій,
За вікном так сніжно,
Я тебе, солодкий мій,
Поцілую ніжно.
Тепло тобі віддам і начарую,
Хай рік новий всім нам
Знов любов дарує!

Приспів:
Білий сніг, білий сніг |
В небесах кружляє,     |
Новий рік, Новий рік   |
Знову наступає!        |
Білий сніг, білий сніг |
Землю засипає,         |
Новий рік, Новий рік   |
Силу набирає!          | (2)

Хай збирає щастя сніг
І дарує крила,
І бажання наші сніг
Хай малює білим.
І хай фортуна йде
На нашім боці
Та буде все "окей"
У Новому році!

Приспів.

Новий рік! Новий рік!

Речитатив:
А я бажаю усім вам,
Щоб кожен з вас
У Новорічну ніч під ялинкою
Знайшов чарівну скриньку,
Яка виконає
Усі ваші мрії та бажання!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6194570';
DELETE FROM song_versions WHERE song_id = 'pisniua_6194570';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6194570';
DELETE FROM songs WHERE id = 'pisniua_6194570';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6194570','Квітуча Україна','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май, Світлана Весна','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Де сяє сонце золоте
І журавлі курличуть,
В саду черешенька цвіте,
Вечерять мама кличе.
Співає сонячні пісні
Уся моя родина,
Бо я вродилась на землі,
Що зветься Україна!

Приспів:
За квітучі гаї
І калини цвіт у лузі
Станьмо, браття мої,
Помолімось разом друзі.
Хай молитви слова
В небо птахою полинуть,
Щоб завжди берегла
Матір Божа Україну!

Любові сповнена земля
Одна така на світі,
Тут кожен день стрічаю я,
Серця добром сповиті.
Ми покладемо за мету
Від малу й до загину
Любити землю цю святу,
Що зветься Україна!

Приспів. (3)

Україну! Україну! Україну!','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6194570'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6194570','Квітуча Україна','Де сяє сонце золоте
І журавлі курличуть,
В саду черешенька цвіте,
Вечерять мама кличе.
Співає сонячні пісні
Уся моя родина,
Бо я вродилась на землі,
Що зветься Україна!

Приспів:
За квітучі гаї
І калини цвіт у лузі
Станьмо, браття мої,
Помолімось разом друзі.
Хай молитви слова
В небо птахою полинуть,
Щоб завжди берегла
Матір Божа Україну!

Любові сповнена земля
Одна така на світі,
Тут кожен день стрічаю я,
Серця добром сповиті.
Ми покладемо за мету
Від малу й до загину
Любити землю цю святу,
Що зветься Україна!

Приспів. (3)

Україну! Україну! Україну!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6194570_l1','pisniua_6194570','YouTube','https://www.youtube.com/watch?v=Qly-AvU4lZ4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6193695';
DELETE FROM song_versions WHERE song_id = 'pisniua_6193695';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6193695';
DELETE FROM songs WHERE id = 'pisniua_6193695';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6193695','Пісня Вифлеємського вогню миру','Музика: Соломія Кейван Слова: Соломія Кейван. Виконує: Валентина Славінська','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'С         G
В небі зірка спалахнула,
В серці іскра промайнула -
Десь народився Господь.
З меду і з полину, у блаженну днину
Я вітатиму Його.
Хай співає небо, я іду до Тебе,
Я вітатиму Його.
Приспів:
Вогонь любові, вогонь добра,
Неси у світлі ліхтаря.
Хай знає кожен Божий дім -
Ми понесем вогонь, даруючи любов
C
Усім.
Місячне проміння стукає у шибку,
Тихо кличе нас у даль.
Серце звеселяє, душу зігріває
Миті сонячний розмай.
Сила твого серця
Хай в ділах озветься
І воскресне на устах!
Янголи співають,
Бога звеселяють.
Щастя будять у серцях.
Радість світ єднає,
Небо нам співає
І освітлює той шлях!
Ніжністю дитина
Щира і невинна
Нас веде у майбуття!','[''pisni.org.ua'', ''cat:christian'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Пісні на християнську тематику'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6193695'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6193695','Пісня Вифлеємського вогню миру','С         G
В небі зірка спалахнула,
В серці іскра промайнула -
Десь народився Господь.
З меду і з полину, у блаженну днину
Я вітатиму Його.
Хай співає небо, я іду до Тебе,
Я вітатиму Його.
Приспів:
Вогонь любові, вогонь добра,
Неси у світлі ліхтаря.
Хай знає кожен Божий дім -
Ми понесем вогонь, даруючи любов
C
Усім.
Місячне проміння стукає у шибку,
Тихо кличе нас у даль.
Серце звеселяє, душу зігріває
Миті сонячний розмай.
Сила твого серця
Хай в ділах озветься
І воскресне на устах!
Янголи співають,
Бога звеселяють.
Щастя будять у серцях.
Радість світ єднає,
Небо нам співає
І освітлює той шлях!
Ніжністю дитина
Щира і невинна
Нас веде у майбуття!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6193695_l1','pisniua_6193695','YouTube','https://www.youtube.com/watch?v=ns4mJHA_8wI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6198454';
DELETE FROM song_versions WHERE song_id = 'pisniua_6198454';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6198454';
DELETE FROM songs WHERE id = 'pisniua_6198454';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6198454','В минулі часи, далекі часи',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Em
В минулі часи, далекі часи,
H7
В краю Палестини
З''явилась зоря, небесна вона
Em
І сяє донині.
Це світло для нас, приніс любий Спас
Am
І хто хоче взяти,
Даремно бери і будеш і ти
Em
Яскраво палати.

В Вифлеєм, в Вифлеєм поспішіть,
Перед Спасом коліна схиліть.
Ні дарів, ні скарбів Він не жде,
"Друже, серце дай Богу своє!"

В блуканнях моїх, нещасних доріг,
Чимало пройшов я
Та щастя не мав, коли пропадав,
Далеко від Бога,
Та ясна зоря Ісуса Христа
Вказала дорогу.
Щоб я міг прийти, спасіння знайти,
У Бога Святого.

Сьогодні ще раз лунає для вас
Ця вістка чудова,
Блаженство знайдеш, коли ти прийдеш
До Бога Святого
То ж, друже, спіши, скоріше прийми
Спасіння Христове,
Сьогодні прийди, одержиш і ти
Життя зовсім нове.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6198454'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6198454','В минулі часи, далекі часи','Em
В минулі часи, далекі часи,
H7
В краю Палестини
З''явилась зоря, небесна вона
Em
І сяє донині.
Це світло для нас, приніс любий Спас
Am
І хто хоче взяти,
Даремно бери і будеш і ти
Em
Яскраво палати.

В Вифлеєм, в Вифлеєм поспішіть,
Перед Спасом коліна схиліть.
Ні дарів, ні скарбів Він не жде,
"Друже, серце дай Богу своє!"

В блуканнях моїх, нещасних доріг,
Чимало пройшов я
Та щастя не мав, коли пропадав,
Далеко від Бога,
Та ясна зоря Ісуса Христа
Вказала дорогу.
Щоб я міг прийти, спасіння знайти,
У Бога Святого.

Сьогодні ще раз лунає для вас
Ця вістка чудова,
Блаженство знайдеш, коли ти прийдеш
До Бога Святого
То ж, друже, спіши, скоріше прийми
Спасіння Христове,
Сьогодні прийди, одержиш і ти
Життя зовсім нове.');
DELETE FROM song_links WHERE song_id = 'pisniua_6199542';
DELETE FROM song_versions WHERE song_id = 'pisniua_6199542';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6199542';
DELETE FROM songs WHERE id = 'pisniua_6199542';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6199542','Сонце сходить і заходить','Українська народна пісня. Виконує: Фольктеатр Остапа Стахіва','uk','ukr_ssr_1919_1991',NULL,NULL,NULL,NULL,'Сонце сходить і заходить, а в моїй тюрмі темно
День і ніч там варта ходить, стереже моє вікно (2)

Стережіте, стережіте все одно вам не втечу
Бо тяжкі мої кайдани, я пірвать їх не зможу (2)

Ой сидів я один рочок, ой сидів я другий рік
Прийшли мої товариші, визволяти ня на світ

Першу браму розвалили, другу браму розвезли
Взяли мене на рученьки, тай на волю винесли

Ой ви кляті вороженьки, буду я вам пам''ятав
Що найкращі свої літа, я в кайданах змарнував (2)

Ой ти славна Україно, кайданами не дзвони
Бо ми тебе м визволимо, ми твої рідні сини (2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6199542'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6199542','Сонце сходить і заходить','Сонце сходить і заходить, а в моїй тюрмі темно
День і ніч там варта ходить, стереже моє вікно (2)

Стережіте, стережіте все одно вам не втечу
Бо тяжкі мої кайдани, я пірвать їх не зможу (2)

Ой сидів я один рочок, ой сидів я другий рік
Прийшли мої товариші, визволяти ня на світ

Першу браму розвалили, другу браму розвезли
Взяли мене на рученьки, тай на волю винесли

Ой ви кляті вороженьки, буду я вам пам''ятав
Що найкращі свої літа, я в кайданах змарнував (2)

Ой ти славна Україно, кайданами не дзвони
Бо ми тебе м визволимо, ми твої рідні сини (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6199542_l1','pisniua_6199542','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6198178';
DELETE FROM song_versions WHERE song_id = 'pisniua_6198178';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6198178';
DELETE FROM songs WHERE id = 'pisniua_6198178';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6198178','Мама і я','Музика: Ольга Янушкевич Слова: Марія Ясакова. Виконує: Юлія Гудзенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Дивуються перехожі,
Що ми з мамою так схожі,
Як на сонці росинки,
Як у морі краплинки,
Як веселі сніжинки -
Мама і я!

Приспів:
Мама і я, мама і я,
Мама і я, і я!
Мама і я, мама і я,
Мама і я, і я!

А нас тато вихваляє,
Що все з мамою встигаєм:
І прибрати й помити,
Смачно їсти зварити,
Гарні сукні пошити -
Мама і я!

Приспів.

Мама і я, і я!
Мама і я, і я!

Коли буде у нас свято -
Друзів буде теж багато,
Я тоді їм покажу,
Що я вмію робити,
Як умієм дружити
Мама і я!

Приспів.

Мама і я, і я!','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6198178'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6198178','Мама і я','Дивуються перехожі,
Що ми з мамою так схожі,
Як на сонці росинки,
Як у морі краплинки,
Як веселі сніжинки -
Мама і я!

Приспів:
Мама і я, мама і я,
Мама і я, і я!
Мама і я, мама і я,
Мама і я, і я!

А нас тато вихваляє,
Що все з мамою встигаєм:
І прибрати й помити,
Смачно їсти зварити,
Гарні сукні пошити -
Мама і я!

Приспів.

Мама і я, і я!
Мама і я, і я!

Коли буде у нас свято -
Друзів буде теж багато,
Я тоді їм покажу,
Що я вмію робити,
Як умієм дружити
Мама і я!

Приспів.

Мама і я, і я!');
DELETE FROM song_links WHERE song_id = 'pisniua_6198776';
DELETE FROM song_versions WHERE song_id = 'pisniua_6198776';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6198776';
DELETE FROM songs WHERE id = 'pisniua_6198776';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6198776','Вчителю','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Мій добрий вчителю,
Душа Твоя криниця,
Скажи мені, чому
Тобі вночі не спиться?
І посивіли скроні
Й сумні Твої вуста,
І відлітають вдаль
Твої літа!..

Приспів:
Спасибі, вчителю,
Мій давній оберіг,
За те, що я
Вертаюсь на поріг,
За те, що Ти навчив
З добром на світі жить
І за дитинства
Неповторну мить!

Пробач, учителю,
Соколе сизокрилий,
За те, що часом ми
Тебе не розуміли,
За те, що білі скроні
Й сумні Твої вуста
І відлетіли вдаль
Твої літа!..

Приспів.

Мій вчителю, вклоняюся Тобі
За Твої добрі очі,
За Твоє велике серце,
За те все добро,
Що Ти посіяв в наших душах!

Приспів.','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6198776'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6198776','Вчителю','Мій добрий вчителю,
Душа Твоя криниця,
Скажи мені, чому
Тобі вночі не спиться?
І посивіли скроні
Й сумні Твої вуста,
І відлітають вдаль
Твої літа!..

Приспів:
Спасибі, вчителю,
Мій давній оберіг,
За те, що я
Вертаюсь на поріг,
За те, що Ти навчив
З добром на світі жить
І за дитинства
Неповторну мить!

Пробач, учителю,
Соколе сизокрилий,
За те, що часом ми
Тебе не розуміли,
За те, що білі скроні
Й сумні Твої вуста
І відлетіли вдаль
Твої літа!..

Приспів.

Мій вчителю, вклоняюся Тобі
За Твої добрі очі,
За Твоє велике серце,
За те все добро,
Що Ти посіяв в наших душах!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6195';
DELETE FROM song_versions WHERE song_id = 'pisniua_6195';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6195';
DELETE FROM songs WHERE id = 'pisniua_6195';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6195','Шабелина','(Ой хмариться). Українська народна пісня. Виконує: Плач Єремії, Русичі, Буття','uk','ukraine_before_1917',NULL,NULL,'1. Пісневир. Молодіжний співаник. Львів 2001 2. Варіант підбору акордів від соліста групи "Ротор", м. Дрогобич','Акорди (варіант 1) - із джерела 1. Акорди (варіант 2) надав Ярослав Юрчишин. Акорди (варіант 3) - із джерела 2. Акорди (варіант 4) надав Taras Hryvul. Акорди (варіант 5) надав tsa. Я граю цю пісню переважно на акордах варіанту 3. Цей варіант відповідає тому, як грає гурт "Плач Єремії".','гурту "Плач Єремії":
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовня-жовнярики
Мед-горілку п''ю- у- у- уть.
Там молоді жовня-жовнярики
Мед-горілку п''ють.
Текст:
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовнярики      |
Мед-горілку п''ють.        | (2)
П''ють горілку, ще й наливку,
Їдять пампушки,
Та ще й собі споглядають  |
На чужі жінки.            | (2)
Чужа жінка, як ягідка,
Як вишневий цвіт,
А ти ж мені, шабелино,    |
Зав''язала світ.           | (2)
Візьму я ж тебе, шабелино,
Та й за гострий край,
Пущу я ж тебе, шабелино,  |
В глибокий Дунай.         | (2)
Плавай, плавай, шабелино,
Вчися плавати,
А я піду, молод жовняр,   |
Жінку шукати.             | (2)
А як я собі, шабелино,
Жіночку знайду,
Тоді я тебе, шабелино,    |
До боку припну.           | (2)
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовнярики      |
Мед-горівку п''ють.        | (2)
Ой хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовнярики      |
Мед-горілку п''ють.        | (2)
Акорди (варіант 1):
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовнярики      |
Мед-горілку п''ють.        | (2)
Акорди (варіант 2):
Ой, хмариться, туманиться,
Дрібні до_щі йдуть.
Там молоді жовнярики      |
Мед-горілку п''ють.        | (2)
Акорди (варіант 3):
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовня-жовнярики
Мед-горілку п''ю- у- у- уть.
Там молоді жовня-жовнярики
Мед-горілку п''ють.
Акорди (варіант 4):
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовнярики  |
Мед-горілку п''ють.    |(2)
Акорди (варіант 5):
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовнярики
Мед-горілку п''ють.        | (2)','[''pisni.org.ua'', ''cat:lirychni'', ''cat:narodni'', ''cat:philosophic'', ''cat:rekrutski'', ''Пісні про кохання, ліричні'', ''Народні пісні'', ''Філософські пісні'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6195'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6195','Шабелина','гурту "Плач Єремії":
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовня-жовнярики
Мед-горілку п''ю- у- у- уть.
Там молоді жовня-жовнярики
Мед-горілку п''ють.
Текст:
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовнярики      |
Мед-горілку п''ють.        | (2)
П''ють горілку, ще й наливку,
Їдять пампушки,
Та ще й собі споглядають  |
На чужі жінки.            | (2)
Чужа жінка, як ягідка,
Як вишневий цвіт,
А ти ж мені, шабелино,    |
Зав''язала світ.           | (2)
Візьму я ж тебе, шабелино,
Та й за гострий край,
Пущу я ж тебе, шабелино,  |
В глибокий Дунай.         | (2)
Плавай, плавай, шабелино,
Вчися плавати,
А я піду, молод жовняр,   |
Жінку шукати.             | (2)
А як я собі, шабелино,
Жіночку знайду,
Тоді я тебе, шабелино,    |
До боку припну.           | (2)
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовнярики      |
Мед-горівку п''ють.        | (2)
Ой хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовнярики      |
Мед-горілку п''ють.        | (2)
Акорди (варіант 1):
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовнярики      |
Мед-горілку п''ють.        | (2)
Акорди (варіант 2):
Ой, хмариться, туманиться,
Дрібні до_щі йдуть.
Там молоді жовнярики      |
Мед-горілку п''ють.        | (2)
Акорди (варіант 3):
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовня-жовнярики
Мед-горілку п''ю- у- у- уть.
Там молоді жовня-жовнярики
Мед-горілку п''ють.
Акорди (варіант 4):
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовнярики  |
Мед-горілку п''ють.    |(2)
Акорди (варіант 5):
Ой, хмариться, туманиться,
Дрібні дощі йдуть.
Там молоді жовнярики
Мед-горілку п''ють.        | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6195_l1','pisniua_6195','YouTube','https://www.youtube.com/watch?v=CaAmfMPIuJ4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6195_l2','pisniua_6195','YouTube','https://www.youtube.com/watch?v=_W2m4DtMPNA','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6195_l3','pisniua_6195','YouTube','https://www.youtube.com/watch?v=dDwQNPTodKE','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6195_l4','pisniua_6195','YouTube','https://www.youtube.com/watch?v=6LZscGWAOiA','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6195_l5','pisniua_6195','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_6201491';
DELETE FROM song_versions WHERE song_id = 'pisniua_6201491';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6201491';
DELETE FROM songs WHERE id = 'pisniua_6201491';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6201491','Радість у Христі я знайшов',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Радість у Христі я знайшов,
Він - моє життя і спокій,
Коли я до Нього прийшов
З того часу Батько Він мій.

З того часу я - Його син
І радію, що він прийняв
Мене до святих тих країн,
Щоб його я там прославляв!

Я приніс до нього все зло,
Він дав радість в серце моє.
Все гріховне геть відійшло,
Бо Отець спасіння дає!

І тепер радію всі дні,
Що мене мій Батько знайшов,
Він подав прощення мені,
Коли я до нього прийшов!','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6201491'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6201491','Радість у Христі я знайшов','Радість у Христі я знайшов,
Він - моє життя і спокій,
Коли я до Нього прийшов
З того часу Батько Він мій.

З того часу я - Його син
І радію, що він прийняв
Мене до святих тих країн,
Щоб його я там прославляв!

Я приніс до нього все зло,
Він дав радість в серце моє.
Все гріховне геть відійшло,
Бо Отець спасіння дає!

І тепер радію всі дні,
Що мене мій Батько знайшов,
Він подав прощення мені,
Коли я до нього прийшов!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6201491_l1','pisniua_6201491','YouTube','https://www.youtube.com/watch?v=_TJ3Z6Ktlmk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6204042';
DELETE FROM song_versions WHERE song_id = 'pisniua_6204042';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6204042';
DELETE FROM songs WHERE id = 'pisniua_6204042';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6204042','Царю мій, Пане мій',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Царю мій, Пане мій, Ісусе коханий мій,
Заспіває моє серце знов
Про Тебе про ясного, що дав мир і щастя нам,
Про Твою безмежную любов.

Довго блукали ми, слухали лукавого,
Покривилися наші путі
І, коли все гаснуло, зіронькою ясною
Ти зійшов у нашому житті.

Приспів:
Вся слава - Тобі, Вся велич - Тобі,
Лиш Ти Один гідний хвалу всю прийняти,
Ти - Цар над царями, Ти - Пан над панами,
Тебе буду я все життя прославляти!

Царю мій, Пане мій, Ісусе коханий мій,
Я схиляюся до ніг Твоїх
З вічною подякою за ту кров, що капала,
За відкуплення гріхів моїх.

Цар наш, знеславлений був життя позбавлений,
Він там владу пекла зруйнував.
Богом був воскресений, вище всіх піднесений
І навіки нашим Царем став.

Приспів.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6204042'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6204042','Царю мій, Пане мій','Царю мій, Пане мій, Ісусе коханий мій,
Заспіває моє серце знов
Про Тебе про ясного, що дав мир і щастя нам,
Про Твою безмежную любов.

Довго блукали ми, слухали лукавого,
Покривилися наші путі
І, коли все гаснуло, зіронькою ясною
Ти зійшов у нашому житті.

Приспів:
Вся слава - Тобі, Вся велич - Тобі,
Лиш Ти Один гідний хвалу всю прийняти,
Ти - Цар над царями, Ти - Пан над панами,
Тебе буду я все життя прославляти!

Царю мій, Пане мій, Ісусе коханий мій,
Я схиляюся до ніг Твоїх
З вічною подякою за ту кров, що капала,
За відкуплення гріхів моїх.

Цар наш, знеславлений був життя позбавлений,
Він там владу пекла зруйнував.
Богом був воскресений, вище всіх піднесений
І навіки нашим Царем став.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6201644';
DELETE FROM song_versions WHERE song_id = 'pisniua_6201644';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6201644';
DELETE FROM songs WHERE id = 'pisniua_6201644';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6201644','Так давно',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Довго, довго я скитався без Ісуса в темноті
І життям розчарувався, не знаходячи мети,
Я шукав хто допоможе, моїм другом стане хто,
І почув я голос Божий: "Я люблю тебе давно!"

Так давно, так давно
Я люблю тебе давно
О приємний голос Божий
E7
Я люблю тебе давно.

Бог прийняв мене з любов''ю,
Від гріхів звільнив мене,
Благодать Його знайшов я
І подяку склав за все.
І тепер завжди покоюсь
У присутності Його,
Повсякчасно чую голос:
"Я люблю тебе давно!"

О, засмучений мій друже,
До Ісуса поспіши,
Він до тебе небайдужий,
Стане Другом назавжди.
Як покаєшся ти щиро,
Приймеш вірою Його,
То почуєш голос милий:
"Я люблю тебе давно!"','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6201644'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6201644','Так давно','Довго, довго я скитався без Ісуса в темноті
І життям розчарувався, не знаходячи мети,
Я шукав хто допоможе, моїм другом стане хто,
І почув я голос Божий: "Я люблю тебе давно!"

Так давно, так давно
Я люблю тебе давно
О приємний голос Божий
E7
Я люблю тебе давно.

Бог прийняв мене з любов''ю,
Від гріхів звільнив мене,
Благодать Його знайшов я
І подяку склав за все.
І тепер завжди покоюсь
У присутності Його,
Повсякчасно чую голос:
"Я люблю тебе давно!"

О, засмучений мій друже,
До Ісуса поспіши,
Він до тебе небайдужий,
Стане Другом назавжди.
Як покаєшся ти щиро,
Приймеш вірою Його,
То почуєш голос милий:
"Я люблю тебе давно!"');
DELETE FROM song_links WHERE song_id = 'pisniua_6205542';
DELETE FROM song_versions WHERE song_id = 'pisniua_6205542';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6205542';
DELETE FROM songs WHERE id = 'pisniua_6205542';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6205542','Дарунки осені','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Збірка дитячих пісень до свята осені',NULL,'Щоранку ясне сонечко
Так лагідно нам світить
І щиро усміхається нам
Осінь золота.
Як справжня чарівниця,
Закінчила роботу
І щедро так дарує
Усі свої дива!

Приспів:
З малого зернятка -
Стрункий колосок,
З краплинки сонечка -
Солодкий медок,
З малої вітоньки -
Рясний виноград,
Червоні яблучка -
Усе для малят!

Турботива, як матінка,
Як гарна господиня,
Для всіх придбала осінь
Дарунки дорогі.
За смачнії горішки,
За стиглі жовті дині,
За ягідки калинові
Ми дякуєм тобі!

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6205542'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6205542','Дарунки осені','Щоранку ясне сонечко
Так лагідно нам світить
І щиро усміхається нам
Осінь золота.
Як справжня чарівниця,
Закінчила роботу
І щедро так дарує
Усі свої дива!

Приспів:
З малого зернятка -
Стрункий колосок,
З краплинки сонечка -
Солодкий медок,
З малої вітоньки -
Рясний виноград,
Червоні яблучка -
Усе для малят!

Турботива, як матінка,
Як гарна господиня,
Для всіх придбала осінь
Дарунки дорогі.
За смачнії горішки,
За стиглі жовті дині,
За ягідки калинові
Ми дякуєм тобі!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_620555';
DELETE FROM song_versions WHERE song_id = 'pisniua_620555';
DELETE FROM songs_fts WHERE song_id = 'pisniua_620555';
DELETE FROM songs WHERE id = 'pisniua_620555';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_620555','Верба над водою','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Записав на Закарпатті у 1980-х; 2. Туристський пісенник "Де гори Карпати, де Писаний Камінь". - Літо, 1982.',NULL,'Верба над водою,
Коріння в долину;
Що-сь ми й учинила,|(2)|
Що за тобов гину?      |(2)

Я ти не зробила,
Ані мої очі,
То ти учинили,     |(2)|
Твої темні ночі.       |(2)

Фраєрков ти була,
Жонов ти не буду,
За то тя не хочу,  |(2)|
Глядай собі другу.     |(2)

Глядай собі другу,
Я вже собі найшла,
Коли-м під явором, |(2)|
Сиві воли пасла.       |(2)

Волки ся напасли
Сіна зеленого,
Я ся навбіймала,   |(2)|
Личка рум''яного.       |(2)
Акорди:
C
Верба над водою,
Коріння в долину;
Що-сь ми й учинила,    |
C                      |
Що-сь ми й учинила,    |(2)
Що за тобов гину?      |','[''pisni.org.ua'', ''cat:zakarpatski'', ''Закарпатські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_620555'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_620555','Верба над водою','Верба над водою,
Коріння в долину;
Що-сь ми й учинила,|(2)|
Що за тобов гину?      |(2)

Я ти не зробила,
Ані мої очі,
То ти учинили,     |(2)|
Твої темні ночі.       |(2)

Фраєрков ти була,
Жонов ти не буду,
За то тя не хочу,  |(2)|
Глядай собі другу.     |(2)

Глядай собі другу,
Я вже собі найшла,
Коли-м під явором, |(2)|
Сиві воли пасла.       |(2)

Волки ся напасли
Сіна зеленого,
Я ся навбіймала,   |(2)|
Личка рум''яного.       |(2)
Акорди:
C
Верба над водою,
Коріння в долину;
Що-сь ми й учинила,    |
C                      |
Що-сь ми й учинила,    |(2)
Що за тобов гину?      |');
DELETE FROM song_links WHERE song_id = 'pisniua_6205374';
DELETE FROM song_versions WHERE song_id = 'pisniua_6205374';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6205374';
DELETE FROM songs WHERE id = 'pisniua_6205374';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6205374','А пам''ятаєш?','(Місця щасливих людей). Музика: Скрябін Слова: Андрій Кузьменко. Виконує: Скрябін','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'D#
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
DELETE FROM song_links WHERE song_id = 'pisniua_620297';
DELETE FROM song_versions WHERE song_id = 'pisniua_620297';
DELETE FROM songs_fts WHERE song_id = 'pisniua_620297';
DELETE FROM songs WHERE id = 'pisniua_620297';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_620297','Столиця степів','Музика: Анатолій Сердюк Слова: Григорій Лютий','uk','ukraine_1991',NULL,NULL,NULL,NULL,'І нечесані, і голота ми...
Агітують нас, та все ротами!
Ми із Врангелем, чи із Радами?
Кому хліб віддать будем раді ми?

Приспів:
Ти махни мені, гей, отамане,
Як Махно-козак поспита мене.
Як ударить кінь мій копитами,
Волю-вольницю будем пити ми!

Всі, хто пруть по хліб - сила вражая.
Є для красних дріб і для Врангеля!
За гостинці їм - ми сторицею.
Гуляй-Поле, гей,  нам столицею!

Приспів.

Із Гуляй-Поля, з Запоріжжя ми,
Нашій армії - воля дріжжами!
Наша армія тай народная,
Дармоїдам всім неугодная!

Приспів.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_620297'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_620297','Столиця степів','І нечесані, і голота ми...
Агітують нас, та все ротами!
Ми із Врангелем, чи із Радами?
Кому хліб віддать будем раді ми?

Приспів:
Ти махни мені, гей, отамане,
Як Махно-козак поспита мене.
Як ударить кінь мій копитами,
Волю-вольницю будем пити ми!

Всі, хто пруть по хліб - сила вражая.
Є для красних дріб і для Врангеля!
За гостинці їм - ми сторицею.
Гуляй-Поле, гей,  нам столицею!

Приспів.

Із Гуляй-Поля, з Запоріжжя ми,
Нашій армії - воля дріжжами!
Наша армія тай народная,
Дармоїдам всім неугодная!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6203440';
DELETE FROM song_versions WHERE song_id = 'pisniua_6203440';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6203440';
DELETE FROM songs WHERE id = 'pisniua_6203440';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6203440','То остання неділя','Музика: Jerzy Petersburski Слова: Zenon Friedwald. Виконує: Mieczysław Fogg','uk','ukraine_1991',NULL,NULL,'http://www.tekstowo.pl/piosenka,mieczyslaw_fogg,ostatnia_niedziela.html',NULL,'Марно шукати собі поради,
Дійсно, скінчилось все,
Бо прийшов другий, багатший
І ліпший від мене,
Й з тобою вкрав щастя моє!
Маю прохання, може, останнє,
Перше за стільки літ:
Дай мені одну неділю,
Останню неділю,
А потім хай валиться світ!

Приспів:
То остання неділя,
Тепер ми розстанемось,
Тепер ми розійдемось
На вічний час...
То остання неділя,
Подаруй мені, мила,
Ніжний погляд, пестливий,
Останній раз!

Матимеш ще тих неділь чимало,
Що зі мною буде, хто ж то зна?
То остання неділя,
Мої сни, мої мрії,
Моє щастя єдине
Скінчилося!
Що маю робить і куди піду?
Не знаю... Не питай!
Для мене є один вихід,
І іншого нема,
Той вихід... але ж, це після.
Одне важливо - будеш щаслива,
Про мене не гадай.
Ще перед тим, як полинеш,
Як мене покинеш,
Мені одну неділю дай!

Приспів.','[''pisni.org.ua'', ''cat:translations'', ''Переклади іноземних пісень'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6203440'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6203440','То остання неділя','Марно шукати собі поради,
Дійсно, скінчилось все,
Бо прийшов другий, багатший
І ліпший від мене,
Й з тобою вкрав щастя моє!
Маю прохання, може, останнє,
Перше за стільки літ:
Дай мені одну неділю,
Останню неділю,
А потім хай валиться світ!

Приспів:
То остання неділя,
Тепер ми розстанемось,
Тепер ми розійдемось
На вічний час...
То остання неділя,
Подаруй мені, мила,
Ніжний погляд, пестливий,
Останній раз!

Матимеш ще тих неділь чимало,
Що зі мною буде, хто ж то зна?
То остання неділя,
Мої сни, мої мрії,
Моє щастя єдине
Скінчилося!
Що маю робить і куди піду?
Не знаю... Не питай!
Для мене є один вихід,
І іншого нема,
Той вихід... але ж, це після.
Одне важливо - будеш щаслива,
Про мене не гадай.
Ще перед тим, як полинеш,
Як мене покинеш,
Мені одну неділю дай!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6207348';
DELETE FROM song_versions WHERE song_id = 'pisniua_6207348';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6207348';
DELETE FROM songs WHERE id = 'pisniua_6207348';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6207348','Пісня про батька','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://kazkar.at.ua',NULL,'Скільки пісень ми з вами разом
Мамі рідній своїй співали,
А про татка до цього часу
Навіть віршика ще не склали.

Приспів:
Батько може, батько може
Все, що завгодно:
Пливти брасом, гукнуть басом,
Пісні співать!
Батько може, батько може
Буть ким завгодно,
Тільки мамою, тільки мамою
Не може стать!

Батько в домі — і все працює;
Гас горить, і не гасне піч.
Батько в домі завжди керує,
Якщо мама працює в ніч.

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6207348'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6207348','Пісня про батька','Скільки пісень ми з вами разом
Мамі рідній своїй співали,
А про татка до цього часу
Навіть віршика ще не склали.

Приспів:
Батько може, батько може
Все, що завгодно:
Пливти брасом, гукнуть басом,
Пісні співать!
Батько може, батько може
Буть ким завгодно,
Тільки мамою, тільки мамою
Не може стать!

Батько в домі — і все працює;
Гас горить, і не гасне піч.
Батько в домі завжди керує,
Якщо мама працює в ніч.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6198757';
DELETE FROM song_versions WHERE song_id = 'pisniua_6198757';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6198757';
DELETE FROM songs WHERE id = 'pisniua_6198757';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6198757','Посмішка','Музика: Ірина Тарнавська Слова: Т. Демчук. Виконує: Дарина Тихолаз','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Крокую містом сонячним із усмішкою я,
Допомагає скрізь мені ця усмішка моя:
Лиш посміхнусь - в веселу мить похмурий день стає
І радість щедро розлива навкруг тепло своє

Приспів:
Усміхнуся перехожим!
Усміхнуся сонцю й квітам!
Разом з вітерцем привітним
Щастям поділюсь!
Усміхнуся своїм друзям!
Усміхнуся своїм рідним!
Маю я веселу вдачу - нею поділюсь!

Із вітерцем-блакитником кружляю у танку,
На струнах сонячних складу мелодію дзвінку.
Візьму з веселки кольори, все розфарбую я,
Хай барвами яскравими цвіте моя земля!

Приспів.

Із піснею веселою лягаю і встаю,
Артисткою в яскравих снах на сцені я стою,
Манить вогнями Голівуд і мрія є моя,
А поки що до школи знов щодня крокую я.

Приспів. (2)','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6198757'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6198757','Посмішка','Крокую містом сонячним із усмішкою я,
Допомагає скрізь мені ця усмішка моя:
Лиш посміхнусь - в веселу мить похмурий день стає
І радість щедро розлива навкруг тепло своє

Приспів:
Усміхнуся перехожим!
Усміхнуся сонцю й квітам!
Разом з вітерцем привітним
Щастям поділюсь!
Усміхнуся своїм друзям!
Усміхнуся своїм рідним!
Маю я веселу вдачу - нею поділюсь!

Із вітерцем-блакитником кружляю у танку,
На струнах сонячних складу мелодію дзвінку.
Візьму з веселки кольори, все розфарбую я,
Хай барвами яскравими цвіте моя земля!

Приспів.

Із піснею веселою лягаю і встаю,
Артисткою в яскравих снах на сцені я стою,
Манить вогнями Голівуд і мрія є моя,
А поки що до школи знов щодня крокую я.

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_6200252';
DELETE FROM song_versions WHERE song_id = 'pisniua_6200252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6200252';
DELETE FROM songs WHERE id = 'pisniua_6200252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6200252','Осінь блукає в садах','Музика: невідомий Слова: Наталка Білоцерківець. Виконує: Гурт Талісман','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Осінь блукає в садах,
Трави зів''яли в лугах,
Тільки любов, тільки любов,
Веснами квітне в устах. | (2)

В ночі осіннії дні,
Сумно без тебе мені,
Бачу тебе, кличу тебе,
У світанковому сні.     | (2)

Кличу тебе знов і знов,
До зорянистих дібров,
Ти принеси чари весни,
Ті, що дарують любов.   | (2)','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6200252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6200252','Осінь блукає в садах','Осінь блукає в садах,
Трави зів''яли в лугах,
Тільки любов, тільки любов,
Веснами квітне в устах. | (2)

В ночі осіннії дні,
Сумно без тебе мені,
Бачу тебе, кличу тебе,
У світанковому сні.     | (2)

Кличу тебе знов і знов,
До зорянистих дібров,
Ти принеси чари весни,
Ті, що дарують любов.   | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6200252_l1','pisniua_6200252','YouTube','https://www.youtube.com/watch?v=zVRnCKXxaQ8','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6207477';
DELETE FROM song_versions WHERE song_id = 'pisniua_6207477';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6207477';
DELETE FROM songs WHERE id = 'pisniua_6207477';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6207477','Ой піду я скрізь лісами',NULL,'uk','ukr_ssr_1919_1991',NULL,NULL,'1. Пісні УПА / Зібр. і ред. Лавришин З. – Торонто – Львів, 1996-1997. – С. 151.',NULL,'Ой піду я скрізь лісами -
Старі дуби шелестять,
Сухе листя облітає,
Вітри віють ще й шумлять.

Чи йти мені дальше лісом?
Вовчої діри шукать?
На той світ мати родила,
Щоб за волю пострадать.

Мої друзі п''ють, гуляють -
Вони знають, що живуть;
А мені московські дроти
Тільки жалю завдають.

Україно, Україно,
Як я тебе полюбив,
Я за тебе, рідний краю,
Все що мав, тобі віддав.

Віддав я своє здоров''я,
Молоді свої літа,
А як прийдеться, в потребі,
То віддам своє життя.','[''pisni.org.ua'', ''cat:istorychni'', ''cat:povstanski'', ''Історичні пісні'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6207477'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6207477','Ой піду я скрізь лісами','Ой піду я скрізь лісами -
Старі дуби шелестять,
Сухе листя облітає,
Вітри віють ще й шумлять.

Чи йти мені дальше лісом?
Вовчої діри шукать?
На той світ мати родила,
Щоб за волю пострадать.

Мої друзі п''ють, гуляють -
Вони знають, що живуть;
А мені московські дроти
Тільки жалю завдають.

Україно, Україно,
Як я тебе полюбив,
Я за тебе, рідний краю,
Все що мав, тобі віддав.

Віддав я своє здоров''я,
Молоді свої літа,
А як прийдеться, в потребі,
То віддам своє життя.');
DELETE FROM song_links WHERE song_id = 'pisniua_6200297';
DELETE FROM song_versions WHERE song_id = 'pisniua_6200297';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6200297';
DELETE FROM songs WHERE id = 'pisniua_6200297';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6200297','Гуцульські наспіви','Українська народна пісня. Виконує: Подільські музики','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, легойка коломийка,
Легойка, легойка,
Та від тої коломийки
Болить головойка!

Та, як станиш коломийки
Співати, співати,
Затужиш ти та й заплачеш,
Та й станеш думати!','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6200297'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6200297','Гуцульські наспіви','Ой, легойка коломийка,
Легойка, легойка,
Та від тої коломийки
Болить головойка!

Та, як станиш коломийки
Співати, співати,
Затужиш ти та й заплачеш,
Та й станеш думати!');
DELETE FROM song_links WHERE song_id = 'pisniua_6207940';
DELETE FROM song_versions WHERE song_id = 'pisniua_6207940';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6207940';
DELETE FROM songs WHERE id = 'pisniua_6207940';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6207940','Просили батько й мати','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://mxbest.ru',NULL,'Просили батько й мати і я прошу,
Прийти до нас і радість розділить.
Говорять, що по-старому обряду
І серце, і душа чогось болить.

Приспів:
Стеліть доріжку рушниками
У цей щасливий добрий час,
Щоб розділити радість разом з вами,
Ласкаво просимо ми вас!

Навік благословенна ця година
І ніжний спів, і тьохкіт солов''я,
Якщо людина вибрала людину,
Щоб рід людський продовжила вона.

Приспів.

Вже столи накривайте хлібом-сіллю,
Ласкаво усміхається наш дім,
До нас приходьте, гості, на весілля,
Ми побажаєм щастя молодим!

Приспів.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6207940'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6207940','Просили батько й мати','Просили батько й мати і я прошу,
Прийти до нас і радість розділить.
Говорять, що по-старому обряду
І серце, і душа чогось болить.

Приспів:
Стеліть доріжку рушниками
У цей щасливий добрий час,
Щоб розділити радість разом з вами,
Ласкаво просимо ми вас!

Навік благословенна ця година
І ніжний спів, і тьохкіт солов''я,
Якщо людина вибрала людину,
Щоб рід людський продовжила вона.

Приспів.

Вже столи накривайте хлібом-сіллю,
Ласкаво усміхається наш дім,
До нас приходьте, гості, на весілля,
Ми побажаєм щастя молодим!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6208656';
DELETE FROM song_versions WHERE song_id = 'pisniua_6208656';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6208656';
DELETE FROM songs WHERE id = 'pisniua_6208656';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6208656','Лисичка','Музика: Фліт Слова: Фліт. Виконує: Фліт','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Лисичка жила у лісі одна,
Ні з ким не дружила крім їжака,
Найкращі колєги - де він, там вона,
Та раптом нізвідки з''явилась біда:
І світлий ліс вона накрила,
Здригнулась сира земля,
Набрала міць проклята сила,
Розчавила маленьке немовля.

Два серця кричать, долю проклинають,
І очі горять, правди вимагають,
Споріднені душі розірвані навік
І недоречний тут пекельний сміх.

Хто вірить у мрію - її здійснить,
Поки надія в душі тремтить,
Що треба узяла лисичка руда
І в хащу страшенну чкурнула одна,
Де чарівник жив добрий, милий,
Дідусько міг все і вся,
Він повернув малу істоту,
Щоб радість в серцях жила!

Так дружба єднає, те що розірветься,  |
Так справді буває, лихо все минеться, |
Їжак і лисичка вже разом і навік,     |
Лунає в лісі їх веселий сміх!         | (2)

Лунає в лісі сміх!','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6208656'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6208656','Лисичка','Лисичка жила у лісі одна,
Ні з ким не дружила крім їжака,
Найкращі колєги - де він, там вона,
Та раптом нізвідки з''явилась біда:
І світлий ліс вона накрила,
Здригнулась сира земля,
Набрала міць проклята сила,
Розчавила маленьке немовля.

Два серця кричать, долю проклинають,
І очі горять, правди вимагають,
Споріднені душі розірвані навік
І недоречний тут пекельний сміх.

Хто вірить у мрію - її здійснить,
Поки надія в душі тремтить,
Що треба узяла лисичка руда
І в хащу страшенну чкурнула одна,
Де чарівник жив добрий, милий,
Дідусько міг все і вся,
Він повернув малу істоту,
Щоб радість в серцях жила!

Так дружба єднає, те що розірветься,  |
Так справді буває, лихо все минеться, |
Їжак і лисичка вже разом і навік,     |
Лунає в лісі їх веселий сміх!         | (2)

Лунає в лісі сміх!');
DELETE FROM song_links WHERE song_id = 'pisniua_6208374';
DELETE FROM song_versions WHERE song_id = 'pisniua_6208374';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6208374';
DELETE FROM songs WHERE id = 'pisniua_6208374';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6208374','Білий сніг','Українська народна пісня. Виконує: Мирослава Одинська','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Все навколо замело,
А в душі моїй тепло,
Зірка з неба вже горить,
Ось прийшла різдвяна мить.

Приспів:
Сипле, сипле з неба білий сніг,
Хай дарує щастя вам цей рік!
Хай у кожну хату завіта
Щедра доля і любов свята!

У Різдвяну ніч п''янку
Заспіваймо коляду,
На столі смачна кутя,
Тут зібралась вся рідня!

Приспів. (2)','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6208374'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6208374','Білий сніг','Все навколо замело,
А в душі моїй тепло,
Зірка з неба вже горить,
Ось прийшла різдвяна мить.

Приспів:
Сипле, сипле з неба білий сніг,
Хай дарує щастя вам цей рік!
Хай у кожну хату завіта
Щедра доля і любов свята!

У Різдвяну ніч п''янку
Заспіваймо коляду,
На столі смачна кутя,
Тут зібралась вся рідня!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_6208075';
DELETE FROM song_versions WHERE song_id = 'pisniua_6208075';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6208075';
DELETE FROM songs WHERE id = 'pisniua_6208075';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6208075','Балада про синів','Музика: Леонід Подворний Слова: невідомий','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Трьох синочків-ясеночків породила мати,
На відзнаку батько ясена саджав.
Виросталі хлопці у щасливій хаті -
Ясень ясеночка та й випереджав.

Приспів:
Ясени піднялися над хатою,
Мов на чатах спинились вони.
Як ідуть у безсмертя солдатами
Розкажіть, розкажіть ясени.

Трьом синам по рушникові вишивала мати,
Батько із синами сіяв ярину.
Не судилось хлопцям на рушник ставати,
За світ проводжали хлопців на війну...

Приспів.

Скільки літ з війни синочків
Не діждеться мати,
Застеляє очі батькові сльоза.
Щовесни виносять рушники із хати,
Ясенів-синочків та й перев''язать.

Приспів.','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:viyskovi'', ''Пісні з ностальгічними мотивами'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6208075'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6208075','Балада про синів','Трьох синочків-ясеночків породила мати,
На відзнаку батько ясена саджав.
Виросталі хлопці у щасливій хаті -
Ясень ясеночка та й випереджав.

Приспів:
Ясени піднялися над хатою,
Мов на чатах спинились вони.
Як ідуть у безсмертя солдатами
Розкажіть, розкажіть ясени.

Трьом синам по рушникові вишивала мати,
Батько із синами сіяв ярину.
Не судилось хлопцям на рушник ставати,
За світ проводжали хлопців на війну...

Приспів.

Скільки літ з війни синочків
Не діждеться мати,
Застеляє очі батькові сльоза.
Щовесни виносять рушники із хати,
Ясенів-синочків та й перев''язать.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6208075_l1','pisniua_6208075','YouTube','https://www.youtube.com/watch?v=FVtgHR3u4f0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6210644';
DELETE FROM song_versions WHERE song_id = 'pisniua_6210644';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6210644';
DELETE FROM songs WHERE id = 'pisniua_6210644';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6210644','Райдуга','Музика: Зоя Красуляк Слова: Зоя Красуляк','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Хмарка вгору стелиться, наче дим,
Плаче небо дощиком золотим.
Ой, принесло ж літечко нам тепла,
І у небі райдуга розцвіла.

Приспів:
Райдуга, райдуга в барвах золотих,
Радості, радості зичу я для всіх.
Сонце закохано в небі посміхається,
Все про що мріяли нехай Вам збувається!

Вітер повернувся й побіг у гай,
Крикнув до хмаринки він - "Доганяй!"
Як прибіг до райдуги на місток,
Запросив хмаринку він у танок.

Приспів. (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6210644'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6210644','Райдуга','Хмарка вгору стелиться, наче дим,
Плаче небо дощиком золотим.
Ой, принесло ж літечко нам тепла,
І у небі райдуга розцвіла.

Приспів:
Райдуга, райдуга в барвах золотих,
Радості, радості зичу я для всіх.
Сонце закохано в небі посміхається,
Все про що мріяли нехай Вам збувається!

Вітер повернувся й побіг у гай,
Крикнув до хмаринки він - "Доганяй!"
Як прибіг до райдуги на місток,
Запросив хмаринку він у танок.

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6210644_l1','pisniua_6210644','YouTube','https://www.youtube.com/watch?v=t7FLa2FF2AI','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_620252';
DELETE FROM song_versions WHERE song_id = 'pisniua_620252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_620252';
DELETE FROM songs WHERE id = 'pisniua_620252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_620252','Є-є','Музика: Олег Скрипка Слова: Олег Скрипка. Виконує: Воплі Відоплясова','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Море снів незгаданих
Розливає спомини,
Відбиває дні
Майбутніх подій.

4/:--2---0--------------
5/:----------3----2----0

Чомусь було враження,
Щось нездібне вражеє,
Болі в голові краються,
Здається біда.
Є - є.

Кoні - чорні прилади
Налітали, привиди,
Заплітали сни
У пуги міцні.
Після цього злочину
Павуки охочії
Дикі пошуки злі
Ведуть у ночі.
Є! Плетуть у ночі.

Є - є.

Повставали мертві-скажені,
Їли мовчки вовчі ягоди,
Назбирали штучки-витрішки,
Повбивали все, що рухалось.
Потім дещо народилося
З диких покриків із кліроса,
Закрутило, здавлює,
Пораду дає.
Є! Нараду дає.

Є - є.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_620252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_620252','Є-є','Море снів незгаданих
Розливає спомини,
Відбиває дні
Майбутніх подій.

4/:--2---0--------------
5/:----------3----2----0

Чомусь було враження,
Щось нездібне вражеє,
Болі в голові краються,
Здається біда.
Є - є.

Кoні - чорні прилади
Налітали, привиди,
Заплітали сни
У пуги міцні.
Після цього злочину
Павуки охочії
Дикі пошуки злі
Ведуть у ночі.
Є! Плетуть у ночі.

Є - є.

Повставали мертві-скажені,
Їли мовчки вовчі ягоди,
Назбирали штучки-витрішки,
Повбивали все, що рухалось.
Потім дещо народилося
З диких покриків із кліроса,
Закрутило, здавлює,
Пораду дає.
Є! Нараду дає.

Є - є.');
DELETE FROM song_links WHERE song_id = 'pisniua_6212555';
DELETE FROM song_versions WHERE song_id = 'pisniua_6212555';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6212555';
DELETE FROM songs WHERE id = 'pisniua_6212555';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6212555','Дивна квітка','Музика: Руслан Квінта Слова: Віталій Куровський. Виконує: Антоніна Матвієнко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Дивна квітка, знов ти ожила,
Там у небі бачиш два крила,
То моя душа знов до тебе йде,
Шукає шлях у моїх сумних піснях.

Приспів:
Дивна квітка ніжна сама
Дивиться у небо,
Україно, Ти як мама,
Знов я йду до Тебе!
Хмари сонце закривають
Та летить лелека,
Знаю, щастя не буває,
Якщо Ти далеко!

Дивна квітка посеред трави,
Все минеться, тільки ти живи!
Разом будем ми,
Тільки дочекайся і живи,
Українка я завжди!

Приспів. (3)','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6212555'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6212555','Дивна квітка','Дивна квітка, знов ти ожила,
Там у небі бачиш два крила,
То моя душа знов до тебе йде,
Шукає шлях у моїх сумних піснях.

Приспів:
Дивна квітка ніжна сама
Дивиться у небо,
Україно, Ти як мама,
Знов я йду до Тебе!
Хмари сонце закривають
Та летить лелека,
Знаю, щастя не буває,
Якщо Ти далеко!

Дивна квітка посеред трави,
Все минеться, тільки ти живи!
Разом будем ми,
Тільки дочекайся і живи,
Українка я завжди!

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6212555_l1','pisniua_6212555','YouTube','https://www.youtube.com/watch?v=tBSovI-Ov3M','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6212555_l2','pisniua_6212555','YouTube','https://www.youtube.com/watch?v=etNUJV89Wds','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6208991';
DELETE FROM song_versions WHERE song_id = 'pisniua_6208991';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6208991';
DELETE FROM songs WHERE id = 'pisniua_6208991';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6208991','Матері (За все, що маю, дякую тобі,)','Музика: невідомий Слова: Микола Луків','uk','ukraine_1991',NULL,NULL,NULL,NULL,'За все, що маю, дякую тобі,
За все, що маю і, що буду мати...
Ночами сняться зорі голубі
І вишні білі на причілку хати.

Немов пилину, світ мене крутив,
Ловив я мрію і мету високу.
Пробач мені, що тяжко завинив, -
Лишив тебе на старість одиноку.

Та й що я знав, коли із дому йшов,
Хіба я міг в ту пору зрозуміти,
Яка святиня - мамина любов,
Яка то мука - як лишають діти.

Аж отепер, як став я батьком сам
І час прийшов стрічать і проводжати,
Я знаю ціну тим святим сльозам,
Які тобі судилося спізнати.

Тому і сняться зорі голубі
І вишні білі на причілку хати.
Тому спішу подякувать тобі
За все, що маю і, що буду мати!','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6208991'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6208991','Матері (За все, що маю, дякую тобі,)','За все, що маю, дякую тобі,
За все, що маю і, що буду мати...
Ночами сняться зорі голубі
І вишні білі на причілку хати.

Немов пилину, світ мене крутив,
Ловив я мрію і мету високу.
Пробач мені, що тяжко завинив, -
Лишив тебе на старість одиноку.

Та й що я знав, коли із дому йшов,
Хіба я міг в ту пору зрозуміти,
Яка святиня - мамина любов,
Яка то мука - як лишають діти.

Аж отепер, як став я батьком сам
І час прийшов стрічать і проводжати,
Я знаю ціну тим святим сльозам,
Які тобі судилося спізнати.

Тому і сняться зорі голубі
І вишні білі на причілку хати.
Тому спішу подякувать тобі
За все, що маю і, що буду мати!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6208991_l1','pisniua_6208991','YouTube','https://www.youtube.com/watch?v=fOq8R2vJisU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6211353';
DELETE FROM song_versions WHERE song_id = 'pisniua_6211353';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6211353';
DELETE FROM songs WHERE id = 'pisniua_6211353';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6211353','Всі жінки носили воду','Музика: Юрій Рожков Слова: Михайло Шевченко. Виконує: Юрій Рожков','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Крешуть коні блискавиці
Та підкови марно б''ють.
Козаку ж подай напиться,
Із вишневої криниці
Козаки так спрагло п''ють.
Ех, задивлялися на вроду
На Дніпрі і на Дону.
Всі жінки носили воду,
А співали про одну!

Надало ж мені схилиться
Із столітнього сідла,
Подала води напиться
Із вишневої криниці
Й тихо очі відвела.
Ех, задивився я на вроду
На Дніпрі чи на Дону.
Всі жінки носили воду,
А співаю про одну!

Цвіт вишневий б''ють морози,
Б''ють підкови сірий брук.
Не заб''ють мене в дорозі -
Я на рідному порозі
Із твоїх нап''юся рук.
Ех, задивляються на вроду
На Дніпрі чи на Дону.
Всі жінки носили воду,
А співають про одну!','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6211353'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6211353','Всі жінки носили воду','Крешуть коні блискавиці
Та підкови марно б''ють.
Козаку ж подай напиться,
Із вишневої криниці
Козаки так спрагло п''ють.
Ех, задивлялися на вроду
На Дніпрі і на Дону.
Всі жінки носили воду,
А співали про одну!

Надало ж мені схилиться
Із столітнього сідла,
Подала води напиться
Із вишневої криниці
Й тихо очі відвела.
Ех, задивився я на вроду
На Дніпрі чи на Дону.
Всі жінки носили воду,
А співаю про одну!

Цвіт вишневий б''ють морози,
Б''ють підкови сірий брук.
Не заб''ють мене в дорозі -
Я на рідному порозі
Із твоїх нап''юся рук.
Ех, задивляються на вроду
На Дніпрі чи на Дону.
Всі жінки носили воду,
А співають про одну!');
DELETE FROM song_links WHERE song_id = 'pisniua_6214656';
DELETE FROM song_versions WHERE song_id = 'pisniua_6214656';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6214656';
DELETE FROM songs WHERE id = 'pisniua_6214656';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6214656','А мама тихо говорила','Музика: Волошки Слова: Волошки. Виконує: Волошки','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'А мама тихо говорила,
Щоб вечорами не ходили,
І гарних хлопців кучерявих,
Їм голови, щоб не крутили.
А ми маму не слухали,
Кохання квітів понюхали,
І від того дурману
Забули накази мами.

Ой, мамо, мамо, мамо, мамо,   |
Ми від кохання стали п''яні!   |
Воно бентежить, мабуть, груди |
І душу всю нашу голубить!     | (2)

А ти маму не слухай,
Мене ти нижче не рухай,
Згадай, колись як за тобою
Ходили хлопці юрбою.
І ти маму не слухала,
Кохання квітів понюхала,
І від того дурману
Забула всі накази мами.

Ой, мамо, ти казала, мамо,    |
Я від кохання стала п''яна,    |
Воно бентежить, мабуть, груди |
І душу всю мою голубить!      | (2)

Тепер до всіх своїх говорить:
Не розгулюй сильно доню,
Бо гарні хлопці всі зрадливі,
Лише слова у них красиві.
Ти тільки маму послухай,
Кохання квітів не нюхай,
Бо від того дурману
Забудеш накази мами.

І не кажи, ой, мамо, мамо,    |
Що від кохання ти вже п''яна   |
І що воно бентежить груди,    |
І душу всю твою голубить!     | (2)','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6214656'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6214656','А мама тихо говорила','А мама тихо говорила,
Щоб вечорами не ходили,
І гарних хлопців кучерявих,
Їм голови, щоб не крутили.
А ми маму не слухали,
Кохання квітів понюхали,
І від того дурману
Забули накази мами.

Ой, мамо, мамо, мамо, мамо,   |
Ми від кохання стали п''яні!   |
Воно бентежить, мабуть, груди |
І душу всю нашу голубить!     | (2)

А ти маму не слухай,
Мене ти нижче не рухай,
Згадай, колись як за тобою
Ходили хлопці юрбою.
І ти маму не слухала,
Кохання квітів понюхала,
І від того дурману
Забула всі накази мами.

Ой, мамо, ти казала, мамо,    |
Я від кохання стала п''яна,    |
Воно бентежить, мабуть, груди |
І душу всю мою голубить!      | (2)

Тепер до всіх своїх говорить:
Не розгулюй сильно доню,
Бо гарні хлопці всі зрадливі,
Лише слова у них красиві.
Ти тільки маму послухай,
Кохання квітів не нюхай,
Бо від того дурману
Забудеш накази мами.

І не кажи, ой, мамо, мамо,    |
Що від кохання ти вже п''яна   |
І що воно бентежить груди,    |
І душу всю твою голубить!     | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_6212252';
DELETE FROM song_versions WHERE song_id = 'pisniua_6212252';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6212252';
DELETE FROM songs WHERE id = 'pisniua_6212252';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6212252','Торжество любові','Музика: Євген Заставний Слова: Т. Василько','uk','ukraine_1991',NULL,NULL,'Авторське подання: Т. Василько, Є. Заставний. Клавішами весен. Львів: Ініціатива, 2011. - 56 с.',NULL,'Цвіте черешня, голуби воркують,
І очі сині - сині від небес -
Любов у світі нині торжествує:
Христос Воскрес! - Воістину Воскрес!

Приспів:
Любові світ завжди такий прекрасний,
Немов в обіймах матері дитя,
Забудь образи - і душа воскресне
Для світлих втіх, любові, для життя!

Рожеві квіти, сонце на долоні -
Грайливої природи щедрий сплеск -
І линуть з неба звуки співодзвонні:
Христос Воскрес! - Воістину Воскрес!

Приспів.

Коли весна, коли на серці спокій,
Душа відкрита для земних чудес,
І звідусіль, мов щиросердна сповідь:
Христос Воскрес! - Воістину Воскрес!

Приспів.','[''pisni.org.ua'', ''cat:voskresni'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6212252'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6212252','Торжество любові','Цвіте черешня, голуби воркують,
І очі сині - сині від небес -
Любов у світі нині торжествує:
Христос Воскрес! - Воістину Воскрес!

Приспів:
Любові світ завжди такий прекрасний,
Немов в обіймах матері дитя,
Забудь образи - і душа воскресне
Для світлих втіх, любові, для життя!

Рожеві квіти, сонце на долоні -
Грайливої природи щедрий сплеск -
І линуть з неба звуки співодзвонні:
Христос Воскрес! - Воістину Воскрес!

Приспів.

Коли весна, коли на серці спокій,
Душа відкрита для земних чудес,
І звідусіль, мов щиросердна сповідь:
Христос Воскрес! - Воістину Воскрес!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_6207491';
DELETE FROM song_versions WHERE song_id = 'pisniua_6207491';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6207491';
DELETE FROM songs WHERE id = 'pisniua_6207491';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6207491','Весняний раночок','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'1. Пісні УПА / Зібр. і ред. Лавришин З. – Торонто – Львів, 1996-1997. – С. 88.',NULL,'Весняний раночок легесенький вітер,
Здалека він дише - ген, ген...
Спить нарід спокійно, знесилений працею,
Собаки звіщають злий день.

Здалека почули гудіння машини,
Що везли незнаних катів -
Забрали родини... жаль серце стискає,
Що вже не побачиш братів.

Прощались родини з своїми хатами,
Де жили весело вони -
На старість недоля забирає (і)з хати -
Везе у далекі Сибіри:

Де сильні морози, де вітер лиш свище,
Де гине український люд.
Всесильний наш Боже, зніми з нас окови
І дай нам заплату за труд.

Звільни батьківщину з червоного пекла,
Із кігтів проклятих катів -
Бо вже час приходить скинути кайдани
Із наших закутих братів.

Затих соловейко, затихла зозуля,
Земля ся здригнула уся
Як сльози невинних річкою спливали
Малесеньким дітям з лиця.','[''pisni.org.ua'', ''cat:istorychni'', ''cat:povstanski'', ''Історичні пісні'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6207491'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6207491','Весняний раночок','Весняний раночок легесенький вітер,
Здалека він дише - ген, ген...
Спить нарід спокійно, знесилений працею,
Собаки звіщають злий день.

Здалека почули гудіння машини,
Що везли незнаних катів -
Забрали родини... жаль серце стискає,
Що вже не побачиш братів.

Прощались родини з своїми хатами,
Де жили весело вони -
На старість недоля забирає (і)з хати -
Везе у далекі Сибіри:

Де сильні морози, де вітер лиш свище,
Де гине український люд.
Всесильний наш Боже, зніми з нас окови
І дай нам заплату за труд.

Звільни батьківщину з червоного пекла,
Із кігтів проклятих катів -
Бо вже час приходить скинути кайдани
Із наших закутих братів.

Затих соловейко, затихла зозуля,
Земля ся здригнула уся
Як сльози невинних річкою спливали
Малесеньким дітям з лиця.');
DELETE FROM song_links WHERE song_id = 'pisniua_62144';
DELETE FROM song_versions WHERE song_id = 'pisniua_62144';
DELETE FROM songs_fts WHERE song_id = 'pisniua_62144';
DELETE FROM songs WHERE id = 'pisniua_62144';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_62144','Україна','Музика: Тарас Петриненко Слова: Тарас Петриненко. Виконує: Тарас Петриненко, С.К.А.Й.','uk','ukraine_1991',NULL,NULL,'1. Співаник для таборів Марійської Дружини','Тут подано дуже спрощений варіант акордів до пісні. У 2-му рядку приспіву акорди не зовсім правильні - потребують уточнення. Прошу дивитись посилання "Інші варіянти цієї пісні". Акорди (основний варіант) надав Taras Hryvul. Акорди (варіант 2) - із джерела 1; ці акорди потребують доробки.','Дороги іншої не треба,
Поки зорить Чумацький Шлях.
Я йду від тебе і до тебе
По золотих твоїх стежках.
Мені не можна не любити,
Тобі не можна не цвісти.
Лиш доти варто в світі жити,
Поки живеш і квітнеш ти.
Приспів:
Україно, Україно!
Після далечі доріг
Вірне серце твого сина
я кладу тобі до ніг.
Бо ми кохаєм до нестями,
І ще не скоро наш кінець.
Ще може нашими серцями
Розпалим тисячі сердець.
Ще наша свічка не згоріла,
Ще наша молодість при нас.
А те, чи праве наше діло -
Те скажуть люди, скаже час.
Акорди (варіант 2):
Дороги іншої не треба,
Поки зорить Чумацький Шлях.
Я йду від тебе і до тебе
По золотих твоїх стежках.
Мені не можна не любити,
Тобі не можна не цвісти.
Лиш доти варто в світі жити,
Поки живеш і квітнеш ти.
Приспів:
Україно, Україно!
Після далечі доріг
Вірне серце твого сина
я кладу тобі до ніг.
Акорди (варіант 3, надав Михайло Романишин):
приспів:
другий приспів:
Акорди (варіант 4, надав Святослав Адепт та Nash-user):
Dadd9:
I  II  III IV
---|---|-0-|---|
---|-0-|---|---|
---|---|---|-0-|
-------x-------|
Bm7-5:
I  II  III IV
-0-|---|---|---|
---|---|-0-|---|
---|-0-|---|---|
---|-0-|---|---|
-------x-------|
Dmadd9:
I  II  III IV
---|---|-0-|---|
---|-0-|---|---|
---|---|-0-|---|
-------x-------|
-------x-------|
Вступ:
-------5--2---------------5--2--------------5--3---------------5--3-----------
----2-------2--4--------2------2--4-------2-------2--4-------2-------2--4-----
-2---------------2----2--------------2--4--------------4---3---------------3--
Дороги іншої не треба,
Поки зорить Чумацький Шлях.
Я йду від тебе і до тебе
По золотих твоїх стежках.
Мені не можна не любити,
Тобі не можна не цвісти.
Лиш доти варто в світі жити,
Поки живеш і квітнеш ти.
Dadd9 Dmadd9
Dmadd9
Приспів:
Україно, Україно!
Після далечі доріг
Вірне серце твого сина
я кладу тобі до ніг.
--10---9---7--------------
--10---10--10---10--------
--10---9---10---10--------
Закінчення:
----------------------------------      -------------------------------------5--
----------------2--5-----2--------      --------------2--5--------2----2--5-----
-------2-----2--------------4--2--      --------2---2-------2--2----2-----------
-2--2-----2----------------------- (x2) --2--2----2-----------------------------
----------------------------------      ----------------------------------------
----------------------------------      ----------------------------------------','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_62144'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_62144','Україна','Дороги іншої не треба,
Поки зорить Чумацький Шлях.
Я йду від тебе і до тебе
По золотих твоїх стежках.
Мені не можна не любити,
Тобі не можна не цвісти.
Лиш доти варто в світі жити,
Поки живеш і квітнеш ти.
Приспів:
Україно, Україно!
Після далечі доріг
Вірне серце твого сина
я кладу тобі до ніг.
Бо ми кохаєм до нестями,
І ще не скоро наш кінець.
Ще може нашими серцями
Розпалим тисячі сердець.
Ще наша свічка не згоріла,
Ще наша молодість при нас.
А те, чи праве наше діло -
Те скажуть люди, скаже час.
Акорди (варіант 2):
Дороги іншої не треба,
Поки зорить Чумацький Шлях.
Я йду від тебе і до тебе
По золотих твоїх стежках.
Мені не можна не любити,
Тобі не можна не цвісти.
Лиш доти варто в світі жити,
Поки живеш і квітнеш ти.
Приспів:
Україно, Україно!
Після далечі доріг
Вірне серце твого сина
я кладу тобі до ніг.
Акорди (варіант 3, надав Михайло Романишин):
приспів:
другий приспів:
Акорди (варіант 4, надав Святослав Адепт та Nash-user):
Dadd9:
I  II  III IV
---|---|-0-|---|
---|-0-|---|---|
---|---|---|-0-|
-------x-------|
Bm7-5:
I  II  III IV
-0-|---|---|---|
---|---|-0-|---|
---|-0-|---|---|
---|-0-|---|---|
-------x-------|
Dmadd9:
I  II  III IV
---|---|-0-|---|
---|-0-|---|---|
---|---|-0-|---|
-------x-------|
-------x-------|
Вступ:
-------5--2---------------5--2--------------5--3---------------5--3-----------
----2-------2--4--------2------2--4-------2-------2--4-------2-------2--4-----
-2---------------2----2--------------2--4--------------4---3---------------3--
Дороги іншої не треба,
Поки зорить Чумацький Шлях.
Я йду від тебе і до тебе
По золотих твоїх стежках.
Мені не можна не любити,
Тобі не можна не цвісти.
Лиш доти варто в світі жити,
Поки живеш і квітнеш ти.
Dadd9 Dmadd9
Dmadd9
Приспів:
Україно, Україно!
Після далечі доріг
Вірне серце твого сина
я кладу тобі до ніг.
--10---9---7--------------
--10---10--10---10--------
--10---9---10---10--------
Закінчення:
----------------------------------      -------------------------------------5--
----------------2--5-----2--------      --------------2--5--------2----2--5-----
-------2-----2--------------4--2--      --------2---2-------2--2----2-----------
-2--2-----2----------------------- (x2) --2--2----2-----------------------------
----------------------------------      ----------------------------------------
----------------------------------      ----------------------------------------');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_62144_l1','pisniua_62144','YouTube','https://www.youtube.com/watch?v=Ys943plowbA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_62144_l2','pisniua_62144','YouTube','https://www.youtube.com/watch?v=dUpTjDqjQoo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_62144_l3','pisniua_62144','YouTube','https://www.youtube.com/watch?v=ohyLvAJhKck','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_62144_l4','pisniua_62144','YouTube','https://www.youtube.com/watch?v=SFf8-CBNYH8','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_62144_l5','pisniua_62144','YouTube','https://www.youtube.com/watch?v=uf1-K6F7x3w','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_62144_l6','pisniua_62144','YouTube','https://www.youtube.com/watch?v=1WmjjGZHotk','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_62144_l7','pisniua_62144','YouTube','https://www.youtube.com/watch?v=sw8KOg1FoFA','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_62144_l8','pisniua_62144','YouTube','https://www.youtube.com/watch?v=ND2qcCsGW9Q','video',NULL,8);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_62144_l9','pisniua_62144','YouTube','https://www.youtube.com/watch?v=wV17LSI_ySc','video',NULL,9);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_62144_l10','pisniua_62144','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,10);
DELETE FROM song_links WHERE song_id = 'pisniua_6203297';
DELETE FROM song_versions WHERE song_id = 'pisniua_6203297';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6203297';
DELETE FROM songs WHERE id = 'pisniua_6203297';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6203297','Новорічна','Музика: Олександр Іващук Слова: Олександр Іващук. Виконує: Опіум','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Знову рік промайнув, прокотився -
Хтось звернув, ну а хтось залишився,
Щось прибуло, а щось ми віддали -
Сподіваюсь печалі.
Сніг на шибку кладе візерунки,
А в думках одні лише подарунки
І не хочу ні на які Гаваї -
Хочу, щоб ялинки нам наливали!

Приспів:
В Новий рік -
Шампанське і мартіні,
Снігурки у бікіні,
В ялинок третій розмір!..

І у ці новорічні морози
Ми зустрінемо Діда Мороза,
Миколая і доброго Санту -
Видно нам його підсунуло НАТО.
Ми гітари всі разом підлаштуєм,
Заспіваєм, ой, як заколядуєм -
Хай почують і на другому боці,
Щоб жилось нам краще в Новому році!

Приспів.

В Новий рік -
Шампанське і мартіні,
Снігурки у бікіні,
Ялинки житні з медом!..

Сніг на шибці плете візерунки
І розгорнуті давно подарунки,
На усю стіну автограф від Санти,
Ще й яскравий слід чиєїсь помади...
А сніжинки так бадьоро вальсують
І похміллям в моїх скронях пульсують,
Я дивлюсь на них і млію в проханні -
Щоб цей рік для нас всіх був не останнім!

В Новий рік -
Шампанське і мартіні,
Снігурки без бікіні,
В ялинок третій розмір!..
Новий рік -
Шампанське і мартіні,
Снігурки без бікіні,
Ялинки житні з медом!..','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6203297'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6203297','Новорічна','Знову рік промайнув, прокотився -
Хтось звернув, ну а хтось залишився,
Щось прибуло, а щось ми віддали -
Сподіваюсь печалі.
Сніг на шибку кладе візерунки,
А в думках одні лише подарунки
І не хочу ні на які Гаваї -
Хочу, щоб ялинки нам наливали!

Приспів:
В Новий рік -
Шампанське і мартіні,
Снігурки у бікіні,
В ялинок третій розмір!..

І у ці новорічні морози
Ми зустрінемо Діда Мороза,
Миколая і доброго Санту -
Видно нам його підсунуло НАТО.
Ми гітари всі разом підлаштуєм,
Заспіваєм, ой, як заколядуєм -
Хай почують і на другому боці,
Щоб жилось нам краще в Новому році!

Приспів.

В Новий рік -
Шампанське і мартіні,
Снігурки у бікіні,
Ялинки житні з медом!..

Сніг на шибці плете візерунки
І розгорнуті давно подарунки,
На усю стіну автограф від Санти,
Ще й яскравий слід чиєїсь помади...
А сніжинки так бадьоро вальсують
І похміллям в моїх скронях пульсують,
Я дивлюсь на них і млію в проханні -
Щоб цей рік для нас всіх був не останнім!

В Новий рік -
Шампанське і мартіні,
Снігурки без бікіні,
В ялинок третій розмір!..
Новий рік -
Шампанське і мартіні,
Снігурки без бікіні,
Ялинки житні з медом!..');
DELETE FROM song_links WHERE song_id = 'pisniua_6216195';
DELETE FROM song_versions WHERE song_id = 'pisniua_6216195';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6216195';
DELETE FROM songs WHERE id = 'pisniua_6216195';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6216195','Христос Воскрес!','Слова: Т. Василько','uk','ukraine_1991',NULL,NULL,'http://who-is-who.com.ua',NULL,'Цвіте черешня, голуби воркують,
І очі сині - сині від небес -
Любов у світі нині торжествує:
Христос Воскрес! - Воістину Воскрес!

Приспів:
Любові світ завжди такий прекрасний,
Немов в обіймах матері дитя,
Забудь образи - і душа воскресне
Для світлих втіх, любові, для життя!

Рожеві квіти, сонце на долоні -
Грайливої природи щедрий сплеск -
І линуть з неба звуки співодзвонні:
Христос Воскрес! - Воістину Воскрес!

Приспів.

Коли весна, коли на серці спокій,
Душа відкрита для земних чудес,
І звідусіль, мов щиросердна сповідь:
Христос Воскрес! - Воістину Воскрес!

Приспів.','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:voskresni'', ''Церковні пісні'', ''Воскресні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6216195'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6216195','Христос Воскрес!','Цвіте черешня, голуби воркують,
І очі сині - сині від небес -
Любов у світі нині торжествує:
Христос Воскрес! - Воістину Воскрес!

Приспів:
Любові світ завжди такий прекрасний,
Немов в обіймах матері дитя,
Забудь образи - і душа воскресне
Для світлих втіх, любові, для життя!

Рожеві квіти, сонце на долоні -
Грайливої природи щедрий сплеск -
І линуть з неба звуки співодзвонні:
Христос Воскрес! - Воістину Воскрес!

Приспів.

Коли весна, коли на серці спокій,
Душа відкрита для земних чудес,
І звідусіль, мов щиросердна сповідь:
Христос Воскрес! - Воістину Воскрес!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_620593';
DELETE FROM song_versions WHERE song_id = 'pisniua_620593';
DELETE FROM songs_fts WHERE song_id = 'pisniua_620593';
DELETE FROM songs WHERE id = 'pisniua_620593';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_620593','Ой чути, чути ревуть гармати','Українська народна пісня','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'Записав наприкінці 1980-х на Львівщині.','Темп маршовий.','Ой чути, чути ревуть гармати,
Ой чути, чути уже ревуть,
А битим шляхом по Україні     |
Стрільці до бою вже ідуть.    | (2)

А там прощає вже мати сина,
А там прощає вже брат сестру,
А там прощає козак дівчину    |
Навіки вірнує свою.           | (2)

Виїхав козак у чисте поле,-
Назустріч йому вороги,
Ой коню, коню, вороний коню,  |
Тепер розстанемося ми.        | (2)

А гостра куля прошила груди
І кров зросила навкруг траву
А товариші похоронили         |
Тай насипали могилу.          | (2)

Тай поставили хрест березовий,
Сотенний букви написав:
Тут спочиває герой Вкраїни    |
Провідник Славко-партизан.    | (2)','[''pisni.org.ua'', ''cat:istorychni'', ''cat:rekrutski'', ''cat:strilecki'', ''Історичні пісні'', ''Рекрутські пісні'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_620593'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_620593','Ой чути, чути ревуть гармати','Ой чути, чути ревуть гармати,
Ой чути, чути уже ревуть,
А битим шляхом по Україні     |
Стрільці до бою вже ідуть.    | (2)

А там прощає вже мати сина,
А там прощає вже брат сестру,
А там прощає козак дівчину    |
Навіки вірнує свою.           | (2)

Виїхав козак у чисте поле,-
Назустріч йому вороги,
Ой коню, коню, вороний коню,  |
Тепер розстанемося ми.        | (2)

А гостра куля прошила груди
І кров зросила навкруг траву
А товариші похоронили         |
Тай насипали могилу.          | (2)

Тай поставили хрест березовий,
Сотенний букви написав:
Тут спочиває герой Вкраїни    |
Провідник Славко-партизан.    | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_620593_l1','pisniua_620593','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_620570';
DELETE FROM song_versions WHERE song_id = 'pisniua_620570';
DELETE FROM songs_fts WHERE song_id = 'pisniua_620570';
DELETE FROM songs WHERE id = 'pisniua_620570';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_620570','Квітка ***','Музика: Святослав Вакарчук Слова: Гурт "Океан Ельзи". Виконує: Гурт "Океан Ельзи"','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Вступ : Am(V) Em(VII) Dm(V)Em(VII) x 2

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
DELETE FROM song_links WHERE song_id = 'pisniua_6217673';
DELETE FROM song_versions WHERE song_id = 'pisniua_6217673';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6217673';
DELETE FROM songs WHERE id = 'pisniua_6217673';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6217673','Вальс лісової школи','Музика: ст. пл. О. Яворський Слова: ст. пл. скоб А. Заярнюк','uk','ukraine_1991',NULL,NULL,NULL,'Пісня ЛШ-25','Приїхав ти на неї без вагань,
Чекав здійснення своїх сподівань,
Хотів дізнатись, що є Булава,
Так почалася Школа Лісова.

Приспів:
Друзі твої, старі і нові
Присняться тобі колись уві сні,
І ти почуєш пісеньку свою,
І пригадаєш Школу Лісову.

Про що тобі говорить темний бір,
І шепче вітерець з далеких гір,
Про що шумить під сонечком трава,
Коли минає Школа Лісова?

Приспів.

По різних таборах будемо ми,
У різні боки рознесуть вітри,
Та будемо ми добра булава,
Бо є на світі Школа Лісова.

Приспів.','[''pisni.org.ua'', ''cat:plastovi'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6217673'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6217673','Вальс лісової школи','Приїхав ти на неї без вагань,
Чекав здійснення своїх сподівань,
Хотів дізнатись, що є Булава,
Так почалася Школа Лісова.

Приспів:
Друзі твої, старі і нові
Присняться тобі колись уві сні,
І ти почуєш пісеньку свою,
І пригадаєш Школу Лісову.

Про що тобі говорить темний бір,
І шепче вітерець з далеких гір,
Про що шумить під сонечком трава,
Коли минає Школа Лісова?

Приспів.

По різних таборах будемо ми,
У різні боки рознесуть вітри,
Та будемо ми добра булава,
Бо є на світі Школа Лісова.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6217673_l1','pisniua_6217673','YouTube','https://www.youtube.com/watch?v=C-X3wuIWlqQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6214673';
DELETE FROM song_versions WHERE song_id = 'pisniua_6214673';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6214673';
DELETE FROM songs WHERE id = 'pisniua_6214673';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6214673','Мамине свято','Музика: Анна Олєйнікова Слова: Юлія Михайленко. Виконує: Дарина Бондар','uk','ukraine_1991',NULL,NULL,'http://www.uaua.info',NULL,'Нарешті вже веснонька люба прийшла
І мамине свято до нас принесла.
Це мамине свято, це мамине свято,
Це мамине свято весна принесла
У теплий святковий і сонячний день.

Приспів:
Ми рідним матусям співаєм пісень,
Ми рідним матусям співаєм пісень,
Ми рідним матусям, ласкавим матусям,
Ласкавим матусям співаєм пісень.

Здоров''я і щастя бажаємо їм,
І квіти весняні даруєм всім.
І квіти весняні, і квіти весняні,
І квіти духмяні даруємо всім.

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6214673'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6214673','Мамине свято','Нарешті вже веснонька люба прийшла
І мамине свято до нас принесла.
Це мамине свято, це мамине свято,
Це мамине свято весна принесла
У теплий святковий і сонячний день.

Приспів:
Ми рідним матусям співаєм пісень,
Ми рідним матусям співаєм пісень,
Ми рідним матусям, ласкавим матусям,
Ласкавим матусям співаєм пісень.

Здоров''я і щастя бажаємо їм,
І квіти весняні даруєм всім.
І квіти весняні, і квіти весняні,
І квіти духмяні даруємо всім.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6214673_l1','pisniua_6214673','YouTube','https://www.youtube.com/watch?v=JOdQGYfBZSg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6219454';
DELETE FROM song_versions WHERE song_id = 'pisniua_6219454';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6219454';
DELETE FROM songs WHERE id = 'pisniua_6219454';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6219454','Мамині яблуні','(Біла хата). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://www.midi.ru',NULL,'Де Рось і Росава біжать у Дніпро,
Між ними лежить моє рідне село.
А там біла хата стоїть край села,  |
Де мати сумує, мене вигляда...     | (2)

А мама мене виглядає щодня,
Вже з яблунь сухе обламала гілля,
І яблуні білі цвітуть під вікном,  |
Як мамині скроні, що сиві давно... | (2)

Ой, мамо-матусю, ти так не журись,
А краще у небо ясне подивись,
Там весну для тебе несуть журавлі, |
І я з ними лину на білім крилі!    | (2)

Де Рось і Русява біжать у Дніпро,
Між ними лежить моє рідне село.
А там біла хата стоїть край села,  |
Де мати сумує, мене вигляда...     | (2)','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:pro-batkiv'', ''Пісні з ностальгічними мотивами'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6219454'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6219454','Мамині яблуні','Де Рось і Росава біжать у Дніпро,
Між ними лежить моє рідне село.
А там біла хата стоїть край села,  |
Де мати сумує, мене вигляда...     | (2)

А мама мене виглядає щодня,
Вже з яблунь сухе обламала гілля,
І яблуні білі цвітуть під вікном,  |
Як мамині скроні, що сиві давно... | (2)

Ой, мамо-матусю, ти так не журись,
А краще у небо ясне подивись,
Там весну для тебе несуть журавлі, |
І я з ними лину на білім крилі!    | (2)

Де Рось і Русява біжать у Дніпро,
Між ними лежить моє рідне село.
А там біла хата стоїть край села,  |
Де мати сумує, мене вигляда...     | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6219454_l1','pisniua_6219454','YouTube','https://www.youtube.com/watch?v=7l8NcES8Y_0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6220246';
DELETE FROM song_versions WHERE song_id = 'pisniua_6220246';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6220246';
DELETE FROM songs WHERE id = 'pisniua_6220246';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6220246','Дві лебідки','Музика: Тетяна Кисленко Слова: Т. Василько','uk','ukraine_before_1917',NULL,NULL,'Авторське подання: Т. Василько. Моя пісня. – Львів:Сполом, 2004. – 120 с.',NULL,'Дві лебідки, дві лебідки,
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
DELETE FROM song_links WHERE song_id = 'pisniua_6218899';
DELETE FROM song_versions WHERE song_id = 'pisniua_6218899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6218899';
DELETE FROM songs WHERE id = 'pisniua_6218899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6218899','Бузьку, принеси Гануську','Музика: Михайло Хома, Олег Турко Слова: Михайло Хома, Олег Турко. Виконує: DZIDZIO','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Запитала внучка: де беруться діти?
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
DELETE FROM song_links WHERE song_id = 'pisniua_621178';
DELETE FROM song_versions WHERE song_id = 'pisniua_621178';
DELETE FROM songs_fts WHERE song_id = 'pisniua_621178';
DELETE FROM songs WHERE id = 'pisniua_621178';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_621178','Чи це ж тая криниченька','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Чи це ж тая криниченька,
Що голуб купався?
Гей, гей, гей!
Що голуб купався.

Чи це ж тая дівчинонька,
Що я женихався?
Гей, гей, гей!
Що я женихався.

Чи це ж тая криниченька,
Що я воду пив?
Гей, гей, гей!
Що я воду пив.

Чи це ж тая дівчинонька,
Що я полюбив?
Гей, гей, гей!
Що я полюбив.

Ой це ж тая криниченька,
Те ж саме відро.
Гей, гей, гей!
Те ж саме відро.

А вже мене дівчинонька
Забула давно.
Гей, гей, гей!
Забула давно.

Вже ж до тої криниченьки
Стежки заросли.
Гей, гей, гей!
Стежки заросли.

Та вже ж мою дівчиноньку
Сватати прийшли.
Гей, гей, гей!
Сватати прийшли.

Уже ж з тої криниченьки
Орли воду п''ють.
Гей, гей, гей!
Орли воду п''ють.

Уже ж мою дівчиноньку
До вінця ведуть!
Гей, гей, гей!
До вінця ведуть.

Один бере за рученьку,
Другий за рукав.
Гей, гей, гей!
Другий за рукав.

А я стою, серце болить —
Любив, та не взяв!
Гей, гей, гей!
Любив, та не взяв.

Засипало криниченьку
Та жовтим піском.
Гей, гей, гей!
Та жовтим піском.

Повінчали дівчиноньку
З іншим козаком!
Гей, гей, гей!
З іншим козаком.','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_621178'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_621178','Чи це ж тая криниченька','Чи це ж тая криниченька,
Що голуб купався?
Гей, гей, гей!
Що голуб купався.

Чи це ж тая дівчинонька,
Що я женихався?
Гей, гей, гей!
Що я женихався.

Чи це ж тая криниченька,
Що я воду пив?
Гей, гей, гей!
Що я воду пив.

Чи це ж тая дівчинонька,
Що я полюбив?
Гей, гей, гей!
Що я полюбив.

Ой це ж тая криниченька,
Те ж саме відро.
Гей, гей, гей!
Те ж саме відро.

А вже мене дівчинонька
Забула давно.
Гей, гей, гей!
Забула давно.

Вже ж до тої криниченьки
Стежки заросли.
Гей, гей, гей!
Стежки заросли.

Та вже ж мою дівчиноньку
Сватати прийшли.
Гей, гей, гей!
Сватати прийшли.

Уже ж з тої криниченьки
Орли воду п''ють.
Гей, гей, гей!
Орли воду п''ють.

Уже ж мою дівчиноньку
До вінця ведуть!
Гей, гей, гей!
До вінця ведуть.

Один бере за рученьку,
Другий за рукав.
Гей, гей, гей!
Другий за рукав.

А я стою, серце болить —
Любив, та не взяв!
Гей, гей, гей!
Любив, та не взяв.

Засипало криниченьку
Та жовтим піском.
Гей, гей, гей!
Та жовтим піском.

Повінчали дівчиноньку
З іншим козаком!
Гей, гей, гей!
З іншим козаком.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_621178_l1','pisniua_621178','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_621348';
DELETE FROM song_versions WHERE song_id = 'pisniua_621348';
DELETE FROM songs_fts WHERE song_id = 'pisniua_621348';
DELETE FROM songs WHERE id = 'pisniua_621348';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_621348','Без бою','Музика: Святослав Вакарчук Слова: Святослав Вакарчук. Виконує: Гурт "Океан Ельзи"','uk','ukraine_before_1917',NULL,NULL,'записано на слух',NULL,'A Dm x 4

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
DELETE FROM song_links WHERE song_id = 'pisniua_6222348';
DELETE FROM song_versions WHERE song_id = 'pisniua_6222348';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6222348';
DELETE FROM songs WHERE id = 'pisniua_6222348';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6222348','Бувай, малий!','Музика: Арсен Мірзоян Слова: Арсен Мірзоян. Виконує: Арсен Мірзоян','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Що не сталося - я вже ненавиджу,
Неможливі секунди розлучення.
Проводжаючим, як завжди, байдуже
Їхні розклади, їхні сполучення.
У цю мить не хвилюють обмеження,
Ні кар''єра, ні ціни на нафту.
Є останні секунди розлучення,
В неможливості в серці втримати правду.
Не питай мене ніколи, хто я.
Коли мене не стане, відповідь прийде сама.
Язик, повір мені, шалена зброя -
Вбиває все, лишає лиш слова.

Приспів:
Бувай, малий, тримай фасон,
Не плач - заллєш перон.
Бувай малий, назавжди мій,
Доросла справжність моїх мрій.
Бувай, малий. Молю, постій!
Не плач, бо важко йти.
Бувай, малий, назавжди мій,
І я назавжди твій.

А тепер помнож цю історію,
Прості цифри - урок математики,
На купе, на вагони, на колії,
На вокзали, авто, човни, літаки.
І плюс ті, що колись повірили
Свому серцю і алим парусам.
Знаєш, заздрить комусь сама любов,
З позначкою "діти Ікаруса".

Приспів.

Вже не тішу я себе, що молодий,
Що мною можна забивати цвяхи.
Я не помітив навіть сам, як став черствий,
Невдовзі рознесуть у небо птахи.
Я іноді так хочу справжню зиму хоч на день,
Хочу бути снігом - день і я розтану...
На жаль, ніколи не дізнатися хто я,
Бо відповідь прийде, коли мене не стане.

Приспів.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6222348'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6222348','Бувай, малий!','Що не сталося - я вже ненавиджу,
Неможливі секунди розлучення.
Проводжаючим, як завжди, байдуже
Їхні розклади, їхні сполучення.
У цю мить не хвилюють обмеження,
Ні кар''єра, ні ціни на нафту.
Є останні секунди розлучення,
В неможливості в серці втримати правду.
Не питай мене ніколи, хто я.
Коли мене не стане, відповідь прийде сама.
Язик, повір мені, шалена зброя -
Вбиває все, лишає лиш слова.

Приспів:
Бувай, малий, тримай фасон,
Не плач - заллєш перон.
Бувай малий, назавжди мій,
Доросла справжність моїх мрій.
Бувай, малий. Молю, постій!
Не плач, бо важко йти.
Бувай, малий, назавжди мій,
І я назавжди твій.

А тепер помнож цю історію,
Прості цифри - урок математики,
На купе, на вагони, на колії,
На вокзали, авто, човни, літаки.
І плюс ті, що колись повірили
Свому серцю і алим парусам.
Знаєш, заздрить комусь сама любов,
З позначкою "діти Ікаруса".

Приспів.

Вже не тішу я себе, що молодий,
Що мною можна забивати цвяхи.
Я не помітив навіть сам, як став черствий,
Невдовзі рознесуть у небо птахи.
Я іноді так хочу справжню зиму хоч на день,
Хочу бути снігом - день і я розтану...
На жаль, ніколи не дізнатися хто я,
Бо відповідь прийде, коли мене не стане.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6222348_l1','pisniua_6222348','YouTube','https://www.youtube.com/watch?v=pHy7zGeFkug','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6222348_l2','pisniua_6222348','YouTube','https://www.youtube.com/watch?v=P9TWtO2znhE','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_6207454';
DELETE FROM song_versions WHERE song_id = 'pisniua_6207454';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6207454';
DELETE FROM songs WHERE id = 'pisniua_6207454';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6207454','Нова радість стала, яка не бувала','(Колядка про "Чупринку"). Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'Дем’ян Г. Українські повстанські пісні 1940-2000 років (історико-фольклористичне дослідження) – Львів: Галицька видавнича спілка, 2003. – С. 281.',NULL,'Нова радість стала, яка не бувала,
Бо УПА на командира "Чупринку" дістала.

Просим тя, Ісусе, щодня, щогодини:
Поможи му окупантів вигнати з Вкраїни.

Хлопці-українці, до УПА вступайте,
Що "Чупринка" вам накаже, славно виконайте!

Хлопці врадувались, зброю добували,
Тисячами до куренів "Чупринки" вступали.

Били вороженьків з заходу і сходу,
Щоб не сміли неволити нашого Народу.

Ворого втікали, кирзаки скидали,
Як їх хлоці-бандерівці з України гнали.

А як їх прогнали, на кордоні стали
Та й про "Тараса Чупринку" заколядували.

Гомоніла пісня усіма світами:
"Вже воскресла Україна, бо "Чупринка" з нами".','[''pisni.org.ua'', ''cat:devoted'', ''cat:halycki'', ''cat:istorychni'', ''cat:kolyadky'', ''cat:povstanski'', ''cat:viyskovi'', ''Пісні присвячені окремим особам'', ''Пісні з Галичини'', ''Історичні пісні'', ''Колядки'', ''Повстанські пісні'', ''Пісні на військову тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6207454'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6207454','Нова радість стала, яка не бувала','Нова радість стала, яка не бувала,
Бо УПА на командира "Чупринку" дістала.

Просим тя, Ісусе, щодня, щогодини:
Поможи му окупантів вигнати з Вкраїни.

Хлопці-українці, до УПА вступайте,
Що "Чупринка" вам накаже, славно виконайте!

Хлопці врадувались, зброю добували,
Тисячами до куренів "Чупринки" вступали.

Били вороженьків з заходу і сходу,
Щоб не сміли неволити нашого Народу.

Ворого втікали, кирзаки скидали,
Як їх хлоці-бандерівці з України гнали.

А як їх прогнали, на кордоні стали
Та й про "Тараса Чупринку" заколядували.

Гомоніла пісня усіма світами:
"Вже воскресла Україна, бо "Чупринка" з нами".');
DELETE FROM song_links WHERE song_id = 'pisniua_6218746';
DELETE FROM song_versions WHERE song_id = 'pisniua_6218746';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6218746';
DELETE FROM songs WHERE id = 'pisniua_6218746';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6218746','Ой, у полі три тополі','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой, у полі три тополі,
Та й всі зеленіють.
За одною дівчиною        |
Усі хлопці мліють.       | (2)

Ой, не млійте ви всі, хлопці,
Бо я вже й не ваша.
Наїхали чужі люди,       |
Вже й дівчина наша.      | (2)

Наїхали чужі люди
Сивими конями
Та й забрали дівчиноньку |
З чорними бровами.       | (2)

Тепер в тої дівчиноньки
Ні батька, ні неньки,
Тільки в саду вишневому  |
Піють соловейки.         | (2)','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6218746'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6218746','Ой, у полі три тополі','Ой, у полі три тополі,
Та й всі зеленіють.
За одною дівчиною        |
Усі хлопці мліють.       | (2)

Ой, не млійте ви всі, хлопці,
Бо я вже й не ваша.
Наїхали чужі люди,       |
Вже й дівчина наша.      | (2)

Наїхали чужі люди
Сивими конями
Та й забрали дівчиноньку |
З чорними бровами.       | (2)

Тепер в тої дівчиноньки
Ні батька, ні неньки,
Тільки в саду вишневому  |
Піють соловейки.         | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6218746_l1','pisniua_6218746','YouTube','https://www.youtube.com/watch?v=iw5HlW9IdTU','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6218746_l2','pisniua_6218746','YouTube','https://www.youtube.com/watch?v=CU_TZMOMCvE','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6218746_l3','pisniua_6218746','YouTube','https://www.youtube.com/watch?v=yLt-s38co5w','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_621477';
DELETE FROM song_versions WHERE song_id = 'pisniua_621477';
DELETE FROM songs_fts WHERE song_id = 'pisniua_621477';
DELETE FROM songs WHERE id = 'pisniua_621477';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_621477','Біла слов’янка','Виконує: Нахтіґаль','uk','ukraine_1991',NULL,NULL,'mp3 "Нахтіґаль"','Пісню виконує група "Нахтіґаль". Вся пісня - боєм. Пісню записав з mp3. Хто має більш правильний текст і акорди - додавайте. Підбір акордів: muz-taras','Інтро: Am C G Am C D

Am
Біла слов''янка з білим волоссям
Продає своє тіло, щоб якось прожити.
Am
Сивий дідусь повернувся додому
Без грошей на хліб, пацанами побитий.

П''яний військовий спить у калюжі,
Мундир у блювоті... - захищає державу!
Де вона, правда і гідність народу,
Сила, могутність і дідова слава?

Приспів:
"Що нам робити?" - чую я звідусіль.
"Що нам робити?" - звичайне питання сірої маси.
Я закриваю очі, але це лише посилює біль.
Я закриваю очі... Невже це - кінець?..
Am
Кінець моєї Раси?..

Програш: Am C G Am C D

Політики, що сидять при владі,
Зраджують землі своїх Батьків;
Їм всім плювати на державу;
Вони працюють лише на жидів.

А люди дивляться у телевізор
І ковтають усе це жидівське лайно.
Де вона, Правда і Гідність Народу?
Невже її теж втоптали в багно?

Приспів.

Програш: Am C G Am C D

Біла слов''янка з білим волоссям
Продає своє тіло, щоб якось прожити.
Сивий дідусь повернувся додому
Без грошей на хліб, пацанами побитий.

П''яний військовий спить у калюжі,
Мундир у блювоті... - захищає державу!
Де вона, Правда і Гідність Народу,
Сила, могутність і Дідова слава?

Програш: Am C G Am C D

Приспів.

Програш: Am C G Am C D','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_621477'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_621477','Біла слов’янка','Інтро: Am C G Am C D

Am
Біла слов''янка з білим волоссям
Продає своє тіло, щоб якось прожити.
Am
Сивий дідусь повернувся додому
Без грошей на хліб, пацанами побитий.

П''яний військовий спить у калюжі,
Мундир у блювоті... - захищає державу!
Де вона, правда і гідність народу,
Сила, могутність і дідова слава?

Приспів:
"Що нам робити?" - чую я звідусіль.
"Що нам робити?" - звичайне питання сірої маси.
Я закриваю очі, але це лише посилює біль.
Я закриваю очі... Невже це - кінець?..
Am
Кінець моєї Раси?..

Програш: Am C G Am C D

Політики, що сидять при владі,
Зраджують землі своїх Батьків;
Їм всім плювати на державу;
Вони працюють лише на жидів.

А люди дивляться у телевізор
І ковтають усе це жидівське лайно.
Де вона, Правда і Гідність Народу?
Невже її теж втоптали в багно?

Приспів.

Програш: Am C G Am C D

Біла слов''янка з білим волоссям
Продає своє тіло, щоб якось прожити.
Сивий дідусь повернувся додому
Без грошей на хліб, пацанами побитий.

П''яний військовий спить у калюжі,
Мундир у блювоті... - захищає державу!
Де вона, Правда і Гідність Народу,
Сила, могутність і Дідова слава?

Програш: Am C G Am C D

Приспів.

Програш: Am C G Am C D');
DELETE FROM song_links WHERE song_id = 'pisniua_622374';
DELETE FROM song_versions WHERE song_id = 'pisniua_622374';
DELETE FROM songs_fts WHERE song_id = 'pisniua_622374';
DELETE FROM songs WHERE id = 'pisniua_622374';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_622374','Ой на Горі Буйний Вітер віє','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,'Пісня стародавня (Жнива і Весілля). Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло. А всі Святії за Погоничів за Посівачів. З неї буде ДОбра Робітничка ― ДобрА Робітничка! Листки з приводу цієї Пісні: Містика Астральних Жнив. Щедрий Вечер, 13-14 січня. Маланка-Василь. Астральне шанування Молодечості. Щедрий Вечір ― свято Місяця й Прадіда. Шанування Астральної Двійці: Щедрівки.','Ой на Горі Буйний Вітер віє    (2)
Аж Там Козак Пшениченьку сіє   (2)
Сіє-сіє сіє-розсіває           (2)
Його Рідна Мамка ся питає      (2)
Нащо сієш нащо розсіваєш       (2)
З ким же ти Ї збирати гадаєш   (2)
Ой є в мене Одна Одиничка      (2)
З неї буде Добра Робітничка    (2)','[''pisni.org.ua'', ''cat:obzhynkovi'', ''cat:vesilni'', ''Обжинкові пісні'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_622374'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_622374','Ой на Горі Буйний Вітер віє','Ой на Горі Буйний Вітер віє    (2)
Аж Там Козак Пшениченьку сіє   (2)
Сіє-сіє сіє-розсіває           (2)
Його Рідна Мамка ся питає      (2)
Нащо сієш нащо розсіваєш       (2)
З ким же ти Ї збирати гадаєш   (2)
Ой є в мене Одна Одиничка      (2)
З неї буде Добра Робітничка    (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_6223374';
DELETE FROM song_versions WHERE song_id = 'pisniua_6223374';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6223374';
DELETE FROM songs WHERE id = 'pisniua_6223374';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6223374','Ой, летіла стріла','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'книга народних пісень',NULL,'Ой, летіла стріла
З-за синього моря.
Ой, де ж вона впала?
На вдовинім полі.

Кого ж вона вбила?
Вдовиного сина,
Немає нікого
Плакати по ньому.
Летять три зозуленьки,
І всі три рябенькі:

Одна прилетіла,
В головоньках сіла.
Друга прилетіла,
Край серденька сіла.
Третя прилетіла
Та в ніженьках сіла.

Що в головках сіла —
То матінка рідна.
Сіла край серденька —
То його миленька.
А в ніженьках сіла —
То його сестриця.

Де матінка плаче,
Там Дунай розлився.
Де плаче сестриця,
Там слізок криниця.
Де плаче миленька,
Там земля сухенька.

Ой, матінка плаче,
Поки жити буде.
А сестриця плаче,
Поки не забуде.
А миленька плаче,
Поки його бачить...','[''pisni.org.ua'', ''cat:narodni'', ''cat:nostalgia'', ''Народні пісні'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6223374'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6223374','Ой, летіла стріла','Ой, летіла стріла
З-за синього моря.
Ой, де ж вона впала?
На вдовинім полі.

Кого ж вона вбила?
Вдовиного сина,
Немає нікого
Плакати по ньому.
Летять три зозуленьки,
І всі три рябенькі:

Одна прилетіла,
В головоньках сіла.
Друга прилетіла,
Край серденька сіла.
Третя прилетіла
Та в ніженьках сіла.

Що в головках сіла —
То матінка рідна.
Сіла край серденька —
То його миленька.
А в ніженьках сіла —
То його сестриця.

Де матінка плаче,
Там Дунай розлився.
Де плаче сестриця,
Там слізок криниця.
Де плаче миленька,
Там земля сухенька.

Ой, матінка плаче,
Поки жити буде.
А сестриця плаче,
Поки не забуде.
А миленька плаче,
Поки його бачить...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6223374_l1','pisniua_6223374','YouTube','https://www.youtube.com/watch?v=cfwimcth1Uk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_621940';
DELETE FROM song_versions WHERE song_id = 'pisniua_621940';
DELETE FROM songs_fts WHERE song_id = 'pisniua_621940';
DELETE FROM songs WHERE id = 'pisniua_621940';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_621940','На святого Яна','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Купальські пісні / Упорядник Ю.Антків. Львів: БаК, 2004.- 60 с.',NULL,'На святого Яна
Собітку палили.
Ей Яне, Яне, святий Яне! (x2)

А де той святий Ян,
Що нам три огні клав?
Ей Яне, Яне, святий Яне! (x2)

Освяти нам зілля
І вшитко коріння.
Ей Яне, Яне, святий Яне! (x2)    Демо-аудіо (фрагмент) (mp3, 64 kbps / 22 kHz)','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_621940'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_621940','На святого Яна','На святого Яна
Собітку палили.
Ей Яне, Яне, святий Яне! (x2)

А де той святий Ян,
Що нам три огні клав?
Ей Яне, Яне, святий Яне! (x2)

Освяти нам зілля
І вшитко коріння.
Ей Яне, Яне, святий Яне! (x2)    Демо-аудіо (фрагмент) (mp3, 64 kbps / 22 kHz)');
DELETE FROM song_links WHERE song_id = 'pisniua_622353';
DELETE FROM song_versions WHERE song_id = 'pisniua_622353';
DELETE FROM songs_fts WHERE song_id = 'pisniua_622353';
DELETE FROM songs WHERE id = 'pisniua_622353';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_622353','Летіла зозуля','(Летіла зозуля через мою хату). Українська народна пісня. Виконує: Древо','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Летіла зозуля
Через мою хату
Сіла на калині,        |
Та й стала кувати      | (2)

"Ой, чого ж, зозуле,
Ой, чого ж  ти куєш,
Хіба ж ти, зозуле,     |
Добро мене чуєш?",     | (2)

"Як би не чувала,
То би б я й не кувала,
Про тебе, дівчино,     |
Всю правду сказала."   | (2)

"Ой, Боже ж мой, Боже,
Що ж я наробила,
Козак має жінку,       |
А я й плюбила.         | (2)

Козак має жінку,
Ще й діточок двоє,
Ще й діточок двоє,     |
Чорняві обоє."         | (2)

"А я й тих діточок
В найми понаймаю,
З тобой, Марусино,     |
В саду й погуляю."     | (2)

Гуляв козаченько
Неділю й дві ночі,
Прийшов козаченько     |
До дівчини в гості.    | (2)

"Ой, Боже ж мой, Боже,
Який я й удався,
На чужій сторонці,     |
За жінку признався.    | (2)

Не так вже й за жінку,
Як за дві дитини,
Розкололось серце      |
на дві половини."      | (2)','[''pisni.org.ua'', ''cat:lirychni'', ''cat:narodni'', ''Пісні про кохання, ліричні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_622353'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_622353','Летіла зозуля','Летіла зозуля
Через мою хату
Сіла на калині,        |
Та й стала кувати      | (2)

"Ой, чого ж, зозуле,
Ой, чого ж  ти куєш,
Хіба ж ти, зозуле,     |
Добро мене чуєш?",     | (2)

"Як би не чувала,
То би б я й не кувала,
Про тебе, дівчино,     |
Всю правду сказала."   | (2)

"Ой, Боже ж мой, Боже,
Що ж я наробила,
Козак має жінку,       |
А я й плюбила.         | (2)

Козак має жінку,
Ще й діточок двоє,
Ще й діточок двоє,     |
Чорняві обоє."         | (2)

"А я й тих діточок
В найми понаймаю,
З тобой, Марусино,     |
В саду й погуляю."     | (2)

Гуляв козаченько
Неділю й дві ночі,
Прийшов козаченько     |
До дівчини в гості.    | (2)

"Ой, Боже ж мой, Боже,
Який я й удався,
На чужій сторонці,     |
За жінку признався.    | (2)

Не так вже й за жінку,
Як за дві дитини,
Розкололось серце      |
на дві половини."      | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_622353_l1','pisniua_622353','YouTube','https://www.youtube.com/watch?v=Pytu3F5T-bY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_622353_l2','pisniua_622353','YouTube','https://www.youtube.com/watch?v=o1NK4V0BQi4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_622353_l3','pisniua_622353','YouTube','https://www.youtube.com/watch?v=iVLTAl_d9Fg','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_622353_l4','pisniua_622353','YouTube','https://www.youtube.com/watch?v=cSkUSG0hdqk','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_622353_l5','pisniua_622353','YouTube','https://www.youtube.com/watch?v=OJwKTTomaZM','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_622353_l6','pisniua_622353','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_622695';
DELETE FROM song_versions WHERE song_id = 'pisniua_622695';
DELETE FROM songs_fts WHERE song_id = 'pisniua_622695';
DELETE FROM songs WHERE id = 'pisniua_622695';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_622695','Восени','Музика: Танок на майдані Конго Слова: Танок на майдані Конго. Виконує: Танок на майдані Конго','uk','ukraine_1991',NULL,NULL,'http://www.tnmk.com/?txt.view.14',NULL,'Восени так солодко чіплятись за минуле
Раз прийшли у груди ті, кого нема вже. З ними
те, чого не буде: сіли, побалакали, поплакали.
Тоді між хмарами у небі ще були сині плями. Так буває восени.
Іноді так солодко бити по собі минулим.
Так, щоб без тями (мамо-мамо-мамо).
Знаєш, хтось у голові моїй ріже дірку. Звідти пустить кіноплівку -
чорно-білим по живому: на, пригадуй, як буває восени
В тумані вчора бачив вранці сірі башти
Знаєш, з них очима вікна. Іноді зненацька страшно
Ніби шось важливе дуже вчора я програв в азарті
Їду ось тепер в плацкарті туди, де буду довго...
Тепер я знаю, як буває восени
Я питав. Може чув хто, може, ні.

Восени скрізь жовте. Сині плями позникали
Я питав - куди? Коли? Чі є на цьому дні корали?
Шось відповіло: нє-а. Шось посміхнулось криво
Я відчув, що все даремно, що все мимо. Пішла злива.
Как-как-кап-кап. Як сльози із очей Марусі
Мокрі люди в однині. Може, плачуть. Може, ні
Немов бабусі шорхають додому, як в ніч
зникають з неба плями сині. Знаєш, так буває...
Зробивши сальто, листя вниз стрибало, як
у цирку люди. Йшли дощі, як під копірку. Та, як
зірки вранці рано, все, жовтіючи, зникало. Тим часом
десь у небі мої хмари плями сірі знов плясали в однині
Тепер я знаю, як буває восени
Я питав. Може чув хто, може, ні.

Далі все мовчало довго. Трохи змерз я. Був ранок сивий
Та новим асфальтом білим (що ж робити?) пішов додому
Я та сніг не розуміли. Сталось що? Навіщо? Чому?
Що я питав так довго вчора... у мікрофона...','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_622695'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_622695','Восени','Восени так солодко чіплятись за минуле
Раз прийшли у груди ті, кого нема вже. З ними
те, чого не буде: сіли, побалакали, поплакали.
Тоді між хмарами у небі ще були сині плями. Так буває восени.
Іноді так солодко бити по собі минулим.
Так, щоб без тями (мамо-мамо-мамо).
Знаєш, хтось у голові моїй ріже дірку. Звідти пустить кіноплівку -
чорно-білим по живому: на, пригадуй, як буває восени
В тумані вчора бачив вранці сірі башти
Знаєш, з них очима вікна. Іноді зненацька страшно
Ніби шось важливе дуже вчора я програв в азарті
Їду ось тепер в плацкарті туди, де буду довго...
Тепер я знаю, як буває восени
Я питав. Може чув хто, може, ні.

Восени скрізь жовте. Сині плями позникали
Я питав - куди? Коли? Чі є на цьому дні корали?
Шось відповіло: нє-а. Шось посміхнулось криво
Я відчув, що все даремно, що все мимо. Пішла злива.
Как-как-кап-кап. Як сльози із очей Марусі
Мокрі люди в однині. Може, плачуть. Може, ні
Немов бабусі шорхають додому, як в ніч
зникають з неба плями сині. Знаєш, так буває...
Зробивши сальто, листя вниз стрибало, як
у цирку люди. Йшли дощі, як під копірку. Та, як
зірки вранці рано, все, жовтіючи, зникало. Тим часом
десь у небі мої хмари плями сірі знов плясали в однині
Тепер я знаю, як буває восени
Я питав. Може чув хто, може, ні.

Далі все мовчало довго. Трохи змерз я. Був ранок сивий
Та новим асфальтом білим (що ж робити?) пішов додому
Я та сніг не розуміли. Сталось що? Навіщо? Чому?
Що я питав так довго вчора... у мікрофона...');
DELETE FROM song_links WHERE song_id = 'pisniua_6225757';
DELETE FROM song_versions WHERE song_id = 'pisniua_6225757';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6225757';
DELETE FROM songs WHERE id = 'pisniua_6225757';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6225757','Мій козак-синочок','Музика: Олег Марцинківський. Виконує: Олег Марцинківський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Квітка синя у руці,
Очі сіро-срібні,
Як же оченята ці
Ви мені потрібні!
Бачу вас і знаю все
Про ріку і зорі,
Чую кожен звук пісень
У небеснім хорі!

Приспів:
Волошковий диво край,     |
Льон, ріка, дзвіночок,    |
Швидше, швидше підростай, |
Мій козак-синочок!        | (2)

Я каган біди прийму
Я на свої груди,
Розірву біди пітьму,
Іншого не буде!
Розмалюю пензлем світ
Фарбами, росою,
Князя Ярослава слід,
Він перед тобою!

Приспів.

Колос золотом зійде,
Посміхнеться мати,
Не знайшли волошок ніде
Диво оченята.
Квітка синя у руці
Спалахне між жита,
Відповість: Я хочу всім
Дарувати квіти!

Приспів.

Мій козак-синочок!','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6225757'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6225757','Мій козак-синочок','Квітка синя у руці,
Очі сіро-срібні,
Як же оченята ці
Ви мені потрібні!
Бачу вас і знаю все
Про ріку і зорі,
Чую кожен звук пісень
У небеснім хорі!

Приспів:
Волошковий диво край,     |
Льон, ріка, дзвіночок,    |
Швидше, швидше підростай, |
Мій козак-синочок!        | (2)

Я каган біди прийму
Я на свої груди,
Розірву біди пітьму,
Іншого не буде!
Розмалюю пензлем світ
Фарбами, росою,
Князя Ярослава слід,
Він перед тобою!

Приспів.

Колос золотом зійде,
Посміхнеться мати,
Не знайшли волошок ніде
Диво оченята.
Квітка синя у руці
Спалахне між жита,
Відповість: Я хочу всім
Дарувати квіти!

Приспів.

Мій козак-синочок!');
DELETE FROM song_links WHERE song_id = 'pisniua_6221271';
DELETE FROM song_versions WHERE song_id = 'pisniua_6221271';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6221271';
DELETE FROM songs WHERE id = 'pisniua_6221271';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6221271','Ой, музико – музиченько','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой, музико - музиченько,
Як ти файно граєш,
Пальці би позолотіли,
Як перебираєш!

Та й за тебе, музиченько,
Говорили люди,
А хто ж тоди буде грати,
Як тебе не буде?..

А музика файно грає,
Весело си диве,
Їму їсти не давали,
Він си не противе.

Їму їсти не давали,
Він не дуже хоче,
Та на їго головочку
Ніхто не клопоче.

Та як буде головочку
Їго клопотати,
Несхоче си хліба їсти,
Нещо не співати.

Та заграй ми, музиченько,
Білими пацами,
Та як зорі зазоріють,
Підем за вівцами!

Та як зорі зазоріють,
Зозульки закують,
Тоді наші товариши
Овечки начують.

Той начують, той начують
Зелені ліщині,
Та й відгадай загадочку
Молодій дівчині.

Одна в мене загадочка -
Явір зелененький,
Друга в мене загадочка -
Вівчарь молоденький.

Та й вівчярю, іде з гаю
Та розгадай самий:
Чи-с не зрадив дівчиночку,
Та ци не жаль тобі?..

Чи зрадив, чи не зрадив -
Що маю робити?..
Вона добра дівчиночка,
Не дасть си зрадити!

А музиці - ґісилиці,
Щоби файно грала,
А дівчині - горівчини,
Щоби танцувала.

Я музику люблю грати,
Робити не хочу,
Яка сни си біда стала,
Женити си хочу!

Та й жени си кучирявий,
Жени си небожий,
Бери собі сіріточку,
Бог тобі поможе!

Бери собі сіріточку,
Бери в Садайчині,
Буде тобі догоджити,
Як мати дитині!

Мати диття годувала,
Папір завивала,
За богача вістроїла,
А за драба дала.

За богача вістроїла,
А за драба дала,
Штири курей обіцяла,
Куцу свиню дала.

Та пішла та куца свиня
Межи свині рити,
Сивий хвостик відкусили,
Другі хтіли бити.','[''pisni.org.ua'', ''cat:kolomyyky'', ''Коломийки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6221271'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6221271','Ой, музико – музиченько','Ой, музико - музиченько,
Як ти файно граєш,
Пальці би позолотіли,
Як перебираєш!

Та й за тебе, музиченько,
Говорили люди,
А хто ж тоди буде грати,
Як тебе не буде?..

А музика файно грає,
Весело си диве,
Їму їсти не давали,
Він си не противе.

Їму їсти не давали,
Він не дуже хоче,
Та на їго головочку
Ніхто не клопоче.

Та як буде головочку
Їго клопотати,
Несхоче си хліба їсти,
Нещо не співати.

Та заграй ми, музиченько,
Білими пацами,
Та як зорі зазоріють,
Підем за вівцами!

Та як зорі зазоріють,
Зозульки закують,
Тоді наші товариши
Овечки начують.

Той начують, той начують
Зелені ліщині,
Та й відгадай загадочку
Молодій дівчині.

Одна в мене загадочка -
Явір зелененький,
Друга в мене загадочка -
Вівчарь молоденький.

Та й вівчярю, іде з гаю
Та розгадай самий:
Чи-с не зрадив дівчиночку,
Та ци не жаль тобі?..

Чи зрадив, чи не зрадив -
Що маю робити?..
Вона добра дівчиночка,
Не дасть си зрадити!

А музиці - ґісилиці,
Щоби файно грала,
А дівчині - горівчини,
Щоби танцувала.

Я музику люблю грати,
Робити не хочу,
Яка сни си біда стала,
Женити си хочу!

Та й жени си кучирявий,
Жени си небожий,
Бери собі сіріточку,
Бог тобі поможе!

Бери собі сіріточку,
Бери в Садайчині,
Буде тобі догоджити,
Як мати дитині!

Мати диття годувала,
Папір завивала,
За богача вістроїла,
А за драба дала.

За богача вістроїла,
А за драба дала,
Штири курей обіцяла,
Куцу свиню дала.

Та пішла та куца свиня
Межи свині рити,
Сивий хвостик відкусили,
Другі хтіли бити.');
DELETE FROM song_links WHERE song_id = 'pisniua_622656';
DELETE FROM song_versions WHERE song_id = 'pisniua_622656';
DELETE FROM songs_fts WHERE song_id = 'pisniua_622656';
DELETE FROM songs WHERE id = 'pisniua_622656';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_622656','Ой верше мій, верше','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Гижа О. Українські народні пісні з Лемківщини.- К.: Музична Україна, 1972.- 404 c.',NULL,'Ой верше мій, верше,
Мій зелений верше,
Юж мі так не буде,  (2)  |
Як мі било перше.        | (2)

Бо перше мі било
Барз мі добрі било,
Од свойой мамички   (2)  |
Не ходити било.          | (2)

Не ходити било,
Кади я ходила,
Не любити било,     (2)  |
Кого я любила.           | (2)

Яничку, златовлас,
Чом не ходиш до нас?
Ци ся мами боїш,    (2)  |
Ци о мя не стоїш?        | (2)

Мами ся не бою
І о тебе стою.
Лем ся преокрутні   (2)  |
Злих язиків бою.         | (2)

Бо тоти язики
Гірше ніж од меча, -
Порубат, посіче,    (2)  |
Лем кров не потече.      | (2)    Основна мелодія','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_622656'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_622656','Ой верше мій, верше','Ой верше мій, верше,
Мій зелений верше,
Юж мі так не буде,  (2)  |
Як мі било перше.        | (2)

Бо перше мі било
Барз мі добрі било,
Од свойой мамички   (2)  |
Не ходити било.          | (2)

Не ходити било,
Кади я ходила,
Не любити било,     (2)  |
Кого я любила.           | (2)

Яничку, златовлас,
Чом не ходиш до нас?
Ци ся мами боїш,    (2)  |
Ци о мя не стоїш?        | (2)

Мами ся не бою
І о тебе стою.
Лем ся преокрутні   (2)  |
Злих язиків бою.         | (2)

Бо тоти язики
Гірше ніж од меча, -
Порубат, посіче,    (2)  |
Лем кров не потече.      | (2)    Основна мелодія');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_622656_l1','pisniua_622656','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_6222491';
DELETE FROM song_versions WHERE song_id = 'pisniua_6222491';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6222491';
DELETE FROM songs WHERE id = 'pisniua_6222491';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6222491','Нас весна не там зустріла','Музика: Олександр Гаркавий Слова: Йосип Струцюк. Виконує: Алла Опейда, В''ячеслав Судима, Віталій Козловський, Петро Довгошия, Марія Храпчинська','uk','ukr_ssr_1919_1991',NULL,NULL,'Аудіозапис',NULL,'Чорні ночі в наші очі,
В наші зорі кулі свищуть.
Хай обійме стан дівочий
Чорний дим од пожарища.

Нас весна не там зустріла
І не ті пісні співала.
Я стріляв із скоростріла,
Я набої подавала.

Облітає цвіт калини,
Перепел замовк у житі...
Ще учора тут жили ми,
А сьогодні тут чужинці.

Нас весна не там зустріла |
І не ті пісні співала.    |
Ти стріляв із скоростріла,|
Я набої подавала.         | (2)

В чорні ночі нам не спати
Із тривогами своїми.
Всіх кривавих окупантів
Проженемо з України.
Ми не вийдем з того бою
Ми не станем на коліна.
Стали ми на смерть з тобою,
Щоб не вмерла Україна!

Нас весна не там зустріла
І не ті пісні співала.
Ти стріляв із скоростріла,
Я набої подавала.
Нас весна не там зустріла
І не ті пісні співала.
Я стріляв із скоростріла,
Я набої подавала.

Програш.

Нас весна не там зустріла
І не ті пісні співала.
Ти стріляв із скоростріла,
Я набої подавала','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6222491'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6222491','Нас весна не там зустріла','Чорні ночі в наші очі,
В наші зорі кулі свищуть.
Хай обійме стан дівочий
Чорний дим од пожарища.

Нас весна не там зустріла
І не ті пісні співала.
Я стріляв із скоростріла,
Я набої подавала.

Облітає цвіт калини,
Перепел замовк у житі...
Ще учора тут жили ми,
А сьогодні тут чужинці.

Нас весна не там зустріла |
І не ті пісні співала.    |
Ти стріляв із скоростріла,|
Я набої подавала.         | (2)

В чорні ночі нам не спати
Із тривогами своїми.
Всіх кривавих окупантів
Проженемо з України.
Ми не вийдем з того бою
Ми не станем на коліна.
Стали ми на смерть з тобою,
Щоб не вмерла Україна!

Нас весна не там зустріла
І не ті пісні співала.
Ти стріляв із скоростріла,
Я набої подавала.
Нас весна не там зустріла
І не ті пісні співала.
Я стріляв із скоростріла,
Я набої подавала.

Програш.

Нас весна не там зустріла
І не ті пісні співала.
Ти стріляв із скоростріла,
Я набої подавала');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6222491_l1','pisniua_6222491','YouTube','https://www.youtube.com/watch?v=DkFSVckGnoo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6222491_l2','pisniua_6222491','YouTube','https://www.youtube.com/watch?v=qkcZ9XjC2Bc','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6222491_l3','pisniua_6222491','YouTube','https://www.youtube.com/watch?v=ZGRxEhrsKEE','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6222491_l4','pisniua_6222491','YouTube','https://www.youtube.com/watch?v=odjFkF3bm9g','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_6222491_l5','pisniua_6222491','YouTube','https://www.youtube.com/watch?v=7z_r7RzWS7I','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_6229972';
DELETE FROM song_versions WHERE song_id = 'pisniua_6229972';
DELETE FROM songs_fts WHERE song_id = 'pisniua_6229972';
DELETE FROM songs WHERE id = 'pisniua_6229972';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_6229972','Ой, на Івана, на Купайла','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Збірник "Закувала зозуленька".',NULL,'Ой, на Івана, на Купайла
Вийшла Марія, як та пава.

На ню молодці заглядаються,
Привітатися стидаються.

А той Іван не встидався,
Взяв за рученьку та й звітався:

Марійко моя, душко моя,
Сподобалося личко твоє.

Ой, не так личко, як ти сама,
Як на папері написана.

Як на папері на листочку -
Чорненькі брови на шнурочку.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_6229972'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_6229972','Ой, на Івана, на Купайла','Ой, на Івана, на Купайла
Вийшла Марія, як та пава.

На ню молодці заглядаються,
Привітатися стидаються.

А той Іван не встидався,
Взяв за рученьку та й звітався:

Марійко моя, душко моя,
Сподобалося личко твоє.

Ой, не так личко, як ти сама,
Як на папері написана.

Як на папері на листочку -
Чорненькі брови на шнурочку.');
DELETE FROM song_links WHERE song_id = 'pisniua_622959';
DELETE FROM song_versions WHERE song_id = 'pisniua_622959';
DELETE FROM songs_fts WHERE song_id = 'pisniua_622959';
DELETE FROM songs WHERE id = 'pisniua_622959';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_622959','Якби я був такий, як тато','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Якби я був такий, як тато,
А тато був такий, як я,
То ми б любили цьоцю Ганю -
Трошки тато, трошки я.

Якби я був такий, як тато,
А тато був такий, як я,
То ми б разом горілку пили -
Трошки тато, трошки я.

Разом ходили би на пиво,
Разом ходили б на вино,
Разом ходили би до клубу,
Разом би ходили би в кіно.

Якби я був такий, як тато,
То він на мене б не кричав,
Що пізно я прийшов додому,
І до півночі в Гані спав.

Але нам то не заважає,
Що старший тато, менший я.
Так само любим цьоцю Ганю -
Трошки тато, трошки я.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_622959'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_622959','Якби я був такий, як тато','Якби я був такий, як тато,
А тато був такий, як я,
То ми б любили цьоцю Ганю -
Трошки тато, трошки я.

Якби я був такий, як тато,
А тато був такий, як я,
То ми б разом горілку пили -
Трошки тато, трошки я.

Разом ходили би на пиво,
Разом ходили б на вино,
Разом ходили би до клубу,
Разом би ходили би в кіно.

Якби я був такий, як тато,
То він на мене б не кричав,
Що пізно я прийшов додому,
І до півночі в Гані спав.

Але нам то не заважає,
Що старший тато, менший я.
Так само любим цьоцю Ганю -
Трошки тато, трошки я.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_622959_l1','pisniua_622959','YouTube','https://www.youtube.com/watch?v=krQrwX63UJo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_622959_l2','pisniua_622959','YouTube','https://www.youtube.com/watch?v=__aBi2PSxS8','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_622959_l3','pisniua_622959','YouTube','https://www.youtube.com/watch?v=mHNQUrgjFLo','video',NULL,3);
