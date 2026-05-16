from __future__ import annotations

import argparse
import hashlib
import html
import json
import re
import subprocess
import sys
import time
from dataclasses import dataclass
from pathlib import Path
from typing import Any
from urllib.parse import urljoin, urlparse

import requests


ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

BASE_URL = "https://pesni.retroportal.ru/"
OUT_DIR = ROOT / "out" / "retroportal"
FIXTURES_DIR = ROOT / "fixtures" / "retroportal" / "pages"
DEFAULT_DB_NAME = "euro-songbook-db"

HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0 Safari/537.36",
    "Accept-Language": "ru,en;q=0.8",
}

RE_A = re.compile(r"<a\b[^>]*href=(['\"])(.*?)\1[^>]*>(.*?)</a>", re.IGNORECASE | re.DOTALL)
RE_H1 = re.compile(r"<h1\b[^>]*>(.*?)</h1>", re.IGNORECASE | re.DOTALL)
RE_H2 = re.compile(r"<h2\b[^>]*>(.*?)</h2>", re.IGNORECASE | re.DOTALL)
RE_ARTICLE = re.compile(r"<article\b[^>]*>(.*?)</article>", re.IGNORECASE | re.DOTALL)
RE_SCRIPT = re.compile(r"<script\b[^>]*>.*?</script>", re.IGNORECASE | re.DOTALL)
RE_STYLE = re.compile(r"<style\b[^>]*>.*?</style>", re.IGNORECASE | re.DOTALL)
RE_COMMENT = re.compile(r"<!--.*?-->", re.DOTALL)
RE_TAG = re.compile(r"<[^>]+>", re.DOTALL)
RE_BR = re.compile(r"<br\s*/?>", re.IGNORECASE)
RE_AUTHOR_HINT = re.compile(r"^(?:\(|)(?:слова|музыка|обработка|русский текст|народная песня)", re.IGNORECASE)
RE_YEAR = re.compile(r"\b(18\d{2}|19\d{2}|20\d{2})\b")
RE_ANSI = re.compile(r"\x1b\[[0-9;]*[A-Za-z]")

TITLE_SQL_NORM = (
    "replace(replace(replace(replace(replace(lower(trim(coalesce(title,''))), 'ё', 'е'), '«', ''), '»', ''), '\"', ''), '''', '')"
)


@dataclass(frozen=True)
class SectionSpec:
    key: str
    listing_path: str
    label: str
    prefixes: tuple[str, ...]
    country: str
    period: str | None


@dataclass
class RetroEntry:
    section_key: str
    section_label: str
    title: str
    title_norm: str
    subtitle: str | None
    author_line: str | None
    country: str
    period: str | None
    year: str | None
    lyrics: str
    lyrics_norm: str
    source: str
    notes: str
    url: str
    tags: list[str]


@dataclass
class ExistingSong:
    id: str
    title: str
    title_norm: str
    subtitle: str | None
    source: str | None
    notes: str | None
    lyrics: str


SECTIONS: list[SectionSpec] = [
    SectionSpec("estrada", "estrada.html", "Эстрадные песни", ("estrada/",), "ussr", None),
    SectionSpec("deti", "deti.html", "Песни для детей", ("deti/",), "ussr", None),
    SectionSpec("narodnye", "np.shtml", "Народные песни", ("np1/", "np2/", "np3/"), "russian_empire_1900_1917", None),
    SectionSpec("patrioticheskie", "rodina.html", "Патриотические песни", ("rodina/",), "ussr", None),
    SectionSpec("voennye_gody", "vov.html", "Песни военных лет", ("vov/",), "ussr", "ussr_1941_1945"),
    SectionSpec("romansy", "sr.shtml", "Старинные романсы", ("sr1/", "sr2/", "sr3/", "sr4/"), "russian_empire_1900_1917", None),
]


def norm_text(value: str | None) -> str:
    return str(value or "")


def normalize_newlines(text: str) -> str:
    return norm_text(text).replace("\r\n", "\n").replace("\r", "\n")


def normalize_inline(text: str | None) -> str:
    out = html.unescape(norm_text(text))
    out = re.sub(r"\s+", " ", out).strip()
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


