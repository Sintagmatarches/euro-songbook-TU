from __future__ import annotations

import argparse
import json
import re
import sqlite3
import subprocess
import tempfile
import time
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
SQL_PATH = ROOT / "tmp_refilter_song_catalog.sql"
STATE_PATH = ROOT / "out" / "deploy_refilter_state.json"
SUMMARY_PATH = ROOT / "out" / "deploy_refilter_summary.json"

NODE = Path(r"C:\Program Files\nodejs\node.exe")
NPX_CLI = Path(r"C:\Program Files\nodejs\node_modules\npm\bin\npx-cli.js")


ID_RE = re.compile(r"WHERE\s+id='([^']+)'", re.IGNORECASE)


@dataclass
class ApplyStats:
    total_statements: int = 0
    applied: int = 0
    failed: int = 0
    api_calls: int = 0
    retries: int = 0
    split_fallbacks: int = 0


def parse_statements(sql_text: str) -> list[str]:
    statements: list[str] = []
    buf: list[str] = []
    for line in sql_text.splitlines(True):
        if line.strip().startswith("--"):
            continue
        buf.append(line)
        candidate = "".join(buf)
        if sqlite3.complete_statement(candidate):
            stmt = candidate.strip()
            if stmt:
                statements.append(stmt)
            buf = []
    tail = "".join(buf).strip()
    if tail:
        statements.append(tail)
    return statements


def sql_id(stmt: str) -> str | None:
    m = ID_RE.search(stmt)
    return m.group(1) if m else None


def run_remote_sql(db_name: str, sql: str, timeout_s: int) -> tuple[int, str]:
    tmp_dir = ROOT / "out"
    tmp_dir.mkdir(parents=True, exist_ok=True)
    tmp_path: Path | None = None
    try:
        with tempfile.NamedTemporaryFile("w", delete=False, suffix=".sql", dir=tmp_dir, encoding="utf-8") as fh:
            fh.write(sql)
            if not sql.endswith("\n"):
                fh.write("\n")
            tmp_path = Path(fh.name)
        cmd = [
            str(NODE),
            str(NPX_CLI),
            "wrangler",
            "d1",
            "execute",
            db_name,
            "--remote",
            "--file",
            str(tmp_path),
        ]
        proc = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout_s)
        output = (proc.stderr or "") + "\n" + (proc.stdout or "")
        return proc.returncode, output
    finally:
        if tmp_path and tmp_path.exists():
            try:
                tmp_path.unlink()
            except OSError:
                pass


def try_sql(db_name: str, sql: str, retries: int, timeout_s: int, stats: ApplyStats) -> tuple[bool, str]:
    last_out = ""
    for attempt in range(retries + 1):
        stats.api_calls += 1
        rc, out = run_remote_sql(db_name, sql, timeout_s=timeout_s)
        if rc == 0:
            return True, out
        last_out = out
        if attempt < retries:
            stats.retries += 1
            time.sleep(1.5 * (attempt + 1))
    return False, last_out


def apply_chunk_recursive(
    db_name: str,
    statements: list[str],
    retries: int,
    timeout_s: int,
    stats: ApplyStats,
    failures: list[dict],
) -> None:
    if not statements:
        return

    sql = "\n".join(statements)
    ok, out = try_sql(db_name, sql, retries=retries, timeout_s=timeout_s, stats=stats)
    if ok:
        stats.applied += len(statements)
        return

    if len(statements) == 1:
        stmt = statements[0]
        failures.append(
            {
                "id": sql_id(stmt),
                "statement_prefix": stmt[:240],
                "error": out[:2500],
            }
        )
        stats.failed += 1
        return

    stats.split_fallbacks += 1
    mid = len(statements) // 2
    apply_chunk_recursive(
        db_name,
        statements[:mid],
        retries=retries,
        timeout_s=timeout_s,
        stats=stats,
        failures=failures,
    )
    apply_chunk_recursive(
        db_name,
        statements[mid:],
        retries=retries,
        timeout_s=timeout_s,
        stats=stats,
        failures=failures,
    )


def build_chunks(statements: list[str], max_chars: int, max_statements: int) -> list[list[str]]:
    chunks: list[list[str]] = []
    current: list[str] = []
    current_chars = 0
    for stmt in statements:
        s_len = len(stmt) + 1
        too_big = current and (current_chars + s_len > max_chars or len(current) >= max_statements)
        if too_big:
            chunks.append(current)
            current = [stmt]
            current_chars = s_len
        else:
            current.append(stmt)
            current_chars += s_len
    if current:
        chunks.append(current)
    return chunks


