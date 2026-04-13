import { api } from "./ui/api.js";
import { render, bind } from "./ui/render.js";
import { router } from "./ui/router.js";
import { state } from "./ui/state.js";
import { getInitialLocale, setLocale, t } from "./ui/i18n.js";
import { normalizeSongCountry, normalizeSongLanguage } from "./shared/song-catalogs.js";

const btnLogin = document.getElementById("btnLogin");
const btnLogout = document.getElementById("btnLogout");
const btnMenuLogout = document.getElementById("btnMenuLogout");
const btnThemeToggle = document.getElementById("btnThemeToggle");
const btnSidebarToggle = document.getElementById("btnSidebarToggle");
const btnMenuClose = document.getElementById("btnMenuClose");
const menuDrawer = document.getElementById("menuDrawer");
const menuBackdrop = document.getElementById("menuBackdrop");
const menuSettingsGroup = document.getElementById("menuSettingsGroup");
const mNavMenu = document.getElementById("mNavMenu");
const btnInstallApp = document.getElementById("btnInstallApp");
const userChip = document.getElementById("userChip");
const menuUserChip = document.getElementById("menuUserChip");
const topSearchWrap = document.getElementById("topSearchWrap");
const topSearchInput = document.getElementById("topSearchInput");
const topSearchBtn = document.getElementById("topSearchBtn");
const topbarLogo = document.querySelector(".topbar .brand > .logo");
const topbarBrandText = document.querySelector(".topbar .brand > .brandText");
const mainRailNav = document.querySelector(".ig-rail");
const mobileNav = document.getElementById("mobileNav");
const appBootSplash = document.getElementById("appBootSplash");
const appBootSplashTitle = document.getElementById("appBootSplashTitle");
const appBootSplashSubtitle = document.getElementById("appBootSplashSubtitle");
const metaThemeColor = document.getElementById("metaThemeColor");

const dlgAuth = document.getElementById("dlgAuth");
const authForm = document.getElementById("authForm");
const btnAuthClose = document.getElementById("btnAuthClose");
const authModeLogin = document.getElementById("authModeLogin");
const authModeRegister = document.getElementById("authModeRegister");
const authPaneLogin = document.getElementById("authPaneLogin");
const authPaneRegister = document.getElementById("authPaneRegister");
const authLoginNickname = document.getElementById("authLoginNickname");
const authLoginPassword = document.getElementById("authLoginPassword");
const authRegisterNickname = document.getElementById("authRegisterNickname");
const authRegisterEmail = document.getElementById("authRegisterEmail");
const authRegisterPassword = document.getElementById("authRegisterPassword");
const authRegisterPasswordConfirm = document.getElementById("authRegisterPasswordConfirm");
const authMsg = document.getElementById("authMsg");
const doLogin = document.getElementById("doLogin");
const doRegister = document.getElementById("doRegister");
const promptDialogCloseButton = document.querySelector('#dlgPrompt button[value="cancel"]');
const localeSwitchMenu = document.getElementById("localeSwitchMenu");
const localeSwitches = [localeSwitchMenu].filter(Boolean);

const THEME_KEY = "ui_theme";
const SUPPORTED_THEMES = ["dark", "white"];
const THEME_META_COLORS = {
  dark: "#000000",
  white: "#0797F2",
};
let activeTheme = "dark";
let deferredInstallPrompt = null;
let authViewportCleanup = null;
let authViewportRaf = 0;
let authDialogMode = "login";
const MOTION_MEDIUM_MS = 150;
const MENU_DRAWER_MOTION_MS = 260;
const MENU_BACKDROP_MOTION_MS = 180;
const DIALOG_MOTION_MS = 200;
const PAGE_CURTAIN_MOTION_MS = 320;
const PAGE_ENTER_ACTIVATE_DELAY_MS = 70;
const STAGED_REVEAL_MOTION_MS = 420;
const STAGED_REVEAL_ACTIVATE_DELAY_MS = 90;
const STAGED_REVEAL_STEP_MS = 52;
const STAGED_REVEAL_MAX_INDEX = 16;
const activeTransitions = new WeakMap();
let pageEnterTimer = 0;
let pageEnterActivateTimer = 0;
let stagedRevealTimer = 0;
let stagedRevealActivateTimer = 0;
let pendingAdminRequestsCount = 0;
let pendingAdminRequestsFetchedAt = 0;
let pendingAdminRequestsUserKey = "";
let pendingAdminRequestsFetchSeq = 0;
const PENDING_ADMIN_REQUESTS_REFRESH_MS = 45_000;
let appBootSplashHidden = false;
let songPageBgParallaxRaf = 0;
let songPageBgParallaxMetrics = null;
let songPageBgParallaxLastMeasureAt = 0;
let songPageBgParallaxLastShiftPx = Number.NaN;
let globalWallpaperLastShiftPx = Number.NaN;
let activeRouteRenderToken = 0;
let mobileNavViewportRaf = 0;
const SONG_PAGE_BG_PARALLAX_MIN_PX = 180;
const SONG_PAGE_BG_PARALLAX_MAX_PX = 560;
const SONG_PAGE_BG_PARALLAX_VIEWPORT_RATIO = 0.52;
const SONG_PAGE_BG_PARALLAX_MOBILE_MIN_PX = 90;
const SONG_PAGE_BG_PARALLAX_MOBILE_MAX_PX = 320;
const SONG_PAGE_BG_PARALLAX_MOBILE_VIEWPORT_RATIO = 0.34;
const SONG_PAGE_BG_PARALLAX_LAYOUT_MEASURE_INTERVAL_MS = 180;
// Desired background-vs-foreground scroll ratio (bg : content).
// Example: 0.2 means background moves ~5x slower than the text/content scroll.
const SONG_PAGE_BG_PARALLAX_SCROLL_RATIO = 0.2;
const SONG_PAGE_BG_PARALLAX_LONG_TEXT_SLOWDOWN_MAX = 2.3;
const SONG_PAGE_BG_PARALLAX_LONG_TEXT_THRESHOLD_PX = 240;
const GLOBAL_WALLPAPER_PARALLAX_MIN_PX = 44;
const GLOBAL_WALLPAPER_PARALLAX_MAX_PX = 240;
const GLOBAL_WALLPAPER_PARALLAX_VIEWPORT_RATIO = 0.24;
const GLOBAL_WALLPAPER_PARALLAX_SCROLL_RATIO = 0.11;
const GLOBAL_WALLPAPER_ASSET_URLS = [
  "./picture/AdobeStock_479740218.jpeg",
  "./picture/phone_wallpaper.jpg",
];
const AUTH_HINT_COOKIE_NAME = "songbook_session_hint";
let globalWallpaperAssetsPreloaded = false;
const STAGED_REVEAL_SELECTOR = ".card, .songCard, .yt-card, .home-language-card, .home-country-card, .home-country-group-card, .request-section, .request-repeater, .ss_link_row, .ss_version_row, .ac_item, .ab-flag-range-row, .pill, .badge, .song-version-btn, .pager-shell .btn, .song-aux-panel, .song-tools-panel, .yt-chips, .ac-editor-optional-menu, .ig-drawer-header, .ig-drawer-group, .ig-drawer-link, .ig-drawer-button, .ig-drawer .user-chip-drawer";

function safeStorageGet(key) {
  try {
    return localStorage.getItem(key);
  } catch {
    return null;
  }
}

function safeStorageSet(key, value) {
  try {
    localStorage.setItem(key, value);
  } catch {}
}

