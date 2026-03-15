from __future__ import annotations

import argparse
import json
import re
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
    resolve_country,
    strip_trailing_metadata_from_lyrics,
)

EXPORT_SQL = ROOT / "tmp_songs_export.sql"
UPDATE_SQL = ROOT / "tmp_rebalance_song_metadata.sql"
REPORT_JSON = ROOT / "out" / "rebalance_song_metadata_report.json"

YEAR_MIN = 1600
YEAR_MAX = 2026
CYR_LANGS = {"ru", "uk", "be", "bg", "mk", "sr", "kk"}

POLISH_KINGDOM_COUNTRY = "kingdom_of_poland_within_russian_empire_1815_1915"
POLISH_RELATED_COUNTRIES = {
    POLISH_KINGDOM_COUNTRY,
    "second_polish_republic_1918_1939",
    "polish_peoples_republic_1952_1989",
    "poland_1989",
    "armia_krajowa",
    "armia_ludowa",
}

YEAR_RE = re.compile(r"\b(1[6-9]\d{2}|20\d{2})\b")
LIFESPAN_RE = re.compile(r"\b(1[6-9]\d{2}|20\d{2})\s*[-–—]\s*(1[6-9]\d{2}|20\d{2})\b")
YEAR_RANGE_RE = re.compile(r"\b(1[6-9]\d{2}|20\d{2})\s*[-–—]\s*(1[6-9]\d{2}|20\d{2})\b")

PUB_KW_RE = re.compile(
    r"(изд|изд-во|вып\.?|сост\.?|ред\.?|песенник|сборник|publisher|edition|issue|collection|"
    r"wydawnictw|śpiewnik|spiewnik|warszaw|mosk|new york|стрекоз|русич)",
    re.IGNORECASE,
)
RECORD_KW_RE = re.compile(
    r"(запис|record|recorded|пластинк|фирм|label|grammophon|wl\s*\d+)",
    re.IGNORECASE,
)
COMPOSE_KW_RE = re.compile(
    r"(написа|созда|датир|сочин|lyrics by|music by|muzyka\s*:|słowa\s*:|слова\s*:|музыка\s*:|z roku)",
    re.IGNORECASE,
)
HISTORIC_KW_RE = re.compile(
    r"(powstani|восстан|войн|wojna|легион|легионер|пилсуд|kościusz|kościuszk|kosciusz|польск|polsk)",
    re.IGNORECASE,
)
TAIL_COMMENT_RE = re.compile(
    r"^\s*(песня|песенка|сюжет|комментар|источник|описани|перевод|на мотив|новый текст|song|about)\b",
    re.IGNORECASE,
)
AK_RE = re.compile(r"\b(armia\s+krajowa|ак|армия\s+крайова)\b", re.IGNORECASE)
AL_RE = re.compile(r"\b(armia\s+ludowa|ал|армия\s+людова)\b", re.IGNORECASE)
IMPORT_META_LINE_RE = re.compile(r"^\s*(date:|message_id:|import_source:)", re.IGNORECASE)


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


@dataclass
class YearCandidate:
    year: int
    score: int
    reason: str
    origin: str


def sql_str(value: str) -> str:
    return "'" + str(value or "").replace("'", "''") + "'"


def norm(value: str | None) -> str:
    return str(value or "").strip().lower()


def norm_multiline(value: str | None) -> str:
    text = str(value or "").replace("\r\n", "\n").replace("\r", "\n")
    return "\n".join(line.rstrip() for line in text.split("\n"))


def join_blocks(base: str, lines: list[str]) -> str:
    cleaned = norm_multiline(base).strip()
    extra = [norm_multiline(x).strip() for x in lines if norm_multiline(x).strip()]
    if not extra:
        return cleaned
    if not cleaned:
        return "\n".join(extra).strip()
    return (cleaned + "\n" + "\n".join(extra)).strip()


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


def cyr_lat_counts(title: str, subtitle: str, lyrics: str) -> tuple[int, int]:
    sample = "\n".join([title, subtitle, lyrics[:7000]])
    return len(CYR_RE.findall(sample)), len(LAT_RE.findall(sample))


