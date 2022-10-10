
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [DICT](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/DICT/DICT.md)

---

### COPY_DICT

---

#### Copy a Dictionary

You cannot copy a dictionary simply by typing ```dict2 = dict1```, because: dict2 will only be a reference to dict1, and changes made in dict1 will automatically also be made in dict2.
There are ways to make a copy, one way is to use the built-in Dictionary method ```copy()```.

```py
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
mydict = thisdict.copy()
print(mydict)

>>>
{'brand': 'Ford', 'model': 'Mustang', 'year': 1964}
>>>
```

Another way to make a copy is to use the built-in function ```dict()```

```py
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
mydict = dict(thisdict)
print(mydict)

>>>
{'brand': 'Ford', 'model': 'Mustang', 'year': 1964}
>>>
```

[^^^](#COPY_DICT)

---
