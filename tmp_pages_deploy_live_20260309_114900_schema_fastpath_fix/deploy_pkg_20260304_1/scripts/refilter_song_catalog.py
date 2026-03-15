from __future__ import annotations

import argparse
import importlib.util
import json
import re
import sqlite3
import subprocess
import sys
from collections import Counter
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable


ROOT = Path(__file__).resolve().parent.parent
EXPORT_SQL = ROOT / "tmp_songs_export.sql"
UPDATE_SQL = ROOT / "tmp_refilter_song_catalog.sql"
REPORT_JSON = ROOT / "out" / "refilter_song_catalog_report.json"
CATALOG_JS = ROOT / "shared" / "song-catalogs.js"

YEAR_MIN = 1800
YEAR_MAX = 2026

CYR_RE = re.compile(r"[\u0400-\u052f]")
LAT_RE = re.compile(r"[A-Za-z\u00C0-\u024F\u1E00-\u1EFF]")
WORD_RE = re.compile(r"[0-9A-Za-z\u00C0-\u024F\u0400-\u052f\u1E00-\u1EFF]+")

UK_MARKER_RE = re.compile(r"[їєґ]", re.IGNORECASE)

UK_CONTEXT_RE = re.compile(
    r"(укра(ин|їн)|киев|київ|днепр|дніпр|карпат|львов|львів|харк(ов|ів)|"
    r"полтав|одесс|одес|запорож|запоріж|крив(ой|ий)\s+р(о|і)г)",
    re.IGNORECASE,
)
BE_CONTEXT_RE = re.compile(
    r"(беларус|белорус|мінск|минск|полесь|гродн|брест|витеб|магил|могил)",
    re.IGNORECASE,
)

LANG_HINTS: list[tuple[str, re.Pattern[str]]] = [
    ("ru", re.compile(r"\b(русский|русская|русское|русские|russian)\b", re.IGNORECASE)),
    ("uk", re.compile(r"\b(украинский|український|ukrainian)\b", re.IGNORECASE)),
    ("be", re.compile(r"\b(белорусский|беларускі|belarusian)\b", re.IGNORECASE)),
    ("de", re.compile(r"\b(немецкий|german|deutsch)\b", re.IGNORECASE)),
    ("et", re.compile(r"\b(эстонский|estonian|eesti)\b", re.IGNORECASE)),
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
    ("kk", re.compile(r"\b(казахский|kazakh|қазақша)\b", re.IGNORECASE)),
    ("az", re.compile(r"\b(азербайджанский|azerbaijani|azeri)\b", re.IGNORECASE)),
    ("en", re.compile(r"\b(англий|english)\w*\b", re.IGNORECASE)),
]

COUNTRY_FAMILY_GERMAN = {
    "german_empire_1900_1918",
    "weimar_republic_1918_1933",
    "third_reich_1933_1945",
    "gdr_1949_1990",
    "frg_1949",
    "germany_1990",
}

