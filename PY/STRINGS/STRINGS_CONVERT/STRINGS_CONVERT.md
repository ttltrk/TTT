
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [STRINGS](https://github.com/ttltrk/TTT/blob/master/PY/STRINGS/STRINGS.md)

---

### STRINGS_CONVERT

---

```

```

---

* [STR_TO_LST_SEPAR](#STR_TO_LST_SEPAR)
* [STR_TO_LST_FULL](#STR_TO_LST_FULL)
* [STR_TO_SET](#STR_TO_SET)
* [STR_TO_TUP](#STR_TO_TUP)

---

#### STR_TO_LST_SEPAR

```py
def split(word):
    l = [char for char in word]
    return l

print(split('heyho'))

>>>
['h', 'e', 'y', 'h', 'o']
>>>
```

```py
word = 'abc'
l = list(word)
print(l)

>>>
['a', 'b', 'c']
>>>
```

[^^^](#STRINGS_CONVERT)

---

#### STR_TO_LST_FULL

```py
a = 'mary'
z = a.split()
print(z)

>>>
['mary']
>>>
```

```py
def high(x):    
    inpL = x.split()
    return inpL

high('man i need a taxi up to ubud')

>>>
['man', 'i', 'need', 'a', 'taxi', 'up', 'to', 'ubud']
>>>
```

[^^^](#STRINGS_CONVERT)

---

#### STR_TO_SET

```py
s = "blabla"
f = {s}

print(type(f))
print(f)

>>>
{'blabla'}
>>>
```

[^^^](#STRINGS_CONVERT)

---

#### STR_TO_TUP

```py
string="heyho"
a = tuple(string)

print(a)

>>>
('h', 'e', 'y', 'h', 'o')
>>>
```

[^^^](#STRINGS_CONVERT)

---
