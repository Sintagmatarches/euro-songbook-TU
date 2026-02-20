-- D1 (SQLite) schema for euro-songbook
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS users (
  id TEXT PRIMARY KEY,
  email TEXT NOT NULL UNIQUE,
  nickname TEXT,
  pass_hash TEXT NOT NULL,
  role TEXT NOT NULL CHECK(role IN ('user','admin','super_admin')),
  created_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS songs (
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
  is_admin_content INTEGER NOT NULL DEFAULT 0,
  created_by TEXT REFERENCES users(id) ON DELETE SET NULL,
  updated_by TEXT REFERENCES users(id) ON DELETE SET NULL,
  lang_locked INTEGER NOT NULL DEFAULT 0,
  status TEXT NOT NULL CHECK(status IN ('draft','published')) DEFAULT 'published',
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS song_versions (
  id TEXT PRIMARY KEY,
  song_id TEXT NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
  title TEXT,
  lang TEXT,
  lyrics TEXT NOT NULL,
  source TEXT,
  sort_order INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS song_links (
  id TEXT PRIMARY KEY,
  song_id TEXT NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
  title TEXT,
  url TEXT NOT NULL,
  kind TEXT,
  sort_order INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS favorites (
  user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  song_id TEXT NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
  created_at TEXT NOT NULL,
  PRIMARY KEY(user_id, song_id)
);

CREATE TABLE IF NOT EXISTS song_requests (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
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
  links_json TEXT NOT NULL DEFAULT '[]',
  versions_json TEXT NOT NULL DEFAULT '[]',
  status TEXT NOT NULL CHECK(status IN ('new','approved','rejected')) DEFAULT 'new',
  review_comment TEXT,
  reviewed_by TEXT REFERENCES users(id) ON DELETE SET NULL,
  reviewed_at TEXT,
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL
);

-- FTS5 for search by title and lyrics
CREATE VIRTUAL TABLE IF NOT EXISTS songs_fts USING fts5(
  song_id UNINDEXED,
  title,
  lyrics,
  tokenize = 'unicode61 remove_diacritics 2'
);

-- helper index
CREATE INDEX IF NOT EXISTS idx_songs_status_title ON songs(status, title);
CREATE INDEX IF NOT EXISTS idx_songs_lang ON songs(lang);
CREATE INDEX IF NOT EXISTS idx_songs_admin_content ON songs(is_admin_content);
CREATE INDEX IF NOT EXISTS idx_songs_country ON songs(country);
CREATE INDEX IF NOT EXISTS idx_songs_period ON songs(period);
CREATE INDEX IF NOT EXISTS idx_song_requests_status_created ON song_requests(status, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_song_requests_user_created ON song_requests(user_id, created_at DESC);
