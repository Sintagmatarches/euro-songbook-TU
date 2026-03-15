export function json(data, status=200, headers={}){
  const responseHeaders = new Headers({
    "Content-Type": "application/json; charset=utf-8",
    "Cache-Control": "no-store",
  });
  if (headers instanceof Headers) {
    headers.forEach((value, key) => responseHeaders.append(key, value));
  } else {
    Object.entries(headers || {}).forEach(([key, value]) => {
      if (Array.isArray(value)) {
        value.forEach((entry) => responseHeaders.append(key, entry));
        return;
      }
      responseHeaders.set(key, value);
    });
  }
  return new Response(JSON.stringify(data), {
    status,
    headers: responseHeaders,
  });
}
export function err(message, status=400, extra={}){
  return json({ error: message, ...extra }, status);
}
export async function readJSON(req){
  try{ return await req.json(); }catch{ return null; }
}
export function requireEnv(env, name){
  const v = env[name];
  if(!v) throw new Error(`Missing env: ${name}`);
  return v;
}
export function nowISO(){ return new Date().toISOString(); }
export function makeId(prefix="s"){
  // short id
  const rnd = crypto.getRandomValues(new Uint8Array(8));
  return prefix + Array.from(rnd).map(b=>b.toString(16).padStart(2,"0")).join("");
}
