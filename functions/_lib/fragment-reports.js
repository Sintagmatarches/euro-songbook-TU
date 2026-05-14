import { dbAll, dbGet, dbRun, getUserAccess, requireAuth } from "./db.js";
import { err, makeId } from "./utils.js";

export function normalizeFragmentReportStatus(value) {
  const safe = String(value || "").trim().toLowerCase();
  if (safe === "answered") return "answered";
  if (safe === "closed") return "closed";
  return "open";
}

function normalizeDisplayName(row = {}) {
  const nickname = String(row?.nickname || "").trim();
  if (nickname) return nickname;
  return String(row?.email || "").trim();
}

export async function getPrimarySuperAdmin(env) {
  return await dbGet(
    env,
    `SELECT id, email, nickname
     FROM users
     WHERE role='super_admin'
     ORDER BY datetime(created_at) ASC, email ASC
     LIMIT 1`
  );
}

export async function createFragmentReport(env, { userId, source, fragmentText }) {
  const reportId = makeId("fr");
  const messageId = makeId("frm");
  const admin = await getPrimarySuperAdmin(env);
  const normalizedSource = String(source || "").trim();
  const normalizedText = String(fragmentText || "").trim();
  const nowSql = "datetime('now')";

  await dbRun(
    env,
    `INSERT INTO fragment_reports (
      id, user_id, assigned_admin_user_id, status, source, fragment_text, created_at, updated_at, last_message_at
    ) VALUES (?, ?, ?, 'open', ?, ?, ${nowSql}, ${nowSql}, ${nowSql})`,
    [reportId, userId, admin?.id || null, normalizedSource, normalizedText]
  );

  await dbRun(
    env,
    `INSERT INTO fragment_report_messages (
      id, report_id, sender_user_id, body, is_admin_reply, created_at
    ) VALUES (?, ?, ?, ?, 0, ${nowSql})`,
    [messageId, reportId, userId, normalizedText]
  );

  return reportId;
}

export async function appendFragmentReportMessage(env, { reportId, senderUserId, body, isAdminReply }) {
  const messageId = makeId("frm");
  const normalizedBody = String(body || "").trim();
  const nextStatus = isAdminReply ? "answered" : "open";

  await dbRun(
    env,
    `INSERT INTO fragment_report_messages (
      id, report_id, sender_user_id, body, is_admin_reply, created_at
    ) VALUES (?, ?, ?, ?, ?, datetime('now'))`,
    [messageId, reportId, senderUserId, normalizedBody, isAdminReply ? 1 : 0]
  );

  await dbRun(
    env,
    `UPDATE fragment_reports
     SET status=?,
         assigned_admin_user_id=CASE
           WHEN ? = 1 THEN ?
           ELSE assigned_admin_user_id
         END,
         updated_at=datetime('now'),
         last_message_at=datetime('now')
     WHERE id=?`,
    [nextStatus, isAdminReply ? 1 : 0, isAdminReply ? senderUserId : null, reportId]
  );

  return messageId;
}

export async function requireFragmentReportAccess(env, request, reportId) {
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;
  const access = await getUserAccess(env, auth.sub);
  if (!access) return err("Unauthorized", 401);

  const report = await dbGet(
    env,
    `SELECT id, user_id, assigned_admin_user_id, status, source, fragment_text, created_at, updated_at, last_message_at
     FROM fragment_reports
     WHERE id=?`,
    [reportId]
  );
  if (!report) return err("Fragment report not found", 404);

  const isOwner = String(report.user_id || "") === String(access.id || "");
  const isSuperAdmin = String(access.role || "") === "super_admin";
  if (!isOwner && !isSuperAdmin) return err("Forbidden", 403);

  return { access, report, isOwner, isSuperAdmin };
}

export async function getFragmentReportDetail(env, reportId, options = {}) {
  const report = await dbGet(
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
       admin.nickname AS admin_nickname
     FROM fragment_reports fr
     JOIN users owner ON owner.id=fr.user_id
     LEFT JOIN users admin ON admin.id=fr.assigned_admin_user_id
     WHERE fr.id=?`,
    [reportId]
  );
  if (!report) return null;

  const messages = await dbAll(
    env,
    `SELECT
       m.id,
       m.report_id,
       m.sender_user_id,
       m.body,
       m.is_admin_reply,
       m.created_at,
       sender.email AS sender_email,
       sender.nickname AS sender_nickname
     FROM fragment_report_messages m
     JOIN users sender ON sender.id=m.sender_user_id
     WHERE m.report_id=?
     ORDER BY datetime(m.created_at) ASC, m.id ASC`,
    [reportId]
  );
  const includePrivateEmails = options?.includePrivateEmails === true;

  return {
    id: report.id,
    status: report.status,
    source: report.source,
    fragment_text: report.fragment_text,
    created_at: report.created_at,
    updated_at: report.updated_at,
    last_message_at: report.last_message_at,
    user: {
      id: report.user_id,
      email: includePrivateEmails ? String(report.user_email || "") : "",
      nickname: String(report.user_nickname || ""),
      name: normalizeDisplayName({ email: report.user_email, nickname: report.user_nickname }),
    },
    admin: report.assigned_admin_user_id ? {
      id: report.assigned_admin_user_id,
      email: includePrivateEmails ? String(report.admin_email || "") : "",
      nickname: String(report.admin_nickname || ""),
      name: normalizeDisplayName({ email: report.admin_email, nickname: report.admin_nickname }),
    } : null,
    messages: messages.map((message) => ({
      id: message.id,
      report_id: message.report_id,
      sender_user_id: message.sender_user_id,
      body: message.body,
      is_admin_reply: Number(message.is_admin_reply || 0) === 1,
      created_at: message.created_at,
      sender: {
        id: message.sender_user_id,
        email: includePrivateEmails ? String(message.sender_email || "") : "",
        nickname: String(message.sender_nickname || ""),
        name: normalizeDisplayName({ email: message.sender_email, nickname: message.sender_nickname }),
      },
    })),
  };
}
