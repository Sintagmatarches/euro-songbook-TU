import { json } from "../../_lib/utils.js";
import { clearAuthCookie } from "../../_lib/auth.js";

export async function onRequestPost({ request }) {
  return json(
    { ok: true },
    200,
    {
      "Set-Cookie": clearAuthCookie(request),
    }
  );
}