function readCookie(name) {
  const target = String(name || "").trim();
  if (!target) return "";
  try {
    const parts = String(document.cookie || "").split(";");
    for (const part of parts) {
      const [rawKey, ...rawValue] = String(part || "").trim().split("=");
      if (String(rawKey || "").trim() !== target) continue;
      return rawValue.join("=");
    }
  } catch {}
  return "";
}

function hasAuthSessionHint() {
  return readCookie(AUTH_HINT_COOKIE_NAME) === "1";
}

function clearAuthSessionHint() {
  document.cookie = `${AUTH_HINT_COOKIE_NAME}=; Path=/; Max-Age=0; Expires=Thu, 01 Jan 1970 00:00:00 GMT; SameSite=Lax`;
}

function rememberAuthSessionHint() {
  document.cookie = `${AUTH_HINT_COOKIE_NAME}=1; Path=/; SameSite=Lax`;
}

function shouldBootstrapAuthOnLoad() {
  if (hasAuthSessionHint()) return true;
  const hash = String(location.hash || "#/").trim().toLowerCase();
  return hash.startsWith("#/request")
    || hash.startsWith("#/favorites")
    || hash.startsWith("#/draft")
    || hash.startsWith("#/admin");
}

function hideAppBootSplash() {
  if (!appBootSplash || appBootSplashHidden) return;
  appBootSplashHidden = true;
  appBootSplash.classList.add("is-hidden");
  setTimeout(() => appBootSplash.remove(), 320);
}

function prefersReducedMotion() {
  return window.matchMedia("(prefers-reduced-motion: reduce)").matches;
}

function motionDuration(ms = MOTION_MEDIUM_MS) {
  return prefersReducedMotion() ? 0 : ms;
}

function clearPendingTransition(node) {
  const cleanup = activeTransitions.get(node);
  if (!cleanup) return;
  cleanup();
  activeTransitions.delete(node);
}

function animateElementOpen(node) {
  if (!node) return;
  clearPendingTransition(node);
  node.classList.remove("hidden", "is-closing", "is-open");
  // Force layout so open transitions/animations restart reliably.
  void node.offsetWidth;
  requestAnimationFrame(() => {
    requestAnimationFrame(() => {
      if (node.classList.contains("hidden")) return;
      node.classList.add("is-open");
    });
  });
}

function animateElementClose(node, options = {}) {
  if (!node) return;
  const duration = motionDuration(options.duration ?? MOTION_MEDIUM_MS);
  const onClosed = typeof options.onClosed === "function" ? options.onClosed : null;
  if (node.classList.contains("hidden") && !node.classList.contains("is-closing")) {
    if (onClosed) onClosed();
    return;
  }
  clearPendingTransition(node);
  node.classList.remove("is-open");
  node.classList.add("is-closing");

  const finish = () => {
    clearPendingTransition(node);
    node.classList.remove("is-closing");
    node.classList.add("hidden");
    if (onClosed) onClosed();
  };

  if (duration === 0) {
    finish();
    return;
  }

  const onTransitionEnd = (event) => {
    if (event.target !== node) return;
    finish();
  };
  const timeoutId = setTimeout(finish, duration + 80);
  node.addEventListener("transitionend", onTransitionEnd);
  activeTransitions.set(node, () => {
    clearTimeout(timeoutId);
    node.removeEventListener("transitionend", onTransitionEnd);
  });
}

function openDialogAnimated(dialog) {
  if (!dialog) return;
  clearPendingTransition(dialog);
  dialog.classList.remove("is-open", "is-closing");
  if (!dialog.open) dialog.showModal();
  void dialog.offsetWidth;
  requestAnimationFrame(() => {
    requestAnimationFrame(() => {
      if (!dialog.open) return;
      dialog.classList.add("is-open");
    });
  });
}

function closeDialogAnimated(dialog) {
  if (!dialog?.open) return;
  const duration = motionDuration(DIALOG_MOTION_MS);
  clearPendingTransition(dialog);
  dialog.classList.remove("is-open");
  dialog.classList.add("is-closing");

  const finish = () => {
    clearPendingTransition(dialog);
    dialog.classList.remove("is-closing");
    if (dialog.open) dialog.close();
  };

  if (duration === 0) {
    finish();
    return;
  }

  const onTransitionEnd = (event) => {
    if (event.target !== dialog) return;
    finish();
  };
  const timeoutId = setTimeout(finish, duration + 80);
  dialog.addEventListener("transitionend", onTransitionEnd);
  activeTransitions.set(dialog, () => {
    clearTimeout(timeoutId);
    dialog.removeEventListener("transitionend", onTransitionEnd);
  });
}

function animateAppEnter(container) {
  if (!container || prefersReducedMotion()) return;
  clearTimeout(pageEnterTimer);
  clearTimeout(pageEnterActivateTimer);
  container.classList.remove("page-enter", "page-enter-active");
  requestAnimationFrame(() => {
    container.classList.add("page-enter");
    pageEnterActivateTimer = setTimeout(() => {
      requestAnimationFrame(() => container.classList.add("page-enter-active"));
    }, PAGE_ENTER_ACTIVATE_DELAY_MS);
  });
  pageEnterTimer = setTimeout(() => {
    container.classList.remove("page-enter", "page-enter-active");
  }, PAGE_ENTER_ACTIVATE_DELAY_MS + motionDuration(PAGE_CURTAIN_MOTION_MS) + 120);
}

function clearStagedReveal(container) {
  clearTimeout(stagedRevealTimer);
  clearTimeout(stagedRevealActivateTimer);
  if (!container) return;
  container.classList.remove("stagger-ready");
  container.querySelectorAll(".stagger-item").forEach((node) => {
    node.classList.remove("stagger-item");
    node.style.removeProperty("--stagger-index");
  });
}

function animateStagedReveal(container) {
  if (!container) return;
  clearStagedReveal(container);
  if (prefersReducedMotion()) return;

  const nodes = Array.from(container.querySelectorAll(STAGED_REVEAL_SELECTOR)).filter((node) => {
    if (node.classList.contains("hidden")) return false;
    return !node.closest(".hidden");
  });
  if (!nodes.length) return;

  nodes.forEach((node, index) => {
    node.classList.add("stagger-item");
    node.style.setProperty("--stagger-index", String(Math.min(index, STAGED_REVEAL_MAX_INDEX)));
  });

  stagedRevealActivateTimer = setTimeout(() => {
    requestAnimationFrame(() => container.classList.add("stagger-ready"));
  }, STAGED_REVEAL_ACTIVATE_DELAY_MS);
  const lastDelayMs = Math.min(Math.max(nodes.length - 1, 0), STAGED_REVEAL_MAX_INDEX) * STAGED_REVEAL_STEP_MS;
  stagedRevealTimer = setTimeout(
    () => clearStagedReveal(container),
    STAGED_REVEAL_ACTIVATE_DELAY_MS + lastDelayMs + motionDuration(STAGED_REVEAL_MOTION_MS) + 180
  );
}

window.__applyStagedReveal = (container) => {
  animateStagedReveal(container);
};

function resetSongPageBackgroundParallaxCache() {
  songPageBgParallaxMetrics = null;
  songPageBgParallaxLastMeasureAt = 0;
  songPageBgParallaxLastShiftPx = Number.NaN;
}

function preloadGlobalWallpaperAssets() {
  if (globalWallpaperAssetsPreloaded) return;
  globalWallpaperAssetsPreloaded = true;
  GLOBAL_WALLPAPER_ASSET_URLS.forEach((url) => {
    const src = String(url || "").trim();
    if (!src) return;
    const img = new Image();
    img.decoding = "async";
    img.src = src;
  });
}

