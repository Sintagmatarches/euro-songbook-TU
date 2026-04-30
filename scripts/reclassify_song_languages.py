from __future__ import annotations

import argparse
import json
import re
import sqlite3
import subprocess
import sys
from collections import Counter
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable

try:
    import langid  # type: ignore
except Exception:  # pragma: no cover - optional dependency
    langid = None


ROOT = Path(__file__).resolve().parent.parent
EXPORT_SQL = ROOT / "tmp_songs_export.sql"
UPDATE_SQL = ROOT / "tmp_reclassify_languages.sql"
REPORT_JSON = ROOT / "out" / "reclassify_languages_report.json"

LANG_VALUES = {
    "ru", "uk", "be", "pl", "lt", "lv", "et", "fi", "en", "sq", "hy", "az", "eu", "bs", "bg", "ca", "hr", "cs", "da",
    "nl", "fo", "fr", "gl", "ka", "de", "el", "hu", "is", "ga", "it", "kk", "lb", "mk", "mt", "no", "pt", "ro",
    "sr", "sk", "sl", "es", "sv", "tr", "cy", "ja", "yi", "uz",
}

CYR_LANGS = {"ru", "uk", "be", "bg", "mk", "sr", "kk", "uz"}
LAT_LANGS = {
    "pl", "lt", "lv", "et", "fi", "en", "sq", "az", "eu", "bs", "ca", "hr", "cs", "da", "nl", "fo", "fr", "gl", "de",
    "hu", "is", "ga", "it", "lb", "mt", "no", "pt", "ro", "sk", "sl", "es", "sv", "tr", "cy", "yi", "uz",
}

WORD_RE = re.compile(r"[0-9A-Za-z\u00C0-\u024F\u0370-\u03ff\u0400-\u052f\u1E00-\u1EFF]+")
CYR_RE = re.compile(r"[\u0400-\u052f]")
LAT_RE = re.compile(r"[A-Za-z\u00C0-\u024F\u1E00-\u1EFF]")
GR_RE = re.compile(r"[\u0370-\u03ff\u1f00-\u1fff]")

CYR_MARKERS: dict[str, str] = {
    "uk": "іїєґ",
    "be": "ў",
    "bg": "ъ",
    "mk": "ѓѕјљњќ",
    "sr": "ђјљњћџ",
    "kk": "әқғүұһөң",
    "uz": "ўқғҳ",
    "ru": "ыэё",
}

