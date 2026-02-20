const SUPPORTED_LOCALES = new Set(["ru", "uk", "en", "et"]);

function pickLocale(locale) {
  return SUPPORTED_LOCALES.has(locale) ? locale : "ru";
}

function clean(value) {
  return (value ?? "").toString().trim();
}

function fold(value) {
  return clean(value)
    .toLowerCase()
    .replace(/[–—]/g, "-")
    .replace(/[-\s]+/g, "_")
    .replace(/[().,]/g, "");
}

function withCanonicalAliases(values, extraAliases) {
  const out = { ...extraAliases };
  values.forEach((v) => {
    out[fold(v)] = v;
  });
  return out;
}

export const SONG_LANGUAGE_VALUES = [
  "ru", "uk", "be", "pl", "lt", "lv", "et", "fi", "en",
  "sq", "hy", "az", "eu", "bs", "bg", "ca", "hr", "cs", "da", "nl",
  "fo", "fr", "gl", "ka", "de", "el", "hu", "is", "ga", "it", "kk",
  "lb", "mk", "mt", "no", "pt", "ro", "sr", "sk", "sl", "es", "sv",
  "tr", "cy", "ja",
];

export const SONG_COUNTRY_VALUES = [
  "russian_empire_1900_1917",
  "russian_republic_1917",
  "rsfsr_1917_1991",
  "ussr",
  "russian_federation_1991",
  "finland_1917",
  "estonia_first_republic_1918_1940",
  "estonian_ssr_1940_1991",
  "estonia_1991",
  "latvia_first_republic_1918_1940",
  "latvian_ssr_1940_1990",
  "latvia_1991",
  "lithuania_first_republic_1918_1940",
  "lithuanian_ssr_1940_1990",
  "lithuania_1990",
  "belarusian_peoples_republic_1918_1919",
  "bssr_1919_1991",
  "belarus_1991",
  "ukrainian_peoples_republic_1917_1921",
  "ukrainian_state_1918",
  "ukr_ssr_1919_1991",
  "ukraine_1991",
  "moldavian_democratic_republic_1917_1918",
  "moldavian_ssr_1940_1991",
  "moldova_1991",
  "second_polish_republic_1918_1939",
  "polish_peoples_republic_1952_1989",
  "poland_1989",
  "czechoslovakia_first_republic_1918_1938",
  "czecho_slovakia_second_republic_1938_1939",
  "protectorate_bohemia_moravia_1939_1945",
  "slovak_republic_first_1939_1945",
  "czechoslovakia_1945_1992",
  "czechia_1993",
  "slovakia_1993",
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
  "kingdom_of_hungary_regency_1920_1946",
  "second_hungarian_republic_1946_1949",
  "hungarian_peoples_republic_1949_1989",
  "hungary_1989",
  "kingdom_of_romania_1900_1947",
  "romanian_peoples_republic_1947_1965",
  "socialist_republic_of_romania_1965_1989",
  "romania_1989",
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
  "north_macedonia_1991",
  "kingdom_of_albania_1928_1939",
  "peoples_republic_of_albania_1946_1976",
  "peoples_socialist_republic_of_albania_1976_1991",
  "albania_1991",
  "kingdom_of_greece_1900_1973",
  "hellenic_republic_1974",
  "ottoman_empire_1900_1922",
  "turkey_1923",
  "transcaucasian_democratic_federative_republic_1918",
  "tsfsr_1922_1936",
  "first_republic_of_armenia_1918_1920",
  "armenian_ssr_1920_1991",
  "armenia_1991",
  "azerbaijan_democratic_republic_1918_1920",
  "azerbaijan_ssr_1920_1991",
  "azerbaijan_1991",
  "democratic_republic_of_georgia_1918_1921",
  "georgian_ssr_1921_1991",
  "georgia_1991",
  "kazakh_ssr_1936_1991",
  "kazakhstan_1991",
  "narodnaya_volya",
  "armia_krajowa",
  "armia_ludowa",
  "forest_brothers",
  "chetniks",
  "ira",
  "ukrainian_insurgent_army",
  "organization_of_ukrainian_nationalists",
  "russian_liberation_army",
  "german_collaborators",
  "white_emigration",
];

export const USSR_PERIOD_VALUES = [
  "ussr_1922_1940",
  "ussr_1941_1945",
  "ussr_1946_1953",
  "ussr_1953_1964",
  "ussr_1964_1985",
  "ussr_1985_1991",
];

