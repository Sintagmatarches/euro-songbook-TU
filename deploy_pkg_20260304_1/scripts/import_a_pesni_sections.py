from __future__ import annotations

import argparse
import hashlib
import json
import re
import subprocess
import sys
import time
from collections import deque
from dataclasses import dataclass
from pathlib import Path
from typing import Any
from urllib.parse import urljoin, urlparse
from urllib.request import urlopen

ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from parse_html_file import parse_html_file  # noqa: E402

try:
    import langid  # type: ignore
except Exception:  # pragma: no cover
    langid = None


CATALOG_JS = ROOT / "shared" / "song-catalogs.js"
YEAR_MIN = 1600
YEAR_MAX = 2026

NAV_TITLES = {
    "главная",
    "библиотека",
    "коллекция нот",
    "сквоты",
    "театр",
    "о проекте",
}
SECTION_INDEX_HINT_RE = re.compile(
    r"(песни|фольклор|современные|плакаты|германия|испания|италия|польша|сша|франция|еврейское сопротивление)",
    re.IGNORECASE,
)
SKIP_EXTENSIONS = {
    ".jpg", ".jpeg", ".png", ".gif", ".webp", ".svg", ".mp3", ".wav", ".ogg",
    ".zip", ".rar", ".pdf", ".doc", ".docx",
}
ARTICLE_TITLE_RE = re.compile(
    r"(интервью|история|к вопросу|очерк|рассказываем|документ|архив|конференц|годовщин|судьба|фонд|миф|комментар)",
    re.IGNORECASE,
)
TITLE_NOISE_RE = re.compile(
    r"^\s*\d+\s*(?:[).\-:]\s*|\s+(?=(?:исполняет|performed by|sings?)\b))",
    re.IGNORECASE,
)
TITLE_BAD_RE = re.compile(
    r"^\s*(?:\d+\s*)?(?:исполняет|performed by|sings?|performer)\s*[:\-]",
    re.IGNORECASE,
)
TITLE_PUNCT_ONLY_RE = re.compile(r"^\s*[-–—.:]+\s*$")
WORD_RE = re.compile(r"[0-9A-Za-z\u00C0-\u024F\u0370-\u03ff\u0400-\u052f\u1E00-\u1EFF]+")
CYR_RE = re.compile(r"[\u0400-\u052f]")
LAT_RE = re.compile(r"[A-Za-z\u00C0-\u024F\u1E00-\u1EFF]")

YEAR_RE = re.compile(r"\b(1[6-9]\d{2}|20\d{2})\b")
BIBLIO_RE = re.compile(
    r"(\bвып\.?\b|\bизд\.?\b|\bсост\.?\b|\bред\.?\b|\bстр\.?\b|\b№\b|\bгазета\b|\bжурнал\b|\bбез подписи\b|"
    r"\bcollection\b|\bissue\b|\bedition\b|\bpublisher\b)",
    re.IGNORECASE,
)
DATE_LINE_RE = re.compile(
    r"^(?:\d{1,2}[./-]\d{1,2}[./-](1[6-9]\d{2}|20\d{2})|"
    r"(?:\d{1,2}\s+)?(?:январ|феврал|март|апрел|ма[йя]|июн|июл|август|сентябр|октябр|ноябр|декабр)\w*\s+(1[6-9]\d{2}|20\d{2})\.?|"
    r"(1[6-9]\d{2}|20\d{2})(?:\s*[-–—]\s*(1[6-9]\d{2}|20\d{2}))?)$",
    re.IGNORECASE,
)
WW2_MATERIALS_MARK_RE = re.compile(r"МАТЕРИАЛЫ\s+О\s+ВТОРОЙ\s+МИРОВОЙ\s+ВОЙНЕ", re.IGNORECASE)

LANG_HINTS: list[tuple[str, re.Pattern[str]]] = [
    ("ru", re.compile(r"\b(русск|russian)\w*\b", re.IGNORECASE)),
    ("uk", re.compile(r"\b(україн|украин|ukrainian)\w*\b", re.IGNORECASE)),
    ("be", re.compile(r"\b(белорус|беларус|belarusian)\w*\b", re.IGNORECASE)),
    ("de", re.compile(r"\b(немец|deutsch|german)\w*\b", re.IGNORECASE)),
    ("et", re.compile(r"\b(эстон|estonian|eesti)\w*\b", re.IGNORECASE)),
    ("lv", re.compile(r"\b(латыш|latvian|latvie)\w*\b", re.IGNORECASE)),
    ("lt", re.compile(r"\b(литов|lithuanian|lietuvi)\w*\b", re.IGNORECASE)),
    ("pl", re.compile(r"\b(польск|polish|polski)\w*\b", re.IGNORECASE)),
    ("fr", re.compile(r"\b(француз|french|fran[çc]ais)\w*\b", re.IGNORECASE)),
    ("es", re.compile(r"\b(испан|spanish|espa[ñn]ol)\w*\b", re.IGNORECASE)),
    ("pt", re.compile(r"\b(португал|portuguese)\w*\b", re.IGNORECASE)),
    ("it", re.compile(r"\b(итальян|italian|italiano)\w*\b", re.IGNORECASE)),
    ("nl", re.compile(r"\b(нидерланд|голланд|dutch|nederlands?)\w*\b", re.IGNORECASE)),
    ("ro", re.compile(r"\b(румын|romanian|rom[aâ]n)\w*\b", re.IGNORECASE)),
    ("fi", re.compile(r"\b(финск|finnish|suomi)\w*\b", re.IGNORECASE)),
    ("sv", re.compile(r"\b(шведск|swedish|svenska)\w*\b", re.IGNORECASE)),
    ("da", re.compile(r"\b(датск|danish|dansk)\w*\b", re.IGNORECASE)),
    ("no", re.compile(r"\b(норвеж|norwegian|norsk)\w*\b", re.IGNORECASE)),
    ("cs", re.compile(r"\b(чешск|czech)\w*\b", re.IGNORECASE)),
    ("sk", re.compile(r"\b(словац|slovak)\w*\b", re.IGNORECASE)),
    ("sl", re.compile(r"\b(словенск|slovenian)\w*\b", re.IGNORECASE)),
    ("hr", re.compile(r"\b(хорват|croatian|hrvatsk)\w*\b", re.IGNORECASE)),
    ("bs", re.compile(r"\b(босн|bosnian|bosansk)\w*\b", re.IGNORECASE)),
    ("mk", re.compile(r"\b(македон|macedonian)\w*\b", re.IGNORECASE)),
    ("sr", re.compile(r"\b(серб|serbian|srpsk)\w*\b", re.IGNORECASE)),
    ("hu", re.compile(r"\b(венгер|hungarian|magyar)\w*\b", re.IGNORECASE)),
    ("ga", re.compile(r"\b(ирланд|irish|gaeilge)\w*\b", re.IGNORECASE)),
    ("is", re.compile(r"\b(исланд|icelandic)\w*\b", re.IGNORECASE)),
    ("sq", re.compile(r"\b(албан|albanian|shqip)\w*\b", re.IGNORECASE)),
    ("tr", re.compile(r"\b(турец|turkish|türk)\w*\b", re.IGNORECASE)),
    ("ca", re.compile(r"\b(каталан|catalan)\w*\b", re.IGNORECASE)),
    ("gl", re.compile(r"\b(галисий|galician|galego)\w*\b", re.IGNORECASE)),
    ("mt", re.compile(r"\b(мальт|maltese|malti)\w*\b", re.IGNORECASE)),
    ("cy", re.compile(r"\b(валлий|welsh|cymraeg)\w*\b", re.IGNORECASE)),
    ("el", re.compile(r"\b(гречес|greek|ellin)\w*\b", re.IGNORECASE)),
    ("kk", re.compile(r"\b(казах|kazakh)\w*\b", re.IGNORECASE)),
    ("az", re.compile(r"\b(азербайджан|azerbaijani|azeri)\w*\b", re.IGNORECASE)),
    ("hy", re.compile(r"\b(армян|armenian)\w*\b", re.IGNORECASE)),
    ("ka", re.compile(r"\b(грузин|georgian)\w*\b", re.IGNORECASE)),
    ("en", re.compile(r"\b(англий|english)\w*\b", re.IGNORECASE)),
    ("yi", re.compile(r"\b(yiddish|jiddish|jidish)\b", re.IGNORECASE)),
    ("eo", re.compile(r"\b(esperanto)\b", re.IGNORECASE)),
]
LANG_LABEL_CONTEXT_RE = re.compile(
    r"(язык|language|текст|lyrics|перевод|translation|версия|version|вариант|оригинал|original|на\s+\w+\s+языке)",
    re.IGNORECASE,
)

