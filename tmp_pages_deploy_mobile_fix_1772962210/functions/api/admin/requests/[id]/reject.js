import { json, err, readJSON } from "../../../../_lib/utils.js";
import { requirePermission, dbGet, dbRun, assertScopeForLang, hasAccessPermission } from "../../../../_lib/db.js";
import { ensureSchemaAndSeed } from "../../../../_lib/schema.js";

function normStr(v) {
  const value = (v ?? "").toString().trim();
  return value || null;
}

export async function onRequestPost({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const access = await requirePermission(env, request, "proposals.review");
  if (access instanceof Response) return access;
  if (!hasAccessPermission(access, "proposals.reject")) {
    return err("Forbidden: missing permission proposals.reject", 403);
  }
  const id = params.id;
  const body = await readJSON(request);

  const item = await dbGet(env, `SELECT id, lang, status FROM song_requests WHERE id=?`, [id]);
  if (!item) return err("Not found", 404);
  if (item.status !== "new") return err("Already reviewed", 400);

  assertScopeForLang(access, item.lang);

  await dbRun(
    env,
    `UPDATE song_requests
     SET status='rejected', review_comment=?, reviewed_by=?, reviewed_at=datetime('now'), updated_at=datetime('now')
     WHERE id=?`,
    [normStr(body?.comment), access.id, id]
  );

  return json({ ok: true, requestId: id });
}
