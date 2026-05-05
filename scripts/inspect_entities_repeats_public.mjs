const BASE = "https://euro-songbook.pages.dev";
const CONCURRENCY = 12;
const MAX_ENTITY_SEARCH_PAGES = 8;

const ENTITY_TERMS = [
  "nbsp",
  "laquo",
  "raquo",
  "amp",
  "quot",
  "apos",
  "ndash",
  "mdash",
  "hellip",
  "rsquo",
  "lsquo",
  "rdquo",
  "ldquo",
  "copy",
  "#",
];

const ENTITY_RE = /&(?:[a-zA-Z][a-zA-Z0-9]+|#\d+|#x[0-9a-fA-F]+);/g;
const ESTONIAN_REPEAT_RE = /(?::\s*,\s*:|:,\s*:|:\s*,\s*:|\|:\s*.*?:\|)/;

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

function collectEntities(song) {
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
        const entities = Array.from(new Set(line.match(ENTITY_RE) || []));
        if (entities.length) hits.push({ field, line: index + 1, entities, text: line.trim() });
      });
  }
  return hits;
}

function collectEstonianRepeats(song) {
  const fields = [
    ["lyrics", song.lyrics],
    ...(song.versions || []).map((version, index) => [`version_${index + 1}`, version.lyrics]),
  ];
  const hits = [];
  for (const [field, value] of fields) {
    String(value || "")
      .split(/\r?\n/)
      .forEach((line, index) => {
        const text = line.trim();
        if (ESTONIAN_REPEAT_RE.test(text)) hits.push({ field, line: index + 1, text });
      });
  }
  return hits;
}

const entityCandidates = new Map();
for (const term of ENTITY_TERMS) {
  const first = await getJson(`${BASE}/api/songs?q=${encodeURIComponent(term)}&page=1`);
  for (let page = 1; page <= Math.min(Number(first.pages || 1), MAX_ENTITY_SEARCH_PAGES); page++) {
    const data = page === 1 ? first : await getJson(`${BASE}/api/songs?q=${encodeURIComponent(term)}&page=${page}`);
    for (const item of data.items || []) {
      if (!entityCandidates.has(item.id)) entityCandidates.set(item.id, { ...item, term });
    }
  }
}

const entityFindings = [];
const entityCounts = {};
const inspectedEntityCandidates = await mapLimit(Array.from(entityCandidates.values()), CONCURRENCY, async (item) => {
  const song = await getJson(`${BASE}/api/songs/${encodeURIComponent(item.id)}`);
  const hits = collectEntities(song);
  return { ...item, hits };
});
for (const item of inspectedEntityCandidates) {
  const hits = item.hits || [];
  if (!hits.length) continue;
  for (const hit of hits) {
    for (const entity of hit.entities) entityCounts[entity] = (entityCounts[entity] || 0) + 1;
  }
  entityFindings.push(item);
}

const etFirst = await getJson(`${BASE}/api/songs?lang=et&page=1`);
const etItems = [];
for (let page = 1; page <= Number(etFirst.pages || 1); page++) {
  const data = page === 1 ? etFirst : await getJson(`${BASE}/api/songs?lang=et&page=${page}`);
  etItems.push(...(data.items || []).map((item) => ({ ...item, page })));
}

const repeatFindings = [];
const inspectedEtItems = await mapLimit(etItems, CONCURRENCY, async (item) => {
  const song = await getJson(`${BASE}/api/songs/${encodeURIComponent(item.id)}`);
  const hits = collectEstonianRepeats(song);
  return { ...item, hits };
});
for (const item of inspectedEtItems) {
  if (item.hits?.length) repeatFindings.push(item);
}

console.log(`entity_candidates=${entityCandidates.size} entity_findings=${entityFindings.length}`);
console.log(`entity_counts=${JSON.stringify(entityCounts)}`);
for (const finding of entityFindings.slice(0, 80)) {
  console.log(`- ENTITY [${finding.lang}] ${finding.title} | id=${finding.id} | country=${finding.country || ""}`);
  for (const hit of finding.hits.slice(0, 5)) {
    console.log(`  ${hit.field}:L${hit.line} ${hit.entities.join(", ")} :: ${hit.text.slice(0, 220)}`);
  }
}

console.log(`\net_checked=${etItems.length} et_repeat_findings=${repeatFindings.length}`);
for (const finding of repeatFindings.slice(0, 80)) {
  console.log(`- REPEAT ${finding.title} | id=${finding.id} | page=${finding.page}`);
  for (const hit of finding.hits.slice(0, 8)) {
    console.log(`  ${hit.field}:L${hit.line} ${hit.text.slice(0, 220)}`);
  }
}