COUNTRY_HINTS: list[tuple[str, int, re.Pattern[str]]] = [
    ("estonian_ssr_1940_1991", 120, re.compile(r"(эстон\w+\s+сср|estonian\s+ssr|eesti\s+nsv)", re.IGNORECASE)),
    ("latvian_ssr_1940_1990", 120, re.compile(r"(латвийск\w+\s+сср|latvian\s+ssr)", re.IGNORECASE)),
    ("lithuanian_ssr_1940_1990", 120, re.compile(r"(литовск\w+\s+сср|lithuanian\s+ssr)", re.IGNORECASE)),
    ("bssr_1919_1991", 120, re.compile(r"(бсср|белорус\w+\s+сср|беларус\w+\s+сср|belarusian\s+ssr|byelorussian\s+ssr)", re.IGNORECASE)),
    ("ukr_ssr_1919_1991", 120, re.compile(r"(уccр|укр\w*\s+сср|украин\w+\s+сср|україн\w+\s+рср|ukrainian\s+ssr)", re.IGNORECASE)),
    ("kazakh_ssr_1936_1991", 120, re.compile(r"(казах\w+\s+сср|kazakh\s+ssr)", re.IGNORECASE)),
    ("azerbaijan_ssr_1920_1991", 120, re.compile(r"(азербайджан\w+\s+сср|azerbaijan\s+ssr)", re.IGNORECASE)),
    ("armenian_ssr_1920_1991", 120, re.compile(r"(армян\w+\s+сср|armenian\s+ssr)", re.IGNORECASE)),
    ("georgian_ssr_1921_1991", 120, re.compile(r"(грузин\w+\s+сср|georgian\s+ssr)", re.IGNORECASE)),
    ("gdr_1949_1990", 110, re.compile(r"\b(гдр|ddr|gdr|east\s+germany)\b", re.IGNORECASE)),
    ("frg_1949", 110, re.compile(r"\b(фрг|brd|frg|west\s+germany)\b", re.IGNORECASE)),
    ("third_reich_1933_1945", 110, re.compile(r"(трет(ий|ьего)\s+рейх|third\s+reich|nazi\s+germany)", re.IGNORECASE)),
    ("german_empire_1900_1918", 110, re.compile(r"(герман\w+\s+импер\w+|german\s+empire|kaiserreich)", re.IGNORECASE)),
    ("weimar_republic_1918_1933", 110, re.compile(r"(веймар\w+|weimar)", re.IGNORECASE)),
    ("armia_krajowa", 120, re.compile(r"(armia\s+krajowa|армия\s+крайова)", re.IGNORECASE)),
    ("armia_ludowa", 120, re.compile(r"(armia\s+ludowa|армия\s+людова)", re.IGNORECASE)),
    ("forest_brothers", 120, re.compile(r"(лесн\w+\s+брат\w+|forest\s+brothers|metsavenn)", re.IGNORECASE)),
    ("chetniks", 120, re.compile(r"(четник\w+|chetnik)", re.IGNORECASE)),
    ("ira", 120, re.compile(r"(\bира\b|\birish\s+republican\s+army\b|\bira\b)", re.IGNORECASE)),
    ("ukrainian_insurgent_army", 120, re.compile(r"(\bупа\b|\bukrainian\s+insurgent\s+army\b|украин\w+\s+повстан\w+\s+арм\w+)", re.IGNORECASE)),
    ("organization_of_ukrainian_nationalists", 120, re.compile(r"(\bоун\b|\borganization\s+of\s+ukrainian\s+nationalists\b|организац\w+\s+украин\w+\s+националист\w+)", re.IGNORECASE)),
    ("russian_liberation_army", 120, re.compile(r"(\bроа\b|\brussian\s+liberation\s+army\b|русск\w+\s+освободит\w+\s+арм\w+)", re.IGNORECASE)),
    ("german_collaborators", 120, re.compile(r"(немецк\w+\s+коллаборац\w+|german\s+collaborators|латышск\w+\s+легион|эстонск\w+\s+дивизи\w+\s+сс)", re.IGNORECASE)),
    ("white_emigration", 120, re.compile(r"(бел\w+\s+эмиграц\w+|white\s+emigration)", re.IGNORECASE)),
    ("ussr", 40, re.compile(r"(ссср|советск\w+|soviet|ussr)", re.IGNORECASE)),
    ("ukraine_1991", 60, re.compile(r"(украин\w+|україн\w+|ukraine|украина)", re.IGNORECASE)),
    ("belarus_1991", 60, re.compile(r"(беларус\w+|белорус\w+|belarus)", re.IGNORECASE)),
    ("estonia_1991", 60, re.compile(r"(эстони\w+|estonia|eesti)", re.IGNORECASE)),
    ("latvia_1991", 60, re.compile(r"(латви\w+|latvia)", re.IGNORECASE)),
    ("lithuania_1990", 60, re.compile(r"(литв\w+|lithuania)", re.IGNORECASE)),
    ("poland_1989", 60, re.compile(r"(польш\w+|poland|polski|warszaw|варшав)", re.IGNORECASE)),
    ("germany_1990", 60, re.compile(r"(германи\w+|deutschland)", re.IGNORECASE)),
    ("romania_1989", 60, re.compile(r"(румын\w+|romania|romanian)", re.IGNORECASE)),
    ("bulgaria_1990", 60, re.compile(r"(болгар\w+|bulgaria)", re.IGNORECASE)),
    ("hungary_1989", 60, re.compile(r"(венгер\w+|hungary|hungarian|magyar)", re.IGNORECASE)),
    ("hellenic_republic_1974", 60, re.compile(r"(греци\w+|greece|greek)", re.IGNORECASE)),
    ("finland_1917", 60, re.compile(r"(финлянд\w+|finland|suomi)", re.IGNORECASE)),
]


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


