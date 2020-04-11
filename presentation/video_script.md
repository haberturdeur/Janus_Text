# Scénář

## Představení <!-- Greenscreen postavy -->
Dobrý den, jmenuji se Tomáš Rohlínek, jsem student SPŠ Sokolské v Brně, instruktor zájmového kroužku na pobočce DDM Helceletova Brno, Robotárně, ale hlavně nadšenec do robotiky.
Chtěl bych představit projekt na kterém poslední dva roky pracuji.

## Zdůvodnění
Nemám z mnoha důvodů rád Lego Mindstorms, například jeho konstrukční omezenost, (najdi si trojici) a vysoká cena. 
Avšak Mindstorms zvládá jednu věc perfektně. Rozšiřující moduly. I přestože, že je jejich výběr značně omezen a mohou být připojeny pouze čtyři najednou, (nacpat něco pozitivního, je potřeba mít silnější pozitivní argument) a systém propojování jednotlivých senzorů je uživatelsky velmi přívětivý.

Proto jsem se stejný přístup rozhodl použít při vytváření svého systému senzorů.

(hoď sem laický tldr; absolutně netuším o čem mluvíš)
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
