
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [LOGICAL_CONTROL](https://github.com/ttltrk/TTT/blob/master/PY/LOGICAL_CONTROL/LOGICAL_CONTROL.md)

---

### IF_ELSE

---

```

```

---

* [BASICS](#BASICS)
* [IF](#IF)
* [IF_ELSE](#IF_ELSE)
* [IF_ELIF_ELSE](#IF_ELIF_ELSE)
* [NESTED_IF](#NETSED_IF)
* [EVEN_OR_ODD](#EVEN_OR_ODD)

---

#### BASICS

```

```

```py
if some_condition:
    # execute some code
elif some_other_condition:
    # do something different
else:
    # do something else
```

[^^^](#IF_ELSE)

---

#### IF

```

```

```py
a = 33
b = 200

if b > a:
    print("b is greater than a")

>>>
b is greater than a
>>>
```

```py
num1 = 3
if num1 > 0:
    print(num1, "is a positive number.")
print("This is always printed. with num1")

num2 = -1
if num2 > 0:
    print(num2, "is a positive number.")
print("This is also always printed. num2")

>>>
3 is a positive number.
This is always printed with num1
This is also always printed with num2
>>>
```

[^^^](#IF_ELSE)

---

#### IF_ELSE

```

```

```py
num = 3

if num >= 0:
    print("Positive or Zero")
else:
    print("Negative number")

>>>
Positive or Zero
>>>
```

[^^^](#IF_ELSE)

---

#### IF_ELIF_ELSE

```

```

```py
num = 3.4

if num > 0:
    print("Positive number")
elif num == 0:
    print("Zero")
else:
    print("Negative number")

>>>
Positive number
>>>
```

```py
a = 200
b = 33

if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")
else:
  print("a is greater than b")

>>>
a is greater than b
>>>
```

```py
a = 33
b = 33

if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")

>>>
a and b are equal
>>>
```

[^^^](#IF_ELSE)

---

#### NESTED_IF

```

```

```py
num = float(input("Enter a number: "))

if num >= 0:
    if num == 0:
        print("Zero")
    else:
        print("Positive number")
else:
    print("Negative number")

>>>
Enter a number:  10
Positive number
>>>

>>>
Enter a number:  0
Zero
>>>

>>>
Enter a number:  -2
Negative number
>>>
```

[^^^](#IF_ELSE)

---

#### EVEN_OR_ODD

```

```

```py
def even_or_odd(number):
    e = 'Even'
    o = 'Odd'
    if number % 2 == 0:
        return e
    else:
        return o

print(even_or_odd(2))

>>>
Even
>>>
```

[^^^](#IF_ELSE)

---
