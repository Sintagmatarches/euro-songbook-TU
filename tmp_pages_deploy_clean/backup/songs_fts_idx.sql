PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE IF NOT EXISTS 'songs_fts_idx'(segid, term, pgno, PRIMARY KEY(segid, term)) WITHOUT ROWID;
INSERT INTO "songs_fts_idx" VALUES(1,X'',2);
INSERT INTO "songs_fts_idx" VALUES(2,X'',2);
INSERT INTO "songs_fts_idx" VALUES(3,X'',2);