# Distinctive function words to separate closely related languages.
DISTINCT_WORDS: dict[str, set[str]] = {
    "ru": {"что", "это", "чтоб", "только", "если", "еще", "ещё", "нет", "бы", "где", "когда", "чем", "чтобы", "без", "мой", "твой", "наш", "как", "над", "под", "все", "всё", "тебя", "меня"},
    "uk": {"що", "це", "мене", "тобі", "тобою", "коли", "де", "хай", "є", "її", "й", "пісня", "украї", "воля", "країна", "мій", "твій", "наш", "козак", "доля", "серце", "ніч", "знов", "вже", "нема"},
    "be": {"што", "гэта", "калі", "дзе", "няма", "дзякуй", "радзіма", "шчасце", "зноў", "схадзіла", "прасторы", "песняю", "мой", "твой", "наш", "сэрца", "воля", "край", "будзе"},
    "de": {"und", "der", "die", "das", "nicht", "ein", "eine", "wir", "ich", "mit", "ist", "auf", "den", "dem", "des", "du", "sie", "mein", "dein", "unser", "bruder", "freiheit"},
    "et": {"ja", "on", "ei", "mis", "kui", "ning", "sind", "kõik", "veel", "oled", "ole", "see", "üks", "mu", "ma", "me", "sa", "ta", "oma", "eesti", "maa", "süda", "öö", "päev"},
    "fi": {"ja", "on", "ei", "että", "kun", "se", "sinä", "minä", "me", "te", "hän", "yön", "sydän", "nyt", "maa", "laulu", "vapaus", "kansa"},
    "pl": {"że", "się", "nie", "jest", "jak", "dla", "czy", "ten", "tam", "nas", "was", "przez", "mój", "twój", "nasz", "ojczyzna", "wolność", "serce", "bracia", "hej"},
    "fr": {"le", "la", "les", "des", "dans", "avec", "pour", "que", "qui", "est", "nous", "vous"},
    "es": {"el", "la", "los", "las", "que", "con", "por", "para", "una", "del", "como", "más"},
    "pt": {"não", "uma", "para", "com", "que", "dos", "das", "está", "você", "pelo", "pela"},
    "it": {"che", "con", "per", "gli", "della", "delle", "questo", "quella", "noi", "voi", "sono"},
    "nl": {"de", "het", "een", "met", "voor", "niet", "dat", "zijn", "wij", "jij", "als", "van"},
    "lv": {"un", "ir", "ne", "kā", "mēs", "jūs", "par", "vai", "tas", "man", "tevi", "latvija", "dziesma", "brīvība", "sirds", "mana"},
    "lt": {"ir", "ne", "kad", "kaip", "mes", "jūs", "su", "už", "tai", "yra", "man", "tave", "lietuva", "daina", "laisvė", "širdis", "mano"},
    "sv": {"och", "inte", "för", "med", "det", "som", "är", "vi", "jag", "du"},
    "no": {"og", "ikke", "med", "det", "som", "er", "vi", "jeg", "du", "til"},
    "da": {"og", "ikke", "med", "det", "som", "er", "vi", "jeg", "du", "til"},
    "ro": {"și", "în", "să", "este", "cu", "din", "pentru", "noi", "voi", "fără"},
    "hu": {"és", "nem", "hogy", "mint", "van", "egy", "még", "nekem", "neked", "velünk"},
    "is": {"og", "ekki", "það", "sem", "við", "ég", "þú", "hún", "hann", "með", "fyrir", "minn"},
    "tr": {"ve", "bir", "bu", "ben", "sen", "biz", "için", "değil", "ile", "çok"},
    "az": {"və", "bir", "bu", "mən", "sən", "biz", "üçün", "deyil", "ilə", "çox"},
    "kk": {"және", "үшін", "біз", "емес", "қалай", "тағы", "мен", "сен", "ол"},
    "uz": {"ва", "учун", "эмас", "билан", "ўзбек", "юрт", "озод", "севги"},
    "yi": {"undz", "vayl", "frayheyt", "keyn", "shmit", "oreme", "knekht", "gayst", "tsayt", "dermordn"},
}

DIACRITICS: dict[str, re.Pattern[str]] = {
    "de": re.compile(r"[äöüß]", re.IGNORECASE),
    "et": re.compile(r"[õäöü]", re.IGNORECASE),
    "fi": re.compile(r"[äöå]", re.IGNORECASE),
    "fr": re.compile(r"[àâæçéèêëîïôœùûüÿ]", re.IGNORECASE),
    "es": re.compile(r"[áéíóúñ¡¿]", re.IGNORECASE),
    "pt": re.compile(r"[áâãàçéêíóôõú]", re.IGNORECASE),
    "it": re.compile(r"[àèéìíîòóùú]", re.IGNORECASE),
    "pl": re.compile(r"[ąćęłńóśźż]", re.IGNORECASE),
    "ro": re.compile(r"[ăâîșşțţ]", re.IGNORECASE),
    "lv": re.compile(r"[āčēģīķļņšūž]", re.IGNORECASE),
    "lt": re.compile(r"[ąčęėįšųūž]", re.IGNORECASE),
    "sv": re.compile(r"[äöå]", re.IGNORECASE),
    "no": re.compile(r"[æøå]", re.IGNORECASE),
    "da": re.compile(r"[æøå]", re.IGNORECASE),
    "hu": re.compile(r"[áéíóöőúüű]", re.IGNORECASE),
    "is": re.compile(r"[ðþæöáéíóúý]", re.IGNORECASE),
    "tr": re.compile(r"[çğıöşüİ]", re.IGNORECASE),
    "az": re.compile(r"[əğıöşüç]", re.IGNORECASE),
}