const LANGUAGE_SET = new Set(SONG_LANGUAGE_VALUES);
const COUNTRY_SET = new Set(SONG_COUNTRY_VALUES);
const PERIOD_SET = new Set(USSR_PERIOD_VALUES);

const LABELS = {
  language: {
    ru: {
      ru: "Русский",
      uk: "Украинский",
      be: "Белорусский",
      pl: "Польский",
      lt: "Литовский",
      lv: "Латышский",
      et: "Эстонский",
      fi: "Финский",
      en: "Английский",
      sq: "Албанский",
      hy: "Армянский",
      az: "Азербайджанский",
      eu: "Баскский",
      bs: "Боснийский",
      bg: "Болгарский",
      ca: "Каталанский",
      hr: "Хорватский",
      cs: "Чешский",
      da: "Датский",
      nl: "Нидерландский",
      fo: "Фарерский",
      fr: "Французский",
      gl: "Галисийский",
      ka: "Грузинский",
      de: "Немецкий",
      el: "Греческий",
      hu: "Венгерский",
      is: "Исландский",
      ga: "Ирландский",
      it: "Итальянский",
      kk: "Казахский",
      lb: "Люксембургский",
      mk: "Македонский",
      mt: "Мальтийский",
      no: "Норвежский",
      pt: "Португальский",
      ro: "Румынский",
      sr: "Сербский",
      sk: "Словацкий",
      sl: "Словенский",
      es: "Испанский",
      sv: "Шведский",
      tr: "Турецкий",
      cy: "Валлийский",
      ja: "Японский",
    },
    en: {
      ru: "Russian",
      uk: "Ukrainian",
      be: "Belarusian",
      pl: "Polish",
      lt: "Lithuanian",
      lv: "Latvian",
      et: "Estonian",
      fi: "Finnish",
      en: "English",
      sq: "Albanian",
      hy: "Armenian",
      az: "Azerbaijani",
      eu: "Basque",
      bs: "Bosnian",
      bg: "Bulgarian",
      ca: "Catalan",
      hr: "Croatian",
      cs: "Czech",
      da: "Danish",
      nl: "Dutch",
      fo: "Faroese",
      fr: "French",
      gl: "Galician",
      ka: "Georgian",
      de: "German",
      el: "Greek",
      hu: "Hungarian",
      is: "Icelandic",
      ga: "Irish",
      it: "Italian",
      kk: "Kazakh",
      lb: "Luxembourgish",
      mk: "Macedonian",
      mt: "Maltese",
      no: "Norwegian",
      pt: "Portuguese",
      ro: "Romanian",
      sr: "Serbian",
      sk: "Slovak",
      sl: "Slovenian",
      es: "Spanish",
      sv: "Swedish",
      tr: "Turkish",
      cy: "Welsh",
      ja: "Japanese",
    },
    uk: {
      ru: "Російська",
      uk: "Українська",
      be: "Білоруська",
      pl: "Польська",
      lt: "Литовська",
      lv: "Латиська",
      et: "Естонська",
      fi: "Фінська",
      en: "Англійська",
    },
    et: {
      ru: "Vene",
      uk: "Ukraina",
      be: "Valgevene",
      pl: "Poola",
      lt: "Leedu",
      lv: "Läti",
      et: "Eesti",
      fi: "Soome",
      en: "Inglise",
    },
  },
  country: {
    ru: {
      russian_empire_1900_1917: "Российская империя - 1900-1917",
      russian_republic_1917: "Российская республика - 1917",
      rsfsr_1917_1991: "РСФСР - 1917-1991",
      ussr: "СССР - 1922-1991",
      russian_federation_1991: "Российская Федерация - 1991",
      finland_1917: "Финляндия - 1917",
      estonia_first_republic_1918_1940: "Эстония (первая республика) - 1918-1940",
      estonian_ssr_1940_1991: "Эстонская ССР - 1940-1991",
      estonia_1991: "Эстония - 1991",
      latvia_first_republic_1918_1940: "Латвия (первая республика) - 1918-1940",
      latvian_ssr_1940_1990: "Латвийская ССР - 1940-1990",
      latvia_1991: "Латвия - 1991",
      lithuania_first_republic_1918_1940: "Литва (первая республика) - 1918-1940",
      lithuanian_ssr_1940_1990: "Литовская ССР - 1940-1990",
      lithuania_1990: "Литва - 1990",
      belarusian_peoples_republic_1918_1919: "Белорусская Народная Республика - 1918-1919",
      bssr_1919_1991: "БССР - 1919-1991",
      belarus_1991: "Беларусь - 1991",
      ukrainian_peoples_republic_1917_1921: "Украинская Народная Республика - 1917-1921",
      ukrainian_state_1918: "Украинская Держава - 1918",
      ukr_ssr_1919_1991: "УССР - 1919-1991",
      ukraine_1991: "Украина - 1991",
      moldavian_democratic_republic_1917_1918: "Молдавская Демократическая Республика - 1917-1918",
      moldavian_ssr_1940_1991: "Молдавская ССР - 1940-1991",
      moldova_1991: "Молдова - 1991",
      second_polish_republic_1918_1939: "Вторая Польская Республика - 1918-1939",
      polish_peoples_republic_1952_1989: "Польская Народная Республика - 1952-1989",
      poland_1989: "Польша - 1989",
      czechoslovakia_first_republic_1918_1938: "Чехословакия (первая республика) - 1918-1938",
      czecho_slovakia_second_republic_1938_1939: "Чехо-Словакия (вторая республика) - 1938-1939",
      protectorate_bohemia_moravia_1939_1945: "Протекторат Богемии и Моравии - 1939-1945",
      slovak_republic_first_1939_1945: "Словацкая Республика (первая) - 1939-1945",
      czechoslovakia_1945_1992: "Чехословакия - 1945-1992",
      czechia_1993: "Чехия - 1993",
      slovakia_1993: "Словакия - 1993",
      first_austrian_republic_1919_1934: "Первая Австрийская Республика - 1919-1934",
      federal_state_of_austria_1934_1938: "Федеративное государство Австрия - 1934-1938",
      austria_in_nazi_germany_1938_1945: "Австрия в составе нацистской Германии - 1938-1945",
      austria_1945: "Австрия - 1945",
      german_empire_1900_1918: "Германская империя - 1900-1918",
      weimar_republic_1918_1933: "Веймарская республика - 1918-1933",
      third_reich_1933_1945: "Третий рейх - 1933-1945",
      gdr_1949_1990: "ГДР - 1949-1990",
      frg_1949: "ФРГ - 1949",
      germany_1990: "Германия (объединенная) - 1990",
      kingdom_of_hungary_regency_1920_1946: "Королевство Венгрия (период регентства) - 1920-1946",
      second_hungarian_republic_1946_1949: "Вторая Венгерская Республика - 1946-1949",
      hungarian_peoples_republic_1949_1989: "Венгерская Народная Республика - 1949-1989",
      hungary_1989: "Венгрия - 1989",
      kingdom_of_romania_1900_1947: "Королевство Румыния - 1900-1947",
      romanian_peoples_republic_1947_1965: "Румынская Народная Республика - 1947-1965",
      socialist_republic_of_romania_1965_1989: "Социалистическая Республика Румыния - 1965-1989",
      romania_1989: "Румыния - 1989",
      tsardom_of_bulgaria_1908_1946: "Царство Болгария - 1908-1946",
      peoples_republic_of_bulgaria_1946_1990: "Народная Республика Болгария - 1946-1990",
      bulgaria_1990: "Болгария - 1990",
      kingdom_serbs_croats_slovenes_1918_1929: "Королевство сербов, хорватов и словенцев - 1918-1929",
      kingdom_of_yugoslavia_1929_1945: "Королевство Югославия - 1929-1945",
      yugoslavia_socialist_1945_1992: "Югославия (социалистический период) - 1945-1992",
      federal_republic_of_yugoslavia_1992_2003: "Союзная Республика Югославия - 1992-2003",
      serbia_and_montenegro_2003_2006: "Сербия и Черногория - 2003-2006",
      serbia_2006: "Сербия - 2006",
      montenegro_2006: "Черногория - 2006",
      slovenia_1991: "Словения - 1991",
      croatia_1991: "Хорватия - 1991",
      bosnia_and_herzegovina_1992: "Босния и Герцеговина - 1992",
      north_macedonia_1991: "Северная Македония - 1991",
      kingdom_of_albania_1928_1939: "Королевство Албания - 1928-1939",
      peoples_republic_of_albania_1946_1976: "Народная Республика Албания - 1946-1976",
      peoples_socialist_republic_of_albania_1976_1991: "Народная Социалистическая Республика Албания - 1976-1991",
      albania_1991: "Албания - 1991",
      kingdom_of_greece_1900_1973: "Королевство Греция - 1900-1973",
      hellenic_republic_1974: "Греческая Республика - 1974",
      ottoman_empire_1900_1922: "Османская империя - 1900-1922",
      turkey_1923: "Турция - 1923",
      transcaucasian_democratic_federative_republic_1918: "Закавказская Демократическая Федеративная Республика - 1918",
      tsfsr_1922_1936: "ЗСФСР - 1922-1936",
      first_republic_of_armenia_1918_1920: "Первая Республика Армения - 1918-1920",
      armenian_ssr_1920_1991: "Армянская ССР - 1920-1991",
      armenia_1991: "Армения - 1991",
      azerbaijan_democratic_republic_1918_1920: "Азербайджанская Демократическая Республика - 1918-1920",
      azerbaijan_ssr_1920_1991: "Азербайджанская ССР - 1920-1991",
      azerbaijan_1991: "Азербайджан - 1991",
      democratic_republic_of_georgia_1918_1921: "Демократическая Республика Грузия - 1918-1921",
      georgian_ssr_1921_1991: "Грузинская ССР - 1921-1991",
      georgia_1991: "Грузия - 1991",
      kazakh_ssr_1936_1991: "Казахская ССР - 1936-1991",
      kazakhstan_1991: "Казахстан - 1991",
      narodnaya_volya: "Народная воля",
      armia_krajowa: "Армия Крайова",
      armia_ludowa: "Армия Людова",
      forest_brothers: "Лесные братья",
      chetniks: "Четники",
      ira: "ИРА",
      ukrainian_insurgent_army: "Украинская повстанческая армия",
      organization_of_ukrainian_nationalists: "Организация украинских националистов",
      russian_liberation_army: "Русская освободительная армия",
      german_collaborators: "Немецкие коллаборационисты",
      white_emigration: "Белая эмиграция",
    },
    en: {
      russian_empire_1900_1917: "Russian Empire - 1900-1917",
      russian_republic_1917: "Russian Republic - 1917",
      rsfsr_1917_1991: "RSFSR - 1917-1991",
      ussr: "USSR - 1922-1991",
      russian_federation_1991: "Russian Federation - 1991",
      finland_1917: "Finland - 1917",
      estonia_first_republic_1918_1940: "Estonia (First Republic) - 1918-1940",
      estonian_ssr_1940_1991: "Estonian SSR - 1940-1991",
      estonia_1991: "Estonia - 1991",
      latvia_first_republic_1918_1940: "Latvia (First Republic) - 1918-1940",
      latvian_ssr_1940_1990: "Latvian SSR - 1940-1990",
      latvia_1991: "Latvia - 1991",
      lithuania_first_republic_1918_1940: "Lithuania (First Republic) - 1918-1940",
      lithuanian_ssr_1940_1990: "Lithuanian SSR - 1940-1990",
      lithuania_1990: "Lithuania - 1990",
      belarusian_peoples_republic_1918_1919: "Belarusian People's Republic - 1918-1919",
      bssr_1919_1991: "Byelorussian SSR - 1919-1991",
      belarus_1991: "Belarus - 1991",
      ukrainian_peoples_republic_1917_1921: "Ukrainian People's Republic - 1917-1921",
      ukrainian_state_1918: "Ukrainian State - 1918",
      ukr_ssr_1919_1991: "Ukrainian SSR - 1919-1991",
      ukraine_1991: "Ukraine - 1991",
      moldavian_democratic_republic_1917_1918: "Moldavian Democratic Republic - 1917-1918",
      moldavian_ssr_1940_1991: "Moldavian SSR - 1940-1991",
      moldova_1991: "Moldova - 1991",
      second_polish_republic_1918_1939: "Second Polish Republic - 1918-1939",
      polish_peoples_republic_1952_1989: "Polish People's Republic - 1952-1989",
      poland_1989: "Poland - 1989",
      czechoslovakia_first_republic_1918_1938: "Czechoslovakia (First Republic) - 1918-1938",
      czecho_slovakia_second_republic_1938_1939: "Czecho-Slovakia (Second Republic) - 1938-1939",
      protectorate_bohemia_moravia_1939_1945: "Protectorate of Bohemia and Moravia - 1939-1945",
      slovak_republic_first_1939_1945: "Slovak Republic (First) - 1939-1945",
      czechoslovakia_1945_1992: "Czechoslovakia - 1945-1992",
      czechia_1993: "Czechia - 1993",
      slovakia_1993: "Slovakia - 1993",
      first_austrian_republic_1919_1934: "First Austrian Republic - 1919-1934",
      federal_state_of_austria_1934_1938: "Federal State of Austria - 1934-1938",
      austria_in_nazi_germany_1938_1945: "Austria within Nazi Germany - 1938-1945",
      austria_1945: "Austria - 1945",
      german_empire_1900_1918: "German Empire - 1900-1918",
      weimar_republic_1918_1933: "Weimar Republic - 1918-1933",
      third_reich_1933_1945: "Third Reich - 1933-1945",
      gdr_1949_1990: "GDR - 1949-1990",
      frg_1949: "FRG - 1949",
      germany_1990: "Germany (Reunified) - 1990",
      kingdom_of_hungary_regency_1920_1946: "Kingdom of Hungary (Regency) - 1920-1946",
      second_hungarian_republic_1946_1949: "Second Hungarian Republic - 1946-1949",
      hungarian_peoples_republic_1949_1989: "Hungarian People's Republic - 1949-1989",
      hungary_1989: "Hungary - 1989",
      kingdom_of_romania_1900_1947: "Kingdom of Romania - 1900-1947",
      romanian_peoples_republic_1947_1965: "Romanian People's Republic - 1947-1965",
      socialist_republic_of_romania_1965_1989: "Socialist Republic of Romania - 1965-1989",
      romania_1989: "Romania - 1989",
      tsardom_of_bulgaria_1908_1946: "Tsardom of Bulgaria - 1908-1946",
      peoples_republic_of_bulgaria_1946_1990: "People's Republic of Bulgaria - 1946-1990",
      bulgaria_1990: "Bulgaria - 1990",
      kingdom_serbs_croats_slovenes_1918_1929: "Kingdom of Serbs, Croats and Slovenes - 1918-1929",
      kingdom_of_yugoslavia_1929_1945: "Kingdom of Yugoslavia - 1929-1945",
      yugoslavia_socialist_1945_1992: "Yugoslavia (Socialist period) - 1945-1992",
      federal_republic_of_yugoslavia_1992_2003: "Federal Republic of Yugoslavia - 1992-2003",
      serbia_and_montenegro_2003_2006: "Serbia and Montenegro - 2003-2006",
      serbia_2006: "Serbia - 2006",
      montenegro_2006: "Montenegro - 2006",
      slovenia_1991: "Slovenia - 1991",
      croatia_1991: "Croatia - 1991",
      bosnia_and_herzegovina_1992: "Bosnia and Herzegovina - 1992",
      north_macedonia_1991: "North Macedonia - 1991",
      kingdom_of_albania_1928_1939: "Kingdom of Albania - 1928-1939",
      peoples_republic_of_albania_1946_1976: "People's Republic of Albania - 1946-1976",
      peoples_socialist_republic_of_albania_1976_1991: "People's Socialist Republic of Albania - 1976-1991",
      albania_1991: "Albania - 1991",
      kingdom_of_greece_1900_1973: "Kingdom of Greece - 1900-1973",
      hellenic_republic_1974: "Hellenic Republic - 1974",
      ottoman_empire_1900_1922: "Ottoman Empire - 1900-1922",
      turkey_1923: "Turkey - 1923",
      transcaucasian_democratic_federative_republic_1918: "Transcaucasian Democratic Federative Republic - 1918",
      tsfsr_1922_1936: "Transcaucasian SFSR - 1922-1936",
      first_republic_of_armenia_1918_1920: "First Republic of Armenia - 1918-1920",
      armenian_ssr_1920_1991: "Armenian SSR - 1920-1991",
      armenia_1991: "Armenia - 1991",
      azerbaijan_democratic_republic_1918_1920: "Azerbaijan Democratic Republic - 1918-1920",
      azerbaijan_ssr_1920_1991: "Azerbaijan SSR - 1920-1991",
      azerbaijan_1991: "Azerbaijan - 1991",
      democratic_republic_of_georgia_1918_1921: "Democratic Republic of Georgia - 1918-1921",
      georgian_ssr_1921_1991: "Georgian SSR - 1921-1991",
      georgia_1991: "Georgia - 1991",
      kazakh_ssr_1936_1991: "Kazakh SSR - 1936-1991",
      kazakhstan_1991: "Kazakhstan - 1991",
      narodnaya_volya: "Narodnaya Volya",
      armia_krajowa: "Armia Krajowa",
      armia_ludowa: "Armia Ludowa",
      forest_brothers: "Forest Brothers",
      chetniks: "Chetniks",
      ira: "IRA",
      ukrainian_insurgent_army: "Ukrainian Insurgent Army",
      organization_of_ukrainian_nationalists: "Organization of Ukrainian Nationalists",
      russian_liberation_army: "Russian Liberation Army",
      german_collaborators: "German collaborators",
      white_emigration: "White Emigration",
    },
    uk: {},
    et: {},
  },
  period: {
    ru: {
      ussr_1922_1940: "Довоенный период (1922-1940)",
      ussr_1941_1945: "Великая Отечественная война (1941-1945)",
      ussr_1946_1953: "Послевоенный период (1946-1953)",
      ussr_1953_1964: "Оттепель (1953-1964)",
      ussr_1964_1985: "Развитой социализм (1964-1985)",
      ussr_1985_1991: "Перестройка (1985-1991)",
    },
    en: {
      ussr_1922_1940: "Pre-war period (1922-1940)",
      ussr_1941_1945: "Great Patriotic War (1941-1945)",
      ussr_1946_1953: "Post-war period (1946-1953)",
      ussr_1953_1964: "Khrushchev Thaw (1953-1964)",
      ussr_1964_1985: "Developed socialism (1964-1985)",
      ussr_1985_1991: "Perestroika (1985-1991)",
    },
    uk: {
      ussr_1922_1940: "Довоєнний період (1922-1940)",
      ussr_1941_1945: "Друга світова війна (1941-1945)",
      ussr_1946_1953: "Повоєнний період (1946-1953)",
      ussr_1953_1964: "Відлига (1953-1964)",
      ussr_1964_1985: "Розвинений соціалізм (1964-1985)",
      ussr_1985_1991: "Перебудова (1985-1991)",
    },
    et: {
      ussr_1922_1940: "Sõjaeelne periood (1922-1940)",
      ussr_1941_1945: "Suur Isamaasõda (1941-1945)",
      ussr_1946_1953: "Sõjajärgne periood (1946-1953)",
      ussr_1953_1964: "Sulaaeg (1953-1964)",
      ussr_1964_1985: "Arenenud sotsialism (1964-1985)",
      ussr_1985_1991: "Perestroika (1985-1991)",
    },
  },
};

