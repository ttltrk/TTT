
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
* [ARRAYS](#ARRAYS)
* [](#)
* [](#)
* [](#)
* [LIST_METHODS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/LIST_METHODS/LIST_METHODS.md)
* [DICT_METHODS](#DICT_METHODS)
* [TUPLE_METHODS](#TUPLE_METHODS)
* [SET_METHODS](#SET_METHODS)
* [](#)
* [](#)
* [](#)
* [TRY_EXCEPT](#TRY_EXCEPT)
* [](#)
* [MAP](#MAP)
* [](#)
* [LAMBDA](#LAMBDA)
* [ARGS](#ARGS)
* [](#)
* [CLASS](#CLASS)
* [](#)
* [NUMPY](#NUMPY)
* [PANDAS](#PANDAS)
* [MATPLOTLIB](#MATPLOTLIB)
* [PY_MONGO](#PY_MONGO)
* [SPARK](#SPARK)
* [](#)
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

#### ARRAYS

```
-----------------------------------------------------------

List

- Lists are used to store multiple items in a single variable.
- Lists are one of 4 built-in data types in Python used to store collections of data,
the other 3 are Tuple, Set, and Dictionary, all with different qualities and usage.
- Lists are created using square brackets.
- List items are ordered, changeable, and allow duplicate values.
- List items are indexed, the first item has index [0], the second item has index [1] etc.
- When we say that lists are ordered, it means that the items have a defined order, and that order will not change.
- If you add new items to a list, the new items will be placed at the end of the list.

-----------------------------------------------------------

Tuples

- Tuples are used to store multiple items in a single variable.
- Tuple is one of 4 built-in data types in Python used to store collections of data,
the other 3 are List, Set, and Dictionary, all with different qualities and usage.
- A tuple is a collection which is ordered and unchangeable.
- Tuples are written with round brackets.
- Tuple items are ordered, unchangeable, and allow duplicate values.
- Tuple items are indexed, the first item has index [0], the second item has index [1] etc.
- When we say that tuples are ordered, it means that the items have a defined order, and that order will not change.
- Tuples are unchangeable, meaning that we cannot change, add or remove items after the tuple has been created.
- Since tuples are indexed, they can have items with the same value

-----------------------------------------------------------

Dictionary

- Dictionaries are used to store data values in key:value pairs.
- A dictionary is a collection which is ordered*, changeable and does not allow duplicates.
- As of Python version 3.7, dictionaries are ordered. In Python 3.6 and earlier, dictionaries are unordered.
- Dictionaries are written with curly brackets, and have keys and values.
- Dictionary items are ordered, changeable, and does not allow duplicates.
- Dictionary items are presented in key:value pairs, and can be referred to by using the key name.
- As of Python version 3.7, dictionaries are ordered. In Python 3.6 and earlier, dictionaries are unordered.
- When we say that dictionaries are ordered, it means that the items have a defined order, and that order will not change.
- Unordered means that the items does not have a defined order, you cannot refer to an item by using an index.
- Dictionaries are changeable, meaning that we can change, add or remove items after the dictionary has been created.
- Dictionaries cannot have two items with the same key:

-----------------------------------------------------------

-----------------------------------------------------------
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

#### TUPLE_METHODS

```
count()	Returns the number of times a specified value occurs in a tuple
index()	Searches the tuple for a specified value and returns the position of where it was found
```

```py
----------------------------------------
thistuple = (1, 3, 7, 8, 7, 5, 4, 6, 8, 5)
x = thistuple.count(5)
print(x)
#2
----------------------------------------
thistuple = (1, 3, 7, 8, 7, 5, 4, 6, 8, 5)
x = thistuple.index(8)
print(x)
#3
----------------------------------------
```

[^^^](#PYTHON_FLASH)

---

#### SET_METHODS

```
add()	Adds an element to the set
clear()	Removes all the elements from the set
copy()	Returns a copy of the set
difference()	Returns a set containing the difference between two or more sets
difference_update()	Removes the items in this set that are also included in another, specified set
discard()	Remove the specified item
intersection()	Returns a set, that is the intersection of two or more sets
intersection_update()	Removes the items in this set that are not present in other, specified set(s)
isdisjoint()	Returns whether two sets have a intersection or not
issubset()	Returns whether another set contains this set or not
issuperset()	Returns whether this set contains another set or not
pop()	Removes an element from the set
remove()	Removes the specified element
symmetric_difference()	Returns a set with the symmetric differences of two sets
symmetric_difference_update()	inserts the symmetric differences from this set and another
union()	Return a set containing the union of sets
update()	Update the set with another set, or any other iterable
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

```py
try:
  print(x)
except NameError:
  print("Variable x is not defined")
except:
  print("Something else went wrong")

>>>
Variable x is not defined
>>>
```

#####

[^^^](#PYTHON_FLASH)

---

##### MAP

The ```map()``` function executes a specified function for each item in an iterable. The item is sent to the function as a parameter.

```py
def myfunc(a):
  return len(a)

x = map(myfunc, ('apple', 'banana', 'cherry'))

print(x)

>>>
[5, 6, 6]
>>>
```

```py
def myfunc(a, b):
  return a + b

x = map(myfunc, ('apple', 'banana', 'cherry'), ('orange', 'lemon', 'pineapple'))

print(x)

>>>
['appleorange', 'bananalemon', 'cherrypineapple']
>>>
```

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

##### __str__()

The ```__str__()``` function controls what should be returned when the class object is represented as a string.
If the ```__str__()``` function is not set, the string representation of the object is returned:

```py
class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age

p1 = Person("John", 36)

print(p1)

>>>
<__main__.Person object at 0x15039e602100>
>>>
```

```py
class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age

  def __str__(self):
    return f"{self.name}({self.age})"    

p1 = Person("John", 36)

print(p1)

>>>
John(36)
>>>
```

##### OBJECT_METHODS

Objects can also contain methods. Methods in objects are functions that belong to the object.
Let us create a method in the Person class:

```py
class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age

  def myfunc(self):
    print("Hello my name is " + self.name)

p1 = Person("John", 36)
p1.myfunc()

>>>
Hello my name is John
>>>
```

```py
class Person:
  def __init__(self, name, age, address):
    self.name = name
    self.age = age
    self.address = address

  def myfunc(self):
    print("Hello my name is " + self.name + " and I come from " + self.address)

p1 = Person("John", 36, "DS")
p1.myfunc()

>>>
Hello my name is John and I come from DS
>>>
```

##### INHERITANCE

Inheritance allows us to define a class that inherits all the methods and properties from another class.
Parent class is the class being inherited from, also called base class.
Child class is the class that inherits from another class, also called derived class.

- CREATE A PARENT CLASS

```py
class Person:
  def __init__(self, fname, lname):
    self.firstname = fname
    self.lastname = lname

  def printname(self):
    print(self.firstname, self.lastname)

#Use the Person class to create an object, and then execute the printname method:

x = Person("John", "Doe")
x.printname()

>>>
John Doe
>>>
```

- CREATE A CHILD CLASS

```py
class Student(Person):
  pass
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

myvar = pd.read_csv('data.csv') print(myvar.head(10))
myvar = pd.read_csv('data.csv') print(myvar.head())
myvar = pd.read_csv('data.csv') print(myvar.tail())
myvar = pd.read_csv('data.csv') print(myvar.info())

new_df = df.dropna() #the dropna() method returns a new DataFrame, and will not change the original.
df.dropna(inplace = True) #will NOT return a new DataFrame, but it will remove all rows containing NULL values from the original DataFrame.
df.fillna(130, inplace = True) #The fillna() method allows us to replace empty cells with a value:
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

##### ANALYZING_DATA

One of the most used method for getting a quick overview of the DataFrame, is the ```head()``` method.
The ```head()``` method returns the headers and a specified number of rows, starting from the top.

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

There is also a ```tail()``` method for viewing the last rows of the DataFrame.
The ```tail()``` method returns the headers and a specified number of rows, starting from the bottom.

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

The DataFrames object has a method called ```info()```, that gives you more information about the data set.

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

##### CLEANING_DATA

Data cleaning means fixing bad data in your data set.

Bad data could be:

- Empty cells
- Data in wrong format
- Wrong data
- Duplicates

##### CLEANING_EMPTY_CELLS

Empty cells can potentially give you a wrong result when you analyze data.
One way to deal with empty cells is to remove rows that contain empty cells.
This is usually OK, since data sets can be very big, and removing a few rows will not have a big impact on the result.

```py
import pandas as pd

df = pd.read_csv('data.csv')
new_df = df.dropna()

print(new_df.to_string())

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
>>>
```

By default, the ```dropna()``` method returns a new DataFrame, and will not change the original.
If you want to change the original DataFrame, use the ```inplace = True``` argument:

```py
import pandas as pd

df = pd.read_csv('data.csv')
df.dropna(inplace = True)

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
7        450  '2020/12/08'    104       134     253.3
8         30  '2020/12/09'    109       133     195.1
9         60  '2020/12/10'     98       124     269.0
10        60  '2020/12/11'    103       147     329.3
>>>
```

##### REPLACE_EMPTY_CELLS

```
Mean = the average value (the sum of all values divided by number of values).
Median = the value in the middle, after you have sorted all values ascending.
Mode = the value that appears most frequently.
```

A common way to replace empty cells, is to calculate the mean, median or mode value of the column.
Pandas uses the ```mean()``` ```median()``` and ```mode()``` methods to calculate the respective values for a specified column:

```py
import pandas as pd

df = pd.read_csv('data.csv')
x = df["Calories"].mean()
df["Calories"].fillna(x, inplace = True)
print(df.to_string())

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
26        60      20201226    100       120    250.00
27        60  '2020/12/27'     92       118    241.00
28        60  '2020/12/28'    103       132    304.68
29        60  '2020/12/29'    100       132    280.00
30        60  '2020/12/30'    102       129    380.30
31        60  '2020/12/31'     92       115    243.00
>>>
```

```py
import pandas as pd

df = pd.read_csv('data.csv')

x = df["Calories"].median()

df["Calories"].fillna(x, inplace = True)

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
26        60      20201226    100       120     250.0
27        60  '2020/12/27'     92       118     241.0
28        60  '2020/12/28'    103       132     291.2
29        60  '2020/12/29'    100       132     280.0
30        60  '2020/12/30'    102       129     380.3
31        60  '2020/12/31'     92       115     243.0
>>>
```

```py
import pandas as pd

df = pd.read_csv('data.csv')

x = df["Calories"].mode()[0]

df["Calories"].fillna(x, inplace = True)

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

##### PY_MONGO

```
print(myclient.list_database_names())
print(mydb.list_collection_names())

x = mycol.insert_one(mydict) >> print(x.inserted_id)
x = mycol.insert_many(mylist) >> print(x.inserted_ids)

x = mycol.find_one()
find_all = [x for x in mycol.find()]

mydoc = mycol.find().sort("name") >> atoz = [x for x in mydoc]
mydoc = mycol.find().sort("name", -1) >> ztoa = [x for x in mydoc]

x = mycol.delete_many({}) >> print(x.deleted_count, " documents deleted.")

mycol = mydb["customers"] >> mycol.drop()

mycol.update_one(myquery, newvalues)
x = mycol.update_many(myquery, newvalues) >> print(x.modified_count, "documents updated.")

myresult = mycol.find().limit(5)
```

```py
#-----------------------------------------------------------------------------
#CREATE

#create db
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]

#check if db exists
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
print(myclient.list_database_names())

#create collection
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]

#check if collection exists
myclient = pymongo.MongoClient('mongodb://localhost:27017/')
mydb = myclient['mydatabase']
mycol = mydb["customers"]
print(mydb.list_collection_names())

#-----------------------------------------------------------------------------
#INSERT

#insert into collection
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
mydict = { "name": "John", "address": "Highway 37" }
x = mycol.insert_one(mydict)

#return the id field
myclient = pymongo.MongoClient('mongodb://localhost:27017/')
mydb = myclient['mydatabase']
mycol = mydb["customers"]
mydict = { "name": "Peter", "address": "Lowstreet 27" }
x = mycol.insert_one(mydict)
print(x.inserted_id)

#insert multiple docu
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
mylist = [
  { "name": "Amy", "address": "Apple st 652"},
  { "name": "Hannah", "address": "Mountain 21"},
  { "name": "Michael", "address": "Valley 345"}
]
x = mycol.insert_many(mylist)
print(x.inserted_ids)

#insert multiple docu with special ids
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
mylist = [
  { "_id": 1, "name": "John", "address": "Highway 37"},
  { "_id": 2, "name": "Peter", "address": "Lowstreet 27"},
  { "_id": 3, "name": "Amy", "address": "Apple st 652"}
]
x = mycol.insert_many(mylist)
print(x.inserted_ids)

#-----------------------------------------------------------------------------
# FIND

#Find the first document in the customers collection
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
x = mycol.find_one()
print(x)

#Return all documents in the "customers" collection
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
for x in mycol.find():
  print(x)

#Return only the names and addresses
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
for x in mycol.find({},{ "_id": 0, "name": 1, "address": 1 }):
  print(x)

#exclude "address" from the result
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
for x in mycol.find({},{ "address": 0 }):
  print(x)

#Find document(s) with the address "Park Lane 38"
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
myquery = { "address": "Park Lane 38" }
mydoc = mycol.find(myquery)
for x in mydoc:
  print(x)

#Find documents where the address starts with the letter "S" or higher
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
myquery = { "address": { "$gt": "S" } }
mydoc = mycol.find(myquery)
for x in mydoc:
  print(x)

#Find documents where the address starts with the letter "S"
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
myquery = { "address": { "$regex": "^S" } }
mydoc = mycol.find(myquery)
for x in mydoc:
  print(x)

#-----------------------------------------------------------------------------
#SORT

#Sort the result alphabetically by name
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
mydoc = mycol.find().sort("name")
for x in mydoc:
  print(x)

#Sort the result reverse alphabetically by name
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
mydoc = mycol.find().sort("name", -1)
for x in mydoc:
  print(x)

#-----------------------------------------------------------------------------
#DELETE

#Delete the document with the address "Mountain 21"
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
myquery = { "address": "Mountain 21" }
mycol.delete_one(myquery)

#Delete all documents were the address starts with the letter S
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
myquery = { "address": {"$regex": "^S"} }
x = mycol.delete_many(myquery)
print(x.deleted_count, " documents deleted.")

#Delete all documents in the "customers" collection
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
x = mycol.delete_many({})
print(x.deleted_count, " documents deleted.")

#-----------------------------------------------------------------------------
#DROP COLLECTION

#Delete the "customers" collection
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
mycol.drop()

#-----------------------------------------------------------------------------
#UPDATE

#Change the address from "Valley 345" to "Canyon 123"
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
myquery = { "address": "Valley 345" }
newvalues = { "$set": { "address": "Canyon 123" } }
mycol.update_one(myquery, newvalues)
for x in mycol.find():
  print(x)

#Update all documents where the address starts with the letter "S"
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
myquery = { "address": { "$regex": "^S" } }
newvalues = { "$set": { "name": "Minnie" } }
x = mycol.update_many(myquery, newvalues)
print(x.modified_count, "documents updated.")

#-----------------------------------------------------------------------------
#LIMIT

#Limit the result to only return 5 documents
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]
myresult = mycol.find().limit(5)
for x in myresult:
  print(x)
```

##### SPARK

```py
#reading csv with spark
df_pyspark = spark.read.csv('test1.csv')

#type of the dataframe
df_pyspark = spark.read.option('header', 'true').csv('test1.csv')
type(df_pyspark)

#check the schema
df_pyspark.printSchema()

#check the columns
df_pyspark.columns

#pickup only one column
df_pyspark.select('Name')

#pickup more columns
df_pyspark.select(['Name', 'Age'])

#checking datatypes
df_pyspark.dtypes

#checking describe option
df_pyspark.describe()

#adding column into a DF
df_pyspark.withColumn('Age After 2 years',df_pyspark['Age']+2)

#drop column
df_pyspark.drop('Age After 2 years')

#rename column
df_pyspark.withColumnRenamed('Name','New Name')

#dropping all null values
df_pyspark.na.drop()

#drop with threshold
df_pyspark.na.drop(how='any',thresh=2)

# drop with subset
df_pyspark.na.drop(how='any',subset=['age'])

#filling the missing value
from pyspark.ml.feature import Imputer
imputer = Imputer(
    inputCols = 'age',
    outputCols = ["{}_imputed".format(c) for c in 'age']).setStrategy("mean")

#salary of the people less than 1999
df_pyspark.filter("Salary<=1999")

#salary of the people less than 1999 only name and age
df_pyspark.filter("Salary<=1999").select(['name', 'age'])

#salary of the people less than 1999
df_pyspark.filter(df_pyspark["Salary"]<=1999)

#salary between
df_pyspark.filter((df_pyspark["Salary"]<=1999) & (df_pyspark["Salary"]>=1000))

#salary of the people everything above 1999
df_pyspark.filter(~(df_pyspark["Salary"]<=1999))

#grouped to find the maximum salary
df_pyspark.groupby('Name').max()

#groupby departments which gives maxmium salary
df_pyspark.groupby('Departments').max()

#groupby departments which gives mean salary
df_pyspark.groupby('Departments').mean()

#how many employer working in the department
df_pyspark.groupby('Departments').count()
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