LANG_HINTS: list[tuple[str, re.Pattern[str]]] = [
    ("ru", re.compile(r"\b(русский|русская|русское|русские|russian)\b", re.IGNORECASE)),
    ("uk", re.compile(r"\b(украинский|украинская|украинское|украинские|український|українська|українське|українські|ukrainian)\b", re.IGNORECASE)),
    ("be", re.compile(r"\b(белорусский|белорусская|белорусское|белорусские|беларускі|беларуская|беларускае|беларускія|belarusian)\b", re.IGNORECASE)),
    ("de", re.compile(r"\b(немецкий|немецкая|немецкое|немецкие|german|deutsch)\b", re.IGNORECASE)),
    ("et", re.compile(r"\b(эстонский|эстонская|эстонское|эстонские|estonian|eesti)\b", re.IGNORECASE)),
    ("lv", re.compile(r"\b(латыш|latvian|latvie)\w*\b", re.IGNORECASE)),
    ("lt", re.compile(r"\b(литов|lithuanian|lietuvi)\w*\b", re.IGNORECASE)),
    ("pl", re.compile(r"\b(польск|polish|polski)\w*\b", re.IGNORECASE)),
    ("fr", re.compile(r"\b(француз|french|fran[çc]ais)\w*\b", re.IGNORECASE)),
    ("es", re.compile(r"\b(испан|spanish|espa[ñn]ol)\w*\b", re.IGNORECASE)),
    ("pt", re.compile(r"\b(португал|portuguese|portugu[eê]s)\w*\b", re.IGNORECASE)),
    ("it", re.compile(r"\b(итальян|italian|italiano)\w*\b", re.IGNORECASE)),
    ("nl", re.compile(r"\b(нидерланд|голланд|dutch|nederlands?)\w*\b", re.IGNORECASE)),
    ("ro", re.compile(r"\b(румын\w*|romanian|română|romana|român|romaneste|românește|românesc|romaneasca|românească)\b", re.IGNORECASE)),
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
    ("kk", re.compile(r"\b(казахский|казахская|казахское|казахские|kazakh|қазақша)\b", re.IGNORECASE)),
    ("az", re.compile(r"\b(азербайджанский|азербайджанская|азербайджанское|азербайджанские|azerbaijani|azeri)\b", re.IGNORECASE)),
    ("uz", re.compile(r"\b(узбекский|узбекская|узбекское|узбекские|uzbek|o['ʻ`’]zbek)\b", re.IGNORECASE)),
    ("yi", re.compile(r"\b(идиш|יידיש|yiddish|jiddisch)\b", re.IGNORECASE)),
    ("en", re.compile(r"\b(англий|english)\w*\b", re.IGNORECASE)),
]

HINT_CONTEXT_RE = re.compile(
    r"(язык|language|вариант|version|версия|перевод|translation|оригинал|original|текст|lyrics)",
    re.IGNORECASE,
)

