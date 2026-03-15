from __future__ import annotations

import argparse
import json
import re
import sqlite3
import subprocess
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable


ROOT = Path(__file__).resolve().parent.parent
EXPORT_SQL = ROOT / "tmp_songs_export.sql"
UPDATE_SQL = ROOT / "tmp_repair_existing_songs.sql"
REPORT_JSON = ROOT / "out" / "repair_existing_songs_report.json"

YEAR_MIN = 1800
YEAR_MAX = 2026

CYR_RE = re.compile(r"[\u0400-\u052f]")
LAT_RE = re.compile(r"[A-Za-z\u00C0-\u024F\u1E00-\u1EFF]")
GR_RE = re.compile(r"[\u0370-\u03ff\u1f00-\u1fff]")
WORD_RE = re.compile(r"[0-9A-Za-z\u00C0-\u024F\u0370-\u03ff\u0400-\u052f\u1E00-\u1EFF]+")
YEAR_RE = re.compile(r"\b(18\d{2}|19\d{2}|20\d{2})\b")
YEAR_CONTEXT_RE = re.compile(
    r"\b(исполнен|запис|record|recording|year|год|г\.|дата|date|от|изд|вып|феврал|март|апрел|май|июн|июл|август|сентябр|октябр|ноябр|декабр)\b",
    re.IGNORECASE,
)
STANDALONE_YEAR_RE = re.compile(r"^\s*(18\d{2}|19\d{2}|20\d{2})\s*$")

TITLE_LIST_PREFIX_RE = re.compile(
    r"^\s*\d+\s*(?:[).\-:]\s*|\s+(?=(?:исполняет|исполняют|из|from)\b))",
    re.IGNORECASE,
)
TITLE_BAD_RE = re.compile(
    r"^\s*(?:\d+\s*)?(?:исполняет|исполняют|sings?|performed by|performer)\s*[:\-]",
    re.IGNORECASE,
)
TITLE_FILM_RE = re.compile(
    r"^\s*(?:из|from)\s+(?:к/ф|к-ф|м/ф|м-ф|кинофильма|фильма)\b",
    re.IGNORECASE,
)
TITLE_PUNCT_ONLY_RE = re.compile(r"^\s*[-–—.:]+\s*$")

LEADING_NOISE_PATTERNS = [
    re.compile(r"^\s*\d+\s*(?:[).\-:]?\s*)?исполня(?:ет|ют)\b", re.IGNORECASE),
    re.compile(r"^\s*исполня(?:ет|ют)\b", re.IGNORECASE),
    re.compile(r"^\s*(?:исполнение|recorded|recording)\b", re.IGNORECASE),
    re.compile(r"^\s*\d+\s*(?:[).\-:])\s*(?:исполнение|исполня(?:ет|ют))\b", re.IGNORECASE),
    re.compile(r"^\s*(?:музыка|слова|автор|композитор|текст)\s*:", re.IGNORECASE),
]

LANG_VALUES = {
    "ru", "uk", "be", "pl", "lt", "lv", "et", "fi", "en", "sq", "hy", "az", "eu", "bs", "bg", "ca", "hr", "cs", "da",
    "nl", "fo", "fr", "gl", "ka", "de", "el", "hu", "is", "ga", "it", "kk", "lb", "mk", "mt", "no", "pt", "ro",
    "sr", "sk", "sl", "es", "sv", "tr", "cy", "ja",
}

CYR_LANGS = {"ru", "uk", "be", "bg", "mk", "sr", "kk"}
LAT_LANGS = {
    "pl", "lt", "lv", "et", "fi", "en", "sq", "az", "eu", "bs", "ca", "hr", "cs", "da", "nl", "fo", "fr", "gl", "de",
    "hu", "is", "ga", "it", "lb", "mt", "no", "pt", "ro", "sk", "sl", "es", "sv", "tr", "cy",
}

