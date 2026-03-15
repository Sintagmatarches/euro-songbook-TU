PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE IF NOT EXISTS 'songs_fts_config'(k PRIMARY KEY, v) WITHOUT ROWID;
INSERT INTO "songs_fts_config" VALUES('version',4);
