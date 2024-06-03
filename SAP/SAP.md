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
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### BASICS

SAP system is one DB and one or more instances

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

SM04 / AL08 - user overview/list
SE16
SM50 / SM66 - work processes
SM51 - display application servers
SM37 - background job overview
SU01 - user roles/lock management
SM12 - lock entries
SM13 - update records
SM21 - system log
SM02 - send system messages
RZ20 - profile maintenance/cross-system monitoring

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

```
rz20

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

```
RFC = remote connections
```

[^^^](#SAP)

---