STOPWORDS: dict[str, set[str]] = {
    "ru": {"и", "в", "не", "на", "что", "как", "мы", "я", "ты", "но", "за", "с", "по", "это", "когда"},
    "uk": {"і", "в", "не", "на", "що", "як", "ми", "я", "ти", "але", "за", "це", "мене", "тобі", "пісня"},
    "be": {"і", "ў", "не", "на", "што", "як", "мы", "я", "ты", "але", "гэта", "калі", "дзе", "дзякуй", "няма"},
    "bg": {"и", "в", "не", "на", "че", "как", "ние", "аз", "ти", "но", "за", "с", "това", "към", "ще"},
    "mk": {"и", "во", "не", "на", "што", "како", "ние", "јас", "ти", "но", "за", "ова", "ќе", "со", "тоа"},
    "sr": {"i", "u", "ne", "na", "što", "kako", "mi", "ja", "ti", "ali", "za", "je", "da", "se", "sam"},
    "kk": {"және", "мен", "сен", "ол", "біз", "үшін", "бұл", "емес", "деп", "болып", "қалай", "тағы"},
    "en": {"the", "and", "of", "to", "in", "for", "with", "is", "we", "you", "our", "that", "on", "at", "from"},
    "de": {"und", "der", "die", "das", "ein", "eine", "nicht", "ist", "ich", "du", "wir", "mit", "zu", "den", "dem"},
    "fr": {"le", "la", "les", "de", "des", "et", "dans", "sur", "avec", "pour", "nous", "vous", "une", "que", "qui"},
    "es": {"el", "la", "los", "las", "de", "y", "en", "con", "para", "que", "nos", "una", "como", "por", "del"},
    "pt": {"o", "a", "os", "as", "de", "e", "em", "com", "para", "que", "não", "nao", "uma", "por", "dos"},
    "it": {"il", "la", "gli", "le", "di", "e", "in", "con", "per", "che", "noi", "voi", "una", "del", "della"},
    "nl": {"de", "het", "een", "en", "van", "in", "met", "voor", "wij", "jij", "niet", "dat", "op", "te", "is"},
    "pl": {"i", "w", "na", "nie", "to", "że", "ze", "jak", "my", "ja", "ty", "za", "się", "z", "do"},
    "ro": {"și", "si", "în", "in", "cu", "la", "pe", "din", "să", "sa", "este", "nu", "un", "o", "de"},
    "et": {"ja", "ei", "on", "see", "mis", "kui", "me", "ma", "sa", "te", "üks", "voi", "ning", "oma", "sind"},
    "lv": {"un", "ir", "ne", "ka", "es", "tu", "mēs", "mes", "jūs", "jus", "ar", "par", "vai", "no", "tas"},
    "lt": {"ir", "ne", "kad", "kaip", "aš", "as", "tu", "mes", "jūs", "jus", "su", "už", "uz", "tai", "yra"},
    "fi": {"ja", "ei", "on", "se", "kun", "me", "minä", "mina", "sinä", "sina", "te", "että", "etta", "olen", "voi"},
    "cs": {"a", "v", "na", "ne", "že", "ze", "jak", "my", "já", "ja", "ty", "s", "pro", "to", "je"},
    "sk": {"a", "v", "na", "ne", "že", "ze", "ako", "my", "ja", "ty", "s", "pre", "to", "je", "som"},
    "sl": {"in", "na", "ne", "je", "da", "kot", "mi", "jaz", "ti", "za", "s", "to", "sem", "so", "se"},
    "hr": {"i", "u", "na", "ne", "je", "da", "kao", "mi", "ja", "ti", "za", "s", "to", "sam", "se"},
    "bs": {"i", "u", "na", "ne", "je", "da", "kao", "mi", "ja", "ti", "za", "s", "to", "sam", "se"},
    "hu": {"és", "es", "a", "az", "nem", "hogy", "mint", "mi", "én", "en", "te", "van", "egy", "még", "meg"},
    "da": {"og", "i", "på", "pa", "ikke", "det", "vi", "jeg", "du", "med", "for", "som", "er", "til", "af"},
    "no": {"og", "i", "på", "pa", "ikke", "det", "vi", "jeg", "du", "med", "for", "som", "er", "til", "av"},
    "sv": {"och", "i", "på", "pa", "inte", "det", "vi", "jag", "du", "med", "för", "for", "som", "är", "ar"},
    "is": {"og", "í", "i", "á", "a", "ekki", "við", "vid", "ég", "eg", "þú", "thu", "með", "med", "er"},
    "fo": {"og", "í", "i", "á", "a", "ikki", "vit", "eg", "tu", "við", "vid", "við", "er", "tað", "tao"},
    "ga": {"agus", "an", "na", "ní", "ni", "mé", "me", "tú", "tu", "le", "is", "do", "ar", "seo", "seo"},
    "sq": {"dhe", "në", "ne", "jo", "është", "eshte", "unë", "une", "ti", "ne", "ju", "me", "për", "per", "nga"},
    "az": {"və", "ve", "bir", "bu", "mən", "men", "sən", "sen", "biz", "siz", "üçün", "ucun", "deyil", "ilə", "ile"},
    "eu": {"eta", "da", "ez", "bat", "hau", "ni", "zu", "gu", "zuek", "izan", "dut", "duzu", "nahi", "bai", "edo"},
    "ca": {"el", "la", "els", "les", "de", "i", "en", "amb", "per", "que", "nosaltres", "vosaltres", "una", "del", "com"},
    "gl": {"o", "a", "os", "as", "de", "e", "en", "con", "para", "que", "nós", "nos", "vós", "vos", "unha"},
    "lb": {"an", "d'", "de", "an", "a", "ass", "net", "ech", "du", "mir", "dir", "mat", "fir", "wat", "sinn"},
    "mt": {"u", "il", "tal", "li", "ma", "mhux", "jien", "int", "aħna", "ahna", "intom", "għal", "ghal", "dan", "hekk"},
    "tr": {"ve", "bir", "bu", "ben", "sen", "biz", "siz", "için", "icin", "değil", "degil", "ile", "ama", "çok", "cok"},
    "cy": {"a", "ac", "yn", "ar", "nid", "fi", "chi", "ni", "ti", "niw", "chi", "gyda", "am", "mae", "sy"},
}

