from __future__ import annotations

import json
import unittest
from pathlib import Path
from typing import Any

from parse_html_file import parse_html_file


ROOT = Path(__file__).resolve().parent.parent
FIXTURES_DIR = ROOT / "fixtures"
EXPECTED_DIR = ROOT / "expected"


def _normalize_string(value: str) -> str:
    value = value.replace("\r\n", "\n").replace("\r", "\n")
    lines = [line.rstrip(" \t") for line in value.split("\n")]
    return "\n".join(lines)


def _normalize_payload(value: Any) -> Any:
    if isinstance(value, str):
        return _normalize_string(value)
    if isinstance(value, list):
        return [_normalize_payload(item) for item in value]
    if isinstance(value, dict):
        return {key: _normalize_payload(item) for key, item in value.items()}
    return value


class ImportParserTests(unittest.TestCase):
    def test_all_fixtures_match_expected(self) -> None:
        html_files = sorted(FIXTURES_DIR.glob("*.html"))
        self.assertTrue(html_files, "No fixtures found in fixtures/")

        for html_file in html_files:
            expected_file = EXPECTED_DIR / f"{html_file.stem}.json"
            self.assertTrue(expected_file.exists(), f"Missing expected file: {expected_file.name}")

            with self.subTest(html=html_file.name):
                actual = parse_html_file(html_file)
                expected = json.loads(expected_file.read_text(encoding="utf-8"))
                self.assertEqual(_normalize_payload(actual), _normalize_payload(expected))


if __name__ == "__main__":
    unittest.main()