def html_to_text(block: str) -> str:
    text = RE_COMMENT.sub("", norm_text(block))
    text = RE_SCRIPT.sub("", text)
    text = RE_STYLE.sub("", text)
    text = re.sub(r"</(p|div|li|tr|h\d|article|section)\s*>", "\n", text, flags=re.IGNORECASE)
    text = RE_BR.sub("\n", text)
    text = RE_TAG.sub(" ", text)
    return normalize_multiline(text)


def strip_outer_quotes(value: str) -> str:
    out = normalize_inline(value)
    while len(out) >= 2 and ((out[0], out[-1]) in {("«", "»"), ('"', '"'), ("'", "'")}):
        out = out[1:-1].strip()
    return out


def normalize_title_key(title: str) -> str:
    out = strip_outer_quotes(title).lower().replace("ё", "е")
    out = re.sub(r"[\"'`«»“”„]", "", out)
    out = re.sub(r"[\s\u00a0]+", " ", out).strip()
    return out


def normalize_lyrics_key(text: str) -> str:
    out = normalize_multiline(text).lower().replace("ё", "е")
    out = re.sub(r"[ \t]+", " ", out)
    out = re.sub(r"\n{3,}", "\n\n", out)
    return out.strip()


def esc_sql(value: Any) -> str:
    return str(value or "").replace("'", "''")


def sql_nullable(value: str | None) -> str:
    text = normalize_multiline(value) if "\n" in norm_text(value) else normalize_inline(value)
    if not text:
        return "NULL"
    return f"'{esc_sql(text)}'"


def stable_hash(value: str, size: int = 12) -> str:
    return hashlib.sha1(value.encode("utf-8")).hexdigest()[:size]


def fixture_name_from_url(url: str) -> str:
    path = urlparse(url).path.strip("/") or "index"
    safe = re.sub(r"[^0-9A-Za-z._-]+", "__", path)
    if len(safe) > 120:
        safe = f"{safe[:100].rstrip('._-')}__{stable_hash(path)}"
    return f"{safe}.html"


def get_session() -> requests.Session:
    session = requests.Session()
    session.headers.update(HEADERS)
    return session


def fetch_text(session: requests.Session, url: str, fixture_path: Path, refresh: bool = False) -> str:
    if fixture_path.exists() and not refresh:
        return fixture_path.read_text(encoding="utf-8", errors="replace")
    response = session.get(url, timeout=30)
    response.raise_for_status()
    text = response.content.decode("utf-8", errors="replace")
    fixture_path.parent.mkdir(parents=True, exist_ok=True)
    fixture_path.write_text(text, encoding="utf-8")
    return text


def collect_section_links(section_html: str, section: SectionSpec) -> list[str]:
    found: list[str] = []
    seen: set[str] = set()
    for _, href, label_html in RE_A.findall(section_html):
        clean_label = normalize_inline(RE_TAG.sub(" ", label_html))
        if not clean_label:
            continue
        full_url = urljoin(BASE_URL, href)
        path = urlparse(full_url).path.lstrip("/")
        if not any(path.startswith(prefix) for prefix in section.prefixes):
            continue
        if not path.lower().endswith((".html", ".shtml")):
            continue
        if full_url in seen:
            continue
        seen.add(full_url)
        found.append(full_url)
    return sorted(found)


def trim_article_tail(text: str) -> str:
    out = text
    for marker in ["Коллекция текстов песен и романсов", "Песни сопровождают человечество"]:
        idx = out.find(marker)
        if idx >= 0:
            out = out[:idx]
    idx = out.find("(function(w,doc)")
    if idx >= 0:
        out = out[:idx]
    return normalize_multiline(out)


