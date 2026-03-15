from __future__ import annotations

import re
from dataclasses import dataclass
from html import unescape
from html.parser import HTMLParser
from pathlib import Path
from typing import Any
from urllib.parse import urljoin, urlparse


_SUBTITLE_RE = re.compile(
    r"^(слова|музыка|на голос|сл\.|муз\.|автор слов|автор текста|перевод|текст|композитор|стихи)\b",
    re.IGNORECASE,
)
_VERSION_HEADING_RE = re.compile(r"^\s*ВАРИАНТЫ?\b", re.IGNORECASE)
_VERSION_NUMBER_RE = re.compile(r"^\s*(\d{1,2})\s*[\.)]\s*(.*)$")
_MELODY_VARIANT_RE = re.compile(r"ВАРИАНТ\w*\s+МЕЛОД", re.IGNORECASE)

_EXPLICIT_NOTE_RE = re.compile(
    r"^(текст записан|антология|история|подробнее|песня об|бой у|песни о|"
    r"с фонограммы|из песенника|из сборника|две последние строки|rudolf|der )",
    re.IGNORECASE,
)
_SOURCE_RE = re.compile(
    r"^(из песенника|из сборника|из\.?\s*сб\.?|с фонограммы|текст записан|история военно|русские песни|"
    r"в нашу гавань|.*\bвып\.\b.*\d{4}|.*\b(м\.|спб\.|л\.|п\.)\b[:.,].*\d{4})",
    re.IGNORECASE,
)
_FOOTER_RE = re.compile(r"(dzanni@|liveinternet|google-analytics|counter\.yadro)", re.IGNORECASE)
_YEAR_RE = re.compile(r"\b(18\d{2}|19\d{2}|20\d{2})\b")
_STANDALONE_DATE_RE = re.compile(
    r"^(?:между .*\d{4}|(?:\d{1,2}\s+)?(?:январ|феврал|март|апрел|май|июн|июл|август|сентябр|октябр|ноябр|декабр)\w*.*\d{4}|\d{4})$",
    re.IGNORECASE,
)
_BIBLIO_HINT_RE = re.compile(
    r"(\bвып\.\b|\bизд\.|\bизд-во\b|\bсост\.|\bред\.|\bстр\.|\b№\b|\bкн\.|\bм\.,|\bм\.:|\bспб\.|\bл\.,|\bп\.,|\bэксмо\b|\bаст\b|\bстрекоза\b|\bсталкер\b|\bрусич\b)",
    re.IGNORECASE,
)
_LEADING_ROLE_RE = re.compile(
    r"^(музыка|муз\.|композитор|слова|сл\.|автор слов|автор текста|текст|стихи)\s*[:\-]?\s*(.+)$",
    re.IGNORECASE,
)
_DEDICATION_RE = re.compile(r"^(посвящается|памяти)\b", re.IGNORECASE)
_TUNE_RE = re.compile(r"^на мотив\b", re.IGNORECASE)


def _normalize_line(line: str) -> str:
    line = line.replace("\ufeff", "")
    line = line.replace("\xa0", " ")
    line = re.sub(r"\s+", " ", line)
    return line.strip()


def _normalize_multiline(text: str) -> str:
    text = text.replace("\r\n", "\n").replace("\r", "\n")
    out: list[str] = []
    for raw in text.split("\n"):
        line = re.sub(r"[ \t]+$", "", raw).strip()
        if line:
            out.append(line)
            continue
        if out and out[-1] != "":
            out.append("")
    while out and out[-1] == "":
        out.pop()
    return "\n".join(out)


def _lines_to_text(lines: list[str]) -> str:
    return _normalize_multiline("\n".join(lines))


def _strip_tags(fragment: str) -> str:
    fragment = re.sub(r"<[^>]+>", " ", fragment)
    return _normalize_line(unescape(fragment))


def _normalize_match_value(value: str) -> str:
    value = unescape(value)
    value = value.lower()
    value = value.replace("«", '"').replace("»", '"')
    value = re.sub(r"[^\wа-яё]+", "", value, flags=re.IGNORECASE)
    return value


