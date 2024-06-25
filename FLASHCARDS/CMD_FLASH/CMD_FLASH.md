
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md)

---

### CMD_FLASH

---

* [](#)

---

#### AUDI

```

-------------------------------------------------------

- minden egy fajl
- kis programok
- programok osszekapcsolasa
- konfig fajlok szovegfajlokban

-------------------------------------------------------

- hw: ram, merevlemez, cpu, etc
- kernel: os magja, hardwareket kezeli
- shell: terminal/cmd line, parancsokat lehet beirni, hid a userek es a kernel kozott
- rendszer eszkozok: a felhasznalo eleri az os funkcioit

-------------------------------------------------------

- shell: <user>@<host><actual dir>

-------------------------------------------------------

/ - gyokerkonyvtar
/home - user sajat konyvtara
/bin, /sbin - rendszerkonfig fajlok
/usr - osszes program
/usr/local - local disztribuciofuggetlen bovitesek
/usr/bin - altalanos programok
/usr/sbin - rendszergazda programjai
/usr/share/doc - dokufajlok
/tmp, /var/tmp - ideiglenes fajlok
/opt - kulon telepitheto softwarek

-------------------------------------------------------

whoami - aktualis userem
id - user azonositoja (id)
hostname - host neve kiir/beallit
uname - os neve + hw info
uptime - aktualis rendszerido 
pwd - aktualis konyvtar
who - bejelentkezett userek

-------------------------------------------------------

pwd : aktualis konyvtar kiirasa
ls : aktualis konyvtar fajljai
ls -l : tobb info a fajlokrol az aktualis konyvtarbol
ls -la : rejtett fajlok
cd /dev/shm : change directory to /dev/shm
cd .. : egy szinttel feljebb lep

touch info.txt : ures file letrehozasa
mkdir SAP : sap konyvtar letrehozasa
mkdir -p files/local/user/documents : szulokonyvtar hozzaadasa
tree . : struktur megtekintese
rm : fajl torlese
rmdir files/local/user/documents : konyvtar torlese
mv file path : masolas
mv name new_name : atnevezes

vi test.txt
esc >> i >> szoveg.
esc >> : >> wq!
cat test.txt : test.tx kiiratasa
u : undo
/keresett_szoveg 

less /etc/passwd : aktualis oldal
more /etc/passwd : nagy mennyisegu adatot tolt be
head : elso 10 sor
tail : utolso 10 sor

grep hello <file> : osszes sor egy fileban ami tartalmazza a hellot
cat /etc/passwd | grep "/bin/bash" : userek akiknek az alapertelmezett shelljuk a /bin/bash
| : ket parancsot kapcsol ossze

tulajdonos - csoport - mindenki mas
421 - 421 - 421
rwx - rwx - rwx
111 - 111 - 111

/etc/passwd : userekkel kapcsolatos adatok (csoportok)

chmod 754 shell
rwx - r-x - r--

chown user:group filename

ps -ef | grep ssh : kiirja a futo ssh folyamatokat, fontos a PID

df -h : lemezterulet allapot
df -g : aixra
df -h . : aktualis konyvtar

mounted on : az adott file rendszer mely konyvtarhoz van csatolva a rendszerben 


-------------------------------------------------------

-------------------------------------------------------

-------------------------------------------------------

-------------------------------------------------------

-------------------------------------------------------

-------------------------------------------------------

-------------------------------------------------------
```

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---
