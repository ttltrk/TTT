
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/blob/master/FLASHCARDS/FLASHCARDS.md)

---

### PYTHON_ML_FLASH

---

* [ML_FUNDAMENTALS](#ML_FUNDAMENTALS)
* [DATA_SET](#DATA_SET)
* [MEAN](#MEAN)
* [MEDIAN](#MEDIAN)
* [MODE](#MODE)
* [STANDARD_DEVIATION](#STANDARD_DEVIATION)

---

#### ML_FUNDAMENTALS

```
Machine Learning is making the computer learn from studying data and statistics.
Machine Learning is a step into the direction of artificial intelligence (AI).
Machine Learning is a program that analyses data and learns to predict the outcome.
```

[^^^](#PYTHON_ML_FLASH)

---

#### DATA_SET

```
In the mind of a computer, a data set is any collection of data.
It can be anything from an array to a complete database.
```

[^^^](#PYTHON_ML_FLASH)

---

#### DATA_TYPES

```
We can split the data types into three main categories:

- Numerical data are numbers, and can be split into two numerical categories:
    Discrete Data
      - counted data that are limited to integers. Example: The number of cars passing by.
    Continuous Data
      - measured data that can be any number. Example: The price of an item, or the size of an item

- Categorical data are values that cannot be measured up against each other. Example: a color value, or any yes/no values.

- Ordinal data are like categorical data, but can be measured up against each other. Example: school grades where A is better than B and so on.
```

[^^^](#PYTHON_ML_FLASH)

---

#### MEAN

```
The mean value is the average value.

To calculate the mean, find the sum of all values,
and divide the sum by the number of values:

(99+86+87+88+111+86+103+87+94+78+77+85+86) / 13 = 89.77
```

```py
import numpy

speed = [99,86,87,88,111,86,103,87,94,78,77,85,86]

x = numpy.mean(speed)

print(x)

>>>
89.76923076923077
>>>
```

[^^^](#PYTHON_ML_FLASH)

---

#### MEDIAN

```
The median value is the value in the middle,
after you have sorted all the values:

77, 78, 85, 86, 86, 86, >> 87 <<, 87, 88, 94, 99, 103, 111
```

```py
import numpy

speed = [99,86,87,88,111,86,103,87,94,78,77,85,86]

x = numpy.median(speed)

print(x)

>>>
87.0
>>>
```

```
If there are two numbers in the middle,
divide the sum of those numbers by two.

77, 78, 85, 86, 86, 86, 87, 87, 94, 98, 99, 103

(86 + 87) / 2 = 86.5
```

```py
import numpy

speed = [99,86,87,88,86,103,87,94,78,77,85,86]

x = numpy.median(speed)

print(x)

>>>
86.5
>>>
```

[^^^](#PYTHON_ML_FLASH)

---

#### MODE

```
The Mode value is the value that appears the most number of times:

99, 86, 87, 88, 111, 86, 103, 87, 94, 78, 77, 85, 86 = 86
```

```py
from scipy import stats

speed = [99,86,87,88,111,86,103,87,94,78,77,85,86]

x = stats.mode(speed)

print(x)

>>>
ModeResult(mode=array([86]), count=array([3]))
>>>
```

[^^^](#PYTHON_ML_FLASH)

---

#### STANDARD_DEVIATION

```
Standard deviation is a number that describes
how spread out the values are.

A low standard deviation means that most of the numbers
are close to the mean (average) value.

A high standard deviation means that the values
are spread out over a wider range.
```

```
speed = [86,87,88,86,87,85,86] = mean (86.428)

86 − 86.428 = −0.428
87 − 86.428 = 0.572
88 − 86.428 = 1.572
86 − 86.428 = −0.428
87 − 86.428 = 0.572
85 − 86.428 = −1.428
86 − 86.428 = −0.428 

(−0.428)² ≈ 0.183
(0.572)² ≈ 0.327
(1.572)² ≈ 2.471
(−0.428)² ≈ 0.183
(0.572)² ≈ 0.327
(−1.428)² ≈ 2.041
(−0.428)² ≈ 0.183

Sum ≈ 0.183 + 0.327 + 2.471 + 0.183 + 0.327 + 2.041 + 0.183 ≈ 5.715

Population standard deviation → divide by 7
Sample standard deviation → divide by 6

Let’s do both:

Population variance = 5.715 / 7 ≈ 0.816
Sample variance = 5.715 / 6 ≈ 0.953

Population standard deviation ≈ √0.816 ≈ 0.903
Sample standard deviation ≈ √0.953 ≈ 0.976

Population SD ≈ 0.90
Sample SD ≈ 0.98
```

```py
import numpy

speed = [86,87,88,86,87,85,86]

x = numpy.std(speed)

print(x)

>>>
0.9035079029052513
>>>
```

```
Why divide by 7 or 6?

It depends on what your data represents:

1. Divide by 7 (N) → Population standard deviation

Use this when your data is the entire population.

In your case, if those 7 numbers are all the values that exist, then:

You divide by N = 7
You get the true spread of that population
2. Divide by 6 (N − 1) → Sample standard deviation

Use this when your data is just a sample from a larger group.

If your 7 numbers are just a subset (e.g., 7 students out of a whole class), then:

You divide by N − 1 = 6
This corrects for underestimating variability
Why subtract 1? (the intuition)

When you used the mean (86.428), it was calculated from the same data. That “locks in” one degree of freedom.

So only 6 values are free to vary, not 7.

This correction is called Bessel's correction.

Simple way to remember
Whole population? → divide by N
Sample (almost always in school problems)? → divide by N − 1
In your exercise

Unless the problem explicitly says “population,” you should usually assume:

Use 6 (sample standard deviation)
```

[^^^](#PYTHON_ML_FLASH)

---


