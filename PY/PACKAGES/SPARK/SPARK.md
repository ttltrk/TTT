
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### SPARK

---

* [PYSPARK_TUTORIAL](#PYSPARK_TUTORIAL)
* [](#)
* [](#)
* [](#)

---

* []()
* []()
* []()
* []()
* []()

---

#### LINKS

* [PYSPARK_TUTORIAL](https://www.youtube.com/watch?v=_C8kWso4ne4&t=1780s)
* [SPARK_FUN_1](https://courses.cognitiveclass.ai/courses/course-v1:BigDataUniversity+BD0211EN+v1/courseware/50e2f47dec3341ab984fb0505c202b99/7f3e68eea7e7416e9481ec7e69f212b4/?child=first)

---

#### PYSPARK_TUTORIAL

##### READING_CSV_WITH_PANDAS

```py
import pandas as pd
pd.read_csv('test1.csv')
```

##### READING_CSV_WITH_SPARK

```py
df_pyspark = spark.read.csv('test1.csv')
df_pyspark.show()

>>>
+----+---+
| _c0|_c1|
+----+---+
|name|age|
| trk| 38|
| edc| 21|
| ijb| 44|
+----+---+
>>>
```

```py
spark.read.option('header', 'true').csv('test1.csv')

>>>
name	age
trk	38
edc	21
ijb	44
>>>
```

##### TYPE_OF_THE_DF

```
df_pyspark = spark.read.option('header', 'true').csv('test1.csv')
type(df_pyspark)

>>>
pyspark.sql.dataframe.DataFrame
>>>
```

```py
df_pyspark.printSchema()

>>>
root
 |-- name: string (nullable = true)
 |-- age: string (nullable = true)
>>>
```

##### READ_THE_DS_AGAIN

```py
# read the DS again

df_pyspark = spark.read.option('header', 'true').csv('test1.csv',inferSchema=True)
df_pyspark

>>>
name	age
trk	38
edc	21
ijb	44

>>>
```

##### CHECK_THE_SCHEMA

```py
#check the schema

df_pyspark.printSchema()

>>>
root
 |-- name: string (nullable = true)
 |-- age: integer (nullable = true)
>>>
```

```
Dataframe is a Data Structure
```

##### CHECK_THE_COLUMNS

```py
#check the columns

df_pyspark.columns

>>>
['name', 'age']
>>>
```

##### PICKUP_ONE_COLUMN

```py
#pickup only one column

df_pyspark.select('Name')

>>>
Name
trk
edc
ijb
>>>
```

##### PICKUP_MORE_COLUMNS

```py
#pickup more columns

df_pyspark.select(['Name', 'Age'])

>>>
Name	Age
trk	38
edc	21
ijb	44
>>>
```

##### CHECKING_DATATYPES

```py
#checking datatypes

df_pyspark.dtypes

>>>
[('name', 'string'), ('age', 'int')]
>>>
```

[^^^](#SPARK)

---

[^^^](#SPARK)

---

####

- setup config

```py
!apt-get install openjdk-8-jdk-headless -qq > /dev/null
!wget -q http://archive.apache.org/dist/spark/spark-3.1.1/spark-3.1.1-bin-hadoop3.2.tgz
!tar xf spark-3.1.1-bin-hadoop3.2.tgz
!pip install -q findspark
```

```py
import os
os.environ["JAVA_HOME"] = "/usr/lib/jvm/java-8-openjdk-amd64"
os.environ["SPARK_HOME"] = "/content/spark-3.1.1-bin-hadoop3.2"
```

```py
import findspark
findspark.init()
from pyspark.sql import SparkSession
spark = SparkSession.builder.master("local[*]").getOrCreate()
spark.conf.set("spark.sql.repl.eagerEval.enabled", True) # Property used to format output tables better
spark
```

```py
from pyspark.sql import SparkSession
spark = SparkSession.builder.appName('Practise').getOrCreate()
spark
```

[^^^](#SPARK)

---

####

```py
# read the uploaded file
df_pyspark=spark.read.csv('test.csv')
df_pyspark
```

```py
df_pyspark.show()
```

```py
#read with header
spark.read.option('header', 'true').csv('test.csv')
```

```py
spark.read.option('header', 'true').csv('test.csv').show()
```

```py
# check the datatype of dataset
df_pyspark = spark.read.option('header', 'true').csv('test.csv')
type(df_pyspark)
```

```py
df_pyspark.head(3)
```

```py
df_pyspark.printSchema()
```

[^^^](#SPARK)

---

####  

```py
# read the dataset
spark.read.option('header','true').csv('test.csv')
```

```py
# read the dataset
spark.read.option('header','true').csv('test.csv').show()
```

```py
df_pyspark=spark.read.option('header','true').csv('test.csv')
```

```py
# check the schema
df_pyspark.printSchema()
```

```py
# change the data types
df_pyspark=spark.read.option('header','true').csv('test.csv', inferSchema=True)
df_pyspark.printSchema()
```

```py
df_pyspark=spark.read.csv('test.csv', header=True, inferSchema=True)
df_pyspark.show()
```

```py
df_pyspark.printSchema()
```

```py
# check the columns
df_pyspark.columns
```

```py
# pick-up a column
df_pyspark.select('lastname')
```

```py
type(df_pyspark.select('lastname'))
```

```py
# pick-up more columns
df_pyspark.select(['personid','lastname'])
```

```py
df_pyspark['lastname']
```

```py
df_pyspark.dtypes
```

```py
df_pyspark.describe()
```

```py
# adding columns
df_pyspark.withColumn('personid_plus_2', df_pyspark['personid']+2)
```

```py
# adding columns
df_pyspark.withColumn('Experience', df_pyspark['city'])
```

```py

```

```py

```

```py

```

```py

```

[^^^](#SPARK)

---

[^^^](#SPARK)

---
