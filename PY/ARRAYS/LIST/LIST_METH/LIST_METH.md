
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [ARRAYS](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/ARRAYS.md) - [LIST](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/LIST/LIST.md)

---

### LIST_METHODS

---

```

```

---

* [append](#append)
* [clear](#clear)
* [copy](#copy)
* [count](#count)
* [extend](#extend)
* [index](#index)
* [insert](#insert)
* [pop](#pop)
* [remove](#remove)
* [reverse](#reverse)
* [sort](#sort)

---

#### append

```
Adds an element at the end of the list
```

```py
fruits = ['apple', 'banana', 'cherry']
fruits.append("orange")

print(fruits)

>>>
['apple', 'banana', 'cherry', 'orange']
>>>
```

[^^^](#LIST_METHODS)

---

#### clear

```
Removes all the elements from the list
```

```py
fruits = ['apple', 'banana', 'cherry', 'orange']
fruits.clear()

print(fruits)

>>>
[]
>>>
```

[^^^](#LIST_METHODS)

---

#### copy

```
Returns a copy of the list
```

```py
fruits = ['apple', 'banana', 'cherry', 'orange']
x = fruits.copy()

print(x)

>>>
['apple', 'banana', 'cherry', 'orange']
>>>
```

[^^^](#LIST_METHODS)

---

#### count

```
Returns the number of elements with the specified value
```

```py
fruits = ['apple', 'banana', 'cherry', 'apple']
x = fruits.count("cherry")
y = fruits.count('apple')

print(x)
print(y)

>>>
1
2
>>>
```

[^^^](#LIST_METHODS)

---

#### extend

```
Add the elements of a list (or any iterable), to the end of the current list
```

```py
fruits = ['apple', 'banana', 'cherry']
cars = ['Ford', 'BMW', 'Volvo']

fruits.extend(cars)

print(fruits)

>>>
['apple', 'banana', 'cherry', 'Ford', 'BMW', 'Volvo']
>>>
```

[^^^](#LIST_METHODS)

---

#### index

```
Returns the index of the first element with the specified value
```

```py
fruits = ['apple', 'banana', 'cherry']

a = fruits.index('apple')
x = fruits.index("cherry")

print(a)
print(x)

>>>
0
2
>>>
```

[^^^](#LIST_METHODS)

---

#### insert

```
Adds an element at the specified position
```

```py
fruits = ['apple', 'banana', 'cherry']

fruits.insert(1, "orange")
fruits.insert(0, "szia")

print(fruits)

>>>
['szia', 'apple', 'orange', 'banana', 'cherry']
>>>
```

[^^^](#LIST_METHODS)

---

#### pop

```
Removes the element at the specified position
```

```py
fruits = ['apple', 'banana', 'cherry']
fruits.pop(1)

print(fruits)

>>>
['apple', 'cherry']
>>>
```

[^^^](#LIST_METHODS)

---

#### remove

```
Removes the first item with the specified value
```

```py
fruits = ['apple', 'banana', 'cherry']

fruits.remove("banana")

print(fruits)

>>>
['apple', 'cherry']
>>>
```

[^^^](#LIST_METHODS)

---

#### reverse

```
Reverses the order of the list
```

```py
fruits = ['apple', 'banana', 'cherry']
fruits.reverse()

print(fruits)

>>>
['cherry', 'banana', 'apple']
>>>
```

[^^^](#LIST_METHODS)

---

#### sort 

```
Sorts the list
```

```py
cars = ['Ford', 'BMW', 'Volvo']
cars.sort()

print(cars)

>>>
['BMW', 'Ford', 'Volvo']
>>>
```

[^^^](#LIST_METHODS)

---
