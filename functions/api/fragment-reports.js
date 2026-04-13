import { err, json, readJSON } from "../_lib/utils.js";
import { dbAll, requireAuth } from "../_lib/db.js";
import { ensureFragmentReportTables, ensureSchemaAndSeed } from "../_lib/schema.js";
import { createFragmentReport, normalizeFragmentReportStatus } from "../_lib/fragment-reports.js";

function normalizeText(value) {
  return String(value || "").trim();
}

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  await ensureFragmentReportTables(env);
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;

  const url = new URL(request.url);
  const status = normalizeFragmentReportStatus(url.searchParams.get("status") || "");
  const includeAll = String(url.searchParams.get("status") || "").trim() === "";
  const params = [auth.sub];
  const where = ["fr.user_id=?"];
  if (!includeAll) {
    where.push("fr.status=?");
    params.push(status);
  }

  const items = await dbAll(
    env,
    `SELECT
       fr.id,
       fr.status,
       fr.source,
       fr.fragment_text,
       fr.created_at,
       fr.updated_at,
       fr.last_message_at,
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
     WHERE ${where.join(" AND ")}
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

export async function onRequestPost({ env, request }) {
  await ensureSchemaAndSeed(env);
  await ensureFragmentReportTables(env);
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;

  const body = await readJSON(request);
  const source = normalizeText(body?.source);
  const fragmentText = normalizeText(body?.fragment_text ?? body?.fragmentText ?? body?.lyrics);
  if (!source || !fragmentText) {
    return err("source and fragment_text required", 400);
  }

  const id = await createFragmentReport(env, {
    userId: auth.sub,
    source,
    fragmentText,
  });
  return json({ id, status: "open" });
}