const FIELD_LABELS = {
  performer: {
    ru: "Исполнитель",
    uk: "Виконавець",
    en: "Performer",
    et: "Esitaja",
  },
  description: {
    ru: "Описание",
    uk: "Опис",
    en: "Description",
    et: "Kirjeldus",
  },
  selectLanguage: {
    ru: "Выберите язык",
    uk: "Оберіть мову",
    en: "Select language",
    et: "Vali keel",
  },
  selectCountry: {
    ru: "Выберите страну",
    uk: "Оберіть країну",
    en: "Select country",
    et: "Vali riik",
  },
  selectPeriod: {
    ru: "Выберите период СССР",
    uk: "Оберіть період СРСР",
    en: "Select USSR period",
    et: "Vali NSVL periood",
  },
  legacyValue: {
    ru: "Устаревшее значение",
    uk: "Застаріле значення",
    en: "Legacy value",
    et: "Vananenud väärtus",
  },
};

const LANGUAGE_ALIASES = withCanonicalAliases(SONG_LANGUAGE_VALUES, {
  russian: "ru",
  русский: "ru",
  ukrainian: "uk",
  украинский: "uk",
  belarusian: "be",
  belorussian: "be",
  белорусский: "be",
  polish: "pl",
  польский: "pl",
  lithuanian: "lt",
  литовский: "lt",
  latvian: "lv",
  латышский: "lv",
  estonian: "et",
  эстонский: "et",
  finnish: "fi",
  финский: "fi",
  english: "en",
  английский: "en",
  albanian: "sq",
  armenian: "hy",
  azerbaijani: "az",
  basque: "eu",
  bosnian: "bs",
  bulgarian: "bg",
  catalan: "ca",
  croatian: "hr",
  czech: "cs",
  danish: "da",
  dutch: "nl",
  faroese: "fo",
  french: "fr",
  galician: "gl",
  georgian: "ka",
  german: "de",
  greek: "el",
  hungarian: "hu",
  icelandic: "is",
  irish: "ga",
  italian: "it",
  kazakh: "kk",
  luxembourgish: "lb",
  macedonian: "mk",
  maltese: "mt",
  norwegian: "no",
  portuguese: "pt",
  romanian: "ro",
  serbian: "sr",
  slovak: "sk",
  slovenian: "sl",
  spanish: "es",
  swedish: "sv",
  turkish: "tr",
  welsh: "cy",
  japanese: "ja",
});

