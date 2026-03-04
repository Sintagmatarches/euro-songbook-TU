from __future__ import annotations

import importlib.util
import sys
import unittest
from collections import Counter
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
MODULE_PATH = ROOT / "scripts" / "refilter_song_catalog.py"


def _load_module():
    spec = importlib.util.spec_from_file_location("refilter_song_catalog", MODULE_PATH)
    if spec is None or spec.loader is None:
        raise RuntimeError("Unable to load refilter_song_catalog.py")
    mod = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = mod
    spec.loader.exec_module(mod)  # type: ignore[attr-defined]
    return mod


mod = _load_module()


def _signals(**kwargs):
    base = {
        "title_norm": "",
        "subtitle_norm": "",
        "lyrics_norm": "",
        "lyrics_song": "",
        "lyrics_comment_lines": 0,
        "source_norm": "",
        "notes_norm": "",
        "source_clean": "",
        "notes_clean": "",
        "source_removed_meta": 0,
        "notes_removed_meta": 0,
        "scope_short": "",
        "cyr_count": 0,
        "lat_count": 0,
        "old_ru_yat_count": 0,
        "old_ru_char_count": 0,
        "old_ru_final_hard_sign_count": 0,
        "uk_unique_chars": 0,
        "be_unique_chars": 0,
        "uk_word_marker_count": 0,
        "be_word_marker_count": 0,
        "uk_marker_count": 0,
        "be_marker_count": 0,
        "title_is_polluted": False,
        "notes_has_meta": False,
        "geo_votes": {},
        "geo_lyrics_votes": {},
    }
    base.update(kwargs)
    return mod.RowSignals(**base)


