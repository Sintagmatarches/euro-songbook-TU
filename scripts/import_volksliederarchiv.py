from __future__ import annotations

import argparse
import concurrent.futures
import hashlib
import html
import importlib.util
import json
import random
import re
import subprocess
import sys
import threading
import time
import xml.etree.ElementTree as ET
from dataclasses import dataclass
from pathlib import Path
from typing import Any
from urllib.parse import urljoin, urlparse

import requests


ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

SITE_ROOT = "https://www.volksliederarchiv.de/"
SITEMAP_INDEX_URL = urljoin(SITE_ROOT, "sitemap_index.xml")
ID_PREFIX = "vla"
SITE_TAG = "volksliederarchiv.de"
YEAR_MIN = 1500
YEAR_MAX = 2026

HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0 Safari/537.36",
    "Accept-Language": "de,en;q=0.9,ru;q=0.8",
}

RE_TITLE = re.compile(r"<h1[^>]*>(.*?)</h1>", re.IGNORECASE | re.DOTALL)
RE_ARTICLE_CLASS = re.compile(r"<article[^>]*class=(['\"])(.*?)\1", re.IGNORECASE | re.DOTALL)
RE_TAG = re.compile(r"<[^>]+>", re.DOTALL)
RE_BR = re.compile(r"<br\s*/?>", re.IGNORECASE)
RE_COMMENT = re.compile(r"<!--.*?-->", re.DOTALL)
RE_SCRIPT = re.compile(r"<script\b[^>]*>.*?</script>", re.IGNORECASE | re.DOTALL)
RE_STYLE = re.compile(r"<style\b[^>]*>.*?</style>", re.IGNORECASE | re.DOTALL)
RE_P_BLOCK = re.compile(r"<p\b[^>]*>(.*?)</p>", re.IGNORECASE | re.DOTALL)
RE_H2_BLOCK = re.compile(r"<h2\b[^>]*>(.*?)</h2>", re.IGNORECASE | re.DOTALL)
RE_AUDIO_SOURCE = re.compile(r"<source\b[^>]*src=(['\"])(.*?)\1", re.IGNORECASE | re.DOTALL)
RE_A_HREF = re.compile(r"<a\b[^>]*href=(['\"])(.*?)\1[^>]*>(.*?)</a>", re.IGNORECASE | re.DOTALL)
RE_AUTHOR_LINE = re.compile(r"^(Text und Musik|Text|Musik)\s*:", re.IGNORECASE)
RE_YEAR = re.compile(r"\b(1[5-9]\d{2}|20\d{2})\b")
RE_CENTURY = re.compile(r"\b(1[5-9]|20)\.\s*Jahrhundert\b", re.IGNORECASE)
RE_NON_SONG_URL = re.compile(r"/(liedergeschichten|lexikon|tag|category|orte|musik|liederzeit|stichwort)/", re.IGNORECASE)
RE_SOURCE_HINT = re.compile(
    r"\b(verlag|buch|büchern|buches|heft|hefte|liedbuch|liederbuch|sammlung|sammler|herausgegeben|"
    r"edition|ausgabe|vgl\.?|quelle|nach|zitiert|aufnahme|record|cd\b|lp\b|schellack|wikipedia|"
    r"deepl|spotify|youtube|archiv|druck|erstabdruck|abdruck|in\s+[A-ZÄÖÜ])\b",
    re.IGNORECASE,
)
RE_NOTE_HINT = re.compile(
    r"\b(laut|vermutlich|siehe|komponiert|prozess|klagte|geschichte|anmerkung|kommentar|übersetzung|"
    r"strophe|refrain|fassung|gedruckt|veröffentlicht|gespielt|erfolg|motiv|hintergrund)\b",
    re.IGNORECASE,
)
RE_VARIANT_LABEL = re.compile(r"^[A-ZÄÖÜ][^:\n]{0,100}:\s*$")
RE_LYRICS_INLINE_LABEL = re.compile(r"^(Refrain|Chor|Kehrreim|Strophe\s*\d+)\s*[:.]?\s*$", re.IGNORECASE)

_tls = threading.local()


@dataclass
class SongVersionPayload:
    title: str
    lang: str
    lyrics: str
    source: str | None
    sort_order: int


@dataclass
class SongPayload:
    id: str
    url: str
    title: str
    subtitle: str | None
    lang: str
    country: str
    period: str | None
    year: str | None
    source: str | None
    notes: str | None
    lyrics: str
    tags_json: str
    versions: list[SongVersionPayload]
    links: list[dict[str, Any]]
    qa: dict[str, Any]


def get_session() -> requests.Session:
    session = getattr(_tls, "session", None)
    if session is None:
        session = requests.Session()
        session.headers.update(HEADERS)
        _tls.session = session
    return session


def load_module(path: Path, name: str):
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Unable to load module: {path}")
    mod = importlib.util.module_from_spec(spec)
    sys.modules[name] = mod
    spec.loader.exec_module(mod)  # type: ignore[attr-defined]
    return mod


