
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [TUPLE](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/TUPLE/TUPLE.md)

---

### UPDATE_TUPLES

```
Tuples are unchangeable, meaning that you cannot change, add, or remove items once the tuple is created.
But there are some workarounds.
```

---

* [CHANGE_TUPLE_VALUES](#CHANGE_TUPLE_VALUES)
* [ADD_ITEMS](#ADD_ITEMS)
* [REMOVE_ITEMS](#REMOVE_ITEMS)

---

#### CHANGE_TUPLE_VALUES

```
Once a tuple is created, you cannot change its values. Tuples are unchangeable, or immutable as it also is called.
But there is a workaround. You can convert the tuple into a list, change the list, and convert the list back into a tuple.
```

```py
x = ("apple", "banana", "cherry")
y = list(x)
y[1] = "kiwi"
x = tuple(y)

print(x)

>>>
('apple', 'kiwi', 'cherry')
>>>
```

[^^^](#UPDATE_TUPLES)

---

#### ADD_ITEMS

```
Since tuples are immutable, they do not have a build-in append() method, but there are other ways to add items to a tuple.
1. Convert into a list: Just like the workaround for changing a tuple, you can convert it into a list, add your item(s), and convert it back into a tuple.
```

```py
thistuple = ("apple", "banana", "cherry")
y = list(thistuple)
y.append("orange")
thistuple = tuple(y)

print(thistuple)

>>>
('apple', 'banana', 'cherry', 'orange')
>>>
```

```
2. Add tuple to a tuple. You are allowed to add tuples to tuples, so if you want to add one item, (or many), create a new tuple with the item(s), and add it to the existing tuple.
```

```py
thistuple = ("apple", "banana", "cherry")
y = ("orange",)
thistuple += y

print(thistuple)

>>>
('apple', 'banana', 'cherry', 'orange')
>>>
```

[^^^](#UPDATE_TUPLES)

---

#### REMOVE_ITEMS

```
Tuples are unchangeable, so you cannot remove items from it, but you can use the same workaround as we used for changing and adding tuple items:
```

```py
thistuple = ("apple", "banana", "cherry")
y = list(thistuple)
y.remove("apple")
thistuple = tuple(y)

print(thistuple)

>>>
('banana', 'cherry')
>>>
```

```
Or you can delete the tuple completely.
```

```py
thistuple = ("apple", "banana", "cherry")
del thistuple
print(thistuple) #this will raise an error because the tuple no longer exists
```

[^^^](#UPDATE_TUPLES)

---