LANG_LABEL_WORDS: dict[str, set[str]] = {
    "ru": {"русский", "русская", "русское", "русские", "russian"},
    "uk": {"украинский", "украинская", "украинское", "украинские", "український", "українська", "українське", "українські", "ukrainian"},
    "be": {"белорусский", "белорусская", "белорусское", "белорусские", "беларускі", "беларуская", "беларускае", "беларускія", "belarusian"},
    "de": {"немецкий", "немецкая", "немецкое", "немецкие", "german", "deutsch"},
    "et": {"эстонский", "эстонская", "эстонское", "эстонские", "estonian", "eesti"},
    "lt": {"литовский", "литовская", "литовское", "литовские", "lithuanian"},
    "pl": {"польский", "польская", "польское", "польские", "polish", "polski"},
    "fi": {"финский", "финская", "финское", "финские", "finnish", "suomi"},
    "fr": {"французский", "французская", "французское", "французские", "french"},
    "es": {"испанский", "испанская", "испанское", "испанские", "spanish", "español", "espanol"},
    "en": {"английский", "английская", "английское", "английские", "english"},
    "tr": {"турецкий", "турецкая", "турецкое", "турецкие", "turkish"},
    "az": {"азербайджанский", "азербайджанская", "азербайджанское", "азербайджанские", "azerbaijani", "azeri"},
    "kk": {"казахский", "казахская", "казахское", "казахские", "kazakh", "қазақша"},
    "yi": {"идиш", "yiddish", "jiddisch"},
    "uz": {"узбекский", "узбекская", "узбекское", "узбекские", "uzbek"},
    "hu": {"венгерский", "венгерская", "венгерское", "венгерские", "hungarian", "magyar"},
    "sr": {"сербский", "сербская", "сербское", "сербские", "serbian"},
    "mk": {"македонский", "македонская", "македонское", "македонские", "macedonian"},
    "bg": {"болгарский", "болгарская", "болгарское", "болгарские", "bulgarian"},
}


@dataclass
class SongRow:
    id: str
    title: str
    subtitle: str
    lang: str
    lyrics: str
    source: str
    notes: str


def norm_text(value: str | None) -> str:
    return str(value or "")


def normalize_newlines(text: str) -> str:
    return norm_text(text).replace("\r\n", "\n").replace("\r", "\n")


def tokenize(text: str) -> list[str]:
    return [m.group(0).lower() for m in WORD_RE.finditer(norm_text(text))]


def count_script(text: str) -> tuple[int, int, int]:
    s = norm_text(text)
    return len(CYR_RE.findall(s)), len(LAT_RE.findall(s)), len(GR_RE.findall(s))


def count_chars(text: str, chars: str) -> int:
    s = norm_text(text).lower()
    return sum(s.count(ch) for ch in set(chars))


def cyr_marker_counts(text: str) -> dict[str, int]:
    return {lang: count_chars(text, chars) for lang, chars in CYR_MARKERS.items()}


def words_hit(tokens: list[str], words: set[str]) -> int:
    token_counts = Counter(tokens)
    return sum(token_counts.get(w, 0) for w in words)


def detect_hint(*parts: str) -> str | None:
    scope = "\n".join(norm_text(p).lower() for p in parts if norm_text(p).strip())
    if not scope:
        return None
    found: list[str] = []
    for lang, pattern in LANG_HINTS:
        for match in pattern.finditer(scope):
            start, end = match.span()
            window = scope[max(0, start - 28) : min(len(scope), end + 28)]
            if HINT_CONTEXT_RE.search(window):
                found.append(lang)
                continue

            # Standalone suffix/prefix label: "... - немецкий", "(english)", etc.
            left_ok = start == 0 or scope[start - 1] in " \t\n-–—:([/"
            right_ok = end == len(scope) or scope[end] in " \t\n),]-.–—:/"
            tail = scope[end : min(len(scope), end + 24)]
            tail_is_delims = bool(re.fullmatch(r"[\s)\],.\-–—:/]*", tail))
            token = match.group(0).strip().lower()
            labels = LANG_LABEL_WORDS.get(lang)
            token_is_label = labels is None or token in labels
            if left_ok and right_ok and tail_is_delims and token_is_label:
                found.append(lang)
    if not found:
        return None
    uniq = list(dict.fromkeys(found))
    if len(uniq) == 1:
        return uniq[0]
    # If multiple language labels are present (e.g. bilingual title), skip hint override.
    return None


