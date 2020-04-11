# Scénář

## Představení <!-- Greenscreen postavy -->
Dobrý den, jmenuji se Tomáš Rohlínek, jsem student SPŠ Sokolské v Brně, instruktor zájmového kroužku na pobočce DDM Helceletova Brno, Robotárně, ale hlavně nadšenec do robotiky.
Chtěl bych představit projekt na kterém poslední dva roky pracuji.

Jedná se o ekosystém periferií pro soutěžní roboty.

## Zdůvodnění
Z mnoha důvodů nemám rád Lego Mindstorms, například kvůli jeho konstrukční omezenosti, špatné implementaci složitějších programů a vysoké ceně.  
Avšak Mindstorms zvládá jednu věc úžasně.
Systém připojování rozšiřujících modulů. <!-- https://makecode.mindstorms.com -->
I přestože, že je jejich výběr značně omezen a mohou být připojeny pouze čtyři najednou, je tento systém uživatelsky velmi přívětivý.

Právě připojování rozšiřujících modulů se může totiž při stavbě robotů projevit jako obtížné zvláště pokud využíváme mikroprocesorů ze sady Arduino a modolů pro ně vytvořené, neboť každý senzor většinou využívá jinou sběrnici, pokud vůbec nějakou využívá a není připojen paralelně.
Robot potom často může vypadat podobně jako tento sloup: <!-- https://www.jimonlight.com/2018/03/25/electrical-bird-nests-death-worldwide/ --> což není pouze neestetické, ale jakékoliv debugování a zásahy do tohoto zapojení jsou nejen složité, ale zároveň hrozí způsobit ještě větší problém, neboť můžeme povytáhnou nějaký jiný kabel a způsobit tak nefunkčnost dalších senzorů, nebo celého robota, pípadně robota kvůli zkratu odrovnat úplně.

Při tom s trochou snahy se dají všechny senzory se správnou modifikací připojit na jednu jednoduše ovladatelnou linku, která může sestávat pouze ze 4 drátů.
Třeba jako právě u Lega, který využívá 6 drátu: <!-- https://www.lego.com/cdn/cs/set/assets/bltbfd7362e8a0e487e/45514.jpg -->
Zde jsou navíc tyto dráty spojeny do kabelu s unifikovaným konektorem, což opět napomáha přívětivosti, zároveň se však bohužel projevuje negativně na cenně.

Pro zlepšení uživatelské přívětivosti jsem se stejný přístup jedné unifikované sběrnice rozhodl použít při vytváření svého systému senzorů.

<!-- +- 2,5 minuty -->

## Sběrnice
Hlavní součásti tohoto ekosystému je sběrnice a protokol pro komunikaci mezi moduly.
Komunikace probíhá po sběrnici RS-485, ta byla zvolena kvůli její robustnosti.
Protokol pak vychází z protokolu Modbus a protokolu Avakar.
Oproti oběma je zde přidán také druhý adresační byte.

## Traffic <!-- Animace protokolu s logem -->
Na počátku komunikace pošle master zařízení uvítací zprávu obsahující číslo sezení.
Všechny slave zařízení si následně zkontrolují, že mají uložené stejné číslo sezení, pokud ne, pošlou master zařízení požadavek na udělení adresy.
Přijatou adresu si spolu s číslem sezení uloží do dlouhodobé paměti.

<!-- +- 1 minuta -->

# Senzory
Součástí ekosystému je také několik senzorů.
Řady senzorů však nejsou limitované na ty již vytvořené neboť přidat senzor do tohoto systému je jednoduché.

## Omni ultra
Nejdůležitější senzor ze sady je v tuto chvíli všesměrový ultrazvukový senzor, nebo také Janus omni ultra.
Slouží k určení vektoru dvou robotů případně robota a okolí, což je důležitý předpoklad pro účast v soutěžích pro autonomní roboty.

Omni ultra má dvě verze, jednu pro soutěže s více roboty, která vyžaduje umístění vysílače <!-- Fotka vysílače --> na soupeřova robota výhodou této verze je přenější měření, zároveň se však zbavujeme možnosti sledovat okolí, neboť toho není tento senzor schopen.
<!-- Vizulizace fungování omni ultra a možných problémů -->
Druhá verze nevyžaduje vysílač, jedná se defakto pouze o spojení osmi senzorů pro jednoduší ovládání a vyčítatelnost. To nám dá možnost sledovat okolí, nejsme však schopni rozlišit, jestli dostáváme vzálenost od soupeře, nebo statického objektu na herním poli.

Na tomto modulu je také možno vidět právě zásadní snížení počtu drátů nutných pro obsluhu senzoru.
Nahoře vidíte dráty vedoucí přímo z jednotlivých senzorů.
Dole je naopak vidět kabel vycházející z procesoru modulu, zde pro kompaktnost posunutý pod kryt robota.

<!-- +- 1 minuta -->
# Budoucnost

## HTC Vive

Tato práce má spoustu prostoru kam se rozvíjet, hlavně co se počtu senzorů týká.
Nejzajímavějším je určitě modul, který využije majáčků ze sady HTC Vive pro lokalizaci robota na hřišti s přesností na několik milimetrů.
Tyto majáčky jsou navíc jednoduché na instalaci a nevyžadují žádnou komunikaci s přijímačem.
<!-- Foto htc vive + video? -->

# Závěr
V tomto stavu poskytuje práce robotikům platformu na které mohou stavět své roboty, ať už s využítím již hotových modulů, nebo s vytvořením dalších vlastních modulů.

Na závěr bych chtěl poděkovat především magistru Burdovi za jeho trpělivost při vedení této práce, ale také organizátorskému týmu SOČ za zorganizování SOČ i v těchto atypických podmínkách.
Vám bych pak rád poděkoval za pozornost. 