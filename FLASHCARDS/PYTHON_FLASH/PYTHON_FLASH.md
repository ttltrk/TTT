
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
* [](#)
* [LIST_METHODS](#LIST_METHODS)
* [DICT_METHODS](#DICT_METHODS)
* [](#)
* [TRY_EXCEPT](#TRY_EXCEPT)
* [](#)
* [LAMBDA](#LAMBDA)
* [ARGS](#ARGS)
* [](#)
* [CLASS](#CLASS)
* [](#)
* [NUMPY](#NUMPY)
* [PANDAS](#PANDAS)
* [MATPLOTLIB](#MATPLOTLIB)
* [](#)
* [](#)
* [](#)
* [PY_MONGO](#PY_MONGO)
* [](#)

---

#### COMMENTS

```py
#This is a comment
"""
This is a comment
written in
more than just one line
"""
```

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
char_age = 35
```

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
```

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

#### LIST_METHODS

```
append()	Adds an element at the end of the list
clear()	  Removes all the elements from the list
copy()	  Returns a copy of the list
count()	  Returns the number of elements with the specified value
extend()	Add the elements of a list (or any iterable), to the end of the current list
index()	  Returns the index of the first element with the specified value
insert()	Adds an element at the specified position
pop()	    Removes the element at the specified position
remove()	Removes the first item with the specified value
reverse()	Reverses the order of the list
sort()	  Sorts the list
```

```py
l,l1 = [], []

l.append("orange")
l.clear()
l1 = l.copy()
n = l.count("cherry")
l.extend(l1)
n = l.index("cherry")
l.insert(1, "orange")
l.pop(1)
l.remove("banana")
l.reverse()
l.sort()
```

[^^^](#PYTHON_FLASH)

---

#### DICT_METHODS

```
clear()	Removes all the elements from the dictionary
copy()	Returns a copy of the dictionary
fromkeys()	Returns a dictionary with the specified keys and value
get()	Returns the value of the specified key
items()	Returns a list containing a tuple for each key value pair
keys()	Returns a list containing the dictionary's keys
pop()	Removes the element with the specified key
popitem()	Removes the last inserted key-value pair
setdefault()	Returns the value of the specified key. If the key does not exist: insert the key, with the specified value
update()	Updates the dictionary with the specified key-value pairs
values()	Returns a list of all the values in the dictionary
```

```py
----------------------------------------
car =	{"brand": "Ford","model": "Mustang","year": 1964}
car.clear()
print(car)
#{}
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
x = car.copy()
print(x)
#{'brand': 'Ford', 'model': 'Mustang', 'year': 1964}
----------------------------------------
x = ('key1', 'key2', 'key3')
y = 0
thisdict = dict.fromkeys(x, y)
print(thisdict)
#{'key1': 0, 'key2': 0, 'key3': 0}
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
x = car.get("model")
print(x)
#Mustang
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
x = car.items()
print(x)
#dict_items([('brand', 'Ford'), ('model', 'Mustang'), ('year', 1964)])
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
x = car.keys()
print(x)
#dict_keys(['brand', 'model', 'year'])
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
car.pop("model")
print(car)
#{'brand': 'Ford', 'year': 1964}
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
car.popitem()
print(car)
#{'brand': 'Ford', 'model': 'Mustang'}
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
x = car.setdefault("model", "Bronco")
print(x)
#Mustang
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
car.update({"color": "White"})
print(car)
#{'brand': 'Ford', 'model': 'Mustang', 'year': 1964, 'color': 'White'}
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
x = car.values()
print(x)
#dict_values(['Ford', 'Mustang', 1964])
----------------------------------------
```

[^^^](#PYTHON_FLASH)

---

#### TRY_EXCEPT

```
The try block lets you test a block of code for errors.
The except block lets you handle the error.
The else block lets you execute code when there is no error.
The finally block lets you execute code, regardless of the result of the try- and except blocks.
```

```py
#The try block will generate an error, because x is not defined:

try:
  print(x)
except:
  print("An exception occurred")

>>>
An exception occurred
>>>
```

#####

[^^^](#PYTHON_FLASH)

---

#### LAMBDA

```py
res = lambda s: 'hey'+s print(res('ho')) #heyho
```

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
res = lambda *kids: kids[1] print(res("Emil", "Tobias", "Linus")) #Tobias
```

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

#### CLASS

##### CREATE_A_CLASS

```py
class MyClass:
  x = 5

print(MyClass)

>>>
<class '__main__.MyClass'>
>>>
```

##### CREATE_OBJECT

```py
class MyClass:
  x = 5

p1 = MyClass()
print(p1.x)

>>>
5
>>>
```

##### __init__()

The examples above are classes and objects in their simplest form, and are not really useful in real life applications.
To understand the meaning of classes we have to understand the built-in __init__() function.
All classes have a function called __init__(), which is always executed when the class is being initiated.
Use the __init__() function to assign values to object properties, or other operations that are necessary to do when the object is being created:

```py
class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age

p1 = Person("John", 36)

print(p1.name)
print(p1.age)

>>>
John
36
>>>
```

[^^^](#PYTHON_FLASH)

---

#### NUMPY

```py
arr = np.array([1, 2, 3, 4, 5])
arr = np.array((1, 2, 3, 4, 5))

arr = np.array(42)
arr = np.array([1, 2, 3, 4, 5])
arr = np.array([[1, 2, 3], [4, 5, 6]])
arr = np.array([[[1, 2, 3], [4, 5, 6]], [[1, 2, 3], [4, 5, 6]]])

arr = np.array([[1, 2, 3], [4, 5, 6]]) print(arr.ndim)

arr = np.array([1, 2, 3, 4], ndmin=3)
```

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

##### NUMBER_OF_DIMENSIONS

```py
import numpy as np

a = np.array(42)
b = np.array([1, 2, 3, 4, 5])
c = np.array([[1, 2, 3], [4, 5, 6]])
d = np.array([[[1, 2, 3], [4, 5, 6]], [[1, 2, 3], [4, 5, 6]]])

print(a.ndim)
print(b.ndim)
print(c.ndim)
print(d.ndim)

>>>
0
1
2
3
>>>
```

##### DEFINE_THE DIMENSION

```py
import numpy as np

arr = np.array([1, 2, 3, 4], ndmin=3)

print(arr)
print('number of dimensions :', arr.ndim)

>>>
[[[1 2 3 4]]]
number of dimensions : 3
>>>
```

[^^^](#PYTHON_FLASH)

---

#### PANDAS

```py
myvar = pd.Series(["a", "b", "c", "d"])
myvar = pd.Series([1, 7, 2], index = ["x", "y", "z"])
myvar = pd.Series({"day1": 420, "day2": 380, "day3": 390})
myvar = pd.Series({"day1": 420, "day2": 380, "day3": 390}, index = ["day1", "day2"])

myvar = pd.DataFrame({'cars': ["BMW", "Volvo", "Ford"],'passings': [3, 7, 2]})
myvar = pd.DataFrame({"calories": [420, 380, 390],"duration": [50, 40, 45]}) print(myvar.loc[0]) - print(myvar.loc[[0, 1]])
myvar = pd.DataFrame({"calories": [420, 380, 390, 500],"duration": [50, 40, 45, 55]}, index = ["day1", "day2", "day3", "day4"]) print(df.loc["day2"])

myvar = pd.read_csv('data.csv')
myvar = pd.read_json('data.json') print(myvar.to_string())
```

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

##### LOAD_FILES_INTO_DF

use ```to_string()``` to print the entire DataFrame.

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
>>>
```

##### MAX_ROWS

The number of rows returned is defined in Pandas option settings.

```py
import pandas as pd

print(pd.options.display.max_rows)

>>>
60
>>>
```

##### READ_JSON

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
>>>
```

##### DISCT_AS_JSON

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

#### PY_MONGO

##### CREATE_DB

```py
import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")

mydb = myclient["testDB"]  
```

##### CHECK_DB

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
