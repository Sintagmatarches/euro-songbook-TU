from __future__ import annotations

import argparse
import json
from pathlib import Path

from parse_html_file import parse_html_file


def import_all(fixtures_dir: str | Path = "fixtures", out_dir: str | Path = "out") -> list[Path]:
    fixtures_path = Path(fixtures_dir)
    out_path = Path(out_dir)
    out_path.mkdir(parents=True, exist_ok=True)

    written: list[Path] = []
    for html_file in sorted(fixtures_path.rglob("*.html")):
        parsed = parse_html_file(html_file)
        rel = html_file.relative_to(fixtures_path).with_suffix(".json")
        target = out_path / rel
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_text(json.dumps(parsed, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        written.append(target)
    return written


def main() -> None:
    parser = argparse.ArgumentParser(description="Import all HTML fixtures into JSON.")
    parser.add_argument("--fixtures", default="fixtures", help="Input directory with .html files.")
    parser.add_argument("--out", default="out", help="Output directory for .json files.")
    args = parser.parse_args()

    written = import_all(args.fixtures, args.out)
    print(f"Imported {len(written)} files into {Path(args.out).resolve()}")


if __name__ == "__main__":
    main()