def lang_score_by_words_and_diacritics(lang: str, sample: str, tokens: list[str]) -> int:
    score = words_hit(tokens, DISTINCT_WORDS.get(lang, set())) * 3
    dia = DIACRITICS.get(lang)
    if dia:
        score += len(dia.findall(sample)) * 4
    return score


def build_langid_identifier(langs: list[str]):
    if langid is None:
        return None
    identifier = langid.langid.LanguageIdentifier.from_modelstring(langid.langid.model, norm_probs=True)
    try:
        identifier.set_languages(langs)
        return identifier
    except Exception:
        supported: list[str] = []
        for code in langs:
            try:
                identifier.set_languages([code])
                supported.append(code)
            except Exception:
                continue
        if not supported:
            return None
        identifier.set_languages(supported)
    return identifier


LID_ALL = build_langid_identifier(sorted((LANG_VALUES - {"ja", "hy", "ka"})))
LID_CYR = build_langid_identifier(sorted(CYR_LANGS))


def lid_classify(identifier, text: str) -> tuple[str | None, float]:
    if identifier is None:
        return None, 0.0
    sample = norm_text(text).strip()
    if not sample:
        return None, 0.0
    try:
        lang, prob = identifier.classify(sample)
    except Exception:
        return None, 0.0
    return lang, float(prob)


def classify_cyr(sample: str, title: str, tokens: list[str], hint_meta: str | None) -> tuple[str, float, str]:
    markers = cyr_marker_counts(sample)

    # Explicit and reliable language naming in title/subtitle wins.
    hint_title = detect_hint(title)
    if hint_title in CYR_LANGS:
        return hint_title, 1.0, "title_hint"

    if hint_meta in {"kk", "mk", "sr", "bg", "uz"}:
        return hint_meta, 1.0, "meta_hint_cyr"
    if markers["uz"] >= 2 and (hint_meta == "uz" or words_hit(tokens, DISTINCT_WORDS["uz"]) >= 1):
        return "uz", 1.0, "uz_marker"
    if markers["kk"] >= 3 and hint_meta == "kk":
        return "kk", 1.0, "kk_marker"
    if markers["mk"] >= 3 and hint_meta == "mk":
        return "mk", 1.0, "mk_marker"
    if markers["sr"] >= 3 and hint_meta == "sr":
        return "sr", 1.0, "sr_marker"
    if markers["be"] >= 1 and words_hit(tokens, DISTINCT_WORDS["be"]) >= 1:
        return "be", 1.0, "be_marker"
    if count_chars(sample, "їєґ") >= 1:
        return "uk", 1.0, "uk_marker"

    uk_word = words_hit(tokens, DISTINCT_WORDS["uk"])
    be_word = words_hit(tokens, DISTINCT_WORDS["be"])
    ru_word = words_hit(tokens, DISTINCT_WORDS["ru"])

    pred, prob = lid_classify(LID_CYR, sample[:7000])
    if pred == "uk":
        if uk_word >= 4 or (count_chars(sample, "і") >= 6 and uk_word >= 2):
            return "uk", prob, "lid_cyr_uk"
        return "ru", 0.8, "ru_default_over_weak_uk"
    if pred == "be":
        if be_word >= 3 or markers["be"] >= 1:
            return "be", prob, "lid_cyr_be"
        return "ru", 0.8, "ru_default_over_weak_be"
    if pred in {"bg", "mk", "sr", "kk", "uz"}:
        # Keep non-ru cyrillic only with marker/hint support.
        threshold = 2 if pred == "uz" else 4
        if hint_meta == pred or markers[pred] >= threshold:
            return pred, prob, "lid_cyr_supported"
        return "ru", 0.8, "ru_default_over_weak_cyr"

    if hint_meta in CYR_LANGS:
        return hint_meta, 0.9, "meta_hint_cyr"

    if uk_word >= 6 and uk_word > ru_word + 2:
        return "uk", 0.9, "uk_words"
    if be_word >= 4 and be_word > ru_word + 1:
        return "be", 0.9, "be_words"

    return "ru", max(prob, 0.7), "ru_default"


