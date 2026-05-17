import { json, enforceSameOrigin } from "../../_lib/utils.js";
import { clearAuthCookie } from "../../_lib/auth.js";

export async function onRequestPost({ request }) {
  const csrf = enforceSameOrigin(request);
  if (csrf instanceof Response) return csrf;
  return json(
    { ok: true },
    200,
    {
      "Set-Cookie": clearAuthCookie(request),
    }
  );
}