LANG_MOD = load_module(ROOT / "scripts" / "reclassify_song_languages.py", "reclassify_song_languages_vla")
REFILTER_MOD = load_module(ROOT / "scripts" / "refilter_song_catalog.py", "refilter_song_catalog_vla")
LANG_VALUES = set(REFILTER_MOD.parse_catalog_values("SONG_LANGUAGE_VALUES"))
COUNTRY_VALUES = set(REFILTER_MOD.parse_catalog_values("SONG_COUNTRY_VALUES"))
COUNTRY_ALIASES = REFILTER_MOD.build_country_aliases(COUNTRY_VALUES)
FILTER_POLICY = REFILTER_MOD.FilterPolicy(
    country_ambiguity_policy="other_countries",
    cyr_lang_switch_policy="aggressive",
    allow_movement_countries=True,
)


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


def esc_sql(value: Any) -> str:
    return str(value or "").replace("'", "''")


def sql_nullable(value: str | None) -> str:
    text = normalize_multiline(value) if "\n" in norm_text(value) else normalize_inline(value)
    if not text:
        return "NULL"
    return f"'{esc_sql(text)}'"


def decode_bytes(raw: bytes, preferred: str | None = None) -> str:
    tried: list[str] = []
    for enc in ["utf-8", preferred or "", "cp1252", "latin1"]:
        if not enc or enc in tried:
            continue
        tried.append(enc)
        try:
            return raw.decode(enc)
        except Exception:
            continue
    return raw.decode("utf-8", errors="replace")


def fetch_text(url: str, fixture_path: Path, *, refresh: bool, timeout: int = 25, retries: int = 2) -> str:
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
                time.sleep(0.8 * (attempt + 1))
    raise RuntimeError(f"fetch failed: {url}: {last_error}")


def fixture_name_from_url(url: str) -> str:
    parsed = urlparse(url)
    path = parsed.path.strip("/") or "index"
    safe = re.sub(r"[^0-9A-Za-z._-]+", "__", path)
    filename = safe + ".html"
    if len(filename) <= 120:
        return filename
    digest = hashlib.sha1(path.encode("utf-8")).hexdigest()[:12]
    trimmed = safe[:100].rstrip("._-")
    return f"{trimmed}__{digest}.html"


def strip_noise(html_text: str) -> str:
    text = RE_COMMENT.sub("", html_text)
    text = RE_SCRIPT.sub("", text)
    text = RE_STYLE.sub("", text)
    return text


def html_to_text(block: str, *, preserve_breaks: bool = True) -> str:
    text = norm_text(block)
    text = re.sub(r"</(li|tr|h\d)\s*>", "\n", text, flags=re.IGNORECASE)
    if preserve_breaks:
        text = re.sub(r"\s*(<br\s*/?>)\s*", r"\1", text, flags=re.IGNORECASE)
        text = RE_BR.sub("\n", text)
        text = re.sub(r"</p\s*>", "\n\n", text, flags=re.IGNORECASE)
        text = re.sub(r"<p[^>]*>", "", text, flags=re.IGNORECASE)
    text = RE_TAG.sub(" ", text)
    text = html.unescape(text)
    return normalize_multiline(text) if preserve_breaks else normalize_inline(text)


def extract_balanced_div(text: str, marker: str, start_from: int = 0) -> str | None:
    idx = text.find(marker, start_from)
    if idx < 0:
        return None
    open_idx = text.rfind("<div", 0, idx + len(marker))
    if open_idx < 0:
        open_idx = idx
    depth = 0
    for match in re.finditer(r"<(/?)div\b[^>]*>", text[open_idx:], re.IGNORECASE):
        closing = bool(match.group(1))
        if not closing:
            depth += 1
        else:
            depth -= 1
            if depth == 0:
                end = open_idx + match.end()
                return text[open_idx:end]
    return None


def extract_section_after_heading(text: str, heading_id: str) -> str | None:
    marker = f'id="{heading_id}"'
    pos = text.find(marker)
    if pos < 0:
        marker = f"id='{heading_id}'"
        pos = text.find(marker)
    if pos < 0:
        return None
    open_idx = text.rfind("<div", 0, pos)
    if open_idx < 0:
        return None
    depth = 0
    for match in re.finditer(r"<(/?)div\b[^>]*>", text[open_idx:], re.IGNORECASE):
        closing = bool(match.group(1))
        if not closing:
            depth += 1
        else:
            depth -= 1
            if depth == 0:
                end = open_idx + match.end()
                return text[open_idx:end]
    return None


def anchor_text_pairs(block_html: str) -> list[tuple[str, str]]:
    pairs: list[tuple[str, str]] = []
    for _quote, href, inner in RE_A_HREF.findall(block_html):
        url = urljoin(SITE_ROOT, html.unescape(href).strip())
        title = html_to_text(inner, preserve_breaks=False)
        if url and title:
            pairs.append((title, url))
    return pairs


def textish_lines(text: str) -> list[str]:
    return [line.strip() for line in normalize_multiline(text).split("\n") if line.strip()]


def paragraph_to_text(block_html: str) -> str:
    return html_to_text(block_html, preserve_breaks=True)