function syncGlobalWallpaperParallax() {
  // Keep global wallpaper static (no parallax shift on home/catalog).
  if (globalWallpaperLastShiftPx !== 0) {
    document.body.style.setProperty("--global-wallpaper-bg-shift", "0px");
    globalWallpaperLastShiftPx = 0;
  }
}

function syncSongPageBackgroundParallax() {
  syncGlobalWallpaperParallax();
  if (!document.body.classList.contains("song-page-country-bg")) {
    document.body.style.removeProperty("--song-page-bg-shift");
    document.body.style.removeProperty("--song-page-bg-image");
    document.body.style.removeProperty("--song-page-bg-image-desktop");
    document.body.style.removeProperty("--song-page-bg-image-mobile");
    document.body.style.removeProperty("--song-page-bg-focus-x-desktop");
    document.body.style.removeProperty("--song-page-bg-focus-y-desktop");
    document.body.style.removeProperty("--song-page-bg-focus-x-mobile");
    document.body.style.removeProperty("--song-page-bg-focus-y-mobile");
    resetSongPageBackgroundParallaxCache();
    return;
  }
  if (prefersReducedMotion()) {
    if (songPageBgParallaxLastShiftPx !== 0) {
      document.body.style.setProperty("--song-page-bg-shift", "0px");
      songPageBgParallaxLastShiftPx = 0;
    }
    return;
  }
  if (document.body.classList.contains("song-page-country-bg-static")) {
    if (songPageBgParallaxLastShiftPx !== 0) {
      document.body.style.setProperty("--song-page-bg-shift", "0px");
      songPageBgParallaxLastShiftPx = 0;
    }
    return;
  }

  const now = performance.now();
  const scrollY = window.scrollY || window.pageYOffset || 0;
  const viewportHeight = window.innerHeight || document.documentElement.clientHeight || 1;
  const shouldMeasureLayout = (
    !songPageBgParallaxMetrics
    || (now - songPageBgParallaxLastMeasureAt) >= SONG_PAGE_BG_PARALLAX_LAYOUT_MEASURE_INTERVAL_MS
    || songPageBgParallaxMetrics.viewportHeight !== viewportHeight
  );
  if (shouldMeasureLayout) {
    const songCard = document.querySelector(".song-view .song-card-shell.song-card-shell-has-bg");
    if (songCard) {
      const cardRect = songCard.getBoundingClientRect();
      const cardTop = cardRect.top + scrollY;
      const cardHeight = Math.max(songCard.offsetHeight, viewportHeight);
      const start = Math.max(0, cardTop - Math.round(viewportHeight * 0.08));
      const end = Math.max(start + 1, cardTop + cardHeight - Math.round(viewportHeight * 0.62));
      const scrollRangePx = Math.max(1, end - start);
      songPageBgParallaxMetrics = {
        viewportHeight,
        start,
        end,
        scrollRangePx,
        cardHeight,
      };
    } else {
      const maxScroll = Math.max(1, document.documentElement.scrollHeight - viewportHeight);
      songPageBgParallaxMetrics = {
        viewportHeight,
        start: 0,
        end: maxScroll,
        scrollRangePx: maxScroll,
        cardHeight: viewportHeight,
      };
    }
    songPageBgParallaxLastMeasureAt = now;
  }

  const metrics = songPageBgParallaxMetrics || {
    viewportHeight,
    start: 0,
    end: 1,
    scrollRangePx: 1,
    cardHeight: viewportHeight,
  };
  const isMobile = window.matchMedia("(max-width: 960px)").matches;
  const maxShift = isMobile
    ? Math.max(
      SONG_PAGE_BG_PARALLAX_MOBILE_MIN_PX,
      Math.min(SONG_PAGE_BG_PARALLAX_MOBILE_MAX_PX, Math.round(viewportHeight * SONG_PAGE_BG_PARALLAX_MOBILE_VIEWPORT_RATIO))
    )
    : Math.max(
      SONG_PAGE_BG_PARALLAX_MIN_PX,
      Math.min(SONG_PAGE_BG_PARALLAX_MAX_PX, Math.round(viewportHeight * SONG_PAGE_BG_PARALLAX_VIEWPORT_RATIO))
    );

  const progressRange = Math.max(1, metrics.end - metrics.start);
  const progress = Math.min(1, Math.max(0, (scrollY - metrics.start) / progressRange));
  const scrollRangePx = metrics.scrollRangePx;

  const cardHeightForSlowdown = metrics.cardHeight;
  const longTextExtra = Math.max(0, cardHeightForSlowdown - viewportHeight - SONG_PAGE_BG_PARALLAX_LONG_TEXT_THRESHOLD_PX);
  const longTextRatio = Math.min(1, longTextExtra / Math.max(1, viewportHeight));
  const slowDownFactor = 1 + (SONG_PAGE_BG_PARALLAX_LONG_TEXT_SLOWDOWN_MAX - 1) * longTextRatio;

  // Parallax: move background slower than content. We cap by maxShift so we never "overshoot" the image.
  const desiredRange = Math.max(0, Math.round(scrollRangePx * SONG_PAGE_BG_PARALLAX_SCROLL_RATIO));
  const rangePx = Math.min(maxShift, desiredRange);
  const shiftPx = Math.round(((0.5 - progress) * rangePx) / slowDownFactor);
  if (shiftPx !== songPageBgParallaxLastShiftPx) {
    document.body.style.setProperty("--song-page-bg-shift", `${shiftPx}px`);
    songPageBgParallaxLastShiftPx = shiftPx;
  }
}

function scheduleSongPageBackgroundParallax() {
  if (songPageBgParallaxRaf) return;
  songPageBgParallaxRaf = requestAnimationFrame(() => {
    songPageBgParallaxRaf = 0;
    syncSongPageBackgroundParallax();
  });
}

function handleSongPageBackgroundParallaxViewportChange() {
  resetSongPageBackgroundParallaxCache();
  scheduleSongPageBackgroundParallax();
}

function getRegisterErrorMessage(error) {
  const status = Number(error?.status || 0);
  if (status >= 500) {
    const code = String(error?.data?.code || "");
    if (code === "auth_schema_legacy") return t("auth.registerServerSchema");
    return t("auth.registerServerTemporary");
  }
  const message = String(error?.message || "").toLowerCase();
  if (message.includes("nickname")) {
    if (state.locale === "ru") return "Проверьте ник: уже занят или формат недопустим.";
    if (state.locale === "uk") return "Перевірте нік: уже зайнятий або формат недійсний.";
    if (state.locale === "et") return "Kontrolli kasutajanime: juba hõivatud või vorming vale.";
    return "Check nickname: already taken or invalid format.";
  }
  if (message.includes("passwords do not match")) {
    if (state.locale === "ru") return "Пароли не совпадают.";
    if (state.locale === "uk") return "Паролі не збігаються.";
    if (state.locale === "et") return "Paroolid ei ühti.";
    return "Passwords do not match.";
  }
  return error?.message || t("auth.registerFailed");
}

function authNicknameLabel() {
  if (state.locale === "ru") return "Ник или email (для входа)";
  if (state.locale === "uk") return "Нік або email (для входу)";
  if (state.locale === "et") return "Kasutajanimi või email (sisselogimiseks)";
  return "Nickname or email (for login)";
}

function authNicknameRegisterLabel() {
  if (state.locale === "ru") return "Ник (для регистрации)";
  if (state.locale === "uk") return "Нік (для реєстрації)";
  if (state.locale === "et") return "Kasutajanimi (registreerimiseks)";
  return "Nickname (for registration)";
}

function authEmailRegisterLabel() {
  if (state.locale === "ru") return "Эл. почта";
  if (state.locale === "uk") return "Ел. пошта";
  if (state.locale === "et") return "Email";
  return "Email";
}

