from __future__ import annotations

import argparse
import json
import random
import re
import sqlite3
import subprocess
import sys
import unicodedata
from collections import Counter, defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, Any

ROOT = Path(__file__).resolve().parent.parent
EXPORT_SQL = ROOT / "tmp_songs_export.sql"
UPDATE_SQL = ROOT / "tmp_repair_existing_songs.sql"
REPORT_JSON = ROOT / "out" / "repair_existing_songs_report.json"
REVIEW_JSONL = ROOT / "out" / "repair_existing_songs_review.jsonl"
AMBIGUOUS_REVIEW_JSONL = ROOT / "out" / "repair_existing_songs_ambiguous_review.jsonl"

STRUCTURE_VERSION = 2
YEAR_MIN = 1600
YEAR_MAX = 2026
MAX_REVIEW_EXAMPLES = 250

INVISIBLE_RE = re.compile(r"[\ufeff\u200b\u200c\u200d\u2060]")
WS_RE = re.compile(r"[ \t]+")
WORD_RE = re.compile(r"[0-9A-Za-z\u00C0-\u024F\u0370-\u03ff\u0400-\u052f\u1E00-\u1EFF']+")
YEAR_RE = re.compile(r"\b(1[6-9]\d{2}|20\d{2})\b")
YEAR_RANGE_RE = re.compile(r"\b(1[6-9]\d{2}|20\d{2})\s*[-–—]\s*(1[6-9]\d{2}|20\d{2})\b")
LIFESPAN_RE = re.compile(r"\b(1[6-9]\d{2}|20\d{2})\s*[-–—]\s*(1[6-9]\d{2}|20\d{2})\b")
URL_RE = re.compile(r"https?://|www\.|\b[a-z0-9.-]+\.(?:com|org|net|ru|ua|ee|pl|de|fi|fr|it|es|lt|lv|cz|sk|si|hr|rs|by|kz|uz)\b", re.IGNORECASE)
IMPORT_META_RE = re.compile(r"^\s*(?:date|message_id|import_source|added|updated|merged_versions)\s*:", re.IGNORECASE)
HTML_ENTITY_RE = re.compile(r"&(?:nbsp|amp|quot|apos|lt|gt|laquo|raquo|rsquo|lsquo|ldquo|rdquo);", re.IGNORECASE)

# Guitar chords. H is included for Central and Eastern European notation, but the detector requires chord-heavy lines.
CHORD_ROOT = r"(?:[A-GH]|Do|Re|Mi|Fa|Sol|La|Si)"
CHORD_QUALITY = r"(?:maj|min|m|M|dim|aug|sus|add|º|°)?"
CHORD_EXT = r"(?:[-+]?\d+(?:/\d+)?|maj\d+|sus\d+)?"
CHORD_BASS = rf"(?:/{CHORD_ROOT}(?:#|b)?)?"
CHORD_TOKEN_RE = re.compile(rf"^\(?{CHORD_ROOT}(?:#|b)?{CHORD_QUALITY}{CHORD_EXT}{CHORD_BASS}\)?$", re.IGNORECASE)
BRACKET_CHORD_RE = re.compile(rf"\[(?:{CHORD_ROOT})(?:#|b)?{CHORD_QUALITY}{CHORD_EXT}{CHORD_BASS}\]", re.IGNORECASE)
TAB_LINE_RE = re.compile(r"^\s*(?:[eBGDAE]|[1-6])\|[-0-9hpsx/\\| ]{6,}\s*$", re.IGNORECASE)
DIGIT_TAB_RE = re.compile(r"^\s*[1-6]\s+[-0-9hpsx/\\ ]{8,}\s*$", re.IGNORECASE)
CHORD_HEADER_RE = re.compile(
    r"^\s*(?:"
    r"аккорды|акорди|chords?|tabs?|tablature|tablatura|acordes?|accordi|akkorde|akordy|chwyty"
    r")\b(?:\s*(?:[:：*]|\[[^\]]{0,40}\]|\([^)]{0,80}\)|[-–—]\s*\S.*|\S{1,30}))*\s*[:：*]?\s*$",
    re.IGNORECASE,
)
TONALITY_RE = re.compile(
    r"\b(?:"
    r"тональност[ьиі]|зміна\s+тональності|у\s+тональності|"
    r"key|tonality|transpose|transposition|tonalidad|tonalit[aà]|tonacja"
    r")\b",
    re.IGNORECASE,
)
CAPO_RE = re.compile(r"\b(?:capo|каподастр|капо|cejilla|kapodaster)\b", re.IGNORECASE)
BARRE_RE = re.compile(r"\b(?:barre|баре|barr[eè])\b", re.IGNORECASE)
PICKING_RE = re.compile(r"\b(?:переб[іио]р|picking|strumming|riff)\b", re.IGNORECASE)
GUITAR_VERB_RE = re.compile(r"\b(?:акорд[иы]?|chords?|tabs?|грати|сыграть|зіграти|играть|play)\b", re.IGNORECASE)
CHORD_SUBSTITUTION_RE = re.compile(r"\b(?:зам[іе]сть|instead\s+of|rather\s+than)\b", re.IGNORECASE)
GUITAR_ANCHOR_RE = re.compile(
    r"(?:"
    r"аккорды|акорди|тональност[ьиі]|зміна\s+тональності|каподастр|капо|баре|переб[іио]р|"
    r"chords?|tabs?|tablature|tablatura|capo|transpose|transposition|barre|riff|"
    r"acordes?|accordi|akkorde|akordy|chwyty|tonalidad|tonalit[aà]|tonacja"
    r")",
    re.IGNORECASE,
)

