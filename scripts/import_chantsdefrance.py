from __future__ import annotations

import argparse
import html
import importlib.util
import json
import re
import subprocess
import sys
import time
from collections import Counter
from dataclasses import dataclass
from pathlib import Path
from typing import Any

import requests


ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

API_URL = "https://api.chantsdefrance.fr/graphql"
SITE_ROOT = "https://chantsdefrance.fr"
SITE_TAG = "chantsdefrance.fr"
ID_PREFIX = "cdf"
PAGE_SIZE = 100

HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0 Safari/537.36",
    "Accept-Language": "fr,en;q=0.9,ru;q=0.8",
}

QUERY = """
query GetAllSongs($first:Int,$offset:Int,$orderBy:[SongsOrderBy!]) {
  songs(first:$first, offset:$offset, orderBy:$orderBy) {
    nodes {
      id
      slug
      title
      content
      about
      aboutEdit
      datePublish
      partitionUrl
      statusSong
      filters
      songwriter { slug firstName lastName }
      songStreams { nodes { platform url } }
      songbooks {
        nodes {
          bookId
          book { slug title isOfficial isFrontPage isOnSearchPage }
        }
      }
    }
    totalCount
  }
}
""".strip()

RE_TAG = re.compile(r"<[^>]+>", re.DOTALL)
RE_BR = re.compile(r"<br\s*/?>", re.IGNORECASE)
RE_YEAR = re.compile(r"\b(1[4-9]\d{2}|20\d{2})\b")
RE_LIFESPAN = re.compile(r"\b(1[4-9]\d{2}|20\d{2})\s*[-–—]\s*(1[4-9]\d{2}|20\d{2})\b")
RE_SERVICE_WS = re.compile(r"[ \t]+")
RE_BLANKS = re.compile(r"\n{3,}")
RE_CLUB = re.compile(
    r"\b(psg|ol|om|hac|osc|rcl|asse|football|foot|rugby|supporter|supporters|ultras|tribune|derby|virage)\b",
    re.IGNORECASE,
)
RE_CREATION_HINT = re.compile(
    r"\b(écrit|ecrit|composé|compose|créé|cree|paroles|musique|air de|sur l'air|chant|hymne|marche|traditionnel|date\s*:|daté|date de|publié pour la première fois|paru en)\b",
    re.IGNORECASE,
)
RE_BIO_HINT = re.compile(r"\b(né le|née le|né en|née en|décédé|decede|naissance|décès|deces|mort le|mort à|meurt)\b", re.IGNORECASE)
RE_HISTORY_HINT = re.compile(r"\b(révolution|revolution|empire|royal|armée|armee|régiment|regiment|soldat|bataille|guerre)\b", re.IGNORECASE)
RE_YEAR_NOISE = re.compile(
    r"\b(naissance|décès|deces|mort|meurt|né le|née le|mort le|anniversaire|album|studio|carrière|carriere|groupe|créé en|cree en|sort|sorti|sortie|édité|edite|introduction au chant|chaîne youtube|chaine youtube|youtube|premier album|depuis les années|repris comme hymne|on le chante souvent|utilisé|utilise|matchs|match|jeux olympiques)\b",
    re.IGNORECASE,
)
RE_MODERN_CONFLICT = re.compile(r"\b(afghanistan)\b", re.IGNORECASE)
RE_EVENT_BOOK = re.compile(r"\d{4}|\b(bbq|guinguette|apero|cousinade|cohesion|soir[ée]e|oac|icfa|phoenix|playlist|banquet)\b", re.IGNORECASE)

STRONG_MODERN_BOOKS = {"foot", "xxi-eme-siecle"}
WEAK_MODERN_BOOKS = {"culture-stades", "rugby"}
STRONG_HISTORICAL_BOOKS = {
    "chants-historiques",
    "traditions-militaires",
    "chants-patriotiques-1870-1918",
    "chants-historiques-et-de-soldats",
    "revolution-francaise",
    "xviii-eme-siecle",
    "xix-eme-siecle",
}
TRADITIONAL_BOOK_HINTS = {
    "alsace",
    "basque",
    "breton",
    "corse",
    "germanophone",
    "chants-marins",
    "metiers",
    "montagne",
    "noel",
    "veillée",
    "veillee",
    "rurale",
    "enfance",
    "chretiente",
}
BOOK_YEAR_HINTS = {
    "xviii-eme-siecle": 1750,
    "xix-eme-siecle": 1850,
    "xx-eme-siecle": 1900,
    "xxi-eme-siecle": 2005,
    "revolution-francaise": 1792,
    "chants-patriotiques-1870-1918": 1870,
}


