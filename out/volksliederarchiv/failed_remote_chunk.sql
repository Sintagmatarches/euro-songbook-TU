INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('vla_der_heimat_treue_zugeschworen_neues_westfalenlied','Der Heimat Treue zugeschworen (Neues Westfalenlied)','Der  Heimat  Treue zugeschworen
hat jeder Stamm auf seine Art
Ich wurde in dem land geboren
wo Deutschlands Ruhm geboren ward
Wo Romas Adler nieder sanken
und Hermanns Strahlensonne stieg
wo wider Kaiser Karl den Franken
Held Wittekind zog in den Krieg
Westfalenland, du Erde rot
ich bleib dir treu bis in den Tod

Willst du ein Bild aus alten Tagen
von unserm Volke unversehrt
so folg dem Landmann ohne Zagen
an seinen gastlich trauten Herd
Es treibt in Sitten und Gebräuchen
der Stamm oft eigen das Geäst
Doch blieb er auch wie seine Eichen
so kerngesund und wetterfest
Westfalenland, du Erde rot
ich bleib dir treu bis in den Tod

Und in das schöne Land zu schauen
ist meinem Auge ein Genuß
Ich seh die Felder, seh die Auen
ich grüße Quelle, Bach und Fluß
O seid gegrüsst ihr Bergeshöhn
du weite Heide, ernst und schlicht
ihr Täler, lieblich anzusehn
als wie ein holdes Angesicht
Westfalenland, du Erde rot
ich bleib dir treu bis in den Tod

Wohin mich führen auch die Sterne
auf meines Lebens Wanderfahrt
Die Sehnsucht trägt mich aus der Ferne
dahin, wo ich geboren ward
und hab ich draußen ausgelitten
daheim will ich begraben sein
tragt mich zur Ruh , o laßt euch bitten
sanft in Westfalens Eichenhain
Westfalenland, du Erde rot
ich bleib dir treu bis in den Tod');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_heimat_treue_zugeschworen_neues_westfalenlied_l1','vla_der_heimat_treue_zugeschworen_neues_westfalenlied','Landeshymnen','https://www.volksliederarchiv.de/landeshymnen/','reference',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_heimat_treue_zugeschworen_neues_westfalenlied_l2','vla_der_heimat_treue_zugeschworen_neues_westfalenlied','19. Jahrhundert: Volkstümliches Lied','https://www.volksliederarchiv.de/liederzeit/volkstuemlich-1900/','taxonomy',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_heimat_treue_zugeschworen_neues_westfalenlied_l3','vla_der_heimat_treue_zugeschworen_neues_westfalenlied','(1893)','https://www.volksliederarchiv.de/1893/','reference',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_heimat_treue_zugeschworen_neues_westfalenlied_l4','vla_der_heimat_treue_zugeschworen_neues_westfalenlied','Heimat','https://www.volksliederarchiv.de/stichwort/heimat/','taxonomy',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_heimat_treue_zugeschworen_neues_westfalenlied_l5','vla_der_heimat_treue_zugeschworen_neues_westfalenlied','Ruhrgebiet','https://www.volksliederarchiv.de/orte/ruhrgebiet/','place',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_heimat_treue_zugeschworen_neues_westfalenlied_l6','vla_der_heimat_treue_zugeschworen_neues_westfalenlied','Westfalen','https://www.volksliederarchiv.de/orte/westfalen/','place',NULL,6);
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('vla_der_helle_tag_bricht_an','Der helle Tag bricht an','Музыка и слова: Verfasser unbekannt, aus Franken, Aschaffenburg, bei Ditfurth, Fränkische Volkslieder II, 1855','de','german_empire_1900_1918',NULL,'1855',NULL,'Steinitz führt in Version B, aufgezeichnet 1911 in Grafendorf, Südmähren, eine Strophe aus dem ebenfalls oppositionellen Soldatenlied Wo soll ich mich hinwenden an:

„Wegen was regiert die Welt / die Falschheit und das Geld / der Reiche kann sich helfen / der Arme muss ins Feld“

Liederthema: Kriegslieder, Soldatenlieder
Liederzeit: 19. Jahrhundert: Volkslieder (1855)
Ort: Franken, Würzburg','Der helle Tag bricht an
die klare Sonn scheint schon
Es weint so manche Mutter
um ihren lieben Sohn

Nach Würzburg wurd ich geführt
unters Maß habens mich stalliert
das kann sich einer denken
dems selber ist passiert

Ihr liebste Eltern mein
wegn meiner dürfts nicht wein
Ihr habt mich gut erzogen
aus meiner Wiegen klein

Hab ich euchs Leid getan,
so denkt nicht mehr daran
Gott wird es euch schon lohnen
wenn ich es nicht mehr kann','["volksliederarchiv.de", "category-kriegslieder", "category-soldatenlieder", "orte-franken", "orte-wuerzburg", "medien-der-grosse-steinitz", "medien-fraenkische-volkslieder", "medien-weltkriegs-liedersammlung", "medien-zupfgeigenhansl", "Liederthema: Kriegslieder, Soldatenlieder", "Liederzeit: 19. Jahrhundert: Volkslieder (1855)", "Ort: Franken, Würzburg"]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='vla_der_helle_tag_bricht_an'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('vla_der_helle_tag_bricht_an','Der helle Tag bricht an','Der helle Tag bricht an
die klare Sonn scheint schon
Es weint so manche Mutter
um ihren lieben Sohn

Nach Würzburg wurd ich geführt
unters Maß habens mich stalliert
das kann sich einer denken
dems selber ist passiert

Ihr liebste Eltern mein
wegn meiner dürfts nicht wein
Ihr habt mich gut erzogen
aus meiner Wiegen klein

Hab ich euchs Leid getan,
so denkt nicht mehr daran
Gott wird es euch schon lohnen
wenn ich es nicht mehr kann');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_helle_tag_bricht_an_l1','vla_der_helle_tag_bricht_an','Kriegslieder','https://www.volksliederarchiv.de/kriegslieder/','reference',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_helle_tag_bricht_an_l2','vla_der_helle_tag_bricht_an','Soldatenlieder','https://www.volksliederarchiv.de/kriegslieder/soldatenlieder/','reference',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_helle_tag_bricht_an_l3','vla_der_helle_tag_bricht_an','19. Jahrhundert: Volkslieder','https://www.volksliederarchiv.de/liederzeit/volkslied-1900/','taxonomy',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_helle_tag_bricht_an_l4','vla_der_helle_tag_bricht_an','(1855)','https://www.volksliederarchiv.de/1855/','reference',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_helle_tag_bricht_an_l5','vla_der_helle_tag_bricht_an','Franken','https://www.volksliederarchiv.de/orte/franken/','place',NULL,5);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_helle_tag_bricht_an_l6','vla_der_helle_tag_bricht_an','Würzburg','https://www.volksliederarchiv.de/orte/wuerzburg/','place',NULL,6);
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('vla_der_hengst_und_die_wespe','Eine kleine Wespe stach','Слова: Ludwig Gleim (1756)','de','german_empire_1900_1918',NULL,'1756',NULL,'in Als der Großvater die Großmutter nahm (1885)

Liederthema: Gedichte
Liederzeit: 18. Jahrhundert: Volkstümliches Lied (1756)','Eine kleine Wespe stach
Einen Hengst. Er schlug nach ihr
Und die kleine Wespe sprach

»Hengstchen, schlag doch nicht nach mir!
Sieh, ich sitz an sicherm Orte,
Hengstchen, sieh! Du triffst mich nicht!«

Hengstchen gab ihr gute Worte;
Und die kleine Wespe spricht:

»Sanftmut findet doch Gehör!
Sieh, nun stech‘ ich dich nicht mehr!«','["volksliederarchiv.de", "category-gedichte", "medien-als-der-grossvater-die-grossmutter-nahm", "Liederthema: Gedichte", "Liederzeit: 18. Jahrhundert: Volkstümliches Lied (1756)"]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='vla_der_hengst_und_die_wespe'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('vla_der_hengst_und_die_wespe','Eine kleine Wespe stach','Eine kleine Wespe stach
Einen Hengst. Er schlug nach ihr
Und die kleine Wespe sprach

»Hengstchen, schlag doch nicht nach mir!
Sieh, ich sitz an sicherm Orte,
Hengstchen, sieh! Du triffst mich nicht!«

Hengstchen gab ihr gute Worte;
Und die kleine Wespe spricht:

»Sanftmut findet doch Gehör!
Sieh, nun stech‘ ich dich nicht mehr!«');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_hengst_und_die_wespe_l1','vla_der_hengst_und_die_wespe','Gedichte','https://www.volksliederarchiv.de/gedichte/','reference',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_hengst_und_die_wespe_l2','vla_der_hengst_und_die_wespe','18. Jahrhundert: Volkstümliches Lied','https://www.volksliederarchiv.de/liederzeit/volkstuemlich-1800/','taxonomy',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_hengst_und_die_wespe_l3','vla_der_hengst_und_die_wespe','(1756)','https://www.volksliederarchiv.de/1756/','reference',NULL,3);
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('vla_der_herbst_ist_ein_geselle','Der Herbst ist ein Geselle','Слова: M. Nathusius (1830, Ein lustiger Geselle) Музыка: anoynm, Volksweise','de','german_empire_1900_1918',NULL,'1830',NULL,'in: Alpenrose (1924)

Liederthema: Herbstlieder
Liederzeit: 19. Jahrhundert: Volkstümliches Lied (1830)
Ort: Alpen','Der Herbst ist ein Geselle
der trägt ein buntes Kleid
und springt und jubilieret
vor ausgelaßner Freud

Er singt im Brausebasse
fährt einem um den Kopf,
wirft alles drüber und drunter
und zaust die Bäum am Schopf

Er stürmt wie wilde Buben
hin über Berg und Feld
fegt durch die falben Blätter
rauscht, heißa! in die Welt

Wirft, wie er zieht, uns Gaben
mit vollen Händen zu
füllt Scheuer, Haus und Keller
zur langen Winterruh','["volksliederarchiv.de", "category-herbstlieder", "orte-alpen", "medien-alpenrose", "Liederthema: Herbstlieder", "Liederzeit: 19. Jahrhundert: Volkstümliches Lied (1830)", "Ort: Alpen"]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='vla_der_herbst_ist_ein_geselle'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('vla_der_herbst_ist_ein_geselle','Der Herbst ist ein Geselle','Der Herbst ist ein Geselle
der trägt ein buntes Kleid
und springt und jubilieret
vor ausgelaßner Freud

Er singt im Brausebasse
fährt einem um den Kopf,
wirft alles drüber und drunter
und zaust die Bäum am Schopf

Er stürmt wie wilde Buben
hin über Berg und Feld
fegt durch die falben Blätter
rauscht, heißa! in die Welt

Wirft, wie er zieht, uns Gaben
mit vollen Händen zu
füllt Scheuer, Haus und Keller
zur langen Winterruh');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herbst_ist_ein_geselle_l1','vla_der_herbst_ist_ein_geselle','Herbstlieder','https://www.volksliederarchiv.de/jahreskreislauf/herbstlieder/','reference',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herbst_ist_ein_geselle_l2','vla_der_herbst_ist_ein_geselle','19. Jahrhundert: Volkstümliches Lied','https://www.volksliederarchiv.de/liederzeit/volkstuemlich-1900/','taxonomy',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herbst_ist_ein_geselle_l3','vla_der_herbst_ist_ein_geselle','(1830)','https://www.volksliederarchiv.de/1830/','reference',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herbst_ist_ein_geselle_l4','vla_der_herbst_ist_ein_geselle','Alpen','https://www.volksliederarchiv.de/orte/alpen/','place',NULL,4);
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('vla_der_herr_der_schickt_den_jockel_aus','Der Herr der schickt den Jockel aus',NULL,'de','german_empire_1900_1918',NULL,'1827',NULL,'in:  Der Kinder Lustfeld  (1827, „Der Herr der will das Birnli schüttle“) —   Kasseler Kinderliedchen  (1891, Nr. 192) —  Macht auf das Tor  (1905)

Dies Märchen vom ungetreuen Gesinde, in Deutschland, Frankreich, England und Ungarn bekannt, ist einem gemeinsamen jüdischen Osterliede nachgebildet, das schon 1609 zu Venedig gedruckt worden ist, in Hebräisch und Chaldäisch vorliegt und übersetzt so lautet: Ein Böckchen, ein Böckchen, das kaufte der Vater für zwei Silberstücke. Ein Böckchen. Da kam die Katz und fraß das Böckchen, das gekauft der Vater für zwei Silberstücke. Weiterhin kommen Hund, Stock, Feuer, Wasser, Stier, Schlächter und dann: der Todesengel und schlachtete den
Schlächter, zuletzt der Heilige, der gesegnet sei! und erschlug den Todesengel, der geschlachtet den Schlächter u. s. w.

Das Lied stellt die Schicksale des jüdischen Volkes im Gleichniß dar: der Vater ist, nach Leberecht’s Ausführungen vom Jahre 1731, Gott; das Böckchen das jüdische Volk; die zwei Silberstücke Moses und Aaron; Hund, Feuer, Wasser, Stier, Schlächter, Todesengel die Bedrücker des Judenvolkes von den Assyrern an bis zu den Türken, deren Macht d. i. den Todesengel, der Heilige, Gott selbst, dereinst vernichten wird. (Gustav  Eskuche  in Kasseler Kinderliedchen, 1891, Nr. 192)

Geschichte dieses Liedes: Der Herr der schickt den Jockel aus
Liederthema: Kinderlieder
Liederzeit: 19. Jahrhundert: Volkslieder (1827)
Variante des Kinderreims:  Kettenreime','Der Herr, der schickt den Jockel aus
Er soll den Haber schneiden
Der Jockel schneid’t den Haber nicht
Und kommt auch nicht nach Haus

Da schickt der Herr den Pudel aus
Er soll den Jockel beißen
Der Pudel beißt den Jockel nicht
Der Jockel schneid’t den Hafer nicht
Und kommt auch nicht nach Haus

Da schickt der Herr den Prügel aus
Er soll den Pudel prügeln
Der Prügel prügelt den Pudel nicht….

Da schickt der Herr das Feuer aus
Es soll den Prügel brennen
Das Feuer brennt den Prügel nicht…

Da schickt der Herr das Wasser aus
Es soll das Feuer löschen
Das Wasser löscht das Feuer nicht….

Da schickt der Herr den Ochsen aus
Er soll das Wasser saufen
Der Ochse säuft das Wasser nicht….

Da schickt der Herr den Metzger aus,
Er soll den Ochsen schlachten
Der Metzger schlacht’t den Ochsen
Der Ochse säuft das Wasser
Das Wasser löscht das Feuer
Das Feuer brennt den Prügel
Der Prügel prügelt den Pudel
Der Pudel beißt den Jockel
Der Jockel schneid’t den Haber
Und kommt dann auch nach Haus','["volksliederarchiv.de", "category-kinderlieder", "medien-der-kinder-lustfeld", "medien-kasseler-kinderliedchen", "medien-kinderlieder-aus-des-knaben-wunderhorn", "medien-macht-auf-das-tor", "liedergeschichten-der-herr-der-schickt-den-jockel-aus", "Geschichte dieses Liedes: Der Herr der schickt den Jockel aus", "Liederthema: Kinderlieder", "Liederzeit: 19. Jahrhundert: Volkslieder (1827)"]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='vla_der_herr_der_schickt_den_jockel_aus'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('vla_der_herr_der_schickt_den_jockel_aus','Der Herr der schickt den Jockel aus','Der Herr, der schickt den Jockel aus
Er soll den Haber schneiden
Der Jockel schneid’t den Haber nicht
Und kommt auch nicht nach Haus

Da schickt der Herr den Pudel aus
Er soll den Jockel beißen
Der Pudel beißt den Jockel nicht
Der Jockel schneid’t den Hafer nicht
Und kommt auch nicht nach Haus

Da schickt der Herr den Prügel aus
Er soll den Pudel prügeln
Der Prügel prügelt den Pudel nicht….

Da schickt der Herr das Feuer aus
Es soll den Prügel brennen
Das Feuer brennt den Prügel nicht…

Da schickt der Herr das Wasser aus
Es soll das Feuer löschen
Das Wasser löscht das Feuer nicht….

Da schickt der Herr den Ochsen aus
Er soll das Wasser saufen
Der Ochse säuft das Wasser nicht….

Da schickt der Herr den Metzger aus,
Er soll den Ochsen schlachten
Der Metzger schlacht’t den Ochsen
Der Ochse säuft das Wasser
Das Wasser löscht das Feuer
Das Feuer brennt den Prügel
Der Prügel prügelt den Pudel
Der Pudel beißt den Jockel
Der Jockel schneid’t den Haber
Und kommt dann auch nach Haus');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herr_der_schickt_den_jockel_aus_l1','vla_der_herr_der_schickt_den_jockel_aus','Der Herr der schickt den Jockel aus','https://www.volksliederarchiv.de/liedergeschichten/der-herr-der-schickt-den-jockel-aus/','history',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herr_der_schickt_den_jockel_aus_l2','vla_der_herr_der_schickt_den_jockel_aus','Kettenreime','https://www.volksliederarchiv.de/kinderreim/kettenreime/','reference',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herr_der_schickt_den_jockel_aus_l3','vla_der_herr_der_schickt_den_jockel_aus','Kinderlieder','https://www.volksliederarchiv.de/kinderlieder/','reference',NULL,3);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herr_der_schickt_den_jockel_aus_l4','vla_der_herr_der_schickt_den_jockel_aus','19. Jahrhundert: Volkslieder','https://www.volksliederarchiv.de/liederzeit/volkslied-1900/','taxonomy',NULL,4);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herr_der_schickt_den_jockel_aus_l5','vla_der_herr_der_schickt_den_jockel_aus','(1827)','https://www.volksliederarchiv.de/1827/','reference',NULL,5);
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('vla_der_herr_ist_mein_hirt','Der Herr ist mein Hirt','Музыка и слова: Verfasser unbekannt – keine Angaben','de','weimar_republic_1918_1933',NULL,'1921',NULL,'in Kinderklänge (1921)

Liederthema: Geistliche Lieder
Liederzeit: 1871-1918: Deutsches Kaiserreich (1921)','Der Herr ist mein Hirt
nichts mangeln mir wird
ihm will ich vertraun
dieweil er mich weidet
auf grünenden Aun

Er führt mich zum Quell
er labt meine Seel
leit ´ mich an der Hand
und führet mich heim
ins himmlische Land

Ob dunkel der Weg
kein Licht auf dem Steg
so bin ich ohne Graun
denn du Herr bist bei mir
ich darf dir vertrau´n','["volksliederarchiv.de", "category-geistliche-lieder", "medien-lieder-fuer-sonntagsschulen", "lieddichter-verfasser-unbekannt", "Liederthema: Geistliche Lieder", "Liederzeit: 1871-1918: Deutsches Kaiserreich (1921)"]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='vla_der_herr_ist_mein_hirt'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('vla_der_herr_ist_mein_hirt','Der Herr ist mein Hirt','Der Herr ist mein Hirt
nichts mangeln mir wird
ihm will ich vertraun
dieweil er mich weidet
auf grünenden Aun

Er führt mich zum Quell
er labt meine Seel
leit ´ mich an der Hand
und führet mich heim
ins himmlische Land

Ob dunkel der Weg
kein Licht auf dem Steg
so bin ich ohne Graun
denn du Herr bist bei mir
ich darf dir vertrau´n');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herr_ist_mein_hirt_l1','vla_der_herr_ist_mein_hirt','Geistliche Lieder','https://www.volksliederarchiv.de/geistliche-lieder/','reference',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herr_ist_mein_hirt_l2','vla_der_herr_ist_mein_hirt','1871-1918: Deutsches Kaiserreich','https://www.volksliederarchiv.de/liederzeit/lieder-aus-dem-deutschen-kaiserreich/','taxonomy',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herr_ist_mein_hirt_l3','vla_der_herr_ist_mein_hirt','(1921)','https://www.volksliederarchiv.de/1921/','reference',NULL,3);
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('vla_der_herr_ist_meine_zuversicht','Der Herr ist meine Zuversicht','Слова: Chr. Sturm – Музыка: auf die Melodie von Was Gott tut das ist wohlgetan','de','german_empire_1900_1918',NULL,'1906',NULL,'in Vierzig Grabgesänge (1906)

Liederthema: Geistliche Lieder, Grabgesänge
Year: 1906','Der Herr ist meine Zuversicht
mein bester Trost im Leben
dem fehlt es nie an Heil und Licht
der sich dem Herrn ergeben
Gott ist mein Gott! auf sein Gebot
wird meine Seele stille
mir genügt des Vaters Wille

In deine Hand befehl ich mich
mein Wohlsein und mein Leben
mein hoffend Auge blickt auf dich
dir will ich mir ergeben
Sei du mein Gott und einst meinTod
der Fels auf den ich traue
bis ich dein Anlitz schaue','["volksliederarchiv.de", "category-geistliche-lieder", "category-grabgesaenge", "medien-vierzig-grabgesaenge", "Liederthema: Geistliche Lieder, Grabgesänge", "Year: 1906"]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='vla_der_herr_ist_meine_zuversicht'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('vla_der_herr_ist_meine_zuversicht','Der Herr ist meine Zuversicht','Der Herr ist meine Zuversicht
mein bester Trost im Leben
dem fehlt es nie an Heil und Licht
der sich dem Herrn ergeben
Gott ist mein Gott! auf sein Gebot
wird meine Seele stille
mir genügt des Vaters Wille

In deine Hand befehl ich mich
mein Wohlsein und mein Leben
mein hoffend Auge blickt auf dich
dir will ich mir ergeben
Sei du mein Gott und einst meinTod
der Fels auf den ich traue
bis ich dein Anlitz schaue');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herr_ist_meine_zuversicht_l1','vla_der_herr_ist_meine_zuversicht','Geistliche Lieder','https://www.volksliederarchiv.de/geistliche-lieder/','reference',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herr_ist_meine_zuversicht_l2','vla_der_herr_ist_meine_zuversicht','Grabgesänge','https://www.volksliederarchiv.de/geistliche-lieder/grabgesaenge/','reference',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herr_ist_meine_zuversicht_l3','vla_der_herr_ist_meine_zuversicht','(1906)','https://www.volksliederarchiv.de/1906/','reference',NULL,3);
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('vla_der_herzensdieb','Vom Wald bin ich kommen','Музыка и слова: Verfasser unbekannt','de','german_empire_1900_1918',NULL,'1844',NULL,'Deutscher Liederhort II (1893, Nr. 612)

Liederthema: Liebeslieder
Liederzeit: 19. Jahrhundert: Volkslieder (1844)

Im „ Sesenheimer Liederbuch „. Ausgabe zu „ Goethe ’s Friederike“ von Freimund Pfeiffer 1844, S. 135. Jede Strophe schließt mit: Ei ja, ei ja, ei ei, ei ei, ei ja, ei ja. (Art Jodeln.) Scheinbar Volkslied, steht gleich hinter: „O Straßburg …“ Überschrift von mir, im Orig. keine. — ( Böhme )','Vom Wald bin ich kommen
Wo’s stockfinster ist
Und ich lieb dich von Herzen,
Das glaub mir gewiß
Ei ja, ei ja …

Da lacht er, da lacht er
Der schelmische Dieb!
Als wenn er nicht wüßte,
Wie ich ihn Hab lieb.
Ei ja, ei ja …

Gib mir, was du gestohlen
Heraus gib mir mein Herz
Du behalts nur, du behalts nur
Es war ja nur mein Scherz
Ei ja, ei ja …

Du behalts nur, behalts nur
Es war ja nur mein Scherz
Ich gehör dein, du gehörst mein
Zusammen das Herz
Ei ja, ei ja …','["volksliederarchiv.de", "category-liebeslieder", "medien-deutscher-liederhort", "medien-sesenheimer-liederbuch", "Liederthema: Liebeslieder", "Liederzeit: 19. Jahrhundert: Volkslieder (1844)"]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='vla_der_herzensdieb'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('vla_der_herzensdieb','Vom Wald bin ich kommen','Vom Wald bin ich kommen
Wo’s stockfinster ist
Und ich lieb dich von Herzen,
Das glaub mir gewiß
Ei ja, ei ja …

Da lacht er, da lacht er
Der schelmische Dieb!
Als wenn er nicht wüßte,
Wie ich ihn Hab lieb.
Ei ja, ei ja …

Gib mir, was du gestohlen
Heraus gib mir mein Herz
Du behalts nur, du behalts nur
Es war ja nur mein Scherz
Ei ja, ei ja …

Du behalts nur, behalts nur
Es war ja nur mein Scherz
Ich gehör dein, du gehörst mein
Zusammen das Herz
Ei ja, ei ja …');
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herzensdieb_l1','vla_der_herzensdieb','Liebeslieder','https://www.volksliederarchiv.de/mit-herz-und-sinn/liebeslieder/','reference',NULL,1);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herzensdieb_l2','vla_der_herzensdieb','19. Jahrhundert: Volkslieder','https://www.volksliederarchiv.de/liederzeit/volkslied-1900/','taxonomy',NULL,2);
INSERT OR REPLACE INTO song_links (id,song_id,title,url,kind,version_id,sort_order) VALUES ('vla_der_herzensdieb_l3','vla_der_herzensdieb','(1844)','https://www.volksliederarchiv.de/1844/','reference',NULL,3);
INSERT OR REPLACE INTO songs (id,title,subtitle,lang,country,period,year,source,notes,lyrics,tags_json,lang_locked,status,created_at,updated_at) VALUES ('vla_der_herzog_ernst_aus_schwabenland_die_ritterfahrt','Der Herzog Ernst aus Schwabenland (Die Ritterfahrt)','Музыка и слова: anonym – aus Norddeutschland – Ernst – Sage, Schwaben','de','german_empire_1900_1918',NULL,'1841',NULL,'In Deutsche Volkslieder mit ihren Original-Weisen (1841, Band II)

Liederthema: Balladen
Liederzeit: 16. Jahrhundert (1470)
Schlagwort: Kreuzzüge | Ritter |
Ort: Schwaben','Der Herzog Ernst aus Schwabenland
Muß fliehen aus des Königshand
Er stieg zu Schiff mit dem Geleit
Das Meer war tief , das Meer war breit
und scheint auch alle Hilfe fern
Vertraue du nur Gott dem Herrn

Im Meer stand ein Magnetenberg
Der zog des Herren Schifflein an
Das Wasser stand rings um das Schiff
der edle Herr konnt nicht vom Schiff
und scheint auch alle Hilfe fern
Vertraue du nur Gott dem Herrn

Der Ochsenhäute viel da sein
Da näht der Eine den Andern drein
Der Vogel Greif fliegt schon daher
Meint daß es bloß ein Ochse wär
und scheint auch alle Hilfe fern
Vertraue du nur Gott dem Herrn

Und trägt ihn hoch gar durch die Luft
bis tief hinab in seine Kluft
Dann fliegt der Vogel Greif hinaus
Ein jeder Ritter schneidet sich aus
und scheint auch alle Hiilfe fern
Vertraue du nur Gott dem Herrn

Der Herzog kam in die Wilderniß
Kein Weg kein Steg war ihm gewiß
Da war ein Bach gar schnell und groß
Der Herr erbaut ein mächtig Floß
und scheint auch alle Hilfe fern
Vertraue du nur Gott dem Herrn

Er fuhr hinab mit dem Gesind
Er fuhr so wie ein Bolz geschwind
Drei Nacht durch eine Höhle hin
Nicht Sonn und Mond darinnen schien
und scheint auch alle Hilfe fern
Vertraue du nur Gott dem Herrn','["volksliederarchiv.de", "category-balladen", "orte-schwaben", "medien-deutsche-volkslieder-1840-41", "Liederthema: Balladen", "Liederzeit: 16. Jahrhundert (1470)", "Schlagwort: Kreuzzüge | Ritter |", "Ort: Schwaben"]',1,'published',COALESCE((SELECT created_at FROM songs WHERE id='vla_der_herzog_ernst_aus_schwabenland_die_ritterfahrt'), datetime('now')),datetime('now'));
INSERT OR REPLACE INTO songs_fts(song_id,title,lyrics) VALUES ('vla_der_herzog_ernst_aus_schwabenland_die_ritterfahrt','Der Herzog Ernst aus Schwabenland (Die Ritterfahrt)','Der Herzog Ernst aus Schwabenland
Muß fliehen aus des Königshand
Er stieg zu Schiff mit dem Geleit
Das Meer war tief , das Meer war breit
und scheint auch alle Hilfe fern
Vertraue du nur Gott dem Herrn

Im Meer stand ein Magnetenberg
Der zog des Herren Schifflein an
Das Wasser stand rings um das Schiff
der edle Herr konnt nicht vom Schiff
und scheint auch alle Hilfe fern
Vertraue du nur Gott dem Herrn

Der Ochsenhäute viel da sein
Da näht der Eine den Andern drein
Der Vogel Greif fliegt schon daher
Meint daß es bloß ein Ochse wär
und scheint auch alle Hilfe fern
Vertraue du nur Gott dem Herrn

Und trägt ihn hoch gar durch die Luft
bis tief hinab in seine Kluft
Dann fliegt der Vogel Greif hinaus
Ein jeder Ritter schneidet sich aus
und scheint auch alle Hiilfe fern
Vertraue du nur Gott dem Herrn

Der Herzog kam in die Wilderniß
Kein Weg kein Steg war ihm gewiß
Da war ein Bach gar schnell und groß
Der Herr erbaut ein mächtig Floß
und scheint auch alle Hilfe fern
Vertraue du nur Gott dem Herrn

Er fuhr hinab mit dem Gesind
Er fuhr so wie ein Bolz geschwind
Drei Nacht durch eine Höhle hin
Nicht Sonn und Mond darinnen schien
und scheint auch alle Hilfe fern
Vertraue du nur Gott dem Herrn');