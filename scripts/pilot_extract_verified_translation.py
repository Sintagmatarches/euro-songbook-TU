from __future__ import annotations

import argparse
import json
import random
import re
import sqlite3
from collections import Counter
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
EXPORT_SQL = ROOT / "tmp_songs_export.sql"
OUT_SQL = ROOT / "tmp_verified_translation_pilot.sql"
OUT_REPORT = ROOT / "out" / "verified_translation_pilot_report.json"

CYR_RE = re.compile(r"[\u0400-\u052f]")
LAT_RE = re.compile(r"[A-Za-z\u00C0-\u024F\u1E00-\u1EFF]")
CYR_WORD_RE = re.compile(r"[А-Яа-яЁёІіЇїЄєҐґЎў']+")
LAT_WORD_RE = re.compile(r"[A-Za-z\u00C0-\u024F\u1E00-\u1EFF]{2,}")

CHORD_LINE_RE = re.compile(
    r"^\s*(?:(?:[A-H][#b]?(?:m|maj|min|sus|dim|aug|add)?\d*(?:/[A-H][#b]?)?)\s*){1,12}$",
    re.IGNORECASE,
)

TRANSLATION_HEADING_RE = re.compile(
    r"^\s*(?:рус(?:ский|скій)?\s+перевод|перевод|переклад|падрадковы\s+пераклад|"
    r"translation|translated|transliteration|подстрочник)\s*[:\-]?\s*$",
    re.IGNORECASE,
)
TRANSLATION_INLINE_RE = re.compile(
    r"^\s*(?:рус(?:ский|скій)?\s+перевод|перевод|переклад|падрадковы\s+пераклад|"
    r"translation|translated|transliteration|подстрочник)\s*[:\-]\s*(.+?)\s*$",
    re.IGNORECASE,
)

RU_STOPWORDS = {
    "и",
    "в",
    "во",
    "не",
    "на",
    "что",
    "я",
    "ты",
    "мы",
    "вы",
    "это",
    "как",
    "а",
    "но",
    "по",
    "с",
    "из",
    "за",
    "меня",
    "тебя",
    "его",
    "ее",
    "её",
    "нас",
    "вас",
    "когда",
    "если",
    "ли",
    "же",
    "только",
}
RU_UNIQUE_CHAR_RE = re.compile(r"[ЁёЫыЭэЪъ]")
RU_MARKER_RE = re.compile(r"\b(рус(?:ский|скій)|перевод|переклад|подстрочник)\b", re.IGNORECASE)
CYR_LANGS = {"ru", "uk", "be", "bg", "mk", "sr", "kk"}


@dataclass
class SongRow:
    id: str
    lang: str
    title: str
    lyrics: str
    verified_translation: str
    status: str


def norm(value: str | None) -> str:
    return str(value or "")


def normalize_newlines(text: str) -> str:
    return norm(text).replace("\r\n", "\n").replace("\r", "\n")


def normalize_block(lines: list[str]) -> str:
    out: list[str] = []
    prev_blank = True
    for raw in lines:
        line = raw.strip()
        if not line:
            if not prev_blank:
                out.append("")
            prev_blank = True
            continue
        out.append(line)
        prev_blank = False
    while out and out[-1] == "":
        out.pop()
    return "\n".join(out).strip()


def line_script_counts(line: str) -> tuple[int, int]:
    return len(CYR_RE.findall(line)), len(LAT_RE.findall(line))


def line_script_type(line: str) -> str:
    if CHORD_LINE_RE.match(line.strip() or ""):
        return "neutral"
    cyr, lat = line_script_counts(line)
    if cyr >= 2 and cyr >= int(lat * 1.4):
        return "cyr"
    if lat >= 2 and lat >= int(cyr * 1.4):
        return "lat"
    return "mixed"


def ru_signal_score(text: str) -> int:
    src = norm(text)
    if not src:
        return 0
    tokens = [t.lower() for t in CYR_WORD_RE.findall(src)]
    stop_count = sum(1 for t in tokens if t in RU_STOPWORDS)
    score = min(stop_count, 6)
    score += min(len(RU_UNIQUE_CHAR_RE.findall(src)), 2)
    if RU_MARKER_RE.search(src):
        score += 1
    return score


def lat_word_count(text: str) -> int:
    return len(LAT_WORD_RE.findall(text))


def cyr_word_count(text: str) -> int:
    return len(CYR_WORD_RE.findall(text))


def is_probably_ru_translation_block(text: str) -> bool:
    block = norm(text).strip()
    if not block:
        return False
    cyr_words = cyr_word_count(block)
    cyr_chars = len(CYR_RE.findall(block))
    lat_chars = len(LAT_RE.findall(block))
    if cyr_words < 8 or cyr_chars < 24:
        return False
    if cyr_chars < int(lat_chars * 1.5):
        return False
    return ru_signal_score(block) >= 2


