from __future__ import annotations

import argparse
import html
import importlib.util
import json
import random
import re
import subprocess
import sys
import time
from collections import Counter
from concurrent.futures import ThreadPoolExecutor, as_completed
from dataclasses import dataclass
from pathlib import Path
from typing import Any
from urllib.parse import quote

import requests
from requests.adapters import HTTPAdapter
from urllib3.util.retry import Retry


ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

SITE_ROOT = "https://www.aclorien.it/archiviocantipatriottici"
SITE_TAG = "aclorien.it/archiviocantipatriottici"
ID_PREFIX = "aclp"
ARCHIVE_PREFIX = "https://web.archive.org/web/2/"

LETTERS = [
    "0",
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "inno",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "poesia",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z",
]
SKIP_LETTERS = {"discorsi"}

HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0 Safari/537.36",
    "Accept-Language": "it,en;q=0.9,ru;q=0.8",
}

SESSION = requests.Session()
RETRY = Retry(
    total=3,
    connect=3,
    read=3,
    status=3,
    backoff_factor=1.2,
    status_forcelist=(429, 500, 502, 503, 504),
    allowed_methods=("GET",),
    raise_on_status=False,
)
ADAPTER = HTTPAdapter(max_retries=RETRY, pool_connections=8, pool_maxsize=8)
SESSION.mount("http://", ADAPTER)
SESSION.mount("https://", ADAPTER)

RE_TAG = re.compile(r"<[^>]+>", re.DOTALL)
RE_BR = re.compile(r"<br\s*/?>", re.IGNORECASE)
RE_ROW = re.compile(
    r"<tr>\s*<td>\s*<b><u><a href=song\.php\?id=(\d+)>(.*?)</a></u></b>\s*</td>\s*<td>\s*([^<]*)\s*</td>\s*<td>\s*(.*?)\s*</td>",
    re.IGNORECASE | re.DOTALL,
)
RE_H2 = re.compile(r"<h2>(.*?)</h2>", re.IGNORECASE | re.DOTALL)
RE_YEAR = re.compile(r"Anno:</b>\s*([^<]+)", re.IGNORECASE)
RE_GROUP = re.compile(r"Gruppo</b>:\s*<u>\s*(.*?)\s*</u>", re.IGNORECASE | re.DOTALL)
RE_TEXT_AUTHOR = re.compile(r"<b>Testo</b>:\s*(.*?)<br", re.IGNORECASE | re.DOTALL)
RE_MUSIC_AUTHOR = re.compile(r"<b>Musica</b>:\s*(.*?)<br", re.IGNORECASE | re.DOTALL)
RE_NOTE_BLOCK = re.compile(r"<h3>\s*Note\s*</h3>\s*(.*?)\s*</div>", re.IGNORECASE | re.DOTALL)
RE_ROW_BLOCK = re.compile(
    r'<div class="?row"?[^>]*>\s*<div class="col-6 col-12-medium">\s*(.*?)\s*</div>\s*<div class="col-6 col-12-medium">',
    re.IGNORECASE | re.DOTALL,
)
RE_ARCHIVE_MISSING = re.compile(r"<title>\s*Wayback Machine\s*</title>.*?Hrm\.", re.IGNORECASE | re.DOTALL)
RE_YEAR_TOKEN = re.compile(r"\b(1[0-9]{3}|20[0-9]{2})\b")
RE_SERVICE_WS = re.compile(r"[ \t]+")
RE_BLANKS = re.compile(r"\n{3,}")
RE_LINE_TRAIL = re.compile(r"[ \t]+$")


@dataclass
class LangRow:
    id: str
    title: str
    subtitle: str
    lang: str
    lyrics: str
    source: str
    notes: str


@dataclass
class ListRow:
    song_id: str
    title: str
    year: str
    category: str
    letter: str


def load_module(path: Path, name: str):
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Unable to load module: {path}")
    mod = importlib.util.module_from_spec(spec)
    sys.modules[name] = mod
    spec.loader.exec_module(mod)  # type: ignore[attr-defined]
    return mod


LANG_MOD = load_module(ROOT / "scripts" / "reclassify_song_languages.py", "reclassify_song_languages_aclorien")


def norm_text(value: Any) -> str:
    return str(value or "")


def clean_symbols(text: str) -> str:
    out = norm_text(text)
    replacements = {
        "\u00a0": " ",
        "\u202f": " ",
        "\u2009": " ",
        "\u2011": "-",
        "\u2012": "-",
        "\u2013": "-",
        "\u2014": "-",
        "\u2212": "-",
        "\x85": "...",
        "\x91": "'",
        "\x92": "'",
        "\x93": '"',
        "\x94": '"',
        "\x95": "*",
        "\x96": "-",
        "\x97": "-",
        "\x99": "",
        "\u0091": "'",
        "\u0092": "'",
        "\u0093": '"',
        "\u0094": '"',
        "\u0095": "*",
        "\u0096": "-",
        "\u0097": "-",
        "\u0099": "",
        "\r\n": "\n",
        "\r": "\n",
    }
    for old, new in replacements.items():
        out = out.replace(old, new)
    return out


