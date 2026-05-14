from __future__ import annotations

import importlib.util
import sys
import unittest
from pathlib import Path
from types import SimpleNamespace


ROOT = Path(__file__).resolve().parent.parent
MODULE_PATH = ROOT / "scripts" / "import_pisni_org_ua.py"


def load_module():
    spec = importlib.util.spec_from_file_location("import_pisni_org_ua_test", MODULE_PATH)
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    assert spec.loader is not None
    spec.loader.exec_module(module)
    return module


mod = load_module()


class PisniOrgUaImportTests(unittest.TestCase):
    def test_is_chord_line_accepts_roman_position_suffix(self) -> None:
        self.assertTrue(mod.is_chord_line("Em Am G H7(II)"))
        self.assertTrue(mod.is_chord_line("C7(III) H7(II)"))
        self.assertTrue(mod.is_chord_line("Програш: Gm Bb Cm"))
        self.assertTrue(mod.is_chord_line("F"))

    def test_clean_lyrics_removes_interleaved_chord_lines(self) -> None:
        raw = "\n".join([
            "Em Am G H7(II)",
            "Я йшов по воді і назад озирався",
            "Em Am G H7(II)",
            "А потім побачив тебе",
            "Програш: Gm Bb Cm",
            "F",
            "C7(III) H7(II)",
            "Навіки залишитись тут",
        ])
        cleaned = mod.clean_lyrics(raw)
        self.assertEqual(
            cleaned,
            "\n".join([
                "Я йшов по воді і назад озирався",
                "А потім побачив тебе",
                "Навіки залишитись тут",
            ]),
        )

    def test_select_preferred_title_falls_back_to_desktop_title(self) -> None:
        self.assertEqual(mod.select_preferred_title("Em Am G H7", "8-ий колір"), "8-ий колір")
        self.assertEqual(mod.select_preferred_title("8-ий колір **", "8-ий колір"), "8-ий колір")

    def test_collect_target_song_ids_accepts_sid_and_full_id(self) -> None:
        args = SimpleNamespace(song_id=["124323", "pisniua_555", "777"])
        known = ["124323", "555", "888"]
        self.assertEqual(mod.collect_target_song_ids(args, known), ["124323", "555"])


if __name__ == "__main__":
    unittest.main()
