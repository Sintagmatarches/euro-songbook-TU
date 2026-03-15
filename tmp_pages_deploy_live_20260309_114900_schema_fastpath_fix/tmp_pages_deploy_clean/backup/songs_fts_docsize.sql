PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE IF NOT EXISTS 'songs_fts_docsize'(id INTEGER PRIMARY KEY, sz BLOB);
INSERT INTO "songs_fts_docsize" VALUES(1,X'000713');
INSERT INTO "songs_fts_docsize" VALUES(2,X'00035d');
INSERT INTO "songs_fts_docsize" VALUES(3,X'00032b');
