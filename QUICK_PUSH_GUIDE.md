# Быстро сохранить все изменения

Если сейчас все работает и надо просто сохранить все как есть:

```powershell
git add -A
git commit -m "save current working state"
git push
npm run deploy:prod
```

Если `git commit` пишет, что коммитить нечего, просто:

```powershell
git push
npm run deploy:prod
```

Если хочешь вообще одной пачкой:

```powershell
git add -A
git commit -m "save current working state"
git push
npm run deploy:prod
```

Проверка статуса:

```powershell
git status --short --branch
```

Для этого репозитория деплой в прод:

```powershell
npm run deploy:prod
```
