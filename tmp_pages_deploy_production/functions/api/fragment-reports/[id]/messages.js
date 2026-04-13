import { err, json, readJSON } from "../../../_lib/utils.js";
import { ensureFragmentReportTables, ensureSchemaAndSeed } from "../../../_lib/schema.js";
import {
  appendFragmentReportMessage,
  getFragmentReportDetail,
  requireFragmentReportAccess,
} from "../../../_lib/fragment-reports.js";

export async function onRequestPost({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  await ensureFragmentReportTables(env);
  const reportId = String(params.id || "").trim();
  if (!reportId) return err("Fragment report id required", 400);

  const access = await requireFragmentReportAccess(env, request, reportId);
  if (access instanceof Response) return access;

  const body = await readJSON(request);
  const messageBody = String(body?.body || "").trim();
  if (!messageBody) return err("body required", 400);

  await appendFragmentReportMessage(env, {
    reportId,
    senderUserId: access.access.id,
    body: messageBody,
    isAdminReply: access.isSuperAdmin,
  });

  const detail = await getFragmentReportDetail(env, reportId);
  if (!detail) return err("Fragment report not found", 404);
  return json(detail);
}