CYR_WORDS: dict[str, set[str]] = {
    "ru": {"и", "в", "не", "на", "что", "как", "мы", "я", "ты", "но", "за", "это", "когда", "там", "для"},
    "uk": {"і", "в", "не", "на", "що", "як", "ми", "я", "ти", "але", "це", "мене", "тобі", "пісня", "життя"},
    "be": {"і", "ў", "не", "на", "што", "як", "мы", "я", "ты", "але", "гэта", "калі", "дзе", "няма"},
}
LAT_WORDS: dict[str, set[str]] = {
    "de": {"und", "der", "die", "das", "ein", "eine", "nicht", "ist", "ich", "du", "wir", "mit", "zu", "den"},
    "et": {"ja", "ei", "on", "see", "mis", "kui", "me", "ma", "sa", "ning", "üks", "sind", "mind"},
    "pl": {"i", "w", "na", "nie", "to", "że", "jak", "my", "ja", "ty", "za", "się", "z", "do"},
    "fr": {"le", "la", "les", "de", "et", "dans", "sur", "avec", "pour", "nous", "vous", "une", "que", "qui"},
    "es": {"el", "la", "los", "las", "de", "y", "en", "con", "para", "que", "nos", "una", "como", "por"},
    "it": {"il", "la", "gli", "le", "di", "e", "in", "con", "per", "che", "noi", "voi", "una"},
    "eo": {"la", "kaj", "de", "en", "mi", "vi", "ni", "ili", "estas", "por", "kun", "sur"},
}
LANG_VALUES = {
    "ru", "uk", "be", "pl", "lt", "lv", "et", "fi", "en", "sq", "hy", "az", "eu", "bs", "bg", "ca", "hr", "cs", "da",
    "nl", "fo", "fr", "gl", "ka", "de", "el", "hu", "is", "ga", "it", "kk", "lb", "mk", "mt", "no", "pt", "ro", "sr",
    "sk", "sl", "es", "sv", "tr", "cy", "ja", "yi", "eo",
}
CYR_LANG_VALUES = {"ru", "uk", "be", "bg", "mk", "sr", "kk"}
LATIN_SCRIPT_LANG_VALUES = {
    "pl",
    "lt",
    "lv",
    "et",
    "fi",
    "en",
    "sq",
    "az",
    "eu",
    "bs",
    "ca",
    "hr",
    "cs",
    "da",
    "nl",
    "fo",
    "fr",
    "gl",
    "de",
    "hu",
    "is",
    "ga",
    "it",
    "lb",
    "mt",
    "no",
    "pt",
    "ro",
    "sk",
    "sl",
    "es",
    "sv",
    "tr",
    "cy",
    "eo",
}
LID_LAT_TRUSTED_LANGS = {
    "de",
    "et",
    "pl",
    "fr",
    "es",
    "it",
    "en",
    "pt",
    "nl",
    "sv",
    "no",
    "da",
    "ro",
    "hu",
    "fi",
    "lt",
    "lv",
    "cs",
    "sk",
    "sl",
    "hr",
    "bs",
    "tr",
    "ca",
    "gl",
}
LID_LAT_RARE_LANGS = LATIN_SCRIPT_LANG_VALUES - LID_LAT_TRUSTED_LANGS
KK_WORDS = {"және", "үшін", "біз", "қазақ", "елім", "сенің", "менің", "жүрек"}

MAX_SOURCE_LEN = 3000
MAX_NOTES_LEN = 12000
MAX_LYRICS_LEN = 20000
TRUNCATE_MARK = "\n[...сокращено при импорте...]"

_LID = None
if langid is not None:
    try:
        _LID = langid.langid.LanguageIdentifier.from_modelstring(langid.langid.model, norm_probs=True)
        _LID.set_languages(sorted(LANG_VALUES))
    except Exception:
        _LID = None


@dataclass(frozen=True)
class SectionConfig:
    slug: str
    title: str
    index_url: str
    id_prefix: str
    country_mode: str
    fixed_country: str | None = None
    force_lang: str | None = None
    crawl_depth: int = 1
    tags: tuple[str, ...] = ("a-pesni.org",)


