
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### ORACLE

---

```

```

---

* [ORA_DB_INSTANCE](#ORA_DB_INSTANCE)
* [MEMORY_STRUCTURES](#MEMORY_STRUCTURES)
* [BACKGROUND_PROCESSES](#BACKGROUND_PROCESSES)
* [PHYSCIAL_DB_STRUCTURE](#PHYSCIAL_DB_STRUCTURE)
* [LOGICAL_DB_STRUCTURE](#LOGICAL_DB_STRUCTURE)
* [INIT_PARAMETERS](#INIT_PARAMETERS)
* [DIRECTORY_STRUCTURE](#DIRECTORY_STRUCTURE)
* [MONITORING](#MONITORING)
* [STOP_DB](#STOP_DB)
* [START_DB](#START_DB)
* [CHECK_DB](#CHECK_DB)
* [CHECK_BACKGROUND_PROCESSES](#CHECK_BACKGROUND_PROCESSES)
* [CHECK_LISTENER](#CHECK_LISTENER)
* [SQL_NET_CONFIG](#SQL_NET_CONFIG)
* [SQL_PLUS_CONNECTION](#SQL_PLUS_CONNECTION)
* [SWITCH_DB_ARCHIVE_NOARCHIVE](#SWITCH_DB_ARCHIVE_NOARCHIVE)

---

#### ORA_DB_INSTANCE

```
Oracle database	- set of physical files on disc that store data
Oracle instance	- set of memory structures and background processes accessing Oracle database
Oracle database + Oracle instance = Oracle server
one database has at least one instance
one database can be accessed by more instances (Grid,RAC)
Database is started when Oracle software allocates shared memory (SGA),
starts background processes and associates the instance with the specific
database (mount) multiple instances accessing their own physical database can be run on server
```

[^^^](#ORACLE)

---

#### MEMORY_STRUCTURES

```
- Global Area - SYSTEM (SGA) / PROGRAM (PGA)

- System Global Area (SGA)

database buffer cache	- caches blocks of data from database
redo log buffer		- caches redo information until written to onlinde redo log files
shared pool		- caches various structures that can be shared among users
large pool		- optional for memory complex activities (backup, recovery...)
java pool		- used for java-code in JVM
streams pool		- used for Oracle streams

- Program global area (PGA)

private to each server and background processes, one PGA for each process
```

**SGA**

```
System Global Area

The SGA is a group of shared memory structures that contain data and control information
for one database instance. Examples of SGA components include cached data blocks and shared SQL areas.

SGA >> Database Buffer cache (Flash buffer, Buffer pools, Non Default Buffer Pools) >> Redo Log Buffer >> Redo log writer (LGWR)
    >> redo log files >> Archive process (ARCHn) >> Archived redo log files >> RMAN >> Backups/Cloud
```

**PGA**

```
Program Global Area

The PGA is memory specific to an operating process or thread that is not shared by other processes
or threads on the system. Because the PGA is process-specific, it is never allocated in the SGA.

PGA (SQL Work Areas, User Global Area, Private SQL Area)
```

[^^^](#ORACLE)

---

#### BACKGROUND_PROCESSES

```
SMON	- performs crash recovery when instance is started after a failure
PMON	- performs process clean-up of user processes
LGWR	- writes blocks in redo log buffer to the online redo log files
DBWR	- writes blocks in db buffer cache to data files
CKPT	- performs flushing of all buffer to physical files, in order to reduce the instance recovery
ARCn	- when db is in archive mode, archiver copies online redo log files to archive destination
```

[^^^](#ORACLE)

---

#### PHYSCIAL_DB_STRUCTURE

```
data files
redo log files
control file
archive log files
```


**data files**	  

```
contains all the database data, each datafile is associated with one and only one tablespace, tablespace can have more datafiles
```

**redo log files**	  

```
record all changes made to data, every Oracle instance must have at least 2 online redo log files, files are changed in a circullar fashion
```

**control file**	  

```
maintains information about the physical storage structure of the database, contains the database name,
timestamp of creation of database and the name and location of every data file and redo log file, multiplexed
```

**archive log files**

```
contains an ongoing history of the data changes stored in online redo log files
```

[^^^](#ORACLE)

---

#### LOGICAL_DB_STRUCTURE

```
data block
extent	  
segment
tablespace     
```

**data block**

```
the smallest unit of storage, one data block corresponds to a specific number of bytes of physical database space on disc
```

**extent**	   

```
next level of logical groupping, a specific number of contiguous data blocks allocated in one chunk, extent can be in only one datafile
```

**segment**    

```
a set of extents allocated for logical structures such as tables, indexes, clusters etc, each one logical structure (table, index etc.) is created as segment
```

**tablespace**

```
the database is logically divided into smaller units at the highest level called tablespaces, a tablespace commonly groups related logical structures together
```

[^^^](#ORACLE)

---

#### INIT_PARAMETERS

```
check for parameter – show parameter <param>
initialization file – pfile (Oracle 9/10), spfile (Oracle 10)
located in $ORACLE_HOME/dbs/initSID.ora
```

```
pfile  - simple text file with syntax parameter = value; database must be restarted in order to apply new parameter values
spfile – binary file used from Oracle version 10, do not edit this file in editor!!! changes are done with the scope=spfile with alter system command
```

```
change parameters online – some parameters can be changed and applied when db is running with - alter system set <parameter name>=<parameter value>
for Oracle 10 scope can be set
```

```
scope=memory – parameter changed online only in memory not in spfile
scope=spfile – parameter changed only in spfile, db must be restarted to apply it
scope=both – (default) parameter changed in memory as well as in spfile
```

[^^^](#ORACLE)

---

#### DIRECTORY_STRUCTURE

```
/oracle/SID

- sapdataX    - data files                            - DBSID.data1 / SYSTEM.data1 / ROLL.data1
- origlogA    - online redo log files                 - log_g11m1.dbf / log_g13m1.dbf
- origlogB    - online redo log files                 - log_g12m1.dbf / log_g14m1.dbf
- mirrlogA    - online redo log files                 - log_g11m2.dbf / log_g13m2.dbf
- mirrlogB    - online redo log files                 - log_g12m2.dbf / log_g14m2.dbf
- oraarch     - offline redo log files                - DBSIDarch1_LSN.dbf
- saparch     - BRARCHIVE logs                        - archDBSID.log
- saptrace
      - background - oracle alert file                - alertDBSID.log
      - usertrace  - trace file of server processes   - DBSID_ora_PID.trc
- sapbackup   - BRBACKUP / BRRESTORE / BRRECOVER logs
- sapcheck    - BRCONNECT logs
- sapreorg    - BRSPACE logs (default)
```

[^^^](#ORACLE)

---

#### MONITORING

```
alert log
contains all critical errors occured during database operations located under /oracle/SID/saptrace/background
```

```
trace files
contain detailed information about all crashes of processes and very critical errors located under /oracle/SID/saptrace/usertrace
```

[^^^](#ORACLE)

---

#### STOP_DB

```
shutdown normal

- waits for sessions to disconnect
```

```
shutdown transactional

- allows all transaction to finish
```

```
shutdown immediate

- uncommited transactions are rolled back (most used, use this !!!)
```

```
shutdown abort

- immediately kills all processes, simulates something like “instance crash”
```

[^^^](#ORACLE)

---

#### START_DB

```
startup

- default
```

```
startup open

- OPEN mode is default when no specified, all datafiles and online redo log files opened database is opened for all operations
```

```
startup monut

- control file opened
```

```
startup nomount

- instance started, memory structure created
```

[^^^](#ORACLE)

---

#### CHECK_DB

```sql
select * from v$instance;
```

[^^^](#ORACLE)

---

####  CHECK_BACKGROUND_PROCESSES


**UX**

```
ps -ef | grep ora_
```

**NT**

```
oracle.exe
service OracleService<SID> (OracleServiceP68)
```

[^^^](#ORACLE)

---

####  CHECK_LISTENER

```sql
lsnrctl status
```

**UX**

```
ps -ef | grep lsnr
```

**NT**

```
service Oracle<SID>TNSListener (OracleP68920TNSListener)
```

[^^^](#ORACLE)

---

####  SQL_NET_CONFIG

```
tnsping <sid>
```

```
SAP system uses Oracle SQL*net for connection to a database although it mostly
resides on the same machine, because of that, for start of a SAP system,  listener must be running
```

[^^^](#ORACLE)

---

####  SQL_PLUS_CONNECTION

```sql
$ sqlplus <username>/<password>@<connect string>
$ sqlplus /nolog
SQL> connect <username>/<password>@<connect string>
```

```sql
$ sqlplus <username>/<password>
```

```sql
$ sqlplus “/ as sysdba”
```

```sql
sqlplus
/as sysdba
```

[^^^](#ORACLE)

---

####  SWITCH_DB_ARCHIVE_NOARCHIVE


**Archive mode**

```sql
shutdown immediate
startup mount
alter database archivelog;

-------------------------------------
SQL> archive log list 

Database log mode No Archive Mode
Automatic archival Disabled
Archive destination USE_DB_RECOVERY_FILE_DEST
Oldest online log sequence 26
Current log sequence 28

SQL> shutdown immediate

Database closed.
Database dismounted.
ORACLE instance shut down.

SQL> startup mount

ORACLE instance started.

Total System Global Area 289406976 bytes
Fixed Size 1248576 bytes
Variable Size 96469696 bytes
Database Buffers 184549376 bytes
Redo Buffers 7139328 bytes
Database mounted.

SQL> alter database archivelog;

Database altered.

SQL> alter database open;

Database altered.

SQL> archive log list

Database log mode Archive Mode
Automatic archival Enabled
Archive destination USE_DB_RECOVERY_FILE_DEST
Oldest online log sequence 26
Next log sequence to archive 28
Current log sequence 28

SQL>
```

**Noarchive mode**

```
shutdown immediate
startup mount
alter database noarchivelog;
alter database open;


This is how to disable archiving:
-------------------------------------
SQL> shutdown immediate

Database closed.
Database dismounted.
ORACLE instance shut down.

SQL> startup mount

ORACLE instance started.

Total System Global Area 289406976 bytes
Fixed Size 1248576 bytes
Variable Size 100664000 bytes
Database Buffers 180355072 bytes
Redo Buffers 7139328 bytes
Database mounted.

SQL> alter database noarchivelog;

Database altered.

SQL> alter database open;

Database altered.

SQL> archive log list

Database log mode No Archive Mode
Automatic archival Disabled
Archive destination USE_DB_RECOVERY_FILE_DEST
Oldest online log sequence 26
Current log sequence 28
```

[^^^](#ORACLE)

---
