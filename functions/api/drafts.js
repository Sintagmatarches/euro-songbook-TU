import { json, err, readJSON } from "../_lib/utils.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";
import { dbAll, requireAuth } from "../_lib/db.js";
import { createDraft } from "../_lib/drafts.js";

function dedupeDraftList(items = []) {
  const normalizeDraftFingerprintPart = (value) => String(value || "")
    .replace(/\s+/g, " ")
    .trim()
    .toLowerCase();
  const picked = new Map();
  for (const item of Array.isArray(items) ? items : []) {
    const songId = String(item?.song_id || "").trim();
    const ownerUserId = String(item?.owner_user_id || "").trim();
    const status = String(item?.status || "draft").trim().toLowerCase();
    const draftId = String(item?.id || "").trim();
    const duplicateKey = songId && ownerUserId && status === "draft"
      ? `song:${ownerUserId}:${songId}`
      : (!songId && ownerUserId && status === "draft"
        ? `seed:${ownerUserId}:${[
            item?.snapshot_title,
            item?.snapshot_subtitle,
            item?.snapshot_lang,
            item?.snapshot_country,
            item?.snapshot_period,
            item?.snapshot_year,
            item?.snippet,
          ].map(normalizeDraftFingerprintPart).join("|")}`
        : `draft:${draftId}`);
    const existing = picked.get(duplicateKey);
    if (!existing) {
      picked.set(duplicateKey, item);
      continue;
    }
    const existingUpdatedAt = String(existing?.updated_at || "");
    const nextUpdatedAt = String(item?.updated_at || "");
    const shouldReplace = nextUpdatedAt > existingUpdatedAt
      || (nextUpdatedAt === existingUpdatedAt && draftId > String(existing?.id || ""));
    if (shouldReplace) picked.set(duplicateKey, item);
  }
  return [...picked.values()].sort((left, right) => {
    const byUpdatedAt = String(right?.updated_at || "").localeCompare(String(left?.updated_at || ""));
    if (byUpdatedAt !== 0) return byUpdatedAt;
    return String(right?.id || "").localeCompare(String(left?.id || ""));
  });
}

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;
  const userId = String(auth.sub || "");
  const url = new URL(request.url);
  const statusRaw = url.searchParams.get("status");
  const status = String(statusRaw || "").trim().toLowerCase();
  const where = [
    "(d.owner_user_id=? OR c.user_id=?)",
  ];
  const params = [userId, userId];
  if (status && (status === "draft" || status === "published" || status === "archived")) {
    where.push("d.status=?");
    params.push(status);
  }
  const items = await dbAll(
    env,
    `SELECT d.id, d.song_id, d.owner_user_id, d.status, d.version, d.created_at, d.updated_at,
            json_extract(d.snapshot_json,'$.title') AS snapshot_title,
            json_extract(d.snapshot_json,'$.subtitle') AS snapshot_subtitle,
            json_extract(d.snapshot_json,'$.lang') AS snapshot_lang,
            json_extract(d.snapshot_json,'$.country') AS snapshot_country,
            json_extract(d.snapshot_json,'$.period') AS snapshot_period,
            json_extract(d.snapshot_json,'$.year') AS snapshot_year,
            (
              SELECT group_concat(text, char(10))
              FROM (
                SELECT trim(coalesce(v.text, '')) AS text
                FROM draft_lines l
                LEFT JOIN draft_line_variants v
                  ON v.id = l.active_variant_id
                 AND v.draft_id = d.id
                WHERE l.draft_id = d.id
                  AND trim(coalesce(v.text, '')) <> ''
                ORDER BY l.sort_order ASC
                LIMIT 6
              ) draft_preview_lines
            ) AS snippet,
            u.nickname AS owner_nickname,
            CASE WHEN d.owner_user_id=? THEN 1 ELSE 0 END AS is_owner
     FROM drafts d
     LEFT JOIN users u ON u.id=d.owner_user_id
     LEFT JOIN draft_collaborators c ON c.draft_id=d.id AND c.user_id=?
     WHERE ${where.join(" AND ")}
     GROUP BY d.id
     ORDER BY datetime(d.updated_at) DESC`,
    [userId, userId, ...params]
  );
  return json({ items: dedupeDraftList(items) });
}

export async function onRequestPost({ env, request }) {
  await ensureSchemaAndSeed(env);
  const auth = await requireAuth(env, request);
  if (auth instanceof Response) return auth;
  const userId = String(auth.sub || "");
  if (!userId) return err("Unauthorized", 401);
  const body = await readJSON(request);
  const songId = String(body?.song_id || "").trim();
  const seed = body?.seed && typeof body.seed === "object" ? body.seed : {};

  try {
    const draftId = await createDraft(env, { userId, songId, seed });
    return json({
      draft_id: draftId,
      version: 0,
      role: "owner",
      snapshot: seed,
      lines: [],
    });
  } catch (cause) {
    return err(cause?.message || "Draft create failed", 400);
  }
}
