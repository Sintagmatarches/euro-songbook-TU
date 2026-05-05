from __future__ import annotations

"""
Compatibility wrapper.

The old rebalance_song_metadata.py mixed language, country, year, source, notes and lyrics updates in one pass.
For the current project architecture this is too risky. Use:
  1. scripts/refilter_song_catalog.py for language/country/year review.
  2. scripts/repair_existing_songs.py for structural extraction into lyrics_meta_json.

This wrapper runs both in dry-run/report mode unless explicit arguments are passed to the child scripts.
It never applies remote writes itself.
"""

import argparse
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
REFILTER = ROOT / "scripts" / "refilter_song_catalog.py"
REPAIR = ROOT / "scripts" / "repair_existing_songs.py"


def run(cmd: list[str]) -> int:
    print("Running:", " ".join(cmd))
    result = subprocess.run(cmd, cwd=ROOT)
    return int(result.returncode or 0)


def main() -> int:
    parser = argparse.ArgumentParser(description="Safe metadata rebalance wrapper: refilter language/country and extract structure without remote writes.")
    parser.add_argument("--python", default=sys.executable)
    parser.add_argument("--db-name", default="euro-songbook-db")
    parser.add_argument("--refresh-export", action="store_true")
    parser.add_argument("--song-id", default="")
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--skip-refilter", action="store_true")
    parser.add_argument("--skip-structure", action="store_true")
    parser.add_argument("--include-clean-lyrics", action="store_true", help="Forwarded only to repair_existing_songs.py.")
    parser.add_argument("--allow-large-change-set", action="store_true")
    parser.add_argument("--execute-remote", action="store_true", help="Refused by this wrapper. Run child scripts manually after review.")
    args = parser.parse_args()

    if args.execute_remote:
        print("Refusing --execute-remote in rebalance_song_metadata.py. Review generated reports and run the specific child script manually.", file=sys.stderr)
        return 2

    if not args.skip_refilter:
        if not REFILTER.exists():
            print(f"Missing {REFILTER}; skipping refilter.", file=sys.stderr)
        else:
            cmd = [args.python, str(REFILTER), "--db-name", args.db_name]
            if args.refresh_export:
                cmd.append("--refresh-export")
            if args.allow_large_change_set:
                cmd.append("--allow-large-change-set")
            code = run(cmd)
            if code:
                return code

    if not args.skip_structure:
        if not REPAIR.exists():
            print(f"Missing {REPAIR}; skipping structure extraction.", file=sys.stderr)
        else:
            cmd = [args.python, str(REPAIR), "--db-name", args.db_name]
            if args.refresh_export:
                cmd.append("--refresh-export")
            if args.song_id:
                cmd.extend(["--song-id", args.song_id])
            if args.limit:
                cmd.extend(["--limit", str(args.limit)])
            if args.include_clean_lyrics:
                cmd.append("--include-clean-lyrics")
            if args.allow_large_change_set:
                cmd.append("--allow-large-change-set")
            code = run(cmd)
            if code:
                return code

    print("Done. Review out/refilter_song_catalog_report.json and out/repair_existing_songs_report.json before applying anything.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
