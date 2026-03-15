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
        "kk_unique_chars": 0,
        "uz_unique_chars": 0,
        "uk_word_marker_count": 0,
        "be_word_marker_count": 0,
        "uz_word_marker_count": 0,
        "uk_marker_count": 0,
        "be_marker_count": 0,
        "uz_marker_count": 0,
        "yi_marker_count": 0,
        "title_is_polluted": False,
        "notes_has_meta": False,
        "geo_votes": {},
        "geo_lyrics_votes": {},
    }
    base.update(kwargs)
    return mod.RowSignals(**base)


class RefilterGuardsTests(unittest.TestCase):
    def test_duplicate_exact_title_lyrics_drafted(self) -> None:
        rows = [
            mod.SongRow(
                id="a1",
                title="Песня о ветре",
                subtitle="",
                lang="ru",
                country="",
                year="",
                lyrics="Ветер по полю идет\nИ зовет меня вперед",
                source="",
                notes="",
                status="published",
                created_at="2024-01-01 10:00:00",
            ),
            mod.SongRow(
                id="a2",
                title="Песня о ветре",
                subtitle="",
                lang="ru",
                country="",
                year="",
                lyrics="Ветер по полю идет\nИ зовет меня вперед",
                source="",
                notes="",
                status="published",
                created_at="2024-01-02 10:00:00",
            ),
            mod.SongRow(
                id="tg3_a3",
                title="Песня о ветре",
                subtitle="",
                lang="ru",
                country="",
                year="",
                lyrics="Ветер по полю идет\nИ зовет меня вперед",
                source="",
                notes="",
                status="published",
                created_at="2023-12-31 10:00:00",
            ),
        ]
        drops, reason_counts, group_counts = mod.duplicate_drop_ids(rows)
        self.assertIn("a2", drops)
        self.assertIn("tg3_a3", drops)
        self.assertEqual(drops["a2"], "a1")
        self.assertEqual(drops["tg3_a3"], "a1")
        self.assertEqual(reason_counts["exact_title_lyrics"], 2)
        self.assertEqual(group_counts["exact_title_lyrics"], 1)

    def test_duplicate_fuzzy_lyrics_title_drafted(self) -> None:
        base_lyrics = " ".join(["слово"] * 90)
        rows = [
            mod.SongRow(
                id="b1",
                title="Песня 001",
                subtitle="",
                lang="ru",
                country="",
                year="",
                lyrics=base_lyrics,
                source="",
                notes="",
                status="published",
                created_at="2024-01-01 10:00:00",
            ),
            mod.SongRow(
                id="b2",
                title="Песня 002",
                subtitle="",
                lang="ru",
                country="",
                year="",
                lyrics=base_lyrics,
                source="",
                notes="",
                status="published",
                created_at="2024-01-02 10:00:00",
            ),
        ]
        drops, reason_counts, group_counts = mod.duplicate_drop_ids(rows)
        self.assertEqual(drops["b2"], "b1")
        self.assertEqual(reason_counts["lyrics_title_fuzzy"], 1)
        self.assertEqual(group_counts["lyrics_title_fuzzy"], 1)

    def test_duplicate_strict_by_title_year_and_near_lyrics(self) -> None:
        lyrics1 = " ".join(["куплет"] * 120)
        lyrics2 = lyrics1 + " финал"
        rows = [
            mod.SongRow(
                id="c1",
                title="Цыганская песня",
                subtitle="",
                lang="ru",
                country="",
                year="1909",
                lyrics=lyrics1,
                source="",
                notes="",
                status="published",
                created_at="2024-01-01 10:00:00",
            ),
            mod.SongRow(
                id="c2",
                title="Цыганская песня",
                subtitle="",
                lang="ru",
                country="",
                year="1909",
                lyrics=lyrics2,
                source="",
                notes="",
                status="published",
                created_at="2024-01-02 10:00:00",
            ),
        ]
        drops, reason_counts, group_counts = mod.duplicate_drop_ids(rows)
        self.assertEqual(drops["c2"], "c1")
        self.assertEqual(reason_counts["title_year_lyrics_strict"], 1)
        self.assertEqual(group_counts["title_year_lyrics_strict"], 1)

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
        subtitle = ""
        lyrics = "Music: Author\nShining sun\nAbove the field"
        notes = ""
        new_title, _new_subtitle, new_lyrics, new_notes, repaired = mod.repair_title_from_lyrics(title, subtitle, lyrics, notes)
        self.assertTrue(repaired)
        self.assertEqual(new_title, "Shining sun")
        self.assertIn("Music: Author", new_notes)
        self.assertTrue(new_lyrics.startswith("Above the field"))

    def test_lyrics_commentary_moved_to_notes(self) -> None:
        title = "Song"
        subtitle = ""
        lyrics = "First line\nSource: Archive edition 1977\nSecond line"
        notes = "existing note"
        _t, _s, new_lyrics, new_notes, _repaired = mod.repair_title_from_lyrics(title, subtitle, lyrics, notes)
        self.assertEqual(new_lyrics, "First line\nSecond line")
        self.assertIn("Source: Archive edition 1977", new_notes)

    def test_title_author_prefix_removed_and_moved_to_subtitle(self) -> None:
        title = "А. Броневицкий, С. Фогельсон - Я люблю (с нотами)"
        subtitle = ""
        lyrics = "Я люблю тебя\nЯ люблю тебя"
        notes = ""
        new_title, new_subtitle, _lyrics, _notes, _repaired = mod.repair_title_from_lyrics(title, subtitle, lyrics, notes)
        self.assertEqual(new_title, "Я люблю")
        self.assertIn("Музыка и слова:", new_subtitle)
        self.assertIn("А. Броневицкий", new_subtitle)

    def test_subtitle_music_lyrics_collapsed_to_common_author_field(self) -> None:
        title = "Песня"
        subtitle = "Музыка: А. Верстовский. Слова: А. Пушкин"
        lyrics = "Текст"
        notes = ""
        _t, new_subtitle, _lyrics, _notes, _repaired = mod.repair_title_from_lyrics(title, subtitle, lyrics, notes)
        self.assertEqual(new_subtitle, "Музыка и слова: А. Верстовский, А. Пушкин")

    def test_title_caps_and_angle_brackets_cleaned(self) -> None:
        title = "<ПЕТР I ПРИЕЗЖАЕТ НА ДОН> НЕ ЯСЕН СОКОЛ ЛЕТАЛ"
        subtitle = ""
        lyrics = "x"
        notes = ""
        new_title, _new_subtitle, _lyrics, _notes, _repaired = mod.repair_title_from_lyrics(title, subtitle, lyrics, notes)
        self.assertNotIn("<", new_title)
        self.assertNotIn(">", new_title)
        self.assertEqual(new_title[:1], new_title[:1].upper())
        self.assertIn("Петр I", new_title)

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

    def test_aggressive_ru_to_uz_by_markers(self) -> None:
        signals = _signals(
            uz_unique_chars=2,
            uz_word_marker_count=2,
            uz_marker_count=4,
            uk_marker_count=0,
            be_marker_count=1,
            cyr_count=45,
            lat_count=0,
        )
        new_lang, reason, forced = mod.force_cyr_lang_aggressive("ru", "ru", "ru_default", signals)
        self.assertEqual(new_lang, "uz")
        self.assertTrue(forced)
        self.assertEqual(reason, "uz_marker")

    def test_aggressive_uz_guard_does_not_flip_kazakh_shared_chars(self) -> None:
        signals = _signals(
            kk_unique_chars=12,
            uz_unique_chars=0,
            uz_word_marker_count=0,
            uz_marker_count=0,
            cyr_count=240,
            lat_count=0,
        )
        new_lang, reason, forced = mod.force_cyr_lang_aggressive("kk", "kk", "kk_default", signals)
        self.assertEqual(new_lang, "kk")
        self.assertFalse(forced)
        self.assertEqual(reason, "kk_default")

    def test_aggressive_uz_guard_does_not_flip_belarusian_u_short(self) -> None:
        signals = _signals(
            be_unique_chars=8,
            be_word_marker_count=3,
            be_marker_count=11,
            uz_unique_chars=0,
            uz_word_marker_count=0,
            uz_marker_count=0,
            cyr_count=180,
            lat_count=0,
        )
        new_lang, reason, forced = mod.force_cyr_lang_aggressive("be", "be", "be_default", signals)
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

    def test_should_apply_yi_marker_even_if_delegate_declines(self) -> None:
        class _LangMod:
            @staticmethod
            def should_apply_language_change(_old: str, _new: str, _confidence: float, _reason: str) -> bool:
                return False

        self.assertTrue(mod.should_apply_language_change("ru", "yi", 0.80, "yi_marker", _LangMod()))

    def test_classify_language_forces_yi_on_marker_profile(self) -> None:
        class _LangMod:
            CYR_LANGS = {"ru", "uk", "be", "bg", "mk", "sr", "kk"}

            @staticmethod
            def classify_song(_row):
                return ("lb", 0.8, "lid_low_conf")

            @staticmethod
            def should_apply_language_change(_old: str, _new: str, _confidence: float, _reason: str) -> bool:
                return False

            class SongRow:  # minimal compatible constructor
                def __init__(self, *_args):
                    pass

        row = mod.SongRow(
            id="yi1",
            title="In kamf",
            subtitle="",
            lang="ru",
            country="",
            year="",
            lyrics="Mir vern gehast un getribn un dos oreme folk undz",
            source="",
            notes="",
            status="published",
            created_at="",
        )
        signals = _signals(
            title_norm="In kamf",
            lyrics_song="Mir vern gehast un getribn un dos oreme folk undz",
            cyr_count=4,
            lat_count=120,
            yi_marker_count=5,
        )
        policy = mod.FilterPolicy()
        pred, conf, reason, _forced = mod.classify_language(row, signals, _LangMod(), {"ru", "yi", "lb"}, policy)
        self.assertEqual(pred, "yi")
        self.assertIn("yi_marker", reason)
        self.assertGreaterEqual(conf, 0.98)

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

    def test_non_song_detection_for_poster_wikipedia_card(self) -> None:
        title = "Hej! Kto Polak, na bagnety!"
        lyrics = (
            'Plakat wojny polsko-radzieckiej 1920 r. z cytatem z "Warszawianki 1831 r."\n\n'
            'См. также в высоком разрешении.\n\n'
            'Из "Википедии"'
        )
        self.assertTrue(mod.is_probably_non_song(title, lyrics))
        self.assertTrue(mod.is_probably_non_song(title, "Эй! Поляк, в штыки!", notes='Из "Википедии"'))
        self.assertTrue(mod.is_probably_non_song(title, 'Plakat wojny polsko-radzieckiej 1920 r.'))

    def test_non_song_detection_for_editorial_front_matter(self) -> None:
        title = "От составителя И послесловие К сборнику песенный фольклор археологических экспедиций"
        lyrics = (
            "С. Белецкий — От составителя\n"
            "А. Башарин — Песенный фольклор археологических экспедиций\n"
            "С. Белецкий — Послесловие\n\n"
            "ОТ СОСТАВИТЕЛЯ"
        )
        source = "Учебное пособие для студентов. Выпуск 6."
        notes = "Кафедра музееведения. Институт истории материальной культуры."
        self.assertTrue(mod.is_probably_non_song(title, lyrics, source=source, notes=notes))

    def test_non_song_meta_only_hint_does_not_hide_real_song(self) -> None:
        title = "Журавли"
        lyrics = "Журавли летят над Колымой\nСтынет ветер надо мной"
        notes = 'См. также близкую песню "Колыма".'
        self.assertFalse(mod.is_probably_non_song(title, lyrics, notes=notes))

    def test_classify_language_latin_polish_context_overrides_rare_label(self) -> None:
        class _LangMod:
            CYR_LANGS = {"ru", "uk", "be", "bg", "mk", "sr", "kk"}

            @staticmethod
            def classify_song(_row):
                return ("lb", 0.93, "lid_low_conf")

            class SongRow:
                def __init__(self, *_args):
                    pass

        row = mod.SongRow(
            id="lat1",
            title="Wincenty z Kielczy Gaude, mater Polonia",
            subtitle="",
            lang="ru",
            country="",
            year="",
            lyrics="Gaude, mater Polonia\nLaude frequenta vigili",
            source="1253",
            notes="Polski tekst pieśni",
            status="published",
            created_at="",
        )
        signals = _signals(
            title_norm=row.title,
            lyrics_song=row.lyrics,
            source_clean=row.source,
            notes_clean=row.notes,
            scope_short="Tekst pieśni w oryginale łacińskim: Gaude, mater Polonia",
            cyr_count=10,
            lat_count=220,
        )
        policy = mod.FilterPolicy()
        pred, conf, reason, _forced = mod.classify_language(row, signals, _LangMod(), {"ru", "pl"}, policy)
        self.assertEqual(pred, "pl")
        self.assertIn("latin_polish_context", reason)
        self.assertGreaterEqual(conf, 0.98)

    def test_infer_country_context_year_accepts_pre_1600_signal(self) -> None:
        row = mod.SongRow(
            id="h1",
            title="Gaude, mater Polonia",
            subtitle="",
            lang="pl",
            country="",
            year="",
            lyrics="Gaude, mater Polonia",
            source="1253",
            notes="",
            status="published",
            created_at="",
        )
        signals = _signals(source_clean="1253", notes_clean="", lyrics_song="Gaude, mater Polonia")
        self.assertEqual(mod.infer_country_context_year(row, signals, None), 1253)

    def test_infer_song_year_drops_ambiguous_meta_year_span(self) -> None:
        row = mod.SongRow(
            id="h2",
            title="Песня",
            subtitle="",
            lang="ru",
            country="",
            year="",
            lyrics="Куплет",
            source="",
            notes="Война 1854 года. Война 1945 года. Архив 1966. Автор 1895 г. р.",
            status="published",
            created_at="",
        )
        signals = _signals(
            source_clean="",
            notes_clean=row.notes,
            lyrics_song=row.lyrics,
        )
        year, reason = mod.infer_song_year(row, signals)
        self.assertIsNone(year)
        self.assertEqual(reason, "ambiguous_meta_year")

    def test_infer_song_year_prefers_lead_year_over_publication_tail(self) -> None:
        row = mod.SongRow(
            id="h2b",
            title="Качка",
            subtitle="",
            lang="ru",
            country="",
            year="1977",
            lyrics="Куплет",
            source="1931 Русские советские песни (1917-1977). Сост. Н. Крюков и Я. Шведов. М., 1977",
            notes="",
            status="published",
            created_at="",
        )
        signals = _signals(source_clean=row.source, notes_clean="", lyrics_song=row.lyrics)
        year, reason = mod.infer_song_year(row, signals)
        self.assertEqual(year, 1931)
        self.assertIn("lead", reason)

    def test_infer_song_year_drops_publication_only_modern_year(self) -> None:
        row = mod.SongRow(
            id="h2c",
            title="Песня",
            subtitle="",
            lang="ru",
            country="",
            year="2004",
            lyrics="Куплет",
            source='Бирюков Ю. Е. Казачьи песни. М.: "Современная музыка", 2004.',
            notes="Бытовала у сибирских и оренбургских казаков.",
            status="published",
            created_at="",
        )
        signals = _signals(source_clean=row.source, notes_clean=row.notes, lyrics_song=row.lyrics)
        year, reason = mod.infer_song_year(row, signals)
        self.assertIsNone(year)
        self.assertEqual(reason, "drop_publication_year_only")

    def test_infer_song_year_ignores_relative_note_year(self) -> None:
        row = mod.SongRow(
            id="h2d",
            title="Москва майская",
            subtitle="",
            lang="ru",
            country="",
            year="1956",
            lyrics="Куплет",
            source="1937 Антология русской песни. М.: Эксмо, 2005.",
            notes='Из кинофильма "Двадцатый Май". После 1956 года третий куплет не исполняется.',
            status="published",
            created_at="",
        )
        signals = _signals(source_clean=row.source, notes_clean=row.notes, lyrics_song=row.lyrics)
        year, reason = mod.infer_song_year(row, signals)
        self.assertEqual(year, 1937)
        self.assertIn("lead", reason)

    def test_infer_song_year_prefers_recording_over_songbook_publication(self) -> None:
        row = mod.SongRow(
            id="h2e",
            title="Студенточка",
            subtitle="",
            lang="ru",
            country="",
            year="2004",
            lyrics="Куплет",
            source=(
                "Если любишь – найди. Популярные мелодии 1930-60-х годов для голоса и фортепиано. "
                "Сост. А. П. Павлинов, Т. П. Орлова. СПб.: «Композитор • Санкт-Петербург», 2004. "
                'Мелодия и текст воспроизведены с записи на грампластинке, исполнение П. Лещенко 1934 года.'
            ),
            notes='Записан на пластинку в 1935 году рижской фирмой "Bellaccord Electro".',
            status="published",
            created_at="",
        )
        signals = _signals(source_clean=row.source, notes_clean=row.notes, lyrics_song=row.lyrics)
        year, reason = mod.infer_song_year(row, signals)
        self.assertEqual(year, 1934)
        self.assertIn("record", reason)

    def test_infer_song_year_ignores_birth_year_marker(self) -> None:
        row = mod.SongRow(
            id="h2f",
            title="На коне вороном уезжал партизан",
            subtitle="",
            lang="ru",
            country="",
            year="1977",
            lyrics="Куплет",
            source="Записана от Поповой А. П., 1914 г. р., г. Каскелен, в 1977 г.",
            notes="",
            status="published",
            created_at="",
        )
        signals = _signals(source_clean=row.source, notes_clean="", lyrics_song=row.lyrics)
        year, _reason = mod.infer_song_year(row, signals)
        self.assertEqual(year, 1977)

    def test_infer_song_year_prefers_appearance_over_author_bio_year(self) -> None:
        row = mod.SongRow(
            id="h2g",
            title="Варяг",
            subtitle="",
            lang="ru",
            country="",
            year="1904",
            lyrics="Куплет",
            source="Между февралем и апрелем 1904",
            notes=(
                "Впервые опубликовано 25 февраля 1904 г. "
                "В 1905 г. песня победила в конкурсе. "
                "В 1910 г. композитор окончил Московскую консерваторию."
            ),
            status="published",
            created_at="",
        )
        signals = _signals(source_clean=row.source, notes_clean=row.notes, lyrics_song=row.lyrics)
        year, _reason = mod.infer_song_year(row, signals)
        self.assertEqual(year, 1904)

    def test_infer_song_year_keeps_old_when_only_notes_lead_is_far_older(self) -> None:
        row = mod.SongRow(
            id="h2h",
            title="Журавли",
            subtitle="",
            lang="ru",
            country="",
            year="1935",
            lyrics="Куплет",
            source="",
            notes="В 1858 г. вышел в отставку и посвятил себя литературной деятельности.",
            status="published",
            created_at="",
        )
        signals = _signals(source_clean="", notes_clean=row.notes, lyrics_song=row.lyrics)
        year, reason = mod.infer_song_year(row, signals)
        self.assertEqual(year, 1935)
        self.assertEqual(reason, "keep_old_far_meta")

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

    def test_single_low_signal_geo_vote_keeps_timeline_country(self) -> None:
        country_values = {"russian_empire_1900_1917", "other_countries", "austro_hungary_1900_1918"}
        aliases = mod.build_country_aliases(country_values)
        policy = mod.FilterPolicy(country_ambiguity_policy="other_countries")
        row = mod.SongRow(
            id="x1b",
            title="",
            subtitle="",
            lang="ru",
            country="",
            year="1904",
            lyrics="",
            source="",
            notes="",
            status="published",
            created_at="",
        )
        signals = _signals(
            scope_short='Точный перевод австрийского поэта. Песня о крейсере "Варяг".',
            geo_votes={"austria_1945": 3},
            geo_lyrics_votes={},
        )
        new_country, reason, ambiguous, low = mod.classify_country(
            row, signals, "ru", 1904, country_values, aliases, policy
        )
        self.assertFalse(ambiguous)
        self.assertTrue(low)
        self.assertEqual(new_country, "russian_empire_1900_1917")
        self.assertEqual(reason, "country_recomputed_empty_old")

    def test_forced_country_by_id_priority(self) -> None:
        country_values = {"white_emigration", "other_countries"}
        aliases = mod.build_country_aliases(country_values)
        policy = mod.FilterPolicy(allow_forced_country_by_id=True)
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

    def test_forced_country_by_id_disabled_by_default(self) -> None:
        country_values = {"white_emigration", "ussr", "other_countries"}
        aliases = mod.build_country_aliases(country_values)
        policy = mod.FilterPolicy()
        row = mod.SongRow(
            id="apemigr_demo",
            title="",
            subtitle="",
            lang="ru",
            country="",
            year="1940",
            lyrics="",
            source="",
            notes="",
            status="published",
            created_at="",
        )
        signals = _signals(scope_short="", geo_votes={}, geo_lyrics_votes={})
        new_country, reason, _amb, _low = mod.classify_country(
            row, signals, "ru", 1940, country_values, aliases, policy
        )
        self.assertEqual(new_country, "ussr")
        self.assertNotEqual(reason, "country_forced_by_id")

    def test_keep_old_movement_guard(self) -> None:
        country_values = {
            "armia_krajowa",
            "poland_1989",
            "other_countries",
            "second_polish_republic_1918_1939",
            "polish_peoples_republic_1952_1989",
        }
        aliases = mod.build_country_aliases(country_values)
        policy = mod.FilterPolicy(
            country_ambiguity_policy="other_countries",
            keep_old_movement_country=True,
        )
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

    def test_movement_disabled_by_default(self) -> None:
        country_values = {"armia_krajowa", "poland_1989", "second_polish_republic_1918_1939"}
        aliases = mod.build_country_aliases(country_values)
        policy = mod.FilterPolicy(country_ambiguity_policy="other_countries")
        row = mod.SongRow(
            id="x3",
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
        self.assertEqual(new_country, "poland_1989")
        self.assertNotEqual(reason, "keep_old_movement")

    def test_keep_old_country_when_year_unknown_and_no_geo_votes(self) -> None:
        country_values = {"russian_empire_1900_1917", "ussr", "other_countries"}
        aliases = mod.build_country_aliases(country_values)
        policy = mod.FilterPolicy()
        row = mod.SongRow(
            id="x4",
            title="",
            subtitle="",
            lang="ru",
            country="russian_empire_1900_1917",
            year="",
            lyrics="",
            source="",
            notes="",
            status="published",
            created_at="",
        )
        signals = _signals(scope_short="", geo_votes={}, geo_lyrics_votes={})
        new_country, reason, _amb, _low = mod.classify_country(
            row, signals, "ru", None, country_values, aliases, policy
        )
        self.assertEqual(new_country, "russian_empire_1900_1917")
        self.assertEqual(reason, "keep_old_no_year")

    def test_timeline_uzbek_by_year(self) -> None:
        country_values = {"uzbek_ssr_1924_1991", "uzbekistan_1991", "other_countries"}
        self.assertEqual(
            mod.timeline_country_for_lang("uz", 1947, "", country_values, allow_movement_countries=False),
            "uzbek_ssr_1924_1991",
        )
        self.assertEqual(
            mod.timeline_country_for_lang("uz", 1995, "", country_values, allow_movement_countries=False),
            "uzbekistan_1991",
        )

    def test_timeline_poland_prefers_1815_catalog_for_pre_1900(self) -> None:
        country_values = {
            "kingdom_of_poland_within_russian_empire_1815_1915",
            "kingdom_of_poland_within_russian_empire_1900_1915",
            "poland_1989",
        }
        self.assertEqual(mod.timeline_poland(1846, country_values), "kingdom_of_poland_within_russian_empire_1815_1915")


if __name__ == "__main__":
    unittest.main()

