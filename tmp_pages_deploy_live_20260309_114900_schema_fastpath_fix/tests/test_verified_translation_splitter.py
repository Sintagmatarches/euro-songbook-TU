from __future__ import annotations

import importlib.util
import sys
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
MODULE_PATH = ROOT / "scripts" / "pilot_extract_verified_translation.py"


def _load_module():
    spec = importlib.util.spec_from_file_location("pilot_extract_verified_translation", MODULE_PATH)
    if spec is None or spec.loader is None:
        raise RuntimeError("Unable to load pilot_extract_verified_translation.py")
    mod = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = mod
    spec.loader.exec_module(mod)  # type: ignore[attr-defined]
    return mod


mod = _load_module()


class VerifiedTranslationSplitterTests(unittest.TestCase):
    def test_split_by_marker_heading(self) -> None:
        lyrics = (
            "Le premier vers de la chanson\n"
            "Le second vers de la chanson\n"
            "Le troisieme vers de la chanson\n"
            "Le quatrieme vers de la chanson\n\n"
            "Русский перевод:\n"
            "Первая строка длинного перевода\n"
            "Вторая строка длинного перевода\n"
            "И третья строка длинного перевода\n"
            "И еще одна длинная строка перевода\n"
            "И пятая длинная строка перевода\n"
        )
        out = mod.split_lyrics_for_verified_translation("fr", lyrics)
        self.assertIsNotNone(out)
        main, verified, reason = out  # type: ignore[misc]
        self.assertEqual(reason, "split_by_marker")
        self.assertIn("Le premier vers", main)
        self.assertIn("Первая строка", verified)

    def test_split_by_marker_inline(self) -> None:
        lyrics = (
            "Bella ciao bella ciao\n"
            "Bella ciao ciao ciao\n\n"
            "Перевод: Утром рано я проснулся\n"
            "О белла чао, белла чао\n"
            "О белла чао чао чао\n"
            "И еще одна строка\n"
        )
        out = mod.split_lyrics_for_verified_translation("it", lyrics)
        self.assertIsNotNone(out)
        main, verified, reason = out  # type: ignore[misc]
        self.assertEqual(reason, "split_by_marker")
        self.assertNotIn("Перевод:", verified)
        self.assertIn("Утром рано", verified)
        self.assertIn("Bella ciao", main)

    def test_split_by_script(self) -> None:
        lyrics = (
            "Tam nekje med svobodnimi polji\n"
            "kjer iz zemlje klije mlada rast\n"
            "njemu, ki vodnik nam je najbolji\n"
            "smo zložili pesem to na čast\n\n"
            "Tito, naša svetla bojna slava\n"
            "Tito, naša dika in naš vzor\n\n"
            "Где-то среди свободных полей\n"
            "Где из земли проростает молодняк\n"
            "В честь того, кто вождь наш самый лучший\n"
            "Мы создали эту песню\n"
            "И добавили ещё одну строку\n"
        )
        out = mod.split_lyrics_for_verified_translation("pl", lyrics)
        self.assertIsNotNone(out)
        main, verified, reason = out  # type: ignore[misc]
        self.assertEqual(reason, "split_by_script")
        self.assertIn("Tam nekje", main)
        self.assertIn("Где-то среди", verified)

    def test_no_split_for_pure_cyr_song(self) -> None:
        lyrics = (
            "По долинам и по взгорьям\n"
            "Шла дивизия вперед\n"
            "Чтобы с бою взять Приморье\n"
            "Белой армии оплот\n"
        )
        out = mod.split_lyrics_for_verified_translation("ru", lyrics)
        self.assertIsNone(out)


if __name__ == "__main__":
    unittest.main()
