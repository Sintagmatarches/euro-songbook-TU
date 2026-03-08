from __future__ import annotations

import argparse
import concurrent.futures
import html
import json
import re
import subprocess
import sys
import threading
import time
from dataclasses import dataclass
from pathlib import Path
from typing import Any
from urllib.parse import urljoin, urlparse

import requests

ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

LIST_INDEX_URL = "https://www.pisni.org.ua/songlist/"
MOBILE_URL_TEMPLATE = "http://m.pisni.org.ua/?sid={sid}"
DESKTOP_URL_TEMPLATE = "https://www.pisni.org.ua/songs/{sid}.html"
ID_PREFIX = "pisniua"
SITE_TAG = "pisni.org.ua"
YEAR_MIN = 1800
YEAR_MAX = 2026

HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0 Safari/537.36",
    "Accept-Language": "uk,en;q=0.9,ru;q=0.8",
}

RE_SONGLIST_HREF = re.compile(r'href="(/songlist/[^"]+)"', re.IGNORECASE)
RE_SONG_HREF = re.compile(r'href="/songs/(\d+)\.html"', re.IGNORECASE)
RE_TITLE = re.compile(r"<title>(.*?)</title>", re.IGNORECASE | re.DOTALL)
RE_H1 = re.compile(r"<h1[^>]*>(.*?)</h1>", re.IGNORECASE | re.DOTALL)
RE_H3 = re.compile(r"<h3[^>]*>(.*?)</h3>", re.IGNORECASE | re.DOTALL)
RE_PRE = re.compile(r"<pre[^>]*>(.*?)</pre>", re.IGNORECASE | re.DOTALL)
RE_BR = re.compile(r"<br\s*/?>", re.IGNORECASE)
RE_TAG = re.compile(r"<[^>]+>", re.DOTALL)
RE_YEAR = re.compile(r"\b(18\d{2}|19\d{2}|20\d{2})\b")
RE_VIDEO = re.compile(r"showVideoClip\('([^']+)'\s*,\s*'([^']+)'\)", re.IGNORECASE)
RE_FIELD = re.compile(
    r"<b>\s*([^:<]{1,80})\s*:\s*</b>\s*(.*?)(?=(?:<br>\s*)?<b>\s*[^:<]{1,80}\s*:\s*</b>|$)",
    re.IGNORECASE | re.DOTALL,
)