# Labels that are allowed to be extracted out of lyrics. Keep this strict: ambiguous ordinary lyric lines must stay in lyrics.
LABEL_ALIASES: list[tuple[str, re.Pattern[str]]] = [
    ("words_author", re.compile(r"^\s*(?:слова|текст|автор\s+слов|автор\s+текста|lyrics(?:\s+by)?|words(?:\s+by)?|text(?:\s+by)?|słowa|slowa|tekst|teksti|sanat|paroles|letra|letras)\s*[:：\-–—]\s*(.+?)\s*$", re.IGNORECASE)),
    ("music_author", re.compile(r"^\s*(?:музыка|муз\.|композитор|автор\s+музыки|music(?:\s+by)?|composed\s+by|composer|muzyka|melodia|melody|viis|sävel|música|musica)\s*[:：\-–—]\s*(.+?)\s*$", re.IGNORECASE)),
    ("translator", re.compile(r"^\s*(?:перевод|переклад|перевёл|перевел|перевела|translation(?:\s+by)?|translated\s+by|translator|tłumaczenie|tlumaczenie|tłumacz|tlumacz|przekład|przeklad|übersetzung|uebersetzung|traduction)\s*[:：\-–—]\s*(.+?)\s*$", re.IGNORECASE)),
    ("performer", re.compile(r"^\s*(?:исполняет|исполнитель|исп\.|singer|performed\s+by|performer|esitab|esittäjä|wykonuje|wykonawca|interprète|interprete)\s*[:：\-–—]\s*(.+?)\s*$", re.IGNORECASE)),
    ("source", re.compile(r"^\s*(?:источник|джерело|source|quelle|źródło|zrodlo|allikas|lähde|fuente|fonte)\s*[:：\-–—]\s*(.+?)\s*$", re.IGNORECASE)),
    ("notes", re.compile(r"^\s*(?:примечание|прим\.|комментарий|comment|note|notes|märkus|uwaga)\s*[:：\-–—]\s*(.+?)\s*$", re.IGNORECASE)),
]

YEAR_CONTEXTS: list[tuple[str, int, re.Pattern[str]]] = [
    ("year_written", 95, re.compile(r"(?:написан|написана|написано|сочинен|сочинена|создан|создана|created|written|composed|złożon|ułożon|powstał|powstala|powstała|loodud|kirjutatud|scritto|escrito)", re.IGNORECASE)),
    ("year_recorded", 88, re.compile(r"(?:записан|записана|записано|recorded|recording|nagran|salvestatud|äänitetty)", re.IGNORECASE)),
    ("year_published", 82, re.compile(r"(?:опублик|издан|издана|издано|напечатан|published|edition|wydan|wydanie|avaldatud|julkaistu|edito|publié|publie)", re.IGNORECASE)),
    ("year_event", 62, re.compile(r"(?:войн|war|revolution|революц|восстан|powstani|wojna|front|битв|battle|kampaania)", re.IGNORECASE)),
]
WEAK_YEAR_CONTEXT_RE = re.compile(r"(?:год|г\.|year|anno|rok|roku|aastal|vuonna)", re.IGNORECASE)
BAD_YEAR_CONTEXT_RE = re.compile(r"(?:род\.|родился|родилась|умер|умерла|born|died|г\.\s*р\.|р\.\s*\d{4}|date:|message_id|import_source|добавлен|updated|added|isbn|выпуск|issue|vol\.|том)", re.IGNORECASE)

SECTION_MARKERS: list[tuple[str, re.Pattern[str]]] = [
    ("chorus", re.compile(r"^\s*(?:\[|\()?\s*(?:припев|приспів|прыпеў|refrain|chorus|refr\.?|refren|refrein|refrään|kertosäe|koor|priedainis|priedėlis|refrão|estribillo|ritornello)\s*(?:\]|\))?\s*(?::|：|\.|-|–|—)?\s*(.*)$", re.IGNORECASE)),
    ("verse", re.compile(r"^\s*(?:\[|\()?\s*(?:куплет|строфа|verse|strophe|strofa|zwrotka|salm|säkeistö)\s*\d*\s*(?:\]|\))?\s*(?::|：|\.|-|–|—)?\s*(.*)$", re.IGNORECASE)),
    ("bridge", re.compile(r"^\s*(?:bridge|бридж|middle\s+eight)\s*(?::|：|\.|-|–|—)?\s*(.*)$", re.IGNORECASE)),
    ("intro", re.compile(r"^\s*(?:intro|вступление|вступ|інтро|prolog)\s*(?::|：|\.|-|–|—)?\s*(.*)$", re.IGNORECASE)),
    ("outro", re.compile(r"^\s*(?:outro|ending|финал|заключение|закінчення)\s*(?::|：|\.|-|–|—)?\s*(.*)$", re.IGNORECASE)),
]
REPEAT_ONLY_RE = re.compile(r"^\s*(?:\(?\s*)?(?:x|×|х)\s*\d+\s*\)?\s*$|^\s*(?:2\s*(?:раза|рази|times|korda)|bis)\s*$", re.IGNORECASE)
LINE_REPEAT_SUFFIX_RE = re.compile(r"\s*(?:\(|\[)?(?:x|×|х)\s*\d+|\s+bis\s*$", re.IGNORECASE)

NON_SONG_LINE_RE = re.compile(r"^\s*(?:содержание|оглавление|предисловие|послесловие|от\s+составителя|wikipedia|см\.\s*также|see\s+also)\b", re.IGNORECASE)

@dataclass
class TextRow:
    table: str
    id: str
    song_id: str
    title: str
    subtitle: str
    lang: str
    country: str
    period: str
    year: str
    source: str
    notes: str
    lyrics: str
    verified_translation: str
    lyrics_meta_json: str
    sort_order: int = 0


def norm_text(value: str | None) -> str:
    text = str(value or "")
    text = unicodedata.normalize("NFC", text)
    text = INVISIBLE_RE.sub("", text)
    return text


