
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [ARRAYS](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/ARRAYS.md) - [LIST](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/LIST/LIST.md)

---

<h3 id='^'>List to...</h3>

---

* <a href='#lst2str'>List to String</a></br>
* <a href='#lst2tup'>List to Tuple</a></br>
* <a href='#lst2dict'>List to Dictionary</a></br>
* <a href='#2lstintodict'>Two List into a Dictionary</a></br>
* <a href='#lst2set'>List to Set</a></br>
* <a href='#strintlst'>String to int in List</a></br>
* <a href='#strlst2intlst'>String list to int List</a></br>
* <a href='#join2lst'>Join two Lists</a></br>

---

<h3 id='lst2str'>List to String</h3>

```py
list1 = ['1', '2', '3']
str1 = ''.join(list1)
str2 = ' '.join(list1)
str3 = '-'.join(list1)
str4 = 'x'.join(list1)

print(str1)
print(str2)
print(str3)
print(str4)

>>>
123
1 2 3
1-2-3
1x2x3
>>>
```

<a href='#^'>^^^</a>

---

<h3 id='lst2tup'>List to Tuple</h3>

```py
l = [4,5,6]
t = tuple(l)

print(l)
print(t)

>>>
[4, 5, 6]
(4, 5, 6)
>>>
```

<a href='#^'>^^^</a>

---

<h3 id='lst2dict'>List to Dictionary</h3>

```py
l = ['bi','double','duo','two']

d = dict((k,2) for k in l)

print(d)

>>>
{'bi': 2, 'double': 2, 'duo': 2, 'two': 2}
>>>
```

<a href='#^'>^^^</a>

---

<h3 id='2lstintodict'>Two List into a Dictionary</h3>

```py
#create two lists
abcL=list(st.ascii_lowercase)
numsL=[nums for nums in range(1,27)]

#convert two list into a dict
dic = dict(zip(abcL,numsL))

print(dic)
>>>
{'a': 1, 'b': 2, 'c': 3, 'd': 4, 'e': 5, 'f': 6, 'g': 7, 'h': 8, 'i': 9, 'j': 10, 'k': 11, 'l': 12, 'm': 13, 'n': 14, 'o': 15, 'p': 16, 'q': 17, 'r': 18, 's': 19, 't': 20, 'u': 21, 'v': 22, 'w': 23, 'x': 24, 'y': 25, 'z': 26}
>>>
```

```py
def letter_count(s):

    l1=list(s)    
    l2 = []
    l3 = [l2.append(l1.count(el)) for el in l1]   

    print(l1)
    print(l2)

    d = dict(zip(l1,l2))
    print(d)

print(letter_count('ssziaa'))

>>>
['s', 's', 'z', 'i', 'a', 'a']
[2, 2, 1, 1, 2, 2]
{'s': 2, 'z': 1, 'i': 1, 'a': 2}
>>>
```

<a href='#^'>^^^</a>

---

<h3 id='lst2set'>List to Set</h3>

```py
l1 = ['bi','double','duo','two']
l2 = [1, 2, 3, 4, 5]

s1 = set(l1)
s2 = set(l2)

print(s1)
print(s2)

>>>
{'two', 'bi', 'double', 'duo'}
{1, 2, 3, 4, 5}
>>>
```

<a href='#^'>^^^</a>

---

<h3 id='strintlst'>String to int in List</h3>

```py
def sum_mix(arr):

    #convert all the string into the int
    l = [int(i) for i in arr]

    ll = sum(l)
    return ll

print(sum_mix([8, 0, 0, '8', 15, 7, 2, 3, '7', 8, '6', 7]))

>>>
71
>>>
```

<a href='#^'>^^^</a>

---

<h3 id='strlst2intlst'>String list to int List</h3>

```py
def scoreboard(string):

    l = ['nil', 'one', 'two', 'three', 'four']
    #print(l)

    #convert string to list
    z = string.split()
    #print(z)

    #find the matches in two diff lists
    a = [x for x in z if x in l]
    #print(a)

    #change the elements in the list
    for n, i in enumerate(a):
        if i == 'nil':
            a[n] = 0
        elif i == 'one':
            a[n] = 1
        elif i == 'two':
            a[n] = 2
        elif i == 'three':
            a[n] = 3
        elif i == 'four':
            a[n] = 4
        elif i == 'five':
            a[n] = 5
        elif i == 'six':
            a[n] = 6
        elif i == 'seven':
            a[n] = 7
        elif i == 'eight':
            a[n] = 8
        elif i == 'nine':
            a[n] = 9

    if len(a) == 1:
        a.append(a[n])
        return a
    else:
        return a

print(scoreboard("The score is two nil"))

>>>
[2, 0]
>>>
```

<a href='#^'>^^^</a>

---

<h3 id='join2lst'>Join two Lists</h3>

```py
def add_length(str_):

    l=str_.split()

    lc=[len(vals) for vals in l]

    if len(l) == 1:
        lf_1=[]
        lf_1.append(str_ + ' ' + str(len(str_)))
        return lf_1
    else:
        x=0
        lf=[]
        while x < len(l):
            lf.append(l[x]+' '+str(lc[x]))
            x += 1
        return lf

print(add_length('apple banana hey'))

>>>
['apple 5', 'banana 6', 'hey 3']
>>>
```

<a href='#^'>^^^</a>

---
