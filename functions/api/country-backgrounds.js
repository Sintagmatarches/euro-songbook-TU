import { json } from "../_lib/utils.js";
import { ensureSchemaAndSeed } from "../_lib/schema.js";

export async function onRequestGet({ env, request }) {
  await ensureSchemaAndSeed(env);
  const url = new URL(request.url);
  const rawCountry = (url.searchParams.get("country") || "").trim();
  if (rawCountry) return json({ item: null });
  return json({ items: [] });
}
