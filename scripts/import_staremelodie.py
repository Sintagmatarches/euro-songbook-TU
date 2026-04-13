from __future__ import annotations

import argparse
import concurrent.futures
import html
import json
import os
import random
import re
import subprocess
import sys
import threading
import time
import unicodedata
from dataclasses import dataclass
from pathlib import Path
from typing import Any

import requests
from requests.adapters import HTTPAdapter


ROOT = Path(__file__).resolve().parent.parent
BASE_URL = "https://staremelodie.pl"
FONOTEKA_URL = f"{BASE_URL}/fonoteka"
SITE_TAG = "staremelodie.pl"
DEFAULT_DB_NAME = "euro-songbook-db"

HEADERS = {
    "User-Agent": (
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
        "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0 Safari/537.36"
    ),
    "Accept-Language": "pl,en;q=0.8,ru;q=0.7",
}

RE_COMMENT = re.compile(r"<!--.*?-->", re.DOTALL)
RE_SCRIPT = re.compile(r"<script\b[^>]*>.*?</script>", re.IGNORECASE | re.DOTALL)
RE_STYLE = re.compile(r"<style\b[^>]*>.*?</style>", re.IGNORECASE | re.DOTALL)
RE_TAG = re.compile(r"<[^>]+>", re.DOTALL)
RE_BR = re.compile(r"<br\s*/?>", re.IGNORECASE)
RE_LETTER = re.compile(r"wiecej\('([^']+)'\)")
RE_CATALOG_LINK = re.compile(
    r'<a\s+href="(/?piosenka/(?P<id>\d+)/[^"]+)"[^>]*title="(?P<title>[^"]+)"',
    re.IGNORECASE,
)
RE_YEAR = re.compile(r"\b(1[5-9]\d{2}|20\d{2})\b")

_tls = threading.local()


@dataclass
class CatalogSong:
    site_id: str
    title: str
    url: str


@dataclass
class ExistingSong:
    song_id: str
    title: str
    year: str | None
    lyrics: str


def get_session(pool_size: int = 4) -> requests.Session:
    session = getattr(_tls, "session", None)
    if session is None:
        session = requests.Session()
        session.headers.update(HEADERS)
        adapter = HTTPAdapter(pool_connections=pool_size, pool_maxsize=pool_size, max_retries=0)
        session.mount("http://", adapter)
        session.mount("https://", adapter)
        _tls.session = session
    return session


def normalize_newlines(text: str | None) -> str:
    return str(text or "").replace("\r\n", "\n").replace("\r", "\n")


def decode_response_bytes(raw: bytes, preferred: str | None = None, apparent: str | None = None) -> str:
    candidates: list[str] = []
    tried: set[str] = set()
    for encoding in ["utf-8", preferred or "", apparent or "", "cp1250", "iso-8859-2", "latin1"]:
        enc = (encoding or "").strip().lower()
        if not enc or enc in tried:
            continue
        tried.add(enc)
        try:
            candidates.append(raw.decode(enc))
        except Exception:
            continue
    if not candidates:
        return raw.decode("utf-8", errors="replace")

    def score(text: str) -> tuple[int, int]:
        polish = len(re.findall(r"[ąćęłńóśźżĄĆĘŁŃÓŚŹŻ]", text))
        mojibake = len(re.findall(r"[ÃÅÄÐÑâ]", text))
        replacement = text.count("\ufffd")
        return (polish * 8 - mojibake * 12 - replacement * 20, polish)

    return max(candidates, key=score)


def normalize_inline(text: str | None) -> str:
    out = html.unescape(str(text or ""))
    out = re.sub(r"\s+", " ", out).strip()
    out = re.sub(r"\s+([,.;:!?])", r"\1", out)
    out = re.sub(r"([(\[])\s+", r"\1", out)
    out = re.sub(r"\s+([)\]])", r"\1", out)
    return out


def normalize_multiline(text: str | None) -> str:
    lines = [re.sub(r"[ \t]+$", "", line) for line in normalize_newlines(text).split("\n")]
    out: list[str] = []
    for line in lines:
        stripped = line.strip()
        if stripped:
            out.append(stripped)
        elif out and out[-1] != "":
            out.append("")
    while out and out[0] == "":
        out.pop(0)
    while out and out[-1] == "":
        out.pop()
    return "\n".join(out)


def strip_noise(text: str) -> str:
    out = RE_COMMENT.sub("", text)
    out = RE_SCRIPT.sub("", out)
    out = RE_STYLE.sub("", out)
    return out


