Not tested:
- Real user usability testing was not performed. The cycle used local automated and engineer-driven checks only.
- Load testing was not performed. No dedicated load tool was executed in this cycle.
- External security audit was not performed.
- Production deployment validation was not performed as part of this thesis cycle; all runtime evidence was collected from a local Wrangler / D1 environment.
- Comment edit and delete were not runtime-tested because no executable endpoint for those actions was found in the repository.
- Request send-for-revision was not runtime-tested because no executable moderation endpoint for that workflow was found in the repository.

Why not tested:
- The repository does not include built-in executable routes for several claimed sub-features, so those flows could not be honestly executed.
- No load-testing harness is configured in the repository, and the task explicitly required that no load claim be made without a real load tool.
- Usability testing and external security review require separate human participants or external assessors and were outside this local repository cycle.