CHORD_META_WORDS = (
    "\u0430\u043a\u043e\u0440\u0434\u0438",
    "\u0430\u043a\u043a\u043e\u0440\u0434\u044b",
    "\u043a\u0430\u043f\u043e",
    "capo",
    "\u0442\u043e\u043d\u0430\u043b\u044c\u043d",
    "\u0431\u043e\u0439:",
    "\u0431\u0456\u0439:",
    "\u043f\u0435\u0440\u0435\u0431\u0456\u0440",
    "\u043f\u0435\u0440\u0435\u0431\u043e\u0440",
    "\u0442\u0430\u0431\u0443\u043b\u0430\u0442",
)
PUB_WORDS = (
    "\u0443\u043f\u043e\u0440\u044f\u0434",
    "\u0432\u0438\u0434.",
    "\u0432\u0438\u0434\u0430\u0432",
    "\u0432\u0438\u0434\u0430\u043d\u043d\u044f",
    "\u0432\u0438\u043f\u0443\u0441\u043a",
    "\u043a\u0438\u0457\u0432",
    "\u043b\u044c\u0432\u0456\u0432",
    "\u0434\u043d\u0456\u043f\u0440\u043e",
    "\u0432\u0438\u0434\u0430\u0432\u043d\u0438\u0446",
    "\u0430\u0443\u0434\u0456\u043e\u0437\u0430\u043f\u0438\u0441",
    "pisni.org.ua",
    "\u0434\u043e\u0434\u0430\u043d\u043e",
    "\u0432\u0456\u0434\u0440\u0435\u0434\u0430",
)
CREATION_WORDS = (
    "\u043d\u0430\u043f\u0438\u0441",
    "\u0441\u0442\u0432\u043e\u0440",
    "\u0441\u043a\u043b\u0430\u0434",
    "\u0434\u0430\u0442\u0443",
    "\u0440\u043e\u043a\u0443",
    "\u0440\u0456\u043a",
    "\u043f\u0456\u0441\u043d\u044f",
    "\u0441\u0442\u0440\u0456\u043b\u0435\u0446\u044c\u043a",
    "\u043f\u043e\u0432\u0441\u0442\u0430\u043d\u0441\u044c\u043a",
    "\u043c\u0430\u0440\u0448",
    "\u0433\u0456\u043c\u043d",
)
FOLK_SLUGS = {
    "narodni", "dumy", "kozacki", "chumacki", "rekrutski", "kolyadky", "shchedrivky", "vesnyanky-hayivky",
    "zeleni-svyata", "kupalski", "obzhynkovi", "vesilni",
}
MODERN_SLUGS = {"ato", "euromaydan"}
UPR_SLUGS = {"strilecki", "kruty", "uss"}
SOVIETISH_SLUGS = {"povstanski", "holodomor", "ussr"}
FOLK_CREDIT_VALUES = {
    "народні",
    "народна",
    "невідомий",
    "невідомий автор",
    "невідомо",
    "народ",
}
SERVICE_TAIL_MARKERS = (
    "\u0430\u0443\u0434\u0456\u043e\u0444\u0430\u0439\u043b\u0438",
    "\u0430\u0443\u0434\u0456\u043e\u0437\u0430\u043f\u0438\u0441",
    "\u0432\u0456\u0434\u0435\u043e\u0437\u0430\u043f\u0438\u0441\u0438",
    "\u0430\u0434\u0440\u0435\u0441\u0430 \u0446\u0456\u0454\u0457 \u0441\u0442\u043e\u0440\u0456\u043d\u043a\u0438",
    "\u0432\u0438\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u043d\u044f \u0442\u0430 \u0434\u043e\u043f\u043e\u0432\u043d\u0435\u043d\u043d\u044f",
    "( mp3",
    "( midi",
    "\u043d\u0430\u0433\u0440\u0430\u0448",
    "\u043d\u043e\u0442\u0438 \u0434\u043b\u044f",
    "\u0434\u0432\u043e\u0433\u043e\u043b\u043e\u0441\u0441\u044f",
    "shtyk",
    "\u0442\u0430\u043a \u0437\u0432\u0443\u0447\u0438\u0442\u044c \u044f\u0441\u043a\u0440\u0430\u0432\u0456\u0448\u0435",
    "\u0456 \u0432 \u043c\u043e\u0454\u043c\u0443 \u0432\u0430\u0440\u0456\u0430\u043d\u0442\u0456",
)

_tls = threading.local()


@dataclass(frozen=True)
class CategoryRef:
    slug: str
    title: str


@dataclass
class SongPayload:
    id: str
    title: str
    subtitle: str
    lang: str
    country: str
    period: str | None
    year: str | None
    source: str | None
    notes: str | None
    lyrics: str
    tags_json: str
    links: list[dict[str, Any]]


def get_session() -> requests.Session:
    session = getattr(_tls, "session", None)
    if session is None:
        session = requests.Session()
        session.headers.update(HEADERS)
        _tls.session = session
    return session


def esc_sql(value: Any) -> str:
    return str(value or "").replace("'", "''")


def sql_nullable(value: str | None) -> str:
    text = normalize_inline(value)
    if not text:
        return "NULL"
    return f"'{esc_sql(text)}'"


def norm_text(value: str | None) -> str:
    return str(value or "")


def normalize_newlines(text: str) -> str:
    return norm_text(text).replace("\r\n", "\n").replace("\r", "\n")


def normalize_inline(text: str | None) -> str:
    out = re.sub(r"\s+", " ", html.unescape(norm_text(text))).strip()
    out = re.sub(r"\s+([,.;:!?])", r"\1", out)
    out = re.sub(r"([(\[])\s+", r"\1", out)
    out = re.sub(r"\s+([)\]])", r"\1", out)
    return out


def normalize_multiline(text: str | None) -> str:
    lines = [re.sub(r"[ \t]+$", "", line) for line in normalize_newlines(norm_text(text)).split("\n")]
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


