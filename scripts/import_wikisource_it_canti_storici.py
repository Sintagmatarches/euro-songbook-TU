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
from pathlib import Path
from typing import Any
from urllib.parse import quote

import requests
from requests.adapters import HTTPAdapter
from urllib3.util.retry import Retry


ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

SITE_ROOT = "https://it.wikisource.org"
SITE_TAG = "it.wikisource.org/Categoria:Canti_storici"
API_URL = f"{SITE_ROOT}/w/api.php"
ROOT_CATEGORY = "Categoria:Canti storici"
ID_PREFIX = "wsitcs"
FIXTURES_DIR = ROOT / "fixtures" / "wikisource_it_canti_storici"
OUT_DIR = ROOT / "out" / "wikisource_it_canti_storici"

HEADERS = {
    "User-Agent": "EuroSongbookImporter/1.0 (research import pipeline; contact unavailable)",
    "Accept-Language": "it,en;q=0.8",
}

SESSION = requests.Session()
RETRY = Retry(
    total=4,
    connect=4,
    read=4,
    status=4,
    backoff_factor=1.1,
    status_forcelist=(429, 500, 502, 503, 504),
    allowed_methods=("GET",),
    raise_on_status=False,
)
ADAPTER = HTTPAdapter(max_retries=RETRY, pool_connections=8, pool_maxsize=8)
SESSION.mount("http://", ADAPTER)
SESSION.mount("https://", ADAPTER)

META_SECTION_RE = re.compile(r'<section begin="([^"]+)"\/>(.*?)<section end="\1"\/>', re.DOTALL)
COMMENT_RE = re.compile(r"<!--.*?-->", re.DOTALL)
POEM_RE = re.compile(r"<poem[^>]*>(.*?)</poem>", re.IGNORECASE | re.DOTALL)
HEADING_RE = re.compile(r"(?m)^={2,6}\s*(.*?)\s*={2,6}\s*$")
CATEGORY_RE = re.compile(r"\[\[\s*Categoria\s*:\s*([^\]|]+)(?:\|[^\]]*)?\]\]", re.IGNORECASE)
LINK_RE = re.compile(r"\[\[(?:[^|\]]*\|)?([^\]]+)\]\]")
EXT_LINK_RE = re.compile(r"\[(https?://[^\s\]]+)\s+([^\]]+)\]")
TAG_RE = re.compile(r"<[^>]+>")
YEAR_RE = re.compile(r"\b(1[0-9]{3}|20[0-9]{2})\b")
AUTORE_CITATO_RE = re.compile(r"\{\{\s*AutoreCitato\s*\|([^{}]+?)\}\}", re.IGNORECASE)
TEMPLATE_RE = re.compile(r"\{\{([^{}]+)\}\}")
REF_LINE_RE = re.compile(r"^\{\{\s*R\s*\|\s*\d+\s*\}\}", re.IGNORECASE)
MULTI_BLANK_RE = re.compile(r"\n{3,}")

CATEGORY_PERIOD_MAP: dict[str, tuple[str | None, str | None]] = {
    "Canti del Risorgimento italiano": ("italy_before_1900", "italian_risorgimento_1848_1860"),
    "Canti del Regno d'Italia": (None, "kingdom_of_italy_1861_1946"),
    "Canti dell'Italia fascista": ("kingdom_of_italy_1900_1946", "italy_fascism_1922_1943"),
    "Canti della Repubblica Sociale Italiana": ("kingdom_of_italy_1900_1946", "italian_social_republic_1943_1945"),
    "Canti antifascisti e della Resistenza": ("kingdom_of_italy_1900_1946", "italian_resistance_1943_1945"),
}


def load_module(path: Path, name: str):
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Unable to load module: {path}")
    mod = importlib.util.module_from_spec(spec)
    sys.modules[name] = mod
    spec.loader.exec_module(mod)  # type: ignore[attr-defined]
    return mod


LANG_MOD = load_module(ROOT / "scripts" / "reclassify_song_languages.py", "reclassify_song_languages_wikisource_it")


