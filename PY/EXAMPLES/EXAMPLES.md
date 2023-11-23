
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### EXAMPLES

---

#### add elements in a list

```py
from functools import reduce

l = [10, 1, 3, 0, 2]

def add(a, b):
    return a + b

res = reduce(add, l)
print(res)

>>>
16
>>>
```

#### reverse the order of the elements in the list

```py
from functools import reduce

l = list('abcde')

def rev(a, b):
    return b + a

res = reduce(rev, l)
print(res)

>>>
edcba
>>>
```

#### reverse the order of the elements in the list

```py
from functools import reduce

l = list('abcde')

res = reduce(lambda a, b: b + a, l)
print(res)

>>>
edcba
>>>
```

---
