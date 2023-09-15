
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

* [PANDAS_BASICS](#PANDAS_BASICS)

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

#### PANDAS_BASICS

```py
import pandas as pd
```

```
```

```py
df = pd.read_csv('sample_data/california_housing_train.csv')
```

```py
df

>>>
longitude	latitude	housing_median_age	total_rooms	total_bedrooms	population	households	median_income	median_house_value
0	-114.31	34.19	15.0	5612.0	1283.0	1015.0	472.0	1.4936	66900.0
1	-114.47	34.40	19.0	7650.0	1901.0	1129.0	463.0	1.8200	80100.0
2	-114.56	33.69	17.0	720.0	174.0	333.0	117.0	1.6509	85700.0
3	-114.57	33.64	14.0	1501.0	337.0	515.0	226.0	3.1917	73400.0
4	-114.57	33.57	20.0	1454.0	326.0	624.0	262.0	1.9250	65500.0
...	...	...	...	...	...	...	...	...	...
16995	-124.26	40.58	52.0	2217.0	394.0	907.0	369.0	2.3571	111400.0
16996	-124.27	40.69	36.0	2349.0	528.0	1194.0	465.0	2.5179	79000.0
16997	-124.30	41.84	17.0	2677.0	531.0	1244.0	456.0	3.0313	103600.0
16998	-124.30	41.80	19.0	2672.0	552.0	1298.0	478.0	1.9797	85800.0
16999	-124.35	40.54	52.0	1820.0	300.0	806.0	270.0	3.0147	94600.0
17000 rows × 9 columns
>>>
```

```py
df.head()

>>>

longitude	latitude	housing_median_age	total_rooms	total_bedrooms	population	households	median_income	median_house_value
0	-114.31	34.19	15.0	5612.0	1283.0	1015.0	472.0	1.4936	66900.0
1	-114.47	34.40	19.0	7650.0	1901.0	1129.0	463.0	1.8200	80100.0
2	-114.56	33.69	17.0	720.0	174.0	333.0	117.0	1.6509	85700.0
3	-114.57	33.64	14.0	1501.0	337.0	515.0	226.0	3.1917	73400.0
4	-114.57	33.57	20.0	1454.0	326.0	624.0	262.0	1.9250	65500.0
>>>
```

```py
type(df)

>>>
pandas.core.frame.DataFrame
>>>
```

```py
hh = df['households']
hh.head()

>>>
0    472.0
1    463.0
2    117.0
3    226.0
4    262.0
Name: households, dtype: float64
>>>
```

```py
type(hh)

>>>
pandas.core.series.Series
>>>
```

```py
hh.mean()

>>>
501.2219411764706
>>>
```

```py
hh.std()

>>>
384.5208408559009
>>>
```

```py
(hh.min(), hh.max(), hh.count())

>>>
(1.0, 6082.0, 17000)
>>>
```

```py
hh.median()

>>>
409.0
>>>
```

```py
hh.describe()

>>>
count    17000.000000
mean       501.221941
std        384.520841
min          1.000000
25%        282.000000
50%        409.000000
75%        605.250000
max       6082.000000
Name: households, dtype: float64
>>>
```

```py
rooms = df[['total_bedrooms','total_rooms']]
rooms.head()

>>>
total_bedrooms	total_rooms
0	1283.0	5612.0
1	1901.0	7650.0
2	174.0	720.0
3	337.0	1501.0
4	326.0	1454.0
>>>
```

```py
rooms.describe()

>>>
total_bedrooms	total_rooms
count	17000.000000	17000.000000
mean	539.410824	2643.664412
std	421.499452	2179.947071
min	1.000000	2.000000
25%	297.000000	1462.000000
50%	434.000000	2127.000000
75%	648.250000	3151.250000
max	6445.000000	37937.000000
>>>
```

```py
hh.hist()
df.hist()
```

- convert everything to a numpy library

```py
df.to_numpy()
```

```py
rooms.plot.scatter('total_bedrooms', 'total_rooms')
```

```py
rooms.corr()

>>>

total_bedrooms	total_rooms
total_bedrooms	1.000000	0.928403
total_rooms	0.928403	1.000000
>>>
```

```py
df.corr()

>>>
longitude	latitude	housing_median_age	total_rooms	total_bedrooms	population	households	median_income	median_house_value
longitude	1.000000	-0.925208	-0.114250	0.047010	0.071802	0.101674	0.059628	-0.015485	-0.044982
latitude	-0.925208	1.000000	0.016454	-0.038773	-0.069373	-0.111261	-0.074902	-0.080303	-0.144917
housing_median_age	-0.114250	0.016454	1.000000	-0.360984	-0.320434	-0.295890	-0.302754	-0.115932	0.106758
total_rooms	0.047010	-0.038773	-0.360984	1.000000	0.928403	0.860170	0.919018	0.195383	0.130991
total_bedrooms	0.071802	-0.069373	-0.320434	0.928403	1.000000	0.881169	0.980920	-0.013495	0.045783
population	0.101674	-0.111261	-0.295890	0.860170	0.881169	1.000000	0.909247	-0.000638	-0.027850
households	0.059628	-0.074902	-0.302754	0.919018	0.980920	0.909247	1.000000	0.007644	0.061031
median_income	-0.015485	-0.080303	-0.115932	0.195383	-0.013495	-0.000638	0.007644	1.000000	0.691871
median_house_value	-0.044982	-0.144917	0.106758	0.130991	0.045783	-0.027850	0.061031	0.691871	1.000000
>>>
```

```py
rooms.loc[3]

>>>
total_bedrooms     337.0
total_rooms       1501.0
Name: 3, dtype: float64
>>>
```

```py
total_bedrooms = rooms['total_bedrooms']
total_bedrooms

>>>
0        1283.0
1        1901.0
2         174.0
3         337.0
4         326.0
          ...  
16995     394.0
16996     528.0
16997     531.0
16998     552.0
16999     300.0
Name: total_bedrooms, Length: 17000, dtype: float64
>>>
```

```py
total_bedrooms > 325

>>>
0         True
1         True
2        False
3         True
4         True
         ...  
16995     True
16996     True
16997     True
16998     True
16999    False
Name: total_bedrooms, Length: 17000, dtype: bool
>>>
```

```py
rooms[total_bedrooms>325]

>>>
total_bedrooms	total_rooms
0	1283.0	5612.0
1	1901.0	7650.0
3	337.0	1501.0
4	326.0	1454.0
6	680.0	2907.0
...	...	...
16994	419.0	1430.0
16995	394.0	2217.0
16996	528.0	2349.0
16997	531.0	2677.0
16998	552.0	2672.0
11835 rows × 2 columns
>>>
```

```py
rooms.dtypes

>>>
total_bedrooms    float64
total_rooms       float64
dtype: object
>>>
```

```py
df.dtypes

>>>
longitude             float64
latitude              float64
housing_median_age    float64
total_rooms           float64
total_bedrooms        float64
population            float64
households            float64
median_income         float64
median_house_value    float64
dtype: object
>>>
```

```py
import names
names.get_full_name()

>>>
Donald Ruiz
>>>
```

```py
df.apply(lambda row: names.get_full_name(), axis=1)

>>>
0           Susan Perry
1        Robert Daniels
2             Sean Beck
3         Charles Lewis
4         Kenneth Roach
              ...      
16995     Russell Duran
16996    Bonnie Mcgriff
16997       John Graham
16998     Delores Tovar
16999    Joseph Frazier
Length: 17000, dtype: object
>>>
```

```py
df['random_name'] = df.apply(lambda row: names.get_full_name(), axis=1)
df.head()

>>>
longitude	latitude	housing_median_age	total_rooms	total_bedrooms	population	households	median_income	median_house_value	random_name
0	-114.31	34.19	15.0	5612.0	1283.0	1015.0	472.0	1.4936	66900.0	Ronald Oldaker
1	-114.47	34.40	19.0	7650.0	1901.0	1129.0	463.0	1.8200	80100.0	Bruce Stallings
2	-114.56	33.69	17.0	720.0	174.0	333.0	117.0	1.6509	85700.0	Cassandra Hill
3	-114.57	33.64	14.0	1501.0	337.0	515.0	226.0	3.1917	73400.0	David Bolte
4	-114.57	33.57	20.0	1454.0	326.0	624.0	262.0	1.9250	65500.0	Shelley Jones
>>>
```

```py
df.dtypes

>>>
longitude             float64
latitude              float64
housing_median_age    float64
total_rooms           float64
total_bedrooms        float64
population            float64
households            float64
median_income         float64
median_house_value    float64
random_name            object
dtype: object
>>>
```

```py


>>>

>>>
```

```py


>>>

>>>
```

```py


>>>

>>>
```

```py


>>>

>>>
```

```py


>>>

>>>
```

---

#### INTRO_W3

##### What is Pandas?

Pandas is a Python library used for working with data sets.
It has functions for analyzing, cleaning, exploring, and manipulating data.
The name "Pandas" has a reference to both "Panel Data", and "Python Data Analysis" and was created by Wes McKinney in 2008.

##### Why Use Pandas?

Pandas allows us to analyze big data and make conclusions based on statistical theories.
Pandas can clean messy data sets, and make them readable and relevant.
Relevant data is very important in data science.

##### What Can Pandas Do?

Pandas gives you answers about the data. Like:

- Is there a correlation between two or more columns?
- What is average value?
- Max value?
- Min value?

Pandas are also able to delete rows that are not relevant, or contains wrong values, like empty or NULL values. This is called cleaning the data.

##### Where is the Pandas Codebase?

The source code for Pandas is located at this github repository https://github.com/pandas-dev/pandas

[^^^](#PANDAS)

---

#### GETTING_STARTED_W3

##### Import Pandas

Once Pandas is installed, import it in your applications by adding the import keyword:

```py
import pandas
```

```py
import pandas

mydataset = {
  'cars': ["BMW", "Volvo", "Ford"],
  'passings': [3, 7, 2]
}

myvar = pandas.DataFrame(mydataset)

print(myvar)

>>>
    cars  passings
0    BMW         3
1  Volvo         7
2   Ford         2
>>>
```

```
import pandas

mydataset = {
  'cars': ["BMW", "Volvo", "Ford", "VW"],
  'passings': [3, 7, 2, 55]
}

myvar = pandas.DataFrame(mydataset)

print(myvar)

>>>
cars  passings
0    BMW         3
1  Volvo         7
2   Ford         2
3     VW        55
>>>
```

```py
import pandas

DS = {
  'cars': ["A", "B", "C"],
  'passings': [1,2,3]
}

res = pandas.DataFrame(DS)

print(res)

>>>
cars  passings
0    A         1
1    B         2
2    C         3
>>>
```

##### Pandas as pd

Pandas is usually imported under the pd alias.
alias: In Python alias are an alternate name for referring to the same thing.
Create an alias with the as keyword while importing:

```py
import pandas as pd
```

Now the Pandas package can be referred to as pd instead of pandas.

```py
import pandas as pd

mydataset = {
  'cars': ["BMW", "Volvo", "Ford"],
  'passings': [3, 7, 2]
}

myvar = pd.DataFrame(mydataset)

print(myvar)

>>>
    cars  passings
0    BMW         3
1  Volvo         7
2   Ford         2
>>>
```

```py
import pandas as pd

DS = {
  'words': ["A", "B", "C", "X", "Y", "Z"],
  'numbers': [1,2,3,4,5,6]
}

res = pd.DataFrame(DS)

print(res)

>>>
words  numbers
0     A        1
1     B        2
2     C        3
3     X        4
4     Y        5
5     Z        6
>>>
```

##### Checking Pandas Version

The version string is stored under __version__ attribute.

```py
import pandas as pd

print(pd.__version__)

>>>
1.0.3
>>>
```

[^^^](#PANDAS)

---

#### SERIES_W3

##### What is a Series?

A Pandas Series is like a column in a table.
It is a one-dimensional array holding data of any type.

```py
import pandas as pd

a = [1, 7, 2]

myvar = pd.Series(a)

print(myvar)

>>>
0    1
1    7
2    2
dtype: int64
>>>
```

```py
import pandas as pd

a = ["a", "b", "c", "d"]

res = pd.Series(a)

print(res)

>>>
0    a
1    b
2    c
3    d
dtype: object
>>>
```

##### Labels

If nothing else is specified, the values are labeled with their index number. First value has index 0, second value has index 1 etc.

This label can be used to access a specified value.

```py
import pandas as pd

a = [1, 7, 2]

myvar = pd.Series(a)

print(myvar[0])

>>>
1
>>>
```

##### Create Labels

With the index argument, you can name your own labels.

```py
import pandas as pd

a = [1, 7, 2]

myvar = pd.Series(a, index = ["x", "y", "z"])

print(myvar)

>>>
x    1
y    7
z    2
dtype: int64
>>>
```

When you have created labels, you can access an item by referring to the label.

```py
import pandas as pd

a = [1, 7, 2]

myvar = pd.Series(a, index = ["x", "y", "z"])

print(myvar["y"])

>>>
7
>>>
```

##### Key/Value Objects as Series

You can also use a key/value object, like a dictionary, when creating a Series.

```py
import pandas as pd

calories = {"day1": 420, "day2": 380, "day3": 390}

myvar = pd.Series(calories)

print(myvar)

>>>
day1    420
day2    380
day3    390
dtype: int64
>>>
```

The keys of the dictionary become the labels.
To select only some of the items in the dictionary, use the index argument and specify only the items you want to include in the Series.

```py
import pandas as pd

calories = {"day1": 420, "day2": 380, "day3": 390}

myvar = pd.Series(calories, index = ["day1", "day2"])

print(myvar)

>>>
day1    420
day2    380
dtype: int64
>>>
```

##### DataFrames

Data sets in Pandas are usually multi-dimensional tables, called DataFrames.
Series is like a column, a DataFrame is the whole table.

```py
import pandas as pd

data = {
  "calories": [420, 380, 390],
  "duration": [50, 40, 45]
}

myvar = pd.DataFrame(data)

print(myvar)

>>>
calories  duration
0       420        50
1       380        40
2       390        45
>>>
```

[^^^](#PANDAS)

---

#### DATAFRAMES_W3

##### What is a DataFrame?

A Pandas DataFrame is a 2 dimensional data structure, like a 2 dimensional array, or a table with rows and columns.

```py
import pandas as pd

data = {
  "calories": [420, 380, 390],
  "duration": [50, 40, 45]
}

#load data into a DataFrame object:
df = pd.DataFrame(data)

print(df)

>>>
calories  duration
0       420        50
1       380        40
2       390        45
>>>
```

##### Locate Row

As you can see from the result above, the DataFrame is like a table with rows and columns.
Pandas use the loc attribute to return one or more specified row(s)

```py
import pandas as pd

data = {
  "calories": [420, 380, 390],
  "duration": [50, 40, 45]
}

#load data into a DataFrame object:
df = pd.DataFrame(data)

print(df.loc[0])

>>>
calories    420
duration     50
Name: 0, dtype: int64
>>>
```

This example returns a Pandas Series.

```py
import pandas as pd

data = {
  "calories": [420, 380, 390],
  "duration": [50, 40, 45]
}

#load data into a DataFrame object:
df = pd.DataFrame(data)

print(df.loc[[0, 1]])

>>>
   calories  duration
0       420        50
1       380        40
>>>
```

When using [], the result is a Pandas DataFrame.

##### Named Indexes

With the index argument, you can name your own indexes.

```py
import pandas as pd

data = {
  "calories": [420, 380, 390],
  "duration": [50, 40, 45]
}

df = pd.DataFrame(data, index = ["day1", "day2", "day3"])

print(df)

>>>
calories  duration
day1       420        50
day2       380        40
day3       390        45
>>>
```

```py
import pandas as pd

data = {
  "calories": [420, 380, 390],
  "duration": [50, 40, 45]
}

df = pd.DataFrame(data, index = ["day1", "day2", "day3"])
dx = pd.DataFrame(data)

print(df)
print(' ')
print(dx)

>>>
calories  duration
day1       420        50
day2       380        40
day3       390        45

calories  duration
0       420        50
1       380        40
2       390        45
>>>
```

##### Locate Named Indexes

Use the named index in the loc attribute to return the specified row(s).

```py
import pandas as pd

data = {
  "calories": [420, 380, 390],
  "duration": [50, 40, 45]
}

df = pd.DataFrame(data, index = ["day1", "day2", "day3"])

print(df.loc["day2"])

>>>
calories    380
duration     40
Name: day2, dtype: int64
>>>
```

##### Load Files Into a DataFrame

If your data sets are stored in a file, Pandas can load them into a DataFrame.

```py
import pandas as pd

df = pd.read_csv('data.csv')

print(df)

>>>
Duration  Pulse  Maxpulse  Calories
0          60    110       130     409.1
1          60    117       145     479.0
2          60    103       135     340.0
3          45    109       175     282.4
4          45    117       148     406.0
..        ...    ...       ...       ...
164        60    105       140     290.8
165        60    110       145     300.4
166        60    115       145     310.2
167        75    120       150     320.4
168        75    125       150     330.4

[169 rows x 4 columns]
>>>
```

[^^^](#PANDAS)

---

#### READ_CSV_W3

##### Read CSV Files

A simple way to store big data sets is to use CSV files (comma separated files).
CSV files contains plain text and is a well know format that can be read by everyone including Pandas.
In our examples we will be using a CSV file called 'data.csv'.

```py
import pandas as pd

df = pd.read_csv('data.csv')

print(df.to_string())

>>>
Duration  Pulse  Maxpulse  Calories
0          60    110       130     409.1
1          60    117       145     479.0
2          60    103       135     340.0
3          45    109       175     282.4
4          45    117       148     406.0
5          60    102       127     300.5
6          60    110       136     374.0
7          45    104       134     253.3
8          30    109       133     195.1
9          60     98       124     269.0
10         60    103       147     329.3
11         60    100       120     250.7
12         60    106       128     345.3
13         60    104       132     379.3
14         60     98       123     275.0
15         60     98       120     215.2
16         60    100       120     300.0
>>>
```

use ```to_string()``` to print the entire DataFrame.

If you have a large DataFrame with many rows, Pandas will only return the first 5 rows, and the last 5 rows:

```py
import pandas as pd

df = pd.read_csv('data.csv')

print(df)

>>>
Duration  Pulse  Maxpulse  Calories
0          60    110       130     409.1
1          60    117       145     479.0
2          60    103       135     340.0
3          45    109       175     282.4
4          45    117       148     406.0
..        ...    ...       ...       ...
164        60    105       140     290.8
165        60    110       145     300.4
166        60    115       145     310.2
167        75    120       150     320.4
168        75    125       150     330.4

[169 rows x 4 columns]
>>>
```

##### max_rows

The number of rows returned is defined in Pandas option settings.
You can check your system's maximum rows with the pd.options.display.max_rows statement.

```py
import pandas as pd

print(pd.options.display.max_rows)

>>>
60
>>>
```

In my system the number is 60, which means that if the DataFrame contains more than 60 rows, the print(df) statement will return only the headers and the first and last 5 rows.

You can change the maximum rows number with the same statement.

```py
import pandas as pd

pd.options.display.max_rows = 9999

df = pd.read_csv('data.csv')

print(df)

>>>
Duration  Pulse  Maxpulse  Calories
0          60    110       130     409.1
1          60    117       145     479.0
2          60    103       135     340.0
3          45    109       175     282.4
4          45    117       148     406.0
5          60    102       127     300.5
6          60    110       136     374.0
7          45    104       134     253.3
8          30    109       133     195.1
9          60     98       124     269.0
10         60    103       147     329.3
11         60    100       120     250.7
12         60    106       128     345.3
13         60    104       132     379.3
14         60     98       123     275.0
15         60     98       120     215.2
16         60    100       120     300.0
>>>
```

[^^^](#PANDAS)

---

#### READ_JSON_W3

##### Read JSON

Big data sets are often stored, or extracted as JSON.
JSON is plain text, but has the format of an object, and is well known in the world of programming, including Pandas.
In our examples we will be using a JSON file called 'data.json'.

```py
import pandas as pd

df = pd.read_json('data.json')

print(df.to_string())

>>>
Duration  Pulse  Maxpulse  Calories
0          60    110       130     409.1
1          60    117       145     479.0
2          60    103       135     340.0
3          45    109       175     282.4
4          45    117       148     406.0
5          60    102       127     300.5
6          60    110       136     374.0
7          45    104       134     253.3
8          30    109       133     195.1
9          60     98       124     269.0
10         60    103       147     329.3
11         60    100       120     250.7
12         60    106       128     345.3
13         60    104       132     379.3
14         60     98       123     275.0
15         60     98       120     215.2
16         60    100       120     300.0
>>>
```

use ```to_string()``` to print the entire DataFrame.

##### Dictionary as JSON

JSON = Python Dictionary.
JSON objects have the same format as Python dictionaries.
If your JSON code is not in a file, but in a Python Dictionary, you can load it into a DataFrame directly:

```py
import pandas as pd

data = {
  "Duration":{
    "0":60,
    "1":60,
    "2":60,
    "3":45,
    "4":45,
    "5":60
  },
  "Pulse":{
    "0":110,
    "1":117,
    "2":103,
    "3":109,
    "4":117,
    "5":102
  },
  "Maxpulse":{
    "0":130,
    "1":145,
    "2":135,
    "3":175,
    "4":148,
    "5":127
  },
  "Calories":{
    "0":409.1,
    "1":479.0,
    "2":340.0,
    "3":282.4,
    "4":406.0,
    "5":300.5
  }
}

df = pd.DataFrame(data)

print(df)

>>>
Duration  Pulse  Maxpulse  Calories
0        60    110       130     409.1
1        60    117       145     479.0
2        60    103       135     340.0
3        45    109       175     282.4
4        45    117       148     406.0
5        60    102       127     300.5
>>>
```

[^^^](#PANDAS)

---

#### ANALYZING_DATA_W3

##### Viewing the Data

One of the most used method for getting a quick overview of the DataFrame, is the head() method.
The head() method returns the headers and a specified number of rows, starting from the top.

```py
import pandas as pd

df = pd.read_csv('data.csv')

print(df.head(10))

>>>
Duration  Pulse  Maxpulse  Calories
0        60    110       130     409.1
1        60    117       145     479.0
2        60    103       135     340.0
3        45    109       175     282.4
4        45    117       148     406.0
5        60    102       127     300.5
6        60    110       136     374.0
7        45    104       134     253.3
8        30    109       133     195.1
9        60     98       124     269.0
>>>
```

In our examples we will be using a CSV file called 'data.csv'.
if the number of rows is not specified, the head() method will return the top 5 rows.

```py
import pandas as pd

df = pd.read_csv('data.csv')

print(df.head())

>>>
Duration  Pulse  Maxpulse  Calories
0        60    110       130     409.1
1        60    117       145     479.0
2        60    103       135     340.0
3        45    109       175     282.4
4        45    117       148     406.0
>>>
```

There is also a tail() method for viewing the last rows of the DataFrame.
The tail() method returns the headers and a specified number of rows, starting from the bottom.

```py
import pandas as pd

df = pd.read_csv('data.csv')

print(df.tail())

>>>
Duration  Pulse  Maxpulse  Calories
164        60    105       140     290.8
165        60    110       145     300.4
166        60    115       145     310.2
167        75    120       150     320.4
168        75    125       150     330.4
>>>
```

##### Info About the Data

The DataFrames object has a method called info(), that gives you more information about the data set.

```py
import pandas as pd

df = pd.read_csv('data.csv')

print(df.info())

>>>
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 169 entries, 0 to 168
Data columns (total 4 columns):
 #   Column    Non-Null Count  Dtype  
---  ------    --------------  -----  
 0   Duration  169 non-null    int64  
 1   Pulse     169 non-null    int64  
 2   Maxpulse  169 non-null    int64  
 3   Calories  164 non-null    float64
dtypes: float64(1), int64(3)
memory usage: 5.4 KB
None
>>>
```

#### Null Values

The info() method also tells us how many Non-Null values there are present in each column, and in our data set it seems like there are 164 of 169 Non-Null values in the "Calories" column.

Which means that there are 5 rows with no value at all, in the "Calories" column, for whatever reason.

Empty values, or Null values, can be bad when analyzing data, and you should consider removing rows with empty values. This is a step towards what is called cleaning data, and you will learn more about that in the next chapters.

[^^^](#PANDAS)

---

#### CLEANING_DATA_W3

##### Data Cleaning

Data cleaning means fixing bad data in your data set.

Bad data could be:

- Empty cells
- Data in wrong format
- Wrong data
- Duplicates

In this tutorial you will learn how to deal with all of them.

[^^^](#PANDAS)

---

#### CLEANING_EMPTY_CELLS_W3

##### Empty Cells

Empty cells can potentially give you a wrong result when you analyze data.

##### Remove Rows

One way to deal with empty cells is to remove rows that contain empty cells.
This is usually OK, since data sets can be very big, and removing a few rows will not have a big impact on the result.

```py
import pandas as pd

df = pd.read_csv('data.csv')

new_df = df.dropna()

print(new_df.to_string())

#Notice in the result that some rows have been removed (row 18, 22 and 28).

#These rows had cells with empty values.

>>>
Duration          Date  Pulse  Maxpulse  Calories
0         60  '2020/12/01'    110       130     409.1
1         60  '2020/12/02'    117       145     479.0
2         60  '2020/12/03'    103       135     340.0
3         45  '2020/12/04'    109       175     282.4
4         45  '2020/12/05'    117       148     406.0
5         60  '2020/12/06'    102       127     300.0
6         60  '2020/12/07'    110       136     374.0
7        450  '2020/12/08'    104       134     253.3
8         30  '2020/12/09'    109       133     195.1
9         60  '2020/12/10'     98       124     269.0
10        60  '2020/12/11'    103       147     329.3
11        60  '2020/12/12'    100       120     250.7
12        60  '2020/12/12'    100       120     250.7
13        60  '2020/12/13'    106       128     345.3
14        60  '2020/12/14'    104       132     379.3
15        60  '2020/12/15'     98       123     275.0
16        60  '2020/12/16'     98       120     215.2
17        60  '2020/12/17'    100       120     300.0
19        60  '2020/12/19'    103       123     323.0
20        45  '2020/12/20'     97       125     243.0
21        60  '2020/12/21'    108       131     364.2
23        60  '2020/12/23'    130       101     300.0
24        45  '2020/12/24'    105       132     246.0
25        60  '2020/12/25'    102       126     334.5
26        60    2020/12/26    100       120     250.0
27        60  '2020/12/27'     92       118     241.0
29        60  '2020/12/29'    100       132     280.0
30        60  '2020/12/30'    102       129     380.3
31        60  '2020/12/31'     92       115     243.0
>>>
```

By default, the dropna() method returns a new DataFrame, and will not change the original.
If you want to change the original DataFrame, use the inplace = True argument:

```py
import pandas as pd

df = pd.read_csv('data.csv')

df.dropna(inplace = True)

print(df.to_string())

#Notice in the result that some rows have been removed (row 18, 22 and 28).

#These rows had cells with empty values.

>>>
Duration          Date  Pulse  Maxpulse  Calories
0         60  '2020/12/01'    110       130     409.1
1         60  '2020/12/02'    117       145     479.0
2         60  '2020/12/03'    103       135     340.0
3         45  '2020/12/04'    109       175     282.4
4         45  '2020/12/05'    117       148     406.0
5         60  '2020/12/06'    102       127     300.0
6         60  '2020/12/07'    110       136     374.0
7        450  '2020/12/08'    104       134     253.3
8         30  '2020/12/09'    109       133     195.1
9         60  '2020/12/10'     98       124     269.0
10        60  '2020/12/11'    103       147     329.3
11        60  '2020/12/12'    100       120     250.7
12        60  '2020/12/12'    100       120     250.7
13        60  '2020/12/13'    106       128     345.3
14        60  '2020/12/14'    104       132     379.3
15        60  '2020/12/15'     98       123     275.0
16        60  '2020/12/16'     98       120     215.2
17        60  '2020/12/17'    100       120     300.0
19        60  '2020/12/19'    103       123     323.0
20        45  '2020/12/20'     97       125     243.0
21        60  '2020/12/21'    108       131     364.2
23        60  '2020/12/23'    130       101     300.0
24        45  '2020/12/24'    105       132     246.0
25        60  '2020/12/25'    102       126     334.5
26        60    2020/12/26    100       120     250.0
27        60  '2020/12/27'     92       118     241.0
29        60  '2020/12/29'    100       132     280.0
30        60  '2020/12/30'    102       129     380.3
31        60  '2020/12/31'     92       115     243.0
>>>
```

Now, the dropna(inplace = True) will NOT return a new DataFrame, but it will remove all rows containg NULL values from the original DataFrame.

##### Replace Empty Values

Another way of dealing with empty cells is to insert a new value instead.
This way you do not have to delete entire rows just because of some empty cells.
The fillna() method allows us to replace empty cells with a value:

```py
import pandas as pd

df = pd.read_csv('data.csv')

df.fillna(130, inplace = True)

print(df.to_string())

#Notice in the result: empty cells got the value 130 (in row 18, 22 and 28).

>>>
Duration          Date  Pulse  Maxpulse  Calories
0         60  '2020/12/01'    110       130     409.1
1         60  '2020/12/02'    117       145     479.0
2         60  '2020/12/03'    103       135     340.0
3         45  '2020/12/04'    109       175     282.4
4         45  '2020/12/05'    117       148     406.0
5         60  '2020/12/06'    102       127     300.0
6         60  '2020/12/07'    110       136     374.0
7        450  '2020/12/08'    104       134     253.3
8         30  '2020/12/09'    109       133     195.1
9         60  '2020/12/10'     98       124     269.0
10        60  '2020/12/11'    103       147     329.3
11        60  '2020/12/12'    100       120     250.7
12        60  '2020/12/12'    100       120     250.7
13        60  '2020/12/13'    106       128     345.3
14        60  '2020/12/14'    104       132     379.3
15        60  '2020/12/15'     98       123     275.0
16        60  '2020/12/16'     98       120     215.2
17        60  '2020/12/17'    100       120     300.0
18        45  '2020/12/18'     90       112     130.0
19        60  '2020/12/19'    103       123     323.0
20        45  '2020/12/20'     97       125     243.0
21        60  '2020/12/21'    108       131     364.2
22        45           130    100       119     282.0
23        60  '2020/12/23'    130       101     300.0
24        45  '2020/12/24'    105       132     246.0
25        60  '2020/12/25'    102       126     334.5
26        60    2020/12/26    100       120     250.0
27        60  '2020/12/27'     92       118     241.0
28        60  '2020/12/28'    103       132     130.0
29        60  '2020/12/29'    100       132     280.0
30        60  '2020/12/30'    102       129     380.3
31        60  '2020/12/31'     92       115     243.0
>>>
```

##### Replace Only For Specified Columns

The example above replaces all empty cells in the whole Data Frame.
To only replace empty values for one column, specify the column name for the DataFrame:

```py
import pandas as pd

df = pd.read_csv('data.csv')

df["Calories"].fillna(130, inplace = True)

print(df.to_string())

#This operation inserts 130 in empty cells in the "Calories" column (row 18 and 28).

>>>
Duration          Date  Pulse  Maxpulse  Calories
0         60  '2020/12/01'    110       130     409.1
1         60  '2020/12/02'    117       145     479.0
2         60  '2020/12/03'    103       135     340.0
3         45  '2020/12/04'    109       175     282.4
4         45  '2020/12/05'    117       148     406.0
5         60  '2020/12/06'    102       127     300.0
6         60  '2020/12/07'    110       136     374.0
7        450  '2020/12/08'    104       134     253.3
8         30  '2020/12/09'    109       133     195.1
9         60  '2020/12/10'     98       124     269.0
10        60  '2020/12/11'    103       147     329.3
11        60  '2020/12/12'    100       120     250.7
12        60  '2020/12/12'    100       120     250.7
13        60  '2020/12/13'    106       128     345.3
14        60  '2020/12/14'    104       132     379.3
15        60  '2020/12/15'     98       123     275.0
16        60  '2020/12/16'     98       120     215.2
17        60  '2020/12/17'    100       120     300.0
18        45  '2020/12/18'     90       112     130.0
19        60  '2020/12/19'    103       123     323.0
20        45  '2020/12/20'     97       125     243.0
21        60  '2020/12/21'    108       131     364.2
22        45           NaN    100       119     282.0
23        60  '2020/12/23'    130       101     300.0
24        45  '2020/12/24'    105       132     246.0
25        60  '2020/12/25'    102       126     334.5
26        60    2020/12/26    100       120     250.0
27        60  '2020/12/27'     92       118     241.0
28        60  '2020/12/28'    103       132     130.0
29        60  '2020/12/29'    100       132     280.0
30        60  '2020/12/30'    102       129     380.3
31        60  '2020/12/31'     92       115     243.0
>>>
```

##### Replace Using Mean, Median, or Mode

A common way to replace empty cells, is to calculate the mean, median or mode value of the column.
Pandas uses the mean() median() and mode() methods to calculate the respective values for a specified column:

```py
import pandas as pd

df = pd.read_csv('data.csv')

x = df["Calories"].mean()

df["Calories"].fillna(x, inplace = True)

print(df.to_string())

#As you can see in row 18 and 28, the empty values from "Calories" was replaced with the mean: 304.68

>>>
Duration          Date  Pulse  Maxpulse  Calories
0         60  '2020/12/01'    110       130    409.10
1         60  '2020/12/02'    117       145    479.00
2         60  '2020/12/03'    103       135    340.00
3         45  '2020/12/04'    109       175    282.40
4         45  '2020/12/05'    117       148    406.00
5         60  '2020/12/06'    102       127    300.00
6         60  '2020/12/07'    110       136    374.00
7        450  '2020/12/08'    104       134    253.30
8         30  '2020/12/09'    109       133    195.10
9         60  '2020/12/10'     98       124    269.00
10        60  '2020/12/11'    103       147    329.30
11        60  '2020/12/12'    100       120    250.70
12        60  '2020/12/12'    100       120    250.70
13        60  '2020/12/13'    106       128    345.30
14        60  '2020/12/14'    104       132    379.30
15        60  '2020/12/15'     98       123    275.00
16        60  '2020/12/16'     98       120    215.20
17        60  '2020/12/17'    100       120    300.00
18        45  '2020/12/18'     90       112    304.68
19        60  '2020/12/19'    103       123    323.00
20        45  '2020/12/20'     97       125    243.00
21        60  '2020/12/21'    108       131    364.20
22        45           NaN    100       119    282.00
23        60  '2020/12/23'    130       101    300.00
24        45  '2020/12/24'    105       132    246.00
25        60  '2020/12/25'    102       126    334.50
26        60    2020/12/26    100       120    250.00
27        60  '2020/12/27'     92       118    241.00
28        60  '2020/12/28'    103       132    304.68
29        60  '2020/12/29'    100       132    280.00
30        60  '2020/12/30'    102       129    380.30
31        60  '2020/12/31'     92       115    243.00
>>>
```

Mean = the average value (the sum of all values divided by number of values).

```py
import pandas as pd

df = pd.read_csv('data.csv')

x = df["Calories"].median()

df["Calories"].fillna(x, inplace = True)

print(df.to_string())

#As you can see in row 18 and 28, the empty values from "Calories" was replaced with the median: 291.2

>>>
Duration          Date  Pulse  Maxpulse  Calories
0         60  '2020/12/01'    110       130     409.1
1         60  '2020/12/02'    117       145     479.0
2         60  '2020/12/03'    103       135     340.0
3         45  '2020/12/04'    109       175     282.4
4         45  '2020/12/05'    117       148     406.0
5         60  '2020/12/06'    102       127     300.0
6         60  '2020/12/07'    110       136     374.0
7        450  '2020/12/08'    104       134     253.3
8         30  '2020/12/09'    109       133     195.1
9         60  '2020/12/10'     98       124     269.0
10        60  '2020/12/11'    103       147     329.3
11        60  '2020/12/12'    100       120     250.7
12        60  '2020/12/12'    100       120     250.7
13        60  '2020/12/13'    106       128     345.3
14        60  '2020/12/14'    104       132     379.3
15        60  '2020/12/15'     98       123     275.0
16        60  '2020/12/16'     98       120     215.2
17        60  '2020/12/17'    100       120     300.0
18        45  '2020/12/18'     90       112     291.2
19        60  '2020/12/19'    103       123     323.0
20        45  '2020/12/20'     97       125     243.0
21        60  '2020/12/21'    108       131     364.2
22        45           NaN    100       119     282.0
23        60  '2020/12/23'    130       101     300.0
24        45  '2020/12/24'    105       132     246.0
25        60  '2020/12/25'    102       126     334.5
26        60    2020/12/26    100       120     250.0
27        60  '2020/12/27'     92       118     241.0
28        60  '2020/12/28'    103       132     291.2
29        60  '2020/12/29'    100       132     280.0
30        60  '2020/12/30'    102       129     380.3
31        60  '2020/12/31'     92       115     243.0
>>>
```

Median = the value in the middle, after you have sorted all values ascending.

```py
import pandas as pd

df = pd.read_csv('data.csv')

x = df["Calories"].mode()[0]

df["Calories"].fillna(x, inplace = True)

print(df.to_string())

#As you can see in row 18 and 28, the empty value from "Calories" was replaced with the mode: 300.0

>>>
Duration          Date  Pulse  Maxpulse  Calories
0         60  '2020/12/01'    110       130     409.1
1         60  '2020/12/02'    117       145     479.0
2         60  '2020/12/03'    103       135     340.0
3         45  '2020/12/04'    109       175     282.4
4         45  '2020/12/05'    117       148     406.0
5         60  '2020/12/06'    102       127     300.0
6         60  '2020/12/07'    110       136     374.0
7        450  '2020/12/08'    104       134     253.3
8         30  '2020/12/09'    109       133     195.1
9         60  '2020/12/10'     98       124     269.0
10        60  '2020/12/11'    103       147     329.3
11        60  '2020/12/12'    100       120     250.7
12        60  '2020/12/12'    100       120     250.7
13        60  '2020/12/13'    106       128     345.3
14        60  '2020/12/14'    104       132     379.3
15        60  '2020/12/15'     98       123     275.0
16        60  '2020/12/16'     98       120     215.2
17        60  '2020/12/17'    100       120     300.0
18        45  '2020/12/18'     90       112     300.0
19        60  '2020/12/19'    103       123     323.0
20        45  '2020/12/20'     97       125     243.0
21        60  '2020/12/21'    108       131     364.2
22        45           NaN    100       119     282.0
23        60  '2020/12/23'    130       101     300.0
24        45  '2020/12/24'    105       132     246.0
25        60  '2020/12/25'    102       126     334.5
26        60    2020/12/26    100       120     250.0
27        60  '2020/12/27'     92       118     241.0
28        60  '2020/12/28'    103       132     300.0
29        60  '2020/12/29'    100       132     280.0
30        60  '2020/12/30'    102       129     380.3
31        60  '2020/12/31'     92       115     243.0
>>>
```

Mode = the value that appears most frequently.

[^^^](#PANDAS)

---

#### CLEANING_WRONG_FORMAT_W3

##### Data of Wrong Format

Cells with data of wrong format can make it difficult, or even impossible, to analyze data.

To fix it, you have two options: remove the rows, or convert all cells in the columns into the same format.

##### Convert Into a Correct Format

In our Data Frame, we have two cells with the wrong format. Check out row 22 and 26, the 'Date' column should be a string that represents a date:

```py
Duration          Date  Pulse  Maxpulse  Calories
0         60  '2020/12/01'    110       130     409.1
1         60  '2020/12/02'    117       145     479.0
2         60  '2020/12/03'    103       135     340.0
3         45  '2020/12/04'    109       175     282.4
4         45  '2020/12/05'    117       148     406.0
5         60  '2020/12/06'    102       127     300.0
6         60  '2020/12/07'    110       136     374.0
7        450  '2020/12/08'    104       134     253.3
8         30  '2020/12/09'    109       133     195.1
9         60  '2020/12/10'     98       124     269.0
10        60  '2020/12/11'    103       147     329.3
11        60  '2020/12/12'    100       120     250.7
12        60  '2020/12/12'    100       120     250.7
13        60  '2020/12/13'    106       128     345.3
14        60  '2020/12/14'    104       132     379.3
15        60  '2020/12/15'     98       123     275.0
16        60  '2020/12/16'     98       120     215.2
17        60  '2020/12/17'    100       120     300.0
18        45  '2020/12/18'     90       112       NaN
19        60  '2020/12/19'    103       123     323.0
20        45  '2020/12/20'     97       125     243.0
21        60  '2020/12/21'    108       131     364.2
22        45           NaN    100       119     282.0
23        60  '2020/12/23'    130       101     300.0
24        45  '2020/12/24'    105       132     246.0
25        60  '2020/12/25'    102       126     334.5
26        60      20201226    100       120     250.0
27        60  '2020/12/27'     92       118     241.0
28        60  '2020/12/28'    103       132       NaN
29        60  '2020/12/29'    100       132     280.0
30        60  '2020/12/30'    102       129     380.3
31        60  '2020/12/31'     92       115     243.0
```

Let's try to convert all cells in the 'Date' column into dates.

Pandas has a to_datetime() method for this:

```py
import pandas as pd

df = pd.read_csv('data.csv')

df['Date'] = pd.to_datetime(df['Date'])

print(df.to_string())

>>>
Duration       Date  Pulse  Maxpulse  Calories
0         60 2020-12-01    110       130     409.1
1         60 2020-12-02    117       145     479.0
2         60 2020-12-03    103       135     340.0
3         45 2020-12-04    109       175     282.4
4         45 2020-12-05    117       148     406.0
5         60 2020-12-06    102       127     300.0
6         60 2020-12-07    110       136     374.0
7        450 2020-12-08    104       134     253.3
8         30 2020-12-09    109       133     195.1
9         60 2020-12-10     98       124     269.0
10        60 2020-12-11    103       147     329.3
11        60 2020-12-12    100       120     250.7
12        60 2020-12-12    100       120     250.7
13        60 2020-12-13    106       128     345.3
14        60 2020-12-14    104       132     379.3
15        60 2020-12-15     98       123     275.0
16        60 2020-12-16     98       120     215.2
17        60 2020-12-17    100       120     300.0
18        45 2020-12-18     90       112       NaN
19        60 2020-12-19    103       123     323.0
20        45 2020-12-20     97       125     243.0
21        60 2020-12-21    108       131     364.2
22        45        NaT    100       119     282.0
23        60 2020-12-23    130       101     300.0
24        45 2020-12-24    105       132     246.0
25        60 2020-12-25    102       126     334.5
26        60 2020-12-26    100       120     250.0
27        60 2020-12-27     92       118     241.0
28        60 2020-12-28    103       132       NaN
29        60 2020-12-29    100       132     280.0
30        60 2020-12-30    102       129     380.3
31        60 2020-12-31     92       115     243.0
>>>
```

As you can see from the result, the date in row 26 was fixed, but the empty date in row 22 got a NaT (Not a Time) value, in other words an empty value. One way to deal with empty values is simply removing the entire row.

##### Removing Rows

The result from the converting in the example above gave us a NaT value, which can be handled as a NULL value, and we can remove the row by using the dropna() method.

```py
import pandas as pd

df = pd.read_csv('data.csv')

df['Date'] = pd.to_datetime(df['Date'])

df.dropna(subset=['Date'], inplace = True)

print(df.to_string())

>>>
Duration       Date  Pulse  Maxpulse  Calories
0         60 2020-12-01    110       130     409.1
1         60 2020-12-02    117       145     479.0
2         60 2020-12-03    103       135     340.0
3         45 2020-12-04    109       175     282.4
4         45 2020-12-05    117       148     406.0
5         60 2020-12-06    102       127     300.0
6         60 2020-12-07    110       136     374.0
7        450 2020-12-08    104       134     253.3
8         30 2020-12-09    109       133     195.1
9         60 2020-12-10     98       124     269.0
10        60 2020-12-11    103       147     329.3
11        60 2020-12-12    100       120     250.7
12        60 2020-12-12    100       120     250.7
13        60 2020-12-13    106       128     345.3
14        60 2020-12-14    104       132     379.3
15        60 2020-12-15     98       123     275.0
16        60 2020-12-16     98       120     215.2
17        60 2020-12-17    100       120     300.0
18        45 2020-12-18     90       112       NaN
19        60 2020-12-19    103       123     323.0
20        45 2020-12-20     97       125     243.0
21        60 2020-12-21    108       131     364.2
23        60 2020-12-23    130       101     300.0
24        45 2020-12-24    105       132     246.0
25        60 2020-12-25    102       126     334.5
26        60 2020-12-26    100       120     250.0
27        60 2020-12-27     92       118     241.0
28        60 2020-12-28    103       132       NaN
29        60 2020-12-29    100       132     280.0
30        60 2020-12-30    102       129     380.3
31        60 2020-12-31     92       115     243.0
>>>
```

[^^^](#PANDAS)

---

#### CLEANING_WRONG_DATA_W3

"Wrong data" does not have to be "empty cells" or "wrong format", it can just be wrong, like if someone registered "199" instead of "1.99".

Sometimes you can spot wrong data by looking at the data set, because you have an expectation of what it should be.

##### REPLACING_VALUES

One way to fix wrong values is to replace them with something else.
In our example, it is most likely a typo, and the value should be "45" instead of "450", and we could just insert "45" in row 7:

```py
import pandas as pd

df = pd.read_csv('data.csv')

df.loc[7,'Duration'] = 45

print(df.to_string())

>>>
Duration          Date  Pulse  Maxpulse  Calories
0         60  '2020/12/01'    110       130     409.1
1         60  '2020/12/02'    117       145     479.0
2         60  '2020/12/03'    103       135     340.0
3         45  '2020/12/04'    109       175     282.4
4         45  '2020/12/05'    117       148     406.0
5         60  '2020/12/06'    102       127     300.0
6         60  '2020/12/07'    110       136     374.0
7         45  '2020/12/08'    104       134     253.3
8         30  '2020/12/09'    109       133     195.1
9         60  '2020/12/10'     98       124     269.0
10        60  '2020/12/11'    103       147     329.3
11        60  '2020/12/12'    100       120     250.7
12        60  '2020/12/12'    100       120     250.7
>>>
```

For small data sets you might be able to replace the wrong data one by one, but not for big data sets.

To replace wrong data for larger data sets you can create some rules, e.g. set some boundaries for legal values, and replace any values that are outside of the boundaries.

```py
import pandas as pd

df = pd.read_csv('data.csv')

for x in df.index:
  if df.loc[x, "Duration"] > 120:
    df.loc[x, "Duration"] = 120

print(df.to_string())

>>>
Duration          Date  Pulse  Maxpulse  Calories
0         60  '2020/12/01'    110       130     409.1
1         60  '2020/12/02'    117       145     479.0
2         60  '2020/12/03'    103       135     340.0
3         45  '2020/12/04'    109       175     282.4
4         45  '2020/12/05'    117       148     406.0
5         60  '2020/12/06'    102       127     300.0
6         60  '2020/12/07'    110       136     374.0
7        120  '2020/12/08'    104       134     253.3
8         30  '2020/12/09'    109       133     195.1
9         60  '2020/12/10'     98       124     269.0
10        60  '2020/12/11'    103       147     329.3
11        60  '2020/12/12'    100       120     250.7
>>>
```

##### REMOVING_ROWS

Another way of handling wrong data is to remove the rows that contains wrong data.

This way you do not have to find out what to replace them with, and there is a good chance you do not need them to do your analyses.

```py
import pandas as pd

df = pd.read_csv('data.csv')

for x in df.index:
  if df.loc[x, "Duration"] > 120:
    df.drop(x, inplace = True)

#remember to include the 'inplace = True' argument to make the changes in the original DataFrame object instead of returning a copy

print(df.to_string())

>>>
Duration          Date  Pulse  Maxpulse  Calories
0         60  '2020/12/01'    110       130     409.1
1         60  '2020/12/02'    117       145     479.0
2         60  '2020/12/03'    103       135     340.0
3         45  '2020/12/04'    109       175     282.4
4         45  '2020/12/05'    117       148     406.0
5         60  '2020/12/06'    102       127     300.0
6         60  '2020/12/07'    110       136     374.0
8         30  '2020/12/09'    109       133     195.1
9         60  '2020/12/10'     98       124     269.0
10        60  '2020/12/11'    103       147     329.3
11        60  '2020/12/12'    100       120     250.7
12        60  '2020/12/12'    100       120     250.7
13        60  '2020/12/13'    106       128     345.3
14        60  '2020/12/14'    104       132     379.3
>>>
```

[^^^](#PANDAS)

---

#### REMOVING_DUPLICATES_W3

[^^^](#PANDAS)

---

#### PANDAS_CORRELATIONS_W3

```
1 means that there is a 1 to 1 relationship (a perfect correlation), and for this data set, each time a value went up in the first column, the other one went up as well.

0.9 is also a good relationship, and if you increase one value, the other will probably increase as well.

-0.9 would be just as good relationship as 0.9, but if you increase one value, the other will probably go down.

0.2 means NOT a good relationship, meaning that if one value goes up does not mean that the other will.
```

```py
import pandas as pd

df = pd.read_csv('data.csv')

print(df.corr())

>>>
Duration     Pulse  Maxpulse  Calories
Duration  1.000000 -0.059452 -0.250033  0.344341
Pulse    -0.059452  1.000000  0.269672  0.481791
Maxpulse -0.250033  0.269672  1.000000  0.335392
Calories  0.344341  0.481791  0.335392  1.000000
>>>
```

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