def _extract_title(html: str) -> str:
    patterns = [
        r"<h1[^>]*>(.*?)</h1>",
        r"<span[^>]*class=['\"]header['\"][^>]*>(.*?)</span>",
        r"<title[^>]*>(.*?)</title>",
    ]
    for pattern in patterns:
        match = re.search(pattern, html, flags=re.IGNORECASE | re.DOTALL)
        if not match:
            continue
        title = _strip_tags(match.group(1))
        if title:
            return title
    return ""


def _extract_html_title_tag(html: str) -> str:
    match = re.search(r"<title[^>]*>(.*?)</title>", html, flags=re.IGNORECASE | re.DOTALL)
    if not match:
        return ""
    return _strip_tags(match.group(1))


def _is_date_line(line: str) -> bool:
    stripped = line.strip()
    if not stripped:
        return False

    candidate = stripped
    # a-pesni often wraps dates in brackets, e.g. <15 апреля 1906>.
    for _ in range(2):
        if len(candidate) >= 2 and candidate[0] in "<([{" and candidate[-1] in ">)]}":
            candidate = candidate[1:-1].strip()
            continue
        break

    if _STANDALONE_DATE_RE.match(candidate):
        return True
    if re.fullmatch(r"(18\d{2}|19\d{2}|20\d{2})(?:\s*[-–—]\s*(18\d{2}|19\d{2}|20\d{2}))?", candidate):
        return True
    if re.fullmatch(r"\d{1,2}[./-]\d{1,2}[./-](18\d{2}|19\d{2}|20\d{2})", candidate):
        return True
    if "," in candidate:
        return False
    if re.fullmatch(r"\d{1,2}\s+\S{3,20}\s+(18\d{2}|19\d{2}|20\d{2})\.?", candidate):
        return True
    if re.fullmatch(r"\S{3,20}\s+(18\d{2}|19\d{2}|20\d{2})", candidate):
        return True
    return False


def _is_bibliography_line(line: str) -> bool:
    stripped = line.strip()
    if not stripped:
        return False
    low = stripped.lower()
    if low.startswith("неизвестный источник") or low.startswith("источник:"):
        return True
    if _SOURCE_RE.match(stripped):
        return True
    has_year = bool(_YEAR_RE.search(stripped))
    if has_year and _BIBLIO_HINT_RE.search(stripped):
        return True
    if has_year:
        commas = stripped.count(",")
        if commas >= 1 and re.match(r"^\s*[\"«][^\"»]{1,120}[\"»]\s*,", stripped):
            return True
        if re.search(r"\bбез\s+подписи\b", low):
            return True
        if low.startswith("журнал ") or low.startswith("газета "):
            return True
    if "в нашу гавань заходили корабли" in low and has_year:
        return True
    return False


def _is_authorish_line(line: str) -> bool:
    stripped = _normalize_line(line)
    if not stripped:
        return False
    if len(stripped) > 72:
        return False
    if re.search(r"(http://|https://|www\.|@|\d{4})", stripped, flags=re.IGNORECASE):
        return False
    low = stripped.lower()
    if re.search(r"(неизв|неизвест|автор|разн\.)", low):
        return True
    if re.search(r"(?:^|[\s,])[А-ЯЁA-Z]\.", stripped):
        return True
    words = re.findall(r"[A-Za-zА-Яа-яЁё][A-Za-zА-Яа-яЁё.-]*", stripped)
    if not words or len(words) > 5:
        return False
    capitalized = 0
    for word in words:
        if word and word[0].isupper():
            capitalized += 1
    return capitalized == len(words) and len(words) <= 4


def _normalize_author_value(value: str) -> str:
    out = _normalize_line(value)
    if not out:
        return ""
    if re.search(r"(неизв|неизвест)", out, flags=re.IGNORECASE):
        return "Неизв. автор"
    return out


def _subtitle_role(line: str) -> str | None:
    low = line.lower()
    if low.startswith("музыка:"):
        return "music"
    if low.startswith("слова:"):
        return "words"
    return None