@dataclass
class LangRow:
    id: str
    title: str
    subtitle: str
    lang: str
    lyrics: str
    source: str
    notes: str


def load_module(path: Path, name: str):
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Unable to load module: {path}")
    mod = importlib.util.module_from_spec(spec)
    sys.modules[name] = mod
    spec.loader.exec_module(mod)  # type: ignore[attr-defined]
    return mod


LANG_MOD = load_module(ROOT / "scripts" / "reclassify_song_languages.py", "reclassify_song_languages_chantsdefrance")
TIMELINE_MOD = load_module(ROOT / "scripts" / "import_a_pesni_sections.py", "import_a_pesni_sections_chantsdefrance")


def norm_text(value: Any) -> str:
    return str(value or "")


def normalize_newlines(text: str) -> str:
    return norm_text(text).replace("\r\n", "\n").replace("\r", "\n")


def clean_symbols(text: str) -> str:
    out = norm_text(text)
    for old, new in {
        "\u00a0": " ",
        "\u202f": " ",
        "\u2009": " ",
        "\u2011": "-",
        "\u2012": "-",
        "\u2013": "-",
        "\u2014": "-",
        "\u2212": "-",
        "•": "",
    }.items():
        out = out.replace(old, new)
    return out


def normalize_inline(text: str | None) -> str:
    out = RE_SERVICE_WS.sub(" ", html.unescape(clean_symbols(norm_text(text)))).strip()
    out = re.sub(r"\s+([,.;:!?])", r"\1", out)
    out = re.sub(r"([(\[])\s+", r"\1", out)
    out = re.sub(r"\s+([)\]])", r"\1", out)
    return out


def normalize_multiline(text: str | None) -> str:
    lines = [re.sub(r"[ \t]+$", "", line) for line in normalize_newlines(clean_symbols(norm_text(text))).split("\n")]
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
    text = clean_symbols(norm_text(block))
    if preserve_breaks:
        text = RE_BR.sub("\n", text)
        text = re.sub(r"</p\s*>", "\n\n", text, flags=re.IGNORECASE)
        text = re.sub(r"<p[^>]*>", "", text, flags=re.IGNORECASE)
        text = re.sub(r"</?(div|section|article|span|strong|b|em|i)[^>]*>", "", text, flags=re.IGNORECASE)
        text = re.sub(r"</li\s*>", "\n", text, flags=re.IGNORECASE)
        text = re.sub(r"<li[^>]*>", "• ", text, flags=re.IGNORECASE)
    text = RE_TAG.sub(" ", text)
    text = html.unescape(text)
    return normalize_multiline(text) if preserve_breaks else normalize_inline(text)


def fetch_json(fixture_path: Path, variables: dict[str, Any], *, refresh: bool) -> dict[str, Any]:
    if fixture_path.exists() and not refresh:
        return json.loads(fixture_path.read_text(encoding="utf-8"))

    last_error: Exception | None = None
    for attempt in range(4):
        try:
            response = requests.post(
                API_URL,
                json={"query": QUERY, "variables": variables},
                headers=HEADERS,
                timeout=60,
            )
            response.raise_for_status()
            payload = json.loads(response.content.decode("utf-8"))
            if payload.get("errors"):
                raise RuntimeError(json.dumps(payload["errors"], ensure_ascii=False))
            fixture_path.parent.mkdir(parents=True, exist_ok=True)
            fixture_path.write_text(json.dumps(payload, ensure_ascii=False, indent=2), encoding="utf-8")
            return payload
        except Exception as exc:
            last_error = exc
            if attempt < 3:
                time.sleep(1.0 * (attempt + 1))
    raise RuntimeError(f"GraphQL fetch failed for {fixture_path.name}: {last_error}")


def make_song_id(slug: str, source_id: str) -> str:
    safe = re.sub(r"[^0-9A-Za-z]+", "-", norm_text(slug).lower()).strip("-")
    if not safe:
        safe = re.sub(r"[^0-9A-Za-z]+", "-", norm_text(source_id).lower()).strip("-")[:32]
    return f"{ID_PREFIX}_{safe}"


