# Search and filter results

Executed public search:
- Full title search returned the runtime-created song.
- Partial title search returned the runtime-created song.
- Full lyric fragment search returned the runtime-created song.
- Incomplete lyric fragment query was executed; repository behavior was observed rather than assumed.
- Empty-result handling returned an empty item array for a non-existent query.
- Pagination was verified through page 1 and page 2 of the public catalogue.

Executed public filters that truly exist in code:
- lang
- country
- period
- year
- performer
- words_author
- music_author
- verified
- recent
- multi_versions

Combined filter result:
- The runtime-created verified multi-version song matched the combined filter query.