SECTION_CONFIGS: dict[str, SectionConfig] = {
    "russian_songs_18th": SectionConfig(
        slug="russian_songs_18th",
        title="Российские песни XVIII в.",
        index_url="http://a-pesni.org/18/18.php",
        id_prefix="ap18",
        country_mode="fixed",
        fixed_country="russian_empire_1900_1917",
        force_lang="ru",
        tags=("a-pesni.org", "Российская империя", "Российские песни XVIII века"),
    ),
    "literary_before_1917": SectionConfig(
        slug="literary_before_1917",
        title="Литературные песни до 1917",
        index_url="http://a-pesni.org/popular20/Popular20.php",
        id_prefix="aplit17",
        country_mode="fixed",
        fixed_country="russian_empire_1900_1917",
        force_lang="ru",
        tags=("a-pesni.org", "Российская империя", "Литературные песни до 1917"),
    ),
    "revolutionary_before_1917": SectionConfig(
        slug="revolutionary_before_1917",
        title="Революционное движение до 1917",
        index_url="http://a-pesni.org/starrev/Starrev.php",
        id_prefix="aprev17",
        country_mode="fixed",
        fixed_country="russian_empire_1900_1917",
        force_lang="ru",
        tags=("a-pesni.org", "Российская империя", "Революционное движение до 1917"),
    ),
    "russo_japanese_war": SectionConfig(
        slug="russo_japanese_war",
        title="Русско-японская война (1904-1905)",
        index_url="http://a-pesni.org/rus-jap/Rus-jap.php",
        id_prefix="aprjw",
        country_mode="fixed",
        fixed_country="russian_empire_1900_1917",
        force_lang="ru",
        tags=("a-pesni.org", "Российская империя", "Русско-японская война"),
    ),
    "world_war_i": SectionConfig(
        slug="world_war_i",
        title="Первая мировая война (1914-1918)",
        index_url="http://a-pesni.org/ww1/Ww1.php",
        id_prefix="apww1",
        country_mode="fixed",
        fixed_country="russian_empire_1900_1917",
        force_lang="ru",
        tags=("a-pesni.org", "Российская империя", "Первая мировая война"),
    ),
    "civil_war": SectionConfig(
        slug="civil_war",
        title="Гражданская война (1917-1922)",
        index_url="http://a-pesni.org/grvojna/Grvojna.php",
        id_prefix="apcw",
        country_mode="fixed",
        fixed_country="russian_civil_war_1917_1922",
        force_lang="ru",
        tags=("a-pesni.org", "Гражданская война", "Россия"),
    ),
    "world_war_ii": SectionConfig(
        slug="world_war_ii",
        title="Вторая мировая война (1939-1945)",
        index_url="http://a-pesni.org/ww2/Ww2.php",
        id_prefix="apww2",
        country_mode="ww2",
        crawl_depth=2,
        tags=("a-pesni.org", "Вторая мировая война"),
    ),
    "local_wars": SectionConfig(
        slug="local_wars",
        title="Локальные войны",
        index_url="http://a-pesni.org/afgan/Afgan.php",
        id_prefix="aplocal",
        country_mode="local_wars",
        crawl_depth=1,
        tags=("a-pesni.org", "Локальные войны"),
    ),
    "soviet_estrada": SectionConfig(
        slug="soviet_estrada",
        title="Советская эстрада",
        index_url="http://a-pesni.org/drugije/Drugije.php",
        id_prefix="apsestr",
        country_mode="ussr_family",
        tags=("a-pesni.org", "Советская эстрада"),
    ),
    "russian_emigration": SectionConfig(
        slug="russian_emigration",
        title="Русское Зарубежье",
        index_url="http://a-pesni.org/emigr/Emigr.php",
        id_prefix="apemigr",
        country_mode="fixed",
        fixed_country="white_emigration",
        force_lang="ru",
        tags=("a-pesni.org", "Белая эмиграция", "Русское Зарубежье"),
    ),
    "subculture_students": SectionConfig(
        slug="subculture_students",
        title="Students",
        index_url="http://a-pesni.org/stud/Stud.php",
        id_prefix="apstud",
        country_mode="timeline",
        crawl_depth=1,
        tags=("a-pesni.org", "subcultures", "students"),
    ),
    "subculture_army": SectionConfig(
        slug="subculture_army",
        title="Army",
        index_url="http://a-pesni.org/army/Army.php",
        id_prefix="aparmy",
        country_mode="timeline",
        crawl_depth=1,
        tags=("a-pesni.org", "subcultures", "army"),
    ),
    "subculture_cossacks": SectionConfig(
        slug="subculture_cossacks",
        title="Cossacks",
        index_url="http://a-pesni.org/kazaki/Kazaki.php",
        id_prefix="apkazak",
        country_mode="timeline",
        crawl_depth=1,
        tags=("a-pesni.org", "subcultures", "cossacks"),
    ),
    "folk_historical_ballads": SectionConfig(
        slug="folk_historical_ballads",
        title="Historical songs and ballads XIII-XIX",
        index_url="http://a-pesni.org/istor/Istor.php",
        id_prefix="apfkhst",
        country_mode="timeline",
        crawl_depth=1,
        tags=("a-pesni.org", "traditional_folklore", "historical_ballads"),
    ),
    "folk_landless_peasants": SectionConfig(
        slug="folk_landless_peasants",
        title="Peasants without land",
        index_url="http://a-pesni.org/bezzem/Bezzem.php",
        id_prefix="apfkbez",
        country_mode="timeline",
        crawl_depth=1,
        tags=("a-pesni.org", "traditional_folklore", "peasants_without_land"),
    ),
    "folk_workers": SectionConfig(
        slug="folk_workers",
        title="Workers",
        index_url="http://a-pesni.org/labor/Labor.php",
        id_prefix="apfklab",
        country_mode="timeline",
        crawl_depth=1,
        tags=("a-pesni.org", "traditional_folklore", "workers"),
    ),
    "folk_russian_misc": SectionConfig(
        slug="folk_russian_misc",
        title="Russian folk (misc)",
        index_url="http://a-pesni.org/rus/Rus.php",
        id_prefix="apfkrus",
        country_mode="timeline",
        crawl_depth=1,
        tags=("a-pesni.org", "traditional_folklore", "russian_folk_misc"),
    ),
    "folk_ukrainian_misc": SectionConfig(
        slug="folk_ukrainian_misc",
        title="Ukrainian folk (misc)",
        index_url="http://a-pesni.org/ukr/Ukr.php",
        id_prefix="apfkukr",
        country_mode="timeline",
        crawl_depth=1,
        tags=("a-pesni.org", "traditional_folklore", "ukrainian_folk_misc"),
    ),
    "folk_belarusian_misc": SectionConfig(
        slug="folk_belarusian_misc",
        title="Belarusian folk (misc)",
        index_url="http://a-pesni.org/belorus/Belorus.php",
        id_prefix="apfkbel",
        country_mode="timeline",
        crawl_depth=1,
        tags=("a-pesni.org", "traditional_folklore", "belarusian_folk_misc"),
    ),
    "folk_polish_misc": SectionConfig(
        slug="folk_polish_misc",
        title="Polish folk (misc)",
        index_url="http://a-pesni.org/polsk/Polsk.php",
        id_prefix="apfkpol",
        country_mode="timeline",
        crawl_depth=1,
        tags=("a-pesni.org", "traditional_folklore", "polish_folk_misc"),
    ),
    "folk_mari_misc": SectionConfig(
        slug="folk_mari_misc",
        title="Mari folk (misc)",
        index_url="http://a-pesni.org/marij/Marij.php",
        id_prefix="apfkmar",
        country_mode="timeline",
        crawl_depth=1,
        tags=("a-pesni.org", "traditional_folklore", "mari_folk_misc"),
    ),
    "liberation_revolutions_civil_wars": SectionConfig(
        slug="liberation_revolutions_civil_wars",
        title="Liberation songs: revolutions and civil wars",
        index_url="http://a-pesni.org/intern/Intern.php",
        id_prefix="aplibrc",
        country_mode="timeline",
        crawl_depth=1,
        tags=("a-pesni.org", "liberation_songs", "revolutions_and_civil_wars"),
    ),
    "liberation_national": SectionConfig(
        slug="liberation_national",
        title="Liberation songs: national liberation",
        index_url="http://a-pesni.org/nations/Nations.php",
        id_prefix="aplibnt",
        country_mode="timeline",
        crawl_depth=1,
        tags=("a-pesni.org", "liberation_songs", "national_liberation"),
    ),
    "liberation_yiddish": SectionConfig(
        slug="liberation_yiddish",
        title="Yiddish songs",
        index_url="http://a-pesni.org/idich/Idich.php",
        id_prefix="aplibyi",
        country_mode="timeline",
        force_lang="yi",
        crawl_depth=1,
        tags=("a-pesni.org", "liberation_songs", "yiddish"),
    ),
    "liberation_esperanto": SectionConfig(
        slug="liberation_esperanto",
        title="Esperanto songs",
        index_url="http://a-pesni.org/esperanto/Esperanto.php",
        id_prefix="aplibeo",
        country_mode="timeline",
        force_lang="eo",
        crawl_depth=1,
        tags=("a-pesni.org", "liberation_songs", "esperanto"),
    ),
}


def esc_sql(value: Any) -> str:
    return str(value or "").replace("'", "''")


def sql_nullable(value: str | None) -> str:
    if value is None:
        return "NULL"
    txt = normalize_line(value)
    if not txt:
        return "NULL"
    return f"'{esc_sql(txt)}'"


def normalize_line(text: str | None) -> str:
    out = str(text or "").replace("\ufeff", "").replace("\xa0", " ")
    out = re.sub(r"\s+", " ", out)
    return out.strip()


def normalize_multiline(text: str | None) -> str:
    lines = str(text or "").replace("\r\n", "\n").replace("\r", "\n").split("\n")
    out: list[str] = []
    for raw in lines:
        line = re.sub(r"[ \t]+$", "", raw).strip()
        if line:
            out.append(line)
        elif out and out[-1] != "":
            out.append("")
    while out and out[-1] == "":
        out.pop()
    return "\n".join(out)


def decode_html(raw: bytes) -> str:
    head = raw[:4096].decode("latin1", errors="ignore")
    enc_match = re.search(r"charset\s*=\s*['\"]?([a-zA-Z0-9_-]+)", head, flags=re.IGNORECASE)
    preferred = enc_match.group(1).lower() if enc_match else ""
    tried: list[str] = []
    for enc in [preferred, "utf-8", "windows-1251", "cp1251", "koi8-r", "latin1"]:
        if not enc or enc in tried:
            continue
        tried.append(enc)
        try:
            return raw.decode(enc)
        except Exception:
            continue
    return raw.decode("utf-8", errors="replace")