class RefilterGuardsTests(unittest.TestCase):
    def test_notes_meta_line_removed(self) -> None:
        text = "text\nmessage_id: 123\nimport_source: Telegram\ntail"
        cleaned = mod.drop_import_meta_lines(text)
        self.assertEqual(cleaned, "text\ntail")

    def test_notes_meta_inline_removed_without_pipe(self) -> None:
        text = "intro\ndate: 2024-01-01 message_id: 44 import_source: tg\ntail"
        cleaned = mod.drop_import_meta_lines(text)
        self.assertEqual(cleaned, "intro\ntail")

    def test_title_repair_from_lyrics_head(self) -> None:
        title = "Music: Test Lyrics: Test"
        lyrics = "Music: Author\nShining sun\nAbove the field"
        notes = ""
        new_title, new_lyrics, new_notes, repaired = mod.repair_title_from_lyrics(title, lyrics, notes)
        self.assertTrue(repaired)
        self.assertEqual(new_title, "Shining sun")
        self.assertIn("Music: Author", new_notes)
        self.assertTrue(new_lyrics.startswith("Above the field"))

    def test_lyrics_commentary_moved_to_notes(self) -> None:
        title = "Song"
        lyrics = "First line\nSource: Archive edition 1977\nSecond line"
        notes = "existing note"
        _t, new_lyrics, new_notes, _repaired = mod.repair_title_from_lyrics(title, lyrics, notes)
        self.assertEqual(new_lyrics, "First line\nSecond line")
        self.assertIn("Source: Archive edition 1977", new_notes)

    def test_row_signals_ignore_commentary_for_language_sample(self) -> None:
        row = mod.SongRow(
            id="x",
            title="",
            subtitle="",
            lang="ru",
            country="",
            year="",
            lyrics="First line\nПримечание: это комментарий на русском",
            source="",
            notes="",
            status="published",
            created_at="",
        )
        policy = mod.FilterPolicy()
        country_values = {"other_countries", "other_movements"}
        signals = mod.build_row_signals(row, country_values, policy)
        self.assertEqual(signals.lyrics_song, "First line")
        self.assertGreaterEqual(signals.lyrics_comment_lines, 1)

    def test_title_pollution_flag_when_no_candidate(self) -> None:
        flags = Counter()
        signals = _signals()
        out_title, _out_notes, _out_lang = mod.validate_row_update(
            clean_title="Music: X Lyrics: Y",
            clean_notes="ok",
            final_lang="ru",
            signals=signals,
            validation_flags=flags,
        )
        self.assertEqual(out_title, "Music: X Lyrics: Y")
        self.assertEqual(flags["title_pollution"], 1)

    def test_aggressive_ru_to_uk_by_markers(self) -> None:
        signals = _signals(
            uk_marker_count=3,
            be_marker_count=0,
            uk_unique_chars=2,
            uk_word_marker_count=1,
            lyrics_norm="\u0457 \u0454 \u0491",
            lyrics_song="\u0457 \u0454 \u0491",
            cyr_count=30,
            lat_count=0,
        )
        new_lang, reason, forced = mod.force_cyr_lang_aggressive("ru", "ru", "ru_default", signals)
        self.assertEqual(new_lang, "uk")
        self.assertTrue(forced)
        self.assertEqual(reason, "uk_marker")

    def test_aggressive_ru_to_be_by_markers(self) -> None:
        signals = _signals(
            uk_marker_count=0,
            be_marker_count=3,
            be_unique_chars=1,
            be_word_marker_count=2,
            lyrics_norm="\u045e",
            lyrics_song="\u045e",
            cyr_count=30,
            lat_count=0,
        )
        new_lang, reason, forced = mod.force_cyr_lang_aggressive("ru", "ru", "ru_default", signals)
        self.assertEqual(new_lang, "be")
        self.assertTrue(forced)
        self.assertEqual(reason, "be_marker")

    def test_aggressive_non_ru_to_uk_by_markers(self) -> None:
        signals = _signals(
            uk_marker_count=3,
            be_marker_count=0,
            uk_unique_chars=2,
            uk_word_marker_count=1,
            lyrics_norm="\u0457 \u0454 \u0491",
            lyrics_song="\u0457 \u0454 \u0491",
            cyr_count=30,
            lat_count=0,
        )
        new_lang, reason, forced = mod.force_cyr_lang_aggressive("pl", "ru", "base", signals)
        self.assertEqual(new_lang, "uk")
        self.assertTrue(forced)
        self.assertEqual(reason, "uk_marker")

    def test_should_apply_uk_marker_even_if_delegate_declines(self) -> None:
        class _LangMod:
            @staticmethod
            def should_apply_language_change(_old: str, _new: str, _confidence: float, _reason: str) -> bool:
                return False

        self.assertTrue(mod.should_apply_language_change("ru", "uk", 0.99, "uk_marker", _LangMod()))

    def test_weak_markers_do_not_raise_lang_scope_conflict(self) -> None:
        flags = Counter()
        signals = _signals(
            uk_marker_count=2,
            be_marker_count=0,
            uk_unique_chars=0,
            uk_word_marker_count=2,
            cyr_count=40,
            lat_count=0,
        )
        mod.validate_row_update(
            clean_title="Title",
            clean_notes="ok",
            final_lang="ru",
            signals=signals,
            validation_flags=flags,
        )
        self.assertEqual(flags["lang_scope_conflict"], 0)

    def test_old_ru_yat_blocks_uk_force(self) -> None:
        signals = _signals(
            old_ru_yat_count=1,
            old_ru_char_count=1,
            uk_unique_chars=2,
            uk_word_marker_count=1,
            uk_marker_count=3,
            cyr_count=80,
            lat_count=0,
        )
        new_lang, reason, forced = mod.force_cyr_lang_aggressive("ru", "uk", "base", signals)
        self.assertEqual(new_lang, "uk")
        self.assertFalse(forced)
        self.assertIn("old_ru_orthography_guard", reason)

    def test_old_ru_yat_suppresses_lang_scope_conflict(self) -> None:
        flags = Counter()
        signals = _signals(
            old_ru_yat_count=1,
            old_ru_char_count=1,
            uk_unique_chars=2,
            uk_word_marker_count=1,
            uk_marker_count=3,
            cyr_count=120,
            lat_count=0,
        )
        mod.validate_row_update(
            clean_title="Title",
            clean_notes="ok",
            final_lang="ru",
            signals=signals,
            validation_flags=flags,
        )
        self.assertEqual(flags.get("lang_scope_conflict", 0), 0)

    def test_country_ambiguity_to_other_countries(self) -> None:
        country_values = {"belgium_1900", "netherlands_1900", "other_countries", "france_fifth_republic_1958"}
        aliases = mod.build_country_aliases(country_values)
        policy = mod.FilterPolicy(country_ambiguity_policy="other_countries")
        row = mod.SongRow(
            id="x1",
            title="",
            subtitle="",
            lang="fr",
            country="",
            year="",
            lyrics="",
            source="",
            notes="",
            status="published",
            created_at="",
        )
        signals = _signals(
            scope_short="",
            geo_votes={"belgium_1900": 5, "netherlands_1900": 4},
            geo_lyrics_votes={"belgium_1900": 1, "netherlands_1900": 1},
        )
        new_country, reason, ambiguous, _low = mod.classify_country(
            row, signals, "fr", None, country_values, aliases, policy
        )
        self.assertTrue(ambiguous)
        self.assertEqual(new_country, "other_countries")
        self.assertEqual(reason, "country_ambiguous_to_other")

    def test_forced_country_by_id_priority(self) -> None:
        country_values = {"white_emigration", "other_countries"}
        aliases = mod.build_country_aliases(country_values)
        policy = mod.FilterPolicy()
        row = mod.SongRow(
            id="apemigr_demo",
            title="",
            subtitle="",
            lang="ru",
            country="",
            year="",
            lyrics="",
            source="",
            notes="",
            status="published",
            created_at="",
        )
        signals = _signals(scope_short="belgium france", geo_votes={"other_countries": 10})
        new_country, reason, _amb, _low = mod.classify_country(
            row, signals, "ru", None, country_values, aliases, policy
        )
        self.assertEqual(new_country, "white_emigration")
        self.assertEqual(reason, "country_forced_by_id")

    def test_keep_old_movement_guard(self) -> None:
        country_values = {
            "armia_krajowa",
            "poland_1989",
            "other_countries",
            "second_polish_republic_1918_1939",
            "polish_peoples_republic_1952_1989",
        }
        aliases = mod.build_country_aliases(country_values)
        policy = mod.FilterPolicy(country_ambiguity_policy="other_countries")
        row = mod.SongRow(
            id="x2",
            title="",
            subtitle="",
            lang="pl",
            country="armia_krajowa",
            year="1980",
            lyrics="",
            source="",
            notes="",
            status="published",
            created_at="",
        )
        signals = _signals(scope_short="", geo_votes={}, geo_lyrics_votes={})
        new_country, reason, _amb, _low = mod.classify_country(
            row, signals, "pl", 1980, country_values, aliases, policy
        )
        self.assertEqual(new_country, "armia_krajowa")
        self.assertEqual(reason, "keep_old_movement")


if __name__ == "__main__":
    unittest.main()

