
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [ARRAYS](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/ARRAYS.md) - [LIST](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/LIST/LIST.md)

---

### LIST_COMPREHENSION

---

* [BASICS](#BASICS)
* [COUNT_BY](#COUNT_BY)
* [BIGGER_THAN_ZERO](#BIGGER_THAN_ZERO)
* [ZERO](#ZERO)
* [LESS_THAN_ZERO](#LESS_THAN_ZERO)
* [COUNT_FROM_1_TO_N](#COUNT_FROM_1_TO_N)

---

#### BASICS

```py
l = []

for letter in "word":
    l.append(letter)

print (l)

>>>
['w', 'o', 'r', 'd']
>>>
```

```py
l = [letter for letter in "word"]
print(l)

>>>
['w', 'o', 'r', 'd']
>>>
```

```py
h_letters = []

for letter in 'human':
    h_letters.append(letter)

print(h_letters)

>>>
['h', 'u', 'm', 'a', 'n']
>>>
```

```py
h_letters = [ letter for letter in 'human' ]
print( h_letters)

>>>
['h', 'u', 'm', 'a', 'n']
>>>
```

```py
lst = []

for x in range(0,11):
  lst.append(x**2)

print(lst)

>>>
[0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
>>>
```

```py
n = int(input()) #for example 5

for n in range(0,n):
  print(n**2)

>>>
0
1
4
9
16
>>>
```

```py
lst = [x**2 for x in range(0,11)]
print(lst)

>>>
[0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
>>>
```

```py
>>> lst = [number for number in range(11) if number % 2 ==0]
>>> lst
[0, 2, 4, 6, 8, 10]
>>>
```

```py
lst = []

for number in range(11):
    if number %2 == 0:
        lst.append(number)

print (lst)

>>>
[0, 2, 4, 6, 8, 10]
>>>
```

```py
celsius = [0, 10, 20.1, 34.5]

fahrenheit = [temp for temp in celsius]

print (fahrenheit)

>>>
[0, 10, 20.1, 34.5]
>>>
```

```py
celsius = [0, 10, 20.1, 34.5]

fahrenheit = [(temp * (9/5.0) + 32) for temp in celsius]

print (fahrenheit)

>>>
[32.0, 50.0, 68.18, 94.1]
>>>
```

```py
lst = [x**2 for x in [x**2 for x in range(11)]]

print (lst)

>>>
[0, 1, 16, 81, 256, 625, 1296, 2401, 4096, 6561, 10000]
>>>
```

[^^^](#LIST_COMPREHENSION)

---

#### COUNT_BY

```py
def count_by(x, n):

    #create a list with 10 element
    l = list(range(10))

    #slice until n element
    a = l[1:n+1]
    ll = [val*x for val in a]
    return ll

print(count_by(93,2))
print(count_by(100,5))

>>>
[93, 186]
[100, 200, 300, 400, 500]
>>>
```

[^^^](#LIST_COMPREHENSION)

---

#### BIGGER_THAN_ZERO

```py
biggerThanZero = [nums > 0 for nums in arr]
```

[^^^](#LIST_COMPREHENSION)

---

#### ZERO

```py
zeros = [nums == 0 for nums in arr]
```

[^^^](#LIST_COMPREHENSION)

---

#### LESS_THAN_ZERO

```py
ltz = []

lessThanZero = [ltz.append(nums) for nums in arr if nums < 0]
```

[^^^](#LIST_COMPREHENSION)

---

#### COUNT_FROM_1_TO_N

```py
def monkey_count(n):
    l = [x for x in range(1, n+1)]
    return l

>>>
[1, 2, 3, 4, 5]
>>>
```

[^^^](#LIST_COMPREHENSION)

---
