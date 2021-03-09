
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md) - [NUMPY](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/NUMPY/NUMPY.md)

---

### RANDOM_RANDINT

---

```

```

---

* [BASICS](#BASICS)
* []()
* []()

---

#### BASICS

```py
import numpy as np

a = np.random.randint(0,50)
b = np.random.randint(0,50,5)

print(a)
print(b)

>>>
5
[31 20 37 20 34]
>>>
```

- MAX / MIN

```py
import numpy as np

b = np.random.randint(0,50,5)
bmax = b.max()
bmin = b.min()

print(b)
print(bmax)
print(bmin)

>>>
[31  0 24 23  2]
31
0
>>>
```

```py
import numpy as np

b = np.random.randint(0,50,5)
bmax = b.max()
bmin = b.min()
bamax = b.argmax()
bamin = b.argmin()

print(b)
print(bmax)
print(bmin)
print(bamax)
print(bamin)

>>>
[49 49 35 43 18]
49
18
0
4
>>>
```

[^^^](#RANDOM_RANDINT)

---
