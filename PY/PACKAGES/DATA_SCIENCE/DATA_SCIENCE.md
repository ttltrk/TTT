
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### DATA_SCIENCE

---

* [LINKS](#LINKS)
- [DS_101](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/DATA_SCIENCE/DS_101/DS_101.md)
* [INTRO_TO_DS](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/DATA_SCIENCE/INTRO_TO_DS/INTRO_TO_DS.md)
* [METHODOLOGY](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/DATA_SCIENCE/METHODOLOGY/METHODOLOGY.md)
* [STATISTICS](#STATISTICS)
* [MEDIAN](#MEDIAN)
* [STANDARD_DEVIATION](#STANDARD_DEVIATION)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### LINKS

- YT

* [Data Analysis with Python - Full Course for Beginners](https://www.youtube.com/watch?v=r-uOLxNrNk8&t=36s)
* [Build 12 Data Science Apps with Python and Streamlit - Full Course](https://www.youtube.com/watch?v=JwSS70SZdyM)
* [Python for Data Science - Course for Beginners](https://www.youtube.com/watch?v=LHBE6Q9XlzI&t=7s)

---

#### STATISTICS

Data Science uses various techniques and methods to extract knowledge and insights from data.
Let's dive into some basics of statistics first. These concepts form the main building blocks of data analysis.

As an example dataset, let's consider the prices of a group of products:

```py
[18, 24, 67, 55, 42, 14, 19, 26, 33]
```

The given dataset includes prices of 9 products.

The mean is the average value of the dataset. We can calculate it by adding all prices together and dividing by the number of products:

```
mean = 298/9 = 33.1
```

[^^^](#DATA_SCIENCE)

---

#### MEDIAN

Another useful concept is median: the middle value of an ordered dataset.
To calculate the median for our prices dataset, let's first order it in ascending order:

```py
[14, 18, 19, 24, 26, 33, 42, 55, 67]  
```

The median is 26, as that's the middle value.
If our dataset had an even number of values, we would take the two values in the middle and calculate their average value.
The median is generally more useful than the mean. This is because the mean can vary widely due to one value that is a lot larger or smaller than the others.

The mean and the median are called
Measures of Central Tendency, as they describe where the center of our data is.


[^^^](#DATA_SCIENCE)

---

#### STANDARD_DEVIATION

The Standard Deviation is a measure of how spread out our data is.

To calculate it, we first need to calculate a value called Variance: which is the average of the squared differences from the mean.
So, for our prices data:

```py
[14, 18, 19, 24, 26, 33, 42, 55, 67]
```

the mean is 33.1. To calculate the variance, we take the difference between each value and the mean, square it, and then average the result: Variance = 292.5

```
33.1-14 = 19.1x19.1 = 364.81
33.1-18 = 15.1x15.1 = 228.01
33.1-19 = 14.1x14.1 = 198.81
33.1-24 = 9.1x9.1   = 82.81
33.1-33 = 0.1x0.1   = 0.01
42-33.1 = 8.9x8.9   = 79.21
55-33.1 = 21.9x21.9 = 479.61
67-33.1 = 33.9x33.9 = 1149.21
```
Now we take the square root of the Variance, to get the Standard Deviation: std = 17.1 (17.1x17.1=292.5)

Now, we can check which ages are within one standard deviation (17.1) from the mean (33.1) - from (33.1-17.1) to (33.1+17.1):

```py
[14, 18, 19, 24, 26, 33, 42, 55, 67]
```

As you can see, 6 values out of 9 are within that range.
A low standard deviation indicates that the values tend to be close to the mean of the set, while a high standard deviation indicates that the values are spread out over a wider range.

[^^^](#DATA_SCIENCE)

---

####



[^^^](#DATA_SCIENCE)

---

####



[^^^](#DATA_SCIENCE)

---

####



[^^^](#DATA_SCIENCE)

---
