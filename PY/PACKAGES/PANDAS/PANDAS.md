
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md)

---

### PANDAS

---

Pandas is a high-level data manipulation tool that is built on the NumPy package.
Pandas is one of the most popular data science libraries in Python. Easy to use, it is built on top of NumPy and shares many functions and properties.
With Pandas, you can read and extract data from files, transform and analyze it, calculate statistics and correlations, and much more!

To start using pandas, we need to import it first

```py
import pandas as pd
```

---

* [INTRO_W3](#INTRO_W3)
* [GETTING_STARTED_W3](#GETTING_STARTED_W3)
* [SERIES_W3](#SERIES_W3)
* [DATAFRAMES_W3](#DATAFRAMES_W3)
* [READ_CSV_W3](#READ_CSV_W3)
* [READ_JSON_W3](#READ_JSON_W3)
* [ANALYZING_DATA_W3](#ANALYZING_DATA_W3)
* [CLEANING_DATA_W3](#CLEANING_DATA_W3)
* [CLEANING_EMPTY_CELLS_W3](#CLEANING_EMPTY_CELLS_W3)
* [CLEANING_WRONG_FORMAT_W3](#CLEANING_WRONG_FORMAT_W3)
* [CLEANING_WRONG_DATA_W3](#CLEANING_WRONG_DATA_W3)
* [REMOVING_DUPLICATES_W3](#REMOVING_DUPLICATES_W3)
* [PANDAS_CORRELATIONS_W3](#PANDAS_CORRELATIONS_W3)
* [PANDAS_PLOTTING_W3](#PANDAS_PLOTTING_W3)

---

* [SERIES](#SERIES)
* [DATAFRAMES_01](#DATAFRAMES_01)
* [DATAFRAMES_02](#DATAFRAMES_02)
* [DATAFRAMES_03](#DATAFRAMES_03)
* [MISSING_DATA](#MISSING_DATA)
* [GROP_BY](#GROP_BY)
* [MERGE_JOIN_CONCAT](#MERGE_JOIN_CONCAT)
* [READING_DATA](#READING_DATA)

---

#### INTRO_W3

[^^^](#PANDAS)

---

#### GETTING_STARTED_W3

[^^^](#PANDAS)

---

#### SERIES_W3

[^^^](#PANDAS)

---

#### DATAFRAMES_W3

[^^^](#PANDAS)

---

#### READ_CSV_W3

[^^^](#PANDAS)

---

#### READ_JSON_W3

[^^^](#PANDAS)

---

#### ANALYZING_DATA_W3

[^^^](#PANDAS)

---

#### CLEANING_DATA_W3

[^^^](#PANDAS)

---

#### CLEANING_EMPTY_CELLS_W3

[^^^](#PANDAS)

---

#### CLEANING_WRONG_FORMAT_W3

[^^^](#PANDAS)

---

#### CLEANING_WRONG_DATA_W3

[^^^](#PANDAS)

---

#### REMOVING_DUPLICATES_W3

[^^^](#PANDAS)

---

#### PANDAS_CORRELATIONS_W3

[^^^](#PANDAS)

---

#### PANDAS_PLOTTING_W3

[^^^](#PANDAS)

---

#### SERIES

The two primary components of pandas are the Series and the DataFrame.
A Series is essentially a column, and a DataFrame is a multi-dimensional table made up of a collection of Series.

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

print(labels)
print(my_data)
print(arr)
print(d)

>>>
['a', 'b', 'c']
[10, 20, 30]
[10 20 30]
{'a': 10, 'b': 20, 'c': 30}
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(data = my_data)

print(a)

>>>
0    10
1    20
2    30
dtype: int64
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(data = my_data,index=labels)

print(a)

>>>
a    10
b    20
c    30
dtype: int64
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(arr)

print(a)

>>>
0    10
1    20
2    30
dtype: int32
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(arr,labels)

print(a)

>>>
a    10
b    20
c    30
dtype: int32
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(d)

print(a)

>>>
a    10
b    20
c    30
dtype: int64
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(data=labels)

print(a)

>>>
0    a
1    b
2    c
dtype: object
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(data=labels)

print(a[1])

>>>
b
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(data=[sum,print,len])

print(a)

>>>
0      <built-in function sum>
1    <built-in function print>
2      <built-in function len>
dtype: object
>>>
```

```py
import numpy as np
import pandas as pd

ser1 = pd.Series([1,2,3,4],['usa', 'ger', 'ussr', 'jpn'])
print(ser1)

>>>
usa     1
ger     2
ussr    3
jpn     4
dtype: int64
>>>
```

```py
import numpy as np
import pandas as pd

ser1 = pd.Series([1,2,3,4],['usa', 'ger', 'ussr', 'jpn'])
ser2 = pd.Series([1,2,5,4],['usa', 'ger', 'ita', 'jpn'])

print(ser1)
print(' ')
print(ser2)

>>>
usa     1
ger     2
ussr    3
jpn     4
dtype: int64

usa    1
ger    2
ita    5
jpn    4
dtype: int64
>>>
```

```py
import numpy as np
import pandas as pd

ser1 = pd.Series([1,2,3,4],['usa', 'ger', 'ussr', 'jpn'])
ser2 = pd.Series([1,2,5,4],['usa', 'ger', 'ita', 'jpn'])

print(ser1['usa'])
print(ser1['ussr'])
print(ser2['ita'])

>>>
1
3
5
>>>
```

```py
import numpy as np
import pandas as pd

ser1 = pd.Series([1,2,3,4],['usa', 'ger', 'ussr', 'jpn'])
ser2 = pd.Series([1,2,5,4],['usa', 'ger', 'ita', 'jpn'])

print(ser1+ser2)

>>>
ger     4.0
ita     NaN
jpn     8.0
usa     2.0
ussr    NaN
dtype: float64
>>>
```

[^^^](#PANDAS)

---

#### DATAFRAMES_01

The two primary components of pandas are the Series and the DataFrame.
A Series is essentially a column, and a DataFrame is a multi-dimensional table made up of a collection of Series.

How to create a DataFrame

```py
import pandas as pd

data = {
    'ages':[14,18,24,42],
    'heights':[165,180,176,184]
}

df = pd.DataFrame(data)

print(df)

>>>
ages  heights
0    14      165
1    18      180
2    24      176
3    42      184
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df['W'])

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

A    2.706850
B    0.651118
C   -2.018168
D    0.188695
E    0.190794
Name: W, dtype: float64
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df.W)

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

A    2.706850
B    0.651118
C   -2.018168
D    0.188695
E    0.190794
Name: W, dtype: float64
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df[['W','Z']])

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

          W         Z
A  2.706850  0.503826
B  0.651118  0.605965
C -2.018168 -0.589001
D  0.188695  0.955057
E  0.190794  0.683509
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

df['new'] = df['W']+df['Z']

print(df)
print(' ')
print(df['new'])

>>>
          W         X         Y         Z       new
A  2.706850  0.628133  0.907969  0.503826  3.210676
B  0.651118 -0.319318 -0.848077  0.605965  1.257083
C -2.018168  0.740122  0.528813 -0.589001 -2.607169
D  0.188695 -0.758872 -0.933237  0.955057  1.143752
E  0.190794  1.978757  2.605967  0.683509  0.874303

A    3.210676
B    1.257083
C   -2.607169
D    1.143752
E    0.874303
Name: new, dtype: float64
>>>
```

Since our data is only for the state of California, we can remove that column from our DataFrame, as it contains the same value for all rows

```py
import pandas as pd

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.set_index('date', inplace=True)
df.drop('state', axis=1, inplace=True)

df.info()

>>>
<class 'pandas.core.frame.DataFrame'>
Index: 342 entries, 25.01.20 to 31.12.20
Data columns (total 2 columns):
 #   Column  Non-Null Count  Dtype
---  ------  --------------  -----
 0   cases   342 non-null    int64
 1   deaths  342 non-null    int64
dtypes: int64(2)
memory usage: 8.0+ KB
>>>
```

drop() deletes rows and columns.
axis=1 specifies that we want to drop a column.
axis=0 will drop a row.

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

df['new'] = df['W']+df['Z']

print(df)

a = df.drop('new', axis=1)

print(' ')
print(a)

print(' ')
print(df)

b = df.drop('new', axis=1, inplace=True)

print(' ')
print(df)

>>>
          W         X         Y         Z       new
A  2.706850  0.628133  0.907969  0.503826  3.210676
B  0.651118 -0.319318 -0.848077  0.605965  1.257083
C -2.018168  0.740122  0.528813 -0.589001 -2.607169
D  0.188695 -0.758872 -0.933237  0.955057  1.143752
E  0.190794  1.978757  2.605967  0.683509  0.874303

          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

          W         X         Y         Z       new
A  2.706850  0.628133  0.907969  0.503826  3.210676
B  0.651118 -0.319318 -0.848077  0.605965  1.257083
C -2.018168  0.740122  0.528813 -0.589001 -2.607169
D  0.188695 -0.758872 -0.933237  0.955057  1.143752
E  0.190794  1.978757  2.605967  0.683509  0.874303

          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509
>>>
```

Pandas allows us to create our own columns.
For example, we can add a month column based on the date column
We do this by converting the date column to datetime and extracting the month name from it, assigning the value to our new month column.
Our date is in DD.MM.YY format, which is why we need to specify the format attribute.

```py
import pandas as pd

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")

df.drop('state', axis=1, inplace=True)

df['month'] = pd.to_datetime(df['date'], format="%d.%m.%y").dt.month_name()

df.set_index('date', inplace=True)

print(df.head())

>>>
cases  deaths    month
date                            
25.01.20      1       0  January
26.01.20      1       0  January
27.01.20      0       0  January
28.01.20      0       0  January
29.01.20      0       0  January
>>>
```

Now that our dataset is clean and set up, we are ready to look into some stats!
The describe() function returns the summary statistics for all the numeric columns

This function will show main statistics for the numeric columns, such as std, mean, min, max values, etc.

Run the code to see the result!
From the result, we see that the maximum cases that have been recorded in a day is 64987, while the average daily number of new cases is 6748.
We can also get the summary stats for a single column, for example:
```df['cases'].describe()```

```py
import pandas as pd

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")

df.drop('state', axis=1, inplace=True)
df['month'] = pd.to_datetime(df['date'], format="%d.%m.%y").dt.month_name()
df.set_index('date', inplace=True)

print(df.describe())

>>>
cases      deaths
count    342.000000  342.000000
mean    6747.862573   75.921053
std    10023.201267   76.639861
min        0.000000   -5.000000
25%     1352.250000   22.000000
50%     3462.500000   62.500000
75%     7637.250000  104.000000
max    64987.000000  574.000000
>>>
```

Since we have a month column, we can see how many values each month has, by using the value_counts() functions.
We can see that, for example, January has only 7 records, while the other months have data for all days.
value_counts() returns how many times a value appears in the dataset, also called the frequency of the values.

```py
import pandas as pd

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")

df.drop('state', axis=1, inplace=True)
df['month'] = pd.to_datetime(df['date'], format="%d.%m.%y").dt.month_name()
df.set_index('date', inplace=True)

print(df['month'].value_counts())

>>>
December     31
May          31
October      31
March        31
August       31
July         31
November     30
April        30
June         30
September    30
February     29
January       7
Name: month, dtype: int64
>>>
```

Now we can calculate data insights!
For example, let's determine the number of total infections in each month.
To do this, we need to group our data by the month column and then calculate the sum of the cases column for each month:

```py
import pandas as pd

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")

df.drop('state', axis=1, inplace=True)
df['month'] = pd.to_datetime(df['date'], format="%d.%m.%y").dt.month_name()
df.set_index('date', inplace=True)

print(df.groupby('month')['cases'].sum())

>>>
month
April          41887
August        210268
December     1070577
February          25
January            3
July          270120
June          119039
March           8555
May            62644
November      301944
October       114123
September     108584
Name: cases, dtype: int64
>>>
```

The groupby() function is used to group our dataset by the given column.

We can also calculate the number of total cases in the entire year
We can see that California had 2,307,769 infection cases in 2020.
Similarly, we can use min(), max(), mean(), etc. to find the corresponding values for each group.

```py
import pandas as pd

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")

df.drop('state', axis=1, inplace=True)
df['month'] = pd.to_datetime(df['date'], format="%d.%m.%y").dt.month_name()
df.set_index('date', inplace=True)

print(df['cases'].sum())

>>>
2307769
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df.shape)

>>>
(5,4)
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df.loc['A'])

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

W    2.706850
X    0.628133
Y    0.907969
Z    0.503826
Name: A, dtype: float64
>>>
```

Pandas uses the iloc function to select data based on its numeric index.
It works the same way indexing lists does in Python.

```py
import pandas as pd

data = {
   'ages': [14, 18, 24, 42],
   'heights': [165, 180, 176, 184]
}

df = pd.DataFrame(data, index=['James', 'Bob', 'Amy', 'Dave'])

# third row
print(df.iloc[2])
print(' ')
#first 3 rows
print(df.iloc[:3])
print(' ')
# rows 2 to 3
print(df.iloc[1:3])

>>>
ages        24
heights    176
Name: Amy, dtype: int64

       ages  heights
James    14      165
Bob      18      180
Amy      24      176

     ages  heights
Bob    18      180
Amy    24      176
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df.iloc[0])
print(' ')
print(df.iloc[2])

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

W    2.706850
X    0.628133
Y    0.907969
Z    0.503826
Name: A, dtype: float64

W   -2.018168
X    0.740122
Y    0.528813
Z   -0.589001
Name: C, dtype: float64
>>>
```

The DataFrame automatically creates a numeric index for each row.
We can specify a custom index, when creating the DataFrame

```py
import pandas as pd

data = {
   'ages': [14, 18, 24, 42],
   'heights': [165, 180, 176, 184]
}

df = pd.DataFrame(data, index=['James', 'Bob', 'Amy', 'Dave'])
print(df)

>>>
ages  heights
James    14      165
Bob      18      180
Amy      24      176
Dave     42      184
>>>
```

Now we can access a row using its index and the loc[] function
This will output the row that corresponds to the index "Bob".
Note, that loc uses square brackets to specify the index.

```py
print(df.loc["Bob"])

>>>
ages        18
heights    180
Name: Bob, dtype: int64
>>>
```

We can select a single column by specifying its name in square brackets:

```py
import pandas as pd

data = {
   'ages': [14, 18, 24, 42],
   'heights': [165, 180, 176, 184]
}

df = pd.DataFrame(data, index=['James', 'Bob', 'Amy', 'Dave'])

print(df["ages"])

>>>
James    14
Bob      18
Amy      24
Dave     42
Name: ages, dtype: int64
>>>
```

If we want to select multiple columns, we can specify a list of column names:

```py
import pandas as pd

data = {
   'ages': [14, 18, 24, 42],
   'heights': [165, 180, 176, 184]
}

df = pd.DataFrame(data, index=['James', 'Bob', 'Amy', 'Dave'])

print(df[["ages", "heights"]])

>>>
ages  heights
James    14      165
Bob      18      180
Amy      24      176
Dave     42      184
>>>
```

We can also select the data based on a condition.
For example, let's select all rows where age is greater than 18 and height is greater than 180

```py
import pandas as pd

data = {
   'ages': [14, 18, 24, 42],
   'heights': [165, 180, 176, 184]
}

df = pd.DataFrame(data, index=['James', 'Bob', 'Amy', 'Dave'])

print(df[(df['ages']>18) & (df['heights']>180)])

>>>
ages  heights
Dave    42      184
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df.loc['B','Y'])

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

-0.8480769834036315
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df.loc[['A','B'],['W','Y']])

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

          W         Y
A  2.706850  0.907969
B  0.651118 -0.848077
>>>
```

[^^^](#PANDAS)

---

#### DATAFRAMES_02

```

```

```py

```

[^^^](#PANDAS)

---

#### DATAFRAMES_03

```

```

```py

```

[^^^](#PANDAS)

---

#### MISSING_DATA

```

```

```py

```

[^^^](#PANDAS)

---

#### GROP_BY

```

```

```py

```

[^^^](#PANDAS)

---

#### MERGE_JOIN_CONCAT

```

```

```py

```

[^^^](#PANDAS)

---

#### READING_DATA

It is quite common for data to come in a file format. One of the most popular formats is the CSV (comma-separated values).
Pandas supports reading data from a CSV file directly into a DataFrame.

For our examples, we will use a CSV file that contains the COVID-19 infection data in California for the year 2020, called 'ca-covid.csv'.

The read_csv() function reads the data of a CSV file into a DataFrame

```py
df = pd.read_csv("ca-covid.csv")
```

Pandas also supports reading from JSON files, as well as SQL databases.

Once we have the data in a DataFrame, we can start exploring it.
We can get the first rows of the data using the head() function of the DataFrame

```py
import pandas as pd

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")

print(df.head())

>>>
date       state  cases  deaths
0  25.01.20  California      1       0
1  26.01.20  California      1       0
2  27.01.20  California      0       0
3  28.01.20  California      0       0
4  29.01.20  California      0       0
>>>
```

By default it returns the first 5 rows. You can instruct it to return the number of rows you would like as an argument (for example, df.head(10) will return the first 10 rows).

We can see that our DataFrame contains the date, state, number of cases and deaths for that date.
Similarly, you can get the last rows using the tail() function.

The info() function is used to get essential information about your dataset, such as number of rows, columns, data types, etc

```py
import pandas as pd

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")

df.info()

>>>
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 342 entries, 0 to 341
Data columns (total 4 columns):
 #   Column  Non-Null Count  Dtype
---  ------  --------------  -----
 0   date    342 non-null    object
 1   state   342 non-null    object
 2   cases   342 non-null    int64
 3   deaths  342 non-null    int64
dtypes: int64(2), object(2)
memory usage: 10.8+ KB
>>>
```

From the result, we can see that our dataset contains 342 rows and 4 columns: date, state, cases, deaths.

We also see that Pandas has added an auto generated index.
We can set our own index column by using the set_index() function

```py
import pandas as pd

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.set_index("date", inplace=True)

print(df.head())

>>>
state  cases  deaths
date                               
25.01.20  California      1       0
26.01.20  California      1       0
27.01.20  California      0       0
28.01.20  California      0       0
29.01.20  California      0       0
>>>
```

The inplace=True argument specifies that the change will be applied to our DataFrame, without the need to assign it to a new DataFrame variable.

[^^^](#PANDAS)

---
