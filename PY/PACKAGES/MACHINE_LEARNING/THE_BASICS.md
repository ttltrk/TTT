
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
```

- READ IN YOUR DATA

```

```

```py

```

[^^^](#THE_BASICS)

---

#### MANIPULATING_DATA_WITH_PANDAS

```

```

```py

```

[^^^](#THE_BASICS)

---

#### NUMPY_BASICS

```

```

```py

```

[^^^](#THE_BASICS)

---

#### NUMPY_ARRAYS

```

```

```py

```

[^^^](#THE_BASICS)

---

#### PLOTTING_BASICS

```

```

```py

```

[^^^](#THE_BASICS)

---
