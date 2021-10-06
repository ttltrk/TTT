
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [TUPLE](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/TUPLE/TUPLE.md)

---

### TUPLE_BASICS

---

* [](#)
* [](#)

---

####

```py
mytuple = ("apple", "banana", "cherry")
```

```
Tuples are used to store multiple items in a single variable.
Tuple is one of 4 built-in data types in Python used to store collections of data, the other 3 are List, Set, and Dictionary, all with different qualities and usage.
A tuple is a collection which is ordered and unchangeable.
Tuples are written with round brackets.
```

```py
thistuple = ("apple", "banana", "cherry")
print(thistuple)

>>>
('apple', 'banana', 'cherry')
>>>
```

```
Tuple items are ordered, unchangeable, and allow duplicate values.
Tuple items are indexed, the first item has index [0], the second item has index [1] etc.

When we say that tuples are ordered, it means that the items have a defined order, and that order will not change.
Tuples are unchangeable, meaning that we cannot change, add or remove items after the tuple has been created.
```

```
Since tuples are indexed, they can have items with the same value
```

```py
thistuple = ("apple", "banana", "cherry", "apple", "cherry")
print(thistuple)

>>>
('apple', 'banana', 'cherry', 'apple', 'cherry')
>>>
```

```
To determine how many items a tuple has, use the len() function:
```

```py
thistuple = ("apple", "banana", "cherry")
print(len(thistuple))

>>>
3
>>>
```

```
To create a tuple with only one item, you have to add a comma after the item, otherwise Python will not recognize it as a tuple.
```

```py
thistuple = ("apple",)
print(type(thistuple))

#NOT a tuple
thistuple = ("apple")
print(type(thistuple))

>>>
<class 'tuple'>
<class 'str'>
>>>
```

```
Tuple items can be of any data type
A tuple can contain different data types
```

```py
tuple1 = ("apple", "banana", "cherry")
tuple2 = (1, 5, 7, 9, 3)
tuple3 = (True, False, False)
tuple4 = ("abc", 34, True, 40, "male")

print(type(tuple1))
print(type(tuple2))
print(type(tuple3))
print(type(tuple4))

>>>
<class 'tuple'>
<class 'tuple'>
<class 'tuple'>
<class 'tuple'>
>>>
```

[^^^](#TUPLE_BASICS)

---
