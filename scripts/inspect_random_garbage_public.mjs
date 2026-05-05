const BASE = "https://euro-songbook.pages.dev";
const SAMPLE_SIZE = 100;
const CONCURRENCY = 12;

const CHORD_TOKEN = String.raw`[A-H](?:#|b)?(?:maj|min|m|dim|aug|sus|add)?\d*(?:\/[A-H](?:#|b)?)?`;
const CHORD_LINE_RE = new RegExp(
  String.raw`^\s*(?:\(?${CHORD_TOKEN}\)?[\s|,;:/-]+){2,}\(?${CHORD_TOKEN}\)?\s*$`,
  "i",
);
const BRACKET_CHORD_RE = new RegExp(String.raw`\[(?:${CHORD_TOKEN})\]`, "ig");
const TAB_LINE_RE = /^\s*(?:[eBGDAE]|[1-6])\|[-0-9hpsx/\\| ]{6,}\s*$/i;
const DIGIT_TAB_RE = /^\s*[1-6]\s+[-0-9hpsx/\\ ]{8,}\s*$/i;
const HTML_RE = /(?:<\/?(?:div|span|p|br|a|script|style|table|tbody|tr|td|font|strong|em|img)\b|&(?:nbsp|amp|quot|lt|gt|copy|#\d+);)/i;
const URL_RE = /(?:https?:\/\/|www\.|\.html\b|\.php\b|mailto:)/i;
const CODE_RE = /(?:function\s*\(|document\.|window\.|onclick=|class=|style=|href=|src=|javascript:|\{\{|\}\})/i;
const MOJIBAKE_RE = /(?:\u0420[\x80-\xBF]|\u0421[\x80-\xBF]|\u00d0|\u00d1|\u00e2\u20ac|\u00c2)/u;

const CHORD_HEADER_RE =
  /^(?:Акорди|акорди|Аккорды|аккорды|Chords|Acordes|Accordi|Akkorde|Akordy)\s*(?:[:([]|$)/i;
const TONALITY_INSTRUCTION_RE =
  /(?:Зміна тональності|Оригінальна тональність|Інші тональності|капо на \d+|capo\s+\d+|transpose\s*[:=])/i;
const SOURCE_RESIDUE_RE =
  /^(?:source|источник|джерело|примітка|note)\s*[:：]|\b(?:download|print version|comments|login|register)\b/i;
const WEAK_SUSPICIOUS_RE =
  /(?:акорд|аккорд|тональн|капо|баре|переб[іи]р|\bchords?\b|\btabs?\b|\bcapo\b|\bbarre\b|\bguitar\b|\bgitarre\b|\bgitara\b|\bacordes?\b|\baccordi\b|\bakkorde?\b|\bakordy\b|\bchwyty\b|\btonacja\b|\btonalidad\b|\btablatura\b|\bkapodaster\b)/i;

function classifyLine(line) {
  const text = line.trim();
  if (!text) return [];
  const kinds = [];
  if (TAB_LINE_RE.test(text) || DIGIT_TAB_RE.test(text)) kinds.push("guitar tab / numeric fingering");
  const bracketChords = text.match(BRACKET_CHORD_RE);
  if (CHORD_LINE_RE.test(text) || (bracketChords && bracketChords.length >= 2)) kinds.push("guitar chord line");
  if (CHORD_HEADER_RE.test(text) || TONALITY_INSTRUCTION_RE.test(text)) kinds.push("chord section/instruction");
  if (HTML_RE.test(text)) kinds.push("html/entity residue");
  if (URL_RE.test(text)) kinds.push("url/source residue");
  if (CODE_RE.test(text)) kinds.push("parser/code residue");
  if (SOURCE_RESIDUE_RE.test(text)) kinds.push("source/site-ui residue");
  if (MOJIBAKE_RE.test(text)) kinds.push("mojibake/encoding residue");
  if (WEAK_SUSPICIOUS_RE.test(text)) kinds.push("weak suspicious anchor");
  return kinds;
}

function inspect(song) {
  const fields = [
    ["lyrics", song.lyrics],
    ["verified_translation", song.verified_translation],
    ...(song.versions || []).map((version, index) => [`version_${index + 1}`, version.lyrics]),
  ];
  const hits = [];
  for (const [field, value] of fields) {
    String(value || "")
      .split(/\r?\n/)
      .forEach((line, index) => {
        const kinds = classifyLine(line);
        if (kinds.length) {
          hits.push({
            field,
            line: index + 1,
            kinds: Array.from(new Set(kinds)),
            text: line.trim(),
          });
        }
      });
  }
  return hits;
}

async function getJson(url) {
  const response = await fetch(url);
  if (!response.ok) throw new Error(`${response.status} ${url}`);
  return response.json();
}

async function mapLimit(items, limit, fn) {
  const output = new Array(items.length);
  let next = 0;
  await Promise.all(
    Array.from({ length: limit }, async () => {
      while (next < items.length) {
        const index = next++;
        output[index] = await fn(items[index], index);
      }
    }),
  );
  return output;
}

function randomInt(min, max) {
  return min + Math.floor(Math.random() * (max - min + 1));
}

const first = await getJson(`${BASE}/api/songs?page=1`);
const sampled = new Map();
let guard = 0;
while (sampled.size < SAMPLE_SIZE && guard < SAMPLE_SIZE * 20) {
  guard++;
  const page = randomInt(1, Math.max(1, Number(first.pages || 1)));
  const data = await getJson(`${BASE}/api/songs?page=${page}`);
  if (!data.items?.length) continue;
  const item = data.items[Math.floor(Math.random() * data.items.length)];
  sampled.set(item.id, { ...item, samplePage: page });
}

const inspected = await mapLimit(Array.from(sampled.values()), CONCURRENCY, async (item) => {
  const song = await getJson(`${BASE}/api/songs/${encodeURIComponent(item.id)}`);
  return { ...item, hits: inspect(song) };
});

const findings = inspected.filter((item) => item.hits.length);
const kindCounts = {};
for (const finding of findings) {
  for (const hit of finding.hits) {
    for (const kind of hit.kinds) kindCounts[kind] = (kindCounts[kind] || 0) + 1;
  }
}

console.log(`checked=${inspected.length} total=${first.total} pages=${first.pages} findings=${findings.length}`);
console.log(`kind_counts=${JSON.stringify(kindCounts)}`);
for (const finding of findings) {
  console.log(
    `- [${finding.lang}] p${finding.samplePage} ${finding.title} | id=${finding.id} | country=${finding.country || ""} | year=${finding.year || ""}`,
  );
  for (const hit of finding.hits.slice(0, 8)) {
    console.log(`  ${hit.field}:L${hit.line} [${hit.kinds.join("; ")}] ${hit.text.slice(0, 240)}`);
  }
}
