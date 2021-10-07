
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [TUPLE](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/TUPLE/TUPLE.md)

---

### ACCESS_TUPLES

---

* [ACCES_TUPLE_ITEMS](#ACCES_TUPLE_ITEMS)
* [NEGATIV_INDEXING](#NEGATIV_INDEXING)
* [RANGE_OF_INDEXES](#RANGE_OF_INDEXES)
* [RANGE_OF_NEGATIVE_INDEXES](#RANGE_OF_NEGATIVE_INDEXES)
* [CHECK_IF_ITEM_EXISTS](#CHECK_IF_ITEM_EXISTS)

---

#### ACCES_TUPLE_ITEMS

```
You can access tuple items by referring to the index number, inside square brackets.
```

```py
thistuple = ("apple", "banana", "cherry")
print(thistuple[1])

>>>
banana
>>>
```

[^^^](#ACCESS_TUPLES)

---

#### NEGATIV_INDEXING

```
Negative indexing means start from the end.
-1 refers to the last item, -2 refers to the second last item etc.
```

```py
thistuple = ("apple", "banana", "cherry")

print(thistuple[-1])
print(thistuple[-2])

>>>
cherry
banana
>>>
```

[^^^](#ACCESS_TUPLES)

---

#### RANGE_OF_INDEXES

```
You can specify a range of indexes by specifying where to start and where to end the range.
When specifying a range, the return value will be a new tuple with the specified items.
```

```py
thistuple = ("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")
print(thistuple[2:5])

>>>
('cherry', 'orange', 'kiwi')
>>>
```

```
By leaving out the start value, the range will start at the first item.
```

```py
thistuple = ("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")
print(thistuple[:4])

>>>
('apple', 'banana', 'cherry', 'orange')
>>>
```

```
By leaving out the end value, the range will go on to the end of the list.
```

```py
thistuple = ("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")
print(thistuple[2:])

>>>
('cherry', 'orange', 'kiwi', 'melon', 'mango')
>>>
```

[^^^](#ACCESS_TUPLES)

---

#### RANGE_OF_NEGATIVE_INDEXES

```
Specify negative indexes if you want to start the search from the end of the tuple.
```

```py
thistuple = ("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")

print(thistuple[-4:-1])
print(thistuple[-4])
print(thistuple[1:4])
print(thistuple[1])

>>>
('orange', 'kiwi', 'melon')
orange
('banana', 'cherry', 'orange')
banana
>>>
```

[^^^](#ACCESS_TUPLES)

---

#### CHECK_IF_ITEM_EXISTS

```
To determine if a specified item is present in a tuple use the in keyword:
```

```py
thistuple = ("apple", "banana", "cherry")

if "apple" in thistuple:
  print("Yes, 'apple' is in the fruits tuple")

>>>
Yes, 'apple' is in the fruits tuple
>>>
```

[^^^](#ACCESS_TUPLES)

---
