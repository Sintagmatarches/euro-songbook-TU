from __future__ import annotations

import argparse
import html
import json
import random
import re
import sys
import time
from collections import Counter
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
from typing import Any
from urllib.parse import urljoin

import requests
from requests.adapters import HTTPAdapter
from urllib3.util.retry import Retry


ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

SITE_ROOT = "https://www.rumbos.net/cancionero/"
SITE_TAG = "rumbos.net/cancionero"
ID_PREFIX = "rumbo"
FIXTURES_DIR = ROOT / "fixtures" / "rumbos_cancionero"
OUT_DIR = ROOT / "out" / "rumbos_cancionero"

INDEX_PAGES = [
    "_indices/ind_ant.htm",
    "_indices/ind_3942.htm",
    "_indices/ind_4245.htm",
    "_indices/ind_4560.htm",
    "_indices/ind_6075.htm",
    "_indices/ind_7585.htm",
    "_indices/ind_85post.htm",
]

INDEX_META = {
    "ind_ant": {"label": "Anteriores al FJ", "country": "spain", "period": "spain_pre_1939"},
    "ind_3942": {"label": "Periodo 1939-1942", "country": "spain", "period": "spain_1939_1942"},
    "ind_4245": {"label": "Periodo 1942-1945", "country": "spain", "period": "spain_1942_1945"},
    "ind_4560": {"label": "Periodo 1945-1960", "country": "spain", "period": "spain_1945_1960"},
    "ind_6075": {"label": "Periodo 1960-1975", "country": "spain", "period": "spain_1960_1975"},
    "ind_7585": {"label": "Periodo 1975-1985", "country": "spain", "period": "spain_1975_1985"},
    "ind_85post": {"label": "Periodo 1985+", "country": "spain", "period": "spain_post_1985"},
}

HEADERS = {
    "User-Agent": "EuroSongbookImporter/1.0 (local preservation pipeline)",
    "Accept-Language": "es,en;q=0.8",
}

SESSION = requests.Session()
RETRY = Retry(
    total=4,
    connect=4,
    read=4,
    status=4,
    backoff_factor=1.0,
    status_forcelist=(429, 500, 502, 503, 504),
    allowed_methods=("GET",),
    raise_on_status=False,
)
ADAPTER = HTTPAdapter(max_retries=RETRY, pool_connections=8, pool_maxsize=8)
SESSION.mount("http://", ADAPTER)
SESSION.mount("https://", ADAPTER)

RE_LINK = re.compile(r'href=["\']([^"\']+\.htm)["\']', re.IGNORECASE)
RE_TITLE = re.compile(r"<title[^>]*>(.*?)</title>", re.IGNORECASE | re.DOTALL)
RE_STRONG_TITLE = re.compile(r"<strong>\s*([^<]{2,220})\s*</strong>", re.IGNORECASE | re.DOTALL)
RE_TAG = re.compile(r"<[^>]+>", re.DOTALL)
RE_COMMENT = re.compile(r"<!--.*?-->", re.DOTALL)
RE_SCRIPT = re.compile(r"<script\b[^>]*>.*?</script>", re.IGNORECASE | re.DOTALL)
RE_STYLE = re.compile(r"<style\b[^>]*>.*?</style>", re.IGNORECASE | re.DOTALL)
RE_BR = re.compile(r"<br\s*/?>", re.IGNORECASE)
RE_TABLE_SPLIT = re.compile(r"</?(?:table|tr|td|blockquote|p|div|center|font|hr)[^>]*>", re.IGNORECASE)
RE_WS = re.compile(r"[ \t]+")
RE_MULTI_BLANK = re.compile(r"\n{3,}")
RE_YEAR = re.compile(r"\b(1[89]\d{2}|20\d{2})\b")
RE_MP3 = re.compile(r"href=[\"']([^\"']+\.(?:mp3|mid|midi|wav))[\"']", re.IGNORECASE)
RE_IMAGE = re.compile(r"src=[\"']([^\"']+\.(?:jpg|jpeg|gif|png))[\"']", re.IGNORECASE)
RE_LYRIC_MARKER = re.compile(r"\+\s*\n\s*\+\s*\n\s*\+", re.IGNORECASE)
RE_PLUS_LINE = re.compile(r"^\+\s*(?:\+\s*)*$")


