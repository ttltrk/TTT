
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [DICT](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/DICT/DICT.md)

---

### CHANGE_ITEMS

---

#### CHANGE_VALUES

You can change the value of a specific item by referring to its key name

```py
thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

thisdict["year"] = 2018

print(thisdict)

>>>
{'brand': 'Ford', 'model': 'Mustang', 'year': 2018}
>>>
```

[^^^](#CHANGE_ITEMS)

---

#### UPDATE_DICTIONARY

The ```update()``` method will update the dictionary with the items from the given argument.
The argument must be a dictionary, or an iterable object with ```key:value``` pairs.

```py
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
thisdict.update({"year": 2020})

print(thisdict)

>>>
{'brand': 'Ford', 'model': 'Mustang', 'year': 2020}
>>>
```

[^^^](#CHANGE_ITEMS)

---
