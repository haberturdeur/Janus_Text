# Scénář

## Představení <!-- Greenscreen postavy -->
Dobrý den, jmenuji se Tomáš Rohlínek, jsem student SPŠ Sokolské v Brně, instruktor zájmového kroužku na pobočce DDM Helceletova Brno, Robotárně, ale hlavně nadšenec do robotiky.
Chtěl bych vám představit projekt na které jsem poslední dva roky pracoval.

## Zdůvodnění
Osobně nemám z mnoha důvodů rád Lego Mindstorms.
Jedním z mnoha důvodů může být například jeho omezenost, co se konstrukce týče, druhým faktorem je pak nepochybně vysoká cena.
Jedna z věcí kterou tato stavebnice zvládá poměrně dobře jsou rozšiřující moduly, i přestože je jejich výběr značně omezen, jejich systém propojování jednotlivých senzorů je velmi uživatelsky přívětivý, pomineme-li fakt, že mohou být připojeny pouze 4 najednou.

Stejný přístup jsem se proto rozhodl použít při vytváření svého systému senzorů.

## Sběrnice
Hlavní součásti tohoto ekosystému je sběrnice a protokol pro komunikaci mezi moduly.
Komunikace probíhá po sběrnici RS-485, ta byla zvolena kvůli její robustnosti.
Protokol pak vychází z protokolu Modbus a protokolu Avakar.
Oproti oběma je zde přidán také druhý adresační byte.

## Traffic
<!-- Animace protokolu s logem -->

Na počátku komunikace pošle master zařízení uvítací zprávu obsahující číslo sezení.
Všechny slave zařízení si následně zkontrolují, že mají uložené stejné číslo sezení, pokud ne, pošlou master zařízení požadavek na udělení adresy.
Přijatou adresu si spolu s číslem sezení uloží do dlouhodobé paměti.

# Senzory

## Omni ultra

<!-- Vizulizace fungování omni ultra a možných problémů -->

# Budoucnost

## HTC Vive