function authPasswordConfirmLabel() {
  if (state.locale === "ru") return "Повторите пароль";
  if (state.locale === "uk") return "Повторіть пароль";
  if (state.locale === "et") return "Korda parooli";
  return "Repeat password";
}

function authNickAndPassRequiredMessage() {
  if (state.locale === "ru") return "Введите ник/email и пароль.";
  if (state.locale === "uk") return "Введіть нік/email і пароль.";
  if (state.locale === "et") return "Sisesta kasutajanimi/email ja parool.";
  return "Enter nickname/email and password.";
}

function authRegisterFieldsRequiredMessage() {
  if (state.locale === "ru") return "Для регистрации нужны ник, email и пароль.";
  if (state.locale === "uk") return "Для реєстрації потрібні нік, email і пароль.";
  if (state.locale === "et") return "Registreerimiseks on vaja kasutajanime, emaili ja parooli.";
  return "Nickname, email and password are required for registration.";
}

function authPasswordMismatchMessage() {
  if (state.locale === "ru") return "Пароли не совпадают.";
  if (state.locale === "uk") return "Паролі не збігаються.";
  if (state.locale === "et") return "Paroolid ei ühti.";
  return "Passwords do not match.";
}

function setAuthDialogMode(mode = "login") {
  authDialogMode = mode === "register" ? "register" : "login";
  const isLogin = authDialogMode === "login";
  authPaneLogin?.classList.toggle("hidden", !isLogin);
  authPaneRegister?.classList.toggle("hidden", isLogin);
  authModeLogin?.classList.toggle("is-active", isLogin);
  authModeRegister?.classList.toggle("is-active", !isLogin);
  const authTitle = document.getElementById("authTitle");
  if (authTitle) authTitle.textContent = isLogin ? t("auth.login") : t("auth.doRegister");
  if (isLogin) {
    if (authLoginNickname && !authLoginNickname.value.trim() && authRegisterNickname?.value?.trim()) {
      authLoginNickname.value = authRegisterNickname.value.trim();
    }
    authLoginNickname?.focus({ preventScroll: true });
  } else {
    if (authRegisterNickname && !authRegisterNickname.value.trim() && authLoginNickname?.value?.trim()) {
      authRegisterNickname.value = authLoginNickname.value.trim();
    }
    authRegisterNickname?.focus({ preventScroll: true });
  }
  if (authMsg) authMsg.textContent = "";
}

function setAuthKeyboardOffset(px = 0) {
  document.documentElement.style.setProperty("--auth-kb-offset", `${Math.max(0, Math.round(px))}px`);
}

function setMobileNavViewportOffset(px = 0) {
  document.documentElement.style.setProperty("--mobile-nav-viewport-offset", `${Math.max(0, Math.round(px))}px`);
}

function syncMobileNavViewportOffset() {
  if (!mobileNav || !window.matchMedia("(max-width: 960px)").matches) {
    setMobileNavViewportOffset(0);
    return;
  }
  const vv = window.visualViewport;
  if (!vv) {
    setMobileNavViewportOffset(0);
    return;
  }
  const layoutHeight = Math.max(
    Number(window.innerHeight || 0),
    Number(document.documentElement?.clientHeight || 0),
  );
  const visualBottom = Number(vv.height || 0) + Number(vv.offsetTop || 0);
  const viewportOffset = Math.max(0, layoutHeight - visualBottom);
  setMobileNavViewportOffset(viewportOffset);
}

function scheduleMobileNavViewportOffsetSync() {
  if (mobileNavViewportRaf) cancelAnimationFrame(mobileNavViewportRaf);
  mobileNavViewportRaf = requestAnimationFrame(() => {
    mobileNavViewportRaf = 0;
    syncMobileNavViewportOffset();
  });
}

function stopAuthViewportSync() {
  if (authViewportCleanup) {
    authViewportCleanup();
    authViewportCleanup = null;
  }
  if (authViewportRaf) {
    cancelAnimationFrame(authViewportRaf);
    authViewportRaf = 0;
  }
  setAuthKeyboardOffset(0);
  document.body.classList.remove("auth-dialog-open");
}

function isMobileEditorInput(node) {
  if (!(node instanceof HTMLInputElement || node instanceof HTMLTextAreaElement || node instanceof HTMLSelectElement)) {
    return false;
  }
  if (!window.matchMedia("(max-width: 960px)").matches) return false;
  return !!node.closest("#ac_editor, #requestForm, #songToolsPanel");
}

function syncMobileEditorFocusState() {
  document.body.classList.toggle("mobile-editor-focus", isMobileEditorInput(document.activeElement));
}

function startAuthViewportSync() {
  if (!dlgAuth?.open) return;
  stopAuthViewportSync();
  document.body.classList.add("auth-dialog-open");

  const vv = window.visualViewport;
  const update = () => {
    if (!dlgAuth?.open) return;
    if (!vv) {
      setAuthKeyboardOffset(0);
      return;
    }
    const layoutHeight = window.innerHeight || document.documentElement.clientHeight || 0;
    const visualBottom = vv.height + vv.offsetTop;
    const coveredByKeyboard = Math.max(0, layoutHeight - visualBottom);
    const keyboardLikelyOpen = coveredByKeyboard > 90;
    const maxShift = Math.round(layoutHeight * 0.55);
    setAuthKeyboardOffset(keyboardLikelyOpen ? Math.min(coveredByKeyboard + 8, maxShift) : 0);
  };
  const schedule = () => {
    if (authViewportRaf) cancelAnimationFrame(authViewportRaf);
    authViewportRaf = requestAnimationFrame(update);
  };
  const onFocusChange = () => schedule();

  if (vv) {
    vv.addEventListener("resize", schedule);
    vv.addEventListener("scroll", schedule);
  }
  window.addEventListener("orientationchange", schedule);
  [
    authLoginNickname,
    authLoginPassword,
    authRegisterNickname,
    authRegisterEmail,
    authRegisterPassword,
    authRegisterPasswordConfirm,
  ].forEach((el) => {
    el?.addEventListener("focus", onFocusChange);
    el?.addEventListener("blur", onFocusChange);
  });

  authViewportCleanup = () => {
    if (vv) {
      vv.removeEventListener("resize", schedule);
      vv.removeEventListener("scroll", schedule);
    }
    window.removeEventListener("orientationchange", schedule);
    [
      authLoginNickname,
      authLoginPassword,
      authRegisterNickname,
      authRegisterEmail,
      authRegisterPassword,
      authRegisterPasswordConfirm,
    ].forEach((el) => {
      el?.removeEventListener("focus", onFocusChange);
      el?.removeEventListener("blur", onFocusChange);
    });
  };

  schedule();
}

function topSearchText() {
  if (state.locale === "ru") return { action: "Искать", placeholder: "Искать…" };
  if (state.locale === "uk") return { action: "Шукати", placeholder: "Шукати…" };
  if (state.locale === "et") return { action: "Otsi", placeholder: "Otsi…" };
  return { action: "Search", placeholder: "Search…" };
}

function installButtonText() {
  if (state.locale === "ru") return "Установить приложение";
  if (state.locale === "uk") return "Встановити застосунок";
  if (state.locale === "et") return "Paigalda rakendus";
  return "Install app";
}

function addSongNavText() {
  if (state.locale === "ru") return "Добавить песню";
  if (state.locale === "uk") return "Додати пісню";
  if (state.locale === "et") return "Lisa laul";
  return "Add song";
}

