const CACHE_VERSION = "v12";
const CACHE_NAME = `songbook-app-${CACHE_VERSION}`;

function scopeUrl(path) {
  return new URL(path, self.registration.scope).toString();
}

const CORE_ASSETS = [
  scopeUrl("./"),
  scopeUrl("./index.html"),
  scopeUrl("./app.css"),
  scopeUrl("./manifest.webmanifest"),
  scopeUrl("./ui/assets/logo-sticker-20260221.png"),
  scopeUrl("./favicon.ico"),
  scopeUrl("./ui/assets/favicon-32-20260308.png"),
  scopeUrl("./ui/assets/apple-touch-icon-180-20260308.png"),
  scopeUrl("./ui/assets/pwa-icon-192-20260308.png"),
  scopeUrl("./ui/assets/pwa-icon-512-20260308.png"),
  scopeUrl("./ui/assets/ussr-hero.jpg"),
];

self.addEventListener("install", (event) => {
  event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => cache.addAll(CORE_ASSETS)).then(() => self.skipWaiting()),
  );
});

self.addEventListener("activate", (event) => {
  event.waitUntil(
    caches.keys().then((keys) => Promise.all(
      keys
        .filter((key) => key.startsWith("songbook-app-") && key !== CACHE_NAME)
        .map((key) => caches.delete(key)),
    )).then(() => self.clients.claim()),
  );
});

self.addEventListener("message", (event) => {
  if (event.data && event.data.type === "SKIP_WAITING") {
    self.skipWaiting();
  }
});

async function networkFirst(request, options = {}) {
  const cache = await caches.open(CACHE_NAME);
  const allowNavigationFallback = options.navigationFallback === true;
  try {
    const fresh = await fetch(request);
    if (fresh && fresh.ok) {
      cache.put(request, fresh.clone());
    }
    return fresh;
  } catch {
    const cached = await cache.match(request, { ignoreSearch: true });
    if (cached) return cached;
    if (allowNavigationFallback) {
      const fallback = await cache.match(scopeUrl("./index.html"), { ignoreSearch: true });
      return fallback || Response.error();
    }
    return Response.error();
  }
}

async function staleWhileRevalidate(request) {
  const cache = await caches.open(CACHE_NAME);
  const cached = await cache.match(request);
  const networkPromise = fetch(request).then((response) => {
    if (response && response.ok) {
      cache.put(request, response.clone());
    }
    return response;
  }).catch(() => null);
  if (cached) {
    return cached;
  }
  const network = await networkPromise;
  return network || Response.error();
}

self.addEventListener("fetch", (event) => {
  const { request } = event;
  if (request.method !== "GET") return;

  const url = new URL(request.url);
  if (url.origin !== self.location.origin) return;
  if (url.pathname.includes("/api/")) return;

  if (request.mode === "navigate") {
    event.respondWith(networkFirst(request, { navigationFallback: true }));
    return;
  }

  const destination = request.destination || "";
  if (destination === "script") {
    event.respondWith(fetch(request).catch(() => Response.error()));
    return;
  }

  if (destination === "style") {
    event.respondWith(networkFirst(request));
    return;
  }

  const staticDestinations = new Set(["image", "font"]);
  if (staticDestinations.has(destination)) {
    event.respondWith(staleWhileRevalidate(request));
  }
});
