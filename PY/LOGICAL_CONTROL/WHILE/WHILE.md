
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [LOGICAL_CONTROL](https://github.com/ttltrk/TTT/blob/master/PY/LOGICAL_CONTROL/LOGICAL_CONTROL.md)

---

### WHILE

---

```

```

---

* [BASICS](#BASICS)
* [INFINITY_LOOP](#INFINITY_LOOP)
* [WHILE_WITH_IF](#WHILE_WITH_IF)
* [WHILE_WHIT_ELSE](#WHILE_WHIT_ELSE)
* [WHILE_WHIT_IF_ELSE](#WHILE_WHIT_IF_ELSE)
* [BREAK_WHILE](#BREAK_WHILE)
* [JOIN_LETTERS](#JOIN_LETTERS)
* [COUNT_AVG_LIST](#COUNT_AVG_LIST)
* [FROM_DICT_FIND_SUM_ACC_LIST](#FROM_DICT_FIND_SUM_ACC_LIST)
* [STRING_REVERSE](#STRING_REVERSE)
* [COUNT_THE_SHEEP](#COUNT_THE_SHEEP)
* [FIND_NEXT_CORRECT_YEAR](#FIND_NEXT_CORRECT_YEAR)

---

#### BASICS

```

```

```py
while some_boolean_condition:
    #do something
```

```py
while some_boolean_condition:
    #do something
else:
    #do something different
```

```py
x = 0
while x < 5:
    print(f'the current status of x is {x}')
    #x = x + 1
    x += 1

>>>
the current status of x is 0
the current status of x is 1
the current status of x is 2
the current status of x is 3
the current status of x is 4
>>>
```

```py
a = "hi world"

i = 1
while i < 6:
  print(a)
  i += 1

>>>
hi world
hi world
hi world
hi world
hi world
>>>
```

It is now important to remember that:

- if you want to execute more than one statement inside one while, you must (as with if) indent all the instructions in the same way;
- an instruction or set of instructions executed inside the while loop is called the loop's body;
- if the condition is False (equal to zero) as early as when it is tested for the first time, the body is not executed even once (note the analogy of not having to do anything if there is nothing to do);
- the body should be able to change the condition's value, because if the condition is True at the beginning, the body might run continuously to infinity -notice that doing a thing usually decreases the number of things to do).

```py
counter = 5
while counter != 0:
    print("Inside the loop.", counter)
    counter -= 1
print("Outside the loop.", counter)

>>>
Inside the loop. 5
Inside the loop. 4
Inside the loop. 3
Inside the loop. 2
Inside the loop. 1
Outside the loop. 0
>>>
```

```py
counter = 5
while counter:
    print("Inside the loop.", counter)
    counter -= 1
print("Outside the loop.", counter)

>>>
Inside the loop. 5
Inside the loop. 4
Inside the loop. 3
Inside the loop. 2
Inside the loop. 1
Outside the loop. 0
>>>
```

[^^^](#WHILE)

---

#### INFINITY_LOOP

An infinite loop, also called an endless loop, is a sequence of instructions in a program which repeat indefinitely (loop endlessly.)

```py
x = 0

while x < 10:
    print(f'the current status of x is {x}')

>>>
...
>>>
```

[^^^](#WHILE)

---

#### WHILE_WITH_IF

```

```

```py
i = 1
while i < 6:
  print(i)
  if i == 3:
    print("itt volt a harmadik step")
  if i == 5:
    print("itt meg az otodik")
  i += 1

>>>
1
2
3
itt volt a harmadik step
4
5
itt meg az otodik
>>>
```

[^^^](#WHILE)

---

#### WHILE_WHIT_ELSE

```

```

```py
x = 1
while x < 5:
    print(f'the current status of x is {x}')
    #x = x + 1
    x += 1
else:
    print('x is less than 5')

>>>
the current status of x is 1
the current status of x is 2
the current status of x is 3
the current status of x is 4
x is less than 5
>>>
```

[^^^](#WHILE)

---

#### WHILE_WHIT_IF_ELSE

```

```

```py
x = 0

while x < 10:
    print ("X is currently: ", x)
    print ("X is still less than 10, adding 1 to x")
    x +=1

    if x==3:
        print ("Hey x equals 3!")
    else:
        print ("continuing")
        continue

>>>
X is currently:  0
X is still less than 10, adding 1 to x
continuing
X is currently:  1
X is still less than 10, adding 1 to x
continuing
X is currently:  2
X is still less than 10, adding 1 to x
Hey x equals 3!
X is currently:  3
X is still less than 10, adding 1 to x
continuing
X is currently:  4
X is still less than 10, adding 1 to x
continuing
X is currently:  5
X is still less than 10, adding 1 to x
continuing
X is currently:  6
X is still less than 10, adding 1 to x
continuing
X is currently:  7
X is still less than 10, adding 1 to x
continuing
X is currently:  8
X is still less than 10, adding 1 to x
continuing
X is currently:  9
X is still less than 10, adding 1 to x
continuing
>>>
```

```py
x = 0

while x < 10:
    print ("X is currently: ", x)
    print ("X is still less than 10, adding 1 to x")
    x +=1

    if x==3:
        print ("Hey x equals 3!")
        break
    else:
        print ("continuing")
        continue

>>>
X is currently:  0
X is still less than 10, adding 1 to x
continuing
X is currently:  1
X is still less than 10, adding 1 to x
continuing
X is currently:  2
X is still less than 10, adding 1 to x
Hey x equals 3!
>>>
```

[^^^](#WHILE)

---

#### BREAK_WHILE

```

```

```py
x = 0

while x < 5:
    if x == 2:
        break
    print(f'x is now {x}')
    x += 1

>>>
x is now 0
x is now 1
>>>
```

```py
i = 1
while i < 6:
  print(i)
  if i == 3:
    break
  i += 1

>>>
1
2
3
>>>
```

[^^^](#WHILE)

---

#### JOIN_LETTERS

```

```

```py
def triple_trouble(one, two, three):

    x=0
    l=[]
    while x < len(one):
        res=one[x]+two[x]+three[x]
        l.append(res)
        x += 1
    str1=''.join(l)
    return str1

print(triple_trouble("aaa","bbb","ccc"))

>>>
abcabcabc
>>>
```

[^^^](#WHILE)

---

#### COUNT_AVG_LIST

```

```

```py
import math

def sum_average(arr):

    x=0
    l=[]
    while x < len(arr):
        res=sum(arr[x])/len(arr[x])
        l.append(res)
        x += 1
    return math.floor(sum(l))


print(sum_average([[-4, 3, -8, -2], [2, 9, 1, -5], [-7, -2, -6, -4]]))

>>>
-6
>>>
```

[^^^](#WHILE)

---

#### FROM_DICT_FIND_SUM_ACC_LIST

```

```

```py
import string as st

def words_to_marks(s):   

    abc=st.ascii_lowercase

    #join two lists into the dict
    labc=list(abc)    
    lnum=list(range(1,len(abc)+1))
    dic = dict(zip(labc,lnum))

    l=list(s)

    #from dict find the numbers or sum as per the string/list
    x=0
    l1=[]
    while x < len(l):
        l1.append(dic[l[x]])
        x += 1
    return sum(l1)

print(words_to_marks('attitude'))

>>>
100
>>>
```

[^^^](#WHILE)

---

#### STRING_REVERSE

```

```

```py
def reverse_slice(s):

    l=[]
    ss=s[::-1]
    l.append(ss)
    print(l)

    l.append(ss[1:])
    print(l)

    l.append(ss[2:])
    print(l)

    l.append(ss[3:])
    print(l)

    l.append(ss[4:])
    print(l)

    print(len(s))

print(reverse_slice('abcde'))

>>>
['edcba']
['edcba', 'dcba']
['edcba', 'dcba', 'cba']
['edcba', 'dcba', 'cba', 'ba']
['edcba', 'dcba', 'cba', 'ba', 'a']
5
>>>

def reverse_slice(s):

    x=1
    l=[]
    ss=s[::-1]
    l.append(ss)
    while x < len(s):
        l.append(ss[x:])
        x += 1
    return l

print(reverse_slice('abcde'))

>>>
['edcba', 'dcba', 'cba', 'ba', 'a']
>>>
```

[^^^](#WHILE)

---

#### COUNT_THE_SHEEP

```

```

```py
def count_sheep(n):    

    x = 0
    while x < n:
        l=[]
        ll=[l.append(str(nums)+' sheep...') for nums in range(1,n+1)]
        x += 1
    str1=''.join(l)    
    return str1

print(count_sheep(5))    

>>>
1 sheep...2 sheep...3 sheep...4 sheep...5 sheep...
>>>
```

[^^^](#WHILE)

---

#### FIND_NEXT_CORRECT_YEAR

```

```

```py
def next_happy_year(year):

    x = year+1
    while x < year+5000:
        s = str(x)
        l = list(s)
        ll = [int(i) for i in l]
        checkYear = len(ll)
        template = [1] * checkYear
        listOutOrigin = []
        for element in ll:
            aa = ll.count(element)
            listOutOrigin.append(aa)
        if template == listOutOrigin:
            break
        x += 1

    l = [str(i) for i in ll]
    str1 = ''.join(l)
    final = int(str1)
    return final

print(next_happy_year(1987))

>>>
2013
>>>
```

[^^^](#WHILE)

---