DIACRITICS: dict[str, re.Pattern[str]] = {
    "de": re.compile(r"[äöüß]", re.IGNORECASE),
    "fr": re.compile(r"[àâæçéèêëîïôœùûüÿ]", re.IGNORECASE),
    "es": re.compile(r"[áéíóúñ¡¿]", re.IGNORECASE),
    "pt": re.compile(r"[áâãàçéêíóôõú]", re.IGNORECASE),
    "it": re.compile(r"[àèéìíîòóùú]", re.IGNORECASE),
    "nl": re.compile(r"[ëï]", re.IGNORECASE),
    "pl": re.compile(r"[ąćęłńóśźż]", re.IGNORECASE),
    "ro": re.compile(r"[ăâîșşțţ]", re.IGNORECASE),
    "et": re.compile(r"[õäöü]", re.IGNORECASE),
    "lv": re.compile(r"[āčēģīķļņšūž]", re.IGNORECASE),
    "lt": re.compile(r"[ąčęėįšųūž]", re.IGNORECASE),
    "fi": re.compile(r"[äöå]", re.IGNORECASE),
    "cs": re.compile(r"[áčďéěíňóřšťúůýž]", re.IGNORECASE),
    "sk": re.compile(r"[áäčďéíĺľňóôŕšťúýž]", re.IGNORECASE),
    "sl": re.compile(r"[čšž]", re.IGNORECASE),
    "hr": re.compile(r"[čćđšž]", re.IGNORECASE),
    "bs": re.compile(r"[čćđšž]", re.IGNORECASE),
    "hu": re.compile(r"[áéíóöőúüű]", re.IGNORECASE),
    "da": re.compile(r"[æøå]", re.IGNORECASE),
    "no": re.compile(r"[æøå]", re.IGNORECASE),
    "sv": re.compile(r"[äöå]", re.IGNORECASE),
    "is": re.compile(r"[áðéíóúýþæö]", re.IGNORECASE),
    "fo": re.compile(r"[áðíóúýæø]", re.IGNORECASE),
    "ga": re.compile(r"[áéíóú]", re.IGNORECASE),
    "sq": re.compile(r"[ëç]", re.IGNORECASE),
    "az": re.compile(r"[əğıöşüç]", re.IGNORECASE),
    "eu": re.compile(r"[ñç]", re.IGNORECASE),
    "ca": re.compile(r"[àèéíïòóúüç]", re.IGNORECASE),
    "gl": re.compile(r"[áéíóúñç]", re.IGNORECASE),
    "lb": re.compile(r"[äëé]", re.IGNORECASE),
    "mt": re.compile(r"[ċġħż]", re.IGNORECASE),
    "tr": re.compile(r"[çğıöşüİ]", re.IGNORECASE),
    "cy": re.compile(r"[ŵŷ]", re.IGNORECASE),
}

UNIQUE_CHAR_BONUS: dict[str, str] = {
    "uk": "іїєґ",
    "be": "ў",
    "kk": "әңғүұқөһ",
    "mk": "ѓѕјљњќ",
    "sr": "ђјљњћџ",
    "bg": "ъ",
    "et": "õ",
    "tr": "ğışİ",
    "az": "əğı",
    "cy": "ŵŷ",
    "da": "æøå",
    "no": "æøå",
    "sv": "å",
    "pl": "ł",
    "ro": "ăâîșț",
    "de": "ß",
}

CYR_MARKERS: dict[str, str] = {
    "ru": "ыэё",
    "uk": "іїєґ",
    "be": "ў",
    "bg": "ъ",
    "mk": "ѓѕјљњќ",
    "sr": "ђјљњћџ",
    "kk": "әқғүұһөң",
}

