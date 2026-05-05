const BASE = "https://euro-songbook.pages.dev";

const QUERIES = [
  "Акорди",
  "акорди",
  "Аккорды",
  "аккорды",
  "тональності",
  "тональность",
  "баре",
  "капо",
  "перебір",
  "перебор",
  "chords",
  "tabs",
  "capo",
  "transpose",
  "barre",
  "guitar",
  "acordes",
  "acorde",
  "cejilla",
  "tonalidad",
  "tablatura",
  "accordi",
  "accordo",
  "tonalità",
  "barrè",
  "chitarra",
  "akkorde",
  "akkord",
  "gitarre",
  "akordy",
  "akord",
  "chwyty",
  "gitara",
  "kapodaster",
  "tonacja",
  "akordai",
  "akordi",
  "akordid",
  "kitar",
  "akorduri",
  "acorduri",
];

const CHORD_TOKEN = String.raw`[A-H](?:#|b)?(?:maj|min|m|dim|aug|sus|add)?\d*(?:\/[A-H](?:#|b)?)?`;
const CHORD_LINE_RE = new RegExp(
  String.raw`^\s*(?:\(?${CHORD_TOKEN}\)?[\s|,;:/-]+){2,}\(?${CHORD_TOKEN}\)?\s*$`,
  "i",
);
const TAB_LINE_RE = /^\s*(?:[eBGDAE]|[1-6])\|[-0-9hpsx/\\| ]{6,}\s*$/i;
const DIGIT_TAB_RE = /^\s*[1-6]\s+[-0-9hpsx/\\ ]{8,}\s*$/i;
const BRACKET_CHORD_RE = new RegExp(String.raw`\[(?:${CHORD_TOKEN})\]`, "ig");

const STRONG_WORDS = [
  /\bchords?\b/i,
  /\btabs?\b/i,
  /\btranspose\b/i,
  /\bbarre\b/i,
  /\bguitar chords?\b/i,
  /\bacordes?\b/i,
  /\btablatura\b/i,
  /\btonalidad\b/i,
  /\bcejilla\b/i,
  /\baccordi\b/i,
  /\btonalit[aà]\b/i,
  /\bchitarra\b/i,
  /\bakkorde\b/i,
  /\bgitarre\b/i,
  /\bkapodaster\b/i,
  /\bakordy\b/i,
  /\bchwyty\b/i,
  /\bgitara\b/i,
  /\btonacja\b/i,
  /Акорди/i,
  /акорди/i,
  /Аккорды/i,
  /аккорды/i,
  /тональн/i,
  /баре/i,
  /каподастр/i,
  /переб[іи]р/i,
];

function inspect(song) {
  const fields = [
    ["lyrics", song.lyrics],
    ["verified_translation", song.verified_translation],
    ...(song.versions || []).map((version, index) => [`version_${index + 1}`, version.lyrics]),
  ];
  const hits = [];
  for (const [field, text] of fields) {
    const lines = String(text || "").split(/\r?\n/);
    lines.forEach((raw, index) => {
      const line = raw.trim();
      if (!line) return;
      const kinds = [];
      if (TAB_LINE_RE.test(line) || DIGIT_TAB_RE.test(line)) kinds.push("tab");
      const bracketChords = line.match(BRACKET_CHORD_RE);
      if ((bracketChords && bracketChords.length >= 2) || CHORD_LINE_RE.test(line)) kinds.push("chord-line");
      if (STRONG_WORDS.some((pattern) => pattern.test(line))) kinds.push("instruction");
      if (kinds.length) {
        hits.push({
          field,
          line: index + 1,
          kinds: Array.from(new Set(kinds)),
          text: line,
        });
      }
    });
  }
  return hits;
}

async function getJson(url) {
  const response = await fetch(url);
  if (!response.ok) return null;
  return response.json();
}

const candidates = new Map();
for (const query of QUERIES) {
  const data = await getJson(`${BASE}/api/songs?q=${encodeURIComponent(query)}&page=1`);
  if (!data?.items) continue;
  for (const item of data.items.slice(0, 10)) {
    if (!candidates.has(item.id)) candidates.set(item.id, { ...item, query });
  }
}

const findings = [];
for (const item of candidates.values()) {
  const song = await getJson(`${BASE}/api/songs/${encodeURIComponent(item.id)}`);
  if (!song) continue;
  const hits = inspect(song);
  if (hits.length) findings.push({ ...item, hits });
}

const byLang = {};
const byCountry = {};
for (const finding of findings) {
  byLang[finding.lang] = (byLang[finding.lang] || 0) + 1;
  byCountry[finding.country] = (byCountry[finding.country] || 0) + 1;
}

console.log(`queries=${QUERIES.length} candidates=${candidates.size} findings=${findings.length}`);
console.log(`byLang=${JSON.stringify(byLang)}`);
console.log(`byCountry=${JSON.stringify(byCountry)}`);
for (const finding of findings.slice(0, 120)) {
  console.log(
    `- q=${finding.query} [${finding.lang}] ${finding.title} | id=${finding.id} | country=${finding.country || ""} | year=${finding.year || ""}`,
  );
  for (const hit of finding.hits.slice(0, 8)) {
    console.log(`  ${hit.field}:L${hit.line} [${hit.kinds.join(",")}] ${hit.text.slice(0, 240)}`);
  }
}
