import test from "node:test";
import assert from "node:assert/strict";

import { cleanLyricsForDisplay, repairOldOrthographyDisplaySpacing } from "../ui/api.js";

test("repairOldOrthographyDisplaySpacing rejoins split old orthography letters inside words", () => {
  assert.equal(
    repairOldOrthographyDisplaySpacing("Въ скульптур ѣ статуэтка"),
    "Въ скульптурѣ статуэтка"
  );
  assert.equal(
    repairOldOrthographyDisplaySpacing("Отъ вс ѣ х в ней есть отличье"),
    "Отъ всѣх в ней есть отличье"
  );
  assert.equal(
    repairOldOrthographyDisplaySpacing("ц ѣ ловать"),
    "цѣловать"
  );
});

test("cleanLyricsForDisplay applies old orthography spacing repair line by line", () => {
  const cleaned = cleanLyricsForDisplay("Она была бы въ музык ѣ \"Capricio\".\nОтъ вс ѣ х в ней есть какое-то отличье.");
  assert.equal(
    cleaned,
    "Она была бы въ музыкѣ \"Capricio\".\nОтъ всѣх в ней есть какое-то отличье."
  );
});