def drop_translation_heading(lines: list[str]) -> list[str]:
    items = list(lines)
    while items and TRANSLATION_HEADING_RE.match(items[0].strip() or ""):
        items.pop(0)
    if items:
        m = TRANSLATION_INLINE_RE.match(items[0].strip() or "")
        if m:
            first = m.group(1).strip()
            items = ([first] if first else []) + items[1:]
    return items


def rebalance_leading_cyr_from_main(main_lines: list[str], translation_lines: list[str]) -> tuple[list[str], list[str]]:
    left = list(main_lines)
    right = list(translation_lines)
    moved: list[str] = []
    while left and len(moved) < 6:
        line = left[0]
        if not line.strip():
            moved.append(left.pop(0))
            continue
        if line_script_type(line) not in {"cyr", "mixed"}:
            break
        if not CYR_RE.search(line):
            break
        moved.append(left.pop(0))
    if moved and lat_word_count("\n".join(left)) >= 8:
        right = moved + right
    return left, right


def split_by_marker(lines: list[str]) -> tuple[str, str, str] | None:
    for idx, raw in enumerate(lines):
        stripped = raw.strip() or ""
        if TRANSLATION_HEADING_RE.match(stripped):
            left_lines, right_lines = rebalance_leading_cyr_from_main(lines[:idx], drop_translation_heading(lines[idx + 1 :]))
        else:
            m = TRANSLATION_INLINE_RE.match(stripped)
            if not m:
                continue
            first_line = m.group(1).strip()
            right = ([first_line] if first_line else []) + lines[idx + 1 :]
            left_lines, right_lines = rebalance_leading_cyr_from_main(lines[:idx], drop_translation_heading(right))

        left = normalize_block(left_lines)
        right = normalize_block(right_lines)
        if not left or not right:
            continue
        if len(left) < 40 or len(right) < 40:
            continue
        if not is_probably_ru_translation_block(right):
            continue
        return left, right, "split_by_marker"
    return None


def split_by_script(lang: str, lines: list[str], full_text: str) -> tuple[str, str, str] | None:
    if (lang or "").lower() in CYR_LANGS:
        return None

    total_cyr, total_lat = line_script_counts(full_text)
    if total_cyr < 18 or total_lat < 18:
        return None

    non_empty_idx = [i for i, line in enumerate(lines) if line.strip()]
    if len(non_empty_idx) < 8:
        return None

    best_idx = -1
    best_score = -10**9
    for i in range(3, len(lines) - 3):
        head_lines = [x for x in lines[:i] if x.strip()]
        tail_lines = [x for x in lines[i:] if x.strip()]
        if len(head_lines) < 3 or len(tail_lines) < 3:
            continue

        head_types = [line_script_type(x) for x in head_lines]
        tail_types = [line_script_type(x) for x in tail_lines]

        head_lat = sum(1 for x in head_types if x == "lat")
        head_cyr = sum(1 for x in head_types if x == "cyr")
        tail_lat = sum(1 for x in tail_types if x == "lat")
        tail_cyr = sum(1 for x in tail_types if x == "cyr")

        if head_lat < 2 or tail_cyr < 2:
            continue
        if head_lat < head_cyr * 2:
            continue
        if tail_cyr < int(tail_lat * 1.6):
            continue

        head_block = "\n".join(head_lines)
        tail_block = "\n".join(tail_lines)
        if lat_word_count(head_block) < 10:
            continue
        if cyr_word_count(tail_block) < 10:
            continue
        if not is_probably_ru_translation_block(tail_block):
            continue

        score = (head_lat * 5 + tail_cyr * 7) - (head_cyr * 8 + tail_lat * 4)
        if score > best_score:
            best_score = score
            best_idx = i

    if best_idx == -1:
        return None

    left_lines, right_lines = rebalance_leading_cyr_from_main(lines[:best_idx], drop_translation_heading(lines[best_idx:]))
    left = normalize_block(left_lines)
    right = normalize_block(right_lines)
    if not left or not right:
        return None
    if len(left) < 50 or len(right) < 50:
        return None
    if not is_probably_ru_translation_block(right):
        return None
    return left, right, "split_by_script"


def split_short_bilingual_script(lines: list[str], full_text: str) -> tuple[str, str, str] | None:
    non_empty = [line.strip() for line in lines if line.strip()]
    if len(non_empty) < 2 or len(non_empty) > 10:
        return None

    total_cyr, total_lat = line_script_counts(full_text)
    if total_cyr < 12 or total_lat < 12:
        return None

    best: tuple[str, str] | None = None
    best_score = -10**9
    for i in range(1, len(non_empty)):
        head_lines = non_empty[:i]
        tail_lines = non_empty[i:]
        if not head_lines or not tail_lines:
            continue
        head = "\n".join(head_lines)
        tail = "\n".join(tail_lines)
        h_cyr, h_lat = line_script_counts(head)
        t_cyr, t_lat = line_script_counts(tail)
        if h_lat < 10 or t_cyr < 10:
            continue
        if h_lat < int(h_cyr * 1.8):
            continue
        if t_cyr < int(t_lat * 1.8):
            continue
        if len(head) < 18 or len(tail) < 18:
            continue
        # For short blocks allow weak stopword signal, but keep cyr-dominance strict.
        if ru_signal_score(tail) < 1 and t_cyr < 24:
            continue
        score = (h_lat * 4 + t_cyr * 5) - (h_cyr * 6 + t_lat * 5)
        if score > best_score:
            best_score = score
            best = (normalize_block(head_lines), normalize_block(tail_lines))

    if not best:
        return None
    left, right = best
    if not left or not right:
        return None
    return left, right, "split_short_bilingual_script"