def html_to_text(block: str, *, multiline: bool = False) -> str:
    text = strip_noise(str(block or ""))
    text = re.sub(r"</(div|p|li|tr|h\d|section|article)\s*>", "\n", text, flags=re.IGNORECASE)
    text = RE_BR.sub("\n", text)
    text = RE_TAG.sub(" ", text)
    text = html.unescape(text)
    return normalize_multiline(text) if multiline else normalize_inline(text)


def fold_text(value: str | None) -> str:
    text = normalize_multiline(value).lower()
    text = text.replace("ł", "l").replace("ó", "o").replace("ż", "z").replace("ź", "z")
    text = text.replace("ą", "a").replace("ć", "c").replace("ę", "e").replace("ń", "n").replace("ś", "s")
    text = text.replace("–", "-").replace("—", "-")
    text = re.sub(r"[\"'`“”„’‚]", "", text)
    text = re.sub(r"[^0-9a-zа-яёіїєґ\n -]+", " ", text)
    text = re.sub(r"[ \t]+", " ", text)
    text = re.sub(r"\n{3,}", "\n\n", text)
    return text.strip()


def normalize_title_key(title: str | None) -> str:
    return re.sub(r"\s+", " ", fold_text(title).replace("\n", " ")).strip()


def normalize_lyrics_key(lyrics: str | None) -> str:
    return fold_text(lyrics)


def infer_country(year_text: str | None) -> str:
    if not year_text:
        return "other_countries"
    match = RE_YEAR.search(year_text)
    if not match:
        return "other_countries"
    year = int(match.group(1))
    if year <= 1915:
        if year >= 1900:
            return "kingdom_of_poland_within_russian_empire_1900_1915"
        return "kingdom_of_poland_within_russian_empire_1815_1915"
    if 1918 <= year <= 1939:
        return "second_polish_republic_1918_1939"
    if 1952 <= year <= 1989:
        return "polish_peoples_republic_1952_1989"
    if year >= 1989:
        return "poland_1989"
    return "other_countries"


def fixture_name(prefix: str, value: str) -> str:
    safe = re.sub(r"[^0-9A-Za-z._-]+", "_", value).strip("._-") or "item"
    return f"{prefix}_{safe}.html"


def fetch_text(
    url: str,
    fixture_path: Path,
    *,
    refresh: bool = False,
    method: str = "GET",
    data: dict[str, str] | None = None,
    connect_timeout: float = 6.0,
    read_timeout: float = 20.0,
    retries: int = 1,
    pool_size: int = 4,
    success_delay: float = 0.05,
    failure_delay: float = 0.8,
) -> str:
    if fixture_path.exists() and not refresh:
        return fixture_path.read_text(encoding="utf-8", errors="replace")

    session = get_session(pool_size=pool_size)
    last_error: Exception | None = None
    for attempt in range(retries + 1):
        try:
            if method == "POST":
                response = session.post(url, data=data or {}, timeout=(connect_timeout, read_timeout))
            else:
                response = session.get(url, timeout=(connect_timeout, read_timeout))
            response.raise_for_status()
            text = decode_response_bytes(
                response.content,
                preferred=response.encoding,
                apparent=getattr(response, "apparent_encoding", None),
            )
            fixture_path.parent.mkdir(parents=True, exist_ok=True)
            fixture_path.write_text(text, encoding="utf-8")
            time.sleep(max(0.0, success_delay) + random.random() * max(0.0, success_delay * 0.2))
            return text
        except Exception as exc:  # pragma: no cover - network retries
            last_error = exc
            if attempt < retries:
                time.sleep(max(0.0, failure_delay) * (attempt + 1))
    raise RuntimeError(f"fetch failed: {url}: {last_error}")


def extract_balanced_div_at(text: str, open_idx: int) -> str | None:
    depth = 0
    for match in re.finditer(r"<(/?)div\b[^>]*>", text[open_idx:], re.IGNORECASE):
        is_closing = bool(match.group(1))
        if not is_closing:
            depth += 1
        else:
            depth -= 1
            if depth == 0:
                end = open_idx + match.end()
                return text[open_idx:end]
    return None


def extract_balanced_div(text: str, marker: str, *, start_from: int = 0) -> str | None:
    idx = text.find(marker, start_from)
    if idx < 0:
        return None
    open_idx = text.rfind("<div", 0, idx + len(marker))
    if open_idx < 0:
        return None
    return extract_balanced_div_at(text, open_idx)