LANG_HINTS: list[tuple[str, re.Pattern[str]]] = [
    ("ru", re.compile(r"\b(русск|russian|русский)\w*\b", re.IGNORECASE)),
    ("uk", re.compile(r"\b(україн|ukrainian|украин)\w*\b", re.IGNORECASE)),
    ("be", re.compile(r"\b(беларус|belarus|белорус)\w*\b", re.IGNORECASE)),
    ("de", re.compile(r"\b(немец|german|deutsch)\w*\b", re.IGNORECASE)),
    ("et", re.compile(r"\b(эстон|estonian|eesti)\w*\b", re.IGNORECASE)),
    ("lv", re.compile(r"\b(латыш|latvian|latvie)\w*\b", re.IGNORECASE)),
    ("lt", re.compile(r"\b(литов|lithuanian|lietuvi)\w*\b", re.IGNORECASE)),
    ("pl", re.compile(r"\b(польск|polish|polski)\w*\b", re.IGNORECASE)),
    ("fr", re.compile(r"\b(француз|french|fran[çc]ais)\w*\b", re.IGNORECASE)),
    ("es", re.compile(r"\b(испан|spanish|espa[ñn]ol)\w*\b", re.IGNORECASE)),
    ("pt", re.compile(r"\b(португал|portuguese|portugu[eê]s)\w*\b", re.IGNORECASE)),
    ("it", re.compile(r"\b(итальян|italian|italiano)\w*\b", re.IGNORECASE)),
    ("nl", re.compile(r"\b(нидерланд|голланд|dutch|nederlands?)\w*\b", re.IGNORECASE)),
    ("ro", re.compile(r"\b(румын|romanian|rom[aâ]n)\w*\b", re.IGNORECASE)),
    ("fi", re.compile(r"\b(финск|finnish|suomi)\w*\b", re.IGNORECASE)),
    ("sv", re.compile(r"\b(шведск|swedish|svenska)\w*\b", re.IGNORECASE)),
    ("da", re.compile(r"\b(датск|danish|dansk)\w*\b", re.IGNORECASE)),
    ("no", re.compile(r"\b(норвеж|norwegian|norsk)\w*\b", re.IGNORECASE)),
    ("cs", re.compile(r"\b(чешск|czech|češtin|cestin)\w*\b", re.IGNORECASE)),
    ("sk", re.compile(r"\b(словац|slovak|slovenčin)\w*\b", re.IGNORECASE)),
    ("sl", re.compile(r"\b(словенск|slovenian|slovenšč)\w*\b", re.IGNORECASE)),
    ("hr", re.compile(r"\b(хорват|croatian|hrvatsk)\w*\b", re.IGNORECASE)),
    ("bs", re.compile(r"\b(босни|bosnian|bosansk)\w*\b", re.IGNORECASE)),
    ("mk", re.compile(r"\b(македон|macedonian|македонск)\w*\b", re.IGNORECASE)),
    ("sr", re.compile(r"\b(серб|serbian|srpsk|српск)\w*\b", re.IGNORECASE)),
    ("hu", re.compile(r"\b(венгер|hungarian|magyar)\w*\b", re.IGNORECASE)),
    ("ga", re.compile(r"\b(ирланд|irish|gaeilge)\w*\b", re.IGNORECASE)),
    ("is", re.compile(r"\b(исланд|icelandic|íslensk)\w*\b", re.IGNORECASE)),
    ("sq", re.compile(r"\b(албан|albanian|shqip)\w*\b", re.IGNORECASE)),
    ("tr", re.compile(r"\b(турец|turkish|türk)\w*\b", re.IGNORECASE)),
    ("ca", re.compile(r"\b(каталан|catalan|català)\w*\b", re.IGNORECASE)),
    ("gl", re.compile(r"\b(галисий|galician|galego)\w*\b", re.IGNORECASE)),
    ("mt", re.compile(r"\b(мальт|maltese|malti)\w*\b", re.IGNORECASE)),
    ("cy", re.compile(r"\b(валлий|welsh|cymraeg)\w*\b", re.IGNORECASE)),
    ("el", re.compile(r"\b(гречес|greek|ellin|ελλην)\w*\b", re.IGNORECASE)),
    ("en", re.compile(r"\b(англий|english)\w*\b", re.IGNORECASE)),
]


@dataclass
class SongRow:
    id: str
    title: str
    subtitle: str
    lang: str
    year: str
    source: str
    notes: str
    lyrics: str