def parse_catalog_values(var_name: str) -> list[str]:
    text = CATALOG_JS.read_text(encoding="utf-8")
    match = re.search(rf"export const {re.escape(var_name)}\s*=\s*\[(.*?)\];", text, re.S)
    if not match:
        raise RuntimeError(f"Could not parse {var_name} from {CATALOG_JS}")
    return re.findall(r'"([^"]+)"', match.group(1))


def fetch_html(url: str) -> str:
    last_error: Exception | None = None
    for attempt in range(3):
        try:
            raw = urlopen(url, timeout=45).read()
            return decode_html(raw)
        except Exception as exc:  # pragma: no cover - network flake path
            last_error = exc
            if attempt < 2:
                time.sleep(1.2 * (attempt + 1))
    if last_error is not None:
        raise last_error
    raise RuntimeError(f"Unexpected fetch failure for {url}")


def safe_fixture_path(base_dir: Path, url: str) -> Path:
    parsed = urlparse(url)
    rel = parsed.path.lstrip("/")
    if not rel:
        rel = "__root__.html"
    path = base_dir / rel
    if path.suffix.lower() not in {".html", ".htm", ".php"}:
        path = path.with_suffix(path.suffix + ".html")
    return path


def get_page_html(url: str, fixtures_dir: Path, refresh: bool) -> tuple[str, Path]:
    file_path = safe_fixture_path(fixtures_dir, url)
    file_path.parent.mkdir(parents=True, exist_ok=True)
    if refresh or not file_path.exists():
        try:
            html = fetch_html(url)
            file_path.write_text(html, encoding="utf-8")
        except Exception:
            if file_path.exists():
                html = file_path.read_text(encoding="utf-8", errors="replace")
            else:
                raise
    else:
        html = file_path.read_text(encoding="utf-8", errors="replace")
    return html, file_path


def extract_links(html: str, base_url: str) -> list[tuple[str, str]]:
    out: list[tuple[str, str]] = []
    for href, anchor in re.findall(
        r"<a[^>]+href\s*=\s*['\"]([^'\"]+)['\"][^>]*>(.*?)</a>",
        html,
        flags=re.IGNORECASE | re.DOTALL,
    ):
        text = re.sub(r"<[^>]+>", " ", anchor)
        text = re.sub(r"\s+", " ", text).strip()
        if not text:
            continue
        abs_url = urljoin(base_url, href)
        out.append((abs_url, text))
    return out


def is_nav_text(text: str) -> bool:
    return normalize_line(text).lower() in NAV_TITLES


def is_same_domain(url: str) -> bool:
    host = (urlparse(url).netloc or "").lower()
    return host.endswith("a-pesni.org")


def should_skip_link(url: str, text: str) -> bool:
    if not is_same_domain(url):
        return True
    if is_nav_text(text):
        return True
    parsed = urlparse(url)
    path = parsed.path or ""
    if not path or path in {"/", "/index.php", "/letra.php", "/collection.php", "/about.php"}:
        return True
    ext = Path(path).suffix.lower()
    if ext in SKIP_EXTENSIONS:
        return True
    return False


def looks_like_index_link(url: str, text: str) -> bool:
    parsed = urlparse(url)
    base = Path(parsed.path).name
    if base.lower() in {"index.php", "index.htm", "index.html"}:
        return True
    if SECTION_INDEX_HINT_RE.search(text):
        return True
    letters = [c for c in text if c.isalpha()]
    if letters and len(letters) >= 5:
        upper_share = sum(1 for c in letters if c.isupper()) / len(letters)
        if upper_share >= 0.7 and len(text) <= 80:
            return True
    return False


def collect_section_links(cfg: SectionConfig, fixtures_dir: Path, refresh: bool) -> list[tuple[str, str]]:
    queue: deque[tuple[str, int]] = deque([(cfg.index_url, 0)])
    seen_pages: set[str] = set()
    candidates: dict[str, str] = {}

    while queue:
        page_url, depth = queue.popleft()
        if page_url in seen_pages:
            continue
        seen_pages.add(page_url)
        html, _ = get_page_html(page_url, fixtures_dir, refresh=refresh)
        links_html = html
        # In WWII section, everything after "Материалы о Второй мировой войне"
        # is article/document block and must not be imported as songs.
        if cfg.slug == "world_war_ii":
            marker = WW2_MATERIALS_MARK_RE.search(html)
            if marker:
                links_html = html[: marker.start()]
        for link_url, link_text in extract_links(links_html, page_url):
            if should_skip_link(link_url, link_text):
                continue
            if depth < cfg.crawl_depth and looks_like_index_link(link_url, link_text):
                queue.append((link_url, depth + 1))
                continue
            candidates.setdefault(link_url, link_text)

    candidates.pop(cfg.index_url, None)
    return sorted(candidates.items(), key=lambda item: item[0])


def tokenize(text: str) -> list[str]:
    return [m.group(0).lower() for m in WORD_RE.finditer(text)]


def _line_explicit_lang_label(line: str, match_start: int, match_text: str) -> bool:
    s = normalize_line(line)
    if not s:
        return False
    low = s.lower()
    if LANG_LABEL_CONTEXT_RE.search(low):
        return True

    tokens = re.findall(r"[A-Za-zА-Яа-яЁёІіЇїЄєЎўҚқҢңҮүҰұӘәҒғҺһ-]+", s)
    if 1 <= len(tokens) <= 2 and len(s) <= 24:
        return True

    if low.startswith("(") and low.endswith(")") and len(low) <= 40:
        return True

    prefix = s[:match_start].rstrip()
    if prefix.endswith(("-", "—", "–", "/", "(", "[", "«")):
        return True

    # Language token at the end after separator, e.g. "Песня - Немецкий"
    suffix = s[match_start:]
    if len(suffix) <= 24 and re.search(r"[-—–/:]\s*$", prefix):
        return True

    # Phrases like "на турецком"
    if re.search(rf"\bна\s+{re.escape(match_text.lower())}\b", low):
        return True

    return False


def detect_hint(*parts: str, require_explicit_label: bool = True) -> str | None:
    lines: list[str] = []
    for part in parts:
        txt = normalize_multiline(part)
        if not txt:
            continue
        lines.extend([ln for ln in txt.splitlines() if normalize_line(ln)])
    if not lines:
        return None

    found: list[str] = []
    for line in lines:
        for lang, pattern in LANG_HINTS:
            m = pattern.search(line)
            if not m:
                continue
            if require_explicit_label and not _line_explicit_lang_label(line, m.start(), m.group(0)):
                continue
            found.append(lang)

    uniq = list(dict.fromkeys(found))
    if len(uniq) == 1:
        return uniq[0]
    return None


def word_hits(tokens: list[str], vocab: set[str]) -> int:
    token_set = set(tokens)
    return sum(1 for word in vocab if word in token_set)


