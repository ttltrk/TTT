
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

##### Plotting Data

Now that we know how to perform basic financial calculations, let's look at plotting charts.
Python has a package named matplotlib, which includes a pyplot sub-package used to create graphs and charts.
To use it, we first need to import it.

```py
import matplotlib.pyplot as plt  
```

##### Plotting Data

Let's assume we have a company's 5 month revenue data in an array:
We want to plot a chart visualizing the revenue data.
To do that, we simply need to call the plot function on our data:

```py
import matplotlib.pyplot as plt

rev = [18000, 25000, 20000, 45000, 32000]
plt.plot(rev)

plt.savefig('plot.png')
```

##### Plotting Data

The plot() function can also take values for both the x and y axis.
Let's add the month names on the horizontal axis:

```py
import matplotlib.pyplot as plt

rev = [18000, 25000, 20000, 45000, 32000]
months = ['June', 'July', 'August', 'September', 'October']
plt.plot(months, rev)
plt.savefig('plot.png')
```

Now you know how to perform basic financial calculations and create plots using Python!
You can store data in arrays, manipulate and perform calculations using the Numpy and Numpy Financial packages and create charts with just a couple lines of code.

[^^^](#NUMPY)

---

##### Accessing data - Pandas

The two primary components of pandas are the Series and the DataFrame.

A Series is essentially a column, and a DataFrame is a multi-dimensional table made up of a collection of Series.

For example, the following DataFrame is made of two Series, ages and heights

| ages | heights |
| --- | --- |
| 14 | 165 |
| 18 | 180 |
| 21 | 171 |

You can think of a Series as an array, while a DataFrame is a collection of arrays.

##### Accessing data - Series

Let's create a Pandas Series based on an array:

```py
import pandas as pd

prices = [42.8, 102.03, 240.38, 80.9]
s = pd.Series(prices)
print(s)

>>>
0     42.80
1    102.03
2    240.38
3     80.90
dtype: float64
>>>
```

Now we can use Pandas functions on the Series.
For example, we can use the describe() function to see the key statistics:

```py
count      4.000000
mean     116.527500
std       86.129132
min       42.800000
25%       71.375000
50%       91.465000
75%      136.617500
max      240.380000
dtype: float64
```

##### Accessing data - DataFrame

A DataFrame is similar to a spreadsheet, storing data in rows and columns. It is a collection of Series, which correspond to the columns.

Let's create a DataFrame, which holds prices and their corresponding dates:

```py
import pandas as pd

data = {
  'date': ['2021-06-10', '2021-06-11', '2021-06-12', '2021-06-13'],
  'prices': [42.8, 102.03, 240.38, 80.9]
}

df = pd.DataFrame(data)

print(df)

>>>
date  prices
0  2021-06-10   42.80
1  2021-06-11  102.03
2  2021-06-12  240.38
3  2021-06-13   80.90
>>>
```

The code above creates a DataFrame that has two columns: date and prices.
Pandas provides many useful functions to manipulate data in a DataFrame.
We will look at them in the next lessons, while scraping data from the web.

##### Accessing data - Web Scraping

Pandas provides a read_html() function, which can be used to convert tables on web pages to DataFrames.

For example, let's scrape the list of S&P 500 companies from Wikipedia.
The list is available on the Wikipedia article page as a table.
We simply need to call the read_html() function with the URL of the page as the parameter:

```py
data = pd.read_html('https://en.wikipedia.org/wiki/List_of_S%26P_500_companies')
```

Each table on the web page is stored as the DataFrame at a separate index. The first table has the index 0, the second table - the index 1, and so on.
Let's access and output the first table:

```py
import pandas as pd

data = pd.read_html('https://en.wikipedia.org/wiki/List_of_S%26P_500_companies')
df = data[0]
print(df)

>>>
Symbol             Security SEC filings             GICS Sector  \
0      MMM                   3M     reports             Industrials   
1      ABT  Abbott Laboratories     reports             Health Care   
2     ABBV               AbbVie     reports             Health Care   
3     ABMD              Abiomed     reports             Health Care   
4      ACN            Accenture     reports  Information Technology   
..     ...                  ...         ...                     ...   
500    YUM          Yum! Brands     reports  Consumer Discretionary   
501   ZBRA   Zebra Technologies     reports  Information Technology   
502    ZBH        Zimmer Biomet     reports             Health Care   
503   ZION        Zions Bancorp     reports              Financials   
504    ZTS               Zoetis     reports             Health Care   

                  GICS Sub-Industry    Headquarters Location  \
0              Industrial Conglomerates    Saint Paul, Minnesota   
1                 Health Care Equipment  North Chicago, Illinois   
2                       Pharmaceuticals  North Chicago, Illinois   
3                 Health Care Equipment   Danvers, Massachusetts   
4        IT Consulting & Other Services          Dublin, Ireland   
>>>
```

Let's select and output only the Symbol and Security columns:

```py
import pandas as pd

data = pd.read_html('https://en.wikipedia.org/wiki/List_of_S%26P_500_companies')
df = data[0]

df = df[['Symbol', 'Security']]
print(df)

>>>
Symbol             Security
0      MMM                   3M
1      ABT  Abbott Laboratories
2     ABBV               AbbVie
3     ABMD              Abiomed
4      ACN            Accenture
..     ...                  ...
500    YUM          Yum! Brands
501   ZBRA   Zebra Technologies
502    ZBH        Zimmer Biomet
503   ZION        Zions Bancorp
504    ZTS               Zoetis
>>>
```

We can also filter the table, for example, by company name:

```py
import pandas as pd

data = pd.read_html('https://en.wikipedia.org/wiki/List_of_S%26P_500_companies')
df = data[0]
df = df[df['Security'] == 'Apple']
print(df)

>>>
Symbol Security SEC filings             GICS Sector  \
44   AAPL    Apple     reports  Information Technology   

                          GICS Sub-Industry  Headquarters Location  \
44  Technology Hardware, Storage & Peripherals  Cupertino, California   

Date first added     CIK Founded  
44       1982-11-30  320193    1977  
>>>
```

The info() function can be used to see all available columns:

```py
import pandas as pd


data = pd.read_html('https://en.wikipedia.org/wiki/List_of_S%26P_500_companies')
df = data[0]
df.info()

>>>
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 505 entries, 0 to 504
Data columns (total 9 columns):
Symbol                   505 non-null object
Security                 505 non-null object
SEC filings              505 non-null object
GICS Sector              505 non-null object
GICS Sub-Industry        505 non-null object
Headquarters Location    505 non-null object
Date first added         457 non-null object
CIK                      505 non-null int64
Founded                  505 non-null object
dtypes: int64(1), object(8)
memory usage: 35.6+ KB
>>>
```

Let's head to Yahoo Finance, which provides data on companies, their financial performance and profile.
For example, here is Tesla's profile page: https://finance.yahoo.com/quote/TSLA/profile
The first table is a list of Key Executives. Let's scrape it into a DataFrame:

```py
data = pd.read_html('https://finance.yahoo.com/quote/TSLA/profile')
```

This code will cause an error, because Yahoo checks the requester and requires a valid header.

In order to fix the error, we need to specify the request header. For that, we will use the requests package and provide it with a valid header

```py
import pandas as pd
import requests

url_link = 'https://finance.yahoo.com/quote/TSLA/profile'
r = requests.get(url_link,headers ={'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'})

data = pd.read_html(r.text)
print(data[0])

>>>
Name                                        Title  \
0          Mr. Elon R. Musk          Technoking of Tesla, CEO & Director   
1   Mr. Zachary J. Kirkhorn                         Master of Coin & CFO   
2     Mr. Andrew D. Baglino    Sr. VP of Powertrain & Energy Engineering   
3        Mr. Vaibhav Taneja  Corp. Controller & Chief Accounting Officer   
4         Mr. Martin Viecha          Sr. Director for Investor Relations   
5         Mr. Alan Prescott                                  VP of Legal   
6           Mr. Dave Arnold        Sr. Director of Global Communications   
7              Brian Scelfo                 Sr. Director of Corp. Devel.   
8   Mr. Jeffrey B. Straubel                                  Sr. Advisor   
9  Mr. Franz von Holzhausen                               Chief Designer   

Pay Exercised  Year Born  
0      NaN       NaN     1972.0  
1  300.76k     4.19M     1985.0  
2  283.27k    14.86M     1981.0  
3      NaN       NaN     1978.0  
4      NaN       NaN        NaN  
5      NaN       NaN        NaN  
6      NaN       NaN        NaN  
7      NaN       NaN        NaN  
8      NaN       NaN     1976.0  
9      NaN       NaN        NaN  

>>>
```

We used the requests package to get the data and pass it to the read_html() function.
A request header is used in an HTTP request to provide information about the request context, so that the server can tailor the response. We provided data for a standard web browser.

Now, we can access other financial metrics.
For example, let's scrape the Earnings Estimates from the Analysis page:

```py
import pandas as pd
import requests

url_link = 'https://finance.yahoo.com/quote/TSLA/analysis?p=TSLA'
r = requests.get(url_link,headers ={'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'})

data = pd.read_html(r.text)
print(data[0])  

>>>
Earnings Estimate  Current Qtr. (Dec 2021)  Next Qtr. (Mar 2022)  \
0   No. of Analysts                    22.00                 10.00   
1     Avg. Estimate                     1.92                  1.77   
2      Low Estimate                     1.39                  1.38   
3     High Estimate                     2.61                  2.38   
4      Year Ago EPS                     0.80                  0.93   

 Current Year (2021)  Next Year (2022)  
0                31.00             30.00  
1                 6.06              8.19  
2                 4.25              5.25  
3                 6.85             11.30  
4                 2.24              6.06  
>>>
```

We used the index [0] as it's the first table on the page.
Now we can access the Avg. Estimate row from the table and plot it as a bar chart:

```py
import pandas as pd
import requests
import matplotlib.pyplot as plt

url_link = 'https://finance.yahoo.com/quote/TSLA/analysis?p=TSLA'
r = requests.get(url_link,headers ={'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'})

data = pd.read_html(r.text)
data = data[0]
data = data[data['Earnings Estimate'] == 'Avg. Estimate']

data.plot(kind='bar')

plt.savefig('plot.png')
```

Run the code to see the chart, showing the Avg. Estimate values from the table.
Note that we called the plot() function right on the DataFrame, specifying the type of the chart.

##### Accessing data - yFinance

Scraping Yahoo Finance involves manual work, including adding a header, specifying the URL, making the request and using the read_html() function.

Another way to get financial data from Yahoo Finance is to use the yfinance package.
It was created to provide a super easy way to access the financial data, without the need for manual work.

We need to install and import it first:

```py
import yfinance as yf
```

After importing the package, we can use its features.
The Ticker module allows us to access company data based on their market ticker symbol.
For example, let's take Tesla's data:

```py
data = yf.Ticker("TSLA")
```

Now, we can access the company information under the corresponding fields.
For example, to get the general data:

```py
import yfinance as yf

data = yf.Ticker("TSLA")
print(data.info)

>>>
{'zip': '78725', 'sector': 'Consumer Cyclical', 'fullTimeEmployees': 70757, 'longBusinessSummary': 'Tesla, Inc. designs, develops, manufactures, leases, and sells electric vehicles, and energy generation and storage systems in the United States, China, and internationally. The company operates in two segments, Automotive, and Energy Generation and Storage. The Automotive segment offers electric vehicles, as well as sells automotive regulatory credits. It provides sedans and sport utility vehicles through direct and used vehicle sales, a network of Tesla Superchargers, and in-app upgrades; and purchase financing and leasing services. This segment is also involved in the provision of non-warranty after-sales vehicle services, sale of used vehicles, retail merchandise, and vehicle insurance, as well as sale of products through its subsidiaries to third party customers; services for electric vehicles through its company-owned service locations, and Tesla mobile service technicians; and vehicle limited warranties and extended service plans. The Energy Generation and Storage segment engages in the design, manufacture, installation, sale, and leasing of solar energy generation and energy storage products, and related services to residential, commercial, and industrial customers and utilities through its website, stores, and galleries, as well as through a network of channel partners. This segment also offers service and repairs to its energy product customers, including under warranty; and various financing options to its solar customers. The company was formerly known as Tesla Motors, Inc. and changed its name to Tesla, Inc. in February 2017. Tesla, Inc. was founded in 2003 and is headquartered in Austin, Texas.', 'city': 'Austin', 'phone': '650-681-5000', 'state': 'TX', 'country': 'United States', 'companyOfficers': [], 'website': 'https://www.tesla.com', 'maxAge': 1, 'address1': '13101 Harold Green Road', 'industry': 'Auto Manufacturers', 'ebitdaMargins': 0.15512, 'profitMargins': 0.07403, 'grossMargins': 0.23107, 'operatingCashflow': 9930999808, 'revenueGrowth': 0.568, 'operatingMargins': 0.09789, 'ebitda': 7266999808, 'targetLowPrice': 67, 'recommendationKey': 'hold', 'grossProfits': 6630000000, 'freeCashflow': 4644624896, 'targetMedianPrice': 950, 'currentPrice': 1017.03, 'earningsGrowth': 4.333, 'currentRatio': 1.385, 'returnOnAssets': 0.055370003, 'numberOfAnalystOpinions': 35, 'targetMeanPrice': 855.58, 'debtToEquity': 35.65, 'returnOnEquity': 0.15641, 'targetHighPrice': 1400, 'totalCash': 16094999552, 'totalDebt': 10158000128, 'totalRevenue': 46848000000, 'totalCashPerShare': 16.027, 'financialCurrency': 'USD', 'revenuePerShare': 48.272, 'quickRatio': 1.002, 'recommendationMean': 2.6, 'exchange': 'NMS', 'shortName': 'Tesla, Inc.', 'longName': 'Tesla, Inc.', 'exchangeTimezoneName': 'America/New_York', 'exchangeTimezoneShortName': 'EST', 'isEsgPopulated': False, 'gmtOffSetMilliseconds': '-18000000', 'quoteType': 'EQUITY', 'symbol': 'TSLA', 'messageBoardId': 'finmb_27444752', 'market': 'us_market', 'annualHoldingsTurnover': None, 'enterpriseToRevenue': 21.706, 'beta3Year': None, 'enterpriseToEbitda': 139.93, '52WeekChange': 0.5688542, 'morningStarRiskRating': None, 'forwardEps': 8.19, 'revenueQuarterlyGrowth': None, 'sharesOutstanding': 1004259968, 'fundInceptionDate': None, 'annualReportExpenseRatio': None, 'totalAssets': None, 'bookValue': 26.945, 'sharesShort': 26570674, 'sharesPercentSharesOut': 0.026500002, 'fundFamily': None, 'lastFiscalYearEnd': 1609372800, 'heldPercentInstitutions': 0.4241, 'netIncomeToCommon': 3468000000, 'trailingEps': 3.062, 'lastDividendValue': None, 'SandP52WeekChange': 0.28888905, 'priceToBook': 37.744667, 'heldPercentInsiders': 0.19305, 'nextFiscalYearEnd': 1672444800, 'yield': None, 'mostRecentQuarter': 1632960000, 'shortRatio': 0.86, 'sharesShortPreviousMonthDate': 1635465600, 'floatShares': 815734211, 'beta': 2.037922, 'enterpriseValue': 1016871452672, 'priceHint': 2, 'threeYearAverageReturn': None, 'lastSplitDate': 1598832000, 'lastSplitFactor': '5:1', 'legalType': None, 'lastDividendDate': None, 'morningStarOverallRating': None, 'earningsQuarterlyGrowth': 3.888, 'priceToSalesTrailing12Months': 21.801626, 'dateShortInterest': 1638230400, 'pegRatio': 2.41, 'ytdReturn': None, 'forwardPE': 124.1795, 'lastCapGain': None, 'shortPercentOfFloat': 0.0325, 'sharesShortPriorMonth': 28075921, 'impliedSharesOutstanding': None, 'category': None, 'fiveYearAverageReturn': None, 'previousClose': 1003.8, 'regularMarketOpen': 1008.75, 'twoHundredDayAverage': 756.5437, 'trailingAnnualDividendYield': None, 'payoutRatio': 0, 'volume24Hr': None, 'regularMarketDayHigh': 1020.9797, 'navPrice': None, 'averageDailyVolume10Day': 21545328, 'regularMarketPreviousClose': 1003.8, 'fiftyDayAverage': 1001.6562, 'trailingAnnualDividendRate': None, 'open': 1008.75, 'toCurrency': None, 'averageVolume10days': 21545328, 'expireDate': None, 'algorithm': None, 'dividendRate': None, 'exDividendDate': None, 'circulatingSupply': None, 'startDate': None, 'regularMarketDayLow': 982.53, 'currency': 'USD', 'trailingPE': 332.14566, 'regularMarketVolume': 19730055, 'lastMarket': None, 'maxSupply': None, 'openInterest': None, 'marketCap': 1021362569216, 'volumeAllCurrencies': None, 'strikePrice': None, 'averageVolume': 25643445, 'dayLow': 982.53, 'ask': 1012.85, 'askSize': 800, 'volume': 19730055, 'fiftyTwoWeekHigh': 1243.49, 'fromCurrency': None, 'fiveYearAvgDividendYield': None, 'fiftyTwoWeekLow': 539.49, 'bid': 1012, 'tradeable': False, 'dividendYield': None, 'bidSize': 1800, 'dayHigh': 1020.9797, 'regularMarketPrice': 1017.03, 'logo_url': 'https://logo.clearbit.com/tesla.com'}
>>>
```

Let's output the profit margins and RoE:

```py
import yfinance as yf

data = yf.Ticker("TSLA")

print(data.info['profitMargins'])
print(data.info['returnOnEquity'])

>>>
0.07403
0.15641
>>>
```

You can check for all of the available field names using data.info.keys()
In addition to the info fields, the data object provides the following fields:

```py
import yfinance as yf

data = yf.Ticker("TSLA")

# show dividends
print(data.dividends)

# show splits
print(data.splits)

# show balance sheet
print(data.balance_sheet)

# show cashflow
print(data.cashflow)

# show earnings
print(data.earnings)

>>>
Series([], Name: Dividends, dtype: int64)
Date
2020-08-31    5.0
Name: Stock Splits, dtype: float64
                             2020-12-31  ...    2017-12-31
Intangible Assets          3.130000e+08  ...  3.615020e+08
Capital Surplus            2.726000e+10  ...  9.178024e+09
Total Liab                 2.846900e+10  ...  2.302305e+10
Total Stockholder Equity   2.222500e+10  ...  4.237242e+09
Minority Interest          1.454000e+09  ...  1.395080e+09
Other Current Liab         4.147000e+09  ...  3.098379e+09
Total Assets               5.214800e+10  ...  2.865537e+10
Common Stock               1.000000e+06  ...  1.690000e+05
Other Current Assets       2.380000e+08  ...  1.553230e+08
Retained Earnings         -5.399000e+09  ... -4.974299e+09
Other Liab                 3.302000e+09  ...  4.196294e+09
Good Will                  2.070000e+08  ...  6.023700e+07
Treasury Stock             3.630000e+08  ...  3.334800e+07
Other Assets               1.536000e+09  ...  1.166193e+09
Cash                       1.938400e+10  ...  3.367914e+09
Total Current Liabilities  1.424800e+10  ...  7.674740e+09
Short Long Term Debt       1.758000e+09  ...  9.639320e+08
Other Stockholder Equity   3.630000e+08  ...  3.334800e+07
Property Plant Equipment   2.337500e+10  ...  2.049162e+10
Total Current Assets       2.671700e+10  ...  6.570520e+09
Net Tangible Assets        2.170500e+10  ...  3.815503e+09
Net Receivables            1.903000e+09  ...  5.153810e+08
Long Term Debt             8.571000e+09  ...  9.486248e+09
Inventory                  4.101000e+09  ...  2.263537e+09
Accounts Payable           6.051000e+09  ...  2.390250e+09
Long Term Investments               NaN  ...  5.304000e+06

[26 rows x 4 columns]
                                             2020-12-31  ...    2017-12-31
Change To Liabilities                      2.423000e+09  ...  8.570000e+08
Total Cashflows From Investing Activities -3.132000e+09  ... -4.196000e+09
Net Borrowings                            -2.488000e+09  ...  3.385000e+09
Total Cash From Financing Activities       9.973000e+09  ...  4.415000e+09
Change To Operating Activities            -1.165000e+09  ... -1.150000e+09
Issuance Of Stock                          1.268600e+10  ...  6.590000e+08
Net Income                                 7.210000e+08  ... -1.962000e+09
Change In Cash                             1.311800e+10  ...  1.980000e+08
Effect Of Exchange Rate                    3.340000e+08  ...  4.000000e+07
Total Cash From Operating Activities       5.943000e+09  ... -6.100000e+07
Depreciation                               2.322000e+09  ...  1.636000e+09
Other Cashflows From Investing Activities  1.230000e+08  ...  4.600000e+07
Change To Inventory                       -4.220000e+08  ... -1.790000e+08
Change To Account Receivables             -6.520000e+08  ... -2.500000e+07
Other Cashflows From Financing Activities -2.250000e+08  ...  3.710000e+08
Change To Netincome                        2.536000e+09  ...  6.710000e+08
Capital Expenditures                      -3.232000e+09  ... -4.081000e+09

[17 rows x 4 columns]
          Revenue    Earnings
Year                         
2017  11759000000 -1962000000
2018  21461000000  -976000000
2019  24578000000  -862000000
2020  31536000000   721000000
>>>
```

We can also easily plot the data.
For example, let's create a bar chart for the revenue:

```py
import yfinance as yf
import matplotlib.pyplot as plt

data = yf.Ticker("TSLA")

x = data.earnings
print(x)

x.plot(kind="bar")
plt.savefig('plot.png')

>>>
Revenue    Earnings
Year                         
2017  11759000000 -1962000000
2018  21461000000  -976000000
2019  24578000000  -862000000
2020  31536000000   721000000
>>>
```

##### Accessing data - Company Data

We can also use the yfinance package to access data on company investors.
Let's output the list of Tesla's major holders:

```py
import yfinance as yf

data = yf.Ticker("TSLA")

print(data.major_holders)

>>>
0                                      1
0  19.43%        % of Shares Held by All Insider
1  42.41%       % of Shares Held by Institutions
2  52.64%        % of Float Held by Institutions
3    2826  Number of Institutions Holding Shares
>>>
```

We can also get the list of the institutional holders:

```py
import yfinance as yf

data = yf.Ticker("TSLA")

print(data.institutional_holders)

>>>
Holder    Shares  ...   % Out        Value
0         Vanguard Group, Inc. (The)  61992012  ...  0.0617  48073565465
1                     Blackrock Inc.  52829488  ...  0.0526  40968211354
2            Capital World Investors  37427314  ...  0.0373  29024133460
3           State Street Corporation  31230141  ...  0.0311  24218349742
4        Baillie Gifford and Company  13853124  ...  0.0138  10742820599
5      Geode Capital Management, LLC  13169939  ...  0.0131  10213024295
6            Jennison Associates LLC  10630339  ...  0.0106   8243615287
7                           FMR, LLC   9921292  ...  0.0099   7693763520
8         Northern Trust Corporation   8634516  ...  0.0086   6695894467
9  Norges Bank Investment Management   7790070  ...  0.0078   5497218696

>>>
```

These fields are actually DataFrames. This means that you can use all the DataFrame functions and filtering options on the data. For example, you can use .info() to see all the columns available in the DataFrame.

The .recommendations field provides data on historic recommendations by investment banks.
Let's filter only the ones that are recent:

```py
import yfinance as yf

data = yf.Ticker("TSLA")

x = data.recommendations
x = x[x.index > '2021-06-01']
print(x)

>>>
Firm        To Grade From Grade Action
Date                                                                    
2021-06-14 13:55:22  Canaccord Genuity             Buy              main
2021-06-29 11:29:11                UBS         Neutral              main
2021-07-07 14:52:52          JP Morgan     Underweight              main
2021-07-27 10:54:46             Mizuho             Buy              main
2021-07-27 11:48:23        Wells Fargo    Equal-Weight              main
2021-07-27 11:51:22        RBC Capital  Sector Perform              main
2021-07-27 13:38:59      Goldman Sachs             Buy              main
2021-07-27 14:27:49  Canaccord Genuity             Buy              main
2021-07-29 10:14:50            DZ Bank             Buy       Sell     up
2021-08-02 15:55:02     KGI Securities      Outperform              init
2021-08-09 09:17:02          Jefferies             Buy       Hold     up
2021-09-23 12:18:35    Tudor Pickering            Sell              init
2021-10-04 10:44:57        RBC Capital  Sector Perform              main
2021-10-08 13:28:13  Canaccord Genuity             Buy              main
2021-10-14 10:45:16           Barclays     Underweight              main
2021-10-15 13:26:02          Jefferies             Buy              main
2021-10-21 10:21:59            Wedbush      Outperform              main
2021-10-21 11:06:18      Credit Suisse         Neutral              main
2021-10-21 11:07:12        Wells Fargo    Equal-Weight              main
2021-10-21 11:58:01        RBC Capital  Sector Perform              main
2021-10-21 12:42:25             Mizuho             Buy              main
2021-10-21 14:23:55       Roth Capital         Neutral              main
2021-10-21 14:33:04  Canaccord Genuity             Buy              main
2021-10-27 12:15:11      Goldman Sachs             Buy              main
2021-10-28 14:15:36      Piper Sandler      Overweight              main
2021-11-08 12:27:21          Jefferies             Buy              main
>>>
```

The index of the DataFrame is the Date column.

Let's apply what we've learned: create a function that will take a ticker as its parameter, and output the ROE value for that ticker.
This will allow you to compare the ROE values of different companies:

```py
import yfinance as yf

def RoE(ticker):
  data = yf.Ticker(ticker)
  roe = data.info['returnOnEquity']
  name = data.info['shortName']
  print(name, ":", roe)
```

Now we can call our function with different ticker values:

```py
import yfinance as yf

def RoE(ticker):
    data = yf.Ticker(ticker)
    roe = data.info['returnOnEquity']
    name = data.info['shortName']
    print(name, ":", roe)

RoE('AAPL')
RoE('MSFT')

>>>
Apple Inc. : 1.47443
Microsoft Corporation : 0.49303
>>>
```

##### Accessing data - Stock Prices

yfinance also provides the stock prices of the given ticker.

```py
import yfinance as yf

data = yf.Ticker('TSLA')

print(data.history())

>>>
Open         High  ...  Dividends  Stock Splits
Date                                  ...                         
2021-11-11  1102.770020  1104.969971  ...          0             0
2021-11-12  1047.500000  1054.500000  ...          0             0
2021-11-15  1017.630005  1031.979980  ...          0             0
2021-11-16  1003.309998  1057.199951  ...          0             0
2021-11-17  1063.510010  1119.640015  ...          0             0
2021-11-18  1106.550049  1112.000000  ...          0             0
2021-11-19  1098.869995  1138.719849  ...          0             0
2021-11-22  1162.329956  1201.949951  ...          0             0
2021-11-23  1167.510010  1180.499878  ...          0             0
2021-11-24  1080.390015  1132.770020  ...          0             0
2021-11-26  1099.469971  1108.782715  ...          0             0
2021-11-29  1100.989990  1142.670044  ...          0             0
2021-11-30  1144.369995  1168.000000  ...          0             0
2021-12-01  1160.694946  1172.839844  ...          0             0
2021-12-02  1099.060059  1113.000000  ...          0             0
2021-12-03  1084.790039  1090.575317  ...          0             0
2021-12-06  1001.510010  1021.640015  ...          0             0
2021-12-07  1044.199951  1057.673950  ...          0             0
2021-12-08  1052.709961  1072.380005  ...          0             0
2021-12-09  1060.640015  1062.489990  ...          0             0
2021-12-10  1008.750000  1020.979675  ...          0             0

[21 rows x 7 columns]
>>>
```

This will output the stock prices for the last month.
We can provide a period parameter:

```py
import yfinance as yf

data = yf.Ticker('TSLA')

print(data.history(period='5d'))

>>>
Open         High  ...  Dividends  Stock Splits
Date                                  ...                         
2021-12-06  1001.510010  1021.640015  ...          0             0
2021-12-07  1044.199951  1057.673950  ...          0             0
2021-12-08  1052.709961  1072.380005  ...          0             0
2021-12-09  1060.640015  1062.489990  ...          0             0
2021-12-10  1008.750000  1020.979675  ...          0             0

[5 rows x 7 columns]
>>>
```

Valid periods: 1d, 5d, 1mo, 3mo, 6mo, 1y, 2y, 5y, 10y, ytd, max.
We can also provide custom start and end dates:

```py
import yfinance as yf

data = yf.Ticker('TSLA')

print(data.history(start="2021-01-01", end="2021-06-30"))

>>>
Open        High  ...  Dividends  Stock Splits
Date                                ...                         
2021-01-04  719.460022  744.489929  ...          0             0
2021-01-05  723.659973  740.840027  ...          0             0
2021-01-06  758.489990  774.000000  ...          0             0
2021-01-07  777.630005  816.989990  ...          0             0
2021-01-08  856.000000  884.489990  ...          0             0
...                ...         ...  ...        ...           ...
2021-06-23  632.000000  657.203979  ...          0             0
2021-06-24  674.989990  697.619995  ...          0             0
2021-06-25  689.580017  693.809998  ...          0             0
2021-06-28  671.640015  694.699890  ...          0             0
2021-06-29  684.650024  687.509888  ...          0             0

[123 rows x 7 columns]
>>>
```

As the data is a DataFrame, we can easily plot it.
Let's plot the daily Close price of Tesla stock for the last month:

```py
import yfinance as yf
import matplotlib.pyplot as plt

data = yf.Ticker('TSLA')

x = data.history()['Close']
x.plot()

plt.savefig('plot.png')
```

In addition, yfinance allows you to download historical prices for more than one stock simultaneously.
For example, let's take the stock prices of Apple, Microsoft and Tesla with one line:

```py
import yfinance as yf
import matplotlib.pyplot as plt

data = yf.download("AAPL MSFT TSLA", start='2021-01-01')
print(data['Close'])

>>>

[                       0%                       ]
[**********************67%*******                ]  2 of 3 completed
[*********************100%***********************]  3 of 3 completed
                  AAPL        MSFT         TSLA
Date                                           
2021-01-04  129.410004  217.690002   729.770020
2021-01-05  131.009995  217.899994   735.109985
2021-01-06  126.599998  212.250000   755.979980
2021-01-07  130.919998  218.289993   816.039978
2021-01-08  132.050003  219.619995   880.020020
...                ...         ...          ...
2021-12-06  165.320007  326.190002  1009.010010
2021-12-07  171.179993  334.920013  1051.750000
2021-12-08  175.080002  334.970001  1068.959961
2021-12-09  174.559998  333.100006  1003.799988
2021-12-10  179.449997  342.540009  1017.030029

[238 rows x 3 columns]
>>>
```

You need to separate the ticker symbols using spaces.
Now we can plot the stock prices of all the 3 tickers:

```py
import yfinance as yf
import matplotlib.pyplot as plt

data = yf.download("AAPL MSFT TSLA", start='2021-01-01')
data['Close'].plot()

plt.savefig('plot.png')

>>>
[                       0%                       ]
[**********************67%*******                ]  2 of 3 completed
[*********************100%***********************]  3 of 3 completed
>>>
```

##### ANALYZING DATA - Stock Returns

Now that we know how to get stock prices, we can perform calculations and analysis.
We will start by calculating the daily returns of a stock.
Let's get the stock prices for Tesla over the past year:

```py
import yfinance as yf

data = yf.Ticker('TSLA')
price = data.history(period='1y')
```

In order to calculate the daily returns, we will use the pct_change() function, which calculates the percentage change between the current element and a prior one.
We will use it on the 'Close' column:

```py
import yfinance as yf

data = yf.Ticker('TSLA')
price = data.history(period='1y')

x = price['Close'].pct_change()

print(x)

>>>
Date
2020-12-14         NaN
2020-12-15   -0.010284
2020-12-16   -0.016550
2020-12-17    0.053198
2020-12-18    0.059613
                ...   
2021-12-08    0.016363
2021-12-09   -0.060956
2021-12-10    0.013180
2021-12-13   -0.049772
2021-12-14   -0.019050
Name: Close, Length: 253, dtype: float64
>>>
```

pct_change() is a Pandas function and can be applied to DataFrames.

To visualize the results, we can create a plot for the daily returns:

```py
import yfinance as yf
import matplotlib.pyplot as plt

data = yf.Ticker('TSLA')
price = data.history(period='1y')

x = price['Close'].pct_change()

x.plot()

plt.savefig('plot.png')
```

We can also make a histogram to see the distribution:

```py
import yfinance as yf
import matplotlib.pyplot as plt

data = yf.Ticker('TSLA')
price = data.history(period='1y')

x = price['Close'].pct_change()

x.plot(kind='hist')

plt.savefig('plot.png')
```

A histogram is an approximate representation of the distribution of numerical data.

After understanding how the returns are distributed, we can calculate the returns from an investment.
For that, we need to calculate the cumulative returns, which can be done using the cumprod() function:

```py
x = price['Close'].pct_change()

returns = (x + 1).cumprod()
```

```py
import yfinance as yf
import matplotlib.pyplot as plt

data = yf.Ticker('TSLA')
price = data.history(period='1y')

x = price['Close'].pct_change()

returns = (x + 1).cumprod()

returns.plot()
plt.savefig('plot.png')
```

The plot shows how a $1 investment would grow.

The cumprod() function is used to get a cumulative product over an array of elements and return an array of the results.




[^^^](#NUMPY)

---
