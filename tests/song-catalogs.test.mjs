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

test("country labels keep updated historical ranges", () => {
  assert.equal(getCatalogLabel("country", "russian_empire_1900_1917", "ru"), "Российская империя - 1721-1917");
  assert.equal(getCatalogLabel("country", "germany_1990", "ru"), "Германия, объединённая - 1990-н.в.");
});

test("new IRA branch normalizes correctly", () => {
  assert.equal(normalizeSongCountry("антидоговорная ира"), "ira_1922_1969");
  assert.equal(getCatalogLabel("country", "ira_1922_1969", "ru"), "Антидоговорная ИРА - 1922-1969");
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

  assert.equal(normalizeSongPeriod("перестройка"), "ussr_1985_1991");
});

test("legacy USSR period keys remain compatible", () => {
  assert.equal(normalizeSongPeriod("ussr_1922_1940"), "ussr_1928_1941");
  assert.equal(normalizeSongPeriod("ussr_1941_1945"), "ussr_1941_1953");
  assert.equal(normalizeSongPeriod("ussr_1946_1953"), "ussr_1941_1953");
});