def detect_cyr_lang(sample: str, old_lang: str) -> tuple[str, float, str]:
    tokens = tokenize(sample)
    uk_chars = sum(sample.count(ch) for ch in "їєґЇЄҐ")
    be_chars = sum(sample.count(ch) for ch in "ўЎ")
    kk_chars = sum(sample.count(ch) for ch in "әғқңөұүһіӘҒҚҢӨҰҮҺІ")
    ru_chars = sum(sample.count(ch) for ch in "ыэёъЫЭЁЪ")

    uk_hits = word_hits(tokens, CYR_WORDS["uk"])
    be_hits = word_hits(tokens, CYR_WORDS["be"])
    ru_hits = word_hits(tokens, CYR_WORDS["ru"])
    kk_hits = word_hits(tokens, KK_WORDS)

    if kk_chars >= 4 and kk_hits >= 1:
        return "kk", 0.99, "kk_markers"
    if uk_chars >= 1:
        return "uk", 0.99, "uk_markers"
    if be_chars >= 1:
        return "be", 0.99, "be_markers"

    if _LID is not None:
        pred, prob = _LID.classify(sample[:6000])
        pred = str(pred)
        prob = float(prob)
        if pred in {"ru", "uk", "be", "bg", "mk", "sr", "kk"}:
            if pred == "uk" and uk_chars >= 1:
                return "uk", max(prob, 0.95), "lid_uk"
            if pred == "be" and be_chars >= 1:
                return "be", max(prob, 0.95), "lid_be"
            if pred in {"bg", "mk", "sr", "kk"} and prob >= 0.95:
                if pred == "kk" and kk_hits == 0 and kk_chars < 6:
                    return "ru", max(prob, 0.82), "ru_over_weak_kk_lid"
                return pred, prob, "lid_cyr"
            if pred == "ru" and (ru_chars >= 1 or ru_hits >= max(uk_hits, be_hits)):
                return "ru", max(prob, 0.9), "lid_ru"

    if ru_chars >= 1 or ru_hits >= max(uk_hits, be_hits):
        return "ru", 0.8, "ru_default"
    if uk_chars >= 1 and uk_hits > ru_hits and uk_hits >= 2:
        return "uk", 0.72, "uk_words"
    if be_chars >= 1 and be_hits > ru_hits and be_hits >= 2:
        return "be", 0.72, "be_words"
    if old_lang in {"ru", "uk", "be", "bg", "mk", "sr", "kk"}:
        return old_lang, 0.45, "cyr_keep_old_cyr"
    return "ru", 0.75, "cyr_fallback_ru"


def detect_latin_lang(
    sample: str,
    old_lang: str,
    *,
    hint_title: str | None = None,
    hint_meta: str | None = None,
) -> tuple[str, float, str]:
    text = sample[:7000]
    tokens = tokenize(text)
    scores: dict[str, int] = {}
    for lang, vocab in LAT_WORDS.items():
        scores[lang] = word_hits(tokens, vocab)

    et_bonus = text.lower().count("õ")
    de_bonus = text.lower().count("ß") + len(re.findall(r"\bsch", text.lower()))
    scores["et"] = scores.get("et", 0) + et_bonus * 2
    scores["de"] = scores.get("de", 0) + de_bonus * 2

    best_lang = max(scores, key=scores.get) if scores else ""
    best_score = scores.get(best_lang, 0)
    second_score = sorted(scores.values(), reverse=True)[1] if len(scores) > 1 else 0

    if best_lang and best_score >= 6 and best_score >= second_score + 2:
        return best_lang, 0.91, "lat_words_strong"
    if best_lang == "it" and best_score >= 3 and best_score >= second_score + 2:
        return "it", 0.86, "it_words_mid"
    if best_lang == "et" and best_score >= 3 and best_score >= second_score + 2:
        return "et", 0.86, "et_words"
    if best_lang == "de" and best_score >= 3 and best_score >= second_score + 2:
        return "de", 0.86, "de_words"
    if best_lang in {"pl", "fr", "es", "it"} and best_score >= 4 and best_score >= second_score + 1:
        return best_lang, 0.84, "lat_words_mid"

    if _LID is not None:
        pred, prob = _LID.classify(text)
        pred = str(pred)
        prob = float(prob)
        if pred in LID_LAT_TRUSTED_LANGS and prob >= 0.92:
            return pred, prob, "lid_lat"
        if pred in LID_LAT_TRUSTED_LANGS and prob >= 0.75 and pred in {"de", "et", "pl", "fr", "es", "it"}:
            return pred, prob, "lid_lat_mid"
        if pred in LID_LAT_RARE_LANGS and (hint_title == pred or hint_meta == pred):
            return pred, min(0.9, max(prob, 0.75)), "lid_lat_rare_with_hint"
        if pred in LANG_VALUES and pred not in LATIN_SCRIPT_LANG_VALUES:
            if hint_title == pred or hint_meta == pred:
                return pred, min(0.9, max(prob, 0.75)), "lid_lat_nonlatin_with_hint"

    if best_lang and best_score >= 4:
        return best_lang, 0.7, "lat_words"
    if old_lang in LATIN_SCRIPT_LANG_VALUES:
        return old_lang, 0.35, "lat_keep_old"
    return "en", 0.3, "lat_default_en"


def detect_language(
    *,
    title: str,
    subtitle: str,
    lyrics: str,
    source: str,
    notes: str,
    old_lang: str = "ru",
) -> tuple[str, float, str]:
    sample = "\n".join([title, subtitle, lyrics[:7000]])
    cyr = len(CYR_RE.findall(sample))
    lat = len(LAT_RE.findall(sample))
    tokens = tokenize(sample)
    uk_marker_hits = sum(sample.count(ch) for ch in "їЇєЄґҐ")
    be_marker_hits = sum(sample.count(ch) for ch in "ўЎ")
    kk_token_hits = word_hits(tokens, KK_WORDS)

    hint_title = detect_hint(title, subtitle, require_explicit_label=True)
    hint_meta = detect_hint(source[:500], notes[:500], require_explicit_label=True)

    if hint_title in LANG_VALUES:
        if hint_title in {"ru", "uk", "be", "bg", "mk", "sr", "kk"}:
            if hint_title == "ru":
                return "ru", 1.0, "title_hint_ru"
            if hint_title == "uk" and uk_marker_hits >= 1:
                return "uk", 1.0, "title_hint_uk"
            if hint_title == "be" and be_marker_hits >= 1:
                return "be", 1.0, "title_hint_be"
            if hint_title == "kk" and kk_token_hits >= 1:
                return "kk", 1.0, "title_hint_kk"
            if hint_title in {"bg", "mk", "sr"}:
                return hint_title, 1.0, "title_hint_cyr_other"
        if lat >= max(15, int(cyr * 0.9)) or cyr < 20:
            return hint_title, 0.98, "title_hint"

    if hint_meta in LANG_VALUES:
        if hint_meta in {"ru", "uk", "be", "bg", "mk", "sr", "kk"} and cyr >= max(15, int(lat * 1.1)):
            if hint_meta == "ru":
                return "ru", 0.93, "meta_hint_cyr_ru"
            if hint_meta == "uk" and uk_marker_hits >= 1:
                return "uk", 0.93, "meta_hint_cyr_uk"
            if hint_meta == "be" and be_marker_hits >= 1:
                return "be", 0.93, "meta_hint_cyr_be"
            if hint_meta == "kk" and kk_token_hits >= 1:
                return "kk", 0.93, "meta_hint_cyr_kk"
            if hint_meta in {"bg", "mk", "sr"}:
                return hint_meta, 0.93, "meta_hint_cyr"
        if hint_meta not in {"ru", "uk", "be", "bg", "mk", "sr", "kk"} and lat >= max(15, int(cyr * 0.9)):
            return hint_meta, 0.9, "meta_hint_lat"

    if cyr >= max(15, int(lat * 1.15)):
        return detect_cyr_lang(sample, old_lang)
    if lat >= 8:
        return detect_latin_lang(sample, old_lang, hint_title=hint_title, hint_meta=hint_meta)
    if hint_title in LANG_VALUES:
        return hint_title, 0.7, "weak_title_hint"
    if hint_meta in LANG_VALUES:
        return hint_meta, 0.65, "weak_meta_hint"
    return (old_lang if old_lang in LANG_VALUES else "ru"), 0.25, "keep_old"


def is_date_line(line: str) -> bool:
    stripped = normalize_line(line)
    if not stripped:
        return False
    candidate = stripped
    for _ in range(2):
        if len(candidate) >= 2 and candidate[0] in "<([{" and candidate[-1] in ">)]}":
            candidate = candidate[1:-1].strip()
            continue
        break
    if DATE_LINE_RE.fullmatch(candidate):
        return True
    return False


def is_bibliography_line(line: str) -> bool:
    stripped = normalize_line(line)
    if not stripped:
        return False
    if BIBLIO_RE.search(stripped):
        return True
    if YEAR_RE.search(stripped) and stripped.count(",") >= 1 and len(stripped) <= 180:
        return True
    if stripped.lower().startswith("источник:"):
        return True
    return False