const COUNTRY_ALIASES = withCanonicalAliases(SONG_COUNTRY_VALUES, {
  russian_empire: "russian_empire_1900_1917",
  russian_empire_1900_1917: "russian_empire_1900_1917",
  российская_империя: "russian_empire_1900_1917",
  российская_империя_1900_1917: "russian_empire_1900_1917",
  российская_республика: "russian_republic_1917",
  рсфср: "rsfsr_1917_1991",
  ссср: "ussr",
  советский_союз: "ussr",
  soviet_union: "ussr",
  russia: "russian_federation_1991",
  россия: "russian_federation_1991",
  российская_федерация: "russian_federation_1991",
  ukraine: "ukraine_1991",
  украина: "ukraine_1991",
  belarus: "belarus_1991",
  беларусь: "belarus_1991",
  белоруссия: "belarus_1991",
  moldova: "moldova_1991",
  молдова: "moldova_1991",
  estonia: "estonia_1991",
  эстония: "estonia_1991",
  latvia: "latvia_1991",
  латвия: "latvia_1991",
  lithuania: "lithuania_1990",
  литва: "lithuania_1990",
  poland: "poland_1989",
  польша: "poland_1989",
  finland: "finland_1917",
  финляндия: "finland_1917",
  germany: "germany_1990",
  германия: "germany_1990",
  romania: "romania_1989",
  румыния: "romania_1989",
  bulgaria: "bulgaria_1990",
  болгария: "bulgaria_1990",
  hungary: "hungary_1989",
  венгрия: "hungary_1989",
  austria: "austria_1945",
  австрия: "austria_1945",
  czechia: "czechia_1993",
  czech_republic: "czechia_1993",
  чехия: "czechia_1993",
  slovakia: "slovakia_1993",
  словакия: "slovakia_1993",
  slovenia: "slovenia_1991",
  словения: "slovenia_1991",
  croatia: "croatia_1991",
  хорватия: "croatia_1991",
  serbia: "serbia_2006",
  сербия: "serbia_2006",
  montenegro: "montenegro_2006",
  черногория: "montenegro_2006",
  bosnia_and_herzegovina: "bosnia_and_herzegovina_1992",
  bosnia: "bosnia_and_herzegovina_1992",
  босния_и_герцеговина: "bosnia_and_herzegovina_1992",
  north_macedonia: "north_macedonia_1991",
  macedonia: "north_macedonia_1991",
  северная_македония: "north_macedonia_1991",
  albania: "albania_1991",
  албания: "albania_1991",
  greece: "hellenic_republic_1974",
  greece_1974: "hellenic_republic_1974",
  греция: "hellenic_republic_1974",
  turkey: "turkey_1923",
  турция: "turkey_1923",
  georgia: "georgia_1991",
  грузия: "georgia_1991",
  armenia: "armenia_1991",
  армения: "armenia_1991",
  azerbaijan: "azerbaijan_1991",
  азербайджан: "azerbaijan_1991",
  kazakhstan: "kazakhstan_1991",
  казахстан: "kazakhstan_1991",
  народная_воля: "narodnaya_volya",
  armia_krajowa: "armia_krajowa",
  армия_крайова: "armia_krajowa",
  armia_ludowa: "armia_ludowa",
  армия_людова: "armia_ludowa",
  лесные_братья: "forest_brothers",
  forest_brothers: "forest_brothers",
  четники: "chetniks",
  chetniks: "chetniks",
  ira: "ira",
  ира: "ira",
  irish_republican_army: "ira",
  упа: "ukrainian_insurgent_army",
  ukrainian_insurgent_army: "ukrainian_insurgent_army",
  украинская_повстанческая_армия: "ukrainian_insurgent_army",
  оун: "organization_of_ukrainian_nationalists",
  organization_of_ukrainian_nationalists: "organization_of_ukrainian_nationalists",
  организация_украинских_националистов: "organization_of_ukrainian_nationalists",
  роа: "russian_liberation_army",
  russian_liberation_army: "russian_liberation_army",
  русская_освободительная_армия: "russian_liberation_army",
  german_collaborators: "german_collaborators",
  немецкие_коллаборационисты: "german_collaborators",
  немецкие_коллабарационисты: "german_collaborators",
  latvian_ss_legion: "german_collaborators",
  латышский_легион: "german_collaborators",
  латышский_легион_сс: "german_collaborators",
  estonian_ss_division: "german_collaborators",
  эстонская_дивизия: "german_collaborators",
  эстонская_дивизия_сс: "german_collaborators",
  white_emigration: "white_emigration",
  белая_эмиграция: "white_emigration",
});