def norm_text(value: Any) -> str:
    return str(value or "")


def normalize_inline(text: str | None) -> str:
    value = html.unescape(norm_text(text)).replace("\xa0", " ")
    value = RE_WS.sub(" ", value).strip()
    return value


def normalize_multiline(text: str | None) -> str:
    lines = norm_text(text).replace("\r\n", "\n").replace("\r", "\n").split("\n")
    out: list[str] = []
    for line in lines:
        stripped = normalize_inline(line)
        if stripped:
            out.append(stripped)
        elif out and out[-1] != "":
            out.append("")
    while out and out[0] == "":
        out.pop(0)
    while out and out[-1] == "":
        out.pop()
    return RE_MULTI_BLANK.sub("\n\n", "\n".join(out))


def slugify(value: str) -> str:
    out = re.sub(r"[^0-9A-Za-z._-]+", "_", value).strip("._")
    return out[:160] or "item"


def fetch_text(url: str, fixture_path: Path, *, refresh: bool, timeout: int = 45) -> str:
    if fixture_path.exists() and not refresh:
        return fixture_path.read_text(encoding="utf-8")

    last_error: Exception | None = None
    for attempt in range(6):
        try:
            response = SESSION.get(url, headers=HEADERS, timeout=(20, timeout))
            response.raise_for_status()
            text = response.content.decode("latin-1", errors="replace")
            fixture_path.parent.mkdir(parents=True, exist_ok=True)
            fixture_path.write_text(text, encoding="utf-8")
            return text
        except Exception as exc:  # pragma: no cover - network retries
            last_error = exc
            time.sleep(0.8 + attempt * 0.5 + random.uniform(0.0, 0.2))
    raise RuntimeError(f"Failed to fetch {url}: {last_error}")


def discover_catalog(*, refresh: bool) -> list[dict[str, str]]:
    songs: dict[str, dict[str, str]] = {}
    for rel in INDEX_PAGES:
        url = urljoin(SITE_ROOT, rel)
        fixture = FIXTURES_DIR / "indices" / Path(rel).name
        text = fetch_text(url, fixture, refresh=refresh)
        index_key = Path(rel).stem
        index_info = INDEX_META.get(index_key, {})
        for href in RE_LINK.findall(text):
            song_url = urljoin(url, href)
            low = song_url.lower()
            if "/_indices/" in low:
                continue
            if not re.search(r"/[a-z0-9]+_[0-9]{3}\.htm$", low):
                continue
            item = songs.setdefault(
                song_url,
                {
                    "url": song_url,
                    "index_key": index_key,
                    "index_label": norm_text(index_info.get("label")),
                    "country": norm_text(index_info.get("country")),
                    "period": norm_text(index_info.get("period")),
                },
            )
            if not item.get("index_label"):
                item["index_label"] = norm_text(index_info.get("label"))
            if not item.get("country"):
                item["country"] = norm_text(index_info.get("country"))
            if not item.get("period"):
                item["period"] = norm_text(index_info.get("period"))
    return sorted(songs.values(), key=lambda item: item["url"])


def html_to_text(fragment: str) -> str:
    text = norm_text(fragment)
    text = RE_COMMENT.sub("", text)
    text = RE_SCRIPT.sub("", text)
    text = RE_STYLE.sub("", text)
    text = RE_BR.sub("\n", text)
    text = RE_TABLE_SPLIT.sub("\n", text)
    text = RE_TAG.sub(" ", text)
    text = html.unescape(text)
    return normalize_multiline(text)


