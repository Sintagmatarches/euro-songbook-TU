from __future__ import annotations

import argparse
import json
import sqlite3
import subprocess
from collections import Counter
from dataclasses import dataclass
from pathlib import Path

import pilot_extract_verified_translation as split_mod
import refilter_song_catalog as refilter


ROOT = Path(__file__).resolve().parent.parent
EXPORT_SQL = ROOT / "tmp_songs_export.sql"
OUT_SQL = ROOT / "tmp_split_verified_translation.sql"
OUT_REPORT = ROOT / "out" / "split_verified_translation_report.json"


@dataclass
class SongRaw:
    id: str
    title: str
    subtitle: str
    lang: str
    country: str
    year: str
    lyrics: str
    source: str
    notes: str
    status: str
    created_at: str
    verified_translation: str


def norm(value: str | None) -> str:
    return str(value or "")


def sql_str(value: str) -> str:
    return "'" + norm(value).replace("'", "''") + "'"


def script_counts(text: str) -> tuple[int, int]:
    return len(split_mod.CYR_RE.findall(text or "")), len(split_mod.LAT_RE.findall(text or ""))


def run_cmd(cmd: list[str], cwd: Path, timeout_ms: int = 180000) -> None:
    try:
        subprocess.run(cmd, cwd=cwd, check=True, timeout=timeout_ms / 1000)
    except FileNotFoundError:
        subprocess.run(subprocess.list2cmdline(cmd), cwd=cwd, shell=True, check=True, timeout=timeout_ms / 1000)


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
    run_cmd(cmd, ROOT, timeout_ms=420000)


def load_rows(path: Path) -> list[SongRaw]:
    sql = path.read_text(encoding="utf-8", errors="replace")
    conn = sqlite3.connect(":memory:")
    conn.executescript(sql)
    cols = {str(row[1] or "").strip().lower() for row in conn.execute("PRAGMA table_info(songs)").fetchall()}
    verified_col = "coalesce(verified_translation,'')" if "verified_translation" in cols else "''"
    rows = conn.execute(
        f"""
        SELECT
          id,
          coalesce(title,''),
          coalesce(subtitle,''),
          lower(trim(coalesce(lang,''))),
          lower(trim(coalesce(country,''))),
          coalesce(year,''),
          coalesce(lyrics,''),
          coalesce(source,''),
          coalesce(notes,''),
          lower(trim(coalesce(status,'published'))),
          coalesce(created_at,''),
          {verified_col}
        FROM songs
        """
    ).fetchall()
    conn.close()
    return [SongRaw(*row) for row in rows]


