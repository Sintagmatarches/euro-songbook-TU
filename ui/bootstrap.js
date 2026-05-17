(function applyStoredTheme() {
  try {
    var raw = String(localStorage.getItem("ui_theme") || "").trim().toLowerCase();
    if (raw === "light") raw = "white";
    if (raw !== "white") raw = "dark";
    document.documentElement.setAttribute("data-theme", raw);
  } catch {
    document.documentElement.setAttribute("data-theme", "dark");
  }
}());

(function removeBootSplashEventually() {
  window.setTimeout(function () {
    var splash = document.getElementById("appBootSplash");
    if (!splash || splash.classList.contains("is-hidden")) return;
    splash.classList.add("is-hidden");
    window.setTimeout(function () {
      if (splash && splash.parentNode) splash.parentNode.removeChild(splash);
    }, 420);
  }, 7000);
}());

(function clearLegacyServiceWorkers() {
  if (!("serviceWorker" in navigator)) return;
  Promise.resolve()
    .then(function () { return navigator.serviceWorker.getRegistrations(); })
    .then(function (registrations) {
      return Promise.all((registrations || []).map(function (registration) {
        return registration.unregister();
      }));
    })
    .catch(function () {});
  if (!("caches" in window)) return;
  Promise.resolve()
    .then(function () { return caches.keys(); })
    .then(function (keys) {
      return Promise.all((keys || [])
        .filter(function (key) { return String(key || "").indexOf("songbook-app-") === 0; })
        .map(function (key) { return caches.delete(key); }));
    })
    .catch(function () {});
}());