const PERIOD_ALIASES = withCanonicalAliases(USSR_PERIOD_VALUES, {
  довоенный: "ussr_1922_1940",
  довоенный_период: "ussr_1922_1940",
  pre_war: "ussr_1922_1940",
  вов: "ussr_1941_1945",
  великая_отечественная_война: "ussr_1941_1945",
  ww2: "ussr_1941_1945",
  great_patriotic_war: "ussr_1941_1945",
  послевоенный: "ussr_1946_1953",
  post_war: "ussr_1946_1953",
  оттепель: "ussr_1953_1964",
  thaw: "ussr_1953_1964",
  развитой_социализм: "ussr_1964_1985",
  застой: "ussr_1964_1985",
  developed_socialism: "ussr_1964_1985",
  перестройка: "ussr_1985_1991",
  perestroika: "ussr_1985_1991",
});

function normalizeWithAliases(value, canonicalSet, aliases) {
  const raw = clean(value);
  if (!raw) return null;
  if (canonicalSet.has(raw)) return raw;
  const alias = aliases[fold(raw)];
  return alias && canonicalSet.has(alias) ? alias : null;
}

export function normalizeSongLanguage(value) {
  return normalizeWithAliases(value, LANGUAGE_SET, LANGUAGE_ALIASES);
}