def parse_song_page(url: str, html_text: str, section: SectionSpec) -> RetroEntry | None:
    h1_match = RE_H1.search(html_text)
    title = strip_outer_quotes(RE_TAG.sub(" ", h1_match.group(1))) if h1_match else ""
    if not title:
        return None

    h2_match = RE_H2.search(html_text)
    subtitle = normalize_inline(RE_TAG.sub(" ", h2_match.group(1))) if h2_match else ""
    subtitle = subtitle or None

    article_match = RE_ARTICLE.search(html_text)
    if not article_match:
        return None
    article_html = article_match.group(1)
    if h2_match:
        article_html = article_html.replace(h2_match.group(0), "", 1)
    article_text = trim_article_tail(html_to_text(article_html))
    lines = [line for line in article_text.split("\n") if line.strip()]
    if not lines:
        return None

    author_line = None
    while lines and normalize_title_key(lines[0]) == normalize_title_key(title):
        lines.pop(0)
    if subtitle and lines and normalize_inline(lines[0]) == normalize_inline(subtitle):
        lines.pop(0)
    if lines and RE_AUTHOR_HINT.search(lines[0]):
        author_line = normalize_inline(lines.pop(0))
    if lines and lines[0].startswith("(") and ("слова:" in lines[0].lower() or "музыка:" in lines[0].lower() or "народная песня" in lines[0].lower()):
        author_line = normalize_inline(lines.pop(0))

    lyrics = normalize_multiline("\n".join(lines))
    if not lyrics or len(lyrics.split()) < 8:
        return None

    year_match = RE_YEAR.findall(" ".join(filter(None, [author_line, subtitle, lyrics[:300]])))
    year = year_match[0] if year_match else None

    source_parts = [
        "pesni.retroportal.ru",
        section.label,
        url,
    ]
    if author_line:
        source_parts.insert(1, author_line)
    source = " | ".join(part for part in source_parts if part)

    notes_parts = [
        f"import_source: {BASE_URL}",
        f"section: {section.label}",
    ]
    if subtitle:
        notes_parts.append(f"subtitle: {subtitle}")
    notes = " | ".join(notes_parts)

    tags = [
        "pesni.retroportal.ru",
        f"retroportal-section-{section.key}",
        section.label,
    ]
    if subtitle:
        tags.append(f"retroportal-subtitle:{subtitle}")

    return RetroEntry(
        section_key=section.key,
        section_label=section.label,
        title=title,
        title_norm=normalize_title_key(title),
        subtitle=subtitle,
        author_line=author_line,
        country=section.country,
        period=section.period,
        year=year,
        lyrics=lyrics,
        lyrics_norm=normalize_lyrics_key(lyrics),
        source=source,
        notes=notes,
        url=url,
        tags=tags,
    )


def strip_wrangle_noise(text: str) -> str:
    return RE_ANSI.sub("", text or "")


def extract_wrangle_json(text: str) -> Any:
    clean = strip_wrangle_noise(text).replace("\r", "")
    start = clean.find("[")
    end = clean.rfind("]")
    if start < 0 or end < start:
        raise RuntimeError(f"Unable to parse wrangler output: {clean[:1200]}")
    return json.loads(clean[start : end + 1])


def run_wrangle_query(sql: str, db_name: str) -> list[dict[str, Any]]:
    npx_exe = "npx.cmd" if sys.platform.startswith("win") else "npx"
    proc = subprocess.run(
        [npx_exe, "wrangler", "d1", "execute", db_name, "--remote", "--command", sql],
        cwd=ROOT,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        timeout=300,
    )
    if proc.returncode != 0:
        raise RuntimeError(((proc.stdout or "") + "\n" + (proc.stderr or "")).strip()[:4000])
    payload = extract_wrangle_json((proc.stdout or "") + "\n" + (proc.stderr or ""))
    if not payload or not isinstance(payload, list):
        return []
    return list(payload[0].get("results") or [])


def run_remote_sql(sql_text: str, db_name: str) -> tuple[int, str]:
    tmp_path = OUT_DIR / f"tmp_exec_{int(time.time() * 1000)}.sql"
    tmp_path.write_text(sql_text + ("" if sql_text.endswith("\n") else "\n"), encoding="utf-8")
    npx_exe = "npx.cmd" if sys.platform.startswith("win") else "npx"
    try:
        proc = subprocess.run(
            [npx_exe, "wrangler", "d1", "execute", db_name, "--remote", "--file", str(tmp_path)],
            cwd=ROOT,
            capture_output=True,
            text=True,
            encoding="utf-8",
            errors="replace",
            timeout=300,
        )
        return proc.returncode, ((proc.stdout or "") + "\n" + (proc.stderr or "")).strip()
    finally:
        try:
            tmp_path.unlink()
        except OSError:
            pass


def sql_string_list(values: list[str]) -> str:
    return ", ".join(f"'{esc_sql(v)}'" for v in values)


