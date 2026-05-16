from __future__ import annotations

import argparse
import json
import subprocess
import sys
from collections import Counter
from pathlib import Path

from refilter_song_catalog import parse_catalog_values, timeline_country_for_lang


ROOT = Path(__file__).resolve().parent.parent
OUT_DIR = ROOT / "out"
SQL_PATH = ROOT / "tmp_redistribute_other_countries_by_language.sql"
SUMMARY_PATH = OUT_DIR / "redistribute_other_countries_by_language_summary.json"


def run_wranger_json(db_name: str, sql: str, remote: bool) -> list[dict]:
    sql = " ".join(str(sql or "").split())
    cmd = ["cmd.exe", "/c", "npx", "wrangler", "d1", "execute", db_name]
    if remote:
        cmd.append("--remote")
    cmd.extend(["--command", sql, "--json"])
    proc = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True, encoding="utf-8", errors="replace", check=True)
    payload = json.loads(proc.stdout)
    if not payload:
        return []
    return payload[0].get("results", []) or []


def run_wranger_file(db_name: str, sql_path: Path, remote: bool) -> str:
    cmd = ["cmd.exe", "/c", "npx", "wrangler", "d1", "execute", db_name]
    if remote:
        cmd.append("--remote")
    cmd.extend(["--file", str(sql_path)])
    proc = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True, encoding="utf-8", errors="replace", check=True)
    return (proc.stdout or "") + (proc.stderr or "")


def parse_year(raw: str) -> int | None:
    text = str(raw or "").strip()
    if not text:
        return None
    try:
        year = int(text)
    except ValueError:
        return None
    if year < 1 or year > 3000:
        return None
    return year


def sql_str(value: str) -> str:
    return "'" + str(value).replace("'", "''") + "'"


def build_scope(row: dict) -> str:
    return "\n".join(
        [
            str(row.get("title") or "").strip(),
            str(row.get("subtitle") or "").strip(),
            str(row.get("source") or "").strip(),
            str(row.get("notes") or "").strip(),
        ]
    ).strip()


def main() -> None:
    try:
        sys.stdout.reconfigure(encoding="utf-8")
    except Exception:
        pass
    parser = argparse.ArgumentParser(description="Redistribute current other_countries rows by language/timeline and optionally apply to D1.")
    parser.add_argument("--db-name", default="euro-songbook-db")
    parser.add_argument("--remote", action="store_true")
    parser.add_argument("--apply", action="store_true")
    args = parser.parse_args()

    country_values = set(parse_catalog_values("SONG_COUNTRY_VALUES"))

    rows = run_wranger_json(
        args.db_name,
        """
        SELECT id, title, subtitle, lang, year, source, notes
        FROM songs
        WHERE status='published'
          AND coalesce(is_admin_content,0)=0
          AND lower(trim(coalesce(country,'')))='other_countries'
        ORDER BY id ASC
        """,
        remote=args.remote,
    )

    updates: list[str] = []
    lang_counts = Counter()
    target_counts = Counter()
    samples: list[dict] = []

    for row in rows:
        song_id = str(row.get("id") or "").strip()
        lang = str(row.get("lang") or "").strip().lower()
        year = parse_year(row.get("year") or "")
        if not song_id or not lang:
            continue
        next_country = timeline_country_for_lang(
            lang=lang,
            year=year,
            scope=build_scope(row),
            country_values=country_values,
            allow_movement_countries=False,
        )
        if not next_country or next_country == "other_countries":
            continue
        updates.append(f"UPDATE songs SET country={sql_str(next_country)}, updated_at=datetime('now') WHERE id={sql_str(song_id)};")
        lang_counts[lang] += 1
        target_counts[next_country] += 1
        if len(samples) < 50:
            samples.append({
                "id": song_id,
                "title": str(row.get("title") or ""),
                "lang": lang,
                "year": "" if year is None else year,
                "new_country": next_country,
            })

    summary = {
        "db_name": args.db_name,
        "remote": bool(args.remote),
        "total_other_countries_rows": len(rows),
        "redistributed_rows": len(updates),
        "remaining_other_countries_rows": len(rows) - len(updates),
        "by_language": dict(sorted(lang_counts.items(), key=lambda item: (-item[1], item[0]))),
        "by_target_country": dict(sorted(target_counts.items(), key=lambda item: (-item[1], item[0]))),
        "sample_updates": samples,
    }

    OUT_DIR.mkdir(parents=True, exist_ok=True)
    SQL_PATH.write_text("\n".join(updates) + ("\n" if updates else ""), encoding="utf-8")
    SUMMARY_PATH.write_text(json.dumps(summary, ensure_ascii=False, indent=2), encoding="utf-8")

    print(json.dumps(summary, ensure_ascii=False, indent=2))
    print(f"sql_path={SQL_PATH}")
    print(f"summary_path={SUMMARY_PATH}")

    if args.apply and updates:
        output = run_wranger_file(args.db_name, SQL_PATH, remote=args.remote)
        print(output)


if __name__ == "__main__":
    main()