def normalize_newlines(text: str | None) -> str:
    return norm_text(text).replace("\r\n", "\n").replace("\r", "\n")


def normalize_line(line: str) -> str:
    line = HTML_ENTITY_RE.sub(lambda m: {"&nbsp;": " ", "&amp;": "&", "&quot;": '"', "&apos;": "'", "&lt;": "<", "&gt;": ">", "&laquo;": "«", "&raquo;": "»", "&rsquo;": "’", "&lsquo;": "‘", "&ldquo;": "“", "&rdquo;": "”"}.get(m.group(0).lower(), m.group(0)), line)
    line = WS_RE.sub(" ", line).strip()
    return line


def normalize_multiline(text: str | None) -> str:
    raw = normalize_newlines(text)
    out: list[str] = []
    for line in raw.split("\n"):
        cleaned = normalize_line(line)
        if cleaned:
            out.append(cleaned)
        elif out and out[-1] != "":
            out.append("")
    while out and out[0] == "":
        out.pop(0)
    while out and out[-1] == "":
        out.pop()
    return "\n".join(out)


def tokenize(text: str) -> list[str]:
    return [m.group(0).lower() for m in WORD_RE.finditer(norm_text(text))]


def sql_str(value: Any) -> str:
    return "'" + str(value or "").replace("'", "''") + "'"


def run_cmd(cmd: list[str], timeout_ms: int = 420000) -> None:
    try:
        subprocess.run(cmd, cwd=ROOT, check=True, timeout=timeout_ms / 1000)
    except FileNotFoundError:
        subprocess.run(subprocess.list2cmdline(cmd), cwd=ROOT, shell=True, check=True, timeout=timeout_ms / 1000)


def ensure_export(db_name: str, refresh: bool, full_export: bool) -> None:
    if EXPORT_SQL.exists() and not refresh:
        return
    cmd = ["npx", "wrangler", "d1", "export", db_name, "--remote", "--output", str(EXPORT_SQL)]
    # Default to the songs table: this project has an FTS virtual table, and full D1 export can fail on virtual tables.
    # If tmp_songs_export.sql already contains song_versions, they are processed automatically.
    if not full_export:
        cmd.extend(["--table", "songs"])
    run_cmd(cmd)


def table_exists(conn: sqlite3.Connection, name: str) -> bool:
    row = conn.execute("SELECT 1 FROM sqlite_master WHERE type IN ('table','virtual table') AND name=?", (name,)).fetchone()
    return bool(row)


def col_exists(conn: sqlite3.Connection, table: str, col: str) -> bool:
    try:
        cols = [str(row[1]).lower() for row in conn.execute(f"PRAGMA table_info({table})").fetchall()]
    except sqlite3.Error:
        return False
    return col.lower() in cols


def load_rows_from_export(path: Path, include_versions: bool = True) -> list[TextRow]:
    sql = path.read_text(encoding="utf-8", errors="replace")
    conn = sqlite3.connect(":memory:")
    conn.executescript(sql)
    rows: list[TextRow] = []
    if table_exists(conn, "songs"):
        for row in conn.execute(
            """
            SELECT id, coalesce(title,''), coalesce(subtitle,''), lower(trim(coalesce(lang,''))),
                   lower(trim(coalesce(country,''))), coalesce(period,''), coalesce(year,''),
                   coalesce(source,''), coalesce(notes,''), coalesce(lyrics,''),
                   coalesce(verified_translation,''), coalesce(lyrics_meta_json,'{}')
            FROM songs
            """
        ).fetchall():
            rows.append(TextRow("songs", row[0], row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11]))
    if include_versions and table_exists(conn, "song_versions"):
        # Version rows inherit country/year/period from the parent song only for review context.
        for row in conn.execute(
            """
            SELECT v.id, v.song_id, coalesce(v.title,''), coalesce(s.title,''), coalesce(s.subtitle,''),
                   lower(trim(coalesce(v.lang, s.lang, ''))), lower(trim(coalesce(s.country,''))),
                   coalesce(s.period,''), coalesce(s.year,''), coalesce(v.source, s.source, ''),
                   coalesce(s.notes,''), coalesce(v.lyrics,''), coalesce(v.lyrics_meta_json,'{}'), coalesce(v.sort_order,0)
            FROM song_versions v
            LEFT JOIN songs s ON s.id = v.song_id
            """
        ).fetchall():
            title = row[2] or row[3]
            rows.append(TextRow("song_versions", row[0], row[1], title, row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], "", row[12], int(row[13] or 0)))
    conn.close()
    return rows


def safe_json_loads(raw: str | None) -> dict[str, Any]:
    try:
        value = json.loads(raw or "{}")
        return value if isinstance(value, dict) else {}
    except Exception:
        return {}


def is_chordish_line(line: str) -> bool:
    s = normalize_line(line)
    if not s:
        return False
    if TAB_LINE_RE.match(s) or DIGIT_TAB_RE.match(s) or CHORD_HEADER_RE.match(s):
        return True
    if is_guitar_instruction_line(s):
        return True
    if is_single_chord_line(s):
        return True
    parts = [p for p in re.split(r"[\s|,;:/\\]+", s.replace("-", " ")) if p]
    if len(parts) < 2:
        return False
    chord_hits = sum(chord_token_weight(p.strip("()[]{}")) for p in parts)
    if chord_hits < 2:
        return False
    words = tokenize(s)
    # Avoid deleting normal short lines like "A my..."; require chord dominance.
    return chord_hits / max(1, len(parts)) >= 0.75 and chord_hits >= max(2, len(words) - 1)