def load_existing_candidates(title_keys: list[str], db_name: str) -> tuple[dict[str, list[ExistingSong]], dict[str, list[dict[str, Any]]], dict[str, set[str]]]:
    existing_by_title: dict[str, list[ExistingSong]] = {}
    versions_by_song: dict[str, list[dict[str, Any]]] = {}
    link_urls_by_song: dict[str, set[str]] = {}
    song_ids: list[str] = []

    batch_size = 80
    for start in range(0, len(title_keys), batch_size):
        chunk = title_keys[start : start + batch_size]
        sql = (
            "SELECT id, title, subtitle, source, notes, lyrics "
            "FROM songs WHERE status='published' AND lower(coalesce(lang,''))='ru' "
            f"AND {TITLE_SQL_NORM} IN ({sql_string_list(chunk)});"
        )
        for row in run_wrangle_query(sql, db_name):
            item = ExistingSong(
                id=str(row.get("id") or "").strip(),
                title=normalize_inline(row.get("title")),
                title_norm=normalize_title_key(row.get("title")),
                subtitle=normalize_inline(row.get("subtitle")) or None,
                source=normalize_inline(row.get("source")) or None,
                notes=normalize_inline(row.get("notes")) or None,
                lyrics=normalize_multiline(row.get("lyrics")),
            )
            if not item.id or not item.title_norm:
                continue
            existing_by_title.setdefault(item.title_norm, []).append(item)
            song_ids.append(item.id)

    unique_song_ids = sorted(set(song_ids))
    for start in range(0, len(unique_song_ids), batch_size):
        chunk = unique_song_ids[start : start + batch_size]
        sql_versions = (
            "SELECT id, song_id, title, lyrics, source, sort_order "
            f"FROM song_versions WHERE song_id IN ({sql_string_list(chunk)}) ORDER BY song_id ASC, sort_order ASC, id ASC;"
        )
        for row in run_wrangle_query(sql_versions, db_name):
            song_id = str(row.get("song_id") or "").strip()
            if not song_id:
                continue
            versions_by_song.setdefault(song_id, []).append(
                {
                    "id": str(row.get("id") or "").strip(),
                    "title": normalize_inline(row.get("title")),
                    "lyrics": normalize_multiline(row.get("lyrics")),
                    "source": normalize_inline(row.get("source")) or None,
                    "sort_order": int(row.get("sort_order") or 0),
                }
            )
        sql_links = (
            "SELECT song_id, url FROM song_links "
            f"WHERE song_id IN ({sql_string_list(chunk)}) AND url IS NOT NULL AND trim(url) <> '';"
        )
        for row in run_wrangle_query(sql_links, db_name):
            song_id = str(row.get("song_id") or "").strip()
            url = str(row.get("url") or "").strip()
            if not song_id or not url:
                continue
            link_urls_by_song.setdefault(song_id, set()).add(url)

    return existing_by_title, versions_by_song, link_urls_by_song


def choose_target_song(
    title_norm: str,
    group_variants: list[RetroEntry],
    candidates: list[ExistingSong],
    versions_by_song: dict[str, list[dict[str, Any]]],
) -> tuple[ExistingSong | None, dict[str, Any]]:
    if not candidates:
        return None, {"reason": "new_song"}

    wanted_lyrics = {item.lyrics_norm for item in group_variants}
    scored: list[tuple[int, int, int, str, ExistingSong]] = []
    for candidate in candidates:
        existing_lyrics = {normalize_lyrics_key(candidate.lyrics)}
        existing_lyrics.update(normalize_lyrics_key(row.get("lyrics")) for row in versions_by_song.get(candidate.id, []))
        lyric_hits = sum(1 for key in wanted_lyrics if key in existing_lyrics)
        retro_bonus = 1 if "retroportal.ru" in (candidate.source or "") or "retroportal.ru" in (candidate.notes or "") else 0
        version_count = len(versions_by_song.get(candidate.id, []))
        scored.append((lyric_hits, retro_bonus, version_count, candidate.id, candidate))

    scored.sort(key=lambda row: (-row[0], -row[1], -row[2], row[3]))
    best = scored[0][-1]
    ambiguous = len(scored) > 1 and scored[0][:3] == scored[1][:3]
    return best, {
        "reason": "matched_existing",
        "ambiguous": ambiguous,
        "candidate_ids": [row[-1].id for row in scored],
        "lyric_hit_score": scored[0][0],
    }