def _canonical_subtitle_line(line: str) -> str:
    stripped = _normalize_line(line)
    if not stripped:
        return ""

    words_match = re.match(r"^(слова|сл\.|автор слов|автор текста|текст|стихи)\s*[:\-]?\s*(.*)$", stripped, flags=re.IGNORECASE)
    if words_match:
        value = _normalize_author_value(words_match.group(2) or "")
        return f"Слова: {value}" if value else "Слова: Неизв. автор"

    music_match = re.match(r"^(музыка|муз\.|композитор)\s*[:\-]?\s*(.*)$", stripped, flags=re.IGNORECASE)
    if music_match:
        value = _normalize_author_value(music_match.group(2) or "")
        return f"Музыка: {value}" if value else "Музыка: Неизв. автор"

    if _is_authorish_line(stripped):
        value = _normalize_author_value(stripped)
        return f"Слова: {value}" if value else ""

    return stripped


def _leading_role_subtitle(line: str) -> str | None:
    stripped = _normalize_line(line)
    match = _LEADING_ROLE_RE.match(stripped)
    if not match:
        return None
    role = (match.group(1) or "").lower()
    value = _normalize_author_value(match.group(2) or "")
    if not value:
        return None
    if len(value) > 90:
        return None
    if role.startswith("муз") or role == "композитор":
        return f"Музыка: {value}"
    return f"Слова: {value}"


def _is_leading_caption_line(line: str) -> bool:
    stripped = _normalize_line(line)
    if not stripped:
        return False
    if len(stripped) > 70:
        return False
    if re.search(r"[.!?;:]$", stripped):
        return False
    if _leading_role_subtitle(stripped):
        return False
    if _is_date_line(stripped) or _is_bibliography_line(stripped):
        return False
    words = stripped.split()
    if len(words) > 8:
        return False
    return True


def _clean_title_tail(value: str) -> str:
    out = _normalize_line(value)
    while True:
        nxt = re.sub(r"\s*\([^()]{1,80}\)\s*$", "", out).strip()
        if nxt == out:
            break
        out = nxt
    return out


def _looks_like_same_title(a: str, b: str) -> bool:
    na = _normalize_match_value(_clean_title_tail(a))
    nb = _normalize_match_value(_clean_title_tail(b))
    if not na or not nb:
        return False
    return na in nb or nb in na


def _authors_from_title_tag(html_title: str, song_title: str) -> list[str]:
    if not html_title or not song_title or " - " not in html_title:
        return []
    left, right = html_title.split(" - ", 1)
    if not _looks_like_same_title(right, song_title):
        return []

    left = _normalize_line(left)
    if not left:
        return []

    words = ""
    music = ""
    chunks = [_normalize_line(part) for part in left.split(";") if _normalize_line(part)]
    if not chunks:
        return []

    for chunk in chunks:
        words_match = re.match(r"^(слова|сл\.|автор слов|автор текста|текст|стихи)\s*[:\-]?\s*(.*)$", chunk, flags=re.IGNORECASE)
        if words_match:
            words = _normalize_author_value(words_match.group(2) or "")
            continue
        music_match = re.match(r"^(музыка|муз\.|композитор)\s*[:\-]?\s*(.*)$", chunk, flags=re.IGNORECASE)
        if music_match:
            music = _normalize_author_value(music_match.group(2) or "")
            continue

    if not words and not music:
        if len(chunks) >= 2:
            music = _normalize_author_value(chunks[0])
            words = _normalize_author_value("; ".join(chunks[1:]))
        else:
            comma_parts = [_normalize_line(part) for part in chunks[0].split(",") if _normalize_line(part)]
            if len(comma_parts) >= 2:
                music = _normalize_author_value(comma_parts[0])
                words = _normalize_author_value(", ".join(comma_parts[1:]))
            else:
                words = _normalize_author_value(chunks[0])

    out: list[str] = []
    if music:
        out.append(f"Музыка: {music}")
    if words:
        out.append(f"Слова: {words}")
    return out


