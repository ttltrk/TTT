
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

##### CHECKING_DESCRIBE_OPTION

```py
#checking describe option

df_pyspark.describe()

>>>
summary	name	age
count	3	3
mean	null	34.333333333333336
stddev	null	11.930353445448855
min	edc	21
max	trk	44
>>>
```

##### ADD_NEW_COLUMN_WITH_COPY_OLD

```py
#adding column into a DF

df_pyspark.withColumn('Age After 2 years',df_pyspark['Age']+2)

>>>
name	age	Age After 2 years
trk	38	40
edc	21	23
ijb	44	46
>>>
```

##### DROP_COLUMN

```py
#drop column

df_pyspark.drop('Age After 2 years')

>>>
name	age
trk	38
edc	21
ijb	44
>>>
```

##### RENAME_COLUMN

```py
#rename column

df_pyspark.withColumnRenamed('Name','New Name')

>>>
New Name	age
trk	38
edc	21
ijb	44
>>>
```

##### READ_THE_CSV

```py
#read the csv

df_pyspark = spark.read.csv('test2.csv', header=True, inferSchema=True)
df_pyspark

>>>
name	age	experience	salary
trk	38	4	1000
edc	21	5	1000
ijb	44	6	1000
kkk	10	6	1200
hhh	22	5	400
fff	33	10	3000
ddd	50	11	2000
sss	21	1	1200
ttt	null	2	null
null	10	null	null
null	4	5	1000
>>>
```

##### DROP_COLUMN

```py
#drop the columns

df_pyspark.drop('Name')

>>>
age	experience	salary
38	4	1000
21	5	1000
44	6	1000
10	6	1200
22	5	400
33	10	3000
50	11	2000
21	1	1200
null	2	null
10	null	null
4	5	1000

>>>
```

##### DROPPING_NULL_VALUES

```py
#dropping all null values

df_pyspark.na.drop()

>>>
name	age	experience	salary
trk	38	4	1000
edc	21	5	1000
ijb	44	6	1000
kkk	10	6	1200
hhh	22	5	400
fff	33	10	3000
ddd	50	11	2000
sss	21	1	1200
>>>
```

##### DROP_WITH_THRESHOLD

```py
# drop with threshold

df_pyspark.na.drop(how='any',thresh=2)

>>>
name	age	experience	salary
trk	38	4	1000
edc	21	5	1000
ijb	44	6	1000
kkk	10	6	1200
hhh	22	5	400
fff	33	10	3000
ddd	50	11	2000
sss	21	1	1200
ttt	null	2	null
null	4	5	1000
>>>
```

##### DROP_WITH_SUBSET

```py
# drop with subset

df_pyspark.na.drop(how='any',subset=['age'])

>>>
name	age	experience	salary
trk	38	4	1000
edc	21	5	1000
ijb	44	6	1000
kkk	10	6	1200
hhh	22	5	400
fff	33	10	3000
ddd	50	11	2000
sss	21	1	1200
null	10	null	null
null	4	5	1000
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
