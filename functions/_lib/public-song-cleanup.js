const ROMAN_CHORD_POS_RE = /\([IVX]{1,6}\)$/i;
const CHORD_TOKEN_RE = /^[A-H](?:#|b)?(?:maj|min|m|M|dim|aug|sus|add)?(?:[-+]?\d+(?:\/\d+)?|maj\d+|sus\d+)?(?:\/[A-H](?:#|b)?)?$/i;
const CHORD_LABEL_RE = /^(?:вступ|програш|проигрыш|intro|solo|riff|bridge)\s*:\s*(.+)$/i;

function normalizeLine(line = "") {
  return String(line || "").replace(/\r/g, "").trim();
}

function isChordLine(line = "") {
  const raw = normalizeLine(line);
  if (!raw) return false;
  const labelMatch = raw.match(CHORD_LABEL_RE);
  const stripped = labelMatch ? normalizeLine(labelMatch[1]) : raw;
  if (!stripped) return false;
  if (/[А-Яа-яЁёІіЇїЄє]/.test(stripped)) return false;
  const compact = stripped.replace(/\s+/g, "");
  if (!compact) return false;
  if (!/^[A-HIVXa-hivx0-9#bmM/()+\-\s|]+$/.test(stripped)) return false;
  const tokens = stripped
    .split(/\s+/)
    .map((token) => token.replace(/^[|[\]{}]+|[|[\]{}]+$/g, ""))
    .map((token) => token.replace(ROMAN_CHORD_POS_RE, ""))
    .map((token) => token.replace(/^\(+|\)+$/g, ""))
    .filter(Boolean);
  if (!tokens.length) return false;
  const chordish = tokens.reduce((count, token) => count + (CHORD_TOKEN_RE.test(token) ? 1 : 0), 0);
  if (tokens.length === 1) return chordish === 1;
  return chordish >= Math.max(2, Math.floor(tokens.length / 2));
}

export function sanitizePublicLyricsText(text = "") {
  const rawLines = String(text || "").replace(/\r\n?/g, "\n").split("\n");
  const kept = [];
  let changed = false;
  for (const rawLine of rawLines) {
    const stripped = normalizeLine(rawLine);
    if (!stripped) {
      if (kept.length && kept[kept.length - 1] !== "") kept.push("");
      continue;
    }
    if (isChordLine(stripped)) {
      changed = true;
      continue;
    }
    kept.push(rawLine);
  }
  while (kept.length && !normalizeLine(kept[0])) kept.shift();
  while (kept.length && !normalizeLine(kept[kept.length - 1])) kept.pop();
  return {
    lyrics: kept.join("\n"),
    changed,
  };
}
