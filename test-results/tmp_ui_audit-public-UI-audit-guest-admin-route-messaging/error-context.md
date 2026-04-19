# Page snapshot

```yaml
- generic [active] [ref=e1]:
  - banner [ref=e2]:
    - generic [ref=e3]:
      - button "Открыть меню" [ref=e4] [cursor=pointer]: ☰
      - link "Перейти в каталог" [ref=e5] [cursor=pointer]:
        - /url: "#/"
      - generic [ref=e6]:
        - generic [ref=e7]: European Songbook
        - generic [ref=e8]: Европейский исторический песенник
  - navigation "Основная навигация" [ref=e9]:
    - link [ref=e10] [cursor=pointer]:
      - /url: "#/"
      - img [ref=e12]
    - link "✚" [ref=e16] [cursor=pointer]:
      - /url: "#/request"
      - generic [ref=e17]: ✚
  - main [ref=e18]:
    - generic [ref=e19]:
      - generic [ref=e20]: Доступ запрещен
      - generic [ref=e22]: Недостаточно прав доступа.
```