def parse_year_safe(raw: str | int | None) -> int | None:
    text = str(raw or "").strip()
    if not text.isdigit():
        return None
    value = int(text)
    if YEAR_MIN <= value <= YEAR_MAX:
        return value
    return None


def year_text(value: int | None) -> str | None:
    return str(value) if isinstance(value, int) else None


def cfg_by_song_id(song_id: str):
    for cfg in SECTION_CONFIGS.values():
        if song_id.startswith(cfg.id_prefix + "_"):
            return cfg
    return None


def should_apply_lang_change(old_lang: str, new_lang: str, conf: float, cyr: int, lat: int, is_ap: bool) -> bool:
    if not new_lang or new_lang == old_lang:
        return False
    cyr_dominant = cyr >= 60 and cyr >= int(lat * 1.5)
    lat_dominant = lat >= 80 and lat >= int(cyr * 1.35)

    if is_ap:
        if cyr_dominant and old_lang not in CYR_LANGS and new_lang in CYR_LANGS:
            return conf >= 0.7
        if lat_dominant and old_lang in CYR_LANGS and new_lang not in CYR_LANGS:
            return conf >= 0.84
        return conf >= 0.9

    if cyr_dominant and old_lang not in CYR_LANGS and new_lang in CYR_LANGS:
        return conf >= 0.96
    if lat_dominant and old_lang in CYR_LANGS and new_lang not in CYR_LANGS:
        return conf >= 0.97
    return False


def sanitize_lyrics_tail(lyrics: str) -> tuple[str, list[str]]:
    cleaned, moved = strip_trailing_metadata_from_lyrics(norm_multiline(lyrics))
    lines = [line.rstrip() for line in norm_multiline(cleaned).split("\n")]
    extra: list[str] = []
    while lines:
        tail = lines[-1].strip()
        if not tail:
            lines.pop()
            continue
        if TAIL_COMMENT_RE.search(tail):
            extra.insert(0, tail)
            lines.pop()
            continue
        break
    after_comment = "\n".join(lines).strip()
    # Comment lines can hide bibliography lines right above them; run one more pass.
    final_lyrics, moved2 = strip_trailing_metadata_from_lyrics(after_comment)
    return final_lyrics.strip(), [*moved, *extra, *moved2]


def split_moved_lines_to_source_notes(source: str, notes: str, moved: list[str]) -> tuple[str, str]:
    src_extra: list[str] = []
    notes_extra: list[str] = []
    for line in moved:
        low = line.lower()
        if PUB_KW_RE.search(low) or YEAR_RE.search(line):
            src_extra.append(line)
        else:
            notes_extra.append(line)
    return join_blocks(source, src_extra), join_blocks(notes, notes_extra)


def drop_import_meta_lines(text: str) -> str:
    lines = [line for line in norm_multiline(text).split("\n") if not IMPORT_META_LINE_RE.match(line.strip())]
    return "\n".join(lines).strip()


def extract_year_candidates(text: str, origin: str) -> list[YearCandidate]:
    source = norm_multiline(text)
    if not source:
        return []
    out: list[YearCandidate] = []
    base = {"title": 12, "subtitle": 10, "source": 5, "notes": 4, "lyrics": 2}.get(origin, 2)
    low = source.lower()
    for match in YEAR_RE.finditer(source):
        year = int(match.group(1))
        if not (YEAR_MIN <= year <= YEAR_MAX):
            continue
        start = max(0, match.start() - 45)
        end = min(len(source), match.end() + 45)
        ctx = low[start:end]
        score = base
        reasons = [origin]
        if COMPOSE_KW_RE.search(ctx):
            score += 7
            reasons.append("compose_kw")
        if HISTORIC_KW_RE.search(ctx):
            score += 3 if origin in {"title", "subtitle", "source"} else 1
            reasons.append("historic_kw")
        if RECORD_KW_RE.search(ctx):
            score -= 2
            reasons.append("record_kw")
        if PUB_KW_RE.search(ctx):
            score -= 7
            reasons.append("pub_kw")
        if LIFESPAN_RE.search(ctx):
            score -= 10
            reasons.append("lifespan")
        if year >= 1990 and ("pub_kw" in reasons or "record_kw" in reasons):
            score -= 1
        out.append(YearCandidate(year=year, score=score, reason="+".join(reasons), origin=origin))
    return out


