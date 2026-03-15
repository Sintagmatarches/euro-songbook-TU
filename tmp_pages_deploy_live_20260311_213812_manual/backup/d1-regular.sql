PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE users (
    id TEXT PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    pass_hash TEXT NOT NULL,
    role TEXT NOT NULL CHECK(role IN ('user','admin')),
    created_at TEXT NOT NULL
  );
INSERT INTO "users" VALUES('u09005cadfa2a912b','u1738884609@test.com','pbkdf2$120000$q79qsLS8Q2wkbvlOOlx+iQ$xFfgW78IYaBZ3WdH9YVfil9q4N0zfkDR0YgmYB/704I','admin','2026-02-09 15:53:42');
INSERT INTO "users" VALUES('u7ab6ee143943751e','u1633168727@test.com','pbkdf2$100000$m3Hvh3TdIt4Tp7e1mU+g4A$IQZ3y3Vzx8al2VQRcfmmFOg7TTKmLaL/EmhJHqT4Syw','user','2026-02-09 15:58:10');
INSERT INTO "users" VALUES('ub8923d49c8759160','u442441685@test.com','pbkdf2$100000$4F1zV9LH966Nxl3Dx3xbEQ$A+ZJ6ieY43h0/FYUkdggnayZ7DKeEiHkn8VIXqmqFJ4','user','2026-02-09 16:02:16');
INSERT INTO "users" VALUES('u42b8c776e295ebfd','u904914693@test.com','pbkdf2$100000$RZ+1RZEB5cm6nwJM8ftifA$Z8t333HcpqLgGsgVCgQKU2KMahA+aWTpu6AberbXZjs','user','2026-02-09 16:08:23');
INSERT INTO "users" VALUES('u7fc905053faaa915','u1304741673@test.com','pbkdf2$100000$4ZsjdaZAXmkDG2r+yNOUgw$xvbNohTVsv0HELcZ0XSyBur6cq2GH1LGKLtZFAb/1+Q','user','2026-02-09 16:15:53');
INSERT INTO "users" VALUES('u4e4b97cee4464582','sintagmatarches@gmail.com','pbkdf2$100000$5aDdZnf8RfwH9JAjaqR0Eg$MKehJrevKTfLAw22Ak8gOijTcyCpipkn6bEiwEDSMVU','user','2026-02-09 16:22:16');
INSERT INTO "users" VALUES('ub6ebc72f27043c03','nikolaevskyivalera@gmail.com','pbkdf2$100000$At2UDNUfqAwq37sj0J5hsQ$0uOUqlMcJ+mI17/5BppIeGa0FuJlCHusaP723iLMa7I','user','2026-02-09 16:24:29');
PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE songs (
    id TEXT PRIMARY KEY,
    title TEXT NOT NULL,
    subtitle TEXT,
    lang TEXT NOT NULL,
    country TEXT,
    period TEXT,
    year TEXT,
    source TEXT,
    notes TEXT,
    lyrics TEXT NOT NULL,
    tags_json TEXT NOT NULL DEFAULT '[]',
    status TEXT NOT NULL CHECK(status IN ('draft','published')) DEFAULT 'published',
    created_at TEXT NOT NULL,
    updated_at TEXT NOT NULL
  );
