import {
  SONG_COUNTRY_VALUES,
  getCatalogLabel,
  normalizeSongCountry,
  normalizeSongLanguage,
} from "./song-catalogs.js";

const GROUP_LABELS = {
  russian_statehood: {
    ru: "Русская государственность",
    uk: "Російська державність",
    en: "Russian statehood",
    et: "Vene riiklus",
  },
  soviet_world: {
    ru: "Советский мир",
    uk: "Радянський світ",
    en: "Soviet world",
    et: "Nõukogude maailm",
  },
  russian_movements: {
    ru: "Русские движения",
    uk: "Російські рухи",
    en: "Russian movements",
    et: "Vene liikumised",
  },
  ukrainian_statehood: {
    ru: "Украинская государственность",
    uk: "Українська державність",
    en: "Ukrainian statehood",
    et: "Ukraina riiklus",
  },
  ukrainian_movements: {
    ru: "Украинские движения",
    uk: "Українські рухи",
    en: "Ukrainian movements",
    et: "Ukraina liikumised",
  },
  belarusian_statehood: {
    ru: "Белорусская государственность",
    uk: "Білоруська державність",
    en: "Belarusian statehood",
    et: "Valgevene riiklus",
  },
  polish_statehood: {
    ru: "Польская государственность",
    uk: "Польська державність",
    en: "Polish statehood",
    et: "Poola riiklus",
  },
  polish_movements: {
    ru: "Польские движения",
    uk: "Польські рухи",
    en: "Polish movements",
    et: "Poola liikumised",
  },
  baltic_statehood: {
    ru: "Балтийские государства",
    uk: "Балтійські держави",
    en: "Baltic states",
    et: "Balti riigid",
  },
  baltic_movements: {
    ru: "Балтийские движения",
    uk: "Балтійські рухи",
    en: "Baltic movements",
    et: "Balti liikumised",
  },
  central_europe: {
    ru: "Центральная Европа",
    uk: "Центральна Європа",
    en: "Central Europe",
    et: "Kesk-Euroopa",
  },
  german_world: {
    ru: "Немецкий мир",
    uk: "Німецький світ",
    en: "German world",
    et: "Saksa maailm",
  },
  balkan_world: {
    ru: "Балканы",
    uk: "Балкани",
    en: "Balkans",
    et: "Balkan",
  },
  romance_world: {
    ru: "Романский мир",
    uk: "Романський світ",
    en: "Romance world",
    et: "Romaani maailm",
  },
  greek_world: {
    ru: "Греческий мир",
    uk: "Грецький світ",
    en: "Greek world",
    et: "Kreeka maailm",
  },
  turkic_world: {
    ru: "Тюркский мир",
    uk: "Тюркський світ",
    en: "Turkic world",
    et: "Türgi maailm",
  },
  caucasus_world: {
    ru: "Кавказ",
    uk: "Кавказ",
    en: "Caucasus",
    et: "Kaukaasia",
  },
  nordic_world: {
    ru: "Северная Европа",
    uk: "Північна Європа",
    en: "Nordic world",
    et: "Põhjala",
  },
  british_irish_world: {
    ru: "Британско-ирландский мир",
    uk: "Британсько-ірландський світ",
    en: "British and Irish world",
    et: "Briti ja Iiri maailm",
  },
  mediterranean_world: {
    ru: "Средиземноморье",
    uk: "Середземномор'я",
    en: "Mediterranean world",
    et: "Vahemeri",
  },
  misc_world: {
    ru: "Прочее",
    uk: "Інше",
    en: "Miscellaneous",
    et: "Muu",
  },
};

