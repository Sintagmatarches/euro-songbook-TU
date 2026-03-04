from __future__ import annotations

import argparse
import difflib
import importlib.util
import json
import re
import sqlite3
import subprocess
import sys
from collections import Counter, defaultdict
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
EXPORT_SQL = ROOT / "tmp_songs_export.sql"
UPDATE_SQL = ROOT / "tmp_refilter_song_catalog.sql"
REPORT_JSON = ROOT / "out" / "refilter_song_catalog_report.json"
CATALOG_JS = ROOT / "shared" / "song-catalogs.js"

YEAR_MIN = 1600
YEAR_MAX = 2026

YEAR_RE = re.compile(r"\b(1[6-9]\d{2}|20\d{2})\b")
CYR_RE = re.compile(r"[\u0400-\u052f]")
LAT_RE = re.compile(r"[A-Za-z\u00C0-\u024F\u1E00-\u1EFF]")

PUB_RE = re.compile(
    r"(изд|изд-во|вып\.?|сост\.?|ред\.?|песенник|сборник|publisher|edition|issue|collection|"
    r"wydawnictw|spiewnik|śpiewnik|warszaw|mosk|moscow|стрекоз|fuga)",
    re.IGNORECASE,
)
RECORD_RE = re.compile(
    r"(запис|record|recorded|пластинк|фирм|label|grammophon|wl\s*\d+)",
    re.IGNORECASE,
)
COMPOSE_RE = re.compile(
    r"(написа|созда|датир|сочин|lyrics by|music by|muzyka\s*:|słowa\s*:|слова\s*:|музыка\s*:|z roku)",
    re.IGNORECASE,
)
HIST_RE = re.compile(
    r"(восстан|революц|войн|гражданск|legion|powstani|wojna|армия|флот|битв|front)",
    re.IGNORECASE,
)
LIFESPAN_RE = re.compile(r"\b(1[6-9]\d{2}|20\d{2})\s*[-–—]\s*(1[6-9]\d{2}|20\d{2})\b")
BIRTH_RE = re.compile(r"(род\.?|born|умер|died)", re.IGNORECASE)
IMPORT_META_LINE_RE = re.compile(r"^\s*(date:|message_id:|import_source:|added:|updated:|merged_versions:)", re.IGNORECASE)
IMPORT_META_INLINE_RE = re.compile(r"(date:\s*\d{4}-\d{2}-\d{2}|message_id:\s*\d+|import_source:|merged_versions:\s*\d+)", re.IGNORECASE)
IMPORT_META_SEGMENT_RE = re.compile(
    r"(date:\s*[^|]+|message_id:\s*\d+|import_source:\s*[^|]+|added:\s*[^|]+|updated:\s*[^|]+|merged_versions:\s*[^|]+)",
    re.IGNORECASE,
)
WORD_RE = re.compile(r"[0-9A-Za-z\u00C0-\u024F\u0400-\u052f]+")
TOKEN_RE = re.compile(r"[0-9A-Za-z\u00C0-\u024F\u0400-\u052f']+")

LAT_TO_CYR_LOOKALIKES = str.maketrans(
    {
        "A": "А",
        "B": "В",
        "C": "С",
        "E": "Е",
        "H": "Н",
        "I": "І",
        "K": "К",
        "M": "М",
        "O": "О",
        "P": "Р",
        "T": "Т",
        "X": "Х",
        "Y": "У",
        "a": "а",
        "c": "с",
        "e": "е",
        "i": "і",
        "k": "к",
        "m": "м",
        "o": "о",
        "p": "р",
        "t": "т",
        "x": "х",
        "y": "у",
    }
)

CYR_TO_LAT_LOOKALIKES = str.maketrans(
    {
        "А": "A",
        "В": "B",
        "С": "C",
        "Е": "E",
        "Н": "H",
        "І": "I",
        "К": "K",
        "М": "M",
        "О": "O",
        "Р": "P",
        "Т": "T",
        "Х": "X",
        "У": "Y",
        "а": "a",
        "с": "c",
        "е": "e",
        "і": "i",
        "к": "k",
        "м": "m",
        "о": "o",
        "р": "p",
        "т": "t",
        "х": "x",
        "у": "y",
    }
)

NON_SONG_TITLE_RE = re.compile(r"\b(вольная\s+поэзия|свадебные\s+песни)\b", re.IGNORECASE)
NON_SONG_LYRICS_RE = re.compile(
    r"(в изданиях вольной русской поэзии|расположены по порядку свадебных обрядов|всего\s+\d+\s+пес)",
    re.IGNORECASE,
)
TITLE_CREDIT_RE = re.compile(
    r"(?:(?:^|\b)(музыка|music)\s*:\s*.+(?:\b|$))|(?:(?:^|\b)(слова|lyrics)\s*:\s*.+(?:\b|$))",
    re.IGNORECASE,
)
TITLE_SERVICE_RE = re.compile(
    r"^\s*((музыка|music|слова|lyrics)\s*:|из\s+к/?ф|from\s+movie|исп\.)",
    re.IGNORECASE,
)
TITLE_NUMBERING_RE = re.compile(r"^\s*\d+\s*[-.)]\s*")
LYRIC_SERVICE_LINE_RE = re.compile(
    r"^\s*((музыка|music|слова|lyrics)\s*:|date:|message_id:|import_source:|added:|updated:|merged_versions:)",
    re.IGNORECASE,
)
LYRIC_STRUCTURE_LINE_RE = re.compile(
    r"^\s*(?:[\[(])?\s*(припев|куплет|запев|chorus|verse|bridge|intro|outro|refrain)\s*(?:[\])])?\s*[:.]?\s*$",
    re.IGNORECASE,
)
LYRIC_COMMENT_PREFIX_RE = re.compile(
    r"^\s*(примеч(?:ание)?|коммент(?:арий)?|источник|source|note|notes|перевод|translation|translated\s+by|"
    r"вариант|запис(?:ал|ано|ана)|опубл|published|publisher|edition|recorded|recording)\b",
    re.IGNORECASE,
)
LYRIC_COMMENT_HINT_RE = re.compile(
    r"\b(источник|source|перевод|translation|вариант|запис|recorded|publisher|edition|опубл|note|notes)\b",
    re.IGNORECASE,
)
LYRIC_COMMENT_BLOCK_START_RE = re.compile(
    r"^\s*(примеч(?:ание)?|коммент(?:арий)?|источник|source|note|notes)\b.*:?\s*$",
    re.IGNORECASE,
)
URL_RE = re.compile(r"https?://|www\.|@\w", re.IGNORECASE)
OLD_RU_YAT_RE = re.compile(r"[Ѣѣ]")
OLD_RU_CHARS_RE = re.compile(r"[ѢѣѲѳѴѵ]")
OLD_RU_FINAL_HARD_SIGN_RE = re.compile(r"\b[А-Яа-яЁёІіѢѣѲѳѴѵ]+ъ\b")

UK_WORD_MARKERS = {
    "що",
    "це",
    "мені",
    "тобі",
    "й",
    "є",
    "буде",
    "мати",
    "жито",
    "коли",
    "вічним",
}
BE_WORD_MARKERS = {
    "дзе",
    "няма",
    "калі",
    "яна",
    "ён",
    "гэта",
    "твая",
    "мая",
    "ў",
}

MOVEMENT_PATTERNS: list[tuple[str, re.Pattern[str]]] = [
    ("russo_japanese_war_1904_1905", re.compile(r"(русско[-\s]японск\w+\s+войн|russo[-\s]japanese\s+war)", re.IGNORECASE)),
    ("russian_civil_war_1917_1922", re.compile(r"(гражданск\w+\s+войн\w+\s+в\s+росси|russian\s+civil\s+war)", re.IGNORECASE)),
    ("narodnaya_volya", re.compile(r"(народн\w+\s+вол\w+|narodnaya\s+volya)", re.IGNORECASE)),
    ("armia_krajowa", re.compile(r"(armia\s+krajowa|армия\s+крайов\w+|\bак\b)", re.IGNORECASE)),
    ("armia_ludowa", re.compile(r"(armia\s+ludowa|армия\s+людов\w+|\bал\b)", re.IGNORECASE)),
    ("forest_brothers", re.compile(r"(лесн\w+\s+брат\w+|forest\s+brothers|metsavenn)", re.IGNORECASE)),
    ("chetniks", re.compile(r"(четник\w+|chetnik)", re.IGNORECASE)),
    ("ukrainian_insurgent_army", re.compile(r"(украин\w+\s+повстан\w+\s+арм\w+|\bупа\b|ukrainian\s+insurgent\s+army)", re.IGNORECASE)),
    ("organization_of_ukrainian_nationalists", re.compile(r"(организац\w+\s+украин\w+\s+националист\w+|\bоун\b|organization\s+of\s+ukrainian\s+nationalists)", re.IGNORECASE)),
    ("russian_liberation_army", re.compile(r"(русск\w+\s+освободит\w+\s+арм\w+|\bроа\b|russian\s+liberation\s+army)", re.IGNORECASE)),
    ("german_collaborators", re.compile(r"(немецк\w+\s+коллабораци\w+|german\s+collaborators|латышск\w+\s+легион|эстонск\w+\s+дивизи\w+\s+сс)", re.IGNORECASE)),
    ("white_emigration", re.compile(r"(бел\w+\s+эмиграц\w+|white\s+emigration)", re.IGNORECASE)),
]
IRA_RE = re.compile(r"(\bира\b|\bira\b|irish\s+republican\s+army)", re.IGNORECASE)
MOVEMENT_COUNTRIES = {
    "russo_japanese_war_1904_1905",
    "russian_civil_war_1917_1922",
    "narodnaya_volya",
    "armia_krajowa",
    "armia_ludowa",
    "forest_brothers",
    "chetniks",
    "ira_1919_1922",
    "ira_1969_2005",
    "ira",
    "ukrainian_insurgent_army",
    "organization_of_ukrainian_nationalists",
    "russian_liberation_army",
    "german_collaborators",
    "white_emigration",
    "other_movements",
}