def chord_token_weight(token: str) -> int:
    bare = token.strip("()[]{}").strip()
    if bare.lower() in {"do", "re", "mi", "fa", "sol", "la", "si"}:
        return 0
    if bare and bare[0].islower():
        return 0
    if CHORD_TOKEN_RE.match(token):
        return 1
    # Imported chord sheets sometimes merge adjacent chords without a separator: C7A7, DmG7.
    compact = re.sub(r"[^A-Ha-h#b0-9mM+/()-]", "", token).strip("()")
    if len(compact) < 4 or len(compact) > 14:
        return 0
    if compact.islower():
        return 0
    if sum(1 for ch in compact if ch in "ABCDEFGH") < 2:
        return 0
    if not re.search(r"(?:[#b0-9m/]|maj|min|dim|aug|sus|add)", compact):
        return 0
    hits = re.findall(r"(?:[A-H](?:#|b)?(?:maj|min|dim|aug|sus|add|m|M)?(?:[-+]?\d+(?:/\d+)?)?(?:/[A-H](?:#|b)?)?)", compact)
    joined = "".join(hits)
    return len(hits) if len(hits) >= 2 and joined == compact else 0


def line_has_embedded_chord_tokens(line: str) -> bool:
    parts = [p.strip("()[]{}.,;:!?") for p in re.split(r"[\s|,;:/\\-вЂ“вЂ”]+", normalize_line(line)) if p.strip()]
    weights = [chord_token_weight(part) for part in parts]
    if sum(weights) >= 2:
        return True
    return any(weight and re.search(r"(?:#|b|\d|maj|min|dim|aug|sus|add|/|m|M)", part) for part, weight in zip(parts, weights))


def is_guitar_instruction_line(line: str) -> bool:
    s = normalize_line(line)
    if not s:
        return False
    if TONALITY_RE.search(s):
        words = tokenize(s)
        return bool(
            len(words) <= 8
            or GUITAR_VERB_RE.search(s)
            or line_has_embedded_chord_tokens(s)
            or re.search(r"\bkey\s+of\b", s, re.IGNORECASE)
            or ":" in s
        )
    words = tokenize(s)
    if re.search(r"\bda capo\b", s, re.IGNORECASE):
        return False
    if re.search(r"\bбаре\b", s, re.IGNORECASE) and not re.search(r"\bbarre\b", s, re.IGNORECASE):
        return False
    if CAPO_RE.search(s):
        return len(words) <= 18 or GUITAR_VERB_RE.search(s) or line_has_embedded_chord_tokens(s)
    if BARRE_RE.search(s):
        return bool(GUITAR_VERB_RE.search(s) or line_has_embedded_chord_tokens(s) or (re.match(r"^\s*(?:barre|барр?е)\b", s, re.IGNORECASE) and len(words) <= 6))
    if PICKING_RE.search(s):
        if GUITAR_VERB_RE.search(s) or line_has_embedded_chord_tokens(s):
            return True
        if re.match(r"^\s*(?:РїРµСЂРµР±[С–РёРѕ]СЂ|picking|strumming|riff)\b", s, re.IGNORECASE):
            return len(words) <= 8
        return False
    if CHORD_SUBSTITUTION_RE.search(s):
        parts = [p.strip("()[]{}.,;:") for p in re.split(r"[\s|,;:/\\-–—]+", s) if p.strip()]
        if sum(chord_token_weight(part) for part in parts) >= 1:
            return True
    return False


def is_single_chord_line(line: str) -> bool:
    token = normalize_line(line).strip("()[]{}")
    if not token or any(ch.isspace() for ch in token):
        return False
    if token.lower() in {"do", "re", "mi", "fa", "sol", "la", "si"}:
        return False
    if token.islower():
        return False
    if not CHORD_TOKEN_RE.match(token):
        return False
    return bool(re.search(r"(?:#|b|\d|maj|min|dim|aug|sus|add|m|M)", token))


def row_has_garbage_anchor(row: TextRow) -> bool:
    scope = "\n".join([row.title, row.subtitle, row.source, row.notes, row.lyrics, row.verified_translation])
    if GUITAR_ANCHOR_RE.search(scope) or BRACKET_CHORD_RE.search(scope):
        return True
    return any(is_chordish_line(line) for line in normalize_newlines(row.lyrics).splitlines())


def remove_inline_chords(line: str) -> tuple[str, list[str]]:
    removed = BRACKET_CHORD_RE.findall(line)
    if not removed:
        return line, []
    cleaned = BRACKET_CHORD_RE.sub("", line)
    cleaned = WS_RE.sub(" ", cleaned).strip()
    return cleaned, list(removed)


def split_label_line(line: str) -> tuple[str | None, str | None]:
    for key, pattern in LABEL_ALIASES:
        match = pattern.match(line)
        if match:
            value = normalize_line(match.group(1)).strip(" .;,")
            if value:
                return key, value
    return None, None


def classify_year_line(line: str) -> list[dict[str, Any]]:
    s = normalize_line(line)
    if not s or BAD_YEAR_CONTEXT_RE.search(s) or LIFESPAN_RE.search(s):
        return []
    years = [int(m.group(1)) for m in YEAR_RE.finditer(s) if YEAR_MIN <= int(m.group(1)) <= YEAR_MAX]
    if not years:
        return []
    out: list[dict[str, Any]] = []
    for field, conf, ctx_re in YEAR_CONTEXTS:
        if ctx_re.search(s):
            for year in years[:3]:
                out.append({"field": field, "value": year, "confidence": conf, "line": s})
            return out
    if WEAK_YEAR_CONTEXT_RE.search(s) and len(years) == 1:
        out.append({"field": "year_mentioned", "value": years[0], "confidence": 45, "line": s})
    return out


