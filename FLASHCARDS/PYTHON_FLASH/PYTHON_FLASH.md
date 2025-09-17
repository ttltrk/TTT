
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md)

---

### PYTHON_FLASH

---

* [COMMENTS](#COMMENTS)
* [SINGLE_LINE_COMMENTS](#SINGLE_LINE_COMMENTS)
* [MULTI_LINE_COMMENTS](#MULTI_LINE_COMMENTS)

---

* [VARIABLES](#VARIABLES)
* [CREATING_VARIABLES](#CREATING_VARIABLES)
* [CASTING_VARIABLES](#CASTING_VARIABLES)
* [GET_THE_TYPE_VARIABLES](#GET_THE_TYPE_VARIABLES)
* [SINGLE_DOUBLE_QUOTES_VARIABLES](#SINGLE_DOUBLE_QUOTES_VARIABLES)
* [CASE_SENSITIVE_VARIABLES](#CASE_SENSITIVE_VARIABLES)
* [CAMEL_CASE_VARIABLES](#CAMEL_CASE_VARIABLES)
* [PASCAL_CASE_VARIABLES](#PASCAL_CASE_VARIABLES)
* [SNAKE_CASE_VARIABLES](#SNAKE_CASE_VARIABLES)
* [MANY_VALUES_MULTI_VARIABLES](#MANY_VALUES_MULTI_VARIABLES)
* [ONE_VALUE_MULTI_VARIABLES](#ONE_VALUE_MULTI_VARIABLES)
* [UNPACK_A_COLLECTION](#UNPACK_A_COLLECTION)
* [OUTPUT_VARIABLES](#OUTPUT_VARIABLES)
* [GLOBAL_VARIABLES](#GLOBAL_VARIABLES)
* [GLOBAL_KEYWORDS](#GLOBAL_KEYWORDS)    

---

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

---

* [LIST_METH](#LIST_METH)
* [DICT_METH](#DICT_METH)
* [TUPLE_METH](#TUPLE_METH)
* [SET_METH](#SET_METH)

---

* [ENUMERATE](#ENUMERATE)
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
* [](#)
* [XML](#XML)
* [](#)


---

* [NUMPY](#NUMPY)
* [NP_ARRAY](#NP_ARRAY)
* [NP_NUMBER_OF_DIMENSIONS](#NP_NUMBER_OF_DIMENSIONS)
* [NP_ACCESS_ARRAY_ELEMENTS](#NP_ACCESS_ARRAY_ELEMENTS)
* [NP_ACCESS_2D_ARRAYS](#NP_ACCESS_2D_ARRAYS)
* [NP_ACCESS_3D_ARRAYS](#NP_ACCESS_3D_ARRAYS)
* [NP_NEGATIVE_INDEXING](#NP_NEGATIVE_INDEXING)
* [NP_SLICING_ARRAYS](#NP_SLICING_ARRAYS)

---

* [PANDAS](#PANDAS)
* [PD_SERIES](#PD_SERIES)
* [PD_SERIES_LABELS](#PD_SERIES_LABELS)
* [PD_SERIES_DICT](#PD_SERIES_DICT)
* [PD_SERIES_DICT_LABELS](#PD_SERIES_DICT_LABELS)
* [PD_DATAFRAME](#PD_DATAFRAME)
* [PD_INDEXES](#PD_INDEXES)
* [PD_LOC_INDEXES](#PD_LOC_INDEXES)
* [PD_LOAD_FILES_INTO_DF](#PD_LOAD_FILES_INTO_DF)
* [PD_MAX_ROWS](#PD_MAX_ROWS)
* [PD_READ_JSON](#PD_READ_JSON)
* [PD_DICT_AS_JSON](#PD_DICT_AS_JSON)
* [PD_ANALYZING_DATA](#PD_ANALYZING_DATA)
* [PD_CLEANING_DATA](#PD_CLEANING_DATA)
* [PD_CLEANING_EMPTY_CELLS](#PD_CLEANING_EMPTY_CELLS)
* [PD_REPLACE_EMPTY_CELLS](#PD_REPLACE_EMPTY_CELLS)

---

* [MATPLOTLIB](#MATPLOTLIB)

---

* [SCIPY](#SCIPY)
* [SP_CONSTANTS](#SP_CONSTANTS)

---

* [PY_MONGO](#PY_MONGO)

---

* [SPARK](#SPARK)

---

* [MACHINE_LEARNING](#MACHINE_LEARNING)
* [ML_ME_ME_MO](#ML_ME_ME_MO)
* [ML_STD_DEV](#ML_STD_DEV)
* [ML_PERCENTILES](#ML_PERCENTILES)
* [ML_DATA_DISTRIB](#ML_DATA_DISTRIB)
* [ML_NORM_DATA_DISTRIB](#ML_NORM_DATA_DISTRIB)
* [ML_SCATTER_PLOT](#ML_SCATTER_PLOT)
* [ML_LINEAR_REGRESSION](#ML_LINEAR_REGRESSION)
* [R_FOR_RELATIONSHIP](#R_FOR_RELATIONSHIP)
* [PRDEICT_FUTURE_VAL](#PRDEICT_FUTURE_VAL)
* [](#)
* [](#)

---

* [DATA_SCIENCE](#DATA_SCIENCE)
* [DATA](#DATA)
* [DB_TABLE](#DB_TABLE)
* [PY_LIBRARIES](#PY_LIBRARIES)
* [DF_PANDAS](#DF_PANDAS)
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

[^^^](#PYTHON_FLASH)

---

##### SINGLE_LINE_COMMENTS

```py
#This is a comment
print("Hello, World!")

>>>
Hello, World!
>>>
```

[^^^](#PYTHON_FLASH)

---

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

```
Variables are containers for storing data values.
```

[^^^](#PYTHON_FLASH)

---

#### CREATING_VARIABLES

```py
x = 5
y = "John"

print(x)
print(y)

>>>
5
John
>>>
```

[^^^](#PYTHON_FLASH)

---

#### CASTING_VARIABLES

```py
x = str(3)    # x will be '3'
y = int(3)    # y will be 3
z = float(3)  # z will be 3.0

print(x)
print(y)
print(z)  

>>>
3
3
3.0
>>>
```

[^^^](#PYTHON_FLASH)

---

#### GET_THE_TYPE_VARIABLES

```py
x = 5
y = "John"

print(type(x))
print(type(y))

>>>
<class 'int'>
<class 'str'>
>>>
```

[^^^](#PYTHON_FLASH)

---

#### SINGLE_DOUBLE_QUOTES_VARIABLES

```py
x = "John"
y = 'John'

print(x, y)

>>>
John John
>>>
```

[^^^](#PYTHON_FLASH)

---

#### CASE_SENSITIVE_VARIABLES

```py
a = 4
A = "Sally"

print(a, A)

>>>
4 Sally
>>>
```

[^^^](#PYTHON_FLASH)

---

#### CAMEL_CASE_VARIABLES

```py
myVariableName = "John"
```

[^^^](#PYTHON_FLASH)

---

#### PASCAL_CASE_VARIABLES

```py
MyVariableName = "John"
```

[^^^](#PYTHON_FLASH)

---

#### SNAKE_CASE_VARIABLES

```py
my_variable_name = "John"
```

[^^^](#PYTHON_FLASH)

---

#### MANY_VALUES_MULTI_VARIABLES

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

#### ONE_VALUE_MULTI_VARIABLES

```py
x = y = z = "Orange"

print(x)
print(y)
print(z)

>>>
Orange
Orange
Orange
>>>
```

[^^^](#PYTHON_FLASH)

---

#### UNPACK_A_COLLECTION

```py
fruits = ["apple", "banana", "cherry"]
x, y, z = fruits

print(x)
print(y)
print(z)

>>>
apple
banana
cherry
>>>
```

[^^^](#PYTHON_FLASH)

---

#### OUTPUT_VARIABLES

```py
x = "Python"
y = "is"
z = "awesome"

print(x, y, z)
print(x + y + z)

>>>
Python is awesome
Pythonisawesome
>>>
```

[^^^](#PYTHON_FLASH)

---

#### GLOBAL_VARIABLES

```py
x = "awesome"

def myfunc():
  print("Python is " + x)

myfunc()

>>>
Python is awesome
>>>
```

```py
x = "awesome"

def myfunc():
  x = "fantastic"
  print("Python is " + x)

myfunc()

>>>
Python is fantastic
>>>
```

```py
x = "awesome"

def myfunc():
  x = "fantastic"
  print("Python is " + x)

myfunc()

print("Python is " + x)

>>>
Python is fantastic
Python is awesome
>>>
```

[^^^](#PYTHON_FLASH)

---

#### GLOBAL_KEYWORDS

```py
def myfunc():
  global x
  x = "fantastic"

myfunc()

print("Python is " + x)

>>>
Python is fantastic
>>>
```

```py
x = "awesome"

def myfunc():
  global x
  x = "fantastic"

myfunc()

print("Python is " + x)

>>>
Python is fantastic
>>>
```

[^^^](#PYTHON_FLASH)

---

####

```py

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

#### LIST_METH

```py

----------------------------------------------------------------

#append()
#Adds an element at the end of the list
fruits = ['apple', 'banana', 'cherry']
fruits.append("orange") #['apple', 'banana', 'cherry', 'orange']

----------------------------------------------------------------

#clear()
#Removes all the elements from the list
fruits = ['apple', 'banana', 'cherry', 'orange']
fruits.clear() #[]

----------------------------------------------------------------

#copy()
#Returns a copy of the list
fruits = ['apple', 'banana', 'cherry', 'orange']
x = fruits.copy()
print(x) #['apple', 'banana', 'cherry']

----------------------------------------------------------------

#count()
#Returns the number of elements with the specified value
fruits = ["apple", "banana", "cherry", "cherry"]
x = fruits.count("cherry") #2

----------------------------------------------------------------

#extend()
#Add the elements of a list (or any iterable), to the end of the current list
fruits = ['apple', 'banana', 'cherry']
cars = ['Ford', 'BMW', 'Volvo']
fruits.extend(cars) #['apple', 'banana', 'cherry', 'Ford', 'BMW', 'Volvo']

----------------------------------------------------------------

#index()
#Returns the index of the first element with the specified value
fruits = ['apple', 'banana', 'cherry']
x = fruits.index("cherry") #2

----------------------------------------------------------------

#insert()
#Adds an element at the specified position
fruits = ['apple', 'banana', 'cherry']
fruits.insert(1, "orange") #['apple', 'orange', 'banana', 'cherry']

----------------------------------------------------------------

#pop()
#Removes the element at the specified position
fruits = ['apple', 'banana', 'cherry']
fruits.pop(1) #['apple', 'cherry']

----------------------------------------------------------------

#remove()
#Removes the item with the specified value
fruits = ['apple', 'banana', 'cherry']
fruits.remove("banana") #['apple', 'cherry']

----------------------------------------------------------------

#reverse()
#Reverses the order of the list
fruits = ['apple', 'banana', 'cherry']
fruits.reverse() #['cherry', 'banana', 'apple']

----------------------------------------------------------------

#sort()
#Sorts the list
cars = ['Ford', 'BMW', 'Volvo']
cars.sort() #['BMW', 'Ford', 'Volvo']

----------------------------------------------------------------

```

[^^^](#PYTHON_FLASH)

---

#### DICT_METH

```py

----------------------------------------------------------------

#clear()
#Removes all the elements from the dictionary
car =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
car.clear() # {}

----------------------------------------------------------------

#copy()
#Returns a copy of the dictionary
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
x = car.copy() #{'brand': 'Ford', 'model': 'Mustang', 'year': 1964}

----------------------------------------------------------------

#fromkeys()
#Returns a dictionary with the specified keys and value
x = ('key1', 'key2', 'key3')
y = 33
thisdict = dict.fromkeys(x, y) #{'key1': 33, 'key2': 33, 'key3': 33}

----------------------------------------------------------------

#get()
#Returns the value of the specified key
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
x = car.get("model") #Mustang

----------------------------------------------------------------

#items()
#Returns a list containing a tuple for each key value pair
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
x = car.items() #dict_items([('brand', 'Ford'), ('model', 'Mustang'), ('year', 1964)])

----------------------------------------------------------------

#keys()
#Returns a list containing the dictionary's keys
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
x = car.keys() #dict_keys(['brand', 'model', 'year'])

----------------------------------------------------------------

#pop()
#Removes the element with the specified key
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
car.pop("model") #{'brand': 'Ford', 'year': 1964}

----------------------------------------------------------------

#popitem()
#Removes the last inserted key-value pair
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
car.popitem() #{'brand': 'Ford', 'model': 'Mustang'}

----------------------------------------------------------------

#setdefault()
#Returns the value of the specified key. If the key does not exist: insert the key, with the specified value
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
x = car.setdefault("model", "Bronco") #Mustang

----------------------------------------------------------------

#update()
#Updates the dictionary with the specified key-value pairs
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
car.update({"color": "White"}) #{'brand': 'Ford', 'model': 'Mustang', 'year': 1964, 'color': 'White'}

----------------------------------------------------------------

#values()
#Returns a list of all the values in the dictionary
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
x = car.values() #dict_values(['Ford', 'Mustang', 1964])

----------------------------------------------------------------

```

[^^^](#PYTHON_FLASH)

---

#### TUPLE_METH

```py

----------------------------------------------------------------

#count()
#Returns the number of times a specified value occurs in a tuple
thistuple = (1, 3, 7, 8, 7, 5, 4, 6, 8, 5)
x = thistuple.count(5) #2

----------------------------------------------------------------

#index()
#Searches the tuple for a specified value and returns the position of where it was found
thistuple = (1, 3, 7, 8, 7, 5, 4, 6, 8, 5)
x = thistuple.index(8) #3

----------------------------------------------------------------

```

[^^^](#PYTHON_FLASH)

---

#### SET_METH

Set items are unchangeable, but you can remove items and add new items.

```py

----------------------------------------------------------------

#add()
#Adds an element to the set
thisset = {"apple", "banana", "cherry"}
thisset.add("orange") # {'cherry', 'banana', 'apple', 'orange'}

----------------------------------------------------------------

#clear()
#Removes all the elements from the set
thisset = {"apple", "banana", "cherry"}
thisset.clear() # set()

----------------------------------------------------------------

#copy()
#Returns a copy of the set
fruits = {"apple", "banana", "cherry"}
x = fruits.copy() # {'apple', 'banana', 'cherry'}

----------------------------------------------------------------

#difference()
#Returns a set containing the difference between two or more sets
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}
z = x.difference(y) # {'cherry', 'banana'}

----------------------------------------------------------------

#difference_update()
#Removes the items in this set that are also included in another, specified set
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}
x.difference_update(y) # {'banana', 'cherry'}

----------------------------------------------------------------

#discard()
#Remove the specified item
thisset = {"apple", "banana", "cherry"}
thisset.discard("banana") #{'apple', 'cherry'}

----------------------------------------------------------------

#intersection()
#Returns a set, that is the intersection of two or more sets
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}
z = x.intersection(y) # {'apple'}

----------------------------------------------------------------

#intersection_update()
#Removes the items in this set that are not present in other, specified set(s)
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}
x.intersection_update(y) # {'apple'}

----------------------------------------------------------------

#isdisjoint()
#Returns whether two sets have a intersection or not
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "facebook"}
z = x.isdisjoint(y) # True

----------------------------------------------------------------

#issubset()
#Returns whether another set contains this set or not
x = {"a", "b", "c"}
y = {"f", "e", "d", "c", "b", "a"}
z = x.issubset(y) # True

----------------------------------------------------------------

#issuperset()
#Returns whether this set contains another set or not
x = {"f", "e", "d", "c", "b", "a"}
y = {"a", "b", "c"}
z = x.issuperset(y) # True

----------------------------------------------------------------

#pop()
#Removes an element from the set
fruits = {"apple", "banana", "cherry"}
fruits.pop() # {'banana', 'apple'}

----------------------------------------------------------------

#remove()
#Removes the specified element
fruits = {"apple", "banana", "cherry"}
fruits.remove("banana") # {'cherry', 'apple'}

----------------------------------------------------------------

#symmetric_difference()
#Returns a set with the symmetric differences of two sets
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}
z = x.symmetric_difference(y) # {'google', 'microsoft', 'banana', 'cherry'}

----------------------------------------------------------------

#symmetric_difference_update()
#inserts the symmetric differences from this set and another
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}
x.symmetric_difference_update(y) # {'cherry', 'google', 'banana', 'microsoft'}

----------------------------------------------------------------

#union()
#Return a set containing the union of sets
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}
z = x.union(y) # {'banana', 'apple', 'microsoft', 'google', 'cherry'}

----------------------------------------------------------------

#update()
#Update the set with another set, or any other iterable
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}
x.update(y) # {'apple', 'cherry', 'google', 'microsoft', 'banana'}

----------------------------------------------------------------

```

[^^^](#PYTHON_FLASH)

---

#### ENUMERATE

The ```enumerate()``` function takes a collection (e.g. a tuple) and returns it as an enumerate object. The ```enumerate()``` function adds a counter as the key of the enumerate object.

```py
# Python program to illustrate
# enumerate function in loops
l1 = ["eat", "sleep", "repeat", "eat"]

# printing the tuples in object directly
for ele in enumerate(l1):
    print(ele)

print(' ')

# changing index and printing separately
for count, ele in enumerate(l1, 100):
    print(count, ele)

print(' ')

    # getting desired output from tuple
for count, ele in enumerate(l1):
    print(count)
    print(ele)

>>>
(0, 'eat')
(1, 'sleep')
(2, 'repeat')
(3, 'eat')

100 eat
101 sleep
102 repeat
103 eat

0
eat
1
sleep
2
repeat
3
eat
>>>
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

#### 

[^^^](#PYTHON_FLASH)

---

#### XML

- how to create two xml files - [source](https://www.tutorialspoint.com/create-xml-documents-using-python)

```py
import xml.etree.ElementTree as ET

# ----------------------------------------------------------------

root = ET.Element('root')

person = ET.SubElement(root, 'person')
name = ET.SubElement(person, 'name')
age = ET.SubElement(person, 'age')

name.text = 'John Doe'
age.text = '30'

tree = ET.ElementTree(root)
tree.write('person.xml')

# ----------------------------------------------------------------

root = ET.Element('order')

customer = ET.SubElement(root, 'customer', name='John Doe', address='123 Main St')
order = ET.SubElement(root, 'order', date='2020-01-01', id='12345')

# ----------------------------------------------------------------

items = ET.SubElement(order, 'items')

item1 = ET.SubElement(items, 'item', code='A100', description='Product A', quantity='5')
item2 = ET.SubElement(items, 'item', code='B200', description='Product B', quantity='10')

tree = ET.ElementTree(root)
tree.write('order.xml')

# ----------------------------------------------------------------
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

##### What is NumPy?

NumPy is a Python library used for working with arrays.
It also has functions for working in domain of linear algebra, fourier transform, and matrices.
NumPy was created in 2005 by Travis Oliphant. It is an open source project and you can use it freely.
NumPy stands for Numerical Python.

##### Why Use NumPy?

In Python we have lists that serve the purpose of arrays, but they are slow to process.
NumPy aims to provide an array object that is up to 50x faster than traditional Python lists.
The array object in NumPy is called ndarray, it provides a lot of supporting functions that make working with ndarray very easy.
Arrays are very frequently used in data science, where speed and resources are very important.

##### Why is NumPy Faster Than Lists?

NumPy arrays are stored at one continuous place in memory unlike lists, so processes can access and manipulate them very efficiently.
This behavior is called locality of reference in computer science.
This is the main reason why NumPy is faster than lists. Also it is optimized to work with latest CPU architectures.

[^^^](#PYTHON_FLASH)

---

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

##### NP_NUMBER_OF_DIMENSIONS

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

[^^^](#PYTHON_FLASH)

---

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

#### NP_ACCESS_ARRAY_ELEMENTS

Array indexing is the same as accessing an array element.
You can access an array element by referring to its index number.
The indexes in NumPy arrays start with 0, meaning that the first element has index 0, and the second has index 1 etc

```py
import numpy as np

arr = np.array([1, 2, 3, 4])

print(arr[0])

>>>
1
>>>
```

```py
import numpy as np

arr = np.array([1, 2, 3, 4])

print(arr[1])

>>>
2
>>>
```

```py
import numpy as np

arr = np.array([1, 2, 3, 4])

print(arr[2] + arr[3])

>>>
7
>>>
```

[^^^](#PYTHON_FLASH)

---

#### NP_ACCESS_2D_ARRAYS

To access elements from 2-D arrays we can use comma separated integers representing the dimension and the index of the element.
Think of 2-D arrays like a table with rows and columns, where the dimension represents the row and the index represents the column.

```py
import numpy as np

arr = np.array([[1,2,3,4,5], [6,7,8,9,10]])

print('2nd element on 1st row: ', arr[0, 1])

>>>
2nd element on 1st row:  2 
>>>
```

```py
import numpy as np

arr = np.array([[1,2,3,4,5], [6,7,8,9,10]])

print('5th element on 2nd row: ', arr[1, 4])

>>>
5th element on 2nd row:  10
>>>
```

[^^^](#PYTHON_FLASH)

---

#### NP_ACCESS_3D_ARRAYS

To access elements from 3-D arrays we can use comma separated integers representing the dimensions and the index of the element.

```py
import numpy as np

# --------------------------------------------------------------

arr = np.array([[[1, 2, 3], [4, 5, 6]], [[7, 8, 9], [10, 11, 12]]])

print(arr[0, 1, 2])
print(arr[1, 1, 1])

>>>
6
11
>>>
```

[^^^](#PYTHON_FLASH)

---

#### NP_NEGATIVE_INDEXING

Use negative indexing to access an array from the end.

```py
import numpy as np

arr = np.array([[1,2,3,4,5], [6,7,8,9,10]])

print('Last element from 2nd dim: ', arr[1, -1])
print('Last element from 1st dim: ', arr[0, -1])

>>>
Last element from 2nd dim:  10
Last element from 1st dim:  5
>>>
```

[^^^](#PYTHON_FLASH)

---

#### NP_SLICING_ARRAYS

Slicing in python means taking elements from one given index to another given index.
We pass slice instead of index like this: ```[start:end]```.
We can also define the step, like this: ```[start:end:step]```.

```py
import numpy as np

# --------------------------------------------------------------

arr = np.array([1, 2, 3, 4, 5, 6, 7])

print(arr[1:5], '\n')

# --------------------------------------------------------------

arr = np.array([1, 2, 3, 4, 5, 6, 7])

print(arr[4:], '\n')

# --------------------------------------------------------------

arr = np.array([1, 2, 3, 4, 5, 6, 7])

print(arr[:4], '\n')

>>>
[2 3 4 5] 

[5 6 7] 

[1 2 3 4] 
>>>
```

- Negative slicing

```py
import numpy as np

arr = np.array([1, 2, 3, 4, 5, 6, 7])

print(arr[-3:-1])

>>>
[5 6]
>>>
```

- Use step

```py
import numpy as np

arr = np.array([1, 2, 3, 4, 5, 6, 7])

print(arr[1:5:2])

>>>
[2 4]
>>>
```

[^^^](#PYTHON_FLASH)

---

####

[^^^](#PYTHON_FLASH)

---

####

[^^^](#PYTHON_FLASH)

---

#### PANDAS

What is Pandas?

- Pandas is a Python library used for working with data sets.
- It has functions for analyzing, cleaning, exploring, and manipulating data.
- The name "Pandas" has a reference to both "Panel Data", and "Python Data Analysis" and was created by Wes McKinney in 2008.

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

[^^^](#PYTHON_FLASH)

---

#### PD_SERIES

What is a Series?

- A Pandas Series is like a column in a table.
- It is a one-dimensional array holding data of any type.

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

[^^^](#PYTHON_FLASH)

---

#### PD_SERIES_LABELS

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

[^^^](#PYTHON_FLASH)

---

#### PD_SERIES_DICT

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

[^^^](#PYTHON_FLASH)

---

#### PD_SERIES_DICT_LABELS

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

[^^^](#PYTHON_FLASH)

---

#### PD_DATAFRAME

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

[^^^](#PYTHON_FLASH)

---

#### PD_INDEXES

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

[^^^](#PYTHON_FLASH)

---

#### PD_LOC_INDEXES

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

#### PD_LOAD_FILES_INTO_DF

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

[^^^](#PYTHON_FLASH)

---

#### PD_MAX_ROWS

The number of rows returned is defined in Pandas option settings.

```py
import pandas as pd

print(pd.options.display.max_rows)

>>>
60
>>>
```

[^^^](#PYTHON_FLASH)

---

#### PD_READ_JSON

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

[^^^](#PYTHON_FLASH)

---

#### PD_DICT_AS_JSON

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

#### PD_ANALYZING_DATA

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

[^^^](#PYTHON_FLASH)

---

#### PD_CLEANING_DATA

Data cleaning means fixing bad data in your data set.

Bad data could be:

- Empty cells
- Data in wrong format
- Wrong data
- Duplicates

[^^^](#PYTHON_FLASH)

---

#### PD_CLEANING_EMPTY_CELLS

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

[^^^](#PYTHON_FLASH)

---

#### PD_REPLACE_EMPTY_CELLS

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

[^^^](#PYTHON_FLASH)

---

#### SCIPY

- What is SciPy?

SciPy is a scientific computation library that uses NumPy underneath.
SciPy stands for Scientific Python.
It provides more utility functions for optimization, stats and signal processing.
Like NumPy, SciPy is open source so we can use it freely.

[^^^](#PYTHON_FLASH)

---

#### SP_CONSTANTS

```py
from scipy import constants

print(constants.pi)

>>>
3.141592653589793
>>>
```

- Constant Units

A list of all units under the constants module can be seen using the ```dir()``` function.

```py
['Avogadro', 'Boltzmann', 'Btu', 'Btu_IT', 'Btu_th', 'ConstantWarning', 'G', 'Julian_year', 'N_A', 'Planck', 'R', 'Rydberg', 'Stefan_Boltzmann', 'Wien', '__all__', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__path__', '__spec__', '_codata', '_constants', '_obsolete_constants', 'acre', 'alpha', 'angstrom', 'arcmin', 'arcminute', 'arcsec', 'arcsecond', 'astronomical_unit', 'atm', 'atmosphere', 'atomic_mass', 'atto', 'au', 'bar', 'barrel', 'bbl', 'blob', 'c', 'calorie', 'calorie_IT', 'calorie_th', 'carat', 'centi', 'codata', 'constants', 'convert_temperature', 'day', 'deci', 'degree', 'degree_Fahrenheit', 'deka', 'dyn', 'dyne', 'e', 'eV', 'electron_mass', 'electron_volt', 'elementary_charge', 'epsilon_0', 'erg', 'exa', 'exbi', 'femto', 'fermi', 'find', 'fine_structure', 'fluid_ounce', 'fluid_ounce_US', 'fluid_ounce_imp', 'foot', 'g', 'gallon', 'gallon_US', 'gallon_imp', 'gas_constant', 'gibi', 'giga', 'golden', 'golden_ratio', 'grain', 'gram', 'gravitational_constant', 'h', 'hbar', 'hectare', 'hecto', 'horsepower', 'hour', 'hp', 'inch', 'k', 'kgf', 'kibi', 'kilo', 'kilogram_force', 'kmh', 'knot', 'lambda2nu', 'lb', 'lbf', 'light_year', 'liter', 'litre', 'long_ton', 'm_e', 'm_n', 'm_p', 'm_u', 'mach', 'mebi', 'mega', 'metric_ton', 'micro', 'micron', 'mil', 'mile', 'milli', 'minute', 'mmHg', 'mph', 'mu_0', 'nano', 'nautical_mile', 'neutron_mass', 'nu2lambda', 'ounce', 'oz', 'parsec', 'pebi', 'peta', 'physical_constants', 'pi', 'pico', 'point', 'pound', 'pound_force', 'precision', 'proton_mass', 'psi', 'pt', 'quecto', 'quetta', 'ronna', 'ronto', 'short_ton', 'sigma', 'slinch', 'slug', 'speed_of_light', 'speed_of_sound', 'stone', 'survey_foot', 'survey_mile', 'tebi', 'tera', 'test', 'ton_TNT', 'torr', 'troy_ounce', 'troy_pound', 'u', 'unit', 'value', 'week', 'yard', 'year', 'yobi', 'yocto', 'yotta', 'zebi', 'zepto', 'zero_Celsius', 'zetta']

```

[^^^](#PYTHON_FLASH)

---

[^^^](#PYTHON_FLASH)

---

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

---

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

---

##### MACHINE_LEARNING

```py
#mean
numpy.mean(name_of_the_list)

#median
numpy.median(name_of_the_list)

#mode
from scipy import stats
stats.mode(name_of_the_list)

#std deviation
numpy.std(name_of_the_list)

#percentile
numpy.percentile(name_of_the_list, 75)

#data distribution
numpy.random.uniform(0.0, 5.0, 250)

#normal data distribution
numpy.random.normal(5.0, 1.0, 100000)
```

Machine Learning is making the computer learn from studying data and statistics.
Machine Learning is a step into the direction of artificial intelligence (AI).
Machine Learning is a program that analyses data and learns to predict the outcome.

- Data Set

In the mind of a computer, a data set is any collection of data. It can be anything from an array to a complete database.

- Data Types

```

-----------------------------------------------------------------------------

- Numerical
- Categorical
- Ordinal

-----------------------------------------------------------------------------

Numerical data are numbers, and can be split into two numerical categories:

Discrete Data
- counted data that are limited to integers.
Example: The number of cars passing by.
Continuous Data
- measured data that can be any number.
Example: The price of an item, or the size of an item

-----------------------------------------------------------------------------

Categorical data are values that cannot be measured up against each other.
Example: a color value, or any yes/no values.

-----------------------------------------------------------------------------

Ordinal data are like categorical data, but can be measured up against each other.
Example: school grades where A is better than B and so on.

-----------------------------------------------------------------------------

```

[^^^](#PYTHON_FLASH)

---

#### ML_ME_ME_MO

- Mean

The mean value is the average value.
To calculate the mean, find the sum of all values, and divide the sum by the number of values:

```
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

- Median

The median value is the value in the middle, after you have sorted all the values:

```
77, 78, 85, 86, 86, 86, 87, 87, 88, 94, 99, 103, 111

Median = 87
```

```py
import numpy
speed = [99,86,87,88,111,86,103,87,94,78,77,85,86]
x = numpy.median(speed)
print(x)
>>>
87
>>>
```

If there are two numbers in the middle, divide the sum of those numbers by two.

```
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

- Mode

The Mode value is the value that appears the most number of times:

```
99, 86, 87, 88, 111, 86, 103, 87, 94, 78, 77, 85, 86
86 = 3x
```

Use the SciPy mode() method to find the number that appears the most:

```py
from scipy import stats
speed = [99,86,87,88,111,86,103,87,94,78,77,85,86]
x = stats.mode(speed)
print(x)
>>>
ModeResult(mode=array([86]), count=array([3]))
>>>
```

[^^^](#PYTHON_FLASH)

---

#### ML_STD_DEV

Standard deviation is a number that describes how spread out the values are.
A low standard deviation means that most of the numbers are close to the mean (average) value.
A high standard deviation means that the values are spread out over a wider range.

```py
l = [32,111,138,28,59,77,97]
```

1. Find the mean (avg):

```
(32+111+138+28+59+77+97) / 7 = 77.4
```

2. For each value: find the difference from the mean:

```
 32 - 77.4 = -45.4
111 - 77.4 =  33.6
138 - 77.4 =  60.6
 28 - 77.4 = -49.4
 59 - 77.4 = -18.4
 77 - 77.4 = - 0.4
 97 - 77.4 =  19.6

 [-45.4, 33.6, 60.6, -49.4, -18.4, -0.4, 19.6]
```

3. For each difference: find the square value:

```
(-45.4)2 = 2061.16
 (33.6)2 = 1128.96
 (60.6)2 = 3672.36
(-49.4)2 = 2440.36
(-18.4)2 =  338.56
(- 0.4)2 =    0.16
 (19.6)2 =  384.16

 [2061.16, 1128.96, 3672.36, 2440.36, 338.56, 0.16, 384.16]
```

4. The variance is the average number of these squared differences:

```
(2061.16+1128.96+3672.36+2440.36+338.56+0.16+384.16) / 7 = 1432.2
```

5. the formula to find the standard deviation is the square root of the variance:

```
√1432.25 = 37.85
```

```py
import numpy
speed = [32,111,138,28,59,77,97]
x = numpy.std(speed)
print(x)
>>>
37.8
>>>
```

```
Standard Deviation is often represented by the symbol Sigma: σ
Variance is often represented by the symbol Sigma Squared: σ2
```

[^^^](#PYTHON_FLASH)

---

#### ML_PERCENTILES

Percentiles are used in statistics to give you a number that describes the value that a given percent of the values are lower than.

```py
import numpy
ages = [2, 5, 6, 7, 8, 11, 15, 25, 27, 31, 31, 32, 36, 39, 41, 43, 48, 50, 61, 80, 82]
x = numpy.percentile(ages, 75)
print(x)
>>>
43
>>>
```

What is the 75. percentile? The answer is 43, meaning that 75% of the people are 43 or younger.

[^^^](#PYTHON_FLASH)

---

#### ML_DATA_DISTRIB

To create big data sets for testing, we use the Python module NumPy, which comes with a number of methods to create random data sets, of any size.

Create an array containing 250 random floats between 0 and 5:

```py
import numpy

x = numpy.random.uniform(0.0, 5.0, 250)

print(x)
```

To visualize the data set we can draw a histogram with the data we collected.

```py
import numpy
import matplotlib.pyplot as plt

x = numpy.random.uniform(0.0, 5.0, 250)

plt.hist(x, 5)
plt.show()
```

```
52 values are between 0 and 1
48 values are between 1 and 2
49 values are between 2 and 3
51 values are between 3 and 4
50 values are between 4 and 5
```

[^^^](#PYTHON_FLASH)

---

#### ML_NORM_DATA_DISTRIB

```py
import numpy
import matplotlib.pyplot as plt

x = numpy.random.normal(5.0, 1.0, 100000)

plt.hist(x, 100)
plt.show()
```

A normal distribution graph is also known as the bell curve because of it's characteristic shape of a bell.

[^^^](#PYTHON_FLASH)

---

#### ML_SCATTER_PLOT

A scatter plot is a diagram where each value in the data set is represented by a dot.

```py
Use the scatter() method to draw a scatter plot diagram:

import matplotlib.pyplot as plt

x = [5,7,8,7,2,17,2,9,4,11,12,9,6]
y = [99,86,87,88,111,86,103,87,94,78,77,85,86]

plt.scatter(x, y)
plt.show()
```

The x-axis represents ages, and the y-axis represents speeds.
What we can read from the diagram is that the two fastest cars were both 2 years old, and the slowest car was 12 years old.
Note: It seems that the newer the car, the faster it drives, but that could be a coincidence, after all we only registered 13 cars.

In Machine Learning the data sets can contain thousands-, or even millions, of values.
You might not have real world data when you are testing an algorithm, you might have to use randomly generated values.
As we have learned in the previous chapter, the NumPy module can help us with that!
Let us create two arrays that are both filled with 1000 random numbers from a normal data distribution.

```py
import numpy
import matplotlib.pyplot as plt

x = numpy.random.normal(5.0, 1.0, 1000)
y = numpy.random.normal(10.0, 2.0, 1000)

plt.scatter(x, y)
plt.show()
```

[^^^](#PYTHON_FLASH)

---

#### ML_LINEAR_REGRESSION

The term regression is used when you try to find the relationship between variables.
In Machine Learning, and in statistical modeling, that relationship is used to predict the outcome of future events.

Linear regression uses the relationship between the data-points to draw a straight line through all them.
This line can be used to predict future values.

```py
import matplotlib.pyplot as plt

x = [5,7,8,7,2,17,2,9,4,11,12,9,6]
y = [99,86,87,88,111,86,103,87,94,78,77,85,86]

plt.scatter(x, y)
plt.show()
```

```py
import matplotlib.pyplot as plt
from scipy import stats

x = [5,7,8,7,2,17,2,9,4,11,12,9,6]
y = [99,86,87,88,111,86,103,87,94,78,77,85,86]

slope, intercept, r, p, std_err = stats.linregress(x, y)

def myfunc(x):
  return slope * x + intercept

mymodel = list(map(myfunc, x))

plt.scatter(x, y)
plt.plot(x, mymodel)
plt.show()
```

[^^^](#PYTHON_FLASH)

---

#### R_FOR_RELATIONSHIP

It is important to know how the relationship between the values of the x-axis and the values of the y-axis is, if there are no relationship the linear regression can not be used to predict anything.
This relationship - the coefficient of correlation - is called r.
The r value ranges from -1 to 1, where 0 means no relationship, and 1 (and -1) means 100% related.
Python and the Scipy module will compute this value for you, all you have to do is feed it with the x and y values.

```py
from scipy import stats

x = [5,7,8,7,2,17,2,9,4,11,12,9,6]
y = [99,86,87,88,111,86,103,87,94,78,77,85,86]

slope, intercept, r, p, std_err = stats.linregress(x, y)

print(r)
>>>
-0.758591524376155
>>>
```

[^^^](#PYTHON_FLASH)

---

#### PRDEICT_FUTURE_VAL

Now we can use the information we have gathered to predict future values.
Example: Let us try to predict the speed of a 10 years old car.

```py
from scipy import stats

x = [5,7,8,7,2,17,2,9,4,11,12,9,6]
y = [99,86,87,88,111,86,103,87,94,78,77,85,86]

slope, intercept, r, p, std_err = stats.linregress(x, y)

def myfunc(x):
  return slope * x + intercept

speed = myfunc(10)

print(speed)

>>>
85.59308314937454
>>>
```

[^^^](#PYTHON_FLASH)

---

####

[^^^](#PYTHON_FLASH)

---

####

[^^^](#PYTHON_FLASH)

---

####

[^^^](#PYTHON_FLASH)

---

#### DATA_SCIENCE

A Data Scientist helps companies with data-driven decisions, to make their business better.

By using Data Science, companies are able to make:

- Better decisions (should we choose A or B)
- Predictive analysis (what will happen next?)
- Pattern discoveries (find pattern, or maybe hidden information in the data)

Here is how a Data Scientist works:

- 1. Ask the right questions - To understand the business problem.
- 2. Explore and collect data - From database, web logs, customer feedback, etc.
- 3. Extract the data - Transform the data to a standardized format.
- 4. Clean the data - Remove erroneous values from the data.
- 5. Find and replace missing values - Check for missing values and replace them with a suitable value (e.g. an average value).
- 6. Normalize data - Scale the values in a practical range (e.g. 140 cm is smaller than 1,8 m. However, the number 140 is larger than 1,8. - so scaling is important).
- 7. Analyze data, find patterns and make future predictions.
- 8. Represent the result - Present the result with useful insights in a way the "company" can understand.

[^^^](#PYTHON_FLASH)

---

#### DATA

Data is a collection of information.
Data can be categorized into two groups:

- Unstructured data is not organized. We must organize the data for analysis purposes.
- Structured data is organized and easier to work with.

We can use an array or a database table to structure or present data.

```py
Array = [80, 85, 90, 95, 100, 105, 110, 115, 120, 125]
print(Array)
>>>
[80, 85, 90, 95, 100, 105, 110, 115, 120, 125]
>>>
```

[^^^](#PYTHON_FLASH)

---

#### DB_TABLE

A database table is a table with structured data.
A database table consists of column(s) and row(s).

- A row is a horizontal representation of data.
- A column is a vertical representation of data.

A variable is defined as something that can be measured or counted.

[^^^](#PYTHON_FLASH)

---

#### PY_LIBRARIES

Python has libraries with large collections of mathematical functions and analytical tools.

- Pandas - This library is used for structured data operations, like import CSV files, create dataframes, and data preparation
- Numpy - This is a mathematical library. Has a powerful N-dimensional array object, linear algebra, Fourier transform, etc.
- Matplotlib - This library is used for visualization of data.
- SciPy - This library has linear algebra modules

[^^^](#PYTHON_FLASH)

---

#### DF_PANDAS

A data frame is a structured representation of data.

```py
import pandas as pd

d = {'col1': [1, 2, 3, 4, 7],
     'col2': [4, 5, 6, 9, 5],  
     'col3': [7, 8, 12, 1, 11]}

df = pd.DataFrame(data=d)

print(df)

>>>
col1  col2  col3
0     1     4     7
1     2     5     8
2     3     6    12
3     4     9     1
4     7     5    11
>>>
```

count the number of columns

```py
import pandas as pd

d = {'col1': [1, 2, 3, 4, 7], 'col2': [4, 5, 6, 9, 5], 'col3': [7, 8, 12, 1, 11]}

df = pd.DataFrame(data=d)
count_column = df.shape[1]

print("Number of columns:")
print(count_column)

>>>
Number of columns:
3
>>>
```

count the number of rows

```py
import pandas as pd

d = {'col1': [1, 2, 3, 4, 7], 'col2': [4, 5, 6, 9, 5], 'col3': [7, 8, 12, 1, 11]}

df = pd.DataFrame(data=d)
count_row = df.shape[0]

print("Number of rows:")
print(count_row)

>>>
Number of rows:
5
>>>
```

[^^^](#PYTHON_FLASH)

---

####

[^^^](#PYTHON_FLASH)

---

####

[^^^](#PYTHON_FLASH)

---