def classify_latin(sample: str, title: str, subtitle: str, tokens: list[str], hint_meta: str | None) -> tuple[str, float, str]:
    hint_title = detect_hint(title, subtitle)
    if hint_title in LAT_LANGS:
        return hint_title, 1.0, "title_hint"

    pred, prob = lid_classify(LID_ALL, sample[:7000])
    if pred in LAT_LANGS and prob >= 0.92:
        # Rare labels should be backed by explicit hint or stronger lexical evidence.
        if pred in {"lb", "fo", "ga", "mt", "cy", "sq", "eu", "gl", "is"}:
            hinted = (hint_title == pred or hint_meta == pred)
            lexical = lang_score_by_words_and_diacritics(pred, sample, tokens) >= 10
            if hinted or lexical:
                return pred, prob, "lid_all_rare"
        else:
            return pred, prob, "lid_all"

    # Per-language heuristic fallback for European Latin scripts.
    best_lang = None
    best_score = -1
    second_score = -1
    for lang in LAT_LANGS:
        score = lang_score_by_words_and_diacritics(lang, sample, tokens)
        if score > best_score:
            second_score = best_score
            best_score = score
            best_lang = lang
        elif score > second_score:
            second_score = score

    if best_lang and best_score >= 8 and best_score >= second_score + 2:
        return best_lang, 0.75, "latin_heuristic"

    if hint_meta in LAT_LANGS:
        return hint_meta, 0.8, "meta_hint_latin"

    if pred in LAT_LANGS:
        return pred, prob, "lid_low_conf"

    return "en", 0.3, "latin_fallback"


def classify_song(row: SongRow) -> tuple[str, float, str]:
    title = norm_text(row.title)
    subtitle = norm_text(row.subtitle)
    lyrics = normalize_newlines(row.lyrics)
    source = norm_text(row.source)
    notes = norm_text(row.notes)

    hint_title = detect_hint(title, subtitle)
    hint_meta = detect_hint(source[:800], notes[:500])

    # Title/subtitle explicit language labels are the strongest signal.
    if hint_title in LANG_VALUES:
        return hint_title, 1.0, "title_hint"

    sample = "\n".join([title, subtitle, lyrics[:8000]])
    tokens = tokenize(sample)
    cyr, lat, greek = count_script(sample)

    if greek >= 8:
        return "el", 1.0, "greek_script"

    if cyr >= max(20, int(lat * 1.10)):
        return classify_cyr(sample, title, tokens, hint_meta)

    if lat >= 20:
        return classify_latin(sample, title, subtitle, tokens, hint_meta)

    if cyr >= 8:
        return classify_cyr(sample, title, tokens, hint_meta)

    # Short texts: trust title/meta hint first, then langid fallback.
    if hint_meta in LANG_VALUES:
        return hint_meta, 0.8, "meta_hint_short"

    pred, prob = lid_classify(LID_ALL, sample)
    if pred in LANG_VALUES:
        return pred, prob, "lid_short"

    return (row.lang if row.lang in LANG_VALUES else "ru"), 0.2, "keep_old"


def load_songs(path: Path) -> list[SongRow]:
    sql = path.read_text(encoding="utf-8", errors="replace")
    conn = sqlite3.connect(":memory:")
    conn.executescript(sql)
    rows = conn.execute(
        """
        SELECT id, coalesce(title,''), coalesce(subtitle,''), coalesce(lang,''), coalesce(lyrics,''), coalesce(source,''), coalesce(notes,'')
        FROM songs
        """
    ).fetchall()
    conn.close()
    return [SongRow(*row) for row in rows]


def sql_str(value: str) -> str:
    return "'" + norm_text(value).replace("'", "''") + "'"