def main() -> None:
    parser = argparse.ArgumentParser(description="Split RU verified translations from mixed lyrics and refilter lang/country.")
    parser.add_argument("--db-name", default="euro-songbook-db")
    parser.add_argument("--refresh-export", action="store_true")
    parser.add_argument("--execute-remote", action="store_true")
    parser.add_argument("--sample-size", type=int, default=0, help="0 = full published catalog")
    parser.add_argument("--seed", type=int, default=42)
    args = parser.parse_args()

    OUT_REPORT.parent.mkdir(parents=True, exist_ok=True)
    ensure_export(args.db_name, args.refresh_export)

    lang_values = set(refilter.parse_catalog_values("SONG_LANGUAGE_VALUES"))
    country_values = set(refilter.parse_catalog_values("SONG_COUNTRY_VALUES"))
    country_values.update({"other_countries", "other_movements"})
    aliases = refilter.build_country_aliases(country_values)
    lang_mod = refilter.load_lang_module()
    policy = refilter.FilterPolicy(
        country_ambiguity_policy="other_countries",
        cyr_lang_switch_policy="aggressive",
        max_scope_chars=3200,
        sample_seed=args.seed,
    )

    rows = load_rows(EXPORT_SQL)
    eligible = [
        row
        for row in rows
        if row.status == "published"
        and not norm(row.verified_translation).strip()
        and norm(row.lyrics).strip()
    ]

    if args.sample_size and args.sample_size > 0 and len(eligible) > args.sample_size:
        import random

        rng = random.Random(args.seed)
        rows_to_process = rng.sample(eligible, args.sample_size)
    else:
        rows_to_process = eligible

    updates: list[str] = []
    split_reasons: Counter[str] = Counter()
    lang_pairs: Counter[tuple[str, str]] = Counter()
    country_pairs: Counter[tuple[str, str]] = Counter()
    changed_lang = 0
    changed_country = 0
    changed_rows = 0
    skipped_no_split = 0
    examples: list[dict] = []

    for row in rows_to_process:
        split = split_mod.split_lyrics_for_verified_translation(row.lang, row.lyrics)
        if not split:
            skipped_no_split += 1
            continue
        main_lyrics, verified_translation, split_reason = split
        split_reasons[split_reason] += 1

        old_lang = row.lang if row.lang in lang_values else "ru"
        old_country = aliases.get(refilter.fold_alias(row.country), "")
        if old_country not in country_values:
            old_country = ""

        row_clean = refilter.SongRow(
            id=row.id,
            title=refilter.normalize_inline(row.title),
            subtitle=refilter.normalize_inline(row.subtitle),
            lang=old_lang,
            country=row.country,
            year=row.year,
            lyrics=main_lyrics,
            source=refilter.drop_import_meta_lines(row.source),
            notes=refilter.drop_import_meta_lines(row.notes),
            status=row.status,
            created_at=row.created_at,
        )
        signals = refilter.build_row_signals(row_clean, country_values, policy)

        pred_lang, lang_conf, lang_reason, _ = refilter.classify_language(
            row_clean,
            signals,
            lang_mod,
            lang_values,
            policy,
        )
        if pred_lang not in lang_values:
            pred_lang = old_lang
        final_lang = pred_lang if refilter.should_apply_language_change(old_lang, pred_lang, lang_conf, lang_reason, lang_mod) else old_lang
        if split_reason == "split_by_script":
            cyr_n, lat_n = script_counts(main_lyrics)
            if lat_n >= max(40, int(cyr_n * 1.5)):
                core_only = lang_mod.SongRow(row.id, "", "", old_lang, main_lyrics, "", "")
                p_only, c_only, r_only = lang_mod.classify_song(core_only)
                if p_only in lang_values and p_only != "ru" and float(c_only) >= 0.9:
                    final_lang = p_only
                    lang_conf = float(c_only)
                    lang_reason = f"split_main_{r_only}"

        year_value = refilter.parse_year(row.year)
        new_country, country_reason, _ambiguous, _low_signal = refilter.classify_country(
            row_clean,
            signals,
            final_lang,
            year_value,
            country_values,
            aliases,
            policy,
        )
        if new_country not in country_values:
            new_country = "other_countries"
        if final_lang == "en":
            scope_text = (signals.scope_short or "").lower()
            has_uk_ie_marker = bool(refilter.UK_RE.search(scope_text) or refilter.IRELAND_RE.search(scope_text))
            if not has_uk_ie_marker and not signals.geo_votes:
                new_country = "other_countries"
                country_reason = "country_en_ambiguous_to_other"

        set_parts = [
            f"lyrics={sql_str(main_lyrics)}",
            f"verified_translation={sql_str(verified_translation)}",
        ]
        if final_lang != old_lang:
            set_parts.append(f"lang={sql_str(final_lang)}")
            changed_lang += 1
            lang_pairs[(old_lang, final_lang)] += 1
        if new_country != old_country:
            set_parts.append(f"country={sql_str(new_country)}")
            changed_country += 1
            country_pairs[(old_country or "<empty>", new_country)] += 1

        set_parts.append("updated_at=datetime('now')")
        updates.append("UPDATE songs SET " + ", ".join(set_parts) + f" WHERE id={sql_str(row.id)};")
        changed_rows += 1

        if len(examples) < 120:
            examples.append(
                {
                    "id": row.id,
                    "title": row.title,
                    "split_reason": split_reason,
                    "old_lang": old_lang,
                    "new_lang": final_lang,
                    "lang_reason": lang_reason,
                    "lang_conf": round(float(lang_conf), 4),
                    "old_country": old_country,
                    "new_country": new_country,
                    "country_reason": country_reason,
                }
            )

    OUT_SQL.write_text("\n".join(["-- generated by split_verified_translation_and_refilter.py", *updates, ""]), encoding="utf-8")
    report = {
        "export_sql": str(EXPORT_SQL),
        "update_sql": str(OUT_SQL),
        "eligible_total": len(eligible),
        "processed_total": len(rows_to_process),
        "changed_rows": changed_rows,
        "changed_lang": changed_lang,
        "changed_country": changed_country,
        "skipped_no_split": skipped_no_split,
        "split_reason_counts": dict(split_reasons),
        "lang_pair_counts": [{"old_lang": a, "new_lang": b, "count": c} for (a, b), c in lang_pairs.most_common()],
        "country_pair_counts": [{"old_country": a, "new_country": b, "count": c} for (a, b), c in country_pairs.most_common()],
        "examples": examples,
        "update_statements": len(updates),
    }
    OUT_REPORT.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(
        json.dumps(
            {
                "eligible_total": len(eligible),
                "processed_total": len(rows_to_process),
                "changed_rows": changed_rows,
                "changed_lang": changed_lang,
                "changed_country": changed_country,
                "update_statements": len(updates),
                "out_sql": str(OUT_SQL),
                "out_report": str(OUT_REPORT),
            },
            ensure_ascii=False,
        )
    )

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
        str(OUT_SQL),
    ]
    run_cmd(cmd, ROOT, timeout_ms=420000)
    print("Remote updates applied.")


if __name__ == "__main__":
    main()