def detect_section_marker(line: str) -> tuple[str | None, str, str] | None:
    s = normalize_line(line)
    for section_type, pattern in SECTION_MARKERS:
        match = pattern.match(s)
        if not match:
            continue
        tail = normalize_line(match.group(1) or "")
        label = s[: max(0, len(s) - len(match.group(1) or ""))].strip()
        return section_type, label, tail
    return None


def section_key(text: str) -> str:
    body = " ".join(tokenize(text))
    return body[:240]


def parse_sections(clean_lines: list[str]) -> list[dict[str, Any]]:
    sections: list[dict[str, Any]] = []
    current: dict[str, Any] | None = None
    chorus_registry: dict[str, str] = {}
    last_chorus_id: str | None = None

    def close_current(end_index: int) -> None:
        nonlocal current, last_chorus_id
        if not current:
            return
        lines = current.pop("_lines")
        text = "\n".join([line for line in lines if line.strip()]).strip()
        current["end_line"] = max(current["start_line"], end_index)
        current["text"] = text
        if current["type"] == "chorus":
            key = section_key(text)
            if text and key in chorus_registry:
                current["duplicate_of"] = chorus_registry[key]
            elif text:
                chorus_registry[key] = current["id"]
                last_chorus_id = current["id"]
            elif last_chorus_id:
                current["repeat_of"] = last_chorus_id
        sections.append(current)
        current = None

    for idx, line in enumerate(clean_lines):
        marker = detect_section_marker(line)
        if marker:
            close_current(idx - 1)
            section_type, label, tail = marker
            section_id = f"{section_type}_{sum(1 for item in sections if item.get('type') == section_type) + 1}"
            current = {"id": section_id, "type": section_type, "label": label or section_type, "start_line": idx, "_lines": []}
            if tail and not REPEAT_ONLY_RE.match(tail):
                current["_lines"].append(tail)
            elif section_type == "chorus" and last_chorus_id:
                current["repeat_of"] = last_chorus_id
            continue
        if current is not None:
            if not line.strip():
                close_current(idx - 1)
                continue
            current["_lines"].append(line)
    close_current(len(clean_lines) - 1)
    return sections


def add_unique(target: list[Any], value: Any) -> None:
    if value in target:
        return
    target.append(value)


