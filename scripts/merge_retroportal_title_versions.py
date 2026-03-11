from __future__ import annotations

import argparse
import json
import sys
import time
from dataclasses import dataclass
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from scripts.import_retroportal import (
    DEFAULT_DB_NAME,
    OUT_DIR,
    esc_sql,
    normalize_inline,
    normalize_lyrics_key,
    normalize_multiline,
    run_remote_sql,
    run_wrangle_query,
    sql_nullable,
    stable_hash,
)


RETRO_ACTIONS_PATH = OUT_DIR / "actions.jsonl"
MERGE_OUT_DIR = ROOT / "out" / "retroportal_merge"


@dataclass
class SongRow:
    id: str
    title: str
    subtitle: str | None
    source: str | None
    notes: str | None
    lyrics: str
    created_at: str | None
    is_rpp: bool


def sql_string_list(values: list[str]) -> str:
    return ", ".join(f"'{esc_sql(value)}'" for value in values)


def load_retroportal_titles() -> list[str]:
    titles: set[str] = set()
    with RETRO_ACTIONS_PATH.open("r", encoding="utf-8") as fh:
        for line in fh:
            line = line.strip()
            if not line:
                continue
            row = json.loads(line)
            title = normalize_inline(row.get("title"))
            if title:
                titles.add(title)
    return sorted(titles)


def load_songs_by_exact_title(titles: list[str], db_name: str) -> dict[str, list[SongRow]]:
    songs_by_title: dict[str, list[SongRow]] = {}
    batch_size = 80
    for start in range(0, len(titles), batch_size):
        chunk = titles[start : start + batch_size]
        sql = (
            "SELECT id, title, subtitle, source, notes, lyrics, created_at "
            "FROM songs "
            "WHERE lower(coalesce(lang,''))='ru' "
            f"AND title IN ({sql_string_list(chunk)}) "
            "ORDER BY title ASC, datetime(created_at) ASC, id ASC;"
        )
        for row in run_wrangle_query(sql, db_name):
            song = SongRow(
                id=str(row.get("id") or "").strip(),
                title=normalize_inline(row.get("title")),
                subtitle=normalize_inline(row.get("subtitle")) or None,
                source=normalize_inline(row.get("source")) or None,
                notes=normalize_inline(row.get("notes")) or None,
                lyrics=normalize_multiline(row.get("lyrics")),
                created_at=normalize_inline(row.get("created_at")) or None,
                is_rpp=str(row.get("id") or "").strip().startswith("rpp_"),
            )
            if not song.id or not song.title:
                continue
            songs_by_title.setdefault(song.title, []).append(song)
    return songs_by_title


def load_versions_and_links(song_ids: list[str], db_name: str) -> tuple[dict[str, list[dict[str, Any]]], dict[str, list[dict[str, Any]]]]:
    versions_by_song: dict[str, list[dict[str, Any]]] = {}
    links_by_song: dict[str, list[dict[str, Any]]] = {}
    batch_size = 80
    unique_ids = sorted(set(song_ids))
    for start in range(0, len(unique_ids), batch_size):
        chunk = unique_ids[start : start + batch_size]
        sql_versions = (
            "SELECT id, song_id, title, lang, lyrics, lyrics_meta_json, source, sort_order "
            "FROM song_versions "
            f"WHERE song_id IN ({sql_string_list(chunk)}) "
            "ORDER BY song_id ASC, sort_order ASC, id ASC;"
        )
        for row in run_wrangle_query(sql_versions, db_name):
            song_id = str(row.get("song_id") or "").strip()
            if not song_id:
                continue
            versions_by_song.setdefault(song_id, []).append(
                {
                    "id": str(row.get("id") or "").strip(),
                    "title": normalize_inline(row.get("title")) or None,
                    "lang": normalize_inline(row.get("lang")) or None,
                    "lyrics": normalize_multiline(row.get("lyrics")),
                    "lyrics_meta_json": str(row.get("lyrics_meta_json") or "{}"),
                    "source": normalize_inline(row.get("source")) or None,
                    "sort_order": int(row.get("sort_order") or 0),
                }
            )
        sql_links = (
            "SELECT id, song_id, title, url, kind, version_id, sort_order "
            "FROM song_links "
            f"WHERE song_id IN ({sql_string_list(chunk)}) "
            "ORDER BY song_id ASC, sort_order ASC, id ASC;"
        )
        for row in run_wrangle_query(sql_links, db_name):
            song_id = str(row.get("song_id") or "").strip()
            if not song_id:
                continue
            links_by_song.setdefault(song_id, []).append(
                {
                    "id": str(row.get("id") or "").strip(),
                    "title": normalize_inline(row.get("title")) or None,
                    "url": normalize_inline(row.get("url")),
                    "kind": normalize_inline(row.get("kind")) or None,
                    "version_id": normalize_inline(row.get("version_id")) or None,
                    "sort_order": int(row.get("sort_order") or 0),
                }
            )
    return versions_by_song, links_by_song