export function normalizeSongCountry(value) {
  return normalizeWithAliases(value, COUNTRY_SET, COUNTRY_ALIASES);
}

export function normalizeSongPeriod(value) {
  return normalizeWithAliases(value, PERIOD_SET, PERIOD_ALIASES);
}

export function normalizeSongCatalogInput(input = {}) {
  const lang = normalizeSongLanguage(input.lang);
  if (!lang) return { ok: false, error: "Invalid language value" };

  const rawCountry = clean(input.country);
  const country = rawCountry ? normalizeSongCountry(rawCountry) : null;
  if (rawCountry && !country) return { ok: false, error: "Invalid country value" };

  if (country !== "ussr") {
    return { ok: true, value: { lang, country, period: null } };
  }

  const rawPeriod = clean(input.period);
  if (!rawPeriod) return { ok: true, value: { lang, country, period: null } };
  const period = normalizeSongPeriod(rawPeriod);
  if (!period) return { ok: false, error: "Invalid USSR period value" };
  return { ok: true, value: { lang, country, period } };
}

function labelFor(kind, value, locale) {
  const lc = pickLocale(locale);
  const table = LABELS[kind];
  if (lc === "uk" || lc === "et") {
    return table?.[lc]?.[value] || table?.ru?.[value] || table?.en?.[value] || value;
  }
  return table?.[lc]?.[value] || table?.en?.[value] || table?.ru?.[value] || value;
}