def build_group_operations(
    title_norm: str,
    variants: list[RetroEntry],
    target_song: ExistingSong | None,
    versions_by_song: dict[str, list[dict[str, Any]]],
    link_urls_by_song: dict[str, set[str]],
) -> dict[str, Any]:
    deduped_variants: list[RetroEntry] = []
    seen_lyrics: set[str] = set()
    for item in variants:
        if item.lyrics_norm in seen_lyrics:
            continue
        seen_lyrics.add(item.lyrics_norm)
        deduped_variants.append(item)

    primary = max(deduped_variants, key=lambda item: (len(item.lyrics), item.section_key))
    existing_lyrics: set[str] = set()
    existing_links: set[str] = set()
    next_sort = 1
    target_song_id = target_song.id if target_song else f"rpp_{stable_hash(title_norm, 16)}"

    if target_song:
        existing_lyrics.add(normalize_lyrics_key(target_song.lyrics))
        for row in versions_by_song.get(target_song.id, []):
            existing_lyrics.add(normalize_lyrics_key(row.get("lyrics")))
            next_sort = max(next_sort, int(row.get("sort_order") or 0) + 1)
        existing_links = set(link_urls_by_song.get(target_song.id, set()))
    else:
        existing_lyrics.add(primary.lyrics_norm)

    version_rows: list[dict[str, Any]] = []
    duplicate_skipped = 0
    for item in deduped_variants:
        if item.lyrics_norm in existing_lyrics:
            if item.lyrics_norm != primary.lyrics_norm or target_song:
                duplicate_skipped += 1
            continue
        version_rows.append(
            {
                "id": f"rpv_{target_song_id}_{stable_hash(item.url + '|' + item.lyrics_norm, 16)}",
                "song_id": target_song_id,
                "title": f"Retroportal — {item.section_label}",
                "lang": "ru",
                "lyrics": item.lyrics,
                "lyrics_meta_json": "{}",
                "source": item.source,
                "sort_order": next_sort,
                "url": item.url,
            }
        )
        existing_lyrics.add(item.lyrics_norm)
        next_sort += 1

    link_rows: list[dict[str, Any]] = []
    next_link_sort = len(existing_links) + 1
    for item in deduped_variants:
        if item.url in existing_links:
            continue
        link_rows.append(
            {
                "id": f"rpl_{target_song_id}_{stable_hash(item.url, 16)}",
                "song_id": target_song_id,
                "title": f"Retroportal — {item.section_label}",
                "url": item.url,
                "kind": "reference",
                "sort_order": next_link_sort,
            }
        )
        existing_links.add(item.url)
        next_link_sort += 1

    song_row = None
    if not target_song:
        tags = sorted(set(primary.tags + [f"category-{primary.section_key}"]))
        song_row = {
            "id": target_song_id,
            "title": primary.title,
            "subtitle": primary.subtitle,
            "lang": "ru",
            "country": primary.country,
            "period": primary.period,
            "year": primary.year,
            "source": primary.source,
            "notes": f"{primary.notes} | merged_versions: {1 + len(version_rows)}",
            "lyrics": primary.lyrics,
            "tags_json": json.dumps(tags, ensure_ascii=False),
        }

    return {
        "title_norm": title_norm,
        "target_song_id": target_song_id,
        "target_existing_id": target_song.id if target_song else None,
        "primary": primary,
        "song_row": song_row,
        "version_rows": version_rows,
        "link_rows": link_rows,
        "deduped_variants": deduped_variants,
        "duplicate_variants_skipped": duplicate_skipped,
    }


