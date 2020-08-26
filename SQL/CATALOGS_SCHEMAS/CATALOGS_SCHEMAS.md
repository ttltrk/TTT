
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### CATALOGS_SCHEMAS

---

* [CATALOGS_IN_POSTGRESQL](#CATALOGS_IN_POSTGRESQL)
* [SCHEMAS_UNDER_A_CATALOG](#SCHEMAS_UNDER_A_CATALOG)
* [TABLES_UNDER_A_SCHEMAS](#TABLES_UNDER_A_SCHEMAS)
* [CURRENT_CATALOGS](#CURRENT_CATALOGS)
* [CURRENT_SCHEMAS](#CURRENT_SCHEMAS)
* [DB2_CATALOG_COMMANDS](#DB2_CATALOG_COMMANDS)

---

#### CATALOGS_IN_POSTGRESQL

```SQL
select * from pg_database;
```

[^^^](#CATALOGS_SCHEMAS)

---

#### SCHEMAS_UNDER_A_CATALOG

```SQL
select * from information_schema.schemata;
```

[^^^](#CATALOGS_SCHEMAS)

---

#### TABLES_UNDER_A_SCHEMAS

```SQL
select * from pg_tables WHERE schemaname = 'public';
```

[^^^](#CATALOGS_SCHEMAS)

---

#### CURRENT_CATALOGS

```SQL
select current_database();
```

[^^^](#CATALOGS_SCHEMAS)

---

#### CURRENT_SCHEMAS

```SQL
select current_schema();
```

[^^^](#CATALOGS_SCHEMAS)

---

#### DB2_CATALOG_COMMANDS

```SQL
db2 uncatalog database CSDWPSSL
db2 uncatalog node CSDWPSSL
db2 catalog tcpip node CSDWPSSL remote <server_name> server <port_num> security ssl
db2 catalog database CSDW as CSDWPSSL at node CSDWPSSL
db2 terminate
```

[^^^](#CATALOGS_SCHEMAS)

---