def extract_lyrics(content: Any) -> str:
    blocks = content.get("blocks") if isinstance(content, dict) else None
    if not isinstance(blocks, list):
        return ""
    parts: list[str] = []
    for block in blocks:
        text = html_to_text(norm_text((block or {}).get("data", {}).get("text")), preserve_breaks=True)
        text = text.replace("• ", "")
        if text:
            parts.append(text)
    return RE_BLANKS.sub("\n\n", "\n\n".join(parts)).strip()


def extract_notes(song: dict[str, Any], about_text: str, book_titles: list[str]) -> str:
    parts: list[str] = []
    if about_text:
        parts.append(about_text)
    about_edit = html_to_text(song.get("aboutEdit"), preserve_breaks=True)
    if about_edit and about_edit != about_text:
        parts.append(about_edit)
    songwriter = song.get("songwriter") or {}
    author_name = " ".join([normalize_inline(songwriter.get("firstName")), normalize_inline(songwriter.get("lastName"))]).strip()
    if author_name:
        parts.append(f"Auteur indiqué: {author_name}")
    if book_titles:
        parts.append("Carnets / catégories: " + ", ".join(book_titles))
    return normalize_multiline("\n\n".join(parts))


def extract_year(song: dict[str, Any], about_text: str, book_slugs: list[str]) -> tuple[int | None, int]:
    candidates: list[tuple[int, int]] = []
    has_strong_historical = any(slug in STRONG_HISTORICAL_BOOKS for slug in book_slugs)
    scopes = [norm_text(song.get("title")), about_text]
    for scope in scopes:
        for line in normalize_newlines(scope).split("\n"):
            years = [int(m.group(1)) for m in RE_YEAR.finditer(line) if 1400 <= int(m.group(1)) <= 2026]
            if not years:
                continue
            score = 0
            if RE_CREATION_HINT.search(line):
                score += 5
            if RE_HISTORY_HINT.search(line):
                score += 2
            if RE_BIO_HINT.search(line) or RE_LIFESPAN.search(line) or RE_YEAR_NOISE.search(line):
                score -= 8
            if len(years) > 1 and not RE_CREATION_HINT.search(line):
                score -= 3
            for year in years:
                candidates.append((score, year))
    if candidates:
        candidates.sort(key=lambda item: (-item[0], item[1]))
        best_score, best_year = candidates[0]
        if best_score >= 4:
            return best_year, best_score
        if has_strong_historical:
            fallback_years = sorted({year for score, year in candidates if score >= 0 and year <= 1959})
            if fallback_years:
                return fallback_years[0], 2
    for slug in book_slugs:
        if slug in BOOK_YEAR_HINTS:
            return BOOK_YEAR_HINTS[slug], 3
    return None, 0


def is_modern(song: dict[str, Any], about_text: str, book_slugs: list[str], year: int | None, year_score: int) -> tuple[bool, list[str]]:
    title = norm_text(song.get("title")).lower()
    about_lower = about_text.lower()
    modern_score = 0
    historical_score = 0
    reasons: list[str] = []
    force_modern = False

    for slug in book_slugs:
        if slug in STRONG_MODERN_BOOKS:
            modern_score += 6
            reasons.append(f"modern_book:{slug}")
            if slug == "xxi-eme-siecle":
                force_modern = True
        elif slug in WEAK_MODERN_BOOKS:
            modern_score += 1
        elif slug in STRONG_HISTORICAL_BOOKS:
            historical_score += 5
            reasons.append(f"historical_book:{slug}")
        elif slug.startswith("supporters-"):
            modern_score += 7
            reasons.append(f"supporters_book:{slug}")
            force_modern = True
        elif any(hint in slug for hint in TRADITIONAL_BOOK_HINTS):
            historical_score += 2

    event_book_count = sum(1 for slug in book_slugs if RE_EVENT_BOOK.search(slug))
    if event_book_count and not historical_score:
        modern_score += min(3, event_book_count)

    if RE_CLUB.search(title) or RE_CLUB.search(about_lower):
        modern_score += 5
        reasons.append("club_or_supporter_text")
    if any(title.startswith(prefix) for prefix in ("allez ", "ici c'est ", "tous ensemble")):
        modern_score += 4
        reasons.append("stadium_title_pattern")
    if "supporter" in about_lower or "ultras" in about_lower:
        modern_score += 5
    if RE_MODERN_CONFLICT.search(title) or RE_MODERN_CONFLICT.search(about_lower):
        modern_score += 8
        reasons.append("modern_conflict")
    if any(token in about_lower for token in ("traditionnel", "tradition orale", "chant populaire")):
        historical_score += 2

    if year is not None and year_score >= 4:
        if year >= 1960:
            modern_score += 3
            reasons.append(f"year:{year}")
        elif year <= 1959:
            historical_score += 3

    modern = force_modern or (modern_score >= 6 and modern_score > historical_score + 1)
    if historical_score >= 5 and "club_or_supporter_text" in reasons and modern_score <= 7 and not any(r.startswith("modern_book:") or r.startswith("supporters_book:") for r in reasons):
        modern = False
    return modern, reasons


