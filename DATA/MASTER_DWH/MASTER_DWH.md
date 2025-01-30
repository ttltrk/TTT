
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

[^^^](#Master_Data_Warehousing)

---

####

[^^^](#Master_Data_Warehousing)

---

####

[^^^](#Master_Data_Warehousing)

---

####

[^^^](#Master_Data_Warehousing)

---

####

[^^^](#Master_Data_Warehousing)

---

####

[^^^](#Master_Data_Warehousing)

---

####

[^^^](#Master_Data_Warehousing)

---
