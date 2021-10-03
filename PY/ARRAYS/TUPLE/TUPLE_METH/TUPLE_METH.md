
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [TUPLE](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/TUPLE/TUPLE.md)

---

### TUPLE_METHODS

---

* [COUNT](#COUNT)
* [INDEX](#INDEX)

---

#### COUNT

```
The count() method returns the number of times a specified value appears in the tuple.
```

```py
thistuple = (1, 3, 7, 8, 7, 5, 4, 6, 8, 5)

x = thistuple.count(1)
y = thistuple.count(2)
z = thistuple.count(3)

print(x, y, z)

>>>
1 0 1
>>>
```

[^^^](#TUPLE_METH)

---

#### INDEX

```
The index() method finds the first occurrence of the specified value.
The index() method raises an exception if the value is not found.
```

```py
thistuple = (1, 3, 7, 8, 7, 5, 4, 6, 8, 5)

a = thistuple.index(1)
b = thistuple.index(3)
c = thistuple.index(4)
d = thistuple.index(5)
e = thistuple.index(6)

print(a, b, c, d, e)

>>>
0 1 6 5 7
>>>
```

[^^^](#TUPLE_METH)

---