def classify_lang(title: str, lyrics: str, source: str, notes: str) -> str:
    row = LangRow(
        id="tmp",
        title=title,
        subtitle="",
        lang="fr",
        lyrics=lyrics,
        source=source,
        notes=notes,
    )
    lang, _score, _why = LANG_MOD.classify_song(row)
    return lang if lang in LANG_MOD.LANG_VALUES else "fr"


def map_country(year: int | None, book_slugs: list[str], lang: str) -> str:
    if lang and lang != "fr":
        return TIMELINE_MOD.timeline_country_for_lang(lang, year)
    if year is None and any(slug in {"xviii-eme-siecle", "xix-eme-siecle", "revolution-francaise"} for slug in book_slugs):
        return "france_before_1900"
    if year is None:
        return "france_fifth_republic_1958"
    if year < 1900:
        return "france_before_1900"
    if year <= 1939:
        return "france_third_republic_1900_1940"
    if year <= 1944:
        return "france_vichy_1940_1944"
    if year <= 1958:
        return "france_fourth_republic_1946_1958"
    return "france_fifth_republic_1958"


def build_links(slug: str, partition_url: str | None, streams: list[dict[str, Any]]) -> list[dict[str, Any]]:
    links = [{
        "title": "Source page",
        "url": f"{SITE_ROOT}/repertoire/chants/{slug}",
        "kind": "source",
    }]
    if partition_url:
        links.append({"title": "Partition", "url": partition_url, "kind": "partition"})
    for stream in streams:
        url = normalize_inline(stream.get("url"))
        if not url:
            continue
        platform = normalize_inline(stream.get("platform")) or "stream"
        links.append({"title": platform.title(), "url": url, "kind": platform.lower()})
    return links


def build_song(song: dict[str, Any]) -> tuple[dict[str, Any] | None, str]:
    if norm_text(song.get("statusSong")).upper() != "PUBLISHED":
        return None, "unpublished"
    slug = normalize_inline(song.get("slug"))
    title = normalize_inline(song.get("title"))
    lyrics = extract_lyrics(song.get("content") or {})
    if not slug or not title or len(lyrics) < 20:
        return None, "empty_lyrics"

    books = [node.get("book") or {} for node in ((song.get("songbooks") or {}).get("nodes") or [])]
    book_slugs = [normalize_inline(book.get("slug")).lower() for book in books if normalize_inline(book.get("slug"))]
    book_titles = [normalize_inline(book.get("title")) for book in books if normalize_inline(book.get("title"))]
    about_text = html_to_text(song.get("about"), preserve_breaks=True)
    year, year_score = extract_year(song, about_text, book_slugs)
    modern, reasons = is_modern(song, about_text, book_slugs, year, year_score)
    if modern:
        return None, ",".join(reasons[:4]) or "modern"

    source_page = f"{SITE_ROOT}/repertoire/chants/{slug}"
    notes = extract_notes(song, about_text, book_titles)
    lang = classify_lang(title, lyrics, source_page, notes)
    tags = [
        SITE_TAG,
        "source:chantsdefrance",
        f"classification:non_modern",
    ]
    tags.extend([f"book:{slug}" for slug in book_slugs])
    filters = song.get("filters")
    if isinstance(filters, list):
        tags.extend([f"filter:{normalize_inline(item).lower()}" for item in filters if normalize_inline(item)])

    out = {
        "id": make_song_id(slug, song.get("id") or slug),
        "title": title,
        "subtitle": None,
        "lang": lang,
        "country": map_country(year, book_slugs, lang),
        "period": None,
        "region": None,
        "event": None,
        "theme": None,
        "verified": False,
        "year": str(year) if year is not None else None,
        "source": source_page,
        "notes": notes or None,
        "verified_translation": None,
        "lyrics": lyrics,
        "lyrics_meta_json": {},
        "tags": sorted(set(tags)),
        "links": build_links(slug, song.get("partitionUrl"), ((song.get("songStreams") or {}).get("nodes") or [])),
        "versions": [],
        "status": "published",
    }
    return out, "kept"