def infer_song_year(
    *,
    title: str,
    subtitle: str,
    source: str,
    notes: str,
    lyrics: str,
    old_year: int | None,
) -> tuple[int | None, str]:
    source = drop_import_meta_lines(source)
    notes = drop_import_meta_lines(notes)
    candidates: list[YearCandidate] = []
    candidates.extend(extract_year_candidates(title, "title"))
    candidates.extend(extract_year_candidates(subtitle, "subtitle"))
    candidates.extend(extract_year_candidates(source, "source"))
    candidates.extend(extract_year_candidates(notes, "notes"))
    candidates.extend(extract_year_candidates("\n".join(lyrics.splitlines()[-8:]), "lyrics"))

    if old_year is not None:
        candidates.append(YearCandidate(year=old_year, score=2, reason="existing_year", origin="existing"))
    if not candidates:
        return old_year, "no_year_candidates"

    # Prefer highest score, then a more recent year on ties.
    candidates.sort(key=lambda c: (c.score, c.year), reverse=True)
    best = candidates[0]
    if best.score < 1:
        if old_year is not None:
            return old_year, "weak_candidates_keep_old"
        return None, "weak_candidates_null"
    return best.year, best.reason


def polish_range_year_hint(text: str) -> int | None:
    source = norm_multiline(text)
    for match in YEAR_RANGE_RE.finditer(source):
        start = int(match.group(1))
        end = int(match.group(2))
        if not (YEAR_MIN <= start <= YEAR_MAX and YEAR_MIN <= end <= YEAR_MAX):
            continue
        if start <= end and start <= 1918:
            return start
    return None


def enforce_year_bounds(country: str, year_value: int | None) -> int | None:
    if year_value is None:
        return None
    c = norm(country)
    if c == "russian_empire_1900_1917" and year_value > 1917:
        return None
    if c == "russian_civil_war_1917_1922" and not (1917 <= year_value <= 1922):
        return None
    if c == POLISH_KINGDOM_COUNTRY and year_value > 1917:
        return None
    return year_value


def polish_country_for_year(year_value: int | None, scope: str, old_country: str, valid_countries: set[str]) -> str:
    scope_low = scope.lower()
    if AK_RE.search(scope_low):
        return "armia_krajowa" if "armia_krajowa" in valid_countries else "other_countries"
    if AL_RE.search(scope_low):
        return "armia_ludowa" if "armia_ludowa" in valid_countries else "other_countries"

    if year_value is None:
        if old_country in POLISH_RELATED_COUNTRIES and old_country in valid_countries:
            return old_country
        return "other_countries"
    if year_value <= 1917:
        if POLISH_KINGDOM_COUNTRY in valid_countries:
            return POLISH_KINGDOM_COUNTRY
        return "russian_empire_1900_1917" if "russian_empire_1900_1917" in valid_countries else "other_countries"
    if year_value <= 1939:
        return "second_polish_republic_1918_1939"
    if year_value <= 1949:
        return "second_polish_republic_1918_1939"
    if year_value <= 1989:
        return "polish_peoples_republic_1952_1989"
    return "poland_1989"


