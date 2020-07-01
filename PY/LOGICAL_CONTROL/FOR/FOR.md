
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [LOGICAL_CONTROL](https://github.com/ttltrk/TTT/blob/master/PY/LOGICAL_CONTROL/LOGICAL_CONTROL.md)

---

### FOR

---

```

```

---

* [BASICS](#BASICS)
* [ODD_AND_EVEN](#ODD_AND_EVEN)
* [SUM_OF_THE_LIST](#SUM_OF_THE_LIST)
* [MULTIPLY_2_LISTS](#MULTIPLY_2_LISTS)
* [ITERATE_A_STR](#ITERATE_A_STR)
* [ITERATE_TUPLES](#ITERATE_TUPLES)
* [ITERATE_DICT](#ITERATE_DICT)
* [FOR_WITH_RANGE](#FOR_WITH_RANGE)
* [PASS_FOR](#PASS_FOR)
* [CONTINUE_FOR](#CONTINUE_FOR)
* [BREAK_FOR](#BREAK_FOR)
* [ENUMERATE_FOR](#ENUMERATE_FOR)

---

#### BASICS

```

```

```py
l = [1,2,3]

for n in l:
    print(n)

>>>
1
2
3
>>>
```

```py
l = [1,2,3]
l1 = []

for n in l:
    l1.append(n*2)
print(l1)

>>>
[2, 4, 6]
>>>
```

[^^^](#FOR)

---

#### ODD_AND_EVEN

```

```

```py
l = [1,2,3, 4, 5, 6, 7, 8, 9, 10]

for num in l:
    if num % 2 == 0:
        print(num)
    else:
        print(f'odd number:{num}')

>>>
odd number:1
2
odd number:3
4
odd number:5
6
odd number:7
8
odd number:9
10
>>>        
```

[^^^](#FOR)

---

#### SUM_OF_THE_LIST

```

```

```py
numbers = [6, 5, 3, 8, 4, 2, 5, 4, 11]

sum = 0

for val in numbers:
	sum = sum+val

print("The sum is", sum)

>>>
The sum is 48
>>>
```

```py
l = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
ls = 0

for num in l:
    ls = ls + num

print(ls)

>>>
55
>>>
```

[^^^](#FOR)

---

#### MULTIPLY_2_LISTS

```

```

```py
# elements by elements
l1 = [1, 2, 3]
l2 = ['a', 'b', 'c']

for item in zip(l1, l2):
    print(item)

>>>
(1, 'a')
(2, 'b')
(3, 'c')
>>>
```

```py
l1 = [1, 2, 3]
l2 = ['a', 'b', 'c']
l3 = [100, 200, 300]

for item in zip(l1, l2, l3):
    print(item)

>>>
(1, 'a', 100)
(2, 'b', 200)
(3, 'c', 300)
>>>
```

[^^^](#FOR)

---

#### ITERATE_A_STR

```

```

```py
#python for
s = 'trk'

for letters in s:
    print(letters)

>>>
t
r
k
>>>
```

```py
#python for
for letters in 'trk':
    print(letters)

>>>
t
r
k
>>>
```

[^^^](#FOR)

---

#### ITERATE_TUPLES

```

```

```py
#python for
l = [(1,2),(3,4),(5,6),(7,8)]

for n in l:
    print(n)
print(type(n))

>>>
(1, 2)
(3, 4)
(5, 6)
(7, 8)
<class 'tuple'>
>>>
```

```py
#python for
l = [(1,2),(3,4),(5,6),(7,8)]

for (a,b) in l:
    print(a)
    print(b)

>>>
1
2
3
4
5
6
7
8
>>>
```

```py
#python for
l = [(1,2),(3,4),(5,6),(7,8)]
la, lb = [], []

for (a,b) in l:
    la.append(a)
    lb.append(b)
print(la)
print(lb)

>>>
[1, 3, 5, 7]
[2, 4, 6, 8]
>>>
```

[^^^](#FOR)

---

#### ITERATE_DICT

```

```

```py
d = {'k1':1, 'k2':2, 'k3':3}
lk, lv = [], []

for k,v in d.items():
    lk.append(k)
    lv.append(v)
print(lk)
print(lv)

>>>
['k1', 'k2', 'k3']
[1, 2, 3]
>>>
```

[^^^](#FOR)

---

#### FOR_WITH_RANGE

```

```

```py
for num in range(1,6):
    print (num)

>>>
1
2
3
4
5
>>>
```

```py
l = []
l1 = [l.append(num) for num in range(1,6)]

print(l)

>>>
[1, 2, 3, 4, 5]
>>>
```

```py
for element in range(5):
    print ("hello world")

>>>
hello world
hello world
hello world
hello world
hello world
>>>
```

[^^^](#FOR)

---

#### PASS_FOR

```

```

```py
x = [1, 2, 3]

for nums in x:
    pass

print('how to use pass')

>>>
how to use pass
>>>
```

[^^^](#FOR)

---

#### CONTINUE_FOR

```

```

```py
x = 'sammy'

for letter in x:
    if letter == 'm':
        continue
    print(letter)

>>>
say
>>>
```

[^^^](#FOR)

---

#### BREAK_FOR

```

```

```py
x = 'sammy'

for letter in x:
    if letter == 'a':
        break
    print(letter)

>>>
s
>>>
```

[^^^](#FOR)

---

#### ENUMERATE_FOR

```

```

```py
index_count = 0

for letter in 'abc':
    print('at index {} the letter is {}'.format(index_count, letter))
    index_count += 1

>>>
at index 0 the letter is a
at index 1 the letter is b
at index 2 the letter is c
>>>
```

```py
word = 'abc'

for item in enumerate(word):
    print(item)

>>>
(0, 'a')
(1, 'b')
(2, 'c')
>>>
```

```py
word = 'abc'

for index, letter in enumerate(word):
    print(index)
    print(letter)

>>>
0
a
1
b
2
c
>>>
```

[^^^](#FOR)

---