def norm_text(value: str | None) -> str:
    return str(value or "")


def normalize_newlines(text: str) -> str:
    return norm_text(text).replace("\r\n", "\n").replace("\r", "\n")


def normalize_multiline(text: str) -> str:
    lines = [re.sub(r"[ \t]+$", "", line) for line in normalize_newlines(text).split("\n")]
    out: list[str] = []
    for line in lines:
        if line.strip():
            out.append(line.strip())
        elif out and out[-1] != "":
            out.append("")
    while out and out[0] == "":
        out.pop(0)
    while out and out[-1] == "":
        out.pop()
    return "\n".join(out)


def tokenize(text: str) -> list[str]:
    return [m.group(0).lower() for m in WORD_RE.finditer(norm_text(text))]


def count_script(text: str) -> tuple[int, int, int]:
    s = norm_text(text)
    return len(CYR_RE.findall(s)), len(LAT_RE.findall(s)), len(GR_RE.findall(s))


def year_int(value: str | None) -> int | None:
    raw = norm_text(value).strip()
    if not raw:
        return None
    if raw.isdigit():
        y = int(raw)
        if YEAR_MIN <= y <= YEAR_MAX:
            return y
    return None


def find_years(text: str) -> list[int]:
    years: list[int] = []
    for match in YEAR_RE.finditer(norm_text(text)):
        y = int(match.group(1))
        if YEAR_MIN <= y <= YEAR_MAX:
            years.append(y)
    return years


def contains_any(text: str, chars: str) -> int:
    s = norm_text(text).lower()
    return sum(1 for ch in chars if ch in s)


def count_chars(text: str, chars: str) -> int:
    s = norm_text(text).lower()
    return sum(s.count(ch) for ch in set(chars))


def cyr_marker_counts(text: str) -> dict[str, int]:
    return {lang: count_chars(text, chars) for lang, chars in CYR_MARKERS.items()}


def detect_lang_hint(*parts: str) -> str | None:
    scope = "\n".join(norm_text(p).lower() for p in parts if norm_text(p).strip())
    if not scope:
        return None
    for lang, pattern in LANG_HINTS:
        if pattern.search(scope):
            return lang
    return None


def score_lang(text: str, lang: str, token_map: dict[str, int]) -> int:
    tokens_hit = sum(token_map.get(tok, 0) for tok in STOPWORDS.get(lang, set()))
    score = tokens_hit * 2
    dia_pattern = DIACRITICS.get(lang)
    if dia_pattern:
        score += len(dia_pattern.findall(text)) * 3
    bonus_chars = UNIQUE_CHAR_BONUS.get(lang, "")
    if bonus_chars:
        score += contains_any(text, bonus_chars) * 3
    return score


def detect_language(
    text: str,
    title: str,
    subtitle: str,
    source: str,
    notes: str,
    old_lang: str,
) -> tuple[str, int, bool, dict[str, int], str | None]:
    sample = "\n".join([
        norm_text(title),
        norm_text(subtitle),
        norm_text(source)[:800],
        norm_text(notes)[:800],
        norm_text(text)[:4000],
    ]).lower()
    cyr, lat, greek = count_script(sample)
    hint = detect_lang_hint(title, subtitle, source, notes)
    marker_counts = cyr_marker_counts(sample)
    tokens = tokenize(sample)
    token_map: dict[str, int] = {}
    for tok in tokens:
        token_map[tok] = token_map.get(tok, 0) + 1

    if greek >= 20:
        return "el", 100, True, marker_counts, hint

    candidates: list[str]
    if cyr >= max(20, int(lat * 0.8)):
        candidates = sorted(CYR_LANGS)
    elif lat >= 20:
        candidates = sorted(LAT_LANGS)
    elif hint:
        return hint, 20, True, marker_counts, hint
    else:
        return (old_lang if old_lang in LANG_VALUES else "en"), 0, False, marker_counts, hint

    scored: list[tuple[str, int]] = []
    for lang in candidates:
        scored.append((lang, score_lang(sample, lang, token_map)))
    scored.sort(key=lambda x: x[1], reverse=True)
    best_lang, best_score = scored[0]
    second_score = scored[1][1] if len(scored) > 1 else 0

    if hint and hint in candidates:
        hint_score = score_lang(sample, hint, token_map) + 2
        if hint_score >= best_score - 1:
            best_lang = hint
            best_score = max(best_score, hint_score)

    # Strong cyrillic markers.
    if cyr >= 20:
        if marker_counts["kk"] >= 2:
            return "kk", max(14, best_score), True, marker_counts, hint
        if marker_counts["uk"] >= 2:
            return "uk", max(12, best_score), True, marker_counts, hint
        if marker_counts["be"] >= 1:
            return "be", max(12, best_score), True, marker_counts, hint
        if marker_counts["mk"] >= 1:
            return "mk", max(10, best_score), True, marker_counts, hint
        if marker_counts["sr"] >= 1:
            return "sr", max(10, best_score), True, marker_counts, hint
        if marker_counts["bg"] >= 2 and marker_counts["ru"] == 0 and marker_counts["uk"] == 0:
            if best_lang not in {"ru", "uk", "be"}:
                return "bg", max(8, best_score), True, marker_counts, hint

    confidence = best_score - second_score
    if best_score < 4 and hint:
        return hint, 5, True, marker_counts, hint
    if best_score < 4:
        if cyr > lat:
            return "ru", 2, False, marker_counts, hint
        if lat > cyr:
            return ("en" if old_lang not in LANG_VALUES else old_lang), 2, False, marker_counts, hint
    return best_lang, max(confidence, 1), False, marker_counts, hint