def strip_trailing_metadata_from_lyrics(lyrics: str) -> tuple[str, list[str]]:
    lines = [line.rstrip() for line in normalize_multiline(lyrics).split("\n")]
    moved: list[str] = []
    while lines:
        tail = lines[-1].strip()
        if not tail:
            lines.pop()
            continue
        if is_date_line(tail) or is_bibliography_line(tail):
            moved.insert(0, tail)
            lines.pop()
            continue
        break
    return normalize_multiline("\n".join(lines)), moved


def extract_year_from_line(line: str) -> int | None:
    for match in YEAR_RE.finditer(line):
        year = int(match.group(1))
        if YEAR_MIN <= year <= YEAR_MAX:
            return year
    return None


def infer_song_year(source: str, notes: str, lyrics: str) -> str | None:
    def find(lines: list[str]) -> int | None:
        for line in lines:
            clean = normalize_line(line)
            if not clean:
                continue
            if is_date_line(clean):
                year = extract_year_from_line(clean)
                if year is not None:
                    return year
            if is_bibliography_line(clean):
                year = extract_year_from_line(clean)
                if year is not None:
                    return year
        return None

    source_year = find(source.splitlines()[:24])
    if source_year:
        return str(source_year)
    notes_year = find(notes.splitlines()[:40])
    if notes_year:
        return str(notes_year)
    tail = [line for line in normalize_multiline(lyrics).splitlines() if line.strip()]
    tail_year = find(tail[-10:])
    if tail_year:
        return str(tail_year)
    return None


def infer_ussr_period(year_text: str | None) -> str | None:
    if not year_text or not year_text.isdigit():
        return None
    year = int(year_text)
    if year < 1922 or year > 1991:
        return None
    if year <= 1940:
        return "ussr_1922_1940"
    if year <= 1945:
        return "ussr_1941_1945"
    if year <= 1953:
        return "ussr_1946_1953"
    if year <= 1964:
        return "ussr_1953_1964"
    if year <= 1985:
        return "ussr_1964_1985"
    return "ussr_1985_1991"


def parse_year(year_text: str | None) -> int | None:
    if not year_text or not str(year_text).isdigit():
        return None
    value = int(year_text)
    if YEAR_MIN <= value <= YEAR_MAX:
        return value
    return None


def default_country_for_lang(lang: str, year: int | None) -> str:
    if lang == "ru":
        if year is not None and year >= 1991:
            return "russian_federation_1991"
        return "ussr"
    if lang == "uk":
        return "ukr_ssr_1919_1991" if year is None or year <= 1991 else "ukraine_1991"
    if lang == "be":
        return "bssr_1919_1991" if year is None or year <= 1991 else "belarus_1991"
    if lang == "et":
        return "estonian_ssr_1940_1991" if year is None or year <= 1991 else "estonia_1991"
    if lang == "lv":
        return "latvian_ssr_1940_1990" if year is None or year <= 1990 else "latvia_1991"
    if lang == "lt":
        return "lithuanian_ssr_1940_1990" if year is None or year <= 1990 else "lithuania_1990"
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
        return "azerbaijan_1991" if year is None or year >= 1991 else "azerbaijan_ssr_1920_1991"
    if lang == "hy":
        return "armenia_1991" if year is None or year >= 1991 else "armenian_ssr_1920_1991"
    if lang == "ka":
        return "georgia_1991" if year is None or year >= 1991 else "georgian_ssr_1921_1991"
    if lang == "kk":
        return "kazakhstan_1991" if year is None or year >= 1991 else "kazakh_ssr_1936_1991"
    if lang == "yi":
        return "other_countries"
    if lang == "eo":
        return "other_countries"
    return "other_countries"


def timeline_country_for_lang(lang: str, year: int | None) -> str:
    if lang == "ru":
        if year is None:
            return "ussr"
        if year <= 1916:
            return "russian_empire_1900_1917"
        if year == 1917:
            return "russian_republic_1917"
        if year <= 1921:
            return "rsfsr_1917_1991"
        if year <= 1991:
            return "ussr"
        return "russian_federation_1991"

    if lang == "pl":
        if year is None:
            return "poland_1989"
        if year <= 1917:
            return "kingdom_of_poland_within_russian_empire_1815_1915"
        if year <= 1939:
            return "second_polish_republic_1918_1939"
        if year <= 1989:
            return "polish_peoples_republic_1952_1989"
        return "poland_1989"

    if lang == "uk":
        if year is None:
            return "ukr_ssr_1919_1991"
        if year <= 1916:
            return "russian_empire_1900_1917"
        if year <= 1921:
            return "ukrainian_peoples_republic_1917_1921"
        if year <= 1991:
            return "ukr_ssr_1919_1991"
        return "ukraine_1991"

    if lang == "be":
        if year is None:
            return "bssr_1919_1991"
        if year <= 1917:
            return "russian_empire_1900_1917"
        if year <= 1919:
            return "belarusian_peoples_republic_1918_1919"
        if year <= 1991:
            return "bssr_1919_1991"
        return "belarus_1991"

    if lang == "et":
        if year is None:
            return "estonia_1991"
        if year <= 1940:
            return "estonia_first_republic_1918_1940"
        if year <= 1991:
            return "estonian_ssr_1940_1991"
        return "estonia_1991"

    if lang == "lv":
        if year is None:
            return "latvia_1991"
        if year <= 1940:
            return "latvia_first_republic_1918_1940"
        if year <= 1990:
            return "latvian_ssr_1940_1990"
        return "latvia_1991"

    if lang == "lt":
        if year is None:
            return "lithuania_1990"
        if year <= 1940:
            return "lithuania_first_republic_1918_1940"
        if year <= 1990:
            return "lithuanian_ssr_1940_1990"
        return "lithuania_1990"

    if lang == "de":
        if year is None:
            return "germany_1990"
        if year <= 1918:
            return "german_empire_1900_1918"
        if year <= 1933:
            return "weimar_republic_1918_1933"
        if year <= 1945:
            return "third_reich_1933_1945"
        return "germany_1990"

    return default_country_for_lang(lang, year)


def ussr_family_country(lang: str) -> str | None:
    mapping = {
        "ru": "ussr",
        "uk": "ukr_ssr_1919_1991",
        "be": "bssr_1919_1991",
        "et": "estonian_ssr_1940_1991",
        "lv": "latvian_ssr_1940_1990",
        "lt": "lithuanian_ssr_1940_1990",
        "az": "azerbaijan_ssr_1920_1991",
        "hy": "armenian_ssr_1920_1991",
        "ka": "georgian_ssr_1921_1991",
        "kk": "kazakh_ssr_1936_1991",
    }
    return mapping.get(lang)


def resolve_country(cfg: SectionConfig, lang: str, year_text: str | None) -> str:
    year = parse_year(year_text)
    if cfg.country_mode == "fixed" and cfg.fixed_country:
        return cfg.fixed_country
    if cfg.country_mode == "ussr_family":
        fam = ussr_family_country(lang)
        if fam:
            return fam
        return default_country_for_lang(lang, year)
    if cfg.country_mode == "timeline":
        return timeline_country_for_lang(lang, year)
    if cfg.country_mode == "ww2":
        fam = ussr_family_country(lang)
        if fam:
            return fam
        if lang == "de":
            return "third_reich_1933_1945"
        if lang == "pl":
            return "second_polish_republic_1918_1939"
        if lang in {"hr", "bs", "sr", "sl", "mk"}:
            return "kingdom_of_yugoslavia_1929_1945"
        if lang in {"fi", "fr", "en", "es", "it", "de", "pl"}:
            return default_country_for_lang(lang, year)
        return "other_countries"
    if cfg.country_mode == "local_wars":
        fam = ussr_family_country(lang)
        if fam and (year is None or year <= 1991):
            return fam
        if lang == "ru":
            if year is not None and year >= 1991:
                return "russian_federation_1991"
            return "ussr"
        fallback = default_country_for_lang(lang, year)
        return fallback if fallback else "other_countries"
    return cfg.fixed_country or "other_countries"