AUSTRIA_RE = re.compile(r"(австри\w+|austria|österreich|wien|vienna)", re.IGNORECASE)
SWISS_RE = re.compile(r"(швейцар\w+|switzerland|schweiz|suisse)", re.IGNORECASE)
LIECHTENSTEIN_RE = re.compile(r"(лихтенштейн|liechtenstein)", re.IGNORECASE)
BELGIUM_RE = re.compile(r"(бельги\w+|belgium|belgique|belgië)", re.IGNORECASE)
NETHERLANDS_RE = re.compile(r"(нидерланд\w+|голланд\w+|netherlands|holland|nederland)", re.IGNORECASE)
LUXEMBOURG_RE = re.compile(r"(люксембург\w+|luxembourg)", re.IGNORECASE)
MONACO_RE = re.compile(r"(монако|monaco)", re.IGNORECASE)
SAN_MARINO_RE = re.compile(r"(сан[-\s]?марино|san\s+marino)", re.IGNORECASE)
VATICAN_RE = re.compile(r"(ватикан|vatican)", re.IGNORECASE)
CYPRUS_RE = re.compile(r"(кипр|cyprus|kypros)", re.IGNORECASE)
MALTA_RE = re.compile(r"(мальт\w+|malta)", re.IGNORECASE)
ANDORRA_RE = re.compile(r"(андорр\w+|andorra)", re.IGNORECASE)
IRELAND_RE = re.compile(r"(ирланди\w+|ireland|éire|eire)", re.IGNORECASE)
UK_RE = re.compile(r"(великобрит|британ\w+|united\s+kingdom|great\s+britain|england|british)", re.IGNORECASE)
MOLDOVA_RE = re.compile(r"(молдов\w+|moldov\w+|кишин[её]в|chișinău|chisinau|бессараб\w+|bessarab)", re.IGNORECASE)
TRANSCAUCASIA_RE = re.compile(r"(закавказ|тсфср|зсфср|transcaucas|tsfsr)", re.IGNORECASE)

COUNTRY_BOUNDS: dict[str, tuple[int | None, int | None]] = {
    "russian_empire_1900_1917": (1900, 1917),
    "russian_republic_1917": (1917, 1917),
    "russian_civil_war_1917_1922": (1917, 1922),
    "rsfsr_1917_1922": (1917, 1922),
    "ussr": (1922, 1991),
    "russian_federation_1991": (1991, None),
    "ukr_ssr_1919_1991": (1919, 1991),
    "ukraine_1991": (1991, None),
    "bssr_1919_1991": (1919, 1991),
    "belarus_1991": (1991, None),
    "kingdom_of_poland_within_russian_empire_1900_1915": (1900, 1915),
    "kingdom_of_poland_within_russian_empire_1815_1915": (1815, 1915),
    "second_polish_republic_1918_1939": (1918, 1939),
    "polish_peoples_republic_1952_1989": (1952, 1989),
    "poland_1989": (1989, None),
    "german_empire_1900_1918": (1900, 1918),
    "weimar_republic_1918_1933": (1918, 1933),
    "third_reich_1933_1945": (1933, 1945),
    "gdr_1949_1990": (1949, 1990),
    "frg_1949": (1949, 1990),
    "germany_1990": (1990, None),
    "narodnaya_volya": (1879, 1883),
    "armia_krajowa": (1942, 1945),
    "armia_ludowa": (1944, 1945),
    "forest_brothers": (1940, 1956),
    "chetniks": (1941, 1945),
    "ira_1919_1922": (1919, 1922),
    "ira_1969_2005": (1969, 2005),
    "ukrainian_insurgent_army": (1942, 1956),
    "organization_of_ukrainian_nationalists": (1929, None),
    "russian_liberation_army": (1944, 1945),
    "german_collaborators": (1933, 1945),
    "white_emigration": (1920, 1950),
    "russo_japanese_war_1904_1905": (1904, 1905),
}


@dataclass
class SongRow:
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


@dataclass
class YearCandidate:
    year: int
    score: int
    reason: str
    origin: str


@dataclass
class FilterPolicy:
    country_ambiguity_policy: str = "other_countries"
    cyr_lang_switch_policy: str = "aggressive"
    max_scope_chars: int = 3200
    sample_seed: int = 42


@dataclass
class RowSignals:
    title_norm: str
    subtitle_norm: str
    lyrics_norm: str
    lyrics_song: str
    lyrics_comment_lines: int
    source_norm: str
    notes_norm: str
    source_clean: str
    notes_clean: str
    source_removed_meta: int
    notes_removed_meta: int
    scope_short: str
    cyr_count: int
    lat_count: int
    old_ru_yat_count: int
    old_ru_char_count: int
    old_ru_final_hard_sign_count: int
    uk_unique_chars: int
    be_unique_chars: int
    uk_word_marker_count: int
    be_word_marker_count: int
    uk_marker_count: int
    be_marker_count: int
    title_is_polluted: bool
    notes_has_meta: bool
    geo_votes: dict[str, int]
    geo_lyrics_votes: dict[str, int]


def norm_text(value: str | None) -> str:
    return str(value or "")


def normalize_newlines(text: str) -> str:
    return norm_text(text).replace("\r\n", "\n").replace("\r", "\n")


def parse_year(value: str | None) -> int | None:
    raw = norm_text(value).strip()
    if not raw.isdigit():
        return None
    y = int(raw)
    return y if YEAR_MIN <= y <= YEAR_MAX else None


def tokenize_words(text: str) -> list[str]:
    return [t.lower() for t in TOKEN_RE.findall(norm_text(text))]


def count_chars(text: str, chars: str) -> int:
    if not text:
        return 0
    return sum(text.count(ch) for ch in chars)


def has_import_meta_noise(text: str) -> bool:
    raw = normalize_newlines(text)
    if not raw.strip():
        return False
    if IMPORT_META_LINE_RE.search(raw):
        return True
    return bool(IMPORT_META_INLINE_RE.search(raw))


def _strip_meta_segments(line: str) -> tuple[str, int]:
    removed = 0

    def _repl(_match: re.Match[str]) -> str:
        nonlocal removed
        removed += 1
        return ""

    cleaned = IMPORT_META_SEGMENT_RE.sub(_repl, line)
    cleaned = re.sub(r"\s*\|\s*", " | ", cleaned)
    cleaned = re.sub(r"\s{2,}", " ", cleaned).strip()
    cleaned = cleaned.strip("|").strip()
    return cleaned, removed


def clean_import_meta_text(text: str) -> tuple[str, int]:
    kept: list[str] = []
    removed_total = 0
    for raw in normalize_newlines(text).splitlines():
        line = raw.strip()
        if not line:
            if kept and kept[-1] != "":
                kept.append("")
            continue
        if IMPORT_META_LINE_RE.match(line):
            removed_total += 1
            continue
        cleaned, removed_inline = _strip_meta_segments(line)
        removed_total += removed_inline
        if not cleaned:
            continue
        if re.fullmatch(r"[|:;,\-\s]+", cleaned):
            removed_total += 1
            continue
        kept.append(cleaned)
    out = "\n".join(kept).strip()
    return out, removed_total


def is_polluted_title(title: str) -> bool:
    t = normalize_inline(title)
    if not t:
        return True
    if TITLE_NUMBERING_RE.match(t):
        return True
    if TITLE_SERVICE_RE.search(t):
        return True
    if TITLE_CREDIT_RE.search(t) and ("музыка" in t.lower() or "music" in t.lower()):
        return True
    return False


def is_lyric_like_line(line: str) -> bool:
    s = norm_text(line).strip()
    if not s or len(s) > 100:
        return False
    if URL_RE.search(s):
        return False
    if s.endswith(":"):
        return False
    words = tokenize_words(s)
    if not words or len(words) > 8:
        return False
    if LYRIC_SERVICE_LINE_RE.search(s):
        return False
    return True


def split_leading_service_lines(lyrics: str) -> tuple[str, list[str]]:
    lines = normalize_newlines(lyrics).splitlines()
    moved: list[str] = []
    idx = 0
    while idx < len(lines):
        line = lines[idx].strip()
        if not line:
            idx += 1
            continue
        if LYRIC_SERVICE_LINE_RE.match(line):
            moved.append(line)
            idx += 1
            continue
        break
    body = "\n".join(lines[idx:]).strip()
    return body, moved


def is_commentary_line(line: str) -> bool:
    s = norm_text(line).strip()
    if not s:
        return False
    if LYRIC_STRUCTURE_LINE_RE.match(s):
        return False
    if LYRIC_SERVICE_LINE_RE.match(s):
        return True
    if IMPORT_META_INLINE_RE.search(s):
        return True
    if URL_RE.search(s):
        return True
    if LYRIC_COMMENT_PREFIX_RE.match(s):
        return True

    words = tokenize_words(s)
    if not words:
        return False
    if s.startswith("[") and s.endswith("]") and len(words) >= 5:
        return True
    if s.startswith("(") and s.endswith(")") and len(words) >= 6 and LYRIC_COMMENT_HINT_RE.search(s):
        return True
    if len(words) >= 12 and re.search(r"[,:;]", s) and s.endswith((".", ";")):
        return True
    if len(words) >= 9 and YEAR_RE.search(s) and LYRIC_COMMENT_HINT_RE.search(s):
        return True
    return False