def choose_target_song(songs: list[SongRow], versions_by_song: dict[str, list[dict[str, Any]]]) -> SongRow:
    ranked = sorted(
        songs,
        key=lambda song: (
            0 if song.is_rpp else 1,
            len(versions_by_song.get(song.id, [])),
            len(song.lyrics),
            0 if song.subtitle else 1,
            -len(song.source or ""),
            song.id,
        ),
        reverse=True,
    )
    return ranked[0]


def build_merge_operations(
    title: str,
    songs: list[SongRow],
    versions_by_song: dict[str, list[dict[str, Any]]],
    links_by_song: dict[str, list[dict[str, Any]]],
) -> dict[str, Any]:
    target = choose_target_song(songs, versions_by_song)
    sources = [song for song in songs if song.id != target.id]

    existing_lyrics: set[str] = set()
    version_id_by_lyrics: dict[str, str | None] = {}
    target_main_norm = normalize_lyrics_key(target.lyrics)
    if target_main_norm:
        existing_lyrics.add(target_main_norm)
        version_id_by_lyrics[target_main_norm] = None

    next_version_sort = 1
    for version in versions_by_song.get(target.id, []):
        lyrics_norm = normalize_lyrics_key(version.get("lyrics"))
        if lyrics_norm:
            existing_lyrics.add(lyrics_norm)
            version_id_by_lyrics[lyrics_norm] = str(version.get("id") or "").strip() or None
        next_version_sort = max(next_version_sort, int(version.get("sort_order") or 0) + 1)

    existing_link_urls = {
        normalize_inline(link.get("url"))
        for link in links_by_song.get(target.id, [])
        if normalize_inline(link.get("url"))
    }
    next_link_sort = max([int(link.get("sort_order") or 0) for link in links_by_song.get(target.id, [])] + [0]) + 1

    version_inserts: list[dict[str, Any]] = []
    link_inserts: list[dict[str, Any]] = []
    delete_song_ids: list[str] = []
    merged_song_ids: list[str] = []

    for source_song in sources:
        merged_song_ids.append(source_song.id)
        source_version_map: dict[str, str | None] = {}

        main_norm = normalize_lyrics_key(source_song.lyrics)
        if main_norm and main_norm not in existing_lyrics:
            version_id = f"mrv_{target.id}_{stable_hash(source_song.id + '|main|' + main_norm, 16)}"
            version_inserts.append(
                {
                    "id": version_id,
                    "song_id": target.id,
                    "title": source_song.subtitle or source_song.title,
                    "lang": "ru",
                    "lyrics": source_song.lyrics,
                    "lyrics_meta_json": "{}",
                    "source": source_song.source,
                    "sort_order": next_version_sort,
                }
            )
            existing_lyrics.add(main_norm)
            version_id_by_lyrics[main_norm] = version_id
            next_version_sort += 1
        source_version_map["__main__"] = version_id_by_lyrics.get(main_norm)

        for source_version in versions_by_song.get(source_song.id, []):
            lyrics_norm = normalize_lyrics_key(source_version.get("lyrics"))
            mapped_version_id = version_id_by_lyrics.get(lyrics_norm)
            if lyrics_norm and lyrics_norm not in existing_lyrics:
                mapped_version_id = f"mrv_{target.id}_{stable_hash(source_song.id + '|version|' + str(source_version.get('id') or '') + '|' + lyrics_norm, 16)}"
                version_inserts.append(
                    {
                        "id": mapped_version_id,
                        "song_id": target.id,
                        "title": normalize_inline(source_version.get("title")) or source_song.subtitle or source_song.title,
                        "lang": normalize_inline(source_version.get("lang")) or "ru",
                        "lyrics": normalize_multiline(source_version.get("lyrics")),
                        "lyrics_meta_json": str(source_version.get("lyrics_meta_json") or "{}"),
                        "source": normalize_inline(source_version.get("source")) or source_song.source,
                        "sort_order": next_version_sort,
                    }
                )
                existing_lyrics.add(lyrics_norm)
                version_id_by_lyrics[lyrics_norm] = mapped_version_id
                next_version_sort += 1
            source_version_id = str(source_version.get("id") or "").strip()
            if source_version_id:
                source_version_map[source_version_id] = mapped_version_id

        for source_link in links_by_song.get(source_song.id, []):
            url = normalize_inline(source_link.get("url"))
            if not url or url in existing_link_urls:
                continue
            original_version_id = normalize_inline(source_link.get("version_id")) or ""
            mapped_version_id = source_version_map.get(original_version_id)
            link_inserts.append(
                {
                    "id": f"mrl_{target.id}_{stable_hash(source_song.id + '|' + url, 16)}",
                    "song_id": target.id,
                    "title": normalize_inline(source_link.get("title")) or source_song.title,
                    "url": url,
                    "kind": normalize_inline(source_link.get("kind")) or None,
                    "version_id": mapped_version_id,
                    "sort_order": next_link_sort,
                }
            )
            existing_link_urls.add(url)
            next_link_sort += 1

        delete_song_ids.append(source_song.id)

    return {
        "title": title,
        "target_song_id": target.id,
        "merged_song_ids": merged_song_ids,
        "version_inserts": version_inserts,
        "link_inserts": link_inserts,
        "delete_song_ids": delete_song_ids,
    }


