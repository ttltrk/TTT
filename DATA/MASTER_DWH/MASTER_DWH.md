
###### [DATA](https://github.com/ttltrk/TTT/tree/master/DATA/DATA.md)

---

#### Master_Data_Warehousing

---

* [U_LINK]()

---

* [01_INTRO](#01_INTRO)
* [02_05_WHY_DWH](#02_05_WHY_DWH)
* [02_06_WHAT_IS_DWH](#02_06_WHAT_IS_DWH)
* [02_07_WHAT_IS_BI](#02_07_WHAT_IS_BI)
* [02_08_DATA_LAKE_VS_DWH](#02_08_DATA_LAKE_VS_DWH)
* [03_13_3_LAYERS_OF_DWH](#03_13_3_LAYERS_OF_DWH)
* [03_14_STAGING_AREA](#03_14_STAGING_AREA)
* [03_16_DATA_MARTS](#03_16_DATA_MARTS)
* [03_17_RELATIONAL_DBS](#03_17_RELATIONAL_DBS)
* [03_18_IN_MEMROY_DB](#03_18_IN_MEMROY_DB)
* [03_19_OLAP_CUBES](#03_19_OLAP_CUBES)
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()

---

#### 01_INTRO

```
- Welcome
- How this course works
- What do you learn in this course?
- Course slides
```

[^^^](#Master_Data_Warehousing)

---

#### 02_05_WHY_DWH

```
Wy do we need a DWH?

- Two purposes

OLTP - Online Transactional Processing
- 1st purpos - Operational data keeping - turn the wheel
  - Receive orders
  - React to complaints
  - Fill up to stock

OLAP - Online Analytical Processing
- 2nd purpos - Analytical decision making - evaluate performance, decision making
  - what is the best category?
  - how many sales compared to last month?
  - what can be improved?

- Two requirements

- 1st req
  - One record at a time
  - Data input
  - No long history

- 2nd req
  - Thousands of records at a time
  - Fast query performance
  - Historical context
  - Usibility

sum: Used for reporting and data analysis
```

[^^^](#Master_Data_Warehousing)

---

#### 02_06_WHAT_IS_DWH

```
DWH is a db used and optimized for analytical purposes.

- user friendly
- fast query performance
- enbling data analysis
```

```
DWH - (centralized location for data)

^^^                  ^^^          ^^^
Other data sources | Sales data | CRM system 


DWH - (centralized location for data)
              ^^^
              ETL

^^^                  ^^^          ^^^
Other data sources | Sales data | CRM system 
```

```
ETL = Extract, Transform, Load
```

```
Goals of a DWH

- centralized and consistent location for data
- data must be accessible fast (query performance)
- user-friendly (easy to understand)
- must load data consistenty and repeatedly (ETL)
- reporting and data visualization built on top
```

[^^^](#Master_Data_Warehousing)

---

#### 02_07_WHAT_IS_BI

```
BI = Business Intelligence

- Strategies
- Technologies
- Infrastructures
```

```
Data Analysis

- data gathering
- data storing
- reporting
- data visualisation
- data mining
- predictive analysis
```

```
raw data >> transform >> meaningful insights and better decisions (DWH part)
```

[^^^](#Master_Data_Warehousing)

---

#### 02_08_DATA_LAKE_VS_DWH

```
DL and DWH are both used as centralized data storage
```

|            | Data Lake     |      DWH              |
|------------|---------------|-----------------------|
|Data        |Raw            | Processed             |
|Technologies|Big Data       | Database              |
|Structure   |Unstructured   |Structured             |
|Usage       |Not defined yet|Specific & ready to use|
|Users       |Data Scientists|Business users & IT    |

[^^^](#Master_Data_Warehousing)

---

#### 03_13_3_LAYERS_OF_DWH

```
data sources >>
>> Staging layer (STG) - (raw data in tables) >>
>> Cleansing area >>
>> core / DWH (ODS) >>
>> Data Mart 1 / Data Mart 2 >>
>> Predictive Analytics
```

[^^^](#Master_Data_Warehousing)

---

#### 03_14_STAGING_AREA

```
- why do we need it?
  - short time on the source systems
  - quickly extract
  - move the data into a relational database
  - start transformation from there
```

```
this is just a temporary layer, we need to truncate this layer before every run
using delta loads, just extracting the new values

date column is a more or less the delta column, load everything after the mentioned date
```

```
in persistant stg layer we never truncating the layer
the roll-back is working there easly
```

```
SUM:
  - stg layer is the landing zone extracted data
  - data in tables and on a separate database
  - as little touching as possible
  - we don't charge the source systems
  - temporay or persistant staging layers
```

[^^^](#Master_Data_Warehousing)

---

#### 03_16_DATA_MARTS

```
Data Marts
  - after the dwh layer you can find the DM as the subset of a DWH
  - Dimensional Model
  - can be furthe aggregated
  - Just the relevant tables for a use-vase
```

```
Why are we need DM?
  - usability and acceptance
  - performance
```

```
Use cases
  - tools
  - departments
  - region
  - different use-cases
```

```
SUM:
  - acces layer for users
  - Data Mart = Small scale DWH
  - focus on the business problem 
```

[^^^](#Master_Data_Warehousing)

---

#### 03_17_RELATIONAL_DBS

```
- Relational database management system (RDMS)
  - Oracle
  - Microsoft SQL Server
  - PostgreSQL
  - MySQL
  - Amazon Relational Database Service (RDS)
```

[^^^](#Master_Data_Warehousing)

---

#### 03_18_IN_MEMROY_DB

```
- highly optimized for query performance
- good for analytics / high query volume
- usually used for data marts
- relational and non-relational
```

```
traditional db >> disc >> in-memory
in-memory db >> in-memory
```

```
in-memory dbs are comming without disks
eliminate the response time from disk
good query performance
```

```
durability: lose all info when device loses power or is reset
durability added through snapshots / images
cost-factor
```

```
in-memory dbs:
  - sap hana
  - ms sql server in-memory tables
  - oracle in-memory
  - amazon memoryDB
```

[^^^](#Master_Data_Warehousing)

---

#### 03_19_OLAP_CUBES

[^^^](#Master_Data_Warehousing)

---
