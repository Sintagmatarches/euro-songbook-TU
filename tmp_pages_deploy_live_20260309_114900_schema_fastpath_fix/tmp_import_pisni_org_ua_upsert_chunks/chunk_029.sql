DELETE FROM song_links WHERE song_id = 'pisniua_3172467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3172467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3172467';
DELETE FROM songs WHERE id = 'pisniua_3172467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3172467','Хвальними піснями','Слова: о. М. Л.','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Хвальними піснями, неначе вінцями,
Петра і Павла разом прославляймо
В цей великий торжественний день!

Апостоли славні, радуйтеся нині,
Петре і Павле, в небесній країні,
Вінцем слави звінчані.

Ви Христову Церкву і Христову віру
Все розширяли по цілому світу,
Провідники святі.

І в Рим ви прибули людей просвітити,
Темні ідоли казали нищити,
О, святії апостоли.

Там в Римі за віру ви разом страждали,
За святу Церкву ви життя віддали
По завіту Ісуса.

Моліться за нами, щиро вас благаєм,
До вас днесь щиро мольби засилаєм,
Поручайте нас Христу.','[''pisni.org.ua'', ''cat:cerkovni'', ''Церковні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3172467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3172467','Хвальними піснями','Хвальними піснями, неначе вінцями,
Петра і Павла разом прославляймо
В цей великий торжественний день!

Апостоли славні, радуйтеся нині,
Петре і Павле, в небесній країні,
Вінцем слави звінчані.

Ви Христову Церкву і Христову віру
Все розширяли по цілому світу,
Провідники святі.

І в Рим ви прибули людей просвітити,
Темні ідоли казали нищити,
О, святії апостоли.

Там в Римі за віру ви разом страждали,
За святу Церкву ви життя віддали
По завіту Ісуса.

Моліться за нами, щиро вас благаєм,
До вас днесь щиро мольби засилаєм,
Поручайте нас Христу.');
DELETE FROM song_links WHERE song_id = 'pisniua_3171424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3171424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3171424';
DELETE FROM songs WHERE id = 'pisniua_3171424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3171424','Уснула Мати Божа','Слова: о. І. Дуцько','uk','ukraine_1991',NULL,NULL,'Господь - моя пісня: Збірник релігійних пісень. - Львів: Свідчадо, 2005. - 656 с.',NULL,'Уснула Мати Божа, уснула
І сном блаженним спочила,
Не чула смерти, болю не чула,  |
З життям ся легко розтала.     | (2)

З''явились зараз, чудно з''явились,
В округ апостоли стали,
Слезами вмились, як подивились |
Над Пречистою ридали.          | (2)

Любезна Мати, Христова Мати!
Як нас на світі лишаєш?
Зволи нас взяти з собою взяти, |
Бо Ти же в небі сіяєш.         | (2)

О, Мати Божа, Пречиста Мати,
Що нам царствуєш при Сині,
Не дай вмирати, грішно вмирати |
Людям в послідній годині.      | (2)

Цілу надію, повну надію
Ми в Тобі все покладаєм,
Тебе, Марію, Діву Марію,       |
О, поміч з неба благаєм!       | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:do-bohorodyci'', ''Церковні пісні'', ''Пісні до Богородиці'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3171424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3171424','Уснула Мати Божа','Уснула Мати Божа, уснула
І сном блаженним спочила,
Не чула смерти, болю не чула,  |
З життям ся легко розтала.     | (2)

З''явились зараз, чудно з''явились,
В округ апостоли стали,
Слезами вмились, як подивились |
Над Пречистою ридали.          | (2)

Любезна Мати, Христова Мати!
Як нас на світі лишаєш?
Зволи нас взяти з собою взяти, |
Бо Ти же в небі сіяєш.         | (2)

О, Мати Божа, Пречиста Мати,
Що нам царствуєш при Сині,
Не дай вмирати, грішно вмирати |
Людям в послідній годині.      | (2)

Цілу надію, повну надію
Ми в Тобі все покладаєм,
Тебе, Марію, Діву Марію,       |
О, поміч з неба благаєм!       | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3171424_l1','pisniua_3171424','YouTube','https://www.youtube.com/watch?v=aH2dKWoSyw4','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3173962';
DELETE FROM song_versions WHERE song_id = 'pisniua_3173962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3173962';
DELETE FROM songs WHERE id = 'pisniua_3173962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3173962','Ясніший від сонця','Українська народна пісня. Виконує: Василь Барвінський','uk','ukraine_before_1917',NULL,NULL,'Джерело: Антологія лемківської пісні (упор. М.Байко) – Львів, "Афіша", 2005, с.11 (Опубліковано з дозволу М.Байко)',NULL,'Ясніший від сонця
У яскині нині
Ісус Бог лежить
У яслах на сіні.

І зимно терпить,
Наш Творець дрожить,
Котрий весь світ
У руках держить','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3173962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3173962','Ясніший від сонця','Ясніший від сонця
У яскині нині
Ісус Бог лежить
У яслах на сіні.

І зимно терпить,
Наш Творець дрожить,
Котрий весь світ
У руках держить');
DELETE FROM song_links WHERE song_id = 'pisniua_3174121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3174121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3174121';
DELETE FROM songs WHERE id = 'pisniua_3174121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3174121','Діти мої, діти','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986','Значок - вогні, які запалюють влітку в горах. Мам - маю.','Діти мої, діти,
Дев''ятеро діти,
Ани сама не знам,
Де вас мам подіти,
Гей, ани сама не знам,
Де вас мам подіти.

Діти мої, діти,
Дрібніцькі, як значок,
А я межи вами,
Як зогнитий пнячок,
Гей, а я межи вами,
Як зогнитий пнячок.

А гайці мі, гайці,
Мої дрібні діти,
Дайте свої мамці
До роботи піти,
Гей, дайте свої мамці
До роботи піти.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''Дитячі пісні'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3174121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3174121','Діти мої, діти','Діти мої, діти,
Дев''ятеро діти,
Ани сама не знам,
Де вас мам подіти,
Гей, ани сама не знам,
Де вас мам подіти.

Діти мої, діти,
Дрібніцькі, як значок,
А я межи вами,
Як зогнитий пнячок,
Гей, а я межи вами,
Як зогнитий пнячок.

А гайці мі, гайці,
Мої дрібні діти,
Дайте свої мамці
До роботи піти,
Гей, дайте свої мамці
До роботи піти.');
DELETE FROM song_links WHERE song_id = 'pisniua_3173828';
DELETE FROM song_versions WHERE song_id = 'pisniua_3173828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3173828';
DELETE FROM songs WHERE id = 'pisniua_3173828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3173828','Першій вчительці','Музика: Світлана Богайчук Слова: Світлана Богайчук. Виконує: Тетяна Щербачук','uk','ukraine_1991',NULL,NULL,'інтернет','Пісню виконує Тетяна Щербачук (альбом: Школа forever).','Чаклунко-осінь, зачекай, зажди,
Вертай в дитинство бабиного літа,
Учителько, ти в серці назавжди
В осінніх барвах і духмяних квітах.

Приспів:
Осінь за вікном казку чарівну пише,
Вітре, не пустуй, листям шелести тихше,
Сонечко, засяй, радо привітай спершу
Зірку осяйну, вчительку мою першу!

Уроків неповторний дивосвіт,
Очей твоїх живе, зоріє згадка,
І нині вдячний шлють тобі привіт
Твої вчорашні хлопчики й дівчатка!

Приспів.

Пливе туман від росяних дібров,
Мережа-стежка, дітвора у школі
Учительку свою стрічає знов
І дзвоник будить клени і тополі!

Приспів. (2)

Зірку осяйну, вчительку мою першу!..
Зірку осяйну, вчительку мою першу!','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3173828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3173828','Першій вчительці','Чаклунко-осінь, зачекай, зажди,
Вертай в дитинство бабиного літа,
Учителько, ти в серці назавжди
В осінніх барвах і духмяних квітах.

Приспів:
Осінь за вікном казку чарівну пише,
Вітре, не пустуй, листям шелести тихше,
Сонечко, засяй, радо привітай спершу
Зірку осяйну, вчительку мою першу!

Уроків неповторний дивосвіт,
Очей твоїх живе, зоріє згадка,
І нині вдячний шлють тобі привіт
Твої вчорашні хлопчики й дівчатка!

Приспів.

Пливе туман від росяних дібров,
Мережа-стежка, дітвора у школі
Учительку свою стрічає знов
І дзвоник будить клени і тополі!

Приспів. (2)

Зірку осяйну, вчительку мою першу!..
Зірку осяйну, вчительку мою першу!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3173828_l1','pisniua_3173828','YouTube','https://www.youtube.com/watch?v=hsHqddJTO_g','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3173828_l2','pisniua_3173828','YouTube','https://www.youtube.com/watch?v=59vNfD9tzQM','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3175323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3175323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3175323';
DELETE FROM songs WHERE id = 'pisniua_3175323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3175323','В неділю рад паленку пию','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.145','Виконує: Анна Драган, с.Розділля','1. В неділю рад паленку пию,
В понеділок я єй вилію.
В вівторок райзую, иши я си при гудачках танцую. (2)

2. В середу треба домів піти,
А в четвер дашто би зробити.
В п''ятницю, в суботу треба би мі полічити роботу. (2)

3. А пришва мі, пришва свята неділенька,
Пива би ся, пива слодка паленочка.
І так ден поза ден, пива би ся паленочка каждий ден. (2)    Ноти мелодії від Анни Драґан, с.Розділля','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3175323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3175323','В неділю рад паленку пию','1. В неділю рад паленку пию,
В понеділок я єй вилію.
В вівторок райзую, иши я си при гудачках танцую. (2)

2. В середу треба домів піти,
А в четвер дашто би зробити.
В п''ятницю, в суботу треба би мі полічити роботу. (2)

3. А пришва мі, пришва свята неділенька,
Пива би ся, пива слодка паленочка.
І так ден поза ден, пива би ся паленочка каждий ден. (2)    Ноти мелодії від Анни Драґан, с.Розділля');
DELETE FROM song_links WHERE song_id = 'pisniua_3175168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3175168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3175168';
DELETE FROM songs WHERE id = 'pisniua_3175168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3175168','А пониже озера','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Антологія лемківської пісні, Львів, "Афіша", 2005, с.122','Виконує: Іванна Макара, с.Висова','1. А пониже озера стоїт липа зелена,
На тій зеленій три пташки співают.

2. Не били то пташкове, але кавалірове,
Намовляются до єдней дівчини,
Котрому ся достане.

3. Єден гварит: то моя, другий гварит: як Бог даст.
А третьому ся серденько крає,
Котрому ся достане?

4. А в тій новій коморі стоїт лужко зелене,
Ой, ложе, ложе, красне-зелене,
Хто на тобі спав буде?

5. Ой, як буде старий спав, дай му, Боже, би не встав!
А молодий, красной уроди,
Бис му, Боже, зравля дав!    Авторське подання','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3175168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3175168','А пониже озера','1. А пониже озера стоїт липа зелена,
На тій зеленій три пташки співают.

2. Не били то пташкове, але кавалірове,
Намовляются до єдней дівчини,
Котрому ся достане.

3. Єден гварит: то моя, другий гварит: як Бог даст.
А третьому ся серденько крає,
Котрому ся достане?

4. А в тій новій коморі стоїт лужко зелене,
Ой, ложе, ложе, красне-зелене,
Хто на тобі спав буде?

5. Ой, як буде старий спав, дай му, Боже, би не встав!
А молодий, красной уроди,
Бис му, Боже, зравля дав!    Авторське подання');
DELETE FROM song_links WHERE song_id = 'pisniua_3174560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3174560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3174560';
DELETE FROM songs WHERE id = 'pisniua_3174560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3174560','А впав кіт з воріт','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Книга: Дитячий фольклор,Київ,"Дніпро"1986',NULL,'А впав кіт з воріт,
Забив плечі і живіт.
Ото тобі, котку,
Не лізь на колодку,
Бо заб''єш головку.
Та буде боліти -
Нічим загоїти.
Купить мати шовку
Та загоїть головку.','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''cat:narodni'', ''Дитячі пісні'', ''Колискові'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3174560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3174560','А впав кіт з воріт','А впав кіт з воріт,
Забив плечі і живіт.
Ото тобі, котку,
Не лізь на колодку,
Бо заб''єш головку.
Та буде боліти -
Нічим загоїти.
Купить мати шовку
Та загоїть головку.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3174560_l1','pisniua_3174560','YouTube','https://www.youtube.com/watch?v=4HcQJHYpMw0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3182663';
DELETE FROM song_versions WHERE song_id = 'pisniua_3182663';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3182663';
DELETE FROM songs WHERE id = 'pisniua_3182663';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3182663','Життя – наче сон','Музика: Володимир Шинкарук Слова: Володимир Шинкарук. Виконує: Володимир Шинкарук','uk','ukraine_1991',NULL,NULL,'аудіозапис','Підбір акордів: Жека','Мама. Лялька. Каша. Кішка.
Книжка. Гноми. Білосніжка.
Буратіно. Карабас.
Ранець. Школа. Перший клас.
Двійка. Вчительська. Погрози.
Тато. Ремінь. Крики. Сльози.
Літо. Дача. Кози. Кури.
Осінь. Збір макулатури.

Життя - наче сон, наче сон!

Коцюбинський. Герострат.
Вальс прощальний. Атестат.
Сум''яття. Екзамен. Вуз.
Бали. Конкурс. Перший курс.
Лекція й семінари.
Тренування. Тари-бари.
Сесія. Знання всесильне!
Шпори. "Добре". "Задовільно".

Життя - наче сон, наче сон!

Деканат. Бібліотека.
Гуртожиток. Дискотека.
Практика. Лопатодром.
П''ятий курс. Проект. Диплом.
Чорне море. Теплохід.
У Карпати турпохід.
Кульман. Шеф. Кінець квартала.
Поле. Ферма. План по валу.

Життя - наче сон, наче сон!

Військо. Чоботи. Мундир.
Третя рота. Командир.
Плац. "Кругом! Наліво! Стій!"
Старшина. Підйом. Відбій.
Самоволка. Замполіт.
Гауптвахта. Швабра. Піт.
Марш-кидки. Привали. Втома.
Лички. "Дємбєль". Шлях додому.

Життя - наче сон, наче сон!

Діти. Пелюшки. Квартира.
Теща, - гумор і сатира.
Дитсадок. Театр. Кіно.
Лазня. Карти. Доміно.
Шашлики. Похід наліво.
Сік. Коньяк. Горілка. Пиво.
Серце. Тиск. Нервовий стрес.
Пенсія і соцзабез.

Життя - наче сон, наче сон!

Ювілеї. Нагорода.
Пам''ятник і огорожа...
Життя, наче сон, пройшло!','[''pisni.org.ua'', ''cat:bardivski'', ''Бардівські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3182663'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3182663','Життя – наче сон','Мама. Лялька. Каша. Кішка.
Книжка. Гноми. Білосніжка.
Буратіно. Карабас.
Ранець. Школа. Перший клас.
Двійка. Вчительська. Погрози.
Тато. Ремінь. Крики. Сльози.
Літо. Дача. Кози. Кури.
Осінь. Збір макулатури.

Життя - наче сон, наче сон!

Коцюбинський. Герострат.
Вальс прощальний. Атестат.
Сум''яття. Екзамен. Вуз.
Бали. Конкурс. Перший курс.
Лекція й семінари.
Тренування. Тари-бари.
Сесія. Знання всесильне!
Шпори. "Добре". "Задовільно".

Життя - наче сон, наче сон!

Деканат. Бібліотека.
Гуртожиток. Дискотека.
Практика. Лопатодром.
П''ятий курс. Проект. Диплом.
Чорне море. Теплохід.
У Карпати турпохід.
Кульман. Шеф. Кінець квартала.
Поле. Ферма. План по валу.

Життя - наче сон, наче сон!

Військо. Чоботи. Мундир.
Третя рота. Командир.
Плац. "Кругом! Наліво! Стій!"
Старшина. Підйом. Відбій.
Самоволка. Замполіт.
Гауптвахта. Швабра. Піт.
Марш-кидки. Привали. Втома.
Лички. "Дємбєль". Шлях додому.

Життя - наче сон, наче сон!

Діти. Пелюшки. Квартира.
Теща, - гумор і сатира.
Дитсадок. Театр. Кіно.
Лазня. Карти. Доміно.
Шашлики. Похід наліво.
Сік. Коньяк. Горілка. Пиво.
Серце. Тиск. Нервовий стрес.
Пенсія і соцзабез.

Життя - наче сон, наче сон!

Ювілеї. Нагорода.
Пам''ятник і огорожа...
Життя, наче сон, пройшло!');
DELETE FROM song_links WHERE song_id = 'pisniua_3175766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3175766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3175766';
DELETE FROM songs WHERE id = 'pisniua_3175766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3175766','Прощай, дівчино молодая','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Прощай, дівчино молодая,
Гіркая доленько моя.
Другий цілує, обіймає,
Бо ти, дівчино, не моя.
Другий цілує, обіймає,
Бо ти дівчино не моя.

Як не моя, то Бог з тобою,
Весела і щаслива будь.
Цвіти як ружа і калина
Забудь мене мила, забудь.
Цвіти як ружа і калина
Забудь мене мила, забудь

Забудь назавжди , моя мила,
Не розривай свою ти грудь.
Знайди собі іншого друга,
Забудь мене, мила, забудь.
Знайди собі іншого друга,
Забудь мене, мила, забудь

Пробач, кохана, не будь злою,
Пробачу все і я тобі.
Бо нам не сужено судьбою
З тобою бути разом, ні.
Бо нам не сужено судьбою
З тобою бути разом, ні.    Фонограма-мінус (mp3, 128 kbps). весільний вальс','[''pisni.org.ua'', ''cat:dances'', ''cat:waltzes'', ''Пісні до танцю'', ''Вальси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3175766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3175766','Прощай, дівчино молодая','Прощай, дівчино молодая,
Гіркая доленько моя.
Другий цілує, обіймає,
Бо ти, дівчино, не моя.
Другий цілує, обіймає,
Бо ти дівчино не моя.

Як не моя, то Бог з тобою,
Весела і щаслива будь.
Цвіти як ружа і калина
Забудь мене мила, забудь.
Цвіти як ружа і калина
Забудь мене мила, забудь

Забудь назавжди , моя мила,
Не розривай свою ти грудь.
Знайди собі іншого друга,
Забудь мене, мила, забудь.
Знайди собі іншого друга,
Забудь мене, мила, забудь

Пробач, кохана, не будь злою,
Пробачу все і я тобі.
Бо нам не сужено судьбою
З тобою бути разом, ні.
Бо нам не сужено судьбою
З тобою бути разом, ні.    Фонограма-мінус (mp3, 128 kbps). весільний вальс');
DELETE FROM song_links WHERE song_id = 'pisniua_3176663';
DELETE FROM song_versions WHERE song_id = 'pisniua_3176663';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3176663';
DELETE FROM songs WHERE id = 'pisniua_3176663';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3176663','Дивізіє, гей рідна мати!','Українська народна пісня. Виконує: Хор Бурлака','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Дивізіє, гей, рідна мати,
Новітня Січ ти є для нас.
І треба, треба теє знати,
Чого від нас бажає час!

Москва лютує в Україні -
Руйнує, палить все кругом,
Ридають діти на руїні,
Сумує Київ і Дніпро.

Комуна, нащадки гуннів,
Лиш муки й смерть готують нам.
Кобзар порвав останні струни,
Ще лиже ката свій же хам.

Дивізіє, зростай вже в силі
І будь безсмертна у боях.
Згадай Шевченкову могилу -
Не знайде в тобі місце страх!

Ти сонцем будеш Україні,
Дощем весняним. Стрільче, знай::
Жени ворожі чорні тіні!
Хай сяє в щасті рідний край.

Дивізіє, гей, рідна мати,
Новітня Січ ти є для нас.
І треба, треба теє знати,
Чого від нас жадає час.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3176663'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3176663','Дивізіє, гей рідна мати!','Дивізіє, гей, рідна мати,
Новітня Січ ти є для нас.
І треба, треба теє знати,
Чого від нас бажає час!

Москва лютує в Україні -
Руйнує, палить все кругом,
Ридають діти на руїні,
Сумує Київ і Дніпро.

Комуна, нащадки гуннів,
Лиш муки й смерть готують нам.
Кобзар порвав останні струни,
Ще лиже ката свій же хам.

Дивізіє, зростай вже в силі
І будь безсмертна у боях.
Згадай Шевченкову могилу -
Не знайде в тобі місце страх!

Ти сонцем будеш Україні,
Дощем весняним. Стрільче, знай::
Жени ворожі чорні тіні!
Хай сяє в щасті рідний край.

Дивізіє, гей, рідна мати,
Новітня Січ ти є для нас.
І треба, треба теє знати,
Чого від нас жадає час.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3176663_l1','pisniua_3176663','YouTube','https://www.youtube.com/watch?v=ewAMKpOdyP8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3176663_l2','pisniua_3176663','YouTube','https://www.youtube.com/watch?v=4w1Yn8AF7T4','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_318424';
DELETE FROM song_versions WHERE song_id = 'pisniua_318424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_318424';
DELETE FROM songs WHERE id = 'pisniua_318424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_318424','Чи тямиш Дівчино той Вечір Чудовий','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Зап. слова і наспів на Львівщині','Чи тямиш Дівчино той Вечір Чудовий Чи тямиш Дівчино той Вечір Чудовий — Еротика: Катерини – Калета – Андрія... В мене Бандура з Чистого Злота. Читати листки, де є згадка з приводу цієї Пісні: Еротичні містерії, Катерини 7.12 — Передріздвяний Святочний час. Еротичні містерії, Калета 13.12 — Передріздвяний Святочний час. Стежки до інших листків про Українські традиції.','Чи тямиш дівчино той вечір чудовий
Як ми там сиділи колись
Ти пісню співала при звуках бандури |
А я тобі в очі дививсь              | (2)

Бандура спочила ти пісню скінчила
Голівку склонила на грудь
Мене цілувала закляття шептала      |
Коханий зі мною все будь            | (2)

Як ми там сиділи то Зорі мигтіли
А Місяць на нас поглядав
Квітки похилились до сну уложились  |
А я все тебе цілував                | (2)','[''pisni.org.ua'', ''cat:druzhba'', ''cat:halycki'', ''cat:romansy'', ''cat:vesnyanky-hayivky'', ''Пісні про дружбу'', ''Пісні з Галичини'', ''Романси'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_318424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_318424','Чи тямиш Дівчино той Вечір Чудовий','Чи тямиш дівчино той вечір чудовий
Як ми там сиділи колись
Ти пісню співала при звуках бандури |
А я тобі в очі дививсь              | (2)

Бандура спочила ти пісню скінчила
Голівку склонила на грудь
Мене цілувала закляття шептала      |
Коханий зі мною все будь            | (2)

Як ми там сиділи то Зорі мигтіли
А Місяць на нас поглядав
Квітки похилились до сну уложились  |
А я все тебе цілував                | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_318424_l1','pisniua_318424','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_318121';
DELETE FROM song_versions WHERE song_id = 'pisniua_318121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_318121';
DELETE FROM songs WHERE id = 'pisniua_318121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_318121','Їхав їхав козак містом','Українська народна пісня. Виконує: Журборіз, Медобори, Kozak System','uk','ukraine_before_1917',NULL,NULL,'1. Трускавецькі співанки. Пісенник. Упорядник В. Ф. Кузнєцов. - К.: Музична Україна, 1989. - 192 с.','Якщо грати в тональності ре-мінор, то акорди змінюються наступним чином: Am=Dm F=B G=C C=F Dm=Gm E=A Якщо потрібно перевести в будь-яку тональність, - пишіть:)) Підбір акордів: Степанко','Їхав, їхав козак містом,
Під копитом камінь тріснув,
Та раз, два.
Під копитом камінь тріснув.
Am
Та раз!

Під копитом камінь тріснув -
Соловейко в гаю свиснув.
Та раз, два.
Соловейко в гаю свиснув.
Та раз!

Соловейку, рідний брате,
Виклич мені дівча з хати.
Та раз, два.
Виклич мені дівча з хати.
Та раз!

Виклич мені дівча з хати -
Щось я маю розпитати...
Та раз, два.
Щось я маю розпитати...
Та раз!

Щось я маю розпитати...
Чи не била вчора мати
Та раз, два.
Чи не била вчора мати
Та раз!

Ой хоч била, хоч не била,
А зустрілась, полюбила
Та раз, два.
А зустрілась, полюбила
Та раз!

Ще акорди:
Їхав, їхав козак містом,
Під копитом камінь тріснув,
Am
Та раз, два.
Під копитом камінь тріснув.
Am
Та раз!','[''pisni.org.ua'', ''cat:kozacki'', ''cat:lirychni'', ''cat:narodni'', ''Козацькі пісні'', ''Пісні про кохання, ліричні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_318121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_318121','Їхав їхав козак містом','Їхав, їхав козак містом,
Під копитом камінь тріснув,
Та раз, два.
Під копитом камінь тріснув.
Am
Та раз!

Під копитом камінь тріснув -
Соловейко в гаю свиснув.
Та раз, два.
Соловейко в гаю свиснув.
Та раз!

Соловейку, рідний брате,
Виклич мені дівча з хати.
Та раз, два.
Виклич мені дівча з хати.
Та раз!

Виклич мені дівча з хати -
Щось я маю розпитати...
Та раз, два.
Щось я маю розпитати...
Та раз!

Щось я маю розпитати...
Чи не била вчора мати
Та раз, два.
Чи не била вчора мати
Та раз!

Ой хоч била, хоч не била,
А зустрілась, полюбила
Та раз, два.
А зустрілась, полюбила
Та раз!

Ще акорди:
Їхав, їхав козак містом,
Під копитом камінь тріснув,
Am
Та раз, два.
Під копитом камінь тріснув.
Am
Та раз!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_318121_l1','pisniua_318121','YouTube','https://www.youtube.com/watch?v=TGEJXi-55_c','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_318121_l2','pisniua_318121','YouTube','https://www.youtube.com/watch?v=wW4gnYOBN78','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_318121_l3','pisniua_318121','YouTube','https://www.youtube.com/watch?v=Do1fVosqWVw','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_318121_l4','pisniua_318121','YouTube','https://www.youtube.com/watch?v=cQWQ8517Pa0','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_318121_l5','pisniua_318121','YouTube','https://www.youtube.com/watch?v=LhCQRRHG16E','video',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_318121_l6','pisniua_318121','YouTube','https://www.youtube.com/watch?v=S4UilFR7vhc','video',NULL,6);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_318121_l7','pisniua_318121','YouTube','https://www.youtube.com/watch?v=prCuip7bTDs','video',NULL,7);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_318121_l8','pisniua_318121','YouTube','https://www.youtube.com/watch?v=TpNsDuFZ2Go','video',NULL,8);
DELETE FROM song_links WHERE song_id = 'pisniua_317525';
DELETE FROM song_versions WHERE song_id = 'pisniua_317525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_317525';
DELETE FROM songs WHERE id = 'pisniua_317525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_317525','А чия ж то хижа','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'http://www.pisennyk.kgb.pl/narodnja/a_czyja_to.html',NULL,'А чия ж то хижа    G
Стоїть при долині? G
Чиє ж то дівчатко  D
Шиє на машині?     G

Машина туркоче,
А дівчатко плаче:
Верний ми ся, верний,
Мій милий козаче.

Не вернусь, не вернусь,
Бо не мам ку кому.
Лишилім дівчатко,
А сам не знам кому.

Як ми ся любили
Сухі верби цвили,
Як ми перестали -
Зелені зів''яли.

Як ми ся любили,
Рибко моя, рибко,
Тепер ся на тебе
Посмотрити бридко.','[''pisni.org.ua'', ''cat:lemkivski'', ''Лемківські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_317525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_317525','А чия ж то хижа','А чия ж то хижа    G
Стоїть при долині? G
Чиє ж то дівчатко  D
Шиє на машині?     G

Машина туркоче,
А дівчатко плаче:
Верний ми ся, верний,
Мій милий козаче.

Не вернусь, не вернусь,
Бо не мам ку кому.
Лишилім дівчатко,
А сам не знам кому.

Як ми ся любили
Сухі верби цвили,
Як ми перестали -
Зелені зів''яли.

Як ми ся любили,
Рибко моя, рибко,
Тепер ся на тебе
Посмотрити бридко.');
DELETE FROM song_links WHERE song_id = 'pisniua_3181467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3181467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3181467';
DELETE FROM songs WHERE id = 'pisniua_3181467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3181467','Дорогій матусі','Слова: Ірина Лончина. Виконує: Ірина Лончина','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Який сьогодні день? Сьогодні свято мами!
Цей день завжди святий, коли б він не прийшов.
Для тебе, дорога, стелю стежки піснями,
Тобі дарую я і ніжність, і любов,
Я дякую тобі, ріднесенька матусю,
За ласку і повчальнії слова.
І, щоб б там не було, до тебе я горнуся,
Щоб ти завжди щасливою була.

Та не завжди життя квітками устелялось
І падала не раз під тягарем журби,
Тернистим шляхом йшла та гордо піднімалась,
Вчила все долать, щоб уникать біди.
Чому в твоїх очах з''явилася сльоза?
Скажи, чи не моя у тім вина?..
Ти тільки не сумуй, для мене ти одна,
Пробач за все, матусю дорога.

Летить нестримно час і ми уже не діти,
Та, як тоді, я знов до матінки горнусь.
Я збережу твої священні заповіти,
І де б я не була до тебе повернусь.
В майбутнє я іду барвистими стежками
У пошуках усе нових ідей.
І лине до небес молитва щира мами
З проханням долі для своїх дітей,
З проханням долі для своїх дітей...','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3181467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3181467','Дорогій матусі','Який сьогодні день? Сьогодні свято мами!
Цей день завжди святий, коли б він не прийшов.
Для тебе, дорога, стелю стежки піснями,
Тобі дарую я і ніжність, і любов,
Я дякую тобі, ріднесенька матусю,
За ласку і повчальнії слова.
І, щоб б там не було, до тебе я горнуся,
Щоб ти завжди щасливою була.

Та не завжди життя квітками устелялось
І падала не раз під тягарем журби,
Тернистим шляхом йшла та гордо піднімалась,
Вчила все долать, щоб уникать біди.
Чому в твоїх очах з''явилася сльоза?
Скажи, чи не моя у тім вина?..
Ти тільки не сумуй, для мене ти одна,
Пробач за все, матусю дорога.

Летить нестримно час і ми уже не діти,
Та, як тоді, я знов до матінки горнусь.
Я збережу твої священні заповіти,
І де б я не була до тебе повернусь.
В майбутнє я іду барвистими стежками
У пошуках усе нових ідей.
І лине до небес молитва щира мами
З проханням долі для своїх дітей,
З проханням долі для своїх дітей...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3181467_l1','pisniua_3181467','YouTube','https://www.youtube.com/watch?v=NJZTpid3Ue8','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3181467_l2','pisniua_3181467','YouTube','https://www.youtube.com/watch?v=-nKM808R0JI','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3184323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3184323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3184323';
DELETE FROM songs WHERE id = 'pisniua_3184323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3184323','Вінець','(Зав''яжем, зав''яжем, зав''яжем вінець). Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256 с.','Опис гри: Молодь стає в ряд, узявшись за руки. З одного боку крайнім стає хтось, хто швидко бігає, з другого - хлопець або дівчина високого зросту. Перший крайній починає якомога швидше бігати по колу, "намотуючи" усіх гравців довкола другого, який стоїть на місці. Коли всі "намоталися", Вінець зв''язано. Далі уся група розгойдується, часом переступаючи, і співає швидку частину пісні. Насамкінець, коли починають співати "Розв''яжем, розв''яжем...", усі гравці піднімають руки над головою, не розчіплюючи їх; тоді високий крайній попід руками знаходить собі дорогу назовні Вінця і виводить за собою решту - розв''язує Вінець.','Зав''яжем, зав''яжем, зав''яжем вінець...
(співають, поки в''яжуть)
Зв''язали, зв''язали, зв''язали вінець,
Зв''язали, зв''язали, зв''язали вінець.

Жито, мамцю, жито, мамцю, жито не полова,
Як дівчину не любити, коли чорноброва!
Жито, мамцю, жито, мамцю, жито не пшениця,
Як дівчину не любити, коли білолиця!

Очерет, осока, чорні брови в козака,
На те мати родила, щоб дівчина любила!
А дівчина-горлиця до козака горнеться,
А козак, як орел, як побачив, так і вмер!

Жито, мамцю, жито, мамцю, жито не ячмінка,
Як дівчину не любити, коли українка!
Жито, мамцю, жито, мамцю, жито не гречанка,
Як дівчину не любити, коли галичанка!

Очерет, осока, чорні брови в козака,
На те мати родила, щоб дівчина любила!
А дівчина-горлиця до козака горнеться,
А козак, як орел, як побачив, так і вмер!

Розв''яжем, розв''яжем, розв''яжем вінець...
(співають, поки розв''яжуть)','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3184323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3184323','Вінець','Зав''яжем, зав''яжем, зав''яжем вінець...
(співають, поки в''яжуть)
Зв''язали, зв''язали, зв''язали вінець,
Зв''язали, зв''язали, зв''язали вінець.

Жито, мамцю, жито, мамцю, жито не полова,
Як дівчину не любити, коли чорноброва!
Жито, мамцю, жито, мамцю, жито не пшениця,
Як дівчину не любити, коли білолиця!

Очерет, осока, чорні брови в козака,
На те мати родила, щоб дівчина любила!
А дівчина-горлиця до козака горнеться,
А козак, як орел, як побачив, так і вмер!

Жито, мамцю, жито, мамцю, жито не ячмінка,
Як дівчину не любити, коли українка!
Жито, мамцю, жито, мамцю, жито не гречанка,
Як дівчину не любити, коли галичанка!

Очерет, осока, чорні брови в козака,
На те мати родила, щоб дівчина любила!
А дівчина-горлиця до козака горнеться,
А козак, як орел, як побачив, так і вмер!

Розв''яжем, розв''яжем, розв''яжем вінець...
(співають, поки розв''яжуть)');
DELETE FROM song_links WHERE song_id = 'pisniua_3185065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3185065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3185065';
DELETE FROM songs WHERE id = 'pisniua_3185065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3185065','Кругом Мариноньки','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256',NULL,'Кругом Мариноньки
Ходили дівоньки,
Стороною дощик іде.
Стороною,              |
Та й на мою роженьку   |
Червону.               | (2)

Ой, на морі хвиля,
При долині роса,
Стороною дощик іде.
Стороною,              |
Та й на мій барвіночок |
Зелений.               | (2)

Сьогодні Івана,
А завтра Купала,
Рано-вранці сонце зійшло.
Рано-вранці,           |
Та й на мою роженьку   |
Червону.               | (2)

Ой на морі хвиля,
При долині роса,
Рано-вранці сонце зійшло,
Рано-вранці,           |
Та й на мій барвіночок |
Зелений.               | (2)','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3185065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3185065','Кругом Мариноньки','Кругом Мариноньки
Ходили дівоньки,
Стороною дощик іде.
Стороною,              |
Та й на мою роженьку   |
Червону.               | (2)

Ой, на морі хвиля,
При долині роса,
Стороною дощик іде.
Стороною,              |
Та й на мій барвіночок |
Зелений.               | (2)

Сьогодні Івана,
А завтра Купала,
Рано-вранці сонце зійшло.
Рано-вранці,           |
Та й на мою роженьку   |
Червону.               | (2)

Ой на морі хвиля,
При долині роса,
Рано-вранці сонце зійшло,
Рано-вранці,           |
Та й на мій барвіночок |
Зелений.               | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3185065_l1','pisniua_3185065','YouTube','https://www.youtube.com/watch?v=mHB1y6JU4yc','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3185222';
DELETE FROM song_versions WHERE song_id = 'pisniua_3185222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3185222';
DELETE FROM songs WHERE id = 'pisniua_3185222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3185222','Ой, не стій, вербо, над водою','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256',NULL,'Ой, не стій, вербо,
Над водою,
Бо гірка вода
Під тобо(ю).

Ой, не так гірка,
Як бистрая -
Що день і нічку
Прибува(є).

Що день і нічку
Прибуває,
Глибокий корінь
Підмива(є).

Глибокий корінь
Підмиває,
На сухий берег
Викида(є).

На сухий берег,
На пісочок,
Де збирається
Челядо(чка).    Обрядова (веснянка?)','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3185222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3185222','Ой, не стій, вербо, над водою','Ой, не стій, вербо,
Над водою,
Бо гірка вода
Під тобо(ю).

Ой, не так гірка,
Як бистрая -
Що день і нічку
Прибува(є).

Що день і нічку
Прибуває,
Глибокий корінь
Підмива(є).

Глибокий корінь
Підмиває,
На сухий берег
Викида(є).

На сухий берег,
На пісочок,
Де збирається
Челядо(чка).    Обрядова (веснянка?)');
DELETE FROM song_links WHERE song_id = 'pisniua_3184020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3184020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3184020';
DELETE FROM songs WHERE id = 'pisniua_3184020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3184020','Упав сніжок на обніжок',NULL,'uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно-літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256 с.',NULL,'Упав сніжок на обніжок
Та й взявся водою.
Любнв козак дві дівчини -
Не взяв ні одної! Гу!

Упав сніжок на обніжок
Та й скоро розтане.
Ой, виходьте на вулицю,
Як вечір настане! Гу!

Ой, на нашім подвір''ячку
Високі пороги.
Хто не вийде на вулицю,
Переб''ємо ноги! Гу!

Чи й у тебе, дівчинонько,
Нерідная мати?
Усі вийшли на вулицю,
А ти лягла спати. Гу!

Ой, треба би тій матінці
Даруночок дати,
Щоб пустила свою дочку
До нас погуляти! Гу!','[''pisni.org.ua'', ''cat:podilski'', ''Пісні з Поділля'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3184020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3184020','Упав сніжок на обніжок','Упав сніжок на обніжок
Та й взявся водою.
Любнв козак дві дівчини -
Не взяв ні одної! Гу!

Упав сніжок на обніжок
Та й скоро розтане.
Ой, виходьте на вулицю,
Як вечір настане! Гу!

Ой, на нашім подвір''ячку
Високі пороги.
Хто не вийде на вулицю,
Переб''ємо ноги! Гу!

Чи й у тебе, дівчинонько,
Нерідная мати?
Усі вийшли на вулицю,
А ти лягла спати. Гу!

Ой, треба би тій матінці
Даруночок дати,
Щоб пустила свою дочку
До нас погуляти! Гу!');
DELETE FROM song_links WHERE song_id = 'pisniua_3183424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3183424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3183424';
DELETE FROM songs WHERE id = 'pisniua_3183424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3183424','Учімся','Музика: Є. Якубович Слова: Омелян Попович','uk','ukraine_1991',NULL,NULL,'Єфросинія Душна, Андрій Душний. Бандуро, дзвени, не стихай! /Збірка творів для учнів початкових мистецьких навчальних закладів. – Львів: ТеРус, 2005. – 44 с.',NULL,'Минули вільні днини,
Настав науки час,
І знову дзвоник рідний
До школи кличе нас.

Кидаймо всю забаву
І з Богом в добру путь.
До школи поспішаймо,
Де нас науки ждуть.

Хоч легко й безтурботно
Минають дні у грі,
Та треба нам учитись,
Збирати скарб в умі.

Кого застане старість
Неукою, у тьмі,
Тому на світі мов би
Без хліба у зимі.','[''pisni.org.ua'', ''cat:shkilni'', ''cat:zahalni-cinnosti'', ''Пісні про школу'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3183424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3183424','Учімся','Минули вільні днини,
Настав науки час,
І знову дзвоник рідний
До школи кличе нас.

Кидаймо всю забаву
І з Богом в добру путь.
До школи поспішаймо,
Де нас науки ждуть.

Хоч легко й безтурботно
Минають дні у грі,
Та треба нам учитись,
Збирати скарб в умі.

Кого застане старість
Неукою, у тьмі,
Тому на світі мов би
Без хліба у зимі.');
DELETE FROM song_links WHERE song_id = 'pisniua_3181766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3181766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3181766';
DELETE FROM songs WHERE id = 'pisniua_3181766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3181766','Дума про Довбуша','Українська народна пісня. Виконує: Богдан Косопуд','uk','ukraine_before_1917',NULL,NULL,'надав Богдан Косопуд',NULL,'Ой, попід гай зелененький,
Ой, попід гай зелененький,
Ходить Довбуш молоденький,
Ходить Довбуш молоденький.

На ніженьку налягає,
На ніженьку налягає,
Топірцем ся підпирає,
Та й на хлопців він гукає:

Беріть мене на топори,
Занесіть ня в чорні гори,
В чорні гори занесіть ня,
На дрібен мак посічіть ня.

Ой, ви, хлопці, пам''ятайте:
За народ чесний вставайте,
Багачів-панів рубайте
І бідноті помагайте!

Ой, попід гай зелененький,
Ой, попід гай зелененький,
Ходить Довбуш молоденький,
Ходить Довбуш молоденький','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3181766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3181766','Дума про Довбуша','Ой, попід гай зелененький,
Ой, попід гай зелененький,
Ходить Довбуш молоденький,
Ходить Довбуш молоденький.

На ніженьку налягає,
На ніженьку налягає,
Топірцем ся підпирає,
Та й на хлопців він гукає:

Беріть мене на топори,
Занесіть ня в чорні гори,
В чорні гори занесіть ня,
На дрібен мак посічіть ня.

Ой, ви, хлопці, пам''ятайте:
За народ чесний вставайте,
Багачів-панів рубайте
І бідноті помагайте!

Ой, попід гай зелененький,
Ой, попід гай зелененький,
Ходить Довбуш молоденький,
Ходить Довбуш молоденький');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3181766_l1','pisniua_3181766','YouTube','https://www.youtube.com/watch?v=4N72Q08c6d4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3181766_l2','pisniua_3181766','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3186560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3186560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3186560';
DELETE FROM songs WHERE id = 'pisniua_3186560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3186560','Ой, виорю нивку','Українська народна пісня. Виконує: Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, виорю нивку широкую
Та й насію хмелю високого.

Та й насію хмелю високого,
Та й наварю пива солодкого.

Та й наварю пива солодкого
Задля свого роду далекого.

По багату сестру коней пошлю,
Вдові, бідній сеструі- перекажу.

Що багата сестра кіньми їде,
Вдова, бідна сеста пішки іде.

Що багата сестра з калачами,
Вдова, бідна сестра з діточками.

Що багата сестра - кінець столу,
Вдова, бідна сестра - край порогу.

Що багата сестра за стіл сіла,
Вдова, бідна сестра не посміла.

Ходім, дітки, ходім з хати,
Не мішаймо дядькові пить-гуляти.

Вставай, тато, вставай з гробу,
Горе жити бідним коло роду,
Горе жити бідним коло роду...','[''pisni.org.ua'', ''cat:socialno-pobutovi'', ''Соціально-побутові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3186560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3186560','Ой, виорю нивку','Ой, виорю нивку широкую
Та й насію хмелю високого.

Та й насію хмелю високого,
Та й наварю пива солодкого.

Та й наварю пива солодкого
Задля свого роду далекого.

По багату сестру коней пошлю,
Вдові, бідній сеструі- перекажу.

Що багата сестра кіньми їде,
Вдова, бідна сеста пішки іде.

Що багата сестра з калачами,
Вдова, бідна сестра з діточками.

Що багата сестра - кінець столу,
Вдова, бідна сестра - край порогу.

Що багата сестра за стіл сіла,
Вдова, бідна сестра не посміла.

Ходім, дітки, ходім з хати,
Не мішаймо дядькові пить-гуляти.

Вставай, тато, вставай з гробу,
Горе жити бідним коло роду,
Горе жити бідним коло роду...');
DELETE FROM song_links WHERE song_id = 'pisniua_318560';
DELETE FROM song_versions WHERE song_id = 'pisniua_318560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_318560';
DELETE FROM songs WHERE id = 'pisniua_318560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_318560','Ой ви Голуби ой ви Бєлиє','Українська народна пісня. Виконує: Гуртоправці','uk','ukraine_before_1917',NULL,NULL,'Гуртоправці: Ой давно-давно. Найдавніша і новіша етнічна музика українців. Гурти "Древо", "Володар" і гуртоправці. Укл. Ірина Клименко (klymenko_iryna@ukr.net). 2003. Кружало. №15. "Псальма", Полтавщина (Гадяч: Веприк). Заспів – Сусанна Карпенко, верх – Ірина Клименко, Тетяна Сопілка.','Світ не по Правді: Пісня перегукується з Колядками про світ не по Правді, коли Бог посилає з Неба Голубів-ангелів, космоґонічних чинників на Початку Світа, перевірити чи світ такий, як колись давно було, чи живе він по Правді господній. Грушевський: Відчути і зрозуміти. В старій Руси, як ми знаємо, речниками реліґійного антаґонізму майже виключно, бодай довший час, були люде чужі, Греки — духовні. Вони стрічали в місцевій, українській суспільності... досить рівнодушні відносини до православно-католицької реліґійної ріжниці, і обурюючи ся та скандалїзуючи ся такою байдужістю (такими поглядами, що "сию и ону віру Бог дал") старали ся поставити сих українських недовірків на відповідне становище супроти релїґійних ріжниць взагалї, а особливо — супроти латинства. Ледви одначе можна думати, щоб на українську суспільність безпосередньо ся проповідь робила значне вражіннє.... Але місцеве, тубильне духовенство мусїло присвоївати собі науку й погляди своїх учителїв Греків і оскільки множило ся й розширяло ся в суспільности — воно мусїло проводити сї погляди по малу і в саму суспільність... Краківський біскуп середини ХІІ в. напр. рекомендує Бернарду з Клєрво Русинів яко таких, що від свого навернення на християнство пересякли ріжними хибами й єретичною нїкчемністю (pravitate), лише по імени признають Христа, а дїлами своїми його вирікають ся. Католицькі письменники тих віків часто прикладають до православнихепітети "поган" (pagani, gentiles)." (М. Грушевський. Історія України-Руси, ХІУ-ХУІІ віки)','Ой ви голуби, ой ви бєлиє,
Ой шо ж ви мені тай надєлали. |(2)

А(Ой) ми не голуби, а ми анголи,
А ми янголи-хранителі.
Грєшним душам покровителі.

А ми були проповєдовали,
Як душа з тєлом розставалася. |(2)

Полетіла душа на восток сонця,
А там раї позакривані. |(2)

Полетіла душа на запад сонця,
А там пекла пооткривані.
Грєшними душами переповнені.

Полетіла душа у свої тєлєса -
Ой ви тєлєса мої бєлиє,
Ой шо ж ви мені та й надєлали.

Шо тобі, голова, що не розуміла,
А тобі, душа, шо не терпіла. |(2)

А тобі, голова, у смолє кипіть,
А тобі, душа, на отвєт летіть. |(2)

Відміна:
А тобі, голова, у смолє кипіть,
А тобі, серце, червам точить.
А тобі, душа, на отвєт летіть','[''pisni.org.ua'', ''cat:poliski'', ''cat:suspilno-politychni'', ''Пісні з Полісся'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_318560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_318560','Ой ви Голуби ой ви Бєлиє','Ой ви голуби, ой ви бєлиє,
Ой шо ж ви мені тай надєлали. |(2)

А(Ой) ми не голуби, а ми анголи,
А ми янголи-хранителі.
Грєшним душам покровителі.

А ми були проповєдовали,
Як душа з тєлом розставалася. |(2)

Полетіла душа на восток сонця,
А там раї позакривані. |(2)

Полетіла душа на запад сонця,
А там пекла пооткривані.
Грєшними душами переповнені.

Полетіла душа у свої тєлєса -
Ой ви тєлєса мої бєлиє,
Ой шо ж ви мені та й надєлали.

Шо тобі, голова, що не розуміла,
А тобі, душа, шо не терпіла. |(2)

А тобі, голова, у смолє кипіть,
А тобі, душа, на отвєт летіть. |(2)

Відміна:
А тобі, голова, у смолє кипіть,
А тобі, серце, червам точить.
А тобі, душа, на отвєт летіть');
DELETE FROM song_links WHERE song_id = 'pisniua_3184467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3184467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3184467';
DELETE FROM songs WHERE id = 'pisniua_3184467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3184467','Зайчик','(Зайчику, зайчику). Українська народна пісня. Виконує: Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,'Красна весна, тихе літо. Українські народні календарні пісні весняно- літньої пори з репертуару етнографічного хору "Гомін" та Київського Кобзарського Цеху. /Упорядники: Ященко Л. І., Міщенко К. А./ - Київ, 2007. - 256 с.',NULL,'Зайчику, зайчику ти малесенький,
Голубе, голубе ти сивесенький!

Ану, зайку, скочки в бочки!
Ану, зайку, у долоньки!

Скочком-бочком перевернися,
Гребінчиком перечешися,
Кого любиш - поклонися,
Кого любиш - обіймися.

Поплив зайчик по Дунаю
Та взяв собі котру скраю -
Чи попову, чи дякову,
Чи найкращу - мужикову.

А попова кривонога,
А дякова кривобока,
Мужикова - гарна диня,
Буде з неї господиня!','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3184467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3184467','Зайчик','Зайчику, зайчику ти малесенький,
Голубе, голубе ти сивесенький!

Ану, зайку, скочки в бочки!
Ану, зайку, у долоньки!

Скочком-бочком перевернися,
Гребінчиком перечешися,
Кого любиш - поклонися,
Кого любиш - обіймися.

Поплив зайчик по Дунаю
Та взяв собі котру скраю -
Чи попову, чи дякову,
Чи найкращу - мужикову.

А попова кривонога,
А дякова кривобока,
Мужикова - гарна диня,
Буде з неї господиня!');
DELETE FROM song_links WHERE song_id = 'pisniua_3187020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3187020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3187020';
DELETE FROM songs WHERE id = 'pisniua_3187020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3187020','Ой, на горі льон, льон','Українська народна пісня. Виконує: Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ой, на горі льон, льон,
По долині мак, мак.
Гіркі наші маковиці,
Орати би так, так.

Ой, на горі льон, льон,
По долині мак, мак.
Гіркі наші маковиці,
Сіяти би так, так.

Ой, на горі льон, льон,
По долині мак, мак.
Гіркі наші маковиці,
Скородити б так, так.

Ой, на горі льон, льон,
По долині мак, мак.
Гіркі наші маковиці,
Копати би так, так.

Ой, на горі льон, льон,
По долині мак, мак.
Гіркі наші маковиці,
Брати би так, так.

Ой, на горі льон, льон,
По долині мак, мак.
Гіркі наші маковиці,
Терти би так, так.','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3187020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3187020','Ой, на горі льон, льон','Ой, на горі льон, льон,
По долині мак, мак.
Гіркі наші маковиці,
Орати би так, так.

Ой, на горі льон, льон,
По долині мак, мак.
Гіркі наші маковиці,
Сіяти би так, так.

Ой, на горі льон, льон,
По долині мак, мак.
Гіркі наші маковиці,
Скородити б так, так.

Ой, на горі льон, льон,
По долині мак, мак.
Гіркі наші маковиці,
Копати би так, так.

Ой, на горі льон, льон,
По долині мак, мак.
Гіркі наші маковиці,
Брати би так, так.

Ой, на горі льон, льон,
По долині мак, мак.
Гіркі наші маковиці,
Терти би так, так.');
DELETE FROM song_links WHERE song_id = 'pisniua_318869';
DELETE FROM song_versions WHERE song_id = 'pisniua_318869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_318869';
DELETE FROM songs WHERE id = 'pisniua_318869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_318869','Чом ви хлопці затужили','Музика: Анатолій Сухий Слова: Анатолій Сухий. Виконує: Рутенія','uk','ukrainian_peoples_republic_1917_1921',NULL,NULL,'Чув у виконанні частини гурту Рутенія у Москві 1989 р.',NULL,'Чом ви, хлопці, затужили,
Голови схилили, -
Чи набоїв в крісах мало,
Шаблі затупили?

Ви служили цісарятам,
Гетьманам служили,
Послужіть же Україні,
Поки є ще сили!

Приспів:
А черлена Галичина  |
Буде пам''ятати,     |
А черлена Галичина  | (2)
То стрілецька мати! |

Візьми, жид, останній таляр -
Заграй коломийки,
Наливай же по останній
Своїм хлопцям, стрийку,

Бо стрілецька наша доля,
Чорним вишивана,
Почекає в чистім полі
Незрадлива панна.

Приспів.','[''pisni.org.ua'', ''cat:strilecki'', ''Стрілецькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_318869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_318869','Чом ви хлопці затужили','Чом ви, хлопці, затужили,
Голови схилили, -
Чи набоїв в крісах мало,
Шаблі затупили?

Ви служили цісарятам,
Гетьманам служили,
Послужіть же Україні,
Поки є ще сили!

Приспів:
А черлена Галичина  |
Буде пам''ятати,     |
А черлена Галичина  | (2)
То стрілецька мати! |

Візьми, жид, останній таляр -
Заграй коломийки,
Наливай же по останній
Своїм хлопцям, стрийку,

Бо стрілецька наша доля,
Чорним вишивана,
Почекає в чистім полі
Незрадлива панна.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3186727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3186727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3186727';
DELETE FROM songs WHERE id = 'pisniua_3186727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3186727','Сьогодні Івана','Українська народна пісня. Виконує: Ніна Матвієнко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Сьогодні Івана,
А завтра Купала.
Купала на Йвана!
Купала на Йвана!

Купався Іван,
Доведеться і нам,
Купався Мусій,
Доведеться усім,
Купала на Йвана!
Купала на Йвана!

А після завтра
Петра і Павла,
Купала на Йвана!
Купала на Йвана!

Купався Дем''ян,
Та упав у бур''ян,
Купався Петро,
Та упав у шатро.
Купала на Йвана!
Купала на Йвана!

Ой, ти купалочка,
А де ж твої дочки?
Купала на Йвана!
Купала на Йвана!

А всі твої дочки
Поплели віночки,
З рожі й огірочків,
І у тих віночках
Купало стрічали,
Тоді ті віночки
На воду пускали.
Купала на Йвана!
Купала на Йвана!','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3186727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3186727','Сьогодні Івана','Сьогодні Івана,
А завтра Купала.
Купала на Йвана!
Купала на Йвана!

Купався Іван,
Доведеться і нам,
Купався Мусій,
Доведеться усім,
Купала на Йвана!
Купала на Йвана!

А після завтра
Петра і Павла,
Купала на Йвана!
Купала на Йвана!

Купався Дем''ян,
Та упав у бур''ян,
Купався Петро,
Та упав у шатро.
Купала на Йвана!
Купала на Йвана!

Ой, ти купалочка,
А де ж твої дочки?
Купала на Йвана!
Купала на Йвана!

А всі твої дочки
Поплели віночки,
З рожі й огірочків,
І у тих віночках
Купало стрічали,
Тоді ті віночки
На воду пускали.
Купала на Йвана!
Купала на Йвана!');
DELETE FROM song_links WHERE song_id = 'pisniua_318727';
DELETE FROM song_versions WHERE song_id = 'pisniua_318727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_318727';
DELETE FROM songs WHERE id = 'pisniua_318727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_318727','Не спиняй','Музика: Beatles Слова: Олександр Олесь','uk','ukraine_1991',NULL,NULL,'http://www.plast.org.au/songbook.php?search=%','пластуни і не тільки','Не спиняй думок крилатих,
Най летять в світи.
Безліч дивних див угледиш
Їх очима ти.

Обійми рукою землю,
Кров''ю обігрій,
Але духу тісно
На землі малій.

Хай тобі людський мурашник,
Наче рідний брат,
Але ти на світ широкий
Не дивись з-за грат.

В небо линь, де світ прекрасний
Сонячно-ясний.
В раюванні дух свій ясний
З його сяйвом злий.','[''pisni.org.ua'', ''cat:plastovi'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_318727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_318727','Не спиняй','Не спиняй думок крилатих,
Най летять в світи.
Безліч дивних див угледиш
Їх очима ти.

Обійми рукою землю,
Кров''ю обігрій,
Але духу тісно
На землі малій.

Хай тобі людський мурашник,
Наче рідний брат,
Але ти на світ широкий
Не дивись з-за грат.

В небо линь, де світ прекрасний
Сонячно-ясний.
В раюванні дух свій ясний
З його сяйвом злий.');
DELETE FROM song_links WHERE song_id = 'pisniua_3192727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3192727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3192727';
DELETE FROM songs WHERE id = 'pisniua_3192727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3192727','Купальський вечір','Музика: Володимир Смотритель Слова: невідомий. Виконує: Володимир Смотритель','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Барвистий луг у травах-килимах,
Багаття пломінь іскорками мліє,
А хвиля підійма і обійма
Живі віночки та дівочі мрії.

Приспів:
Купальський вечір - молодості світ,
Купальський вечір - вишита сорочка,
А десь у нетрях свій чарівний цвіт
Вже розкривала папороть-ворожка.

Той папороті цвіт не для журби,
Він - щастя промінь у нічному лоні.
Знайди його і вже не загуби,
І не згуби, взявши у долоні!

Приспів.

Глибока північ казкою пливла,
На жар багаття срібні роси впали,
А папороть, мов дівчина, цвіла
І не чекала іншого Купала.

Приспів.

Вже розкривала папороть-ворожка...
Вже розкривала папороть-ворожка...','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3192727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3192727','Купальський вечір','Барвистий луг у травах-килимах,
Багаття пломінь іскорками мліє,
А хвиля підійма і обійма
Живі віночки та дівочі мрії.

Приспів:
Купальський вечір - молодості світ,
Купальський вечір - вишита сорочка,
А десь у нетрях свій чарівний цвіт
Вже розкривала папороть-ворожка.

Той папороті цвіт не для журби,
Він - щастя промінь у нічному лоні.
Знайди його і вже не загуби,
І не згуби, взявши у долоні!

Приспів.

Глибока північ казкою пливла,
На жар багаття срібні роси впали,
А папороть, мов дівчина, цвіла
І не чекала іншого Купала.

Приспів.

Вже розкривала папороть-ворожка...
Вже розкривала папороть-ворожка...');
DELETE FROM song_links WHERE song_id = 'pisniua_319168';
DELETE FROM song_versions WHERE song_id = 'pisniua_319168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_319168';
DELETE FROM songs WHERE id = 'pisniua_319168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_319168','Полтавський рушничок','Музика: Петро Китастий Слова: Борис Олександрів','uk','ukraine_1991',NULL,NULL,'Самвидавний туристський пісенник "Де гори Карпати, де Писаний камінь". - Літо, 1982.','Вперше почув у виконанні канадських українців у 70-х роках ХХ ст. в аудіозаписі, вдруге почув під час спільної туристської ночівки у Карпатах1983 року, втретє натрапив на цю пісню у згаданому самвидавному пісеннику. І це все. Інформацію про авторів надав Віктор Мішалов. Їі потрібно перевірити.','Пробудилась піснею Полтава,
Казок безліч, райдужних стрічок.
Я тобі на згадку, згадку дарувала    |
Вишитий полтавський рушничок.        |

Серце радість весняна стискає
І біжить стежинкою струмок.
Хай тобі в чужині, в чужині помагає  |
Вишитий серпанком рушничок.          |(2)

Зашумлять жита в полях без краю;
Полтавщина, солов''їний край...
Ти згадай в чужині, в чужині далекій |
Полтавчаночку свою згадай.           |(2)

І думки до тебе зараз мчаться
Весняним розливом всіх річок.
Збережи дарунок, дарунок на щастя,   |
Вишитий полтавський рушничок.        |(2)','[''pisni.org.ua'', ''cat:43'', ''cat:emigration'', ''Еміґрантські пісні'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_319168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_319168','Полтавський рушничок','Пробудилась піснею Полтава,
Казок безліч, райдужних стрічок.
Я тобі на згадку, згадку дарувала    |
Вишитий полтавський рушничок.        |

Серце радість весняна стискає
І біжить стежинкою струмок.
Хай тобі в чужині, в чужині помагає  |
Вишитий серпанком рушничок.          |(2)

Зашумлять жита в полях без краю;
Полтавщина, солов''їний край...
Ти згадай в чужині, в чужині далекій |
Полтавчаночку свою згадай.           |(2)

І думки до тебе зараз мчаться
Весняним розливом всіх річок.
Збережи дарунок, дарунок на щастя,   |
Вишитий полтавський рушничок.        |(2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3189261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3189261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3189261';
DELETE FROM songs WHERE id = 'pisniua_3189261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3189261','Хай світить сонце','Виконує: Берники','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'У світі неправди і зла
Спішіть принести хоч краплину
Любові, поваги й тепла -
Для цього створив Бог людини.
Відкинувши наміри злі,
На зло відповідьте любов''ю,
Всміхайтесь приємно завжди,
І все зацвіте добротою!

Приспів:
Хай світить сонце      |
У ваше віконце         |
І посилає проміння     |
Любові і тепла,        |
Хай ваша доля          |
Не знає горя,          |
Її ви назавжди довірте |
У руки Христа!         | (2)

Хай спокій панує в душі
І мир переповнює серце,
Ви мріям прекрасним, святим
Ніколи не дайте померти.
Хай з вами крокують в житті
Любов і Надія, і Віра,
Бо чесно прожить у житті
Без цього ніхто не зуміє.

Приспів.

Хай Божа свята благодать
На землю росою спадає,
У селах її і в містах
Хай кожен сьогодні сприймає.
Хай люди усі на землі
З любов''ю візьмуться за руки,
І стане світліше тоді,
І радісно буде по всюди!

Приспів.','[''pisni.org.ua'', ''cat:christian'', ''cat:zahalni-cinnosti'', ''Пісні на християнську тематику'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3189261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3189261','Хай світить сонце','У світі неправди і зла
Спішіть принести хоч краплину
Любові, поваги й тепла -
Для цього створив Бог людини.
Відкинувши наміри злі,
На зло відповідьте любов''ю,
Всміхайтесь приємно завжди,
І все зацвіте добротою!

Приспів:
Хай світить сонце      |
У ваше віконце         |
І посилає проміння     |
Любові і тепла,        |
Хай ваша доля          |
Не знає горя,          |
Її ви назавжди довірте |
У руки Христа!         | (2)

Хай спокій панує в душі
І мир переповнює серце,
Ви мріям прекрасним, святим
Ніколи не дайте померти.
Хай з вами крокують в житті
Любов і Надія, і Віра,
Бо чесно прожить у житті
Без цього ніхто не зуміє.

Приспів.

Хай Божа свята благодать
На землю росою спадає,
У селах її і в містах
Хай кожен сьогодні сприймає.
Хай люди усі на землі
З любов''ю візьмуться за руки,
І стане світліше тоді,
І радісно буде по всюди!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3189261_l1','pisniua_3189261','YouTube','https://www.youtube.com/watch?v=D9pMrZEtPN0','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3194222';
DELETE FROM song_versions WHERE song_id = 'pisniua_3194222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3194222';
DELETE FROM songs WHERE id = 'pisniua_3194222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3194222','Щедрик','Музика: Воплі Відоплясова Слова: народні. Виконує: Воплі Відоплясова','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Щедрик, щедрик, щедрівочка, |
Прилетіла Ластівочка,       |
Стала собі щебетати,        |
Господаря викликати:        | (2)

Вийди, вийди, Господарю,    |
Подивися на Кошару -        |
Там Овечки покотились,      |
А Ягнята родились.          | (2)

Меланочка воду пила,        |
Тонкий фартух замочила.     |
Повій, вітре буйнесенький,  |
Висуш фартух тонесенький.   | (2)

Меланочка наша, наша        |
Та спіймала в руки Пташа.   | (2)

Співаючи заблудилась,       |
В Чистім Полі загубилась.   | (2)

Меланочка воду пила,        |
Тонкий фартух замочила.     |
Повій, вітре буйнесенький,  |
Висуш фартух тонесенький.   | (2)

Прилетіли три янголи,       |
Взяли Йсуса на небеса.      | (2)

Щедрик, щедрик, щедрівочка, | (2)
Прилетіла Ластівочка,       | (2)
Стала собі щебетати,        | (2)
Господаря кликати.          | (2)','[''pisni.org.ua'', ''cat:shchedrivky'', ''Щедрівки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3194222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3194222','Щедрик','Щедрик, щедрик, щедрівочка, |
Прилетіла Ластівочка,       |
Стала собі щебетати,        |
Господаря викликати:        | (2)

Вийди, вийди, Господарю,    |
Подивися на Кошару -        |
Там Овечки покотились,      |
А Ягнята родились.          | (2)

Меланочка воду пила,        |
Тонкий фартух замочила.     |
Повій, вітре буйнесенький,  |
Висуш фартух тонесенький.   | (2)

Меланочка наша, наша        |
Та спіймала в руки Пташа.   | (2)

Співаючи заблудилась,       |
В Чистім Полі загубилась.   | (2)

Меланочка воду пила,        |
Тонкий фартух замочила.     |
Повій, вітре буйнесенький,  |
Висуш фартух тонесенький.   | (2)

Прилетіли три янголи,       |
Взяли Йсуса на небеса.      | (2)

Щедрик, щедрик, щедрівочка, | (2)
Прилетіла Ластівочка,       | (2)
Стала собі щебетати,        | (2)
Господаря кликати.          | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3194222_l1','pisniua_3194222','YouTube','https://www.youtube.com/watch?v=6uKbK1CPwSs','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3194222_l2','pisniua_3194222','YouTube','https://www.youtube.com/watch?v=6Qfpu2_d4mg','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3194222_l3','pisniua_3194222','YouTube','https://www.youtube.com/watch?v=w9E0CzDCJQY','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3193168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3193168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3193168';
DELETE FROM songs WHERE id = 'pisniua_3193168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3193168','Гімн міста Полтави','Музика: Олексій Чухрай Слова: Леонід Вернигора','uk','ukraine_1991',NULL,NULL,'Музичне краєзнавство Полтавщини: від витоків до сьогодення / Укладачі: Лобач О. О., Халецька Л. Л. - Полтава: ПОІППО, 2009. - 360 с.',NULL,'Здавен ми славні, так ведеться,
Запам''ятали нас навіки,
Наш дім, і місто, і фортеця,
Не завойована ніким.

Хвала, хвала тобі, Полтаво,
У пісні солов''їній.
У тебе, матінка Держава -
Безсмертна Україна.

Заповідав нам Котляревський
Закон, що нас охороня:
Де мир і згода у сімействі -
Блаженна буде сторона.

Що ми духовна є столиця,
Давно вже визнав цілий світ.
Живи й сіяй в віках, світлице,
Як материнки первоцвіт!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3193168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3193168','Гімн міста Полтави','Здавен ми славні, так ведеться,
Запам''ятали нас навіки,
Наш дім, і місто, і фортеця,
Не завойована ніким.

Хвала, хвала тобі, Полтаво,
У пісні солов''їній.
У тебе, матінка Держава -
Безсмертна Україна.

Заповідав нам Котляревський
Закон, що нас охороня:
Де мир і згода у сімействі -
Блаженна буде сторона.

Що ми духовна є столиця,
Давно вже визнав цілий світ.
Живи й сіяй в віках, світлице,
Як материнки первоцвіт!');
DELETE FROM song_links WHERE song_id = 'pisniua_3194663';
DELETE FROM song_versions WHERE song_id = 'pisniua_3194663';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3194663';
DELETE FROM songs WHERE id = 'pisniua_3194663';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3194663','Промінчик','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я сонячний промінчик
В долоньки покладу,
Я сонячний промінчик
До ладу доведу.

Приспів:
Світи, світи, промінчик,
Віддай своє тепло,
Щоб хоть на мить тепліше
Усім, усім було.
Щоб хоть на мить тепліше
Усім, усім було!

Я і чужих, і рідних,
І всіх, кого люблю,
Промінчиком чарівним
Розраджу й звеселю.

Приспів.

Якщо в моїх долоньках
Загасне раптом він,
Я в сонечка на небі
Візьму іще один.

Приспів','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3194663'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3194663','Промінчик','Я сонячний промінчик
В долоньки покладу,
Я сонячний промінчик
До ладу доведу.

Приспів:
Світи, світи, промінчик,
Віддай своє тепло,
Щоб хоть на мить тепліше
Усім, усім було.
Щоб хоть на мить тепліше
Усім, усім було!

Я і чужих, і рідних,
І всіх, кого люблю,
Промінчиком чарівним
Розраджу й звеселю.

Приспів.

Якщо в моїх долоньках
Загасне раптом він,
Я в сонечка на небі
Візьму іще один.

Приспів');
DELETE FROM song_links WHERE song_id = 'pisniua_3192261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3192261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3192261';
DELETE FROM songs WHERE id = 'pisniua_3192261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3192261','Ти і я','Музика: Зоя Красуляк Слова: Зоя Красуляк. Виконує: Андрій та Ярина','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Ти вийди до мене, ти вийди
У тиху купальську ніч,
Як місяць між зорі зійде -
До лісу мене поклич.
Як папороть дивна заквітне -
Чарівною стане трава,
Тоді ти мене зрозумієш,
Бо тут непотрібні слова.

Приспів:
Тільки ти і я, з тобою ми, |
Мов дві зорі, на небі,     |
Лиш твоє ім''я шепочу я     |
У дивну ніч для тебе!      | (2)

Стомлена ніч-чарівниця
Губить росу поміж трав,
Так як тебе я кохаю,
Ніхто на землі не кохав!
Скоро настане світанок,
Вранішнє сонце зійде,
Квітка чарівна кохання
В серці моєму цвіте!

Приспів. (2)','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3192261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3192261','Ти і я','Ти вийди до мене, ти вийди
У тиху купальську ніч,
Як місяць між зорі зійде -
До лісу мене поклич.
Як папороть дивна заквітне -
Чарівною стане трава,
Тоді ти мене зрозумієш,
Бо тут непотрібні слова.

Приспів:
Тільки ти і я, з тобою ми, |
Мов дві зорі, на небі,     |
Лиш твоє ім''я шепочу я     |
У дивну ніч для тебе!      | (2)

Стомлена ніч-чарівниця
Губить росу поміж трав,
Так як тебе я кохаю,
Ніхто на землі не кохав!
Скоро настане світанок,
Вранішнє сонце зійде,
Квітка чарівна кохання
В серці моєму цвіте!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3194364';
DELETE FROM song_versions WHERE song_id = 'pisniua_3194364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3194364';
DELETE FROM songs WHERE id = 'pisniua_3194364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3194364','Колискова для мами','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Сонечко скотилось на зелені віти,
Матінка втомилась і лягла спочить.
Стану я тихенько, щоб не розбудити,
Щоб заради неньки все переробить.

Приспів:
Тихо-тихо спить матуся,
Баю-бай...
Я на неї задивлюся,
Баю-бай...
Я до неї прихилюся,
Я за неї помолюся,
Спи, моя матусю...

Зорі в небі синім засвітились рясно,
Соловей співає пісню у гаю.
Буде у хатинці гарно, як у казці,
Я своїй матусі все перероблю.

Приспів. (3)

Спи, моя матусю','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3194364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3194364','Колискова для мами','Сонечко скотилось на зелені віти,
Матінка втомилась і лягла спочить.
Стану я тихенько, щоб не розбудити,
Щоб заради неньки все переробить.

Приспів:
Тихо-тихо спить матуся,
Баю-бай...
Я на неї задивлюся,
Баю-бай...
Я до неї прихилюся,
Я за неї помолюся,
Спи, моя матусю...

Зорі в небі синім засвітились рясно,
Соловей співає пісню у гаю.
Буде у хатинці гарно, як у казці,
Я своїй матусі все перероблю.

Приспів. (3)

Спи, моя матусю');
DELETE FROM song_links WHERE song_id = 'pisniua_3198424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3198424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3198424';
DELETE FROM songs WHERE id = 'pisniua_3198424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3198424','Боже, в серцях наших',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Боже, в серцях наших розпали вогонь,
Хай горить не згасне в нас Твоя любов.
Все, що тільки маєм - власність то Твоя,
Ти тримай нас міцно у Своїх руках.

Ти наша радість, наше Ти життя,
В Тобі єдинім світле майбуття,
Наші молитви чуєш в час тривог,
Ісус Спаситель, Ти наш Цар і Бог.

Бережи нас, Боже, в світі цім від зла,
Миром наповни нам усім серця.
В темноті щоденній зіркою засяй,
Не залишай же нас, не залишай.

Не втрачай надії, зіркою світи,
Щоб могли в темряві люди шлях знайти.
Через перешкоди з піснею пройди,
Ісус вже близько, зустрічать спіши.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3198424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3198424','Боже, в серцях наших','Боже, в серцях наших розпали вогонь,
Хай горить не згасне в нас Твоя любов.
Все, що тільки маєм - власність то Твоя,
Ти тримай нас міцно у Своїх руках.

Ти наша радість, наше Ти життя,
В Тобі єдинім світле майбуття,
Наші молитви чуєш в час тривог,
Ісус Спаситель, Ти наш Цар і Бог.

Бережи нас, Боже, в світі цім від зла,
Миром наповни нам усім серця.
В темноті щоденній зіркою засяй,
Не залишай же нас, не залишай.

Не втрачай надії, зіркою світи,
Щоб могли в темряві люди шлях знайти.
Через перешкоди з піснею пройди,
Ісус вже близько, зустрічать спіши.');
DELETE FROM song_links WHERE song_id = 'pisniua_3196168';
DELETE FROM song_versions WHERE song_id = 'pisniua_3196168';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3196168';
DELETE FROM songs WHERE id = 'pisniua_3196168';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3196168','В Новий рік','Виконує: Джазекс','uk','ukraine_1991',NULL,'2006','аудіозапис','Проект "Зимова казка на М1", 2006 рік','В Новий рік найкращі із пісень,
Новий рік - він успіх принесе.
В Новий рік вступаєм разом
Тихим кроком, легким джазом,
Відкриваєм двері у щасливий день!

В Новий рік кохання через край,
В Новий рік, що хочеш - забажай.
Він виконує бажання
Й новорічні привітання шле усім,
Тобі так само - так і знай!

В Новий рік засяють всі зірки,
В Новий рік запалимо свічки.
Новий рік вступаєм разом
Тихим кроком, легким джазом,
Новий рік такий новий і дзвінкий,
Новий-Новий рік!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3196168'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3196168','В Новий рік','В Новий рік найкращі із пісень,
Новий рік - він успіх принесе.
В Новий рік вступаєм разом
Тихим кроком, легким джазом,
Відкриваєм двері у щасливий день!

В Новий рік кохання через край,
В Новий рік, що хочеш - забажай.
Він виконує бажання
Й новорічні привітання шле усім,
Тобі так само - так і знай!

В Новий рік засяють всі зірки,
В Новий рік запалимо свічки.
Новий рік вступаєм разом
Тихим кроком, легким джазом,
Новий рік такий новий і дзвінкий,
Новий-Новий рік!');
DELETE FROM song_links WHERE song_id = 'pisniua_3196020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3196020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3196020';
DELETE FROM songs WHERE id = 'pisniua_3196020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3196020','Новорічні привітання','Слова: Вова зі Львова. Виконує: Вова зі Львова','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Вова зі Львова всіх вітає
З Новим роком, з новим початком,
До цих побажань приєднуються мої дівчатка.
Коли я чую банальні привітання і побажання,
В мене починається мінімальне моральне втикання.
Щоб на сьогоднішній забаві такого не відбулося,
Щоб від нудьги і суму
Дибом ні в кого не стало волосся,
Я вирішив, що трохи з інакшої схеми скористаю,
В оригінала побавлюсь і всіх інакше привітаю.
Отож, бажаю Україні - європейської інтеграції,
Українській нації - збільшення популяції,
Бажаю гучні овації всім справжнім митцям,
Скажем "ні" профанації, яка є і там, і сям.
Баскетболістам бажаю вище стрибати, влучніше кидати,
Львівським Карпатам бажаю регулярно всіх рвати!
Молодшому Кличку бажаю всім все поламати
У всіх версіях, всі пояси до України забрати!

Приспів:
Вова і Макс бажають одностайно,
Щоб у Новому році Вам було файно!
Вова зі Львова і Макс Чорний      |
Бажають одностайно,               |
Щоб у новому році Вам було файно! | (3)

Діду Морозу бажаю не сваритись із Святим Миколаєм,
І Санта Клаус нехай про подарунки теж пам''ятає.
Бажаю любити, поважати й шанувати, маму і тата,
Сестру і брата, бабу і діда, куму і свата.
Росіянам - горілки, білорусам - картоплі, українцям - сала,
І щоб всього вистачало, і ніц не бракувало!
Домашній птиці бажаю не хворіти на пташину грипу,
А якщо захворіли, пийте молоко з медом, малину і липу!
Кримінальним серіалам відсутність рейтингу бажаю,
Нехай в новому році вас ніхто не переглядає!
Бітмейкерам бажаю файних семплів і лупів,
Передаю привіт всім, хто вчиться в МАУПі.
Всім дівчатам, що мені телефонують, бажаю додзвонитись,
І попри мою зайнятість, надіюсь, ми зможем зустрітись!
Собі бажаю випустити файний дебютний альбом,
І щоб за шість годин він розлетівся тиражем в мільйон!

Приспів.

Новий рік наступає,
Рік старий уже минає,
Хтось шампанське відкриває,
Всіх шампанським обливає,
Всім шампанське наливає,
Всі шампанське випивають,
Закусити забувають,
Зате бажання загадають!
Віру в краще всі вже мають,
Песимізмом не страдають,
Все, що було пам''ятають,
Все, що буде уявляють,
Всіх навколо обнімають,
Щастя й радості бажають,
Під цю пісню зажигають,
Вову й Макса поважають!

Приспів.','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3196020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3196020','Новорічні привітання','Вова зі Львова всіх вітає
З Новим роком, з новим початком,
До цих побажань приєднуються мої дівчатка.
Коли я чую банальні привітання і побажання,
В мене починається мінімальне моральне втикання.
Щоб на сьогоднішній забаві такого не відбулося,
Щоб від нудьги і суму
Дибом ні в кого не стало волосся,
Я вирішив, що трохи з інакшої схеми скористаю,
В оригінала побавлюсь і всіх інакше привітаю.
Отож, бажаю Україні - європейської інтеграції,
Українській нації - збільшення популяції,
Бажаю гучні овації всім справжнім митцям,
Скажем "ні" профанації, яка є і там, і сям.
Баскетболістам бажаю вище стрибати, влучніше кидати,
Львівським Карпатам бажаю регулярно всіх рвати!
Молодшому Кличку бажаю всім все поламати
У всіх версіях, всі пояси до України забрати!

Приспів:
Вова і Макс бажають одностайно,
Щоб у Новому році Вам було файно!
Вова зі Львова і Макс Чорний      |
Бажають одностайно,               |
Щоб у новому році Вам було файно! | (3)

Діду Морозу бажаю не сваритись із Святим Миколаєм,
І Санта Клаус нехай про подарунки теж пам''ятає.
Бажаю любити, поважати й шанувати, маму і тата,
Сестру і брата, бабу і діда, куму і свата.
Росіянам - горілки, білорусам - картоплі, українцям - сала,
І щоб всього вистачало, і ніц не бракувало!
Домашній птиці бажаю не хворіти на пташину грипу,
А якщо захворіли, пийте молоко з медом, малину і липу!
Кримінальним серіалам відсутність рейтингу бажаю,
Нехай в новому році вас ніхто не переглядає!
Бітмейкерам бажаю файних семплів і лупів,
Передаю привіт всім, хто вчиться в МАУПі.
Всім дівчатам, що мені телефонують, бажаю додзвонитись,
І попри мою зайнятість, надіюсь, ми зможем зустрітись!
Собі бажаю випустити файний дебютний альбом,
І щоб за шість годин він розлетівся тиражем в мільйон!

Приспів.

Новий рік наступає,
Рік старий уже минає,
Хтось шампанське відкриває,
Всіх шампанським обливає,
Всім шампанське наливає,
Всі шампанське випивають,
Закусити забувають,
Зате бажання загадають!
Віру в краще всі вже мають,
Песимізмом не страдають,
Все, що було пам''ятають,
Все, що буде уявляють,
Всіх навколо обнімають,
Щастя й радості бажають,
Під цю пісню зажигають,
Вову й Макса поважають!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3193766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3193766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3193766';
DELETE FROM songs WHERE id = 'pisniua_3193766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3193766','Діва Пречиста','Українська народна пісня. Виконує: Брати-монахи ЧСВВ','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Радіють всі, радіють всі -
Дорослі й діти, дорослі й діти.
Малий Ісусик в яслах спить.
Із неба ангели, із неба ангели
Несуть привіти, несуть привіти,
На дворі вітер, навіть, стих.

Приспів:
Діва Пречиста, Бога невіста,      |
Світові Сина дає!                 |
Кожна хвилина в цю ніч благовісна |
Гуслами щастя усім награє!        | (2)

В волі співаєм, в волі співаєм,
Молим Творця, молим Творця,
Зі Сходу чекаєм зірницю.
І забаривсь, і забаривсь,
З поспіхом я, з поспіхом я
Черпаємо райську криницю!

Приспів.

Ми з неї п''єм, ми з неї п''єм,
Спраги немає, спраги немає,
На серці топиться лід.
Іншої стежки, іншої стежки
Ми ще не знаєм, ми ще не знаєм,
За Сином ми ходимо вслід!

Приспів.

Світові Сина дає!
Гуслами щастя усім награє!

Приспів.','[''pisni.org.ua'', ''cat:suchasni-pisni-rizdvo'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3193766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3193766','Діва Пречиста','Радіють всі, радіють всі -
Дорослі й діти, дорослі й діти.
Малий Ісусик в яслах спить.
Із неба ангели, із неба ангели
Несуть привіти, несуть привіти,
На дворі вітер, навіть, стих.

Приспів:
Діва Пречиста, Бога невіста,      |
Світові Сина дає!                 |
Кожна хвилина в цю ніч благовісна |
Гуслами щастя усім награє!        | (2)

В волі співаєм, в волі співаєм,
Молим Творця, молим Творця,
Зі Сходу чекаєм зірницю.
І забаривсь, і забаривсь,
З поспіхом я, з поспіхом я
Черпаємо райську криницю!

Приспів.

Ми з неї п''єм, ми з неї п''єм,
Спраги немає, спраги немає,
На серці топиться лід.
Іншої стежки, іншої стежки
Ми ще не знаєм, ми ще не знаєм,
За Сином ми ходимо вслід!

Приспів.

Світові Сина дає!
Гуслами щастя усім награє!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_31929';
DELETE FROM song_versions WHERE song_id = 'pisniua_31929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_31929';
DELETE FROM songs WHERE id = 'pisniua_31929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_31929','Ніби вчора','Музика: Ігор Білозір Слова: Петро Запотічний. Виконує: Оксана Білозір, Дмитро Хома, Василь Зінкевич, Ватра','uk','ukraine_1991',NULL,NULL,NULL,'Текст без акордів: Ніби вчора, рідна мамо, Ви мене будили рано, Промінь сонця зустрічали солов''ї. Пастухи череду гнали, На сопілках вигравали, Горлицею туркотіли Ви мені. Приспів: Вже дарує сонечко новий нам день, Джерельце неспіваних іще пісень. Щедроти черпни у ньому, доброти, А у ранків золотистих чистоти. Диво-сили набирайся у землі, Пам''ятай щодень слова мої. Ніби вчора, рідна мамо, Ви мене будили рано, А світанок дивограєм розквітав. Верби коси розпустили, До водиці нахилились, Вітер в краї вашу пісню засівав. Приспів. Ніби вчора, рідна мамо, Ви мене будили рано, Скільки митей світанкових відійшло... Літа з сумом відлітають, Ваші внуки підростають, Віддаю їм вашу ласку і тепло. Приспів.','Програш:
Dm Gm Bb  A Dm  (x2)
Dsus2             Dm
Ніби вчора, рідна мамо,
Dsus2          Gm
Ви мене будили рано,
Промінь сонця зустрічали солов''ї.
Dsus2           Dm
Пастухи череду гнали,
Dsus2            Gm
На сопілках вигравали,
Горлицею туркотіли Ви мені.
Приспів:
Вже дарує сонечко новий нам день,
A            A7       Dm         Dsus2
Джерельце неспіваних іще пісень.
A7
Щедроти черпни у ньому, доброти,
A          A7         Dm      Dsus2   F
А у ранків золотистих чистоти.
Диво-сили набирайся у землі,
Dm
Пам''ятай щодень слова мої.
Ніби вчора, рідна мамо,
Ви мене будили рано,
А світанок дивограєм розквітав.
Верби коси розпустили,
До водиці нахилились,
Вітер в краї вашу пісню засівав.
Приспів.
Програш-2:
Dm - Em Am С B Em
Esus2             Em
Ніби вчора, рідна мамо,
Esus2          Am
Ви мене будили рано,
Скільки митей світанкових відійшло...
Esus2             Em
Літа з сумом відлітають,
Esus2            Am
Ваші внуки підростають,
Віддаю їм вашу ласку і тепло.
Приспів:
Вже дарує сонечко новий нам день,
B             B7      Em         Esus2
Джерельце неспіваних іще пісень.
Щедроти черпни у ньому, доброти,
B          B7         Em      Esus2   G
А у ранків золотистих чистоти.
Диво-сили набирайся у землі,
Em
Пам''ятай щодень слова мої.
Програш-2 (2)','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''cat:pro-batkiv'', ''Пісні про красу природи'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_31929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_31929','Ніби вчора','Програш:
Dm Gm Bb  A Dm  (x2)
Dsus2             Dm
Ніби вчора, рідна мамо,
Dsus2          Gm
Ви мене будили рано,
Промінь сонця зустрічали солов''ї.
Dsus2           Dm
Пастухи череду гнали,
Dsus2            Gm
На сопілках вигравали,
Горлицею туркотіли Ви мені.
Приспів:
Вже дарує сонечко новий нам день,
A            A7       Dm         Dsus2
Джерельце неспіваних іще пісень.
A7
Щедроти черпни у ньому, доброти,
A          A7         Dm      Dsus2   F
А у ранків золотистих чистоти.
Диво-сили набирайся у землі,
Dm
Пам''ятай щодень слова мої.
Ніби вчора, рідна мамо,
Ви мене будили рано,
А світанок дивограєм розквітав.
Верби коси розпустили,
До водиці нахилились,
Вітер в краї вашу пісню засівав.
Приспів.
Програш-2:
Dm - Em Am С B Em
Esus2             Em
Ніби вчора, рідна мамо,
Esus2          Am
Ви мене будили рано,
Скільки митей світанкових відійшло...
Esus2             Em
Літа з сумом відлітають,
Esus2            Am
Ваші внуки підростають,
Віддаю їм вашу ласку і тепло.
Приспів:
Вже дарує сонечко новий нам день,
B             B7      Em         Esus2
Джерельце неспіваних іще пісень.
Щедроти черпни у ньому, доброти,
B          B7         Em      Esus2   G
А у ранків золотистих чистоти.
Диво-сили набирайся у землі,
Em
Пам''ятай щодень слова мої.
Програш-2 (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_31929_l1','pisniua_31929','YouTube','https://www.youtube.com/watch?v=JcZLIDciV8w','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_31929_l2','pisniua_31929','YouTube','https://www.youtube.com/watch?v=bWPFDJZvF3o','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_31929_l3','pisniua_31929','YouTube','https://www.youtube.com/watch?v=UvakKEoo2wE','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_31929_l4','pisniua_31929','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_3198121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3198121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3198121';
DELETE FROM songs WHERE id = 'pisniua_3198121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3198121','Мама','Музика: Наталія Май Слова: Наталія Май. Виконує: Наталія Май','uk','ukraine_1991',NULL,NULL,'аудіозапис','Прослухати пісню можна тут: http://www.nataliamay.com/100-kraschih-pisen-natalii- maj/ а також: https://t.me/Ukrainian_folk_songs','Знову зорі в небі засинають,
Тепле літо шелестить в житах,
Спомином солодким оживає
Колискова пісня золота.
То моє дитинство босоноге
Заблукало десь у далині,
Мама біля самого порогу
Сумно усміхається мені.

Приспів:
Мамо, мамо, мамо,
Хай печаль мине,
Ніжними руками пригорни мене,
Зірку вечорову засвіти в вікні,
Пісню колискову заспівай мені!

Тихий вітер зорі розгойдає,
Цвіт розгубить м''ята запашна,
Забринить, засвітиться над гаєм
Солов''їв рапсодія сумна
І солоні сльози котять рясно,
Щемом завмирають на вустах,
На душі так радісно і ясно,
Як в дитинстві в мами на руках!

Приспів.

Мамо, мамо, хай печаль мине,
Ніжними руками пригорни мене...

Приспів.','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3198121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3198121','Мама','Знову зорі в небі засинають,
Тепле літо шелестить в житах,
Спомином солодким оживає
Колискова пісня золота.
То моє дитинство босоноге
Заблукало десь у далині,
Мама біля самого порогу
Сумно усміхається мені.

Приспів:
Мамо, мамо, мамо,
Хай печаль мине,
Ніжними руками пригорни мене,
Зірку вечорову засвіти в вікні,
Пісню колискову заспівай мені!

Тихий вітер зорі розгойдає,
Цвіт розгубить м''ята запашна,
Забринить, засвітиться над гаєм
Солов''їв рапсодія сумна
І солоні сльози котять рясно,
Щемом завмирають на вустах,
На душі так радісно і ясно,
Як в дитинстві в мами на руках!

Приспів.

Мамо, мамо, хай печаль мине,
Ніжними руками пригорни мене...

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3204261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3204261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3204261';
DELETE FROM songs WHERE id = 'pisniua_3204261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3204261','Музика, грай','Музика: Олександр Поліщук Слова: Олександр Поліщук. Виконує: Таїсія Повалій','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Заспіваю пісню, як навчила мама, -
"Щось ти, моя доню, сумна дуже стала!"
Заспіваю пісню, як навчила мама...
Я ж його любила, я ж його кохала,
І вночі серденько за ним сумувало,
Я ж його любила, я ж його кохала...

Приспів:
Грай, моя мила музика, грай,
Та й, моє серце, пісню співай!
Грай, моя мила, грай, моя мила!
Грай, моя мила музика, грай,
Та й, моє серце, не забувай!
Грай, моя мила, грай, моя мила!

Не сумуй, серденько, я щаслива буду,
Радість я згадаю, а кривду забуду,
Не сумуй, серденько, я щаслива буду...
Він мені не пара, разом нам не жити,
Так навіщо сльози, навіщо тужити?
Він мені не пара, разом нам не жити...

Приспів. (2)','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3204261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3204261','Музика, грай','Заспіваю пісню, як навчила мама, -
"Щось ти, моя доню, сумна дуже стала!"
Заспіваю пісню, як навчила мама...
Я ж його любила, я ж його кохала,
І вночі серденько за ним сумувало,
Я ж його любила, я ж його кохала...

Приспів:
Грай, моя мила музика, грай,
Та й, моє серце, пісню співай!
Грай, моя мила, грай, моя мила!
Грай, моя мила музика, грай,
Та й, моє серце, не забувай!
Грай, моя мила, грай, моя мила!

Не сумуй, серденько, я щаслива буду,
Радість я згадаю, а кривду забуду,
Не сумуй, серденько, я щаслива буду...
Він мені не пара, разом нам не жити,
Так навіщо сльози, навіщо тужити?
Він мені не пара, разом нам не жити...

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3201121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3201121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3201121';
DELETE FROM songs WHERE id = 'pisniua_3201121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3201121','На світанку, чи пізньої ночі','Виконує: Олег Марцинківський','uk','ukraine_1991',NULL,NULL,NULL,NULL,'На світанку, чи пізньої ночі,
Де б тобі не прийшлося бувати,
До висот підіймай свої очі,
Говорила мені моя мати.
Приспів:
Не забудь помолитися Богу,
Бо в молитві надія і сила,
Стане легше терниста дорога,
З нею завжди ти будеш щасливий.
Ці слова мені в серце запали,
Мов весною добірні зернята.
І рясні їх дощі поливали,
То ж за мене молилася мати.
Приспів.
В ніжнім смутку твоїм материнськім
Океан доброти відчуваю,
Твоє слово неначе перлина,
Наче зіронька в небі, що сяє.
Приспів.
Срібло скроні твої покриває,
І на захід вже сонце схилилось,
Але слово її пам''ятаю:
"Сину мій, не забудь помолитись!"
Приспів.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3201121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3201121','На світанку, чи пізньої ночі','На світанку, чи пізньої ночі,
Де б тобі не прийшлося бувати,
До висот підіймай свої очі,
Говорила мені моя мати.
Приспів:
Не забудь помолитися Богу,
Бо в молитві надія і сила,
Стане легше терниста дорога,
З нею завжди ти будеш щасливий.
Ці слова мені в серце запали,
Мов весною добірні зернята.
І рясні їх дощі поливали,
То ж за мене молилася мати.
Приспів.
В ніжнім смутку твоїм материнськім
Океан доброти відчуваю,
Твоє слово неначе перлина,
Наче зіронька в небі, що сяє.
Приспів.
Срібло скроні твої покриває,
І на захід вже сонце схилилось,
Але слово її пам''ятаю:
"Сину мій, не забудь помолитись!"
Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3201121_l1','pisniua_3201121','YouTube','https://www.youtube.com/watch?v=HT9wnKc1R-o','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3201121_l2','pisniua_3201121','YouTube','https://www.youtube.com/watch?v=gZ4db73YMxk','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3198560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3198560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3198560';
DELETE FROM songs WHERE id = 'pisniua_3198560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3198560','Встає в синім небі зоря',NULL,'uk','ukraine_1991',NULL,NULL,NULL,NULL,'Dm
Встає в синім небі зоря,
A7
І ранок тріпоче крильми,
Gm
Росою вже вмилась земля,
A
Росинки так схожі з слізьми.

А я молюсь за Україну,
Щоб сонце Божої любві
Зігріло землю мою рідну
Промінням лагідним своїм.

Скрізь чути чорнобильський дзвін,
І плаче в колисці дитя.
Наш шлях до провалля привів,
Висить, мов на нитці, життя.

А я молюсь за Україну,
Всміхалось щоби немовля
І в кожну мить, в кожну хвилину
Творця, щоб славила Земля.

Ісусових ніг тихий крок
Вже чує планета уся,
Бо Він є єдиний твій Бог,
Надіє, о Земле, твоя.

Схились до Бога, Україно,
І за любов прослав Творця,
Прийди до Нього, ненько рідна,
Тобі Він дасть нове життя.','[''pisni.org.ua'', ''cat:christian'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3198560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3198560','Встає в синім небі зоря','Dm
Встає в синім небі зоря,
A7
І ранок тріпоче крильми,
Gm
Росою вже вмилась земля,
A
Росинки так схожі з слізьми.

А я молюсь за Україну,
Щоб сонце Божої любві
Зігріло землю мою рідну
Промінням лагідним своїм.

Скрізь чути чорнобильський дзвін,
І плаче в колисці дитя.
Наш шлях до провалля привів,
Висить, мов на нитці, життя.

А я молюсь за Україну,
Всміхалось щоби немовля
І в кожну мить, в кожну хвилину
Творця, щоб славила Земля.

Ісусових ніг тихий крок
Вже чує планета уся,
Бо Він є єдиний твій Бог,
Надіє, о Земле, твоя.

Схились до Бога, Україно,
І за любов прослав Творця,
Прийди до Нього, ненько рідна,
Тобі Він дасть нове життя.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3198560_l1','pisniua_3198560','YouTube','https://www.youtube.com/watch?v=60x6_cBrA40','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_319626';
DELETE FROM song_versions WHERE song_id = 'pisniua_319626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_319626';
DELETE FROM songs WHERE id = 'pisniua_319626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_319626','Царівна','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,'1971','"Народні пісні в записах Лесі Українки та з її співу" 1971 рік.','Співають два хори. Перший хор співає стоячи, другий — сидячи і ховаючи позад себе три вибрані дівчини. Після строфи "Царівно, ми поїдемо" перший хор віддаляється, потім знову вертається. Після строфи "Царівно, ми й заберемо" перший хор бере одну з дівчат, а словами "Бояре, їдьте здорові!" гра кінчається.','I  — Царівно, ми тобі гості,
Ладо моє, ми тобі гості.
II — Бояре, за чим ви гості?
Ладо моє, за чим ви в гості?
I  — Царівно, за дівчиною,
Ладо моє, за дівчиною.
II — Бояре, за котрою?
Ладо моє, за котрою?
I  — Царівно, ми за старшою,
Ладо моє, ми за старшою.
II — Бояре, ще й не ряжена.
Ладо моє, ще й не ряжена.
I  — Царівно, ми й не беремо,
Ладо моє, ми й не беремо.
II — Бояре, ми й не даємо,
Ладо моє, ми й не даємо,
I  — Царівно, ми за меншою,
Ладо моє, ми за меншою.
II — Бояре, вже й наряжена,
Ладо моє, вже й наряжена,
I  — Царівно, ми й заберемо,
Ладо моє, ми й заберемо.
II — Бояре, ми й віддаємо,
Ладо моє, ми й віддаємо.
I  — Царівно, ми й поїдемо,
Ладо моє, ми й поїдемо
II — Бояре, їдьте здорові!
Ладо моє, їдьте здорові!','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_319626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_319626','Царівна','I  — Царівно, ми тобі гості,
Ладо моє, ми тобі гості.
II — Бояре, за чим ви гості?
Ладо моє, за чим ви в гості?
I  — Царівно, за дівчиною,
Ладо моє, за дівчиною.
II — Бояре, за котрою?
Ладо моє, за котрою?
I  — Царівно, ми за старшою,
Ладо моє, ми за старшою.
II — Бояре, ще й не ряжена.
Ладо моє, ще й не ряжена.
I  — Царівно, ми й не беремо,
Ладо моє, ми й не беремо.
II — Бояре, ми й не даємо,
Ладо моє, ми й не даємо,
I  — Царівно, ми за меншою,
Ладо моє, ми за меншою.
II — Бояре, вже й наряжена,
Ладо моє, вже й наряжена,
I  — Царівно, ми й заберемо,
Ладо моє, ми й заберемо.
II — Бояре, ми й віддаємо,
Ладо моє, ми й віддаємо.
I  — Царівно, ми й поїдемо,
Ладо моє, ми й поїдемо
II — Бояре, їдьте здорові!
Ладо моє, їдьте здорові!');
DELETE FROM song_links WHERE song_id = 'pisniua_320065';
DELETE FROM song_versions WHERE song_id = 'pisniua_320065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_320065';
DELETE FROM songs WHERE id = 'pisniua_320065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_320065','Стривай паровозе!','Слова: Олег Скрипка. Виконує: Воплі Відоплясова','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Стривай паровозе, Не стукайте колеса,
Кондукторе натисніть на гальма,
До матері, до тата в загальному вагоні
Я їду залізницею з тюрми
В загальному вагоні, до матері, до тата
Я їду залізницею з тюрми

Don''t waіt for me мамо,
Don''t waіt for me тату,
My traіn іs leavіng now for faraway.
Мене засмоктала багнюка небезпечна,
Пропаща моя доля - Зухенвей

Стривай локомотиве,
Не грюкайте колеса,
Ще є час в очі долі зазирнуть,
Ще поки не запізно зробити нам зупинку -
Кондукторе, натисніть на гальма,

Ще поки не запізно зробити нам зупинку -
Кондукторе, натисніть на гальма,
Кондукторе, натисніть на гальма,
Натисніть, на гальма,
Гальма.','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_320065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_320065','Стривай паровозе!','Стривай паровозе, Не стукайте колеса,
Кондукторе натисніть на гальма,
До матері, до тата в загальному вагоні
Я їду залізницею з тюрми
В загальному вагоні, до матері, до тата
Я їду залізницею з тюрми

Don''t waіt for me мамо,
Don''t waіt for me тату,
My traіn іs leavіng now for faraway.
Мене засмоктала багнюка небезпечна,
Пропаща моя доля - Зухенвей

Стривай локомотиве,
Не грюкайте колеса,
Ще є час в очі долі зазирнуть,
Ще поки не запізно зробити нам зупинку -
Кондукторе, натисніть на гальма,

Ще поки не запізно зробити нам зупинку -
Кондукторе, натисніть на гальма,
Кондукторе, натисніть на гальма,
Натисніть, на гальма,
Гальма.');
DELETE FROM song_links WHERE song_id = 'pisniua_3203525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3203525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3203525';
DELETE FROM songs WHERE id = 'pisniua_3203525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3203525','По долині річка','Музика: Павло Доскоч Слова: Павло Доскоч. Виконує: Павло Доскоч','uk','ukraine_1991',NULL,NULL,NULL,NULL,'В''ється по долині синя, наче небо,
Річка, де кохана воду набирає.
Ой, скажи, кохана, коли поберемось,
Бо моє серденько за тобою крає.
Чуєш, як співає яворова скрипка
Та й до рани мої жалю додає.
Не кажи, кохана, зиму зачекати,
Бо моє серденько не витримає.

Приспів:
По долині річка,        |
Як блакитна стрічка,    |
Що у далині зникає...   |
А кохане серце,         |
Як повне відерце,       |
Що від самоти зітхає... | (2)

Осідлаю коня, поїду далеко
За високі гори у чужі краї,
Бо шукаю долі, наче той лелека,
На чужому полі, на чужій землі.
Зашуміла в лузі зелена ліщина,
Нахилила віти низько до землі,
Затужила в хаті молода дівчина,
Бо немає того, що кохав її...

Приспів.','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3203525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3203525','По долині річка','В''ється по долині синя, наче небо,
Річка, де кохана воду набирає.
Ой, скажи, кохана, коли поберемось,
Бо моє серденько за тобою крає.
Чуєш, як співає яворова скрипка
Та й до рани мої жалю додає.
Не кажи, кохана, зиму зачекати,
Бо моє серденько не витримає.

Приспів:
По долині річка,        |
Як блакитна стрічка,    |
Що у далині зникає...   |
А кохане серце,         |
Як повне відерце,       |
Що від самоти зітхає... | (2)

Осідлаю коня, поїду далеко
За високі гори у чужі краї,
Бо шукаю долі, наче той лелека,
На чужому полі, на чужій землі.
Зашуміла в лузі зелена ліщина,
Нахилила віти низько до землі,
Затужила в хаті молода дівчина,
Бо немає того, що кохав її...

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3203525_l1','pisniua_3203525','YouTube','https://www.youtube.com/watch?v=iSDPJ0YUK8g','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3203525_l2','pisniua_3203525','YouTube','https://www.youtube.com/watch?v=c_SjPh_xrUE','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3199323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3199323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3199323';
DELETE FROM songs WHERE id = 'pisniua_3199323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3199323','Ой, летять сніжинки','Музика: Микола Ведмедеря Слова: Грицько Бойко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ой, летять-летять сніжинки
На будинки, на ялинки,
На дороги, на поля,
Біла, біла вся земля!

Приспів:
Сніг лапатий, сніговій,
Здрастуй свято - Рік Новий!
Сніг лапатий, сніговій,
Здрастуй свято - Рік Новий!

Вийшов Дід Мороз з хатинки,
Зупинивсь біля ялинки,
Нас чекає на сніжку
В срібно-білім кожушку!

Приспів.

У вогнях ялинка сяє,
А Снігуронька співає,
Зимо-зимонько, зима,
Веселіш, як ти, нема!

Приспів. (2)','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:new-year'', ''Дитячі пісні'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3199323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3199323','Ой, летять сніжинки','Ой, летять-летять сніжинки
На будинки, на ялинки,
На дороги, на поля,
Біла, біла вся земля!

Приспів:
Сніг лапатий, сніговій,
Здрастуй свято - Рік Новий!
Сніг лапатий, сніговій,
Здрастуй свято - Рік Новий!

Вийшов Дід Мороз з хатинки,
Зупинивсь біля ялинки,
Нас чекає на сніжку
В срібно-білім кожушку!

Приспів.

У вогнях ялинка сяє,
А Снігуронька співає,
Зимо-зимонько, зима,
Веселіш, як ти, нема!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_319467';
DELETE FROM song_versions WHERE song_id = 'pisniua_319467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_319467';
DELETE FROM songs WHERE id = 'pisniua_319467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_319467','А-а, кицю','Українська народна пісня. Виконує: Любов Клопотовська','uk','ukr_ssr_1919_1991',NULL,'1971','"Народні пісні в записах Лесі Українки та з її співу". 1971 рік "Музична Україна"',NULL,'А-а, кицю,
Пішла киця по водицю
Та й упала у криницю,
Пішов котик витягати,
Не знав, за що кицю брати.
Узяв кицю за хвостицю
Та й ударив об стовпицю:
— Ото тобі, кицю,
Не лізь у криницю,
А будь, кицю, весела,
Поїдем до села
Хліб-сіль купувати,
Малих діток годувати.
А-а-а-а! А-а-а-а!','[''pisni.org.ua'', ''cat:dytyachi'', ''cat:kolyskovi'', ''cat:narodni'', ''Дитячі пісні'', ''Колискові'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_319467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_319467','А-а, кицю','А-а, кицю,
Пішла киця по водицю
Та й упала у криницю,
Пішов котик витягати,
Не знав, за що кицю брати.
Узяв кицю за хвостицю
Та й ударив об стовпицю:
— Ото тобі, кицю,
Не лізь у криницю,
А будь, кицю, весела,
Поїдем до села
Хліб-сіль купувати,
Малих діток годувати.
А-а-а-а! А-а-а-а!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_319467_l1','pisniua_319467','YouTube','https://www.youtube.com/watch?v=ZvKWPloAdls','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3198261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3198261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3198261';
DELETE FROM songs WHERE id = 'pisniua_3198261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3198261','Музика рідного дому','Музика: Олександр Злотник Слова: Олександр Вратарьов. Виконує: Катерина Бужинська, Ірена Грех, Михайло Поплавський, Василь Білоцерківський','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Від Києва до Львова, від Криму до Карпат
Земля моя чудова цвіте, як зелен сад,
Дніпрова хвиля синя дзвенить, немов струна,
Для мене, Україно, ти - пісня і весна!

Приспів:
Музика, музика,
Музика рідного дому,
Дай мені радості, радості,
Клич мене знову!
Тут мої мамо і тато,  |
Тут моя пісня крилата |
Жде мене, жде мене!   | (2)

Десь там за небокраєм країни, наче рай,
Але для мене раєм залишиться мій край.
Дарує горобина рубіни край вікна,
Як мати, Україно, для мене ти одна!

Приспів. (3)','[''pisni.org.ua'', ''cat:patriotic'', ''Патріотичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3198261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3198261','Музика рідного дому','Від Києва до Львова, від Криму до Карпат
Земля моя чудова цвіте, як зелен сад,
Дніпрова хвиля синя дзвенить, немов струна,
Для мене, Україно, ти - пісня і весна!

Приспів:
Музика, музика,
Музика рідного дому,
Дай мені радості, радості,
Клич мене знову!
Тут мої мамо і тато,  |
Тут моя пісня крилата |
Жде мене, жде мене!   | (2)

Десь там за небокраєм країни, наче рай,
Але для мене раєм залишиться мій край.
Дарує горобина рубіни край вікна,
Як мати, Україно, для мене ти одна!

Приспів. (3)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3198261_l1','pisniua_3198261','YouTube','https://www.youtube.com/watch?v=U4RSK-GbEnM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3198261_l2','pisniua_3198261','YouTube','https://www.youtube.com/watch?v=Z4m8hJqxq6U','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3198261_l3','pisniua_3198261','YouTube','https://www.youtube.com/watch?v=ppSc2_5D3vg','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3205626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3205626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3205626';
DELETE FROM songs WHERE id = 'pisniua_3205626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3205626','Лісове свято','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'Збірка дитячих пісень',NULL,'На галявці лісовій в ніч під Новий рік
Оживає і танцює білий сніговик.
В хороводі там кружляють зайчики малі,
І танцюють, і співають звірі лісові!

Бо Новий рік, наш Новий рік
Чарує всіх, як чарівник!

На галявці лісовій в ніч під Новий рік
Відбуваються дива - каже Сніговик.
Вже Бабусенька Яга із Лісовиком
Круг ялиночки пішла танцем-гопаком!

Бо Новий рік, наш Новий рік
Чарує всіх, як чарівник!
Бо Новий рік, наш Новий рік
Чарує всіх, як чарівник!','[''pisni.org.ua'', ''cat:new-year'', ''Пісні про Новий Рік'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3205626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3205626','Лісове свято','На галявці лісовій в ніч під Новий рік
Оживає і танцює білий сніговик.
В хороводі там кружляють зайчики малі,
І танцюють, і співають звірі лісові!

Бо Новий рік, наш Новий рік
Чарує всіх, як чарівник!

На галявці лісовій в ніч під Новий рік
Відбуваються дива - каже Сніговик.
Вже Бабусенька Яга із Лісовиком
Круг ялиночки пішла танцем-гопаком!

Бо Новий рік, наш Новий рік
Чарує всіх, як чарівник!
Бо Новий рік, наш Новий рік
Чарує всіх, як чарівник!');
DELETE FROM song_links WHERE song_id = 'pisniua_3208323';
DELETE FROM song_versions WHERE song_id = 'pisniua_3208323';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3208323';
DELETE FROM songs WHERE id = 'pisniua_3208323';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3208323','Ой, у 1791 році','Українська народна пісня. Виконує: Тарас Житинський','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой, у тисяча сімьсот
Та й дев''яносто першім році
Прийшов указ від цариці -
Йти на Кубань-ріку.                 | (2)

Прощай наше Подніпров''я,
Славна Україна,
Не з охотой покидаєм,
А що скажеш - не питаєм.            | (2)

Ой, судили-рядили,
З ким прощались-сперечались,
Гей, на мир дуба посадили.          | (2)

А що скаже пан Чепига,
Та й ще Головатий,
Гей, третий край нам оживати.       | (2)

А, як будем проживати,
Бусурмана воювати,
Гей, таку славу здобувати.          | (2)

Прощавайтеся із нами,
Таврія море та лимани
Гей, одесанський кочубей.           | (2)

В море ми горой ходили,
Славу здобували,
Гей, військо чорноморськоє кріпили. | (2)

А у нашім краї брати не рубає,
А чи живі, чи здорові,
Через море питаєм?..                | (2)

Ой, у тисяча сімьсот
Та й дев''яносто першім році
Прийшов указ від цариці -
Йти на Кубань-ріку.                 | (2)','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3208323'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3208323','Ой, у 1791 році','Ой, у тисяча сімьсот
Та й дев''яносто першім році
Прийшов указ від цариці -
Йти на Кубань-ріку.                 | (2)

Прощай наше Подніпров''я,
Славна Україна,
Не з охотой покидаєм,
А що скажеш - не питаєм.            | (2)

Ой, судили-рядили,
З ким прощались-сперечались,
Гей, на мир дуба посадили.          | (2)

А що скаже пан Чепига,
Та й ще Головатий,
Гей, третий край нам оживати.       | (2)

А, як будем проживати,
Бусурмана воювати,
Гей, таку славу здобувати.          | (2)

Прощавайтеся із нами,
Таврія море та лимани
Гей, одесанський кочубей.           | (2)

В море ми горой ходили,
Славу здобували,
Гей, військо чорноморськоє кріпили. | (2)

А у нашім краї брати не рубає,
А чи живі, чи здорові,
Через море питаєм?..                | (2)

Ой, у тисяча сімьсот
Та й дев''яносто першім році
Прийшов указ від цариці -
Йти на Кубань-ріку.                 | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3208323_l1','pisniua_3208323','YouTube','https://www.youtube.com/watch?v=0Rt56AKAnAA','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3204424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3204424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3204424';
DELETE FROM songs WHERE id = 'pisniua_3204424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3204424','Козацька пересторога','Музика: Василь Волощук. Виконує: Василь Волощук','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'В чистім полі в степу на роздоллі,
Де на сонці спеклась ковила,
Не для себе ж бо кращої долі
Козаченько шукав, та дарма.
Гарцував на коні вороному,
Гостра шабля рубала з плеча,
Не боявсь, хоч і лячно одному,
Яничарського списа й меча!

Приспів:
І понеслась над степом,
Залунала пересторога -
Хлопці, не спіть! -
Де ваша честь? Де ваша слава?
Де ваша козацька Січ?

Ой, не сила було козаченьку
Самотою свій край боронить,
Він поліг за Вкраїну, за неньку,
Вічним сном твердо-твердо ж бо спить!
Не росте на могилі калина,
І хреста в ізголів''ї нема.
Ось така козаченьку данина,
Ось така йому пам''ять німа.

Приспів. (2)

І минали віки за віками,
Покоління вкраїнських синів,
Вітер волі гуляв над степами,
І вертав козаків, наче синів.
Все одно ж бо на серці тривога:
А чи є з ким наш край боронить?
Простягнулися ж руки до Бога,
Вже на волі єднання молить!

Приспів. (2)

Вкраїна-ненька кличе нас до бою,
Не стишуймо, прискорюймо свій хід,
Вставай, козаче, вставай, соколю,
Сурми грають в похід!
Єднайся, великий наш народе,
Єднайся, християнський люде,
Україна була, Україна є, |
Україна завжди буде!     | (2)

Приспів. (2)

Де ваша честь?
Де ваша слава?
Де ваша козацька Січ?','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3204424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3204424','Козацька пересторога','В чистім полі в степу на роздоллі,
Де на сонці спеклась ковила,
Не для себе ж бо кращої долі
Козаченько шукав, та дарма.
Гарцував на коні вороному,
Гостра шабля рубала з плеча,
Не боявсь, хоч і лячно одному,
Яничарського списа й меча!

Приспів:
І понеслась над степом,
Залунала пересторога -
Хлопці, не спіть! -
Де ваша честь? Де ваша слава?
Де ваша козацька Січ?

Ой, не сила було козаченьку
Самотою свій край боронить,
Він поліг за Вкраїну, за неньку,
Вічним сном твердо-твердо ж бо спить!
Не росте на могилі калина,
І хреста в ізголів''ї нема.
Ось така козаченьку данина,
Ось така йому пам''ять німа.

Приспів. (2)

І минали віки за віками,
Покоління вкраїнських синів,
Вітер волі гуляв над степами,
І вертав козаків, наче синів.
Все одно ж бо на серці тривога:
А чи є з ким наш край боронить?
Простягнулися ж руки до Бога,
Вже на волі єднання молить!

Приспів. (2)

Вкраїна-ненька кличе нас до бою,
Не стишуймо, прискорюймо свій хід,
Вставай, козаче, вставай, соколю,
Сурми грають в похід!
Єднайся, великий наш народе,
Єднайся, християнський люде,
Україна була, Україна є, |
Україна завжди буде!     | (2)

Приспів. (2)

Де ваша честь?
Де ваша слава?
Де ваша козацька Січ?');
DELETE FROM song_links WHERE song_id = 'pisniua_3207424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3207424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3207424';
DELETE FROM songs WHERE id = 'pisniua_3207424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3207424','Брат і сестра','Музика: Олег Стаднік Слова: Олег Стаднік. Виконує: Надзбручани','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Брате мій рідний, одні в нас батьки,
Сестро кохана, одне в нас коріння,
Нам не забуть, як ми в юні роки
Пряник ділили за серця велінням!
Сестро моя, ми з тобою росли,
Де ластів''ята під стріхою грілись,
Роки, мов ріки, у далеч пливли, -
Ми вже дорослі - і в світ розлетілись.

Приспів:
Сестро моя, рідна моя ти кровинко,
Брате, а ти - мій ангелочок земний,
Ніжна сестричко, квітко моя материнко,
Сонечко серця - братику мій дорогий!

Брате, мене захищав ти завжди, -
Щиро раділи і тато, і ненька,
Сестро, тобі, я б вернув ті роки, -
Де ми гойдались в орелях маленьких...
Хай ми щодень, де людська суєта,
Хай нас діла все зовуть за собою, -
Тільки любов''ю як брат і сестра
Будем ріднитись і знову з тобою!..

Приспів.

Ніжна сестричко, будь у житті ти щаслива,
Хай поведеться, брате, і в тебе людське!','[''pisni.org.ua'', ''cat:druzhba'', ''cat:zahalni-cinnosti'', ''Пісні про дружбу'', ''Пісні про загальнолюдські цінності'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3207424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3207424','Брат і сестра','Брате мій рідний, одні в нас батьки,
Сестро кохана, одне в нас коріння,
Нам не забуть, як ми в юні роки
Пряник ділили за серця велінням!
Сестро моя, ми з тобою росли,
Де ластів''ята під стріхою грілись,
Роки, мов ріки, у далеч пливли, -
Ми вже дорослі - і в світ розлетілись.

Приспів:
Сестро моя, рідна моя ти кровинко,
Брате, а ти - мій ангелочок земний,
Ніжна сестричко, квітко моя материнко,
Сонечко серця - братику мій дорогий!

Брате, мене захищав ти завжди, -
Щиро раділи і тато, і ненька,
Сестро, тобі, я б вернув ті роки, -
Де ми гойдались в орелях маленьких...
Хай ми щодень, де людська суєта,
Хай нас діла все зовуть за собою, -
Тільки любов''ю як брат і сестра
Будем ріднитись і знову з тобою!..

Приспів.

Ніжна сестричко, будь у житті ти щаслива,
Хай поведеться, брате, і в тебе людське!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3207424_l1','pisniua_3207424','YouTube','https://www.youtube.com/watch?v=Eu7OtnAz2yk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3207261';
DELETE FROM song_versions WHERE song_id = 'pisniua_3207261';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3207261';
DELETE FROM songs WHERE id = 'pisniua_3207261';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3207261','Прийди до мене, милий Ісусе','Українська народна пісня. Виконує: Тріо Глорія','uk','ukraine_before_1917',NULL,NULL,'збірка релігійних, церковних пісень',NULL,'Прийди до мене, милий Ісусе,
А я на муки Тебе не дам,
Я пригорнуся до Твого серця       |
І поцілую Твоїх п''ять ран.        | (2)

Прийди до мене, милий Ісусе,
Тебе я терням більш не зраню,
Звию віночок з чудних квіточок,   |
Під святі ноги їх постелю.        | (2)

Прийди до мене, милий Ісусе,
А я Хрест нести Тобі не дам,
Візьму Хрест тяжкий на свої плечі |
І на Голгофу понесу сам.          | (2)

Прийди до мене, милий Ісусе,
Одежі зняти з Тебе не дам.
Не дам зранити, о, милий Боже,    |
Твоїх болючих святих п''ять ран.   | (2)

Прийди до мене, милий Ісусе,
Бо Ти - мій добрий Отець і Пан,
А я не зраджу Тебе як Юда,        |
Я буду вірний, як Йоан.           | (2)

Прийди до мене, милий Ісусе,
Жовчі напитись Тобі не дам,
Я поламаю всі гострі списи,       |
Котрі на Тебе ворог наслав.       | (2)

Прийди до мене, милий Ісусе,
Плакати серцю Твому не дам,
Тебе заслоню від злоби світа,     |
За Тебе, Христе, життя віддам.    | (2)

Прийди до мене, милий Ісусе,
Під видом хліба і вина,
Без пресвятої Євхаристії,         |
Без тебе, Христе, життя нема.     | (2)','[''pisni.org.ua'', ''cat:cerkovni'', ''cat:christian'', ''Церковні пісні'', ''Пісні на християнську тематику'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3207261'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3207261','Прийди до мене, милий Ісусе','Прийди до мене, милий Ісусе,
А я на муки Тебе не дам,
Я пригорнуся до Твого серця       |
І поцілую Твоїх п''ять ран.        | (2)

Прийди до мене, милий Ісусе,
Тебе я терням більш не зраню,
Звию віночок з чудних квіточок,   |
Під святі ноги їх постелю.        | (2)

Прийди до мене, милий Ісусе,
А я Хрест нести Тобі не дам,
Візьму Хрест тяжкий на свої плечі |
І на Голгофу понесу сам.          | (2)

Прийди до мене, милий Ісусе,
Одежі зняти з Тебе не дам.
Не дам зранити, о, милий Боже,    |
Твоїх болючих святих п''ять ран.   | (2)

Прийди до мене, милий Ісусе,
Бо Ти - мій добрий Отець і Пан,
А я не зраджу Тебе як Юда,        |
Я буду вірний, як Йоан.           | (2)

Прийди до мене, милий Ісусе,
Жовчі напитись Тобі не дам,
Я поламаю всі гострі списи,       |
Котрі на Тебе ворог наслав.       | (2)

Прийди до мене, милий Ісусе,
Плакати серцю Твому не дам,
Тебе заслоню від злоби світа,     |
За Тебе, Христе, життя віддам.    | (2)

Прийди до мене, милий Ісусе,
Під видом хліба і вина,
Без пресвятої Євхаристії,         |
Без тебе, Христе, життя нема.     | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3207261_l1','pisniua_3207261','YouTube','https://www.youtube.com/watch?v=XDcDoyeBf74','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3209222';
DELETE FROM song_versions WHERE song_id = 'pisniua_3209222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3209222';
DELETE FROM songs WHERE id = 'pisniua_3209222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3209222','Чорний Ворон','Українська народна пісня. Виконує: Андрій Хавунка','uk','ukraine_before_1917',NULL,NULL,'з відеозапису презентації студентського співаника студбратства ЛНУ','Бурка - це в теорії така шапка.','Бути чи не бути, виживеш чи ні,
Житемеш на волі, а жив у ярмі.
Благослови, мати, сина козака
H7
І наших хлопців з отаманом.

Приспів:
Em
В степу широкім, в чистім полі
Шукав козак кращої долі,
Пробила куля гостра бурку і жупан
Та не здригнувся Чорний Ворон отаман,
Душа козацька - Холодний Яр.

Чорнії жупани, чорнії штики,
На вороних конях їдуть козаки,
Зранені шаблями, стріляні не раз,
Пам''ятає, хлопці, Україна вас!

Приспів.

Ні жалю, ні болю - тільки вітру свист,
Він козацьку славу по світах розніс,
Плаче стара мати, кінь копитом б''є,
А лихії люди ділять не своє.

В степу широкім, в чистім полі
Де не пасуться наші коні,
Де ж тая сила, де шаблюка, де наган?
О, гірко-гірко плакав гордий отаман,
Душа козацька - Холодний Яр!

Хапайтесь, хлопці, за шаблюку, за наган,
І знов воскресне Чорний Ворон отаман,
Душа козацька - Холодний Яр!
Душа козацька - Холодний Яр!','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3209222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3209222','Чорний Ворон','Бути чи не бути, виживеш чи ні,
Житемеш на волі, а жив у ярмі.
Благослови, мати, сина козака
H7
І наших хлопців з отаманом.

Приспів:
Em
В степу широкім, в чистім полі
Шукав козак кращої долі,
Пробила куля гостра бурку і жупан
Та не здригнувся Чорний Ворон отаман,
Душа козацька - Холодний Яр.

Чорнії жупани, чорнії штики,
На вороних конях їдуть козаки,
Зранені шаблями, стріляні не раз,
Пам''ятає, хлопці, Україна вас!

Приспів.

Ні жалю, ні болю - тільки вітру свист,
Він козацьку славу по світах розніс,
Плаче стара мати, кінь копитом б''є,
А лихії люди ділять не своє.

В степу широкім, в чистім полі
Де не пасуться наші коні,
Де ж тая сила, де шаблюка, де наган?
О, гірко-гірко плакав гордий отаман,
Душа козацька - Холодний Яр!

Хапайтесь, хлопці, за шаблюку, за наган,
І знов воскресне Чорний Ворон отаман,
Душа козацька - Холодний Яр!
Душа козацька - Холодний Яр!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3209222_l1','pisniua_3209222','YouTube','https://www.youtube.com/watch?v=8R1Ya3kBCAg','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_320663';
DELETE FROM song_versions WHERE song_id = 'pisniua_320663';
DELETE FROM songs_fts WHERE song_id = 'pisniua_320663';
DELETE FROM songs WHERE id = 'pisniua_320663';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_320663','Люди, як кораблі','Музика: Скрябін Слова: Скрябін. Виконує: Скрябін','uk','ukraine_1991',NULL,NULL,NULL,'Оцініть, будь ласка у форумі "Текстів, нот і..."!! Підбір акордів: Oleg232','Я не твій брат, ти не сестра моя,
D        Am(H7?)
Ніколи не розказуй мені - хто
І в чому я винен на нашій землі,
Люди, як короблі.
Кожен пливе, поки хвиля несе
І поки глибока вода.
Глибока і темна до самого дна.
До самого, самого дна.

На глибині, зустрічаються всі,
Так ніби в морі місця нема,
І труться бортами, аж стогне земля
Від зависті, підлості й зла.
Хтось недоплив, бо йому помогли
Набрати повні трюми води,
Постати героями тої війни.
Дуже стати хотіли вони.

Приспів:
А до берега тихо хвилі несуть
Поранені душі живих короблів.
А від берега знов у море ідуть
Ті, хто віру і правду знати хотів.

Наш океан, знає більше ніж ми,
Секрети всі у нього на дні,
А ми ходим зверху - великі й малі
Люди, як кораблі.
Гордо пливем, і не вірить ніхто,
Що ним зацікавилося зло.
І серед вітрів
Ми не чуєм щурів,
Які прогризають нам дно

Приспів. (2)','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_320663'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_320663','Люди, як кораблі','Я не твій брат, ти не сестра моя,
D        Am(H7?)
Ніколи не розказуй мені - хто
І в чому я винен на нашій землі,
Люди, як короблі.
Кожен пливе, поки хвиля несе
І поки глибока вода.
Глибока і темна до самого дна.
До самого, самого дна.

На глибині, зустрічаються всі,
Так ніби в морі місця нема,
І труться бортами, аж стогне земля
Від зависті, підлості й зла.
Хтось недоплив, бо йому помогли
Набрати повні трюми води,
Постати героями тої війни.
Дуже стати хотіли вони.

Приспів:
А до берега тихо хвилі несуть
Поранені душі живих короблів.
А від берега знов у море ідуть
Ті, хто віру і правду знати хотів.

Наш океан, знає більше ніж ми,
Секрети всі у нього на дні,
А ми ходим зверху - великі й малі
Люди, як кораблі.
Гордо пливем, і не вірить ніхто,
Що ним зацікавилося зло.
І серед вітрів
Ми не чуєм щурів,
Які прогризають нам дно

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_320663_l1','pisniua_320663','YouTube','https://www.youtube.com/watch?v=9RaRDYvTej4','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_320663_l2','pisniua_320663','YouTube','https://www.youtube.com/watch?v=zgsYb112jpI','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_320663_l3','pisniua_320663','YouTube','https://www.youtube.com/watch?v=3Yvmw28Fnik','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_320663_l4','pisniua_320663','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_3214766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3214766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3214766';
DELETE FROM songs WHERE id = 'pisniua_3214766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3214766','Цьомки для мами','(Мамині цьомки). Музика: Сергій Петросян Слова: Анна Канич. Виконує: Андріана Бегай, Ансамбль пісні і танцю "Писанка"','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Хто найбільше любить маму?
Хто її голубить рано?
Квітка, рибка, ясне сонечко,
Я маленька цьомка—донечка.

Приспів:
Цьомки для мами,  |
Цьомки для тата!  |
В пісеньки з нами |
Цьомків багато!   | (2)

Вдома тішуся, співаю,
Бо веселу вдачу маю.
Пташко, киця, ясна зірочка,
Бо я в мами - перепілочка.

Приспів.

Скоро вже доросла стану,
Бо я слухаюся маму.
Лялька, цяця, золота писанка,
Серденятко і колисонька.

Приспів','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3214766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3214766','Цьомки для мами','Хто найбільше любить маму?
Хто її голубить рано?
Квітка, рибка, ясне сонечко,
Я маленька цьомка—донечка.

Приспів:
Цьомки для мами,  |
Цьомки для тата!  |
В пісеньки з нами |
Цьомків багато!   | (2)

Вдома тішуся, співаю,
Бо веселу вдачу маю.
Пташко, киця, ясна зірочка,
Бо я в мами - перепілочка.

Приспів.

Скоро вже доросла стану,
Бо я слухаюся маму.
Лялька, цяця, золота писанка,
Серденятко і колисонька.

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3214766_l1','pisniua_3214766','YouTube','https://www.youtube.com/watch?v=JbR_ctLYMCE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3206525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3206525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3206525';
DELETE FROM songs WHERE id = 'pisniua_3206525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3206525','Ми по таборах і тюрмах','Українська народна пісня. Виконує: Відгомін','uk','ukr_ssr_1919_1991',NULL,NULL,'Записав Юрчишин А. 20.02.2011 р. від учасників хору "Відгомін" під час концерту, м. Львів.',NULL,'Ми по таборах і тюрмах
Карались довгі годи.
За тебе, рідний краю наш,
За тебе, наш народе.

Береза, Лонцке і Сибір
Освєнцим і Бригідки
На страшний суд прийдуть колись
Як достовірні свідки.

І скажуть правду в очі всім,
Хто нас карав без права.
І буде радість замість сліз,
А замість ганьби - слава.
І буде радість замість сліз,
А замість ганьби - слава','[''pisni.org.ua'', ''cat:halycki'', ''cat:istorychni'', ''cat:povstanski'', ''Пісні з Галичини'', ''Історичні пісні'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3206525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3206525','Ми по таборах і тюрмах','Ми по таборах і тюрмах
Карались довгі годи.
За тебе, рідний краю наш,
За тебе, наш народе.

Береза, Лонцке і Сибір
Освєнцим і Бригідки
На страшний суд прийдуть колись
Як достовірні свідки.

І скажуть правду в очі всім,
Хто нас карав без права.
І буде радість замість сліз,
А замість ганьби - слава.
І буде радість замість сліз,
А замість ганьби - слава');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3206525_l1','pisniua_3206525','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3213424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3213424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3213424';
DELETE FROM songs WHERE id = 'pisniua_3213424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3213424','Ах, який директор','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Зранку Ви до ночі в школі,
Не спочинете ніколи.
Знаєте Ви всіх в обличчя,
Ви чарівна і привітна,
Матінка багатодітна
І ця роль Вам дуже личить.

Знає точно кожен з нас,
Що для кожного ти враз
Відшукаєш радості краплинку
Ах, який директор в нас,
Який директор в нас:
Диво - жінка!

Ви - стабільності гарант,
Вашу мудрість і талант
Ми, схиливши голову, шануєм.
Міносвіти зрозуміти,
Делегацію зустріти
Так, що ми того і не відчуєм.

Все це винести сповна
Ви лиш можете одна,
Зрозумійте всі хоч на хвилинку!
Ах, який директор в нас,
Який директор в нас:
Диво - жінка!','[''pisni.org.ua'', ''cat:shkilni'', ''Пісні про школу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3213424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3213424','Ах, який директор','Зранку Ви до ночі в школі,
Не спочинете ніколи.
Знаєте Ви всіх в обличчя,
Ви чарівна і привітна,
Матінка багатодітна
І ця роль Вам дуже личить.

Знає точно кожен з нас,
Що для кожного ти враз
Відшукаєш радості краплинку
Ах, який директор в нас,
Який директор в нас:
Диво - жінка!

Ви - стабільності гарант,
Вашу мудрість і талант
Ми, схиливши голову, шануєм.
Міносвіти зрозуміти,
Делегацію зустріти
Так, що ми того і не відчуєм.

Все це винести сповна
Ви лиш можете одна,
Зрозумійте всі хоч на хвилинку!
Ах, який директор в нас,
Який директор в нас:
Диво - жінка!');
DELETE FROM song_links WHERE song_id = 'pisniua_3209065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3209065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3209065';
DELETE FROM songs WHERE id = 'pisniua_3209065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3209065','Зоряна колискова','Музика: Олександр Іванько Слова: Бобришев. Виконує: Антоніна Овчаренко','uk','ukraine_before_1917',NULL,NULL,'авторське подання',NULL,'Заплутавсь місяць у гілках,
Застиг на мить,
А мо вмостивсь перепочити,
І зазирає у вікно,
Напевне, хоче обігрітись.
Його дивують рушники -
Яка краса,
А ще засмаглі паляниці,
Їх щойно вийняли з печі,
Вони гарячі й темнолиці.

А я холодний і блідий,
Холодний місяць,
Заклятий місяць ледь не плаче,
Ледь-ледь не плаче,
І зазираючи в шибки,
Кляне свою гірку невдачу.

Заходь зігрію, пригощу,
Мерщій заходь -
Господар двері прочиняє,
І диво наш незвичний гість,
У теплу хату поспішає.
Посмакував він пиріжок,
Чудовий смак,
Із самовару випив чаю,
І пропонує дітлахам:
Давайте я Вас погойдаю.

Перетворився на човна,
Перетворився,
І став малечу колисати,
Став колисати,
Недовго він їх забавляв,
Бо скоро всі схотіли спати.

Тож до сестричок зірочок,
Сестер зірок
Подався в небо він поволі,
Світив старанно цілу ніч,
Було, як вдень на сніжнім полі,
Світив всю ніч','[''pisni.org.ua'', ''cat:kolyskovi'', ''Колискові'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3209065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3209065','Зоряна колискова','Заплутавсь місяць у гілках,
Застиг на мить,
А мо вмостивсь перепочити,
І зазирає у вікно,
Напевне, хоче обігрітись.
Його дивують рушники -
Яка краса,
А ще засмаглі паляниці,
Їх щойно вийняли з печі,
Вони гарячі й темнолиці.

А я холодний і блідий,
Холодний місяць,
Заклятий місяць ледь не плаче,
Ледь-ледь не плаче,
І зазираючи в шибки,
Кляне свою гірку невдачу.

Заходь зігрію, пригощу,
Мерщій заходь -
Господар двері прочиняє,
І диво наш незвичний гість,
У теплу хату поспішає.
Посмакував він пиріжок,
Чудовий смак,
Із самовару випив чаю,
І пропонує дітлахам:
Давайте я Вас погойдаю.

Перетворився на човна,
Перетворився,
І став малечу колисати,
Став колисати,
Недовго він їх забавляв,
Бо скоро всі схотіли спати.

Тож до сестричок зірочок,
Сестер зірок
Подався в небо він поволі,
Світив старанно цілу ніч,
Було, як вдень на сніжнім полі,
Світив всю ніч');
DELETE FROM song_links WHERE song_id = 'pisniua_321869';
DELETE FROM song_versions WHERE song_id = 'pisniua_321869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_321869';
DELETE FROM songs WHERE id = 'pisniua_321869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_321869','Діти світла','Музика: Гайтана Слова: Марія Бурмака','uk','ukraine_1991',NULL,NULL,'По па''мяті.',NULL,'Як світлом золотим по воді
Далекими світами
На світло перетвориться тінь
І стане голосами

А вітер невідомих країн
Волосся заплітає
Веде мене далеко куди
Сама не знаю. Знаю

Приспів

Ми діти світла і голосів
Легкі і незнайомі
У лінії зелених полів
У неба на долоні

Де тільки починається день
Де ніч не наступає
Мелодія почується десь
Яку давно я знаю','[''pisni.org.ua'', ''cat:philosophic'', ''Філософські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_321869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_321869','Діти світла','Як світлом золотим по воді
Далекими світами
На світло перетвориться тінь
І стане голосами

А вітер невідомих країн
Волосся заплітає
Веде мене далеко куди
Сама не знаю. Знаю

Приспів

Ми діти світла і голосів
Легкі і незнайомі
У лінії зелених полів
У неба на долоні

Де тільки починається день
Де ніч не наступає
Мелодія почується десь
Яку давно я знаю');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_321869_l1','pisniua_321869','YouTube','https://www.youtube.com/watch?v=i9PSQDMa6go','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3215222';
DELETE FROM song_versions WHERE song_id = 'pisniua_3215222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3215222';
DELETE FROM songs WHERE id = 'pisniua_3215222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3215222','Заповідна стежина','Музика: Євген Заставний Слова: Т. Василько','uk','ukraine_1991',NULL,NULL,'Авторське подання: Т. Василько, Є. Заставний. Танцює дощ. Львів: Ліга-Прес, 2008. - 56 с.',NULL,'Рік за роком цвіте черемшина,
Співом повняться зелен-гаї,
Крок за кроком тасьмою стежина,
Пам''ятаю з дитинства її.

Приспів:
Заповідна стежина,
В небі лет журавля,
Заповідна перлина -
Моя рідна земля!
Заповідну стежину,
Де струмків передзвін,
Заповів мені батько,
Сину я заповім!
Сину я заповім!

Крок за кроком долаю я милі
Наймиліші в моєму житті,
Ось озерце у вербнім намисті,
Тінь русалки в янтарній воді.

Приспів.

Незабутня стежина вмить зрине,
Де квітує черешня стара
І шумить молода яворина,
Яку з батьком садив колись я.

Приспів.

На вибоїнах щедрої долі
Вкрила скроні мої сивина.
Ми відходимо в зоряні далі,
Залишаємо землю синам.

Приспів.','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3215222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3215222','Заповідна стежина','Рік за роком цвіте черемшина,
Співом повняться зелен-гаї,
Крок за кроком тасьмою стежина,
Пам''ятаю з дитинства її.

Приспів:
Заповідна стежина,
В небі лет журавля,
Заповідна перлина -
Моя рідна земля!
Заповідну стежину,
Де струмків передзвін,
Заповів мені батько,
Сину я заповім!
Сину я заповім!

Крок за кроком долаю я милі
Наймиліші в моєму житті,
Ось озерце у вербнім намисті,
Тінь русалки в янтарній воді.

Приспів.

Незабутня стежина вмить зрине,
Де квітує черешня стара
І шумить молода яворина,
Яку з батьком садив колись я.

Приспів.

На вибоїнах щедрої долі
Вкрила скроні мої сивина.
Ми відходимо в зоряні далі,
Залишаємо землю синам.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3211929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3211929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3211929';
DELETE FROM songs WHERE id = 'pisniua_3211929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3211929','Аскольдовий глас','Музика: Сергій Інгленд Слова: Анастасія Попеско. Виконує: Анастасія Попеско','uk','ukraine_1991',NULL,NULL,'VІ фестиваль - конкурс духовної пісні Аскольдів Глас',NULL,'На розлогих Дніпрових схилах
Ми зберемося дружнім колом,
Де Аскольда свята могила,
Де душа не хворіє болем.

Заспіваємо про минуле,
Як в краю нашім гордім жилося.
Серце линути завжди буде
В край без меж золотого колосся.

Нас гостинно стрічає Київ,
Знов каштани запалять свічі.
Золоті купола Софії
І усмішка сія на обличчі.

Ти поглянь у блакитне небо.
На моря, гаї, гори, луки.
Світ не буде таким без тебе,
Ти повинен щасливим бути.','[''pisni.org.ua'', ''cat:istorychni'', ''Історичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3211929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3211929','Аскольдовий глас','На розлогих Дніпрових схилах
Ми зберемося дружнім колом,
Де Аскольда свята могила,
Де душа не хворіє болем.

Заспіваємо про минуле,
Як в краю нашім гордім жилося.
Серце линути завжди буде
В край без меж золотого колосся.

Нас гостинно стрічає Київ,
Знов каштани запалять свічі.
Золоті купола Софії
І усмішка сія на обличчі.

Ти поглянь у блакитне небо.
На моря, гаї, гори, луки.
Світ не буде таким без тебе,
Ти повинен щасливим бути.');
DELETE FROM song_links WHERE song_id = 'pisniua_320962';
DELETE FROM song_versions WHERE song_id = 'pisniua_320962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_320962';
DELETE FROM songs WHERE id = 'pisniua_320962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_320962','Ой Сивая Зозуленька','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'1. Перлини української пісні. - К.: Музична Україна, 1989','Гаїлки-Великдень: Українське свято Відродження Світа. Еротика, жарти, забави: Катерини – Калета – Андрія... Гаїлки-Великдень... Зелені Свята... Івана Купала... Весілля... – Щедровечірнє й Новорічне: Маланки-Василь. Йа всі Луги облітала. Там стала заплакала. Стежки до листків про Українські традиції.','Ой Сивая Зозуленька
Усі Сади облітала,
Усі Сади облітала,
В жодному не кувала.

Прилетіла у Вишнев Садок,
Там сіла, закувала,
Прилетіла у Вишнев Садок,
Там сіла, закувала.

"Ой Саде ж мій, Саде Красний,
Чим я тобі не вгодила?
Чи я ж рано не кувала,
Чи ж Росиці не струшала?"

Молоденька Марусенька
Усі Двори обходила,
Усі Двори обходила,
В жодному не плакала.

А як прийшла під Батьків Двір,
Там стала, заплакала,
А як прийшла під Батьків Двір,
Там стала, заплакала.

"Ой Дворе ж мій, Дворе,
Чим я тобі не вгодила?
Чи ж я рано не вставала,
Чи ж я тебе не змітала?"','[''pisni.org.ua'', ''cat:vesilni'', ''Весільні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_320962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_320962','Ой Сивая Зозуленька','Ой Сивая Зозуленька
Усі Сади облітала,
Усі Сади облітала,
В жодному не кувала.

Прилетіла у Вишнев Садок,
Там сіла, закувала,
Прилетіла у Вишнев Садок,
Там сіла, закувала.

"Ой Саде ж мій, Саде Красний,
Чим я тобі не вгодила?
Чи я ж рано не кувала,
Чи ж Росиці не струшала?"

Молоденька Марусенька
Усі Двори обходила,
Усі Двори обходила,
В жодному не плакала.

А як прийшла під Батьків Двір,
Там стала, заплакала,
А як прийшла під Батьків Двір,
Там стала, заплакала.

"Ой Дворе ж мій, Дворе,
Чим я тобі не вгодила?
Чи ж я рано не вставала,
Чи ж я тебе не змітала?"');
DELETE FROM song_links WHERE song_id = 'pisniua_3215663';
DELETE FROM song_versions WHERE song_id = 'pisniua_3215663';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3215663';
DELETE FROM songs WHERE id = 'pisniua_3215663';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3215663','Чужина (Очі коханої зустрічаю лиш в снах..)','Музика: Теодор Кукуруза Слова: Теодор Кукуруза. Виконує: Теодор Кукуруза','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Чужина... Серце крає сум і жаль,
Чужина... На душі в тебе прикра вуаль.
Тільки тут розумієш вітчизни ціну,      |
Тільки тут щем і болі розлуки збагну.   | (2)

Приспів:
Очі коханої зустрічаю лиш в снах,
В обіймах купаюся, в ніжних руках.
І живу лише мріями, то є зустрічі знов,
Де родинна і вічна незрадлива любов!    | (2)

В чужину простелилася дорога,
В чужині неповторна в серці тривога.
Тільки тут осягаєш вірність кохання,    |
Тільки тут відчуваєш муку чекання.      | (2)

Приспів.

В чужині щось навчуся і знайду,
В чужині я за це свою вдячність складу.
Тільки тут переконливо рідне манить,    |
Тільки тут дух любові так міцно горить! | (2)

Приспів.','[''pisni.org.ua'', ''cat:emigration'', ''Пісні про еміґрацію'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3215663'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3215663','Чужина (Очі коханої зустрічаю лиш в снах..)','Чужина... Серце крає сум і жаль,
Чужина... На душі в тебе прикра вуаль.
Тільки тут розумієш вітчизни ціну,      |
Тільки тут щем і болі розлуки збагну.   | (2)

Приспів:
Очі коханої зустрічаю лиш в снах,
В обіймах купаюся, в ніжних руках.
І живу лише мріями, то є зустрічі знов,
Де родинна і вічна незрадлива любов!    | (2)

В чужину простелилася дорога,
В чужині неповторна в серці тривога.
Тільки тут осягаєш вірність кохання,    |
Тільки тут відчуваєш муку чекання.      | (2)

Приспів.

В чужині щось навчуся і знайду,
В чужині я за це свою вдячність складу.
Тільки тут переконливо рідне манить,    |
Тільки тут дух любові так міцно горить! | (2)

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3223020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3223020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3223020';
DELETE FROM songs WHERE id = 'pisniua_3223020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3223020','Не плач, тату','Музика: Ольга Животкова (Бажана) Слова: Ольга Животкова (Бажана). Виконує: Іван Ганзера','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Хто знає як? Хто скаже,
Де любов в світі живе?
На землю звідки ми приходимо?..
Я знаю як,
Я чую все навколо нас живе,
Як пахне осінь за моїм вікном,
Я знаю кольору якого твої очі,
Мов зимове небо.

Приспів:
Не плач, не плач, не плач,
Не плач, тато,
Я буду, буду, буду,
Буду поруч завжди!
Я знаю, як буває тобі важко.
Не плач, не плач, не плач,
Не плач, тато!
Не плач, не плач, не плач,
Не плач, тато,
Твоє велике серце більше неба,
Ти знай, що я люблю так само -
Я знаю, більшого тобі не треба.

Я розкажу тобі,
Що часом на моїй душі,
Я знаю, тільки ти все розумієш.
Я чую як змиває дощ без вороття роки,
Але для мене ти не посивієш!
Я знаю кольору якого твої очі,
Мов зимове небо.

Приспів. (2)

Ти знай, що більшого мені не треба!..','[''pisni.org.ua'', ''cat:pro-batkiv'', ''Пісні про любов до батьків'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3223020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3223020','Не плач, тату','Хто знає як? Хто скаже,
Де любов в світі живе?
На землю звідки ми приходимо?..
Я знаю як,
Я чую все навколо нас живе,
Як пахне осінь за моїм вікном,
Я знаю кольору якого твої очі,
Мов зимове небо.

Приспів:
Не плач, не плач, не плач,
Не плач, тато,
Я буду, буду, буду,
Буду поруч завжди!
Я знаю, як буває тобі важко.
Не плач, не плач, не плач,
Не плач, тато!
Не плач, не плач, не плач,
Не плач, тато,
Твоє велике серце більше неба,
Ти знай, що я люблю так само -
Я знаю, більшого тобі не треба.

Я розкажу тобі,
Що часом на моїй душі,
Я знаю, тільки ти все розумієш.
Я чую як змиває дощ без вороття роки,
Але для мене ти не посивієш!
Я знаю кольору якого твої очі,
Мов зимове небо.

Приспів. (2)

Ти знай, що більшого мені не треба!..');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3223020_l1','pisniua_3223020','YouTube','https://www.youtube.com/watch?v=J6IHSusf0EA','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3223020_l2','pisniua_3223020','YouTube','https://www.youtube.com/watch?v=eXiyLvzzbFs','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3221222';
DELETE FROM song_versions WHERE song_id = 'pisniua_3221222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3221222';
DELETE FROM songs WHERE id = 'pisniua_3221222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3221222','Наша Січ-Мати','Слова: А. Мицько','uk','ukraine_1991',NULL,NULL,'співаник Лісової Школи',NULL,'Школа Лісова, гордість пластовая,
Нам, юнакам, то Січ-Мати,
Ми молодії, хлопці лісовії,
З вітром йдемо мандрувати!

Нам не страшная праця важкая,
Сміло у лави ставаймо,
Ми молодії, хлопці лісовії,
Тіло і дух заправляймо!

Поведем табори у скелясті гори,
Вовча тропа нам відкрита,
Ми молодії, хлопці лісовії,
Гей помандруєм край світа!

Школа Лісовая, гордість пластовая,
Шляхом повстанським ідемо,
Ми молодії, хлопці лісовії,
Для України живемо!','[''pisni.org.ua'', ''cat:himny-marshi'', ''cat:plastovi'', ''Гимни та марші'', ''Пластові пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3221222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3221222','Наша Січ-Мати','Школа Лісова, гордість пластовая,
Нам, юнакам, то Січ-Мати,
Ми молодії, хлопці лісовії,
З вітром йдемо мандрувати!

Нам не страшная праця важкая,
Сміло у лави ставаймо,
Ми молодії, хлопці лісовії,
Тіло і дух заправляймо!

Поведем табори у скелясті гори,
Вовча тропа нам відкрита,
Ми молодії, хлопці лісовії,
Гей помандруєм край світа!

Школа Лісовая, гордість пластовая,
Шляхом повстанським ідемо,
Ми молодії, хлопці лісовії,
Для України живемо!');
DELETE FROM song_links WHERE song_id = 'pisniua_3219560';
DELETE FROM song_versions WHERE song_id = 'pisniua_3219560';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3219560';
DELETE FROM songs WHERE id = 'pisniua_3219560';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3219560','Моя родина','Музика: Микола Янченко Слова: Микола Янченко. Виконує: Микола Янченко','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Ми повертаємось додому,
Ми повертаємось додому,
Де нас завжди стрічала мати
Край воріт,
До болю рідна і знайома,
Старенька груша зніме втому,
Що назбиралася за стільки
Довгих літ...
І ще й не осінь, вже й не літо,
І ще й не осінь, вже й не літо,
В саду вишневім жовтіє перший лист.
І наш вогонь не загасити,             |
Співають з нами наші діти,            |
І рідна знов радіє, як колись!        | (2)

Приспів:
Давай, родино, нашу пісню заспіваєм,
Її куми любили наші і батьки,
Нехай летить, нехай вона лунає
Крізь зорепад, крізь дні минулі і роки!

Покличе знову нас дорога,
Покличе знову нас дорога,
Щоб заблудитись в самоті тривожних днів.
І кожен день я прошу Бога,            |
Щоб чорна хмара і тривога             |
Минала всіх нас, наших дочок і синів. | (2)

Приспів. (3)','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3219560'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3219560','Моя родина','Ми повертаємось додому,
Ми повертаємось додому,
Де нас завжди стрічала мати
Край воріт,
До болю рідна і знайома,
Старенька груша зніме втому,
Що назбиралася за стільки
Довгих літ...
І ще й не осінь, вже й не літо,
І ще й не осінь, вже й не літо,
В саду вишневім жовтіє перший лист.
І наш вогонь не загасити,             |
Співають з нами наші діти,            |
І рідна знов радіє, як колись!        | (2)

Приспів:
Давай, родино, нашу пісню заспіваєм,
Її куми любили наші і батьки,
Нехай летить, нехай вона лунає
Крізь зорепад, крізь дні минулі і роки!

Покличе знову нас дорога,
Покличе знову нас дорога,
Щоб заблудитись в самоті тривожних днів.
І кожен день я прошу Бога,            |
Щоб чорна хмара і тривога             |
Минала всіх нас, наших дочок і синів. | (2)

Приспів. (3)');
DELETE FROM song_links WHERE song_id = 'pisniua_3232467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3232467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3232467';
DELETE FROM songs WHERE id = 'pisniua_3232467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3232467','Гімн Євро-2012!','Слова: Микола Джумак','uk','ukraine_1991',NULL,'2012','авторське подання',NULL,'Вітчизна в кожного своя,
Європи ж ми - одна сім''я!
Єднає нам футбол серця
І мирне всім несе життя!

Приспів:
Злітає м''яч над стадіоном!
Трибуни хор скандує: "Гол!"
Сильніший стане чемпіоном
Та програш теж дарує честь!
Команди із Європи родом
Зіграють свій суперфутбол!
Фортуна жде у центрі поля,
Футбол для нас - життя і доля!

Народів ми своїх сини
І волі доброї посли!
Ми з честю крізь віки несли
Футболу міць і мить краси!

Приспів.

Кордони час й війна звели!
Футболу ж дні їх всі змели!
І кожен гол Земля віта!
Для спорту всіх - границь нема!','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3232467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3232467','Гімн Євро-2012!','Вітчизна в кожного своя,
Європи ж ми - одна сім''я!
Єднає нам футбол серця
І мирне всім несе життя!

Приспів:
Злітає м''яч над стадіоном!
Трибуни хор скандує: "Гол!"
Сильніший стане чемпіоном
Та програш теж дарує честь!
Команди із Європи родом
Зіграють свій суперфутбол!
Фортуна жде у центрі поля,
Футбол для нас - життя і доля!

Народів ми своїх сини
І волі доброї посли!
Ми з честю крізь віки несли
Футболу міць і мить краси!

Приспів.

Кордони час й війна звели!
Футболу ж дні їх всі змели!
І кожен гол Земля віта!
Для спорту всіх - границь нема!');
DELETE FROM song_links WHERE song_id = 'pisniua_322929';
DELETE FROM song_versions WHERE song_id = 'pisniua_322929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_322929';
DELETE FROM songs WHERE id = 'pisniua_322929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_322929','На цвинтарі тихім','(Який файний світ)','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'На цвинтарі тихім небіжчики сплять,
Лиш вітер травою хитає.
Небіжчик Павло і небіжчик Василь
Тихесенько пісню співають.

Приспів:
О, Боже, який файний світ,
Як тяжко його покидати,
Там цідять горілку, там цідять вино,
І пивом дають запивати.

Десь рипнули двері, десь гримнув костур,
Відкрилася з краю могила.
Небіжчик Павло і небіжчик Василь
Вже випили пляшку чорнила.

Приспів.

Небіжка Варвара побігла в буфет
І взяла там хліба і сала.
Для кума Павла вона взяла вина,
Горілки Гаврилові взяла.

Приспів.

Як випили всі вони тії чари,
Ой, скільки ж то було там сміху:
Скелети гриміли, кричали, ревли -
Доходило навіть до гріху.

Приспів.

На ранок картина було ось яка:
Костур Василя поламався,
Гаврило Павла відтягнув від труни,
А сам із Варваров зостався.

Приспів.','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_322929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_322929','На цвинтарі тихім','На цвинтарі тихім небіжчики сплять,
Лиш вітер травою хитає.
Небіжчик Павло і небіжчик Василь
Тихесенько пісню співають.

Приспів:
О, Боже, який файний світ,
Як тяжко його покидати,
Там цідять горілку, там цідять вино,
І пивом дають запивати.

Десь рипнули двері, десь гримнув костур,
Відкрилася з краю могила.
Небіжчик Павло і небіжчик Василь
Вже випили пляшку чорнила.

Приспів.

Небіжка Варвара побігла в буфет
І взяла там хліба і сала.
Для кума Павла вона взяла вина,
Горілки Гаврилові взяла.

Приспів.

Як випили всі вони тії чари,
Ой, скільки ж то було там сміху:
Скелети гриміли, кричали, ревли -
Доходило навіть до гріху.

Приспів.

На ранок картина було ось яка:
Костур Василя поламався,
Гаврило Павла відтягнув від труни,
А сам із Варваров зостався.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_322929_l1','pisniua_322929','YouTube','https://www.youtube.com/watch?v=6QKcdBqy9Og','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_322929_l2','pisniua_322929','YouTube','https://www.youtube.com/watch?v=R7hxA-1jyxk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_322929_l3','pisniua_322929','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3219424';
DELETE FROM song_versions WHERE song_id = 'pisniua_3219424';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3219424';
DELETE FROM songs WHERE id = 'pisniua_3219424';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3219424','Поглянь, яка зима','Музика: Микола Янченко Слова: Микола Янченко. Виконує: Микола Янченко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Білим снігом все довкола замело,
Заблукали коні, не знайдуть дороги,
Вже давно зими такої не було,
Мерзнуть щоки, мерзнуть руки,
Мерзнуть ноги.

Приспів:
Кума, моя кума,
Поглянь, яка зима,
Не дай пропасти
Кумові в дорозі!
Бо ти ж - моя рідня,
Я не прошу щодня,
Налий вина,
Бо згину на морозі!

Було літо, щебетали солов''ї,
Сонце в росах цілувало ранні квіти,
А тепер замерзли рученьки мої -
Не сховати, не відтерти,
Не зігріти.

Приспів.

В тебе добре серце і така ж душа,
Не дасиш пропасти у лиху негоду,
Як народиться від сірої лоша -
Твоїм іменем, кумасю, звати буду!

Приспів. (2)','[''pisni.org.ua'', ''cat:zhartivlyvi'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3219424'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3219424','Поглянь, яка зима','Білим снігом все довкола замело,
Заблукали коні, не знайдуть дороги,
Вже давно зими такої не було,
Мерзнуть щоки, мерзнуть руки,
Мерзнуть ноги.

Приспів:
Кума, моя кума,
Поглянь, яка зима,
Не дай пропасти
Кумові в дорозі!
Бо ти ж - моя рідня,
Я не прошу щодня,
Налий вина,
Бо згину на морозі!

Було літо, щебетали солов''ї,
Сонце в росах цілувало ранні квіти,
А тепер замерзли рученьки мої -
Не сховати, не відтерти,
Не зігріти.

Приспів.

В тебе добре серце і така ж душа,
Не дасиш пропасти у лиху негоду,
Як народиться від сірої лоша -
Твоїм іменем, кумасю, звати буду!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_322626';
DELETE FROM song_versions WHERE song_id = 'pisniua_322626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_322626';
DELETE FROM songs WHERE id = 'pisniua_322626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_322626','Ой верше, мій верше','Українська народна пісня. Виконує: Квітка Цісик','uk','ukraine_before_1917',NULL,NULL,'Аудіо-альбом "Квітка. "Два кольори"',NULL,'Ой верше, мій верше,
Мій зелений верше.
Уж мі так не буде,    |
Уж мі так не буде,    | (2)
Як... як било перше.  |

Бо перше мі било,
Барз мі добре било.
Од своєй мамички,     |
Од своєй мамички,     | (2)
Не ходити било.       |

Не ходити било,
Куди я ходила.
Не любити било,       |
Не любити било,       | (2)
Кого я любила.        |

Не ходити било
Горами, стежками.
Не любити хлопця      |
Не любити хлопця      | (2)
З чорними бровами.    |

Верше... Мій верше','[''pisni.org.ua'', ''cat:lemkivski'', ''cat:lirychni'', ''cat:narodni'', ''Лемківські пісні'', ''Пісні про кохання, ліричні'', ''Народні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_322626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_322626','Ой верше, мій верше','Ой верше, мій верше,
Мій зелений верше.
Уж мі так не буде,    |
Уж мі так не буде,    | (2)
Як... як било перше.  |

Бо перше мі било,
Барз мі добре било.
Од своєй мамички,     |
Од своєй мамички,     | (2)
Не ходити било.       |

Не ходити било,
Куди я ходила.
Не любити било,       |
Не любити било,       | (2)
Кого я любила.        |

Не ходити било
Горами, стежками.
Не любити хлопця      |
Не любити хлопця      | (2)
З чорними бровами.    |

Верше... Мій верше');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_322626_l1','pisniua_322626','YouTube','https://www.youtube.com/watch?v=hG0OqiO4GFM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_322626_l2','pisniua_322626','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_32222';
DELETE FROM song_versions WHERE song_id = 'pisniua_32222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_32222';
DELETE FROM songs WHERE id = 'pisniua_32222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_32222','За нашов стодолов','Українська народна пісня. Виконує: Гайдамаки','uk','ukraine_before_1917',NULL,NULL,'Співаник для таборів Марійської Дружини',NULL,'F
За нашов стодолов
Видно чуже село,
Сюди подивлюся, туди подивлюся,
Видно чуже село.

Мамцю ж моя, мамцю,
За кого мя даєш,
Він ня буде бити, не буде любити,
Що ти си гадаєш.

Віддай мене, мамцю,
За кого я хочу,
Хоч ня буде бити, не буде любити,
Нікому не скажу.

Віддала мя мамця,
За кого я хтіла.
Шуміла нагайка,       | (2)
Коло мого тіла.

Шуміла нагайка,
Ще й ся звивала,
Біле тіло почорніло,  | (2)
Мати це не взнала.','[''pisni.org.ua'', ''cat:dances'', ''cat:polky'', ''Пісні до танцю'', ''Польки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_32222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_32222','За нашов стодолов','F
За нашов стодолов
Видно чуже село,
Сюди подивлюся, туди подивлюся,
Видно чуже село.

Мамцю ж моя, мамцю,
За кого мя даєш,
Він ня буде бити, не буде любити,
Що ти си гадаєш.

Віддай мене, мамцю,
За кого я хочу,
Хоч ня буде бити, не буде любити,
Нікому не скажу.

Віддала мя мамця,
За кого я хтіла.
Шуміла нагайка,       | (2)
Коло мого тіла.

Шуміла нагайка,
Ще й ся звивала,
Біле тіло почорніло,  | (2)
Мати це не взнала.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_32222_l1','pisniua_32222','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3217626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3217626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3217626';
DELETE FROM songs WHERE id = 'pisniua_3217626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3217626','Крізь роки і віки','Музика: Р. Олексієнко Слова: Є. Грищенко','uk','ukraine_1991',NULL,NULL,'http://uk.wikipedia.org',NULL,'Крізь роки і віки
Шлях проліг нелегкий
Для древлянського гордого міста.
Та світили зірки,
Бігли води ріки,
Щоб майбутнє наповнити змістом!

Приспів:
Там, де річка Ірша, там, де сосни й дуби
Землю й небо єднають у сплаві,
Рідний Малин, крилато стояти тобі
Тут на славу вкраїнській державі!

До пори дмуть вітри
І вогонь злий горить,
Тільки духу вони не зламали.
Не злякать, не скорить,
Бо щоб жить і творить
Був покладений рідний наш Малин!

Приспів.

Молодий він завжди,
Як у травні сади,
Як співуча моя Україна.
Нам його берегти,
З ним в майбутнє іти,
Всім на гордість плекаючи зміну!

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3217626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3217626','Крізь роки і віки','Крізь роки і віки
Шлях проліг нелегкий
Для древлянського гордого міста.
Та світили зірки,
Бігли води ріки,
Щоб майбутнє наповнити змістом!

Приспів:
Там, де річка Ірша, там, де сосни й дуби
Землю й небо єднають у сплаві,
Рідний Малин, крилато стояти тобі
Тут на славу вкраїнській державі!

До пори дмуть вітри
І вогонь злий горить,
Тільки духу вони не зламали.
Не злякать, не скорить,
Бо щоб жить і творить
Був покладений рідний наш Малин!

Приспів.

Молодий він завжди,
Як у травні сади,
Як співуча моя Україна.
Нам його берегти,
З ним в майбутнє іти,
Всім на гордість плекаючи зміну!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3233222';
DELETE FROM song_versions WHERE song_id = 'pisniua_3233222';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3233222';
DELETE FROM songs WHERE id = 'pisniua_3233222';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3233222','Дзвони колядки','Музика: О. Опанасюк Слова: В. Умнов. Виконує: Діана Глухова','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Свят є багато, різні є свята
На українській щирій землі,
Але це свято жде кожна хата,
Всі ми чекаєм, старші й малі.

Приспів:
Дзвони колядки, гомін щедрівки
І віншування на майбуття,
Мамо і татку, друзі рідненькі, |
Славити нумо Боже дитя!        | (2)

Чиста молитва, радість чекання,
Й пахощі літа в ложці куті,
Бог нам дарує дивне єднання
В ніч, коли всі ми, наче святі.

Приспів.

Дні празникові, швидше приплиньте,
Вже заплітає вуса дідух,
Щоб засміялась знову ялинка,
Щедро пшеничку висієм з рук!

Приспів.

Боже дитя!','[''pisni.org.ua'', ''cat:kolyadky'', ''cat:shchedrivky'', ''cat:suchasni-pisni-rizdvo'', ''Колядки'', ''Щедрівки'', ''Сучасні пісні про Різдвяні свята'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3233222'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3233222','Дзвони колядки','Свят є багато, різні є свята
На українській щирій землі,
Але це свято жде кожна хата,
Всі ми чекаєм, старші й малі.

Приспів:
Дзвони колядки, гомін щедрівки
І віншування на майбуття,
Мамо і татку, друзі рідненькі, |
Славити нумо Боже дитя!        | (2)

Чиста молитва, радість чекання,
Й пахощі літа в ложці куті,
Бог нам дарує дивне єднання
В ніч, коли всі ми, наче святі.

Приспів.

Дні празникові, швидше приплиньте,
Вже заплітає вуса дідух,
Щоб засміялась знову ялинка,
Щедро пшеничку висієм з рук!

Приспів.

Боже дитя!');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3233222_l1','pisniua_3233222','YouTube','https://www.youtube.com/watch?v=rFkqsuTvHbk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3233364';
DELETE FROM song_versions WHERE song_id = 'pisniua_3233364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3233364';
DELETE FROM songs WHERE id = 'pisniua_3233364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3233364','По вьому світу стала новина','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'По всьому світу стала новина
Разу одного.
Ой, ходім ходім та й привітаймо      |
Царя нового!                         | (2)

В неділю рано, до сходу сонця
Три царі ідуть,
Ой, несуть вони аж три корони,       |
Пред Богом кладуть.                  | (2)

А як дізнався Ірод проклятий
О сему меті,
Сказав рубати маленьких діток        |
По всьому світі.                     | (2)

Йосип старенький, Божая мати
Сеє почули,
Через Русалим аж до Єгипту           |
З дитям тікали.                      | (2)

Ішли полями, ішли лісами,
Хлоп пшеницю сіяв,
Ой, сій же, сій же, хлопче, пшеницю, |
Завтра будеш жать.                   | (2)

Ой, сій же, сій же, хлопче, пшеницю,
Завтра будеш жать,
Як буде їхать Ірод проклятий,        |
Щоб знав що сказать.                 | (2)

Минула нічка, настав день,
Білий хлоп пшеницю жне,
Ой, їде-їде Ірод проклятий           |
З вогненним мечем.                   | (2)

Добрий день, хлопче, добрий день, хлопче,
Пшеницю жнучи,
Ой, чи не бачив якої дєви            |
З дитям ідучи?                       | (2)

Ой, бачив, пане, ой, бачив, царю,
Пшеницю сіяв,
Бодай би тобі кат голову зняв,       |
Чом ти не сказав?                    | (2)

"Минула зима, настало літо,
Хлоп пшеницю жне,
Вертаймось браття, вертаймось назад, |
Вже й не доженем."                   | (2)','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3233364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3233364','По вьому світу стала новина','По всьому світу стала новина
Разу одного.
Ой, ходім ходім та й привітаймо      |
Царя нового!                         | (2)

В неділю рано, до сходу сонця
Три царі ідуть,
Ой, несуть вони аж три корони,       |
Пред Богом кладуть.                  | (2)

А як дізнався Ірод проклятий
О сему меті,
Сказав рубати маленьких діток        |
По всьому світі.                     | (2)

Йосип старенький, Божая мати
Сеє почули,
Через Русалим аж до Єгипту           |
З дитям тікали.                      | (2)

Ішли полями, ішли лісами,
Хлоп пшеницю сіяв,
Ой, сій же, сій же, хлопче, пшеницю, |
Завтра будеш жать.                   | (2)

Ой, сій же, сій же, хлопче, пшеницю,
Завтра будеш жать,
Як буде їхать Ірод проклятий,        |
Щоб знав що сказать.                 | (2)

Минула нічка, настав день,
Білий хлоп пшеницю жне,
Ой, їде-їде Ірод проклятий           |
З вогненним мечем.                   | (2)

Добрий день, хлопче, добрий день, хлопче,
Пшеницю жнучи,
Ой, чи не бачив якої дєви            |
З дитям ідучи?                       | (2)

Ой, бачив, пане, ой, бачив, царю,
Пшеницю сіяв,
Бодай би тобі кат голову зняв,       |
Чом ти не сказав?                    | (2)

"Минула зима, настало літо,
Хлоп пшеницю жне,
Вертаймось браття, вертаймось назад, |
Вже й не доженем."                   | (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_3231869';
DELETE FROM song_versions WHERE song_id = 'pisniua_3231869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3231869';
DELETE FROM songs WHERE id = 'pisniua_3231869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3231869','Осінь Чарівниця','Музика: Іван Лабач Слова: Таня Барбанова, Юля Барбанова. Виконує: ЮліТан','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Вже до нас у гості, завітала осінь,
Щедрим урожаєм всіх вона вітає,
Осінню щасливі йдуть до школи діти,
І птахи зібрались в теплий край летіти.

Приспів:
Осінь, Чарівнице, любим ми тебе,
Бо даруєш осінь, все нам золоте.
Яблука і груші, сливи й виноград -
Це солодка радість для усіх малят.

І у кожній хаті всі чекають осінь.
Бо вона смачненькі нам плоди приносить,
І врожай дарують нам поля й сади,
В лісі виростають ягоди, гриби.

Приспів.

Осінь, нам казку, всім подарувала,
І дерева гарно, всі розмалювала.
І осінні перші йдуть уже дощі.
І помітні зміни на усій землі.

Приспів.','[''pisni.org.ua'', ''cat:krasa-pryrody'', ''Пісні про красу природи'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3231869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3231869','Осінь Чарівниця','Вже до нас у гості, завітала осінь,
Щедрим урожаєм всіх вона вітає,
Осінню щасливі йдуть до школи діти,
І птахи зібрались в теплий край летіти.

Приспів:
Осінь, Чарівнице, любим ми тебе,
Бо даруєш осінь, все нам золоте.
Яблука і груші, сливи й виноград -
Це солодка радість для усіх малят.

І у кожній хаті всі чекають осінь.
Бо вона смачненькі нам плоди приносить,
І врожай дарують нам поля й сади,
В лісі виростають ягоди, гриби.

Приспів.

Осінь, нам казку, всім подарувала,
І дерева гарно, всі розмалювала.
І осінні перші йдуть уже дощі.
І помітні зміни на усій землі.

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_3231121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3231121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3231121';
DELETE FROM songs WHERE id = 'pisniua_3231121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3231121','Пісня про Миколая','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,'з уст дітей',NULL,'Ой, прийшла зима в танок,
Вітром дунула в ріжок,
Заплела узори нам на вікнах,
Зве ялинку до двора,
Щоб раділа дітвора.
Стеле синє полотно на ріках.
Ой, зима, ти білочола,
Білі пера, білі грона,
З Новим роком, вся родино,
З Новим роком, Україно!

Приспів:
Грона білі празникові,
Нам несе зима безкрайня,
А ще пряники медові
Від Святого Миколая.
Ой, щедрик-щедрик,       |
Вже приходить Новий рік, |
Святий Миколай,          |
Всіх дітей оберігай!     | (2)

Ген хурделиця гуде,
Многі літа в дім веде,
Всюди білі-білі оксамити.
Тільки полум''я тканин,
Та заграви горобин,
Та червоні снігурі, мов квіти.
Ой, зима, ти білочола,
Білі пера, білі грона,
Ждуть колядників різдвяних,
Подарунки, повні сани.

Приспів.

Їдуть гості звідусіль,
Гра на скрипці заметіль,
В білі сукні вбрала ліс і лози.
Місяць дивні їв коржі
В кришталевій, ох, діжі,
Наливає в келихи морози.
Ой, зима, ти білочола,
Білі пера, білі грона,
Дід Мороз сніжинки меле,
З новим щастям, рідна земле.

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3231121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3231121','Пісня про Миколая','Ой, прийшла зима в танок,
Вітром дунула в ріжок,
Заплела узори нам на вікнах,
Зве ялинку до двора,
Щоб раділа дітвора.
Стеле синє полотно на ріках.
Ой, зима, ти білочола,
Білі пера, білі грона,
З Новим роком, вся родино,
З Новим роком, Україно!

Приспів:
Грона білі празникові,
Нам несе зима безкрайня,
А ще пряники медові
Від Святого Миколая.
Ой, щедрик-щедрик,       |
Вже приходить Новий рік, |
Святий Миколай,          |
Всіх дітей оберігай!     | (2)

Ген хурделиця гуде,
Многі літа в дім веде,
Всюди білі-білі оксамити.
Тільки полум''я тканин,
Та заграви горобин,
Та червоні снігурі, мов квіти.
Ой, зима, ти білочола,
Білі пера, білі грона,
Ждуть колядників різдвяних,
Подарунки, повні сани.

Приспів.

Їдуть гості звідусіль,
Гра на скрипці заметіль,
В білі сукні вбрала ліс і лози.
Місяць дивні їв коржі
В кришталевій, ох, діжі,
Наливає в келихи морози.
Ой, зима, ти білочола,
Білі пера, білі грона,
Дід Мороз сніжинки меле,
З новим щастям, рідна земле.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3231121_l1','pisniua_3231121','YouTube','https://www.youtube.com/watch?v=tnR2yJk7ppU','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3234121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3234121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3234121';
DELETE FROM songs WHERE id = 'pisniua_3234121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3234121','Слобожанська похідна','(Слобожанська Україна). Музика: Борис Ждан Слова: Микола Ковальов. Виконує: Княжичі','uk','ukraine_before_1917',NULL,NULL,'Аудіозапис','Похідна пісня слобожанських козацьких полків, відома теж під назвами "Слобожанська Україна" та "Серед степу в дикім полі". Патріотичні пісні. Пісні Слобожанщини. Слобідська Україна охоплює Харківщину, південну Сумщину, Старобільщину (північну Луганщину), Білгородщину (Ровеньки, Гайворон), та Острогожчину (східно-південна полоса Воронезької обл. - землі на захід від ріки Дон). Слобожанщина колонізувалась протягом 17-18 століття козаками та селянами з правобережної та лівобережної України.','Серед степу в дикім полі,
Шукав козак свою долю,
Вірний кінь та гостра шабля -
Вся його рідня.
І татари геть тікали,
Як козацькі тримби грали,
Як сідлали козаченьки
Доброго коня.

Приспів:
Гей! Чисте поле, як те море, - |
Козакові рай!                  |
Слобожанська Україно -         |
Степовий наш край!             | (2)

А на боці шабля дзенька,
Нехай знають вороженьки,
Що на гасла отаманів
Встане Слобода!
Встануть всі, хто має силу
Боронити Україну,
Вище голову, козаче!
Хай горе - не біда!

Приспів.

Слава Україні!
Слава! Слава! Слава!
Де Айдару води сиві
Тихо плещуть і по-нині,
Дике поле, степ широкий,
Рідна сторона.
Щедро родить земляненька,
Слобожанських козаченьків,
І лунає в степу пісня,
Славна похідна!

Приспів. (2)','[''pisni.org.ua'', ''cat:kozacki'', ''cat:slobozhanski'', ''Козацькі пісні'', ''Пісні з слобожанщини'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3234121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3234121','Слобожанська похідна','Серед степу в дикім полі,
Шукав козак свою долю,
Вірний кінь та гостра шабля -
Вся його рідня.
І татари геть тікали,
Як козацькі тримби грали,
Як сідлали козаченьки
Доброго коня.

Приспів:
Гей! Чисте поле, як те море, - |
Козакові рай!                  |
Слобожанська Україно -         |
Степовий наш край!             | (2)

А на боці шабля дзенька,
Нехай знають вороженьки,
Що на гасла отаманів
Встане Слобода!
Встануть всі, хто має силу
Боронити Україну,
Вище голову, козаче!
Хай горе - не біда!

Приспів.

Слава Україні!
Слава! Слава! Слава!
Де Айдару води сиві
Тихо плещуть і по-нині,
Дике поле, степ широкий,
Рідна сторона.
Щедро родить земляненька,
Слобожанських козаченьків,
І лунає в степу пісня,
Славна похідна!

Приспів. (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3234121_l1','pisniua_3234121','YouTube','https://www.youtube.com/watch?v=cfvCHPrhaeE','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3234121_l2','pisniua_3234121','YouTube','https://www.youtube.com/watch?v=8tb6x48rs7I','video',NULL,2);
DELETE FROM song_links WHERE song_id = 'pisniua_3230525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3230525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3230525';
DELETE FROM songs WHERE id = 'pisniua_3230525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3230525','В ніч на Купала','Музика: Андрій Мочурад Слова: Андрій Мочурад','uk','ukraine_before_1917',NULL,NULL,'авторське подання',NULL,'Любисток, м''ята, трохи полину -
Плетуть дівчата чарівне зілля.
Вінки пускали, ватру палили,
Долю шукали, в ніч на Купала.

Ой, ти дівчино, моя лебідко,
Не бійся ночі, пташко тендітна.
В танок ставали, брали у пару,
Пісень співали, в ніч на Купала.

Вік не забуду п''янкі обійми -
Кохати буду, навіки твій я!
Причарувала, поцілувала,
Душу узяла в ніч на Купала!

Папороть квітла, билось сердечко,
Візьми за руку мене, лелечко.
Нічку не спали, лічили зорі,
Сонце стрічали в ніч на Купала!..','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3230525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3230525','В ніч на Купала','Любисток, м''ята, трохи полину -
Плетуть дівчата чарівне зілля.
Вінки пускали, ватру палили,
Долю шукали, в ніч на Купала.

Ой, ти дівчино, моя лебідко,
Не бійся ночі, пташко тендітна.
В танок ставали, брали у пару,
Пісень співали, в ніч на Купала.

Вік не забуду п''янкі обійми -
Кохати буду, навіки твій я!
Причарувала, поцілувала,
Душу узяла в ніч на Купала!

Папороть квітла, билось сердечко,
Візьми за руку мене, лелечко.
Нічку не спали, лічили зорі,
Сонце стрічали в ніч на Купала!..');
DELETE FROM song_links WHERE song_id = 'pisniua_3236065';
DELETE FROM song_versions WHERE song_id = 'pisniua_3236065';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3236065';
DELETE FROM songs WHERE id = 'pisniua_3236065';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3236065','Я люблю у лузі квіти','Музика: Гульнара Азаматова-Бас Слова: Ганна Чубач','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Я люблю у лузі квіти,
Де гудуть весь день джмелі
І метелик носить літо
На легенькому крилі.

Приспів:
У долині теплий вітер
Сушить трави від роси,
Я кажу: усе на світі
Починається з краси!
Я кажу: усе на світі
Починається з краси!
Ось така красуня - моя Земля!

Гріє сонечко гаряче
Чисте дзеркало води
І зелений коник скаче
Сам не відає куди.

Приспів.

Буду сонечком радіти,
Землю скривдити не дам,
Буду світ увесь любити
І рости на радість вам.

Приспів.','[''pisni.org.ua'', ''cat:dytyachi'', ''Дитячі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3236065'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3236065','Я люблю у лузі квіти','Я люблю у лузі квіти,
Де гудуть весь день джмелі
І метелик носить літо
На легенькому крилі.

Приспів:
У долині теплий вітер
Сушить трави від роси,
Я кажу: усе на світі
Починається з краси!
Я кажу: усе на світі
Починається з краси!
Ось така красуня - моя Земля!

Гріє сонечко гаряче
Чисте дзеркало води
І зелений коник скаче
Сам не відає куди.

Приспів.

Буду сонечком радіти,
Землю скривдити не дам,
Буду світ увесь любити
І рости на радість вам.

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3236065_l1','pisniua_3236065','YouTube','https://www.youtube.com/watch?v=j0CqIBkoQxM','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3241766';
DELETE FROM song_versions WHERE song_id = 'pisniua_3241766';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3241766';
DELETE FROM songs WHERE id = 'pisniua_3241766';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3241766','Послухай, ти люба дівчино','Українська народна пісня','uk','ukr_ssr_1919_1991',NULL,NULL,'Народні переспіви',NULL,'Послухай, ти люба дівчино,
Цю пісню, що я ти скажу,
Давно я закоханий в серці
Несміло думки ці зношу.

Коли Україна здригнеться
І ворог нам видасть війну
Ми сядем обоє на коні
І я тя не лишу саму.

Ти будеш патрони носити,
Щоб ворога скорше убить,
Ворожая куля підкосить -
Ти мусиш мене схоронить.

А як затихнуть гармати,
Ти мусиш мене відшукать,
Могилу мою уквітчати,
Щоб легше було у ній спать.

А як я зляжу в могилу,
Ти будеш весела й сумна,
Ті роки ти згадувать будеш,
Коли ти зі мною була.

Спіши ти, дівча, віддаватись
За тих наших славних борців.
Шинелі ти їх не цурайся,
То серце гаряче для всіх.

Краса твоя пишна зв''яне,
Ти станеш бабуся стара
І стан твій високий, мов явір,
Зігнеться неначе дуга.

А нишком підслухалась мати,
Підслухала нашу любов,
Забрала дівчину до хати...
Зробила розлуку зі мнов...','[''pisni.org.ua'', ''cat:povstanski'', ''Повстанські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3241766'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3241766','Послухай, ти люба дівчино','Послухай, ти люба дівчино,
Цю пісню, що я ти скажу,
Давно я закоханий в серці
Несміло думки ці зношу.

Коли Україна здригнеться
І ворог нам видасть війну
Ми сядем обоє на коні
І я тя не лишу саму.

Ти будеш патрони носити,
Щоб ворога скорше убить,
Ворожая куля підкосить -
Ти мусиш мене схоронить.

А як затихнуть гармати,
Ти мусиш мене відшукать,
Могилу мою уквітчати,
Щоб легше було у ній спать.

А як я зляжу в могилу,
Ти будеш весела й сумна,
Ті роки ти згадувать будеш,
Коли ти зі мною була.

Спіши ти, дівча, віддаватись
За тих наших славних борців.
Шинелі ти їх не цурайся,
То серце гаряче для всіх.

Краса твоя пишна зв''яне,
Ти станеш бабуся стара
І стан твій високий, мов явір,
Зігнеться неначе дуга.

А нишком підслухалась мати,
Підслухала нашу любов,
Забрала дівчину до хати...
Зробила розлуку зі мнов...');
DELETE FROM song_links WHERE song_id = 'pisniua_3238626';
DELETE FROM song_versions WHERE song_id = 'pisniua_3238626';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3238626';
DELETE FROM songs WHERE id = 'pisniua_3238626';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3238626','Пісня про вчителів','Музика: Віктор Ох Слова: Віктор Ох. Виконує: Віктор Ох','uk','ukraine_1991',NULL,NULL,'авторське подання',NULL,'У школі кожного із нас навчали
Із літер в букварі складать слова.
І першу пісню в школі заспівали.
Про рідну землю й матір пісня була ця.

Приспів:
Весною проводжають в світи випускників,
А восени вітають вже нових школярів.
І хоч старіють наші рідні вчителі,
Та не старіють душі, їх душі молоді.

За вашу працю вам слова високі
Не дуже часто говорили ми.
Та вдячні вам за перші наші кроки,
Якими міряли просторих знань лани.

Приспів.

Той, хто дарує, той вже сам щасливий,
Бо робить свято із буденності пітьми.
Суворий вчитель, але справедливий,
Тебе на все життя запам''ятаєм ми!

Приспів','[''pisni.org.ua'', ''cat:devoted'', ''Пісні присвячені окремим особам'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3238626'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3238626','Пісня про вчителів','У школі кожного із нас навчали
Із літер в букварі складать слова.
І першу пісню в школі заспівали.
Про рідну землю й матір пісня була ця.

Приспів:
Весною проводжають в світи випускників,
А восени вітають вже нових школярів.
І хоч старіють наші рідні вчителі,
Та не старіють душі, їх душі молоді.

За вашу працю вам слова високі
Не дуже часто говорили ми.
Та вдячні вам за перші наші кроки,
Якими міряли просторих знань лани.

Приспів.

Той, хто дарує, той вже сам щасливий,
Бо робить свято із буденності пітьми.
Суворий вчитель, але справедливий,
Тебе на все життя запам''ятаєм ми!

Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3238626_l1','pisniua_3238626','YouTube','https://www.youtube.com/watch?v=K6fzD2gdN24','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3234869';
DELETE FROM song_versions WHERE song_id = 'pisniua_3234869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3234869';
DELETE FROM songs WHERE id = 'pisniua_3234869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3234869','Я так хотів','Музика: Крик Душі Слова: Крик Душі. Виконує: Крик Душі','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Я сумую за тобою день і ніч
На самоті,
Ти ніби ангел-охоронець,
Що у мене на плечі.
Не туди піду - відмовиш,
В небезпеці - вбережеш,
Бо з любов''ю ти у серці,
Яка не має меж!

Я так хотів
Позбутися на серці болю,
Я так хотів
Навік лишитися з тобою,
Я так хотів
Відчути рук твоїх тепло.
Згадаєш ти,
Згадаю я,
Як добре нам удвох було.

Ніби все було, як завжди,
Намагавсь згадати те
Та ніде не діти правди:
Ти любила не мене...
Залишилося на серці
Спогадом на все життя
Твої очі - два озерця
І твої тонкі вуста!..

Я так хотів
Позбутися на серці болю,
Я так хотів
Навік лишитися з тобою,
Я так хотів,
Щоб ти завжди була щаслива,
Я так хотів!..
Та ти мене не зрозуміла...','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3234869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3234869','Я так хотів','Я сумую за тобою день і ніч
На самоті,
Ти ніби ангел-охоронець,
Що у мене на плечі.
Не туди піду - відмовиш,
В небезпеці - вбережеш,
Бо з любов''ю ти у серці,
Яка не має меж!

Я так хотів
Позбутися на серці болю,
Я так хотів
Навік лишитися з тобою,
Я так хотів
Відчути рук твоїх тепло.
Згадаєш ти,
Згадаю я,
Як добре нам удвох було.

Ніби все було, як завжди,
Намагавсь згадати те
Та ніде не діти правди:
Ти любила не мене...
Залишилося на серці
Спогадом на все життя
Твої очі - два озерця
І твої тонкі вуста!..

Я так хотів
Позбутися на серці болю,
Я так хотів
Навік лишитися з тобою,
Я так хотів,
Щоб ти завжди була щаслива,
Я так хотів!..
Та ти мене не зрозуміла...');
DELETE FROM song_links WHERE song_id = 'pisniua_3238467';
DELETE FROM song_versions WHERE song_id = 'pisniua_3238467';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3238467';
DELETE FROM songs WHERE id = 'pisniua_3238467';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3238467','Діва сина породила','Українська народна пісня. Виконує: Тріо Либідь','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'Діва сина породила
І в яселця положила,
Сіном сина прикриває.

Сіном сина прикриває,
Син до мати промовляє:
"Бог з тобою, не лякайся!

Бог з тобою, не лякайся.
Ти Дівою називайся,
Ти Дівою називайся!"

Bсі янголи заспівали,
Всім пророкам розказали,
Що Йсус Христос народився!','[''pisni.org.ua'', ''cat:kolyadky'', ''Колядки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3238467'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3238467','Діва сина породила','Діва сина породила
І в яселця положила,
Сіном сина прикриває.

Сіном сина прикриває,
Син до мати промовляє:
"Бог з тобою, не лякайся!

Бог з тобою, не лякайся.
Ти Дівою називайся,
Ти Дівою називайся!"

Bсі янголи заспівали,
Всім пророкам розказали,
Що Йсус Христос народився!');
DELETE FROM song_links WHERE song_id = 'pisniua_3240727';
DELETE FROM song_versions WHERE song_id = 'pisniua_3240727';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3240727';
DELETE FROM songs WHERE id = 'pisniua_3240727';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3240727','Голубка','Українська народна пісня','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ми голубку голубили,
Всі довкола обступили:
"Ой, голубко, чого тужиш?
Вибирай, кого ти любиш."

"Як я маю не тужити,
Нема мені тут з ким жити,
Бо мій милий чорнобривий
У могилі вже неживий.

Я ходила, вибирала,
Чорнявого сподобала.
Він чорнявий, я білява -
Поберемся, буде пара.','[''pisni.org.ua'', ''cat:vesnyanky-hayivky'', ''Веснянки та гаївки'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3240727'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3240727','Голубка','Ми голубку голубили,
Всі довкола обступили:
"Ой, голубко, чого тужиш?
Вибирай, кого ти любиш."

"Як я маю не тужити,
Нема мені тут з ким жити,
Бо мій милий чорнобривий
У могилі вже неживий.

Я ходила, вибирала,
Чорнявого сподобала.
Він чорнявий, я білява -
Поберемся, буде пара.');
DELETE FROM song_links WHERE song_id = 'pisniua_3235929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3235929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3235929';
DELETE FROM songs WHERE id = 'pisniua_3235929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3235929','Україно, вперед!','Музика: Михайло Некрасів Слова: Микола Бровченко. Виконує: Олена Вінницька, Mad Heads (XL), Гавана','uk','ukraine_1991',NULL,'2006','Текста (http://teksta.org/27822.html), Усі Тексти Пісень Світу (http://textypesen.com.ua/load/).','Естрадна пісня, Славень української збірної з футболу до фінальної частини чемпіонату світу 2006 р. у Німеччині, Футбольна пісня, Українська поп музика.','О-У-О! Україно, вперед!
О-У-О! Україно, давай!

Приспів:
О-У-О! Україно, вперед!
О-У-О! Україно, давай!
О-У-О! Україно, вперед!
О-У-О! Перемагай!

Знову футболієм!
Знову треба гол!
Нас веде надія,
Нас тримає разом футбол!
Синє-синє небо,
Жовті прапори.
Україні треба
На всі 100 потужної гри!

Приспів.

У Європі чути
Наші голоси:
Золото здобудем,
Бо граємо завжди — що є сил!
Хай тремтить суперник,
Навіть супер-team:
Поле перевернем,
А докажем, що ми круті!

Приспів. (2)

Жовто-синя хвиля
По трибуні йде!
Українську силу
Усьому світу ми доведем!

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3235929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3235929','Україно, вперед!','О-У-О! Україно, вперед!
О-У-О! Україно, давай!

Приспів:
О-У-О! Україно, вперед!
О-У-О! Україно, давай!
О-У-О! Україно, вперед!
О-У-О! Перемагай!

Знову футболієм!
Знову треба гол!
Нас веде надія,
Нас тримає разом футбол!
Синє-синє небо,
Жовті прапори.
Україні треба
На всі 100 потужної гри!

Приспів.

У Європі чути
Наші голоси:
Золото здобудем,
Бо граємо завжди — що є сил!
Хай тремтить суперник,
Навіть супер-team:
Поле перевернем,
А докажем, що ми круті!

Приспів. (2)

Жовто-синя хвиля
По трибуні йде!
Українську силу
Усьому світу ми доведем!

Приспів.');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3235929_l1','pisniua_3235929','YouTube','https://www.youtube.com/watch?v=1GmRcS-MoKE','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_3248525';
DELETE FROM song_versions WHERE song_id = 'pisniua_3248525';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3248525';
DELETE FROM songs WHERE id = 'pisniua_3248525';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3248525','Чом засмутилася краса','Музика: Олександр Стадник Слова: Петро Власюк. Виконує: Черкаський народний хор','uk','ukraine_before_1917',NULL,NULL,'аудіозапис','Солістка - Олена Варич.','Місяць в криниці сипле зірниці,
На русу косу впала роса.
Скажи, дівчино, що за причина,   |
Чом засмутилась твоя краса?      | (2)

Не засмутилась, не зажурилась,
Тільки задума моя пройшла,
Бо я не знаю, в якому краю       |
Пристав віночок, що я сплела.    | (2)

Моє гадання і сподівання
Несла в задумі синь-течія.
Про очі карі, з якими в парі
Була б довіку в коханні я.

Я в серці грію дівочу мрію,
Вона в діброву мне веде,
Щоб заповітну знайти там квітку, |
Як на Купайла в ніч зацвіте.     | (2)

Як на Купайла в ніч зацвіте...','[''pisni.org.ua'', ''cat:kupalski'', ''Купальські пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3248525'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3248525','Чом засмутилася краса','Місяць в криниці сипле зірниці,
На русу косу впала роса.
Скажи, дівчино, що за причина,   |
Чом засмутилась твоя краса?      | (2)

Не засмутилась, не зажурилась,
Тільки задума моя пройшла,
Бо я не знаю, в якому краю       |
Пристав віночок, що я сплела.    | (2)

Моє гадання і сподівання
Несла в задумі синь-течія.
Про очі карі, з якими в парі
Була б довіку в коханні я.

Я в серці грію дівочу мрію,
Вона в діброву мне веде,
Щоб заповітну знайти там квітку, |
Як на Купайла в ніч зацвіте.     | (2)

Як на Купайла в ніч зацвіте...');
DELETE FROM song_links WHERE song_id = 'pisniua_3242828';
DELETE FROM song_versions WHERE song_id = 'pisniua_3242828';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3242828';
DELETE FROM songs WHERE id = 'pisniua_3242828';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3242828','Козацька','Музика: Анатолій Кальяненко Слова: Анатолій Кальяненко. Виконує: Анатолій Кальяненко','uk','ukraine_before_1917',NULL,NULL,'аудіозапис',NULL,'На ставку понад водою
Дівча сльози ллє,
Зі ставка разом з бідою
Вона сльози п''є.
Забарився легінь милий,   |
Вісточки не шле,          |
Третій рік півні відпіли, |
А він все не йде.         | (2)

Відзовися, мій миленький,
Я тебе молю,
Бо тебе лиш, мій рідненький,
Одного люблю!
Лиш до тебе серед ночі    |
Подумки лечу,             |
Лиш твої я чорні очі      |
Бачити хочу!              | (2)

Відізвався із-за Бугу
Козак молодий,
Він співав козацьку тугу,
Готувався в бій.
За свободу, за родину,    |
За усіх за нас,           |
І за неньку Україну,      |
І за кращий час!          | (2)

Зачекай на мене, мила,
Я у бій іду,
Зупинити треба силу,
Що несе біду.
Вже тремтять ворожі лави  |
Й їхні королі,            |
Порубаєм їх без слави     |
На своїй землі!           | (2)

Переможу й вернуся
Я у рідний дім,
І на тобі одружуся
Опісля сватів.
І для щастя у родині
Діток заведем,
І на вільній Україні
Славно заживем!
Та для щастя у родині
Діток заведем,
І на вільній Україні
Славно заживем!','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3242828'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3242828','Козацька','На ставку понад водою
Дівча сльози ллє,
Зі ставка разом з бідою
Вона сльози п''є.
Забарився легінь милий,   |
Вісточки не шле,          |
Третій рік півні відпіли, |
А він все не йде.         | (2)

Відзовися, мій миленький,
Я тебе молю,
Бо тебе лиш, мій рідненький,
Одного люблю!
Лиш до тебе серед ночі    |
Подумки лечу,             |
Лиш твої я чорні очі      |
Бачити хочу!              | (2)

Відізвався із-за Бугу
Козак молодий,
Він співав козацьку тугу,
Готувався в бій.
За свободу, за родину,    |
За усіх за нас,           |
І за неньку Україну,      |
І за кращий час!          | (2)

Зачекай на мене, мила,
Я у бій іду,
Зупинити треба силу,
Що несе біду.
Вже тремтять ворожі лави  |
Й їхні королі,            |
Порубаєм їх без слави     |
На своїй землі!           | (2)

Переможу й вернуся
Я у рідний дім,
І на тобі одружуся
Опісля сватів.
І для щастя у родині
Діток заведем,
І на вільній Україні
Славно заживем!
Та для щастя у родині
Діток заведем,
І на вільній Україні
Славно заживем!');
DELETE FROM song_links WHERE song_id = 'pisniua_3239962';
DELETE FROM song_versions WHERE song_id = 'pisniua_3239962';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3239962';
DELETE FROM songs WHERE id = 'pisniua_3239962';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3239962','Надкусили місяць зорі','Музика: Олег Винник Слова: Олег Винник. Виконує: Олег Винник','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Надкусили місяць зорі,
Бо не поділились,
А нам тісно стало в парі -
Любить не навчились...
Чи то тонко, швидко рвалось, |
Зовсім перетліло...          |
Що поробиш? Ну, не склалось  |
Так, як нам хотілось...      | (2)

Надкусили місяць зорі,
Не насолодились,
Зникло з неба наше щастя,
Чи дощами змилось...
Налилися соком квіти         |
Та не розпускались,          |
Народились чужі діти,        |
А ми - не діждались...       | (2)

Надкусили місяць зорі
Та й навік забули,
Люди щастям милувались,
А ми - не відчули...
Люди гнізда будували,        |
А ми - залишили,             |
Люди раєм любувались,        |
А ми - нагрішили...          | (2)

Надкусили місяць зорі
Ні собі, ні кому
Не зуміли бути разом -
Будем по-одному.
Так це важко і не просто,    |
Та усе минеться.             |
І твоє ім''я у порох          |
З часом перетреться...       | (2)

І твоє ім''я у порох
З часом перетнеться...

Надкусили місяць зорі,
Бо не поділились,
А нам тісно стало в парі -
Любить не навчились...','[''pisni.org.ua'', ''cat:nostalgia'', ''Пісні з ностальгічними мотивами'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3239962'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3239962','Надкусили місяць зорі','Надкусили місяць зорі,
Бо не поділились,
А нам тісно стало в парі -
Любить не навчились...
Чи то тонко, швидко рвалось, |
Зовсім перетліло...          |
Що поробиш? Ну, не склалось  |
Так, як нам хотілось...      | (2)

Надкусили місяць зорі,
Не насолодились,
Зникло з неба наше щастя,
Чи дощами змилось...
Налилися соком квіти         |
Та не розпускались,          |
Народились чужі діти,        |
А ми - не діждались...       | (2)

Надкусили місяць зорі
Та й навік забули,
Люди щастям милувались,
А ми - не відчули...
Люди гнізда будували,        |
А ми - залишили,             |
Люди раєм любувались,        |
А ми - нагрішили...          | (2)

Надкусили місяць зорі
Ні собі, ні кому
Не зуміли бути разом -
Будем по-одному.
Так це важко і не просто,    |
Та усе минеться.             |
І твоє ім''я у порох          |
З часом перетреться...       | (2)

І твоє ім''я у порох
З часом перетнеться...

Надкусили місяць зорі,
Бо не поділились,
А нам тісно стало в парі -
Любить не навчились...');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3239962_l1','pisniua_3239962','YouTube','https://www.youtube.com/watch?v=NneLouKregk','video',NULL,1);
DELETE FROM song_links WHERE song_id = 'pisniua_323663';
DELETE FROM song_versions WHERE song_id = 'pisniua_323663';
DELETE FROM songs_fts WHERE song_id = 'pisniua_323663';
DELETE FROM songs WHERE id = 'pisniua_323663';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_323663','Приснилось матері','Музика: Іван Сльота Слова: Олександр Богачук','uk','ukraine_1991',NULL,NULL,'надіслав Ярослав Богачук',NULL,'Приснилось матері, що ожили солдати,
Які стоять одягнені в граніт...
Приснилось матері: іде один до хати
І раптом зупинивсь біля воріт.
Чого не йдеш? Чого стоїш, мій синку?
Чи мало настоявся край путі?..
Вже скільки літ не знаєш відпочинку!
Вже скільки літ чекаю в самоті!

Приснилось матері, що привела в оселю.
Він автомат поставив у куток.
І, мовчки скинувши запилену шинелю,
Узяв у руки скрипку і смичок.
Вустами струн почав розповідати,
Як він ішов додому крізь грозу.
І в тихім сні, у сні ридала мати
І витирала радості сльозу...

Приснилось матері, що подала сніданок,
І син присів, і сперся над столом.
Та раптом променем зашелестів світанок —
І сон розтав, як роси за селом.
"Чи це мана?" —
й самі побігли ноги.
"О, де мій син?!" —
і впала край воріт...
А в далині, де сходяться дороги,
Стояв солдат, одягнений в граніт.','[''pisni.org.ua'', ''cat:suspilno-politychni'', ''Суспільно-політичні пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_323663'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_323663','Приснилось матері','Приснилось матері, що ожили солдати,
Які стоять одягнені в граніт...
Приснилось матері: іде один до хати
І раптом зупинивсь біля воріт.
Чого не йдеш? Чого стоїш, мій синку?
Чи мало настоявся край путі?..
Вже скільки літ не знаєш відпочинку!
Вже скільки літ чекаю в самоті!

Приснилось матері, що привела в оселю.
Він автомат поставив у куток.
І, мовчки скинувши запилену шинелю,
Узяв у руки скрипку і смичок.
Вустами струн почав розповідати,
Як він ішов додому крізь грозу.
І в тихім сні, у сні ридала мати
І витирала радості сльозу...

Приснилось матері, що подала сніданок,
І син присів, і сперся над столом.
Та раптом променем зашелестів світанок —
І сон розтав, як роси за селом.
"Чи це мана?" —
й самі побігли ноги.
"О, де мій син?!" —
і впала край воріт...
А в далині, де сходяться дороги,
Стояв солдат, одягнений в граніт.');
DELETE FROM song_links WHERE song_id = 'pisniua_3237121';
DELETE FROM song_versions WHERE song_id = 'pisniua_3237121';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3237121';
DELETE FROM songs WHERE id = 'pisniua_3237121';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3237121','Подаруй','Музика: Людмила Тимченко Слова: Людмила Тимченко. Виконує: ТамДеМи','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Для добра відкрий ти серце
І тримай в руках надію,
І збагнеш, що світ навколо чарівний.
Допоможе друг єдиний,
Посміхнеться, зрозуміє:
Бути поруч - то є миті золоті!

Приспів:
Ти подаруй мені дружбу свою,
І теплом зігрівай, і підтримуй мене!
Душу відкрию тобі, друже мій,
Зрозумій, ми удвох збережем мрії свої!

Всі дорослі і малята
Мають знати, цінувати
Віру, дружбу і надію та любов!
Це в житті важливі речі,
Ти підстав для друга плечі,
І, побачиш, світ навколо оживе!

Приспів. (2)','[''pisni.org.ua'', ''cat:druzhba'', ''Пісні про дружбу'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3237121'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3237121','Подаруй','Для добра відкрий ти серце
І тримай в руках надію,
І збагнеш, що світ навколо чарівний.
Допоможе друг єдиний,
Посміхнеться, зрозуміє:
Бути поруч - то є миті золоті!

Приспів:
Ти подаруй мені дружбу свою,
І теплом зігрівай, і підтримуй мене!
Душу відкрию тобі, друже мій,
Зрозумій, ми удвох збережем мрії свої!

Всі дорослі і малята
Мають знати, цінувати
Віру, дружбу і надію та любов!
Це в житті важливі речі,
Ти підстав для друга плечі,
І, побачиш, світ навколо оживе!

Приспів. (2)');
DELETE FROM song_links WHERE song_id = 'pisniua_325020';
DELETE FROM song_versions WHERE song_id = 'pisniua_325020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_325020';
DELETE FROM songs WHERE id = 'pisniua_325020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_325020','Ой на горі цигани стояли','Українська народна пісня. Виконує: Кобза','uk','ukraine_before_1917',NULL,NULL,NULL,NULL,'Ой на горі цигани стояли. (2)
Приспів:
Стояла, думала циганочка молода, (2)
Циганочка молода.
Один циган не п''є, не гуляє. (2)
Приспів.
Він циганку собі вибирає. (2)
Приспів.
Ой, циганко, яке в тебе горе? (2)
Приспів.
Поїдемо на синєє море. (2)
Приспів','[''pisni.org.ua'', ''cat:vesilni'', ''cat:zhartivlyvi'', ''Весільні пісні'', ''Жартівливі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_325020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_325020','Ой на горі цигани стояли','Ой на горі цигани стояли. (2)
Приспів:
Стояла, думала циганочка молода, (2)
Циганочка молода.
Один циган не п''є, не гуляє. (2)
Приспів.
Він циганку собі вибирає. (2)
Приспів.
Ой, циганко, яке в тебе горе? (2)
Приспів.
Поїдемо на синєє море. (2)
Приспів');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_325020_l1','pisniua_325020','YouTube','https://www.youtube.com/watch?v=Fu6GOiHS7PM','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_325020_l2','pisniua_325020','YouTube','https://www.youtube.com/watch?v=m6XXaX5-H7E','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_325020_l3','pisniua_325020','YouTube','https://www.youtube.com/watch?v=p1KjD56IFZA','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_325020_l4','pisniua_325020','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,4);
DELETE FROM song_links WHERE song_id = 'pisniua_3242663';
DELETE FROM song_versions WHERE song_id = 'pisniua_3242663';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3242663';
DELETE FROM songs WHERE id = 'pisniua_3242663';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3242663','Тільки така, як ти','Музика: Олег Павлишин Слова: Олег Павлишин. Виконує: Олег Павлишин','uk','ukraine_1991',NULL,NULL,'аудіозапис',NULL,'Приспів:
Тільки така, як ти
Буде поруч зі мною!
Тільки така, як ти
Буде поруч іти!

Я блукав в пошуках снів,
Я шукав в темряві слід -
Жодної не зустрів,
Щоб назвати своєю.
Відчай був друг мені,
Стільки цих самотніх літ,
Доки між вечорів
Не зустрів я тебе...
Ніби той промінь світла
Ти ввійшла в самотнє серце,
Стільки літ ти до мене йшла.

Приспів.

Тільки таку, як ти
Поведу за собою!
Тільки таку, як ти,
Таку, як ти!

Ти зійшла як зоря,
Чарівна і без прикрас,
Підемо за межу,
Де ховається вітер.
Світ тобі покажу,
Від усіх разом втечем,
Крил твоїх білий шум
На картинах розквітне.
Ніби той фотоспалах
Освітила порожнечу,
Стільки літ Ти до мене йшла...

Приспів.

Тільки таку, як ти
Поведу за собою!
Тільки таку, як ти,
Таку, як ти!

Приспів.

Тільки таку, як ти
Поведу за собою!
Тільки таку, як ти,
Моя мила, як ти!..','[''pisni.org.ua'', ''cat:romansy'', ''Романси'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3242663'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3242663','Тільки така, як ти','Приспів:
Тільки така, як ти
Буде поруч зі мною!
Тільки така, як ти
Буде поруч іти!

Я блукав в пошуках снів,
Я шукав в темряві слід -
Жодної не зустрів,
Щоб назвати своєю.
Відчай був друг мені,
Стільки цих самотніх літ,
Доки між вечорів
Не зустрів я тебе...
Ніби той промінь світла
Ти ввійшла в самотнє серце,
Стільки літ ти до мене йшла.

Приспів.

Тільки таку, як ти
Поведу за собою!
Тільки таку, як ти,
Таку, як ти!

Ти зійшла як зоря,
Чарівна і без прикрас,
Підемо за межу,
Де ховається вітер.
Світ тобі покажу,
Від усіх разом втечем,
Крил твоїх білий шум
На картинах розквітне.
Ніби той фотоспалах
Освітила порожнечу,
Стільки літ Ти до мене йшла...

Приспів.

Тільки таку, як ти
Поведу за собою!
Тільки таку, як ти,
Таку, як ти!

Приспів.

Тільки таку, як ти
Поведу за собою!
Тільки таку, як ти,
Моя мила, як ти!..');
DELETE FROM song_links WHERE song_id = 'pisniua_3242364';
DELETE FROM song_versions WHERE song_id = 'pisniua_3242364';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3242364';
DELETE FROM songs WHERE id = 'pisniua_3242364';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3242364','Онучці','Музика: Анатолій Кальяненко Слова: Анатолій Кальяненко. Виконує: Анатолій Кальяненко','uk','ukraine_1991',NULL,NULL,NULL,NULL,'Добра доля посміхнулась,
Сину, і до нас -
В тебе доня народилась
У щасливий час.
Довго ми просили Бога
За оце дитя,
Простелилася дорога
Нового життя.

Ти рости щаслива, доню,
Не спіши в роках,
Хай твоя дівоча доля
Стелиться в квітках,
Лихо хай тебе минає,
Просимо ми знов,
Хай тебе оберігає
Батьківська любов.

Швидко станеш ти на ніжки
І сама підеш,
Та повередуєш трішки,
Поки підростеш.
Я тобі пригорну небо
І роси наллю.
Моя мила, довгождана,
Я тебе люблю','[''pisni.org.ua'', ''cat:pro-ditey'', ''Пісні про любов до дітей'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3242364'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3242364','Онучці','Добра доля посміхнулась,
Сину, і до нас -
В тебе доня народилась
У щасливий час.
Довго ми просили Бога
За оце дитя,
Простелилася дорога
Нового життя.

Ти рости щаслива, доню,
Не спіши в роках,
Хай твоя дівоча доля
Стелиться в квітках,
Лихо хай тебе минає,
Просимо ми знов,
Хай тебе оберігає
Батьківська любов.

Швидко станеш ти на ніжки
І сама підеш,
Та повередуєш трішки,
Поки підростеш.
Я тобі пригорну небо
І роси наллю.
Моя мила, довгождана,
Я тебе люблю');
DELETE FROM song_links WHERE song_id = 'pisniua_3244020';
DELETE FROM song_versions WHERE song_id = 'pisniua_3244020';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3244020';
DELETE FROM songs WHERE id = 'pisniua_3244020';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3244020','Сивий коню','Українська народна пісня. Виконує: Андрій Кок','uk','ukraine_before_1917',NULL,NULL,'записано 1990 р. від сім''ї Кухти в с. Оселя Яворівського р-ну Львівської обл.',NULL,'Сивий коню, сивий коню,
А грива біленька.
Завези мя, сивий коню,    |
Де моя миленька.          | (2)

Як приїдеш під ворота,
Стукнеш копитами,
Чи не вийде дівчинонька   |
З чорними бровами.        | (2)

Ой, не вийшла дівчинонька,
Вийшла стара мати,
Запросила, закликала      |
Козаків до хати.          | (2)

Перший козак з коня злазить,
Другий коня в''яже,
А той третій, наймолодший |
"Добрий вечір!" - каже.   | (2)

Добрий вечір, стара мати,
Дай води напиться.
Кажуть, маєш гарну доню,  |
Дай хоч подивиться.       | (2)

Криниченька у садочку -
Скільки хоч напийся,
Моя доня на весіллі,      |
Іди подивися.             | (2)

Як прийшов я на весілля,
Вона п''є, гуляє,
А мені ся молодому        |
Серце розриває.           | (2)

Ой, дівчино, дівчинонько,
Перестань гуляти,
Іди сядь си біля мене,    |
Маю щось питати.          | (2)

Іди сядь си біля мене,
Маю щось питати,
Чи дозволить твоя мати    |
Старостів прислати?       | (2)

Сивий коню, сивий коню,
А грива біленька.
Занеси мя, сивий коню,    |
Де моя миленька.          | (2)','[''pisni.org.ua'', ''cat:kozacki'', ''Козацькі пісні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3244020'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3244020','Сивий коню','Сивий коню, сивий коню,
А грива біленька.
Завези мя, сивий коню,    |
Де моя миленька.          | (2)

Як приїдеш під ворота,
Стукнеш копитами,
Чи не вийде дівчинонька   |
З чорними бровами.        | (2)

Ой, не вийшла дівчинонька,
Вийшла стара мати,
Запросила, закликала      |
Козаків до хати.          | (2)

Перший козак з коня злазить,
Другий коня в''яже,
А той третій, наймолодший |
"Добрий вечір!" - каже.   | (2)

Добрий вечір, стара мати,
Дай води напиться.
Кажуть, маєш гарну доню,  |
Дай хоч подивиться.       | (2)

Криниченька у садочку -
Скільки хоч напийся,
Моя доня на весіллі,      |
Іди подивися.             | (2)

Як прийшов я на весілля,
Вона п''є, гуляє,
А мені ся молодому        |
Серце розриває.           | (2)

Ой, дівчино, дівчинонько,
Перестань гуляти,
Іди сядь си біля мене,    |
Маю щось питати.          | (2)

Іди сядь си біля мене,
Маю щось питати,
Чи дозволить твоя мати    |
Старостів прислати?       | (2)

Сивий коню, сивий коню,
А грива біленька.
Занеси мя, сивий коню,    |
Де моя миленька.          | (2)');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3244020_l1','pisniua_3244020','YouTube','https://www.youtube.com/watch?v=7Yo5cF7zNqc','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3244020_l2','pisniua_3244020','YouTube','https://www.youtube.com/watch?v=3eoReE2QGWA','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_3244020_l3','pisniua_3244020','YouTube','https://www.youtube.com/watch?v=AB-8BinDk-E','video',NULL,3);
DELETE FROM song_links WHERE song_id = 'pisniua_3247929';
DELETE FROM song_versions WHERE song_id = 'pisniua_3247929';
DELETE FROM songs_fts WHERE song_id = 'pisniua_3247929';
DELETE FROM songs WHERE id = 'pisniua_3247929';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_3247929','Гімн Горлівки','Музика: А. Висоцький Слова: Є. Легостаєв','uk','ukraine_1991',NULL,NULL,'вікіпедія',NULL,'Батьківщину, як і матір, не обирають
Батьківщина, як і мати, завжди єдина.
Для неї живуть і помирають,
Лише б вона завжди жила!

Приспів:
Під українським небом синім
У вінку із золота ланів
Стоїть мій град достойним сином
Вільної моєї Батьківщини!

Мешкали тут і Горлов, і Ізотов,
Здійснюючи праведні працю і чин,
Народжуючи сплав — розум і робота,
Пісня і висока душа!

Приспів.

Горлівка — країна праці і пісень,
Щедрих усмішок, і вогню,
Саме тому я щасливий і веселий,
Що з тобою ми однієї крові!

Приспів.','[''pisni.org.ua'', ''cat:himny-marshi'', ''Гимни та марші'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_3247929'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_3247929','Гімн Горлівки','Батьківщину, як і матір, не обирають
Батьківщина, як і мати, завжди єдина.
Для неї живуть і помирають,
Лише б вона завжди жила!

Приспів:
Під українським небом синім
У вінку із золота ланів
Стоїть мій град достойним сином
Вільної моєї Батьківщини!

Мешкали тут і Горлов, і Ізотов,
Здійснюючи праведні працю і чин,
Народжуючи сплав — розум і робота,
Пісня і висока душа!

Приспів.

Горлівка — країна праці і пісень,
Щедрих усмішок, і вогню,
Саме тому я щасливий і веселий,
Що з тобою ми однієї крові!

Приспів.');
DELETE FROM song_links WHERE song_id = 'pisniua_324869';
DELETE FROM song_versions WHERE song_id = 'pisniua_324869';
DELETE FROM songs_fts WHERE song_id = 'pisniua_324869';
DELETE FROM songs WHERE id = 'pisniua_324869';
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('pisniua_324869','На долині туман','Музика: Борис Буєвський Слова: Василь Діденко. Виконує: Микола Кондратюк, Дмитро Гнатюк, Рушничок','uk','ukraine_before_1917',NULL,NULL,'http://www3.gu.kiev.ua/CALENDAR/ualyrics/song.htm',NULL,'На долині туман,
На долині туман упав.
Мак червоний в росі,
Мак червоний в росі скупав.

По стежині дівча,
По стежині дівча ішло.
Тепле літо в очах,
Тепле літо в очах цвіло.

На долині туман,
На долині туман упав.
Білі ніжки в росі,
Білі ніжки в росі скупав.

Понад гору дівча,
Понад гору дівча ішло,
Мак червоний в село,
Мак червоний в село несло.

За дівчам тим і я,
За дівчам тим і я ступав,
Бо в долині туман,
Бо в долині туман розтав','[''pisni.org.ua'', ''cat:lirychni'', ''Пісні про кохання, ліричні'']',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='pisniua_324869'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('pisniua_324869','На долині туман','На долині туман,
На долині туман упав.
Мак червоний в росі,
Мак червоний в росі скупав.

По стежині дівча,
По стежині дівча ішло.
Тепле літо в очах,
Тепле літо в очах цвіло.

На долині туман,
На долині туман упав.
Білі ніжки в росі,
Білі ніжки в росі скупав.

Понад гору дівча,
Понад гору дівча ішло,
Мак червоний в село,
Мак червоний в село несло.

За дівчам тим і я,
За дівчам тим і я ступав,
Бо в долині туман,
Бо в долині туман розтав');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_324869_l1','pisniua_324869','YouTube','https://www.youtube.com/watch?v=RdIdvoG4CD0','video',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_324869_l2','pisniua_324869','YouTube','https://www.youtube.com/watch?v=c81FhXKGhBk','video',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_324869_l3','pisniua_324869','YouTube','https://www.youtube.com/watch?v=t1PE29gylzo','video',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_324869_l4','pisniua_324869','YouTube','https://www.youtube.com/watch?v=6ggYvWozwNc','video',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('pisniua_324869_l5','pisniua_324869','Переглянути варіанти >>','https://www.pisni.org.ua/#variants','external',NULL,5);