def write_outputs(items: list[dict[str, Any]], summary: dict[str, Any], *, chunk_size: int) -> tuple[Path, Path, list[str]]:
    out_dir = ROOT / "out" / "chantsdefrance"
    chunk_dir = out_dir / "chunks"
    out_dir.mkdir(parents=True, exist_ok=True)
    chunk_dir.mkdir(parents=True, exist_ok=True)

    jsonl_path = out_dir / "songs.jsonl"
    report_path = out_dir / "import_summary.json"
    jsonl_path.write_text("", encoding="utf-8")
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


def fetch_all_songs(*, refresh: bool, limit_songs: int | None) -> tuple[list[dict[str, Any]], int]:
    fixtures_root = ROOT / "fixtures" / "chantsdefrance" / "graphql"
    all_nodes: list[dict[str, Any]] = []
    total_count = 0
    offset = 0
    while True:
        variables = {"first": PAGE_SIZE, "offset": offset, "orderBy": ["TITLE_ASC"]}
        payload = fetch_json(fixtures_root / f"songs_{offset:04d}.json", variables, refresh=refresh)
        songs = ((payload.get("data") or {}).get("songs") or {})
        nodes = list(songs.get("nodes") or [])
        total_count = int(songs.get("totalCount") or total_count or 0)
        if not nodes:
            break
        all_nodes.extend(nodes)
        if limit_songs is not None and len(all_nodes) >= limit_songs:
            all_nodes = all_nodes[:limit_songs]
            break
        offset += len(nodes)
        if total_count and offset >= total_count:
            break
    return all_nodes, total_count


def run_remote_import(report_path: Path, db_name: str) -> None:
    cmd = ["node", str(ROOT / "scripts" / "import_json_chunks_remote.mjs"), db_name, str(report_path), ID_PREFIX]
    subprocess.run(cmd, cwd=ROOT, check=True)


def main() -> None:
    parser = argparse.ArgumentParser(description="Import non-modern songs from chantsdefrance.fr")
    parser.add_argument("--refresh", action="store_true", help="Re-download GraphQL pages even if cached")
    parser.add_argument("--limit-songs", type=int, default=None, help="Only process first N songs in title order")
    parser.add_argument("--chunk-size", type=int, default=80, help="Songs per remote upload chunk")
    parser.add_argument("--execute-remote", action="store_true", help="Upload prepared chunks into remote D1")
    parser.add_argument("--db-name", default="euro-songbook-db", help="Wrangler D1 database name")
    args = parser.parse_args()

    nodes, total_count = fetch_all_songs(refresh=args.refresh, limit_songs=args.limit_songs)
    items: list[dict[str, Any]] = []
    skip_reasons: Counter[str] = Counter()
    country_counts: Counter[str] = Counter()
    modern_examples: list[str] = []

    for song in nodes:
        item, reason = build_song(song)
        if item is None:
            skip_reasons[reason] += 1
            if len(modern_examples) < 20 and reason not in {"empty_lyrics", "unpublished"}:
                modern_examples.append(f"{normalize_inline(song.get('title'))} [{reason}]")
            continue
        items.append(item)
        country_counts[item["country"]] += 1

    summary = {
        "source": SITE_TAG,
        "total_count_site": total_count,
        "fetched_count": len(nodes),
        "kept_count": len(items),
        "skipped_count": sum(skip_reasons.values()),
        "skip_reasons": dict(skip_reasons),
        "country_counts": dict(country_counts),
        "sample_kept": [item["title"] for item in items[:20]],
        "sample_skipped": modern_examples,
    }
    jsonl_path, report_path, chunk_paths = write_outputs(items, summary, chunk_size=max(1, args.chunk_size))

    print(json.dumps({
        "jsonl_path": str(jsonl_path),
        "report_path": str(report_path),
        "chunk_count": len(chunk_paths),
        "kept_count": len(items),
        "skipped_count": sum(skip_reasons.values()),
    }, ensure_ascii=False, indent=2))

    if args.execute_remote:
        run_remote_import(report_path, args.db_name)


if __name__ == "__main__":
    main()
