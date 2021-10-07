
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [TUPLE](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/TUPLE/TUPLE.md)

---

### ACCESS_TUPLES

---

* [ACCES_TUPLE_ITEMS](#ACCES_TUPLE_ITEMS)
* [NEGATIV_INDEXING](#NEGATIV_INDEXING)
* [RANGE_OF_INDEXES](#RANGE_OF_INDEXES)

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

```py

>>>

>>>
```

[^^^](#ACCESS_TUPLES)

---
