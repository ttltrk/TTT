
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md)

---

### PANDAS

---

```

```

---

* [SERIES](#SERIES)
* [DATAFRAMES_01](#DATAFRAMES_01)
* [DATAFRAMES_02](#DATAFRAMES_02)
* [DATAFRAMES_03](#DATAFRAMES_03)
* [MISSING_DATA](#MISSING_DATA)
* [GROP_BY](#GROP_BY)
* [MERGE_JOIN_CONCAT](#MERGE_JOIN_CONCAT)

---

#### SERIES

```

```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

print(labels)
print(my_data)
print(arr)
print(d)

>>>
['a', 'b', 'c']
[10, 20, 30]
[10 20 30]
{'a': 10, 'b': 20, 'c': 30}
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(data = my_data)

print(a)

>>>
0    10
1    20
2    30
dtype: int64
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(data = my_data,index=labels)

print(a)

>>>
a    10
b    20
c    30
dtype: int64
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(arr)

print(a)

>>>
0    10
1    20
2    30
dtype: int32
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(arr,labels)

print(a)

>>>
a    10
b    20
c    30
dtype: int32
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(d)

print(a)

>>>
a    10
b    20
c    30
dtype: int64
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(data=labels)

print(a)

>>>
0    a
1    b
2    c
dtype: object
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(data=labels)

print(a[1])

>>>
b
>>>
```

```py
import numpy as np
import pandas as pd

labels = ['a','b','c']
my_data = [10,20,30]
arr = np.array(my_data)
d = {'a':10,'b':20,'c':30}

a = pd.Series(data=[sum,print,len])

print(a)

>>>
0      <built-in function sum>
1    <built-in function print>
2      <built-in function len>
dtype: object
>>>
```

```py
import numpy as np
import pandas as pd

ser1 = pd.Series([1,2,3,4],['usa', 'ger', 'ussr', 'jpn'])
print(ser1)

>>>
usa     1
ger     2
ussr    3
jpn     4
dtype: int64
>>>
```

```py
import numpy as np
import pandas as pd

ser1 = pd.Series([1,2,3,4],['usa', 'ger', 'ussr', 'jpn'])
ser2 = pd.Series([1,2,5,4],['usa', 'ger', 'ita', 'jpn'])

print(ser1)
print(' ')
print(ser2)

>>>
usa     1
ger     2
ussr    3
jpn     4
dtype: int64

usa    1
ger    2
ita    5
jpn    4
dtype: int64
>>>
```

```py
import numpy as np
import pandas as pd

ser1 = pd.Series([1,2,3,4],['usa', 'ger', 'ussr', 'jpn'])
ser2 = pd.Series([1,2,5,4],['usa', 'ger', 'ita', 'jpn'])

print(ser1['usa'])
print(ser1['ussr'])
print(ser2['ita'])

>>>
1
3
5
>>>
```

```py
import numpy as np
import pandas as pd

ser1 = pd.Series([1,2,3,4],['usa', 'ger', 'ussr', 'jpn'])
ser2 = pd.Series([1,2,5,4],['usa', 'ger', 'ita', 'jpn'])

print(ser1+ser2)

>>>
ger     4.0
ita     NaN
jpn     8.0
usa     2.0
ussr    NaN
dtype: float64
>>>
```

[^^^](#PANDAS)

---

#### DATAFRAMES_01

```

```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df['W'])

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

A    2.706850
B    0.651118
C   -2.018168
D    0.188695
E    0.190794
Name: W, dtype: float64
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df.W)

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

A    2.706850
B    0.651118
C   -2.018168
D    0.188695
E    0.190794
Name: W, dtype: float64
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df[['W','Z']])

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

          W         Z
A  2.706850  0.503826
B  0.651118  0.605965
C -2.018168 -0.589001
D  0.188695  0.955057
E  0.190794  0.683509
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

df['new'] = df['W']+df['Z']

print(df)
print(' ')
print(df['new'])

>>>
          W         X         Y         Z       new
A  2.706850  0.628133  0.907969  0.503826  3.210676
B  0.651118 -0.319318 -0.848077  0.605965  1.257083
C -2.018168  0.740122  0.528813 -0.589001 -2.607169
D  0.188695 -0.758872 -0.933237  0.955057  1.143752
E  0.190794  1.978757  2.605967  0.683509  0.874303

A    3.210676
B    1.257083
C   -2.607169
D    1.143752
E    0.874303
Name: new, dtype: float64
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

df['new'] = df['W']+df['Z']

print(df)

a = df.drop('new', axis=1)

print(' ')
print(a)

print(' ')
print(df)

b = df.drop('new', axis=1, inplace=True)

print(' ')
print(df)

>>>
          W         X         Y         Z       new
A  2.706850  0.628133  0.907969  0.503826  3.210676
B  0.651118 -0.319318 -0.848077  0.605965  1.257083
C -2.018168  0.740122  0.528813 -0.589001 -2.607169
D  0.188695 -0.758872 -0.933237  0.955057  1.143752
E  0.190794  1.978757  2.605967  0.683509  0.874303

          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

          W         X         Y         Z       new
A  2.706850  0.628133  0.907969  0.503826  3.210676
B  0.651118 -0.319318 -0.848077  0.605965  1.257083
C -2.018168  0.740122  0.528813 -0.589001 -2.607169
D  0.188695 -0.758872 -0.933237  0.955057  1.143752
E  0.190794  1.978757  2.605967  0.683509  0.874303

          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df.shape)

>>>
(5,4)
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df.loc['A'])

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

W    2.706850
X    0.628133
Y    0.907969
Z    0.503826
Name: A, dtype: float64
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df.iloc[0])
print(' ')
print(df.iloc[2])

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

W    2.706850
X    0.628133
Y    0.907969
Z    0.503826
Name: A, dtype: float64

W   -2.018168
X    0.740122
Y    0.528813
Z   -0.589001
Name: C, dtype: float64
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df.loc['B','Y'])

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

-0.8480769834036315
>>>
```

```py
import numpy as np
import pandas as pd
from numpy.random import randn

np.random.seed(101)
l = [1, 2, 3, 4]

df = pd.DataFrame(randn(5,4),['A', 'B', 'C', 'D', 'E'], ['W', 'X', 'Y', 'Z'])

print(df)
print(' ')
print(df.loc[['A','B'],['W','Y']])

>>>
          W         X         Y         Z
A  2.706850  0.628133  0.907969  0.503826
B  0.651118 -0.319318 -0.848077  0.605965
C -2.018168  0.740122  0.528813 -0.589001
D  0.188695 -0.758872 -0.933237  0.955057
E  0.190794  1.978757  2.605967  0.683509

          W         Y
A  2.706850  0.907969
B  0.651118 -0.848077
>>>
```

[^^^](#PANDAS)

---

#### DATAFRAMES_02

```

```

```py

```

[^^^](#PANDAS)

---

#### DATAFRAMES_03

```

```

```py

```

[^^^](#PANDAS)

---

#### MISSING_DATA

```

```

```py

```

[^^^](#PANDAS)

---

#### GROP_BY

```

```

```py

```

[^^^](#PANDAS)

---

#### MERGE_JOIN_CONCAT

```

```

```py

```

[^^^](#PANDAS)

---
