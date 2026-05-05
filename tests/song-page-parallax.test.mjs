import test from "node:test";
import assert from "node:assert/strict";

import {
  computeParallaxCoverFrame,
  computeParallaxOffsets,
  computeParallaxScrollProgress,
} from "../shared/song-visuals.js";

test("parallax progress depends on full document scroll range", () => {
  assert.equal(computeParallaxScrollProgress(0, 900, 900), 0);
  assert.equal(computeParallaxScrollProgress(150, 1500, 900), 0.25);
  assert.equal(computeParallaxScrollProgress(600, 1500, 900), 1);
});

test("cover frame computes stable rendered size and overflow", () => {
  const desktop = computeParallaxCoverFrame(1280, 960, 1920, 1080);
  assert.equal(Math.round(desktop.renderWidth), 1920);
  assert.equal(Math.round(desktop.renderHeight), 1440);
  assert.equal(Math.round(desktop.overflowY), 360);

  const mobile = computeParallaxCoverFrame(720, 2160, 360, 780);
  assert.equal(Math.round(mobile.renderWidth), 360);
  assert.equal(Math.round(mobile.renderHeight), 1080);
  assert.equal(Math.round(mobile.overflowY), 300);
});

test("parallax offsets preserve the chosen top frame and distribute remaining travel across the page", () => {
  const top = computeParallaxOffsets({
    sourceWidth: 720,
    sourceHeight: 2160,
    viewportWidth: 360,
    viewportHeight: 780,
    focusX: 50,
    focusY: 40,
    scrollY: 0,
    documentHeight: 2780,
  });
  const bottom = computeParallaxOffsets({
    sourceWidth: 720,
    sourceHeight: 2160,
    viewportWidth: 360,
    viewportHeight: 780,
    focusX: 50,
    focusY: 40,
    scrollY: 2000,
    documentHeight: 2780,
  });

  assert.equal(Math.round(top.anchorTop), 120);
  assert.equal(Math.round(top.offsetY), -120);
  assert.equal(Math.round(bottom.offsetY), -300);
  assert.equal(Math.round(bottom.travelY), 180);
});
