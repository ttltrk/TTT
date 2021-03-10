
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md) - [NUMPY](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/NUMPY/NUMPY.md)

---

### SLICE_OF_ARRAY

---

```

```

---

* []()
* []()
* []()

---

####

```py
import numpy as np

arr = np.arange(0,11)

slice_of_arr = arr[0:6]

print(slice_of_arr)

slice_of_arr[:] = 99

print(slice_of_arr)
print(arr)

>>>
[0 1 2 3 4 5]
[99 99 99 99 99 99]
[99 99 99 99 99 99  6  7  8  9 10]
>>>
```

```py
import numpy as np

arr = np.arange(0,11)
myins = int(input('add number: '))

slice_of_arr = arr[0:6]
arr[9] = myins

print(slice_of_arr)

slice_of_arr[:] = 99

print(slice_of_arr)
print(myins)
print(arr)

>>>
add number: 2
[0 1 2 3 4 5]
[99 99 99 99 99 99]
2
[99 99 99 99 99 99  6  7  8  2 10]
>>>
```

```py
import numpy as np

arr = np.arange(0,11)

print(arr)

arr_copy = arr.copy()

print(arr_copy)

arr_copy[:] = 100

print(arr_copy)

>>>
[ 0  1  2  3  4  5  6  7  8  9 10]
[ 0  1  2  3  4  5  6  7  8  9 10]
[100 100 100 100 100 100 100 100 100 100 100]
>>>
```

[^^^](#SLICE_OF_ARRAY)

---