def norm_text(value: Any) -> str:
    return str(value or "")


def normalize_inline(text: str | None) -> str:
    value = html.unescape(norm_text(text))
    value = value.replace("\xa0", " ")
    value = re.sub(r"\s+", " ", value).strip()
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
    return MULTI_BLANK_RE.sub("\n\n", "\n".join(out))


def strip_html(text: str | None) -> str:
    return normalize_inline(TAG_RE.sub("", html.unescape(norm_text(text))))


def slugify(value: str) -> str:
    clean = re.sub(r"[^0-9A-Za-z._-]+", "_", value).strip("._")
    return clean[:160] or "item"


def fix_title(title: str) -> str:
    return normalize_inline(title).replace("_", " ")


def requests_json(params: dict[str, Any]) -> dict[str, Any]:
    last_error: Exception | None = None
    for attempt in range(6):
        try:
            response = SESSION.get(API_URL, params=params, headers=HEADERS, timeout=(20, 60))
            if response.status_code == 429:
                time.sleep(1.2 + attempt * 0.8 + random.uniform(0.0, 0.3))
                continue
            response.raise_for_status()
            data = response.json()
            if "error" in data:
                raise RuntimeError(str(data["error"]))
            return data
        except Exception as exc:  # pragma: no cover - network retries
            last_error = exc
            time.sleep(1.0 + attempt * 0.7 + random.uniform(0.0, 0.3))
    raise RuntimeError(f"MediaWiki API failed: {last_error}")


