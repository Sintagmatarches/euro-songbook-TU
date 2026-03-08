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
WORD_RE = re.compile(r"[0-9A-Za-z\u00C0-\u024F\u0400-\u052f]+")

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


def classify_language(row: SongRow, lang_mod, lang_values: set[str]) -> tuple[str, float, str]:
    old_lang = row.lang if row.lang in lang_values else "ru"
    core = lang_mod.SongRow(row.id, row.title, row.subtitle, old_lang, row.lyrics, "", "")
    pred, conf, reason = lang_mod.classify_song(core)

    if (not pred or conf < 0.55) and len(norm_text(row.lyrics).strip()) < 220:
        full = lang_mod.SongRow(row.id, row.title, row.subtitle, old_lang, row.lyrics, row.source, row.notes)
        p2, c2, r2 = lang_mod.classify_song(full)
        if c2 > conf:
            pred, conf, reason = p2, c2, r2

    if pred not in lang_values:
        pred, conf, reason = old_lang, 0.0, "keep_old_unknown"

    sample = "\n".join([row.title, row.subtitle, row.lyrics[:7000]])
    cyr, lat = count_scripts(sample)
    cyr_langs = set(getattr(lang_mod, "CYR_LANGS", {"ru", "uk", "be", "bg", "mk", "sr", "kk"}))
    if cyr >= max(28, int(lat * 1.2)) and pred not in cyr_langs:
        return (old_lang if old_lang in cyr_langs else "ru"), 1.0, "script_guard_cyr"
    if lat >= max(30, int(cyr * 1.25)) and pred in cyr_langs and old_lang not in cyr_langs:
        return old_lang, 0.9, "script_guard_lat_keep_old"

    return pred, float(conf), str(reason)


def should_apply_language_change(old_lang: str, new_lang: str, confidence: float, reason: str, lang_mod) -> bool:
    if old_lang == new_lang:
        return False
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
    lines = []
    for raw in normalize_newlines(text).splitlines():
        line = raw.strip()
        if not line:
            lines.append(raw)
            continue
        if IMPORT_META_LINE_RE.match(line):
            continue
        # Telegram import metadata often stored in one inline line with pipes.
        if IMPORT_META_INLINE_RE.search(line) and "|" in line:
            continue
        lines.append(raw)
    return "\n".join(lines).strip()


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
            similar = difflib.SequenceMatcher(a=title_norm, b=keeper_title).ratio() >= 0.82
            if title_norm == keeper_title or title_norm in keeper_title or keeper_title in title_norm or similar:
                drops[row.id] = keeper.id
    return drops


def infer_song_year(row: SongRow) -> tuple[int | None, str]:
    old = parse_year(row.year)
    source_clean = drop_import_meta_lines(row.source)
    notes_clean = drop_import_meta_lines(row.notes)
    tail = "\n".join(normalize_newlines(row.lyrics).splitlines()[-10:])
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


def classify_country(row: SongRow, lang: str, year: int | None, country_values: set[str], aliases: dict[str, str]) -> tuple[str, str]:
    scope = "\n".join([
        norm_text(row.title),
        norm_text(row.subtitle),
        norm_text(row.source)[:2200],
        norm_text(row.notes)[:2200],
        normalize_newlines(row.lyrics)[:3200],
    ])
    old_country = aliases.get(fold_alias(row.country), "")
    if old_country not in country_values:
        old_country = ""

    forced = forced_country_by_id(row.id, country_values)
    if forced:
        return forced, "country_forced_by_id"

    new_country = timeline_country_for_lang(lang, year, scope, country_values)
    if new_country not in country_values:
        new_country = "other_countries"
    if old_country in MOVEMENT_COUNTRIES and new_country not in MOVEMENT_COUNTRIES:
        return old_country, "keep_old_movement"
    if not old_country:
        return new_country, "country_recomputed_empty_old"
    if old_country != new_country:
        return new_country, "country_recomputed"
    return new_country, "keep_old_country"


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


def build_updates(rows: list[SongRow], lang_mod, lang_values: set[str], country_values: set[str], aliases: dict[str, str]) -> tuple[list[str], dict]:
    updates: list[str] = []
    lang_pairs: Counter[tuple[str, str]] = Counter()
    country_pairs: Counter[tuple[str, str]] = Counter()
    lang_reasons: Counter[str] = Counter()
    year_reasons: Counter[str] = Counter()
    country_reasons: Counter[str] = Counter()
    status_reasons: Counter[str] = Counter()

    changed = 0
    lang_changed = 0
    year_changed = 0
    country_changed = 0
    text_changed = 0
    status_changed = 0
    notes_cleaned = 0
    mixed_tokens_fixed = 0
    examples: list[dict] = []

    duplicate_drops = duplicate_drop_ids(rows)

    for row in rows:
        old_lang = row.lang if row.lang in lang_values else "ru"
        pred_lang, lang_conf, lang_reason = classify_language(row, lang_mod, lang_values)
        if pred_lang not in lang_values:
            pred_lang = old_lang
        final_lang = pred_lang if should_apply_language_change(old_lang, pred_lang, lang_conf, lang_reason, lang_mod) else old_lang

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
        clean_source = drop_import_meta_lines(old_source).strip()
        clean_notes = drop_import_meta_lines(old_notes).strip()

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
        new_year, year_reason = infer_song_year(row_clean)

        new_country, country_reason = classify_country(row_clean, final_lang, new_year, country_values, aliases)
        new_year = enforce_year_bounds(new_country, new_year)
        old_country = aliases.get(fold_alias(row.country), "")
        if old_country not in country_values:
            old_country = ""

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
        "mixed_tokens_fixed": mixed_tokens_fixed,
        "duplicates_drafted": status_reasons.get("duplicate", 0),
        "non_song_drafted": status_reasons.get("non_song", 0),
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
    args = parser.parse_args()

    REPORT_JSON.parent.mkdir(parents=True, exist_ok=True)
    ensure_export(args.db_name, args.refresh_export)

    lang_values = set(parse_catalog_values("SONG_LANGUAGE_VALUES"))
    country_values = set(parse_catalog_values("SONG_COUNTRY_VALUES"))
    country_values.update({"other_countries", "other_movements"})
    aliases = build_country_aliases(country_values)

    lang_mod = load_lang_module()
    rows = load_songs(EXPORT_SQL)
    updates, report = build_updates(rows, lang_mod, lang_values, country_values, aliases)

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
