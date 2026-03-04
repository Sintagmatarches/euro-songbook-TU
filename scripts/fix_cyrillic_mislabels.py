from __future__ import annotations

import argparse
import json
import sqlite3
import subprocess
import sys
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from scripts.import_a_pesni_sections import (  # noqa: E402
    CYR_RE,
    LAT_RE,
    SECTION_CONFIGS,
    default_country_for_lang,
    detect_language,
    parse_catalog_values,
    parse_year,
    resolve_country,
)

EXPORT_SQL = ROOT / "tmp_songs_export.sql"
UPDATE_SQL = ROOT / "tmp_fix_cyrillic_mislabels.sql"
REPORT_JSON = ROOT / "out" / "fix_cyrillic_mislabels_report.json"

CYR_LANGS = {"ru", "uk", "be", "bg", "mk", "sr", "kk"}


@dataclass
class SongRow:
    id: str
    title: str
    subtitle: str
    lang: str
    country: str
    year: str
    source: str
    notes: str
    lyrics: str


def sql_str(value: str) -> str:
    return "'" + str(value or "").replace("'", "''") + "'"


def norm(value: str | None) -> str:
    return str(value or "").strip().lower()


def run_cmd(cmd: list[str], timeout_ms: int = 420000) -> None:
    try:
        subprocess.run(cmd, cwd=ROOT, check=True, timeout=timeout_ms / 1000)
    except FileNotFoundError:
        subprocess.run(subprocess.list2cmdline(cmd), cwd=ROOT, shell=True, check=True, timeout=timeout_ms / 1000)


def ensure_export(db_name: str, refresh: bool) -> None:
    if EXPORT_SQL.exists() and not refresh:
        return
    cmd = [
        "npx",
        "wrangler",
        "d1",
        "export",
        db_name,
        "--remote",
        "--table",
        "songs",
        "--output",
        str(EXPORT_SQL),
    ]
    run_cmd(cmd)


def load_rows() -> list[SongRow]:
    sql = EXPORT_SQL.read_text(encoding="utf-8", errors="replace")
    conn = sqlite3.connect(":memory:")
    conn.executescript(sql)
    rows = conn.execute(
        """
        SELECT
          id,
          coalesce(title,''),
          coalesce(subtitle,''),
          lower(trim(coalesce(lang,''))),
          lower(trim(coalesce(country,''))),
          coalesce(year,''),
          coalesce(source,''),
          coalesce(notes,''),
          coalesce(lyrics,'')
        FROM songs
        """
    ).fetchall()
    conn.close()
    return [SongRow(*row) for row in rows]


def cyr_dominant_scope(row: SongRow) -> tuple[int, int]:
    sample = "\n".join([row.title, row.subtitle, row.lyrics[:7000]])
    cyr = len(CYR_RE.findall(sample))
    lat = len(LAT_RE.findall(sample))
    return cyr, lat


def country_compatible(lang: str, country: str) -> bool:
    c = norm(country)
    if not c:
        return False
    if c in {"other_countries", "white_emigration"}:
        return False
    if c in {"ussr", "russian_empire_1900_1917", "russian_republic_1917", "rsfsr_1917_1991", "russian_civil_war_1917_1922"}:
        return True
    if lang == "ru":
        return c.startswith("russian_") or c.startswith("rsfsr") or c.startswith("ussr")
    if lang == "uk":
        return c.startswith("ukr_") or c.startswith("ukraine") or c == "ussr"
    if lang == "be":
        return c.startswith("bssr") or c.startswith("belarus") or c == "ussr"
    if lang == "et":
        return c.startswith("eston") or c == "ussr"
    if lang == "lv":
        return c.startswith("latv") or c == "ussr"
    if lang == "lt":
        return c.startswith("lithu") or c == "ussr"
    if lang == "kk":
        return c.startswith("kazakh") or c.startswith("kazakhstan") or c == "ussr"
    if lang == "az":
        return c.startswith("azerbaijan") or c == "ussr"
    if lang == "hy":
        return c.startswith("armen") or c == "ussr"
    if lang == "ka":
        return c.startswith("georg") or c == "ussr"
    return False


