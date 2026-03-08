const { test, expect } = require("@playwright/test");
const fs = require("fs");

test("confidence flow smoke", async ({ page, request, baseURL }) => {
  const email = `smoke-admin-${Date.now()}@example.com`;
  const password = "SmokePass123!";
  const setupRes = await request.post(`${baseURL}/api/setup`, {
    data: {
      token: "31718e39bbfa4878aeb535aa952ae3d7122d818b7b734e87b8ac3a353ac912f1",
      email,
      password,
    },
  });
  expect(setupRes.ok(), await setupRes.text()).toBeTruthy();
  const setupData = await setupRes.json();
  const token = String(setupData.token || "").trim();
  expect(token).not.toBe("");

  const meRes = await request.get(`${baseURL}/api/me`, {
    headers: { Authorization: `Bearer ${token}` },
  });
  expect(meRes.ok(), await meRes.text()).toBeTruthy();
  const me = await meRes.json();

  await page.addInitScript((value) => {
    window.localStorage.setItem("token", value);
  }, token);

  await page.goto(`${baseURL}/#/admin/editor`, { waitUntil: "networkidle" });
  await expect(page.locator("#ac_editor")).toBeVisible();

  const langValue = await page.locator("#ac_lang option").evaluateAll((options) => {
    const values = options.map((item) => item.value).filter(Boolean);
    return values.find((value) => value !== "ru") || values[0] || "";
  });
  const countryValue = await page.locator("#ac_country option").evaluateAll((options) => {
    const values = options.map((item) => item.value).filter(Boolean);
    return values.find((value) => value !== "ussr") || values[0] || "";
  });

  expect(langValue).not.toBe("");
  expect(countryValue).not.toBe("");

  const title = `Smoke Confidence ${Date.now()}`;
  const lyrics = "Line unsure token here\nSecond line stays exact";

  await page.fill("#ac_title", title);
  await page.selectOption("#ac_lang", langValue);
  await page.selectOption("#ac_country", countryValue);
  await page.fill("#ac_lyrics", lyrics);
  await page.locator("#ac_lyrics").blur();

  await expect(page.locator(".draft-line-rail-btn").first()).toBeVisible({ timeout: 15000 });
  await page.locator(".draft-line-rail-btn").first().click();
  await expect(page.locator(".ac-line-popover-card")).toBeVisible();

  await page.selectOption(".draft-variant-confidence-level", "medium");

  const selectionNode = page.locator(".draft-segment-selection-text");
  await selectionNode.evaluate((node) => {
    node.focus();
    node.setSelectionRange(0, Math.min(11, node.value.length));
    node.dispatchEvent(new Event("select", { bubbles: true }));
  });
  await page.locator('.draft-segment-apply[data-level="unsure"]').click();
  await expect(page.locator(".draft-fragment-chip")).toHaveCount(1);

  await page.click("#ac_save");
  await expect.poll(async () => await page.locator("#ac_id").inputValue(), { timeout: 20000 }).not.toBe("");
  const id = await page.locator("#ac_id").inputValue();

  const adminSongRes = await request.get(`${baseURL}/api/admin/songs/${id}`, {
    headers: { Authorization: `Bearer ${token}` },
  });
  expect(adminSongRes.ok(), await adminSongRes.text()).toBeTruthy();
  const song = await adminSongRes.json();
  const line0 = song?.lyrics_meta_json?.lines?.[0];
  expect(line0).toBeTruthy();
  const activeVariant = (Array.isArray(line0.variants) ? line0.variants : []).find((item) => item && item.is_active) || line0.variants?.[0];
  expect(activeVariant).toBeTruthy();
  expect(activeVariant.confidence_level).toBe("medium");
  expect(Array.isArray(activeVariant.confidence_segments)).toBeTruthy();
  expect(activeVariant.confidence_segments.length).toBeGreaterThan(0);
  expect(activeVariant.confidence_segments[0].level).toBe("unsure");

  await page.goto(`${baseURL}/#/song/${id}`, { waitUntil: "networkidle" });
  await expect(page.locator(".song-lyric-line.has-confidence").first()).toBeVisible();
  await expect(page.locator(".song-lyric-line-confidence").first()).toContainText(/.+/);
  await expect(page.locator(".song-confidence-fragment").first()).toBeVisible();
  const renderLevel = await page.locator(".song-lyric-line.has-confidence").first().getAttribute("data-confidence-level");
  expect(renderLevel).toBe("medium");

  fs.writeFileSync("out/confidence-smoke-result.json", JSON.stringify({
    ok: true,
    songId: id,
    role: me.role,
    lang: langValue,
    country: countryValue,
    lineConfidence: activeVariant.confidence_level,
    fragmentLevel: activeVariant.confidence_segments[0].level,
    renderLevel,
  }, null, 2));
});
