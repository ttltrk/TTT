
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [DICT](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/DICT/DICT.md)

---

### DICTIONARY_BASICS

---

```

```

---

* [BASICS](#BASICS)
* [FIND_STRING_IN_DICT](#FIND_STRING_IN_DICT)
* [JOIN_TWO_LISTS_INTO_DICT](#JOIN_TWO_LISTS_INTO_DICT)
* [MAX_VAL_AND_KEY_FROM_DICT](#MAX_VAL_AND_KEY_FROM_DICT)

---

#### BASICS

```py
d = {'key1':'value1','key2':'value2'}
print(d)
print(d['key1'])

>>>
{'key1': 'value1', 'key2': 'value2'}
value1
>>>
```

```py
prices = {'apple':1.20, 'orange':2.15, 'milk':0.99}

print(prices['apple'])

>>>
1.2
>>>
```

```py
d = {'k1':123, 'k2':[0,1,2], 'k3':{'ins':'100'}}

print(d['k2'])
print(d['k2'][2])
print(d['k3']['ins'])

>>>
[0, 1, 2]
2
100
>>>
```

```py
d = {'k1':123, 'k2':[0,1,2], 'k3':{'ins':'100'}, 'k4':['a','b','c']}

print(d['k4'][2])
print(d['k4'][2].upper())

>>>
c
C
>>>
```

```py
d = {'k1':100, 'k2':200}

d['k3'] = 300

print(d)

d['k1'] = 'NEW VALUE'

print(d)

>>>
{'k1': 100, 'k2': 200, 'k3': 300}
{'k1': 'NEW VALUE', 'k2': 200, 'k3': 300}
>>>
```

```py
d = {'k1':100, 'k2':200}

d['k3'] = 300

print(d)
print(d.keys())
print(d.values())
print(d.items())


>>>
{'k1': 100, 'k2': 200, 'k3': 300}
dict_keys(['k1', 'k2', 'k3'])
dict_values([100, 200, 300])
dict_items([('k1', 100), ('k2', 200), ('k3', 300)])
>>>
```

```py
my_dict = {}

my_dict1 = {
  1: 'apple',
  2: 'ball'}

my_dict2 = {
  'name': 'John',
  1: [2, 4, 3]}

my_dict3 = dict({
  1:'apple',
  2:'ball'})

my_dict4 = dict([
  (1,'apple'),
  (2,'ball')])

print(my_dict)
print(my_dict1)
print(my_dict2)
print(my_dict3)
print(my_dict4)

>>>
{}
{1: 'apple', 2: 'ball'}
{'name': 'John', 1: [2, 4, 3]}
{1: 'apple', 2: 'ball'}
{1: 'apple', 2: 'ball'}
>>>
```

```py
d = {'k1':1,'k2':2}
a = {x:x**2 for x in range(10)}
print(a)

>>>
{0: 0, 1: 1, 2: 4, 3: 9, 4: 16, 5: 25, 6: 36, 7: 49, 8: 64, 9: 81}
>>>
```

```py
d = {'k1':1,'k2':2}
a = {k:v**2 for k,v in zip(['a','b'],range(2))}
print(a)

>>>
{'a': 0, 'b': 1}
>>>
```

[^^^](#DICTIONARY_BASICS)

---

#### FIND_STRING_IN_DICT

```py
import string as st

def bingo(array):

    abc=st.ascii_lowercase

    labc=list(abc)    
    lnum=list(range(1,len(abc)+1))
    dic = dict(zip(lnum,labc))

    res=[dic[nums] for nums in array]
    print(res)

    if 'b' in res and 'i' in res and 'n' in res and 'g' in res and 'o' in res:
        return True
    else:
        return False

print(bingo([1, 2, 3, 7, 5, 14, 7, 15, 9, 10]))

>>>
['a', 'b', 'c', 'g', 'e', 'n', 'g', 'o', 'i', 'j']
True
>>>
```

[^^^](#DICTIONARY_BASICS)

---

#### JOIN_TWO_LISTS_INTO_DICT

```py
dictionary = dict(zip(seq, listOutOrigin))
print(dictionary)

>>>

>>>
```

[^^^](#DICTIONARY_BASICS)

---

#### MAX_VAL_AND_KEY_FROM_DICT

```py
max_value = max(dictionary.values())  # maximum value
max_keys = [k for k, v in dictionary.items() if v == max_value]  # getting all keys containing the `maximum`
print(max_value, max_keys)

>>>

>>>
```

[^^^](#DICTIONARY_BASICS)

---
