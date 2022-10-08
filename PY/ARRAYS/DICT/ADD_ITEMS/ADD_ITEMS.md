
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [DICT](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/DICT/DICT.md)

---

### ADD_ITEMS

---

#### ADDING_ITEMS

Adding an item to the dictionary is done by using a new index key and assigning a value to it

```py
thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
thisdict["color"] = "red"
print(thisdict)

>>>
{'brand': 'Ford', 'model': 'Mustang', 'year': 1964, 'color': 'red'}
>>>
```

[^^^](#ADD_ITEMS)

---

#### UPDATE_DICTIONARY

The ```update()``` method will update the dictionary with the items from a given argument. If the item does not exist, the item will be added.
The argument must be a dictionary, or an iterable object with ```key:value``` pairs.

```py
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
thisdict.update({"color": "red"})

print(thisdict)

>>>
{'brand': 'Ford', 'model': 'Mustang', 'year': 1964, 'color': 'red'}
>>>
```

[^^^](#ADD_ITEMS)

---
