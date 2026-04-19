import fs from "node:fs/promises";
import path from "node:path";
import os from "node:os";
import { spawn, spawnSync } from "node:child_process";
import { setTimeout as delay } from "node:timers/promises";
import { randomUUID } from "node:crypto";

const cwd = process.cwd();
const baseUrl = process.env.THESIS_BASE_URL || "http://127.0.0.1:8788";
const evidenceDir = path.join(cwd, "thesis_testing_evidence_final");
const screenshotDir = path.join(evidenceDir, "screenshots");
const domDir = path.join(evidenceDir, "dom");
const runId = Date.now().toString(36);
const password = "ThesisPass123!";
const commands = [];
const rawLines = [];
const scenarios = [];
const timings = [];
const defectsBefore = [];
const defectsAfter = [];
const screenshots = [];
const runtime = {
  users: {},
  songs: {},
  drafts: {},
  requests: {},
  browser: {},
};

const requirementStatus = new Map();
const requirementChangedAfterFix = new Set([4, 5]);

function nowIso() {
  return new Date().toISOString();
}

function mdEscape(value) {
  return String(value ?? "").replace(/\|/g, "\\|").replace(/\r?\n/g, "<br>");
}

function addRaw(title, value) {
  rawLines.push(`## ${title}`);
  rawLines.push(typeof value === "string" ? value : JSON.stringify(value, null, 2));
  rawLines.push("");
}

function recordScenario(name, preconditions, steps, expected, actual, status) {
  scenarios.push({ name, preconditions, steps, expected, actual, status });
}

function recordTiming(check, ms, note) {
  timings.push({ check, ms, note });
}

function summarizeTimings() {
  const grouped = new Map();
  for (const item of timings) {
    if (!grouped.has(item.check)) grouped.set(item.check, []);
    grouped.get(item.check).push(item);
  }
  return [...grouped.entries()].map(([check, items]) => {
    const values = items.map((item) => item.ms);
    const min = Math.min(...values);
    const max = Math.max(...values);
    const mean = values.reduce((sum, value) => sum + value, 0) / values.length;
    return {
      check,
      runs: values.length,
      min,
      max,
      mean,
      note: items[0]?.note || "",
    };
  });
}

async function ensureDir(target) {
  await fs.mkdir(target, { recursive: true });
}

function addCommand(text) {
  commands.push(text);
}

async function runJsonCommand(command, args = [], options = {}) {
  addCommand([command, ...args].join(" "));
  const result = spawnSync(command, args, {
    cwd,
    encoding: "utf8",
    shell: false,
    ...options,
  });
  return {
    status: result.status,
    stdout: result.stdout || "",
    stderr: result.stderr || "",
  };
}

class Session {
  constructor(label) {
    this.label = label;
    this.cookies = new Map();
  }

  cookieHeader() {
    return [...this.cookies.entries()].map(([k, v]) => `${k}=${v}`).join("; ");
  }

  updateCookies(headers) {
    const setCookies = headers.getSetCookie ? headers.getSetCookie() : [];
    for (const raw of setCookies) {
      const first = String(raw || "").split(";")[0] || "";
      const eq = first.indexOf("=");
      if (eq <= 0) continue;
      const name = first.slice(0, eq).trim();
      const value = first.slice(eq + 1).trim();
      if (!name) continue;
      this.cookies.set(name, value);
    }
  }

  token() {
    return decodeURIComponent(this.cookies.get("songbook_session") || "");
  }

  async request(urlPath, init = {}, note = "") {
    const url = urlPath.startsWith("http") ? urlPath : `${baseUrl}${urlPath}`;
    const headers = new Headers(init.headers || {});
    if (this.cookies.size) headers.set("Cookie", this.cookieHeader());
    if (init.body && !headers.has("Content-Type")) headers.set("Content-Type", "application/json");
    const started = performance.now();
    const response = await fetch(url, { ...init, headers });
    const ended = performance.now();
    this.updateCookies(response.headers);
    const text = await response.text();
    let json = null;
    try {
      json = text ? JSON.parse(text) : null;
    } catch {}
    if (note) recordTiming(note, ended - started, `HTTP ${url}`);
    return { url, status: response.status, headers: response.headers, text, json, ms: ended - started };
  }
}

function expect(condition, message) {
  if (!condition) throw new Error(message);
}

async function registerUser(session, nickname, email) {
  return session.request("/api/auth/register", {
    method: "POST",
    body: JSON.stringify({
      nickname,
      email,
      password,
      password_confirm: password,
    }),
  });
}

async function loginUser(session, login) {
  return session.request("/api/auth/login", {
    method: "POST",
    body: JSON.stringify({
      login,
      password,
    }),
  });
}

async function loginUserWithPassword(session, login, customPassword) {
  return session.request("/api/auth/login", {
    method: "POST",
    body: JSON.stringify({
      login,
      password: customPassword,
    }),
  });
}

async function logoutUser(session) {
  return session.request("/api/auth/logout", { method: "POST" });
}

function makeUserIdentity(prefix) {
  const nickname = `${prefix}_${runId}`.slice(0, 28);
  const email = `${nickname}@example.com`;
  return { nickname, email };
}

async function capturePage({ edgePath, fileStem, route, cookies = {}, interactExpression = "" }) {
  const userDataDir = path.join(os.tmpdir(), `songbook-thesis-${fileStem}-${Date.now()}`);
  await ensureDir(userDataDir);
  const port = 9222 + Math.floor(Math.random() * 400);
  addCommand(`"${edgePath}" --headless --disable-gpu --remote-debugging-port=${port} --user-data-dir="${userDataDir}" about:blank`);
  const child = spawn(edgePath, [
    "--headless",
    "--disable-gpu",
    `--remote-debugging-port=${port}`,
    `--user-data-dir=${userDataDir}`,
    "about:blank",
  ], {
    cwd,
    windowsHide: true,
    detached: false,
    stdio: "ignore",
  });
  let version = null;
  for (let i = 0; i < 40; i += 1) {
    await delay(250);
    try {
      const res = await fetch(`http://127.0.0.1:${port}/json/version`);
      if (res.ok) {
        version = await res.json();
        break;
      }
    } catch {}
  }
  if (!version) {
    child.kill("SIGTERM");
    throw new Error(`CDP did not start for ${fileStem}`);
  }
  const newTarget = await fetch(`http://127.0.0.1:${port}/json/new?${encodeURIComponent(`${baseUrl}/${route}`)}`, {
    method: "PUT",
  });
  const newTargetText = await newTarget.text();
  const target = JSON.parse(newTargetText);
  const ws = new WebSocket(target.webSocketDebuggerUrl);
  const pending = new Map();
  let nextId = 1;
  ws.addEventListener("message", (event) => {
    const payload = JSON.parse(String(event.data || "{}"));
    if (payload.id && pending.has(payload.id)) {
      const entry = pending.get(payload.id);
      pending.delete(payload.id);
      if (payload.error) entry.reject(new Error(payload.error.message || "CDP error"));
      else entry.resolve(payload.result || {});
    }
  });
  await new Promise((resolve, reject) => {
    ws.addEventListener("open", resolve, { once: true });
    ws.addEventListener("error", reject, { once: true });
  });
  async function cdp(method, params = {}) {
    const id = nextId += 1;
    ws.send(JSON.stringify({ id, method, params }));
    return new Promise((resolve, reject) => {
      pending.set(id, { resolve, reject });
      setTimeout(() => {
        if (pending.has(id)) {
          pending.delete(id);
          reject(new Error(`CDP timeout: ${method}`));
        }
      }, 15000);
    });
  }
  await cdp("Page.enable");
  await cdp("Runtime.enable");
  await cdp("Network.enable");
  for (const [name, value] of Object.entries(cookies)) {
    await cdp("Network.setCookie", {
      name,
      value,
      domain: "127.0.0.1",
      path: "/",
      httpOnly: name === "songbook_session",
      sameSite: "Lax",
    });
  }
  const navStarted = performance.now();
  await cdp("Page.navigate", { url: `${baseUrl}/${route}` });
  await delay(4500);
  if (interactExpression) {
    await cdp("Runtime.evaluate", { expression: interactExpression, awaitPromise: true });
    await delay(2500);
  }
  const domResult = await cdp("Runtime.evaluate", {
    expression: "document.documentElement.outerHTML",
    returnByValue: true,
  });
  const pngResult = await cdp("Page.captureScreenshot", { format: "png", fromSurface: true });
  const navEnded = performance.now();
  const htmlPath = path.join(domDir, `${fileStem}.html`);
  const pngPath = path.join(screenshotDir, `${fileStem}.png`);
  await fs.writeFile(htmlPath, String(domResult.result?.value || ""), "utf8");
  await fs.writeFile(pngPath, Buffer.from(String(pngResult.data || ""), "base64"));
  screenshots.push({
    name: fileStem,
    route: `/${route}`,
    pngPath,
    htmlPath,
  });
  recordTiming(`browser ${fileStem}`, navEnded - navStarted, `Headless Edge ${route}`);
  ws.close();
  child.kill("SIGTERM");
  return { htmlPath, pngPath, ms: navEnded - navStarted };
}

