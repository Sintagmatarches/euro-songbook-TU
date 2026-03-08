from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path
from typing import Any
from urllib.parse import urljoin, urlparse
from urllib.request import urlopen

ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from parse_html_file import parse_html_file  # noqa: E402


INDEX_URL = "http://a-pesni.org/rus-jap/Rus-jap.php"
COUNTRY = "russo_japanese_war_1904_1905"
IMPORT_TAGS_JSON = '["русско-японская война","a-pesni.org"]'

NAV_TITLES = {
    "главная",
    "библиотека",
    "коллекция нот",
    "сквоты",
    "театр",
    "о проекте",
}
SKIP_TITLE_PREFIXES = (
    "тайны создания русской народной песни",
)


def esc_sql(value: Any) -> str:
    return str(value or "").replace("'", "''")


def decode_html(raw: bytes) -> str:
    head = raw[:4096].decode("latin1", errors="ignore")
    enc_match = re.search(r"charset\s*=\s*['\"]?([a-zA-Z0-9_-]+)", head, flags=re.IGNORECASE)
    preferred = enc_match.group(1).lower() if enc_match else ""
    tried: list[str] = []
    for enc in [preferred, "utf-8", "windows-1251", "cp1251", "koi8-r"]:
        if not enc or enc in tried:
            continue
        tried.append(enc)
        try:
            return raw.decode(enc)
        except Exception:
            continue
    return raw.decode("utf-8", errors="replace")


def extract_song_links(index_html: str) -> list[tuple[str, str]]:
    out: list[tuple[str, str]] = []
    for href, anchor in re.findall(
        r"<a[^>]+href\s*=\s*['\"]([^'\"]+)['\"][^>]*>(.*?)</a>",
        index_html,
        flags=re.IGNORECASE | re.DOTALL,
    ):
        text = re.sub(r"<[^>]+>", " ", anchor)
        text = re.sub(r"\s+", " ", text).strip()
        if not text:
            continue
        if text.lower() in NAV_TITLES:
            continue
        url = urljoin(INDEX_URL, href)
        if "a-pesni.org" not in url:
            continue
        parsed = urlparse(url)
        if not parsed.path or parsed.path in {"/", "/index.php", "/letra.php", "/collection.php", "/about.php"}:
            continue
        out.append((url, text))
    unique: list[tuple[str, str]] = []
    seen: set[str] = set()
    for url, text in out:
        if url in seen:
            continue
        seen.add(url)
        unique.append((url, text))
    return unique


def make_song_id(stem: str, used: set[str]) -> str:
    base = re.sub(r"[^a-z0-9_]+", "_", stem.lower()) or "song"
    candidate = f"rjw_{base}"
    if candidate not in used:
        used.add(candidate)
        return candidate
    i = 2
    while True:
        nxt = f"{candidate}_{i}"
        if nxt not in used:
            used.add(nxt)
            return nxt
        i += 1


def sql_nullable(value: str | None) -> str:
    if value is None:
        return "NULL"
    txt = str(value).strip()
    if not txt:
        return "NULL"
    return f"'{esc_sql(txt)}'"


def _extract_year_from_line(line: str) -> int | None:
    match = re.search(r"\b(18\d{2}|19\d{2}|20\d{2})\b", line)
    if not match:
        return None
    year = int(match.group(1))
    if year < 1800 or year > 2026:
        return None
    return year


def infer_song_year(source: str, notes: str, lyrics: str) -> str | None:
    def unwrap(line: str) -> str:
        text = line.strip()
        for _ in range(2):
            if len(text) >= 2 and text[0] in "<([{" and text[-1] in ">)]}":
                text = text[1:-1].strip()
                continue
            break
        return text

    def looks_like_date(line: str) -> bool:
        text = unwrap(line)
        if re.fullmatch(r"(18\d{2}|19\d{2}|20\d{2})(?:\s*[-–—]\s*(18\d{2}|19\d{2}|20\d{2}))?", text):
            return True
        if re.fullmatch(r"\d{1,2}[./-]\d{1,2}[./-](18\d{2}|19\d{2}|20\d{2})", text):
            return True
        if "," in text:
            return False
        if re.fullmatch(r"\d{1,2}\s+\S{3,20}\s+(18\d{2}|19\d{2}|20\d{2})\.?", text):
            return True
        if re.fullmatch(r"\S{3,20}\s+(18\d{2}|19\d{2}|20\d{2})", text):
            return True
        return False

    def find_from_block(block: str) -> int | None:
        lines = [line.strip() for line in str(block or "").splitlines()]
        lines = [line for line in lines if line]
        for line in lines[:20]:
            if looks_like_date(line):
                year = _extract_year_from_line(line)
                if year:
                    return year
            if re.search(r"\b(без подписи|газета|журнал|выпуск|вып\.|№|номер)\b", line.lower()):
                year = _extract_year_from_line(line)
                if year:
                    return year
        return None

    source_year = find_from_block(source)
    if source_year:
        return str(source_year)
    notes_year = find_from_block(notes)
    if notes_year:
        return str(notes_year)

    war_range = re.search(
        r"(?:русско[-\s]японск\w*|войн\w*)[^.\n]{0,80}\b(18\d{2}|19\d{2}|20\d{2})\s*[-–—]\s*(18\d{2}|19\d{2}|20\d{2})\b",
        str(notes or ""),
        flags=re.IGNORECASE,
    )
    if war_range:
        year = int(war_range.group(1))
        if 1800 <= year <= 2026:
            return str(year)

    tail_lines = [line.strip() for line in str(lyrics or "").splitlines() if line.strip()]
    for line in tail_lines[-8:]:
        if re.match(r"^\d{4}(?:\s*[-–—]\s*\d{4})?$", line):
            year = _extract_year_from_line(line)
            if year:
                return str(year)
    return None


