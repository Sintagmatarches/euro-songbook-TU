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