def normalize_inline(text: str | None) -> str:
    out = RE_SERVICE_WS.sub(" ", html.unescape(clean_symbols(norm_text(text)))).strip()
    out = re.sub(r"\s+([,.;:!?])", r"\1", out)
    out = re.sub(r"([(\[])\s+", r"\1", out)
    out = re.sub(r"\s+([)\]])", r"\1", out)
    return out


def normalize_multiline(text: str | None) -> str:
    lines = [RE_LINE_TRAIL.sub("", line) for line in clean_symbols(norm_text(text)).split("\n")]
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
    return RE_BLANKS.sub("\n\n", "\n".join(out)).strip()


def html_to_text(block: str | None) -> str:
    text = clean_symbols(norm_text(block))
    text = RE_BR.sub("\n", text)
    text = re.sub(r"</p\s*>", "\n\n", text, flags=re.IGNORECASE)
    text = re.sub(r"<p[^>]*>", "", text, flags=re.IGNORECASE)
    text = re.sub(r"</li\s*>", "\n", text, flags=re.IGNORECASE)
    text = re.sub(r"<li[^>]*>", "* ", text, flags=re.IGNORECASE)
    text = RE_TAG.sub(" ", text)
    return normalize_multiline(html.unescape(text))


def classify_lang(title: str, lyrics: str, source: str, notes: str) -> str:
    row = LangRow(
        id="tmp",
        title=title,
        subtitle="",
        lang="it",
        lyrics=lyrics,
        source=source,
        notes=notes,
    )
    lang, _score, _why = LANG_MOD.classify_song(row)
    return lang if lang in LANG_MOD.LANG_VALUES else "it"


def make_song_id(song_id: str) -> str:
    return f"{ID_PREFIX}_{song_id}"


def map_country(year: int | None) -> str:
    if year is not None and year < 1900:
        return "italy_before_1900"
    if year is not None and year <= 1946:
        return "kingdom_of_italy_1900_1946"
    return "italian_republic_1946"


def normalize_reason(value: Any) -> str:
    text = norm_text(value)
    lowered = text.lower()
    if "winerror 10061" in lowered or "failed to establish a new connection" in lowered or "connection refused" in lowered:
        return "archive_connection_refused"
    if "timed out" in lowered or "read timed out" in lowered:
        return "archive_timeout"
    if "connection aborted" in lowered or "connection reset" in lowered:
        return "archive_connection_reset"
    if "http_429" in lowered:
        return "archive_rate_limited"
    if "http_5" in lowered:
        return "archive_http_5xx"
    if lowered.startswith("http_"):
        return lowered
    if lowered.startswith("error:"):
        lowered = lowered[6:]
    return f"error:{text[:120]}"


def fetch_text(url: str, fixture_path: Path, *, refresh: bool, timeout: int = 60) -> tuple[str | None, str]:
    if fixture_path.exists() and not refresh:
        return fixture_path.read_text(encoding="utf-8"), "cached"
    last_error: Exception | None = None
    for attempt in range(8):
        try:
            if url.startswith(ARCHIVE_PREFIX):
                time.sleep(0.6 + attempt * 0.45 + random.uniform(0.0, 0.35))
            response = SESSION.get(url, headers=HEADERS, timeout=(20, timeout))
            text = response.content.decode("latin-1", errors="replace")
            if response.status_code == 404 or RE_ARCHIVE_MISSING.search(text):
                return None, "missing_archive"
            if response.status_code == 429:
                last_error = RuntimeError("http_429")
                time.sleep(2.5 + attempt * 1.5)
                continue
            if response.status_code >= 500 and "song.php?id=" in url and len(response.content) < 2600:
                last_error = RuntimeError(f"http_{response.status_code}")
                time.sleep(2.0 + attempt * 1.2)
                continue
            response.raise_for_status()
            fixture_path.parent.mkdir(parents=True, exist_ok=True)
            fixture_path.write_text(text, encoding="utf-8")
            return text, "fetched"
        except Exception as exc:  # pragma: no cover - network retries
            last_error = exc
            time.sleep(1.5 * (attempt + 1) + random.uniform(0.0, 0.5))
    return None, normalize_reason(last_error)