def html_to_text(block: str, *, preserve_breaks: bool = True) -> str:
    text = norm_text(block)
    if preserve_breaks:
        text = re.sub(r"\s*(<br\s*/?>)\s*", r"\1", text, flags=re.IGNORECASE)
        text = RE_BR.sub("\n", text)
        text = re.sub(r"</p\s*>", "\n\n", text, flags=re.IGNORECASE)
        text = re.sub(r"<p[^>]*>", "", text, flags=re.IGNORECASE)
        text = re.sub(r"</tr\s*>", "\n", text, flags=re.IGNORECASE)
        text = re.sub(r"<tr[^>]*>", "", text, flags=re.IGNORECASE)
    text = RE_TAG.sub(" ", text)
    text = html.unescape(text)
    return normalize_multiline(text) if preserve_breaks else normalize_inline(text)


def decode_bytes(raw: bytes, preferred: str | None = None) -> str:
    tried: list[str] = []
    for enc in [preferred or "", "windows-1251", "cp1251", "utf-8", "koi8-u", "latin1"]:
        if not enc or enc in tried:
            continue
        tried.append(enc)
        try:
            return raw.decode(enc)
        except Exception:
            continue
    return raw.decode("utf-8", errors="replace")


def fetch_text(url: str, fixture_path: Path, *, refresh: bool, timeout: int = 20, retries: int = 2) -> str:
    if fixture_path.exists() and not refresh:
        return fixture_path.read_text(encoding="utf-8", errors="replace")

    last_error: Exception | None = None
    for attempt in range(retries + 1):
        try:
            response = get_session().get(url, timeout=timeout)
            response.raise_for_status()
            text = decode_bytes(response.content, response.encoding)
            fixture_path.parent.mkdir(parents=True, exist_ok=True)
            fixture_path.write_text(text, encoding="utf-8")
            return text
        except Exception as exc:
            last_error = exc
            if attempt < retries:
                time.sleep(0.7 * (attempt + 1))
    raise RuntimeError(f"fetch failed: {url}: {last_error}")


def list_fixture_name(url: str) -> str:
    path = Path(urlparse(url).path)
    stem = path.stem or "songlist"
    return f"{stem}.html"


def parse_list_title(url: str, text: str) -> CategoryRef:
    path = Path(urlparse(url).path)
    stem = path.stem or "songlist"
    slug = re.sub(r"-\d+$", "", stem)
    title_match = RE_TITLE.search(text)
    raw_title = html_to_text(title_match.group(1), preserve_breaks=False) if title_match else slug
    raw_title = raw_title.split(" - ", 1)[0].strip()
    raw_title = re.sub(r"\s*\([^)]*\d+\)\s*$", "", raw_title, flags=re.IGNORECASE)
    return CategoryRef(slug=slug, title=raw_title or slug)


def collect_song_refs(*, refresh: bool, limit_pages: int | None, list_workers: int) -> tuple[dict[str, set[CategoryRef]], dict[str, Any]]:
    fixtures_root = ROOT / "fixtures" / "pisni_org_ua" / "list_pages"
    index_text = fetch_text(LIST_INDEX_URL, fixtures_root / "songlist_index.html", refresh=refresh)
    list_urls = sorted({urljoin(LIST_INDEX_URL, href) for href in RE_SONGLIST_HREF.findall(index_text)})
    if LIST_INDEX_URL not in list_urls:
        list_urls.insert(0, LIST_INDEX_URL)
    if limit_pages and limit_pages > 0:
        list_urls = list_urls[:limit_pages]

    song_refs: dict[str, set[CategoryRef]] = {}
    errors: list[dict[str, str]] = []
    page_song_counts: list[int] = []

    def task(url: str) -> tuple[str, str]:
        text = fetch_text(url, fixtures_root / list_fixture_name(url), refresh=refresh)
        return url, text

    with concurrent.futures.ThreadPoolExecutor(max_workers=max(1, list_workers)) as pool:
        future_map = {pool.submit(task, url): url for url in list_urls}
        for future in concurrent.futures.as_completed(future_map):
            url = future_map[future]
            try:
                page_url, text = future.result()
                category = parse_list_title(page_url, text)
                song_ids = sorted(set(RE_SONG_HREF.findall(text)))
                page_song_counts.append(len(song_ids))
                for sid in song_ids:
                    song_refs.setdefault(sid, set()).add(category)
            except Exception as exc:
                errors.append({"url": url, "error": str(exc)})

    report = {
        "list_pages": len(list_urls),
        "unique_song_ids": len(song_refs),
        "avg_song_ids_per_page": round(sum(page_song_counts) / max(1, len(page_song_counts)), 2),
        "errors": errors,
    }
    return song_refs, report


