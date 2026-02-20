export const router = {
  _handler: null,
  on(fn){ this._handler = fn; },
  go(hash){ location.hash = hash; },
  handle(){
    const hash = location.hash || "#/";
    // Support hashes like "#/?q=..." (query after hash).
    const raw = hash.startsWith("#/") ? hash.slice(2) : hash.slice(1);
    const [pathPart, queryPart] = raw.split("?");
    const parts = (pathPart || "").split("/").filter(Boolean);
    const route = {
      hash,
      path: parts,
      name: parts[0] || "home",
      query: Object.fromEntries(new URLSearchParams(queryPart || "")),
    };
    if (route.name === "song") route.id = parts[1];
    if (route.name === "admin") route.section = parts[1] || "content";
    if (this._handler) this._handler(route);
  }
};