def build_sql_lines(operations: list[dict[str, Any]]) -> list[str]:
    lines: list[str] = []
    for operation in operations:
        for version in operation.get("version_inserts", []):
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
        for link in operation.get("link_inserts", []):
            lines.append(
                "INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ("
                f"'{esc_sql(link['id'])}',"
                f"'{esc_sql(link['song_id'])}',"
                f"{sql_nullable(link.get('title'))},"
                f"'{esc_sql(link['url'])}',"
                f"{sql_nullable(link.get('kind'))},"
                f"{sql_nullable(link.get('version_id'))},"
                f"{int(link['sort_order'])}"
                ");"
            )
        for source_song_id in operation.get("delete_song_ids", []):
            safe_id = esc_sql(source_song_id)
            lines.append(f"DELETE FROM song_links WHERE song_id='{safe_id}';")
            lines.append(f"DELETE FROM song_versions WHERE song_id='{safe_id}';")
            lines.append(f"DELETE FROM songs_fts WHERE song_id='{safe_id}';")
            lines.append(f"DELETE FROM songs WHERE id='{safe_id}';")
    return lines


def execute_sql_batches(sql_lines: list[str], db_name: str, batch_size: int) -> list[dict[str, Any]]:
    reports: list[dict[str, Any]] = []
    for start in range(0, len(sql_lines), batch_size):
        chunk = sql_lines[start : start + batch_size]
        sql_text = "\n".join(chunk)
        returncode, output = run_remote_sql(sql_text, db_name)
        report = {
            "batch": start // batch_size + 1,
            "statements": len(chunk),
            "returncode": returncode,
        }
        if returncode != 0:
            report["error"] = output[:2000]
            reports.append(report)
            raise RuntimeError(output[:4000])
        reports.append(report)
    return reports


def main() -> None:
    if hasattr(sys.stdout, "reconfigure"):
        sys.stdout.reconfigure(encoding="utf-8", errors="replace")

    parser = argparse.ArgumentParser(description="Merge retroportal exact-title duplicates into song_versions.")
    parser.add_argument("--db-name", default=DEFAULT_DB_NAME)
    parser.add_argument("--execute-remote", action="store_true")
    parser.add_argument("--remote-batch-size", type=int, default=180)
    args = parser.parse_args()

    MERGE_OUT_DIR.mkdir(parents=True, exist_ok=True)

    titles = load_retroportal_titles()
    songs_by_title = load_songs_by_exact_title(titles, args.db_name)
    duplicate_groups = {title: rows for title, rows in songs_by_title.items() if len(rows) >= 2}
    all_song_ids = [song.id for rows in duplicate_groups.values() for song in rows]
    versions_by_song, links_by_song = load_versions_and_links(all_song_ids, args.db_name)

    operations: list[dict[str, Any]] = []
    for title, rows in sorted(duplicate_groups.items()):
        operation = build_merge_operations(title, rows, versions_by_song, links_by_song)
        if not operation["delete_song_ids"]:
            continue
        operations.append(operation)

    sql_lines = build_sql_lines(operations)
    sql_path = MERGE_OUT_DIR / "merge_retroportal_exact_titles.sql"
    sql_path.write_text("\n".join(sql_lines) + ("\n" if sql_lines else ""), encoding="utf-8")

    actions_path = MERGE_OUT_DIR / "merge_actions.jsonl"
    with actions_path.open("w", encoding="utf-8") as fh:
        for operation in operations:
            fh.write(json.dumps(operation, ensure_ascii=False) + "\n")

    report: dict[str, Any] = {
        "titles_considered": len(titles),
        "duplicate_title_groups": len(duplicate_groups),
        "operations": len(operations),
        "merged_source_songs": sum(len(operation.get("delete_song_ids", [])) for operation in operations),
        "versions_inserted": sum(len(operation.get("version_inserts", [])) for operation in operations),
        "links_inserted": sum(len(operation.get("link_inserts", [])) for operation in operations),
        "sql_path": str(sql_path),
        "actions_path": str(actions_path),
        "remote_batches": [],
        "sample_titles": [operation["title"] for operation in operations[:20]],
    }

    if args.execute_remote and sql_lines:
        report["remote_batches"] = execute_sql_batches(sql_lines, args.db_name, args.remote_batch_size)

    report_path = MERGE_OUT_DIR / "report.json"
    report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False))


if __name__ == "__main__":
    main()
