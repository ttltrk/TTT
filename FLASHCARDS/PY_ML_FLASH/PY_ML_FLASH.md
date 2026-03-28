
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/blob/master/FLASHCARDS/FLASHCARDS.md)

---

### PYTHON_ML_FLASH

---

* [ML_FUNDAMENTALS](#ML_FUNDAMENTALS)
* [DATA_SET](#DATA_SET)
* [MEAN](#MEAN)
* [MEDIAN](#MEDIAN)

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
