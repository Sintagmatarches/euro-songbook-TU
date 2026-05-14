import test from "node:test";
import assert from "node:assert/strict";
import fs from "node:fs";
import path from "node:path";

const appPath = path.join(process.cwd(), "app.js");

test("desktop song page parallax measures the full song view instead of only the hero card", () => {
  const source = fs.readFileSync(appPath, "utf8");
  assert.match(source, /document\.querySelector\("\.song-view\.app-shell"\) \|\| document\.querySelector\("\.song-view"\)/);
  assert.doesNotMatch(source, /document\.querySelector\("\.song-view \.song-card-shell\.song-card-shell-has-bg"\)/);
  assert.match(source, /contentHeight: rootHeight/);
});
