
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### NUMBERS

---

```
There are three numeric types in Python
  - int
  - float
  - complex
```

---

* [BASICS](#BASICS)
* [INT](#INT)
* [FLOAT](#FLOAT)
* [COMPLEX](#COMPLEX)
* [TYPE_CONVERSION](#TYPE_CONVERSION)
* [RANDOM_NUMBER](#RANDOM_NUMBER)
* [DECIMAL](#DECIMAL)
* [MATH](#MATH)
* [FRACTIONS](#FRACTIONS)
* [STRING](#STRING)

---

#### BASICS

```py
int(True)

>>>
1
>>>
```

```py
int(False)

>>>
0
>>>
```

```py
x = 1
y = 2.8  
z = 1j   

print(type(x))
print(type(y))
print(type(z))

>>>

>>>
```

[^^^](#NUMBERS)

---

#### INT

```
Int, or integer, is a whole number, positive or negative, without decimals, of unlimited length.
```

```py
x = 1
y = 35656222554887711
z = -3255522

print(type(x))
print(type(y))
print(type(z))

>>>
<class 'int'>
<class 'int'>
<class 'int'>
>>>
```

[^^^](#NUMBERS)

---

#### FLOAT

```
Float, or "floating point number" is a number, positive or negative, containing one or more decimals.
```

```py
x = 1.10
y = 1.0
z = -35.59

print(type(x))
print(type(y))
print(type(z))

>>>
<class 'float'>
<class 'float'>
<class 'float'>
>>>
```

```py
x = 35e3
y = 12E4
z = -87.7e100

print(type(x))
print(type(y))
print(type(z))

>>>
<class 'float'>
<class 'float'>
<class 'float'>
>>>
```

[^^^](#NUMBERS)

---

#### COMPLEX

```
Complex numbers are written with a "j" as the imaginary part:
```

```py
x = 3+5j
y = 5j
z = -5j

print(type(x))
print(type(y))
print(type(z))

>>>
<class 'complex'>
<class 'complex'>
<class 'complex'>
>>>
```

[^^^](#NUMBERS)

---

#### TYPE_CONVERSION

**INT to FLOAT**

```py
x = 1 # int
a = float(x)

print(x)
print(type(x))

print(a)
print(type(a))

>>>
1
<class 'int'>
1.0
<class 'float'>
>>>
```

**FLOAT to INT**

```py
y = 2.8 # float
b = int(y)

print(y)
print(type(y))

print(b)
print(type(b))

>>>
2.8
<class 'float'>
2
<class 'int'>
>>>
```

**INT to CLOMPEX**

```py
x = 1 # int
c = complex(x)

print(x)
print(type(x))

print(c)
print(type(c))

>>>
1
<class 'int'>
(1+0j)
<class 'complex'>
>>>
```

[^^^](#NUMBERS)

---

#### RANDOM_NUMBER

```py
import random

print(random.randrange(1,10))

>>>
4
>>>
```

```py
import random

print(random.randrange(10,20))

x = ['a', 'b', 'c', 'd', 'e']

print(random.choice(x))

random.shuffle(x)

print(x)
print(random.random())

>>>
14
e
['b', 'd', 'a', 'e', 'c']
0.14933393166286335
>>>
```

[^^^](#NUMBERS)

---

#### DECIMAL

```py
import decimal

print(0.1)
print(decimal.Decimal(0.1))

>>>
0.1
0.1000000000000000055511151231257827021181583404541015625
>>>
```

[^^^](#NUMBERS)

---

#### MATH

```py
import math

print(math.pi)
print(math.cos(math.pi))
print(math.exp(10))
print(math.log10(1000))
print(math.sinh(1))
print(math.factorial(6))

>>>
3.141592653589793
-1.0
22026.465794806718
3.0
1.1752011936438014
720
>>>
```

[^^^](#NUMBERS)

---

#### FRACTIONS

```py
import fractions

print(fractions.Fraction(1.5))
print(fractions.Fraction(5))
print(fractions.Fraction(1,3))

>>>
3/2
5
1/3
>>>
```

```py
import fractions

print(fractions.Fraction(1.1))
print(fractions.Fraction('1.1'))

>>>
2476979795053773/2251799813685248
11/10
>>>
```

```py
from fractions import Fraction as F

print(F(1,3) + F(1,3))
print(1 / F(5,6))
print(F(-3,10) > 0)
print(F(-3,10) < 0)

>>>
2/3
6/5
False
True
>>>
```

[^^^](#NUMBERS)

---

#### STRING

```py
my_num=20
print(type(my_num))
print(type(str(my_num)))

>>>
<class 'int'>
<class 'str'>
>>>
```

[^^^](#NUMBERS)

---