def rebalance_country_for_row(
    row: SongRow,
    final_lang: str,
    year_value: int | None,
    valid_countries: set[str],
    *,
    scope_text: str,
) -> tuple[str, int | None, str]:
    old_country = norm(row.country)
    cfg = cfg_by_song_id(row.id)

    if final_lang == "pl":
        nc = polish_country_for_year(year_value, scope_text, old_country, valid_countries)
        y2 = enforce_year_bounds(nc, year_value)
        return nc, y2, "pl_timeline"

    if cfg is not None:
        if cfg.slug in {"russian_songs_18th", "literary_before_1917", "revolutionary_before_1917", "russo_japanese_war", "world_war_i"}:
            if final_lang != "ru":
                nc = default_country_for_lang(final_lang, year_value)
                return (nc if nc in valid_countries else "other_countries"), year_value, "empire_section_lang_override"
            y2 = year_value
            if y2 is not None and y2 > 1917:
                y2 = None
            return "russian_empire_1900_1917", y2, "empire_section_keep"

        if cfg.slug == "civil_war":
            if final_lang == "ru":
                y2 = year_value
                if y2 is not None and not (1917 <= y2 <= 1922):
                    y2 = None
                return "russian_civil_war_1917_1922", y2, "civil_war_section"
            nc = default_country_for_lang(final_lang, year_value)
            return (nc if nc in valid_countries else "other_countries"), year_value, "civil_war_lang_override"

        nc = resolve_country(cfg, final_lang, year_text(year_value))
        if nc not in valid_countries:
            nc = "other_countries"
        y2 = enforce_year_bounds(nc, year_value)
        return nc, y2, "section_resolve"

    if old_country == "russian_empire_1900_1917":
        if final_lang != "ru":
            nc = default_country_for_lang(final_lang, year_value)
            if nc not in valid_countries:
                nc = "other_countries"
            return nc, year_value, "empire_nonru_override"
        return "russian_empire_1900_1917", enforce_year_bounds("russian_empire_1900_1917", year_value), "empire_year_trim"

    if old_country == "poland_1989" and year_value is not None and year_value < 1989:
        nc = polish_country_for_year(year_value, scope_text, old_country, valid_countries)
        return nc, enforce_year_bounds(nc, year_value), "poland_1989_backfill"

    return old_country, enforce_year_bounds(old_country, year_value), "keep_country"