export function getCatalogLabel(kind, value, locale) {
  const raw = clean(value);
  if (!raw) return "-";
  if (kind === "language") {
    const canonical = normalizeSongLanguage(raw);
    return canonical ? labelFor("language", canonical, locale) : raw;
  }
  if (kind === "country") {
    const canonical = normalizeSongCountry(raw);
    return canonical ? labelFor("country", canonical, locale) : raw;
  }
  if (kind === "period") {
    const canonical = normalizeSongPeriod(raw);
    return canonical ? labelFor("period", canonical, locale) : raw;
  }
  return raw;
}

function getKindValues(kind) {
  if (kind === "language") return SONG_LANGUAGE_VALUES;
  if (kind === "country") return SONG_COUNTRY_VALUES;
  if (kind === "period") return USSR_PERIOD_VALUES;
  return [];
}

function normalizeForKind(kind, value) {
  if (kind === "language") return normalizeSongLanguage(value);
  if (kind === "country") return normalizeSongCountry(value);
  if (kind === "period") return normalizeSongPeriod(value);
  return null;
}

export function getCatalogOptions(kind, locale, currentValue = "") {
  const values = getKindValues(kind);
  const options = values.map((value) => ({
    value,
    label: getCatalogLabel(kind, value, locale),
    legacy: false,
  }));
  if (kind === "country") {
    const collator = new Intl.Collator(pickLocale(locale), { sensitivity: "base", numeric: true });
    options.sort((a, b) => collator.compare(a.label, b.label));
  }

  const raw = clean(currentValue);
  if (!raw) return options;
  const canonical = normalizeForKind(kind, raw);
  if (canonical) return options;

  options.unshift({
    value: raw,
    label: `${raw} (${getUiText("legacyValue", locale)})`,
    legacy: true,
  });
  return options;
}

export function getUiText(key, locale) {
  const lc = pickLocale(locale);
  return FIELD_LABELS[key]?.[lc] || FIELD_LABELS[key]?.en || key;
}