def analyze_text(row: TextRow) -> dict[str, Any]:
    original = normalize_multiline(row.lyrics)
    lines = original.split("\n") if original else []

    extracted: dict[str, Any] = {
        "structure_version": STRUCTURE_VERSION,
        "row_type": row.table,
        "song_id": row.song_id,
        "source_row_id": row.id,
        "words_author": [],
        "music_author": [],
        "translator": [],
        "performer": [],
        "year_written": [],
        "year_published": [],
        "year_recorded": [],
        "year_event": [],
        "year_mentioned": [],
        "sections": [],
        "removed_chords": [],
        "removed_metadata_lines": [],
        "removed_source_lines": [],
        "removed_import_meta_lines": [],
        "removed_non_song_lines": [],
        "inline_chords": [],
        "warnings": [],
        "review_flags": [],
    }

    clean_lines: list[str] = []
    in_chord_block = False
    in_tail_chord_block = False
    metadata_hits = 0
    chord_hits = 0
    source_hits = 0
    content_lines_seen = 0

    for raw_line in lines:
        line = normalize_line(raw_line)
        if not line:
            if clean_lines and clean_lines[-1] != "":
                clean_lines.append("")
            if not in_tail_chord_block:
                in_chord_block = False
            continue

        if in_tail_chord_block:
            if not (is_chordish_line(line) or is_guitar_instruction_line(line)):
                add_unique(extracted.setdefault("ambiguous_cleanup_lines", []), {"line": line, "reason": "chord_tail_block"})
                add_unique(extracted["warnings"], "ambiguous_cleanup_needs_manual_review")
                clean_lines.append(line)
                content_lines_seen += 1
                in_tail_chord_block = False
                in_chord_block = False
                continue
            add_unique(extracted["removed_chords"], {"line": line, "reason": "chord_tail_block"})
            chord_hits += 1
            continue

        if IMPORT_META_RE.match(line):
            add_unique(extracted["removed_import_meta_lines"], line)
            continue

        if NON_SONG_LINE_RE.search(line):
            add_unique(extracted["removed_non_song_lines"], line)
            continue

        label_key, label_value = split_label_line(line)
        if label_key:
            metadata_hits += 1
            if label_key in {"source", "notes"}:
                add_unique(extracted["removed_source_lines" if label_key == "source" else "removed_metadata_lines"], line)
            else:
                add_unique(extracted[label_key], label_value)
                add_unique(extracted["removed_metadata_lines"], line)
            # A label line should not remain in clean lyrics.
            continue

        year_items = classify_year_line(line)
        if year_items:
            # Only remove explicit bibliographic/historical metadata lines; ordinary lyrics with a year stay.
            removable = any(item["confidence"] >= 80 for item in year_items) and len(tokenize(line)) <= 16
            for item in year_items:
                add_unique(extracted[item["field"]], {"value": item["value"], "confidence": item["confidence"], "line": item["line"]})
            if removable:
                add_unique(extracted["removed_metadata_lines"], line)
                metadata_hits += 1
                continue

        if URL_RE.search(line):
            # Source URLs are metadata if the whole line is source-like. Keep poetic lines that merely contain punctuation.
            if len(tokenize(line)) <= 10 or re.search(r"(?:source|источник|джерело|quelle|źródło|allikas|lähde)", line, re.IGNORECASE):
                add_unique(extracted["removed_source_lines"], line)
                source_hits += 1
                continue

        if CHORD_HEADER_RE.match(line):
            header_words = tokenize(line)
            if len(header_words) > 10 or ((len(header_words) > 4 and ("," in line or "." in line)) and not any(sym in line for sym in ":([")):
                add_unique(extracted.setdefault("ambiguous_cleanup_lines", []), {"line": line, "reason": "chord_header"})
                add_unique(extracted["warnings"], "ambiguous_cleanup_needs_manual_review")
                clean_lines.append(line)
                content_lines_seen += 1
                continue
            in_chord_block = True
            # A chord-service section after real lyrics is an appended duplicate block.
            in_tail_chord_block = content_lines_seen >= 4
            add_unique(extracted["removed_chords"], {"line": line, "reason": "chord_header"})
            chord_hits += 1
            continue
        if in_chord_block and (is_chordish_line(line) or is_guitar_instruction_line(line)):
            add_unique(extracted["removed_chords"], {"line": line, "reason": "chord_block"})
            chord_hits += 1
            continue
        if is_guitar_instruction_line(line):
            if (PICKING_RE.search(line) and not GUITAR_VERB_RE.search(line) and not line_has_embedded_chord_tokens(line) and len(tokenize(line)) > 5) or (
                re.search(r"\bбаре\b", line, re.IGNORECASE) and not re.search(r"\bbarre\b", line, re.IGNORECASE)
            ):
                add_unique(extracted.setdefault("ambiguous_cleanup_lines", []), {"line": line, "reason": "guitar_instruction"})
                add_unique(extracted["warnings"], "ambiguous_cleanup_needs_manual_review")
                clean_lines.append(line)
                content_lines_seen += 1
                continue
            add_unique(extracted["removed_chords"], {"line": line, "reason": "guitar_instruction"})
            chord_hits += 1
            continue
        if is_chordish_line(line):
            add_unique(extracted["removed_chords"], {"line": line, "reason": "chord_line"})
            chord_hits += 1
            continue

        cleaned_line, inline_chords = remove_inline_chords(line)
        if inline_chords:
            extracted["inline_chords"].extend(inline_chords)
            line = cleaned_line
            if not line:
                continue

        clean_lines.append(line)
        content_lines_seen += 1

    while clean_lines and clean_lines[0] == "":
        clean_lines.pop(0)
    while clean_lines and clean_lines[-1] == "":
        clean_lines.pop()

    clean_lyrics = "\n".join(clean_lines).strip()
    sections = parse_sections(clean_lines)
    extracted["sections"] = sections

    if metadata_hits:
        add_unique(extracted["review_flags"], "metadata_extracted_from_lyrics")
    if chord_hits:
        add_unique(extracted["review_flags"], "chords_or_tabs_removed")
    if source_hits:
        add_unique(extracted["review_flags"], "source_url_extracted_from_lyrics")
    if len(sections) >= 1:
        add_unique(extracted["review_flags"], "sections_detected")
    if any(sec.get("type") == "chorus" for sec in sections):
        add_unique(extracted["review_flags"], "chorus_detected")
    if clean_lyrics and len(clean_lyrics) < max(20, int(len(original) * 0.35)):
        add_unique(extracted["warnings"], "clean_lyrics_much_shorter_than_original")
    if not clean_lyrics and original:
        add_unique(extracted["warnings"], "clean_lyrics_empty_after_extraction")

    # Compact empty fields out of metadata, but keep stable keys for important buckets.
    for key in list(extracted.keys()):
        if key in {"structure_version", "row_type", "song_id", "source_row_id"}:
            continue
        if extracted[key] in ([], {}, "", None):
            extracted.pop(key)

    return {
        "original_lyrics": original,
        "clean_lyrics": clean_lyrics,
        "extracted": extracted,
        "has_structure": any(k in extracted for k in ["words_author", "music_author", "translator", "performer", "year_written", "year_published", "year_recorded", "sections", "removed_chords", "removed_metadata_lines", "removed_source_lines", "removed_import_meta_lines"]),
    }


