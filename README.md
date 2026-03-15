# euro-songbook (Cloudflare Pages + Pages Functions + D1)

Рабочий каркас цифрового песенника:
- каталог песен, поиск по названию и тексту, фильтры
- страница песни: текст, метаданные, версии, внешние ссылки
- AI-кнопки: формируют prompt и открывают ChatGPT в новой вкладке
- авторизация на JWT
- избранное
- черновики
- админка: создание, редактирование, удаление, импорт

## Структура
- `/index.html`, `/app.js`, `/app.css` — фронтенд без сборки
- `/functions/api/*` — backend на Pages Functions
- `/db/schema.sql` — схема D1

## Настройка Cloudflare
Важно: direct upload из панели не подходит для Pages Functions. Используйте Git или Wrangler.

1. Создайте проект **Pages**.
2. Build settings:
   - Framework preset: `None`
   - Build command: пусто
   - Output directory: `/`
3. Создайте базу **D1** и добавьте binding `DB`.
4. Настройте переменные окружения в Pages:
   - `JWT_SECRET` — длинный случайный секрет
   - `SETUP_TOKEN` — секрет для setup endpoint, если он нужен
   - `ENABLE_SETUP=0` — оставляйте выключенным после первичной инициализации

## Локальная разработка
Для локального запуска используйте `.dev.vars`. Пример лежит в `.dev.vars.example`.

Запуск:

```bash
npx wrangler pages dev .
```

## Первый запуск
1. Откройте сайт и зарегистрируйте пользователя.
2. Роль пользователя берется только из базы данных. Автоматического назначения admin/super_admin по email или по порядку регистрации нет.
3. При первом обращении к API схема D1 создается автоматически и добавляются demo-песни.

## Импорт песен
- POST `/api/admin/import`
- Заголовок: `Authorization: Bearer <token>`
- Body: JSON-объект вида `{ "items": [...] }`
- Пример структуры песен: `db/sample_songs.json`

## Безопасность конфигурации
- Не храните production secrets в `wrangler.toml`.
- Для production используйте Pages secrets (`wrangler pages secret put ...`).
- Setup endpoint должен быть выключен (`ENABLE_SETUP=0`) после первичной настройки.
