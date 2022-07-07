
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

The list of the keys is a view of the dictionary, meaning that any changes done to the dictionary will be reflected in the keys list.

```py
car = {
"brand": "Ford",
"model": "Mustang",
"year": 1964
}

x = car.keys()

print(x) #before the change

car["color"] = "white"

print(x) #after the change

>>>
dict_keys(['brand', 'model', 'year'])
dict_keys(['brand', 'model', 'year', 'color'])
>>>
```

[^^^](#ACCESS_ITEMS)

---

#### GET_VALUES

The values() method will return a list of all the values in the dictionary.

```py
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

x = thisdict.values()

print(x)

>>>
dict_values(['Ford', 'Mustang', 1964])
>>>
```

The list of the values is a view of the dictionary, meaning that any changes done to the dictionary will be reflected in the values list.

```py
car = {
"brand": "Ford",
"model": "Mustang",
"year": 1964
}

x = car.values()

print(x) #before the change

car["year"] = 2020

print(x) #after the change

>>>
dict_values(['Ford', 'Mustang', 1964])
dict_values(['Ford', 'Mustang', 2020])
>>>
```

```py
car = {
"brand": "Ford",
"model": "Mustang",
"year": 1964
}

x = car.values()

print(x) #before the change

car["color"] = "red"

print(x) #after the change

>>>
dict_values(['Ford', 'Mustang', 1964])
dict_values(['Ford', 'Mustang', 1964, 'red'])
>>>
```

[^^^](#ACCESS_ITEMS)

---

[^^^](#ACCESS_ITEMS)

---

[^^^](#ACCESS_ITEMS)

---

[^^^](#ACCESS_ITEMS)

---