def _merge_subtitle_lines(primary: list[str], fallback: list[str]) -> list[str]:
    base = [_canonical_subtitle_line(line) for line in primary if _canonical_subtitle_line(line)]
    extra = [_canonical_subtitle_line(line) for line in fallback if _canonical_subtitle_line(line)]
    if not base:
        seen: set[str] = set()
        out: list[str] = []
        for line in extra:
            key = line.lower()
            if key in seen:
                continue
            seen.add(key)
            out.append(line)
        return out

    if len(base) == 1 and _subtitle_role(base[0]) == "words" and extra:
        has_explicit = any(_subtitle_role(line) for line in extra)
        if has_explicit:
            base = []

    out = list(base)
    roles = {role for role in (_subtitle_role(line) for line in out) if role}
    seen = {line.lower() for line in out}
    for line in extra:
        role = _subtitle_role(line)
        if role and role in roles:
            continue
        key = line.lower()
        if key in seen:
            continue
        out.append(line)
        seen.add(key)
        if role:
            roles.add(role)
    return out


def _split_trailing_source_from_lyrics(lines: list[str]) -> tuple[list[str], list[str]]:
    current = _trim_lines(lines)
    if not current:
        return [], []
    i = len(current) - 1
    tail: list[str] = []
    saw_source_marker = False
    while i >= 0:
        line = current[i]
        if line == "":
            if tail:
                tail.insert(0, "")
            i -= 1
            continue
        if _SOURCE_RE.match(line) or _is_bibliography_line(line) or _is_date_line(line):
            if _SOURCE_RE.match(line) or _is_bibliography_line(line):
                saw_source_marker = True
            tail.insert(0, line)
            i -= 1
            continue
        break
    if not tail:
        return current, []
    if not saw_source_marker and not all(_is_date_line(line) or line == "" for line in tail):
        return current, []
    return _trim_lines(current[: i + 1]), _trim_lines(tail)


def _detect_lang(text: str) -> str:
    cyr = len(re.findall(r"[А-Яа-яЁё]", text))
    lat = len(re.findall(r"[A-Za-z]", text))
    if cyr == 0 and lat == 0:
        return ""
    if cyr >= lat:
        return "ru"
    return "en"


def _is_external_url(url: str) -> bool:
    parsed = urlparse(url)
    if parsed.scheme not in {"http", "https"}:
        return False
    host = parsed.netloc.lower()
    return not host.endswith("a-pesni.org")


def _find_heading_index(lines: list[str], title: str) -> int:
    if not lines:
        return 0
    norm_title = _normalize_match_value(title)
    for index, line in enumerate(lines):
        norm_line = _normalize_match_value(line)
        if not norm_line:
            continue
        if norm_line == norm_title:
            return index
        if norm_title and norm_title in norm_line:
            return index
    for index, line in enumerate(lines):
        if line and len(line.split()) <= 12:
            return index
    return 0


def _trim_lines(lines: list[str]) -> list[str]:
    compact = [_normalize_line(line) for line in lines]
    while compact and compact[0] == "":
        compact.pop(0)
    while compact and compact[-1] == "":
        compact.pop()
    out: list[str] = []
    for line in compact:
        if line == "":
            if out and out[-1] != "":
                out.append("")
            continue
        out.append(line)
    return out


def _extract_subtitle(content_lines: list[str]) -> tuple[list[str], int]:
    lines = _trim_lines(content_lines)
    subtitle: list[str] = []
    offset = 0
    while offset < len(lines) and lines[offset] == "":
        offset += 1

    scan = offset
    while scan < len(lines):
        line = lines[scan]
        if line == "":
            if subtitle:
                scan += 1
                break
            scan += 1
            continue
        if _SUBTITLE_RE.match(line):
            normalized = _canonical_subtitle_line(line)
            if normalized:
                subtitle.append(normalized)
            scan += 1
            continue
        if not subtitle and _is_authorish_line(line):
            normalized = _canonical_subtitle_line(line)
            if normalized:
                subtitle.append(normalized)
            scan += 1
            continue
        break

    if subtitle:
        return subtitle, scan
    return [], offset


