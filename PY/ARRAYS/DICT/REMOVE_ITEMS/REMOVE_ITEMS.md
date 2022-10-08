
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [DICT](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/DICT/DICT.md)

---

### REMOVE_ITEMS

---

#### REMOVING_ITEMS

There are several methods to remove items from a dictionary

```py
thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
thisdict.pop("model")
print(thisdict)

>>>
{'brand': 'Ford', 'year': 1964}
>>>
```

The ```popitem()``` method removes the last inserted item (in versions before 3.7, a random item is removed instead)

```py
thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
thisdict.popitem()
print(thisdict)

>>>
{'brand': 'Ford', 'model': 'Mustang'}
>>>
```

The del keyword removes the item with the specified key name

```py
thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
del thisdict["model"]
print(thisdict)

>>>
{'brand': 'Ford', 'year': 1964}
>>>
```

The del keyword can also delete the dictionary completely

```py
thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
del thisdict
print(thisdict) #this will cause an error because "thisdict" no longer exists.

>>>
Traceback (most recent call last):
  File "demo_dictionary_del3.py", line 7, in <module>
    print(thisdict) #this will cause an error because "thisdict" no longer exists.
NameError: name 'thisdict' is not defined
>>>
```

The ```clear()``` method empties the dictionary

```py
thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
thisdict.clear()
print(thisdict)

>>>
{}
>>>
```

[^^^](#REMOVE_ITEMS)

---