def split_lyrics_commentary(lyrics: str) -> tuple[str, list[str]]:
    lines = normalize_newlines(lyrics).splitlines()
    kept: list[str] = []
    comments: list[str] = []
    in_comment_block = False

    for raw in lines:
        line = raw.strip()
        if not line:
            in_comment_block = False
            if kept and kept[-1] != "":
                kept.append("")
            continue

        if in_comment_block:
            comments.append(line)
            continue

        if is_commentary_line(line):
            comments.append(line)
            if LYRIC_COMMENT_BLOCK_START_RE.match(line) and line.endswith(":"):
                in_comment_block = True
            continue

        kept.append(raw.rstrip())

    body = normalize_spaces("\n".join(kept))
    return body, comments


def extract_lyrics_for_classification(lyrics: str) -> tuple[str, int]:
    src = normalize_newlines(lyrics).strip()
    if not src:
        return "", 0
    body, moved_service = split_leading_service_lines(src)
    body, moved_comments = split_lyrics_commentary(body)
    if not body:
        # Safety fallback for ultra-short songs: keep original text instead of empty sample.
        return src, len(moved_service) + len(moved_comments)
    return body, len(moved_service) + len(moved_comments)


def extract_title_from_lyrics_head(lyrics: str) -> tuple[str | None, int]:
    lines = normalize_newlines(lyrics).splitlines()
    non_empty = [i for i, line in enumerate(lines) if line.strip()]
    for idx in non_empty[:10]:
        candidate = normalize_inline(lines[idx])
        if not is_lyric_like_line(candidate):
            continue
        return candidate, idx
    return None, -1


def count_marker_words(tokens: list[str], markers: set[str]) -> int:
    return sum(1 for token in tokens if token in markers)


def parse_catalog_values(var_name: str) -> list[str]:
    text = CATALOG_JS.read_text(encoding="utf-8")
    match = re.search(rf"export const {re.escape(var_name)}\s*=\s*\[(.*?)\];", text, re.S)
    if not match:
        raise RuntimeError(f"Could not parse {var_name} from {CATALOG_JS}")
    return re.findall(r'"([^"]+)"', match.group(1))


def fold(value: str) -> str:
    return norm_text(value).strip().lower().replace("–", "-").replace("—", "-")


def fold_alias(value: str) -> str:
    return re.sub(r"[().,]", "", re.sub(r"[-\s]+", "_", fold(value)))


def build_country_aliases(country_values: set[str]) -> dict[str, str]:
    aliases = {fold_alias(v): v for v in country_values}
    aliases.update(
        {
            "other": "other_countries",
            "other_country": "other_countries",
            "другие_страны": "other_countries",
            "other_movements": "other_movements",
            "ira": "ira_1969_2005",
            "kingdom_of_poland_within_russian_empire_1815_1915": "kingdom_of_poland_within_russian_empire_1900_1915",
            "north_macedonia_1991": "republic_of_macedonia_1991_2019",
            "kingdom_of_greece_1900_1973": "kingdom_of_greece_restoration_1935_1973",
            "rsfsr_1917_1991": "rsfsr_1917_1922",
        }
    )
    return {k: v for k, v in aliases.items() if v in country_values}


