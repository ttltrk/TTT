
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md) - [NUMPY](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/NUMPY/NUMPY.md)

---

### ARRAY_INDEXING

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

arr = np.arange(0,11)
a1 = arr[8]
a2 = arr[1:4]

print(arr)
print(a1)
print(a2)

arr[0:5] = 404

print(arr)
```

```py
import numpy as np

arr = np.array([[5,10,15],[20,25,30],[35,40,45]])

print(arr)
print(' ')
print(arr[0])

>>>
[[ 5 10 15]
 [20 25 30]
 [35 40 45]]

[ 5 10 15]
>>>
```

```py
import numpy as np

arr = np.array([[5,10,15],[20,25,30],[35,40,45]])

print(arr)
print(' ')
print(arr[0])
print(' ')
print(arr[0][2])
print(' ')
print(arr[0,2])

>>>
[[ 5 10 15]
 [20 25 30]
 [35 40 45]]

[ 5 10 15]

15

15
>>>
```

[^^^](#ARRAY_INDEXING)

---
