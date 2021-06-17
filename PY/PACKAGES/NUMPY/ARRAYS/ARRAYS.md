
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md) - [NUMPY](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/NUMPY/NUMPY.md)

---

### ARRAYS

---

In Python, lists are used to store data.
NumPy provides an array structure for performing operations with data.
NumPy arrays are faster and more compact than lists.

---

* [BASICS](#BASICS)

---

#### BASICS

```py
import numpy as np
x = np.array([1, 2, 3, 4])
print(x)

>>>
[1 2 3 4]
>>>
```

```py
import numpy as np

ml = [1,2,3]
a = np.array(ml)
print(a)

>>>
[1 2 3]
>>>
```

```py
import numpy as np

mm = [[1,2,3],[4,5,6],[7,8,9]]
m = np.array(mm)
print(m)

>>>
[[1 2 3]
 [4 5 6]
 [7 8 9]]
>>>
```

NumPy arrays are often called ndarrays, which stands for "N-dimensional array", because they can have multiple dimensions.

```py
x = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])

print(x[1][2])

>>>
6
>>>
```

This will create a 2-dimensional array, which has 3 columns and 3 rows, and output the value at the 2nd row and 3rd column.

Arrays have properties, which can be accessed using a dot.
ndim returns the number of dimensions of the array.
size returns the total number of elements of the array.
shape returns a tuple of integers that indicate the number of elements stored along each dimension of the array.

```py
x = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
print(x.ndim) # 2
print(x.size) # 9
print(x.shape) # (3, 3)

>>>
2
9
(3, 3)
>>>
```

[^^^](#ARRAYS)

---
