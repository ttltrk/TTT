
---

### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### DataStage

---

* [INTRO](https://github.com/ttltrk/TTT/blob/master/DS/INTRO/INTRO.md)
* [DEPLOYMENT](https://github.com/ttltrk/TTT/blob/master/DS/DEPLOYMENT/DEPLOYMENT.md)
* [DATASTAGE_ADMINISTRATION](https://github.com/ttltrk/TTT/blob/master/DS/DATASTAGE_ADMINISTRATION/DATASTAGE_ADMINISTRATION.md)
* [METADATA](https://github.com/ttltrk/TTT/blob/master/DS/METADATA/METADATA.md)
* [PARALLEL_JOBS](https://github.com/ttltrk/TTT/blob/master/DS/PARALLEL_JOBS/PARALLEL_JOBS.md)
* [SEQUENTIAL_DATA](https://github.com/ttltrk/TTT/blob/master/DS/SEQUENTIAL_DATA/SEQUENTIAL_DATA.md)
* [PARTITIONING_AND_COLLECTING_ALGORITHMS](https://github.com/ttltrk/TTT/blob/master/DS/PARTITIONING_AND_COLLECTING_ALGORITHMS/PARTITIONING_AND_COLLECTING_ALGORITHMS.md)
* [COMBINE_DATA](https://github.com/ttltrk/TTT/blob/master/DS/COMBINE_DATA/COMBINE_DATA.md)
* [GROUP_PROCESSING_STAGES](https://github.com/ttltrk/TTT/blob/master/DS/GROUP_PROCESSING_STAGES/GROUP_PROCESSING_STAGES.md)
* [TRANSFORMER_STAGE](https://github.com/ttltrk/TTT/blob/master/DS/TRANSFORMER_STAGE/TRANSFORMER_STAGE.md)
* [REPOSITORY_FUNCTIONS](https://github.com/ttltrk/TTT/blob/master/DS/REPOSITORY_FUNCTIONS/REPOSITORY_FUNCTIONS.md)
* [RELATIONAL_DATA](https://github.com/ttltrk/TTT/blob/master/DS/RELATIONAL_DATA/RELATIONAL_DATA.md)
* [JOB_CONTROL](https://github.com/ttltrk/TTT/blob/master/DS/JOB_CONTROL/JOB_CONTROL.md)

---

* [link](https://www.ibm.com/docs/en/iis/11.5?topic=jobs-processing-data)

---

- ako vyzera jeden den?
- ako vyzera tyzden?
- ako zavriet cyklus?
- su tyzdenne/mesacne uzavierky?
- co ked nieco failne, standard postup?
- co ked nieco failne o 16:59?
- ops/dev percentualne?
- ake stabilne to je?

- co by bolo super automatizovat
- mame nieco na backup? - ds jobs
- mame nieco na validaciu? - account validation, count validation
- ak nieco nesedi okolo counts, dalsi postup?
- koho kontaktnut ak mame problemy okolo environment, riesime sam alebo infra team, customer contact, supervisor?

- kto je okrem teba v praci s kym sa da kooperovat ak nahodou ty tam nebudes?
---

#### Transformer stage

The Transformer stage is a processing stage. It appears under the processing category in the tool palette.

A transzformátor szakasz egy feldolgozási szakasz. Az eszközpalettán a feldolgozási kategória alatt jelenik meg.

A transzformátor szakaszok lehetővé teszik az adatokra alkalmazható átalakítások létrehozását. Ezek az átalakítások lehetnek egyszerűek vagy összetettek, és alkalmazhatók az adatok egyes oszlopaira. Az átalakítások függvénykészlettel határozhatók meg. További információkért lásd: Párhuzamos transzformációs függvények.

A transzformátor fokozatok egyetlen bemenettel és tetszőleges számú kimenettel rendelkezhetnek. Elutasító hivatkozással is rendelkezhet, amely minden olyan sort átvesz, amely írási hiba vagy kifejezéskiértékelési hiba miatt nem lett beírva egyik kimeneti hivatkozásra sem.

#### BASIC Transformer stage

The BASIC Transformer stage is a processing stage that appears under the processing category in the tool palette in the Transformer shortcut container. It gives access to BASIC transforms and functions.

---

#### Aggregator stage

The Aggregator stage is a processing stage. It classifies data rows from a single input link into groups and computes totals or other aggregate functions for each group. The aggregator stage gives you access to grouping and summary operations.

Az aggregátor szakasz egy feldolgozási szakasz. Az egyetlen bemeneti hivatkozásból származó adatsorokat csoportokba sorolja, és minden csoporthoz összesítést vagy egyéb összesített függvényt számít ki. Az aggregátor szakasz hozzáférést biztosít a csoportosítási és összegzési műveletekhez.

Az aggregátor szakasz egy feldolgozási szakasz. Az egyetlen bemeneti hivatkozásból származó adatsorokat csoportokba sorolja, és minden csoporthoz összesítést vagy egyéb összesített függvényt számít ki. Az egyes csoportok összesített összegét a színpad egy kimeneti kapcsolaton keresztül adja ki.

Az aggregátor szakasz hozzáférést biztosít a csoportosítási és összegzési műveletekhez. A minták feltárásának egyik legegyszerűbb módja egy rekordgyűjteményben a hasonló jellemzőkkel rendelkező rekordok csoportosítása, majd a csoport összes rekordjára vonatkozó statisztikák kiszámítása. Ezeket a statisztikákat ezután felhasználhatja a különböző csoportok tulajdonságainak összehasonlítására. Például a pénztárgép-tranzakciókat tartalmazó rekordok csoportosíthatók a hét napjai szerint, hogy megtudják, melyik napon volt a legtöbb tranzakció, a legnagyobb összegű bevétel stb.

---

#### Join stage

The Join stage is a processing stage that performs join operations on two or more data sets input to the stage and then outputs the resulting data set.

The Lookup stage is one of three stages that join tables based on the values of key columns. The other two are:

- Join stage - Join stage
- Merge stage - Merge Stage

The three stages differ mainly in the memory they use, the treatment of rows with unmatched keys, and their requirements for data being input (for example, whether it is sorted).

Az összekapcsolási szakasz egy feldolgozási szakasz, amely összekapcsolási műveleteket hajt végre a szakaszba bevitt két vagy több adatkészleten, majd kiadja az eredményül kapott adatkészletet.

A Join szakasz egy feldolgozási szakasz. Összekapcsolási műveleteket hajt végre két vagy több, a színpadra bevitt adatkészleten, majd kiadja az eredményül kapott adatkészletet. A Join szakasz egyike annak a három szakasznak, amelyek a kulcsoszlopok értékei alapján egyesítik a táblákat. A másik kettő:

Keresési szakasz
Merge Stage

#### Merge Stage

The Merge stage is a processing stage. It can have any number of input links, a single output link, and the same number of reject links as there are update input links. The Merge stage combines a master data set with one or more update data sets.

The Lookup stage is one of three stages that join tables based on the values of key columns. The other two are:

- Join stage - Join stage
- Merge stage - Merge Stage

The three stages differ mainly in the memory they use, the treatment of rows with unmatched keys, and their requirements for data being input (for example, whether it is sorted).

Az Egyesítés szakasz egy feldolgozási szakasz. Bármennyi bemeneti hivatkozást, egyetlen kimeneti hivatkozást és ugyanannyi elutasító hivatkozást tartalmazhat, ahány frissítési bemeneti hivatkozás van. Az Egyesítés szakasz egy törzsadatkészletet egy vagy több frissítési adatkészlettel kombinál.

Az Egyesítés szakasz egyike annak a három szakasznak, amelyek a kulcsoszlopok értékei alapján egyesítik a táblákat. A másik kettő:
Csatlakozz a színpadhoz
Keresési szakasz
A három szakasz főként az általuk használt memóriában, az össze nem illő kulcsokkal rendelkező sorok kezelésében, valamint a bevitt adatokkal szemben támasztott követelményekben (például rendezve) tér el.

#### Lookup Stage

The Lookup stage is a processing stage that is used to perform lookup operations on a data set read into memory from any other Parallel job stage that can output data. The most common use for a lookup is to map short codes in the input data set onto expanded information from a lookup table which is then joined to the incoming data and output.

The Lookup stage is one of three stages that join tables based on the values of key columns. The other two are:

- Join stage - Join stage
- Merge stage - Merge Stage

A kikeresési szakasz egy olyan feldolgozási szakasz, amely a memóriába olvasott adatkészleten végzett keresési műveletek végrehajtására szolgál bármely más párhuzamos feladatszakaszból, amely adatokat tud kiadni. A keresés legáltalánosabb felhasználási módja a bemeneti adatkészletben található rövid kódok leképezése egy keresési tábla kibővített információira, amelyeket azután a bejövő adatokhoz és a kimenethez kapcsolnak.

A keresési szakasz egy feldolgozási szakasz. Kikeresési műveletek végrehajtására szolgál bármely más párhuzamos feladatszakaszból a memóriába beolvasott adatkészleten, amely adatokat tud kiadni. Közvetlenül egy DB2® vagy Oracle adatbázisban is végezhet keresést (lásd: Kapcsolódási útmutatók ehhez a két adatbázishoz) vagy egy keresési fájlkészlet szakaszában található keresési táblában (lásd: Keresési fájlkészlet szakasz).

A keresés legáltalánosabb felhasználási módja a bemeneti adatkészletben található rövid kódok leképezése egy keresési tábla kibővített információira, amelyeket azután a bejövő adatokhoz és a kimenethez kapcsolnak. Például rendelkezhet egy bemeneti adatkészlettel, amely egyesült államokbeli ügyfelei nevét és címét tartalmazza. A bemutatott adatok az államot kétbetűs egyesült államokbeli irányítószámként azonosítják, de szeretné, hogy az adatok az állam teljes nevét viseljék. Meghatározhat egy keresési táblát, amely az állapotokhoz illesztett kódok listáját tartalmazza, és a kódot kulcsoszlopként határozza meg. Miközben a keresési szakasz minden sort beolvas, a kulcs segítségével megkeresi az állapotot a keresési táblázatban. Hozzáadja az állapotot a kimeneti hivatkozáshoz definiált új oszlophoz, és így minden címhez hozzáadódik a teljes állapotnév. Ha valamelyik állapotkódot hibásan adtak meg az adatkészletben, akkor a kód nem található meg a keresőtáblázatban, így a rekord elutasításra kerül.

A keresések egy sor érvényesítésére is használhatók. Ha a keresési táblázatban nincs a kulcs értékeinek megfelelő bejegyzés, a sor elutasításra kerül.

---

#### Sort stage

The Sort stage is a processing stage that is used to perform more complex sort operations than can be provided for on the Input page Partitioning tab of parallel job stage editors.

A rendezési szakasz egy olyan feldolgozási szakasz, amely bonyolultabb rendezési műveletek végrehajtására szolgál, mint amennyit a párhuzamos feladatszakasz-szerkesztők Bemeneti lap Particionálás lapján megadhat.

Használhatja a Rendezés szakaszt is egy kifejezettebb, egyszerű rendezési művelet beszúrására, ahol könnyebben érthetővé szeretné tenni a munkáját. A Rendezés szakasznak egyetlen bemeneti kapcsolata van, amely a rendezendő adatokat szállítja, és egyetlen kimeneti kapcsolat, amely a rendezett adatokat hordozza.

#### Funnel Stage

The Funnel stage is a processing stage that copies multiple input data sets to a single output data set. You can use this operation for combining separate data sets into a single large data set.

A tölcsér szakasz egy olyan feldolgozási szakasz, amely több bemeneti adatkészletet másol egyetlen kimeneti adatkészletbe. Ezzel a művelettel különálló adatkészleteket egyetlen nagy adatkészletté kombinálhat.

A tölcsér szakasz egy feldolgozási szakasz. Több bemeneti adatkészletet másol egyetlen kimeneti adatkészletbe. Ez a művelet akkor hasznos, ha külön adatkészleteket egyetlen nagy adathalmazba egyesít. A színpad tetszőleges számú bemeneti kapcsolattal és egyetlen kimeneti kapcsolattal rendelkezhet.

#### Remove Duplicates Stage

The Remove Duplicates stage is a processing stage. It can have a single input link and a single output link.
The Remove Duplicates stage takes a single sorted data set as input, removes all duplicate rows, and writes the results to an output data set.

Az Ismétlődések eltávolítása szakasz egy feldolgozási szakasz. Egyetlen bemeneti és egyetlen kimeneti kapcsolattal rendelkezhet.

Az Ismétlődések eltávolítása szakasz egyetlen rendezett adatkészletet vesz be bemenetként, eltávolítja az összes ismétlődő sort, és az eredményeket egy kimeneti adatkészletbe írja.
Megjelenít egy feladatot, amely rendezi az adatkészletet, majd az Ismétlődések eltávolítása szakaszt használja az ismétlődő sorok eltávolításához
Az ismétlődő rekordok eltávolítása az adatkészletek további feldolgozás előtti tisztításának általános módja. Két sort ismétlődőnek tekintünk, ha szomszédosak a bemeneti adatkészletben, és azonos értékeik vannak a kulcsoszlop(ok) számára. A kulcsoszlop bármely olyan oszlop, amelyet annak meghatározására jelöl ki, hogy két sor azonos-e.

Az Ismétlődések eltávolítása szakaszba bevitt adatkészletet úgy kell rendezni, hogy az azonos kulcsértékekkel rendelkező rekordok egymás mellett legyenek. Ezt elérheti a beviteli lap Particionálás lapján elérhető szakaszon belüli rendezési lehetőségekkel, vagy egy explicit rendezési szakaszsal, amely az Ismétlődések eltávolítása szakaszt táplálja.

---

#### Compress stage

The Compress stage is a processing stage. This stage uses the UNIX compress or GZIP utility to compress a data set.

#### Expand Stage

The Expand stage is a processing stage that converts a previously compressed data set back into a sequence of records from a stream of raw binary data.

---

#### Copy stage

The Copy stage is a processing stage. The Copy stage copies a single input data set to a number of output data sets. Some SMP systems allow scalability of disk I/O.

#### Modify stage

The Modify stage alters the record schema of its input data set. The modified data set is then output. You can drop or keep columns from the schema, or change the type of a column.

A Módosítás szakasz megváltoztatja bemeneti adatkészletének rekordsémáját. A módosított adatkészlet ezután kerül kiadásra. Eldobhat vagy megtarthat oszlopokat a sémából, vagy módosíthatja az oszlop típusát.

A Módosítás szakasz egy feldolgozási szakasz. Egyetlen bemeneti és egyetlen kimeneti kapcsolattal rendelkezhet.

A Módosítás szakasz megváltoztatja bemeneti adatkészletének rekordsémáját. A módosított adatkészlet ezután kerül kiadásra. Eldobhat vagy megtarthat oszlopokat a sémából, vagy módosíthatja az oszlop típusát.

#### Filter Stage

The Filter stage is a processing stage. This stage transfers, unmodified, the records of the input data set which satisfy the specified requirements and filters out all other records.

A szűrő szakasz egy feldolgozási szakasz. Ez a szakasz módosítatlanul továbbítja a bemeneti adatkészlet azon rekordjait, amelyek megfelelnek a meghatározott követelményeknek, és kiszűri az összes többi rekordot.

A szűrő szakasz egy feldolgozási szakasz. Egyetlen bemeneti hivatkozással és tetszőleges számú kimeneti hivatkozással és opcionálisan egyetlen elutasítási hivatkozással rendelkezhet.

A Szűrő szakasz módosítatlanul továbbítja a bemenő adatkészletnek a meghatározott követelményeknek megfelelő rekordjait, és kiszűri az összes többi rekordot. Különböző követelményeket határozhat meg a sorok különböző kimeneti hivatkozásokon történő leirányításához. A kiszűrt rekordok szükség esetén visszautasítási hivatkozásra irányíthatók.

#### External Filter stage

The External Filter stage is a processing stage that allows you to specify a UNIX command that acts as a filter on the data you are processing.

#### Change Capture stage

The Change Capture stage is a processing stage that compares two data sets and makes a record of the differences.

A Change Capture szakasz egy feldolgozási szakasz, amely két adatkészletet hasonlít össze, és rögzíti a különbségeket.

A Change Capture Stage egy feldolgozási szakasz. A szakasz összehasonlít két adatkészletet, és rögzíti a különbségeket.

A Change Capture szakasz két bemeneti adatkészletet vesz fel, amelyeket előtte és utána jelöl, és egyetlen adatkészletet ad ki, amelynek rekordjai az előző adatkészleten végrehajtott módosításokat reprezentálják, hogy megkapják az utóadatkészletet. A szakasz egy változási adatkészletet állít elő, amelynek tábladefiníciója az adathalmaz tábladefiníciójából egy oszlop hozzáadásával kerül átadásra: egy változtatási kód a négy műveletet kódoló értékekkel: beszúrás, törlés, másolás és szerkesztés. A particionálás megőrzése jelző a változási adatkészleten van beállítva.

#### Change Apply stage

The Change Apply stage is a processing stage. It takes the change data set, that contains the changes in the before and after data sets, from the Change Capture stage and applies the encoded change operations to a before data set to compute an after data set.

#### Difference stage

The Difference stage is a processing stage. It performs a record-by-record comparison of two input data sets, which are different versions of the same data set designated the before and after data sets.

A különbség szakasz egy feldolgozási szakasz. Rekordonként összehasonlítja két bemeneti adatkészletet, amelyek ugyanannak az adathalmaznak a különböző verziói, amelyeket az előtte és utána adatkészletként jelöltek meg.

#### Compare stage

The Compare stage is a processing stage. This stage performs a column-by-column comparison of records in two presorted input data sets.

Az Összehasonlítás szakasz egy feldolgozási szakasz. Ez a szakasz két előre rendezett bemeneti adatkészlet rekordjainak oszloponkénti összehasonlítását hajtja végre.

Az Összehasonlítás szakasz egy feldolgozási szakasz. Két bemeneti és egyetlen kimeneti kapcsolata lehet.

Az Összehasonlítás szakasz két előre rendezett bemeneti adatkészlet rekordjainak oszloponkénti összehasonlítását hajtja végre. Az összehasonlítást a megadott kulcsoszlopokra korlátozhatja.

Az Összehasonlítás szakasz nem módosítja a tábladefiníciót, a particionálást vagy a rekordok tartalmát egyik bemeneti adatkészletben sem. Mindkét adatkészletet érintetlenül továbbítja egyetlen, a színpad által generált kimeneti adatkészletbe. Az összehasonlítási eredményeket a kimeneti adatkészletben is rögzítjük.

Ebben a szakaszban használhatja a futásidejű oszlopterjesztést, és engedélyezheti az InfoSphere® DataStage® számára, hogy futás közben határozza meg a kimeneti oszlopsémát. A szakasz egy három oszlopból álló adatkészletet ad ki:

#### Encode Stage

The Encode stage is a processing stage. It encodes a data set using a UNIX encoding command, such as gzip, that you supply.
../topics/c_deeref_Decode_Stage.html

#### Switch stage

The Switch stage is a processing stage that takes a single data set as input and assigns each input row to an output data set based on the value of a selector field.

A Switch szakasz egy olyan feldolgozási szakasz, amely egyetlen adatkészletet vesz be bemenetként, és minden bemeneti sort hozzárendel egy kimeneti adatkészlethez egy választómező értéke alapján.

A kapcsoló fokozat egyetlen bemeneti kapcsolattal, legfeljebb 128 kimeneti kapcsolattal és egyetlen elutasító kapcsolattal rendelkezhet.

A Switch szakasz a C switch utasításhoz hasonló műveletet hajt végre, aminek következtében a C programban a vezérlés folyamata egy választóváltozó értéke alapján több eset valamelyikére ágazik el. Azok a sorok, amelyek egyik esetnek sem felelnek meg, a visszautasítási hivatkozáson jelennek meg.

#### FTP Enterprise Stage

The FTP Enterprise stage transfers multiple files in parallel. This stage invokes an FTP client and transfers the files to and from a remote host.

Az FTP Enterprise szakasz több fájlt párhuzamosan továbbít. Ez a szakasz meghív egy FTP-klienst, és továbbítja a fájlokat egy távoli gazdagépre és onnan.

Az FTP Enterprise szakasz több fájlt párhuzamosan továbbít. Ezek egy vagy több FTP-kiszolgálóról az InfoSphere® DataStage®-be vagy az InfoSphere DataStage-ről egy vagy több FTP-kiszolgálóra átvitt fájlkészletek. A fájl forrását vagy célját egy URI (Universal Resource Identifier) azonosítja. Az FTP Enterprise szakasz meghív egy FTP-kliens programot, és az FTP-protokoll használatával fájlokat továbbít egy távoli gazdagépre vagy onnan.

#### Generic stage

The Generic stage is a processing stage that allows you to call an Orchestrate® operator from within a stage and pass it options as required.

#### Surrogate Key Generator stage

The Surrogate Key Generator stage is a processing stage that generates surrogate key columns and maintains the key source.

#### Slowly Changing Dimension stage

The Slowly Changing Dimension (SCD) stage is a processing stage that works within the context of a star schema database. The SCD stage has a single input link, a single output link, a dimension reference link, and a dimension update link.

#### Pivot Enterprise stage

The Pivot Enterprise stage is a processing stage that pivots data horizontally and vertically.

#### Checksum stage

Use the Checksum stage to generate a checksum value from the specified columns in a row and add the checksum to the row.

Az Ellenőrzőösszeg szakasz segítségével állítson elő egy ellenőrző összeget egy sor megadott oszlopaiból, és adja hozzá az ellenőrző összeget a sorhoz.

Az ellenőrző összeg értékkel ellenőrizheti az egyes sorok érvényességét, amikor azokat az adatcélba írják. Ha az ellenőrző összeg értéke nem egyezik meg azokkal az oszlopokkal, amelyekből előállították, akkor az adatok sérültek, és már nem érvényesek.

Általában az ellenőrző összeg szakaszt egy jobban hozza létre az ellenőrző összeg oszlop hozzáadásához, majd egy másik jobban egy Ellenőrző összeg szakaszt használ az adatok érvényességének ellenőrzésére.

Az Ellenőrző összeg szakasz a paletta Feldolgozás részében található.

#### Column Import Stage

The Column Import stage is a restructure stage. This stage imports data from a single column and outputs it to one or more columns.

The Column Import stage is a restructure stage. It can have a single input link, a single output link and a single rejects link. The complement to this stage is the Column Export stage, described in Column Export stage.

The Column Import stage imports data from a single column and outputs it to one or more columns. You would typically use it to divide data arriving in a single column into multiple columns. The data would be fixed-width or delimited in some way to tell the Column Import stage where to make the divisions. The input column must be a string or binary data, the output columns can be any data type.

Az oszlopimportálási szakasz egy szerkezetátalakítási szakasz. Ez a szakasz egyetlen oszlopból importálja az adatokat, és egy vagy több oszlopba adja ki.

Az oszlopimportálási szakasz egy szerkezetátalakítási szakasz. Lehet egyetlen bemeneti kapcsolattal, egyetlen kimeneti hivatkozással és egyetlen elutasító hivatkozással. Ennek a szakasznak a kiegészítése az Oszlopexportálási szakasz, amelyet az Oszlopexport szakaszban ismertetünk.

Az Oszlopimportálás szakasz egyetlen oszlopból importálja az adatokat, és egy vagy több oszlopba adja ki. Általában arra használja, hogy az egyetlen oszlopban érkező adatokat több oszlopra ossza fel. Az adatok fix szélességűek vagy valamilyen módon elhatárolhatók, hogy az oszlopimportálási szakaszban megmondják, hol kell felosztani. A bemeneti oszlopnak karakterláncnak vagy bináris adatnak kell lennie, a kimeneti oszlopok bármilyen adattípusúak lehetnek.

#### Column Export stage

The Column Export stage is a restructure stage. This stage exports data from a number of columns of different data types into a single column of data type ustring, string, or binary.

The Column Export stage is a restructure stage. It can have a single input link, a single output link and a single rejects link.

The Column Export stage exports data from a number of columns of different data types into a single column of data type ustring, string, or binary. It is the complementary stage to Column Import (see Column Import stage).

The input data column definitions determine the order in which the columns are exported to the single output column. Information about how the single column being exported is delimited is given in the Formats tab of the Input page. You can optionally save reject records, that is, records whose export was rejected.

Az Oszlopexport szakasz egy szerkezetátalakítási szakasz. Ez a szakasz számos különböző adattípusú oszlopból exportálja az adatokat egyetlen ustring, karakterlánc vagy bináris adattípusú oszlopba.

Az Oszlopexport szakasz egy szerkezetátalakítási szakasz. Lehet egyetlen bemeneti kapcsolattal, egyetlen kimeneti hivatkozással és egyetlen elutasító hivatkozással.

Az Oszlopexportálás szakasz számos különböző adattípusú oszlopból exportálja az adatokat egyetlen adattípusú ustring, karakterlánc vagy bináris oszlopba. Ez az oszlopimportálás kiegészítő szakasza (lásd: Oszlopimportálási szakasz).

A bemeneti adatok oszlopdefiníciói határozzák meg az oszlopok egyetlen kimeneti oszlopba történő exportálásának sorrendjét. Az exportált egyetlen oszlop elhatárolásával kapcsolatos információk a Bemenet oldal Formátumok lapján találhatók. Opcionálisan elmentheti az elutasított rekordokat, vagyis azokat a rekordokat, amelyek exportálása elutasításra került.

#### Make Vector stage

The Make Vector stage is an active stage that combines specified columns of an input data record into a vector of columns. The stage has certain requirements.

The Make Vector stage is an active stage. It can have a single input link and a single output link.

The Make Vector stage combines specified columns of an input data record into a vector of columns. The stage has the following requirements:

The input columns must form a numeric sequence, and must all be of the same type.
The numbers must increase by one.
The columns must be named column_name0 to column_namen, where column_name starts the name of a column and 0 and n are the first and last of its consecutive numbers.
The columns do not have to be in consecutive order.

A Make Vector szakasz egy aktív szakasz, amely egy bemeneti adatrekord meghatározott oszlopait oszlopvektorba egyesíti. A színpadnak vannak bizonyos követelményei.

A Make Vector szakasz egy aktív szakasz. Egyetlen bemeneti és egyetlen kimeneti kapcsolattal rendelkezhet.

A Make Vector szakasz egy bemeneti adatrekord meghatározott oszlopait oszlopvektorrá egyesíti. A színpad a következő követelményekkel rendelkezik:

A beviteli oszlopoknak numerikus sorozatot kell alkotniuk, és mindegyiknek azonos típusúnak kell lennie.
A számoknak eggyel kell növekedniük.
Az oszlopokat oszlopnév0 és oszlopnév között kell elnevezni, ahol az oszlopnév az oszlop nevét kezdi, a 0 és az n pedig az első és az utolsó egymást követő szám.
Az oszlopoknak nem kell egymást követő sorrendben lenniük.

#### Make Subrecord stage

The Make Subrecord stage combines specified vectors in an input data set into a vector of subrecords whose columns have the names and data types of the original vectors. The Split Subrecord stage performs the inverse operation.

The Make Subrecord stage is a restructure stage. It can have a single input link and a single output link.

The Make Subrecord stage combines specified vectors in an input data set into a vector of subrecords whose columns have the names and data types of the original vectors. You specify the vector columns to be made into a vector of subrecords and the name of the new subrecord. See "Complex Data Types" for an explanation of vectors and subrecords.

Az Alrekord létrehozása szakasz egy bemeneti adathalmazban meghatározott vektorokat egyesíti alrekordok vektorává, amelynek oszlopai az eredeti vektorok neveivel és adattípusaival rendelkeznek. A Split Subrecord szakasz az inverz műveletet hajtja végre.

Az Alrekord készítése szakasz egy átstrukturálási szakasz. Egyetlen bemeneti és egyetlen kimeneti kapcsolattal rendelkezhet.

Az Alrekord létrehozása szakasz egy bemeneti adathalmazban meghatározott vektorokat egyesíti alrekordok vektorává, amelynek oszlopai az eredeti vektorok neveivel és adattípusaival rendelkeznek. Megadhatja az alrekordok vektorává alakítandó vektoroszlopokat és az új részrekord nevét. A vektorok és részrekordok magyarázatához lásd a "Komplex adattípusok" részt.

####
