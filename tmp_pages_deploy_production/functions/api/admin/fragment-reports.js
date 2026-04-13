import { json } from "../../_lib/utils.js";
import { dbAll, requireSuperAdmin } from "../../_lib/db.js";
import { ensureFragmentReportTables, ensureSchemaAndSeed } from "../../_lib/schema.js";
import { normalizeFragmentReportStatus } from "../../_lib/fragment-reports.js";

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  await ensureFragmentReportTables(env);
  const access = await requireSuperAdmin(env, request);
  if (access instanceof Response) return access;

  const url = new URL(request.url);
  const rawStatus = String(url.searchParams.get("status") || "").trim();
  const q = String(url.searchParams.get("q") || "").trim();
  const where = [];
  const params = [];

  if (rawStatus) {
    where.push("fr.status=?");
    params.push(normalizeFragmentReportStatus(rawStatus));
  }
  if (q) {
    where.push(`(
      fr.source LIKE ?
      OR fr.fragment_text LIKE ?
      OR owner.email LIKE ?
      OR owner.nickname LIKE ?
    )`);
    const like = `%${q}%`;
    params.push(like, like, like, like);
  }

  const whereSql = where.length ? `WHERE ${where.join(" AND ")}` : "";
  const items = await dbAll(
    env,
    `SELECT
       fr.id,
       fr.user_id,
       fr.assigned_admin_user_id,
       fr.status,
       fr.source,
       fr.fragment_text,
       fr.created_at,
       fr.updated_at,
       fr.last_message_at,
       owner.email AS user_email,
       owner.nickname AS user_nickname,
       admin.email AS admin_email,
       admin.nickname AS admin_nickname,
       (
         SELECT COUNT(*)
         FROM fragment_report_messages msg
         WHERE msg.report_id=fr.id
       ) AS message_count,
       (
         SELECT msg.body
         FROM fragment_report_messages msg
         WHERE msg.report_id=fr.id
         ORDER BY datetime(msg.created_at) DESC, msg.id DESC
         LIMIT 1
       ) AS last_message_body,
       (
         SELECT msg.is_admin_reply
         FROM fragment_report_messages msg
         WHERE msg.report_id=fr.id
         ORDER BY datetime(msg.created_at) DESC, msg.id DESC
         LIMIT 1
       ) AS last_message_is_admin_reply
     FROM fragment_reports fr
     JOIN users owner ON owner.id=fr.user_id
     LEFT JOIN users admin ON admin.id=fr.assigned_admin_user_id
     ${whereSql}
     ORDER BY datetime(fr.last_message_at) DESC, datetime(fr.created_at) DESC`,
    params
  );

  return json({
    items: items.map((item) => ({
      ...item,
      message_count: Number(item.message_count || 0),
      last_message_is_admin_reply: Number(item.last_message_is_admin_reply || 0) === 1,
    })),
  });
}