def should_apply_lang_change(
    old_lang: str,
    new_lang: str,
    lang_conf: int,
    lang_strong: bool,
    marker_counts: dict[str, int],
    hint_lang: str | None,
) -> bool:
    if new_lang not in LANG_VALUES or new_lang == old_lang:
        return False
    if old_lang not in LANG_VALUES:
        return lang_conf >= 10 or (lang_strong and lang_conf >= 8)

    if old_lang in CYR_LANGS and new_lang in CYR_LANGS:
        if hint_lang == new_lang and lang_conf >= 4:
            return True
        if new_lang == "kk":
            return marker_counts.get("kk", 0) >= 2 and (hint_lang == "kk" or lang_conf >= 30)
        if new_lang == "uk":
            return marker_counts.get("uk", 0) >= 3 and lang_conf >= 12
        if new_lang == "be":
            return marker_counts.get("be", 0) >= 2 and lang_conf >= 12
        if new_lang in {"mk", "sr"}:
            return False
        if new_lang == "bg":
            return marker_counts.get("bg", 0) >= 2 and lang_conf >= 12
        if new_lang == "ru":
            if hint_lang == "ru" and lang_conf >= 4:
                return True
            return (
                marker_counts.get("uk", 0) == 0
                and marker_counts.get("be", 0) == 0
                and marker_counts.get("mk", 0) == 0
                and marker_counts.get("sr", 0) == 0
                and marker_counts.get("kk", 0) == 0
                and lang_conf >= 16
            )
        return False

    if old_lang in LAT_LANGS and new_lang in LAT_LANGS:
        if hint_lang == new_lang and lang_conf >= 4:
            return True
        if old_lang == "en" or new_lang == "en":
            return lang_conf >= 14
        return lang_conf >= 10

    if hint_lang == new_lang and lang_conf >= 4:
        return True
    if lang_strong and lang_conf >= 8:
        return True
    return lang_conf >= 10


def is_noise_title(title: str) -> bool:
    t = norm_text(title).strip()
    if not t:
        return True
    if TITLE_BAD_RE.search(t):
        return True
    if TITLE_FILM_RE.search(t):
        return True
    if TITLE_PUNCT_ONLY_RE.match(t):
        return True
    if re.fullmatch(r"\d+\s*[-–—.]?\s*", t):
        return True
    return False


def is_lyric_like_line(line: str) -> bool:
    s = norm_text(line).strip()
    if not s:
        return False
    if any(p.search(s) for p in LEADING_NOISE_PATTERNS):
        return False
    if len(s) > 110:
        return False
    words = tokenize(s)
    if not words:
        return False
    if len(words) > 15:
        return False
    if s.endswith(":") and len(words) >= 3:
        return False
    if re.search(r"https?://|www\.|@\w", s, re.IGNORECASE):
        return False
    return True


def extract_leading_noise(lines: list[str]) -> tuple[list[str], list[str]]:
    noise: list[str] = []
    i = 0
    while i < len(lines):
        line = lines[i].strip()
        if not line:
            if noise:
                noise.append("")
                i += 1
                continue
            i += 1
            continue
        if any(p.search(line) for p in LEADING_NOISE_PATTERNS):
            noise.append(line)
            i += 1
            continue
        if re.match(r"^\d+\s+[A-Za-zА-Яа-яЁё].{0,120}$", line):
            # Numbered recording list line.
            noise.append(line)
            i += 1
            continue
        if re.search(r"\bисполнение\s+(18\d{2}|19\d{2}|20\d{2})", line, re.IGNORECASE):
            noise.append(line)
            i += 1
            continue
        break
    return noise, lines[i:]