def _extract_leading_metadata(lines: list[str]) -> tuple[list[str], list[str], list[str], list[str], int]:
    """
    Pull non-lyric front matter that often appears before the first stanza.
    Returns: (subtitle_lines, source_lines, note_lines, remaining_lines, consumed_count)
    """
    trimmed = _trim_lines(lines)
    if not trimmed:
        return [], [], [], [], 0

    subtitle_lines: list[str] = []
    source_lines: list[str] = []
    note_lines: list[str] = []
    index = 0

    def _next_nonempty(start: int) -> int | None:
        probe = start
        while probe < len(trimmed):
            if trimmed[probe] != "":
                return probe
            probe += 1
        return None

    while index < len(trimmed):
        line = trimmed[index]
        if line == "":
            if subtitle_lines or source_lines or note_lines:
                index += 1
                continue
            index += 1
            continue

        role_subtitle = _leading_role_subtitle(line)
        if role_subtitle:
            subtitle_lines.append(role_subtitle)
            index += 1
            continue

        if _is_date_line(line) or _SOURCE_RE.match(line) or _is_bibliography_line(line):
            source_lines.append(line)
            index += 1
            continue

        if _DEDICATION_RE.match(line):
            note_lines.append(line)
            index += 1
            continue

        if _TUNE_RE.match(line):
            note_lines.append(line)
            index += 1
            continue

        next_nonempty = _next_nonempty(index + 1)
        if next_nonempty is not None:
            # Keep short labels like "Старинный вальс" out of lyrics if followed by author lines.
            if _leading_role_subtitle(trimmed[next_nonempty]) and _is_leading_caption_line(line):
                note_lines.append(line)
                index += 1
                continue

        break

    return (
        _trim_lines(subtitle_lines),
        _trim_lines(source_lines),
        _trim_lines(note_lines),
        _trim_lines(trimmed[index:]),
        index,
    )


def _is_likely_lyric_line(line: str) -> bool:
    stripped = line.strip()
    if not stripped:
        return True
    if _is_date_line(stripped):
        return False
    if _VERSION_NUMBER_RE.match(stripped):
        return False
    if _EXPLICIT_NOTE_RE.match(stripped):
        return False
    if _is_bibliography_line(stripped):
        return False
    if re.search(r"(http://|https://|www\.|@)", stripped, re.IGNORECASE):
        return False
    if len(stripped) > 120:
        return False
    words = stripped.split()
    if len(words) >= 14 and stripped.endswith("."):
        return False
    if stripped.endswith(":") and len(words) >= 4:
        return False
    if stripped.isupper() and len(words) >= 3:
        return False
    return True


def _find_notes_start(lines: list[str]) -> int | None:
    had_lyrics = False
    prose_count = 0
    prose_start = None
    for index, line in enumerate(lines):
        stripped = line.strip()
        lower = stripped.lower()
        if not stripped:
            continue

        if _EXPLICIT_NOTE_RE.match(stripped):
            if had_lyrics:
                return index
        if had_lyrics and _is_date_line(lower):
            return index
        if had_lyrics and _is_bibliography_line(stripped):
            return index

        if _is_likely_lyric_line(stripped):
            had_lyrics = True
            prose_count = 0
            prose_start = None
            continue

        if had_lyrics:
            if prose_count == 0:
                prose_start = index
            prose_count += 1
            if prose_count >= 2:
                return prose_start
    return None


def _split_lyrics_and_notes(lines: list[str]) -> tuple[list[str], list[str]]:
    lines = _trim_lines(lines)
    if not lines:
        return [], []
    note_start = _find_notes_start(lines)
    if note_start is None:
        return _trim_lines(lines), []
    return _trim_lines(lines[:note_start]), _trim_lines(lines[note_start:])


def _is_major_section_heading(line: str) -> bool:
    stripped = line.strip()
    if not stripped:
        return False
    upper = stripped.upper()
    if _MELODY_VARIANT_RE.search(upper):
        return True
    if upper.startswith("СТИХОТВОРЕНИЕ"):
        return True
    if upper.startswith("БОЙ У"):
        return True
    if upper.startswith("ПЕСНИ О"):
        return True
    if stripped.isupper() and len(stripped.split()) >= 2 and len(stripped) <= 80:
        return True
    return False