def build_sql_for_operation(operation: dict[str, Any]) -> list[str]:
    lines: list[str] = []
    song_row = operation.get("song_row")
    if song_row:
        lines.append(
            "INSERT OR REPLACE INTO songs ("
            "id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at"
            ") VALUES ("
            f"'{esc_sql(song_row['id'])}',"
            f"'{esc_sql(song_row['title'])}',"
            f"{sql_nullable(song_row.get('subtitle'))},"
            f"'{esc_sql(song_row['lang'])}',"
            f"'{esc_sql(song_row['country'])}',"
            f"{sql_nullable(song_row.get('period'))},"
            f"{sql_nullable(song_row.get('year'))},"
            f"{sql_nullable(song_row.get('source'))},"
            f"{sql_nullable(song_row.get('notes'))},"
            f"'{esc_sql(song_row['lyrics'])}',"
            f"'{esc_sql(song_row['tags_json'])}',"
            "1,'published',"
            "COALESCE((SELECT created_at FROM songs WHERE id="
            f"'{esc_sql(song_row['id'])}'"
            "), datetime('now')),"
            "datetime('now'));"
        )
        lines.append(
            f"DELETE FROM songs_fts WHERE song_id='{esc_sql(song_row['id'])}';"
        )
        lines.append(
            f"INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('{esc_sql(song_row['id'])}','{esc_sql(song_row['title'])}','{esc_sql(song_row['lyrics'])}');"
        )

    for version in operation.get("version_rows", []):
        lines.append(
            "INSERT OR REPLACE INTO song_versions (id,song_id,title,lang,lyrics,lyrics_meta_json,source,sort_order) VALUES ("
            f"'{esc_sql(version['id'])}',"
            f"'{esc_sql(version['song_id'])}',"
            f"{sql_nullable(version.get('title'))},"
            f"{sql_nullable(version.get('lang'))},"
            f"'{esc_sql(version['lyrics'])}',"
            f"'{esc_sql(version.get('lyrics_meta_json') or '{}')}',"
            f"{sql_nullable(version.get('source'))},"
            f"{int(version['sort_order'])}"
            ");"
        )

    for link in operation.get("link_rows", []):
        lines.append(
            "INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ("
            f"'{esc_sql(link['id'])}',"
            f"'{esc_sql(link['song_id'])}',"
            f"{sql_nullable(link.get('title'))},"
            f"'{esc_sql(link['url'])}',"
            f"{sql_nullable(link.get('kind'))},"
            "NULL,"
            f"{int(link['sort_order'])}"
            ");"
        )
    return lines


def execute_sql_batches(all_lines: list[str], db_name: str, batch_size: int) -> list[dict[str, Any]]:
    batches: list[dict[str, Any]] = []
    for start in range(0, len(all_lines), batch_size):
        chunk = all_lines[start : start + batch_size]
        sql = "\n".join(chunk)
        rc, out = run_remote_sql(sql, db_name)
        batch_report = {
            "batch": start // batch_size + 1,
            "statements": len(chunk),
            "returncode": rc,
        }
        if rc != 0:
            batch_report["error"] = strip_wrangle_noise(out)[:2000]
            batches.append(batch_report)
            raise RuntimeError(f"remote batch failed: {batch_report['error']}")
        batches.append(batch_report)
    return batches