def is_lyric_like(text: str) -> bool:
    norm = normalize_multiline(text)
    if not norm:
        return False
    if RE_AUTHOR_LINE.match(norm):
        return False
    if RE_SOURCE_HINT.search(norm) and "\n" not in norm and len(norm.split()) > 9:
        return False
    lines = [line.strip() for line in norm.split("\n") if line.strip()]
    if not lines:
        return False
    if len(lines) >= 2:
        short_lines = sum(1 for line in lines if len(line.split()) <= 10)
        if short_lines >= max(2, len(lines) // 2):
            return True
    if len(lines) == 1 and len(lines[0].split()) <= 6 and not lines[0].endswith(":"):
        return True
    return False


def looks_like_intro_note(text: str) -> bool:
    norm = normalize_inline(text).lower()
    if not norm:
        return False
    if RE_AUTHOR_LINE.match(norm):
        return False
    if RE_SOURCE_HINT.search(norm) or RE_NOTE_HINT.search(norm):
        return True
    if len(norm.split()) > 12 and "." in norm:
        return True
    return False


def is_sourceish(text: str) -> bool:
    norm = normalize_inline(text)
    if not norm:
        return False
    if RE_SOURCE_HINT.search(norm):
        return True
    if re.search(r"\(\d{4}[^)]*\)", norm) and re.search(r"\b(verlag|edition|buch|liedbuch|druck|cd|lp)\b", norm, re.IGNORECASE):
        return True
    return False


def parse_credit_line(line: str) -> tuple[str | None, str | None]:
    raw = normalize_inline(line)
    if not raw:
        return None, None
    lowered = raw.lower()
    if lowered.startswith("text und musik:"):
        value = normalize_inline(raw.split(":", 1)[1])
        return f"Музыка и слова: {value}", None
    if lowered.startswith("text:"):
        value = normalize_inline(raw.split(":", 1)[1])
        return f"Слова: {value}", None
    if lowered.startswith("musik:"):
        value = normalize_inline(raw.split(":", 1)[1])
        return f"Музыка: {value}", None
    return None, raw


def split_entry_content(entry_html: str) -> tuple[str, str | None, str | None, list[dict[str, Any]], dict[str, str]]:
    subtitle_lines: list[str] = []
    source_parts: list[str] = []
    note_parts: list[str] = []
    lyric_chunks: list[tuple[str, bool]] = []
    audio_links: list[dict[str, Any]] = []

    last_audio_heading = ""
    for h2 in RE_H2_BLOCK.finditer(entry_html):
        heading = html_to_text(h2.group(1), preserve_breaks=False)
        if heading:
            last_audio_heading = heading
        snippet_end = entry_html.find("</audio>", h2.end())
        if snippet_end != -1:
            snippet = entry_html[h2.start(): snippet_end + len("</audio>")]
            for src in RE_AUDIO_SOURCE.findall(snippet):
                url = urljoin(SITE_ROOT, html.unescape(src[1]))
                if url:
                    audio_links.append({"title": last_audio_heading or "Audio", "url": url, "kind": "audio"})

    p_blocks = [m.group(1) for m in RE_P_BLOCK.finditer(entry_html)]
    author_seen = False
    pre_author_misc: list[str] = []

    for p_html in p_blocks:
        text = paragraph_to_text(p_html)
        if not text or text == "\xa0":
            continue
        has_internal_breaks = bool(RE_BR.search(p_html) or "\n" in text)
        if RE_AUTHOR_LINE.match(text):
            author_seen = True
            lines = textish_lines(text)
            for line in lines:
                sub_line, extra_line = parse_credit_line(line)
                if sub_line:
                    subtitle_lines.append(sub_line)
                elif extra_line:
                    if is_sourceish(extra_line):
                        source_parts.append(extra_line)
                    else:
                        note_parts.append(extra_line)
            continue

        if not author_seen:
            if is_lyric_like(text):
                lyric_chunks.append((text, has_internal_breaks))
            else:
                pre_author_misc.append(text)
            continue

        if is_sourceish(text):
            source_parts.append(text)
        else:
            note_parts.append(text)

    if not lyric_chunks and pre_author_misc:
        for text in pre_author_misc:
            if is_lyric_like(text):
                lyric_chunks.append((text, "\n" in text))
            else:
                note_parts.append(text)
    else:
        note_parts.extend(text for text in pre_author_misc if looks_like_intro_note(text))

    stanzas: list[str] = []
    current_lines: list[str] = []
    for text, multiline in lyric_chunks:
        if multiline:
            if current_lines:
                stanzas.append("\n".join(current_lines))
                current_lines = []
            stanzas.append(text)
        else:
            current_lines.append(text)
    if current_lines:
        stanzas.append("\n".join(current_lines))

    lyrics = normalize_multiline("\n\n".join(stanzas))
    subtitle = normalize_inline(" ".join(dict.fromkeys(subtitle_lines))) or None
    source = normalize_multiline("\n\n".join(source_parts)) or None
    entry_notes = normalize_multiline("\n\n".join(note_parts))
    return lyrics, subtitle, source, audio_links, {"entry_notes": entry_notes or ""}


def parse_meta_block(block_html: str) -> tuple[dict[str, str], list[dict[str, Any]], str]:
    if not block_html:
        return {}, [], ""
    text = paragraph_to_text(block_html)
    lines = [line.strip() for line in normalize_newlines(text).split("\n") if line.strip()]
    fields: dict[str, str] = {}
    misc_lines: list[str] = []
    current_label: str | None = None

    for line in lines:
        matched = False
        for label in ["Geschichte dieses Liedes", "Liederthema", "Liederzeit", "Schlagwort", "Ort"]:
            prefix = label + ":"
            if line.startswith(prefix):
                fields[label] = normalize_inline(line[len(prefix):])
                current_label = label
                matched = True
                break
        if matched:
            continue
        if re.fullmatch(r"\(\d{4}\)", line):
            fields["Year"] = line.strip("() ")
            continue
        if current_label and line.startswith("(") and line.endswith(")"):
            fields["Year"] = line.strip("() ")
            continue
        misc_lines.append(line)

    links: list[dict[str, Any]] = []
    for title, url in anchor_text_pairs(block_html):
        kind = "reference"
        if "liedergeschichten" in url:
            kind = "history"
        elif "/orte/" in url:
            kind = "place"
        elif "/stichwort/" in url or "/musik/" in url or "/liederzeit/" in url:
            kind = "taxonomy"
        links.append({"title": title, "url": url, "kind": kind})

    meta_note_lines: list[str] = []
    for label in ["Geschichte dieses Liedes", "Liederthema", "Liederzeit", "Schlagwort", "Ort"]:
        value = normalize_inline(fields.get(label))
        if value:
            meta_note_lines.append(f"{label}: {value}")
    if fields.get("Year"):
        meta_note_lines.append(f"Year: {fields['Year']}")
    meta_note_lines.extend(misc_lines)
    return fields, links, normalize_multiline("\n".join(meta_note_lines))


def parse_notes_block(block_html: str) -> str:
    if not block_html:
        return ""
    paras = [paragraph_to_text(p) for p in RE_P_BLOCK.findall(block_html)]
    if not paras:
        return paragraph_to_text(block_html)
    clean = [p for p in paras if p]
    return normalize_multiline("\n\n".join(clean))


def classify_simple_lang(title: str, subtitle: str, lyrics: str, source: str, notes: str, song_id: str) -> str:
    core = LANG_MOD.SongRow(song_id, title, subtitle, "de", lyrics, source[:2000], notes[:2000])
    pred, _conf, _reason = LANG_MOD.classify_song(core)
    return pred if pred in LANG_VALUES else "de"


def parse_variants_block(block_html: str, song_id: str, title: str) -> tuple[list[SongVersionPayload], str]:
    if not block_html:
        return [], ""
    p_blocks = [paragraph_to_text(p) for p in RE_P_BLOCK.findall(block_html)]
    items = [normalize_multiline(p) for p in p_blocks if normalize_multiline(p)]
    if not items:
        return [], ""

    versions: list[SongVersionPayload] = []
    notes_parts: list[str] = []
    current_title = ""
    current_source: list[str] = []
    current_chunks: list[str] = []
    sort_order = 1

    def flush_current() -> None:
        nonlocal current_title, current_source, current_chunks, sort_order
        lyrics = normalize_multiline("\n\n".join(current_chunks))
        if lyrics and is_lyric_like(lyrics):
            vtitle = current_title or f"Textvariante {sort_order}"
            vsource = normalize_multiline("\n".join(current_source)) or None
            lang = classify_simple_lang(title, vtitle, lyrics, vsource or "", "", f"{song_id}_v{sort_order}")
            versions.append(
                SongVersionPayload(
                    title=vtitle[:240],
                    lang=lang,
                    lyrics=lyrics[:20000],
                    source=vsource,
                    sort_order=sort_order,
                )
            )
            sort_order += 1
        elif lyrics:
            chunk_title = current_title or "Textvarianten"
            notes_parts.append(f"{chunk_title}:\n{lyrics}")
        current_title = ""
        current_source = []
        current_chunks = []

    for item in items:
        inline = normalize_inline(item)
        if RE_VARIANT_LABEL.match(inline):
            if current_chunks:
                flush_current()
            current_title = inline.rstrip(":")
            continue
        if inline.lower().startswith("übersetzt mit deepl") or inline.lower().startswith("übersetzt mit"):
            current_source.append(inline)
            continue
        if is_lyric_like(item) or RE_LYRICS_INLINE_LABEL.match(inline):
            current_chunks.append(item)
        else:
            if current_chunks:
                current_source.append(inline)
            else:
                notes_parts.append(item)
    if current_chunks:
        flush_current()

    if not versions:
        return [], normalize_multiline("\n\n".join(items))
    return versions, normalize_multiline("\n\n".join(notes_parts))


def add_unique_link(links: list[dict[str, Any]], title: str, url: str, kind: str, seen: set[tuple[str, str]]) -> None:
    norm_title = normalize_inline(title) or kind
    norm_url = html.unescape(url).strip()
    if not norm_url:
        return
    key = (norm_title, norm_url)
    if key in seen:
        return
    seen.add(key)
    links.append({"title": norm_title[:240], "url": norm_url, "kind": kind, "sort_order": len(links) + 1})


def implied_period_hints(scope: str, lang: str) -> tuple[int | None, str | None]:
    s = scope.lower()
    if "weimarer republik" in s:
        return 1925, "weimar_republic_1918_1933"
    if "nationalsozialismus" in s or "drittes reich" in s:
        return 1938, "third_reich_1933_1945"
    if re.search(r"\b(ddr|east germany)\b", s):
        return 1965, "gdr_1949_1990"
    if re.search(r"\b(brd|frg|west germany)\b", s):
        return 1965, "frg_1949"
    m = RE_CENTURY.search(scope)
    if m:
        century = int(m.group(1))
        approx = ((century - 1) * 100) + 50
        return approx, None
    return None, None


def meta_year_hint(meta_fields: dict[str, str]) -> int | None:
    explicit = normalize_inline(meta_fields.get("Year"))
    if explicit.isdigit():
        return int(explicit)
    liederzeit = normalize_inline(meta_fields.get("Liederzeit"))
    years = [int(y) for y in RE_YEAR.findall(liederzeit)]
    if years:
        return years[-1]
    return None


def classify_song_metadata(
    song_id: str,
    title: str,
    subtitle: str,
    lyrics: str,
    source: str,
    notes: str,
    meta_fields: dict[str, str] | None = None,
) -> tuple[str, str | None, str, dict[str, Any]]:
    initial_lang = classify_simple_lang(title, subtitle, lyrics, source, notes, song_id)
    row = REFILTER_MOD.SongRow(
        song_id,
        title,
        subtitle,
        initial_lang,
        "",
        "",
        lyrics,
        source,
        notes,
        "published",
        "",
    )
    signals = REFILTER_MOD.build_row_signals(row, COUNTRY_VALUES, FILTER_POLICY)
    final_lang, lang_conf, lang_reason, lang_forced = REFILTER_MOD.classify_language(
        row,
        signals,
        LANG_MOD,
        LANG_VALUES,
        FILTER_POLICY,
    )
    dialect_scope = "\n".join([title, subtitle, source, notes]).lower()
    if final_lang == "lb" and not re.search(r"(luxemb|letzebuerg|luxemburg)", dialect_scope, re.IGNORECASE):
        final_lang = "de"
        lang_reason = f"dialect_to_de:{lang_reason}"
    if final_lang == "fo" and not re.search(r"(färö|faeroe|faroe|faroe|föhr|foehr)", dialect_scope, re.IGNORECASE):
        final_lang = "de"
        lang_reason = f"dialect_to_de:{lang_reason}"
    year_int, year_reason = REFILTER_MOD.infer_song_year(row, signals)
    strong_meta_year = meta_year_hint(meta_fields or {})
    if strong_meta_year is not None:
        if year_int is None:
            year_int = strong_meta_year
            year_reason = f"meta_year:{year_reason}"
        elif year_reason.startswith(("notes", "source", "ambiguous", "weak", "period_hint")) and abs(year_int - strong_meta_year) >= 20:
            year_int = strong_meta_year
            year_reason = f"meta_year_override:{year_reason}"
    implied_year, implied_country = implied_period_hints("\n".join([source, notes, subtitle]), final_lang)
    if year_int is None and implied_year is not None:
        year_int = implied_year
        year_reason = f"period_hint:{year_reason}"
    country, country_reason, ambiguous, low_signal = REFILTER_MOD.classify_country(
        row,
        signals,
        final_lang,
        year_int,
        COUNTRY_VALUES,
        COUNTRY_ALIASES,
        FILTER_POLICY,
    )
    timeline_fallback = REFILTER_MOD.timeline_country_for_lang(
        final_lang,
        year_int,
        "\n".join([title, subtitle, notes]),
        COUNTRY_VALUES,
        FILTER_POLICY.allow_movement_countries,
    )
    if low_signal and timeline_fallback in COUNTRY_VALUES and country != timeline_fallback:
        country = timeline_fallback
        country_reason = f"timeline_fallback:{country_reason}"
    if implied_country and (country in {"other_countries", "germany_1990", "uk_gb_ni_1922", "france_fifth_republic_1958"} or year_int is None):
        country = implied_country
        country_reason = f"period_override:{country_reason}"
    year_text = str(year_int) if year_int is not None and YEAR_MIN <= year_int <= YEAR_MAX else (str(year_int) if year_int is not None else None)
    qa = {
        "initial_lang": initial_lang,
        "final_lang": final_lang,
        "lang_confidence": round(float(lang_conf), 4),
        "lang_reason": lang_reason,
        "lang_forced": bool(lang_forced),
        "year_reason": year_reason,
        "country_reason": country_reason,
        "country_ambiguous": ambiguous,
        "country_low_signal": low_signal,
    }
    return final_lang, year_text, country, qa


def build_tags(article_classes: str, meta_fields: dict[str, str]) -> list[str]:
    tags = [SITE_TAG]
    for cls in article_classes.split():
        cls = cls.strip()
        if cls.startswith(("category-", "orte-", "medien-", "liedergeschichten-", "lieddichter-")):
            tags.append(cls)
    for key, value in meta_fields.items():
        if value:
            tags.append(f"{key}: {normalize_inline(value)}")
    out: list[str] = []
    seen: set[str] = set()
    for tag in tags:
        clean = normalize_inline(tag)
        if clean and clean not in seen:
            seen.add(clean)
            out.append(clean)
    return out


def slug_id_from_url(url: str) -> str:
    slug = urlparse(url).path.strip("/").lower()
    slug = re.sub(r"[^0-9a-z]+", "_", slug).strip("_")
    if not slug:
        slug = hashlib.sha1(url.encode("utf-8")).hexdigest()[:12]
    return slug[:80]


def parse_song_page(url: str, page_html: str) -> SongPayload | None:
    clean_html = strip_noise(page_html)
    title_match = RE_TITLE.search(clean_html)
    title = html_to_text(title_match.group(1), preserve_breaks=False) if title_match else ""
    if not title:
        return None

    article_class_match = RE_ARTICLE_CLASS.search(clean_html)
    article_classes = normalize_inline(article_class_match.group(2) if article_class_match else "")

    entry_html = extract_balanced_div(clean_html, 'class="entry-content"')
    if entry_html is None:
        entry_html = extract_balanced_div(clean_html, "class='entry-content'")
    if entry_html is None:
        return None

    meta_block = extract_balanced_div(clean_html, "class=anmerkungen")
    if meta_block is None:
        meta_block = extract_balanced_div(clean_html, 'class="anmerkungen"')
    notes_block = extract_section_after_heading(clean_html, "anmerkungen")
    variants_block = extract_section_after_heading(clean_html, "textvarianten")

    lyrics, subtitle, source, entry_links, split_debug = split_entry_content(entry_html)
    meta_fields, meta_links, meta_notes = parse_meta_block(meta_block or "")
    long_notes = parse_notes_block(notes_block or "")
    versions, variant_notes = parse_variants_block(variants_block or "", slug_id_from_url(url), title)
    notes = normalize_multiline("\n\n".join(part for part in [split_debug.get("entry_notes", ""), meta_notes, long_notes, variant_notes] if part))

    if not lyrics:
        return None
    if REFILTER_MOD.is_probably_non_song(title, lyrics, source or "", notes):
        return None
    if RE_NON_SONG_URL.search(url) and not re.search(r"/songs?/", url, re.IGNORECASE):
        return None

    link_seen: set[tuple[str, str]] = set()
    links: list[dict[str, Any]] = []
    for link in entry_links + meta_links:
        add_unique_link(links, link.get("title") or link.get("kind") or "Link", link["url"], link.get("kind") or "reference", link_seen)

    final_lang, year, country, qa_meta = classify_song_metadata(
        song_id=f"{ID_PREFIX}_{slug_id_from_url(url)}",
        title=title,
        subtitle=subtitle or "",
        lyrics=lyrics,
        source=source or "",
        notes=notes,
        meta_fields=meta_fields,
    )
    qa_meta["url"] = url
    qa_meta["meta_fields"] = meta_fields

    return SongPayload(
        id=f"{ID_PREFIX}_{slug_id_from_url(url)}",
        url=url,
        title=normalize_inline(title)[:240],
        subtitle=(normalize_inline(subtitle)[:500] if subtitle else None),
        lang=final_lang,
        country=country if country in COUNTRY_VALUES else "other_countries",
        period=None,
        year=year,
        source=(normalize_multiline(source)[:5000] if source else None),
        notes=(notes[:16000] if notes else None),
        lyrics=lyrics[:30000],
        tags_json=json.dumps(build_tags(article_classes, meta_fields), ensure_ascii=False),
        versions=versions,
        links=links,
        qa=qa_meta,
    )


def load_cached_page(url: str, fixtures_root: Path) -> str | None:
    path = fixtures_root / fixture_name_from_url(url)
    if not path.exists():
        return None
    return path.read_text(encoding="utf-8", errors="replace")


def collect_post_urls(*, refresh: bool, sitemap_workers: int, limit_sitemaps: int | None = None) -> list[str]:
    fixtures_root = ROOT / "fixtures" / "volksliederarchiv" / "sitemaps"
    index_xml = fetch_text(SITEMAP_INDEX_URL, fixtures_root / "sitemap_index.xml", refresh=refresh)
    ns = {"sm": "http://www.sitemaps.org/schemas/sitemap/0.9"}
    root = ET.fromstring(index_xml)
    sitemap_urls = [
        (node.text or "").strip()
        for node in root.findall(".//sm:loc", ns)
        if node.text and "/post-sitemap" in node.text
    ]
    if limit_sitemaps is not None:
        sitemap_urls = sitemap_urls[:limit_sitemaps]

    urls: set[str] = set()

    def fetch_sitemap(url: str) -> list[str]:
        text = fetch_text(url, fixtures_root / fixture_name_from_url(url), refresh=refresh)
        root = ET.fromstring(text)
        return [(node.text or "").strip() for node in root.findall(".//sm:loc", ns) if node.text]

    with concurrent.futures.ThreadPoolExecutor(max_workers=max(1, sitemap_workers)) as pool:
        futures = [pool.submit(fetch_sitemap, url) for url in sitemap_urls]
        for future in concurrent.futures.as_completed(futures):
            for url in future.result():
                if url.startswith(SITE_ROOT):
                    urls.add(url)

    return sorted(urls)


def fetch_pages(
    urls: list[str],
    *,
    fixtures_root: Path,
    refresh: bool,
    song_workers: int,
) -> dict[str, Any]:
    downloaded = 0
    cached = 0
    errors: list[dict[str, str]] = []

    def fetch_one(url: str) -> str:
        path = fixtures_root / fixture_name_from_url(url)
        was_cached = path.exists() and not refresh
        fetch_text(url, path, refresh=refresh)
        return "cached" if was_cached else "downloaded"

    with concurrent.futures.ThreadPoolExecutor(max_workers=max(1, song_workers)) as pool:
        future_map = {pool.submit(fetch_one, url): url for url in urls}
        for idx, future in enumerate(concurrent.futures.as_completed(future_map), start=1):
            url = future_map[future]
            try:
                state = future.result()
                if state == "cached":
                    cached += 1
                else:
                    downloaded += 1
                if idx % 200 == 0:
                    print(json.dumps({"fetch_processed": idx, "downloaded": downloaded, "cached": cached, "errors": len(errors)}, ensure_ascii=False))
            except Exception as exc:
                errors.append({"url": url, "error": str(exc)})

    return {
        "processed_urls": len(urls),
        "downloaded": downloaded,
        "cached": cached,
        "errors": errors[:500],
    }


def parse_cached_pages(
    urls: list[str],
    *,
    fixtures_root: Path,
    song_workers: int,
) -> tuple[list[SongPayload], int, list[dict[str, str]]]:
    imported_songs: list[SongPayload] = []
    skipped = 0
    errors: list[dict[str, str]] = []

    def parse_one(url: str) -> SongPayload | None:
        page_html = load_cached_page(url, fixtures_root)
        if page_html is None:
            raise RuntimeError("missing_cached_page")
        return parse_song_page(url, page_html)

    with concurrent.futures.ThreadPoolExecutor(max_workers=max(1, song_workers)) as pool:
        future_map = {pool.submit(parse_one, url): url for url in urls}
        for idx, future in enumerate(concurrent.futures.as_completed(future_map), start=1):
            url = future_map[future]
            try:
                song = future.result()
                if song is None:
                    skipped += 1
                else:
                    imported_songs.append(song)
                if idx % 200 == 0:
                    print(json.dumps({"parse_processed": idx, "imported": len(imported_songs), "skipped": skipped, "errors": len(errors)}, ensure_ascii=False))
            except Exception as exc:
                errors.append({"url": url, "error": str(exc)})

    imported_songs.sort(key=lambda s: s.id)
    return imported_songs, skipped, errors


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
    for version in song.versions:
        version_id = f"{song.id}_v{version.sort_order}"
        lines.append(
            "INSERT OR REPLACE INTO song_versions (id,song_id,title,lang,lyrics,lyrics_meta_json,source,sort_order) VALUES ("
            f"'{esc_sql(version_id)}',"
            f"'{esc_sql(song.id)}',"
            f"{sql_nullable(version.title)},"
            f"{sql_nullable(version.lang)},"
            f"'{esc_sql(version.lyrics)}',"
            "'{}',"
            f"{sql_nullable(version.source)},"
            f"{version.sort_order}"
            ");"
        )
    for link in song.links:
        link_id = f"{song.id}_l{int(link['sort_order'])}"
        lines.append(
            "INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ("
            f"'{esc_sql(link_id)}',"
            f"'{esc_sql(song.id)}',"
            f"{sql_nullable(link.get('title'))},"
            f"'{esc_sql(link['url'])}',"
            f"{sql_nullable(link.get('kind'))},"
            "NULL,"
            f"{int(link['sort_order'])}"
            ");"
        )
    return lines


def run_remote_sql(db_name: str, sql_text: str) -> tuple[int, str]:
    tmp_dir = ROOT / "out" / "volksliederarchiv"
    tmp_dir.mkdir(parents=True, exist_ok=True)
    tmp_path = tmp_dir / f"tmp_exec_{int(time.time() * 1000)}.sql"
    tmp_path.write_text(sql_text + ("" if sql_text.endswith("\n") else "\n"), encoding="utf-8")
    try:
        npx_exe = "npx.cmd" if sys.platform.startswith("win") else "npx"
        proc = subprocess.run(
            [npx_exe, "wrangler", "d1", "execute", db_name, "--remote", "--file", str(tmp_path)],
            cwd=ROOT,
            capture_output=True,
            text=True,
            timeout=240,
        )
        return proc.returncode, ((proc.stdout or "") + "\n" + (proc.stderr or "")).strip()
    finally:
        try:
            tmp_path.unlink()
        except OSError:
            pass


def execute_remote_import(db_name: str, songs: list[SongPayload], batch_size: int) -> None:
    delete_sql = "\n".join(
        [
            f"DELETE FROM song_links WHERE song_id LIKE '{ID_PREFIX}_%';",
            f"DELETE FROM song_versions WHERE song_id LIKE '{ID_PREFIX}_%';",
            f"DELETE FROM songs_fts WHERE song_id LIKE '{ID_PREFIX}_%';",
            f"DELETE FROM songs WHERE id LIKE '{ID_PREFIX}_%';",
        ]
    )
    rc, out = run_remote_sql(db_name, delete_sql)
    if rc != 0:
        raise RuntimeError(f"remote delete failed: {out[:2000]}")

    for start in range(0, len(songs), batch_size):
        chunk = songs[start : start + batch_size]
        statements: list[str] = []
        for song in chunk:
            statements.extend(build_insert_sql(song))
        sql = "\n".join(statements)
        rc, out = run_remote_sql(db_name, sql)
        if rc != 0:
            raise RuntimeError(f"remote insert failed at batch {start // batch_size + 1}: {out[:2500]}")
        print(json.dumps({"remote_batch": start // batch_size + 1, "done": min(start + batch_size, len(songs)), "total": len(songs)}, ensure_ascii=False))


def sample_for_qa(songs: list[SongPayload], count: int = 12) -> list[dict[str, Any]]:
    if not songs:
        return []
    rng = random.Random(42)
    picked = rng.sample(songs, min(count, len(songs)))
    sample: list[dict[str, Any]] = []
    for song in picked:
        first_line = next((line for line in song.lyrics.split("\n") if line.strip()), "")
        sample.append(
            {
                "id": song.id,
                "title": song.title,
                "lang": song.lang,
                "country": song.country,
                "year": song.year,
                "first_line": first_line[:120],
                "url": song.url,
                "qa": song.qa,
            }
        )
    return sample


def main() -> None:
    if hasattr(sys.stdout, "reconfigure"):
        sys.stdout.reconfigure(encoding="utf-8", errors="replace")
    parser = argparse.ArgumentParser(description="Fast importer for volksliederarchiv.de")
    parser.add_argument("--mode", choices=["full", "fetch-only", "parse-only"], default="full", help="Pipeline mode")
    parser.add_argument("--refresh", action="store_true", help="Re-download cached HTML fixtures")
    parser.add_argument("--limit-sitemaps", type=int, default=None, help="Only read first N post sitemap files")
    parser.add_argument("--limit-songs", type=int, default=None, help="Only process first N page URLs")
    parser.add_argument("--sitemap-workers", type=int, default=12, help="Concurrent workers for sitemap files")
    parser.add_argument("--song-workers", type=int, default=24, help="Concurrent workers for song cards")
    parser.add_argument("--execute-remote", action="store_true", help="Execute generated import into remote D1")
    parser.add_argument("--db-name", default="euro-songbook-db", help="Wrangler D1 database name")
    parser.add_argument("--remote-batch-size", type=int, default=50, help="Songs per remote insert batch")
    args = parser.parse_args()

    out_dir = ROOT / "out" / "volksliederarchiv"
    out_dir.mkdir(parents=True, exist_ok=True)
    jsonl_path = out_dir / "songs.jsonl"
    summary_path = out_dir / "import_summary.json"
    sql_path = ROOT / "tmp_import_volksliederarchiv.sql"
    fixtures_root = ROOT / "fixtures" / "volksliederarchiv" / "pages"

    urls = collect_post_urls(refresh=args.refresh, sitemap_workers=args.sitemap_workers, limit_sitemaps=args.limit_sitemaps)
    if args.limit_songs is not None:
        urls = urls[: args.limit_songs]

    fetch_report: dict[str, Any] | None = None
    if args.mode in {"full", "fetch-only"}:
        fetch_report = fetch_pages(
            urls,
            fixtures_root=fixtures_root,
            refresh=args.refresh,
            song_workers=args.song_workers,
        )

    if args.mode == "fetch-only":
        summary = {
            "site": SITE_TAG,
            "mode": args.mode,
            "processed_urls": len(urls),
            "fetch_report": fetch_report,
        }
        summary_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        print(json.dumps(summary, ensure_ascii=False))
        return

    parse_urls = urls if args.mode == "full" else [url for url in urls if load_cached_page(url, fixtures_root) is not None]
    imported_songs, skipped, errors = parse_cached_pages(
        parse_urls,
        fixtures_root=fixtures_root,
        song_workers=args.song_workers,
    )

    lang_counts: dict[str, int] = {}
    country_counts: dict[str, int] = {}
    with jsonl_path.open("w", encoding="utf-8") as jsonl, sql_path.open("w", encoding="utf-8") as sqlf:
        sqlf.write(f"DELETE FROM song_links WHERE song_id LIKE '{ID_PREFIX}_%';\n")
        sqlf.write(f"DELETE FROM song_versions WHERE song_id LIKE '{ID_PREFIX}_%';\n")
        sqlf.write(f"DELETE FROM songs_fts WHERE song_id LIKE '{ID_PREFIX}_%';\n")
        sqlf.write(f"DELETE FROM songs WHERE id LIKE '{ID_PREFIX}_%';\n")

        for song in imported_songs:
            lang_counts[song.lang] = lang_counts.get(song.lang, 0) + 1
            country_counts[song.country] = country_counts.get(song.country, 0) + 1
            jsonl.write(
                json.dumps(
                    {
                        "id": song.id,
                        "url": song.url,
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
                        "versions": [
                            {
                                "title": version.title,
                                "lang": version.lang,
                                "lyrics": version.lyrics,
                                "source": version.source,
                                "sort_order": version.sort_order,
                            }
                            for version in song.versions
                        ],
                        "links": song.links,
                        "qa": song.qa,
                    },
                    ensure_ascii=False,
                )
                + "\n"
            )
            for line in build_insert_sql(song):
                sqlf.write(line + "\n")

    summary = {
        "site": SITE_TAG,
        "mode": args.mode,
        "processed_urls": len(parse_urls),
        "fetch_report": fetch_report,
        "imported": len(imported_songs),
        "skipped": skipped,
        "errors": errors[:500],
        "lang_counts": dict(sorted(lang_counts.items(), key=lambda item: (-item[1], item[0]))),
        "country_counts": dict(sorted(country_counts.items(), key=lambda item: (-item[1], item[0]))),
        "sample_qa": sample_for_qa(imported_songs),
        "sql_path": str(sql_path),
        "jsonl_path": str(jsonl_path),
    }
    summary_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(summary, ensure_ascii=False))

    if args.execute_remote:
        execute_remote_import(args.db_name, imported_songs, args.remote_batch_size)
        print(json.dumps({"executed_remote": True, "songs": len(imported_songs), "db": args.db_name}, ensure_ascii=False))


if __name__ == "__main__":
    main()
