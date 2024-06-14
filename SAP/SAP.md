---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

#### SAP

---

* [BASICS](#BASICS)
* [SYSTEM_KERNEL](#SYSTEM_KERNEL)
* [SAP_WORK_PROCESSES](#SAP_WORK_PROCESSES)
* [MAIN_TRANSACTIONS](#MAIN_TRANSACTIONS)
* [STOP/START/CHECK](#STOP/START/CHECK)
* [DB_LOGS](#DB_LOGS)
* [SYSTEM_PARAMETERS](#SYSTEM_PARAMETERS)
* [USER_ADMIN](#USER_ADMIN)
* [RFC](#RFC)
* [SYSTEM_SECURITY](#SYSTEM_SECURITY)
* [TRANSPORT](#TRANSPORT)
* [SUPPORT_PACKAGES](#SUPPORT_PACKAGES)
* [PRINTERS](#PRINTERS)
* [SCHEDULING](#SCHEDULING)
* [ARCHIVING](#ARCHIVING)
* [SYSTEM_MONITORING](#SYSTEM_MONITORING)
* [](#)
* [](#)
* [](#)
* [CLIENT_COPY](#CLIENT_COPY)
* [IXOS](#IXOS)
* [](#)

---

#### SAP

The SAP (comapny = SAP SE, Waldorf Germany) is a large company which is producing a large software (SAP ERP) and 
creates solutions that help to managing other companies more effectively. SAP is Leader in ERP.

- the company is SAP SE
- the product is SAP ERP, SAP CRM, SAP PLM, SAP BI 

SAP = Systems Applications and Products in data processing

ERP = ENterprise resource planning

[^^^](#SAP)

---

#### BASICS

SAP system is one DB and one or more instances

[^^^](#SAP)

---

#### SAP_ARCHITECTURE

* [link](https://www.youtube.com/watch?v=xiWeo9rT2rU)

DB LAYER >> APPLICATION LAYER (ABAP or an ASCS and Application Server is located) >> PRESENTATION LAYER (users with SAP logon client, SAP business client)

![image](sap_01.png)

ASCS = Central services systems 

![image](sap_02.png)

![image](sap_03.png)

enque server is responsible for managing locks 

![image](sap_04.png)

ICM = Internet communication manager (smtp and https)
via Gateway SAP is able to communicate with other SAPs or non SAPs with RFC
RFC = remote fucntion call 


[^^^](#SAP)

---

#### SYSTEM_KERNEL

[^^^](#SAP)

---

#### SAP_WORK_PROCESSES

|Type|Use|Profile_param|
|----|---|-------------|
|DIA|dialogue requests|  |
|UPD|updates| |
|UPD2|less time critical update| |
|BGD|background jobs| |
|SPO|output requests| |
|ENQ|locks| |

[^^^](#SAP)

---

#### MAIN_TRANSACTIONS

use it with ```/n``` like ```/nsm37```

|transaction|description|
|-----------|-----------|
|SM04 / AL08|user overview/list|
|SE16| |
|SM50 / SM66|work processes|
|SM51|display application servers|
|SM36|define new jobs|
|SM37|background job overview|
|SU01|user roles/lock management|
|SM12|lock entries|
|SM13|update records|
|SM21|system log|
|SM02|send system messages|
|RZ20|profile maintenance/cross-system monitoring|
|SM59|rfc destinations|
|STMS|transport management system|
|SPAM|Import support packages|
|SAINT|Industry solution Install + upgrade|
|SPAD|Printer config| 
|SU01|User maintenance|
|SARA|Archiving|
|CCMS|Cross system alert monitoring|

[^^^](#SAP)

---

#### STOP/START/CHECK

start: DB >> Central instance >> Other instances
stop: Other instances >> Central instance >> DB

```
Gray - not running
Yellow - is strating
Green - active
Red - terminated after errors
```

CMD

```
as <sid>adm

startsap <sid>
stopsap <sid>
```

[^^^](#SAP)

---

#### DB_LOGS

```
\sapdb\data\wrk\<SID>
```

Oracle

```
\oracle\SID\saptrace\background\ALRT.log

\oracle\SID\sapreorg
\oracle\SID\sapcheck
\oracle\SID\sapbackup
```

[^^^](#SAP)

---

#### SYSTEM_PARAMETERS

rz20

```
Instance profile
Start profile
Default profile
```

[^^^](#SAP)

---

#### USER_ADMIN

```
Presentation server >> SAP Web AS (dispatcher+processes) >> DB server

Authorization profile
User Master records
```

[^^^](#SAP)

---

#### RFC

sm59

```
RFC = remote connections

RFC Destinations:

- r3 connections
- internal connections
- logical destinations
- sna/cpi-c connections
- tcp/ip connections
- abap/4 drivers
```

```
sRFC - synchronous
aRFC - asynchronous
tRFC - transactional
qRFC - queue(d)
```

[^^^](#SAP)

---

#### SYSTEM_SECURITY

```
SNC - Secure Network Communication
SSL - Secure Socket Layer 
SSF - Secure Store and Forward
```

SNC

```
SNC allows the encryption of the DIAG and RFC protocols
```

SSL

```
SSL allows the encryption of the HTTP protocol. this creates an HTTPS protocol from the HTTP.
```

SSF

```
SSF ensures that sap data and documents are secure during and beyond dialog transactions.
```

SAProuter

```
SAProuter is an SAP  program for forwarding SAP system connections through firewalls. Extend the firewalls 
but does not replace it.
```

[^^^](#SAP)

---

#### TRANSPORT

stms

Data Structure

```
Client >> Cross-client customizing >> Repository
```

```
DEV - QAS - PROD
```

```
tp addtobuffer EG3KT02778 EG3 u1 client500 pf=/usr/sap/trans/bin/TP_DOMAIN_PE1.PFL

tp import EG3KT02778 EG3 u1 client500 pf=/usr/sap/trans/bin/TP_DOMAIN_PE1.PFL

in se01 - logs - you can monitor the transport
```

[^^^](#SAP)

---

#### SUPPORT_PACKAGES

spam, saint

[^^^](#SAP)

---

#### PRINTERS

SPAD

```
local, remote 
```

[^^^](#SAP)

---

#### SCHEDULING

sm36

```
Reports to be run regularly and long-running programs are scheduled as background jobs in the SAP.
```

Step

```
ABAP program
external command
external program
```

Prio

```
A
B
C
```

Status

```
Scheduled >> Released >> Ready >> Active >> Finished/Canceled
```

[^^^](#SAP)

---

#### ARCHIVING

```
Consistent removal of data objects from database tables of the SAP system database, where all table entries
that characterize a data object are written to an archive file outside the database. Business consitency 
is ensured by SAP archiving programs that store all relevant table entries together on the basis of archiving
objects.
```

Steps

```
- Reorganization
- Backup / restore
- document storage (using SAP ArchiveLink)
- deletion of test data
```

Process

```
SAP DB >> Archiving object >> Archive files >> Offline storage
```

Archiving run

```
via transaction SARA

- Create an archiving variant
- Specify the execution user
- Specify the start time
- Define the spool parameters
```

[^^^](#SAP)

---

#### SYSTEM_MONITORING

[^^^](#SAP)

---

####

[^^^](#SAP)

---

####

[^^^](#SAP)

---

####

[^^^](#SAP)

---

####

[^^^](#SAP)

---

####

[^^^](#SAP)

---

####

[^^^](#SAP)

---

####

[^^^](#SAP)

---

####

[^^^](#SAP)

---

#### CLIENT_COPY

scc3, scc8

[link](https://drive.google.com/drive/u/1/folders/1KOvCfmQA2IdzWMxdQUfBCbnlcJE3Le2R)

[^^^](#SAP)

---

#### IXOS

```
mstsc ---> nts-admin / ---> LiveLink ---> dsadmin / ixosadm 

spawncmd stopall
ixos spawner - disable - stop
sql server (MSSQLSERVER, agent, fultext search, VSS writer) - stop

sql server start
ixos spawner - automatic - start
spawncmd statusall ---> if it is needed
```

```
spawncmd status
spawncmd -----> stopall
IXOS spawner - disabled - apply
check web

IXOS spawner - automatic - apply
spawncmd status

if it is possible
spawncmd ------> startall

check web
dbtest
```

[^^^](#SAP)

---

####

[^^^](#SAP)

---