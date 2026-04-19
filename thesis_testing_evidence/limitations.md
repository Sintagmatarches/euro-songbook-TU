# Limitations

- Runtime verification was performed against a local Cloudflare Pages/D1 environment, not production.
- No production deployment verification was performed in this testing cycle because repository code was not changed.
- Admin and super-admin runtime scenarios were not executed because a working admin bootstrap path was not available under the local configuration used in this run.
- Request moderation (`approve`, `reject`, `send for revision`) was therefore not executed in runtime.
- Super-admin role assignment and permission reconfiguration were therefore not executed in runtime.
- Guest visibility restrictions for hidden/unpublished/admin-only songs were only partially covered:
  - unpublished/admin-only behavior was covered by existing repository Node tests
  - it was not re-executed against a live runtime with a non-demo hidden record
- Version-comparison controls were rendered in a live browser DOM, but actual diff interaction/output was not triggered.
- AI prompt buttons were rendered in a live browser DOM, but copy/open actions were not executed end-to-end in the browser.
- Confidence marking exists in draft data structures and default values were observed, but non-default line-level and word-level confidence editing was not executed.
- Python test coverage used `python -m unittest` because `pytest` was not installed locally.
- No real-user usability testing was performed.
- No real-user acceptance testing was performed.
- No external security audit was performed.
- No load testing tool was run, so no load testing was performed or claimed.
- No production-readiness claim is supported by this evidence set.

