
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [DICT](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/DICT/DICT.md)

---

### LOOP

---

#### Loop Through a Dictionary

You can loop through a dictionary by using a for loop.

When looping through a dictionary, the return value are the keys of the dictionary, but there are methods to return the values as well.

```py
thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
for x in thisdict:
  print(x)

>>>
brand
model
year
>>>
```

Print all values in the dictionary, one by one

```py
thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
for x in thisdict:
  print(thisdict[x])

>>>
Ford
Mustang
1964
>>>
```

```py
l1,l2 = [],[]

thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

for x in thisdict.keys():
  l1.append(x)

for x in thisdict.values():
  l2.append(x)

print(l1)
print(l2)

>>>
['brand', 'model', 'year']
['Ford', 'Mustang', 1964]
>>>
```

Loop through both keys and values, by using the ```items()``` method

```py
thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
for x, y in thisdict.items():
  print(x, y)

>>>
brand Ford
model Mustang
year 1964
>>>
```

[^^^](#LOOP)

---
