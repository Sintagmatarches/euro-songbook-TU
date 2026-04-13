import { json } from "../../_lib/utils.js";
import { clearAuthCookie, clearAuthHintCookie } from "../../_lib/auth.js";

export async function onRequestPost({ request }) {
  return json(
    { ok: true },
    200,
    {
      "Set-Cookie": [
        clearAuthCookie(request),
        clearAuthHintCookie(request),
      ],
    }
  );
}
