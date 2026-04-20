export const MIN_SONG_LYRIC_WORDS = 40;

export function countLyricWords(value = "") {
  const text = String(value || "").trim();
  if (!text) return 0;
  const words = text.match(/[\p{L}\p{N}]+(?:['’`-][\p{L}\p{N}]+)*/gu);
  return Array.isArray(words) ? words.length : 0;
}

export function hasMinimumSongLyricWords(value = "", minWords = MIN_SONG_LYRIC_WORDS) {
  return countLyricWords(value) >= Math.max(1, Number(minWords || MIN_SONG_LYRIC_WORDS) || MIN_SONG_LYRIC_WORDS);
}

export function shortLyricsErrorMessage(minWords = MIN_SONG_LYRIC_WORDS) {
  return `lyrics must contain at least ${Math.max(1, Number(minWords || MIN_SONG_LYRIC_WORDS) || MIN_SONG_LYRIC_WORDS)} words`;
}