def norm_text(value: str | None) -> str:
    return str(value or "")


def normalize_newlines(text: str) -> str:
    return norm_text(text).replace("\r\n", "\n").replace("\r", "\n")


def tokenize(text: str) -> list[str]:
    return [m.group(0).lower() for m in WORD_RE.finditer(norm_text(text))]


def count_script(text: str) -> tuple[int, int]:
    s = norm_text(text)
    return len(CYR_RE.findall(s)), len(LAT_RE.findall(s))


def fold(value: str) -> str:
    return (
        norm_text(value)
        .strip()
        .lower()
        .replace("–", "-")
        .replace("—", "-")
    )


def fold_alias(value: str) -> str:
    return re.sub(r"[().,]", "", re.sub(r"[-\s]+", "_", fold(value)))


def parse_year(value: str | None) -> int | None:
    raw = norm_text(value).strip()
    if not raw.isdigit():
        return None
    y = int(raw)
    if YEAR_MIN <= y <= YEAR_MAX:
        return y
    return None


def parse_catalog_values(var_name: str) -> list[str]:
    text = CATALOG_JS.read_text(encoding="utf-8")
    match = re.search(rf"export const {re.escape(var_name)}\s*=\s*\[(.*?)\];", text, re.S)
    if not match:
        raise RuntimeError(f"Could not parse {var_name} from {CATALOG_JS}")
    return re.findall(r'"([^"]+)"', match.group(1))


def detect_hint(*parts: str) -> str | None:
    scope = "\n".join(norm_text(p).lower() for p in parts if norm_text(p).strip())
    if not scope:
        return None
    hits: list[str] = []
    for lang, pattern in LANG_HINTS:
        if pattern.search(scope):
            hits.append(lang)
    uniq = list(dict.fromkeys(hits))
    if len(uniq) == 1:
        return uniq[0]
    return None


