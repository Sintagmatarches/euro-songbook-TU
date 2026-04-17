export const SONG_DUPLICATE_KEY_SQL = `
  lower(trim(coalesce(s.title, ''))) || '|' ||
  lower(trim(coalesce(s.subtitle, ''))) || '|' ||
  lower(trim(coalesce(s.lang, ''))) || '|' ||
  lower(trim(coalesce(s.country, ''))) || '|' ||
  lower(trim(coalesce(s.period, ''))) || '|' ||
  trim(coalesce(s.year, '')) || '|' ||
  lower(trim(coalesce(s.region, ''))) || '|' ||
  lower(trim(coalesce(s.event, ''))) || '|' ||
  lower(trim(coalesce(s.theme, ''))) || '|' ||
  replace(coalesce(s.lyrics, ''), char(13), '')
`;