const GROUP_DEFINITIONS = [
  {
    lang: "ru",
    group_key: "russian_statehood",
    kind: "state",
    members: [
      "ukraine_before_1917",
      "russian_empire_1900_1917",
      "russo_japanese_war_1904_1905",
      "russian_republic_1917",
      "russian_civil_war_1917_1922",
      "rsfsr_1917_1922",
      "rsfsr_1917_1991",
      "russian_federation_1991",
      "white_emigration",
    ],
  },
  {
    lang: "ru",
    group_key: "soviet_world",
    kind: "state",
    members: [
      "ussr",
      "ukr_ssr_1919_1991",
      "bssr_1919_1991",
      "estonian_ssr_1940_1991",
      "latvian_ssr_1940_1990",
      "lithuanian_ssr_1940_1990",
      "moldavian_ssr_1940_1991",
      "armenian_ssr_1920_1991",
      "azerbaijan_ssr_1920_1991",
      "georgian_ssr_1921_1991",
      "kazakh_ssr_1936_1991",
      "uzbek_ssr_1924_1991",
      "tsfsr_1922_1936",
      "transcaucasian_democratic_federative_republic_1918",
    ],
  },
  {
    lang: "ru",
    group_key: "russian_movements",
    kind: "movement",
    members: [
      "narodnaya_volya",
      "russian_liberation_army",
      "german_collaborators",
      "other_movements",
      "other_countries",
    ],
  },
  {
    lang: "uk",
    group_key: "ukrainian_statehood",
    kind: "state",
    members: [
      "ukrainian_peoples_republic_1917_1921",
      "ukrainian_state_1918",
      "ukraine_1991",
    ],
  },
  {
    lang: "uk",
    group_key: "ukrainian_movements",
    kind: "movement",
    members: [
      "ukrainian_insurgent_army",
      "organization_of_ukrainian_nationalists",
    ],
  },
  {
    lang: "be",
    group_key: "belarusian_statehood",
    kind: "state",
    members: [
      "belarusian_peoples_republic_1918_1919",
      "belarus_1991",
    ],
  },
  {
    lang: "pl",
    group_key: "polish_statehood",
    kind: "state",
    members: [
      "kingdom_of_poland_within_russian_empire_1900_1915",
      "kingdom_of_poland_within_russian_empire_1815_1915",
      "second_polish_republic_1918_1939",
      "polish_peoples_republic_1952_1989",
      "poland_1989",
    ],
  },
  {
    lang: "pl",
    group_key: "polish_movements",
    kind: "movement",
    members: [
      "armia_krajowa",
      "armia_ludowa",
    ],
  },
  {
    lang: "et",
    group_key: "baltic_statehood",
    kind: "state",
    members: [
      "finland_1917",
      "estonia_first_republic_1918_1940",
      "estonia_1991",
      "latvia_first_republic_1918_1940",
      "latvia_1991",
      "lithuania_first_republic_1918_1940",
      "lithuania_1990",
    ],
  },
  {
    lang: "et",
    group_key: "baltic_movements",
    kind: "movement",
    members: [
      "forest_brothers",
    ],
  },
  {
    lang: "de",
    group_key: "german_world",
    kind: "state",
    members: [
      "austro_hungary_1900_1918",
      "first_austrian_republic_1919_1934",
      "federal_state_of_austria_1934_1938",
      "austria_in_nazi_germany_1938_1945",
      "austria_1945",
      "german_empire_1900_1918",
      "weimar_republic_1918_1933",
      "third_reich_1933_1945",
      "gdr_1949_1990",
      "frg_1949",
      "germany_1990",
      "switzerland_1900",
      "luxembourg_1900",
      "liechtenstein_1900",
    ],
  },
  {
    lang: "cs",
    group_key: "central_europe",
    kind: "state",
    members: [
      "czechoslovakia_first_republic_1918_1938",
      "czecho_slovakia_second_republic_1938_1939",
      "protectorate_bohemia_moravia_1939_1945",
      "slovak_republic_first_1939_1945",
      "czechoslovakia_1945_1992",
      "czechia_1993",
      "slovakia_1993",
      "kingdom_of_hungary_regency_1920_1946",
      "second_hungarian_republic_1946_1949",
      "hungarian_peoples_republic_1949_1989",
      "hungary_1989",
    ],
  },
  {
    lang: "ro",
    group_key: "romance_world",
    kind: "state",
    members: [
      "kingdom_of_romania_1900_1947",
      "romanian_peoples_republic_1947_1965",
      "socialist_republic_of_romania_1965_1989",
      "romania_1989",
      "moldavian_democratic_republic_1917_1918",
      "moldova_1991",
    ],
  },
  {
    lang: "bg",
    group_key: "balkan_world",
    kind: "state",
    members: [
      "tsardom_of_bulgaria_1908_1946",
      "peoples_republic_of_bulgaria_1946_1990",
      "bulgaria_1990",
      "kingdom_serbs_croats_slovenes_1918_1929",
      "kingdom_of_yugoslavia_1929_1945",
      "yugoslavia_socialist_1945_1992",
      "federal_republic_of_yugoslavia_1992_2003",
      "serbia_and_montenegro_2003_2006",
      "serbia_2006",
      "montenegro_2006",
      "slovenia_1991",
      "croatia_1991",
      "bosnia_and_herzegovina_1992",
      "republic_of_macedonia_1991_2019",
      "north_macedonia_2019",
      "north_macedonia_1991",
      "chetniks",
      "kingdom_of_albania_1928_1939",
      "peoples_republic_of_albania_1946_1976",
      "peoples_socialist_republic_of_albania_1976_1991",
      "albania_1991",
    ],
  },
  {
    lang: "el",
    group_key: "greek_world",
    kind: "state",
    members: [
      "kingdom_of_greece_1900_1924",
      "second_hellenic_republic_1924_1935",
      "kingdom_of_greece_restoration_1935_1973",
      "kingdom_of_greece_1900_1973",
      "hellenic_republic_1974",
    ],
  },
  {
    lang: "tr",
    group_key: "turkic_world",
    kind: "state",
    members: [
      "ottoman_empire_1900_1922",
      "turkey_1923",
    ],
  },
  {
    lang: "ka",
    group_key: "caucasus_world",
    kind: "state",
    members: [
      "first_republic_of_armenia_1918_1920",
      "armenia_1991",
      "azerbaijan_democratic_republic_1918_1920",
      "azerbaijan_1991",
      "democratic_republic_of_georgia_1918_1921",
      "georgia_1991",
    ],
  },
  {
    lang: "kk",
    group_key: "turkic_world",
    kind: "state",
    members: [
      "kazakhstan_1991",
      "uzbekistan_1991",
    ],
  },
  {
    lang: "sv",
    group_key: "nordic_world",
    kind: "state",
    members: [
      "sweden_1900",
      "norway_in_union_with_sweden_1900_1905",
      "norway_1905",
      "denmark_1900",
      "iceland_kingdom_1918_1944",
      "iceland_1944",
    ],
  },
  {
    lang: "en",
    group_key: "british_irish_world",
    kind: "state",
    members: [
      "uk_gb_ireland_1900_1922",
      "uk_gb_ni_1922",
      "irish_free_state_1922_1937",
      "ireland_1937_1949",
      "ireland_republic_1949",
      "ira_1919_1922",
      "ira_1969_2005",
      "ira",
    ],
  },
  {
    lang: "fr",
    group_key: "romance_world",
    kind: "state",
    members: [
      "france_third_republic_1900_1940",
      "france_vichy_1940_1944",
      "france_fourth_republic_1946_1958",
      "france_fifth_republic_1958",
      "belgium_1900",
      "monaco_1900",
    ],
  },
  {
    lang: "nl",
    group_key: "romance_world",
    kind: "state",
    members: [
      "netherlands_1900",
    ],
  },
  {
    lang: "it",
    group_key: "mediterranean_world",
    kind: "state",
    members: [
      "kingdom_of_italy_1900_1946",
      "italian_republic_1946",
      "san_marino_1900",
      "vatican_1929",
    ],
  },
  {
    lang: "es",
    group_key: "romance_world",
    kind: "state",
    members: [
      "kingdom_of_spain_1900_1931",
      "second_spanish_republic_1931_1939",
      "francoist_spain_1936_1975",
      "spain_1975",
      "andorra_1900",
    ],
  },
  {
    lang: "pt",
    group_key: "romance_world",
    kind: "state",
    members: [
      "portugal_first_republic_1910_1926",
      "portugal_estado_novo_1933_1974",
      "portugal_1974",
    ],
  },
  {
    lang: "mt",
    group_key: "mediterranean_world",
    kind: "state",
    members: [
      "malta_1964",
      "cyprus_1960",
    ],
  },
];