def fetch_list(letter: str, *, refresh: bool) -> str:
    url = f"{SITE_ROOT}/songlist.php?letter={quote(letter)}&nation=it"
    fixture = ROOT / "fixtures" / "aclorien_patriottici" / "lists" / f"{letter}.html"
    text, reason = fetch_text(url, fixture, refresh=refresh, timeout=45)
    if text is None:
        raise RuntimeError(f"Failed to fetch list {letter}: {reason}")
    return text


def parse_list(letter: str, text: str) -> list[ListRow]:
    items: list[ListRow] = []
    for song_id, title, year, category in RE_ROW.findall(text):
        items.append(
            ListRow(
                song_id=normalize_inline(song_id),
                title=normalize_inline(RE_TAG.sub(" ", title)),
                year=normalize_inline(year),
                category=normalize_inline(RE_TAG.sub(" ", category)),
                letter=letter,
            )
        )
    return items


def extract_first_year(*parts: str) -> int | None:
    for part in parts:
        match = RE_YEAR_TOKEN.search(norm_text(part))
        if match:
            return int(match.group(1))
    return None


def extract_lyrics(page_html: str) -> str:
    best = ""
    for block in RE_ROW_BLOCK.findall(page_html):
        text = html_to_text(block)
        if "Anno:" in text or "Gruppo" in text or len(text) < len(best):
            continue
        best = text
    return best


def extract_notes(page_html: str) -> str:
    match = RE_NOTE_BLOCK.search(page_html)
    if not match:
        return ""
    return html_to_text(match.group(1))


def parse_group(page_html: str) -> str:
    match = RE_GROUP.search(page_html)
    return normalize_inline(RE_TAG.sub(" ", match.group(1))) if match else ""


def build_song(row: ListRow, *, refresh: bool) -> tuple[dict[str, Any] | None, str]:
    source_url = f"{SITE_ROOT}/song.php?id={row.song_id}"
    archive_url = f"{ARCHIVE_PREFIX}{source_url}"
    fixture = ROOT / "fixtures" / "aclorien_patriottici" / "songs" / f"{row.song_id}.html"
    page_html, fetch_reason = fetch_text(archive_url, fixture, refresh=refresh, timeout=75)
    if page_html is None:
        return None, fetch_reason

    title_match = RE_H2.search(page_html)
    title = normalize_inline(RE_TAG.sub(" ", title_match.group(1))) if title_match else row.title
    if not title:
        title = row.title

    year_match = RE_YEAR.search(page_html)
    year_raw = normalize_inline(year_match.group(1)) if year_match else row.year
    year = extract_first_year(year_raw, row.year)

    lyrics = extract_lyrics(page_html)
    if len(lyrics) < 20:
        return None, "empty_lyrics"

    group_name = parse_group(page_html)
    text_author_match = RE_TEXT_AUTHOR.search(page_html)
    music_author_match = RE_MUSIC_AUTHOR.search(page_html)
    text_author = normalize_inline(RE_TAG.sub(" ", text_author_match.group(1))) if text_author_match else ""
    music_author = normalize_inline(RE_TAG.sub(" ", music_author_match.group(1))) if music_author_match else ""
    notes = extract_notes(page_html)

    note_parts: list[str] = []
    if row.category:
        note_parts.append(f"Archive category: {row.category}")
    if text_author:
        note_parts.append(f"Text: {text_author}")
    if music_author:
        note_parts.append(f"Music: {music_author}")
    if group_name:
        note_parts.append(f"Group: {group_name}")
    if notes:
        note_parts.append(notes)
    full_notes = normalize_multiline("\n\n".join(part for part in note_parts if part))

    lang = classify_lang(title, lyrics, source_url, full_notes)
    tags = [
        SITE_TAG,
        "source:aclorien",
        "source:archivio_canti_patriottici",
        f"letter:{row.letter}",
    ]
    if row.category:
        tags.append(f"category:{re.sub(r'[^0-9A-Za-z]+', '_', row.category.lower()).strip('_')}")

    links = [
        {"title": "Source page", "url": source_url, "kind": "source"},
        {"title": "Archived page", "url": archive_url, "kind": "archive"},
    ]

    out = {
        "id": make_song_id(row.song_id),
        "title": title,
        "subtitle": None,
        "lang": lang,
        "country": map_country(year),
        "period": None,
        "region": None,
        "event": None,
        "theme": None,
        "verified": False,
        "year": str(year) if year is not None else None,
        "source": source_url,
        "notes": full_notes or None,
        "verified_translation": None,
        "lyrics": lyrics,
        "lyrics_meta_json": {},
        "tags": sorted(set(tags)),
        "links": links,
        "versions": [],
        "status": "published",
    }
    return out, "kept"


