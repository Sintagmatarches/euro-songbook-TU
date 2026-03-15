DELETE FROM song_links WHERE song_id = 'pisniua_26675';
DELETE FROM song_versions WHERE song_id = 'pisniua_26675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_26675';
DELETE FROM songs WHERE id = 'pisniua_26675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_26675','В зеленім гаєчку','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'В зеленім гаєчку
Пташечки співають,
Вже мого милого
На войну волають.

Волають, волають,
Коника сідлають.
"На кого ня лишаш,
Мій милий шугаю?"

"Лишаю тя тому,
Хто не йде на войну,
За рік, за півдруга
Вернуся додому."

Два роки минуло -
Хлопці з войни ідуть,
З-під мого милого
Лиш коника ведуть.

Ведуть коня, ведуть,
Начорно укритий.
Напевно мій милий
На войні убитий.

"Не плач, дівча, не плач,
Не жалій тамтого.
Іде нас сто тисяч,
Вибирай одного".

"Аж би вас там було
Як піску морського,
Не було й не буде
Як мого милого".','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:rekrutski'', ''Лемківські пісні'', ''Рекрутські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_26675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_26675','В зеленім гаєчку','В зеленім гаєчку
Пташечки співають,
Вже мого милого
На войну волають.

Волають, волають,
Коника сідлають.
"На кого ня лишаш,
Мій милий шугаю?"

"Лишаю тя тому,
Хто не йде на войну,
За рік, за півдруга
Вернуся додому."

Два роки минуло -
Хлопці з войни ідуть,
З-під мого милого
Лиш коника ведуть.

Ведуть коня, ведуть,
Начорно укритий.
Напевно мій милий
На войні убитий.

"Не плач, дівча, не плач,
Не жалій тамтого.
Іде нас сто тисяч,
Вибирай одного".

"Аж би вас там було
Як піску морського,
Не було й не буде
Як мого милого".');
DELETE FROM song_links WHERE song_id = 'pisniua_264899';
DELETE FROM song_versions WHERE song_id = 'pisniua_264899';
DELETE FROM songs_fts WHERE song_id = 'pisniua_264899';
DELETE FROM songs WHERE id = 'pisniua_264899';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_264899','А липи цвітуть','Музика: Остап Гавриш Слова: Василь Гостюк. Виконує: Лілія Сандулеса, Іво Бобул','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Я прийду до тебе в садок,
У трави зелені зелені.
Назбираєм з тобою зірок,
Що в небі, що в небі, що в небі.
І падали коси із пліч,
Задумалась ніжність в чеканні.
Поцілунки у зоряну ніч
В коханні, в коханні, в коханні.

Приспів:
А липи цвітуть духмяні-духмяні,
А двоє ідуть купатись в коханні,
А липи цвітуть духмяні-духмяні,
А двоє ідуть щасливі в коханні.

Прокинулись ранки зі сну,
Згорають у щирості очі.
Пригорнися до мене, я жду
Від ночі, від ночі й до ночі.
Купатись з тобою в росі,
Відчути той дотик незнаний.
Тільки губи шепочуть мені -
Коханий, коханий, коханий.

Приспів. (3)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_264899'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_264899','А липи цвітуть','Я прийду до тебе в садок,
У трави зелені зелені.
Назбираєм з тобою зірок,
Що в небі, що в небі, що в небі.
І падали коси із пліч,
Задумалась ніжність в чеканні.
Поцілунки у зоряну ніч
В коханні, в коханні, в коханні.

Приспів:
А липи цвітуть духмяні-духмяні,
А двоє ідуть купатись в коханні,
А липи цвітуть духмяні-духмяні,
А двоє ідуть щасливі в коханні.

Прокинулись ранки зі сну,
Згорають у щирості очі.
Пригорнися до мене, я жду
Від ночі, від ночі й до ночі.
Купатись з тобою в росі,
Відчути той дотик незнаний.
Тільки губи шепочуть мені -
Коханий, коханий, коханий.

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_264899_l1','pisniua_264899','YouTube','https://www.youtube.com/watch?v=7zEI0e9716c','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_264899_l2','pisniua_264899','YouTube','https://www.youtube.com/watch?v=XjtddFO6azs','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_266394';
DELETE FROM song_versions WHERE song_id = 'pisniua_266394';
DELETE FROM songs_fts WHERE song_id = 'pisniua_266394';
DELETE FROM songs WHERE id = 'pisniua_266394';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_266394','Ой, у полі криниченька','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Струни серця. Українські народні пісні про кохання. Київ, Держлітвидав, 1969.',NULL,'Ой у полі криниченька,
Кругом неї травиченька.

Ой там Роман воли пасе,
А дівчина воду несе.

Ой став Роман жартувати,
З відер воду виливати.

"Годі, Роман, жартувати,
З відер воду виливати,

Бо нерідну неньку маю,
Буде бити, добре знаю.

Не так бити, як лаяти,
Ще й Романом докоряти!"

"Де ж ти, доню, барилася?
Вже й вечеря зварилася!"

"Налетіли гуси з броду,
Сколотили з піском воду.

Я, молода, постояла,
Доки вода устояла!"

"Брешеш, доню, не стояла,
Ти з Романом розмовляла!"

"Щиру правду признаюся,
Що з Романом кохаюся.

А він чорний, я русява:
Зійдемося - буде пара!"','[''pisni.org.ua'', ''cat:lirychni'', ''cat:narodni'', ''Пісні про кохання, ліричні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_266394'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_266394','Ой, у полі криниченька','Ой у полі криниченька,
Кругом неї травиченька.

Ой там Роман воли пасе,
А дівчина воду несе.

Ой став Роман жартувати,
З відер воду виливати.

"Годі, Роман, жартувати,
З відер воду виливати,

Бо нерідну неньку маю,
Буде бити, добре знаю.

Не так бити, як лаяти,
Ще й Романом докоряти!"

"Де ж ти, доню, барилася?
Вже й вечеря зварилася!"

"Налетіли гуси з броду,
Сколотили з піском воду.

Я, молода, постояла,
Доки вода устояла!"

"Брешеш, доню, не стояла,
Ти з Романом розмовляла!"

"Щиру правду признаюся,
Що з Романом кохаюся.

А він чорний, я русява:
Зійдемося - буде пара!"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_266394_l1','pisniua_266394','YouTube','https://www.youtube.com/watch?v=57BS2DbtC2M','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_266394_l2','pisniua_266394','YouTube','https://www.youtube.com/watch?v=9_RQaNM43AI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_266394_l3','pisniua_266394','YouTube','https://www.youtube.com/watch?v=59ZYZgx7p_g','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_266394_l4','pisniua_266394','YouTube','https://www.youtube.com/watch?v=YPYYIhizFLw','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_266394_l5','pisniua_266394','YouTube','https://www.youtube.com/watch?v=3slLdA_ScDk','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_266394_l6','pisniua_266394','YouTube','https://www.youtube.com/watch?v=BYS4bimjfmg','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_266394_l7','pisniua_266394','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_266012';
DELETE FROM song_versions WHERE song_id = 'pisniua_266012';
DELETE FROM songs_fts WHERE song_id = 'pisniua_266012';
DELETE FROM songs WHERE id = 'pisniua_266012';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_266012','Над річкою бережком','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Народні перлини. Українські народні пісні. Київ, Державне видавництво художньої літератури, 1961.',NULL,'Над річкою бережком
Ішов чумак з батіжком,
Гей-гей, з Дону додому.

За плечима торбина
Ще й латана свитина, -
Гей-гей, дочумакувавсь!

"Постій, чумак, постривай,
Шляху в людей розпитай,
Гей-гей, чи не заблудивсь?"

"Мені шляху не питать:
Прямо степом мандрувать,
Гей-гей, долю доганять!"

Пішла доля ярами,
Зеленими лугами,
Гей-гей, не вмів шанувать!

Як я долі не знайду, -
До шинкарки в шинк зайду,
Гей, гей, забуду біду!    Фонограма-мінус (mp3)','[''pisni.org.ua'', ''cat:chumacki'', ''cat:socialno-pobutovi'', ''Чумацькі пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_266012'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_266012','Над річкою бережком','Над річкою бережком
Ішов чумак з батіжком,
Гей-гей, з Дону додому.

За плечима торбина
Ще й латана свитина, -
Гей-гей, дочумакувавсь!

"Постій, чумак, постривай,
Шляху в людей розпитай,
Гей-гей, чи не заблудивсь?"

"Мені шляху не питать:
Прямо степом мандрувать,
Гей-гей, долю доганять!"

Пішла доля ярами,
Зеленими лугами,
Гей-гей, не вмів шанувать!

Як я долі не знайду, -
До шинкарки в шинк зайду,
Гей, гей, забуду біду!    Фонограма-мінус (mp3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_266012_l1','pisniua_266012','YouTube','https://www.youtube.com/watch?v=brVW_-uTEeo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_266012_l2','pisniua_266012','YouTube','https://www.youtube.com/watch?v=NJ9Wyqu_Q0k','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_26522';
DELETE FROM song_versions WHERE song_id = 'pisniua_26522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_26522';
DELETE FROM songs WHERE id = 'pisniua_26522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_26522','Ой братіку рідненький','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Бібліотека поета. Народна Лірика.',NULL,'Ой братіку рідненький,
Снився мені сон дивненький,
А що наше подвір''ячко
Чорним шовком пересновано.
Чорним шовком пересновано,
Калиною перетикано.
Калиною перетикано,
Сріблом-злотом пересипано,
Що ти, сестро-молодая, знаєш,
Що ти свого сна не відгадаєш?
Чорний шовк - твоя кісонька,
Калиночка - твоя красонька:
Калинонька - твоя красонька,
Срібло-злото - твоя слізонька.','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_26522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_26522','Ой братіку рідненький','Ой братіку рідненький,
Снився мені сон дивненький,
А що наше подвір''ячко
Чорним шовком пересновано.
Чорним шовком пересновано,
Калиною перетикано.
Калиною перетикано,
Сріблом-злотом пересипано,
Що ти, сестро-молодая, знаєш,
Що ти свого сна не відгадаєш?
Чорний шовк - твоя кісонька,
Калиночка - твоя красонька:
Калинонька - твоя красонька,
Срібло-злото - твоя слізонька.');
DELETE FROM song_links WHERE song_id = 'pisniua_267251';
DELETE FROM song_versions WHERE song_id = 'pisniua_267251';
DELETE FROM songs_fts WHERE song_id = 'pisniua_267251';
DELETE FROM songs WHERE id = 'pisniua_267251';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_267251','Ой одна я, одна','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Струни серця. Українські народні пісні про кохання. Київ, Держлітвидав, 1969.',NULL,'Ой одна я, одна,
Як билиночка в полі,
Та не дав мені бог
Ані щастя, ні долі.

Тільки дав мені бог
Красу - карії очі,
Та й ті виплакала
В самотині дiвочій.

Ані братика я,
Ні сестрички не знала,
Між чужими зросла,
І зросла - не кохалась!

Де ж дружина моя,
Де ви, добрії люди?
Їх нема, я сама,
А дружини й не буде!','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_267251'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_267251','Ой одна я, одна','Ой одна я, одна,
Як билиночка в полі,
Та не дав мені бог
Ані щастя, ні долі.

Тільки дав мені бог
Красу - карії очі,
Та й ті виплакала
В самотині дiвочій.

Ані братика я,
Ні сестрички не знала,
Між чужими зросла,
І зросла - не кохалась!

Де ж дружина моя,
Де ви, добрії люди?
Їх нема, я сама,
А дружини й не буде!');
DELETE FROM song_links WHERE song_id = 'pisniua_266379';
DELETE FROM song_versions WHERE song_id = 'pisniua_266379';
DELETE FROM songs_fts WHERE song_id = 'pisniua_266379';
DELETE FROM songs WHERE id = 'pisniua_266379';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_266379','Ой матінко-зірко','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Народні перлини. Українські народні пісні. Київ, Державне видавництво художньої літератури, 1961.',NULL,'Ой матінко-зірко,
Як у строку гірко,
Куди хилять, то й хилюся,
Бо я всіх боюся.

Ой матінко-зоре,
Яке в строку горе:
Ні доїсти, ні допити,
Ні сісти спочити!

Ой матінко-вишня,
Чи я у вас лишня,
Що ви мене туди дали,
Де я не привишна?

Ой матінко-пана,
Тепер я пропала.
Що ви мене туди дали,
Де я не бувала.

Ой матінко моя,
Тепер я не твоя,
Тепер я вже того пана,
Що задаток дано.

Ой матінко моя,
Тепер я не твоя,
Хіба тоді твоя буду,
Як строку добуду.

Добре тобі, тату,
Задаточки брати!
Прийди, тату, подивися,
Як їх заробляти!

Ти думаєш, тату,
Що я тут паную?
Прийди, тату, подивися,
Як я тут горюю!

Ти думаєш, тату,
Що я тут не плачу?
За сльозами за дрібними
Стежечки не бачу!

Вийду я на гору,
Крикну я додому:
"Вари, мати, вечеряти
Та й на мою долю!"

Варила, варила,
Небагато - трошки:
"Нема ж тобі, моя доню,
Ні миски, ні ложки!"','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_266379'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_266379','Ой матінко-зірко','Ой матінко-зірко,
Як у строку гірко,
Куди хилять, то й хилюся,
Бо я всіх боюся.

Ой матінко-зоре,
Яке в строку горе:
Ні доїсти, ні допити,
Ні сісти спочити!

Ой матінко-вишня,
Чи я у вас лишня,
Що ви мене туди дали,
Де я не привишна?

Ой матінко-пана,
Тепер я пропала.
Що ви мене туди дали,
Де я не бувала.

Ой матінко моя,
Тепер я не твоя,
Тепер я вже того пана,
Що задаток дано.

Ой матінко моя,
Тепер я не твоя,
Хіба тоді твоя буду,
Як строку добуду.

Добре тобі, тату,
Задаточки брати!
Прийди, тату, подивися,
Як їх заробляти!

Ти думаєш, тату,
Що я тут паную?
Прийди, тату, подивися,
Як я тут горюю!

Ти думаєш, тату,
Що я тут не плачу?
За сльозами за дрібними
Стежечки не бачу!

Вийду я на гору,
Крикну я додому:
"Вари, мати, вечеряти
Та й на мою долю!"

Варила, варила,
Небагато - трошки:
"Нема ж тобі, моя доню,
Ні миски, ні ложки!"');
DELETE FROM song_links WHERE song_id = 'pisniua_267369';
DELETE FROM song_versions WHERE song_id = 'pisniua_267369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_267369';
DELETE FROM songs WHERE id = 'pisniua_267369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_267369','Як почуєш вночі край свойого вікна','Музика: Іларіон Лебедєв, Дмитро Січинський Слова: Іван Франко. Виконує: Віктор Морозов, Коралі, Русичі, Павло Кармалюк, Рената Бабак','uk','ukraine_before_1917',NULL,NULL,'Струни серця. Українські народні пісні про кохання. Київ, Держлітвидав, 1969.','Шкільна програма з української літератури для 10 класу (профільний рівень).','Як почуєш вночі край свойого вікна,
Що щось плаче і хлипає важко,
Не тривожся зовсім, не збавляй собі сна, |
Не дивися в той бік, моя пташко.         | (2)

Се не та сирота, що без мами блука,
Не голодний жебрак, моя зірко.
Се розпука моя, невтишима тоска,         |
Се любов моя плаче так гірко.            | (2)

Так прощай же, прощай, не чекай більш весни,
Коли будуть цвісти верболози.
І востаннє тобі, замість слів про любов, |
Посилаю я муки і сльози.                 | (2)

Так прощай же, прощай, не чекай більш весни,
Будь щаслива, весела, як завжди.
Що було — схороню аж у серце на дно...   |
Не шукай між людьми більше правди.       | (2)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_267369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_267369','Як почуєш вночі край свойого вікна','Як почуєш вночі край свойого вікна,
Що щось плаче і хлипає важко,
Не тривожся зовсім, не збавляй собі сна, |
Не дивися в той бік, моя пташко.         | (2)

Се не та сирота, що без мами блука,
Не голодний жебрак, моя зірко.
Се розпука моя, невтишима тоска,         |
Се любов моя плаче так гірко.            | (2)

Так прощай же, прощай, не чекай більш весни,
Коли будуть цвісти верболози.
І востаннє тобі, замість слів про любов, |
Посилаю я муки і сльози.                 | (2)

Так прощай же, прощай, не чекай більш весни,
Будь щаслива, весела, як завжди.
Що було — схороню аж у серце на дно...   |
Не шукай між людьми більше правди.       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_267369_l1','pisniua_267369','YouTube','https://www.youtube.com/watch?v=U4njB0VJI64','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_267369_l2','pisniua_267369','YouTube','https://www.youtube.com/watch?v=KdUk02SZetM','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_267369_l3','pisniua_267369','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_267277';
DELETE FROM song_versions WHERE song_id = 'pisniua_267277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_267277';
DELETE FROM songs WHERE id = 'pisniua_267277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_267277','Мала мати одну дочку','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Народні перлини. Українські народні пісні. Київ, Державне видавництво художньої літератури, 1961.',NULL,'Мала мати одну дочку | (2)
Та й купала у медочку.

Та й купала-поливала, | (2)
Щастя-долі не вгaдала.

Щастя-долі не вгадала, | (2)
За п''яниченьку оддала.

П''є п''яниця, п''є, гуляє, | (2)
Йде додому, - б''є та й лає.

"Ой я буду мандрувати, | (2)
Лиху долю покидати!"

"Ой не роби та сваволі, | (2)
Не покидай свої долі!

Як в калини білі квіти, | (2)
Так у тебе дрібні діти!"','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_267277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_267277','Мала мати одну дочку','Мала мати одну дочку | (2)
Та й купала у медочку.

Та й купала-поливала, | (2)
Щастя-долі не вгaдала.

Щастя-долі не вгадала, | (2)
За п''яниченьку оддала.

П''є п''яниця, п''є, гуляє, | (2)
Йде додому, - б''є та й лає.

"Ой я буду мандрувати, | (2)
Лиху долю покидати!"

"Ой не роби та сваволі, | (2)
Не покидай свої долі!

Як в калини білі квіти, | (2)
Так у тебе дрібні діти!"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_267277_l1','pisniua_267277','YouTube','https://www.youtube.com/watch?v=Gnxy1I8Ffi0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_269318';
DELETE FROM song_versions WHERE song_id = 'pisniua_269318';
DELETE FROM songs_fts WHERE song_id = 'pisniua_269318';
DELETE FROM songs WHERE id = 'pisniua_269318';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_269318','Моя любове','Музика: Лариса Лещук Слова: Ліна Костенко. Виконує: Лариса Лещук','uk','ukraine_1991',NULL,NULL,'Лариса Лещук, 80673041602, диск "Всі пісні для тебе"',NULL,'Моя любове! Я перед тобою.
Бери мене в свої блаженні сни.
Лиш не зроби слухняною рабою,
не ошукай і крил не обітни!
Не допусти, щоб світ зійшовся клином,
і не присни, для чого я живу.
Даруй мені над шляхом тополиним
важкого сонця древню булаву.
Не дай мені заплутатись в дрібницях,
не розміняй на спотички доріг,
бо кості перевернуться в гробницях
гірких і гордих прадідів моїх.
І в них було кохання, як у мене,
і від любові тьмарився їм світ.
І їх жінки хапали за стремена,
та що поробиш,— тільки до воріт.
А там, а там... Жорстокий клекіт бою
і дзвін мечів до третьої весни...
Моя любове! Я перед тобою.
Бери мене в свої блаженні сни.  | (3)','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_269318'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_269318','Моя любове','Моя любове! Я перед тобою.
Бери мене в свої блаженні сни.
Лиш не зроби слухняною рабою,
не ошукай і крил не обітни!
Не допусти, щоб світ зійшовся клином,
і не присни, для чого я живу.
Даруй мені над шляхом тополиним
важкого сонця древню булаву.
Не дай мені заплутатись в дрібницях,
не розміняй на спотички доріг,
бо кості перевернуться в гробницях
гірких і гордих прадідів моїх.
І в них було кохання, як у мене,
і від любові тьмарився їм світ.
І їх жінки хапали за стремена,
та що поробиш,— тільки до воріт.
А там, а там... Жорстокий клекіт бою
і дзвін мечів до третьої весни...
Моя любове! Я перед тобою.
Бери мене в свої блаженні сни.  | (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_269318_l1','pisniua_269318','YouTube','https://www.youtube.com/watch?v=f3iRTv_s0uY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_269318_l2','pisniua_269318','YouTube','https://www.youtube.com/watch?v=K5PmRg05PY4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_2675';
DELETE FROM song_versions WHERE song_id = 'pisniua_2675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2675';
DELETE FROM songs WHERE id = 'pisniua_2675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2675','Карпатський вальс','(Смерека). Музика: Ігор Особік Слова: Ігор Особік. Виконує: Ігор Особік','uk','ukraine_1991',NULL,NULL,'Збірник пісень Студентського братства Львівської політехніки.- Львів, 2000','Пісня присвячена дисидентам-шестидесятникам','Смерека, суцільно смерека,
Чорний сніг напупонив тайгу.
Далеко, як до тебе далеко,
Чи до тебе колись я іще повернусь?
Далеко, як до тебе далеко,
Чи до тебе колись я іще повернусь?

Вагони, ідуть ешелони -
Етапи бісової кари.
Та жалю ні краплини немає,                |
Волю не здобули, та ми ще не програли.    | (2)

Та вільний, я все-таки вільний,
До тебе я подумки лину.
До тебе я смерічкою плину,                |
Я в Карпатах умру, хоч в Сибіру загину.   | (2)

Доля - то наша неволя,
Готує нам участь одну:
Загинуть, як личить героям,               |
Або вижить і встать знов на кровну борню. | (2)

Почекайте! Вороги, почекайте!
Буде буря! Буде вогінь і грім!
Вставайте! Сильні духом вставайте!        |
Буде пімста страшна, будем бить ворогів!  | (2)','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2675','Карпатський вальс','Смерека, суцільно смерека,
Чорний сніг напупонив тайгу.
Далеко, як до тебе далеко,
Чи до тебе колись я іще повернусь?
Далеко, як до тебе далеко,
Чи до тебе колись я іще повернусь?

Вагони, ідуть ешелони -
Етапи бісової кари.
Та жалю ні краплини немає,                |
Волю не здобули, та ми ще не програли.    | (2)

Та вільний, я все-таки вільний,
До тебе я подумки лину.
До тебе я смерічкою плину,                |
Я в Карпатах умру, хоч в Сибіру загину.   | (2)

Доля - то наша неволя,
Готує нам участь одну:
Загинуть, як личить героям,               |
Або вижить і встать знов на кровну борню. | (2)

Почекайте! Вороги, почекайте!
Буде буря! Буде вогінь і грім!
Вставайте! Сильні духом вставайте!        |
Буде пімста страшна, будем бить ворогів!  | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_267293';
DELETE FROM song_versions WHERE song_id = 'pisniua_267293';
DELETE FROM songs_fts WHERE song_id = 'pisniua_267293';
DELETE FROM songs WHERE id = 'pisniua_267293';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_267293','Нащо мені чорні брови','Музика: невідомий Слова: Тарас Шевченко. Виконує: Рената Бабак','uk','ukraine_before_1917',NULL,NULL,'1. Струни серця. Українські народні пісні про кохання. Київ, Держлітвидав, 1969. 2. Струни серця. Українські народні пісні про кохання. Київ, Держлітвидав, 1962.','Народний варіант тексту за поезією "Думка" Т. Шевченка.','Нащо мені чорні брови,
Нащо карі очі,
Нащо літа молодії,
Веселі, дівочі?

Літа мої молодії
Марно пропадають,
Очі плачуть, чорні брови
Од вітру линяють.

Нема кому розказати,
Чого плачуть очі,
Нема кому розпитати,
Чого серце хоче.

Плачте ж, очі, плачте, карі,
Поки не заснули,
Голосніше, жалібніше,
Щоб вітри почули.

Щоб понесли буйнесенькі,
За синеє море
Чорнявому, зрадливому
На лютеє горе','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_267293'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_267293','Нащо мені чорні брови','Нащо мені чорні брови,
Нащо карі очі,
Нащо літа молодії,
Веселі, дівочі?

Літа мої молодії
Марно пропадають,
Очі плачуть, чорні брови
Од вітру линяють.

Нема кому розказати,
Чого плачуть очі,
Нема кому розпитати,
Чого серце хоче.

Плачте ж, очі, плачте, карі,
Поки не заснули,
Голосніше, жалібніше,
Щоб вітри почули.

Щоб понесли буйнесенькі,
За синеє море
Чорнявому, зрадливому
На лютеє горе');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_267293_l1','pisniua_267293','YouTube','https://www.youtube.com/watch?v=72D3uitBLS8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_267293_l2','pisniua_267293','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_268114';
DELETE FROM song_versions WHERE song_id = 'pisniua_268114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_268114';
DELETE FROM songs WHERE id = 'pisniua_268114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_268114','Проводжала мати','Музика: Ігор Шамо Слова: Валерій Курінський. Виконує: Олександр Таранець, Дмитро Гнатюк','uk','ukraine_1991',NULL,NULL,'аудіозапис','* нерозбірливий рядок','Проводжала мати свого сина
В дальну путь, у добру годину.
І казала мати: "Рідну вишню не забудь,
І рідну хатину, і рідну хатину".

Прощалася засмучена,
З надіями навік заручена,
А сліз з очей не виплакать,
І радощі нові не виплекать.
І мріє, мріє серце:
Син додому вернеться,
Бо мати вміє сина ждать.

Буде навесні зелена вишня квітувать
росою умита.
Будуть з далини додому сина виглядать
І квіти, і віти, рожевії квіти...

А мати жде напровесні,
Коли під снігом трави росяні*
А мати жде під хмарами,
Коли чекання стали марними
І мріє, мріє серце:
син додому вернеться
Бо мати вміє сина ждать.

Ластівки-листівки
Стали рідко прилітать,
І сина немає.
Вже старенька вишня
Більш не буде розцвітать,
А мати чекає, роками чекає.

Ростуть сини, як соколи,
Летять за мріями високими,
Ідуть сини дорогами,
Що від стежок росли, широкими.
І мріє, мріє серце:
Син додому вернеться
Ти чуєш, сину? Мати жде
Ти чуєш, сину? Мати жде','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_268114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_268114','Проводжала мати','Проводжала мати свого сина
В дальну путь, у добру годину.
І казала мати: "Рідну вишню не забудь,
І рідну хатину, і рідну хатину".

Прощалася засмучена,
З надіями навік заручена,
А сліз з очей не виплакать,
І радощі нові не виплекать.
І мріє, мріє серце:
Син додому вернеться,
Бо мати вміє сина ждать.

Буде навесні зелена вишня квітувать
росою умита.
Будуть з далини додому сина виглядать
І квіти, і віти, рожевії квіти...

А мати жде напровесні,
Коли під снігом трави росяні*
А мати жде під хмарами,
Коли чекання стали марними
І мріє, мріє серце:
син додому вернеться
Бо мати вміє сина ждать.

Ластівки-листівки
Стали рідко прилітать,
І сина немає.
Вже старенька вишня
Більш не буде розцвітать,
А мати чекає, роками чекає.

Ростуть сини, як соколи,
Летять за мріями високими,
Ідуть сини дорогами,
Що від стежок росли, широкими.
І мріє, мріє серце:
Син додому вернеться
Ти чуєш, сину? Мати жде
Ти чуєш, сину? Мати жде');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_268114_l1','pisniua_268114','YouTube','https://www.youtube.com/watch?v=ui8Ch-tJ58E','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_267498';
DELETE FROM song_versions WHERE song_id = 'pisniua_267498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_267498';
DELETE FROM songs WHERE id = 'pisniua_267498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_267498','Колгоспний вальс','Музика: Платон Майборода Слова: Андрій Малишко','uk','ukraine_before_1917',NULL,NULL,'Струни серця. Українські народні пісні про кохання. Київ, Держлітвидав, 1969.',NULL,'Де синь стоїть над краєм,
Де в росах далина,
Ізнов шумить врожаєм
Колгоспна сторона.

Люба, нам з тобою врожаю моря,
Тихо в надвечір''ї нам світить зоря,
І ляже щедра осінь
На степовий кришталь,
Де золоте колосся
Біжить в далеку дaль.

І за столи кленові
Ми сядемо вночі, -
Дівчата чорноброві
І хлопці сіячі.

Люба, нам з тобою врожаю моря,
Тихо в надвечір''ї нам світить зоря,
Щоб на колгоспнім святі
Нам заспівати знов
Про наші дні крилаті,
І дружбу, і любов.    Фонограма-мінус (мп3)','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_267498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_267498','Колгоспний вальс','Де синь стоїть над краєм,
Де в росах далина,
Ізнов шумить врожаєм
Колгоспна сторона.

Люба, нам з тобою врожаю моря,
Тихо в надвечір''ї нам світить зоря,
І ляже щедра осінь
На степовий кришталь,
Де золоте колосся
Біжить в далеку дaль.

І за столи кленові
Ми сядемо вночі, -
Дівчата чорноброві
І хлопці сіячі.

Люба, нам з тобою врожаю моря,
Тихо в надвечір''ї нам світить зоря,
Щоб на колгоспнім святі
Нам заспівати знов
Про наші дні крилаті,
І дружбу, і любов.    Фонограма-мінус (мп3)');
DELETE FROM song_links WHERE song_id = 'pisniua_26890';
DELETE FROM song_versions WHERE song_id = 'pisniua_26890';
DELETE FROM songs_fts WHERE song_id = 'pisniua_26890';
DELETE FROM songs WHERE id = 'pisniua_26890';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_26890','Прийде ще час...','Музика: Богдан Весоловський Слова: Богдан Весоловський','uk','ukraine_1991',NULL,NULL,'1. Богдан Весоловський "Прийде ще час..." Львів "Галицька видавнича спілка" 2001 2. Архівні аудіозаписи невідомого походження, ймовірно 30-их років 20 ст.',NULL,'Ще раз поглянути на тебе,
З тобою стрінутись ще раз,
У вечір, як зірки засяють в небі,
В осінній вечір, як тільки день погас.
Ще раз піти, удвох з тобою,
За руки взявшись, як колись,
В гаях стежками осінню сумною,
Де перший раз ми давно зійшлись...
Приспів:
Прийде ще час коли затужиш ти за мною,
Прийде ще час, коли згадаєш наші дні,
Може тоді любов ти зрозумієш мою,
І може за ту любов вдячна будеш мені.
Поглянути у твої очі,
І слухати слова твої,
У сяйві місяця літньої ночі
Послухать ще як співають солов''ї.
Невже лише це тільки мрія?
Невже лише це тільки сни?
Чому, чому пропала вся надія,
Зів''яла так, мов квіт навесні...
Приспів.','[''pisni.org.ua'', ''cat:dances'', ''cat:tango'', ''Пісні до танцю'', ''Танґо'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_26890'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_26890','Прийде ще час...','Ще раз поглянути на тебе,
З тобою стрінутись ще раз,
У вечір, як зірки засяють в небі,
В осінній вечір, як тільки день погас.
Ще раз піти, удвох з тобою,
За руки взявшись, як колись,
В гаях стежками осінню сумною,
Де перший раз ми давно зійшлись...
Приспів:
Прийде ще час коли затужиш ти за мною,
Прийде ще час, коли згадаєш наші дні,
Може тоді любов ти зрозумієш мою,
І може за ту любов вдячна будеш мені.
Поглянути у твої очі,
І слухати слова твої,
У сяйві місяця літньої ночі
Послухать ще як співають солов''ї.
Невже лише це тільки мрія?
Невже лише це тільки сни?
Чому, чому пропала вся надія,
Зів''яла так, мов квіт навесні...
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26890_l1','pisniua_26890','YouTube','https://www.youtube.com/watch?v=l5fQ-uJgZOg','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26890_l2','pisniua_26890','YouTube','https://www.youtube.com/watch?v=NQobS3DKn0I','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26890_l3','pisniua_26890','YouTube','https://www.youtube.com/watch?v=wM87B4CFeSI','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26890_l4','pisniua_26890','YouTube','https://www.youtube.com/watch?v=nfeBROvc8Sw','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26890_l5','pisniua_26890','YouTube','https://www.youtube.com/watch?v=xeVwvDrJuVM','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26890_l6','pisniua_26890','YouTube','https://www.youtube.com/watch?v=RmY0kY3TVOg','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26890_l7','pisniua_26890','YouTube','https://www.youtube.com/watch?v=FrksRI2qWb0','video',NULL,7);
DELETE FROM song_links WHERE song_id = 'pisniua_269653';
DELETE FROM song_versions WHERE song_id = 'pisniua_269653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_269653';
DELETE FROM songs WHERE id = 'pisniua_269653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_269653','Журавка','Музика: Олександр Білаш Слова: Василь Юхимович. Виконує: Раїса Кириченко, Євгенія Мірошниченко, Діана Петриненко, Ніна Матвієнко, Надія Фесенко','uk','ukraine_1991',NULL,NULL,'альбом "Два кольори"',NULL,'Чом журавка об крижину
Забилась крильми?
"Не взяв мене за дружину, |
В світилки візьми."       | (2)

Де ж отого розрив-зілля
Ти не обминув?
Чо не кликав на весілля,
Лиш мене одну?

Може місяць на ту пoру
За хмари зайшов,
Що ти до мого двору      |
Стежки не знайшов?       | (2)

Та як з нею, не зі мною
Будеш ти в журбі -
Я веселкою ясною         |
Засвічу тобі.            | (2)','[''pisni.org.ua'', ''cat:manrivni'', ''Пісні на мандрівну тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_269653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_269653','Журавка','Чом журавка об крижину
Забилась крильми?
"Не взяв мене за дружину, |
В світилки візьми."       | (2)

Де ж отого розрив-зілля
Ти не обминув?
Чо не кликав на весілля,
Лиш мене одну?

Може місяць на ту пoру
За хмари зайшов,
Що ти до мого двору      |
Стежки не знайшов?       | (2)

Та як з нею, не зі мною
Будеш ти в журбі -
Я веселкою ясною         |
Засвічу тобі.            | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_269653_l1','pisniua_269653','YouTube','https://www.youtube.com/watch?v=OBZDzFg4wJM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_266767';
DELETE FROM song_versions WHERE song_id = 'pisniua_266767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_266767';
DELETE FROM songs WHERE id = 'pisniua_266767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_266767','Ні, мамо, не можна нелюба любить','(Українська мелодія). Музика: народна Слова: Євген Гребінка. Виконує: Ярослава Кривошеєва','uk','ukraine_before_1917',NULL,NULL,'Струни серця. Українські народні пісні про кохання. Київ, Держлітвидав, 1969.',NULL,'"Ні, мамо, не можна нелюба любить!
Нещасная доля із нелюбом жить.
Ох тяжко, ох важко з ним річ розмовляти!
Хай лучче я буду ввесь вік дівовати!"

"Хіба ж ти не бачиш, яка я стара?
Мені в домовину лягати пора.
Як очі закрию, що буде з тобою?
Останешся, доню, одна сиротою!"

А в світі якеє життя сироті?
І горе, і нужду терпітимеш ти.
Я, дочку пустивши, мовляв, на поталу.
Стогнать під землею, як горлиця стану".

"О, мамо, голубко, не плач, не ридай,
Готуй рушники і хустки вишивай.
Нехай за нелюбом я щастя утрачу;
Ти будеш весела, одна я заплачу!"

Ген там, на могилі, хрест божий стоїть.
Під ним рано й вечір матуся квилить:
"О, Боже мій милий! Що я наробила!
Дочку, як схотіла, із світу згубила!"','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_266767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_266767','Ні, мамо, не можна нелюба любить','"Ні, мамо, не можна нелюба любить!
Нещасная доля із нелюбом жить.
Ох тяжко, ох важко з ним річ розмовляти!
Хай лучче я буду ввесь вік дівовати!"

"Хіба ж ти не бачиш, яка я стара?
Мені в домовину лягати пора.
Як очі закрию, що буде з тобою?
Останешся, доню, одна сиротою!"

А в світі якеє життя сироті?
І горе, і нужду терпітимеш ти.
Я, дочку пустивши, мовляв, на поталу.
Стогнать під землею, як горлиця стану".

"О, мамо, голубко, не плач, не ридай,
Готуй рушники і хустки вишивай.
Нехай за нелюбом я щастя утрачу;
Ти будеш весела, одна я заплачу!"

Ген там, на могилі, хрест божий стоїть.
Під ним рано й вечір матуся квилить:
"О, Боже мій милий! Що я наробила!
Дочку, як схотіла, із світу згубила!"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_266767_l1','pisniua_266767','YouTube','https://www.youtube.com/watch?v=qZ7rpnewuVU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_2697';
DELETE FROM song_versions WHERE song_id = 'pisniua_2697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_2697';
DELETE FROM songs WHERE id = 'pisniua_2697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_2697','Чи ти варта того','Музика: Ігор Особік Слова: Ігор Особік. Виконує: Андрій Хавунка','uk','ukraine_1991',NULL,NULL,'Збірник пісень Студентського братства Львівської політехніки.- Львів, 2000',NULL,'Am                  Am/C            Hdim7        E7
Я прокинусь зненацька вночі від удару дверима в під''їзді.
Am                 Am/C               Hdim7  E7
Я почну ся втішать, але сон уже більше не йде.
Розірване коло буття -- через твою відсутність,
Та питання одне  все тривожить мене.

Приспів 1 (чол. вокал):
Чи ти варта того, щоби я йшов у бій через тебе,
Щоби я був героєм, актором і навіть співав?
Чи ти варта того, щоби я дарував тобі квіти із неба?
Чи ти варта того, щоби я через тебе страждав?

Розіб''ю спросоння будильник, що шарпає нерви,
Зіллюся з землею і небом водою в дворі.
Ні, не Чак Норріс стоїть проти мене в люстерку,
Мабуть, питаннячко це знайоме тобі.

Приспів 2 (жін. вокал):
Чи вартий того, щоби я була біля тебе?
Щоби я була завжди для тебе цілющим листом?
Чи ти вартий того, щоби я була тобі медом?
Чи ти вартий того, щоби ми були завжди разом?

Наші зустрічі схожі на вплеснуту нафту у вогінь,
Потім полум''я згасне, та довго ще серце ятрить.
Наші зустрічі схожі на зустрічі берега й моря,
Та підозра холодна, мов гідра, у грудях сидить.

Приспів 1.
Приспів 2.
Приспів 1 і Приспів 2 (одночасно).','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_2697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_2697','Чи ти варта того','Am                  Am/C            Hdim7        E7
Я прокинусь зненацька вночі від удару дверима в під''їзді.
Am                 Am/C               Hdim7  E7
Я почну ся втішать, але сон уже більше не йде.
Розірване коло буття -- через твою відсутність,
Та питання одне  все тривожить мене.

Приспів 1 (чол. вокал):
Чи ти варта того, щоби я йшов у бій через тебе,
Щоби я був героєм, актором і навіть співав?
Чи ти варта того, щоби я дарував тобі квіти із неба?
Чи ти варта того, щоби я через тебе страждав?

Розіб''ю спросоння будильник, що шарпає нерви,
Зіллюся з землею і небом водою в дворі.
Ні, не Чак Норріс стоїть проти мене в люстерку,
Мабуть, питаннячко це знайоме тобі.

Приспів 2 (жін. вокал):
Чи вартий того, щоби я була біля тебе?
Щоби я була завжди для тебе цілющим листом?
Чи ти вартий того, щоби я була тобі медом?
Чи ти вартий того, щоби ми були завжди разом?

Наші зустрічі схожі на вплеснуту нафту у вогінь,
Потім полум''я згасне, та довго ще серце ятрить.
Наші зустрічі схожі на зустрічі берега й моря,
Та підозра холодна, мов гідра, у грудях сидить.

Приспів 1.
Приспів 2.
Приспів 1 і Приспів 2 (одночасно).');
DELETE FROM song_links WHERE song_id = 'pisniua_26910';
DELETE FROM song_versions WHERE song_id = 'pisniua_26910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_26910';
DELETE FROM songs WHERE id = 'pisniua_26910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_26910','Усміх твій','Музика: Богдан Весоловський Слова: Ярослав Масляк','uk','ukraine_1991',NULL,NULL,'Богдан Весоловський "Прийде ще час..." Львів "Галицька видавнича спілка" 2001',NULL,'Погас останній вже сонця промінь,
Сумним акордом скінчився день
І прийде знову вечірній спомин
На тиху розмову в сяйві ліхтарень.

І тільки в мріях ти вже прилинеш,
Мов гомін щастя колишніх днів,
А на стріванні знов усміх кинеш,
Що полонив бідне серце мені.

Усміх твій таємничий так мене ще манить,
То до щастя, мов кличе, то зі щастя, мов кпить,
Усміх твій таємничий моє серце закляв
Каже тужити, хоч кохання створити
Вже не зможеш ні ти, ні я.

Ще досі сниться у снах звабливих,
Манить блаватом з-під довгих вій,
Хоч вже не прийдуть ті дні щасливі,
Де щастям здавався обрій наших мрій.

Запізно нині. З очей полуду
Життя стряхнуло, мов цвіт сумний,
І тільки в серці твій усміх збудить
В самотні дні спогад цей чарівний.

Усміх твій таємничий так мене ще манить,
То до щастя, мов кличе, то зі щастя, мов кпить,
Усміх твій таємничий моє серце закляв
Каже тужити, хоч кохання створити
Вже не зможеш ні ти, ні я.','[''pisni.org.ua'', ''cat:dances'', ''cat:tango'', ''Пісні до танцю'', ''Танґо'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_26910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_26910','Усміх твій','Погас останній вже сонця промінь,
Сумним акордом скінчився день
І прийде знову вечірній спомин
На тиху розмову в сяйві ліхтарень.

І тільки в мріях ти вже прилинеш,
Мов гомін щастя колишніх днів,
А на стріванні знов усміх кинеш,
Що полонив бідне серце мені.

Усміх твій таємничий так мене ще манить,
То до щастя, мов кличе, то зі щастя, мов кпить,
Усміх твій таємничий моє серце закляв
Каже тужити, хоч кохання створити
Вже не зможеш ні ти, ні я.

Ще досі сниться у снах звабливих,
Манить блаватом з-під довгих вій,
Хоч вже не прийдуть ті дні щасливі,
Де щастям здавався обрій наших мрій.

Запізно нині. З очей полуду
Життя стряхнуло, мов цвіт сумний,
І тільки в серці твій усміх збудить
В самотні дні спогад цей чарівний.

Усміх твій таємничий так мене ще манить,
То до щастя, мов кличе, то зі щастя, мов кпить,
Усміх твій таємничий моє серце закляв
Каже тужити, хоч кохання створити
Вже не зможеш ні ти, ні я.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26910_l1','pisniua_26910','YouTube','https://www.youtube.com/watch?v=uIkOdC-we9U','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26910_l2','pisniua_26910','YouTube','https://www.youtube.com/watch?v=0oXHtfMpDvM','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26910_l3','pisniua_26910','YouTube','https://www.youtube.com/watch?v=3zn9yKKIDLQ','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26910_l4','pisniua_26910','YouTube','https://www.youtube.com/watch?v=c9z3LAZ4Fj4','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26910_l5','pisniua_26910','YouTube','https://www.youtube.com/watch?v=CQDK-z44I8g','video',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_26971';
DELETE FROM song_versions WHERE song_id = 'pisniua_26971';
DELETE FROM songs_fts WHERE song_id = 'pisniua_26971';
DELETE FROM songs WHERE id = 'pisniua_26971';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_26971','Як тебе не любити','Музика: Богдан Весоловський Слова: Богдан Весоловський. Виконує: Мирослава Вербицька','uk','ukraine_1991',NULL,NULL,'Богдан Весоловський "Прийде ще час..." Львів "Галицька видавнича спілка" 2001',NULL,'Серце у мене вразливе,
Часто буває в біді,
Тому то легко й можливо
Знов залюбитись мені.

Скільки разів, ще не знати,
Прийдеться вірно любить,
Кожного разу співати
Пісню, що в серці дзвенить.

Як тебе не любити
За ті карії очі,
Коли серце не хоче
вже нікого більш любить,

Як про тебе не снити
В ясні місячні ночі,
Коли серце не хоче
ні за ким більш тужить.

І не знайти мені
ні хвилини спокою,
Бо думками з тобою
я і вдень, і вночі...

Як тебе не любити
За ті карії очі,
Коли серце не хоче
вже без тебе в світі жить.

Як тебе не любити','[''pisni.org.ua'', ''cat:dances'', ''cat:tango'', ''Пісні до танцю'', ''Танґо'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_26971'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_26971','Як тебе не любити','Серце у мене вразливе,
Часто буває в біді,
Тому то легко й можливо
Знов залюбитись мені.

Скільки разів, ще не знати,
Прийдеться вірно любить,
Кожного разу співати
Пісню, що в серці дзвенить.

Як тебе не любити
За ті карії очі,
Коли серце не хоче
вже нікого більш любить,

Як про тебе не снити
В ясні місячні ночі,
Коли серце не хоче
ні за ким більш тужить.

І не знайти мені
ні хвилини спокою,
Бо думками з тобою
я і вдень, і вночі...

Як тебе не любити
За ті карії очі,
Коли серце не хоче
вже без тебе в світі жить.

Як тебе не любити');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26971_l1','pisniua_26971','YouTube','https://www.youtube.com/watch?v=9LKH7Ewkdig','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26971_l2','pisniua_26971','YouTube','https://www.youtube.com/watch?v=kzt_6sEDChI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26971_l3','pisniua_26971','YouTube','https://www.youtube.com/watch?v=a8WtopT0xDc','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26971_l4','pisniua_26971','YouTube','https://www.youtube.com/watch?v=oxXNaX_Rm58','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26971_l5','pisniua_26971','YouTube','https://www.youtube.com/watch?v=tJ6nKjMZNs4','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_26971_l6','pisniua_26971','YouTube','https://www.youtube.com/watch?v=q0_pTvlzV_0','video',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_269461';
DELETE FROM song_versions WHERE song_id = 'pisniua_269461';
DELETE FROM songs_fts WHERE song_id = 'pisniua_269461';
DELETE FROM songs WHERE id = 'pisniua_269461';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_269461','Наша пані цісарева','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'власний запис','Найчастіше звучала в середовищі митців у виконанні Еммануїла Миська','Наша пані цісарева
Тяжко занепали,
І юж цалих дві неділи
З лужка не ставали.

А наш батько Францо-Йосиф
Такі слова рече:
"Якби Ви ся викупали,
Стало би Вам легше"

Наша пані цісарева
Цісарського роду
Поїхала ся купати
В Карилсбадску воду.

Ше не вспіла шати зняти
Та й скочити в балью,
Як ся зрада зготовила
На найсвєтшу паню.

Якийсь батяр нехрещений,
В Парижу рождений,
Запхав пані цісаревій
Шпинґель затруєний.

Впала пані цісарева,
Кровця ся полєла,
Не минуло цвай мінуті -
Ґанц духа спустила','[''pisni.org.ua'', ''cat:halycki'', ''Пісні з Галичини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_269461'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_269461','Наша пані цісарева','Наша пані цісарева
Тяжко занепали,
І юж цалих дві неділи
З лужка не ставали.

А наш батько Францо-Йосиф
Такі слова рече:
"Якби Ви ся викупали,
Стало би Вам легше"

Наша пані цісарева
Цісарського роду
Поїхала ся купати
В Карилсбадску воду.

Ше не вспіла шати зняти
Та й скочити в балью,
Як ся зрада зготовила
На найсвєтшу паню.

Якийсь батяр нехрещений,
В Парижу рождений,
Запхав пані цісаревій
Шпинґель затруєний.

Впала пані цісарева,
Кровця ся полєла,
Не минуло цвай мінуті -
Ґанц духа спустила');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_269461_l1','pisniua_269461','YouTube','https://www.youtube.com/watch?v=1m757_qaE-c','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_269910';
DELETE FROM song_versions WHERE song_id = 'pisniua_269910';
DELETE FROM songs_fts WHERE song_id = 'pisniua_269910';
DELETE FROM songs WHERE id = 'pisniua_269910';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_269910','Дубе, дубе зелений','Українська народна пісня. Виконує: Віктор Морозов','uk','ukr_ssr_1919_1991',NULL,NULL,'власний запис','Можливо, виникнення пісні відноситься до ранішого періоду, а популярною стала в середовищі повстанців. Підбір акордів: Rox','Дубе, дубе зелений,
Дубе, дубе зелений,
А хто ж тебе буде рубать,
Як я буду маршеровать,
Дубе, дубе зелений
А хто ж тебе буде рубать,
Як я буду маршеровать?
Дубе, дубе зелений...
Хлопче, хлопче молодий, | (2)
Інший мене буде рубать,
Як ти будеш маршеровать,
Хлопче, хлопче молодий.
Травко, травко шовкова, | (2)
А хто ж тебе буде косить,
Як я буду шаблю носить?
Травко, травко шовкова...
Хлопче, хлопче молодий, | (2)
Інший мене буде косить,
Як ти будеш шаблю носить,
Хлопче, хлопче молодий.
Жінко, жінко молода,    | (2)
Хто ж тебе буде кохати,
Як я буду воювати?
Жінко, жінко молода...
Хлопче, хлопче молодий, | (2)
Інший мя буде кохати,
Як ти будеш воювати,
Хлопче, хлопче молодий.
Винко, винко червоне,   | (2)
А хто ж тебе буде пити,
Як я буду в землі гнити?
Винко, винко червоне...
Хлопче, хлопче молодий, | (2)
Інший мене буде пити,
Як ти будеш в землі гнити,
Хлопче, хлопче молодий.','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_269910'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_269910','Дубе, дубе зелений','Дубе, дубе зелений,
Дубе, дубе зелений,
А хто ж тебе буде рубать,
Як я буду маршеровать,
Дубе, дубе зелений
А хто ж тебе буде рубать,
Як я буду маршеровать?
Дубе, дубе зелений...
Хлопче, хлопче молодий, | (2)
Інший мене буде рубать,
Як ти будеш маршеровать,
Хлопче, хлопче молодий.
Травко, травко шовкова, | (2)
А хто ж тебе буде косить,
Як я буду шаблю носить?
Травко, травко шовкова...
Хлопче, хлопче молодий, | (2)
Інший мене буде косить,
Як ти будеш шаблю носить,
Хлопче, хлопче молодий.
Жінко, жінко молода,    | (2)
Хто ж тебе буде кохати,
Як я буду воювати?
Жінко, жінко молода...
Хлопче, хлопче молодий, | (2)
Інший мя буде кохати,
Як ти будеш воювати,
Хлопче, хлопче молодий.
Винко, винко червоне,   | (2)
А хто ж тебе буде пити,
Як я буду в землі гнити?
Винко, винко червоне...
Хлопче, хлопче молодий, | (2)
Інший мене буде пити,
Як ти будеш в землі гнити,
Хлопче, хлопче молодий.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_269910_l1','pisniua_269910','YouTube','https://www.youtube.com/watch?v=ehuvK-NPjik','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_269910_l2','pisniua_269910','YouTube','https://www.youtube.com/watch?v=kSJ5IOKgpXk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_269910_l3','pisniua_269910','YouTube','https://www.youtube.com/watch?v=DlMWe3DhGkU','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_269910_l4','pisniua_269910','YouTube','https://www.youtube.com/watch?v=R6kTBEtrTKE','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_269697';
DELETE FROM song_versions WHERE song_id = 'pisniua_269697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_269697';
DELETE FROM songs WHERE id = 'pisniua_269697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_269697','Заходь в мій дім','Слова: Вадим Крищенко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Заходь в мій дім, якщо втомивсь з дороги.
На лаву сядь і відпочинь хоч трохи.
На підвіконні тут пучок сухої м''яти,
Щоб дух пахкий всіх зваблював до хати.

Заходь в мій дім і підійди до столу -
Там груші стиглі в мами із подолу.
Заходь в мій дім - побачиш там ікону
І все останнє з Божого закону.

Заходь в мій дім, заходь в мою гостину,
Як брата рідного, тебе я тут зустріну.
Подам хлібець, чарки наллю по вінця,
Щоб ти відчув всю душу українця.','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_269697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_269697','Заходь в мій дім','Заходь в мій дім, якщо втомивсь з дороги.
На лаву сядь і відпочинь хоч трохи.
На підвіконні тут пучок сухої м''яти,
Щоб дух пахкий всіх зваблював до хати.

Заходь в мій дім і підійди до столу -
Там груші стиглі в мами із подолу.
Заходь в мій дім - побачиш там ікону
І все останнє з Божого закону.

Заходь в мій дім, заходь в мою гостину,
Як брата рідного, тебе я тут зустріну.
Подам хлібець, чарки наллю по вінця,
Щоб ти відчув всю душу українця.');
DELETE FROM song_links WHERE song_id = 'pisniua_269990';
DELETE FROM song_versions WHERE song_id = 'pisniua_269990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_269990';
DELETE FROM songs WHERE id = 'pisniua_269990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_269990','Сину, ангел мій','Музика: В. Спасов Слова: Надія Шестак. Виконує: Надія Шестак, Любов Камінська','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Коли ясніють очі і вуста
Зникають мої суми і тривоги,
Коли твоїм дзвіночком сміх луна,
Тоді завжди я щедро вдячна богу.

Приспів:
Сину, сину, сину, ангел мій,
Я тобі щасливу зичу долю,
Ти добре серце матимеш в житті,
А я, а я пишатимусь тобою.

До мене, мій синочку, пригорнись,
Навчу тебе обходити печалі,
Ти тільки всьому щиро усміхнись,
Цим захистиш себе й мене надалі.

Приспів. (3)

Сину, сину, сину, ангел мій,
Я тобі щасливу зичу долю,
Ти добре серце маєш у житті,
І я завжди пишатимусь тобою,
І я завжди пишатимусь тобою','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_269990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_269990','Сину, ангел мій','Коли ясніють очі і вуста
Зникають мої суми і тривоги,
Коли твоїм дзвіночком сміх луна,
Тоді завжди я щедро вдячна богу.

Приспів:
Сину, сину, сину, ангел мій,
Я тобі щасливу зичу долю,
Ти добре серце матимеш в житті,
А я, а я пишатимусь тобою.

До мене, мій синочку, пригорнись,
Навчу тебе обходити печалі,
Ти тільки всьому щиро усміхнись,
Цим захистиш себе й мене надалі.

Приспів. (3)

Сину, сину, сину, ангел мій,
Я тобі щасливу зичу долю,
Ти добре серце маєш у житті,
І я завжди пишатимусь тобою,
І я завжди пишатимусь тобою');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_269990_l1','pisniua_269990','YouTube','https://www.youtube.com/watch?v=FhSEAQeULSo','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_269522';
DELETE FROM song_versions WHERE song_id = 'pisniua_269522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_269522';
DELETE FROM songs WHERE id = 'pisniua_269522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_269522','Ой що ж то за шум учинився','(Комарик). Українська народна пісня. Виконує: Рушничок, Квітка Цісик','uk','ukraine_before_1917',NULL,NULL,'Народні перлини. Українські народні пісні. Київ, Державне видавництво художньої літератури, 1961.','Квітка Цісик виконує 1-3, 6-7 строфи','Ой що ж то за шум
Учинився,
Що комарик та й на мусі  |
Оженився!                | (2)

Та взяв собі жінку
Невеличку,
Що не вміє шити-прясти   |
Чоловічку.               | (2)

Що не вміє шити-прясти,
Ні варити,
Що не вмiє з комариком   |
Добре жити.              | (2)

Полетів же комар
В чисте поле,
В чистеє поле,           |
В зелену діброву.        | (2)

Ой сів же комар
На дубочку,
Звісив свої ніженьки     |
По листочку.             | (2)

Де взялася
Шура-бура,
Вона ж того комарика     |
З дуба здула.            | (2)

Ой упав же комар
На помості,
Потрощив, поломив        |
Ребра й кості.           | (2)

Прилетіла муха
Жалкувати:
"Ой де ж тебе, комарику, |
Поховати?"               | (2)

"Поховай ти мене
В чистім полі
Та й висип мені          |
Високу могилу!           | (2)

Туди будуть хлопці
Ізбиратись,
З комаревої могили       |
Чудуватись.              | (2)

"Ой що ж то лежить
За покойник?
Ой чи цар, чи гетьман,   |
Чи полковник?"           | (2)

"І не цар, не гетьман,
Не полковник,
А то мухи-зеленухи       |
Полюбовник!"             | (2)','[''pisni.org.ua'', ''cat:narodni'', ''cat:zhartivlyvi'', ''Народні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_269522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_269522','Ой що ж то за шум учинився','Ой що ж то за шум
Учинився,
Що комарик та й на мусі  |
Оженився!                | (2)

Та взяв собі жінку
Невеличку,
Що не вміє шити-прясти   |
Чоловічку.               | (2)

Що не вміє шити-прясти,
Ні варити,
Що не вмiє з комариком   |
Добре жити.              | (2)

Полетів же комар
В чисте поле,
В чистеє поле,           |
В зелену діброву.        | (2)

Ой сів же комар
На дубочку,
Звісив свої ніженьки     |
По листочку.             | (2)

Де взялася
Шура-бура,
Вона ж того комарика     |
З дуба здула.            | (2)

Ой упав же комар
На помості,
Потрощив, поломив        |
Ребра й кості.           | (2)

Прилетіла муха
Жалкувати:
"Ой де ж тебе, комарику, |
Поховати?"               | (2)

"Поховай ти мене
В чистім полі
Та й висип мені          |
Високу могилу!           | (2)

Туди будуть хлопці
Ізбиратись,
З комаревої могили       |
Чудуватись.              | (2)

"Ой що ж то лежить
За покойник?
Ой чи цар, чи гетьман,   |
Чи полковник?"           | (2)

"І не цар, не гетьман,
Не полковник,
А то мухи-зеленухи       |
Полюбовник!"             | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_269522_l1','pisniua_269522','YouTube','https://www.youtube.com/watch?v=juqYb8_q2_A','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_269522_l2','pisniua_269522','YouTube','https://www.youtube.com/watch?v=aGB3JT3xbv0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_269522_l3','pisniua_269522','YouTube','https://www.youtube.com/watch?v=Uk_vozfpp48','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_269952';
DELETE FROM song_versions WHERE song_id = 'pisniua_269952';
DELETE FROM songs_fts WHERE song_id = 'pisniua_269952';
DELETE FROM songs WHERE id = 'pisniua_269952';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_269952','Ой туман Мати за ярами','Українська народна пісня. Виконує: Нескорені','uk','ukr_ssr_1919_1991',NULL,'1950','1. Співають "Нескорені". — Львів: Край, 2006. 2. Надала Б. Сімович','Записала Б. Сімович від учасників Черкаського народного хору наприкінці 1950-х','Ой туман Мати за ярами
Ой поміж тими туманами
Да Сиз Голубчичок літає

Сиз Голубчик літає
Ой Він літає воркотує
Да крилечками часто блудить

Крилечками часто блудить
Ой ще тяжче ой ще важче
Ой хто кого вірно любить

Ой хто кого вірно любить
Ой ще тяжче ой ще важче
Ой хто з Пари розстається','[''pisni.org.ua'', ''cat:naddnipryanski'', ''cat:socialno-pobutovi'', ''Наддніпрянські пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_269952'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_269952','Ой туман Мати за ярами','Ой туман Мати за ярами
Ой поміж тими туманами
Да Сиз Голубчичок літає

Сиз Голубчик літає
Ой Він літає воркотує
Да крилечками часто блудить

Крилечками часто блудить
Ой ще тяжче ой ще важче
Ой хто кого вірно любить

Ой хто кого вірно любить
Ой ще тяжче ой ще важче
Ой хто з Пари розстається');
DELETE FROM song_links WHERE song_id = 'pisniua_267414';
DELETE FROM song_versions WHERE song_id = 'pisniua_267414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_267414';
DELETE FROM songs WHERE id = 'pisniua_267414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_267414','Над Дніпром','Музика: Платон Майборода Слова: Павло Тичина','uk','ukraine_before_1917',NULL,NULL,'Струни серця. Українські народні пісні про кохання. Київ, Держлітвидав, 1969.',NULL,'Вітер колише трави шовкові,
Ніч кругом...
Глянь, моя мила: зорі повисли
Над Дніпром.

Серце так б''ється, щастя ж бо з нами
Тут само:
Разом дорогою зоряно-ясною
Ми йдемо.

Ген за садами спить наше місто:
Все в огнях...
Низько над нами, враз пролетівши,
Скрикнув птах.
Пахнуть покоси. Сядем на сіні, -
Пізній час.
Я українець, а ти ж росіяночка -
Дружба в нас.

Зорі сяють нам вдалину.
На схід ти поглянь, кохана, -
Зорі світять нам путь ясну.
Встає вже зоря рум''яна.

Юність, юність, повна щастя без краю!
Люба, мила, краще від тебе не знаю!
Разом, кохана, пійдемо разом
В ясний наш день.

Вітер колише трави шовкові,
Ніч кругом...
Глянь, моя мила: зорі повисли
Над Дніпром.

Серце так б''ється, щастя ж бо з нами
Тут само:
Разом дорогою зоряно-ясною
Ми йдемо.

Ген за садами вогники гаснуть, -
Скрізь світа...
Час повертатись вже нам до міста,
Золота.

Ми ж наше місто обороняли
У війні.
Зараз його ми з тобою будуємо
Всі ці дні.

Щастя до нас чарівної ночі
Тут прийшло...
Глянь, моя мила, небо рожевим
Розцвіло.

Пахнуть покоси, сядем на сіні
В ранній час.
Я українець, а ти ж росіяночка -
Дружба в нас.

Зорі мов не хочуть сіять.
На схід ти поглянь, кохана, -
Зорі стали враз пригасать,
Вже встала зоря рум''яна.

Юність, юність, пoвна щастя без краю!
Люба, мила, краще від тебе не знаю!
Разом, кохана, пійдемо разом
В ясний день.

Щастя до нас чарівної ночі
Тут прийшло...
Глянь, моя мила, небо рожевим
Розцвіло.

О, як нам гарно йти проти вітру
В ранній час.
Я українець, а ти ж росіяночка -
Дружба в нас.    Фонограма-мінус (mp3)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:romansy'', ''Пісні про красу природи'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_267414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_267414','Над Дніпром','Вітер колише трави шовкові,
Ніч кругом...
Глянь, моя мила: зорі повисли
Над Дніпром.

Серце так б''ється, щастя ж бо з нами
Тут само:
Разом дорогою зоряно-ясною
Ми йдемо.

Ген за садами спить наше місто:
Все в огнях...
Низько над нами, враз пролетівши,
Скрикнув птах.
Пахнуть покоси. Сядем на сіні, -
Пізній час.
Я українець, а ти ж росіяночка -
Дружба в нас.

Зорі сяють нам вдалину.
На схід ти поглянь, кохана, -
Зорі світять нам путь ясну.
Встає вже зоря рум''яна.

Юність, юність, повна щастя без краю!
Люба, мила, краще від тебе не знаю!
Разом, кохана, пійдемо разом
В ясний наш день.

Вітер колише трави шовкові,
Ніч кругом...
Глянь, моя мила: зорі повисли
Над Дніпром.

Серце так б''ється, щастя ж бо з нами
Тут само:
Разом дорогою зоряно-ясною
Ми йдемо.

Ген за садами вогники гаснуть, -
Скрізь світа...
Час повертатись вже нам до міста,
Золота.

Ми ж наше місто обороняли
У війні.
Зараз його ми з тобою будуємо
Всі ці дні.

Щастя до нас чарівної ночі
Тут прийшло...
Глянь, моя мила, небо рожевим
Розцвіло.

Пахнуть покоси, сядем на сіні
В ранній час.
Я українець, а ти ж росіяночка -
Дружба в нас.

Зорі мов не хочуть сіять.
На схід ти поглянь, кохана, -
Зорі стали враз пригасать,
Вже встала зоря рум''яна.

Юність, юність, пoвна щастя без краю!
Люба, мила, краще від тебе не знаю!
Разом, кохана, пійдемо разом
В ясний день.

Щастя до нас чарівної ночі
Тут прийшло...
Глянь, моя мила, небо рожевим
Розцвіло.

О, як нам гарно йти проти вітру
В ранній час.
Я українець, а ти ж росіяночка -
Дружба в нас.    Фонограма-мінус (mp3)');
DELETE FROM song_links WHERE song_id = 'pisniua_271114';
DELETE FROM song_versions WHERE song_id = 'pisniua_271114';
DELETE FROM songs_fts WHERE song_id = 'pisniua_271114';
DELETE FROM songs WHERE id = 'pisniua_271114';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_271114','Галльо','Музика: Степан Гумінілович Слова: Ю.Форись. Виконує: Лілія Коструба','uk','ukraine_1991',NULL,'2008','С.Гумінілович, Ю.Форись. Галльо: Фокстрот для голосу у супроводі ф-но. - Рукопис.','Виконує Лілія Коструба. Фрагмент пісні: http://liliyakostruba.at.ua/news/2008-02-22-6','1. Є на світі різне лихо,
Що до часу сидить тихо
І чекає лиш хвилини,
А що гірше бути може,
Як це лихо, що крий Боже,
Прибереться в стать дівчини.
Залишив давній спокій тебе,
І скорішим ритмом серце б''є.

Приспів:
Галльо, галльо, в дівчині всяке зло,
З природи вже вона така -
Спокусить до гріха.
Галльо, галльо, чи бачив може хто,
Щоб хтось чоло і розум свій
Спокусі ставив цій.
Дівчина тілька гляне -
Ти не своїм став,
Вже серце бідне в''яне -
Ти пропав, пропав.
Галльо, галльо, солодке теє зло,
Без нього важко жити вже -
Воно конечне є.

2.Що ж такого ця дівчина,
Що до неї серце лине,
Що без неї вмерти радше,
Що ж такого гарні очі,
І химери всі дівочі:
Уста, ноги і так дальше...
Все за ними тужний погляд йде
І скорішим ритмом серце б''є.

Приспів.','[''pisni.org.ua'', ''cat:43'', ''cat:dances'', ''cat:foxtrots'', ''Еміґрантські пісні'', ''Пісні до танцю'', ''Фокстроти'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_271114'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_271114','Галльо','1. Є на світі різне лихо,
Що до часу сидить тихо
І чекає лиш хвилини,
А що гірше бути може,
Як це лихо, що крий Боже,
Прибереться в стать дівчини.
Залишив давній спокій тебе,
І скорішим ритмом серце б''є.

Приспів:
Галльо, галльо, в дівчині всяке зло,
З природи вже вона така -
Спокусить до гріха.
Галльо, галльо, чи бачив може хто,
Щоб хтось чоло і розум свій
Спокусі ставив цій.
Дівчина тілька гляне -
Ти не своїм став,
Вже серце бідне в''яне -
Ти пропав, пропав.
Галльо, галльо, солодке теє зло,
Без нього важко жити вже -
Воно конечне є.

2.Що ж такого ця дівчина,
Що до неї серце лине,
Що без неї вмерти радше,
Що ж такого гарні очі,
І химери всі дівочі:
Уста, ноги і так дальше...
Все за ними тужний погляд йде
І скорішим ритмом серце б''є.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271114_l1','pisniua_271114','YouTube','https://www.youtube.com/watch?v=wRKAv6dRgv0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271114_l2','pisniua_271114','YouTube','https://www.youtube.com/watch?v=wRnd-UlzNvU','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271114_l3','pisniua_271114','YouTube','https://www.youtube.com/watch?v=HXAkbwTnc0M','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_270961';
DELETE FROM song_versions WHERE song_id = 'pisniua_270961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_270961';
DELETE FROM songs WHERE id = 'pisniua_270961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_270961','Завтра в далеку дорогу','Українська народна пісня. Виконує: Рутенія, Гурт Остапа Стахіва, Тарас Житинський','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис',NULL,'Завтра в далеку дорогу
Свого коня осідлаю,
Кріса закину за плечі,    |
Милу свою попрощаю.       | (2)

Вихром полину я в поле,
Зелене море сколишу,
І незабудку на спогад     |
Своїй дівчині я лишу.     | (2)

Гей виряджала матуся
Сина, ой, свого сокола:
Щастя для нього у бою     |
Щиро благала у Бога.      | (2)

А дівчинонька соколу
Червону квітку подала,
"Слава героям Вкраїни!",  |
Вслід партизанам сказала. | (2)

Гей, там ідуть партизани,
Вітер за ними лиш віє
І не одне серденятко      |
Тужить за ними та мліє.   | (2)

Завтра в далеку дорогу
Свого коня осідлаю,
Кріса закину на плечі,    |
Милу свою попрощаю.       | (2)','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_270961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_270961','Завтра в далеку дорогу','Завтра в далеку дорогу
Свого коня осідлаю,
Кріса закину за плечі,    |
Милу свою попрощаю.       | (2)

Вихром полину я в поле,
Зелене море сколишу,
І незабудку на спогад     |
Своїй дівчині я лишу.     | (2)

Гей виряджала матуся
Сина, ой, свого сокола:
Щастя для нього у бою     |
Щиро благала у Бога.      | (2)

А дівчинонька соколу
Червону квітку подала,
"Слава героям Вкраїни!",  |
Вслід партизанам сказала. | (2)

Гей, там ідуть партизани,
Вітер за ними лиш віє
І не одне серденятко      |
Тужить за ними та мліє.   | (2)

Завтра в далеку дорогу
Свого коня осідлаю,
Кріса закину на плечі,    |
Милу свою попрощаю.       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_270961_l1','pisniua_270961','YouTube','https://www.youtube.com/watch?v=ML1hz_Z-VPE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_270961_l2','pisniua_270961','YouTube','https://www.youtube.com/watch?v=0p-yBIkgkw4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_270961_l3','pisniua_270961','YouTube','https://www.youtube.com/watch?v=k4_6hT1Q-as','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_270961_l4','pisniua_270961','YouTube','https://www.youtube.com/watch?v=NLDNGqIoXpc','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_270961_l5','pisniua_270961','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_270859';
DELETE FROM song_versions WHERE song_id = 'pisniua_270859';
DELETE FROM songs_fts WHERE song_id = 'pisniua_270859';
DELETE FROM songs WHERE id = 'pisniua_270859';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_270859','Рятуйте пісню','Музика: Юрко Герасименко. Виконує: Юрій Герасименко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Стікає в крові пісня світова,
Вставайте, люди, пісня ще жива,
Допоки ще не пізно, рятуйте, люди, пісню,      |
Рятуйте, люди, пісню, рятуйте!                 | (2)

Хай пісня глушить ядерні громи,
Співайте, люди, - хто ж коли не ми?
Хай спів стрясає гори, співайте, люди, хором,  |
Співайте, люди, хором, співайте!               | (2)

Потрібна світу музика борні,
Під небом пісні бомби не страшні,
Хоч землю кров зросила - у пісні правди сила,  |
У пісні правди сила, сила.                     | (2)

Коли співають - пісня ще жива,
Співуче серце грати розрива,
Не вб''ють громи зловісні життя правічну пісню, |
Життя правічну пісню не вб''ють.                | (2)

Співайте, люди, нелюдам на зло,
Співайте хором, що б там не було.
Усім катам на горе співайте, люди, хором,      |
Співайте, люди, хором, співайте!               | (4)

Співайте! Співайте!','[''pisni.org.ua'', ''cat:pisni'', ''Пісні про пісню'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_270859'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_270859','Рятуйте пісню','Стікає в крові пісня світова,
Вставайте, люди, пісня ще жива,
Допоки ще не пізно, рятуйте, люди, пісню,      |
Рятуйте, люди, пісню, рятуйте!                 | (2)

Хай пісня глушить ядерні громи,
Співайте, люди, - хто ж коли не ми?
Хай спів стрясає гори, співайте, люди, хором,  |
Співайте, люди, хором, співайте!               | (2)

Потрібна світу музика борні,
Під небом пісні бомби не страшні,
Хоч землю кров зросила - у пісні правди сила,  |
У пісні правди сила, сила.                     | (2)

Коли співають - пісня ще жива,
Співуче серце грати розрива,
Не вб''ють громи зловісні життя правічну пісню, |
Життя правічну пісню не вб''ють.                | (2)

Співайте, люди, нелюдам на зло,
Співайте хором, що б там не було.
Усім катам на горе співайте, люди, хором,      |
Співайте, люди, хором, співайте!               | (4)

Співайте! Співайте!');
DELETE FROM song_links WHERE song_id = 'pisniua_271175';
DELETE FROM song_versions WHERE song_id = 'pisniua_271175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_271175';
DELETE FROM songs WHERE id = 'pisniua_271175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_271175','Кленова балада','Музика: Анатолій Матвійчук Слова: Анатолій Матвійчук. Виконує: Оксана Білозір','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Загриміли в полі, мов громи, гармати,
Стрільця молодого виряджала мати,
Витирала сльози і благала Бога,
Щоб вернув їй сина додому живого,
Щоб вернув їй сина додому живого...
Не плач, моя рідна, посивівша мати,
Я пішов на войну тебе визволяти,
А, як не діждешся з тої Січі мене,
Посади, благаю, біля хати клена,
Посади, благаю, біля хати клена...

Приспів:
А туман - білим полем,
А біда - чорним болем,
А душа - буйним кленом,
Зеленим, ой зеленим.
А туман - білим полем,
А біда - чорним болем,
А душа - буйним кленом,
Зеленим, зеленим.

Тягнуться до сонця стовбури кленові,
Зрошені сльозами горя і любові,
Довгими ночами тихо шепчуть віти, -
То твої, Вкраїно, найдорожчі діти,
То твої, Вкраїно, найрідніші діти...

Приспів','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_271175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_271175','Кленова балада','Загриміли в полі, мов громи, гармати,
Стрільця молодого виряджала мати,
Витирала сльози і благала Бога,
Щоб вернув їй сина додому живого,
Щоб вернув їй сина додому живого...
Не плач, моя рідна, посивівша мати,
Я пішов на войну тебе визволяти,
А, як не діждешся з тої Січі мене,
Посади, благаю, біля хати клена,
Посади, благаю, біля хати клена...

Приспів:
А туман - білим полем,
А біда - чорним болем,
А душа - буйним кленом,
Зеленим, ой зеленим.
А туман - білим полем,
А біда - чорним болем,
А душа - буйним кленом,
Зеленим, зеленим.

Тягнуться до сонця стовбури кленові,
Зрошені сльозами горя і любові,
Довгими ночами тихо шепчуть віти, -
То твої, Вкраїно, найдорожчі діти,
То твої, Вкраїно, найрідніші діти...

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271175_l1','pisniua_271175','YouTube','https://www.youtube.com/watch?v=svbr40V0AXI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271175_l2','pisniua_271175','YouTube','https://www.youtube.com/watch?v=R1YEoRVQcus','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271175_l3','pisniua_271175','YouTube','https://www.youtube.com/watch?v=FKgeRrIjC4g','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271175_l4','pisniua_271175','www.minus.lviv.ua','https://www.minus.lviv.ua','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_271616';
DELETE FROM song_versions WHERE song_id = 'pisniua_271616';
DELETE FROM songs_fts WHERE song_id = 'pisniua_271616';
DELETE FROM songs WHERE id = 'pisniua_271616';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_271616','Вилинули Соколи с Чужої Сторони','(Ясний Сокіл і Соколя). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські релігійні роздуми про Спасіння © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003','Українські реліґійні роздуми про Воскресіння, Неволю і Спасіння. Пісні Великодні — Спасительні: світ не по Правді. Пісні-плачі Сокола-Прадіда. Буде в Тебе Господь на Вечері. Тай Раду радят за Святу Весну. Ой у Сьватую Неділеньку. Ой Ми зіслані на Признаванє. Над город Царигород надлітає жалібненько проквиляє. Бездільне Своє та Безрідне Ясне Соколя утеряв. І хороше ходити та немає чоловікові од Радости. У Чистому Степу собі Живности доставати. Вилинули Соколи с Чужої Сторони Гей у Неділю та бардзо рано пораненьку Питається Дніпр Тихого Дуная У Неділю барзе рано пораненьку А єсть це нас Отцева-та-матчина Молитва покарала. Гей Брате Мій Орле а де ж Мої Маленькії Діти? А вже років триста як козак в неволі Гомін гомін по діброві Там на Кубані єсть Брюховецька Байді Молодому Мед-горілку пити. Астрально-мітологічна символіка Викрадення і Неволі Сокола. ― Чего же вы хотите? ― заботливо спросила Екатерина. ― Ваше царское величество... черевички, что на ногах ваших...:-) Пісня подає мітологійне видиво нападу на Ясне Соколя ― символ Молодого Місяця і взагалі Астральних Світил ― Стрільців-булахівців та закривання його очей Жемчугом. Символіка зрозуміла: спроба викрадення і затемнення Астральних Світил, розз''єднання й підкорення Світа. Світові аналогії до цього видива наводились. Особливо важливі Фінські ― про визволення Світил Спасителем або невинною дочкою мітичного Коваля. Спільною темою є пошукуваня мітичного чинника Щастя, з яким деякі відміни Фінських мітів утотожнюють Місяць і Сонце. Зникнення Світа ― це знак нещастя: Ой в Ліску в Ліску на Жовтім Піску Ой уся Правда тепер погасла Правда пропала кривда постала В тую годину Два Брата Рідненьких потопало. На Синьому Морі на Білому Камені сидить Сокіл Ясен Ой на Чорному Морі на Білому Камені Судна Козацькії-Молодецькії на Три Часті розбиває. Гей на Чорному Морі та на Камені Біленькому Гей усі Поля Самарські почорніли. Гей усі Поля Самарські почорніли Ой всі Поля Самарськиї не зоряли Всі Мої Квіти Луговиє і Низовиє понидєли. Питається Дніпр Тихого Дуная А в Тій Темниці Сімсот Козаків Бідних Невольників. Гей на Чорному Морі да на Камені Біленькому Гей що на Чорному Морі та на Тому Білому Камені Що на Чорному Морі на Камені Біленькому Святий Збір, Ідеал щастя та Астральна символіка згасання Правди. В Колядках Астральна Трійця, Місяць, Сонце і Зоря, ― це символ Прадіда (Прабатька) з Ріднею, мітичний Взірець щасливої сім''ї, мітичний чинник та Ідеал щастя, символ "Давньої Правдоньки Старих Людей" ― давнього Закону Любови. Трійця ― також символ Різдва і приходу Господа. Різдво означає яву Світа-любови, а в ньому ― Людини люблячої. Любов світить, освічує і просвіщає, як і Трійця. Людина любляча стає просвіченою, освіченою. Рідня в злагоді-гармонії й любові — це Святість, Боже улюблене місце, храм, де служать Богу і де Бог служить людям. Той, хто шукає Бога, знаходить Його в любови-рідні. Символіка Бога в Астральній ґлорії ясна ― світло і радість сімейної Любови, народження і виховання дітей. Викрадення Світил, їх затемнення означає згасання Правди ― зникнення Ідеалу щастя-любови. Тоді настає вічна неволя й недоля затемненого світа, не по Правді, в якому все воюють пани-царі. У світі не по Правді розпадаються сім''ї, віддаляються діти від батьків, розверзається прірва між поколіннями, розпорошуються люди. Якщо зникають чи руйнуються мітичні взірці, то світ земний псується, занепадає. Чи світ не по Правді (="сучасне" суспільство) не викрадає дітей у батьків? Як батькам не "утеряти" дітей в такому світі? Як батькам турбуватися за дітей? Як зберегти й уберегти Небесні взірці, не допустити їх підміни скороминущими споживацькими, здобичницькими? Так пояснюються Колядки, а за ними ― Пісня про Ясного Сокола і Соколя. Ой ходив ходив Місяць по Небі Ой ходімо ми Бога шукати Бога шукати людей спасати Ой ходили та блудили Три Коляднички Не служи ти королю служи Богу-царю Кришталеві Ворітця й одчиняються Ой в Ліску в Ліску на Жовтім Піску Ой уся Правда тепер погасла Правда пропала кривда постала Гей у Неділю та бардзо рано-пораненьку Та лучше ж то ми будемо У Чистому Степу собі Живности доставати Праведність ― правидність ― світил і людей. Є в Пісні ідея, подібна до Фінської, ― про Світила (=вищі сутності) для втіхи тільки богачів, владарів Города-Царигорода, замість рівномірного Світла і служби всім людям, багатим і бідним. Тоді нема "Божого Світу ні Сонечка праведного (правидного)", не стає Щастя-долі, життя людям. На срібло-золото багатий та немає од Радості. В кінці Пісні говориться: І своє Дитя Бездільне та Безрідне Ясне Соколя Поспішно на крила хватає Під Високу Висоту залітає Та город-Царигород заклинає Оже хоч ти Царигород-город на сребро-золото багатий Шо є в тобі шо їсти і пити І хороше ходити Та немає чоловікові од Радости або ― з іншої відміни: Од Царіграда-города Ясний Сокіл одлітає До свого Дитяти Словами промовляє Чи лучше каже Бездільне-Безрідне Ясне Соколя У Чистому Полі безпешно гуляти Ніж у Царіграді-городі у Івана Богославця На руках проживати Бо царь на царє війско збирає. Колядки ж співають, що із-за панів-царів і воєн, які вони постійно розв''язують, Правди нема: Ой в Чистім Поли блисько Дороги Чомуж так не є як було Давно Як було Давно а в Преждевіку Свєтам Николам Пива не варєт Свєтам Рождествам Служби не служєт Свєтам Водорщам Свічи не сучєт Бо уже давно як Правди нема! Уже сє царі повойовали Бо царь на царє війско збирає А брат на брата мечем рубає Сестра сестрици чари готує Ой бо син вітцє до права тєгне Донька на матїр гнїв піднимає Ой бо кум кума зводит з розуму Сусїд сусїда збавляє хлїба Плачі Сокола-Прадіда. Тому плаче Сокіл-Прадід, квилить-проквиляє, за Ясним Соколям (=душа людини, її надія, діти), застерігає, хоче людей спасти і спасає. Його пісня ― це Пісня-плач. Гей на Чорному Морі та на Камені Біленькому Гей на Чорному Морі Та на Камені Біленькому Там сидів Сокіл Ясненький Ой жалібненько квилить-проквиляє Да на Чорнеє Море спильна поглядає А що на Чорному Морі щось не Добреє починає Пісні-плачі Сокола-Прадіда як особливі поетичні твори зроджуються з праісторичних Колядних традицій, ― про Різдво Світа, космічні Творчі Води, Сльози і Купіль Бога, про Прадіда як Вчителя, Вірника і Лицаря Божого, Речника людей перед Богом, про Плач Сокола ― та їх продовжують в історичному часі. З цих традицій виходять народні назви для такого роду Пісень ― "плачі", "козацькі плачі", "козацькі (молодецькі, лицарські) пісні". Реліґійно-мітологійні видива Спасіння. Подібна до невинної дочки мітичного Коваля з Фінських переказів, ― яка визволяє Небесні світила і тим спасає людей, ― Дівка-бранка Маруся-попівна Богуславка, Український жіночий образ Спасителя. Ця Діва-спасителька є символом Зорі, яка звіщає, ― як на Свят-Вечір, так і перед Великоднем, ― велике Свято, Різдво-Відродження Світа, прихід Господа та Спасіння з Неволі неправди. Козаки Бідні Невольники символізують викрадені й заховані Астральні Світила, Місяць-Нів та Зірки (=діти, соколята). В " Ніч перед Різдвом " Гоголя ― Відьма краде майже всі Зорі (символ дітей!), які так і не повертаються на Небо, і ніхто того не помічає! Чорт (чорний і нечистий, як булахівці:-) ― викрадає Місяць, потім його з кишені "випадково" губить і Місяць ніби-то повертається назад. Чи той самий? чи підмінений? може людям лишається не той світ ― світ без Світа, світ не по Правді, ― удаваний, вигаданий, не Добрий? Ніхто не помічає викрадення-підміни Світа і не шукає Його. Вакула шукає черевички ― знаходить їх у цариці, в "Цари-городі". З''являються "нові" ― "історичні" ― чинники щастя, мірила і запоруки. Алегорія неволі сокола. ― Встаньте, ― прозвучал над ними повелительный и вместе приятный голос. Некоторые из придворных засуетились и толкали запорожцев. ― Не встанем, мамо! не встанем! умрем, а на встанем! ― кричали запорожцы.... ― Светлейший обещал меня познакомить сегодня с моим народом, которого я до сих пор еще не видала, ― говорила дама с голубыми глазами, рассматривая с любопытством запорожцев. ― Хорошо ли вас здесь содержат? ― продолжала она, подходя ближе. ― Та спасиби, мамо! Провиянт дают хороший, хотя бараны здешние:-) совсем не то, что у нас на Запорожье, ― почему ж не жить как-нибудь?.. ― Чего же вы хотите? ― заботливо спросила Екатерина. ― Ваше царское величество... черевички, что на ногах ваших... (Ночь перед Рождеством) Гомін гомін гомін по діброві... Галагани (Ґалаґани)... Носи... У Пісні не говориться про "пташку в золотій клітці". Сокіл ― птах мисливський: його ловлять, "приручають", готують до полювання. Коли сокола пускають за здобиччю, він "вільний". Може й не переслідувати нещасну здобич, не вертатися, втекти на "свободу". Отже мова про неволю служби ― "на втіху" панам-царям, в їх нескінченних війнах, завоюваннях, в погонях за здобиччю, за землею. Про власне бажання здобичі і без міри, про добровільну неволю у світі не по Правді, про забуття давніх Ідеалів та Закону Любови. А десь ми поверх всякої міри гріха набрали. Да ще ж хотілось швидше здобичі набірати. Із-за цього Правда загасла, нема в світі Правди, пояснюють Колядки. За це карають Вітцева-матчина Молитва і Сльози. Які дійсні історичні події та особи могли відобразитися в Пісні? Це заробітчанство, жадоба здобичі та слави будь-якою ціною, воєнна жорстокість. Це війни ХУІІ ст., в яких брали участь козаки-найманці. Можливо, саме Тридцятилітня війна. Символічні Тридцять Літ у неволі згадуються в Пісні про козаків бідних невольників та Дівку-бранку Марусю-попівну Богуславку. Це всі ті, хто став на службу панам-царям: козаки-найманці, реєстрове козацтво, старшина, поети... Їх безпосереднім символом є "стрільці-булахівці". Пісні-плачі Сокола не про розквіт, не про історичну славу, а про переродження, занепад і моральну катастрофу ― саме в цьому полягає катастрофа історична. Вони тужать, як і Колядки, за старими традиціями служби людям і Богу, за давнім Законом Любови, за мітичною Славою Прадіда ― Вчителя, Лицаря-Козака і Вірника Божого, Речника народного перед Господом. Переживають за те, що людям тепер потрібне те золото-срібло, яке в шапки набирають, а не Золото-Срібло Колядок і Щедрівок, символ Різдва і Творення Світа, Любови, Первовічної Пари. Але вони і Суд судять. Попереджають про неминучу кару Божу ― кару Вітцевої-матчиної Молитви і Сліз. Застерігають проти неволі служби панам-царям, світу не по Правді, та забуття давніх Ідеалів. Ясний Сокіл (Прадід, Спаситель) рятує з неволі своє Дитя (=душа людини, поет, козаки, народ), для життя по Правді-любови, для служби людям і Господу Богу. Пісні-плачі Сокола повертають людей до розуміння найвищого добра в особі Бога та віри в Божий справедливий суд, до Отцевої-матчиної Молитви, до Звичаю, до Радості ― до Чистого Поля (=Правдиве життя). Вони спасають людей від неволі затемненого світа, не по Правді, в якому воюють пани-царі. Без сумніву, відома була ще Староукраїнцям загально-світова, ― і особливо Полудневого Сходу, ― думка про неминучий Прихід Спасителя з Неба: сліди цієї старої ідеї можна доглянути виразно в старинних Колядках і Щедрівках, в шануванні Прадіда. Ця ж думка в Пісні про Ясного Сокола. Ідея християнська про народження Спасителя світа скріплює оцю давню віру Українців у Бога Творця, в те, що Він навідається до своїх людей, принесе їм благословенство і охоронить від злого. Колядки та Щедрівки повняться символами Життя і Його стверджують. Навіть в січі світу не по Правді чоловік мусить триматися Правди: Що в Батька Грицька тай Син Василько Буду в січі жить Бога боронить А як повернусь може оженюсь А як повернусь тоді оженюсь Листки з приводу цієї Пісні: Українські реліґійні пісні-роздуми про Неволю та Спасіння. Плач Сокола. Традиції Батька. Коляда і Великдень: Різдво і Відродження Світа. Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень','Вилинули Соколи
С Чужої Сторони
Сіли-впали у Лісі
На Превоздобному Древі-Оpіcі
Ізвили собі Гніздо Щерлатноє
Ізнесли Яйце Жемчужноє
І вивели собі Дитя
Бездільне
Та Безрідне
Ясне Соколя

То як полетів Сокіл Старий
На Чужу Україну Живности доставати
То він собі Живности не достав
Тілько
Бездільне Своє та Безрідне Ясне Соколя утеряв

То він у Свою Україну прилітає
Свого Бездільного та Безрідного Соколяти на місті не застає
То він Сизокрилого Орла стрічає
І до єго Словами примовляє

Ей Сизокрилий Орле
Чи ти не чув чи не прибачив де то Моє Дитя
Бездільне та Безрідне Ясне Соколя поділося

Ей то Сизокрилий Орел теє зачуває
До Ясного Сокола Словами примовляє
Ей то ти то Ясний Соколе

Їхали Стрільці
Булахівці
З Города
Царьгорода
Та твоє Гніздо Щерлатноє увидали
Та Оріх-Дерево зрубали
Та Твоє Дитя
Бездільне
Та Безрідне
Ясне Соколя
Забрали

Та в город Царіград заношали
Та Сребраннє Пута на ноги надівали
Жемчугом очи йому закривали
Та Івану Богословцю на утіху продавали

То то Івась Богословець єго забірає
Золоті Пута на ноги надіває
І Жемчугом очі запускає
По Царигороді гуляє
І Ясне Соколя на руках носить серце своє утішає

То як би-ж ти Ясний Соколе над Цариград-город надлетів
Та жалібненько заквілив
Хай Твоє Дитя
Бездільне та Безрідне Соколя
Не так то весело буває
Не якої птиці не ввижає
Головку склоняє
То чи не буде Іван Богословець велике милосердіє мати
Чи не буде єго на Високий Вал викидати

То Ясний Сокіл теє зачуває
Над город Царигород надлітає
Жалібненько проквиляє

То Ясне Соколя теє зачуває
Свою головку низенько склоняє
І очі під ліб пускає
То Іван Богословець на єго поглядає
Важко здихає
До своїх Слуг словами примовляє

Ой ви вірні мої Слуги
Возьміть Оце Дитя
Бездільне та Безрідне Соколя
Та Золоті Пута з ніг скидайте
Жемчуг з очей здіймайте
Та на Високий Вал виношайте
Та на Тихий Вітер єго пускайте
Буде на єго Тихий Вітер повівати
Чи не буде воно на своє здоровья змагати

Ой у Сьватую Неділеньку барзо рано пораненьку
Бездільне та Безрідне Ясне Соколя забірали
Золоті Пута з ніг скидали
Жемчуг з очей знімали
Та на Високий Вал виношали
На Тихий Вітер пускали

То Ясний Сокіл на Сиру Землю крильця свої спускає
І Своє Дитя
Бездільне та Безрідне Ясне Соколя
Поспішно на крила хватає
Під Високу Висоту залітає

Та город-Царигород заклинає
Оже хоч ти Царигород-город на сребро-золото багатий
Шо є в тобі шо їсти і пити
І хороше ходити
Та немає чоловікові одрадости

Услиши Господи  у прозьбах / у нещетних молитвах
Дай Боже миру царьському / народу християнському
На многая літа / до коньця віка!','[''pisni.org.ua'', ''cat:dumy'', ''cat:kozacki'', ''cat:socialno-pobutovi'', ''cat:suspilno-politychni'', ''Думи'', ''Козацькі пісні'', ''Соціально-побутові пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_271616'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_271616','Вилинули Соколи с Чужої Сторони','Вилинули Соколи
С Чужої Сторони
Сіли-впали у Лісі
На Превоздобному Древі-Оpіcі
Ізвили собі Гніздо Щерлатноє
Ізнесли Яйце Жемчужноє
І вивели собі Дитя
Бездільне
Та Безрідне
Ясне Соколя

То як полетів Сокіл Старий
На Чужу Україну Живности доставати
То він собі Живности не достав
Тілько
Бездільне Своє та Безрідне Ясне Соколя утеряв

То він у Свою Україну прилітає
Свого Бездільного та Безрідного Соколяти на місті не застає
То він Сизокрилого Орла стрічає
І до єго Словами примовляє

Ей Сизокрилий Орле
Чи ти не чув чи не прибачив де то Моє Дитя
Бездільне та Безрідне Ясне Соколя поділося

Ей то Сизокрилий Орел теє зачуває
До Ясного Сокола Словами примовляє
Ей то ти то Ясний Соколе

Їхали Стрільці
Булахівці
З Города
Царьгорода
Та твоє Гніздо Щерлатноє увидали
Та Оріх-Дерево зрубали
Та Твоє Дитя
Бездільне
Та Безрідне
Ясне Соколя
Забрали

Та в город Царіград заношали
Та Сребраннє Пута на ноги надівали
Жемчугом очи йому закривали
Та Івану Богословцю на утіху продавали

То то Івась Богословець єго забірає
Золоті Пута на ноги надіває
І Жемчугом очі запускає
По Царигороді гуляє
І Ясне Соколя на руках носить серце своє утішає

То як би-ж ти Ясний Соколе над Цариград-город надлетів
Та жалібненько заквілив
Хай Твоє Дитя
Бездільне та Безрідне Соколя
Не так то весело буває
Не якої птиці не ввижає
Головку склоняє
То чи не буде Іван Богословець велике милосердіє мати
Чи не буде єго на Високий Вал викидати

То Ясний Сокіл теє зачуває
Над город Царигород надлітає
Жалібненько проквиляє

То Ясне Соколя теє зачуває
Свою головку низенько склоняє
І очі під ліб пускає
То Іван Богословець на єго поглядає
Важко здихає
До своїх Слуг словами примовляє

Ой ви вірні мої Слуги
Возьміть Оце Дитя
Бездільне та Безрідне Соколя
Та Золоті Пута з ніг скидайте
Жемчуг з очей здіймайте
Та на Високий Вал виношайте
Та на Тихий Вітер єго пускайте
Буде на єго Тихий Вітер повівати
Чи не буде воно на своє здоровья змагати

Ой у Сьватую Неділеньку барзо рано пораненьку
Бездільне та Безрідне Ясне Соколя забірали
Золоті Пута з ніг скидали
Жемчуг з очей знімали
Та на Високий Вал виношали
На Тихий Вітер пускали

То Ясний Сокіл на Сиру Землю крильця свої спускає
І Своє Дитя
Бездільне та Безрідне Ясне Соколя
Поспішно на крила хватає
Під Високу Висоту залітає

Та город-Царигород заклинає
Оже хоч ти Царигород-город на сребро-золото багатий
Шо є в тобі шо їсти і пити
І хороше ходити
Та немає чоловікові одрадости

Услиши Господи  у прозьбах / у нещетних молитвах
Дай Боже миру царьському / народу християнському
На многая літа / до коньця віка!');
DELETE FROM song_links WHERE song_id = 'pisniua_270879';
DELETE FROM song_versions WHERE song_id = 'pisniua_270879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_270879';
DELETE FROM songs WHERE id = 'pisniua_270879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_270879','Ходить турок по риночку','Виконує: Юрій Герасименко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ходить турок по риночку,
Гей, море реве...
Та й торгує дівчиноньку,
Серце моє...

Як сторгував та й заплатив,
Гей, море реве...
Та й зачав її питати
Серце моє...

"Чи є в тебе отець мати?"
Гей, море реве...
"Чи є в тебе сестри й брати?"
Серце моє...

Були в мене отець, мати,
Гей, море реве...
Були в мене сестри й брати,
Серце моє...

Один пішов в Туреччину,
Другий пішов в Волощину,
Третій пішов на Сторщину,
Ой, море, ой...

Полонянко, моя бідна,
Гей, море реве...
А ти ж моя сестра рідна,
Ой, серце моє','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_270879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_270879','Ходить турок по риночку','Ходить турок по риночку,
Гей, море реве...
Та й торгує дівчиноньку,
Серце моє...

Як сторгував та й заплатив,
Гей, море реве...
Та й зачав її питати
Серце моє...

"Чи є в тебе отець мати?"
Гей, море реве...
"Чи є в тебе сестри й брати?"
Серце моє...

Були в мене отець, мати,
Гей, море реве...
Були в мене сестри й брати,
Серце моє...

Один пішов в Туреччину,
Другий пішов в Волощину,
Третій пішов на Сторщину,
Ой, море, ой...

Полонянко, моя бідна,
Гей, море реве...
А ти ж моя сестра рідна,
Ой, серце моє');
DELETE FROM song_links WHERE song_id = 'pisniua_271158';
DELETE FROM song_versions WHERE song_id = 'pisniua_271158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_271158';
DELETE FROM songs WHERE id = 'pisniua_271158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_271158','Свіча','(в пам''ять Голодомору 1932-33 рр.). Музика: Мирослав Скорик Слова: Богдан Стельмах. Виконує: Оксана Білозір','uk','ukr_ssr_1919_1991',NULL,'1932','аудіозапис',NULL,'На вікні свіча миготіла,
Кривді з-за плеча тріпотіла, -
До правди летіла -
Там, де рідний край, де Україну
Голоду нагай шмагав до згину -
Не день, не годину.
Вогником свіча повівала,
Мати дитинча сповивала,
Пісні гомоніла
Про гірку біду, недолю голу,
Про чужу орду кривавочолу -
Бодай скам''яніла.

На вікні свіча догасала,
Мати дитинча колисала -
Не в колисці, ні,
Не в колисці, але у труні ...
Мертві по ровах - їх мільйони,
По німих церквах стогнуть дзвони...
Хто ж то Україні, Боже, нині допоможе?..

На вікні свічі не задути,
Скарги і плачі досі чути -
Усе люди тямлять.
Досі жаль до сліз тих, що не впору
Їх потяв укіс Голодомору,
Тож, вічна їм пам''ять.

На вікні свіча миготіла','[''pisni.org.ua'', ''cat:holodomor'', ''cat:nostalgia'', ''cat:suspilno-politychni'', ''Пісні про голодомор'', ''Пісні з ностальгічними мотивами'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_271158'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_271158','Свіча','На вікні свіча миготіла,
Кривді з-за плеча тріпотіла, -
До правди летіла -
Там, де рідний край, де Україну
Голоду нагай шмагав до згину -
Не день, не годину.
Вогником свіча повівала,
Мати дитинча сповивала,
Пісні гомоніла
Про гірку біду, недолю голу,
Про чужу орду кривавочолу -
Бодай скам''яніла.

На вікні свіча догасала,
Мати дитинча колисала -
Не в колисці, ні,
Не в колисці, але у труні ...
Мертві по ровах - їх мільйони,
По німих церквах стогнуть дзвони...
Хто ж то Україні, Боже, нині допоможе?..

На вікні свічі не задути,
Скарги і плачі досі чути -
Усе люди тямлять.
Досі жаль до сліз тих, що не впору
Їх потяв укіс Голодомору,
Тож, вічна їм пам''ять.

На вікні свіча миготіла');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271158_l1','pisniua_271158','YouTube','https://www.youtube.com/watch?v=1v7OzHXnU6I','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271158_l2','pisniua_271158','YouTube','https://www.youtube.com/watch?v=mGwMjKvxD_4','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271158_l3','pisniua_271158','YouTube','https://www.youtube.com/watch?v=eyJwUjNWijE','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271158_l4','pisniua_271158','YouTube','https://www.youtube.com/watch?v=t83pB8EQxyA','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271158_l5','pisniua_271158','http://www.ex.ua/view/2618082','http://www.ex.ua/view/2618082','external',NULL,5);
DELETE FROM song_links WHERE song_id = 'pisniua_272522';
DELETE FROM song_versions WHERE song_id = 'pisniua_272522';
DELETE FROM songs_fts WHERE song_id = 'pisniua_272522';
DELETE FROM songs WHERE id = 'pisniua_272522';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_272522','Повстання проти польських панів',NULL,'uk','ukraine_before_1917',NULL,NULL,'"Думи. Історико-героїчний цикл". Київ, Дніпро, 1982.',NULL,'Ой чи добре пан Хмельницький починав,
Як з берестецького року всіх панів-ляхів на Вкраїну
На чотири місяці висилав
І волів панам-ляхам на Вкраїні чотири місяці стояти,
Ані козаку, ні мужику ні жадної кривди починати.
Да вже ж пани-ляхи на Вкраїні три місяці стояли;
Стало на четвертий місяць повертати,
Стали пани-ляхи способ прибирати:
Од козацьких, од мужицьких комор ключі одбирати,
Над козацьким, над мужицьким добром господарями знаходжатись.
То вже де бідний козак
Розгадає п''ятак,
То нельзя по улиці пойти, погуляти,
Щоб у корчмі п''ятак прогуляти.
То вже не один козак, доброго клича і луччої руки, один шостак розгадав,
Да й той к катовій матері у корчмі прогуляв.
То вже ж, каже, лях містом іде,
Як свиня ухом веде.
То лях до корчми приходжає,
Як свиня, ухо до корчми прикладає,
А слухає лях, що козак про ляхів розмовляє.
То лях у корчму убігає
І козака за чуб хватає,
То козак козацький звичай знає:
То будто до ляха медом, вином і оковитою горілкою припиває,
А тут ляха за чуб хватає
І скляницею межи очі морськає,
І келепом по ребрам торкає:
"Не лучче б тобі, ляше, преуражий сину, на Вкраїні з жінкою спати.
Аніж в корчму входжати?
Да вже ж на Вкраїні не одна жінка курку зготувала,
Тебе, ляха, кручого сина, на ніч чекала!"
То вже ж, каже, козаки й мужики
У неділю рано, богу помолившись, листи писали,
В листах добре докладали
І до папа Хмельницького у Полонне посилали:
"Ей, пане Хмельницький,
І отамане чигиринський,
І батько козацький!
Звели нам під москалей тікати
Або звели нам з ляхами бунт великий зривати!"
То Хмельницький листи читає,
До козаків словами промовляє:
"Ей, стійте, діти,
Ладу ждіте!
Не благословляю вам ні під москаля тікати,
Ні з ляхами великого бунту зривати".
То вже ж Хмельницький до козаків приїжджає
І словами промовляє:
"Ей, нуте, діти, по три, по чотири з куренів вставайте,
І до дрючків і до голобель хватайте,
І ляхів-панів у нічку у Четвертеньку так, як кабанів, заганяйте!"
То вже ж із куренів по три, по чотири вставали,
До дрючків і до оглобель хватали,
І ляхів-панів так, як кабанів, у нічку [у] Четвертеньку заганяли,
То вже ж один козак лугом біжить,
Коли дивиться у кущ, аж кущ дрижить;
Коли дивиться у кущ, аж у кущі лях, як жлукто, лежить.
То козак козацький звичай знає,
Із коня вставає
І ляха за чуб хватає,
І келепом по ребрах торкає,
То лях до козака словами промовляє:
"Лучче б, козурю, могли мої очі на потилиці стати,
Так би я міг із-за річки Вісли на Вкраїну поглядати".','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_272522'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_272522','Повстання проти польських панів','Ой чи добре пан Хмельницький починав,
Як з берестецького року всіх панів-ляхів на Вкраїну
На чотири місяці висилав
І волів панам-ляхам на Вкраїні чотири місяці стояти,
Ані козаку, ні мужику ні жадної кривди починати.
Да вже ж пани-ляхи на Вкраїні три місяці стояли;
Стало на четвертий місяць повертати,
Стали пани-ляхи способ прибирати:
Од козацьких, од мужицьких комор ключі одбирати,
Над козацьким, над мужицьким добром господарями знаходжатись.
То вже де бідний козак
Розгадає п''ятак,
То нельзя по улиці пойти, погуляти,
Щоб у корчмі п''ятак прогуляти.
То вже не один козак, доброго клича і луччої руки, один шостак розгадав,
Да й той к катовій матері у корчмі прогуляв.
То вже ж, каже, лях містом іде,
Як свиня ухом веде.
То лях до корчми приходжає,
Як свиня, ухо до корчми прикладає,
А слухає лях, що козак про ляхів розмовляє.
То лях у корчму убігає
І козака за чуб хватає,
То козак козацький звичай знає:
То будто до ляха медом, вином і оковитою горілкою припиває,
А тут ляха за чуб хватає
І скляницею межи очі морськає,
І келепом по ребрам торкає:
"Не лучче б тобі, ляше, преуражий сину, на Вкраїні з жінкою спати.
Аніж в корчму входжати?
Да вже ж на Вкраїні не одна жінка курку зготувала,
Тебе, ляха, кручого сина, на ніч чекала!"
То вже ж, каже, козаки й мужики
У неділю рано, богу помолившись, листи писали,
В листах добре докладали
І до папа Хмельницького у Полонне посилали:
"Ей, пане Хмельницький,
І отамане чигиринський,
І батько козацький!
Звели нам під москалей тікати
Або звели нам з ляхами бунт великий зривати!"
То Хмельницький листи читає,
До козаків словами промовляє:
"Ей, стійте, діти,
Ладу ждіте!
Не благословляю вам ні під москаля тікати,
Ні з ляхами великого бунту зривати".
То вже ж Хмельницький до козаків приїжджає
І словами промовляє:
"Ей, нуте, діти, по три, по чотири з куренів вставайте,
І до дрючків і до голобель хватайте,
І ляхів-панів у нічку у Четвертеньку так, як кабанів, заганяйте!"
То вже ж із куренів по три, по чотири вставали,
До дрючків і до оглобель хватали,
І ляхів-панів так, як кабанів, у нічку [у] Четвертеньку заганяли,
То вже ж один козак лугом біжить,
Коли дивиться у кущ, аж кущ дрижить;
Коли дивиться у кущ, аж у кущі лях, як жлукто, лежить.
То козак козацький звичай знає,
Із коня вставає
І ляха за чуб хватає,
І келепом по ребрах торкає,
То лях до козака словами промовляє:
"Лучче б, козурю, могли мої очі на потилиці стати,
Так би я міг із-за річки Вісли на Вкраїну поглядати".');
DELETE FROM song_links WHERE song_id = 'pisniua_271313';
DELETE FROM song_versions WHERE song_id = 'pisniua_271313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_271313';
DELETE FROM songs WHERE id = 'pisniua_271313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_271313','Ой, там на горі','Українська народна пісня. Виконує: Таїсія Повалій','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, там на горі, в шовковій траві,
Ой, там сиділа пара голубів -
Цілувалися, милувалися,
Сизими крильми обнімалися.

Ой, десь узявся мисливець-стрілець,
Голуба убив, голубку зловив,
Додому приніс, додолу пустив,
Насипав пшонця й водиці налив.

Голубка не їсть, голубка не п''є,
Та все на ту гору плакать літає.
"Ой, єсть у мене сімсот голубів,
Літай, вибирай, може ж тa є й твій".

"Я вже літала, вже й вибирала,
Нема такого, як я кохала,
Хоч пір''я й таке, й такий пушок,
А, як загуде - не той голосок".','[''pisni.org.ua'', ''cat:all-ukraine'', ''Загальноукраїнські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_271313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_271313','Ой, там на горі','Ой, там на горі, в шовковій траві,
Ой, там сиділа пара голубів -
Цілувалися, милувалися,
Сизими крильми обнімалися.

Ой, десь узявся мисливець-стрілець,
Голуба убив, голубку зловив,
Додому приніс, додолу пустив,
Насипав пшонця й водиці налив.

Голубка не їсть, голубка не п''є,
Та все на ту гору плакать літає.
"Ой, єсть у мене сімсот голубів,
Літай, вибирай, може ж тa є й твій".

"Я вже літала, вже й вибирала,
Нема такого, як я кохала,
Хоч пір''я й таке, й такий пушок,
А, як загуде - не той голосок".');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271313_l1','pisniua_271313','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_271993';
DELETE FROM song_versions WHERE song_id = 'pisniua_271993';
DELETE FROM songs_fts WHERE song_id = 'pisniua_271993';
DELETE FROM songs WHERE id = 'pisniua_271993';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_271993','Калиновий край','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Калиновий край, моя квітна земля,
Ти з близька миліша, рідніша за душу,
Не все одцвітає що рясно цвіло,
Де батьківська хата, де рідне село.

Приспів:
Калина полум''яна при долині.
Ти грієш мене подихом своїм.
Така краса лише на Україні.
В моїм краю, в цвітінні кольорів.

Березовий гай, та малиновий.
Священне до болю, все любе довкола.
Перлистий край та криничне а,
І сонце тут рідне, над світом зірки.

Приспів.

Смерековий край, о Карпати,
А в серці як весна дзвінкі солов''ї,
А мрії з Карпат ще сягнули в мій край -
То голос любові, то поклик добра.

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_271993'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_271993','Калиновий край','Калиновий край, моя квітна земля,
Ти з близька миліша, рідніша за душу,
Не все одцвітає що рясно цвіло,
Де батьківська хата, де рідне село.

Приспів:
Калина полум''яна при долині.
Ти грієш мене подихом своїм.
Така краса лише на Україні.
В моїм краю, в цвітінні кольорів.

Березовий гай, та малиновий.
Священне до болю, все любе довкола.
Перлистий край та криничне а,
І сонце тут рідне, над світом зірки.

Приспів.

Смерековий край, о Карпати,
А в серці як весна дзвінкі солов''ї,
А мрії з Карпат ще сягнули в мій край -
То голос любові, то поклик добра.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_271869';
DELETE FROM song_versions WHERE song_id = 'pisniua_271869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_271869';
DELETE FROM songs WHERE id = 'pisniua_271869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_271869','Перша нота *','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,'Кожен куплет повторюється двічі','Dm
Перша нота - нота "до",
Нап''ємося від і до,
F
Ой дана, ой дана, дана.
Перша нота - нота "до",|
Нап''ємося від і до,
Ой дана, ой дана, дана

Друга нота - нота "ре",
Щось горілка не бере,
Ой дана, ой дана, дана.

Третя нота - нота "мі",
Наливаємо самі,
Ой дана, ой дана, дана.

А четверта нота "фа",
Скінчилася нам лафа,
Ой дана, ой дана, дана.

П''ята нота - нота "соль",
Нам горілка ґоль-ґоль-ґоль,
Ой дана, ой дана, дана.

Шоста нота - нота "ля",
Розболілась голова,
Ой дана, ой дана, дана.

Сьома нота - нота "сі",
Викликайте нам таксі,
Ой дана, ой дана, дана.

Восьма нота - нота "до",
Напилися від і до,
Ой дана, ой дана, дана.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_271869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_271869','Перша нота *','Dm
Перша нота - нота "до",
Нап''ємося від і до,
F
Ой дана, ой дана, дана.
Перша нота - нота "до",|
Нап''ємося від і до,
Ой дана, ой дана, дана

Друга нота - нота "ре",
Щось горілка не бере,
Ой дана, ой дана, дана.

Третя нота - нота "мі",
Наливаємо самі,
Ой дана, ой дана, дана.

А четверта нота "фа",
Скінчилася нам лафа,
Ой дана, ой дана, дана.

П''ята нота - нота "соль",
Нам горілка ґоль-ґоль-ґоль,
Ой дана, ой дана, дана.

Шоста нота - нота "ля",
Розболілась голова,
Ой дана, ой дана, дана.

Сьома нота - нота "сі",
Викликайте нам таксі,
Ой дана, ой дана, дана.

Восьма нота - нота "до",
Напилися від і до,
Ой дана, ой дана, дана.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_271869_l1','pisniua_271869','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_272614';
DELETE FROM song_versions WHERE song_id = 'pisniua_272614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_272614';
DELETE FROM songs WHERE id = 'pisniua_272614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_272614','Смерть Корецького',NULL,'uk','ukraine_before_1917',NULL,NULL,'"Думи. Історико-героїчний цикл". Київ, Дніпро, 1982.',NULL,'Од неділі першого дня
Стояв обоз невелик
В чистім полі на Цецорі.
А в тім обозі був гетьманом,
Всім жолніром і всім паном
Князь Дмитро, князь Корецький.
Третього дня з своєю дружиною
Обід з ними обідає,
А о своїй пригоді не відає.
Аж де ся взяв хан татарський,
Вдарив на обоз син поганський,
Весь табор преч розгромив.
Там всі полки вирубали,
Всю дружину зарубали,
Корецького живцем взяли,
До Царигорода його повели,
Назад йому очі зав''язали
Чорним бритом азаматом.
Аж к ньому яничари промовляють:
"Княже Дмитро, пан Корецький,
Чи воюєш, чи крамуєш,
Чи нашого Царигорода розглядаєш?"
А тоді князь Корецький листи пише,
Листи пише, тяжко здише,
До своєї матухи посилає:
"Ой мати моя Корецькая,
Продай Корець і Межиріче,
Викуп мене з неволеньки!"
А к ньому мати листи одписала:
"Же-м тебе три рази з неволі викупала,
Міста-села потратила,
Потіхи і разу з тебе не мала.
Четвертий раз уже не буду,
Міста, села не тратить буду,
Скарбів своїх не тратить буду".
А що рече турський цар:
"Ввіруй, князю, в віру нашу,
А потопчи віру вашу,
А сестру рідну мою бери".
А що ж рече князь Дмитер:
"Бодай ти того, царю, не дождав,
Щоб я твою віру вірував,
А християнську поламав.
Ей, коли б тепер при мені був мій острий міч,
То я б тобі, поганче, зняв голову з пліч;
Научив би я тебе віри свої,
Міч свій утопивши у крові твої".
Взлився в той час турський царевич,
Сказав на слуги свої яничари:
"Озьміте його на море Чорноє,
Скиньте його на гак високий.
Нехай високо сидить,
Далеко глядить,
Где зобачить на морі джавра -
Нехай нам повідає".
Повисів князь Корецький два дні
І пити-їсти не їв.
Аж третього дня наступає.
Приходили од турецького царевича яничари його наглядати,
Стали до нього словами промовляти:
"Княже Дмитер, пан Корецький,
Високо сидиш,
Далеко глядиш,
Чи не бачиш на морі де джавра?"
Аж он промовить княже Дмитер:
"Високо сиджу,
Далеко гляджу,
Не бачу ніде на морю джавра,
Тільки бачу на дубі високім голуба з голубкою.
Коли б при мні мій тугий лук і мої стрілки,
Убив би голуба з голубкою:
Єдно вашому пану на сніданнє,
А другеє на обіданнє".
Яничари на сміх тоє піднімали,
Тугий лучок йому подавали.
Дві стрілки-калинівки на лук накладає,
А до голубів міряє.
Як налучив,
Так умірив
Та забив голуба з голубкою,
Назад тугий лучок подає,
До яничар промовляє:
"Підіте, яничари,
Візьміте два голуби,
Свему пану єдного на сніданнє,
А другого на обіданнє".
Аж прийшли яничари до свого пана:
"Пане, пане наш, царю турський,
Вбив князь Корецький два голуби,
Одного на вечерю, другого на обіданнє,
Аж не вбив княже Корецький голуба з голубкою,
З його рідною сестрою",
Вбив царевича з царівною.
А що мовить турський цар до яничар:
"Подіте князя Корецького з гаків здійміте,
А перед мене приведіте".
Княже Дмитер перед царем став,
На криж свої руки складав,
До пана свого промовляв:
"Ой пане мій, пане царю,
Зготував я тобі з голубів вечерю".
Рече турський цар до князя Дмитра:
"Не голуби то, мої то діти,
Син царевич з царівною,
Княже Дмитер тоже-сь хитер.
Ніхто тебе не ухитрить,
Хіба тебе смерть ухитрить".','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_272614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_272614','Смерть Корецького','Од неділі першого дня
Стояв обоз невелик
В чистім полі на Цецорі.
А в тім обозі був гетьманом,
Всім жолніром і всім паном
Князь Дмитро, князь Корецький.
Третього дня з своєю дружиною
Обід з ними обідає,
А о своїй пригоді не відає.
Аж де ся взяв хан татарський,
Вдарив на обоз син поганський,
Весь табор преч розгромив.
Там всі полки вирубали,
Всю дружину зарубали,
Корецького живцем взяли,
До Царигорода його повели,
Назад йому очі зав''язали
Чорним бритом азаматом.
Аж к ньому яничари промовляють:
"Княже Дмитро, пан Корецький,
Чи воюєш, чи крамуєш,
Чи нашого Царигорода розглядаєш?"
А тоді князь Корецький листи пише,
Листи пише, тяжко здише,
До своєї матухи посилає:
"Ой мати моя Корецькая,
Продай Корець і Межиріче,
Викуп мене з неволеньки!"
А к ньому мати листи одписала:
"Же-м тебе три рази з неволі викупала,
Міста-села потратила,
Потіхи і разу з тебе не мала.
Четвертий раз уже не буду,
Міста, села не тратить буду,
Скарбів своїх не тратить буду".
А що рече турський цар:
"Ввіруй, князю, в віру нашу,
А потопчи віру вашу,
А сестру рідну мою бери".
А що ж рече князь Дмитер:
"Бодай ти того, царю, не дождав,
Щоб я твою віру вірував,
А християнську поламав.
Ей, коли б тепер при мені був мій острий міч,
То я б тобі, поганче, зняв голову з пліч;
Научив би я тебе віри свої,
Міч свій утопивши у крові твої".
Взлився в той час турський царевич,
Сказав на слуги свої яничари:
"Озьміте його на море Чорноє,
Скиньте його на гак високий.
Нехай високо сидить,
Далеко глядить,
Где зобачить на морі джавра -
Нехай нам повідає".
Повисів князь Корецький два дні
І пити-їсти не їв.
Аж третього дня наступає.
Приходили од турецького царевича яничари його наглядати,
Стали до нього словами промовляти:
"Княже Дмитер, пан Корецький,
Високо сидиш,
Далеко глядиш,
Чи не бачиш на морі де джавра?"
Аж он промовить княже Дмитер:
"Високо сиджу,
Далеко гляджу,
Не бачу ніде на морю джавра,
Тільки бачу на дубі високім голуба з голубкою.
Коли б при мні мій тугий лук і мої стрілки,
Убив би голуба з голубкою:
Єдно вашому пану на сніданнє,
А другеє на обіданнє".
Яничари на сміх тоє піднімали,
Тугий лучок йому подавали.
Дві стрілки-калинівки на лук накладає,
А до голубів міряє.
Як налучив,
Так умірив
Та забив голуба з голубкою,
Назад тугий лучок подає,
До яничар промовляє:
"Підіте, яничари,
Візьміте два голуби,
Свему пану єдного на сніданнє,
А другого на обіданнє".
Аж прийшли яничари до свого пана:
"Пане, пане наш, царю турський,
Вбив князь Корецький два голуби,
Одного на вечерю, другого на обіданнє,
Аж не вбив княже Корецький голуба з голубкою,
З його рідною сестрою",
Вбив царевича з царівною.
А що мовить турський цар до яничар:
"Подіте князя Корецького з гаків здійміте,
А перед мене приведіте".
Княже Дмитер перед царем став,
На криж свої руки складав,
До пана свого промовляв:
"Ой пане мій, пане царю,
Зготував я тобі з голубів вечерю".
Рече турський цар до князя Дмитра:
"Не голуби то, мої то діти,
Син царевич з царівною,
Княже Дмитер тоже-сь хитер.
Ніхто тебе не ухитрить,
Хіба тебе смерть ухитрить".');
DELETE FROM song_links WHERE song_id = 'pisniua_272591';
DELETE FROM song_versions WHERE song_id = 'pisniua_272591';
DELETE FROM songs_fts WHERE song_id = 'pisniua_272591';
DELETE FROM songs WHERE id = 'pisniua_272591';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_272591','Федір безродний, бездольний',NULL,'uk','ukraine_before_1917',NULL,NULL,'"Думи. Історико-героїчний цикл". Київ, Дніпро, 1982.',NULL,'Ой по потребі, по потребі барзе царській,
До там-то много війська, гей, понажено
Да через мечу положено.
Да й ні єдиного тіла козацького молодецького
Живого не оставлено.
Тільки поміжду тим трупом Федор бездольний,
Посічений да порубаний,
Да й на рани смертельнії не змагає;
А коло його джура Ярема, гей, промешкає!
До Федор бездольний, безродний, гей,
Промовляє словами
Да обіллється горко сльозами:
"Гей, джуро Яремо,
До дарую я тобі по смерті своєї
Коня вороного,
Ей, а другого білогривого,
І тягеля червонії,
Од піл до коміра золотом гаптовані,
І шаблю булатную,
Пищаль семип''ядную!
Ой да добре ж ти дбай,
Да на коня сідай,
Да передо мною повертай,
Да нехай я буду знати,
Ай чи удобен ти будеш проміжду козаками пробувати".
До джура Ярема, ой да добре дбає,
Да на коня сідає,
Ой да перед ним повертає.
До Федор бездольний, безродний,
Ей, да промовляє словами,
Да обіллється горко сльозами:
"Ой да благодарю ж тебе, господа милосердного,
Ой, що не ледай кому,
Гей, моя худоба буде доставати -
До він буде за мене господа милосердного прохати.
Ей, джуро Яремо,
Да добре ж ти дбай,
Да на коня сідай,
Да їдь понад лугом Базалугом,
Та понад Дніпром-Славутою.
До як ушкала гудуть, ей, - до ти схоронися,
А як лебеді ячать, ей, - до ти озовися,
А як козаки йдуть Дніпром-Славутою -
Ой до ти об''явися
Да шличок на копію іскладай,
Ой да сам низенько укланяй
Наперед господу богу,
І батькові кошовому,
Отаману войськовому,
І всьому товариству кревному, сердечному".
Ой добре же то він дбає,
Ой да на коня сідає
Да понад лугом Базалугом проїжджає,
Понад Дніпром-Славутою,
Ей, да козаків стрічає,
Да шличок на копію складає,
А сам низько укланяє
Наперед батькові кошовому,
Отаману войськовому,
І всьому товариству кревному й сердечному.
До-то батько кошовий,
Отаман войськовий,
Промовляє словами:
"Ей, джуро Яремо!
Да не своїми ж ти кіньми гуляєш,
І не свої тягеля червонії,
Од піл до коміра золотом гаптовані,
І не свою шаблю булатную,
Не свою пищаль семип''ядну маєш.
А десь ти свого пана убив, або істребив,
Або ж ти молодого душі ізбавив".
"Ой, батьку кошовий,
Отамане войськовий,
Я свого пана ані вбив, ні стребив,
Ані молодого душі я не збавив —
А мій пан лежить у лузі, в Базалузі,
Постріляний да порубаний,
І на рани смертельні не змагає.
Да прошу я вас всенижающе
У луг Базалуг прибувати,
Ой да тіло козацьке молодецькеє поховати,
Да звіру-птиці на поталу не дати!"
До-то батько кошовий,
Отаман войськовий,
Да добре він дбав,
Да в суботу із семисот п''ятдесят козаків вибирав,
Да в суботу проти неділі,
У четвертій полуношній годині,
У луг Базалуг козаків висилав.
Ой до вони прибували
Да тіло козацькеє знаходжали,
На червону китайку клали,
Тіло козацьке молодецьке обмивали,
А шаблями суходол копали,
А шапками да приполами перст носили,
Да високу могилу висипали,
І прапірок у головах, ей, устромили,
Да премудрому лицарю славу учинили.
А тим його поминали,
Що в себе мали, -
Цвіленькими войськовими сухарями!
Услиши, господи, у просьбах, у молитвах
Люду царському,
Народу християнському
І всім головам слухающим,
Вот на многії літа
До конця віка,
До конця віка!','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_272591'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_272591','Федір безродний, бездольний','Ой по потребі, по потребі барзе царській,
До там-то много війська, гей, понажено
Да через мечу положено.
Да й ні єдиного тіла козацького молодецького
Живого не оставлено.
Тільки поміжду тим трупом Федор бездольний,
Посічений да порубаний,
Да й на рани смертельнії не змагає;
А коло його джура Ярема, гей, промешкає!
До Федор бездольний, безродний, гей,
Промовляє словами
Да обіллється горко сльозами:
"Гей, джуро Яремо,
До дарую я тобі по смерті своєї
Коня вороного,
Ей, а другого білогривого,
І тягеля червонії,
Од піл до коміра золотом гаптовані,
І шаблю булатную,
Пищаль семип''ядную!
Ой да добре ж ти дбай,
Да на коня сідай,
Да передо мною повертай,
Да нехай я буду знати,
Ай чи удобен ти будеш проміжду козаками пробувати".
До джура Ярема, ой да добре дбає,
Да на коня сідає,
Ой да перед ним повертає.
До Федор бездольний, безродний,
Ей, да промовляє словами,
Да обіллється горко сльозами:
"Ой да благодарю ж тебе, господа милосердного,
Ой, що не ледай кому,
Гей, моя худоба буде доставати -
До він буде за мене господа милосердного прохати.
Ей, джуро Яремо,
Да добре ж ти дбай,
Да на коня сідай,
Да їдь понад лугом Базалугом,
Та понад Дніпром-Славутою.
До як ушкала гудуть, ей, - до ти схоронися,
А як лебеді ячать, ей, - до ти озовися,
А як козаки йдуть Дніпром-Славутою -
Ой до ти об''явися
Да шличок на копію іскладай,
Ой да сам низенько укланяй
Наперед господу богу,
І батькові кошовому,
Отаману войськовому,
І всьому товариству кревному, сердечному".
Ой добре же то він дбає,
Ой да на коня сідає
Да понад лугом Базалугом проїжджає,
Понад Дніпром-Славутою,
Ей, да козаків стрічає,
Да шличок на копію складає,
А сам низько укланяє
Наперед батькові кошовому,
Отаману войськовому,
І всьому товариству кревному й сердечному.
До-то батько кошовий,
Отаман войськовий,
Промовляє словами:
"Ей, джуро Яремо!
Да не своїми ж ти кіньми гуляєш,
І не свої тягеля червонії,
Од піл до коміра золотом гаптовані,
І не свою шаблю булатную,
Не свою пищаль семип''ядну маєш.
А десь ти свого пана убив, або істребив,
Або ж ти молодого душі ізбавив".
"Ой, батьку кошовий,
Отамане войськовий,
Я свого пана ані вбив, ні стребив,
Ані молодого душі я не збавив —
А мій пан лежить у лузі, в Базалузі,
Постріляний да порубаний,
І на рани смертельні не змагає.
Да прошу я вас всенижающе
У луг Базалуг прибувати,
Ой да тіло козацьке молодецькеє поховати,
Да звіру-птиці на поталу не дати!"
До-то батько кошовий,
Отаман войськовий,
Да добре він дбав,
Да в суботу із семисот п''ятдесят козаків вибирав,
Да в суботу проти неділі,
У четвертій полуношній годині,
У луг Базалуг козаків висилав.
Ой до вони прибували
Да тіло козацькеє знаходжали,
На червону китайку клали,
Тіло козацьке молодецьке обмивали,
А шаблями суходол копали,
А шапками да приполами перст носили,
Да високу могилу висипали,
І прапірок у головах, ей, устромили,
Да премудрому лицарю славу учинили.
А тим його поминали,
Що в себе мали, -
Цвіленькими войськовими сухарями!
Услиши, господи, у просьбах, у молитвах
Люду царському,
Народу християнському
І всім головам слухающим,
Вот на многії літа
До конця віка,
До конця віка!');
DELETE FROM song_links WHERE song_id = 'pisniua_271457';
DELETE FROM song_versions WHERE song_id = 'pisniua_271457';
DELETE FROM songs_fts WHERE song_id = 'pisniua_271457';
DELETE FROM songs WHERE id = 'pisniua_271457';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_271457','У Святую Неділю як Та Бідна Вдова','(Бідна Вдова та Три Сини). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські релігійні роздуми про Спасіння © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003','Українські реліґійні роздуми про Воскресіння, Неволю і Спасіння. Пісні Великодні — Спасительні: світ не по Правді. Пісні-плачі Сокола-Прадіда. Бездільне Своє та Безрідне Ясне Соколя утеряв. Не Добре ми усі Три Брати починали. А десь ми поверх всякої міри гріха набрали. Що свою Матір-Рідненьку Вдову Стареньку зневажали. А єсть це нас Отцева-та-матчина Молитва покарала. А Синам-усім Трьом на своєму Подвірью уже й прожитку немає. Рокове Коло. Стежки до листків про Українські традиції.','У Святую Неділю як Та Бідна Вдова / Старая Жона
У Своїй Домівці з Діточками Маленькими гомоніла
Та по Наймах не пускала
Чужим людям у руки на стараніє не давала
То вона собі при старості літ прожить сподівала

Стали Сини до розума дохожати
Стали собі Молоде Подружжа мати
Стали свою Матір РідНеньку Вдову Стареньку
[зневажати
З Домівки зганяти

Іди-ж ти Мати в Чужий Дом проживати
Хай наші Молодії Жони не будуть з тебе насміхати
Дітки Маленькі не будуть тобі докучати

Тоді Вдова теє зачуває / Словами промовляє
Ай Сини-ж ви мої Діти Молодії
Стільки я з вами рік горювала
Пучками та ручками Хліба заробляла
Та вас годувала
Тепер чого я од вас діждала
Де-ж мині смерти діждати
При старості літ віку свого докінчати

Тоді Близький Сусіда теє зачуває
До Вдови Словами промовляє

Ой Удово Старенькая Жоно
[Не плач іди в мій Дом проживати
Будеш ти в мене Хату помітати
Малих Діток доглядати
Будеш ти в мене до смерти-віку Хліб-сіль уживати
Я буду тебе за Матір-Рідненьку почитати

Тоді Вдова на Чужому Подвірью проживає
По всяк день дрібними слізами проливає
А Синам-усім Трьом на своєму Подвірью
[уже й прожитку немає

Стали Люди теє зачувати
Стали з Удовиченків посміхати
Стали Вдовиченків на сміх пидіймати

Що змове Найменший Удовиченко
[до своїх Старших Братів-Козаків Словами
Братіки мої Старші-Рідненькі
Як Голубоньки Сивенькі
Не Добре ми усі Три Брати починали
Що свою Матір-Рідненьку Вдову Стареньку
[зневажали
Та з Домівки зігнали
Ходімо-ж ми усі Три Брати на Чуже Подвірья
Своїй Матері Рідненькій Удові Старенькій
[до ніг упадімо
Свою Матір Рідненьку Удову Стареньку
[у Свій Дом призовімо

Іди-ж ти Мати у наш Дом проживати
Лучче ми будем Молодих Жон научати
Лучче ми будем Малих Дітей ізпиняти
Будем тебе до смерти-віку почитати й поважати

Тоді Вдова теє зачуває / Словами промовляє
Ой Боже Милий Боже
Що теперішнього часу не успів Батько-й-мати
[Молоде Подружжа за свого Сина взяти
Стане Хлібом-сілью нарікати
Що которий чоловік Батьківську-матчину Молитву
[чтить-шанує-поважає
Отцевська-матчина Молитва в купецьтві в реместві
[на поміч спомагає
Отцевська-матчина Молитва зо дна моря достягає
Од гріхів Душу одкупляє
До Царства провожає

Дай Боже миру Гетьманьському народу Христіаньському у сім на Многі Літа!','[''pisni.org.ua'', ''cat:dumy'', ''cat:kozacki'', ''cat:socialno-pobutovi'', ''cat:suspilno-politychni'', ''Думи'', ''Козацькі пісні'', ''Соціально-побутові пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_271457'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_271457','У Святую Неділю як Та Бідна Вдова','У Святую Неділю як Та Бідна Вдова / Старая Жона
У Своїй Домівці з Діточками Маленькими гомоніла
Та по Наймах не пускала
Чужим людям у руки на стараніє не давала
То вона собі при старості літ прожить сподівала

Стали Сини до розума дохожати
Стали собі Молоде Подружжа мати
Стали свою Матір РідНеньку Вдову Стареньку
[зневажати
З Домівки зганяти

Іди-ж ти Мати в Чужий Дом проживати
Хай наші Молодії Жони не будуть з тебе насміхати
Дітки Маленькі не будуть тобі докучати

Тоді Вдова теє зачуває / Словами промовляє
Ай Сини-ж ви мої Діти Молодії
Стільки я з вами рік горювала
Пучками та ручками Хліба заробляла
Та вас годувала
Тепер чого я од вас діждала
Де-ж мині смерти діждати
При старості літ віку свого докінчати

Тоді Близький Сусіда теє зачуває
До Вдови Словами промовляє

Ой Удово Старенькая Жоно
[Не плач іди в мій Дом проживати
Будеш ти в мене Хату помітати
Малих Діток доглядати
Будеш ти в мене до смерти-віку Хліб-сіль уживати
Я буду тебе за Матір-Рідненьку почитати

Тоді Вдова на Чужому Подвірью проживає
По всяк день дрібними слізами проливає
А Синам-усім Трьом на своєму Подвірью
[уже й прожитку немає

Стали Люди теє зачувати
Стали з Удовиченків посміхати
Стали Вдовиченків на сміх пидіймати

Що змове Найменший Удовиченко
[до своїх Старших Братів-Козаків Словами
Братіки мої Старші-Рідненькі
Як Голубоньки Сивенькі
Не Добре ми усі Три Брати починали
Що свою Матір-Рідненьку Вдову Стареньку
[зневажали
Та з Домівки зігнали
Ходімо-ж ми усі Три Брати на Чуже Подвірья
Своїй Матері Рідненькій Удові Старенькій
[до ніг упадімо
Свою Матір Рідненьку Удову Стареньку
[у Свій Дом призовімо

Іди-ж ти Мати у наш Дом проживати
Лучче ми будем Молодих Жон научати
Лучче ми будем Малих Дітей ізпиняти
Будем тебе до смерти-віку почитати й поважати

Тоді Вдова теє зачуває / Словами промовляє
Ой Боже Милий Боже
Що теперішнього часу не успів Батько-й-мати
[Молоде Подружжа за свого Сина взяти
Стане Хлібом-сілью нарікати
Що которий чоловік Батьківську-матчину Молитву
[чтить-шанує-поважає
Отцевська-матчина Молитва в купецьтві в реместві
[на поміч спомагає
Отцевська-матчина Молитва зо дна моря достягає
Од гріхів Душу одкупляє
До Царства провожає

Дай Боже миру Гетьманьському народу Христіаньському у сім на Многі Літа!');
DELETE FROM song_links WHERE song_id = 'pisniua_272697';
DELETE FROM song_versions WHERE song_id = 'pisniua_272697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_272697';
DELETE FROM songs WHERE id = 'pisniua_272697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_272697','Козацьке життя',NULL,'uk','ukraine_before_1917',NULL,NULL,'"Думи. Історико-героїчний цикл". Київ, Дніпро, 1982.',NULL,'Не один козак сам собі шкоду шкодив,
Що від молодої жінки у військо ходив.
Його жінка кляла-проклинала:
"Бодай тебе, козаче-сіромахо, побило в чистому полі
Три недолі:
Перша недоля - щоб під тобою добрий кінь пристав;
Друга недоля - щоб ти козаків не догнав;
Третя недоля - щоб тебе козаки не злюбили
І в курінь не пустили!"
А козак добре дбає,
На жінку не потурає,
Жінці віри не діймає,
Коневі частенько зеленого сіна підкладає,
Жовтого вівса підсипає,
Холодною криничною водою коня напуває,
У поход виступає.
Господь йому дав,
Що під ним добрий кінь не пристав,
Він козаків доганяв;
Що його козаки злюбили,
До себе в курінь пустили,
Ще й отаманом настановили.
Тогді козак у війську пробуває,
Свою новину козакам оповідає:
"Слухайте, панове-молодці,
Як то жіноцька клятьба дурно йде,
Так як мимо сухе дерево вітер гуде;
Жіноцькі сльози - дурні, як вода тече".
Жінка в корчмі пила та гуляла
Та домівки не знала,
Мов її хата к нечистій матері пусткою завоняла.
Скоро стала козака з походу сподіватись,
Стала до домівки прихождати,
Стала в печі розтопляти,
Стала той борщ кислий,
Оскомистий, чортзна-колишній
Із-під лави виставляти,
Стала до печі приставляти,
От тим борщем хотіла козака привітати.
Скоро став козак з походу прибувати,
Став до нових воріт, до ламаних, доїжджати;
Він з коня не вставає,
Келепом нові ламані ворота відчиняє,
Козацьким голосом гукає.
Скоро стала козачка козацький голос зачувати,
То вона не стала против нього дверми вихождати,
Стала, мов сивою голубкою, в вікно вилітати.
Тогді козак добре дбає,
Хорошенько її келепом по плечах привітає,
Карбачем по спині затинає.
Тогді козачка у хату вбігала,
Буцім нехотя той борщ поліном штиркнула,
Ну його к нечистій матері! У піч обертала,
Новий борщ унов варити зачинала;
До скрині тягла,
Не простого - лляного полотна тридцять локтів узяла;
До шинкарки тягла,
Три кварти не простої горілки - оковити узяла,
З медом та з перцем розогрівала,
От тим козака частувала та вітала.
От то вийшла козачка на другий день за ворота,
Аж сидить жінок превеликая рота, -
А сказано - жінки, як сороки:
Одна на одну зглядали
Та й козачку осуждали,
Та й козачці не казали.
Одна-таки старушка не втерпіла
І козачці сказала:
"Гей, козачко, козачко!
Десь твій козак нерано з походу прибував,
Що попід очима добрі гостинці подавав".
То козачка добре дбала,
По-свойому козака покривала:
"Чи ви ж то, жіночки-голубочки, не знаєте,
Що мій козак нерано з походу прибував,
Заставив мене в печі потопити,
Вечеряти варити,
А я пішла по дрова,
Та не втрапила по дрова,
А втрапила по лучину,
Попідбивала собі очі на ключину.
Роблю ж я таки те ремество синило,
Так воно мені добре взнаки далося:
Як я його мішала, так воно мені за очі взялося".
А козак сидить у корчмі та мед-вино кружає,
Корчму сохваляє:
"Гей, корчмо, корчмо-княгине!
Чом-то в тобі козацького добра багато гине?
І сама єси неошатно ходиш,
І нас, козаків-нетяг, під случай без свиток водиш!
Знати, знати козацьку хату,
Скрізь десяту:
Вона соломою не покрита,
Приспою не осипана,
Коло двора нечиста-ма і кола,
На дривітні дров ні поліна,
Сидить в ній козацька жінка - околіла.
Знати, знати козацьку жінку,
Що всю зиму боса ходить,
Горшком воду носить,
Полоником діти напуває!"','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_272697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_272697','Козацьке життя','Не один козак сам собі шкоду шкодив,
Що від молодої жінки у військо ходив.
Його жінка кляла-проклинала:
"Бодай тебе, козаче-сіромахо, побило в чистому полі
Три недолі:
Перша недоля - щоб під тобою добрий кінь пристав;
Друга недоля - щоб ти козаків не догнав;
Третя недоля - щоб тебе козаки не злюбили
І в курінь не пустили!"
А козак добре дбає,
На жінку не потурає,
Жінці віри не діймає,
Коневі частенько зеленого сіна підкладає,
Жовтого вівса підсипає,
Холодною криничною водою коня напуває,
У поход виступає.
Господь йому дав,
Що під ним добрий кінь не пристав,
Він козаків доганяв;
Що його козаки злюбили,
До себе в курінь пустили,
Ще й отаманом настановили.
Тогді козак у війську пробуває,
Свою новину козакам оповідає:
"Слухайте, панове-молодці,
Як то жіноцька клятьба дурно йде,
Так як мимо сухе дерево вітер гуде;
Жіноцькі сльози - дурні, як вода тече".
Жінка в корчмі пила та гуляла
Та домівки не знала,
Мов її хата к нечистій матері пусткою завоняла.
Скоро стала козака з походу сподіватись,
Стала до домівки прихождати,
Стала в печі розтопляти,
Стала той борщ кислий,
Оскомистий, чортзна-колишній
Із-під лави виставляти,
Стала до печі приставляти,
От тим борщем хотіла козака привітати.
Скоро став козак з походу прибувати,
Став до нових воріт, до ламаних, доїжджати;
Він з коня не вставає,
Келепом нові ламані ворота відчиняє,
Козацьким голосом гукає.
Скоро стала козачка козацький голос зачувати,
То вона не стала против нього дверми вихождати,
Стала, мов сивою голубкою, в вікно вилітати.
Тогді козак добре дбає,
Хорошенько її келепом по плечах привітає,
Карбачем по спині затинає.
Тогді козачка у хату вбігала,
Буцім нехотя той борщ поліном штиркнула,
Ну його к нечистій матері! У піч обертала,
Новий борщ унов варити зачинала;
До скрині тягла,
Не простого - лляного полотна тридцять локтів узяла;
До шинкарки тягла,
Три кварти не простої горілки - оковити узяла,
З медом та з перцем розогрівала,
От тим козака частувала та вітала.
От то вийшла козачка на другий день за ворота,
Аж сидить жінок превеликая рота, -
А сказано - жінки, як сороки:
Одна на одну зглядали
Та й козачку осуждали,
Та й козачці не казали.
Одна-таки старушка не втерпіла
І козачці сказала:
"Гей, козачко, козачко!
Десь твій козак нерано з походу прибував,
Що попід очима добрі гостинці подавав".
То козачка добре дбала,
По-свойому козака покривала:
"Чи ви ж то, жіночки-голубочки, не знаєте,
Що мій козак нерано з походу прибував,
Заставив мене в печі потопити,
Вечеряти варити,
А я пішла по дрова,
Та не втрапила по дрова,
А втрапила по лучину,
Попідбивала собі очі на ключину.
Роблю ж я таки те ремество синило,
Так воно мені добре взнаки далося:
Як я його мішала, так воно мені за очі взялося".
А козак сидить у корчмі та мед-вино кружає,
Корчму сохваляє:
"Гей, корчмо, корчмо-княгине!
Чом-то в тобі козацького добра багато гине?
І сама єси неошатно ходиш,
І нас, козаків-нетяг, під случай без свиток водиш!
Знати, знати козацьку хату,
Скрізь десяту:
Вона соломою не покрита,
Приспою не осипана,
Коло двора нечиста-ма і кола,
На дривітні дров ні поліна,
Сидить в ній козацька жінка - околіла.
Знати, знати козацьку жінку,
Що всю зиму боса ходить,
Горшком воду носить,
Полоником діти напуває!"');
DELETE FROM song_links WHERE song_id = 'pisniua_272675';
DELETE FROM song_versions WHERE song_id = 'pisniua_272675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_272675';
DELETE FROM songs WHERE id = 'pisniua_272675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_272675','Козак нетяга',NULL,'uk','ukraine_before_1917',NULL,NULL,'"Думи. Історико-героїчний цикл". Київ, Дніпро, 1982.',NULL,'Ой од поля Килиїмського їдеть козак нетяга,
Рукою махає,
Ні о чім не дбає.
Ой у його сермяжина по коліна,
На нім постоли бобровії,
Онучі бавелнянії,
Напотім пищаль семип''ядная за плечима.
Аж где ся взяв татарин старий бородатий,
На двох конях лисавих за ним уганяє.
Аж до нього козак промовляє:
"Старий татарине бородатий,
Чого ти за мною уганяєш?
Чи на мої зброї яснії,
Чи на мої коні воронії,
Чи на мої шати дорогії?"
Що промовить старий татарин бородатий до козака запоровського:

"Не набігаю на твої коні воронії
Ані на твої шати дорогії,
Не набігаю я на твою зброю ясную,
Тілько я набігаю на тебе, козака молодого.
Коли б тебе мені судив бог узяти,
Не зарікав би я ся в Килиї за тебе шликом червонців брати".
Аж промовить к ньому козак український:
"Старий татарине бородатий,
Не так то мене треба взяти,
Треба зо мною в Килимськом полю погуляти".
До річки до Вітки примикає,
Навколішки припадав,
Семип''ядний пищаль з плеч іздіймав,
Двома кульками набивав,
З татарином жартував,
З обох коні позбивав,
Словами промовляв:
"Татарине старий,
Не буду я злий такий на тебе,
Як ти на мене.
Як ти мене хотів брати,
До Килиї мя приводити,
Хотів червонії за мене шликами брати.
А тепер, татарине, жарту козацького не знаєш,
Та із коня ся валяєш,
Нічому ся [не] спротивляєш.
Тепер буду скарби твої брати,
До війська до табору козацького прибивати,
Буду Килимськоє поле вихваляти,
Що маю здобичі з військом козацьким пропивати".','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_272675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_272675','Козак нетяга','Ой од поля Килиїмського їдеть козак нетяга,
Рукою махає,
Ні о чім не дбає.
Ой у його сермяжина по коліна,
На нім постоли бобровії,
Онучі бавелнянії,
Напотім пищаль семип''ядная за плечима.
Аж где ся взяв татарин старий бородатий,
На двох конях лисавих за ним уганяє.
Аж до нього козак промовляє:
"Старий татарине бородатий,
Чого ти за мною уганяєш?
Чи на мої зброї яснії,
Чи на мої коні воронії,
Чи на мої шати дорогії?"
Що промовить старий татарин бородатий до козака запоровського:

"Не набігаю на твої коні воронії
Ані на твої шати дорогії,
Не набігаю я на твою зброю ясную,
Тілько я набігаю на тебе, козака молодого.
Коли б тебе мені судив бог узяти,
Не зарікав би я ся в Килиї за тебе шликом червонців брати".
Аж промовить к ньому козак український:
"Старий татарине бородатий,
Не так то мене треба взяти,
Треба зо мною в Килимськом полю погуляти".
До річки до Вітки примикає,
Навколішки припадав,
Семип''ядний пищаль з плеч іздіймав,
Двома кульками набивав,
З татарином жартував,
З обох коні позбивав,
Словами промовляв:
"Татарине старий,
Не буду я злий такий на тебе,
Як ти на мене.
Як ти мене хотів брати,
До Килиї мя приводити,
Хотів червонії за мене шликами брати.
А тепер, татарине, жарту козацького не знаєш,
Та із коня ся валяєш,
Нічому ся [не] спротивляєш.
Тепер буду скарби твої брати,
До війська до табору козацького прибивати,
Буду Килимськоє поле вихваляти,
Що маю здобичі з військом козацьким пропивати".');
DELETE FROM song_links WHERE song_id = 'pisniua_272461';
DELETE FROM song_versions WHERE song_id = 'pisniua_272461';
DELETE FROM songs_fts WHERE song_id = 'pisniua_272461';
DELETE FROM songs WHERE id = 'pisniua_272461';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_272461','Семен Палій і Мазепа',NULL,'uk','ukraine_before_1917',NULL,NULL,'"Думи. Історико-героїчний цикл". Київ, Дніпро, 1982.',NULL,'Шведського року, нещасливого літа,
Не одна-то душа християнська
безневинно пішла з сього світа.
То тогді-то у городі у Лебедині
Царі і князі великим всі дивом дивували,
Один до єдного словами промовляли:
"Про що-то, панове, у землі християнській не стало порядку ставати?"
"Про то, панове, що стали проклятії
Бусурмени християн братами називати".
"Хто ж теє зачинав?"
"Начинав теє проклятий Мазепа,
Як Іскру й Кочубея безневинно сам з сього світа зогнав,
Семена Палія на Сибір завдав".
То царі і князі єдин до єдного словами промовляли;
Да Семена Палія з Сибіру на Москву висилали.
Скоро-то став Семен Палій
Великим постом, весняною погодою
До білого царя на столицю прибувати,
То світ праведний государ велику радість має,
Що до себе великого лицаря Семена Палія у гості сподіває.
То Мазепа тоді як почув,
Що його, проклятого Мазепу, лихо доганяє,
До короля шведського такі речі промовляє:
"Королю шведський, добродію, найясніший мій пане!
Чи будем ми більше города Полтави доставати,
Чи будем з-під города з-під Полтави утікати?
Бо недурно москва стала нас кругом оступати!
Бо в Семена Палія хоч і невеликеє військо охотнеє,
Тільки одна сотня,
А буде нашу тисячу гнати й рубати,
Буде нам, великим панам, великий страх завдавати".
То король шведський тоє зачуває,
Словами промовляє:
"Мазепо, безумная главо!
Чи в мене войсько не збройне?
Чи в мене войсько не панцерне?
Да я ще тую москву могу сікти й рубати,
Ще не зарікаюсь у білого царя й на столиці побувати".
Скоро став Палій Семен
На святого отця Миколая
Із Шереметом Борисом Петровичем під Полтаву прибувати,
То став король шведський із Мазепою тайно втікати,
На царських людей вдаряти;
Много царських людей побивали,
А в городі у Батурині мужиків да жінок упень сікли да рубали,
Церкви палили, святості да ікони під ноги топтали,
Плоти справляли, На той бік Дніпра утікали.
То Семен Палій під Полтаву прибуває,
Січе й рубає, на всі сторони, як полову, метає,
До Дніпра прибуває, на той бік Дніпра поглядає,
Що король шведський із Мазепою на тім боці Дніпра походжає,
То він-то мечем махає,
Словами промовляє:
"Помоли ти, Мазепо, за мене бога, що я тебе не догнав -
Альбо б посік, альбо порубав,
Альбо живйом на вічну каторгу завдав!"
Земле, земле християнська,
Єгда ти була смутками і печальми наповнена,
Не знала, де родина об родині промишляє.
Дай, боже, честь і хвалу Світ-праведному государю
Да й Семену Палію, Превеликому пану,
Що не дав шведу християн на поталу!
Ой дай, боже, усім християнам многая літа
До щасливого прожитія у цім світі!','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_272461'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_272461','Семен Палій і Мазепа','Шведського року, нещасливого літа,
Не одна-то душа християнська
безневинно пішла з сього світа.
То тогді-то у городі у Лебедині
Царі і князі великим всі дивом дивували,
Один до єдного словами промовляли:
"Про що-то, панове, у землі християнській не стало порядку ставати?"
"Про то, панове, що стали проклятії
Бусурмени християн братами називати".
"Хто ж теє зачинав?"
"Начинав теє проклятий Мазепа,
Як Іскру й Кочубея безневинно сам з сього світа зогнав,
Семена Палія на Сибір завдав".
То царі і князі єдин до єдного словами промовляли;
Да Семена Палія з Сибіру на Москву висилали.
Скоро-то став Семен Палій
Великим постом, весняною погодою
До білого царя на столицю прибувати,
То світ праведний государ велику радість має,
Що до себе великого лицаря Семена Палія у гості сподіває.
То Мазепа тоді як почув,
Що його, проклятого Мазепу, лихо доганяє,
До короля шведського такі речі промовляє:
"Королю шведський, добродію, найясніший мій пане!
Чи будем ми більше города Полтави доставати,
Чи будем з-під города з-під Полтави утікати?
Бо недурно москва стала нас кругом оступати!
Бо в Семена Палія хоч і невеликеє військо охотнеє,
Тільки одна сотня,
А буде нашу тисячу гнати й рубати,
Буде нам, великим панам, великий страх завдавати".
То король шведський тоє зачуває,
Словами промовляє:
"Мазепо, безумная главо!
Чи в мене войсько не збройне?
Чи в мене войсько не панцерне?
Да я ще тую москву могу сікти й рубати,
Ще не зарікаюсь у білого царя й на столиці побувати".
Скоро став Палій Семен
На святого отця Миколая
Із Шереметом Борисом Петровичем під Полтаву прибувати,
То став король шведський із Мазепою тайно втікати,
На царських людей вдаряти;
Много царських людей побивали,
А в городі у Батурині мужиків да жінок упень сікли да рубали,
Церкви палили, святості да ікони під ноги топтали,
Плоти справляли, На той бік Дніпра утікали.
То Семен Палій під Полтаву прибуває,
Січе й рубає, на всі сторони, як полову, метає,
До Дніпра прибуває, на той бік Дніпра поглядає,
Що король шведський із Мазепою на тім боці Дніпра походжає,
То він-то мечем махає,
Словами промовляє:
"Помоли ти, Мазепо, за мене бога, що я тебе не догнав -
Альбо б посік, альбо порубав,
Альбо живйом на вічну каторгу завдав!"
Земле, земле християнська,
Єгда ти була смутками і печальми наповнена,
Не знала, де родина об родині промишляє.
Дай, боже, честь і хвалу Світ-праведному государю
Да й Семену Палію, Превеликому пану,
Що не дав шведу християн на поталу!
Ой дай, боже, усім християнам многая літа
До щасливого прожитія у цім світі!');
DELETE FROM song_links WHERE song_id = 'pisniua_272828';
DELETE FROM song_versions WHERE song_id = 'pisniua_272828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_272828';
DELETE FROM songs WHERE id = 'pisniua_272828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_272828','Коваленко',NULL,'uk','ukraine_before_1917',NULL,NULL,'"Думи. Історико-героїчний цикл". Київ, Дніпро, 1982.',NULL,'Давно тому на Вкраїні ковалював Коваленко,
І не було кувати єму легонько:
Покинув він ковалювати,
А пішов в козаки козакувати.
Зібрав сто хлопців таких, як він,
Бо він був сильний легінь,
У Чорне море він ся запускав,
Галери турецькі рабував,
Багато лиха наробив,
Тому султанові ся не здобрив.
То приказав [султан] єго шукати,
Живого в Туреччину припровадити:
"Бо я не буду їсти і спати,
Доки в руках єго не буду мати!"
Пішло триста турків і довго шукали,
Аж по трьох місяцях їх відшукали
І добру тут баталію зчинили:
Козаки з турками добре ся били.
Але що? Турки в кінці перевагу взяли,
Бо більше війська мали.
То сімдесятьох козаків порубали,
В Чорне море рибі кидали,
А трийцятьох і Коваленка спіймали,
В тяжкі кайдани закували
І втіхи не знали, що зробити,
Чи утопити,
Чи порубати
І всіх з башти на гаки покидати.
"Ні! - крикнув султан. - У льох киньте,
А самі по довгих трудах ідіть спочиньте,
Але щоби-сьте потрійну сторожу дали,
Щоб ті схизмати не поутікали!
А ти, полководцю, от пас дорогий маєш,
За що тобі даю, то ти знаєш!"
Вже третій рік в неволі,
Що взяли їх поневолі,
Третій рік в льоху пробувають,
Сонця праведного, України не видають,
А кайдани руки, ноги обривають.
Попід стіни льоху козаки сиділи
Та кайданами дзеленькотіли,
Голосно закричали: "Віро бусурменська,
Ти земле, земле турецька,
Ой земле, де ж ми могли знати,
Що ми будем у тебе пробувати,
Що по степу гуляли,
Під голим небом спали..."
"Ой, не згадуй, не згадуй, - крикнув Коваленко, -
Бо як про Україну почую, то болить серденько!
Волів би я, щоб нас четвертували
Або щоб завтра по степу гуляли".
Аж тут двері заскрипіли,
А козаки заніміли,
Сестра гожа увійшла,
Хліб-воду подала і сказала:
"Се дівка-бранка пекла!"
І по тих словах відійшла,
Козаки голодні скоро хліб розломили,
А в хлібі ножі і маленькі пили.
"Ох, боже, се дівка-бранка дала, -
Бодай она здорова була!
Дівка-бранка довго хай жиє,
Нам, хлопці, робота є".
Козаки скоро кайдани розпилували
Та доброї хвилі чекали:
"Ох, боже, коби ті два дні скоро зійшли,
Щоб за мною ви, орли, вилетіли!"
На другий вечір хліб-воду принесли,
А козаки на турків вітром ся понесли,
Щосили кололи, рубали,
Збрую у трупів забрали,
На чаки турецькі сідали,
Від берега турецького відпливали,
Що сили мали, веслами веслували.
В гирло Дніпра прибували,
А щоби коло Очакова, Кизикермені не полапали, -
То від гирла Дніпра степами-лісами маширували,
До Запорожжя прибували
І тут ся остали.
А бандуристи про Коваленка думу складали
Та по цілій Україні співали.','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_272828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_272828','Коваленко','Давно тому на Вкраїні ковалював Коваленко,
І не було кувати єму легонько:
Покинув він ковалювати,
А пішов в козаки козакувати.
Зібрав сто хлопців таких, як він,
Бо він був сильний легінь,
У Чорне море він ся запускав,
Галери турецькі рабував,
Багато лиха наробив,
Тому султанові ся не здобрив.
То приказав [султан] єго шукати,
Живого в Туреччину припровадити:
"Бо я не буду їсти і спати,
Доки в руках єго не буду мати!"
Пішло триста турків і довго шукали,
Аж по трьох місяцях їх відшукали
І добру тут баталію зчинили:
Козаки з турками добре ся били.
Але що? Турки в кінці перевагу взяли,
Бо більше війська мали.
То сімдесятьох козаків порубали,
В Чорне море рибі кидали,
А трийцятьох і Коваленка спіймали,
В тяжкі кайдани закували
І втіхи не знали, що зробити,
Чи утопити,
Чи порубати
І всіх з башти на гаки покидати.
"Ні! - крикнув султан. - У льох киньте,
А самі по довгих трудах ідіть спочиньте,
Але щоби-сьте потрійну сторожу дали,
Щоб ті схизмати не поутікали!
А ти, полководцю, от пас дорогий маєш,
За що тобі даю, то ти знаєш!"
Вже третій рік в неволі,
Що взяли їх поневолі,
Третій рік в льоху пробувають,
Сонця праведного, України не видають,
А кайдани руки, ноги обривають.
Попід стіни льоху козаки сиділи
Та кайданами дзеленькотіли,
Голосно закричали: "Віро бусурменська,
Ти земле, земле турецька,
Ой земле, де ж ми могли знати,
Що ми будем у тебе пробувати,
Що по степу гуляли,
Під голим небом спали..."
"Ой, не згадуй, не згадуй, - крикнув Коваленко, -
Бо як про Україну почую, то болить серденько!
Волів би я, щоб нас четвертували
Або щоб завтра по степу гуляли".
Аж тут двері заскрипіли,
А козаки заніміли,
Сестра гожа увійшла,
Хліб-воду подала і сказала:
"Се дівка-бранка пекла!"
І по тих словах відійшла,
Козаки голодні скоро хліб розломили,
А в хлібі ножі і маленькі пили.
"Ох, боже, се дівка-бранка дала, -
Бодай она здорова була!
Дівка-бранка довго хай жиє,
Нам, хлопці, робота є".
Козаки скоро кайдани розпилували
Та доброї хвилі чекали:
"Ох, боже, коби ті два дні скоро зійшли,
Щоб за мною ви, орли, вилетіли!"
На другий вечір хліб-воду принесли,
А козаки на турків вітром ся понесли,
Щосили кололи, рубали,
Збрую у трупів забрали,
На чаки турецькі сідали,
Від берега турецького відпливали,
Що сили мали, веслами веслували.
В гирло Дніпра прибували,
А щоби коло Очакова, Кизикермені не полапали, -
То від гирла Дніпра степами-лісами маширували,
До Запорожжя прибували
І тут ся остали.
А бандуристи про Коваленка думу складали
Та по цілій Україні співали.');
DELETE FROM song_links WHERE song_id = 'pisniua_272055';
DELETE FROM song_versions WHERE song_id = 'pisniua_272055';
DELETE FROM songs_fts WHERE song_id = 'pisniua_272055';
DELETE FROM songs WHERE id = 'pisniua_272055';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_272055','Там під лісом сонце сходить','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'аудіозапис',NULL,'Там під лісом сонце сходить,
Зеленіє там трава.
Наша сотня в похід вирушала,
Лісом неслася луна.

Попереду сотник марширує,
Як той орел степовий.
А над ними синьо-жовтий прапор,
Той повстанчий, бойовий.

Є в нас кріси, танки і гармати,
Скоростріли гуркотять.
Гей виходьте ті що окупантів
Ненавидять, нехотять.

А дівчина виходила з хати,
Сльози падали на грудь.
"Будь мій милий живий та здоровий
Повертайся, не забудь"

"Не забуду я тебе кохана,
Поки в світі житиму.
Ту хустинку, що с подарувала,
Під серцем носитиму."','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_272055'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_272055','Там під лісом сонце сходить','Там під лісом сонце сходить,
Зеленіє там трава.
Наша сотня в похід вирушала,
Лісом неслася луна.

Попереду сотник марширує,
Як той орел степовий.
А над ними синьо-жовтий прапор,
Той повстанчий, бойовий.

Є в нас кріси, танки і гармати,
Скоростріли гуркотять.
Гей виходьте ті що окупантів
Ненавидять, нехотять.

А дівчина виходила з хати,
Сльози падали на грудь.
"Будь мій милий живий та здоровий
Повертайся, не забудь"

"Не забуду я тебе кохана,
Поки в світі житиму.
Ту хустинку, що с подарувала,
Під серцем носитиму."');
DELETE FROM song_links WHERE song_id = 'pisniua_272653';
DELETE FROM song_versions WHERE song_id = 'pisniua_272653';
DELETE FROM songs_fts WHERE song_id = 'pisniua_272653';
DELETE FROM songs WHERE id = 'pisniua_272653';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_272653','Козак Голота','Виконує: Архип Никоненко','uk','ukraine_before_1917',NULL,NULL,'"Думи. Історико-героїчний цикл". Київ, Дніпро, 1982.',NULL,'Ой полем, полем Килиїмським,
То шляхом битим гординським,
Ой там гуляв козак Голота,
Не боїться ні огня, ні меча, ні третього болота.
Правда, на козакові шати дорогії -
Три семирязі лихії:
Одна недобра, друга негожа,
А третя й на хлів незгожа.
А ще, правда, на козакові постоли в''язові,
А онучі китайчані -
Щирі жіноцькі рядняні;
Волоки шовкові -
Удвоє жіноцькі щирі валові.
Правда, на козакові шапка-бирка -
Зверху дирка,
Травою пошита,
Вітром підбита,
Куди віє, туди й провіває,
Козака молодого прохолоджає.
То гуляє козак Голота, погуляє,
Ні города, ні села не займає, -
На город Килию поглядає.
У городі Килиї татарин сидить бородатий,
По гірницях походжає,
До татарки словами промовляє:
"Татарко, татарко!
Ой чи ти думаєш те, що я думаю?
Ой чи ти бачиш те, що я бачу?"
Каже: "Татарине, ой, сідий, бородатий!
Я тільки бачу, що ти передо мною по гірницях походжаєш,
А не знаю, що ти думаєш да гадаєш".
Каже: "Татарко!
Я те бачу: в чистім полі не орел літає -
То козак Голота добрим конем гуляє.
Я його хочу живцем у руки взяти
Да в город Килию запродати,
Іще ж ним перед великими панами-башами вихваляти.
За його много червоних не лічачи брати,
Дорогії сукна не міряти пощитати".
То теє промовляв, - дороге плаття надіває,
Чоботи обуває,
Шлик бархатний на свою голову надіває,
На коня сідає,
Безпечно за козаком Голотою ганяє.
То козак Голота добре козацький звичай знає, -
Ой на татарина скрива, як вовк, поглядає.
Каже: "Татарине, татарине!
На віщо ж ти важиш:
Чи на мою ясненькую зброю,
Чи на мого коня вороного,
Чи на мене, козака молодого?"
"Я, - каже, - важу на твою ясненькую зброю,
А ще лучче на твого коня вороного,
А ще лучче на тебе, козака молодого.
Я тебе хочу живцем у руки взяти,
В город Килию запродати,
Перед великими панами-башами вихваляти
І много червоних не лічачи набрати,
Дорогії сукна не мірячи пощитати".

То козак Голота добре звичай козацький знає,
Ой на татарина скрива, як вовк, поглядає.
"Ой, - каже, - татарине, ой, сідий же ти, бородатий!
Либонь же, ти на розум небагатий:
Ще ти козака у руки не взяв,
А вже за його й гроші пощитав.
А ще ж ти між козаками не бував,
Козацької каші не їдав
І козацьких звичаїв не знаєш".
То теє промовляв,
На присішках став,
Без міри пороху підсипає,
Татарину гостинця в груди посилає.
Ой ще козак не примірився,
А татарин і к лихій матері з коня покотився!
Він йому віри не донімає,
До його прибуває,
Келепом межи плечі гримає,
Коли ж огладиться, аж у його й духу немає.
Він тоді добре дбав,
Чоботи татарські істягав,
На свої козацькі ноги обував;
Одежу істягав,
На свої козацькі плечі надівав;
Бархатний шлик іздіймає,
На свою козацьку голову надіває;
Коня татарського за поводи взяв,
У город Січі припав,
Там собі п''є-гуляє,
Поле Килиїмське хвалить-вихваляє:
"Ой поле Килиїмське!
Бодай же ти літо й зиму зеленіло,
Як ти мене при нещасливій годині сподобило!
Дай же, боже, щоб козаки пили та гуляли,
Хороші мислі мали,
Од мене більшу добичу брали
І неприятеля під нозі топтали!"
Слава не вмре, не поляже
Од нині до віка!
Даруй, боже, на многі літа!','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_272653'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_272653','Козак Голота','Ой полем, полем Килиїмським,
То шляхом битим гординським,
Ой там гуляв козак Голота,
Не боїться ні огня, ні меча, ні третього болота.
Правда, на козакові шати дорогії -
Три семирязі лихії:
Одна недобра, друга негожа,
А третя й на хлів незгожа.
А ще, правда, на козакові постоли в''язові,
А онучі китайчані -
Щирі жіноцькі рядняні;
Волоки шовкові -
Удвоє жіноцькі щирі валові.
Правда, на козакові шапка-бирка -
Зверху дирка,
Травою пошита,
Вітром підбита,
Куди віє, туди й провіває,
Козака молодого прохолоджає.
То гуляє козак Голота, погуляє,
Ні города, ні села не займає, -
На город Килию поглядає.
У городі Килиї татарин сидить бородатий,
По гірницях походжає,
До татарки словами промовляє:
"Татарко, татарко!
Ой чи ти думаєш те, що я думаю?
Ой чи ти бачиш те, що я бачу?"
Каже: "Татарине, ой, сідий, бородатий!
Я тільки бачу, що ти передо мною по гірницях походжаєш,
А не знаю, що ти думаєш да гадаєш".
Каже: "Татарко!
Я те бачу: в чистім полі не орел літає -
То козак Голота добрим конем гуляє.
Я його хочу живцем у руки взяти
Да в город Килию запродати,
Іще ж ним перед великими панами-башами вихваляти.
За його много червоних не лічачи брати,
Дорогії сукна не міряти пощитати".
То теє промовляв, - дороге плаття надіває,
Чоботи обуває,
Шлик бархатний на свою голову надіває,
На коня сідає,
Безпечно за козаком Голотою ганяє.
То козак Голота добре козацький звичай знає, -
Ой на татарина скрива, як вовк, поглядає.
Каже: "Татарине, татарине!
На віщо ж ти важиш:
Чи на мою ясненькую зброю,
Чи на мого коня вороного,
Чи на мене, козака молодого?"
"Я, - каже, - важу на твою ясненькую зброю,
А ще лучче на твого коня вороного,
А ще лучче на тебе, козака молодого.
Я тебе хочу живцем у руки взяти,
В город Килию запродати,
Перед великими панами-башами вихваляти
І много червоних не лічачи набрати,
Дорогії сукна не мірячи пощитати".

То козак Голота добре звичай козацький знає,
Ой на татарина скрива, як вовк, поглядає.
"Ой, - каже, - татарине, ой, сідий же ти, бородатий!
Либонь же, ти на розум небагатий:
Ще ти козака у руки не взяв,
А вже за його й гроші пощитав.
А ще ж ти між козаками не бував,
Козацької каші не їдав
І козацьких звичаїв не знаєш".
То теє промовляв,
На присішках став,
Без міри пороху підсипає,
Татарину гостинця в груди посилає.
Ой ще козак не примірився,
А татарин і к лихій матері з коня покотився!
Він йому віри не донімає,
До його прибуває,
Келепом межи плечі гримає,
Коли ж огладиться, аж у його й духу немає.
Він тоді добре дбав,
Чоботи татарські істягав,
На свої козацькі ноги обував;
Одежу істягав,
На свої козацькі плечі надівав;
Бархатний шлик іздіймає,
На свою козацьку голову надіває;
Коня татарського за поводи взяв,
У город Січі припав,
Там собі п''є-гуляє,
Поле Килиїмське хвалить-вихваляє:
"Ой поле Килиїмське!
Бодай же ти літо й зиму зеленіло,
Як ти мене при нещасливій годині сподобило!
Дай же, боже, щоб козаки пили та гуляли,
Хороші мислі мали,
Од мене більшу добичу брали
І неприятеля під нозі топтали!"
Слава не вмре, не поляже
Од нині до віка!
Даруй, боже, на многі літа!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_272653_l1','pisniua_272653','YouTube','https://www.youtube.com/watch?v=2kmL_GRuOrw','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_272767';
DELETE FROM song_versions WHERE song_id = 'pisniua_272767';
DELETE FROM songs_fts WHERE song_id = 'pisniua_272767';
DELETE FROM songs WHERE id = 'pisniua_272767';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_272767','Розмова Дніпра з Дунаєм','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'"Думи. Історико-героїчний цикл". Київ, Дніпро, 1982.',NULL,'Питається Дніпр тихого Дунаю:
"Тихий Дунаю,
Що я своїх козаків на тобі не видаю?
Чи твоє дунайськеє гирло моїх козаків пожерло.
Чи твоя Дунай-вода моїх козаків забрала?"
Промовить тихий Дунай до Дніпра-Славути:
"Дніпр-батьку, Славуто!
Сам собі думаю да гадаю,
Що твоїх козаків у себе не видаю:
Уже чверть года три місяця вибиває,
Як твоїх козаків у мене немає,
Ні моє дунайськеє гирло твоїх козаків не пожерло,
Ні моя дунайська вода твоїх козаків не забрала,
Їх турки не постреляли, не порубали,
До города-царя в полон не забрали...
Всі мої квіти луговії і низовії пониділи,
Що твоїх козаків у себе не виділи.
Твої козаки на черкеській горі пробувають,
Холодної води в барила набирають,
Шляхи і дороги замічали,
Городи бусурменські плюндрували,
Огнем-мечем воювали,
Сребра-злата по достатках набирали,
До річки Хортиці прибували,
Велику переправу собі мали,
До стародавньої Січі поспішали,
У стародавній Січі очертою сідали,
Сребро і злато турецьке на три часті паювали,
Мед і оковиту горілку подпивали,
За весь мир господа прохали...
Которії козаки чистим полем гуляли,
Річки низовії, помощниці дніпровії, добре знали!"','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_272767'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_272767','Розмова Дніпра з Дунаєм','Питається Дніпр тихого Дунаю:
"Тихий Дунаю,
Що я своїх козаків на тобі не видаю?
Чи твоє дунайськеє гирло моїх козаків пожерло.
Чи твоя Дунай-вода моїх козаків забрала?"
Промовить тихий Дунай до Дніпра-Славути:
"Дніпр-батьку, Славуто!
Сам собі думаю да гадаю,
Що твоїх козаків у себе не видаю:
Уже чверть года три місяця вибиває,
Як твоїх козаків у мене немає,
Ні моє дунайськеє гирло твоїх козаків не пожерло,
Ні моя дунайська вода твоїх козаків не забрала,
Їх турки не постреляли, не порубали,
До города-царя в полон не забрали...
Всі мої квіти луговії і низовії пониділи,
Що твоїх козаків у себе не виділи.
Твої козаки на черкеській горі пробувають,
Холодної води в барила набирають,
Шляхи і дороги замічали,
Городи бусурменські плюндрували,
Огнем-мечем воювали,
Сребра-злата по достатках набирали,
До річки Хортиці прибували,
Велику переправу собі мали,
До стародавньої Січі поспішали,
У стародавній Січі очертою сідали,
Сребро і злато турецьке на три часті паювали,
Мед і оковиту горілку подпивали,
За весь мир господа прохали...
Которії козаки чистим полем гуляли,
Річки низовії, помощниці дніпровії, добре знали!"');
DELETE FROM song_links WHERE song_id = 'pisniua_27277';
DELETE FROM song_versions WHERE song_id = 'pisniua_27277';
DELETE FROM songs_fts WHERE song_id = 'pisniua_27277';
DELETE FROM songs WHERE id = 'pisniua_27277';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_27277','Чи справді?','Музика: Богдан Весоловський Слова: Богдан Весоловський','uk','ukraine_1991',NULL,NULL,'Богдан Весоловський "Прийде ще час..." Львів "Галицька видавнича спілка" 2001',NULL,'В далекий світ, за синє море,
Веліла доля йти в незнаний край,
Покинуть вас, мрійливі зорі,
Пахуче поле, ліс, ручай.

Прийшлось покинуть все, що миле,
Залишити тебе, любов мою,
Тобі з далекої чужини
Привіт мій щирий вірний шлю...

Чи справді вже нам не стрінутись з тобою,
Чи справді вже нам не мріять, не любить,
Чи може лише вечірньою порою
За тим, що було, нам тільки тужить.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_27277'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_27277','Чи справді?','В далекий світ, за синє море,
Веліла доля йти в незнаний край,
Покинуть вас, мрійливі зорі,
Пахуче поле, ліс, ручай.

Прийшлось покинуть все, що миле,
Залишити тебе, любов мою,
Тобі з далекої чужини
Привіт мій щирий вірний шлю...

Чи справді вже нам не стрінутись з тобою,
Чи справді вже нам не мріять, не любить,
Чи може лише вечірньою порою
За тим, що було, нам тільки тужить.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27277_l1','pisniua_27277','YouTube','https://www.youtube.com/watch?v=2t0JS0bI0Xc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27277_l2','pisniua_27277','YouTube','https://www.youtube.com/watch?v=YtN2ucYz0O8','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_273414';
DELETE FROM song_versions WHERE song_id = 'pisniua_273414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_273414';
DELETE FROM songs WHERE id = 'pisniua_273414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_273414','Тече Кубань','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. надіслав Ілля Самойлов',NULL,'Тече Кубань аж у лиман, верст , мабуть, за триста.
Пісок круте, воду муте, щоб не було чисто     | (2)

Тече Кубань аж у лиман, а з лиману в море
Та й не знали козаченьки, яке буде горе...    | (2)

Колись було в людей добро, нажите годами,
Забирали, однімали цілими возами...           | (2)
А що ж вони забрали?

Хліб, коняку, товаряку, ще й вівцю і курку...
Кінжал, шашку, сідло, шапку, черкеску ще й бурку.  | (2)

Аж десь взявсь, та й піднявсь більшовик з війною
Третє літо на тім світі кров ллється рікою.   | (2)

Різав людей: жінок дітей, розбоєм зайнявся.
Офіцерів, командирів побив та й повішав.      | (2)

Охфіцерів, командирів побив та й повішав.
Кровавою розправою своє серце  тішив.         | (3)','[''pisni.org.ua'', ''cat:istorychni'', ''cat:kubanski'', ''Історичні пісні'', ''Кубанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_273414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_273414','Тече Кубань','Тече Кубань аж у лиман, верст , мабуть, за триста.
Пісок круте, воду муте, щоб не було чисто     | (2)

Тече Кубань аж у лиман, а з лиману в море
Та й не знали козаченьки, яке буде горе...    | (2)

Колись було в людей добро, нажите годами,
Забирали, однімали цілими возами...           | (2)
А що ж вони забрали?

Хліб, коняку, товаряку, ще й вівцю і курку...
Кінжал, шашку, сідло, шапку, черкеску ще й бурку.  | (2)

Аж десь взявсь, та й піднявсь більшовик з війною
Третє літо на тім світі кров ллється рікою.   | (2)

Різав людей: жінок дітей, розбоєм зайнявся.
Офіцерів, командирів побив та й повішав.      | (2)

Охфіцерів, командирів побив та й повішав.
Кровавою розправою своє серце  тішив.         | (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_273414_l1','pisniua_273414','YouTube','https://www.youtube.com/watch?v=dyHhrrGWG84','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_272818';
DELETE FROM song_versions WHERE song_id = 'pisniua_272818';
DELETE FROM songs_fts WHERE song_id = 'pisniua_272818';
DELETE FROM songs WHERE id = 'pisniua_272818';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_272818','Дума про Олексія Поповича',NULL,'uk','ukraine_before_1917',NULL,NULL,'"Думи. Історико-героїчний цикл". Київ, Дніпро, 1982.',NULL,'На Чорному морі та на камені білому,
Там сидів ясний сокіл-білозорець.
Він смутно себе має і на Чорне море
Спильна поглядає,
Що на Чорному морі все недобре починає:
Що на небі всі звізди потьмарило,
Половина місяця у чорну хмару заступило.
А із низу буйний вітер повіває,
А на Чорному морі злая хуртовина і бистрая хвиля наступає,
Якорі зриває, судна козацькі запорозькі
На три часті розбиває.
Що первую часть судна взяло -
В землю агарську за[по]несло;
А другу часть судна гирло дунайське пожерло,
А третя часть судна, де саме Чорноє море, там потопає.
А при тій часті був Грицько Зборовський,
Отаман козацький запорозький,
То він-то проміжду козаками проходжає
І до козаків словами промовляє:
"Гей, козаки-панове! Хтось-то міжду нами
На собі великий гріх має.
Сповідайтесь, козаки-панове, милосердному богу,
Та Чорному морю, та й мені, отаману кошовому;
В Чорноє море один упадіте,
Козацького війська всього не губіте".
Тоді козаки все це зачували
Та всі замовчали,
Бо вони на собі великого гріха не мали.
А тілько міжду їми обізвався
Писар військовий, козак лейстровий,
Пирятинський Попович Олексій:
"Добре ви, братця, зробіте, мене самого возьміте,
Назад руки зв''яжіте,
Чорною китайкою очі зав''яжіте
До шиї камінь білий причепіте
Та самого мене одного в море зіпхніте:
Нехай я буду у Чорному морі сам-один потопати,
Щоб козацького війська Запорозького всього не згубляти".
То тоді ж козаки все це зачували
Та до Олексія Поповича словами промовляли:
"Ти ж, було, Олексію Поповичу, на день тричі святе   письмо у руки береш, та й читаєш,
Та й нас, козаків простих, на все добре навчаєш,
А чого ж ти більше від нас на собі гріха маєш?"
Тоді Олексій Попович став до козаків словами промовляти
Та й сльозами ридати:
"Хоч я, було, козаки, панове-молодці,
І тричі на день святе письмо у руки беру, та читаю,
Та вас, козаків, на все добре навчаю,
А я сам негаразд починаю.
То тим же я більше від вас на собі гріха маю:
Як я з города Пирятина виїжджав,
То я від отця й від матусі прощенія не прохав! [вар.: не брав]
І отця, й матусі не почитав і не поважав,
А на старшого брата гнів великий покладав,
Сусіду ближню безвинно хлібом і сіллю оставляв;
Та ще і на свого доброго коня сідав,
По вулицях проїжджав,
Малих дітей топтав,
А старих людей стременами в груди штовхав.
Та іще проти церкви, божого дому, проїжджав,
Шапки з себе не скидав і хреста на себе не покладав;
Та іще їхав селами й городами,
Чужими сторонами,
То старі люди стояли, вони думали та гадали,
То, може, вони що й добре проти мене сказали,
А я проти їх своєю гордостію та пишностію
Противноє слово старим людям сказав.
Я не питався старих людей - яка в вас у селенії церква святая,
Я питався старих людей - де у вас корчма новая
Та шинкарка молодая?
Що другі козаки у святу неділеньку у божім домі молебні наймали,
Господа милосердного на поміч прохали,
А ми тоді в корчмі пили, та гуляли,
Та музики наймали, та танці справляли.
Отим-то я, козаки-молодці, більше від вас на собі гріха маю.
Тепер я сам погибаю, на Чорному морі потопаю.
Це ж бо, козаки-панове, на Чорному морі
Не бистрая хвиля наступає,
А це мене отцева та матусина молитва карає.
Коли б мене цяя злая хуртовина і бистрая хвиля
На Чорному морі не втопила,
Щоб отцева та матусина молитва
Мене від смерті боронила,
Тоді б я знав, як отця й матусю почитати й поважати,
Старшого брата за рідного отця щитати,
А рідну сестрицю за матусю в себе мати".
Тоді ж козаки-запорожці усе добра дбали
Та Олексієві Поповичу назад руки зв''язали,
Чорним платком очі затьмили,
Та все такого козака у Чорноє море пускати пожаліли.
Та на правій руці палець мезинний Олексієві відрубали,
Та в Чорноє море кров Олексієву пускали.
Коли Чорне море стало християнськую кров заживати,
То тоді на Чорному морі злая хуртовина
І бистрая хвиля стала притихати,
А судна козацькі під гору
Як руками підоймати, до Тендрова-острова прибивати.
Тоді ж ті козаки у судні стали дивом дивувати:
"В якому ми страсі пробували,
На Чорному морі та на бистрій хвилі потопали,
Ані одного козака з межі войськової [?] не втеряли".
То Олексій Попович став із судна на пристань виходжати,
Та на вколінка впадати,
Та святе письмо брати та й читати,
Та всіх козаків на все добре научати:
"Треба, козаки-панове, отця й матусю почитати й поважати.
Котрий чоловік на світі живе,
Отця-матусю почитає й поважає,
То той собі навік щастя має,
Того смертельний меч минає,
Отцева-матусина молитва зо дна моря винімає,
Од гріхів смертвених душу одкупляє.
На полі та на морі отцева-матусина молитва на поміч призиває".
То Олексію Поповичу пирятинському слава однині до віка,
А вам пошли, боже, на здравіє та на многая літа.','[''pisni.org.ua'', ''cat:dumy'', ''Думи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_272818'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_272818','Дума про Олексія Поповича','На Чорному морі та на камені білому,
Там сидів ясний сокіл-білозорець.
Він смутно себе має і на Чорне море
Спильна поглядає,
Що на Чорному морі все недобре починає:
Що на небі всі звізди потьмарило,
Половина місяця у чорну хмару заступило.
А із низу буйний вітер повіває,
А на Чорному морі злая хуртовина і бистрая хвиля наступає,
Якорі зриває, судна козацькі запорозькі
На три часті розбиває.
Що первую часть судна взяло -
В землю агарську за[по]несло;
А другу часть судна гирло дунайське пожерло,
А третя часть судна, де саме Чорноє море, там потопає.
А при тій часті був Грицько Зборовський,
Отаман козацький запорозький,
То він-то проміжду козаками проходжає
І до козаків словами промовляє:
"Гей, козаки-панове! Хтось-то міжду нами
На собі великий гріх має.
Сповідайтесь, козаки-панове, милосердному богу,
Та Чорному морю, та й мені, отаману кошовому;
В Чорноє море один упадіте,
Козацького війська всього не губіте".
Тоді козаки все це зачували
Та всі замовчали,
Бо вони на собі великого гріха не мали.
А тілько міжду їми обізвався
Писар військовий, козак лейстровий,
Пирятинський Попович Олексій:
"Добре ви, братця, зробіте, мене самого возьміте,
Назад руки зв''яжіте,
Чорною китайкою очі зав''яжіте
До шиї камінь білий причепіте
Та самого мене одного в море зіпхніте:
Нехай я буду у Чорному морі сам-один потопати,
Щоб козацького війська Запорозького всього не згубляти".
То тоді ж козаки все це зачували
Та до Олексія Поповича словами промовляли:
"Ти ж, було, Олексію Поповичу, на день тричі святе   письмо у руки береш, та й читаєш,
Та й нас, козаків простих, на все добре навчаєш,
А чого ж ти більше від нас на собі гріха маєш?"
Тоді Олексій Попович став до козаків словами промовляти
Та й сльозами ридати:
"Хоч я, було, козаки, панове-молодці,
І тричі на день святе письмо у руки беру, та читаю,
Та вас, козаків, на все добре навчаю,
А я сам негаразд починаю.
То тим же я більше від вас на собі гріха маю:
Як я з города Пирятина виїжджав,
То я від отця й від матусі прощенія не прохав! [вар.: не брав]
І отця, й матусі не почитав і не поважав,
А на старшого брата гнів великий покладав,
Сусіду ближню безвинно хлібом і сіллю оставляв;
Та ще і на свого доброго коня сідав,
По вулицях проїжджав,
Малих дітей топтав,
А старих людей стременами в груди штовхав.
Та іще проти церкви, божого дому, проїжджав,
Шапки з себе не скидав і хреста на себе не покладав;
Та іще їхав селами й городами,
Чужими сторонами,
То старі люди стояли, вони думали та гадали,
То, може, вони що й добре проти мене сказали,
А я проти їх своєю гордостію та пишностію
Противноє слово старим людям сказав.
Я не питався старих людей - яка в вас у селенії церква святая,
Я питався старих людей - де у вас корчма новая
Та шинкарка молодая?
Що другі козаки у святу неділеньку у божім домі молебні наймали,
Господа милосердного на поміч прохали,
А ми тоді в корчмі пили, та гуляли,
Та музики наймали, та танці справляли.
Отим-то я, козаки-молодці, більше від вас на собі гріха маю.
Тепер я сам погибаю, на Чорному морі потопаю.
Це ж бо, козаки-панове, на Чорному морі
Не бистрая хвиля наступає,
А це мене отцева та матусина молитва карає.
Коли б мене цяя злая хуртовина і бистрая хвиля
На Чорному морі не втопила,
Щоб отцева та матусина молитва
Мене від смерті боронила,
Тоді б я знав, як отця й матусю почитати й поважати,
Старшого брата за рідного отця щитати,
А рідну сестрицю за матусю в себе мати".
Тоді ж козаки-запорожці усе добра дбали
Та Олексієві Поповичу назад руки зв''язали,
Чорним платком очі затьмили,
Та все такого козака у Чорноє море пускати пожаліли.
Та на правій руці палець мезинний Олексієві відрубали,
Та в Чорноє море кров Олексієву пускали.
Коли Чорне море стало християнськую кров заживати,
То тоді на Чорному морі злая хуртовина
І бистрая хвиля стала притихати,
А судна козацькі під гору
Як руками підоймати, до Тендрова-острова прибивати.
Тоді ж ті козаки у судні стали дивом дивувати:
"В якому ми страсі пробували,
На Чорному морі та на бистрій хвилі потопали,
Ані одного козака з межі войськової [?] не втеряли".
То Олексій Попович став із судна на пристань виходжати,
Та на вколінка впадати,
Та святе письмо брати та й читати,
Та всіх козаків на все добре научати:
"Треба, козаки-панове, отця й матусю почитати й поважати.
Котрий чоловік на світі живе,
Отця-матусю почитає й поважає,
То той собі навік щастя має,
Того смертельний меч минає,
Отцева-матусина молитва зо дна моря винімає,
Од гріхів смертвених душу одкупляє.
На полі та на морі отцева-матусина молитва на поміч призиває".
То Олексію Поповичу пирятинському слава однині до віка,
А вам пошли, боже, на здравіє та на многая літа.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_272818_l1','pisniua_272818','YouTube','https://www.youtube.com/watch?v=gIbVEd5yn7Q','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_273369';
DELETE FROM song_versions WHERE song_id = 'pisniua_273369';
DELETE FROM songs_fts WHERE song_id = 'pisniua_273369';
DELETE FROM songs WHERE id = 'pisniua_273369';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_273369','Била жінка мужика','Українська народна пісня. Виконує: Кубанський Козачий Хор','uk','ukraine_before_1917',NULL,NULL,'1. надіслав Ілля Самойлов',NULL,'Била жінка та мужика,
Та й вигнала з хати,
Присудили та мужику,
Щоб жінку прохати.
Щоб жінку!
Щоб жінку!
Щоб жінку прохати!

Сидить мила та на припічку,
Ніженьки піджавши,
Стоїть милий та на порозі,
Шапочку ізнявши.
Шапочку!
Шапочку!
Шапочку ізнявши!

Прости ж мені, та моя мила,
Що ти мене била.
Куплю тобі я цебер меду,
Бутилочку пива.
Бутилочку!
Бутилочку!
Бутилочку пива!

Ой, од пива та болить спина,
А й од меду голова,
Купи мені та горілочки,
Щоб веселая була.
Щоб весела!
Щоб весела!
Щоб веселая була!','[''pisni.org.ua'', ''cat:kubanski'', ''cat:socialno-pobutovi'', ''Кубанські пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_273369'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_273369','Била жінка мужика','Била жінка та мужика,
Та й вигнала з хати,
Присудили та мужику,
Щоб жінку прохати.
Щоб жінку!
Щоб жінку!
Щоб жінку прохати!

Сидить мила та на припічку,
Ніженьки піджавши,
Стоїть милий та на порозі,
Шапочку ізнявши.
Шапочку!
Шапочку!
Шапочку ізнявши!

Прости ж мені, та моя мила,
Що ти мене била.
Куплю тобі я цебер меду,
Бутилочку пива.
Бутилочку!
Бутилочку!
Бутилочку пива!

Ой, од пива та болить спина,
А й од меду голова,
Купи мені та горілочки,
Щоб веселая була.
Щоб весела!
Щоб весела!
Щоб веселая була!');
DELETE FROM song_links WHERE song_id = 'pisniua_273420';
DELETE FROM song_versions WHERE song_id = 'pisniua_273420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_273420';
DELETE FROM songs WHERE id = 'pisniua_273420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_273420','Посіяла баба конопель','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. надіслав Ілля Самойлов',NULL,'Посіяла баба               | (2)
Конопель
Ой, да конопель!

Коно-пель-пель-пель.
Коно-пель-пель-пель.
Коно-пель-пель-пель.
Конопель, ой да конопель.  | (2)

Як туди повадивсь,
Як туди повадивсь,
Як туди повадивсь,
Журавель. Ой да журавель!

Жура-вель-вель-вель,
Жура-вель-вель-вель,
Жура-вель-вель-вель,
Журавель, ой да журавель!   | (2)

Я ж тебе піймаю             | (2)
Журавля, ой, да журавля!

Жура-вля-вля-вля.
Жура-вля-вля-вля.
Жура-вля-вля-вля.
Журавля, ой да журавля.     | (2)

Я ж тебе в кліточку         | (3)
Посадю, ой да посадю.

Поса-дю-дю-дю.
Поса-дю-дю-дю.
Поса-дю-дю-дю.
Посадю , ой да посадю.      | (2)','[''pisni.org.ua'', ''cat:kubanski'', ''Кубанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_273420'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_273420','Посіяла баба конопель','Посіяла баба               | (2)
Конопель
Ой, да конопель!

Коно-пель-пель-пель.
Коно-пель-пель-пель.
Коно-пель-пель-пель.
Конопель, ой да конопель.  | (2)

Як туди повадивсь,
Як туди повадивсь,
Як туди повадивсь,
Журавель. Ой да журавель!

Жура-вель-вель-вель,
Жура-вель-вель-вель,
Жура-вель-вель-вель,
Журавель, ой да журавель!   | (2)

Я ж тебе піймаю             | (2)
Журавля, ой, да журавля!

Жура-вля-вля-вля.
Жура-вля-вля-вля.
Жура-вля-вля-вля.
Журавля, ой да журавля.     | (2)

Я ж тебе в кліточку         | (3)
Посадю, ой да посадю.

Поса-дю-дю-дю.
Поса-дю-дю-дю.
Поса-дю-дю-дю.
Посадю , ой да посадю.      | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_273420_l1','pisniua_273420','YouTube','https://www.youtube.com/watch?v=8GnDoZZ918U','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_273';
DELETE FROM song_versions WHERE song_id = 'pisniua_273';
DELETE FROM songs_fts WHERE song_id = 'pisniua_273';
DELETE FROM songs WHERE id = 'pisniua_273';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_273','Я до леса','Українська народна пісня. Виконує: Ансамбль Львівського Університету "Черемош", Дивні','uk','ukraine_before_1917',NULL,NULL,'Книга "Пісні "Черемоша"','Акорди підібрано на слух за нотами. Тональність оригінальна. Один із використаних акордів: D6 [x 0 0 4 3 2] Підбір акордів: bohdanko (pisni.org.ua)','Я до леса (3) не пiду,
Древко рубаць, древко рубаць,  |
Гей, древко рубаць не буду.    |(2)
Древко би мя (3) забило.
Што би моє шварне дівча,  |
Гей, што би оно робило?   |(2)
Гори наші, (3) Карпати,
Не зміняв би, не зміняв би,  |
Гей, вас на жаднi дукати.    |(2)
Гори наші (3) Бескиди,
Наказали пильнувати,     |
Гей, наші діди-прадіди.  |(2)
Акорди, інший варіант:
C
Я до леса, я до леса,
G
Я до леса не піду,
Древко рубать, древко рубать, |
C          |
Гей, древко рубать не буду.   | (2)','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_273'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_273','Я до леса','Я до леса (3) не пiду,
Древко рубаць, древко рубаць,  |
Гей, древко рубаць не буду.    |(2)
Древко би мя (3) забило.
Што би моє шварне дівча,  |
Гей, што би оно робило?   |(2)
Гори наші, (3) Карпати,
Не зміняв би, не зміняв би,  |
Гей, вас на жаднi дукати.    |(2)
Гори наші (3) Бескиди,
Наказали пильнувати,     |
Гей, наші діди-прадіди.  |(2)
Акорди, інший варіант:
C
Я до леса, я до леса,
G
Я до леса не піду,
Древко рубать, древко рубать, |
C          |
Гей, древко рубать не буду.   | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_273_l1','pisniua_273','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_273573';
DELETE FROM song_versions WHERE song_id = 'pisniua_273573';
DELETE FROM songs_fts WHERE song_id = 'pisniua_273573';
DELETE FROM songs WHERE id = 'pisniua_273573';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_273573','Що на Чорному Морі на Камені Біленькому','(Про Дівку-бранку Марусю-попівну Богуславку)','uk','ukraine_before_1917',NULL,NULL,'Староукраїнські релігійні роздуми про Бога © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Українські реліґійні роздуми про Воскресіння, Неволю і Спасіння. Пісні Великодні — Спасительні: світ не по Правді. Пісні-плачі Сокола-Прадіда. Буде в Тебе Господь на Вечері. Тай Раду радят за Святу Весну. То на Святий Празник Роковий День Велик-День. Ой Ми зіслані на Признаванє. Бездільне Своє та Безрідне Ясне Соколя утеряв. Що у Тій-то Темниці пробувало Сім-сот Козаків. Ой Козаки ви Бідниї Невольники! Божого Світу Сонця праведного у вічи собі не видаєм. Гей на Чорному Морі да на Камені Біленькому Гей що на Чорному Морі та на Тому Білому Камені Що на Чорному Морі на Камені Біленькому Реліґійно-мітологійні видива Спасіння. Подібна до невинної дочки мітичного Коваля з Фінських переказів, ― яка визволяє Небесні світила і тим спасає людей, ― Дівка-бранка Маруся-попівна Богуславка, Український жіночий образ Спасителя. Ця Діва-спасителька є символом Зорі, яка звіщає, ― як на Свят-Вечір, так і перед Великоднем, ― велике Свято, Різдво-Відродження Світа, прихід Господа та Спасіння з Неволі неправди. Козаки Бідні Невольники символізують викрадені й заховані Астральні Світила, Місяць-Нів та Зірки (=діти, соколята)................... Листки з приводу цієї Пісні: Українські реліґійні пісні-роздуми про Неволю та Спасіння. Плач Сокола. Традиції Батька. Коляда і Великдень: Різдво і Відродження Світа. Рокове Коло. Стежки до листків про Українські традиції.','Що на Чорному Морі
На Камені Біленькому
Там стояла Темниця Камяная
Що у Тій-то Темниці пробувало Сім-сот Козаків
Бідних Невольників
То вони Тридцять Літ у Неволі пробувають
Божого Світу Сонця праведного у вічи собі не видають

То до їх Дівка-бранка
Маруся-попівна Богуславка
Прихождає
Словами промовляє
Гей Козаки
Ви Бідниї Невольники!
Угадайте що в нашій землі Християнській за день тепера

Що тоді Бідні Невольники зачували
Дівку-бранку
Марусю-попівну Богуславку
По Річах познавали
Словами промовляли
Гей Дівко-бранко
Марусю-попівно Богуславко
Почім ми можем знати
Що в нашій землі Християнській за день тепера
Що Тридцять Літ у Неволі пробуваєм
Божого Світу Сонця праведного у вічи собі не видаєм
То ми не можемо знати
Що в нашій землі Християнській за день тепера

Тоді Дівка-бранка
Маруся-попівна Богуславка
Теє зачуває
До Козаків Словами промовляє
Ой Козаки
Ви Бідниї Невольники!
Що сьогодня у нашій землі Християнській Великодная  Субота
А завтра Святий Празник Роковий День Велик-День

То Тоді Ті Козаки Теє зачували
Білим лицем до Сирої Землі припадали
Дівку-бранку
Марусю-попівну Богуславку
Кляли-проклинали

Та бодай ти Дівко-бранко
Марусю-попівно Богуславко
Щастя-й-долі собі не мала
Як ти нам Святий Празник Роковий День Велик-День сказала

То тоді Дівка-бранка
Маруся-попівна Богуславка
Теє зачувала
Словами промовляла
Ой Козаки
Ви Бідниї Невольники!
Та не лайте мене не проклинайте
Бо як буде наш пан Турецький до Мечети від''їжджати
То буде мині  Дівці-бранці
Марусі-попівні Богуславці
На руки Ключі віддавати
То буду я до Темниці прихождати
Темницю відмикати
Вас всіх Бідних Невольників на Волю випускати

То на Святий Празник Роковий День Велик-День
Став пан Турецький до Мечети від''їжджати
Став Дівці-бранці
Марусі-попівні Богуславці
На руки Ключі віддавати

Тоді Дівка-бранка
Маруся-попівна Богуславка
Добре дбає
До Темниці прихождає
Темницю відмикає
Всіх Козаків
Бідних Невольників
На Волю випускає
І Словами промовляє
Ой Козаки
Ви Бідниї Невольники!
Кажу я вам Добре дбайте
В городи Християнські утікайте
Тількі прошу я вас одного города Богуслава не минайте
Моєму Батьку-й-матері знати давайте
Та нехай Мій Батько Добре дбає
Грунтів великих маєтків нехай не збуває
Великих скарбів не збірає
Та нехай мене Дівки-бранки
Марусі-попівни Богуславки
Зневолі не викупає
Бо вже я потурчилась-побусурменилась
Для Роскоши Турецької
Для Лакомства Нещасного

Ой визволи Боже нас всіх Бідних Невольників
З Тяжкої Неволі
З Віри Бусурменської
На Ясні Зорі
На Тихі Води
У Край Веселий
У Мир Хрещений!
Вислухай Боже у прозьбах щирих
У нещасних молитвах
Нас бідних невольників!','[''pisni.org.ua'', ''cat:dumy'', ''cat:kozacki'', ''cat:socialno-pobutovi'', ''cat:suspilno-politychni'', ''Думи'', ''Козацькі пісні'', ''Соціально-побутові пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_273573'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_273573','Що на Чорному Морі на Камені Біленькому','Що на Чорному Морі
На Камені Біленькому
Там стояла Темниця Камяная
Що у Тій-то Темниці пробувало Сім-сот Козаків
Бідних Невольників
То вони Тридцять Літ у Неволі пробувають
Божого Світу Сонця праведного у вічи собі не видають

То до їх Дівка-бранка
Маруся-попівна Богуславка
Прихождає
Словами промовляє
Гей Козаки
Ви Бідниї Невольники!
Угадайте що в нашій землі Християнській за день тепера

Що тоді Бідні Невольники зачували
Дівку-бранку
Марусю-попівну Богуславку
По Річах познавали
Словами промовляли
Гей Дівко-бранко
Марусю-попівно Богуславко
Почім ми можем знати
Що в нашій землі Християнській за день тепера
Що Тридцять Літ у Неволі пробуваєм
Божого Світу Сонця праведного у вічи собі не видаєм
То ми не можемо знати
Що в нашій землі Християнській за день тепера

Тоді Дівка-бранка
Маруся-попівна Богуславка
Теє зачуває
До Козаків Словами промовляє
Ой Козаки
Ви Бідниї Невольники!
Що сьогодня у нашій землі Християнській Великодная  Субота
А завтра Святий Празник Роковий День Велик-День

То Тоді Ті Козаки Теє зачували
Білим лицем до Сирої Землі припадали
Дівку-бранку
Марусю-попівну Богуславку
Кляли-проклинали

Та бодай ти Дівко-бранко
Марусю-попівно Богуславко
Щастя-й-долі собі не мала
Як ти нам Святий Празник Роковий День Велик-День сказала

То тоді Дівка-бранка
Маруся-попівна Богуславка
Теє зачувала
Словами промовляла
Ой Козаки
Ви Бідниї Невольники!
Та не лайте мене не проклинайте
Бо як буде наш пан Турецький до Мечети від''їжджати
То буде мині  Дівці-бранці
Марусі-попівні Богуславці
На руки Ключі віддавати
То буду я до Темниці прихождати
Темницю відмикати
Вас всіх Бідних Невольників на Волю випускати

То на Святий Празник Роковий День Велик-День
Став пан Турецький до Мечети від''їжджати
Став Дівці-бранці
Марусі-попівні Богуславці
На руки Ключі віддавати

Тоді Дівка-бранка
Маруся-попівна Богуславка
Добре дбає
До Темниці прихождає
Темницю відмикає
Всіх Козаків
Бідних Невольників
На Волю випускає
І Словами промовляє
Ой Козаки
Ви Бідниї Невольники!
Кажу я вам Добре дбайте
В городи Християнські утікайте
Тількі прошу я вас одного города Богуслава не минайте
Моєму Батьку-й-матері знати давайте
Та нехай Мій Батько Добре дбає
Грунтів великих маєтків нехай не збуває
Великих скарбів не збірає
Та нехай мене Дівки-бранки
Марусі-попівни Богуславки
Зневолі не викупає
Бо вже я потурчилась-побусурменилась
Для Роскоши Турецької
Для Лакомства Нещасного

Ой визволи Боже нас всіх Бідних Невольників
З Тяжкої Неволі
З Віри Бусурменської
На Ясні Зорі
На Тихі Води
У Край Веселий
У Мир Хрещений!
Вислухай Боже у прозьбах щирих
У нещасних молитвах
Нас бідних невольників!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_273573_l1','pisniua_273573','YouTube','https://www.youtube.com/watch?v=ahOwb2JNh7c','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_274022';
DELETE FROM song_versions WHERE song_id = 'pisniua_274022';
DELETE FROM songs_fts WHERE song_id = 'pisniua_274022';
DELETE FROM songs WHERE id = 'pisniua_274022';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_274022','Ей а в Калници на Монастирі',NULL,'uk','ukraine_before_1917',NULL,NULL,'Староукраїнська традиція служби Богу © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Царинна Пісня: Староукраїнські Колядки і Щедрівки ― Царинні Містерії. Рокове Коло. А з Полянойки до Царинойки. Заваруй Боже Гори-й-Долини.','Ей а в Калници на Монастирі
Зорейки зорят Свічейки горят
Дзвонойки дзвонят Службойки стоят

Дзвони Дзвонойку против Сборойку
Бо ми ідеме с Сбором в Дорогу
Бо ми співаме Вшиткі-співанки
Жеби нас Тучи не заходили
Жеби пролої не заливали
Заваруй Боже Гори-й-Долини
Гори-й-Долини Наші Царини','[''pisni.org.ua'', ''cat:zeleni-svyata'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_274022'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_274022','Ей а в Калници на Монастирі','Ей а в Калници на Монастирі
Зорейки зорят Свічейки горят
Дзвонойки дзвонят Службойки стоят

Дзвони Дзвонойку против Сборойку
Бо ми ідеме с Сбором в Дорогу
Бо ми співаме Вшиткі-співанки
Жеби нас Тучи не заходили
Жеби пролої не заливали
Заваруй Боже Гори-й-Долини
Гори-й-Долини Наші Царини');
DELETE FROM song_links WHERE song_id = 'pisniua_276124';
DELETE FROM song_versions WHERE song_id = 'pisniua_276124';
DELETE FROM songs_fts WHERE song_id = 'pisniua_276124';
DELETE FROM songs WHERE id = 'pisniua_276124';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_276124','Господи помилуй','Музика: Василь Жданкін Слова: Василь Жданкін. Виконує: Василь Жданкін','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У очах - печаль, на плечах - сума,
В рідній стороні місця нам нема.

Нашої землі - лиш по цвинтарах,
Нашого життя - в німця батрака.

Наші дівоньки - в турка хоромах,
Наші старики - ген, по смітниках.

Щедро родить хліб - наш багатий край,
А зав''яжеш сніп - жидові оддай.

Робим задарма, п''єм закрадене,
Отаке життя наше праведне.

Возлюбили ми демократію:
Як же прокормить всю ту братію?

Стали врешті ми українцями,
Тільки не зведем кінці з кінцями.

На своє життя нарікаємо,
Тяжкії гріхи забуваємо.

І з більшовиком цілувалися,
Над Святим Хрестом поглумлялися.
Господи помилуй...

Розорили Русь, Русь державную,
Церков розп''яли православную.
Господи помилуй...

Оддали царя на закланіє,
Нечистим жидам в поруганіє.
Господи помилуй...

Хлібчиком святим розкидалися,
Божіїм церквам не вклонялися.
Господи помилуй...

Душі - без Христа, тіло - без поста,
Європейський рай - в пекло путь проста.
Господи помилуй...

У очах - печаль, на плечах - сума,
В царстві божому місця нам нема.
Господи помилуй...','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_276124'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_276124','Господи помилуй','У очах - печаль, на плечах - сума,
В рідній стороні місця нам нема.

Нашої землі - лиш по цвинтарах,
Нашого життя - в німця батрака.

Наші дівоньки - в турка хоромах,
Наші старики - ген, по смітниках.

Щедро родить хліб - наш багатий край,
А зав''яжеш сніп - жидові оддай.

Робим задарма, п''єм закрадене,
Отаке життя наше праведне.

Возлюбили ми демократію:
Як же прокормить всю ту братію?

Стали врешті ми українцями,
Тільки не зведем кінці з кінцями.

На своє життя нарікаємо,
Тяжкії гріхи забуваємо.

І з більшовиком цілувалися,
Над Святим Хрестом поглумлялися.
Господи помилуй...

Розорили Русь, Русь державную,
Церков розп''яли православную.
Господи помилуй...

Оддали царя на закланіє,
Нечистим жидам в поруганіє.
Господи помилуй...

Хлібчиком святим розкидалися,
Божіїм церквам не вклонялися.
Господи помилуй...

Душі - без Христа, тіло - без поста,
Європейський рай - в пекло путь проста.
Господи помилуй...

У очах - печаль, на плечах - сума,
В царстві божому місця нам нема.
Господи помилуй...');
DELETE FROM song_links WHERE song_id = 'pisniua_275614';
DELETE FROM song_versions WHERE song_id = 'pisniua_275614';
DELETE FROM songs_fts WHERE song_id = 'pisniua_275614';
DELETE FROM songs WHERE id = 'pisniua_275614';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_275614','Гомін гомін гомін по діброві','Виконує: Гуртоправці, Тарас Компаніченко','uk','ukraine_before_1917',NULL,NULL,'Українські релігійні роздуми про Спасіння © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003','Українські реліґійні роздуми про Воскресіння, Неволю і Спасіння. Пісні Великодні — Спасительні: світ не по Правді. Пісні-плачі Сокола-Прадіда. Алегорія неволі сокола. Мене Орда знає в Чистім Полі обминає — поки були в Чистому Полі (=Правдивий простір), то й обминали, напасти навіть не зважувалися (ідея самоохорони вища від ідеї самооборони). Мене й Ляхи знають... — тепер же стали брати і всі знають, що беруть, із-за того й пропали? Катерина ІІ: В 1785 укр. козацьку старшину було зрівняно в правах з рос. дворянством. М. Гоголь: Чего же вы хотите? Галагани (Ґалаґани)... Носи... Буде валюта, але вже вакансій платні не буде... (М. Грушевський — Ф. Колессі) — Застав я тут дуже важний лист від акад. Грушевського, в якому він повідомляє, що Нарком. Просв. затвердив вибір нових академіків, в тім числі Возняка, Щурата і мій; інформаційну статтю про мене написала К. Грушевська. Сими днями маємо одержати офіціальне повідомлення Академії з запитом, чи маємо замір переїхати до Києва. Грушевський радить по приятельськи дати позитивну відповідь з отсих мотивів (цитую дослівно): а) "Коли Ви тепер заявите, що не збираєтесь переїхати до Київа, то платні не дістанете майже певно, а коли не дістанете тепер, то й пізніш, коли б Ви заявили, що хочете переїхати, дістати було б трудно; б) тепер Нарком Освіти не має валюти для закордонних, тому може виплачувати тільки в радянській валюті, і тому не береться виплачувати нікому, хто не хоче переїхати, може, потім і буде валюта, але вже вакансій платні не буде; в) мешкати постійно не будуть вимагати, фактично Ви зможете переїздити раз або два на рік на кілька місяців, і се бажано і для Вас і для праці**, ― [**прим. автора: Я думаю, що й мені не відмовлять тут власти дозволу раз або два рази в році поїхати до Києва, щоби взяти безпосередню участь у працях Академії Наук], ― оплачувати ж приїздів сих не зможуть инакше, тільки в формі платні; г) мати платню в радян[ській] валюті все таки краще, ніж ніякої, ― коли не Вам сі гроші придадуться в цілости, то, може, кому з Ваших дітей (се важне особливо для Возняка) ― може, хто з них схоче переїхати сюди для праці. От з тих причин раджу відповісти позитивно; перекажіть сі мої гадки і проф. Возняку". А десь ми поверх всякої міри гріха набрали. Да ще ж хотілось швидше здобичі набірати. Ой Ми зіслані на Признаванє. Бездільне Своє та Безрідне Ясне Соколя утеряв. Вернись вернись сину до Домоньку. Гомін гомін гомін по діброві Гомін гомін гомін по діброві (2) Гомін гомін гомін гомін по діброві Гомін мати гомін мати по діброві Господа Милосердного прохали та благали. А вже років триста як козак в неволі Листки з приводу цієї Пісні: Українські реліґійні пісні-роздуми про Неволю та Спасіння. Плач Сокола. Традиції Батька. Алегорія неволі сокола. Коляда і Великдень: Різдво і Відродження Світа. Рокове Коло. Стежки до листків про Українські традиції. Староукраїнські Колядки і Щедрівки: Святе Різдво (Свято Різдва Світа: Свят-Вечір – Коляда)... Щедрий Вечір (Свято Місяця й Прадіда: Новий Рік ― Святі Водорщі) ― Весілля: Дівич-Вечір... Великдень... Зелені Свята (Трійця) ― Царинні Містерії... Івана Купала... Астральні Жнива... Рокове Коло. Староукраїнська культура й реліґія приявлюється в давніх передхристиянських святах — реліґійних, господарських і побутових, що досі тривають в Українського народу в зв''язаних зі Святочними часами народних піснях і в уривках давніх обрядів. Хоч зараз велика частина Українського народу, — особливо нове покоління, що виросло на повоєнних руїнах, — не здає собі справи з провідних думок цих Свят, але інтуіційно відчуває повагу і святість давніх традицій. І все-таки увесь нарід держиться досі старовіцьких Святочних звичаїв і поведінок. Сю інтуіційну свідомість чогось величного й Святого, переказаного предками і зв''язаного зі старовіцькими обрядами, піддержують злучені з Святочним часом пісні, — ось як: Колядки, Щедрівки, Гаївки і т. д., — і в них-то найбільше міститься народних традицій, як реліґійних, так господарських і суспільних, поданих у мітичному вигляді....Відтворити з тих традицій образ давньої Української віри і культури. Ця віра триває досі, хоч не є висловлена догматично, а давня Українська культура є в основах сучасного життя народу. Нарід жиє старими ідеями — а інтеліґенція народна переходить над ними до порядку денного, не здаючи собі справи з їх культурної ціни і сили, не розуміючи психіки народу і будучи в постійній з ним дисгармонії; не цінить культурного давнього дорібку, який мав колись свою стійність і міг би бути вихіснуваним і сьогодня, хоч інші зараз життєві й культурні обставини й поняття. (Кс. Сосенко)','Гомін гомін
Гомін по діброві
Туман поле покриває
Гей туман поле
Поле покриває
Мати сина проганяє

Гей туман поле
Поле покриває
Мати сина проганяє

Іди синку
Іди пріч од мене
Нехай тебе орда візьме
Гей мене мамо
Мене Орда знає
В Чистім Полі обминає

Гей мене мамо
Мене Орда знає
В Чистім Полі обминає

Іди синку
Іди пріч од мене
Нехай тебе Турчин візьме
Гей мене мамо
Мене Турчин знає
Сріблом-злотом наділяє

Гей мене мамо
Мене Турчин знає
Сріблом-злотом наділяє

Іди синку
Іди пріч од мене
Нехай тебе Ляхи візьмуть
Гей мене мамо
Мене Ляхи знають
Пивом-медом напувають

Гей мене мамо
Мене й Ляхи знають
Пивом-медом напувають

Іди синку
Іди пріч од мене
Нехай тебе Москаль візьме
Гей мене мамо
Мене й Москаль знає
Жить під себе підбиває

Гей мене мамо
Мене й Москаль знає
Жить під себе підбиває

Вернись вернись сину до Домоньку
Змию тобі голівоньку
Гей мені мамо
Мені змиють дощі
А розчешуть густі терна

Гей мені мамо
Мені змиють дощі
А розвіють буйні вітри    Спів (mp3)  (
Фонограма-мінус (mp3)','[''pisni.org.ua'', ''cat:dumy'', ''cat:kozacki'', ''cat:philosophic'', ''cat:socialno-pobutovi'', ''cat:suspilno-politychni'', ''Думи'', ''Козацькі пісні'', ''Філософські пісні'', ''Соціально-побутові пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_275614'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_275614','Гомін гомін гомін по діброві','Гомін гомін
Гомін по діброві
Туман поле покриває
Гей туман поле
Поле покриває
Мати сина проганяє

Гей туман поле
Поле покриває
Мати сина проганяє

Іди синку
Іди пріч од мене
Нехай тебе орда візьме
Гей мене мамо
Мене Орда знає
В Чистім Полі обминає

Гей мене мамо
Мене Орда знає
В Чистім Полі обминає

Іди синку
Іди пріч од мене
Нехай тебе Турчин візьме
Гей мене мамо
Мене Турчин знає
Сріблом-злотом наділяє

Гей мене мамо
Мене Турчин знає
Сріблом-злотом наділяє

Іди синку
Іди пріч од мене
Нехай тебе Ляхи візьмуть
Гей мене мамо
Мене Ляхи знають
Пивом-медом напувають

Гей мене мамо
Мене й Ляхи знають
Пивом-медом напувають

Іди синку
Іди пріч од мене
Нехай тебе Москаль візьме
Гей мене мамо
Мене й Москаль знає
Жить під себе підбиває

Гей мене мамо
Мене й Москаль знає
Жить під себе підбиває

Вернись вернись сину до Домоньку
Змию тобі голівоньку
Гей мені мамо
Мені змиють дощі
А розчешуть густі терна

Гей мені мамо
Мені змиють дощі
А розвіють буйні вітри    Спів (mp3)  (
Фонограма-мінус (mp3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_275614_l1','pisniua_275614','YouTube','https://www.youtube.com/watch?v=xuL5n_7KAX8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_275614_l2','pisniua_275614','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_275292';
DELETE FROM song_versions WHERE song_id = 'pisniua_275292';
DELETE FROM songs_fts WHERE song_id = 'pisniua_275292';
DELETE FROM songs WHERE id = 'pisniua_275292';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_275292','Сонко-Дрімко','(Пізня вже годинка). Музика: Алла Мігай Слова: Наталя Кулик. Виконує: Росава, Ольга Токар','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Пізня вже годинка,
Чом не спиш, дитинко?
Он твоя матуся
Кличе Сонька-Дрімка

На котячих лапках
Сонько-Дрімко ходить.
Каже він малятам:
"Пустувати годі!"
Гра закінчилась,
Матінка втомилась
В ліжко лягай,
Швидше засинай.

Сонько-Дрімко носить
Всім, хто лиш попросить,
В кошику лозовім
Казочки чудові.
Принесе співанку,
Тиху колисанку.
Хто її послуха —
Спатиме до ранку.

Синку маленький, донечко рідненька
Нічка прийшла, спатоньки пора.

А-а-а-а...
Завтра Сонько-Дрімко
Прийде в кожну хату.
Знову наших діток
Буде колисати','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_275292'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_275292','Сонко-Дрімко','Пізня вже годинка,
Чом не спиш, дитинко?
Он твоя матуся
Кличе Сонька-Дрімка

На котячих лапках
Сонько-Дрімко ходить.
Каже він малятам:
"Пустувати годі!"
Гра закінчилась,
Матінка втомилась
В ліжко лягай,
Швидше засинай.

Сонько-Дрімко носить
Всім, хто лиш попросить,
В кошику лозовім
Казочки чудові.
Принесе співанку,
Тиху колисанку.
Хто її послуха —
Спатиме до ранку.

Синку маленький, донечко рідненька
Нічка прийшла, спатоньки пора.

А-а-а-а...
Завтра Сонько-Дрімко
Прийде в кожну хату.
Знову наших діток
Буде колисати');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_275292_l1','pisniua_275292','YouTube','https://www.youtube.com/watch?v=aRXkjZ3YzFA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_275292_l2','pisniua_275292','YouTube','https://www.youtube.com/watch?v=jOEk1-u7qUQ','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_275292_l3','pisniua_275292','YouTube','https://www.youtube.com/watch?v=4ZMGJEnK2ok','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_275292_l4','pisniua_275292','YouTube','https://www.youtube.com/watch?v=m07IsxAE5h8','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_273665';
DELETE FROM song_versions WHERE song_id = 'pisniua_273665';
DELETE FROM songs_fts WHERE song_id = 'pisniua_273665';
DELETE FROM songs WHERE id = 'pisniua_273665';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_273665','Ой на Чорному Морі на Білому Камені','(Про Бурю та Вітцеву-Матчину Молитву). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські релігійні роздуми про Спасіння © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003','Українські реліґійні роздуми про Воскресіння, Неволю і Спасіння. Пісні Великодні — Спасительні: світ не по Правді. Пісні-плачі Сокола-Прадіда. Бездільне Своє та Безрідне Ясне Соколя утеряв. Бездільний-безрідний і Безпомощний потопає. А десь ми поверх всякої міри гріха набрали. То од Отця-од-Матки Прощения не приймали. А єсть це нас Отцева-та-матчина Молитва покарала. На Святому Небі усі Звізди потьмарило. Рокове Коло. Стежки до листків про Українські традиції.','Ой на Чорному Морі / на Білому Камені
Ой то Там сидить Ясен Сокіл-Білозірець
Низенько голову склонив
Та жалібно квилить-проквиляє
Та на Святеє Небо / на Чорнеє Море
Іспильно поглядає
Що на Сьвятому Небі / на Чорному Морі
Негаразд починає

На Святому Небі усі Звізди потьмарило
Половина Місяця у Тьму уступило
На Чорному Морі Негаразд починає
Ізодна Моря сильно Хвиля вставає
Судна Козацькі-молодецькі на Три Части розбиває
Перву часть одбивало / у Тихий Дунай заношало
Другую часть одбивало / у Землю Грабськую
На Катергу Турецьку заношало
Третю часть одбивало / да на Чорному Морі затопляло

То тоже при тий части Два Братіки Рідненькі
Як Голубоньки Сивенькі
То вони потопали
Порятунку собі нівідкіля не мали
Да вони один до одного припливали
Словами промовляли / гірко ридали
Прощения домогали
Перед Господом Милосердним гріхи свої сповідали

Ой между ними
Третій Чужий-чужениця
Бездільний-безрідний і Безпомощний потопає
Порятунку собі нівідкіль не має
То Він до їх припливає
Словами промовляє / гірко сльозами ридає
Прощения домогає
Перед Господом Милосердним
Гріхи свої сповідає

Тоті Брати промовлять Словами
Обіллються гірко сльозами
Се-ж то нас Браття не Сильна Морська Хвиля затопляє
Се то Отцева Молитва і Материна
Нас видимо карає

Що як ми у Охотне військо виряжалися
То од Отця-од-Матки Прощения не приймали
Да Старую Матусю ми од себе а й стременами одпихали

То то-же ми собі превелику гордость мали
Старшого Брата у себе за Брата не мали
Сестру Середульшу марне зневажали
Близькому Сусіді Хліба-і-солі ізбавляли

То-же ми собі превелику гордость мали
Проти Божих церков їжджали
Шличків із голов не здиймали
На своє лице Хреста не клали
Милосердного Творця на поміч не призивали

Да по улицях кіньми вигравали
Да проти себе нікого не стрічали
Діток малих кіньми розбивали
Кров християньску на сиру землю проливали

Ей колиб то нас Браття могла Отцева-і-Матчина Молитва відсіля визволяти
То нехай же-б ми могли вже знати
Як Отцеву-і-Матчину Молитву штити-поважати
І Старшого Брата за Рідного Батька мати
Сестру Середульшую штити-поважати
Близького Сусіду у себе за Рідного Брата мати

То як стали Словами промовляти
Отцеву-і-Матчину Молитву споминати
Став Господь Милосердний їм помагати
Стало Чорне Море утихати
Та так-то утихало
Ніби не гуляло

То стали ті Два Брати к Берегу припливати
Стали за Білий Камінь рученьками брати
Да на Край вихожати
На Край Веселий
Между Мир Хрещений
У города християньскиї

Та до Отця-до-Матки в Гості прибувати
То тоже Отець-Мати навпроти Синів вихожали
Синів питали
Ой Сини Пани-Молодці
Чи Добре вам у Дорозі починало
Добре Отець-і-Мати нам було на Чорному Морі гуляти
Тільки Недобре було Отець-і-Мати
Чужому-чужениці на Чорному Морі потопати
Йому Прощения ні од кого приняти
І на Чужині Порятунку дати

Да услиши Господи у прозьбах у молитвах
Люду царському / народу християнському
І усім головам слухащим
На Многая Літа
До Конця Віка!','[''pisni.org.ua'', ''cat:dumy'', ''cat:kozacki'', ''cat:socialno-pobutovi'', ''Думи'', ''Козацькі пісні'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_273665'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_273665','Ой на Чорному Морі на Білому Камені','Ой на Чорному Морі / на Білому Камені
Ой то Там сидить Ясен Сокіл-Білозірець
Низенько голову склонив
Та жалібно квилить-проквиляє
Та на Святеє Небо / на Чорнеє Море
Іспильно поглядає
Що на Сьвятому Небі / на Чорному Морі
Негаразд починає

На Святому Небі усі Звізди потьмарило
Половина Місяця у Тьму уступило
На Чорному Морі Негаразд починає
Ізодна Моря сильно Хвиля вставає
Судна Козацькі-молодецькі на Три Части розбиває
Перву часть одбивало / у Тихий Дунай заношало
Другую часть одбивало / у Землю Грабськую
На Катергу Турецьку заношало
Третю часть одбивало / да на Чорному Морі затопляло

То тоже при тий части Два Братіки Рідненькі
Як Голубоньки Сивенькі
То вони потопали
Порятунку собі нівідкіля не мали
Да вони один до одного припливали
Словами промовляли / гірко ридали
Прощения домогали
Перед Господом Милосердним гріхи свої сповідали

Ой между ними
Третій Чужий-чужениця
Бездільний-безрідний і Безпомощний потопає
Порятунку собі нівідкіль не має
То Він до їх припливає
Словами промовляє / гірко сльозами ридає
Прощения домогає
Перед Господом Милосердним
Гріхи свої сповідає

Тоті Брати промовлять Словами
Обіллються гірко сльозами
Се-ж то нас Браття не Сильна Морська Хвиля затопляє
Се то Отцева Молитва і Материна
Нас видимо карає

Що як ми у Охотне військо виряжалися
То од Отця-од-Матки Прощения не приймали
Да Старую Матусю ми од себе а й стременами одпихали

То то-же ми собі превелику гордость мали
Старшого Брата у себе за Брата не мали
Сестру Середульшу марне зневажали
Близькому Сусіді Хліба-і-солі ізбавляли

То-же ми собі превелику гордость мали
Проти Божих церков їжджали
Шличків із голов не здиймали
На своє лице Хреста не клали
Милосердного Творця на поміч не призивали

Да по улицях кіньми вигравали
Да проти себе нікого не стрічали
Діток малих кіньми розбивали
Кров християньску на сиру землю проливали

Ей колиб то нас Браття могла Отцева-і-Матчина Молитва відсіля визволяти
То нехай же-б ми могли вже знати
Як Отцеву-і-Матчину Молитву штити-поважати
І Старшого Брата за Рідного Батька мати
Сестру Середульшую штити-поважати
Близького Сусіду у себе за Рідного Брата мати

То як стали Словами промовляти
Отцеву-і-Матчину Молитву споминати
Став Господь Милосердний їм помагати
Стало Чорне Море утихати
Та так-то утихало
Ніби не гуляло

То стали ті Два Брати к Берегу припливати
Стали за Білий Камінь рученьками брати
Да на Край вихожати
На Край Веселий
Между Мир Хрещений
У города християньскиї

Та до Отця-до-Матки в Гості прибувати
То тоже Отець-Мати навпроти Синів вихожали
Синів питали
Ой Сини Пани-Молодці
Чи Добре вам у Дорозі починало
Добре Отець-і-Мати нам було на Чорному Морі гуляти
Тільки Недобре було Отець-і-Мати
Чужому-чужениці на Чорному Морі потопати
Йому Прощения ні од кого приняти
І на Чужині Порятунку дати

Да услиши Господи у прозьбах у молитвах
Люду царському / народу християнському
І усім головам слухащим
На Многая Літа
До Конця Віка!');
DELETE FROM song_links WHERE song_id = 'pisniua_274010';
DELETE FROM song_versions WHERE song_id = 'pisniua_274010';
DELETE FROM songs_fts WHERE song_id = 'pisniua_274010';
DELETE FROM songs WHERE id = 'pisniua_274010';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_274010','Сбором ідеме Полон несеме (2)',NULL,'uk','ukraine_before_1917',NULL,NULL,'Староукраїнська традиція служби Богу © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Царинна Пісня: Староукраїнські Колядки і Щедрівки ― Царинні Містерії. Рокове Коло. Цю Колядку співають як Пісню Царинну в часі походу в поле в Літі (вертаючись назад), на благословення поля, на Лемківщині. Гл. Ей Горе Горе сам тя Бог оре. А з Полянойки до Царинойки. Оборонь Боже Гори-Долини.','Сбором ідеме Полон несеме
Мольме ся Богу і всі посполу
Жеби нас Тучі не заходили
Злиї Вітрове не пановали

Оборонь Боже Гори-Долини
Гори-Долини Наші Царини
Прийми Божейку Труд-Дорожейку
Же ме обійшли Гори-Долини
Гори-Долини Наші Царини!','[''pisni.org.ua'', ''cat:zeleni-svyata'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_274010'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_274010','Сбором ідеме Полон несеме (2)','Сбором ідеме Полон несеме
Мольме ся Богу і всі посполу
Жеби нас Тучі не заходили
Злиї Вітрове не пановали

Оборонь Боже Гори-Долини
Гори-Долини Наші Царини
Прийми Божейку Труд-Дорожейку
Же ме обійшли Гори-Долини
Гори-Долини Наші Царини!');
DELETE FROM song_links WHERE song_id = 'pisniua_27414';
DELETE FROM song_versions WHERE song_id = 'pisniua_27414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_27414';
DELETE FROM songs WHERE id = 'pisniua_27414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_27414','Вийди, змучена людьми','Музика: Кому Вниз Слова: Олександр Олесь. Виконує: Кому Вниз','uk','ukraine_1991',NULL,NULL,'http://songoftheheart.iatp.org.ua/',NULL,'С           Gm
Вийди, змучена людьми
І одурена думками,
Снами, мріями, казками,-
В лісі будем тільки ми.
В лісі дзвонять солов''ї,
Виливають щастя в звуки,
Виливають в звуки муки
C
Світові...

Вийди! Я нарву квіток
І встелю тобі дорогу
Як улюбленій, - як Богу,
Бо єдиний ти мій бог.
Вийди, в муках каяття
Я обмиюсь сліз дощами
І терновими кущами
Я ще раз пройду життя.
Стану я в своїй крові
C
Наче голуб білий стану
І розкрию свою рану,
В рані - рани світові.

І коли б уста твої
Не скривилися в прокльони,
В мене в серці вдарять дзвони,
Заспівають солов''ї.
З небом, з Богом я зіллюсь,
Сяйвом Вишнього з тобою,-
Кожний нерв зроблю струною,
Сам я арфою зроблюсь.
Як блаженний, я піду
Вгору кручами, ярами;
Буду ставить тобі храми,
Доки в небо не ввійду.','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_27414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_27414','Вийди, змучена людьми','С           Gm
Вийди, змучена людьми
І одурена думками,
Снами, мріями, казками,-
В лісі будем тільки ми.
В лісі дзвонять солов''ї,
Виливають щастя в звуки,
Виливають в звуки муки
C
Світові...

Вийди! Я нарву квіток
І встелю тобі дорогу
Як улюбленій, - як Богу,
Бо єдиний ти мій бог.
Вийди, в муках каяття
Я обмиюсь сліз дощами
І терновими кущами
Я ще раз пройду життя.
Стану я в своїй крові
C
Наче голуб білий стану
І розкрию свою рану,
В рані - рани світові.

І коли б уста твої
Не скривилися в прокльони,
В мене в серці вдарять дзвони,
Заспівають солов''ї.
З небом, з Богом я зіллюсь,
Сяйвом Вишнього з тобою,-
Кожний нерв зроблю струною,
Сам я арфою зроблюсь.
Як блаженний, я піду
Вгору кручами, ярами;
Буду ставить тобі храми,
Доки в небо не ввійду.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27414_l1','pisniua_27414','YouTube','https://www.youtube.com/watch?v=P6IoWCWQ3X0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27414_l2','pisniua_27414','YouTube','https://www.youtube.com/watch?v=l3UtWrrDgLU','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27414_l3','pisniua_27414','YouTube','https://www.youtube.com/watch?v=TmEx1fvgrTM','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27414_l4','pisniua_27414','YouTube','https://www.youtube.com/watch?v=v9Z8QhXoHZU','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_274313';
DELETE FROM song_versions WHERE song_id = 'pisniua_274313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_274313';
DELETE FROM songs WHERE id = 'pisniua_274313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_274313','Ой по потребі по потребі барзе царській','(Козацький Плач: про Хведора Бездольного-безродного)','uk','ukraine_before_1917',NULL,NULL,'Українські релігійні роздуми про Спасіння © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003','Українські реліґійні роздуми про Воскресіння, Неволю і Спасіння. Пісні Великодні — Спасительні: світ не по Правді. Пісні-плачі Сокола-Прадіда. Ой Ми зіслані на Признаванє. Ой же ж Добре ти учини. Да Премудрому Лицарю Славу учинили. Рокове Коло. Стежки до листків про Українські традиції.','Ой по потребі по потребі барзе царській
До там-то много війська гей понажено
Да через мечу положено
Да й ні єдиного тіла козацького молодецького
Живого не оставлено
Тільки поміжду тим трупом Хведор Бездольний
Посічений да порубаний
Дай на рани смертельниї не змагає
А коло його Джура Ярема гей промешкає!

До Хведор Бездольний-безродний гей
Промовляє Словами
Да обіллється горко Сльозами

Гей Джуро Яремо
До дарую я тобі по Смерті своєї
Коня Вороного
Ей а другого Білогривого
І Тягеля Червониї
Од піл до коміра Золотом гаптовані
І Шаблю Булатную
Пищаль Семип''ядную!

Ой да Добре ж ти дбай
Да на Коня сідай
Да передо мною повертай
Да нехай я буду знати
Ай чи удобен ти будеш проміждо Козаками пробувати

До Джура Ярема ой да Добре дбає
Да на Коня сідає
Ой да перед ним повертає
До Хведор Бездольний-безродний
Ей да промовляє Словами
Да обіллється горко Сльозами

Ой да благодарю ж Тебе Господа Милосердного
Ой що не ледай кому
Гей моя Худоба буде доставати
До він буде за мене Господа Милосердного прохати

Ей Джуро Яремо
Да Добре ж ти дбай
Да на Коня сідай
Да їдь понад Лугом-Базалугом
Та понад Дніпром-Славутою
До як Ушкала гудуть ей до ти схоронися
А як Лебеді ячать ей до ти озовися
А як Козаки йдуть Дніпром-Славутою
Ой до ти об''явися
Да Шличок на Копію іскладай
Ой да сам низенько укланяй
Наперед Господу Богу
І Батькові Кошовому
Отаману Войськовому
І Всьому Товариству Кревному-сердешному

Ой Добре же то він дбає
Ой да на Коня сідає
Да понад Лугом-Базалугом проїжджає
Понад Дніпром-Славутою
Ей да Козаків стрічає
Да Шличок на Копію складає
А сам низько укланяє
Наперед Господу Богу і Батькові Кошовому
Отаману Войськовому
І Всьому Товариству Кревному-й-сердешному

До-то Батько Кошовий
Отаман Войськовий
Промовляє словами
Ей Джуро Яремо!
Да не своїми ж ти Кіньми гуляєш
І не свої Тягеля Червониї
Од піл до коміра Золотом гаптовані
І не свою Шаблю Булатную
Не свою Пищаль Семип''ядну маєш
А десь ти свого Пана убив або істребив
Або ж ти молодого душі ізбавив

Ой Батьку Кошовий
Отамане Войськовий
Я свого Пана ані вбив ні стребив
Ані молодого душі я не збавив
А мій Пан лежить у Лузі-в-Базалузі
Постріляний да порубаний
І на рани смертельні не змагає
Да прошу я вас всенижающе
У Луг-Базалуг прибувати
Ой да тіло козацьке молодецькеє поховати
Да звіру-птиці на поталу не дати!

До-то Батько Кошовий
Отаман Войськовий
Да Добре він дбав
Да в Суботу із Семисот П''ятдесят Козаків вибирав
Да в Суботу проти Неділі
У Четвертій Полуношній Годині
У Луг-Базалуг Козаків висилав

Ой до вони прибували
Да тіло козацькеє знаходжали
На Червону Китайку клали
Тіло козацьке молодецьке обмивали
А шаблями суходол копали
А шапками да приполами перст носили
Да Високу Могилу висипали
І Прапірок у головах ей устромили
Да Премудрому Лицарю Славу учинили
А тим його поминали
Що в себе мали
Цвіленькими войськовими сухарями!

Услиши Господи у просьбах у молитвах
Люду царському
Народу християнському
І всім головам слухающим
Вот на Многії Літа
До Конця Віка
До Конця Віка!','[''pisni.org.ua'', ''cat:dumy'', ''cat:kozacki'', ''Думи'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_274313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_274313','Ой по потребі по потребі барзе царській','Ой по потребі по потребі барзе царській
До там-то много війська гей понажено
Да через мечу положено
Да й ні єдиного тіла козацького молодецького
Живого не оставлено
Тільки поміжду тим трупом Хведор Бездольний
Посічений да порубаний
Дай на рани смертельниї не змагає
А коло його Джура Ярема гей промешкає!

До Хведор Бездольний-безродний гей
Промовляє Словами
Да обіллється горко Сльозами

Гей Джуро Яремо
До дарую я тобі по Смерті своєї
Коня Вороного
Ей а другого Білогривого
І Тягеля Червониї
Од піл до коміра Золотом гаптовані
І Шаблю Булатную
Пищаль Семип''ядную!

Ой да Добре ж ти дбай
Да на Коня сідай
Да передо мною повертай
Да нехай я буду знати
Ай чи удобен ти будеш проміждо Козаками пробувати

До Джура Ярема ой да Добре дбає
Да на Коня сідає
Ой да перед ним повертає
До Хведор Бездольний-безродний
Ей да промовляє Словами
Да обіллється горко Сльозами

Ой да благодарю ж Тебе Господа Милосердного
Ой що не ледай кому
Гей моя Худоба буде доставати
До він буде за мене Господа Милосердного прохати

Ей Джуро Яремо
Да Добре ж ти дбай
Да на Коня сідай
Да їдь понад Лугом-Базалугом
Та понад Дніпром-Славутою
До як Ушкала гудуть ей до ти схоронися
А як Лебеді ячать ей до ти озовися
А як Козаки йдуть Дніпром-Славутою
Ой до ти об''явися
Да Шличок на Копію іскладай
Ой да сам низенько укланяй
Наперед Господу Богу
І Батькові Кошовому
Отаману Войськовому
І Всьому Товариству Кревному-сердешному

Ой Добре же то він дбає
Ой да на Коня сідає
Да понад Лугом-Базалугом проїжджає
Понад Дніпром-Славутою
Ей да Козаків стрічає
Да Шличок на Копію складає
А сам низько укланяє
Наперед Господу Богу і Батькові Кошовому
Отаману Войськовому
І Всьому Товариству Кревному-й-сердешному

До-то Батько Кошовий
Отаман Войськовий
Промовляє словами
Ей Джуро Яремо!
Да не своїми ж ти Кіньми гуляєш
І не свої Тягеля Червониї
Од піл до коміра Золотом гаптовані
І не свою Шаблю Булатную
Не свою Пищаль Семип''ядну маєш
А десь ти свого Пана убив або істребив
Або ж ти молодого душі ізбавив

Ой Батьку Кошовий
Отамане Войськовий
Я свого Пана ані вбив ні стребив
Ані молодого душі я не збавив
А мій Пан лежить у Лузі-в-Базалузі
Постріляний да порубаний
І на рани смертельні не змагає
Да прошу я вас всенижающе
У Луг-Базалуг прибувати
Ой да тіло козацьке молодецькеє поховати
Да звіру-птиці на поталу не дати!

До-то Батько Кошовий
Отаман Войськовий
Да Добре він дбав
Да в Суботу із Семисот П''ятдесят Козаків вибирав
Да в Суботу проти Неділі
У Четвертій Полуношній Годині
У Луг-Базалуг Козаків висилав

Ой до вони прибували
Да тіло козацькеє знаходжали
На Червону Китайку клали
Тіло козацьке молодецьке обмивали
А шаблями суходол копали
А шапками да приполами перст носили
Да Високу Могилу висипали
І Прапірок у головах ей устромили
Да Премудрому Лицарю Славу учинили
А тим його поминали
Що в себе мали
Цвіленькими войськовими сухарями!

Услиши Господи у просьбах у молитвах
Люду царському
Народу християнському
І всім головам слухающим
Вот на Многії Літа
До Конця Віка
До Конця Віка!');
DELETE FROM song_links WHERE song_id = 'pisniua_273961';
DELETE FROM song_versions WHERE song_id = 'pisniua_273961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_273961';
DELETE FROM songs WHERE id = 'pisniua_273961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_273961','Гей на Великдень на Славний День',NULL,'uk','ukraine_before_1917',NULL,NULL,'Староукраїнська традиція служби Богу © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2004','Царинна Пісня: Староукраїнські Колядки і Щедрівки... Коляда і Великдень ― Царинні Містерії. Рокове Коло. А з Полянойки до Царинойки. Чей би ся прияло Зелене Вино. Листки з приводу цієї пісні: Світові аналогії: традиції Різдва і Збору. Українські Містерії в часі повного розвитку Весни. Що означає Святий Збір? Містика Астральних Жнив. На Великдень Коляда!','Гей на Великдень на Славний День
Садило Дівча Зелене Вино
Садило-садило Богу ся молило
Спусти Божейку Чорну Хмаройку
Чорну Хмаройку Дрібного Дожджу
Чей би ся прияло Зелене Вино
Ей Вино ж Моє Зеленейкоє!

Прийшов до неї Татцейко Єї
Дай ми Дівойко хоть Галузь Вина
Або дармо дай або ми продай
Ні дармо не дам ані не продам
Бо Моє Вино Барз-дорогоє
Барз-дорогоє Непочатоє

Гей на Великдень на Славний День
Садило Дівча Зелене Вино
Садило-садило Богу ся молило
Спусти Божейку Чорну Хмаройку
Чорну Хмаройку Дрібного Дожджу
Чей би ся прияло Зелене Вино
Ей Вино ж Моє Зеленейкоє!

Прийшла до неї Мамцейка Єї
Дай ми Дівойко хоть Галузь Вина
Або дармо дай або ми продай

Ні дармо не дам а ні не продам
Бо Моє Вино Барз-дорогоє
Барз-дорогоє Непочатоє

Гей на Великдень на Славний День
Садило Дівча Зелене Вино
Садило-садило Богу ся молило
Спусти Божейку Чорну Хмаройку
Чорну Хмаройку Дрібного Дожджу
Чей би ся прияло Зелене Вино
Ей Вино ж Моє Зеленейкоє!

Прийшов до неї Милейкий Єї
Дай ми Милейка хоть Галузь Вина
Або дармо дай або ми продай
Тобі не продам лем ти дармо дам','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''cat:zeleni-svyata'', ''Веснянки та гаївки'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_273961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_273961','Гей на Великдень на Славний День','Гей на Великдень на Славний День
Садило Дівча Зелене Вино
Садило-садило Богу ся молило
Спусти Божейку Чорну Хмаройку
Чорну Хмаройку Дрібного Дожджу
Чей би ся прияло Зелене Вино
Ей Вино ж Моє Зеленейкоє!

Прийшов до неї Татцейко Єї
Дай ми Дівойко хоть Галузь Вина
Або дармо дай або ми продай
Ні дармо не дам ані не продам
Бо Моє Вино Барз-дорогоє
Барз-дорогоє Непочатоє

Гей на Великдень на Славний День
Садило Дівча Зелене Вино
Садило-садило Богу ся молило
Спусти Божейку Чорну Хмаройку
Чорну Хмаройку Дрібного Дожджу
Чей би ся прияло Зелене Вино
Ей Вино ж Моє Зеленейкоє!

Прийшла до неї Мамцейка Єї
Дай ми Дівойко хоть Галузь Вина
Або дармо дай або ми продай

Ні дармо не дам а ні не продам
Бо Моє Вино Барз-дорогоє
Барз-дорогоє Непочатоє

Гей на Великдень на Славний День
Садило Дівча Зелене Вино
Садило-садило Богу ся молило
Спусти Божейку Чорну Хмаройку
Чорну Хмаройку Дрібного Дожджу
Чей би ся прияло Зелене Вино
Ей Вино ж Моє Зеленейкоє!

Прийшов до неї Милейкий Єї
Дай ми Милейка хоть Галузь Вина
Або дармо дай або ми продай
Тобі не продам лем ти дармо дам');
DELETE FROM song_links WHERE song_id = 'pisniua_275675';
DELETE FROM song_versions WHERE song_id = 'pisniua_275675';
DELETE FROM songs_fts WHERE song_id = 'pisniua_275675';
DELETE FROM songs WHERE id = 'pisniua_275675';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_275675','Питається Дніпр Тихого Дуная','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Українські релігійні роздуми про Спасіння © Видавництво "Павутинонька", Нью Йорк – Львів – Київ – Харків – Москва, 2003','Українські реліґійні роздуми про Воскресіння, Неволю і Спасіння. Пісні Великодні — Спасительні: світ не по Правді. Пісні-плачі Сокола-Прадіда. Бездільне Своє та Безрідне Ясне Соколя утеряв. Шо я Своїх Козаків на Тобі не видаю. А десь ми поверх всякої міри гріха набрали. Сребра-злата по достатках набирали. Листки з приводу цієї Пісні: Українські реліґійні пісні-роздуми про Неволю та Спасіння. Плач Сокола. Традиції Батька. Коляда і Великдень: Різдво і Відродження Світа. Рокове Коло. Стежки до листків про Українські традиції. Ті Козаки ― Добре знали! Ця Пісня, своєю структурою і змістом, повторює Пісню про Сокола і Соколя. Обидві ― це розмови про дітей та їх долю ― неволю служби, у світі не по Правді. Ясний Сокіл утеряв і шукає Своє Соколя, а Дніпр-батько-славута ― Своїх Козаків. Питається Дніпр Тихого Дуная Тихий Дунаю Шо я Своїх Козаків на Тобі не видаю... Промолвит Тихий Дунай до Дніпра-славута Дніпр-батьку-славуто Сам собі думаю да гадаю Шо Твоїх Козаків у собі не видаю Батько-Дніпр-славута говорить з Тихим Дунаєм (=Ясний Сокіл і Орел Сизокрилий) про Своїх Козаків (=Діти, Ясні Соколята), що він їх більше не видить на Тихому Дунаї. Тихий Дунай підтверджує це і сам дивується. "Тихий Дунай" ― Колядний образ Праводи, космічних Творчих Вод (=Синє Море =Чисте Поле =Правдивий простір, також =Світ Різдва). Саме Там ― шукає і не знаходить Своїх Дітей Батько-дніпр-славута (символ Прадіда, Прабатька)....Коториє Козаки Чистим Полем гуляли Річки Низовиї Помошниці Дніпровиї Добре знали Тут неоднозначність: (1) чи ― Річки добре знали, які Козаки в Чистому Полі гуляли! (2) чи ― Козаки, що гуляли в Чистому Полі, добре знали Ті Річки, (3) чи ― Козаки знали Ті Річки і Добре! (Правода = Чисте Поле = простір Добра, Правдивий простір). Козаки, які Чистим Полем гуляли, які Річки Низовії Помошниці Дніпровії та Добре знали, ― це Його Діти, Правдиві козаки. Але Там ― в Тихому Дунаї ― Правдивих козаків давно вже немає (порівняти з Колядним: уже давно як Правди нема, ― Ой в Чистім Поли блисько Дороги). Уже Чтверь Года Три Місяця вибиває Як Твоїх Козаків у мене немає Чи мова не про Четвер напередодні Великодня? І про три переміни Місяця ― Три Місяці, які вибили пору Ніва (три дні від Четвера до Неділі)? За Тим приходить Відродження Світа, Воскресіння, ― з''являється Новий Місяць. Якщо так, то тут у Пісні ― вираз тривоги. Вже надходить Великодній час, пора відродження всього живого, природи і людей, а правдивих козаків все не видно. Якщо Четвер тижня ― день, то Четвер в Роковому Колі ― Цвітень, коли б мало все зацвісти, але незацвіло: всі квіти пониділи. Тобто цю тривогу Пісня виражає ще по-інакшому. Всі Мої Квіти Луговиє і Низовиє понидєли Шо Твоїх Козаків у себе не виділи Втрата Дітей відбивається в Природі, в усьому Космосі, ― цвіти (на Райському Дереві) = зорі = діти. Як і в Пісні про Ясне Соколя, тут символіка викрадення Світа, згасання Правди, забуття Ідеалу щастя, давнього Закону Любови. Ні Моє Дунайськеє Гирло Твоїх Козаків не пожерло Ні Моя Дунайська Вода Твоїх Козаків не забрала Їх Турки не постреляли не порубали До Города-царя в полон не забрали... Замість любови рідні, родинного щастя з дітьми ― пошуки здобичі, плюндрування, пропивання награбованого. Не видно жодного високого чинника походу. Городи бусурменські плюндрували Огнем-мечем воєвали Сребра-злата по достатках набирали... Сребро-і-злато Турецьке на три части паївали Мед і оковиту горілку подпівали.. Соколя викрали і поневолили ― Пута Срібні (Золоті) на ногах, Жемчуж на очі. Царигород на срібло-злото багатий, є що їсти і пити. Тільки немає чоловікові од Радості. Козаків у Чистому Полі нема, Там вони живності більше не шукають. Їх ні вода не забрала, ні турки не постріляли, не порубали, ні до Города-царя в полон не забрали. Вони в добровільній неволі служби панам-царям, світу не по Правді, ― на війнах пробувають, городи чужі плюндрують, здобич паюють і пропивають. Їм потрібне срібло-злото, яке в шапки набирають і за яке дають в шинку горілки: Гомін гомін по діброві Вилинули Соколи с Чужої Сторони Колядки все тужать, що вже давно, як Правди нема, як Правда погасла, бо цар на царя військо збирає... Ой в Чистім Поли блисько Дороги Ім''я "Іван Богословець" в Пісні про Сокола і Соколя ― мабуть значить, що він все слова про Бога проказує. Козаки після плюндрувань, паювання здобичі та випивки ― за весь мир Господа просять! Але Річки Низовії Помошниці Дніпровії ― не узнають у них Тих Козаків, які Чистим Полем гуляли і ― Добре знали! Ясний Сокіл визволяє Соколя до Чистого Поля (=Правдивий простір). Це взірець до роздумів про тих козаків, які чужі городи плюндрують, сребра-злата по достатках набирають, горілку подпівають. Це їх душі: Шо за нї нїхто не знає Шо они припадками пропадают Шо они бутинами побиті дорогами покалїчені Пострачувані водою потоплені За котрих нїхто не знає лягаючи і встаючи Нїхто не згадає дорогов ідучи А они бідні душі гірко в пеклї прибувают І Цего Свйитого Вечера чекают Це душі тих козаків, які не зуміли померти в Чистому Полі. Таких душ "в пеклі прибуває" ― все більше і більше?','Питається Дніпр Тихого Дуная
Тихий Дунаю
Шо я Своїх Козаків на Тобі не видаю
Чи Твоє Дунайськеє Гирло Моїх Козаків пожерло

Чи Твоя Дунай-Вода Моїх Козаків забрала
Промолвит Тихий Дунай до Дніпра-славута
Дніпр-батьку-славуто
Сам собі думаю да гадаю
Шо Твоїх Козаків у собі не видаю

Уже Чтверь Года Три Місяця вибиває
Як Твоїх Козаків у мене немає
Ні Моє Дунайськеє Гирло Твоїх Козаків не пожерло
Ні Моя Дунайська Вода Твоїх Козаків не забрала
Їх Турки не постреляли не порубали

До Города-царя в полон не забрали...
Всі Мої Квіти Луговиє і Низовиє понидєли
Шо Твоїх Козаків у себе не виділи
Твої козаки на Черкеській горі пробувают
Холодной води в барила набирают

Шляхи і дороги замічали
Городи Бусурменські плюндрували
Огнем-мечем воєвали
Сребра-злата по достатках набирали
До річки Хортеці прибували

Велику переправу собі мали
До Стародавной Січи поспішали
У Стародавной Січи очертою сідали
Сребро-і-злато Турецьке на три части паївали
Мед і оковиту горілку подпівали

За весь мир Господа прохали
Коториє Козаки Чистим Полем гуляли
Річки Низовиї Помошниці Дніпровиї
Добре знали','[''pisni.org.ua'', ''cat:dumy'', ''cat:istorychni'', ''cat:kozacki'', ''cat:socialno-pobutovi'', ''cat:suspilno-politychni'', ''Думи'', ''Історичні пісні'', ''Козацькі пісні'', ''Соціально-побутові пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_275675'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_275675','Питається Дніпр Тихого Дуная','Питається Дніпр Тихого Дуная
Тихий Дунаю
Шо я Своїх Козаків на Тобі не видаю
Чи Твоє Дунайськеє Гирло Моїх Козаків пожерло

Чи Твоя Дунай-Вода Моїх Козаків забрала
Промолвит Тихий Дунай до Дніпра-славута
Дніпр-батьку-славуто
Сам собі думаю да гадаю
Шо Твоїх Козаків у собі не видаю

Уже Чтверь Года Три Місяця вибиває
Як Твоїх Козаків у мене немає
Ні Моє Дунайськеє Гирло Твоїх Козаків не пожерло
Ні Моя Дунайська Вода Твоїх Козаків не забрала
Їх Турки не постреляли не порубали

До Города-царя в полон не забрали...
Всі Мої Квіти Луговиє і Низовиє понидєли
Шо Твоїх Козаків у себе не виділи
Твої козаки на Черкеській горі пробувают
Холодной води в барила набирают

Шляхи і дороги замічали
Городи Бусурменські плюндрували
Огнем-мечем воєвали
Сребра-злата по достатках набирали
До річки Хортеці прибували

Велику переправу собі мали
До Стародавной Січи поспішали
У Стародавной Січи очертою сідали
Сребро-і-злато Турецьке на три части паївали
Мед і оковиту горілку подпівали

За весь мир Господа прохали
Коториє Козаки Чистим Полем гуляли
Річки Низовиї Помошниці Дніпровиї
Добре знали');
DELETE FROM song_links WHERE song_id = 'pisniua_276961';
DELETE FROM song_versions WHERE song_id = 'pisniua_276961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_276961';
DELETE FROM songs WHERE id = 'pisniua_276961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_276961','Зона','Музика: Ігор Білозір Слова: Богдан Стельмах. Виконує: Оксана Білозір','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Там наша мати вперше відкрила нам
Першого слова радісну тайну,
Марево пісні, неба синій храм,
А там чорну, як човен, дідову труну.
Там непогасно наша горить свіча,
Не замести там наш споконвічний слід,
Кожну дитину, наче лечеча з плеча,
Батько пускав там у широкий світ.

Приспів:
Зоною назвали мій родинний край,
Де медами пахла нива золота,
Де кипіло небо від пташиних зграй,
І котили хвилі пшениці-жита.
Зоною назвали мій родинний край,
Де ніхто не сіє, де ніхто не жне,
Клякну при дорозі, крикну: "Не вмирай!"
І земля почує, і простить мене.

Води там тихі, як Великодній ряст,
Зорі там чисті, як передзвін Різдва.
Там ми кохали юнні і для нас не раз
Там цвіркунами тішилась трава.
Скільки веселих там гомоніло сіл,
Скільки барвистих там квітувало піль! -
Виїла очі радіоактивна сіль,
Випалив серце невтишимий біль.

Приспів. (3)','[''pisni.org.ua'', ''cat:chornobyl'', ''cat:suspilno-politychni'', ''Чорнобильська катастрофа: пісні'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_276961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_276961','Зона','Там наша мати вперше відкрила нам
Першого слова радісну тайну,
Марево пісні, неба синій храм,
А там чорну, як човен, дідову труну.
Там непогасно наша горить свіча,
Не замести там наш споконвічний слід,
Кожну дитину, наче лечеча з плеча,
Батько пускав там у широкий світ.

Приспів:
Зоною назвали мій родинний край,
Де медами пахла нива золота,
Де кипіло небо від пташиних зграй,
І котили хвилі пшениці-жита.
Зоною назвали мій родинний край,
Де ніхто не сіє, де ніхто не жне,
Клякну при дорозі, крикну: "Не вмирай!"
І земля почує, і простить мене.

Води там тихі, як Великодній ряст,
Зорі там чисті, як передзвін Різдва.
Там ми кохали юнні і для нас не раз
Там цвіркунами тішилась трава.
Скільки веселих там гомоніло сіл,
Скільки барвистих там квітувало піль! -
Виїла очі радіоактивна сіль,
Випалив серце невтишимий біль.

Приспів. (3)');
DELETE FROM song_links WHERE song_id = 'pisniua_27797';
DELETE FROM song_versions WHERE song_id = 'pisniua_27797';
DELETE FROM songs_fts WHERE song_id = 'pisniua_27797';
DELETE FROM songs WHERE id = 'pisniua_27797';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_27797','Лишайся, мила, не плач, кохана','(Марш УHCО). Музика: народна','uk','ukraine_before_1917',NULL,NULL,'http://www.shulga.kiev.ua',NULL,'H7
Лишайся, мила,  не плач, кохана,
За твої думи і сина спокійний сон
Я вранці рано у партизани
Піду з боївкою УHCО
Я вийшов з мiста, я встав з окопу
Спливають кров''ю Абхазія і Дністер
і від Донбасу до Перекопу
Два переходи БТР
Не плач, кохана, вже сурми грають,
Тебе згадаю в застінку перед кінцем
Бо хто воює, той не вмирає,
Повік залишиться бійцем
До ліктя лікоть стає підмога
О, мила, чао, белла, чао, белла, чао, чао, чао
і од порога і до порога
Йде наша правда, наш звичай
В бою загинуть - не на базарі
Сьогодні - я , завтра - він, післязавтра - ти,
Кому - на лаврах, кому - на нарах,
Кому - в УHCО, кому - в менти
Нас криють міни, гірська дорога
і кожен з нас сто раз вмер і сто раз воскрес
і ось я вперше молюся Богу
Як хрест стискаю АКС
Ми знову разом на барикадах
і не здригнеться твоя і моя рука
"УHCО - до штурму, УHА - до Влади!" -
Звучить наказ провідника
Снаряди свищуть, тріщить бруківка,
Моє кохання давно є одна війна
Мій дім - руїни, сім''я - боївка,
А заповіт - статут УHА
Нехай гуркочуть бої запеклі
Бо краще згинути вовком, ніж жити псом
У рай не пустять, проте у пеклі
Я твердо знаю є УHCО.
У рай не пустять, проте у пеклі
Я твердо знаю є УHCО.','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:patriotic'', ''Гимни та марші'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_27797'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_27797','Лишайся, мила, не плач, кохана','H7
Лишайся, мила,  не плач, кохана,
За твої думи і сина спокійний сон
Я вранці рано у партизани
Піду з боївкою УHCО
Я вийшов з мiста, я встав з окопу
Спливають кров''ю Абхазія і Дністер
і від Донбасу до Перекопу
Два переходи БТР
Не плач, кохана, вже сурми грають,
Тебе згадаю в застінку перед кінцем
Бо хто воює, той не вмирає,
Повік залишиться бійцем
До ліктя лікоть стає підмога
О, мила, чао, белла, чао, белла, чао, чао, чао
і од порога і до порога
Йде наша правда, наш звичай
В бою загинуть - не на базарі
Сьогодні - я , завтра - він, післязавтра - ти,
Кому - на лаврах, кому - на нарах,
Кому - в УHCО, кому - в менти
Нас криють міни, гірська дорога
і кожен з нас сто раз вмер і сто раз воскрес
і ось я вперше молюся Богу
Як хрест стискаю АКС
Ми знову разом на барикадах
і не здригнеться твоя і моя рука
"УHCО - до штурму, УHА - до Влади!" -
Звучить наказ провідника
Снаряди свищуть, тріщить бруківка,
Моє кохання давно є одна війна
Мій дім - руїни, сім''я - боївка,
А заповіт - статут УHА
Нехай гуркочуть бої запеклі
Бо краще згинути вовком, ніж жити псом
У рай не пустять, проте у пеклі
Я твердо знаю є УHCО.
У рай не пустять, проте у пеклі
Я твердо знаю є УHCО.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27797_l1','pisniua_27797','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_276420';
DELETE FROM song_versions WHERE song_id = 'pisniua_276420';
DELETE FROM songs_fts WHERE song_id = 'pisniua_276420';
DELETE FROM songs WHERE id = 'pisniua_276420';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_276420','Вінок з барвінку','(Весілля в Карпатах). Музика: Олексій Сердюк Слова: Мирослав Воньо. Виконує: Віктор Павлік','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ніжно цвіте в Карпатах
Барвіночок хрещатий.
Вітер насіяв, дощ поливав,          |
То ж на вінки дівчатам.             | (2)

Як заграє танець музика троїста,
Чути, що весілля із села у місто.
Чарівна сопілка, скрипка та цимбали |
Так іще ніколи весело не грали.     | (2)

Та не сумуй, матусю,
Що рано видаюся.
Доля дівоча - заміж іти,            |
До весілля готуйся.                 | (2)

Врода іде з красою -
Молодий з молодою.
Вже той барвінок щастя приніс,      |
Що розквітав весною.                | (2)

Як заграє танець музика троїста,
Чути, що весілля із села у місто.
Чарівна сопілка, скрипка та цимбали
Так іще ніколи весело не грали','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_276420'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_276420','Вінок з барвінку','Ніжно цвіте в Карпатах
Барвіночок хрещатий.
Вітер насіяв, дощ поливав,          |
То ж на вінки дівчатам.             | (2)

Як заграє танець музика троїста,
Чути, що весілля із села у місто.
Чарівна сопілка, скрипка та цимбали |
Так іще ніколи весело не грали.     | (2)

Та не сумуй, матусю,
Що рано видаюся.
Доля дівоча - заміж іти,            |
До весілля готуйся.                 | (2)

Врода іде з красою -
Молодий з молодою.
Вже той барвінок щастя приніс,      |
Що розквітав весною.                | (2)

Як заграє танець музика троїста,
Чути, що весілля із села у місто.
Чарівна сопілка, скрипка та цимбали
Так іще ніколи весело не грали');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_276420_l1','pisniua_276420','YouTube','https://www.youtube.com/watch?v=DQIAxUSwj5Y','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_276420_l2','pisniua_276420','YouTube','https://www.youtube.com/watch?v=DmB4Nnn1xN0','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_276420_l3','pisniua_276420','YouTube','https://www.youtube.com/watch?v=bnzdEL5Y5Ac','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_27498';
DELETE FROM song_versions WHERE song_id = 'pisniua_27498';
DELETE FROM songs_fts WHERE song_id = 'pisniua_27498';
DELETE FROM songs WHERE id = 'pisniua_27498';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_27498','Стоїть явір над водою','Музика: Семен Гулак-Артемовський Слова: Семен Гулак-Артемовський. Виконує: Михайло Гришко, Чоловіча хорова капела України ім. Ревуцького, Вадим Швидкий','uk','ukraine_before_1917',NULL,NULL,'Перлини української народної пісні. 1991 р. Бібліотека поета. Народна лірика.','* варіант: Як же мені не хилитись – Вода корінь миє; Як же мені не журитись – Коли серце ниє!','Стоїть явір над водою,
В воду похилився,
На козака пригодонька:
Козак зажурився.

Не хилися, явороньку,
Ще ж ти зелененький,
Не журися, козаченьку,
Ще ж ти молоденький!

Не рад явір хилитися -
Вода корінь миє!
Не рад козак журитися,
Так серденько ниє. *

Ой поїхав з України
Козак молоденький -
Оріхове сіделечко
Ще й кінь вороненький.

Ой поїхав на чужину
Та там і загинув,
Свою рідну Україну
Навіки покинув.

Звелів собі насипати
Високу могилу,
Звелів собі посадити
Червону калину.

"Будуть пташки прилітати,
Калиноньку їсти,
Будуть мені приносити
З України вісті!"','[''pisni.org.ua'', ''cat:kozacki'', ''cat:patriotic'', ''Козацькі пісні'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_27498'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_27498','Стоїть явір над водою','Стоїть явір над водою,
В воду похилився,
На козака пригодонька:
Козак зажурився.

Не хилися, явороньку,
Ще ж ти зелененький,
Не журися, козаченьку,
Ще ж ти молоденький!

Не рад явір хилитися -
Вода корінь миє!
Не рад козак журитися,
Так серденько ниє. *

Ой поїхав з України
Козак молоденький -
Оріхове сіделечко
Ще й кінь вороненький.

Ой поїхав на чужину
Та там і загинув,
Свою рідну Україну
Навіки покинув.

Звелів собі насипати
Високу могилу,
Звелів собі посадити
Червону калину.

"Будуть пташки прилітати,
Калиноньку їсти,
Будуть мені приносити
З України вісті!"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27498_l1','pisniua_27498','YouTube','https://www.youtube.com/watch?v=NdsIJx9flRQ','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27498_l2','pisniua_27498','YouTube','https://www.youtube.com/watch?v=7osR18Xs3Bs','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27498_l3','pisniua_27498','YouTube','https://www.youtube.com/watch?v=YyX7MM1VdPI','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27498_l4','pisniua_27498','YouTube','https://www.youtube.com/watch?v=xvzl_1D2cSo','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27498_l5','pisniua_27498','YouTube','https://www.youtube.com/watch?v=PJlp89ozzNc','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27498_l6','pisniua_27498','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,6);
DELETE FROM song_links WHERE song_id = 'pisniua_27596';
DELETE FROM song_versions WHERE song_id = 'pisniua_27596';
DELETE FROM songs_fts WHERE song_id = 'pisniua_27596';
DELETE FROM songs WHERE id = 'pisniua_27596';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_27596','Починатся Гостина','Українська народна пісня','uk','ukraine_1991',NULL,'1997','Фольклорні матеріали з отчого краю. Зібрали В.Сокіл та Г.Сокіл.- Львів, 1998','Царинна Пісня: Староукраїнські Колядки і Щедрівки ― Царинні Містерії. Рокове Коло. "Вили вінці із бука, з якихось квітів і клали на хрести на царині. Но й священик іде по царині з процесіями, з фанами і святит. І гостят потім. Ішли горі Минчолом і полонинами вийшли на Воловець. З Волівця - на Бреґул. Оде на Бреґул, тогди у Скалянках кирниця є, і там уже води напилися, і тогди на Багноватий. А з Багноватого на Товстий і долі вирьхом у село до Євдощака - там послінний хрест. Потім впрова, впрова до Гончаря, тоди зийшли у цвонтарь і всьо." Зап. В.Сокіл 28 квітня 1997 року у с. Ялинкуватому від Хрипти Олени, 1913 року народж. А з Полянойки до Царинойки. Тай а почав Ї Богойко. Листки з приводу цієї пісні: Світові аналогії: традиції Різдва і Збору. Українські Містерії в часі повного розвитку Весни.','Починатся Гостина    |2
Від Бога Господина

Тай а почав Ї Богойко |2
Тай Наш Любий Попойко','[''pisni.org.ua'', ''cat:boykivski'', ''cat:zeleni-svyata'', ''Пісні з Бойківщини'', ''Пісні до Зелених свят'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_27596'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_27596','Починатся Гостина','Починатся Гостина    |2
Від Бога Господина

Тай а почав Ї Богойко |2
Тай Наш Любий Попойко');
DELETE FROM song_links WHERE song_id = 'pisniua_276111';
DELETE FROM song_versions WHERE song_id = 'pisniua_276111';
DELETE FROM songs_fts WHERE song_id = 'pisniua_276111';
DELETE FROM songs WHERE id = 'pisniua_276111';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_276111','Пісня переселенців з Лемківщини','Українська народна пісня. Виконує: Василь Жданкін','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Туман, туман долинами,
Тяжко жити з ворогами
Гірнякові на чужині,
Не в діброві, полонині.

Сонце гріє, вітер віє,
Гірнякові серце мліє,
Плаче, тужить за горами,
Що не зжився з долинами.

Як я, браття, тут сконаю,
Завезіть мя там, де знаю,
завезіть мя на Вкраїну,
Де родився, най там згину.

Ой, помалу-помаленьку
Котять сльози доличеньку
Зірви, мила, яворину
Гірнякові на спомину.

Ой помалу-помаленьку
Котять сльози доличеньку,
Ані м''яти, ані рути,
Десь тут гірняк мусить бути.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_276111'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_276111','Пісня переселенців з Лемківщини','Туман, туман долинами,
Тяжко жити з ворогами
Гірнякові на чужині,
Не в діброві, полонині.

Сонце гріє, вітер віє,
Гірнякові серце мліє,
Плаче, тужить за горами,
Що не зжився з долинами.

Як я, браття, тут сконаю,
Завезіть мя там, де знаю,
завезіть мя на Вкраїну,
Де родився, най там згину.

Ой, помалу-помаленьку
Котять сльози доличеньку
Зірви, мила, яворину
Гірнякові на спомину.

Ой помалу-помаленьку
Котять сльози доличеньку,
Ані м''яти, ані рути,
Десь тут гірняк мусить бути.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_276111_l1','pisniua_276111','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_27512';
DELETE FROM song_versions WHERE song_id = 'pisniua_27512';
DELETE FROM songs_fts WHERE song_id = 'pisniua_27512';
DELETE FROM songs WHERE id = 'pisniua_27512';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_27512','Ой за річкою та й за Синюхою','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Бібліотека поета. Народна лірика.',NULL,'Ой за річкою та й за Синюхою
Та виросли ожини;
"Гей, давай, давай, батьку, переміни,
Бо далебі, загинем!" -

"Гей, не річ моя, славні запорожці,
Переміни давати,
Гей, просіть собі, славні запорожці,
У цариці зарплати!"

Гей, дала, дала славним запорожцям
Та цариця зарплату,
Що понабивали на ноги кайдани,
Дали в руки лопату.

Що понабивали на ноги кайдани,
Дали в руки лопати,
Гей, іще й послали на "легку роботу" -
Та канави копати.

Гей, летить ворон та із чужих сторон
Та він крилами має;
Гей, сидить сірома та над канавою
Та сорочку латає.

Гей, летить ворон та із чужих сторон
Та літаючи закрякав;
Гей, сидить сірома та над канавою
Та сидячи заплакав.','[''pisni.org.ua'', ''cat:istorychni'', ''cat:kozacki'', ''Історичні пісні'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_27512'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_27512','Ой за річкою та й за Синюхою','Ой за річкою та й за Синюхою
Та виросли ожини;
"Гей, давай, давай, батьку, переміни,
Бо далебі, загинем!" -

"Гей, не річ моя, славні запорожці,
Переміни давати,
Гей, просіть собі, славні запорожці,
У цариці зарплати!"

Гей, дала, дала славним запорожцям
Та цариця зарплату,
Що понабивали на ноги кайдани,
Дали в руки лопату.

Що понабивали на ноги кайдани,
Дали в руки лопати,
Гей, іще й послали на "легку роботу" -
Та канави копати.

Гей, летить ворон та із чужих сторон
Та він крилами має;
Гей, сидить сірома та над канавою
Та сорочку латає.

Гей, летить ворон та із чужих сторон
Та літаючи закрякав;
Гей, сидить сірома та над канавою
Та сидячи заплакав.');
DELETE FROM song_links WHERE song_id = 'pisniua_277192';
DELETE FROM song_versions WHERE song_id = 'pisniua_277192';
DELETE FROM songs_fts WHERE song_id = 'pisniua_277192';
DELETE FROM songs WHERE id = 'pisniua_277192';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_277192','Ой заграй ми музико','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','альбом "Карпатія. Етнічна музика України"','Ой заграй мі музика на цілого смика,
А я ті заплачу, як продам коника.
Ой грайте же мі, грайте мої музиканти
А я вам не заплачу - ви ся не старайте.
Ой грають музиканти, грають і басують,
А у мої очка слези ся катують.
Заграй мі музика, заграйте мі баси,
Най шось витанцюю в свої млади часи.
Най шось витанцюю в свої млади часи...','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_277192'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_277192','Ой заграй ми музико','Ой заграй мі музика на цілого смика,
А я ті заплачу, як продам коника.
Ой грайте же мі, грайте мої музиканти
А я вам не заплачу - ви ся не старайте.
Ой грають музиканти, грають і басують,
А у мої очка слези ся катують.
Заграй мі музика, заграйте мі баси,
Най шось витанцюю в свої млади часи.
Най шось витанцюю в свої млади часи...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_277192_l1','pisniua_277192','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_276216';
DELETE FROM song_versions WHERE song_id = 'pisniua_276216';
DELETE FROM songs_fts WHERE song_id = 'pisniua_276216';
DELETE FROM songs WHERE id = 'pisniua_276216';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_276216','Андрійко','Українська народна пісня. Виконує: Оксана Білозір, Гурт "Зоряна ніч"','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Та ти гадаш, мій Андрійку, що я тебе люблю, гей,
А я тебе, дурний хлопче, словами голублю.       | (2)

Ой болить мене головонька, що маю робити гей
Треба мені докторика з чорними очима.           | (2)

Ой болить мя головонька та межи плечима, ой,
Треба мені докторика з чорними очима.           | (2)

Та не того докторика, що усіх лікує, ні
А такого докторика, що файно цілує.             | (2)

Та ти гадаш, мій Андрійку, що я тебе люблю, гей,
А я тебе, дурний хлопче, словами голублю.       | (2)','[''pisni.org.ua'', ''cat:dances'', ''cat:polky'', ''cat:zhartivlyvi'', ''Пісні до танцю'', ''Польки'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_276216'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_276216','Андрійко','Та ти гадаш, мій Андрійку, що я тебе люблю, гей,
А я тебе, дурний хлопче, словами голублю.       | (2)

Ой болить мене головонька, що маю робити гей
Треба мені докторика з чорними очима.           | (2)

Ой болить мя головонька та межи плечима, ой,
Треба мені докторика з чорними очима.           | (2)

Та не того докторика, що усіх лікує, ні
А такого докторика, що файно цілує.             | (2)

Та ти гадаш, мій Андрійку, що я тебе люблю, гей,
А я тебе, дурний хлопче, словами голублю.       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_276216_l1','pisniua_276216','YouTube','https://www.youtube.com/watch?v=zawjm7Mm2ZA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_275226';
DELETE FROM song_versions WHERE song_id = 'pisniua_275226';
DELETE FROM songs_fts WHERE song_id = 'pisniua_275226';
DELETE FROM songs WHERE id = 'pisniua_275226';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_275226','Над колискою','Музика: Росава Слова: Олександр Олесь. Виконує: Росава','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Спи, мій малесенький,
Спи, мій синок...

Я розкажу тобі безліч казок.
Нащо ж ти віченьки знову розкрив?
Спи, моя пташко, - то вітер завив.

Стогне і виє уже він давно,
Б''ється і стука в наше вікно.
Геть, розбишако, в далекі степи.

Спи, моя ластівко, солодко спи,
Ось уже й вітер зовсім занімів,
Мабуть, заснуть під намет полетів.

Холодно зараз в лісах і лугах,
Все потонуло в глибоких снігах.
Бігають зайчики, мерзнуть, тремтять,
Затишок хочуть собі відшукать.

Ось вони вгляділи, о, кущик стоїть,
Годі! Давно вже лисичка там спить.
Кинулись знову кудись на грядки,
Ой, там ночують сьогодні вовки.

Краще ви в поле біжіть, за лісок.
Знайдете там ви соломки стіжок,
Глибше забийтесь, зарийтесь в снопки,
Щоб не знайшли вас голодні вовки.

Спи ж, мій малесенький, годі гулять,
Зайчики білі давно уже сплять...','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_275226'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_275226','Над колискою','Спи, мій малесенький,
Спи, мій синок...

Я розкажу тобі безліч казок.
Нащо ж ти віченьки знову розкрив?
Спи, моя пташко, - то вітер завив.

Стогне і виє уже він давно,
Б''ється і стука в наше вікно.
Геть, розбишако, в далекі степи.

Спи, моя ластівко, солодко спи,
Ось уже й вітер зовсім занімів,
Мабуть, заснуть під намет полетів.

Холодно зараз в лісах і лугах,
Все потонуло в глибоких снігах.
Бігають зайчики, мерзнуть, тремтять,
Затишок хочуть собі відшукать.

Ось вони вгляділи, о, кущик стоїть,
Годі! Давно вже лисичка там спить.
Кинулись знову кудись на грядки,
Ой, там ночують сьогодні вовки.

Краще ви в поле біжіть, за лісок.
Знайдете там ви соломки стіжок,
Глибше забийтесь, зарийтесь в снопки,
Щоб не знайшли вас голодні вовки.

Спи ж, мій малесенький, годі гулять,
Зайчики білі давно уже сплять...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_275226_l1','pisniua_275226','YouTube','https://www.youtube.com/watch?v=7aZYb8Ynkno','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_27717';
DELETE FROM song_versions WHERE song_id = 'pisniua_27717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_27717';
DELETE FROM songs WHERE id = 'pisniua_27717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_27717','Росте черешня в мами на городі','Музика: Анатолій Горчинський Слова: Микола Луків. Виконує: Михайло Поплавський, Василь Білоцерківський','uk','ukraine_1991',NULL,NULL,'текст- http://svitlytsia.crimea.ua/','* У тексті з інтернет-джерела приспіву не було - його дописано з пам''яті. Коли співається приспів - не пам''ятаю. Акорди підібрано з пам''яті - тому в їх правильності я не впевнений (бо не пам''ятаю добре гармонії пісні). Але співати й так можна - і навіть звучить:) Аранжування: Олександр Бурміцький Підбір акордів: bohdanko','Росте черешня в мами на городі,
Стара-стара, а кожен рік цвіте,
Щоліта дітям ягодами годить,
Хоча вони й не дякують за те.
Щоліта дітям ягодами годить,
Хоча вони й не дякують за те.
*  Приспів:
Мамо, мамо, вічна і кохана...
Ви пробачте, що був неуважний.
Знаю, Ви молилися за мене
Дні і ночі, сива моя нене.
Живе старенька мати у господі -
Невтомні руки, серце золоте.
Щодня і дітям, і онукам годить,
Хоч рідко хто з них дякує за те.
Ну що ж, про вдячність забувають люди
Душа сліпа у щасті, а проте
Вони - прозріють, але пізно буде:
Черешня всохне, мати - одцвіте.','[''pisni.org.ua'', ''cat:nostalgia'', ''cat:pro-batkiv'', ''Пісні з ностальгічними мотивами'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_27717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_27717','Росте черешня в мами на городі','Росте черешня в мами на городі,
Стара-стара, а кожен рік цвіте,
Щоліта дітям ягодами годить,
Хоча вони й не дякують за те.
Щоліта дітям ягодами годить,
Хоча вони й не дякують за те.
*  Приспів:
Мамо, мамо, вічна і кохана...
Ви пробачте, що був неуважний.
Знаю, Ви молилися за мене
Дні і ночі, сива моя нене.
Живе старенька мати у господі -
Невтомні руки, серце золоте.
Щодня і дітям, і онукам годить,
Хоч рідко хто з них дякує за те.
Ну що ж, про вдячність забувають люди
Душа сліпа у щасті, а проте
Вони - прозріють, але пізно буде:
Черешня всохне, мати - одцвіте.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27717_l1','pisniua_27717','YouTube','https://www.youtube.com/watch?v=e-aZuaBHT9g','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27717_l2','pisniua_27717','YouTube','https://www.youtube.com/watch?v=_iwFVVw17fo','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27717_l3','pisniua_27717','YouTube','https://www.youtube.com/watch?v=nlg4WAkC2LU','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_279717';
DELETE FROM song_versions WHERE song_id = 'pisniua_279717';
DELETE FROM songs_fts WHERE song_id = 'pisniua_279717';
DELETE FROM songs WHERE id = 'pisniua_279717';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_279717','And the Third Angel Sounded','(Брат! Піва кончілась, ти представляєш?). Музика: Мертвий півень Слова: Юрій Андрухович','uk','ukraine_before_1917',NULL,NULL,'офіційний сайт',NULL,'Брат! Піва кончілась, ти представляєш брат?
Піва кончілась, жена ушла!"

Один з недобитих
перестрів мене, підбитого, серед нічного Львова.
Він переважно належить їм -
я, напевно, єдиний, хто про це знає.
Він також хотів пива, як виявилось, -
п''яний мародер і т. д.

"Брат!Піва кончілась,
ти представляєш брат? Брат!Піва кончілась, жена ушла!"

Я не знав, що буває на світі такий розпач.
Мені все причувалося щось про третину вод
і полин.
Ангел у футболці з третім номером ішов по небу
зі своєю дурнуватою дудкою.
Ми обійнялися, ніби перед стратою.
Перепрошую, перед стартом.

"Брат!Піва кончілась,
ти представляєш брат? Брат!Піва кончілась, жена ушла!"','[''pisni.org.ua'', ''cat:druzhba'', ''cat:socialno-pobutovi'', ''Пісні про дружбу'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_279717'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_279717','And the Third Angel Sounded','Брат! Піва кончілась, ти представляєш брат?
Піва кончілась, жена ушла!"

Один з недобитих
перестрів мене, підбитого, серед нічного Львова.
Він переважно належить їм -
я, напевно, єдиний, хто про це знає.
Він також хотів пива, як виявилось, -
п''яний мародер і т. д.

"Брат!Піва кончілась,
ти представляєш брат? Брат!Піва кончілась, жена ушла!"

Я не знав, що буває на світі такий розпач.
Мені все причувалося щось про третину вод
і полин.
Ангел у футболці з третім номером ішов по небу
зі своєю дурнуватою дудкою.
Ми обійнялися, ніби перед стратою.
Перепрошую, перед стартом.

"Брат!Піва кончілась,
ти представляєш брат? Брат!Піва кончілась, жена ушла!"');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_279717_l1','pisniua_279717','YouTube','https://www.youtube.com/watch?v=YM9jmkabtfQ','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_278073';
DELETE FROM song_versions WHERE song_id = 'pisniua_278073';
DELETE FROM songs_fts WHERE song_id = 'pisniua_278073';
DELETE FROM songs WHERE id = 'pisniua_278073';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_278073','Молю','Музика: Тарас Курчик Слова: Н. Курян. Виконує: Тарас Курчик','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Молю, Господи, прости
Життя неправедні дороги
І силу дай мені нести
Моїх буденних днів тривоги.
Сльозу благаю осуши
І дай наснагу дочекатись
Того, що хочу досягти,
Того, з ким хочу привітатись.

Молю, молю, молю, молю.

Маріє, Ти огороди мене
Від всіх хотінь нечистих
І влий святої води
На біль, що серце жме і тисне.
Ти згусток сірих днів розвій
І засвіти єство коханням,
Щоб світлі помисли надій
Не дали місця для страждання.

Молю, молю, молю, молю...
Молю, молю, молю, молю...','[''pisni.org.ua'', ''cat:do-bohorodyci'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_278073'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_278073','Молю','Молю, Господи, прости
Життя неправедні дороги
І силу дай мені нести
Моїх буденних днів тривоги.
Сльозу благаю осуши
І дай наснагу дочекатись
Того, що хочу досягти,
Того, з ким хочу привітатись.

Молю, молю, молю, молю.

Маріє, Ти огороди мене
Від всіх хотінь нечистих
І влий святої води
На біль, що серце жме і тисне.
Ти згусток сірих днів розвій
І засвіти єство коханням,
Щоб світлі помисли надій
Не дали місця для страждання.

Молю, молю, молю, молю...
Молю, молю, молю, молю...');
DELETE FROM song_links WHERE song_id = 'pisniua_278697';
DELETE FROM song_versions WHERE song_id = 'pisniua_278697';
DELETE FROM songs_fts WHERE song_id = 'pisniua_278697';
DELETE FROM songs WHERE id = 'pisniua_278697';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_278697','Гоп, стоп Канада','Виконує: Семен Канада','uk','ukraine_1991',NULL,NULL,'mp3','Підбір акордів: the_nutcracker','Дайте мені хлібу, килю мурмеляду
Прощавайте хлопці, їду до Канади
Прощавайте хлопці, їду до Канади

Приспів:
Гоп-стоп Канада
Старих баб не нада
Молодих давайте
С    E      Am
А ви хлопці грайте

Гоп-стоп Канада
Нам рублів не нада
Доляри давайте
А ви хлопці грайте

По канаді ходжу, доляри рахую
А де ніч застане там і заночую          | (2)

Приспів.

Мати мають мину, батько ма гармату
Полягали спати, підірвали хату          | (2)

Приспів.

Столик за столиком, за столиком столик,
А за тим столиком сидить алкоголик      | (2)

Приспів.

Батько ма гармату, мати мають мину
Залягли у хаті, луплять по Берліну      | (2)

Приспів.                                | (2)(прискорюючись)','[''pisni.org.ua'', ''cat:43'', ''Еміґрантські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_278697'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_278697','Гоп, стоп Канада','Дайте мені хлібу, килю мурмеляду
Прощавайте хлопці, їду до Канади
Прощавайте хлопці, їду до Канади

Приспів:
Гоп-стоп Канада
Старих баб не нада
Молодих давайте
С    E      Am
А ви хлопці грайте

Гоп-стоп Канада
Нам рублів не нада
Доляри давайте
А ви хлопці грайте

По канаді ходжу, доляри рахую
А де ніч застане там і заночую          | (2)

Приспів.

Мати мають мину, батько ма гармату
Полягали спати, підірвали хату          | (2)

Приспів.

Столик за столиком, за столиком столик,
А за тим столиком сидить алкоголик      | (2)

Приспів.

Батько ма гармату, мати мають мину
Залягли у хаті, луплять по Берліну      | (2)

Приспів.                                | (2)(прискорюючись)');
DELETE FROM song_links WHERE song_id = 'pisniua_279063';
DELETE FROM song_versions WHERE song_id = 'pisniua_279063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_279063';
DELETE FROM songs WHERE id = 'pisniua_279063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_279063','Колискова','Музика: Галина Менкуш Слова: Володимир Іванишин. Виконує: Ніна Матвієнко, Євгенія Лихацька','uk','ukraine_before_1917',NULL,NULL,'http://www.youtube.com/watch?v=fwEtAwXgeaQ',NULL,'Гойда, гойда-гой, ніченька іде,
Діточок малих спатоньки кладе.
Під вікном тремтить вишенька мала,
В хатку проситься, бо прийшла зима.
Під вікном тремтить вишенька мала,
В хатку проситься, бо прийшла зима.

Гойда, гойда-гой, очка заплющи,
В сні щасливому зогрієшся ти.
Йди до хлопчика, люба вишенько,
В колисочці вам буде тепленько.
Йди до хлопчика, люба вишенько,
В колисочці вам буде тепленько.

Гойда, гойда-гой ніч прийшла до нас,
Діточкам малим спатоньки вже час.
Рости, хлопчику, з вишенькою враз,
Хай не скупиться доленька для вас.
Рости, хлопчику, з вишенькою враз,
Хай не скупиться доленька для вас','[''pisni.org.ua'', ''cat:all-ukraine'', ''cat:dytyachi'', ''cat:kolyskovi'', ''cat:narodni'', ''Загальноукраїнські пісні'', ''Дитячі пісні'', ''Колискові'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_279063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_279063','Колискова','Гойда, гойда-гой, ніченька іде,
Діточок малих спатоньки кладе.
Під вікном тремтить вишенька мала,
В хатку проситься, бо прийшла зима.
Під вікном тремтить вишенька мала,
В хатку проситься, бо прийшла зима.

Гойда, гойда-гой, очка заплющи,
В сні щасливому зогрієшся ти.
Йди до хлопчика, люба вишенько,
В колисочці вам буде тепленько.
Йди до хлопчика, люба вишенько,
В колисочці вам буде тепленько.

Гойда, гойда-гой ніч прийшла до нас,
Діточкам малим спатоньки вже час.
Рости, хлопчику, з вишенькою враз,
Хай не скупиться доленька для вас.
Рости, хлопчику, з вишенькою враз,
Хай не скупиться доленька для вас');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_279063_l1','pisniua_279063','YouTube','https://www.youtube.com/watch?v=O0p0pxiUDMY','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_279063_l2','pisniua_279063','YouTube','https://www.youtube.com/watch?v=mPAO0USeBNw','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_279063_l3','pisniua_279063','YouTube','https://www.youtube.com/watch?v=C9APDLDq4d8','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_279063_l4','pisniua_279063','YouTube','https://www.youtube.com/watch?v=YxFz5fik1_I','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_280495';
DELETE FROM song_versions WHERE song_id = 'pisniua_280495';
DELETE FROM songs_fts WHERE song_id = 'pisniua_280495';
DELETE FROM songs WHERE id = 'pisniua_280495';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_280495','Як сів пугач на могилі','Українська народна пісня. Виконує: Древо','uk','ukraine_before_1917',NULL,NULL,'1. надіслав Ілля Самойлов',NULL,'Як сів пугач на могилі,
Та й кри... та й крикнув він: пугу.
Чи не дасть Бог, ой, козакові
Хоч на... хоч на час подумать.

Наші шаблі поржавіли,
Ще й ру... ще й руж''я без курків.
Наше серце, козацькоє
Не бо... не боїться турків.

Колись були степи, плавні,
Та й по... та й позаростали.
Колись були, ой, дівки гарні,
Моска... москалі забрали.

Ой, колись ми панували,
Вже бі... вже більше не будем.
Тільки слави, ой, козацької
Повік... повік не забудем','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_280495'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_280495','Як сів пугач на могилі','Як сів пугач на могилі,
Та й кри... та й крикнув він: пугу.
Чи не дасть Бог, ой, козакові
Хоч на... хоч на час подумать.

Наші шаблі поржавіли,
Ще й ру... ще й руж''я без курків.
Наше серце, козацькоє
Не бо... не боїться турків.

Колись були степи, плавні,
Та й по... та й позаростали.
Колись були, ой, дівки гарні,
Моска... москалі забрали.

Ой, колись ми панували,
Вже бі... вже більше не будем.
Тільки слави, ой, козацької
Повік... повік не забудем');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_280495_l1','pisniua_280495','YouTube','https://www.youtube.com/watch?v=MQ8IfBnRfsw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_280495_l2','pisniua_280495','YouTube','https://www.youtube.com/watch?v=pb6sNQsWrig','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_280495_l3','pisniua_280495','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_280495_l4','pisniua_280495','http://www.umka.com.ua/ukr/catalogue/authentic-performing/drevo-group-oy-tam-za-morjamy-sil-s-ka-tradytsiyna-muzyka.html','http://www.umka.com.ua/ukr/catalogue/authentic-performing/drevo-group-oy-tam-za-morjamy-sil-s-ka-tradytsiyna-muzyka.html','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_280756';
DELETE FROM song_versions WHERE song_id = 'pisniua_280756';
DELETE FROM songs_fts WHERE song_id = 'pisniua_280756';
DELETE FROM songs WHERE id = 'pisniua_280756';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_280756','Соловейко',NULL,'uk','ukraine_1991',NULL,NULL,'Записано зі старенької аудіо касети.','Цю пісню виконував (і можливо записав) гурт "Добра новина" з Миколаївщини.','I
Сиві верби позгинались
Низько до ставка,
В чистих водах задивлялись
Синії небеса.
В дивнім вітті соловейко
Пісню щебетав,
В своїй пісні птах маленький
Господа прославляв.

Приспів:
Господа прославляв,
Господа прославляв,
В своїй пісні соловейко
Господа прославляв.

II
Вітер пісню в гай широкий
Полем житім ніс.
Де на пагорбі високім
Дуп могутній ріс.
Дуб ту пісню солов''їну
Заспівать не вмів.
Він розправив своє віття
Й сильно зашумів.

Програш.

III
Все творіння славить Бога,
Небо і земля.
Звеселись, моє серденько,
Буду співати я.
"Славу Богу!" - заспіваю
За його любов,
Бо Він спас мене від смерті
Пролив святую кров.

Приспів.

Господу честь хвала,
Господу честь хвала,
Бо він спас мене від смерті
Господу честь хвала.
Господу честь хвала,
Господу честь хвала,
Славу складаю, Богу співаю
Алілуя.
Áлілуя, áлілуя.
Буду вічно я співати:
"Богу алілуя!"','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_280756'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_280756','Соловейко','I
Сиві верби позгинались
Низько до ставка,
В чистих водах задивлялись
Синії небеса.
В дивнім вітті соловейко
Пісню щебетав,
В своїй пісні птах маленький
Господа прославляв.

Приспів:
Господа прославляв,
Господа прославляв,
В своїй пісні соловейко
Господа прославляв.

II
Вітер пісню в гай широкий
Полем житім ніс.
Де на пагорбі високім
Дуп могутній ріс.
Дуб ту пісню солов''їну
Заспівать не вмів.
Він розправив своє віття
Й сильно зашумів.

Програш.

III
Все творіння славить Бога,
Небо і земля.
Звеселись, моє серденько,
Буду співати я.
"Славу Богу!" - заспіваю
За його любов,
Бо Він спас мене від смерті
Пролив святую кров.

Приспів.

Господу честь хвала,
Господу честь хвала,
Бо він спас мене від смерті
Господу честь хвала.
Господу честь хвала,
Господу честь хвала,
Славу складаю, Богу співаю
Алілуя.
Áлілуя, áлілуя.
Буду вічно я співати:
"Богу алілуя!"');
DELETE FROM song_links WHERE song_id = 'pisniua_280313';
DELETE FROM song_versions WHERE song_id = 'pisniua_280313';
DELETE FROM songs_fts WHERE song_id = 'pisniua_280313';
DELETE FROM songs WHERE id = 'pisniua_280313';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_280313','Добро і зло','Слова: Вадим Крищенко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Добро і зло завжди були в борні.
Нащо слова, в яких порожні звуки?
В час загребущості, у час брехні
Знайдіть того, хто має чисті руки.

Махлюють всі, хто ближче до корит,
І казяться в нікчемному екстазі.
Хотіла правда вийти із воріт,
Та зачепилась враз на перелазі.

І знову ми у мороці зневір,
Нас обійшли всі сподівання боком.
Шукає Україна до сих пір
Серед своїх дітей собі пророка.','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_280313'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_280313','Добро і зло','Добро і зло завжди були в борні.
Нащо слова, в яких порожні звуки?
В час загребущості, у час брехні
Знайдіть того, хто має чисті руки.

Махлюють всі, хто ближче до корит,
І казяться в нікчемному екстазі.
Хотіла правда вийти із воріт,
Та зачепилась враз на перелазі.

І знову ми у мороці зневір,
Нас обійшли всі сподівання боком.
Шукає Україна до сих пір
Серед своїх дітей собі пророка.');
DELETE FROM song_links WHERE song_id = 'pisniua_27859';
DELETE FROM song_versions WHERE song_id = 'pisniua_27859';
DELETE FROM songs_fts WHERE song_id = 'pisniua_27859';
DELETE FROM songs WHERE id = 'pisniua_27859';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_27859','Лети, тужлива пісне','Музика: Богдан Весоловський Слова: Богдан Весоловський. Виконує: Лілія Коструба, Юрій Йосифович','uk','ukraine_1991',NULL,NULL,'Богдан Весоловський "Прийде ще час..." Львів "Галицька видавнича спілка" 2001',NULL,'Хоч і мені жить прийшлось в чужині,
До вас я серцем вертаюсь, рідні поля,
Де нам юність пройшла,
Вам я цю пісню співаю:

Лети, тужлива пісне,
Через море у даль...
Неси мою любов,
Мою тугу і мій жаль...

Лети у блакитні простори
буйним вітрам навздогін,
Неси понад Чорнеє Море
Рідним степам мій уклін...

Лети, тужлива пісне, через море у даль','[''pisni.org.ua'', ''cat:dances'', ''cat:emigration'', ''cat:tango'', ''Пісні до танцю'', ''Пісні про еміґрацію'', ''Танґо'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_27859'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_27859','Лети, тужлива пісне','Хоч і мені жить прийшлось в чужині,
До вас я серцем вертаюсь, рідні поля,
Де нам юність пройшла,
Вам я цю пісню співаю:

Лети, тужлива пісне,
Через море у даль...
Неси мою любов,
Мою тугу і мій жаль...

Лети у блакитні простори
буйним вітрам навздогін,
Неси понад Чорнеє Море
Рідним степам мій уклін...

Лети, тужлива пісне, через море у даль');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27859_l1','pisniua_27859','YouTube','https://www.youtube.com/watch?v=KMI6tb6-B3w','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27859_l2','pisniua_27859','YouTube','https://www.youtube.com/watch?v=lTGf9g-MQdU','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27859_l3','pisniua_27859','YouTube','https://www.youtube.com/watch?v=DOyXOwMstvU','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27859_l4','pisniua_27859','YouTube','https://www.youtube.com/watch?v=o8gPohrc1Dw','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27859_l5','pisniua_27859','YouTube','https://www.youtube.com/watch?v=qUhZJrG1qOo','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27859_l6','pisniua_27859','YouTube','https://www.youtube.com/watch?v=LzHhzYpTlPs','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27859_l7','pisniua_27859','YouTube','https://www.youtube.com/watch?v=VgoxwefYSPs','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27859_l8','pisniua_27859','YouTube','https://www.youtube.com/watch?v=IWX1GUaZSsg','video',NULL,8);
DELETE FROM song_links WHERE song_id = 'pisniua_27879';
DELETE FROM song_versions WHERE song_id = 'pisniua_27879';
DELETE FROM songs_fts WHERE song_id = 'pisniua_27879';
DELETE FROM songs WHERE id = 'pisniua_27879';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_27879','Було не тужити','(Не думалось ніколи). Музика: Богдан Весоловський Слова: Богдан Весоловський. Виконує: Буря, Антін Дербіш','uk','ukraine_1991',NULL,NULL,'Богдан Весоловський "Прийде ще час..." Львів "Галицька видавнича спілка" 2001','Акорди від АнастасіяОлександр.','Не думалось ніколи,
Щоб цей наш жарт малий
Зумів знайти в любови
Свій вислів чарівний,
E
І полюбились так дуже
Am
Наші серця,
А що вони кохають,
Am
На це вже ради нема.
Am
Було не тужити,
E
Було не кохати,
E
Було не казати
A
"Навіки, на все",
A7
Тепер вже запізно
Dm
Від чарів тікати,
Am
Бо серце твоє вже
Спокою не знайде.','[''pisni.org.ua'', ''cat:dances'', ''cat:tango'', ''Пісні до танцю'', ''Танґо'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_27879'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_27879','Було не тужити','Не думалось ніколи,
Щоб цей наш жарт малий
Зумів знайти в любови
Свій вислів чарівний,
E
І полюбились так дуже
Am
Наші серця,
А що вони кохають,
Am
На це вже ради нема.
Am
Було не тужити,
E
Було не кохати,
E
Було не казати
A
"Навіки, на все",
A7
Тепер вже запізно
Dm
Від чарів тікати,
Am
Бо серце твоє вже
Спокою не знайде.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27879_l1','pisniua_27879','YouTube','https://www.youtube.com/watch?v=S-HL6WEfJwk','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_27879_l2','pisniua_27879','YouTube','https://www.youtube.com/watch?v=_cYrpzJPYf0','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_280471';
DELETE FROM song_versions WHERE song_id = 'pisniua_280471';
DELETE FROM songs_fts WHERE song_id = 'pisniua_280471';
DELETE FROM songs WHERE id = 'pisniua_280471';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_280471','Калина-малина верхи похилила','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. надіслав Ілля Самойлов',NULL,'Жіночий голос:
Калина-малина верхи похилила.
Ой, це ж тая, ой, дівчинонька,
Що мене вірно любила.

Любила-кохала, любить присягала,
Ой, ти мила, ой, кониченька
Сама його й осідлала.

Тай винесла рибки, паляниці скибку,
Ой, це ж тобі, та мій миленький,
Та вечеря нашвидку.

Вечеряй, вечеряй, та й не сомлівайся,
Ой, єслі ж ти, ой, нежонатий,
То зо мною кохайся.

Чоловічий голос:
Єсть у мене батько, єсть у мене мати,
Ой, не буду, ой серце моє,
Ой, з тобой ночувати.

Єсть у мене жінка, єсть у мене діти,
Ой, рад би я, ой, серце моє,
Та до їх полетіти.','[''pisni.org.ua'', ''cat:kozacki'', ''cat:kubanski'', ''Козацькі пісні'', ''Кубанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_280471'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_280471','Калина-малина верхи похилила','Жіночий голос:
Калина-малина верхи похилила.
Ой, це ж тая, ой, дівчинонька,
Що мене вірно любила.

Любила-кохала, любить присягала,
Ой, ти мила, ой, кониченька
Сама його й осідлала.

Тай винесла рибки, паляниці скибку,
Ой, це ж тобі, та мій миленький,
Та вечеря нашвидку.

Вечеряй, вечеряй, та й не сомлівайся,
Ой, єслі ж ти, ой, нежонатий,
То зо мною кохайся.

Чоловічий голос:
Єсть у мене батько, єсть у мене мати,
Ой, не буду, ой серце моє,
Ой, з тобой ночувати.

Єсть у мене жінка, єсть у мене діти,
Ой, рад би я, ой, серце моє,
Та до їх полетіти.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_280471_l1','pisniua_280471','YouTube','https://www.youtube.com/watch?v=9C_oIURSqOw','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_280471_l2','pisniua_280471','YouTube','https://www.youtube.com/watch?v=apX6VPyvFhs','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_279414';
DELETE FROM song_versions WHERE song_id = 'pisniua_279414';
DELETE FROM songs_fts WHERE song_id = 'pisniua_279414';
DELETE FROM songs WHERE id = 'pisniua_279414';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_279414','Розпрощався стрілець *','Українська народна пісня. Виконує: Василь Лютий','uk','ukraine_before_1917',NULL,NULL,'1. http://vasyl.org.ua/',NULL,'Розпрощався стрілець із своєю ріднею
І поїхав в далеку дорогу -
За свій рідний край, за козацький звичай,
Йшов у бій за свою перемогу.

А вітер колише високу траву,
Молодий дуб додолу схилився,
Листям шелестить, вбитий стрілець лежить,
Його коник над ним зажурився.

Ой, ти коню, мій коню, не стій наді мною,
Я полежу на землі невкритий.
Ти біжи, коню мій, скажи неньці рідній,
Що я за Україну убитий.

Нехай батько і мати, і сестри, і брати -
Нехай вони за мною не плачуть.
Я у степу лежу, по Вкраїні тужу,
Чорний крук наді мною все кряче.

Ряди ж за рядами стрільці йдуть полками,
До походу гармати їм грають.
А за їхню честь лиш березовий хрест,
Дрібні сльози на землю спадають.

Розпрощався стрілець із своєю ріднею
Та й поїхав в далеку дорогу -
За свій рідний край, за козацький звичай,
Йшов у бій за свою перемогу.','[''pisni.org.ua'', ''cat:kubanski'', ''Кубанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_279414'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_279414','Розпрощався стрілець *','Розпрощався стрілець із своєю ріднею
І поїхав в далеку дорогу -
За свій рідний край, за козацький звичай,
Йшов у бій за свою перемогу.

А вітер колише високу траву,
Молодий дуб додолу схилився,
Листям шелестить, вбитий стрілець лежить,
Його коник над ним зажурився.

Ой, ти коню, мій коню, не стій наді мною,
Я полежу на землі невкритий.
Ти біжи, коню мій, скажи неньці рідній,
Що я за Україну убитий.

Нехай батько і мати, і сестри, і брати -
Нехай вони за мною не плачуть.
Я у степу лежу, по Вкраїні тужу,
Чорний крук наді мною все кряче.

Ряди ж за рядами стрільці йдуть полками,
До походу гармати їм грають.
А за їхню честь лиш березовий хрест,
Дрібні сльози на землю спадають.

Розпрощався стрілець із своєю ріднею
Та й поїхав в далеку дорогу -
За свій рідний край, за козацький звичай,
Йшов у бій за свою перемогу.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_279414_l1','pisniua_279414','YouTube','https://www.youtube.com/watch?v=YJXwn0CT7Uo','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_279414_l2','pisniua_279414','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_280267';
DELETE FROM song_versions WHERE song_id = 'pisniua_280267';
DELETE FROM songs_fts WHERE song_id = 'pisniua_280267';
DELETE FROM songs WHERE id = 'pisniua_280267';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_280267','За рідний край','Музика: Теодор Кукуруза Слова: Теодор Кукуруза. Виконує: Теодор Кукуруза','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Ці священні величні слова
Із минувшини нашої йдуть,
Вони в честь України звучать
І додому назавши ведуть.

Приспів:
Про рідний край, про рідний край,
Про рідний край не забувай,
А рідний край, а рідний край,
А рідний край оберігай.
І рідний край, і рідний край,
І рідний край люби - вивчай,
За рідний край, за рідний край,
За рідний край молись і дбай.

Йшли роки і минали віки,
Покоління відходили в вічність,
Та з прапрадідів і материнства
Зберігалася в нас Божа гідність.

Приспів.

Тож нехай не потонем в гріхах
Збережемо і єдність і віру,
Хай звучить у майбутніх віках,
Поколінь та словесна віра.

Приспів.','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_280267'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_280267','За рідний край','Ці священні величні слова
Із минувшини нашої йдуть,
Вони в честь України звучать
І додому назавши ведуть.

Приспів:
Про рідний край, про рідний край,
Про рідний край не забувай,
А рідний край, а рідний край,
А рідний край оберігай.
І рідний край, і рідний край,
І рідний край люби - вивчай,
За рідний край, за рідний край,
За рідний край молись і дбай.

Йшли роки і минали віки,
Покоління відходили в вічність,
Та з прапрадідів і материнства
Зберігалася в нас Божа гідність.

Приспів.

Тож нехай не потонем в гріхах
Збережемо і єдність і віру,
Хай звучить у майбутніх віках,
Поколінь та словесна віра.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_28096';
DELETE FROM song_versions WHERE song_id = 'pisniua_28096';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28096';
DELETE FROM songs WHERE id = 'pisniua_28096';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28096','Ой на Купала','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Філарет Колесса "Шкільний співаник"',NULL,'Ой на Купала, Купалочка,
Не виспалася Наталочка.

Погнала бички дрімаючи,
На кілки ніжки збиваючи.','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28096'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28096','Ой на Купала','Ой на Купала, Купалочка,
Не виспалася Наталочка.

Погнала бички дрімаючи,
На кілки ніжки збиваючи.');
DELETE FROM song_links WHERE song_id = 'pisniua_281990';
DELETE FROM song_versions WHERE song_id = 'pisniua_281990';
DELETE FROM songs_fts WHERE song_id = 'pisniua_281990';
DELETE FROM songs WHERE id = 'pisniua_281990';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_281990','Моя Україна','(Золотавий вечір впав...). Музика: Микола Свидюк Слова: Марія Бойко. Виконує: Микола Свидюк, Раїса Кириченко, Марта Шпак','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Золотавий вечір впав на тихі верби
Солов''їна пісня ллється вдалині,
І грайлива річка між гаями в''ється   |
Все це Україна, все це я і ти,       | (2)

Приспів:
Моя Україна - червона калина,
Надія єдина - це земля моя.
Моя Україна - червона калина,
Надія єдина - це любов моя - моя любов.

Дихати тут легко і пісні сопілки
Доле моя доле - щастя принеси,
Щоб моя родина та моя Вкраїна        |
В мирі та єднанні довіку жили.       | (2)

Це моя Вкраїна, тут моє коріння,
Моя мова рідна і мої батьки.
В світі все минає, тільки зостається |
Мамине чекання та любов землі.       | (2)','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_281990'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_281990','Моя Україна','Золотавий вечір впав на тихі верби
Солов''їна пісня ллється вдалині,
І грайлива річка між гаями в''ється   |
Все це Україна, все це я і ти,       | (2)

Приспів:
Моя Україна - червона калина,
Надія єдина - це земля моя.
Моя Україна - червона калина,
Надія єдина - це любов моя - моя любов.

Дихати тут легко і пісні сопілки
Доле моя доле - щастя принеси,
Щоб моя родина та моя Вкраїна        |
В мирі та єднанні довіку жили.       | (2)

Це моя Вкраїна, тут моє коріння,
Моя мова рідна і мої батьки.
В світі все минає, тільки зостається |
Мамине чекання та любов землі.       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_281990_l1','pisniua_281990','YouTube','https://www.youtube.com/watch?v=KVYfzyIrjQ0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_281990_l2','pisniua_281990','YouTube','https://www.youtube.com/watch?v=9zVROBjQbVM','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_281990_l3','pisniua_281990','YouTube','https://www.youtube.com/watch?v=FwMhKUrFi_Y','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_279124';
DELETE FROM song_versions WHERE song_id = 'pisniua_279124';
DELETE FROM songs_fts WHERE song_id = 'pisniua_279124';
DELETE FROM songs WHERE id = 'pisniua_279124';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_279124','Весна для тебе','Музика: Микола Свидюк Слова: Вадим Крищенко. Виконує: Василь Зінкевич','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Де в ліс вростає далина
За синіми потоками,
Нас приголубила весна
Словами кароокими.
І причастила нас іще,       |
Щоб озивалась гомоном,      |
Пахучим наче цвіт дощем,    | (2)
Як ласка чистим променем.   |

Приспів:
Ця весна для тебе, ця весна для мене,
Ця весна для поля, ця весна для неба -
Березневе сонце зустрічає нас
І любов дарує в неповторний час.

Замалювався сум зими
Весни веселим кольором,
Озвучились неначе мить -
Давай же поговоримо,
То ж не барися, я прийшов
До тебе на побачення
І наша молода любов
Весняним днем освячена.

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_279124'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_279124','Весна для тебе','Де в ліс вростає далина
За синіми потоками,
Нас приголубила весна
Словами кароокими.
І причастила нас іще,       |
Щоб озивалась гомоном,      |
Пахучим наче цвіт дощем,    | (2)
Як ласка чистим променем.   |

Приспів:
Ця весна для тебе, ця весна для мене,
Ця весна для поля, ця весна для неба -
Березневе сонце зустрічає нас
І любов дарує в неповторний час.

Замалювався сум зими
Весни веселим кольором,
Озвучились неначе мить -
Давай же поговоримо,
То ж не барися, я прийшов
До тебе на побачення
І наша молода любов
Весняним днем освячена.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_279124_l1','pisniua_279124','YouTube','https://www.youtube.com/watch?v=iK0FENlSWg4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_279124_l2','pisniua_279124','YouTube','https://www.youtube.com/watch?v=-E29BcH7Y38','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_280798';
DELETE FROM song_versions WHERE song_id = 'pisniua_280798';
DELETE FROM songs_fts WHERE song_id = 'pisniua_280798';
DELETE FROM songs WHERE id = 'pisniua_280798';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_280798','Шафран','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Пісня записана від місцевої фольклористики Євгенії Тондій.',NULL,'Ой, на городі шафран, шафран
Ходить той Іван як пан, як пан.
А на городі петрушечка
Ходить Іван той, як душечка.
Шафран петрушку прикриває
Іван Марію - обнімає.
А ще рушничків не напряла,
А вже Івана сподобала.
А ще рушнички на верстаку,
А вже старости й у хаті.','[''pisni.org.ua'', ''cat:kupalski'', ''cat:podilski'', ''Купальські пісні'', ''Пісні з Поділля'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_280798'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_280798','Шафран','Ой, на городі шафран, шафран
Ходить той Іван як пан, як пан.
А на городі петрушечка
Ходить Іван той, як душечка.
Шафран петрушку прикриває
Іван Марію - обнімає.
А ще рушничків не напряла,
А вже Івана сподобала.
А ще рушнички на верстаку,
А вже старости й у хаті.');
DELETE FROM song_links WHERE song_id = 'pisniua_282063';
DELETE FROM song_versions WHERE song_id = 'pisniua_282063';
DELETE FROM songs_fts WHERE song_id = 'pisniua_282063';
DELETE FROM songs WHERE id = 'pisniua_282063';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_282063','Сповнилась міра','Музика: Михайло Гайворонський Слова: Петро Карманський','uk','ukraine_before_1917',NULL,'1916','аудіозапис','пісня УСС, найбільше її виконували хори в 1916-1918 р.р.','Сповнилась міра, кров братів,
Нелюдські злочини катів
І зганьблена народна честь
Зродила месть, криваву месть.

Най громи грянуть в нашу скрань, |
Нехай займеться в грудях грань,  |
Настав вже час, прийшла пора,    |
Ура у бій! Ура! Ура!             | (2)','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_282063'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_282063','Сповнилась міра','Сповнилась міра, кров братів,
Нелюдські злочини катів
І зганьблена народна честь
Зродила месть, криваву месть.

Най громи грянуть в нашу скрань, |
Нехай займеться в грудях грань,  |
Настав вже час, прийшла пора,    |
Ура у бій! Ура! Ура!             | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_282124';
DELETE FROM song_versions WHERE song_id = 'pisniua_282124';
DELETE FROM songs_fts WHERE song_id = 'pisniua_282124';
DELETE FROM songs WHERE id = 'pisniua_282124';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_282124','Кладочка','Музика: Лев Лепкий Слова: Богдан Лепкий. Виконує: Нескорені','uk','ukrainian_peoples_republic_1917_1921',NULL,'1920','1. Повік не зів''яне. Стрілецькі пісні Михайла Гайворонського. Упор. В. Подуфалий. Тернопіль, 1990. 2. Аркуш із партитурою для мішаного хору Богдана Вахнянина. Народнє музичне видавницто товариства "Просвіта" у Львові. Орієнтовно 1920-30 р. 3. Сурма. Орієнтовно 1920-і р.р. (Ксерокопія збірника стрілецьких пісень без вихідних даних) 4. Ой у лузі червона калина. Пісні українських січових стрільців. - Львів: "Світ", 1990.','Перший варіант співався під гітару (дж. 3). Обробка М. Гайворонського. Обробка для мішаного хору Богдана Вахнянина (дж. 2). У джерелах 2-4 відсутні 5 і 6-й куплети.','Кладочка, кладочка вузесенькая, -
Милая, милая, милесенькая.

До милої мені близько,
Йно через стависько,
Вчора дощик, нині дощик,
Завтра буде слизько.

Вчора дощик, нині дощик,
Завтра виллють ріки.
Либонь ми ся, дівчинонько,
Розійдем навіки.

Ой яке ж ти, дівчинонько,
Лихо учинила,
Що та кладочка вузенька
Вже ся заломила.

А вже з тої кладочки
Сліду не видати.
До моєї дівчиноньки
Не пускає мати.

А я річку і ставочок
Возьму перескочу.
До моєї дівчиноньки
Піду, коли схочу','[''pisni.org.ua'', ''cat:halycki'', ''cat:strilecki'', ''Пісні з Галичини'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_282124'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_282124','Кладочка','Кладочка, кладочка вузесенькая, -
Милая, милая, милесенькая.

До милої мені близько,
Йно через стависько,
Вчора дощик, нині дощик,
Завтра буде слизько.

Вчора дощик, нині дощик,
Завтра виллють ріки.
Либонь ми ся, дівчинонько,
Розійдем навіки.

Ой яке ж ти, дівчинонько,
Лихо учинила,
Що та кладочка вузенька
Вже ся заломила.

А вже з тої кладочки
Сліду не видати.
До моєї дівчиноньки
Не пускає мати.

А я річку і ставочок
Возьму перескочу.
До моєї дівчиноньки
Піду, коли схочу');
DELETE FROM song_links WHERE song_id = 'pisniua_28175';
DELETE FROM song_versions WHERE song_id = 'pisniua_28175';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28175';
DELETE FROM songs WHERE id = 'pisniua_28175';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28175','Хміль лугами','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Філарет Колесса "Шкільний співаник"',NULL,'Хміль лугами, хміль лугами, а пшениця ярами,(2)
"Ходи, ходи, Ганусенько, повечеряймо з нами". (2)

Хміль не в''ється, хміль не в''ється, а пшениця не жнеться: (2)
А вже ж мені, подруженьки, дівування минеться. (2)','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28175'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28175','Хміль лугами','Хміль лугами, хміль лугами, а пшениця ярами,(2)
"Ходи, ходи, Ганусенько, повечеряймо з нами". (2)

Хміль не в''ється, хміль не в''ється, а пшениця не жнеться: (2)
А вже ж мені, подруженьки, дівування минеться. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_281165';
DELETE FROM song_versions WHERE song_id = 'pisniua_281165';
DELETE FROM songs_fts WHERE song_id = 'pisniua_281165';
DELETE FROM songs WHERE id = 'pisniua_281165';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_281165','Чотири воли пасу я','Українська народна пісня. Виконує: Євгенія Мірошниченко, Валентина Степова, Марія Стеф''юк, Гурт "Зоряна ніч"','uk','ukraine_before_1917',NULL,NULL,NULL,'Українська народна пісня, записана А. Кос-Анатольським в Коломиї Виконують: Євгенія Мирошніченко, Валентина Степова, Марія Стеф''юк','Чотири воли пасу я
У зеленому гайочку.
Знайшов собі милий другу,
Залишив мя Іваночко.
Гей, воли мої, гей!
Залишив мя Іваночко

Чотири воли пасу я,
На них тисовії ярма.
Нащо, Йванку, ти цілував
Моє біле личко дарма?
Гей, воли мої, гей!
Моє біле личко дарма?

Скільки раз його цілував,
Стільки в небі зірок бачу.
Бодай, Йванку, ти не чував,
Як за тобов гірко плачу.
Гей, воли мої, гей!
Як за тобов гірко плачу','[''pisni.org.ua'', ''cat:dances'', ''cat:halycki'', ''cat:polky'', ''Пісні до танцю'', ''Пісні з Галичини'', ''Польки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_281165'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_281165','Чотири воли пасу я','Чотири воли пасу я
У зеленому гайочку.
Знайшов собі милий другу,
Залишив мя Іваночко.
Гей, воли мої, гей!
Залишив мя Іваночко

Чотири воли пасу я,
На них тисовії ярма.
Нащо, Йванку, ти цілував
Моє біле личко дарма?
Гей, воли мої, гей!
Моє біле личко дарма?

Скільки раз його цілував,
Стільки в небі зірок бачу.
Бодай, Йванку, ти не чував,
Як за тобов гірко плачу.
Гей, воли мої, гей!
Як за тобов гірко плачу');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_281165_l1','pisniua_281165','YouTube','https://www.youtube.com/watch?v=Q8qOkE9LSfI','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_281165_l2','pisniua_281165','YouTube','https://www.youtube.com/watch?v=d9jMyxtl-UU','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_281165_l3','pisniua_281165','YouTube','https://www.youtube.com/watch?v=-NYuCWdg_bU','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_281165_l4','pisniua_281165','YouTube','https://www.youtube.com/watch?v=hKAOQl0tMAo','video',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_282199';
DELETE FROM song_versions WHERE song_id = 'pisniua_282199';
DELETE FROM songs_fts WHERE song_id = 'pisniua_282199';
DELETE FROM songs WHERE id = 'pisniua_282199';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_282199','Сонце низенько, вечір близенько','Слова: Іван Котляревський','uk','ukraine_before_1917',NULL,NULL,'http://poetry.uazone.net',NULL,'Сонце низенько, вечір близенько,
Іди до мене, моє серденько!             | (2)

Ой вийди, вийди, та не барися,
Моє серденько, розвеселися.             | (2)

Ой вийди, вийди, серденько, Галю,
Серденько, рибонько, дорогий кришталю!  | (2)

Ой вийди, вийди, не бійсь морозу,
Я твої ніженьки в шапочку вложу.        | (2)

Через річеньку, через болото
Подай рученьку, моє золото!             | (2)

Через річеньку, через биструю
Подай рученьку, подай другую!           | (2)

Ой біда, біда, що я не вдався, —
Брів через річеньку, та не вмивався.    | (2)

Ой завернуся та умиюся,
На свою милую хоч подивлюся.            | (2)

"Ой, не вертайся, та не вмивайся,
Ти ж мені, серденько, й так сподобався. | (2)

Ой там криниця під перелазом —
Вмиємось, серденько, обоє разом.        | (2)

Моя хустина шовками шита —
Утремось, серденько, хоч буду бита.     | (2)

Битиме мати, знатиму, за що:
За тебе, серденько, не за ледащо!"      | (2)','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_282199'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_282199','Сонце низенько, вечір близенько','Сонце низенько, вечір близенько,
Іди до мене, моє серденько!             | (2)

Ой вийди, вийди, та не барися,
Моє серденько, розвеселися.             | (2)

Ой вийди, вийди, серденько, Галю,
Серденько, рибонько, дорогий кришталю!  | (2)

Ой вийди, вийди, не бійсь морозу,
Я твої ніженьки в шапочку вложу.        | (2)

Через річеньку, через болото
Подай рученьку, моє золото!             | (2)

Через річеньку, через биструю
Подай рученьку, подай другую!           | (2)

Ой біда, біда, що я не вдався, —
Брів через річеньку, та не вмивався.    | (2)

Ой завернуся та умиюся,
На свою милую хоч подивлюся.            | (2)

"Ой, не вертайся, та не вмивайся,
Ти ж мені, серденько, й так сподобався. | (2)

Ой там криниця під перелазом —
Вмиємось, серденько, обоє разом.        | (2)

Моя хустина шовками шита —
Утремось, серденько, хоч буду бита.     | (2)

Битиме мати, знатиму, за що:
За тебе, серденько, не за ледащо!"      | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_282199_l1','pisniua_282199','YouTube','https://www.youtube.com/watch?v=dAMz_7qtm7M','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_282199_l2','pisniua_282199','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_28158';
DELETE FROM song_versions WHERE song_id = 'pisniua_28158';
DELETE FROM songs_fts WHERE song_id = 'pisniua_28158';
DELETE FROM songs WHERE id = 'pisniua_28158';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_28158','Доля','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Філарет Колесса "Шкільний співаник"',NULL,'Ой мовив же єсь, з бука листочку, що не будеш падати. (2)
Ой мовив же єсь, ти мій батеньку, що мя не даш від хати. (2)
А тепер даєш, та сам не знаєш, що за доленька буде. (2)
"Всього ті даю, що дома маю, долі ті не вгадаю". (2)','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_28158'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_28158','Доля','Ой мовив же єсь, з бука листочку, що не будеш падати. (2)
Ой мовив же єсь, ти мій батеньку, що мя не даш від хати. (2)
А тепер даєш, та сам не знаєш, що за доленька буде. (2)
"Всього ті даю, що дома маю, долі ті не вгадаю". (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_282961';
DELETE FROM song_versions WHERE song_id = 'pisniua_282961';
DELETE FROM songs_fts WHERE song_id = 'pisniua_282961';
DELETE FROM songs WHERE id = 'pisniua_282961';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_282961','У мандри, у мандри','Музика: Іван Недільський Слова: Ф. Смеречук','uk','ukraine_1991',NULL,NULL,'1. http://upyu.plastscouting.org/spivanyk',NULL,'У мандри, у мандри ходім, юні друзі,
Із співом веселим, бадьорим,
До гір, що синіють на обрієкрузі,
В широкі, розлогі простори.

Хай сонце і вітер нам пестять обличчя,
Хай міць у серцях могутніє,
Хай наша країна буйна й таємнича,
Хай сила у грудях міцніє...

В мандрівку! У простір! Маґнетом далекі
Нас тягнуть камінні дороги.
Ходім, побратими! Шуміть нам, смереки!
Освічуй нам путь, ясногорий','[''pisni.org.ua'', ''cat:manrivni'', ''cat:plastovi'', ''Пісні на мандрівну тематику'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_282961'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_282961','У мандри, у мандри','У мандри, у мандри ходім, юні друзі,
Із співом веселим, бадьорим,
До гір, що синіють на обрієкрузі,
В широкі, розлогі простори.

Хай сонце і вітер нам пестять обличчя,
Хай міць у серцях могутніє,
Хай наша країна буйна й таємнича,
Хай сила у грудях міцніє...

В мандрівку! У простір! Маґнетом далекі
Нас тягнуть камінні дороги.
Ходім, побратими! Шуміть нам, смереки!
Освічуй нам путь, ясногорий');
DELETE FROM song_links WHERE song_id = 'pisniua_281091';
DELETE FROM song_versions WHERE song_id = 'pisniua_281091';
DELETE FROM songs_fts WHERE song_id = 'pisniua_281091';
DELETE FROM songs WHERE id = 'pisniua_281091';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_281091','А роки летять, мов кулі','(Тож цілуй мене негайно). Музика: Роберт Голованенко Слова: Василь Кузан','uk','ukraine_1991',NULL,NULL,'1. Книга "Золото Карпат", авторське подання',NULL,'А роки летять, мов кулі,
Менше вже кують зозулі -
Скоро тіла насолоду
Старість висмокче до дна.

Скоро зморшками пооре
Наші душі, наші мрії,
Наші весни, мов повії,
З іншими підуть у ніч.

Скоро згаснуть наші ранки,
Стануть шторами фіранки,
Зорі - краплями вина.

Тож цілуй мене негайно,
Хай нам буде нині файно,
Хай кохання не мина.','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_281091'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_281091','А роки летять, мов кулі','А роки летять, мов кулі,
Менше вже кують зозулі -
Скоро тіла насолоду
Старість висмокче до дна.

Скоро зморшками пооре
Наші душі, наші мрії,
Наші весни, мов повії,
З іншими підуть у ніч.

Скоро згаснуть наші ранки,
Стануть шторами фіранки,
Зорі - краплями вина.

Тож цілуй мене негайно,
Хай нам буде нині файно,
Хай кохання не мина.');