function brandSubtitleText() {
  if (state.locale === "ru") return "Европейский исторический песенник";
  if (state.locale === "uk") return "Європейський історичний пісенник";
  if (state.locale === "et") return "Euroopa ajalooline laulik";
  return "European Historical Songbook";
}

function appBootLoadingText() {
  if (state.locale === "ru") return "Загрузка...";
  if (state.locale === "uk") return "Завантаження...";
  if (state.locale === "et") return "Laadimine...";
  return "Loading...";
}

function closeActionText() {
  if (state.locale === "ru") return "Закрыть";
  if (state.locale === "uk") return "Закрити";
  if (state.locale === "et") return "Sulge";
  return "Close";
}

function openCatalogAriaText() {
  if (state.locale === "ru") return "Перейти в каталог";
  if (state.locale === "uk") return "Перейти до каталогу";
  if (state.locale === "et") return "Ava kataloog";
  return "Open catalog";
}

function mainNavigationAriaText() {
  if (state.locale === "ru") return "Основная навигация";
  if (state.locale === "uk") return "Основна навігація";
  if (state.locale === "et") return "Põhinavigatsioon";
  return "Main navigation";
}

function interfaceLanguageAriaText() {
  if (state.locale === "ru") return "Язык интерфейса";
  if (state.locale === "uk") return "Мова інтерфейсу";
  if (state.locale === "et") return "Liidese keel";
  return "Interface language";
}

function loadingApplicationAriaText() {
  if (state.locale === "ru") return "Загрузка приложения";
  if (state.locale === "uk") return "Завантаження застосунку";
  if (state.locale === "et") return "Rakenduse laadimine";
  return "Loading application";
}