def find_candidate_title(lines: list[str]) -> tuple[str | None, int]:
    non_empty = [idx for idx, line in enumerate(lines) if line.strip()]
    for idx in non_empty[:12]:
        candidate = lines[idx].strip()
        words = tokenize(candidate)
        if len(words) < 1 or len(words) > 8:
            continue
        if re.search(r"[:.!?]$", candidate):
            continue
        if any(p.search(candidate) for p in LEADING_NOISE_PATTERNS):
            continue
        tail = [lines[j].strip() for j in non_empty if j > idx][:6]
        lyric_like = sum(1 for row in tail if is_lyric_like_line(row))
        if lyric_like >= 3:
            return candidate, idx
    return None, -1


def append_note(base: str, addition: str) -> str:
    base_clean = normalize_multiline(base)
    add_clean = normalize_multiline(addition)
    if not add_clean:
        return base_clean
    if add_clean in base_clean:
        return base_clean
    if not base_clean:
        return add_clean
    return normalize_multiline(f"{base_clean}\n\n{add_clean}")


def clean_title_and_lyrics(title: str, lyrics: str, notes: str) -> tuple[str, str, str, list[str], str]:
    clean_title = norm_text(title).strip()
    clean_lyrics = normalize_multiline(lyrics)
    clean_notes = normalize_multiline(notes)
    changes: list[str] = []

    original_title = clean_title
    clean_title = TITLE_LIST_PREFIX_RE.sub("", clean_title).strip()
    if clean_title != original_title:
        changes.append("title_strip_numbering")

    lines = clean_lyrics.split("\n") if clean_lyrics else []
    noise_lines, body_lines = extract_leading_noise(lines)
    moved_noise = ""
    if noise_lines:
        moved = normalize_multiline("\n".join(noise_lines))
        moved_noise = moved
        clean_notes = append_note(clean_notes, f"Служебные строки (перенесено из начала текста):\n{moved}")
        changes.append("lyrics_drop_leading_noise")

    if is_noise_title(clean_title):
        candidate, cand_idx = find_candidate_title(body_lines)
        if candidate:
            clean_title = candidate
            # Remove embedded title line from lyrics head.
            trimmed = body_lines[cand_idx + 1 :]
            while trimmed and not trimmed[0].strip():
                trimmed.pop(0)
            body_lines = trimmed
            changes.append("title_from_lyrics_head")

    clean_lyrics = normalize_multiline("\n".join(body_lines))
    if clean_title != original_title:
        changes.append("title_changed")
    return clean_title, clean_lyrics, clean_notes, sorted(set(changes)), moved_noise


def infer_year(existing_year: str, title: str, source: str, moved_noise: str) -> tuple[str, bool]:
    existing = year_int(existing_year)
    if existing:
        return str(existing), False

    probes = [source, title, moved_noise]
    for block in probes:
        text = normalize_multiline(block)
        if not text:
            continue
        for line in text.split("\n"):
            line_years = find_years(line)
            if not line_years:
                continue
            if STANDALONE_YEAR_RE.match(line) or YEAR_CONTEXT_RE.search(line):
                return str(line_years[0]), True

    # Conservative fallback: allow source-only first year if source has no obvious import metadata.
    source_text = normalize_multiline(source)
    if source_text and "message_id:" not in source_text.lower() and "import_source:" not in source_text.lower():
        src_years = find_years(source_text)
        if src_years:
            return str(src_years[0]), True

    return "", False


def load_songs_from_export(path: Path) -> list[SongRow]:
    sql = path.read_text(encoding="utf-8", errors="replace")
    conn = sqlite3.connect(":memory:")
    conn.executescript(sql)
    rows = conn.execute(
        """
        SELECT id, title, coalesce(subtitle,''), coalesce(lang,''), coalesce(year,''), coalesce(source,''), coalesce(notes,''), coalesce(lyrics,'')
        FROM songs
        """
    ).fetchall()
    conn.close()
    return [SongRow(*row) for row in rows]


def sql_str(value: str) -> str:
    return "'" + norm_text(value).replace("'", "''") + "'"


def sql_nullable(value: str) -> str:
    txt = norm_text(value).strip()
    if not txt:
        return "NULL"
    return sql_str(txt)