def split_lyrics_for_verified_translation(lang: str, lyrics: str) -> tuple[str, str, str] | None:
    text = normalize_newlines(lyrics).strip()
    if not text:
        return None
    lines = text.split("\n")

    marker_split = split_by_marker(lines)
    if marker_split:
        return marker_split

    short_split = split_short_bilingual_script(lines, text)
    if short_split:
        return short_split

    return split_by_script(lang, lines, text)


def sql_str(value: str) -> str:
    return "'" + norm(value).replace("'", "''") + "'"


def load_rows(path: Path) -> list[SongRow]:
    sql = path.read_text(encoding="utf-8", errors="replace")
    conn = sqlite3.connect(":memory:")
    conn.executescript(sql)
    cols = conn.execute("PRAGMA table_info(songs)").fetchall()
    colset = {str(row[1] or "").strip().lower() for row in cols}
    verified_col = "coalesce(verified_translation,'')" if "verified_translation" in colset else "''"
    rows = conn.execute(
        f"""
        SELECT
          id,
          lower(trim(coalesce(lang,''))),
          coalesce(title,''),
          coalesce(lyrics,''),
          {verified_col},
          lower(trim(coalesce(status,'published')))
        FROM songs
        """
    ).fetchall()
    conn.close()
    return [SongRow(*row) for row in rows]


def preview(text: str, lines: int = 4) -> str:
    parts = [x.strip() for x in normalize_newlines(text).split("\n") if x.strip()]
    return " / ".join(parts[:lines])[:420]


def main() -> None:
    parser = argparse.ArgumentParser(description="Pilot extractor for verified Russian translation from bilingual lyrics.")
    parser.add_argument("--export-sql", default=str(EXPORT_SQL))
    parser.add_argument("--sample-size", type=int, default=150)
    parser.add_argument("--seed", type=int, default=42)
    parser.add_argument("--out-sql", default=str(OUT_SQL))
    parser.add_argument("--out-report", default=str(OUT_REPORT))
    args = parser.parse_args()

    export_path = Path(args.export_sql)
    rows = load_rows(export_path)

    eligible: list[SongRow] = []
    reasons = Counter()
    for row in rows:
        if row.status != "published":
            continue
        if not norm(row.lyrics).strip():
            continue
        if norm(row.verified_translation).strip():
            continue
        cyr, lat = line_script_counts(row.lyrics)
        if cyr < 20 or lat < 20:
            continue
        eligible.append(row)

    rng = random.Random(args.seed)
    sample = list(eligible)
    if args.sample_size and len(sample) > args.sample_size:
        sample = rng.sample(sample, args.sample_size)

    updates: list[str] = []
    changed = 0
    examples: list[dict] = []
    for row in sample:
        split = split_lyrics_for_verified_translation(row.lang, row.lyrics)
        if not split:
            continue
        main_lyrics, verified_translation, reason = split
        reasons[reason] += 1
        updates.append(
            "UPDATE songs SET "
            + f"lyrics={sql_str(main_lyrics)}, verified_translation={sql_str(verified_translation)}, updated_at=datetime('now') "
            + f"WHERE id={sql_str(row.id)};"
        )
        changed += 1
        if len(examples) < 30:
            examples.append(
                {
                    "id": row.id,
                    "lang": row.lang,
                    "title": row.title,
                    "reason": reason,
                    "orig_preview": preview(row.lyrics),
                    "main_preview": preview(main_lyrics),
                    "verified_preview": preview(verified_translation),
                }
            )

    out_sql = Path(args.out_sql)
    out_report = Path(args.out_report)
    out_report.parent.mkdir(parents=True, exist_ok=True)
    out_sql.write_text("\n".join(["-- generated by pilot_extract_verified_translation.py", *updates, ""]), encoding="utf-8")
    report = {
        "eligible": len(eligible),
        "sample": len(sample),
        "changed": changed,
        "reason_counts": dict(reasons),
        "out_sql": str(out_sql),
        "examples": examples,
    }
    out_report.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"eligible": len(eligible), "sample": len(sample), "changed": changed, "out_sql": str(out_sql), "out_report": str(out_report)}, ensure_ascii=False))


if __name__ == "__main__":
    raise SystemExit("This script is disabled: verified_translation may only be set manually by an administrator.")
