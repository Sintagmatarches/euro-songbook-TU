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
  region TEXT,
  event TEXT,
  theme TEXT,
  verified INTEGER NOT NULL DEFAULT 0,
  year TEXT,
  source TEXT,
  notes TEXT,
  lyrics TEXT NOT NULL,
  verified_translation TEXT,
  lyrics_meta_json TEXT NOT NULL DEFAULT '{}',
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
  lyrics_meta_json TEXT NOT NULL DEFAULT '{}',
  source TEXT,
  sort_order INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS song_links (
  id TEXT PRIMARY KEY,
  song_id TEXT NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
  title TEXT,
  url TEXT NOT NULL,
  kind TEXT,
  version_id TEXT,
  sort_order INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS favorites (
  user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  song_id TEXT NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
  created_at TEXT NOT NULL,
  PRIMARY KEY(user_id, song_id)
);

CREATE TABLE IF NOT EXISTS song_revisions (
  id TEXT PRIMARY KEY,
  song_id TEXT NOT NULL,
  revision_seq INTEGER NOT NULL,
  action TEXT NOT NULL CHECK(action IN ('create','update','delete','restore','snapshot')),
  actor_user_id TEXT REFERENCES users(id) ON DELETE SET NULL,
  restored_from_revision_id TEXT,
  snapshot_json TEXT NOT NULL,
  created_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS song_requests (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  subtitle TEXT,
  lang TEXT NOT NULL,
  country TEXT,
  period TEXT,
  region TEXT,
  event TEXT,
  theme TEXT,
  report_fragment INTEGER NOT NULL DEFAULT 0,
  year TEXT,
  source TEXT,
  notes TEXT,
  lyrics TEXT NOT NULL,
  lyrics_meta_json TEXT NOT NULL DEFAULT '{}',
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

CREATE TABLE IF NOT EXISTS drafts (
  id TEXT PRIMARY KEY,
  song_id TEXT REFERENCES songs(id) ON DELETE SET NULL,
  owner_user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  status TEXT NOT NULL CHECK(status IN ('draft','published','archived')) DEFAULT 'draft',
  version INTEGER NOT NULL DEFAULT 0,
  snapshot_json TEXT NOT NULL DEFAULT '{}',
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS draft_collaborators (
  draft_id TEXT NOT NULL REFERENCES drafts(id) ON DELETE CASCADE,
  user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  can_publish INTEGER NOT NULL DEFAULT 1,
  added_by TEXT REFERENCES users(id) ON DELETE SET NULL,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  PRIMARY KEY(draft_id, user_id)
);

CREATE TABLE IF NOT EXISTS draft_invitations (
  id TEXT PRIMARY KEY,
  draft_id TEXT NOT NULL REFERENCES drafts(id) ON DELETE CASCADE,
  inviter_user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  invitee_user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  status TEXT NOT NULL CHECK(status IN ('pending','accepted','declined','cancelled')) DEFAULT 'pending',
  created_at TEXT NOT NULL,
  responded_at TEXT,
  updated_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS draft_lines (
  id TEXT PRIMARY KEY,
  draft_id TEXT NOT NULL REFERENCES drafts(id) ON DELETE CASCADE,
  line_key TEXT NOT NULL,
  sort_order INTEGER NOT NULL DEFAULT 0,
  active_variant_id TEXT,
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS draft_line_variants (
  id TEXT PRIMARY KEY,
  draft_id TEXT NOT NULL REFERENCES drafts(id) ON DELETE CASCADE,
  line_id TEXT NOT NULL REFERENCES draft_lines(id) ON DELETE CASCADE,
  text TEXT NOT NULL,
  confidence INTEGER NOT NULL DEFAULT 100,
  confidence_segments_json TEXT NOT NULL DEFAULT '[]',
  variant_type TEXT NOT NULL CHECK(variant_type IN ('manual','suggested','conflict')) DEFAULT 'manual',
  is_active INTEGER NOT NULL DEFAULT 0,
  created_by TEXT REFERENCES users(id) ON DELETE SET NULL,
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS draft_ops (
  id TEXT PRIMARY KEY,
  draft_id TEXT NOT NULL REFERENCES drafts(id) ON DELETE CASCADE,
  seq INTEGER NOT NULL,
  client_op_id TEXT,
  base_version INTEGER NOT NULL DEFAULT 0,
  op_type TEXT NOT NULL,
  payload_json TEXT NOT NULL,
  status TEXT NOT NULL CHECK(status IN ('accepted','persisted','rejected')) DEFAULT 'accepted',
  created_by TEXT REFERENCES users(id) ON DELETE SET NULL,
  created_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS draft_snapshots (
  id TEXT PRIMARY KEY,
  draft_id TEXT NOT NULL REFERENCES drafts(id) ON DELETE CASCADE,
  version INTEGER NOT NULL,
  snapshot_json TEXT NOT NULL,
  created_by TEXT REFERENCES users(id) ON DELETE SET NULL,
  created_at TEXT NOT NULL
);

-- helper index
CREATE INDEX IF NOT EXISTS idx_songs_status_title ON songs(status, title);
CREATE INDEX IF NOT EXISTS idx_songs_lang ON songs(lang);
CREATE INDEX IF NOT EXISTS idx_songs_admin_content ON songs(is_admin_content);
CREATE INDEX IF NOT EXISTS idx_songs_country ON songs(country);
CREATE INDEX IF NOT EXISTS idx_songs_period ON songs(period);
CREATE INDEX IF NOT EXISTS idx_songs_created_at ON songs(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_songs_verified ON songs(verified);
CREATE INDEX IF NOT EXISTS idx_songs_region ON songs(region);
CREATE INDEX IF NOT EXISTS idx_songs_event ON songs(event);
CREATE INDEX IF NOT EXISTS idx_songs_theme ON songs(theme);
CREATE UNIQUE INDEX IF NOT EXISTS idx_song_revisions_song_seq ON song_revisions(song_id, revision_seq);
CREATE INDEX IF NOT EXISTS idx_song_revisions_song_created ON song_revisions(song_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_song_revisions_created ON song_revisions(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_song_requests_status_created ON song_requests(status, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_song_requests_user_created ON song_requests(user_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_draft_owner_updated ON drafts(owner_user_id, updated_at DESC);
CREATE INDEX IF NOT EXISTS idx_draft_song ON drafts(song_id);
CREATE INDEX IF NOT EXISTS idx_draft_collaborators_user ON draft_collaborators(user_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_draft_invite_invitee_status ON draft_invitations(invitee_user_id, status, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_draft_invite_draft_status ON draft_invitations(draft_id, status, created_at DESC);
CREATE UNIQUE INDEX IF NOT EXISTS idx_draft_invite_pending_unique ON draft_invitations(draft_id, invitee_user_id) WHERE status='pending';
CREATE UNIQUE INDEX IF NOT EXISTS idx_draft_lines_key ON draft_lines(draft_id, line_key);
CREATE INDEX IF NOT EXISTS idx_draft_lines_sort ON draft_lines(draft_id, sort_order ASC);
CREATE INDEX IF NOT EXISTS idx_draft_variants_line ON draft_line_variants(line_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_draft_variants_draft ON draft_line_variants(draft_id, created_at DESC);
CREATE UNIQUE INDEX IF NOT EXISTS idx_draft_ops_seq ON draft_ops(draft_id, seq);
CREATE INDEX IF NOT EXISTS idx_draft_ops_created ON draft_ops(draft_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_draft_snapshots_version ON draft_snapshots(draft_id, version DESC);
CREATE UNIQUE INDEX IF NOT EXISTS idx_users_nickname_nocase ON users(lower(trim(nickname)));
