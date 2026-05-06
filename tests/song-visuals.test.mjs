import test from "node:test";
import assert from "node:assert/strict";

import {
  buildVisualProfileFromLegacyFields,
  computeVisualBackgroundRenderFrame,
  resolveVisualBackground,
  validateVisualProfileRanges,
} from "../shared/song-visuals.js";

test("legacy single-image rows map into strict desktop/mobile profile", () => {
  const profile = buildVisualProfileFromLegacyFields({
    image_url: "https://example.com/legacy-desktop.jpg",
    desktop_focus_x: 32,
    desktop_focus_y: 68,
  });

  const desktop = resolveVisualBackground(profile, { device: "desktop" });
  const mobile = resolveVisualBackground(profile, { device: "mobile" });

  assert.equal(desktop.image_url, "https://example.com/legacy-desktop.jpg");
  assert.equal(desktop.focus_x, 32);
  assert.equal(desktop.focus_y, 68);
  assert.equal(mobile.image_url, "");
  assert.equal(mobile.focus_x, 50);
  assert.equal(mobile.focus_y, 50);
});

test("legacy dedicated mobile image stays separate from desktop image", () => {
  const profile = buildVisualProfileFromLegacyFields({
    desktop_image_url: "https://example.com/desktop.jpg",
    mobile_image_url: "https://example.com/mobile.jpg",
    desktop_focus_x: 40,
    mobile_focus_y: 61,
  });

  const desktop = resolveVisualBackground(profile, { device: "desktop" });
  const mobile = resolveVisualBackground(profile, { device: "mobile" });

  assert.equal(desktop.image_url, "https://example.com/desktop.jpg");
  assert.equal(desktop.focus_x, 40);
  assert.equal(mobile.image_url, "https://example.com/mobile.jpg");
  assert.equal(mobile.focus_y, 61);
});

test("visual year ranges are inclusive and cannot overlap", () => {
  const valid = validateVisualProfileRanges({
    default: {},
    variants: [
      { from: 1900, to: 1910, desktop: "https://example.com/a.jpg" },
      { from: 1911, to: 1920, mobile: "https://example.com/b.jpg" },
    ],
  });
  assert.equal(valid.ok, true);

  const overlapping = validateVisualProfileRanges({
    default: {},
    variants: [
      { from: 1900, to: 1910, desktop: "https://example.com/a.jpg" },
      { from: 1910, to: 1920, mobile: "https://example.com/b.jpg" },
    ],
  });
  assert.equal(overlapping.ok, false);
});

test("background preview/render frame always starts from cover geometry", () => {
  const frame = computeVisualBackgroundRenderFrame(800, 1600, 320, 240);

  assert.equal(frame.renderWidth, 320);
  assert.equal(frame.renderHeight, 640);
  assert.equal(frame.overflowX, 0);
  assert.equal(frame.overflowY, 400);
});

test("background preview/render frame depends only on cover geometry", () => {
  const coverFrame = computeVisualBackgroundRenderFrame(2000, 1000, 300, 600);
  const sameFrame = computeVisualBackgroundRenderFrame(2000, 1000, 300, 600);

  assert.equal(coverFrame.renderHeight, 600);
  assert.ok(coverFrame.renderWidth >= 300);
  assert.equal(sameFrame.renderWidth, coverFrame.renderWidth);
  assert.equal(sameFrame.renderHeight, coverFrame.renderHeight);
});