def write_outputs(items: list[dict[str, Any]], summary: dict[str, Any], *, chunk_size: int) -> tuple[Path, Path, list[str]]:
    out_dir = ROOT / "out" / "aclorien_patriottici"
    chunk_dir = out_dir / "chunks"
    out_dir.mkdir(parents=True, exist_ok=True)
    chunk_dir.mkdir(parents=True, exist_ok=True)

    jsonl_path = out_dir / "songs.jsonl"
    report_path = out_dir / "import_summary.json"
    with jsonl_path.open("w", encoding="utf-8") as handle:
        for item in items:
            handle.write(json.dumps(item, ensure_ascii=False) + "\n")

    chunk_paths: list[str] = []
    for index in range(0, len(items), chunk_size):
        payload = {"items": items[index : index + chunk_size]}
        chunk_path = chunk_dir / f"chunk_{index // chunk_size + 1:04d}.json"
        chunk_path.write_text(json.dumps(payload, ensure_ascii=False, indent=2), encoding="utf-8")
        chunk_paths.append(str(chunk_path.relative_to(ROOT)).replace("\\", "/"))

    summary["chunk_paths"] = chunk_paths
    report_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2), encoding="utf-8")
    return jsonl_path, report_path, chunk_paths


def run_remote_import(report_path: Path, db_name: str) -> None:
    cmd = ["node", str(ROOT / "scripts" / "import_json_chunks_remote.mjs"), db_name, str(report_path), ID_PREFIX]
    subprocess.run(cmd, cwd=ROOT, check=True)


def main() -> None:
    parser = argparse.ArgumentParser(description="Import the Aclorien patriotic songs archive.")
    parser.add_argument("--refresh", action="store_true", help="Ignore cached fixtures and refetch remote pages.")
    parser.add_argument("--limit-songs", type=int, default=None, help="Only process the first N songs after list collection.")
    parser.add_argument("--chunk-size", type=int, default=100, help="Songs per JSON chunk.")
    parser.add_argument("--workers", type=int, default=8, help="Parallel workers for archived song pages.")
    parser.add_argument("--remote-db", default="", help="Run remote D1 import after building outputs.")
    args = parser.parse_args()

    list_rows: list[ListRow] = []
    for letter in LETTERS:
        if letter in SKIP_LETTERS:
            continue
        list_rows.extend(parse_list(letter, fetch_list(letter, refresh=args.refresh)))
    deduped = {row.song_id: row for row in list_rows}
    rows = sorted(deduped.values(), key=lambda row: int(row.song_id))
    if args.limit_songs is not None:
        rows = rows[: args.limit_songs]

    summary: dict[str, Any] = {
        "site": SITE_TAG,
        "letters": [letter for letter in LETTERS if letter not in SKIP_LETTERS],
        "skipped_letters": sorted(SKIP_LETTERS),
        "requested": len(rows),
        "kept": 0,
        "reasons": {},
        "samples": {},
    }
    reasons = Counter()
    items: list[dict[str, Any]] = []

    with ThreadPoolExecutor(max_workers=max(1, args.workers)) as pool:
        future_map = {pool.submit(build_song, row, refresh=args.refresh): row for row in rows}
        for index, future in enumerate(as_completed(future_map), start=1):
            row = future_map[future]
            try:
                item, reason = future.result()
            except Exception as exc:  # pragma: no cover - network/runtime report
                item, reason = None, normalize_reason(exc)
            reasons[reason] += 1
            summary["samples"].setdefault(reason, [])
            if len(summary["samples"][reason]) < 5:
                summary["samples"][reason].append({"song_id": row.song_id, "title": row.title, "year": row.year})
            if item is not None:
                items.append(item)
            if index % 100 == 0 or index == len(rows):
                print(json.dumps({"processed": index, "requested": len(rows), "kept": len(items), "reason_counts": reasons}, ensure_ascii=False))

    items.sort(key=lambda item: int(str(item["id"]).split("_")[-1]))
    summary["kept"] = len(items)
    summary["reasons"] = dict(sorted(reasons.items()))
    summary["country_counts"] = dict(sorted(Counter(item["country"] for item in items if item.get("country")).items()))
    summary["lang_counts"] = dict(sorted(Counter(item["lang"] for item in items if item.get("lang")).items()))

    jsonl_path, report_path, chunk_paths = write_outputs(items, summary, chunk_size=max(1, args.chunk_size))
    print(json.dumps({
        "requested": len(rows),
        "kept": len(items),
        "jsonl": str(jsonl_path.relative_to(ROOT)).replace("\\", "/"),
        "report": str(report_path.relative_to(ROOT)).replace("\\", "/"),
        "chunks": len(chunk_paths),
    }, ensure_ascii=False))

    if args.remote_db:
        run_remote_import(report_path, args.remote_db)


if __name__ == "__main__":
    main()