def load_lang_module():
    path = ROOT / "scripts" / "reclassify_song_languages.py"
    spec = importlib.util.spec_from_file_location("reclassify_song_languages", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Unable to load classifier module from {path}")
    mod = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = mod
    spec.loader.exec_module(mod)  # type: ignore[attr-defined]
    return mod


def count_scripts(text: str) -> tuple[int, int]:
    s = norm_text(text)
    return len(CYR_RE.findall(s)), len(LAT_RE.findall(s))


def country_votes_from_scope(
    title: str,
    subtitle: str,
    source: str,
    notes: str,
    lyrics: str,
    country_values: set[str],
) -> tuple[dict[str, int], dict[str, int]]:
    weights = {
        "title": 8,
        "subtitle": 6,
        "source": 4,
        "notes": 3,
        "lyrics": 1,
    }
    scopes = {
        "title": title,
        "subtitle": subtitle,
        "source": source,
        "notes": notes,
        "lyrics": lyrics,
    }
    votes: Counter[str] = Counter()
    lyrics_votes: Counter[str] = Counter()
    patterns = [
        (AUSTRIA_RE, "austria_1945"),
        (SWISS_RE, "switzerland_1900"),
        (LIECHTENSTEIN_RE, "liechtenstein_1900"),
        (BELGIUM_RE, "belgium_1900"),
        (NETHERLANDS_RE, "netherlands_1900"),
        (LUXEMBOURG_RE, "luxembourg_1900"),
        (MONACO_RE, "monaco_1900"),
        (SAN_MARINO_RE, "san_marino_1900"),
        (VATICAN_RE, "vatican_1929"),
        (CYPRUS_RE, "cyprus_1960"),
        (MALTA_RE, "malta_1964"),
        (ANDORRA_RE, "andorra_1900"),
        (IRELAND_RE, "ireland_republic_1949"),
        (UK_RE, "uk_gb_ni_1922"),
        (MOLDOVA_RE, "moldova_1991"),
    ]
    for field, text in scopes.items():
        if not text:
            continue
        w = weights[field]
        for patt, code in patterns:
            if patt.search(text):
                mapped = pick_existing(country_values, code)
                votes[mapped] += w
                if field == "lyrics":
                    lyrics_votes[mapped] += w
    return dict(votes), dict(lyrics_votes)


def is_country_ambiguous(votes: dict[str, int], lyrics_votes: dict[str, int]) -> tuple[bool, bool]:
    if not votes:
        # No geo-signals: keep timeline fallback, but mark as low-signal for QA.
        return False, True
    ranked = sorted(votes.items(), key=lambda item: item[1], reverse=True)
    top_score = ranked[0][1]
    second_score = ranked[1][1] if len(ranked) > 1 else 0
    total_votes = sum(votes.values())
    lyrics_total = sum(lyrics_votes.values())
    low_signal = top_score < 6
    close_top = (top_score - second_score) <= 2
    lyrics_dominant_scatter = len(votes) >= 3 and total_votes > 0 and (lyrics_total / total_votes) > 0.7
    return (low_signal or close_top or lyrics_dominant_scatter), low_signal


def build_row_signals(row: SongRow, country_values: set[str], policy: FilterPolicy) -> RowSignals:
    title_norm = normalize_inline(row.title)
    subtitle_norm = normalize_inline(row.subtitle)
    lyrics_norm = normalize_newlines(row.lyrics).strip()
    lyrics_song, lyrics_comment_lines = extract_lyrics_for_classification(lyrics_norm)
    source_norm = normalize_newlines(row.source).strip()
    notes_norm = normalize_newlines(row.notes).strip()
    source_clean, source_removed_meta = clean_import_meta_text(source_norm)
    notes_clean, notes_removed_meta = clean_import_meta_text(notes_norm)
    scope_short = "\n".join(
        [
            title_norm,
            subtitle_norm,
            source_clean[:2200],
            notes_clean[:2200],
            lyrics_song[: policy.max_scope_chars],
        ]
    )
    cyr_count, lat_count = count_scripts("\n".join([title_norm, subtitle_norm, lyrics_song[:7000]]))
    old_ru_sample = "\n".join([title_norm, subtitle_norm, lyrics_song[:7000]])
    old_ru_yat_count = len(OLD_RU_YAT_RE.findall(old_ru_sample))
    old_ru_char_count = len(OLD_RU_CHARS_RE.findall(old_ru_sample))
    old_ru_final_hard_sign_count = len(OLD_RU_FINAL_HARD_SIGN_RE.findall(old_ru_sample))
    tokens = tokenize_words(lyrics_song[:7000])
    uk_unique_chars = count_chars(lyrics_song, "їєґЇЄҐ")
    be_unique_chars = count_chars(lyrics_song, "ўЎ")
    uk_word_marker_count = count_marker_words(tokens, UK_WORD_MARKERS)
    be_word_marker_count = count_marker_words(tokens, BE_WORD_MARKERS)
    uk_marker_count = uk_unique_chars + uk_word_marker_count
    be_marker_count = be_unique_chars + be_word_marker_count
    geo_votes, geo_lyrics_votes = country_votes_from_scope(
        title_norm,
        subtitle_norm,
        source_clean,
        notes_clean,
        lyrics_song[: policy.max_scope_chars],
        country_values,
    )
    return RowSignals(
        title_norm=title_norm,
        subtitle_norm=subtitle_norm,
        lyrics_norm=lyrics_norm,
        lyrics_song=lyrics_song,
        lyrics_comment_lines=lyrics_comment_lines,
        source_norm=source_norm,
        notes_norm=notes_norm,
        source_clean=source_clean,
        notes_clean=notes_clean,
        source_removed_meta=source_removed_meta,
        notes_removed_meta=notes_removed_meta,
        scope_short=scope_short,
        cyr_count=cyr_count,
        lat_count=lat_count,
        old_ru_yat_count=old_ru_yat_count,
        old_ru_char_count=old_ru_char_count,
        old_ru_final_hard_sign_count=old_ru_final_hard_sign_count,
        uk_unique_chars=uk_unique_chars,
        be_unique_chars=be_unique_chars,
        uk_word_marker_count=uk_word_marker_count,
        be_word_marker_count=be_word_marker_count,
        uk_marker_count=uk_marker_count,
        be_marker_count=be_marker_count,
        title_is_polluted=is_polluted_title(title_norm),
        notes_has_meta=has_import_meta_noise(notes_norm),
        geo_votes=geo_votes,
        geo_lyrics_votes=geo_lyrics_votes,
    )


def has_strong_uk_signal(signals: RowSignals) -> bool:
    if signals.uk_unique_chars >= 2:
        return True
    if signals.uk_unique_chars >= 1 and signals.uk_word_marker_count >= 1:
        return True
    if signals.uk_word_marker_count >= 3 and signals.cyr_count >= max(20, int(signals.lat_count * 1.1)):
        return True
    return False


def has_strong_be_signal(signals: RowSignals) -> bool:
    if signals.be_unique_chars >= 2:
        return True
    if signals.be_unique_chars >= 1 and signals.be_word_marker_count >= 1:
        return True
    if signals.be_word_marker_count >= 3 and signals.cyr_count >= max(20, int(signals.lat_count * 1.1)):
        return True
    return False


def has_strong_cyr_lang_signal(signals: RowSignals) -> bool:
    return has_strong_uk_signal(signals) or has_strong_be_signal(signals)


def has_old_ru_orthography(signals: RowSignals) -> bool:
    if signals.old_ru_yat_count >= 1:
        return True
    if signals.old_ru_char_count >= 2:
        return True
    if signals.old_ru_final_hard_sign_count >= 2:
        return True
    return False


def force_cyr_lang_aggressive(
    old_lang: str,
    pred_lang: str,
    reason: str,
    signals: RowSignals,
) -> tuple[str, str, bool]:
    cyr_dominant = signals.cyr_count >= max(18, int(signals.lat_count * 1.1))
    uk_strong = has_strong_uk_signal(signals)
    be_strong = has_strong_be_signal(signals)
    old_ru_guard = has_old_ru_orthography(signals)
    if old_ru_guard and old_lang == "ru" and (uk_strong or be_strong):
        return pred_lang, f"{reason}|old_ru_orthography_guard", False
    if not cyr_dominant and not (uk_strong or be_strong):
        return pred_lang, reason, False
    if uk_strong and be_strong and abs(signals.uk_marker_count - signals.be_marker_count) <= 2:
        return pred_lang, f"{reason}|lang_scope_conflict", False
    if uk_strong and signals.uk_marker_count >= signals.be_marker_count:
        return "uk", "uk_marker", True
    if be_strong and signals.be_marker_count > signals.uk_marker_count:
        return "be", "be_marker", True
    return pred_lang, reason, False


def classify_language(
    row: SongRow,
    signals: RowSignals,
    lang_mod,
    lang_values: set[str],
    policy: FilterPolicy,
) -> tuple[str, float, str, bool]:
    old_lang = row.lang if row.lang in lang_values else "ru"
    core = lang_mod.SongRow(row.id, signals.title_norm, signals.subtitle_norm, old_lang, signals.lyrics_song, "", "")
    pred, conf, reason = lang_mod.classify_song(core)

    if pred not in lang_values:
        pred, conf, reason = old_lang, 0.0, "keep_old_unknown"

    cyr_langs = set(getattr(lang_mod, "CYR_LANGS", {"ru", "uk", "be", "bg", "mk", "sr", "kk"}))
    if signals.cyr_count >= max(28, int(signals.lat_count * 1.2)) and pred not in cyr_langs:
        pred, conf, reason = (old_lang if old_lang in cyr_langs else "ru"), 1.0, "script_guard_cyr"
    elif signals.lat_count >= max(30, int(signals.cyr_count * 1.25)) and pred in cyr_langs and old_lang not in cyr_langs:
        pred, conf, reason = old_lang, 0.9, "script_guard_lat_keep_old"

    forced = False
    if policy.cyr_lang_switch_policy == "aggressive":
        pred, reason, forced = force_cyr_lang_aggressive(old_lang, pred, str(reason), signals)
        if forced:
            conf = max(float(conf), 0.99)
    elif policy.cyr_lang_switch_policy == "strict" and old_lang == "ru" and pred in {"uk", "be"} and "hint" not in str(reason):
        pred, conf, reason = old_lang, float(conf), "strict_keep_ru"

    if pred not in lang_values:
        pred, conf, reason = old_lang, 0.0, "keep_old_unknown_final"
        forced = False

    return pred, float(conf), str(reason), forced


def should_apply_language_change(old_lang: str, new_lang: str, confidence: float, reason: str, lang_mod) -> bool:
    if old_lang == new_lang:
        return False
    if "old_ru_orthography_guard" in reason and old_lang == "ru" and new_lang in {"uk", "be"}:
        return False
    marker_reason = reason in {"uk_marker", "be_marker", "aggressive_uk_markers", "aggressive_be_markers"}
    if marker_reason and new_lang in {"uk", "be"}:
        return confidence >= 0.9
    if new_lang in {"lb", "fo", "ga", "mt", "cy", "sq", "eu", "gl", "ca", "me"} and "hint" not in reason:
        return False
    if hasattr(lang_mod, "should_apply_language_change"):
        return bool(lang_mod.should_apply_language_change(old_lang, new_lang, confidence, reason))
    if "hint" in reason or "marker" in reason:
        return True
    return confidence >= 0.97


def extract_year_candidates(text: str, origin: str) -> list[YearCandidate]:
    src = normalize_newlines(text)
    if not src:
        return []
    base = {"title": 12, "subtitle": 10, "source": 7, "notes": 5, "lyrics": 3}.get(origin, 3)
    out: list[YearCandidate] = []
    lower = src.lower()
    for m in YEAR_RE.finditer(src):
        y = int(m.group(1))
        if not (YEAR_MIN <= y <= YEAR_MAX):
            continue
        a, b = max(0, m.start() - 48), min(len(src), m.end() + 48)
        ctx = lower[a:b]
        score = base
        tags = [origin]
        if COMPOSE_RE.search(ctx):
            score += 8
            tags.append("compose")
        if HIST_RE.search(ctx):
            score += 3
            tags.append("historic")
        if RECORD_RE.search(ctx):
            score -= 2
            tags.append("record")
        if PUB_RE.search(ctx):
            score -= 8
            tags.append("pub")
        if LIFESPAN_RE.search(ctx) or BIRTH_RE.search(ctx):
            score -= 12
            tags.append("lifespan")
        if y >= 1990 and "pub" in tags:
            score -= 2
        if origin in {"source", "notes"} and y >= 2010 and "compose" not in tags and "historic" not in tags:
            score -= 14
        out.append(YearCandidate(y, score, "+".join(tags), origin))
    return out


def drop_import_meta_lines(text: str) -> str:
    cleaned, _removed = clean_import_meta_text(text)
    return cleaned


SCRIPT_CYR_LANGS = {"ru", "uk", "be", "bg", "mk", "sr", "kk"}


def normalize_spaces(text: str) -> str:
    cleaned = normalize_newlines(text)
    cleaned = re.sub(r"[ \t]+\n", "\n", cleaned)
    cleaned = re.sub(r"\n{3,}", "\n\n", cleaned)
    return cleaned.strip()


def normalize_inline(text: str) -> str:
    return re.sub(r"\s+", " ", norm_text(text)).strip()


def has_cyr_chars(text: str) -> bool:
    return bool(CYR_RE.search(text))


def has_lat_chars(text: str) -> bool:
    return bool(LAT_RE.search(text))


def fix_mixed_script_token(token: str, prefer_cyr: bool) -> str:
    if len(token) < 3:
        return token
    has_cyr = has_cyr_chars(token)
    has_lat = has_lat_chars(token)
    if not (has_cyr and has_lat):
        return token
    if prefer_cyr:
        return token.translate(LAT_TO_CYR_LOOKALIKES)
    return token.translate(CYR_TO_LAT_LOOKALIKES)


def fix_mixed_script_text(text: str, lang: str) -> tuple[str, int]:
    src = norm_text(text)
    if not src:
        return "", 0
    prefer_cyr = lang in SCRIPT_CYR_LANGS
    changed = 0

    def _replace(match: re.Match[str]) -> str:
        nonlocal changed
        token = match.group(0)
        fixed = fix_mixed_script_token(token, prefer_cyr)
        if fixed != token:
            changed += 1
        return fixed

    fixed_text = WORD_RE.sub(_replace, src)
    return fixed_text, changed


def repair_title_from_lyrics(title: str, lyrics: str, notes: str) -> tuple[str, str, str, bool]:
    clean_title = normalize_inline(title)
    clean_lyrics = normalize_newlines(lyrics).strip()
    clean_notes = normalize_newlines(notes).strip()
    repaired = False

    body, moved_service = split_leading_service_lines(clean_lyrics)
    body, moved_comments = split_lyrics_commentary(body)
    moved = [*moved_service, *moved_comments]
    if moved:
        moved_block = normalize_spaces("\n".join(moved))
        if moved_block and moved_block not in clean_notes:
            clean_notes = f"{clean_notes}\n\n{moved_block}".strip() if clean_notes else moved_block
    clean_lyrics = body

    if is_polluted_title(clean_title):
        candidate, idx = extract_title_from_lyrics_head(clean_lyrics)
        if candidate:
            lines = normalize_newlines(clean_lyrics).splitlines()
            clean_title = candidate
            tail = lines[idx + 1 :]
            while tail and not tail[0].strip():
                tail.pop(0)
            clean_lyrics = "\n".join(tail).strip()
            repaired = True

    return clean_title, clean_lyrics, clean_notes, repaired


def validate_row_update(
    *,
    clean_title: str,
    clean_notes: str,
    final_lang: str,
    signals: RowSignals,
    validation_flags: Counter[str],
) -> tuple[str, str, str]:
    out_title = clean_title
    out_notes = clean_notes
    out_lang = final_lang

    if has_import_meta_noise(out_notes):
        out_notes = ""
        validation_flags["notes_noise"] += 1

    if is_polluted_title(out_title):
        validation_flags["title_pollution"] += 1

    if has_old_ru_orthography(signals):
        return out_title, out_notes, out_lang

    uk_strong = has_strong_uk_signal(signals)
    be_strong = has_strong_be_signal(signals)
    if uk_strong and not be_strong and out_lang != "uk":
        validation_flags["lang_scope_conflict"] += 1
    elif be_strong and not uk_strong and out_lang != "be":
        validation_flags["lang_scope_conflict"] += 1
    elif uk_strong and be_strong and out_lang not in {"uk", "be"}:
        validation_flags["lang_scope_conflict"] += 1

    return out_title, out_notes, out_lang


def is_probably_non_song(title: str, lyrics: str) -> bool:
    t = norm_text(title)
    l = norm_text(lyrics)
    if NON_SONG_TITLE_RE.search(t):
        return True
    if NON_SONG_LYRICS_RE.search(l):
        return True
    return False


def normalize_for_dedupe(text: str) -> str:
    compact = re.sub(r"[^0-9A-Za-z\u00C0-\u024F\u0400-\u052f]+", "", norm_text(text).lower())
    return compact


def duplicate_drop_ids(rows: list[SongRow]) -> dict[str, str]:
    # Detect exact duplicates by normalized lang+lyrics, then keep the best candidate.
    by_lyrics: dict[tuple[str, str], list[SongRow]] = defaultdict(list)
    for row in rows:
        lang = row.lang or "ru"
        key_lyrics = normalize_for_dedupe(row.lyrics)
        if len(key_lyrics) < 180:
            continue
        by_lyrics[(lang, key_lyrics)].append(row)

    drops: dict[str, str] = {}
    for (_lang, _lyrics_key), group in by_lyrics.items():
        if len(group) <= 1:
            continue

        # Keep the earliest non-tg3 published row when possible.
        def _rank(r: SongRow) -> tuple[int, int, str, str]:
            non_tg3 = 0 if not r.id.startswith("tg3_") else 1
            is_draft = 1 if (r.status or "published") == "draft" else 0
            created = r.created_at or "9999-99-99 99:99:99"
            return (non_tg3, is_draft, created, r.id)

        keeper = sorted(group, key=_rank)[0]
        keeper_title = normalize_for_dedupe(keeper.title)

        for row in group:
            if row.id == keeper.id:
                continue
            title_norm = normalize_for_dedupe(row.title)
            if not title_norm or not keeper_title:
                continue
            # Conservative: dedupe only when titles are equal or one contains the other.
            max_len = max(len(title_norm), len(keeper_title))
            len_gap = abs(len(title_norm) - len(keeper_title))
            if max_len == 0 or (len_gap / max_len) > 0.35:
                continue
            similar = difflib.SequenceMatcher(a=title_norm, b=keeper_title).ratio() >= 0.82
            if title_norm == keeper_title or title_norm in keeper_title or keeper_title in title_norm or similar:
                drops[row.id] = keeper.id
    return drops


def infer_song_year(row: SongRow, signals: RowSignals | None = None) -> tuple[int | None, str]:
    old = parse_year(row.year)
    source_clean = signals.source_clean if signals else drop_import_meta_lines(row.source)
    notes_clean = signals.notes_clean if signals else drop_import_meta_lines(row.notes)
    lyrics_base = signals.lyrics_song if signals else normalize_newlines(row.lyrics)
    tail = "\n".join(lyrics_base.splitlines()[-10:])
    cands: list[YearCandidate] = []
    cands.extend(extract_year_candidates(row.title, "title"))
    cands.extend(extract_year_candidates(row.subtitle, "subtitle"))
    cands.extend(extract_year_candidates(source_clean, "source"))
    cands.extend(extract_year_candidates(notes_clean, "notes"))
    cands.extend(extract_year_candidates(tail, "lyrics"))
    if old is not None:
        cands.append(YearCandidate(old, 2, "existing", "existing"))
    if not cands:
        return old, "no_candidates"
    best = max(cands, key=lambda c: (c.score, -c.year))
    if old is not None:
        if best.year >= 2010 and old <= 2005 and best.origin in {"source", "notes"}:
            return old, "keep_old_modern_meta"
        if best.origin in {"source", "notes"} and best.score < 12 and abs(best.year - old) > 35:
            return old, "keep_old_far_meta"
    if best.score < 1:
        return old, "weak_keep_old"
    return best.year, best.reason


def pick_existing(country_values: set[str], *codes: str) -> str:
    for code in codes:
        if code in country_values:
            return code
    return "other_countries"


def movement_country(scope: str, year: int | None, country_values: set[str]) -> str | None:
    s = scope.lower()
    if IRA_RE.search(s):
        if year is not None and 1919 <= year <= 1922:
            return pick_existing(country_values, "ira_1919_1922", "ira")
        if year is not None and 1969 <= year <= 2005:
            return pick_existing(country_values, "ira_1969_2005", "ira")
        return pick_existing(country_values, "ira_1969_2005", "ira")
    for code, patt in MOVEMENT_PATTERNS:
        if patt.search(s):
            if code == "russo_japanese_war_1904_1905" and year is not None and not (1904 <= year <= 1905):
                continue
            if code == "russian_civil_war_1917_1922" and year is not None and not (1917 <= year <= 1922):
                continue
            return pick_existing(country_values, code)
    return None

def timeline_ireland(year: int | None, country_values: set[str]) -> str:
    if year is None:
        return pick_existing(country_values, "ireland_republic_1949", "uk_gb_ni_1922")
    if year <= 1922:
        return pick_existing(country_values, "uk_gb_ireland_1900_1922")
    if year <= 1937:
        return pick_existing(country_values, "irish_free_state_1922_1937")
    if year <= 1949:
        return pick_existing(country_values, "ireland_1937_1949")
    return pick_existing(country_values, "ireland_republic_1949")


def timeline_uk(year: int | None, country_values: set[str]) -> str:
    if year is not None and year <= 1922:
        return pick_existing(country_values, "uk_gb_ireland_1900_1922")
    return pick_existing(country_values, "uk_gb_ni_1922")


def timeline_austria(year: int | None, country_values: set[str]) -> str:
    if year is None:
        return pick_existing(country_values, "austria_1945")
    if year <= 1918:
        return pick_existing(country_values, "austro_hungary_1900_1918")
    if year <= 1934:
        return pick_existing(country_values, "first_austrian_republic_1919_1934")
    if year <= 1938:
        return pick_existing(country_values, "federal_state_of_austria_1934_1938")
    if year <= 1945:
        return pick_existing(country_values, "austria_in_nazi_germany_1938_1945")
    return pick_existing(country_values, "austria_1945")


def timeline_france(year: int | None, country_values: set[str]) -> str:
    if year is None:
        return pick_existing(country_values, "france_fifth_republic_1958")
    if year <= 1940:
        return pick_existing(country_values, "france_third_republic_1900_1940")
    if year <= 1944:
        return pick_existing(country_values, "france_vichy_1940_1944")
    if year <= 1958:
        return pick_existing(country_values, "france_fourth_republic_1946_1958")
    return pick_existing(country_values, "france_fifth_republic_1958")


def timeline_italy(year: int | None, country_values: set[str]) -> str:
    if year is not None and year <= 1946:
        return pick_existing(country_values, "kingdom_of_italy_1900_1946")
    return pick_existing(country_values, "italian_republic_1946")


def timeline_spain(year: int | None, country_values: set[str]) -> str:
    if year is None:
        return pick_existing(country_values, "spain_1975")
    if year <= 1931:
        return pick_existing(country_values, "kingdom_of_spain_1900_1931")
    if year <= 1939:
        return pick_existing(country_values, "second_spanish_republic_1931_1939")
    if year <= 1975:
        return pick_existing(country_values, "francoist_spain_1936_1975")
    return pick_existing(country_values, "spain_1975")


def timeline_portugal(year: int | None, country_values: set[str]) -> str:
    if year is None:
        return pick_existing(country_values, "portugal_1974")
    if year <= 1926:
        return pick_existing(country_values, "portugal_first_republic_1910_1926")
    if year <= 1974:
        return pick_existing(country_values, "portugal_estado_novo_1933_1974")
    return pick_existing(country_values, "portugal_1974")


def timeline_greece(year: int | None, country_values: set[str]) -> str:
    if year is None:
        return pick_existing(country_values, "hellenic_republic_1974")
    if year <= 1924:
        return pick_existing(country_values, "kingdom_of_greece_1900_1924", "kingdom_of_greece_1900_1973")
    if year <= 1935:
        return pick_existing(country_values, "second_hellenic_republic_1924_1935")
    if year <= 1973:
        return pick_existing(country_values, "kingdom_of_greece_restoration_1935_1973", "kingdom_of_greece_1900_1973")
    return pick_existing(country_values, "hellenic_republic_1974")


def timeline_poland(year: int | None, country_values: set[str]) -> str:
    if year is None:
        return pick_existing(country_values, "poland_1989")
    if year <= 1917:
        return pick_existing(country_values, "kingdom_of_poland_within_russian_empire_1900_1915", "kingdom_of_poland_within_russian_empire_1815_1915")
    if year <= 1951:
        return pick_existing(country_values, "second_polish_republic_1918_1939")
    if year <= 1989:
        return pick_existing(country_values, "polish_peoples_republic_1952_1989")
    return pick_existing(country_values, "poland_1989")


def timeline_germany(year: int | None, scope: str, country_values: set[str]) -> str:
    s = scope.lower()
    if re.search(r"\b(гдр|gdr|ddr|east germany|восточн\w+\s+германи\w+)\b", s, re.IGNORECASE):
        return pick_existing(country_values, "gdr_1949_1990")
    if re.search(r"\b(фрг|frg|brd|west germany|западн\w+\s+германи\w+)\b", s, re.IGNORECASE):
        return pick_existing(country_values, "frg_1949")
    if year is None:
        return pick_existing(country_values, "germany_1990")
    if year <= 1918:
        return pick_existing(country_values, "german_empire_1900_1918")
    if year <= 1932:
        return pick_existing(country_values, "weimar_republic_1918_1933")
    if year <= 1945:
        return pick_existing(country_values, "third_reich_1933_1945")
    if 1949 <= year <= 1990:
        return pick_existing(country_values, "frg_1949")
    return pick_existing(country_values, "germany_1990")


def timeline_yugoslavia(lang: str, year: int | None, country_values: set[str]) -> str:
    if lang == "me":
        if year is None:
            return pick_existing(country_values, "montenegro_2006", "serbia_2006")
        if year <= 1992:
            return pick_existing(country_values, "yugoslavia_socialist_1945_1992")
        if year <= 2003:
            return pick_existing(country_values, "federal_republic_of_yugoslavia_1992_2003")
        if year <= 2006:
            return pick_existing(country_values, "serbia_and_montenegro_2003_2006")
        return pick_existing(country_values, "montenegro_2006")
    if lang == "mk":
        if year is not None and year <= 1990:
            return pick_existing(country_values, "yugoslavia_socialist_1945_1992")
        if year is not None and year <= 2019:
            return pick_existing(country_values, "republic_of_macedonia_1991_2019", "north_macedonia_1991")
        return pick_existing(country_values, "north_macedonia_2019", "north_macedonia_1991")
    if lang == "sl":
        if year is not None and year <= 1990:
            return pick_existing(country_values, "yugoslavia_socialist_1945_1992")
        return pick_existing(country_values, "slovenia_1991")
    if lang == "hr":
        if year is not None and year <= 1990:
            return pick_existing(country_values, "yugoslavia_socialist_1945_1992")
        return pick_existing(country_values, "croatia_1991")
    if lang == "bs":
        if year is not None and year <= 1991:
            return pick_existing(country_values, "yugoslavia_socialist_1945_1992")
        return pick_existing(country_values, "bosnia_and_herzegovina_1992")
    if year is None:
        return pick_existing(country_values, "serbia_2006")
    if year <= 1929:
        return pick_existing(country_values, "kingdom_serbs_croats_slovenes_1918_1929")
    if year <= 1945:
        return pick_existing(country_values, "kingdom_of_yugoslavia_1929_1945")
    if year <= 1992:
        return pick_existing(country_values, "yugoslavia_socialist_1945_1992")
    if year <= 2003:
        return pick_existing(country_values, "federal_republic_of_yugoslavia_1992_2003")
    if year <= 2006:
        return pick_existing(country_values, "serbia_and_montenegro_2003_2006")
    return pick_existing(country_values, "serbia_2006")


def timeline_country_for_lang(lang: str, year: int | None, scope: str, country_values: set[str]) -> str:
    s = scope.lower()

    movement = movement_country(scope, year, country_values)
    if movement:
        return movement

    if AUSTRIA_RE.search(s):
        return timeline_austria(year, country_values)
    if SWISS_RE.search(s):
        return pick_existing(country_values, "switzerland_1900")
    if LIECHTENSTEIN_RE.search(s):
        return pick_existing(country_values, "liechtenstein_1900")
    if BELGIUM_RE.search(s):
        return pick_existing(country_values, "belgium_1900")
    if NETHERLANDS_RE.search(s):
        return pick_existing(country_values, "netherlands_1900")
    if LUXEMBOURG_RE.search(s):
        return pick_existing(country_values, "luxembourg_1900")
    if MONACO_RE.search(s):
        return pick_existing(country_values, "monaco_1900")
    if SAN_MARINO_RE.search(s):
        return pick_existing(country_values, "san_marino_1900")
    if VATICAN_RE.search(s):
        return pick_existing(country_values, "vatican_1929")
    if CYPRUS_RE.search(s):
        return pick_existing(country_values, "cyprus_1960")
    if MALTA_RE.search(s):
        return pick_existing(country_values, "malta_1964")
    if ANDORRA_RE.search(s):
        return pick_existing(country_values, "andorra_1900")
    if IRELAND_RE.search(s):
        return timeline_ireland(year, country_values)
    if UK_RE.search(s):
        return timeline_uk(year, country_values)

    if lang == "ru":
        if year is None:
            return pick_existing(country_values, "ussr")
        if year <= 1916:
            return pick_existing(country_values, "russian_empire_1900_1917")
        if year == 1917:
            return pick_existing(country_values, "russian_republic_1917")
        if year <= 1921:
            return pick_existing(country_values, "rsfsr_1917_1922", "rsfsr_1917_1991")
        if year <= 1991:
            return pick_existing(country_values, "ussr")
        return pick_existing(country_values, "russian_federation_1991")

    if lang == "uk":
        if year is None:
            return pick_existing(country_values, "ukr_ssr_1919_1991")
        if year <= 1916:
            return pick_existing(country_values, "russian_empire_1900_1917")
        if year == 1918:
            return pick_existing(country_values, "ukrainian_state_1918", "ukrainian_peoples_republic_1917_1921")
        if year <= 1921:
            return pick_existing(country_values, "ukrainian_peoples_republic_1917_1921")
        if year <= 1991:
            return pick_existing(country_values, "ukr_ssr_1919_1991")
        return pick_existing(country_values, "ukraine_1991")

    if lang == "be":
        if year is None:
            return pick_existing(country_values, "bssr_1919_1991")
        if year <= 1917:
            return pick_existing(country_values, "russian_empire_1900_1917")
        if year == 1918:
            return pick_existing(country_values, "belarusian_peoples_republic_1918_1919")
        if year <= 1991:
            return pick_existing(country_values, "bssr_1919_1991")
        return pick_existing(country_values, "belarus_1991")

    if lang == "pl":
        return timeline_poland(year, country_values)

    if lang == "de":
        return timeline_germany(year, scope, country_values)

    if lang == "et":
        if year is None:
            return pick_existing(country_values, "estonia_1991")
        if year <= 1940:
            return pick_existing(country_values, "estonia_first_republic_1918_1940")
        if year <= 1991:
            return pick_existing(country_values, "estonian_ssr_1940_1991")
        return pick_existing(country_values, "estonia_1991")

    if lang == "lv":
        if year is None:
            return pick_existing(country_values, "latvia_1991")
        if year <= 1940:
            return pick_existing(country_values, "latvia_first_republic_1918_1940")
        if year <= 1990:
            return pick_existing(country_values, "latvian_ssr_1940_1990")
        return pick_existing(country_values, "latvia_1991")

    if lang == "lt":
        if year is None:
            return pick_existing(country_values, "lithuania_1990")
        if year <= 1940:
            return pick_existing(country_values, "lithuania_first_republic_1918_1940")
        if year <= 1990:
            return pick_existing(country_values, "lithuanian_ssr_1940_1990")
        return pick_existing(country_values, "lithuania_1990")

    if lang == "fi":
        return pick_existing(country_values, "finland_1917")

    if lang in {"sr", "me", "sl", "hr", "bs", "mk"}:
        return timeline_yugoslavia(lang, year, country_values)

    if lang == "hu":
        if year is None:
            return pick_existing(country_values, "hungary_1989")
        if year <= 1918:
            return pick_existing(country_values, "austro_hungary_1900_1918", "kingdom_of_hungary_regency_1920_1946")
        if year <= 1946:
            return pick_existing(country_values, "kingdom_of_hungary_regency_1920_1946")
        if year <= 1949:
            return pick_existing(country_values, "second_hungarian_republic_1946_1949")
        if year <= 1989:
            return pick_existing(country_values, "hungarian_peoples_republic_1949_1989")
        return pick_existing(country_values, "hungary_1989")

    if lang == "ro":
        if MOLDOVA_RE.search(s):
            if year is None:
                return pick_existing(country_values, "moldova_1991")
            if year <= 1918:
                return pick_existing(country_values, "moldavian_democratic_republic_1917_1918")
            if year <= 1991:
                return pick_existing(country_values, "moldavian_ssr_1940_1991")
            return pick_existing(country_values, "moldova_1991")
        if year is None:
            return pick_existing(country_values, "romania_1989")
        if year <= 1947:
            return pick_existing(country_values, "kingdom_of_romania_1900_1947")
        if year <= 1965:
            return pick_existing(country_values, "romanian_peoples_republic_1947_1965")
        if year <= 1989:
            return pick_existing(country_values, "socialist_republic_of_romania_1965_1989")
        return pick_existing(country_values, "romania_1989")

    if lang == "bg":
        if year is None:
            return pick_existing(country_values, "bulgaria_1990")
        if year <= 1946:
            return pick_existing(country_values, "tsardom_of_bulgaria_1908_1946")
        if year <= 1990:
            return pick_existing(country_values, "peoples_republic_of_bulgaria_1946_1990")
        return pick_existing(country_values, "bulgaria_1990")

    if lang == "el":
        if CYPRUS_RE.search(s):
            return pick_existing(country_values, "cyprus_1960")
        return timeline_greece(year, country_values)

    if lang == "tr":
        if year is not None and year <= 1922:
            return pick_existing(country_values, "ottoman_empire_1900_1922")
        return pick_existing(country_values, "turkey_1923")

    if lang == "hy":
        if TRANSCAUCASIA_RE.search(s) and (year is None or year <= 1936):
            return pick_existing(country_values, "tsfsr_1922_1936", "transcaucasian_democratic_federative_republic_1918")
        if year is None:
            return pick_existing(country_values, "armenia_1991")
        if year <= 1920:
            return pick_existing(country_values, "first_republic_of_armenia_1918_1920")
        if year <= 1991:
            return pick_existing(country_values, "armenian_ssr_1920_1991")
        return pick_existing(country_values, "armenia_1991")

    if lang == "az":
        if TRANSCAUCASIA_RE.search(s) and (year is None or year <= 1936):
            return pick_existing(country_values, "tsfsr_1922_1936", "transcaucasian_democratic_federative_republic_1918")
        if year is None:
            return pick_existing(country_values, "azerbaijan_1991")
        if year <= 1920:
            return pick_existing(country_values, "azerbaijan_democratic_republic_1918_1920")
        if year <= 1991:
            return pick_existing(country_values, "azerbaijan_ssr_1920_1991")
        return pick_existing(country_values, "azerbaijan_1991")

    if lang == "ka":
        if TRANSCAUCASIA_RE.search(s) and (year is None or year <= 1936):
            return pick_existing(country_values, "tsfsr_1922_1936", "transcaucasian_democratic_federative_republic_1918")
        if year is None:
            return pick_existing(country_values, "georgia_1991")
        if year <= 1921:
            return pick_existing(country_values, "democratic_republic_of_georgia_1918_1921")
        if year <= 1991:
            return pick_existing(country_values, "georgian_ssr_1921_1991")
        return pick_existing(country_values, "georgia_1991")

    if lang == "kk":
        if year is None:
            return pick_existing(country_values, "kazakhstan_1991")
        if year <= 1991:
            return pick_existing(country_values, "kazakh_ssr_1936_1991")
        return pick_existing(country_values, "kazakhstan_1991")

    if lang == "sv":
        return pick_existing(country_values, "sweden_1900")
    if lang == "no":
        if year is not None and year <= 1905:
            return pick_existing(country_values, "norway_in_union_with_sweden_1900_1905")
        return pick_existing(country_values, "norway_1905")
    if lang == "da":
        return pick_existing(country_values, "denmark_1900")
    if lang == "is":
        if year is not None and year <= 1944:
            return pick_existing(country_values, "iceland_kingdom_1918_1944")
        return pick_existing(country_values, "iceland_1944")

    if lang == "en":
        if MALTA_RE.search(s):
            return pick_existing(country_values, "malta_1964")
        if IRELAND_RE.search(s):
            return timeline_ireland(year, country_values)
        return timeline_uk(year, country_values)

    if lang == "fr":
        if BELGIUM_RE.search(s):
            return pick_existing(country_values, "belgium_1900")
        if LUXEMBOURG_RE.search(s):
            return pick_existing(country_values, "luxembourg_1900")
        if MONACO_RE.search(s):
            return pick_existing(country_values, "monaco_1900")
        return timeline_france(year, country_values)

    if lang == "nl":
        return pick_existing(country_values, "netherlands_1900")
    if lang == "lb":
        return pick_existing(country_values, "luxembourg_1900")
    if lang == "it":
        if VATICAN_RE.search(s):
            return pick_existing(country_values, "vatican_1929")
        if SAN_MARINO_RE.search(s):
            return pick_existing(country_values, "san_marino_1900")
        return timeline_italy(year, country_values)
    if lang == "es":
        return timeline_spain(year, country_values)
    if lang == "pt":
        return timeline_portugal(year, country_values)
    if lang == "ca":
        return pick_existing(country_values, "andorra_1900")
    if lang in {"eu", "gl"}:
        return timeline_spain(year, country_values)
    if lang == "mt":
        return pick_existing(country_values, "malta_1964")
    if lang == "ga":
        return timeline_ireland(year, country_values)
    if lang == "cy":
        return timeline_uk(year, country_values)
    if lang == "sq":
        if year is None:
            return pick_existing(country_values, "albania_1991")
        if year <= 1939:
            return pick_existing(country_values, "kingdom_of_albania_1928_1939")
        if year <= 1976:
            return pick_existing(country_values, "peoples_republic_of_albania_1946_1976")
        if year <= 1991:
            return pick_existing(country_values, "peoples_socialist_republic_of_albania_1976_1991")
        return pick_existing(country_values, "albania_1991")

    return "other_countries"


def forced_country_by_id(song_id: str, country_values: set[str]) -> str | None:
    sid = norm_text(song_id).lower()
    if sid.startswith("apemigr_"):
        return pick_existing(country_values, "white_emigration")
    if sid.startswith("apcw_"):
        return pick_existing(country_values, "russian_civil_war_1917_1922")
    if sid.startswith("aprjw_") or sid.startswith("rjw_"):
        return pick_existing(country_values, "russian_empire_1900_1917")
    if sid.startswith("apww1_") or sid.startswith("ap18_") or sid.startswith("aplit17_") or sid.startswith("aprev17_"):
        return pick_existing(country_values, "russian_empire_1900_1917")
    return None


def classify_country(
    row: SongRow,
    signals: RowSignals,
    lang: str,
    year: int | None,
    country_values: set[str],
    aliases: dict[str, str],
    policy: FilterPolicy,
) -> tuple[str, str, bool, bool]:
    scope = signals.scope_short
    old_country = aliases.get(fold_alias(row.country), "")
    if old_country not in country_values:
        old_country = ""

    forced = forced_country_by_id(row.id, country_values)
    if forced:
        return forced, "country_forced_by_id", False, False

    new_country = timeline_country_for_lang(lang, year, scope, country_values)
    if new_country not in country_values:
        new_country = "other_countries"
    if old_country in MOVEMENT_COUNTRIES and new_country not in MOVEMENT_COUNTRIES:
        return old_country, "keep_old_movement", False, False

    ambiguous, low_signal = is_country_ambiguous(signals.geo_votes, signals.geo_lyrics_votes)
    if ambiguous:
        if policy.country_ambiguity_policy == "first_match" and signals.geo_votes:
            ranked = sorted(signals.geo_votes.items(), key=lambda item: item[1], reverse=True)
            voted = ranked[0][0]
            if voted in country_values:
                new_country = voted
                return new_country, "country_ambiguous_first_match", True, low_signal
        if policy.country_ambiguity_policy == "keep_old" and old_country:
            return old_country, "country_ambiguous_keep_old", True, low_signal
        new_country = "other_countries"
        if new_country in country_values:
            return new_country, "country_ambiguous_to_other", True, low_signal

    if not old_country:
        return new_country, "country_recomputed_empty_old", ambiguous, low_signal
    if old_country != new_country:
        return new_country, "country_recomputed", ambiguous, low_signal
    return new_country, "keep_old_country", ambiguous, low_signal


def enforce_year_bounds(country: str, year: int | None) -> int | None:
    if year is None:
        return None
    bounds = COUNTRY_BOUNDS.get(country)
    if not bounds:
        return year
    start, end = bounds
    if start is not None and year < start:
        return None
    if end is not None and year > end:
        return None
    return year


def load_songs(path: Path) -> list[SongRow]:
    sql = path.read_text(encoding="utf-8", errors="replace")
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
          coalesce(lyrics,''),
          coalesce(source,''),
          coalesce(notes,''),
          lower(trim(coalesce(status,'published'))),
          coalesce(created_at,'')
        FROM songs
        """
    ).fetchall()
    conn.close()
    return [SongRow(*row) for row in rows]


def sql_str(value: str) -> str:
    return "'" + norm_text(value).replace("'", "''") + "'"


def build_updates(
    rows: list[SongRow],
    lang_mod,
    lang_values: set[str],
    country_values: set[str],
    aliases: dict[str, str],
    policy: FilterPolicy,
) -> tuple[list[str], dict]:
    updates: list[str] = []
    lang_pairs: Counter[tuple[str, str]] = Counter()
    country_pairs: Counter[tuple[str, str]] = Counter()
    lang_reasons: Counter[str] = Counter()
    year_reasons: Counter[str] = Counter()
    country_reasons: Counter[str] = Counter()
    status_reasons: Counter[str] = Counter()
    validation_flags: Counter[str] = Counter()

    changed = 0
    lang_changed = 0
    year_changed = 0
    country_changed = 0
    text_changed = 0
    status_changed = 0
    notes_cleaned = 0
    mixed_tokens_fixed = 0
    notes_meta_removed_count = 0
    title_repaired_count = 0
    lang_forced_count = 0
    country_ambiguous_count = 0
    country_ambiguous_to_other_count = 0
    examples: list[dict] = []

    duplicate_drops = duplicate_drop_ids(rows)

    for row in rows:
        row_signals = build_row_signals(row, country_values, policy)
        old_lang = row.lang if row.lang in lang_values else "ru"
        pred_lang, lang_conf, lang_reason, lang_forced = classify_language(
            row,
            row_signals,
            lang_mod,
            lang_values,
            policy,
        )
        if pred_lang not in lang_values:
            pred_lang = old_lang
        final_lang = pred_lang if should_apply_language_change(old_lang, pred_lang, lang_conf, lang_reason, lang_mod) else old_lang
        if lang_forced and final_lang != old_lang:
            lang_forced_count += 1

        old_title = norm_text(row.title)
        old_subtitle = norm_text(row.subtitle)
        old_lyrics = norm_text(row.lyrics)
        old_source = norm_text(row.source)
        old_notes = norm_text(row.notes)
        old_status = row.status if row.status in {"draft", "published"} else "published"

        title_fixed, t_mixed = fix_mixed_script_text(old_title, final_lang)
        subtitle_fixed, s_mixed = fix_mixed_script_text(old_subtitle, final_lang)
        lyrics_fixed, l_mixed = fix_mixed_script_text(old_lyrics, final_lang)
        mixed_tokens_fixed += (t_mixed + s_mixed + l_mixed)

        clean_title = normalize_inline(title_fixed)
        clean_subtitle = normalize_inline(subtitle_fixed)
        clean_lyrics = lyrics_fixed
        clean_source, source_removed_meta = clean_import_meta_text(old_source)
        clean_notes, notes_removed_meta = clean_import_meta_text(old_notes)
        notes_meta_removed_count += source_removed_meta + notes_removed_meta
        clean_title, clean_lyrics, clean_notes, title_repaired = repair_title_from_lyrics(clean_title, clean_lyrics, clean_notes)
        if title_repaired:
            title_repaired_count += 1
        if is_polluted_title(clean_title):
            validation_flags["title_pollution"] += 1

        old_year = parse_year(row.year)
        row_clean = SongRow(
            id=row.id,
            title=clean_title,
            subtitle=clean_subtitle,
            lang=final_lang,
            country=row.country,
            year=row.year,
            lyrics=clean_lyrics,
            source=clean_source,
            notes=clean_notes,
            status=old_status,
            created_at=row.created_at,
        )
        clean_signals = build_row_signals(row_clean, country_values, policy)
        new_year, year_reason = infer_song_year(row_clean, clean_signals)

        new_country, country_reason, country_ambiguous, country_low_signal = classify_country(
            row_clean,
            clean_signals,
            final_lang,
            new_year,
            country_values,
            aliases,
            policy,
        )
        if country_ambiguous:
            country_ambiguous_count += 1
            validation_flags["country_ambiguous"] += 1
        if country_low_signal:
            validation_flags["country_low_signal"] += 1
        if country_reason == "country_ambiguous_to_other":
            country_ambiguous_to_other_count += 1

        new_year = enforce_year_bounds(new_country, new_year)
        old_country = aliases.get(fold_alias(row.country), "")
        if old_country not in country_values:
            old_country = ""

        clean_title, clean_notes, final_lang = validate_row_update(
            clean_title=clean_title,
            clean_notes=clean_notes,
            final_lang=final_lang,
            signals=clean_signals,
            validation_flags=validation_flags,
        )

        new_status = old_status
        status_reason = ""
        if is_probably_non_song(clean_title, clean_lyrics):
            new_status = "draft"
            status_reason = "non_song"
        elif row.id in duplicate_drops:
            new_status = "draft"
            status_reason = "duplicate"

        set_parts: list[str] = []
        if final_lang != old_lang:
            set_parts.append(f"lang={sql_str(final_lang)}")
            lang_changed += 1
            lang_pairs[(old_lang, final_lang)] += 1
            lang_reasons[lang_reason] += 1
            if "lang_scope_conflict" in lang_reason:
                validation_flags["lang_scope_conflict"] += 1

        if new_year != old_year:
            set_parts.append("year=NULL" if new_year is None else f"year={sql_str(str(new_year))}")
            year_changed += 1
            year_reasons[year_reason] += 1

        if new_country != old_country:
            set_parts.append(f"country={sql_str(new_country)}")
            country_changed += 1
            country_pairs[(old_country or "<empty>", new_country)] += 1
            country_reasons[country_reason] += 1

        row_text_changed = False
        if clean_title != old_title:
            set_parts.append(f"title={sql_str(clean_title)}")
            row_text_changed = True
        if clean_subtitle != old_subtitle:
            set_parts.append(f"subtitle={sql_str(clean_subtitle)}")
            row_text_changed = True
        if clean_lyrics != old_lyrics:
            set_parts.append(f"lyrics={sql_str(clean_lyrics)}")
            row_text_changed = True
        if clean_source != old_source:
            set_parts.append(f"source={sql_str(clean_source)}")
            row_text_changed = True
        if clean_notes != old_notes:
            set_parts.append(f"notes={sql_str(clean_notes)}")
            row_text_changed = True
            notes_cleaned += 1
        if row_text_changed:
            text_changed += 1

        if new_status != old_status:
            set_parts.append(f"status={sql_str(new_status)}")
            status_changed += 1
            if status_reason:
                status_reasons[status_reason] += 1

        if not set_parts:
            continue

        set_parts.append("updated_at=datetime('now')")
        updates.append("UPDATE songs SET " + ", ".join(set_parts) + f" WHERE id={sql_str(row.id)};")
        changed += 1

        if len(examples) < 400:
            examples.append(
                {
                    "id": row.id,
                    "title": row.title,
                    "old_lang": old_lang,
                    "new_lang": final_lang,
                    "lang_conf": round(lang_conf, 4),
                    "lang_reason": lang_reason,
                    "old_year": old_year,
                    "new_year": new_year,
                    "year_reason": year_reason,
                    "old_country": old_country,
                    "new_country": new_country,
                    "country_reason": country_reason,
                    "old_status": old_status,
                    "new_status": new_status,
                    "status_reason": status_reason,
                    "text_changed": row_text_changed,
                }
            )

    report = {
        "total": len(rows),
        "changed": changed,
        "lang_changed": lang_changed,
        "year_changed": year_changed,
        "country_changed": country_changed,
        "text_changed": text_changed,
        "status_changed": status_changed,
        "notes_cleaned": notes_cleaned,
        "notes_meta_removed_count": notes_meta_removed_count,
        "mixed_tokens_fixed": mixed_tokens_fixed,
        "title_repaired_count": title_repaired_count,
        "lang_forced_count": lang_forced_count,
        "country_ambiguous_count": country_ambiguous_count,
        "country_ambiguous_to_other_count": country_ambiguous_to_other_count,
        "duplicates_drafted": status_reasons.get("duplicate", 0),
        "non_song_drafted": status_reasons.get("non_song", 0),
        "validation_flags": dict(validation_flags),
        "policy": {
            "country_ambiguity_policy": policy.country_ambiguity_policy,
            "cyr_lang_switch_policy": policy.cyr_lang_switch_policy,
            "max_scope_chars": policy.max_scope_chars,
            "sample_seed": policy.sample_seed,
        },
        "lang_pair_counts": [{"old_lang": a, "new_lang": b, "count": c} for (a, b), c in lang_pairs.most_common()],
        "country_pair_counts": [{"old_country": a, "new_country": b, "count": c} for (a, b), c in country_pairs.most_common()],
        "lang_reason_counts": [{"reason": r, "count": c} for r, c in lang_reasons.most_common()],
        "year_reason_counts": [{"reason": r, "count": c} for r, c in year_reasons.most_common()],
        "country_reason_counts": [{"reason": r, "count": c} for r, c in country_reasons.most_common()],
        "status_reason_counts": [{"reason": r, "count": c} for r, c in status_reasons.most_common()],
        "examples": examples,
        "update_statements": len(updates),
    }
    return updates, report


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


def main() -> None:
    parser = argparse.ArgumentParser(description="Global language/year/country refilter by timeline heuristics.")
    parser.add_argument("--db-name", default="euro-songbook-db")
    parser.add_argument("--refresh-export", action="store_true")
    parser.add_argument("--execute-remote", action="store_true")
    parser.add_argument(
        "--country-ambiguity-policy",
        choices=["keep_old", "other_countries", "first_match"],
        default="other_countries",
    )
    parser.add_argument(
        "--cyr-lang-switch-policy",
        choices=["balanced", "aggressive", "strict"],
        default="aggressive",
    )
    parser.add_argument("--max-scope-chars", type=int, default=3200)
    parser.add_argument("--sample-seed", type=int, default=42)
    args = parser.parse_args()

    REPORT_JSON.parent.mkdir(parents=True, exist_ok=True)
    ensure_export(args.db_name, args.refresh_export)

    lang_values = set(parse_catalog_values("SONG_LANGUAGE_VALUES"))
    country_values = set(parse_catalog_values("SONG_COUNTRY_VALUES"))
    country_values.update({"other_countries", "other_movements"})
    aliases = build_country_aliases(country_values)
    policy = FilterPolicy(
        country_ambiguity_policy=args.country_ambiguity_policy,
        cyr_lang_switch_policy=args.cyr_lang_switch_policy,
        max_scope_chars=max(600, args.max_scope_chars),
        sample_seed=args.sample_seed,
    )

    lang_mod = load_lang_module()
    rows = load_songs(EXPORT_SQL)
    updates, report = build_updates(rows, lang_mod, lang_values, country_values, aliases, policy)

    UPDATE_SQL.write_text("\n".join(["-- generated by refilter_song_catalog.py", *updates, ""]), encoding="utf-8")
    report["update_sql"] = str(UPDATE_SQL)
    report["export_sql"] = str(EXPORT_SQL)
    REPORT_JSON.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    print(json.dumps({k: report[k] for k in ["total", "changed", "lang_changed", "year_changed", "country_changed", "update_statements"]}, ensure_ascii=False))
    print("top country changes:")
    for row in report["country_pair_counts"][:30]:
        print(row)
    print("top language changes:")
    for row in report["lang_pair_counts"][:30]:
        print(row)

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
    run_cmd(cmd, ROOT, timeout_ms=420000)
    print("Remote updates applied.")


if __name__ == "__main__":
    try:
        main()
    except subprocess.CalledProcessError as exc:
        print(f"Command failed: {exc}", file=sys.stderr)
        raise
