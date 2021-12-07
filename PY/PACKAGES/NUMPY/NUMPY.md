
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md)

---

### NUMPY


NumPy is a library for the Python programming language, adding support for large,
multi-dimensional arrays and matrices, along with a large collection of high-level mathematical functions to operate on these arrays.
NumPy (Numerical Python) is a Python library used to work with numerical data.
NumPy includes functions and data structures that can perform a wide variety of mathematical operations.

---

* [LINKS](#LINKS)
* [ARRAYS](#ARRAYS)
* [ARANGE](#ARANGE)
* [ZEROS](#ZEROS)
* [ONES](#ONES)
* [LINSPACE](#LINSPACE)
* [EYE](#EYE)
* [RANDOM_RAND](#RANDOM_RAND)
* [RANDOM_RANDN](#RANDOM_RANDN)
* [RANDOM_RANDINT](#RANDOM_RANDINT)
* [RESHAPE](#RESHAPE)
* [ARRAY_INDEXING](#ARRAY_INDEXING)
* [ARRAY_INDEXING_CONDITIONS](#ARRAY_INDEXING_CONDITIONS)
* [SLICE_OF_ARRAY](#SLICE_OF_ARRAY)
* [STATISTICS](#STATISTICS)
* [FINANCIAL](#FINANCIAL)

---

#### LINKS

- YT

* [Python NumPy Tutorial for Beginners](https://www.youtube.com/watch?v=QUT1VHiLmmI)

---

#### ARRAYS

In Python, lists are used to store data.
NumPy provides an array structure for performing operations with data.
NumPy arrays are faster and more compact than lists.

```py
import numpy as np
x = np.array([1, 2, 3, 4])
print(x)

>>>
[1 2 3 4]
>>>
```

```py
import numpy as np

ml = [1,2,3]
a = np.array(ml)
print(a)

>>>
[1 2 3]
>>>
```

```py
import numpy as np

mm = [[1,2,3],[4,5,6],[7,8,9]]
m = np.array(mm)
print(m)

>>>
[[1 2 3]
 [4 5 6]
 [7 8 9]]
>>>
```

NumPy arrays are often called ndarrays, which stands for "N-dimensional array", because they can have multiple dimensions.

```py
x = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])

print(x[1][2])

>>>
6
>>>
```

This will create a 2-dimensional array, which has 3 columns and 3 rows, and output the value at the 2nd row and 3rd column.

Arrays have properties, which can be accessed using a dot.
ndim returns the number of dimensions of the array.
size returns the total number of elements of the array.
shape returns a tuple of integers that indicate the number of elements stored along each dimension of the array.

```py
x = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
print(x.ndim) # 2
print(x.size) # 9
print(x.shape) # (3, 3)

>>>
2
9
(3, 3)
>>>
```

We can add, remove and sort an array using the np.append(), np.delete() and np.sort() functions.

```py
import numpy as np
x = np.array([1, 2, 3, 4])
print(x)

>>>
[1 2 3 4]
>>>
```

```py
x = np.append(5,x)
print(x)

>>>
[5 1 2 3 4]
>>>
```

```py
x = np.append(x,6)
print(x)

>>>
[5 1 2 3 4 6]
>>>
```

```py
x = np.delete(x,0)
print(x)

>>>
[1 2 3 4 6]
>>>
```

```py
x = np.sort(x)
print(x)

>>>
[1 2 3 4 6]
>>>
```

It is easy to perform basic mathematical operations with arrays.
For example, to find the sum of all elements, we use the sum() function.

```py
import numpy as np

x = np.arange(1,10)
print(x)
print(x.sum())

>>>
[1 2 3 4 5 6 7 8 9]
45
>>>
```

Similarly, min() and max() can be used to get the smallest and largest elements.

```py
import numpy as np

x = np.arange(1,10)
print(x)
print(x.min())

>>>
[1 2 3 4 5 6 7 8 9]
1
>>>
```

```py
import numpy as np

x = np.arange(1,10)
print(x)
print(x.max())

>>>
[1 2 3 4 5 6 7 8 9]
9
>>>
```

We can also perform operations between the array and a single number.
For example, we can multiply all elements by 2

[^^^](#NUMPY)

---

####  ARANGE

```py
import numpy as np

ran1 = np.arange(0,11)
ran2 = np.arange(0,11,2)

print(ran1)
print(ran2)

>>>
[ 0  1  2  3  4  5  6  7  8  9 10]
[ 0  2  4  6  8 10]
>>>
```

```py
x = np.arange(2, 8, 2)
print(x)

>>>
[2 4 6]
>>>

x = np.append(x, x.size)
print(x)

>>>
[2 4 6 3]
>>>

x = np.sort(x)
print(x)

>>>
[2 3 4 6]
>>>

print(x[1])

>>>
3
>>>
```

```py
import numpy as np

arr = np.arange(1,11)

a = arr > 5

print(a)

>>>
[False False False False False  True  True  True  True  True]
>>>
```

```py
import numpy as np

arr = np.arange(1,11)

a = arr[arr>5]

print(a)

>>>
[ 6  7  8  9 10]
>>>
```

[^^^](#NUMPY)

---

#### ZEROS

```py
import numpy as np

a = np.zeros(3)
b = np.zeros((2,3))
c = np.zeros((3,3))

print(a)
print(b)
print(c)

>>>
[0. 0. 0.]
[[0. 0. 0.]
 [0. 0. 0.]]
[[0. 0. 0.]
 [0. 0. 0.]
 [0. 0. 0.]]
>>>
```

[^^^](#NUMPY)

---

#### ONES

```py
import numpy as np

a = np.ones(3)
b = np.ones((2,3))
c = np.ones((3,3))

print(a)
print(b)
print(c)

>>>
[1. 1. 1.]
[[1. 1. 1.]
 [1. 1. 1.]]
[[1. 1. 1.]
 [1. 1. 1.]
 [1. 1. 1.]]
>>>
```

[^^^](#NUMPY)

---

#### LINSPACE

```py
import numpy as np

a = np.linspace(0,5,10)

print(a)

>>>
[0.         0.55555556 1.11111111 1.66666667 2.22222222 2.77777778
 3.33333333 3.88888889 4.44444444 5.        ]
>>>
```

[^^^](#NUMPY)

---

#### EYE

```py
import numpy as np

x = np.eye(1)
a = np.eye(2)
b = np.eye(3)
c = np.eye(4)
d = np.eye(5)

print(x)
print(a)
print(b)
print(c)
print(d)

>>>
[[1.]]
[[1. 0.]
 [0. 1.]]
[[1. 0. 0.]
 [0. 1. 0.]
 [0. 0. 1.]]
[[1. 0. 0. 0.]
 [0. 1. 0. 0.]
 [0. 0. 1. 0.]
 [0. 0. 0. 1.]]
[[1. 0. 0. 0. 0.]
 [0. 1. 0. 0. 0.]
 [0. 0. 1. 0. 0.]
 [0. 0. 0. 1. 0.]
 [0. 0. 0. 0. 1.]]
>>>
```

[^^^](#NUMPY)

---

#### RANDOM_RAND

```py
import numpy as np

a = np.random.rand(3)
b = np.random.rand(3,3)

print(a)
print(b)

>>>
[0.26010697 0.50160926 0.6739515 ]
[[0.47716672 0.6133023  0.06112184]
 [0.65200764 0.0232473  0.30127692]
 [0.14864509 0.48827363 0.44294204]]
>>>
```

[^^^](#NUMPY)

---

#### RANDOM_RANDN

```py
import numpy as np

a = np.random.randn(3)

print(a)

>>>
[ 0.47887281 -0.66330668 -1.02834794]
>>>
>>>
```

[^^^](#NUMPY)

---

#### RANDOM_RANDINT

```py
import numpy as np

a = np.random.randint(0,50)
b = np.random.randint(0,50,5)

print(a)
print(b)

>>>
5
[31 20 37 20 34]
>>>
```

- MAX / MIN

```py
import numpy as np

b = np.random.randint(0,50,5)
bmax = b.max()
bmin = b.min()

print(b)
print(bmax)
print(bmin)

>>>
[31  0 24 23  2]
31
0
>>>
```

```py
import numpy as np

b = np.random.randint(0,50,5)
bmax = b.max()
bmin = b.min()
bamax = b.argmax()
bamin = b.argmin()

print(b)
print(bmax)
print(bmin)
print(bamax)
print(bamin)

>>>
[49 49 35 43 18]
49
18
0
4
>>>
```

[^^^](#NUMPY)

---

#### RESHAPE

```py
import numpy as np

ran1 = np.arange(0,25)
re = ran1.reshape(5,5)

print(re)

>>>
[[ 0  1  2  3  4]
 [ 5  6  7  8  9]
 [10 11 12 13 14]
 [15 16 17 18 19]
 [20 21 22 23 24]]
>>>
```

```py
import numpy as np

arr = np.arange(20).reshape(5,4)
print(arr)

>>>
[[ 0  1  2  3]
 [ 4  5  6  7]
 [ 8  9 10 11]
 [12 13 14 15]
 [16 17 18 19]]
>>>
```

```py
import numpy as np

arr = np.arange(50).reshape(5,10)
print(arr)
print(' ')
a = arr[1:3]
print(a)

>>>
[[ 0  1  2  3  4  5  6  7  8  9]
 [10 11 12 13 14 15 16 17 18 19]
 [20 21 22 23 24 25 26 27 28 29]
 [30 31 32 33 34 35 36 37 38 39]
 [40 41 42 43 44 45 46 47 48 49]]

[[10 11 12 13 14 15 16 17 18 19]
 [20 21 22 23 24 25 26 27 28 29]]
>>>
```

[^^^](#NUMPY)

---

#### ARRAY_INDEXING

NumPy arrays can be indexed and sliced the same way that Python lists are.

```py
import numpy as np

arr = np.arange(0,11)
a1 = arr[8]
a2 = arr[1:4]

print(arr)
print(a1)
print(a2)

arr[0:5] = 404

print(arr)
```

```py
import numpy as np

arr = np.arange(1,10)
print(arr[0:2])

>>>
[1 2]
>>>
```

```py
import numpy as np

arr = np.array([[5,10,15],[20,25,30],[35,40,45]])

print(arr)
print(' ')
print(arr[0])

>>>
[[ 5 10 15]
 [20 25 30]
 [35 40 45]]

[ 5 10 15]
>>>
```

```py
import numpy as np

arr = np.array([[5,10,15],[20,25,30],[35,40,45]])

print(arr)
print(' ')
print(arr[0])
print(' ')
print(arr[0][2])
print(' ')
print(arr[0,2])

>>>
[[ 5 10 15]
 [20 25 30]
 [35 40 45]]

[ 5 10 15]

15

15
>>>
```

[^^^](#NUMPY)

---

#### ARRAY_INDEXING_CONDITIONS

You can provide a condition as the index to select the elements that fulfill the given condition.

```py
import numpy as np

arr = np.arange(1,10)
print(arr[arr<4])

>>>
[1 2 3]
>>>
```

Conditions can be combined using the & (and) and | (or) operators.

```py
import numpy as np

arr = np.arange(1,10)
print(arr[(arr<4) & (arr%2==0)])

>>>
[2]
>>>
```

```py
x = np.array([11, 42, 8, 5, 18])
z = x[x>15] #18,42
print(z.size) #2

>>>
2
>>>
```

[^^^](#NUMPY)

---

#### SLICE_OF_ARRAY

```py
import numpy as np

arr = np.arange(0,11)

slice_of_arr = arr[0:6]

print(slice_of_arr)

slice_of_arr[:] = 99

print(slice_of_arr)
print(arr)

>>>
[0 1 2 3 4 5]
[99 99 99 99 99 99]
[99 99 99 99 99 99  6  7  8  9 10]
>>>
```

```py
import numpy as np

arr = np.arange(0,11)
myins = int(input('add number: '))

slice_of_arr = arr[0:6]
arr[9] = myins

print(slice_of_arr)

slice_of_arr[:] = 99

print(slice_of_arr)
print(myins)
print(arr)

>>>
add number: 2
[0 1 2 3 4 5]
[99 99 99 99 99 99]
2
[99 99 99 99 99 99  6  7  8  2 10]
>>>
```

```py
import numpy as np

arr = np.arange(0,11)

print(arr)

arr_copy = arr.copy()

print(arr_copy)

arr_copy[:] = 100

print(arr_copy)

>>>
[ 0  1  2  3  4  5  6  7  8  9 10]
[ 0  1  2  3  4  5  6  7  8  9 10]
[100 100 100 100 100 100 100 100 100 100 100]
>>>
```

[^^^](#NUMPY)

---

#### STATISTICS

NumPy arrays have built-in functions to return mean, median, variance, standard deviation

```py
import numpy as np

x = np.array([14, 18, 19, 24, 26, 33, 42, 55, 67])

print(np.mean(x))
print(np.median(x))
print(np.var(x))
print(np.std(x))

>>>
33.111111111111114
26.0
292.5432098765432
17.10389458212787
>>>
```

```py
x = np.arange(3, 9)
print(x)
>>>
[3 4 5 6 7 8]
>>>

z = x.reshape(2, 3)
print(z)

>>>
[[3 4 5]
[6 7 8]]
>>>

print(z[1][1])

>>>
7
>>>
```

[^^^](#NUMPY)

---

#### FINANCIAL

As we have seen in the previous example, the NumpyFinancial package includes many useful financial functions.
To use them, we first need to import the package:

```py
import numpy_financial as npf
```

We already saw the ```fv()``` function in action, which stands for future value.

```py
import numpy_financial as npf

res = npf.fv(rate=0.08, nper=5, pmt=0, pv=-1000)
print(res)

>>>
1469.3280768000006
>>>
```

Similarly, the ```pv()``` function is used to calculate the present value of an investment.
For example, let's calculate the present value of an investment, that needs to total 1000 in 8 years, with an annual interest rate of 10%.

```py
import numpy_financial as npf

res = npf.pv(rate = 0.10, nper=8, pmt=0, fv=1000)
print(res)

>>>
-466.50738020973307
>>>
```

##### Monthly Loan Payment

The ```pmt()``` function is used to compute the payment against loan principal plus interest.

Let's say we want to calculate how much we have to pay monthly to pay back a loan of 100,000 in 5 years. The yearly interest rate is 7%, and is calculated monthly.

```py
import numpy_financial as npf

res = npf.pmt(rate=0.07/12, nper=5*12, pv=100000, fv=0)
print(res)

>>>
-1980.1198540349467
>>>
```

As we need to calculate monthly payments, we set the rate and periods (nper) in months. The pv parameter shows the present value of the loan, while the fv shows the future value we want to achieve.

- pmt()

Note that aside from computing a monthly mortgage payment, the pmt() function can be used to return the periodic deposit one must make to achieve a specified future balance with a given interest rate.

```py
import numpy_financial as npf

res = npf.pmt(rate=0.10/12, nper=5*12, pv=0, fv=50000)
print(res)

>>>
-645.6855688967499
>>>
```

The code will return the monthly deposits needed to achieve 50000 in 5 years with 10% annual interest.

##### IRR

Numpy Financial has an irr() function, used to calculate the IRR (Internal Rate of Return).

Let's assume we invested 5000 and got the following payments back: 500, 700, 1000, 3000.
To calculate the IRR, we first need to declare an array with the values, with the first value being our initial investment.

```py
import numpy_financial as npf

cashflow = [-5000, 500, 700, 1000, 3000]
print(npf.irr(cashflow))

>>>
0.012164656866492818
>>>
```

##### Comparing IRR

Let's use the irr() function to compare two investment opportunities and decide which one is better.

- Option 1:
Requires 50K in investment
Will pay 10K, 25K, 25K, 35K, 42K each year for the next 5 years.

- Option 2:
Requires 30K in investment
Will pay 10K, 13K, 18K, 25K, 20K each year for the next 5 years.

Let's calculate the IRR for each investment and compare:

```py
import numpy_financial as npf

cf1 = [-50000, 10000, 25000, 25000, 35000, 42000]
cf2 = [-30000, 10000, 13000, 18000, 25000, 20000]

print("Option 1: ", npf.irr(cf1))
print("Option 2: ", npf.irr(cf2))

>>>
Option 1:  0.3605982754620045
Option 2:  0.4094208743397143
>>>
```

[^^^](#NUMPY)

---