def build_updates(rows: Iterable[SongRow]) -> tuple[list[str], dict]:
    updates: list[str] = []
    report = {
        "total": 0,
        "changed": 0,
        "changed_tg3": 0,
        "changed_other": 0,
        "lang_changed": 0,
        "year_filled": 0,
        "title_changed": 0,
        "lyrics_changed": 0,
        "notes_changed": 0,
        "examples": [],
        "lang_change_examples": [],
    }
    for row in rows:
        report["total"] += 1
        new_title, new_lyrics, new_notes, cleanup_changes, moved_noise = clean_title_and_lyrics(row.title, row.lyrics, row.notes)
        new_year, year_filled = infer_year(row.year, new_title, row.source, moved_noise)
        detected_lang, lang_conf, lang_strong, marker_counts, hint_lang = detect_language(
            new_lyrics,
            new_title,
            row.subtitle,
            row.source,
            new_notes,
            row.lang,
        )

        new_lang = row.lang
        if should_apply_lang_change(row.lang, detected_lang, lang_conf, lang_strong, marker_counts, hint_lang):
            new_lang = detected_lang

        title_changed = new_title != norm_text(row.title).strip()
        lyrics_changed = new_lyrics != normalize_multiline(row.lyrics)
        notes_changed = new_notes != normalize_multiline(row.notes)
        lang_changed = new_lang != row.lang
        year_changed = (norm_text(new_year).strip() != norm_text(row.year).strip())

        if not any([title_changed, lyrics_changed, notes_changed, lang_changed, year_changed]):
            continue

        updates.append(
            "UPDATE songs SET "
            f"title={sql_str(new_title)}, "
            f"lang={sql_str(new_lang)}, "
            f"year={sql_nullable(new_year)}, "
            f"notes={sql_nullable(new_notes)}, "
            f"lyrics={sql_str(new_lyrics)}, "
            "updated_at=datetime('now') "
            f"WHERE id={sql_str(row.id)};"
        )
        if title_changed or lyrics_changed:
            updates.append(
                f"INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ({sql_str(row.id)},{sql_str(new_title)},{sql_str(new_lyrics)});"
            )

        report["changed"] += 1
        if row.id.startswith("tg3_"):
            report["changed_tg3"] += 1
        else:
            report["changed_other"] += 1
        if lang_changed:
            report["lang_changed"] += 1
            if len(report["lang_change_examples"]) < 80:
                report["lang_change_examples"].append(
                    {
                        "id": row.id,
                        "title": new_title,
                        "old_lang": row.lang,
                        "new_lang": new_lang,
                        "lang_confidence": lang_conf,
                        "lang_strong": lang_strong,
                    }
                )
        if year_filled and year_changed:
            report["year_filled"] += 1
        if title_changed:
            report["title_changed"] += 1
        if lyrics_changed:
            report["lyrics_changed"] += 1
        if notes_changed:
            report["notes_changed"] += 1

        if len(report["examples"]) < 40:
            report["examples"].append(
                {
                    "id": row.id,
                    "old_title": row.title,
                    "new_title": new_title,
                    "old_lang": row.lang,
                    "new_lang": new_lang,
                    "old_year": row.year,
                    "new_year": new_year or None,
                    "cleanup_changes": cleanup_changes,
                    "lang_confidence": lang_conf,
                }
            )

    return updates, report


def run_cmd(cmd: list[str], cwd: Path, timeout_ms: int = 180000) -> None:
    subprocess.run(cmd, cwd=cwd, check=True, timeout=timeout_ms / 1000)


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
    run_cmd(cmd, ROOT)


def main() -> None:
    parser = argparse.ArgumentParser(description="Repair existing songs metadata (lang/year/title/lyrics cleanup).")
    parser.add_argument("--db-name", default="euro-songbook-db")
    parser.add_argument("--refresh-export", action="store_true")
    parser.add_argument("--execute-remote", action="store_true")
    args = parser.parse_args()

    REPORT_JSON.parent.mkdir(parents=True, exist_ok=True)
    ensure_export(args.db_name, args.refresh_export)

    rows = load_songs_from_export(EXPORT_SQL)
    updates, report = build_updates(rows)

    sql_lines = ["-- generated by scripts/repair_existing_songs.py", *updates, ""]
    UPDATE_SQL.write_text("\n".join(sql_lines), encoding="utf-8")
    report["update_sql"] = str(UPDATE_SQL)
    report["export_sql"] = str(EXPORT_SQL)
    report["update_statements"] = len(updates)
    REPORT_JSON.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    print(json.dumps(report, ensure_ascii=True, indent=2))

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
    run_cmd(cmd, ROOT, timeout_ms=300000)
    print("Remote updates applied.")


if __name__ == "__main__":
    try:
        main()
    except subprocess.CalledProcessError as exc:
        print(f"Command failed: {exc}", file=sys.stderr)
        raise