def merge_meta(raw_meta: str, extracted: dict[str, Any]) -> tuple[str, bool]:
    meta = safe_json_loads(raw_meta)
    before = json.dumps(meta, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    meta["song_structure_extractor"] = {
        "version": STRUCTURE_VERSION,
        "extracted": extracted,
    }
    after = json.dumps(meta, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    return json.dumps(meta, ensure_ascii=False, separators=(",", ":")), before != after


def is_section_only_extraction(extracted: dict[str, Any]) -> bool:
    keys = set(extracted.keys()) - {"structure_version", "row_type", "song_id", "source_row_id", "review_flags", "warnings", "sections"}
    return not keys and bool(extracted.get("sections"))


def strip_section_data(extracted: dict[str, Any]) -> dict[str, Any]:
    out = dict(extracted)
    out.pop("sections", None)
    flags = [flag for flag in out.get("review_flags", []) if flag not in {"sections_detected", "chorus_detected"}]
    if flags:
        out["review_flags"] = flags
    else:
        out.pop("review_flags", None)
    return out


def build_updates(rows: Iterable[TextRow], args: argparse.Namespace) -> tuple[list[str], dict[str, Any], list[dict[str, Any]], list[dict[str, Any]]]:
    updates: list[str] = []
    review_rows: list[dict[str, Any]] = []
    ambiguous_review_rows: list[dict[str, Any]] = []
    counters: Counter[str] = Counter()
    table_counters: Counter[str] = Counter()
    warning_counters: Counter[str] = Counter()
    flag_counters: Counter[str] = Counter()
    examples: list[dict[str, Any]] = []

    for row in rows:
        counters["total_rows"] += 1
        table_counters[row.table] += 1
        if args.song_id and row.song_id != args.song_id and row.id != args.song_id:
            continue
        if args.only_main and row.table != "songs":
            continue
        if args.only_versions and row.table != "song_versions":
            continue
        if args.anchor_garbage_only and not row_has_garbage_anchor(row):
            continue
        if args.anchor_garbage_only:
            counters["anchor_matched_rows"] += 1

        analysis = analyze_text(row)
        extracted = analysis["extracted"]
        clean_lyrics = analysis["clean_lyrics"]
        original_lyrics = analysis["original_lyrics"]
        has_structure = bool(analysis["has_structure"])
        if args.anchor_garbage_only:
            extracted = strip_section_data(extracted)
            has_structure = bool(
                set(extracted.keys()) - {"structure_version", "row_type", "song_id", "source_row_id", "warnings", "review_flags"}
            )
            anchor_action_keys = {
                "removed_chords",
                "removed_metadata_lines",
                "removed_source_lines",
                "removed_import_meta_lines",
                "words_author",
                "music_author",
                "translator",
                "performer",
            }
            if not any(key in extracted for key in anchor_action_keys | {"ambiguous_cleanup_lines"}):
                continue

        ambiguous_only = bool(extracted.get("ambiguous_cleanup_lines")) and not bool(
            set(extracted.keys()) - {"structure_version", "row_type", "song_id", "source_row_id", "warnings", "review_flags", "ambiguous_cleanup_lines"}
        )
        if extracted.get("warnings") and "ambiguous_cleanup_needs_manual_review" in extracted.get("warnings", []):
            counters["ambiguous_review_rows"] += 1
            ambiguous_review_rows.append(
                {
                    "table": row.table,
                    "id": row.id,
                    "song_id": row.song_id,
                    "title": row.title,
                    "lang": row.lang,
                    "country": row.country,
                    "year": row.year,
                    "flags": extracted.get("review_flags", []),
                    "warnings": extracted.get("warnings", []),
                    "removed_chords": extracted.get("removed_chords", []),
                    "ambiguous_cleanup_lines": extracted.get("ambiguous_cleanup_lines", []),
                    "old_lyrics_preview": original_lyrics[:700],
                }
            )
            continue
        if ambiguous_only:
            counters["ambiguous_review_rows"] += 1
            continue

        if not has_structure:
            continue
        if is_section_only_extraction(extracted):
            counters["skipped_section_only_rows"] += 1
            continue

        for warning in extracted.get("warnings", []):
            warning_counters[warning] += 1
        for flag in extracted.get("review_flags", []):
            flag_counters[flag] += 1
        if "sections" in extracted:
            counters["rows_with_sections"] += 1
            counters["sections_total"] += len(extracted["sections"])
            if any(sec.get("type") == "chorus" for sec in extracted["sections"]):
                counters["rows_with_chorus"] += 1
        for key in ["words_author", "music_author", "translator", "performer"]:
            if key in extracted:
                counters[f"rows_with_{key}"] += 1
        if "removed_chords" in extracted:
            counters["rows_with_chords"] += 1
        if "removed_metadata_lines" in extracted:
            counters["rows_with_metadata_lines"] += 1
        if "removed_source_lines" in extracted:
            counters["rows_with_source_lines"] += 1
        if any(key in extracted for key in ["year_written", "year_published", "year_recorded", "year_event", "year_mentioned"]):
            counters["rows_with_year_candidates"] += 1

        next_meta, meta_changed = merge_meta(row.lyrics_meta_json, extracted)
        lyrics_changed = args.include_clean_lyrics and clean_lyrics != original_lyrics and safe_to_update_lyrics(original_lyrics, clean_lyrics, extracted, args)

        set_parts: list[str] = []
        if meta_changed and not args.no_meta_update:
            set_parts.append(f"lyrics_meta_json={sql_str(next_meta)}")
        if lyrics_changed:
            set_parts.append(f"lyrics={sql_str(clean_lyrics)}")
        if row.table == "songs" and (set_parts and not args.no_updated_at):
            set_parts.append("updated_at=datetime('now')")

        if set_parts and not args.report_only:
            updates.append(f"UPDATE {row.table} SET " + ", ".join(set_parts) + f" WHERE id={sql_str(row.id)};")
            if row.table == "songs" and lyrics_changed:
                updates.append(f"INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ({sql_str(row.id)},{sql_str(row.title)},{sql_str(clean_lyrics)});")

        counters["candidate_rows"] += 1
        if meta_changed:
            counters["meta_changed"] += 1
        if lyrics_changed:
            counters["lyrics_changed"] += 1

        review_item = {
            "table": row.table,
            "id": row.id,
            "song_id": row.song_id,
            "title": row.title,
            "lang": row.lang,
            "country": row.country,
            "year": row.year,
            "flags": extracted.get("review_flags", []),
            "warnings": extracted.get("warnings", []),
            "extracted": extracted,
            "old_lyrics_preview": original_lyrics[:700],
            "clean_lyrics_preview": clean_lyrics[:700],
            "lyrics_changed_candidate": clean_lyrics != original_lyrics,
            "lyrics_changed_in_sql": lyrics_changed,
        }
        review_rows.append(review_item)
        if len(examples) < MAX_REVIEW_EXAMPLES:
            examples.append(review_item)

        if args.limit and counters["candidate_rows"] >= args.limit:
            break

    report = {
        "mode": "report_only" if args.report_only else "sql_generated",
        "update_sql": str(UPDATE_SQL),
        "review_jsonl": str(REVIEW_JSONL),
        "ambiguous_review_jsonl": str(AMBIGUOUS_REVIEW_JSONL),
        "export_sql": str(EXPORT_SQL),
        "structure_version": STRUCTURE_VERSION,
        "counts": dict(counters),
        "table_counts": dict(table_counters),
        "flag_counts": dict(flag_counters),
        "warning_counts": dict(warning_counters),
        "update_statements": len(updates),
        "examples": examples,
        "notes": [
            "Default mode updates lyrics_meta_json only. Clean lyrics are not written unless --include-clean-lyrics is passed.",
            "Song versions are processed when the export contains song_versions.",
            "No confidence data in draft_line_variants is modified by this script.",
        ],
    }
    return updates, report, review_rows, ambiguous_review_rows


def safe_to_update_lyrics(original: str, clean: str, extracted: dict[str, Any], args: argparse.Namespace) -> bool:
    if not original.strip() or not clean.strip():
        return False
    if "clean_lyrics_empty_after_extraction" in extracted.get("warnings", []):
        return False
    removed_ratio = 1.0 - (len(clean) / max(1, len(original)))
    # Do not auto-clean if only sections were detected; markers are structural, not garbage.
    flags = set(extracted.get("review_flags", []))
    destructive_flags = {"metadata_extracted_from_lyrics", "chords_or_tabs_removed", "source_url_extracted_from_lyrics"}
    if "chords_or_tabs_removed" in flags and clean.strip() and len(clean) >= 160:
        return removed_ratio <= max(args.max_lyrics_loss_ratio, 0.75)
    if removed_ratio > args.max_lyrics_loss_ratio:
        return False
    return bool(flags & destructive_flags)


def write_outputs(updates: list[str], report: dict[str, Any], review_rows: list[dict[str, Any]], ambiguous_review_rows: list[dict[str, Any]]) -> None:
    REPORT_JSON.parent.mkdir(parents=True, exist_ok=True)
    UPDATE_SQL.write_text("\n".join(["-- generated by scripts/repair_existing_songs.py", *updates, ""]), encoding="utf-8")
    REPORT_JSON.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    with REVIEW_JSONL.open("w", encoding="utf-8") as fh:
        for item in review_rows:
            fh.write(json.dumps(item, ensure_ascii=False, separators=(",", ":")) + "\n")
    with AMBIGUOUS_REVIEW_JSONL.open("w", encoding="utf-8") as fh:
        for item in ambiguous_review_rows:
            fh.write(json.dumps(item, ensure_ascii=False, separators=(",", ":")) + "\n")


def apply_remote(db_name: str, updates: list[str], report: dict[str, Any], args: argparse.Namespace) -> None:
    if not updates:
        print("No updates to apply.")
        return
    total = max(1, int(report.get("counts", {}).get("total_rows", 0) or 1))
    changed = int(report.get("counts", {}).get("candidate_rows", 0) or 0)
    rate = changed / total
    if rate > args.max_apply_rate and not args.allow_large_change_set:
        raise SystemExit(
            f"Refusing remote apply: candidate rate {rate:.2%} exceeds {args.max_apply_rate:.2%}. "
            "Review JSONL first or pass --allow-large-change-set."
        )
    cmd = ["npx", "wrangler", "d1", "execute", db_name, "--remote", "--file", str(UPDATE_SQL)]
    run_cmd(cmd, timeout_ms=420000)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Extract song structure from lyrics into lyrics_meta_json and optionally prepare safe cleanup SQL.")
    parser.add_argument("--db-name", default="euro-songbook-db")
    parser.add_argument("--refresh-export", action="store_true")
    parser.add_argument("--full-export", action="store_true", help="Try full D1 export. Default exports only songs because this project has an FTS virtual table.")
    parser.add_argument("--songs-table-only", action="store_true", help="Legacy no-op: songs-only export is the default.")
    parser.add_argument("--execute-remote", action="store_true")
    parser.add_argument("--report-only", action="store_true", help="Generate JSON reports without SQL UPDATE statements.")
    parser.add_argument("--include-clean-lyrics", action="store_true", help="Also write safe clean_lyrics back to lyrics. Default writes only lyrics_meta_json.")
    parser.add_argument("--no-meta-update", action="store_true", help="Do not update lyrics_meta_json; useful for pure audit.")
    parser.add_argument("--no-updated-at", action="store_true")
    parser.add_argument("--only-main", action="store_true")
    parser.add_argument("--only-versions", action="store_true")
    parser.add_argument("--song-id", default="")
    parser.add_argument("--anchor-garbage-only", action="store_true", help="Analyze only rows containing guitar/tab/tonality anchors or chord-like lines.")
    parser.add_argument("--limit", type=int, default=0, help="Stop after N candidate rows.")
    parser.add_argument("--sample-size", type=int, default=0, help="Analyze a random sample of rows before filtering candidates.")
    parser.add_argument("--seed", type=int, default=42)
    parser.add_argument("--max-lyrics-loss-ratio", type=float, default=0.35)
    parser.add_argument("--max-apply-rate", type=float, default=0.05)
    parser.add_argument("--allow-large-change-set", action="store_true")
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    REPORT_JSON.parent.mkdir(parents=True, exist_ok=True)
    ensure_export(args.db_name, args.refresh_export, args.full_export)
    rows = load_rows_from_export(EXPORT_SQL, include_versions=not args.only_main)
    if args.sample_size and args.sample_size > 0 and len(rows) > args.sample_size:
        rows = random.Random(args.seed).sample(rows, args.sample_size)
    updates, report, review_rows, ambiguous_review_rows = build_updates(rows, args)
    write_outputs(updates, report, review_rows, ambiguous_review_rows)
    print(json.dumps({
        "counts": report["counts"],
        "update_statements": report["update_statements"],
        "report": str(REPORT_JSON),
        "review_jsonl": str(REVIEW_JSONL),
        "sql": str(UPDATE_SQL),
    }, ensure_ascii=False, indent=2))
    if args.execute_remote:
        apply_remote(args.db_name, updates, report, args)
        print("Remote updates applied.")


if __name__ == "__main__":
    try:
        main()
    except subprocess.CalledProcessError as exc:
        print(f"Command failed: {exc}", file=sys.stderr)
        raise