def _split_global_tail(block: list[str]) -> tuple[list[str], list[str]]:
    for index, line in enumerate(block):
        if index == 0:
            continue
        if _is_major_section_heading(line):
            return _trim_lines(block[:index]), _trim_lines(block[index:])
    return _trim_lines(block), []


def _take_leading_source(lines: list[str]) -> tuple[list[str], list[str]]:
    lines = _trim_lines(lines)
    source: list[str] = []
    index = 0
    while index < len(lines):
        line = lines[index]
        if line == "":
            if source:
                source.append("")
                index += 1
                continue
            index += 1
            continue
        if _is_date_line(line) or _SOURCE_RE.match(line) or _is_bibliography_line(line):
            source.append(line)
            index += 1
            continue
        break
    if source:
        source = _trim_lines(source)
    return source, _trim_lines(lines[index:])


def _find_versions_heading(lines: list[str]) -> int | None:
    for index, line in enumerate(lines):
        stripped = line.strip()
        if not stripped:
            continue
        if not _VERSION_HEADING_RE.match(stripped):
            continue
        if _MELODY_VARIANT_RE.search(stripped):
            continue
        return index
    return None


@dataclass
class _VersionResult:
    versions: list[dict[str, Any]]
    notes: list[str]
    ranges: list[tuple[int, int, int]]


def _parse_versions(section_lines: list[str], offset: int) -> _VersionResult:
    markers: list[tuple[int, int, str]] = []
    for index, line in enumerate(section_lines):
        match = _VERSION_NUMBER_RE.match(line.strip())
        if not match:
            continue
        number = int(match.group(1))
        marker_title = _normalize_line(match.group(2))
        markers.append((index, number, marker_title))

    if not markers:
        return _VersionResult(versions=[], notes=_trim_lines(section_lines), ranges=[])

    versions: list[dict[str, Any]] = []
    notes: list[str] = []
    ranges: list[tuple[int, int, int]] = []

    prefix = section_lines[: markers[0][0]]
    notes.extend(_trim_lines(prefix))

    for marker_index, (_, number, marker_title) in enumerate(markers):
        start_line = markers[marker_index][0] + 1
        end_line = markers[marker_index + 1][0] if marker_index + 1 < len(markers) else len(section_lines)
        block = section_lines[start_line:end_line]
        block_body, tail = _split_global_tail(block)
        leading_meta: list[str] = []
        while block_body and (_SUBTITLE_RE.match(block_body[0]) or _is_authorish_line(block_body[0])):
            normalized = _canonical_subtitle_line(block_body.pop(0))
            if normalized:
                leading_meta.append(normalized)
            block_body = _trim_lines(block_body)
        lyrics_lines, note_lines = _split_lyrics_and_notes(block_body)
        lyrics_lines, trailing_source_lines = _split_trailing_source_from_lyrics(lyrics_lines)
        note_lines = _trim_lines(leading_meta + note_lines)
        source_lines, note_lines = _take_leading_source(note_lines)
        source_lines = _trim_lines(trailing_source_lines + source_lines)

        if lyrics_lines:
            sort_order = len(versions) + 1
            title = marker_title or f"Вариант {number}"
            lyrics_text = _lines_to_text(lyrics_lines)
            source_text = _lines_to_text(source_lines)
            versions.append(
                {
                    "title": title,
                    "lang": _detect_lang(lyrics_text),
                    "lyrics": lyrics_text,
                    "source": source_text,
                    "sort_order": sort_order,
                }
            )
            # start/end are relative to content lines (not full body).
            start_rel = offset + markers[marker_index][0]
            end_rel = offset + start_line + len(block_body)
            ranges.append((sort_order, start_rel, end_rel))
        else:
            note_lines = _trim_lines(block_body + note_lines)

        notes.extend(note_lines)
        notes.extend(tail)

    return _VersionResult(versions=versions, notes=_trim_lines(notes), ranges=ranges)


