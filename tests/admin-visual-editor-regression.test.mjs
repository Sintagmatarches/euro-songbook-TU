import test from "node:test";
import assert from "node:assert/strict";
import fs from "node:fs";
import path from "node:path";

import {
  mapTopAnchoredBackgroundFocusY,
  resolveBackgroundPreviewPosition,
} from "../shared/song-visuals.js";

const renderPath = path.join(process.cwd(), "ui", "render.js");

test("background preview uses the same top-anchored vertical focus mapping as saved crop", () => {
  assert.equal(mapTopAnchoredBackgroundFocusY(0), 0);
  assert.equal(mapTopAnchoredBackgroundFocusY(30), 0);
  assert.equal(mapTopAnchoredBackgroundFocusY(50), 0);
  assert.equal(mapTopAnchoredBackgroundFocusY(75), 50);
  assert.equal(mapTopAnchoredBackgroundFocusY(100), 100);

  assert.deepEqual(
    resolveBackgroundPreviewPosition({ focus_x: 62, focus_y: 75 }),
    { x: 62, y: 50 },
  );
});

test("admin visual editor keeps manual crop controls visible and mobile drag bound to window pointer events", () => {
  const source = fs.readFileSync(renderPath, "utf8");
  assert.match(source, /const previewFocus = isBackground \? resolveBackgroundPreviewPosition\(focus\) : \{ x: 50, y: 50 \};/);
  assert.match(source, /class="ab-crop-buttons"/);
  assert.doesNotMatch(source, /class="ab-crop-buttons hidden"/);
  assert.match(source, /background-position:\$\{previewFocus\.x\}% \$\{previewFocus\.y\}%/);
  assert.doesNotMatch(source, /background-size:\$\{zoomScale\}% auto/);
  assert.match(source, /computeVisualBackgroundRenderFrame\(/);
  assert.match(source, /requestAnimationFrame\(syncRenderedBackgroundPreviews\)/);
  assert.doesNotMatch(source, /ab-visual-zoom/);
  assert.doesNotMatch(source, /ab_desktop_zoom/);
  assert.doesNotMatch(source, /ab_mobile_zoom/);
  assert.doesNotMatch(source, /qs\("ab_category_stack"\)\?\.addEventListener\("pointerdown"/);
  assert.match(source, /const \{ profile, validation \} = await finalizeProfileForSave\(\);/);
  assert.match(source, /image_url: await standardizeBackgroundImage\(/);
  assert.match(source, /source_url: isDataImageUrl\(source\) \? "" : source,/);
});
