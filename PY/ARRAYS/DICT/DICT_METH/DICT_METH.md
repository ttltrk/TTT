
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [DICT](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/DICT/DICT.md)

---

### DICTIONARY_METHOD

---

```
clear() = Removes all the elements from the dictionary
copy() = Returns a copy of the dictionary
fromkeys() = Returns a dictionary with the specified keys and values
get() = Returns the value of the specified key
items() = Returns a list containing a tuple for each key value pair
keys() = Returns a list containing the dictionary's keys
pop() = Removes the element with the specified key
popitem() = Removes the last inserted key-value pair
setdefault() = Returns the value of the specified key. If the key does not exist: insert the key, with the specified value
update() = Updates the dictionary with the specified key-value pairs
values() = Returns a list of all the values in the dictionary
```

---

* [clear](#clear)
* [copy](#copy)
* [fromkeys](#fromkeys)
* [get](#get)
* [items](#items)
* [keys](#keys)
* [pop](#pop)
* [popitem](#popitem)
* [setdefault](#setdefault)
* [update](#update)
* [values](#values)

---

#### clear

```py
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

car.clear()

print(car)

>>>
{}
>>>
```

[^^^](#DICTIONARY_METHOD)

---

#### copy

```py
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

x = car.copy()

print(car)
print(x)

>>>
{'brand': 'Ford', 'model': 'Mustang', 'year': 1964}
{'brand': 'Ford', 'model': 'Mustang', 'year': 1964}
>>>
```

[^^^](#DICTIONARY_METHOD)

---

#### fromkeys

```py
x = ('key1', 'key2', 'key3')
y = 0

thisdict = dict.fromkeys(x, y)

print(thisdict)

>>>
{'key1': 0, 'key2': 0, 'key3': 0}
>>>
```

[^^^](#DICTIONARY_METHOD)

---

#### get

```py
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

x = car.get("model")

print(x)

>>>
Mustang
>>>
```

[^^^](#DICTIONARY_METHOD)

---

#### items

```py
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

x = car.items()

print(x)

>>>
dict_items([('brand', 'Ford'), ('model', 'Mustang'), ('year', 1964)])
>>>
```

[^^^](#DICTIONARY_METHOD)

---

#### keys

```py
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

x = car.keys()

print(x)

>>>
dict_keys(['brand', 'model', 'year'])
>>>
```

[^^^](#DICTIONARY_METHOD)

---

#### pop

```py
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

car.pop("model")

print(car)

>>>
{'brand': 'Ford', 'year': 1964}
>>>
```

[^^^](#DICTIONARY_METHOD)

---

#### popitem

```py
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

car.popitem()

print(car)

>>>
{'brand': 'Ford', 'model': 'Mustang'}
>>>
```

[^^^](#DICTIONARY_METHOD)

---

#### setdefault

```py
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

x = car.setdefault("model", "Bronco")

print(x)

>>>
Mustang
>>>
```

[^^^](#DICTIONARY_METHOD)

---

#### update

```py
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

car.update({"color": "White"})

print(car)

>>>
{'brand': 'Ford', 'model': 'Mustang', 'year': 1964, 'color': 'White'}
>>>
```

[^^^](#DICTIONARY_METHOD)

---

#### values

```py
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

x = car.values()

print(x)

>>>
dict_values(['Ford', 'Mustang', 1964])
>>>
```

[^^^](#DICTIONARY_METHOD)

---