class _HtmlToLinesParser(HTMLParser):
    _BLOCK_TAGS = {
        "p",
        "div",
        "tr",
        "td",
        "table",
        "li",
        "ul",
        "ol",
        "h1",
        "h2",
        "h3",
        "h4",
        "h5",
        "h6",
        "hr",
        "blockquote",
        "pre",
    }

    def __init__(self, html_dir: str) -> None:
        super().__init__(convert_charrefs=True)
        self._html_dir = html_dir
        self._skip_depth = 0
        self._in_body = False
        self._active_anchor: dict[str, Any] | None = None
        self.lines: list[str] = [""]
        self.line_index = 0
        self.links: list[dict[str, Any]] = []

    def _push_newline(self) -> None:
        self.lines.append("")
        self.line_index += 1

    def _append_text(self, text: str) -> None:
        if not text:
            return
        if self.lines[self.line_index] and not self.lines[self.line_index].endswith(" "):
            self.lines[self.line_index] += " "
        self.lines[self.line_index] += text.strip()

    def _resolve_url(self, raw_url: str) -> str:
        parsed = urlparse(raw_url)
        if parsed.scheme in {"http", "https"}:
            return raw_url
        if raw_url.startswith("//"):
            return f"https:{raw_url}"
        return raw_url

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        tag = tag.lower()
        attr_map = {k.lower(): (v or "") for k, v in attrs}
        if tag == "body":
            self._in_body = True
            return
        if not self._in_body:
            return
        if tag in {"script", "style", "noscript"}:
            self._skip_depth += 1
            return
        if self._skip_depth:
            return
        if tag == "br":
            self._push_newline()
            return
        if tag in self._BLOCK_TAGS:
            self._push_newline()
        if tag == "a":
            self._active_anchor = {
                "href": attr_map.get("href", "").strip(),
                "title_parts": [],
                "line": self.line_index,
            }
        if tag == "img":
            src = attr_map.get("src", "").strip()
            if not src:
                return
            alt = _normalize_line(attr_map.get("alt", ""))
            resolved = self._resolve_url(src)
            self.links.append(
                {
                    "kind": "image",
                    "title": alt or Path(urlparse(src).path).name or "image",
                    "url": resolved,
                    "line": self.line_index,
                }
            )

    def handle_endtag(self, tag: str) -> None:
        tag = tag.lower()
        if tag == "body":
            self._in_body = False
            return
        if not self._in_body:
            return
        if tag in {"script", "style", "noscript"}:
            self._skip_depth = max(0, self._skip_depth - 1)
            return
        if self._skip_depth:
            return
        if tag == "a" and self._active_anchor:
            href = self._active_anchor["href"]
            if href:
                title = _normalize_line("".join(self._active_anchor["title_parts"]))
                self.links.append(
                    {
                        "kind": "link",
                        "title": title or href,
                        "url": self._resolve_url(href),
                        "line": int(self._active_anchor["line"]),
                    }
                )
            self._active_anchor = None
        if tag in self._BLOCK_TAGS:
            self._push_newline()

    def handle_data(self, data: str) -> None:
        if not self._in_body:
            return
        if self._skip_depth:
            return
        if not data:
            return
        text = data.replace("\xa0", " ")
        text = re.sub(r"\s+", " ", text)
        if not text.strip():
            return
        if self._active_anchor is not None:
            self._active_anchor["title_parts"].append(text)
        self._append_text(text)


def _compact_lines_with_map(lines: list[str]) -> tuple[list[str], list[int]]:
    compact: list[str] = []
    index_map: list[int] = []
    for raw_index, line in enumerate(lines):
        normalized = _normalize_line(unescape(line))
        if normalized:
            compact.append(normalized)
            index_map.append(raw_index)
            continue
        if compact and compact[-1] != "":
            compact.append("")
            index_map.append(raw_index)

    while compact and compact[0] == "":
        compact.pop(0)
        index_map.pop(0)
    while compact and compact[-1] == "":
        compact.pop()
        index_map.pop()
    return compact, index_map