def build_updates(rows: list[SongRow], valid_langs: set[str], valid_countries: set[str]) -> tuple[list[str], dict]:
    cfg_by_prefix = {cfg.id_prefix: cfg for cfg in SECTION_CONFIGS.values()}

    def config_for_song_id(song_id: str):
        for prefix, cfg in cfg_by_prefix.items():
            if song_id.startswith(prefix + "_"):
                return cfg
        return None

    updates: list[str] = []
    changed = 0
    lang_changed = 0
    country_changed = 0
    examples: list[dict] = []

    for row in rows:
        old_lang = row.lang if row.lang in valid_langs else "ru"
        old_country = norm(row.country)
        if not row.id.startswith("ap"):
            continue
        if old_lang in CYR_LANGS:
            continue
        cyr, lat = cyr_dominant_scope(row)
        if cyr < 80 or cyr < int(lat * 1.8):
            continue

        new_lang, conf, reason = detect_language(
            title=row.title,
            subtitle=row.subtitle,
            lyrics=row.lyrics,
            source=row.source,
            notes=row.notes,
            old_lang=old_lang,
        )

        # For cyr-dominant songs, language should be cyr family. If not, force ru fallback.
        if new_lang not in CYR_LANGS:
            new_lang = "ru"
            conf = max(conf, 0.91)
            reason = f"{reason}_forced_ru"

        if old_lang in CYR_LANGS and new_lang == old_lang and country_compatible(new_lang, old_country):
            continue

        set_parts: list[str] = []
        if new_lang in valid_langs and new_lang != old_lang:
            set_parts.append(f"lang={sql_str(new_lang)}")
            lang_changed += 1

        new_country = old_country
        cfg = config_for_song_id(row.id)
        if cfg is not None:
            scoped = resolve_country(cfg, new_lang, row.year)
            if scoped in valid_countries:
                new_country = scoped
        elif not country_compatible(new_lang, old_country):
            fallback = default_country_for_lang(new_lang, parse_year(row.year))
            if fallback in valid_countries:
                new_country = fallback

        if new_country and new_country != old_country:
            set_parts.append(f"country={sql_str(new_country)}")
            country_changed += 1

        if not set_parts:
            continue

        set_parts.append("updated_at=datetime('now')")
        updates.append("UPDATE songs SET " + ", ".join(set_parts) + f" WHERE id={sql_str(row.id)};")
        changed += 1
        if len(examples) < 200:
            examples.append(
                {
                    "id": row.id,
                    "title": row.title,
                    "old_lang": old_lang,
                    "new_lang": new_lang,
                    "old_country": old_country,
                    "new_country": new_country,
                    "cyr": cyr,
                    "lat": lat,
                    "reason": reason,
                    "confidence": round(conf, 4),
                }
            )

    report = {
        "total": len(rows),
        "changed": changed,
        "lang_changed": lang_changed,
        "country_changed": country_changed,
        "update_statements": len(updates),
        "examples": examples,
    }
    return updates, report


def main() -> None:
    parser = argparse.ArgumentParser(description="Fix obvious non-cyr language labels on cyrillic-dominant songs.")
    parser.add_argument("--db-name", default="euro-songbook-db")
    parser.add_argument("--refresh-export", action="store_true")
    parser.add_argument("--execute-remote", action="store_true")
    args = parser.parse_args()

    REPORT_JSON.parent.mkdir(parents=True, exist_ok=True)
    ensure_export(args.db_name, args.refresh_export)
    rows = load_rows()

    valid_langs = set(parse_catalog_values("SONG_LANGUAGE_VALUES"))
    valid_countries = set(parse_catalog_values("SONG_COUNTRY_VALUES"))
    valid_countries.add("other_countries")

    updates, report = build_updates(rows, valid_langs, valid_countries)
    UPDATE_SQL.write_text("\n".join(["-- generated by fix_cyrillic_mislabels.py", *updates, ""]), encoding="utf-8")
    report["update_sql"] = str(UPDATE_SQL)
    report["export_sql"] = str(EXPORT_SQL)
    REPORT_JSON.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    print(json.dumps({k: report[k] for k in ["total", "changed", "lang_changed", "country_changed", "update_statements"]}, ensure_ascii=False))

    if not args.execute_remote:
        return
    if not updates:
        print("No updates to apply.")
        return

    cmd = [
        "npx",
        "wrangler",
        "d1",
        "execute",
        args.db_name,
        "--remote",
        "--file",
        str(UPDATE_SQL),
    ]
    run_cmd(cmd)
    print("Remote updates applied.")


if __name__ == "__main__":
    main()
