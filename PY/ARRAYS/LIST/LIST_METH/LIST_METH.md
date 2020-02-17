
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [ARRAYS](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/ARRAYS.md) - [LIST](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/LIST/LIST.md)

---

<h3 id='^'>List Methods</h3>

---

* <a href='#append'>append()</a></br>
* <a href='#clear'>clear()</a></br>
* <a href='#copy'>copy()</a></br>
* <a href='#count'>count()</a></br>
* <a href='#extend'>extend()</a></br>
* <a href='#index'>index()</a></br>
* <a href='#insert'>insert()</a></br>
* <a href='#pop'>pop()</a></br>
* <a href='#remove'>remove()</a></br>
* <a href='#reverse'>reverse()</a></br>
* <a href='#sort'>sort()</a></br>

---

<h3 id='append'>append()</h3>

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

<a href='#^'>^^^</a>

---

<h3 id='clear'>clear()</h3>

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

<a href='#^'>^^^</a>

---

<h3 id='copy'>copy()</h3>

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

<a href='#^'>^^^</a>

---

<h3 id='count'>count()</h3>

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

<a href='#^'>^^^</a>

---

<h3 id='extend'>extend()</h3>

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

<a href='#^'>^^^</a>

---

<h3 id='index'>index()</h3>

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

<a href='#^'>^^^</a>

---

<h3 id='insert'>insert()</h3>

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

<a href='#^'>^^^</a>

---

<h3 id='pop'>pop()</h3>

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

<a href='#^'>^^^</a>

---

<h3 id='remove'>remove()</h3>

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

<a href='#^'>^^^</a>

---

<h3 id='reverse'>reverse()</h3>

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

<a href='#^'>^^^</a>

---

<h3 id='sort'>sort()</h3>

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

<a href='#^'>^^^</a>

---
