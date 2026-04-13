# Page snapshot

```yaml
- generic [ref=e1]:
  - banner [ref=e2]:
    - generic [ref=e3]:
      - button "Открыть меню" [ref=e4] [cursor=pointer]: ☰
      - link "Перейти в каталог" [ref=e5] [cursor=pointer]:
        - /url: "#/"
      - generic [ref=e6]:
        - generic [ref=e7]: European Songbook
        - generic [ref=e8]: Европейский исторический песенник
    - generic [ref=e9]:
      - search [ref=e10]:
        - textbox "Искать…" [ref=e11]: zz
        - button "Искать" [active] [ref=e12] [cursor=pointer]
      - button "Вход" [ref=e13] [cursor=pointer]
  - navigation "Основная навигация" [ref=e14]:
    - link [ref=e15] [cursor=pointer]:
      - /url: "#/"
      - img [ref=e17]
    - link "✚" [ref=e21] [cursor=pointer]:
      - /url: "#/request"
      - generic [ref=e22]: ✚
  - main [ref=e23]:
    - generic [ref=e24]:
      - generic [ref=e25]: Ошибка
      - generic [ref=e27]: HTTP 500
```