def clean_title(title: str, anchor: str) -> str:
    current = normalize_line(title)
    if not current:
        current = normalize_line(anchor)
    current = TITLE_NOISE_RE.sub("", current).strip()
    if TITLE_BAD_RE.match(current) or TITLE_PUNCT_ONLY_RE.match(current):
        current = normalize_line(anchor)
    if not current:
        return ""
    return current[:220]


def make_song_id(prefix: str, stem: str, used: set[str]) -> str:
    base = re.sub(r"[^a-z0-9_]+", "_", stem.lower()) or "song"
    candidate = f"{prefix}_{base}"
    if candidate not in used:
        used.add(candidate)
        return candidate
    i = 2
    while True:
        nxt = f"{candidate}_{i}"
        if nxt not in used:
            used.add(nxt)
            return nxt
        i += 1


def is_probable_song(title: str, lyrics: str, versions: list[dict[str, Any]]) -> bool:
    if not title or not lyrics:
        return False
    norm_title = normalize_line(title)
    if len(norm_title) > 140 and ARTICLE_TITLE_RE.search(norm_title):
        return False
    lines = [line.strip() for line in normalize_multiline(lyrics).splitlines() if line.strip()]
    if len(lines) < 4 and not versions:
        return False
    long_lines = sum(1 for line in lines if len(line) > 120)
    if lines and long_lines > max(1, len(lines) // 3):
        return False
    words = len(norm_title.split())
    if words >= 14 and ARTICLE_TITLE_RE.search(norm_title):
        return False
    return True


def normalize_dedupe_key(title: str, lyrics: str) -> str:
    head = "\n".join([normalize_line(title).lower(), normalize_multiline(lyrics).lower()[:600]])
    return hashlib.sha1(head.encode("utf-8")).hexdigest()


def clip_text_for_db(text: str, max_len: int) -> str:
    if len(text) <= max_len:
        return text
    cut = max_len - len(TRUNCATE_MARK)
    if cut < 0:
        cut = max_len
        return text[:cut]
    return text[:cut].rstrip() + TRUNCATE_MARK


def build_song_payload(
    cfg: SectionConfig,
    parsed: dict[str, Any],
    page_url: str,
    anchor_title: str,
    stem: str,
    used_ids: set[str],
    seen_keys: set[str],
    valid_countries: set[str],
) -> tuple[dict[str, Any] | None, str]:
    song = parsed.get("song", {}) or {}
    versions = list(parsed.get("versions", []) or [])
    links_raw = list(parsed.get("links", []) or [])

    title = clean_title(str(song.get("title", "")), anchor_title)
    subtitle = normalize_multiline(song.get("subtitle", ""))
    source = normalize_multiline(song.get("source", ""))
    notes = normalize_multiline(song.get("notes", ""))
    raw_lyrics = normalize_multiline(song.get("lyrics", ""))
    lyrics, moved_source_lines = strip_trailing_metadata_from_lyrics(raw_lyrics)
    if moved_source_lines:
        source = normalize_multiline("\n".join([source, *moved_source_lines]))
    source = clip_text_for_db(source, MAX_SOURCE_LEN)
    notes = clip_text_for_db(notes, MAX_NOTES_LEN)
    if len(lyrics) > MAX_LYRICS_LEN:
        return None, "oversize_lyrics"

    if not title or not lyrics:
        return None, "missing_title_or_lyrics"

    if cfg.force_lang:
        lang = cfg.force_lang
        lang_conf = 1.0
        lang_reason = "force_lang"
    else:
        lang, lang_conf, lang_reason = detect_language(
            title=title,
            subtitle=subtitle,
            lyrics=lyrics,
            source=source,
            notes=notes,
            old_lang=str(song.get("lang", "")).strip() or "ru",
        )
        if lang not in LANG_VALUES:
            lang = "ru"
            lang_conf = 0.2
            lang_reason = "fallback_ru"

    year = infer_song_year(source, notes, lyrics)
    country = resolve_country(cfg, lang, year)
    if country not in valid_countries:
        country = "other_countries"
    period = infer_ussr_period(year) if country == "ussr" else None

    if not is_probable_song(title, lyrics, versions):
        return None, "not_song_like"

    dedupe_key = normalize_dedupe_key(title, lyrics)
    if dedupe_key in seen_keys:
        return None, "duplicate_song"
    seen_keys.add(dedupe_key)

    song_id = make_song_id(cfg.id_prefix, stem, used_ids)
    version_id_by_sort: dict[int, str] = {}
    version_rows: list[dict[str, Any]] = []

    for idx, version in enumerate(versions, start=1):
        lyrics_v = normalize_multiline(version.get("lyrics", ""))
        if not lyrics_v:
            continue
        if len(lyrics_v) > MAX_LYRICS_LEN:
            continue
        order = int(version.get("sort_order") or idx)
        version_id = f"{song_id}_v{order}"
        version_id_by_sort[order] = version_id
        if cfg.force_lang:
            v_lang = cfg.force_lang
        else:
            v_lang, _, _ = detect_language(
                title=normalize_line(version.get("title", "")) or title,
                subtitle="",
                lyrics=lyrics_v,
                source=normalize_multiline(version.get("source", "")),
                notes="",
                old_lang=lang,
            )
            if v_lang not in LANG_VALUES:
                v_lang = lang
        version_rows.append(
            {
                "id": version_id,
                "song_id": song_id,
                "title": normalize_line(version.get("title", "")) or None,
                "lang": v_lang,
                "lyrics": lyrics_v,
                "source": clip_text_for_db(normalize_multiline(version.get("source", "")), MAX_SOURCE_LEN) or None,
                "sort_order": order,
            }
        )

    link_rows: list[dict[str, Any]] = []
    for idx, link in enumerate(links_raw, start=1):
        raw_url = normalize_line(link.get("url", ""))
        if not raw_url:
            continue
        resolved_url = raw_url if re.match(r"^https?://", raw_url, flags=re.IGNORECASE) else urljoin(page_url, raw_url)
        version_sort = link.get("version_sort_order")
        version_id = version_id_by_sort.get(version_sort) if isinstance(version_sort, int) else None
        link_rows.append(
            {
                "id": f"{song_id}_l{idx}",
                "song_id": song_id,
                "title": normalize_line(link.get("title", "")) or None,
                "url": resolved_url,
                "kind": normalize_line(link.get("kind", "")) or "external",
                "version_id": version_id,
                "sort_order": int(link.get("sort_order") or idx),
            }
        )

    payload = {
        "id": song_id,
        "url": page_url,
        "anchor_title": anchor_title,
        "title": title,
        "subtitle": subtitle or "",
        "lang": lang,
        "lang_confidence": round(lang_conf, 4),
        "lang_reason": lang_reason,
        "country": country,
        "period": period,
        "year": year,
        "source": source or "",
        "notes": notes or "",
        "lyrics": lyrics,
        "versions": version_rows,
        "links": link_rows,
    }
    return payload, "ok"


def build_sql_for_section(cfg: SectionConfig, payload_items: list[dict[str, Any]]) -> list[str]:
    tags_json = json.dumps(list(cfg.tags), ensure_ascii=False)
    sql_lines: list[str] = [
        f"DELETE FROM song_links WHERE song_id LIKE '{esc_sql(cfg.id_prefix)}_%';",
        f"DELETE FROM song_versions WHERE song_id LIKE '{esc_sql(cfg.id_prefix)}_%';",
        f"DELETE FROM songs_fts WHERE song_id LIKE '{esc_sql(cfg.id_prefix)}_%';",
        f"DELETE FROM songs WHERE id LIKE '{esc_sql(cfg.id_prefix)}_%';",
    ]

    for item in payload_items:
        sql_lines.append(
            "INSERT OR REPLACE INTO songs ("
            "id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at"
            ") VALUES ("
            f"'{esc_sql(item['id'])}',"
            f"'{esc_sql(item['title'])}',"
            f"{sql_nullable(item['subtitle'])},"
            f"'{esc_sql(item['lang'])}',"
            f"'{esc_sql(item['country'])}',"
            f"{sql_nullable(item['period'])},"
            f"{sql_nullable(item['year'])},"
            f"{sql_nullable(item['source'])},"
            f"{sql_nullable(item['notes'])},"
            f"'{esc_sql(item['lyrics'])}',"
            f"'{esc_sql(tags_json)}',"
            "1,'published',"
            "COALESCE((SELECT created_at FROM songs WHERE id="
            f"'{esc_sql(item['id'])}'"
            "), datetime('now')),"
            "datetime('now'));"
        )
        sql_lines.append(
            f"INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('{esc_sql(item['id'])}','{esc_sql(item['title'])}','{esc_sql(item['lyrics'])}');"
        )

        for version in item["versions"]:
            if not version["lyrics"]:
                continue
            sql_lines.append(
                "INSERT OR REPLACE INTO song_versions (id,song_id,title,lang,lyrics,source,sort_order) VALUES ("
                f"'{esc_sql(version['id'])}',"
                f"'{esc_sql(item['id'])}',"
                f"{sql_nullable(version['title'])},"
                f"{sql_nullable(version['lang'])},"
                f"'{esc_sql(version['lyrics'])}',"
                f"{sql_nullable(version['source'])},"
                f"{int(version['sort_order'])}"
                ");"
            )

        for link in item["links"]:
            sql_lines.append(
                "INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ("
                f"'{esc_sql(link['id'])}',"
                f"'{esc_sql(item['id'])}',"
                f"{sql_nullable(link['title'])},"
                f"'{esc_sql(link['url'])}',"
                f"{sql_nullable(link['kind'])},"
                f"{sql_nullable(link['version_id'])},"
                f"{int(link['sort_order'])}"
                ");"
            )

    sql_lines.append("")
    return sql_lines


def import_section(
    cfg: SectionConfig,
    *,
    refresh: bool,
    max_pages: int | None,
    valid_countries: set[str],
) -> dict[str, Any]:
    fixtures_dir = ROOT / "fixtures" / "a_pesni" / cfg.slug
    out_dir = ROOT / "out" / "a_pesni"
    fixtures_dir.mkdir(parents=True, exist_ok=True)
    out_dir.mkdir(parents=True, exist_ok=True)

    links = collect_section_links(cfg, fixtures_dir, refresh=refresh)
    if max_pages is not None and max_pages > 0:
        links = links[:max_pages]

    used_ids: set[str] = set()
    seen_keys: set[str] = set()
    payload_items: list[dict[str, Any]] = []
    skipped_reasons: dict[str, int] = {}

    for page_url, anchor_text in links:
        try:
            _, file_path = get_page_html(page_url, fixtures_dir, refresh=refresh)
            parsed = parse_html_file(file_path)
            stem = Path(urlparse(page_url).path).stem or f"song_{len(payload_items) + 1}"
            payload, reason = build_song_payload(
                cfg,
                parsed,
                page_url=page_url,
                anchor_title=anchor_text,
                stem=stem,
                used_ids=used_ids,
                seen_keys=seen_keys,
                valid_countries=valid_countries,
            )
            if payload is None:
                skipped_reasons[reason] = skipped_reasons.get(reason, 0) + 1
                continue
            payload_items.append(payload)
        except Exception:
            skipped_reasons["exception"] = skipped_reasons.get("exception", 0) + 1
            continue

    sql_lines = build_sql_for_section(cfg, payload_items)
    sql_path = ROOT / f"tmp_import_a_pesni_{cfg.slug}.sql"
    json_path = out_dir / f"{cfg.slug}.json"

    sql_path.write_text("\n".join(sql_lines), encoding="utf-8")
    json_path.write_text(
        json.dumps(
            {
                "section": cfg.slug,
                "title": cfg.title,
                "index_url": cfg.index_url,
                "country_mode": cfg.country_mode,
                "total_links": len(links),
                "imported": len(payload_items),
                "skipped": skipped_reasons,
                "items": payload_items,
            },
            ensure_ascii=False,
            indent=2,
        )
        + "\n",
        encoding="utf-8",
    )

    return {
        "section": cfg.slug,
        "title": cfg.title,
        "index_url": cfg.index_url,
        "total_links": len(links),
        "imported": len(payload_items),
        "skipped": skipped_reasons,
        "sql_path": str(sql_path),
        "json_path": str(json_path),
    }


def run_remote_sql(db_name: str, sql_path: str) -> None:
    npx_exe = "npx.cmd" if sys.platform.startswith("win") else "npx"
    cmd = [
        npx_exe,
        "wrangler",
        "d1",
        "execute",
        db_name,
        "--remote",
        "--file",
        sql_path,
    ]
    subprocess.run(cmd, cwd=ROOT, check=True)


def main() -> None:
    parser = argparse.ArgumentParser(description="Import selected a-pesni.org sections into song DB SQL files.")
    parser.add_argument("--section", action="append", default=[], help="Section slug to import (can repeat).")
    parser.add_argument("--all", action="store_true", help="Import all configured sections.")
    parser.add_argument("--list-sections", action="store_true", help="List available section slugs.")
    parser.add_argument("--execute-remote", action="store_true", help="Execute generated SQL in remote D1.")
    parser.add_argument("--db-name", default="euro-songbook-db", help="Wrangler D1 database name.")
    parser.add_argument("--refresh", action="store_true", help="Re-download source HTML even if fixture exists.")
    parser.add_argument("--max-pages", type=int, default=None, help="Optional limit of processed links per section.")
    args = parser.parse_args()

    if args.list_sections:
        for slug, cfg in SECTION_CONFIGS.items():
            print(f"{slug}: {cfg.title} -> {cfg.index_url}")
        return

    selected = list(dict.fromkeys(args.section))
    if args.all:
        selected = list(SECTION_CONFIGS.keys())
    if not selected:
        selected = ["russian_songs_18th"]

    unknown = [slug for slug in selected if slug not in SECTION_CONFIGS]
    if unknown:
        raise SystemExit(f"Unknown section(s): {', '.join(unknown)}")

    valid_countries = set(parse_catalog_values("SONG_COUNTRY_VALUES"))
    valid_countries.add("other_countries")

    reports: list[dict[str, Any]] = []
    for slug in selected:
        cfg = SECTION_CONFIGS[slug]
        try:
            report = import_section(
                cfg,
                refresh=args.refresh,
                max_pages=args.max_pages,
                valid_countries=valid_countries,
            )
        except Exception as exc:
            report = {
                "section": cfg.slug,
                "title": cfg.title,
                "index_url": cfg.index_url,
                "total_links": 0,
                "imported": 0,
                "skipped": {"section_error": 1},
                "error": str(exc),
                "sql_path": "",
                "json_path": "",
            }
        reports.append(report)
        print(
            json.dumps(
                {
                    "section": report["section"],
                    "total_links": report["total_links"],
                    "imported": report["imported"],
                    "skipped": report["skipped"],
                    "error": report.get("error"),
                },
                ensure_ascii=False,
            )
        )
        if args.execute_remote and report.get("sql_path"):
            run_remote_sql(args.db_name, report["sql_path"])
            print(f"executed_remote: {report['sql_path']}")

    summary_path = ROOT / "out" / "a_pesni" / "import_summary.json"
    summary_path.parent.mkdir(parents=True, exist_ok=True)
    summary_path.write_text(json.dumps({"sections": reports}, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"summary: {summary_path}")


if __name__ == "__main__":
    main()