def split_row_blocks(section_html: str) -> list[str]:
    blocks: list[str] = []
    marker = '<div class="row">'
    pos = 0
    while True:
        idx = section_html.find(marker, pos)
        if idx < 0:
            break
        block = extract_balanced_div_at(section_html, idx)
        if not block:
            break
        blocks.append(block)
        pos = idx + len(block)
    return blocks


def parse_catalog(html_text: str) -> tuple[list[CatalogSong], list[str]]:
    songs: dict[str, CatalogSong] = {}
    for match in RE_CATALOG_LINK.finditer(html_text):
        site_id = match.group("id")
        url = match.group(1)
        title = normalize_inline(match.group("title"))
        if not site_id or not title:
            continue
        songs[site_id] = CatalogSong(site_id=site_id, title=title, url=f"{BASE_URL}/{url.lstrip('/')}")
    letters = sorted(set(RE_LETTER.findall(html_text)))
    return sorted(songs.values(), key=lambda item: int(item.site_id)), letters


def extract_row_values(page_html: str) -> dict[str, str]:
    section = extract_balanced_div(page_html, 'id="piosenka_opis_data"')
    if not section:
        return {}
    rows: dict[str, str] = {}
    for block in split_row_blocks(section):
        label_match = re.search(r'<div class="cell data_title">(.*?)</div>', block, re.IGNORECASE | re.DOTALL)
        if not label_match:
            continue
        label = html_to_text(label_match.group(1), multiline=False).rstrip(":").strip()
        if not label:
            continue
        value_html = block.replace(label_match.group(0), "", 1)
        value = html_to_text(value_html, multiline=True)
        if value:
            rows[label.lower()] = value
    return rows


def extract_lyrics(page_html: str) -> str:
    block = extract_balanced_div(page_html, 'id="piosenka_text"')
    if not block:
        return ""
    block = re.sub(r'<div id="lines_switch_box"[\s\S]*?</div>', "", block, flags=re.IGNORECASE)
    block = re.sub(r'<div id="linie"[\s\S]*?</div>', "", block, flags=re.IGNORECASE)
    lyrics = html_to_text(block, multiline=True)
    return normalize_multiline(lyrics)


def parse_song_page(entry: CatalogSong, page_html: str) -> dict[str, Any] | None:
    title_match = re.search(
        r'<h2 class="data_value_title"[^>]*>(.*?)</h2>',
        page_html,
        re.IGNORECASE | re.DOTALL,
    )
    title = html_to_text(title_match.group(1), multiline=False) if title_match else entry.title
    title = normalize_inline(title) or entry.title
    if not title:
        return None

    rows = extract_row_values(page_html)
    lyrics = extract_lyrics(page_html)
    if not lyrics or len(re.sub(r"\s+", "", lyrics)) < 24:
        return None

    alt_title = rows.get("tytuł", "")
    genre = rows.get("gatunek", "")
    music = rows.get("muzyka", "")
    words = rows.get("słowa", "")
    info = rows.get("info", "")
    year_text = rows.get("oryginał z", "") or rows.get("oryginał z?", "")
    year_match = RE_YEAR.search(year_text)
    year = year_match.group(1) if year_match else None

    notes_parts = []
    if alt_title and alt_title != title:
        notes_parts.append(f"Inne tytuły: {alt_title}")
    if genre:
        notes_parts.append(f"Gatunek: {genre}")
    if music:
        notes_parts.append(f"Muzyka: {music}")
    if words:
        notes_parts.append(f"Słowa: {words}")
    if info:
        notes_parts.append(f"Info: {info}")

    return {
        "site_id": entry.site_id,
        "title": title,
        "subtitle": None,
        "lang": "pl",
        "country": infer_country(year),
        "period": None,
        "region": None,
        "event": None,
        "theme": None,
        "verified": False,
        "year": year,
        "source": f"Stare Melodie: {entry.url}",
        "notes": "\n".join(notes_parts) if notes_parts else None,
        "lyrics": lyrics,
        "tags": [SITE_TAG],
        "links": [{"title": "Stare Melodie", "url": entry.url, "kind": "source"}],
        "status": "published",
    }


def decode_response_bytes(raw: bytes, preferred: str | None = None, apparent: str | None = None) -> str:
    candidates: list[str] = []
    tried: set[str] = set()
    for encoding in ["utf-8", preferred or "", apparent or "", "cp1250", "iso-8859-2", "latin1"]:
        enc = (encoding or "").strip().lower()
        if not enc or enc in tried:
            continue
        tried.add(enc)
        try:
            candidates.append(raw.decode(enc))
        except Exception:
            continue
    if not candidates:
        return raw.decode("utf-8", errors="replace")

    def score(text: str) -> tuple[int, int]:
        polish = len(re.findall(r"[ąćęłńóśźżĄĆĘŁŃÓŚŹŻ]", text))
        mojibake = len(re.findall(r"[ÃÅÄÐÑâ]", text))
        replacement = text.count("\ufffd")
        return (polish * 8 - mojibake * 12 - replacement * 20, polish)

    return max(candidates, key=score)


