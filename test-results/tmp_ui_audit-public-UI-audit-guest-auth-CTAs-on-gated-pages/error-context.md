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
    - button "Вход" [ref=e10] [cursor=pointer]
  - navigation "Основная навигация" [ref=e11]:
    - link [ref=e12] [cursor=pointer]:
      - /url: "#/"
      - img [ref=e14]
    - link "✚" [ref=e18] [cursor=pointer]:
      - /url: "#/request"
      - generic [ref=e19]: ✚
  - main [ref=e20]:
    - generic [ref=e21]:
      - generic [ref=e22]: Добавить песню
      - generic [ref=e24]: Чтобы отправить заявку, нужно войти в аккаунт.
```