function escapeHtml(value) {
  return String(value ?? "")
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;")
    .replace(/'/g, "&#39;");
}

function routeLoadingMarkup() {
  const title = "European Songbook";
  const subtitle = appBootLoadingText();
  const aria = appBootLoadingText();
  return `
    <div class="route-content-loading" role="status" aria-live="polite" aria-label="${escapeHtml(aria)}">
      <div class="app-boot-splash-card route-content-loading-card">
        <img src="./ui/assets/logo-sticker-20260221.png" alt="" loading="eager" decoding="async" fetchpriority="high" />
        <div class="app-boot-splash-title">${escapeHtml(title)}</div>
        <div class="app-boot-splash-subtitle">${escapeHtml(subtitle)}</div>
        <span class="app-boot-splash-loader" aria-hidden="true"></span>
      </div>
    </div>
  `;
}

function getHashQuery() {
  const hash = location.hash || "#/";
  const raw = hash.startsWith("#/") ? hash.slice(2) : hash.slice(1);
  const [, queryPart] = raw.split("?");
  return new URLSearchParams(queryPart || "");
}

function setTopSearchState(route) {
  if (!topSearchWrap || !topSearchInput) return;
  const routeName = String(route?.name || "").trim();
  const shouldShowSearch = routeName === "home" || routeName === "song";
  const isOpen = topSearchWrap.classList.contains("is-open") && !topSearchWrap.classList.contains("is-closing");
  if (shouldShowSearch && !isOpen) animateElementOpen(topSearchWrap);
  if (!shouldShowSearch && isOpen) animateElementClose(topSearchWrap, { duration: 560 });
  const query = route?.query || Object.fromEntries(getHashQuery());
  if (query.q !== undefined) topSearchInput.value = query.q || "";
}

function setTopbarLogoVisibility(route) {
  if (!(topbarLogo instanceof HTMLElement)) return;
  const shouldHideLogo = String(route?.name || "").trim() === "song";
  if (shouldHideLogo) {
    topbarLogo.hidden = true;
    topbarLogo.setAttribute("aria-hidden", "true");
    topbarLogo.setAttribute("tabindex", "-1");
    topbarLogo.style.display = "none";
    if (topbarBrandText instanceof HTMLElement) {
      topbarBrandText.style.marginLeft = "12px";
    }
    return;
  }
  topbarLogo.hidden = false;
  topbarLogo.removeAttribute("aria-hidden");
  topbarLogo.removeAttribute("tabindex");
  topbarLogo.style.removeProperty("display");
  if (topbarBrandText instanceof HTMLElement) {
    topbarBrandText.style.removeProperty("margin-left");
  }
}

function runTopSearch() {
  const q = (topSearchInput?.value || "").trim();
  const next = new URLSearchParams();
  if (q) next.set("q", q);
  next.set("searched", "1");
  next.set("adv", "0");
  next.set("page", "1");
  const nextHash = `#/${next.toString() ? `?${next.toString()}` : ""}`;
  if (location.hash === nextHash) {
    router.handle();
    return;
  }
  location.hash = nextHash;
}

function setNavLabel(id, text) {
  const node = document.getElementById(id);
  if (!node) return;
  const textNode = node.querySelector(".ig-text, .yt-bottom-text");
  if (textNode) {
    textNode.textContent = text;
    return;
  }
  node.textContent = text;
}

function setTextById(id, text) {
  const node = document.getElementById(id);
  if (node) node.textContent = text;
}

function deriveUserDisplayName(user) {
  if (!user || typeof user !== "object") return "";
  const nickname = String(user.nickname || "").trim();
  if (nickname) return nickname;
  const email = String(user.email || "").trim();
  if (!email) return "";
  const at = email.indexOf("@");
  if (at > 0) return email.slice(0, at);
  return email;
}

function updateUserChip() {
  const displayName = deriveUserDisplayName(state.user);
  const email = String(state.user?.email || "").trim();
  const applyChip = (chipNode) => {
    if (!chipNode) return;
    if (!state.user || !displayName) {
      chipNode.textContent = "";
      chipNode.classList.add("hidden");
      chipNode.removeAttribute("title");
      return;
    }
    chipNode.textContent = displayName;
    chipNode.classList.remove("hidden");
    if (email) chipNode.title = email;
    else chipNode.removeAttribute("title");
  };
  applyChip(userChip);
  applyChip(menuUserChip);
}

function permissionAliases(permission) {
  if (permission === "songs.create" || permission === "songs.edit") {
    return [permission, "songs.manage"];
  }
  if (permission === "songs.manage") {
    return ["songs.manage", "songs.create", "songs.edit"];
  }
  return [permission];
}

function hasPermission(permission) {
  if (!state.user) return false;
  if (state.user.role === "super_admin") return true;
  if (state.user.role !== "admin") return false;
  const granted = new Set(Array.isArray(state.user.permissions) ? state.user.permissions : []);
  return permissionAliases(permission).some((value) => granted.has(value));
}

function hasAnyAdminAccess() {
  return hasPermission("songs.edit")
    || hasPermission("songs.bulk_import")
    || hasPermission("proposals.review")
    || !!(state.user && state.user.role === "super_admin");
}

function canReviewAdminRequests() {
  return hasPermission("proposals.review");
}

function adminAttentionSuffix() {
  return pendingAdminRequestsCount > 0 ? " !" : "";
}

function applyAdminAttentionLabels() {
  const adminText = `${t("nav.admin")}${adminAttentionSuffix()}`;
  setNavLabel("navAdmin", adminText);
  setNavLabel("mNavAdmin", adminText);
  setNavLabel("dNavAdmin", adminText);
  const requestsText = `${t("admin.tab.requests")}${adminAttentionSuffix()}`;
  setNavLabel("dNavAdminRequests", requestsText);
  const menuAdminLabel = document.getElementById("menuAdminLabel");
  if (menuAdminLabel) menuAdminLabel.textContent = `${t("menu.admin")}${adminAttentionSuffix()}`;
}

async function refreshAdminRequestsAttention(options = {}) {
  const force = options.force === true;
  if (!canReviewAdminRequests()) {
    pendingAdminRequestsCount = 0;
    pendingAdminRequestsFetchedAt = 0;
    pendingAdminRequestsUserKey = "";
    applyAdminAttentionLabels();
    return;
  }

  const userKey = state.user?.id || state.user?.email || "admin";
  const now = Date.now();
  if (!force && pendingAdminRequestsUserKey === userKey && now - pendingAdminRequestsFetchedAt < PENDING_ADMIN_REQUESTS_REFRESH_MS) {
    applyAdminAttentionLabels();
    return;
  }

  const fetchSeq = ++pendingAdminRequestsFetchSeq;
  try {
    const out = await api.adminRequests({ status: "new", q: "", page: 1 });
    if (fetchSeq !== pendingAdminRequestsFetchSeq) return;
    pendingAdminRequestsCount = Math.max(0, Number(out?.total || 0));
    pendingAdminRequestsFetchedAt = Date.now();
    pendingAdminRequestsUserKey = userKey;
  } catch {
    if (fetchSeq !== pendingAdminRequestsFetchSeq) return;
    pendingAdminRequestsCount = 0;
    pendingAdminRequestsFetchedAt = Date.now();
    pendingAdminRequestsUserKey = userKey;
  }
  applyAdminAttentionLabels();
}

function normalizeThemeName(raw = "") {
  const theme = String(raw || "").trim().toLowerCase();
  if (theme === "light") return "white";
  if (SUPPORTED_THEMES.includes(theme)) return theme;
  return "dark";
}

function themeToggleLabel() {
  return activeTheme === "white"
    ? t("menu.theme.toDark")
    : t("menu.theme.toWhite");
}

function syncThemeToggleButton() {
  if (!btnThemeToggle) return;
  const aria = t("menu.theme.ariaToggle");
  btnThemeToggle.textContent = themeToggleLabel();
  btnThemeToggle.setAttribute("aria-label", aria);
  btnThemeToggle.setAttribute("title", aria);
  btnThemeToggle.setAttribute("aria-pressed", activeTheme === "white" ? "true" : "false");
}

function syncThemeColorMeta() {
  if (!metaThemeColor) return;
  const color = THEME_META_COLORS[activeTheme] || THEME_META_COLORS.dark;
  metaThemeColor.setAttribute("content", color);
}

function getInitialTheme() {
  const stored = String(safeStorageGet(THEME_KEY) || "").trim().toLowerCase();
  const normalized = normalizeThemeName(stored || "dark");
  if (stored && stored !== normalized) {
    safeStorageSet(THEME_KEY, normalized);
  }
  return normalized || "dark";
}

function applyTheme(theme = activeTheme, options = {}) {
  const persist = options.persist !== false;
  activeTheme = normalizeThemeName(theme);
  document.documentElement.setAttribute("data-theme", activeTheme);
  if (persist) safeStorageSet(THEME_KEY, activeTheme);
  syncThemeColorMeta();
  syncThemeToggleButton();
}

function applyStaticTexts() {
  document.title = t("app.title");
  setTextById("brandTitle", t("app.title"));
  setTextById("brandSubtitle", brandSubtitleText());
  if (appBootSplashTitle) appBootSplashTitle.textContent = t("app.title");
  if (appBootSplashSubtitle) appBootSplashSubtitle.textContent = appBootLoadingText();
  if (appBootSplash) appBootSplash.setAttribute("aria-label", loadingApplicationAriaText());
  if (topbarLogo) topbarLogo.setAttribute("aria-label", openCatalogAriaText());
  if (mainRailNav) mainRailNav.setAttribute("aria-label", mainNavigationAriaText());

  setNavLabel("navCatalog", t("nav.catalog"));
  setNavLabel("navRequest", addSongNavText());
  setNavLabel("navFav", t("nav.favorites"));
  setNavLabel("navDrafts", t("nav.drafts"));

  setNavLabel("mNavCatalog", t("nav.catalog"));
  setNavLabel("mNavRequest", addSongNavText());
  setNavLabel("mNavFav", t("nav.favorites"));
  setNavLabel("mNavDrafts", t("nav.drafts"));
  setNavLabel("mNavMenu", t("menu.title"));

  setNavLabel("dNavCatalog", t("nav.catalog"));
  setNavLabel("dNavRequest", addSongNavText());
  setNavLabel("dNavFav", t("nav.favorites"));
  setNavLabel("dNavDrafts", t("nav.drafts"));
  setNavLabel("dNavAdminContent", t("admin.tab.content"));
  setNavLabel("dNavAdminUsers", t("admin.tab.users"));

  setTextById("menuTitle", t("menu.title"));
  setTextById("menuMainLabel", t("menu.sections"));
  setTextById("menuSettingsLabel", t("menu.settings"));
  setTextById("menuLocaleLabel", t("home.lang"));

  if (btnSidebarToggle) btnSidebarToggle.setAttribute("aria-label", t("menu.open"));
  if (btnMenuClose) btnMenuClose.setAttribute("aria-label", t("menu.close"));
  if (btnAuthClose) btnAuthClose.setAttribute("aria-label", closeActionText());
  if (promptDialogCloseButton) promptDialogCloseButton.setAttribute("aria-label", closeActionText());

  if (btnLogin) btnLogin.textContent = t("auth.login");
  if (btnLogout) btnLogout.textContent = t("auth.logout");
  if (btnMenuLogout) btnMenuLogout.textContent = t("auth.logout");
  if (topSearchInput && topSearchBtn) {
    const labels = topSearchText();
    topSearchInput.placeholder = labels.placeholder;
    topSearchBtn.textContent = labels.action;
  }

  const footerNote = document.getElementById("footerNote");
  if (footerNote) footerNote.textContent = t("footer.note");
  setTextById("authTitle", authDialogMode === "register" ? t("auth.doRegister") : t("auth.login"));
  setTextById("authLoginNicknameLabel", authNicknameLabel());
  setTextById("authLoginPasswordLabel", t("auth.password"));
  setTextById("authRegisterNicknameLabel", authNicknameRegisterLabel());
  setTextById("authRegisterEmailLabel", authEmailRegisterLabel());
  setTextById("authRegisterPasswordLabel", t("auth.password"));
  setTextById("authRegisterPasswordConfirmLabel", authPasswordConfirmLabel());
  if (authModeLogin) authModeLogin.textContent = t("auth.doLogin");
  if (authModeRegister) authModeRegister.textContent = t("auth.doRegister");
  if (doLogin) doLogin.textContent = t("auth.doLogin");
  if (doRegister) doRegister.textContent = t("auth.doRegister");

  setTextById("promptTitle", t("prompt.title"));
  setTextById("promptTextLabel", t("prompt.text"));
  setTextById("promptCopy", t("prompt.copy"));
  setTextById("promptOpen", t("prompt.open"));
  setTextById("promptClose", t("prompt.close"));
  if (btnInstallApp) btnInstallApp.textContent = installButtonText();
  syncThemeToggleButton();

  if (localeSwitches.length) {
    const labels = { ru: "Rus", et: "Est", en: "Eng", uk: "Ukr" };
    localeSwitches.forEach((switchEl) => {
      Array.from(switchEl.options).forEach((option) => {
        option.textContent = labels[option.value] || option.textContent;
      });
      switchEl.setAttribute("aria-label", interfaceLanguageAriaText());
      switchEl.value = state.locale;
    });
  }
  applyAdminAttentionLabels();
  updateUserChip();
}

function updateInstallButtonVisibility() {
  if (!btnInstallApp) return;
  const canShowInstall = !!state.user && !!deferredInstallPrompt;
  btnInstallApp.classList.toggle("hidden", !canShowInstall);
}

function setupInstallPrompt() {
  if (!btnInstallApp) return;
  updateInstallButtonVisibility();

  window.addEventListener("beforeinstallprompt", (event) => {
    event.preventDefault();
    deferredInstallPrompt = event;
    updateInstallButtonVisibility();
  });

  window.addEventListener("appinstalled", () => {
    deferredInstallPrompt = null;
    updateInstallButtonVisibility();
  });

  btnInstallApp.addEventListener("click", async () => {
    if (!deferredInstallPrompt) return;
    try {
      await deferredInstallPrompt.prompt();
      await deferredInstallPrompt.userChoice;
    } catch {}
    deferredInstallPrompt = null;
    updateInstallButtonVisibility();
    setMenuOpen(false);
  });
}

async function registerServiceWorker() {
  if (!("serviceWorker" in navigator)) return;
  const enableServiceWorker = false;
  try {
    if (!enableServiceWorker) {
      const registrations = await navigator.serviceWorker.getRegistrations();
      await Promise.all(registrations.map((registration) => registration.unregister()));
      if ("caches" in window) {
        const cacheKeys = await caches.keys();
        await Promise.all(
          cacheKeys
            .filter((key) => String(key || "").startsWith("songbook-app-"))
            .map((key) => caches.delete(key)),
        );
      }
      return;
    }
    const swUrl = new URL("./service-worker.js", import.meta.url);
    const scope = new URL("./", import.meta.url).pathname;
    const registration = await navigator.serviceWorker.register(swUrl, { scope });
    if (registration.waiting) {
      registration.waiting.postMessage({ type: "SKIP_WAITING" });
    }
    await navigator.serviceWorker.ready;
  } catch (error) {
    console.warn("Service Worker registration failed", error);
  }
}

function normalizePath(hash) {
  const raw = (hash || "#/").replace(/^#/, "");
  const path = raw.split("?")[0] || "/";
  return path.startsWith("/") ? path : `/${path}`;
}

function isLinkActive(path, href) {
  const hrefPath = normalizePath(href || "#/");
  if (hrefPath === "/") return path === "/";
  return path === hrefPath || path.startsWith(`${hrefPath}/`);
}

function setMenuOpen(open) {
  if (!menuDrawer || !menuBackdrop) return;
  if (open) {
    animateElementOpen(menuBackdrop);
    animateElementOpen(menuDrawer);
    animateStagedReveal(menuDrawer);
    menuDrawer.setAttribute("aria-hidden", "false");
    document.body.classList.add("menu-open");
    return;
  }
  menuDrawer.setAttribute("aria-hidden", "true");
  animateElementClose(menuDrawer, { duration: MENU_DRAWER_MOTION_MS });
  animateElementClose(menuBackdrop, { duration: MENU_BACKDROP_MOTION_MS });
  document.body.classList.remove("menu-open");
}

function setActiveNav() {
  const path = normalizePath(location.hash || "#/");
  Array.from(document.querySelectorAll(".js-route-link")).forEach((a) => {
    const href = a.getAttribute("href") || "#/";
    a.classList.toggle("active", isLinkActive(path, href));
  });

  const canSeeUser = !!state.user;
  const canEditSongs = hasPermission("songs.edit");
  const canBulkImportSongs = hasPermission("songs.bulk_import");
  const canReviewRequests = hasPermission("proposals.review");
  const isSuperAdmin = !!(state.user && state.user.role === "super_admin");
  const canSeeAdmin = hasAnyAdminAccess();

  ["navFav", "mNavFav", "dNavFav", "navDrafts", "mNavDrafts", "dNavDrafts"].forEach((id) => document.getElementById(id)?.classList.toggle("hidden", !canSeeUser));
  ["navAdmin", "mNavAdmin", "dNavAdmin", "menuAdminGroup"].forEach((id) => document.getElementById(id)?.classList.toggle("hidden", !canSeeAdmin));
  document.getElementById("dNavAdminContent")?.classList.toggle("hidden", !(canEditSongs || canBulkImportSongs));
  document.getElementById("dNavAdminRequests")?.classList.toggle("hidden", !canReviewRequests);
  document.getElementById("dNavAdminUsers")?.classList.toggle("hidden", !isSuperAdmin);
  menuSettingsGroup?.classList.remove("hidden");
  if (!canSeeUser && menuUserChip) {
    menuUserChip.textContent = "";
    menuUserChip.classList.add("hidden");
    menuUserChip.removeAttribute("title");
  }

  if (btnLogin) btnLogin.classList.toggle("hidden", !!state.user);
  if (btnLogout) btnLogout.classList.add("hidden");
  if (btnMenuLogout) btnMenuLogout.classList.toggle("hidden", !state.user);
  updateInstallButtonVisibility();
  applyAdminAttentionLabels();
  updateUserChip();
}

async function refreshMe() {
  try {
    state.user = await api.me();
    if (state.user) rememberAuthSessionHint();
  } catch {
    clearAuthSessionHint();
    state.user = null;
  }
  setActiveNav();
  void refreshAdminRequestsAttention({ force: true });
}

async function refreshRoute() {
  router.handle();
}

state.locale = getInitialLocale();
setLocale(state.locale);
activeTheme = getInitialTheme();
applyTheme(activeTheme, { persist: false });
applyStaticTexts();
setupInstallPrompt();
void registerServiceWorker();

localeSwitches.forEach((switchEl) => {
  switchEl.addEventListener("change", () => {
    setLocale(switchEl.value);
    applyStaticTexts();
    refreshRoute();
  });
});

btnThemeToggle?.addEventListener("click", () => {
  applyTheme(activeTheme === "white" ? "dark" : "white");
});

btnSidebarToggle?.addEventListener("click", () => setMenuOpen(true));
btnMenuClose?.addEventListener("click", () => setMenuOpen(false));
menuBackdrop?.addEventListener("click", () => setMenuOpen(false));
mNavMenu?.addEventListener("click", () => setMenuOpen(true));
menuDrawer?.querySelectorAll(".js-route-link").forEach((link) => link.addEventListener("click", () => setMenuOpen(false)));
let topSearchPointerHandledAt = 0;
topSearchBtn?.addEventListener("pointerup", (e) => {
  e.preventDefault();
  topSearchPointerHandledAt = Date.now();
  runTopSearch();
});
topSearchBtn?.addEventListener("click", (e) => {
  if (Date.now() - topSearchPointerHandledAt < 400) {
    e.preventDefault();
    return;
  }
  e.preventDefault();
  runTopSearch();
});
if (topSearchWrap instanceof HTMLFormElement) {
  topSearchWrap.addEventListener("submit", (e) => {
    e.preventDefault();
    runTopSearch();
  });
}
topSearchInput?.addEventListener("keydown", (e) => {
  if (e.key !== "Enter") return;
  e.preventDefault();
  runTopSearch();
});

window.addEventListener("keydown", (e) => {
  if (e.key === "Escape") setMenuOpen(false);
});

function openAuthDialog(mode = "login") {
  if (authMsg) authMsg.textContent = "";
  if (authLoginNickname) authLoginNickname.value = state.lastNickname || "";
  if (authLoginPassword) authLoginPassword.value = "";
  if (authRegisterNickname) authRegisterNickname.value = state.lastNickname || "";
  if (authRegisterEmail) authRegisterEmail.value = "";
  if (authRegisterPassword) authRegisterPassword.value = "";
  if (authRegisterPasswordConfirm) authRegisterPasswordConfirm.value = "";
  setAuthDialogMode(mode === "register" ? "register" : "login");
  openDialogAnimated(dlgAuth);
  startAuthViewportSync();
}

btnLogin?.addEventListener("click", () => {
  openAuthDialog("login");
});
authModeLogin?.addEventListener("click", () => setAuthDialogMode("login"));
authModeRegister?.addEventListener("click", () => setAuthDialogMode("register"));
authForm?.addEventListener("submit", (e) => {
  e.preventDefault();
  if (authDialogMode === "register") doRegister?.click();
  else doLogin?.click();
});
btnAuthClose?.addEventListener("click", () => closeDialogAnimated(dlgAuth));
dlgAuth?.addEventListener("click", (e) => {
  const rect = dlgAuth.getBoundingClientRect();
  const inside = (
    e.clientX >= rect.left
    && e.clientX <= rect.right
    && e.clientY >= rect.top
    && e.clientY <= rect.bottom
  );
  if (!inside) closeDialogAnimated(dlgAuth);
});
dlgAuth?.addEventListener("cancel", (e) => {
  e.preventDefault();
  closeDialogAnimated(dlgAuth);
});
dlgAuth?.addEventListener("close", () => {
  clearPendingTransition(dlgAuth);
  dlgAuth.classList.remove("is-open", "is-closing");
  stopAuthViewportSync();
});
document.addEventListener("click", (event) => {
  const trigger = event.target instanceof HTMLElement ? event.target.closest("[data-auth-dialog]") : null;
  if (!trigger) return;
  event.preventDefault();
  const mode = String(trigger.getAttribute("data-auth-dialog") || "login").trim().toLowerCase();
  openAuthDialog(mode);
});

async function doLogout() {
  await api.logout();
  state.user = null;
  pendingAdminRequestsCount = 0;
  pendingAdminRequestsFetchedAt = 0;
  pendingAdminRequestsUserKey = "";
  setActiveNav();
  router.go("#/");
}

btnLogout?.addEventListener("click", doLogout);
btnMenuLogout?.addEventListener("click", async () => {
  await doLogout();
  setMenuOpen(false);
});

doLogin?.addEventListener("click", async (e) => {
  e.preventDefault();
  if (authMsg) authMsg.textContent = "";
  const nickname = authLoginNickname?.value?.trim() || "";
  const password = authLoginPassword?.value || "";
  if (!nickname || !password) {
    if (authMsg) authMsg.textContent = authNickAndPassRequiredMessage();
    return;
  }
  state.lastNickname = nickname;
  try {
    await api.login(nickname, password);
    closeDialogAnimated(dlgAuth);
    await refreshMe();
    router.go("#/");
  } catch (error) {
    if (authMsg) authMsg.textContent = error?.message || t("auth.loginFailed");
  }
});

doRegister?.addEventListener("click", async (e) => {
  e.preventDefault();
  if (authMsg) authMsg.textContent = "";
  const nickname = authRegisterNickname?.value?.trim() || "";
  const email = authRegisterEmail?.value?.trim() || "";
  const password = authRegisterPassword?.value || "";
  const passwordConfirm = authRegisterPasswordConfirm?.value || "";
  if (!nickname || !email || !password) {
    if (authMsg) authMsg.textContent = authRegisterFieldsRequiredMessage();
    return;
  }
  if (password !== passwordConfirm) {
    if (authMsg) authMsg.textContent = authPasswordMismatchMessage();
    return;
  }
  state.lastNickname = nickname;
  try {
    await api.register(nickname, email, password, passwordConfirm);
    closeDialogAnimated(dlgAuth);
    await refreshMe();
    router.go("#/");
  } catch (error) {
    if (authMsg) authMsg.textContent = getRegisterErrorMessage(error);
  }
});

function shouldUseFastSearchMotion(route) {
  return false;
}

router.on(async (route) => {
  const renderToken = ++activeRouteRenderToken;
  setTopSearchState(route);
  setTopbarLogoVisibility(route);
  setActiveNav();
  const app = document.getElementById("app");
  app.classList.toggle("song-layout", route?.name === "song");
  app.setAttribute("aria-busy", "true");
  const useReducedRouteMotion = shouldUseFastSearchMotion(route);
  app.innerHTML = routeLoadingMarkup();
  try {
    const out = await render(route);
    if (renderToken !== activeRouteRenderToken) return;
    app.innerHTML = out.html;
    bind(route, out.ctx);
    if (route?.name === "request") {
      window.scrollTo({ top: 0, left: 0, behavior: "auto" });
    }
    if (route?.name === "admin" && route?.section === "editor") {
      window.scrollTo({ top: 0, left: 0, behavior: "auto" });
    }
    if (useReducedRouteMotion) {
      clearStagedReveal(app);
      app.classList.remove("page-enter", "page-enter-active");
    } else {
      animateAppEnter(app);
      animateStagedReveal(app);
    }
  } catch (error) {
    if (renderToken !== activeRouteRenderToken) return;
    const msg = error?.message || t("app.unexpectedError");
    app.innerHTML = `<div class="card"><div class="h1">${t("common.error")}</div><div class="sep"></div><div class="muted">${msg}</div></div>`;
    if (useReducedRouteMotion) {
      clearStagedReveal(app);
      app.classList.remove("page-enter", "page-enter-active");
    } else {
      animateAppEnter(app);
      animateStagedReveal(app);
    }
  }
  if (renderToken !== activeRouteRenderToken) return;
  app.setAttribute("aria-busy", "false");
  setMenuOpen(false);
  setActiveNav();
  setTopSearchState(route);
  void refreshAdminRequestsAttention();
  resetSongPageBackgroundParallaxCache();
  scheduleSongPageBackgroundParallax();
  syncMobileEditorFocusState();
  scheduleMobileNavViewportOffsetSync();
  hideAppBootSplash();
});

window.addEventListener("hashchange", () => {
  setMenuOpen(false);
  router.handle();
  resetSongPageBackgroundParallaxCache();
  scheduleSongPageBackgroundParallax();
  syncMobileEditorFocusState();
  scheduleMobileNavViewportOffsetSync();
});

// Keep parallax synced to scroll/viewport changes.
window.addEventListener("scroll", scheduleSongPageBackgroundParallax, { passive: true });
window.addEventListener("resize", handleSongPageBackgroundParallaxViewportChange);
window.visualViewport?.addEventListener?.("resize", handleSongPageBackgroundParallaxViewportChange);
window.addEventListener("resize", syncMobileEditorFocusState, { passive: true });
window.visualViewport?.addEventListener?.("resize", syncMobileEditorFocusState, { passive: true });
window.addEventListener("resize", scheduleMobileNavViewportOffsetSync, { passive: true });
window.addEventListener("orientationchange", scheduleMobileNavViewportOffsetSync);
window.addEventListener("scroll", scheduleMobileNavViewportOffsetSync, { passive: true });
window.visualViewport?.addEventListener?.("resize", scheduleMobileNavViewportOffsetSync, { passive: true });
window.visualViewport?.addEventListener?.("scroll", scheduleMobileNavViewportOffsetSync, { passive: true });
document.addEventListener("focusin", syncMobileEditorFocusState);
document.addEventListener("focusout", () => {
  requestAnimationFrame(syncMobileEditorFocusState);
  scheduleMobileNavViewportOffsetSync();
});

preloadGlobalWallpaperAssets();
if (shouldBootstrapAuthOnLoad()) {
  await refreshMe();
} else {
  state.user = null;
  setActiveNav();
}
router.handle();
resetSongPageBackgroundParallaxCache();
scheduleSongPageBackgroundParallax();
syncMobileEditorFocusState();
scheduleMobileNavViewportOffsetSync();
setTimeout(hideAppBootSplash, 700);

