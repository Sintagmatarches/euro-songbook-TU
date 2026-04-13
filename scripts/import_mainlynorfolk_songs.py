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

SITE_ROOT = "https://mainlynorfolk.info/folk/songs/"
SITE_TAG = "mainlynorfolk.info/folk/songs"
ID_PREFIX = "mnf"
FIXTURES_DIR = ROOT / "fixtures" / "mainlynorfolk_songs"
OUT_DIR = ROOT / "out" / "mainlynorfolk_songs"

HEADERS = {
    "User-Agent": "EuroSongbookImporter/1.0 (local preservation pipeline)",
    "Accept-Language": "en;q=0.9",
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

RE_LINK = re.compile(r'href=["\']([^"\']+)["\']', re.IGNORECASE)
RE_TITLE = re.compile(r"<title[^>]*>(.*?)</title>", re.IGNORECASE | re.DOTALL)
RE_H1 = re.compile(r"<h1[^>]*>(.*?)</h1>", re.IGNORECASE | re.DOTALL)
RE_H2_LYRICS = re.compile(r"<h2[^>]*>\s*Lyrics\s*</h2>", re.IGNORECASE)
RE_H2 = re.compile(r"<h2[^>]*>(.*?)</h2>", re.IGNORECASE | re.DOTALL)
RE_H3 = re.compile(r"<h3\b([^>]*)>(.*?)</h3>", re.IGNORECASE | re.DOTALL)
RE_P = re.compile(r"<p[^>]*>(.*?)</p>", re.IGNORECASE | re.DOTALL)
RE_ARTICLE = re.compile(r"<article id=\"mainArticle\">(.*?)</article>\s*</article>", re.IGNORECASE | re.DOTALL)
RE_TAG = re.compile(r"<[^>]+>", re.DOTALL)
RE_COMMENT = re.compile(r"<!--.*?-->", re.DOTALL)
RE_SCRIPT = re.compile(r"<script\b[^>]*>.*?</script>", re.IGNORECASE | re.DOTALL)
RE_STYLE = re.compile(r"<style\b[^>]*>.*?</style>", re.IGNORECASE | re.DOTALL)
RE_BR = re.compile(r"<br\s*/?>", re.IGNORECASE)
RE_WS = re.compile(r"[ \t]+")
RE_MULTI_BLANK = re.compile(r"\n{3,}")
RE_ATTR_YEAR = re.compile(r'data-year="(\d{4})"', re.IGNORECASE)
RE_ROUD = re.compile(r"Roud\s+(\d+)", re.IGNORECASE)
RE_LAWS = re.compile(r"Laws\s+([A-Z0-9]+)", re.IGNORECASE)
RE_MOJIBAKE = re.compile(r"[\u00c0-\u00ff][\u0080-\u00bf]")


def norm_text(value: Any) -> str:
    return str(value or "")


def normalize_inline(text: str | None) -> str:
    value = repair_mojibake(html.unescape(norm_text(text)).replace("\xa0", " "))
    value = RE_TAG.sub(" ", value)
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


def repair_mojibake(text: str | None) -> str:
    value = norm_text(text)
    for _ in range(2):
        if not RE_MOJIBAKE.search(value):
            break
        try:
            repaired = value.encode("latin1").decode("utf-8")
        except UnicodeError:
            break
        if repaired == value:
            break
        value = repaired
    return value


def slugify(value: str) -> str:
    clean = re.sub(r"[^0-9A-Za-z._-]+", "_", value).strip("._")
    return clean[:160] or "item"


def fetch_text(url: str, fixture_path: Path, *, refresh: bool, timeout: int = 45) -> str:
    if fixture_path.exists() and not refresh:
        return fixture_path.read_text(encoding="utf-8")

    last_error: Exception | None = None
    for attempt in range(6):
        try:
            response = SESSION.get(url, headers=HEADERS, timeout=(20, timeout))
            response.raise_for_status()
            text = response.text
            fixture_path.parent.mkdir(parents=True, exist_ok=True)
            fixture_path.write_text(text, encoding="utf-8")
            return text
        except Exception as exc:  # pragma: no cover - network retries
            last_error = exc
            time.sleep(0.8 + attempt * 0.5 + random.uniform(0.0, 0.2))
    raise RuntimeError(f"Failed to fetch {url}: {last_error}")


def discover_catalog(*, refresh: bool) -> list[str]:
    fixture = FIXTURES_DIR / "catalog.html"
    text = fetch_text(SITE_ROOT, fixture, refresh=refresh)
    links: set[str] = set()
    for href in RE_LINK.findall(text):
        if href.startswith("#") or href.startswith("mailto:") or href.startswith("javascript:"):
            continue
        full = urljoin(SITE_ROOT, href)
        low = full.lower()
        if "/songs/" not in low:
            continue
        if not low.endswith(".html"):
            continue
        if "/records/" in low or "/books/" in low:
            continue
        links.add(full)
    return sorted(links)


def html_to_text(fragment: str) -> str:
    text = norm_text(fragment)
    text = RE_COMMENT.sub("", text)
    text = RE_SCRIPT.sub("", text)
    text = RE_STYLE.sub("", text)
    text = RE_BR.sub("\n", text)
    text = RE_TAG.sub(" ", text)
    text = html.unescape(text)
    text = repair_mojibake(text)
    return normalize_multiline(text)


def extract_title(page_html: str, url: str) -> str:
    h1_matches = RE_H1.findall(page_html)
    if h1_matches:
        title = normalize_inline(h1_matches[-1])
        if title:
            return title
    title_match = RE_TITLE.search(page_html)
    if title_match:
        title = normalize_inline(title_match.group(1))
        if title:
            return title
    return Path(url).stem.replace(".html", "")


def article_html(page_html: str) -> str:
    match = RE_ARTICLE.search(page_html)
    return match.group(1) if match else page_html


def extract_notes(page_html: str, title: str) -> str:
    article = article_html(page_html)
    lyrics_match = RE_H2_LYRICS.search(article)
    head = article[: lyrics_match.start()] if lyrics_match else article
    lines = [line for line in html_to_text(head).split("\n") if line.strip()]
    notes: list[str] = []
    seen_title = False
    for line in lines:
        if not seen_title and line.lower() == title.lower():
            seen_title = True
            continue
        if not seen_title:
            continue
        if line.startswith("Roud ") or line.startswith("Lyrics"):
            continue
        notes.append(line)
    return normalize_multiline("\n\n".join(notes[:12]))


def extract_lyrics_and_versions(page_html: str) -> tuple[str, list[dict[str, Any]], list[str]]:
    article = article_html(page_html)
    lyrics_match = RE_H2_LYRICS.search(article)
    if not lyrics_match:
        return "", [], []
    section = article[lyrics_match.end() :]
    next_h2 = RE_H2.search(section)
    if next_h2:
        section = section[: next_h2.start()]

    versions: list[dict[str, Any]] = []
    links: list[str] = []
    h3_matches = list(RE_H3.finditer(section))
    if not h3_matches:
        paras = [html_to_text(p) for p in RE_P.findall(section)]
        paras = [p for p in paras if p]
        return ("\n\n".join(paras), [], links)

    for index, match in enumerate(h3_matches):
        attrs = match.group(1)
        version_title = normalize_inline(match.group(2))
        start = match.end()
        end = h3_matches[index + 1].start() if index + 1 < len(h3_matches) else len(section)
        block = section[start:end]
        paras = [html_to_text(p) for p in RE_P.findall(block)]
        paras = [p for p in paras if p]
        lyrics = "\n\n".join(paras)
        if not lyrics:
            continue
        year_match = RE_ATTR_YEAR.search(attrs)
        versions.append(
            {
                "title": version_title or f"Version {index + 1}",
                "lang": "en",
                "lyrics": lyrics,
                "lyrics_meta_json": {},
                "source": None,
                "sort_order": index,
                "year_hint": year_match.group(1) if year_match else None,
            }
        )
    main_lyrics = versions[0]["lyrics"] if versions else ""
    clean_versions = [
        {
            "title": version["title"],
            "lang": version["lang"],
            "lyrics": version["lyrics"],
            "lyrics_meta_json": version["lyrics_meta_json"],
            "source": version["source"],
            "sort_order": version["sort_order"],
        }
        for version in versions[1:]
    ]
    return main_lyrics, clean_versions, links


def extract_year(page_html: str) -> str | None:
    years = [int(match.group(1)) for match in RE_ATTR_YEAR.finditer(page_html)]
    if years:
        return str(min(years))
    return None


def build_tags(page_html: str) -> list[str]:
    tags = [SITE_TAG, "source:mainlynorfolk", "source:english_folk"]
    for match in RE_ROUD.findall(page_html)[:3]:
        tags.append(f"roud:{match}")
    for match in RE_LAWS.findall(page_html)[:3]:
        tags.append(f"laws:{match.lower()}")
    return sorted(set(tags))


def build_song(url: str, *, refresh: bool) -> tuple[dict[str, Any] | None, str]:
    fixture = FIXTURES_DIR / "songs" / slugify(url.replace("https://", "").replace("/", "_"))
    page_html = fetch_text(url, fixture.with_suffix(".html"), refresh=refresh)
    title = extract_title(page_html, url)
    lyrics, versions, extra_links = extract_lyrics_and_versions(page_html)
    if len(lyrics) < 20:
        return None, "empty_lyrics"

    notes = extract_notes(page_html, title)
    links = [{"title": "Source page", "url": url, "kind": "source"}]
    for idx, media_url in enumerate(extra_links, start=1):
        links.append({"title": f"Media {idx}", "url": media_url, "kind": "media"})

    item = {
        "id": f"{ID_PREFIX}_{slugify(url.replace('https://mainlynorfolk.info/', ''))}",
        "title": title,
        "subtitle": None,
        "lang": "en",
        "country": "uk_gb_ni_1922",
        "period": None,
        "region": None,
        "event": None,
        "theme": None,
        "verified": False,
        "year": extract_year(page_html),
        "source": url,
        "notes": notes or None,
        "verified_translation": None,
        "lyrics": lyrics,
        "lyrics_meta_json": {},
        "tags": build_tags(page_html),
        "links": links,
        "versions": versions,
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
    parser = argparse.ArgumentParser(description="Save the Mainly Norfolk songs catalog locally.")
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
        "requested": len(catalog),
        "kept": 0,
        "reasons": {},
        "samples": {},
    }
    reasons = Counter()
    items: list[dict[str, Any]] = []

    with ThreadPoolExecutor(max_workers=max(1, args.workers)) as pool:
        future_map = {pool.submit(build_song, url, refresh=args.refresh): url for url in catalog}
        for index, future in enumerate(as_completed(future_map), start=1):
            url = future_map[future]
            try:
                item, reason = future.result()
            except Exception as exc:  # pragma: no cover - runtime/network report
                item, reason = None, f"error:{exc}"
            reasons[reason] += 1
            summary["samples"].setdefault(reason, [])
            if len(summary["samples"][reason]) < 5:
                summary["samples"][reason].append({"url": url})
            if item is not None:
                items.append(item)
            if index % 100 == 0 or index == len(catalog):
                print(json.dumps({"processed": index, "requested": len(catalog), "kept": len(items), "reason_counts": dict(reasons)}, ensure_ascii=False))

    items.sort(key=lambda item: item["source"])
    summary["kept"] = len(items)
    summary["reasons"] = dict(sorted(reasons.items()))
    summary["country_counts"] = dict(sorted(Counter(item["country"] for item in items if item.get("country")).items()))
    summary["lang_counts"] = dict(sorted(Counter(item["lang"] for item in items if item.get("lang")).items()))

    jsonl_path, report_path, chunk_paths = write_outputs(items, summary, chunk_size=max(1, args.chunk_size))
    print(json.dumps({"requested": len(catalog), "kept": len(items), "jsonl": str(jsonl_path.relative_to(ROOT)).replace("\\", "/"), "report": str(report_path.relative_to(ROOT)).replace("\\", "/"), "chunks": len(chunk_paths)}, ensure_ascii=False))


if __name__ == "__main__":
    main()