INSERT INTO "songs" VALUES('s_demo_du_nai','У ворот, ворот (Ай, Дунай мой Дунай)','русская народная песня','ru','Россия','фольклор',NULL,'указать источник текста','Демо-запись для каркаса проекта.',replace('У ворот, ворот, ворот,\nДа ворот батюшкиных.\nАй, Дунай, мой Дунай,\nАй, весёлый Дунай!\n\n(дальше текст по твоим данным)','\n',char(10)),'["folk","river"]','published','2026-02-09 15:42:34','2026-02-09 15:42:34');
INSERT INTO "songs" VALUES('s_demo_captains','Мы будем капитанами','"Гуляют волны белые"','ru','СССР','Вторая мировая','1941','Предоставлено пользователем','Музыка: Н. Чемберджи; слова: С. Островой (1941). Исполняет: Вокальный ансамбль и оркестр отдела детского вещания ВРК п/у Б. С. Шермана. Хормейстер И. Кувыкин (1941).',replace('Гуляют волны белые,\nПросторы широки.\nВыходят в море смелые\nРебята-моряки.\nИ ветер над лиманами,\nИ дышится вольней,\nМы будем капитанами,\nЛюбимцами морей!\n\nПрипев:\nКолышется парус крылатый,\nИ солнце бежит по волнам.\nПопутного ветра, ребята,\nСчастливого плаванья вам!\n\nСпеша нас в море вынести,\nБайдарка мчит вперёд.\nСкорей бы только вырасти -\nСлужить пойдём во флот.\nМорями, океанами\nНаш красный вымпел, рей,\nМы будем капитанами,\nЛюбимцами морей!\n\nПрипев.\n\nИ если в океане нам\nПридётся дрейфовать,\nБадигиным, Папаниным\nЛюбой сумеет стать.\nНи штормом, ни туманами\nС дороги нас не сбить.\nМы будем капитанами\nПросторы бороздить!\n\nПрипев.','\n',char(10)),'["море"]','published','2026-02-09 15:42:34','2026-02-09 15:42:34');
INSERT INTO "songs" VALUES('s_demo_pockmarked','Песня рябого парня','народная','ru',NULL,'фольклор',NULL,'Предоставлено пользователем',NULL,replace('В саду яблоня цветет,\nПод окном девица шьёт,\nМне рубашку вышивает,\nЗолотой узор кладёт,\nЖдёт милого, поджидает,\nА милой-то не идёт!\nИ в оконце не глядит,\nНа крыльцо стрелой летит.\nРасцелую мою кралю,\nНа ушко шепну словцо,\nКрасным маком запылает,\nЗарумяненно лицо!','\n',char(10)),'[]','published','2026-02-09 15:42:34','2026-02-09 15:42:34');
PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE song_versions (
    id TEXT PRIMARY KEY,
    song_id TEXT NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
    title TEXT,
    lang TEXT,
    lyrics TEXT NOT NULL,
    source TEXT,
    sort_order INTEGER NOT NULL DEFAULT 0
  );
INSERT INTO "song_versions" VALUES('vee6fa55cec217789','s_demo_du_nai','Вариант 1','ru','(сюда вариант текста)','указать источник варианта',0);
PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE song_links (
    id TEXT PRIMARY KEY,
    song_id TEXT NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
    title TEXT,
    url TEXT NOT NULL,
    kind TEXT,
    sort_order INTEGER NOT NULL DEFAULT 0
  );
INSERT INTO "song_links" VALUES('l531a98c5b133f6a4','s_demo_du_nai','Поиск на YouTube','https://www.youtube.com/results?search_query=%D0%A3+%D0%B2%D0%BE%D1%80%D0%BE%D1%82+%D0%B2%D0%BE%D1%80%D0%BE%D1%82+%D0%94%D1%83%D0%BD%D0%B0%D0%B9','youtube',0);
PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE favorites (
    user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    song_id TEXT NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
    created_at TEXT NOT NULL,
    PRIMARY KEY(user_id, song_id)
  );
PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE IF NOT EXISTS 'songs_fts_config'(k PRIMARY KEY, v) WITHOUT ROWID;
INSERT INTO "songs_fts_config" VALUES('version',4);
PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE IF NOT EXISTS 'songs_fts_content'(id INTEGER PRIMARY KEY, c0, c1, c2);
INSERT INTO "songs_fts_content" VALUES(1,'s_demo_du_nai','У ворот, ворот (Ай, Дунай мой Дунай)',replace('У ворот, ворот, ворот,\nДа ворот батюшкиных.\nАй, Дунай, мой Дунай,\nАй, весёлый Дунай!\n\n(дальше текст по твоим данным)','\n',char(10)));
INSERT INTO "songs_fts_content" VALUES(2,'s_demo_captains','Мы будем капитанами',replace('Гуляют волны белые,\nПросторы широки.\nВыходят в море смелые\nРебята-моряки.\nИ ветер над лиманами,\nИ дышится вольней,\nМы будем капитанами,\nЛюбимцами морей!\n\nПрипев:\nКолышется парус крылатый,\nИ солнце бежит по волнам.\nПопутного ветра, ребята,\nСчастливого плаванья вам!\n\nСпеша нас в море вынести,\nБайдарка мчит вперёд.\nСкорей бы только вырасти -\nСлужить пойдём во флот.\nМорями, океанами\nНаш красный вымпел, рей,\nМы будем капитанами,\nЛюбимцами морей!\n\nПрипев.\n\nИ если в океане нам\nПридётся дрейфовать,\nБадигиным, Папаниным\nЛюбой сумеет стать.\nНи штормом, ни туманами\nС дороги нас не сбить.\nМы будем капитанами\nПросторы бороздить!\n\nПрипев.','\n',char(10)));
INSERT INTO "songs_fts_content" VALUES(3,'s_demo_pockmarked','Песня рябого парня',replace('В саду яблоня цветет,\nПод окном девица шьёт,\nМне рубашку вышивает,\nЗолотой узор кладёт,\nЖдёт милого, поджидает,\nА милой-то не идёт!\nИ в оконце не глядит,\nНа крыльцо стрелой летит.\nРасцелую мою кралю,\nНа ушко шепну словцо,\nКрасным маком запылает,\nЗарумяненно лицо!','\n',char(10)));
PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE IF NOT EXISTS 'songs_fts_data'(id INTEGER PRIMARY KEY, block BLOB);
INSERT INTO "songs_fts_data" VALUES(1,X'03000d811b');
INSERT INTO "songs_fts_data" VALUES(10,X'000000000103030003010101020101030101');
INSERT INTO "songs_fts_data" VALUES(137438953473,X'000000d50530d0b0d0b9010e010105010209060213b1d0b0d182d18ed188d0bad0b8d0bdd18bd1850106010208020db2d0b5d181d191d0bbd18bd0b9010601020e0407bed180d0bed1820114010103030102030303040203b4d0b001060102060508d0bbd18cd188d0b501060102100607bdd0bdd18bd0bc01060102140308d183d0bdd0b0d0b901120101060401020a04050205bcd0bed0b9010c01010701020b0203bfd0be0106010212010ad182d0b2d0bed0b8d0bc01060102130407b5d0bad181d1820106010211020183010c010102010202040f1a14150a0f0e150f0a110e');
INSERT INTO "songs_fts_data" VALUES(274877906945,X'000004741330d0b1d0b0d0b4d0b8d0b3d0b8d0bdd18bd0bc020601024b060bb9d0b4d0b0d180d0bad0b0020601022d0407b5d0b6d0b8d182020601021f0605bbd18bd0b50206010204040fbed180d0bed0b7d0b4d0b8d182d18c020601025d0308d183d0b4d0b5d0bc02100101030102152c1d04018b02060102310201b2020a010208241e0304d0b0d0bc02060102270407b5d182d0b5d180020601020e0704d180d0b002060102230401be02060102360508d0bbd0bdd0b0d0bc02060102210902d18b02060102030708d18cd0bdd0b5d0b902060102130409bfd0b5d180d191d0b4020601022f030ad18bd0bcd0bfd0b5d0bb020601023c0609bdd0b5d181d182d0b8020601022c050ad180d0b0d181d182d0b80206010233060985d0bed0b4d18fd1820206010207020bb3d183d0bbd18fd18ed1820206010202020bb4d0bed180d0bed0b3d0b802060102550312d180d0b5d0b9d184d0bed0b2d0b0d182d18c020601024a040b8bd188d0b8d182d181d18f02060102120207b5d181d0bbd0b802060102450201b8020c01020d060e290213bad0b0d0bfd0b8d182d0b0d0bdd0b0d0bcd0b802100101040102162c1d040fbed0bbd18bd188d0b5d182d181d18f020601021a030cd180d0b0d181d0bdd18bd0b9020601023b050cd18bd0bbd0b0d182d18bd0b9020601021c020fbbd0b8d0bcd0b0d0bdd0b0d0bcd0b802060102100310d18ed0b1d0b8d0bcd186d0b0d0bcd0b802080102172c0803bed0b9020601024d0207bcd0bed180d0b50208010209240902d0b902080102182c0706d18fd0bad0b8020601020c0a03bcd0b802060102380306d187d0b8d182020601022e04018b02100101020102142c1d0205bdd0b0d0b4020601020f0601bc02060102480502d18102080102292f060188020601023a0401b502060102570401b8020801025004020fbed0bad0b5d0b0d0bdd0b0d0bcd0b802060102390c01b502060102470211bfd0b0d0bfd0b0d0bdd0b8d0bdd18bd0bc020601024c0506d180d183d181020601021b040dbbd0b0d0b2d0b0d0bdd18cd18f02060102260401be02060102200508d0b9d0b4d191d0bc0206010235060dbfd183d182d0bdd0bed0b3d0be0206010222030ed180d0b8d0b4d191d182d181d18f02060102490805bfd0b5d0b2020a0102192c1d060bbed181d182d0bed180d18b020801020559010cd180d0b5d0b1d18fd182d0b0020801020b1b0601b9020601023d02018102060102540308d0b1d0b8d182d18c02060102580409bad0bed180d0b5d0b90206010230040bbbd183d0b6d0b8d182d18c02060102340409bcd0b5d0bbd18bd0b5020601020a0409bed0bbd0bdd186d0b5020601021e0407bfd0b5d188d0b002060102280308d182d0b0d182d18c020601024f040983d0bcd0b5d0b5d182020601024e041387d0b0d181d182d0bbd0b8d0b2d0bed0b3d0be0206010225020b82d0bed0bbd18cd0bad0be0206010232030ed183d0bcd0b0d0bdd0b0d0bcd0b80206010253020784d0bbd0bed1820206010237020b88d0b8d180d0bed0bad0b80206010206030cd182d0bed180d0bcd0bed0bc02060102510419120e0c1614080a0b0e0b080f090f1011101110121219120e0b1f16131316180a0f0a0d0a0d0d0c080a0808091608180d14080f14150e131408080f101210100e0f101a12150e12');
INSERT INTO "songs_fts_data" VALUES(412316860417,X'0000028a0330d0b003060102130201b2030801020219030ed18bd188d0b8d0b2d0b0d0b5d182030601020c020bb3d0bbd18fd0b4d0b8d182030601021c020bb4d0b5d0b2d0b8d186d0b003060102080207b6d0b4d191d1820306010210020fb7d0b0d0bfd18bd0bbd0b0d0b5d182030601022a0512d180d183d0bcd18fd0bdd0b5d0bdd0bdd0be030601022b040bbed0bbd0bed182d0bed0b9030601020d0201b803060102180306d0b4d191d1820306010217020bbad0bbd0b0d0b4d191d182030601020f0308d180d0b0d0bbd18e03060102230708d181d0bdd18bd0bc0306010228050ad18bd0bbd18cd186d0be030601021e0209bbd0b5d182d0b8d18203060102200405b8d186d0be030601022c0209bcd0b0d0bad0bed0bc03060102290409b8d0bbd0bed0b3d0be03060102110a01b903060102140403bdd0b5030601020a0403bed18e03060102220203bdd0b0030801021d090401b50308010216070209bed0bad0bdd0bed0bc03060102070607bed0bdd186d0b5030601021a0209bfd0b0d180d0bdd18f03060101040407b5d181d0bdd18f03060101020403bed0b40306010206070cd0b6d0b8d0b4d0b0d0b5d18203060102120110d180d0b0d181d186d0b5d0bbd183d18e0306010221030cd183d0b1d0b0d188d0bad183030601020b04098fd0b1d0bed0b3d0be0306010103020781d0b0d0b4d18303060102030409bbd0bed0b2d186d0be0306010227030cd182d180d0b5d0bbd0bed0b9030601021f020382d0be0306010215020783d0b7d0bed180030601020e0306d188d0bad0be0306010225020b86d0b2d0b5d182d0b5d1820306010205020988d0b5d0bfd0bdd18303060102260306d18cd191d1820306010209020b8fd0b1d0bbd0bed0bdd18f03060102040409091512120e161912080d120f0f11100c1010080a0a0b09100e100e0a131713100e10130a0e0d12100d');
PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE IF NOT EXISTS 'songs_fts_docsize'(id INTEGER PRIMARY KEY, sz BLOB);
INSERT INTO "songs_fts_docsize" VALUES(1,X'000713');
INSERT INTO "songs_fts_docsize" VALUES(2,X'00035d');
INSERT INTO "songs_fts_docsize" VALUES(3,X'00032b');
PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE IF NOT EXISTS 'songs_fts_idx'(segid, term, pgno, PRIMARY KEY(segid, term)) WITHOUT ROWID;
INSERT INTO "songs_fts_idx" VALUES(1,X'',2);
INSERT INTO "songs_fts_idx" VALUES(2,X'',2);
INSERT INTO "songs_fts_idx" VALUES(3,X'',2);