def parse_html_file(path: str | Path) -> dict[str, Any]:
    html_path = Path(path)
    html = html_path.read_text(encoding="utf-8", errors="replace")
    html_title_tag = _extract_html_title_tag(html)
    title = _extract_title(html)

    parser = _HtmlToLinesParser(str(html_path.parent))
    parser.feed(html)
    raw_lines = [_normalize_line(unescape(line)) for line in parser.lines]
    all_lines = [line for line in raw_lines]
    if not all_lines:
        all_lines = [title] if title else []

    heading_index = _find_heading_index(all_lines, title) if title else 0
    content_lines_raw = all_lines[heading_index + 1 :]
    footer_index = None
    for index, line in enumerate(content_lines_raw):
        if _FOOTER_RE.search(line):
            footer_index = index
            break
    if footer_index is not None:
        content_lines_raw = content_lines_raw[:footer_index]
    content_lines, content_map = _compact_lines_with_map(content_lines_raw)
    content_lines = _trim_lines(content_lines)

    subtitle_lines, subtitle_end = _extract_subtitle(content_lines)
    subtitle_lines = _merge_subtitle_lines(subtitle_lines, _authors_from_title_tag(html_title_tag, title))
    text_lines = _trim_lines(content_lines[subtitle_end:])
    lead_subtitle, lead_source, lead_notes, text_lines, lead_consumed = _extract_leading_metadata(text_lines)
    subtitle_lines = _merge_subtitle_lines(subtitle_lines, lead_subtitle)

    versions_heading = _find_versions_heading(text_lines)
    if versions_heading is None:
        main_lines = text_lines
        versions_result = _VersionResult(versions=[], notes=[], ranges=[])
    else:
        main_lines = _trim_lines(text_lines[:versions_heading])
        section_lines = _trim_lines(text_lines[versions_heading + 1 :])
        versions_result = _parse_versions(section_lines, offset=subtitle_end + lead_consumed + versions_heading + 1)

    main_lyrics_lines, main_notes_lines = _split_lyrics_and_notes(main_lines)
    main_lyrics_lines, trailing_source_lines = _split_trailing_source_from_lyrics(main_lyrics_lines)
    source_lines, main_notes_lines = _take_leading_source(main_notes_lines)
    source_lines = _trim_lines(lead_source + trailing_source_lines + source_lines)

    full_notes_lines = _trim_lines(lead_notes + main_notes_lines + versions_result.notes)

    song_lyrics = _lines_to_text(main_lyrics_lines)
    song_source = _lines_to_text(source_lines)
    song_notes = _lines_to_text(full_notes_lines)

    content_start_in_all = heading_index + 1
    content_end_in_all = content_start_in_all + len(content_lines_raw)

    ranges_raw: list[tuple[int, int, int]] = []
    for version_order, compact_start, compact_end in versions_result.ranges:
        if not content_map:
            continue
        if compact_start >= len(content_map):
            continue
        compact_end_safe = max(compact_start + 1, min(compact_end, len(content_map)))
        raw_start = content_map[compact_start]
        raw_end = content_map[compact_end_safe - 1] + 1
        ranges_raw.append((version_order, raw_start, raw_end))

    links: list[dict[str, Any]] = []
    sort_order = 1
    for raw_link in parser.links:
        raw_line = int(raw_link["line"])
        if raw_line < content_start_in_all or raw_line >= content_end_in_all:
            continue

        if raw_link["kind"] == "link":
            if not _is_external_url(raw_link["url"]):
                continue
            kind = "external"
        else:
            kind = "image"

        body_relative_line = raw_line - content_start_in_all
        version_sort_order = None
        for version_order, start_line, end_line in ranges_raw:
            if start_line <= body_relative_line < end_line:
                version_sort_order = version_order
                break

        links.append(
            {
                "title": _normalize_line(str(raw_link["title"])),
                "url": str(raw_link["url"]),
                "kind": kind,
                "version_sort_order": version_sort_order,
                "sort_order": sort_order,
            }
        )
        sort_order += 1

    song_title = _normalize_line(title or (all_lines[heading_index] if all_lines else ""))
    song_lang = _detect_lang(song_lyrics or song_title)

    return {
        "song": {
            "title": song_title,
            "subtitle": _lines_to_text(subtitle_lines),
            "lang": song_lang,
            "source": song_source,
            "notes": song_notes,
            "lyrics": song_lyrics,
        },
        "versions": versions_result.versions,
        "links": links,
    }