def extract_mobile_field(text: str, label: str) -> str:
    match = re.search(rf"<b>\s*{label}\s*:?\s*</b>\s*&nbsp;?\s*(.*?)(?:<br\s*/?>|</pre>|$)", text, re.IGNORECASE | re.DOTALL)
    if not match:
        return ""
    return html_to_text(match.group(1), preserve_breaks=False)


def extract_mobile_lyrics(text: str) -> str:
    pre = RE_PRE.search(text)
    if pre:
        return clean_lyrics(html_to_text(pre.group(1), preserve_breaks=True))

    body_match = re.search(r"<body[^>]*>\s*<div[^>]*>(.*?)<script", text, re.IGNORECASE | re.DOTALL)
    block = body_match.group(1) if body_match else text
    block = re.sub(r"<h1[^>]*>.*?</h1>", "", block, flags=re.IGNORECASE | re.DOTALL)
    block = re.sub(r"<h3[^>]*>.*?</h3>", "", block, flags=re.IGNORECASE | re.DOTALL)
    block = re.sub(r"<b>\s*[^<]{1,12}\s*:?\s*</b>.*?(?:<br\s*/?>)", "", block, count=3, flags=re.IGNORECASE | re.DOTALL)
    block = re.sub(r"^(?:\s|<br\s*/?>)+", "", block, flags=re.IGNORECASE)
    return clean_lyrics(html_to_text(block, preserve_breaks=True))


def extract_section_block(text: str, marker: str, end_markers: tuple[str, ...]) -> str:
    idx = text.find(marker)
    if idx < 0:
        return ""
    ends = [text.find(end, idx + len(marker)) for end in end_markers]
    ends = [pos for pos in ends if pos > idx]
    end = min(ends) if ends else len(text)
    return text[idx:end]


def extract_desktop_fields(text: str) -> dict[str, str]:
    block = extract_section_block(
        text,
        'id="songdatablock"',
        ('id="relatedblock"', 'id="votesblock"', 'id="discussblock"'),
    )
    fields: dict[str, str] = {}
    for raw_label, raw_value in RE_FIELD.findall(block):
        label = normalize_inline(raw_label).lower().rstrip(":")
        value = html_to_text(raw_value, preserve_breaks=True)
        if label:
            fields[label] = value
    return fields


def extract_desktop_links(text: str, song_id: str) -> list[dict[str, Any]]:
    links: list[dict[str, Any]] = []
    seen: set[tuple[str, str]] = set()
    sort_order = 1

    for code, kind in RE_VIDEO.findall(text):
        url = f"https://www.youtube.com/watch?v={code}" if kind.lower() == "youtube" else ""
        if not url or (url, kind) in seen:
            continue
        seen.add((url, kind))
        links.append({
            "id": f"{song_id}_l{sort_order}",
            "title": "YouTube",
            "url": url,
            "kind": "video",
            "version_id": None,
            "sort_order": sort_order,
        })
        sort_order += 1

    files_block = extract_section_block(text, 'id="songfilesblock"', ('<a name="songsvideo"', 'id="songvideoblock"'))
    for href, title_html in re.findall(r'<a[^>]+href="([^"]+)"[^>]*>(.*?)</a>', files_block, re.IGNORECASE | re.DOTALL):
        title = html_to_text(title_html, preserve_breaks=False)
        resolved = urljoin("https://www.pisni.org.ua/", href)
        if not title or not resolved:
            continue
        if "/dnrd.php?ban=" in resolved or "/dnrd.php?forceauth=1" in resolved:
            continue
        if any(part in resolved for part in ["/users/", "/persons/", "/articles/"]):
            continue
        if resolved.startswith("https://www.pisni.org.ua/songlist/"):
            continue
        key = (resolved, title)
        if key in seen:
            continue
        seen.add(key)
        kind = "external"
        if any(resolved.lower().endswith(ext) for ext in (".mp3", ".wav", ".ogg", ".midi", ".mid")):
            kind = "audio"
        elif any(resolved.lower().endswith(ext) for ext in (".pdf", ".gif", ".jpg", ".jpeg", ".png")):
            kind = "file"
        links.append({
            "id": f"{song_id}_l{sort_order}",
            "title": title,
            "url": resolved,
            "kind": kind,
            "version_id": None,
            "sort_order": sort_order,
        })
        sort_order += 1
    return links


