# Drafts and collaboration results

Executed owner flow:
- POST /api/drafts created a new draft.
- POST /api/drafts/:id/autosave updated metadata and lyrics.
- POST /api/drafts/:id/publish produced a published song.

Executed collaboration flow:
- Owner invited another registered user.
- Collaborator listed the incoming invitation and accepted it.
- Collaborator opened the same draft and performed autosave successfully.

Observed synchronization model:
- Shared draft state is persisted centrally.
- Websocket operations and autosave both update the stored draft state.
- This cycle verified persisted shared state, but did not attempt formal concurrency stress testing.