def fetch_category_members(category_title: str, *, refresh: bool) -> dict[str, Any]:
    safe_name = slugify(category_title)
    fixture_path = FIXTURES_DIR / "categories" / f"{safe_name}.json"
    if fixture_path.exists() and not refresh:
        return json.loads(fixture_path.read_text(encoding="utf-8"))

    members: list[dict[str, Any]] = []
    cmcontinue = None
    while True:
        params = {
            "action": "query",
            "format": "json",
            "list": "categorymembers",
            "cmtitle": category_title,
            "cmtype": "page|subcat",
            "cmlimit": "max",
        }
        if cmcontinue:
            params["cmcontinue"] = cmcontinue
        payload = requests_json(params)
        members.extend(payload.get("query", {}).get("categorymembers", []))
        cmcontinue = payload.get("continue", {}).get("cmcontinue")
        if not cmcontinue:
            break

    out = {"category": category_title, "members": members}
    fixture_path.parent.mkdir(parents=True, exist_ok=True)
    fixture_path.write_text(json.dumps(out, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return out


def crawl_category_tree(*, refresh: bool) -> tuple[list[str], list[str]]:
    queue = [ROOT_CATEGORY]
    seen_categories: set[str] = set()
    page_titles: set[str] = set()

    while queue:
        category_title = queue.pop(0)
        if category_title in seen_categories:
            continue
        seen_categories.add(category_title)
        payload = fetch_category_members(category_title, refresh=refresh)
        for member in payload.get("members", []):
            title = fix_title(norm_text(member.get("title")))
            ns = int(member.get("ns", -1))
            if ns == 14:
                queue.append(title)
            elif ns == 0 and title:
                page_titles.add(title)

    return sorted(page_titles), sorted(seen_categories)


def fetch_page_parse(title: str, *, refresh: bool) -> dict[str, Any]:
    safe_name = slugify(title)
    fixture_path = FIXTURES_DIR / "pages" / f"{safe_name}.json"
    if fixture_path.exists() and not refresh:
        return json.loads(fixture_path.read_text(encoding="utf-8"))

    payload = requests_json(
        {
            "action": "parse",
            "format": "json",
            "page": title,
            "prop": "wikitext|categories|displaytitle",
        }
    )
    parse = payload.get("parse", {})
    fixture_path.parent.mkdir(parents=True, exist_ok=True)
    fixture_path.write_text(json.dumps(parse, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return parse


def extract_meta(wikitext: str) -> dict[str, str]:
    meta: dict[str, str] = {}
    for key, value in META_SECTION_RE.findall(wikitext):
        clean_key = normalize_inline(key)
        clean_value = normalize_inline(value)
        if clean_key and clean_value and clean_key not in meta:
            meta[clean_key] = clean_value
    return meta


def remove_noise(text: str) -> str:
    out = COMMENT_RE.sub("", norm_text(text))
    out = CATEGORY_RE.sub("", out)
    out = re.sub(r"\{\{Conteggio pagine\|[^{}]*\}\}", "", out, flags=re.IGNORECASE)
    out = re.sub(r"\{\{Qualità\|[^{}]*\}\}", "", out, flags=re.IGNORECASE)
    out = re.sub(r"\{\{Intestazione[\s\S]*?\}\}", "", out, flags=re.IGNORECASE)
    out = re.sub(r"<onlyinclude>[\s\S]*?</onlyinclude>", "", out, flags=re.IGNORECASE)
    return out


def split_sections(wikitext: str) -> tuple[str, dict[str, str]]:
    matches = list(HEADING_RE.finditer(wikitext))
    if not matches:
        return wikitext, {}

    prelude = wikitext[: matches[0].start()]
    sections: dict[str, str] = {}
    for index, match in enumerate(matches):
        title = normalize_inline(match.group(1))
        start = match.end()
        end = matches[index + 1].start() if index + 1 < len(matches) else len(wikitext)
        sections[title] = wikitext[start:end].strip()
    return prelude.strip(), sections


def replace_template(match: re.Match[str]) -> str:
    body = match.group(1)
    parts = [normalize_inline(part) for part in body.split("|")]
    if not parts:
        return ""
    name = parts[0].lower()
    if name == "r":
        return ""
    if name == "autorecitato":
        return parts[-1] if len(parts) >= 2 else ""
    return parts[-1] if name in {"sc", "sic", "maiuscoletto"} and len(parts) > 1 else ""


def wiki_to_text(text: str) -> str:
    out = norm_text(text)
    out = COMMENT_RE.sub("", out)
    out = out.replace("\xa0", " ")
    out = re.sub(r"<br\s*/?>", "\n", out, flags=re.IGNORECASE)
    out = AUTORE_CITATO_RE.sub(lambda m: normalize_inline(m.group(1).split("|")[-1]), out)
    out = TEMPLATE_RE.sub(replace_template, out)
    out = EXT_LINK_RE.sub(lambda m: normalize_inline(m.group(2)), out)
    out = LINK_RE.sub(lambda m: normalize_inline(m.group(1)), out)
    out = TAG_RE.sub("", out)
    out = html.unescape(out)
    out = out.replace("'''", "").replace("''", "")
    out = re.sub(r"(?m)^\s*[:;]+\s*", "", out)
    out = re.sub(r"(?m)^\*\s*", "", out)
    out = REF_LINE_RE.sub("", out)
    return normalize_multiline(out)


def extract_poems(text: str) -> list[str]:
    poems: list[str] = []
    for raw in POEM_RE.findall(text):
        cleaned = wiki_to_text(raw)
        if len(cleaned) >= 12:
            poems.append(cleaned)
    return poems


def extract_translation(section_map: dict[str, str]) -> str | None:
    for name, body in section_map.items():
        normalized = normalize_inline(name).lower()
        if "traduzione" not in normalized:
            continue
        poems = extract_poems(body)
        if poems:
            return "\n\n".join(poems)
        text = wiki_to_text(body)
        return text or None
    return None


def extract_notes(section_map: dict[str, str]) -> str:
    note_chunks: list[str] = []
    for name, body in section_map.items():
        normalized = normalize_inline(name).lower()
        if normalized.startswith("note"):
            text = wiki_to_text(body)
            if text:
                note_chunks.append(text)
    return "\n\n".join(note_chunks)


def infer_year(year_raw: str) -> int | None:
    value = normalize_inline(year_raw)
    match = YEAR_RE.search(value)
    if match:
        return int(match.group(1))
    return None


def classify_lang(title: str, lyrics: str, source: str, notes: str) -> str:
    row = LANG_MOD.SongRow(
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


def map_country(year: int | None) -> str | None:
    if year is None:
        return None
    if year is not None and year < 1900:
        return "italy_before_1900"
    if year is not None and year <= 1946:
        return "kingdom_of_italy_1900_1946"
    return "italian_republic_1946"


def infer_country_period(categories: list[str], year: int | None) -> tuple[str | None, str | None]:
    for category in categories:
        if category not in CATEGORY_PERIOD_MAP:
            continue
        country, period = CATEGORY_PERIOD_MAP[category]
        if category == "Canti del Regno d'Italia":
            if year is not None and year < 1861:
                return (map_country(year), None)
            return (country or map_country(year), period)
        return (country or map_country(year), period)
    return map_country(year), None


def is_content_category(category: str) -> bool:
    normalized = normalize_inline(category)
    low = normalized.lower()
    if low in {"canti storici", "canti"}:
        return True
    if not low.startswith("canti"):
        return False
    if re.fullmatch(r"canti-[a-z0-9]", low):
        return False
    return True


def build_tags(categories: list[str]) -> list[str]:
    tags = [SITE_TAG, "source:wikisource", "source:wikisource_it", "category:canti_storici"]
    for category in categories:
        slug = re.sub(r"[^0-9A-Za-z]+", "_", category.lower()).strip("_")
        if slug:
            tags.append(f"wikisource_category:{slug}")
    return sorted(set(tags))


def page_url(title: str) -> str:
    return f"{SITE_ROOT}/wiki/{quote(title.replace(' ', '_'), safe=':_()/!%')}"


def build_song(title: str, *, refresh: bool) -> tuple[dict[str, Any] | None, str]:
    parse = fetch_page_parse(title, refresh=refresh)
    wikitext = norm_text(parse.get("wikitext", {}).get("*"))
    if not wikitext:
        return None, "missing_wikitext"

    meta = extract_meta(wikitext)
    visible_categories = [
        fix_title(norm_text(item.get("*")))
        for item in parse.get("categories", [])
        if not item.get("hidden")
    ]
    content_categories = [category for category in visible_categories if is_content_category(category)]
    clean_wikitext = remove_noise(wikitext)
    main_body, section_map = split_sections(clean_wikitext)
    poems = extract_poems(main_body)
    lyrics = "\n\n".join(poems)
    if len(lyrics) < 12:
        fallback = wiki_to_text(main_body)
        lyrics = fallback
    if len(lyrics) < 12:
        return None, "empty_lyrics"

    song_title = strip_html(meta.get("Titolo")) or strip_html(parse.get("displaytitle")) or fix_title(title)
    year_raw = meta.get("Anno di pubblicazione", "")
    year = infer_year(year_raw)
    country, period = infer_country_period(content_categories, year)
    source = page_url(title)
    translation = extract_translation(section_map)
    notes_parts: list[str] = []

    author = normalize_inline(meta.get("Nome e cognome dell'autore"))
    music = normalize_inline(meta.get("Nome e cognome dell'autore delle musiche"))
    project = normalize_inline(meta.get("Progetto"))
    topic = normalize_inline(meta.get("Argomento"))
    note_text = extract_notes(section_map)

    if author:
        notes_parts.append(f"Text: {author}")
    if music:
        notes_parts.append(f"Music: {music}")
    if year_raw and not year:
        notes_parts.append(f"Publication year (raw): {year_raw}")
    if project:
        notes_parts.append(f"Wikisource project: {project}")
    if topic:
        notes_parts.append(f"Wikisource topic: {topic}")
    if content_categories:
        notes_parts.append("Wikisource categories: " + ", ".join(content_categories))
    if note_text:
        notes_parts.append(note_text)
    notes = normalize_multiline("\n\n".join(notes_parts))

    lang = classify_lang(song_title, lyrics, source, notes)
    item = {
        "id": f"{ID_PREFIX}_{parse.get('pageid') or slugify(title)}",
        "title": song_title,
        "subtitle": None,
        "lang": lang,
        "country": country,
        "period": period,
        "region": None,
        "event": None,
        "theme": None,
        "verified": False,
        "year": str(year) if year is not None else None,
        "source": source,
        "notes": notes or None,
        "verified_translation": None,
        "lyrics": lyrics,
        "lyrics_meta_json": {},
        "tags": build_tags(content_categories),
        "links": [
            {"title": "Source page", "url": source, "kind": "source"},
            {
                "title": "Raw API parse",
                "url": f"{API_URL}?action=parse&format=json&page={quote(title, safe='')}&prop=wikitext|categories|displaytitle",
                "kind": "api",
            },
        ],
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


def run_remote_import(report_path: Path, db_name: str) -> None:
    cmd = ["node", str(ROOT / "scripts" / "import_json_chunks_remote.mjs"), db_name, str(report_path), ID_PREFIX]
    subprocess.run(cmd, cwd=ROOT, check=True)


def main() -> None:
    parser = argparse.ArgumentParser(description="Import historical songs from Italian Wikisource.")
    parser.add_argument("--refresh", action="store_true", help="Ignore cached fixtures and refetch MediaWiki API responses.")
    parser.add_argument("--limit-songs", type=int, default=None, help="Only process the first N page titles after discovery.")
    parser.add_argument("--chunk-size", type=int, default=100, help="Songs per JSON chunk.")
    parser.add_argument("--workers", type=int, default=8, help="Parallel workers for page parsing.")
    parser.add_argument("--remote-db", default="", help="Run remote D1 import after building outputs.")
    args = parser.parse_args()

    page_titles, categories = crawl_category_tree(refresh=args.refresh)
    if args.limit_songs is not None:
        page_titles = page_titles[: args.limit_songs]

    summary: dict[str, Any] = {
        "site": SITE_TAG,
        "root_category": ROOT_CATEGORY,
        "categories": categories,
        "requested": len(page_titles),
        "kept": 0,
        "reasons": {},
        "samples": {},
    }
    reasons = Counter()
    items: list[dict[str, Any]] = []

    with ThreadPoolExecutor(max_workers=max(1, args.workers)) as pool:
        future_map = {pool.submit(build_song, title, refresh=args.refresh): title for title in page_titles}
        for index, future in enumerate(as_completed(future_map), start=1):
            title = future_map[future]
            try:
                item, reason = future.result()
            except Exception as exc:  # pragma: no cover - runtime/network report
                item, reason = None, f"error:{normalize_inline(exc)}"
            reasons[reason] += 1
            summary["samples"].setdefault(reason, [])
            if len(summary["samples"][reason]) < 5:
                summary["samples"][reason].append({"title": title})
            if item is not None:
                items.append(item)
            if index % 50 == 0 or index == len(page_titles):
                print(
                    json.dumps(
                        {"processed": index, "requested": len(page_titles), "kept": len(items), "reason_counts": dict(reasons)},
                        ensure_ascii=False,
                    )
                )

    items.sort(key=lambda item: normalize_inline(item.get("title")))
    summary["kept"] = len(items)
    summary["reasons"] = dict(sorted(reasons.items()))
    summary["country_counts"] = dict(sorted(Counter(item["country"] for item in items if item.get("country")).items()))
    summary["period_counts"] = dict(sorted(Counter(item["period"] for item in items if item.get("period")).items()))
    summary["lang_counts"] = dict(sorted(Counter(item["lang"] for item in items if item.get("lang")).items()))

    jsonl_path, report_path, chunk_paths = write_outputs(items, summary, chunk_size=max(1, args.chunk_size))
    print(
        json.dumps(
            {
                "requested": len(page_titles),
                "kept": len(items),
                "jsonl": str(jsonl_path.relative_to(ROOT)).replace("\\", "/"),
                "report": str(report_path.relative_to(ROOT)).replace("\\", "/"),
                "chunks": len(chunk_paths),
            },
            ensure_ascii=False,
        )
    )

    if args.remote_db:
        run_remote_import(report_path, args.remote_db)


if __name__ == "__main__":
    main()
