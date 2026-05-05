import test from "node:test";
import assert from "node:assert/strict";
import fs from "node:fs";
import path from "node:path";

const appPath = path.join(process.cwd(), "app.js");

test("app shell imports shared frontend singletons without query-version splits", () => {
  const source = fs.readFileSync(appPath, "utf8");
  assert.match(source, /import \{ api \} from "\.\/ui\/api\.js";/);
  assert.match(source, /import \{ render, bind, closePromptDialog \} from "\.\/ui\/render\.js";/);
  assert.match(source, /import \{ router \} from "\.\/ui\/router\.js";/);
  assert.match(source, /import \{ state \} from "\.\/ui\/state\.js";/);
  assert.match(source, /import \{ getInitialLocale, setLocale, t \} from "\.\/ui\/i18n\.js";/);
  assert.doesNotMatch(source, /from "\.\/ui\/(?:api|render|router|state|i18n)\.js\?v=/);
});