def is_separator_line(line: str) -> bool:
    stripped = line.strip()
    return bool(stripped) and bool(re.fullmatch(r"[-=*~_#./\\|:]+", stripped))


def is_chord_line(line: str) -> bool:
    stripped = line.strip()
    if not stripped:
        return False
    if re.search(r"[\u0400-\u052f]", stripped):
        return False
    compact = stripped.replace(" ", "")
    if len(compact) <= 1:
        return False
    if re.fullmatch(r"[A-Ha-h0-9#bmM/()+\-\s|]+", stripped):
        tokens = [tok for tok in re.split(r"\s+", stripped) if tok]
        chordish = 0
        for tok in tokens:
            tok = tok.strip("|()[]")
            if re.fullmatch(r"[A-H](?:#|b)?(?:m|maj|min|sus|dim|aug|add)?\d*(?:/[A-H](?:#|b)?)?", tok, re.IGNORECASE):
                chordish += 1
        if len(tokens) == 1 and chordish == 1:
            return True
        if chordish and chordish >= max(2, len(tokens) // 2):
            return True
    return False


def clean_lyrics(text: str) -> str:
    lines = normalize_newlines(text).split("\n")
    cleaned: list[str] = []
    started = False
    for line in lines:
        stripped = line.strip()
        lowered = stripped.lower()
        tail_positions = [lowered.find(marker) for marker in SERVICE_TAIL_MARKERS if marker in lowered]
        if tail_positions:
            cut_pos = min(pos for pos in tail_positions if pos >= 0)
            line = stripped[:cut_pos].rstrip(" .:-")
            if line:
                cleaned.append(line)
            break
        if not started:
            if not stripped:
                continue
            if is_separator_line(stripped) or is_chord_line(stripped):
                continue
            if any(word in lowered for word in CHORD_META_WORDS):
                continue
            started = True
        if is_separator_line(stripped):
            continue
        if is_chord_line(stripped):
            continue
        cleaned.append(line)
    normalized = normalize_multiline("\n".join(cleaned))
    lyric_lines = normalized.splitlines()
    if lyric_lines:
        blank_count = sum(1 for line in lyric_lines if not line.strip())
        nonblank_count = sum(1 for line in lyric_lines if line.strip())
        if blank_count >= max(3, nonblank_count // 2):
            normalized = normalize_multiline(
                "\n".join(line for line in lyric_lines if line.strip() or False)
            )
    return normalized


def is_folk_credit(value: str) -> bool:
    return value.strip().lower() in FOLK_CREDIT_VALUES if value else False


def build_subtitle(*, title: str, subtitle: str, words: str, music: str, performer: str) -> str:
    folk_words = is_folk_credit(words)
    folk_music = is_folk_credit(music)
    parts: list[str] = []
    if subtitle:
        parts.append(subtitle)
    if words and music and folk_words and folk_music:
        parts.append("\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430 \u043d\u0430\u0440\u043e\u0434\u043d\u0430 \u043f\u0456\u0441\u043d\u044f")
    else:
        meta = []
        if music:
            meta.append(f"\u041c\u0443\u0437\u0438\u043a\u0430: {music}")
        if words:
            meta.append(f"\u0421\u043b\u043e\u0432\u0430: {words}")
        if meta:
            parts.append(" ".join(meta))
    if performer:
        parts.append(f"\u0412\u0438\u043a\u043e\u043d\u0443\u0454: {performer}")
    return normalize_inline(". ".join(part for part in parts if part))


def year_from_text(text: str, origin: str) -> tuple[int | None, int]:
    best_year: int | None = None
    best_score = -999
    if not text:
        return None, best_score
    lines = [line.strip() for line in normalize_newlines(text).split("\n") if line.strip()]
    for line in lines[:30]:
        for match in RE_YEAR.finditer(line):
            year = int(match.group(1))
            if year < YEAR_MIN or year > YEAR_MAX:
                continue
            lower = line.lower()
            score = {"notes": 12, "subtitle": 8, "title": 7, "categories": 6, "source": 4}.get(origin, 3)
            if any(word in lower for word in ("\u0434\u043e\u0434\u0430\u043d\u043e", "\u0432\u0456\u0434\u0440\u0435\u0434\u0430", "\u043f\u0435\u0440\u0435\u0433\u043b\u044f\u0434\u0456\u0432")):
                score -= 20
            if any(word in lower for word in PUB_WORDS):
                score -= 7
            if any(word in lower for word in CREATION_WORDS):
                score += 4
            if re.search(r"\b(18\d{2}|19\d{2}|20\d{2})\s*[-–—]\s*(18\d{2}|19\d{2}|20\d{2})\b", lower):
                score += 1
            if score > best_score:
                best_year = year
                best_score = score
    return best_year, best_score


def infer_year(title: str, subtitle: str, source: str, notes: str, categories: set[CategoryRef]) -> str | None:
    candidates: list[tuple[int, int]] = []
    for origin, text in [
        ("notes", notes),
        ("subtitle", subtitle),
        ("title", title),
        ("source", source),
        ("categories", "\n".join(cat.title for cat in categories)),
    ]:
        year, score = year_from_text(text, origin)
        if year is not None:
            candidates.append((year, score))
    if not candidates:
        return None
    year, score = max(candidates, key=lambda item: item[1])
    if score < 6:
        return None
    return str(year)


def infer_country(
    year_text: str | None,
    categories: set[CategoryRef],
    subtitle: str,
    source: str,
    notes: str,
    words: str,
    music: str,
) -> str:
    year = int(year_text) if year_text and year_text.isdigit() else None
    if year is not None:
        if year <= 1916:
            return "ukraine_before_1917"
        if year <= 1921:
            return "ukrainian_peoples_republic_1917_1921"
        if year <= 1991:
            return "ukr_ssr_1919_1991"
        return "ukraine_1991"

    slugs = {cat.slug for cat in categories}
    folk_hint = "\u043d\u0430\u0440\u043e\u0434\u043d\u0430 \u043f\u0456\u0441\u043d\u044f" in subtitle.lower()
    archival_folk_hint = any(
        token in "\n".join([subtitle, source, notes]).lower()
        for token in (
            "\u0444\u043e\u043b\u044c\u043a\u043b\u043e\u0440\u043d\u0438\u0439 \u0430\u0440\u0445\u0456\u0432",
            "\u043d\u0430\u0440\u043e\u0434\u043d\u0430 \u043f\u0456\u0441\u043d\u044f",
            "\u043d\u0430\u0440\u043e\u0434\u043d\u0456 \u043f\u0456\u0441\u043d\u0456",
        )
    )
    has_named_authors = bool(words or music) and not (is_folk_credit(words) and is_folk_credit(music))
    if slugs & MODERN_SLUGS:
        return "ukraine_1991"
    if slugs & UPR_SLUGS:
        return "ukrainian_peoples_republic_1917_1921"
    if slugs & SOVIETISH_SLUGS:
        return "ukr_ssr_1919_1991"
    if slugs & FOLK_SLUGS or folk_hint or archival_folk_hint:
        return "ukraine_before_1917"
    if has_named_authors:
        return "ukraine_1991"
    return "ukraine_1991"


def process_song(sid: str, categories: set[CategoryRef], *, refresh: bool) -> SongPayload | None:
    fixtures_root = ROOT / "fixtures" / "pisni_org_ua"
    mobile_text = fetch_text(MOBILE_URL_TEMPLATE.format(sid=sid), fixtures_root / "mobile" / f"{sid}.html", refresh=refresh)
    desktop_text = fetch_text(DESKTOP_URL_TEMPLATE.format(sid=sid), fixtures_root / "desktop" / f"{sid}.html", refresh=refresh)

    title = html_to_text(RE_H1.search(mobile_text).group(1), preserve_breaks=False) if RE_H1.search(mobile_text) else ""
    subtitle_text = html_to_text(RE_H3.search(mobile_text).group(1), preserve_breaks=False) if RE_H3.search(mobile_text) else ""
    if not title:
        title = html_to_text(RE_H1.search(desktop_text).group(1), preserve_breaks=False) if RE_H1.search(desktop_text) else ""
    if not title:
        return None

    mobile_words = extract_mobile_field(mobile_text, "\u0421\u043b")
    mobile_music = extract_mobile_field(mobile_text, "\u041c\u0443\u0437")
    mobile_performer = extract_mobile_field(mobile_text, "\u0412\u0438\u043a")
    words = mobile_words
    music = mobile_music
    performer = mobile_performer

    lyrics = extract_mobile_lyrics(mobile_text)
    if not lyrics:
        pre = re.search(r'<pre[^>]*class="songwords"[^>]*>(.*?)</pre>', desktop_text, re.IGNORECASE | re.DOTALL)
        lyrics = clean_lyrics(html_to_text(pre.group(1), preserve_breaks=True)) if pre else ""
    if not lyrics:
        return None

    fields = extract_desktop_fields(desktop_text)
    source = fields.get("\u0434\u0436\u0435\u0440\u0435\u043b\u043e", "")
    notes_parts: list[str] = []
    if fields.get("\u043f\u0440\u0438\u043c\u0456\u0442\u043a\u0438"):
        notes_parts.append(fields["\u043f\u0440\u0438\u043c\u0456\u0442\u043a\u0438"])
    if fields.get("\u043f\u0456\u0434\u0431\u0456\u0440 \u0430\u043a\u043e\u0440\u0434\u0456\u0432"):
        notes_parts.append(
            f"\u041f\u0456\u0434\u0431\u0456\u0440 \u0430\u043a\u043e\u0440\u0434\u0456\u0432: {fields['\u043f\u0456\u0434\u0431\u0456\u0440 \u0430\u043a\u043e\u0440\u0434\u0456\u0432']}"
        )
    notes = normalize_multiline("\n\n".join(part for part in notes_parts if part))

    subtitle = build_subtitle(
        title=title,
        subtitle=subtitle_text,
        words=words,
        music=music,
        performer=performer,
    )
    year = infer_year(title, subtitle, source, notes, categories)
    country = infer_country(year, categories, subtitle, source, notes, words, music)
    tags = [SITE_TAG, *[f"cat:{cat.slug}" for cat in sorted(categories, key=lambda c: c.slug)], *[cat.title for cat in sorted(categories, key=lambda c: c.slug)]]
    links = extract_desktop_links(desktop_text, f"{ID_PREFIX}_{sid}")

    return SongPayload(
        id=f"{ID_PREFIX}_{sid}",
        title=normalize_inline(title)[:240],
        subtitle=subtitle[:500],
        lang="uk",
        country=country,
        period=None,
        year=year,
        source=normalize_multiline(source)[:3000] or None,
        notes=notes[:12000] or None,
        lyrics=lyrics[:20000],
        tags_json=json.dumps(tags, ensure_ascii=False),
        links=links,
    )


def build_insert_sql(song: SongPayload) -> list[str]:
    lines = [
        "INSERT OR REPLACE INTO songs ("
        "id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at"
        ") VALUES ("
        f"'{esc_sql(song.id)}',"
        f"'{esc_sql(song.title)}',"
        f"{sql_nullable(song.subtitle)},"
        f"'{esc_sql(song.lang)}',"
        f"'{esc_sql(song.country)}',"
        f"{sql_nullable(song.period)},"
        f"{sql_nullable(song.year)},"
        f"{sql_nullable(song.source)},"
        f"{sql_nullable(song.notes)},"
        f"'{esc_sql(song.lyrics)}',"
        f"'{esc_sql(song.tags_json)}',"
        "1,'published',"
        "COALESCE((SELECT created_at FROM songs WHERE id="
        f"'{esc_sql(song.id)}'"
        "), datetime('now'))," 
        "datetime('now'));"
    ]
    lines.append(
        f"INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('{esc_sql(song.id)}','{esc_sql(song.title)}','{esc_sql(song.lyrics)}');"
    )
    for link in song.links:
        lines.append(
            "INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ("
            f"'{esc_sql(link['id'])}',"
            f"'{esc_sql(song.id)}',"
            f"{sql_nullable(link.get('title'))},"
            f"'{esc_sql(link['url'])}',"
            f"{sql_nullable(link.get('kind'))},"
            "NULL,"
            f"{int(link['sort_order'])}"
            ");"
        )
    return lines


def run_remote_sql(db_name: str, sql_path: Path) -> None:
    npx_exe = "npx.cmd" if sys.platform.startswith("win") else "npx"
    cmd = [npx_exe, "wrangler", "d1", "execute", db_name, "--remote", "--file", str(sql_path)]
    subprocess.run(cmd, cwd=ROOT, check=True)


def main() -> None:
    parser = argparse.ArgumentParser(description="Fast importer for pisni.org.ua")
    parser.add_argument("--refresh", action="store_true", help="Re-download fixtures even if cached")
    parser.add_argument("--limit-pages", type=int, default=None, help="Only process first N list pages")
    parser.add_argument("--limit-songs", type=int, default=None, help="Only process first N song cards")
    parser.add_argument("--list-workers", type=int, default=16, help="Concurrent workers for songlist pages")
    parser.add_argument("--song-workers", type=int, default=24, help="Concurrent workers for song cards")
    parser.add_argument("--execute-remote", action="store_true", help="Execute generated SQL in remote D1")
    parser.add_argument("--db-name", default="euro-songbook-db", help="Wrangler D1 database name")
    args = parser.parse_args()

    song_refs, list_report = collect_song_refs(refresh=args.refresh, limit_pages=args.limit_pages, list_workers=args.list_workers)
    song_ids = sorted(song_refs)
    if args.limit_songs and args.limit_songs > 0:
        song_ids = song_ids[: args.limit_songs]

    out_dir = ROOT / "out" / "pisni_org_ua"
    out_dir.mkdir(parents=True, exist_ok=True)
    jsonl_path = out_dir / "songs.jsonl"
    summary_path = out_dir / "import_summary.json"
    sql_path = ROOT / "tmp_import_pisni_org_ua.sql"

    imported = 0
    skipped = 0
    errors: list[dict[str, str]] = []

    with jsonl_path.open("w", encoding="utf-8") as jsonl, sql_path.open("w", encoding="utf-8") as sqlf:
        sqlf.write(f"DELETE FROM song_links WHERE song_id LIKE '{ID_PREFIX}_%';\n")
        sqlf.write(f"DELETE FROM song_versions WHERE song_id LIKE '{ID_PREFIX}_%';\n")
        sqlf.write(f"DELETE FROM songs_fts WHERE song_id LIKE '{ID_PREFIX}_%';\n")
        sqlf.write(f"DELETE FROM songs WHERE id LIKE '{ID_PREFIX}_%';\n")

        with concurrent.futures.ThreadPoolExecutor(max_workers=max(1, args.song_workers)) as pool:
            future_map = {
                pool.submit(process_song, sid, song_refs[sid], refresh=args.refresh): sid for sid in song_ids
            }
            for idx, future in enumerate(concurrent.futures.as_completed(future_map), start=1):
                sid = future_map[future]
                try:
                    song = future.result()
                    if song is None:
                        skipped += 1
                        continue
                    jsonl.write(json.dumps({
                        "id": song.id,
                        "title": song.title,
                        "subtitle": song.subtitle,
                        "lang": song.lang,
                        "country": song.country,
                        "period": song.period,
                        "year": song.year,
                        "source": song.source,
                        "notes": song.notes,
                        "lyrics": song.lyrics,
                        "tags_json": json.loads(song.tags_json),
                        "links": song.links,
                    }, ensure_ascii=False) + "\n")
                    for line in build_insert_sql(song):
                        sqlf.write(line + "\n")
                    imported += 1
                    if idx % 100 == 0:
                        print(json.dumps({"processed": idx, "imported": imported, "skipped": skipped, "errors": len(errors)}, ensure_ascii=False))
                except Exception as exc:
                    errors.append({"song_id": sid, "error": str(exc)})

        sqlf.write("\n")

    summary = {
        "site": SITE_TAG,
        "list_report": list_report,
        "processed_song_ids": len(song_ids),
        "imported": imported,
        "skipped": skipped,
        "errors": errors[:500],
        "sql_path": str(sql_path),
        "jsonl_path": str(jsonl_path),
    }
    summary_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(summary, ensure_ascii=False))

    if args.execute_remote:
        run_remote_sql(args.db_name, sql_path)
        print(f"executed_remote: {sql_path}")


if __name__ == "__main__":
    main()
