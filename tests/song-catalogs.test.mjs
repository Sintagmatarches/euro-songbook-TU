import test from "node:test";
import assert from "node:assert/strict";

import {
  countrySupportsPeriods,
  getCatalogLabel,
  getPeriodValuesForCountry,
  normalizeSongCatalogInput,
  normalizeSongCountry,
  normalizeSongPeriod,
} from "../shared/song-catalogs.js";

test("country labels use their catalog display form while period labels keep historical ranges", () => {
  assert.equal(getCatalogLabel("country", "russian_empire_1900_1917", "ru"), "\u0420\u043e\u0441\u0441\u0438\u0439\u0441\u043a\u0430\u044f \u0438\u043c\u043f\u0435\u0440\u0438\u044f (1721\u20131917)");
  assert.equal(getCatalogLabel("country", "germany_1990", "ru"), "\u0413\u0435\u0440\u043c\u0430\u043d\u0438\u044f");
  assert.equal(getCatalogLabel("period", "russia_empire_1721_1917", "ru"), "\u0420\u043e\u0441\u0441\u0438\u0439\u0441\u043a\u0430\u044f \u0438\u043c\u043f\u0435\u0440\u0438\u044f (1721\u20131917)");
  assert.equal(getCatalogLabel("period", "germany_1990_present", "ru"), "\u0413\u0435\u0440\u043c\u0430\u043d\u0438\u044f, \u043e\u0431\u044a\u0435\u0434\u0438\u043d\u0451\u043d\u043d\u0430\u044f (1990\u2013\u043f\u043e \u043d. \u0432.)");
});

test("new IRA branch normalizes correctly", () => {
  assert.equal(normalizeSongCountry("\u0430\u043d\u0442\u0438\u0434\u043e\u0433\u043e\u0432\u043e\u0440\u043d\u0430\u044f \u0438\u0440\u0430"), "ira_1922_1969");
  assert.equal(getCatalogLabel("country", "ira_1922_1969", "ru"), "\u0410\u043d\u0442\u0438\u0434\u043e\u0433\u043e\u0432\u043e\u0440\u043d\u0430\u044f \u0418\u0420\u0410 (1922\u20131969)");
});

test("periods are filtered by country", () => {
  const germanyPeriods = getPeriodValuesForCountry("germany_1990");
  assert.ok(germanyPeriods.includes("germany_1990_present"));
  assert.ok(!germanyPeriods.includes("ukraine_1991_present"));
  assert.equal(countrySupportsPeriods("germany_1990"), true);
  assert.equal(countrySupportsPeriods("latvia_1991"), false);
});

test("catalog input validates period against selected country", () => {
  const ok = normalizeSongCatalogInput({
    lang: "ru",
    country: "germany_1990",
    period: "germany_1990_present",
  });
  assert.equal(ok.ok, true);
  assert.equal(ok.value.period, "germany_1990_present");

  const wrongCountry = normalizeSongCatalogInput({
    lang: "ru",
    country: "germany_1990",
    period: "ukraine_1991_present",
  });
  assert.equal(wrongCountry.ok, false);

  assert.equal(normalizeSongPeriod("\u043f\u0435\u0440\u0435\u0441\u0442\u0440\u043e\u0439\u043a\u0430"), "ussr_1985_1991");
});

test("legacy USSR period keys remain compatible", () => {
  assert.equal(normalizeSongPeriod("ussr_1922_1940"), "ussr_1928_1941");
  assert.equal(normalizeSongPeriod("ussr_1941_1945"), "ussr_1941_1953");
  assert.equal(normalizeSongPeriod("ussr_1946_1953"), "ussr_1941_1953");
});