const META_BY_COUNTRY = new Map();
const GROUPS_BY_KEY = new Map();

GROUP_DEFINITIONS.forEach((definition, groupIndex) => {
  GROUPS_BY_KEY.set(definition.group_key, {
    key: definition.group_key,
    lang: definition.lang,
    kind: definition.kind || "state",
    sort_order: groupIndex + 1,
    labels: GROUP_LABELS[definition.group_key] || GROUP_LABELS.misc_world,
  });
  definition.members.forEach((country, memberIndex) => {
    const normalizedCountry = normalizeSongCountry(country);
    if (!normalizedCountry || META_BY_COUNTRY.has(normalizedCountry)) return;
    META_BY_COUNTRY.set(normalizedCountry, {
      country: normalizedCountry,
      lang: definition.lang,
      group_key: definition.group_key,
      kind: definition.kind || "state",
      sort_order: ((groupIndex + 1) * 100) + memberIndex,
    });
  });
});

SONG_COUNTRY_VALUES.forEach((country, index) => {
  const normalizedCountry = normalizeSongCountry(country);
  if (!normalizedCountry || META_BY_COUNTRY.has(normalizedCountry)) return;
  META_BY_COUNTRY.set(normalizedCountry, {
    country: normalizedCountry,
    lang: "ru",
    group_key: "misc_world",
    kind: "state",
    sort_order: 50_000 + index,
  });
});

