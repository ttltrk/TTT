
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md) - [MACHINE_LEARNING](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/MACHINE_LEARNING/MACHINE_LEARNING.md)

---

### THE_BASICS

---

```

```

---

* [WHAT_IS_ML](#WHAT_IS_ML)
* [STATISTICS_REVIEW](#STATISTICS_REVIEW)
* [READING_DATA_WITH_PANDAS](#READING_DATA_WITH_PANDAS)
* [MANIPULATING_DATA_WITH_PANDAS](#MANIPULATING_DATA_WITH_PANDAS)
* [NUMPY_BASICS](#NUMPY_BASICS)
* [NUMPY_ARRAYS](#NUMPY_ARRAYS)
* [PLOTTING_BASICS](#PLOTTING_BASICS)

---

#### WHAT_IS_ML

```
Machine Learning is a way of taking data and turning it into insights. We use computer power to analyze examples
from the past to build a model that can predict the result for new examples.
```

```
One of the most common languages used by Machine Learning professionals is Python.

- Pandas is used for reading data and data manipulation,
- numpy is used for computations of numerical data,
- matplotlib is used for graphing data,
- scikit-learn is used for machine learning models.
```

```
In Machine Learning, we talk about supervised and unsupervised learning.

- Supervised learning is when we have a known target based on past data (for example,
  predicting what price a house will sell for)  

- Unsupervised learning is when there isn't a known past answer (for example,
  determining the topics discussed in restaurant reviews).
```

```
Within supervised learning, there are classification and regression problems.

- Regression is predicting a numerical value (for example,
  predicting what price a house will sell for) and

- Classification is predicting what class something belongs to (for example,
  predicting if a borrower will default on their loan).
```

[^^^](#THE_BASICS)

---

#### STATISTICS_REVIEW

```

```

- AVERAGES

```
Let's say we have a list of the ages of people in a class.
We have them in ascending order since it will be easier to do the calculations.

15, 16, 18, 19, 22, 24, 29, 30, 34

The mean is the most commonly known average.
Add up all the values and divide by the number of values:

(15 + 16 + 18 + 19 + 22 + 24 + 29 + 30 + 34) / 9 =  207/9 = 23

The median is the value in the middle. In this case, since there are 9 values,
the middle value is the 5th, which is 22.

In statistics, both the mean and the median are called averages.
The layman’s average is the mean.
```

- PERCENTILES

```
If we look at our ages again:

15, 16, 18, 19, 22, 24, 29, 30, 34

We have 9 values, so 25% of the data would be approximately 2 datapoints.
So the 3rd datapoint is greater than 25% of the data. Thus, the 25th percentile is 18 (the 3rd datapoint).
Similarly, 75% of the data is approximately 6 datapoints. So the 7th datapoint is
greater than 75% of the data. Thus, the 75th percentile is 29 (the 7th datapoint).

The full range of our data is between 15 and 34. The 25th and 75th percentiles tell us
that half our data is between 18 and 29. This helps us gain understanding of how the data is distributed.

If there is an even number of datapoints, to find the median (or 50th percentile),
you take the mean of the two values in the middle.
```

- STANDARD DEVIATION & VARIANCE

```
Let's look at our group of ages again:

15, 16, 18, 19, 22, 24, 29, 30, 34

mean is 23

Let's calculate how far each value is from the mean. 15 is 8 away from the mean (since 23-15=8).

Here's a list of all these distances:

8, 7, 5, 4, 1, 1, 6, 7, 11

We square these values and add them together.

(8*8) + (7*7) + (5*5) + (4*4) + (1*1) + (1*1) + (6*6) + (7*7) + (11*11) =
64+49+25+16+1+1+36+49+121=362

We divide this value by the total number of values and that gives us the variance.

362 / 9 = 40.22
To get the standard deviation, we just take the square root of this number and get: 6.34

In our age example, while the ages are likely not exactly normally distributed,
we assume that we are and say that approximately 68% of the population has an age
within one standard deviation of the mean. Since the mean is 23 and the standard deviation is 6.34,
we can say that approximately 68% of the ages in our population are
between 16.66 (23 minus 6.34) and 29.34 (23 plus 6.34).
```

- STATISTICS WITH PYTHON

```

```

```py
import numpy as np

data = [15, 16, 18, 19, 22, 24, 29, 30, 34]

print("mean:", np.mean(data))
print("median:", np.median(data))
print("50th percentile (median):", np.percentile(data, 50))
print("25th percentile:", np.percentile(data, 25))
print("75th percentile:", np.percentile(data, 75))
print("standard deviation:", np.std(data))
print("variance:", np.var(data))

>>>
mean: 23.0
median: 22.0
50th percentile (median): 22.0
25th percentile: 18.0
75th percentile: 29.0
standard deviation: 6.342099196813483
variance: 40.22222222222222
>>>
```

[^^^](#THE_BASICS)

---

#### READING_DATA_WITH_PANDAS

```

```

- WHAT IS PANDAS?

```
Pandas is a Python module that helps us read and manipulate data.
DataFrame is Pandas data object.
```

- READ IN YOUR DATA

```

```

- IMPORTING PANDAS

```py
import pandas as pd
```

- PULL DATA INTO PANDAS

```
The read_csv function takes a file in csv format and converts it to a Pandas DataFrame.
```

```py
df = pd.read_csv('titanic.csv')
```

```
The head method returns the first 5 rows of the DataFrame.
```

```py
print(df.head())
```

- SUMMARIZE THE DATA

```
In pandas, we can use the describe method. It returns a table of statistics about the columns.
```

```py
print(df.describe())
```

```
We add a line in the code below to force python to display all 6 columns.
Without the line, it will abbreviate the results.
```

```py
import pandas as pd
pd.options.display.max_columns = 6
df = pd.read_csv('https://sololearn.com/uploads/files/titanic.csv')
print(df.describe())
```

```
Count: This is the number of rows that have a value. In our case,
  every passenger has a value for each of the columns, so the value is 887
  (the total number of passengers).
Mean: Recall that the mean is the standard average.
Std: This is short for standard deviation. This is a measure of how dispersed the data is.
Min: The smallest value
25%: The 25th percentile
50%: The 50th percentile, also known as the median.
75%: The 75th percentile
Max: The largest value
```

[^^^](#THE_BASICS)

---

#### MANIPULATING_DATA_WITH_PANDAS

```

```

- SELECTING A SINGLE COLUMN

```
In this example, we're selecting just the column with the passenger fares.
```

```py
col = df['Fare']
print(col)
```

- SERIES

```
The result is what we call a Pandas Series.
A series is like a DataFrame, but it's just a single column.
```

- SELECTING MULTIPLE COLUMNS

```
smaller DataFrame
```

```py
small_df = df[['Age', 'Sex', 'Survived']]
print(small_df.head())
```

- CREATING A COLUMN

```
Recall the syntax for selecting the Sex column:
```

```py
df['Sex']
```

```
We create a Pandas Series that will be a series of Trues and Falses
(True if the passenger is male and False if the passenger is female).
```

```py
df['Sex'] == 'male'
```

```
Now we want to create a column with this result. To create a new column,
we use the same bracket syntax (df['male']) and then assign this new value to it.
```

```py
df['male'] = df['Sex'] == 'male'
```

```py
import pandas as pd
df = pd.read_csv('https://sololearn.com/uploads/files/titanic.csv')
df['male'] = df['Sex'] == 'male'
print(df.head())
```

[^^^](#THE_BASICS)

---

#### NUMPY_BASICS

```
Numpy is a Python package for manipulating lists and tables of numerical data.
We can use it to do a lot of statistical calculations. We call the list or table of data a numpy array.

Numpy is a Python module for doing calculations on tables of data.
```

- CONVERTING FROM A PANDAS SERIES TO A NUMPY ARRAY

```
Let's convert the Fare column to a numpy array.
```

```py
df['Fare']
```

```
Then we use the values attribute to get the values as a numpy array.

The values attribute of a Pandas Series give the data as a numpy array.
```

```py
df['Fare'].values
```

- CONVERTING FROM A PANDAS DATAFRAME to a NUMPY ARRAY

```
Again, we apply the values attribute to get a numpy array.
```

```py
df[['Pclass', 'Fare', 'Age']].values
```

- NUMPY SHAPE ATTRIBUTE

```
If we look at the shape, we get the number of rows and the number of columns:
```

```py
arr = df[['Pclass', 'Fare', 'Age']].values
print(arr.shape)
```

[^^^](#THE_BASICS)

---

#### NUMPY_ARRAYS

```

```

- SELECT FROM A NUMPY ARRAY

```

```

```py
arr = df[['Pclass', 'Fare', 'Age']].values

print(arr[0, 1])
print(arr[0])
print(arr[:,2])
```

- MASKING

```
A mask is a boolean array (True/False values) that tells us which values from the array we’re interested in.
```

```
We create what we call a mask first. This is an array of boolean values (True/False)
of whether the passenger is a child or not.
```

```py
arr = df[['Pclass', 'Fare', 'Age']].values
arr[:, 2]

mask = arr[:, 2] < 18
```

```
Generally, we don't need to define the mask variable and can do the above in just a single line:
```

```py
arr[arr[:, 2] < 18]
```

- SUMMING AND COUNTING

```
Let’s say we want to know how many of our passengers are children.
```

```py
arr = df[['Pclass', 'Fare', 'Age']].values
mask = arr[:, 2] < 18
```

```
So we can just sum up the array and that’s equivalent to counting the number of true values.
```

```py
arr = df[['Pclass', 'Fare', 'Age']].values
mask = arr[:, 2] < 18

print(mask.sum())
```

```py
arr = df[['Pclass', 'Fare', 'Age']].values
print((arr[:, 2] < 18).sum())
```

[^^^](#THE_BASICS)

---

#### PLOTTING_BASICS

```
We can use the matplotlib library to plot our data. Plotting the data can often
help us build intuition about our data.
```

- SCATTER PLOT

```
We first need to import matplotlib. It’s standard practice to nickname it plt.
```

```py
import matplotlib.pyplot as plt
```

```
We use the scatter function to plot our data. The first argument of the scatter function
is the x-axis (horizontal direction) and the second argument is the y-axis (vertical direction).
```

```py
plt.scatter(df['Age'], df['Fare'])

plt.xlabel('Age')
plt.ylabel('Fare')
```

```
A scatter plot is used to show all the values from your data on a graph.
In order to get a visual representation of our data, we have to limit our data to two features.
```

- LINE

```
Now that we can put individual datapoints on a plot, let's see how to draw the line.
The plot function does just that.
```

```py
plt.plot([0, 80], [85, 5])
```

[^^^](#THE_BASICS)

---
