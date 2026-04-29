import { json } from "../_lib/utils.js";
import { dbAll } from "../_lib/db.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const url = new URL(request.url);
  const name = String(url.searchParams.get("name") || "").trim();
  const nodes = await dbAll(
    env,
    `SELECT id, name, kind, coalesce(is_virtual, 0) AS is_virtual
     FROM entity_nodes
     ORDER BY is_virtual ASC, name COLLATE NOCASE ASC`
  );
  const links = await dbAll(
    env,
    `SELECT id, child_name, parent_name, link_type, sort_order
     FROM entity_links
     ORDER BY child_name COLLATE NOCASE ASC, sort_order ASC, parent_name COLLATE NOCASE ASC`
  );
  const ancestors = name
    ? await dbAll(
      env,
      `WITH RECURSIVE ancestors(child_name, parent_name, link_type, sort_order, depth, path) AS (
         SELECT child_name, parent_name, link_type, sort_order, 1, child_name || '>' || parent_name
         FROM entity_links
         WHERE child_name = ?
         UNION ALL
         SELECT l.child_name, l.parent_name, l.link_type, l.sort_order, a.depth + 1, a.path || '>' || l.parent_name
         FROM entity_links l
         JOIN ancestors a ON l.child_name = a.parent_name
         WHERE instr(a.path, l.parent_name) = 0
       )
       SELECT DISTINCT parent_name AS name, min(depth) AS depth
       FROM ancestors
       GROUP BY parent_name
       ORDER BY depth ASC, name COLLATE NOCASE ASC`,
      [name]
    )
    : [];

  return json({
    nodes: (nodes || []).map((node) => ({
      ...node,
      is_virtual: Number(node?.is_virtual || 0) === 1,
    })),
    links: links || [],
    ancestors,
  });
}
