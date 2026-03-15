

---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md)

---

### PYTHON_SPARK_FLASH

---

```py
#reading csv with spark
df_pyspark = spark.read.csv('test1.csv')

#type of the dataframe
df_pyspark = spark.read.option('header', 'true').csv('test1.csv')
type(df_pyspark)

#check the schema
df_pyspark.printSchema()

#check the columns
df_pyspark.columns

#pickup only one column
df_pyspark.select('Name')

#pickup more columns
df_pyspark.select(['Name', 'Age'])

#checking datatypes
df_pyspark.dtypes

#checking describe option
df_pyspark.describe()

#adding column into a DF
df_pyspark.withColumn('Age After 2 years',df_pyspark['Age']+2)

#drop column
df_pyspark.drop('Age After 2 years')

#rename column
df_pyspark.withColumnRenamed('Name','New Name')

#dropping all null values
df_pyspark.na.drop()

#drop with threshold
df_pyspark.na.drop(how='any',thresh=2)

# drop with subset
df_pyspark.na.drop(how='any',subset=['age'])

#filling the missing value
from pyspark.ml.feature import Imputer
imputer = Imputer(
    inputCols = 'age',
    outputCols = ["{}_imputed".format(c) for c in 'age']).setStrategy("mean")

#salary of the people less than 1999
df_pyspark.filter("Salary<=1999")

#salary of the people less than 1999 only name and age
df_pyspark.filter("Salary<=1999").select(['name', 'age'])

#salary of the people less than 1999
df_pyspark.filter(df_pyspark["Salary"]<=1999)

#salary between
df_pyspark.filter((df_pyspark["Salary"]<=1999) & (df_pyspark["Salary"]>=1000))

#salary of the people everything above 1999
df_pyspark.filter(~(df_pyspark["Salary"]<=1999))

#grouped to find the maximum salary
df_pyspark.groupby('Name').max()

#groupby departments which gives maxmium salary
df_pyspark.groupby('Departments').max()

#groupby departments which gives mean salary
df_pyspark.groupby('Departments').mean()

#how many employer working in the department
df_pyspark.groupby('Departments').count()
```

---