def load_lang_module():
    path = ROOT / "scripts" / "reclassify_song_languages.py"
    spec = importlib.util.spec_from_file_location("reclassify_song_languages", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Unable to load classifier module from {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)  # type: ignore[attr-defined]
    return module


def classify_language(row: SongRow, lang_mod, lang_values: set[str]) -> tuple[str, float, str]:
    title_hint = detect_hint(row.title, row.subtitle)
    if title_hint in lang_values:
        return title_hint, 1.0, "title_hint_local"

    meta_hint = detect_hint(row.source[:500], row.notes[:500])
    if meta_hint in lang_values:
        return meta_hint, 0.95, "meta_hint_local"

    sample = "\n".join([row.title, row.subtitle, row.lyrics[:4000]])
    cyr, lat = count_script(sample)
    if cyr >= max(20, int(lat * 1.1)):
        s = sample.lower()
        if UK_MARKER_RE.search(s):
            return "uk", 1.0, "uk_marker_local"

    mod_row = lang_mod.SongRow(
        id=row.id,
        title=row.title,
        subtitle=row.subtitle,
        lang=row.lang,
        lyrics=row.lyrics,
        source=row.source,
        notes=row.notes,
    )
    pred, conf, reason = lang_mod.classify_song(mod_row)
    if pred in lang_values:
        return pred, float(conf), str(reason)
    return (row.lang if row.lang in lang_values else "ru"), 0.0, "keep_old_fallback"


def should_apply_language_change(old_lang: str, new_lang: str, confidence: float, reason: str) -> bool:
    if not new_lang or new_lang == old_lang:
        return False
    if "hint" in reason:
        return True

    # Avoid over-eager rewrites from Russian to rare labels without explicit hints.
    if old_lang == "ru" and new_lang not in {"uk", "be"}:
        return False

    cyr = {"ru", "uk", "be", "bg", "mk", "sr", "kk"}
    if old_lang in cyr and new_lang in cyr:
        if old_lang in {"uk", "be"} and new_lang == "ru":
            return confidence >= 0.70
        if old_lang == "ru" and new_lang in {"uk", "be"}:
            return confidence >= 0.97 and ("marker" in reason or reason in {"lid_cyr_uk", "lid_cyr_be", "uk_words", "be_words"})
        return confidence >= 0.95

    latin = {
        "pl", "lt", "lv", "et", "fi", "en", "sq", "az", "eu", "bs", "ca", "hr", "cs", "da", "nl", "fo", "fr", "gl",
        "de", "hu", "is", "ga", "it", "lb", "mt", "no", "pt", "ro", "sk", "sl", "es", "sv", "tr", "cy",
    }
    if old_lang in latin and new_lang in latin:
        if new_lang in {"lb", "fo", "ga", "mt", "cy", "sq", "eu", "gl"}:
            return False
        if {old_lang, new_lang} == {"de", "et"}:
            return confidence >= 0.90
        return confidence >= 0.94

    return confidence >= 0.96


def detect_country_hint(scope: str) -> tuple[str | None, int]:
    for country, weight, pattern in COUNTRY_HINTS:
        if pattern.search(scope):
            return country, weight
    return None, 0


def default_country_for_lang(lang: str, year: int | None) -> str:
    if lang == "ru":
        return "ussr"
    if lang == "uk":
        return "ukr_ssr_1919_1991"
    if lang == "be":
        return "bssr_1919_1991"
    if lang == "et":
        return "estonian_ssr_1940_1991" if year is not None and year <= 1991 else "estonia_1991"
    if lang == "lv":
        return "latvian_ssr_1940_1990" if year is not None and year <= 1990 else "latvia_1991"
    if lang == "lt":
        return "lithuanian_ssr_1940_1990" if year is not None and year <= 1990 else "lithuania_1990"
    if lang == "fi":
        return "finland_1917"
    if lang == "de":
        return "germany_1990"
    if lang == "pl":
        return "poland_1989"
    if lang == "cs":
        return "czechia_1993"
    if lang == "sk":
        return "slovakia_1993"
    if lang == "sl":
        return "slovenia_1991"
    if lang == "hr":
        return "croatia_1991"
    if lang == "bs":
        return "bosnia_and_herzegovina_1992"
    if lang == "sr":
        return "serbia_2006"
    if lang == "mk":
        return "north_macedonia_1991"
    if lang == "ro":
        return "romania_1989"
    if lang == "bg":
        return "bulgaria_1990"
    if lang == "hu":
        return "hungary_1989"
    if lang == "el":
        return "hellenic_republic_1974"
    if lang == "tr":
        return "turkey_1923"
    if lang == "az":
        return "azerbaijan_1991"
    if lang == "hy":
        return "armenia_1991"
    if lang == "ka":
        return "georgia_1991"
    if lang == "kk":
        return "kazakhstan_1991"
    return "other_countries"


def is_country_suspicious(country: str, lang: str, scope: str) -> bool:
    if not country:
        return True
    if country == "third_reich_1933_1945" and re.search(r"(ссср|совет|ussr|soviet|сталин)", scope, re.IGNORECASE):
        return True
    if country == "third_reich_1933_1945" and lang in {"et", "lv", "lt", "hy", "az", "kk"}:
        return True
    if country == "ukr_ssr_1919_1991" and lang == "ru":
        return UK_CONTEXT_RE.search(scope) is None
    if country == "bssr_1919_1991" and lang == "ru":
        return BE_CONTEXT_RE.search(scope) is None
    return False


def classify_country(row: SongRow, lang: str, country_values: set[str], country_aliases: dict[str, str]) -> tuple[str, str]:
    old_country = country_aliases.get(fold_alias(row.country), "") if row.country else ""
    if old_country not in country_values:
        old_country = ""

    title = norm_text(row.title)
    subtitle = norm_text(row.subtitle)
    source = norm_text(row.source)
    notes = norm_text(row.notes)
    lyrics = normalize_newlines(row.lyrics)
    scope_meta = "\n".join([title, subtitle, source[:1200], notes[:1200]])
    scope_full = f"{scope_meta}\n{lyrics[:3500]}"

    hint_country, hint_weight = detect_country_hint(scope_meta)
    year = parse_year(row.year)

    if hint_country and hint_country in country_values:
        if not old_country:
            return hint_country, "country_hint_empty"
        if is_country_suspicious(old_country, lang, scope_full):
            return hint_country, "country_hint_override_suspicious"
        if hint_weight >= 100 and hint_country != old_country:
            return hint_country, "country_hint_specific_override"

    if old_country == "third_reich_1933_1945" and re.search(r"(ссср|совет|ussr|soviet|сталин)", scope_full, re.IGNORECASE):
        return "ussr", "country_third_reich_to_ussr"

    if old_country and not is_country_suspicious(old_country, lang, scope_full):
        return old_country, "keep_old_country"

    fallback = default_country_for_lang(lang, year)
    if fallback in country_values:
        return fallback, ("country_lang_fallback" if not old_country else "country_lang_fallback_override")

    return "other_countries", "country_other_fallback"


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
          coalesce(notes,'')
        FROM songs
        """
    ).fetchall()
    conn.close()
    return [SongRow(*row) for row in rows]


def sql_str(value: str) -> str:
    return "'" + norm_text(value).replace("'", "''") + "'"


def build_country_aliases(country_values: Iterable[str]) -> dict[str, str]:
    aliases = {fold_alias(v): v for v in country_values}
    aliases.update(
        {
            "ukraine": "ukraine_1991",
            "ukraine_1991": "ukraine_1991",
            "poland": "poland_1989",
            "poland_1989": "poland_1989",
            "latvian_ss_legion": "german_collaborators",
            "estonian_ss_division": "german_collaborators",
            "other": "other_countries",
            "other_country": "other_countries",
            "other_countries": "other_countries",
            "другие_страны": "other_countries",
            "иншие_країни": "other_countries",
        }
    )
    return aliases


def build_updates(rows: list[SongRow], lang_mod, lang_values: set[str], country_values: set[str], country_aliases: dict[str, str]) -> tuple[list[str], dict]:
    updates: list[str] = []
    lang_pair_counter: Counter[tuple[str, str]] = Counter()
    country_pair_counter: Counter[tuple[str, str]] = Counter()
    lang_reason_counter: Counter[str] = Counter()
    country_reason_counter: Counter[str] = Counter()

    changed = 0
    lang_changed = 0
    country_changed = 0
    examples: list[dict] = []

    for row in rows:
        old_lang = row.lang if row.lang in lang_values else "ru"
        new_lang, lang_conf, lang_reason = classify_language(row, lang_mod, lang_values)
        if new_lang not in lang_values:
            new_lang = old_lang

        apply_lang = should_apply_language_change(old_lang, new_lang, lang_conf, lang_reason)
        final_lang = new_lang if apply_lang else old_lang

        raw_country = norm_text(row.country).strip().lower()
        old_country = country_aliases.get(fold_alias(row.country), "") if row.country else ""
        if old_country not in country_values:
            old_country = ""
        country_needs_normalization = bool(raw_country and old_country and raw_country != old_country)
        new_country, country_reason = classify_country(row, final_lang, country_values, country_aliases)
        if new_country not in country_values:
            new_country = "other_countries"

        set_parts: list[str] = []
        if apply_lang and final_lang != old_lang:
            set_parts.append(f"lang={sql_str(final_lang)}")
            lang_changed += 1
            lang_pair_counter[(old_lang, final_lang)] += 1
            lang_reason_counter[lang_reason] += 1

        if new_country != old_country or country_needs_normalization:
            set_parts.append(f"country={sql_str(new_country)}")
            country_changed += 1
            country_pair_counter[(old_country or "<empty>", new_country)] += 1
            country_reason_counter[country_reason] += 1

        if not set_parts:
            continue

        set_parts.append("updated_at=datetime('now')")
        updates.append(
            "UPDATE songs SET "
            + ", ".join(set_parts)
            + f" WHERE id={sql_str(row.id)};"
        )
        changed += 1

        if len(examples) < 300:
            examples.append(
                {
                    "id": row.id,
                    "title": row.title,
                    "old_lang": old_lang,
                    "new_lang": final_lang,
                    "lang_changed": apply_lang and final_lang != old_lang,
                    "lang_confidence": round(lang_conf, 4),
                    "lang_reason": lang_reason,
                    "old_country": old_country,
                    "new_country": new_country,
                    "country_reason": country_reason,
                }
            )

    report = {
        "total": len(rows),
        "changed": changed,
        "lang_changed": lang_changed,
        "country_changed": country_changed,
        "lang_pair_counts": [
            {"old_lang": old, "new_lang": new, "count": count}
            for (old, new), count in lang_pair_counter.most_common()
        ],
        "country_pair_counts": [
            {"old_country": old, "new_country": new, "count": count}
            for (old, new), count in country_pair_counter.most_common()
        ],
        "lang_reason_counts": [
            {"reason": reason, "count": count}
            for reason, count in lang_reason_counter.most_common()
        ],
        "country_reason_counts": [
            {"reason": reason, "count": count}
            for reason, count in country_reason_counter.most_common()
        ],
        "examples": examples,
        "update_statements": len(updates),
    }
    return updates, report


def run_cmd(cmd: list[str], cwd: Path, timeout_ms: int = 180000) -> None:
    try:
        subprocess.run(cmd, cwd=cwd, check=True, timeout=timeout_ms / 1000)
    except FileNotFoundError:
        # Windows Python env sometimes cannot resolve npx/node shims without shell.
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
    parser = argparse.ArgumentParser(description="Mass re-filter song language and country with strict heuristics.")
    parser.add_argument("--db-name", default="euro-songbook-db")
    parser.add_argument("--refresh-export", action="store_true")
    parser.add_argument("--execute-remote", action="store_true")
    args = parser.parse_args()

    REPORT_JSON.parent.mkdir(parents=True, exist_ok=True)
    ensure_export(args.db_name, args.refresh_export)

    lang_values = set(parse_catalog_values("SONG_LANGUAGE_VALUES"))
    country_values = set(parse_catalog_values("SONG_COUNTRY_VALUES"))
    country_values.add("other_countries")
    country_aliases = build_country_aliases(country_values)

    lang_mod = load_lang_module()
    rows = load_songs(EXPORT_SQL)
    updates, report = build_updates(rows, lang_mod, lang_values, country_values, country_aliases)

    UPDATE_SQL.write_text("\n".join(["-- generated by refilter_song_catalog.py", *updates, ""]), encoding="utf-8")
    report["update_sql"] = str(UPDATE_SQL)
    report["export_sql"] = str(EXPORT_SQL)
    REPORT_JSON.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    print(json.dumps({k: report[k] for k in ["total", "changed", "lang_changed", "country_changed", "update_statements"]}, ensure_ascii=False))
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