if (!GROUPS_BY_KEY.has("misc_world")) {
  GROUPS_BY_KEY.set("misc_world", {
    key: "misc_world",
    lang: "ru",
    kind: "state",
    sort_order: 9999,
    labels: GROUP_LABELS.misc_world,
  });
}

function pickLocale(locale) {
  const normalized = String(locale || "").trim().toLowerCase();
  if (normalized === "uk" || normalized === "et" || normalized === "en") return normalized;
  return "ru";
}

function collatorFor(locale) {
  return new Intl.Collator(pickLocale(locale), { sensitivity: "base", numeric: true });
}

export function getHistoricalAffiliationMeta(country) {
  const normalizedCountry = normalizeSongCountry(country || "");
  return normalizedCountry ? (META_BY_COUNTRY.get(normalizedCountry) || null) : null;
}

export function getHistoricalGroupLabel(groupKey, locale) {
  const group = GROUPS_BY_KEY.get(String(groupKey || "").trim());
  if (!group) return String(groupKey || "").trim();
  const safeLocale = pickLocale(locale);
  return group.labels?.[safeLocale] || group.labels?.en || group.labels?.ru || group.key;
}

export function getHistoricalGroupOptions(selectedLang, locale, options = {}) {
  const lang = normalizeSongLanguage(selectedLang || "") || "";
  const currentCountry = normalizeSongCountry(options.currentCountry || "") || "";
  const currentMeta = currentCountry ? getHistoricalAffiliationMeta(currentCountry) : null;
  const groups = Array.from(GROUPS_BY_KEY.values()).map((group) => ({
    value: group.key,
    label: getHistoricalGroupLabel(group.key, locale),
    lang: group.lang,
    sort_order: group.sort_order,
  }));
  const collator = collatorFor(locale);
  return groups.sort((a, b) => {
    const aPriority = a.lang === lang ? 0 : (currentMeta?.group_key === a.value ? 1 : 2);
    const bPriority = b.lang === lang ? 0 : (currentMeta?.group_key === b.value ? 1 : 2);
    if (aPriority !== bPriority) return aPriority - bPriority;
    return (a.sort_order - b.sort_order) || collator.compare(a.label, b.label);
  });
}

export function getHistoricalAffiliationOptions(selectedLang, groupKey, locale, options = {}) {
  const lang = normalizeSongLanguage(selectedLang || "") || "";
  const safeGroupKey = String(groupKey || "").trim();
  const currentCountry = normalizeSongCountry(options.currentCountry || "") || "";
  const collator = collatorFor(locale);
  return SONG_COUNTRY_VALUES
    .map((country) => {
      const normalizedCountry = normalizeSongCountry(country);
      const meta = normalizedCountry ? getHistoricalAffiliationMeta(normalizedCountry) : null;
      if (!normalizedCountry || !meta) return null;
      if (safeGroupKey && meta.group_key !== safeGroupKey && normalizedCountry !== currentCountry) return null;
      return {
        value: normalizedCountry,
        label: getCatalogLabel("country", normalizedCountry, locale),
        group_key: meta.group_key,
        lang: meta.lang,
        sort_order: meta.sort_order,
      };
    })
    .filter(Boolean)
    .sort((a, b) => {
      const aPriority = a.lang === lang ? 0 : (a.value === currentCountry ? 1 : 2);
      const bPriority = b.lang === lang ? 0 : (b.value === currentCountry ? 1 : 2);
      if (aPriority !== bPriority) return aPriority - bPriority;
      return (a.sort_order - b.sort_order) || collator.compare(a.label, b.label);
    });
}

export function resolveHistoricalAffiliationSelection(country) {
  const normalizedCountry = normalizeSongCountry(country || "") || "";
  const meta = normalizedCountry ? getHistoricalAffiliationMeta(normalizedCountry) : null;
  return {
    lang: meta?.lang || "",
    group_key: meta?.group_key || "misc_world",
    country: normalizedCountry,
  };
}
