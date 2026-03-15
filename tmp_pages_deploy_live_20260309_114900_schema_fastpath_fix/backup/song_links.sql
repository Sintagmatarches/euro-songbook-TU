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
