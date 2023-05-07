
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md)

---

### PYTHON_FLASH

---

* [COMMENTS](#COMMENTS)
* [VARIABLES](#VARIABLES)
* [DATA_TYPES](#DATA_TYPES)
* [NUMBERS](#NUMBERS)
* [NUMBER_TYPE_CONVERSION](#NUMBER_TYPE_CONVERSION)
* [RANDOM_NUMBER](#RANDOM_NUMBER)
* [MATH](#MATH)
* [CASTING](#CASTING)
* [STRINGS](#STRINGS)
* [SLICING_STRINGS](#SLICING_STRINGS)
* [](#)
* [](#)
* [LAMBDA](#LAMBDA)
* [ARGS](#ARGS)
* [](#)
* [](#)
* [](#)
* [NUMPY](#NUMPY)
* [PANDAS](#PANDAS)
* [MATPLOTLIB](#MATPLOTLIB)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### COMMENTS

##### SINGLE_LINE_COMMENT

```py
#This is a comment
print("Hello, World!")

>>>
Hello, World!
>>>
```

##### MULTI_LINE_COMMENTS

```py
"""
This is a comment
written in
more than just one line
"""

print("Hello, World!")

>>>
Hello, World!
>>>
```

[^^^](#PYTHON_FLASH)

---

#### VARIABLES

```py
char_name = "John"
char_age = "35"

print("There once was a man named " + char_name + ", ")
print("he was " + char_age + " years old")

>>>
There once was a man named John,
he was 35 years old
>>>
```

##### MULTIPLE_VARIABLES

```py
x, y, z = "Orange", "Banana", "Cherry"

print(x)
print(y)
print(z)

>>>
Orange
Banana
Cherry
>>>
```

[^^^](#PYTHON_FLASH)

---

#### DATA_TYPES

##### BUILT_IN_DT

```
- Text Type: str
- Numeric Types: int, float, complex
- Sequence Types: list, tuple, range
- Mapping Type: dict
- Set Types: set, frozenset
- Boolean Type: bool
- Binary Types: bytes, bytearray, memoryview
```

##### TEXT_TYPE

```
- Text Type: str
```

- STRING  

```py
x = "Hello World"
print(type(x))

>>>
<class 'str'>
>>>
```

##### NUMERIC_TYPES

```
- Numeric Types: int, float, complex
```

- INTEGER

```py
x = 20
print(type(x))

>>>
<class 'int'>
>>>
```

- FLOAT

```py
x = 20.5
print(type(x))

>>>
<class 'float'>
>>>
```

- COMPLEX

```py
x = 1j
print(type(x))

>>>
<class 'complex'>
>>>
```

##### SEQUENCE_TYPES

```
- Sequence Types: list, tuple, range
```

- LIST

```py
x = ["apple", "banana", "cherry"]
print(type(x))

>>>
<class 'list'>
>>>
```

- TUPLE

```py
x = ("apple", "banana", "cherry")
print(type(x))

>>>
<class 'tuple'>
>>>
```

- RANGE

```py
x = range(6)
print(type(x))

>>>
<class 'range'>
>>>
```

##### MAPPING_TYPES

```
- Mapping Type: dict
```

- DICTIONARY

```py
x = {"name" : "John", "age" : 36}
print(type(x))

>>>
<class 'dict'>
>>>
```

##### SET_TYPES

```
- Set Types: set, frozenset
```

- SET

```py
x = {"apple", "banana", "cherry"}
print(type(x))

>>>
<class 'set'>
>>>
```

- FROZENSET

```py
x = frozenset({"apple", "banana", "cherry"})
print(type(x))

>>>
<class 'frozenset'>
>>>
```

##### BOOLEAN_TYPE

```
- Boolean Type: bool
```

- BOOLEAN

```py
x = True
print(type(x))

>>>
<class 'bool'>
>>>
```

##### BINARY_TYPES

```
- Binary Types: bytes, bytearray, memoryview
```

- BYTES

```py
x = b"Hello"
print(type(x))

>>>
<class 'bytes'>
>>>
```

- BYTEARRAY

```py
x = bytearray(5)
print(type(x))

>>>
<class 'bytearray'>
>>>
```

- MEMORYVIEW

```py
x = memoryview(bytes(5))
print(type(x))

>>>
<class 'memoryview'>
>>>
```

[^^^](#PYTHON_FLASH)

---

#### NUMBERS

```
- int
- float
- complex
```

##### INT

```py
'''
Int, or integer, is a whole number, positive or negative,
without decimals, of unlimited length.
'''

x = 1
y = 35656222554887711
z = -3255522

print(type(x))
print(type(y))
print(type(z))

>>>
<class 'int'>
<class 'int'>
<class 'int'>
>>>
```

##### FLOAT

```py
'''
Float, or "floating point number" is a number,
positive or negative, containing one or more decimals.
'''

x = 1.10
y = 1.0
z = -35.59

print(type(x))
print(type(y))
print(type(z))

>>>
<class 'float'>
<class 'float'>
<class 'float'>
>>>
```

##### COMPLEX

```py
#Complex numbers are written with a "j" as the imaginary part:

x = 3+5j
y = 5j
z = -5j

print(type(x))
print(type(y))
print(type(z))

>>>
<class 'complex'>
<class 'complex'>
<class 'complex'>
>>>
```

[^^^](#PYTHON_FLASH)

---

#### NUMBER_TYPE_CONVERSION

##### INT_TO_FLOAT

```py
x = 1 # int
a = float(x)

print(x)
print(type(x))

print(a)
print(type(a))

>>>
1
<class 'int'>
1.0
<class 'float'>
>>>
```

##### FLOAT_TO_INT

```py
y = 2.8 # float
b = int(y)

print(y)
print(type(y))

print(b)
print(type(b))

>>>
2.8
<class 'float'>
2
<class 'int'>
>>>
```

##### INT_TO_COMPLEX

```py
x = 1 # int
c = complex(x)

print(x)
print(type(x))

print(c)
print(type(c))

>>>
1
<class 'int'>
(1+0j)
<class 'complex'>
>>>
```

##### INT_TO_STRING

```py
my_num=20

print(type(my_num))
print(type(str(my_num)))

>>>
<class 'int'>
<class 'str'>
>>>
```

[^^^](#PYTHON_FLASH)

---

#### RANDOM_NUMBER

```py
import random

print(random.randrange(1,10))

>>>
4
>>>
```

```py
import random

print(random.randrange(10,20))

x = ['a', 'b', 'c', 'd', 'e']

print(random.choice(x))

random.shuffle(x)

print(x)
print(random.random())

>>>
14
e
['b', 'd', 'a', 'e', 'c']
0.14933393166286335
>>>
```

[^^^](#PYTHON_FLASH)

---

#### MATH

```py
import math

print(math.pi)
print(math.cos(math.pi))
print(math.exp(10))
print(math.log10(1000))
print(math.sinh(1))
print(math.factorial(6))

>>>
3.141592653589793
-1.0
22026.465794806718
3.0
1.1752011936438014
720
>>>
```

[^^^](#PYTHON_FLASH)

---

#### CASTING

There may be times when you want to specify a type on to a variable. This can be done with casting. Python is an object-orientated language, and as such it uses classes to define data types, including its primitive types.

Casting in python is therefore done using constructor functions:

- ```int()``` - constructs an integer number from an integer literal, a float literal (by removing all decimals), or a string literal (providing the string represents a whole number)
- ```float()``` - constructs a float number from an integer literal, a float literal or a string literal (providing the string represents a float or an integer)
- ```str()``` - constructs a string from a wide variety of data types, including strings, integer literals and float literals

- INT_CASTING

```py
x = int(1)   # x will be 1
y = int(2.8) # y will be 2
z = int("3") # z will be 3
```

- FLOAT_CASTING

```py
x = float(1)     # x will be 1.0
y = float(2.8)   # y will be 2.8
z = float("3")   # z will be 3.0
w = float("4.2") # w will be 4.2
```

- STRING_CASTING

```py
x = str("s1") # x will be 's1'
y = str(2)    # y will be '2'
z = str(3.0)  # z will be '3.0'
```

[^^^](#PYTHON_FLASH)

---

#### STRINGS

Strings in python are surrounded by either single quotation marks, or double quotation marks.
```'hello'``` is the same as ```"hello"```.
You can display a string literal with the ```print()``` function:

```py
#You can use double or single quotes:

print("Hello")
print('Hello')

>>>
Hello
Hello
>>>
```

[^^^](#PYTHON_FLASH)

---

#### SLICING_STRINGS

##### SLICE_FROM_START

- till the index

```py
b = "Hello, World!"
print(b[:5])

>>>
Hello
>>>
```

##### SLICE_TO_THE_END

- from the index

```py
b = "Hello, World!"
print(b[2:])

>>>
llo, World!
>>>
```

##### NEGATIVE_INDEX

```py
b = "Hello, World!"
print(b[-5:-2])

>>>
orl
>>>
```

[^^^](#PYTHON_FLASH)

---

####

#####

[^^^](#PYTHON_FLASH)

---

#### LAMBDA

```py
def heyho(s):
    return 'hey'+s

heyho('ho')

>>>
heyho
>>>

--------------

def heyho(s): return 'hey'+s
heyho('ho')

>>>
heyho
>>>

--------------

res = lambda s: 'hey'+s
print(res('ho'))

>>>
heyho
>>>
```

[^^^](#PYTHON_FLASH)

---

#### ARGS

```py
def my_function(*kids):
  print("The youngest child is " + kids[1])

my_function("Emil", "Tobias", "Linus")

>>>
The youngest child is Tobias
>>>
```

[^^^](#PYTHON_FLASH)

---

#### NUMPY

##### NP_ARRAY

```py
import numpy as np

arr = np.array([1, 2, 3, 4, 5])

print(arr)

>>>
[1 2 3 4 5]
>>>
```

```py
import numpy as np

arr = np.array((1, 2, 3, 4, 5))

print(arr)

>>>
[1 2 3 4 5]
>>>
```

##### NP_0D_ARR

```py
import numpy as np

arr = np.array(42)

print(arr)

>>>
42
>>>
```

##### NP_1D_ARR

```py
import numpy as np

arr = np.array([1, 2, 3, 4, 5])

print(arr)

>>>
[1 2 3 4 5]
>>>
```

##### NP_2D_ARR

```py
import numpy as np

arr = np.array([[1, 2, 3], [4, 5, 6]])

print(arr)

>>>
[[1 2 3]
 [4 5 6]]
>>>
```

##### NP_3D_ARR

```py
import numpy as np

arr = np.array([[[1, 2, 3], [4, 5, 6]], [[1, 2, 3], [4, 5, 6]]])

print(arr)

>>>
[[[1 2 3]
  [4 5 6]]

 [[1 2 3]
  [4 5 6]]]
>>>
```

[^^^](#PYTHON_FLASH)

---

#### PANDAS

##### PD_SERIES

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

##### PD_SERIES_LABELS

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
```

##### PD_SERIES_DICT

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

##### PD_SERIES_DICT_LABELS

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

##### PD_DATAFRAME

A Pandas DataFrame is a 2 dimensional data structure, like a 2 dimensional array, or a table with rows and columns.

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

data = {
  "calories": [420, 380, 390],
  "duration": [50, 40, 45]
}

#load data into a DataFrame object:
df = pd.DataFrame(data)

print(df)
print(' ')
print(df.loc[0])
print(' ')
print(df.loc[[0, 1]])

>>>
calories  duration
0       420        50
1       380        40
2       390        45

calories    420
duration     50
Name: 0, dtype: int64

calories  duration
0       420        50
1       380        40
>>>
```

##### PD_INDEXES

```py
import pandas as pd

data = {
  "calories": [420, 380, 390, 500],
  "duration": [50, 40, 45, 55]
}

df = pd.DataFrame(data, index = ["day1", "day2", "day3", "day4"])

print(df)

>>>
calories  duration
day1       420        50
day2       380        40
day3       390        45
day4       500        55
>>>
```

##### PD_LOC_INDEXES

```py
import pandas as pd

data = {
  "calories": [420, 380, 390],
  "duration": [50, 40, 45]
}

df = pd.DataFrame(data, index = ["day1", "day2", "day3"])

print(df)
print(' ')
print(df.loc["day2"])

>>>
calories  duration
day1       420        50
day2       380        40
day3       390        45

calories    380
duration     40
Name: day2, dtype: int64
>>>
```

[^^^](#PYTHON_FLASH)

---

#### MATPLOTLIB

##### PLT_PYPLOT

```py
import matplotlib.pyplot as plt
import numpy as np

xpoints = np.array([0, 10])
ypoints = np.array([0, 250])

plt.plot(xpoints, ypoints)
plt.show()
```

#####

```py

```

#####

```py

```

#####

```py

```

[^^^](#PYTHON_FLASH)

---

####

#####

```py

```

[^^^](#PYTHON_FLASH)

---

####

#####

```py

```

[^^^](#PYTHON_FLASH)

---

####

#####

```py

```

[^^^](#PYTHON_FLASH)

---

####

#####

```py

```

[^^^](#PYTHON_FLASH)

---

####

#####

```py

```

[^^^](#PYTHON_FLASH)

---
