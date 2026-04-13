import { err, json } from "../../_lib/utils.js";
import { ensureFragmentReportTables, ensureSchemaAndSeed } from "../../_lib/schema.js";
import { getFragmentReportDetail, requireFragmentReportAccess } from "../../_lib/fragment-reports.js";

export async function onRequestGet({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  await ensureFragmentReportTables(env);
  const reportId = String(params.id || "").trim();
  if (!reportId) return err("Fragment report id required", 400);

  const access = await requireFragmentReportAccess(env, request, reportId);
  if (access instanceof Response) return access;

  const detail = await getFragmentReportDetail(env, reportId);
  if (!detail) return err("Fragment report not found", 404);
  return json(detail);
}
