
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [DICT](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/DICT/DICT.md)

---

### ACCESS_ITEMS

---

#### ACCESSING_ITEMS

You can access the items of a dictionary by referring to its key name, inside square brackets:

```py
thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
x = thisdict["model"]
print(x)

>>>
Mustang
>>>
```

There is also a method called get() that will give you the same result:

```py

>>>
x = thisdict.get("model")
>>>
```

[^^^](#ACCESS_ITEMS)

---

#### GET_KEYS

The keys() method will return a list of all the keys in the dictionary.

```py
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

x = thisdict.keys()

print(x)

>>>
dict_keys(['brand', 'model', 'year'])
>>>
```

[^^^](#ACCESS_ITEMS)

---

[^^^](#ACCESS_ITEMS)

---

[^^^](#ACCESS_ITEMS)

---