def main() -> None:
    if hasattr(sys.stdout, "reconfigure"):
        sys.stdout.reconfigure(encoding="utf-8", errors="replace")

    parser = argparse.ArgumentParser(description="Import selected retroportal song sections with version merging.")
    parser.add_argument("--refresh", action="store_true", help="Re-download cached HTML fixtures")
    parser.add_argument("--execute-remote", action="store_true", help="Apply generated SQL to remote D1")
    parser.add_argument("--db-name", default=DEFAULT_DB_NAME, help="Wrangler D1 database name")
    parser.add_argument("--remote-batch-size", type=int, default=180, help="SQL statements per remote batch")
    args = parser.parse_args()

    OUT_DIR.mkdir(parents=True, exist_ok=True)
    FIXTURES_DIR.mkdir(parents=True, exist_ok=True)

    session = get_session()
    section_url_counts: dict[str, int] = {}
    page_urls: list[tuple[SectionSpec, str]] = []
    for section in SECTIONS:
        listing_url = urljoin(BASE_URL, section.listing_path)
        listing_html = fetch_text(session, listing_url, FIXTURES_DIR / fixture_name_from_url(listing_url), refresh=args.refresh)
        links = collect_section_links(listing_html, section)
        section_url_counts[section.key] = len(links)
        page_urls.extend((section, url) for url in links)

    entries: list[RetroEntry] = []
    parse_errors: list[dict[str, str]] = []
    for idx, (section, url) in enumerate(page_urls, start=1):
        try:
            html_text = fetch_text(session, url, FIXTURES_DIR / fixture_name_from_url(url), refresh=args.refresh)
            entry = parse_song_page(url, html_text, section)
            if entry:
                entries.append(entry)
            else:
                parse_errors.append({"url": url, "error": "parse returned empty"})
        except Exception as exc:
            parse_errors.append({"url": url, "error": str(exc)})
        if idx % 100 == 0:
            print(json.dumps({"processed_pages": idx, "parsed_entries": len(entries), "errors": len(parse_errors)}, ensure_ascii=False))

    groups: dict[str, list[RetroEntry]] = {}
    for entry in entries:
        groups.setdefault(entry.title_norm, []).append(entry)

    existing_by_title, versions_by_song, link_urls_by_song = load_existing_candidates(sorted(groups.keys()), args.db_name)

    operations: list[dict[str, Any]] = []
    ambiguous_matches: list[dict[str, Any]] = []
    merge_existing_count = 0
    new_song_count = 0
    duplicate_variants_skipped = 0
    version_count = 0
    link_count = 0

    for title_norm, variants in sorted(groups.items()):
        candidates = existing_by_title.get(title_norm, [])
        target_song, match_info = choose_target_song(title_norm, variants, candidates, versions_by_song)
        operation = build_group_operations(title_norm, variants, target_song, versions_by_song, link_urls_by_song)
        operation["match_info"] = match_info
        operations.append(operation)

        duplicate_variants_skipped += int(operation["duplicate_variants_skipped"])
        version_count += len(operation["version_rows"])
        link_count += len(operation["link_rows"])
        if operation["song_row"]:
            new_song_count += 1
        else:
            merge_existing_count += 1
        if match_info.get("ambiguous"):
            ambiguous_matches.append(
                {
                    "title": variants[0].title,
                    "target_song_id": operation["target_song_id"],
                    "candidate_ids": match_info.get("candidate_ids") or [],
                }
            )

    all_sql_lines: list[str] = []
    for operation in operations:
        all_sql_lines.extend(build_sql_for_operation(operation))

    sql_path = OUT_DIR / "import_retroportal.sql"
    sql_path.write_text("\n".join(all_sql_lines) + ("\n" if all_sql_lines else ""), encoding="utf-8")

    actions_path = OUT_DIR / "actions.jsonl"
    with actions_path.open("w", encoding="utf-8") as fh:
        for operation in operations:
            primary: RetroEntry = operation["primary"]
            fh.write(
                json.dumps(
                    {
                        "title": primary.title,
                        "target_song_id": operation["target_song_id"],
                        "target_existing_id": operation.get("target_existing_id"),
                        "new_song": bool(operation.get("song_row")),
                        "versions_added": len(operation.get("version_rows", [])),
                        "links_added": len(operation.get("link_rows", [])),
                        "duplicate_variants_skipped": operation.get("duplicate_variants_skipped", 0),
                        "source_urls": [item.url for item in operation.get("deduped_variants", [])],
                        "match_info": operation.get("match_info", {}),
                    },
                    ensure_ascii=False,
                )
                + "\n"
            )

    report: dict[str, Any] = {
        "site": BASE_URL,
        "sections": {section.key: section.label for section in SECTIONS},
        "section_url_counts": section_url_counts,
        "fetched_pages": len(page_urls),
        "parsed_entries": len(entries),
        "parse_errors": parse_errors[:100],
        "title_groups": len(groups),
        "new_songs": new_song_count,
        "merged_into_existing": merge_existing_count,
        "versions_added": version_count,
        "links_added": link_count,
        "duplicate_variants_skipped": duplicate_variants_skipped,
        "ambiguous_matches": ambiguous_matches[:100],
        "sql_path": str(sql_path),
        "actions_path": str(actions_path),
        "remote_batches": [],
    }

    if args.execute_remote and all_sql_lines:
        report["remote_batches"] = execute_sql_batches(all_sql_lines, args.db_name, args.remote_batch_size)

    report_path = OUT_DIR / "report.json"
    report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False))


if __name__ == "__main__":
    main()