def build_updates(
    rows: list[SongRow],
    valid_langs: set[str],
    valid_countries: set[str],
    *,
    ap_only: bool,
) -> tuple[list[str], dict]:
    updates: list[str] = []
    changed = 0
    lang_changed = 0
    country_changed = 0
    year_changed = 0
    text_changed = 0
    examples: list[dict] = []

    for row in rows:
        if ap_only and not row.id.startswith("ap"):
            continue

        old_lang = row.lang if row.lang in valid_langs else "ru"
        old_country = norm(row.country)
        old_year = parse_year_safe(row.year)
        is_ap = row.id.startswith("ap")

        old_lyrics_norm = norm_multiline(row.lyrics).strip()
        old_source_norm = norm_multiline(row.source).strip()
        old_notes_norm = norm_multiline(row.notes).strip()

        clean_lyrics, moved_lines = sanitize_lyrics_tail(row.lyrics)
        clean_source, clean_notes = split_moved_lines_to_source_notes(row.source, row.notes, moved_lines)
        clean_lyrics = norm_multiline(clean_lyrics).strip()
        clean_source = norm_multiline(clean_source).strip()
        clean_notes = norm_multiline(clean_notes).strip()

        cyr, lat = cyr_lat_counts(row.title, row.subtitle, clean_lyrics)
        new_lang, conf, reason = detect_language(
            title=row.title,
            subtitle=row.subtitle,
            lyrics=clean_lyrics,
            source=clean_source,
            notes=clean_notes,
            old_lang=old_lang,
        )
        if new_lang not in valid_langs:
            new_lang = old_lang

        apply_lang = should_apply_lang_change(old_lang, new_lang, conf, cyr, lat, is_ap)
        final_lang = new_lang if apply_lang else old_lang

        inferred_year, year_reason = infer_song_year(
            title=row.title,
            subtitle=row.subtitle,
            source=clean_source,
            notes=clean_notes,
            lyrics=clean_lyrics,
            old_year=old_year,
        ) if (
            is_ap
            or old_country in {"poland_1989", "russian_empire_1900_1917", "russian_civil_war_1917_1922", POLISH_KINGDOM_COUNTRY}
            or old_lang == "pl"
            or final_lang == "pl"
        ) else (old_year, "year_scope_keep_old")
        if inferred_year is None and final_lang == "pl":
            hint_year = polish_range_year_hint("\n".join([clean_source, clean_notes]))
            if hint_year is not None:
                inferred_year = hint_year
                year_reason = "pl_range_start_hint"
        scope = "\n".join([row.title, row.subtitle, clean_source, clean_notes, clean_lyrics[:1800]])
        new_country, new_year, country_reason = rebalance_country_for_row(
            row,
            final_lang,
            inferred_year,
            valid_countries,
            scope_text=scope,
        )
        if new_country not in valid_countries:
            new_country = "other_countries"

        set_parts: list[str] = []
        if apply_lang and final_lang != old_lang:
            set_parts.append(f"lang={sql_str(final_lang)}")
            lang_changed += 1
        if new_country != old_country:
            set_parts.append(f"country={sql_str(new_country)}")
            country_changed += 1
        if new_year != old_year:
            if new_year is None:
                set_parts.append("year=NULL")
            else:
                set_parts.append(f"year={sql_str(str(new_year))}")
            year_changed += 1

        if clean_lyrics != old_lyrics_norm:
            set_parts.append(f"lyrics={sql_str(clean_lyrics)}")
            text_changed += 1
        if clean_source != old_source_norm:
            set_parts.append(f"source={sql_str(clean_source)}")
            text_changed += 1
        if clean_notes != old_notes_norm:
            set_parts.append(f"notes={sql_str(clean_notes)}")
            text_changed += 1

        if not set_parts:
            continue

        set_parts.append("updated_at=datetime('now')")
        updates.append("UPDATE songs SET " + ", ".join(set_parts) + f" WHERE id={sql_str(row.id)};")
        changed += 1

        if len(examples) < 300:
            examples.append(
                {
                    "id": row.id,
                    "title": row.title,
                    "old_lang": old_lang,
                    "new_lang": final_lang,
                    "old_country": old_country,
                    "new_country": new_country,
                    "old_year": old_year,
                    "new_year": new_year,
                    "lang_conf": round(conf, 4),
                    "lang_reason": reason,
                    "year_reason": year_reason,
                    "country_reason": country_reason,
                }
            )

    report = {
        "total": len(rows),
        "changed": changed,
        "lang_changed": lang_changed,
        "country_changed": country_changed,
        "year_changed": year_changed,
        "text_changed": text_changed,
        "update_statements": len(updates),
        "examples": examples,
    }
    return updates, report


def main() -> None:
    parser = argparse.ArgumentParser(description="Rebalance song language/country/year consistency after bulk imports.")
    parser.add_argument("--db-name", default="euro-songbook-db")
    parser.add_argument("--refresh-export", action="store_true")
    parser.add_argument("--execute-remote", action="store_true")
    parser.add_argument("--all-songs", action="store_true", help="Apply to all songs, not only ap* imports.")
    args = parser.parse_args()

    REPORT_JSON.parent.mkdir(parents=True, exist_ok=True)
    ensure_export(args.db_name, args.refresh_export)
    rows = load_rows()
    valid_langs = set(parse_catalog_values("SONG_LANGUAGE_VALUES"))
    valid_countries = set(parse_catalog_values("SONG_COUNTRY_VALUES"))
    valid_countries.add("other_countries")

    updates, report = build_updates(rows, valid_langs, valid_countries, ap_only=not args.all_songs)
    UPDATE_SQL.write_text("\n".join(["-- generated by rebalance_song_metadata.py", *updates, ""]), encoding="utf-8")
    report["update_sql"] = str(UPDATE_SQL)
    report["export_sql"] = str(EXPORT_SQL)
    REPORT_JSON.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    print(
        json.dumps(
            {k: report[k] for k in ["total", "changed", "lang_changed", "country_changed", "year_changed", "text_changed", "update_statements"]},
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
        str(UPDATE_SQL),
    ]
    run_cmd(cmd)
    print("Remote updates applied.")


if __name__ == "__main__":
    main()
