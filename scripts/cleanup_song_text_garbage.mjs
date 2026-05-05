#!/usr/bin/env node
import { spawnSync } from "node:child_process";
import { existsSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const ROOT = path.resolve(__dirname, "..");
const PY_SCRIPT = path.join(ROOT, "scripts", "repair_existing_songs.py");

function pickPython() {
  const candidates = process.platform === "win32" ? ["py", "python", "python3"] : ["python3", "python"];
  for (const bin of candidates) {
    const probe = spawnSync(bin, bin === "py" ? ["-3", "-c", "print('ok')"] : ["-c", "print('ok')"], {
      cwd: ROOT,
      encoding: "utf8",
      stdio: ["ignore", "pipe", "pipe"],
    });
    if (probe.status === 0) return bin;
  }
  return process.platform === "win32" ? "python" : "python3";
}

function translateArgs(rawArgs) {
  const out = [];
  for (const arg of rawArgs) {
    if (arg === "--apply") {
      out.push("--execute-remote");
      continue;
    }
    if (arg === "--prepare-sql") continue;
    if (arg.startsWith("--song-id=")) {
      out.push(arg);
      continue;
    }
    if (arg.startsWith("--limit=")) {
      out.push(arg);
      continue;
    }
    if (arg === "--clean-lyrics" || arg === "--include-clean-lyrics") {
      out.push("--include-clean-lyrics");
      continue;
    }
    if (arg === "--report-only" || arg === "--refresh-export" || arg === "--songs-table-only" || arg === "--full-export" || arg === "--only-main" || arg === "--only-versions" || arg === "--allow-large-change-set" || arg === "--anchor-garbage-only") {
      out.push(arg);
      continue;
    }
    if (arg.startsWith("--db-name=") || arg.startsWith("--sample-size=") || arg.startsWith("--seed=") || arg.startsWith("--max-lyrics-loss-ratio=") || arg.startsWith("--max-apply-rate=")) {
      out.push(arg);
      continue;
    }
    console.warn(`[cleanup_song_text_garbage] Ignored legacy argument: ${arg}`);
  }
  return out;
}

if (!existsSync(PY_SCRIPT)) {
  console.error(`Cannot find ${PY_SCRIPT}`);
  console.error("Put this file in scripts/ next to repair_existing_songs.py.");
  process.exit(2);
}

const pythonBin = pickPython();
const args = translateArgs(process.argv.slice(2));
const pyArgs = pythonBin === "py" ? ["-3", PY_SCRIPT, ...args] : [PY_SCRIPT, ...args];

console.log("cleanup_song_text_garbage.mjs is now a safe wrapper around repair_existing_songs.py.");
console.log("Default mode writes only reports and SQL for lyrics_meta_json, not remote DB changes.");

const result = spawnSync(pythonBin, pyArgs, {
  cwd: ROOT,
  stdio: "inherit",
  shell: false,
});
process.exit(result.status ?? 1);