def should_apply_language_change(old_lang: str, new_lang: str, confidence: float, reason: str) -> bool:
    if new_lang not in LANG_VALUES or new_lang == old_lang:
        return False

    if reason in {"title_hint", "meta_hint_cyr", "meta_hint_latin", "meta_hint_short"}:
        return True

    # Keep non-European-side labels conservative unless explicitly hinted.
    if new_lang in {"kk", "az", "uz"} and "hint" not in reason and "marker" not in reason:
        return False
    if new_lang == "is" and "hint" not in reason and "heuristic" not in reason:
        return False

    if old_lang in CYR_LANGS and new_lang in CYR_LANGS:
        if old_lang == "ru" and new_lang in {"uk", "be"}:
            if reason in {"uk_marker", "be_marker"}:
                return True
            return confidence >= 0.98 and reason in {"lid_cyr_uk", "lid_cyr_be", "uk_words", "be_words"}
        if old_lang in {"uk", "be"} and new_lang == "ru":
            return reason.startswith("ru_default") or confidence >= 0.97
        if reason.endswith("marker"):
            return True
        return confidence >= 0.98

    if old_lang in LAT_LANGS and new_lang in LAT_LANGS:
        if reason in {"latin_heuristic", "lid_low_conf"}:
            return False
        if old_lang in {"de", "et"} and new_lang in {"de", "et"}:
            return confidence >= 0.97 or "hint" in reason
        return confidence >= 0.95

    return confidence >= 0.98


def build_updates(rows: Iterable[SongRow]) -> tuple[list[str], dict]:
    updates: list[str] = []
    pair_counter: Counter[tuple[str, str]] = Counter()
    examples: list[dict] = []
    changed = 0

    for row in rows:
        new_lang, conf, reason = classify_song(row)
        if not should_apply_language_change(row.lang, new_lang, conf, reason):
            continue

        updates.append(
            "UPDATE songs SET "
            f"lang={sql_str(new_lang)}, "
            "updated_at=datetime('now') "
            f"WHERE id={sql_str(row.id)};"
        )
        changed += 1
        pair_counter[(row.lang, new_lang)] += 1

        if len(examples) < 200:
            examples.append(
                {
                    "id": row.id,
                    "title": row.title,
                    "old_lang": row.lang,
                    "new_lang": new_lang,
                    "confidence": round(conf, 4),
                    "reason": reason,
                }
            )

    report = {
        "total": sum(1 for _ in rows),
        "changed": changed,
        "pair_counts": [
            {"old_lang": old, "new_lang": new, "count": count}
            for (old, new), count in pair_counter.most_common()
        ],
        "examples": examples,
        "update_statements": len(updates),
        "langid_enabled": langid is not None,
    }
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
    parser = argparse.ArgumentParser(description="Reclassify song languages with stricter heuristics.")
    parser.add_argument("--db-name", default="euro-songbook-db")
    parser.add_argument("--refresh-export", action="store_true")
    parser.add_argument("--execute-remote", action="store_true")
    args = parser.parse_args()

    REPORT_JSON.parent.mkdir(parents=True, exist_ok=True)
    ensure_export(args.db_name, args.refresh_export)

    rows = load_songs(EXPORT_SQL)
    updates, report = build_updates(rows)

    UPDATE_SQL.write_text("\n".join(["-- generated by reclassify_song_languages.py", *updates, ""]), encoding="utf-8")
    report["update_sql"] = str(UPDATE_SQL)
    report["export_sql"] = str(EXPORT_SQL)
    REPORT_JSON.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    print(json.dumps({k: report[k] for k in ["total", "changed", "update_statements", "langid_enabled"]}, ensure_ascii=False))
    print("pair_counts:")
    for row in report["pair_counts"][:30]:
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
    run_cmd(cmd, ROOT, timeout_ms=300000)
    print("Remote updates applied.")


if __name__ == "__main__":
    try:
        main()
    except subprocess.CalledProcessError as exc:
        print(f"Command failed: {exc}", file=sys.stderr)
        raise
