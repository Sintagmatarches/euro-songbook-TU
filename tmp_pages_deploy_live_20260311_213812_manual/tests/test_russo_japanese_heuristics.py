from __future__ import annotations

import unittest
from pathlib import Path

from parse_html_file import parse_html_file


ROOT = Path(__file__).resolve().parent.parent
RUSSO_FIXTURES_DIR = ROOT / "fixtures" / "russo_japanese_war"


def _song(stem: str) -> dict:
    return parse_html_file(RUSSO_FIXTURES_DIR / f"{stem}.html")["song"]


class RussoJapaneseHeuristicsTests(unittest.TestCase):
    def test_variag_kui_leading_meta_is_not_in_lyrics(self) -> None:
        song = _song("variag-kui")
        self.assertIn("Музыка:", song["subtitle"])
        self.assertIn("Слова:", song["subtitle"])
        self.assertNotIn("Памяти крейсера-богатыря", song["lyrics"])
        self.assertNotIn("Музыка Цезаря Кюи", song["lyrics"])
        self.assertNotIn("Слова Левенталя", song["lyrics"])
        self.assertTrue(song["lyrics"].startswith('"Варяг" идет'))

    def test_date_and_source_tail_moved_out_of_lyrics(self) -> None:
        song = _song("dbuartura")
        self.assertIn("<15 апреля 1906>", song["source"])
        self.assertIn('"Солдат", Либава, 1906, 15 апреля, без подписи.', song["source"])
        self.assertNotIn("<15 апреля 1906>", song["lyrics"])
        self.assertNotIn('"Солдат", Либава, 1906, 15 апреля, без подписи.', song["lyrics"])

    def test_unknown_source_moved_to_source_field(self) -> None:
        song = _song("boze-ne")
        self.assertEqual(song["source"], "Неизвестный источник")
        self.assertNotIn("Неизвестный источник", song["lyrics"])
        self.assertIn("Песенка времен Русско-японской войны", song["notes"])

    def test_leading_author_lines_removed_from_lyrics(self) -> None:
        zima = _song("zima")
        self.assertTrue(zima["lyrics"].startswith("Зима..."))
        self.assertNotIn("Музыка Ц. Кюи", zima["lyrics"])
        self.assertNotIn('Слова "М.К."', zima["lyrics"])

        zacaraiot = _song("zacaraiot")
        self.assertTrue(zacaraiot["lyrics"].startswith("России властелин венчанный"))
        self.assertNotIn("Музыка А. Коптяева", zacaraiot["lyrics"])
        self.assertNotIn("Слова В. Рудича", zacaraiot["lyrics"])

    def test_leading_motif_and_caption_removed_from_lyrics(self) -> None:
        amursk = _song("amursk")
        self.assertTrue(amursk["lyrics"].startswith("Плавно Амур свои волны несет"))
        self.assertNotIn("Старинный вальс", amursk["lyrics"])
        self.assertNotIn("Музыка Марка Кюсса", amursk["lyrics"])
        self.assertNotIn("Слова К. Васильева, С. Попова", amursk["lyrics"])

        brvspom = _song("brvspom")
        self.assertNotIn('На мотив "Плещут холодные волны"', brvspom["lyrics"])
        self.assertTrue(brvspom["lyrics"].startswith("Братья, вспомянем героя"))


if __name__ == "__main__":
    unittest.main()
