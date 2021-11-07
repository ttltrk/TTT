
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### ARRAYS

---

- [LIST](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/LIST/LIST.md)
- [SET](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/SET/SET.md)
- [TUPLE](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/TUPLE/TUPLE.md)
- [DICTIONARY](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/DICT/DICT.md)

---

- List

```
- Lists are used to store multiple items in a single variable.
- Lists are one of 4 built-in data types in Python used to store collections of data,
the other 3 are Tuple, Set, and Dictionary, all with different qualities and usage.
- Lists are created using square brackets.
- List items are ordered, changeable, and allow duplicate values.
- List items are indexed, the first item has index [0], the second item has index [1] etc.
- When we say that lists are ordered, it means that the items have a defined order, and that order will not change.
- If you add new items to a list, the new items will be placed at the end of the list.
```

- Set

```
- Sets are used to store multiple items in a single variable.
- Set is one of 4 built-in data types in Python used to store collections of data,
the other 3 are List, Tuple, and Dictionary, all with different qualities and usage.
- A set is a collection which is unordered, unchangeable, and unindexed.
- Sets are written with curly brackets.
- Set items are unordered, unchangeable, and do not allow duplicate values.
- Unordered means that the items in a set do not have a defined order.
- Set items can appear in a different order every time you use them, and cannot be referred to by index or key.
- Sets are unchangeable, meaning that we cannot change the items after the set has been created.
- Once a set is created, you cannot change its items, but you can add new items.
- Sets cannot have two items with the same value.
```

- Tuple

```
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
```

- Dictionary

```
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
```

---

- Methods

| Syntax | List | Set | Tuple | Dictionary  |
| --- | --- | --- | --- | --- |
| Adds an element to the set | | add() | | |
| Adds an element at the end of the list | [append()](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/LIST/LIST_METH/LIST_METH.md#append) | | | |
| Removes all the elements from the list/set/dictionary | clear() | clear() | | clear() |
| Returns a copy of the list/set/dictionary | copy() | copy() | | copy() |
| Returns the number of elements with the specified value | count() |  |  |  |
| Returns the number of times a specified value occurs in a tuple | | | count() | |
| Returns a set containing the difference between two or more sets | | difference() | | |
| Removes the items in this set that are also included in another, specified set | | difference_update() | | |
| Remove the specified item | | discard() | | |
| Add the elements of a list (or any iterable), to the end of the current list | extend() |  |  |  |
| Returns a dictionary with the specified keys and value | | | | fromkeys() |
| Returns the value of the specified key | | | | get() |
| Returns the index of the first element with the specified value | index() | | | |
| Searches the tuple for a specified value and returns the position of where it was found | | | index() | |
| Adds an element at the specified position | insert() | | | |
| Returns a list containing a tuple for each key value pair | | | | items() |
| Returns a set, that is the intersection of two or more sets | | intersection() | | |
| Removes the items in this set that are not present in other, specified sets | | intersection_update() | | |
| Returns whether two sets have a intersection or not | | isdisjoint() | | |
| Returns whether another set contains this set or not | | issubset() | | |
| Returns whether this set contains another set or not | | issuperset() | | |
| Returns a list containing the dictionary's keys | | | | keys() |
| Removes the element at the specified position/key | pop() | pop() | | pop() |
| Removes the last inserted key-value pair | | | | popitem() |
| Removes the first item with the specified value | remove() | | | |
| Removes the specified element | | remove() | | |
| Reverses the order of the list | reverse() | | | |
| Returns the value of the specified key. If the key does not exist: insert the key, with the specified value | | | | setdefault() |
| Sorts the list | sort() | | | |
| Returns a set with the symmetric differences of two sets | | symmetric_difference() | | |
| inserts the symmetric differences from this set and another | | symmetric_difference_update() | | |
| Return a set containing the union of sets | | union() | | |
| Update the set with another set, or any other iterable | | update() | | |
| Updates the dictionary with the specified key-value pairs | | | | update() |
| Returns a list of all the values in the dictionary | | | | values() |

---
