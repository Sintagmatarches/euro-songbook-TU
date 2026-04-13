const { test, expect } = require("@playwright/test");

const BASE_URL = "https://euro-songbook.pages.dev";

test.describe("public UI audit", () => {
  test("home public flows", async ({ page }) => {
    const consoleErrors = [];
    const pageErrors = [];
    page.on("console", (msg) => {
      if (msg.type() === "error") consoleErrors.push(msg.text());
    });
    page.on("pageerror", (error) => pageErrors.push(String(error)));

    await page.goto(`${BASE_URL}/`, { waitUntil: "networkidle" });
    await expect(page.locator("#topSearchInput")).toBeVisible();

    await page.locator("#yt_toggleAdvanced").click();
    await expect(page.locator("#yt_advancedPanel")).not.toHaveClass(/hidden/);
    await page.locator("#yt_toggleAdvanced").click();

    await page.locator("#topSearchInput").fill("zz");
    await page.locator("#topSearchBtn").click();
    await page.waitForTimeout(1200);
    await expect(page.locator("body")).not.toContainText("Worker threw exception");
    await expect(page.locator("body")).toContainText(/Nothing found|Report fragment/i);

    await page.goto(`${BASE_URL}/`, { waitUntil: "networkidle" });
    await page.locator("#topSearchInput").fill("captains");
    await page.locator("#topSearchBtn").click();
    await page.waitForSelector('.yt-feed a[href^="#/song/"]');
    await page.locator('.yt-feed a[href^="#/song/"]').first().click();
    await page.waitForTimeout(900);
    await expect(page).toHaveURL(/#\/song\//);

    await page.locator("#btnCopyLyrics").click();
    await expect(page.locator("#btnCopyLyrics")).toHaveClass(/is-copied|is-failed/);

    await page.locator("#btnPromptExplain").click();
    await expect(page.locator("#dlgPrompt")).toHaveJSProperty("open", true);
    await expect(page.locator("#promptText")).not.toHaveValue("");
    await page.locator("#promptClose").click();

    expect(consoleErrors, `console errors: ${consoleErrors.join("\n")}`).toEqual([]);
    expect(pageErrors, `page errors: ${pageErrors.join("\n")}`).toEqual([]);
  });

  test("guest auth CTAs on gated pages", async ({ page }) => {
    const routes = ["/#/request", "/#/favorites", "/#/drafts"];
    for (const route of routes) {
      await page.goto(`${BASE_URL}${route}`, { waitUntil: "networkidle" });
      await expect(page.locator('[data-auth-dialog="login"]').first()).toBeVisible();
      await expect(page.locator('[data-auth-dialog="register"]').first()).toBeVisible();
    }

    await page.goto(`${BASE_URL}/#/request`, { waitUntil: "networkidle" });
    await page.locator('[data-auth-dialog="login"]').first().click();
    await expect(page.locator("#dlgAuth")).toHaveJSProperty("open", true);
  });

  test("guest admin route messaging", async ({ page }) => {
    await page.goto(`${BASE_URL}/#/admin/content`, { waitUntil: "networkidle" });
    const text = (await page.locator("body").innerText()).toLowerCase();
    expect.soft(
      ["unauthorized", "forbidden", "error", "login", "доступ", "войти"].some((token) => text.includes(token)),
      `guest admin route text: ${text.slice(0, 200)}`
    ).toBeTruthy();
  });
});
