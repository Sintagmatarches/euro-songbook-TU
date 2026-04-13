export const SONGBOOK_IMPORT_MARKER = "[[SONG BREAK]]";

const SONGBOOK_IMPORT_MARKER_REGEX = /^\s*(?:\[\[\s*song\s*break\s*\]\]|={3,}\s*song\s*break\s*={3,}|-{3,}\s*song\s*break\s*-{3,})\s*$/i;
const SONGBOOK_NUMBERED_SONG_REGEX = /^\s*(\d{1,4})\.\s*(.*\S)?\s*$/;

function trimSongLines(lines = []) {
  let start = 0;
  let end = lines.length;
  while (start < end && !String(lines[start] || "").trim()) start += 1;
  while (end > start && !String(lines[end - 1] || "").trim()) end -= 1;
  return lines.slice(start, end);
}

export function normalizeSongbookText(value = "") {
  return String(value ?? "")
    .replace(/\uFEFF/g, "")
    .replace(/\r\n?/g, "\n");
}

export function isSongbookMarkerLine(value = "") {
  return SONGBOOK_IMPORT_MARKER_REGEX.test(String(value || ""));
}

export function deriveSongbookSongTitle(lyrics = "", index = 0) {
  const normalized = normalizeSongbookText(lyrics);
  const lines = normalized.split("\n").map((line) => String(line || "").trim()).filter(Boolean);
  const firstLine = String(lines[0] || "").trim();
  if (firstLine) return firstLine.slice(0, 160);
  return `Song ${Number(index || 0) + 1}`;
}

export function splitSongbookImportText(value = "") {
  const normalizedText = normalizeSongbookText(value);
  const sourceLines = normalizedText.split("\n");
  const songs = [];
  let buffer = [];
  let markerCount = 0;
  let sourceStartLine = 1;

  const flush = () => {
    const trimmed = trimSongLines(buffer);
    const lyrics = trimmed.join("\n").trim();
    if (!lyrics) {
      buffer = [];
      return;
    }
    const index = songs.length;
    songs.push({
      index,
      ordinal: index + 1,
      title: deriveSongbookSongTitle(lyrics, index),
      lyrics,
      line_count: trimmed.length,
      source_start_line: sourceStartLine,
      source_end_line: sourceStartLine + Math.max(trimmed.length - 1, 0),
    });
    buffer = [];
  };

  for (let lineIndex = 0; lineIndex < sourceLines.length; lineIndex += 1) {
    const line = String(sourceLines[lineIndex] || "");
    if (isSongbookMarkerLine(line)) {
      markerCount += 1;
      flush();
      sourceStartLine = lineIndex + 2;
      continue;
    }
    buffer.push(line);
  }

  flush();

  return {
    normalizedText,
    songs,
    songCount: songs.length,
    markerCount,
  };
}

export function splitNumberedSongbookText(value = "") {
  const normalizedText = normalizeSongbookText(value);
  const sourceLines = normalizedText.split("\n");
  const songs = [];
  let buffer = [];
  let currentNumber = null;
  let sourceStartLine = 1;

  const flush = () => {
    const trimmed = trimSongLines(buffer);
    const lyrics = trimmed.join("\n").trim();
    if (!lyrics) {
      buffer = [];
      currentNumber = null;
      return;
    }
    const index = songs.length;
    songs.push({
      index,
      ordinal: index + 1,
      source_number: currentNumber,
      title: deriveSongbookSongTitle(lyrics, index),
      lyrics,
      line_count: trimmed.length,
      source_start_line: sourceStartLine,
      source_end_line: sourceStartLine + Math.max(trimmed.length - 1, 0),
    });
    buffer = [];
    currentNumber = null;
  };

  for (let lineIndex = 0; lineIndex < sourceLines.length; lineIndex += 1) {
    const line = String(sourceLines[lineIndex] || "");
    const heading = line.match(SONGBOOK_NUMBERED_SONG_REGEX);
    if (heading) {
      flush();
      currentNumber = Number(heading[1]);
      sourceStartLine = lineIndex + 1;
      const titleLine = String(heading[2] || "").trim();
      buffer = titleLine ? [titleLine] : [];
      continue;
    }
    if (currentNumber !== null) buffer.push(line);
  }

  flush();

  return {
    normalizedText,
    songs,
    songCount: songs.length,
  };
}
