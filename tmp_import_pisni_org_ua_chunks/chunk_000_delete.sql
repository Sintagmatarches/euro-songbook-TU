DELETE FROM song_links WHERE song_id LIKE 'pisniua_%';
DELETE FROM song_versions WHERE song_id LIKE 'pisniua_%';
DELETE FROM songs_fts WHERE song_id LIKE 'pisniua_%';
DELETE FROM songs WHERE id LIKE 'pisniua_%';