def fold_text(value: str | None) -> str:
    text = normalize_multiline(value).lower()
    text = unicodedata.normalize("NFKD", text)
    text = "".join(ch for ch in text if not unicodedata.combining(ch))
    text = text.replace("–", "-").replace("—", "-").replace("№", "no")
    text = re.sub(r"[\"'`“”„’‘]", "", text)
    text = re.sub(r"[^0-9a-zа-яёіїєґ\n -]+", " ", text)
    text = re.sub(r"[ \t]+", " ", text)
    text = re.sub(r"\n{3,}", "\n\n", text)
    return text.strip()


def repair_common_mojibake(text: str | None) -> str:
    out = str(text or "")
    replacements = {
        "ňā": "ł",
        "إ‚": "ł",
        "Е‚": "ł",
        "√≥": "ó",
        "إ³": "ó",
        "Еј": "ż",
        "Еє": "ź",
        "إ¼": "ż",
        "إ؛": "ź",
        "Д…": "ą",
        "Д‡": "ć",
        "Д™": "ę",
        "Е„": "ń",
        "Е›": "ś",
        "вЂ“": "–",
        "вЂ”": "—",
    }
    for src, dst in replacements.items():
        out = out.replace(src, dst)
    return out


def normalize_row_label(value: str | None) -> str:
    text = repair_common_mojibake(normalize_inline(value))
    text = unicodedata.normalize("NFKD", text.lower())
    text = "".join(ch for ch in text if not unicodedata.combining(ch))
    text = re.sub(r"[^0-9a-z?]+", " ", text)
    return re.sub(r"\s+", " ", text).strip(" ?:")


def get_row_value(rows: dict[str, str], *wanted: str) -> str:
    normalized_rows = {normalize_row_label(key): value for key, value in rows.items() if key and value}
    for raw_key in wanted:
        key = normalize_row_label(raw_key)
        if key in normalized_rows:
            return normalized_rows[key]
    for raw_key in wanted:
        key = normalize_row_label(raw_key)
        for row_key, value in normalized_rows.items():
            if row_key.startswith(key) or key.startswith(row_key):
                return value
    return ""


NON_SONG_GENRE_MARKERS = (
    "wywiad",
    "monolog",
    "dialog",
    "recytacja",
    "melorecytacja",
    "skecz",
    "scenka",
    "nauka jezyka",
)

NON_SONG_TITLE_MARKERS = (
    "wywiad",
    "lekcja jezyka",
    "nauka jezyka",
)

FOREIGN_ALT_TOKENS = {
    "adieu",
    "amor",
    "baby",
    "bella",
    "ciao",
    "cocktails",
    "chance",
    "crois",
    "donnerais",
    "encore",
    "entendre",
    "for",
    "good",
    "hand",
    "heute",
    "ich",
    "ihre",
    "just",
    "komm",
    "kuesse",
    "kusse",
    "madame",
    "mir",
    "moi",
    "moon",
    "more",
    "my",
    "night",
    "nuit",
    "one",
    "pas",
    "querida",
    "rendez",
    "siempre",
    "the",
    "three",
    "toi",
    "truly",
    "two",
    "vous",
    "whos",
    "zuruck",
}

STRONG_FOREIGN_ALT_TOKENS = {
    "adieu",
    "cocktails",
    "donnerais",
    "encore",
    "entendre",
    "good",
    "ich",
    "kuesse",
    "kusse",
    "madame",
    "querida",
    "rendez",
    "siempre",
    "truly",
    "vous",
    "whos",
    "zuruck",
}


def latin_fold(value: str | None) -> str:
    text = unicodedata.normalize("NFKD", str(value or "").lower())
    text = "".join(ch for ch in text if not unicodedata.combining(ch))
    text = text.replace("’", "'").replace("`", "'")
    return re.sub(r"\s+", " ", text).strip()