def extract_title(page_html: str, fallback: str) -> str:
    match = RE_TITLE.search(page_html)
    if match:
        title = normalize_inline(RE_TAG.sub(" ", match.group(1)))
        if title:
            return title
    strong = RE_STRONG_TITLE.search(page_html)
    if strong:
        title = normalize_inline(strong.group(1))
        if title:
            return title
    return fallback


def extract_lyrics(page_html: str, title: str) -> str:
    lower = page_html.lower()
    pivot = lower.find("</strong>")
    body = page_html[pivot:] if pivot != -1 else page_html
    text = html_to_text(body)
    lines = [line for line in text.split("\n") if line.strip()]

    noise_prefixes = (
        "principal",
        "indice",
        "siguiente",
        "anterior",
        "volver",
        "escuchar",
        "fuentes sonoras",
        "cancioneros",
    )
    filtered: list[str] = []
    for line in lines:
        low = line.lower()
        if low == title.lower():
            continue
        if any(low.startswith(prefix) for prefix in noise_prefixes):
            continue
        filtered.append(line)

    if not filtered:
        return ""

    started = False
    lyric_lines: list[str] = []
    for line in filtered:
        if not started and RE_PLUS_LINE.match(line):
            started = True
            continue
        if line.startswith("Seleccione una") or line.startswith("Aportaciones") or "cancionero@rumbos.net" in line.lower():
            break
        if started:
            lyric_lines.append(line)

    if lyric_lines:
        return normalize_multiline("\n".join(lyric_lines))
    return normalize_multiline("\n".join(filtered))


def extract_notes(page_html: str, title: str, index_label: str) -> str:
    text = html_to_text(page_html)
    lines = [line for line in text.split("\n") if line.strip()]
    notes: list[str] = []
    seen_title = False
    for line in lines:
        if not seen_title and title.lower() in line.lower():
            seen_title = True
            continue
        if not seen_title:
            continue
        if line == title:
            continue
        if line.startswith("Seleccione una") or "cancionero@rumbos.net" in line.lower():
            break
        if len(line) > 220:
            notes.append(line)
            break
        if any(token in line.lower() for token in ("canción del periodo", "cancion del periodo", "periodo", "himno", "letra", "música", "musica")):
            notes.append(line)
        if len(notes) >= 3:
            break
    if index_label:
        notes.insert(0, f"Catalog section: {index_label}")
    return normalize_multiline("\n\n".join(notes))


def build_song(entry: dict[str, str], *, refresh: bool) -> tuple[dict[str, Any] | None, str]:
    url = entry["url"]
    page_name = Path(url).name
    fixture = FIXTURES_DIR / "songs" / page_name
    page_html = fetch_text(url, fixture, refresh=refresh)

    fallback_title = Path(page_name).stem.replace("_", " ")
    title = extract_title(page_html, fallback_title)
    lyrics = extract_lyrics(page_html, title)
    if len(lyrics) < 20:
        return None, "empty_lyrics"

    notes = extract_notes(page_html, title, entry.get("index_label", ""))
    year = None

    links = [{"title": "Source page", "url": url, "kind": "source"}]
    for idx, media in enumerate(sorted(set(RE_MP3.findall(page_html))), start=1):
        links.append({"title": f"Media {idx}", "url": urljoin(url, media), "kind": "media"})

    tags = [
        SITE_TAG,
        "source:rumbos",
        "source:cancionero_de_juventudes",
        f"catalog:{slugify(entry.get('index_key') or '')}",
    ]

    item = {
        "id": f"{ID_PREFIX}_{Path(page_name).stem.lower()}",
        "title": title,
        "subtitle": None,
        "lang": "es",
        "country": entry.get("country") or None,
        "period": entry.get("period") or None,
        "region": None,
        "event": None,
        "theme": None,
        "verified": False,
        "year": year,
        "source": url,
        "notes": notes or None,
        "verified_translation": None,
        "lyrics": lyrics,
        "lyrics_meta_json": {},
        "tags": sorted(set(tag for tag in tags if tag)),
        "links": links,
        "versions": [],
        "status": "published",
    }
    return item, "kept"


