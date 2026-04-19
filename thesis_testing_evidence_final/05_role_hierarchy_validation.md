# Role hierarchy validation

Guest:
- Executed checks: GET /api/songs succeeded; GET /api/favorites returned 401; POST /api/songs/:id/comments returned 401; GET hidden draft song returned 404.

User:
- Executed checks: register, login, logout, /api/me, favourites add/list/remove, comments create/list, new request, correction request, draft create/autosave/publish.
- Forbidden actions: GET /api/admin/requests returned 403 during protected checks; GET /api/admin/users would require super admin.

Admin:
- Executed checks: GET /api/admin/requests, POST approve, POST reject, POST /api/admin/songs, GET /api/admin/songs?verified=1.
- Forbidden actions: GET /api/admin/users returned 403.

Super admin:
- Executed checks: GET /api/admin/users, PUT /api/admin/users/:id/role to assign admin, PUT again to revoke.
- Runtime proof: ordinary admin was denied the same users endpoint that super admin could access.