def extract_alt_title_variants(title: str, alt_title: str | None) -> list[str]:
    raw = repair_common_mojibake(normalize_multiline(alt_title))
    if not raw:
        return []

    variants: list[str] = []
    seen: set[str] = set()
    title_key = latin_fold(title)

    def add(value: str) -> None:
        candidate = normalize_inline(value).strip(" ,;")
        key = latin_fold(candidate)
        if not candidate or not key or key == title_key or key in seen:
            return
        seen.add(key)
        variants.append(candidate)

    for match in re.finditer(r'[\"“”„«»]([^\"“”„«»]{2,160})[\"“”„«»]', raw):
        add(match.group(1))

    for line in normalize_multiline(raw).splitlines():
        add(line)

    return variants


def looks_like_non_song_entry(title: str, genre: str | None, music: str | None, info: str | None) -> bool:
    title_key = fold_text(title)
    genre_key = fold_text(genre)
    music_key = fold_text(music)
    info_key = fold_text(info)

    if any(marker in title_key for marker in NON_SONG_TITLE_MARKERS):
        return True
    if any(marker in genre_key for marker in NON_SONG_GENRE_MARKERS):
        return True
    if "bez muzyki" in music_key and any(marker in genre_key for marker in ("monolog", "dialog", "skecz", "scena", "wywiad")):
        return True
    if "wywiad" in info_key:
        return True
    return False


def looks_like_foreign_alt_title(value: str) -> bool:
    tokens = re.findall(r"[a-z]+", latin_fold(value))
    if not tokens:
        return False
    hits = {token for token in tokens if token in FOREIGN_ALT_TOKENS}
    if len(hits) >= 2:
        return True
    return any(token in STRONG_FOREIGN_ALT_TOKENS for token in hits)


def infer_song_country(title: str, alt_title: str | None, year: str | None) -> str:
    if any(looks_like_foreign_alt_title(variant) for variant in extract_alt_title_variants(title, alt_title)):
        return "other_countries"
    return infer_country(year)


def parse_song_page(entry: CatalogSong, page_html: str) -> dict[str, Any] | None:
    title_match = re.search(
        r'<h2 class="data_value_title"[^>]*>(.*?)</h2>',
        page_html,
        re.IGNORECASE | re.DOTALL,
    )
    title = html_to_text(title_match.group(1), multiline=False) if title_match else entry.title
    title = repair_common_mojibake(normalize_inline(title) or entry.title)
    if not title:
        return None

    rows = extract_row_values(page_html)
    lyrics = repair_common_mojibake(extract_lyrics(page_html))
    if not lyrics or len(re.sub(r"\s+", "", lyrics)) < 24:
        return None

    alt_title = repair_common_mojibake(get_row_value(rows, "tytuł"))
    genre = repair_common_mojibake(get_row_value(rows, "gatunek"))
    music = repair_common_mojibake(get_row_value(rows, "muzyka"))
    words = repair_common_mojibake(get_row_value(rows, "słowa"))
    info = repair_common_mojibake(get_row_value(rows, "info"))
    scene = repair_common_mojibake(get_row_value(rows, "scena"))
    year_text = repair_common_mojibake(get_row_value(rows, "oryginał z", "oryginał z?"))
    year_match = RE_YEAR.search(year_text)
    year = year_match.group(1) if year_match else None
    if looks_like_non_song_entry(title, genre, music, info):
        return None

    notes_parts = []
    if alt_title and alt_title != title:
        notes_parts.append(f"Inne tytuły: {alt_title}")
    if genre:
        notes_parts.append(f"Gatunek: {genre}")
    if music:
        notes_parts.append(f"Muzyka: {music}")
    if words:
        notes_parts.append(f"Słowa: {words}")
    if scene:
        notes_parts.append(f"Scena: {scene}")
    if info:
        notes_parts.append(f"Info: {info}")

    return {
        "site_id": entry.site_id,
        "title": title,
        "subtitle": None,
        "lang": "pl",
        "country": infer_song_country(title, alt_title, year),
        "period": None,
        "region": None,
        "event": None,
        "theme": None,
        "verified": False,
        "year": year,
        "source": f"Stare Melodie: {entry.url}",
        "notes": "\n".join(notes_parts) if notes_parts else None,
        "lyrics": lyrics,
        "tags": [SITE_TAG],
        "links": [{"title": "Stare Melodie", "url": entry.url, "kind": "source"}],
        "status": "published",
    }