def write_outputs(items: list[dict[str, Any]], summary: dict[str, Any], *, chunk_size: int) -> tuple[Path, Path, list[str]]:
    chunk_dir = OUT_DIR / "chunks"
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    chunk_dir.mkdir(parents=True, exist_ok=True)

    jsonl_path = OUT_DIR / "songs.jsonl"
    report_path = OUT_DIR / "import_summary.json"

    with jsonl_path.open("w", encoding="utf-8") as handle:
        for item in items:
            handle.write(json.dumps(item, ensure_ascii=False) + "\n")

    chunk_paths: list[str] = []
    for index in range(0, len(items), chunk_size):
        payload = {"items": items[index : index + chunk_size]}
        chunk_path = chunk_dir / f"chunk_{index // chunk_size + 1:04d}.json"
        chunk_path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        chunk_paths.append(str(chunk_path.relative_to(ROOT)).replace("\\", "/"))

    summary["chunk_paths"] = chunk_paths
    report_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return jsonl_path, report_path, chunk_paths


def main() -> None:
    parser = argparse.ArgumentParser(description="Save the full rumbos.net/cancionero catalog locally.")
    parser.add_argument("--refresh", action="store_true", help="Ignore cached fixtures and refetch pages.")
    parser.add_argument("--limit-songs", type=int, default=None, help="Only process the first N songs after discovery.")
    parser.add_argument("--chunk-size", type=int, default=500, help="Songs per JSON chunk.")
    parser.add_argument("--workers", type=int, default=8, help="Parallel workers for page fetch and parse.")
    args = parser.parse_args()

    catalog = discover_catalog(refresh=args.refresh)
    if args.limit_songs is not None:
        catalog = catalog[: args.limit_songs]

    summary: dict[str, Any] = {
        "site": SITE_TAG,
        "index_pages": INDEX_PAGES,
        "requested": len(catalog),
        "kept": 0,
        "reasons": {},
        "samples": {},
    }
    reasons = Counter()
    items: list[dict[str, Any]] = []

    with ThreadPoolExecutor(max_workers=max(1, args.workers)) as pool:
        future_map = {pool.submit(build_song, entry, refresh=args.refresh): entry for entry in catalog}
        for index, future in enumerate(as_completed(future_map), start=1):
            entry = future_map[future]
            try:
                item, reason = future.result()
            except Exception as exc:  # pragma: no cover - runtime/network report
                item, reason = None, f"error:{exc}"
            reasons[reason] += 1
            summary["samples"].setdefault(reason, [])
            if len(summary["samples"][reason]) < 5:
                summary["samples"][reason].append({"url": entry["url"]})
            if item is not None:
                items.append(item)
            if index % 50 == 0 or index == len(catalog):
                print(json.dumps({"processed": index, "requested": len(catalog), "kept": len(items), "reason_counts": dict(reasons)}, ensure_ascii=False))

    items.sort(key=lambda item: item["source"])
    summary["kept"] = len(items)
    summary["reasons"] = dict(sorted(reasons.items()))
    summary["country_counts"] = dict(sorted(Counter(item["country"] for item in items if item.get("country")).items()))
    summary["period_counts"] = dict(sorted(Counter(item["period"] for item in items if item.get("period")).items()))
    summary["lang_counts"] = dict(sorted(Counter(item["lang"] for item in items if item.get("lang")).items()))

    jsonl_path, report_path, chunk_paths = write_outputs(items, summary, chunk_size=max(1, args.chunk_size))
    print(json.dumps({"requested": len(catalog), "kept": len(items), "jsonl": str(jsonl_path.relative_to(ROOT)).replace("\\", "/"), "report": str(report_path.relative_to(ROOT)).replace("\\", "/"), "chunks": len(chunk_paths)}, ensure_ascii=False))


if __name__ == "__main__":
    main()