def load_state() -> dict:
    if not STATE_PATH.exists():
        return {}
    try:
        return json.loads(STATE_PATH.read_text(encoding="utf-8"))
    except Exception:
        return {}


def save_state(state: dict) -> None:
    STATE_PATH.parent.mkdir(parents=True, exist_ok=True)
    STATE_PATH.write_text(json.dumps(state, ensure_ascii=False, indent=2), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser(description="Deploy tmp_refilter_song_catalog.sql to remote D1 with robust fallback.")
    parser.add_argument("--db-name", default="euro-songbook-db")
    parser.add_argument("--max-chars", type=int, default=20000)
    parser.add_argument("--max-statements", type=int, default=140)
    parser.add_argument("--retries", type=int, default=2)
    parser.add_argument("--timeout-s", type=int, default=180)
    parser.add_argument("--resume", action="store_true")
    args = parser.parse_args()

    if not NODE.exists() or not NPX_CLI.exists():
        raise RuntimeError("Node/npm runtime not found in expected path.")
    if not SQL_PATH.exists():
        raise RuntimeError(f"SQL file not found: {SQL_PATH}")

    sql_text = SQL_PATH.read_text(encoding="utf-8", errors="replace")
    statements = parse_statements(sql_text)
    if not statements:
        print("No SQL statements found.")
        return

    state = load_state() if args.resume else {}
    start_index = int(state.get("next_index", 0)) if state else 0
    if start_index < 0 or start_index > len(statements):
        start_index = 0

    todo = statements[start_index:]
    chunks = build_chunks(todo, max_chars=args.max_chars, max_statements=args.max_statements)

    stats = ApplyStats(total_statements=len(statements))
    failures: list[dict] = state.get("failures", []) if state else []
    started = time.time()

    print(
        json.dumps(
            {
                "total": len(statements),
                "start_index": start_index,
                "todo": len(todo),
                "chunks": len(chunks),
                "max_chars": args.max_chars,
                "max_statements": args.max_statements,
            },
            ensure_ascii=False,
        )
    )

    cursor = start_index
    for idx, chunk in enumerate(chunks, 1):
        apply_chunk_recursive(
            args.db_name,
            chunk,
            retries=args.retries,
            timeout_s=args.timeout_s,
            stats=stats,
            failures=failures,
        )
        cursor += len(chunk)
        save_state(
            {
                "db_name": args.db_name,
                "next_index": cursor,
                "total_statements": len(statements),
                "applied_in_run": stats.applied,
                "failed_in_run": stats.failed,
                "api_calls_in_run": stats.api_calls,
                "failures": failures,
                "updated_at_epoch": int(time.time()),
            }
        )
        if idx % 5 == 0 or idx == len(chunks):
            print(
                f"chunk {idx}/{len(chunks)} | cursor={cursor}/{len(statements)} | "
                f"applied={stats.applied} failed={stats.failed} calls={stats.api_calls}"
            )

    elapsed = round(time.time() - started, 1)
    summary = {
        "db_name": args.db_name,
        "total_statements": len(statements),
        "start_index": start_index,
        "processed_in_run": len(todo),
        "next_index": cursor,
        "applied_in_run": stats.applied,
        "failed_in_run": stats.failed,
        "api_calls_in_run": stats.api_calls,
        "retries_in_run": stats.retries,
        "split_fallbacks_in_run": stats.split_fallbacks,
        "elapsed_seconds": elapsed,
        "done": cursor >= len(statements),
        "failures_total": len(failures),
    }
    SUMMARY_PATH.parent.mkdir(parents=True, exist_ok=True)
    SUMMARY_PATH.write_text(json.dumps({"summary": summary, "failures": failures}, ensure_ascii=False, indent=2), encoding="utf-8")
    save_state(
        {
            "db_name": args.db_name,
            "next_index": cursor,
            "total_statements": len(statements),
            "applied_in_run": stats.applied,
            "failed_in_run": stats.failed,
            "api_calls_in_run": stats.api_calls,
            "failures": failures,
            "updated_at_epoch": int(time.time()),
        }
    )
    print(json.dumps(summary, ensure_ascii=False))


if __name__ == "__main__":
    main()