def load_existing_polish_songs(db_name: str) -> list[ExistingSong]:
    cmd = ["npx", "wrangler", "d1", "execute", db_name, "--remote", "--command", "SELECT id, title, year, lyrics FROM songs WHERE lang='pl' AND id NOT LIKE 'sm_%';", "--json"]
    if os.name == "nt":
        cmd = ["cmd.exe", "/c", *cmd]
    completed = subprocess.run(cmd, cwd=ROOT, check=True, capture_output=True, text=True, encoding="utf-8")
    stdout = completed.stdout or ""
    json_start = stdout.find("[")
    payload = json.loads(stdout[json_start:] if json_start >= 0 else stdout)
    rows = payload[0]["results"]
    return [
        ExistingSong(
            song_id=str(row.get("id") or ""),
            title=normalize_inline(row.get("title")),
            year=(str(row.get("year")).strip() if row.get("year") not in (None, "") else None),
            lyrics=normalize_multiline(row.get("lyrics")),
        )
        for row in rows
        if row.get("id") and row.get("title") and row.get("lyrics")
    ]


def chunked(items: list[dict[str, Any]], size: int) -> list[list[dict[str, Any]]]:
    return [items[index:index + size] for index in range(0, len(items), size)]


def write_json(path: Path, data: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def load_catalog_songs(
    *,
    fixtures_dir: Path,
    limit: int | None,
    refresh: bool,
) -> list[CatalogSong]:
    catalog_fixture = fixtures_dir / "catalog" / "fonoteka.html"
    initial_html = fetch_text(FONOTEKA_URL, catalog_fixture, refresh=refresh, retries=0)
    catalog_songs, letters = parse_catalog(initial_html)
    known_ids = {song.site_id for song in catalog_songs}

    for letter in letters:
        extra_fixture = fixtures_dir / "catalog" / fixture_name("more", letter)
        extra_html = fetch_text(
            f"{BASE_URL}/wiecej_piosenek.php",
            extra_fixture,
            refresh=refresh,
            method="POST",
            data={"litera": letter},
            retries=0,
        )
        extra_songs, _ = parse_catalog(extra_html)
        for song in extra_songs:
            if song.site_id not in known_ids:
                known_ids.add(song.site_id)
                catalog_songs.append(song)

    catalog_songs = sorted({song.site_id: song for song in catalog_songs}.values(), key=lambda item: int(item.site_id))
    if limit is not None:
        catalog_songs = catalog_songs[:limit]
    return catalog_songs


def download_song_pages(
    *,
    out_dir: Path,
    fixtures_dir: Path,
    catalog_songs: list[CatalogSong],
    workers: int,
    refresh: bool,
    connect_timeout: float,
    read_timeout: float,
    retries: int,
    checkpoint_every: int,
    success_delay: float,
    failure_delay: float,
) -> dict[str, Any]:
    songs_dir = fixtures_dir / "songs"
    songs_dir.mkdir(parents=True, exist_ok=True)

    jobs: list[tuple[CatalogSong, Path]] = []
    cached = 0
    for song in catalog_songs:
        fixture = songs_dir / fixture_name(song.site_id, song.site_id)
        if fixture.exists() and not refresh:
            cached += 1
            continue
        jobs.append((song, fixture))

    failures: list[dict[str, Any]] = []
    completed = 0
    downloaded = 0
    total = len(catalog_songs)
    missing_total = len(jobs)
    report_path = out_dir / "download_report.json"

    def write_progress() -> None:
        write_json(
            report_path,
            {
                "source": SITE_TAG,
                "catalog_total": total,
                "cached_before_start": cached,
                "queued_for_download": missing_total,
                "downloaded_this_run": downloaded,
                "completed_this_run": completed,
                "remaining": max(0, missing_total - completed),
                "failure_count": len(failures),
            },
        )

    write_progress()

    def fetch_one(song: CatalogSong, fixture: Path) -> tuple[str, int]:
        fetch_text(
            song.url,
            fixture,
            refresh=refresh,
            connect_timeout=connect_timeout,
            read_timeout=read_timeout,
            retries=retries,
            pool_size=max(2, workers),
            success_delay=success_delay,
            failure_delay=failure_delay,
        )
        return song.site_id, fixture.stat().st_size

    if jobs:
        with concurrent.futures.ThreadPoolExecutor(max_workers=max(1, workers)) as executor:
            future_map = {executor.submit(fetch_one, song, fixture): (song, fixture) for song, fixture in jobs}
            for future in concurrent.futures.as_completed(future_map):
                song, fixture = future_map[future]
                completed += 1
                try:
                    _, size = future.result()
                    if size > 0:
                        downloaded += 1
                except Exception as exc:  # pragma: no cover - network/runtime failures
                    failures.append(
                        {
                            "site_id": song.site_id,
                            "title": song.title,
                            "url": song.url,
                            "fixture": str(fixture.relative_to(ROOT)).replace("\\", "/"),
                            "error": str(exc),
                        }
                    )
                if completed % max(1, checkpoint_every) == 0:
                    write_progress()
        write_progress()

    write_json(out_dir / "download_failures.json", failures)
    report = {
        "source": SITE_TAG,
        "catalog_total": total,
        "cached_before_start": cached,
        "queued_for_download": missing_total,
        "downloaded_this_run": downloaded,
        "completed_this_run": completed,
        "remaining": max(0, missing_total - completed),
        "failure_count": len(failures),
    }
    write_json(report_path, report)
    return report


def build_import(
    *,
    out_dir: Path,
    fixtures_dir: Path,
    db_name: str,
    chunk_size: int,
    catalog_songs: list[CatalogSong],
) -> dict[str, Any]:
    existing_songs = load_existing_polish_songs(db_name)
    existing_lyrics_map: dict[str, ExistingSong] = {}
    existing_title_map: dict[str, list[ExistingSong]] = {}
    for song in existing_songs:
        lyrics_key = normalize_lyrics_key(song.lyrics)
        title_key = normalize_title_key(song.title)
        if lyrics_key:
            existing_lyrics_map.setdefault(lyrics_key, song)
        if title_key:
            existing_title_map.setdefault(title_key, []).append(song)

    parsed_items: list[dict[str, Any]] = []
    exact_duplicates: list[dict[str, Any]] = []
    title_collisions: list[dict[str, Any]] = []
    parse_failures: list[dict[str, Any]] = []
    internal_duplicates: list[dict[str, Any]] = []

    seen_import_lyrics: dict[str, dict[str, Any]] = {}
    seen_import_titles: dict[str, dict[str, Any]] = {}

    for song in catalog_songs:
        fixture = fixtures_dir / "songs" / fixture_name(song.site_id, song.site_id)
        if not fixture.exists():
            parse_failures.append({"site_id": song.site_id, "title": song.title, "url": song.url, "error": "missing_fixture"})
            continue
        try:
            html_text = fixture.read_text(encoding="utf-8", errors="replace")
            parsed = parse_song_page(song, html_text)
        except Exception as exc:
            parse_failures.append({"site_id": song.site_id, "title": song.title, "url": song.url, "error": str(exc)})
            continue
        if not parsed:
            parse_failures.append({"site_id": song.site_id, "title": song.title, "url": song.url, "error": "parse_failed"})
            continue

        parsed["id"] = f"sm_{song.site_id}"

        lyrics_key = normalize_lyrics_key(parsed["lyrics"])
        title_key = normalize_title_key(parsed["title"])
        if not lyrics_key:
            parse_failures.append({"site_id": song.site_id, "title": song.title, "url": song.url, "error": "empty_lyrics_key"})
            continue

        existing_by_lyrics = existing_lyrics_map.get(lyrics_key)
        if existing_by_lyrics:
            exact_duplicates.append(
                {
                    "site_id": song.site_id,
                    "title": parsed["title"],
                    "url": song.url,
                    "matched_song_id": existing_by_lyrics.song_id,
                    "matched_title": existing_by_lyrics.title,
                }
            )
            continue

        existing_by_title = existing_title_map.get(title_key) if title_key else None
        if existing_by_title:
            title_collisions.append(
                {
                    "site_id": song.site_id,
                    "title": parsed["title"],
                    "url": song.url,
                    "matches": [
                        {"song_id": existing.song_id, "title": existing.title, "year": existing.year}
                        for existing in existing_by_title[:10]
                    ],
                }
            )
            continue

        if lyrics_key in seen_import_lyrics:
            internal_duplicates.append(
                {
                    "site_id": song.site_id,
                    "title": parsed["title"],
                    "url": song.url,
                    "matched_site_id": seen_import_lyrics[lyrics_key]["site_id"],
                    "matched_title": seen_import_lyrics[lyrics_key]["title"],
                    "reason": "lyrics",
                }
            )
            continue

        if title_key and title_key in seen_import_titles:
            internal_duplicates.append(
                {
                    "site_id": song.site_id,
                    "title": parsed["title"],
                    "url": song.url,
                    "matched_site_id": seen_import_titles[title_key]["site_id"],
                    "matched_title": seen_import_titles[title_key]["title"],
                    "reason": "title",
                }
            )
            continue

        seen_import_lyrics[lyrics_key] = parsed
        if title_key:
            seen_import_titles[title_key] = parsed
        parsed_items.append(parsed)

    parsed_items.sort(key=lambda item: int(item["site_id"]))

    chunks_dir = out_dir / "chunks"
    chunks_dir.mkdir(parents=True, exist_ok=True)
    for stale_chunk in chunks_dir.glob("*.json"):
        stale_chunk.unlink()
    chunk_paths: list[str] = []
    for index, chunk in enumerate(chunked(parsed_items, chunk_size), start=1):
        chunk_payload = {"items": [{key: value for key, value in item.items() if key != "site_id"} for item in chunk]}
        path = chunks_dir / f"{index:04d}.json"
        write_json(path, chunk_payload)
        chunk_paths.append(str(path.relative_to(ROOT)).replace("\\", "/"))

    write_json(out_dir / "exact_duplicates.json", exact_duplicates)
    write_json(out_dir / "title_collisions.json", title_collisions)
    write_json(out_dir / "internal_duplicates.json", internal_duplicates)
    write_json(out_dir / "parse_failures.json", parse_failures)

    report = {
        "source": SITE_TAG,
        "db_name": db_name,
        "catalog_total": len(catalog_songs),
        "existing_polish_songs": len(existing_songs),
        "prepared_for_import": len(parsed_items),
        "exact_duplicates_skipped": len(exact_duplicates),
        "title_collisions_skipped": len(title_collisions),
        "internal_duplicates_skipped": len(internal_duplicates),
        "parse_failures": len(parse_failures),
        "chunk_count": len(chunk_paths),
        "chunk_size": chunk_size,
        "chunk_paths": chunk_paths,
    }
    write_json(out_dir / "report.json", report)
    return report


def main() -> None:
    parser = argparse.ArgumentParser(description="Download and build deduplicated import chunks from staremelodie.pl.")
    parser.add_argument("--out-dir", default=str(ROOT / "out" / "staremelodie_import"), help="Output directory.")
    parser.add_argument("--fixtures-dir", default=str(ROOT / "fixtures" / "staremelodie"), help="HTML cache directory.")
    parser.add_argument("--db-name", default=DEFAULT_DB_NAME, help="D1 database name for duplicate checks.")
    parser.add_argument("--mode", choices=["all", "download", "parse"], default="all", help="Run download, parse, or both.")
    parser.add_argument("--workers", type=int, default=4, help="Concurrent song page fetches.")
    parser.add_argument("--chunk-size", type=int, default=200, help="Items per import chunk.")
    parser.add_argument("--limit", type=int, default=None, help="Optional limit for debugging.")
    parser.add_argument("--connect-timeout", type=float, default=6.0, help="Per-request connect timeout in seconds.")
    parser.add_argument("--read-timeout", type=float, default=20.0, help="Per-request read timeout in seconds.")
    parser.add_argument("--retries", type=int, default=1, help="Retries per request.")
    parser.add_argument("--success-delay", type=float, default=0.05, help="Delay after each successful request in seconds.")
    parser.add_argument("--failure-delay", type=float, default=0.8, help="Delay before retry after a failed request in seconds.")
    parser.add_argument("--checkpoint-every", type=int, default=25, help="Write download progress every N completed pages.")
    parser.add_argument("--refresh", action="store_true", help="Refetch cached HTML.")
    args = parser.parse_args()

    out_dir = Path(args.out_dir)
    fixtures_dir = Path(args.fixtures_dir)
    catalog_songs = load_catalog_songs(
        fixtures_dir=fixtures_dir,
        limit=args.limit,
        refresh=args.refresh,
    )
    write_json(out_dir / "catalog_manifest.json", [{"site_id": song.site_id, "title": song.title, "url": song.url} for song in catalog_songs])

    reports: dict[str, Any] = {"source": SITE_TAG, "catalog_total": len(catalog_songs), "mode": args.mode}
    if args.mode in {"all", "download"}:
        reports["download"] = download_song_pages(
            out_dir=out_dir,
            fixtures_dir=fixtures_dir,
            catalog_songs=catalog_songs,
            workers=args.workers,
            refresh=args.refresh,
            connect_timeout=args.connect_timeout,
            read_timeout=args.read_timeout,
            retries=args.retries,
            checkpoint_every=args.checkpoint_every,
            success_delay=args.success_delay,
            failure_delay=args.failure_delay,
        )
    if args.mode in {"all", "parse"}:
        reports["parse"] = build_import(
            out_dir=out_dir,
            fixtures_dir=fixtures_dir,
            db_name=args.db_name,
            chunk_size=args.chunk_size,
            catalog_songs=catalog_songs,
        )

    json.dump(reports, sys.stdout, ensure_ascii=False, indent=2)
    sys.stdout.write("\n")


if __name__ == "__main__":
    main()
