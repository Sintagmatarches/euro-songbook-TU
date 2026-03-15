# euro-songbook (Cloudflare Pages + Pages Functions + D1)

Это рабочий каркас «цифрового песенника»:
- каталог песен, поиск по названию/тексту, фильтры
- страница песни: текст, метаданные, версии, внешние ссылки
- «ИИ‑кнопки»: формируют промпт и открывают ChatGPT в новой вкладке (без API)
- авторизация (JWT), роли user/admin
- избранное
- админка: добавление/редактирование/удаление, импорт JSON

## Что где
- `/index.html`, `/app.js`, `/app.css` — фронтенд (без сборки, работает сразу)
- `/functions/api/*` — backend (Cloudflare Pages Functions)
- `/db/schema.sql` — схема D1 (SQLite + FTS5)

## Настройка в Cloudflare (коротко)
Важно: **Direct Upload из панели (drag&drop) не работает с Pages Functions** — развертывай через Git или Wrangler.

1) Создай проект **Pages** и подключи репозиторий (или деплой через Wrangler).
2) Build settings:
   - Framework preset: None
   - Build command: (пусто)
   - Output directory: `/` (корень)
3) Создай базу **D1** и добавь binding `DB` в Pages.
4) Добавь переменные окружения в Pages:
   - `JWT_SECRET` — длинная случайная строка

## Первый запуск
1) Открой сайт и нажми **Регистрация**.
   - **Первый зарегистрированный пользователь становится админом автоматически.**
2) При первом обращении к API схема D1 создаётся автоматически и добавляются 3 демо‑песни.

## Импорт песен (админ)
- POST `/api/admin/import`
- Заголовок: `Authorization: Bearer <token>`
- Body: JSON-массив песен. Пример в `db/sample_songs.json`.

## Локальная разработка
Можно через `wrangler pages dev .` (нужен Wrangler).