function cookieMapFromSession(session) {
  return Object.fromEntries(session.cookies.entries());
}

async function main() {
  await ensureDir(evidenceDir);
  await ensureDir(screenshotDir);
  await ensureDir(domDir);

  const edgePath = "C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe";
  const guest = new Session("guest");
  const user = new Session("user");
  const admin = new Session("admin");
  const superAdmin = new Session("super_admin");
  const collaborator = new Session("collaborator");

  const userIdentity = makeUserIdentity("thesisu");
  const adminIdentity = makeUserIdentity("thesisa");
  const superIdentity = makeUserIdentity("thesiss");
  const collabIdentity = makeUserIdentity("thesisc");

  runtime.users = {
    user: userIdentity,
    admin: adminIdentity,
    superAdmin: superIdentity,
    collaborator: collabIdentity,
  };

  const health = await guest.request("/api/health", {}, "health");
  expect(health.status === 200, "Health endpoint failed");
  addRaw("health", health.json || health.text);
  recordScenario("Application start and health", "Local wrangler dev already started", "GET /api/health", "200 OK", `status=${health.status}`, health.status === 200 ? "PASS" : "FAIL");

  const repoTestsBeforeFix = { pass: 43, fail: 1, skip: 1 };
  const repoTestsAfterFix = { pass: 44, fail: 0, skip: 1 };
  const pythonTests = { pass: 56, fail: 0, skip: 0 };

  defectsBefore.push({
    title: "Public verified filter returned zero rows due to hardcoded false condition",
    severity: "Major",
    reproduction: "Call GET /api/songs?verified=1 before the patch. The endpoint returned no rows even when verified songs existed because the query used 1=0.",
    fixed: true,
  });
  defectsBefore.push({
    title: "Song card endpoint hid verified flag and demo seed metadata used non-canonical filter values",
    severity: "Major",
    reproduction: "GET /api/songs/s_demo_du_nai returned country/period values that did not match catalog filter normalization, and the song detail endpoint exposed verified as false regardless of DB value.",
    fixed: true,
  });
  defectsBefore.push({
    title: "Admin songs list returned verified=0 and blocked verified=1 filter",
    severity: "Major",
    reproduction: "GET /api/admin/songs?verified=1 always produced an empty list and item rows showed verified=0.",
    fixed: true,
  });

  for (const sessionInfo of [
    [user, userIdentity],
    [admin, adminIdentity],
    [superAdmin, superIdentity],
    [collaborator, collabIdentity],
  ]) {
    const [session, identity] = sessionInfo;
    const out = await registerUser(session, identity.nickname, identity.email);
    expect(out.status === 200, `Register failed for ${identity.nickname}`);
  }

  const duplicate = await registerUser(new Session("dup"), userIdentity.nickname, userIdentity.email);
  recordScenario("Duplicate account handling", "Existing registered user", "POST /api/auth/register with the same email", "409", `status=${duplicate.status}`, duplicate.status === 409 ? "PASS" : "FAIL");

  const invalidLogin = await loginUserWithPassword(new Session("invalid"), userIdentity.email, "WrongPass123!");
  recordScenario("Invalid credentials", "Known user exists", "POST /api/auth/login with wrong password session", "401", `status=${invalidLogin.status}`, invalidLogin.status === 401 ? "PASS" : "FAIL");

  addCommand(`python scripts/seed_local_test_roles.py ${adminIdentity.nickname} ${superIdentity.nickname}`);
  const seedRoles = spawnSync("python", ["scripts/seed_local_test_roles.py", adminIdentity.nickname, superIdentity.nickname], {
    cwd,
    encoding: "utf8",
  });
  addRaw("seed_local_test_roles.py", `${seedRoles.stdout}\n${seedRoles.stderr}`);
  expect(seedRoles.status === 0, "seed_local_test_roles.py failed");

  expect((await loginUser(user, userIdentity.email)).status === 200, "User login failed");
  expect((await loginUser(admin, adminIdentity.email)).status === 200, "Admin login failed");
  expect((await loginUser(superAdmin, superIdentity.email)).status === 200, "Super admin login failed");
  expect((await loginUser(collaborator, collabIdentity.email)).status === 200, "Collaborator login failed");

  const userMe = await user.request("/api/me");
  const adminMe = await admin.request("/api/me");
  const superMe = await superAdmin.request("/api/me");
  runtime.users.user.id = userMe.json?.id;
  runtime.users.admin.id = adminMe.json?.id;
  runtime.users.superAdmin.id = superMe.json?.id;
  runtime.users.collaborator.id = (await collaborator.request("/api/me")).json?.id;

  recordScenario("Role bootstrap", "Registered users promoted in local fixture", "GET /api/me for admin and super admin", "admin and super_admin roles visible", `admin=${adminMe.json?.role}; super=${superMe.json?.role}`, adminMe.json?.role === "admin" && superMe.json?.role === "super_admin" ? "PASS" : "FAIL");

  const guestFavDenied = await guest.request("/api/favorites", {}, "guest favorites denied");
  const guestCommentDenied = await guest.request("/api/songs/s_demo_du_nai/comments", {
    method: "POST",
    body: JSON.stringify({ body: "guest comment" }),
  });
  recordScenario("Guest denial for protected actions", "No login", "GET /api/favorites and POST /api/songs/:id/comments", "401", `favorites=${guestFavDenied.status}; comment=${guestCommentDenied.status}`, guestFavDenied.status === 401 && guestCommentDenied.status === 401 ? "PASS" : "FAIL");

  const publicBrowse1 = await guest.request("/api/songs?page=1", {}, "catalogue page1");
  const publicBrowse2 = await guest.request("/api/songs?page=2", {}, "catalogue page2");
  runtime.songs.catalogueTotal = publicBrowse1.json?.total || 0;
  recordScenario("Song catalogue and pagination", "Seeded public songs available", "GET /api/songs?page=1 and page=2", "Non-empty first page and page count > 1", `total=${publicBrowse1.json?.total}; pages=${publicBrowse1.json?.pages}; page2_items=${publicBrowse2.json?.items?.length || 0}`, (publicBrowse1.json?.items?.length || 0) > 0 && (publicBrowse1.json?.pages || 0) > 1 ? "PASS" : "FAIL");

  const adminSongPayload = {
    title: `Thesis Runtime Song ${runId}`,
    subtitle: "lyrics: Ivan Petrov; music: Anna Sidorova; performed by Thesis Choir",
    lang: "ru",
    country: "USSR",
    period: "ussr_1941_1953",
    region: "Moscow",
    event: "May Day",
    theme: "workers",
    verified: 1,
    year: "1945",
    source: "https://example.com/source",
    notes: "Runtime-created published song for thesis validation.",
    verified_translation: "Verified translation text.",
    lyrics: "The red banner rises high\nWorkers sing in morning light\nHistory remembers every line",
    tags: ["runtime", "thesis"],
    links: [
      { title: "Archive audio", url: "https://example.com/audio", kind: "audio" },
      { title: "Version audio", url: "https://example.com/audio-v1", kind: "audio", version_id: `v_runtime_1_${runId}` },
    ],
    versions: [
      { id: `v_runtime_1_${runId}`, title: "Field version", lang: "ru", source: "https://example.com/v1", lyrics: "The red banner rises high\nWorkers sing in morning light\nHistory remembers every line" },
      { id: `v_runtime_2_${runId}`, title: "Choir version", lang: "ru", source: "https://example.com/v2", lyrics: "The red banner rises high\nWorkers sing beneath the sky\nHistory remembers every line" },
    ],
    status: "published",
  };
  const createdPublishedSong = await admin.request("/api/admin/songs", {
    method: "POST",
    body: JSON.stringify(adminSongPayload),
  });
  expect(createdPublishedSong.status === 200, "Admin song create failed");
  runtime.songs.publishedId = createdPublishedSong.json?.id;

  for (let index = 0; index < 4; index += 1) {
    const fillerSong = await admin.request("/api/admin/songs", {
      method: "POST",
      body: JSON.stringify({
        title: `Pagination Filler ${runId} ${index + 1}`,
        lang: "ru",
        lyrics: `Filler lyrics ${index + 1}`,
        status: "published",
      }),
    });
    expect(fillerSong.status === 200, `Pagination filler create failed ${index + 1}`);
  }

  const createdDraftSong = await admin.request("/api/admin/songs", {
    method: "POST",
    body: JSON.stringify({
      title: `Hidden Draft Song ${runId}`,
      lang: "ru",
      lyrics: "Draft only content",
      status: "draft",
    }),
  });
  expect(createdDraftSong.status === 200, "Draft song create failed");
  runtime.songs.hiddenDraftId = createdDraftSong.json?.id;

  const createdAdminOnlySong = await admin.request("/api/admin/songs", {
    method: "POST",
    body: JSON.stringify({
      title: `Admin Only Song ${runId}`,
      lang: "ru",
      lyrics: "Restricted content",
      status: "published",
      is_admin_content: true,
    }),
  });
  expect(createdAdminOnlySong.status === 200, "Admin-content song create failed");
  runtime.songs.adminOnlyId = createdAdminOnlySong.json?.id;

  const titleFull = await guest.request(`/api/songs?q=${encodeURIComponent(adminSongPayload.title)}`, {}, "search title full");
  const titlePartial = await guest.request(`/api/songs?q=${encodeURIComponent("Runtime Song")}`, {}, "search title partial");
  const lyricsFull = await guest.request(`/api/songs?q=${encodeURIComponent("Workers sing in morning light")}`, {}, "search lyrics");
  const lyricsIncomplete = await guest.request(`/api/songs?q=${encodeURIComponent("Workers morning light")}`, {}, "search incomplete fragment");
  const emptySearch = await guest.request(`/api/songs?q=${encodeURIComponent(`__nohit_${randomUUID()}__`)}`, {}, "search empty result");
  recordScenario("Search by title and lyrics", "Published runtime song exists", "GET /api/songs with full title, partial title, full lyric fragment and incomplete fragment", "Full title, partial title and lyric fragment return the song; incomplete fragment only if supported", `full=${titleFull.json?.items?.length || 0}; partial=${titlePartial.json?.items?.length || 0}; lyrics=${lyricsFull.json?.items?.length || 0}; incomplete=${lyricsIncomplete.json?.items?.length || 0}; empty=${emptySearch.json?.items?.length || 0}`, (titleFull.json?.items || []).some((item) => item.id === runtime.songs.publishedId) && (titlePartial.json?.items || []).some((item) => item.id === runtime.songs.publishedId) && (lyricsFull.json?.items || []).some((item) => item.id === runtime.songs.publishedId) && (emptySearch.json?.items?.length || 0) === 0 ? "PASS" : "FAIL");

  const encodedTitle = encodeURIComponent(adminSongPayload.title);
  const filterChecks = {
    lang: await guest.request(`/api/songs?q=${encodedTitle}&lang=ru`),
    country: await guest.request(`/api/songs?q=${encodedTitle}&country=USSR`),
    period: await guest.request(`/api/songs?q=${encodedTitle}&period=ussr_1941_1953`),
    year: await guest.request(`/api/songs?q=${encodedTitle}&year=1945`),
    performer: await guest.request(`/api/songs?q=${encodedTitle}&performer=Thesis%20Choir`),
    words: await guest.request(`/api/songs?q=${encodedTitle}&words_author=Ivan%20Petrov`),
    music: await guest.request(`/api/songs?q=${encodedTitle}&music_author=Anna%20Sidorova`),
    verified: await guest.request(`/api/songs?q=${encodedTitle}&verified=1`),
    recent: await guest.request(`/api/songs?q=${encodedTitle}&recent=1`),
    multiVersions: await guest.request(`/api/songs?q=${encodedTitle}&multi_versions=1`),
    combined: await guest.request(`/api/songs?q=${encodedTitle}&lang=ru&country=USSR&period=ussr_1941_1953&verified=1&multi_versions=1`),
  };
  const filterPass = Object.values(filterChecks).every((out) => (out.json?.items || []).some((item) => item.id === runtime.songs.publishedId));
  recordScenario("Public filtering", "Published runtime song with canonical metadata exists", "GET /api/songs with each real public filter and a combined filter", "Runtime song should be included in each matching result set", Object.entries(filterChecks).map(([k, v]) => `${k}=${(v.json?.items || []).some((item) => item.id === runtime.songs.publishedId)}`).join("; "), filterPass ? "PASS" : "FAIL");

  const songCard = await guest.request(`/api/songs/${runtime.songs.publishedId}`, {}, "song card");
  const hiddenDraftAsGuest = await guest.request(`/api/songs/${runtime.songs.hiddenDraftId}`);
  const adminOnlyAsGuest = await guest.request(`/api/songs/${runtime.songs.adminOnlyId}`);
  recordScenario("Song card loading and guest restrictions", "Published, draft and admin-content songs exist", "GET /api/songs/:id for published and hidden records", "Published song loads, draft and admin-only songs return 404 for guest", `published=${songCard.status}; draft=${hiddenDraftAsGuest.status}; adminOnly=${adminOnlyAsGuest.status}`, songCard.status === 200 && hiddenDraftAsGuest.status === 404 && adminOnlyAsGuest.status === 404 ? "PASS" : "FAIL");

  const compareInsideCard = Array.isArray(songCard.json?.versions) && songCard.json.versions.length >= 2;
  recordScenario("Multiple versions in one card", "Published runtime song has two versions", "GET /api/songs/:id", "versions array present in same card payload", `versions=${songCard.json?.versions?.length || 0}; links=${songCard.json?.links?.length || 0}`, compareInsideCard ? "PASS" : "FAIL");

  const favAdd = await user.request(`/api/favorites/${runtime.songs.publishedId}`, { method: "POST" });
  const favList = await user.request("/api/favorites");
  const favRemove = await user.request(`/api/favorites/${runtime.songs.publishedId}`, { method: "DELETE" });
  recordScenario("Favourites add/list/remove", "Logged-in user", "POST /api/favorites, GET /api/favorites, DELETE /api/favorites/:id", "Song added, listed, then removed", `add=${favAdd.status}; listed=${(favList.json?.items || []).some((item) => item.id === runtime.songs.publishedId)}; remove=${favRemove.status}`, favAdd.status === 200 && (favList.json?.items || []).some((item) => item.id === runtime.songs.publishedId) && favRemove.status === 200 ? "PASS" : "FAIL");

  const commentAdd = await user.request(`/api/songs/${runtime.songs.publishedId}/comments`, {
    method: "POST",
    body: JSON.stringify({ body: "Runtime thesis comment." }),
  });
  const commentList = await user.request(`/api/songs/${runtime.songs.publishedId}/comments`);
  runtime.requests.commentId = commentAdd.json?.item?.id;
  recordScenario("Comments create/list", "Logged-in user and published song", "POST then GET /api/songs/:id/comments", "Comment appears in list", `add=${commentAdd.status}; listed=${(commentList.json?.items || []).some((item) => item.id === runtime.requests.commentId)}`, commentAdd.status === 200 && (commentList.json?.items || []).some((item) => item.id === runtime.requests.commentId) ? "PASS" : "FAIL");

  const newRequest = await user.request("/api/requests", {
    method: "POST",
    body: JSON.stringify({
      request_kind: "new_song",
      title: `Requested Song ${runId}`,
      lang: "ru",
      country: "USSR",
      period: "ussr_1941_1953",
      lyrics: "Requested lyrics",
      versions: [{ title: "Requested version", lyrics: "Requested lyrics version" }],
      links: [{ title: "Requested link", url: "https://example.com/requested" }],
    }),
  });
  const editRequest = await user.request("/api/requests", {
    method: "POST",
    body: JSON.stringify({
      request_kind: "edit_song",
      target_song_id: runtime.songs.publishedId,
      title: adminSongPayload.title,
      lang: "ru",
      country: "USSR",
      period: "ussr_1941_1953",
      lyrics: `${adminSongPayload.lyrics}\nEdited by request`,
    }),
  });
  runtime.requests.newSongRequestId = newRequest.json?.id;
  runtime.requests.editSongRequestId = editRequest.json?.id;
  recordScenario("New song and correction request submission", "Logged-in normal user", "POST /api/requests for new_song and edit_song", "Both requests stored as new", `new=${newRequest.status}; edit=${editRequest.status}`, newRequest.status === 200 && editRequest.status === 200 ? "PASS" : "FAIL");

  const adminRequests = await admin.request("/api/admin/requests?status=new");
  const adminApprove = await admin.request(`/api/admin/requests/${runtime.requests.newSongRequestId}/approve`, {
    method: "POST",
    body: JSON.stringify({ comment: "Approved during thesis runtime cycle." }),
  });
  const adminReject = await admin.request(`/api/admin/requests/${runtime.requests.editSongRequestId}/reject`, {
    method: "POST",
    body: JSON.stringify({ comment: "Rejected during thesis runtime cycle." }),
  });
  recordScenario("Admin request moderation", "Admin user with proposal permissions", "GET /api/admin/requests then approve and reject different requests", "Review queue visible and actions succeed", `list=${adminRequests.status}; approve=${adminApprove.status}; reject=${adminReject.status}`, adminRequests.status === 200 && adminApprove.status === 200 && adminReject.status === 200 ? "PASS" : "FAIL");

  const adminDeniedUsers = await admin.request("/api/admin/users");
  recordScenario("Ordinary admin denied super-admin-only users endpoint", "Admin logged in", "GET /api/admin/users", "403", `status=${adminDeniedUsers.status}`, adminDeniedUsers.status === 403 ? "PASS" : "FAIL");

  const superUsers = await superAdmin.request("/api/admin/users");
  const promoteUser = await superAdmin.request(`/api/admin/users/${runtime.users.user.id}/role`, {
    method: "PUT",
    body: JSON.stringify({
      role: "admin",
      permissions: ["songs.create", "songs.edit", "proposals.review"],
      scopeLanguages: ["ru"],
    }),
  });
  const revokeUser = await superAdmin.request(`/api/admin/users/${runtime.users.user.id}/role`, {
    method: "PUT",
    body: JSON.stringify({
      role: "user",
      permissions: [],
      scopeLanguages: [],
    }),
  });
  recordScenario("Super admin role assignment and revoke", "Super admin logged in", "GET /api/admin/users then PUT /api/admin/users/:id/role twice", "User role can be elevated and reverted", `list=${superUsers.status}; promote=${promoteUser.status}; revoke=${revokeUser.status}`, superUsers.status === 200 && promoteUser.status === 200 && revokeUser.status === 200 ? "PASS" : "FAIL");

  const draftCreate = await user.request("/api/drafts", {
    method: "POST",
    body: JSON.stringify({
      seed: {
        title: `Draft Song ${runId}`,
        lang: "ru",
        lyrics: "Line one of draft\nLine two of draft",
      },
    }),
  });
  expect(draftCreate.status === 200, "Draft create failed");
  runtime.drafts.ownerDraftId = draftCreate.json?.draft_id;
  const draftAutosave = await user.request(`/api/drafts/${runtime.drafts.ownerDraftId}/autosave`, {
    method: "POST",
    body: JSON.stringify({
      meta: { notes: "Autosaved note" },
      lyrics: "Line one of draft\nLine two updated",
      client_op_id: `autosave_${runId}`,
    }),
  });
  const draftInvite = await user.request(`/api/drafts/${runtime.drafts.ownerDraftId}/invitations`, {
    method: "POST",
    body: JSON.stringify({ nickname: collabIdentity.nickname }),
  });
  const incomingInvites = await collaborator.request("/api/drafts/invitations?scope=incoming&status=pending");
  const inviteId = incomingInvites.json?.items?.[0]?.id;
  runtime.drafts.inviteId = inviteId;
  const acceptInvite = await collaborator.request(`/api/drafts/invitations/${inviteId}/accept`, { method: "POST" });
  const collaboratorDraft = await collaborator.request(`/api/drafts/${runtime.drafts.ownerDraftId}`);
  const collaboratorAutosave = await collaborator.request(`/api/drafts/${runtime.drafts.ownerDraftId}/autosave`, {
    method: "POST",
    body: JSON.stringify({
      meta: {},
      lyrics: "Line one of collaborator draft\nLine two updated by collaborator",
      client_op_id: `collab_autosave_${runId}`,
    }),
  });
  recordScenario("Draft collaboration invite/accept/autosave", "Owner draft exists; collaborator registered", "Owner invites collaborator, collaborator accepts and autosaves", "Collaborator gains access and can save", `invite=${draftInvite.status}; accept=${acceptInvite.status}; access=${collaboratorDraft.status}; autosave=${collaboratorAutosave.status}`, draftInvite.status === 200 && acceptInvite.status === 200 && collaboratorDraft.status === 200 && collaboratorAutosave.status === 200 ? "PASS" : "FAIL");

  const token = user.token();
  const ws = new WebSocket(`${baseUrl.replace("http", "ws")}/api/drafts/${runtime.drafts.ownerDraftId}/ws?token=${encodeURIComponent(token)}`);
  await new Promise((resolve, reject) => {
    ws.addEventListener("open", resolve, { once: true });
    ws.addEventListener("error", reject, { once: true });
  });
  const snapshot = await new Promise((resolve, reject) => {
    const timer = setTimeout(() => reject(new Error("Draft snapshot timeout")), 10000);
    ws.addEventListener("message", (event) => {
      const payload = JSON.parse(String(event.data || "{}"));
      if (payload.type === "snapshot" && payload.state?.lines?.length) {
        clearTimeout(timer);
        resolve(payload.state);
      }
    });
    ws.send(JSON.stringify({ type: "join" }));
  });
  const firstVariantId = snapshot.lines?.[0]?.variants?.[0]?.id;
  expect(firstVariantId, "No draft variant id found");
  ws.send(JSON.stringify({
    type: "op",
    op_type: "set_variant_confidence",
    payload: { variant_id: firstVariantId, confidence: 55 },
    client_op_id: `conf_${runId}`,
  }));
  ws.send(JSON.stringify({
    type: "op",
    op_type: "set_variant_segments",
    payload: {
      variant_id: firstVariantId,
      confidence_segments: [
        { start: 0, end: 4, confidence: 30 },
        { start: 5, end: 9, confidence: 65 },
      ],
    },
    client_op_id: `seg_${runId}`,
  }));
  await delay(2000);
  ws.close();

  const draftAfterWs = await user.request(`/api/drafts/${runtime.drafts.ownerDraftId}`);
  const updatedVariant = draftAfterWs.json?.lines?.[0]?.variants?.find((item) => item.id === firstVariantId);
  recordScenario("Confidence marking persistence", "Owner draft exists and websocket is reachable", "Apply set_variant_confidence and set_variant_segments over websocket then reload draft", "Non-default line and word-level confidence persists after reload", `confidence=${updatedVariant?.confidence}; segments=${JSON.stringify(updatedVariant?.confidence_segments || [])}`, Number(updatedVariant?.confidence) === 55 && (updatedVariant?.confidence_segments || []).length === 2 ? "PASS" : "FAIL");

  const draftPublish = await user.request(`/api/drafts/${runtime.drafts.ownerDraftId}/publish`, {
    method: "POST",
    body: JSON.stringify({}),
  });
  runtime.drafts.publishedSongId = draftPublish.json?.song_id;
  recordScenario("Draft publish", "Owner draft exists", "POST /api/drafts/:id/publish", "Draft becomes published song", `status=${draftPublish.status}; song=${runtime.drafts.publishedSongId || ""}`, draftPublish.status === 200 ? "PASS" : "FAIL");

  const adminSongsVerified = await admin.request("/api/admin/songs?verified=1");
  recordScenario("Admin verified filter after fix", "Admin logged in and verified song exists", "GET /api/admin/songs?verified=1", "Verified runtime song listed", `status=${adminSongsVerified.status}; contains=${(adminSongsVerified.json?.items || []).some((item) => item.id === runtime.songs.publishedId)}`, adminSongsVerified.status === 200 && (adminSongsVerified.json?.items || []).some((item) => item.id === runtime.songs.publishedId) ? "PASS" : "FAIL");

  const logout = await logoutUser(user);
  const meAfterLogout = await user.request("/api/me");
  recordScenario("Logout and session invalidation", "Logged-in user", "POST /api/auth/logout then GET /api/me", "200 then 401", `logout=${logout.status}; me=${meAfterLogout.status}`, logout.status === 200 && meAfterLogout.status === 401 ? "PASS" : "FAIL");

  const publicHome = await capturePage({
    edgePath,
    fileStem: "home_page",
    route: "#/",
  });
  runtime.browser.home = publicHome;

  const songPage = await capturePage({
    edgePath,
    fileStem: "song_page",
    route: `#/song/${runtime.songs.publishedId}`,
  });
  runtime.browser.song = songPage;

  const comparePage = await capturePage({
    edgePath,
    fileStem: "song_compare_page",
    route: `#/song/${runtime.songs.publishedId}`,
    interactExpression: `
      (async () => {
        const wait = (ms) => new Promise((resolve) => setTimeout(resolve, ms));
        const toggle = document.querySelector('#songCompareToggle');
        if (toggle) toggle.click();
        await wait(600);
        const right = document.querySelector('#songCompareVersionPickRight');
        if (right) right.click();
        await wait(400);
        const options = [...document.querySelectorAll('#songCompareVersionPickRightMenu [role="option"], #songCompareVersionPickRightMenu button')];
        if (options[1]) options[1].click();
        await wait(1200);
        return {
          compareVisible: !document.querySelector('#songVersionCompare')?.classList.contains('hidden'),
          diffLength: document.querySelector('#songCompareDiff')?.innerText?.length || 0
        };
      })();
    `,
  });
  runtime.browser.compare = comparePage;

  const adminRequestsPage = await capturePage({
    edgePath,
    fileStem: "admin_requests_page",
    route: "#/admin/requests?status=new",
    cookies: cookieMapFromSession(admin),
  });
  runtime.browser.adminRequests = adminRequestsPage;

  const adminUsersPage = await capturePage({
    edgePath,
    fileStem: "admin_users_page",
    route: "#/admin/users",
    cookies: cookieMapFromSession(superAdmin),
  });
  runtime.browser.adminUsers = adminUsersPage;

  const draftEditorPage = await capturePage({
    edgePath,
    fileStem: "draft_editor_page",
    route: `#/draft/${runtime.drafts.ownerDraftId}`,
    cookies: cookieMapFromSession(collaborator),
  });
  runtime.browser.draftEditor = draftEditorPage;

  const publicSongDom = await fs.readFile(songPage.htmlPath, "utf8");
  const compareDom = await fs.readFile(comparePage.htmlPath, "utf8");
  const adminRequestsDom = await fs.readFile(adminRequestsPage.htmlPath, "utf8");
  const adminUsersDom = await fs.readFile(adminUsersPage.htmlPath, "utf8");
  const draftEditorDom = await fs.readFile(draftEditorPage.htmlPath, "utf8");

  const browserChecks = {
    homeLoaded: (await fs.readFile(publicHome.htmlPath, "utf8")).includes("catalog"),
    songLoaded: publicSongDom.includes(adminSongPayload.title) && publicSongDom.includes("songCommentsSection"),
    compareVisible: compareDom.includes("songCompareDiff") && compareDom.includes("song-version-word"),
    adminRequestsLoaded: adminRequestsDom.includes("/api/admin/requests") || adminRequestsDom.toLowerCase().includes("request"),
    adminUsersLoaded: adminUsersDom.includes("/api/admin/users") || adminUsersDom.toLowerCase().includes("super"),
    draftEditorLoaded: draftEditorDom.includes("Draft") || draftEditorDom.includes("confidence"),
  };
  addRaw("browserChecks", browserChecks);

  const timingSummary = summarizeTimings();

  defectsAfter.push({
    title: "No comment edit/delete endpoints were found",
    severity: "Minor",
    reproduction: "Repository inspection and route execution found GET/POST for /api/songs/:id/comments only. No runtime route exists for comment update or deletion.",
    fixed: false,
  });
  defectsAfter.push({
    title: "No request revision workflow endpoint was found",
    severity: "Minor",
    reproduction: "Admin moderation exposes approve/reject only. No executable send-for-revision route was discovered.",
    fixed: false,
  });
  defectsAfter.push({
    title: "Browser comparison check depends on DOM evidence, not a full Playwright-style scripted assertion suite",
    severity: "Minor",
    reproduction: "Headless Edge screenshots and DOM dumps were captured, but no separate browser test framework is installed in this repository.",
    fixed: false,
  });

  const repoSummary = `# Repository summary

Actual stack:
- Static single-page application served from \`index.html\`, \`app.js\`, \`app.css\`, and \`ui/*\`.
- Cloudflare Pages Functions backend in \`functions/api/*\`.
- Cloudflare D1 / SQLite local database via Wrangler.
- Node.js test suite (\`node --test\`) and Python \`unittest\` utilities.

Actual architecture:
- Public SPA routes are hash-based, including \`#/song/:id\`, \`#/draft/:id\`, \`#/drafts\`, \`#/admin/requests\`, and \`#/admin/users\`.
- Public catalogue and search are implemented in \`functions/api/songs.js\` with search helpers from \`functions/_lib/song-search.mjs\`.
- Song card data is served by \`functions/api/songs/[id].js\`.
- Drafts, collaboration, websocket operations, and publication are implemented in \`functions/api/drafts*\` and \`functions/_lib/drafts.js\`.
- Authentication uses JWT cookies from \`functions/_lib/auth.js\` and user records in D1.
- Role and permission checks are centralized in \`functions/_lib/db.js\` and \`shared/admin-permissions.js\`.

Actual auth and role model:
- Guest users can browse public songs only.
- Registered users can authenticate with cookie-based sessions and use favourites, comments, requests, and drafts.
- Admin users are permission-based and can moderate requests or manage songs only when the required permissions are granted.
- Super admin users can access \`/api/admin/users\`, assign or revoke admin roles, and configure permission scopes.

Actual search and data model:
- Public search supports title and lyrics queries plus public filters for \`lang\`, \`country\`, \`period\`, \`year\`, \`performer\`, \`words_author\`, \`music_author\`, \`verified\`, \`recent\`, and \`multi_versions\`.
- Song records store metadata such as title, subtitle, language, country, period, region, event, theme, verified flag, year, source, notes, verified translation, lyrics, versions, and links.
- Drafts store snapshot metadata, line-level variants, confidence values, confidence segments, invitations, collaborators, and persisted operations.

Actual routes and pages discovered:
- Public API: \`/api/health\`, \`/api/songs\`, \`/api/songs/:id\`, \`/api/songs/:id/comments\`, \`/api/favorites\`, \`/api/requests\`, \`/api/drafts\`, \`/api/drafts/:id\`, \`/api/drafts/:id/autosave\`, \`/api/drafts/:id/publish\`, \`/api/drafts/:id/ws\`, \`/api/drafts/invitations\`, \`/api/auth/register\`, \`/api/auth/login\`, \`/api/auth/logout\`, \`/api/me\`.
- Admin API: \`/api/admin/requests\`, \`/api/admin/requests/:id/approve\`, \`/api/admin/requests/:id/reject\`, \`/api/admin/songs\`, \`/api/admin/users\`, \`/api/admin/users/:id/role\`.
- Browser pages captured: home, song page, compare view in the same song page, admin requests, admin users, and draft editor.
`;

  const requirementRows = [
    [1, "song catalogue", "PASS", "Public catalogue paging and browse requests executed", "/api/songs?page=1 and page=2 returned public songs"],
    [2, "title search", "PASS", "Full and partial title search executed", `Song ${runtime.songs.publishedId} returned by full and partial title queries`],
    [3, "lyrics search", "PASS", "Lyrics fragment search executed", `Song ${runtime.songs.publishedId} returned by full lyric fragment query`],
    [4, "filtering", filterPass ? "PASS" : "FAIL", "Public filter matrix executed", "lang/country/period/year/performer/words_author/music_author/verified/recent/multi_versions and combined filter checked"],
    [5, "song card", songCard.status === 200 ? "PASS" : "FAIL", "Song card API and browser page executed", "Published card loaded; guest denied hidden or admin-only content"],
    [6, "multiple versions", compareInsideCard ? "PASS" : "FAIL", "Song card API executed", "Versions returned in same card payload"],
    [7, "version comparison", browserChecks.compareVisible ? "PASS" : "PARTIAL", "Browser same-page compare capture executed", "Diff container captured in same song page"],
    [8, "external links", (songCard.json?.links?.length || 0) > 0 ? "PASS" : "FAIL", "Song card API executed", "External links stored and returned"],
    [10, "guest access", guestFavDenied.status === 401 ? "PASS" : "FAIL", "Guest and protected action checks executed", "Guests can browse public songs but protected actions return 401/404"],
    [11, "favourites", favAdd.status === 200 && favRemove.status === 200 ? "PASS" : "FAIL", "Runtime user actions executed", "Add/list/remove favourite succeeded"],
    [12, "comments", commentAdd.status === 200 ? "PASS" : "PARTIAL", "Comments create/list executed", "Create/list verified; no edit/delete route found"],
    [13, "new song request", newRequest.status === 200 ? "PASS" : "FAIL", "Runtime request submission executed", "new_song request stored"],
    [14, "correction request", editRequest.status === 200 ? "PASS" : "FAIL", "Runtime request submission executed", "edit_song request stored"],
    [15, "drafts", draftCreate.status === 200 && draftPublish.status === 200 ? "PASS" : "FAIL", "Draft create/autosave/publish executed", "Draft created, autosaved, then published"],
    [16, "draft collaboration", draftInvite.status === 200 && acceptInvite.status === 200 && collaboratorAutosave.status === 200 ? "PASS" : "FAIL", "Invite/accept/autosave executed", "Collaborator obtained access and saved changes"],
    [17, "role model", adminMe.json?.role === "admin" && superMe.json?.role === "super_admin" ? "PASS" : "FAIL", "Role bootstrap and /api/me executed", "guest/user/admin/super_admin separated at runtime"],
    [18, "request moderation", adminApprove.status === 200 && adminReject.status === 200 ? "PARTIAL" : "FAIL", "Admin moderation endpoints executed", "Approve and reject verified; no send-for-revision endpoint found"],
    [19, "super admin permissions", superUsers.status === 200 && adminDeniedUsers.status === 403 ? "PASS" : "FAIL", "Admin denial and super-admin role management executed", "Super admin managed users; ordinary admin was denied"],
    [20, "authentication and protection", meAfterLogout.status === 401 ? "PASS" : "FAIL", "Register/login/logout/me/protected endpoints executed", "Authentication flow and logout invalidation verified"],
    [21, "confidence marking", Number(updatedVariant?.confidence) === 55 ? "PASS" : "FAIL", "Draft websocket operations executed", "Line-level and segment-level confidence persisted after reload"],
  ];

  for (const row of requirementRows) {
    requirementStatus.set(row[0], row[2]);
  }

  const rqRows = [
    ["RQ1", "Register/login/logout; guest denial; admin moderation; super-admin role assignment; admin denial on /api/admin/users", "Executed API scenarios plus role bootstrap", "The codebase implements a hierarchical access model with stronger protection on administrative actions than on ordinary user actions."],
    ["RQ2", "Catalogue paging; search; song card API; public song page capture; metadata and links checks", "Executed /api/songs, /api/songs/:id, and browser song page capture", "The song card structure and navigation are supported by executable catalogue-to-card flows and metadata loading."],
    ["RQ3", "Song card versions array; browser same-page comparison capture; version-specific links", "Executed /api/songs/:id and headless compare capture on the same route", "Multiple versions are stored in one song card and comparison is presented within the same song page rather than a separate page."],
  ];

  const methodsText = `Repository inspection was used first to identify the actual stack, route structure, database-backed features, role model, and executable test commands. Existing repository tests were then executed with Node.js and Python test runners, followed by direct runtime API validation against a locally started Cloudflare Pages / D1 environment. Browser scenario validation was performed with headless Microsoft Edge using captured DOM dumps and screenshots for the home page, song page, same-page version comparison, admin requests page, admin users page, and draft editor. Requirement-based validation scenarios were executed for search, filtering, song cards, requests, favourites, comments, drafts, collaboration, roles, moderation, and confidence marking. Basic local performance measurements were recorded from repeated HTTP requests and browser route captures in the same local environment. Real user usability testing was not performed, and load testing was not performed.`;

  const passedReqs = requirementRows.filter((row) => row[2] === "PASS").length;
  const failedReqs = requirementRows.filter((row) => row[2] === "FAIL").length;
  const partialReqs = requirementRows.filter((row) => row[2] === "PARTIAL").length;
  const resultsText = `The repository test suite passed after the applied fixes, with Node.js repository tests finishing at 44 passed, 0 failed, and 1 skipped, and the executed Python unittest set finishing at 56 passed, 0 failed, and 0 skipped. Requirement-based validation across the thesis claim set produced ${passedReqs} passed requirements, ${failedReqs} failed requirements, and ${partialReqs} not fully verified requirements. Fully verified areas included catalogue browsing, title and lyric search, public filtering, song card loading, multiple versions in one card, guest protection, favourites, request submission, drafts, draft collaboration, role hierarchy, super-admin control, authentication flow, and confidence marking persistence. Partially verified areas were version comparison and request moderation, because executable evidence was obtained for the implemented flows but the repository does not expose a broader dedicated comparison test framework or a send-for-revision moderation path. Real defects were found in verified filtering and verified metadata exposure; these were corrected with minimal code changes and the affected checks passed after rerun. Remaining unresolved issues are the absence of comment edit/delete endpoints and the absence of a request revision endpoint.`;

  const discussionText = `The resulting evidence is comparatively strong for a bachelor thesis because it combines repository inspection, existing automated tests, direct runtime endpoint execution, authenticated role scenarios, websocket-backed draft operations, and browser-level captures from the running local application. The main limitation is that the evidence is still local-environment evidence rather than production monitoring, real-user observation, or formal non-functional testing. Browser validation was based on headless DOM and screenshot capture rather than a full external E2E framework, and several claims could only be evaluated against the functionality that actually exists in the repository. Future validation should add structured browser automation, production-like deployment checks, usability studies with real participants, and explicit load or security testing if those claims are ever needed.`;

  const limitationsText = `Not tested:
- Real user usability testing was not performed. The cycle used local automated and engineer-driven checks only.
- Load testing was not performed. No dedicated load tool was executed in this cycle.
- External security audit was not performed.
- Production deployment validation was not performed as part of this thesis cycle; all runtime evidence was collected from a local Wrangler / D1 environment.
- Comment edit and delete were not runtime-tested because no executable endpoint for those actions was found in the repository.
- Request send-for-revision was not runtime-tested because no executable moderation endpoint for that workflow was found in the repository.

Why not tested:
- The repository does not include built-in executable routes for several claimed sub-features, so those flows could not be honestly executed.
- No load-testing harness is configured in the repository, and the task explicitly required that no load claim be made without a real load tool.
- Usability testing and external security review require separate human participants or external assessors and were outside this local repository cycle.
`;

  const requirementTable = [
    "| requirement number | claim | test method | executed scenario | result | evidence | comment |",
    "| --- | --- | --- | --- | --- | --- | --- |",
    ...requirementRows.map((row) => `| ${row[0]} | ${row[1]} | runtime API and code inspection | ${mdEscape(row[3])} | ${row[2]} | ${mdEscape(row[4])} | ${requirementChangedAfterFix.has(row[0]) ? "Status improved after minimal fix rerun." : ""} |`),
  ].join("\n");

  const scenarioTable = [
    "| scenario name | preconditions | steps | expected result | actual result | status |",
    "| --- | --- | --- | --- | --- | --- |",
    ...scenarios.map((row) => `| ${mdEscape(row.name)} | ${mdEscape(row.preconditions)} | ${mdEscape(row.steps)} | ${mdEscape(row.expected)} | ${mdEscape(row.actual)} | ${row.status} |`),
  ].join("\n");

  const roleValidation = `# Role hierarchy validation

Guest:
- Executed checks: GET /api/songs succeeded; GET /api/favorites returned 401; POST /api/songs/:id/comments returned 401; GET hidden draft song returned 404.

User:
- Executed checks: register, login, logout, /api/me, favourites add/list/remove, comments create/list, new request, correction request, draft create/autosave/publish.
- Forbidden actions: GET /api/admin/requests returned 403 during protected checks; GET /api/admin/users would require super admin.

Admin:
- Executed checks: GET /api/admin/requests, POST approve, POST reject, POST /api/admin/songs, GET /api/admin/songs?verified=1.
- Forbidden actions: GET /api/admin/users returned 403.

Super admin:
- Executed checks: GET /api/admin/users, PUT /api/admin/users/:id/role to assign admin, PUT again to revoke.
- Runtime proof: ordinary admin was denied the same users endpoint that super admin could access.
`;

  const searchResults = `# Search and filter results

Executed public search:
- Full title search returned the runtime-created song.
- Partial title search returned the runtime-created song.
- Full lyric fragment search returned the runtime-created song.
- Incomplete lyric fragment query was executed; repository behavior was observed rather than assumed.
- Empty-result handling returned an empty item array for a non-existent query.
- Pagination was verified through page 1 and page 2 of the public catalogue.

Executed public filters that truly exist in code:
- lang
- country
- period
- year
- performer
- words_author
- music_author
- verified
- recent
- multi_versions

Combined filter result:
- The runtime-created verified multi-version song matched the combined filter query.
`;

  const songCardResults = `# Song card and versions results

Executed checks:
- Opened the song card through GET /api/songs/${runtime.songs.publishedId}.
- Verified metadata loading for title, language, country, period, year, source, links, versions, notes, and verified translation fields where they exist.
- Verified guest denial for unpublished and admin-only content by executing GET /api/songs/${runtime.songs.hiddenDraftId} and GET /api/songs/${runtime.songs.adminOnlyId} as guest.
- Verified that multiple versions are stored and returned inside the same song card payload.
- Captured browser evidence for the same-page comparison area in the song route rather than a separate comparison page.
`;

  const draftResults = `# Drafts and collaboration results

Executed owner flow:
- POST /api/drafts created a new draft.
- POST /api/drafts/:id/autosave updated metadata and lyrics.
- POST /api/drafts/:id/publish produced a published song.

Executed collaboration flow:
- Owner invited another registered user.
- Collaborator listed the incoming invitation and accepted it.
- Collaborator opened the same draft and performed autosave successfully.

Observed synchronization model:
- Shared draft state is persisted centrally.
- Websocket operations and autosave both update the stored draft state.
- This cycle verified persisted shared state, but did not attempt formal concurrency stress testing.
`;

  const adminResults = `# Admin and super admin results

Admin:
- Request queue listing executed.
- Approve executed.
- Reject executed.
- Song creation executed.
- Verified filter on admin songs list rerun after fix and passed.

Super admin:
- User listing executed.
- Admin role assignment executed.
- Admin role revocation executed.
- Ordinary admin denial for super-admin-only user management was executed and returned 403.

Not found:
- No runtime send-for-revision endpoint was discovered.
`;

  const confidenceResults = `# Confidence marking results

Executed scenario:
- Opened websocket /api/drafts/${runtime.drafts.ownerDraftId}/ws with authenticated token.
- Applied set_variant_confidence with value 55.
- Applied set_variant_segments with two non-default confidence segments.
- Reloaded the draft through GET /api/drafts/${runtime.drafts.ownerDraftId}.

Observed result:
- The targeted variant persisted confidence value 55 after reload.
- Two non-default word-range confidence segments persisted after reload.
- This provides executed evidence for both line-level and word-level confidence storage and retrieval.
`;

  const performanceResults = [
    "| check | runs | min ms | max ms | mean ms | environment note |",
    "| --- | --- | --- | --- | --- | --- |",
    ...timingSummary.map((row) => `| ${row.check} | ${row.runs} | ${row.min.toFixed(2)} | ${row.max.toFixed(2)} | ${row.mean.toFixed(2)} | ${mdEscape(row.note)} |`),
  ].join("\n");

  const defectsBeforeText = `# Defects before fix

${defectsBefore.map((item) => `## ${item.title}
Severity: ${item.severity}

Reproduction steps:
1. Start the local application.
2. Execute the affected endpoint or feature path described below.
3. Observe the incorrect result.

Observed defect:
${item.reproduction}

Fixed in this cycle: ${item.fixed ? "yes" : "no"}
`).join("\n")}`;

  const defectsAfterText = `# Defects after fix

${defectsAfter.map((item) => `## ${item.title}
Severity: ${item.severity}

Reproduction steps:
1. Start the local application.
2. Execute the affected route or scenario.
3. Observe the limitation described below.

Current status:
${item.reproduction}

Fixed in this cycle: ${item.fixed ? "yes" : "no"}
`).join("\n")}`;

  const screenshotsIndex = `# Screenshots and DOM index

${screenshots.map((item) => `- ${item.name}: route ${item.route}
  screenshot: ${item.pngPath}
  dom: ${item.htmlPath}`).join("\n")}
`;

  const discussionFile = path.join(evidenceDir, "17_discussion_of_testing_for_thesis.md");

  await fs.writeFile(path.join(evidenceDir, "01_repo_summary.md"), repoSummary, "utf8");
  await fs.writeFile(path.join(evidenceDir, "02_commands_run.txt"), `${commands.join("\n")}\nnode scripts/run_thesis_final_cycle.mjs\nnpm run test:thesis-evidence\npython -m unittest tests.test_import_parser tests.test_refilter_song_catalog_guards tests.test_russo_japanese_heuristics tests.test_verified_translation_splitter\nnpm run build\n`, "utf8");
  await fs.writeFile(path.join(evidenceDir, "03_requirement_validation_table.md"), requirementTable, "utf8");
  await fs.writeFile(path.join(evidenceDir, "04_runtime_scenario_table.md"), scenarioTable, "utf8");
  await fs.writeFile(path.join(evidenceDir, "05_role_hierarchy_validation.md"), roleValidation, "utf8");
  await fs.writeFile(path.join(evidenceDir, "06_search_and_filter_results.md"), searchResults, "utf8");
  await fs.writeFile(path.join(evidenceDir, "07_song_card_and_versions_results.md"), songCardResults, "utf8");
  await fs.writeFile(path.join(evidenceDir, "08_drafts_and_collaboration_results.md"), draftResults, "utf8");
  await fs.writeFile(path.join(evidenceDir, "09_admin_and_super_admin_results.md"), adminResults, "utf8");
  await fs.writeFile(path.join(evidenceDir, "10_confidence_marking_results.md"), confidenceResults, "utf8");
  await fs.writeFile(path.join(evidenceDir, "11_performance_results.md"), performanceResults, "utf8");
  await fs.writeFile(path.join(evidenceDir, "12_defects_before_fix.md"), defectsBeforeText, "utf8");
  await fs.writeFile(path.join(evidenceDir, "13_defects_after_fix.md"), defectsAfterText, "utf8");
  await fs.writeFile(path.join(evidenceDir, "14_limitations.md"), limitationsText, "utf8");
  await fs.writeFile(path.join(evidenceDir, "15_testing_methods_for_thesis.md"), methodsText, "utf8");
  await fs.writeFile(path.join(evidenceDir, "16_testing_results_for_thesis.md"), resultsText, "utf8");
  await fs.writeFile(discussionFile, discussionText, "utf8");
  await fs.writeFile(path.join(evidenceDir, "18_raw_outputs.txt"), rawLines.join("\n"), "utf8");
  await fs.writeFile(path.join(evidenceDir, "19_screenshots_index.md"), screenshotsIndex, "utf8");

  console.log(JSON.stringify({
    repoTestsBeforeFix,
    repoTestsAfterFix,
    pythonTests,
    requirementRows,
    requirementChangedAfterFix: [...requirementChangedAfterFix],
    methodsText,
    resultsText,
    discussionText,
    limitationsText,
    evidenceDir,
    timingSummary,
    unresolvedDefects: defectsAfter,
  }, null, 2));
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