def main() -> None:
    parser = argparse.ArgumentParser(description="Import songs from a-pesni Rus-Jap section into D1.")
    parser.add_argument("--execute-remote", action="store_true", help="Execute generated SQL in remote D1.")
    parser.add_argument("--db-name", default="euro-songbook-db", help="Wrangler D1 database name.")
    parser.add_argument("--refresh", action="store_true", help="Re-download source HTML even if fixture exists.")
    args = parser.parse_args()

    fixtures_dir = ROOT / "fixtures" / "russo_japanese_war"
    out_dir = ROOT / "out"
    tmp_sql = ROOT / "tmp_import_russo_japanese_war.sql"
    import_json = out_dir / "russo_japanese_war_import.json"
    fixtures_dir.mkdir(parents=True, exist_ok=True)
    out_dir.mkdir(parents=True, exist_ok=True)

    index_raw = urlopen(INDEX_URL, timeout=30).read()
    index_html = decode_html(index_raw)
    links = extract_song_links(index_html)

    songs_payload: list[dict[str, Any]] = []
    sql_lines: list[str] = [
        f"DELETE FROM song_links WHERE song_id IN (SELECT id FROM songs WHERE lower(coalesce(country,''))='{COUNTRY}');",
        f"DELETE FROM song_versions WHERE song_id IN (SELECT id FROM songs WHERE lower(coalesce(country,''))='{COUNTRY}');",
        f"DELETE FROM songs_fts WHERE song_id IN (SELECT id FROM songs WHERE lower(coalesce(country,''))='{COUNTRY}');",
        f"DELETE FROM songs WHERE lower(coalesce(country,''))='{COUNTRY}';",
    ]

    used_ids: set[str] = set()
    imported = 0
    skipped = 0

    for page_url, anchor_text in links:
        path = urlparse(page_url).path
        stem = Path(path).stem or f"song_{imported + skipped + 1}"
        file_path = fixtures_dir / f"{stem}.html"

        if args.refresh or not file_path.exists():
            raw = urlopen(page_url, timeout=30).read()
            html = decode_html(raw)
            file_path.write_text(html, encoding="utf-8")
        else:
            html = file_path.read_text(encoding="utf-8", errors="replace")

        parsed = parse_html_file(file_path)
        title = str(parsed.get("song", {}).get("title", "")).strip()
        lyrics = str(parsed.get("song", {}).get("lyrics", "")).strip()

        if not title or not lyrics:
            skipped += 1
            continue
        lowered_title = title.lower()
        if any(lowered_title.startswith(prefix) for prefix in SKIP_TITLE_PREFIXES):
            skipped += 1
            continue

        song_id = make_song_id(stem, used_ids)
        song = parsed["song"]
        versions = parsed.get("versions", []) or []
        links_raw = parsed.get("links", []) or []

        version_id_by_sort: dict[int, str] = {}
        version_rows: list[dict[str, Any]] = []
        for idx, version in enumerate(versions, start=1):
            order = int(version.get("sort_order") or idx)
            version_id = f"{song_id}_v{order}"
            version_id_by_sort[order] = version_id
            version_rows.append(
                {
                    "id": version_id,
                    "song_id": song_id,
                    "title": str(version.get("title", "")).strip() or None,
                    "lang": str(version.get("lang", "")).strip() or str(song.get("lang", "")).strip() or "ru",
                    "lyrics": str(version.get("lyrics", "")).strip(),
                    "source": str(version.get("source", "")).strip() or None,
                    "sort_order": order,
                }
            )

        link_rows: list[dict[str, Any]] = []
        for idx, link in enumerate(links_raw, start=1):
            raw_url = str(link.get("url", "")).strip()
            if not raw_url:
                continue
            resolved_url = raw_url if re.match(r"^https?://", raw_url, flags=re.IGNORECASE) else urljoin(page_url, raw_url)
            version_sort = link.get("version_sort_order")
            version_id = None
            if isinstance(version_sort, int):
                version_id = version_id_by_sort.get(version_sort)
            link_rows.append(
                {
                    "id": f"{song_id}_l{idx}",
                    "song_id": song_id,
                    "title": str(link.get("title", "")).strip() or None,
                    "url": resolved_url,
                    "kind": str(link.get("kind", "")).strip() or "external",
                    "version_id": version_id,
                    "sort_order": int(link.get("sort_order") or idx),
                }
            )

        payload_item = {
            "id": song_id,
            "url": page_url,
            "anchor_title": anchor_text,
            "title": title,
            "subtitle": str(song.get("subtitle", "")).strip() or "",
            "lang": str(song.get("lang", "")).strip() or "ru",
            "country": COUNTRY,
            "source": str(song.get("source", "")).strip() or "",
            "notes": str(song.get("notes", "")).strip() or "",
            "year": infer_song_year(str(song.get("source", "")), str(song.get("notes", "")), lyrics),
            "lyrics": lyrics,
            "versions": version_rows,
            "links": link_rows,
        }
        songs_payload.append(payload_item)

        sql_lines.append(
            "INSERT OR REPLACE INTO songs ("
            "id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at"
            ") VALUES ("
            f"'{esc_sql(song_id)}',"
            f"'{esc_sql(title)}',"
            f"{sql_nullable(payload_item['subtitle'])},"
            f"'{esc_sql(payload_item['lang'])}',"
            f"'{COUNTRY}',"
            f"NULL,{sql_nullable(payload_item['year'])},"
            f"{sql_nullable(payload_item['source'])},"
            f"{sql_nullable(payload_item['notes'])},"
            f"'{esc_sql(lyrics)}',"
            f"'{esc_sql(IMPORT_TAGS_JSON)}',"
            "1,'published',"
            "COALESCE((SELECT created_at FROM songs WHERE id="
            f"'{esc_sql(song_id)}'"
            "), datetime('now')),"
            "datetime('now'));"
        )
        sql_lines.append(
            f"INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('{esc_sql(song_id)}','{esc_sql(title)}','{esc_sql(lyrics)}');"
        )

        for version in version_rows:
            if not version["lyrics"]:
                continue
            sql_lines.append(
                "INSERT OR REPLACE INTO song_versions (id,song_id,title,lang,lyrics,source,sort_order) VALUES ("
                f"'{esc_sql(version['id'])}',"
                f"'{esc_sql(song_id)}',"
                f"{sql_nullable(version['title'])},"
                f"{sql_nullable(version['lang'])},"
                f"'{esc_sql(version['lyrics'])}',"
                f"{sql_nullable(version['source'])},"
                f"{int(version['sort_order'])}"
                ");"
            )

        for link in link_rows:
            sql_lines.append(
                "INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ("
                f"'{esc_sql(link['id'])}',"
                f"'{esc_sql(song_id)}',"
                f"{sql_nullable(link['title'])},"
                f"'{esc_sql(link['url'])}',"
                f"{sql_nullable(link['kind'])},"
                f"{sql_nullable(link['version_id'])},"
                f"{int(link['sort_order'])}"
                ");"
            )

        imported += 1

    sql_lines.append("")
    tmp_sql.write_text("\n".join(sql_lines), encoding="utf-8")
    import_json.write_text(
        __import__("json").dumps({"country": COUNTRY, "total": imported, "items": songs_payload}, ensure_ascii=False, indent=2)
        + "\n",
        encoding="utf-8",
    )

    print(f"Collected links: {len(links)}")
    print(f"Imported songs: {imported}")
    print(f"Skipped pages: {skipped}")
    print(f"SQL file: {tmp_sql}")
    print(f"JSON file: {import_json}")

    if not args.execute_remote:
        return

    npx_exe = "npx.cmd" if sys.platform.startswith("win") else "npx"
    cmd = [
        npx_exe,
        "wrangler",
        "d1",
        "execute",
        args.db_name,
        "--remote",
        "--file",
        str(tmp_sql),
    ]
    subprocess.run(cmd, cwd=ROOT, check=True)
    print("Remote D1 import completed.")


if __name__ == "__main__":
    main()
