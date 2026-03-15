import fs from "node:fs";
import path from "node:path";
import { fileURLToPath, pathToFileURL } from "node:url";
import { spawn, spawnSync } from "node:child_process";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const root = path.resolve(__dirname, "..");
const resultPath = path.join(root, "out", "confidence-smoke-result.json");
const serverLogPath = path.join(root, "out", "confidence-smoke-server.log");
const serverErrPath = path.join(root, "out", "confidence-smoke-server.err.log");

const baseURL = "http://127.0.0.1:8788";
const setupToken = "31718e39bbfa4878aeb535aa952ae3d7122d818b7b734e87b8ac3a353ac912f1";
const jwtSecret = "d8d6543a3d1548268f5a84f01a13f89a793f03bc5897451b9629a2be3b26cfc8";
const skipSegments = process.env.SMOKE_SKIP_SEGMENTS === "1";

function sleep(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

async function waitForHealth(url, timeoutMs = 180000) {
  const startedAt = Date.now();
  while (Date.now() - startedAt < timeoutMs) {
    try {
      const res = await fetch(url);
      if (res.ok) return await res.text();
    } catch {}
    await sleep(1500);
  }
  throw new Error(`health endpoint did not become ready within ${timeoutMs}ms`);
}

async function fetchJson(url, options = {}) {
  const res = await fetch(url, options);
  const text = await res.text();
  let data = null;
  try {
    data = text ? JSON.parse(text) : null;
  } catch {
    data = text;
  }
  if (!res.ok) {
    throw new Error(`${options.method || "GET"} ${url} failed: ${res.status} ${text}`);
  }
  return data;
}

async function main() {
  const stdout = fs.createWriteStream(serverLogPath, { flags: "w" });
  const stderr = fs.createWriteStream(serverErrPath, { flags: "w" });
  const env = {
    ...process.env,
    ENABLE_SETUP: "1",
    JWT_SECRET: jwtSecret,
    SETUP_TOKEN: setupToken,
  };

  const server = spawn("cmd.exe", ["/d", "/s", "/c", "npx wrangler pages dev . --port 8788"], {
    cwd: root,
    env,
    stdio: ["ignore", "pipe", "pipe"],
    windowsHide: true,
  });
  server.stdout.pipe(stdout);
  server.stderr.pipe(stderr);

  const cleanup = () => {
    try {
      stdout.end();
      stderr.end();
    } catch {}
    if (!server.killed && server.pid) {
      spawnSync("taskkill", ["/pid", String(server.pid), "/t", "/f"], { stdio: "ignore", windowsHide: true });
    }
  };

  let exitCode = 0;
  try {
    await waitForHealth(`${baseURL}/api/health`);

    const email = `smoke-admin-${Date.now()}@example.com`;
    const password = "SmokePass123!";
    const setup = await fetchJson(`${baseURL}/api/setup`, {
      method: "POST",
      headers: { "content-type": "application/json" },
      body: JSON.stringify({ token: setupToken, email, password }),
    });
    const token = String(setup?.token || "").trim();
    if (!token) throw new Error("setup did not return a token");

    const me = await fetchJson(`${baseURL}/api/me`, {
      headers: { authorization: `Bearer ${token}` },
    });

    const playwrightEntry = pathToFileURL(path.join(root, "out", "pw-runner", "node_modules", "playwright", "index.mjs")).href;
    const { chromium } = await import(playwrightEntry);
    let browser = null;
    try {
      browser = await chromium.launch({ channel: "msedge", headless: true });
    } catch {
      browser = await chromium.launch({ headless: true });
    }

    try {
      const context = await browser.newContext({ viewport: { width: 1440, height: 1100 } });
      await context.addInitScript((value) => {
        window.localStorage.setItem("token", value);
      }, token);
      const page = await context.newPage();

      await page.goto(`${baseURL}/#/admin/editor`, { waitUntil: "networkidle" });
      await page.locator("#ac_editor").waitFor({ state: "visible", timeout: 30000 });

      const langValue = await page.locator("#ac_lang option").evaluateAll((options) => {
        const values = options.map((item) => item.value).filter(Boolean);
        return values.find((value) => value !== "ru") || values[0] || "";
      });
      const countryValue = await page.locator("#ac_country option").evaluateAll((options) => {
        const values = options.map((item) => item.value).filter(Boolean);
        return values.find((value) => value !== "ussr") || values[0] || "";
      });
      if (!langValue || !countryValue) {
        throw new Error(`failed to detect lang/country options: lang=${langValue} country=${countryValue}`);
      }

      const title = `Smoke Confidence ${Date.now()}`;
      const lyrics = "Line unsure token here\nSecond line stays exact";

      await page.fill("#ac_title", title);
      await page.selectOption("#ac_lang", langValue);
      await page.selectOption("#ac_country", countryValue);
      await page.fill("#ac_lyrics", lyrics);
      await page.locator("#ac_lyrics").blur();

      await page.locator(".draft-line-rail-btn").first().waitFor({ state: "visible", timeout: 20000 });
      await page.locator(".draft-line-rail-btn").first().click();
      await page.locator(".ac-line-popover-card").waitFor({ state: "visible", timeout: 10000 });

      await page.locator(".draft-variant-confidence-level").evaluate((node) => {
        node.value = "medium";
        node.dispatchEvent(new Event("change", { bubbles: true }));
      });
      console.log("confidence_debug", await page.evaluate(() => {
        const root = document.querySelector("#ac_editor");
        return root?.__lyricsConfidenceMeta?.lines?.[0]?.variants?.[0] || null;
      }));
      if (!skipSegments) {
        await page.evaluate(() => {
          const textNode = document.querySelector(".draft-segment-selection-text");
          const applyButton = document.querySelector('.draft-segment-apply[data-level="unsure"]');
          if (!(textNode instanceof HTMLTextAreaElement)) throw new Error("segment textarea not found");
          if (!(applyButton instanceof HTMLButtonElement)) throw new Error("segment apply button not found");
          const end = Math.min(11, textNode.value.length);
          Object.defineProperty(textNode, "selectionStart", { configurable: true, get: () => 0 });
          Object.defineProperty(textNode, "selectionEnd", { configurable: true, get: () => end });
          textNode.dispatchEvent(new Event("select", { bubbles: true }));
          applyButton.dispatchEvent(new MouseEvent("click", { bubbles: true, cancelable: true }));
        });
        console.log("segment_debug", await page.evaluate(() => {
          const root = document.querySelector("#ac_editor");
          const textNode = document.querySelector(".draft-segment-selection-text");
          return {
            selectionStart: textNode instanceof HTMLTextAreaElement ? textNode.selectionStart : null,
            selectionEnd: textNode instanceof HTMLTextAreaElement ? textNode.selectionEnd : null,
            summary: document.querySelector(".draft-selection-summary")?.textContent || "",
            chips: document.querySelectorAll(".draft-fragment-chip").length,
            meta: root?.__lyricsConfidenceMeta?.lines?.[0]?.variants?.[0] || null,
          };
        }));
        await page.locator(".draft-fragment-chip").waitFor({ state: "visible", timeout: 10000 });
      }

      await page.click("#ac_save");

      const startedSaveAt = Date.now();
      let songId = "";
      while (Date.now() - startedSaveAt < 30000) {
        songId = await page.inputValue("#ac_id");
        if (songId) break;
        await sleep(500);
      }
      if (!songId) throw new Error("song id was not assigned after save");

      const song = await fetchJson(`${baseURL}/api/admin/songs/${encodeURIComponent(songId)}`, {
        headers: { authorization: `Bearer ${token}` },
      });
      const line0 = song?.lyrics_meta_json?.lines?.[0];
      const activeVariant = (Array.isArray(line0?.variants) ? line0.variants : []).find((item) => item?.is_active) || line0?.variants?.[0];
      if (!line0 || !activeVariant) throw new Error("lyrics_meta_json for first line was not saved");
      if (activeVariant.confidence_level !== "medium") throw new Error(`expected medium confidence, got ${activeVariant.confidence_level}`);
      if (!skipSegments) {
        if (!Array.isArray(activeVariant.confidence_segments) || !activeVariant.confidence_segments.length) {
          throw new Error("fragment confidence segment was not saved");
        }
        if (activeVariant.confidence_segments[0].level !== "unsure") {
          throw new Error(`expected unsure fragment, got ${activeVariant.confidence_segments[0].level}`);
        }
      }

      await page.goto(`${baseURL}/#/song/${encodeURIComponent(songId)}`, { waitUntil: "networkidle" });
      await page.locator(".song-lyric-line.has-confidence").first().waitFor({ state: "visible", timeout: 20000 });
      if (!skipSegments) {
        await page.locator(".song-confidence-fragment").first().waitFor({ state: "visible", timeout: 20000 });
      }
      const renderLevel = await page.locator(".song-lyric-line.has-confidence").first().getAttribute("data-confidence-level");
      if (renderLevel !== "medium") throw new Error(`expected rendered level medium, got ${renderLevel}`);

      fs.writeFileSync(resultPath, JSON.stringify({
        ok: true,
        songId,
        role: me?.role || "",
        lang: langValue,
        country: countryValue,
        segmentMode: skipSegments ? "skipped" : "full",
        lineConfidence: activeVariant.confidence_level,
        fragmentLevel: skipSegments ? null : activeVariant.confidence_segments[0].level,
        renderLevel,
      }, null, 2));
    } finally {
      await browser?.close();
    }
  } catch (error) {
    exitCode = 1;
    fs.writeFileSync(resultPath, JSON.stringify({
      ok: false,
      error: String(error?.message || error || "unknown error"),
    }, null, 2));
    throw error;
  } finally {
    cleanup();
  }

  process.exit(exitCode);
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
