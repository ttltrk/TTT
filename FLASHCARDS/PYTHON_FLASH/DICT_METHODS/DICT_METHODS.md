
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [PYTHON_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/PYTHON_FLASH.md) - DICTIONARY_METHODS

---

[CLEAR](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/DICT_METHODS/CLEAR.md) -
[COPY](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/DICT_METHODS/COPY.md) -
[FROMKEYS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/DICT_METHODS/FROMKEYS.md) -
[GET](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/DICT_METHODS/GET.md) -
[ITEMS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/DICT_METHODS/ITEMS.md) -
[KEYS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/DICT_METHODS/KEYS.md) -
[POP](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/DICT_METHODS/POP.md) -
[POPITEM](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/DICT_METHODS/POPITEM.md) -
[SETDEFAULT](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/DICT_METHODS/SETDEFAULT.md) -
[UPDATE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/DICT_METHODS/UPDATE.md) -
[VALUES](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/DICT_METHODS/VALUES.md) 

---

```
clear()	Removes all the elements from the dictionary
copy()	Returns a copy of the dictionary
fromkeys()	Returns a dictionary with the specified keys and value
get()	Returns the value of the specified key
items()	Returns a list containing a tuple for each key value pair
keys()	Returns a list containing the dictionary's keys
pop()	Removes the element with the specified key
popitem()	Removes the last inserted key-value pair
setdefault()	Returns the value of the specified key. If the key does not exist: insert the key, with the specified value
update()	Updates the dictionary with the specified key-value pairs
values()	Returns a list of all the values in the dictionary
```

```py
----------------------------------------
car =	{"brand": "Ford","model": "Mustang","year": 1964}
car.clear()
print(car)
#{}
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
x = car.copy()
print(x)
#{'brand': 'Ford', 'model': 'Mustang', 'year': 1964}
----------------------------------------
x = ('key1', 'key2', 'key3')
y = 0
thisdict = dict.fromkeys(x, y)
print(thisdict)
#{'key1': 0, 'key2': 0, 'key3': 0}
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
x = car.get("model")
print(x)
#Mustang
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
x = car.items()
print(x)
#dict_items([('brand', 'Ford'), ('model', 'Mustang'), ('year', 1964)])
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
x = car.keys()
print(x)
#dict_keys(['brand', 'model', 'year'])
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
car.pop("model")
print(car)
#{'brand': 'Ford', 'year': 1964}
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
car.popitem()
print(car)
#{'brand': 'Ford', 'model': 'Mustang'}
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
x = car.setdefault("model", "Bronco")
print(x)
#Mustang
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
car.update({"color": "White"})
print(car)
#{'brand': 'Ford', 'model': 'Mustang', 'year': 1964, 'color': 'White'}
----------------------------------------
car = {"brand": "Ford","model": "Mustang","year": 1964}
x = car.values()
print(x)
#dict_values(['Ford', 'Mustang', 1964])
----------------------------------------
```
